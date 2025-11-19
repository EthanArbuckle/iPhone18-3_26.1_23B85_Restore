uint64_t sub_24EDED1E0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 49))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 48);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_24EDED228(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 48) = -a2;
    }
  }

  return result;
}

uint64_t *TodayCardMedia.init(deserializing:using:)(char *a1, uint64_t a2)
{
  v3 = v2;
  v86 = a2;
  v5 = *v3;
  v79 = v3;
  v74 = v5;
  v6 = sub_24F92AC38();
  v69 = *(v6 - 8);
  v70 = v6;
  MEMORY[0x28223BE20](v6);
  v68 = (&v66 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v80 = sub_24F9285B8();
  v77 = *(v80 - 8);
  MEMORY[0x28223BE20](v80);
  v73 = &v66 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  MEMORY[0x28223BE20](v9 - 8);
  v71 = &v66 - v10;
  v11 = sub_24F91F6B8();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v66 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_24F928388();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v67 = &v66 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v72 = &v66 - v19;
  MEMORY[0x28223BE20](v20);
  v75 = &v66 - v21;
  MEMORY[0x28223BE20](v22);
  v24 = &v66 - v23;
  v78 = a1;
  sub_24F928398();
  v25 = sub_24F928348();
  v76 = v15;
  if (v26)
  {
    v81 = v25;
    v82 = v26;
  }

  else
  {
    sub_24F91F6A8();
    v27 = sub_24F91F668();
    v29 = v28;
    (*(v12 + 8))(v14, v11);
    v81 = v27;
    v82 = v29;
  }

  sub_24F92C7F8();
  v30 = *(v16 + 8);
  v30(v24, v15);
  v31 = v84;
  v32 = v79;
  *(v79 + 2) = v83;
  *(v32 + 3) = v31;
  v32[8] = v85;
  sub_24F929608();
  v33 = v78;
  sub_24F928398();
  v34 = v77;
  (*(v77 + 16))(v73, v86, v80);
  v35 = v71;
  sub_24F929548();
  v36 = OBJC_IVAR____TtC12GameStoreKit14TodayCardMedia_impressionMetrics;
  sub_24E65E0D4(v35, v32 + OBJC_IVAR____TtC12GameStoreKit14TodayCardMedia_impressionMetrics);
  v37 = v72;
  sub_24F928398();
  v38 = sub_24F928348();
  v40 = v39;
  v41 = v37;
  v42 = v76;
  v30(v41, v76);
  if (v40)
  {

    v43 = sub_24EDEF87C(v38, v40);
    if ((v44 & 1) == 0)
    {
      v58 = v43;

      v57 = v79;
      v79[2] = v58;
      v59 = v75;
      v60 = v78;
      sub_24F928398();
      sub_24EDEF930();
      sub_24F928248();
      v61 = v59;
      v62 = v76;
      v30(v61, v76);
      *(v57 + 24) = v83;
      v63 = v67;
      sub_24F928398();
      v64 = sub_24F928278();
      (*(v77 + 8))(v86, v80);
      v30(v60, v62);
      v30(v63, v62);
      *(v57 + 25) = v64 & 1;
      return v57;
    }

    v75 = v36;
    v45 = v68;
    *v68 = v38;
    v45[1] = v40;
    v45[2] = v74;
    v46 = *MEMORY[0x277D22528];
    v47 = v69;
    v48 = v70;
    v73 = *(v69 + 104);
    (v73)(v45, v46, v70);
    sub_24EDEFA8C(&qword_27F2213B8, MEMORY[0x277D22548]);
    swift_allocError();
    v72 = v30;
    v50 = v49;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213BA0);
    v51 = swift_allocObject();
    *(v51 + 16) = xmmword_24F93DE60;
    *(v51 + 32) = swift_allocError();
    (*(v47 + 16))(v52, v45, v48);
    *v50 = 1684957547;
    v50[1] = 0xE400000000000000;
    v50[2] = v74;
    v50[3] = v51;
    (v73)(v50, *MEMORY[0x277D22540], v48);
    swift_willThrow();
    (*(v77 + 8))(v86, v80);
    (v72)(v78, v76);
    v53 = v45;
    v36 = v75;
    (*(v47 + 8))(v53, v48);
  }

  else
  {
    sub_24EDEFA8C(&qword_27F2213B8, MEMORY[0x277D22548]);
    v54 = v70;
    swift_allocError();
    *v55 = 1684957547;
    v56 = v74;
    v55[1] = 0xE400000000000000;
    v55[2] = v56;
    (*(v69 + 104))(v55, *MEMORY[0x277D22530], v54);
    swift_willThrow();
    (*(v34 + 8))(v86, v80);
    v30(v33, v42);
  }

  v57 = v79;
  sub_24E6585F8((v79 + 4));
  sub_24E601704(v57 + v36, &qword_27F213E68);
  type metadata accessor for TodayCardMedia();
  swift_deallocPartialClassInstance();
  return v57;
}

uint64_t type metadata accessor for TodayCardMedia()
{
  result = qword_27F230758;
  if (!qword_27F230758)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t TodayCardMedia.init(id:kind:titleBackingGradient:otdTextStyle:impressionMetrics:)(uint64_t a1, uint64_t a2, char *a3, char a4, uint64_t a5)
{
  v6 = v5;
  v12 = sub_24F91F6B8();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *a3;
  sub_24E60169C(a1, &v25, &qword_27F235830);
  if (*(&v26 + 1))
  {
    v28 = v25;
    v29 = v26;
    v30 = v27;
  }

  else
  {
    sub_24F91F6A8();
    v17 = sub_24F91F668();
    v24[0] = a5;
    v18 = a2;
    v19 = a4;
    v21 = v20;
    (*(v13 + 8))(v15, v12);
    v24[1] = v17;
    v24[2] = v21;
    a4 = v19;
    a2 = v18;
    a5 = v24[0];
    sub_24F92C7F8();
    sub_24E601704(&v25, &qword_27F235830);
  }

  sub_24E601704(a1, &qword_27F235830);
  v22 = v29;
  *(v6 + 32) = v28;
  *(v6 + 48) = v22;
  *(v6 + 64) = v30;
  sub_24E65E0D4(a5, v6 + OBJC_IVAR____TtC12GameStoreKit14TodayCardMedia_impressionMetrics);
  *(v6 + 16) = a2;
  *(v6 + 24) = v16;
  *(v6 + 25) = a4 & 1;
  return v6;
}

uint64_t TodayCardMedia.deinit()
{
  sub_24E6585F8(v0 + 32);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit14TodayCardMedia_impressionMetrics, &qword_27F213E68);
  return v0;
}

uint64_t TodayCardMedia.Kind.description.getter(uint64_t a1)
{
  if (qword_27F210768 != -1)
  {
LABEL_15:
    v12 = a1;
    swift_once();
    a1 = v12;
  }

  v1 = 0;
  v2 = 1 << *(off_27F230730 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(off_27F230730 + 8);
  v5 = (v2 + 63) >> 6;
  do
  {
    if (!v4)
    {
      while (1)
      {
        v6 = v1 + 1;
        if (__OFADD__(v1, 1))
        {
          break;
        }

        if (v6 >= v5)
        {
          v11 = sub_24F92CD88();
          MEMORY[0x253050C20](v11);

          MEMORY[0x253050C20](41, 0xE100000000000000);
          return 0x65756C6156776172;
        }

        v4 = *(off_27F230730 + v6 + 8);
        ++v1;
        if (v4)
        {
          v1 = v6;
          goto LABEL_11;
        }
      }

      __break(1u);
      goto LABEL_15;
    }

    v6 = v1;
LABEL_11:
    v7 = __clz(__rbit64(v4));
    v4 &= v4 - 1;
    v8 = v7 | (v6 << 6);
  }

  while (*(*(off_27F230730 + 7) + 8 * v8) != a1);
  v9 = *(*(off_27F230730 + 6) + 16 * v8);

  return v9;
}

uint64_t sub_24EDEE040()
{
  v0 = sub_24E60834C(&unk_2861B29D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F230768);
  result = swift_arrayDestroy();
  off_27F230730 = v0;
  return result;
}

unint64_t sub_24EDEE0B8@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_24EDEF984(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t TodayCardMedia.TitleBackingGradient.init(rawValue:)@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_24F92CB88();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_24EDEE15C()
{
  sub_24F92D068();
  sub_24F92B218();
  return sub_24F92D0B8();
}

uint64_t sub_24EDEE1B8()
{
  sub_24F92D068();
  sub_24F92B218();
  return sub_24F92D0B8();
}

uint64_t sub_24EDEE200@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_24F92CB88();

  *a1 = v2 != 0;
  return result;
}

uint64_t TodayCardMedia.__allocating_init(id:kind:titleBackingGradient:otdTextStyle:impressionMetrics:)(uint64_t a1, uint64_t a2, char *a3, char a4, uint64_t a5)
{
  v10 = sub_24F91F6B8();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = swift_allocObject();
  v15 = *a3;
  sub_24E60169C(a1, &v24, &qword_27F235830);
  if (*(&v25 + 1))
  {
    v16 = v25;
    *(v14 + 32) = v24;
    *(v14 + 48) = v16;
    *(v14 + 64) = v26;
  }

  else
  {
    sub_24F91F6A8();
    v17 = sub_24F91F668();
    v23[0] = a5;
    v18 = a2;
    v19 = a4;
    v21 = v20;
    (*(v11 + 8))(v13, v10);
    v23[1] = v17;
    v23[2] = v21;
    a4 = v19;
    a2 = v18;
    a5 = v23[0];
    sub_24F92C7F8();
    sub_24E601704(&v24, &qword_27F235830);
  }

  sub_24E601704(a1, &qword_27F235830);
  sub_24E65E0D4(a5, v14 + OBJC_IVAR____TtC12GameStoreKit14TodayCardMedia_impressionMetrics);
  *(v14 + 16) = a2;
  *(v14 + 24) = v15;
  *(v14 + 25) = a4 & 1;
  return v14;
}

uint64_t TodayCardMedia.__allocating_init(deserializing:using:)(char *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  TodayCardMedia.init(deserializing:using:)(a1, a2);
  return v4;
}

uint64_t static TodayCardMedia.makeInstance(byDeserializing:using:)(uint64_t a1, uint64_t a2)
{
  v143 = a2;
  v3 = sub_24F92AC38();
  v144 = *(v3 - 8);
  v145 = v3;
  MEMORY[0x28223BE20](v3);
  v137 = (&v113 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = sub_24F9285B8();
  v6 = *(v5 - 8);
  v141 = v5;
  v142 = v6;
  MEMORY[0x28223BE20](v5);
  v136 = &v113 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v135 = &v113 - v9;
  MEMORY[0x28223BE20](v10);
  v134 = &v113 - v11;
  MEMORY[0x28223BE20](v12);
  v133 = &v113 - v13;
  MEMORY[0x28223BE20](v14);
  v132 = &v113 - v15;
  MEMORY[0x28223BE20](v16);
  v131 = &v113 - v17;
  MEMORY[0x28223BE20](v18);
  v130 = &v113 - v19;
  MEMORY[0x28223BE20](v20);
  v129 = &v113 - v21;
  MEMORY[0x28223BE20](v22);
  v128 = &v113 - v23;
  MEMORY[0x28223BE20](v24);
  v127 = &v113 - v25;
  MEMORY[0x28223BE20](v26);
  v126 = &v113 - v27;
  MEMORY[0x28223BE20](v28);
  v125 = &v113 - v29;
  MEMORY[0x28223BE20](v30);
  v124 = &v113 - v31;
  MEMORY[0x28223BE20](v32);
  v123 = &v113 - v33;
  v34 = sub_24F928388();
  v35 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v122 = &v113 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v37);
  v121 = &v113 - v38;
  MEMORY[0x28223BE20](v39);
  v120 = &v113 - v40;
  MEMORY[0x28223BE20](v41);
  v119 = &v113 - v42;
  MEMORY[0x28223BE20](v43);
  v118 = &v113 - v44;
  MEMORY[0x28223BE20](v45);
  v117 = &v113 - v46;
  MEMORY[0x28223BE20](v47);
  v116 = &v113 - v48;
  MEMORY[0x28223BE20](v49);
  v115 = &v113 - v50;
  MEMORY[0x28223BE20](v51);
  v114 = &v113 - v52;
  MEMORY[0x28223BE20](v53);
  v113 = &v113 - v54;
  MEMORY[0x28223BE20](v55);
  v57 = &v113 - v56;
  MEMORY[0x28223BE20](v58);
  v60 = &v113 - v59;
  MEMORY[0x28223BE20](v61);
  v63 = &v113 - v62;
  MEMORY[0x28223BE20](v64);
  v66 = &v113 - v65;
  MEMORY[0x28223BE20](v67);
  v69 = &v113 - v68;
  v140 = a1;
  sub_24F928398();
  v70 = sub_24F928348();
  v72 = v71;
  v138 = v34;
  v139 = v35;
  (*(v35 + 8))(v69, v34);
  if (v72)
  {
    v73 = v145;
    v74 = v146;
    v75 = v144;

    v76 = sub_24EDEF87C(v70, v72);
    if (v77)
    {
      v78 = v137;
      *v137 = v70;
      v78[1] = v72;
      v78[2] = v74;
      v79 = v75;
      v80 = *(v75 + 104);
      v80(v78, *MEMORY[0x277D22528], v73);
      sub_24EDEFA8C(&qword_27F2213B8, MEMORY[0x277D22548]);
      swift_allocError();
      v82 = v81;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213BA0);
      v83 = swift_allocObject();
      *(v83 + 16) = xmmword_24F93DE60;
      *(v83 + 32) = swift_allocError();
      (*(v79 + 16))(v84, v78, v73);
      *v82 = 1684957547;
      v82[1] = 0xE400000000000000;
      v82[2] = v146;
      v82[3] = v83;
      v80(v82, *MEMORY[0x277D22540], v73);
      swift_willThrow();
      return (*(v79 + 8))(v78, v73);
    }

    else
    {
      switch(v76)
      {
        case 0:

          v89 = v114;
          (*(v139 + 16))(v114, v140, v138);
          v90 = v128;
          (*(v142 + 16))(v128, v143, v141);
          type metadata accessor for TodayCardMediaArtwork();
          swift_allocObject();
          result = TodayCardMediaArtwork.init(deserializing:using:)(v89, v90);
          break;
        case 1:

          (*(v139 + 16))(v66, v140, v138);
          v102 = v123;
          (*(v142 + 16))(v123, v143, v141);
          type metadata accessor for TodayCardMediaBrandedSingleApp();
          swift_allocObject();
          result = TodayCardMediaBrandedSingleApp.init(deserializing:using:)(v66, v102);
          break;
        case 2:

          (*(v139 + 16))(v63, v140, v138);
          v98 = v124;
          (*(v142 + 16))(v124, v143, v141);
          type metadata accessor for TodayCardMediaList();
          swift_allocObject();
          result = TodayCardMediaList.init(deserializing:using:)(v63, v98);
          break;
        case 3:

          (*(v139 + 16))(v60, v140, v138);
          v99 = v125;
          (*(v142 + 16))(v125, v143, v141);
          type metadata accessor for TodayCardMediaMultiAppFallback();
          swift_allocObject();
          result = TodayCardMediaMultiAppFallback.init(deserializing:using:)(v60, v99);
          break;
        case 4:

          (*(v139 + 16))(v57, v140, v138);
          v93 = v126;
          (*(v142 + 16))(v126, v143, v141);
          type metadata accessor for TodayCardMediaInAppPurchase();
          swift_allocObject();
          result = TodayCardMediaInAppPurchase.init(deserializing:using:)(v57, v93);
          break;
        case 5:

          v103 = v113;
          (*(v139 + 16))(v113, v140, v138);
          v104 = v127;
          (*(v142 + 16))(v127, v143, v141);
          type metadata accessor for TodayCardMediaRiver();
          swift_allocObject();
          result = TodayCardMediaRiver.init(deserializing:using:)(v103, v104);
          break;
        case 6:

          v107 = v115;
          (*(v139 + 16))(v115, v140, v138);
          v108 = v129;
          (*(v142 + 16))(v129, v143, v141);
          type metadata accessor for TodayCardMediaAppIcon();
          swift_allocObject();
          result = TodayCardMediaAppIcon.init(deserializing:using:)(v107, v108);
          break;
        case 7:

          v100 = v116;
          (*(v139 + 16))(v116, v140, v138);
          v101 = v130;
          (*(v142 + 16))(v130, v143, v141);
          type metadata accessor for TodayCardMediaGrid();
          swift_allocObject();
          result = TodayCardMediaGrid.init(deserializing:using:)(v100, v101);
          break;
        case 8:

          v111 = v117;
          (*(v139 + 16))(v117, v140, v138);
          v112 = v131;
          (*(v142 + 16))(v131, v143, v141);
          type metadata accessor for TodayCardMediaVideo();
          swift_allocObject();
          result = TodayCardMediaVideo.init(deserializing:using:)(v111, v112);
          break;
        case 9:

          v96 = v118;
          (*(v139 + 16))(v118, v140, v138);
          v97 = v132;
          (*(v142 + 16))(v132, v143, v141);
          type metadata accessor for TodayCardMediaHero();
          swift_allocObject();
          result = TodayCardMediaHero.init(deserializing:using:)(v96, v97);
          break;
        case 10:

          v109 = v119;
          (*(v139 + 16))(v119, v140, v138);
          v110 = v133;
          (*(v142 + 16))(v133, v143, v141);
          type metadata accessor for TodayCardMediaAppEvent();
          swift_allocObject();
          result = TodayCardMediaAppEvent.init(deserializing:using:)(v109, v110);
          break;
        case 11:

          v91 = v120;
          (*(v139 + 16))(v120, v140, v138);
          v92 = v134;
          (*(v142 + 16))(v134, v143, v141);
          type metadata accessor for TodayCardMediaSingleLockup();
          swift_allocObject();
          result = TodayCardMediaSingleLockup.init(deserializing:using:)(v91, v92);
          break;
        case 12:

          v94 = v121;
          (*(v139 + 16))(v121, v140, v138);
          v95 = v135;
          (*(v142 + 16))(v135, v143, v141);
          type metadata accessor for TodayCardMediaMediumLockupWithScreenshots();
          swift_allocObject();
          result = TodayCardMediaMediumLockupWithScreenshots.init(deserializing:using:)(v94, v95);
          break;
        case 13:

          v105 = v122;
          (*(v139 + 16))(v122, v140, v138);
          v106 = v136;
          (*(v142 + 16))(v136, v143, v141);
          type metadata accessor for TodayCardMediaMediumLockupWithAlignedRegion();
          swift_allocObject();
          result = TodayCardMediaMediumLockupWithAlignedRegion.init(deserializing:using:)(v105, v106);
          break;
        default:
          v147 = v76;
          sub_24F92CF48();
          __break(1u);
          JUMPOUT(0x24EDEF384);
      }
    }
  }

  else
  {
    sub_24EDEFA8C(&qword_27F2213B8, MEMORY[0x277D22548]);
    v86 = v145;
    swift_allocError();
    *v87 = 1684957547;
    v88 = v146;
    v87[1] = 0xE400000000000000;
    v87[2] = v88;
    (*(v144 + 104))(v87, *MEMORY[0x277D22530], v86);
    return swift_willThrow();
  }

  return result;
}

uint64_t TodayCardMedia.__deallocating_deinit()
{
  sub_24E6585F8(v0 + 32);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit14TodayCardMedia_impressionMetrics, &qword_27F213E68);

  return swift_deallocClassInstance();
}

uint64_t sub_24EDEF4A8@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 128))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

unint64_t TodayCardMediaWithArtwork.artwork(for:)(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = [a1 layoutDirection];
  result = (*(a3 + 8))(a2, a3);
  v7 = result >> 62;
  if (v5 != 1)
  {
    if (v7)
    {
      v13 = result;
      v14 = sub_24F92C738();
      result = v13;
      if (!v14)
      {
        goto LABEL_19;
      }
    }

    else if (!*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_19;
    }

    if ((result & 0xC000000000000001) == 0)
    {
      if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v11 = *(result + 32);
        goto LABEL_14;
      }

      __break(1u);
      goto LABEL_26;
    }

    goto LABEL_22;
  }

  if (!v7)
  {
    v8 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v8)
    {
      goto LABEL_4;
    }

LABEL_19:

    return 0;
  }

  v12 = result;
  v8 = sub_24F92C738();
  result = v12;
  if (!v8)
  {
    goto LABEL_19;
  }

LABEL_4:
  v9 = __OFSUB__(v8, 1);
  v10 = v8 - 1;
  if (v9)
  {
    __break(1u);
LABEL_22:
    v15 = 0;
LABEL_24:
    v11 = MEMORY[0x253052270](v15);
    goto LABEL_15;
  }

  if ((result & 0xC000000000000001) != 0)
  {
    v15 = v10;
    goto LABEL_24;
  }

  if ((v10 & 0x8000000000000000) != 0)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (v10 < *((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v11 = *(result + 8 * v10 + 32);
LABEL_14:

LABEL_15:

    return v11;
  }

LABEL_27:
  __break(1u);
  return result;
}

unint64_t TodayCardMediaWithArtwork.video(for:)(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = [a1 layoutDirection];
  result = (*(a3 + 16))(a2, a3);
  v7 = result >> 62;
  if (v5 != 1)
  {
    if (v7)
    {
      v13 = result;
      v14 = sub_24F92C738();
      result = v13;
      if (!v14)
      {
        goto LABEL_19;
      }
    }

    else if (!*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_19;
    }

    if ((result & 0xC000000000000001) == 0)
    {
      if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v11 = *(result + 32);
        goto LABEL_14;
      }

      __break(1u);
      goto LABEL_26;
    }

    goto LABEL_22;
  }

  if (!v7)
  {
    v8 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v8)
    {
      goto LABEL_4;
    }

LABEL_19:

    return 0;
  }

  v12 = result;
  v8 = sub_24F92C738();
  result = v12;
  if (!v8)
  {
    goto LABEL_19;
  }

LABEL_4:
  v9 = __OFSUB__(v8, 1);
  v10 = v8 - 1;
  if (v9)
  {
    __break(1u);
LABEL_22:
    v15 = 0;
LABEL_24:
    v11 = MEMORY[0x253052270](v15);
    goto LABEL_15;
  }

  if ((result & 0xC000000000000001) != 0)
  {
    v15 = v10;
    goto LABEL_24;
  }

  if ((v10 & 0x8000000000000000) != 0)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (v10 < *((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v11 = *(result + 8 * v10 + 32);
LABEL_14:

LABEL_15:

    return v11;
  }

LABEL_27:
  __break(1u);
  return result;
}

unint64_t TodayCardMediaWithArtwork.prefetchableArtwork(for:)(void *a1, uint64_t a2, uint64_t a3)
{
  result = TodayCardMediaWithArtwork.artwork(for:)(a1, a2, a3);
  if (!result)
  {
    result = TodayCardMediaWithArtwork.video(for:)(a1, a2, a3);
    if (result)
    {
      v7 = *(result + OBJC_IVAR____TtC12GameStoreKit5Video_preview);

      return v7;
    }
  }

  return result;
}

uint64_t sub_24EDEF87C(uint64_t a1, uint64_t a2)
{
  if (qword_27F210768 != -1)
  {
    v7 = a1;
    v8 = a2;
    swift_once();
    a1 = v7;
    a2 = v8;
  }

  v2 = off_27F230730;
  if (*(off_27F230730 + 2))
  {
    v3 = sub_24E76D644(a1, a2);
    v5 = v4;

    if (v5)
    {
      return *(v2[7] + 8 * v3);
    }
  }

  else
  {
  }

  return 0;
}

unint64_t sub_24EDEF930()
{
  result = qword_27F230738;
  if (!qword_27F230738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F230738);
  }

  return result;
}

unint64_t sub_24EDEF984(unint64_t result)
{
  if (result > 0xD)
  {
    return 0;
  }

  return result;
}

unint64_t sub_24EDEF998()
{
  result = qword_27F230740;
  if (!qword_27F230740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F230740);
  }

  return result;
}

unint64_t sub_24EDEF9F0()
{
  result = qword_27F230748;
  if (!qword_27F230748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F230748);
  }

  return result;
}

uint64_t sub_24EDEFA8C(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_24EDEFAF0()
{
  sub_24E61C938();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_24EDEFC74()
{
  v0 = sub_24F92AAB8();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_24F92AAE8();
  __swift_allocate_value_buffer(v4, qword_27F230770);
  __swift_project_value_buffer(v4, qword_27F230770);
  if (qword_27F210560 != -1)
  {
    swift_once();
  }

  v5 = __swift_project_value_buffer(v0, qword_27F39C380);
  (*(v1 + 16))(v3, v5, v0);
  return sub_24F92AAD8();
}

uint64_t sub_24EDEFDC8(uint64_t a1)
{
  *(v1 + 16) = sub_24E60ADF0(MEMORY[0x277D84F90]);
  sub_24E60169C(a1, v1 + OBJC_IVAR____TtC12GameStoreKit21VideoViewModelManager_metricsPipeline, &qword_27F21C570);
  v3 = [objc_opt_self() defaultCenter];

  v4 = sub_24F92B098();
  [v3 addObserver:v1 selector:sel_videoDecodersUnavailable_ name:v4 object:0];

  sub_24E601704(a1, &qword_27F21C570);
  return v1;
}

uint64_t sub_24EDEFED4()
{
  v1 = [objc_opt_self() defaultCenter];
  v2 = sub_24F92B098();
  [v1 removeObserver:v0 name:v2 object:0];

  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit21VideoViewModelManager_metricsPipeline, &qword_27F21C570);
  return v0;
}

uint64_t sub_24EDEFF8C()
{
  sub_24EDEFED4();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for VideoViewModelManager()
{
  result = qword_27F230790;
  if (!qword_27F230790)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24EDF0038(uint64_t a1)
{
  sub_24E60169C(a1, &v7, &qword_27F235830);
  if (*(&v8 + 1))
  {
    v10[0] = v7;
    v10[1] = v8;
    v11 = v9;
    v2 = *(v1 + 16);
    if (*(v2 + 16))
    {

      v3 = sub_24E76D934(v10);
      if (v4)
      {
        v5 = *(*(v2 + 56) + 8 * v3);

        sub_24E6585F8(v10);

        return v5;
      }
    }

    sub_24E6585F8(v10);
  }

  else
  {
    sub_24E601704(&v7, &qword_27F235830);
  }

  return 0;
}

uint64_t sub_24EDF0108()
{
  v1 = v0;
  v2 = sub_24F91EB48();
  if (!v2)
  {
    goto LABEL_14;
  }

  v3 = v2;
  *&v40[0] = 0x6B63616279616C50;
  *(&v40[0] + 1) = 0xEA00000000006449;
  sub_24F92C7F8();
  if (!*(v3 + 16) || (v4 = sub_24E76D934(&v41), (v5 & 1) == 0))
  {

    sub_24E6585F8(&v41);
LABEL_14:
    v38 = 0u;
    v39 = 0u;
    return sub_24E601704(&v38, &qword_27F2129B0);
  }

  sub_24E643A9C(*(v3 + 56) + 32 * v4, &v38);
  sub_24E6585F8(&v41);

  if (!*(&v39 + 1))
  {
    return sub_24E601704(&v38, &qword_27F2129B0);
  }

  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
    return result;
  }

  v7 = v41;
  v8 = sub_24F91EB48();
  if (!v8)
  {

    goto LABEL_14;
  }

  v9 = v8;
  sub_24F92C7F8();
  if (!*(v9 + 16) || (v10 = sub_24E76D934(&v41), (v11 & 1) == 0))
  {

    sub_24E6585F8(&v41);
    v38 = 0u;
    v39 = 0u;
    goto LABEL_18;
  }

  sub_24E643A9C(*(v9 + 56) + 32 * v10, &v38);
  sub_24E6585F8(&v41);

  if (!*(&v39 + 1))
  {
LABEL_18:

    return sub_24E601704(&v38, &qword_27F2129B0);
  }

  sub_24E612B0C(&v38, v40);
  if (qword_27F210770 != -1)
  {
    goto LABEL_44;
  }

  while (1)
  {
    v12 = sub_24F92AAE8();
    __swift_project_value_buffer(v12, qword_27F230770);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
    sub_24F928468();
    *(swift_allocObject() + 16) = xmmword_24F93A070;
    sub_24F9283A8();
    v13 = *(*(v1 + 16) + 16);
    *(&v42 + 1) = MEMORY[0x277D83B88];
    *&v41 = v13;
    sub_24F928438();
    sub_24E601704(&v41, &qword_27F2129B0);
    sub_24F9283A8();
    sub_24E643A9C(v40, &v41);
    sub_24F928438();
    sub_24E601704(&v41, &qword_27F2129B0);
    sub_24F9283A8();
    v14 = *(v1 + 16);
    v38 = v7;

    sub_24F92C7F8();
    if (*(v14 + 16))
    {
      sub_24E76D934(&v41);
      v16 = v15;
    }

    else
    {
      v16 = 0;
    }

    sub_24E6585F8(&v41);

    *(&v42 + 1) = MEMORY[0x277D839B0];
    LOBYTE(v41) = v16 & 1;
    sub_24F928438();
    sub_24E601704(&v41, &qword_27F2129B0);
    sub_24F92A5A8();

    v17 = *(v1 + 16);
    v1 = v17 + 64;
    v18 = 1 << *(v17 + 32);
    v19 = -1;
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    v20 = v19 & *(v17 + 64);
    v21 = (v18 + 63) >> 6;

    v22 = 0;
    if (v20)
    {
      break;
    }

LABEL_24:
    while (1)
    {
      v23 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v23 >= v21)
      {
        goto LABEL_42;
      }

      v20 = *(v1 + 8 * v23);
      ++v22;
      if (v20)
      {
        v22 = v23;
        goto LABEL_28;
      }
    }

    __break(1u);
LABEL_44:
    swift_once();
  }

LABEL_28:
  while (1)
  {
    v24 = __clz(__rbit64(v20)) | (v22 << 6);
    sub_24E65864C(*(v17 + 48) + 40 * v24, &v41);
    v25 = *(*(v17 + 56) + 8 * v24);
    v36 = v41;
    v37 = v42;
    v26 = v43;
    v27 = *(&v42 + 1);

    if (!v27)
    {
      break;
    }

    v20 &= v20 - 1;
    v41 = v36;
    v42 = v37;
    v43 = v26;

    sub_24F92C7F8();
    v28 = MEMORY[0x253052150](&v41, &v38);
    sub_24E6585F8(&v38);
    if (v28)
    {
      sub_24E6585F8(&v41);

      if (!v20)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v29 = *(v25 + 24);
      if (v29)
      {
        [v29 pause];
        v30 = *(v25 + 24);
        if (v30)
        {
          v31 = v30;
          sub_24EA9EF78();

          v30 = *(v25 + 24);
        }
      }

      else
      {
        v30 = 0;
      }

      *(v25 + 24) = 0;

      v32 = *(v25 + 24);
      if (v32)
      {
        swift_getKeyPath();
        swift_getKeyPath();
        v32 = v32;
        sub_24F923098();

        LOBYTE(v32) = v38;
      }

      swift_getKeyPath();
      swift_getKeyPath();
      LOBYTE(v38) = v32;

      sub_24F9230A8();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v34 = Strong;
        [Strong setPlayer_];
      }

      sub_24E6585F8(&v41);
      v35 = OBJC_IVAR____TtC12GameStoreKit14VideoViewModel_subscriptions;
      swift_beginAccess();
      *(v25 + v35) = MEMORY[0x277D84FA0];

      if (!v20)
      {
        goto LABEL_24;
      }
    }
  }

LABEL_42:
  __swift_destroy_boxed_opaque_existential_1(v40);
}

void sub_24EDF0930(void **a1)
{
  v2 = *(type metadata accessor for ChallengeDefinitionDetail(0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_24E861854(v3);
  }

  v4 = v3[2];
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  sub_24EDF8660(v5);
  *a1 = v3;
}

uint64_t sub_24EDF09D8(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_24EDF0A74;

  return sub_24EDF0DD8(a1, a2);
}

uint64_t sub_24EDF0A74(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 24) = a1;
  *(v3 + 32) = v1;

  if (v1)
  {
    v4 = sub_24EDF0C40;
  }

  else
  {
    v4 = sub_24EDF0B88;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_24EDF0B88()
{
  v6 = v0;
  v1 = v0[4];
  v5 = v0[3];

  sub_24EDF0930(&v5);
  if (v1)
  {
  }

  else
  {

    v3 = v5;
    v4 = v0[1];

    return v4(v3);
  }
}

uint64_t sub_24EDF0C40()
{
  if (qword_27F2113B8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 32);
  v2 = sub_24F9220D8();
  __swift_project_value_buffer(v2, qword_27F39E778);
  v3 = v1;
  v4 = sub_24F9220B8();
  v5 = sub_24F92BDB8();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 32);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_24E5DD000, v4, v5, "ChallengeDefinitionsDataIntentImplementation: Failed to fetch definitions: %@", v7, 0xCu);
    sub_24E601704(v8, &qword_27F227B20);
    MEMORY[0x2530542D0](v8, -1, -1);
    MEMORY[0x2530542D0](v7, -1, -1);
  }

  swift_willThrow();
  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_24EDF0DD8(uint64_t a1, uint64_t a2)
{
  v2[22] = a1;
  v2[23] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2198F8);
  v2[24] = swift_task_alloc();
  v3 = type metadata accessor for ChallengeDefinitionDefaultOptions();
  v2[25] = v3;
  v2[26] = *(v3 - 8);
  v2[27] = swift_task_alloc();
  v2[28] = swift_task_alloc();
  v2[29] = *(type metadata accessor for Leaderboard(0) - 8);
  v2[30] = swift_task_alloc();
  v2[31] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212A00);
  v2[32] = swift_task_alloc();
  v2[33] = swift_task_alloc();
  v2[34] = *(type metadata accessor for ChallengeDefinitionDetail(0) - 8);
  v2[35] = swift_task_alloc();
  v2[36] = swift_task_alloc();
  v2[37] = swift_task_alloc();
  v4 = sub_24F920BA8();
  v2[38] = v4;
  v2[39] = *(v4 - 8);
  v2[40] = swift_task_alloc();
  v2[41] = swift_task_alloc();
  v5 = sub_24F920BC8();
  v2[42] = v5;
  v2[43] = *(v5 - 8);
  v2[44] = swift_task_alloc();
  v2[45] = swift_task_alloc();
  v2[46] = swift_task_alloc();
  v2[47] = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2265C8) - 8);
  v2[48] = swift_task_alloc();
  v2[49] = swift_task_alloc();
  v2[50] = swift_task_alloc();
  v2[51] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C048);
  v2[52] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2307E0);
  v2[53] = v6;
  v2[54] = *(v6 - 8);
  v2[55] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21BCB8);
  v2[56] = v7;
  v2[57] = *(v7 - 8);
  v2[58] = swift_task_alloc();
  v8 = sub_24F920DD8();
  v2[59] = v8;
  v2[60] = *(v8 - 8);
  v2[61] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2265C0);
  v2[62] = v9;
  v2[63] = *(v9 - 8);
  v2[64] = swift_task_alloc();
  v2[65] = swift_task_alloc();
  v2[66] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2142C0);
  v11 = swift_task_alloc();
  v2[67] = v11;
  *v11 = v2;
  v11[1] = sub_24EDF1398;

  return MEMORY[0x28217F228](v2 + 7, v10, v10);
}

uint64_t sub_24EDF1398()
{
  *(*v1 + 544) = v0;

  if (v0)
  {
    v2 = sub_24EDF18A0;
  }

  else
  {
    v2 = sub_24EDF14AC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24EDF14AC()
{
  v1 = *(v0 + 472);
  v2 = *(v0 + 480);
  v3 = *(v0 + 176);
  __swift_project_boxed_opaque_existential_1((v0 + 56), *(v0 + 80));
  sub_24F9204F8();
  __swift_destroy_boxed_opaque_existential_1(v0 + 56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213D18);
  v4 = *(v2 + 72);
  v5 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_24F93DE60;
  *(v6 + v5) = 0;
  v7 = *(v2 + 104);
  v7(v6 + v5, *MEMORY[0x277D0D410], v1);
  *(v0 + 136) = *(v3 + 16);
  if (*(v0 + 144))
  {
    v34 = v7;
    v35 = v4;
    v8 = *(v0 + 528);
    v9 = *(v0 + 504);
    v10 = *(v0 + 488);
    v33 = *(v0 + 472);
    v11 = *(v0 + 312);
    v31 = *(v0 + 496);
    v32 = *(v0 + 304);
    sub_24E60169C(v0 + 136, v0 + 152, &unk_27F23B740);

    sub_24F920F58();
    (*(v9 + 16))(v10, v8, v31);
    (*(v11 + 104))(v10, *MEMORY[0x277D0D1B0], v32);
    v34(v10, *MEMORY[0x277D0D420], v33);
    v13 = *(v6 + 16);
    v12 = *(v6 + 24);
    if (v13 >= v12 >> 1)
    {
      v6 = sub_24E619558(v12 > 1, v13 + 1, 1, v6);
    }

    v15 = *(v0 + 480);
    v14 = *(v0 + 488);
    v16 = *(v0 + 472);
    (*(*(v0 + 504) + 8))(*(v0 + 528), *(v0 + 496));
    *(v6 + 16) = v13 + 1;
    (*(v15 + 32))(v6 + v5 + v13 * v35, v14, v16);
  }

  *(v0 + 552) = v6;
  v17 = *(v0 + 176);
  *(v0 + 560) = *v17;
  *(v0 + 568) = *(v17 + 8);

  sub_24F920EF8();
  if (*(v17 + 32))
  {
    v18 = *(v0 + 40);
    v19 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1((v0 + 16), v18);
    v20 = swift_task_alloc();
    *(v0 + 576) = v20;
    *v20 = v0;
    v20[1] = sub_24EDF1A58;
    v21 = *(v0 + 464);

    return MEMORY[0x282165148](v21, v6, v18, v19);
  }

  else
  {
    v22 = *(v0 + 416);
    v23 = *(v0 + 40);
    v24 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1((v0 + 16), v23);
    v25 = sub_24F921038();
    (*(*(v25 - 8) + 56))(v22, 1, 1, v25);
    v26 = swift_task_alloc();
    *(v0 + 592) = v26;
    *v26 = v0;
    v26[1] = sub_24EDF1C90;
    v27 = *(v0 + 464);
    v28 = *(v0 + 440);
    v29 = *(v0 + 416);

    return MEMORY[0x282165120](v28, v27, v6, v29, v23, v24);
  }
}

uint64_t sub_24EDF18A0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24EDF1A58()
{
  *(*v1 + 584) = v0;

  if (v0)
  {

    v2 = sub_24EDF3BB0;
  }

  else
  {
    v2 = sub_24EDF1B74;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24EDF1B74()
{
  v1 = v0[69];
  v2 = v0[52];
  v3 = v0[5];
  v4 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v3);
  v5 = sub_24F921038();
  (*(*(v5 - 8) + 56))(v2, 1, 1, v5);
  v6 = swift_task_alloc();
  v0[74] = v6;
  *v6 = v0;
  v6[1] = sub_24EDF1C90;
  v7 = v0[58];
  v8 = v0[55];
  v9 = v0[52];

  return MEMORY[0x282165120](v8, v7, v1, v9, v3, v4);
}

uint64_t sub_24EDF1C90()
{
  v2 = *v1;
  *(*v1 + 600) = v0;

  sub_24E601704(*(v2 + 416), &qword_27F21C048);

  if (v0)
  {
    v3 = sub_24EDF3D88;
  }

  else
  {
    v3 = sub_24EDF1DF0;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

void sub_24EDF1DF0()
{
  v2 = v0[54];
  v1 = v0[55];
  v3 = v0[53];
  v0[76] = sub_24F921028();
  (*(v2 + 8))(v1, v3);
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  v4 = swift_task_alloc();
  v0[77] = v4;
  *v4 = v0;
  v4[1] = sub_24EDF1ED8;

  JUMPOUT(0x24F920D28);
}

uint64_t sub_24EDF1ED8(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 624) = a1;
  *(v3 + 632) = v1;

  if (v1)
  {
    v4 = sub_24EDF3F60;
  }

  else
  {
    v4 = sub_24EDF2018;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_24EDF2018(uint64_t isUniquelyReferenced_nonNull_native, uint64_t a2, uint64_t a3)
{
  v4 = v3[78];
  v5 = *(v4 + 16);
  v3[80] = v5;
  v59 = v5;
  if (v5)
  {
    v6 = 0;
    v7 = v3[63];
    v8 = v3[43];
    v9 = v3[39];
    v58 = v3[47];
    v57 = v4 + ((*(v58 + 80) + 32) & ~*(v58 + 80));
    v10 = (v8 + 48);
    v54 = (v8 + 32);
    v53 = (v9 + 88);
    v52 = *MEMORY[0x277D0D1B0];
    v50 = *MEMORY[0x277D0D1B8];
    v55 = (v8 + 8);
    v46 = (v9 + 8);
    v48 = (v7 + 32);
    v49 = (v9 + 96);
    v51 = (v7 + 8);
    v11 = v3[79];
    v56 = MEMORY[0x277D84F90];
    v47 = v4;
    while (1)
    {
      if (v6 >= *(v4 + 16))
      {
        __break(1u);
        return MEMORY[0x28217F228](isUniquelyReferenced_nonNull_native, a2, a3);
      }

      v14 = v3[50];
      v13 = v3[51];
      v15 = v3[42];
      sub_24E60169C(v57 + *(v58 + 72) * v6, v13, &qword_27F2265C8);
      sub_24E60169C(v13, v14, &qword_27F2265C8);
      if ((*v10)(v14, 1, v15) == 1)
      {
        v12 = v3[50];
        sub_24E601704(v3[51], &qword_27F2265C8);
        isUniquelyReferenced_nonNull_native = sub_24E601704(v12, &qword_27F2265C8);
      }

      else
      {
        v16 = v3[41];
        v17 = v3[38];
        (*v54)(v3[46], v3[50], v3[42]);
        sub_24F920B88();
        v18 = (*v53)(v16, v17);
        if (v18 == v52)
        {
          v19 = v3[65];
          v20 = v3[62];
          v21 = v3[41];
          (*v49)(v21, v3[38]);
          (*v48)(v19, v21, v20);
          v22 = sub_24F920F68();
          if (v11)
          {
            v36 = v3[65];
            v37 = v3[62];
            v38 = v3[57];
            v39 = v3[58];
            v40 = v3[56];
            v41 = v3[51];
            v42 = v3[46];
            v43 = v3[42];

            (*v51)(v36, v37);
            (*v55)(v42, v43);
            sub_24E601704(v41, &qword_27F2265C8);
            (*(v38 + 8))(v39, v40);

            __swift_destroy_boxed_opaque_existential_1((v3 + 2));

            v44 = v3[1];

            return v44();
          }

          v24 = v22;
          v25 = v23;
          v26 = v3[51];
          v27 = v3[46];
          v28 = v3[42];
          (*v51)(v3[65], v3[62]);
          (*v55)(v27, v28);
          sub_24E601704(v26, &qword_27F2265C8);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            isUniquelyReferenced_nonNull_native = sub_24E615CF4(0, *(v56 + 16) + 1, 1, v56);
            v56 = isUniquelyReferenced_nonNull_native;
          }

          v30 = *(v56 + 16);
          v29 = *(v56 + 24);
          if (v30 >= v29 >> 1)
          {
            isUniquelyReferenced_nonNull_native = sub_24E615CF4((v29 > 1), v30 + 1, 1, v56);
            v56 = isUniquelyReferenced_nonNull_native;
          }

          v11 = 0;
          *(v56 + 16) = v30 + 1;
          v31 = v56 + 16 * v30;
          *(v31 + 32) = v24;
          *(v31 + 40) = v25;
          v4 = v47;
        }

        else
        {
          v32 = v18;
          v33 = v3[51];
          (*v55)(v3[46], v3[42]);
          isUniquelyReferenced_nonNull_native = sub_24E601704(v33, &qword_27F2265C8);
          if (v32 != v50)
          {
            isUniquelyReferenced_nonNull_native = (*v46)(v3[41], v3[38]);
          }
        }
      }

      if (v59 == ++v6)
      {
        goto LABEL_17;
      }
    }
  }

  v56 = MEMORY[0x277D84F90];
LABEL_17:
  v3[81] = v56;
  v34 = type metadata accessor for ASKBagContract();
  v35 = swift_task_alloc();
  v3[82] = v35;
  *v35 = v3;
  v35[1] = sub_24EDF2650;
  isUniquelyReferenced_nonNull_native = (v3 + 21);
  a2 = v34;
  a3 = v34;

  return MEMORY[0x28217F228](isUniquelyReferenced_nonNull_native, a2, a3);
}

uint64_t sub_24EDF2650()
{
  *(*v1 + 664) = v0;

  if (v0)
  {

    v2 = sub_24EDF4138;
  }

  else
  {
    v2 = sub_24EDF2778;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24EDF2778()
{
  v0[84] = v0[21];
  v1 = ASKBagContract.challengeAttemptOptions.getter();
  v0[85] = sub_24EF5C370(v1);
  v0[86] = v2;
  v3 = swift_task_alloc();
  v0[87] = v3;
  *v3 = v0;
  v3[1] = sub_24EDF2830;
  v4 = v0[81];
  v5 = v0[71];
  v6 = v0[70];
  v7 = v0[23];

  return sub_24EDF46E0(v4, v6, v5, v7);
}

uint64_t sub_24EDF2830(uint64_t a1)
{
  v3 = *v2;
  v3[88] = a1;
  v3[89] = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_24EDF4310, 0, 0);
  }

  else
  {

    v4 = swift_task_alloc();
    v3[90] = v4;
    *v4 = v3;
    v4[1] = sub_24EDF2A0C;
    v5 = v3[86];
    v6 = v3[78];
    v7 = v3[23];
    v8 = v3[85];

    return (sub_24EDF9A0C)(v8, v5, v6, v7);
  }
}

uint64_t sub_24EDF2A0C(uint64_t a1)
{
  v3 = *v2;
  v3[91] = a1;
  v3[92] = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_24EDF2D3C, 0, 0);
  }

  else
  {
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215720);
    v5 = swift_task_alloc();
    v3[93] = v5;
    *v5 = v3;
    v5[1] = sub_24EDF2BE0;

    return MEMORY[0x28217F228](v3 + 12, v4, v4);
  }
}

uint64_t sub_24EDF2BE0()
{
  *(*v1 + 752) = v0;

  if (v0)
  {

    v2 = sub_24EDF44F8;
  }

  else
  {
    v2 = sub_24EDF2F24;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24EDF2D3C()
{
  v2 = v0[57];
  v1 = v0[58];
  v3 = v0[56];

  (*(v2 + 8))(v1, v3);
  __swift_destroy_boxed_opaque_existential_1((v0 + 2));

  v4 = v0[1];

  return v4();
}

uint64_t sub_24EDF2F24()
{
  v111 = v0;
  v1 = v0[80];
  v2 = v0[15];
  v3 = v0[16];
  __swift_project_boxed_opaque_existential_1(v0 + 12, v2);
  v110[0] = 34;
  v103 = (*(v3 + 8))(v110, v2, v3);
  result = __swift_destroy_boxed_opaque_existential_1((v0 + 12));
  if (v1)
  {
    v5 = 0;
    v107 = v0[91];
    v89 = v0[88];
    v6 = v0[63];
    v7 = v0[47];
    v8 = v0[43];
    v9 = v0[39];
    v92 = v0[34];
    v81 = v0[29];
    v88 = v0[26];
    v83 = v0[25];
    v10 = v0[78] + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    v11 = (v8 + 48);
    v100 = (v8 + 32);
    v98 = (v9 + 88);
    v96 = *MEMORY[0x277D0D1B0];
    v86 = *MEMORY[0x277D0D1B8];
    v82 = (v9 + 8);
    v85 = (v9 + 96);
    v84 = (v6 + 32);
    v87 = (v6 + 8);
    v91 = (v8 + 16);
    v102 = (v8 + 8);
    v12 = MEMORY[0x277D84F90];
    v90 = v0[94];
    v94 = v10;
    v95 = v7;
    v93 = (v8 + 48);
    while (1)
    {
      if (v5 >= *(v0[78] + 16))
      {
        __break(1u);
        return result;
      }

      v109 = v12;
      v16 = v0[48];
      v15 = v0[49];
      v17 = v0[42];
      v18 = v10 + *(v7 + 72) * v5;
      v19 = v10;
      v20 = v7;
      sub_24E60169C(v18, v15, &qword_27F2265C8);
      sub_24E60169C(v15, v16, &qword_27F2265C8);
      if ((*v11)(v16, 1, v17) != 1)
      {
        break;
      }

      v13 = v20;
      v14 = v0[48];
      sub_24E601704(v0[49], &qword_27F2265C8);
      result = sub_24E601704(v14, &qword_27F2265C8);
      v10 = v19;
      v12 = v109;
LABEL_4:
      ++v5;
      v7 = v13;
      if (v5 == v0[80])
      {
        goto LABEL_35;
      }
    }

    v105 = v5;
    v21 = v0[40];
    v22 = v0[38];
    v23 = v0[33];
    (*v100)(v0[45], v0[48], v0[42]);
    v24 = type metadata accessor for ChallengeDefinitionDetail.Trackable(0);
    v25 = *(*(v24 - 8) + 56);
    v25(v23, 1, 1, v24);
    sub_24F920B88();
    v26 = (*v98)(v21, v22);
    if (v26 != v96)
    {
      if (v26 != v86)
      {
        (*v82)(v0[40], v0[38]);
      }

LABEL_17:
      v41 = v0[32];
      v40 = v0[33];
      (*v91)(v0[44], v0[45], v0[42]);
      sub_24E60169C(v40, v41, &qword_27F212A00);
      v42 = sub_24F920B18();
      if (*(v107 + 16))
      {
        v44 = sub_24E76D644(v42, v43);
        v46 = v45;

        if (v46)
        {
          v47 = v0[28];
          sub_24EDFE05C(*(v107 + 56) + *(v88 + 72) * v44, v47, type metadata accessor for ChallengeDefinitionDefaultOptions);
          v48 = *v47;

          sub_24EDFE5E0(v47, type metadata accessor for ChallengeDefinitionDefaultOptions);
          goto LABEL_22;
        }
      }

      else
      {
      }

      v48 = 0;
LABEL_22:
      v49 = v0[86];
      v50 = v0[85];
      if ((sub_24F920A98() & 1) == 0)
      {
        v50 = v49;
      }

      v51 = sub_24F920B18();
      if (*(v107 + 16))
      {
        v53 = sub_24E76D644(v51, v52);
        v55 = v54;

        if (v55)
        {
          v56 = v0[27];
          v57 = v0[24];
          sub_24EDFE05C(*(v107 + 56) + *(v88 + 72) * v53, v56, type metadata accessor for ChallengeDefinitionDefaultOptions);
          v58 = *(v83 + 20);
          v59 = sub_24F920A88();
          v60 = *(v59 - 8);
          (*(v60 + 16))(v57, v56 + v58, v59);
          sub_24EDFE5E0(v56, type metadata accessor for ChallengeDefinitionDefaultOptions);
          (*(v60 + 56))(v57, 0, 1, v59);
LABEL_29:
          v63 = v0[49];
          v64 = v0[45];
          v65 = v0[42];
          v66 = v0[36];
          v67 = v0[37];
          v68 = v0[35];
          v69 = v0[33];
          sub_24EF52FB0(v0[44], v0[32], v103 & 1, v48, v50, v0[24], v66);
          sub_24E601704(v69, &qword_27F212A00);
          (*v102)(v64, v65);
          sub_24E601704(v63, &qword_27F2265C8);
          sub_24EDFE6BC(v66, v67, type metadata accessor for ChallengeDefinitionDetail);
          sub_24EDFE6BC(v67, v68, type metadata accessor for ChallengeDefinitionDetail);
          v12 = v109;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v12 = sub_24E619530(0, v109[2] + 1, 1, v109);
          }

          v5 = v105;
          v10 = v94;
          v13 = v95;
          v11 = v93;
          v71 = v12[2];
          v70 = v12[3];
          if (v71 >= v70 >> 1)
          {
            v12 = sub_24E619530(v70 > 1, v71 + 1, 1, v12);
          }

          v72 = v0[35];
          v12[2] = v71 + 1;
          result = sub_24EDFE6BC(v72, v12 + ((*(v92 + 80) + 32) & ~*(v92 + 80)) + *(v92 + 72) * v71, type metadata accessor for ChallengeDefinitionDetail);
          goto LABEL_4;
        }
      }

      else
      {
      }

      v61 = v0[24];
      v62 = sub_24F920A88();
      (*(*(v62 - 8) + 56))(v61, 1, 1, v62);
      goto LABEL_29;
    }

    v27 = v0[64];
    v28 = v0[62];
    v29 = v0[40];
    (*v85)(v29, v0[38]);
    (*v84)(v27, v29, v28);
    v30 = sub_24F920F68();
    if (v90)
    {
      v97 = v0[64];
      v77 = v0[62];
      v78 = v0[57];
      v106 = v0[56];
      v108 = v0[58];
      v104 = v0[49];
      v101 = v0[45];
      v99 = v0[42];
      v79 = v0[33];

      (*v87)(v97, v77);
      sub_24E601704(v79, &qword_27F212A00);
      (*v102)(v101, v99);
      sub_24E601704(v104, &qword_27F2265C8);
      (*(v78 + 8))(v108, v106);

      __swift_destroy_boxed_opaque_existential_1((v0 + 2));

      v80 = v0[1];

      return v80();
    }

    if (*(v89 + 16))
    {
      v32 = sub_24E76D644(v30, v31);
      v34 = v33;

      if (v34)
      {
        v35 = v0[64];
        v36 = v0[62];
        v37 = v0[33];
        v38 = v0[30];
        v39 = v0[31];
        sub_24EDFE05C(*(v89 + 56) + *(v81 + 72) * v32, v38, type metadata accessor for Leaderboard);
        (*v87)(v35, v36);
        sub_24E601704(v37, &qword_27F212A00);
        sub_24EDFE6BC(v38, v39, type metadata accessor for Leaderboard);
        sub_24EDFE6BC(v39, v37, type metadata accessor for Leaderboard);
        v25(v37, 0, 1, v24);
LABEL_16:
        v90 = 0;
        goto LABEL_17;
      }
    }

    else
    {
    }

    (*v87)(v0[64], v0[62]);
    goto LABEL_16;
  }

  v12 = MEMORY[0x277D84F90];
LABEL_35:
  v73 = v0[57];
  v74 = v0[58];
  v75 = v0[56];

  (*(v73 + 8))(v74, v75);
  __swift_destroy_boxed_opaque_existential_1((v0 + 2));

  v76 = v0[1];

  return v76(v12);
}

uint64_t sub_24EDF3BB0()
{
  (*(v0[57] + 8))(v0[58], v0[56]);
  __swift_destroy_boxed_opaque_existential_1((v0 + 2));

  v1 = v0[1];

  return v1();
}

uint64_t sub_24EDF3D88()
{
  (*(v0[57] + 8))(v0[58], v0[56]);
  __swift_destroy_boxed_opaque_existential_1((v0 + 2));

  v1 = v0[1];

  return v1();
}

uint64_t sub_24EDF3F60()
{
  (*(v0[57] + 8))(v0[58], v0[56]);
  __swift_destroy_boxed_opaque_existential_1((v0 + 2));

  v1 = v0[1];

  return v1();
}

uint64_t sub_24EDF4138()
{
  (*(v0[57] + 8))(v0[58], v0[56]);
  __swift_destroy_boxed_opaque_existential_1((v0 + 2));

  v1 = v0[1];

  return v1();
}

uint64_t sub_24EDF4310()
{
  v2 = v0[57];
  v1 = v0[58];
  v3 = v0[56];

  (*(v2 + 8))(v1, v3);
  __swift_destroy_boxed_opaque_existential_1((v0 + 2));

  v4 = v0[1];

  return v4();
}

uint64_t sub_24EDF44F8()
{
  v2 = v0[57];
  v1 = v0[58];
  v3 = v0[56];

  (*(v2 + 8))(v1, v3);
  __swift_destroy_boxed_opaque_existential_1((v0 + 2));

  v4 = v0[1];

  return v4();
}

uint64_t sub_24EDF46E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[10] = a3;
  v4[11] = a4;
  v4[8] = a1;
  v4[9] = a2;
  return MEMORY[0x2822009F8](sub_24EDF4704, 0, 0);
}

uint64_t sub_24EDF4704()
{
  *(v0 + 96) = sub_24F92B7F8();
  *(v0 + 104) = sub_24F92B7E8();
  v2 = sub_24F92B778();

  return MEMORY[0x2822009F8](sub_24EDF479C, v2, v1);
}

uint64_t sub_24EDF479C()
{

  type metadata accessor for LocalPlayerProvider();
  sub_24F928F28();
  *(v0 + 112) = *(v0 + 40);

  return MEMORY[0x2822009F8](sub_24EDF4824, 0, 0);
}

uint64_t sub_24EDF4824()
{
  *(v0 + 120) = sub_24F92B7E8();
  v2 = sub_24F92B778();

  return MEMORY[0x2822009F8](sub_24EDF48B0, v2, v1);
}

uint64_t sub_24EDF48B0()
{
  v1 = v0[14];

  swift_getKeyPath();
  v0[6] = v1;
  sub_24E69A53C();
  sub_24F91FD88();

  v2 = (v1 + OBJC_IVAR____TtC12GameStoreKit19LocalPlayerProvider__playerID);
  swift_beginAccess();
  v0[16] = *v2;
  v0[17] = v2[1];

  return MEMORY[0x2822009F8](sub_24EDF499C, 0, 0);
}

uint64_t sub_24EDF499C()
{
  v2 = *(v0 + 80);
  v1 = *(v0 + 88);
  v8 = *(v0 + 64);
  v9 = *(v0 + 128);
  v3 = swift_task_alloc();
  *(v0 + 144) = v3;
  *(v3 + 16) = v8;
  *(v3 + 32) = v2;
  *(v3 + 40) = v9;
  *(v3 + 56) = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213060);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2307E8);
  v6 = swift_task_alloc();
  *(v0 + 152) = v6;
  *v6 = v0;
  v6[1] = sub_24EDF4AD4;

  return MEMORY[0x282200740](v0 + 56, v4, v5, 0, 0, &unk_24F9A2548, v3, v4);
}

uint64_t sub_24EDF4AD4()
{
  *(*v1 + 160) = v0;

  if (v0)
  {
    v2 = sub_24EDF4BF8;
  }

  else
  {

    v2 = sub_24EDFE9A0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24EDF4BF8()
{

  if (qword_27F2113B8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 160);
  v2 = sub_24F9220D8();
  __swift_project_value_buffer(v2, qword_27F39E778);
  v3 = v1;
  v4 = sub_24F9220B8();
  v5 = sub_24F92BDB8();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 160);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_24E5DD000, v4, v5, "ChallengeDefinitionsDataIntentImplementation: Failed to fetch leaderboards: %@", v7, 0xCu);
    sub_24E601704(v8, &qword_27F227B20);
    MEMORY[0x2530542D0](v8, -1, -1);
    MEMORY[0x2530542D0](v7, -1, -1);
  }

  swift_willThrow();
  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_24EDF4DA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[16] = a7;
  v8[17] = a8;
  v8[14] = a5;
  v8[15] = a6;
  v8[12] = a3;
  v8[13] = a4;
  v8[10] = a1;
  v8[11] = a2;
  v8[18] = *(type metadata accessor for Leaderboard(0) - 8);
  v8[19] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2307F0);
  v8[20] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213060);
  v8[21] = v9;
  v8[22] = *(v9 - 8);
  v8[23] = swift_task_alloc();
  v8[24] = swift_task_alloc();
  v8[25] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2307F8);
  v8[26] = v10;
  v8[27] = *(v10 - 8);
  v8[28] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570);
  v8[29] = swift_task_alloc();
  v8[30] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24EDF4FCC, 0, 0);
}

uint64_t sub_24EDF4FCC()
{
  v1 = *(v0 + 96);
  v2 = *(v1 + 16);
  if (v2)
  {
    v27 = **(v0 + 88);
    v26 = sub_24F92B858();
    v3 = *(v26 - 8);
    v25 = *(v3 + 56);
    v24 = (v3 + 48);
    v23 = (v3 + 8);
    v4 = (v1 + 40);
    do
    {
      v32 = v2;
      v8 = *(v0 + 232);
      v7 = *(v0 + 240);
      v29 = *(v0 + 128);
      v30 = *(v0 + 136);
      v9 = *(v0 + 112);
      v28 = *(v0 + 120);
      v10 = *(v0 + 104);
      v12 = *(v4 - 1);
      v11 = *v4;
      v31 = v4;
      v25(v7, 1, 1, v26);
      v13 = swift_allocObject();
      v13[2] = 0;
      v13[3] = 0;
      v13[4] = v12;
      v13[5] = v11;
      v13[6] = v10;
      v13[7] = v9;
      v13[8] = v28;
      v13[9] = v29;
      v13[10] = v30;
      sub_24E60169C(v7, v8, &unk_27F21B570);
      LODWORD(v7) = (*v24)(v8, 1, v26);

      v14 = *(v0 + 232);
      if (v7 == 1)
      {
        sub_24E601704(*(v0 + 232), &unk_27F21B570);
      }

      else
      {
        sub_24F92B848();
        (*v23)(v14, v26);
      }

      if (v13[2])
      {
        swift_getObjectType();
        swift_unknownObjectRetain();
        v15 = sub_24F92B778();
        v17 = v16;
        swift_unknownObjectRelease();
      }

      else
      {
        v15 = 0;
        v17 = 0;
      }

      if (v17 | v15)
      {
        v5 = v0 + 16;
        *(v0 + 16) = 0;
        *(v0 + 24) = 0;
        *(v0 + 32) = v15;
        *(v0 + 40) = v17;
      }

      else
      {
        v5 = 0;
      }

      v6 = *(v0 + 240);
      *(v0 + 48) = 1;
      *(v0 + 56) = v5;
      *(v0 + 64) = v27;
      swift_task_create();

      sub_24E601704(v6, &unk_27F21B570);
      v4 = v31 + 2;
      --v2;
    }

    while (v32 != 1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F228600);
  sub_24F92B9A8();
  *(v0 + 248) = MEMORY[0x277D84F98];
  v18 = sub_24EDFE94C(&qword_27F230800, &qword_27F2307F8);
  v19 = swift_task_alloc();
  *(v0 + 256) = v19;
  *v19 = v0;
  v19[1] = sub_24EDF5394;
  v20 = *(v0 + 208);
  v21 = *(v0 + 160);

  return MEMORY[0x282200308](v21, v20, v18);
}

uint64_t sub_24EDF5394()
{
  v2 = *v1;
  *(*v1 + 264) = v0;

  if (v0)
  {
    (*(v2[27] + 8))(v2[28], v2[26]);

    v3 = sub_24EDF5914;
  }

  else
  {
    v3 = sub_24EDF54CC;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_24EDF54CC()
{
  v1 = v0[21];
  v2 = v0[20];
  v3 = (*(v0[22] + 48))(v2, 1, v1);
  v4 = v0[31];
  if (v3 == 1)
  {
    v5 = v0[10];
    (*(v0[27] + 8))(v0[28], v0[26]);
    sub_24E601704(v2, &qword_27F2307F0);
    *v5 = v4;

    v6 = v0[1];

    return v6();
  }

  v9 = v0[24];
  v8 = v0[25];
  v10 = v0[23];
  v11 = v0[19];
  sub_24E6009C8(v2, v8, &qword_27F213060);
  sub_24E60169C(v8, v9, &qword_27F213060);
  v12 = *v9;
  v13 = v9[1];
  sub_24E60169C(v8, v10, &qword_27F213060);

  v14 = v10 + *(v1 + 48);
  v15 = v12;
  v16 = v13;
  sub_24EDFE6BC(v14, v11, type metadata accessor for Leaderboard);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v0[9] = v4;
  v18 = sub_24E76D644(v15, v13);
  v20 = *(v4 + 16);
  v21 = (v19 & 1) == 0;
  v22 = __OFADD__(v20, v21);
  v23 = v20 + v21;
  if (v22)
  {
    __break(1u);
LABEL_20:
    v38 = v18;
    sub_24E8B4088();
    v18 = v38;
LABEL_12:
    v25 = v0[25];
    v27 = v0[18];
    v26 = v0[19];
    if (v1)
    {
      v28 = v18;

      v29 = v0[9];
      sub_24EDFE640(v26, v29[7] + *(v27 + 72) * v28, type metadata accessor for Leaderboard);
      sub_24E601704(v25, &qword_27F213060);
    }

    else
    {
      v29 = v0[9];
      v29[(v18 >> 6) + 8] |= 1 << v18;
      v30 = (v29[6] + 16 * v18);
      *v30 = v15;
      v30[1] = v16;
      sub_24EDFE6BC(v26, v29[7] + *(v27 + 72) * v18, type metadata accessor for Leaderboard);
      v31 = sub_24E601704(v25, &qword_27F213060);
      v34 = v29[2];
      v22 = __OFADD__(v34, 1);
      v35 = v34 + 1;
      if (v22)
      {
        __break(1u);
        return MEMORY[0x282200308](v31, v32, v33);
      }

      v29[2] = v35;
    }

    sub_24EDFE5E0(v0[24] + *(v0[21] + 48), type metadata accessor for Leaderboard);
    v0[31] = v29;
    v36 = sub_24EDFE94C(&qword_27F230800, &qword_27F2307F8);
    v37 = swift_task_alloc();
    v0[32] = v37;
    *v37 = v0;
    v37[1] = sub_24EDF5394;
    v32 = v0[26];
    v31 = v0[20];
    v33 = v36;

    return MEMORY[0x282200308](v31, v32, v33);
  }

  LOBYTE(v1) = v19;
  if (*(v0[31] + 24) >= v23)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_12;
    }

    goto LABEL_20;
  }

  sub_24E8A4674(v23, isUniquelyReferenced_nonNull_native);
  v18 = sub_24E76D644(v15, v13);
  if ((v1 & 1) == (v24 & 1))
  {
    goto LABEL_12;
  }

  return sub_24F92CF88();
}

uint64_t sub_24EDF5914()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24EDF59D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 72) = a4;
  *(v8 + 80) = a5;
  *(v8 + 64) = a1;
  type metadata accessor for Leaderboard(0);
  v14 = swift_task_alloc();
  *(v8 + 88) = v14;
  *(v8 + 16) = a4;
  *(v8 + 24) = a5;
  *(v8 + 32) = a6;
  *(v8 + 40) = a7;
  *(v8 + 48) = a8;
  *(v8 + 56) = v18;
  v15 = swift_task_alloc();
  *(v8 + 96) = v15;
  *v15 = v8;
  v15[1] = sub_24EDF5B10;

  return sub_24E648974(v14, (v8 + 16), v19);
}

uint64_t sub_24EDF5B10()
{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = sub_24EDF5CDC;
  }

  else
  {
    v2 = sub_24EDF5C24;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24EDF5C24()
{
  v1 = v0[10];
  v2 = v0[11];
  v4 = v0[8];
  v3 = v0[9];
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213060) + 48);
  *v4 = v3;
  v4[1] = v1;
  sub_24EDFE6BC(v2, v4 + v5, type metadata accessor for Leaderboard);

  v6 = v0[1];

  return v6();
}

uint64_t sub_24EDF5CDC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24EDF5D40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 56) = a1;
  v5 = *(a2 + 16);
  *(v3 + 16) = *a2;
  *(v3 + 32) = v5;
  *(v3 + 48) = *(a2 + 32);
  v6 = swift_task_alloc();
  *(v3 + 64) = v6;
  *v6 = v3;
  v6[1] = sub_24EDF5DF0;

  return sub_24EDF09D8(v3 + 16, a3);
}

uint64_t sub_24EDF5DF0(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (!v1)
  {
    **(v4 + 56) = a1;
  }

  v6 = *(v5 + 8);

  return v6();
}

uint64_t sub_24EDF5F00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[14] = a5;
  v6[15] = a6;
  v6[12] = a3;
  v6[13] = a4;
  v6[10] = a1;
  v6[11] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570);
  v6[16] = swift_task_alloc();
  v6[17] = swift_task_alloc();
  v6[18] = *(type metadata accessor for ChallengeDefinitionDefaultOptions() - 8);
  v6[19] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2307A8);
  v6[20] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213230);
  v6[21] = v7;
  v6[22] = *(v7 - 8);
  v6[23] = swift_task_alloc();
  v6[24] = swift_task_alloc();
  v6[25] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2307B0);
  v6[26] = v8;
  v6[27] = *(v8 - 8);
  v6[28] = swift_task_alloc();
  v6[29] = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2265C8) - 8);
  v6[30] = swift_task_alloc();
  v9 = sub_24F920BC8();
  v6[31] = v9;
  v10 = *(v9 - 8);
  v6[32] = v10;
  v6[33] = *(v10 + 64);
  v6[34] = swift_task_alloc();
  v6[35] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24EDF61FC, 0, 0);
}

uint64_t sub_24EDF61FC()
{
  v1 = *(v0 + 96);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *(v0 + 232);
    v4 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v5 = *(v0 + 256);
    v6 = (v5 + 48);
    v37 = *(v0 + 264) + 7;
    v38 = (v5 + 48);
    v39 = v5;
    v7 = *(v3 + 72);
    v35 = v7;
    v36 = (v5 + 8);
    do
    {
      v9 = *(v0 + 240);
      v8 = *(v0 + 248);
      sub_24E60169C(v4, v9, &qword_27F2265C8);
      if ((*v6)(v9, 1, v8) == 1)
      {
        sub_24E601704(*(v0 + 240), &qword_27F2265C8);
      }

      else
      {
        v46 = v2;
        v11 = *(v0 + 272);
        v10 = *(v0 + 280);
        v12 = *(v0 + 248);
        v13 = *(v0 + 136);
        v44 = *(v0 + 120);
        v45 = *(v0 + 128);
        v42 = *(v0 + 104);
        v43 = *(v0 + 112);
        v40 = v13;
        v41 = *(v39 + 32);
        v41(v10, *(v0 + 240), v12);
        v14 = sub_24F92B858();
        v15 = *(v14 - 8);
        (*(v15 + 56))(v13, 1, 1, v14);
        (*(v39 + 16))(v11, v10, v12);
        v16 = (*(v39 + 80) + 32) & ~*(v39 + 80);
        v17 = (v37 + v16) & 0xFFFFFFFFFFFFFFF8;
        v18 = swift_allocObject();
        *(v18 + 16) = 0;
        *(v18 + 24) = 0;
        v41(v18 + v16, v11, v12);
        v19 = (v18 + v17);
        *v19 = v42;
        v19[1] = v43;
        *(v18 + ((v17 + 23) & 0xFFFFFFFFFFFFFFF8)) = v44;
        sub_24E60169C(v40, v45, &unk_27F21B570);
        v20 = (*(v15 + 48))(v45, 1, v14);

        v21 = *(v0 + 128);
        if (v20 == 1)
        {
          sub_24E601704(*(v0 + 128), &unk_27F21B570);
        }

        else
        {
          sub_24F92B848();
          (*(v15 + 8))(v21, v14);
        }

        v7 = v35;
        if (*(v18 + 16))
        {
          swift_getObjectType();
          swift_unknownObjectRetain();
          v22 = sub_24F92B778();
          v24 = v23;
          swift_unknownObjectRelease();
        }

        else
        {
          v22 = 0;
          v24 = 0;
        }

        v25 = **(v0 + 88);

        if (v24 | v22)
        {
          v26 = v0 + 16;
          *(v0 + 16) = 0;
          *(v0 + 24) = 0;
          *(v0 + 32) = v22;
          *(v0 + 40) = v24;
        }

        else
        {
          v26 = 0;
        }

        v27 = *(v0 + 280);
        v28 = *(v0 + 248);
        v29 = *(v0 + 136);
        *(v0 + 48) = 1;
        *(v0 + 56) = v26;
        *(v0 + 64) = v25;
        swift_task_create();

        sub_24E601704(v29, &unk_27F21B570);
        (*v36)(v27, v28);
        v2 = v46;
        v6 = v38;
      }

      v4 += v7;
      --v2;
    }

    while (v2);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F228600);
  sub_24F92B9A8();
  *(v0 + 288) = MEMORY[0x277D84F98];
  v30 = sub_24EDFE94C(&qword_27F2307B8, &qword_27F2307B0);
  v31 = swift_task_alloc();
  *(v0 + 296) = v31;
  *v31 = v0;
  v31[1] = sub_24EDF66FC;
  v32 = *(v0 + 208);
  v33 = *(v0 + 160);

  return MEMORY[0x282200308](v33, v32, v30);
}

uint64_t sub_24EDF66FC()
{
  v2 = *v1;
  *(*v1 + 304) = v0;

  if (v0)
  {
    (*(v2[27] + 8))(v2[28], v2[26]);

    v3 = sub_24EDF6CA0;
  }

  else
  {
    v3 = sub_24EDF6834;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_24EDF6834()
{
  v1 = v0[21];
  v2 = v0[20];
  v3 = (*(v0[22] + 48))(v2, 1, v1);
  v4 = v0[36];
  if (v3 == 1)
  {
    v5 = v0[10];
    (*(v0[27] + 8))(v0[28], v0[26]);
    sub_24E601704(v2, &qword_27F2307A8);
    *v5 = v4;

    v6 = v0[1];

    return v6();
  }

  v9 = v0[24];
  v8 = v0[25];
  v10 = v0[23];
  v11 = v0[19];
  sub_24E6009C8(v2, v8, &qword_27F213230);
  sub_24E60169C(v8, v9, &qword_27F213230);
  v12 = *v9;
  v13 = v9[1];
  sub_24E60169C(v8, v10, &qword_27F213230);

  v14 = v10 + *(v1 + 48);
  v15 = v12;
  v16 = v13;
  sub_24EDFE6BC(v14, v11, type metadata accessor for ChallengeDefinitionDefaultOptions);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v0[9] = v4;
  v18 = sub_24E76D644(v15, v13);
  v20 = *(v4 + 16);
  v21 = (v19 & 1) == 0;
  v22 = __OFADD__(v20, v21);
  v23 = v20 + v21;
  if (v22)
  {
    __break(1u);
LABEL_20:
    v38 = v18;
    sub_24E8B42E0();
    v18 = v38;
LABEL_12:
    v25 = v0[25];
    v27 = v0[18];
    v26 = v0[19];
    if (v1)
    {
      v28 = v18;

      v29 = v0[9];
      sub_24EDFE640(v26, v29[7] + *(v27 + 72) * v28, type metadata accessor for ChallengeDefinitionDefaultOptions);
      sub_24E601704(v25, &qword_27F213230);
    }

    else
    {
      v29 = v0[9];
      v29[(v18 >> 6) + 8] |= 1 << v18;
      v30 = (v29[6] + 16 * v18);
      *v30 = v15;
      v30[1] = v16;
      sub_24EDFE6BC(v26, v29[7] + *(v27 + 72) * v18, type metadata accessor for ChallengeDefinitionDefaultOptions);
      v31 = sub_24E601704(v25, &qword_27F213230);
      v34 = v29[2];
      v22 = __OFADD__(v34, 1);
      v35 = v34 + 1;
      if (v22)
      {
        __break(1u);
        return MEMORY[0x282200308](v31, v32, v33);
      }

      v29[2] = v35;
    }

    sub_24EDFE5E0(v0[24] + *(v0[21] + 48), type metadata accessor for ChallengeDefinitionDefaultOptions);
    v0[36] = v29;
    v36 = sub_24EDFE94C(&qword_27F2307B8, &qword_27F2307B0);
    v37 = swift_task_alloc();
    v0[37] = v37;
    *v37 = v0;
    v37[1] = sub_24EDF66FC;
    v32 = v0[26];
    v31 = v0[20];
    v33 = v36;

    return MEMORY[0x282200308](v31, v32, v33);
  }

  LOBYTE(v1) = v19;
  if (*(v0[36] + 24) >= v23)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_12;
    }

    goto LABEL_20;
  }

  sub_24E8A49EC(v23, isUniquelyReferenced_nonNull_native);
  v18 = sub_24E76D644(v15, v13);
  if ((v1 & 1) == (v24 & 1))
  {
    goto LABEL_12;
  }

  return sub_24F92CF88();
}

uint64_t sub_24EDF6CA0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24EDF6D90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[12] = a6;
  v7[13] = a7;
  v7[10] = a4;
  v7[11] = a5;
  v7[9] = a1;
  type metadata accessor for ChallengeDefinitionDefaultOptions();
  v7[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24EDF6E28, 0, 0);
}

uint64_t sub_24EDF6E28()
{
  *(v0 + 120) = sub_24F920BB8();
  *(v0 + 160) = sub_24F920A98() & 1;

  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F255030);
  v2 = swift_task_alloc();
  *(v0 + 128) = v2;
  *v2 = v0;
  v2[1] = sub_24EDF6F10;

  return MEMORY[0x28217F228](v0 + 16, v1, v1);
}

uint64_t sub_24EDF6F10()
{
  *(*v1 + 136) = v0;

  if (v0)
  {

    v2 = sub_24EDF7344;
  }

  else
  {
    v2 = sub_24EDF704C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24EDF704C()
{
  v1 = *(v0 + 120);
  if (*(v0 + 160))
  {
    v2 = (v0 + 88);
  }

  else
  {
    v2 = (v0 + 96);
  }

  v3 = *v2;
  v4 = *(v0 + 40);
  v5 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v4);
  *(v0 + 56) = v1;
  *(v0 + 64) = v3;
  v6 = swift_task_alloc();
  *(v0 + 144) = v6;
  v7 = sub_24E653FA4();
  *v6 = v0;
  v6[1] = sub_24EDF714C;
  v9 = *(v0 + 104);
  v8 = *(v0 + 112);

  return MEMORY[0x28217F4B0](v8, v0 + 56, v9, &type metadata for ChallengeDefinitionDefaultOptionsIntent, v7, v4, v5);
}

uint64_t sub_24EDF714C()
{
  *(*v1 + 152) = v0;

  if (v0)
  {
    v2 = sub_24EDF73A8;
  }

  else
  {

    v2 = sub_24EDF7288;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24EDF7288()
{
  v1 = v0[14];
  v2 = v0[9];
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213230) + 48);
  *v2 = sub_24F920B18();
  v2[1] = v4;
  sub_24EDFE6BC(v1, v2 + v3, type metadata accessor for ChallengeDefinitionDefaultOptions);
  __swift_destroy_boxed_opaque_existential_1((v0 + 2));

  v5 = v0[1];

  return v5();
}

uint64_t sub_24EDF7344()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24EDF73A8()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24EDF743C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[17] = a5;
  v6[18] = a6;
  v6[15] = a3;
  v6[16] = a4;
  v6[13] = a1;
  v6[14] = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2307D0);
  v6[19] = v7;
  v6[20] = *(v7 - 8);
  v6[21] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570);
  v6[22] = swift_task_alloc();
  v6[23] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24EDF7554, 0, 0);
}

uint64_t sub_24EDF7554()
{
  v1 = v0[15];
  v4 = *(v1 + 64);
  v3 = v1 + 64;
  v2 = v4;
  v34 = v0 + 2;
  v5 = -1;
  v6 = -1 << *(v0[15] + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & v2;
  v8 = (63 - v6) >> 6;
  v38 = v0[15];

  v12 = 0;
  v36 = v8;
  v37 = v3;
  v35 = v0;
  while (v7)
  {
LABEL_10:
    v15 = v0[23];
    v16 = v0[17];
    v17 = v0[18];
    v40 = v0[16];
    v41 = v0[22];
    v18 = __clz(__rbit64(v7)) | (v12 << 6);
    v19 = (*(v38 + 48) + 16 * v18);
    v20 = v19[1];
    v39 = *v19;
    v21 = *(*(v38 + 56) + 8 * v18);
    v22 = sub_24F92B858();
    v23 = *(v22 - 8);
    (*(v23 + 56))(v15, 1, 1, v22);
    v24 = swift_allocObject();
    v24[2] = 0;
    v24[3] = 0;
    v24[4] = v39;
    v24[5] = v20;
    v24[6] = v21;
    v24[7] = v40;
    v24[8] = v16;
    v24[9] = v17;
    sub_24E60169C(v15, v41, &unk_27F21B570);
    LODWORD(v15) = (*(v23 + 48))(v41, 1, v22);

    v25 = v35[22];
    if (v15 == 1)
    {
      sub_24E601704(v35[22], &unk_27F21B570);
    }

    else
    {
      sub_24F92B848();
      (*(v23 + 8))(v25, v22);
    }

    v0 = v35;
    if (v24[2])
    {
      swift_getObjectType();
      swift_unknownObjectRetain();
      v26 = sub_24F92B778();
      v28 = v27;
      swift_unknownObjectRelease();
    }

    else
    {
      v26 = 0;
      v28 = 0;
    }

    v29 = *v35[14];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2307C0);
    v30 = (v28 | v26);
    if (v28 | v26)
    {
      v30 = v34;
      *v34 = 0;
      v34[1] = 0;
      v35[4] = v26;
      v35[5] = v28;
    }

    v13 = v35[23];
    v7 &= v7 - 1;
    v35[6] = 1;
    v35[7] = v30;
    v35[8] = v29;
    swift_task_create();

    v9 = sub_24E601704(v13, &unk_27F21B570);
    v8 = v36;
    v3 = v37;
  }

  while (1)
  {
    v14 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      __break(1u);
      return MEMORY[0x282200308](v9, v10, v11);
    }

    if (v14 >= v8)
    {
      break;
    }

    v7 = *(v3 + 8 * v14);
    ++v12;
    if (v7)
    {
      v12 = v14;
      goto LABEL_10;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2307C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F228600);
  sub_24F92B9A8();
  v0[24] = MEMORY[0x277D84F98];
  v31 = sub_24EDFE94C(&qword_27F2307D8, &qword_27F2307D0);
  v32 = swift_task_alloc();
  v0[25] = v32;
  *v32 = v0;
  v32[1] = sub_24EDF799C;
  v10 = v0[19];
  v9 = (v0 + 9);
  v11 = v31;

  return MEMORY[0x282200308](v9, v10, v11);
}

uint64_t sub_24EDF799C()
{
  v2 = *v1;
  *(*v1 + 208) = v0;

  if (v0)
  {
    (*(v2[20] + 8))(v2[21], v2[19]);

    v3 = sub_24EDF7DAC;
  }

  else
  {
    v3 = sub_24EDF7AD4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_24EDF7AD4()
{
  v3 = v0[9];
  v2 = v0[10];
  v4 = v0[24];
  if (v2)
  {
    v5 = v0[11];

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v0[12] = v4;
    v7 = sub_24E76D644(v3, v2);
    v9 = *(v4 + 16);
    v10 = (v8 & 1) == 0;
    v11 = __OFADD__(v9, v10);
    v12 = v9 + v10;
    if (v11)
    {
      __break(1u);
    }

    else
    {
      v1 = v8;
      if (*(v0[24] + 24) < v12)
      {
        sub_24E8A50DC(v12, isUniquelyReferenced_nonNull_native);
        v7 = sub_24E76D644(v3, v2);
        if ((v1 & 1) != (v13 & 1))
        {

          return sub_24F92CF88();
        }

LABEL_12:
        if (v1)
        {
LABEL_13:
          v17 = v7;

          v18 = v0[12];
          *(v18[7] + 8 * v17) = v5;

          goto LABEL_18;
        }

LABEL_16:
        v18 = v0[12];
        v18[(v7 >> 6) + 8] |= 1 << v7;
        v20 = (v18[6] + 16 * v7);
        *v20 = v3;
        v20[1] = v2;
        *(v18[7] + 8 * v7) = v5;

        v24 = v18[2];
        v11 = __OFADD__(v24, 1);
        v25 = v24 + 1;
        if (v11)
        {
          __break(1u);
          return MEMORY[0x282200308](v21, v22, v23);
        }

        v18[2] = v25;
LABEL_18:
        v0[24] = v18;
        v26 = sub_24EDFE94C(&qword_27F2307D8, &qword_27F2307D0);
        v27 = swift_task_alloc();
        v0[25] = v27;
        *v27 = v0;
        v27[1] = sub_24EDF799C;
        v22 = v0[19];
        v21 = (v0 + 9);
        v23 = v26;

        return MEMORY[0x282200308](v21, v22, v23);
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_12;
      }
    }

    v19 = v7;
    sub_24E8B4790();
    v7 = v19;
    if (v1)
    {
      goto LABEL_13;
    }

    goto LABEL_16;
  }

  v15 = v0[13];
  (*(v0[20] + 8))(v0[21], v0[19]);
  *v15 = v4;

  v16 = v0[1];

  return v16();
}

uint64_t sub_24EDF7DAC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24EDF7E24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[20] = a8;
  v8[21] = v13;
  v8[18] = a6;
  v8[19] = a7;
  v8[16] = a4;
  v8[17] = a5;
  v8[15] = a1;
  v8[22] = *(type metadata accessor for Leaderboard(0) - 8);
  v8[23] = swift_task_alloc();
  v8[24] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F255030);
  v10 = swift_task_alloc();
  v8[25] = v10;
  *v10 = v8;
  v10[1] = sub_24EDF7F58;

  return MEMORY[0x28217F228](v8 + 9, v9, v9);
}

uint64_t sub_24EDF7F58()
{
  *(*v1 + 208) = v0;

  if (v0)
  {
    v2 = sub_24EDF8580;
  }

  else
  {
    v2 = sub_24EDF806C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24EDF806C()
{
  v1 = *(v0 + 160);
  v10 = *(v0 + 144);
  v3 = *(v0 + 128);
  v2 = *(v0 + 136);
  v4 = *(v0 + 96);
  v5 = *(v0 + 104);
  __swift_project_boxed_opaque_existential_1((v0 + 72), v4);
  *(v0 + 16) = v3;
  *(v0 + 32) = 0;
  *(v0 + 40) = 0;
  *(v0 + 24) = v2;
  *(v0 + 48) = v10;
  *(v0 + 64) = v1;
  v6 = swift_task_alloc();
  *(v0 + 216) = v6;
  v7 = sub_24E6511BC();
  *v6 = v0;
  v6[1] = sub_24EDF817C;
  v8 = *(v0 + 168);

  return MEMORY[0x28217F4B0](v0 + 112, v0 + 16, v8, &type metadata for LeaderboardsDataIntent, v7, v4, v5);
}

uint64_t sub_24EDF817C()
{
  *(*v1 + 224) = v0;

  if (v0)
  {
    v2 = sub_24EDF85EC;
  }

  else
  {
    v2 = sub_24EDF8290;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

void sub_24EDF8290()
{
  v1 = v0[14];
  v30 = *(v1 + 16);
  if (v30)
  {
    v2 = 0;
    v28 = v0[22];
    v29 = v0[24];
    v27 = v1 + ((*(v28 + 80) + 32) & ~*(v28 + 80));
    v3 = MEMORY[0x277D84F98];
    while (1)
    {
      if (v2 >= *(v1 + 16))
      {
        __break(1u);
LABEL_24:
        __break(1u);
LABEL_25:
        __break(1u);
        return;
      }

      v5 = v0[23];
      v4 = v0[24];
      v6 = *(v28 + 72);
      sub_24EDFE05C(v27 + v6 * v2, v4, type metadata accessor for Leaderboard);
      v8 = *(v29 + 16);
      v7 = *(v29 + 24);
      sub_24EDFE05C(v4, v5, type metadata accessor for Leaderboard);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v10 = sub_24E76D644(v8, v7);
      v12 = v3[2];
      v13 = (v11 & 1) == 0;
      v14 = __OFADD__(v12, v13);
      v15 = v12 + v13;
      if (v14)
      {
        goto LABEL_24;
      }

      v16 = v11;
      if (v3[3] < v15)
      {
        break;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_11;
      }

      v22 = v10;
      sub_24E8B4088();
      v10 = v22;
      v18 = v0[23];
      if (v16)
      {
LABEL_3:
        sub_24EDFE640(v18, v3[7] + v10 * v6, type metadata accessor for Leaderboard);
        goto LABEL_4;
      }

LABEL_12:
      v3[(v10 >> 6) + 8] |= 1 << v10;
      v19 = (v3[6] + 16 * v10);
      *v19 = v8;
      v19[1] = v7;
      sub_24EDFE6BC(v18, v3[7] + v10 * v6, type metadata accessor for Leaderboard);
      v20 = v3[2];
      v14 = __OFADD__(v20, 1);
      v21 = v20 + 1;
      if (v14)
      {
        goto LABEL_25;
      }

      v3[2] = v21;

LABEL_4:
      ++v2;
      sub_24EDFE5E0(v0[24], type metadata accessor for Leaderboard);
      if (v30 == v2)
      {
        goto LABEL_17;
      }
    }

    sub_24E8A4674(v15, isUniquelyReferenced_nonNull_native);
    v10 = sub_24E76D644(v8, v7);
    if ((v16 & 1) != (v17 & 1))
    {

      sub_24F92CF88();
      return;
    }

LABEL_11:
    v18 = v0[23];
    if (v16)
    {
      goto LABEL_3;
    }

    goto LABEL_12;
  }

  v3 = MEMORY[0x277D84F98];
LABEL_17:
  v23 = v0[16];
  v24 = v0[17];
  v25 = v0[15];

  *v25 = v23;
  v25[1] = v24;
  v25[2] = v3;

  __swift_destroy_boxed_opaque_existential_1((v0 + 9));

  v26 = v0[1];

  v26();
}

uint64_t sub_24EDF8580()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24EDF85EC()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 72);

  v1 = *(v0 + 8);

  return v1();
}

void sub_24EDF8660(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_24F92CD78();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        type metadata accessor for ChallengeDefinitionDetail(0);
        v6 = sub_24F92B618();
        *(v6 + 16) = v5;
      }

      v7 = *(type metadata accessor for ChallengeDefinitionDetail(0) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_24EDF8A18(v8, v9, a1, v4);
      *(v6 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_24EDF878C(0, v2, 1, a1);
  }
}

void sub_24EDF878C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v34 = type metadata accessor for ChallengeDefinitionDetail(0);
  MEMORY[0x28223BE20](v34);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v26 - v11;
  MEMORY[0x28223BE20](v13);
  v16 = &v26 - v15;
  v28 = a2;
  if (a3 != a2)
  {
    v17 = *a4;
    v18 = *(v14 + 72);
    v19 = *a4 + v18 * (a3 - 1);
    v20 = -v18;
    v21 = a1 - a3;
    v33 = v17;
    v27 = v18;
    v22 = v17 + v18 * a3;
LABEL_6:
    v31 = v19;
    v32 = a3;
    v29 = v22;
    v30 = v21;
    while (1)
    {
      sub_24EDFE05C(v22, v16, type metadata accessor for ChallengeDefinitionDetail);
      sub_24EDFE05C(v19, v12, type metadata accessor for ChallengeDefinitionDetail);
      if (*(v16 + 2) == *(v12 + 2) && *(v16 + 3) == *(v12 + 3))
      {
        sub_24EDFE5E0(v12, type metadata accessor for ChallengeDefinitionDetail);
        sub_24EDFE5E0(v16, type metadata accessor for ChallengeDefinitionDetail);
LABEL_5:
        a3 = v32 + 1;
        v19 = v31 + v27;
        v21 = v30 - 1;
        v22 = v29 + v27;
        if (v32 + 1 == v28)
        {
          return;
        }

        goto LABEL_6;
      }

      v24 = sub_24F92CE08();
      sub_24EDFE5E0(v12, type metadata accessor for ChallengeDefinitionDetail);
      sub_24EDFE5E0(v16, type metadata accessor for ChallengeDefinitionDetail);
      if ((v24 & 1) == 0)
      {
        goto LABEL_5;
      }

      if (!v33)
      {
        break;
      }

      sub_24EDFE6BC(v22, v9, type metadata accessor for ChallengeDefinitionDetail);
      swift_arrayInitWithTakeFrontToBack();
      sub_24EDFE6BC(v9, v19, type metadata accessor for ChallengeDefinitionDetail);
      v19 += v20;
      v22 += v20;
      if (__CFADD__(v21++, 1))
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }
}

void sub_24EDF8A18(int64_t *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v6 = v4;
  v123 = a1;
  v137 = type metadata accessor for ChallengeDefinitionDetail(0);
  v130 = *(v137 - 8);
  MEMORY[0x28223BE20](v137);
  v126 = &v117 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v136 = &v117 - v11;
  MEMORY[0x28223BE20](v12);
  v14 = &v117 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v117 - v16;
  MEMORY[0x28223BE20](v18);
  v134 = &v117 - v19;
  MEMORY[0x28223BE20](v20);
  v133 = &v117 - v21;
  MEMORY[0x28223BE20](v22);
  v122 = &v117 - v23;
  MEMORY[0x28223BE20](v24);
  v121 = &v117 - v25;
  v26 = *(a3 + 8);
  if (v26 < 1)
  {
    v28 = MEMORY[0x277D84F90];
LABEL_110:
    v5 = *v123;
    if (!*v123)
    {
      goto LABEL_148;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_112:
      v138 = v28;
      v112 = *(v28 + 16);
      if (v112 >= 2)
      {
        while (*a3)
        {
          v113 = v28;
          v28 = *(v28 + 16 * v112);
          v114 = v113;
          v115 = *&v113[16 * v112 + 24];
          sub_24EDF9474(*a3 + *(v130 + 72) * v28, *a3 + *(v130 + 72) * *&v113[16 * v112 + 16], *a3 + *(v130 + 72) * v115, v5);
          if (v6)
          {
            goto LABEL_120;
          }

          if (v115 < v28)
          {
            goto LABEL_135;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v114 = sub_24E86164C(v114);
          }

          if (v112 - 2 >= *(v114 + 2))
          {
            goto LABEL_136;
          }

          v116 = &v114[16 * v112];
          *v116 = v28;
          v116[1] = v115;
          v138 = v114;
          sub_24E8615C0(v112 - 1);
          v28 = v138;
          v112 = *(v138 + 16);
          if (v112 <= 1)
          {
            goto LABEL_120;
          }
        }

        goto LABEL_146;
      }

LABEL_120:

      return;
    }

LABEL_142:
    v28 = sub_24E86164C(v28);
    goto LABEL_112;
  }

  v117 = a4;
  v27 = 0;
  v28 = MEMORY[0x277D84F90];
  v131 = a3;
  v127 = v17;
  while (1)
  {
    v29 = v27;
    v30 = v27 + 1;
    if (v27 + 1 < v26)
    {
      v128 = v26;
      v118 = v28;
      v31 = *a3;
      v32 = *(v130 + 72);
      v33 = v27 + 1;
      v34 = v121;
      sub_24EDFE05C(v31 + v32 * v30, v121, type metadata accessor for ChallengeDefinitionDetail);
      v132 = v32;
      v35 = v31 + v32 * v29;
      v36 = v122;
      sub_24EDFE05C(v35, v122, type metadata accessor for ChallengeDefinitionDetail);
      v37 = *(v34 + 16) == *(v36 + 16) && *(v34 + 24) == *(v36 + 24);
      v119 = v6;
      if (v37)
      {
        LODWORD(v129) = 0;
      }

      else
      {
        LODWORD(v129) = sub_24F92CE08();
      }

      sub_24EDFE5E0(v122, type metadata accessor for ChallengeDefinitionDetail);
      sub_24EDFE5E0(v121, type metadata accessor for ChallengeDefinitionDetail);
      v120 = v29;
      v38 = v29 + 2;
      v39 = v132 * (v29 + 2);
      v40 = v31 + v39;
      v41 = v33;
      v42 = v132 * v33;
      a3 = v31 + v132 * v33;
      do
      {
        v44 = v38;
        v28 = v41;
        v5 = v42;
        v45 = v39;
        v135 = v38;
        if (v38 >= v128)
        {
          break;
        }

        v46 = v14;
        v47 = v133;
        sub_24EDFE05C(v40, v133, type metadata accessor for ChallengeDefinitionDetail);
        v48 = v134;
        sub_24EDFE05C(a3, v134, type metadata accessor for ChallengeDefinitionDetail);
        v49 = *(v47 + 16) == *(v48 + 16) && *(v47 + 24) == *(v48 + 24);
        v43 = v49 ? 0 : sub_24F92CE08();
        v14 = v46;
        v6 = type metadata accessor for ChallengeDefinitionDetail;
        sub_24EDFE5E0(v134, type metadata accessor for ChallengeDefinitionDetail);
        sub_24EDFE5E0(v133, type metadata accessor for ChallengeDefinitionDetail);
        v44 = v135;
        v38 = v135 + 1;
        v40 += v132;
        a3 += v132;
        v41 = v28 + 1;
        v42 = v5 + v132;
        v39 = v45 + v132;
        v17 = v127;
      }

      while (((v129 ^ v43) & 1) == 0);
      if ((v129 & 1) == 0)
      {
        v30 = v44;
LABEL_36:
        v28 = v118;
        v6 = v119;
        a3 = v131;
        v29 = v120;
        goto LABEL_37;
      }

      if (v44 < v120)
      {
        goto LABEL_139;
      }

      if (v120 < v44)
      {
        v50 = v120 * v132;
        v51 = v120;
        do
        {
          if (v51 != v28)
          {
            v53 = *v131;
            if (!*v131)
            {
              goto LABEL_145;
            }

            sub_24EDFE6BC(v53 + v50, v126, type metadata accessor for ChallengeDefinitionDetail);
            if (v50 < v5 || v53 + v50 >= (v53 + v45))
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v50 != v5)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            sub_24EDFE6BC(v126, v53 + v5, type metadata accessor for ChallengeDefinitionDetail);
          }

          ++v51;
          v5 -= v132;
          v45 -= v132;
          v50 += v132;
        }

        while (v51 < v28--);
        v30 = v135;
        goto LABEL_36;
      }

      v30 = v44;
      v28 = v118;
      v6 = v119;
      a3 = v131;
      v29 = v120;
    }

LABEL_37:
    v54 = *(a3 + 8);
    if (v30 < v54)
    {
      if (__OFSUB__(v30, v29))
      {
        goto LABEL_138;
      }

      if (v30 - v29 < v117)
      {
        break;
      }
    }

LABEL_59:
    if (v30 < v29)
    {
      goto LABEL_137;
    }

    v135 = v30;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v28 = sub_24E615ED8(0, *(v28 + 16) + 1, 1, v28);
    }

    v66 = *(v28 + 16);
    v65 = *(v28 + 24);
    v67 = v66 + 1;
    v27 = v135;
    if (v66 >= v65 >> 1)
    {
      v111 = sub_24E615ED8((v65 > 1), v66 + 1, 1, v28);
      v27 = v135;
      v28 = v111;
    }

    *(v28 + 16) = v67;
    v68 = v28 + 16 * v66;
    *(v68 + 32) = v29;
    *(v68 + 40) = v27;
    v5 = *v123;
    if (!*v123)
    {
      goto LABEL_147;
    }

    if (v66)
    {
      while (1)
      {
        a3 = v67 - 1;
        if (v67 >= 4)
        {
          break;
        }

        if (v67 == 3)
        {
          v69 = *(v28 + 32);
          v70 = *(v28 + 40);
          v79 = __OFSUB__(v70, v69);
          v71 = v70 - v69;
          v72 = v79;
LABEL_79:
          if (v72)
          {
            goto LABEL_126;
          }

          v85 = (v28 + 16 * v67);
          v87 = *v85;
          v86 = v85[1];
          v88 = __OFSUB__(v86, v87);
          v89 = v86 - v87;
          v90 = v88;
          if (v88)
          {
            goto LABEL_129;
          }

          v91 = (v28 + 32 + 16 * a3);
          v93 = *v91;
          v92 = v91[1];
          v79 = __OFSUB__(v92, v93);
          v94 = v92 - v93;
          if (v79)
          {
            goto LABEL_132;
          }

          if (__OFADD__(v89, v94))
          {
            goto LABEL_133;
          }

          if (v89 + v94 >= v71)
          {
            if (v71 < v94)
            {
              a3 = v67 - 2;
            }

            goto LABEL_100;
          }

          goto LABEL_93;
        }

        v95 = (v28 + 16 * v67);
        v97 = *v95;
        v96 = v95[1];
        v79 = __OFSUB__(v96, v97);
        v89 = v96 - v97;
        v90 = v79;
LABEL_93:
        if (v90)
        {
          goto LABEL_128;
        }

        v98 = v28 + 16 * a3;
        v100 = *(v98 + 32);
        v99 = *(v98 + 40);
        v79 = __OFSUB__(v99, v100);
        v101 = v99 - v100;
        if (v79)
        {
          goto LABEL_131;
        }

        if (v101 < v89)
        {
          goto LABEL_3;
        }

LABEL_100:
        v106 = a3 - 1;
        if (a3 - 1 >= v67)
        {
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
LABEL_137:
          __break(1u);
LABEL_138:
          __break(1u);
LABEL_139:
          __break(1u);
LABEL_140:
          __break(1u);
          goto LABEL_141;
        }

        if (!*v131)
        {
          goto LABEL_144;
        }

        v107 = v28;
        v108 = v28 + 32;
        v28 = *(v28 + 32 + 16 * v106);
        v109 = *(v108 + 16 * a3 + 8);
        sub_24EDF9474(*v131 + *(v130 + 72) * v28, *v131 + *(v130 + 72) * *(v108 + 16 * a3), *v131 + *(v130 + 72) * v109, v5);
        if (v6)
        {
          goto LABEL_120;
        }

        if (v109 < v28)
        {
          goto LABEL_122;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v107 = sub_24E86164C(v107);
        }

        if (v106 >= *(v107 + 2))
        {
          goto LABEL_123;
        }

        v110 = &v107[16 * v106];
        *(v110 + 4) = v28;
        *(v110 + 5) = v109;
        v138 = v107;
        sub_24E8615C0(a3);
        v28 = v138;
        v67 = *(v138 + 16);
        v27 = v135;
        if (v67 <= 1)
        {
          goto LABEL_3;
        }
      }

      v73 = v28 + 32 + 16 * v67;
      v74 = *(v73 - 64);
      v75 = *(v73 - 56);
      v79 = __OFSUB__(v75, v74);
      v76 = v75 - v74;
      if (v79)
      {
        goto LABEL_124;
      }

      v78 = *(v73 - 48);
      v77 = *(v73 - 40);
      v79 = __OFSUB__(v77, v78);
      v71 = v77 - v78;
      v72 = v79;
      if (v79)
      {
        goto LABEL_125;
      }

      v80 = (v28 + 16 * v67);
      v82 = *v80;
      v81 = v80[1];
      v79 = __OFSUB__(v81, v82);
      v83 = v81 - v82;
      if (v79)
      {
        goto LABEL_127;
      }

      v79 = __OFADD__(v71, v83);
      v84 = v71 + v83;
      if (v79)
      {
        goto LABEL_130;
      }

      if (v84 >= v76)
      {
        v102 = (v28 + 32 + 16 * a3);
        v104 = *v102;
        v103 = v102[1];
        v79 = __OFSUB__(v103, v104);
        v105 = v103 - v104;
        if (v79)
        {
          goto LABEL_134;
        }

        if (v71 < v105)
        {
          a3 = v67 - 2;
        }

        goto LABEL_100;
      }

      goto LABEL_79;
    }

LABEL_3:
    a3 = v131;
    v26 = v131[1];
    if (v27 >= v26)
    {
      goto LABEL_110;
    }
  }

  v55 = v29 + v117;
  if (__OFADD__(v29, v117))
  {
    goto LABEL_140;
  }

  if (v55 >= v54)
  {
    v55 = *(a3 + 8);
  }

  if (v55 < v29)
  {
LABEL_141:
    __break(1u);
    goto LABEL_142;
  }

  if (v30 == v55)
  {
    goto LABEL_59;
  }

  v118 = v28;
  v119 = v6;
  a3 = *a3;
  v56 = *(v130 + 72);
  v57 = a3 + v56 * (v30 - 1);
  v58 = v29;
  v59 = -v56;
  v120 = v58;
  v60 = v58 - v30;
  v124 = v56;
  v125 = v55;
  v5 = a3 + v30 * v56;
LABEL_48:
  v135 = v30;
  v128 = v5;
  v129 = v60;
  v132 = v57;
  while (1)
  {
    sub_24EDFE05C(v5, v17, type metadata accessor for ChallengeDefinitionDetail);
    sub_24EDFE05C(v57, v14, type metadata accessor for ChallengeDefinitionDetail);
    if (*(v17 + 2) == *(v14 + 2) && *(v17 + 3) == *(v14 + 3))
    {
      sub_24EDFE5E0(v14, type metadata accessor for ChallengeDefinitionDetail);
      sub_24EDFE5E0(v17, type metadata accessor for ChallengeDefinitionDetail);
LABEL_47:
      v30 = v135 + 1;
      v57 = v132 + v124;
      v60 = v129 - 1;
      v5 = v128 + v124;
      if (v135 + 1 == v125)
      {
        v30 = v125;
        v28 = v118;
        v6 = v119;
        v29 = v120;
        goto LABEL_59;
      }

      goto LABEL_48;
    }

    v62 = sub_24F92CE08();
    sub_24EDFE5E0(v14, type metadata accessor for ChallengeDefinitionDetail);
    sub_24EDFE5E0(v17, type metadata accessor for ChallengeDefinitionDetail);
    if ((v62 & 1) == 0)
    {
      goto LABEL_47;
    }

    if (!a3)
    {
      break;
    }

    v63 = v136;
    sub_24EDFE6BC(v5, v136, type metadata accessor for ChallengeDefinitionDetail);
    swift_arrayInitWithTakeFrontToBack();
    sub_24EDFE6BC(v63, v57, type metadata accessor for ChallengeDefinitionDetail);
    v57 += v59;
    v5 += v59;
    if (__CFADD__(v60++, 1))
    {
      goto LABEL_47;
    }
  }

  __break(1u);
LABEL_144:
  __break(1u);
LABEL_145:
  __break(1u);
LABEL_146:
  __break(1u);
LABEL_147:
  __break(1u);
LABEL_148:
  __break(1u);
}

void sub_24EDF9474(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v47 = a4;
  v46 = type metadata accessor for ChallengeDefinitionDetail(0);
  MEMORY[0x28223BE20](v46);
  v45 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v39 - v9;
  MEMORY[0x28223BE20](v10);
  v12 = &v39 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v39 - v14;
  v17 = *(v16 + 72);
  if (!v17)
  {
    __break(1u);
LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
    return;
  }

  v43 = a2;
  if (a2 - a1 == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_71;
  }

  v18 = a3 - v43;
  if (a3 - v43 == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_72;
  }

  v19 = (a2 - a1) / v17;
  v50 = a1;
  v49 = v47;
  if (v19 >= v18 / v17)
  {
    v22 = v18 / v17 * v17;
    if (v47 < v43 || v43 + v22 <= v47)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v47 != v43)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v28 = v47 + v22;
    if (v22 >= 1)
    {
      v29 = -v17;
      v30 = v47 + v22;
      v42 = -v17;
      do
      {
        v40 = v28;
        v31 = v43;
        v43 += v29;
        while (1)
        {
          if (v31 <= a1)
          {
            v50 = v31;
            v48 = v40;
            goto LABEL_69;
          }

          v32 = a3;
          v41 = v28;
          v33 = v42;
          v34 = v30 + v42;
          v35 = v44;
          sub_24EDFE05C(v30 + v42, v44, type metadata accessor for ChallengeDefinitionDetail);
          v36 = v45;
          sub_24EDFE05C(v43, v45, type metadata accessor for ChallengeDefinitionDetail);
          v37 = *(v35 + 16) == *(v36 + 16) && *(v35 + 24) == *(v36 + 24);
          v38 = v37 ? 0 : sub_24F92CE08();
          a3 = v32 + v33;
          sub_24EDFE5E0(v45, type metadata accessor for ChallengeDefinitionDetail);
          sub_24EDFE5E0(v44, type metadata accessor for ChallengeDefinitionDetail);
          if (v38)
          {
            break;
          }

          v28 = v30 + v33;
          if (v32 < v30 || a3 >= v30)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v32 != v30)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v30 += v33;
          if (v34 <= v47)
          {
            v43 = v31;
            goto LABEL_68;
          }
        }

        if (v32 < v31 || a3 >= v31)
        {
          swift_arrayInitWithTakeFrontToBack();
          v28 = v41;
        }

        else
        {
          v28 = v41;
          if (v32 != v31)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v29 = v42;
      }

      while (v30 > v47);
    }

LABEL_68:
    v50 = v43;
    v48 = v28;
  }

  else
  {
    v20 = v19 * v17;
    if (v47 < a1 || a1 + v20 <= v47)
    {
      swift_arrayInitWithTakeFrontToBack();
      v21 = v43;
    }

    else
    {
      v21 = v43;
      if (v47 != a1)
      {
        swift_arrayInitWithTakeBackToFront();
      }
    }

    v23 = v47 + v20;
    v48 = v47 + v20;
    if (v20 >= 1 && v21 < a3)
    {
      while (1)
      {
        sub_24EDFE05C(v21, v15, type metadata accessor for ChallengeDefinitionDetail);
        sub_24EDFE05C(v47, v12, type metadata accessor for ChallengeDefinitionDetail);
        if (*(v15 + 2) == *(v12 + 2) && *(v15 + 3) == *(v12 + 3))
        {
          break;
        }

        v26 = sub_24F92CE08();
        sub_24EDFE5E0(v12, type metadata accessor for ChallengeDefinitionDetail);
        sub_24EDFE5E0(v15, type metadata accessor for ChallengeDefinitionDetail);
        if ((v26 & 1) == 0)
        {
          goto LABEL_30;
        }

        if (a1 < v21 || a1 >= v21 + v17)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != v21)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        v21 += v17;
LABEL_38:
        a1 += v17;
        v50 = a1;
        if (v47 >= v23 || v21 >= a3)
        {
          goto LABEL_69;
        }
      }

      sub_24EDFE5E0(v12, type metadata accessor for ChallengeDefinitionDetail);
      sub_24EDFE5E0(v15, type metadata accessor for ChallengeDefinitionDetail);
LABEL_30:
      v27 = v47 + v17;
      if (a1 < v47 || a1 >= v27)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else if (a1 != v47)
      {
        swift_arrayInitWithTakeBackToFront();
      }

      v49 = v27;
      v47 = v27;
      goto LABEL_38;
    }
  }

LABEL_69:
  sub_24F8FB110(&v50, &v49, &v48);
}

uint64_t sub_24EDF9A0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a3;
  v4[6] = a4;
  v4[3] = a1;
  v4[4] = a2;
  return MEMORY[0x2822009F8](sub_24EDF9A30, 0, 0);
}

uint64_t sub_24EDF9A30()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  v4 = *(v0 + 24);
  *(v3 + 16) = v2;
  *(v3 + 24) = v4;
  *(v3 + 40) = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213230);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2307A0);
  v7 = swift_task_alloc();
  *(v0 + 64) = v7;
  *v7 = v0;
  v7[1] = sub_24EDF9B58;

  return MEMORY[0x282200740](v0 + 16, v5, v6, 0, 0, &unk_24F9A23D8, v3, v5);
}

uint64_t sub_24EDF9B58()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_24EDF9C74;
  }

  else
  {

    v2 = sub_24E7F6F18;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24EDF9C74()
{

  if (qword_27F2113B8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 72);
  v2 = sub_24F9220D8();
  __swift_project_value_buffer(v2, qword_27F39E778);
  v3 = v1;
  v4 = sub_24F9220B8();
  v5 = sub_24F92BDB8();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 72);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_24E5DD000, v4, v5, "ChallengeDefinitionsDataIntentImplementation failed to fetch default duration: %@, fallback to empty default", v7, 0xCu);
    sub_24E601704(v8, &qword_27F227B20);
    MEMORY[0x2530542D0](v8, -1, -1);
    MEMORY[0x2530542D0](v7, -1, -1);
  }

  v11 = *(v0 + 72);

  v12 = sub_24E60EE90(MEMORY[0x277D84F90]);
  v13 = *(v0 + 8);

  return v13(v12);
}

uint64_t sub_24EDF9E2C(uint64_t a1, uint64_t a2)
{
  *(v2 + 64) = a1;
  *(v2 + 72) = a2;
  return MEMORY[0x2822009F8](sub_24EDF9E4C, 0, 0);
}

uint64_t sub_24EDF9E4C()
{
  *(v0 + 80) = sub_24F92B7F8();
  *(v0 + 88) = sub_24F92B7E8();
  v2 = sub_24F92B778();

  return MEMORY[0x2822009F8](sub_24EDF9EE4, v2, v1);
}

uint64_t sub_24EDF9EE4()
{

  type metadata accessor for LocalPlayerProvider();
  sub_24F928F28();
  *(v0 + 96) = *(v0 + 40);

  return MEMORY[0x2822009F8](sub_24EDF9F6C, 0, 0);
}

uint64_t sub_24EDF9F6C()
{
  *(v0 + 104) = sub_24F92B7E8();
  v2 = sub_24F92B778();

  return MEMORY[0x2822009F8](sub_24EDF9FF8, v2, v1);
}

uint64_t sub_24EDF9FF8()
{
  v1 = v0[12];

  swift_getKeyPath();
  v0[6] = v1;
  sub_24E69A53C();
  sub_24F91FD88();

  v2 = (v1 + OBJC_IVAR____TtC12GameStoreKit19LocalPlayerProvider__playerID);
  swift_beginAccess();
  v0[14] = *v2;
  v0[15] = v2[1];

  return MEMORY[0x2822009F8](sub_24EDFA0E4, 0, 0);
}

uint64_t sub_24EDFA0E4()
{
  v8 = *(v0 + 112);
  v2 = *(v0 + 64);
  v1 = *(v0 + 72);
  v3 = swift_task_alloc();
  *(v0 + 128) = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v8;
  *(v3 + 40) = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2307C0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2307C8);
  v6 = swift_task_alloc();
  *(v0 + 136) = v6;
  *v6 = v0;
  v6[1] = sub_24EDFA214;

  return MEMORY[0x282200740](v0 + 56, v4, v5, 0, 0, &unk_24F9A2458, v3, v4);
}

uint64_t sub_24EDFA214()
{
  *(*v1 + 144) = v0;

  if (v0)
  {
    v2 = sub_24EDFA354;
  }

  else
  {

    v2 = sub_24EDFA338;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24EDFA354()
{

  if (qword_27F2113B8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 144);
  v2 = sub_24F9220D8();
  __swift_project_value_buffer(v2, qword_27F39E778);
  v3 = v1;
  v4 = sub_24F9220B8();
  v5 = sub_24F92BDB8();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 144);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_24E5DD000, v4, v5, "ChallengesHubDataIntentImplementation: Failed to fetch leaderboards: %@", v7, 0xCu);
    sub_24E601704(v8, &qword_27F227B20);
    MEMORY[0x2530542D0](v8, -1, -1);
    MEMORY[0x2530542D0](v7, -1, -1);
  }

  swift_willThrow();
  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_24EDFA4FC(uint64_t a1, uint64_t a2)
{
  v2[18] = a1;
  v2[19] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2198F8);
  v2[20] = swift_task_alloc();
  v3 = type metadata accessor for ChallengeDefinitionDefaultOptions();
  v2[21] = v3;
  v2[22] = *(v3 - 8);
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();
  type metadata accessor for ChallengeDefinitionDetail(0);
  v2[25] = swift_task_alloc();
  v2[26] = swift_task_alloc();
  v2[27] = *(type metadata accessor for Leaderboard(0) - 8);
  v2[28] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212A00);
  v2[29] = swift_task_alloc();
  v2[30] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21BCB8);
  v2[31] = v4;
  v2[32] = *(v4 - 8);
  v2[33] = swift_task_alloc();
  v2[34] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213980);
  v2[35] = v5;
  v2[36] = *(v5 - 8);
  v2[37] = swift_task_alloc();
  v2[38] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2265C0);
  v2[39] = v6;
  v2[40] = *(v6 - 8);
  v2[41] = swift_task_alloc();
  v2[42] = swift_task_alloc();
  v7 = sub_24F920BA8();
  v2[43] = v7;
  v2[44] = *(v7 - 8);
  v2[45] = swift_task_alloc();
  v2[46] = swift_task_alloc();
  v2[47] = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2265C8) - 8);
  v2[48] = swift_task_alloc();
  v2[49] = swift_task_alloc();
  v8 = sub_24F920BC8();
  v2[50] = v8;
  v2[51] = *(v8 - 8);
  v2[52] = swift_task_alloc();
  v2[53] = swift_task_alloc();
  v2[54] = swift_task_alloc();
  v9 = sub_24F920998();
  v2[55] = v9;
  v2[56] = *(v9 - 8);
  v2[57] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24EDFA9D8, 0, 0);
}

uint64_t sub_24EDFA9D8()
{
  v12 = v0;

  v2 = sub_24F45DED0(v1);

  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = v0[36];
    v5 = sub_24EAE6A3C(*(v2 + 16), 0);
    sub_24EAE8A64(&v11, (v5 + ((*(v4 + 80) + 32) & ~*(v4 + 80))), v3, v2);
    v7 = v6;
    sub_24E6586B4();
    if (v7 == v3)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v5 = MEMORY[0x277D84F90];
LABEL_5:
  v0[58] = v5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2142C0);
  v9 = swift_task_alloc();
  v0[59] = v9;
  *v9 = v0;
  v9[1] = sub_24EDFAB30;

  return MEMORY[0x28217F228](v0 + 7, v8, v8);
}

uint64_t sub_24EDFAB30()
{
  *(*v1 + 480) = v0;

  if (v0)
  {

    v2 = sub_24EDFAED0;
  }

  else
  {
    v2 = sub_24EDFAC4C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24EDFAC4C()
{
  v2 = v0[56];
  v1 = v0[57];
  v3 = v0[55];
  __swift_project_boxed_opaque_existential_1(v0 + 7, v0[10]);
  sub_24F9204F8();
  __swift_destroy_boxed_opaque_existential_1((v0 + 7));
  v4 = v0[5];
  v5 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v4);
  (*(v2 + 104))(v1, *MEMORY[0x277D0D048], v3);
  v6 = swift_task_alloc();
  v0[61] = v6;
  *v6 = v0;
  v6[1] = sub_24EDFAD68;
  v7 = v0[57];
  v8 = v0[58];

  return MEMORY[0x282165140](v8, v7, v4, v5);
}

uint64_t sub_24EDFAD68()
{
  v2 = *v1;
  *(*v1 + 496) = v0;

  (*(v2[56] + 8))(v2[57], v2[55]);
  if (v0)
  {
    v3 = sub_24EDFD60C;
  }

  else
  {
    v3 = sub_24EDFB188;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_24EDFAED0()
{
  v1 = *(v0 + 480);
  if (qword_27F2113B8 != -1)
  {
    swift_once();
  }

  v2 = sub_24F9220D8();
  __swift_project_value_buffer(v2, qword_27F39E778);
  v3 = v1;
  v4 = sub_24F9220B8();
  v5 = sub_24F92BDB8();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v1;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_24E5DD000, v4, v5, "ChallengesHubDataIntentImplementation: Failed to fetch definitions: %@", v6, 0xCu);
    sub_24E601704(v7, &qword_27F227B20);
    MEMORY[0x2530542D0](v7, -1, -1);
    MEMORY[0x2530542D0](v6, -1, -1);
  }

  v12 = sub_24E60F078(MEMORY[0x277D84F90]);
  sub_24E824448(0);

  v10 = *(v0 + 8);

  return v10(v12);
}

void sub_24EDFB188()
{
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  v1 = swift_task_alloc();
  v0[63] = v1;
  *v1 = v0;
  v1[1] = sub_24EDFB244;

  JUMPOUT(0x24F920D28);
}

uint64_t sub_24EDFB244(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 512) = a1;
  *(v3 + 520) = v1;

  if (v1)
  {
    v4 = sub_24EDFD80C;
  }

  else
  {
    v4 = sub_24EDFB384;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_24EDFB384()
{
  v1 = v0[64];
  v2 = sub_24E60C660(MEMORY[0x277D84F90]);
  v3 = *(v1 + 16);
  v0[66] = v3;
  if (v3)
  {
    v75 = 0;
    v4 = 0;
    v5 = v0[51];
    v6 = v0[44];
    v7 = v0[40];
    v78 = v0[47];
    v77 = v0[64] + ((*(v78 + 80) + 32) & ~*(v78 + 80));
    v76 = (v5 + 48);
    v74 = (v5 + 32);
    v73 = (v6 + 88);
    v72 = *MEMORY[0x277D0D1B0];
    v68 = *MEMORY[0x277D0D1B8];
    v70 = v3;
    v71 = (v5 + 8);
    v61 = (v6 + 8);
    v62 = v1;
    v66 = (v7 + 32);
    v67 = (v6 + 96);
    v63 = (v0[32] + 8);
    v64 = (v0[36] + 8);
    v65 = (v7 + 8);
    v8 = v0[65];
    v9 = &qword_27F2265C8;
    while (1)
    {
      if (v4 >= *(v1 + 16))
      {
        __break(1u);
LABEL_42:
        __break(1u);
LABEL_43:
        __break(1u);
        goto LABEL_44;
      }

      v11 = v0[49];
      v10 = v0[50];
      sub_24E60169C(v77 + *(v78 + 72) * v4, v11, &qword_27F2265C8);
      if ((*v76)(v11, 1, v10) != 1)
      {
        break;
      }

      sub_24E601704(v0[49], &qword_27F2265C8);
LABEL_4:
      if (v3 == ++v4)
      {
        goto LABEL_29;
      }
    }

    v12 = v0[46];
    v13 = v0[43];
    (*v74)(v0[54], v0[49], v0[50]);
    sub_24F920B88();
    v14 = (*v73)(v12, v13);
    if (v14 != v72)
    {
      v31 = v14;
      (*v71)(v0[54], v0[50]);
      v3 = v70;
      if (v31 != v68)
      {
        (*v61)(v0[46], v0[43]);
      }

      goto LABEL_27;
    }

    v15 = v0[46];
    v16 = v0[42];
    v17 = v0[39];
    (*v67)(v15, v0[43]);
    (*v66)(v16, v15, v17);
    v18 = sub_24F920F68();
    v9 = v75;
    if (v8)
    {
      v47 = v0[54];
      v48 = v0[50];
      v49 = v0[42];
      v50 = v0[39];

      (*v65)(v49, v50);
      (*v71)(v47, v48);

      __swift_destroy_boxed_opaque_existential_1((v0 + 2));
      if (qword_27F2113B8 == -1)
      {
LABEL_33:
        v51 = sub_24F9220D8();
        __swift_project_value_buffer(v51, qword_27F39E778);
        v52 = v8;
        v53 = sub_24F9220B8();
        v54 = sub_24F92BDB8();

        if (os_log_type_enabled(v53, v54))
        {
          v55 = swift_slowAlloc();
          v56 = swift_slowAlloc();
          *v55 = 138412290;
          v57 = v8;
          v58 = _swift_stdlib_bridgeErrorToNSError();
          *(v55 + 4) = v58;
          *v56 = v58;
          _os_log_impl(&dword_24E5DD000, v53, v54, "ChallengesHubDataIntentImplementation: Failed to fetch definitions: %@", v55, 0xCu);
          sub_24E601704(v56, &qword_27F227B20);
          MEMORY[0x2530542D0](v56, -1, -1);
          MEMORY[0x2530542D0](v55, -1, -1);
        }

        v79 = sub_24E60F078(MEMORY[0x277D84F90]);
        sub_24E824448(v9);

        v59 = v0[1];

        return v59(v79);
      }

LABEL_44:
      swift_once();
      goto LABEL_33;
    }

    v20 = v18;
    v69 = v19;
    sub_24F920B28();
    sub_24F920FA8();
    (*v64)(v0[38], v0[35]);
    v21 = sub_24F920F08();
    v23 = v22;
    (*v63)(v0[34], v0[31]);
    sub_24E824448(v75);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = sub_24E76D644(v21, v23);
    v26 = v2[2];
    v27 = (v25 & 1) == 0;
    v28 = v26 + v27;
    if (__OFADD__(v26, v27))
    {
      goto LABEL_42;
    }

    v8 = v25;
    if (v2[3] < v28)
    {
      sub_24E8A1DAC(v28, isUniquelyReferenced_nonNull_native);
      v29 = sub_24E76D644(v21, v23);
      if ((v8 & 1) != (v30 & 1))
      {

        return sub_24F92CF88();
      }

      v9 = v29;
      if ((v8 & 1) == 0)
      {
        goto LABEL_20;
      }

LABEL_18:

LABEL_22:
      v36 = v2[7];
      v37 = *(v36 + 8 * v9);
      v38 = swift_isUniquelyReferenced_nonNull_native();
      *(v36 + 8 * v9) = v37;
      if ((v38 & 1) == 0)
      {
        v37 = sub_24E615CF4(0, *(v37 + 2) + 1, 1, v37);
        *(v36 + 8 * v9) = v37;
      }

      v40 = *(v37 + 2);
      v39 = *(v37 + 3);
      if (v40 >= v39 >> 1)
      {
        *(v36 + 8 * v9) = sub_24E615CF4((v39 > 1), v40 + 1, 1, v37);
      }

      v41 = v0[54];
      v42 = v0[50];
      (*v65)(v0[42], v0[39]);
      (*v71)(v41, v42);
      v8 = 0;
      v43 = *(v36 + 8 * v9);
      *(v43 + 16) = v40 + 1;
      v44 = v43 + 16 * v40;
      v3 = v70;
      *(v44 + 32) = v20;
      *(v44 + 40) = v69;
      v75 = sub_24E95DAD0;
      v1 = v62;
LABEL_27:
      v9 = &qword_27F2265C8;
      goto LABEL_4;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      if (v25)
      {
        goto LABEL_18;
      }
    }

    else
    {
      sub_24E8B291C();
      if (v8)
      {
        goto LABEL_18;
      }
    }

LABEL_20:
    v2[(v9 >> 6) + 8] |= 1 << v9;
    v32 = (v2[6] + 16 * v9);
    *v32 = v21;
    v32[1] = v23;
    *(v2[7] + 8 * v9) = MEMORY[0x277D84F90];
    v33 = v2[2];
    v34 = __OFADD__(v33, 1);
    v35 = v33 + 1;
    if (v34)
    {
      goto LABEL_43;
    }

    v2[2] = v35;
    goto LABEL_22;
  }

  v75 = 0;
LABEL_29:
  v0[68] = v2;
  v0[67] = v75;
  v45 = type metadata accessor for ASKBagContract();
  v46 = swift_task_alloc();
  v0[69] = v46;
  *v46 = v0;
  v46[1] = sub_24EDFBCC8;

  return MEMORY[0x28217F228](v0 + 17, v45, v45);
}

uint64_t sub_24EDFBCC8()
{
  *(*v1 + 560) = v0;

  if (v0)
  {

    v2 = sub_24EDFDACC;
  }

  else
  {
    v2 = sub_24EDFBDF0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24EDFBDF0()
{
  v0[71] = v0[17];
  v1 = ASKBagContract.challengeAttemptOptions.getter();
  v0[72] = sub_24EF5C370(v1);
  v0[73] = v2;
  v3 = swift_task_alloc();
  v0[74] = v3;
  *v3 = v0;
  v3[1] = sub_24EDFBEA0;
  v4 = v0[68];
  v5 = v0[18];

  return sub_24EDF9E2C(v4, v5);
}

uint64_t sub_24EDFBEA0(uint64_t a1)
{
  v3 = *v2;
  v3[75] = a1;
  v3[76] = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_24EDFC248, 0, 0);
  }

  else
  {

    v4 = swift_task_alloc();
    v3[77] = v4;
    *v4 = v3;
    v4[1] = sub_24EDFC074;
    v5 = v3[73];
    v6 = v3[64];
    v7 = v3[18];
    v8 = v3[72];

    return sub_24EDF9A0C(v8, v5, v6, v7);
  }
}

uint64_t sub_24EDFC074(uint64_t a1)
{
  v3 = *v2;
  v3[78] = a1;
  v3[79] = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_24EDFC670, 0, 0);
  }

  else
  {
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215720);
    v5 = swift_task_alloc();
    v3[80] = v5;
    *v5 = v3;
    v5[1] = sub_24EDFC514;

    return MEMORY[0x28217F228](v3 + 12, v4, v4);
  }
}

uint64_t sub_24EDFC248()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 2));
  v1 = v0[76];
  v2 = v0[67];
  if (qword_27F2113B8 != -1)
  {
    swift_once();
  }

  v3 = sub_24F9220D8();
  __swift_project_value_buffer(v3, qword_27F39E778);
  v4 = v1;
  v5 = sub_24F9220B8();
  v6 = sub_24F92BDB8();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v1;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_24E5DD000, v5, v6, "ChallengesHubDataIntentImplementation: Failed to fetch definitions: %@", v7, 0xCu);
    sub_24E601704(v8, &qword_27F227B20);
    MEMORY[0x2530542D0](v8, -1, -1);
    MEMORY[0x2530542D0](v7, -1, -1);
  }

  v13 = sub_24E60F078(MEMORY[0x277D84F90]);
  sub_24E824448(v2);

  v11 = v0[1];

  return v11(v13);
}

uint64_t sub_24EDFC514()
{
  *(*v1 + 648) = v0;

  if (v0)
  {

    v2 = sub_24EDFDD90;
  }

  else
  {
    v2 = sub_24EDFC93C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24EDFC670()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 2));
  v1 = v0[79];
  v2 = v0[67];
  if (qword_27F2113B8 != -1)
  {
    swift_once();
  }

  v3 = sub_24F9220D8();
  __swift_project_value_buffer(v3, qword_27F39E778);
  v4 = v1;
  v5 = sub_24F9220B8();
  v6 = sub_24F92BDB8();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v1;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_24E5DD000, v5, v6, "ChallengesHubDataIntentImplementation: Failed to fetch definitions: %@", v7, 0xCu);
    sub_24E601704(v8, &qword_27F227B20);
    MEMORY[0x2530542D0](v8, -1, -1);
    MEMORY[0x2530542D0](v7, -1, -1);
  }

  v13 = sub_24E60F078(MEMORY[0x277D84F90]);
  sub_24E824448(v2);

  v11 = v0[1];

  return v11(v13);
}

uint64_t sub_24EDFC93C()
{
  v116 = v0;
  v1 = v0[66];
  v2 = v0[15];
  v3 = v0[16];
  __swift_project_boxed_opaque_existential_1(v0 + 12, v2);
  LOBYTE(v115[0]) = 34;
  v107 = (*(v3 + 8))(v115, v2, v3);
  __swift_destroy_boxed_opaque_existential_1((v0 + 12));
  if (!v1)
  {
    v11 = MEMORY[0x277D84F98];
LABEL_35:
    v112 = v11;
    v70 = v0[67];

    __swift_destroy_boxed_opaque_existential_1((v0 + 2));
    v71 = v70;
    goto LABEL_40;
  }

  v4 = 0;
  v113 = v0[78];
  v96 = v0[75];
  v5 = v0[51];
  v6 = v0[47];
  v7 = v0[44];
  v8 = v0[40];
  v85 = v0[27];
  v95 = v0[22];
  v87 = v0[21];
  v9 = v0[64] + ((*(v6 + 80) + 32) & ~*(v6 + 80));
  v10 = (v5 + 48);
  v104 = (v5 + 32);
  v103 = (v7 + 88);
  v102 = *MEMORY[0x277D0D1B0];
  v92 = *MEMORY[0x277D0D1B8];
  v86 = (v7 + 8);
  v91 = (v7 + 96);
  v93 = (v0[36] + 8);
  v89 = (v0[32] + 8);
  v90 = (v8 + 32);
  v94 = (v8 + 8);
  v98 = (v5 + 16);
  v106 = (v5 + 8);
  v11 = MEMORY[0x277D84F98];
  v97 = v0[81];
  v100 = v9;
  v101 = v6;
  v99 = (v5 + 48);
  while (1)
  {
    if (v4 >= *(v0[64] + 16))
    {
      __break(1u);
      goto LABEL_44;
    }

    v12 = v0[50];
    v1 = v0[48];
    sub_24E60169C(v9 + *(v6 + 72) * v4, v1, &qword_27F2265C8);
    if ((*v10)(v1, 1, v12) != 1)
    {
      break;
    }

    sub_24E601704(v0[48], &qword_27F2265C8);
LABEL_4:
    if (++v4 == v0[66])
    {
      goto LABEL_35;
    }
  }

  v109 = v4;
  v111 = v11;
  v13 = v0[45];
  v14 = v0[43];
  v15 = v0[30];
  (*v104)(v0[53], v0[48], v0[50]);
  v16 = type metadata accessor for ChallengeDefinitionDetail.Trackable(0);
  v17 = *(*(v16 - 8) + 56);
  v17(v15, 1, 1, v16);
  sub_24F920B88();
  v18 = (*v103)(v13, v14);
  if (v18 != v102)
  {
    if (v18 != v92)
    {
      (*v86)(v0[45], v0[43]);
    }

LABEL_20:
    v39 = v0[29];
    v38 = v0[30];
    (*v98)(v0[52], v0[53], v0[50]);
    sub_24E60169C(v38, v39, &qword_27F212A00);
    v40 = sub_24F920B18();
    if (*(v113 + 16))
    {
      v42 = sub_24E76D644(v40, v41);
      v44 = v43;

      if (v44)
      {
        v45 = v0[24];
        sub_24EDFE05C(*(v113 + 56) + *(v95 + 72) * v42, v45, type metadata accessor for ChallengeDefinitionDefaultOptions);
        v46 = *v45;

        sub_24EDFE5E0(v45, type metadata accessor for ChallengeDefinitionDefaultOptions);
        goto LABEL_25;
      }
    }

    else
    {
    }

    v46 = 0;
LABEL_25:
    v47 = v0[73];
    v48 = v0[72];
    if (sub_24F920A98())
    {
      v49 = v48;
    }

    else
    {
      v49 = v47;
    }

    v50 = sub_24F920B18();
    if (*(v113 + 16))
    {
      v52 = sub_24E76D644(v50, v51);
      v54 = v53;

      if (v54)
      {
        v55 = v0[23];
        v56 = v0[20];
        sub_24EDFE05C(*(v113 + 56) + *(v95 + 72) * v52, v55, type metadata accessor for ChallengeDefinitionDefaultOptions);
        v57 = *(v87 + 20);
        v58 = sub_24F920A88();
        v59 = *(v58 - 8);
        (*(v59 + 16))(v56, v55 + v57, v58);
        sub_24EDFE5E0(v55, type metadata accessor for ChallengeDefinitionDefaultOptions);
        (*(v59 + 56))(v56, 0, 1, v58);
LABEL_33:
        v62 = v0[53];
        v63 = v0[50];
        v64 = v0[30];
        v65 = v0[25];
        v66 = v0[26];
        sub_24EF52FB0(v0[52], v0[29], v107 & 1, v46, v49, v0[20], v66);
        v1 = sub_24F920B18();
        v68 = v67;
        sub_24EDFE05C(v66, v65, type metadata accessor for ChallengeDefinitionDetail);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v115[0] = v111;
        sub_24E820FF0(v65, v1, v68, isUniquelyReferenced_nonNull_native);

        sub_24EDFE5E0(v66, type metadata accessor for ChallengeDefinitionDetail);
        sub_24E601704(v64, &qword_27F212A00);
        (*v106)(v62, v63);
        v11 = v115[0];
        v4 = v109;
        v9 = v100;
        v6 = v101;
        v10 = v99;
        goto LABEL_4;
      }
    }

    else
    {
    }

    v60 = v0[20];
    v61 = sub_24F920A88();
    (*(*(v61 - 8) + 56))(v60, 1, 1, v61);
    goto LABEL_33;
  }

  v88 = v17;
  v19 = v0[45];
  v20 = v0[41];
  v21 = v0[39];
  (*v91)(v19, v0[43]);
  (*v90)(v20, v19, v21);
  sub_24F920B28();
  v4 = v97;
  sub_24F920FA8();
  if (!v97)
  {
    (*v93)(v0[37], v0[35]);
    v22 = sub_24F920F08();
    v24 = v23;
    (*v89)(v0[33], v0[31]);
    if (*(v96 + 16))
    {
      v25 = sub_24E76D644(v22, v24);
      v27 = v26;

      if ((v27 & 1) == 0)
      {
LABEL_18:
        (*v94)(v0[41], v0[39]);
        goto LABEL_19;
      }

      v28 = *(*(v96 + 56) + 8 * v25);

      v29 = sub_24F920F68();
      if (*(v28 + 16))
      {
        v31 = sub_24E76D644(v29, v30);
        v33 = v32;

        if (v33)
        {
          v34 = v0[41];
          v35 = v0[39];
          v36 = v0[30];
          v37 = v0[28];
          sub_24EDFE05C(*(v28 + 56) + *(v85 + 72) * v31, v37, type metadata accessor for Leaderboard);
          (*v94)(v34, v35);
          sub_24E601704(v36, &qword_27F212A00);

          sub_24EDFE6BC(v37, v36, type metadata accessor for Leaderboard);
          v88(v36, 0, 1, v16);
LABEL_19:
          v97 = 0;
          goto LABEL_20;
        }
      }

      else
      {
      }
    }

    goto LABEL_18;
  }

  v114 = v0[53];
  v72 = v0[41];
  v105 = v0[39];
  v73 = v0[37];
  v74 = v0[35];
  v108 = v0[30];
  v110 = v0[50];

  (*v93)(v73, v74);
  (*v94)(v72, v105);
  sub_24E601704(v108, &qword_27F212A00);
  (*v106)(v114, v110);

  __swift_destroy_boxed_opaque_existential_1((v0 + 2));
  v1 = v0[67];
  if (qword_27F2113B8 == -1)
  {
    goto LABEL_37;
  }

LABEL_44:
  swift_once();
LABEL_37:
  v75 = sub_24F9220D8();
  __swift_project_value_buffer(v75, qword_27F39E778);
  v76 = v4;
  v77 = sub_24F9220B8();
  v78 = sub_24F92BDB8();

  if (os_log_type_enabled(v77, v78))
  {
    v79 = swift_slowAlloc();
    v80 = swift_slowAlloc();
    *v79 = 138412290;
    v81 = v4;
    v82 = _swift_stdlib_bridgeErrorToNSError();
    *(v79 + 4) = v82;
    *v80 = v82;
    _os_log_impl(&dword_24E5DD000, v77, v78, "ChallengesHubDataIntentImplementation: Failed to fetch definitions: %@", v79, 0xCu);
    sub_24E601704(v80, &qword_27F227B20);
    MEMORY[0x2530542D0](v80, -1, -1);
    MEMORY[0x2530542D0](v79, -1, -1);
  }

  v112 = sub_24E60F078(MEMORY[0x277D84F90]);
  v71 = v1;
LABEL_40:
  sub_24E824448(v71);

  v83 = v0[1];

  return v83(v112);
}

void sub_24EDFD60C()
{
  if (qword_27F2113B8 != -1)
  {
    swift_once();
  }

  v1 = v0[62];
  v2 = sub_24F9220D8();
  __swift_project_value_buffer(v2, qword_27F39E778);
  v3 = v1;
  v4 = sub_24F9220B8();
  v5 = sub_24F92BDB8();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[62];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_24E5DD000, v4, v5, "ChallengeDefinitionFetchHelper.fetchChallengeDefinitions failed to refresh definitions: %@, skip refreshing", v8, 0xCu);
    sub_24E601704(v9, &qword_27F227B20);
    MEMORY[0x2530542D0](v9, -1, -1);
    MEMORY[0x2530542D0](v8, -1, -1);
  }

  else
  {
  }

  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  v12 = swift_task_alloc();
  v0[63] = v12;
  *v12 = v0;
  v12[1] = sub_24EDFB244;

  JUMPOUT(0x24F920D28);
}

uint64_t sub_24EDFD80C()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  v1 = *(v0 + 520);
  if (qword_27F2113B8 != -1)
  {
    swift_once();
  }

  v2 = sub_24F9220D8();
  __swift_project_value_buffer(v2, qword_27F39E778);
  v3 = v1;
  v4 = sub_24F9220B8();
  v5 = sub_24F92BDB8();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v1;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_24E5DD000, v4, v5, "ChallengesHubDataIntentImplementation: Failed to fetch definitions: %@", v6, 0xCu);
    sub_24E601704(v7, &qword_27F227B20);
    MEMORY[0x2530542D0](v7, -1, -1);
    MEMORY[0x2530542D0](v6, -1, -1);
  }

  v12 = sub_24E60F078(MEMORY[0x277D84F90]);
  sub_24E824448(0);

  v10 = *(v0 + 8);

  return v10(v12);
}

uint64_t sub_24EDFDACC()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 2));
  v1 = v0[70];
  v2 = v0[67];
  if (qword_27F2113B8 != -1)
  {
    swift_once();
  }

  v3 = sub_24F9220D8();
  __swift_project_value_buffer(v3, qword_27F39E778);
  v4 = v1;
  v5 = sub_24F9220B8();
  v6 = sub_24F92BDB8();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v1;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_24E5DD000, v5, v6, "ChallengesHubDataIntentImplementation: Failed to fetch definitions: %@", v7, 0xCu);
    sub_24E601704(v8, &qword_27F227B20);
    MEMORY[0x2530542D0](v8, -1, -1);
    MEMORY[0x2530542D0](v7, -1, -1);
  }

  v13 = sub_24E60F078(MEMORY[0x277D84F90]);
  sub_24E824448(v2);

  v11 = v0[1];

  return v11(v13);
}

uint64_t sub_24EDFDD90()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 2));
  v1 = v0[81];
  v2 = v0[67];
  if (qword_27F2113B8 != -1)
  {
    swift_once();
  }

  v3 = sub_24F9220D8();
  __swift_project_value_buffer(v3, qword_27F39E778);
  v4 = v1;
  v5 = sub_24F9220B8();
  v6 = sub_24F92BDB8();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v1;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_24E5DD000, v5, v6, "ChallengesHubDataIntentImplementation: Failed to fetch definitions: %@", v7, 0xCu);
    sub_24E601704(v8, &qword_27F227B20);
    MEMORY[0x2530542D0](v8, -1, -1);
    MEMORY[0x2530542D0](v7, -1, -1);
  }

  v13 = sub_24E60F078(MEMORY[0x277D84F90]);
  sub_24E824448(v2);

  v11 = v0[1];

  return v11(v13);
}

uint64_t sub_24EDFE05C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24EDFE0C4(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v9 = v2[4];
  v8 = v2[5];
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_24E6541E4;

  return sub_24EDF5F00(a1, a2, v6, v7, v9, v8);
}

uint64_t sub_24EDFE18C()
{
  v1 = sub_24F920BC8();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_24EDFE288(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_24F920BC8() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v1 + 16);
  v10 = *(v1 + 24);
  v11 = (v1 + v7);
  v12 = *v11;
  v13 = v11[1];
  v14 = *(v1 + v8);
  v15 = swift_task_alloc();
  *(v3 + 16) = v15;
  *v15 = v3;
  v15[1] = sub_24E6541E4;

  return sub_24EDF6D90(a1, v9, v10, v1 + v6, v12, v13, v14);
}

uint64_t sub_24EDFE3D4(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v9 = v2[4];
  v8 = v2[5];
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_24E6541E4;

  return sub_24EDF743C(a1, a2, v6, v7, v9, v8);
}

uint64_t sub_24EDFE49C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_24EDFE4F4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_24E614970;

  return sub_24EDF7E24(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_24EDFE5E0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24EDFE640(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

uint64_t sub_24EDFE6BC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24EDFE724(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2[5];
  v11 = v2[6];
  v10 = v2[7];
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_24E6541E4;

  return sub_24EDF4DA0(a1, a2, v6, v7, v8, v9, v11, v10);
}

uint64_t sub_24EDFE800()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_24EDFE858(uint64_t a1)
{
  v4 = v1[3];
  v12 = v1[2];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = v1[7];
  v9 = v1[8];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_24E6541E4;

  return sub_24EDF59D8(a1, v12, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_24EDFE94C(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t Brick.makeMSOPersonalizedModel(with:)(uint64_t *a1)
{
  v2 = v1;
  v96 = *v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  MEMORY[0x28223BE20](v4 - 8);
  v97 = &v79 - v5;
  v6 = sub_24F91F6B8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v79 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_24F928AD8();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v79 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = a1[1];
  if (!v16)
  {
    return 0;
  }

  v89 = v2;
  v80 = v9;
  v81 = v7;
  v82 = v6;
  v95 = v11;
  v17 = *a1;
  v91 = v10;
  v19 = a1[2];
  v18 = a1[3];
  v112 = 0;
  memset(v111, 0, sizeof(v111));
  v20 = OBJC_IVAR____TtC12GameStoreKit15MSOProviderData_url;
  v21 = &v79 - v15;
  v22 = sub_24F91F4A8();
  v23 = *(v22 - 8);
  (*(v23 + 16))(v21, v18 + v20, v22);
  (*(v23 + 56))(v21, 0, 1, v22);
  v110[3] = &type metadata for MSOContext;
  v24 = swift_allocObject();
  v110[0] = v24;
  v24[2] = v17;
  v24[3] = v16;
  v24[4] = v19;
  v24[5] = v18;
  v93 = v17;
  v25 = v17;
  v26 = v95;
  sub_24EBDFD34(v25, v16);
  v94 = v16;

  v92 = v19;
  v27 = v91;

  v98 = v18;

  sub_24F928A98();
  v28 = sub_24F929D18();
  v30 = v29;
  type metadata accessor for FlowAction();
  v31 = swift_allocObject();
  *(v31 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_pageDataPageRenderMetrics) = 0;
  v32 = v31 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_pageData;
  *v32 = 0u;
  *(v32 + 16) = 0u;
  *(v32 + 32) = 0;
  v33 = (v31 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_appStateController);
  *v33 = 0;
  v33[1] = 0;
  *(v31 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_page) = 21;
  v90 = v21;
  sub_24E60169C(v21, v31 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_pageUrl, &qword_27F228530);
  v34 = (v31 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_referrerUrl);
  *v34 = 0;
  v34[1] = 0;
  v35 = v31 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_referrerData;
  *v35 = xmmword_24F9406F0;
  *(v35 + 24) = 0;
  *(v35 + 32) = 0;
  *(v35 + 16) = 0;
  *(v35 + 40) = 0;
  *(v31 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_presentationContext) = 0;
  *(v31 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_animationBehavior) = 0;
  *(v31 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_origin) = 0;
  v36 = (v31 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_presentation);
  *v36 = v28;
  v36[1] = v30;
  sub_24E60169C(v111, v109, &qword_27F235830);
  v37 = *(v26 + 16);
  v88 = v13;
  v37(v31 + OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics, v13, v27);
  v38 = OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics;
  v39 = sub_24F929608();
  (*(*(v39 - 8) + 56))(v31 + v38, 1, 1, v39);
  v40 = (v31 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender);
  *v40 = 0u;
  v40[1] = 0u;
  v41 = v31 + OBJC_IVAR____TtC12GameStoreKit6Action_id;
  sub_24E60169C(v109, &v106, &qword_27F235830);
  if (*(&v107 + 1))
  {
    v42 = v107;
    *v41 = v106;
    *(v41 + 16) = v42;
    *(v41 + 32) = v108;
    v43 = v98;
  }

  else
  {
    v45 = v80;
    sub_24F91F6A8();
    v46 = sub_24F91F668();
    v48 = v47;
    (*(v81 + 8))(v45, v82);
    v105[0] = v46;
    v105[1] = v48;
    v43 = v98;
    v26 = v95;
    sub_24F92C7F8();
    sub_24E601704(&v106, &qword_27F235830);
  }

  v49 = v89;
  sub_24E601704(v109, &qword_27F235830);
  *(v31 + 16) = 0u;
  *(v31 + 32) = 0u;

  FlowAction.setPageData(_:)(v110);

  (*(v26 + 8))(v88, v27);
  sub_24E601704(v90, &qword_27F228530);
  sub_24E601704(v111, &qword_27F235830);
  sub_24E601704(v110, &qword_27F2129B0);
  memset(v105, 0, 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F223440);
  v50 = swift_allocObject();
  *(v50 + 16) = xmmword_24F941C80;
  *(v50 + 32) = *(v43 + OBJC_IVAR____TtC12GameStoreKit15MSOProviderData_artwork);
  v51 = v49[4];
  v52 = v49[5];
  v53 = v49[7];
  v90 = v49[6];
  v91 = v51;
  LODWORD(v95) = *(v49 + OBJC_IVAR____TtC12GameStoreKit5Brick_personalizationStyle);
  v104[3] = v96;
  v104[4] = sub_24EDFF4B8();
  v104[0] = v49;
  v54 = v97;
  sub_24E60169C(v49 + OBJC_IVAR____TtC12GameStoreKit5Brick_impressionMetrics, v97, &qword_27F213E68);
  v55 = qword_27F2110F8;
  v56 = v53;

  if (v55 != -1)
  {
    swift_once();
  }

  LODWORD(v89) = dword_27F23E728;
  v87 = BYTE2(dword_27F23E728);
  LODWORD(v88) = BYTE1(dword_27F23E728);
  v85 = byte_27F23E72C;
  v86 = HIBYTE(dword_27F23E728);
  v83 = byte_27F23E72E;
  v84 = byte_27F23E72D;
  v44 = swift_allocObject();
  v57 = v44 + OBJC_IVAR____TtC12GameStoreKit5Brick_originalModel;
  *v57 = 0u;
  *(v57 + 16) = 0u;
  *(v57 + 32) = 0;
  v58 = v44 + OBJC_IVAR____TtC12GameStoreKit5Brick_id;
  sub_24E60169C(v105, &v101, &qword_27F235830);
  if (*(&v102 + 1))
  {
    v59 = v102;
    *v58 = v101;
    *(v58 + 16) = v59;
    *(v58 + 32) = v103;
  }

  else
  {
    v96 = v50;
    v60 = v52;
    v61 = v56;
    v62 = v80;
    sub_24F91F6A8();
    v63 = sub_24F91F668();
    v65 = v64;
    v66 = v62;
    v56 = v61;
    v52 = v60;
    v50 = v96;
    (*(v81 + 8))(v66, v82);
    v99 = v63;
    v100 = v65;
    v54 = v97;
    sub_24F92C7F8();
    sub_24E601704(&v101, &qword_27F235830);
  }

  sub_24EBDFDB8(v93, v94);
  sub_24E601704(v105, &qword_27F235830);
  sub_24E65E0D4(v54, v44 + OBJC_IVAR____TtC12GameStoreKit5Brick_impressionMetrics);
  *(v44 + 16) = v50;
  *(v44 + 24) = 2;
  v67 = v90;
  *(v44 + 32) = v91;
  *(v44 + 40) = v52;
  *(v44 + 48) = v67;
  *(v44 + 56) = v56;
  *(v44 + 64) = 0;
  *(v44 + 72) = 0;
  v68 = OBJC_IVAR____TtC12GameStoreKit5Brick_caption;
  v69 = sub_24F91F008();
  v70 = *(*(v69 - 8) + 56);
  v70(v44 + v68, 1, 1, v69);
  v70(v44 + OBJC_IVAR____TtC12GameStoreKit5Brick_title, 1, 1, v69);
  v70(v44 + OBJC_IVAR____TtC12GameStoreKit5Brick_subtitle, 1, 1, v69);
  *(v44 + OBJC_IVAR____TtC12GameStoreKit5Brick_collectionIcons) = 0;
  v71 = (v44 + OBJC_IVAR____TtC12GameStoreKit5Brick_editorialDisplayOptions);
  *v71 = v89;
  v72 = v87;
  v71[1] = v88;
  v71[2] = v72;
  v73 = v85;
  v71[3] = v86;
  v71[4] = v73;
  v74 = v83;
  v71[5] = v84;
  v71[6] = v74;
  *(v44 + OBJC_IVAR____TtC12GameStoreKit5Brick_clickAction) = v31;
  *(v44 + OBJC_IVAR____TtC12GameStoreKit5Brick_personalizationStyle) = v95;
  swift_beginAccess();
  sub_24E951B7C(v104, v57);
  swift_endAccess();
  v75 = v44 + OBJC_IVAR____TtC12GameStoreKit5Brick_shelfBackground;
  *(v75 + 32) = 0x8000;
  *v75 = 0u;
  *(v75 + 16) = 0u;
  *(v44 + OBJC_IVAR____TtC12GameStoreKit5Brick_flowPreviewActionsConfiguration) = 0;
  v76 = v44 + OBJC_IVAR____TtC12GameStoreKit5Brick_artworkSafeArea;
  *v76 = 0;
  *(v76 + 8) = 0;
  *(v76 + 16) = 2;
  *(v76 + 24) = 0u;
  *(v76 + 40) = 0u;
  *(v76 + 56) = 0;
  v77 = v44 + OBJC_IVAR____TtC12GameStoreKit5Brick_textSafeArea;
  *v77 = 0;
  *(v77 + 8) = 0;
  *(v77 + 16) = 2;
  *(v77 + 24) = 0u;
  *(v77 + 40) = 0u;
  *(v77 + 56) = 0;
  *(v44 + OBJC_IVAR____TtC12GameStoreKit5Brick_backgroundColor) = 0;
  *(v44 + OBJC_IVAR____TtC12GameStoreKit5Brick_placementStyle) = 0;
  return v44;
}

uint64_t sub_24EDFF470()
{

  return swift_deallocObject();
}

unint64_t sub_24EDFF4B8()
{
  result = qword_27F230808;
  if (!qword_27F230808)
  {
    type metadata accessor for Brick();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F230808);
  }

  return result;
}

uint64_t type metadata accessor for AchievementsPageIntent()
{
  result = qword_27F230828;
  if (!qword_27F230828)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t AchievementsPageIntent.jsRepresentation(in:)@<X0>(unint64_t *a1@<X8>)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F88);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F93A400;
  *(inited + 32) = 0x726579616C70;
  *(inited + 40) = 0xE600000000000000;
  *(inited + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23E1F0);
  *(inited + 80) = sub_24E7EDBB4();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 48));
  sub_24E60169C(v2, boxed_opaque_existential_1, &unk_27F23E1F0);
  *(inited + 88) = 0x756F72676B636162;
  *(inited + 96) = 0xEA0000000000646ELL;
  v6 = *(type metadata accessor for AchievementsPageIntent() + 20);
  *(inited + 128) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21D8F8);
  *(inited + 136) = sub_24E7D17FC();
  v7 = __swift_allocate_boxed_opaque_existential_1((inited + 104));
  sub_24E60169C(v2 + v6, v7, &qword_27F21D8F8);
  v8 = sub_24E607E40(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212FB0);
  swift_arrayDestroy();
  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F20);
  result = sub_24E6060B8();
  a1[4] = result;
  *a1 = v8;
  return result;
}

uint64_t sub_24EDFF790()
{
  if (*v0)
  {
    return 0x756F72676B636162;
  }

  else
  {
    return 0x726579616C70;
  }
}

uint64_t sub_24EDFF7CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x726579616C70 && a2 == 0xE600000000000000;
  if (v6 || (sub_24F92CE08() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x756F72676B636162 && a2 == 0xEA0000000000646ELL)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_24F92CE08();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_24EDFF8AC(uint64_t a1)
{
  v2 = sub_24EE000B0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24EDFF8E8(uint64_t a1)
{
  v2 = sub_24EE000B0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AchievementsPageIntent.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F230810);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24EE000B0();
  sub_24F92D128();
  v8[15] = 0;
  type metadata accessor for Player(0);
  sub_24EE00104(&qword_27F213E28, type metadata accessor for Player);
  sub_24F92CCF8();
  if (!v1)
  {
    type metadata accessor for AchievementsPageIntent();
    v8[14] = 1;
    type metadata accessor for Page.Background(0);
    sub_24EE00104(&qword_27F21D920, type metadata accessor for Page.Background);
    sub_24F92CCF8();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t AchievementsPageIntent.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21D8F8);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v19 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23E1F0);
  MEMORY[0x28223BE20](v7 - 8);
  v23 = &v19 - v8;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F230820);
  v22 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v10 = &v19 - v9;
  v11 = type metadata accessor for AchievementsPageIntent();
  MEMORY[0x28223BE20](v11);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24EE000B0();
  sub_24F92D108();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v20 = v11;
  v14 = v13;
  v15 = v22;
  type metadata accessor for Player(0);
  v26 = 0;
  sub_24EE00104(&qword_27F213E38, type metadata accessor for Player);
  v16 = v23;
  v17 = v24;
  sub_24F92CC18();
  sub_24E6009C8(v16, v14, &unk_27F23E1F0);
  type metadata accessor for Page.Background(0);
  v25 = 1;
  sub_24EE00104(&qword_27F21D930, type metadata accessor for Page.Background);
  sub_24F92CC18();
  (*(v15 + 8))(v10, v17);
  sub_24E6009C8(v6, v14 + *(v20 + 20), &qword_27F21D8F8);
  sub_24EE0014C(v14, v21);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_24EE001B0(v14);
}

unint64_t sub_24EDFFF14@<X0>(uint64_t a1@<X1>, unint64_t *a2@<X8>)
{
  v4 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F88);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F93A400;
  *(inited + 32) = 0x726579616C70;
  *(inited + 40) = 0xE600000000000000;
  *(inited + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23E1F0);
  *(inited + 80) = sub_24E7EDBB4();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 48));
  sub_24E60169C(v4, boxed_opaque_existential_1, &unk_27F23E1F0);
  *(inited + 88) = 0x756F72676B636162;
  *(inited + 96) = 0xEA0000000000646ELL;
  v8 = *(a1 + 20);
  *(inited + 128) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21D8F8);
  *(inited + 136) = sub_24E7D17FC();
  v9 = __swift_allocate_boxed_opaque_existential_1((inited + 104));
  sub_24E60169C(v4 + v8, v9, &qword_27F21D8F8);
  v10 = sub_24E607E40(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212FB0);
  swift_arrayDestroy();
  a2[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F20);
  result = sub_24E6060B8();
  a2[4] = result;
  *a2 = v10;
  return result;
}

unint64_t sub_24EE000B0()
{
  result = qword_27F230818;
  if (!qword_27F230818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F230818);
  }

  return result;
}

uint64_t sub_24EE00104(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24EE0014C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AchievementsPageIntent();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24EE001B0(uint64_t a1)
{
  v2 = type metadata accessor for AchievementsPageIntent();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24EE00220(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23E1F0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21D8F8);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_24EE0033C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23E1F0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21D8F8);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

void sub_24EE00450()
{
  sub_24EE0050C(319, &qword_27F214988, type metadata accessor for Player);
  if (v0 <= 0x3F)
  {
    sub_24EE0050C(319, &qword_27F21D948, type metadata accessor for Page.Background);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_24EE0050C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_24F92C4A8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_24EE00574()
{
  result = qword_27F230838;
  if (!qword_27F230838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F230838);
  }

  return result;
}

unint64_t sub_24EE005CC()
{
  result = qword_27F230840;
  if (!qword_27F230840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F230840);
  }

  return result;
}

unint64_t sub_24EE00624()
{
  result = qword_27F230848;
  if (!qword_27F230848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F230848);
  }

  return result;
}

uint64_t TrailersLockup.init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v40 = *v3;
  v6 = sub_24F9285B8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v40 - v11;
  v46 = sub_24F928388();
  v44 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v14 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v40 - v16;
  sub_24F928398();
  v43 = v7;
  v18 = *(v7 + 16);
  v45 = a2;
  v19 = a2;
  v20 = v18;
  v18(v12, v19, v6);
  type metadata accessor for Trailers();
  swift_allocObject();
  v21 = v41;
  v22 = Trailers.init(deserializing:using:)(v17, v12);
  if (v21)
  {
    v23 = a1;
    v24 = v46;
  }

  else
  {
    v41 = v20;
    v26 = v9;
    v27 = *(v22 + 16);
    if (v27 >> 62)
    {
      v39 = v22;
      v28 = sub_24F92C738();
      v22 = v39;
    }

    else
    {
      v28 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v23 = a1;
    v30 = v44;
    v29 = v45;
    v31 = v46;
    if (v28)
    {
      *(v42 + OBJC_IVAR____TtC12GameStoreKit14TrailersLockup_trailers) = v22;
      v32 = *(v30 + 16);
      v45 = a1;
      v32(v14, a1, v31);
      v41(v26, v29, v6);
      v33 = v6;
      v34 = v29;
      v24 = Lockup.init(deserializing:using:)(v14, v26);
      (*(v43 + 8))(v34, v33);
      (*(v30 + 8))(v45, v46);
      return v24;
    }

    v35 = v46;
    v36 = sub_24F92AC38();
    sub_24E8F2E6C();
    swift_allocError();
    v37 = MEMORY[0x277D84F90];
    *v38 = 0x736F65646976;
    v38[1] = 0xE600000000000000;
    v38[2] = v40;
    v38[3] = v37;
    (*(*(v36 - 8) + 104))(v38, *MEMORY[0x277D22540], v36);
    swift_willThrow();

    v24 = v35;
  }

  (*(v43 + 8))(v45, v6);
  (*(v44 + 8))(v23, v24);
  type metadata accessor for TrailersLockup();
  swift_deallocPartialClassInstance();
  return v24;
}

uint64_t TrailersLockup.__allocating_init(adamId:bundleId:icon:heading:title:subtitle:developerTagline:editorialTagline:editorialDescription:shortEditorialDescription:ordinal:rating:ratingCount:buttonAction:offerDisplayProperties:clickAction:contextMenuData:impressionMetrics:trailers:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29)
{
  v77 = a8;
  v76 = a7;
  v75 = a6;
  v74 = a5;
  v71 = a4;
  v69 = a3;
  v67 = a2;
  v85 = a25;
  v86 = a26;
  v84 = a24;
  v82 = a27;
  v83 = a23;
  v81 = a22;
  v79 = a21;
  v64 = a20;
  v63 = a19;
  v80 = a18;
  v73 = a17;
  v72 = a16;
  v70 = a15;
  v68 = a14;
  v78 = a13;
  v66 = a12;
  v65 = a11;
  v62 = a10;
  v61 = a9;
  v30 = sub_24F91F6B8();
  v31 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v33 = &v58 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  MEMORY[0x28223BE20](v34 - 8);
  v36 = &v58 - v35;
  v37 = swift_allocObject();
  v38 = a1[1];
  v60 = *a1;
  v59 = v38;
  *(v37 + OBJC_IVAR____TtC12GameStoreKit14TrailersLockup_trailers) = a29;
  v93 = 0;
  memset(v92, 0, sizeof(v92));
  sub_24E60169C(a28, v36, &qword_27F213E68);
  *(v37 + 424) = 4;
  sub_24E60169C(v92, &v89, &qword_27F235830);
  if (*(&v90 + 1))
  {
    v39 = v90;
    *(v37 + 448) = v89;
    *(v37 + 464) = v39;
    *(v37 + 480) = v91;
  }

  else
  {

    sub_24F91F6A8();
    v40 = sub_24F91F668();
    v42 = v41;
    (*(v31 + 8))(v33, v30);
    v87 = v40;
    v88 = v42;
    sub_24F92C7F8();
    sub_24E601704(&v89, &qword_27F235830);
  }

  sub_24E60169C(v36, v37 + OBJC_IVAR____TtC12GameStoreKit6Lockup_impressionMetrics, &qword_27F213E68);

  v43 = v59;
  *(v37 + 16) = v60;
  *(v37 + 24) = v43;
  v44 = v69;
  *(v37 + 32) = v67;
  *(v37 + 40) = v44;
  *(v37 + 48) = v71;
  *(v37 + 56) = 0;
  v45 = v64;
  *(v37 + 64) = v63;
  *(v37 + 72) = v45;
  v46 = v75;
  *(v37 + 80) = v74;
  *(v37 + 88) = v46;
  v47 = v77;
  *(v37 + 96) = v76;
  *(v37 + 104) = v47;
  v48 = v62;
  *(v37 + 112) = v61;
  *(v37 + 120) = v48;
  *(v37 + 128) = 0;
  *(v37 + 136) = 2;
  v49 = v66;
  *(v37 + 144) = v65;
  *(v37 + 152) = v49;
  v50 = v70;
  *(v37 + 192) = v68;
  *(v37 + 200) = v50;
  v51 = v73;
  *(v37 + 208) = v72;
  *(v37 + 216) = v51;
  *(v37 + 376) = 0u;
  *(v37 + 392) = 0u;
  *(v37 + 408) = 0x8000;
  *(v37 + 360) = v82;
  *(v37 + 416) = 0;
  *(v37 + 432) = MEMORY[0x277D84FA0];
  v52 = v81;
  *(v37 + 160) = v79;
  *(v37 + 168) = v52;
  v53 = v78;
  *(v37 + 176) = v83;
  *(v37 + 184) = v53;
  v55 = v84;
  v54 = v85;
  *(v37 + 224) = v80;
  *(v37 + 232) = v55;
  *(v37 + 240) = v54;
  *(v37 + 248) = 0;
  v56 = v86;
  *(v37 + 256) = 0;
  *(v37 + 264) = v56;
  *(v37 + 272) = 0u;
  *(v37 + 288) = 0u;
  *(v37 + 304) = 0u;
  *(v37 + 320) = 0u;
  *(v37 + 336) = 0;
  sub_24E601704(a28, &qword_27F213E68);
  sub_24E601704(v36, &qword_27F213E68);
  sub_24E601704(v92, &qword_27F235830);
  *(v37 + 344) = MEMORY[0x277D84F90];
  *(v37 + 352) = 0;
  *(v37 + 440) = 0;
  *(v37 + 368) = 0;
  return v37;
}

uint64_t TrailersLockup.init(adamId:bundleId:icon:heading:title:subtitle:developerTagline:editorialTagline:editorialDescription:shortEditorialDescription:ordinal:rating:ratingCount:buttonAction:offerDisplayProperties:clickAction:contextMenuData:impressionMetrics:trailers:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29)
{
  v30 = v29;
  v78 = a8;
  v77 = a7;
  v76 = a6;
  v75 = a5;
  v72 = a4;
  v70 = a3;
  v68 = a2;
  v83 = a27;
  v86 = a25;
  v87 = a26;
  v85 = a24;
  v84 = a23;
  v82 = a22;
  v80 = a21;
  v65 = a20;
  v64 = a19;
  v81 = a18;
  v74 = a17;
  v73 = a16;
  v71 = a15;
  v69 = a14;
  v79 = a13;
  v67 = a12;
  v66 = a11;
  v63 = a10;
  v62 = a9;
  v32 = sub_24F91F6B8();
  v33 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v35 = &v59 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  MEMORY[0x28223BE20](v36 - 8);
  v38 = &v59 - v37;
  v39 = a1[1];
  v61 = *a1;
  v60 = v39;
  *(v30 + OBJC_IVAR____TtC12GameStoreKit14TrailersLockup_trailers) = a29;
  v97 = 0;
  memset(v96, 0, sizeof(v96));
  sub_24E60169C(a28, v38, &qword_27F213E68);
  *(v30 + 424) = 4;
  sub_24E60169C(v96, &v90, &qword_27F235830);
  if (*(&v91 + 1))
  {
    v93 = v90;
    v94 = v91;
    v95 = v92;
  }

  else
  {

    sub_24F91F6A8();
    v40 = sub_24F91F668();
    v42 = v41;
    (*(v33 + 8))(v35, v32);
    v88 = v40;
    v89 = v42;
    sub_24F92C7F8();
    sub_24E601704(&v90, &qword_27F235830);
  }

  v43 = v94;
  *(v30 + 448) = v93;
  *(v30 + 464) = v43;
  *(v30 + 480) = v95;
  sub_24E60169C(v38, v30 + OBJC_IVAR____TtC12GameStoreKit6Lockup_impressionMetrics, &qword_27F213E68);
  v44 = v60;
  *(v30 + 16) = v61;
  *(v30 + 24) = v44;
  v45 = v70;
  *(v30 + 32) = v68;
  *(v30 + 40) = v45;
  *(v30 + 48) = v72;
  *(v30 + 56) = 0;
  v46 = v65;
  *(v30 + 64) = v64;
  *(v30 + 72) = v46;
  v47 = v76;
  *(v30 + 80) = v75;
  *(v30 + 88) = v47;
  v48 = v78;
  *(v30 + 96) = v77;
  *(v30 + 104) = v48;
  v49 = v63;
  *(v30 + 112) = v62;
  *(v30 + 120) = v49;
  *(v30 + 128) = 0;
  *(v30 + 136) = 2;
  v50 = v67;
  *(v30 + 144) = v66;
  *(v30 + 152) = v50;
  v51 = v71;
  *(v30 + 192) = v69;
  *(v30 + 200) = v51;
  v52 = v74;
  *(v30 + 208) = v73;
  *(v30 + 216) = v52;
  *(v30 + 376) = 0u;
  *(v30 + 392) = 0u;
  *(v30 + 408) = 0x8000;
  *(v30 + 360) = v83;
  *(v30 + 416) = 0;
  *(v30 + 432) = MEMORY[0x277D84FA0];
  v53 = v82;
  *(v30 + 160) = v80;
  *(v30 + 168) = v53;
  v54 = v79;
  *(v30 + 176) = v84;
  *(v30 + 184) = v54;
  v56 = v85;
  v55 = v86;
  *(v30 + 224) = v81;
  *(v30 + 232) = v56;
  *(v30 + 240) = v55;
  *(v30 + 248) = 0;
  v57 = v87;
  *(v30 + 256) = 0;
  *(v30 + 264) = v57;
  *(v30 + 272) = 0u;
  *(v30 + 288) = 0u;
  *(v30 + 304) = 0u;
  *(v30 + 320) = 0u;
  *(v30 + 336) = 0;

  sub_24E601704(a28, &qword_27F213E68);
  sub_24E601704(v38, &qword_27F213E68);
  sub_24E601704(v96, &qword_27F235830);
  *(v30 + 344) = MEMORY[0x277D84F90];
  *(v30 + 352) = 0;
  *(v30 + 440) = 0;
  *(v30 + 368) = 0;
  return v30;
}

uint64_t TrailersLockup.deinit()
{
  v0 = Lockup.deinit();

  return v0;
}

uint64_t TrailersLockup.__deallocating_deinit()
{
  Lockup.deinit();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for TrailersLockup()
{
  result = qword_27F230850;
  if (!qword_27F230850)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void __swiftcall MetricsSystemInfo.init()(GameStoreKit::MetricsSystemInfo *__return_ptr retstr)
{
  v2 = sub_24F92A538();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24F92A528();
  v6 = sub_24F92A4E8();
  v8 = v7;
  v9 = *(v3 + 8);
  v9(v5, v2);
  retstr->systemName._countAndFlagsBits = v6;
  retstr->systemName._object = v8;
  sub_24F92A528();
  v10 = objc_opt_self();
  v11 = [v10 deviceClass];
  v12 = sub_24F92B0D8();
  v14 = v13;

  v9(v5, v2);
  retstr->hardwareFamily._countAndFlagsBits = v12;
  retstr->hardwareFamily._object = v14;
  sub_24F92A528();
  v15 = [v10 productType];
  v16 = sub_24F92B0D8();
  v18 = v17;

  v9(v5, v2);
  retstr->hardwareModel._countAndFlagsBits = v16;
  retstr->hardwareModel._object = v18;
  sub_24F92A528();
  v19 = sub_24F92A508();
  v21 = v20;
  v9(v5, v2);
  retstr->osBuildNumber._countAndFlagsBits = v19;
  retstr->osBuildNumber._object = v21;
  v22 = [objc_opt_self() currentDevice];
  v23 = [v22 systemVersion];

  v24 = sub_24F92B0D8();
  v26 = v25;

  retstr->osVersion._countAndFlagsBits = v24;
  retstr->osVersion._object = v26;
}

unint64_t MetricsSystemInfo.dictionaryRepresentation.getter()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[6];
  v8 = v0[7];
  v9 = v0[9];
  v17 = v0[8];

  v10 = sub_24E6086DC(MEMORY[0x277D84F90]);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_24E81D324(v2, v1, 29551, 0xE200000000000000, isUniquelyReferenced_nonNull_native);
  v12 = swift_isUniquelyReferenced_nonNull_native();
  sub_24E81D324(v3, v4, 0x6572617764726168, 0xEE00796C696D6146, v12);
  v13 = swift_isUniquelyReferenced_nonNull_native();
  sub_24E81D324(v5, v6, 0x6572617764726168, 0xED00006C65646F4DLL, v13);
  v14 = swift_isUniquelyReferenced_nonNull_native();
  sub_24E81D324(v7, v8, 0x4E646C697542736FLL, 0xED00007265626D75, v14);
  v15 = swift_isUniquelyReferenced_nonNull_native();
  sub_24E81D324(v17, v9, 0x6F6973726556736FLL, 0xE90000000000006ELL, v15);
  return v10;
}

uint64_t ScreenshotsDisplayStyle.shouldShowScreenshots.getter()
{
  if (*v0)
  {
    v1 = sub_24F92CE08();

    v2 = v1 ^ 1;
  }

  else
  {

    v2 = 0;
  }

  return v2 & 1;
}

GameStoreKit::ScreenshotsDisplayStyle_optional __swiftcall ScreenshotsDisplayStyle.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_24F92CB88();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t ScreenshotsDisplayStyle.rawValue.getter()
{
  v1 = 0xD000000000000010;
  if (*v0 != 1)
  {
    v1 = 0x647261646E617473;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x65657263732D6F6ELL;
  }
}

uint64_t sub_24EE01D24(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xD000000000000010;
  v4 = 0x800000024FA429F0;
  v5 = 0xE800000000000000;
  if (v2 == 1)
  {
    v5 = 0x800000024FA429F0;
  }

  else
  {
    v3 = 0x647261646E617473;
  }

  if (*a1)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0x65657263732D6F6ELL;
  }

  if (v2)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xEE0073746F68736ELL;
  }

  v8 = 0xD000000000000010;
  if (*a2 != 1)
  {
    v8 = 0x647261646E617473;
    v4 = 0xE800000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x65657263732D6F6ELL;
  }

  if (*a2)
  {
    v10 = v4;
  }

  else
  {
    v10 = 0xEE0073746F68736ELL;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_24F92CE08();
  }

  return v11 & 1;
}

uint64_t sub_24EE01E28()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24EE01EDC()
{
  sub_24F92B218();
}

uint64_t sub_24EE01F7C()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

void sub_24EE02038(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEE0073746F68736ELL;
  v4 = 0x800000024FA429F0;
  v5 = 0xD000000000000010;
  if (v2 != 1)
  {
    v5 = 0x647261646E617473;
    v4 = 0xE800000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x65657263732D6F6ELL;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

unint64_t sub_24EE020AC()
{
  result = qword_27F230860;
  if (!qword_27F230860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F230860);
  }

  return result;
}

uint64_t ProductStarRatingsHistogram.__allocating_init(id:componentType:productId:ratingAverage:ratingCounts:totalNumberOfRatings:totalNumberOfReviews:status:)(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, float a9, uint64_t a10)
{
  v27 = a8;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v27 - v19;
  v21 = swift_allocObject();
  LOBYTE(a2) = *a2;
  sub_24E65E064(a1, v30);
  v22 = (v21 + OBJC_IVAR____TtC12GameStoreKit7Ratings_productId);
  *v22 = a3;
  v22[1] = a4;
  *(v21 + OBJC_IVAR____TtC12GameStoreKit7Ratings_ratingAverage) = a9;
  *(v21 + OBJC_IVAR____TtC12GameStoreKit7Ratings_ratingCounts) = a5;
  *(v21 + OBJC_IVAR____TtC12GameStoreKit7Ratings_totalNumberOfRatings) = a6;
  *(v21 + OBJC_IVAR____TtC12GameStoreKit7Ratings_totalNumberOfReviews) = a7;
  v23 = (v21 + OBJC_IVAR____TtC12GameStoreKit7Ratings_status);
  *v23 = v27;
  v23[1] = a10;
  sub_24E65E064(v30, v29);
  v28 = a2;
  v24 = sub_24F929608();
  (*(*(v24 - 8) + 56))(v20, 1, 1, v24);
  v25 = sub_24E9C00B8(v29, &v28, v20);
  sub_24E601704(a1, &qword_27F235830);
  sub_24E601704(v30, &qword_27F235830);
  return v25;
}

uint64_t ProductStarRatingsHistogram.init(id:componentType:productId:ratingAverage:ratingCounts:totalNumberOfRatings:totalNumberOfReviews:status:)(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, float a9, uint64_t a10)
{
  v27 = a8;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = &v27 - v20;
  LOBYTE(a2) = *a2;
  sub_24E65E064(a1, v30);
  v22 = (v10 + OBJC_IVAR____TtC12GameStoreKit7Ratings_productId);
  *v22 = a3;
  v22[1] = a4;
  *(v10 + OBJC_IVAR____TtC12GameStoreKit7Ratings_ratingAverage) = a9;
  *(v10 + OBJC_IVAR____TtC12GameStoreKit7Ratings_ratingCounts) = a5;
  *(v10 + OBJC_IVAR____TtC12GameStoreKit7Ratings_totalNumberOfRatings) = a6;
  *(v10 + OBJC_IVAR____TtC12GameStoreKit7Ratings_totalNumberOfReviews) = a7;
  v23 = (v10 + OBJC_IVAR____TtC12GameStoreKit7Ratings_status);
  *v23 = v27;
  v23[1] = a10;
  sub_24E65E064(v30, v29);
  v28 = a2;
  v24 = sub_24F929608();
  (*(*(v24 - 8) + 56))(v21, 1, 1, v24);
  v25 = sub_24E9C00B8(v29, &v28, v21);
  sub_24E601704(a1, &qword_27F235830);
  sub_24E601704(v30, &qword_27F235830);
  return v25;
}

uint64_t ProductStarRatingsHistogram.deinit()
{
  sub_24E6585F8(v0 + 24);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit33ProductRatingsAndReviewsComponent_impressionMetrics, &qword_27F213E68);

  return v0;
}

uint64_t ProductStarRatingsHistogram.__deallocating_deinit()
{
  sub_24E6585F8(v0 + 24);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit33ProductRatingsAndReviewsComponent_impressionMetrics, &qword_27F213E68);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ProductStarRatingsHistogram()
{
  result = qword_27F230868;
  if (!qword_27F230868)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t WaitingAppStateDataSource.__allocating_init()()
{
  v0 = swift_allocObject();
  WaitingAppStateDataSource.init()();
  return v0;
}

void *WaitingAppStateDataSource.init()()
{
  v10 = sub_24F92BEE8();
  v1 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v3 = v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_24F927DC8();
  MEMORY[0x28223BE20](v4 - 8);
  v5 = sub_24F92BE88();
  MEMORY[0x28223BE20](v5);
  v0[2] = MEMORY[0x277D84F98];
  v0[4] = 0;
  swift_unknownObjectWeakInit();
  v6 = sub_24E74EC40();
  v9[0] = "it27ProductStarRatingsHistogram";
  v9[1] = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22BD20);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_24F93DE60;
  sub_24F92BE78();
  v11 = v7;
  sub_24E97238C(&qword_27F2394E0, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22BD30);
  sub_24E9723D4(&qword_27F2394F0, &unk_27F22BD30);
  sub_24F92C6A8();
  sub_24F927DA8();
  (*(v1 + 104))(v3, *MEMORY[0x277D85260], v10);
  v0[5] = sub_24F92BF38();
  return v0;
}

uint64_t sub_24EE029D0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 16) = v2;
}

uint64_t sub_24EE02A68(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 16) = a1;
}

uint64_t sub_24EE02AEC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 32) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_24EE02B4C(uint64_t *a1))(uint64_t, char)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 32);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_24EE02BE0;
}

uint64_t sub_24EE02BEC(uint64_t *a1, _BYTE *a2)
{
  v5 = sub_24F927D88();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v14[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = *a1;
  v9 = a1[1];
  LOBYTE(a2) = *a2;
  v11 = swift_allocObject();
  *(v11 + 16) = v2;
  *(v11 + 24) = v10;
  *(v11 + 32) = v9;
  *(v11 + 40) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22BDF0);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_24F93DE60;

  sub_24F927D78();
  v17 = v12;
  sub_24E97238C(&qword_27F222930, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222310);
  sub_24E9723D4(&qword_27F222940, &qword_27F222310);
  sub_24F92C6A8();
  v15 = sub_24EE02EF4;
  v16 = v11;
  sub_24F92BF08();

  (*(v6 + 8))(v8, v5);
  return 1;
}

uint64_t sub_24EE02E44(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  *&v10[0] = a4;
  v11 = 0;
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(a1 + 16);
  *(a1 + 16) = 0x8000000000000000;
  sub_24E820174(v10, a2, a3, isUniquelyReferenced_nonNull_native);

  *(a1 + 16) = v9;
  return swift_endAccess();
}

uint64_t sub_24EE02F04(uint64_t *a1)
{
  v3 = sub_24F927D88();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v12[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = *a1;
  v7 = a1[1];
  v9 = swift_allocObject();
  v9[2] = v1;
  v9[3] = v8;
  v9[4] = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22BDF0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_24F93DE60;

  sub_24F927D78();
  v15 = v10;
  sub_24E97238C(&qword_27F222930, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222310);
  sub_24E9723D4(&qword_27F222940, &qword_27F222310);
  sub_24F92C6A8();
  v13 = sub_24EE03330;
  v14 = v9;
  sub_24F92BF08();

  (*(v4 + 8))(v6, v3);
  return 1;
}

uint64_t sub_24EE03150(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  sub_24E98FE14(a2, a3, v6);
  swift_endAccess();
  return sub_24EE03700(v6);
}

uint64_t (*sub_24EE031C0(uint64_t (*result)(_OWORD *)))(_OWORD *)
{
  if (result)
  {
    memset(v1, 0, sizeof(v1));
    v2 = -1;
    return result(v1);
  }

  return result;
}

uint64_t sub_24EE03214(uint64_t a1, uint64_t (*a2)(_OWORD *))
{
  memset(v3, 0, sizeof(v3));
  v4 = -1;
  return a2(v3);
}

uint64_t WaitingAppStateDataSource.deinit()
{

  sub_24E883630(v0 + 24);

  return v0;
}

uint64_t WaitingAppStateDataSource.__deallocating_deinit()
{

  sub_24E883630(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t objectdestroyTm_38()
{

  return swift_deallocObject();
}

void (*sub_24EE0333C(uint64_t *a1))(uint64_t, char)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 32);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_24EE03768;
}

uint64_t sub_24EE03408@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 16);
}

uint64_t sub_24EE03458@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 32);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_24EE034A8(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 32) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_24EE03700(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22BE00);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_24EE03770()
{
  result = qword_27F230878;
  if (!qword_27F230878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F230878);
  }

  return result;
}

unint64_t sub_24EE037C8()
{
  result = qword_27F230880;
  if (!qword_27F230880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F230880);
  }

  return result;
}

unint64_t sub_24EE03820()
{
  result = qword_27F230888;
  if (!qword_27F230888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F230888);
  }

  return result;
}

uint64_t sub_24EE03874()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F230910);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = v12 - v1;
  v12[0] = sub_24F91F298();
  v3 = *(v12[0] - 8);
  MEMORY[0x28223BE20](v12[0]);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_24F91F7C8();
  MEMORY[0x28223BE20](v6 - 8);
  v7 = sub_24F92B088();
  MEMORY[0x28223BE20](v7 - 8);
  v8 = sub_24F91F2B8();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = sub_24F91E878();
  __swift_allocate_value_buffer(v10, qword_27F39C990);
  __swift_project_value_buffer(v10, qword_27F39C990);
  sub_24F92B018();
  sub_24F91F778();
  (*(v3 + 104))(v5, *MEMORY[0x277CC9110], v12[0]);
  sub_24F91F2C8();
  (*(v9 + 56))(v2, 1, 1, v8);
  return sub_24F91E868();
}

uint64_t sub_24EE03B80@<X0>(uint64_t a1@<X8>)
{
  v13[1] = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F230908);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = v13 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F230910);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v13 - v5;
  v7 = sub_24F91F2B8();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = sub_24F92B068();
  MEMORY[0x28223BE20](v9 - 8);
  MEMORY[0x28223BE20](v10);
  sub_24F92B058();
  sub_24F92B048();
  sub_24F91E788();
  sub_24F92B038();

  sub_24F92B048();
  sub_24F91F2A8();
  sub_24F92B058();
  sub_24F92B048();
  sub_24F91E788();
  sub_24F92B038();

  sub_24F92B048();
  sub_24F91F2A8();
  (*(v8 + 56))(v6, 0, 1, v7);
  v11 = sub_24F91E7C8();
  (*(*(v11 - 8) + 56))(v3, 1, 1, v11);
  return sub_24F91E7D8();
}

uint64_t sub_24EE03E6C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_24EE050EC;

  return sub_24EE04F7C(a1);
}

uint64_t sub_24EE03F14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_24E614970;

  return MEMORY[0x28210B608](a1, a2, a3);
}

uint64_t sub_24EE03FC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_24E67D094;

  return MEMORY[0x28210B610](a1, a2, a3, a4);
}

unint64_t sub_24EE0408C()
{
  result = qword_27F230890;
  if (!qword_27F230890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F230890);
  }

  return result;
}

unint64_t sub_24EE040E4()
{
  result = qword_27F230898;
  if (!qword_27F230898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F230898);
  }

  return result;
}

unint64_t sub_24EE0413C()
{
  result = qword_27F2308A0;
  if (!qword_27F2308A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2308A8);
    sub_24EE040E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2308A0);
  }

  return result;
}

uint64_t sub_24EE041C0(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_24EE0443C();
  *v5 = v2;
  v5[1] = sub_24E6541E4;

  return MEMORY[0x28210B618](a1, a2, v6);
}

uint64_t sub_24EE04274(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_24E614970;

  return MEMORY[0x28210C148](a1, a2, a3);
}

unint64_t sub_24EE04334()
{
  result = qword_27F2308B0;
  if (!qword_27F2308B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2308B0);
  }

  return result;
}

unint64_t sub_24EE0438C()
{
  result = qword_27F2308B8;
  if (!qword_27F2308B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2308B8);
  }

  return result;
}

unint64_t sub_24EE043E4()
{
  result = qword_27F2308C0;
  if (!qword_27F2308C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2308C0);
  }

  return result;
}

unint64_t sub_24EE0443C()
{
  result = qword_27F2308C8;
  if (!qword_27F2308C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2308C8);
  }

  return result;
}

unint64_t sub_24EE044A0()
{
  result = qword_27F2308D0;
  if (!qword_27F2308D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2308D0);
  }

  return result;
}

uint64_t sub_24EE044F4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F230920);
  MEMORY[0x28223BE20](v0);
  sub_24EE03820();
  sub_24F91E838();
  sub_24F91E828();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F230928);
  sub_24F91E818();

  sub_24F91E828();
  return sub_24F91E848();
}

unint64_t sub_24EE04614()
{
  result = qword_27F2308D8;
  if (!qword_27F2308D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2308D8);
  }

  return result;
}

unint64_t sub_24EE0466C()
{
  result = qword_27F2308E0;
  if (!qword_27F2308E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2308E0);
  }

  return result;
}

unint64_t sub_24EE046C4()
{
  result = qword_27F2308E8;
  if (!qword_27F2308E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2308E8);
  }

  return result;
}

uint64_t sub_24EE04718()
{
  sub_24EE04A6C();
  v1 = sub_24F91E808();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_24EE04784@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F210778 != -1)
  {
    swift_once();
  }

  v2 = sub_24F91E878();
  v3 = __swift_project_value_buffer(v2, qword_27F39C990);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

unint64_t sub_24EE04830()
{
  result = qword_27F2308F0;
  if (!qword_27F2308F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2308F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2308F0);
  }

  return result;
}

uint64_t sub_24EE04894(uint64_t a1)
{
  v2 = sub_24EE03820();

  return MEMORY[0x28210B488](a1, v2);
}

unint64_t sub_24EE048E4()
{
  result = qword_27F230900;
  if (!qword_27F230900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F230900);
  }

  return result;
}

uint64_t sub_24EE0493C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_24E6541E4;

  return MEMORY[0x28210C4A0](a1, a2, a3, a4);
}

uint64_t sub_24EE04A00(uint64_t a1)
{
  v2 = sub_24EE046C4();

  return MEMORY[0x28210C4B8](a1, v2);
}

unint64_t sub_24EE04A6C()
{
  result = qword_27F230918;
  if (!qword_27F230918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F230918);
  }

  return result;
}

uint64_t sub_24EE04AC0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_24F91E7A8();
  *a1 = result;
  return result;
}

uint64_t sub_24EE04AEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X5>, unint64_t a7@<X6>, unint64_t a8@<X7>, void *a9@<X8>)
{
  v41 = a6;
  v42 = a8;
  v35 = a5;
  v36 = a7;
  v39 = a4;
  v40 = a3;
  v38 = a2;
  v43 = a1;
  v44 = a9;
  v9 = sub_24F91F298();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_24F91F7C8();
  MEMORY[0x28223BE20](v13 - 8);
  v14 = sub_24F92B088();
  MEMORY[0x28223BE20](v14 - 8);
  v15 = sub_24F91F2B8();
  MEMORY[0x28223BE20](v15 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F230930);
  sub_24F92B018();
  sub_24F91F778();
  v16 = *MEMORY[0x277CC9110];
  v17 = *(v10 + 104);
  v17(v12, v16, v9);
  sub_24F91F2C8();
  v37 = sub_24F91E7B8();

  sub_24F92B018();
  sub_24F91F778();
  v17(v12, v16, v9);
  sub_24F91F2C8();
  v18 = sub_24F91E7B8();

  sub_24F92B018();
  sub_24F91F778();
  v17(v12, v16, v9);
  v19 = v38;
  v20 = v37;
  sub_24F91F2C8();
  v21 = sub_24F91E7B8();
  v22 = v40;
  if (!v39)
  {
    v22 = 0;
  }

  v23 = 0xE000000000000000;
  if (v39)
  {
    v23 = v39;
  }

  v45 = v22;
  v46 = v23;

  sub_24F91E798();
  object = v41;
  if (v41)
  {
    countAndFlagsBits = v35;
  }

  else
  {
    v26._countAndFlagsBits = 0xD000000000000025;
    v26._object = 0x800000024FA5E5B0;
    v27._countAndFlagsBits = 0;
    v27._object = 0xE000000000000000;
    v28 = localizedString(_:comment:)(v26, v27);
    object = v28._object;
    countAndFlagsBits = v28._countAndFlagsBits;
  }

  v45 = countAndFlagsBits;
  v46 = object;
  sub_24F91E798();
  v29 = v42;
  v30 = v43;
  if (v42)
  {
    v31 = v36;
  }

  else
  {
    v45 = 0;
    v46 = 0xE000000000000000;
    sub_24F92C888();

    v45 = 0xD00000000000001FLL;
    v46 = 0x800000024FA5E5E0;
    MEMORY[0x253050C20](v30, v19);
    v31 = v45;
    v29 = v46;
  }

  v45 = v31;
  v46 = v29;
  sub_24F91E798();

  v33 = v44;
  *v44 = v30;
  v33[1] = v19;
  v33[2] = v20;
  v33[3] = v18;
  v33[4] = v21;
  return result;
}

uint64_t sub_24EE04F9C()
{
  v1 = *(v0 + 56);
  v2 = *(v1 + 16);
  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    v14 = MEMORY[0x277D84F90];
    sub_24F458A80(0, v2, 0);
    v3 = v14;
    v4 = (v1 + 40);
    do
    {
      v5 = *(v4 - 1);
      v6 = *v4;

      sub_24EE04AEC(v5, v6, 0, 0, 0, 0, 0, 0, (v0 + 16));
      v8 = *(v14 + 16);
      v7 = *(v14 + 24);
      if (v8 >= v7 >> 1)
      {
        sub_24F458A80((v7 > 1), v8 + 1, 1);
      }

      *(v14 + 16) = v8 + 1;
      v9 = v14 + 40 * v8;
      v10 = *(v0 + 16);
      v11 = *(v0 + 32);
      *(v9 + 64) = *(v0 + 48);
      *(v9 + 32) = v10;
      *(v9 + 48) = v11;
      v4 += 2;
      --v2;
    }

    while (v2);
  }

  v12 = *(v0 + 8);

  return v12(v3);
}

uint64_t sub_24EE050F0(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32 = a4;
  v31 = a3;
  v37 = a2;
  v5 = sub_24F927D88();
  v38 = *(v5 - 8);
  v39 = v5;
  MEMORY[0x28223BE20](v5);
  v35 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_24F927DC8();
  v7 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v33 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = dispatch_group_create();
  v10 = a1 >> 62;
  if (a1 >> 62)
  {
LABEL_21:
    v11 = sub_24F92C738();
  }

  else
  {
    v11 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v12 = swift_allocObject();
  memset(v47, 0, sizeof(v47));
  v48 = 0;
  *(v12 + 16) = sub_24EE1E554(v47, v11);
  v13 = swift_allocObject();
  *(v13 + 16) = MEMORY[0x277D84F90];
  v30 = a1;
  v34 = v7;
  if (v10)
  {
    v14 = sub_24F92C738();
    if (!v14)
    {
LABEL_17:
      v23 = swift_allocObject();
      v24 = v32;
      v23[2] = v31;
      v23[3] = v24;
      v23[4] = v12;
      v23[5] = v13;
      v45 = sub_24EE06C0C;
      v46 = v23;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_24EAF8248;
      v44 = &block_descriptor_42_0;
      v25 = _Block_copy(aBlock);

      v26 = v33;
      sub_24F927DA8();
      v42 = MEMORY[0x277D84F90];
      sub_24E858250();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222310);
      sub_24E8582A8();
      v27 = v35;
      v28 = v39;
      sub_24F92C6A8();
      sub_24F92BE68();
      _Block_release(v25);

      (*(v38 + 8))(v27, v28);
      (*(v34 + 8))(v26, v36);
    }
  }

  else
  {
    v14 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v14)
    {
      goto LABEL_17;
    }
  }

  v10 = 0;
  v15 = v30 & 0xFFFFFFFFFFFFFF8;
  v40 = v30 + 32;
  v41 = v30 & 0xC000000000000001;
  while (!v41)
  {
    if ((v10 & 0x8000000000000000) != 0)
    {
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

    if (v10 >= *(v15 + 16))
    {
      goto LABEL_19;
    }

    dispatch_group_enter(v9);
    if (v10 >= *(v15 + 16))
    {
      goto LABEL_20;
    }

    a1 = v10 + 1;
    v7 = *(v40 + 8 * v10);

LABEL_13:
    v16 = swift_allocObject();
    v16[2] = v12;
    v16[3] = v10;
    v16[4] = v9;
    v17 = swift_allocObject();
    *(v17 + 16) = v13;
    *(v17 + 24) = v9;
    v18 = sub_24E69A5C4(0, &qword_27F222300);
    v19 = v9;

    v20 = sub_24F92BEF8();
    v44 = v18;
    v45 = MEMORY[0x277D225C0];
    aBlock[0] = v20;
    sub_24F92A958();

    __swift_destroy_boxed_opaque_existential_1(aBlock);
    v10 = a1;
    if (a1 == v14)
    {
      goto LABEL_17;
    }
  }

  v21 = v30;
  MEMORY[0x253052270](v10, v30);
  result = swift_unknownObjectRelease();
  a1 = v10 + 1;
  if (!__OFADD__(v10, 1))
  {
    dispatch_group_enter(v9);
    v7 = MEMORY[0x253052270](v10, v21);
    goto LABEL_13;
  }

  __break(1u);
  return result;
}

void sub_24EE0562C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = *(a1 + 32);
  v7 = sub_24F92B5A8();
  v8 = sub_24F92BAA8();
  v9 = sub_24F92BAA8();

  v10 = a5;
  v6(v7, v8, v9, a5);
}

id sub_24EE05720(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = sub_24F9298F8();
  v7 = MEMORY[0x25304F260]();
  if (v7)
  {
    v26 = v6;
    v27 = MEMORY[0x277D22078];
    v25[0] = v7;
  }

  else
  {
    v26 = sub_24F929638();
    v27 = MEMORY[0x277D21FB0];
    __swift_allocate_boxed_opaque_existential_1(v25);
    sub_24F929628();
  }

  result = [objc_allocWithZone(MEMORY[0x277CD4650]) initWithValue_];
  if (!result)
  {
    __break(1u);
    goto LABEL_13;
  }

  v9 = result;
  result = [a2 context];
  if (!result)
  {
LABEL_13:
    __break(1u);
    return result;
  }

  v10 = result;
  v11 = [result virtualMachine];

  if (v11)
  {
    [v11 addManagedReference:v9 withOwner:v3];
  }

  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F230948);
    v12 = sub_24F92A9E8();
    v13 = swift_allocObject();
    *(v13 + 16) = sub_24E60B7DC(MEMORY[0x277D84F90]);

    v14 = sub_24EE066B0(a1);

    v15 = swift_allocObject();
    *(v15 + 16) = v13;
    *(v15 + 24) = v12;
    sub_24E69A5C4(0, &qword_27F222300);

    v16 = sub_24F92BEF8();
    sub_24EE050F0(v14, v16, sub_24EE06A90, v15);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F230948);
    sub_24E60B7DC(MEMORY[0x277D84F90]);
    sub_24F92A988();
  }

  v17 = swift_allocObject();
  v17[2] = v9;
  v17[3] = v11;
  v17[4] = v3;
  v18 = swift_allocObject();
  v18[2] = v9;
  v18[3] = v11;
  v18[4] = v3;
  v19 = v9;
  v20 = v11;
  v21 = v3;
  v22 = v19;
  v23 = v20;
  v24 = v21;
  sub_24F92A958();

  return __swift_destroy_boxed_opaque_existential_1(v25);
}

id sub_24EE05ACC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v8 = v7;
  v15 = sub_24F9298F8();
  v16 = MEMORY[0x25304F260]();
  if (v16)
  {
    v38 = v15;
    v39 = MEMORY[0x277D22078];
    v37[0] = v16;
  }

  else
  {
    v38 = sub_24F929638();
    v39 = MEMORY[0x277D21FB0];
    __swift_allocate_boxed_opaque_existential_1(v37);
    sub_24F929628();
  }

  result = [objc_allocWithZone(MEMORY[0x277CD4650]) initWithValue_];
  if (!result)
  {
    __break(1u);
    goto LABEL_27;
  }

  v18 = result;
  result = [a7 context];
  if (!result)
  {
LABEL_27:
    __break(1u);
    return result;
  }

  v19 = result;
  v20 = [result virtualMachine];

  if (v20)
  {
    [v20 addManagedReference:v18 withOwner:v8];
  }

  if (a6 && (a5 == 1819047278 && a6 == 0xE400000000000000 || (sub_24F92CE08() & 1) != 0 || a5 == 0x656E696665646E75 && a6 == 0xE900000000000064 || (sub_24F92CE08() & 1) != 0))
  {
    a5 = 0;
    a6 = 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F230940);
  v21 = sub_24F92A9E8();
  if (a2 && a4)
  {
    if (a3)
    {
      v22 = swift_allocObject();
      v22[2] = v21;
      v22[3] = a3;
      v22[4] = a4;
      v22[5] = a5;
      v22[6] = a6;
      v23 = objc_opt_self();

      v24 = sub_24F92B098();
      v25 = swift_allocObject();
      *(v25 + 16) = sub_24EE064AC;
      *(v25 + 24) = v22;
      aBlock[4] = sub_24EE064FC;
      aBlock[5] = v25;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_24EE0562C;
      aBlock[3] = &block_descriptor_79;
      v26 = _Block_copy(aBlock);

      [v23 fetchOverridesForVisibilityAndOrderForApplicationBundleIdentifier:v24 completionHandler:v26];
      _Block_release(v26);
    }

    else
    {
      aBlock[0] = MEMORY[0x277D84F90];
      sub_24F92A9C8();
    }
  }

  else
  {
    if (a3)
    {
      v27 = a3;
    }

    else
    {
      v27 = MEMORY[0x277D84F90];
    }

    aBlock[0] = v27;

    sub_24F92A9C8();
  }

  v28 = swift_allocObject();
  v28[2] = v18;
  v28[3] = v20;
  v28[4] = v8;
  v29 = swift_allocObject();
  v29[2] = v18;
  v29[3] = v20;
  v29[4] = v8;
  v30 = v18;
  v31 = v20;
  v32 = v8;
  v33 = v30;
  v34 = v31;
  v35 = v32;
  sub_24F92A958();

  return __swift_destroy_boxed_opaque_existential_1(v37);
}

void sub_24EE05F00(uint64_t *a1, void *a2, void *a3, uint64_t a4, uint64_t *a5)
{
  v9 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222F80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_24F93A400;
  *(v10 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(a5);
  *(v10 + 32) = v9;
  v11 = objc_allocWithZone(MEMORY[0x277CBEB68]);

  v12 = [v11 init];
  *(v10 + 88) = sub_24E69A5C4(0, &qword_27F220B60);
  *(v10 + 64) = v12;
  v13 = [a2 value];
  if (v13)
  {
    v14 = v13;
    v15 = sub_24F92B588();

    if (!a3)
    {
      return;
    }
  }

  else
  {

    if (!a3)
    {
      return;
    }
  }

  [a3 removeManagedReference:a2 withOwner:a4];
}

void sub_24EE06090(uint64_t a1, id a2, void *a3, uint64_t a4)
{
  v8 = [a2 value];
  if (v8)
  {
    v9 = v8;
    v10 = [v8 context];
    if (!v10)
    {
      __break(1u);
      return;
    }

    v11 = v10;
    v12 = sub_24E69A5C4(0, &qword_27F21C8E0);
    v13 = MEMORY[0x253051C90](a1, v11);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222F80);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_24F93A400;
    v15 = [objc_allocWithZone(MEMORY[0x277CBEB68]) init];
    v16 = sub_24E69A5C4(0, &qword_27F220B60);
    *(v14 + 32) = v15;
    *(v14 + 88) = v12;
    *(v14 + 56) = v16;
    *(v14 + 64) = v13;
    v17 = v13;
    v18 = sub_24F92B588();

    v19 = [v9 callWithArguments_];
  }

  if (a3)
  {

    [a3 removeManagedReference:a2 withOwner:a4];
  }
}

id sub_24EE063C0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ClientOrderingWrapper();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_24EE0645C()
{

  return swift_deallocObject();
}

uint64_t sub_24EE064C4()
{

  return swift_deallocObject();
}

uint64_t block_copy_helper_79(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24EE0651C()
{

  return swift_deallocObject();
}

void sub_24EE06554(uint64_t *a1, uint64_t a2, unint64_t a3, NSObject *a4)
{
  v8 = *a1;
  v7 = a1[1];
  v9 = a1[3];
  v19 = a1[2];
  v10 = a1[4];
  v11 = a1[5];
  v12 = a1[6];
  swift_beginAccess();
  v13 = *(a2 + 16);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a2 + 16) = v13;
  if (isUniquelyReferenced_nonNull_native)
  {
    if ((a3 & 0x8000000000000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v13 = sub_24ECDE2B8(v13);
  *(a2 + 16) = v13;
  if ((a3 & 0x8000000000000000) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (v13[2] > a3)
  {
    v15 = &v13[7 * a3];
    v16 = v8;
    v17 = v15[4];
    v18 = v15[5];
    v15[4] = v16;
    v15[5] = v7;
    v15[6] = v19;
    v15[7] = v9;
    v15[8] = v10;
    v15[9] = v11;
    v15[10] = v12;
    *(a2 + 16) = v13;
    swift_endAccess();
    sub_24ED66F88(v17, v18);
    dispatch_group_leave(a4);
    return;
  }

LABEL_7:
  __break(1u);
}

uint64_t sub_24EE066B0(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v2)
  {
    v38 = MEMORY[0x277D84F90];
    sub_24F92C978();
    v4 = v1 + 64;
    v5 = sub_24F92C6B8();
    v6 = *(v1 + 36);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F230950);
    result = objc_opt_self();
    v7 = 0;
    v34 = result;
    v30 = v1 + 72;
    v35 = v1;
    v32 = v1 + 64;
    v33 = v2;
    v31 = v6;
    while ((v5 & 0x8000000000000000) == 0 && v5 < 1 << *(v1 + 32))
    {
      v9 = v5 >> 6;
      if ((*(v4 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
      {
        goto LABEL_21;
      }

      if (v6 != *(v1 + 36))
      {
        goto LABEL_22;
      }

      v36 = v7;
      v10 = *(v1 + 56);
      v11 = (*(v1 + 48) + 16 * v5);
      v13 = *v11;
      v12 = v11[1];
      v14 = (v10 + 16 * v5);
      v16 = *v14;
      v15 = v14[1];

      v17 = sub_24F92A9E8();
      v18 = swift_allocObject();
      v18[2] = v17;
      v18[3] = v13;
      v18[4] = v12;
      v18[5] = v16;
      v18[6] = v15;

      v19 = sub_24F92B098();
      v20 = swift_allocObject();
      *(v20 + 16) = sub_24EE06C60;
      *(v20 + 24) = v18;
      aBlock[4] = sub_24EE06CB8;
      aBlock[5] = v20;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_24EE0562C;
      aBlock[3] = &block_descriptor_52_0;
      v21 = _Block_copy(aBlock);

      [v34 fetchOverridesForVisibilityAndOrderForApplicationBundleIdentifier:v19 completionHandler:v21];
      v22 = v21;
      v1 = v35;
      _Block_release(v22);

      sub_24F92C948();
      sub_24F92C988();
      sub_24F92C998();
      result = sub_24F92C958();
      v8 = 1 << *(v35 + 32);
      if (v5 >= v8)
      {
        goto LABEL_23;
      }

      v4 = v32;
      v23 = *(v32 + 8 * v9);
      if ((v23 & (1 << v5)) == 0)
      {
        goto LABEL_24;
      }

      LODWORD(v6) = v31;
      if (v31 != *(v35 + 36))
      {
        goto LABEL_25;
      }

      v24 = v23 & (-2 << (v5 & 0x3F));
      if (v24)
      {
        v8 = __clz(__rbit64(v24)) | v5 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v25 = v9 << 6;
        v26 = v9 + 1;
        v27 = (v30 + 8 * v9);
        while (v26 < (v8 + 63) >> 6)
        {
          v29 = *v27++;
          v28 = v29;
          v25 += 64;
          ++v26;
          if (v29)
          {
            result = sub_24E6586A8(v5, v31, 0);
            v8 = __clz(__rbit64(v28)) + v25;
            goto LABEL_4;
          }
        }

        result = sub_24E6586A8(v5, v31, 0);
      }

LABEL_4:
      v7 = v36 + 1;
      v5 = v8;
      if (v36 + 1 == v33)
      {
        return v38;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_24EE06A50()
{

  return swift_deallocObject();
}

uint64_t objectdestroyTm_39()
{

  return swift_deallocObject();
}

uint64_t sub_24EE06B30()
{

  return swift_deallocObject();
}

uint64_t sub_24EE06B7C()
{

  return swift_deallocObject();
}

uint64_t sub_24EE06BC4()
{

  return swift_deallocObject();
}

uint64_t sub_24EE06C18()
{

  return swift_deallocObject();
}

uint64_t sub_24EE06CF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ChallengeDefinitionDetail(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20) + 24);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = sub_24F928AD8();
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 24);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_24EE06E30(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for ChallengeDefinitionDetail(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20) + 24) = (a2 - 1);
  }

  else
  {
    v11 = sub_24F928AD8();
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t type metadata accessor for UpdateChallengeDefinitionAction()
{
  result = qword_27F230958;
  if (!qword_27F230958)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24EE06FA4()
{
  type metadata accessor for ChallengeDefinitionDetail(319);
  if (v0 <= 0x3F)
  {
    sub_24E6CFC68();
    if (v1 <= 0x3F)
    {
      sub_24F928AD8();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_24EE07040@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v25 = sub_24F928AD8();
  v23 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ChallengeDefinitionDetail(0);
  MEMORY[0x28223BE20](v6);
  v27 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F230968);
  v26 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v9 = &v21 - v8;
  updated = type metadata accessor for UpdateChallengeDefinitionAction();
  MEMORY[0x28223BE20](updated);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1[3];
  v29 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v13);
  sub_24EE07600();
  sub_24F92D108();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v29);
  }

  v14 = v26;
  v22 = v5;
  LOBYTE(v30) = 0;
  sub_24EE0771C(&qword_27F21B790, type metadata accessor for ChallengeDefinitionDetail);
  v15 = v27;
  sub_24F92CC68();
  sub_24EE07654(v15, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2169E8);
  v33 = 1;
  sub_24EE076B8();
  sub_24F92CC68();
  v16 = &v12[*(updated + 20)];
  v17 = v31;
  *v16 = v30;
  *(v16 + 1) = v17;
  *(v16 + 4) = v32;
  LOBYTE(v30) = 2;
  sub_24EE0771C(&qword_27F254CB0, MEMORY[0x277D21C88]);
  v18 = v22;
  v19 = v25;
  sub_24F92CC68();
  (*(v14 + 8))(v9, v28);
  (*(v23 + 32))(&v12[*(updated + 24)], v18, v19);
  sub_24EE07764(v12, v24);
  __swift_destroy_boxed_opaque_existential_1(v29);
  return sub_24EE077C8(v12, type metadata accessor for UpdateChallengeDefinitionAction);
}

uint64_t sub_24EE074D0()
{
  v1 = 0x65756E69746E6F63;
  if (*v0 != 1)
  {
    v1 = 0x654D6E6F69746361;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6974696E69666564;
  }
}

uint64_t sub_24EE07548@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24EE07940(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24EE07570(uint64_t a1)
{
  v2 = sub_24EE07600();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24EE075AC(uint64_t a1)
{
  v2 = sub_24EE07600();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_24EE07600()
{
  result = qword_27F230970;
  if (!qword_27F230970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F230970);
  }

  return result;
}

uint64_t sub_24EE07654(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ChallengeDefinitionDetail(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_24EE076B8()
{
  result = qword_27F243830;
  if (!qword_27F243830)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2169E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243830);
  }

  return result;
}

uint64_t sub_24EE0771C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24EE07764(uint64_t a1, uint64_t a2)
{
  updated = type metadata accessor for UpdateChallengeDefinitionAction();
  (*(*(updated - 8) + 16))(a2, a1, updated);
  return a2;
}

uint64_t sub_24EE077C8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_24EE0783C()
{
  result = qword_27F230978;
  if (!qword_27F230978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F230978);
  }

  return result;
}

unint64_t sub_24EE07894()
{
  result = qword_27F230980;
  if (!qword_27F230980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F230980);
  }

  return result;
}

unint64_t sub_24EE078EC()
{
  result = qword_27F230988[0];
  if (!qword_27F230988[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27F230988);
  }

  return result;
}

uint64_t sub_24EE07940(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6974696E69666564 && a2 == 0xEA00000000006E6FLL;
  if (v4 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65756E69746E6F63 && a2 == 0xEE006E6F69746341 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x654D6E6F69746361 && a2 == 0xED00007363697274)
  {

    return 2;
  }

  else
  {
    v6 = sub_24F92CE08();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

void sub_24EE07A70()
{
  sub_24EE07E64();
  if (v0 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_24EE07B10(unint64_t a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = *(*(*(a3 + 16) - 8) + 64) + 7;
  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v9 = ((v8 + ((v6 + 16) & ~v6)) & 0xFFFFFFFFFFFFFFF8) + 8;
  v10 = a2 - v7;
  v11 = v9 & 0xFFFFFFF8;
  if ((v9 & 0xFFFFFFF8) != 0)
  {
    v12 = 2;
  }

  else
  {
    v12 = v10 + 1;
  }

  if (v12 >= 0x10000)
  {
    v13 = 4;
  }

  else
  {
    v13 = 2;
  }

  if (v12 < 0x100)
  {
    v13 = 1;
  }

  if (v12 >= 2)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  if (v14 > 1)
  {
    if (v14 == 2)
    {
      v15 = *(a1 + v9);
      if (!v15)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v15 = *(a1 + v9);
      if (!v15)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v14 || (v15 = *(a1 + v9)) == 0)
  {
LABEL_28:
    v18 = ((a1 & 0xFFFFFFFFFFFFFFF8) + v6 + 16) & ~v6;
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))(v18);
    }

    v19 = *((v8 + v18) & 0xFFFFFFFFFFFFFFF8);
    if (v19 >= 0xFFFFFFFF)
    {
      LODWORD(v19) = -1;
    }

    return (v19 + 1);
  }

  v17 = v15 - 1;
  if (v11)
  {
    v17 = 0;
    LODWORD(v11) = *a1;
  }

  return v7 + (v11 | v17) + 1;
}

unint64_t sub_24EE07C6C(unint64_t result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(v5 + 80);
  v9 = *(*(*(a4 + 16) - 8) + 64) + 7;
  v10 = ((v9 + ((v8 + 16) & ~v8)) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v7 >= a3)
  {
    v14 = 0;
    v15 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v11 = a3 - v7;
    if (((v9 + ((v8 + 16) & ~v8)) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v12 = v11 + 1;
    }

    else
    {
      v12 = 2;
    }

    if (v12 >= 0x10000)
    {
      v13 = 4;
    }

    else
    {
      v13 = 2;
    }

    if (v12 < 0x100)
    {
      v13 = 1;
    }

    if (v12 >= 2)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    v15 = a2 - v7;
    if (a2 <= v7)
    {
LABEL_17:
      if (v14 > 1)
      {
        if (v14 != 2)
        {
          *(result + v10) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *(result + v10) = 0;
      }

      else if (v14)
      {
        *(result + v10) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return result;
      }

LABEL_33:
      result = ((result & 0xFFFFFFFFFFFFFFF8) + v8 + 16) & ~v8;
      if (v6 < 0x7FFFFFFF)
      {
        v20 = ((v9 + result) & 0xFFFFFFFFFFFFFFF8);
        if ((a2 & 0x80000000) != 0)
        {
          v21 = a2 & 0x7FFFFFFF;
        }

        else
        {
          v21 = a2 - 1;
        }

        *v20 = v21;
      }

      else
      {
        v19 = *(v5 + 56);

        return v19(result);
      }

      return result;
    }
  }

  if (((v9 + ((v8 + 16) & ~v8)) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v16 = v15;
  }

  else
  {
    v16 = 1;
  }

  if (((v9 + ((v8 + 16) & ~v8)) & 0xFFFFFFF8) != 0xFFFFFFF8)
  {
    v17 = ~v7 + a2;
    v18 = result;
    bzero(result, ((v9 + ((v8 + 16) & ~v8)) & 0xFFFFFFFFFFFFFFF8) + 8);
    result = v18;
    *v18 = v17;
  }

  if (v14 > 1)
  {
    if (v14 == 2)
    {
      *(result + v10) = v16;
    }

    else
    {
      *(result + v10) = v16;
    }
  }

  else if (v14)
  {
    *(result + v10) = v16;
  }

  return result;
}

void sub_24EE07E64()
{
  if (!qword_27F230A10)
  {
    type metadata accessor for Action();
    v0 = sub_24F92C4A8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F230A10);
    }
  }
}

uint64_t sub_24EE07F00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v70 = a2;
  v54 = a1;
  v2 = a1 - 8;
  v3 = *(a1 - 8);
  MEMORY[0x28223BE20](a1);
  v62 = v4;
  v5 = &v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254FA0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v50 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F230A18);
  v68 = *(v9 - 8);
  v69 = v9;
  MEMORY[0x28223BE20](v9);
  v67 = &v50 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F230A20);
  MEMORY[0x28223BE20](v11);
  v64 = &v50 - v12;
  v13 = *(v2 + 24);
  v14 = sub_24EE08828();
  v15 = *(v2 + 32);
  v72 = v11;
  v73 = v13;
  v74 = v14;
  v75 = v15;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v61 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v57 = &v50 - v17;
  v18 = type metadata accessor for FlowAction();
  v66 = v11;
  v72 = v11;
  v73 = v13;
  v59 = v13;
  v60 = v14;
  v74 = v14;
  v75 = v15;
  v58 = v15;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v20 = sub_24EE08C48(&qword_27F219B98, type metadata accessor for FlowAction);
  v21 = sub_24EE08C48(&qword_27F219BA0, type metadata accessor for FlowAction);
  v63 = OpaqueTypeMetadata2;
  v72 = OpaqueTypeMetadata2;
  v73 = v18;
  v55 = v18;
  v56 = OpaqueTypeConformance2;
  v74 = OpaqueTypeConformance2;
  v75 = v20;
  v52 = v20;
  v51 = v21;
  v76 = v21;
  v22 = swift_getOpaqueTypeMetadata2();
  v53 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v24 = &v50 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v50 = &v50 - v26;
  v27 = sub_24F9232F8();
  v28 = *(*(v27 - 8) + 56);
  v65 = v8;
  v28(v8, 1, 1, v27);
  v29 = v71;
  v30 = *(v71 + 8);
  if (v30)
  {
    v31 = type metadata accessor for Action();
    v32 = sub_24EE08C48(&qword_27F216DE8, type metadata accessor for Action);
  }

  else
  {
    v31 = 0;
    v32 = 0;
    v73 = 0;
    v74 = 0;
  }

  v72 = v30;
  v75 = v31;
  v76 = v32;
  v33 = v54;
  (*(v3 + 16))(v5, v29, v54);
  v34 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v35 = swift_allocObject();
  v36 = v58;
  *(v35 + 16) = v59;
  *(v35 + 24) = v36;
  (*(v3 + 32))(v35 + v34, v5, v33);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F230A38);
  sub_24EE08A94();
  v37 = v67;
  sub_24F921788();
  v38 = v64;
  v39 = &v64[*(v66 + 36)];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222BA8);
  sub_24F924318();
  *v39 = swift_getKeyPath();
  (*(v68 + 32))(v38, v37, v69);
  v40 = v57;
  sub_24F926178();
  sub_24EE08BE0(v38);
  v41 = swift_checkMetadataState();
  v42 = v63;
  v43 = v56;
  v44 = v52;
  v45 = v51;
  sub_24F925E78();
  (*(v61 + 8))(v40, v42);
  v72 = v42;
  v73 = v41;
  v74 = v43;
  v75 = v44;
  v76 = v45;
  v46 = swift_getOpaqueTypeConformance2();
  v47 = v50;
  sub_24E7896B8(v24, v22, v46);
  v48 = *(v53 + 8);
  v48(v24, v22);
  sub_24E7896B8(v47, v22, v46);
  return (v48)(v47, v22);
}
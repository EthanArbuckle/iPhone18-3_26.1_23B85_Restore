unint64_t sub_24EE7A6DC()
{
  result = qword_27F232450;
  if (!qword_27F232450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F232450);
  }

  return result;
}

uint64_t type metadata accessor for MediaPageHeader()
{
  result = qword_27F232468;
  if (!qword_27F232468)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *MediaPageHeader.backgroundColor.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit15MediaPageHeader_backgroundColor);
  v2 = v1;
  return v1;
}

void sub_24EE7A844()
{

  v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit15MediaPageHeader_backgroundColor);
}

uint64_t MediaPageHeader.deinit()
{

  v1 = OBJC_IVAR____TtC12GameStoreKit10PageHeader_title;
  v2 = sub_24F91F008();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_24E6585F8(v0 + OBJC_IVAR____TtC12GameStoreKit10PageHeader_id);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit10PageHeader_impressionMetrics, &qword_27F213E68);

  return v0;
}

uint64_t MediaPageHeader.__deallocating_deinit()
{
  MediaPageHeader.deinit();

  return swift_deallocClassInstance();
}

unint64_t sub_24EE7A9FC()
{
  result = qword_27F232458;
  if (!qword_27F232458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F232458);
  }

  return result;
}

unint64_t sub_24EE7AA54()
{
  result = qword_27F232460;
  if (!qword_27F232460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F232460);
  }

  return result;
}

void *sub_24EE7AABC()
{
  v1 = *(*v0 + OBJC_IVAR____TtC12GameStoreKit15MediaPageHeader_backgroundColor);
  v2 = v1;
  return v1;
}

uint64_t sub_24EE7AC08(uint64_t a1, uint64_t a2)
{
  v4 = sub_24F924098();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_24EE7AC88(uint64_t a1, uint64_t a2)
{
  v4 = sub_24F924098();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t type metadata accessor for ShelfBasedPageScrollActionImplementation()
{
  result = qword_27F232480;
  if (!qword_27F232480)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24EE7AD44()
{
  result = sub_24F924098();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_24EE7ADB4()
{
  result = qword_27F232490;
  if (!qword_27F232490)
  {
    type metadata accessor for ShelfBasedPageScrollAction();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F232490);
  }

  return result;
}

uint64_t sub_24EE7AE0C(uint64_t a1)
{
  v3 = sub_24F928AE8();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + OBJC_IVAR____TtC12GameStoreKit26ShelfBasedPageScrollAction_adamId + 8);
  if (v7 && (v8 = *(a1 + OBJC_IVAR____TtC12GameStoreKit26ShelfBasedPageScrollAction_notPurchasedShelfId + 8)) != 0 && (v9 = *(a1 + OBJC_IVAR____TtC12GameStoreKit26ShelfBasedPageScrollAction_purchasedShelfId + 8)) != 0)
  {
    v22 = *(a1 + OBJC_IVAR____TtC12GameStoreKit26ShelfBasedPageScrollAction_adamId);
    v23 = v1;
    v21 = *(a1 + OBJC_IVAR____TtC12GameStoreKit26ShelfBasedPageScrollAction_notPurchasedShelfId);
    v10 = *(a1 + OBJC_IVAR____TtC12GameStoreKit26ShelfBasedPageScrollAction_purchasedShelfId);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22EBA0);
    sub_24F928FD8();

    sub_24F92A758();
    v11 = *(&v24[0] + 1);
    ObjectType = swift_getObjectType();
    *&v24[0] = v22;
    *(&v24[0] + 1) = v7;
    (*(v11 + 56))(v24, ObjectType, v11);
    v14 = v13;
    v15 = swift_getObjectType();
    (*(v14 + 16))(v24, v15, v14);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    v26 = v24[0];
    v27 = v24[1];
    v28 = v24[2];
    v29 = v25;
    if (v25 >> 60)
    {
      v1 = v23;
      if (v25 >> 60 == 8 && ((v16 = *(&v28 + 1) | *(&v29 + 1), v17 = *(&v27 + 1) | v27 | *(&v26 + 1), v25 == 0x8000000000000000) && !(v16 | *&v24[0] | v28 | v17) || v25 == 0x8000000000000000 && *&v24[0] == 4 && !(v16 | v28 | v17)))
      {

        v10 = v21;
        v9 = v8;
      }

      else
      {

        v18 = sub_24E88D2AC(&v26);
      }
    }

    else
    {
      if (LOBYTE(v24[0]) == 1)
      {

        v10 = v21;
        v9 = v8;
      }

      else
      {
      }

      v1 = v23;
    }
  }

  else
  {
    v10 = *(a1 + OBJC_IVAR____TtC12GameStoreKit26ShelfBasedPageScrollAction_shelfId);
    v9 = *(a1 + OBJC_IVAR____TtC12GameStoreKit26ShelfBasedPageScrollAction_shelfId + 8);
  }

  MEMORY[0x28223BE20](v18);
  *(&v20 - 4) = v1;
  *(&v20 - 3) = v10;
  *(&v20 - 2) = v9;
  sub_24F9276F8();
  sub_24F923B18();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F510);
  (*(v4 + 104))(v6, *MEMORY[0x277D21CA8], v3);
  return sub_24F92A988();
}

uint64_t LinkableText.asMarkdownAttributedString()@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  if (*(v3 + 32) == 1)
  {
    v4 = objc_opt_self();

    v5 = [v4 systemFontOfSize_];
    v6 = _sSo16NSParagraphStyleC12GameStoreKitE4nqmlABvgZ_0();
    v7 = _sSo16NSParagraphStyleC12GameStoreKitE8listItem8withFontABSo6UIFontC_tFZ_0();
    v8 = _sSo16NSParagraphStyleC12GameStoreKitE16numberedListItem8withFontABSo6UIFontC_tFZ_0();

    *&v28 = 10;
    *(&v28 + 1) = 0xE100000000000000;
    *&v29 = v5;
    *(&v29 + 1) = v6;
    *&v30 = 161644770;
    *(&v30 + 1) = 0xA400000000000000;
    *&v31 = v7;
    *(&v31 + 1) = 606245;
    *&v32 = 0xE300000000000000;
    *(&v32 + 1) = v8;
    v9 = type metadata accessor for MarkdownStringGenerator();
    v10 = objc_allocWithZone(v9);
    v11 = &v10[OBJC_IVAR____TtC12GameStoreKitP33_FC1DFA0E314ACDA2FAD6107330E2351423MarkdownStringGenerator_accumulator];
    *v11 = 0;
    v11[1] = 0xE000000000000000;
    v10[OBJC_IVAR____TtC12GameStoreKitP33_FC1DFA0E314ACDA2FAD6107330E2351423MarkdownStringGenerator_didParseEverything] = 1;
    v12 = objc_allocWithZone(ASKNQMLParser);
    sub_24E8EB83C(&v28, v27);
    v13 = sub_24F92B098();

    v14 = [v12 initWithString_];

    *&v10[OBJC_IVAR____TtC12GameStoreKitP33_FC1DFA0E314ACDA2FAD6107330E2351423MarkdownStringGenerator_parser] = v14;
    v15 = &v10[OBJC_IVAR____TtC12GameStoreKitP33_FC1DFA0E314ACDA2FAD6107330E2351423MarkdownStringGenerator_configuration];
    *v15 = v28;
    v16 = v29;
    v17 = v30;
    v18 = v32;
    v15[3] = v31;
    v15[4] = v18;
    v15[1] = v16;
    v15[2] = v17;
    v26.receiver = v10;
    v26.super_class = v9;
    v19 = objc_msgSendSuper2(&v26, sel_init);
    [*&v19[OBJC_IVAR____TtC12GameStoreKitP33_FC1DFA0E314ACDA2FAD6107330E2351423MarkdownStringGenerator_parser] setDelegate_];
    v20 = sub_24F26D57C();
    v22 = v21;

    sub_24E951D6C(&v28);
    sub_24EE7B468(v20, v22, a1);
  }

  else
  {
    v24 = *(v3 + 16);
    v25 = *(v3 + 24);

    sub_24EE7B468(v24, v25, a1);
  }
}

uint64_t sub_24EE7B468@<X0>(void (**a1)(char *, uint64_t)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v133 = a1;
  v107 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F232498);
  MEMORY[0x28223BE20](v5 - 8);
  v126 = &v94 - v6;
  v125 = sub_24F91EE38();
  v103 = *(v125 - 8);
  MEMORY[0x28223BE20](v125);
  v124 = &v94 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22D330);
  MEMORY[0x28223BE20](v117);
  v123 = &v94 - v8;
  v106 = sub_24F91F4A8();
  v102 = *(v106 - 8);
  v118 = v102;
  MEMORY[0x28223BE20](v106);
  v104 = &v94 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v138 = sub_24F91EF38();
  v101 = *(v138 - 8);
  MEMORY[0x28223BE20](v138);
  v137 = &v94 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v127 = sub_24F91EF18();
  v100 = *(v127 - 8);
  v11 = MEMORY[0x28223BE20](v127);
  v140 = &v94 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v135 = &v94 - v13;
  v136 = sub_24F91EF48();
  v99 = *(v136 - 8);
  MEMORY[0x28223BE20](v136);
  v98 = &v94 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215348);
  MEMORY[0x28223BE20](v97);
  v16 = &v94 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530);
  v18 = MEMORY[0x28223BE20](v17 - 8);
  v116 = &v94 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v115 = &v94 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v134 = &v94 - v23;
  MEMORY[0x28223BE20](v22);
  v129 = (&v94 - v24);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215340);
  MEMORY[0x28223BE20](v25 - 8);
  v130 = (&v94 - v26);
  v111 = sub_24F91F008();
  v112 = *(v111 - 8);
  MEMORY[0x28223BE20](v111);
  v28 = &v94 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122 = sub_24F91EE98();
  v121 = *(v122 - 8);
  MEMORY[0x28223BE20](v122);
  v120 = (&v94 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  v119 = sub_24F91EEA8();
  v105 = *(v119 - 1);
  MEMORY[0x28223BE20](v119);
  v113 = &v94 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = sub_24F91EEC8();
  v109 = *(v110 - 8);
  v31 = MEMORY[0x28223BE20](v110);
  v114 = &v94 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v108 = &v94 - v33;
  v147 = MEMORY[0x277D84FA0];
  v34 = *(v3 + 24);
  v37 = *(v34 + 64);
  v36 = v34 + 64;
  v35 = v37;
  v38 = 1 << *(*(v3 + 24) + 32);
  v39 = -1;
  if (v38 < 64)
  {
    v39 = ~(-1 << v38);
  }

  v40 = v39 & v35;
  v41 = (v38 + 63) >> 6;
  v131 = *(v3 + 24);

  v42 = a2;

  v44 = 0;
  v139 = v16;
  v128 = v28;
  if (v40)
  {
    while (1)
    {
      v45 = v42;
      v46 = v44;
LABEL_9:
      v47 = __clz(__rbit64(v40));
      v40 &= v40 - 1;
      v48 = v47 | (v46 << 6);
      v49 = (*(v131 + 48) + 16 * v48);
      v50 = *v49;
      v51 = v49[1];
      v132 = *(*(v131 + 56) + 8 * v48);
      v141 = 0x2F3A6E6F69746361;
      v142 = 0xE90000000000002FLL;

      v52 = sub_24F92C7A8();
      MEMORY[0x253050C20](v52);

      v54 = v141;
      v53 = v142;
      v141 = v50;
      v142 = v51;

      MEMORY[0x253050C20](45, 0xE100000000000000);
      MEMORY[0x253050C20](v54, v53);
      sub_24ED7C5F0(&v141, v141, v142);

      v141 = v133;
      v142 = v45;
      v145 = v50;
      v146 = v51;
      v143 = 91;
      v144 = 0xE100000000000000;
      MEMORY[0x253050C20](v50, v51);
      MEMORY[0x253050C20](10333, 0xE200000000000000);
      MEMORY[0x253050C20](v54, v53);

      MEMORY[0x253050C20](41, 0xE100000000000000);
      sub_24E600AEC();
      v133 = sub_24F92C568();
      v42 = v55;

      if (!v40)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v46 = v44 + 1;
    if (__OFADD__(v44, 1))
    {
      __break(1u);
      return result;
    }

    if (v46 >= v41)
    {
      break;
    }

    v40 = *(v36 + 8 * v46);
    ++v44;
    if (v40)
    {
      v45 = v42;
      v44 = v46;
      goto LABEL_9;
    }
  }

  (*(v105 + 104))(v113, *MEMORY[0x277CC8BA8], v119);
  v121[13](v120, *MEMORY[0x277CC8B98], v122);
  v56 = v108;
  sub_24F91EEB8();
  (*(v109 + 16))(v114, v56, v110);
  v57 = v118 + 56;
  v58 = *(v118 + 56);
  v59 = v106;
  v58(v129, 1, 1, v106);
  v60 = v130;
  sub_24F91EFC8();
  v114 = v58;
  v118 = v57;
  v61 = v112;
  v62 = *(v112 + 56);
  v63 = v111;
  v105 = v112 + 56;
  v96 = v62;
  v62(v60, 0, 1, v111);
  v64 = *(v61 + 32);
  v112 = v61 + 32;
  v95 = v64;
  v64(v128, v60, v63);
  v65 = v98;
  sub_24F91EF68();
  v66 = v99;
  v67 = v136;
  (*(v99 + 16))(v139, v65, v136);
  v68 = *(v97 + 36);
  v69 = sub_24EE7C6CC(&qword_27F215360, MEMORY[0x277CC8C08]);
  sub_24F92BB88();
  (*(v66 + 8))(v65, v67);
  v133 = (v101 + 8);
  v131 = v100 + 32;
  v132 = (v100 + 16);
  v130 = (v102 + 48);
  v121 = (v102 + 32);
  v120 = (v103 + 8);
  v119 = (v102 + 8);
  v129 = (v100 + 8);
  v70 = v104;
  v71 = v127;
  v122 = v68;
  v113 = v69;
  while (1)
  {
    v72 = v137;
    v73 = v139;
    sub_24F92BC08();
    sub_24EE7C6CC(&unk_27F237EA0, MEMORY[0x277CC8BF8]);
    v74 = v138;
    v75 = sub_24F92AFF8();
    (*v133)(v72, v74);
    if (v75)
    {
      break;
    }

    v76 = sub_24F92BC88();
    v77 = v135;
    (*v132)(v135);
    v76(&v141, 0);
    sub_24F92BC18();
    v78 = v140;
    (*v131)(v140, v77, v71);
    sub_24E658540();
    v79 = v134;
    sub_24F91EF28();
    if ((*v130)(v79, 1, v59) == 1)
    {
      (*v129)(v78, v71);
      sub_24E601704(v79, &qword_27F228530);
    }

    else
    {
      (*v121)(v70, v79, v59);
      v80 = v123;
      sub_24F91EF08();
      v81 = v124;
      sub_24F91EE18();
      sub_24F91EE48();
      (*v120)(v81, v125);
      sub_24E601704(v80, &qword_27F22D330);
      v82 = sub_24F92B178();
      v83 = v147;
      v141 = v82;
      v142 = v84;
      MEMORY[0x253050C20](45, 0xE100000000000000);
      sub_24EE7C6CC(&qword_27F21B620, MEMORY[0x277CC9260]);
      v85 = sub_24F92CD88();
      MEMORY[0x253050C20](v85);

      LOBYTE(v83) = sub_24F4D36F8(v141, v142, v83);

      if (v83)
      {
        (*v119)(v70, v59);
        v86 = *v129;
        v87 = v140;
      }

      else
      {
        v88 = v140;
        sub_24F91EF08();
        v89 = v115;
        (v114)(v115, 1, 1, v59);
        sub_24E658594();
        v90 = sub_24F91F048();
        sub_24E99091C(v89, v116);
        sub_24F91F148();
        sub_24E601704(v89, &qword_27F228530);
        v90(&v141, 0);
        sub_24E601704(v80, &qword_27F22D330);
        (*v119)(v70, v59);
        v86 = *v129;
        v87 = v88;
      }

      v91 = v127;
      v86(v87, v127);
      v71 = v91;
    }
  }

  sub_24E601704(v73, &qword_27F215348);
  (*(v109 + 8))(v108, v110);

  v92 = v107;
  v93 = v111;
  v95(v107, v128, v111);
  return v96(v92, 0, 1, v93);
}

uint64_t sub_24EE7C6CC(unint64_t *a1, void (*a2)(uint64_t))
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

double sub_24EE7C714(char a1, double a2)
{
  if (a1)
  {

    *&result = sub_24E69C15C(4.0, a2).n128_u64[0];
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213CD0);
    v4 = swift_allocObject();
    result = *MEMORY[0x277D768C8];
    v5 = *(MEMORY[0x277D768C8] + 8);
    v6 = *(MEMORY[0x277D768C8] + 16);
    v7 = *(MEMORY[0x277D768C8] + 24);
    *(v4 + 16) = xmmword_24F979FB0;
    *(v4 + 32) = xmmword_24F976090;
    v8 = vdupq_n_s64(0xC0C81C8000000000);
    *(v4 + 48) = v8;
    *(v4 + 64) = 0;
    *(v4 + 72) = 0u;
    __asm { FMOV            V6.2D, #2.0 }

    *(v4 + 88) = _Q6;
    __asm { FMOV            V7.2D, #10.0 }

    *(v4 + 104) = _Q7;
    *(v4 + 120) = _Q7;
    *(v4 + 136) = a2;
    *(v4 + 144) = a2;
    *(v4 + 152) = 1;
    *(v4 + 160) = result;
    *(v4 + 168) = v5;
    *(v4 + 176) = v6;
    *(v4 + 184) = v7;
    *(v4 + 192) = xmmword_24F976010;
    *(v4 + 208) = v8;
    *(v4 + 224) = 0;
    *(v4 + 232) = 0u;
    *(v4 + 248) = _Q6;
    *(v4 + 264) = 0x4028000000000000;
    __asm { FMOV            V6.2D, #12.0 }

    *(v4 + 272) = _Q6;
    *(v4 + 288) = 0x4028000000000000;
    *(v4 + 296) = a2;
    *(v4 + 304) = a2;
    *(v4 + 312) = 1;
    *(v4 + 320) = result;
    *(v4 + 328) = v5;
    *(v4 + 336) = v6;
    *(v4 + 344) = v7;
    *(v4 + 352) = xmmword_24F976080;
    *(v4 + 368) = v8;
    *(v4 + 384) = 0;
    *(v4 + 392) = 0u;
    *(v4 + 408) = 0x4008000000000000;
    *(v4 + 416) = xmmword_24F9A9690;
    *(v4 + 432) = _Q6;
    *(v4 + 448) = 0x4028000000000000;
    *(v4 + 456) = a2;
    *(v4 + 464) = a2;
    *(v4 + 472) = 1;
    *(v4 + 480) = result;
    *(v4 + 488) = v5;
    *(v4 + 496) = v6;
    *(v4 + 504) = v7;
    *(v4 + 512) = xmmword_24F976070;
    *(v4 + 528) = v8;
    *(v4 + 544) = 0;
    *(v4 + 552) = 0u;
    *(v4 + 568) = 0x4010000000000000;
    __asm { FMOV            V6.2D, #20.0 }

    *(v4 + 576) = xmmword_24F97EE60;
    *(v4 + 592) = _Q6;
    *(v4 + 608) = 0x4034000000000000;
    *(v4 + 616) = a2;
    *(v4 + 624) = a2;
    *(v4 + 632) = 1;
    *(v4 + 640) = result;
    *(v4 + 648) = v5;
    *(v4 + 656) = v6;
    *(v4 + 664) = v7;
    *(v4 + 672) = xmmword_24F976060;
    *(v4 + 688) = v8;
    *(v4 + 704) = 0;
    *(v4 + 710) = v19;
    *(v4 + 706) = v18;
    *(v4 + 712) = 0u;
    *(v4 + 728) = 0x4014000000000000;
    *(v4 + 736) = xmmword_24F97EE70;
    *(v4 + 752) = _Q6;
    *(v4 + 768) = 0x4034000000000000;
    *(v4 + 776) = a2;
    *(v4 + 784) = a2;
    *(v4 + 792) = 1;
    *(v4 + 796) = *&v17[3];
    *(v4 + 793) = *v17;
    *(v4 + 800) = result;
    *(v4 + 808) = v5;
    *(v4 + 816) = v6;
    *(v4 + 824) = v7;
    *(v4 + 832) = xmmword_24F976050;
    *(v4 + 848) = v8;
    *(v4 + 864) = 0;
    *(v4 + 870) = v22;
    *(v4 + 866) = v21;
    *(v4 + 872) = 0u;
    *(v4 + 888) = 0x4018000000000000;
    *(v4 + 896) = xmmword_24F97EE80;
    *(v4 + 912) = _Q6;
    *(v4 + 928) = 0x4034000000000000;
    *(v4 + 936) = a2;
    *(v4 + 944) = a2;
    *(v4 + 952) = 1;
    *(v4 + 956) = *&v20[3];
    *(v4 + 953) = *v20;
    *(v4 + 960) = result;
    *(v4 + 968) = v5;
    *(v4 + 976) = v6;
    *(v4 + 984) = v7;
    *(v4 + 992) = xmmword_24F976040;
    *(v4 + 1008) = v8;
    *(v4 + 1024) = 0;
    *(v4 + 1030) = v25;
    *(v4 + 1026) = v24;
    *(v4 + 1032) = 0u;
    *(v4 + 1048) = 0x401C000000000000;
    *(v4 + 1056) = xmmword_24F97EE90;
    *(v4 + 1072) = _Q6;
    *(v4 + 1088) = 0x4034000000000000;
    *(v4 + 1096) = a2;
    *(v4 + 1104) = a2;
    *(v4 + 1112) = 1;
    *(v4 + 1116) = *&v23[3];
    *(v4 + 1113) = *v23;
    *(v4 + 1120) = result;
    *(v4 + 1128) = v5;
    *(v4 + 1136) = v6;
    *(v4 + 1144) = v7;
    *(v4 + 1152) = xmmword_24F976030;
    *(v4 + 1168) = v8;
    *(v4 + 1184) = 0;
    *(v4 + 1190) = v28;
    *(v4 + 1186) = v27;
    *(v4 + 1192) = 0u;
    *(v4 + 1208) = 0x4024000000000000;
    *(v4 + 1216) = xmmword_24F9A96A0;
    *(v4 + 1232) = _Q6;
    *(v4 + 1248) = 0x4034000000000000;
    *(v4 + 1256) = a2;
    *(v4 + 1264) = a2;
    *(v4 + 1272) = 1;
    *(v4 + 1276) = *&v26[3];
    *(v4 + 1273) = *v26;
    *(v4 + 1280) = result;
    *(v4 + 1288) = v5;
    *(v4 + 1296) = v6;
    *(v4 + 1304) = v7;
  }

  return result;
}

BOOL Array.isNotEmpty.getter()
{
  sub_24F92B6E8();
  swift_getWitnessTable();
  return (sub_24F92BC58() & 1) == 0;
}

uint64_t sub_24EE7CB00(unint64_t a1, uint64_t a2)
{
  v55 = a2;
  v3 = sub_24F928E68();
  v53 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v49 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F221C40);
  MEMORY[0x28223BE20](v5 - 8);
  v50 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v46 - v8;
  v10 = sub_24F928388();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v46 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v46 - v18;
  v57 = a1;
  sub_24F928398();
  v52 = sub_24F928348();
  v21 = v20;
  v22 = *(v11 + 8);
  v22(v19, v10);
  v51 = v21;
  if (!v21)
  {
    v27 = sub_24F92AC38();
    sub_24EE7D730(&qword_27F2213B8, MEMORY[0x277D22548]);
    swift_allocError();
    *v28 = 0x79654B6568636163;
    v29 = v54;
    v28[1] = 0xE800000000000000;
    v28[2] = v29;
    (*(*(v27 - 8) + 104))(v28, *MEMORY[0x277D22530], v27);
    swift_willThrow();
    v30 = sub_24F91F4A8();
    (*(*(v30 - 8) + 8))(v55, v30);
    return (v22)(v57, v10);
  }

  v56 = v22;
  sub_24F928398();
  sub_24F9281F8();
  v47 = v10;
  v56(v16, v10);
  v23 = v53;
  v24 = *(v53 + 48);
  v25 = v24(v9, 1, v3);
  v48 = v3;
  if (v25 == 1)
  {
    sub_24E9182E0(v9);
    v26 = v50;
LABEL_6:
    v34 = sub_24E608448(MEMORY[0x277D84F90]);
    goto LABEL_7;
  }

  v32 = sub_24F928E48();
  v33 = v9;
  v34 = v32;
  (*(v23 + 8))(v33, v3);
  v26 = v50;
  if (!v34)
  {
    goto LABEL_6;
  }

LABEL_7:
  v35 = v57;
  v36 = v47;
  sub_24F928398();
  sub_24F9281F8();
  v37 = v56;
  v56(v13, v36);
  v38 = v48;
  if (v24(v26, 1, v48) == 1)
  {
    sub_24E9182E0(v26);
    v39 = sub_24E609EE0(MEMORY[0x277D84F90]);
    v37(v35, v36);
  }

  else
  {
    v57 = v34;
    v40 = v53;
    v41 = v49;
    (*(v53 + 32))(v49, v26, v38);
    type metadata accessor for AMSBagKey(0);
    sub_24F92A388();
    sub_24EE7D730(&qword_27F2122C8, type metadata accessor for AMSBagKey);
    v39 = sub_24F928E38();
    v56(v35, v36);
    (*(v40 + 8))(v41, v38);
    v34 = v57;
  }

  v42 = swift_allocObject();
  v43 = v51;
  *(v42 + 16) = v52;
  *(v42 + 24) = v43;
  v44 = OBJC_IVAR____TtC12GameStoreKit14JSJetpackIndex_scriptURL;
  v45 = sub_24F91F4A8();
  (*(*(v45 - 8) + 32))(v42 + v44, v55, v45);
  result = v42;
  *(v42 + OBJC_IVAR____TtC12GameStoreKit14JSJetpackIndex_properties) = v34;
  *(v42 + OBJC_IVAR____TtC12GameStoreKit14JSJetpackIndex_bagOverrides) = v39;
  return result;
}

uint64_t sub_24EE7D154()
{
  v1 = OBJC_IVAR____TtC12GameStoreKit20JSLegacyPackageIndex_scriptURL;
  v2 = sub_24F91F4A8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_24EE7D238()
{
  result = sub_24F91F4A8();
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

uint64_t sub_24EE7D328@<X0>(uint64_t a1@<X2>, void *a2@<X8>)
{
  v14 = a1;
  v3 = sub_24F9285B8();
  MEMORY[0x28223BE20](v3 - 8);
  v4 = sub_24F928388();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213658);
  v9 = sub_24F92B098();
  *a2 = v9;
  (*(v5 + 16))(v7, v14, v4);
  sub_24F9285A8();
  v10 = v15;
  sub_24F92A378();
  if (v10)
  {

    v11 = 1;
  }

  else
  {
    v11 = 0;
  }

  return (*(*(v8 - 8) + 56))(a2, v11, 1, v8);
}

uint64_t sub_24EE7D500()
{

  v1 = OBJC_IVAR____TtC12GameStoreKit14JSJetpackIndex_scriptURL;
  v2 = sub_24F91F4A8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_24EE7D5EC()
{
  result = sub_24F91F4A8();
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

uint64_t sub_24EE7D6A4@<X0>(uint64_t *a1@<X2>, uint64_t a2@<X8>)
{
  v4 = *v2;
  v5 = *a1;
  v6 = sub_24F91F4A8();
  v7 = *(*(v6 - 8) + 16);

  return v7(a2, v4 + v5, v6);
}

uint64_t sub_24EE7D730(unint64_t *a1, void (*a2)(uint64_t))
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

BOOL Date.hasPassed(hourOfDay:since:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v81 = a1;
  v87 = sub_24F91F898();
  v5 = *(v87 - 8);
  MEMORY[0x28223BE20](v87);
  *&v79 = &v73 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EC30);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v73 - v8;
  v10 = sub_24F91F648();
  v77 = *(v10 - 8);
  v78 = v10;
  MEMORY[0x28223BE20](v10);
  v76 = &v73 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_24F91ED78();
  v84 = *(v12 - 8);
  v85 = v12;
  MEMORY[0x28223BE20](v12);
  v82 = &v73 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  *&v80 = &v73 - v15;
  MEMORY[0x28223BE20](v16);
  v18 = &v73 - v17;
  v19 = sub_24F91F7D8();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = &v73 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_24F91F8A8();
  v86 = *(v23 - 8);
  v24 = MEMORY[0x28223BE20](v23);
  v26 = &v73 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v20 + 104))(v22, *MEMORY[0x277CC9830], v19, v24);
  sub_24F91F7E8();
  (*(v20 + 8))(v22, v19);
  v27 = a2;
  v83 = v3;
  if (sub_24F91F868())
  {
    v82 = v23;
    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22E080);
    v29 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v77 = *(v5 + 72);
    v78 = v28;
    v30 = swift_allocObject();
    v79 = xmmword_24F93DE60;
    *(v30 + 16) = xmmword_24F93DE60;
    v31 = *(v5 + 104);
    LODWORD(v76) = *MEMORY[0x277CC9980];
    v32 = v87;
    v75 = v31;
    v31(v30 + v29);
    sub_24E8026A0(v30);
    v33 = v26;
    swift_setDeallocating();
    v74 = *(v5 + 8);
    v74(v30 + v29, v32);
    swift_deallocClassInstance();
    sub_24F91F818();

    v34 = sub_24F91ECC8();
    v35 = v18;
    if (v36)
    {
      if (qword_27F210568 != -1)
      {
        swift_once();
      }

      v37 = sub_24F92AAE8();
      __swift_project_value_buffer(v37, qword_27F39C398);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
      sub_24F928468();
      *(swift_allocObject() + 16) = v79;
      sub_24F9283A8();
      sub_24F92A588();

      v84[1](v18, v85);
      (*(v86 + 8))(v33, v82);
      return 0;
    }

    v45 = v34;
    v46 = swift_allocObject();
    *(v46 + 16) = v79;
    v47 = v87;
    v75(v46 + v29, v76, v87);
    sub_24E8026A0(v46);
    swift_setDeallocating();
    v74(v46 + v29, v47);
    swift_deallocClassInstance();
    v48 = v80;
    sub_24F91F818();

    v49 = sub_24F91ECC8();
    if (v50)
    {
      v51 = v82;
      if (qword_27F210568 != -1)
      {
        swift_once();
      }

      v52 = sub_24F92AAE8();
      __swift_project_value_buffer(v52, qword_27F39C398);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
      sub_24F928468();
      *(swift_allocObject() + 16) = v79;
      sub_24F9283A8();
      sub_24F92A588();

      v53 = v85;
      v54 = v84[1];
      v54(v48, v85);
      v54(v18, v53);
      (*(v86 + 8))(v33, v51);
      return 0;
    }

    v66 = v49;
    v67 = v85;
    v68 = v84[1];
    v68(v48, v85);
    v68(v35, v67);
    (*(v86 + 8))(v33, v82);
    return v45 < v81 && v66 >= v81;
  }

  else
  {
    v38 = v87;
    if (sub_24F91F828())
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22E080);
      v39 = (*(v5 + 80) + 32) & ~*(v5 + 80);
      v40 = swift_allocObject();
      v80 = xmmword_24F93DE60;
      *(v40 + 16) = xmmword_24F93DE60;
      (*(v5 + 104))(v40 + v39, *MEMORY[0x277CC9980], v38);
      sub_24E8026A0(v40);
      swift_setDeallocating();
      (*(v5 + 8))(v40 + v39, v38);
      swift_deallocClassInstance();
      v41 = v82;
      sub_24F91F818();

      v42 = sub_24F91ECC8();
      if (v43)
      {
        if (qword_27F210568 != -1)
        {
          swift_once();
        }

        v44 = sub_24F92AAE8();
        __swift_project_value_buffer(v44, qword_27F39C398);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
        sub_24F928468();
        *(swift_allocObject() + 16) = v80;
        sub_24F9283A8();
        sub_24F92A588();

        v84[1](v41, v85);
        (*(v86 + 8))(v26, v23);
        return 0;
      }

      v65 = v42;
      v84[1](v41, v85);
      (*(v86 + 8))(v26, v23);
      return v65 >= v81;
    }

    else
    {
      v55 = v27;
      v82 = v23;
      v56 = v26;
      v57 = *(v5 + 104);
      v58 = v79;
      LODWORD(v85) = *MEMORY[0x277CC9968];
      v59 = v38;
      v84 = v57;
      (v57)(v79);
      sub_24F91F858();
      v60 = *(v5 + 8);
      v60(v58, v59);
      v62 = v77;
      v61 = v78;
      if ((*(v77 + 48))(v9, 1, v78) == 1)
      {
        sub_24E728998(v9);
        if (qword_27F210568 != -1)
        {
          swift_once();
        }

        v63 = sub_24F92AAE8();
        __swift_project_value_buffer(v63, qword_27F39C398);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
        sub_24F928468();
        *(swift_allocObject() + 16) = xmmword_24F93DE60;
        sub_24F9283A8();
        sub_24F92A588();

        (*(v86 + 8))(v56, v82);
        return 0;
      }

      v70 = *(v62 + 32);
      v83 = v55;
      v71 = v76;
      v70(v76, v9, v61);
      (v84)(v58, v85, v59);
      v72 = sub_24F91F878();
      v60(v58, v59);
      (*(v62 + 8))(v71, v61);
      (*(v86 + 8))(v56, v82);
      return (v72 + 1) < 2;
    }
  }
}

uint64_t sub_24EE7E4F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216A80);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 254)
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 > 1)
    {
      return (v10 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v11 = type metadata accessor for CommonCardAttributes(0);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 24);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_24EE7E634(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216A80);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 254)
  {
    *(a1 + *(a4 + 20) + 8) = -a2;
  }

  else
  {
    v11 = type metadata accessor for CommonCardAttributes(0);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t type metadata accessor for ActivityCardVisualView()
{
  result = qword_27F2324C0;
  if (!qword_27F2324C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24EE7E7B0()
{
  sub_24EE7E88C(319, &qword_27F216A98, MEMORY[0x277CDFB98]);
  if (v0 <= 0x3F)
  {
    sub_24EE7E88C(319, &qword_27F214D30, type metadata accessor for CardSafeArea);
    if (v1 <= 0x3F)
    {
      type metadata accessor for CommonCardAttributes(319);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_24EE7E88C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_24F923578();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_24EE7E8FC()
{
  v1 = sub_24F924848();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ActivityCardVisualView();
  v6 = *(v0 + *(v5 + 28));
  if (v6 > 2)
  {
    if (v6 == 3)
    {
      v13 = (v0 + *(v5 + 20));
      v14 = *v13;
      v15 = *(v13 + 8);

      if ((v15 & 1) == 0)
      {
        sub_24F92BDC8();
        v16 = sub_24F9257A8();
        sub_24F921FD8();

        sub_24F924838();
        swift_getAtKeyPath();

        (*(v2 + 8))(v4, v1);
        v14 = v22;
      }

      swift_getKeyPath();
      v22 = v14;
      sub_24EE8055C(&qword_27F214D10, type metadata accessor for CardSafeArea);
      sub_24F91FD88();

      v12 = *(v14 + 16);

      sub_24F925868();
      goto LABEL_19;
    }

    if (v6 != 4)
    {
      v17 = (v0 + *(v5 + 20));
      v18 = *v17;
      v19 = *(v17 + 8);

      if ((v19 & 1) == 0)
      {
        sub_24F92BDC8();
        v20 = sub_24F9257A8();
        sub_24F921FD8();

        sub_24F924838();
        swift_getAtKeyPath();

        (*(v2 + 8))(v4, v1);
        v18 = v22;
      }

      swift_getKeyPath();
      v22 = v18;
      sub_24EE8055C(&qword_27F214D10, type metadata accessor for CardSafeArea);
      sub_24F91FD88();

      v12 = *(v18 + 16);

      sub_24F925808();
      goto LABEL_19;
    }

LABEL_10:
    v8 = (v0 + *(v5 + 20));
    v9 = *v8;
    v10 = *(v8 + 8);

    if ((v10 & 1) == 0)
    {
      sub_24F92BDC8();
      v11 = sub_24F9257A8();
      sub_24F921FD8();

      sub_24F924838();
      swift_getAtKeyPath();

      (*(v2 + 8))(v4, v1);
      v9 = v22;
    }

    swift_getKeyPath();
    v22 = v9;
    sub_24EE8055C(&qword_27F214D10, type metadata accessor for CardSafeArea);
    sub_24F91FD88();

    v12 = *(v9 + 16);

    sub_24F925818();
LABEL_19:
    sub_24EA91914(v12);
    return;
  }

  if (*(v0 + *(v5 + 28)))
  {
    v7 = v6 == 1;
  }

  else
  {
    v7 = 0;
  }

  if (!v7)
  {
    goto LABEL_10;
  }
}

uint64_t sub_24EE7ED64@<X0>(uint64_t a1@<X8>)
{
  v42 = a1;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2324D0);
  MEMORY[0x28223BE20](v37);
  v41 = &v36 - v2;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2324D8);
  MEMORY[0x28223BE20](v40);
  v36 = &v36 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221E48);
  v5 = v4 - 8;
  MEMORY[0x28223BE20](v4);
  v7 = &v36 - v6;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2324E0);
  MEMORY[0x28223BE20](v38);
  v39 = &v36 - v8;
  sub_24EE7F344(v1, v7);
  sub_24EE7E8FC();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v17 = sub_24F925808();
  v18 = &v7[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221E68) + 36)];
  *v18 = v17;
  *(v18 + 1) = v10;
  *(v18 + 2) = v12;
  *(v18 + 3) = v14;
  *(v18 + 4) = v16;
  v18[40] = 0;
  v19 = sub_24F927618();
  v21 = v20;
  sub_24EE801B0(v1, v43);
  v22 = v43[0];
  v23 = v43[1];
  v25 = v43[2];
  v24 = v44;
  v26 = v45;
  v27 = &v7[*(v5 + 44)];
  *v27 = v43[0];
  *(v27 + 1) = v23;
  *(v27 + 2) = v25;
  *(v27 + 3) = v24;
  *(v27 + 4) = v26;
  *(v27 + 5) = v19;
  *(v27 + 6) = v21;
  sub_24EE80414(v22, v23);
  sub_24EE80428(v22, v23);
  v28 = *(v1 + *(type metadata accessor for ActivityCardVisualView() + 28));
  if (v28 < 4)
  {
    v29 = v39;
  }

  else
  {
    v29 = v39;
    if (v28 != 4)
    {

      sub_24E92490C(1);
      sub_24E601704(v7, &qword_27F221E48);

      v44 = sub_24F925048();
      v45 = MEMORY[0x277CE0420];
      __swift_allocate_boxed_opaque_existential_1(v43);
      sub_24F925258();
      v31 = v41;
      v32 = v40;
      goto LABEL_8;
    }
  }

  v30 = sub_24F92CE08();

  sub_24E92490C(v30 & 1);
  sub_24E601704(v7, &qword_27F221E48);
  v31 = v41;
  v32 = v40;
  v33 = sub_24F92CE08();

  v44 = sub_24F925048();
  v45 = MEMORY[0x277CE0420];
  __swift_allocate_boxed_opaque_existential_1(v43);
  sub_24F925258();
  if (v33)
  {
LABEL_8:
    v34 = v36;
    sub_24E615E00(v43, &v36[*(v32 + 36)]);
    sub_24E60169C(v29, v34, &qword_27F2324E0);
    sub_24E60169C(v34, v31, &qword_27F2324D8);
    swift_storeEnumTagMultiPayload();
    sub_24EE8043C();
    sub_24EE804C8();
    sub_24F924E28();
    sub_24E601704(v34, &qword_27F2324D8);
    goto LABEL_9;
  }

  sub_24E60169C(v29, v31, &qword_27F2324E0);
  swift_storeEnumTagMultiPayload();
  sub_24EE8043C();
  sub_24EE804C8();
  sub_24F924E28();
LABEL_9:
  sub_24E601704(v29, &qword_27F2324E0);
  return __swift_destroy_boxed_opaque_existential_1(v43);
}

uint64_t sub_24EE7F344@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v105 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214148);
  v87 = *(v3 - 8);
  MEMORY[0x28223BE20](v3 - 8);
  v88 = v4;
  v89 = &v85 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v86 = &v85 - v6;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2324F8);
  MEMORY[0x28223BE20](v91);
  v92 = (&v85 - v7);
  v94 = type metadata accessor for CardCompactAvatarView();
  MEMORY[0x28223BE20](v94);
  v90 = &v85 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221EB8);
  MEMORY[0x28223BE20](v102);
  v93 = &v85 - v9;
  v104 = type metadata accessor for CardElementView.PrimaryMixedMediaView(0);
  MEMORY[0x28223BE20](v104);
  v97 = (&v85 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB0);
  MEMORY[0x28223BE20](v11 - 8);
  v95 = &v85 - v12;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F232500);
  MEMORY[0x28223BE20](v101);
  v99 = &v85 - v13;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F232508);
  MEMORY[0x28223BE20](v103);
  v15 = &v85 - v14;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221EA8);
  MEMORY[0x28223BE20](v100);
  v98 = &v85 - v16;
  v17 = sub_24F9289E8();
  v106 = *(v17 - 8);
  v107 = v17;
  v18 = *(v106 + 64);
  MEMORY[0x28223BE20](v17);
  v96 = &v85 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v85 - v20;
  v22 = sub_24F924218();
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v25 = &v85 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v28 = &v85 - v27;
  v29 = a1;
  sub_24F7699D8(&v85 - v27);
  sub_24F924208();
  sub_24EE8055C(&qword_27F216C88, MEMORY[0x277CDFB98]);
  LOBYTE(a1) = sub_24F92C678();
  v30 = *(v23 + 8);
  v30(v25, v22);
  v30(v28, v22);
  if ((a1 & 1) == 0)
  {
    v37 = v15;
    v85 = v21;
    v38 = v104;
    v39 = v106;
    v40 = type metadata accessor for ActivityCardVisualView();
    v41 = v29 + *(v40 + 24);
    v42 = type metadata accessor for CommonCardAttributes(0);
    v43 = (v41 + *(v42 + 36));
    v44 = *v43;
    v45 = v29;
    if (*v43)
    {
      v46 = v43[1];
      v47 = *(v29 + *(v40 + 28));
      v48 = v97;
      *v97 = v44;
      *(v48 + 8) = v46;
      *(v48 + 16) = v47;
      v49 = v38[6];
      *(v48 + v49) = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254ED0);
      swift_storeEnumTagMultiPayload();
      v50 = v38[7];
      *(v48 + v50) = swift_getKeyPath();
      swift_storeEnumTagMultiPayload();
      v51 = v48 + v38[8];
      *v51 = swift_getKeyPath();
      *(v51 + 8) = 0;
      sub_24EE807E8(v48, v37, type metadata accessor for CardElementView.PrimaryMixedMediaView);
      swift_storeEnumTagMultiPayload();
      sub_24EE8055C(&qword_27F214C28, MEMORY[0x277D21C48]);
      sub_24EE8055C(&qword_27F2193C0, type metadata accessor for CardElementView.PrimaryMixedMediaView);

      v52 = v98;
      sub_24F924E28();
      sub_24E60169C(v52, v99, &qword_27F221EA8);
      swift_storeEnumTagMultiPayload();
      sub_24E92C9D8();
      sub_24E92CAC4();
      v36 = v105;
      sub_24F924E28();
      sub_24E601704(v52, &qword_27F221EA8);
      sub_24EE80850(v48, type metadata accessor for CardElementView.PrimaryMixedMediaView);
    }

    else
    {
      v53 = v41 + *(v42 + 28);
      v54 = v95;
      sub_24E60169C(v53, v95, &qword_27F213FB0);
      v55 = v39;
      v56 = *(v39 + 48);
      v57 = v107;
      if (v56(v54, 1, v107) == 1)
      {
        sub_24E601704(v54, &qword_27F213FB0);
        v35 = 1;
        v36 = v105;
        goto LABEL_12;
      }

      v58 = *(v55 + 32);
      v59 = v96;
      v58(v96, v54, v57);
      if (*(v45 + *(v40 + 28)) == 1)
      {
        v60 = v85;
        (*(v55 + 16))(v85, v59, v57);
        v61 = v90;
        v62 = &v90[*(v94 + 20)];
        type metadata accessor for CardSafeArea(0);
        sub_24EE8055C(&qword_27F214D10, type metadata accessor for CardSafeArea);
        *v62 = sub_24F923598();
        v62[8] = v63 & 1;
        v64 = type metadata accessor for PlayerAvatarView(0);
        v65 = v61 + v64[6];
        *(v65 + 32) = 0;
        *v65 = 0u;
        *(v65 + 16) = 0u;
        v58(v61, v60, v57);
        type metadata accessor for PlayerAvatarView.AvatarType(0);
        swift_storeEnumTagMultiPayload();
        v66 = v64[5];
        v67 = type metadata accessor for PlayerAvatarView.Overlay(0);
        (*(*(v67 - 8) + 56))(v61 + v66, 1, 1, v67);
        *(v61 + v64[7]) = 7;
        sub_24EE807E8(v61, v92, type metadata accessor for CardCompactAvatarView);
        swift_storeEnumTagMultiPayload();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2141C0);
        sub_24EE8055C(&qword_27F219ED8, type metadata accessor for CardCompactAvatarView);
        sub_24E602068(&qword_27F2141B8, &qword_27F2141C0);
        v68 = v93;
        sub_24F924E28();
        sub_24EE80850(v61, type metadata accessor for CardCompactAvatarView);
      }

      else
      {
        v69 = sub_24F922348();
        v70 = v86;
        (*(*(v69 - 8) + 56))(v86, 1, 1, v69);
        v71 = *MEMORY[0x277CEE240];
        v72 = v85;
        (*(v55 + 16))(v85, v59, v57);
        v73 = v70;
        v74 = v89;
        sub_24EE805A4(v73, v89);
        v75 = (*(v55 + 80) + 16) & ~*(v55 + 80);
        v76 = (v18 + v75 + 7) & 0xFFFFFFFFFFFFFFF8;
        v77 = (*(v87 + 80) + v76 + 8) & ~*(v87 + 80);
        v78 = v77 + v88;
        v79 = swift_allocObject();
        v58((v79 + v75), v72, v107);
        *(v79 + v76) = v71;
        v80 = v79 + v77;
        v57 = v107;
        sub_24EE805A4(v74, v80);
        *(v79 + v78) = 1;
        v81 = v92;
        *v92 = sub_24E623C20;
        v81[1] = v79;
        swift_storeEnumTagMultiPayload();
        v82 = v71;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2141C0);
        sub_24EE8055C(&qword_27F219ED8, type metadata accessor for CardCompactAvatarView);
        sub_24E602068(&qword_27F2141B8, &qword_27F2141C0);
        v68 = v93;
        sub_24F924E28();
      }

      sub_24E60169C(v68, v99, &qword_27F221EB8);
      swift_storeEnumTagMultiPayload();
      sub_24E92C9D8();
      sub_24E92CAC4();
      v36 = v105;
      sub_24F924E28();
      sub_24E601704(v68, &qword_27F221EB8);
      (*(v106 + 8))(v96, v57);
    }

    v35 = 0;
    goto LABEL_12;
  }

  sub_24F9289D8();
  v32 = v106;
  v31 = v107;
  (*(v106 + 16))(v15, v21, v107);
  swift_storeEnumTagMultiPayload();
  sub_24EE8055C(&qword_27F214C28, MEMORY[0x277D21C48]);
  sub_24EE8055C(&qword_27F2193C0, type metadata accessor for CardElementView.PrimaryMixedMediaView);
  v33 = v98;
  sub_24F924E28();
  sub_24E60169C(v33, v99, &qword_27F221EA8);
  swift_storeEnumTagMultiPayload();
  sub_24E92C9D8();
  sub_24E92CAC4();
  v34 = v105;
  sub_24F924E28();
  sub_24E601704(v33, &qword_27F221EA8);
  (*(v32 + 8))(v21, v31);
  v35 = 0;
  v36 = v34;
LABEL_12:
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221E98);
  return (*(*(v83 - 8) + 56))(v36, v35, 1, v83);
}

uint64_t sub_24EE801B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for ActivityCardVisualView();
  v5 = *(a1 + *(v4 + 28));
  if (v5 == 3)
  {
    goto LABEL_7;
  }

  v6 = sub_24F92CE08();

  if (v6)
  {
    goto LABEL_9;
  }

  if (v5 <= 2 && v5 > 1)
  {
LABEL_7:

    goto LABEL_9;
  }

  v7 = sub_24F92CE08();

  if ((v7 & 1) == 0)
  {
    v14 = 0;
    v15 = xmmword_24F9406F0;
    v11 = 0.0;
    v13 = 0;
    goto LABEL_13;
  }

LABEL_9:
  v9 = a1 + *(v4 + 24);
  if (*(v9 + *(type metadata accessor for CommonCardAttributes(0) + 52) + 8))
  {
    sub_24F927878();
    v11 = v10;
    v13 = v12;
    v14 = 0x4020000000000000;
  }

  else
  {
    v14 = 0;
    v11 = 0.5;
    v13 = 0x3FD999999999999ALL;
  }

  result = sub_24F926F28();
  v15 = v16;
LABEL_13:
  *a2 = v15;
  *(a2 + 16) = v14;
  *(a2 + 24) = v11;
  *(a2 + 32) = v13;
  return result;
}

uint64_t sub_24EE80414(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t sub_24EE80428(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

unint64_t sub_24EE8043C()
{
  result = qword_27F2324E8;
  if (!qword_27F2324E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2324D8);
    sub_24EE804C8();
    sub_24E63E080();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2324E8);
  }

  return result;
}

unint64_t sub_24EE804C8()
{
  result = qword_27F2324F0;
  if (!qword_27F2324F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2324E0);
    sub_24E92C644();
    sub_24E92C700();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2324F0);
  }

  return result;
}

uint64_t sub_24EE8055C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24EE805A4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214148);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24EE80614()
{
  v1 = sub_24F9289E8();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214148) - 8);
  v6 = (v4 + *(v5 + 80) + 8) & ~*(v5 + 80);
  (*(v2 + 8))(v0 + v3, v1);

  v7 = sub_24F922348();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(v0 + v6, 1, v7))
  {
    (*(v8 + 8))(v0 + v6, v7);
  }

  return swift_deallocObject();
}

uint64_t sub_24EE807E8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24EE80850(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_24EE808B4()
{
  result = qword_27F232510;
  if (!qword_27F232510)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F232518);
    sub_24EE8043C();
    sub_24EE804C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F232510);
  }

  return result;
}

uint64_t BundleSearchResult.__allocating_init(id:lockup:condensedBehavior:impressionMetrics:searchAdOpportunity:)(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5)
{
  v34 = a5;
  v9 = sub_24F91F6B8();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v33 - v14;
  v16 = swift_allocObject();
  v17 = *a3;
  *(v16 + OBJC_IVAR____TtC12GameStoreKit18BundleSearchResult_lockup) = a2;
  sub_24E60169C(a1, v40, &qword_27F235830);
  v18 = *(a2 + 264);
  if (v18)
  {
    v19 = type metadata accessor for Action();
    v33 = sub_24EE81B98(&qword_27F216DE8, type metadata accessor for Action);
  }

  else
  {
    v19 = 0;
    v33 = 0;
  }

  sub_24E60169C(a4, v15, &qword_27F213E68);
  *(v16 + OBJC_IVAR____TtC12GameStoreKit12SearchResult_searchAdOpportunity) = 0;
  sub_24E60169C(v40, &v37, &qword_27F235830);
  if (*(&v38 + 1))
  {
    v20 = v38;
    *(v16 + 24) = v37;
    *(v16 + 40) = v20;
    *(v16 + 56) = v39;
  }

  else
  {

    sub_24F91F6A8();
    v21 = sub_24F91F668();
    v22 = v9;
    v23 = v19;
    v24 = a4;
    v25 = v21;
    v26 = v10;
    v27 = a1;
    v28 = v17;
    v30 = v29;
    (*(v26 + 8))(v12, v22);
    v35 = v25;
    v36 = v30;
    a4 = v24;
    v19 = v23;
    v17 = v28;
    a1 = v27;
    sub_24F92C7F8();
    sub_24E601704(&v37, &qword_27F235830);
  }

  sub_24E601704(a4, &qword_27F213E68);
  sub_24E601704(a1, &qword_27F235830);
  sub_24E601704(v40, &qword_27F235830);
  *(v16 + 64) = v18;
  *(v16 + 72) = 0;
  *(v16 + 80) = 0;
  *(v16 + 88) = v19;
  *(v16 + 96) = v33;
  sub_24E65E0D4(v15, v16 + OBJC_IVAR____TtC12GameStoreKit12SearchResult_impressionMetrics);
  *(v16 + 17) = 0;
  *(v16 + 16) = v17;
  v31 = OBJC_IVAR____TtC12GameStoreKit12SearchResult_searchAdOpportunity;
  swift_beginAccess();
  *(v16 + v31) = v34;
  return v16;
}

uint64_t BundleSearchResult.init(id:lockup:condensedBehavior:impressionMetrics:searchAdOpportunity:)(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v37 = a5;
  v11 = sub_24F91F6B8();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v35 - v16;
  v18 = *a3;
  *(v6 + OBJC_IVAR____TtC12GameStoreKit18BundleSearchResult_lockup) = a2;
  sub_24E60169C(a1, v46, &qword_27F235830);
  v19 = *(a2 + 264);
  if (v19)
  {
    v20 = type metadata accessor for Action();
    v36 = sub_24EE81B98(&qword_27F216DE8, type metadata accessor for Action);
  }

  else
  {
    v20 = 0;
    v36 = 0;
  }

  sub_24E60169C(a4, v17, &qword_27F213E68);
  *(v6 + OBJC_IVAR____TtC12GameStoreKit12SearchResult_searchAdOpportunity) = 0;
  sub_24E60169C(v46, &v40, &qword_27F235830);
  if (*(&v41 + 1))
  {
    v43 = v40;
    v44 = v41;
    v45 = v42;
  }

  else
  {

    sub_24F91F6A8();
    v21 = sub_24F91F668();
    v22 = v12;
    v23 = a4;
    v24 = v21;
    v25 = v11;
    v26 = a1;
    v27 = v20;
    v28 = v18;
    v30 = v29;
    (*(v22 + 8))(v14, v25);
    v38 = v24;
    v39 = v30;
    a4 = v23;
    v18 = v28;
    v20 = v27;
    a1 = v26;
    sub_24F92C7F8();
    sub_24E601704(&v40, &qword_27F235830);
  }

  sub_24E601704(a4, &qword_27F213E68);
  sub_24E601704(a1, &qword_27F235830);
  sub_24E601704(v46, &qword_27F235830);
  v31 = v44;
  *(v6 + 24) = v43;
  *(v6 + 40) = v31;
  *(v6 + 56) = v45;
  *(v6 + 64) = v19;
  *(v6 + 72) = 0;
  *(v6 + 80) = 0;
  v32 = v36;
  *(v6 + 88) = v20;
  *(v6 + 96) = v32;
  sub_24E65E0D4(v17, v6 + OBJC_IVAR____TtC12GameStoreKit12SearchResult_impressionMetrics);
  *(v6 + 17) = 0;
  *(v6 + 16) = v18;
  v33 = OBJC_IVAR____TtC12GameStoreKit12SearchResult_searchAdOpportunity;
  swift_beginAccess();
  *(v6 + v33) = v37;

  return v6;
}

uint64_t BundleSearchResult.clickSender.getter@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC12GameStoreKit18BundleSearchResult_lockup);
  a1[3] = type metadata accessor for Lockup();
  *a1 = v3;
}

uint64_t BundleSearchResult.deinit()
{
  sub_24E6585F8(v0 + 24);
  sub_24E601704(v0 + 64, qword_27F21B590);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit12SearchResult_impressionMetrics, &qword_27F213E68);

  return v0;
}

uint64_t BundleSearchResult.__deallocating_deinit()
{
  sub_24E6585F8(v0 + 24);
  sub_24E601704(v0 + 64, qword_27F21B590);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit12SearchResult_impressionMetrics, &qword_27F213E68);

  return swift_deallocClassInstance();
}

uint64_t sub_24EE81208@<X0>(void *a1@<X8>)
{
  v3 = *(*v1 + OBJC_IVAR____TtC12GameStoreKit18BundleSearchResult_lockup);
  a1[3] = type metadata accessor for Lockup();
  *a1 = v3;
}

uint64_t sub_24EE81274(char *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  MEMORY[0x28223BE20](v4 - 8);
  v65 = v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v64 = v53 - v7;
  v59 = sub_24F91F6B8();
  v58 = *(v59 - 8);
  MEMORY[0x28223BE20](v59);
  v63 = v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_24F9285B8();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v62 = v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = v53 - v13;
  v67 = sub_24F928388();
  v15 = *(v67 - 8);
  MEMORY[0x28223BE20](v67);
  v61 = v53 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v60 = v53 - v18;
  MEMORY[0x28223BE20](v19);
  v21 = v53 - v20;
  v68 = a1;
  sub_24F928398();
  v22 = *(v10 + 16);
  v22(v14, a2, v9);
  type metadata accessor for MixedMediaLockup();
  swift_allocObject();
  v23 = v66;
  v24 = MixedMediaLockup.init(deserializing:using:)(v21, v14);
  if (v23)
  {
    (*(v10 + 8))(a2, v9);
    (*(v15 + 8))(v68, v67);
  }

  else
  {
    v25 = v24;
    v54 = v15;
    v53[0] = v22;
    v53[1] = v10 + 16;
    v55 = 0;
    v56 = v10;
    v57 = v9;
    v66 = a2;
    v26 = v60;
    sub_24F928398();
    v27 = sub_24F928348();
    if (v28)
    {
      v74 = v27;
      v75 = v28;
    }

    else
    {
      v29 = v63;
      sub_24F91F6A8();
      v30 = sub_24F91F668();
      v32 = v31;
      (*(v58 + 8))(v29, v59);
      v74 = v30;
      v75 = v32;
    }

    sub_24F92C7F8();
    v33 = *(v54 + 8);
    v34 = (v54 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v35 = v67;
    v33(v26, v67);
    v36 = v66;
    v37 = v57;
    v38 = v61;
    sub_24F928398();
    sub_24EABA874();
    sub_24F928208();
    v60 = v34;
    v33(v38, v35);
    LODWORD(v54) = v77[63];
    sub_24E60169C(v25 + OBJC_IVAR____TtC12GameStoreKit6Lockup_impressionMetrics, v64, &qword_27F213E68);
    type metadata accessor for SearchAdOpportunity();

    sub_24F928398();
    (v53[0])(v62, v36, v37);
    sub_24EE81B98(&qword_27F227228, type metadata accessor for SearchAdOpportunity);
    sub_24F929548();
    v39 = v76;
    type metadata accessor for BundleSearchResult();
    a2 = swift_allocObject();
    *(a2 + OBJC_IVAR____TtC12GameStoreKit18BundleSearchResult_lockup) = v25;
    sub_24E60169C(v77, &v74, &qword_27F235830);
    v40 = *(v25 + 264);

    if (v40)
    {
      v41 = type metadata accessor for Action();
      v42 = sub_24EE81B98(&qword_27F216DE8, type metadata accessor for Action);
    }

    else
    {
      v41 = 0;
      v42 = 0;
    }

    v43 = v56;
    v44 = v63;
    v45 = v64;
    sub_24E60169C(v64, v65, &qword_27F213E68);
    *(a2 + OBJC_IVAR____TtC12GameStoreKit12SearchResult_searchAdOpportunity) = 0;
    sub_24E60169C(&v74, &v71, &qword_27F235830);
    if (*(&v72 + 1))
    {
      v46 = v72;
      *(a2 + 24) = v71;
      *(a2 + 40) = v46;
      *(a2 + 56) = v73;
    }

    else
    {
      sub_24F91F6A8();
      v47 = sub_24F91F668();
      v48 = v44;
      v50 = v49;
      (*(v58 + 8))(v48, v59);
      v69 = v47;
      v70 = v50;
      v43 = v56;
      sub_24F92C7F8();
      sub_24E601704(&v71, &qword_27F235830);
    }

    (*(v43 + 8))(v66, v57);
    v33(v68, v67);
    sub_24E601704(&v74, &qword_27F235830);
    sub_24E601704(v45, &qword_27F213E68);
    sub_24E601704(v77, &qword_27F235830);
    *(a2 + 64) = v40;
    *(a2 + 72) = 0;
    *(a2 + 80) = 0;
    *(a2 + 88) = v41;
    *(a2 + 96) = v42;
    sub_24E65E0D4(v65, a2 + OBJC_IVAR____TtC12GameStoreKit12SearchResult_impressionMetrics);
    *(a2 + 17) = 0;
    *(a2 + 16) = v54;
    v51 = OBJC_IVAR____TtC12GameStoreKit12SearchResult_searchAdOpportunity;
    swift_beginAccess();
    *(a2 + v51) = v39;
  }

  return a2;
}

uint64_t type metadata accessor for BundleSearchResult()
{
  result = qword_27F232520;
  if (!qword_27F232520)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24EE81B98(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t CanaryFieldsProvider.category.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_24F92A2D8();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

id CanaryFieldsProvider.addMetricsFields(into:using:)(uint64_t a1)
{
  if (qword_27F2106E0 != -1)
  {
    swift_once();
  }

  v2 = qword_27F22F500;
  [qword_27F22F500 lock];
  v4 = qword_27F22F508;
  v3 = qword_27F22F510;

  result = [v2 unlock];
  if (v3)
  {
    v6[3] = MEMORY[0x277D837D0];
    v6[0] = v4;
    v6[1] = v3;
    __swift_mutable_project_boxed_opaque_existential_1(a1, *(a1 + 24));
    sub_24F929A28();
    return __swift_destroy_boxed_opaque_existential_1(v6);
  }

  return result;
}

uint64_t sub_24EE81D78(uint64_t a1, uint64_t a2)
{
  v4 = sub_24F92A2D8();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_24EE81DF8(uint64_t a1, uint64_t a2)
{
  v4 = sub_24F92A2D8();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t type metadata accessor for CanaryFieldsProvider()
{
  result = qword_27F232530;
  if (!qword_27F232530)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SmallLockupLayout.init(metrics:artworkView:ordinalText:headingText:titleText:subtitleText:tertiaryTitleText:offerText:offerButton:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10)
{
  sub_24EE82204(a1, &__src[40]);
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_24F922268();
  sub_24E615E00(a3, &__src[5]);
  sub_24E60169C(a4, &__src[10], &unk_27F22B200);
  sub_24E615E00(a5, &__src[15]);
  sub_24E615E00(a6, &__src[20]);
  sub_24E60169C(a7, &__src[25], &unk_27F22B200);
  sub_24E60169C(a8, &__src[30], &unk_27F22B200);
  if (*(a1 + 520))
  {
    sub_24E601704(a8, &unk_27F22B200);
    sub_24E601704(a7, &unk_27F22B200);
    __swift_destroy_boxed_opaque_existential_1(a6);
    __swift_destroy_boxed_opaque_existential_1(a5);
    sub_24E601704(a4, &unk_27F22B200);
    __swift_destroy_boxed_opaque_existential_1(a3);
    sub_24EE8223C(a1);
    v18 = *(a10 + 16);
    *&__src[35] = *a10;
    *&__src[37] = v18;
    v19 = *(a10 + 32);
  }

  else
  {
    sub_24E60169C(a10, v22, &qword_27F229780);
    if (v23)
    {
      __swift_project_boxed_opaque_existential_1(v22, v23);
      sub_24F922268();
      sub_24E601704(a10, &qword_27F229780);
      sub_24E601704(a8, &unk_27F22B200);
      sub_24E601704(a7, &unk_27F22B200);
      __swift_destroy_boxed_opaque_existential_1(a6);
      __swift_destroy_boxed_opaque_existential_1(a5);
      sub_24E601704(a4, &unk_27F22B200);
      __swift_destroy_boxed_opaque_existential_1(a3);
      sub_24EE8223C(a1);
      __swift_destroy_boxed_opaque_existential_1(v22);
    }

    else
    {
      sub_24E601704(a10, &qword_27F229780);
      sub_24E601704(a8, &unk_27F22B200);
      sub_24E601704(a7, &unk_27F22B200);
      __swift_destroy_boxed_opaque_existential_1(a6);
      __swift_destroy_boxed_opaque_existential_1(a5);
      sub_24E601704(a4, &unk_27F22B200);
      __swift_destroy_boxed_opaque_existential_1(a3);
      sub_24EE8223C(a1);
      sub_24E601704(v22, &qword_27F229780);
      v24 = 0u;
      v25 = 0u;
      v26 = 0;
    }

    *&__src[35] = v24;
    *&__src[37] = v25;
    v19 = v26;
  }

  __src[39] = v19;
  memcpy(a9, __src, 0x38AuLL);
  return __swift_destroy_boxed_opaque_existential_1(a2);
}

uint64_t SmallLockupLayout.Metrics.init(artworkSize:artworkMargins:ordinalSpaceProvider:headingSpace:titleRegularSpace:titleMediumSpace:titleShortSpace:titleWithHeadingSpace:subtitleSpace:subtitleExtraTallSpace:tertiaryTitleSpace:offerTextSpace:bottomSpace:axBottomSpace:offerButtonSize:offerButtonMargin:numberOfLines:maxAXTotalLines:wantsVerticallyCenteredTextLayout:wantsHorizontallyCenteredOrdinal:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, __int128 *a4@<X3>, __int128 *a5@<X4>, __int128 *a6@<X5>, __int128 *a7@<X6>, __int128 *a8@<X7>, uint64_t a9@<X8>, double a10@<D0>, double a11@<D1>, double a12@<D2>, double a13@<D3>, double a14@<D4>, double a15@<D5>, uint64_t a16, __int128 *a17, __int128 *a18, __int128 *a19, __int128 *a20, uint64_t a21, uint64_t a22, char a23, __int128 *a24, uint64_t a25, uint64_t a26, char a27, char a28)
{
  *(a9 + 336) = 0;
  *(a9 + 304) = 0u;
  *(a9 + 320) = 0u;
  *a9 = a10;
  *(a9 + 8) = a11;
  *(a9 + 16) = a12;
  *(a9 + 24) = a13;
  *(a9 + 32) = a14;
  *(a9 + 40) = a15;
  *(a9 + 48) = a1;
  *(a9 + 56) = a2;
  sub_24E612C80(a3, a9 + 64);
  sub_24E612C80(a4, a9 + 104);
  sub_24E612C80(a5, a9 + 144);
  sub_24E612C80(a6, a9 + 184);
  sub_24E612C80(a7, a9 + 224);
  sub_24E612C80(a18, a9 + 384);
  sub_24E612C80(a8, a9 + 264);
  sub_24EA63A70(a16, a9 + 304);
  sub_24E612C80(a17, a9 + 344);
  sub_24E612C80(a19, a9 + 424);
  sub_24E612C80(a20, a9 + 464);
  *(a9 + 504) = a21;
  *(a9 + 512) = a22;
  *(a9 + 520) = a23 & 1;
  result = sub_24E612C80(a24, a9 + 528);
  *(a9 + 568) = a25;
  *(a9 + 576) = a26;
  *(a9 + 584) = a27;
  *(a9 + 585) = a28;
  return result;
}

void *SmallLockupLayout.Metrics.init(artworkSize:artworkMargin:ordinalSpaceProvider:headingSpace:titleRegularSpace:titleMediumSpace:titleShortSpace:titleWithHeadingSpace:subtitleSpace:subtitleExtraTallSpace:tertiaryTitleSpace:offerTextSpace:bottomSpace:axBottomSpace:offerButtonSize:offerButtonMargin:numberOfLines:maxAXTotalLines:wantsVerticallyCenteredTextLayout:wantsHorizontallyCenteredOrdinal:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, __int128 *a4@<X3>, __int128 *a5@<X4>, __int128 *a6@<X5>, __int128 *a7@<X6>, __int128 *a8@<X7>, uint64_t a9@<X8>, double a10@<D0>, double a11@<D1>, double a12@<D2>, uint64_t a13, __int128 *a14, __int128 *a15, __int128 *a16, __int128 *a17, uint64_t a18, uint64_t a19, char a20, __int128 *a21, uint64_t a22, uint64_t a23, __int16 a24)
{
  *(a9 + 336) = 0;
  *(a9 + 304) = 0u;
  *(a9 + 320) = 0u;
  *(a9 + 504) = 0;
  *(a9 + 512) = 0;
  *(a9 + 520) = 1;
  memset(&__src[38], 0, 40);
  *__src = a10;
  *&__src[1] = a11;
  memset(&__src[2], 0, 24);
  *&__src[5] = a12;
  __src[6] = a1;
  __src[7] = a2;
  sub_24E612C80(a3, &__src[8]);
  sub_24E612C80(a4, &__src[13]);
  sub_24E612C80(a5, &__src[18]);
  sub_24E612C80(a6, &__src[23]);
  sub_24E612C80(a7, &__src[28]);
  sub_24E612C80(a15, &__src[48]);
  sub_24E612C80(a8, &__src[33]);
  sub_24EA63A70(a13, &__src[38]);
  sub_24E612C80(a14, &__src[43]);
  sub_24E612C80(a16, &__src[53]);
  sub_24E612C80(a17, &__src[58]);
  __src[63] = a18;
  __src[64] = a19;
  LOBYTE(__src[65]) = a20 & 1;
  sub_24E612C80(a21, &__src[66]);
  __src[71] = a22;
  __src[72] = a23;
  LOWORD(__src[73]) = a24;
  sub_24E601704(a9 + 304, &qword_27F22F780);
  return memcpy(a9, __src, 0x24AuLL);
}

void SmallLockupLayout.Metrics.artworkMargins.setter(double a1, double a2, double a3, double a4)
{
  v4[2] = a1;
  v4[3] = a2;
  v4[4] = a3;
  v4[5] = a4;
}

void SmallLockupLayout.Metrics.artworkMargin.setter(double a1)
{
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *(v1 + 32) = 0;
  *(v1 + 40) = a1;
}

double (*SmallLockupLayout.Metrics.artworkMargin.modify(void *a1))(uint64_t a1)
{
  a1[1] = v1;
  *a1 = *(v1 + 40);
  return sub_24EE827B4;
}

double sub_24EE827B4(uint64_t a1)
{
  v1 = *(a1 + 8);
  result = *a1;
  *(v1 + 24) = 0;
  *(v1 + 32) = 0;
  *(v1 + 16) = 0;
  *(v1 + 40) = result;
  return result;
}

uint64_t sub_24EE827CC(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;

  *(a2 + 48) = sub_24ED35B70;
  *(a2 + 56) = v5;
  return result;
}

uint64_t SmallLockupLayout.Metrics.ordinalSpaceProvider.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t SmallLockupLayout.Metrics.ordinalSpaceProvider.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return result;
}

uint64_t SmallLockupLayout.Metrics.headingSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 64);

  return sub_24E612C80(a1, v1 + 64);
}

uint64_t SmallLockupLayout.Metrics.titleRegularSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 104);

  return sub_24E612C80(a1, v1 + 104);
}

uint64_t SmallLockupLayout.Metrics.titleMediumSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 144);

  return sub_24E612C80(a1, v1 + 144);
}

uint64_t SmallLockupLayout.Metrics.titleShortSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 184);

  return sub_24E612C80(a1, v1 + 184);
}

uint64_t SmallLockupLayout.Metrics.titleWithHeadingSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 224);

  return sub_24E612C80(a1, v1 + 224);
}

uint64_t SmallLockupLayout.Metrics.subtitleSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 264);

  return sub_24E612C80(a1, v1 + 264);
}

uint64_t SmallLockupLayout.Metrics.tertiaryTitleSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 344);

  return sub_24E612C80(a1, v1 + 344);
}

uint64_t SmallLockupLayout.Metrics.offerTextSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 384);

  return sub_24E612C80(a1, v1 + 384);
}

uint64_t SmallLockupLayout.Metrics.bottomSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 424);

  return sub_24E612C80(a1, v1 + 424);
}

uint64_t SmallLockupLayout.Metrics.axBottomSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 464);

  return sub_24E612C80(a1, v1 + 464);
}

uint64_t SmallLockupLayout.Metrics.offerButtonSize.setter(uint64_t result, uint64_t a2, char a3)
{
  *(v3 + 504) = result;
  *(v3 + 512) = a2;
  *(v3 + 520) = a3 & 1;
  return result;
}

uint64_t SmallLockupLayout.Metrics.offerButtonMargin.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 528);

  return sub_24E612C80(a1, v1 + 528);
}

double static SmallLockupLayout.estimatedMeasurements(fitting:using:in:)(void *a1, id a2)
{
  v3 = [a2 traitCollection];
  _s12GameStoreKit17SmallLockupLayoutV21estimatedMeasurements7fitting5using4withSo14JUMeasurementsVSo6CGSizeV_AC7MetricsVSo17UITraitCollectionCtFZ_0(a1);
  v5 = v4;

  return v5;
}

uint64_t sub_24EE83050@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2;
  v6 = sub_24F922868();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v136[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v159 = sub_24F9227F8();
  v154 = *(v159 - 8);
  MEMORY[0x28223BE20](v159);
  v157 = &v136[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v156 = sub_24F922838();
  v160 = *(v156 - 8);
  MEMORY[0x28223BE20](v156);
  v155 = &v136[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v158 = sub_24F922848();
  v161 = *(v158 - 8);
  MEMORY[0x28223BE20](v158);
  v146 = &v136[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v13);
  v145 = &v136[-v14];
  MEMORY[0x28223BE20](v15);
  v148 = &v136[-v16];
  MEMORY[0x28223BE20](v17);
  v153 = &v136[-v18];
  MEMORY[0x28223BE20](v19);
  v144 = &v136[-v20];
  sub_24E60169C(v2 + 80, &v180, &unk_27F22B200);
  v162 = a2;
  v150 = v6;
  v151 = v9;
  v149 = v7;
  if (!v181)
  {
LABEL_5:
    sub_24E601704(&v180, &unk_27F22B200);
    goto LABEL_6;
  }

  __swift_project_boxed_opaque_existential_1(&v180, v181);
  v21 = sub_24F922238();
  __swift_destroy_boxed_opaque_existential_1(&v180);
  if ((v21 & 1) == 0)
  {
    sub_24E60169C(v3 + 80, &v180, &unk_27F22B200);
    if (v181)
    {
      __swift_project_boxed_opaque_existential_1(&v180, v181);
      v22 = sub_24F9221E8();
      __swift_destroy_boxed_opaque_existential_1(&v180);
      goto LABEL_7;
    }

    goto LABEL_5;
  }

LABEL_6:
  v22 = 0;
LABEL_7:
  sub_24E60169C(v3 + 240, &v180, &unk_27F22B200);
  v23 = v181;
  if (!v181)
  {
    goto LABEL_12;
  }

  __swift_project_boxed_opaque_existential_1(&v180, v181);
  v24 = sub_24F922238();
  __swift_destroy_boxed_opaque_existential_1(&v180);
  if ((v24 & 1) == 0)
  {
    sub_24E60169C(v3 + 240, &v180, &unk_27F22B200);
    v23 = v181;
    if (v181)
    {
      __swift_project_boxed_opaque_existential_1(&v180, v181);
      v23 = sub_24F9221E8();
      __swift_destroy_boxed_opaque_existential_1(&v180);
      goto LABEL_13;
    }

LABEL_12:
    sub_24E601704(&v180, &unk_27F22B200);
    goto LABEL_13;
  }

  v23 = 0;
LABEL_13:
  __swift_project_boxed_opaque_existential_1((v3 + 160), *(v3 + 184));
  if (sub_24F922238())
  {
    LODWORD(v147) = 0;
  }

  else
  {
    __swift_project_boxed_opaque_existential_1((v3 + 160), *(v3 + 184));
    LODWORD(v147) = sub_24F9221E8();
  }

  sub_24E60169C(v3 + 200, &v180, &unk_27F22B200);
  v25 = v181;
  if (!v181)
  {
    goto LABEL_21;
  }

  __swift_project_boxed_opaque_existential_1(&v180, v181);
  v26 = sub_24F922238();
  __swift_destroy_boxed_opaque_existential_1(&v180);
  if (v26)
  {
    v25 = 0;
    goto LABEL_22;
  }

  sub_24E60169C(v3 + 200, &v180, &unk_27F22B200);
  v25 = v181;
  if (v181)
  {
    __swift_project_boxed_opaque_existential_1(&v180, v181);
    v25 = sub_24F9221E8();
    __swift_destroy_boxed_opaque_existential_1(&v180);
  }

  else
  {
LABEL_21:
    sub_24E601704(&v180, &unk_27F22B200);
  }

LABEL_22:
  sub_24E60169C(v3 + 624, &v180, &qword_27F22F780);
  if (v181)
  {
    sub_24E612C80(&v180, &v177);
    __swift_project_boxed_opaque_existential_1((v3 + 120), *(v3 + 144));
    if (sub_24F922428())
    {
      __swift_project_boxed_opaque_existential_1((v3 + 160), *(v3 + 184));
      if (sub_24F922428())
      {
        sub_24E612C80(&v177, &v180);
        goto LABEL_29;
      }
    }

    __swift_destroy_boxed_opaque_existential_1(&v177);
  }

  else
  {
    sub_24E601704(&v180, &qword_27F22F780);
  }

  sub_24E615E00(v3 + 584, &v180);
LABEL_29:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22B258);
  v27 = swift_allocObject();
  v27[32] = v22 & 1;
  v28 = v23 & 1;
  v27[33] = v23 & 1;
  v152 = v25 & 1;
  v27[34] = v25 & 1;
  v29 = MEMORY[0x277D84F90];
  v163 = v23;
  if (v22)
  {
    v30 = a1;
    v31 = v3;
    v32 = v22;
    v33 = v25;
    *&v177 = MEMORY[0x277D84F90];
    sub_24F4581EC(0, 1, 1);
    v29 = v177;
    v35 = *(v177 + 16);
    v34 = *(v177 + 24);
    if (v35 >= v34 >> 1)
    {
      sub_24F4581EC((v34 > 1), v35 + 1, 1);
      v29 = v177;
    }

    *(v29 + 16) = v35 + 1;
    *(v29 + v35 + 32) = 1;
    v25 = v33;
    v22 = v32;
    v3 = v31;
    a1 = v30;
    v23 = v163;
    if ((v163 & 1) == 0)
    {
LABEL_31:
      if ((v25 & 1) == 0)
      {
        goto LABEL_46;
      }

      goto LABEL_41;
    }
  }

  else if ((v23 & 1) == 0)
  {
    goto LABEL_31;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v177 = v29;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_24F4581EC(0, *(v29 + 16) + 1, 1);
    v29 = v177;
  }

  v38 = *(v29 + 16);
  v37 = *(v29 + 24);
  if (v38 >= v37 >> 1)
  {
    sub_24F4581EC((v37 > 1), v38 + 1, 1);
    v29 = v177;
  }

  *(v29 + 16) = v38 + 1;
  *(v29 + v38 + 32) = v28;
  v23 = v163;
  if (v25)
  {
LABEL_41:
    v39 = swift_isUniquelyReferenced_nonNull_native();
    *&v177 = v29;
    if ((v39 & 1) == 0)
    {
      sub_24F4581EC(0, *(v29 + 16) + 1, 1);
      v29 = v177;
    }

    v41 = *(v29 + 16);
    v40 = *(v29 + 24);
    if (v41 >= v40 >> 1)
    {
      sub_24F4581EC((v40 > 1), v41 + 1, 1);
      v29 = v177;
    }

    *(v29 + 16) = v41 + 1;
    *(v29 + v41 + 32) = v152;
  }

LABEL_46:
  swift_setDeallocating();
  swift_deallocClassInstance();
  v42 = *(v29 + 16);

  v43 = [a1 traitCollection];
  v44 = sub_24F92BF98();

  if ((v44 & 1) == 0 || v42 >= 2)
  {
    if (((v22 | v23 | v25) & 1) == 0)
    {
      v45 = [a1 traitCollection];
      v46 = [v45 preferredContentSizeCategory];
      v47 = sub_24F92C158();

      if ((v47 & 1) != 0 || *(v3 + 904) == 1)
      {
        sub_24E615E00(v3 + 120, &v177);
        sub_24E615E00(v3 + 160, &v174);
        sub_24E615E00(&v180, &v171);
        v48 = sub_24F922B98();
        v49 = MEMORY[0x277D229F0];
        v50 = v162;
        v162[3] = v48;
        v50[4] = v49;
        __swift_allocate_boxed_opaque_existential_1(v50);
        sub_24F922B88();
      }

      else
      {
        sub_24E615E00(v3 + 120, &v177);
        sub_24E615E00(v3 + 160, &v174);
        sub_24E615E00(v3 + 424, &v171);
        sub_24E615E00(v3 + 464, &v168);
        sub_24E615E00(&v180, &v165);
        v133 = sub_24F922B38();
        v134 = MEMORY[0x277D229C8];
        v135 = v162;
        v162[3] = v133;
        v135[4] = v134;
        __swift_allocate_boxed_opaque_existential_1(v135);
        sub_24F922B28();
      }

      return __swift_destroy_boxed_opaque_existential_1(&v180);
    }

    sub_24E60169C(v3 + 80, &v177, &unk_27F22B200);
    if (*(&v178 + 1))
    {
      __swift_project_boxed_opaque_existential_1(&v177, *(&v178 + 1));
      sub_24F922478();
      __swift_destroy_boxed_opaque_existential_1(&v177);
    }

    else
    {
      sub_24E601704(&v177, &unk_27F22B200);
    }

    sub_24E60169C(v3 + 80, &v177, &unk_27F22B200);
    if (*(&v178 + 1))
    {
      __swift_project_boxed_opaque_existential_1(&v177, *(&v178 + 1));
      sub_24F922458();
      __swift_destroy_boxed_opaque_existential_1(&v177);
    }

    else
    {
      sub_24E601704(&v177, &unk_27F22B200);
    }

    __swift_project_boxed_opaque_existential_1((v3 + 120), *(v3 + 144));
    sub_24F922478();
    __swift_project_boxed_opaque_existential_1((v3 + 120), *(v3 + 144));
    sub_24F922458();
    __swift_project_boxed_opaque_existential_1((v3 + 160), *(v3 + 184));
    sub_24F922478();
    __swift_project_boxed_opaque_existential_1((v3 + 160), *(v3 + 184));
    sub_24F922458();
    sub_24E60169C(v3 + 200, &v177, &unk_27F22B200);
    if (*(&v178 + 1))
    {
      __swift_project_boxed_opaque_existential_1(&v177, *(&v178 + 1));
      sub_24F922478();
      __swift_destroy_boxed_opaque_existential_1(&v177);
    }

    else
    {
      sub_24E601704(&v177, &unk_27F22B200);
    }

    sub_24E60169C(v3 + 200, &v177, &unk_27F22B200);
    if (*(&v178 + 1))
    {
      __swift_project_boxed_opaque_existential_1(&v177, *(&v178 + 1));
      sub_24F922458();
      __swift_destroy_boxed_opaque_existential_1(&v177);
    }

    else
    {
      sub_24E601704(&v177, &unk_27F22B200);
    }

    sub_24E60169C(v3 + 80, &v174, &unk_27F22B200);
    v57 = MEMORY[0x277D22848];
    v137 = v25;
    if (v175)
    {
      sub_24E612C80(&v174, &v177);
      if (v22)
      {
        v58 = *(&v178 + 1);
        v59 = v179;
        v60 = __swift_project_boxed_opaque_existential_1(&v177, *(&v178 + 1));
        v175 = v58;
        v176 = *(v59 + 8);
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v174);
        (*(*(v58 - 8) + 16))(boxed_opaque_existential_1, v60, v58);
        v62 = v160;
        v64 = v155;
        v63 = v156;
        (*(v160 + 104))(v155, *v57, v156);
        v65 = MEMORY[0x277D84F90];
        *&v171 = MEMORY[0x277D84F90];
        sub_24E8EF510();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F235750);
        sub_24E8EF568();
        v66 = v157;
        v67 = v159;
        sub_24F92C6A8();
        sub_24F922818();
        (*(v154 + 8))(v66, v67);
        (*(v62 + 8))(v64, v63);
        __swift_destroy_boxed_opaque_existential_1(&v174);
        v68 = sub_24E6179D8(0, 1, 1, v65);
        v70 = *(v68 + 2);
        v69 = *(v68 + 3);
        if (v70 >= v69 >> 1)
        {
          v68 = sub_24E6179D8(v69 > 1, v70 + 1, 1, v68);
        }

        *(v68 + 2) = v70 + 1;
        (*(v161 + 32))(&v68[((*(v161 + 80) + 32) & ~*(v161 + 80)) + *(v161 + 72) * v70], v144, v158);
        __swift_destroy_boxed_opaque_existential_1(&v177);
        v71 = 544;
LABEL_83:
        sub_24E615E00(v3 + v71, &v177);
        v72 = *(v3 + 144);
        v73 = *(v3 + 152);
        v74 = __swift_project_boxed_opaque_existential_1((v3 + 120), v72);
        v175 = v72;
        v176 = *(v73 + 8);
        v75 = __swift_allocate_boxed_opaque_existential_1(&v174);
        (*(*(v72 - 8) + 16))(v75, v74, v72);
        v76 = v160;
        v77 = *(v160 + 104);
        v79 = v155;
        v78 = v156;
        v152 = *v57;
        v144 = v77;
        v77(v155);
        *&v171 = MEMORY[0x277D84F90];
        v80 = sub_24E8EF510();
        v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F235750);
        v82 = sub_24E8EF568();
        v83 = v157;
        v140 = v82;
        v141 = v81;
        v84 = v159;
        v143 = v80;
        sub_24F92C6A8();
        sub_24F922818();
        v142 = *(v154 + 8);
        v142(v83, v84);
        v85 = *(v76 + 8);
        v160 = v76 + 8;
        v139 = v85;
        v85(v79, v78);
        __swift_destroy_boxed_opaque_existential_1(&v174);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v68 = sub_24E6179D8(0, *(v68 + 2) + 1, 1, v68);
        }

        v86 = v147;
        v88 = *(v68 + 2);
        v87 = *(v68 + 3);
        if (v88 >= v87 >> 1)
        {
          v68 = sub_24E6179D8(v87 > 1, v88 + 1, 1, v68);
        }

        *(v68 + 2) = v88 + 1;
        v89 = *(v161 + 32);
        v147 = (*(v161 + 80) + 32) & ~*(v161 + 80);
        v138 = *(v161 + 72);
        v161 += 32;
        v90 = v89;
        v89(&v68[v147 + v138 * v88], v153, v158);
        if (v86)
        {
          v91 = *(v3 + 184);
          v92 = *(v3 + 192);
          v93 = __swift_project_boxed_opaque_existential_1((v3 + 160), v91);
          v175 = v91;
          v176 = *(v92 + 8);
          v94 = __swift_allocate_boxed_opaque_existential_1(&v174);
          (*(*(v91 - 8) + 16))(v94, v93, v91);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22B260);
          v95 = swift_allocObject();
          *(v95 + 16) = xmmword_24F93DE60;
          sub_24F9227E8();
          *&v171 = v95;
          v96 = v157;
          v97 = v159;
          sub_24F92C6A8();
          v99 = v155;
          v98 = v156;
          (v144)(v155, v152, v156);
          sub_24F922818();
          v139(v99, v98);
          v142(v96, v97);
          __swift_destroy_boxed_opaque_existential_1(&v174);
          v101 = *(v68 + 2);
          v100 = *(v68 + 3);
          if (v101 >= v100 >> 1)
          {
            v68 = sub_24E6179D8(v100 > 1, v101 + 1, 1, v68);
          }

          v102 = v137;
          *(v68 + 2) = v101 + 1;
          v90(&v68[v147 + v101 * v138], v148, v158);
        }

        else
        {
          v102 = v137;
        }

        sub_24E60169C(v3 + 200, &v171, &unk_27F22B200);
        v103 = v163;
        if (v172)
        {
          sub_24E612C80(&v171, &v174);
          if (v102)
          {
            v104 = v175;
            v105 = v176;
            v106 = __swift_project_boxed_opaque_existential_1(&v174, v175);
            v172 = v104;
            v173 = *(v105 + 8);
            v107 = __swift_allocate_boxed_opaque_existential_1(&v171);
            (*(*(v104 - 8) + 16))(v107, v106, v104);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22B260);
            v108 = swift_allocObject();
            *(v108 + 16) = xmmword_24F93DE60;
            sub_24F9227E8();
            *&v168 = v108;
            v109 = v157;
            v110 = v159;
            sub_24F92C6A8();
            v112 = v155;
            v111 = v156;
            (v144)(v155, v152, v156);
            sub_24F922818();
            v139(v112, v111);
            v142(v109, v110);
            __swift_destroy_boxed_opaque_existential_1(&v171);
            v114 = *(v68 + 2);
            v113 = *(v68 + 3);
            if (v114 >= v113 >> 1)
            {
              v68 = sub_24E6179D8(v113 > 1, v114 + 1, 1, v68);
            }

            *(v68 + 2) = v114 + 1;
            v90(&v68[v147 + v114 * v138], v145, v158);
            __swift_destroy_boxed_opaque_existential_1(&v174);
            v103 = v163;
          }

          else
          {
            __swift_destroy_boxed_opaque_existential_1(&v174);
          }
        }

        else
        {
          sub_24E601704(&v171, &unk_27F22B200);
        }

        sub_24E60169C(v3 + 240, &v171, &unk_27F22B200);
        if (v172)
        {
          sub_24E612C80(&v171, &v174);
          if (v103)
          {
            v115 = v175;
            v116 = v176;
            v117 = __swift_project_boxed_opaque_existential_1(&v174, v175);
            v172 = v115;
            v173 = *(v116 + 8);
            v118 = __swift_allocate_boxed_opaque_existential_1(&v171);
            (*(*(v115 - 8) + 16))(v118, v117, v115);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22B260);
            v119 = swift_allocObject();
            *(v119 + 16) = xmmword_24F93DE60;
            sub_24F9227E8();
            *&v168 = v119;
            v120 = v157;
            v121 = v159;
            sub_24F92C6A8();
            v123 = v155;
            v122 = v156;
            (v144)(v155, v152, v156);
            sub_24F922818();
            v139(v123, v122);
            v142(v120, v121);
            __swift_destroy_boxed_opaque_existential_1(&v171);
            v125 = *(v68 + 2);
            v124 = *(v68 + 3);
            if (v125 >= v124 >> 1)
            {
              v68 = sub_24E6179D8(v124 > 1, v125 + 1, 1, v68);
            }

            v127 = v150;
            v126 = v151;
            v128 = v149;
            *(v68 + 2) = v125 + 1;
            v129 = v162;
            v90(&v68[v147 + v125 * v138], v146, v158);
            __swift_destroy_boxed_opaque_existential_1(&v174);
            v130 = v127;
            goto LABEL_107;
          }

          __swift_destroy_boxed_opaque_existential_1(&v174);
        }

        else
        {
          sub_24E601704(&v171, &unk_27F22B200);
        }

        v129 = v162;
        v130 = v150;
        v126 = v151;
        v128 = v149;
LABEL_107:
        (*(v128 + 104))(v126, *MEMORY[0x277D22868], v130);
        v175 = sub_24F922418();
        v176 = MEMORY[0x277D226F0];
        __swift_allocate_boxed_opaque_existential_1(&v174);
        sub_24F922408();
        v131 = sub_24F922888();
        v132 = MEMORY[0x277D22878];
        v129[3] = v131;
        v129[4] = v132;
        __swift_allocate_boxed_opaque_existential_1(v129);
        sub_24F922878();
        __swift_destroy_boxed_opaque_existential_1(&v177);
        return __swift_destroy_boxed_opaque_existential_1(&v180);
      }

      __swift_destroy_boxed_opaque_existential_1(&v177);
    }

    else
    {
      sub_24E601704(&v174, &unk_27F22B200);
      if (v22)
      {
        v68 = MEMORY[0x277D84F90];
        v71 = 544;
        goto LABEL_83;
      }
    }

    v68 = MEMORY[0x277D84F90];
    v71 = 504;
    goto LABEL_83;
  }

  __swift_destroy_boxed_opaque_existential_1(&v180);
  if (v22)
  {
    sub_24E60169C(v3 + 80, &v177, &unk_27F22B200);
  }

  else
  {
    v179 = 0;
    v177 = 0u;
    v178 = 0u;
  }

  sub_24E615E00(v3 + 120, &v174);
  sub_24E615E00(v3 + 160, &v171);
  v51 = v162;
  if (v25)
  {
    sub_24E60169C(v3 + 200, &v168, &unk_27F22B200);
  }

  else
  {
    v170 = 0;
    v168 = 0u;
    v169 = 0u;
  }

  if (v163)
  {
    sub_24E60169C(v3 + 240, &v165, &unk_27F22B200);
  }

  else
  {
    v167 = 0;
    v165 = 0u;
    v166 = 0u;
  }

  v51[3] = &type metadata for MultilineTextLayout;
  v51[4] = sub_24EBE83DC();
  v52 = swift_allocObject();
  *v51 = v52;
  sub_24E615E00(v3 + 384, v52 + 216);
  sub_24E615E00(v3 + 504, v52 + 256);
  sub_24E615E00(v3 + 584, v52 + 296);
  sub_24E615E00(v3 + 664, v164);
  *(v52 + 336) = 0u;
  *(v52 + 352) = 0u;
  *(v52 + 368) = 0u;
  *(v52 + 384) = 0u;
  *(v52 + 400) = 0u;
  sub_24EA63A70(v164, v52 + 336);
  *(v52 + 416) = 2;
  *(v52 + 424) = 4 - v42;
  v53 = v178;
  *(v52 + 16) = v177;
  *(v52 + 32) = v53;
  *(v52 + 48) = v179;
  sub_24E612C80(&v174, v52 + 56);
  result = sub_24E612C80(&v171, v52 + 96);
  v55 = v169;
  *(v52 + 136) = v168;
  *(v52 + 152) = v55;
  *(v52 + 168) = v170;
  v56 = v166;
  *(v52 + 176) = v165;
  *(v52 + 192) = v56;
  *(v52 + 208) = v167;
  return result;
}

uint64_t sub_24EE84854@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_24F9228C8();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v19[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  MEMORY[0x28223BE20](v9);
  v11 = &v19[-v10 - 8];
  sub_24EE83050(a1, v25);
  sub_24E615E00(v2, v24);
  v12 = *(v2 + 360);
  v22 = MEMORY[0x277D85048];
  v23 = MEMORY[0x277D225F8];
  v21 = v12;
  sub_24E60169C(v2 + 280, v20, &qword_27F229780);
  sub_24E615E00(v2 + 744, v19);
  v13 = *MEMORY[0x277D22898];
  v14 = *(v6 + 104);
  v14(v11, v13, v5);
  v14(v8, v13, v5);
  v15 = sub_24F9228E8();
  v16 = MEMORY[0x277D228A8];
  a2[3] = v15;
  a2[4] = v16;
  __swift_allocate_boxed_opaque_existential_1(a2);
  return sub_24F9228D8();
}

uint64_t sub_24EE84A0C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v23 = a2;
  v21 = sub_24F92CDB8();
  v5 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_24F9221D8();
  v8 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24EE84854(a1, v25);
  __swift_project_boxed_opaque_existential_1(v25, v25[3]);
  sub_24F922AC8();
  __swift_project_boxed_opaque_existential_1((v3 + 40), *(v3 + 64));
  v11 = sub_24F922438();
  __swift_project_boxed_opaque_existential_1((v3 + 40), *(v3 + 64));
  sub_24F922248();
  if (v11 >= 1)
  {
    __swift_project_boxed_opaque_existential_1(v2, *(v2 + 24));
    sub_24F922218();
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v19 = v18;
    (*(v2 + 368))(v24, v11);
    __swift_project_boxed_opaque_existential_1(v24, v24[3]);
    sub_24E8ED7D8();
    sub_24F9223A8();
    (*(v5 + 8))(v7, v21);
    __swift_destroy_boxed_opaque_existential_1(v24);
    __swift_project_boxed_opaque_existential_1((v2 + 40), *(v2 + 64));
    sub_24F922288();
    __swift_project_boxed_opaque_existential_1((v2 + 40), *(v2 + 64));
    v26.origin.x = v13;
    v26.origin.y = v15;
    v26.size.width = v17;
    v26.size.height = v19;
    CGRectGetMaxX(v26);
    v27.origin.x = v13;
    v27.origin.y = v15;
    v27.size.width = v17;
    v27.size.height = v19;
    CGRectGetMidY(v27);
    sub_24F922228();
  }

  (*(v8 + 32))(v23, v10, v22);
  return __swift_destroy_boxed_opaque_existential_1(v25);
}

uint64_t sub_24EE84D84@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v4 = sub_24F922938();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v21 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v20 = &v19 - v8;
  v9 = sub_24F92CDB8();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1((v2 + 40), *(v2 + 64));
  if (sub_24F922438() < 1)
  {
    sub_24EE83050(a1, v29);
    sub_24E615E00(v2, v28);
    v16 = *(v2 + 360);
    v26 = MEMORY[0x277D85048];
    v27 = MEMORY[0x277D225F8];
    v25 = v16;
  }

  else
  {
    (*(v2 + 368))(v29);
    __swift_project_boxed_opaque_existential_1(v29, v29[3]);
    sub_24E8ED7D8();
    sub_24F9223A8();
    v14 = v13;
    (*(v10 + 8))(v12, v9);
    __swift_destroy_boxed_opaque_existential_1(v29);
    v15 = v14 + *(v2 + 360);
    sub_24EE83050(a1, v29);
    sub_24E615E00(v2, v28);
    v26 = MEMORY[0x277D85048];
    v27 = MEMORY[0x277D225F8];
    v25 = v15;
  }

  sub_24E60169C(v2 + 280, v24, &qword_27F229780);
  sub_24E615E00(v2 + 848, v23);
  v17 = *(v5 + 104);
  v17(v20, *MEMORY[0x277D228B8], v4);
  v17(v21, *MEMORY[0x277D228C8], v4);
  return sub_24F922978();
}

uint64_t sub_24EE850B4(void *a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v6 = v5;
  v12 = sub_24F92CDB8();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_24F922998();
  v32 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v18 = &v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24EE84D84(a1, v18);
  v31 = v18;
  sub_24F922958();
  __swift_project_boxed_opaque_existential_1((v6 + 40), *(v6 + 64));
  v19 = sub_24F922438();
  __swift_project_boxed_opaque_existential_1((v6 + 40), *(v6 + 64));
  if (v19 < 1)
  {
    sub_24F922248();
    return (*(v32 + 8))(v31, v16);
  }

  v30 = v16;
  sub_24F922248();
  v20 = *(v5 + 368);
  __swift_project_boxed_opaque_existential_1((v5 + 40), *(v5 + 64));
  v21 = sub_24F922438();
  v20(v33, v21);
  __swift_project_boxed_opaque_existential_1(v33, v34);
  sub_24E8ED7D8();
  sub_24F9223A8();
  (*(v13 + 8))(v15, v12);
  __swift_destroy_boxed_opaque_existential_1(v33);
  __swift_project_boxed_opaque_existential_1((v5 + 40), *(v5 + 64));
  sub_24F922288();
  v22 = *(v5 + 905);
  v23 = [a1 traitCollection];
  v24 = sub_24F92BF88();

  __swift_project_boxed_opaque_existential_1(v6, *(v6 + 24));
  sub_24F922218();
  if (v22 != 1)
  {
    if (v24)
    {
      goto LABEL_4;
    }

LABEL_7:
    CGRectGetMaxX(*&v25);
    goto LABEL_8;
  }

  if ((v24 & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_4:
  CGRectGetMinX(*&v25);
LABEL_8:
  v16 = v30;
  if (*(v6 + 904) == 1)
  {
    v35.origin.x = a2;
    v35.origin.y = a3;
    v35.size.width = a4;
    v35.size.height = a5;
    CGRectGetMidY(v35);
  }

  else
  {
    sub_24E60169C(v6 + 80, v33, &unk_27F22B200);
    if (v34)
    {
      __swift_project_boxed_opaque_existential_1(v33, v34);
      sub_24F922218();
      CGRectGetMinY(v36);
      __swift_destroy_boxed_opaque_existential_1(v33);
    }

    else
    {
      sub_24E601704(v33, &unk_27F22B200);
      __swift_project_boxed_opaque_existential_1((v6 + 120), *(v6 + 144));
      sub_24F922218();
      CGRectGetMinY(v37);
    }
  }

  __swift_project_boxed_opaque_existential_1((v6 + 40), *(v6 + 64));
  sub_24F922228();
  return (*(v32 + 8))(v31, v16);
}

uint64_t SmallLockupLayout.placeChildren(relativeTo:in:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>, CGFloat a3@<D0>, CGFloat a4@<D1>, CGFloat a5@<D2>, CGFloat a6@<D3>)
{
  v12 = [a1 traitCollection];
  v13 = sub_24F92BF98();

  if (v13)
  {

    return sub_24EE84A0C(a1, a2);
  }

  else
  {

    return sub_24EE850B4(a1, a3, a4, a5, a6);
  }
}

double SmallLockupLayout.measurements(fitting:in:)(void *a1)
{
  v2 = v1;
  v4 = sub_24F922998();
  v5 = *(v4 - 8);
  *&v6 = MEMORY[0x28223BE20](v4).n128_u64[0];
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [a1 traitCollection];
  v10 = sub_24F92BF98();

  if (v10)
  {
    v11 = [a1 traitCollection];
    _s12GameStoreKit17SmallLockupLayoutV21estimatedMeasurements7fitting5using4withSo14JUMeasurementsVSo6CGSizeV_AC7MetricsVSo17UITraitCollectionCtFZ_0((v2 + 320));
    v13 = v12;
  }

  else
  {
    sub_24EE84D84(a1, v8);
    sub_24EE85DB0(v8, a1);
    v13 = v14;
    (*(v5 + 8))(v8, v4);
  }

  return v13;
}

uint64_t sub_24EE857AC@<X0>(void *a1@<X0>, uint64_t a2@<X8>, CGFloat a3@<D0>, CGFloat a4@<D1>, CGFloat a5@<D2>, CGFloat a6@<D3>)
{
  v12 = [a1 traitCollection];
  v13 = sub_24F92BF98();

  if (v13)
  {

    return sub_24EE84A0C(a1, a2);
  }

  else
  {

    return sub_24EE850B4(a1, a3, a4, a5, a6);
  }
}

double sub_24EE85880(void *a1)
{
  v2 = v1;
  v4 = sub_24F922998();
  v5 = *(v4 - 8);
  *&v6 = MEMORY[0x28223BE20](v4).n128_u64[0];
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [a1 traitCollection];
  v10 = sub_24F92BF98();

  if (v10)
  {
    v11 = [a1 traitCollection];
    _s12GameStoreKit17SmallLockupLayoutV21estimatedMeasurements7fitting5using4withSo14JUMeasurementsVSo6CGSizeV_AC7MetricsVSo17UITraitCollectionCtFZ_0((v2 + 320));
    v13 = v12;
  }

  else
  {
    sub_24EE84D84(a1, v8);
    sub_24EE85DB0(v8, a1);
    v13 = v14;
    (*(v5 + 8))(v8, v4);
  }

  return v13;
}

double sub_24EE85A18(void *a1, id a2)
{
  v3 = [a2 traitCollection];
  _s12GameStoreKit17SmallLockupLayoutV21estimatedMeasurements7fitting5using4withSo14JUMeasurementsVSo6CGSizeV_AC7MetricsVSo17UITraitCollectionCtFZ_0(a1);
  v5 = v4;

  return v5;
}

uint64_t _s12GameStoreKit17SmallLockupLayoutV21estimatedMeasurements7fitting5using4withSo14JUMeasurementsVSo6CGSizeV_AC7MetricsVSo17UITraitCollectionCtFZ_0(void *a1)
{
  if (sub_24F92BF98())
  {
    sub_24E615E00((a1 + 8), v7);
    sub_24E615E00((a1 + 13), v8);
    sub_24E615E00((a1 + 33), v9);
    sub_24E615E00((a1 + 43), v5);
    v2 = a1[71];
    v3 = a1[72];
    memset(v10, 0, sizeof(v10));
    sub_24EA63A70(v5, v10);
    v11 = v2;
    v12 = v3;
    __swift_project_boxed_opaque_existential_1(v8, v8[3]);
    result = sub_24F9223B8();
    if (__OFSUB__(v3, 1))
    {
      __break(1u);
    }

    else
    {
      __swift_project_boxed_opaque_existential_1(v9, v9[3]);
      sub_24F9223B8();
      sub_24E60169C(&v10[40], v5, &qword_27F22F780);
      if (v6)
      {
        __swift_project_boxed_opaque_existential_1(v5, v6);
        sub_24F9223B8();
        __swift_destroy_boxed_opaque_existential_1(v5);
      }

      else
      {
        sub_24E601704(v5, &qword_27F22F780);
      }

      sub_24EBE8534(v7);
      __swift_project_boxed_opaque_existential_1(a1 + 58, a1[61]);
      sub_24F9223B8();
      __swift_project_boxed_opaque_existential_1(a1 + 66, a1[69]);
      return sub_24F9223B8();
    }
  }

  else
  {
    __swift_project_boxed_opaque_existential_1(a1 + 13, a1[16]);
    sub_24F9223B8();
    __swift_project_boxed_opaque_existential_1(a1 + 33, a1[36]);
    sub_24F9223B8();
    __swift_project_boxed_opaque_existential_1(a1 + 53, a1[56]);
    return sub_24F9223B8();
  }

  return result;
}

uint64_t sub_24EE85DB0(uint64_t a1, char *a2)
{
  v38 = sub_24F922848();
  v35 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v37 = v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F232548);
  MEMORY[0x28223BE20](v4 - 8);
  v36 = v31 - v5;
  v6 = sub_24F922888();
  v34 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v33 = v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24F92CDB8();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24F922918();
  if (v41)
  {
    __swift_project_boxed_opaque_existential_1(v40, v41);
    sub_24F922288();
    __swift_destroy_boxed_opaque_existential_1(v40);
    sub_24F922948();
    __swift_project_boxed_opaque_existential_1(v40, v41);
    sub_24E8ED7D8();
    sub_24F9223A8();
    (*(v9 + 8))(v11, v8);
    __swift_destroy_boxed_opaque_existential_1(v40);
  }

  else
  {
    sub_24E601704(v40, &qword_27F229780);
  }

  sub_24F922928();
  if (v41)
  {
    __swift_project_boxed_opaque_existential_1(v40, v41);
    sub_24F922288();
    __swift_destroy_boxed_opaque_existential_1(v40);
    sub_24F922968();
    __swift_project_boxed_opaque_existential_1(v40, v41);
    sub_24E8ED7D8();
    sub_24F9223A8();
    (*(v9 + 8))(v11, v8);
    __swift_destroy_boxed_opaque_existential_1(v40);
  }

  else
  {
    sub_24E601704(v40, &qword_27F229780);
  }

  sub_24F922988();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F232550);
  v12 = v36;
  v13 = swift_dynamicCast();
  v14 = v34;
  v15 = *(v34 + 56);
  if (v13)
  {
    v15(v12, 0, 1, v6);
    (*(v14 + 32))(v33, v12, v6);
    sub_24F922288();
    v16 = sub_24F922858();
    v17 = *(v16 + 16);
    if (v17)
    {
      v32 = v6;
      v36 = a2;
      v39 = MEMORY[0x277D84F90];
      sub_24F45824C(0, v17, 0);
      v18 = v39;
      v19 = v35 + 16;
      v35 = *(v35 + 16);
      v20 = (*(v19 + 64) + 32) & ~*(v19 + 64);
      v31[1] = v16;
      v21 = v16 + v20;
      v22 = *(v19 + 56);
      v23 = (v19 - 8);
      do
      {
        v24 = v37;
        v25 = v38;
        (v35)(v37, v21, v38);
        sub_24F922828();
        __swift_project_boxed_opaque_existential_1(v40, v41);
        sub_24F922298();
        v27 = v26;
        (*v23)(v24, v25);
        __swift_destroy_boxed_opaque_existential_1(v40);
        v39 = v18;
        v29 = *(v18 + 16);
        v28 = *(v18 + 24);
        if (v29 >= v28 >> 1)
        {
          sub_24F45824C((v28 > 1), v29 + 1, 1);
          v18 = v39;
        }

        *(v18 + 16) = v29 + 1;
        *(v18 + 8 * v29 + 32) = v27;
        v21 += v22;
        --v17;
      }

      while (v17);

      v6 = v32;
      v14 = v34;
    }

    else
    {

      v18 = MEMORY[0x277D84F90];
    }

    sub_24ED6EC84(v18);

    return (*(v14 + 8))(v33, v6);
  }

  else
  {
    v15(v12, 1, 1, v6);
    return sub_24E601704(v12, &qword_27F232548);
  }
}

unint64_t sub_24EE8647C()
{
  result = qword_27F232540;
  if (!qword_27F232540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F232540);
  }

  return result;
}

double sub_24EE864D0@<D0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  result = *(a1 + 40);
  *a2 = result;
  return result;
}

double sub_24EE864DC(double *a1, uint64_t a2)
{
  result = *a1;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 16) = 0;
  *(a2 + 40) = result;
  return result;
}

uint64_t sub_24EE864F0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 + 48);
  v3 = *(a1 + 56);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  *a2 = sub_24EE86864;
  a2[1] = v5;
}

uint64_t sub_24EE86568(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 906))
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

uint64_t sub_24EE865B0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
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
    *(result + 904) = 0;
    *(result + 888) = 0u;
    *(result + 872) = 0u;
    *(result + 856) = 0u;
    *(result + 840) = 0u;
    *(result + 824) = 0u;
    *(result + 808) = 0u;
    *(result + 792) = 0u;
    *(result + 776) = 0u;
    *(result + 760) = 0u;
    *(result + 744) = 0u;
    *(result + 728) = 0u;
    *(result + 712) = 0u;
    *(result + 696) = 0u;
    *(result + 680) = 0u;
    *(result + 664) = 0u;
    *(result + 648) = 0u;
    *(result + 632) = 0u;
    *(result + 616) = 0u;
    *(result + 600) = 0u;
    *(result + 584) = 0u;
    *(result + 568) = 0u;
    *(result + 552) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 906) = 1;
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

    *(result + 906) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24EE866F8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 586))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 48);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24EE86740(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
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
    *(result + 584) = 0;
    *(result + 568) = 0u;
    *(result + 552) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 586) = 1;
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
      *(result + 48) = (a2 - 1);
      return result;
    }

    *(result + 586) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24EE8682C()
{

  return swift_deallocObject();
}

uint64_t sub_24EE86890()
{
  if (v0[5])
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 2));
  }

  __swift_destroy_boxed_opaque_existential_1((v0 + 7));
  __swift_destroy_boxed_opaque_existential_1((v0 + 12));
  if (v0[20])
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 17));
  }

  if (v0[25])
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 22));
  }

  if (v0[30])
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 27));
  }

  __swift_destroy_boxed_opaque_existential_1((v0 + 32));
  __swift_destroy_boxed_opaque_existential_1((v0 + 37));
  if (v0[45])
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 42));
  }

  if (v0[50])
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 47));
  }

  return swift_deallocObject();
}

uint64_t sub_24EE86944(uint64_t a1, char a2, char a3, char a4, uint64_t a5, uint64_t a6)
{
  v12 = *a1;
  v13 = *(a1 + 8);
  v14 = (*(a6 + 32))(a5, a6);
  v15 = swift_allocObject();
  *(v15 + 16) = a5;
  *(v15 + 24) = a6;
  *(v15 + 32) = v6;
  *(v15 + 40) = v12;
  *(v15 + 48) = v13;
  *(v15 + 49) = a3;
  *(v15 + 50) = a2;
  *(v15 + 51) = a4;
  v16 = swift_allocObject();
  *(v16 + 16) = sub_24EE872BC;
  *(v16 + 24) = v15;
  v20[4] = sub_24E972460;
  v20[5] = v16;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 1107296256;
  v20[2] = sub_24E971290;
  v20[3] = &block_descriptor_83;
  v17 = _Block_copy(v20);
  swift_unknownObjectRetain();
  sub_24EBD4BA0(v12, v13);

  dispatch_sync(v14, v17);

  _Block_release(v17);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_24EE86B00(uint64_t a1, unint64_t a2, int a3, int a4, int a5, int a6, uint64_t a7, uint64_t a8)
{
  v62 = a5;
  v63 = a6;
  v64 = a4;
  LODWORD(v65) = a3;
  v66 = a2;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22CE60);
  MEMORY[0x28223BE20](v60);
  v61 = &v54 - v11;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22CE58);
  v57 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v56 = &v54 - v12;
  v13 = sub_24F91F6B8();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ACF0);
  v18 = v17 - 8;
  MEMORY[0x28223BE20](v17);
  v20 = &v54 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v21);
  v24 = (&v54 - v23);
  v25 = *(a8 + 40);
  v67 = a1;
  v68 = a7;
  v69 = a8;
  v58 = v25;
  v59 = a8 + 40;
  (v25)(a7, a8, v22);
  sub_24EE87300(v20, v24);
  v70 = 0;
  v71 = 0xE000000000000000;
  sub_24F92C888();
  MEMORY[0x253050C20](0xD000000000000038, 0x800000024FA55CE0);
  sub_24F91F6A8();
  v26 = sub_24F91F668();
  v28 = v27;
  (*(v14 + 8))(v16, v13);
  MEMORY[0x253050C20](v26, v28);

  v29 = v70;
  v30 = v71;
  v31 = v24 + *(v18 + 60);

  *v31 = v29;
  *(v31 + 8) = v30;
  LOBYTE(v31) = v65;
  sub_24EC97180();
  sub_24E601704(v20, &qword_27F22ACF0);
  v32 = v31 >> 4;
  if (v32 <= 3)
  {
LABEL_18:
    v40 = v56;
    v41 = v57;
    if (v32 > 1)
    {
LABEL_33:
      v34 = v68;
      v33 = v69;
      if (v32 == 2)
      {
        sub_24EC96504(v66);
      }

      else
      {
        sub_24EC96744(v66);
      }
    }

    else
    {
      v35 = v66;
      if (!v32)
      {
        v70 = MEMORY[0x277D84F90];
        v36 = v66 & 0xFFFFFFFFFFFFFF8;
        if (v66 >> 62)
        {
          goto LABEL_49;
        }

        v42 = *((v66 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v42)
        {
LABEL_50:
          v47 = MEMORY[0x277D84F90];
LABEL_51:
          sub_24EC961AC(v47);

          v50 = 0;
          goto LABEL_55;
        }

LABEL_22:
        v65 = v24;
        v57 = v20;
        v43 = 0;
        v20 = (v35 & 0xC000000000000001);
        v24 = &OBJC_IVAR____TtC12GameStoreKit5Shelf_isHidden;
        while (1)
        {
          if (v20)
          {
            v44 = MEMORY[0x253052270](v43, v35);
            v45 = v43 + 1;
            if (__OFADD__(v43, 1))
            {
LABEL_32:
              __break(1u);
              goto LABEL_33;
            }
          }

          else
          {
            if (v43 >= *(v36 + 16))
            {
              __break(1u);
LABEL_48:
              __break(1u);
LABEL_49:
              v42 = sub_24F92C738();
              if (!v42)
              {
                goto LABEL_50;
              }

              goto LABEL_22;
            }

            v44 = *(v35 + 8 * v43 + 32);

            v45 = v43 + 1;
            if (__OFADD__(v43, 1))
            {
              goto LABEL_32;
            }
          }

          if (*(v44 + OBJC_IVAR____TtC12GameStoreKit5Shelf_isHidden))
          {
          }

          else
          {
            sub_24F92C948();
            sub_24F92C988();
            sub_24F92C998();
            sub_24F92C958();
          }

          ++v43;
          if (v45 == v42)
          {
            v47 = v70;
            v20 = v57;
            v24 = v65;
            goto LABEL_51;
          }
        }
      }

      v46 = sub_24EC92D98(v66);
      sub_24EC97704(v46);
      v34 = v68;
      v33 = v69;
      if (v31)
      {
      }

      else
      {
        v49 = v55;
        (*(v41 + 2))(v40, v24, v55);
        sub_24F922DC8();

        (*(v41 + 5))(v24, v40, v49);
      }
    }

LABEL_46:
    v50 = 0;
    goto LABEL_56;
  }

  if ((v31 >> 4) <= 5u)
  {
    v34 = v68;
    v33 = v69;
    if (v32 == 4)
    {
      sub_24EC9672C(v66);
    }

    else
    {
      sub_24EC9675C(v66);
    }

    goto LABEL_46;
  }

  v34 = v68;
  v33 = v69;
  v35 = v66;
  if (v32 == 6)
  {
    sub_24EC96930(v66);
    goto LABEL_46;
  }

  if (v32 != 7)
  {
    sub_24EC961AC(MEMORY[0x277D84F90]);
    goto LABEL_46;
  }

  v70 = MEMORY[0x277D84F90];
  v36 = v66 & 0xFFFFFFFFFFFFFF8;
  if (v66 >> 62)
  {
    v37 = sub_24F92C738();
    if (v37)
    {
LABEL_7:
      v65 = v24;
      v57 = v20;
      v31 = 0;
      v20 = (v35 & 0xC000000000000001);
      v24 = &OBJC_IVAR____TtC12GameStoreKit5Shelf_isHidden;
      do
      {
        if (v20)
        {
          v38 = MEMORY[0x253052270](v31, v35);
          v39 = (v31 + 1);
          if (__OFADD__(v31, 1))
          {
            goto LABEL_17;
          }
        }

        else
        {
          if (v31 >= *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_48;
          }

          v38 = *(v35 + 8 * v31 + 32);

          v39 = (v31 + 1);
          if (__OFADD__(v31, 1))
          {
LABEL_17:
            __break(1u);
            goto LABEL_18;
          }
        }

        if (*(v38 + OBJC_IVAR____TtC12GameStoreKit5Shelf_isHidden))
        {
        }

        else
        {
          sub_24F92C948();
          sub_24F92C988();
          sub_24F92C998();
          sub_24F92C958();
        }

        ++v31;
      }

      while (v39 != v37);
      v48 = v70;
      v20 = v57;
      v24 = v65;
      goto LABEL_54;
    }
  }

  else
  {
    v37 = *((v66 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v37)
    {
      goto LABEL_7;
    }
  }

  v48 = MEMORY[0x277D84F90];
LABEL_54:
  sub_24EC961AC(v48);

  v50 = 1;
LABEL_55:
  v34 = v68;
  v33 = v69;
LABEL_56:
  sub_24EE87300(v24, v20);
  (*(v33 + 48))(v20, v34, v33);
  if (v64)
  {
    (*(v33 + 64))(v34, v33);
    v51 = v61;
    v58(v34, v33);
    v52 = v60;
    *(v51 + *(v60 + 36)) = v62 & 1;
    *(v51 + *(v52 + 40)) = v50;
    *(v51 + *(v52 + 44)) = v63 & 1;
    sub_24F92AD88();

    sub_24E601704(v51, &qword_27F22CE60);
  }

  return sub_24E601704(v24, &qword_27F22ACF0);
}

uint64_t sub_24EE87278()
{
  swift_unknownObjectRelease();
  sub_24E96513C(*(v0 + 40), *(v0 + 48));

  return swift_deallocObject();
}

uint64_t block_copy_helper_83(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24EE87300(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ACF0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24EE87394(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_24F920A88();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_24EE87454(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_24F920A88();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for ChallengeDefinitionDefaultOptions()
{
  result = qword_27F232558;
  if (!qword_27F232558)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24EE87544()
{
  sub_24EE875C8();
  if (v0 <= 0x3F)
  {
    sub_24F920A88();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_24EE875C8()
{
  if (!qword_27F232568)
  {
    sub_24F920B08();
    v0 = sub_24F92B6E8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F232568);
    }
  }
}

unint64_t sub_24EE87620@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v46 = sub_24F920AF8();
  v4 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_24F920B08();
  v7 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a1 + 16);
  v11 = MEMORY[0x277D84F90];
  if (v10)
  {
    v34 = a2;
    v50 = MEMORY[0x277D84F90];
    sub_24F458B5C(0, v10, 0);
    v12 = 0;
    v13 = v50;
    v37 = a1 + 32;
    v44 = v7 + 16;
    v43 = (v4 + 8);
    v36 = v7;
    v42 = (v7 + 8);
    v41 = xmmword_24F93A400;
    v35 = v10;
    do
    {
      v14 = *(v37 + 8 * v12);
      v15 = *(v14 + 16);
      if (v15)
      {
        v39 = v12;
        v40 = v13;
        v49 = v11;

        sub_24F458B9C(0, v15, 0);
        v16 = v49;
        v17 = (*(v36 + 80) + 32) & ~*(v36 + 80);
        v38 = v14;
        v18 = v14 + v17;
        v48 = *(v36 + 72);
        v47 = *(v36 + 16);
        do
        {
          v19 = v45;
          v47(v9, v18, v45);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F08);
          inited = swift_initStackObject();
          *(inited + 16) = v41;
          *(inited + 32) = 1953066613;
          *(inited + 40) = 0xE400000000000000;
          sub_24F920AC8();
          v21 = sub_24F920AE8();
          v23 = v22;
          (*v43)(v6, v46);
          *(inited + 72) = MEMORY[0x277D837D0];
          v24 = MEMORY[0x277D22580];
          *(inited + 48) = v21;
          *(inited + 56) = v23;
          *(inited + 80) = v24;
          *(inited + 88) = 0x65756C6176;
          *(inited + 96) = 0xE500000000000000;
          v25 = sub_24F920AD8();
          *(inited + 128) = MEMORY[0x277D83B88];
          *(inited + 136) = sub_24E65901C();
          *(inited + 104) = v25;
          v26 = sub_24E607D0C(inited);
          swift_setDeallocating();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F18);
          swift_arrayDestroy();
          v27 = sub_24E80FFAC(v26);

          (*v42)(v9, v19);
          v49 = v16;
          v29 = *(v16 + 16);
          v28 = *(v16 + 24);
          if (v29 >= v28 >> 1)
          {
            sub_24F458B9C((v28 > 1), v29 + 1, 1);
            v16 = v49;
          }

          *(v16 + 16) = v29 + 1;
          *(v16 + 8 * v29 + 32) = v27;
          v18 += v48;
          --v15;
        }

        while (v15);

        v11 = MEMORY[0x277D84F90];
        v10 = v35;
        v13 = v40;
        v12 = v39;
      }

      else
      {
        v16 = v11;
      }

      v50 = v13;
      v31 = *(v13 + 16);
      v30 = *(v13 + 24);
      if (v31 >= v30 >> 1)
      {
        sub_24F458B5C((v30 > 1), v31 + 1, 1);
        v13 = v50;
      }

      ++v12;
      *(v13 + 16) = v31 + 1;
      *(v13 + 8 * v31 + 32) = v16;
    }

    while (v12 != v10);
    a2 = v34;
  }

  else
  {
    v13 = MEMORY[0x277D84F90];
  }

  a2[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F232580);
  result = sub_24EE88798();
  a2[4] = result;
  *a2 = v13;
  return result;
}

unint64_t sub_24EE87AE8@<X0>(uint64_t a1@<X1>, void *a2@<X8>)
{
  v4 = sub_24F920A88();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (&v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v8);
  v10 = &v36 - v9;
  v11 = *(a1 + 16);
  v12 = MEMORY[0x277D84F90];
  if (v11)
  {
    v36 = a2;
    v47 = MEMORY[0x277D84F90];
    sub_24F458B9C(0, v11, 0);
    v14 = *(v5 + 16);
    v13 = v5 + 16;
    v44 = v14;
    v15 = (a1 + ((*(v13 + 64) + 32) & ~*(v13 + 64)));
    v43 = (v13 + 72);
    v42 = (v13 - 8);
    v38 = (v13 + 80);
    v12 = v47;
    v41 = *(v13 + 56);
    v40 = *MEMORY[0x277D0D0E8];
    v37 = *MEMORY[0x277D0D0F0];
    v46 = xmmword_24F93DE60;
    v45 = v13;
    while (1)
    {
      v16 = v44;
      v44(v10, v15, v4);
      v16(v7, v10, v4);
      v17 = (*v43)(v7, v4);
      if (v17 == v40)
      {
        (*v38)(v7, v4);
        v39 = *v7;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F08);
        inited = swift_initStackObject();
        *(inited + 16) = v46;
        *(inited + 32) = 0x646574696D696CLL;
        *(inited + 40) = 0xE700000000000000;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21BD18);
        v19 = swift_initStackObject();
        *(v19 + 16) = v46;
        v20 = v11;
        v21 = v12;
        v22 = v4;
        v23 = v7;
        v24 = v10;
        *(v19 + 32) = 0x746E756F63;
        v25 = v19 + 32;
        v26 = v39;
        *(v19 + 40) = 0xE500000000000000;
        *(v19 + 48) = v26;
        v39 = sub_24E60B368(v19);
        swift_setDeallocating();
        v27 = v25;
        v10 = v24;
        v7 = v23;
        v4 = v22;
        v12 = v21;
        v11 = v20;
        sub_24E601704(v27, &qword_27F21BD20);
        *(inited + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21BD48);
        *(inited + 80) = sub_24E776EC0();
        *(inited + 48) = v39;
        v28 = sub_24E607D0C(inited);
        swift_setDeallocating();
        sub_24E601704(inited + 32, &qword_27F212F18);
        v29 = sub_24E80FFAC(v28);
      }

      else
      {
        if (v17 != v37)
        {
          v32 = *v42;
          (*v42)(v10, v4);
          v32(v7, v4);
          v29 = MEMORY[0x277D84F98];
          goto LABEL_9;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F08);
        v30 = swift_initStackObject();
        *(v30 + 16) = v46;
        *(v30 + 32) = 0x6574696D696C6E75;
        *(v30 + 40) = 0xE900000000000064;
        *(v30 + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F227A20);
        *(v30 + 80) = sub_24EC73450(&qword_27F21BD70, &qword_27F227A20);
        *(v30 + 48) = MEMORY[0x277D84F98];
        v31 = sub_24E607D0C(v30);
        swift_setDeallocating();
        sub_24E601704(v30 + 32, &qword_27F212F18);
        v29 = sub_24E80FFAC(v31);
      }

      (*v42)(v10, v4);
LABEL_9:
      v47 = v12;
      v34 = *(v12 + 16);
      v33 = *(v12 + 24);
      if (v34 >= v33 >> 1)
      {
        sub_24F458B9C((v33 > 1), v34 + 1, 1);
        v12 = v47;
      }

      *(v12 + 16) = v34 + 1;
      *(v12 + 8 * v34 + 32) = v29;
      v15 += v41;
      if (!--v11)
      {
        a2 = v36;
        break;
      }
    }
  }

  a2[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F232570);
  result = sub_24EE886F4();
  a2[4] = result;
  *a2 = v12;
  return result;
}

uint64_t sub_24EE88054@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v24 = sub_24F920A88();
  v21 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F232590);
  v23 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v7 = &v17 - v6;
  v8 = type metadata accessor for ChallengeDefinitionDefaultOptions();
  MEMORY[0x28223BE20](v8);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24EE8881C();
  sub_24F92D108();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v20 = v8;
  v11 = v10;
  v13 = v23;
  v12 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2325A0);
  v27 = 0;
  sub_24EE88870();
  v14 = v25;
  sub_24F92CC68();
  v18 = v11;
  v19 = v28;
  *v11 = v28;
  v26 = 1;
  sub_24EE88924(&qword_27F2325B8, MEMORY[0x277D0D0F8]);
  sub_24F92CC68();
  (*(v13 + 8))(v7, v14);
  v15 = v18;
  (*(v21 + 32))(&v18[*(v20 + 20)], v5, v12);
  sub_24EE8896C(v15, v22);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_24EA6FDB0(v15);
}

uint64_t sub_24EE883B4@<X0>(void *a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F08);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F93A400;
  *(inited + 32) = 0x6E6F697461727564;
  *(inited + 40) = 0xEF736E6F6974704FLL;
  sub_24EE87620(v4, (inited + 48));
  strcpy((inited + 88), "attemptOptions");
  *(inited + 103) = -18;
  sub_24EE87AE8(v3, (inited + 104));
  v6 = sub_24E607D0C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F18);
  swift_arrayDestroy();
  v7 = sub_24E80FFAC(v6);

  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F20);
  result = sub_24EC73450(&qword_27F212F28, &qword_27F212F20);
  a1[4] = result;
  *a1 = v7;
  return result;
}

uint64_t sub_24EE88524()
{
  if (*v0)
  {
    return 0x4F74706D65747461;
  }

  else
  {
    return 0x6E6F697461727564;
  }
}

uint64_t sub_24EE88578@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6E6F697461727564 && a2 == 0xEE006E6F6974704FLL;
  if (v6 || (sub_24F92CE08() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x4F74706D65747461 && a2 == 0xEE00736E6F697470)
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

uint64_t sub_24EE88664(uint64_t a1)
{
  v2 = sub_24EE8881C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24EE886A0(uint64_t a1)
{
  v2 = sub_24EE8881C();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_24EE886F4()
{
  result = qword_27F232578;
  if (!qword_27F232578)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F232570);
    sub_24EC73450(&qword_27F212F28, &qword_27F212F20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F232578);
  }

  return result;
}

unint64_t sub_24EE88798()
{
  result = qword_27F232588;
  if (!qword_27F232588)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F232580);
    sub_24EE886F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F232588);
  }

  return result;
}

unint64_t sub_24EE8881C()
{
  result = qword_27F232598;
  if (!qword_27F232598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F232598);
  }

  return result;
}

unint64_t sub_24EE88870()
{
  result = qword_27F2325A8;
  if (!qword_27F2325A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2325A0);
    sub_24EE88924(&qword_27F2325B0, MEMORY[0x277D0D188]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2325A8);
  }

  return result;
}

uint64_t sub_24EE88924(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24EE8896C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ChallengeDefinitionDefaultOptions();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_24EE889E4()
{
  result = qword_27F2325C0;
  if (!qword_27F2325C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2325C0);
  }

  return result;
}

unint64_t sub_24EE88A3C()
{
  result = qword_27F2325C8;
  if (!qword_27F2325C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2325C8);
  }

  return result;
}

unint64_t sub_24EE88A94()
{
  result = qword_27F2325D0;
  if (!qword_27F2325D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2325D0);
  }

  return result;
}

uint64_t PersonalizationTransparencyPage.__allocating_init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  PersonalizationTransparencyPage.init(deserializing:using:)(a1, a2);
  return v4;
}

void *PersonalizationTransparencyPage.init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v54 = v4;
  v49 = *v4;
  v50 = v3;
  v7 = sub_24F928818();
  v42 = *(v7 - 8);
  v43 = v7;
  MEMORY[0x28223BE20](v7);
  v45 = v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_24F9285B8();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v41 = v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v44 = v40 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v47 = v40 - v16;
  MEMORY[0x28223BE20](v15);
  v18 = v40 - v17;
  v53 = sub_24F928388();
  v19 = *(v53 - 8);
  v20 = MEMORY[0x28223BE20](v53);
  v40[2] = v40 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v24 = v40 - v23;
  v25 = MEMORY[0x28223BE20](v22);
  v46 = v40 - v26;
  MEMORY[0x28223BE20](v25);
  v28 = v40 - v27;
  v55 = a1;
  sub_24F928398();
  v29 = *(v10 + 16);
  v51 = a2;
  v52 = v9;
  v48 = v29;
  v29(v18, a2, v9);
  type metadata accessor for GenericAccountPage();
  swift_allocObject();
  v30 = v50;
  v31 = GenericAccountPage.init(deserializing:using:)(v28, v18);
  if (v30)
  {
    (*(v10 + 8))(v51, v52);
    (*(v19 + 8))(v55, v53);
    v32 = v54;
    swift_deallocPartialClassInstance();
  }

  else
  {
    v40[1] = v24;
    v50 = v19;
    v54[2] = v31;
    v33 = v46;
    sub_24F928398();
    v34 = v47;
    v36 = v51;
    v35 = v52;
    v48(v47, v51, v52);
    swift_allocObject();
    v37 = GenericAccountPage.init(deserializing:using:)(v33, v34);
    v32 = v54;
    v54[3] = v37;
    sub_24F928398();
    v48(v44, v36, v35);
    v38 = v45;
    sub_24F928788();
    (*(v42 + 32))(v32 + OBJC_IVAR____TtC12GameStoreKit31PersonalizationTransparencyPage_pageMetrics, v38, v43);
    type metadata accessor for PageRenderMetricsEvent();
    sub_24F928398();
    v48(v41, v36, v35);
    sub_24EE89414();
    sub_24F929548();
    (*(v10 + 8))(v36, v35);
    (*(v50 + 8))(v55, v53);
    *(v32 + OBJC_IVAR____TtC12GameStoreKit31PersonalizationTransparencyPage_pageRenderEvent) = v56;
  }

  return v32;
}

uint64_t PersonalizationTransparencyPage.pageMetrics.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC12GameStoreKit31PersonalizationTransparencyPage_pageMetrics;
  v4 = sub_24F928818();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PersonalizationTransparencyPage.deinit()
{

  v1 = OBJC_IVAR____TtC12GameStoreKit31PersonalizationTransparencyPage_pageMetrics;
  v2 = sub_24F928818();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t PersonalizationTransparencyPage.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC12GameStoreKit31PersonalizationTransparencyPage_pageMetrics;
  v2 = sub_24F928818();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

void *sub_24EE8931C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = swift_allocObject();
  result = PersonalizationTransparencyPage.init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = v7;
  }

  return result;
}

uint64_t sub_24EE89398@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC12GameStoreKit31PersonalizationTransparencyPage_pageMetrics;
  v5 = sub_24F928818();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

unint64_t sub_24EE89414()
{
  result = qword_27F2218C0;
  if (!qword_27F2218C0)
  {
    type metadata accessor for PageRenderMetricsEvent();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2218C0);
  }

  return result;
}

uint64_t type metadata accessor for PersonalizationTransparencyPage()
{
  result = qword_27F2325D8;
  if (!qword_27F2325D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24EE894C0()
{
  result = sub_24F928818();
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

uint64_t sub_24EE895A8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2325E8);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v10 - v5;
  sub_24EE896D0(a2, &v10 - v5);
  v7 = sub_24F9234D8();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    return sub_24EE89740(v6);
  }

  (*(v8 + 8))(a1, v7);
  return (*(v8 + 32))(a1, v6, v7);
}

uint64_t sub_24EE896D0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2325E8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24EE89740(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2325E8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t UpdateAllAction.__allocating_init(ordering:actionMetrics:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_24F91F6B8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = swift_allocObject();
  *(v8 + OBJC_IVAR____TtC12GameStoreKit15UpdateAllAction_ordering) = a1;
  v26 = 0;
  memset(v25, 0, sizeof(v25));
  v9 = OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics;
  v10 = sub_24F928AD8();
  v11 = *(v10 - 8);
  (*(v11 + 16))(v8 + v9, a2, v10);
  v12 = OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics;
  v13 = sub_24F929608();
  (*(*(v13 - 8) + 56))(v8 + v12, 1, 1, v13);
  v14 = (v8 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender);
  *v14 = 0u;
  v14[1] = 0u;
  v15 = v8 + OBJC_IVAR____TtC12GameStoreKit6Action_id;
  sub_24E65E064(v25, &v22);
  if (*(&v23 + 1))
  {
    v16 = v23;
    *v15 = v22;
    *(v15 + 16) = v16;
    *(v15 + 32) = v24;
  }

  else
  {
    sub_24F91F6A8();
    v17 = sub_24F91F668();
    v19 = v18;
    (*(v5 + 8))(v7, v4);
    v21[1] = v17;
    v21[2] = v19;
    sub_24F92C7F8();
    sub_24E601704(&v22, &qword_27F235830);
  }

  (*(v11 + 8))(a2, v10);
  sub_24E601704(v25, &qword_27F235830);
  *(v8 + 16) = 0u;
  *(v8 + 32) = 0u;
  return v8;
}

uint64_t UpdateAllAction.init(ordering:actionMetrics:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_24F91F6B8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = v26 - v11;
  v13 = sub_24F928AD8();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v3 + OBJC_IVAR____TtC12GameStoreKit15UpdateAllAction_ordering) = a1;
  v34 = 0;
  memset(v33, 0, sizeof(v33));
  (*(v14 + 16))(v16, a2, v13);
  v17 = sub_24F929608();
  (*(*(v17 - 8) + 56))(v12, 1, 1, v17);
  v18 = (v3 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender);
  *v18 = 0u;
  v18[1] = 0u;
  sub_24E65E064(v33, &v27);
  if (*(&v28 + 1))
  {
    v30 = v27;
    v31 = v28;
    v32 = v29;
  }

  else
  {
    sub_24F91F6A8();
    v19 = sub_24F91F668();
    v20 = v7;
    v22 = v21;
    (*(v20 + 8))(v9, v6);
    v26[1] = v19;
    v26[2] = v22;
    sub_24F92C7F8();
    sub_24E601704(&v27, &qword_27F235830);
  }

  (*(v14 + 8))(a2, v13);
  sub_24E601704(v33, &qword_27F235830);
  v23 = v3 + OBJC_IVAR____TtC12GameStoreKit6Action_id;
  *(v23 + 32) = v32;
  v24 = v31;
  *v23 = v30;
  *(v23 + 16) = v24;
  sub_24E65E0D4(v12, v3 + OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics);
  *(v3 + 16) = 0u;
  *(v3 + 32) = 0u;
  (*(v14 + 32))(v3 + OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics, v16, v13);
  return v3;
}

char *UpdateAllAction.__allocating_init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_24F9285B8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24F928388();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(swift_allocObject() + OBJC_IVAR____TtC12GameStoreKit15UpdateAllAction_ordering) = MEMORY[0x277D84F90];
  v12 = *(v9 + 16);
  v16 = a1;
  v12(v11, a1, v8);
  (*(v5 + 16))(v7, a2, v4);
  v13 = Action.init(deserializing:using:)(v11, v7);
  (*(v5 + 8))(a2, v4);
  (*(v9 + 8))(v16, v8);
  return v13;
}

char *UpdateAllAction.init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v5 = sub_24F9285B8();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_24F928388();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v2 + OBJC_IVAR____TtC12GameStoreKit15UpdateAllAction_ordering) = MEMORY[0x277D84F90];
  v14 = *(v10 + 16);
  v18 = a1;
  v14(v13, a1, v9, v11);
  (*(v6 + 16))(v8, a2, v5);
  v15 = Action.init(deserializing:using:)(v13, v8);
  (*(v6 + 8))(a2, v5);
  (*(v10 + 8))(v18, v9);
  return v15;
}

uint64_t UpdateAllAction.deinit()
{

  v1 = OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics;
  v2 = sub_24F928AD8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_24E6585F8(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_id);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics, &qword_27F213E68);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender, &qword_27F2129B0);

  return v0;
}

uint64_t UpdateAllAction.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics;
  v2 = sub_24F928AD8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_24E6585F8(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_id);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics, &qword_27F213E68);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender, &qword_27F2129B0);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for UpdateAllAction()
{
  result = qword_27F2325F0;
  if (!qword_27F2325F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t CancelPreorderAction.__allocating_init(preorderAdamId:isArcade:actionMetrics:)(void *a1, char a2, uint64_t a3)
{
  v6 = sub_24F91F6B8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = swift_allocObject();
  v11 = a1[1];
  v12 = (v10 + OBJC_IVAR____TtC12GameStoreKit20CancelPreorderAction_preorderAdamId);
  *v12 = *a1;
  v12[1] = v11;
  *(v10 + OBJC_IVAR____TtC12GameStoreKit20CancelPreorderAction_isArcade) = a2;
  v30 = 0;
  memset(v29, 0, sizeof(v29));
  v13 = OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics;
  v14 = sub_24F928AD8();
  v15 = *(v14 - 8);
  (*(v15 + 16))(v10 + v13, a3, v14);
  v16 = OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics;
  v17 = sub_24F929608();
  (*(*(v17 - 8) + 56))(v10 + v16, 1, 1, v17);
  v18 = (v10 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender);
  *v18 = 0u;
  v18[1] = 0u;
  v19 = v10 + OBJC_IVAR____TtC12GameStoreKit6Action_id;
  sub_24E65E064(v29, &v26);
  if (*(&v27 + 1))
  {
    v20 = v27;
    *v19 = v26;
    *(v19 + 16) = v20;
    *(v19 + 32) = v28;
  }

  else
  {
    sub_24F91F6A8();
    v21 = sub_24F91F668();
    v23 = v22;
    (*(v7 + 8))(v9, v6);
    v25[1] = v21;
    v25[2] = v23;
    sub_24F92C7F8();
    sub_24E601704(&v26, &qword_27F235830);
  }

  (*(v15 + 8))(a3, v14);
  sub_24E601704(v29, &qword_27F235830);
  *(v10 + 16) = 0u;
  *(v10 + 32) = 0u;
  return v10;
}

uint64_t CancelPreorderAction.init(preorderAdamId:isArcade:actionMetrics:)(void *a1, char a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_24F91F6B8();
  v28[0] = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = v28 - v12;
  v14 = sub_24F928AD8();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a1[1];
  v19 = (v4 + OBJC_IVAR____TtC12GameStoreKit20CancelPreorderAction_preorderAdamId);
  *v19 = *a1;
  v19[1] = v18;
  *(v4 + OBJC_IVAR____TtC12GameStoreKit20CancelPreorderAction_isArcade) = a2;
  v36 = 0;
  memset(v35, 0, sizeof(v35));
  (*(v15 + 16))(v17, a3, v14);
  v20 = sub_24F929608();
  (*(*(v20 - 8) + 56))(v13, 1, 1, v20);
  v21 = (v4 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender);
  *v21 = 0u;
  v21[1] = 0u;
  sub_24E65E064(v35, &v29);
  if (*(&v30 + 1))
  {
    v32 = v29;
    v33 = v30;
    v34 = v31;
  }

  else
  {
    sub_24F91F6A8();
    v22 = sub_24F91F668();
    v24 = v23;
    (*(v28[0] + 8))(v10, v8);
    v28[1] = v22;
    v28[2] = v24;
    sub_24F92C7F8();
    sub_24E601704(&v29, &qword_27F235830);
  }

  (*(v15 + 8))(a3, v14);
  sub_24E601704(v35, &qword_27F235830);
  v25 = v4 + OBJC_IVAR____TtC12GameStoreKit6Action_id;
  *(v25 + 32) = v34;
  v26 = v33;
  *v25 = v32;
  *(v25 + 16) = v26;
  sub_24E65E0D4(v13, v4 + OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics);
  *(v4 + 16) = 0u;
  *(v4 + 32) = 0u;
  (*(v15 + 32))(v4 + OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics, v17, v14);
  return v4;
}

void *CancelPreorderAction.init(deserializing:using:)(char *a1, uint64_t a2)
{
  v4 = v2;
  v48 = a2;
  v6 = *v4;
  v44 = v3;
  v45 = v6;
  v7 = sub_24F9285B8();
  v8 = *(v7 - 8);
  v46 = v7;
  v47 = v8;
  MEMORY[0x28223BE20](v7);
  v43 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_24F928388();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v42 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = &v42 - v18;
  v50 = a1;
  sub_24F928398();
  v20 = sub_24F928348();
  v22 = v21;
  v23 = v19;
  v24 = *(v11 + 8);
  v49 = v10;
  v24(v23, v10);
  if (!v22)
  {
    v31 = sub_24F92AC38();
    sub_24E8F2E6C();
    swift_allocError();
    strcpy(v32, "preorderAdamId");
    v33 = v45;
    v32[15] = -18;
    *(v32 + 2) = v33;
    (*(*(v31 - 8) + 104))(v32, *MEMORY[0x277D22530], v31);
    swift_willThrow();
    (*(v47 + 8))(v48, v46);
    v24(v50, v49);
    goto LABEL_5;
  }

  v25 = v24;
  v26 = (v4 + OBJC_IVAR____TtC12GameStoreKit20CancelPreorderAction_preorderAdamId);
  *v26 = v20;
  v26[1] = v22;
  sub_24F928398();
  v27 = sub_24F928278();
  v25(v17, v49);
  if (v27 == 2)
  {
    v28 = sub_24F92AC38();
    sub_24E8F2E6C();
    swift_allocError();
    *v29 = 0x6564616372417369;
    v30 = v45;
    v29[1] = 0xE800000000000000;
    v29[2] = v30;
    (*(*(v28 - 8) + 104))(v29, *MEMORY[0x277D22530], v28);
    swift_willThrow();
    (*(v47 + 8))(v48, v46);
    v25(v50, v49);

LABEL_5:
    swift_deallocPartialClassInstance();
    return v4;
  }

  v34 = v25;
  *(v4 + OBJC_IVAR____TtC12GameStoreKit20CancelPreorderAction_isArcade) = v27 & 1;
  (*(v11 + 16))(v14, v50, v49);
  v36 = v47;
  v35 = v48;
  v37 = v43;
  v38 = v46;
  (*(v47 + 16))(v43, v48, v46);
  v39 = v44;
  v40 = Action.init(deserializing:using:)(v14, v37);
  if (!v39)
  {
    v4 = v40;
  }

  (*(v36 + 8))(v35, v38);
  v34(v50, v49);
  return v4;
}

uint64_t CancelPreorderAction.preorderAdamId.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtC12GameStoreKit20CancelPreorderAction_preorderAdamId + 8);
  *a1 = *(v1 + OBJC_IVAR____TtC12GameStoreKit20CancelPreorderAction_preorderAdamId);
  a1[1] = v2;
}

uint64_t CancelPreorderAction.deinit()
{

  v1 = OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics;
  v2 = sub_24F928AD8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_24E6585F8(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_id);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics, &qword_27F213E68);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender, &qword_27F2129B0);

  return v0;
}

uint64_t CancelPreorderAction.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics;
  v2 = sub_24F928AD8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_24E6585F8(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_id);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics, &qword_27F213E68);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender, &qword_27F2129B0);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for CancelPreorderAction()
{
  result = qword_27F232600;
  if (!qword_27F232600)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24EE8B364@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(*(v2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ACF0) + 40)) + 16) && (sub_24E76DD40(a1), (v5 & 1) != 0))
  {
    type metadata accessor for Shelf();

    sub_24F928A78();
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F237E00);
    return (*(*(v6 - 8) + 56))(a2, 0, 1, v6);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F237E00);
    v9 = *(*(v8 - 8) + 56);

    return v9(a2, 1, 1, v8);
  }
}

id ShelfBasedCollectionViewController.shelfLayoutContext(containing:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, char *a3@<X8>)
{
  if (sub_24F91FA28() < 1)
  {
    if (qword_27F210578 != -1)
    {
      swift_once();
    }

    v8 = sub_24F92AAE8();
    __swift_project_value_buffer(v8, qword_27F39C3C8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
    sub_24F928468();
    *(swift_allocObject() + 16) = xmmword_24F93DE60;
    v12[0] = 0;
    v12[1] = 0xE000000000000000;
    sub_24F92C888();
    v9 = sub_24F92D1E8();
    MEMORY[0x253050C20](v9);

    MEMORY[0x253050C20](0xD00000000000003CLL, 0x800000024FA60450);
    sub_24F91FA78();
    sub_24EE907F8(&qword_27F22ECE0, MEMORY[0x277CC9AF8]);
    v10 = sub_24F92CD88();
    MEMORY[0x253050C20](v10);

    MEMORY[0x253050C20](0xD000000000000013, 0x800000024FA60490);
    v12[3] = MEMORY[0x277D837D0];
    sub_24F928438();
    sub_24E601704(v12, &qword_27F2129B0);
    sub_24F92A588();

    v11 = type metadata accessor for ShelfLayoutContext();
    return (*(*(v11 - 8) + 56))(a3, 1, 1, v11);
  }

  else
  {
    v6 = sub_24F91FA88();

    return ShelfBasedCollectionViewController.shelfLayoutContext(for:)(v6, a1, a2, a3);
  }
}

id ShelfBasedCollectionViewController.shelfLayoutContext(for:)@<X0>(int64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v138 = a1;
  v8 = type metadata accessor for PageEnvironment();
  MEMORY[0x28223BE20](v8 - 8);
  v128 = &v116 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v130 = (&v116 - v11);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23A680);
  MEMORY[0x28223BE20](v12);
  v14 = &v116 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v116 - v16;
  MEMORY[0x28223BE20](v18);
  v129 = &v116 - v19;
  MEMORY[0x28223BE20](v20);
  v131 = &v116 - v21;
  MEMORY[0x28223BE20](v22);
  v133 = &v116 - v23;
  MEMORY[0x28223BE20](v24);
  *&MinY = &v116 - v25;
  MEMORY[0x28223BE20](v26);
  v136 = &v116 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23A690);
  MEMORY[0x28223BE20](v28 - 8);
  v30 = &v116 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F237E00);
  v139 = *(v31 - 8);
  v140 = v31;
  MEMORY[0x28223BE20](v31);
  v135 = &v116 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = MEMORY[0x28223BE20](v33);
  v137 = &v116 - v35;
  v36 = (*(a3 + 32))(a2, a3, v34);
  if (!v36)
  {
    goto LABEL_7;
  }

  v37 = v36;
  v124 = v17;
  v134 = a4;
  v38 = *(a3 + 56);
  v126 = a2;
  v127 = v4;
  v39 = v38(a2, a3);
  if (!v39)
  {

    (*(v139 + 56))(v30, 1, 1, v140);
    goto LABEL_6;
  }

  v40 = v39;
  v123 = v14;
  v125 = v12;
  sub_24EE8CF48(v138, v30);

  v42 = v139;
  v41 = v140;
  if ((*(v139 + 48))(v30, 1, v140) == 1)
  {

LABEL_6:
    a4 = v134;
    sub_24E601704(v30, &unk_27F23A690);
LABEL_7:
    v43 = type metadata accessor for ShelfLayoutContext();
    return (*(*(v43 - 8) + 56))(a4, 1, 1, v43);
  }

  v45 = v137;
  (*(v42 + 32))(v137, v30, v41);
  v46 = v126;
  v47 = v38(v126, a3);
  if (!v47)
  {

    (*(v42 + 8))(v45, v41);
    a4 = v134;
    goto LABEL_7;
  }

  v48 = v47;
  v49 = v125;
  v50 = *&MinY;
  sub_24EE8DB40(*&MinY, *&MinY + *(v125 + 48), v138);

  v51 = v136;
  sub_24E6009C8(v50, v136, &unk_27F23A680);
  v52 = v37;
  [v52 bounds];
  v54 = v53;
  v56 = v55;
  v57 = [v52 readableContentGuide];
  v117 = v52;

  [v57 layoutFrame];
  v59 = v58;
  v61 = v60;
  v63 = v62;
  v65 = v64;

  v150.origin.x = v59;
  v150.origin.y = v61;
  v150.size.width = v63;
  v150.size.height = v65;
  MinY = CGRectGetMinY(v150);
  v151.origin.x = v59;
  v151.origin.y = v61;
  v151.size.width = v63;
  v151.size.height = v65;
  MinX = CGRectGetMinX(v151);
  v152.origin.x = v59;
  v152.origin.y = v61;
  v152.size.width = v63;
  v152.size.height = v65;
  MaxY = CGRectGetMaxY(v152);
  v153.origin.x = v59;
  v153.origin.y = v61;
  v153.size.width = v63;
  v153.size.height = v65;
  MaxX = CGRectGetMaxX(v153);
  v68 = v127;
  ShelfBasedCollectionViewController.pageGridProvider.getter(a3, v147);
  v119 = v149;
  v120 = v148;
  v118 = __swift_project_boxed_opaque_existential_1(v147, v148);
  v69 = v133;
  sub_24E60169C(v51, v133, &unk_27F23A680);
  v121 = *(a3 + 104);
  v70 = v121(v46, a3);
  v72 = v71;
  v74 = v73;
  v76 = v75;
  result = [v68 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_15;
  }

  v77 = result;
  v78 = v56 - MaxY;
  v79 = v54 - MaxX;
  v80 = *(v49 + 48);
  v81 = [result traitCollection];

  v82 = v130;
  PageEnvironment.init(traitCollection:hasHorizontalSafeArea:)(v81, 1, v130);
  (*(v119 + 8))(v146, v137, v69, v69 + v80, v82, v120, v54, v56, MinY, MinX, v78, v79, v70, v72, v74, v76);
  sub_24EE906DC(v82, type metadata accessor for PageEnvironment);
  sub_24E601704(v69 + v80, &unk_27F23A690);
  sub_24E601704(v69, &unk_27F23A690);
  __swift_destroy_boxed_opaque_existential_1(v147);
  ShelfBasedCollectionViewController.pageGridProvider.getter(a3, v143);
  v83 = v144;
  v84 = v145;
  v130 = __swift_project_boxed_opaque_existential_1(v143, v144);
  v85 = a3;
  v86 = v131;
  sub_24E60169C(v136, v131, &unk_27F23A680);
  v133 = v85;
  v87 = v121(v46, v85);
  v89 = v88;
  v91 = v90;
  v93 = v92;
  result = [v68 view];
  v94 = v139;
  if (!result)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v95 = result;
  v96 = *(v125 + 48);
  v97 = [result traitCollection];

  v98 = v128;
  PageEnvironment.init(traitCollection:hasHorizontalSafeArea:)(v97, 1, v128);
  v99 = v137;
  (*(v84 + 16))(v142, v137, v86, v86 + v96, v98, v83, v84, v54, v56, MinY, MinX, v78, v79, v87, v89, v91, v93);
  sub_24EE906DC(v98, type metadata accessor for PageEnvironment);
  sub_24E601704(v86 + v96, &unk_27F23A690);
  sub_24E601704(v86, &unk_27F23A690);
  __swift_destroy_boxed_opaque_existential_1(v143);
  v100 = *(v94 + 16);
  v100(v135, v99, v140);
  v101 = v129;
  sub_24E60169C(v136, v129, &unk_27F23A680);
  v133 = ShelfBasedCollectionViewController.stateStore.getter(v126, v133);
  result = [v68 view];
  if (result)
  {
    v102 = result;
    v103 = v125;
    v104 = *(v125 + 48);
    MinY = COERCE_DOUBLE([result traitCollection]);

    v105 = v124;
    sub_24E6009C8(v101, v124, &unk_27F23A690);
    sub_24E6009C8(v101 + v104, v105 + *(v103 + 48), &unk_27F23A690);
    v106 = v134;
    v100(v134, v135, v140);
    v107 = type metadata accessor for ShelfLayoutContext();
    *&v106[v107[5]] = v138;
    v108 = v123;
    sub_24E60169C(v105, v123, &unk_27F23A680);
    v109 = *(v103 + 48);
    v110 = &v106[v107[6]];
    sub_24E6009C8(v108, v110, &unk_27F23A690);
    sub_24E6009C8(v108 + v109, v110 + *(v103 + 48), &unk_27F23A690);
    memcpy(&v106[v107[7]], v146, 0x188uLL);
    memcpy(&v106[v107[8]], v142, 0x188uLL);
    *&v106[v107[9]] = v133;
    v111 = type metadata accessor for LayoutContextTraitEnvironment();
    v112 = objc_allocWithZone(v111);
    *&v112[OBJC_IVAR____TtC12GameStoreKit29LayoutContextTraitEnvironment_traitCollection] = MinY;
    v141.receiver = v112;
    v141.super_class = v111;
    v113 = objc_msgSendSuper2(&v141, sel_init);

    sub_24E601704(v105, &unk_27F23A680);
    v114 = v140;
    v115 = *(v139 + 8);
    v115(v135, v140);
    sub_24E601704(v136, &unk_27F23A680);
    v115(v137, v114);
    *&v106[v107[10]] = v113;
    return (*(*(v107 - 1) + 56))(v106, 0, 1, v107);
  }

LABEL_16:
  __break(1u);
  return result;
}

uint64_t ShelfBasedCollectionViewController.itemLayoutContexts(for:)(int64_t a1, uint64_t a2, uint64_t a3)
{
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23A680);
  MEMORY[0x28223BE20](v64);
  v63 = &v50 - v6;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F232610);
  MEMORY[0x28223BE20](v62);
  v67 = (&v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v8);
  v61 = &v50 - v9;
  v60 = type metadata accessor for ItemLayoutContext();
  v59 = *(v60 - 8);
  MEMORY[0x28223BE20](v60);
  v11 = (&v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F232618);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v50 - v13;
  v15 = type metadata accessor for ShelfLayoutContext();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v50 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  ShelfBasedCollectionViewController.shelfLayoutContext(for:)(a1, a2, a3, v14);
  v19 = *(v16 + 48);
  v50 = v15;
  if (v19(v14, 1, v15) == 1)
  {
    sub_24E601704(v14, &qword_27F232618);
    return MEMORY[0x277D84F90];
  }

  sub_24EE9073C(v14, v18, type metadata accessor for ShelfLayoutContext);
  v20 = (*(a3 + 56))(a2, a3);
  if (!v20 || (v21 = v20, v22 = sub_24EE8F688(v18), v21, !v22))
  {
    sub_24EE906DC(v18, type metadata accessor for ShelfLayoutContext);
    return MEMORY[0x277D84F90];
  }

  v23 = *(v22 + 2);
  if (!v23)
  {

    v27 = MEMORY[0x277D84F90];
LABEL_29:
    sub_24EE906DC(v18, type metadata accessor for ShelfLayoutContext);
    return v27;
  }

  v74 = MEMORY[0x277D84F90];
  sub_24F458BDC(0, v23, 0);
  v58 = *(v22 + 2);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213AC8);
  v25 = 0;
  v66 = result;
  v26 = *(result - 8);
  v54 = &v22[(*(v26 + 80) + 32) & ~*(v26 + 80)];
  v27 = v74;
  v55 = v26;
  v52 = v26 + 32;
  v51 = *(v50 + 24);
  v57 = v22;
  v56 = v23;
  v53 = v26 + 16;
  while (v58 != v25)
  {
    if (v25 >= *(v22 + 2))
    {
      goto LABEL_31;
    }

    v28 = v62;
    v29 = *(v62 + 48);
    v30 = v18;
    v31 = v55;
    v32 = &v54[*(v55 + 72) * v25];
    v33 = v61;
    v34 = v66;
    v65 = *(v55 + 16);
    v65(&v61[v29], v32, v66);
    v35 = v67;
    *v67 = v25;
    v36 = *(v28 + 48);
    v37 = *(v31 + 32);
    v18 = v30;
    v37(v35 + v36, &v33[v29], v34);
    v38 = v63;
    sub_24E60169C(v30 + v51, v63, &unk_27F23A680);
    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F237E00);
    LODWORD(v28) = (*(*(v39 - 8) + 48))(v38, 1, v39);
    sub_24E601704(v38 + *(v64 + 48), &unk_27F23A690);
    sub_24E601704(v38, &unk_27F23A690);
    if (v28 == 1)
    {
      v40 = 10;
    }

    else
    {
      v40 = 2;
    }

    swift_getKeyPath();
    sub_24F928A48();

    v41 = v40 & 0xFFFFFFFFFFFFFFDFLL | (32 * ((*v71 >> 1) & 1));
    swift_getKeyPath();
    sub_24F928A48();

    if (v71[0] == 1)
    {
      v41 |= 1uLL;
    }

    else
    {
      v42 = [*(v30 + *(v50 + 40)) traitCollection];
      v43 = sub_24F92BF68();

      if (v43)
      {
        v41 |= 0x10uLL;
      }
    }

    sub_24F928A58();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23A6A0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F232620);
    if (swift_dynamicCast())
    {
      sub_24E612C80(v68, v71);
      v44 = v72;
      v45 = v73;
      __swift_project_boxed_opaque_existential_1(v71, v72);
      (*(v45 + 8))(v70, v44, v45);
      if (LOBYTE(v70[0]) != 4)
      {
        v41 |= 0x40uLL;
      }

      __swift_destroy_boxed_opaque_existential_1(v71);
    }

    else
    {
      v69 = 0;
      memset(v68, 0, sizeof(v68));
      sub_24E601704(v68, &unk_27F23A6B0);
    }

    v46 = v60;
    v47 = v67;
    v65(v11 + *(v60 + 20), v67 + v36, v66);
    sub_24EB07708(v30, v11 + v46[8]);
    *v11 = v25;
    *(v11 + v46[6]) = MEMORY[0x277D84F98];
    *(v11 + v46[7]) = v41;
    sub_24E601704(v47, &qword_27F232610);
    v74 = v27;
    v49 = *(v27 + 16);
    v48 = *(v27 + 24);
    if (v49 >= v48 >> 1)
    {
      sub_24F458BDC(v48 > 1, v49 + 1, 1);
      v27 = v74;
    }

    ++v25;
    *(v27 + 16) = v49 + 1;
    result = sub_24EE9073C(v11, v27 + ((*(v59 + 80) + 32) & ~*(v59 + 80)) + *(v59 + 72) * v49, type metadata accessor for ItemLayoutContext);
    v22 = v57;
    if (v56 == v25)
    {

      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

uint64_t ShelfBasedCollectionViewController.itemLayoutContext(at:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v37 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228650);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v33 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213AC8);
  v11 = *(v10 - 8);
  v35 = v10;
  v36 = v11;
  MEMORY[0x28223BE20](v10);
  v34 = &v33 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F232618);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v33 - v14;
  v16 = type metadata accessor for ShelfLayoutContext();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v33 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  ShelfBasedCollectionViewController.shelfLayoutContext(containing:)(a2, a3, v15);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    v20 = &qword_27F232618;
    v21 = v15;
  }

  else
  {
    sub_24EE9073C(v15, v19, type metadata accessor for ShelfLayoutContext);
    v22 = (*(a3 + 56))(a2, a3);
    if (v22)
    {
      v23 = v22;
      sub_24EE8E8F8(a1, v9);

      v25 = v35;
      v24 = v36;
      if ((*(v36 + 48))(v9, 1, v35) != 1)
      {
        v30 = v34;
        (*(v24 + 32))(v34, v9, v25);
        v31 = sub_24E60D43C(MEMORY[0x277D84F90]);
        v32 = sub_24F91FA08();
        v38 = v31;
        v27 = v37;
        ShelfLayoutContext.itemLayoutContext(for:at:metadata:)(v30, v32, &v38, v37);
        (*(v24 + 8))(v30, v25);
        sub_24EE906DC(v19, type metadata accessor for ShelfLayoutContext);

        v26 = 0;
        goto LABEL_9;
      }

      sub_24EE906DC(v19, type metadata accessor for ShelfLayoutContext);
    }

    else
    {
      sub_24EE906DC(v19, type metadata accessor for ShelfLayoutContext);
      (*(v36 + 56))(v9, 1, 1, v35);
    }

    v20 = &qword_27F228650;
    v21 = v9;
  }

  sub_24E601704(v21, v20);
  v26 = 1;
  v27 = v37;
LABEL_9:
  v28 = type metadata accessor for ItemLayoutContext();
  return (*(*(v28 - 8) + 56))(v27, v26, 1, v28);
}

uint64_t sub_24EE8CF48@<X0>(int64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v47 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F232628);
  v46 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v36 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F232630);
  MEMORY[0x28223BE20](v8 - 8);
  v45 = &v36 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ACF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v36 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23A690);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v36 - v14;
  v16 = v2 + *((*MEMORY[0x277D85000] & *v2) + class metadata base offset for ModelMappedDiffableDataSource + 16);
  swift_beginAccess();
  v43 = v16;
  sub_24E60169C(v16, v12, &qword_27F22ACF0);
  v44 = v10;
  if (a1 < 0 || (v17 = *&v12[*(v10 + 36)], *(v17 + 16) <= a1))
  {
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F237E00);
    (*(*(v22 - 8) + 56))(v15, 1, 1, v22);
  }

  else
  {
    sub_24E772724(v17 + 40 * a1 + 32, &v49);
    v18 = *&v12[*(v10 + 40)];
    if (*(v18 + 16) && (v19 = sub_24E76DD40(&v49), (v20 & 1) != 0))
    {
      v48 = *(*(v18 + 56) + 8 * v19);
      type metadata accessor for Shelf();

      sub_24F928A78();
      v21 = 0;
    }

    else
    {
      v21 = 1;
    }

    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F237E00);
    (*(*(v23 - 8) + 56))(v15, v21, 1, v23);
    sub_24E772780(&v49);
  }

  sub_24E601704(v12, &qword_27F22ACF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F237E00);
  v25 = *(v24 - 8);
  if ((*(v25 + 48))(v15, 1, v24) == 1)
  {
    v37 = v7;
    v38 = v3;
    v41 = v5;
    v42 = a1;
    sub_24E601704(v15, &unk_27F23A690);
    if (qword_27F2105A8 != -1)
    {
      swift_once();
    }

    v40 = sub_24F92AAE8();
    v39 = __swift_project_value_buffer(v40, qword_27F39C458);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
    sub_24F928468();
    *(swift_allocObject() + 16) = xmmword_24F93FC20;
    v26 = MEMORY[0x277D837D0];
    v51 = MEMORY[0x277D837D0];
    v49 = 0xD00000000000002ELL;
    v50 = 0x800000024FA60750;
    sub_24F928438();
    sub_24E601704(&v49, &qword_27F2129B0);
    v51 = MEMORY[0x277D83B88];
    v49 = v42;
    sub_24F928438();
    sub_24E601704(&v49, &qword_27F2129B0);
    v51 = v26;
    v49 = 0xD000000000000033;
    v50 = 0x800000024FA60780;
    sub_24F928438();
    sub_24E601704(&v49, &qword_27F2129B0);
    v27 = (v43 + *(v44 + 52));
    v29 = *v27;
    v28 = v27[1];
    v51 = v26;
    v49 = v29;
    v50 = v28;

    sub_24F928438();
    sub_24E601704(&v49, &qword_27F2129B0);
    sub_24F92A5B8();

    v30 = v38;
    v31 = *((*MEMORY[0x277D85000] & *v38) + class metadata base offset for ModelMappedDiffableDataSource + 24);
    swift_beginAccess();
    v32 = v45;
    sub_24E60169C(v30 + v31, v45, &qword_27F232630);
    if ((*(v46 + 48))(v32, 1, v41))
    {
      sub_24E601704(v32, &qword_27F232630);
      return (*(v25 + 56))(v47, 1, 1, v24);
    }

    else
    {
      v35 = v37;
      sub_24E60169C(v32, v37, &qword_27F232628);
      sub_24E601704(v32, &qword_27F232630);
      sub_24EE8D6C0(v42, v47);
      return sub_24E601704(v35, &qword_27F232628);
    }
  }

  else
  {
    v34 = v47;
    (*(v25 + 32))(v47, v15, v24);
    return (*(v25 + 56))(v34, 0, 1, v24);
  }
}

uint64_t sub_24EE8D6C0@<X0>(int64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23A690);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v20 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ACF0);
  v9 = v8;
  if (a1 < 0 || (v10 = *(v2 + *(v8 + 36)), *(v10 + 16) <= a1))
  {
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F237E00);
    (*(*(v14 - 8) + 56))(v7, 1, 1, v14);
  }

  else
  {
    sub_24E772724(v10 + 40 * a1 + 32, &v24);
    sub_24EE8B364(&v24, v7);
    sub_24E772780(&v24);
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F237E00);
    v12 = *(v11 - 8);
    if ((*(v12 + 48))(v7, 1, v11) != 1)
    {
      (*(v12 + 32))(a2, v7, v11);
      return (*(v12 + 56))(a2, 0, 1, v11);
    }
  }

  v22 = v9;
  v23 = a2;
  sub_24E601704(v7, &unk_27F23A690);
  if (qword_27F2105A8 != -1)
  {
    swift_once();
  }

  v21 = sub_24F92AAE8();
  v20[1] = __swift_project_value_buffer(v21, qword_27F39C458);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
  sub_24F928468();
  *(swift_allocObject() + 16) = xmmword_24F942000;
  v15 = MEMORY[0x277D837D0];
  v26 = MEMORY[0x277D837D0];
  v24 = 0xD000000000000019;
  v25 = 0x800000024FA60520;
  sub_24F928438();
  sub_24E601704(&v24, &qword_27F2129B0);
  v16 = (v2 + *(v22 + 52));
  v18 = *v16;
  v17 = v16[1];
  v26 = v15;
  v24 = v18;
  v25 = v17;

  sub_24F928438();
  sub_24E601704(&v24, &qword_27F2129B0);
  v26 = v15;
  v24 = 0xD00000000000002FLL;
  v25 = 0x800000024FA607C0;
  sub_24F928438();
  sub_24E601704(&v24, &qword_27F2129B0);
  v26 = MEMORY[0x277D83B88];
  v24 = a1;
  sub_24F928438();
  sub_24E601704(&v24, &qword_27F2129B0);
  v26 = v15;
  v24 = 0xD00000000000001CLL;
  v25 = 0x800000024FA607F0;
  sub_24F928438();
  sub_24E601704(&v24, &qword_27F2129B0);
  sub_24F92A5B8();

  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F237E00);
  return (*(*(v19 - 8) + 56))(v23, 1, 1, v19);
}

uint64_t sub_24EE8DB40(uint64_t a1, uint64_t a2, int64_t a3)
{
  v4 = v3;
  v69 = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F232628);
  v64 = *(v7 - 8);
  v65 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v56 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F232630);
  MEMORY[0x28223BE20](v10 - 8);
  v63 = &v56 - v11;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23A680);
  MEMORY[0x28223BE20](v67);
  v59 = &v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v66 = &v56 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ACF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v56 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v56 - v19;
  v21 = v3 + *((*MEMORY[0x277D85000] & *v3) + class metadata base offset for ModelMappedDiffableDataSource + 16);
  swift_beginAccess();
  sub_24E60169C(v21, v20, &qword_27F22ACF0);
  v68 = v15;
  if (a3 < 0)
  {
    sub_24E601704(v20, &qword_27F22ACF0);
  }

  else
  {
    v22 = *(*&v20[*(v15 + 36)] + 16);
    sub_24E601704(v20, &qword_27F22ACF0);
    if (v22 > a3)
    {
      sub_24E60169C(v21, v17, &qword_27F22ACF0);
      v23 = v68;
      v24 = *&v17[*(v68 + 36)];
      if (a3 && *(v24 + 16) >= a3)
      {
        sub_24E772724(v24 + 40 * a3 - 8, &v71);
        v25 = *&v17[*(v23 + 40)];
        if (*(v25 + 16) && (v26 = sub_24E76DD40(&v71), (v27 & 1) != 0))
        {
          v70 = *(*(v25 + 56) + 8 * v26);
          type metadata accessor for Shelf();

          sub_24F928A78();
          v28 = 0;
        }

        else
        {
          v28 = 1;
        }

        v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F237E00);
        (*(*(v48 - 8) + 56))(a1, v28, 1, v48);
        sub_24E772780(&v71);
      }

      else
      {
        v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F237E00);
        (*(*(v47 - 8) + 56))(a1, 1, 1, v47);
      }

      if (a3 + 1 >= *(v24 + 16))
      {
        v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F237E00);
        (*(*(v54 - 8) + 56))(v69, 1, 1, v54);
      }

      else
      {
        sub_24E772724(v24 + 40 * (a3 + 1) + 32, &v71);
        v49 = *&v17[*(v23 + 40)];
        if (*(v49 + 16))
        {
          v50 = sub_24E76DD40(&v71);
          v51 = v69;
          if (v52)
          {
            v70 = *(*(v49 + 56) + 8 * v50);
            type metadata accessor for Shelf();

            sub_24F928A78();
            v53 = 0;
          }

          else
          {
            v53 = 1;
          }
        }

        else
        {
          v53 = 1;
          v51 = v69;
        }

        v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F237E00);
        (*(*(v55 - 8) + 56))(v51, v53, 1, v55);
        sub_24E772780(&v71);
      }

      return sub_24E601704(v17, &qword_27F22ACF0);
    }
  }

  v58 = v9;
  v62 = a1;
  if (qword_27F2105A8 != -1)
  {
    swift_once();
  }

  v61 = sub_24F92AAE8();
  v60 = __swift_project_value_buffer(v61, qword_27F39C458);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
  sub_24F928468();
  *(swift_allocObject() + 16) = xmmword_24F93FC20;
  v29 = MEMORY[0x277D837D0];
  v73 = MEMORY[0x277D837D0];
  v71 = 0xD000000000000033;
  v72 = 0x800000024FA60660;
  sub_24F928438();
  sub_24E601704(&v71, &qword_27F2129B0);
  v73 = MEMORY[0x277D83B88];
  v57 = a3;
  v71 = a3;
  sub_24F928438();
  sub_24E601704(&v71, &qword_27F2129B0);
  v73 = v29;
  v71 = 0xD00000000000003DLL;
  v72 = 0x800000024FA606A0;
  sub_24F928438();
  sub_24E601704(&v71, &qword_27F2129B0);
  v30 = (v21 + *(v68 + 52));
  v32 = *v30;
  v31 = v30[1];
  v73 = v29;
  v71 = v32;
  v72 = v31;

  sub_24F928438();
  sub_24E601704(&v71, &qword_27F2129B0);
  sub_24F92A5B8();

  v33 = *((*MEMORY[0x277D85000] & *v4) + class metadata base offset for ModelMappedDiffableDataSource + 24);
  swift_beginAccess();
  v34 = v63;
  sub_24E60169C(v4 + v33, v63, &qword_27F232630);
  if ((*(v64 + 48))(v34, 1, v65))
  {
    sub_24E601704(v34, &qword_27F232630);
    v35 = v67;
    v36 = *(v67 + 48);
    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F237E00);
    v38 = *(*(v37 - 8) + 56);
    v39 = v66;
    v38(v66, 1, 1, v37);
    v38(v39 + v36, 1, 1, v37);
  }

  else
  {
    v35 = v67;
    v40 = *(v67 + 48);
    v41 = v58;
    sub_24E60169C(v34, v58, &qword_27F232628);
    sub_24E601704(v34, &qword_27F232630);
    v42 = v59;
    sub_24EE8E4B8(v59, v59 + v40, v57);
    sub_24E601704(v41, &qword_27F232628);
    v43 = v42;
    v39 = v66;
    sub_24E6009C8(v43, v66, &unk_27F23A680);
  }

  v44 = v69;
  v45 = *(v35 + 48);
  sub_24E6009C8(v39, v62, &unk_27F23A690);
  return sub_24E6009C8(v39 + v45, v44, &unk_27F23A690);
}

uint64_t sub_24EE8E4B8(uint64_t a1, uint64_t a2, int64_t a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ACF0);
  v9 = *(v4 + *(v8 + 36));
  if ((a3 & 0x8000000000000000) == 0 && *(v9 + 16) > a3)
  {
    goto LABEL_5;
  }

  v19 = a1;
  v20 = *(v4 + *(v8 + 36));
  v21 = v4;
  v22 = a2;
  if (qword_27F2105A8 != -1)
  {
    goto LABEL_17;
  }

  while (1)
  {
    v18 = sub_24F92AAE8();
    __swift_project_value_buffer(v18, qword_27F39C458);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
    sub_24F928468();
    *(swift_allocObject() + 16) = xmmword_24F93A070;
    v10 = MEMORY[0x277D837D0];
    v25 = MEMORY[0x277D837D0];
    v23 = 0xD000000000000019;
    v24 = 0x800000024FA60520;
    sub_24F928438();
    sub_24E601704(&v23, &qword_27F2129B0);
    v11 = (v21 + *(v8 + 52));
    v8 = v11[1];
    v17 = *v11;
    v25 = v10;
    v23 = v17;
    v24 = v8;
    swift_bridgeObjectRetain_n();
    sub_24F928438();
    sub_24E601704(&v23, &qword_27F2129B0);
    v25 = v10;
    v23 = 0xD000000000000035;
    v24 = 0x800000024FA606E0;
    sub_24F928438();
    sub_24E601704(&v23, &qword_27F2129B0);
    v25 = MEMORY[0x277D83B88];
    v23 = a3;
    sub_24F928438();
    sub_24E601704(&v23, &qword_27F2129B0);
    v25 = v10;
    v23 = 0xD000000000000026;
    v24 = 0x800000024FA60720;
    sub_24F928438();
    sub_24E601704(&v23, &qword_27F2129B0);
    v25 = v10;
    v23 = v17;
    v24 = v8;
    sub_24F928438();
    sub_24E601704(&v23, &qword_27F2129B0);
    sub_24F92A5B8();

    a2 = v22;
    a1 = v19;
    v9 = v20;
LABEL_5:
    v12 = a3 - 1;
    if (!__OFSUB__(a3, 1))
    {
      break;
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    swift_once();
  }

  if (v12 < 0 || v12 >= *(v9 + 16))
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F237E00);
    (*(*(v13 - 8) + 56))(a1, 1, 1, v13);
  }

  else
  {
    sub_24E772724(v9 + 40 * v12 + 32, &v23);
    sub_24EE8B364(&v23, a1);
    sub_24E772780(&v23);
  }

  v14 = a3 + 1;
  if (__OFADD__(a3, 1))
  {
    goto LABEL_16;
  }

  if (v14 < 0 || v14 >= *(v9 + 16))
  {
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F237E00);
    return (*(*(v16 - 8) + 56))(a2, 1, 1, v16);
  }

  else
  {
    sub_24E772724(v9 + 40 * v14 + 32, &v23);
    sub_24EE8B364(&v23, a2);
    return sub_24E772780(&v23);
  }
}

uint64_t sub_24EE8E8F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F232628);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v33 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F232630);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v33 - v11;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ACF0);
  MEMORY[0x28223BE20](v42);
  v14 = &v33 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228650);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v33 - v16;
  sub_24F922E58();
  if (*(&v44 + 1))
  {
    v38 = a1;
    v39 = v12;
    v40 = v7;
    v41 = v6;
    v46[0] = v43;
    v46[1] = v44;
    v47 = v45;
    v18 = v2 + *((*MEMORY[0x277D85000] & *v2) + class metadata base offset for ModelMappedDiffableDataSource + 16);
    swift_beginAccess();
    sub_24E60169C(v18, v14, &qword_27F22ACF0);
    sub_24EE8F4E0(v46, v17);
    sub_24E601704(v14, &qword_27F22ACF0);
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213AC8);
    v20 = *(v19 - 8);
    if ((*(v20 + 48))(v17, 1, v19) == 1)
    {
      v34 = v19;
      v33 = v9;
      v37 = a2;
      sub_24E601704(v17, &qword_27F228650);
      if (qword_27F2105A8 != -1)
      {
        swift_once();
      }

      v36 = sub_24F92AAE8();
      v35 = __swift_project_value_buffer(v36, qword_27F39C458);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
      sub_24F928468();
      *(swift_allocObject() + 16) = xmmword_24F93A070;
      *(&v44 + 1) = MEMORY[0x277D837D0];
      v21 = MEMORY[0x277D837D0];
      *&v43 = 0xD000000000000034;
      *(&v43 + 1) = 0x800000024FA604B0;
      sub_24F928438();
      sub_24E601704(&v43, &qword_27F2129B0);
      *(&v44 + 1) = &type metadata for DiffablePageContentIdentifier;
      *&v43 = swift_allocObject();
      sub_24E772724(v46, v43 + 16);
      sub_24F928438();
      sub_24E601704(&v43, &qword_27F2129B0);
      *(&v44 + 1) = v21;
      strcpy(&v43, "at indexPath:");
      HIWORD(v43) = -4864;
      sub_24F928438();
      sub_24E601704(&v43, &qword_27F2129B0);
      v22 = sub_24F91FA78();
      *(&v44 + 1) = v22;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v43);
      (*(*(v22 - 8) + 16))(boxed_opaque_existential_1, v38, v22);
      sub_24F928438();
      sub_24E601704(&v43, &qword_27F2129B0);
      v24 = MEMORY[0x277D837D0];
      *(&v44 + 1) = MEMORY[0x277D837D0];
      *&v43 = 0xD00000000000002BLL;
      *(&v43 + 1) = 0x800000024FA604F0;
      sub_24F928438();
      sub_24E601704(&v43, &qword_27F2129B0);
      v25 = (v18 + *(v42 + 52));
      v27 = *v25;
      v26 = v25[1];
      *(&v44 + 1) = v24;
      *&v43 = v27;
      *(&v43 + 1) = v26;

      sub_24F928438();
      sub_24E601704(&v43, &qword_27F2129B0);
      sub_24F92A5B8();

      v28 = *((*MEMORY[0x277D85000] & *v3) + class metadata base offset for ModelMappedDiffableDataSource + 24);
      swift_beginAccess();
      v29 = v39;
      sub_24E60169C(v3 + v28, v39, &qword_27F232630);
      if ((*(v40 + 48))(v29, 1, v41))
      {
        sub_24E772780(v46);
        sub_24E601704(v29, &qword_27F232630);
        return (*(v20 + 56))(v37, 1, 1, v34);
      }

      else
      {
        v32 = v33;
        sub_24E60169C(v29, v33, &qword_27F232628);
        sub_24E601704(v29, &qword_27F232630);
        sub_24EE8F0F8(v46, v37);
        sub_24E601704(v32, &qword_27F232628);
        return sub_24E772780(v46);
      }
    }

    else
    {
      sub_24E772780(v46);
      (*(v20 + 32))(a2, v17, v19);
      return (*(v20 + 56))(a2, 0, 1, v19);
    }
  }

  else
  {
    sub_24E601704(&v43, &qword_27F228658);
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213AC8);
    return (*(*(v31 - 8) + 56))(a2, 1, 1, v31);
  }
}

uint64_t sub_24EE8F0F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228650);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v16 - v6;
  sub_24EE8F4E0(a1, v16 - v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213AC8);
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    v18 = a2;
    sub_24E601704(v7, &qword_27F228650);
    if (qword_27F2105A8 != -1)
    {
      swift_once();
    }

    v17 = sub_24F92AAE8();
    v16[1] = __swift_project_value_buffer(v17, qword_27F39C458);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
    v16[0] = 4 * *(*(sub_24F928468() - 8) + 72);
    *(swift_allocObject() + 16) = xmmword_24F942000;
    v10 = MEMORY[0x277D837D0];
    v21 = MEMORY[0x277D837D0];
    v19 = 0xD000000000000019;
    v20 = 0x800000024FA60520;
    sub_24F928438();
    sub_24E601704(&v19, &qword_27F2129B0);
    v11 = (v2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ACF0) + 52));
    v13 = *v11;
    v12 = v11[1];
    v21 = v10;
    v19 = v13;
    v20 = v12;

    sub_24F928438();
    sub_24E601704(&v19, &qword_27F2129B0);
    v21 = v10;
    v19 = 0xD000000000000031;
    v20 = 0x800000024FA60540;
    sub_24F928438();
    sub_24E601704(&v19, &qword_27F2129B0);
    v21 = &type metadata for DiffablePageContentIdentifier;
    v19 = swift_allocObject();
    sub_24E772724(a1, v19 + 16);
    sub_24F928438();
    sub_24E601704(&v19, &qword_27F2129B0);
    v21 = v10;
    v19 = 0xD000000000000019;
    v20 = 0x800000024FA60580;
    sub_24F928438();
    sub_24E601704(&v19, &qword_27F2129B0);
    sub_24F92A5B8();

    v14 = 1;
    a2 = v18;
  }

  else
  {
    (*(v9 + 32))(a2, v7, v8);
    v14 = 0;
  }

  return (*(v9 + 56))(a2, v14, 1, v8);
}

uint64_t sub_24EE8F4E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ACF0) + 44));
  if (*(v5 + 16) && (v6 = sub_24E76DD40(a1), (v7 & 1) != 0))
  {
    sub_24E60169C(*(v5 + 56) + 88 * v6, v12, &qword_27F21EC48);
    sub_24E615E00(v12, v13);
    sub_24E601704(v12, &qword_27F21EC48);
    sub_24E612C80(v13, v14);
    sub_24E615E00(v14, v12);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23A6A0);
    sub_24F928A78();
    __swift_destroy_boxed_opaque_existential_1(v14);
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213AC8);
    return (*(*(v8 - 8) + 56))(a2, 0, 1, v8);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213AC8);
    v11 = *(*(v10 - 8) + 56);

    return v11(a2, 1, 1, v10);
  }
}

char *sub_24EE8F688(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F232628);
  v47 = *(v3 - 8);
  v48 = v3;
  MEMORY[0x28223BE20](v3);
  v38 = &v37 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F232630);
  MEMORY[0x28223BE20](v5 - 8);
  v46 = &v37 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F237E00);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v37 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ACF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v37 - v15;
  v17 = *((*MEMORY[0x277D85000] & *v1) + class metadata base offset for ModelMappedDiffableDataSource + 16);
  v44 = v1;
  v18 = v1 + v17;
  swift_beginAccess();
  v49 = v18;
  sub_24E60169C(v18, v16, &qword_27F22ACF0);
  v19 = *(v8 + 16);
  v50 = a1;
  v42 = v19;
  v19(v10, a1, v7);
  v20 = type metadata accessor for Shelf();
  v51 = v20;
  v43 = sub_24EE907F8(&qword_27F22CE68, type metadata accessor for Shelf);
  v52 = v43;
  swift_getKeyPath();
  sub_24F928A48();

  v21 = *(v8 + 8);
  v21(v10, v7);
  v45 = v11;
  if (*(*&v16[*(v11 + 36) + 8] + 16) && (sub_24E76DD40(&v53), (v22 & 1) != 0))
  {
    sub_24E772780(&v53);
    sub_24E601704(v16, &qword_27F22ACF0);
    sub_24E60169C(v49, v13, &qword_27F22ACF0);
    v23 = sub_24EE90360(v50);
    v24 = v13;
    v25 = &qword_27F22ACF0;
  }

  else
  {
    v39 = v21;
    sub_24E772780(&v53);
    sub_24E601704(v16, &qword_27F22ACF0);
    if (qword_27F2105A8 != -1)
    {
      swift_once();
    }

    v41 = sub_24F92AAE8();
    v40 = __swift_project_value_buffer(v41, qword_27F39C458);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
    sub_24F928468();
    *(swift_allocObject() + 16) = xmmword_24F93FC20;
    v55 = MEMORY[0x277D837D0];
    v53 = 0xD00000000000003BLL;
    v54 = 0x800000024FA605A0;
    sub_24F928438();
    sub_24E601704(&v53, &qword_27F2129B0);
    v42(v10, v50, v7);
    v55 = &type metadata for DiffablePageContentIdentifier;
    v53 = swift_allocObject();
    MEMORY[0x28223BE20](v53);
    v26 = v43;
    *(&v37 - 2) = v20;
    *(&v37 - 1) = v26;
    swift_getKeyPath();
    sub_24F928A48();

    v39(v10, v7);
    sub_24F928438();
    sub_24E601704(&v53, &qword_27F2129B0);
    v27 = MEMORY[0x277D837D0];
    v55 = MEMORY[0x277D837D0];
    v53 = 0xD000000000000044;
    v54 = 0x800000024FA605E0;
    sub_24F928438();
    sub_24E601704(&v53, &qword_27F2129B0);
    v28 = (v49 + *(v45 + 52));
    v30 = *v28;
    v29 = v28[1];
    v55 = v27;
    v53 = v30;
    v54 = v29;

    sub_24F928438();
    sub_24E601704(&v53, &qword_27F2129B0);
    sub_24F92A5B8();

    v31 = v44;
    v32 = *((*MEMORY[0x277D85000] & *v44) + class metadata base offset for ModelMappedDiffableDataSource + 24);
    swift_beginAccess();
    v33 = v31 + v32;
    v34 = v46;
    sub_24E60169C(v33, v46, &qword_27F232630);
    if ((*(v47 + 48))(v34, 1, v48))
    {
      sub_24E601704(v34, &qword_27F232630);
      return 0;
    }

    v36 = v38;
    sub_24E60169C(v34, v38, &qword_27F232628);
    sub_24E601704(v34, &qword_27F232630);
    v23 = sub_24EE8FE68(v50);
    v24 = v36;
    v25 = &qword_27F232628;
  }

  sub_24E601704(v24, v25);
  return v23;
}

char *sub_24EE8FE68(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F237E00);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v20 - v6;
  v30 = *(v4 + 16);
  v28 = v4 + 16;
  v30(&v20 - v6, a1, v3, v5);
  v8 = type metadata accessor for Shelf();
  v32 = v8;
  v9 = sub_24EE907F8(&qword_27F22CE68, type metadata accessor for Shelf);
  v33 = v9;
  swift_getKeyPath();
  sub_24F928A48();

  v10 = *(v4 + 8);
  v29 = v4 + 8;
  v10(v7, v3);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ACF0);
  v12 = *(v11 + 36);
  v31 = v1;
  if (*(*(v1 + v12 + 8) + 16) && (sub_24E76DD40(&v34), (v13 & 1) != 0))
  {
    sub_24E772780(&v34);
    return sub_24EE90360(a1);
  }

  else
  {
    v24 = v10;
    v25 = v9;
    v26 = v8;
    v27 = a1;
    sub_24E772780(&v34);
    if (qword_27F2105A8 != -1)
    {
      swift_once();
    }

    v21 = sub_24F92AAE8();
    v23 = __swift_project_value_buffer(v21, qword_27F39C458);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
    v22 = 4 * *(*(sub_24F928468() - 8) + 72);
    *(swift_allocObject() + 16) = xmmword_24F942000;
    v36 = MEMORY[0x277D837D0];
    v15 = MEMORY[0x277D837D0];
    v34 = 0xD000000000000019;
    v35 = 0x800000024FA60520;
    sub_24F928438();
    sub_24E601704(&v34, &qword_27F2129B0);
    v16 = (v31 + *(v11 + 52));
    v18 = *v16;
    v17 = v16[1];
    v36 = v15;
    v34 = v18;
    v35 = v17;

    sub_24F928438();
    sub_24E601704(&v34, &qword_27F2129B0);
    v36 = v15;
    v34 = 0xD00000000000003BLL;
    v35 = 0x800000024FA605A0;
    sub_24F928438();
    sub_24E601704(&v34, &qword_27F2129B0);
    (v30)(v7, v27, v3);
    v36 = &type metadata for DiffablePageContentIdentifier;
    v34 = swift_allocObject();
    MEMORY[0x28223BE20](v34);
    v19 = v25;
    *(&v20 - 2) = v26;
    *(&v20 - 1) = v19;
    swift_getKeyPath();
    sub_24F928A48();

    v24(v7, v3);
    sub_24F928438();
    sub_24E601704(&v34, &qword_27F2129B0);
    v36 = MEMORY[0x277D837D0];
    v34 = 0xD00000000000002DLL;
    v35 = 0x800000024FA60630;
    sub_24F928438();
    sub_24E601704(&v34, &qword_27F2129B0);
    sub_24F92A5B8();

    return 0;
  }
}

char *sub_24EE90360(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F237E00);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v20 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23A690);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = v20 - v10;
  (*(v5 + 16))(v7, a1, v4, v9);
  v12 = type metadata accessor for Shelf();
  v20[0] = v12;
  v13 = sub_24EE907F8(&qword_27F22CE68, type metadata accessor for Shelf);
  v20[1] = v13;
  swift_getKeyPath();
  sub_24F928A48();

  v14 = *(v5 + 8);
  v14(v7, v4);
  sub_24EE8B364(v21, v11);
  sub_24E772780(v21);
  v15 = (*(v5 + 48))(v11, 1, v4);
  if (v15 == 1)
  {
    sub_24E601704(v11, &unk_27F23A690);
    return 0;
  }

  else
  {
    MEMORY[0x28223BE20](v15);
    v20[-2] = v12;
    v20[-1] = v13;
    swift_getKeyPath();
    sub_24F928A48();

    v17 = v21[0];
    v18 = (v14)(v11, v4);
    MEMORY[0x28223BE20](v18);
    v20[-2] = v2;
    v19 = sub_24EB0B440(sub_24EE90850, &v20[-4], v17);

    return v19;
  }
}

uint64_t sub_24EE9064C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_24E615E00(a1, v4);
  __swift_project_boxed_opaque_existential_1(v4, v4[3]);
  sub_24F928D68();
  __swift_destroy_boxed_opaque_existential_1(v4);
  sub_24EE8F4E0(v5, a2);
  return sub_24E772780(v5);
}

uint64_t sub_24EE906DC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24EE9073C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24EE907A4()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return swift_deallocObject();
}

__n128 sub_24EE907EC(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_24EE907F8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24EE90870(uint64_t a1)
{
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F232638);
  MEMORY[0x28223BE20](v53);
  v56 = (&v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v6);
  v52 = &v47 - v7;
  v8 = type metadata accessor for ChallengesSlashHeaderView.SlashHeaderItemType(0);
  v48 = *(v8 - 8);
  MEMORY[0x28223BE20](v8 - 8);
  v54 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = type metadata accessor for ChallengeVisualOutcomeMetrics.Participant();
  v10 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v12 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v47 - v14;
  v16 = *(a1 + 16);
  v17 = MEMORY[0x277D84F90];
  if (v16)
  {
    v18 = 0;
    v55 = a1;
    while (1)
    {
      v19 = *(a1 + 16);
      if (v18 >= v19)
      {
        break;
      }

      v1 = (*(v10 + 80) + 32) & ~*(v10 + 80);
      v2 = *(v10 + 72);
      sub_24EE90F78(a1 + v1 + v2 * v18, v15, type metadata accessor for ChallengeVisualOutcomeMetrics.Participant);
      if ((*(v15 + 8) & 1) != 0 || *v15 != 1)
      {
        sub_24EE90F1C(v15);
      }

      else
      {
        sub_24EE91048(v15, v12, type metadata accessor for ChallengeVisualOutcomeMetrics.Participant);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v57 = v17;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_24F457CC0(0, *(v17 + 16) + 1, 1);
          v17 = v57;
        }

        v22 = *(v17 + 16);
        v21 = *(v17 + 24);
        v3 = v22 + 1;
        if (v22 >= v21 >> 1)
        {
          sub_24F457CC0(v21 > 1, v22 + 1, 1);
          v17 = v57;
        }

        *(v17 + 16) = v3;
        sub_24EE91048(v12, v17 + v1 + v22 * v2, type metadata accessor for ChallengeVisualOutcomeMetrics.Participant);
        a1 = v55;
      }

      if (v16 == ++v18)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_36:
    sub_24F457A38(v19 > 1, v10, 1);
    v23 = v57;
    goto LABEL_27;
  }

LABEL_13:
  v12 = *(v17 + 16);
  if (v12 == 1)
  {

    v2 = v54;
  }

  else
  {
    v2 = v54;
    if (v12)
    {

      a1 = v17;
    }

    else
    {
    }
  }

  v3 = *(a1 + 16);
  if (v3 >= 3)
  {
    v15 = 3;
  }

  else
  {
    v15 = *(a1 + 16);
  }

  if (!v3)
  {

    return MEMORY[0x277D84F90];
  }

  v57 = MEMORY[0x277D84F90];
  v16 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  sub_24F457A38(0, v15, 0);
  v23 = v57;
  v50 = *(v10 + 72);
  v24 = a1;
  v26 = v52;
  v25 = v53;
  v27 = *(v53 + 48);
  v55 = v24;
  sub_24EE90F78(v24 + v16, &v52[v27], type metadata accessor for ChallengeVisualOutcomeMetrics.Participant);
  v28 = v56;
  *v56 = 0;
  v29 = v28 + *(v25 + 48);
  sub_24EE91048(&v26[v27], v29, type metadata accessor for ChallengeVisualOutcomeMetrics.Participant);
  sub_24EE90F78(v29 + *(v51 + 20), v2, type metadata accessor for PlayerAvatar);
  if (v12 == 1)
  {
    v30 = *v29;
    v31 = *(v29 + 8);
  }

  else
  {
    v30 = 0;
    v31 = 1;
  }

  v32 = v2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214D78) + 48);
  *v32 = v30;
  *(v32 + 8) = v31;
  sub_24EE90FE0(v56);
  v57 = v23;
  v1 = *(v23 + 16);
  v19 = *(v23 + 24);
  v10 = v1 + 1;
  if (v1 >= v19 >> 1)
  {
    goto LABEL_36;
  }

LABEL_27:
  v47 = v12;
  *(v23 + 16) = v10;
  v49 = (*(v48 + 80) + 32) & ~*(v48 + 80);
  v33 = *(v48 + 72);
  sub_24EE91048(v2, v23 + v49 + v33 * v1, type metadata accessor for ChallengesSlashHeaderView.SlashHeaderItemType);
  if (v3 != 1)
  {
    v35 = v55 + v50 + v16;
    v36 = 1;
    do
    {
      v37 = v15;
      v39 = v52;
      v38 = v53;
      v40 = *(v53 + 48);
      sub_24EE90F78(v35, &v52[v40], type metadata accessor for ChallengeVisualOutcomeMetrics.Participant);
      v41 = v56;
      *v56 = v36;
      v42 = v41 + *(v38 + 48);
      v43 = v54;
      sub_24EE91048(&v39[v40], v42, type metadata accessor for ChallengeVisualOutcomeMetrics.Participant);
      sub_24EE90F78(v42 + *(v51 + 20), v43, type metadata accessor for PlayerAvatar);
      v44 = v43 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214D78) + 48);
      *v44 = 0;
      *(v44 + 8) = 1;
      sub_24EE90FE0(v41);
      v57 = v23;
      v46 = *(v23 + 16);
      v45 = *(v23 + 24);
      if (v46 >= v45 >> 1)
      {
        sub_24F457A38(v45 > 1, v46 + 1, 1);
        v23 = v57;
      }

      *(v23 + 16) = v46 + 1;
      sub_24EE91048(v43, v23 + v49 + v33 * v46, type metadata accessor for ChallengesSlashHeaderView.SlashHeaderItemType);
      ++v36;
      v35 += v50;
      v15 = v37;
    }

    while (v37 != v36);
  }

  return v23;
}

uint64_t type metadata accessor for ChallengeVisualOutcomeMetrics.Participant()
{
  result = qword_27F232640;
  if (!qword_27F232640)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24EE90F1C(uint64_t a1)
{
  v2 = type metadata accessor for ChallengeVisualOutcomeMetrics.Participant();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24EE90F78(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24EE90FE0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F232638);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24EE91048(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24EE910B0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 18))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24EE910F8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 18) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 18) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24EE9115C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 20);
  v6 = type metadata accessor for PlayerAvatar(0);
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_24EE911E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 20);
  v7 = type metadata accessor for PlayerAvatar(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

void sub_24EE91264()
{
  sub_24E659BE8();
  if (v0 <= 0x3F)
  {
    type metadata accessor for PlayerAvatar(319);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t ContingentOffer.subtitle.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit15ContingentOffer_subtitle);

  return v1;
}

uint64_t ContingentOffer.badge.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit15ContingentOffer_badge);

  return v1;
}

uint64_t ContingentOffer.label.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit15ContingentOffer_label);

  return v1;
}

uint64_t ContingentOffer.description.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit15ContingentOffer_description);

  return v1;
}

uint64_t ContingentOffer.learnMoreTitle.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit15ContingentOffer_learnMoreTitle);

  return v1;
}

uint64_t ContingentOffer.children.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213B00);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_24F93DE60;
  v2 = *(v0 + OBJC_IVAR____TtC12GameStoreKit15ContingentOffer_offerLockup);
  *(v1 + 56) = type metadata accessor for Lockup();
  *(v1 + 64) = sub_24EE932BC(&qword_27F2289F8, type metadata accessor for Lockup);
  *(v1 + 32) = v2;

  return v1;
}

uint64_t ContingentOffer.__allocating_init(id:backgroundArtwork:backgroundVideo:mediaOverlayStyle:title:subtitle:additionalInfo:description:label:badge:offerLockup:trunkAppIcon:supportsStreamlinedBuy:learnMoreTitle:clickAction:impressionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, unsigned __int8 a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  v51 = a8;
  v48 = a7;
  v47 = a6;
  v52 = a21;
  v53 = a1;
  v58 = a19;
  v59 = a20;
  v57 = a18;
  v56 = a17;
  v54 = a16;
  v55 = a15;
  v50 = a14;
  v49 = a13;
  v46 = sub_24F91F6B8();
  v45 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v26 = &v45 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = swift_allocObject();
  v28 = *a4;
  *(v27 + OBJC_IVAR____TtC12GameStoreKit15ContingentOffer_backgroundArtwork) = a2;
  *(v27 + OBJC_IVAR____TtC12GameStoreKit15ContingentOffer_backgroundVideo) = a3;
  *(v27 + OBJC_IVAR____TtC12GameStoreKit15ContingentOffer_mediaOverlayStyle) = v28;
  *(v27 + OBJC_IVAR____TtC12GameStoreKit15ContingentOffer_title) = a5;
  v29 = (v27 + OBJC_IVAR____TtC12GameStoreKit15ContingentOffer_subtitle);
  v30 = v48;
  *v29 = v47;
  v29[1] = v30;
  *(v27 + OBJC_IVAR____TtC12GameStoreKit15ContingentOffer_additionalInfo) = v51;
  v31 = (v27 + OBJC_IVAR____TtC12GameStoreKit15ContingentOffer_description);
  *v31 = a9;
  v31[1] = a10;
  v32 = (v27 + OBJC_IVAR____TtC12GameStoreKit15ContingentOffer_label);
  *v32 = a11;
  v32[1] = a12;
  v34 = v52;
  v33 = v53;
  v35 = (v27 + OBJC_IVAR____TtC12GameStoreKit15ContingentOffer_badge);
  v36 = v50;
  *v35 = v49;
  v35[1] = v36;
  v37 = v55;
  *(v27 + OBJC_IVAR____TtC12GameStoreKit15ContingentOffer_trunkAppIcon) = v54;
  *(v27 + OBJC_IVAR____TtC12GameStoreKit15ContingentOffer_offerLockup) = v37;
  *(v27 + OBJC_IVAR____TtC12GameStoreKit15ContingentOffer_supportsStreamlinedBuy) = v56;
  v38 = (v27 + OBJC_IVAR____TtC12GameStoreKit15ContingentOffer_learnMoreTitle);
  v39 = v58;
  *v38 = v57;
  v38[1] = v39;
  sub_24E60169C(v33, v65, &qword_27F235830);
  sub_24E60169C(v34, v27 + OBJC_IVAR____TtC12GameStoreKit12AppPromotion_impressionMetrics, &qword_27F213E68);
  sub_24E60169C(v65, &v62, &qword_27F235830);
  if (*(&v63 + 1))
  {
    v40 = v63;
    *(v27 + 24) = v62;
    *(v27 + 40) = v40;
    *(v27 + 56) = v64;
  }

  else
  {
    sub_24F91F6A8();
    v41 = sub_24F91F668();
    v43 = v42;
    (*(v45 + 8))(v26, v46);
    v60 = v41;
    v61 = v43;
    sub_24F92C7F8();
    sub_24E601704(&v62, &qword_27F235830);
  }

  sub_24E601704(v34, &qword_27F213E68);
  sub_24E601704(v33, &qword_27F235830);
  sub_24E601704(v65, &qword_27F235830);
  *(v27 + 16) = 1;
  *(v27 + OBJC_IVAR____TtC12GameStoreKit12AppPromotion_clickAction) = v59;
  return v27;
}

uint64_t ContingentOffer.init(id:backgroundArtwork:backgroundVideo:mediaOverlayStyle:title:subtitle:additionalInfo:description:label:badge:offerLockup:trunkAppIcon:supportsStreamlinedBuy:learnMoreTitle:clickAction:impressionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, unsigned __int8 a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  v22 = v21;
  v58 = a8;
  v54 = a7;
  v53 = a6;
  v55 = a21;
  v63 = a19;
  v64 = a20;
  v62 = a18;
  v61 = a17;
  v60 = a15;
  v59 = a16;
  v57 = a14;
  v56 = a13;
  v52 = a12;
  v51 = a11;
  v50 = sub_24F91F6B8();
  v49 = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v29 = &v48 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  MEMORY[0x28223BE20](v30 - 8);
  v32 = &v48 - v31;
  LOBYTE(v31) = *a4;
  *(v22 + OBJC_IVAR____TtC12GameStoreKit15ContingentOffer_backgroundArtwork) = a2;
  *(v22 + OBJC_IVAR____TtC12GameStoreKit15ContingentOffer_backgroundVideo) = a3;
  *(v22 + OBJC_IVAR____TtC12GameStoreKit15ContingentOffer_mediaOverlayStyle) = v31;
  *(v22 + OBJC_IVAR____TtC12GameStoreKit15ContingentOffer_title) = a5;
  v33 = (v22 + OBJC_IVAR____TtC12GameStoreKit15ContingentOffer_subtitle);
  v34 = v54;
  *v33 = v53;
  v33[1] = v34;
  *(v22 + OBJC_IVAR____TtC12GameStoreKit15ContingentOffer_additionalInfo) = v58;
  v35 = (v22 + OBJC_IVAR____TtC12GameStoreKit15ContingentOffer_description);
  *v35 = a9;
  v35[1] = a10;
  v36 = v55;
  v37 = (v22 + OBJC_IVAR____TtC12GameStoreKit15ContingentOffer_label);
  v38 = v52;
  *v37 = v51;
  v37[1] = v38;
  v39 = (v22 + OBJC_IVAR____TtC12GameStoreKit15ContingentOffer_badge);
  v40 = v57;
  *v39 = v56;
  v39[1] = v40;
  *(v22 + OBJC_IVAR____TtC12GameStoreKit15ContingentOffer_trunkAppIcon) = v59;
  *(v22 + OBJC_IVAR____TtC12GameStoreKit15ContingentOffer_offerLockup) = v60;
  *(v22 + OBJC_IVAR____TtC12GameStoreKit15ContingentOffer_supportsStreamlinedBuy) = v61;
  v41 = (v22 + OBJC_IVAR____TtC12GameStoreKit15ContingentOffer_learnMoreTitle);
  v42 = v63;
  *v41 = v62;
  v41[1] = v42;
  sub_24E60169C(a1, v73, &qword_27F235830);
  sub_24E60169C(v36, v32, &qword_27F213E68);
  sub_24E60169C(v73, &v67, &qword_27F235830);
  if (*(&v68 + 1))
  {
    v70 = v67;
    v71 = v68;
    v72 = v69;
  }

  else
  {
    sub_24F91F6A8();
    v43 = sub_24F91F668();
    v45 = v44;
    (*(v49 + 8))(v29, v50);
    v65 = v43;
    v66 = v45;
    sub_24F92C7F8();
    sub_24E601704(&v67, &qword_27F235830);
  }

  sub_24E601704(v36, &qword_27F213E68);
  sub_24E601704(a1, &qword_27F235830);
  sub_24E601704(v73, &qword_27F235830);
  v46 = v71;
  *(v22 + 24) = v70;
  *(v22 + 40) = v46;
  *(v22 + 56) = v72;
  *(v22 + 16) = 1;
  *(v22 + OBJC_IVAR____TtC12GameStoreKit12AppPromotion_clickAction) = v64;
  sub_24E65E0D4(v32, v22 + OBJC_IVAR____TtC12GameStoreKit12AppPromotion_impressionMetrics);
  return v22;
}

void (*ContingentOffer.init(deserializing:using:)(char *a1, uint64_t a2))(char *, uint64_t)
{
  v3 = v2;
  v142 = a2;
  v137 = v3;
  v136 = *v3;
  v5 = sub_24F9285B8();
  v140 = *(v5 - 8);
  v141 = v5;
  MEMORY[0x28223BE20](v5);
  v126 = &v108 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v128 = &v108 - v8;
  MEMORY[0x28223BE20](v9);
  v130 = &v108 - v10;
  MEMORY[0x28223BE20](v11);
  v134 = &v108 - v12;
  v13 = sub_24F928388();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v125 = &v108 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v127 = &v108 - v17;
  MEMORY[0x28223BE20](v18);
  v129 = &v108 - v19;
  MEMORY[0x28223BE20](v20);
  v133 = &v108 - v21;
  MEMORY[0x28223BE20](v22);
  v132 = &v108 - v23;
  MEMORY[0x28223BE20](v24);
  v26 = &v108 - v25;
  MEMORY[0x28223BE20](v27);
  v29 = &v108 - v28;
  MEMORY[0x28223BE20](v30);
  v32 = &v108 - v31;
  MEMORY[0x28223BE20](v33);
  v35 = &v108 - v34;
  v36 = a1;
  sub_24F928398();
  v123 = sub_24F928348();
  v124 = v14;
  v38 = v37;
  v39 = *(v14 + 8);
  v39(v35, v13);
  v135 = v38;
  v138 = v13;
  if (!v38)
  {
    v58 = sub_24F92AC38();
    sub_24EE932BC(&qword_27F2213B8, MEMORY[0x277D22548]);
    swift_allocError();
    v60 = v59;
    *v59 = 0x6567646162;
LABEL_9:
    v61 = v136;
    v59[1] = 0xE500000000000000;
    v59[2] = v61;
    (*(*(v58 - 8) + 104))(v60, *MEMORY[0x277D22530], v58);
    swift_willThrow();
    v53 = v36;
    v62 = v142;
    goto LABEL_10;
  }

  v139 = v39;
  sub_24F928398();
  v40 = sub_24F928348();
  v39 = v139;
  v120 = v40;
  v42 = v41;
  v139(v32, v13);
  if (!v42)
  {

    v58 = sub_24F92AC38();
    sub_24EE932BC(&qword_27F2213B8, MEMORY[0x277D22548]);
    swift_allocError();
    v60 = v59;
    *v59 = 0x6C6562616CLL;
    goto LABEL_9;
  }

  v122 = v42;
  sub_24F928398();
  v43 = sub_24F928348();
  v39 = v139;
  v119 = v43;
  v45 = v44;
  v139(v29, v13);
  v121 = v45;
  if (v45)
  {
    sub_24F928398();
    v46 = sub_24F928348();
    v39 = v139;
    v117 = v46;
    v48 = v47;
    v139(v26, v13);
    v118 = v48;
    if (v48)
    {
      v49 = v132;
      v50 = v39;
      sub_24F928398();
      v51 = sub_24F928278();
      v132 = (v14 + 8);
      v50(v49, v13);
      v52 = (v140 + 16);
      v53 = v36;
      v114 = v51;
      if (v51)
      {
        type metadata accessor for InAppPurchaseLockup();
        sub_24F928398();
        v54 = *v52;
        v55 = v141;
        (*v52)(v134, v142, v141);
        v56 = &qword_27F228A00;
        v57 = type metadata accessor for InAppPurchaseLockup;
      }

      else
      {
        type metadata accessor for Lockup();
        sub_24F928398();
        v54 = *v52;
        v55 = v141;
        (*v52)(v134, v142, v141);
        v56 = &qword_27F221FB8;
        v57 = type metadata accessor for Lockup;
      }

      sub_24EE932BC(v56, v57);
      sub_24F929548();
      if (v143)
      {
        v68 = v54;
        v116 = v143;

        v69 = type metadata accessor for Artwork();
        sub_24F928398();
        v70 = v142;
        (v54)(v134, v142, v55);
        v71 = sub_24EE932BC(&qword_27F219660, type metadata accessor for Artwork);
        v112 = v69;
        sub_24F929548();
        v72 = v143;
        v73 = v52 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
        v74 = v129;
        v115 = v53;
        sub_24F928398();
        v75 = v130;
        v113 = v73;
        (v68)(v130, v70, v55);
        v76 = v131;
        v77 = sub_24F0151C0(v74, v75);
        if (v76)
        {

          v62 = v142;
          v39 = v139;
          v53 = v115;
          goto LABEL_10;
        }

        v80 = v55;
        v130 = v71;
        v131 = v77;
        v111 = v72;
        v81 = v127;
        v82 = v115;
        sub_24F928398();
        v83 = v128;
        v84 = v142;
        (v68)(v128, v142, v80);
        v53 = v82;
        v128 = sub_24F0151C0(v81, v83);
        v129 = v68;
        v85 = v133;
        sub_24F928398();
        sub_24EA303C8();
        sub_24F928208();
        v87 = v138;
        v86 = v139;
        v139(v85, v138);
        v110 = v143;
        sub_24F928398();
        v109 = sub_24F928348();
        v127 = v88;
        v86(v85, v87);
        sub_24F928398();
        v89 = v134;
        v90 = v141;
        (v129)(v134, v84, v141);
        sub_24F929548();
        v130 = v143;
        type metadata accessor for Video();
        sub_24F928398();
        (v129)(v89, v84, v90);
        sub_24EE932BC(&qword_27F221590, type metadata accessor for Video);
        sub_24F929548();
        v91 = v143;
        if (v130 | v143)
        {
          v95 = v137;
          *(v137 + OBJC_IVAR____TtC12GameStoreKit15ContingentOffer_backgroundArtwork) = v130;
          *(v95 + OBJC_IVAR____TtC12GameStoreKit15ContingentOffer_backgroundVideo) = v91;
          *(v95 + OBJC_IVAR____TtC12GameStoreKit15ContingentOffer_mediaOverlayStyle) = v110;
          *(v95 + OBJC_IVAR____TtC12GameStoreKit15ContingentOffer_title) = v128;
          v96 = (v95 + OBJC_IVAR____TtC12GameStoreKit15ContingentOffer_subtitle);
          v97 = v127;
          *v96 = v109;
          v96[1] = v97;
          *(v95 + OBJC_IVAR____TtC12GameStoreKit15ContingentOffer_additionalInfo) = v131;
          v98 = (v95 + OBJC_IVAR____TtC12GameStoreKit15ContingentOffer_description);
          v99 = v118;
          *v98 = v117;
          v98[1] = v99;
          v100 = (v95 + OBJC_IVAR____TtC12GameStoreKit15ContingentOffer_label);
          v102 = v122;
          v101 = v123;
          *v100 = v120;
          v100[1] = v102;
          v103 = (v95 + OBJC_IVAR____TtC12GameStoreKit15ContingentOffer_badge);
          *v103 = v101;
          v103[1] = v135;
          *(v95 + OBJC_IVAR____TtC12GameStoreKit15ContingentOffer_trunkAppIcon) = v111;
          *(v95 + OBJC_IVAR____TtC12GameStoreKit15ContingentOffer_offerLockup) = v116;
          *(v95 + OBJC_IVAR____TtC12GameStoreKit15ContingentOffer_supportsStreamlinedBuy) = v114 & 1;
          v104 = (v95 + OBJC_IVAR____TtC12GameStoreKit15ContingentOffer_learnMoreTitle);
          v105 = v121;
          *v104 = v119;
          v104[1] = v105;
          v106 = v125;
          (*(v124 + 16))(v125, v53, v138);
          v107 = v126;
          (v129)(v126, v142, v141);

          v39 = AppPromotion.init(deserializing:using:)(v106, v107);

          (*(v140 + 8))(v142, v141);
          v139(v53, v138);
          return v39;
        }

        v92 = sub_24F92AC38();
        sub_24EE932BC(&qword_27F2213B8, MEMORY[0x277D22548]);
        swift_allocError();
        v93 = MEMORY[0x277D84F90];
        *v94 = v136;
        v94[1] = v93;
        (*(*(v92 - 8) + 104))(v94, *MEMORY[0x277D22538], v92);
        swift_willThrow();
      }

      else
      {

        v78 = sub_24F92AC38();
        sub_24EE932BC(&qword_27F2213B8, MEMORY[0x277D22548]);
        swift_allocError();
        *v79 = 0x636F4C726566666FLL;
        v79[1] = 0xEB0000000070756BLL;
        v79[2] = v136;
        (*(*(v78 - 8) + 104))(v79, *MEMORY[0x277D22530], v78);
        swift_willThrow();
      }

      v62 = v142;
      v39 = v139;
      goto LABEL_10;
    }

    v66 = sub_24F92AC38();
    sub_24EE932BC(&qword_27F2213B8, MEMORY[0x277D22548]);
    swift_allocError();
    *v67 = 0x7470697263736564;
    v67[1] = 0xEB000000006E6F69;
    v67[2] = v136;
    (*(*(v66 - 8) + 104))(v67, *MEMORY[0x277D22530], v66);
    swift_willThrow();
    v62 = v142;
    v53 = v36;
  }

  else
  {

    v64 = sub_24F92AC38();
    sub_24EE932BC(&qword_27F2213B8, MEMORY[0x277D22548]);
    swift_allocError();
    strcpy(v65, "learnMoreTitle");
    v65[15] = -18;
    *(v65 + 2) = v136;
    (*(*(v64 - 8) + 104))(v65, *MEMORY[0x277D22530], v64);
    swift_willThrow();
    v62 = v142;
    v53 = v36;
  }

LABEL_10:
  (*(v140 + 8))(v62, v141);
  v39(v53, v138);
  swift_deallocPartialClassInstance();
  return v39;
}

uint64_t sub_24EE92F5C()
{
}

uint64_t ContingentOffer.deinit()
{
  sub_24E6585F8(v0 + 24);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit12AppPromotion_impressionMetrics, &qword_27F213E68);

  return v0;
}

uint64_t ContingentOffer.__deallocating_deinit()
{
  ContingentOffer.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_24EE931B4()
{
  v1 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213B00);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_24F93DE60;
  v3 = *(v1 + OBJC_IVAR____TtC12GameStoreKit15ContingentOffer_offerLockup);
  *(v2 + 56) = type metadata accessor for Lockup();
  *(v2 + 64) = sub_24EE932BC(&qword_27F2289F8, type metadata accessor for Lockup);
  *(v2 + 32) = v3;

  return v2;
}

uint64_t sub_24EE93264(uint64_t a1)
{
  result = sub_24EE932BC(&qword_27F232650, type metadata accessor for ContingentOffer);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_24EE932BC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for ContingentOffer()
{
  result = qword_27F232658;
  if (!qword_27F232658)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t RenderPipelineDiagnostics.Recorder.__allocating_init()()
{
  v0 = swift_allocObject();
  RenderPipelineDiagnostics.Recorder.init()();
  return v0;
}

uint64_t RenderPipelineDiagnostics.Recorder.init()()
{
  *(v0 + 16) = MEMORY[0x277D84F90];
  *(v0 + 24) = [objc_allocWithZone(MEMORY[0x277D225F0]) init];
  v1 = [objc_opt_self() defaultCenter];
  v2 = qword_27F210798;

  if (v2 != -1)
  {
    swift_once();
  }

  [v1 addObserver:v0 selector:sel_recordNotification_ name:qword_27F232668 object:0];

  v3 = qword_27F2107A0;

  if (v3 != -1)
  {
    swift_once();
  }

  [v1 addObserver:v0 selector:sel_recordNotification_ name:qword_27F232670 object:0];

  return v0;
}

uint64_t RenderPipelineDiagnostics.Recorder.deinit()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 removeObserver_];

  return v0;
}

uint64_t RenderPipelineDiagnostics.Recorder.__deallocating_deinit()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 removeObserver_];

  return swift_deallocClassInstance();
}

id sub_24EE936C4(uint64_t a1)
{
  v3 = sub_24F91EB58();
  v4 = *(v3 - 8);
  *&v5 = MEMORY[0x28223BE20](v3).n128_u64[0];
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v1 + 24);
  [v8 lock];
  (*(v4 + 16))(v7, a1, v3);
  swift_beginAccess();
  v9 = *(v1 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v1 + 16) = v9;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v9 = sub_24E61977C(0, v9[2] + 1, 1, v9);
    *(v1 + 16) = v9;
  }

  v12 = v9[2];
  v11 = v9[3];
  if (v12 >= v11 >> 1)
  {
    v9 = sub_24E61977C(v11 > 1, v12 + 1, 1, v9);
  }

  v9[2] = v12 + 1;
  (*(v4 + 32))(v9 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v12, v7, v3);
  *(v1 + 16) = v9;
  swift_endAccess();
  return [v8 unlock];
}

uint64_t RenderPipelineDiagnostics.Recorder.snapshot()()
{
  v1 = *(v0 + 24);
  [v1 lock];
  swift_beginAccess();
  v2 = *(v0 + 16);

  [v1 unlock];
  return v2;
}

uint64_t sub_24EE939D4()
{
  result = sub_24F92B098();
  qword_27F232668 = result;
  return result;
}

uint64_t sub_24EE93A44()
{
  result = sub_24F92B098();
  qword_27F232670 = result;
  return result;
}

void sub_24EE93AC4(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16))
  {
    v4 = [objc_opt_self() defaultCenter];
    if (qword_27F2107A0 != -1)
    {
      swift_once();
    }

    v5 = qword_27F232670;
    sub_24E94E17C(a2, v16);
    v6 = v17;
    if (v17)
    {
      v7 = __swift_project_boxed_opaque_existential_1(v16, v17);
      v8 = *(v6 - 8);
      v9 = MEMORY[0x28223BE20](v7);
      v11 = v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0) + 96;
      (*(v8 + 16))(v11, v9);
      v12 = sub_24F92CDE8();
      (*(v8 + 8))(v11, v6);
      __swift_destroy_boxed_opaque_existential_1(v16);
    }

    else
    {
      v12 = 0;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222878);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_24F93DE60;
    v16[0] = 0x746E656469636E69;
    v16[1] = 0xE900000000000073;
    sub_24F92C7F8();
    *(inited + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F232678);
    *(inited + 72) = a1;

    sub_24E608210(inited);
    swift_setDeallocating();
    sub_24E601704(inited + 32, qword_27F23E470);
    v14 = sub_24F92AE28();

    [v4 postNotificationName:v5 object:v12 userInfo:v14];

    swift_unknownObjectRelease();
  }
}

void sub_24EE93D6C(uint64_t a1, uint64_t a2)
{
  v3 = [objc_opt_self() defaultCenter];
  if (qword_27F210798 != -1)
  {
    swift_once();
  }

  v4 = qword_27F232668;
  sub_24E94E17C(a2, v19);
  v5 = v20;
  if (v20)
  {
    v6 = __swift_project_boxed_opaque_existential_1(v19, v20);
    v7 = *(v5 - 8);
    v8 = MEMORY[0x28223BE20](v6);
    v10 = v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v7 + 16))(v10, v8);
    v11 = sub_24F92CDE8();
    (*(v7 + 8))(v10, v5);
    __swift_destroy_boxed_opaque_existential_1(v19);
  }

  else
  {
    v11 = 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222878);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F93DE60;
  v19[0] = 0x726F727265;
  v19[1] = 0xE500000000000000;
  sub_24F92C7F8();
  swift_getErrorValue();
  v13 = v17[1];
  v14 = v18;
  *(inited + 96) = v18;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 72));
  (*(*(v14 - 8) + 16))(boxed_opaque_existential_1, v13, v14);
  sub_24E608210(inited);
  swift_setDeallocating();
  sub_24E601704(inited + 32, qword_27F23E470);
  v16 = sub_24F92AE28();

  [v3 postNotificationName:v4 object:v11 userInfo:v16];

  swift_unknownObjectRelease();
}

uint64_t _s12GameStoreKit25RenderPipelineDiagnosticsV9incidents2ofSay9JetEngine10JSIncidentVGSg10Foundation12NotificationV_tFZ_0()
{
  v0 = sub_24F91EB48();
  if (!v0)
  {
    goto LABEL_9;
  }

  v1 = v0;
  *&v6 = 0x746E656469636E69;
  *(&v6 + 1) = 0xE900000000000073;
  sub_24F92C7F8();
  if (!*(v1 + 16) || (v2 = sub_24E76D934(v5), (v3 & 1) == 0))
  {

    sub_24E6585F8(v5);
LABEL_9:
    v6 = 0u;
    v7 = 0u;
    goto LABEL_10;
  }

  sub_24E643A9C(*(v1 + 56) + 32 * v2, &v6);
  sub_24E6585F8(v5);

  if (!*(&v7 + 1))
  {
LABEL_10:
    sub_24E601704(&v6, &qword_27F2129B0);
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F232678);
  if (swift_dynamicCast())
  {
    return v5[0];
  }

  else
  {
    return 0;
  }
}

uint64_t _s12GameStoreKit25RenderPipelineDiagnosticsV5error2ofs5Error_pSg10Foundation12NotificationV_tFZ_0()
{
  v0 = sub_24F91EB48();
  if (!v0)
  {
    goto LABEL_9;
  }

  v1 = v0;
  *&v6 = 0x726F727265;
  *(&v6 + 1) = 0xE500000000000000;
  sub_24F92C7F8();
  if (!*(v1 + 16) || (v2 = sub_24E76D934(v5), (v3 & 1) == 0))
  {

    sub_24E6585F8(v5);
LABEL_9:
    v6 = 0u;
    v7 = 0u;
    goto LABEL_10;
  }

  sub_24E643A9C(*(v1 + 56) + 32 * v2, &v6);
  sub_24E6585F8(v5);

  if (!*(&v7 + 1))
  {
LABEL_10:
    sub_24E601704(&v6, &qword_27F2129B0);
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F228600);
  if (swift_dynamicCast())
  {
    return v5[0];
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24EE942F4()
{
  swift_getKeyPath();
  sub_24ECCC910();
  sub_24F91FD88();

  return *(v0 + 24);
}

uint64_t sub_24EE94364(uint64_t a1)
{
  v2 = v1;
  v4 = *(v1 + 24);
  KeyPath = swift_getKeyPath();
  if (v4 == a1)
  {
    sub_24ECCC910();
    sub_24F91FD88();

    if (*(v2 + 24) != a1)
    {
      return sub_24F9280C8();
    }
  }

  else
  {
    MEMORY[0x28223BE20](KeyPath);
    sub_24ECCC910();
    sub_24F91FD78();
  }

  return result;
}

uint64_t sub_24EE94488(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a1 + 24) = a2;
  swift_getKeyPath();
  sub_24ECCC910();
  sub_24F91FD88();

  if (v3 != *(a1 + 24))
  {
    return sub_24F9280C8();
  }

  return result;
}

uint64_t sub_24EE94520()
{

  v1 = OBJC_IVAR____TtC12GameStoreKit38GameMediaPreviewPlatformOptionProvider___observationRegistrar;
  v2 = sub_24F91FDC8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for GameMediaPreviewPlatformOptionProvider()
{
  result = qword_27F232688;
  if (!qword_27F232688)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24EE94618()
{
  result = sub_24F91FDC8();
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

BOOL sub_24EE946E8(unsigned __int8 a1)
{
  v3 = sub_24F928C38();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v9 = MEMORY[0x28223BE20](v7).n128_u64[0];
  v11 = &v21 - v10;
  if (*(v1 + 16) != 1)
  {
    return 0;
  }

  v12 = a1;
  if (!a1)
  {
    return 1;
  }

  v13 = v8;
  v14 = *(v1 + 32);
  if (v12 == 1)
  {
    [*(v1 + 32) lock];
    sub_24F928C28();
    v15 = v1 + OBJC_IVAR____TtC12GameStoreKit18JSGarbageCollector_lastShrinkTime;
    swift_beginAccess();
    v16 = 10.0;
  }

  else
  {
    [*(v1 + 32) lock];
    sub_24F928C28();
    v15 = v1 + OBJC_IVAR____TtC12GameStoreKit18JSGarbageCollector_lastShrinkTime;
    swift_beginAccess();
    v16 = 5.0;
  }

  (*(v4 + 16))(v6, v15, v13);
  sub_24F928C08();
  v19 = v18;
  v20 = *(v4 + 8);
  v20(v6, v13);
  v20(v11, v13);
  [v14 unlock];
  return v19 > v16;
}

uint64_t sub_24EE948E8(char a1)
{
  v2 = v1;
  v12 = sub_24F928C38();
  v4 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27F210578 != -1)
  {
    swift_once();
  }

  v7 = sub_24F92AAE8();
  __swift_project_value_buffer(v7, qword_27F39C3C8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
  sub_24F928468();
  *(swift_allocObject() + 16) = xmmword_24F9479A0;
  sub_24F928448();
  sub_24F9283A8();
  v14 = &type metadata for JSGarbageCollector.Methodology;
  v13[0] = a1 & 1;
  sub_24F928438();
  sub_24E857CC8(v13);
  sub_24F92A588();

  if ((a1 & 1) == 0)
  {
    return sub_24F92A8A8();
  }

  v8 = *(v1 + 32);
  [*(v2 + 32) lock];
  sub_24F928C28();
  v9 = OBJC_IVAR____TtC12GameStoreKit18JSGarbageCollector_lastShrinkTime;
  swift_beginAccess();
  (*(v4 + 40))(v2 + v9, v6, v12);
  swift_endAccess();
  [v8 unlock];
  return sub_24F92A898();
}

void sub_24EE94BA0(void *a1)
{
  v1 = [a1 virtualMachine];
  if (v1)
  {
    v2 = v1;
    [v1 shrinkFootprintWhenIdle];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_24EE94BFC()
{

  v1 = OBJC_IVAR____TtC12GameStoreKit18JSGarbageCollector_lastShrinkTime;
  v2 = sub_24F928C38();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for JSGarbageCollector()
{
  result = qword_27F2326A0;
  if (!qword_27F2326A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24EE94CFC()
{
  result = sub_24F928C38();
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

unint64_t sub_24EE94DC8()
{
  result = qword_27F2326B0;
  if (!qword_27F2326B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2326B0);
  }

  return result;
}

__n128 sub_24EE94E1C(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213CD0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_24F93DE60;
  if (qword_27F210D60 != -1)
  {
    v10 = v4;
    swift_once();
    v4 = v10;
  }

  v5 = qword_27F39D300;
  v6 = *(a2 + 16);
  *(v4 + 32) = xmmword_24F944DE0;
  *(v4 + 48) = vdupq_n_s64(0xC0C81C8000000000);
  *(v4 + 64) = 0;
  *(v4 + 72) = 0;
  *(v4 + 80) = 0;
  *(v4 + 88) = a1;
  *(v4 + 96) = a1;
  *(v4 + 104) = v5;
  *(v4 + 112) = v5;
  *(v4 + 120) = v5;
  *(v4 + 128) = v5;
  *(v4 + 136) = v6;
  *(v4 + 144) = v6;
  v7 = MEMORY[0x277D768C8];
  *(v4 + 152) = 1;
  result = *v7;
  v9 = *(v7 + 16);
  *(v4 + 160) = *v7;
  *(v4 + 176) = v9;
  return result;
}

uint64_t DiffablePagePresenter.init(objectGraph:pageUrl:sidePackedPage:sidePackedPageRenderMetrics:advertLifecycleMetricsReporter:impressionsTracker:impressionsCalculator:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = sub_24EE9AA30(a1, a2, a3, a4, a5, a6, a7, a8);

  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  return v8;
}

uint64_t sub_24EE94FA4(uint64_t a1)
{
  v2 = v1;
  v4 = *v2;
  v5 = type metadata accessor for PresenterError();
  MEMORY[0x28223BE20](v5);
  v7 = (&v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_24F91F648();
  MEMORY[0x28223BE20](v8);
  v11 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a1;
  v13 = *(a1 + 8);
  v14 = *(a1 + 16);
  if (v14 < 0)
  {
    sub_24E60169C(v2 + qword_27F39CBF8, v7 + *(v5 + 20), &qword_27F228530);
    *v7 = v12;
    v18 = sub_24EA09500();
    if (v18)
    {
      v19 = v18;
      sub_24EE9C210(&qword_27F22B028, type metadata accessor for PresenterError);
      v50 = swift_allocError();
      sub_24EBDEC38(v7, v20);
      v21 = OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_errors;
      swift_beginAccess();
      v22 = *(v19 + v21);

      sub_24EE9BFB8(v12, v13, v14);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v19 + v21) = v22;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v22 = sub_24E617130(0, v22[2] + 1, 1, v22);
        *(v19 + v21) = v22;
      }

      v25 = v22[2];
      v24 = v22[3];
      if (v25 >= v24 >> 1)
      {
        v22 = sub_24E617130((v24 > 1), v25 + 1, 1, v22);
      }

      v22[2] = v25 + 1;
      v22[v25 + 4] = v50;
      *(v19 + v21) = v22;
      swift_endAccess();
    }

    else
    {
      v44 = v12;
    }

    sub_24EE9C210(&qword_27F22B028, type metadata accessor for PresenterError);
    v45 = swift_allocError();
    sub_24EBDEC38(v7, v46);
    v47 = swift_allocObject();
    swift_weakInit();
    v48 = swift_allocObject();
    *(v48 + 16) = *(v4 + 552);
    *(v48 + 32) = *(v4 + 568);
    *(v48 + 40) = *(v4 + 576);
    *(v48 + 56) = *(v4 + 592);
    *(v48 + 64) = v47;
    v53 = v45;
    *&v54 = sub_24EE9BFA4;
    *(&v54 + 1) = v48;
    LOBYTE(v55) = 1;

    sub_24EA093A4(&v53);
    sub_24EB24A60(v53, v54, *(&v54 + 1), v55);
    sub_24EBDECA4(v7);
  }

  else
  {
    v50 = v9;
    v15 = *(v4 + 1184);

    v15(v12, v14 & 1);
    *(v2 + qword_27F39CC10) = v13;

    v54 = 0uLL;
    v53 = v12;
    LOBYTE(v55) = 0;
    swift_unknownObjectRetain();
    sub_24EA093A4(&v53);
    v16 = sub_24EB24A60(v53, v54, *(&v54 + 1), v55);
    if (*(v2 + qword_27F2326C8))
    {
      v17 = (*(*v2 + 1192))(v16);
    }

    else
    {
      v17 = 1;
    }

    v51 = v13;
    v52 = 0;
    if (v14)
    {
      v26 = *(v4 + 576);
      v27 = *(v4 + 552);
      v28 = (*(v26 + 24))(v27, v26) ^ 1;
    }

    else
    {
      v27 = *(v4 + 552);
      v26 = *(v4 + 576);
      v28 = 1;
    }

    v53 = v27;
    v54 = *(v4 + 560);
    v55 = v26;
    v56 = *(v4 + 584);
    v29 = type metadata accessor for DiffablePagePresenter();
    WitnessTable = swift_getWitnessTable();
    sub_24EE86944(&v51, v17 & 1, 1, v28 & 1, v29, WitnessTable);
    sub_24E96513C(v51, v52);
    *(v2 + qword_27F2326C8) = v14 & 1;
    v31 = sub_24EA09500();
    if (v31)
    {
      v32 = v31;

      sub_24F91F638();
      sub_24F91F5E8();
      v34 = v33;
      (*(v50 + 8))(v11, v8);
      v35 = v32 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_rootViewModelPresentTime;
      swift_beginAccess();
      *v35 = v34;
      *(v35 + 8) = 0;
      v36 = *(v32 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_hasViewModelPresentTime);
      swift_beginAccess();
      *(v36 + 40) = 1;
      swift_beginAccess();
      if (swift_weakLoadStrong())
      {
        sub_24EA6BFA0();
      }
    }

    v37 = *v2;
    v38 = (v2 + *(*v2 + 752));
    v39 = *v38;
    if (*v38)
    {
      v40 = sub_24E5FCA4C(*v38);
      v39(v40);
      sub_24E824448(v39);
      v37 = *v2;
    }

    v41 = (v2 + *(v37 + 752));
    v42 = *v41;
    *v41 = 0;
    v41[1] = 0;
    return sub_24E824448(v42);
  }
}

uint64_t sub_24EE95628(uint64_t a1, char a2)
{
  v18 = *v2;
  v5 = sub_24F91F648();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = v18[69];
  v21 = v19;
  v17 = v18[73];
  v22 = v17;
  v16 = v18[74];
  v23 = v16;
  v20[0] = a1;
  swift_unknownObjectRetain();
  sub_24EA07F34(v20);
  v9 = a2;
  if (a2)
  {
    v10 = v18[72];
    v11 = *(v10 + 24);
    if (v11(v19, v10))
    {
LABEL_7:
      result = v11(v19, v10);
      if (result)
      {
        return result;
      }

      goto LABEL_8;
    }
  }

  if (sub_24EA09500())
  {

    sub_24F91F638();
    sub_24F91F5E8();
    v13 = v12;
    (*(v6 + 8))(v8, v5);
    PendingPageRender.initialRequestEndTime.setter(v13, 0);
  }

  if (v9)
  {
    v10 = v18[72];
    v11 = *(v10 + 24);
    goto LABEL_7;
  }

LABEL_8:
  result = sub_24EA09500();
  if (result)
  {
    v22 = v17;
    v23 = v16;
    v21 = v19;
    v20[0] = a1;
    swift_unknownObjectRetain();

    PendingPageRender.use(pageRenderEventFrom:)(v20);

    result = sub_24E601704(v20, &qword_27F224F98);
  }

  if ((v9 & 1) == 0)
  {
    v20[0] = a1;
    v15 = (*(v18[71] + 8))(v19);
    sub_24EE99478(v15);
  }

  return result;
}

uint64_t sub_24EE958DC(uint64_t result)
{
  v2 = *(result + 16);
  if ((v2 & 0x80000000) == 0)
  {
    v3 = *v1;
    v4 = *(result + 8);
    (*(*v1 + 1184))(*result, v2 & 1);
    sub_24EE98804(v4, 1);
    if (*(v1 + *(*v1 + 736)))
    {
      v5 = *(v3 + 568);
      v6 = *(v5 + 8);
      v7 = *(v3 + 552);

      v8 = v6(v7, v5);
      v9 = sub_24ED64DBC(v8);
    }

    else
    {
      v9 = (*(*(v3 + 568) + 8))(*(v3 + 552));
    }

    sub_24EE99478(v9);
  }

  return result;
}

uint64_t *DiffablePagePresenter.deinit()
{
  v0 = TimedMetricsPagePresenter.deinit();
  sub_24E601704(v0 + qword_27F39CBF8, &qword_27F228530);

  v1 = *(*v0 + 640);
  type metadata accessor for DiffablePageContentPresenter.PageFetchResult();
  sub_24F929528();
  v2 = sub_24F92C4A8();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  sub_24E601704(v0 + *(*v0 + 648), &qword_27F22AC08);
  v4 = *(*v0 + 656);
  type metadata accessor for DiffablePageContentPresenter.IncompleteShelfFetchResult();
  sub_24F929528();
  v5 = sub_24F92C4A8();
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  v3(v0 + *(*v0 + 664), v2);
  sub_24E601704(v0 + *(*v0 + 672), &qword_27F22ABE8);
  sub_24E601704(v0 + *(*v0 + 680), &qword_27F22ABF0);

  sub_24E601704(v0 + *(*v0 + 696), &qword_27F22ACF0);
  sub_24E94E128(v0 + *(*v0 + 704));

  sub_24E601704(v0 + *(*v0 + 744), &qword_27F229490);
  sub_24E824448(*(v0 + *(*v0 + 752)));
  return v0;
}

uint64_t sub_24EE95DF0(char a1)
{
  sub_24EA08880(&v9);
  result = v9;
  if (!v12)
  {
    result = sub_24EB24A60(v9, v10, v11, 0);
    if ((a1 & 1) == 0)
    {
      return result;
    }

    goto LABEL_9;
  }

  if (v12 == 1)
  {
    result = sub_24EB24A60(v9, v10, v11, 1);
    if ((a1 & 1) == 0)
    {
      return result;
    }

LABEL_9:
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 2;
    sub_24EA093A4(&v9);
    sub_24EB24A60(v9, v10, v11, v12);
    v4 = sub_24EE96C1C();
    sub_24EE9A9E4(v4);

    return (*(*v1 + 544))(1);
  }

  if (v11 | v10 | v9)
  {
    if ((a1 & 1) == 0)
    {
      return result;
    }

    goto LABEL_9;
  }

  v6 = 0;
  v7 = 0;
  v5 = 1;
  v8 = 2;
  sub_24EA093A4(&v5);
  sub_24EB24A60(v5, v6, v7, v8);
  *(v1 + *(*v1 + 736)) = 0;

  if (*(v1 + qword_27F39CC00))
  {

    sub_24ED910C4();
  }

  return result;
}

id sub_24EE95F54()
{
  v0 = sub_24EE9A984();

  return v0;
}

void sub_24EE95F7C(uint64_t a1)
{
  v3 = qword_27F39CC08;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_24EE9600C@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 640);
  swift_beginAccess();
  type metadata accessor for DiffablePageContentPresenter.PageFetchResult();
  sub_24F929528();
  v4 = sub_24F92C4A8();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t sub_24EE96118(uint64_t a1)
{
  v3 = *(*v1 + 640);
  swift_beginAccess();
  type metadata accessor for DiffablePageContentPresenter.PageFetchResult();
  sub_24F929528();
  v4 = sub_24F92C4A8();
  (*(*(v4 - 8) + 40))(v1 + v3, a1, v4);
  return swift_endAccess();
}

uint64_t sub_24EE9622C@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 648);
  swift_beginAccess();
  return sub_24E60169C(v1 + v3, a1, &qword_27F22AC08);
}

uint64_t sub_24EE962A0(uint64_t a1)
{
  v3 = *(*v1 + 648);
  swift_beginAccess();
  sub_24E61DA68(a1, v1 + v3, &qword_27F22AC08);
  return swift_endAccess();
}

uint64_t sub_24EE9631C@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 656);
  swift_beginAccess();
  type metadata accessor for DiffablePageContentPresenter.IncompleteShelfFetchResult();
  sub_24F929528();
  v4 = sub_24F92C4A8();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t sub_24EE96428(uint64_t a1)
{
  v3 = *(*v1 + 656);
  swift_beginAccess();
  type metadata accessor for DiffablePageContentPresenter.IncompleteShelfFetchResult();
  sub_24F929528();
  v4 = sub_24F92C4A8();
  (*(*(v4 - 8) + 40))(v1 + v3, a1, v4);
  return swift_endAccess();
}

uint64_t sub_24EE9653C@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 664);
  swift_beginAccess();
  type metadata accessor for DiffablePageContentPresenter.PageFetchResult();
  sub_24F929528();
  v4 = sub_24F92C4A8();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t sub_24EE96648(uint64_t a1)
{
  v3 = *(*v1 + 664);
  swift_beginAccess();
  type metadata accessor for DiffablePageContentPresenter.PageFetchResult();
  sub_24F929528();
  v4 = sub_24F92C4A8();
  (*(*(v4 - 8) + 40))(v1 + v3, a1, v4);
  return swift_endAccess();
}

uint64_t sub_24EE9675C(uint64_t a1)
{
  v3 = *(*v1 + 672);
  swift_beginAccess();
  sub_24E61DA68(a1, v1 + v3, &qword_27F22ABE8);
  return swift_endAccess();
}

uint64_t sub_24EE967D8@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 680);
  swift_beginAccess();
  return sub_24E60169C(v1 + v3, a1, &qword_27F22ABF0);
}

uint64_t sub_24EE9684C(uint64_t a1)
{
  v3 = *(*v1 + 680);
  swift_beginAccess();
  sub_24E61DA68(a1, v1 + v3, &qword_27F22ABF0);
  return swift_endAccess();
}

uint64_t sub_24EE968C8@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 696);
  swift_beginAccess();
  return sub_24E60169C(v1 + v3, a1, &qword_27F22ACF0);
}

uint64_t sub_24EE9693C(uint64_t a1)
{
  v3 = *(*v1 + 696);
  swift_beginAccess();
  sub_24E61DA68(a1, v1 + v3, &qword_27F22ACF0);
  return swift_endAccess();
}

uint64_t sub_24EE96A24@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 704);
  swift_beginAccess();
  return sub_24E9B7D88(v1 + v3, a1);
}

uint64_t sub_24EE96A88(uint64_t a1)
{
  v3 = *(*v1 + 704);
  swift_beginAccess();
  sub_24EBD46D4(a1, v1 + v3);
  swift_endAccess();
  sub_24EE9A1F0();
  return sub_24E94E128(a1);
}

uint64_t sub_24EE96B00()
{
  sub_24EE9B350();
}

uint64_t sub_24EE96B28(uint64_t a1)
{
  v3 = *(*v1 + 712);
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_24EE96C1C()
{
  v1 = sub_24EA09500();

  sub_24EA06074(0);
  v2 = (*(*v0 + 1112))(0);
  sub_24EE99638(v1);

  return v2;
}

uint64_t sub_24EE96CA8(uint64_t a1)
{
  v130 = a1;
  v2 = *v1;
  v3 = *v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ABE8);
  MEMORY[0x28223BE20](v4 - 8);
  v119 = &v103 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ABF0);
  MEMORY[0x28223BE20](v6 - 8);
  v120 = &v103 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v115 = &v103 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ABA8);
  v128 = *(v10 - 8);
  v129 = v10;
  MEMORY[0x28223BE20](v10);
  v114 = &v103 - v11;
  v12 = *(v2 + 592);
  *&v138[16] = v12;
  v133 = *(v3 + 552);
  v121 = v3;
  v134 = *(v3 + 576);
  v137 = v133;
  *v138 = v134;
  v108 = type metadata accessor for DiffablePageContentPresenter.IncompleteShelfFetchResult();
  v13 = sub_24F929528();
  v107 = sub_24F92C4A8();
  v106 = *(v107 - 8);
  MEMORY[0x28223BE20](v107);
  v118 = &v103 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v112 = &v103 - v16;
  v127 = v13;
  v125 = *(v13 - 8);
  MEMORY[0x28223BE20](v17);
  v105 = &v103 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AC08);
  MEMORY[0x28223BE20](v19 - 8);
  v116 = &v103 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v23 = &v103 - v22;
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AB90);
  v123 = *(v124 - 8);
  MEMORY[0x28223BE20](v124);
  v103 = &v103 - v24;
  v137 = v133;
  *v138 = v134;
  v132 = v12;
  *&v138[16] = v12;
  v122 = type metadata accessor for DiffablePageContentPresenter.PageFetchResult();
  v25 = sub_24F929528();
  v26 = sub_24F92C4A8();
  v27 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v117 = &v103 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v31 = &v103 - v30;
  MEMORY[0x28223BE20](v32);
  v110 = &v103 - v33;
  MEMORY[0x28223BE20](v34);
  v36 = &v103 - v35;
  v37 = *(v25 - 8);
  MEMORY[0x28223BE20](v38);
  v104 = &v103 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v40);
  v42 = &v103 - v41;
  v131 = v1;
  sub_24EE9600C(v36);
  v109 = *(v37 + 48);
  v43 = v109(v36, 1, v25);
  v126 = v25;
  v113 = v31;
  v111 = v26;
  if (v43 == 1)
  {
    v44 = v37;
    (*(v27 + 8))(v36, v26);
    v45 = v130;
  }

  else
  {
    (*(v37 + 32))(v42, v36, v25);
    v45 = v130;
    if (v130)
    {
      sub_24F92AD78();
    }

    v44 = v37;
    (*(v37 + 8))(v42, v25);
  }

  v46 = v110;
  sub_24EE9622C(v23);
  v47 = v123;
  v48 = v124;
  v49 = (*(v123 + 48))(v23, 1, v124);
  v50 = v125;
  if (v49 == 1)
  {
    sub_24E601704(v23, &qword_27F22AC08);
  }

  else
  {
    v51 = v103;
    (*(v47 + 32))(v103, v23, v48);
    if (v45)
    {
      sub_24F92AD78();
    }

    (*(v47 + 8))(v51, v48);
  }

  v52 = v128;
  v53 = v112;
  sub_24EE9631C(v112);
  v54 = v53;
  v55 = v53;
  v56 = v127;
  v57 = v44;
  if ((*(v50 + 48))(v55, 1, v127) == 1)
  {
    (*(v106 + 8))(v54, v107);
  }

  else
  {
    v58 = v105;
    (*(v50 + 32))(v105, v54, v56);
    if (v45)
    {
      sub_24F92AD78();
    }

    (*(v50 + 8))(v58, v56);
  }

  v59 = v129;
  sub_24EE9653C(v46);
  v60 = v126;
  if (v109(v46, 1, v126) == 1)
  {
    (*(v27 + 8))(v46, v111);
    v61 = v121;
    v62 = v115;
    v63 = v114;
  }

  else
  {
    v64 = v104;
    (*(v57 + 32))(v104, v46, v60);
    v61 = v121;
    v63 = v114;
    if (v45)
    {
      sub_24F92AD78();
    }

    (*(v57 + 8))(v64, v60);
    v62 = v115;
  }

  v65 = v131;
  sub_24EE967D8(v62);
  if ((*(v52 + 48))(v62, 1, v59) == 1)
  {
    sub_24E601704(v62, &qword_27F22ABF0);
  }

  else
  {
    (*(v52 + 32))(v63, v62, v59);
    if (v45)
    {
      sub_24F92AD78();
    }

    (*(v52 + 8))(v63, v59);
  }

  if (*(v65 + qword_27F39CC00))
  {
    v66 = swift_allocObject();
    *(v66 + 16) = sub_24EE9C018;
    *(v66 + 24) = 0;
    sub_24F92ADB8();
    v67 = v61[71];

    v137 = v133;
    *v138 = v67;
    *&v138[8] = v134;
    v139 = v132;
    type metadata accessor for DiffablePagePresenter();
    swift_getWitnessTable();
    sub_24F9288B8();
    v68 = v113;
    sub_24F9288C8();

    __swift_destroy_boxed_opaque_existential_1(&v137);
    v69 = 0;
  }

  else
  {
    v69 = 1;
    v68 = v113;
  }

  v70 = *(v57 + 56);
  v71 = 1;
  v131 = (v57 + 56);
  v121 = v70;
  (v70)(v68, v69, 1, v60);
  sub_24EE96118(v68);
  if (*(v65 + qword_27F39CC00))
  {
    v72 = swift_allocObject();
    *(v72 + 16) = sub_24EE9C090;
    *(v72 + 24) = 0;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2226B8);
    v73 = v61;
    v74 = v61[71];
    v137 = v133;
    *v138 = v74;
    *&v138[8] = v134;
    v139 = v132;
    type metadata accessor for DiffablePagePresenter();
    sub_24E602068(&qword_27F22AC38, &qword_27F2226B8);
    sub_24F9288B8();
    v75 = v116;
    sub_24F9288C8();

    __swift_destroy_boxed_opaque_existential_1(&v137);
    v71 = 0;
    v76 = v118;
  }

  else
  {
    v76 = v118;
    v73 = v61;
    v75 = v116;
  }

  v77 = 1;
  (*(v123 + 56))(v75, v71, 1, v124);
  sub_24EE962A0(v75);
  if (*(v65 + qword_27F39CC00))
  {
    v78 = swift_allocObject();
    *(v78 + 16) = sub_24EBD39F8;
    *(v78 + 24) = 0;
    sub_24F92ADB8();
    v79 = v73[71];

    v137 = v133;
    *v138 = v79;
    *&v138[8] = v134;
    v139 = v132;
    type metadata accessor for DiffablePagePresenter();
    swift_getWitnessTable();
    sub_24F9288B8();
    sub_24F9288C8();

    __swift_destroy_boxed_opaque_existential_1(&v137);
    v77 = 0;
  }

  v80 = v76;
  v81 = v126;
  v82 = 1;
  (*(v125 + 56))(v80, v77, 1, v127);
  sub_24EE96428(v80);
  if (*(v65 + qword_27F39CC00))
  {
    v83 = swift_allocObject();
    *(v83 + 16) = sub_24EBD3338;
    *(v83 + 24) = 0;
    sub_24F92ADB8();
    v84 = v73[71];

    v137 = v133;
    *v138 = v84;
    *&v138[8] = v134;
    v139 = v132;
    type metadata accessor for DiffablePagePresenter();
    swift_getWitnessTable();
    sub_24F9288B8();
    v85 = v117;
    sub_24F9288C8();

    __swift_destroy_boxed_opaque_existential_1(&v137);
    v82 = 0;
  }

  else
  {
    v85 = v117;
  }

  v86 = 1;
  (v121)(v85, v82, 1, v81);
  sub_24EE96648(v85);
  if (*(v65 + qword_27F39CC00))
  {
    v87 = swift_allocObject();
    *(v87 + 16) = sub_24EE9C0D0;
    *(v87 + 24) = 0;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2226C8);
    v88 = v73[71];
    v137 = v133;
    *v138 = v88;
    *&v138[8] = v134;
    v139 = v132;
    type metadata accessor for DiffablePagePresenter();
    sub_24E602068(&qword_27F22AC50, &qword_27F2226C8);
    sub_24F9288B8();
    v89 = v119;
    sub_24F9288C8();

    __swift_destroy_boxed_opaque_existential_1(&v137);
    v86 = 0;
    v90 = v120;
  }

  else
  {
    v90 = v120;
    v89 = v119;
  }

  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ABA0);
  v92 = 1;
  (*(*(v91 - 8) + 56))(v89, v86, 1, v91);
  sub_24EE9675C(v89);
  if (*(v65 + qword_27F39CC00))
  {
    v93 = swift_allocObject();
    *(v93 + 16) = sub_24EE9C138;
    *(v93 + 24) = 0;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2226D0);
    v94 = v73[71];
    v137 = v133;
    *v138 = v94;
    *&v138[8] = v134;
    v139 = v132;
    type metadata accessor for DiffablePagePresenter();
    sub_24E602068(&qword_27F22AC58, &qword_27F2226D0);
    sub_24F9288B8();
    sub_24F9288C8();

    __swift_destroy_boxed_opaque_existential_1(&v137);
    v92 = 0;
  }

  v95 = v130;
  (*(v128 + 56))(v90, v92, 1, v129);
  result = sub_24EE9684C(v90);
  if (*(v65 + qword_27F39CC00))
  {
    v97 = qword_27F39CC08;
    swift_beginAccess();
    v98 = *(v65 + v97);

    v99 = v98;
    sub_24ED9100C(v98);
  }

  if (v95)
  {
    result = (*(*v65 + 1128))(result);
    if (result)
    {
      v135 = 0;
      v136 = 0x80;
      v100 = v73[71];
      v137 = v133;
      *v138 = v100;
      *&v138[8] = v134;
      v139 = v132;
      v101 = type metadata accessor for DiffablePagePresenter();
      WitnessTable = swift_getWitnessTable();
      return sub_24EE86944(&v135, 1, 1, 0, v101, WitnessTable);
    }
  }

  return result;
}

uint64_t sub_24EE980B4(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + *(*v2 + 752));
  v4 = *v3;
  *v3 = a1;
  v3[1] = a2;
  return sub_24E824448(v4);
}

uint64_t sub_24EE980E0(uint64_t (*a1)(void *), uint64_t a2)
{
  sub_24EA08880(&v9);
  if (v12)
  {
    sub_24EB24A60(v9, v10, v11, v12);
    v5 = (v2 + *(*v2 + 752));
    v6 = *v5;
    *v5 = a1;
    v5[1] = a2;

    return sub_24E824448(v6);
  }

  else
  {
    v8 = sub_24EB24A60(v9, v10, v11, 0);
    return a1(v8);
  }
}
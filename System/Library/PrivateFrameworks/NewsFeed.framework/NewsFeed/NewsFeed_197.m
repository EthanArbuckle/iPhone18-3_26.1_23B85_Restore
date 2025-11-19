uint64_t sub_1D6D4BDFC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);

  __swift_destroy_boxed_opaque_existential_1(v0 + 48);

  return swift_deallocClassInstance();
}

uint64_t sub_1D6D4BE8C(uint64_t a1, uint64_t a2)
{
  sub_1D6D4C0E0(0, qword_1EDF2A668, type metadata accessor for FormatViewBackground);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1D6D4BF74()
{
  sub_1D6D4C0E0(319, qword_1EDF2A668, type metadata accessor for FormatViewBackground);
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_1D6D4BFFC()
{
  result = type metadata accessor for FormatViewBackground.Mica(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for FormatViewBackground.SplitBackground(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_1D6D4C0E0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D726393C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1D6D4C148()
{
  sub_1D6D4C0E0(319, &qword_1EDF3B668, MEMORY[0x1E69D78C0]);
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_1D6D4C208()
{
  result = sub_1D725D5FC();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1D6D4C290(void *a1)
{
  v1 = [objc_msgSend(a1 possiblyUnfetchedAppConfiguration)];
  swift_unknownObjectRelease();
  if (v1)
  {
    [v1 feedNumberOfViewportsBetweenAds];
  }

  else
  {
    __break(1u);
  }
}

uint64_t FormatImageNodeRequestPath.adjustments.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

BOOL _s8NewsFeed22FormatImageNodeRequestV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  v6 = *a2;
  v5 = a2[1];
  if (v3)
  {
    if (!v6)
    {
      goto LABEL_13;
    }

    v7 = v3;
    swift_bridgeObjectRetain_n();

    v8 = sub_1D633D620(v7, v6);
    swift_bridgeObjectRelease_n();

    if ((v8 & 1) == 0)
    {
      return 0;
    }

    if (v4)
    {
      goto LABEL_5;
    }
  }

  else
  {
    if (v6)
    {
      goto LABEL_13;
    }

    if (v4)
    {
LABEL_5:
      if (v5)
      {
        swift_bridgeObjectRetain_n();

        v9 = sub_1D633D620(v4, v5);
        swift_bridgeObjectRelease_n();

        return (v9 & 1) != 0;
      }

      goto LABEL_13;
    }
  }

  if (v5)
  {
LABEL_13:

    return 0;
  }

  return 1;
}

unint64_t sub_1D6D4C5D0(uint64_t a1)
{
  result = sub_1D6D4C5F8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6D4C5F8()
{
  result = qword_1EC895590;
  if (!qword_1EC895590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC895590);
  }

  return result;
}

unint64_t sub_1D6D4C68C()
{
  result = qword_1EC895598;
  if (!qword_1EC895598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC895598);
  }

  return result;
}

unint64_t sub_1D6D4C6E0(uint64_t a1)
{
  result = sub_1D6D4C708();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6D4C708()
{
  result = qword_1EC8955A0;
  if (!qword_1EC8955A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8955A0);
  }

  return result;
}

unint64_t sub_1D6D4C79C()
{
  result = qword_1EC8955A8;
  if (!qword_1EC8955A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8955A8);
  }

  return result;
}

unint64_t sub_1D6D4C7F0(uint64_t a1)
{
  result = sub_1D6D4C818();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6D4C818()
{
  result = qword_1EC8955B0;
  if (!qword_1EC8955B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8955B0);
  }

  return result;
}

uint64_t sub_1D6D4C8AC(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  a1[1] = a4();
  a1[2] = a5();
  result = a6();
  a1[3] = result;
  return result;
}

unint64_t sub_1D6D4C900()
{
  result = qword_1EC8955B8;
  if (!qword_1EC8955B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8955B8);
  }

  return result;
}

uint64_t keypath_setTm_0(void *a1, void *a2)
{

  *a2 = *a1;
}

void *sub_1D6D4C9C8(uint64_t a1, unint64_t *a2)
{
  sub_1D5EA74B8();
  v4 = *(v3 - 8);
  v5 = v4;
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = (&v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = (&v64 - v11);
  v14 = *a2;
  v13 = a2[1];
  v15 = MEMORY[0x1E69E6F90];
  sub_1D6048F4C(0, &qword_1EC880AC0, sub_1D5E4F358, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D7270C10;
  sub_1D6048F4C(0, &qword_1EC880490, sub_1D5EA74B8, v15);
  v17 = *(v4 + 72);
  v18 = *(v5 + 80);
  v75 = (v18 + 32) & ~v18;
  v68 = v18;
  v69 = v19;
  v20 = swift_allocObject();
  v72 = xmmword_1D7273AE0;
  v66 = v20;
  *(v20 + 16) = xmmword_1D7273AE0;
  sub_1D6048F4C(0, &qword_1EC8803C0, sub_1D5E4F38C, v15);
  v67 = v21;
  v74 = swift_initStackObject();
  *(v74 + 16) = v72;
  v22 = MEMORY[0x1E69E7CC0];
  v23 = MEMORY[0x1E69E7CC0];
  if (v14 >= 2)
  {

    v23 = v14;
  }

  v70 = v14;
  v71 = inited;
  v65 = v13;
  v24 = *(v23 + 16);
  if (v24)
  {
    *&v80[0] = v22;
    sub_1D69972A4(0, v24, 0);
    v25 = *&v80[0];
    v73 = v23;
    v26 = (v23 + 64);
    do
    {
      v27 = *v26;
      v82 = *(v26 - 2);
      v83 = *(v26 - 1);
      LOBYTE(v84) = v27;
      sub_1D6E7C97C(v12);
      v28 = type metadata accessor for FormatInspectionItem(0);
      (*(*(v28 - 8) + 56))(v12, 0, 1, v28);
      *&v80[0] = v25;
      v30 = *(v25 + 16);
      v29 = *(v25 + 24);
      if (v30 >= v29 >> 1)
      {
        sub_1D69972A4(v29 > 1, v30 + 1, 1);
        v25 = *&v80[0];
      }

      *(v25 + 16) = v30 + 1;
      sub_1D5E4F52C(v12, v25 + v75 + v30 * v17);
      v26 += 40;
      --v24;
    }

    while (v24);

    inited = v71;
  }

  else
  {

    v25 = MEMORY[0x1E69E7CC0];
  }

  sub_1D6795150(0x656D7473756A6441, 0xEB0000000073746ELL, 0, 0, v25, v76);

  v31 = v74;
  *(v74 + 56) = &type metadata for FormatInspectionGroup;
  *(v31 + 64) = &off_1F518B2C0;
  v32 = swift_allocObject();
  *(v31 + 32) = v32;
  *(v32 + 48) = v77;
  v33 = v76[1];
  *(v32 + 16) = v76[0];
  *(v32 + 32) = v33;
  v34 = sub_1D5F62BFC(v31);
  swift_setDeallocating();
  __swift_destroy_boxed_opaque_existential_1(v31 + 32);
  v35 = sub_1D7073500(v34);

  v36 = v75;
  v37 = v66;
  sub_1D711AD20(0x656D7473756A6441, 0xEB0000000073746ELL, v35, 0, 0, (v66 + v75));
  v38 = type metadata accessor for FormatInspectionItem(0);
  v39 = *(v38 - 8);
  v40 = *(v39 + 56);
  v73 = v39 + 56;
  v74 = v40;
  v40(v37 + v36, 0, 1, v38);
  sub_1D6795150(1702521171, 0xE400000000000000, 0, 0, v37, v78);
  swift_setDeallocating();
  sub_1D6180C78(v37 + v36);
  swift_deallocClassInstance();
  *(inited + 56) = &type metadata for FormatInspectionGroup;
  *(inited + 64) = &off_1F518B2C0;
  v41 = swift_allocObject();
  *(inited + 32) = v41;
  *(v41 + 48) = v79;
  v42 = v78[1];
  *(v41 + 16) = v78[0];
  *(v41 + 32) = v42;
  v43 = swift_allocObject();
  *(v43 + 16) = v72;
  v44 = swift_initStackObject();
  *(v44 + 16) = v72;
  v45 = MEMORY[0x1E69E7CC0];
  v68 = v44;
  v69 = v43;
  v46 = MEMORY[0x1E69E7CC0];
  if (v70 != 1 && v65)
  {
  }

  v47 = *(v46 + 16);
  if (v47)
  {
    *&v80[0] = v45;
    sub_1D69972A4(0, v47, 0);
    v48 = *&v80[0];
    *&v72 = v46;
    v49 = (v46 + 64);
    do
    {
      v50 = *v49;
      v82 = *(v49 - 2);
      v83 = *(v49 - 1);
      LOBYTE(v84) = v50;
      sub_1D6E7C97C(v8);
      (v74)(v8, 0, 1, v38);
      *&v80[0] = v48;
      v52 = *(v48 + 16);
      v51 = *(v48 + 24);
      if (v52 >= v51 >> 1)
      {
        sub_1D69972A4(v51 > 1, v52 + 1, 1);
        v48 = *&v80[0];
      }

      *(v48 + 16) = v52 + 1;
      sub_1D5E4F52C(v8, v48 + v75 + v52 * v17);
      v49 += 40;
      --v47;
    }

    while (v47);

    inited = v71;
  }

  else
  {

    v48 = MEMORY[0x1E69E7CC0];
  }

  sub_1D6795150(0x656D7473756A6441, 0xEB0000000073746ELL, 0, 0, v48, v80);

  v53 = v68;
  *(v68 + 56) = &type metadata for FormatInspectionGroup;
  *(v53 + 64) = &off_1F518B2C0;
  v54 = swift_allocObject();
  *(v53 + 32) = v54;
  *(v54 + 48) = v81;
  v55 = v80[1];
  *(v54 + 16) = v80[0];
  *(v54 + 32) = v55;
  v56 = sub_1D5F62BFC(v53);
  swift_setDeallocating();
  __swift_destroy_boxed_opaque_existential_1(v53 + 32);
  v57 = sub_1D7073500(v56);

  v58 = v75;
  v59 = v69;
  sub_1D711AD20(0x656D7473756A6441, 0xEB0000000073746ELL, v57, 0, 0, (v69 + v75));
  (v74)(v59 + v58, 0, 1, v38);
  sub_1D6795150(1752457552, 0xE400000000000000, 0, 0, v59, &v82);
  swift_setDeallocating();
  sub_1D6180C78(v59 + v58);
  swift_deallocClassInstance();
  *(inited + 96) = &type metadata for FormatInspectionGroup;
  *(inited + 104) = &off_1F518B2C0;
  v60 = swift_allocObject();
  *(inited + 72) = v60;
  *(v60 + 48) = v84;
  v61 = v83;
  *(v60 + 16) = v82;
  *(v60 + 32) = v61;
  v62 = sub_1D7073500(inited);
  swift_setDeallocating();
  sub_1D5E4F358(0);
  swift_arrayDestroy();
  return v62;
}

void FormatResource.loadableFonts(in:)(_OWORD *a1)
{
  sub_1D5B54CB8(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v34[-v6];
  v8 = a1[5];
  v35[4] = a1[4];
  v35[5] = v8;
  v9 = a1[6];
  v10 = a1[1];
  v35[0] = *a1;
  v35[1] = v10;
  v11 = a1[3];
  v35[2] = a1[2];
  v35[3] = v11;
  v12 = *v1;
  v13 = v1[1];
  v14 = v1[3];
  v37[2] = v1[2];
  v37[3] = v14;
  v15 = v1[2];
  v16 = *v1;
  v37[1] = v1[1];
  v36 = v9;
  v37[0] = v12;
  *(v40 + 9) = *(v1 + 105);
  v17 = v1[5];
  v40[0] = v1[6];
  v18 = v1[3];
  v19 = v1[5];
  v38 = v1[4];
  v39 = v19;
  v41[2] = v15;
  v41[3] = v18;
  v41[0] = v16;
  v41[1] = v13;
  v20 = v1[6];
  *(v42 + 9) = *(v1 + 105);
  v41[5] = v17;
  v42[0] = v20;
  v41[4] = v38;
  if (sub_1D5D2423C(v41) == 1)
  {
    nullsub_1(v41);
    return;
  }

  v21 = nullsub_1(v41);
  if ((*(v21 + 42) & 1) == 0)
  {
    v27 = *(v21 + 16);
    sub_1D5E42B34();
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_1D72816C0;
    sub_1D5E9A920(v37, v34);

    sub_1D5D27084(v35, v27, v7);
    if (v2)
    {
      sub_1D5E9A97C(v37);

      *(v28 + 16) = 0;

      return;
    }

    v29 = sub_1D72585BC();
    v30 = *(v29 - 8);
    (*(v30 + 56))(v7, 0, 1, v29);
    v31 = sub_1D726203C();
    v32 = 0;
    if ((*(v30 + 48))(v7, 1, v29) != 1)
    {
      v32 = sub_1D725844C();
      (*(v30 + 8))(v7, v29);
    }

    v33 = [objc_opt_self() loadableFontWithName:v31 url:v32];

    if (v33)
    {
      *(v28 + 32) = v33;
      sub_1D5E9A97C(v37);
      return;
    }

    __break(1u);
LABEL_19:
    __break(1u);
    return;
  }

  if (v36)
  {
    v22 = [v36 asChannel];
    if (v22)
    {
      v23 = [v22 theme];
      if (!v23 || (v24 = [v23 defaultHeadlineTemplate], swift_unknownObjectRelease(), !v24))
      {
        swift_unknownObjectRelease();
        return;
      }

      v25 = [v24 loadableFonts];
      if (v25)
      {
        v26 = v25;
        sub_1D6AE56F0();
        sub_1D726267C();
        swift_unknownObjectRelease();

        return;
      }

      goto LABEL_19;
    }
  }
}

void sub_1D6D4D5FC(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X5>, void *a7@<X6>, void (*a8)(void *__return_ptr, uint64_t, uint64_t)@<X7>, char *a9@<X8>, void (*a10)(void, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v123 = a8;
  v134 = a7;
  v125 = a6;
  v138 = a5;
  v115 = a4;
  v127 = a3;
  v131 = a2;
  v136 = a1;
  v129 = a9;
  v122 = type metadata accessor for FeedWebEmbed();
  MEMORY[0x1EEE9AC00](v122, v10);
  v128 = &v113 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for FeedHeadline(0);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v126 = &v113 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B54CB8(0, &qword_1EDF40B30, type metadata accessor for FormatCustomItem.Action);
  MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v121 = &v113 - v17;
  sub_1D5B54CB8(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
  MEMORY[0x1EEE9AC00](v18 - 8, v19);
  v118 = &v113 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21, v22);
  v124 = &v113 - v23;
  MEMORY[0x1EEE9AC00](v24, v25);
  v119 = &v113 - v26;
  MEMORY[0x1EEE9AC00](v27, v28);
  v117 = &v113 - v29;
  MEMORY[0x1EEE9AC00](v30, v31);
  v120 = &v113 - v32;
  v133 = sub_1D72585BC();
  v132 = *(v133 - 8);
  MEMORY[0x1EEE9AC00](v133, v33);
  v113 = &v113 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35, v36);
  v38 = &v113 - v37;
  MEMORY[0x1EEE9AC00](v39, v40);
  v116 = &v113 - v41;
  MEMORY[0x1EEE9AC00](v42, v43);
  v45 = &v113 - v44;
  MEMORY[0x1EEE9AC00](v46, v47);
  v114 = &v113 - v48;
  v49 = type metadata accessor for FeedCustomItem();
  MEMORY[0x1EEE9AC00](v49, v50);
  v52 = (&v113 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0));
  v130 = type metadata accessor for FormatLayoutError();
  MEMORY[0x1EEE9AC00](v130, v53);
  v55 = (&v113 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D5B54CB8(0, &qword_1EDF337F0, type metadata accessor for FormatOption);
  MEMORY[0x1EEE9AC00](v56 - 8, v57);
  v59 = &v113 - v58;
  v60 = type metadata accessor for FormatOption();
  v61 = *(v60 - 8);
  MEMORY[0x1EEE9AC00](v60, v62);
  v64 = &v113 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v138 <= 2u)
  {
    if (v138)
    {
      if (v138 != 1)
      {
        v92 = v126;
        v93 = v135;
        sub_1D6B7C374(*(v136 + *v134), v126);
        v94 = v133;
        v95 = v132;
        if (!v93)
        {
          LOBYTE(v137[0]) = v131;
          v96 = v117;
          sub_1D6B44234(v92, v117);
          if ((*(v95 + 48))(v96, 1, v94) == 1)
          {
            sub_1D5D28540(v96, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
            sub_1D5D285FC();
            swift_allocError();
            *v97 = 0xD000000000000022;
            v97[1] = 0x80000001D73F1D90;
            swift_storeEnumTagMultiPayload();
            swift_willThrow();
            v91 = type metadata accessor for FeedHeadline;
            goto LABEL_25;
          }

          sub_1D5D28B04(v92, type metadata accessor for FeedHeadline);
          v108 = *(v95 + 32);
          v108(v45, v96, v94);
          v108(v129, v45, v94);
        }

        return;
      }

      v55 = v52;
      v65 = v135;
      sub_1D6B7B794(*(v136 + *v134), v52);
      v66 = v133;
      v67 = v132;
      if (v65)
      {
        return;
      }

      v68 = *(v49 + 20);
      v69 = type metadata accessor for FormatCustomItem.Resolved();
      v70 = v121;
      sub_1D5D27018(v52 + v68 + *(v69 + 24), v121, &qword_1EDF40B30, type metadata accessor for FormatCustomItem.Action);
      v71 = type metadata accessor for FormatCustomItem.Action();
      v72 = 1;
      v73 = (*(*(v71 - 8) + 48))(v70, 1, v71);
      v74 = v120;
      if (v73 != 1)
      {
        (*(v67 + 32))(v120, v70, v66);
        v72 = 0;
      }

      (*(v67 + 56))(v74, v72, 1, v66);
      if ((*(v67 + 48))(v74, 1, v66) != 1)
      {
        sub_1D5D28B04(v52, type metadata accessor for FeedCustomItem);
        v105 = *(v67 + 32);
        v106 = v114;
        v105(v114, v74, v66);
        v105(v129, v106, v66);
        return;
      }

      sub_1D5D28540(v74, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
      sub_1D5D285FC();
      swift_allocError();
      *v75 = 0xD000000000000025;
      v75[1] = 0x80000001D73F1DC0;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      v76 = type metadata accessor for FeedCustomItem;
    }

    else
    {
      v82 = v136;
      v83 = v127;

      v84 = v131;
      FormatOptionCollection.subscript.getter(v131, v83, v59);
      if ((*(v61 + 48))(v59, 1, v60) != 1)
      {

        sub_1D5D247E0(v59, v64);
        v103 = *(v64 + 2);

        v104 = v135;
        v123(v137, v82, v103);
        if (!v104)
        {

          a10(v137[0], v84, v83, v115, v82);
        }

        sub_1D5D28B04(v64, type metadata accessor for FormatOption);

        return;
      }

      sub_1D5D28540(v59, &qword_1EDF337F0, type metadata accessor for FormatOption);
      *v55 = v84;
      v55[1] = v83;
      swift_storeEnumTagMultiPayload();
      sub_1D5D285FC();
      swift_allocError();
      sub_1D5D287F4(v55, v85, type metadata accessor for FormatLayoutError);
      swift_willThrow();
      v76 = type metadata accessor for FormatLayoutError;
    }

    sub_1D5D28B04(v55, v76);
    return;
  }

  if (v138 == 3)
  {
    v86 = v135;
    v92 = v128;
    sub_1D6B7BE60(*(v136 + *v134), v128);
    v87 = v133;
    v88 = v132;
    if (v86)
    {
      return;
    }

    if (v131)
    {
      v89 = v119;
      sub_1D5D27018(v92 + *(v122 + 36), v119, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
      if ((*(v88 + 48))(v89, 1, v87) == 1)
      {
        sub_1D5D28540(v89, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
        sub_1D5D285FC();
        swift_allocError();
        *v90 = 0xD000000000000023;
        v90[1] = 0x80000001D73F1D60;
        swift_storeEnumTagMultiPayload();
        swift_willThrow();
        v91 = type metadata accessor for FeedWebEmbed;
LABEL_25:
        sub_1D5D28B04(v92, v91);
        return;
      }

      sub_1D5D28B04(v92, type metadata accessor for FeedWebEmbed);
    }

    else
    {
      v89 = v119;
      (*(v132 + 16))(v119, v92 + *(v122 + 32), v133);
      sub_1D5D28B04(v92, type metadata accessor for FeedWebEmbed);
      (*(v88 + 56))(v89, 0, 1, v87);
    }

    v111 = *(v88 + 32);
    v112 = v116;
    v111(v116, v89, v87);
    v111(v129, v112, v87);
  }

  else if (v138 == 4)
  {
    v77 = v124;
    v78 = v135;
    sub_1D6D4F790(v136, v131, v134, v124);
    if (!v78)
    {
      v79 = v132;
      v80 = v133;
      if ((*(v132 + 48))(v77, 1, v133) == 1)
      {
        sub_1D5D28540(v77, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
        sub_1D5D285FC();
        swift_allocError();
        *v81 = 0xD00000000000001FLL;
        v81[1] = 0x80000001D73F1D40;
        swift_storeEnumTagMultiPayload();
        swift_willThrow();
      }

      else
      {
        v107 = *(v79 + 32);
        v107(v38, v77, v80);
        v107(v129, v38, v80);
      }
    }
  }

  else
  {
    v98 = v135;
    sub_1D6B7C06C(*(v136 + *v134), v137);
    if (!v98)
    {
      v99 = v118;
      sub_1D60F32F8(v118);
      v100 = v132;
      v101 = v133;
      if ((*(v132 + 48))(v99, 1, v133) == 1)
      {
        sub_1D5D28540(v99, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
        sub_1D5D285FC();
        swift_allocError();
        *v102 = 0xD00000000000001DLL;
        v102[1] = 0x80000001D73F1D20;
        swift_storeEnumTagMultiPayload();
        swift_willThrow();
        sub_1D5EE5B54(v137);
      }

      else
      {
        sub_1D5EE5B54(v137);
        v109 = *(v100 + 32);
        v110 = v113;
        v109(v113, v99, v101);
        v109(v129, v110, v101);
      }
    }
  }
}

void sub_1D6D4E524(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X8>)
{
  v106 = a5;
  v96 = a4;
  v95 = a3;
  v101 = a2;
  v103 = a1;
  v100 = a6;
  v94 = type metadata accessor for FeedWebEmbed();
  MEMORY[0x1EEE9AC00](v94, v6);
  v98 = &v89 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for FeedHeadline(0);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v97 = &v89 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B54CB8(0, &qword_1EDF40B30, type metadata accessor for FormatCustomItem.Action);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v93 = &v89 - v13;
  sub_1D5B54CB8(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
  MEMORY[0x1EEE9AC00](v14 - 8, v15);
  v90 = &v89 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v89 - v19;
  MEMORY[0x1EEE9AC00](v21, v22);
  v91 = &v89 - v23;
  MEMORY[0x1EEE9AC00](v24, v25);
  v27 = &v89 - v26;
  MEMORY[0x1EEE9AC00](v28, v29);
  v92 = &v89 - v30;
  v102 = sub_1D72585BC();
  v99 = *(v102 - 8);
  MEMORY[0x1EEE9AC00](v102, v31);
  v33 = &v89 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34, v35);
  v37 = &v89 - v36;
  MEMORY[0x1EEE9AC00](v38, v39);
  v41 = &v89 - v40;
  MEMORY[0x1EEE9AC00](v42, v43);
  v45 = &v89 - v44;
  MEMORY[0x1EEE9AC00](v46, v47);
  v49 = &v89 - v48;
  v50 = type metadata accessor for FeedCustomItem();
  MEMORY[0x1EEE9AC00](v50, v51);
  v53 = &v89 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v106 > 2u)
  {
    if (v106 == 3)
    {
      v70 = v98;
      v71 = v104;
      sub_1D5FB5240();
      v72 = v102;
      if (v71)
      {
        return;
      }

      if (v101)
      {
        v73 = v91;
        sub_1D5D27018(v70 + *(v94 + 36), v91, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
        if ((*(v99 + 48))(v73, 1, v72) == 1)
        {
          sub_1D5D28540(v73, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
          type metadata accessor for FormatLayoutError();
          sub_1D5D285FC();
          swift_allocError();
          *v74 = 0xD000000000000023;
          v74[1] = 0x80000001D73F1D60;
          swift_storeEnumTagMultiPayload();
          swift_willThrow();
          sub_1D5D28B04(v70, type metadata accessor for FeedWebEmbed);
          return;
        }

        sub_1D5D28B04(v70, type metadata accessor for FeedWebEmbed);
        v83 = v99;
      }

      else
      {
        v83 = v99;
        v73 = v91;
        (*(v99 + 16))(v91, v70 + *(v94 + 32), v102);
        sub_1D5D28B04(v70, type metadata accessor for FeedWebEmbed);
        (*(v83 + 56))(v73, 0, 1, v72);
      }

      v88 = *(v83 + 32);
      v88(v41, v73, v72);
      v88(v100, v41, v72);
    }

    else
    {
      v66 = v102;
      if (v106 == 4)
      {
        v67 = v104;
        sub_1D6D4FA48(v101, sub_1D5FB5A54, sub_1D5FB61AC, sub_1D5FB6008, v20);
        if (!v67)
        {
          v68 = v99;
          if ((*(v99 + 48))(v20, 1, v66) == 1)
          {
            sub_1D5D28540(v20, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
            type metadata accessor for FormatLayoutError();
            sub_1D5D285FC();
            swift_allocError();
            *v69 = 0xD00000000000001FLL;
            v69[1] = 0x80000001D73F1D40;
            swift_storeEnumTagMultiPayload();
            swift_willThrow();
          }

          else
          {
            v85 = *(v68 + 32);
            v85(v37, v20, v66);
            v85(v100, v37, v66);
          }
        }
      }

      else
      {
        v79 = v104;
        sub_1D5FB526C(v105);
        if (!v79)
        {
          v80 = v90;
          sub_1D60F32F8(v90);
          v81 = v99;
          if ((*(v99 + 48))(v80, 1, v66) == 1)
          {
            sub_1D5D28540(v80, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
            type metadata accessor for FormatLayoutError();
            sub_1D5D285FC();
            swift_allocError();
            *v82 = 0xD00000000000001DLL;
            v82[1] = 0x80000001D73F1D20;
            swift_storeEnumTagMultiPayload();
            swift_willThrow();
            sub_1D5EE5B54(v105);
          }

          else
          {
            sub_1D5EE5B54(v105);
            v87 = *(v81 + 32);
            v87(v33, v80, v66);
            v87(v100, v33, v66);
          }
        }
      }
    }
  }

  else
  {
    if (!v106)
    {
      sub_1D6F711B8(v103, v101, v95, v96, v100);
      return;
    }

    if (v106 == 1)
    {
      v54 = v104;
      sub_1D5FB4FE0();
      if (v54)
      {
        return;
      }

      v55 = *(v50 + 20);
      v56 = type metadata accessor for FormatCustomItem.Resolved();
      v57 = v93;
      sub_1D5D27018(&v53[v55 + *(v56 + 24)], v93, &qword_1EDF40B30, type metadata accessor for FormatCustomItem.Action);
      v58 = type metadata accessor for FormatCustomItem.Action();
      v59 = 1;
      v60 = (*(*(v58 - 8) + 48))(v57, 1, v58);
      v61 = v102;
      v62 = v99;
      v63 = v92;
      if (v60 != 1)
      {
        (*(v99 + 32))(v92, v57, v102);
        v59 = 0;
      }

      (*(v62 + 56))(v63, v59, 1, v61);
      if ((*(v62 + 48))(v63, 1, v61) == 1)
      {
        sub_1D5D28540(v63, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
        type metadata accessor for FormatLayoutError();
        sub_1D5D285FC();
        swift_allocError();
        *v64 = 0xD000000000000025;
        v64[1] = 0x80000001D73F1DC0;
        swift_storeEnumTagMultiPayload();
        swift_willThrow();
        v65 = type metadata accessor for FeedCustomItem;
LABEL_23:
        sub_1D5D28B04(v53, v65);
        return;
      }

      sub_1D5D28B04(v53, type metadata accessor for FeedCustomItem);
      v84 = *(v62 + 32);
      v84(v49, v63, v61);
      v84(v100, v49, v61);
    }

    else
    {
      v53 = v97;
      v75 = v104;
      sub_1D5FB543C();
      if (v75)
      {
        return;
      }

      v105[0] = v101;
      sub_1D6B44234(v53, v27);
      v76 = v99;
      v77 = v102;
      if ((*(v99 + 48))(v27, 1, v102) == 1)
      {
        sub_1D5D28540(v27, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
        type metadata accessor for FormatLayoutError();
        sub_1D5D285FC();
        swift_allocError();
        *v78 = 0xD000000000000022;
        v78[1] = 0x80000001D73F1D90;
        swift_storeEnumTagMultiPayload();
        swift_willThrow();
        v65 = type metadata accessor for FeedHeadline;
        goto LABEL_23;
      }

      sub_1D5D28B04(v53, type metadata accessor for FeedHeadline);
      v86 = *(v76 + 32);
      v86(v45, v27, v77);
      v86(v100, v45, v77);
    }
  }
}

void sub_1D6D4F160(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unsigned __int8 a5@<W4>, uint64_t a6@<X8>)
{
  v40 = a3;
  v37 = a4;
  v42 = a1;
  v43 = a2;
  v39 = a6;
  sub_1D5B54CB8(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v37 - v9;
  v11 = sub_1D72585BC();
  v38 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = type metadata accessor for FormatLayoutError();
  MEMORY[0x1EEE9AC00](v44, v15);
  v17 = (&v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D5B54CB8(0, &qword_1EDF337F0, type metadata accessor for FormatOption);
  MEMORY[0x1EEE9AC00](v18 - 8, v19);
  v21 = &v37 - v20;
  v22 = type metadata accessor for FormatOption();
  v23 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22, v24);
  v26 = &v37 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a5 > 2u)
  {
    if (a5 == 4)
    {
      v27 = v41;
      sub_1D6D4FA48(v43, sub_1D5F54C3C, sub_1D5F55D7C, sub_1D5F55B34, v10);
      if (v27)
      {
        return;
      }

      v28 = v38;
      if ((*(v38 + 48))(v10, 1, v11) != 1)
      {
        v36 = *(v28 + 32);
        v36(v14, v10, v11);
        v36(v39, v14, v11);
        return;
      }

      sub_1D5D28540(v10, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
      sub_1D5D285FC();
      swift_allocError();
      *v29 = 0xD00000000000001FLL;
      v29[1] = 0x80000001D73F1D40;
      goto LABEL_9;
    }

LABEL_8:
    sub_1D5D285FC();
    swift_allocError();
    *v30 = 0xD000000000000066;
    v30[1] = 0x80000001D73C3700;
LABEL_9:
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    return;
  }

  if (a5)
  {
    goto LABEL_8;
  }

  v31 = off_1F513B088[0];
  type metadata accessor for FormatDecorationContext();
  v32 = v40;

  v31(v43, v32, v21);
  if ((*(v23 + 48))(v21, 1, v22) == 1)
  {
    sub_1D5D28540(v21, &qword_1EDF337F0, type metadata accessor for FormatOption);
    *v17 = v43;
    v17[1] = v32;
    swift_storeEnumTagMultiPayload();
    sub_1D5D285FC();
    swift_allocError();
    sub_1D5D287F4(v17, v33, type metadata accessor for FormatLayoutError);
    swift_willThrow();
    sub_1D5D28B04(v17, type metadata accessor for FormatLayoutError);
  }

  else
  {

    sub_1D5D247E0(v21, v26);

    v34 = v41;
    v35 = v42;
    sub_1D6B766A8(v42, &v45);
    if (!v34)
    {

      sub_1D6B83618(v45, v43, v32, v37, v35, v39);
    }

    sub_1D5D28B04(v26, type metadata accessor for FormatOption);
  }
}

uint64_t sub_1D6D4F6F4()
{
  type metadata accessor for FormatLayoutError();
  sub_1D5D285FC();
  swift_allocError();
  *v0 = 0xD00000000000007ALL;
  v0[1] = 0x80000001D73C3800;
  swift_storeEnumTagMultiPayload();
  return swift_willThrow();
}

void sub_1D6D4F790(uint64_t a1@<X0>, unsigned __int8 a2@<W1>, void *a3@<X2>, char *a4@<X8>)
{
  v9 = type metadata accessor for FeedWebEmbed();
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v22[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for FeedHeadline(0);
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v16 = &v22[-1] - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2 >> 6)
  {
    if (a2 >> 6 == 1)
    {
      sub_1D6751840(*(a1 + *a3 + 8), v12);
      if (!v4)
      {
        if (a2)
        {
          sub_1D5D27018(&v12[*(v9 + 36)], a4, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
          sub_1D5D28B04(v12, type metadata accessor for FeedWebEmbed);
        }

        else
        {
          v18 = *(v9 + 32);
          v19 = sub_1D72585BC();
          v20 = *(v19 - 8);
          (*(v20 + 16))(a4, &v12[v18], v19);
          sub_1D5D28B04(v12, type metadata accessor for FeedWebEmbed);
          (*(v20 + 56))(a4, 0, 1, v19);
        }
      }
    }

    else
    {
      sub_1D6750B04(*(a1 + *a3 + 8), v22);
      if (!v4)
      {
        v17 = v22[1];
        sub_1D60F353C(a4);
        swift_unknownObjectRelease();
      }
    }
  }

  else
  {
    sub_1D6752174(*(a1 + *a3 + 8), v16);
    if (!v4)
    {
      LOBYTE(v22[0]) = a2;
      sub_1D6B44234(v16, a4);
      sub_1D5D28B04(v16, type metadata accessor for FeedHeadline);
    }
  }
}

void sub_1D6D4FA48(unsigned __int8 a1@<W1>, void (*a2)(__n128)@<X2>, void (*a3)(__n128)@<X3>, void (*a4)(void *__return_ptr, __n128)@<X4>, char *a5@<X8>)
{
  v27 = a5;
  v10 = type metadata accessor for FeedWebEmbed();
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v26[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for FeedHeadline(0);
  v16 = MEMORY[0x1EEE9AC00](v14 - 8, v15);
  v18 = &v26[-1] - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 6)
  {
    if (a1 >> 6 == 1)
    {
      a2(v16);
      if (!v5)
      {
        if (a1)
        {
          sub_1D5D27018(&v13[*(v10 + 36)], v27, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
          sub_1D5D28B04(v13, type metadata accessor for FeedWebEmbed);
        }

        else
        {
          v20 = *(v10 + 32);
          v21 = sub_1D72585BC();
          v22 = *(v21 - 8);
          v23 = &v13[v20];
          v24 = v27;
          (*(v22 + 16))(v27, v23, v21);
          sub_1D5D28B04(v13, type metadata accessor for FeedWebEmbed);
          (*(v22 + 56))(v24, 0, 1, v21);
        }
      }
    }

    else
    {
      a4(v26, v16);
      if (!v5)
      {
        v19 = v26[1];
        sub_1D60F353C(v27);
        swift_unknownObjectRelease();
      }
    }
  }

  else
  {
    a3(v16);
    if (!v5)
    {
      LOBYTE(v26[0]) = a1;
      sub_1D6B44234(v18, v27);
      sub_1D5D28B04(v18, type metadata accessor for FeedHeadline);
    }
  }
}

uint64_t sub_1D6D4FCF8@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = sub_1D72585BC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v33 - v13;
  v15 = type metadata accessor for FormatAbsoluteURL();
  MEMORY[0x1EEE9AC00](v15, v16);
  v19 = &v33 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v20 == 2)
    {
      v24 = a2 & 0x3FFFFFFFFFFFFFFFLL;
      v25 = *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v26 = *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
      v27 = *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
      v28 = *(v24 + 40);
      sub_1D5D27950(v25, v26, v27, *(v24 + 40));
      sub_1D6D4D5FC(a1, v25, v26, v27, v28, &OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_options, &OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_bindingStack, sub_1D6B744A8, a3, sub_1D6B80238);
      return sub_1D5D28C84(v25, v26, v27, v28);
    }

    else
    {
      v31 = *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v32 = *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);

      sub_1D6D52088(a1, v31, v32, a3);
    }
  }

  else if (v20)
  {
    v34 = a3;
    v29 = *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
    v35 = *(a1 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_config + 1);

    sub_1D722B410(v10);
    sub_1D725849C();
    v30 = *(v7 + 8);
    v30(v10, v6);
    sub_1D6B79708(v29, MEMORY[0x1E69E7CC0], v34);

    return (v30)(v14, v6);
  }

  else
  {
    v21 = v17;
    v22 = swift_projectBox();
    sub_1D5D287F4(v22, v19, type metadata accessor for FormatAbsoluteURL);
    sub_1D6B79708(*&v19[*(v21 + 20)], MEMORY[0x1E69E7CC0], a3);
    return sub_1D5D28B04(v19, type metadata accessor for FormatAbsoluteURL);
  }
}

uint64_t sub_1D6D5003C@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v49 = a1;
  sub_1D5B54CB8(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v48 - v7;
  sub_1D5B54CB8(0, &unk_1EDF43B50, MEMORY[0x1E69681B8]);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v48 - v11;
  v13 = sub_1D7257C7C();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for FormatAbsoluteURL();
  MEMORY[0x1EEE9AC00](v18, v19);
  v22 = &v48 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v23 == 2)
    {
      v29 = a2 & 0x3FFFFFFFFFFFFFFFLL;
      v30 = *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v31 = *(v29 + 24);
      v32 = *(v29 + 32);
      v33 = *(v29 + 40);
      sub_1D5D27950(v30, v31, v32, *(v29 + 40));
      sub_1D6D4E524(v49, v30, v31, v32, v33, a3);
      return sub_1D5D28C84(v30, v31, v32, v33);
    }

    else
    {
      v38 = a2 & 0x3FFFFFFFFFFFFFFFLL;
      v39 = *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v40 = *(v38 + 24);

      sub_1D6D53964(v49, v39, v40);
    }
  }

  else
  {
    if (!v23)
    {
      v48 = a3;
      v24 = v20;
      v25 = swift_projectBox();
      sub_1D5D287F4(v25, v22, type metadata accessor for FormatAbsoluteURL);
      v26 = *&v22[*(v24 + 20)];
      if (*(v26 + 16))
      {
        sub_1D7257BCC();
        if ((*(v14 + 48))(v12, 1, v13) != 1)
        {
          (*(v14 + 32))(v17, v12, v13);
          v41 = sub_1D7257B6C();
          if (v41)
          {
            v43 = v41;
          }

          else
          {
            v43 = MEMORY[0x1E69E7CC0];
          }

          MEMORY[0x1EEE9AC00](v41, v42);
          *(&v48 - 2) = v49;
          v44 = sub_1D5FBB260(sub_1D6D578B0, (&v48 - 4), v26);
          v50 = v43;
          sub_1D69852E4(v44);
          sub_1D7257B7C();
          sub_1D7257BDC();
          (*(v14 + 8))(v17, v13);
          v45 = sub_1D72585BC();
          v46 = *(v45 - 8);
          v47 = *(v46 + 48);
          if (v47(v8, 1, v45) == 1)
          {
            (*(v46 + 16))(v48, v22, v45);
            if (v47(v8, 1, v45) != 1)
            {
              sub_1D5D28540(v8, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
            }
          }

          else
          {
            (*(v46 + 32))(v48, v8, v45);
          }

          return sub_1D5D28B04(v22, type metadata accessor for FormatAbsoluteURL);
        }

        sub_1D5D28540(v12, &unk_1EDF43B50, MEMORY[0x1E69681B8]);
      }

      v27 = sub_1D72585BC();
      (*(*(v27 - 8) + 16))(v48, v22, v27);
      return sub_1D5D28B04(v22, type metadata accessor for FormatAbsoluteURL);
    }

    v34 = a2 & 0x3FFFFFFFFFFFFFFFLL;
    v36 = *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
    v35 = *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
    v37 = *(v34 + 32);

    sub_1D60B1338(v49, v36, v35, v37, a3);
  }
}

uint64_t sub_1D6D505B4@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v58 = a3;
  v57 = a1;
  v4 = sub_1D72585BC();
  v55 = *(v4 - 8);
  v56 = v4;
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v53 - v10;
  sub_1D5B54CB8(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v54 = &v53 - v14;
  sub_1D5B54CB8(0, &unk_1EDF43B50, MEMORY[0x1E69681B8]);
  MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v18 = &v53 - v17;
  v19 = sub_1D7257C7C();
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19, v21);
  v23 = &v53 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for FormatAbsoluteURL();
  MEMORY[0x1EEE9AC00](v24, v25);
  v27 = &v53 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v28 == 2)
    {
      v33 = a2 & 0x3FFFFFFFFFFFFFFFLL;
      v34 = *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v35 = *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
      v36 = *(v33 + 32);
      v37 = *(v33 + 40);
      sub_1D5D27950(v34, v35, v36, v37);
      sub_1D6D4F160(v57, v34, v35, v36, v37, v58);
      return sub_1D5D28C84(v34, v35, v36, v37);
    }

    else
    {
      v43 = *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v44 = *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);

      sub_1D6D5422C(v57, v43, v44, v58);
    }
  }

  else
  {
    if (!v28)
    {
      v29 = swift_projectBox();
      sub_1D5D287F4(v29, v27, type metadata accessor for FormatAbsoluteURL);
      v30 = *&v27[*(v24 + 20)];
      if (*(v30 + 16))
      {
        sub_1D7257BCC();
        v31 = v20;
        if ((*(v20 + 48))(v18, 1, v19) != 1)
        {
          (*(v20 + 32))(v23, v18, v19);
          v45 = sub_1D7257B6C();
          if (v45)
          {
            v47 = v45;
          }

          else
          {
            v47 = MEMORY[0x1E69E7CC0];
          }

          MEMORY[0x1EEE9AC00](v45, v46);
          *(&v53 - 2) = v57;
          v48 = sub_1D5FBB260(sub_1D6D578B0, (&v53 - 4), v30);
          v59 = v47;
          sub_1D69852E4(v48);
          sub_1D7257B7C();
          v49 = v54;
          sub_1D7257BDC();
          (*(v31 + 8))(v23, v19);
          v51 = v55;
          v50 = v56;
          v52 = *(v55 + 48);
          if (v52(v49, 1, v56) == 1)
          {
            (*(v51 + 16))(v58, v27, v50);
            if (v52(v49, 1, v50) != 1)
            {
              sub_1D5D28540(v49, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
            }
          }

          else
          {
            (*(v51 + 32))(v58, v49, v50);
          }

          return sub_1D5D28B04(v27, type metadata accessor for FormatAbsoluteURL);
        }

        sub_1D5D28540(v18, &unk_1EDF43B50, MEMORY[0x1E69681B8]);
      }

      (*(v55 + 16))(v58, v27, v56);
      return sub_1D5D28B04(v27, type metadata accessor for FormatAbsoluteURL);
    }

    v38 = *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
    v39 = v57;
    v60 = *(v57 + 9);

    sub_1D722B410(v7);
    sub_1D725849C();
    v40 = *(v55 + 8);
    v41 = v7;
    v42 = v56;
    v40(v41, v56);
    sub_1D6B7A750(v39, v38, MEMORY[0x1E69E7CC0], v58);

    return (v40)(v11, v42);
  }
}

uint64_t sub_1D6D50BD4@<X0>(__int128 *a1@<X0>, char *a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v178 = a3;
  v179 = a2;
  v175 = a4;
  v159 = type metadata accessor for FormatLayoutError();
  MEMORY[0x1EEE9AC00](v159, v5);
  v155 = &v147 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v158 = &v147 - v9;
  MEMORY[0x1EEE9AC00](v10, v11);
  v154 = &v147 - v12;
  MEMORY[0x1EEE9AC00](v13, v14);
  v157 = &v147 - v15;
  MEMORY[0x1EEE9AC00](v16, v17);
  v156 = (&v147 - v18);
  sub_1D5B54CB8(0, &qword_1EDF337F0, type metadata accessor for FormatOption);
  MEMORY[0x1EEE9AC00](v19 - 8, v20);
  v162 = &v147 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22, v23);
  v165 = &v147 - v24;
  MEMORY[0x1EEE9AC00](v25, v26);
  v161 = &v147 - v27;
  MEMORY[0x1EEE9AC00](v28, v29);
  v164 = &v147 - v30;
  MEMORY[0x1EEE9AC00](v31, v32);
  v163 = &v147 - v33;
  v170 = type metadata accessor for FormatOption();
  v177 = *(v170 - 8);
  MEMORY[0x1EEE9AC00](v170, v34);
  v160 = &v147 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36, v37);
  v39 = &v147 - v38;
  MEMORY[0x1EEE9AC00](v40, v41);
  v43 = &v147 - v42;
  MEMORY[0x1EEE9AC00](v44, v45);
  v47 = &v147 - v46;
  MEMORY[0x1EEE9AC00](v48, v49);
  v51 = &v147 - v50;
  v52 = sub_1D72585BC();
  v53 = *(v52 - 8);
  v55 = MEMORY[0x1EEE9AC00](v52, v54);
  v57 = &v147 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = v219;
  result = sub_1D5D27084(a1, v179, v55);
  v219 = v58;
  if (v58)
  {
    return result;
  }

  v60 = v53;
  v150 = v43;
  v151 = v47;
  v152 = v39;
  v153 = v51;
  v173 = a1;
  v166 = v57;
  v61 = *(v178 + 16);
  if (!v61)
  {
    v135 = MEMORY[0x1E69E7CC0];
    v84 = MEMORY[0x1E69E7CC0];
    v134 = v175;
    v136 = v60;
LABEL_54:
    v137 = v166;
    sub_1D6B79734(v84, v135, v134);

    return (*(v136 + 8))(v137, v52);
  }

  v148 = v52;
  v149 = v53;
  v62 = (v178 + 32);
  v167 = (v177 + 48);
  v63 = v61 - 1;
  v179 = MEMORY[0x1E69E7CC0];
  v172 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v64 = v62[1];
    v188 = *v62;
    v189 = v64;
    v65 = v62[3];
    v190 = v62[2];
    v191 = v65;
    v66 = v62[5];
    v192 = v62[4];
    v193[0] = v66;
    *(v193 + 10) = *(v62 + 90);
    v67 = *(&v188 + 1);
    v219 = v188;
    v68 = *(&v189 + 1);
    v69 = v190;
    v70 = WORD4(v193[1]);
    v71 = (WORD4(v193[1]) >> 12) & 3;
    v72 = v191;
    v177 = v63;
    v178 = v189;
    if (v71)
    {
      break;
    }

    if (v191 >> 14)
    {
      v84 = v179;
      if (v191 >> 14 == 1)
      {
        v85 = v173[5];
        v185 = v173[4];
        v186 = v85;
        v187 = v173[6];
        v86 = v173[1];
        v181 = *v173;
        v182 = v86;
        v87 = v173[3];
        v183 = v173[2];
        v184 = v87;
        v88 = off_1F51B1B98[0];
        sub_1D60B2AC8(&v188, v180);
        sub_1D60B2AC8(&v188, v180);

        v89 = v163;
        v88(v219, v67, v163);
        if ((*v167)(v89, 1, v170) == 1)
        {
          sub_1D5D28540(v89, &qword_1EDF337F0, type metadata accessor for FormatOption);
          v141 = v156;
          *v156 = v219;
          *(v141 + 8) = v67;
          swift_storeEnumTagMultiPayload();
          sub_1D5D285FC();
          v142 = swift_allocError();
          sub_1D5D287F4(v141, v143, type metadata accessor for FormatLayoutError);
          v219 = v142;
          swift_willThrow();
          sub_1D60B2A74(&v188);
          sub_1D5D28B04(v141, type metadata accessor for FormatLayoutError);
          (*(v149 + 8))(v166, v148);
          sub_1D60B2A74(&v188);
        }

        sub_1D5D247E0(v89, v153);
        *&v195[8] = v185;
        *&v195[10] = v186;
        *&v195[12] = v187;
        *v195 = v181;
        *&v195[2] = v182;
        *&v195[4] = v183;
        *&v195[6] = v184;
        sub_1D6B74D28(v195, v180);
        v194[4] = v185;
        v194[5] = v186;
        v194[6] = v187;
        v194[0] = v181;
        v194[1] = v182;
        v194[2] = v183;
        v194[3] = v184;
        sub_1D6B7DC5C(v180[0], v219, v67, v178, v194);
        sub_1D5D28B04(v153, type metadata accessor for FormatOption);
      }

      else
      {
        *&v195[15] = __PAIR128__(*(&v188 + 1), v219);
        *&v195[17] = __PAIR128__(*(&v189 + 1), v178);
        *&v195[19] = v190;
        v196 = v191 & 0x3FFF;
        sub_1D60B2AC8(&v188, &v181);
        sub_1D60B2AC8(&v188, &v181);
        sub_1D68A8D54(v173);
      }

      sub_1D60B2A74(&v188);
    }

    else
    {
      sub_1D60B2AC8(&v188, &v181);
      sub_1D5E1DA6C(v219, v67, v178, v68, v69, *(&v69 + 1), v72);
      v84 = v179;
    }

    sub_1D725845C();
    sub_1D60B2A74(&v188);

LABEL_50:
    v134 = v175;
    if (!v177)
    {
      v135 = v172;
      v52 = v148;
      v136 = v149;
      goto LABEL_54;
    }

    v179 = v84;
    v63 = v177 - 1;
    v62 += 7;
  }

  v174 = v192;
  v73 = v71 == 1;
  v176 = *(&v191 + 1);
  v171 = *(&v192 + 1);
  v169 = *&v193[1];
  v168 = v193[0];
  v74 = v191 >> 14;
  if (!v73)
  {
    if (!(v191 >> 14))
    {
      sub_1D60B2AC8(&v188, &v181);
      v112 = v67;
      v83 = v67;
      v81 = v219;
      sub_1D5E1DA6C(v219, v112, v178, v68, v69, *(&v69 + 1), v72);
      goto LABEL_31;
    }

    if (v74 != 1)
    {
      v217[7] = __PAIR128__(*(&v188 + 1), v219);
      v217[8] = __PAIR128__(*(&v189 + 1), v178);
      v217[9] = v190;
      v218 = v191 & 0x3FFF;
      sub_1D60B2AC8(&v188, &v181);
      v81 = sub_1D68A8D54(v173);
      v83 = v113;
      goto LABEL_31;
    }

    v90 = v173[5];
    v185 = v173[4];
    v186 = v90;
    v187 = v173[6];
    v91 = v173[1];
    v181 = *v173;
    v182 = v91;
    v92 = v173[3];
    v183 = v173[2];
    v184 = v92;
    v93 = off_1F51B1B98[0];
    sub_1D60B2AC8(&v188, v180);

    v94 = v165;
    v93(v219, v67, v165);
    if ((*v167)(v94, 1, v170) != 1)
    {

      v95 = v152;
      sub_1D5D247E0(v94, v152);
      v217[4] = v185;
      v217[5] = v186;
      v217[6] = v187;
      v217[0] = v181;
      v217[1] = v182;
      v217[2] = v183;
      v217[3] = v184;

      sub_1D6B74D28(v217, v180);

      v216[4] = v185;
      v216[5] = v186;
      v216[6] = v187;
      v216[0] = v181;
      v216[1] = v182;
      v216[3] = v184;
      v216[2] = v183;
      v81 = sub_1D6B7DC5C(v180[0], v219, v67, v178, v216);
      v83 = v96;
      sub_1D5D28B04(v95, type metadata accessor for FormatOption);

LABEL_31:
      v114 = swift_allocObject();
      v100 = v174;
      v219 = v114;
      if (v70 >> 14)
      {
        if (v70 >> 14 == 1)
        {
          v178 = v83;
          v115 = v173[5];
          v185 = v173[4];
          v186 = v115;
          v187 = v173[6];
          v116 = v173[1];
          v181 = *v173;
          v182 = v116;
          v117 = v173[3];
          v183 = v173[2];
          v184 = v117;
          v118 = off_1F51B1B98[0];

          v119 = v162;
          v118(v176, v100, v162);
          if ((*v167)(v119, 1, v170) == 1)
          {
            sub_1D5D28540(v119, &qword_1EDF337F0, type metadata accessor for FormatOption);
            v144 = v155;
            goto LABEL_61;
          }

          v120 = v160;
          sub_1D5D247E0(v119, v160);
          v209[4] = v185;
          v209[5] = v186;
          v209[6] = v187;
          v209[0] = v181;
          v209[1] = v182;
          v209[3] = v184;
          v209[2] = v183;

          sub_1D6B74D28(v209, v180);
          v83 = v178;
          v84 = v179;

          v208[4] = v185;
          v208[5] = v186;
          v208[6] = v187;
          v208[0] = v181;
          v208[1] = v182;
          v208[3] = v184;
          v208[2] = v183;
          v121 = sub_1D6B7DC5C(v180[0], v176, v100, v171, v208);
          v100 = v122;
          v123 = v120;
          v124 = v121;
          sub_1D5D28B04(v123, type metadata accessor for FormatOption);

          v125 = v124;
          v114 = v219;
        }

        else
        {
          v210 = v176;
          v211 = v174;
          v212 = v171;
          v213 = v168;
          v214 = v169;
          v215 = v70 & 0xFFF;
          v125 = sub_1D68A8D54(v173);
          v100 = v130;
          v84 = v179;
        }
      }

      else
      {

        v84 = v179;
        v125 = v176;
      }

      *(v114 + 16) = v125;
      *(v114 + 24) = v100;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v172 = sub_1D698CA54(0, *(v172 + 2) + 1, 1, v172);
      }

      v132 = *(v172 + 2);
      v131 = *(v172 + 3);
      if (v132 >= v131 >> 1)
      {
        v172 = sub_1D698CA54((v131 > 1), v132 + 1, 1, v172);
      }

      sub_1D60B2A74(&v188);
      v133 = v172;
      *(v172 + 2) = v132 + 1;
      v129 = &v133[24 * v132];
      goto LABEL_49;
    }

    sub_1D5D28540(v94, &qword_1EDF337F0, type metadata accessor for FormatOption);
    v138 = v158;
LABEL_57:
    *v138 = v219;
    v138[1] = v67;
    swift_storeEnumTagMultiPayload();
    sub_1D5D285FC();
    v139 = swift_allocError();
    sub_1D5D287F4(v138, v140, type metadata accessor for FormatLayoutError);
    swift_willThrow();
    sub_1D5D28B04(v138, type metadata accessor for FormatLayoutError);
    v219 = v139;
    (*(v149 + 8))(v166, v148);
    goto LABEL_62;
  }

  if (v191 >> 14)
  {
    if (v74 == 1)
    {
      v75 = v173[5];
      v185 = v173[4];
      v186 = v75;
      v187 = v173[6];
      v76 = v173[1];
      v181 = *v173;
      v182 = v76;
      v77 = v173[3];
      v183 = v173[2];
      v184 = v77;
      v78 = off_1F51B1B98[0];
      sub_1D60B2AC8(&v188, v180);

      v79 = v164;
      v78(v219, v67, v164);
      if ((*v167)(v79, 1, v170) == 1)
      {
        sub_1D5D28540(v79, &qword_1EDF337F0, type metadata accessor for FormatOption);
        v138 = v157;
        goto LABEL_57;
      }

      v80 = v151;
      sub_1D5D247E0(v79, v151);
      *&v206[8] = v185;
      *&v206[10] = v186;
      *&v206[12] = v187;
      *v206 = v181;
      *&v206[2] = v182;
      *&v206[6] = v184;
      *&v206[4] = v183;

      sub_1D6B74D28(v206, v180);

      v205[4] = v185;
      v205[5] = v186;
      v205[6] = v187;
      v205[0] = v181;
      v205[1] = v182;
      v205[3] = v184;
      v205[2] = v183;
      v81 = sub_1D6B7DC5C(v180[0], v219, v67, v178, v205);
      v83 = v82;
      sub_1D5D28B04(v80, type metadata accessor for FormatOption);
    }

    else
    {
      *&v206[15] = __PAIR128__(*(&v188 + 1), v219);
      *&v206[17] = __PAIR128__(*(&v189 + 1), v178);
      *&v206[19] = v190;
      v207 = v191 & 0x3FFF;
      sub_1D60B2AC8(&v188, &v181);
      v81 = sub_1D68A8D54(v173);
      v83 = v98;
    }
  }

  else
  {
    sub_1D60B2AC8(&v188, &v181);
    v97 = v67;
    v83 = v67;
    v81 = v219;
    sub_1D5E1DA6C(v219, v97, v178, v68, v69, *(&v69 + 1), v72);
  }

  v99 = swift_allocObject();
  v100 = v174;
  v219 = v99;
  if (!(v70 >> 14))
  {

    v84 = v179;
    v111 = v176;
    goto LABEL_37;
  }

  if (v70 >> 14 != 1)
  {
    v199 = v176;
    v200 = v174;
    v201 = v171;
    v202 = v168;
    v203 = v169;
    v204 = v70 & 0xFFF;
    v111 = sub_1D68A8D54(v173);
    v100 = v126;
    v84 = v179;
    goto LABEL_37;
  }

  v178 = v83;
  v101 = v173[5];
  v185 = v173[4];
  v186 = v101;
  v187 = v173[6];
  v102 = v173[1];
  v181 = *v173;
  v182 = v102;
  v103 = v173[3];
  v183 = v173[2];
  v184 = v103;
  v104 = off_1F51B1B98[0];

  v105 = v161;
  v104(v176, v100, v161);
  if ((*v167)(v105, 1, v170) != 1)
  {

    v106 = v150;
    sub_1D5D247E0(v105, v150);
    v198[4] = v185;
    v198[5] = v186;
    v198[6] = v187;
    v198[0] = v181;
    v198[1] = v182;
    v198[3] = v184;
    v198[2] = v183;

    sub_1D6B74D28(v198, v180);
    v83 = v178;
    v84 = v179;

    v197[4] = v185;
    v197[5] = v186;
    v197[6] = v187;
    v197[0] = v181;
    v197[1] = v182;
    v197[2] = v183;
    v197[3] = v184;
    v107 = sub_1D6B7DC5C(v180[0], v176, v100, v171, v197);
    v100 = v108;
    v109 = v106;
    v110 = v107;
    sub_1D5D28B04(v109, type metadata accessor for FormatOption);

    v111 = v110;
    v99 = v219;
LABEL_37:
    *(v99 + 16) = v111;
    *(v99 + 24) = v100;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v84 = sub_1D698CA54(0, *(v84 + 2) + 1, 1, v84);
    }

    v128 = *(v84 + 2);
    v127 = *(v84 + 3);
    if (v128 >= v127 >> 1)
    {
      v84 = sub_1D698CA54((v127 > 1), v128 + 1, 1, v84);
    }

    sub_1D60B2A74(&v188);
    *(v84 + 2) = v128 + 1;
    v129 = &v84[24 * v128];
LABEL_49:
    *(v129 + 4) = v81;
    *(v129 + 5) = v83;
    *(v129 + 6) = v219;
    goto LABEL_50;
  }

  sub_1D5D28540(v105, &qword_1EDF337F0, type metadata accessor for FormatOption);
  v144 = v154;
LABEL_61:
  *v144 = v176;
  v144[1] = v100;
  swift_storeEnumTagMultiPayload();
  sub_1D5D285FC();
  v145 = swift_allocError();
  sub_1D5D287F4(v144, v146, type metadata accessor for FormatLayoutError);
  swift_willThrow();
  sub_1D5D28B04(v144, type metadata accessor for FormatLayoutError);
  v219 = v145;
  (*(v149 + 8))(v166, v148);

  swift_deallocUninitializedObject();
LABEL_62:
  sub_1D60B2A74(&v188);
}

uint64_t sub_1D6D52088@<X0>(uint64_t a1@<X0>, char *a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v252 = a3;
  v253 = a2;
  v247 = a4;
  v240 = type metadata accessor for FormatLayoutError();
  MEMORY[0x1EEE9AC00](v240, v5);
  v217 = (&v209 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v7, v8);
  v236 = (&v209 - v9);
  MEMORY[0x1EEE9AC00](v10, v11);
  v216 = (&v209 - v12);
  MEMORY[0x1EEE9AC00](v13, v14);
  v235 = (&v209 - v15);
  MEMORY[0x1EEE9AC00](v16, v17);
  v234 = (&v209 - v18);
  sub_1D5B54CB8(0, &qword_1EDF337F0, type metadata accessor for FormatOption);
  MEMORY[0x1EEE9AC00](v19 - 8, v20);
  v229 = &v209 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22, v23);
  v233 = &v209 - v24;
  MEMORY[0x1EEE9AC00](v25, v26);
  v228 = &v209 - v27;
  MEMORY[0x1EEE9AC00](v28, v29);
  v232 = &v209 - v30;
  MEMORY[0x1EEE9AC00](v31, v32);
  v231 = &v209 - v33;
  v241 = type metadata accessor for FormatOption();
  v251 = *(v241 - 8);
  MEMORY[0x1EEE9AC00](v241, v34);
  v221 = &v209 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36, v37);
  v220 = &v209 - v38;
  MEMORY[0x1EEE9AC00](v39, v40);
  v227 = &v209 - v41;
  MEMORY[0x1EEE9AC00](v42, v43);
  v225 = &v209 - v44;
  MEMORY[0x1EEE9AC00](v45, v46);
  v224 = &v209 - v47;
  MEMORY[0x1EEE9AC00](v48, v49);
  v230 = &v209 - v50;
  MEMORY[0x1EEE9AC00](v51, v52);
  v219 = &v209 - v53;
  MEMORY[0x1EEE9AC00](v54, v55);
  v218 = &v209 - v56;
  MEMORY[0x1EEE9AC00](v57, v58);
  v226 = &v209 - v59;
  MEMORY[0x1EEE9AC00](v60, v61);
  v223 = &v209 - v62;
  MEMORY[0x1EEE9AC00](v63, v64);
  v222 = &v209 - v65;
  MEMORY[0x1EEE9AC00](v66, v67);
  v69 = &v209 - v68;
  MEMORY[0x1EEE9AC00](v70, v71);
  v73 = &v209 - v72;
  MEMORY[0x1EEE9AC00](v74, v75);
  v77 = &v209 - v76;
  MEMORY[0x1EEE9AC00](v78, v79);
  v81 = &v209 - v80;
  v82 = sub_1D72585BC();
  v83 = *(v82 - 8);
  v85 = MEMORY[0x1EEE9AC00](v82, v84);
  v87 = &v209 - ((v86 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = v284;
  result = sub_1D6D4FCF8(a1, v253, v85);
  if (v88)
  {
    return result;
  }

  v210 = v77;
  v211 = v73;
  v214 = v82;
  v215 = v81;
  v213 = v69;
  v250 = a1;
  v237 = v87;
  v90 = *(v252 + 16);
  if (!v90)
  {
    v116 = MEMORY[0x1E69E7CC0];
    v199 = MEMORY[0x1E69E7CC0];
    v96 = v247;
LABEL_85:
    v200 = v237;
    sub_1D6B79708(v199, v116, v96);

    return (*(v83 + 8))(v200, v214);
  }

  v212 = v83;
  v238 = OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_options;
  v91 = (v252 + 32);
  v239 = (v251 + 56);
  v92 = v90 - 1;
  v245 = MEMORY[0x1E69E7CC0];
  v253 = MEMORY[0x1E69E7CC0];
  v93 = 0;
  while (1)
  {
    v98 = v91[1];
    v255 = *v91;
    v256 = v98;
    v99 = v91[3];
    v257 = v91[2];
    v258 = v99;
    v100 = v91[5];
    v259 = v91[4];
    *v260 = v100;
    *(&v260[1] + 2) = *(v91 + 90);
    v101 = *(&v255 + 1);
    v284 = v255;
    v251 = v92;
    v102 = *(&v256 + 1);
    v252 = v256;
    v103 = v257;
    v104 = LOWORD(v260[3]);
    v105 = (LOWORD(v260[3]) >> 12) & 3;
    v106 = v258;
    if (v105)
    {
      v248 = *(&v258 + 1);
      v246 = *(&v259 + 1);
      v249 = v259;
      v242 = v260[0];
      v243 = v260[1];
      v244 = v260[2];
      if (v105 == 1)
      {
        if (!(v258 >> 14))
        {
          sub_1D60B2AC8(&v255, v254);
          sub_1D5E1DA6C(v284, v101, v252, v102, v103, *(&v103 + 1), v106);
          v134 = v250;
LABEL_36:
          v135 = v248;
LABEL_37:
          v147 = swift_allocObject();
          v148 = v147;
          if (v104 >> 14)
          {
            if (v104 >> 14 == 1)
            {
              v252 = v147;
              v149 = *(v134 + v238);
              v150 = *(v149 + 16);
              swift_beginAccess();
              v151 = *(*(v150 + 16) + 16);
              v152 = v249;

              if (v151 && (sub_1D5B69D90(v135, v152), (v153 & 1) != 0))
              {
                swift_endAccess();
                v154 = v219;
                sub_1D5D25108(v219);
                v155 = v154;
                v156 = v218;
                sub_1D5D247E0(v155, v218);
                v157 = v156;
                v158 = v228;
                sub_1D5D247E0(v157, v228);
                v116 = v253;
                v159 = v152;
              }

              else
              {
                swift_endAccess();
                swift_beginAccess();
                v162 = *(v149 + 24);
                v116 = v253;
                v159 = v152;
                if (!*(v162 + 16) || (sub_1D5B69D90(v135, v152), (v163 & 1) == 0))
                {
                  swift_endAccess();
                  v207 = v228;
                  (*v239)(v228, 1, 1, v241);
                  sub_1D5D28540(v207, &qword_1EDF337F0, type metadata accessor for FormatOption);
                  v206 = v216;
LABEL_92:
                  *v206 = v135;
                  v206[1] = v159;
                  swift_storeEnumTagMultiPayload();
                  sub_1D5D285FC();
                  swift_allocError();
                  sub_1D5D287F4(v206, v208, type metadata accessor for FormatLayoutError);
                  swift_willThrow();
                  sub_1D5D28B04(v206, type metadata accessor for FormatLayoutError);
                  (*(v212 + 8))(v237, v214);

                  swift_deallocUninitializedObject();
LABEL_93:
                  sub_1D60B2A74(&v255);
                  goto LABEL_94;
                }

                swift_endAccess();
                v158 = v228;
                sub_1D5D25108(v228);
              }

              (*v239)(v158, 0, 1, v241);

              v164 = v226;
              sub_1D5D247E0(v158, v226);

              v165 = v159;
              v166 = v250;
              sub_1D6B744A8(v250, v254);

              v135 = sub_1D6B7DB60(v254[0], v248, v165, v246, v166);
              v160 = v167;
              sub_1D5D28B04(v164, type metadata accessor for FormatOption);

              v148 = v252;
              goto LABEL_49;
            }

            v262 = v135;
            v263 = v249;
            v264 = v246;
            v265 = v242;
            v266 = v243;
            v267 = v244;
            v268 = v104 & 0xFFF;
            v135 = sub_1D688E6FC(v134, 0);
            v160 = v161;
          }

          else
          {
            v160 = v249;
          }

          v116 = v253;
LABEL_49:
          *(v148 + 16) = v135;
          *(v148 + 24) = v160;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v245 = sub_1D698CA54(0, *(v245 + 2) + 1, 1, v245);
          }

          v169 = *(v245 + 2);
          v168 = *(v245 + 3);
          if (v169 >= v168 >> 1)
          {
            v245 = sub_1D698CA54((v168 > 1), v169 + 1, 1, v245);
          }

          sub_1D60B2A74(&v255);
          v94 = v245;
          *(v245 + 2) = v169 + 1;
          v95 = &v94[24 * v169];
          goto LABEL_5;
        }

        if (v258 >> 14 != 1)
        {
          v269 = __PAIR128__(*(&v255 + 1), v284);
          v270 = __PAIR128__(*(&v256 + 1), v252);
          v271 = v257;
          v272 = v258 & 0x3FFF;
          sub_1D5E1DA6C(v284, *(&v255 + 1), v252, *(&v256 + 1), v257, *(&v257 + 1), v258);
          v135 = v248;
          sub_1D5E1DA6C(v248, v249, v246, v242, v243, v244, v104 & 0xCFFF);
          v134 = v250;
          v284 = sub_1D688E6FC(v250, 0);
          v101 = v136;
          goto LABEL_37;
        }

        v107 = *(v250 + v238);
        v108 = *(v107 + 16);
        swift_beginAccess();
        if (*(*(v108 + 16) + 16))
        {
          sub_1D60B2AC8(&v255, v254);

          sub_1D5B69D90(v284, v101);
          v109 = v235;
          if (v110)
          {
            swift_endAccess();
            v111 = v223;
            sub_1D5D25108(v223);
            v112 = v111;
            v113 = v222;
            sub_1D5D247E0(v112, v222);
            v114 = v113;
            v115 = v232;
            sub_1D5D247E0(v114, v232);
LABEL_35:
            (*v239)(v115, 0, 1, v241);

            v145 = v213;
            sub_1D5D247E0(v115, v213);

            v134 = v250;
            sub_1D6B744A8(v250, v254);

            v284 = sub_1D6B7DB60(v254[0], v284, v101, v252, v134);
            v101 = v146;
            sub_1D5D28B04(v145, type metadata accessor for FormatOption);

            goto LABEL_36;
          }
        }

        else
        {
          sub_1D60B2AC8(&v255, v254);

          v109 = v235;
        }

        swift_endAccess();
        swift_beginAccess();
        v142 = *(v107 + 24);
        v143 = v284;
        if (!*(v142 + 16) || (sub_1D5B69D90(v284, v101), (v144 & 1) == 0))
        {
          swift_endAccess();
          v201 = v232;
          (*v239)(v232, 1, 1, v241);
LABEL_88:
          sub_1D5D28540(v201, &qword_1EDF337F0, type metadata accessor for FormatOption);
          *v109 = v143;
          v109[1] = v101;
          swift_storeEnumTagMultiPayload();
          sub_1D5D285FC();
          swift_allocError();
          sub_1D5D287F4(v109, v202, type metadata accessor for FormatLayoutError);
          swift_willThrow();
          sub_1D5D28B04(v109, type metadata accessor for FormatLayoutError);
          (*(v212 + 8))(v237, v214);
          goto LABEL_93;
        }

        swift_endAccess();
        v115 = v232;
        sub_1D5D25108(v232);
        goto LABEL_35;
      }

      if (!(v258 >> 14))
      {
        sub_1D60B2AC8(&v255, v254);
        sub_1D5E1DA6C(v284, v101, v252, v102, v103, *(&v103 + 1), v106);
        v140 = v250;
LABEL_65:
        v135 = v248;
LABEL_66:
        v178 = swift_allocObject();
        v148 = v178;
        if (v104 >> 14)
        {
          if (v104 >> 14 == 1)
          {
            v252 = v178;
            v179 = *(v140 + v238);
            v180 = *(v179 + 16);
            swift_beginAccess();
            v181 = *(*(v180 + 16) + 16);
            v182 = v249;

            if (v181 && (sub_1D5B69D90(v135, v182), (v183 & 1) != 0))
            {
              swift_endAccess();
              v184 = v221;
              sub_1D5D25108(v221);
              v185 = v184;
              v186 = v220;
              sub_1D5D247E0(v185, v220);
              v187 = v186;
              v188 = v229;
              sub_1D5D247E0(v187, v229);
              v116 = v253;
              v159 = v182;
            }

            else
            {
              swift_endAccess();
              swift_beginAccess();
              v191 = *(v179 + 24);
              v116 = v253;
              v159 = v182;
              if (!*(v191 + 16) || (sub_1D5B69D90(v135, v182), (v192 & 1) == 0))
              {
                swift_endAccess();
                v205 = v229;
                (*v239)(v229, 1, 1, v241);
                sub_1D5D28540(v205, &qword_1EDF337F0, type metadata accessor for FormatOption);
                v206 = v217;
                goto LABEL_92;
              }

              swift_endAccess();
              v188 = v229;
              sub_1D5D25108(v229);
            }

            (*v239)(v188, 0, 1, v241);

            v193 = v227;
            sub_1D5D247E0(v188, v227);

            v194 = v159;
            v195 = v250;
            sub_1D6B744A8(v250, v254);

            v135 = sub_1D6B7DB60(v254[0], v248, v194, v246, v195);
            v189 = v196;
            sub_1D5D28B04(v193, type metadata accessor for FormatOption);

            v148 = v252;
            goto LABEL_78;
          }

          v273 = v135;
          v274 = v249;
          v275 = v246;
          v276 = v242;
          v277 = v243;
          v278 = v244;
          v279 = v104 & 0xFFF;
          v135 = sub_1D688E6FC(v140, 0);
          v189 = v190;
        }

        else
        {
          v189 = v249;
        }

        v116 = v253;
LABEL_78:
        *(v148 + 16) = v135;
        *(v148 + 24) = v189;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v116 = sub_1D698CA54(0, *(v116 + 2) + 1, 1, v116);
        }

        v198 = *(v116 + 2);
        v197 = *(v116 + 3);
        if (v198 >= v197 >> 1)
        {
          v116 = sub_1D698CA54((v197 > 1), v198 + 1, 1, v116);
        }

        sub_1D60B2A74(&v255);
        *(v116 + 2) = v198 + 1;
        v95 = &v116[24 * v198];
LABEL_5:
        *(v95 + 4) = v284;
        *(v95 + 5) = v101;
        *(v95 + 6) = v148;
        v96 = v247;
        v97 = v251;
        if (!v251)
        {
          goto LABEL_84;
        }

        goto LABEL_6;
      }

      if (v258 >> 14 != 1)
      {
        v280 = __PAIR128__(*(&v255 + 1), v284);
        v281 = __PAIR128__(*(&v256 + 1), v252);
        v282 = v257;
        v283 = v258 & 0x3FFF;
        sub_1D5E1DA6C(v284, *(&v255 + 1), v252, *(&v256 + 1), v257, *(&v257 + 1), v258);
        v135 = v248;
        sub_1D5E1DA6C(v248, v249, v246, v242, v243, v244, v104 & 0xCFFF);
        v140 = v250;
        v284 = sub_1D688E6FC(v250, 0);
        v101 = v141;
        goto LABEL_66;
      }

      v126 = *(v250 + v238);
      v127 = *(v126 + 16);
      swift_beginAccess();
      if (*(*(v127 + 16) + 16))
      {
        sub_1D60B2AC8(&v255, v254);

        sub_1D5B69D90(v284, v101);
        v109 = v236;
        if (v128)
        {
          swift_endAccess();
          v129 = v225;
          sub_1D5D25108(v225);
          v130 = v129;
          v131 = v224;
          sub_1D5D247E0(v130, v224);
          v132 = v131;
          v133 = v233;
          sub_1D5D247E0(v132, v233);
LABEL_64:
          (*v239)(v133, 0, 1, v241);

          v176 = v230;
          sub_1D5D247E0(v133, v230);

          v140 = v250;
          sub_1D6B744A8(v250, v254);

          v284 = sub_1D6B7DB60(v254[0], v284, v101, v252, v140);
          v101 = v177;
          sub_1D5D28B04(v176, type metadata accessor for FormatOption);

          goto LABEL_65;
        }
      }

      else
      {
        sub_1D60B2AC8(&v255, v254);

        v109 = v236;
      }

      swift_endAccess();
      swift_beginAccess();
      v174 = *(v126 + 24);
      v143 = v284;
      if (!*(v174 + 16) || (sub_1D5B69D90(v284, v101), (v175 & 1) == 0))
      {
        swift_endAccess();
        v201 = v233;
        (*v239)(v233, 1, 1, v241);
        goto LABEL_88;
      }

      swift_endAccess();
      v133 = v233;
      sub_1D5D25108(v233);
      goto LABEL_64;
    }

    if (!(v258 >> 14))
    {
      sub_1D60B2AC8(&v255, v254);
      sub_1D5E1DA6C(v284, v101, v252, v102, v103, *(&v103 + 1), v106);
      v116 = v253;
      v96 = v247;
      goto LABEL_58;
    }

    v116 = v253;
    if (v258 >> 14 != 1)
    {
      break;
    }

    v117 = *(v250 + v238);
    v118 = *(v117 + 16);
    swift_beginAccess();
    if (!*(*(v118 + 16) + 16))
    {
      sub_1D60B2AC8(&v255, v254);
      sub_1D60B2AC8(&v255, v254);

      v119 = v234;
LABEL_54:
      swift_endAccess();
      swift_beginAccess();
      v170 = *(v117 + 24);
      v171 = v284;
      if (!*(v170 + 16) || (sub_1D5B69D90(v284, v101), (v172 & 1) == 0))
      {
        swift_endAccess();
        v203 = v231;
        (*v239)(v231, 1, 1, v241);
        sub_1D5D28540(v203, &qword_1EDF337F0, type metadata accessor for FormatOption);
        *v119 = v171;
        v119[1] = v101;
        swift_storeEnumTagMultiPayload();
        sub_1D5D285FC();
        swift_allocError();
        sub_1D5D287F4(v119, v204, type metadata accessor for FormatLayoutError);
        swift_willThrow();
        sub_1D60B2A74(&v255);
        sub_1D5D28B04(v119, type metadata accessor for FormatLayoutError);
        (*(v212 + 8))(v237, v214);
        sub_1D60B2A74(&v255);
LABEL_94:
      }

      swift_endAccess();
      v125 = v231;
      sub_1D5D25108(v231);
      goto LABEL_57;
    }

    sub_1D60B2AC8(&v255, v254);
    sub_1D60B2AC8(&v255, v254);

    sub_1D5B69D90(v284, v101);
    v119 = v234;
    if ((v120 & 1) == 0)
    {
      goto LABEL_54;
    }

    swift_endAccess();
    v121 = v211;
    sub_1D5D25108(v211);
    v122 = v121;
    v123 = v210;
    sub_1D5D247E0(v122, v210);
    v124 = v123;
    v125 = v231;
    sub_1D5D247E0(v124, v231);
LABEL_57:
    (*v239)(v125, 0, 1, v241);

    sub_1D5D247E0(v125, v215);
    v173 = v250;
    sub_1D6B744A8(v250, v254);
    v96 = v247;
    sub_1D6B7DB60(v254[0], v284, v101, v252, v173);
    v93 = 0;
    sub_1D5D28B04(v215, type metadata accessor for FormatOption);

    sub_1D60B2A74(&v255);
LABEL_58:
    sub_1D725845C();
    sub_1D60B2A74(&v255);

    v97 = v251;
    if (!v251)
    {
LABEL_84:
      v83 = v212;
      v199 = v245;
      goto LABEL_85;
    }

LABEL_6:
    v253 = v116;
    v92 = v97 - 1;
    v91 += 7;
  }

  v249 = v93;
  v137 = v284;
  *&v260[5] = __PAIR128__(*(&v255 + 1), v284);
  v138 = v252;
  *&v260[7] = __PAIR128__(*(&v256 + 1), v252);
  *&v260[9] = v257;
  v261 = v258 & 0x3FFF;
  sub_1D60B2AC8(&v255, v254);
  sub_1D5E1DA6C(v137, v101, v138, v102, v103, *(&v103 + 1), v106);
  v139 = v249;
  sub_1D688E6FC(v250, 0);
  v93 = v139;
  if (!v139)
  {
    sub_1D60B2A74(&v255);
    v96 = v247;
    v116 = v253;
    goto LABEL_58;
  }

  sub_1D60B2A74(&v255);
  (*(v212 + 8))(v237, v214);
  sub_1D60B2A74(&v255);
}

uint64_t sub_1D6D53964@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v68 = a4;
  v8 = sub_1D72585BC();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v62 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_1D6D5003C(a1, a2, v12);
  if (v4)
  {
    return result;
  }

  v67 = a1;
  v14 = *(a3 + 16);
  if (!v14)
  {
    v61 = MEMORY[0x1E69E7CC0];
    v18 = MEMORY[0x1E69E7CC0];
    v19 = v68;
LABEL_58:
    sub_1D6B7A1C0(v67, v18, v61, v19);

    return (*(v9 + 8))(v12, v8);
  }

  v64 = v8;
  v65 = v12;
  v63 = v9;
  v76 = 0;
  v15 = (a3 + 32);
  v16 = v14 - 1;
  v77 = MEMORY[0x1E69E7CC0];
  v66 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v21 = v15[1];
    v79 = *v15;
    v80 = v21;
    v22 = v15[3];
    v81 = v15[2];
    v82 = v22;
    v23 = v15[5];
    v83 = v15[4];
    v84[0] = v23;
    *(v84 + 10) = *(v15 + 90);
    v24 = *(&v79 + 1);
    v108 = v79;
    v25 = v80;
    v26 = v81;
    v27 = WORD4(v84[1]);
    v28 = (WORD4(v84[1]) >> 12) & 3;
    v29 = v82;
    v74 = v16;
    if (v28)
    {
      break;
    }

    if (v82 >> 14)
    {
      if (v82 >> 14 == 1)
      {
        sub_1D60B2AC8(&v79, v78);
        v34 = v108;
        sub_1D5E1DA6C(v108, v24, v25, *(&v25 + 1), v26, *(&v26 + 1), v29);
        v35 = v76;
        sub_1D6F71E48(v67, v34, v24, v25);
      }

      else
      {
        v47 = v108;
        v84[2] = __PAIR128__(*(&v79 + 1), v108);
        v84[3] = v80;
        v84[4] = v81;
        v85 = v82 & 0x3FFF;
        sub_1D60B2AC8(&v79, v78);
        sub_1D5E1DA6C(v47, v24, v25, *(&v25 + 1), v26, *(&v26 + 1), v29);
        v35 = v76;
        sub_1D68901F8(v67, 0);
      }

      v17 = v35;
      v19 = v68;
      if (v35)
      {
        sub_1D60B2A74(&v79);
        (*(v63 + 8))(v65, v64);
        sub_1D60B2A74(&v79);
      }

      sub_1D60B2A74(&v79);
      v18 = v77;
    }

    else
    {
      sub_1D60B2AC8(&v79, v78);
      sub_1D5E1DA6C(v108, v24, v25, *(&v25 + 1), v26, *(&v26 + 1), v29);
      v17 = v76;
      v18 = v77;
      v19 = v68;
    }

    sub_1D725845C();
    sub_1D60B2A74(&v79);

    v20 = v74;
    if (!v74)
    {
      goto LABEL_57;
    }

LABEL_6:
    v76 = v17;
    v77 = v18;
    v16 = v20 - 1;
    v15 += 7;
  }

  v75 = *(&v82 + 1);
  v72 = *(&v83 + 1);
  v73 = v83;
  v71 = *&v84[0];
  v30 = v82 >> 14;
  v69 = *(&v84[0] + 1);
  v70 = *&v84[1];
  if (v28 != 1)
  {
    if (v82 >> 14)
    {
      if (v30 == 1)
      {
        sub_1D5E1DA6C(v108, *(&v79 + 1), v80, *(&v80 + 1), v81, *(&v81 + 1), v82);
        v36 = v75;
        sub_1D5E1DA6C(v75, v73, v72, v71, v69, v70, v27 & 0xCFFF);
        v37 = v76;
        v38 = sub_1D6F71E48(v67, v108, v24, v25);
      }

      else
      {
        v104 = __PAIR128__(*(&v79 + 1), v108);
        v105 = v80;
        v106 = v81;
        v107 = v82 & 0x3FFF;
        sub_1D5E1DA6C(v108, *(&v79 + 1), v80, *(&v80 + 1), v81, *(&v81 + 1), v82);
        v36 = v75;
        sub_1D5E1DA6C(v75, v73, v72, v71, v69, v70, v27 & 0xCFFF);
        v37 = v76;
        v38 = sub_1D68901F8(v67, 0);
      }

      v17 = v37;
      if (v37)
      {
LABEL_60:
        (*(v63 + 8))(v65, v64);
        goto LABEL_63;
      }

      v24 = v39;
      v108 = v38;
    }

    else
    {
      sub_1D60B2AC8(&v79, v78);
      sub_1D5E1DA6C(v108, v24, v25, *(&v25 + 1), v26, *(&v26 + 1), v29);
      v36 = v75;
      v17 = v76;
    }

    v48 = swift_allocObject();
    v49 = v73;
    if (v27 >> 14)
    {
      v18 = v77;
      if (v27 >> 14 == 1)
      {
        v50 = sub_1D6F71E48(v67, v36, v73, v72);
        v19 = v68;
        if (v17)
        {
          goto LABEL_62;
        }

        v36 = v50;
        v49 = v51;
LABEL_50:
        *(v48 + 16) = v36;
        *(v48 + 24) = v49;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v66 = sub_1D698CA54(0, *(v66 + 2) + 1, 1, v66);
        }

        v58 = *(v66 + 2);
        v57 = *(v66 + 3);
        if (v58 >= v57 >> 1)
        {
          v66 = sub_1D698CA54((v57 > 1), v58 + 1, 1, v66);
        }

        sub_1D60B2A74(&v79);
        v59 = v66;
        *(v66 + 2) = v58 + 1;
        v60 = &v59[24 * v58];
        *(v60 + 4) = v108;
        *(v60 + 5) = v24;
        *(v60 + 6) = v48;
        v20 = v74;
        if (!v74)
        {
LABEL_57:
          v9 = v63;
          v8 = v64;
          v12 = v65;
          v61 = v66;
          goto LABEL_58;
        }

        goto LABEL_6;
      }

      v97 = v36;
      v98 = v73;
      v99 = v72;
      v100 = v71;
      v101 = v69;
      v102 = v70;
      v103 = v27 & 0xFFF;
      v55 = sub_1D68901F8(v67, 0);
      if (v17)
      {
        goto LABEL_62;
      }

      v36 = v55;
      v49 = v56;
    }

    else
    {

      v18 = v77;
    }

    v19 = v68;
    goto LABEL_50;
  }

  if (v82 >> 14)
  {
    if (v30 == 1)
    {
      sub_1D5E1DA6C(v108, *(&v79 + 1), v80, *(&v80 + 1), v81, *(&v81 + 1), v82);
      sub_1D5E1DA6C(v75, v73, v72, v71, v69, v70, v27 & 0xCFFF);
      v31 = v76;
      v32 = sub_1D6F71E48(v67, v108, v24, v25);
    }

    else
    {
      v93 = __PAIR128__(*(&v79 + 1), v108);
      v94 = v80;
      v95 = v81;
      v96 = v82 & 0x3FFF;
      sub_1D5E1DA6C(v108, *(&v79 + 1), v80, *(&v80 + 1), v81, *(&v81 + 1), v82);
      sub_1D5E1DA6C(v75, v73, v72, v71, v69, v70, v27 & 0xCFFF);
      v31 = v76;
      v32 = sub_1D68901F8(v67, 0);
    }

    v17 = v31;
    if (v31)
    {
      goto LABEL_60;
    }

    v41 = v32;
    v24 = v33;
  }

  else
  {
    sub_1D60B2AC8(&v79, v78);
    v40 = v29;
    v41 = v108;
    sub_1D5E1DA6C(v108, v24, v25, *(&v25 + 1), v26, *(&v26 + 1), v40);
    v17 = v76;
  }

  v18 = v77;
  v42 = swift_allocObject();
  v43 = v73;
  if (!(v27 >> 14))
  {

    goto LABEL_41;
  }

  if (v27 >> 14 == 1)
  {
    v44 = v17;
    v45 = sub_1D6F71E48(v67, v75, v73, v72);
  }

  else
  {
    v86 = v75;
    v87 = v73;
    v88 = v72;
    v89 = v71;
    v90 = v69;
    v91 = v70;
    v92 = v27 & 0xFFF;
    v44 = v17;
    v45 = sub_1D68901F8(v67, 0);
  }

  v75 = v45;
  v17 = v44;
  if (!v44)
  {
    v43 = v46;
LABEL_41:
    *(v42 + 16) = v75;
    *(v42 + 24) = v43;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v18 = sub_1D698CA54(0, *(v18 + 2) + 1, 1, v18);
    }

    v53 = *(v18 + 2);
    v52 = *(v18 + 3);
    if (v53 >= v52 >> 1)
    {
      v18 = sub_1D698CA54((v52 > 1), v53 + 1, 1, v18);
    }

    sub_1D60B2A74(&v79);
    *(v18 + 2) = v53 + 1;
    v54 = &v18[24 * v53];
    *(v54 + 4) = v41;
    *(v54 + 5) = v24;
    *(v54 + 6) = v42;
    v19 = v68;
    v20 = v74;
    if (!v74)
    {
      goto LABEL_57;
    }

    goto LABEL_6;
  }

LABEL_62:

  (*(v63 + 8))(v65, v64);
  swift_deallocUninitializedObject();
LABEL_63:
  sub_1D60B2A74(&v79);
}

uint64_t sub_1D6D5422C@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v181 = a3;
  v182 = a2;
  v178 = a4;
  v161 = type metadata accessor for FormatLayoutError();
  MEMORY[0x1EEE9AC00](v161, v5);
  v157 = (&v150 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v7, v8);
  v160 = (&v150 - v9);
  MEMORY[0x1EEE9AC00](v10, v11);
  v156 = (&v150 - v12);
  MEMORY[0x1EEE9AC00](v13, v14);
  v159 = (&v150 - v15);
  MEMORY[0x1EEE9AC00](v16, v17);
  v158 = (&v150 - v18);
  sub_1D5B54CB8(0, &qword_1EDF337F0, type metadata accessor for FormatOption);
  MEMORY[0x1EEE9AC00](v19 - 8, v20);
  v164 = &v150 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22, v23);
  v167 = &v150 - v24;
  MEMORY[0x1EEE9AC00](v25, v26);
  v163 = &v150 - v27;
  MEMORY[0x1EEE9AC00](v28, v29);
  v166 = &v150 - v30;
  MEMORY[0x1EEE9AC00](v31, v32);
  v165 = &v150 - v33;
  v170 = type metadata accessor for FormatOption();
  v180 = *(v170 - 8);
  MEMORY[0x1EEE9AC00](v170, v34);
  v162 = &v150 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36, v37);
  v39 = &v150 - v38;
  MEMORY[0x1EEE9AC00](v40, v41);
  v43 = &v150 - v42;
  MEMORY[0x1EEE9AC00](v44, v45);
  v47 = &v150 - v46;
  MEMORY[0x1EEE9AC00](v48, v49);
  v51 = &v150 - v50;
  v52 = sub_1D72585BC();
  v53 = *(v52 - 8);
  v55 = MEMORY[0x1EEE9AC00](v52, v54);
  v57 = &v150 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = v211;
  result = sub_1D6D505B4(a1, v182, v55);
  if (v58)
  {
    return result;
  }

  v153 = v43;
  v154 = v47;
  v151 = v51;
  v152 = v52;
  v155 = v39;
  v177 = a1;
  v168 = v57;
  v60 = *(v181 + 16);
  if (!v60)
  {
    v104 = MEMORY[0x1E69E7CC0];
    v174 = MEMORY[0x1E69E7CC0];
    v65 = v178;
LABEL_66:
    v140 = v168;
    sub_1D6B7A750(v177, v174, v104, v65);

    return (*(v53 + 8))(v140, v152);
  }

  v211 = 0;
  v150 = v53;
  v61 = (v181 + 32);
  v169 = (v180 + 48);
  v62 = v60 - 1;
  v174 = MEMORY[0x1E69E7CC0];
  v182 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v67 = v61[1];
    v184 = *v61;
    v185 = v67;
    v68 = v61[3];
    v186 = v61[2];
    v187 = v68;
    v69 = v61[5];
    v188 = v61[4];
    v189[0] = v69;
    *(v189 + 10) = *(v61 + 90);
    v70 = *(&v184 + 1);
    v71 = v184;
    v72 = *(&v185 + 1);
    v180 = v62;
    v181 = v185;
    v73 = v186;
    v74 = WORD4(v189[1]);
    v75 = (WORD4(v189[1]) >> 12) & 3;
    v76 = v187;
    if (v75)
    {
      break;
    }

    if (v187 >> 14)
    {
      if (v187 >> 14 == 1)
      {
        v83 = off_1F513B088[0];
        sub_1D60B2AC8(&v184, v183);
        sub_1D60B2AC8(&v184, v183);
        type metadata accessor for FormatDecorationContext();

        v84 = v165;
        v85 = v177;
        v83(v71, v70, v165);
        if ((*v169)(v84, 1, v170) == 1)
        {
          sub_1D5D28540(v84, &qword_1EDF337F0, type metadata accessor for FormatOption);
          v86 = v158;
          *v158 = v71;
          *(v86 + 8) = v70;
          swift_storeEnumTagMultiPayload();
          sub_1D5D285FC();
          swift_allocError();
          sub_1D5D287F4(v86, v142, type metadata accessor for FormatLayoutError);
          swift_willThrow();
          sub_1D60B2A74(&v184);
          v143 = type metadata accessor for FormatLayoutError;
LABEL_81:
          sub_1D5D28B04(v86, v143);
          goto LABEL_82;
        }

        v86 = v151;
        sub_1D5D247E0(v84, v151);
        v87 = v211;
        sub_1D6B766A8(v85, v183);
        if (v87)
        {
          sub_1D60B2A74(&v184);
          v143 = type metadata accessor for FormatOption;
          goto LABEL_81;
        }

        sub_1D6B8273C(v183[0], v71, v70, v181, v85);
        v81 = 0;
        sub_1D5D28B04(v86, type metadata accessor for FormatOption);
      }

      else
      {
        v189[2] = v184;
        v109 = *(&v184 + 1);
        v110 = v181;
        v189[3] = __PAIR128__(*(&v185 + 1), v181);
        v189[4] = v186;
        v190 = v187 & 0x3FFF;
        sub_1D60B2AC8(&v184, v183);
        sub_1D5E1DA6C(v71, v109, v110, v72, v73, *(&v73 + 1), v76);
        v111 = v211;
        sub_1D6891050(v177, 0);
        v81 = v111;
        if (v111)
        {
          sub_1D60B2A74(&v184);
LABEL_82:
          (*(v150 + 8))(v168, v152);
          sub_1D60B2A74(&v184);
        }
      }

      sub_1D60B2A74(&v184);
    }

    else
    {
      sub_1D60B2AC8(&v184, v183);
      sub_1D5E1DA6C(v71, v70, v181, v72, v73, *(&v73 + 1), v76);
      v81 = v211;
    }

    sub_1D725845C();
    sub_1D60B2A74(&v184);

    v65 = v178;
    v104 = v182;
    v66 = v180;
    if (!v180)
    {
LABEL_65:
      v53 = v150;
      goto LABEL_66;
    }

LABEL_6:
    v211 = v81;
    v182 = v104;
    v62 = v66 - 1;
    v61 += 7;
  }

  v179 = *(&v187 + 1);
  v175 = *(&v188 + 1);
  v176 = v188;
  v172 = v189[0];
  v173 = *&v189[1];
  if (v75 == 1)
  {
    if (!(v187 >> 14))
    {
      sub_1D60B2AC8(&v184, v183);
      sub_1D5E1DA6C(v71, v70, v181, v72, v73, *(&v73 + 1), v76);
      v81 = v211;
      goto LABEL_25;
    }

    if (v187 >> 14 != 1)
    {
      v197 = v184;
      v198 = __PAIR128__(*(&v185 + 1), v181);
      v199 = v186;
      v200 = v187 & 0x3FFF;
      sub_1D5E1DA6C(v184, *(&v184 + 1), v181, *(&v185 + 1), v186, *(&v186 + 1), v187);
      v94 = v179;
      v93 = v176;
      sub_1D5E1DA6C(v179, v176, v175, v172, *(&v172 + 1), v173, v74 & 0xCFFF);
      v95 = v211;
      v96 = sub_1D6891050(v177, 0);
      v81 = v95;
      if (v95)
      {
        goto LABEL_75;
      }

      v71 = v96;
      v70 = v97;
LABEL_29:
      v181 = swift_allocObject();
      if (v74 >> 14)
      {
        if (v74 >> 14 == 1)
        {
          v176 = v71;
          v171 = v70;
          v211 = v81;
          v98 = v93;
          v99 = off_1F513B088[0];
          type metadata accessor for FormatDecorationContext();

          v100 = v94;
          v101 = v163;
          v102 = v177;
          v99(v100, v93, v163);
          v103 = (*v169)(v101, 1, v170);
          v104 = v182;
          if (v103 == 1)
          {
            sub_1D5D28540(v101, &qword_1EDF337F0, type metadata accessor for FormatOption);
            v146 = v156;
            *v156 = v179;
            *(v146 + 8) = v98;
            swift_storeEnumTagMultiPayload();
            sub_1D5D285FC();
            swift_allocError();
            sub_1D5D287F4(v146, v147, type metadata accessor for FormatLayoutError);
            swift_willThrow();
            sub_1D5D28B04(v146, type metadata accessor for FormatLayoutError);
            goto LABEL_84;
          }

          v105 = v153;
          sub_1D5D247E0(v101, v153);

          v106 = v211;
          sub_1D6B766A8(v102, v183);
          v81 = v106;
          if (v106)
          {
            goto LABEL_83;
          }

          v107 = sub_1D6B8273C(v183[0], v179, v98, v175, v102);
          v70 = v171;
          v94 = v107;
          v93 = v108;
          sub_1D5D28B04(v153, type metadata accessor for FormatOption);

          v71 = v176;
          goto LABEL_51;
        }

        v191 = v94;
        v192 = v93;
        v193 = v175;
        v194 = v172;
        v195 = v173;
        v196 = v74 & 0xFFF;
        v128 = sub_1D6891050(v177, 0);
        if (v81)
        {
          goto LABEL_84;
        }

        v94 = v128;
        v93 = v129;
      }

      else
      {
      }

      v104 = v182;
LABEL_51:
      v130 = v181;
      *(v181 + 16) = v94;
      *(v130 + 24) = v93;
      v131 = v130;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v174 = sub_1D698CA54(0, *(v174 + 2) + 1, 1, v174);
      }

      v133 = *(v174 + 2);
      v132 = *(v174 + 3);
      if (v133 >= v132 >> 1)
      {
        v174 = sub_1D698CA54((v132 > 1), v133 + 1, 1, v174);
      }

      sub_1D60B2A74(&v184);
      v63 = v174;
      *(v174 + 2) = v133 + 1;
      v64 = &v63[24 * v133];
      *(v64 + 4) = v71;
      *(v64 + 5) = v70;
      *(v64 + 6) = v131;
      goto LABEL_5;
    }

    v77 = off_1F513B088[0];
    sub_1D60B2AC8(&v184, v183);
    type metadata accessor for FormatDecorationContext();

    v78 = v166;
    v79 = v177;
    v77(v71, v70, v166);
    if ((*v169)(v78, 1, v170) != 1)
    {

      sub_1D5D247E0(v78, v154);

      v80 = v211;
      sub_1D6B766A8(v79, v183);
      v81 = v80;
      if (!v80)
      {

        v71 = sub_1D6B8273C(v183[0], v71, v70, v181, v79);
        v70 = v82;
        sub_1D5D28B04(v154, type metadata accessor for FormatOption);

LABEL_25:
        v93 = v176;
        v94 = v179;
        goto LABEL_29;
      }

      v141 = v154;
      goto LABEL_69;
    }

    sub_1D5D28540(v78, &qword_1EDF337F0, type metadata accessor for FormatOption);
    v144 = v159;
LABEL_74:
    *v144 = v71;
    v144[1] = v70;
    swift_storeEnumTagMultiPayload();
    sub_1D5D285FC();
    swift_allocError();
    sub_1D5D287F4(v144, v145, type metadata accessor for FormatLayoutError);
    swift_willThrow();
    sub_1D5D28B04(v144, type metadata accessor for FormatLayoutError);
    goto LABEL_75;
  }

  if (!(v187 >> 14))
  {
    sub_1D60B2AC8(&v184, v183);
    v171 = v70;
    sub_1D5E1DA6C(v71, v70, v181, v72, v73, *(&v73 + 1), v76);
    v81 = v211;
LABEL_39:
    v112 = v176;
    v113 = v179;
    goto LABEL_42;
  }

  if (v187 >> 14 == 1)
  {
    v88 = off_1F513B088[0];
    sub_1D60B2AC8(&v184, v183);
    type metadata accessor for FormatDecorationContext();

    v89 = v167;
    v90 = v177;
    v88(v71, v70, v167);
    if ((*v169)(v89, 1, v170) == 1)
    {
      sub_1D5D28540(v89, &qword_1EDF337F0, type metadata accessor for FormatOption);
      v144 = v160;
      goto LABEL_74;
    }

    sub_1D5D247E0(v89, v155);

    v91 = v211;
    sub_1D6B766A8(v90, v183);
    v81 = v91;
    if (v91)
    {
      v141 = v155;
LABEL_69:
      sub_1D5D28B04(v141, type metadata accessor for FormatOption);

LABEL_75:
      (*(v150 + 8))(v168, v152);
      goto LABEL_85;
    }

    v71 = sub_1D6B8273C(v183[0], v71, v70, v181, v90);
    v171 = v92;
    sub_1D5D28B04(v155, type metadata accessor for FormatOption);

    goto LABEL_39;
  }

  v207 = v184;
  v208 = __PAIR128__(*(&v185 + 1), v181);
  v209 = v186;
  v210 = v187 & 0x3FFF;
  sub_1D5E1DA6C(v184, *(&v184 + 1), v181, *(&v185 + 1), v186, *(&v186 + 1), v187);
  v113 = v179;
  v112 = v176;
  sub_1D5E1DA6C(v179, v176, v175, v172, *(&v172 + 1), v173, v74 & 0xCFFF);
  v114 = v211;
  v115 = sub_1D6891050(v177, 0);
  v171 = v116;
  v81 = v114;
  if (v114)
  {
    goto LABEL_75;
  }

  v71 = v115;
LABEL_42:
  v117 = swift_allocObject();
  v118 = v117;
  if (!(v74 >> 14))
  {

LABEL_58:
    v104 = v182;
    goto LABEL_59;
  }

  if (v74 >> 14 != 1)
  {
    v201 = v113;
    v202 = v112;
    v203 = v175;
    v204 = v172;
    v205 = v173;
    v206 = v74 & 0xFFF;
    v134 = sub_1D6891050(v177, 0);
    if (v81)
    {
      goto LABEL_84;
    }

    v113 = v134;
    v112 = v135;
    goto LABEL_58;
  }

  v211 = v117;
  v176 = v71;
  v119 = v81;
  v120 = v112;
  v121 = off_1F513B088[0];
  type metadata accessor for FormatDecorationContext();

  v122 = v113;
  v123 = v164;
  v124 = v177;
  v121(v122, v112, v164);
  if ((*v169)(v123, 1, v170) == 1)
  {
    sub_1D5D28540(v123, &qword_1EDF337F0, type metadata accessor for FormatOption);
    v148 = v157;
    *v157 = v179;
    *(v148 + 8) = v120;
    swift_storeEnumTagMultiPayload();
    sub_1D5D285FC();
    swift_allocError();
    sub_1D5D287F4(v148, v149, type metadata accessor for FormatLayoutError);
    swift_willThrow();
    sub_1D5D28B04(v148, type metadata accessor for FormatLayoutError);
    goto LABEL_84;
  }

  v105 = v162;
  sub_1D5D247E0(v123, v162);

  v125 = v119;
  sub_1D6B766A8(v124, v183);
  v81 = v119;
  v104 = v182;
  if (!v125)
  {

    v113 = sub_1D6B8273C(v183[0], v179, v120, v175, v124);
    v127 = v126;
    sub_1D5D28B04(v105, type metadata accessor for FormatOption);

    v71 = v176;
    v112 = v127;
    v118 = v211;
LABEL_59:
    *(v118 + 16) = v113;
    *(v118 + 24) = v112;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v104 = sub_1D698CA54(0, *(v104 + 2) + 1, 1, v104);
    }

    v136 = v171;
    v138 = *(v104 + 2);
    v137 = *(v104 + 3);
    if (v138 >= v137 >> 1)
    {
      v104 = sub_1D698CA54((v137 > 1), v138 + 1, 1, v104);
    }

    sub_1D60B2A74(&v184);
    *(v104 + 2) = v138 + 1;
    v139 = &v104[24 * v138];
    *(v139 + 4) = v71;
    *(v139 + 5) = v136;
    *(v139 + 6) = v118;
LABEL_5:
    v65 = v178;
    v66 = v180;
    if (!v180)
    {
      goto LABEL_65;
    }

    goto LABEL_6;
  }

LABEL_83:
  sub_1D5D28B04(v105, type metadata accessor for FormatOption);

LABEL_84:
  (*(v150 + 8))(v168, v152);

  swift_deallocUninitializedObject();
LABEL_85:
  sub_1D60B2A74(&v184);
}

uint64_t sub_1D6D55650@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>, double a4@<D0>)
{
  v119 = a1;
  v117 = a3;
  sub_1D5B54CB8(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v112 = &v111 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v114 = &v111 - v11;
  MEMORY[0x1EEE9AC00](v12, v13);
  v116 = &v111 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v113 = &v111 - v17;
  MEMORY[0x1EEE9AC00](v18, v19);
  v115 = &v111 - v20;
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = &v111 - v23;
  MEMORY[0x1EEE9AC00](v25, v26);
  v28 = &v111 - v27;
  MEMORY[0x1EEE9AC00](v29, v30);
  v32 = &v111 - v31;
  MEMORY[0x1EEE9AC00](v33, v34);
  v36 = &v111 - v35;
  sub_1D5B54CB8(0, &qword_1EDF3BF60, MEMORY[0x1E69D7398]);
  MEMORY[0x1EEE9AC00](v37 - 8, v38);
  v40 = &v111 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v41, v42);
  MEMORY[0x1EEE9AC00](v43, v44);
  v46 = &v111 - v45;
  MEMORY[0x1EEE9AC00](v47, v48);
  MEMORY[0x1EEE9AC00](v49, v50);
  v52 = &v111 - v51;
  MEMORY[0x1EEE9AC00](v53, v54);
  v58 = &v111 - v55;
  if (a4 >= 3.0)
  {
    sub_1D5D27018(a2, &v111 - v55, &qword_1EDF3BF60, MEMORY[0x1E69D7398]);
    v60 = sub_1D725A3AC();
    v61 = *(v60 - 8);
    if ((*(v61 + 48))(v58, 1, v60) != 1)
    {
      sub_1D5D27018(v58, v52, &qword_1EDF3BF60, MEMORY[0x1E69D7398]);
      v67 = (*(v61 + 88))(v52, v60);
      if (v67 == *MEMORY[0x1E69D7380])
      {
        v68 = v118;
        v69 = v118[5];
        if ((~v69 & 0xF000000000000007) != 0)
        {
          v85 = v120;
          sub_1D6D4FCF8(v119, v69, v36);
          if (!v85)
          {
            v86 = sub_1D72585BC();
            v87 = *(v86 - 8);
            (*(v87 + 56))(v36, 0, 1, v86);
            (*(v87 + 32))(v117, v36, v86);
          }
        }

        else
        {
          v70 = sub_1D72585BC();
          v71 = *(v70 - 8);
          (*(v71 + 56))(v36, 1, 1, v70);
          sub_1D6D4FCF8(v119, v68[2], v117);
          if ((*(v71 + 48))(v36, 1, v70) != 1)
          {
            sub_1D5D28540(v36, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
          }
        }

        return sub_1D5D28540(v58, &qword_1EDF3BF60, MEMORY[0x1E69D7398]);
      }

      if (v67 == *MEMORY[0x1E69D7388])
      {
        v81 = v118;
        v82 = v118[11];
        if ((~v82 & 0xF000000000000007) != 0)
        {
          v101 = v120;
          sub_1D6D4FCF8(v119, v82, v32);
          if (!v101)
          {
            v102 = sub_1D72585BC();
            v103 = *(v102 - 8);
            (*(v103 + 56))(v32, 0, 1, v102);
            (*(v103 + 32))(v117, v32, v102);
          }
        }

        else
        {
          v83 = sub_1D72585BC();
          v84 = *(v83 - 8);
          (*(v84 + 56))(v32, 1, 1, v83);
          sub_1D6D4FCF8(v119, v81[2], v117);
          if ((*(v84 + 48))(v32, 1, v83) != 1)
          {
            sub_1D5D28540(v32, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
          }
        }

        return sub_1D5D28540(v58, &qword_1EDF3BF60, MEMORY[0x1E69D7398]);
      }

      if (v67 == *MEMORY[0x1E69D7390])
      {
        v94 = v118;
        v95 = v118[14];
        if ((~v95 & 0xF000000000000007) != 0)
        {
          v105 = v120;
          sub_1D6D4FCF8(v119, v95, v28);
          if (!v105)
          {
            v106 = sub_1D72585BC();
            v107 = *(v106 - 8);
            (*(v107 + 56))(v28, 0, 1, v106);
            (*(v107 + 32))(v117, v28, v106);
          }
        }

        else
        {
          v96 = sub_1D72585BC();
          v97 = *(v96 - 8);
          (*(v97 + 56))(v28, 1, 1, v96);
          sub_1D6D4FCF8(v119, v94[2], v117);
          if ((*(v97 + 48))(v28, 1, v96) != 1)
          {
            sub_1D5D28540(v28, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
          }
        }

        return sub_1D5D28540(v58, &qword_1EDF3BF60, MEMORY[0x1E69D7398]);
      }

      (*(v61 + 8))(v52, v60);
    }

    v62 = v118[2];
    goto LABEL_9;
  }

  if (a4 >= 2.0)
  {
    v63 = a2;
    v64 = v57;
    sub_1D5D27018(v63, v57, &qword_1EDF3BF60, MEMORY[0x1E69D7398]);
    v65 = sub_1D725A3AC();
    v66 = *(v65 - 8);
    if ((*(v66 + 48))(v64, 1, v65) != 1)
    {
      v58 = v64;
      sub_1D5D27018(v64, v46, &qword_1EDF3BF60, MEMORY[0x1E69D7398]);
      v75 = (*(v66 + 88))(v46, v65);
      v76 = v118;
      if (v75 == *MEMORY[0x1E69D7380])
      {
        v77 = v118[4];
        if ((~v77 & 0xF000000000000007) != 0)
        {
          v98 = v120;
          sub_1D6D4FCF8(v119, v77, v24);
          if (!v98)
          {
            v99 = sub_1D72585BC();
            v100 = *(v99 - 8);
            (*(v100 + 56))(v24, 0, 1, v99);
            (*(v100 + 32))(v117, v24, v99);
          }

          return sub_1D5D28540(v58, &qword_1EDF3BF60, MEMORY[0x1E69D7398]);
        }

        v78 = sub_1D72585BC();
        v79 = *(v78 - 8);
        (*(v79 + 56))(v24, 1, 1, v78);
        v80 = v76[1];
        goto LABEL_57;
      }

      if (v75 == *MEMORY[0x1E69D7388])
      {
        v90 = v118[10];
        if ((~v90 & 0xF000000000000007) != 0)
        {
          v104 = v115;
          goto LABEL_64;
        }

        v91 = sub_1D72585BC();
        v92 = *(v91 - 8);
        v93 = v115;
        (*(v92 + 56))(v115, 1, 1, v91);
      }

      else
      {
        if (v75 != *MEMORY[0x1E69D7390])
        {
          (*(v66 + 8))(v46, v65);
          v62 = v76[1];
          goto LABEL_9;
        }

        v90 = v118[13];
        if ((~v90 & 0xF000000000000007) != 0)
        {
          v104 = v113;
          goto LABEL_64;
        }

        v91 = sub_1D72585BC();
        v92 = *(v91 - 8);
        v93 = v113;
        (*(v92 + 56))(v113, 1, 1, v91);
      }

      sub_1D6D4FCF8(v119, v76[1], v117);
      if ((*(v92 + 48))(v93, 1, v91) != 1)
      {
        sub_1D5D28540(v93, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
      }

      return sub_1D5D28540(v58, &qword_1EDF3BF60, MEMORY[0x1E69D7398]);
    }

    v58 = v64;
    v62 = v118[1];
  }

  else
  {
    if (a4 < 1.0)
    {
      return sub_1D6D55650(v119, a2, 3.0);
    }

    v72 = v56;
    sub_1D5D27018(a2, v56, &qword_1EDF3BF60, MEMORY[0x1E69D7398]);
    v73 = sub_1D725A3AC();
    v74 = *(v73 - 8);
    if ((*(v74 + 48))(v72, 1, v73) == 1)
    {
      sub_1D6D4FCF8(v119, *v118, v117);
      v58 = v72;
      return sub_1D5D28540(v58, &qword_1EDF3BF60, MEMORY[0x1E69D7398]);
    }

    v58 = v72;
    sub_1D5D27018(v72, v40, &qword_1EDF3BF60, MEMORY[0x1E69D7398]);
    v88 = (*(v74 + 88))(v40, v73);
    v89 = v118;
    if (v88 == *MEMORY[0x1E69D7380])
    {
      v90 = v118[3];
      if ((~v90 & 0xF000000000000007) == 0)
      {
        v78 = sub_1D72585BC();
        v79 = *(v78 - 8);
        v24 = v116;
        (*(v79 + 56))(v116, 1, 1, v78);
LABEL_56:
        v80 = *v89;
LABEL_57:
        sub_1D6D4FCF8(v119, v80, v117);
        if ((*(v79 + 48))(v24, 1, v78) != 1)
        {
          sub_1D5D28540(v24, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
        }

        return sub_1D5D28540(v58, &qword_1EDF3BF60, MEMORY[0x1E69D7398]);
      }

      v104 = v116;
      goto LABEL_64;
    }

    if (v88 == *MEMORY[0x1E69D7388])
    {
      v90 = v118[9];
      if ((~v90 & 0xF000000000000007) == 0)
      {
        v78 = sub_1D72585BC();
        v79 = *(v78 - 8);
        v24 = v114;
        (*(v79 + 56))(v114, 1, 1, v78);
        goto LABEL_56;
      }

      v104 = v114;
LABEL_64:
      v108 = v120;
      sub_1D6D4FCF8(v119, v90, v104);
      if (!v108)
      {
        v109 = sub_1D72585BC();
        v110 = *(v109 - 8);
        (*(v110 + 56))(v104, 0, 1, v109);
        (*(v110 + 32))(v117, v104, v109);
      }

      return sub_1D5D28540(v58, &qword_1EDF3BF60, MEMORY[0x1E69D7398]);
    }

    if (v88 == *MEMORY[0x1E69D7390])
    {
      v90 = v118[12];
      if ((~v90 & 0xF000000000000007) == 0)
      {
        v78 = sub_1D72585BC();
        v79 = *(v78 - 8);
        v24 = v112;
        (*(v79 + 56))(v112, 1, 1, v78);
        goto LABEL_56;
      }

      v104 = v112;
      goto LABEL_64;
    }

    (*(v74 + 8))(v40, v73);
    v62 = *v89;
  }

LABEL_9:
  sub_1D6D4FCF8(v119, v62, v117);
  return sub_1D5D28540(v58, &qword_1EDF3BF60, MEMORY[0x1E69D7398]);
}

uint64_t sub_1D6D566B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  v119 = a1;
  v117 = a3;
  sub_1D5B54CB8(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v112 = &v111 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v114 = &v111 - v11;
  MEMORY[0x1EEE9AC00](v12, v13);
  v116 = &v111 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v113 = &v111 - v17;
  MEMORY[0x1EEE9AC00](v18, v19);
  v115 = &v111 - v20;
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = &v111 - v23;
  MEMORY[0x1EEE9AC00](v25, v26);
  v28 = &v111 - v27;
  MEMORY[0x1EEE9AC00](v29, v30);
  v32 = &v111 - v31;
  MEMORY[0x1EEE9AC00](v33, v34);
  v36 = &v111 - v35;
  sub_1D5B54CB8(0, &qword_1EDF3BF60, MEMORY[0x1E69D7398]);
  MEMORY[0x1EEE9AC00](v37 - 8, v38);
  v40 = &v111 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v41, v42);
  MEMORY[0x1EEE9AC00](v43, v44);
  v46 = &v111 - v45;
  MEMORY[0x1EEE9AC00](v47, v48);
  MEMORY[0x1EEE9AC00](v49, v50);
  v52 = &v111 - v51;
  MEMORY[0x1EEE9AC00](v53, v54);
  v58 = &v111 - v55;
  if (a4 >= 3.0)
  {
    sub_1D5D27018(a2, &v111 - v55, &qword_1EDF3BF60, MEMORY[0x1E69D7398]);
    v60 = sub_1D725A3AC();
    v61 = *(v60 - 8);
    if ((*(v61 + 48))(v58, 1, v60) != 1)
    {
      sub_1D5D27018(v58, v52, &qword_1EDF3BF60, MEMORY[0x1E69D7398]);
      v67 = (*(v61 + 88))(v52, v60);
      if (v67 == *MEMORY[0x1E69D7380])
      {
        v68 = v118;
        v69 = v118[5];
        if ((~v69 & 0xF000000000000007) != 0)
        {
          v85 = v120;
          sub_1D6D505B4(v119, v69, v36);
          if (!v85)
          {
            v86 = sub_1D72585BC();
            v87 = *(v86 - 8);
            (*(v87 + 56))(v36, 0, 1, v86);
            (*(v87 + 32))(v117, v36, v86);
          }
        }

        else
        {
          v70 = sub_1D72585BC();
          v71 = *(v70 - 8);
          (*(v71 + 56))(v36, 1, 1, v70);
          sub_1D6D505B4(v119, v68[2], v117);
          if ((*(v71 + 48))(v36, 1, v70) != 1)
          {
            sub_1D5D28540(v36, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
          }
        }

        return sub_1D5D28540(v58, &qword_1EDF3BF60, MEMORY[0x1E69D7398]);
      }

      if (v67 == *MEMORY[0x1E69D7388])
      {
        v81 = v118;
        v82 = v118[11];
        if ((~v82 & 0xF000000000000007) != 0)
        {
          v101 = v120;
          sub_1D6D505B4(v119, v82, v32);
          if (!v101)
          {
            v102 = sub_1D72585BC();
            v103 = *(v102 - 8);
            (*(v103 + 56))(v32, 0, 1, v102);
            (*(v103 + 32))(v117, v32, v102);
          }
        }

        else
        {
          v83 = sub_1D72585BC();
          v84 = *(v83 - 8);
          (*(v84 + 56))(v32, 1, 1, v83);
          sub_1D6D505B4(v119, v81[2], v117);
          if ((*(v84 + 48))(v32, 1, v83) != 1)
          {
            sub_1D5D28540(v32, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
          }
        }

        return sub_1D5D28540(v58, &qword_1EDF3BF60, MEMORY[0x1E69D7398]);
      }

      if (v67 == *MEMORY[0x1E69D7390])
      {
        v94 = v118;
        v95 = v118[14];
        if ((~v95 & 0xF000000000000007) != 0)
        {
          v105 = v120;
          sub_1D6D505B4(v119, v95, v28);
          if (!v105)
          {
            v106 = sub_1D72585BC();
            v107 = *(v106 - 8);
            (*(v107 + 56))(v28, 0, 1, v106);
            (*(v107 + 32))(v117, v28, v106);
          }
        }

        else
        {
          v96 = sub_1D72585BC();
          v97 = *(v96 - 8);
          (*(v97 + 56))(v28, 1, 1, v96);
          sub_1D6D505B4(v119, v94[2], v117);
          if ((*(v97 + 48))(v28, 1, v96) != 1)
          {
            sub_1D5D28540(v28, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
          }
        }

        return sub_1D5D28540(v58, &qword_1EDF3BF60, MEMORY[0x1E69D7398]);
      }

      (*(v61 + 8))(v52, v60);
    }

    v62 = v118[2];
    goto LABEL_9;
  }

  if (a4 >= 2.0)
  {
    v63 = a2;
    v64 = v57;
    sub_1D5D27018(v63, v57, &qword_1EDF3BF60, MEMORY[0x1E69D7398]);
    v65 = sub_1D725A3AC();
    v66 = *(v65 - 8);
    if ((*(v66 + 48))(v64, 1, v65) != 1)
    {
      v58 = v64;
      sub_1D5D27018(v64, v46, &qword_1EDF3BF60, MEMORY[0x1E69D7398]);
      v75 = (*(v66 + 88))(v46, v65);
      v76 = v118;
      if (v75 == *MEMORY[0x1E69D7380])
      {
        v77 = v118[4];
        if ((~v77 & 0xF000000000000007) != 0)
        {
          v98 = v120;
          sub_1D6D505B4(v119, v77, v24);
          if (!v98)
          {
            v99 = sub_1D72585BC();
            v100 = *(v99 - 8);
            (*(v100 + 56))(v24, 0, 1, v99);
            (*(v100 + 32))(v117, v24, v99);
          }

          return sub_1D5D28540(v58, &qword_1EDF3BF60, MEMORY[0x1E69D7398]);
        }

        v78 = sub_1D72585BC();
        v79 = *(v78 - 8);
        (*(v79 + 56))(v24, 1, 1, v78);
        v80 = v76[1];
        goto LABEL_57;
      }

      if (v75 == *MEMORY[0x1E69D7388])
      {
        v90 = v118[10];
        if ((~v90 & 0xF000000000000007) != 0)
        {
          v104 = v115;
          goto LABEL_64;
        }

        v91 = sub_1D72585BC();
        v92 = *(v91 - 8);
        v93 = v115;
        (*(v92 + 56))(v115, 1, 1, v91);
      }

      else
      {
        if (v75 != *MEMORY[0x1E69D7390])
        {
          (*(v66 + 8))(v46, v65);
          v62 = v76[1];
          goto LABEL_9;
        }

        v90 = v118[13];
        if ((~v90 & 0xF000000000000007) != 0)
        {
          v104 = v113;
          goto LABEL_64;
        }

        v91 = sub_1D72585BC();
        v92 = *(v91 - 8);
        v93 = v113;
        (*(v92 + 56))(v113, 1, 1, v91);
      }

      sub_1D6D505B4(v119, v76[1], v117);
      if ((*(v92 + 48))(v93, 1, v91) != 1)
      {
        sub_1D5D28540(v93, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
      }

      return sub_1D5D28540(v58, &qword_1EDF3BF60, MEMORY[0x1E69D7398]);
    }

    v58 = v64;
    v62 = v118[1];
  }

  else
  {
    if (a4 < 1.0)
    {
      return sub_1D6D566B8(v119, a2, 3.0);
    }

    v72 = v56;
    sub_1D5D27018(a2, v56, &qword_1EDF3BF60, MEMORY[0x1E69D7398]);
    v73 = sub_1D725A3AC();
    v74 = *(v73 - 8);
    if ((*(v74 + 48))(v72, 1, v73) == 1)
    {
      sub_1D6D505B4(v119, *v118, v117);
      v58 = v72;
      return sub_1D5D28540(v58, &qword_1EDF3BF60, MEMORY[0x1E69D7398]);
    }

    v58 = v72;
    sub_1D5D27018(v72, v40, &qword_1EDF3BF60, MEMORY[0x1E69D7398]);
    v88 = (*(v74 + 88))(v40, v73);
    v89 = v118;
    if (v88 == *MEMORY[0x1E69D7380])
    {
      v90 = v118[3];
      if ((~v90 & 0xF000000000000007) == 0)
      {
        v78 = sub_1D72585BC();
        v79 = *(v78 - 8);
        v24 = v116;
        (*(v79 + 56))(v116, 1, 1, v78);
LABEL_56:
        v80 = *v89;
LABEL_57:
        sub_1D6D505B4(v119, v80, v117);
        if ((*(v79 + 48))(v24, 1, v78) != 1)
        {
          sub_1D5D28540(v24, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
        }

        return sub_1D5D28540(v58, &qword_1EDF3BF60, MEMORY[0x1E69D7398]);
      }

      v104 = v116;
      goto LABEL_64;
    }

    if (v88 == *MEMORY[0x1E69D7388])
    {
      v90 = v118[9];
      if ((~v90 & 0xF000000000000007) == 0)
      {
        v78 = sub_1D72585BC();
        v79 = *(v78 - 8);
        v24 = v114;
        (*(v79 + 56))(v114, 1, 1, v78);
        goto LABEL_56;
      }

      v104 = v114;
LABEL_64:
      v108 = v120;
      sub_1D6D505B4(v119, v90, v104);
      if (!v108)
      {
        v109 = sub_1D72585BC();
        v110 = *(v109 - 8);
        (*(v110 + 56))(v104, 0, 1, v109);
        (*(v110 + 32))(v117, v104, v109);
      }

      return sub_1D5D28540(v58, &qword_1EDF3BF60, MEMORY[0x1E69D7398]);
    }

    if (v88 == *MEMORY[0x1E69D7390])
    {
      v90 = v118[12];
      if ((~v90 & 0xF000000000000007) == 0)
      {
        v78 = sub_1D72585BC();
        v79 = *(v78 - 8);
        v24 = v112;
        (*(v79 + 56))(v112, 1, 1, v78);
        goto LABEL_56;
      }

      v104 = v112;
      goto LABEL_64;
    }

    (*(v74 + 8))(v40, v73);
    v62 = *v89;
  }

LABEL_9:
  sub_1D6D505B4(v119, v62, v117);
  return sub_1D5D28540(v58, &qword_1EDF3BF60, MEMORY[0x1E69D7398]);
}

uint64_t sub_1D6D5772C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 121))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 120);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1D6D57774(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 120) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 121) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 121) = 0;
    }

    if (a2)
    {
      *(result + 120) = -a2;
    }
  }

  return result;
}

__n128 __swift_memcpy43_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 27) = *(a2 + 27);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1D6D577F8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 43))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 42);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1D6D57840(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 42) = 0;
    *(result + 40) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 43) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 43) = 0;
    }

    if (a2)
    {
      *(result + 42) = -a2;
    }
  }

  return result;
}

uint64_t FeedGroupConfigSidecarConfigPlacement.subgroupIdentifier.getter()
{
  v1 = *v0;

  return v1;
}

unint64_t sub_1D6D57910()
{
  v1 = 0x7365707974627573;
  if (*v0 != 1)
  {
    v1 = 0x6E6F697469736F70;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000012;
  }
}

uint64_t sub_1D6D57970@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D6D58690(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D6D57998(uint64_t a1)
{
  v2 = sub_1D6D57C28();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6D579D4(uint64_t a1)
{
  v2 = sub_1D6D57C28();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FeedGroupConfigSidecarConfigPlacement.encode(to:)(void *a1)
{
  sub_1D6D57FA0(0, &qword_1EDF02858, MEMORY[0x1E69E6F58]);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = v15 - v7;
  v15[0] = *(v1 + 16);
  v16 = *(v1 + 24);
  v9 = a1[3];
  v10 = a1;
  v12 = v11;
  __swift_project_boxed_opaque_existential_1(v10, v9);
  sub_1D6D57C28();
  sub_1D7264B5C();
  v20 = 0;
  sub_1D72643FC();
  if (!v2)
  {
    v13 = v16;
    v15[1] = v15[0];
    v19 = 1;
    sub_1D5BBE0A8();
    sub_1D5B99688(&qword_1EDF04A90);
    sub_1D726443C();
    v18 = v13;
    v17 = 2;
    sub_1D6D57C7C();
    sub_1D726443C();
  }

  return (*(v5 + 8))(v8, v12);
}

unint64_t sub_1D6D57C28()
{
  result = qword_1EDF12AA0;
  if (!qword_1EDF12AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF12AA0);
  }

  return result;
}

unint64_t sub_1D6D57C7C()
{
  result = qword_1EDF12AB8;
  if (!qword_1EDF12AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF12AB8);
  }

  return result;
}

uint64_t FeedGroupConfigSidecarConfigPlacement.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1D6D57FA0(0, &qword_1EDF03B48, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v17 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6D57C28();
  sub_1D7264B0C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v24 = 0;
  v11 = sub_1D72642BC();
  v13 = v12;
  v19 = v11;
  sub_1D5BBE0A8();
  v23 = 1;
  sub_1D5B99688(&qword_1EDF3C830);
  sub_1D726431C();
  v18 = v20;
  v21 = 2;
  sub_1D6D58004();
  sub_1D726431C();
  (*(v7 + 8))(v10, v6);
  v14 = v22;
  v15 = v18;
  *a2 = v19;
  *(a2 + 8) = v13;
  *(a2 + 16) = v15;
  *(a2 + 24) = v14;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_1D6D57FA0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D6D57C28();
    v7 = a3(a1, &type metadata for FeedGroupConfigSidecarConfigPlacement.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1D6D58004()
{
  result = qword_1EDF12AA8;
  if (!qword_1EDF12AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF12AA8);
  }

  return result;
}

NewsFeed::FeedGroupConfigSidecarConfigPlacementPosition_optional __swiftcall FeedGroupConfigSidecarConfigPlacementPosition.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D72641CC();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t FeedGroupConfigSidecarConfigPlacementPosition.rawValue.getter()
{
  v1 = 0x7265746661;
  if (*v0 != 1)
  {
    v1 = 0x6563616C706572;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x65726F666562;
  }
}

uint64_t sub_1D6D58138(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE500000000000000;
  v4 = 0x7265746661;
  if (v2 != 1)
  {
    v4 = 0x6563616C706572;
    v3 = 0xE700000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x65726F666562;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE600000000000000;
  }

  v7 = 0xE500000000000000;
  v8 = 0x7265746661;
  if (*a2 != 1)
  {
    v8 = 0x6563616C706572;
    v7 = 0xE700000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x65726F666562;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE600000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1D72646CC();
  }

  return v11 & 1;
}

unint64_t sub_1D6D58234()
{
  result = qword_1EC8955C0;
  if (!qword_1EC8955C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8955C0);
  }

  return result;
}

uint64_t sub_1D6D58288()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D6D58324()
{
  sub_1D72621EC();
}

uint64_t sub_1D6D583AC()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

void sub_1D6D58450(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0xE500000000000000;
  v5 = 0x7265746661;
  if (v2 != 1)
  {
    v5 = 0x6563616C706572;
    v4 = 0xE700000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x65726F666562;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

unint64_t sub_1D6D5858C()
{
  result = qword_1EC8955C8;
  if (!qword_1EC8955C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8955C8);
  }

  return result;
}

unint64_t sub_1D6D585E4()
{
  result = qword_1EDF12A90;
  if (!qword_1EDF12A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF12A90);
  }

  return result;
}

unint64_t sub_1D6D5863C()
{
  result = qword_1EDF12A98;
  if (!qword_1EDF12A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF12A98);
  }

  return result;
}

uint64_t sub_1D6D58690(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000012 && 0x80000001D73F1DF0 == a2 || (sub_1D72646CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7365707974627573 && a2 == 0xE800000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E6F697469736F70 && a2 == 0xE800000000000000)
  {

    return 2;
  }

  else
  {
    v5 = sub_1D72646CC();

    if (v5)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

unint64_t sub_1D6D587B4()
{
  result = qword_1EDF12AB0;
  if (!qword_1EDF12AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF12AB0);
  }

  return result;
}

uint64_t sub_1D6D58834@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D5F0B948();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1D6D5888C@<X0>(_BYTE *a1@<X8>)
{
  type metadata accessor for DebugFormatEditorWorkspaceGroup();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D72600CC();

  *a1 = v3;
  return result;
}

uint64_t sub_1D6D58928()
{
  type metadata accessor for DebugFormatEditorWorkspaceGroup();
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1D72600DC();
}

uint64_t sub_1D6D589B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _OWORD *a5@<X8>)
{
  v37 = a5;
  sub_1D6D59AA4();
  v42 = v9;
  v38 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v10);
  v41 = &KeyPath - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v40 = &KeyPath - v14;
  v15 = a4 + *(*a4 + 88);
  v16 = type metadata accessor for DebugFormatEditorWorkspaceGroup();
  v17 = (*(*(v15 + v16[6]) + 16) + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__name);
  swift_beginAccess();
  v18 = v17[1];
  if (v18)
  {
    v43 = *v17;
    v39 = v18;
  }

  else
  {
    v39 = 0xE800000000000000;
    v43 = 0x64656C7469746E55;
  }

  v19 = (v15 + v16[7]);
  v20 = v19[1];
  v36 = *v19;
  v21 = *(v15 + v16[5]) + OBJC_IVAR____TtC8NewsFeed24DebugFormatBindingResult_content;
  v47[0] = *(v21 + *(type metadata accessor for FormatContent.Resolved() + 36));
  KeyPath = swift_getKeyPath();
  v22 = swift_allocObject();
  v22[2] = a1;
  v22[3] = a2;
  v22[4] = a3;
  v22[5] = a4;
  sub_1D5B5A840(0, &qword_1EDF3C8C0, &type metadata for FormatContentSubgroup.ResolvedContainer, MEMORY[0x1E69E62F8]);
  sub_1D6D59C84(0, &qword_1EC8955F8, sub_1D6D59B90, MEMORY[0x1E6981F40]);
  sub_1D6D59E14();
  sub_1D6D59F24();

  v23 = v40;
  sub_1D72619DC();
  v24 = v38;
  v25 = *(v38 + 16);
  v26 = v41;
  v27 = v42;
  v25(v41, v23, v42);
  *&v44 = 0x676E697070696873;
  *(&v44 + 1) = 0xEB00000000786F62;
  v28 = v39;
  *&v45 = v43;
  *(&v45 + 1) = v39;
  v29 = v36;
  *v46 = v36;
  *&v46[8] = v20;
  *&v46[16] = 0;
  v46[24] = 1;
  v30 = v45;
  v31 = v37;
  *v37 = v44;
  v31[1] = v30;
  v31[2] = *v46;
  *(v31 + 41) = *&v46[9];
  sub_1D6D59A3C();
  v25(v31 + *(v32 + 48), v26, v27);
  sub_1D6D59FAC(&v44, v47);
  v33 = *(v24 + 8);
  v33(v23, v27);
  v33(v26, v27);
  v47[0] = 0x676E697070696873;
  v47[1] = 0xEB00000000786F62;
  v47[2] = v43;
  v47[3] = v28;
  v47[4] = v29;
  v47[5] = v20;
  v47[6] = 0;
  v48 = 1;
  return sub_1D6D5A008(v47);
}

uint64_t sub_1D6D58DF8@<X0>(_OWORD *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = a1[1];
  v8[0] = *a1;
  v8[1] = v3;
  v4 = a1[3];
  v8[2] = a1[2];
  v8[3] = v4;
  v8[4] = a1[4];
  v5 = v8[0];
  sub_1D5CE9930(v8, &v7);

  *a2 = v5;
  return result;
}

uint64_t sub_1D6D58EB4@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v49 = a5;
  v46 = a2;
  v47 = a4;
  sub_1D6D59CE8();
  v56 = *(v9 - 8);
  v57 = v9;
  MEMORY[0x1EEE9AC00](v9, v10);
  v48 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6D59C84(0, &qword_1EC895608, sub_1D6D59CE8, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v58 = &v46 - v18;
  v19 = a1[1];
  v80 = *a1;
  v81 = v19;
  v20 = a1[3];
  *v82 = a1[2];
  *&v82[16] = v20;
  *&v82[32] = a1[4];
  v75[0] = v80;
  v75[1] = v81;
  v76 = *v82 & 0x7FFFFFFFFFFFFFFFLL;
  v77 = *&v82[8];
  v55 = v20;
  v78 = v20;
  v79 = *&v82[32];
  sub_1D5CE9930(&v80, &v71);
  v21 = v55;

  sub_1D5CB71DC(v75);
  v22 = *(v21 + 16);

  if (v22)
  {
    v71 = v80;
    v72 = v81;
    v73 = *v82 & 0x7FFFFFFFFFFFFFFFLL;
    *v74 = *&v82[8];
    v55 = *&v82[16];
    *&v74[8] = *&v82[16];
    *&v74[24] = *&v82[32];
    sub_1D5CE9930(&v80, &v65);

    v23 = v55;

    sub_1D5CB71DC(&v71);
    type metadata accessor for DebugFormatBindingTree();
    sub_1D6D5A05C(&qword_1EC880C48, type metadata accessor for DebugFormatBindingTree);
    v54 = sub_1D7260F8C();
    *&v55 = v23;
    v25 = v24;

    v53 = v25;
  }

  else
  {
    v53 = 0;
    v54 = 0;
    *&v55 = 0;
  }

  v71 = v80;
  v72 = v81;
  v52 = *&v82[8];
  *v74 = *&v82[8];
  *&v74[16] = *&v82[24];
  v73 = *v82 & 0x7FFFFFFFFFFFFFFFLL;
  *&v74[32] = *&v82[40];
  sub_1D5CE9930(&v80, &v65);
  v26 = v52;

  sub_1D5CB71DC(&v71);
  v27 = *(v26 + 16);

  if (v27)
  {
    v65 = v80;
    v66 = v81;
    v52 = *&v82[8];
    v68 = *&v82[8];
    v69 = *&v82[24];
    v67 = *v82 & 0x7FFFFFFFFFFFFFFFLL;
    v70 = *&v82[40];
    sub_1D5CE9930(&v80, v60);

    v28 = v52;

    sub_1D5CB71DC(&v65);
    type metadata accessor for DebugFormatBindingTree();
    sub_1D6D5A05C(&qword_1EC880C48, type metadata accessor for DebugFormatBindingTree);
    v51 = sub_1D7260F8C();
    *&v52 = v28;
    v30 = v29;
  }

  else
  {
    v51 = 0;
    *&v52 = 0;
    v30 = 0;
  }

  v65 = v80;
  v66 = v81;
  v68 = *&v82[8];
  v50 = *&v82[24];
  v69 = *&v82[24];
  v67 = *v82 & 0x7FFFFFFFFFFFFFFFLL;
  v70 = *&v82[40];
  sub_1D5CE9930(&v80, v60);
  v31 = v50;

  sub_1D5CB71DC(&v65);
  v32 = *(v31 + 16);

  if (v32)
  {
    v60[0] = v80;
    v60[1] = v81;
    v61 = *v82 & 0x7FFFFFFFFFFFFFFFLL;
    v62 = *&v82[8];
    v50 = *&v82[24];
    v63 = *&v82[24];
    v64 = *&v82[40];
    sub_1D5CE9930(&v80, v59);

    sub_1D5CB71DC(v60);
    v59[0] = v50;
    *&v50 = swift_getKeyPath();
    v33 = swift_allocObject();
    v34 = v47;
    v33[2] = v46;
    v33[3] = a3;
    v35 = v49;
    v33[4] = v34;
    v33[5] = v35;
    sub_1D5B5A840(0, &qword_1EDF1B2A0, &type metadata for FormatContentSlot.Resolved, MEMORY[0x1E69E62F8]);
    sub_1D6D59D98();
    sub_1D6D5A0B0();

    v36 = v48;
    sub_1D72619DC();
    v38 = v56;
    v37 = v57;
    v39 = v58;
    (*(v56 + 32))(v58, v36, v57);
    (*(v38 + 56))(v39, 0, 1, v37);
  }

  else
  {
    v39 = v58;
    (*(v56 + 56))(v58, 1, 1, v57);
  }

  sub_1D6D5A104(v39, v15);
  v41 = v53;
  v40 = v54;
  *a6 = v54;
  a6[1] = v41;
  v43 = v51;
  v42 = v52;
  a6[2] = v55;
  a6[3] = v43;
  a6[4] = v30;
  a6[5] = v42;
  sub_1D6D59B90();
  sub_1D6D5A104(v15, a6 + *(v44 + 64));
  sub_1D5EFF2E0(v40, v41);
  sub_1D5EFF2E0(v43, v30);
  sub_1D5EFF324(v43, v30);
  sub_1D5EFF324(v40, v41);
  sub_1D6D5A198(v39);
  sub_1D6D5A198(v15);
  sub_1D5EFF324(v43, v30);
  return sub_1D5EFF324(v40, v41);
}

uint64_t sub_1D6D5957C@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X4>, uint64_t *a3@<X8>)
{
  v5 = a1[1];
  v18[0] = *a1;
  v18[1] = v5;
  v6 = a1[3];
  v18[2] = a1[2];
  v18[3] = v6;
  v7 = a2 + *(*a2 + 88);
  v8 = *(v7 + *(type metadata accessor for DebugFormatEditorWorkspaceGroup() + 20));
  sub_1D5B5A840(0, &qword_1EC880BE8, &type metadata for FormatContentSlot.Resolved, type metadata accessor for DebugFormatBindingTreeSection);
  v9 = swift_allocObject();
  v10 = a1[1];
  *(v9 + 16) = *a1;
  *(v9 + 32) = v10;
  v11 = a1[3];
  *(v9 + 48) = a1[2];
  *(v9 + 64) = v11;
  *(v9 + 80) = v8;
  swift_beginAccess();
  v17[71] = 1;

  sub_1D5CB6F58(v18, v17);

  sub_1D726009C();
  swift_endAccess();
  type metadata accessor for DebugFormatBindingTree();
  sub_1D6D5A05C(&qword_1EC880C48, type metadata accessor for DebugFormatBindingTree);
  v12 = sub_1D7260F8C();
  v14 = v13;
  sub_1D5EFED78();
  result = sub_1D7260F8C();
  *a3 = v12;
  a3[1] = v14;
  a3[2] = result;
  a3[3] = v16;
  return result;
}

uint64_t sub_1D6D59724@<X0>(uint64_t a1@<X3>, uint64_t a2@<X8>)
{
  v3 = *(*a1 + 88);
  v4 = (a1 + *(type metadata accessor for FormatWorkspaceGroup() + 24) + v3);
  v6 = *v4;
  v5 = v4[1];
  *a2 = 0x672E657261757173;
  *(a2 + 8) = 0xEF3278322E646972;
  *(a2 + 16) = 0x70756F7267627553;
  *(a2 + 24) = 0xE800000000000000;
  *(a2 + 32) = v6;
  *(a2 + 40) = v5;
  *(a2 + 48) = 0;
  *(a2 + 56) = 1;
}

uint64_t sub_1D6D597E0()
{
  v2 = *v0;
  v1 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_1D6D59C84(0, &qword_1EC8955D0, type metadata accessor for DebugFormatEditorWorkspaceGroup, type metadata accessor for DebugFormatBindingTreeSection);
  sub_1D6D5999C();
  sub_1D7260F9C();
  swift_getKeyPath();
  sub_1D7260FAC();

  v5 = swift_allocObject();
  v5[2] = v2;
  v5[3] = v1;
  v5[4] = v4;
  v5[5] = v3;
  sub_1D6D59C84(0, &qword_1EC8955E0, sub_1D6D59A3C, MEMORY[0x1E6981F40]);
  sub_1D5EFF0C0();
  sub_1D6D59E90();

  return sub_1D7260FFC();
}

unint64_t sub_1D6D5999C()
{
  result = qword_1EC8955D8;
  if (!qword_1EC8955D8)
  {
    sub_1D6D59C84(255, &qword_1EC8955D0, type metadata accessor for DebugFormatEditorWorkspaceGroup, type metadata accessor for DebugFormatBindingTreeSection);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8955D8);
  }

  return result;
}

void sub_1D6D59A3C()
{
  if (!qword_1EC8955E8)
  {
    sub_1D6D59AA4();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC8955E8);
    }
  }
}

void sub_1D6D59AA4()
{
  if (!qword_1EC8955F0)
  {
    sub_1D5B5A840(255, &qword_1EDF3C8C0, &type metadata for FormatContentSubgroup.ResolvedContainer, MEMORY[0x1E69E62F8]);
    sub_1D6D59C84(255, &qword_1EC8955F8, sub_1D6D59B90, MEMORY[0x1E6981F40]);
    sub_1D6D59E14();
    v0 = sub_1D72619FC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC8955F0);
    }
  }
}

void sub_1D6D59B90()
{
  if (!qword_1EC895600)
  {
    v0 = MEMORY[0x1E69E6720];
    sub_1D5B5A840(255, &qword_1EC880C08, &type metadata for DebugFormatBindingTreeSelectorView, MEMORY[0x1E69E6720]);
    sub_1D5B5A840(255, &qword_1EC880C10, &type metadata for DebugFormatBindingTreeOptionView, v0);
    sub_1D6D59C84(255, &qword_1EC895608, sub_1D6D59CE8, MEMORY[0x1E69E6720]);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EC895600);
    }
  }
}

void sub_1D6D59C84(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_1D6D59CE8()
{
  if (!qword_1EC895610)
  {
    sub_1D5B5A840(255, &qword_1EDF1B2A0, &type metadata for FormatContentSlot.Resolved, MEMORY[0x1E69E62F8]);
    sub_1D6D59D98();
    v0 = sub_1D72619FC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC895610);
    }
  }
}

unint64_t sub_1D6D59D98()
{
  result = qword_1EC895618;
  if (!qword_1EC895618)
  {
    sub_1D5B5A840(255, &qword_1EDF1B2A0, &type metadata for FormatContentSlot.Resolved, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC895618);
  }

  return result;
}

unint64_t sub_1D6D59E14()
{
  result = qword_1EC895620;
  if (!qword_1EC895620)
  {
    sub_1D5B5A840(255, &qword_1EDF3C8C0, &type metadata for FormatContentSubgroup.ResolvedContainer, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC895620);
  }

  return result;
}

unint64_t sub_1D6D59E90()
{
  result = qword_1EC895628;
  if (!qword_1EC895628)
  {
    sub_1D6D59C84(255, &qword_1EC8955E0, sub_1D6D59A3C, MEMORY[0x1E6981F40]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC895628);
  }

  return result;
}

unint64_t sub_1D6D59F24()
{
  result = qword_1EC895630;
  if (!qword_1EC895630)
  {
    sub_1D6D59C84(255, &qword_1EC8955F8, sub_1D6D59B90, MEMORY[0x1E6981F40]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC895630);
  }

  return result;
}

uint64_t sub_1D6D5A05C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1D6D5A0B0()
{
  result = qword_1EC895638;
  if (!qword_1EC895638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC895638);
  }

  return result;
}

uint64_t sub_1D6D5A104(uint64_t a1, uint64_t a2)
{
  sub_1D6D59C84(0, &qword_1EC895608, sub_1D6D59CE8, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D6D5A198(uint64_t a1)
{
  sub_1D6D59C84(0, &qword_1EC895608, sub_1D6D59CE8, MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1D6D5A224()
{
  if (!qword_1EC895648)
  {
    sub_1D6D59C84(255, &qword_1EC8955E0, sub_1D6D59A3C, MEMORY[0x1E6981F40]);
    sub_1D5EFF0C0();
    sub_1D6D59E90();
    v0 = sub_1D726100C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC895648);
    }
  }
}

uint64_t URLScheme.description.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t FeedHeadlineClusteringResult.topicClusteringResult.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = *(v1 + 8);
  a1[1] = v2;
}

NewsFeed::FeedHeadlineClusteringResult __swiftcall FeedHeadlineClusteringResult.init(channelClusteringResult:topicClusteringResult:inventoryItemsByTagID:)(NewsFeed::FeedChannelHeadlineClusteringResult channelClusteringResult, NewsFeed::FeedTopicHeadlineClusteringResult topicClusteringResult, Swift::OpaquePointer inventoryItemsByTagID)
{
  *v3 = *channelClusteringResult.clusters._rawValue;
  *(v3 + 8) = *topicClusteringResult.clusters._rawValue;
  *(v3 + 24) = topicClusteringResult.orphanedHeadlines._rawValue;
  result.topicClusteringResult = topicClusteringResult;
  result.inventoryItemsByTagID = inventoryItemsByTagID;
  result.channelClusteringResult = channelClusteringResult;
  return result;
}

unint64_t static FeedHeadlineClusteringResult.empty.getter@<X0>(void *a1@<X8>)
{
  v2 = MEMORY[0x1E69E7CC0];
  result = sub_1D605E5F8(MEMORY[0x1E69E7CC0]);
  *a1 = v2;
  a1[1] = v2;
  a1[2] = v2;
  a1[3] = result;
  return result;
}

unint64_t sub_1D6D5A438(uint64_t a1)
{
  sub_1D5B54D0C(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v19 - v4;
  v6 = sub_1D72585BC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5EB84C0(a1, v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_1D5E3E404(v5);
    return 0;
  }

  else
  {
    (*(v7 + 32))(v10, v5, v6);
    sub_1D5B54D0C(0, &qword_1EDF01E30, sub_1D6D5A8A8, MEMORY[0x1E69E6F90]);
    sub_1D6D5A8A8();
    v13 = v12 - 8;
    v14 = (*(*(v12 - 8) + 80) + 32) & ~*(*(v12 - 8) + 80);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_1D7273AE0;
    v16 = (v15 + v14);
    v17 = *(v13 + 56);
    *v16 = 0x6465654661746164;
    *(v16 + 1) = 0xE800000000000000;
    (*(v7 + 16))(&v16[v17], v10, v6);
    v18 = sub_1D605D104(v15);
    swift_setDeallocating();
    sub_1D6D5A910(v16);
    swift_deallocClassInstance();
    (*(v7 + 8))(v10, v6);
    return v18;
  }
}

uint64_t sub_1D6D5A6F4()
{
  v1 = OBJC_IVAR____TtC8NewsFeed29WebEmbedConfigurationProvider_locale;
  v2 = sub_1D7258AAC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for WebEmbedConfigurationProvider()
{
  result = qword_1EDF20C98;
  if (!qword_1EDF20C98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D6D5A80C()
{
  result = sub_1D7258AAC();
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

void sub_1D6D5A8A8()
{
  if (!qword_1EDF054E0)
  {
    sub_1D72585BC();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDF054E0);
    }
  }
}

uint64_t sub_1D6D5A910(uint64_t a1)
{
  sub_1D6D5A8A8();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D6D5A96C(uint64_t a1)
{
  v2 = type metadata accessor for FormatContentSlotItemObject.Resolved();
  v42 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v3);
  v5 = v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = v41 - v8;
  v10 = MEMORY[0x1E69E7CC0];
  v45 = *(a1 + 16);
  if (!v45)
  {
    return v10;
  }

  v11 = 0;
  v44 = a1 + 32;
  result = MEMORY[0x1E69E7CC0];
  v41[2] = v2;
  while (1)
  {
    v50 = result;
    v46 = v11;
    v14 = *(v44 + (v11 << 6) + 32);
    v49[0] = v10;
    v15 = *(v14 + 16);
    if (v15)
    {
      v16 = v14 + ((*(v42 + 80) + 32) & ~*(v42 + 80));
      v17 = *(v42 + 72);
      v18 = v10;
      do
      {
        sub_1D5CED2F0(v16, v9);
        sub_1D5CED2F0(v9, v5);
        if (swift_getEnumCaseMultiPayload() == 2)
        {
          v19 = sub_1D5CED354(v9);
          MEMORY[0x1DA6F9CE0](v19);
          if (*((v49[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v49[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_1D726272C();
            v10 = MEMORY[0x1E69E7CC0];
          }

          sub_1D726278C();
          v18 = v49[0];
        }

        else
        {
          sub_1D5CED354(v5);
          sub_1D5CED354(v9);
        }

        v16 += v17;
        --v15;
      }

      while (v15);
    }

    else
    {
      v18 = v10;
    }

    v20 = v18 >> 62;
    v21 = v50;
    v48 = v18;
    if (v18 >> 62)
    {
      v22 = sub_1D7263BFC();
    }

    else
    {
      v22 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v23 = v21 >> 62;
    if (v21 >> 62)
    {
      v40 = sub_1D7263BFC();
      v25 = v40 + v22;
      if (__OFADD__(v40, v22))
      {
LABEL_41:
        __break(1u);
        return v10;
      }
    }

    else
    {
      v24 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v25 = v24 + v22;
      if (__OFADD__(v24, v22))
      {
        goto LABEL_41;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    if (result)
    {
      if (!v23)
      {
        v26 = v21 & 0xFFFFFFFFFFFFFF8;
        if (v25 <= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_25;
        }

        goto LABEL_24;
      }

LABEL_23:
      sub_1D7263BFC();
      goto LABEL_24;
    }

    if (v23)
    {
      goto LABEL_23;
    }

LABEL_24:
    result = sub_1D7263DDC();
    v21 = result;
    v26 = result & 0xFFFFFFFFFFFFFF8;
LABEL_25:
    v47 = v22;
    v50 = v21;
    v27 = *(v26 + 16);
    v28 = *(v26 + 24);
    if (v20)
    {
      break;
    }

    v29 = *((v48 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v29)
    {
      goto LABEL_3;
    }

LABEL_29:
    if (((v28 >> 1) - v27) < v47)
    {
      goto LABEL_45;
    }

    v31 = v26 + 8 * v27 + 32;
    v43 = v26;
    if (v20)
    {
      if (v29 < 1)
      {
        goto LABEL_47;
      }

      sub_1D6D5BC7C(0, &qword_1EDF1AEB0, &qword_1EDF3C770, &protocolRef_FCTagProviding, sub_1D5B5534C);
      sub_1D6D5BCD8();
      v32 = 0;
      v33 = v48;
      do
      {
        v34 = sub_1D6D87860(v49, v32, v33);
        v36 = *v35;
        swift_unknownObjectRetain();
        (v34)(v49, 0);
        *(v31 + 8 * v32++) = v36;
      }

      while (v29 != v32);
    }

    else
    {
      sub_1D5B5534C(0, &qword_1EDF3C770);
      swift_arrayInitWithCopy();
    }

    v13 = v46;
    v10 = MEMORY[0x1E69E7CC0];
    result = v50;
    if (v47 >= 1)
    {
      v37 = *(v43 + 16);
      v38 = __OFADD__(v37, v47);
      v39 = v37 + v47;
      if (v38)
      {
        goto LABEL_46;
      }

      *(v43 + 16) = v39;
    }

LABEL_4:
    v11 = v13 + 1;
    if (v11 == v45)
    {
      return result;
    }
  }

  v30 = v26;
  result = sub_1D7263BFC();
  v26 = v30;
  v29 = result;
  if (result)
  {
    goto LABEL_29;
  }

LABEL_3:

  v13 = v46;
  result = v50;
  if (v47 <= 0)
  {
    goto LABEL_4;
  }

  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
  return result;
}

uint64_t FormatContentSubgroup.ResolvedContainer.sections.getter()
{
  v1 = v0[1];
  v6[0] = *v0;
  v6[1] = v1;
  v2 = v0[3];
  v6[2] = v0[2];
  v6[3] = v2;
  v7 = v0[4];
  v3 = v7;
  sub_1D5CE9930(v6, &v5);

  return v3;
}

uint64_t FormatContentSubgroup.ResolvedContainer.options.getter()
{
  v1 = v0[1];
  v6[0] = *v0;
  v6[1] = v1;
  v2 = v0[3];
  v7 = v0[2];
  v8 = v2;
  v9 = v0[4];
  v3 = *(&v7 + 1);
  sub_1D5CE9930(v6, &v5);

  return v3;
}

uint64_t sub_1D6D5AF70(uint64_t a1)
{
  v3 = v1[1];
  v12 = *v1;
  v13 = v3;
  v4 = v1[3];
  v14 = v1[2];
  v5 = v1[4];
  v15 = v4;
  v16 = v5;
  v6 = *(&v5 + 1);
  sub_1D5CE9930(&v12, v11);

  v8 = 0;
  v9 = *(v6 + 16);
  while (1)
  {
    v10 = v8;
    if (v9 == v8)
    {
LABEL_5:

      return v9 == v10;
    }

    if (v8 >= *(v6 + 16))
    {
      break;
    }

    ++v8;
    v11[2] = v14;
    v11[3] = v15;
    v11[4] = v16;
    v11[0] = v12;
    v11[1] = v13;
    result = sub_1D69CE36C(a1, v11);
    if ((result & 1) == 0)
    {
      goto LABEL_5;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D6D5B118(uint64_t (*a1)(void))
{
  v3 = v1[1];
  v15[0] = *v1;
  v15[1] = v3;
  v4 = v1[4];
  *&v16[16] = v1[3];
  *&v16[32] = v4;
  *v16 = v1[2];
  v13[1] = v3;
  *&v14[24] = *&v16[24];
  *v14 = *v16 & 0x7FFFFFFFFFFFFFFFLL;
  *&v14[40] = *(&v4 + 1);
  v12 = *&v14[32];
  v13[0] = v15[0];
  *&v14[8] = *&v16[8];
  v11 = *&v14[16];
  v9 = v3;
  v10 = *v14;
  v8 = v15[0];
  sub_1D5CE9930(v15, v7);
  sub_1D5CEBCF0();
  v5 = a1();
  sub_1D5CB71DC(v13);

  return v5;
}

uint64_t FormatContentSubgroup.ResolvedContainer.selectors.getter()
{
  v1 = v0[1];
  v6[0] = *v0;
  v6[1] = v1;
  v2 = v0[3];
  v6[2] = v0[2];
  v6[3] = v2;
  v6[4] = v0[4];
  v3 = v2;
  sub_1D5CE9930(v6, &v5);

  return v3;
}

uint64_t FormatContentSubgroup.ResolvedContainer.encode(to:)(void *a1)
{
  sub_1D5C7F4D4(0, &qword_1EDF02690, MEMORY[0x1E69E6F58]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v18 - v8;
  v10 = v1[1];
  v19 = *v1;
  v20 = v10;
  v11 = v1[3];
  v21 = v1[2];
  v22 = v11;
  v12 = v1[4];
  v13 = v1[6];
  v14 = v1[7];
  v23 = v1[5];
  v24 = v13;
  v16 = v1[8];
  v15 = v1[9];
  v25 = v14;
  v26 = v16;
  v27 = v15;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5C7F538();
  sub_1D7264B5C();
  if (v12 < 0)
  {
    LOBYTE(v28) = 1;
    v38 = 0;
    sub_1D6D5B558();
    sub_1D726443C();
    if (!v2)
    {
      v28 = v19;
      v29 = v20;
      v30 = v21;
      v31 = v22;
      v32 = v12 & 0x7FFFFFFFFFFFFFFFLL;
      v33 = v23;
      v34 = v24;
      v35 = v25;
      v36 = v26;
      v37 = v27;
      v38 = 1;
      goto LABEL_6;
    }
  }

  else
  {
    LOBYTE(v28) = 0;
    v38 = 0;
    sub_1D6D5B558();
    sub_1D726443C();
    if (!v2)
    {
      v28 = v19;
      v29 = v20;
      v30 = v21;
      v31 = v22;
      v32 = v12;
      v33 = v23;
      v34 = v24;
      v35 = v25;
      v36 = v26;
      v37 = v27;
      v38 = 1;
LABEL_6:
      sub_1D6D5B5AC();
      sub_1D726443C();
    }
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_1D6D5B558()
{
  result = qword_1EDF0E378;
  if (!qword_1EDF0E378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0E378);
  }

  return result;
}

unint64_t sub_1D6D5B5AC()
{
  result = qword_1EDF0E320;
  if (!qword_1EDF0E320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0E320);
  }

  return result;
}

uint64_t sub_1D6D5B600(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 0x6E6967756C70;
  }

  else
  {
    v2 = 0x656E696C6E69;
  }

  if (*a2)
  {
    v3 = 0x6E6967756C70;
  }

  else
  {
    v3 = 0x656E696C6E69;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_1D72646CC();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

uint64_t sub_1D6D5B680()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D6D5B6F0()
{
  sub_1D72621EC();
}

uint64_t sub_1D6D5B744()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

void sub_1D6D5B7B0(uint64_t *a1@<X8>)
{
  v2 = 0x656E696C6E69;
  if (*v1)
  {
    v2 = 0x6E6967756C70;
  }

  *a1 = v2;
  a1[1] = 0xE600000000000000;
}

uint64_t sub_1D6D5B83C@<X0>(char *a1@<X8>)
{
  v2 = sub_1D72641CC();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

uint64_t sub_1D6D5B8A0(uint64_t a1)
{
  v2 = sub_1D5C7F538();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6D5B8DC(uint64_t a1)
{
  v2 = sub_1D5C7F538();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D6D5B930()
{
  v1 = v0[1];
  v6[0] = *v0;
  v6[1] = v1;
  v2 = v0[3];
  v6[2] = v0[2];
  v6[3] = v2;
  v6[4] = v0[4];
  v3 = *&v6[0];
  sub_1D5CE9930(v6, &v5);

  return v3;
}

uint64_t FormatContentSubgroup.ResolvedContainer.filters.getter()
{
  v1 = v0[1];
  v6[0] = *v0;
  v6[1] = v1;
  v2 = v0[3];
  v6[2] = v0[2];
  v6[3] = v2;
  v7 = v0[4];
  v3 = *(&v7 + 1);
  sub_1D5CE9930(v6, &v5);

  return v3;
}

uint64_t sub_1D6D5BACC(uint64_t (*a1)(uint64_t))
{
  v3 = v1[1];
  v11[0] = *v1;
  v11[1] = v3;
  v4 = v1[4];
  *&v12[16] = v1[3];
  *&v12[32] = v4;
  *v12 = v1[2];
  v9[1] = v3;
  *&v10[8] = *&v12[8];
  *&v10[24] = *&v12[24];
  *v10 = *v12 & 0x7FFFFFFFFFFFFFFFLL;
  *&v10[40] = *(&v4 + 1);
  v8[7] = *v10;
  v8[8] = *&v10[16];
  v8[9] = *&v10[32];
  v9[0] = v11[0];
  v8[5] = v11[0];
  v8[6] = v3;
  v5 = sub_1D5CE9930(v11, v8);
  v6 = a1(v5);
  sub_1D5CB71DC(v9);
  return v6;
}

unint64_t sub_1D6D5BBD0()
{
  result = qword_1EC895658;
  if (!qword_1EC895658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC895658);
  }

  return result;
}

unint64_t sub_1D6D5BC28()
{
  result = qword_1EC895660;
  if (!qword_1EC895660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC895660);
  }

  return result;
}

void sub_1D6D5BC7C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    a5(255, a3, a4);
    v6 = sub_1D72627FC();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

unint64_t sub_1D6D5BCD8()
{
  result = qword_1EC88E4D0;
  if (!qword_1EC88E4D0)
  {
    sub_1D6D5BC7C(255, &qword_1EDF1AEB0, &qword_1EDF3C770, &protocolRef_FCTagProviding, sub_1D5B5534C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88E4D0);
  }

  return result;
}

unint64_t sub_1D6D5BD5C()
{
  result = qword_1EC883200;
  if (!qword_1EC883200)
  {
    sub_1D6D5BC7C(255, &qword_1EDF04A18, &qword_1EDF3C750, &protocolRef_FCPuzzleProviding, sub_1D5B5534C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC883200);
  }

  return result;
}

unint64_t sub_1D6D5BDE0()
{
  result = qword_1EC88F470;
  if (!qword_1EC88F470)
  {
    sub_1D6D5BC7C(255, &qword_1EDF1AE40, &qword_1EDF3C6C0, 0x1E69B5348, sub_1D5B5A498);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88F470);
  }

  return result;
}

uint64_t FeedGroupRegion.__allocating_init(groupIdentifier:pluginModel:feedGroupDebug:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  FeedGroupRegion.init(groupIdentifier:pluginModel:feedGroupDebug:)(a1, a2, a3, a4);
  return v8;
}

uint64_t FeedGroupRegion.__allocating_init<A>(items:groupIdentifier:groupItems:namespace:kind:slots:layoutOrder:groupDebug:feedGroupBindingOptions:selectors:feedGroupContextIdentifier:feedGroupRevision:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, __int128 *a7, uint64_t a8, unsigned __int8 *a9, uint64_t a10, __int128 *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v17 = sub_1D5D60320(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17);

  return v17;
}

uint64_t FeedGroupRegion.feedGroupIdentifier.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t FeedGroupRegion.identifier.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t FeedGroupRegion.namespace.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

unint64_t FeedGroupRegion.feedGroupKind.getter@<X0>(unint64_t *a1@<X8>)
{
  v2 = v1[10];
  v3 = v1[11];
  v4 = v1[12];
  v5 = v1[13];
  v6 = v1[14];
  v7 = v1[15];
  v8 = v1[16];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
  a1[6] = v8;
  return sub_1D5D64F48(v2);
}

uint64_t FeedGroupRegion.feedGroupContextIdentifier.getter()
{
  v1 = *(v0 + 136);

  return v1;
}

__n128 FeedGroupRegion.feedGroupBindingOptions.getter@<Q0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 224);
  *a1 = *(v1 + 208);
  *(a1 + 16) = v3;
  *(a1 + 32) = *(v1 + 240);
  result = *(v1 + 250);
  *(a1 + 42) = result;
  return result;
}

__n128 FeedGroupRegion.feedGroupBindingOptions.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(a1 + 16);
  *(v1 + 208) = *a1;
  *(v1 + 224) = v3;
  *(v1 + 240) = *(a1 + 32);
  result = *(a1 + 42);
  *(v1 + 250) = result;
  return result;
}

uint64_t *FeedGroupRegion.__allocating_init<A>(items:namespace:kind:)(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, uint64_t a5, uint64_t a6)
{
  swift_allocObject();
  v12 = sub_1D6D5C800(a1, a2, a3, a4, a5, a6);

  return v12;
}

uint64_t *FeedGroupRegion.init<A>(items:namespace:kind:)(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, uint64_t a5, uint64_t a6)
{
  v6 = sub_1D6D5C800(a1, a2, a3, a4, a5, a6);

  return v6;
}

uint64_t FeedGroupRegion.init<A>(items:groupIdentifier:groupItems:namespace:kind:slots:layoutOrder:groupDebug:feedGroupBindingOptions:selectors:feedGroupContextIdentifier:feedGroupRevision:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, __int128 *a7, uint64_t a8, unsigned __int8 *a9, uint64_t a10, __int128 *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v17 = sub_1D5D603F8(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17);

  return v17;
}

uint64_t FeedGroupRegion.__allocating_init(identifier:groupIdentifier:groupItems:namespace:kind:slots:layoutOrder:groupDebug:feedGroupBindingOptions:selectors:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char *a10, uint64_t a11, _OWORD *a12, uint64_t a13)
{
  v18 = swift_allocObject();
  v26 = *(a8 + 32);
  v27 = *(a8 + 48);
  v28 = *a10;
  *(v18 + 224) = 0u;
  *(v18 + 240) = 0u;
  *(v18 + 208) = 0u;
  *(v18 + 249) = 0u;
  *(v18 + 265) = 1;
  *(v18 + 16) = a3;
  *(v18 + 24) = a4;

  MEMORY[0x1DA6F9910](14906, 0xE200000000000000);
  MEMORY[0x1DA6F9910](a1, a2);

  *(v18 + 32) = a6;
  *(v18 + 40) = a7;
  *(v18 + 64) = MEMORY[0x1E69E7CC0];
  *(v18 + 72) = a5;
  *(v18 + 48) = a6;
  *(v18 + 56) = a7;
  v19 = *(a8 + 16);
  *(v18 + 80) = *a8;
  *(v18 + 96) = v19;
  *(v18 + 112) = v26;
  *(v18 + 128) = v27;
  *(v18 + 136) = 0;
  *(v18 + 144) = 0xE000000000000000;
  *(v18 + 152) = a9;
  *(v18 + 160) = v28;
  v20 = *(a11 + 16);
  *(v18 + 168) = *a11;
  *(v18 + 184) = v20;
  *(v18 + 200) = *(a11 + 32);
  swift_beginAccess();
  v21 = a12[1];
  *(v18 + 208) = *a12;
  v22 = a12[2];
  *(v18 + 224) = v21;
  *(v18 + 240) = v22;
  *(v18 + 250) = *(a12 + 42);
  *(v18 + 272) = a13;
  return v18;
}

uint64_t FeedGroupRegion.init(identifier:groupIdentifier:groupItems:namespace:kind:slots:layoutOrder:groupDebug:feedGroupBindingOptions:selectors:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char *a10, uint64_t a11, _OWORD *a12, uint64_t a13)
{
  v24 = *(a8 + 32);
  v25 = *(a8 + 48);
  v26 = *a10;
  *(v13 + 224) = 0u;
  *(v13 + 240) = 0u;
  *(v13 + 208) = 0u;
  *(v13 + 249) = 0u;
  *(v13 + 265) = 1;
  *(v13 + 16) = a3;
  *(v13 + 24) = a4;

  MEMORY[0x1DA6F9910](14906, 0xE200000000000000);
  MEMORY[0x1DA6F9910](a1, a2);

  *(v13 + 32) = a6;
  *(v13 + 40) = a7;
  *(v13 + 64) = MEMORY[0x1E69E7CC0];
  *(v13 + 72) = a5;
  *(v13 + 48) = a6;
  *(v13 + 56) = a7;
  v19 = *(a8 + 16);
  *(v13 + 80) = *a8;
  *(v13 + 96) = v19;
  *(v13 + 112) = v24;
  *(v13 + 128) = v25;
  *(v13 + 136) = 0;
  *(v13 + 144) = 0xE000000000000000;
  *(v13 + 152) = a9;
  *(v13 + 160) = v26;
  v20 = *(a11 + 16);
  *(v13 + 168) = *a11;
  *(v13 + 184) = v20;
  *(v13 + 200) = *(a11 + 32);
  swift_beginAccess();
  v21 = a12[1];
  *(v13 + 208) = *a12;
  v22 = a12[2];
  *(v13 + 224) = v21;
  *(v13 + 240) = v22;
  *(v13 + 250) = *(a12 + 42);
  *(v13 + 272) = a13;
  return v13;
}

uint64_t FeedGroupRegion.init(groupIdentifier:pluginModel:feedGroupDebug:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  *(v4 + 224) = 0u;
  *(v4 + 240) = 0u;
  *(v4 + 249) = 0u;
  *(v4 + 208) = 0u;
  v8 = (v4 + 208);
  *(v4 + 265) = 1;
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  *(v4 + 32) = _s5TeaUI11PluginModelC8NewsFeedE15debugIdentifierSSvg_0();
  *(v4 + 40) = v9;
  sub_1D725CC0C();
  sub_1D5E4049C();
  *(v4 + 136) = sub_1D7263ADC();
  *(v4 + 144) = v10;
  sub_1D6D5CBE0(0, &qword_1EDF02218, type metadata accessor for FeedItem, MEMORY[0x1E69E6F90]);
  v11 = *(type metadata accessor for FeedItem(0) - 8);
  v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1D7273AE0;
  *(v13 + v12) = a3;
  swift_storeEnumTagMultiPayload();
  v14 = MEMORY[0x1E69E7CD0];
  *(v5 + 64) = v13;
  *(v5 + 72) = v14;
  *(v5 + 48) = 0;
  *(v5 + 56) = 0xE000000000000000;
  *(v5 + 80) = 0x8000000000000050;
  *(v5 + 88) = 0u;
  *(v5 + 104) = 0u;
  *(v5 + 120) = 0u;
  *(v5 + 152) = MEMORY[0x1E69E7CC0];
  *(v5 + 160) = 1;
  sub_1D5D64DD0(a4, v5 + 168);
  swift_beginAccess();
  *(v5 + 249) = 0u;
  *(v5 + 224) = 0u;
  *(v5 + 240) = 0u;
  *v8 = 0u;
  *(v5 + 265) = 1;
  sub_1D6330678(a4);
  *(v5 + 272) = v14;
  return v5;
}

uint64_t FeedGroupRegion.deinit()
{

  sub_1D5BC6C20(*(v0 + 80));

  sub_1D6330678(v0 + 168);

  return v0;
}

uint64_t FeedGroupRegion.__deallocating_deinit()
{
  FeedGroupRegion.deinit();

  return swift_deallocClassInstance();
}

uint64_t *sub_1D6D5C800(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v11 = *v6;
  v12 = *a4;
  v42 = a4[1];
  v43 = v12;
  v13 = *(a4 + 4);
  v40 = *(a4 + 5);
  v41 = v13;
  v39 = *(a4 + 6);
  v53 = 1;
  *(v6 + 13) = 0u;
  *(v6 + 14) = 0u;
  *(v6 + 15) = 0u;
  *(v6 + 249) = 0u;
  *(v6 + 265) = 1;
  v6[2] = a2;
  v6[3] = a3;
  v44 = a2;
  v51 = a2;
  v52 = a3;
  v36[4] = v11;
  v45 = a3;
  swift_bridgeObjectRetain_n();
  MEMORY[0x1DA6F9910](14906, 0xE200000000000000);
  v46 = a1;
  v50 = a1;
  v48 = a5;
  v49 = a6;
  v38 = a6;
  v14 = sub_1D72627FC();
  WitnessTable = swift_getWitnessTable();
  v50 = sub_1D5B874E4(sub_1D6D5CCF4, v47, v14, MEMORY[0x1E69E6158], MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v15);
  sub_1D5BBE0A8();
  sub_1D5D60824(&qword_1EDF3C840, 255, sub_1D5BBE0A8);
  v16 = sub_1D7261F3C();
  v18 = v17;

  MEMORY[0x1DA6F9910](v16, v18);

  v20 = v52;
  v6[4] = v51;
  v6[5] = v20;
  v51 = v46;
  MEMORY[0x1EEE9AC00](v19, v21);
  v22 = v38;
  swift_getWitnessTable();
  v51 = sub_1D726242C();
  v23 = sub_1D7261F3C();
  v25 = v24;

  v7[17] = v23;
  v7[18] = v25;
  v51 = v46;
  MEMORY[0x1EEE9AC00](v26, v27);
  v36[2] = a5;
  v36[3] = v22;
  v28 = type metadata accessor for FeedItem(0);
  v30 = sub_1D5B874E4(sub_1D6D5CD0C, v36, v14, v28, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v29);
  v31 = MEMORY[0x1E69E7CD0];
  v7[8] = v30;
  v7[9] = v31;
  v32 = v45;
  v7[6] = v44;
  v7[7] = v32;
  v33 = v42;
  *(v7 + 5) = v43;
  *(v7 + 6) = v33;
  v34 = v40;
  v7[14] = v41;
  v7[15] = v34;
  v7[16] = v39;
  v7[19] = MEMORY[0x1E69E7CC0];
  *(v7 + 160) = 0;
  *(v7 + 21) = 0u;
  *(v7 + 23) = 0u;
  v7[25] = 0;
  v7[34] = v31;
  return v7;
}

void sub_1D6D5CBE0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

unint64_t sub_1D6D5CD3C(uint64_t a1)
{
  sub_1D5E4CF90();
  v3 = v2;
  v5 = MEMORY[0x1EEE9AC00](v2, v4);
  (*(v7 + 16))(&v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3, v5);
  sub_1D5B4A39C(&unk_1EDF17890, sub_1D5E4CF90);
  sub_1D726238C();
  i = v40;
  if (v40 >> 62)
  {
    goto LABEL_51;
  }

  v9 = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v10 = v41;
  v33 = i;
  if (v41 != v9)
  {
    v36 = i & 0xFFFFFFFFFFFFFF8;
    v37 = i & 0xC000000000000001;
    v11 = MEMORY[0x1E69E7CC0];
    v34 = v9;
    v35 = i + 32;
    while (1)
    {
      if (v37)
      {
        v13 = MEMORY[0x1DA6FB460](v10, v33);
        v14 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          goto LABEL_45;
        }
      }

      else
      {
        if ((v10 & 0x8000000000000000) != 0)
        {
          goto LABEL_44;
        }

        if (v10 >= *(v36 + 16))
        {
          goto LABEL_46;
        }

        v13 = *(v35 + 8 * v10);

        v14 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          goto LABEL_45;
        }
      }

      v41 = v14;
      v15 = *(v13 + 32);

      i = v15 >> 62;
      v16 = v15 >> 62 ? sub_1D7263BFC() : *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v17 = v11 >> 62;
      if (v11 >> 62)
      {
        v31 = sub_1D7263BFC();
        v19 = v31 + v16;
        if (__OFADD__(v31, v16))
        {
LABEL_43:
          __break(1u);
LABEL_44:
          __break(1u);
LABEL_45:
          __break(1u);
LABEL_46:
          __break(1u);
LABEL_47:
          __break(1u);
LABEL_48:
          __break(1u);
LABEL_49:
          __break(1u);
LABEL_50:
          __break(1u);
LABEL_51:
          v9 = sub_1D7263BFC();
          goto LABEL_3;
        }
      }

      else
      {
        v18 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v19 = v18 + v16;
        if (__OFADD__(v18, v16))
        {
          goto LABEL_43;
        }
      }

      if (swift_isUniquelyReferenced_nonNull_bridgeObject())
      {
        break;
      }

      if (v17)
      {
        goto LABEL_22;
      }

LABEL_23:
      v11 = sub_1D7263DDC();
      v20 = v11 & 0xFFFFFFFFFFFFFF8;
LABEL_24:
      v21 = *(v20 + 16);
      v22 = *(v20 + 24);
      if (i)
      {
        v23 = sub_1D7263BFC();
        if (v23)
        {
LABEL_28:
          if (((v22 >> 1) - v21) < v16)
          {
            goto LABEL_48;
          }

          v42 = v11;
          v24 = v20 + 8 * v21 + 32;
          v38 = v16;
          if (i)
          {
            if (v23 < 1)
            {
              goto LABEL_50;
            }

            sub_1D5F87C68();
            sub_1D5B4A39C(&qword_1EDF049F8, sub_1D5F87C68);
            for (i = 0; i != v23; ++i)
            {
              v25 = sub_1D6D87760(v39, i, v15);
              v27 = *v26;
              swift_unknownObjectRetain();
              (v25)(v39, 0);
              *(v24 + 8 * i) = v27;
            }
          }

          else
          {
            sub_1D5B5534C(0, &qword_1EDF04500);
            swift_arrayInitWithCopy();
          }

          v9 = v34;
          v11 = v42;
          if (v38 >= 1)
          {
            v28 = *(v20 + 16);
            v29 = __OFADD__(v28, v38);
            v30 = v28 + v38;
            if (v29)
            {
              goto LABEL_49;
            }

            *(v20 + 16) = v30;
          }

          goto LABEL_8;
        }
      }

      else
      {
        v23 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v23)
        {
          goto LABEL_28;
        }
      }

      if (v16 > 0)
      {
        goto LABEL_47;
      }

LABEL_8:
      v10 = v41;
      if (v41 == v9)
      {
        goto LABEL_5;
      }
    }

    if (!v17)
    {
      v20 = v11 & 0xFFFFFFFFFFFFFF8;
      if (v19 <= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        goto LABEL_24;
      }

      goto LABEL_23;
    }

LABEL_22:
    sub_1D7263BFC();
    goto LABEL_23;
  }

  v11 = MEMORY[0x1E69E7CC0];
LABEL_5:

  return v11;
}

uint64_t FormatContentPool.init(headlines:headlineLists:issues:tags:tagFeeds:tagFeedFetches:puzzles:puzzleTypes:puzzleStatistics:recipes:recipeLists:placeholders:slotPlaceholders:webArchivePromises:resourcePromises:sportsDataVisualizations:genericDataVisualizations:sponsoredAdBanner:)@<X0>(unint64_t isUniquelyReferenced_nonNull_native@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, unint64_t a8@<X7>, id **a9@<X8>, uint64_t a10, unint64_t a11, id *a12, void *a13, void *a14, id *a15, id *a16, unint64_t a17, id *a18, unint64_t a19)
{
  v534 = a8;
  v531 = a6;
  v529 = a5;
  v539 = a4;
  v532 = a2;
  v530 = a9;
  v528 = type metadata accessor for PuzzleStatistic();
  v527 = *(v528 - 8);
  MEMORY[0x1EEE9AC00](v528, v22);
  v540 = &v527 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x1EEE9AC00](v24, v25);
  v28 = (&v527 - v27);
  if (isUniquelyReferenced_nonNull_native >> 62)
  {
    goto LABEL_52;
  }

  for (i = *((isUniquelyReferenced_nonNull_native & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1D7263BFC())
  {
    v541 = a3;
    v535 = a7;
    v533 = v28;
    a3 = &selRef_accountStore;
    if (i)
    {
      v30 = 0;
      v537 = isUniquelyReferenced_nonNull_native & 0xFFFFFFFFFFFFFF8;
      v538 = isUniquelyReferenced_nonNull_native & 0xC000000000000001;
      v28 = MEMORY[0x1E69E7CC8];
      v536 = isUniquelyReferenced_nonNull_native;
      while (1)
      {
        if (v538)
        {
          v32 = MEMORY[0x1DA6FB460](v30, isUniquelyReferenced_nonNull_native, v26);
          v33 = v30 + 1;
          if (__OFADD__(v30, 1))
          {
            goto LABEL_44;
          }
        }

        else
        {
          if (v30 >= *(v537 + 16))
          {
            goto LABEL_45;
          }

          v32 = *(isUniquelyReferenced_nonNull_native + 8 * v30 + 32);
          swift_unknownObjectRetain();
          v33 = v30 + 1;
          if (__OFADD__(v30, 1))
          {
LABEL_44:
            __break(1u);
LABEL_45:
            __break(1u);
LABEL_46:
            __break(1u);
            goto LABEL_47;
          }
        }

        v34 = [v32 identifier];
        a7 = sub_1D726207C();
        v36 = v35;

        swift_unknownObjectRetain();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v549 = v28;
        a3 = sub_1D5B69D90(a7, v36);
        v38 = v28[2];
        v39 = (v37 & 1) == 0;
        v40 = v38 + v39;
        if (__OFADD__(v38, v39))
        {
          goto LABEL_46;
        }

        v41 = v37;
        if (v28[3] >= v40)
        {
          if (isUniquelyReferenced_nonNull_native)
          {
            if (v37)
            {
              goto LABEL_5;
            }
          }

          else
          {
            sub_1D6D7D9AC(sub_1D6D8C5CC);
            if (v41)
            {
              goto LABEL_5;
            }
          }
        }

        else
        {
          sub_1D6D663A8(v40, isUniquelyReferenced_nonNull_native, sub_1D6D8C5CC);
          v42 = sub_1D5B69D90(a7, v36);
          if ((v41 & 1) != (v43 & 1))
          {
LABEL_449:
            result = sub_1D726493C();
            __break(1u);
            return result;
          }

          a3 = v42;
          if (v41)
          {
LABEL_5:

            v28 = v549;
            v31 = v549[7];
            a7 = v31[a3];
            v31[a3] = v32;
            swift_unknownObjectRelease();
            swift_unknownObjectRelease();
            goto LABEL_6;
          }
        }

        v28 = v549;
        v549[(a3 >> 6) + 8] = (v549[(a3 >> 6) + 8] | (1 << a3));
        v44 = (v28[6] + 16 * a3);
        *v44 = a7;
        v44[1] = v36;
        *(v28[7] + a3) = v32;
        swift_unknownObjectRelease();
        v45 = v28[2];
        v46 = __OFADD__(v45, 1);
        v47 = v45 + 1;
        if (v46)
        {
          goto LABEL_50;
        }

        v28[2] = v47;
LABEL_6:
        ++v30;
        a3 = &selRef_accountStore;
        isUniquelyReferenced_nonNull_native = v536;
        if (v33 == i)
        {
          goto LABEL_25;
        }
      }
    }

    v28 = MEMORY[0x1E69E7CC8];
LABEL_25:

    v48 = v530;
    v49 = v532;
    *v530 = v28;
    v48[1] = v49;
    v50 = v541;
    if (v541 >> 62)
    {
      break;
    }

    v51 = *((v541 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v51)
    {
      goto LABEL_54;
    }

LABEL_27:
    v52 = 0;
    v538 = v50 & 0xC000000000000001;
    v53 = v50 & 0xFFFFFFFFFFFFFF8;
    v28 = MEMORY[0x1E69E7CC8];
    while (1)
    {
      if (v538)
      {
        v56 = MEMORY[0x1DA6FB460](v52, v50);
      }

      else
      {
        if (v52 >= *(v53 + 16))
        {
          goto LABEL_48;
        }

        v56 = *(v50 + 8 * v52 + 32);
      }

      a7 = v56;
      isUniquelyReferenced_nonNull_native = v52 + 1;
      if (__OFADD__(v52, 1))
      {
        break;
      }

      v57 = [v56 identifier];
      v58 = sub_1D726207C();
      v60 = v59;

      v55 = a7;
      a3 = swift_isUniquelyReferenced_nonNull_native();
      v549 = v28;
      v61 = sub_1D5B69D90(v58, v60);
      v63 = v28[2];
      v64 = (v62 & 1) == 0;
      v46 = __OFADD__(v63, v64);
      v65 = v63 + v64;
      if (v46)
      {
        goto LABEL_49;
      }

      a7 = v62;
      if (v28[3] >= v65)
      {
        if ((a3 & 1) == 0)
        {
          v70 = v61;
          sub_1D6D7D3E8(sub_1D6D8C554);
          v61 = v70;
        }
      }

      else
      {
        sub_1D5C416B4(v65, a3, sub_1D6D8C554);
        v61 = sub_1D5B69D90(v58, v60);
        if ((a7 & 1) != (v66 & 1))
        {
          goto LABEL_449;
        }
      }

      a3 = &selRef_accountStore;
      v28 = v549;
      if (a7)
      {
        v54 = v549[7];
        a7 = v54[v61];
        v54[v61] = v55;

        v55 = a7;
      }

      else
      {
        v549[(v61 >> 6) + 8] = (v549[(v61 >> 6) + 8] | (1 << v61));
        v67 = (v28[6] + 16 * v61);
        *v67 = v58;
        v67[1] = v60;
        *(v28[7] + v61) = v55;
        v68 = v28[2];
        v46 = __OFADD__(v68, 1);
        v69 = v68 + 1;
        if (v46)
        {
          goto LABEL_51;
        }

        v28[2] = v69;
      }

      ++v52;
      v50 = v541;
      if (isUniquelyReferenced_nonNull_native == v51)
      {
        goto LABEL_55;
      }
    }

LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    ;
  }

  v71 = v541;
  v51 = sub_1D7263BFC();
  v50 = v71;
  if (v51)
  {
    goto LABEL_27;
  }

LABEL_54:
  v28 = MEMORY[0x1E69E7CC8];
LABEL_55:

  v530[2] = v28;
  v72 = v539;
  if (v539 >> 62)
  {
    goto LABEL_78;
  }

  v73 = *((v539 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v73)
  {
LABEL_57:
    v74 = 0;
    v541 = v72 & 0xC000000000000001;
    v75 = v72 & 0xFFFFFFFFFFFFFF8;
    v76 = MEMORY[0x1E69E7CC8];
    while (1)
    {
      if (v541)
      {
        v77 = MEMORY[0x1DA6FB460](v74);
        v78 = v74 + 1;
        if (__OFADD__(v74, 1))
        {
          goto LABEL_74;
        }
      }

      else
      {
        if (v74 >= *(v75 + 16))
        {
          goto LABEL_75;
        }

        v77 = *(v72 + 8 * v74 + 32);
        swift_unknownObjectRetain();
        v78 = v74 + 1;
        if (__OFADD__(v74, 1))
        {
LABEL_74:
          __break(1u);
LABEL_75:
          __break(1u);
LABEL_76:
          __break(1u);
LABEL_77:
          __break(1u);
LABEL_78:
          v94 = sub_1D7263BFC();
          v72 = v539;
          v73 = v94;
          if (!v94)
          {
            break;
          }

          goto LABEL_57;
        }
      }

      v79 = [v77 *(a3 + 248)];
      v80 = sub_1D726207C();
      v82 = v81;

      swift_unknownObjectRetain();
      a3 = swift_isUniquelyReferenced_nonNull_native();
      v549 = v76;
      v83 = sub_1D5B69D90(v80, v82);
      v85 = v76[2];
      v86 = (v84 & 1) == 0;
      v46 = __OFADD__(v85, v86);
      v87 = v85 + v86;
      if (v46)
      {
        goto LABEL_76;
      }

      v88 = v84;
      if (v76[3] >= v87)
      {
        if ((a3 & 1) == 0)
        {
          v93 = v83;
          sub_1D6D7D9AC(sub_1D6D8C4DC);
          v83 = v93;
        }
      }

      else
      {
        sub_1D6D663A8(v87, a3, sub_1D6D8C4DC);
        v83 = sub_1D5B69D90(v80, v82);
        if ((v88 & 1) != (v89 & 1))
        {
          goto LABEL_449;
        }
      }

      a3 = &selRef_accountStore;
      v76 = v549;
      if (v88)
      {
        *(v549[7] + v83) = v77;

        swift_unknownObjectRelease();
      }

      else
      {
        v549[(v83 >> 6) + 8] = (v549[(v83 >> 6) + 8] | (1 << v83));
        v90 = (v76[6] + 16 * v83);
        *v90 = v80;
        v90[1] = v82;
        *(v76[7] + v83) = v77;
        v91 = v76[2];
        v46 = __OFADD__(v91, 1);
        v92 = v91 + 1;
        if (v46)
        {
          goto LABEL_77;
        }

        v76[2] = v92;
      }

      swift_unknownObjectRelease();
      ++v74;
      v72 = v539;
      if (v78 == v73)
      {
        goto LABEL_80;
      }
    }
  }

  v76 = MEMORY[0x1E69E7CC8];
LABEL_80:

  v95 = v530;
  v96 = v529;
  v530[3] = v76;
  v95[4] = v96;
  v541 = (v95 + 3);
  v95[5] = v531;
  v97 = v535;
  if (v535 >> 62)
  {
    goto LABEL_105;
  }

  v98 = *((v535 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v98)
  {
LABEL_82:
    v99 = 0;
    v538 = v97 & 0xFFFFFFFFFFFFFF8;
    v539 = v97 & 0xC000000000000001;
    v100 = MEMORY[0x1E69E7CC8];
    while (1)
    {
      if (v539)
      {
        v97 = MEMORY[0x1DA6FB460](v99, v97);
        v101 = v97;
        v102 = v99 + 1;
        if (__OFADD__(v99, 1))
        {
          goto LABEL_101;
        }
      }

      else
      {
        if (v99 >= *(v538 + 16))
        {
          goto LABEL_102;
        }

        v101 = *(v97 + 8 * v99 + 32);
        v97 = swift_unknownObjectRetain();
        v102 = v99 + 1;
        if (__OFADD__(v99, 1))
        {
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          v118 = v97;
          v98 = sub_1D7263BFC();
          v97 = v118;
          if (!v98)
          {
            goto LABEL_106;
          }

          goto LABEL_82;
        }
      }

      v103 = [v101 *(a3 + 248)];
      v104 = sub_1D726207C();
      v106 = v105;

      swift_unknownObjectRetain();
      v107 = swift_isUniquelyReferenced_nonNull_native();
      v549 = v100;
      v97 = sub_1D5B69D90(v104, v106);
      v109 = v100[2];
      v110 = (v108 & 1) == 0;
      v46 = __OFADD__(v109, v110);
      v111 = v109 + v110;
      if (v46)
      {
        goto LABEL_103;
      }

      v112 = v108;
      if (v100[3] < v111)
      {
        break;
      }

      if (v107)
      {
        goto LABEL_93;
      }

      v117 = v97;
      sub_1D6D7D9AC(sub_1D6D8C464);
      v97 = v117;
      a3 = 0x1E84D8000;
      v100 = v549;
      if (v112)
      {
LABEL_83:
        *(v100[7] + v97) = v101;

        swift_unknownObjectRelease();
        goto LABEL_84;
      }

LABEL_94:
      v100[(v97 >> 6) + 8] = (v100[(v97 >> 6) + 8] | (1 << v97));
      v114 = (v100[6] + 16 * v97);
      *v114 = v104;
      v114[1] = v106;
      *(v100[7] + v97) = v101;
      v115 = v100[2];
      v46 = __OFADD__(v115, 1);
      v116 = v115 + 1;
      if (v46)
      {
        goto LABEL_104;
      }

      v100[2] = v116;
LABEL_84:
      swift_unknownObjectRelease();
      ++v99;
      v97 = v535;
      if (v102 == v98)
      {
        goto LABEL_107;
      }
    }

    sub_1D6D663A8(v111, v107, sub_1D6D8C464);
    v97 = sub_1D5B69D90(v104, v106);
    if ((v112 & 1) != (v113 & 1))
    {
      goto LABEL_449;
    }

LABEL_93:
    v100 = v549;
    if (v112)
    {
      goto LABEL_83;
    }

    goto LABEL_94;
  }

LABEL_106:
  v100 = MEMORY[0x1E69E7CC8];
LABEL_107:

  v530[6] = v100;
  v119 = v534;
  if (v534 >> 62)
  {
    goto LABEL_132;
  }

  v120 = *((v534 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v120)
  {
LABEL_109:
    v121 = 0;
    v538 = v119 & 0xFFFFFFFFFFFFFF8;
    v539 = v119 & 0xC000000000000001;
    v122 = MEMORY[0x1E69E7CC8];
    while (1)
    {
      if (v539)
      {
        v123 = MEMORY[0x1DA6FB460](v121);
        v124 = v121 + 1;
        if (__OFADD__(v121, 1))
        {
          goto LABEL_128;
        }
      }

      else
      {
        if (v121 >= *(v538 + 16))
        {
          goto LABEL_129;
        }

        v123 = *(v119 + 8 * v121 + 32);
        swift_unknownObjectRetain();
        v124 = v121 + 1;
        if (__OFADD__(v121, 1))
        {
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          v141 = sub_1D7263BFC();
          v119 = v534;
          v120 = v141;
          if (!v141)
          {
            goto LABEL_133;
          }

          goto LABEL_109;
        }
      }

      v125 = [v123 *(a3 + 248)];
      v126 = sub_1D726207C();
      v128 = v127;

      swift_unknownObjectRetain();
      v129 = swift_isUniquelyReferenced_nonNull_native();
      v549 = v122;
      v130 = sub_1D5B69D90(v126, v128);
      v132 = v122[2];
      v133 = (v131 & 1) == 0;
      v46 = __OFADD__(v132, v133);
      v134 = v132 + v133;
      if (v46)
      {
        goto LABEL_130;
      }

      v135 = v131;
      if (v122[3] < v134)
      {
        break;
      }

      if (v129)
      {
        goto LABEL_120;
      }

      v140 = v130;
      sub_1D6D7D9AC(sub_1D6D8C3EC);
      v130 = v140;
      a3 = 0x1E84D8000;
      v122 = v549;
      if (v135)
      {
LABEL_110:
        *(v122[7] + v130) = v123;

        swift_unknownObjectRelease();
        goto LABEL_111;
      }

LABEL_121:
      v122[(v130 >> 6) + 8] = (v122[(v130 >> 6) + 8] | (1 << v130));
      v137 = (v122[6] + 16 * v130);
      *v137 = v126;
      v137[1] = v128;
      *(v122[7] + v130) = v123;
      v138 = v122[2];
      v46 = __OFADD__(v138, 1);
      v139 = v138 + 1;
      if (v46)
      {
        goto LABEL_131;
      }

      v122[2] = v139;
LABEL_111:
      swift_unknownObjectRelease();
      ++v121;
      v119 = v534;
      if (v124 == v120)
      {
        goto LABEL_134;
      }
    }

    sub_1D6D663A8(v134, v129, sub_1D6D8C3EC);
    v130 = sub_1D5B69D90(v126, v128);
    if ((v135 & 1) != (v136 & 1))
    {
      goto LABEL_449;
    }

LABEL_120:
    v122 = v549;
    if (v135)
    {
      goto LABEL_110;
    }

    goto LABEL_121;
  }

LABEL_133:
  v122 = MEMORY[0x1E69E7CC8];
LABEL_134:

  v530[7] = v122;
  v142 = *(a10 + 16);
  if (v142)
  {
    v143 = *(v527 + 80);
    v539 = *(v528 + 20);
    v529 = a10;
    v144 = a10 + ((v143 + 32) & ~v143);
    v145 = *(v527 + 72);
    v537 = 0x80000001D73B7450;
    v538 = 0x80000001D73B7480;
    v535 = 0x80000001D73B7410;
    v536 = 0x80000001D73B7430;
    v534 = 0x80000001D73B73F0;
    v146 = MEMORY[0x1E69E7CC8];
    v531 = v145;
    v532 = 0xD000000000000015;
    v147 = v533;
    do
    {
      sub_1D6D878E8(v144, v147);
      v148 = v147;
      v149 = [*v147 *(a3 + 248)];
      v150 = sub_1D726207C();
      v152 = v151;

      PuzzleStatisticCategory.statisticType.getter(&v548);
      v153 = 0x53646570756F7267;
      if (v548 != 9)
      {
        v153 = v532;
      }

      v154 = v538;
      if (v548 == 9)
      {
        v154 = 0xEC00000073746174;
      }

      if (v548 == 8)
      {
        v153 = 0xD00000000000001DLL;
      }

      v155 = v536;
      if (v548 == 8)
      {
        v154 = v537;
      }

      if (v548 == 6)
      {
        v156 = 0xD00000000000001CLL;
      }

      else
      {
        v156 = 0xD00000000000001DLL;
      }

      if (v548 == 6)
      {
        v155 = v535;
      }

      if (v548 == 5)
      {
        v156 = 0xD00000000000001CLL;
        v155 = v534;
      }

      if (v548 <= 7u)
      {
        v153 = v156;
        v154 = v155;
      }

      v157 = 0x5374636566726570;
      if (v548 != 3)
      {
        v157 = 0x74615265766C6F73;
      }

      v158 = 0xE900000000000065;
      if (v548 == 3)
      {
        v158 = 0xED00006465766C6FLL;
      }

      if (v548 == 2)
      {
        v157 = 0x5373656C7A7A7570;
        v158 = 0xED00006465766C6FLL;
      }

      v159 = 0x53747365676E6F6CLL;
      if (v548)
      {
        v159 = 0x53746E6572727563;
      }

      if (v548 <= 1u)
      {
        v157 = v159;
        v158 = 0xED00006B61657274;
      }

      if (v548 <= 4u)
      {
        v160 = v157;
      }

      else
      {
        v160 = v153;
      }

      if (v548 <= 4u)
      {
        v161 = v158;
      }

      else
      {
        v161 = v154;
      }

      v549 = v150;
      v550 = v152;

      MEMORY[0x1DA6F9910](v160, v161);

      v163 = v549;
      v162 = v550;
      sub_1D6D878E8(v148, v540);
      v164 = swift_isUniquelyReferenced_nonNull_native();
      v549 = v146;
      v165 = sub_1D5B69D90(v163, v162);
      v167 = v146[2];
      v168 = (v166 & 1) == 0;
      v46 = __OFADD__(v167, v168);
      v169 = v167 + v168;
      if (v46)
      {
LABEL_424:
        __break(1u);
        goto LABEL_425;
      }

      v170 = v166;
      if (v146[3] >= v169)
      {
        v147 = v533;
        if ((v164 & 1) == 0)
        {
          v176 = v165;
          sub_1D6D7E474(type metadata accessor for PuzzleStatistic, sub_1D6D8C0AC, sub_1D6D878E8, sub_1D6D87900);
          v147 = v533;
          v165 = v176;
        }
      }

      else
      {
        sub_1D5D5DF18(v169, v164, type metadata accessor for PuzzleStatistic, sub_1D6D8C0AC, sub_1D6D87900, sub_1D6D878E8);
        v165 = sub_1D5B69D90(v163, v162);
        if ((v170 & 1) != (v171 & 1))
        {
          goto LABEL_449;
        }

        v147 = v533;
      }

      v172 = v531;
      v146 = v549;
      if (v170)
      {
        sub_1D6D88C1C(v540, v549[7] + v165 * v531, type metadata accessor for PuzzleStatistic);
      }

      else
      {
        v549[(v165 >> 6) + 8] = (v549[(v165 >> 6) + 8] | (1 << v165));
        v173 = (v146[6] + 16 * v165);
        *v173 = v163;
        v173[1] = v162;
        sub_1D6D87900(v540, v146[7] + v165 * v172);
        v174 = v146[2];
        v46 = __OFADD__(v174, 1);
        v175 = v174 + 1;
        if (v46)
        {
          goto LABEL_438;
        }

        v146[2] = v175;
      }

      sub_1D5CEB1A0(v147, type metadata accessor for PuzzleStatistic);
      v144 += v172;
      --v142;
    }

    while (v142);
  }

  else
  {

    v146 = MEMORY[0x1E69E7CC8];
  }

  v144 = a11;
  v530[8] = v146;
  if (a11 >> 62)
  {
    goto LABEL_448;
  }

  for (j = *((a11 & 0xFFFFFFFFFFFFFF8) + 0x10); ; j = sub_1D7263BFC())
  {
    v178 = MEMORY[0x1E69E7CC8];
    if (!j)
    {
      break;
    }

    v179 = 0;
    v540 = v144 & 0xC000000000000001;
    v180 = v144 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v540)
      {
        v181 = MEMORY[0x1DA6FB460](v179, v144);
      }

      else
      {
        if (v179 >= *(v180 + 16))
        {
          goto LABEL_426;
        }

        v181 = *(v144 + 8 * v179 + 32);
      }

      v182 = v181;
      v183 = v179 + 1;
      if (__OFADD__(v179, 1))
      {
        break;
      }

      v184 = v144;
      v185 = [v181 identifier];
      v186 = sub_1D726207C();
      v188 = v187;

      v144 = v184;
      v189 = v182;
      v190 = swift_isUniquelyReferenced_nonNull_native();
      v549 = v178;
      sub_1D6D7BFF4(v189, v186, v188, v190, sub_1D62D57AC);

      v178 = v549;
      ++v179;
      if (v183 == j)
      {
        goto LABEL_193;
      }
    }

LABEL_425:
    __break(1u);
LABEL_426:
    __break(1u);
LABEL_427:
    __break(1u);
LABEL_428:
    __break(1u);
LABEL_429:
    __break(1u);
LABEL_430:
    __break(1u);
LABEL_431:
    __break(1u);
LABEL_432:
    __break(1u);
LABEL_433:
    __break(1u);
LABEL_434:
    __break(1u);
LABEL_435:
    __break(1u);
LABEL_436:
    __break(1u);
LABEL_437:
    __break(1u);
LABEL_438:
    __break(1u);
LABEL_439:
    __break(1u);
LABEL_440:
    __break(1u);
LABEL_441:
    __break(1u);
LABEL_442:
    __break(1u);
LABEL_443:
    __break(1u);
LABEL_444:
    __break(1u);
LABEL_445:
    __break(1u);
LABEL_446:
    __break(1u);
LABEL_447:
    __break(1u);
LABEL_448:
    ;
  }

LABEL_193:

  v191 = a17;
  v192 = v530;
  v530[9] = v178;
  v192[10] = a12;
  v548 = MEMORY[0x1E69E7CC8];
  v549 = MEMORY[0x1E69E7CC8];
  v546 = MEMORY[0x1E69E7CC8];
  v547 = MEMORY[0x1E69E7CC8];
  v544 = MEMORY[0x1E69E7CC8];
  v545 = MEMORY[0x1E69E7CC8];
  v543 = MEMORY[0x1E69E7CC8];
  v534 = *(a17 + 16);
  if (v534)
  {
    v193 = 0;
    v531 = 0;
    v532 = a17;
    v533 = (a17 + 32);
    while (1)
    {
      if (v193 >= *(v191 + 16))
      {
        goto LABEL_446;
      }

      v194 = v533[v193];
      v195 = v194 >> 61;
      v536 = v193;
      if ((v194 >> 61) > 2)
      {
        v196 = v194 & 0x1FFFFFFFFFFFFFFFLL;
        if (v195 <= 4)
        {
          if (v195 == 3)
          {
            v144 = *((v194 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
            v197 = *(v144 + 48);

            v198 = [v197 identifier];
            v199 = sub_1D726207C();
            v201 = v200;

            sub_1D6D60400(v202, v199, v201, sub_1D6D76C28, sub_1D6716D80, sub_1D6D7D8B0);
            v203 = [objc_msgSend(*(v144 + 48) eventLeagueTag)];
            swift_unknownObjectRelease();
            v204 = sub_1D726207C();
            v206 = v205;

            sub_1D6D602E0([*(v144 + 48) eventLeagueTag], v204, v206);
            v207 = [*(v144 + 48) eventCompetitorTags];
            if (v207)
            {
              v208 = v207;
              sub_1D5B5534C(0, &qword_1EDF04500);
              v209 = sub_1D726267C();

              if (!(v209 >> 62))
              {
LABEL_201:
                v210 = *((v209 & 0xFFFFFFFFFFFFFF8) + 0x10);
                if (v210)
                {
                  goto LABEL_202;
                }

LABEL_402:

                goto LABEL_367;
              }
            }

            else
            {
              v209 = MEMORY[0x1E69E7CC0];
              if (!(MEMORY[0x1E69E7CC0] >> 62))
              {
                goto LABEL_201;
              }
            }

            v210 = sub_1D7263BFC();
            if (v210)
            {
LABEL_202:
              v535 = v144;
              v144 = 0;
              v539 = v209;
              v540 = v209 & 0xC000000000000001;
              v537 = v196;
              v538 = v209 & 0xFFFFFFFFFFFFFF8;
              while (1)
              {
                if (v540)
                {
                  v212 = MEMORY[0x1DA6FB460](v144, v209);
                  v213 = v144 + 1;
                  if (__OFADD__(v144, 1))
                  {
                    goto LABEL_406;
                  }
                }

                else
                {
                  if (v144 >= *(v538 + 16))
                  {
                    goto LABEL_439;
                  }

                  v212 = *(v209 + 8 * v144 + 32);
                  swift_unknownObjectRetain();
                  v213 = v144 + 1;
                  if (__OFADD__(v144, 1))
                  {
                    goto LABEL_406;
                  }
                }

                v214 = [v212 identifier];
                v215 = sub_1D726207C();
                v217 = v216;

                swift_unknownObjectRetain();
                v218 = v541;
                v219 = *v541;
                v220 = swift_isUniquelyReferenced_nonNull_native();
                v542 = v219;
                *v218 = 0x8000000000000000;
                v221 = sub_1D5B69D90(v215, v217);
                v223 = v222;
                v224 = v219[2];
                v225 = (v222 & 1) == 0;
                if (__OFADD__(v224, v225))
                {
                  goto LABEL_411;
                }

                v226 = v221;
                if (sub_1D6D76900(v220, v224 + v225))
                {
                  v227 = sub_1D5B69D90(v215, v217);
                  if ((v223 & 1) != (v228 & 1))
                  {
                    goto LABEL_449;
                  }

                  v226 = v227;
                }

                if (v223)
                {

                  v211 = v542;
                  *(v542[7] + 8 * v226) = v212;
                  swift_unknownObjectRelease();
                  swift_unknownObjectRelease();
                }

                else
                {
                  v211 = v542;
                  v542[(v226 >> 6) + 8] |= 1 << v226;
                  v229 = (v211[6] + 16 * v226);
                  *v229 = v215;
                  v229[1] = v217;
                  *(v211[7] + 8 * v226) = v212;
                  swift_unknownObjectRelease();
                  v230 = v211[2];
                  v46 = __OFADD__(v230, 1);
                  v231 = v230 + 1;
                  if (v46)
                  {
                    goto LABEL_430;
                  }

                  v211[2] = v231;
                }

                *v541 = v211;
                ++v144;
                v209 = v539;
                if (v213 == v210)
                {
                  goto LABEL_402;
                }
              }
            }

            goto LABEL_402;
          }

          v144 = *((v194 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
          v383 = *(v144 + 48);

          v384 = [v383 identifier];
          v385 = sub_1D726207C();
          v387 = v386;

          sub_1D6D60400(v388, v385, v387, sub_1D6D76BFC, sub_1D6716D80, sub_1D6D7D898);
          v389 = [objc_msgSend(*(v144 + 48) eventLeagueTag)];
          swift_unknownObjectRelease();
          v390 = sub_1D726207C();
          v392 = v391;

          sub_1D6D602E0([*(v144 + 48) eventLeagueTag], v390, v392);
          v393 = [*(v144 + 48) eventCompetitorTags];
          if (v393)
          {
            v394 = v393;
            sub_1D5B5534C(0, &qword_1EDF04500);
            v395 = sub_1D726267C();

            if (!(v395 >> 62))
            {
              goto LABEL_311;
            }
          }

          else
          {
            v395 = MEMORY[0x1E69E7CC0];
            if (!(MEMORY[0x1E69E7CC0] >> 62))
            {
LABEL_311:
              v396 = *((v395 & 0xFFFFFFFFFFFFFF8) + 0x10);
              if (v396)
              {
                goto LABEL_312;
              }

              goto LABEL_402;
            }
          }

          v396 = sub_1D7263BFC();
          if (v396)
          {
LABEL_312:
            v535 = v144;
            v144 = 0;
            v539 = v396;
            v540 = v395 & 0xC000000000000001;
            v537 = v196;
            v538 = v395 & 0xFFFFFFFFFFFFFF8;
            while (1)
            {
              if (v540)
              {
                v398 = MEMORY[0x1DA6FB460](v144, v395);
                v399 = v144 + 1;
                if (__OFADD__(v144, 1))
                {
                  goto LABEL_407;
                }
              }

              else
              {
                if (v144 >= *(v538 + 16))
                {
                  goto LABEL_443;
                }

                v398 = *(v395 + 8 * v144 + 32);
                swift_unknownObjectRetain();
                v399 = v144 + 1;
                if (__OFADD__(v144, 1))
                {
                  goto LABEL_407;
                }
              }

              v400 = [v398 identifier];
              v401 = sub_1D726207C();
              v403 = v402;

              swift_unknownObjectRetain();
              v404 = v541;
              v405 = *v541;
              v406 = swift_isUniquelyReferenced_nonNull_native();
              v542 = v405;
              *v404 = 0x8000000000000000;
              v407 = sub_1D5B69D90(v401, v403);
              v409 = v408;
              v410 = v405[2];
              v411 = (v408 & 1) == 0;
              if (__OFADD__(v410, v411))
              {
                goto LABEL_410;
              }

              v412 = v407;
              if (sub_1D6D76900(v406, v410 + v411))
              {
                v413 = sub_1D5B69D90(v401, v403);
                if ((v409 & 1) != (v414 & 1))
                {
                  goto LABEL_449;
                }

                v412 = v413;
              }

              if (v409)
              {

                v397 = v542;
                *(v542[7] + 8 * v412) = v398;
                swift_unknownObjectRelease();
                swift_unknownObjectRelease();
              }

              else
              {
                v397 = v542;
                v542[(v412 >> 6) + 8] |= 1 << v412;
                v415 = (v397[6] + 16 * v412);
                *v415 = v401;
                v415[1] = v403;
                *(v397[7] + 8 * v412) = v398;
                swift_unknownObjectRelease();
                v416 = v397[2];
                v46 = __OFADD__(v416, 1);
                v417 = v416 + 1;
                if (v46)
                {
                  goto LABEL_429;
                }

                v397[2] = v417;
              }

              *v541 = v397;
              ++v144;
              if (v399 == v539)
              {
                goto LABEL_402;
              }
            }
          }

          goto LABEL_402;
        }

        if (v195 == 5)
        {
          v144 = *((v194 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
          v276 = *(v144 + 48);

          v277 = [v276 identifier];
          v278 = sub_1D726207C();
          v280 = v279;

          sub_1D6D60400(v281, v278, v280, sub_1D6D76BD0, sub_1D6716D80, sub_1D6D7D880);
          v282 = [objc_msgSend(*(v144 + 48) eventLeagueTag)];
          swift_unknownObjectRelease();
          v283 = sub_1D726207C();
          v285 = v284;

          sub_1D6D602E0([*(v144 + 48) eventLeagueTag], v283, v285);
          v286 = [*(v144 + 48) eventCompetitorTags];
          if (v286)
          {
            v287 = v286;
            sub_1D5B5534C(0, &qword_1EDF04500);
            v288 = sub_1D726267C();

            if (!(v288 >> 62))
            {
              goto LABEL_249;
            }
          }

          else
          {
            v288 = MEMORY[0x1E69E7CC0];
            if (!(MEMORY[0x1E69E7CC0] >> 62))
            {
LABEL_249:
              v289 = *((v288 & 0xFFFFFFFFFFFFFF8) + 0x10);
              if (v289)
              {
                goto LABEL_250;
              }

              goto LABEL_402;
            }
          }

          v289 = sub_1D7263BFC();
          if (v289)
          {
LABEL_250:
            v535 = v144;
            v144 = 0;
            v539 = v289;
            v540 = v288 & 0xC000000000000001;
            v537 = v196;
            v538 = v288 & 0xFFFFFFFFFFFFFF8;
            while (1)
            {
              if (v540)
              {
                v291 = MEMORY[0x1DA6FB460](v144, v288);
                v292 = v144 + 1;
                if (__OFADD__(v144, 1))
                {
                  goto LABEL_408;
                }
              }

              else
              {
                if (v144 >= *(v538 + 16))
                {
                  goto LABEL_442;
                }

                v291 = *(v288 + 8 * v144 + 32);
                swift_unknownObjectRetain();
                v292 = v144 + 1;
                if (__OFADD__(v144, 1))
                {
                  goto LABEL_408;
                }
              }

              v293 = [v291 identifier];
              v294 = sub_1D726207C();
              v296 = v295;

              swift_unknownObjectRetain();
              v297 = v541;
              v298 = *v541;
              v299 = swift_isUniquelyReferenced_nonNull_native();
              v542 = v298;
              *v297 = 0x8000000000000000;
              v300 = sub_1D5B69D90(v294, v296);
              v302 = v301;
              v303 = v298[2];
              v304 = (v301 & 1) == 0;
              if (__OFADD__(v303, v304))
              {
                goto LABEL_413;
              }

              v305 = v300;
              if (sub_1D6D76900(v299, v303 + v304))
              {
                v306 = sub_1D5B69D90(v294, v296);
                if ((v302 & 1) != (v307 & 1))
                {
                  goto LABEL_449;
                }

                v305 = v306;
              }

              if (v302)
              {

                v290 = v542;
                *(v542[7] + 8 * v305) = v291;
                swift_unknownObjectRelease();
                swift_unknownObjectRelease();
              }

              else
              {
                v290 = v542;
                v542[(v305 >> 6) + 8] |= 1 << v305;
                v308 = (v290[6] + 16 * v305);
                *v308 = v294;
                v308[1] = v296;
                *(v290[7] + 8 * v305) = v291;
                swift_unknownObjectRelease();
                v309 = v290[2];
                v46 = __OFADD__(v309, 1);
                v310 = v309 + 1;
                if (v46)
                {
                  goto LABEL_427;
                }

                v290[2] = v310;
              }

              *v541 = v290;
              ++v144;
              if (v292 == v539)
              {
                goto LABEL_402;
              }
            }
          }

          goto LABEL_402;
        }

        v144 = *((v194 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
        v418 = *(v144 + 48);

        v419 = [v418 identifier];
        v420 = sub_1D726207C();
        v422 = v421;

        sub_1D6D60400(v423, v420, v422, sub_1D6D76BA4, sub_1D6716D80, sub_1D6D7D6FC);
        v424 = [objc_msgSend(*(v144 + 48) eventLeagueTag)];
        swift_unknownObjectRelease();
        v425 = sub_1D726207C();
        v427 = v426;

        sub_1D6D602E0([*(v144 + 48) eventLeagueTag], v425, v427);
        v428 = [*(v144 + 48) eventCompetitorTags];
        if (v428)
        {
          v429 = v428;
          sub_1D5B5534C(0, &qword_1EDF04500);
          v430 = sub_1D726267C();

          if (!(v430 >> 62))
          {
            goto LABEL_330;
          }
        }

        else
        {
          v430 = MEMORY[0x1E69E7CC0];
          if (!(MEMORY[0x1E69E7CC0] >> 62))
          {
LABEL_330:
            v431 = *((v430 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (v431)
            {
              goto LABEL_331;
            }

            goto LABEL_402;
          }
        }

        v431 = sub_1D7263BFC();
        if (v431)
        {
LABEL_331:
          v535 = v144;
          v144 = 0;
          v539 = v431;
          v540 = v430 & 0xC000000000000001;
          v537 = v196;
          v538 = v430 & 0xFFFFFFFFFFFFFF8;
          while (1)
          {
            if (v540)
            {
              v433 = MEMORY[0x1DA6FB460](v144, v430);
              v434 = v144 + 1;
              if (__OFADD__(v144, 1))
              {
                goto LABEL_405;
              }
            }

            else
            {
              if (v144 >= *(v538 + 16))
              {
                goto LABEL_441;
              }

              v433 = *(v430 + 8 * v144 + 32);
              swift_unknownObjectRetain();
              v434 = v144 + 1;
              if (__OFADD__(v144, 1))
              {
LABEL_405:
                __break(1u);
LABEL_406:
                __break(1u);
LABEL_407:
                __break(1u);
LABEL_408:
                __break(1u);
LABEL_409:
                __break(1u);
LABEL_410:
                __break(1u);
LABEL_411:
                __break(1u);
LABEL_412:
                __break(1u);
LABEL_413:
                __break(1u);
LABEL_414:
                __break(1u);
LABEL_415:
                __break(1u);
LABEL_416:
                __break(1u);
LABEL_417:
                __break(1u);
LABEL_418:
                __break(1u);
LABEL_419:
                __break(1u);
LABEL_420:
                __break(1u);
LABEL_421:
                __break(1u);
                goto LABEL_422;
              }
            }

            v435 = [v433 identifier];
            v436 = sub_1D726207C();
            v438 = v437;

            swift_unknownObjectRetain();
            v439 = v541;
            v440 = *v541;
            v441 = swift_isUniquelyReferenced_nonNull_native();
            v542 = v440;
            *v439 = 0x8000000000000000;
            v442 = sub_1D5B69D90(v436, v438);
            v444 = v443;
            v445 = v440[2];
            v446 = (v443 & 1) == 0;
            if (__OFADD__(v445, v446))
            {
              goto LABEL_414;
            }

            v447 = v442;
            if (sub_1D6D76900(v441, v445 + v446))
            {
              v448 = sub_1D5B69D90(v436, v438);
              if ((v444 & 1) != (v449 & 1))
              {
                goto LABEL_449;
              }

              v447 = v448;
            }

            if (v444)
            {

              v432 = v542;
              *(v542[7] + 8 * v447) = v433;
              swift_unknownObjectRelease();
              swift_unknownObjectRelease();
            }

            else
            {
              v432 = v542;
              v542[(v447 >> 6) + 8] |= 1 << v447;
              v450 = (v432[6] + 16 * v447);
              *v450 = v436;
              v450[1] = v438;
              *(v432[7] + 8 * v447) = v433;
              swift_unknownObjectRelease();
              v451 = v432[2];
              v46 = __OFADD__(v451, 1);
              v452 = v451 + 1;
              if (v46)
              {
                goto LABEL_431;
              }

              v432[2] = v452;
            }

            *v541 = v432;
            ++v144;
            if (v434 == v539)
            {
              goto LABEL_402;
            }
          }
        }

        goto LABEL_402;
      }

      if (!v195)
      {
        v311 = *(v194 + 16);
        v312 = v311[5];
        v313 = v311[6];

        v314 = swift_retain_n();
        sub_1D6D60400(v314, v312, v313, sub_1D6D76CC4, sub_1D6716D80, sub_1D6D7D910);
        v315 = v311[4];
        if (v315 >> 62)
        {
          v316 = sub_1D7263BFC();
          if (v316)
          {
LABEL_268:
            v535 = v311;
            v540 = v315 & 0xC000000000000001;
            v537 = v194;
            v538 = v315 & 0xFFFFFFFFFFFFFF8;

            v317 = 0;
            v539 = v315;
            do
            {
              if (v540)
              {
                v319 = MEMORY[0x1DA6FB460](v317, v315);
                v320 = v317 + 1;
                if (__OFADD__(v317, 1))
                {
                  goto LABEL_409;
                }
              }

              else
              {
                if (v317 >= *(v538 + 16))
                {
                  goto LABEL_440;
                }

                v319 = *(v315 + 8 * v317 + 32);
                swift_unknownObjectRetain();
                v320 = v317 + 1;
                if (__OFADD__(v317, 1))
                {
                  goto LABEL_409;
                }
              }

              v321 = [v319 identifier];
              v322 = sub_1D726207C();
              v324 = v323;

              swift_unknownObjectRetain();
              v325 = v541;
              v326 = *v541;
              v144 = swift_isUniquelyReferenced_nonNull_native();
              v542 = v326;
              *v325 = 0x8000000000000000;
              v327 = sub_1D5B69D90(v322, v324);
              v329 = v328;
              v330 = v326[2];
              v331 = (v328 & 1) == 0;
              if (__OFADD__(v330, v331))
              {
                goto LABEL_412;
              }

              v332 = v327;
              if (sub_1D6D76900(v144, v330 + v331))
              {
                v333 = sub_1D5B69D90(v322, v324);
                if ((v329 & 1) != (v334 & 1))
                {
                  goto LABEL_449;
                }

                v332 = v333;
              }

              if (v329)
              {

                v318 = v542;
                *(v542[7] + 8 * v332) = v319;
                swift_unknownObjectRelease();
                swift_unknownObjectRelease();
              }

              else
              {
                v318 = v542;
                v542[(v332 >> 6) + 8] |= 1 << v332;
                v335 = (v318[6] + 16 * v332);
                *v335 = v322;
                v335[1] = v324;
                *(v318[7] + 8 * v332) = v319;
                swift_unknownObjectRelease();
                v336 = v318[2];
                v46 = __OFADD__(v336, 1);
                v337 = v336 + 1;
                if (v46)
                {
                  goto LABEL_428;
                }

                v318[2] = v337;
              }

              *v541 = v318;
              ++v317;
              v315 = v539;
            }

            while (v320 != v316);

            goto LABEL_368;
          }
        }

        else
        {
          v316 = *((v315 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v316)
          {
            goto LABEL_268;
          }
        }

        goto LABEL_366;
      }

      if (v195 != 1)
      {
        v338 = v194 & 0x1FFFFFFFFFFFFFFFLL;
        v339 = *((v194 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
        v340 = OBJC_IVAR____TtC8NewsFeed35SportsBracketGroupDataVisualization_visualizations;

        v341 = v531;
        v342 = sub_1D6D5CD3C(v339 + v340);
        v343 = v342;
        v531 = v341;
        v528 = v338;
        v529 = v340;
        if (v342 >> 62)
        {
          v344 = sub_1D7263BFC();
          v540 = v339;
          if (v344)
          {
LABEL_286:
            v144 = 0;
            v537 = v343;
            v538 = v343 & 0xC000000000000001;
            v535 = v343 & 0xFFFFFFFFFFFFFF8;
            do
            {
              if (v538)
              {
                v346 = MEMORY[0x1DA6FB460](v144, v343);
              }

              else
              {
                if (v144 >= *(v535 + 16))
                {
                  goto LABEL_445;
                }

                v346 = *(v343 + 8 * v144 + 32);
                swift_unknownObjectRetain();
              }

              if (__OFADD__(v144, 1))
              {
                goto LABEL_416;
              }

              v539 = v144 + 1;
              v347 = [v346 identifier];
              v348 = sub_1D726207C();
              v350 = v349;

              v351 = v547;
              v352 = swift_isUniquelyReferenced_nonNull_native();
              v542 = v351;
              v547 = 0x8000000000000000;
              v353 = sub_1D5B69D90(v348, v350);
              v355 = v354;
              v356 = *(v351 + 16);
              v357 = (v354 & 1) == 0;
              if (__OFADD__(v356, v357))
              {
                goto LABEL_418;
              }

              v358 = v353;
              if (sub_1D6D7689C(v352, v356 + v357, sub_1D6D8C1E4, sub_1D6D7D8C8))
              {
                v359 = sub_1D5B69D90(v348, v350);
                if ((v355 & 1) != (v360 & 1))
                {
                  goto LABEL_449;
                }

                v358 = v359;
              }

              if (v355)
              {

                v361 = v542;
                *(v542[7] + 8 * v358) = v540;
              }

              else
              {
                v361 = v542;
                v542[(v358 >> 6) + 8] |= 1 << v358;
                v362 = (v361[6] + 16 * v358);
                *v362 = v348;
                v362[1] = v350;
                *(v361[7] + 8 * v358) = v540;
                v363 = v361[2];
                v46 = __OFADD__(v363, 1);
                v364 = v363 + 1;
                if (v46)
                {
                  goto LABEL_432;
                }

                v361[2] = v364;
              }

              v547 = v361;
              v365 = [v346 identifier];
              v366 = sub_1D726207C();
              v368 = v367;

              swift_unknownObjectRetain();
              v369 = v541;
              v370 = *v541;
              v371 = swift_isUniquelyReferenced_nonNull_native();
              v542 = v370;
              *v369 = 0x8000000000000000;
              v372 = sub_1D5B69D90(v366, v368);
              v374 = v373;
              v375 = v370[2];
              v376 = (v373 & 1) == 0;
              if (__OFADD__(v375, v376))
              {
                goto LABEL_419;
              }

              v377 = v372;
              if (sub_1D6D76900(v371, v375 + v376))
              {
                v378 = sub_1D5B69D90(v366, v368);
                if ((v374 & 1) != (v379 & 1))
                {
                  goto LABEL_449;
                }

                v377 = v378;
              }

              if (v374)
              {

                v345 = v542;
                *(v542[7] + 8 * v377) = v346;
                swift_unknownObjectRelease();
                swift_unknownObjectRelease();
              }

              else
              {
                v345 = v542;
                v542[(v377 >> 6) + 8] |= 1 << v377;
                v380 = (v345[6] + 16 * v377);
                *v380 = v366;
                v380[1] = v368;
                *(v345[7] + 8 * v377) = v346;
                swift_unknownObjectRelease();
                v381 = v345[2];
                v46 = __OFADD__(v381, 1);
                v382 = v381 + 1;
                if (v46)
                {
                  goto LABEL_435;
                }

                v345[2] = v382;
              }

              *v541 = v345;
              ++v144;
              v343 = v537;
            }

            while (v539 != v344);
          }
        }

        else
        {
          v344 = *((v342 & 0xFFFFFFFFFFFFFF8) + 0x10);
          v540 = v339;
          if (v344)
          {
            goto LABEL_286;
          }
        }

        sub_1D5E4CF90();
        sub_1D725BE8C();
        v463 = v542[8];
        swift_unknownObjectRetain();

        if (v463)
        {
          v464 = [v463 identifier];
          v465 = sub_1D726207C();
          v467 = v466;

          sub_1D6D60400(v468, v465, v467, sub_1D6D76C54, sub_1D6716D80, sub_1D6D7D8C8);
          v469 = [v463 identifier];
          v470 = sub_1D726207C();
          v472 = v471;

          sub_1D6D602E0(v463, v470, v472);
        }

        v473 = SportsBracketGroupDataVisualization.leagueTags.getter();
        v474 = v473;
        if (v473 >> 62)
        {
          v475 = sub_1D7263BFC();
          if (v475)
          {
LABEL_378:
            v144 = 0;
            v537 = v474;
            v538 = v474 & 0xC000000000000001;
            v535 = v474 & 0xFFFFFFFFFFFFFF8;
            while (1)
            {
              if (v538)
              {
                v477 = MEMORY[0x1DA6FB460](v144, v474);
              }

              else
              {
                if (v144 >= *(v535 + 16))
                {
                  goto LABEL_447;
                }

                v477 = *(v474 + 8 * v144 + 32);
                swift_unknownObjectRetain();
              }

              if (__OFADD__(v144, 1))
              {
                goto LABEL_421;
              }

              v539 = v144 + 1;
              v478 = [v477 identifier];
              v479 = sub_1D726207C();
              v481 = v480;

              v482 = v547;
              v483 = swift_isUniquelyReferenced_nonNull_native();
              v542 = v482;
              v547 = 0x8000000000000000;
              v484 = sub_1D5B69D90(v479, v481);
              v486 = v485;
              v487 = *(v482 + 16);
              v488 = (v485 & 1) == 0;
              if (__OFADD__(v487, v488))
              {
                break;
              }

              v489 = v484;
              if (sub_1D6D7689C(v483, v487 + v488, sub_1D6D8C1E4, sub_1D6D7D8C8))
              {
                v490 = sub_1D5B69D90(v479, v481);
                if ((v486 & 1) != (v491 & 1))
                {
                  goto LABEL_449;
                }

                v489 = v490;
              }

              if (v486)
              {

                v492 = v542;
                *(v542[7] + 8 * v489) = v540;
              }

              else
              {
                v492 = v542;
                v542[(v489 >> 6) + 8] |= 1 << v489;
                v493 = (v492[6] + 16 * v489);
                *v493 = v479;
                v493[1] = v481;
                *(v492[7] + 8 * v489) = v540;
                v494 = v492[2];
                v46 = __OFADD__(v494, 1);
                v495 = v494 + 1;
                if (v46)
                {
                  goto LABEL_436;
                }

                v492[2] = v495;
              }

              v547 = v492;
              v496 = [v477 identifier];
              v497 = sub_1D726207C();
              v499 = v498;

              swift_unknownObjectRetain();
              v500 = v541;
              v501 = *v541;
              v502 = swift_isUniquelyReferenced_nonNull_native();
              v542 = v501;
              *v500 = 0x8000000000000000;
              v503 = sub_1D5B69D90(v497, v499);
              v505 = v504;
              v506 = v501[2];
              v507 = (v504 & 1) == 0;
              if (__OFADD__(v506, v507))
              {
                goto LABEL_423;
              }

              v508 = v503;
              if (sub_1D6D76900(v502, v506 + v507))
              {
                v509 = sub_1D5B69D90(v497, v499);
                if ((v505 & 1) != (v510 & 1))
                {
                  goto LABEL_449;
                }

                v508 = v509;
              }

              if (v505)
              {

                v476 = v542;
                *(v542[7] + 8 * v508) = v477;
                swift_unknownObjectRelease();
                swift_unknownObjectRelease();
              }

              else
              {
                v476 = v542;
                v542[(v508 >> 6) + 8] |= 1 << v508;
                v511 = (v476[6] + 16 * v508);
                *v511 = v497;
                v511[1] = v499;
                *(v476[7] + 8 * v508) = v477;
                swift_unknownObjectRelease();
                v512 = v476[2];
                v46 = __OFADD__(v512, 1);
                v513 = v512 + 1;
                if (v46)
                {
                  goto LABEL_437;
                }

                v476[2] = v513;
              }

              *v541 = v476;
              ++v144;
              v474 = v537;
              if (v539 == v475)
              {
                goto LABEL_402;
              }
            }

LABEL_422:
            __break(1u);
LABEL_423:
            __break(1u);
            goto LABEL_424;
          }
        }

        else
        {
          v475 = *((v473 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v475)
          {
            goto LABEL_378;
          }
        }

        goto LABEL_402;
      }

      v144 = v194 & 0x1FFFFFFFFFFFFFFFLL;
      v232 = *((v194 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v233 = *(v232 + 32);
      if (v233 >> 62)
      {
        v234 = sub_1D7263BFC();
        if (!v234)
        {
LABEL_371:

          v453 = *(v232 + 56);
          if (!v453)
          {
            goto LABEL_366;
          }

          goto LABEL_351;
        }
      }

      else
      {
        v234 = *((v233 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v234)
        {
          goto LABEL_371;
        }
      }

      v539 = v233 & 0xC000000000000001;
      v535 = v233 & 0xFFFFFFFFFFFFFF8;
      v529 = v194 & 0x1FFFFFFFFFFFFFFFLL;

      v144 = 0;
      v537 = v234;
      v538 = v233;
      do
      {
        if (v539)
        {
          v237 = MEMORY[0x1DA6FB460](v144, v233);
          v238 = v144 + 1;
          if (__OFADD__(v144, 1))
          {
            goto LABEL_415;
          }
        }

        else
        {
          if (v144 >= *(v535 + 16))
          {
            goto LABEL_444;
          }

          v237 = *(v233 + 8 * v144 + 32);
          swift_unknownObjectRetain();
          v238 = v144 + 1;
          if (__OFADD__(v144, 1))
          {
            goto LABEL_415;
          }
        }

        v540 = v238;
        v239 = [v237 identifier];
        v240 = sub_1D726207C();
        v242 = v241;

        v243 = v232;

        v244 = v548;
        v245 = swift_isUniquelyReferenced_nonNull_native();
        v542 = v244;
        v548 = 0x8000000000000000;
        v246 = sub_1D5B69D90(v240, v242);
        v248 = v247;
        v249 = *(v244 + 16);
        v250 = (v247 & 1) == 0;
        if (__OFADD__(v249, v250))
        {
          goto LABEL_417;
        }

        v251 = v246;
        if (sub_1D6D7689C(v245, v249 + v250, sub_1D6D8C17C, sub_1D6D7D8E0))
        {
          v252 = sub_1D5B69D90(v240, v242);
          if ((v248 & 1) != (v253 & 1))
          {
            goto LABEL_449;
          }

          v251 = v252;
        }

        if (v248)
        {

          v254 = v542;
          *(v542[7] + 8 * v251) = v243;
        }

        else
        {
          v254 = v542;
          v542[(v251 >> 6) + 8] |= 1 << v251;
          v255 = (v254[6] + 16 * v251);
          *v255 = v240;
          v255[1] = v242;
          *(v254[7] + 8 * v251) = v243;
          v256 = v254[2];
          v46 = __OFADD__(v256, 1);
          v257 = v256 + 1;
          if (v46)
          {
            goto LABEL_433;
          }

          v254[2] = v257;
        }

        v548 = v254;
        v258 = [v237 identifier];
        v259 = sub_1D726207C();
        v261 = v260;

        swift_unknownObjectRetain();
        v262 = v541;
        v263 = *v541;
        v264 = swift_isUniquelyReferenced_nonNull_native();
        v542 = v263;
        *v262 = 0x8000000000000000;
        v265 = sub_1D5B69D90(v259, v261);
        v267 = v266;
        v268 = v263[2];
        v269 = (v266 & 1) == 0;
        if (__OFADD__(v268, v269))
        {
          goto LABEL_420;
        }

        v270 = v265;
        if (sub_1D6D76900(v264, v268 + v269))
        {
          v271 = sub_1D5B69D90(v259, v261);
          if ((v267 & 1) != (v272 & 1))
          {
            goto LABEL_449;
          }

          v270 = v271;
        }

        if (v267)
        {

          v235 = v542;
          *(v542[7] + 8 * v270) = v237;
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
        }

        else
        {
          v235 = v542;
          v542[(v270 >> 6) + 8] |= 1 << v270;
          v273 = (v235[6] + 16 * v270);
          *v273 = v259;
          v273[1] = v261;
          *(v235[7] + 8 * v270) = v237;
          swift_unknownObjectRelease();
          v274 = v235[2];
          v46 = __OFADD__(v274, 1);
          v275 = v274 + 1;
          if (v46)
          {
            goto LABEL_434;
          }

          v235[2] = v275;
        }

        v236 = v540;
        *v541 = v235;
        ++v144;
        v233 = v538;
        v232 = v243;
      }

      while (v236 != v537);

      v144 = v529;
      v453 = *(v243 + 56);
      if (!v453)
      {
        goto LABEL_366;
      }

LABEL_351:
      v454 = [swift_unknownObjectRetain() identifier];
      v455 = sub_1D726207C();
      v457 = v456;

      sub_1D6D60400(v458, v455, v457, sub_1D6D76C80, sub_1D6716D80, sub_1D6D7D8E0);
      v459 = [v453 identifier];
      v460 = sub_1D726207C();
      v462 = v461;

      sub_1D6D602E0(v453, v460, v462);
LABEL_366:

LABEL_367:

LABEL_368:
      v193 = v536 + 1;
      v191 = v532;
      if (v536 + 1 == v534)
      {

        v514 = v548;
        v515 = v549;
        v516 = v546;
        v517 = v547;
        v518 = v544;
        v519 = v545;
        v520 = v543;
        goto LABEL_404;
      }
    }
  }

  v520 = MEMORY[0x1E69E7CC8];
  v518 = MEMORY[0x1E69E7CC8];
  v519 = MEMORY[0x1E69E7CC8];
  v516 = MEMORY[0x1E69E7CC8];
  v517 = MEMORY[0x1E69E7CC8];
  v514 = MEMORY[0x1E69E7CC8];
  v515 = MEMORY[0x1E69E7CC8];
LABEL_404:
  v541 = a19;
  v521 = v530;
  v530[15] = v515;
  v521[16] = v514;
  v521[17] = v517;
  v521[18] = v516;
  v521[19] = v519;
  v521[20] = v518;
  v521[21] = v520;
  v542 = a13;
  v522 = MEMORY[0x1E69E62F8];
  sub_1D6D8B278(0, &qword_1EDF1AFD0, &type metadata for FormatContentPoolPlaceholder, MEMORY[0x1E69E62F8]);
  sub_1D6D8796C(&qword_1EDF1AFC8, &qword_1EDF1AFD0, &type metadata for FormatContentPoolPlaceholder);
  sub_1D6D87918();
  v523 = sub_1D72623BC();

  v521[11] = v523;
  v542 = a14;
  sub_1D6D8B278(0, &qword_1EDF1AF58, &type metadata for FormatContentPoolSlotPlaceholder, v522);
  sub_1D6D8796C(&qword_1EDF1AF50, &qword_1EDF1AF58, &type metadata for FormatContentPoolSlotPlaceholder);
  sub_1D6D879D0();
  v524 = sub_1D72623BC();

  v521[12] = v524;
  v521[13] = a15;
  v521[14] = a16;
  v521[22] = a18;
  v525 = type metadata accessor for FormatContentPool();
  return sub_1D5CEB57C(v541, v521 + *(v525 + 108));
}

uint64_t sub_1D6D60210(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 24))
  {
    sub_1D5B7C390(a1, v10);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v3;
    sub_1D5BAFB24(v10, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v9;
  }

  else
  {
    v8 = MEMORY[0x1E69E7CA0];
    sub_1D6D88728(a1, &qword_1EDF43B70, MEMORY[0x1E69E7CA0] + 8);
    sub_1D607E0F0(a2, a3, v10);

    return sub_1D6D88728(v10, &qword_1EDF43B70, v8 + 8);
  }

  return result;
}

uint64_t sub_1D6D602E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v3;
    sub_1D6D79528(a1, a2, a3, isUniquelyReferenced_nonNull_native, sub_1D6D8C4DC);

    *v3 = v15;
  }

  else
  {
    v10 = sub_1D5B69D90(a2, a3);
    v12 = v11;

    if (v12)
    {
      v13 = swift_isUniquelyReferenced_nonNull_native();
      v14 = *v4;
      v16 = *v4;
      if (!v13)
      {
        sub_1D6D7D9AC(sub_1D6D8C4DC);
        v14 = v16;
      }

      swift_unknownObjectRelease();
      result = sub_1D6713788(v10, v14);
      *v4 = v14;
    }
  }

  return result;
}

uint64_t sub_1D6D60400(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t, uint64_t), uint64_t (*a5)(unint64_t, uint64_t), void (*a6)(void))
{
  v7 = v6;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21 = *v6;
    a4(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v6 = v21;
  }

  else
  {
    v16 = sub_1D5B69D90(a2, a3);
    v18 = v17;

    if (v18)
    {
      v19 = swift_isUniquelyReferenced_nonNull_native();
      v20 = *v7;
      v22 = *v7;
      if (!v19)
      {
        a6();
        v20 = v22;
      }

      result = a5(v16, v20);
      *v7 = v20;
    }
  }

  return result;
}

uint64_t sub_1D6D60518(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  if (a2)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v4;
    sub_1D6D76D20(a1, a2, a3, a4, isUniquelyReferenced_nonNull_native);

    *v4 = v17;
  }

  else
  {
    v12 = sub_1D5B69D90(a3, a4);
    v14 = v13;

    if (v14)
    {
      v15 = swift_isUniquelyReferenced_nonNull_native();
      v16 = *v5;
      v18 = *v5;
      if (!v15)
      {
        sub_1D6D7DE64();
        v16 = v18;
      }

      result = sub_1D6713938(v12, v16);
      *v5 = v16;
    }
  }

  return result;
}

uint64_t sub_1D6D60620(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1D5B59654(0, &qword_1EDF45B00, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v20 - v9;
  v11 = sub_1D725891C();
  v12 = *(v11 - 8);
  v14 = MEMORY[0x1EEE9AC00](v11, v13);
  v16 = &v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v12 + 48))(a1, 1, v11, v14) == 1)
  {
    v17 = MEMORY[0x1E6969530];
    sub_1D6D8BEB0(a1, &qword_1EDF45B00, MEMORY[0x1E6969530]);
    sub_1D607E284(a2, a3, v10);

    return sub_1D6D8BEB0(v10, &qword_1EDF45B00, v17);
  }

  else
  {
    (*(v12 + 32))(v16, a1, v11);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21 = *v3;
    sub_1D6D77084(v16, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v21;
  }

  return result;
}

uint64_t sub_1D6D60828(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1D5B59654(0, &qword_1EDF27F90, type metadata accessor for FormatSourceMapContext, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v19 - v9;
  v11 = type metadata accessor for FormatSourceMapContext();
  v13 = MEMORY[0x1EEE9AC00](v11, v12);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v16 + 48))(a1, 1, v13) == 1)
  {
    sub_1D6D8BEB0(a1, &qword_1EDF27F90, type metadata accessor for FormatSourceMapContext);
    sub_1D607E3F4(a2, a3, v10);

    return sub_1D6D8BEB0(v10, &qword_1EDF27F90, type metadata accessor for FormatSourceMapContext);
  }

  else
  {
    sub_1D6D89234(a1, v15);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;
    sub_1D6D775C8(v15, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v20;
  }

  return result;
}
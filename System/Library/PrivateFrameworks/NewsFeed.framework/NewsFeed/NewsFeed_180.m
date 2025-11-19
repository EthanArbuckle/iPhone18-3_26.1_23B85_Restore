uint64_t sub_1D6BC6C94(uint64_t a1)
{
  sub_1D6BC6C30(0, &qword_1EDF3C370, MEMORY[0x1E6969C28], MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1D6BC6D78()
{
  if (!qword_1EDF19498)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDF19498);
    }
  }
}

void sub_1D6BC6EB4(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2[2];
  v4 = v2[3];
  v5 = v2[4];
  v6 = v2[5];
  v7 = v2[6];
  v12 = v2[7];
  v8 = v2[8];
  v9 = v2[9];
  v10 = v2[10];
  v11 = *(type metadata accessor for FeedNativeAdInsertBlueprintModifier() - 8);
  sub_1D6BC5F98(a1, v2 + ((*(v11 + 80) + 88) & ~*(v11 + 80)), v3, v4, v5, v6, v7, v12, a2, v8, v9, v10);
}

unint64_t sub_1D6BC6F90()
{
  result = qword_1EC893118[0];
  if (!qword_1EC893118[0])
  {
    sub_1D72604EC();
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC893118);
  }

  return result;
}

uint64_t ArticleURLHandlerPatternProvider.patterns()()
{
  sub_1D5C3C480();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D7274590;
  *(inited + 32) = 0x6C63697472613A2FLL;
  *(inited + 40) = 0xEB00000000444965;
  *(inited + 48) = 0xD000000000000014;
  *(inited + 56) = 0x80000001D73EAD40;
  *(inited + 64) = 0xD000000000000012;
  *(inited + 72) = 0x80000001D73EAD60;
  *(inited + 80) = 0xD00000000000001BLL;
  *(inited + 88) = 0x80000001D73EAD80;
  v2 = v0[5];
  v3 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v2);
  if ((*(v3 + 88))(v2, v3))
  {
    v53 = inited;
  }

  else
  {
    v4 = sub_1D5B858EC(1, 5, 1, inited);
    *(v4 + 2) = 5;
    *(v4 + 12) = 0xD000000000000016;
    *(v4 + 13) = 0x80000001D73EADA0;
    v53 = v4;
  }

  v5 = MEMORY[0x1E69E6F90];
  sub_1D6BC7AE0(0, &qword_1EDF023D8, MEMORY[0x1E69D66F8], MEMORY[0x1E69E6F90]);
  v6 = sub_1D725B25C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 72);
  v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1D72F3820;
  v11 = (v10 + v9);
  *v11 = 97;
  v11[1] = 0xE100000000000000;
  v12 = *MEMORY[0x1E69D66E8];
  v13 = *(v7 + 104);
  (v13)(v10 + v9, v12, v6);
  v14 = (v11 + v8);
  *v14 = 114;
  v14[1] = 0xE100000000000000;
  v13();
  v15 = (v11 + 2 * v8);
  *v15 = 0x6E676961706D6163;
  v15[1] = 0xEB0000000064695FLL;
  v13();
  v16 = v11 + 3 * v8;
  strcpy(v16, "campaign_type");
  *(v16 + 7) = -4864;
  v13();
  v17 = (v11 + 4 * v8);
  *v17 = 0x6576697461657263;
  v17[1] = 0xEB0000000064695FLL;
  v13();
  v18 = (v11 + 5 * v8);
  *v18 = 0x6569766572706461;
  v18[1] = 0xEB00000000646977;
  v13();
  v19 = v11 + 6 * v8;
  strcpy(v19, "adpreviewlimit");
  v19[15] = -18;
  v13();
  v20 = (v11 + 7 * v8);
  *v20 = 0x6E656B6F7471;
  v20[1] = 0xE600000000000000;
  v13();
  v21 = &v11[v8];
  *v21 = 0xD000000000000010;
  v21[1] = 0x80000001D73EADC0;
  v13();
  v22 = (v11 + 9 * v8);
  *v22 = 0x724664656E65706FLL;
  v22[1] = 0xEA00000000006D6FLL;
  v13();
  v23 = (v11 + 10 * v8);
  *v23 = 0x49656C6369747261;
  v23[1] = 0xE900000000000064;
  v13();
  v24 = v11 + 11 * v8;
  strcpy(v24, "userActionTime");
  v24[15] = -18;
  v13();
  v25 = v11 + 12 * v8;
  strcpy(v25, "web_embed_link");
  v25[15] = -18;
  v13();
  v26 = (v11 + 13 * v8);
  *v26 = 0x79616C706F747561;
  v26[1] = 0xE800000000000000;
  v13();
  v27 = (v11 + 14 * v8);
  *v27 = 0x4C656C6369747261;
  v27[1] = 0xEB00000000747369;
  v13();
  v28 = (v11 + 15 * v8);
  *v28 = 0x6E6F6974636573;
  v28[1] = 0xE700000000000000;
  v13();
  v29 = &v11[2 * v8];
  *v29 = 0xD000000000000011;
  v29[1] = 0x80000001D73EADE0;
  v13();
  v30 = (v11 + 17 * v8);
  *v30 = sub_1D726207C();
  v30[1] = v31;
  (v13)(v30, v12, v6);
  v32 = (v11 + 18 * v8);
  *v32 = sub_1D726207C();
  v32[1] = v33;
  (v13)(v32, v12, v6);
  v34 = (v11 + 19 * v8);
  *v34 = 0x64656546676174;
  v34[1] = 0xE700000000000000;
  v13();
  v35 = (v11 + 20 * v8);
  *v35 = 0x6574756F72;
  v35[1] = 0xE500000000000000;
  v13();
  v36 = (v11 + 21 * v8);
  *v36 = 0x657370616C6C6F63;
  v36[1] = 0xEF72616265646953;
  v13();
  sub_1D6BC7AE0(0, &qword_1EDF01E08, sub_1D6BC7A48, v5);
  v37 = swift_initStackObject();
  *(v37 + 16) = xmmword_1D7270C10;
  *(v37 + 32) = 0x49656C6369747261;
  *(v37 + 40) = 0xE900000000000044;
  sub_1D6BC7AE0(0, &qword_1EDF023D0, MEMORY[0x1E69D6710], v5);
  v38 = sub_1D725B27C();
  v39 = *(v38 - 8);
  v40 = *(v39 + 72);
  v41 = (*(v39 + 80) + 32) & ~*(v39 + 80);
  v42 = swift_allocObject();
  *(v42 + 16) = xmmword_1D7270C10;
  v43 = (v42 + v41);
  *v43 = 65;
  v43[1] = 0xE100000000000000;
  v44 = *(v39 + 104);
  v52 = *MEMORY[0x1E69D6700];
  v44(v42 + v41);
  v45 = *MEMORY[0x1E69B5050];
  if ((*MEMORY[0x1E69B5050] & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  *(v43 + v40) = v45;
  v46 = v43 + v40;
  v47 = *MEMORY[0x1E69D6708];
  v44(v46);
  *(v37 + 48) = v42;
  *(v37 + 56) = 0xD000000000000010;
  *(v37 + 64) = 0x80000001D73D4590;
  v48 = swift_allocObject();
  *(v48 + 16) = xmmword_1D7270C10;
  v49 = (v48 + v41);
  *v49 = 80;
  v49[1] = 0xE100000000000000;
  (v44)(v49, v52, v38);
  *(v49 + v40) = v45;
  (v44)(v49 + v40, v47, v38);
  *(v37 + 72) = v48;
  sub_1D605E4D0(v37);
  swift_setDeallocating();
  sub_1D6BC7A48();
  swift_arrayDestroy();
  v50 = static URLHandlerPattern.newsURLHandlerPatterns(paths:fragment:params:conditions:)(v53);

  return v50;
}

uint64_t ArticleURLHandlerPatternProvider.__allocating_init(featureAvailability:)(__int128 *a1)
{
  v2 = swift_allocObject();
  sub_1D5B63F14(a1, v2 + 16);
  return v2;
}

uint64_t ArticleURLHandlerPatternProvider.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return swift_deallocClassInstance();
}

void sub_1D6BC7A48()
{
  if (!qword_1EDF05430)
  {
    sub_1D6BC7AE0(255, &qword_1EDF053A8, MEMORY[0x1E69D6710], MEMORY[0x1E69E62F8]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDF05430);
    }
  }
}

void sub_1D6BC7AE0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1D6BC7B84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, _OWORD *a5@<X8>)
{
  v80 = a2;
  v71 = a5;
  v72 = a1;
  v7 = type metadata accessor for WebEmbedDataVisualization();
  v8 = *(v7 - 8);
  v73 = v7;
  v74 = v8;
  MEMORY[0x1EEE9AC00](v7, v9);
  v63 = (&v63 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D5B4D72C(0);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v70 = &v63 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v78 = &v63 - v16;
  sub_1D5B4D3E0();
  MEMORY[0x1EEE9AC00](v17 - 8, v18);
  v20 = &v63 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = v20;
  v81 = sub_1D72585BC();
  v21 = *(v81 - 8);
  MEMORY[0x1EEE9AC00](v81, v22);
  v24 = &v63 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = v24;
  sub_1D5B69BE0(0);
  MEMORY[0x1EEE9AC00](v25 - 8, v26);
  v67 = &v63 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28, v29);
  v31 = &v63 - v30;
  sub_1D6BC8384(a3, a4, &v63 - v30);
  v32 = type metadata accessor for FormatWebEmbed.Resolved();
  v33 = a3 + v32[5];
  v34 = type metadata accessor for FormatWebEmbed();
  v35 = *(v33 + v34[12]);
  v36 = type metadata accessor for FeedContext();
  v37 = sub_1D5EEC8D4(v35, *(a4 + *(v36 + 40)));
  v68 = v38;
  v69 = v37;
  v39 = v34[5];
  v76 = v21;
  v66 = *(v21 + 16);
  v40 = v24;
  v41 = v81;
  v66(v40, v33 + v39, v81);
  v42 = v34[6];
  v65 = sub_1D5B4D3E0;
  sub_1D5C00F18(v33 + v42, v20, sub_1D5B4D3E0);
  v43 = *(a3 + v32[6]);
  v77 = *(a3 + v32[7]);
  v64 = sub_1D5B69BE0;
  v75 = v31;
  v44 = v67;
  sub_1D5C00F18(v31, v67, sub_1D5B69BE0);
  sub_1D5C00F18(a3 + v32[8], v78, sub_1D5B4D72C);
  LOBYTE(v34) = *(v33 + v34[10]);
  v45 = v71;
  *v71 = xmmword_1D727F470;
  *(v45 + 16) = 1;
  *(v45 + 24) = xmmword_1D727F480;
  v46 = v80;
  *(v45 + 5) = v72;
  *(v45 + 6) = v46;
  v47 = type metadata accessor for FeedWebEmbed();
  v66(v45 + v47[8], v82, v41);
  v48 = v70;
  sub_1D5C00F18(v79, v45 + v47[9], v65);
  *(v45 + v47[10]) = v43;
  *(v45 + v47[11]) = v77;
  v49 = v73;
  sub_1D5C00F18(v44, v45 + v47[12], v64);
  v50 = v78;
  sub_1D5C00F18(v78, v45 + v47[13], sub_1D5B4D72C);
  *(v45 + v47[14]) = v34 & 1;
  v51 = (v45 + v47[15]);
  v52 = v68;
  *v51 = v69;
  v51[1] = v52;
  sub_1D5C00F18(v50, v48, sub_1D5B4D72C);
  if ((*(v74 + 48))(v48, 1, v49) == 1)
  {

    v53 = sub_1D5B4D72C;
LABEL_5:
    sub_1D6BC8628(v48, v53);
    sub_1D6BC8628(v50, sub_1D5B4D72C);
    sub_1D6BC8628(v44, sub_1D5B69BE0);
    sub_1D6BC8628(v79, sub_1D5B4D3E0);
    (*(v76 + 8))(v82, v81);
    return sub_1D6BC8628(v75, sub_1D5B69BE0);
  }

  v54 = v63;
  sub_1D5C00F18(v48, v63, type metadata accessor for WebEmbedDataVisualization);
  if (swift_getEnumCaseMultiPayload() == 1)
  {

    sub_1D6BC8628(v54, type metadata accessor for WebEmbedDataVisualization);
    v53 = type metadata accessor for WebEmbedDataVisualization;
    goto LABEL_5;
  }

  v56 = *v54;

  sub_1D6BC8628(v48, type metadata accessor for WebEmbedDataVisualization);
  v57 = v56 >> 61;
  if ((v56 >> 61) > 2)
  {
    v58 = v44;
    if (v57 > 4)
    {
      if (v57 == 5)
      {
        v59 = 0x2800000800;
        v60 = 0x800000800;
      }

      else
      {
        v59 = 0x3000000800;
        v60 = 0x1000000800;
      }
    }

    else if (v57 == 3)
    {
      v59 = 0x2200000800;
      v60 = 0x200000800;
    }

    else
    {
      v59 = 0x2400000800;
      v60 = 0x400000800;
    }

LABEL_21:
    sub_1D6BC8628(v50, sub_1D5B4D72C);
    sub_1D6BC8628(v58, sub_1D5B69BE0);
    sub_1D6BC8628(v79, sub_1D5B4D3E0);
    (*(v76 + 8))(v82, v81);
    sub_1D6BC8628(v75, sub_1D5B69BE0);
    goto LABEL_22;
  }

  v59 = 0x2000400800;
  v58 = v44;
  if (v57)
  {
    if (v57 == 1)
    {
      v60 = 8390656;
      v59 = 0x2000800800;
    }

    else
    {
      v59 = 0x2020000800;
      v60 = 536872960;
    }

    goto LABEL_21;
  }

  *v45 = 4196352;

  v61 = SportsScoreDataVisualization.isFeatured.getter();

  sub_1D6BC8628(v50, sub_1D5B4D72C);
  sub_1D6BC8628(v44, sub_1D5B69BE0);
  sub_1D6BC8628(v79, sub_1D5B4D3E0);
  (*(v76 + 8))(v82, v81);
  sub_1D6BC8628(v75, sub_1D5B69BE0);
  if ((v61 & 1) == 0)
  {
    goto LABEL_23;
  }

  v60 = 4196384;
  v59 = 0x2000400820;
LABEL_22:
  *v45 = v60;
LABEL_23:
  v83 = v56;
  v62 = SportsDataVisualization.event.getter();

  if (v62)
  {
    result = swift_unknownObjectRelease();
    *v45 = v59;
  }

  return result;
}

uint64_t sub_1D6BC8384@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  sub_1D5D504A0(0);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B5D160(0);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for FormatWebEmbed.Resolved();
  sub_1D5C00F18(a1 + *(v14 + 36), v13, sub_1D5B5D160);
  sub_1D5B5D194();
  v16 = v15;
  v17 = *(v15 - 8);
  if ((*(v17 + 48))(v13, 1, v15) == 1)
  {
    sub_1D6BC8628(v13, sub_1D5B5D160);
    v18 = 1;
  }

  else
  {
    sub_1D725BF7C();
    v19 = v27[1];
    (*(v17 + 8))(v13, v16);
    v20 = [v19 identifier];
    v21 = sub_1D726207C();
    v23 = v22;

    v24 = sub_1D726045C();
    (*(*(v24 - 8) + 56))(v9, 1, 1, v24);
    sub_1D5D1FA14(v21, v23, v19, a2, v9, a3);
    swift_unknownObjectRelease();

    sub_1D6BC8628(v9, sub_1D5D504A0);
    v18 = 0;
  }

  v25 = type metadata accessor for FeedHeadline(0);
  return (*(*(v25 - 8) + 56))(a3, v18, 1, v25);
}

uint64_t sub_1D6BC8628(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t OsloSheetPurchaseDataModel.init(purchaseIDAppConfigKey:postPurchaseData:)@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  *a3 = *a1;
  v4 = a3 + *(type metadata accessor for OsloSheetPurchaseDataModel(0) + 20);

  return sub_1D6BC86F8(a2, v4);
}

uint64_t sub_1D6BC86F8(uint64_t a1, uint64_t a2)
{
  sub_1D6BC8C54(0, &qword_1EDF281C8, type metadata accessor for FormatPostPurchaseData, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t FormatOsloSheetPurchaseDataModel.purchaseIDAppConfigKey.getter()
{
  v1 = *v0;

  return v1;
}

unint64_t FormatOsloSheetPurchaseDataModel.postPurchaseData.getter@<X0>(unint64_t *a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = v2;
  return sub_1D614F63C(v2);
}

uint64_t OsloSheetPurchaseDataModel.purchaseIDAppConfigKey.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

BOOL _s8NewsFeed32FormatOsloSheetPurchaseDataModelV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a2[2];
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (v4 || (v5 = sub_1D72646CC(), result = 0, (v5 & 1) != 0))
  {
    if ((v2 & 0xF000000000000007) == 0x7000000000000007)
    {
      sub_1D614F63C(v2);
      sub_1D614F63C(v3);
      if ((v3 & 0xF000000000000007) == 0x7000000000000007)
      {
        sub_1D614F680(v2);
        return 1;
      }
    }

    else
    {
      v9 = v2;
      if ((v3 & 0xF000000000000007) != 0x7000000000000007)
      {
        v8 = v3;
        sub_1D614F63C(v2);
        sub_1D614F63C(v3);
        sub_1D614F63C(v2);
        v7 = _s8NewsFeed18FormatPostPurchaseO2eeoiySbAC_ACtFZ_0(&v9, &v8);
        sub_1D614F69C(v8);
        sub_1D614F69C(v9);
        sub_1D614F680(v2);
        return v7;
      }

      sub_1D614F63C(v2);
      sub_1D614F63C(v3);
      sub_1D614F63C(v2);
      sub_1D614F69C(v2);
    }

    sub_1D614F680(v2);
    sub_1D614F680(v3);
    return 0;
  }

  return result;
}

unint64_t sub_1D6BC8994(uint64_t a1)
{
  result = sub_1D6BC89BC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6BC89BC()
{
  result = qword_1EC8931A0;
  if (!qword_1EC8931A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8931A0);
  }

  return result;
}

unint64_t sub_1D6BC8A10(void *a1)
{
  a1[1] = sub_1D6667800();
  a1[2] = sub_1D6703F20();
  result = sub_1D6BC8A48();
  a1[3] = result;
  return result;
}

unint64_t sub_1D6BC8A48()
{
  result = qword_1EC8931A8;
  if (!qword_1EC8931A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8931A8);
  }

  return result;
}

void sub_1D6BC8AD4()
{
  sub_1D6BC8C54(319, &qword_1EDF281C8, type metadata accessor for FormatPostPurchaseData, MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_1D6BC8BB0()
{
  type metadata accessor for OsloSheetPurchaseDataModel(319);
  if (v0 <= 0x3F)
  {
    sub_1D6BC8C54(319, qword_1EDF211D0, type metadata accessor for FormatPurchaseLandingPageData, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_1D6BC8C54(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void *sub_1D6BC8CB8(uint64_t a1, uint64_t a2)
{
  sub_1D6BC8C54(0, &qword_1EC890A38, type metadata accessor for FormatPurchaseData, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = v35 - v5;
  sub_1D6BC94FC(a2, v35 - v5, &qword_1EC890A38, type metadata accessor for FormatPurchaseData);
  v7 = type metadata accessor for FormatPurchaseData(0);
  if ((*(*(v7 - 8) + 48))(v6, 1, v7) == 1)
  {
    v8 = MEMORY[0x1E69E6F90];
    sub_1D6BC8C54(0, &qword_1EC880AC0, sub_1D5E4F358, MEMORY[0x1E69E6F90]);
    inited = swift_initStackObject();
    v35[0] = xmmword_1D7273AE0;
    *(inited + 16) = xmmword_1D7273AE0;
    v10 = inited + 32;
    sub_1D6BC8C54(0, &qword_1EC880490, sub_1D5EA74B8, v8);
    sub_1D5EA74B8();
    v12 = (*(*(v11 - 8) + 80) + 32) & ~*(*(v11 - 8) + 80);
    v13 = swift_allocObject();
    *(v13 + 16) = v35[0];
    v14 = v13 + v12;
    v15 = v14;
    v16 = 1701736270;
    v17 = 0xE400000000000000;
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 1)
    {
      v27 = MEMORY[0x1E69E6F90];
      if (EnumCaseMultiPayload == 2)
      {
        sub_1D6BC8C54(0, &qword_1EC880AC0, sub_1D5E4F358, MEMORY[0x1E69E6F90]);
        inited = swift_initStackObject();
        v35[0] = xmmword_1D7273AE0;
        *(inited + 16) = xmmword_1D7273AE0;
        v10 = inited + 32;
        sub_1D6BC8C54(0, &qword_1EC880490, sub_1D5EA74B8, v27);
        sub_1D5EA74B8();
        v29 = (*(*(v28 - 8) + 80) + 32) & ~*(*(v28 - 8) + 80);
        v13 = swift_allocObject();
        *(v13 + 16) = v35[0];
        v14 = v13 + v29;
        v17 = 0x80000001D73EAE60;
        v15 = v14;
        v16 = 0xD000000000000012;
      }

      else
      {
        sub_1D6BC8C54(0, &qword_1EC880AC0, sub_1D5E4F358, MEMORY[0x1E69E6F90]);
        inited = swift_initStackObject();
        v35[0] = xmmword_1D7273AE0;
        *(inited + 16) = xmmword_1D7273AE0;
        v10 = inited + 32;
        sub_1D6BC8C54(0, &qword_1EC880490, sub_1D5EA74B8, v27);
        sub_1D5EA74B8();
        v34 = (*(*(v33 - 8) + 80) + 32) & ~*(*(v33 - 8) + 80);
        v13 = swift_allocObject();
        *(v13 + 16) = v35[0];
        v14 = v13 + v34;
        v16 = 0x6565685320534D41;
        v15 = v14;
        v17 = 0xE900000000000074;
      }
    }

    else if (EnumCaseMultiPayload)
    {
      sub_1D6BC957C(v6, type metadata accessor for FormatPurchaseData);
      v30 = MEMORY[0x1E69E6F90];
      sub_1D6BC8C54(0, &qword_1EC880AC0, sub_1D5E4F358, MEMORY[0x1E69E6F90]);
      inited = swift_initStackObject();
      v35[0] = xmmword_1D7273AE0;
      *(inited + 16) = xmmword_1D7273AE0;
      v10 = inited + 32;
      sub_1D6BC8C54(0, &qword_1EC880490, sub_1D5EA74B8, v30);
      sub_1D5EA74B8();
      v32 = (*(*(v31 - 8) + 80) + 32) & ~*(*(v31 - 8) + 80);
      v13 = swift_allocObject();
      *(v13 + 16) = v35[0];
      v14 = v13 + v32;
      v16 = 0x20676E69646E614CLL;
      v17 = 0xEC00000065676150;
      v15 = v14;
    }

    else
    {
      sub_1D6BC957C(v6, type metadata accessor for FormatPurchaseData);
      v24 = MEMORY[0x1E69E6F90];
      sub_1D6BC8C54(0, &qword_1EC880AC0, sub_1D5E4F358, MEMORY[0x1E69E6F90]);
      inited = swift_initStackObject();
      v35[0] = xmmword_1D7273AE0;
      *(inited + 16) = xmmword_1D7273AE0;
      v10 = inited + 32;
      sub_1D6BC8C54(0, &qword_1EC880490, sub_1D5EA74B8, v24);
      sub_1D5EA74B8();
      v26 = (*(*(v25 - 8) + 80) + 32) & ~*(*(v25 - 8) + 80);
      v13 = swift_allocObject();
      *(v13 + 16) = v35[0];
      v14 = v13 + v26;
      v16 = 0x656853206F6C734FLL;
      v15 = v14;
      v17 = 0xEA00000000007465;
    }
  }

  sub_1D711F844(1701869908, 0xE400000000000000, v16, v17, v15);
  v18 = type metadata accessor for FormatInspectionItem(0);
  (*(*(v18 - 8) + 56))(v14, 0, 1, v18);
  sub_1D6795150(0x6573616863727550, 0xED00006174614420, 0, 0, v13, v36);
  swift_setDeallocating();
  sub_1D6BC957C(v14, sub_1D5EA74B8);
  swift_deallocClassInstance();
  *(inited + 56) = &type metadata for FormatInspectionGroup;
  *(inited + 64) = &off_1F518B2C0;
  v19 = swift_allocObject();
  *(inited + 32) = v19;
  *(v19 + 48) = v37;
  v20 = v36[1];
  *(v19 + 16) = v36[0];
  *(v19 + 32) = v20;
  v21 = sub_1D7073500(inited);
  swift_setDeallocating();
  sub_1D6BC957C(v10, sub_1D5E4F358);
  return v21;
}

uint64_t sub_1D6BC94FC(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1D6BC8C54(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1D6BC957C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t get_enum_tag_for_layout_string_8NewsFeed23FormatGroupNodeMaskDataO(uint64_t a1)
{
  if ((*(a1 + 64) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 64) & 3;
  }
}

uint64_t static ContextMenuItem.Puzzles.resetPuzzleProgress(_:)(uint64_t a1)
{
  v2 = sub_1D725DC6C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDF3AD00 != -1)
  {
    swift_once();
  }

  v7 = qword_1EC87DB18;

  if (v7 != -1)
  {
    swift_once();
  }

  v8 = qword_1EC895190;
  (*(v3 + 104))(v6, *MEMORY[0x1E69D7B48], v2);
  v11[1] = a1;
  sub_1D725D3DC();
  swift_allocObject();
  v9 = v8;
  swift_unknownObjectRetain();
  return sub_1D725D3AC();
}

uint64_t static ContextMenuItem.Puzzles.setStreakEligible(_:)(uint64_t a1)
{
  v2 = sub_1D725DC6C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDF3ACE8 != -1)
  {
    swift_once();
  }

  v7 = qword_1EC87DB20;

  if (v7 != -1)
  {
    swift_once();
  }

  v8 = qword_1EC895198;
  (*(v3 + 104))(v6, *MEMORY[0x1E69D7B48], v2);
  v11[1] = a1;
  sub_1D725D3DC();
  swift_allocObject();
  v9 = v8;
  swift_unknownObjectRetain();
  return sub_1D725D3AC();
}

uint64_t _s5TeaUI15ContextMenuItemC8NewsFeedE7PuzzlesV21openPuzzleFullArchive10puzzleTypeACSo08FCPuzzleN9Providing_p_tFZ_0(void *a1)
{
  v2 = sub_1D725DC6C();
  v31 = *(v2 - 8);
  v32 = v2;
  MEMORY[0x1EEE9AC00](v2, v3);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_1D72585BC();
  v6 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33, v7);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v12 = MEMORY[0x1EEE9AC00](v10, v11).n128_u64[0];
  v14 = &v30 - v13;
  v15 = [a1 identifier];
  if (!v15)
  {
    sub_1D726207C();
    v15 = sub_1D726203C();
  }

  v16 = [objc_opt_self() nss:v15 NewsURLForFullArchivePuzzleTypeID:?];

  sub_1D72584EC();
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v18 = [objc_opt_self() bundleForClass_];
  sub_1D725811C();

  sub_1D5C384A0();
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1D7273AE0;
  v20 = [a1 name];
  v21 = sub_1D726207C();
  v23 = v22;

  *(v19 + 56) = MEMORY[0x1E69E6158];
  *(v19 + 64) = sub_1D5B7E2C0();
  *(v19 + 32) = v21;
  *(v19 + 40) = v23;
  sub_1D72620BC();

  if (qword_1EDF3AF88 != -1)
  {
    swift_once();
  }

  v24 = v33;
  (*(v6 + 16))(v9, v14, v33);
  v25 = qword_1EC87DB00;

  if (v25 != -1)
  {
    swift_once();
  }

  v26 = qword_1EC895180;
  (*(v31 + 104))(v5, *MEMORY[0x1E69D7B48], v32);
  sub_1D725D3DC();
  swift_allocObject();
  v27 = v26;
  v28 = sub_1D725D3AC();
  (*(v6 + 8))(v14, v24);
  return v28;
}

uint64_t _s5TeaUI15ContextMenuItemC8NewsFeedE7PuzzlesV04moreH06puzzleACSgSo17FCPuzzleProviding_p_tFZ_0(void *a1)
{
  v2 = sub_1D725DC6C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v8 = [objc_opt_self() bundleForClass_];
  sub_1D725811C();

  if (qword_1EDF169A8 != -1)
  {
    swift_once();
  }

  v9 = [a1 puzzleType];
  if (qword_1EDF05C90 != -1)
  {
    swift_once();
  }

  v10 = qword_1EDF05C98;
  (*(v3 + 104))(v6, *MEMORY[0x1E69D7B48], v2);
  v13[1] = v9;
  sub_1D725D3DC();
  swift_allocObject();
  v11 = v10;
  return sub_1D725D3AC();
}

uint64_t _s5TeaUI15SharingActivityC8NewsFeedE21openPuzzleFullArchive10puzzleTypeACSo08FCPuzzleL9Providing_p_tFZ_0(void *a1)
{
  v2 = sub_1D725DFEC();
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v27 = sub_1D72585BC();
  v4 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27, v5);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v10 = MEMORY[0x1EEE9AC00](v8, v9).n128_u64[0];
  v12 = &v26 - v11;
  v13 = [a1 identifier];
  if (!v13)
  {
    sub_1D726207C();
    v13 = sub_1D726203C();
  }

  v14 = [objc_opt_self() nss:v13 NewsURLForFullArchivePuzzleTypeID:?];

  sub_1D72584EC();
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v16 = [objc_opt_self() bundleForClass_];
  sub_1D725811C();

  sub_1D5C384A0();
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1D7273AE0;
  v18 = [a1 name];
  v19 = sub_1D726207C();
  v21 = v20;

  *(v17 + 56) = MEMORY[0x1E69E6158];
  *(v17 + 64) = sub_1D5B7E2C0();
  *(v17 + 32) = v19;
  *(v17 + 40) = v21;
  sub_1D72620BC();

  if (qword_1EDF3AF88 != -1)
  {
    swift_once();
  }

  v22 = v27;
  (*(v4 + 16))(v7, v12, v27);

  sub_1D726203C();
  if (qword_1EC87DB00 != -1)
  {
    swift_once();
  }

  v23 = qword_1EC895180;
  sub_1D725DFDC();
  sub_1D725D5DC();
  swift_allocObject();
  v24 = sub_1D725D5CC();
  (*(v4 + 8))(v12, v22);
  return v24;
}

unint64_t sub_1D6BCA41C()
{
  result = qword_1EC8931B0;
  if (!qword_1EC8931B0)
  {
    sub_1D6BCA474();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8931B0);
  }

  return result;
}

void sub_1D6BCA474()
{
  if (!qword_1EC87F850)
  {
    v0 = sub_1D72627FC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC87F850);
    }
  }
}

uint64_t sub_1D6BCA4C4(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    v6 = 0x656D6167657270;
    v7 = 0x6572676F72506E69;
    v8 = 0x6B61657262;
    if (a1 != 3)
    {
      v8 = 0x656E6F7074736F70;
    }

    if (a1 != 2)
    {
      v7 = v8;
    }

    if (a1)
    {
      v6 = 0x6576694C7261656ELL;
    }

    if (a1 <= 1u)
    {
      return v6;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v1 = 0x6C616E6966;
    v2 = 0x74696566726F66;
    if (a1 != 9)
    {
      v2 = 0x6E776F6E6B6E75;
    }

    if (a1 != 8)
    {
      v1 = v2;
    }

    v3 = 0x65646E6570737573;
    v4 = 0x656C6C65636E6163;
    if (a1 != 6)
    {
      v4 = 0x646579616C6564;
    }

    if (a1 != 5)
    {
      v3 = v4;
    }

    if (a1 <= 7u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_1D6BCA628(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = sub_1D6BCA4C4(*a1);
  v5 = v4;
  if (v3 == sub_1D6BCA4C4(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1D72646CC();
  }

  return v8 & 1;
}

uint64_t sub_1D6BCA6B0()
{
  v1 = *v0;
  sub_1D7264A0C();
  sub_1D6BCA4C4(v1);
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D6BCA714()
{
  sub_1D6BCA4C4(*v0);
  sub_1D72621EC();
}

uint64_t sub_1D6BCA768()
{
  v1 = *v0;
  sub_1D7264A0C();
  sub_1D6BCA4C4(v1);
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D6BCA7C8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D6BCAABC();
  *a1 = result;
  return result;
}

uint64_t sub_1D6BCA7F8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D6BCA4C4(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

BOOL sub_1D6BCA8E4(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = sub_1D5FD008C(*a1, &unk_1F50F2678);
  if (v4)
  {
    v5 = 0;
  }

  else
  {
    v5 = v3;
  }

  v6 = sub_1D5FD008C(v2, &unk_1F50F2678);
  if (v7)
  {
    v8 = 0;
  }

  else
  {
    v8 = v6;
  }

  return v5 < v8;
}

BOOL sub_1D6BCA944(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = sub_1D5FD008C(*a2, &unk_1F50F2678);
  if (v4)
  {
    v5 = 0;
  }

  else
  {
    v5 = v3;
  }

  v6 = sub_1D5FD008C(v2, &unk_1F50F2678);
  if (v7)
  {
    v8 = 0;
  }

  else
  {
    v8 = v6;
  }

  return v5 >= v8;
}

BOOL sub_1D6BCA9A8(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = sub_1D5FD008C(*a1, &unk_1F50F2678);
  if (v4)
  {
    v5 = 0;
  }

  else
  {
    v5 = v3;
  }

  v6 = sub_1D5FD008C(v2, &unk_1F50F2678);
  if (v7)
  {
    v8 = 0;
  }

  else
  {
    v8 = v6;
  }

  return v5 >= v8;
}

BOOL sub_1D6BCAA08(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = sub_1D5FD008C(*a1, &unk_1F50F2678);
  if (v4)
  {
    v5 = 0;
  }

  else
  {
    v5 = v3;
  }

  v6 = sub_1D5FD008C(v2, &unk_1F50F2678);
  if (v7)
  {
    v8 = 0;
  }

  else
  {
    v8 = v6;
  }

  return v8 < v5;
}

unint64_t sub_1D6BCAA68()
{
  result = qword_1EDF07400;
  if (!qword_1EDF07400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF07400);
  }

  return result;
}

uint64_t sub_1D6BCAABC()
{
  v0 = sub_1D72641CC();

  if (v0 >= 0xB)
  {
    return 11;
  }

  else
  {
    return v0;
  }
}

uint64_t FormatLayeredMediaNodeContent.layeredMedia(from:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *v2;
  if (*v2 < 0)
  {
    v7 = v5 & 0x7FFFFFFFFFFFFFFFLL;
    v8 = *(v7 + 16);
    v9 = *(v7 + 24);

    sub_1D5FBB058(v10, a1, v8, v9);
    v11 = v10[0];
    FormatLayeredMediaNodeContent.layeredMedia(from:)(a1);
  }

  else
  {
    LOBYTE(v11) = *(v5 + 16);
    v10[3] = type metadata accessor for FormatNodeContext();
    v10[4] = &off_1F51AF328;
    v10[0] = a1;

    sub_1D5F2B894(v10, a2);
    return __swift_destroy_boxed_opaque_existential_1(v10);
  }
}

uint64_t _s8NewsFeed29FormatLayeredMediaNodeContentO2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if ((*a1 & 0x8000000000000000) == 0)
  {
    if ((v3 & 0x8000000000000000) == 0)
    {
      return (*(v2 + 16) ^ *(v3 + 16) ^ 1) & 1;
    }

    return 0;
  }

  if ((v3 & 0x8000000000000000) == 0)
  {
    return 0;
  }

  v6 = *((v2 & 0x7FFFFFFFFFFFFFFFLL) + 0x10);
  v5 = *((v2 & 0x7FFFFFFFFFFFFFFFLL) + 0x18);
  v7 = *((v3 & 0x7FFFFFFFFFFFFFFFLL) + 0x10);
  v8 = *((v3 & 0x7FFFFFFFFFFFFFFFLL) + 0x18);

  LOBYTE(v5) = sub_1D6365C90(v6, v5, v7, v8);

  return v5 & 1;
}

unint64_t sub_1D6BCAD10(uint64_t a1)
{
  result = sub_1D669E898();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6BCAD38(void *a1)
{
  a1[1] = sub_1D66FB9E4();
  a1[2] = sub_1D669E7F0();
  result = sub_1D6BCAD70();
  a1[3] = result;
  return result;
}

unint64_t sub_1D6BCAD70()
{
  result = qword_1EC8931B8;
  if (!qword_1EC8931B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8931B8);
  }

  return result;
}

uint64_t sub_1D6BCADE0@<X0>(_BYTE *a1@<X8>)
{

  sub_1D725972C();

  sub_1D725972C();

  sub_1D725972C();

  *a1 = v5;
  a1[1] = v4;
  a1[2] = v3;
  return result;
}

id sub_1D6BCAEC8()
{
  v17.receiver = v0;
  v17.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v17, sel_viewDidLoad);
  result = [v0 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_8;
  }

  v2 = result;
  v3 = [objc_opt_self() systemBackgroundColor];
  [v2 setBackgroundColor_];

  v4 = *&v0[OBJC_IVAR____TtC8NewsFeed42DebugFormatWorkspaceSettingsViewController_settingsViewController];
  [v0 addChildViewController_];
  result = [v4 view];
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v5 = result;
  result = [v0 view];
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v6 = result;
  [result bounds];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  [v5 setFrame_];
  result = [v0 view];
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v15 = result;
  result = [v4 view];
  if (result)
  {
    v16 = result;
    [v15 addSubview_];

    return [v4 didMoveToParentViewController_];
  }

LABEL_11:
  __break(1u);
  return result;
}

uint64_t type metadata accessor for DebugFormatWorkspaceSettingsViewController()
{
  result = qword_1EC893218;
  if (!qword_1EC893218)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D6BCB314()
{
  result = type metadata accessor for DebugFormatWorkspace();
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

uint64_t sub_1D6BCB3FC(uint64_t a1, uint64_t a2, SEL *a3)
{
  v5 = [*v3 navigationItem];
  v6 = [v5 *a3];

  if (!v6)
  {
    return 0;
  }

  sub_1D5B816F8();
  v7 = sub_1D726267C();

  return v7;
}

unint64_t sub_1D6BCB480()
{
  result = qword_1EC893228;
  if (!qword_1EC893228)
  {
    type metadata accessor for DebugFormatWorkspaceSettingsViewController();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC893228);
  }

  return result;
}

uint64_t sub_1D6BCB4D8()
{
  v0 = sub_1D72597EC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D72597FC();
  v7 = MEMORY[0x1EEE9AC00](v5, v6);
  (*(v9 + 104))(v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x1E69D6EA0], v7);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E88], v0);
  v11[0] = 0;
  v11[1] = 0xE000000000000000;
  sub_1D6BCCFF4(0, &qword_1EC885688, MEMORY[0x1E69E6158], MEMORY[0x1E69D6EE0], MEMORY[0x1E69D6EB0]);
  swift_allocObject();
  result = sub_1D725987C();
  qword_1EC8931C0 = result;
  return result;
}

uint64_t sub_1D6BCB6BC()
{
  v12 = sub_1D72597EC();
  v0 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v1);
  v3 = v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1D72597FC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6BCCEC8(0, &qword_1EC893240, MEMORY[0x1E69D6EB0]);
  v11[0] = "wildcard_slot_fallback";
  v11[1] = v9;
  v15 = 1;
  sub_1D6BCCCE4(0, &qword_1EC893248, sub_1D6BCCC40);
  sub_1D6BCCC40();
  *(swift_allocObject() + 16) = xmmword_1D7270C10;
  v14 = 1;
  sub_1D725980C();
  v13 = 0;
  sub_1D725980C();
  (*(v5 + 104))(v8, *MEMORY[0x1E69D6EA0], v4);
  (*(v0 + 104))(v3, *MEMORY[0x1E69D6E88], v12);
  sub_1D6BCCC90();
  result = sub_1D725982C();
  qword_1EC8931C8 = result;
  return result;
}

uint64_t sub_1D6BCB9E0()
{
  v0 = sub_1D72597EC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_1D72597FC();
  v7 = MEMORY[0x1EEE9AC00](v5, v6);
  (*(v9 + 104))(&v11[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x1E69D6EA0], v7);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E88], v0);
  v11[15] = 0;
  sub_1D6BCCFF4(0, &qword_1EDF45BA8, MEMORY[0x1E69E6370], MEMORY[0x1E69D6EF0], MEMORY[0x1E69D6EB0]);
  swift_allocObject();
  result = sub_1D725987C();
  qword_1EC8931D0 = result;
  return result;
}

uint64_t sub_1D6BCBBC0()
{
  v0 = sub_1D72597EC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_1D72597FC();
  v7 = MEMORY[0x1EEE9AC00](v5, v6);
  (*(v9 + 104))(&v11[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x1E69D6EA0], v7);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E88], v0);
  v11[15] = 0;
  sub_1D6BCCFF4(0, &qword_1EDF45BA8, MEMORY[0x1E69E6370], MEMORY[0x1E69D6EF0], MEMORY[0x1E69D6EB0]);
  swift_allocObject();
  result = sub_1D725987C();
  qword_1EC8931D8 = result;
  return result;
}

id sub_1D6BCBDA0(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v5 = MEMORY[0x1E69D6E30];
  sub_1D6BCCFF4(0, &qword_1EC881610, MEMORY[0x1E69E6370], MEMORY[0x1E69D6EF0], MEMORY[0x1E69D6E30]);
  v84 = *(v6 - 8);
  v85 = v6;
  MEMORY[0x1EEE9AC00](v6, v7);
  v83 = v71 - v8;
  v82 = sub_1D725970C();
  v80 = *(v82 - 8);
  MEMORY[0x1EEE9AC00](v82, v9);
  v81 = v71 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6BCCEC8(0, &qword_1EC893260, MEMORY[0x1E69D6E30]);
  v79 = v11;
  v77 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v12);
  v78 = v71 - v13;
  v75 = type metadata accessor for DebugFormatWorkspaceKind();
  MEMORY[0x1EEE9AC00](v75, v14);
  v76 = v71 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6BCCFF4(0, &unk_1EC890070, MEMORY[0x1E69E6158], MEMORY[0x1E69D6EE0], v5);
  v72 = v16;
  v88 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = v71 - v18;
  v20 = OBJC_IVAR____TtC8NewsFeed42DebugFormatWorkspaceSettingsViewController__name;
  if (qword_1EC87D930 != -1)
  {
    swift_once();
  }

  sub_1D6BCCFF4(0, &qword_1EC88DDB0, MEMORY[0x1E69E6158], MEMORY[0x1E69D6EE0], MEMORY[0x1E69D6D90]);
  swift_allocObject();
  swift_retain_n();
  *&v2[v20] = sub_1D725977C();
  v21 = OBJC_IVAR____TtC8NewsFeed42DebugFormatWorkspaceSettingsViewController__layoutOrder;
  if (qword_1EC87D938 != -1)
  {
    swift_once();
  }

  v22 = qword_1EC8931C8;
  sub_1D6BCCEC8(0, &qword_1EC893230, MEMORY[0x1E69D6D90]);
  swift_allocObject();
  swift_retain_n();
  v74 = v22;
  *&v2[v21] = sub_1D725977C();
  v23 = OBJC_IVAR____TtC8NewsFeed42DebugFormatWorkspaceSettingsViewController__wildcardSlotFallback;
  if (qword_1EC87D940 != -1)
  {
    swift_once();
  }

  v24 = qword_1EC8931D0;
  sub_1D6BCCFF4(0, &qword_1EC88DD68, MEMORY[0x1E69E6370], MEMORY[0x1E69D6EF0], MEMORY[0x1E69D6D90]);
  swift_allocObject();
  swift_retain_n();
  v73 = v24;
  *&v2[v23] = sub_1D725977C();
  v25 = OBJC_IVAR____TtC8NewsFeed42DebugFormatWorkspaceSettingsViewController__showMissingOptionBindings;
  if (qword_1EC87D948 != -1)
  {
    swift_once();
  }

  v26 = qword_1EC8931D8;
  swift_allocObject();
  swift_retain_n();
  v71[4] = v26;
  *&v2[v25] = sub_1D725977C();
  *&v2[OBJC_IVAR____TtC8NewsFeed42DebugFormatWorkspaceSettingsViewController_editor] = a1;
  v87 = v2;
  sub_1D6BCCE00(a2, &v2[OBJC_IVAR____TtC8NewsFeed42DebugFormatWorkspaceSettingsViewController_workspace], type metadata accessor for DebugFormatWorkspace);
  sub_1D6BCCCE4(0, &unk_1EC8941A0, MEMORY[0x1E69D6E78]);
  v27 = *(sub_1D72597DC() - 8);
  v28 = (*(v27 + 80) + 32) & ~*(v27 + 80);
  v71[2] = *(v27 + 72);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_1D7270C10;
  v71[3] = v29;
  v30 = v29 + v28;
  sub_1D6BCCCE4(0, &qword_1EC88F1B0, sub_1D6BCCD38);
  v71[1] = v31;
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_1D7273AE0;
  v33 = a2;
  v34 = MEMORY[0x1E69E6158];
  v35 = MEMORY[0x1E69D6EE0];
  sub_1D6BCCFF4(0, &unk_1EC890080, MEMORY[0x1E69E6158], MEMORY[0x1E69D6EE0], MEMORY[0x1E69D6E50]);
  v37 = v36;
  v38 = *(v88 + 104);
  LODWORD(v88) = *MEMORY[0x1E69D6E28];
  v38(v19);

  v39 = sub_1D725978C();
  *(v32 + 56) = v37;
  v40 = v33;
  *(v32 + 64) = sub_1D6BCCD9C(&qword_1EC881628, &unk_1EC890080, v34, v35);
  *(v32 + 32) = v39;
  v72 = v30;
  sub_1D72597CC();
  v41 = v33;
  v42 = v76;
  sub_1D6BCCE00(v41, v76, type metadata accessor for DebugFormatWorkspaceKind);
  v43 = 0;
  v44 = 0;
  if (swift_getEnumCaseMultiPayload() <= 1)
  {
    sub_1D6BCCE68(v42, type metadata accessor for DebugFormatWorkspaceKind);
    v45 = (v40 + *(type metadata accessor for DebugFormatWorkspace() + 20));
    v43 = *v45;
    v44 = v45[1];
  }

  v75 = v44;
  v76 = v43;
  v46 = swift_allocObject();
  *(v46 + 16) = xmmword_1D7279970;
  sub_1D6BCCEC8(0, &qword_1EC893268, MEMORY[0x1E69D6E50]);
  v48 = v47;
  (*(v77 + 104))(v78, v88, v79);
  sub_1D6BCCF2C();
  v49 = sub_1D72597AC();
  *(v46 + 56) = v48;
  *(v46 + 64) = sub_1D6BCCF80();
  *(v46 + 32) = v49;
  sub_1D6BCCFF4(0, &qword_1EC881630, MEMORY[0x1E69E6370], MEMORY[0x1E69D6EF0], MEMORY[0x1E69D6E50]);
  v51 = v50;
  v79 = v40;
  LODWORD(v78) = *MEMORY[0x1E69D6D78];
  v52 = v81;
  v80 = *(v80 + 104);
  v53 = v82;
  (v80)(v81);
  v54 = v83;
  v84 = *(v84 + 104);
  v55 = v85;
  (v84)(v83, v88, v85);
  v56 = sub_1D72597BC();
  *(v46 + 96) = v51;
  v57 = sub_1D6BCCD9C(&qword_1EC8900E0, &qword_1EC881630, MEMORY[0x1E69E6370], MEMORY[0x1E69D6EF0]);
  *(v46 + 104) = v57;
  *(v46 + 72) = v56;
  (v80)(v52, v78, v53);
  (v84)(v54, v88, v55);
  v58 = sub_1D72597BC();
  *(v46 + 136) = v51;
  *(v46 + 144) = v57;
  *(v46 + 112) = v58;
  sub_1D72597CC();
  v59 = sub_1D725DFCC();
  swift_allocObject();
  v60 = sub_1D725DFBC();
  v92 = v59;
  v93 = MEMORY[0x1E69D7D00];
  v90 = v60;
  v61 = objc_allocWithZone(sub_1D725E42C());
  v62 = sub_1D725E41C();
  v63 = v87;
  *&v87[OBJC_IVAR____TtC8NewsFeed42DebugFormatWorkspaceSettingsViewController_settingsViewController] = v62;
  v89.receiver = v63;
  v89.super_class = ObjectType;
  v64 = objc_msgSendSuper2(&v89, sel_initWithNibName_bundle_, 0, 0);
  v65 = type metadata accessor for DebugFormatWorkspace();
  v66 = v79;
  v67 = v79 + *(v65 + 20);
  v68 = *(v67 + 24);
  v90 = *(v67 + 16);
  v91 = v68;
  v69 = v64;

  sub_1D725973C();

  LOBYTE(v90) = *(v67 + 176);

  sub_1D725973C();

  LOBYTE(v90) = *(v67 + 177);

  sub_1D725973C();

  LOBYTE(v90) = *(v67 + 178);

  sub_1D725973C();

  sub_1D6BCCE68(v66, type metadata accessor for DebugFormatWorkspace);
  return v69;
}

void sub_1D6BCC96C()
{
  v1 = OBJC_IVAR____TtC8NewsFeed42DebugFormatWorkspaceSettingsViewController__name;
  if (qword_1EC87D930 != -1)
  {
    swift_once();
  }

  sub_1D6BCCFF4(0, &qword_1EC88DDB0, MEMORY[0x1E69E6158], MEMORY[0x1E69D6EE0], MEMORY[0x1E69D6D90]);
  swift_allocObject();

  *(v0 + v1) = sub_1D725977C();
  v2 = OBJC_IVAR____TtC8NewsFeed42DebugFormatWorkspaceSettingsViewController__layoutOrder;
  if (qword_1EC87D938 != -1)
  {
    swift_once();
  }

  sub_1D6BCCEC8(0, &qword_1EC893230, MEMORY[0x1E69D6D90]);
  swift_allocObject();

  *(v0 + v2) = sub_1D725977C();
  v3 = OBJC_IVAR____TtC8NewsFeed42DebugFormatWorkspaceSettingsViewController__wildcardSlotFallback;
  if (qword_1EC87D940 != -1)
  {
    swift_once();
  }

  sub_1D6BCCFF4(0, &qword_1EC88DD68, MEMORY[0x1E69E6370], MEMORY[0x1E69D6EF0], MEMORY[0x1E69D6D90]);
  swift_allocObject();

  *(v0 + v3) = sub_1D725977C();
  v4 = OBJC_IVAR____TtC8NewsFeed42DebugFormatWorkspaceSettingsViewController__showMissingOptionBindings;
  if (qword_1EC87D948 != -1)
  {
    swift_once();
  }

  swift_allocObject();

  *(v0 + v4) = sub_1D725977C();
  sub_1D726402C();
  __break(1u);
}

unint64_t sub_1D6BCCBEC()
{
  result = qword_1EC893238;
  if (!qword_1EC893238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC893238);
  }

  return result;
}

void sub_1D6BCCC40()
{
  if (!qword_1EC893250)
  {
    v0 = sub_1D725981C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC893250);
    }
  }
}

unint64_t sub_1D6BCCC90()
{
  result = qword_1EC893258;
  if (!qword_1EC893258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC893258);
  }

  return result;
}

void sub_1D6BCCCE4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D72644CC();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1D6BCCD38()
{
  result = qword_1EC8941B0;
  if (!qword_1EC8941B0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EC8941B0);
  }

  return result;
}

uint64_t sub_1D6BCCD9C(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1D6BCCFF4(255, a2, a3, a4, MEMORY[0x1E69D6E50]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D6BCCE00(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D6BCCE68(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1D6BCCEC8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D6BCCBEC();
    v7 = a3(a1, &type metadata for FeedLayoutOrder, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1D6BCCF2C()
{
  result = qword_1EC893270;
  if (!qword_1EC893270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC893270);
  }

  return result;
}

unint64_t sub_1D6BCCF80()
{
  result = qword_1EC893278;
  if (!qword_1EC893278)
  {
    sub_1D6BCCEC8(255, &qword_1EC893268, MEMORY[0x1E69D6E50]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC893278);
  }

  return result;
}

void sub_1D6BCCFF4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void *FeedContextFactory.__allocating_init(paidBundleConfigManager:paidAccessChecker:bundleSubscriptionManager:bundleSessionManager:featureAvailability:appConfigManager:platform:userInfo:)(__int128 *a1, uint64_t a2, uint64_t a3, __int128 *a4, __int128 *a5, __int128 *a6, uint64_t *a7, __int128 *a8)
{
  v16 = swift_allocObject();
  v18 = *a7;
  v17 = a7[1];
  sub_1D5B63F14(a1, (v16 + 2));
  v16[7] = a2;
  v16[8] = a3;
  sub_1D5B63F14(a4, (v16 + 9));
  sub_1D5B63F14(a5, (v16 + 14));
  sub_1D5B63F14(a6, (v16 + 19));
  v16[24] = v18;
  v16[25] = v17;
  sub_1D5B63F14(a8, (v16 + 26));
  v16[31] = 0;
  return v16;
}

void *FeedContextFactory.init(paidBundleConfigManager:paidAccessChecker:bundleSubscriptionManager:bundleSessionManager:featureAvailability:appConfigManager:platform:userInfo:)(__int128 *a1, uint64_t a2, uint64_t a3, __int128 *a4, __int128 *a5, __int128 *a6, uint64_t *a7, __int128 *a8)
{
  v15 = *a7;
  v16 = a7[1];
  sub_1D5B63F14(a1, (v8 + 2));
  v8[7] = a2;
  v8[8] = a3;
  sub_1D5B63F14(a4, (v8 + 9));
  sub_1D5B63F14(a5, (v8 + 14));
  sub_1D5B63F14(a6, (v8 + 19));
  v8[24] = v15;
  v8[25] = v16;
  sub_1D5B63F14(a8, (v8 + 26));
  v8[31] = 0;
  return v8;
}

void *FeedContextFactory.__allocating_init(paidBundleConfigManager:paidAccessChecker:bundleSubscriptionManager:bundleSessionManager:featureAvailability:appConfigManager:platform:userInfo:subscriptionController:)(__int128 *a1, uint64_t a2, uint64_t a3, __int128 *a4, __int128 *a5, __int128 *a6, uint64_t *a7, __int128 *a8, uint64_t a9)
{
  v16 = swift_allocObject();
  v17 = *a7;
  v18 = a7[1];
  sub_1D5B63F14(a1, (v16 + 2));
  v16[7] = a2;
  v16[8] = a3;
  sub_1D5B63F14(a4, (v16 + 9));
  sub_1D5B63F14(a5, (v16 + 14));
  sub_1D5B63F14(a6, (v16 + 19));
  v16[24] = v17;
  v16[25] = v18;
  sub_1D5B63F14(a8, (v16 + 26));
  v16[31] = a9;
  return v16;
}

void *FeedContextFactory.init(paidBundleConfigManager:paidAccessChecker:bundleSubscriptionManager:bundleSessionManager:featureAvailability:appConfigManager:platform:userInfo:subscriptionController:)(__int128 *a1, uint64_t a2, uint64_t a3, __int128 *a4, __int128 *a5, __int128 *a6, uint64_t *a7, __int128 *a8, uint64_t a9)
{
  v16 = *a7;
  v17 = a7[1];
  sub_1D5B63F14(a1, (v9 + 2));
  v9[7] = a2;
  v9[8] = a3;
  sub_1D5B63F14(a4, (v9 + 9));
  sub_1D5B63F14(a5, (v9 + 14));
  sub_1D5B63F14(a6, (v9 + 19));
  v9[24] = v16;
  v9[25] = v17;
  sub_1D5B63F14(a8, (v9 + 26));
  v9[31] = a9;
  return v9;
}

uint64_t FeedContextFactory.createFeedContext<A>(serviceConfig:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, char **a3@<X8>)
{
  v6 = (*(a2 + 96))(a1, a2);
  FeedServiceConfigType.feedMode.getter(a1, a2, &v9);
  v8 = v9;
  sub_1D5B87E40(v6, &v8, a3);
}

uint64_t sub_1D6BCD45C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v5 = *v4;
  v6 = *a4;
  v7 = a4[1];
  __swift_project_boxed_opaque_existential_1((v5 + 16), *(v5 + 40));
  v9[0] = v6;
  v9[1] = v7;
  return sub_1D6D2F5DC(v9);
}

uint64_t sub_1D6BCD4A4()
{
  v1 = v0;
  v2 = sub_1D72585BC();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for WebEmbedDataVisualizationDataServiceError();
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = (v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D6BCD870(v1, v10);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      v18 = v10[2];
      v22 = 0;
      v23 = 0xE000000000000000;
      sub_1D7263D4C();
      MEMORY[0x1DA6F9910](0xD000000000000043, 0x80000001D73EB620);
      v21[1] = v18;
      v19 = sub_1D72644BC();
      MEMORY[0x1DA6F9910](v19);

      return v22;
    }

    (*(v3 + 32))(v6, v10, v2);
    v22 = 0;
    v23 = 0xE000000000000000;
    sub_1D7263D4C();
    v13 = "d with status code=";
    v14 = 0xD000000000000050;
  }

  else
  {
    if (EnumCaseMultiPayload == 2)
    {
      v12 = *v10;
      v22 = 0;
      v23 = 0xE000000000000000;
      sub_1D7263D4C();
      MEMORY[0x1DA6F9910](0xD000000000000045, 0x80000001D73EB5D0);
      swift_getErrorValue();
      goto LABEL_8;
    }

    if (EnumCaseMultiPayload == 3)
    {
      v12 = *v10;
      v22 = 0;
      v23 = 0xE000000000000000;
      sub_1D7263D4C();
      MEMORY[0x1DA6F9910](0xD000000000000048, 0x80000001D73EB580);
      swift_getErrorValue();
LABEL_8:
      v15 = sub_1D726497C();
      MEMORY[0x1DA6F9910](v15);

      return v22;
    }

    (*(v3 + 32))(v6, v10, v2);
    v22 = 0;
    v23 = 0xE000000000000000;
    sub_1D7263D4C();
    v13 = "userActionReportProcessor";
    v14 = 0xD000000000000054;
  }

  MEMORY[0x1DA6F9910](v14, v13 | 0x8000000000000000);
  sub_1D614088C();
  v16 = sub_1D72644BC();
  MEMORY[0x1DA6F9910](v16);

  v17 = v22;
  (*(v3 + 8))(v6, v2);
  return v17;
}

uint64_t type metadata accessor for WebEmbedDataVisualizationDataServiceError()
{
  result = qword_1EDF162D0;
  if (!qword_1EDF162D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D6BCD870(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WebEmbedDataVisualizationDataServiceError();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1D6BCD8D4()
{
  sub_1D6BCDA58(319, &qword_1EDF18AC8, MEMORY[0x1E6968FB0]);
  if (v0 <= 0x3F)
  {
    sub_1D6BCD99C();
    if (v1 <= 0x3F)
    {
      sub_1D6BCDA58(319, &unk_1EDF01CE0, sub_1D5BA6EF4);
      if (v2 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void sub_1D6BCD99C()
{
  if (!qword_1EDF04708)
  {
    sub_1D6BCDA08();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDF04708);
    }
  }
}

void sub_1D6BCDA08()
{
  if (!qword_1EDF3C7C0)
  {
    v0 = sub_1D726393C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF3C7C0);
    }
  }
}

void sub_1D6BCDA58(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void))
{
  if (!*a2)
  {
    v4 = a3(0);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1D6BCDAA4(void *a1, uint64_t a2)
{
  v90 = a1;
  v5 = sub_1D7257B1C();
  v84 = *(v5 - 8);
  v85 = v5;
  MEMORY[0x1EEE9AC00](v5, v6);
  v83 = v81 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = type metadata accessor for FormatVideoPlayerData();
  MEMORY[0x1EEE9AC00](v87, v8);
  v91 = v81 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v92 = v81 - v12;
  v93 = a2;
  v13 = a2 + OBJC_IVAR____TtC8NewsFeed31FormatVideoPlayerViewController_delegate;
  *(v13 + 8) = 0;
  v86 = v13;
  swift_unknownObjectWeakAssign();
  v88 = v2;
  v14 = *(v2 + 200);
  swift_beginAccess();
  v89 = v14;
  v15 = *(v14 + 16);
  v16 = 1 << *(v15 + 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & *(v15 + 64);
  v19 = (v16 + 63) >> 6;

  v20 = 0;
  while (v18)
  {
LABEL_9:
    v22 = __clz(__rbit64(v18));
    v18 &= v18 - 1;
    v23 = *(*(v15 + 56) + ((v20 << 9) | (8 * v22)));
    v24 = &v23[OBJC_IVAR____TtC8NewsFeed24FormatVideoPlayerManager_delegate];
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v3 = Strong;
      v26 = v23;
      swift_unknownObjectRelease();
      if (v3 == v93)
      {
        *(v24 + 1) = 0;
        swift_unknownObjectWeakAssign();
      }
    }
  }

  while (1)
  {
    v21 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      __break(1u);
LABEL_27:
      swift_once();
      goto LABEL_19;
    }

    if (v21 >= v19)
    {
      break;
    }

    v18 = *(v15 + 64 + 8 * v21);
    ++v20;
    if (v18)
    {
      v20 = v21;
      goto LABEL_9;
    }
  }

  v27 = v92;
  sub_1D5EBC2B0(v90, v92);
  v18 = v88;
  sub_1D5B68374(v88 + 160, v104);
  v3 = sub_1D6BCE908(v27, v104);
  v92 = v28;
  v29 = v89;
  swift_beginAccess();
  v30 = *(v29 + 16);
  if (*(v30 + 16))
  {
    v31 = sub_1D6D8CB60(v3, v92);
    if (v32)
    {
      v33 = *(*(v30 + 56) + 8 * v31);
      swift_endAccess();
      v34 = v33;

      if (qword_1EDF32A58 != -1)
      {
        swift_once();
      }

      sub_1D5C384A0();
      v35 = swift_allocObject();
      *(v35 + 16) = xmmword_1D7273AE0;
      v36 = sub_1D72583DC();
      v38 = v37;
      *(v35 + 56) = MEMORY[0x1E69E6158];
      *(v35 + 64) = sub_1D5B7E2C0();
      *(v35 + 32) = v36;
      *(v35 + 40) = v38;
      sub_1D7262EDC();
      sub_1D725C30C();

      *&v34[OBJC_IVAR____TtC8NewsFeed24FormatVideoPlayerManager_delegate + 8] = &off_1F51B1DB8;
      swift_unknownObjectWeakAssign();
      *(v86 + 8) = &off_1F51AE0E0;
      swift_unknownObjectWeakAssign();
      return v34;
    }
  }

  swift_endAccess();
  if (qword_1EDF32A58 != -1)
  {
    goto LABEL_27;
  }

LABEL_19:
  sub_1D5C384A0();
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_1D7273AE0;
  v40 = sub_1D72583DC();
  v42 = v41;
  *(v39 + 56) = MEMORY[0x1E69E6158];
  *(v39 + 64) = sub_1D5B7E2C0();
  *(v39 + 32) = v40;
  *(v39 + 40) = v42;
  sub_1D7262EDC();
  sub_1D725C30C();

  __swift_project_boxed_opaque_existential_1((v18 + 32), *(v18 + 56));
  sub_1D5B483C4(0, &qword_1EDF1EE80);
  result = sub_1D725AACC();
  if (!v103)
  {
    __break(1u);
    goto LABEL_29;
  }

  sub_1D5B63F14(&v102, v104);
  v44 = swift_unknownObjectWeakLoadStrong();
  v45 = *(v18 + 24);
  v46 = v105;
  v47 = v106;
  __swift_mutable_project_boxed_opaque_existential_1(v104, v105);
  (*(v47 + 16))(v44, v45, v46, v47);
  __swift_project_boxed_opaque_existential_1((v18 + 32), *(v18 + 56));
  sub_1D5B7B1C8();
  result = sub_1D725AABC();
  if (!result)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v48 = result;
  __swift_project_boxed_opaque_existential_1((v18 + 32), *(v18 + 56));
  sub_1D5B483C4(0, &qword_1EDF1E400);
  result = sub_1D725AACC();
  if (!v101)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  sub_1D5B63F14(&v100, &v102);
  sub_1D5EBC2B0(v90, v91);
  sub_1D5B68374(v104, &v100);
  sub_1D5B68374(v18 + 72, v99);
  v49 = *(v18 + 112);
  __swift_project_boxed_opaque_existential_1((v18 + 32), *(v18 + 56));
  sub_1D5B483C4(0, &qword_1EDF439E0);
  result = sub_1D725AACC();
  if (!v97)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v50 = v97;
  v51 = v98;
  __swift_project_boxed_opaque_existential_1((v18 + 32), *(v18 + 56));
  sub_1D5B48EAC();
  result = sub_1D725AABC();
  if (result)
  {
    v52 = result;
    sub_1D5B68374(v18 + 160, v96);
    sub_1D5B68374(&v102, v95);
    v53 = type metadata accessor for FormatVideoPlayerManager();
    v54 = objc_allocWithZone(v53);
    *&v54[OBJC_IVAR____TtC8NewsFeed24FormatVideoPlayerManager_delegate + 8] = 0;
    swift_unknownObjectWeakInit();
    *&v54[OBJC_IVAR____TtC8NewsFeed24FormatVideoPlayerManager_reuseDelegate + 8] = 0;
    swift_unknownObjectWeakInit();
    *&v54[OBJC_IVAR____TtC8NewsFeed24FormatVideoPlayerManager_offscreenVisibility] = 0;
    *&v54[OBJC_IVAR____TtC8NewsFeed24FormatVideoPlayerManager_partialVisibility] = 0x3FE0000000000000;
    *&v54[OBJC_IVAR____TtC8NewsFeed24FormatVideoPlayerManager_onscreenVisibility] = 0x3FF0000000000000;
    *&v54[OBJC_IVAR____TtC8NewsFeed24FormatVideoPlayerManager_playerViewController] = 0;
    *&v54[OBJC_IVAR____TtC8NewsFeed24FormatVideoPlayerManager_visibilityPercentage] = 0x3FF0000000000000;
    v54[OBJC_IVAR____TtC8NewsFeed24FormatVideoPlayerManager_isBookmarkInProgress] = 0;
    v54[OBJC_IVAR____TtC8NewsFeed24FormatVideoPlayerManager_isViewTransitionInProcess] = 0;
    v55 = &v54[OBJC_IVAR____TtC8NewsFeed24FormatVideoPlayerManager_cover];
    *v55 = 0;
    v55[8] = 1;
    sub_1D5EBC2B0(v91, &v54[OBJC_IVAR____TtC8NewsFeed24FormatVideoPlayerManager_data]);
    sub_1D5B68374(&v100, &v54[OBJC_IVAR____TtC8NewsFeed24FormatVideoPlayerManager_coordinator]);
    sub_1D5B68374(v99, &v54[OBJC_IVAR____TtC8NewsFeed24FormatVideoPlayerManager_videoAdProviderFactory]);
    *&v54[OBJC_IVAR____TtC8NewsFeed24FormatVideoPlayerManager_pictureInPictureState] = v49;
    v56 = &v54[OBJC_IVAR____TtC8NewsFeed24FormatVideoPlayerManager_commandCenter];
    *v56 = v50;
    v56[1] = v51;
    v87 = v50;
    *&v54[OBJC_IVAR____TtC8NewsFeed24FormatVideoPlayerManager_adJournal] = v52;
    sub_1D5B68374(v96, &v54[OBJC_IVAR____TtC8NewsFeed24FormatVideoPlayerManager_sceneProvider]);
    *&v54[OBJC_IVAR____TtC8NewsFeed24FormatVideoPlayerManager_offlineManager] = v48;
    sub_1D5B68374(v95, &v54[OBJC_IVAR____TtC8NewsFeed24FormatVideoPlayerManager_offlineAlertControllerFactory]);
    v57 = &v54[OBJC_IVAR____TtC8NewsFeed24FormatVideoPlayerManager_cacheKey];
    v82 = v3;
    v58 = v92;
    *v57 = v3;
    v57[1] = v58;
    v94.receiver = v54;
    v94.super_class = v53;
    v90 = v48;

    swift_unknownObjectRetain();

    v59 = objc_msgSendSuper2(&v94, sel_init);
    v60 = objc_opt_self();
    v61 = v59;
    v81[1] = v52;
    v62 = [v60 defaultCenter];
    sub_1D6BCEBBC();
    v63 = v83;
    sub_1D726320C();
    v64 = sub_1D7257AFC();
    (*(v84 + 8))(v63, v85);
    [v62 addObserver:v61 selector:sel_startPictureInPictureIfPossible name:v64 object:0];

    v65 = [v60 defaultCenter];
    v66 = v61;
    v67 = sub_1D725D84C();
    [v65 addObserver:v66 selector:sel_willApplyBookmark name:v67 object:0];

    v68 = [v60 defaultCenter];
    v69 = v66;
    v70 = sub_1D725D83C();
    [v68 addObserver:v69 selector:sel_didApplyBookmark name:v70 object:0];

    v71 = [v60 defaultCenter];
    sub_1D725D7AC();
    v72 = v69;
    v73 = sub_1D725D76C();
    [v71 addObserver:v72 selector:sel_didStartCoveringWithNotification_ name:v73 object:0];

    v74 = [v60 defaultCenter];
    v75 = v72;
    v76 = sub_1D725D74C();
    [v74 addObserver:v75 selector:sel_didFinishCoveringWithNotification_ name:v76 object:0];
    swift_unknownObjectRelease();

    v77 = v90;

    __swift_destroy_boxed_opaque_existential_1(v95);
    __swift_destroy_boxed_opaque_existential_1(v96);
    __swift_destroy_boxed_opaque_existential_1(v99);
    __swift_destroy_boxed_opaque_existential_1(&v100);
    sub_1D6BCEC08(v91);
    *&v75[OBJC_IVAR____TtC8NewsFeed24FormatVideoPlayerManager_reuseDelegate + 8] = &off_1F51B7A58;
    v78 = v89;
    swift_unknownObjectWeakAssign();
    *&v75[OBJC_IVAR____TtC8NewsFeed24FormatVideoPlayerManager_delegate + 8] = &off_1F51B1DB8;
    swift_unknownObjectWeakAssign();
    *(v86 + 8) = &off_1F51AE0E0;
    swift_unknownObjectWeakAssign();
    __swift_project_boxed_opaque_existential_1((v18 + 120), *(v18 + 144));
    sub_1D5B47458(&qword_1EC893290, type metadata accessor for FormatVideoPlayerManager);
    v79 = v75;
    sub_1D725B54C();

    __swift_destroy_boxed_opaque_existential_1(&v100);
    swift_beginAccess();
    v34 = v79;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v99[0] = *(v78 + 16);
    *(v78 + 16) = 0x8000000000000000;
    sub_1D6D7A628(v34, v82, v92, isUniquelyReferenced_nonNull_native);

    *(v78 + 16) = v99[0];
    swift_endAccess();

    __swift_destroy_boxed_opaque_existential_1(&v102);
    __swift_destroy_boxed_opaque_existential_1(v104);
    return v34;
  }

LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_1D6BCE6D8()
{
  sub_1D5B87E10(v0 + 16);
  __swift_destroy_boxed_opaque_existential_1(v0 + 32);
  __swift_destroy_boxed_opaque_existential_1(v0 + 72);

  __swift_destroy_boxed_opaque_existential_1(v0 + 120);
  __swift_destroy_boxed_opaque_existential_1(v0 + 160);

  return swift_deallocClassInstance();
}

uint64_t sub_1D6BCE750()
{
  sub_1D7264A0C();
  sub_1D72621EC();
  return sub_1D7264A5C();
}

uint64_t sub_1D6BCE7A4()
{
  sub_1D7264A0C();
  sub_1D72621EC();
  return sub_1D7264A5C();
}

unint64_t sub_1D6BCE7F0()
{
  result = qword_1EC893280;
  if (!qword_1EC893280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC893280);
  }

  return result;
}

uint64_t sub_1D6BCE844(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  swift_beginAccess();
  v6 = sub_1D6D8CB60(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *(v2 + 16);
    v12 = *(v3 + 16);
    *(v3 + 16) = 0x8000000000000000;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1D6D829F4();
      v10 = v12;
    }

    sub_1D6713788(v8, v10);
    *(v3 + 16) = v10;
  }

  return swift_endAccess();
}

uint64_t sub_1D6BCE908(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v4 = sub_1D725DA3C();
  if (v4)
  {
    v5 = v4;
    if (*(a1 + 40))
    {
      v6 = *(a1 + 32);
      v7 = *(a1 + 40);
    }

    else
    {
      type metadata accessor for FormatVideoPlayerData();
      v6 = sub_1D72583DC();
      v7 = v9;
    }

    MEMORY[0x1DA6F9910](v6, v7);

    MEMORY[0x1DA6F9910](14906, 0xE200000000000000);
    v10 = [v5 session];
    v11 = [v10 persistentIdentifier];

    v12 = sub_1D726207C();
    v14 = v13;

    MEMORY[0x1DA6F9910](v12, v14);

    v8 = 0;
  }

  else
  {
    if (*(a1 + 40))
    {
      v8 = *(a1 + 32);
    }

    else
    {
      type metadata accessor for FormatVideoPlayerData();
      v8 = sub_1D72583DC();
    }
  }

  sub_1D6BCEC08(a1);
  __swift_destroy_boxed_opaque_existential_1(a2);
  return v8;
}

void sub_1D6BCEA98(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 16);
  v6 = 1 << *(v5 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(v5 + 64);
  v9 = (v6 + 63) >> 6;

  v10 = 0;
  while (v8)
  {
LABEL_9:
    v12 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v13 = v12 | (v10 << 6);
    v14 = (*(v5 + 48) + 16 * v13);
    if (*v14 != a1 || v14[1] != a2)
    {
      v16 = *(*(v5 + 56) + 8 * v13);
      if ((sub_1D72646CC() & 1) == 0)
      {
        v17 = v16;
        sub_1D6AF0E7C();
      }
    }
  }

  while (1)
  {
    v11 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v11 >= v9)
    {

      return;
    }

    v8 = *(v5 + 64 + 8 * v11);
    ++v10;
    if (v8)
    {
      v10 = v11;
      goto LABEL_9;
    }
  }

  __break(1u);
}

unint64_t sub_1D6BCEBBC()
{
  result = qword_1EC893288;
  if (!qword_1EC893288)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC893288);
  }

  return result;
}

uint64_t sub_1D6BCEC08(uint64_t a1)
{
  v2 = type metadata accessor for FormatVideoPlayerData();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t static JSONEncoder.NonConformingFloatEncodingStrategy.formatNonConformingFloatEncoding.getter@<X0>(void *a1@<X8>)
{
  *a1 = 0x7974696E69666E69;
  a1[1] = 0xE800000000000000;
  a1[2] = 0x74696E69666E692DLL;
  a1[3] = 0xE900000000000079;
  a1[4] = 7233902;
  a1[5] = 0xE300000000000000;
  v2 = *MEMORY[0x1E6967FE0];
  v3 = sub_1D725789C();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_1D6BCED58(uint64_t a1)
{
  sub_1D5B7C1C0();
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v53 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v54 = &v47 - v7;
  v8 = sub_1D7263FCC();
  v56 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v9);
  v48 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v51 = (&v47 - v13);
  v14 = sub_1D725789C();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v16);
  v18 = (&v47 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = sub_1D725787C();
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19, v21);
  v23 = (&v47 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = sub_1D72578DC();
  *v23 = sub_1D6BCF304;
  v23[1] = 0;
  (*(v20 + 104))(v23, *MEMORY[0x1E6967FB8], v19);
  v25 = v56;

  sub_1D725788C();
  *v18 = 0x7974696E69666E69;
  v18[1] = 0xE800000000000000;
  v18[2] = 0x74696E69666E692DLL;
  v18[3] = 0xE900000000000079;
  v18[4] = 7233902;
  v18[5] = 0xE300000000000000;
  (*(v15 + 104))(v18, *MEMORY[0x1E6967FE0], v14);
  sub_1D72578AC();
  v52 = a1;
  v26 = sub_1D5B7C218(0, a1);
  v27 = sub_1D72578CC();
  v28 = v54;
  v49 = v27;
  v30 = v29;
  v31 = *v29;
  swift_bridgeObjectRetain_n();
  sub_1D7263FBC();
  v32 = v25[6];
  v55 = v8;
  v50 = v32;
  result = v32(v28, 1, v8);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v34 = v51;
    v35 = v55;
    v54 = v25[4];
    (v54)(v51, v28, v55);
    v60 = MEMORY[0x1E69E6370];
    LOBYTE(v59) = v26;
    sub_1D5B7C390(&v59, v58);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v57 = v31;
    sub_1D6D76B74(v58, v34, isUniquelyReferenced_nonNull_native);
    v37 = v25[1];
    v56 = v25 + 1;
    v51 = v37;
    v37(v34, v35);
    *v30 = v57;

    v49(v61, 0);

    v38 = sub_1D5B7C218(1u, v52);

    v39 = sub_1D72578CC();
    v41 = v40;
    v42 = *v40;
    swift_bridgeObjectRetain_n();
    v43 = v53;
    sub_1D7263FBC();
    result = v50(v43, 1, v35);
    if (result != 1)
    {
      v44 = v48;
      v45 = v55;
      (v54)(v48, v43, v55);
      v60 = MEMORY[0x1E69E6370];
      LOBYTE(v59) = v38;
      sub_1D5B7C390(&v59, v58);
      v46 = swift_isUniquelyReferenced_nonNull_native();
      v57 = v42;
      sub_1D6D76B74(v58, v44, v46);
      v51(v44, v45);
      *v41 = v57;

      v39(v61, 0);

      return v24;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D6BCF304(uint64_t a1, void *a2)
{
  if (qword_1EDF272B0 != -1)
  {
    swift_once();
  }

  v3 = qword_1EDFFCAA0;
  v4 = sub_1D725881C();
  v5 = [v3 stringFromDate_];

  sub_1D726207C();
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_1D7264B3C();
  __swift_mutable_project_boxed_opaque_existential_1(v7, v8);
  sub_1D726473C();

  return __swift_destroy_boxed_opaque_existential_1(v7);
}

uint64_t FormatJSONEncoder.__deallocating_deinit()
{
  _s8NewsFeed0B13ConfigEncoderCfd_0();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for FormatJSONEncoder()
{
  result = qword_1EC893298;
  if (!qword_1EC893298)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D6BCF548()
{
  sub_1D5B87E10(v0 + 16);
  sub_1D5B87E10(v0 + 32);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 64);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_1D6BCF734(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  swift_beginAccess();
  *(v4 + 24) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_1D6BCF798(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = *v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v7 = *(v5 + 24);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v7;
  return sub_1D6847CE0;
}

uint64_t sub_1D6BCF830()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D72600CC();

  return v1;
}

uint64_t sub_1D6BCF8A4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D72600CC();

  return v1;
}

uint64_t sub_1D6BCF918()
{

  v1 = OBJC_IVAR____TtC8NewsFeed33DebugFormatWorkspaceTreeKindGroup__workspaces;
  sub_1D6BCFBF4(0, &qword_1EC8932C8, sub_1D6BCFBC0, MEMORY[0x1E695C070]);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = OBJC_IVAR____TtC8NewsFeed33DebugFormatWorkspaceTreeKindGroup__isExpanded;
  sub_1D5EF05B8();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for DebugFormatWorkspaceTreeKindGroup()
{
  result = qword_1EC8932B8;
  if (!qword_1EC8932B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D6BCFA98()
{
  sub_1D6BCFBF4(319, &qword_1EC8932C8, sub_1D6BCFBC0, MEMORY[0x1E695C070]);
  if (v0 <= 0x3F)
  {
    sub_1D5EF05B8();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1D6BCFBF4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1D6BCFC58(unint64_t a1, uint64_t a2)
{
  v66 = a2;
  v70 = type metadata accessor for DebugFormatWorkspaceGroup();
  v79 = *(v70 - 8);
  v4 = MEMORY[0x1EEE9AC00](v70, v3);
  v78 = &v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = MEMORY[0x1E69E7CC0];
  v61 = a1;
  if (a1 >> 62)
  {
LABEL_66:
    v57 = sub_1D7263BFC();
    a1 = v61;
    v6 = v57;
    if (v57)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
LABEL_3:
      v7 = 0;
      v64 = a1 & 0xC000000000000001;
      v63 = a1 & 0xFFFFFFFFFFFFFF8;
      v62 = a1 + 32;
      v65 = (v66 + 32);
      v60 = v6;
      while (1)
      {
        if (v64)
        {
          v69 = MEMORY[0x1DA6FB460](v7, a1, v4);
          v8 = __OFADD__(v7, 1);
          v9 = v7 + 1;
          if (v8)
          {
LABEL_59:
            __break(1u);
            return v88;
          }
        }

        else
        {
          if (v7 >= *(v63 + 16))
          {
LABEL_65:
            __break(1u);
            goto LABEL_66;
          }

          v69 = *(v62 + 8 * v7);

          v8 = __OFADD__(v7, 1);
          v9 = v7 + 1;
          if (v8)
          {
            goto LABEL_59;
          }
        }

        v68 = v9;
        v10 = *(v66 + 16);
        if (!v10)
        {
          goto LABEL_53;
        }

        v11 = *v65;
        v12 = *(*v65 + 16);
        if (!v12)
        {
          goto LABEL_53;
        }

        v76 = v69 + OBJC_IVAR____TtC8NewsFeed33DebugFormatWorkspaceTreeWorkspace_workspace;
        v13 = 1;
        v59 = v10;
LABEL_10:
        v67 = v13;
        v73 = v11 + 32;

        v15 = 0;
        v16 = 1;
        v72 = v14;
        v71 = v12;
        while (1)
        {
          v17 = v15 + 1;
          if (v16)
          {
            break;
          }

          if (v17 == v12)
          {
            goto LABEL_48;
          }

          v16 = 0;
LABEL_15:
          v15 = v17;
          if (v17 >= *(v14 + 16))
          {
            goto LABEL_63;
          }
        }

        v77 = v15 + 1;
        v18 = (v73 + 16 * v15);
        v19 = *v18;
        v20 = v18[1];
        v75 = type metadata accessor for DebugFormatWorkspace();
        v86 = sub_1D726210C();
        v87 = v21;
        v82 = v19;
        v84 = v19;
        v85 = v20;
        sub_1D5BF4D9C();
        v83 = v20;

        LOBYTE(v20) = sub_1D7263ABC();

        if (v20)
        {
          break;
        }

        v22 = *(v76 + *(v75 + 32));
        if (v22 >> 62)
        {
          v23 = sub_1D7263BFC();
          if (v23)
          {
LABEL_20:
            v24 = 0;
            v80 = v22 & 0xC000000000000001;
            v74 = v22 & 0xFFFFFFFFFFFFFF8;
            do
            {
              if (v80)
              {
                v27 = MEMORY[0x1DA6FB460](v24, v22);
                v28 = v24 + 1;
                if (__OFADD__(v24, 1))
                {
                  goto LABEL_61;
                }
              }

              else
              {
                if (v24 >= *(v74 + 16))
                {
                  goto LABEL_64;
                }

                v27 = *(v22 + 8 * v24 + 32);

                v28 = v24 + 1;
                if (__OFADD__(v24, 1))
                {
LABEL_61:
                  __break(1u);
                  goto LABEL_62;
                }
              }

              v29 = *(v27 + 16);
              v30 = v29 + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__name;
              swift_beginAccess();
              if (*(v30 + 8))
              {
                v81 = v28;
                v32 = v82;
                v31 = v83;
                v86 = sub_1D726210C();
                v87 = v33;
                v84 = v32;
                v85 = v31;
                v34 = sub_1D7263ABC();

                if (v34)
                {
LABEL_11:

                  goto LABEL_12;
                }

                v35 = *(v27 + 16);
                v37 = *(v35 + 16);
                v36 = *(v35 + 24);
                v86 = v37;
                v87 = v36;
                v84 = v32;
                v85 = v31;
                v38 = sub_1D7263ABC();

                v28 = v81;
                if (v38)
                {
                  goto LABEL_12;
                }
              }

              else
              {
                v25 = *(v29 + 24);
                v86 = *(v29 + 16);
                v87 = v25;
                v84 = v82;
                v85 = v83;
                v26 = sub_1D7263ABC();

                if (v26)
                {
                  goto LABEL_12;
                }
              }

              ++v24;
            }

            while (v28 != v23);
          }
        }

        else
        {
          v23 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v23)
          {
            goto LABEL_20;
          }
        }

        v39 = *(v76 + *(v75 + 36));
        v40 = *(v39 + 16);
        if (v40)
        {
          v41 = 0;
          v42 = *(v70 + 20);
          v43 = v39 + ((*(v79 + 80) + 32) & ~*(v79 + 80));
          while (v41 < *(v39 + 16))
          {
            v46 = v78;
            sub_1D6BD03D8(v43 + *(v79 + 72) * v41, v78);
            v47 = *(v46 + v42);

            sub_1D6BD043C(v46);
            if (v47)
            {
              v48 = *(v47 + 16);
              v49 = v48 + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__name;
              swift_beginAccess();
              if (*(v49 + 8))
              {
                v86 = sub_1D726210C();
                v87 = v50;
                v84 = v82;
                v85 = v83;
                v51 = sub_1D7263ABC();

                if (v51)
                {
                  goto LABEL_11;
                }

                v52 = *(v47 + 16);
                v54 = *(v52 + 16);
                v53 = *(v52 + 24);
                v86 = v54;
                v87 = v53;
                v84 = v82;
                v85 = v83;
                v55 = sub_1D7263ABC();

                if (v55)
                {
                  goto LABEL_12;
                }
              }

              else
              {
                v44 = *(v48 + 24);
                v86 = *(v48 + 16);
                v87 = v44;
                v84 = v82;
                v85 = v83;
                v45 = sub_1D7263ABC();

                if (v45)
                {
                  goto LABEL_12;
                }
              }
            }

            if (v40 == ++v41)
            {
              goto LABEL_46;
            }
          }

LABEL_62:
          __break(1u);
LABEL_63:
          __break(1u);
LABEL_64:
          __break(1u);
          goto LABEL_65;
        }

LABEL_46:

        v12 = v71;
        v17 = v77;
        if (v77 != v71)
        {
          v16 = 0;
LABEL_14:
          v14 = v72;
          goto LABEL_15;
        }

LABEL_48:

        if (v67 == v59)
        {

          goto LABEL_54;
        }

        v11 = v65[v67];
        v13 = v67 + 1;
        v12 = *(v11 + 16);
        if (v12)
        {
          goto LABEL_10;
        }

LABEL_53:
        sub_1D7263E9C();
        sub_1D7263EDC();
        sub_1D7263EEC();
        sub_1D7263EAC();
LABEL_54:
        v7 = v68;
        a1 = v61;
        if (v68 == v60)
        {
          return v88;
        }
      }

LABEL_12:

      v12 = v71;
      v17 = v77;
      if (v77 == v71)
      {

        goto LABEL_53;
      }

      v16 = 1;
      goto LABEL_14;
    }
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t sub_1D6BD03D8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DebugFormatWorkspaceGroup();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D6BD043C(uint64_t a1)
{
  v2 = type metadata accessor for DebugFormatWorkspaceGroup();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1D6BD04A8()
{
  v1 = [v0 subviews];
  sub_1D5E2B010();
  v2 = sub_1D726267C();

  if (v2 >> 62)
  {
    v3 = sub_1D7263BFC();
    if (!v3)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v3)
    {
      goto LABEL_10;
    }
  }

  if (v3 < 1)
  {
    __break(1u);
    return;
  }

  for (i = 0; i != v3; ++i)
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x1DA6FB460](i, v2);
    }

    else
    {
      v5 = *(v2 + 8 * i + 32);
    }

    v6 = v5;
    [v5 removeFromSuperview];
  }

LABEL_10:

  MEMORY[0x1DA6F6CF0](v7);
  v8 = sub_1D725F64C();
}

void sub_1D6BD0768()
{
  sub_1D6BD07F4(&qword_1EC8932E0);

  JUMPOUT(0x1DA6F6FC0);
}

uint64_t sub_1D6BD07F4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ReusableContainerView();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t FormatPlaceholder.init(identifier:passthrough:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  *a4 = result;
  *(a4 + 8) = a2;
  *(a4 + 16) = a3;
  return result;
}

uint64_t static FormatPlaceholder.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a2 + 16);
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8))
  {
    return v2 ^ v3 ^ 1u;
  }

  v5 = sub_1D72646CC();
  result = 0;
  if (v5)
  {
    return v2 ^ v3 ^ 1u;
  }

  return result;
}

uint64_t sub_1D6BD08A8(uint64_t a1)
{
  v2 = v1;
  v3 = *(a1 + 96);
  if (!*(v3 + 16))
  {
    return MEMORY[0x1E69E7CC0];
  }

  v4 = sub_1D5B69D90(*v2, v2[1]);
  if ((v5 & 1) == 0)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v6 = *(*(v3 + 56) + 24 * v4 + 16);
  v7 = *(v6 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v7)
  {
    v24 = MEMORY[0x1E69E7CC0];

    sub_1D6999D8C(0, v7, 0);
    v9 = v24;
    v10 = (v6 + 48);
    do
    {
      v21 = v9;
      v22 = *(v10 - 2);
      v12 = *v10;
      v11 = v10[1];
      v13 = v10[2];
      v14 = v10[3];
      v15 = v10[4];
      v16 = v10[5];
      v17 = *(v9 + 16);
      v20 = *(v9 + 24);
      v25 = v9;
      v23 = *(v10 - 1);

      v9 = v21;
      if (v17 >= v20 >> 1)
      {
        sub_1D6999D8C((v20 > 1), v17 + 1, 1);
        v9 = v25;
      }

      v10 += 8;
      *(v9 + 16) = v17 + 1;
      v18 = (v9 + (v17 << 6));
      v18[4] = v22;
      v18[5] = v23;
      v18[6] = v15;
      v18[7] = v16;
      v18[8] = v12;
      v18[9] = v13;
      v18[10] = v11;
      v18[11] = v14;
      --v7;
    }

    while (v7);
    v19 = v9;

    return v19;
  }

  return result;
}

uint64_t FormatPlaceholder.identifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_1D6BD0A8C()
{
  if (*v0)
  {
    return 0x6F72687473736170;
  }

  else
  {
    return 0x696669746E656469;
  }
}

uint64_t sub_1D6BD0AD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v6 || (sub_1D72646CC() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6F72687473736170 && a2 == 0xEB00000000686775)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1D72646CC();

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

uint64_t sub_1D6BD0BBC(uint64_t a1)
{
  v2 = sub_1D6BD0DE0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6BD0BF8(uint64_t a1)
{
  v2 = sub_1D6BD0DE0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatPlaceholder.encode(to:)(void *a1)
{
  sub_1D6BD10EC(0, &qword_1EDF026F8, MEMORY[0x1E69E6F58]);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v14 - v7;
  v15 = *(v1 + 16);
  v9 = a1[3];
  v10 = a1;
  v12 = v11;
  __swift_project_boxed_opaque_existential_1(v10, v9);
  sub_1D6BD0DE0();
  sub_1D7264B5C();
  v18 = 0;
  sub_1D72643FC();
  if (!v2 && v15)
  {
    v17 = 1;
    v16 = 1;
    sub_1D6BD0E34();
    sub_1D72647EC();
  }

  return (*(v5 + 8))(v8, v12);
}

unint64_t sub_1D6BD0DE0()
{
  result = qword_1EDF2F220;
  if (!qword_1EDF2F220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2F220);
  }

  return result;
}

unint64_t sub_1D6BD0E34()
{
  result = qword_1EDF02700;
  if (!qword_1EDF02700)
  {
    sub_1D6BD10EC(255, &qword_1EDF026F8, MEMORY[0x1E69E6F58]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF02700);
  }

  return result;
}

uint64_t FormatPlaceholder.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1D6BD10EC(0, &qword_1EDF19C38, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v17 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6BD0DE0();
  sub_1D7264B0C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v22 = 0;
  v11 = sub_1D72642BC();
  v14 = v13;
  v18 = v11;
  v21 = 1;
  v15 = sub_1D726434C();
  if (v15)
  {
    v20 = 1;
    sub_1D726431C();
    (*(v7 + 8))(v10, v6);
    v16 = v19;
  }

  else
  {
    (*(v7 + 8))(v10, v6);
    v16 = 0;
  }

  *a2 = v18;
  *(a2 + 8) = v14;
  *(a2 + 16) = v16;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_1D6BD10EC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D6BD0DE0();
    v7 = a3(a1, &type metadata for FormatPlaceholder.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1D6BD1150(void *a1)
{
  a1[1] = sub_1D5B5C5E0();
  a1[2] = sub_1D5B5C634();
  result = sub_1D6BD1188();
  a1[3] = result;
  return result;
}

unint64_t sub_1D6BD1188()
{
  result = qword_1EC8932E8;
  if (!qword_1EC8932E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8932E8);
  }

  return result;
}

unint64_t sub_1D6BD1230()
{
  result = qword_1EC8932F0;
  if (!qword_1EC8932F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8932F0);
  }

  return result;
}

unint64_t sub_1D6BD1288()
{
  result = qword_1EDF2F210;
  if (!qword_1EDF2F210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2F210);
  }

  return result;
}

unint64_t sub_1D6BD12E0()
{
  result = qword_1EDF2F218;
  if (!qword_1EDF2F218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2F218);
  }

  return result;
}

uint64_t sub_1D6BD1334(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = MEMORY[0x1E69E85F0];
  v10 = MEMORY[0x1E69E6720];
  sub_1D5B54B8C(0, &qword_1EDF1ADB0, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v14 = v27 - v13;
  sub_1D6BDBF04(a3, v27 - v13, &qword_1EDF1ADB0, v9, v10, sub_1D5B54B8C);
  v15 = sub_1D726294C();
  v16 = *(v15 - 8);
  LODWORD(v9) = (*(v16 + 48))(v14, 1, v15);

  if (v9 == 1)
  {
    sub_1D5B6F328(v14, &qword_1EDF1ADB0, MEMORY[0x1E69E85F0]);
  }

  else
  {
    sub_1D726293C();
    (*(v16 + 8))(v14, v15);
  }

  v17 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_1D726285C();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_1D726211C() + 32;
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

      sub_1D5B6F328(a3, &qword_1EDF1ADB0, MEMORY[0x1E69E85F0]);

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

  sub_1D5B6F328(a3, &qword_1EDF1ADB0, MEMORY[0x1E69E85F0]);
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

uint64_t sub_1D6BD1698(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = MEMORY[0x1E69E85F0];
  v10 = MEMORY[0x1E69E6720];
  sub_1D5B54B8C(0, &qword_1EDF1ADB0, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v14 = v27 - v13;
  sub_1D6BDBF04(a3, v27 - v13, &qword_1EDF1ADB0, v9, v10, sub_1D5B54B8C);
  v15 = sub_1D726294C();
  v16 = *(v15 - 8);
  LODWORD(v9) = (*(v16 + 48))(v14, 1, v15);

  if (v9 == 1)
  {
    sub_1D5B6F328(v14, &qword_1EDF1ADB0, MEMORY[0x1E69E85F0]);
  }

  else
  {
    sub_1D726293C();
    (*(v16 + 8))(v14, v15);
  }

  v17 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_1D726285C();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v27[0] = a3;
      v21 = sub_1D726211C() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;
      sub_1D5B670D4(0, &qword_1EDF33B80, &type metadata for FamilyStatus, MEMORY[0x1E69E6720]);

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

      sub_1D5B6F328(v27[0], &qword_1EDF1ADB0, MEMORY[0x1E69E85F0]);

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

  sub_1D5B6F328(a3, &qword_1EDF1ADB0, MEMORY[0x1E69E85F0]);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  sub_1D5B670D4(0, &qword_1EDF33B80, &type metadata for FamilyStatus, MEMORY[0x1E69E6720]);
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_1D6BD1A50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = MEMORY[0x1E69E85F0];
  v10 = MEMORY[0x1E69E6720];
  sub_1D5B54B8C(0, &qword_1EDF1ADB0, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v14 = v27 - v13;
  sub_1D6BDBF04(a3, v27 - v13, &qword_1EDF1ADB0, v9, v10, sub_1D5B54B8C);
  v15 = sub_1D726294C();
  v16 = *(v15 - 8);
  LODWORD(v9) = (*(v16 + 48))(v14, 1, v15);

  if (v9 == 1)
  {
    sub_1D5B6F328(v14, &qword_1EDF1ADB0, MEMORY[0x1E69E85F0]);
  }

  else
  {
    sub_1D726293C();
    (*(v16 + 8))(v14, v15);
  }

  v17 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_1D726285C();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v27[0] = a3;
      v21 = sub_1D726211C() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;
      sub_1D6BDC0E8();

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

      sub_1D5B6F328(v27[0], &qword_1EDF1ADB0, MEMORY[0x1E69E85F0]);

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

  sub_1D5B6F328(a3, &qword_1EDF1ADB0, MEMORY[0x1E69E85F0]);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  sub_1D6BDC0E8();
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_1D6BD1DC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = MEMORY[0x1E69E85F0];
  v10 = MEMORY[0x1E69E6720];
  sub_1D5B54B8C(0, &qword_1EDF1ADB0, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v14 = v27 - v13;
  sub_1D6BDBF04(a3, v27 - v13, &qword_1EDF1ADB0, v9, v10, sub_1D5B54B8C);
  v15 = sub_1D726294C();
  v16 = *(v15 - 8);
  LODWORD(v9) = (*(v16 + 48))(v14, 1, v15);

  if (v9 == 1)
  {
    sub_1D5B6F328(v14, &qword_1EDF1ADB0, MEMORY[0x1E69E85F0]);
  }

  else
  {
    sub_1D726293C();
    (*(v16 + 8))(v14, v15);
  }

  v17 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_1D726285C();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v27[0] = a3;
      v21 = sub_1D726211C() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;
      sub_1D5B670D4(0, &unk_1EC88D670, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E6720]);

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

      sub_1D5B6F328(v27[0], &qword_1EDF1ADB0, MEMORY[0x1E69E85F0]);

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

  sub_1D5B6F328(a3, &qword_1EDF1ADB0, MEMORY[0x1E69E85F0]);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  sub_1D5B670D4(0, &unk_1EC88D670, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E6720]);
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t SharingActivityItemFactory.__allocating_init(commandCenter:shareLinkProvider:shareLinkTextProvider:)(uint64_t a1, uint64_t a2, __int128 *a3, __int128 *a4)
{
  swift_allocObject();
  v8 = sub_1D5B744F0(a1, a2, a3, a4);
  swift_unknownObjectRelease();
  return v8;
}

uint64_t SharingActivityItemFactory.__allocating_init(commandCenter:shareLinkProvider:shareLinkTextProvider:shareLinkImageProvider:shareLinkRecipeImageProvider:shareLinkPuzzleImageProvider:puzzleRankProvider:puzzleDifficultyDescriptionProvider:externalRecipeFactory:featureAvailability:)(uint64_t a1, uint64_t a2, __int128 *a3, __int128 *a4, uint64_t a5, uint64_t a6, __int128 *a7, __int128 *a8, __int128 *a9, uint64_t a10, uint64_t a11)
{
  v17 = swift_allocObject();
  *(v17 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v17 + 24) = a2;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  sub_1D5B63F14(a3, v17 + 32);
  sub_1D5B63F14(a4, v17 + 72);
  *(v17 + 112) = a5;
  v18 = *(a6 + 16);
  *(v17 + 120) = *a6;
  *(v17 + 136) = v18;
  *(v17 + 152) = *(a6 + 32);
  sub_1D5B63F14(a7, v17 + 160);
  sub_1D5B63F14(a8, v17 + 200);
  sub_1D5B63F14(a9, v17 + 240);
  v19 = *(a10 + 16);
  *(v17 + 280) = *a10;
  *(v17 + 296) = v19;
  *(v17 + 312) = *(a10 + 32);
  v20 = *(a11 + 16);
  *(v17 + 320) = *a11;
  *(v17 + 336) = v20;
  *(v17 + 352) = *(a11 + 32);
  return v17;
}

uint64_t SharingActivityItemFactory.init(commandCenter:shareLinkProvider:shareLinkTextProvider:shareLinkImageProvider:shareLinkRecipeImageProvider:shareLinkPuzzleImageProvider:puzzleRankProvider:puzzleDifficultyDescriptionProvider:externalRecipeFactory:featureAvailability:)(uint64_t a1, uint64_t a2, __int128 *a3, __int128 *a4, uint64_t a5, uint64_t a6, __int128 *a7, __int128 *a8, __int128 *a9, uint64_t a10, uint64_t a11)
{
  *(v11 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v11 + 24) = a2;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  sub_1D5B63F14(a3, v11 + 32);
  sub_1D5B63F14(a4, v11 + 72);
  *(v11 + 112) = a5;
  v18 = *(a6 + 16);
  *(v11 + 120) = *a6;
  *(v11 + 136) = v18;
  *(v11 + 152) = *(a6 + 32);
  sub_1D5B63F14(a7, v11 + 160);
  sub_1D5B63F14(a8, v11 + 200);
  sub_1D5B63F14(a9, v11 + 240);
  v19 = *(a10 + 16);
  *(v11 + 280) = *a10;
  *(v11 + 296) = v19;
  *(v11 + 312) = *(a10 + 32);
  v20 = *(a11 + 16);
  *(v11 + 320) = *a11;
  *(v11 + 336) = v20;
  *(v11 + 352) = *(a11 + 32);
  return v11;
}

uint64_t SharingActivityItemFactory.createActivityItemSources(headline:selectedText:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  sub_1D5B54B8C(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v32[-v10 - 8];
  sub_1D5B670D4(0, &qword_1EDF194C0, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1D728AF30;
  v13 = type metadata accessor for SharingArticleImageActivityItemSource();
  v14 = objc_allocWithZone(v13);
  *&v14[OBJC_IVAR____TtC8NewsFeed37SharingArticleImageActivityItemSource_headline] = a1;
  v36.receiver = v14;
  v36.super_class = v13;
  swift_unknownObjectRetain();
  *(v12 + 32) = objc_msgSendSuper2(&v36, sel_init);
  v15 = type metadata accessor for SharingArticleTextActivityItemSource();
  v16 = objc_allocWithZone(v15);
  *&v16[OBJC_IVAR____TtC8NewsFeed36SharingArticleTextActivityItemSource_headline] = a1;
  v17 = swift_unknownObjectRetain();
  v18 = sub_1D6079EEC(v17);
  v19 = &v16[OBJC_IVAR____TtC8NewsFeed36SharingArticleTextActivityItemSource_itemTitle];
  *v19 = v18;
  *(v19 + 1) = v20;
  v35.receiver = v16;
  v35.super_class = v15;
  *(v12 + 40) = objc_msgSendSuper2(&v35, sel_init);
  v21 = type metadata accessor for SharingArticleURLActivityItemSource();
  v22 = v4[7];
  v23 = v4[8];
  __swift_project_boxed_opaque_existential_1(v4 + 4, v22);
  (*(v23 + 8))(a1, v22, v23);
  sub_1D5B68374((v4 + 9), v32);
  v24 = SharingActivityItemFactory.createLinkPresentationSource(headline:selectedText:)(a1, a2, a3);
  v25 = v33;
  v26 = v34;
  v27 = __swift_mutable_project_boxed_opaque_existential_1(v32, v33);
  v28 = swift_unknownObjectRetain();
  v29 = sub_1D5EB83B4(v28, v11, v27, v24, v21, v25, v26);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v32);
  *(v12 + 48) = v29;
  return v12;
}

uint64_t SharingActivityItemFactory.createLinkPresentationSource(headline:selectedText:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v27 = a2;
  v28 = a3;
  v30 = sub_1D725A93C();
  MEMORY[0x1EEE9AC00](v30, v5);
  v29 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1E6968FB0];
  v8 = MEMORY[0x1E69E6720];
  sub_1D5B54B8C(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9 - 8, v12);
  v13 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v26 - v16;
  v18 = v3[7];
  v19 = v3[8];
  __swift_project_boxed_opaque_existential_1(v3 + 4, v18);
  (*(v19 + 8))(a1, v18, v19);
  sub_1D6BDBF04(v17, v13, &qword_1EDF45B40, v7, v8, sub_1D5B54B8C);
  v20 = (*(v10 + 80) + 24) & ~*(v10 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = a1;
  sub_1D5EB8540(v13, v21 + v20);
  v22 = (v21 + ((v11 + v20 + 7) & 0xFFFFFFFFFFFFFFF8));
  v23 = v28;
  *v22 = v27;
  v22[1] = v23;
  v31 = MEMORY[0x1E69E7CC0];
  sub_1D5B648E0(&qword_1EDF3BDB0, MEMORY[0x1E69D6420]);
  sub_1D5B54B8C(0, &qword_1EDF1B5B0, MEMORY[0x1E69D6420], MEMORY[0x1E69E62F8]);
  sub_1D5B7667C();
  swift_unknownObjectRetain();

  sub_1D7263B6C();
  sub_1D673FC74();
  swift_allocObject();
  v24 = sub_1D725B7AC();
  sub_1D5B6F328(v17, &qword_1EDF45B40, v7);
  return v24;
}

uint64_t SharingActivityItemFactory.createActivityItemSources(tag:)(void *a1)
{
  sub_1D5B670D4(0, &qword_1EDF194C0, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1D72816D0;
  v3 = objc_allocWithZone(type metadata accessor for SharingTagTextActivityItemSource());
  swift_getObjectType();
  v4 = swift_unknownObjectRetain();
  *(v2 + 32) = sub_1D705670C(v4, v3);
  v5 = SharingActivityItemFactory.createLinkPresentationSource(tag:)(a1);
  v6 = type metadata accessor for SharingTagURLActivityItemSource();
  v7 = objc_allocWithZone(v6);
  v8 = &v7[OBJC_IVAR____TtC8NewsFeed31SharingTagURLActivityItemSource_model];
  *v8 = a1;
  v8[8] = 0;
  *&v7[OBJC_IVAR____TtC8NewsFeed31SharingTagURLActivityItemSource_linkPresentationSource] = v5;
  v10.receiver = v7;
  v10.super_class = v6;
  swift_unknownObjectRetain();
  *(v2 + 40) = objc_msgSendSuper2(&v10, sel_init);
  return v2;
}

uint64_t SharingActivityItemFactory.createLinkPresentationSource(tag:)(void *a1)
{
  v3 = sub_1D725A93C();
  v5 = [a1 asSportsEvent];
  if (v5)
  {
    v6 = *(v1 + 112);
    if (v6)
    {
LABEL_6:
      v7 = v5;
      v8 = swift_allocObject();
      *(v8 + 16) = v7;
      *(v8 + 24) = v6;
      sub_1D5B648E0(&qword_1EDF3BDB0, MEMORY[0x1E69D6420]);
      sub_1D5B54B8C(0, &qword_1EDF1B5B0, MEMORY[0x1E69D6420], MEMORY[0x1E69E62F8]);
      sub_1D5B7667C();
      swift_unknownObjectRetain_n();
      swift_unknownObjectRetain();
      sub_1D7263B6C();
      sub_1D673FC74();
      swift_allocObject();
      v9 = sub_1D725B7AC();
      swift_unknownObjectRelease();
LABEL_13:
      swift_unknownObjectRelease();
      return v9;
    }

    swift_unknownObjectRelease();
  }

  v5 = [a1 asSports];
  if (v5)
  {
    v6 = *(v1 + 112);
    if (v6)
    {
      goto LABEL_6;
    }

    swift_unknownObjectRelease();
  }

  v10 = [a1 asPuzzleType];
  if (v10)
  {
    *(swift_allocObject() + 16) = v10;
    sub_1D5B648E0(&qword_1EDF3BDB0, MEMORY[0x1E69D6420]);
    sub_1D5B54B8C(0, &qword_1EDF1B5B0, MEMORY[0x1E69D6420], MEMORY[0x1E69E62F8]);
    sub_1D5B7667C();
    swift_unknownObjectRetain();
    sub_1D7263B6C();
    sub_1D673FC74();
    swift_allocObject();
LABEL_12:
    v9 = sub_1D725B7AC();
    goto LABEL_13;
  }

  v11 = *(v1 + 112);
  if (v11)
  {
    v12 = swift_allocObject();
    *(v12 + 16) = a1;
    *(v12 + 24) = v11;
    sub_1D5B648E0(&qword_1EDF3BDB0, MEMORY[0x1E69D6420]);
    sub_1D5B54B8C(0, &qword_1EDF1B5B0, MEMORY[0x1E69D6420], MEMORY[0x1E69E62F8]);
    sub_1D5B7667C();
    swift_unknownObjectRetain_n();
    swift_unknownObjectRetain();
    sub_1D7263B6C();
    sub_1D673FC74();
    swift_allocObject();
    goto LABEL_12;
  }

  if (![a1 isPuzzleHub])
  {
    [a1 isFoodHub];
  }

  *(swift_allocObject() + 16) = a1;
  sub_1D5B648E0(&qword_1EDF3BDB0, MEMORY[0x1E69D6420]);
  sub_1D5B54B8C(0, &qword_1EDF1B5B0, MEMORY[0x1E69D6420], MEMORY[0x1E69E62F8]);
  sub_1D5B7667C();
  swift_unknownObjectRetain();
  sub_1D7263B6C();
  sub_1D673FC74();
  swift_allocObject();
  return sub_1D725B7AC();
}

uint64_t SharingActivityItemFactory.createActivityItemSources(recipe:)(void *a1)
{
  v2 = v1;
  v4 = MEMORY[0x1E69E6720];
  sub_1D5B54B8C(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v44 - v7;
  v9 = sub_1D725A93C();
  MEMORY[0x1EEE9AC00](v9, v10);
  sub_1D5B54B8C(0, &qword_1EDF1ADB0, MEMORY[0x1E69E85F0], v4);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v14 = &v44 - v13;
  sub_1D5B670D4(0, &qword_1EDF194C0, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1D728AF30;
  v16 = type metadata accessor for SharingRecipeImageActivityItemSource();
  v17 = objc_allocWithZone(v16);
  *&v17[OBJC_IVAR____TtC8NewsFeed36SharingRecipeImageActivityItemSource_image] = 0;
  v48.receiver = v17;
  v48.super_class = v16;
  v18 = a1;
  v19 = objc_msgSendSuper2(&v48, sel_init);
  sub_1D726291C();
  v20 = sub_1D726294C();
  (*(*(v20 - 8) + 56))(v14, 0, 1, v20);
  v21 = swift_allocObject();
  v21[2] = 0;
  v21[3] = 0;
  v21[4] = v19;
  v21[5] = v18;
  v22 = v18;
  sub_1D6BD1334(0, 0, v14, &unk_1D7333C80, v21);

  *(v15 + 32) = v19;
  v23 = objc_allocWithZone(type metadata accessor for SharingRecipeTextActivityItemSource());
  v24 = v22;
  v25 = sub_1D61D2110(v24);

  *(v15 + 40) = v25;
  sub_1D6BDAEC4(v2 + 120, v46, &unk_1EDF3CFB0, &qword_1EDF3CFC0, &protocol descriptor for RecipeImageShareAttributeProviderType);
  v26 = swift_allocObject();
  *(v26 + 16) = v24;
  v27 = v46[1];
  *(v26 + 24) = v46[0];
  *(v26 + 40) = v27;
  *(v26 + 56) = v47;
  *&v46[0] = MEMORY[0x1E69E7CC0];
  sub_1D5B648E0(&qword_1EDF3BDB0, MEMORY[0x1E69D6420]);
  sub_1D5B54B8C(0, &qword_1EDF1B5B0, MEMORY[0x1E69D6420], MEMORY[0x1E69E62F8]);
  sub_1D5B7667C();
  v28 = v24;
  sub_1D7263B6C();
  sub_1D673FC74();
  swift_allocObject();
  v29 = sub_1D725B7AC();
  sub_1D6BDAEC4(v2 + 280, v46, &unk_1EDF25860, qword_1EDF25870, &protocol descriptor for ExternalRecipeFactoryType);
  sub_1D6BDAEC4(v2 + 320, v45, qword_1EDF27890, &unk_1EDF3F6D0, &protocol descriptor for FeatureAvailabilityType);
  v30 = type metadata accessor for SharingRecipeURLActivityItemSource();
  v31 = objc_allocWithZone(v30);
  v32 = [v28 identifier];
  if (!v32)
  {
    sub_1D726207C();
    v32 = sub_1D726203C();
  }

  v33 = [v28 articles];
  sub_1D5B5534C(0, &qword_1EDF3C720);
  v34 = sub_1D726267C();

  if (!(v34 >> 62))
  {
    result = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_5;
    }

LABEL_11:
    v39 = 0;
    goto LABEL_12;
  }

  result = sub_1D7263BFC();
  if (!result)
  {
    goto LABEL_11;
  }

LABEL_5:
  if ((v34 & 0xC000000000000001) != 0)
  {
    v36 = v8;
    v37 = v29;
    v38 = MEMORY[0x1DA6FB460](0, v34);
    goto LABEL_8;
  }

  if (*((v34 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v36 = v8;
    v37 = v29;
    v38 = *(v34 + 32);
    swift_unknownObjectRetain();
LABEL_8:

    v39 = [v38 identifier];
    swift_unknownObjectRelease();
    v29 = v37;
    v8 = v36;
    if (v39)
    {
LABEL_13:
      v40 = [objc_opt_self() nss:v32 NewsURLForRecipeID:v39 articleID:?];

      sub_1D72584EC();
      v41 = sub_1D72585BC();
      (*(*(v41 - 8) + 56))(v8, 0, 1, v41);
      sub_1D5EB8540(v8, &v31[OBJC_IVAR____TtC8NewsFeed34SharingRecipeURLActivityItemSource_url]);
      *&v31[OBJC_IVAR____TtC8NewsFeed34SharingRecipeURLActivityItemSource_linkPresentationSource] = v29;
      *&v31[OBJC_IVAR____TtC8NewsFeed34SharingRecipeURLActivityItemSource_recipe] = v28;
      sub_1D6BDAEC4(v46, &v31[OBJC_IVAR____TtC8NewsFeed34SharingRecipeURLActivityItemSource_externalRecipeFactory], &unk_1EDF25860, qword_1EDF25870, &protocol descriptor for ExternalRecipeFactoryType);
      sub_1D6BDAEC4(v45, &v31[OBJC_IVAR____TtC8NewsFeed34SharingRecipeURLActivityItemSource_featureAvailability], qword_1EDF27890, &unk_1EDF3F6D0, &protocol descriptor for FeatureAvailabilityType);
      v44.receiver = v31;
      v44.super_class = v30;
      v42 = v28;
      v43 = objc_msgSendSuper2(&v44, sel_init);
      sub_1D6BDBC60(v45, qword_1EDF27890, &unk_1EDF3F6D0, &protocol descriptor for FeatureAvailabilityType);
      sub_1D6BDBC60(v46, &unk_1EDF25860, qword_1EDF25870, &protocol descriptor for ExternalRecipeFactoryType);
      *(v15 + 48) = v43;
      return v15;
    }

    sub_1D726207C();
    v39 = sub_1D726203C();
LABEL_12:

    goto LABEL_13;
  }

  __break(1u);
  return result;
}

uint64_t SharingActivityItemFactory.createLinkPresentationSource(recipe:imageShareAttributeProvider:)(void *a1, uint64_t a2)
{
  v4 = sub_1D725A93C();
  MEMORY[0x1EEE9AC00](v4, v5);
  sub_1D6BDAEC4(a2, v10, &unk_1EDF3CFB0, &qword_1EDF3CFC0, &protocol descriptor for RecipeImageShareAttributeProviderType);
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  v7 = v10[1];
  *(v6 + 24) = v10[0];
  *(v6 + 40) = v7;
  *(v6 + 56) = v11;
  *&v10[0] = MEMORY[0x1E69E7CC0];
  sub_1D5B648E0(&qword_1EDF3BDB0, MEMORY[0x1E69D6420]);
  sub_1D5B54B8C(0, &qword_1EDF1B5B0, MEMORY[0x1E69D6420], MEMORY[0x1E69E62F8]);
  sub_1D5B7667C();
  v8 = a1;
  sub_1D7263B6C();
  sub_1D673FC74();
  swift_allocObject();
  return sub_1D725B7AC();
}

uint64_t sub_1D6BD3CA4@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, void *a4@<X8>)
{
  v8 = MEMORY[0x1E6968FB0];
  v9 = MEMORY[0x1E69E6720];
  sub_1D5B54B8C(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = &v17 - v12;
  sub_1D5B5A498(0, &qword_1EC893360);
  sub_1D6BDBF04(a1, v13, &qword_1EDF45B40, v8, v9, sub_1D5B54B8C);

  v14 = swift_unknownObjectRetain();
  v15 = sub_1D6BDA660(v14, v13, a2, a3);
  result = swift_unknownObjectRelease();
  *a4 = v15;
  return result;
}

uint64_t SharingActivityItemFactory.createLinkPresentationSource(issue:)(void *a1)
{
  v2 = sub_1D725A93C();
  MEMORY[0x1EEE9AC00](v2, v3);
  *(swift_allocObject() + 16) = a1;
  sub_1D5B648E0(&qword_1EDF3BDB0, MEMORY[0x1E69D6420]);
  sub_1D5B54B8C(0, &qword_1EDF1B5B0, MEMORY[0x1E69D6420], MEMORY[0x1E69E62F8]);
  sub_1D5B7667C();
  v4 = a1;
  sub_1D7263B6C();
  sub_1D673FC74();
  swift_allocObject();
  return sub_1D725B7AC();
}

uint64_t SharingActivityItemFactory.createActivityItemSources(puzzle:shareData:)(uint64_t a1, __int128 *a2)
{
  v3 = v2;
  v34 = sub_1D725A93C();
  MEMORY[0x1EEE9AC00](v34, v6);
  v33 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a2[1];
  v43 = *a2;
  v44 = v8;
  v45[0] = a2[2];
  *(v45 + 10) = *(a2 + 42);
  sub_1D5B670D4(0, &qword_1EDF194C0, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1D728AF30;
  v10 = v9;
  v32 = v9;
  v11 = type metadata accessor for SharingPuzzleImageActivityItemSource();
  v12 = objc_allocWithZone(v11);
  *&v12[OBJC_IVAR____TtC8NewsFeed36SharingPuzzleImageActivityItemSource_image] = 0;
  v42.receiver = v12;
  v42.super_class = v11;
  v13 = objc_msgSendSuper2(&v42, sel_init);
  v35 = v13;
  v36 = a1;
  sub_1D6BDAA84(0, &qword_1EC893530, &qword_1EDF1A690, 0x1E69DCAB8, sub_1D5B5A498);
  v14 = v13;
  sub_1D725BDCC();
  v15 = sub_1D725B92C();
  sub_1D725BAAC();

  *(v10 + 32) = v14;
  sub_1D6BDAEC4(v3 + 200, v41, qword_1EDF27B30, qword_1EDF3F7F0, &protocol descriptor for PuzzleRankProviderType);
  sub_1D6BDAEC4(v3 + 240, v40, qword_1EDF1C510, &qword_1EDF3CDC0, &protocol descriptor for PuzzleDifficultyDescriptionProviderType);
  v16 = type metadata accessor for SharingPuzzleTextActivityItemSource();
  v17 = objc_allocWithZone(v16);
  v18 = &v17[OBJC_IVAR____TtC8NewsFeed35SharingPuzzleTextActivityItemSource____lazy_storage___defaultText];
  *v18 = 0;
  *(v18 + 1) = 0;
  *&v17[OBJC_IVAR____TtC8NewsFeed35SharingPuzzleTextActivityItemSource____lazy_storage___completeSolvedWithTimeText] = xmmword_1D7279980;
  *&v17[OBJC_IVAR____TtC8NewsFeed35SharingPuzzleTextActivityItemSource____lazy_storage___completeSolvedWithRankText] = xmmword_1D7279980;
  *&v17[OBJC_IVAR____TtC8NewsFeed35SharingPuzzleTextActivityItemSource____lazy_storage___completeSolvedWithMovesText] = xmmword_1D7279980;
  *&v17[OBJC_IVAR____TtC8NewsFeed35SharingPuzzleTextActivityItemSource____lazy_storage___solvedPuzzleTypeText] = xmmword_1D7279980;
  *&v17[OBJC_IVAR____TtC8NewsFeed35SharingPuzzleTextActivityItemSource____lazy_storage___solvedWithTimeText] = xmmword_1D7279980;
  *&v17[OBJC_IVAR____TtC8NewsFeed35SharingPuzzleTextActivityItemSource____lazy_storage___solvedDifficultyText] = xmmword_1D7279980;
  *&v17[OBJC_IVAR____TtC8NewsFeed35SharingPuzzleTextActivityItemSource____lazy_storage___solvedWithRank] = xmmword_1D7279980;
  *&v17[OBJC_IVAR____TtC8NewsFeed35SharingPuzzleTextActivityItemSource____lazy_storage___solvedWithMovesText] = xmmword_1D7279980;
  *&v17[OBJC_IVAR____TtC8NewsFeed35SharingPuzzleTextActivityItemSource_puzzle] = a1;
  sub_1D6BDAEC4(v41, &v17[OBJC_IVAR____TtC8NewsFeed35SharingPuzzleTextActivityItemSource_puzzleRankProvider], qword_1EDF27B30, qword_1EDF3F7F0, &protocol descriptor for PuzzleRankProviderType);
  sub_1D6BDAEC4(v40, &v17[OBJC_IVAR____TtC8NewsFeed35SharingPuzzleTextActivityItemSource_puzzleDifficultyDescriptionProvider], qword_1EDF1C510, &qword_1EDF3CDC0, &protocol descriptor for PuzzleDifficultyDescriptionProviderType);
  v19 = &v17[OBJC_IVAR____TtC8NewsFeed35SharingPuzzleTextActivityItemSource_shareData];
  v20 = *(v45 + 10);
  v22 = v44;
  v21 = v45[0];
  *v19 = v43;
  *(v19 + 1) = v22;
  *(v19 + 2) = v21;
  *(v19 + 42) = v20;
  sub_1D6BDBF04(&v43, v38, &qword_1EDF11680, &type metadata for PuzzleShareData, MEMORY[0x1E69E6720], sub_1D5B670D4);
  v37.receiver = v17;
  v37.super_class = v16;
  swift_unknownObjectRetain();
  v23 = objc_msgSendSuper2(&v37, sel_init);
  sub_1D6BDBC60(v40, qword_1EDF1C510, &qword_1EDF3CDC0, &protocol descriptor for PuzzleDifficultyDescriptionProviderType);
  sub_1D6BDBC60(v41, qword_1EDF27B30, qword_1EDF3F7F0, &protocol descriptor for PuzzleRankProviderType);
  v24 = v32;
  *(v32 + 40) = v23;
  sub_1D6BDAEC4(v3 + 160, v38, qword_1EDF1CE10, &qword_1EDF3CFD0, &protocol descriptor for PuzzleImageShareAttributeProviderType);
  v25 = swift_allocObject();
  *(v25 + 16) = a1;
  v26 = v38[1];
  *(v25 + 24) = v38[0];
  *(v25 + 40) = v26;
  *(v25 + 56) = v39;
  *&v38[0] = MEMORY[0x1E69E7CC0];
  sub_1D5B648E0(&qword_1EDF3BDB0, MEMORY[0x1E69D6420]);
  sub_1D5B54B8C(0, &qword_1EDF1B5B0, MEMORY[0x1E69D6420], MEMORY[0x1E69E62F8]);
  sub_1D5B7667C();
  swift_unknownObjectRetain();
  sub_1D7263B6C();
  sub_1D673FC74();
  swift_allocObject();
  v27 = sub_1D725B7AC();
  objc_allocWithZone(type metadata accessor for SharingPuzzleURLActivityItemSource());
  v28 = swift_unknownObjectRetain();
  v29 = sub_1D6815A84(v28, v27);
  swift_unknownObjectRelease();
  result = v24;
  *(v24 + 48) = v29;
  return result;
}

uint64_t SharingActivityItemFactory.createLinkPresentationSource(puzzle:puzzleImageShareAttributeProvider:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D725A93C();
  MEMORY[0x1EEE9AC00](v4, v5);
  sub_1D6BDAEC4(a2, v9, qword_1EDF1CE10, &qword_1EDF3CFD0, &protocol descriptor for PuzzleImageShareAttributeProviderType);
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  v7 = v9[1];
  *(v6 + 24) = v9[0];
  *(v6 + 40) = v7;
  *(v6 + 56) = v10;
  *&v9[0] = MEMORY[0x1E69E7CC0];
  sub_1D5B648E0(&qword_1EDF3BDB0, MEMORY[0x1E69D6420]);
  sub_1D5B54B8C(0, &qword_1EDF1B5B0, MEMORY[0x1E69D6420], MEMORY[0x1E69E62F8]);
  sub_1D5B7667C();
  swift_unknownObjectRetain();
  sub_1D7263B6C();
  sub_1D673FC74();
  swift_allocObject();
  return sub_1D725B7AC();
}

uint64_t sub_1D6BD470C(uint64_t a1)
{
  v2 = sub_1D725A93C();
  MEMORY[0x1EEE9AC00](v2, v3);
  *(swift_allocObject() + 16) = a1;
  sub_1D5B648E0(&qword_1EDF3BDB0, MEMORY[0x1E69D6420]);
  sub_1D5B54B8C(0, &qword_1EDF1B5B0, MEMORY[0x1E69D6420], MEMORY[0x1E69E62F8]);
  sub_1D5B7667C();
  swift_unknownObjectRetain();
  sub_1D7263B6C();
  sub_1D673FC74();
  swift_allocObject();
  return sub_1D725B7AC();
}

uint64_t SharingActivityItemFactory.createActivityItemSources(feedDescriptor:)(void *a1)
{
  sub_1D5B670D4(0, &qword_1EDF194C0, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1D72816D0;
  v3 = type metadata accessor for SharingTagTextActivityItemSource();
  v4 = objc_allocWithZone(v3);
  *&v4[OBJC_IVAR____TtC8NewsFeed32SharingTagTextActivityItemSource_tag] = FCFeedDescriptor.feedTag.getter();
  v5 = FCFeedDescriptor.feedExternalTitle.getter();
  v6 = &v4[OBJC_IVAR____TtC8NewsFeed32SharingTagTextActivityItemSource_itemTitle];
  *v6 = v5;
  v6[1] = v7;
  v15.receiver = v4;
  v15.super_class = v3;
  *(v2 + 32) = objc_msgSendSuper2(&v15, sel_init);
  v8 = SharingActivityItemFactory.createLinkPresentationSource(feedDescriptor:)(a1);
  v9 = type metadata accessor for SharingTagURLActivityItemSource();
  v10 = objc_allocWithZone(v9);
  v11 = &v10[OBJC_IVAR____TtC8NewsFeed31SharingTagURLActivityItemSource_model];
  *v11 = a1;
  v11[8] = 1;
  *&v10[OBJC_IVAR____TtC8NewsFeed31SharingTagURLActivityItemSource_linkPresentationSource] = v8;
  v14.receiver = v10;
  v14.super_class = v9;
  v12 = a1;
  *(v2 + 40) = objc_msgSendSuper2(&v14, sel_init);
  return v2;
}

uint64_t SharingActivityItemFactory.createLinkPresentationSource(feedDescriptor:)(void *a1)
{
  v2 = v1;
  v4 = sub_1D725A93C();
  MEMORY[0x1EEE9AC00](v4, v5);
  v6 = [FCFeedDescriptor.feedTag.getter() asSportsEvent];
  swift_unknownObjectRelease();
  if (v6)
  {
    v7 = *(v2 + 112);
    if (v7)
    {
LABEL_6:
      v8 = swift_allocObject();
      v8[2] = a1;
      v8[3] = v6;
      v8[4] = v7;
      sub_1D5B648E0(&qword_1EDF3BDB0, MEMORY[0x1E69D6420]);
      sub_1D5B54B8C(0, &qword_1EDF1B5B0, MEMORY[0x1E69D6420], MEMORY[0x1E69E62F8]);
      sub_1D5B7667C();
      swift_unknownObjectRetain_n();
      v9 = a1;
      swift_unknownObjectRetain();
      sub_1D7263B6C();
      sub_1D673FC74();
      swift_allocObject();
      v10 = sub_1D725B7AC();
      swift_unknownObjectRelease();
LABEL_10:
      swift_unknownObjectRelease();
      return v10;
    }

    swift_unknownObjectRelease();
  }

  v6 = [FCFeedDescriptor.feedTag.getter() asSports];
  swift_unknownObjectRelease();
  if (v6)
  {
    v7 = *(v2 + 112);
    if (v7)
    {
      goto LABEL_6;
    }

    swift_unknownObjectRelease();
  }

  v11 = [FCFeedDescriptor.feedTag.getter() asPuzzleType];
  swift_unknownObjectRelease();
  if (v11)
  {
    v12 = swift_allocObject();
    *(v12 + 16) = v11;
    *(v12 + 24) = a1;
    sub_1D5B648E0(&qword_1EDF3BDB0, MEMORY[0x1E69D6420]);
    sub_1D5B54B8C(0, &qword_1EDF1B5B0, MEMORY[0x1E69D6420], MEMORY[0x1E69E62F8]);
    sub_1D5B7667C();
    v13 = a1;
    swift_unknownObjectRetain();
    sub_1D7263B6C();
    sub_1D673FC74();
    swift_allocObject();
    v10 = sub_1D725B7AC();
    goto LABEL_10;
  }

  v15 = [FCFeedDescriptor.feedTag.getter() isPuzzleHub];
  swift_unknownObjectRelease();
  if (v15)
  {
    *(swift_allocObject() + 16) = a1;
    sub_1D5B648E0(&qword_1EDF3BDB0, MEMORY[0x1E69D6420]);
    sub_1D5B54B8C(0, &qword_1EDF1B5B0, MEMORY[0x1E69D6420], MEMORY[0x1E69E62F8]);
    sub_1D5B7667C();
    v16 = a1;
    sub_1D7263B6C();
    sub_1D673FC74();
    swift_allocObject();
  }

  else
  {
    v17 = [FCFeedDescriptor.feedTag.getter() isFoodHub];
    swift_unknownObjectRelease();
    if (v17)
    {
      *(swift_allocObject() + 16) = a1;
      sub_1D5B648E0(&qword_1EDF3BDB0, MEMORY[0x1E69D6420]);
      sub_1D5B54B8C(0, &qword_1EDF1B5B0, MEMORY[0x1E69D6420], MEMORY[0x1E69E62F8]);
      sub_1D5B7667C();
      v18 = a1;
    }

    else
    {
      v19 = *(v2 + 112);
      v20 = swift_allocObject();
      *(v20 + 16) = a1;
      *(v20 + 24) = v19;
      sub_1D5B648E0(&qword_1EDF3BDB0, MEMORY[0x1E69D6420]);
      sub_1D5B54B8C(0, &qword_1EDF1B5B0, MEMORY[0x1E69D6420], MEMORY[0x1E69E62F8]);
      sub_1D5B7667C();
      v21 = a1;
      swift_unknownObjectRetain();
    }

    sub_1D7263B6C();
    sub_1D673FC74();
    swift_allocObject();
  }

  return sub_1D725B7AC();
}

uint64_t sub_1D6BD5198@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  sub_1D6BDAEC4(a2, v11, &unk_1EDF3CFB0, &qword_1EDF3CFC0, &protocol descriptor for RecipeImageShareAttributeProviderType);
  v5 = type metadata accessor for RecipeLinkPresentationSource();
  v6 = objc_allocWithZone(v5);
  *&v6[OBJC_IVAR____TtC8NewsFeed28RecipeLinkPresentationSource_recipe] = a1;
  sub_1D6BDAEC4(v11, &v6[OBJC_IVAR____TtC8NewsFeed28RecipeLinkPresentationSource_imageShareAttributeProvider], &unk_1EDF3CFB0, &qword_1EDF3CFC0, &protocol descriptor for RecipeImageShareAttributeProviderType);
  v10.receiver = v6;
  v10.super_class = v5;
  v7 = a1;
  v8 = objc_msgSendSuper2(&v10, sel_init);
  result = sub_1D6BDBC60(v11, &unk_1EDF3CFB0, &qword_1EDF3CFC0, &protocol descriptor for RecipeImageShareAttributeProviderType);
  *a3 = v8;
  return result;
}

uint64_t sub_1D6BD5288@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  sub_1D6BDAEC4(a2, v10, qword_1EDF1CE10, &qword_1EDF3CFD0, &protocol descriptor for PuzzleImageShareAttributeProviderType);
  v5 = type metadata accessor for PuzzleLinkPresentationSource();
  v6 = objc_allocWithZone(v5);
  *&v6[OBJC_IVAR____TtC8NewsFeed28PuzzleLinkPresentationSource_puzzle] = a1;
  sub_1D6BDAEC4(v10, &v6[OBJC_IVAR____TtC8NewsFeed28PuzzleLinkPresentationSource_puzzleImageShareAttributeProvider], qword_1EDF1CE10, &qword_1EDF3CFD0, &protocol descriptor for PuzzleImageShareAttributeProviderType);
  v9.receiver = v6;
  v9.super_class = v5;
  swift_unknownObjectRetain();
  v7 = objc_msgSendSuper2(&v9, sel_init);
  result = sub_1D6BDBC60(v10, qword_1EDF1CE10, &qword_1EDF3CFD0, &protocol descriptor for PuzzleImageShareAttributeProviderType);
  *a3 = v7;
  return result;
}

id sub_1D6BD537C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for PuzzleTypeLinkPresentationSource();
  v5 = objc_allocWithZone(v4);
  *&v5[OBJC_IVAR____TtC8NewsFeed32PuzzleTypeLinkPresentationSource_puzzleType] = a1;
  v7.receiver = v5;
  v7.super_class = v4;
  swift_unknownObjectRetain();
  result = objc_msgSendSuper2(&v7, sel_init);
  *a2 = result;
  return result;
}

uint64_t sub_1D6BD53F0@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = sub_1D72585BC();
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  v8 = [swift_unknownObjectRetain() nameForSharing];
  v9 = sub_1D726207C();
  v11 = v10;

  v12 = [a1 identifier];
  if (!v12)
  {
    sub_1D726207C();
    v12 = sub_1D726203C();
  }

  sub_1D5B5A498(0, &unk_1EC899130);
  v13 = [objc_opt_self() nss:v12 NewsURLForTagID:?];

  sub_1D72584EC();
  v14 = sub_1D6FAB620(a1, v9, v11, v7);
  result = swift_unknownObjectRelease();
  *a2 = v14;
  return result;
}

void sub_1D6BD5574(id a1@<X1>, uint64_t a2@<X0>, void *a3@<X8>)
{
  v5 = [a1 shareImageFor_];
  v6 = [objc_allocWithZone(NETagLinkPresentationSource) initWithTag:a2 image:v5];

  *a3 = v6;
}

uint64_t sub_1D6BD55F0@<X0>(void *a1@<X0>, SEL *a2@<X1>, void *a3@<X8>)
{
  v6 = sub_1D72585BC();
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B5A498(0, &unk_1EC899130);
  swift_getObjectType();
  v10 = [a1 name];
  v11 = sub_1D726207C();
  v13 = v12;

  v14 = [objc_opt_self() *a2];
  sub_1D72584EC();

  v15 = swift_unknownObjectRetain();
  v16 = sub_1D6FAB620(v15, v11, v13, v9);
  result = swift_unknownObjectRelease();
  *a3 = v16;
  return result;
}

uint64_t sub_1D6BD5730@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, Class *a3@<X3>, SEL *a4@<X4>, void *a5@<X8>)
{
  v20 = a5;
  v9 = sub_1D72585BC();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  FCFeedDescriptor.feedExternalTitle.getter();
  FCFeedDescriptor.feedURL.getter();
  v14 = objc_allocWithZone(*a3);
  v15 = sub_1D726203C();

  v16 = sub_1D725844C();
  v17 = [v14 *a4];

  result = (*(v10 + 8))(v13, v9);
  *v20 = v17;
  return result;
}

uint64_t sub_1D6BD5890@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = sub_1D72585BC();
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  swift_unknownObjectRetain();
  v8 = FCFeedDescriptor.feedExternalTitle.getter();
  v10 = v9;
  v11 = [a1 identifier];
  if (!v11)
  {
    sub_1D726207C();
    v11 = sub_1D726203C();
  }

  sub_1D5B5A498(0, &unk_1EC899130);
  v12 = [objc_opt_self() nss:v11 NewsURLForTagID:?];

  sub_1D72584EC();
  v13 = sub_1D6FAB620(a1, v8, v10, v7);
  result = swift_unknownObjectRelease();
  *a2 = v13;
  return result;
}

uint64_t sub_1D6BD59FC@<X0>(SEL *a1@<X1>, void *a2@<X8>)
{
  v4 = sub_1D72585BC();
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B5A498(0, &unk_1EC899130);
  v8 = FCFeedDescriptor.feedTag.getter();
  v9 = FCFeedDescriptor.feedExternalTitle.getter();
  v11 = v10;
  v12 = [objc_opt_self() *a1];
  sub_1D72584EC();

  swift_getObjectType();
  v13 = sub_1D6FAB620(v8, v9, v11, v7);
  result = swift_unknownObjectRelease();
  *a2 = v13;
  return result;
}

uint64_t sub_1D6BD5B14@<X0>(id a1@<X1>, void *a2@<X8>)
{
  v4 = sub_1D72585BC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  FCFeedDescriptor.feedExternalTitle.getter();
  FCFeedDescriptor.feedURL.getter();
  if (a1)
  {
    a1 = [a1 shareImageFor_];
    swift_unknownObjectRelease();
  }

  v9 = objc_allocWithZone(NETagLinkPresentationSource);
  v10 = sub_1D726203C();

  v11 = sub_1D725844C();
  v12 = [v9 initWithTitle:v10 url:v11 image:a1];

  result = (*(v5 + 8))(v8, v4);
  *a2 = v12;
  return result;
}

uint64_t SharingActivityItemFactory.createActivityItem(for:feedItemIdentifier:type:tracker:sourceView:sourceItem:)(void *a1, uint64_t a2, uint64_t a3, unsigned __int8 *a4, uint64_t a5, void *a6)
{
  v7 = v6;
  v42 = a6;
  v46 = a1;
  v47 = a5;
  v44 = a2;
  v45 = a3;
  sub_1D6BDB698(0, &qword_1EDF17150, sub_1D5B8D68C);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  sub_1D6BDB714(0, &qword_1EDF17140, sub_1D5B8D68C);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  sub_1D6BDB698(0, &qword_1EDF17120, sub_1D5B65B58);
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  sub_1D6BDB714(0, &qword_1EDF17110, sub_1D5B65B58);
  MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v17 = sub_1D725E84C();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17, v19);
  v21 = &v41 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *a4;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v43 = *(v7 + 24);
    if (v22 <= 5)
    {
      if (v22 > 2)
      {
        if (v22 == 3)
        {
          (*(v18 + 104))(v21, *MEMORY[0x1E69D7FC8], v17);
          v51 = sub_1D725A60C();
          v52 = sub_1D5B648E0(&qword_1EDF3BED0, MEMORY[0x1E698AAC8]);
          v48 = v47;
          v53 = 0u;
          v54 = 0u;
          v55 = 1;
          sub_1D725E36C();
          swift_allocObject();

          sub_1D725E34C();
          v48 = v46;
          v49 = v44;
          v50 = v45;

          swift_unknownObjectRetain();
          _s5TeaUI15SharingActivityC8NewsFeedE4like7contextAcD20LikingCommandContextV_tFZ_0(&v48);
          swift_unknownObjectRelease();

          goto LABEL_25;
        }

        if (v22 == 4)
        {
          (*(v18 + 104))(v21, *MEMORY[0x1E69D7FC8], v17);
          v51 = sub_1D725A60C();
          v52 = sub_1D5B648E0(&qword_1EDF3BED0, MEMORY[0x1E698AAC8]);
          v48 = v47;
          v53 = 0u;
          v54 = 0u;
          v55 = 1;
          sub_1D725E36C();
          swift_allocObject();

          sub_1D725E34C();
          v48 = v46;
          v49 = v44;
          v50 = v45;

          swift_unknownObjectRetain();
          _s5TeaUI15SharingActivityC8NewsFeedE7dislike7contextAcD20LikingCommandContextV_tFZ_0(&v48);
          swift_unknownObjectRelease();

          v26 = sub_1D725D59C();
LABEL_26:
          swift_unknownObjectRelease();

          goto LABEL_27;
        }

        if ([v46 sourceChannel])
        {
          (*(v18 + 104))(v21, *MEMORY[0x1E69D7FC8], v17);
          v51 = sub_1D725A60C();
          v52 = sub_1D5B648E0(&qword_1EDF3BED0, MEMORY[0x1E698AAC8]);
          v48 = v47;
          v53 = 0u;
          v54 = 0u;
          v55 = 1;
          sub_1D725E36C();
          swift_allocObject();
          swift_unknownObjectRetain();

          v37 = v42;
          sub_1D725E30C();
          v38 = swift_unknownObjectRetain();
          v39 = _s5TeaUI15SharingActivityC8NewsFeedE6follow3tagACSgSo14FCTagProviding_pSg_tFZ_0(v38);
          swift_unknownObjectRelease();
          if (v39)
          {
            v40 = sub_1D725D59C();

            swift_unknownObjectRelease();

            swift_unknownObjectRelease();
            return v40;
          }

          swift_unknownObjectRelease();
        }

        goto LABEL_47;
      }

      v24 = *MEMORY[0x1E69D7FC8];
      if (!v22)
      {
        (*(v18 + 104))(v21, v24, v17);
        v51 = sub_1D725A60C();
        v52 = sub_1D5B648E0(&qword_1EDF3BED0, MEMORY[0x1E698AAC8]);
        v48 = v47;
        v53 = 0u;
        v54 = 0u;
        v55 = 1;
        sub_1D725E36C();
        swift_allocObject();

        sub_1D725E34C();
        if (_s5TeaUI15SharingActivityC8NewsFeedE6report8headlineACSgSo19FCHeadlineProviding_pSg_tFZ_0(v46))
        {
          v26 = sub_1D725D59C();

          swift_unknownObjectRelease();
LABEL_27:

          return v26;
        }

        swift_unknownObjectRelease();

        return 0;
      }

      if (v22 == 1)
      {
        (*(v18 + 104))(v21, v24, v17);
        v51 = sub_1D725A60C();
        v52 = sub_1D5B648E0(&qword_1EDF3BED0, MEMORY[0x1E698AAC8]);
        v48 = v47;
        v53 = 0u;
        v54 = 0u;
        v55 = 1;
        sub_1D725E36C();
        swift_allocObject();

        sub_1D725E34C();
        _s5TeaUI15SharingActivityC8NewsFeedE4save8headlineACSo19FCHeadlineProviding_p_tFZ_0();
LABEL_25:
        v26 = sub_1D725D59C();
        goto LABEL_26;
      }

      (*(v18 + 104))(v21, v24, v17);
      v51 = sub_1D725A60C();
      v52 = sub_1D5B648E0(&qword_1EDF3BED0, MEMORY[0x1E698AAC8]);
      v48 = v47;
      v53 = 0u;
      v54 = 0u;
      v55 = 1;
      sub_1D725E36C();
      swift_allocObject();

      sub_1D725E34C();
      if (_s5TeaUI15SharingActivityC8NewsFeedE12openInSafari8headlineACSgSo19FCHeadlineProviding_p_tFZ_0(v46))
      {
        goto LABEL_35;
      }

      goto LABEL_41;
    }

    if (v22 > 8)
    {
      if (v22 == 9)
      {
        (*(v18 + 104))(v21, *MEMORY[0x1E69D7FC8], v17);
        v51 = sub_1D725A60C();
        v52 = sub_1D5B648E0(&qword_1EDF3BED0, MEMORY[0x1E698AAC8]);
        v48 = v47;
        v53 = 0u;
        v54 = 0u;
        v55 = 1;
        sub_1D725E36C();
        swift_allocObject();

        sub_1D725E34C();
        v32 = [v46 sourceChannel];
        if (v32)
        {
          v33 = v32;
          v34 = qword_1EDF169F8;
          swift_unknownObjectRetain();
          if (v34 != -1)
          {
            swift_once();
          }

          swift_unknownObjectRetain();

          sub_1D726203C();
          LOBYTE(v48) = 0;
          sub_1D5B8D68C();
          sub_1D725DAFC();
          LOBYTE(v48) = 0;
          sub_1D725DFEC();
          sub_1D725DAFC();
          v48 = v33;
          sub_1D725D5DC();
          swift_allocObject();
          sub_1D725D5BC();
          swift_unknownObjectRelease_n();
          v31 = sub_1D725D59C();

          goto LABEL_36;
        }
      }

      else
      {
        v27 = *MEMORY[0x1E69D7FC8];
        if (v22 == 10)
        {
          (*(v18 + 104))(v21, v27, v17);
          v51 = sub_1D725A60C();
          v52 = sub_1D5B648E0(&qword_1EDF3BED0, MEMORY[0x1E698AAC8]);
          v48 = v47;
          v53 = 0u;
          v54 = 0u;
          v55 = 1;
          sub_1D725E36C();
          swift_allocObject();

          sub_1D725E34C();
          _s5TeaUI15SharingActivityC8NewsFeedE15openSportsEvent3forACSo19FCHeadlineProviding_p_tFZ_0();
          goto LABEL_25;
        }

        (*(v18 + 104))(v21, v27, v17);
        v51 = sub_1D725A60C();
        v52 = sub_1D5B648E0(&qword_1EDF3BED0, MEMORY[0x1E698AAC8]);
        v48 = v47;
        v53 = 0u;
        v54 = 0u;
        v55 = 1;
        sub_1D725E36C();
        swift_allocObject();

        sub_1D725E34C();
        if (_s5TeaUI15SharingActivityC8NewsFeedE15searchInArticleACSgyFZ_0())
        {
          goto LABEL_35;
        }
      }
    }

    else
    {
      if (v22 == 6)
      {
        v45 = result;
        v28 = [v46 sourceChannel];
        if (v28)
        {
          v29 = v28;
          (*(v18 + 104))(v21, *MEMORY[0x1E69D7FC8], v17);
          v51 = sub_1D725A60C();
          v52 = sub_1D5B648E0(&qword_1EDF3BED0, MEMORY[0x1E698AAC8]);
          v48 = v47;
          v53 = 0u;
          v54 = 0u;
          v55 = 1;
          sub_1D725E36C();
          swift_allocObject();

          sub_1D725E34C();
          v30 = qword_1EDF3AB68;
          swift_unknownObjectRetain_n();
          if (v30 != -1)
          {
            swift_once();
          }

          swift_unknownObjectRetain();

          sub_1D726203C();
          LOBYTE(v48) = 1;
          *(swift_allocObject() + 16) = v29;
          sub_1D5B65B58();
          swift_unknownObjectRetain();
          sub_1D725DAFC();
          LOBYTE(v48) = 1;
          sub_1D725DFEC();
          sub_1D725DAFC();
          v48 = v29;
          sub_1D725D5DC();
          swift_allocObject();
          sub_1D725D5BC();
          swift_unknownObjectRelease_n();
          v31 = sub_1D725D59C();

          swift_unknownObjectRelease();

          goto LABEL_36;
        }

        goto LABEL_47;
      }

      v25 = *MEMORY[0x1E69D7FC8];
      if (v22 == 7)
      {
        (*(v18 + 104))(v21, v25, v17);
        v51 = sub_1D725A60C();
        v52 = sub_1D5B648E0(&qword_1EDF3BED0, MEMORY[0x1E698AAC8]);
        v48 = v47;
        v53 = 0u;
        v54 = 0u;
        v55 = 1;
        sub_1D725E36C();
        swift_allocObject();

        sub_1D725E34C();
        if (sub_1D611B854(v46, (v7 + 32)))
        {
          goto LABEL_35;
        }
      }

      else
      {
        (*(v18 + 104))(v21, v25, v17);
        v51 = sub_1D725A60C();
        v52 = sub_1D5B648E0(&qword_1EDF3BED0, MEMORY[0x1E698AAC8]);
        v48 = v47;
        v53 = 0u;
        v54 = 0u;
        v55 = 1;
        sub_1D725E36C();
        swift_allocObject();

        sub_1D725E34C();
        v35 = [v46 sourceChannel];
        LOBYTE(v48) = 0;
        v36 = _s5TeaUI15SharingActivityC8NewsFeedE11openChannel3tag11destination13sourceArticleACSgSo14FCTagProviding_pSg_AD04OpenH11DestinationOSo010FCHeadlineN0_pSgtFZ_0(v35);
        swift_unknownObjectRelease();
        if (v36)
        {
LABEL_35:
          v31 = sub_1D725D59C();

LABEL_36:
          swift_unknownObjectRelease();
          return v31;
        }
      }
    }

LABEL_41:

LABEL_47:
    swift_unknownObjectRelease();
    return 0;
  }

  return result;
}

uint64_t SharingActivityItemFactory.createActivityItem(for:type:tracker:sourceView:)(uint64_t a1, unsigned __int8 *a2, uint64_t a3, void *a4)
{
  v33 = a3;
  v34 = a1;
  sub_1D6BDB698(0, &qword_1EDF17150, sub_1D5B8D68C);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  sub_1D6BDB714(0, &qword_1EDF17140, sub_1D5B8D68C);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  sub_1D6BDB698(0, &qword_1EDF17120, sub_1D5B65B58);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  sub_1D6BDB714(0, &qword_1EDF17110, sub_1D5B65B58);
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v15 = sub_1D725E84C();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15, v17);
  v19 = v31 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *a2;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v22 = *(v4 + 24);
    if (v20 > 5)
    {
      if (v20 > 8)
      {
        if (v20 == 9)
        {
          v32 = *(v4 + 24);
          (*(v16 + 104))(v19, *MEMORY[0x1E69D7FC8], v15);
          v36 = sub_1D725A60C();
          v37 = sub_1D5B648E0(&qword_1EDF3BED0, MEMORY[0x1E698AAC8]);
          v35 = v33;
          v38 = 0u;
          v39 = 0u;
          v40 = 1;
          sub_1D725E36C();
          swift_allocObject();

          sub_1D725E34C();
          v29 = qword_1EDF169F8;
          v30 = v34;
          swift_unknownObjectRetain();
          if (v29 != -1)
          {
            swift_once();
          }

          swift_unknownObjectRetain();

          sub_1D726203C();
          LOBYTE(v35) = 0;
          sub_1D5B8D68C();
          sub_1D725DAFC();
          LOBYTE(v35) = 0;
          sub_1D725DFEC();
          sub_1D725DAFC();
          v35 = v30;
          sub_1D725D5DC();
          swift_allocObject();
          sub_1D725D5BC();
          swift_unknownObjectRelease();
          v25 = sub_1D725D59C();

          goto LABEL_19;
        }
      }

      else
      {
        if (v20 == 6)
        {
          v31[1] = result;
          v32 = v22;
          (*(v16 + 104))(v19, *MEMORY[0x1E69D7FC8], v15);
          v36 = sub_1D725A60C();
          v37 = sub_1D5B648E0(&qword_1EDF3BED0, MEMORY[0x1E698AAC8]);
          v35 = v33;
          v38 = 0u;
          v39 = 0u;
          v40 = 1;
          sub_1D725E36C();
          swift_allocObject();

          sub_1D725E34C();
          v27 = qword_1EDF3AB68;
          v28 = v34;
          swift_unknownObjectRetain();
          if (v27 != -1)
          {
            swift_once();
          }

          swift_unknownObjectRetain();

          sub_1D726203C();
          LOBYTE(v35) = 1;
          *(swift_allocObject() + 16) = v28;
          sub_1D5B65B58();
          swift_unknownObjectRetain();
          sub_1D725DAFC();
          LOBYTE(v35) = 1;
          sub_1D725DFEC();
          sub_1D725DAFC();
          v35 = v28;
          sub_1D725D5DC();
          swift_allocObject();
          sub_1D725D5BC();
          swift_unknownObjectRelease();
          v25 = sub_1D725D59C();

          goto LABEL_19;
        }

        if (v20 == 7)
        {
          (*(v16 + 104))(v19, *MEMORY[0x1E69D7FC8], v15);
          v36 = sub_1D725A60C();
          v37 = sub_1D5B648E0(&qword_1EDF3BED0, MEMORY[0x1E698AAC8]);
          v35 = v33;
          v38 = 0u;
          v39 = 0u;
          v40 = 1;
          sub_1D725E36C();
          swift_allocObject();

          sub_1D725E34C();
          v23 = sub_1D725D5DC();
          v24 = v34;
          swift_getObjectType();
          sub_1D611A660(v24, v23);
          v25 = sub_1D725D59C();
          swift_unknownObjectRelease();

          return v25;
        }
      }
    }

    else
    {
      if (v20 <= 4)
      {
        goto LABEL_12;
      }

      (*(v16 + 104))(v19, *MEMORY[0x1E69D7FC8], v15);
      v36 = sub_1D725A60C();
      v37 = sub_1D5B648E0(&qword_1EDF3BED0, MEMORY[0x1E698AAC8]);
      v35 = v33;
      v38 = 0u;
      v39 = 0u;
      v40 = 1;
      sub_1D725E36C();
      swift_allocObject();
      v26 = a4;

      sub_1D725E30C();
      if (_s5TeaUI15SharingActivityC8NewsFeedE6follow3tagACSgSo14FCTagProviding_pSg_tFZ_0(v34))
      {
        v25 = sub_1D725D59C();

LABEL_19:
        swift_unknownObjectRelease();
        return v25;
      }
    }

LABEL_12:
    swift_unknownObjectRelease();
    return 0;
  }

  return result;
}

uint64_t SharingActivityItemFactory.createActivityItem(for:type:tracker:sourceItem:)(void *a1, unsigned __int8 *a2, void *a3, uint64_t a4)
{
  v36[3] = a4;
  v37 = a1;
  sub_1D6BDB698(0, &qword_1EDF17150, sub_1D5B8D68C);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  sub_1D6BDB714(0, &qword_1EDF17140, sub_1D5B8D68C);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  sub_1D6BDB698(0, &qword_1EDF17120, sub_1D5B65B58);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  sub_1D6BDB714(0, &qword_1EDF17110, sub_1D5B65B58);
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v15 = sub_1D725E84C();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15, v17);
  v19 = v36 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *a2;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v36[1] = *(v4 + 24);
    v36[2] = result;
    (*(v16 + 104))(v19, *MEMORY[0x1E69D7FC8], v15);
    if (v20 <= 2)
    {
      if (!v20)
      {
        v39 = sub_1D725A60C();
        v40 = sub_1D5B648E0(&qword_1EDF3BED0, MEMORY[0x1E698AAC8]);
        v38 = a3;
        v41 = 0u;
        v42 = 0u;
        v43 = 1;
        sub_1D725E36C();
        swift_allocObject();
        swift_unknownObjectRetain();

        sub_1D725E34C();
        _s5TeaUI15SharingActivityC8NewsFeedE4save6recipeACSo8FCRecipeC_tFZ_0(v37);
        goto LABEL_12;
      }

      if (v20 == 1)
      {
        v39 = sub_1D725A60C();
        v40 = sub_1D5B648E0(&qword_1EDF3BED0, MEMORY[0x1E698AAC8]);
        v38 = a3;
        v41 = 0u;
        v42 = 0u;
        v43 = 1;
        sub_1D725E36C();
        swift_allocObject();
        swift_unknownObjectRetain();

        sub_1D725E34C();
        sub_1D611AB78(v37);
LABEL_12:
        v24 = sub_1D725D59C();
        swift_unknownObjectRelease();

        return v24;
      }

      v39 = sub_1D725A60C();
      v40 = sub_1D5B648E0(&qword_1EDF3BED0, MEMORY[0x1E698AAC8]);
      v38 = a3;
      v41 = 0u;
      v42 = 0u;
      v43 = 1;
      sub_1D725E36C();
      swift_allocObject();

      sub_1D725E34C();
      v27 = v37;
      v28 = [v37 sourceChannel];
      v29 = [v27 articles];
      sub_1D5B5534C(0, &qword_1EDF3C720);
      v30 = sub_1D726267C();

      if (v30 >> 62)
      {
        result = sub_1D7263BFC();
        if (result)
        {
LABEL_17:
          if ((v30 & 0xC000000000000001) != 0)
          {
            MEMORY[0x1DA6FB460](0, v30);
          }

          else
          {
            if (!*((v30 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              __break(1u);
              return result;
            }

            swift_unknownObjectRetain();
          }
        }
      }

      else
      {
        result = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (result)
        {
          goto LABEL_17;
        }
      }

      LOBYTE(v38) = 0;
      v34 = _s5TeaUI15SharingActivityC8NewsFeedE11openChannel3tag11destination13sourceArticleACSgSo14FCTagProviding_pSg_AD04OpenH11DestinationOSo010FCHeadlineN0_pSgtFZ_0(v28);
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      if (v34)
      {
        v35 = sub_1D725D59C();

        swift_unknownObjectRelease();
        return v35;
      }

      goto LABEL_28;
    }

    if (v20 == 3)
    {
      v39 = sub_1D725A60C();
      v40 = sub_1D5B648E0(&qword_1EDF3BED0, MEMORY[0x1E698AAC8]);
      v38 = a3;
      v41 = 0u;
      v42 = 0u;
      v43 = 1;
      sub_1D725E36C();
      swift_allocObject();
      swift_unknownObjectRetain();

      sub_1D725E30C();
      v25 = _s5TeaUI15SharingActivityC8NewsFeedE6follow3tagACSgSo14FCTagProviding_pSg_tFZ_0([v37 sourceChannel]);
      swift_unknownObjectRelease();
      if (v25)
      {
        v26 = sub_1D725D59C();

        swift_unknownObjectRelease();
        return v26;
      }

LABEL_28:

      swift_unknownObjectRelease();
      return 0;
    }

    if (v20 == 4)
    {
      v39 = sub_1D725A60C();
      v40 = sub_1D5B648E0(&qword_1EDF3BED0, MEMORY[0x1E698AAC8]);
      v38 = a3;
      v41 = 0u;
      v42 = 0u;
      v43 = 1;
      sub_1D725E36C();
      swift_allocObject();
      swift_unknownObjectRetain();

      sub_1D725E34C();
      v22 = [v37 sourceChannel];
      v23 = qword_1EDF3AB68;
      swift_unknownObjectRetain();
      if (v23 != -1)
      {
        swift_once();
      }

      swift_unknownObjectRetain();

      sub_1D726203C();
      LOBYTE(v38) = 1;
      *(swift_allocObject() + 16) = v22;
      sub_1D5B65B58();
      swift_unknownObjectRetain();
      sub_1D725DAFC();
      LOBYTE(v38) = 1;
      sub_1D725DFEC();
      sub_1D725DAFC();
      v38 = v22;
      sub_1D725D5DC();
      swift_allocObject();
    }

    else
    {
      v39 = sub_1D725A60C();
      v40 = sub_1D5B648E0(&qword_1EDF3BED0, MEMORY[0x1E698AAC8]);
      v38 = a3;
      v41 = 0u;
      v42 = 0u;
      v43 = 1;
      sub_1D725E36C();
      swift_allocObject();
      swift_unknownObjectRetain();

      sub_1D725E34C();
      v31 = [v37 sourceChannel];
      v32 = qword_1EDF169F8;
      swift_unknownObjectRetain();
      if (v32 != -1)
      {
        swift_once();
      }

      swift_unknownObjectRetain();

      sub_1D726203C();
      LOBYTE(v38) = 0;
      sub_1D5B8D68C();
      sub_1D725DAFC();
      LOBYTE(v38) = 0;
      sub_1D725DFEC();
      sub_1D725DAFC();
      v38 = v31;
      sub_1D725D5DC();
      swift_allocObject();
    }

    sub_1D725D5BC();
    swift_unknownObjectRelease_n();
    v33 = sub_1D725D59C();

    swift_unknownObjectRelease();
    return v33;
  }

  return result;
}

uint64_t SharingActivityItemFactory.createActivityItem(for:type:tracker:sourceView:)(void *a1, unsigned __int8 *a2, uint64_t a3, void *a4)
{
  v8 = sub_1D725E84C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v20[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a2;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v15 = [a1 feedConfiguration];
    if (v13 == 7)
    {
      (*(v9 + 104))(v12, *MEMORY[0x1E69D7FC8], v8);
      v20[3] = sub_1D725A60C();
      v20[4] = sub_1D5B648E0(&qword_1EDF3BED0, MEMORY[0x1E698AAC8]);
      v20[0] = a3;
      v21 = 0u;
      v22 = 0u;
      v23 = 1;
      sub_1D725E36C();
      swift_allocObject();

      sub_1D725E34C();
      sub_1D611B0E4(a1);
      v18 = sub_1D725D59C();
      swift_unknownObjectRelease();

      return v18;
    }

    else
    {
      if (v13 == 6)
      {
        if (v15 > 9)
        {
          if (v15 != 10 && v15 != 11)
          {
            goto LABEL_6;
          }
        }

        else if (v15 != 3 && v15 != 9)
        {
          goto LABEL_6;
        }
      }

      else if (v13 != 5 || v15 != 3)
      {
LABEL_6:
        v16 = FCFeedDescriptor.feedTag.getter();
        LOBYTE(v20[0]) = v13;
        v17 = SharingActivityItemFactory.createActivityItem(for:type:tracker:sourceView:)(v16, v20, a3, a4);
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        return v17;
      }

      swift_unknownObjectRelease();
      return 0;
    }
  }

  return result;
}

uint64_t SharingActivityItemFactory.createActivityItem(for:type:tracker:sourceView:sourceItem:)(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = sub_1D725E84C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!swift_unknownObjectWeakLoadStrong())
  {
    return 0;
  }

  (*(v8 + 104))(v11, *MEMORY[0x1E69D7FC8], v7);
  v15[4] = sub_1D725A60C();
  v15[5] = sub_1D5B648E0(&qword_1EDF3BED0, MEMORY[0x1E698AAC8]);
  v15[1] = a3;
  v16 = 0u;
  v17 = 0u;
  v18 = 1;
  sub_1D725E36C();
  swift_allocObject();
  swift_unknownObjectRetain();

  v12 = a4;
  sub_1D725E34C();
  if (sub_1D611BCBC(a1))
  {
    v13 = sub_1D725D59C();
  }

  else
  {
    v13 = 0;
  }

  swift_unknownObjectRelease();

  return v13;
}

uint64_t SharingActivityItemFactory.createActivityItem(for:type:tracker:sourceView:sourceItem:)(void *a1, unsigned __int8 *a2, uint64_t a3, void *a4)
{
  v9 = sub_1D725E84C();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a2;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v21 = *(v4 + 24);
    (*(v10 + 104))(v13, *MEMORY[0x1E69D7FC8], v9);
    if (v14)
    {
      if (v14 == 1)
      {
        v23 = sub_1D725A60C();
        v24 = sub_1D5B648E0(&qword_1EDF3BED0, MEMORY[0x1E698AAC8]);
        v22 = a3;
        v25 = 0u;
        v26 = 0u;
        v27 = 1;
        sub_1D725E36C();
        swift_allocObject();
        swift_unknownObjectRetain();

        v15 = a4;
        sub_1D725E30C();
        if (_s5TeaUI15SharingActivityC8NewsFeedE6follow3tagACSgSo14FCTagProviding_pSg_tFZ_0(a1))
        {
          v16 = sub_1D725D59C();

          swift_unknownObjectRelease();
        }

        else
        {
          swift_unknownObjectRelease();
          v16 = 0;
        }

        goto LABEL_10;
      }

      v23 = sub_1D725A60C();
      v24 = sub_1D5B648E0(&qword_1EDF3BED0, MEMORY[0x1E698AAC8]);
      v22 = a3;
      v25 = 0u;
      v26 = 0u;
      v27 = 1;
      sub_1D725E36C();
      swift_allocObject();
      swift_unknownObjectRetain();

      v19 = a4;
      sub_1D725E34C();
      _s5TeaUI15SharingActivityC8NewsFeedE21openPuzzleFullArchive10puzzleTypeACSo08FCPuzzleL9Providing_p_tFZ_0(a1);
    }

    else
    {
      v23 = sub_1D725A60C();
      v24 = sub_1D5B648E0(&qword_1EDF3BED0, MEMORY[0x1E698AAC8]);
      v22 = a3;
      v25 = 0u;
      v26 = 0u;
      v27 = 1;
      sub_1D725E36C();
      swift_allocObject();
      swift_unknownObjectRetain();

      v17 = a4;
      sub_1D725E34C();
      v18 = sub_1D725D5DC();
      swift_getObjectType();
      sub_1D611A660(a1, v18);
    }

    v16 = sub_1D725D59C();
    swift_unknownObjectRelease();

LABEL_10:

    return v16;
  }

  return 0;
}

void *SharingActivityItemFactory.createActivityItem(for:type:tracker:sourceView:sourceItem:)(uint64_t a1, unsigned __int8 *a2, uint64_t a3, void *a4, void *a5)
{
  v32[0] = a4;
  v32[1] = a5;
  v33 = a1;
  sub_1D6BDB698(0, &qword_1EDF17150, sub_1D5B8D68C);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  sub_1D6BDB714(0, &qword_1EDF17140, sub_1D5B8D68C);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  sub_1D6BDB698(0, &qword_1EDF17120, sub_1D5B65B58);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  sub_1D6BDB714(0, &qword_1EDF17110, sub_1D5B65B58);
  MEMORY[0x1EEE9AC00](v14 - 8, v15);
  v16 = sub_1D725E84C();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16, v18);
  v20 = v32 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *a2;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v32[2] = *(v5 + 24);
    v32[3] = result;
    (*(v17 + 104))(v20, *MEMORY[0x1E69D7FC8], v16);
    if (v21 <= 1)
    {
      if (!v21)
      {
        v35 = sub_1D725A60C();
        v36 = sub_1D5B648E0(&qword_1EDF3BED0, MEMORY[0x1E698AAC8]);
        v34 = a3;
        v37 = 0u;
        v38 = 0u;
        v39 = 1;
        sub_1D725E36C();
        swift_allocObject();

        sub_1D725E34C();
        v23 = sub_1D725D5DC();
        v24 = v33;
        swift_getObjectType();
        sub_1D611A660(v24, v23);
        v25 = sub_1D725D59C();
        swift_unknownObjectRelease();

        return v25;
      }

      v35 = sub_1D725A60C();
      v36 = sub_1D5B648E0(&qword_1EDF3BED0, MEMORY[0x1E698AAC8]);
      v34 = a3;
      v37 = 0u;
      v38 = 0u;
      v39 = 1;
      sub_1D725E36C();
      swift_allocObject();
      swift_unknownObjectRetain();

      v29 = v32[0];
      sub_1D725E30C();
      if (!_s5TeaUI15SharingActivityC8NewsFeedE6follow3tagACSgSo14FCTagProviding_pSg_tFZ_0(v33))
      {

        swift_unknownObjectRelease();
        return 0;
      }

LABEL_14:
      v25 = sub_1D725D59C();

      swift_unknownObjectRelease();
      return v25;
    }

    if (v21 != 2)
    {
      v35 = sub_1D725A60C();
      v36 = sub_1D5B648E0(&qword_1EDF3BED0, MEMORY[0x1E698AAC8]);
      v34 = a3;
      v37 = 0u;
      v38 = 0u;
      v39 = 1;
      sub_1D725E36C();
      swift_allocObject();

      sub_1D725E34C();
      v30 = qword_1EDF169F8;
      v31 = v33;
      swift_unknownObjectRetain();
      if (v30 != -1)
      {
        swift_once();
      }

      swift_unknownObjectRetain();

      sub_1D726203C();
      LOBYTE(v34) = 0;
      sub_1D5B8D68C();
      sub_1D725DAFC();
      LOBYTE(v34) = 0;
      sub_1D725DFEC();
      sub_1D725DAFC();
      v34 = v31;
      sub_1D725D5DC();
      swift_allocObject();
      sub_1D725D5BC();
      swift_unknownObjectRelease();
      goto LABEL_14;
    }

    v35 = sub_1D725A60C();
    v36 = sub_1D5B648E0(&qword_1EDF3BED0, MEMORY[0x1E698AAC8]);
    v34 = a3;
    v37 = 0u;
    v38 = 0u;
    v39 = 1;
    sub_1D725E36C();
    swift_allocObject();

    sub_1D725E34C();
    v26 = qword_1EDF3AB68;
    v27 = v33;
    swift_unknownObjectRetain();
    if (v26 != -1)
    {
      swift_once();
    }

    swift_unknownObjectRetain();

    sub_1D726203C();
    LOBYTE(v34) = 1;
    *(swift_allocObject() + 16) = v27;
    sub_1D5B65B58();
    swift_unknownObjectRetain();
    sub_1D725DAFC();
    LOBYTE(v34) = 1;
    sub_1D725DFEC();
    sub_1D725DAFC();
    v34 = v27;
    sub_1D725D5DC();
    swift_allocObject();
    sub_1D725D5BC();
    swift_unknownObjectRelease();
    v28 = sub_1D725D59C();

    swift_unknownObjectRelease();
    return v28;
  }

  return result;
}

uint64_t SharingActivityItemFactory.createActivityItem(for:type:tracker:sourceView:sourceItem:)(uint64_t a1, unsigned __int8 *a2, uint64_t a3, void *a4)
{
  v26 = a1;
  sub_1D6BDB698(0, &qword_1EDF17120, sub_1D5B65B58);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  sub_1D6BDB714(0, &qword_1EDF17110, sub_1D5B65B58);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v12 = sub_1D725E84C();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *a2;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v25[0] = *(v4 + 24);
    v25[1] = result;
    (*(v13 + 104))(v16, *MEMORY[0x1E69D7FC8], v12);
    if (v17)
    {
      if (v17 == 1)
      {
        v28 = sub_1D725A60C();
        v29 = sub_1D5B648E0(&qword_1EDF3BED0, MEMORY[0x1E698AAC8]);
        v27 = a3;
        v30 = 0u;
        v31 = 0u;
        v32 = 1;
        sub_1D725E36C();
        swift_allocObject();
        swift_unknownObjectRetain();

        v19 = a4;
        sub_1D725E30C();
        if (!_s5TeaUI15SharingActivityC8NewsFeedE6follow3tagACSgSo14FCTagProviding_pSg_tFZ_0(v26))
        {

          swift_unknownObjectRelease();
          return 0;
        }

        v20 = sub_1D725D59C();
      }

      else
      {
        v28 = sub_1D725A60C();
        v29 = sub_1D5B648E0(&qword_1EDF3BED0, MEMORY[0x1E698AAC8]);
        v27 = a3;
        v30 = 0u;
        v31 = 0u;
        v32 = 1;
        sub_1D725E36C();
        swift_allocObject();

        sub_1D725E34C();
        v23 = qword_1EDF3AB68;
        v24 = v26;
        swift_unknownObjectRetain();
        if (v23 != -1)
        {
          swift_once();
        }

        swift_unknownObjectRetain();

        sub_1D726203C();
        LOBYTE(v27) = 1;
        *(swift_allocObject() + 16) = v24;
        sub_1D5B65B58();
        swift_unknownObjectRetain();
        sub_1D725DAFC();
        LOBYTE(v27) = 1;
        sub_1D725DFEC();
        sub_1D725DAFC();
        v27 = v24;
        sub_1D725D5DC();
        swift_allocObject();
        sub_1D725D5BC();
        swift_unknownObjectRelease();
        v20 = sub_1D725D59C();
      }

      swift_unknownObjectRelease();
    }

    else
    {
      v28 = sub_1D725A60C();
      v29 = sub_1D5B648E0(&qword_1EDF3BED0, MEMORY[0x1E698AAC8]);
      v27 = a3;
      v30 = 0u;
      v31 = 0u;
      v32 = 1;
      sub_1D725E36C();
      swift_allocObject();

      sub_1D725E34C();
      v21 = sub_1D725D5DC();
      v22 = v26;
      swift_getObjectType();
      sub_1D611A660(v22, v21);
      v20 = sub_1D725D59C();
      swift_unknownObjectRelease();
    }

    return v20;
  }

  return result;
}

uint64_t SharingActivityItemFactory.deinit()
{
  sub_1D5B87E10(v0 + 16);
  __swift_destroy_boxed_opaque_existential_1(v0 + 32);
  __swift_destroy_boxed_opaque_existential_1(v0 + 72);
  swift_unknownObjectRelease();
  sub_1D6BDBC60(v0 + 120, &unk_1EDF3CFB0, &qword_1EDF3CFC0, &protocol descriptor for RecipeImageShareAttributeProviderType);
  sub_1D6BDBC60(v0 + 160, qword_1EDF1CE10, &qword_1EDF3CFD0, &protocol descriptor for PuzzleImageShareAttributeProviderType);
  sub_1D6BDBC60(v0 + 200, qword_1EDF27B30, qword_1EDF3F7F0, &protocol descriptor for PuzzleRankProviderType);
  sub_1D6BDBC60(v0 + 240, qword_1EDF1C510, &qword_1EDF3CDC0, &protocol descriptor for PuzzleDifficultyDescriptionProviderType);
  sub_1D6BDBC60(v0 + 280, &unk_1EDF25860, qword_1EDF25870, &protocol descriptor for ExternalRecipeFactoryType);
  sub_1D6BDBC60(v0 + 320, qword_1EDF27890, &unk_1EDF3F6D0, &protocol descriptor for FeatureAvailabilityType);
  return v0;
}

uint64_t SharingActivityItemFactory.__deallocating_deinit()
{
  SharingActivityItemFactory.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1D6BD9D90(void *a1)
{
  v2 = sub_1D725A93C();
  MEMORY[0x1EEE9AC00](v2, v3);
  *(swift_allocObject() + 16) = a1;
  sub_1D5B648E0(&qword_1EDF3BDB0, MEMORY[0x1E69D6420]);
  sub_1D5B54B8C(0, &qword_1EDF1B5B0, MEMORY[0x1E69D6420], MEMORY[0x1E69E62F8]);
  sub_1D5B7667C();
  v4 = a1;
  sub_1D7263B6C();
  sub_1D673FC74();
  swift_allocObject();
  return sub_1D725B7AC();
}

uint64_t sub_1D6BD9F18(uint64_t a1)
{
  v2 = sub_1D725A93C();
  MEMORY[0x1EEE9AC00](v2, v3);
  *(swift_allocObject() + 16) = a1;
  sub_1D5B648E0(&qword_1EDF3BDB0, MEMORY[0x1E69D6420]);
  sub_1D5B54B8C(0, &qword_1EDF1B5B0, MEMORY[0x1E69D6420], MEMORY[0x1E69E62F8]);
  sub_1D5B7667C();
  swift_unknownObjectRetain();
  sub_1D7263B6C();
  sub_1D673FC74();
  swift_allocObject();
  return sub_1D725B7AC();
}

uint64_t sub_1D6BDA230(uint64_t a1, int *a2)
{
  *(v2 + 40) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 48) = v3;
  *v3 = v2;
  v3[1] = sub_1D6BDA324;

  return v5(v2 + 16);
}

uint64_t sub_1D6BDA324()
{
  v1 = *v0;
  v2 = *(*v0 + 40);
  v3 = *v0;

  v4 = *(v1 + 32);
  *v2 = *(v1 + 16);
  *(v2 + 16) = v4;
  v5 = *(v3 + 8);

  return v5();
}

uint64_t sub_1D6BDA458(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_1D6BDA54C;

  return v5(v2 + 32);
}

uint64_t sub_1D6BDA54C()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v5 = *v0;

  *v2 = *(v1 + 32);
  v3 = *(v5 + 8);

  return v3();
}

id sub_1D6BDA660(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_1D72585BC();
  v8 = *(v7 - 8);
  v9 = 0;
  if ((*(v8 + 48))(a2, 1, v7) != 1)
  {
    v9 = sub_1D725844C();
    (*(v8 + 8))(a2, v7);
  }

  if (a4)
  {
    v10 = sub_1D726203C();
  }

  else
  {
    v10 = 0;
  }

  v11 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithHeadline:a1 articleURL:v9 selectedText:v10];

  return v11;
}

uint64_t sub_1D6BDA79C@<X0>(void *a1@<X8>)
{
  sub_1D5B54B8C(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  v4 = *(v3 - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = (v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v7 = *v6;
  v8 = v6[1];

  return sub_1D6BD3CA4(v1 + v5, v7, v8, a1);
}

id sub_1D6BDA870@<X0>(void *a1@<X8>)
{
  result = [objc_allocWithZone(NETagLinkPresentationSource) initWithTag:*(v1 + 16) image:0];
  *a1 = result;
  return result;
}

uint64_t objectdestroy_11Tm()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

id sub_1D6BDA978@<X0>(Class *a1@<X0>, SEL *a2@<X1>, void *a3@<X8>)
{
  result = [objc_allocWithZone(*a1) *a2];
  *a3 = result;
  return result;
}

uint64_t sub_1D6BDA9C4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1D5B64684;

  return sub_1D6B16CA4(a1, v4, v5, v7, v6);
}

void sub_1D6BDAA84(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    a5(255, a3, a4);
    v6 = sub_1D726393C();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t objectdestroy_27Tm_0()
{
  if (*(v0 + 48))
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 24);
  }

  return swift_deallocObject();
}

uint64_t _s8NewsFeed26SharingActivityItemFactoryC06createdE7Sources5issueSaySo010UIActivityE6Source_pGSo7FCIssueC_tF_0(void *a1)
{
  v2 = sub_1D725A93C();
  MEMORY[0x1EEE9AC00](v2, v3);
  sub_1D5B670D4(0, &qword_1EDF194C0, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D728AF30;
  v5 = type metadata accessor for SharingIssueImageActivityItemSource();
  v6 = objc_allocWithZone(v5);
  v7 = OBJC_IVAR____TtC8NewsFeed35SharingIssueImageActivityItemSource_issueImage;
  *&v6[OBJC_IVAR____TtC8NewsFeed35SharingIssueImageActivityItemSource_issueImage] = 0;
  v8 = [a1 coverImageAssetHandle];
  if (!v8)
  {
    goto LABEL_5;
  }

  v9 = v8;
  v10 = [v8 filePath];
  if (!v10)
  {

LABEL_5:
    v12 = 0;
    goto LABEL_6;
  }

  v11 = v10;
  v12 = [objc_allocWithZone(MEMORY[0x1E69DCAB8]) initWithContentsOfFile_];

LABEL_6:
  v13 = *&v6[v7];
  *&v6[v7] = v12;

  v33.receiver = v6;
  v33.super_class = v5;
  *(v4 + 32) = objc_msgSendSuper2(&v33, sel_init);
  v14 = type metadata accessor for SharingIssueTextActivityItemSource();
  v15 = objc_allocWithZone(v14);
  *&v15[OBJC_IVAR____TtC8NewsFeed34SharingIssueTextActivityItemSource_issue] = a1;
  v16 = a1;
  v17 = [v16 title];
  v18 = sub_1D726207C();
  v20 = v19;

  v21 = &v15[OBJC_IVAR____TtC8NewsFeed34SharingIssueTextActivityItemSource_itemTitle];
  *v21 = v18;
  v21[1] = v20;
  v22 = [v16 coverDate];
  v23 = sub_1D726207C();
  v25 = v24;

  v26 = &v15[OBJC_IVAR____TtC8NewsFeed34SharingIssueTextActivityItemSource_itemCoverDate];
  *v26 = v23;
  v26[1] = v25;
  v32.receiver = v15;
  v32.super_class = v14;
  *(v4 + 40) = objc_msgSendSuper2(&v32, sel_init);
  *(swift_allocObject() + 16) = v16;
  sub_1D5B648E0(&qword_1EDF3BDB0, MEMORY[0x1E69D6420]);
  sub_1D5B54B8C(0, &qword_1EDF1B5B0, MEMORY[0x1E69D6420], MEMORY[0x1E69E62F8]);
  sub_1D5B7667C();
  v27 = v16;
  sub_1D7263B6C();
  sub_1D673FC74();
  swift_allocObject();
  v28 = sub_1D725B7AC();
  objc_allocWithZone(type metadata accessor for SharingIssueURLActivityItemSource());
  v29 = v27;
  v30 = sub_1D68D8434(v29, v28);

  *(v4 + 48) = v30;
  return v4;
}

uint64_t sub_1D6BDAEC4(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4, uint64_t a5)
{
  sub_1D6BDAA84(0, a3, a4, a5, sub_1D5B49474);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

uint64_t objectdestroy_37Tm()
{
  swift_unknownObjectRelease();
  if (*(v0 + 48))
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 24);
  }

  return swift_deallocObject();
}

uint64_t _s8NewsFeed26SharingActivityItemFactoryC06createdE7Sources10puzzleTypeSaySo010UIActivityE6Source_pGSo08FCPuzzleJ9Providing_p_tF_0(uint64_t a1)
{
  v2 = sub_1D725A93C();
  MEMORY[0x1EEE9AC00](v2, v3);
  sub_1D5B54B8C(0, &qword_1EDF1ADB0, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = v22 - v6;
  sub_1D5B670D4(0, &qword_1EDF194C0, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1D728AF30;
  v9 = type metadata accessor for SharingPuzzleTypeImageActivityItemSource();
  v10 = objc_allocWithZone(v9);
  *&v10[OBJC_IVAR____TtC8NewsFeed40SharingPuzzleTypeImageActivityItemSource_image] = 0;
  v24.receiver = v10;
  v24.super_class = v9;
  v11 = objc_msgSendSuper2(&v24, sel_init);
  v12 = sub_1D726294C();
  (*(*(v12 - 8) + 56))(v7, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = v11;
  v13[5] = a1;
  v14 = v11;
  swift_unknownObjectRetain();
  sub_1D6BD1334(0, 0, v7, &unk_1D7333D80, v13);

  *(v8 + 32) = v14;
  v15 = type metadata accessor for SharingPuzzleTypeTextActivityItemSource();
  v16 = objc_allocWithZone(v15);
  v17 = &v16[OBJC_IVAR____TtC8NewsFeed39SharingPuzzleTypeTextActivityItemSource____lazy_storage___defaultText];
  *v17 = 0;
  *(v17 + 1) = 0;
  *&v16[OBJC_IVAR____TtC8NewsFeed39SharingPuzzleTypeTextActivityItemSource_puzzleType] = a1;
  v23.receiver = v16;
  v23.super_class = v15;
  swift_unknownObjectRetain();
  *(v8 + 40) = objc_msgSendSuper2(&v23, sel_init);
  *(swift_allocObject() + 16) = a1;
  v22[1] = MEMORY[0x1E69E7CC0];
  sub_1D5B648E0(&qword_1EDF3BDB0, MEMORY[0x1E69D6420]);
  sub_1D5B54B8C(0, &qword_1EDF1B5B0, MEMORY[0x1E69D6420], MEMORY[0x1E69E62F8]);
  sub_1D5B7667C();
  swift_unknownObjectRetain();
  sub_1D7263B6C();
  sub_1D673FC74();
  swift_allocObject();
  v18 = sub_1D725B7AC();
  objc_allocWithZone(type metadata accessor for SharingPuzzleTypeURLActivityItemSource());
  v19 = swift_unknownObjectRetain();
  v20 = sub_1D6E2F0C4(v19, v18);
  swift_unknownObjectRelease();
  *(v8 + 48) = v20;
  return v8;
}

uint64_t _s8NewsFeed26SharingActivityItemFactoryC06createdE7Sources7channelSaySo010UIActivityE6Source_pGSo18FCChannelProviding_p_tF_0(uint64_t a1)
{
  v2 = sub_1D725A93C();
  MEMORY[0x1EEE9AC00](v2, v3);
  sub_1D5B670D4(0, &qword_1EDF194C0, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D72816D0;
  v5 = type metadata accessor for SharingTagTextActivityItemSource();
  swift_getObjectType();
  v6 = swift_unknownObjectRetain();
  *(v4 + 32) = sub_1D70566C4(v6, v5);
  v7 = type metadata accessor for SharingTagURLActivityItemSource();
  *(swift_allocObject() + 16) = a1;
  sub_1D5B648E0(&qword_1EDF3BDB0, MEMORY[0x1E69D6420]);
  sub_1D5B54B8C(0, &qword_1EDF1B5B0, MEMORY[0x1E69D6420], MEMORY[0x1E69E62F8]);
  sub_1D5B7667C();
  swift_unknownObjectRetain_n();
  sub_1D7263B6C();
  sub_1D673FC74();
  swift_allocObject();
  v8 = sub_1D725B7AC();
  *(v4 + 40) = sub_1D69B989C(a1, v8, v7);
  return v4;
}

uint64_t objectdestroy_62Tm()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

void sub_1D6BDB698(uint64_t a1, unint64_t *a2, void (*a3)(void))
{
  if (!*a2)
  {
    sub_1D725DFEC();
    a3();
    v5 = sub_1D725DB1C();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1D6BDB714(uint64_t a1, unint64_t *a2, void (*a3)(void))
{
  if (!*a2)
  {
    a3();
    v4 = sub_1D725DB1C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t _s8NewsFeed26SharingActivityItemFactoryC06createdE03for4type7tracker10sourceViewSo10UIActivityCSgSo7FCIssueC_AA0c5IssueD0O12AppAnalytics7TrackerCSo6UIViewCSgtF_0(void *a1, char *a2, void *a3)
{
  sub_1D6BDB698(0, &qword_1EDF17150, sub_1D5B8D68C);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  sub_1D6BDB714(0, &qword_1EDF17140, sub_1D5B8D68C);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v11 = sub_1D725E84C();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *a2;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v21 = *(v3 + 24);
    (*(v12 + 104))(v15, *MEMORY[0x1E69D7FC8], v11);
    if (v16)
    {
      v23 = sub_1D725A60C();
      v24 = sub_1D5B648E0(&qword_1EDF3BED0, MEMORY[0x1E698AAC8]);
      v22 = a3;
      v25 = 0u;
      v26 = 0u;
      v27 = 1;
      sub_1D725E36C();
      swift_allocObject();

      sub_1D725E34C();
      v18 = [a1 sourceChannel];
      v19 = qword_1EDF169F8;
      swift_unknownObjectRetain();
      if (v19 != -1)
      {
        swift_once();
      }

      swift_unknownObjectRetain();

      sub_1D726203C();
      LOBYTE(v22) = 0;
      sub_1D5B8D68C();
      sub_1D725DAFC();
      LOBYTE(v22) = 0;
      sub_1D725DFEC();
      sub_1D725DAFC();
      v22 = v18;
      sub_1D725D5DC();
      swift_allocObject();
      sub_1D725D5BC();
      swift_unknownObjectRelease_n();
      v20 = sub_1D725D59C();

      swift_unknownObjectRelease();
    }

    else
    {
      v23 = sub_1D725A60C();
      v24 = sub_1D5B648E0(&qword_1EDF3BED0, MEMORY[0x1E698AAC8]);
      v22 = a3;
      v25 = 0u;
      v26 = 0u;
      v27 = 1;
      sub_1D725E36C();
      swift_allocObject();

      sub_1D725E34C();
      if (!sub_1D611B3F0(a1))
      {
        swift_unknownObjectRelease();

        return 0;
      }

      v20 = sub_1D725D59C();

      swift_unknownObjectRelease();
    }

    return v20;
  }

  return result;
}

uint64_t sub_1D6BDBC60(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  sub_1D6BDAA84(0, a2, a3, a4, sub_1D5B49474);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t dispatch thunk of SharingActivityItemFactoryType.createActivityItem(for:type:tracker:sourceView:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  return (*(a6 + 120))();
}

{
  return (*(a6 + 136))();
}

{
  return (*(a6 + 176))();
}

uint64_t dispatch thunk of SharingActivityItemFactoryType.createActivityItem(for:type:tracker:sourceView:sourceItem:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  return (*(a7 + 128))();
}

{
  return (*(a7 + 152))();
}

{
  return (*(a7 + 160))();
}

{
  return (*(a7 + 168))();
}

uint64_t sub_1D6BDBF04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = a6(0, a3, a4, a5);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

uint64_t sub_1D6BDBF78(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D5B64680;

  return sub_1D6BDA458(a1, v4);
}

uint64_t sub_1D6BDC030(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D5B64680;

  return sub_1D6BDA230(a1, v4);
}

void sub_1D6BDC0E8()
{
  if (!qword_1EDF04390)
  {
    type metadata accessor for CGSize(255);
    type metadata accessor for UIUserInterfaceIdiom(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDF04390);
    }
  }
}

uint64_t sub_1D6BDC158(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1D5B64680;

  return sub_1D70E0CD0(a1, v4, v5, v7, v6);
}

id sub_1D6BDC218@<X0>(Class *a1@<X0>, SEL *a2@<X1>, void *a3@<X8>)
{
  result = [objc_allocWithZone(*a1) *a2];
  *a3 = result;
  return result;
}

uint64_t sub_1D6BDC260(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D5B64680;

  return sub_1D5BD7030(a1, v4);
}

uint64_t sub_1D6BDC318(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D5B64684;

  return sub_1D5BD7030(a1, v4);
}

id sub_1D6BDC3FC(uint64_t a1)
{
  v3 = v2;
  v5 = *v1;
  result = [objc_allocWithZone(MEMORY[0x1E69DC728]) init];
  v60 = *(v5 + 16);
  v61 = result;
  if (!v60)
  {
    return v61;
  }

  v7 = 0;
  v8 = (v5 + 80);
  v58 = v5;
  v59 = a1;
  while (v7 < *(v5 + 16))
  {
    v9 = *(v8 - 5);
    v68 = *(v8 - 6);
    v10 = *(v8 - 4);
    v11 = *(v8 - 3);
    v12 = *(v8 - 2);
    v13 = *(v8 - 1);
    v14 = *v8;
    if (v14 > 2)
    {
      if (v14 == 3)
      {
        v64 = *(v8 - 1);
        v67 = *(v8 - 2);
        sub_1D62B7654(v68, v9, *(v8 - 4), *(v8 - 3), v12, v13, 3u);

        v39 = sub_1D5E02AFC(a1, v68);
        if (v3)
        {

          v51 = v68;
          v52 = v9;
          v53 = v10;
          v54 = v11;
          v56 = v64;
          v55 = v67;
          v57 = 3;
LABEL_27:
          sub_1D62B772C(v51, v52, v53, v54, v55, v56, v57);

          return v61;
        }

        v40 = v39;
        v41 = sub_1D5E02AFC(a1, v9);

        v42 = sub_1D5E02AFC(a1, v10);
        v3 = 0;
        v43 = sub_1D5E02AFC(a1, v11);

        [v61 addQuadCurveToPoint:v40 controlPoint:{v41, v42, v43}];
        result = sub_1D62B772C(v68, v9, v10, v11, v67, v64, 3u);
      }

      else if (v14 == 4)
      {
        v63 = *(v8 - 1);
        v66 = *(v8 - 2);
        sub_1D62B7654(v68, v9, *(v8 - 4), *(v8 - 3), v12, v13, 4u);

        v28 = sub_1D5E02AFC(a1, v68);
        if (v3)
        {

          v51 = v68;
          v52 = v9;
          v53 = v10;
          v54 = v11;
          v56 = v63;
          v55 = v66;
          v57 = 4;
          goto LABEL_27;
        }

        v29 = v28;
        v3 = 0;
        v30 = sub_1D5E02AFC(a1, v9);

        v31 = sub_1D5E02AFC(a1, v10);

        v32 = sub_1D5E02AFC(a1, v11);

        v33 = sub_1D5E02AFC(a1, v66);

        [v61 addArcWithCenter:v63 & 1 radius:v29 startAngle:v30 endAngle:v31 clockwise:{v32, v33}];
        a1 = v59;
        result = sub_1D62B772C(v68, v9, v10, v11, v66, v63, 4u);
      }

      else
      {
        result = [v61 closePath];
      }
    }

    else
    {
      v62 = *(v8 - 1);
      v65 = *(v8 - 2);
      if (!*v8)
      {
        v34 = *(v8 - 5);
        v35 = *(v8 - 3);
        sub_1D62B7654(v68, v34, v10, v35, v12, v13, 0);

        v36 = sub_1D5E02AFC(a1, v68);
        if (v3)
        {

          sub_1D62B772C(v68, v34, v10, v35, v65, v62, 0);
          sub_1D62B772C(v68, v34, v10, v35, v65, v62, 0);
          return v61;
        }

        v37 = v36;
        v3 = 0;
        v38 = sub_1D5E02AFC(a1, v34);
        sub_1D62B772C(v68, v34, v10, v35, v65, v62, 0);
        [v61 moveToPoint_];
        v21 = v68;
        v22 = v34;
        v23 = v10;
        v24 = v35;
        v25 = v65;
        v26 = v62;
        v27 = 0;
LABEL_17:
        result = sub_1D62B772C(v21, v22, v23, v24, v25, v26, v27);
        v5 = v58;
        a1 = v59;
        goto LABEL_4;
      }

      if (v14 == 1)
      {
        v15 = *(v8 - 5);
        v16 = *(v8 - 4);
        v17 = *(v8 - 3);
        sub_1D62B7654(v68, v15, v16, v17, v12, v13, 1u);

        v18 = sub_1D5E02AFC(a1, v68);
        if (v3)
        {

          sub_1D62B772C(v68, v15, v16, v17, v65, v62, 1u);
          sub_1D62B772C(v68, v15, v16, v17, v65, v62, 1u);
          return v61;
        }

        v19 = v18;
        v3 = 0;
        v20 = sub_1D5E02AFC(a1, v15);
        sub_1D62B772C(v68, v15, v16, v17, v65, v62, 1u);
        [v61 addLineToPoint_];
        v21 = v68;
        v22 = v15;
        v23 = v16;
        v24 = v17;
        v25 = v65;
        v26 = v62;
        v27 = 1;
        goto LABEL_17;
      }

      sub_1D62B7654(v68, v9, v10, v11, v12, v13, 2u);

      v44 = sub_1D5E02AFC(a1, v68);
      if (v3)
      {

        v51 = v68;
        v52 = v9;
        v53 = v10;
        v54 = v11;
        v56 = v62;
        v55 = v65;
        v57 = 2;
        goto LABEL_27;
      }

      v45 = v44;
      v46 = sub_1D5E02AFC(a1, v9);

      v47 = sub_1D5E02AFC(a1, v10);
      v48 = sub_1D5E02AFC(a1, v11);

      v49 = sub_1D5E02AFC(a1, v65);
      v3 = 0;
      v50 = sub_1D5E02AFC(a1, v62);

      [v61 addCurveToPoint:v45 controlPoint1:v46 controlPoint2:{v47, v48, v49, v50}];
      result = sub_1D62B772C(v68, v9, v10, v11, v65, v62, 2u);
      a1 = v59;
    }

LABEL_4:
    ++v7;
    v8 += 56;
    if (v60 == v7)
    {
      return v61;
    }
  }

  __break(1u);
  return result;
}

double sub_1D6BDCD34@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  v3 = *(a1 + 8);
  v6 = *(a1 + 16);
  v5 = *(a1 + 24);
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  v9 = *(a1 + 48);
  if (v9 > 2)
  {
    if (v9 == 3)
    {
      v102 = *(a1 + 16);
      v105 = *(a1 + 24);
      v42 = MEMORY[0x1E69E6F90];
      sub_1D6BDF93C(0, &qword_1EC880490, sub_1D5EA74B8, MEMORY[0x1E69E6F90]);
      sub_1D5EA74B8();
      v44 = *(v43 - 8);
      v98 = *(v44 + 72);
      v117 = a2;
      v45 = (*(v44 + 80) + 32) & ~*(v44 + 80);
      v95 = swift_allocObject();
      *(v95 + 16) = xmmword_1D7270C10;
      v92 = v45;
      sub_1D6BDF93C(0, &qword_1EC8803C0, sub_1D5E4F38C, v42);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1D7273AE0;
      v47 = swift_allocObject();
      *(v47 + 16) = xmmword_1D7270C10;

      sub_1D711B070(88, 0xE100000000000000, v4, (v47 + v45));
      v48 = type metadata accessor for FormatInspectionItem(0);
      v49 = *(*(v48 - 8) + 56);
      v49(v47 + v45, 0, 1, v48);

      sub_1D711B070(89, 0xE100000000000000, v3, (v47 + v45 + v98));
      v49(v47 + v45 + v98, 0, 1, v48);
      sub_1D6795150(0x746E696F50, 0xE500000000000000, 0, 0, v47, &v109);
      swift_setDeallocating();
      swift_arrayDestroy();
      swift_deallocClassInstance();
      *(inited + 56) = &type metadata for FormatInspectionGroup;
      *(inited + 64) = &off_1F518B2C0;
      v50 = swift_allocObject();
      *(inited + 32) = v50;
      *(v50 + 48) = v111;
      v51 = v110;
      *(v50 + 16) = v109;
      *(v50 + 32) = v51;
      v52 = sub_1D5F62BFC(inited);
      swift_setDeallocating();
      __swift_destroy_boxed_opaque_existential_1(inited + 32);
      v53 = sub_1D7073500(v52);

      sub_1D711AD20(0x746E696F50, 0xE500000000000000, v53, 0, 0, (v95 + v45));
      v54 = v95 + v45;
      v49(v54, 0, 1, v48);
      v55 = swift_initStackObject();
      *(v55 + 16) = xmmword_1D7273AE0;
      v56 = swift_allocObject();
      *(v56 + 16) = xmmword_1D7270C10;

      sub_1D711B070(88, 0xE100000000000000, v102, (v56 + v92));
      v49(v56 + v92, 0, 1, v48);

      sub_1D711B070(89, 0xE100000000000000, v105, (v56 + v92 + v98));
      v49(v56 + v92 + v98, 0, 1, v48);
      sub_1D6795150(0x746E696F50, 0xE500000000000000, 0, 0, v56, &v112);
      swift_setDeallocating();
      swift_arrayDestroy();
      swift_deallocClassInstance();
      *(v55 + 56) = &type metadata for FormatInspectionGroup;
      *(v55 + 64) = &off_1F518B2C0;
      v57 = swift_allocObject();
      *(v55 + 32) = v57;
      *(v57 + 48) = v114;
      v58 = v113;
      *(v57 + 16) = v112;
      *(v57 + 32) = v58;
      v59 = sub_1D5F62BFC(v55);
      swift_setDeallocating();
      __swift_destroy_boxed_opaque_existential_1(v55 + 32);
      v60 = sub_1D7073500(v59);

      v61 = v60;
      a2 = v117;
      sub_1D711AD20(0x206C6F72746E6F43, 0xED0000746E696F50, v61, 0, 0, (v54 + v98));
      v49(v54 + v98, 0, 1, v48);
      sub_1D6795150(0x7275432064617551, 0xEA00000000006576, 0, 0, v95, v115);
      swift_setDeallocating();
    }

    else
    {
      if (v9 != 4)
      {
        sub_1D6795150(0x65736F6C43, 0xE500000000000000, 0, 0, MEMORY[0x1E69E7CC0], v115);
        goto LABEL_14;
      }

      v101 = *(a1 + 16);
      v104 = *(a1 + 24);
      v94 = *(a1 + 32);
      v97 = *(a1 + 40);
      v17 = MEMORY[0x1E69E6F90];
      sub_1D6BDF93C(0, &qword_1EC880490, sub_1D5EA74B8, MEMORY[0x1E69E6F90]);
      sub_1D5EA74B8();
      v19 = *(*(v18 - 8) + 72);
      v20 = (*(*(v18 - 8) + 80) + 32) & ~*(*(v18 - 8) + 80);
      v100 = swift_allocObject();
      *(v100 + 16) = xmmword_1D7279960;
      v117 = a2;
      v21 = (v100 + v20);
      sub_1D6BDF93C(0, &qword_1EC8803C0, sub_1D5E4F38C, v17);
      v22 = swift_initStackObject();
      *(v22 + 16) = xmmword_1D7273AE0;
      v23 = swift_allocObject();
      *(v23 + 16) = xmmword_1D7270C10;
      v24 = v23 + v20;

      sub_1D711B070(88, 0xE100000000000000, v4, (v23 + v20));
      v25 = type metadata accessor for FormatInspectionItem(0);
      v26 = *(*(v25 - 8) + 56);
      v26(v24, 0, 1, v25);

      sub_1D711B070(89, 0xE100000000000000, v3, (v24 + v19));
      v26(v24 + v19, 0, 1, v25);
      sub_1D6795150(0x746E696F50, 0xE500000000000000, 0, 0, v23, &v112);
      swift_setDeallocating();
      swift_arrayDestroy();
      swift_deallocClassInstance();
      *(v22 + 56) = &type metadata for FormatInspectionGroup;
      *(v22 + 64) = &off_1F518B2C0;
      v27 = swift_allocObject();
      *(v22 + 32) = v27;
      *(v27 + 48) = v114;
      v28 = v113;
      *(v27 + 16) = v112;
      *(v27 + 32) = v28;
      v29 = sub_1D5F62BFC(v22);
      swift_setDeallocating();
      __swift_destroy_boxed_opaque_existential_1(v22 + 32);
      v30 = sub_1D7073500(v29);

      sub_1D711AD20(0x7265746E6543, 0xE600000000000000, v30, 0, 0, v21);
      v26(v21, 0, 1, v25);

      sub_1D711B070(0x737569646152, 0xE600000000000000, v101, &v21[v19]);
      v26(&v21[v19], 0, 1, v25);

      sub_1D711B070(0x6E41207472617453, 0xEB00000000656C67, v104, &v21[2 * v19]);
      v26(&v21[2 * v19], 0, 1, v25);

      sub_1D711B070(0x6C676E4120646E45, 0xE900000000000065, v94, &v21[3 * v19]);
      v26(&v21[3 * v19], 0, 1, v25);
      v31 = &v21[4 * v19];
      v32 = *(v25 + 24);
      v31[v32] = v97 & 1;
      v33 = type metadata accessor for FormatInspectionItem.Value(0);
      swift_storeEnumTagMultiPayload();
      (*(*(v33 - 8) + 56))(&v31[v32], 0, 1, v33);
      *v31 = xmmword_1D7333DB0;
      *(v31 + 2) = 0;
      *(v31 + 3) = 0;
      v34 = &v31[*(v25 + 28)];
      *v34 = 0;
      *(v34 + 1) = 0;
      v34[16] = -1;
      v26(v31, 0, 1, v25);
      sub_1D6795150(6517313, 0xE300000000000000, 0, 0, v100, v115);
      swift_setDeallocating();
      a2 = v117;
    }

    swift_arrayDestroy();
    swift_deallocClassInstance();
  }

  else
  {
    v117 = a2;
    if (!v9)
    {
      sub_1D6BDF93C(0, &qword_1EC880490, sub_1D5EA74B8, MEMORY[0x1E69E6F90]);
      sub_1D5EA74B8();
      v36 = *(*(v35 - 8) + 72);
      v37 = (*(*(v35 - 8) + 80) + 32) & ~*(*(v35 - 8) + 80);
      v38 = swift_allocObject();
      *(v38 + 16) = xmmword_1D7270C10;
      v39 = (v38 + v37);

      sub_1D711B070(88, 0xE100000000000000, v4, v39);
      v40 = type metadata accessor for FormatInspectionItem(0);
      v41 = *(*(v40 - 8) + 56);
      v41(v39, 0, 1, v40);

      sub_1D711B070(89, 0xE100000000000000, v3, &v39[v36]);
      v41(&v39[v36], 0, 1, v40);
      sub_1D6795150(1702260557, 0xE400000000000000, 0, 0, v38, v115);
      swift_setDeallocating();
      a2 = v117;
      swift_arrayDestroy();
      swift_deallocClassInstance();
      goto LABEL_14;
    }

    if (v9 == 1)
    {
      sub_1D6BDF93C(0, &qword_1EC880490, sub_1D5EA74B8, MEMORY[0x1E69E6F90]);
      sub_1D5EA74B8();
      v11 = *(*(v10 - 8) + 72);
      v12 = (*(*(v10 - 8) + 80) + 32) & ~*(*(v10 - 8) + 80);
      v13 = swift_allocObject();
      *(v13 + 16) = xmmword_1D7270C10;
      v14 = (v13 + v12);

      sub_1D711B070(88, 0xE100000000000000, v4, v14);
      v15 = type metadata accessor for FormatInspectionItem(0);
      v16 = *(*(v15 - 8) + 56);
      v16(v14, 0, 1, v15);

      sub_1D711B070(89, 0xE100000000000000, v3, &v14[v11]);
      v16(&v14[v11], 0, 1, v15);
      sub_1D6795150(1701734732, 0xE400000000000000, 0, 0, v13, v115);
      swift_setDeallocating();
      swift_arrayDestroy();
      swift_deallocClassInstance();
      a2 = v117;
LABEL_14:
      a2[3] = &type metadata for FormatInspectionGroup;
      a2[4] = &off_1F518B2C0;
      goto LABEL_15;
    }

    v103 = v6;
    v106 = v5;
    v96 = v8;
    v99 = v7;
    v62 = MEMORY[0x1E69E6F90];
    sub_1D6BDF93C(0, &qword_1EC880490, sub_1D5EA74B8, MEMORY[0x1E69E6F90]);
    sub_1D5EA74B8();
    v64 = *(*(v63 - 8) + 72);
    v65 = (*(*(v63 - 8) + 80) + 32) & ~*(*(v63 - 8) + 80);
    v91 = swift_allocObject();
    *(v91 + 16) = xmmword_1D7279970;
    v93 = v91 + v65;
    sub_1D6BDF93C(0, &qword_1EC8803C0, sub_1D5E4F38C, v62);
    v66 = swift_initStackObject();
    *(v66 + 16) = xmmword_1D7273AE0;
    v67 = swift_allocObject();
    *(v67 + 16) = xmmword_1D7270C10;

    sub_1D711B070(88, 0xE100000000000000, v4, (v67 + v65));
    v68 = type metadata accessor for FormatInspectionItem(0);
    v69 = *(*(v68 - 8) + 56);
    v69(v67 + v65, 0, 1, v68);

    sub_1D711B070(89, 0xE100000000000000, v3, (v67 + v65 + v64));
    v69(v67 + v65 + v64, 0, 1, v68);
    sub_1D6795150(0x746E696F50, 0xE500000000000000, 0, 0, v67, v107);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    *(v66 + 56) = &type metadata for FormatInspectionGroup;
    *(v66 + 64) = &off_1F518B2C0;
    v70 = swift_allocObject();
    *(v66 + 32) = v70;
    *(v70 + 48) = v108;
    v71 = v107[1];
    *(v70 + 16) = v107[0];
    *(v70 + 32) = v71;
    v72 = sub_1D5F62BFC(v66);
    swift_setDeallocating();
    __swift_destroy_boxed_opaque_existential_1(v66 + 32);
    v73 = sub_1D7073500(v72);

    sub_1D711AD20(0x746E696F50, 0xE500000000000000, v73, 0, 0, (v91 + v65));
    v69(v91 + v65, 0, 1, v68);
    v74 = swift_initStackObject();
    *(v74 + 16) = xmmword_1D7273AE0;
    v75 = swift_allocObject();
    *(v75 + 16) = xmmword_1D7270C10;

    sub_1D711B070(88, 0xE100000000000000, v103, (v75 + v65));
    v69(v75 + v65, 0, 1, v68);

    sub_1D711B070(89, 0xE100000000000000, v106, (v75 + v65 + v64));
    v69(v75 + v65 + v64, 0, 1, v68);
    sub_1D6795150(0x746E696F50, 0xE500000000000000, 0, 0, v75, &v109);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    *(v74 + 56) = &type metadata for FormatInspectionGroup;
    *(v74 + 64) = &off_1F518B2C0;
    v76 = swift_allocObject();
    *(v74 + 32) = v76;
    *(v76 + 48) = v111;
    v77 = v110;
    *(v76 + 16) = v109;
    *(v76 + 32) = v77;
    v78 = sub_1D5F62BFC(v74);
    swift_setDeallocating();
    __swift_destroy_boxed_opaque_existential_1(v74 + 32);
    v79 = sub_1D7073500(v78);

    sub_1D711AD20(0x206C6F72746E6F43, 0xEF3120746E696F50, v79, 0, 0, (v91 + v65 + v64));
    v69(v91 + v65 + v64, 0, 1, v68);
    v80 = swift_initStackObject();
    *(v80 + 16) = xmmword_1D7273AE0;
    v81 = 2 * v64;
    v82 = swift_allocObject();
    *(v82 + 16) = xmmword_1D7270C10;
    v83 = (v82 + v65);

    sub_1D711B070(88, 0xE100000000000000, v96, v83);
    v69(v83, 0, 1, v68);

    sub_1D711B070(89, 0xE100000000000000, v99, &v83[v64]);
    v69(&v83[v64], 0, 1, v68);
    sub_1D6795150(0x746E696F50, 0xE500000000000000, 0, 0, v82, &v112);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    *(v80 + 56) = &type metadata for FormatInspectionGroup;
    *(v80 + 64) = &off_1F518B2C0;
    v84 = swift_allocObject();
    *(v80 + 32) = v84;
    *(v84 + 48) = v114;
    v85 = v113;
    *(v84 + 16) = v112;
    *(v84 + 32) = v85;
    v86 = sub_1D5F62BFC(v80);
    swift_setDeallocating();
    __swift_destroy_boxed_opaque_existential_1(v80 + 32);
    v87 = sub_1D7073500(v86);

    sub_1D711AD20(0x206C6F72746E6F43, 0xEF3220746E696F50, v87, 0, 0, (v93 + v81));
    v69(v93 + v81, 0, 1, v68);
    sub_1D6795150(0x6576727543, 0xE500000000000000, 0, 0, v91, v115);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    a2 = v117;
  }

  a2[3] = &type metadata for FormatInspectionGroup;
  a2[4] = &off_1F518B2C0;
LABEL_15:
  v88 = swift_allocObject();
  *a2 = v88;
  result = *v115;
  v90 = v115[1];
  *(v88 + 16) = v115[0];
  *(v88 + 32) = v90;
  *(v88 + 48) = v116;
  return result;
}

uint64_t FormatBezierPathCurveComponent.point.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t FormatBezierPathCurveComponent.controlPoint1.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *(v1 + 16);
  a1[1] = v2;
}

uint64_t FormatBezierPathCurveComponent.controlPoint2.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 40);
  *a1 = *(v1 + 32);
  a1[1] = v2;
}

uint64_t FormatBezierPathQuadCurveComponent.point.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t FormatBezierPathQuadCurveComponent.controlPoint.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *(v1 + 16);
  a1[1] = v2;
}

uint64_t FormatBezierPathArcComponent.center.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

BOOL _s8NewsFeed30FormatBezierPathCurveComponentV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = a1[4];
  v8 = *a2;
  v7 = a2[1];
  v9 = a2[2];
  v10 = a2[3];
  v11 = a2[4];
  v17 = a1[5];
  v18 = a2[5];

  if ((sub_1D633A310(v3, v8) & 1) == 0)
  {
    goto LABEL_8;
  }

  v16 = v11;
  v12 = sub_1D633A310(v2, v7);

  if ((v12 & 1) == 0)
  {
    return 0;
  }

  if ((sub_1D633A310(v4, v9) & 1) == 0)
  {
    goto LABEL_8;
  }

  v13 = sub_1D633A310(v5, v10);

  if ((v13 & 1) == 0)
  {
    return 0;
  }

  if ((sub_1D633A310(v6, v16) & 1) == 0)
  {
LABEL_8:

    return 0;
  }

  v14 = sub_1D633A310(v17, v18);

  return (v14 & 1) != 0;
}

BOOL _s8NewsFeed34FormatBezierPathQuadCurveComponentV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = *a2;
  v7 = a2[1];
  v8 = a2[2];
  v9 = a2[3];

  if ((sub_1D633A310(v2, v6) & 1) == 0)
  {
    goto LABEL_6;
  }

  v10 = sub_1D633A310(v3, v7);

  if ((v10 & 1) == 0)
  {
    return 0;
  }

  if ((sub_1D633A310(v4, v8) & 1) == 0)
  {
LABEL_6:

    return 0;
  }

  v11 = sub_1D633A310(v5, v9);

  return (v11 & 1) != 0;
}

uint64_t _s8NewsFeed28FormatBezierPathArcComponentV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  v16 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = *a2;
  v8 = *(a2 + 8);
  v10 = *(a2 + 16);
  v9 = *(a2 + 24);
  v11 = *(a2 + 32);
  v15 = *(a2 + 40);

  if ((sub_1D633A310(v2, v7) & 1) == 0)
  {

    return 0;
  }

  v14 = v6;
  v12 = sub_1D633A310(v3, v8);

  if ((v12 & 1) == 0 || (sub_1D633A310(v5, v10) & 1) == 0 || (sub_1D633A310(v4, v9) & 1) == 0)
  {
    return 0;
  }

  if (sub_1D633A310(v16, v11))
  {
    return v14 ^ v15 ^ 1u;
  }

  else
  {
    return 0;
  }
}

uint64_t _s8NewsFeed25FormatBezierPathComponentO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  v10 = *a2;
  v9 = *(a2 + 8);
  v12 = *(a2 + 16);
  v11 = *(a2 + 24);
  v14 = *(a2 + 32);
  v13 = *(a2 + 40);
  v15 = *(a2 + 48);
  v53[0] = *a1;
  v53[1] = v2;
  v53[2] = v5;
  v53[3] = v4;
  v53[4] = v6;
  v53[5] = v7;
  v54 = v8;
  v55 = v10;
  v56 = v9;
  v57 = v12;
  v58 = v11;
  v59 = v14;
  v60 = v13;
  v61 = v15;
  if (v8 > 2)
  {
    if (v8 == 3)
    {
      if (v15 != 3)
      {
        goto LABEL_22;
      }

      v47 = v3;
      v48 = v2;
      v49 = v5;
      v50 = v4;
      v41 = v10;
      v42 = v9;
      v43 = v12;
      v44 = v11;
      v22 = v4;
      v29 = v6;
      v34 = v4;
      v39 = v7;
      sub_1D62B7654(v10, v9, v12, v11, v14, v13, 3u);
      sub_1D62B7654(v3, v2, v5, v22, v29, v39, 3u);
      sub_1D62B7654(v3, v2, v5, v34, v29, v39, 3u);
      sub_1D62B7654(v10, v9, v12, v11, v14, v13, 3u);
      v18 = _s8NewsFeed34FormatBezierPathQuadCurveComponentV2eeoiySbAC_ACtFZ_0(&v47, &v41);
      sub_1D6BDF9A0(v53);
      sub_1D62B772C(v10, v9, v12, v11, v14, v13, 3u);
      sub_1D62B772C(v3, v2, v5, v34, v29, v39, 3u);
    }

    else
    {
      if (v8 != 4)
      {
        if (v15 == 5 && !(v9 | v10 | v12 | v11 | v14 | v13))
        {
          sub_1D6BDF9A0(v53);
          v18 = 1;
          return v18 & 1;
        }

        goto LABEL_22;
      }

      if (v15 != 4)
      {
LABEL_22:
        sub_1D62B7654(v3, v2, v5, v4, v6, v7, v8);
        sub_1D62B7654(v10, v9, v12, v11, v14, v13, v15);
        sub_1D6BDF9A0(v53);
        goto LABEL_23;
      }

      v47 = v3;
      v48 = v2;
      v49 = v5;
      v50 = v4;
      v51 = v6;
      LOBYTE(v52) = v7 & 1;
      v41 = v10;
      v42 = v9;
      v43 = v12;
      v44 = v11;
      v45 = v14;
      LOBYTE(v46) = v13 & 1;
      v19 = v4;
      v27 = v6;
      v32 = v4;
      v37 = v7;
      sub_1D62B7654(v10, v9, v12, v11, v14, v13, 4u);
      sub_1D62B7654(v3, v2, v5, v19, v27, v37, 4u);
      sub_1D62B7654(v3, v2, v5, v32, v27, v37, 4u);
      sub_1D62B7654(v10, v9, v12, v11, v14, v13, 4u);
      v18 = _s8NewsFeed28FormatBezierPathArcComponentV2eeoiySbAC_ACtFZ_0(&v47, &v41);
      sub_1D6BDF9A0(v53);
      sub_1D62B772C(v10, v9, v12, v11, v14, v13, 4u);
      sub_1D62B772C(v3, v2, v5, v32, v27, v37, 4u);
    }
  }

  else
  {
    if (v8)
    {
      if (v8 == 1)
      {
        if (v15 == 1)
        {
          v31 = v4;
          v36 = v7;
          v16 = v6;
          sub_1D62B7654(v10, v9, v12, v11, v14, v13, 1u);
          sub_1D62B7654(v3, v2, v5, v31, v16, v36, 1u);
          v25 = v5;
          v26 = v16;
          sub_1D62B7654(v3, v2, v5, v31, v16, v36, 1u);
          sub_1D62B7654(v10, v9, v12, v11, v14, v13, 1u);
          if (sub_1D633A310(v3, v10))
          {
            v17 = sub_1D633A310(v2, v9);
            sub_1D6BDF9A0(v53);
            v18 = 1;
            sub_1D62B772C(v10, v9, v12, v11, v14, v13, 1u);
            sub_1D62B772C(v3, v2, v25, v31, v26, v36, 1u);
            if (v17)
            {
              return v18 & 1;
            }
          }

          else
          {
            sub_1D6BDF9A0(v53);
            sub_1D62B772C(v10, v9, v12, v11, v14, v13, 1u);
            sub_1D62B772C(v3, v2, v5, v31, v16, v36, 1u);
          }

          goto LABEL_23;
        }

        goto LABEL_22;
      }

      if (v15 == 2)
      {
        v47 = v3;
        v48 = v2;
        v49 = v5;
        v50 = v4;
        v51 = v6;
        v52 = v7;
        v41 = v10;
        v42 = v9;
        v43 = v12;
        v44 = v11;
        v45 = v14;
        v46 = v13;
        v23 = v4;
        v30 = v6;
        v35 = v4;
        v40 = v7;
        sub_1D62B7654(v10, v9, v12, v11, v14, v13, 2u);
        sub_1D62B7654(v3, v2, v5, v23, v30, v40, 2u);
        sub_1D62B7654(v3, v2, v5, v35, v30, v40, 2u);
        sub_1D62B7654(v10, v9, v12, v11, v14, v13, 2u);
        v18 = _s8NewsFeed30FormatBezierPathCurveComponentV2eeoiySbAC_ACtFZ_0(&v47, &v41);
        sub_1D6BDF9A0(v53);
        sub_1D62B772C(v10, v9, v12, v11, v14, v13, 2u);
        sub_1D62B772C(v3, v2, v5, v35, v30, v40, 2u);
        return v18 & 1;
      }

      goto LABEL_22;
    }

    if (v15)
    {
      goto LABEL_22;
    }

    v28 = v6;
    v33 = v4;
    v20 = v7;
    sub_1D62B7654(v10, v9, v12, v11, v14, v13, 0);
    sub_1D62B7654(v3, v2, v5, v33, v28, v20, 0);
    v38 = v20;
    sub_1D62B7654(v3, v2, v5, v33, v28, v20, 0);
    sub_1D62B7654(v10, v9, v12, v11, v14, v13, 0);
    if ((sub_1D633A310(v3, v10) & 1) == 0)
    {
      sub_1D6BDF9A0(v53);
      sub_1D62B772C(v10, v9, v12, v11, v14, v13, 0);
      sub_1D62B772C(v3, v2, v5, v33, v28, v20, 0);
      goto LABEL_23;
    }

    v21 = sub_1D633A310(v2, v9);
    sub_1D6BDF9A0(v53);
    sub_1D62B772C(v10, v9, v12, v11, v14, v13, 0);
    sub_1D62B772C(v3, v2, v5, v33, v28, v38, 0);
    if ((v21 & 1) == 0)
    {
LABEL_23:
      v18 = 0;
      return v18 & 1;
    }

    v18 = 1;
  }

  return v18 & 1;
}

unint64_t sub_1D6BDF048(uint64_t a1)
{
  result = sub_1D6BDF070();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6BDF070()
{
  result = qword_1EC893368;
  if (!qword_1EC893368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC893368);
  }

  return result;
}

unint64_t sub_1D6BDF104()
{
  result = qword_1EC893370;
  if (!qword_1EC893370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC893370);
  }

  return result;
}

unint64_t sub_1D6BDF158(uint64_t a1)
{
  result = sub_1D6BDF180();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6BDF180()
{
  result = qword_1EC893378;
  if (!qword_1EC893378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC893378);
  }

  return result;
}

unint64_t sub_1D6BDF214()
{
  result = qword_1EC893380;
  if (!qword_1EC893380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC893380);
  }

  return result;
}

unint64_t sub_1D6BDF268(uint64_t a1)
{
  result = sub_1D6BDF290();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6BDF290()
{
  result = qword_1EC893388;
  if (!qword_1EC893388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC893388);
  }

  return result;
}

unint64_t sub_1D6BDF324()
{
  result = qword_1EC893390;
  if (!qword_1EC893390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC893390);
  }

  return result;
}

unint64_t sub_1D6BDF378(uint64_t a1)
{
  result = sub_1D6BDF3A0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6BDF3A0()
{
  result = qword_1EC893398;
  if (!qword_1EC893398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC893398);
  }

  return result;
}

unint64_t sub_1D6BDF434()
{
  result = qword_1EC8933A0;
  if (!qword_1EC8933A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8933A0);
  }

  return result;
}

unint64_t sub_1D6BDF488(uint64_t a1)
{
  result = sub_1D6BDF4B0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6BDF4B0()
{
  result = qword_1EC8933A8;
  if (!qword_1EC8933A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8933A8);
  }

  return result;
}

uint64_t sub_1D6BDF544(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  a1[1] = a4();
  a1[2] = a5();
  result = a6();
  a1[3] = result;
  return result;
}

unint64_t sub_1D6BDF598()
{
  result = qword_1EC8933B0;
  if (!qword_1EC8933B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8933B0);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_8NewsFeed25FormatBezierPathComponentO(uint64_t a1)
{
  if ((*(a1 + 48) & 7u) <= 4)
  {
    return *(a1 + 48) & 7;
  }

  else
  {
    return (*a1 + 5);
  }
}

uint64_t sub_1D6BDF618(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFB && *(a1 + 49))
  {
    return (*a1 + 251);
  }

  v3 = *(a1 + 48);
  if (v3 <= 5)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1D6BDF660(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFA)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 251;
    if (a3 >= 0xFB)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFB)
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

uint64_t sub_1D6BDF6B4(uint64_t result, unsigned int a2)
{
  if (a2 >= 5)
  {
    *result = a2 - 5;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 40) = 0;
    LOBYTE(a2) = 5;
  }

  *(result + 48) = a2;
  return result;
}

uint64_t sub_1D6BDF70C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 41))
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

uint64_t sub_1D6BDF754(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
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

    *(result + 41) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1D6BDF7B0(uint64_t a1, uint64_t *a2)
{
  if (*a2)
  {
    v2 = *a2;
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC0];
  }

  v3 = *(v2 + 16);
  if (v3)
  {
    v29 = MEMORY[0x1E69E7CC0];

    sub_1D6997338(0, v3, 0);
    v4 = 0;
    v5 = v29;
    v6 = (v2 + 80);
    while (v4 < *(v2 + 16))
    {
      v7 = *(v6 - 5);
      v8 = *(v6 - 4);
      v9 = *(v6 - 3);
      v10 = *(v6 - 2);
      v11 = *(v6 - 1);
      v12 = *v6;
      v20 = *(v6 - 6);
      v21 = v7;
      v22 = v8;
      v23 = v9;
      v24 = v10;
      v25 = v11;
      v26 = v12;
      sub_1D62B7654(v20, v7, v8, v9, v10, v11, v12);
      sub_1D6BDCD34(&v20, v27);
      sub_1D62B772C(v20, v21, v22, v23, v24, v25, v26);
      v29 = v5;
      v14 = *(v5 + 16);
      v13 = *(v5 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_1D6997338((v13 > 1), v14 + 1, 1);
        v5 = v29;
      }

      ++v4;
      *(v5 + 16) = v14 + 1;
      v15 = v5 + 40 * v14;
      v16 = v27[0];
      v17 = v27[1];
      *(v15 + 64) = v28;
      *(v15 + 32) = v16;
      *(v15 + 48) = v17;
      v6 += 56;
      if (v3 == v4)
      {

        goto LABEL_12;
      }
    }

    __break(1u);

    __break(1u);
  }

  else
  {

    v5 = MEMORY[0x1E69E7CC0];
LABEL_12:
    v18 = sub_1D7073500(v5);

    return v18;
  }

  return result;
}

void sub_1D6BDF93C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1D6BDF9A0(uint64_t a1)
{
  sub_1D6BDF9FC();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1D6BDF9FC()
{
  if (!qword_1EC8933B8)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC8933B8);
    }
  }
}

unint64_t sub_1D6BDFA78(uint64_t a1)
{
  result = sub_1D6BDFAA0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6BDFAA0()
{
  result = qword_1EC8933C0;
  if (!qword_1EC8933C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8933C0);
  }

  return result;
}

unint64_t sub_1D6BDFAF4(void *a1)
{
  a1[1] = sub_1D5C67538();
  a1[2] = sub_1D66621E8();
  result = sub_1D6BDFB2C();
  a1[3] = result;
  return result;
}

unint64_t sub_1D6BDFB2C()
{
  result = qword_1EC8933C8;
  if (!qword_1EC8933C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8933C8);
  }

  return result;
}

id SharingIssueTextActivityItemSource.__allocating_init(issue:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR____TtC8NewsFeed34SharingIssueTextActivityItemSource_issue] = a1;
  v4 = a1;
  v5 = [v4 title];
  v6 = sub_1D726207C();
  v8 = v7;

  v9 = &v3[OBJC_IVAR____TtC8NewsFeed34SharingIssueTextActivityItemSource_itemTitle];
  *v9 = v6;
  v9[1] = v8;
  v10 = [v4 coverDate];
  v11 = sub_1D726207C();
  v13 = v12;

  v14 = &v3[OBJC_IVAR____TtC8NewsFeed34SharingIssueTextActivityItemSource_itemCoverDate];
  *v14 = v11;
  v14[1] = v13;
  v17.receiver = v3;
  v17.super_class = v1;
  v15 = objc_msgSendSuper2(&v17, sel_init);

  return v15;
}

id SharingIssueTextActivityItemSource.init(issue:)(void *a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC8NewsFeed34SharingIssueTextActivityItemSource_issue] = a1;
  v4 = a1;
  v5 = [v4 title];
  v6 = sub_1D726207C();
  v8 = v7;

  v9 = &v1[OBJC_IVAR____TtC8NewsFeed34SharingIssueTextActivityItemSource_itemTitle];
  *v9 = v6;
  v9[1] = v8;
  v10 = [v4 coverDate];
  v11 = sub_1D726207C();
  v13 = v12;

  v14 = &v1[OBJC_IVAR____TtC8NewsFeed34SharingIssueTextActivityItemSource_itemCoverDate];
  *v14 = v11;
  v14[1] = v13;
  v17.receiver = v1;
  v17.super_class = ObjectType;
  v15 = objc_msgSendSuper2(&v17, sel_init);

  return v15;
}

uint64_t SharingIssueTextActivityItemSource.activityViewControllerPlaceholderItem(_:)@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC8NewsFeed34SharingIssueTextActivityItemSource_itemTitle);
  v2 = *(v1 + OBJC_IVAR____TtC8NewsFeed34SharingIssueTextActivityItemSource_itemTitle + 8);
  a1[3] = MEMORY[0x1E69E6158];
  *a1 = v3;
  a1[1] = v2;
}

double SharingIssueTextActivityItemSource.activityViewController(_:itemForActivityType:)@<D0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v32[1] = *MEMORY[0x1E69E9840];
  v5 = sub_1D726203C();
  v6 = v5;
  if (a1)
  {
    v7 = sub_1D726207C();
    v9 = v8;
    if (v7 == sub_1D726207C() && v9 == v10)
    {

      goto LABEL_13;
    }

    v12 = sub_1D72646CC();

    if (v12)
    {
LABEL_13:
      v14 = MEMORY[0x1DA6F9430](2, MEMORY[0x1E69E6158], MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
      v15 = *(v2 + OBJC_IVAR____TtC8NewsFeed34SharingIssueTextActivityItemSource_itemTitle);
      v16 = *(v2 + OBJC_IVAR____TtC8NewsFeed34SharingIssueTextActivityItemSource_itemTitle + 8);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v32[0] = v14;
      sub_1D6D76D20(v15, v16, 0x69742D6575737369, 0xEB00000000656C74, isUniquelyReferenced_nonNull_native);
      v18 = [*(v2 + OBJC_IVAR____TtC8NewsFeed34SharingIssueTextActivityItemSource_issue) issueDescription];
      v19 = sub_1D726207C();
      v21 = v20;

      v22 = swift_isUniquelyReferenced_nonNull_native();
      sub_1D6D76D20(v19, v21, 0x75732D6575737369, 0xED00007972616D6DLL, v22);
      v23 = objc_opt_self();
      v24 = sub_1D7261D2C();

      v32[0] = 0;
      v25 = [v23 archivedDataWithRootObject:v24 requiringSecureCoding:1 error:v32];

      v26 = v32[0];
      if (v25)
      {
        v27 = sub_1D725867C();
        v29 = v28;

        *(a2 + 24) = MEMORY[0x1E6969080];
        *a2 = v27;
        *(a2 + 8) = v29;
      }

      else
      {
        v30 = v26;
        v31 = sub_1D725829C();

        swift_willThrow();
        result = 0.0;
        *a2 = 0u;
        *(a2 + 16) = 0u;
      }

      return result;
    }
  }

  else
  {
  }

  sub_1D6BE011C(a1, v2, a2);
  return result;
}

uint64_t sub_1D6BE011C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (!a1)
  {
    goto LABEL_22;
  }

  v4 = a2;
  v5 = sub_1D726207C();
  v7 = v6;
  if (v5 == sub_1D726207C() && v7 == v8)
  {
    goto LABEL_15;
  }

  v10 = sub_1D72646CC();

  if (v10)
  {
LABEL_16:
    *a3 = 0u;
    *(a3 + 16) = 0u;
    return result;
  }

  v12 = sub_1D726207C();
  v14 = v13;
  if (v12 == sub_1D726207C() && v14 == v15)
  {
LABEL_15:

    goto LABEL_16;
  }

  v17 = sub_1D72646CC();

  if (v17)
  {
    goto LABEL_16;
  }

  v18 = sub_1D726207C();
  v20 = v19;
  if (v18 == sub_1D726207C() && v20 == v21)
  {
    goto LABEL_14;
  }

  v22 = sub_1D72646CC();

  if (v22)
  {
    goto LABEL_21;
  }

  v23 = sub_1D726207C();
  v25 = v24;
  if (v23 == sub_1D726207C() && v25 == v26)
  {
LABEL_14:

LABEL_21:
    *(a3 + 24) = MEMORY[0x1E69E6158];
    *a3 = 0;
    *(a3 + 8) = 0xE000000000000000;
    return result;
  }

  v27 = sub_1D72646CC();

  a2 = v4;
  if (v27)
  {
    goto LABEL_21;
  }

LABEL_22:
  v29 = *(a2 + OBJC_IVAR____TtC8NewsFeed34SharingIssueTextActivityItemSource_itemTitle);
  v28 = *(a2 + OBJC_IVAR____TtC8NewsFeed34SharingIssueTextActivityItemSource_itemTitle + 8);
  *(a3 + 24) = MEMORY[0x1E69E6158];
  *a3 = v29;
  *(a3 + 8) = v28;
}

Swift::String __swiftcall SharingIssueTextActivityItemSource.activityViewController(_:dataTypeIdentifierForActivityType:)(UIActivityViewController *_, UIActivityType_optional dataTypeIdentifierForActivityType)
{
  v2 = sub_1D607A9A8(dataTypeIdentifierForActivityType.value);
  result._object = v3;
  result._countAndFlagsBits = v2;
  return result;
}

id SharingIssueTextActivityItemSource.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SharingIssueTextActivityItemSource.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t _s8NewsFeed34SharingIssueTextActivityItemSourceC22activityViewController_010subjectForF4TypeSSSo010UIActivityjK0C_So0oN0aSgtF_0()
{
  v1 = v0;

  v2 = sub_1D726213C();

  MEMORY[0x1DA6F9910](8250, 0xE200000000000000);
  v3 = v1 + OBJC_IVAR____TtC8NewsFeed34SharingIssueTextActivityItemSource_itemCoverDate;
  v4 = *(v1 + OBJC_IVAR____TtC8NewsFeed34SharingIssueTextActivityItemSource_itemCoverDate);
  v5 = *(v3 + 8);

  MEMORY[0x1DA6F9910](v4, v5);

  return v2;
}

uint64_t sub_1D6BE0860(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v2 + 16);
  swift_beginAccess();
  v5 = *(v3 + 16);

  v6 = sub_1D6338B08(v4, v5);

  return v6 & 1;
}

uint64_t sub_1D6BE08F8()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  v2 = *(v1 + 16);
  if (v2)
  {
    v13 = MEMORY[0x1E69E7CC0];

    sub_1D5BFC364(0, v2, 0);
    v3 = 32;
    do
    {
      v4 = *(v1 + v3);
      if (v4 < 0)
      {
        v5 = *((v4 & 0x7FFFFFFFFFFFFFFFLL) + 0x10);
        v7 = *((v4 & 0x7FFFFFFFFFFFFFFFLL) + 0x18);
      }

      else
      {

        v5 = sub_1D6867284();
        v7 = v6;
      }

      v9 = *(v13 + 16);
      v8 = *(v13 + 24);
      if (v9 >= v8 >> 1)
      {
        sub_1D5BFC364((v8 > 1), v9 + 1, 1);
      }

      *(v13 + 16) = v9 + 1;
      v10 = v13 + 16 * v9;
      *(v10 + 32) = v5;
      *(v10 + 40) = v7;
      v3 += 8;
      --v2;
    }

    while (v2);
  }

  sub_1D5BBE0A8();
  sub_1D5BB0AB8();
  v11 = sub_1D7261F3C();

  return v11;
}

id sub_1D6BE0B30()
{
  sub_1D7263D4C();
  MEMORY[0x1DA6F9910](0xD000000000000074, 0x80000001D73EBB50);
  v1 = [*(v0 + OBJC_IVAR____TtC8NewsFeed23LiveActivityEmbedScript_newDatastore) JSONString];
  v2 = sub_1D726207C();
  v4 = v3;

  MEMORY[0x1DA6F9910](v2, v4);

  MEMORY[0x1DA6F9910](0xD000000000000036, 0x80000001D73EBCE0);
  v5 = objc_allocWithZone(MEMORY[0x1E6985358]);
  v6 = sub_1D726203C();

  v7 = [v5 initWithSource:v6 injectionTime:0 forMainFrameOnly:1];

  return v7;
}

uint64_t sub_1D6BE0CD8()
{
  sub_1D7263D4C();
  MEMORY[0x1DA6F9910](0xD000000000000074, 0x80000001D73EBB50);
  v1 = [*(v0 + OBJC_IVAR____TtC8NewsFeed23LiveActivityEmbedScript_newDatastore) JSONString];
  v2 = sub_1D726207C();
  v4 = v3;

  MEMORY[0x1DA6F9910](v2, v4);

  MEMORY[0x1DA6F9910](0xD000000000000104, 0x80000001D73EBBD0);
  return 0;
}

id sub_1D6BE0DF0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LiveActivityEmbedScript();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t FormatTypeDefinition.Case.init(identifier:name:description:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  *a7 = result;
  a7[1] = a2;
  a7[2] = a3;
  a7[3] = a4;
  a7[4] = a5;
  a7[5] = a6;
  return result;
}

uint64_t FormatTypeDefinition.Case.description.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t FormatTypeDefinition.Case.identifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t FormatTypeDefinition.Case.name.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t FormatTypeDefinition.Case.name.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t FormatTypeDefinition.Case.description.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t _s8NewsFeed20FormatTypeDefinitionO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v7 = *(a1 + 32);
  v6 = *(a1 + 40);
  v8 = *(a1 + 48);
  v9 = *a2;
  v10 = *(a2 + 8);
  v11 = *(a2 + 16);
  v12 = *(a2 + 24);
  v14 = *(a2 + 32);
  v13 = *(a2 + 40);
  v15 = *(a2 + 48);
  v53 = v13;
  if (!(v8 >> 6))
  {
    if (v15 >= 0x40)
    {
      goto LABEL_10;
    }

    v43 = *(a1 + 8);
    v44 = *(a1 + 32);
    v38 = *(a1 + 24);
    v20 = *(a2 + 40);
    v39 = *(a1 + 16);
    v21 = *a1;
    v22 = *(a2 + 16);
    v23 = *a2;
    v41 = sub_1D633BDBC(v2, v9);
    sub_1D618EC0C(v23, v10, v22, v12, v14, v20, v15);
    sub_1D618EC0C(v21, v43, v39, v38, v44, v6, v8);
    sub_1D60CF6F4(v21, v43, v39, v38, v44, v6, v8);
    v24 = v23;
    v25 = v10;
    v27 = v14;
    v26 = v22;
    v28 = v12;
    v29 = v53;
    v30 = v15;
LABEL_9:
    sub_1D60CF6F4(v24, v25, v26, v28, v27, v29, v30);
    return v41 & 1;
  }

  if (v8 >> 6 != 1)
  {
    if ((v15 & 0xC0) != 0x80)
    {
      goto LABEL_10;
    }

    v47 = *(a2 + 32);
    v49 = *(a2 + 16);
    v45 = *(a2 + 24);
    v31 = *a1;
    v32 = *a2;
    v51 = *a2;
    sub_1D618EC0C(v9, v10, v11, v45, v47, v13, v15);
    sub_1D618EC0C(v31, v3, v4, v5, v7, v6, v8);
    sub_1D618EC0C(v32, v10, v49, v45, v47, v53, v15);
    sub_1D618EC0C(v31, v3, v4, v5, v7, v6, v8);
    v41 = sub_1D633C994(v31, v51);
    sub_1D60CF6F4(v31, v3, v4, v5, v7, v6, v8);
    sub_1D60CF6F4(v51, v10, v49, v45, v47, v53, v15);
    sub_1D60CF6F4(v51, v10, v49, v45, v47, v53, v15);
    v28 = v5;
    v24 = v31;
    v25 = v3;
    v27 = v7;
    v26 = v4;
    v29 = v6;
    v30 = v8;
    goto LABEL_9;
  }

  if ((v15 & 0xC0) != 0x40)
  {
LABEL_10:
    v40 = *(a2 + 8);
    v34 = *(a2 + 16);
    v42 = *(a2 + 48);
    v35 = *(a1 + 48);
    v36 = *a1;
    v52 = *a2;
    sub_1D618EC0C(v9, v40, v11, v12, v14, v13, v42);
    sub_1D618EC0C(v36, v3, v4, v5, v7, v6, v35);
    sub_1D60CF6F4(v36, v3, v4, v5, v7, v6, v35);
    sub_1D60CF6F4(v52, v40, v34, v12, v14, v53, v42);
    v19 = 0;
    return v19 & 1;
  }

  v56[0] = *a1;
  v56[1] = v3;
  v56[2] = v4;
  v56[3] = v5;
  v56[4] = v7;
  v56[5] = v6;
  v37 = v6;
  v57 = v8 & 1;
  v54[0] = v9;
  v54[1] = v10;
  v54[2] = v11;
  v54[3] = v12;
  v54[4] = v14;
  v54[5] = v13;
  v55 = v15 & 1;
  v46 = v14;
  v48 = v11;
  v16 = v14;
  v17 = v2;
  v18 = v9;
  v50 = v9;
  sub_1D618EC0C(v9, v10, v11, v12, v16, v13, v15);
  sub_1D618EC0C(v17, v3, v4, v5, v7, v37, v8);
  sub_1D618EC0C(v18, v10, v48, v12, v46, v53, v15);
  sub_1D618EC0C(v17, v3, v4, v5, v7, v37, v8);
  v19 = _s8NewsFeed28FormatStateMachineDefinitionV2eeoiySbAC_ACtFZ_0(v56, v54);
  sub_1D60CF6F4(v17, v3, v4, v5, v7, v37, v8);
  sub_1D60CF6F4(v50, v10, v48, v12, v46, v53, v15);
  sub_1D60CF6F4(v50, v10, v48, v12, v46, v53, v15);
  sub_1D60CF6F4(v17, v3, v4, v5, v7, v37, v8);
  return v19 & 1;
}

unint64_t sub_1D6BE1500(uint64_t a1)
{
  result = sub_1D6BE1528();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6BE1528()
{
  result = qword_1EC893470;
  if (!qword_1EC893470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC893470);
  }

  return result;
}

unint64_t sub_1D6BE15BC()
{
  result = qword_1EC893478;
  if (!qword_1EC893478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC893478);
  }

  return result;
}

unint64_t sub_1D6BE1610(uint64_t a1)
{
  result = sub_1D6BE1638();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6BE1638()
{
  result = qword_1EC893480;
  if (!qword_1EC893480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC893480);
  }

  return result;
}

unint64_t sub_1D6BE16CC()
{
  result = qword_1EC893488;
  if (!qword_1EC893488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC893488);
  }

  return result;
}

unint64_t sub_1D6BE1720(uint64_t a1)
{
  result = sub_1D6BE1748();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6BE1748()
{
  result = qword_1EC893490;
  if (!qword_1EC893490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC893490);
  }

  return result;
}

uint64_t sub_1D6BE17DC(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  a1[1] = a4();
  a1[2] = a5();
  result = a6();
  a1[3] = result;
  return result;
}

unint64_t sub_1D6BE1830()
{
  result = qword_1EC893498;
  if (!qword_1EC893498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC893498);
  }

  return result;
}

uint64_t TagAutomation.identifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t TagAutomation.init(tag:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [a1 identifier];
  v5 = sub_1D726207C();
  v7 = v6;

  *a2 = v5;
  *(a2 + 8) = v7;
  v8 = [a1 asChannel];
  result = swift_unknownObjectRelease();
  if (v8)
  {
    result = swift_unknownObjectRelease();
  }

  *(a2 + 16) = v8 != 0;
  return result;
}

NewsFeed::TagAutomation::TagType_optional __swiftcall TagAutomation.TagType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D72641CC();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t TagAutomation.TagType.rawValue.getter()
{
  if (*v0)
  {
    return 0x6C656E6E616863;
  }

  else
  {
    return 0x6369706F74;
  }
}

uint64_t sub_1D6BE1A5C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x6C656E6E616863;
  }

  else
  {
    v3 = 0x6369706F74;
  }

  if (v2)
  {
    v4 = 0xE500000000000000;
  }

  else
  {
    v4 = 0xE700000000000000;
  }

  if (*a2)
  {
    v5 = 0x6C656E6E616863;
  }

  else
  {
    v5 = 0x6369706F74;
  }

  if (*a2)
  {
    v6 = 0xE700000000000000;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1D72646CC();
  }

  return v8 & 1;
}

uint64_t sub_1D6BE1B00()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D6BE1B80()
{
  sub_1D72621EC();
}

uint64_t sub_1D6BE1BEC()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D6BE1C68@<X0>(char *a1@<X8>)
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

void sub_1D6BE1CC8(uint64_t *a1@<X8>)
{
  v2 = 0x6369706F74;
  if (*v1)
  {
    v2 = 0x6C656E6E616863;
  }

  v3 = 0xE500000000000000;
  if (*v1)
  {
    v3 = 0xE700000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1D6BE1DB4()
{
  if (*v0)
  {
    return 0x65707954676174;
  }

  else
  {
    return 0x696669746E656469;
  }
}

uint64_t sub_1D6BE1DF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v6 || (sub_1D72646CC() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x65707954676174 && a2 == 0xE700000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1D72646CC();

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

uint64_t sub_1D6BE1ED8(uint64_t a1)
{
  v2 = sub_1D6BE20F0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6BE1F14(uint64_t a1)
{
  v2 = sub_1D6BE20F0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t TagAutomation.encode(to:)(void *a1)
{
  sub_1D6BE239C(0, &qword_1EC8934A0, MEMORY[0x1E69E6F58]);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v14 - v7;
  v15 = *(v1 + 16);
  v9 = a1[3];
  v10 = a1;
  v12 = v11;
  __swift_project_boxed_opaque_existential_1(v10, v9);
  sub_1D6BE20F0();
  sub_1D7264B5C();
  v18 = 0;
  sub_1D72643FC();
  if (!v2)
  {
    v17 = v15;
    v16 = 1;
    sub_1D6BE2144();
    sub_1D726443C();
  }

  return (*(v5 + 8))(v8, v12);
}

unint64_t sub_1D6BE20F0()
{
  result = qword_1EC8934A8;
  if (!qword_1EC8934A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8934A8);
  }

  return result;
}

unint64_t sub_1D6BE2144()
{
  result = qword_1EC8934B0;
  if (!qword_1EC8934B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8934B0);
  }

  return result;
}

uint64_t TagAutomation.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1D6BE239C(0, &qword_1EC8934B8, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v17 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6BE20F0();
  sub_1D7264B0C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v20 = 0;
  v11 = sub_1D72642BC();
  v13 = v12;
  v14 = v11;
  v18 = 1;
  sub_1D6BE2400();
  sub_1D726431C();
  (*(v7 + 8))(v10, v6);
  v15 = v19;
  *a2 = v14;
  *(a2 + 8) = v13;
  *(a2 + 16) = v15;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_1D6BE239C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D6BE20F0();
    v7 = a3(a1, &type metadata for TagAutomation.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1D6BE2400()
{
  result = qword_1EC8934C0;
  if (!qword_1EC8934C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8934C0);
  }

  return result;
}

unint64_t sub_1D6BE2458()
{
  result = qword_1EC8934C8;
  if (!qword_1EC8934C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8934C8);
  }

  return result;
}

unint64_t sub_1D6BE24B0()
{
  result = qword_1EDF11C80;
  if (!qword_1EDF11C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF11C80);
  }

  return result;
}

unint64_t sub_1D6BE2508()
{
  result = qword_1EDF11C88;
  if (!qword_1EDF11C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF11C88);
  }

  return result;
}

unint64_t sub_1D6BE25D0()
{
  result = qword_1EC8934D0;
  if (!qword_1EC8934D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8934D0);
  }

  return result;
}

unint64_t sub_1D6BE2628()
{
  result = qword_1EC8934D8;
  if (!qword_1EC8934D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8934D8);
  }

  return result;
}

unint64_t sub_1D6BE2680()
{
  result = qword_1EC8934E0;
  if (!qword_1EC8934E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8934E0);
  }

  return result;
}

unint64_t sub_1D6BE26D4()
{
  result = qword_1EC8934E8;
  if (!qword_1EC8934E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8934E8);
  }

  return result;
}

uint64_t FormatFile.packageVersion.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for FormatFile();
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for FormatPackage();
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5DF6830(v2, v7);
  if (swift_getEnumCaseMultiPayload() == 5)
  {
    sub_1D6BE3564(v7, v11, type metadata accessor for FormatPackage);
    v12 = *(v8 + 96);
    v13 = sub_1D725BD1C();
    v14 = *(v13 - 8);
    (*(v14 + 16))(a1, &v11[v12], v13);
    sub_1D6BE50A0(v11, type metadata accessor for FormatPackage);
    return (*(v14 + 56))(a1, 0, 1, v13);
  }

  else
  {
    sub_1D6BE50A0(v7, type metadata accessor for FormatFile);
    v16 = sub_1D725BD1C();
    return (*(*(v16 - 8) + 56))(a1, 1, 1, v16);
  }
}

uint64_t sub_1D6BE292C@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for FormatFile();
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5DF6830(v2, v7);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v28 = *(v7 + 5);
      v48 = *(v7 + 4);
      v49[0] = v28;
      *(v49 + 11) = *(v7 + 91);
      v29 = *(v7 + 1);
      v44 = *v7;
      v45 = v29;
      v30 = *(v7 + 3);
      v46 = *(v7 + 2);
      v47 = v30;
      if (!swift_dynamicCast())
      {
        goto LABEL_30;
      }

      sub_1D5B7C390(v43, a1);
      v38 = v48;
      v39[0] = v49[0];
      *(v39 + 11) = *(v49 + 11);
      v35[0] = v44;
      v35[1] = v45;
      v36 = v46;
      v37 = v47;
      return sub_1D6687720(v35);
    case 2u:
      v21 = *(v7 + 7);
      v49[1] = *(v7 + 6);
      v49[2] = v21;
      v50 = *(v7 + 8);
      v22 = *(v7 + 3);
      v46 = *(v7 + 2);
      v47 = v22;
      v23 = *(v7 + 5);
      v48 = *(v7 + 4);
      v49[0] = v23;
      v24 = *(v7 + 1);
      v44 = *v7;
      v45 = v24;
      if (!swift_dynamicCast())
      {
        goto LABEL_30;
      }

      sub_1D5B7C390(v43, a1);
      v39[1] = v49[1];
      v39[2] = v49[2];
      v40 = v50;
      v36 = v46;
      v37 = v47;
      v38 = v48;
      v39[0] = v49[0];
      v35[0] = v44;
      v35[1] = v45;
      return sub_1D5D68304(v35);
    case 3u:
      v25 = *(v7 + 5);
      v48 = *(v7 + 4);
      v49[0] = v25;
      v49[1] = *(v7 + 6);
      *(&v49[1] + 9) = *(v7 + 105);
      v26 = *(v7 + 1);
      v44 = *v7;
      v45 = v26;
      v27 = *(v7 + 3);
      v46 = *(v7 + 2);
      v47 = v27;
      if (!swift_dynamicCast())
      {
        goto LABEL_30;
      }

      sub_1D5B7C390(v43, a1);
      v38 = v48;
      v39[0] = v49[0];
      v39[1] = v49[1];
      *(&v39[1] + 9) = *(&v49[1] + 9);
      v35[0] = v44;
      v35[1] = v45;
      v36 = v46;
      v37 = v47;
      return sub_1D66876CC(v35);
    case 4u:
      v9 = *(v7 + 1);
      v10 = *(v7 + 6);
      *&v44 = *v7;
      *(&v44 + 1) = v9;
      v11 = *(v7 + 2);
      v45 = *(v7 + 1);
      v46 = v11;
      *&v47 = v10;
      if (!swift_dynamicCast())
      {
        goto LABEL_30;
      }

      sub_1D5B7C390(v35, a1);

    case 5u:
      type metadata accessor for FormatPackage();
      if (!swift_dynamicCast())
      {
        goto LABEL_30;
      }

      sub_1D5B7C390(&v44, a1);
      v8 = type metadata accessor for FormatPackage;
      return sub_1D6BE50A0(v7, v8);
    case 6u:
      *&v35[0] = *v7;
      *(v35 + 8) = *(v7 + 8);
      if (!swift_dynamicCast())
      {
        goto LABEL_30;
      }

      sub_1D5B7C390(&v44, a1);

    case 7u:
      *&v35[0] = *v7;
      type metadata accessor for FormatSnippet();
      if (!swift_dynamicCast())
      {
        goto LABEL_30;
      }

      sub_1D5B7C390(&v44, a1);

    case 8u:
      v33 = *(v7 + 3);
      v46 = *(v7 + 2);
      v47 = v33;
      *&v48 = *(v7 + 8);
      v34 = *(v7 + 1);
      v44 = *v7;
      v45 = v34;
      if (!swift_dynamicCast())
      {
        goto LABEL_30;
      }

      sub_1D5B7C390(v43, a1);
      v36 = v46;
      v37 = v47;
      *&v38 = v48;
      v35[0] = v44;
      v35[1] = v45;
      return sub_1D6687624(v35);
    case 9u:
      v18 = *(v7 + 5);
      v48 = *(v7 + 4);
      v49[0] = v18;
      *(v49 + 9) = *(v7 + 89);
      v19 = *(v7 + 1);
      v44 = *v7;
      v45 = v19;
      v20 = *(v7 + 3);
      v46 = *(v7 + 2);
      v47 = v20;
      if (!swift_dynamicCast())
      {
        goto LABEL_30;
      }

      sub_1D5B7C390(v43, a1);
      v38 = v48;
      v39[0] = v49[0];
      *(v39 + 9) = *(v49 + 9);
      v35[0] = v44;
      v35[1] = v45;
      v36 = v46;
      v37 = v47;
      return sub_1D62E2300(v35);
    case 0xAu:
      v31 = *(v7 + 3);
      v46 = *(v7 + 2);
      v47 = v31;
      v48 = *(v7 + 4);
      LOBYTE(v49[0]) = v7[80];
      v32 = *(v7 + 1);
      v44 = *v7;
      v45 = v32;
      if (!swift_dynamicCast())
      {
        goto LABEL_30;
      }

      sub_1D5B7C390(v43, a1);
      v36 = v46;
      v37 = v47;
      v38 = v48;
      LOBYTE(v39[0]) = v49[0];
      v35[0] = v44;
      v35[1] = v45;
      return sub_1D62B7D78(v35);
    case 0xBu:
      type metadata accessor for FormatBindingContent();
      if (!swift_dynamicCast())
      {
        goto LABEL_30;
      }

      sub_1D5B7C390(&v44, a1);
      v8 = type metadata accessor for FormatBindingContent;
      return sub_1D6BE50A0(v7, v8);
    case 0xCu:
      v13 = *(v7 + 9);
      v50 = *(v7 + 8);
      v51 = v13;
      v52[0] = *(v7 + 10);
      *(v52 + 15) = *(v7 + 175);
      v14 = *(v7 + 5);
      v48 = *(v7 + 4);
      v49[0] = v14;
      v15 = *(v7 + 7);
      v49[1] = *(v7 + 6);
      v49[2] = v15;
      v16 = *(v7 + 1);
      v44 = *v7;
      v45 = v16;
      v17 = *(v7 + 3);
      v46 = *(v7 + 2);
      v47 = v17;
      if (!swift_dynamicCast())
      {
        goto LABEL_30;
      }

      sub_1D5B7C390(v43, a1);
      v40 = v50;
      v41 = v51;
      v42[0] = v52[0];
      *(v42 + 15) = *(v52 + 15);
      v38 = v48;
      v39[0] = v49[0];
      v39[1] = v49[1];
      v39[2] = v49[2];
      v35[0] = v44;
      v35[1] = v45;
      v36 = v46;
      v37 = v47;
      return sub_1D5ECF21C(v35);
    default:
      type metadata accessor for FormatContent(0);
      if (swift_dynamicCast())
      {
        sub_1D5B7C390(&v44, a1);
        v8 = type metadata accessor for FormatContent;
        return sub_1D6BE50A0(v7, v8);
      }

      else
      {
LABEL_30:
        result = sub_1D72646BC();
        __break(1u);
      }

      return result;
  }
}

uint64_t FormatFile.filename.getter()
{
  sub_1D7263D4C();
  v0 = FormatFile.identifier.getter();

  MEMORY[0x1DA6F9910](0x656966696E696D2DLL, 0xEE006E6F736A2E64);
  return v0;
}

uint64_t FormatFile.identifier.getter()
{
  v1 = type metadata accessor for FormatBindingContent();
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v4 = (&v44 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for FormatPackage();
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = (&v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = type metadata accessor for FormatContent(0);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = (&v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = type metadata accessor for FormatFile();
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5DF6830(v0, v16);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v17 = *v16;
      v34 = *(v16 + 52) | (v16[106] << 16);
      v35 = *(v16 + 12);

      sub_1D62B6F70(v35, v34);
      return v17;
    case 2u:
      v24 = *(v16 + 7);
      *v50 = *(v16 + 6);
      *&v50[16] = v24;
      v51 = *(v16 + 8);
      v25 = *(v16 + 1);
      v44 = *v16;
      v26 = *(v16 + 2);
      v27 = *(v16 + 3);
      v45 = v25;
      v46 = v26;
      v28 = *(v16 + 4);
      v49 = *(v16 + 5);
      v47 = v27;
      v48 = v28;
      v17 = v44;

      sub_1D5D68304(&v44);
      return v17;
    case 3u:
      v29 = *(v16 + 5);
      v48 = *(v16 + 4);
      v49 = v29;
      *v50 = *(v16 + 6);
      *&v50[9] = *(v16 + 105);
      v30 = *(v16 + 1);
      v44 = *v16;
      v31 = *(v16 + 2);
      v32 = *(v16 + 3);
      v45 = v30;
      v46 = v31;
      v47 = v32;
      v17 = v44;

      sub_1D66876CC(&v44);
      return v17;
    case 4u:
      v17 = *v16;
      goto LABEL_15;
    case 5u:
      sub_1D6BE3564(v16, v8, type metadata accessor for FormatPackage);
      v17 = *v8;

      sub_1D6BE50A0(v8, type metadata accessor for FormatPackage);
      return v17;
    case 6u:
      v17 = *v16;
      goto LABEL_16;
    case 7u:
      v33 = *v16;
      swift_beginAccess();
      v17 = *(v33 + 16);

      return v17;
    case 8u:
      v17 = *v16;

LABEL_15:

LABEL_16:

      break;
    case 9u:
      v17 = *v16;

      break;
    case 0xAu:
      v17 = *v16;
      v36 = *(v16 + 4);
      v37 = *(v16 + 5);
      v38 = *(v16 + 6);
      v39 = *(v16 + 7);
      v40 = *(v16 + 8);
      v41 = *(v16 + 9);
      v42 = v16[80];

      sub_1D60CF6F4(v36, v37, v38, v39, v40, v41, v42);
      break;
    case 0xBu:
      sub_1D6BE3564(v16, v4, type metadata accessor for FormatBindingContent);
      v17 = *v4;

      sub_1D6BE50A0(v4, type metadata accessor for FormatBindingContent);
      break;
    case 0xCu:
      v18 = *(v16 + 9);
      v51 = *(v16 + 8);
      v52 = v18;
      v53[0] = *(v16 + 10);
      *(v53 + 15) = *(v16 + 175);
      v19 = *(v16 + 5);
      v48 = *(v16 + 4);
      v49 = v19;
      v20 = *(v16 + 7);
      *v50 = *(v16 + 6);
      *&v50[16] = v20;
      v21 = *(v16 + 1);
      v44 = *v16;
      v22 = *(v16 + 2);
      v23 = *(v16 + 3);
      v45 = v21;
      v46 = v22;
      v47 = v23;
      v17 = v44;

      sub_1D5ECF21C(&v44);
      break;
    default:
      sub_1D6BE3564(v16, v12, type metadata accessor for FormatContent);
      v17 = *v12;

      sub_1D6BE50A0(v12, type metadata accessor for FormatContent);
      break;
  }

  return v17;
}
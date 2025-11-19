uint64_t ArticleViewEvent.issueViewContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ArticleViewEvent(0) + 100);
  sub_217C6F060(0, &qword_2811C85E0, sub_217AD0A50, sub_217AD0AA4);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ArticleViewEvent.issueViewContextData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ArticleViewEvent(0) + 100);
  sub_217C6F060(0, &qword_2811C85E0, sub_217AD0A50, sub_217AD0AA4);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ArticleViewEvent.engagementData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ArticleViewEvent(0) + 104);
  sub_217C6F060(0, &qword_2811C8730, sub_217C6D770, sub_217C6D7C4);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

unint64_t sub_217C6D770()
{
  result = qword_2811C70B0;
  if (!qword_2811C70B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C70B0);
  }

  return result;
}

unint64_t sub_217C6D7C4()
{
  result = qword_2811C70B8;
  if (!qword_2811C70B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C70B8);
  }

  return result;
}

uint64_t ArticleViewEvent.engagementData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ArticleViewEvent(0) + 104);
  sub_217C6F060(0, &qword_2811C8730, sub_217C6D770, sub_217C6D7C4);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ArticleViewEvent.articleExposureContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ArticleViewEvent(0) + 108);
  sub_217C6F060(0, &qword_2811C8570, sub_217AE2CA8, sub_217AE2CFC);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ArticleViewEvent.articleExposureContextData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ArticleViewEvent(0) + 108);
  sub_217C6F060(0, &qword_2811C8570, sub_217AE2CA8, sub_217AE2CFC);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ArticleViewEvent.widgetEngagementData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ArticleViewEvent(0) + 112);
  sub_217C6F060(0, &qword_2811C85C0, sub_217BBB5F8, sub_217BBB650);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ArticleViewEvent.widgetEngagementData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ArticleViewEvent(0) + 112);
  sub_217C6F060(0, &qword_2811C85C0, sub_217BBB5F8, sub_217BBB650);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ArticleViewEvent.referringArticleData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ArticleViewEvent(0) + 116);
  sub_217C6F060(0, &qword_2811C85D0, sub_217A5D8AC, sub_217A5D95C);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ArticleViewEvent.referringArticleData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ArticleViewEvent(0) + 116);
  sub_217C6F060(0, &qword_2811C85D0, sub_217A5D8AC, sub_217A5D95C);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ArticleViewEvent.searchData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ArticleViewEvent(0) + 120);
  sub_217C6F060(0, &qword_2811C8810, sub_217B23D2C, sub_217B23A38);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ArticleViewEvent.searchData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ArticleViewEvent(0) + 120);
  sub_217C6F060(0, &qword_2811C8810, sub_217B23D2C, sub_217B23A38);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ArticleViewEvent.purchaseOffersData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ArticleViewEvent(0) + 124);
  sub_217C6F060(0, &qword_2811C8640, sub_217BDDE2C, sub_217BDDE84);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ArticleViewEvent.purchaseOffersData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ArticleViewEvent(0) + 124);
  sub_217C6F060(0, &qword_2811C8640, sub_217BDDE2C, sub_217BDDE84);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ArticleViewEvent.stateRestoreData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ArticleViewEvent(0) + 128);
  sub_217C6F060(0, &qword_2811C8858, sub_217C6E238, sub_217C6E28C);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

unint64_t sub_217C6E238()
{
  result = qword_2811C2C38;
  if (!qword_2811C2C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C2C38);
  }

  return result;
}

unint64_t sub_217C6E28C()
{
  result = qword_2811C2C40;
  if (!qword_2811C2C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C2C40);
  }

  return result;
}

uint64_t ArticleViewEvent.stateRestoreData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ArticleViewEvent(0) + 128);
  sub_217C6F060(0, &qword_2811C8858, sub_217C6E238, sub_217C6E28C);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ArticleViewEvent.searchResponseData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ArticleViewEvent(0) + 132);
  sub_217C6F060(0, &qword_2811C8638, sub_217B2BA2C, sub_217B2BA84);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ArticleViewEvent.searchResponseData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ArticleViewEvent(0) + 132);
  sub_217C6F060(0, &qword_2811C8638, sub_217B2BA2C, sub_217B2BA84);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ArticleViewEvent.placementData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ArticleViewEvent(0) + 136);
  sub_217C6F060(0, &qword_2811C85D8, sub_217AFEC48, sub_217AFEC9C);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ArticleViewEvent.placementData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ArticleViewEvent(0) + 136);
  sub_217C6F060(0, &qword_2811C85D8, sub_217AFEC48, sub_217AFEC9C);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ArticleViewEvent.shareOriginationData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ArticleViewEvent(0) + 140);
  sub_217C6F060(0, &qword_2811C85C8, sub_217C46A64, sub_217C46AB8);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ArticleViewEvent.shareOriginationData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ArticleViewEvent(0) + 140);
  sub_217C6F060(0, &qword_2811C85C8, sub_217C46A64, sub_217C46AB8);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ArticleViewEvent.experimentalScoreData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ArticleViewEvent(0) + 144);
  sub_217C6F060(0, &qword_2811C84B0, sub_217B86EE4, sub_217B86F3C);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ArticleViewEvent.experimentalScoreData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ArticleViewEvent(0) + 144);
  sub_217C6F060(0, &qword_2811C84B0, sub_217B86EE4, sub_217B86F3C);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ArticleViewEvent.textSizeData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ArticleViewEvent(0) + 148);
  sub_217C6F060(0, &qword_2811C8630, sub_217B34774, sub_217B347CC);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ArticleViewEvent.textSizeData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ArticleViewEvent(0) + 148);
  sub_217C6F060(0, &qword_2811C8630, sub_217B34774, sub_217B347CC);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ArticleViewEvent.referringRecipeData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ArticleViewEvent(0) + 152);
  sub_217C6F060(0, &qword_2811C8820, sub_217B1F038, sub_217B1F08C);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ArticleViewEvent.referringRecipeData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ArticleViewEvent(0) + 152);
  sub_217C6F060(0, &qword_2811C8820, sub_217B1F038, sub_217B1F08C);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ArticleViewEvent.recipeListData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ArticleViewEvent(0) + 156);
  sub_217C6F060(0, &qword_2811C8718, sub_217BB19F8, sub_217BB1A50);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ArticleViewEvent.recipeListData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ArticleViewEvent(0) + 156);
  sub_217C6F060(0, &qword_2811C8718, sub_217BB19F8, sub_217BB1A50);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ArticleViewEvent.experimentationData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ArticleViewEvent(0) + 160);
  sub_217C6F060(0, &qword_2811C8620, sub_217B36858, sub_217B368B0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void sub_217C6F060(uint64_t a1, unint64_t *a2, void (*a3)(void), void (*a4)(void))
{
  if (!*a2)
  {
    a3();
    a4();
    v6 = sub_217D8829C();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t ArticleViewEvent.experimentationData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ArticleViewEvent(0) + 160);
  sub_217C6F060(0, &qword_2811C8620, sub_217B36858, sub_217B368B0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ArticleViewEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_217A6018C();
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for ArticleViewEvent(0);
  v5 = v4[5];
  v6 = *MEMORY[0x277CEACF0];
  sub_217C6F060(0, &qword_2811C8500, sub_217AF343C, sub_217AF3490);
  (*(*(v7 - 8) + 104))(a1 + v5, v6, v7);
  v8 = v4[6];
  sub_217A608E0();
  (*(*(v9 - 8) + 104))(a1 + v8, v2, v9);
  v10 = v4[7];
  sub_217C6F060(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C);
  (*(*(v11 - 8) + 104))(a1 + v10, v2, v11);
  v12 = v4[8];
  sub_217C6F060(0, &qword_2811C86C8, sub_217AD76BC, sub_217AD7710);
  (*(*(v13 - 8) + 104))(a1 + v12, v6, v13);
  v14 = v4[9];
  sub_217C6F060(0, &qword_2811C8608, sub_217B4FFA8, sub_217B4FFFC);
  (*(*(v15 - 8) + 104))(a1 + v14, v6, v15);
  v16 = v4[10];
  sub_217C6F060(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
  (*(*(v17 - 8) + 104))(a1 + v16, v6, v17);
  v18 = v4[11];
  sub_217C6F060(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4);
  (*(*(v19 - 8) + 104))(a1 + v18, v6, v19);
  v20 = v4[12];
  sub_217C6F060(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
  (*(*(v21 - 8) + 104))(a1 + v20, v2, v21);
  v22 = v4[13];
  sub_217C6F060(0, &qword_2811C87D0, sub_217ACF8E0, sub_217ACF934);
  (*(*(v23 - 8) + 104))(a1 + v22, v2, v23);
  v24 = v4[14];
  sub_217C6F060(0, &qword_2811C85A0, sub_217ACFB38, sub_217ACFB8C);
  (*(*(v25 - 8) + 104))(a1 + v24, v2, v25);
  v26 = v4[15];
  sub_217C6F060(0, &qword_2811C86E8, sub_217A4CF30, sub_217A4CF88);
  (*(*(v27 - 8) + 104))(a1 + v26, v2, v27);
  v28 = v4[16];
  sub_217C6F060(0, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94);
  (*(*(v29 - 8) + 104))(a1 + v28, v6, v29);
  v30 = v4[17];
  sub_217C6F060(0, &qword_2811C8760, sub_217AD0198, sub_217AD01EC);
  (*(*(v31 - 8) + 104))(a1 + v30, v6, v31);
  v32 = v4[18];
  sub_217C6F060(0, &qword_2811C8598, sub_217AD03F0, sub_217AD0444);
  (*(*(v33 - 8) + 104))(a1 + v32, v6, v33);
  v34 = v4[19];
  sub_217C6F060(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  (*(*(v35 - 8) + 104))(a1 + v34, v2, v35);
  v36 = v4[20];
  sub_217C6F060(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C);
  (*(*(v37 - 8) + 104))(a1 + v36, v2, v37);
  v38 = v4[21];
  sub_217C6F060(0, &qword_2811C8788, sub_217ACDC58, sub_217ACDCB0);
  (*(*(v39 - 8) + 104))(a1 + v38, v6, v39);
  v40 = v4[22];
  sub_217C6F060(0, &qword_2811C87D8, sub_217B1DE94, sub_217B1DEE8);
  (*(*(v41 - 8) + 104))(a1 + v40, v6, v41);
  v42 = v4[23];
  sub_217C6F060(0, &qword_2811C87A8, sub_217A66A84, sub_217A66ADC);
  (*(*(v43 - 8) + 104))(a1 + v42, v6, v43);
  v44 = v4[24];
  sub_217C6F060(0, &qword_2811C86B8, sub_217B9C22C, sub_217B9C280);
  (*(*(v45 - 8) + 104))(a1 + v44, v6, v45);
  v46 = v4[25];
  sub_217C6F060(0, &qword_2811C85E0, sub_217AD0A50, sub_217AD0AA4);
  (*(*(v47 - 8) + 104))(a1 + v46, v6, v47);
  v48 = v4[26];
  sub_217C6F060(0, &qword_2811C8730, sub_217C6D770, sub_217C6D7C4);
  (*(*(v49 - 8) + 104))(a1 + v48, v6, v49);
  v50 = v4[27];
  sub_217C6F060(0, &qword_2811C8570, sub_217AE2CA8, sub_217AE2CFC);
  (*(*(v51 - 8) + 104))(a1 + v50, v6, v51);
  v52 = v4[28];
  sub_217C6F060(0, &qword_2811C85C0, sub_217BBB5F8, sub_217BBB650);
  (*(*(v53 - 8) + 104))(a1 + v52, v6, v53);
  v54 = v4[29];
  sub_217C6F060(0, &qword_2811C85D0, sub_217A5D8AC, sub_217A5D95C);
  (*(*(v55 - 8) + 104))(a1 + v54, v6, v55);
  v56 = v4[30];
  sub_217C6F060(0, &qword_2811C8810, sub_217B23D2C, sub_217B23A38);
  (*(*(v57 - 8) + 104))(a1 + v56, v6, v57);
  v58 = v4[31];
  sub_217C6F060(0, &qword_2811C8640, sub_217BDDE2C, sub_217BDDE84);
  (*(*(v59 - 8) + 104))(a1 + v58, v6, v59);
  v60 = v4[32];
  sub_217C6F060(0, &qword_2811C8858, sub_217C6E238, sub_217C6E28C);
  (*(*(v61 - 8) + 104))(a1 + v60, v6, v61);
  v62 = v4[33];
  sub_217C6F060(0, &qword_2811C8638, sub_217B2BA2C, sub_217B2BA84);
  (*(*(v63 - 8) + 104))(a1 + v62, v6, v63);
  v64 = v4[34];
  sub_217C6F060(0, &qword_2811C85D8, sub_217AFEC48, sub_217AFEC9C);
  (*(*(v65 - 8) + 104))(a1 + v64, v6, v65);
  v66 = v4[35];
  sub_217C6F060(0, &qword_2811C85C8, sub_217C46A64, sub_217C46AB8);
  (*(*(v67 - 8) + 104))(a1 + v66, v6, v67);
  v68 = v4[36];
  sub_217C6F060(0, &qword_2811C84B0, sub_217B86EE4, sub_217B86F3C);
  (*(*(v69 - 8) + 104))(a1 + v68, v6, v69);
  v70 = v4[37];
  sub_217C6F060(0, &qword_2811C8630, sub_217B34774, sub_217B347CC);
  (*(*(v71 - 8) + 104))(a1 + v70, v2, v71);
  v72 = v4[38];
  sub_217C6F060(0, &qword_2811C8820, sub_217B1F038, sub_217B1F08C);
  (*(*(v73 - 8) + 104))(a1 + v72, v6, v73);
  v74 = v4[39];
  sub_217C6F060(0, &qword_2811C8718, sub_217BB19F8, sub_217BB1A50);
  (*(*(v75 - 8) + 104))(a1 + v74, v6, v75);
  v76 = v4[40];
  sub_217C6F060(0, &qword_2811C8620, sub_217B36858, sub_217B368B0);
  v78 = *(*(v77 - 8) + 104);

  return v78(a1 + v76, v6, v77);
}

uint64_t ArticleViewEvent.Model.adData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ArticleViewEvent.Model(0) + 20);
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  *a1 = *v3;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = *(v3 + 32);

  return sub_217AE39D0(v4, v5);
}

uint64_t sub_217C703B8@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a1(0) + 24);
  v7 = a2(0);
  v8 = *(*(v7 - 8) + 16);

  return v8(a3, v3 + v6, v7);
}

uint64_t ArticleViewEvent.Model.articleData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ArticleViewEvent.Model(0) + 28);
  v4 = *(v3 + 80);
  v5 = *(v3 + 112);
  v22 = *(v3 + 96);
  v23[0] = v5;
  v6 = *(v3 + 16);
  v7 = *(v3 + 48);
  v18 = *(v3 + 32);
  v8 = v18;
  v19 = v7;
  v9 = *(v3 + 48);
  v10 = *(v3 + 80);
  v20 = *(v3 + 64);
  v11 = v20;
  v21 = v10;
  v12 = *(v3 + 16);
  v17[0] = *v3;
  v13 = v17[0];
  v17[1] = v12;
  v14 = *(v3 + 112);
  *(a1 + 96) = v22;
  *(a1 + 112) = v14;
  *(a1 + 32) = v8;
  *(a1 + 48) = v9;
  *(a1 + 64) = v11;
  *(a1 + 80) = v4;
  *(v23 + 15) = *(v3 + 127);
  *(a1 + 127) = *(v3 + 127);
  *a1 = v13;
  *(a1 + 16) = v6;
  return sub_217AD1630(v17, v16);
}

uint64_t ArticleViewEvent.Model.feedPositionData.getter@<X0>(uint64_t a1@<X8>)
{
  result = type metadata accessor for ArticleViewEvent.Model(0);
  v4 = (v1 + *(result + 32));
  v5 = *v4;
  LOBYTE(v4) = *(v4 + 4);
  *a1 = v5;
  *(a1 + 4) = v4;
  return result;
}

uint64_t ArticleViewEvent.Model.inGroupPositionData.getter@<X0>(uint64_t a1@<X8>)
{
  result = type metadata accessor for ArticleViewEvent.Model(0);
  v4 = (v1 + *(result + 36));
  v5 = *v4;
  LOBYTE(v4) = *(v4 + 4);
  *a1 = v5;
  *(a1 + 4) = v4;
  return result;
}

uint64_t ArticleViewEvent.Model.feedData.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for ArticleViewEvent.Model(0) + 40));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;

  return sub_217AD1A68(v4, v5, v6);
}

uint64_t ArticleViewEvent.Model.groupData.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for ArticleViewEvent.Model(0) + 44));
  v4 = v3[5];
  v5 = v3[7];
  v22 = v3[6];
  v23 = v5;
  v6 = v3[7];
  v24 = v3[8];
  v7 = v3[1];
  v8 = v3[3];
  v18 = v3[2];
  v9 = v18;
  v19 = v8;
  v10 = v3[3];
  v11 = v3[5];
  v20 = v3[4];
  v12 = v20;
  v21 = v11;
  v13 = v3[1];
  v17[0] = *v3;
  v14 = v17[0];
  v17[1] = v13;
  a1[6] = v22;
  a1[7] = v6;
  a1[8] = v3[8];
  a1[2] = v9;
  a1[3] = v10;
  a1[4] = v12;
  a1[5] = v4;
  *a1 = v14;
  a1[1] = v7;
  return sub_217AE38AC(v17, &v16, &qword_2811BD178);
}

uint64_t ArticleViewEvent.Model.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for ArticleViewEvent.Model(0) + 48));
  v5 = *v3;
  v4 = v3[1];
  LOWORD(v3) = *(v3 + 8);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v3;
}

uint64_t ArticleViewEvent.Model.articleScienceData.getter@<X0>(void *a1@<X8>)
{
  v3 = *(type metadata accessor for ArticleViewEvent.Model(0) + 52);
  memcpy(__dst, (v1 + v3), 0x111uLL);
  memcpy(a1, (v1 + v3), 0x111uLL);
  return sub_217AD1744(__dst, &v5);
}

uint64_t ArticleViewEvent.Model.userChannelContextData.getter@<X0>(uint64_t a1@<X8>)
{
  result = type metadata accessor for ArticleViewEvent.Model(0);
  v4 = (v1 + *(result + 56));
  v5 = *v4;
  v6 = v4[1];
  LOWORD(v4) = *(v4 + 1);
  *a1 = v5;
  *(a1 + 1) = v6;
  *(a1 + 2) = v4;
  return result;
}

uint64_t ArticleViewEvent.Model.orientationData.getter@<X0>(_WORD *a1@<X8>)
{
  result = type metadata accessor for ArticleViewEvent.Model(0);
  *a1 = *(v1 + *(result + 60));
  return result;
}

uint64_t ArticleViewEvent.Model.issueData.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for ArticleViewEvent.Model(0) + 64));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v7;
  return sub_217AE39D0(v4, v5);
}

uint64_t ArticleViewEvent.Model.issueViewData.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for ArticleViewEvent.Model(0) + 68));
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;
}

uint64_t ArticleViewEvent.Model.issueExposureContextData.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for ArticleViewEvent.Model(0) + 72));
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;
}

uint64_t ArticleViewEvent.Model.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ArticleViewEvent.Model(0) + 76);
  v4 = *(v3 + 16);
  v8[0] = *v3;
  v8[1] = v4;
  v9 = *(v3 + 32);
  v5 = v9;
  LOBYTE(v3) = *(v3 + 48);
  v10 = v3;
  *a1 = v8[0];
  *(a1 + 16) = v4;
  *(a1 + 32) = v5;
  *(a1 + 48) = v3;
  return sub_217ACC004(v8, v7);
}

uint64_t ArticleViewEvent.Model.channelData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ArticleViewEvent.Model(0) + 80);
  v4 = *(v3 + 8);
  v5 = *(v3 + 16);
  v6 = *(v3 + 17);
  v7 = *(v3 + 24);
  v8 = *(v3 + 32);
  *a1 = *v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 17) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v8;
}

uint64_t ArticleViewEvent.Model.referralData.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for ArticleViewEvent.Model(0) + 84));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  v8 = v3[4];
  v9 = v3[5];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v7;
  a1[4] = v8;
  a1[5] = v9;
  return sub_217B1563C(v4, v5);
}

uint64_t ArticleViewEvent.Model.paywallData.getter@<X0>(_WORD *a1@<X8>)
{
  result = type metadata accessor for ArticleViewEvent.Model(0);
  *a1 = *(v1 + *(result + 88));
  return result;
}

uint64_t ArticleViewEvent.Model.campaignData.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for ArticleViewEvent.Model(0) + 92));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  v8 = v3[4];
  v9 = v3[5];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v7;
  a1[4] = v8;
  a1[5] = v9;
  return sub_217B1563C(v4, v5);
}

uint64_t ArticleViewEvent.Model.notificationData.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for ArticleViewEvent.Model(0) + 96));
  v4 = v3[3];
  v12 = v3[2];
  v13 = v4;
  v6 = v3[5];
  v14 = v3[4];
  v5 = v14;
  v15 = v6;
  v8 = v3[1];
  v11[0] = *v3;
  v7 = v11[0];
  v11[1] = v8;
  a1[2] = v12;
  a1[3] = v4;
  a1[4] = v5;
  a1[5] = v6;
  *a1 = v7;
  a1[1] = v8;
  return sub_217AE38AC(v11, &v10, &qword_2811C4F30);
}

uint64_t ArticleViewEvent.Model.issueViewContextData.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for ArticleViewEvent.Model(0);
  *a1 = *(v1 + *(result + 100));
  return result;
}

uint64_t ArticleViewEvent.Model.engagementData.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for ArticleViewEvent.Model(0);
  *a1 = *(v1 + *(result + 104));
  return result;
}

uint64_t ArticleViewEvent.Model.articleExposureContextData.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for ArticleViewEvent.Model(0) + 108));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  v8 = v3[4];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v7;
  a1[4] = v8;

  return sub_217AE3AE8(v4, v5);
}

uint64_t ArticleViewEvent.Model.widgetEngagementData.getter@<X0>(void *a1@<X8>)
{
  v3 = *(type metadata accessor for ArticleViewEvent.Model(0) + 112);
  memcpy(__dst, (v1 + v3), sizeof(__dst));
  memcpy(a1, (v1 + v3), 0x1C8uLL);
  return sub_217AE38AC(__dst, &v5, &qword_2811C1A08);
}

uint64_t ArticleViewEvent.Model.referringArticleData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ArticleViewEvent.Model(0) + 116);
  v4 = *(v3 + 24);
  *a1 = *v3;
  *(a1 + 8) = *(v3 + 8);
  *(a1 + 24) = v4;
}

uint64_t ArticleViewEvent.Model.searchData.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for ArticleViewEvent.Model(0) + 120));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v7;

  return sub_217C70C5C(v4, v5);
}

uint64_t sub_217C70C5C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t ArticleViewEvent.Model.purchaseOffersData.getter@<X0>(void *a1@<X8>)
{
  *a1 = *(v1 + *(type metadata accessor for ArticleViewEvent.Model(0) + 124));
}

uint64_t ArticleViewEvent.Model.stateRestoreData.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for ArticleViewEvent.Model(0);
  *a1 = *(v1 + *(result + 128));
  return result;
}

uint64_t ArticleViewEvent.Model.searchResponseData.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for ArticleViewEvent.Model(0);
  *a1 = *(v1 + *(result + 132));
  return result;
}

uint64_t ArticleViewEvent.Model.placementData.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for ArticleViewEvent.Model(0) + 136));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  v8 = v3[4];
  v9 = v3[5];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v7;
  a1[4] = v8;
  a1[5] = v9;
  return sub_217B1563C(v4, v5);
}

uint64_t ArticleViewEvent.Model.shareOriginationData.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for ArticleViewEvent.Model(0);
  *a1 = *(v1 + *(result + 140));
  return result;
}

uint64_t ArticleViewEvent.Model.experimentalScoreData.getter@<X0>(uint64_t a1@<X8>)
{
  result = type metadata accessor for ArticleViewEvent.Model(0);
  v4 = (v1 + *(result + 144));
  v5 = *v4;
  LOBYTE(v4) = *(v4 + 8);
  *a1 = v5;
  *(a1 + 8) = v4;
  return result;
}

uint64_t ArticleViewEvent.Model.textSizeData.getter@<X0>(_WORD *a1@<X8>)
{
  result = type metadata accessor for ArticleViewEvent.Model(0);
  *a1 = *(v1 + *(result + 148));
  return result;
}

uint64_t ArticleViewEvent.Model.referringRecipeData.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for ArticleViewEvent.Model(0) + 152));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  v8 = v3[4];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v7;
  a1[4] = v8;

  return sub_217AD86BC(v4, v5);
}

uint64_t ArticleViewEvent.Model.recipeListData.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + *(type metadata accessor for ArticleViewEvent.Model(0) + 156));
  *a1 = v3;

  return sub_217AF77A0(v3);
}

uint64_t ArticleViewEvent.Model.experimentationData.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for ArticleViewEvent.Model(0) + 160));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v7;
  return sub_217AE39D0(v4, v5);
}

__n128 ArticleViewEvent.Model.init(eventData:adData:timedData:articleData:feedPositionData:inGroupPositionData:feedData:groupData:viewData:articleScienceData:userChannelContextData:orientationData:issueData:issueViewData:issueExposureContextData:userBundleSubscriptionContextData:channelData:referralData:paywallData:campaignData:notificationData:issueViewContextData:engagementData:articleExposureContextData:widgetEngagementData:referringArticleData:searchData:purchaseOffersData:stateRestoreData:searchResponseData:placementData:shareOriginationData:experimentalScoreData:textSizeData:referringRecipeData:recipeListData:experimentationData:)@<Q0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int *a5@<X4>, int *a6@<X5>, __int128 *a7@<X6>, _OWORD *a8@<X7>, uint64_t a9@<X8>, uint64_t *a10, const void *a11, char *a12, __int16 *a13, __int128 *a14, uint64_t *a15, uint64_t *a16, uint64_t a17, uint64_t *a18, __int128 *a19, __int16 *a20, __int128 *a21, _OWORD *a22, char *a23, char *a24, __int128 *a25, const void *a26, __int128 *a27, __int128 *a28, uint64_t *a29, char *a30, char *a31, __int128 *a32, char *a33, uint64_t *a34, __int16 *a35, __int128 *a36, uint64_t *a37, __n128 *a38)
{
  v90 = *a5;
  v89 = *(a5 + 4);
  v92 = *(a6 + 4);
  v93 = *a6;
  v97 = *a7;
  v96 = *(a7 + 2);
  v105 = *a10;
  v104 = a10[1];
  v103 = *(a10 + 8);
  v109 = *a12;
  v108 = a12[1];
  v107 = *(a12 + 1);
  v110 = *a13;
  v111 = a15[1];
  v112 = *a15;
  v114 = a16[1];
  v115 = *a16;
  v125 = *a18;
  v124 = a18[1];
  v123 = *(a18 + 16);
  v122 = *(a18 + 17);
  v120 = a18[4];
  v121 = a18[3];
  v127 = *a20;
  v134 = *a23;
  v135 = *a24;
  v139 = *a27;
  v138 = *(a27 + 2);
  v137 = *(a27 + 24);
  v142 = *a29;
  v140 = *a31;
  v141 = *a30;
  v145 = *(a34 + 8);
  v143 = *a33;
  v144 = *a35;
  v146 = *a34;
  v147 = *a37;
  v83 = *(a2 + 32);
  v98 = *(a19 + 5);
  v99 = *(a19 + 4);
  v101 = *(a21 + 5);
  v102 = *(a21 + 4);
  v118 = *(a25 + 4);
  v130 = *(a32 + 5);
  v131 = *(a32 + 4);
  v136 = *(a36 + 4);
  v40 = sub_217D8899C();
  v132 = a38[1];
  v133 = *a38;
  v129 = *a36;
  v128 = a36[1];
  v126 = *a32;
  v119 = a32[1];
  v117 = *a28;
  v113 = a28[1];
  v106 = *a25;
  v100 = a25[1];
  v95 = *a21;
  v91 = a21[1];
  v87 = a19[1];
  v88 = *a19;
  v84 = a14[1];
  v85 = *a14;
  v80 = *a2;
  v82 = a2[1];
  (*(*(v40 - 8) + 32))(a9, a1, v40);
  v41 = type metadata accessor for ArticleViewEvent.Model(0);
  v42 = a9 + v41[5];
  *v42 = v80;
  *(v42 + 16) = v82;
  *(v42 + 32) = v83;
  v43 = v41[6];
  v44 = sub_217D889CC();
  (*(*(v44 - 8) + 32))(a9 + v43, a3, v44);
  v45 = a9 + v41[7];
  v46 = *(a4 + 48);
  *(v45 + 32) = *(a4 + 32);
  *(v45 + 48) = v46;
  v47 = *(a4 + 16);
  *v45 = *a4;
  *(v45 + 16) = v47;
  *(v45 + 127) = *(a4 + 127);
  v48 = *(a4 + 112);
  *(v45 + 96) = *(a4 + 96);
  *(v45 + 112) = v48;
  v49 = *(a4 + 80);
  *(v45 + 64) = *(a4 + 64);
  *(v45 + 80) = v49;
  v50 = a9 + v41[8];
  *v50 = v90;
  *(v50 + 4) = v89;
  v51 = a9 + v41[9];
  *v51 = v93;
  *(v51 + 4) = v92;
  v52 = a9 + v41[10];
  *v52 = v97;
  *(v52 + 16) = v96;
  v53 = (a9 + v41[11]);
  v54 = a8[7];
  v53[6] = a8[6];
  v53[7] = v54;
  v53[8] = a8[8];
  v55 = a8[3];
  v53[2] = a8[2];
  v53[3] = v55;
  v56 = a8[5];
  v53[4] = a8[4];
  v53[5] = v56;
  v57 = a8[1];
  *v53 = *a8;
  v53[1] = v57;
  v58 = a9 + v41[12];
  *v58 = v105;
  *(v58 + 8) = v104;
  *(v58 + 16) = v103;
  memcpy((a9 + v41[13]), a11, 0x111uLL);
  v59 = a9 + v41[14];
  *v59 = v109;
  *(v59 + 1) = v108;
  *(v59 + 2) = v107;
  *(a9 + v41[15]) = v110;
  v60 = (a9 + v41[16]);
  *v60 = v85;
  v60[1] = v84;
  v61 = (a9 + v41[17]);
  *v61 = v112;
  v61[1] = v111;
  v62 = (a9 + v41[18]);
  *v62 = v115;
  v62[1] = v114;
  v63 = a9 + v41[19];
  v64 = *(a17 + 16);
  *v63 = *a17;
  *(v63 + 16) = v64;
  *(v63 + 32) = *(a17 + 32);
  *(v63 + 48) = *(a17 + 48);
  v65 = a9 + v41[20];
  *v65 = v125;
  *(v65 + 8) = v124;
  *(v65 + 16) = v123;
  *(v65 + 17) = v122;
  *(v65 + 24) = v121;
  *(v65 + 32) = v120;
  v66 = a9 + v41[21];
  *v66 = v88;
  *(v66 + 16) = v87;
  *(v66 + 32) = v99;
  *(v66 + 40) = v98;
  *(a9 + v41[22]) = v127;
  v67 = a9 + v41[23];
  *v67 = v95;
  *(v67 + 16) = v91;
  *(v67 + 32) = v102;
  *(v67 + 40) = v101;
  v68 = (a9 + v41[24]);
  v69 = a22[1];
  *v68 = *a22;
  v68[1] = v69;
  v70 = a22[5];
  v68[4] = a22[4];
  v68[5] = v70;
  v71 = a22[3];
  v68[2] = a22[2];
  v68[3] = v71;
  *(a9 + v41[25]) = v134;
  *(a9 + v41[26]) = v135;
  v72 = a9 + v41[27];
  *v72 = v106;
  *(v72 + 16) = v100;
  *(v72 + 32) = v118;
  memcpy((a9 + v41[28]), a26, 0x1C8uLL);
  v73 = a9 + v41[29];
  *v73 = v139;
  *(v73 + 16) = v138;
  *(v73 + 24) = v137;
  v74 = (a9 + v41[30]);
  *v74 = v117;
  v74[1] = v113;
  *(a9 + v41[31]) = v142;
  *(a9 + v41[32]) = v141;
  *(a9 + v41[33]) = v140;
  v75 = a9 + v41[34];
  *v75 = v126;
  *(v75 + 16) = v119;
  *(v75 + 32) = v131;
  *(v75 + 40) = v130;
  *(a9 + v41[35]) = v143;
  v76 = a9 + v41[36];
  *v76 = v146;
  *(v76 + 8) = v145;
  *(a9 + v41[37]) = v144;
  v77 = a9 + v41[38];
  *v77 = v129;
  *(v77 + 16) = v128;
  *(v77 + 32) = v136;
  *(a9 + v41[39]) = v147;
  v78 = (a9 + v41[40]);
  result = v133;
  *v78 = v133;
  v78[1] = v132;
  return result;
}

uint64_t sub_217C7155C(char a1)
{
  result = 0x746144746E657665;
  switch(a1)
  {
    case 1:
      return 0x617461446461;
    case 2:
      return 0x74614464656D6974;
    case 3:
      return 0x44656C6369747261;
    case 4:
    case 20:
    case 28:
      return 0xD000000000000010;
    case 5:
    case 34:
    case 36:
      return 0xD000000000000013;
    case 6:
      v4 = 1684366694;
      return v4 | 0x6174614400000000;
    case 7:
      return 0x74614470756F7267;
    case 8:
      v4 = 2003134838;
      return v4 | 0x6174614400000000;
    case 9:
    case 27:
    case 29:
      return 0xD000000000000012;
    case 10:
      return 0xD000000000000016;
    case 11:
      return 0x7461746E6569726FLL;
    case 12:
      return 0x7461446575737369;
    case 13:
      return 0x6569566575737369;
    case 14:
      return 0xD000000000000018;
    case 15:
      return 0xD000000000000021;
    case 16:
      v3 = 0x656E6E616863;
      goto LABEL_23;
    case 17:
      return 0x6C61727265666572;
    case 18:
      v3 = 0x6C6177796170;
LABEL_23:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x446C000000000000;
      break;
    case 19:
      result = 0x6E676961706D6163;
      break;
    case 21:
      result = 0xD000000000000014;
      break;
    case 22:
      result = 0x656D656761676E65;
      break;
    case 23:
      result = 0xD00000000000001ALL;
      break;
    case 24:
      result = 0xD000000000000014;
      break;
    case 25:
      result = 0xD000000000000014;
      break;
    case 26:
      result = 0x6144686372616573;
      break;
    case 30:
      result = 0x6E656D6563616C70;
      break;
    case 31:
      result = 0xD000000000000014;
      break;
    case 32:
      result = 0xD000000000000015;
      break;
    case 33:
      result = 0x657A695374786574;
      break;
    case 35:
      result = 0x694C657069636572;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_217C71920@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_217C75AA0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_217C71954(uint64_t a1)
{
  v2 = sub_217C72DF8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217C71990(uint64_t a1)
{
  v2 = sub_217C72DF8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ArticleViewEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_217C74A78(0, &qword_27CBA2FA8, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v120 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217C72DF8();
  sub_217D89E7C();
  LOBYTE(v128[0]) = 0;
  sub_217D8899C();
  sub_217A60258(&unk_2811C8410, MEMORY[0x277CEAEB0]);
  sub_217D89CAC();
  if (!v2)
  {
    v12 = type metadata accessor for ArticleViewEvent.Model(0);
    v13 = v3 + v12[5];
    v14 = *(v13 + 8);
    v15 = *(v13 + 16);
    v16 = *(v13 + 24);
    v17 = *(v13 + 32);
    v128[0] = *v13;
    v128[1] = v14;
    v128[2] = v15;
    v128[3] = v16;
    LOBYTE(v128[4]) = v17;
    v127[0] = 1;
    sub_217AE39D0(v128[0], v14);
    sub_217AF3490();
    sub_217D89C3C();
    sub_217AE4AA0(v128[0], v128[1]);
    v18 = v12[6];
    v214 = 2;
    sub_217D889CC();
    sub_217A60258(&qword_2811C83F8, MEMORY[0x277CEAED0]);
    sub_217D89CAC();
    v19 = v3 + v12[7];
    v20 = *(v19 + 80);
    v21 = *(v19 + 112);
    v212 = *(v19 + 96);
    *v213 = v21;
    v22 = *(v19 + 16);
    v23 = *(v19 + 48);
    v208 = *(v19 + 32);
    v209 = v23;
    v24 = *(v19 + 48);
    v25 = *(v19 + 80);
    v210 = *(v19 + 64);
    v211 = v25;
    v26 = *(v19 + 16);
    v207[0] = *v19;
    v207[1] = v26;
    v27 = *(v19 + 112);
    v205 = v212;
    v206[0] = v27;
    v201 = v208;
    v202 = v24;
    v204 = v20;
    v203 = v210;
    *&v213[15] = *(v19 + 127);
    *(v206 + 15) = *(v19 + 127);
    v200 = v22;
    v199 = v207[0];
    v198 = 3;
    sub_217AD1630(v207, v128);
    sub_217ACF52C();
    sub_217D89CAC();
    v196[6] = v205;
    *v197 = v206[0];
    *&v197[15] = *(v206 + 15);
    v196[2] = v201;
    v196[3] = v202;
    v196[5] = v204;
    v196[4] = v203;
    v196[1] = v200;
    v196[0] = v199;
    sub_217AD2864(v196);
    v28 = (v3 + v12[8]);
    v29 = *v28;
    LOBYTE(v28) = *(v28 + 4);
    LODWORD(v128[0]) = v29;
    BYTE4(v128[0]) = v28;
    v127[0] = 4;
    sub_217AD7710();
    sub_217D89C3C();
    v30 = (v3 + v12[9]);
    v31 = *v30;
    LOBYTE(v30) = *(v30 + 4);
    LODWORD(v128[0]) = v31;
    BYTE4(v128[0]) = v30;
    v127[0] = 5;
    sub_217B4FFFC();
    sub_217D89C3C();
    v32 = (v3 + v12[10]);
    v33 = v32[1];
    v34 = v32[2];
    v193 = *v32;
    v194 = v33;
    v195 = v34;
    v192 = 6;
    sub_217AD1A68(v193, v33, v34);
    sub_217A5BA2C();
    sub_217D89C3C();
    sub_217AD290C(v193, v194, v195);
    v35 = (v3 + v12[11]);
    v36 = v35[5];
    v37 = v35[7];
    v189 = v35[6];
    v190 = v37;
    v38 = v35[7];
    v191 = v35[8];
    v39 = v35[1];
    v40 = v35[3];
    v185 = v35[2];
    v186 = v40;
    v42 = v35[3];
    v41 = v35[4];
    v43 = v41;
    v188 = v35[5];
    v187 = v41;
    v44 = *v35;
    v45 = *v35;
    v184[1] = v35[1];
    v184[0] = v44;
    v181 = v189;
    v182 = v38;
    v183 = v35[8];
    v177 = v185;
    v178 = v42;
    v180 = v36;
    v179 = v43;
    v176 = v39;
    v175 = v45;
    v174 = 7;
    sub_217AE38AC(v184, v128, &qword_2811BD178);
    sub_217A5D3B4();
    sub_217D89C3C();
    v173[6] = v181;
    v173[7] = v182;
    v173[8] = v183;
    v173[2] = v177;
    v173[3] = v178;
    v173[5] = v180;
    v173[4] = v179;
    v173[1] = v176;
    v173[0] = v175;
    sub_217AE4A44(v173, &qword_2811BD178);
    v46 = (v3 + v12[12]);
    v47 = *v46;
    v48 = v46[1];
    LOWORD(v46) = *(v46 + 8);
    v170 = v47;
    v171 = v48;
    v172 = v46;
    v169[279] = 8;
    sub_217A5E790();

    sub_217D89CAC();

    v49 = v12[13];
    memcpy(v169, (v3 + v49), 0x111uLL);
    memcpy(v168, (v3 + v49), sizeof(v168));
    v167[279] = 9;
    sub_217AD1744(v169, v128);
    sub_217ACF934();
    sub_217D89CAC();
    memcpy(v167, v168, 0x111uLL);
    sub_217AD28B8(v167);
    v50 = (v3 + v12[14]);
    v51 = *v50;
    v52 = v50[1];
    LOWORD(v50) = *(v50 + 1);
    LOBYTE(v128[0]) = v51;
    BYTE1(v128[0]) = v52;
    WORD1(v128[0]) = v50;
    v127[0] = 10;
    sub_217ACFB8C();
    sub_217D89CAC();
    LOWORD(v128[0]) = *(v3 + v12[15]);
    v127[0] = 11;
    sub_217A4CF88();
    sub_217D89CAC();
    v53 = (v3 + v12[16]);
    v54 = v53[1];
    v55 = v53[2];
    v56 = v53[3];
    v128[0] = *v53;
    v128[1] = v54;
    v128[2] = v55;
    v128[3] = v56;
    v127[0] = 12;
    sub_217AE39D0(v128[0], v54);
    sub_217ACFF94();
    sub_217D89C3C();
    sub_217AE4AA0(v128[0], v128[1]);
    v57 = (v3 + v12[17]);
    v58 = v57[1];
    v128[0] = *v57;
    v128[1] = v58;
    v127[0] = 13;
    sub_217AD01EC();

    sub_217D89C3C();

    v59 = (v3 + v12[18]);
    v60 = v59[1];
    v165 = *v59;
    v166 = v60;
    v164 = 14;
    sub_217AD0444();

    sub_217D89C3C();

    v61 = (v3 + v12[19]);
    v62 = v61[1];
    v162[0] = *v61;
    v162[1] = v62;
    v64 = *v61;
    v63 = v61[1];
    v162[2] = v61[2];
    v163 = *(v61 + 48);
    v158 = v64;
    v159 = v63;
    v160 = v61[2];
    v161 = *(v61 + 48);
    v157 = 15;
    sub_217ACC004(v162, v128);
    sub_217A55B98();
    sub_217D89CAC();
    v155[0] = v158;
    v155[1] = v159;
    v155[2] = v160;
    v156 = v161;
    sub_217ACC69C(v155);
    v65 = v3 + v12[20];
    v66 = *(v65 + 8);
    v67 = *(v65 + 16);
    v68 = *(v65 + 17);
    v69 = *(v65 + 24);
    v70 = *(v65 + 32);
    v128[0] = *v65;
    v128[1] = v66;
    LOBYTE(v128[2]) = v67;
    BYTE1(v128[2]) = v68;
    v128[3] = v69;
    v128[4] = v70;
    v127[0] = 16;
    sub_217AD084C();

    sub_217D89CAC();

    v71 = (v3 + v12[21]);
    v72 = v71[1];
    v73 = v71[2];
    v74 = v71[3];
    v75 = v71[4];
    v76 = v71[5];
    v128[0] = *v71;
    v128[1] = v72;
    v128[2] = v73;
    v128[3] = v74;
    v128[4] = v75;
    v128[5] = v76;
    v127[0] = 17;
    sub_217B1563C(v128[0], v72);
    sub_217ACDCB0();
    sub_217D89C3C();
    sub_217B15D30(v128[0], v128[1]);
    LOWORD(v128[0]) = *(v3 + v12[22]);
    v127[0] = 18;
    sub_217B1DEE8();
    sub_217D89C3C();
    v78 = (v3 + v12[23]);
    v79 = v78[1];
    v80 = v78[2];
    v81 = v78[3];
    v82 = v78[4];
    v83 = v78[5];
    v149 = *v78;
    v150 = v79;
    v151 = v80;
    v152 = v81;
    v153 = v82;
    v154 = v83;
    v148 = 19;
    sub_217B1563C(v149, v79);
    sub_217A66ADC();
    sub_217D89C3C();
    sub_217B15D30(v149, v150);
    v84 = (v3 + v12[24]);
    v85 = v84[3];
    v86 = v84[1];
    v144 = v84[2];
    v145 = v85;
    v87 = v84[3];
    v88 = v84[5];
    v146 = v84[4];
    v147 = v88;
    v89 = v84[1];
    v143[0] = *v84;
    v143[1] = v89;
    v139 = v144;
    v140 = v87;
    v90 = v84[5];
    v141 = v146;
    v142 = v90;
    v137 = v143[0];
    v138 = v86;
    v136 = 20;
    sub_217AE38AC(v143, v128, &qword_2811C4F30);
    sub_217B9C280();
    sub_217D89C3C();
    v135[2] = v139;
    v135[3] = v140;
    v135[4] = v141;
    v135[5] = v142;
    v135[0] = v137;
    v135[1] = v138;
    sub_217AE4A44(v135, &qword_2811C4F30);
    LOBYTE(v128[0]) = *(v3 + v12[25]);
    v127[0] = 21;
    sub_217AD0AA4();
    sub_217D89C3C();
    LOBYTE(v128[0]) = *(v3 + v12[26]);
    v127[0] = 22;
    sub_217C6D7C4();
    sub_217D89C3C();
    v91 = (v3 + v12[27]);
    v92 = v91[1];
    v93 = v91[2];
    v94 = v91[3];
    v95 = v91[4];
    v130 = *v91;
    v131 = v92;
    v132 = v93;
    v133 = v94;
    v134 = v95;
    v129 = 23;
    sub_217AE3AE8(v130, v92);
    sub_217AE2CFC();
    sub_217D89C3C();
    sub_217AE4AE4(v130, v131);
    v96 = v12[28];
    memcpy(v128, (v3 + v96), 0x1C8uLL);
    memcpy(v127, (v3 + v96), sizeof(v127));
    v126[463] = 24;
    sub_217AE38AC(v128, v126, &qword_2811C1A08);
    sub_217BBB650();
    sub_217D89C3C();
    memcpy(v126, v127, 0x1C8uLL);
    sub_217AE4A44(v126, &qword_2811C1A08);
    v97 = v3 + v12[29];
    v98 = *(v97 + 24);
    v120 = *v97;
    v121 = *(v97 + 8);
    LOBYTE(v122) = v98;
    v125 = 25;
    sub_217A5D95C();

    sub_217D89C3C();

    v99 = (v3 + v12[30]);
    v100 = v99[1];
    v101 = v99[2];
    v102 = v99[3];
    v120 = *v99;
    *&v121 = v100;
    *(&v121 + 1) = v101;
    v122 = v102;
    v125 = 26;
    sub_217C70C5C(v120, v100);
    sub_217B23A38();
    sub_217D89C3C();
    sub_217AE4AA0(v120, v121);
    v120 = *(v3 + v12[31]);
    v125 = 27;
    sub_217BDDE84();

    sub_217D89C3C();

    LOBYTE(v120) = *(v3 + v12[32]);
    v125 = 28;
    sub_217C6E28C();
    sub_217D89C3C();
    LOBYTE(v120) = *(v3 + v12[33]);
    v125 = 29;
    sub_217B2BA84();
    sub_217D89C3C();
    v103 = (v3 + v12[34]);
    v104 = v103[1];
    v105 = v103[2];
    v106 = v103[3];
    v107 = v103[4];
    v108 = v103[5];
    v120 = *v103;
    *&v121 = v104;
    *(&v121 + 1) = v105;
    v122 = v106;
    v123 = v107;
    v124 = v108;
    v125 = 30;
    sub_217B1563C(v120, v104);
    sub_217AFEC9C();
    sub_217D89C3C();
    sub_217B15D30(v120, v121);
    LOBYTE(v120) = *(v3 + v12[35]);
    v125 = 31;
    sub_217C46AB8();
    sub_217D89C3C();
    v109 = v3 + v12[36];
    v110 = *v109;
    LOBYTE(v109) = *(v109 + 8);
    v120 = v110;
    LOBYTE(v121) = v109;
    v125 = 32;
    sub_217B86F3C();
    sub_217D89C3C();
    LOWORD(v120) = *(v3 + v12[37]);
    v125 = 33;
    sub_217B347CC();
    sub_217D89CAC();
    v111 = (v3 + v12[38]);
    v112 = v111[1];
    v113 = v111[2];
    v114 = v111[3];
    v115 = v111[4];
    v120 = *v111;
    *&v121 = v112;
    *(&v121 + 1) = v113;
    v122 = v114;
    v123 = v115;
    v125 = 34;
    sub_217AD86BC(v120, v112);
    sub_217B1F08C();
    sub_217D89C3C();
    sub_217AD96A4(v120, v121);
    v120 = *(v3 + v12[39]);
    v125 = 35;
    sub_217AF77A0(v120);
    sub_217BB1A50();
    sub_217D89C3C();
    sub_217AF8158(v120);
    v116 = (v3 + v12[40]);
    v117 = v116[1];
    v118 = v116[2];
    v119 = v116[3];
    v120 = *v116;
    *&v121 = v117;
    *(&v121 + 1) = v118;
    v122 = v119;
    v125 = 36;
    sub_217AE39D0(v120, v117);
    sub_217B368B0();
    sub_217D89C3C();
    sub_217AE4AA0(v120, v121);
  }

  return (*(v7 + 8))(v10, v6);
}

unint64_t sub_217C72DF8()
{
  result = qword_2811C59D0;
  if (!qword_2811C59D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C59D0);
  }

  return result;
}

uint64_t ArticleViewEvent.Model.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v91 = a2;
  v3 = sub_217D889CC();
  v92 = *(v3 - 8);
  v93 = v3;
  v4 = *(v92 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = v89 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_217D8899C();
  v94 = *(v7 - 8);
  v8 = *(v94 + 64);
  MEMORY[0x28223BE20](v7);
  v95 = v89 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217C74A78(0, &qword_2811BCA90, MEMORY[0x277D844C8]);
  v96 = *(v10 - 8);
  v97 = v10;
  v11 = *(v96 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = v89 - v12;
  v14 = type metadata accessor for ArticleViewEvent.Model(0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v17 = v89 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a1[3];
  v19 = a1[4];
  v138 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v18);
  sub_217C72DF8();
  v98 = v13;
  v20 = v99;
  sub_217D89E5C();
  if (v20)
  {
    return __swift_destroy_boxed_opaque_existential_1(v138);
  }

  v90 = v14;
  v99 = v17;
  LOBYTE(v137[0]) = 0;
  sub_217A60258(&qword_2811C8408, MEMORY[0x277CEAEB0]);
  v21 = v95;
  sub_217D89BCC();
  v22 = v7;
  v23 = *(v94 + 32);
  v24 = v99;
  v95 = v22;
  v23(v99, v21);
  v118[0] = 1;
  sub_217AF343C();
  sub_217D89B5C();
  v89[7] = 0;
  v25 = v137[2];
  v26 = &v24[v90[5]];
  v27 = v137[1];
  *v26 = v137[0];
  *(v26 + 1) = v27;
  v26[32] = v25;
  LOBYTE(v137[0]) = 2;
  sub_217A60258(&qword_2811C83F0, MEMORY[0x277CEAED0]);
  v28 = v93;
  sub_217D89BCC();
  (*(v92 + 32))(&v24[v90[6]], v6, v28);
  v128 = 3;
  sub_217ACF4D8();
  sub_217D89BCC();
  v29 = &v24[v90[7]];
  v30 = v134;
  v31 = *v136;
  *(v29 + 6) = v135;
  *(v29 + 7) = v31;
  *(v29 + 127) = *&v136[15];
  v32 = v132;
  *(v29 + 2) = v131;
  *(v29 + 3) = v32;
  *(v29 + 4) = v133;
  *(v29 + 5) = v30;
  v33 = v130;
  *v29 = v129;
  *(v29 + 1) = v33;
  v118[0] = 4;
  sub_217AD76BC();
  sub_217D89B5C();
  v34 = BYTE4(v137[0]);
  v35 = &v24[v90[8]];
  *v35 = v137[0];
  v35[4] = v34;
  v118[0] = 5;
  sub_217B4FFA8();
  sub_217D89B5C();
  v36 = BYTE4(v137[0]);
  v37 = &v24[v90[9]];
  *v37 = v137[0];
  v37[4] = v36;
  v118[0] = 6;
  sub_217A5B978();
  sub_217D89B5C();
  v38 = *&v137[1];
  v39 = &v24[v90[10]];
  *v39 = v137[0];
  *(v39 + 2) = v38;
  v118[279] = 7;
  sub_217A5D308();
  sub_217D89B5C();
  v40 = &v24[v90[11]];
  v41 = v126;
  *(v40 + 6) = v125;
  *(v40 + 7) = v41;
  *(v40 + 8) = v127;
  v42 = v122;
  *(v40 + 2) = v121;
  *(v40 + 3) = v42;
  v43 = v124;
  *(v40 + 4) = v123;
  *(v40 + 5) = v43;
  v44 = v120;
  *v40 = v119;
  *(v40 + 1) = v44;
  v118[0] = 8;
  sub_217A5E738();
  sub_217D89BCC();
  v45 = *(&v137[0] + 1);
  v46 = v137[1];
  v47 = &v99[v90[12]];
  *v47 = *&v137[0];
  *(v47 + 1) = v45;
  *(v47 + 8) = v46;
  v117 = 9;
  sub_217ACF8E0();
  sub_217D89BCC();
  memcpy(&v99[v90[13]], v118, 0x111uLL);
  LOBYTE(v106) = 10;
  sub_217ACFB38();
  sub_217D89BCC();
  v48 = BYTE1(v137[0]);
  v49 = WORD1(v137[0]);
  v50 = &v99[v90[14]];
  *v50 = v137[0];
  v50[1] = v48;
  *(v50 + 1) = v49;
  LOBYTE(v106) = 11;
  sub_217A4CF30();
  sub_217D89BCC();
  *&v99[v90[15]] = v137[0];
  LOBYTE(v106) = 12;
  sub_217ACFF40();
  sub_217D89B5C();
  v51 = &v99[v90[16]];
  v52 = v137[1];
  *v51 = v137[0];
  *(v51 + 1) = v52;
  LOBYTE(v106) = 13;
  sub_217AD0198();
  sub_217D89B5C();
  *&v99[v90[17]] = v137[0];
  LOBYTE(v106) = 14;
  sub_217AD03F0();
  sub_217D89B5C();
  *&v99[v90[18]] = v137[0];
  v112 = 15;
  sub_217A54D08();
  sub_217D89BCC();
  v53 = &v99[v90[19]];
  v54 = v114;
  *v53 = v113;
  *(v53 + 1) = v54;
  *(v53 + 2) = v115;
  v53[48] = v116;
  LOBYTE(v106) = 16;
  sub_217AD07F8();
  sub_217D89BCC();
  v55 = *(&v137[0] + 1);
  v56 = v137[1];
  v57 = BYTE1(v137[1]);
  v58 = *(&v137[1] + 1);
  v59 = *&v137[2];
  v60 = &v99[v90[20]];
  *v60 = *&v137[0];
  *(v60 + 1) = v55;
  v60[16] = v56;
  v60[17] = v57;
  *(v60 + 3) = v58;
  *(v60 + 4) = v59;
  LOBYTE(v106) = 17;
  sub_217ACDC58();
  sub_217D89B5C();
  v61 = &v99[v90[21]];
  v62 = v137[1];
  *v61 = v137[0];
  *(v61 + 1) = v62;
  *(v61 + 2) = v137[2];
  LOBYTE(v106) = 18;
  sub_217B1DE94();
  sub_217D89B5C();
  *&v99[v90[22]] = v137[0];
  LOBYTE(v106) = 19;
  sub_217A66A84();
  sub_217D89B5C();
  v63 = &v99[v90[23]];
  v64 = v137[1];
  *v63 = v137[0];
  *(v63 + 1) = v64;
  *(v63 + 2) = v137[2];
  v105 = 20;
  sub_217B9C22C();
  sub_217D89B5C();
  v65 = &v99[v90[24]];
  v66 = v109;
  *(v65 + 2) = v108;
  *(v65 + 3) = v66;
  v67 = v111;
  *(v65 + 4) = v110;
  *(v65 + 5) = v67;
  v68 = v107;
  *v65 = v106;
  *(v65 + 1) = v68;
  LOBYTE(v100) = 21;
  sub_217AD0A50();
  sub_217D89B5C();
  v99[v90[25]] = v137[0];
  LOBYTE(v100) = 22;
  sub_217C6D770();
  sub_217D89B5C();
  v99[v90[26]] = v137[0];
  LOBYTE(v100) = 23;
  sub_217AE2CA8();
  sub_217D89B5C();
  v69 = *&v137[2];
  v70 = &v99[v90[27]];
  v71 = v137[1];
  *v70 = v137[0];
  *(v70 + 1) = v71;
  *(v70 + 4) = v69;
  v104 = 24;
  sub_217BBB5F8();
  sub_217D89B5C();
  memcpy(&v99[v90[28]], v137, 0x1C8uLL);
  v103 = 25;
  sub_217A5D8AC();
  sub_217D89B5C();
  v72 = v101;
  v73 = BYTE8(v101);
  v74 = &v99[v90[29]];
  *v74 = v100;
  *(v74 + 2) = v72;
  v74[24] = v73;
  v103 = 26;
  sub_217B23D2C();
  sub_217D89B5C();
  v75 = &v99[v90[30]];
  v76 = v101;
  *v75 = v100;
  *(v75 + 1) = v76;
  v103 = 27;
  sub_217BDDE2C();
  sub_217D89B5C();
  *&v99[v90[31]] = v100;
  v103 = 28;
  sub_217C6E238();
  sub_217D89B5C();
  v99[v90[32]] = v100;
  v103 = 29;
  sub_217B2BA2C();
  sub_217D89B5C();
  v99[v90[33]] = v100;
  v103 = 30;
  sub_217AFEC48();
  sub_217D89B5C();
  v77 = &v99[v90[34]];
  v78 = v101;
  *v77 = v100;
  *(v77 + 1) = v78;
  *(v77 + 2) = v102;
  v103 = 31;
  sub_217C46A64();
  sub_217D89B5C();
  v99[v90[35]] = v100;
  v103 = 32;
  sub_217B86EE4();
  sub_217D89B5C();
  v79 = BYTE8(v100);
  v80 = &v99[v90[36]];
  *v80 = v100;
  v80[8] = v79;
  v103 = 33;
  sub_217B34774();
  sub_217D89BCC();
  *&v99[v90[37]] = v100;
  v103 = 34;
  sub_217B1F038();
  sub_217D89B5C();
  v81 = v102;
  v82 = &v99[v90[38]];
  v83 = v101;
  *v82 = v100;
  *(v82 + 1) = v83;
  *(v82 + 4) = v81;
  v103 = 35;
  sub_217BB19F8();
  sub_217D89B5C();
  *&v99[v90[39]] = v100;
  v103 = 36;
  sub_217B36858();
  sub_217D89B5C();
  (*(v96 + 8))(v98, v97);
  v84 = v91;
  v85 = v99;
  v86 = &v99[v90[40]];
  v87 = v101;
  *v86 = v100;
  *(v86 + 1) = v87;
  sub_217C74ADC(v85, v84);
  __swift_destroy_boxed_opaque_existential_1(v138);
  return sub_217C74B40(v85);
}

void sub_217C74A78(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217C72DF8();
    v7 = a3(a1, &type metadata for ArticleViewEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217C74ADC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ArticleViewEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_217C74B40(uint64_t a1)
{
  v2 = type metadata accessor for ArticleViewEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_217C74CA0()
{
  sub_217A6018C();
  if (v0 <= 0x3F)
  {
    sub_217C6F060(319, &qword_2811C8500, sub_217AF343C, sub_217AF3490);
    if (v1 <= 0x3F)
    {
      sub_217A608E0();
      if (v2 <= 0x3F)
      {
        sub_217C6F060(319, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C);
        if (v3 <= 0x3F)
        {
          sub_217C6F060(319, &qword_2811C86C8, sub_217AD76BC, sub_217AD7710);
          if (v4 <= 0x3F)
          {
            sub_217C6F060(319, &qword_2811C8608, sub_217B4FFA8, sub_217B4FFFC);
            if (v5 <= 0x3F)
            {
              sub_217C6F060(319, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
              if (v6 <= 0x3F)
              {
                sub_217C6F060(319, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4);
                if (v7 <= 0x3F)
                {
                  sub_217C6F060(319, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
                  if (v8 <= 0x3F)
                  {
                    sub_217C6F060(319, &qword_2811C87D0, sub_217ACF8E0, sub_217ACF934);
                    if (v9 <= 0x3F)
                    {
                      sub_217C6F060(319, &qword_2811C85A0, sub_217ACFB38, sub_217ACFB8C);
                      if (v10 <= 0x3F)
                      {
                        sub_217C6F060(319, &qword_2811C86E8, sub_217A4CF30, sub_217A4CF88);
                        if (v11 <= 0x3F)
                        {
                          sub_217C6F060(319, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94);
                          if (v12 <= 0x3F)
                          {
                            sub_217C6F060(319, &qword_2811C8760, sub_217AD0198, sub_217AD01EC);
                            if (v13 <= 0x3F)
                            {
                              sub_217C6F060(319, &qword_2811C8598, sub_217AD03F0, sub_217AD0444);
                              if (v14 <= 0x3F)
                              {
                                sub_217C6F060(319, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
                                if (v15 <= 0x3F)
                                {
                                  sub_217C6F060(319, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C);
                                  if (v16 <= 0x3F)
                                  {
                                    sub_217C6F060(319, &qword_2811C8788, sub_217ACDC58, sub_217ACDCB0);
                                    if (v17 <= 0x3F)
                                    {
                                      sub_217C6F060(319, &qword_2811C87D8, sub_217B1DE94, sub_217B1DEE8);
                                      if (v18 <= 0x3F)
                                      {
                                        sub_217C6F060(319, &qword_2811C87A8, sub_217A66A84, sub_217A66ADC);
                                        if (v19 <= 0x3F)
                                        {
                                          sub_217C6F060(319, &qword_2811C86B8, sub_217B9C22C, sub_217B9C280);
                                          if (v20 <= 0x3F)
                                          {
                                            sub_217C6F060(319, &qword_2811C85E0, sub_217AD0A50, sub_217AD0AA4);
                                            if (v21 <= 0x3F)
                                            {
                                              sub_217C6F060(319, &qword_2811C8730, sub_217C6D770, sub_217C6D7C4);
                                              if (v22 <= 0x3F)
                                              {
                                                sub_217C6F060(319, &qword_2811C8570, sub_217AE2CA8, sub_217AE2CFC);
                                                if (v23 <= 0x3F)
                                                {
                                                  sub_217C6F060(319, &qword_2811C85C0, sub_217BBB5F8, sub_217BBB650);
                                                  if (v24 <= 0x3F)
                                                  {
                                                    sub_217C6F060(319, &qword_2811C85D0, sub_217A5D8AC, sub_217A5D95C);
                                                    if (v25 <= 0x3F)
                                                    {
                                                      sub_217C6F060(319, &qword_2811C8810, sub_217B23D2C, sub_217B23A38);
                                                      if (v26 <= 0x3F)
                                                      {
                                                        sub_217C6F060(319, &qword_2811C8640, sub_217BDDE2C, sub_217BDDE84);
                                                        if (v27 <= 0x3F)
                                                        {
                                                          sub_217C6F060(319, &qword_2811C8858, sub_217C6E238, sub_217C6E28C);
                                                          if (v28 <= 0x3F)
                                                          {
                                                            sub_217C6F060(319, &qword_2811C8638, sub_217B2BA2C, sub_217B2BA84);
                                                            if (v29 <= 0x3F)
                                                            {
                                                              sub_217C6F060(319, &qword_2811C85D8, sub_217AFEC48, sub_217AFEC9C);
                                                              if (v30 <= 0x3F)
                                                              {
                                                                sub_217C6F060(319, &qword_2811C85C8, sub_217C46A64, sub_217C46AB8);
                                                                if (v31 <= 0x3F)
                                                                {
                                                                  sub_217C6F060(319, &qword_2811C84B0, sub_217B86EE4, sub_217B86F3C);
                                                                  if (v32 <= 0x3F)
                                                                  {
                                                                    sub_217C6F060(319, &qword_2811C8630, sub_217B34774, sub_217B347CC);
                                                                    if (v33 <= 0x3F)
                                                                    {
                                                                      sub_217C6F060(319, &qword_2811C8820, sub_217B1F038, sub_217B1F08C);
                                                                      if (v34 <= 0x3F)
                                                                      {
                                                                        sub_217C6F060(319, &qword_2811C8718, sub_217BB19F8, sub_217BB1A50);
                                                                        if (v35 <= 0x3F)
                                                                        {
                                                                          sub_217C6F060(319, &qword_2811C8620, sub_217B36858, sub_217B368B0);
                                                                          if (v36 <= 0x3F)
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
                                                          }
                                                        }
                                                      }
                                                    }
                                                  }
                                                }
                                              }
                                            }
                                          }
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t getEnumTagSinglePayload for ArticleViewEvent.Model.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xDC)
  {
    goto LABEL_17;
  }

  if (a2 + 36 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 36) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 36;
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

      return (*a1 | (v4 << 8)) - 36;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 36;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x25;
  v8 = v6 - 37;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ArticleViewEvent.Model.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 36 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 36) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xDC)
  {
    v4 = 0;
  }

  if (a2 > 0xDB)
  {
    v5 = ((a2 - 220) >> 8) + 1;
    *result = a2 + 36;
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
    *result = a2 + 36;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_217C7599C()
{
  result = qword_27CBA2FB0;
  if (!qword_27CBA2FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA2FB0);
  }

  return result;
}

unint64_t sub_217C759F4()
{
  result = qword_2811C59C0;
  if (!qword_2811C59C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C59C0);
  }

  return result;
}

unint64_t sub_217C75A4C()
{
  result = qword_2811C59C8;
  if (!qword_2811C59C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C59C8);
  }

  return result;
}

uint64_t sub_217C75AA0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746144746E657665 && a2 == 0xE900000000000061;
  if (v4 || (sub_217D89D4C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x617461446461 && a2 == 0xE600000000000000 || (sub_217D89D4C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x74614464656D6974 && a2 == 0xE900000000000061 || (sub_217D89D4C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x44656C6369747261 && a2 == 0xEB00000000617461 || (sub_217D89D4C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000217DCCD20 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000217DCDE60 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6174614464656566 && a2 == 0xE800000000000000 || (sub_217D89D4C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x74614470756F7267 && a2 == 0xE900000000000061 || (sub_217D89D4C() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x6174614477656976 && a2 == 0xE800000000000000 || (sub_217D89D4C() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000217DCCCA0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000016 && 0x8000000217DCCCC0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x7461746E6569726FLL && a2 == 0xEF617461446E6F69 || (sub_217D89D4C() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x7461446575737369 && a2 == 0xE900000000000061 || (sub_217D89D4C() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0x6569566575737369 && a2 == 0xED00006174614477 || (sub_217D89D4C() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0xD000000000000018 && 0x8000000217DCCCE0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0xD000000000000021 && 0x8000000217DCCBB0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0x446C656E6E616863 && a2 == 0xEB00000000617461 || (sub_217D89D4C() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 0x6C61727265666572 && a2 == 0xEC00000061746144 || (sub_217D89D4C() & 1) != 0)
  {

    return 17;
  }

  else if (a1 == 0x446C6C6177796170 && a2 == 0xEB00000000617461 || (sub_217D89D4C() & 1) != 0)
  {

    return 18;
  }

  else if (a1 == 0x6E676961706D6163 && a2 == 0xEC00000061746144 || (sub_217D89D4C() & 1) != 0)
  {

    return 19;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000217DCEBF0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 20;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000217DCCD00 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 21;
  }

  else if (a1 == 0x656D656761676E65 && a2 == 0xEE0061746144746ELL || (sub_217D89D4C() & 1) != 0)
  {

    return 22;
  }

  else if (a1 == 0xD00000000000001ALL && 0x8000000217DCD5F0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 23;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000217DD1290 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 24;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000217DD15E0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 25;
  }

  else if (a1 == 0x6144686372616573 && a2 == 0xEA00000000006174 || (sub_217D89D4C() & 1) != 0)
  {

    return 26;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000217DD1600 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 27;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000217DD1620 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 28;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000217DD1210 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 29;
  }

  else if (a1 == 0x6E656D6563616C70 && a2 == 0xED00006174614474 || (sub_217D89D4C() & 1) != 0)
  {

    return 30;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000217DD1230 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 31;
  }

  else if (a1 == 0xD000000000000015 && 0x8000000217DD0520 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 32;
  }

  else if (a1 == 0x657A695374786574 && a2 == 0xEC00000061746144 || (sub_217D89D4C() & 1) != 0)
  {

    return 33;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000217DD1640 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 34;
  }

  else if (a1 == 0x694C657069636572 && a2 == 0xEE00617461447473 || (sub_217D89D4C() & 1) != 0)
  {

    return 35;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000217DCE340 == a2)
  {

    return 36;
  }

  else
  {
    v6 = sub_217D89D4C();

    if (v6)
    {
      return 36;
    }

    else
    {
      return 37;
    }
  }
}

void static TagData.obfuscated(tag:)(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = [a1 asSports];
  if (v4)
  {
    v5 = v4;
    v6 = [v4 sportsType];
    if (v6 > 0xB || ((1 << v6) & 0xFE7) != 0)
    {
      v7 = [a1 identifier];
      v8 = sub_217D8954C();
      v10 = v9;

      swift_unknownObjectRelease();
    }

    else
    {
      v13 = [v5 topLevelGroupsTagIdentifiers];
      if (v13)
      {
        v14 = v13;
        v15 = sub_217D896EC();

        v25 = v15;

        sub_217C768B8(&v25);

        if (*(v25 + 2))
        {
          v8 = *(v25 + 4);
          v10 = *(v25 + 5);

          swift_unknownObjectRelease();

          goto LABEL_6;
        }
      }

      v16 = [v5 topLevelSportTagIdentifier];
      if (v16)
      {
        v17 = v16;
        v8 = sub_217D8954C();
        v10 = v18;
        swift_unknownObjectRelease();
      }

      else
      {
        sub_217A536AC(0, &qword_2811BC410, sub_217A53700);
        v19 = swift_allocObject();
        *(v19 + 16) = xmmword_217D8D8F0;
        v20 = [a1 identifier];
        v21 = sub_217D8954C();
        v23 = v22;

        *(v19 + 56) = MEMORY[0x277D837D0];
        *(v19 + 64) = sub_217A62448();
        *(v19 + 32) = v21;
        *(v19 + 40) = v23;
        sub_217A535B4();
        v24 = sub_217D898BC();
        sub_217D897FC();
        sub_217D88E5C();
        swift_unknownObjectRelease();

        v8 = 0;
        v10 = 0xE000000000000000;
      }
    }
  }

  else
  {
    v11 = [a1 identifier];
    v8 = sub_217D8954C();
    v10 = v12;
  }

LABEL_6:
  *a2 = v8;
  a2[1] = v10;
}

uint64_t sub_217C768B8(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_217C774A4(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_217C76924(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_217C76924(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_217D89CEC();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x277D84F90];
      }

      else
      {
        v5 = sub_217D8970C();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_217C76AEC(v7, v8, a1, v4);
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
    return sub_217C76A1C(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_217C76A1C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
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
      if (v13 || (result = sub_217D89D4C(), (result & 1) == 0))
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

uint64_t sub_217C76AEC(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v95 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
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
      result = sub_217C7737C(v8);
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
        sub_217C770C8((*a3 + 16 * *v87), (*a3 + 16 * *v89), (*a3 + 16 * v90), v9);
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
  v8 = MEMORY[0x277D84F90];
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
        result = sub_217D89D4C();
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
            result = sub_217D89D4C();
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
      result = sub_217B5B528(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v40 = *(v8 + 2);
    v39 = *(v8 + 3);
    v41 = v40 + 1;
    if (v40 >= v39 >> 1)
    {
      result = sub_217B5B528((v39 > 1), v40 + 1, 1, v8);
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
        sub_217C770C8((*a3 + 16 * v82), (*a3 + 16 * *&v8[16 * v44 + 32]), (*a3 + 16 * v83), v43);
        if (v5)
        {
        }

        if (v83 < v82)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_217C7737C(v8);
        }

        if (v9 >= *(v8 + 2))
        {
          goto LABEL_118;
        }

        v84 = &v8[16 * v9];
        *(v84 + 4) = v82;
        *(v84 + 5) = v83;
        result = sub_217C772F0(v44);
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
    if (v37 || (result = sub_217D89D4C(), (result & 1) == 0))
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

uint64_t sub_217C770C8(char *__dst, char *__src, char *a3, char *a4)
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
      if (!v16 && (sub_217D89D4C() & 1) != 0)
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
      if (!v21 && (sub_217D89D4C() & 1) != 0)
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

uint64_t sub_217C772F0(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_217C7737C(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    v9 = *(v7 + 40);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

char *sub_217C77390(char *result, int64_t a2, char a3, char *a4)
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
    sub_217A536AC(0, &qword_27CBA0320, sub_217B5B718);
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

NewsAnalytics::BannerAdPlacementType_optional __swiftcall BannerAdPlacementType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_217D89B0C();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t BannerAdPlacementType.rawValue.getter()
{
  v1 = 0x656C6369747261;
  if (*v0 != 1)
  {
    v1 = 1684366694;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E776F6E6B6E75;
  }
}

uint64_t sub_217C77568(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE700000000000000;
  v4 = 0xE700000000000000;
  v5 = 0x656C6369747261;
  if (v2 != 1)
  {
    v5 = 1684366694;
    v4 = 0xE400000000000000;
  }

  if (*a1)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0x6E776F6E6B6E75;
  }

  if (v2)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0xE700000000000000;
  }

  v8 = 0x656C6369747261;
  if (*a2 != 1)
  {
    v8 = 1684366694;
    v3 = 0xE400000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x6E776F6E6B6E75;
  }

  if (*a2)
  {
    v10 = v3;
  }

  else
  {
    v10 = 0xE700000000000000;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_217D89D4C();
  }

  return v11 & 1;
}

unint64_t sub_217C7765C()
{
  result = qword_27CBA2FB8;
  if (!qword_27CBA2FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA2FB8);
  }

  return result;
}

uint64_t sub_217C776B0()
{
  v1 = *v0;
  sub_217D89E1C();
  sub_217D895CC();

  return sub_217D89E3C();
}

uint64_t sub_217C7774C()
{
  *v0;
  *v0;
  sub_217D895CC();
}

uint64_t sub_217C777D4()
{
  v1 = *v0;
  sub_217D89E1C();
  sub_217D895CC();

  return sub_217D89E3C();
}

void sub_217C77878(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0xE700000000000000;
  v5 = 0x656C6369747261;
  if (v2 != 1)
  {
    v5 = 1684366694;
    v4 = 0xE400000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6E776F6E6B6E75;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

unint64_t sub_217C77990()
{
  result = qword_27CBA2FC0;
  if (!qword_27CBA2FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA2FC0);
  }

  return result;
}

NewsAnalytics::StartMethod_optional __swiftcall StartMethod.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_217D89B0C();

  v5 = 12;
  if (v3 < 0xC)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t StartMethod.rawValue.getter()
{
  v1 = *v0;
  if (v1 > 5)
  {
    v7 = 0x6163696669746F6ELL;
    v8 = 0x636573726170;
    if (v1 != 10)
    {
      v8 = 0x6553697261666173;
    }

    if (v1 != 9)
    {
      v7 = v8;
    }

    v9 = 0xD000000000000020;
    v10 = 0x6867696C746F7073;
    if (v1 != 7)
    {
      v10 = 0x66666F646E6168;
    }

    if (v1 != 6)
    {
      v9 = v10;
    }

    if (*v0 <= 8u)
    {
      return v9;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v2 = 0x6E776F6E6B6E75;
    v3 = 0xD000000000000011;
    v4 = 0x6465725069726973;
    if (v1 != 4)
    {
      v4 = 0xD000000000000011;
    }

    if (v1 != 3)
    {
      v3 = v4;
    }

    v5 = 0x6469577961646F74;
    if (v1 != 1)
    {
      v5 = 0x6C616E7265747865;
    }

    if (*v0)
    {
      v2 = v5;
    }

    if (*v0 <= 2u)
    {
      return v2;
    }

    else
    {
      return v3;
    }
  }
}

uint64_t sub_217C77BF8(char *a1, char *a2)
{
  v10 = *a1;
  v9 = *a2;
  started = StartMethod.rawValue.getter();
  v4 = v3;
  if (started == StartMethod.rawValue.getter() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_217D89D4C();
  }

  return v7 & 1;
}

unint64_t sub_217C77C98()
{
  result = qword_27CBA2FC8;
  if (!qword_27CBA2FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA2FC8);
  }

  return result;
}

uint64_t sub_217C77CEC()
{
  v1 = *v0;
  sub_217D89E1C();
  StartMethod.rawValue.getter();
  sub_217D895CC();

  return sub_217D89E3C();
}

uint64_t sub_217C77D54()
{
  v2 = *v0;
  StartMethod.rawValue.getter();
  sub_217D895CC();
}

uint64_t sub_217C77DB8()
{
  v1 = *v0;
  sub_217D89E1C();
  StartMethod.rawValue.getter();
  sub_217D895CC();

  return sub_217D89E3C();
}

unint64_t sub_217C77E28@<X0>(unint64_t *a1@<X8>)
{
  result = StartMethod.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_217C77F10()
{
  result = qword_2811C7B80[0];
  if (!qword_2811C7B80[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2811C7B80);
  }

  return result;
}

uint64_t sub_217C7802C()
{
  v0 = sub_217D8867C();
  __swift_allocate_value_buffer(v0, qword_27CBA3000);
  __swift_project_value_buffer(v0, qword_27CBA3000);
  return sub_217D8866C();
}

uint64_t FeedLoadFailureEvent.eventData.setter(uint64_t a1)
{
  sub_217A6018C();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t FeedLoadFailureEvent.feedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for FeedLoadFailureEvent(0) + 20);
  sub_217A60648(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t FeedLoadFailureEvent.feedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for FeedLoadFailureEvent(0) + 20);
  sub_217A60648(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t FeedLoadFailureEvent.feedConfigData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for FeedLoadFailureEvent(0) + 24);
  sub_217A60648(0, &qword_2811C8728, sub_217A60838, sub_217A6088C);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t FeedLoadFailureEvent.feedConfigData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for FeedLoadFailureEvent(0) + 24);
  sub_217A60648(0, &qword_2811C8728, sub_217A60838, sub_217A6088C);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t FeedLoadFailureEvent.timedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for FeedLoadFailureEvent(0) + 28);
  sub_217A608E0();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t FeedLoadFailureEvent.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for FeedLoadFailureEvent(0) + 32);
  sub_217A60648(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t FeedLoadFailureEvent.viewData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for FeedLoadFailureEvent(0) + 32);
  sub_217A60648(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t FeedLoadFailureEvent.errorData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for FeedLoadFailureEvent(0) + 36);
  sub_217A60648(0, &qword_2811C84D0, sub_217A60B90, sub_217A60BE4);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t FeedLoadFailureEvent.errorData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for FeedLoadFailureEvent(0) + 36);
  sub_217A60648(0, &qword_2811C84D0, sub_217A60B90, sub_217A60BE4);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t FeedLoadFailureEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_217A6018C();
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  FailureEvent = type metadata accessor for FeedLoadFailureEvent(0);
  v5 = FailureEvent[5];
  sub_217A60648(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = FailureEvent[6];
  v8 = *MEMORY[0x277CEACF0];
  sub_217A60648(0, &qword_2811C8728, sub_217A60838, sub_217A6088C);
  (*(*(v9 - 8) + 104))(a1 + v7, v8, v9);
  v10 = FailureEvent[7];
  sub_217A608E0();
  (*(*(v11 - 8) + 104))(a1 + v10, v2, v11);
  v12 = FailureEvent[8];
  sub_217A60648(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
  (*(*(v13 - 8) + 104))(a1 + v12, v2, v13);
  v14 = FailureEvent[9];
  sub_217A60648(0, &qword_2811C84D0, sub_217A60B90, sub_217A60BE4);
  v16 = *(*(v15 - 8) + 104);

  return v16(a1 + v14, v2, v15);
}

uint64_t FeedLoadFailureEvent.Model.feedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for FeedLoadFailureEvent.Model(0) + 20);
  v5 = *(v3 + 8);
  v4 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 8) = v5;
  *(a1 + 16) = v4;
}

uint64_t FeedLoadFailureEvent.Model.feedConfigData.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for FeedLoadFailureEvent.Model(0) + 24));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  v8 = v3[4];
  v9 = v3[5];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v7;
  a1[4] = v8;
  a1[5] = v9;

  return sub_217C78CA8(v4, v5);
}

uint64_t sub_217C78CA8(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t sub_217C78CE8@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a1(0) + 28);
  v7 = a2(0);
  v8 = *(*(v7 - 8) + 16);

  return v8(a3, v3 + v6, v7);
}

uint64_t FeedLoadFailureEvent.Model.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for FeedLoadFailureEvent.Model(0) + 32));
  v5 = *v3;
  v4 = v3[1];
  LOWORD(v3) = *(v3 + 8);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v3;
}

uint64_t FeedLoadFailureEvent.Model.errorData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for FeedLoadFailureEvent.Model(0) + 36);
  v5 = *(v3 + 24);
  v4 = *(v3 + 32);
  *a1 = *v3;
  *(a1 + 8) = *(v3 + 8);
  *(a1 + 24) = v5;
  *(a1 + 32) = v4;
}

__n128 FeedLoadFailureEvent.Model.init(eventData:feedData:feedConfigData:timedData:viewData:errorData:)@<Q0>(uint64_t a1@<X0>, char *a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, __int128 *a6@<X5>, uint64_t a7@<X8>)
{
  v10 = *a2;
  v12 = *(a2 + 1);
  v11 = *(a2 + 2);
  v13 = *(a3 + 4);
  v14 = *(a3 + 5);
  v15 = a5[1];
  v16 = *(a5 + 8);
  v30 = a6[1];
  v31 = *a6;
  v28 = *a5;
  v29 = *(a6 + 4);
  v17 = sub_217D8899C();
  v26 = a3[1];
  v27 = *a3;
  (*(*(v17 - 8) + 32))(a7, a1, v17);
  Failure = type metadata accessor for FeedLoadFailureEvent.Model(0);
  v19 = a7 + Failure[5];
  *v19 = v10;
  *(v19 + 8) = v12;
  *(v19 + 16) = v11;
  v20 = a7 + Failure[6];
  *v20 = v27;
  *(v20 + 16) = v26;
  *(v20 + 32) = v13;
  *(v20 + 40) = v14;
  v21 = Failure[7];
  v22 = sub_217D889CC();
  (*(*(v22 - 8) + 32))(a7 + v21, a4, v22);
  v23 = a7 + Failure[8];
  *v23 = v28;
  *(v23 + 8) = v15;
  *(v23 + 16) = v16;
  v24 = a7 + Failure[9];
  result = v30;
  *v24 = v31;
  *(v24 + 16) = v30;
  *(v24 + 32) = v29;
  return result;
}

uint64_t sub_217C78F84()
{
  v1 = *v0;
  v2 = 0x746144746E657665;
  v3 = 0x74614464656D6974;
  v4 = 0x6174614477656976;
  if (v1 != 4)
  {
    v4 = 0x746144726F727265;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6174614464656566;
  if (v1 != 1)
  {
    v5 = 0x666E6F4364656566;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_217C79048@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_217C7A31C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_217C79070(uint64_t a1)
{
  v2 = sub_217C794EC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217C790AC(uint64_t a1)
{
  v2 = sub_217C794EC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t FeedLoadFailureEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_217C79BF8(0, &qword_27CBA3018, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v30 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217C794EC();
  sub_217D89E7C();
  LOBYTE(v31) = 0;
  sub_217D8899C();
  sub_217A60258(&unk_2811C8410, MEMORY[0x277CEAEB0]);
  sub_217D89CAC();
  if (!v2)
  {
    Failure = type metadata accessor for FeedLoadFailureEvent.Model(0);
    v13 = v3 + Failure[5];
    v14 = *(v13 + 8);
    v15 = *(v13 + 16);
    LOBYTE(v31) = *v13;
    *&v32 = v14;
    *(&v32 + 1) = v15;
    v36 = 1;
    sub_217A5BA2C();

    sub_217D89CAC();

    v16 = (v3 + Failure[6]);
    v17 = v16[1];
    v18 = v16[2];
    v19 = v16[3];
    v20 = v16[4];
    v21 = v16[5];
    v31 = *v16;
    *&v32 = v17;
    *(&v32 + 1) = v18;
    v33 = v19;
    v34 = v20;
    v35 = v21;
    v36 = 2;
    sub_217C78CA8(v31, v17);
    sub_217A6088C();
    sub_217D89C3C();
    sub_217C79540(v31, v32);
    v22 = Failure[7];
    LOBYTE(v31) = 3;
    sub_217D889CC();
    sub_217A60258(&qword_2811C83F8, MEMORY[0x277CEAED0]);
    sub_217D89CAC();
    v24 = v3 + Failure[8];
    v25 = *v24;
    v26 = *(v24 + 8);
    LOWORD(v24) = *(v24 + 16);
    v31 = v25;
    *&v32 = v26;
    WORD4(v32) = v24;
    v36 = 4;
    sub_217A5E790();

    sub_217D89CAC();

    v27 = v3 + Failure[9];
    v28 = *(v27 + 24);
    v29 = *(v27 + 32);
    v31 = *v27;
    v32 = *(v27 + 8);
    v33 = v28;
    v34 = v29;
    v36 = 5;
    sub_217A60BE4();

    sub_217D89CAC();
  }

  return (*(v7 + 8))(v10, v6);
}

unint64_t sub_217C794EC()
{
  result = qword_27CBA3020;
  if (!qword_27CBA3020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA3020);
  }

  return result;
}

uint64_t sub_217C79540(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t FeedLoadFailureEvent.Model.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  v3 = sub_217D889CC();
  v36 = *(v3 - 8);
  v37 = v3;
  v4 = *(v36 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_217D8899C();
  v38 = *(v7 - 8);
  v8 = *(v38 + 64);
  MEMORY[0x28223BE20](v7);
  v41 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217C79BF8(0, &qword_27CBA3028, MEMORY[0x277D844C8]);
  v39 = *(v10 - 8);
  v40 = v10;
  v11 = *(v39 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v34 - v12;
  Failure = type metadata accessor for FeedLoadFailureEvent.Model(0);
  v15 = *(*(Failure - 1) + 64);
  MEMORY[0x28223BE20](Failure);
  v17 = &v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217C794EC();
  v42 = v13;
  v19 = v43;
  sub_217D89E5C();
  if (v19)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v20 = v6;
  v44[0] = 0;
  sub_217A60258(&qword_2811C8408, MEMORY[0x277CEAEB0]);
  sub_217D89BCC();
  (*(v38 + 32))(v17, v41, v7);
  v46 = 1;
  sub_217A5B978();
  sub_217D89BCC();
  v34 = v7;
  v21 = &v17[Failure[5]];
  *v21 = v44[0];
  *(v21 + 8) = *&v44[8];
  v46 = 2;
  sub_217A60838();
  v43 = 0;
  sub_217D89B5C();
  v22 = v39;
  v23 = &v17[Failure[6]];
  v24 = *&v44[16];
  *v23 = *v44;
  *(v23 + 1) = v24;
  *(v23 + 2) = v45;
  v44[0] = 3;
  sub_217A60258(&qword_2811C83F0, MEMORY[0x277CEAED0]);
  v25 = v37;
  sub_217D89BCC();
  (*(v36 + 32))(&v17[Failure[7]], v20, v25);
  v46 = 4;
  sub_217A5E738();
  v26 = v40;
  sub_217D89BCC();
  v27 = *&v44[8];
  v28 = *&v44[16];
  v29 = &v17[Failure[8]];
  *v29 = *v44;
  *(v29 + 1) = v27;
  *(v29 + 8) = v28;
  v46 = 5;
  sub_217A60B90();
  sub_217D89BCC();
  (*(v22 + 8))(v42, v26);
  v30 = v45;
  v31 = &v17[Failure[9]];
  v32 = *&v44[16];
  *v31 = *v44;
  *(v31 + 1) = v32;
  *(v31 + 4) = v30;
  sub_217C79C5C(v17, v35);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_217C79CC0(v17);
}

void sub_217C79BF8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217C794EC();
    v7 = a3(a1, &type metadata for FeedLoadFailureEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217C79C5C(uint64_t a1, uint64_t a2)
{
  Failure = type metadata accessor for FeedLoadFailureEvent.Model(0);
  (*(*(Failure - 8) + 16))(a2, a1, Failure);
  return a2;
}

uint64_t sub_217C79CC0(uint64_t a1)
{
  Failure = type metadata accessor for FeedLoadFailureEvent.Model(0);
  (*(*(Failure - 8) + 8))(a1, Failure);
  return a1;
}

uint64_t sub_217C79DF4@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *MEMORY[0x277CEACF8];
  sub_217A6018C();
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  sub_217A60648(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = a1[6];
  v9 = *MEMORY[0x277CEACF0];
  sub_217A60648(0, &qword_2811C8728, sub_217A60838, sub_217A6088C);
  (*(*(v10 - 8) + 104))(a2 + v8, v9, v10);
  v11 = a1[7];
  sub_217A608E0();
  (*(*(v12 - 8) + 104))(a2 + v11, v4, v12);
  v13 = a1[8];
  sub_217A60648(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790);
  (*(*(v14 - 8) + 104))(a2 + v13, v4, v14);
  v15 = a1[9];
  sub_217A60648(0, &qword_2811C84D0, sub_217A60B90, sub_217A60BE4);
  v17 = *(*(v16 - 8) + 104);

  return v17(a2 + v15, v4, v16);
}

void sub_217C7A0F8()
{
  sub_217D8899C();
  if (v0 <= 0x3F)
  {
    sub_217C7A1B4();
    if (v1 <= 0x3F)
    {
      sub_217D889CC();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_217C7A1B4()
{
  if (!qword_27CBA3040)
  {
    v0 = sub_217D898EC();
    if (!v1)
    {
      atomic_store(v0, &qword_27CBA3040);
    }
  }
}

unint64_t sub_217C7A218()
{
  result = qword_27CBA3048;
  if (!qword_27CBA3048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA3048);
  }

  return result;
}

unint64_t sub_217C7A270()
{
  result = qword_27CBA3050;
  if (!qword_27CBA3050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA3050);
  }

  return result;
}

unint64_t sub_217C7A2C8()
{
  result = qword_27CBA3058;
  if (!qword_27CBA3058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA3058);
  }

  return result;
}

uint64_t sub_217C7A31C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746144746E657665 && a2 == 0xE900000000000061;
  if (v4 || (sub_217D89D4C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6174614464656566 && a2 == 0xE800000000000000 || (sub_217D89D4C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x666E6F4364656566 && a2 == 0xEE00617461446769 || (sub_217D89D4C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x74614464656D6974 && a2 == 0xE900000000000061 || (sub_217D89D4C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6174614477656976 && a2 == 0xE800000000000000 || (sub_217D89D4C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x746144726F727265 && a2 == 0xE900000000000061)
  {

    return 5;
  }

  else
  {
    v6 = sub_217D89D4C();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_217C7A5F8()
{
  v0 = sub_217D8867C();
  __swift_allocate_value_buffer(v0, qword_2811C1460);
  __swift_project_value_buffer(v0, qword_2811C1460);
  return sub_217D8866C();
}

uint64_t FeedGapExpansionEvent.eventData.setter(uint64_t a1)
{
  sub_217A6018C();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t FeedGapExpansionEvent.timedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for FeedGapExpansionEvent(0) + 20);
  sub_217A608E0();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t FeedGapExpansionEvent.feedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for FeedGapExpansionEvent(0) + 24);
  sub_217A606C4(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t FeedGapExpansionEvent.feedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for FeedGapExpansionEvent(0) + 24);
  sub_217A606C4(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t FeedGapExpansionEvent.groupData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for FeedGapExpansionEvent(0) + 28);
  sub_217A606C4(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t FeedGapExpansionEvent.groupData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for FeedGapExpansionEvent(0) + 28);
  sub_217A606C4(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t FeedGapExpansionEvent.feedJournalEntryData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for FeedGapExpansionEvent(0) + 32);
  sub_217A606C4(0, &qword_2811C85E8, sub_217B8C790, sub_217B8C7E8);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t FeedGapExpansionEvent.feedJournalEntryData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for FeedGapExpansionEvent(0) + 32);
  sub_217A606C4(0, &qword_2811C85E8, sub_217B8C790, sub_217B8C7E8);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t FeedGapExpansionEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_217A6018C();
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for FeedGapExpansionEvent(0);
  v5 = v4[5];
  sub_217A608E0();
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = v4[6];
  sub_217A606C4(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
  (*(*(v8 - 8) + 104))(a1 + v7, v2, v8);
  v9 = v4[7];
  sub_217A606C4(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4);
  (*(*(v10 - 8) + 104))(a1 + v9, v2, v10);
  v11 = v4[8];
  v12 = *MEMORY[0x277CEACF0];
  sub_217A606C4(0, &qword_2811C85E8, sub_217B8C790, sub_217B8C7E8);
  v14 = *(*(v13 - 8) + 104);

  return v14(a1 + v11, v12, v13);
}

uint64_t sub_217C7AFC8@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a1(0) + 20);
  v7 = a2(0);
  v8 = *(*(v7 - 8) + 16);

  return v8(a3, v3 + v6, v7);
}

uint64_t FeedGapExpansionEvent.Model.feedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for FeedGapExpansionEvent.Model(0) + 24);
  v5 = *(v3 + 8);
  v4 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 8) = v5;
  *(a1 + 16) = v4;
}

uint64_t FeedGapExpansionEvent.Model.groupData.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for FeedGapExpansionEvent.Model(0) + 28));
  v4 = v3[5];
  v5 = v3[7];
  v22 = v3[6];
  v23 = v5;
  v6 = v3[7];
  v24 = v3[8];
  v7 = v3[1];
  v8 = v3[3];
  v18 = v3[2];
  v9 = v18;
  v19 = v8;
  v10 = v3[3];
  v11 = v3[5];
  v20 = v3[4];
  v12 = v20;
  v21 = v11;
  v13 = v3[1];
  v17[0] = *v3;
  v14 = v17[0];
  v17[1] = v13;
  a1[6] = v22;
  a1[7] = v6;
  a1[8] = v3[8];
  a1[2] = v9;
  a1[3] = v10;
  a1[4] = v12;
  a1[5] = v4;
  *a1 = v14;
  a1[1] = v7;
  return sub_217AF7618(v17, &v16);
}

uint64_t FeedGapExpansionEvent.Model.feedJournalEntryData.getter@<X0>(_OWORD *a1@<X8>)
{
  *a1 = *(v1 + *(type metadata accessor for FeedGapExpansionEvent.Model(0) + 32));
}

__n128 FeedGapExpansionEvent.Model.init(eventData:timedData:feedData:groupData:feedJournalEntryData:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X8>)
{
  v10 = *a3;
  v11 = *(a3 + 1);
  v12 = *(a3 + 2);
  v13 = *a5;
  v14 = a5[1];
  v15 = sub_217D8899C();
  (*(*(v15 - 8) + 32))(a6, a1, v15);
  v16 = type metadata accessor for FeedGapExpansionEvent.Model(0);
  v17 = v16[5];
  v18 = sub_217D889CC();
  (*(*(v18 - 8) + 32))(a6 + v17, a2, v18);
  v19 = a6 + v16[6];
  *v19 = v10;
  *(v19 + 8) = v11;
  *(v19 + 16) = v12;
  v20 = a6 + v16[7];
  v21 = *(a4 + 112);
  *(v20 + 96) = *(a4 + 96);
  *(v20 + 112) = v21;
  *(v20 + 128) = *(a4 + 128);
  v22 = *(a4 + 48);
  *(v20 + 32) = *(a4 + 32);
  *(v20 + 48) = v22;
  v23 = *(a4 + 80);
  *(v20 + 64) = *(a4 + 64);
  *(v20 + 80) = v23;
  result = *(a4 + 16);
  *v20 = *a4;
  *(v20 + 16) = result;
  v25 = (a6 + v16[8]);
  *v25 = v13;
  v25[1] = v14;
  return result;
}

uint64_t sub_217C7B2CC()
{
  v1 = *v0;
  v2 = 0x746144746E657665;
  v3 = 0x6174614464656566;
  v4 = 0x74614470756F7267;
  if (v1 != 3)
  {
    v4 = 0xD000000000000014;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x74614464656D6974;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_217C7B368@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_217C7C748(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_217C7B390(uint64_t a1)
{
  v2 = sub_217C7B7F0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217C7B3CC(uint64_t a1)
{
  v2 = sub_217C7B7F0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t FeedGapExpansionEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_217C7BF38(0, &qword_27CBA3060, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v28[-v9];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217C7B7F0();
  sub_217D89E7C();
  LOBYTE(v41) = 0;
  sub_217D8899C();
  sub_217A60258(&unk_2811C8410, MEMORY[0x277CEAEB0]);
  sub_217D89CAC();
  if (!v2)
  {
    v12 = type metadata accessor for FeedGapExpansionEvent.Model(0);
    v13 = v12[5];
    LOBYTE(v41) = 1;
    sub_217D889CC();
    sub_217A60258(&qword_2811C83F8, MEMORY[0x277CEAED0]);
    sub_217D89CAC();
    v14 = (v3 + v12[6]);
    v15 = *(v14 + 1);
    v16 = *(v14 + 2);
    v51 = *v14;
    v52 = v15;
    v53 = v16;
    v50 = 2;
    sub_217A5BA2C();

    sub_217D89CAC();

    v17 = (v3 + v12[7]);
    v18 = v17[6];
    v19 = v17[4];
    v46 = v17[5];
    v47 = v18;
    v20 = v17[6];
    v21 = v17[8];
    v48 = v17[7];
    v49 = v21;
    v22 = v17[2];
    v23 = *v17;
    v42 = v17[1];
    v43 = v22;
    v24 = v17[2];
    v25 = v17[4];
    v44 = v17[3];
    v45 = v25;
    v26 = *v17;
    v38 = v20;
    v39 = v48;
    v40 = v17[8];
    v41 = v26;
    v34 = v24;
    v35 = v44;
    v36 = v19;
    v37 = v46;
    v32 = v23;
    v33 = v42;
    v31 = 3;
    sub_217AF7618(&v41, v30);
    sub_217A5D3B4();
    sub_217D89CAC();
    v30[7] = v39;
    v30[8] = v40;
    v30[2] = v34;
    v30[3] = v35;
    v30[5] = v37;
    v30[6] = v38;
    v30[4] = v36;
    v30[0] = v32;
    v30[1] = v33;
    sub_217AF8104(v30);
    v29 = *(v3 + v12[8]);
    v28[15] = 4;
    sub_217B8C7E8();

    sub_217D89C3C();
  }

  return (*(v7 + 8))(v10, v6);
}

unint64_t sub_217C7B7F0()
{
  result = qword_27CBA3068;
  if (!qword_27CBA3068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA3068);
  }

  return result;
}

uint64_t FeedGapExpansionEvent.Model.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v35 = sub_217D889CC();
  v37 = *(v35 - 8);
  v3 = *(v37 + 64);
  MEMORY[0x28223BE20](v35);
  v5 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_217D8899C();
  v34 = *(v6 - 8);
  v7 = *(v34 + 64);
  MEMORY[0x28223BE20](v6);
  v39 = (&v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_217C7BF38(0, &qword_27CBA3070, MEMORY[0x277D844C8]);
  v40 = v9;
  v36 = *(v9 - 8);
  v10 = *(v36 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v32 - v11;
  v13 = type metadata accessor for FeedGapExpansionEvent.Model(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217C7B7F0();
  v38 = v12;
  v18 = v52;
  sub_217D89E5C();
  if (v18)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v19 = v5;
  v20 = v16;
  v21 = v37;
  v22 = v35;
  v44[0] = 0;
  sub_217A60258(&qword_2811C8408, MEMORY[0x277CEAEB0]);
  sub_217D89BCC();
  v23 = *(v34 + 32);
  v52 = v6;
  v23(v20, v39, v6);
  v44[0] = 1;
  sub_217A60258(&qword_2811C83F0, MEMORY[0x277CEAED0]);
  sub_217D89BCC();
  v24 = v36;
  v39 = v13;
  (*(v21 + 32))(v20 + *(v13 + 20), v19, v22);
  LOBYTE(v42) = 2;
  sub_217A5B978();
  sub_217D89BCC();
  v25 = v20 + v39[6];
  *v25 = v44[0];
  *(v25 + 8) = *&v44[8];
  v43 = 3;
  sub_217A5D308();
  sub_217D89BCC();
  v26 = (v20 + v39[7]);
  v27 = v50;
  v26[6] = v49;
  v26[7] = v27;
  v26[8] = v51;
  v28 = v46;
  v26[2] = v45;
  v26[3] = v28;
  v29 = v48;
  v26[4] = v47;
  v26[5] = v29;
  v30 = *&v44[16];
  *v26 = *v44;
  v26[1] = v30;
  v41 = 4;
  sub_217B8C790();
  sub_217D89B5C();
  (*(v24 + 8))(v38, v40);
  *(v20 + v39[8]) = v42;
  sub_217C7BF9C(v20, v33);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_217C7C000(v20);
}

void sub_217C7BF38(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217C7B7F0();
    v7 = a3(a1, &type metadata for FeedGapExpansionEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217C7BF9C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FeedGapExpansionEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_217C7C000(uint64_t a1)
{
  v2 = type metadata accessor for FeedGapExpansionEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_217C7C134@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *MEMORY[0x277CEACF8];
  sub_217A6018C();
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  sub_217A608E0();
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = a1[6];
  sub_217A606C4(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
  (*(*(v9 - 8) + 104))(a2 + v8, v4, v9);
  v10 = a1[7];
  sub_217A606C4(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4);
  (*(*(v11 - 8) + 104))(a2 + v10, v4, v11);
  v12 = a1[8];
  v13 = *MEMORY[0x277CEACF0];
  sub_217A606C4(0, &qword_2811C85E8, sub_217B8C790, sub_217B8C7E8);
  v15 = *(*(v14 - 8) + 104);

  return v15(a2 + v12, v13, v14);
}

void sub_217C7C390()
{
  sub_217A6018C();
  if (v0 <= 0x3F)
  {
    sub_217A608E0();
    if (v1 <= 0x3F)
    {
      sub_217A606C4(319, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
      if (v2 <= 0x3F)
      {
        sub_217A606C4(319, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4);
        if (v3 <= 0x3F)
        {
          sub_217A606C4(319, &qword_2811C85E8, sub_217B8C790, sub_217B8C7E8);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_217C7C52C()
{
  sub_217D8899C();
  if (v0 <= 0x3F)
  {
    sub_217D889CC();
    if (v1 <= 0x3F)
    {
      sub_217C7C5E0();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_217C7C5E0()
{
  if (!qword_27CBA3088)
  {
    v0 = sub_217D898EC();
    if (!v1)
    {
      atomic_store(v0, &qword_27CBA3088);
    }
  }
}

unint64_t sub_217C7C644()
{
  result = qword_27CBA3090;
  if (!qword_27CBA3090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA3090);
  }

  return result;
}

unint64_t sub_217C7C69C()
{
  result = qword_27CBA3098;
  if (!qword_27CBA3098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA3098);
  }

  return result;
}

unint64_t sub_217C7C6F4()
{
  result = qword_27CBA30A0;
  if (!qword_27CBA30A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA30A0);
  }

  return result;
}

uint64_t sub_217C7C748(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746144746E657665 && a2 == 0xE900000000000061;
  if (v4 || (sub_217D89D4C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x74614464656D6974 && a2 == 0xE900000000000061 || (sub_217D89D4C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6174614464656566 && a2 == 0xE800000000000000 || (sub_217D89D4C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x74614470756F7267 && a2 == 0xE900000000000061 || (sub_217D89D4C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000217DD16E0 == a2)
  {

    return 4;
  }

  else
  {
    v6 = sub_217D89D4C();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t AudioUpsellVariantData.preferredUpsellVariantID.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t AudioUpsellVariantData.preferredUpsellVariantID.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t sub_217C7C9C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000018 && 0x8000000217DD1700 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_217D89D4C();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_217C7CA58(uint64_t a1)
{
  v2 = sub_217C7CC1C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217C7CA94(uint64_t a1)
{
  v2 = sub_217C7CC1C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AudioUpsellVariantData.encode(to:)(void *a1)
{
  sub_217C7CDF4(0, &qword_27CBA30A8, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v8 = &v13 - v7;
  v9 = *v1;
  v10 = v1[1];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217C7CC1C();
  sub_217D89E7C();
  sub_217D89C6C();
  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_217C7CC1C()
{
  result = qword_27CBA30B0;
  if (!qword_27CBA30B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA30B0);
  }

  return result;
}

uint64_t AudioUpsellVariantData.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_217C7CDF4(0, &qword_27CBA30B8, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v16 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217C7CC1C();
  sub_217D89E5C();
  if (!v2)
  {
    v12 = sub_217D89B8C();
    v14 = v13;
    (*(v7 + 8))(v10, v6);
    *a2 = v12;
    a2[1] = v14;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_217C7CDF4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217C7CC1C();
    v7 = a3(a1, &type metadata for AudioUpsellVariantData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_217C7CE5C()
{
  result = qword_27CBA30C0;
  if (!qword_27CBA30C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA30C0);
  }

  return result;
}

unint64_t sub_217C7CEB4()
{
  result = qword_27CBA30C8;
  if (!qword_27CBA30C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA30C8);
  }

  return result;
}

uint64_t sub_217C7CF20(void *a1)
{
  sub_217C7CDF4(0, &qword_27CBA30A8, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v8 = &v13 - v7;
  v9 = *v1;
  v10 = v1[1];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217C7CC1C();
  sub_217D89E7C();
  sub_217D89C6C();
  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_217C7D090()
{
  result = qword_27CBA30D0;
  if (!qword_27CBA30D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA30D0);
  }

  return result;
}

unint64_t sub_217C7D0E8()
{
  result = qword_27CBA30D8;
  if (!qword_27CBA30D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA30D8);
  }

  return result;
}

unint64_t sub_217C7D140()
{
  result = qword_27CBA30E0;
  if (!qword_27CBA30E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA30E0);
  }

  return result;
}

void __swiftcall ArticleExposureContextData.init(surfacedByTopicID:surfacedByChannelID:surfacedByArticleListIDs:)(NewsAnalytics::ArticleExposureContextData *__return_ptr retstr, Swift::String_optional surfacedByTopicID, Swift::String_optional surfacedByChannelID, Swift::OpaquePointer_optional surfacedByArticleListIDs)
{
  retstr->surfacedByTopicID = surfacedByTopicID;
  retstr->surfacedByChannelID = surfacedByChannelID;
  retstr->surfacedByArticleListIDs.value._rawValue = surfacedByArticleListIDs.value._rawValue;
}

uint64_t ArticleExposureContextData.surfacedByTopicID.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t ArticleExposureContextData.surfacedByTopicID.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t ArticleExposureContextData.surfacedByChannelID.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t ArticleExposureContextData.surfacedByChannelID.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t ArticleExposureContextData.surfacedByArticleListIDs.setter(uint64_t a1)
{
  v3 = *(v1 + 32);

  *(v1 + 32) = a1;
  return result;
}

unint64_t sub_217C7D310()
{
  v1 = 0xD000000000000013;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000018;
  }

  if (*v0)
  {
    result = v1;
  }

  else
  {
    result = 0xD000000000000011;
  }

  *v0;
  return result;
}

uint64_t sub_217C7D368@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_217C7DB1C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_217C7D390(uint64_t a1)
{
  v2 = sub_217C7D608();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217C7D3CC(uint64_t a1)
{
  v2 = sub_217C7D608();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ArticleExposureContextData.encode(to:)(void *a1)
{
  sub_217C7D90C(0, &qword_2811BC598, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v8 = &v16 - v7;
  v9 = *v1;
  v10 = v1[1];
  v11 = v1[2];
  v18 = v1[3];
  v19 = v11;
  v17 = v1[4];
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217C7D608();
  sub_217D89E7C();
  v24 = 0;
  v13 = v20;
  sub_217D89C0C();
  if (!v13)
  {
    v14 = v17;
    v23 = 1;
    sub_217D89C0C();
    v21 = v14;
    v22 = 2;
    sub_217A55F8C();
    sub_217A55FDC(&qword_2811BCD48);
    sub_217D89C3C();
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_217C7D608()
{
  result = qword_2811BF148;
  if (!qword_2811BF148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BF148);
  }

  return result;
}

uint64_t ArticleExposureContextData.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_217C7D90C(0, &qword_2811BC950, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v20 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217C7D608();
  sub_217D89E5C();
  if (!v2)
  {
    v26 = 0;
    v12 = sub_217D89B2C();
    v15 = v14;
    v22 = v12;
    v25 = 1;
    v16 = sub_217D89B2C();
    v18 = v17;
    v21 = v16;
    sub_217A55F8C();
    v24 = 2;
    sub_217A55FDC(&qword_2811BCD38);
    sub_217D89B5C();
    (*(v7 + 8))(v10, v6);
    v19 = v23;
    *a2 = v22;
    a2[1] = v15;
    a2[2] = v21;
    a2[3] = v18;
    a2[4] = v19;
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_217C7D90C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217C7D608();
    v7 = a3(a1, &type metadata for ArticleExposureContextData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217C7D9A8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 40))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
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

unint64_t sub_217C7DA18()
{
  result = qword_27CBA30E8;
  if (!qword_27CBA30E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA30E8);
  }

  return result;
}

unint64_t sub_217C7DA70()
{
  result = qword_2811BF138;
  if (!qword_2811BF138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BF138);
  }

  return result;
}

unint64_t sub_217C7DAC8()
{
  result = qword_2811BF140;
  if (!qword_2811BF140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BF140);
  }

  return result;
}

uint64_t sub_217C7DB1C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000011 && 0x8000000217DD1720 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000217DCFC40 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000018 && 0x8000000217DD1740 == a2)
  {

    return 2;
  }

  else
  {
    v5 = sub_217D89D4C();

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

NewsAnalytics::BadgeOriginationType_optional __swiftcall BadgeOriginationType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_217D89B0C();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t BadgeOriginationType.rawValue.getter()
{
  v1 = 1937204590;
  if (*v0 != 1)
  {
    v1 = 0x7972756372656DLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E776F6E6B6E75;
  }
}

uint64_t sub_217C7DD10(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE400000000000000;
  v4 = 1937204590;
  if (v2 != 1)
  {
    v4 = 0x7972756372656DLL;
    v3 = 0xE700000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x6E776F6E6B6E75;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  v7 = 0xE400000000000000;
  v8 = 1937204590;
  if (*a2 != 1)
  {
    v8 = 0x7972756372656DLL;
    v7 = 0xE700000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x6E776F6E6B6E75;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE700000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_217D89D4C();
  }

  return v11 & 1;
}

unint64_t sub_217C7DE08()
{
  result = qword_27CBA30F0;
  if (!qword_27CBA30F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA30F0);
  }

  return result;
}

uint64_t sub_217C7DE5C()
{
  v1 = *v0;
  sub_217D89E1C();
  sub_217D895CC();

  return sub_217D89E3C();
}

uint64_t sub_217C7DEF8()
{
  *v0;
  *v0;
  sub_217D895CC();
}

uint64_t sub_217C7DF80()
{
  v1 = *v0;
  sub_217D89E1C();
  sub_217D895CC();

  return sub_217D89E3C();
}

uint64_t WindowData.frame.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t WindowData.frame.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t sub_217C7E140@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x656D617266 && a2 == 0xE500000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_217D89D4C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_217C7E1C4(uint64_t a1)
{
  v2 = sub_217C7E388();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217C7E200(uint64_t a1)
{
  v2 = sub_217C7E388();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t WindowData.encode(to:)(void *a1)
{
  sub_217C7E560(0, &qword_2811BC878, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v8 = &v13 - v7;
  v9 = *v1;
  v10 = v1[1];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217C7E388();
  sub_217D89E7C();
  sub_217D89C6C();
  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_217C7E388()
{
  result = qword_2811C7E60;
  if (!qword_2811C7E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C7E60);
  }

  return result;
}

uint64_t WindowData.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_217C7E560(0, &qword_2811BCB58, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v16 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217C7E388();
  sub_217D89E5C();
  if (!v2)
  {
    v12 = sub_217D89B8C();
    v14 = v13;
    (*(v7 + 8))(v10, v6);
    *a2 = v12;
    a2[1] = v14;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_217C7E560(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217C7E388();
    v7 = a3(a1, &type metadata for WindowData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217C7E5DC(void *a1)
{
  sub_217C7E560(0, &qword_2811BC878, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v8 = &v13 - v7;
  v9 = *v1;
  v10 = v1[1];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217C7E388();
  sub_217D89E7C();
  sub_217D89C6C();
  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_217C7E74C()
{
  result = qword_27CBA30F8;
  if (!qword_27CBA30F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA30F8);
  }

  return result;
}

unint64_t sub_217C7E7A4()
{
  result = qword_2811C7E50;
  if (!qword_2811C7E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C7E50);
  }

  return result;
}

unint64_t sub_217C7E7FC()
{
  result = qword_2811C7E58;
  if (!qword_2811C7E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C7E58);
  }

  return result;
}

uint64_t MediaEngagementCompletedData.init(mediaTimePlayed:mediaPlayLocation:)@<X0>(uint64_t result@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  *a3 = result;
  *(a3 + 8) = v3;
  return result;
}

unint64_t sub_217C7E8D0()
{
  if (*v0)
  {
    result = 0xD000000000000011;
  }

  else
  {
    result = 0x6D6954616964656DLL;
  }

  *v0;
  return result;
}

uint64_t sub_217C7E91C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6D6954616964656DLL && a2 == 0xEF646579616C5065;
  if (v6 || (sub_217D89D4C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000217DD1760 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_217D89D4C();

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

uint64_t sub_217C7EA08(uint64_t a1)
{
  v2 = sub_217C7EC18();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217C7EA44(uint64_t a1)
{
  v2 = sub_217C7EC18();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MediaEngagementCompletedData.encode(to:)(void *a1)
{
  sub_217C7EE8C(0, &qword_27CBA3100, MEMORY[0x277D84538]);
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  v9 = &v13 - v8;
  v10 = *v1;
  v14 = *(v1 + 8);
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217C7EC18();
  sub_217D89E7C();
  v17 = 0;
  sub_217D89CCC();
  if (!v2)
  {
    v16 = v14;
    v15 = 1;
    sub_217C7EC6C();
    sub_217D89CAC();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_217C7EC18()
{
  result = qword_27CBA3108;
  if (!qword_27CBA3108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA3108);
  }

  return result;
}

unint64_t sub_217C7EC6C()
{
  result = qword_27CBA3110;
  if (!qword_27CBA3110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA3110);
  }

  return result;
}

uint64_t MediaEngagementCompletedData.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_217C7EE8C(0, &qword_27CBA3118, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v15 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217C7EC18();
  sub_217D89E5C();
  if (!v2)
  {
    v18 = 0;
    v12 = sub_217D89BEC();
    v16 = 1;
    sub_217C7EEF0();
    sub_217D89BCC();
    (*(v7 + 8))(v10, v6);
    v14 = v17;
    *a2 = v12;
    *(a2 + 8) = v14;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_217C7EE8C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217C7EC18();
    v7 = a3(a1, &type metadata for MediaEngagementCompletedData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_217C7EEF0()
{
  result = qword_27CBA3120;
  if (!qword_27CBA3120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA3120);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MediaEngagementCompletedData(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 9))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for MediaEngagementCompletedData(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_217C7F028()
{
  result = qword_27CBA3128;
  if (!qword_27CBA3128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA3128);
  }

  return result;
}

unint64_t sub_217C7F080()
{
  result = qword_27CBA3130;
  if (!qword_27CBA3130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA3130);
  }

  return result;
}

unint64_t sub_217C7F0D8()
{
  result = qword_27CBA3138;
  if (!qword_27CBA3138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA3138);
  }

  return result;
}

uint64_t sub_217C7F1F4()
{
  v0 = sub_217D8867C();
  __swift_allocate_value_buffer(v0, qword_27CBA3170);
  __swift_project_value_buffer(v0, qword_27CBA3170);
  return sub_217D8866C();
}

uint64_t ReportAConcernEvent.eventData.setter(uint64_t a1)
{
  sub_217A6018C();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t ReportAConcernEvent.concernData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ReportAConcernEvent(0) + 20);
  sub_217C7F650(0, &qword_27CBA3188, sub_217C7F3F8, sub_217C7F44C);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

unint64_t sub_217C7F3F8()
{
  result = qword_27CBA3190;
  if (!qword_27CBA3190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA3190);
  }

  return result;
}

unint64_t sub_217C7F44C()
{
  result = qword_27CBA3198;
  if (!qword_27CBA3198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA3198);
  }

  return result;
}

uint64_t ReportAConcernEvent.concernData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ReportAConcernEvent(0) + 20);
  sub_217C7F650(0, &qword_27CBA3188, sub_217C7F3F8, sub_217C7F44C);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ReportAConcernEvent.articleData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ReportAConcernEvent(0) + 24);
  sub_217C7F650(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void sub_217C7F650(uint64_t a1, unint64_t *a2, void (*a3)(void), void (*a4)(void))
{
  if (!*a2)
  {
    a3();
    a4();
    v6 = sub_217D8829C();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t ReportAConcernEvent.articleData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ReportAConcernEvent(0) + 24);
  sub_217C7F650(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ReportAConcernEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_217A6018C();
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for ReportAConcernEvent(0);
  v5 = *(v4 + 20);
  sub_217C7F650(0, &qword_27CBA3188, sub_217C7F3F8, sub_217C7F44C);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = *(v4 + 24);
  sub_217C7F650(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C);
  v9 = *(*(v8 - 8) + 104);

  return v9(a1 + v7, v2, v8);
}

uint64_t ReportAConcernEvent.Model.concernData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ReportAConcernEvent.Model(0) + 20);
  v5 = *(v3 + 8);
  v4 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 8) = v5;
  *(a1 + 16) = v4;
}

uint64_t ReportAConcernEvent.Model.articleData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ReportAConcernEvent.Model(0) + 24);
  v4 = *(v3 + 80);
  v5 = *(v3 + 112);
  v22 = *(v3 + 96);
  v23[0] = v5;
  v6 = *(v3 + 16);
  v7 = *(v3 + 48);
  v18 = *(v3 + 32);
  v8 = v18;
  v19 = v7;
  v9 = *(v3 + 48);
  v10 = *(v3 + 80);
  v20 = *(v3 + 64);
  v11 = v20;
  v21 = v10;
  v12 = *(v3 + 16);
  v17[0] = *v3;
  v13 = v17[0];
  v17[1] = v12;
  v14 = *(v3 + 112);
  *(a1 + 96) = v22;
  *(a1 + 112) = v14;
  *(a1 + 32) = v8;
  *(a1 + 48) = v9;
  *(a1 + 64) = v11;
  *(a1 + 80) = v4;
  *(v23 + 15) = *(v3 + 127);
  *(a1 + 127) = *(v3 + 127);
  *a1 = v13;
  *(a1 + 16) = v6;
  return sub_217AD1630(v17, v16);
}

__n128 ReportAConcernEvent.Model.init(eventData:concernData:articleData:)@<Q0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *a2;
  v8 = *(a2 + 1);
  v9 = *(a2 + 2);
  v10 = sub_217D8899C();
  (*(*(v10 - 8) + 32))(a4, a1, v10);
  v11 = type metadata accessor for ReportAConcernEvent.Model(0);
  v12 = a4 + *(v11 + 20);
  *v12 = v7;
  *(v12 + 8) = v8;
  *(v12 + 16) = v9;
  v13 = a4 + *(v11 + 24);
  v14 = *(a3 + 112);
  *(v13 + 96) = *(a3 + 96);
  *(v13 + 112) = v14;
  *(v13 + 127) = *(a3 + 127);
  v15 = *(a3 + 48);
  *(v13 + 32) = *(a3 + 32);
  *(v13 + 48) = v15;
  v16 = *(a3 + 80);
  *(v13 + 64) = *(a3 + 64);
  *(v13 + 80) = v16;
  result = *(a3 + 16);
  *v13 = *a3;
  *(v13 + 16) = result;
  return result;
}

uint64_t sub_217C7FB30()
{
  v1 = 0x446E7265636E6F63;
  if (*v0 != 1)
  {
    v1 = 0x44656C6369747261;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x746144746E657665;
  }
}

uint64_t sub_217C7FBA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_217C80A14(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_217C7FBC8(uint64_t a1)
{
  v2 = sub_217C7FF1C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217C7FC04(uint64_t a1)
{
  v2 = sub_217C7FF1C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ReportAConcernEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_217C803B0(0, &qword_27CBA31A0, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = v26 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217C7FF1C();
  sub_217D89E7C();
  LOBYTE(v37[0]) = 0;
  sub_217D8899C();
  sub_217A602A0(&unk_2811C8410);
  sub_217D89CAC();
  if (!v2)
  {
    v12 = type metadata accessor for ReportAConcernEvent.Model(0);
    v13 = (v3 + *(v12 + 20));
    v14 = *(v13 + 1);
    v15 = *(v13 + 2);
    v45 = *v13;
    v46 = v14;
    v47 = v15;
    v44 = 1;
    sub_217C7F44C();

    sub_217D89CAC();

    v16 = v3 + *(v12 + 24);
    v17 = *(v16 + 80);
    v18 = *(v16 + 112);
    v42 = *(v16 + 96);
    *v43 = v18;
    v19 = *(v16 + 16);
    v20 = *(v16 + 48);
    v38 = *(v16 + 32);
    v39 = v20;
    v21 = *(v16 + 48);
    v22 = *(v16 + 80);
    v40 = *(v16 + 64);
    v41 = v22;
    v23 = *(v16 + 16);
    v37[0] = *v16;
    v37[1] = v23;
    v24 = *(v16 + 112);
    v35 = v42;
    v36[0] = v24;
    v31 = v38;
    v32 = v21;
    v33 = v40;
    v34 = v17;
    *&v43[15] = *(v16 + 127);
    *(v36 + 15) = *(v16 + 127);
    v29 = v37[0];
    v30 = v19;
    v28 = 2;
    sub_217AD1630(v37, v26);
    sub_217ACF52C();
    sub_217D89CAC();
    v26[6] = v35;
    *v27 = v36[0];
    *&v27[15] = *(v36 + 15);
    v26[2] = v31;
    v26[3] = v32;
    v26[4] = v33;
    v26[5] = v34;
    v26[0] = v29;
    v26[1] = v30;
    sub_217AD2864(v26);
  }

  return (*(v7 + 8))(v10, v6);
}

unint64_t sub_217C7FF1C()
{
  result = qword_27CBA31A8;
  if (!qword_27CBA31A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA31A8);
  }

  return result;
}

uint64_t ReportAConcernEvent.Model.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v35 = sub_217D8899C();
  v33 = *(v35 - 8);
  v4 = *(v33 + 64);
  MEMORY[0x28223BE20](v35);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217C803B0(0, &qword_27CBA31B0, MEMORY[0x277D844C8]);
  v34 = v7;
  v32 = *(v7 - 8);
  v8 = *(v32 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v28 - v9;
  v11 = type metadata accessor for ReportAConcernEvent.Model(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217C7FF1C();
  sub_217D89E5C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v16 = v32;
  v29 = v11;
  v30 = v14;
  v17 = v33;
  v36[0] = 0;
  sub_217A602A0(&qword_2811C8408);
  v18 = v34;
  sub_217D89BCC();
  (*(v17 + 32))(v30, v6, v35);
  v43 = 1;
  sub_217C7F3F8();
  sub_217D89BCC();
  v19 = v29;
  v20 = &v30[*(v29 + 20)];
  *v20 = v36[0];
  *(v20 + 8) = *&v36[8];
  v43 = 2;
  sub_217ACF4D8();
  sub_217D89BCC();
  (*(v16 + 8))(v10, v18);
  v21 = v30;
  v22 = &v30[*(v19 + 24)];
  v23 = v42[0];
  *(v22 + 6) = v41;
  *(v22 + 7) = v23;
  *(v22 + 127) = *(v42 + 15);
  v24 = v38;
  *(v22 + 2) = v37;
  *(v22 + 3) = v24;
  v25 = v40;
  *(v22 + 4) = v39;
  *(v22 + 5) = v25;
  v26 = *&v36[16];
  *v22 = *v36;
  *(v22 + 1) = v26;
  sub_217C80414(v21, v31);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_217C80478(v21);
}

void sub_217C803B0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217C7FF1C();
    v7 = a3(a1, &type metadata for ReportAConcernEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217C80414(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ReportAConcernEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_217C80478(uint64_t a1)
{
  v2 = type metadata accessor for ReportAConcernEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_217C805AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *MEMORY[0x277CEACF8];
  sub_217A6018C();
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = *(a1 + 20);
  sub_217C7F650(0, &qword_27CBA3188, sub_217C7F3F8, sub_217C7F44C);
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = *(a1 + 24);
  sub_217C7F650(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C);
  v10 = *(*(v9 - 8) + 104);

  return v10(a2 + v8, v4, v9);
}

void sub_217C80744()
{
  sub_217A6018C();
  if (v0 <= 0x3F)
  {
    sub_217C7F650(319, &qword_27CBA3188, sub_217C7F3F8, sub_217C7F44C);
    if (v1 <= 0x3F)
    {
      sub_217C7F650(319, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_217C80878()
{
  result = sub_217D8899C();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_217C80910()
{
  result = qword_27CBA31D8;
  if (!qword_27CBA31D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA31D8);
  }

  return result;
}

unint64_t sub_217C80968()
{
  result = qword_27CBA31E0;
  if (!qword_27CBA31E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA31E0);
  }

  return result;
}

unint64_t sub_217C809C0()
{
  result = qword_27CBA31E8;
  if (!qword_27CBA31E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA31E8);
  }

  return result;
}

uint64_t sub_217C80A14(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746144746E657665 && a2 == 0xE900000000000061;
  if (v4 || (sub_217D89D4C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x446E7265636E6F63 && a2 == 0xEB00000000617461 || (sub_217D89D4C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x44656C6369747261 && a2 == 0xEB00000000617461)
  {

    return 2;
  }

  else
  {
    v6 = sub_217D89D4C();

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

uint64_t sub_217C80B8C(uint64_t a1)
{
  v2 = sub_217C80D60();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217C80BC8(uint64_t a1)
{
  v2 = sub_217C80D60();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t EmailShareUserActionData.encode(to:)(void *a1)
{
  sub_217C80FA0(0, &qword_27CBA31F0, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v8 = &v12 - v7;
  v9 = *v1;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217C80D60();
  sub_217D89E7C();
  v13 = v9;
  sub_217C80DB4();
  sub_217D89CAC();
  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_217C80D60()
{
  result = qword_27CBA31F8;
  if (!qword_27CBA31F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA31F8);
  }

  return result;
}

unint64_t sub_217C80DB4()
{
  result = qword_27CBA3200;
  if (!qword_27CBA3200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA3200);
  }

  return result;
}

uint64_t EmailShareUserActionData.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  sub_217C80FA0(0, &qword_27CBA3208, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v13 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217C80D60();
  sub_217D89E5C();
  if (!v2)
  {
    sub_217C81004();
    sub_217D89BCC();
    (*(v7 + 8))(v10, v6);
    *a2 = v14;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_217C80FA0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217C80D60();
    v7 = a3(a1, &type metadata for EmailShareUserActionData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_217C81004()
{
  result = qword_27CBA3210;
  if (!qword_27CBA3210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA3210);
  }

  return result;
}

unint64_t sub_217C8105C()
{
  result = qword_27CBA3218;
  if (!qword_27CBA3218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA3218);
  }

  return result;
}

unint64_t sub_217C810B4()
{
  result = qword_27CBA3220;
  if (!qword_27CBA3220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA3220);
  }

  return result;
}

unint64_t sub_217C8115C()
{
  result = qword_27CBA3228;
  if (!qword_27CBA3228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA3228);
  }

  return result;
}

unint64_t sub_217C811B4()
{
  result = qword_27CBA3230;
  if (!qword_27CBA3230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA3230);
  }

  return result;
}

unint64_t sub_217C8120C()
{
  result = qword_27CBA3238;
  if (!qword_27CBA3238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA3238);
  }

  return result;
}

uint64_t RecipeScienceData.rapidUpdatePersonalizationData.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t RecipeScienceData.rapidUpdatePersonalizationData.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

NewsAnalytics::RecipeScienceData __swiftcall RecipeScienceData.init(personalizationScore:rapidUpdatePersonalizationData:)(Swift::Double personalizationScore, Swift::String_optional rapidUpdatePersonalizationData)
{
  *v2 = personalizationScore;
  *(v2 + 8) = rapidUpdatePersonalizationData;
  result.rapidUpdatePersonalizationData = rapidUpdatePersonalizationData;
  result.personalizationScore = personalizationScore;
  return result;
}

unint64_t sub_217C8132C()
{
  if (*v0)
  {
    result = 0xD00000000000001ELL;
  }

  else
  {
    result = 0xD000000000000014;
  }

  *v0;
  return result;
}

uint64_t sub_217C8136C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000014 && 0x8000000217DCE8E0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0xD00000000000001ELL && 0x8000000217DD1780 == a2)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_217D89D4C();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t sub_217C81450(uint64_t a1)
{
  v2 = sub_217C81650();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217C8148C(uint64_t a1)
{
  v2 = sub_217C81650();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t RecipeScienceData.encode(to:)(void *a1)
{
  sub_217C81880(0, &qword_2811BC6E8, MEMORY[0x277D84538]);
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  v9 = &v14 - v8;
  v10 = *v1;
  v11 = v1[2];
  v14 = v1[1];
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217C81650();
  sub_217D89E7C();
  v16 = 0;
  sub_217D89C8C();
  if (!v2)
  {
    v15 = 1;
    sub_217D89C0C();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_217C81650()
{
  result = qword_2811C4388[0];
  if (!qword_2811C4388[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2811C4388);
  }

  return result;
}

uint64_t RecipeScienceData.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  sub_217C81880(0, &qword_27CBA3240, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v18[-v9];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217C81650();
  sub_217D89E5C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v18[15] = 0;
  sub_217D89BAC();
  v13 = v12;
  v18[14] = 1;
  v14 = sub_217D89B2C();
  v16 = v15;
  (*(v7 + 8))(v10, v6);
  *a2 = v13;
  a2[1] = v14;
  a2[2] = v16;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_217C81880(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217C81650();
    v7 = a3(a1, &type metadata for RecipeScienceData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_217C818E8()
{
  result = qword_2811C4368;
  if (!qword_2811C4368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C4368);
  }

  return result;
}

unint64_t sub_217C81940()
{
  result = qword_2811C4370;
  if (!qword_2811C4370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C4370);
  }

  return result;
}

unint64_t sub_217C819E8()
{
  result = qword_27CBA3248;
  if (!qword_27CBA3248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA3248);
  }

  return result;
}

unint64_t sub_217C81A40()
{
  result = qword_2811C4378;
  if (!qword_2811C4378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C4378);
  }

  return result;
}

unint64_t sub_217C81A98()
{
  result = qword_2811C4380;
  if (!qword_2811C4380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C4380);
  }

  return result;
}

NewsAnalytics::SubscriptionOrigin_optional __swiftcall SubscriptionOrigin.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_217D89B0C();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t SubscriptionOrigin.rawValue.getter()
{
  v1 = 0x6E776F6E6B6E75;
  v2 = 0x65726F7473707061;
  if (*v0 != 2)
  {
    v2 = 6448503;
  }

  if (*v0)
  {
    v1 = 1937204590;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_217C81BC4()
{
  result = qword_27CBA3250;
  if (!qword_27CBA3250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA3250);
  }

  return result;
}

uint64_t sub_217C81C18()
{
  v1 = *v0;
  sub_217D89E1C();
  sub_217D895CC();

  return sub_217D89E3C();
}

uint64_t sub_217C81CCC()
{
  *v0;
  *v0;
  *v0;
  sub_217D895CC();
}

uint64_t sub_217C81D6C()
{
  v1 = *v0;
  sub_217D89E1C();
  sub_217D895CC();

  return sub_217D89E3C();
}

void sub_217C81E28(uint64_t *a1@<X8>)
{
  v2 = 0xE700000000000000;
  v3 = 0x6E776F6E6B6E75;
  v4 = 0xE800000000000000;
  v5 = 0x65726F7473707061;
  if (*v1 != 2)
  {
    v5 = 6448503;
    v4 = 0xE300000000000000;
  }

  if (*v1)
  {
    v3 = 1937204590;
    v2 = 0xE400000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

unint64_t sub_217C81F58()
{
  result = qword_2811C2E30;
  if (!qword_2811C2E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C2E30);
  }

  return result;
}

char *sub_217C81FC4(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void (*a8)(uint64_t, uint64_t))
{
  v52 = a4;
  v53 = a8;
  v55 = a5;
  v51 = a3;
  v58 = sub_217D87A4C();
  v12 = *(v58 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v58);
  v57 = &v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v50 = &v49 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v54 = &v49 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v49 - v21;
  MEMORY[0x28223BE20](v20);
  v24 = &v49 - v23;
  v26 = *(a1 + 16);
  v25 = *(a1 + 24);
  v56 = a1;
  v59 = v26;
  v60 = v25;

  MEMORY[0x21CEACC70](a6, a7);
  sub_217D8959C();

  sub_217D87A1C();

  v27 = sub_217B5ABE8(0, 1, 1, MEMORY[0x277D84F90]);
  v29 = *(v27 + 2);
  v28 = *(v27 + 3);
  if (v29 >= v28 >> 1)
  {
    v27 = sub_217B5ABE8(v28 > 1, v29 + 1, 1, v27);
  }

  v30 = *a2;
  v31 = a2[1];
  *(v27 + 2) = v29 + 1;
  v33 = *(v12 + 32);
  v32 = v12 + 32;
  v34 = (*(v32 + 48) + 32) & ~*(v32 + 48);
  v35 = *(v32 + 40);
  v36 = &v27[v34 + v35 * v29];
  v37 = v24;
  v38 = v33;
  v39 = v58;
  v33(v36, v37, v58);
  sub_217D87A1C();
  v41 = *(v27 + 2);
  v40 = *(v27 + 3);
  if (v41 >= v40 >> 1)
  {
    v27 = sub_217B5ABE8(v40 > 1, v41 + 1, 1, v27);
  }

  *(v27 + 2) = v41 + 1;
  v38(&v27[v34 + v41 * v35], v22, v39);
  if (v55 == 1)
  {
    v42 = v57;
  }

  else
  {
    v53(v51, v52);
    v42 = v57;
    if (v43)
    {
      sub_217D87A1C();

      v45 = *(v27 + 2);
      v44 = *(v27 + 3);
      if (v45 >= v44 >> 1)
      {
        v27 = sub_217B5ABE8(v44 > 1, v45 + 1, 1, v27);
      }

      *(v27 + 2) = v45 + 1;
      v38(&v27[v34 + v45 * v35], v54, v39);
    }
  }

  if (*(v56 + 32))
  {
    if (*(v56 + 32) == 1)
    {
      v42 = v50;
    }

    sub_217D87A1C();
    v47 = *(v27 + 2);
    v46 = *(v27 + 3);
    if (v47 >= v46 >> 1)
    {
      v27 = sub_217B5ABE8(v46 > 1, v47 + 1, 1, v27);
    }

    *(v27 + 2) = v47 + 1;
    v38(&v27[v34 + v47 * v35], v42, v39);
  }

  return v27;
}

void sub_217C8241C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v53 = a3;
  v52 = a2;
  v51 = sub_217D87A4C();
  v50 = *(v51 - 8);
  v4 = *(v50 + 64);
  MEMORY[0x28223BE20](v51);
  v54 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ArticleViewEvent.Model(0);
  v7 = *(*(v6 - 1) + 64);
  MEMORY[0x28223BE20](v6);
  v55 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217C82A54();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_217D881AC();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v49 - v16;
  sub_217BCC640();
  v19 = v18;
  v20 = *(v18 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v18);
  v23 = &v49 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v17, a1, v13);
  v24 = swift_dynamicCast();
  v25 = *(v20 + 56);
  if (v24)
  {
    v25(v12, 0, 1, v19);
    (*(v20 + 32))(v23, v12, v19);
    v26 = sub_217D8816C();
    v27 = v61;
    v28 = sub_217D887BC();
    if (v27)
    {
      (*(v20 + 8))(v23, v19);
    }

    else
    {
      v30 = v28;
      v31 = v29;

      v32 = sub_217D8796C();
      v33 = *(v32 + 48);
      v34 = *(v32 + 52);
      swift_allocObject();
      sub_217D8795C();
      sub_217C82AAC(&qword_2811C59B8, type metadata accessor for ArticleViewEvent.Model);
      sub_217D8794C();
      v61 = v31;

      sub_217D87A1C();
      v35 = sub_217B5ABE8(0, 1, 1, MEMORY[0x277D84F90]);
      v37 = v35[2];
      v36 = v35[3];
      v38 = v37 + 1;
      if (v37 >= v36 >> 1)
      {
        v49 = v37 + 1;
        v48 = sub_217B5ABE8(v36 > 1, v37 + 1, 1, v35);
        v38 = v49;
        v35 = v48;
      }

      v35[2] = v38;
      (*(v50 + 32))(v35 + ((*(v50 + 80) + 32) & ~*(v50 + 80)) + *(v50 + 72) * v37, v54, v51);
      v56 = v35;
      v39 = v55;
      v40 = &v55[v6[7]];
      *(v58 + 15) = *(v40 + 127);
      v41 = *(v40 + 7);
      v57[6] = *(v40 + 6);
      v58[0] = v41;
      v42 = *(v40 + 5);
      v57[4] = *(v40 + 4);
      v57[5] = v42;
      v43 = *(v40 + 3);
      v57[2] = *(v40 + 2);
      v57[3] = v43;
      v44 = *v40;
      v57[1] = *(v40 + 1);
      v57[0] = v44;
      v45 = &v55[v6[20]];
      v46 = *(v45 + 1);
      v59[0] = *v45;
      v59[1] = v46;
      v60 = *(v45 + 4);
      v47 = sub_217C81FC4(v57, v59, *&v55[v6[10]], *&v55[v6[10] + 8], *&v55[v6[10] + 16], v52, v53, sub_217C3294C);
      sub_217B0E7A0(v47);
      sub_217AE010C(v30, v61);
      sub_217C82AF4(v39, type metadata accessor for ArticleViewEvent.Model);
      (*(v20 + 8))(v23, v19);
    }
  }

  else
  {
    v25(v12, 1, 1, v19);
    sub_217C82AF4(v12, sub_217C82A54);
    sub_217B0F048();
    swift_allocError();
    swift_willThrow();
  }
}

void sub_217C82A54()
{
  if (!qword_2811C88F8)
  {
    sub_217BCC640();
    v0 = sub_217D898EC();
    if (!v1)
    {
      atomic_store(v0, &qword_2811C88F8);
    }
  }
}

uint64_t sub_217C82AAC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_217C82AF4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_217C82BCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6570795464656566 && a2 == 0xE800000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_217D89D4C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_217C82C54(uint64_t a1)
{
  v2 = sub_217C82E28();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217C82C90(uint64_t a1)
{
  v2 = sub_217C82E28();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AdFeedData.encode(to:)(void *a1)
{
  sub_217C83014(0, &qword_2811BC8B8, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v8 = &v12 - v7;
  v9 = *v1;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217C82E28();
  sub_217D89E7C();
  v13 = v9;
  sub_217B72604();
  sub_217D89CAC();
  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_217C82E28()
{
  result = qword_2811C8040;
  if (!qword_2811C8040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C8040);
  }

  return result;
}

uint64_t AdFeedData.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  sub_217C83014(0, &qword_27CBA3258, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v13 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217C82E28();
  sub_217D89E5C();
  if (!v2)
  {
    sub_217B728A4();
    sub_217D89BCC();
    (*(v7 + 8))(v10, v6);
    *a2 = v14;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_217C83014(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217C82E28();
    v7 = a3(a1, &type metadata for AdFeedData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for FeedType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE6)
  {
    goto LABEL_17;
  }

  if (a2 + 26 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 26) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 26;
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

      return (*a1 | (v4 << 8)) - 26;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 26;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x1B;
  v8 = v6 - 27;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for FeedType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 26 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 26) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE6)
  {
    v4 = 0;
  }

  if (a2 > 0xE5)
  {
    v5 = ((a2 - 230) >> 8) + 1;
    *result = a2 + 26;
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
    *result = a2 + 26;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_217C831FC()
{
  result = qword_27CBA3260;
  if (!qword_27CBA3260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA3260);
  }

  return result;
}

unint64_t sub_217C83254()
{
  result = qword_2811C8030;
  if (!qword_2811C8030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C8030);
  }

  return result;
}

unint64_t sub_217C832AC()
{
  result = qword_2811C8038;
  if (!qword_2811C8038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C8038);
  }

  return result;
}

uint64_t ANFComponentData.metadata.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t ANFComponentData.metadata.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t ANFComponentData.type.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t ANFComponentData.type.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t ANFComponentData.id.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t ANFComponentData.id.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t ANFComponentData.role.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return v1;
}

uint64_t ANFComponentData.role.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 56);

  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return result;
}

void __swiftcall ANFComponentData.init(metadata:type:id:role:)(NewsAnalytics::ANFComponentData *__return_ptr retstr, Swift::String metadata, Swift::String type, Swift::String id, Swift::String role)
{
  retstr->metadata = metadata;
  retstr->type = type;
  retstr->id = id;
  retstr->role = role;
}

uint64_t sub_217C8353C()
{
  v1 = 0x617461646174656DLL;
  v2 = 25705;
  if (*v0 != 2)
  {
    v2 = 1701605234;
  }

  if (*v0)
  {
    v1 = 1701869940;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_217C83598@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_217C83D9C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_217C835C0(uint64_t a1)
{
  v2 = sub_217C83818();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217C835FC(uint64_t a1)
{
  v2 = sub_217C83818();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ANFComponentData.encode(to:)(void *a1)
{
  sub_217C83B70(0, &qword_2811BC728, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v8 = v17 - v7;
  v9 = *v1;
  v10 = v1[1];
  v11 = v1[2];
  v17[5] = v1[3];
  v17[6] = v11;
  v12 = v1[4];
  v17[3] = v1[5];
  v17[4] = v12;
  v13 = v1[6];
  v17[1] = v1[7];
  v17[2] = v13;
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217C83818();
  sub_217D89E7C();
  v21 = 0;
  v15 = v17[7];
  sub_217D89C6C();
  if (!v15)
  {
    v20 = 1;
    sub_217D89C6C();
    v19 = 2;
    sub_217D89C6C();
    v18 = 3;
    sub_217D89C6C();
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_217C83818()
{
  result = qword_2811C5E68[0];
  if (!qword_2811C5E68[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2811C5E68);
  }

  return result;
}

uint64_t ANFComponentData.init(from:)@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_217C83B70(0, &qword_27CBA3268, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v26 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217C83818();
  sub_217D89E5C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v35[0]) = 0;
  v12 = sub_217D89B8C();
  v30 = v13;
  LOBYTE(v35[0]) = 1;
  v14 = sub_217D89B8C();
  v29 = v15;
  v27 = v14;
  LOBYTE(v35[0]) = 2;
  v26 = sub_217D89B8C();
  v28 = v16;
  v36 = 3;
  v17 = sub_217D89B8C();
  v19 = v18;
  (*(v7 + 8))(v10, v6);
  v20 = v30;
  *&v31 = v12;
  *(&v31 + 1) = v30;
  v22 = v27;
  v21 = v28;
  *&v32 = v27;
  *(&v32 + 1) = v29;
  *&v33 = v26;
  *(&v33 + 1) = v28;
  *&v34 = v17;
  *(&v34 + 1) = v19;
  v23 = v32;
  *a2 = v31;
  a2[1] = v23;
  v24 = v34;
  a2[2] = v33;
  a2[3] = v24;
  sub_217C83BD4(&v31, v35);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v35[0] = v12;
  v35[1] = v20;
  v35[2] = v22;
  v35[3] = v29;
  v35[4] = v26;
  v35[5] = v21;
  v35[6] = v17;
  v35[7] = v19;
  return sub_217C83C0C(v35);
}

void sub_217C83B70(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217C83818();
    v7 = a3(a1, &type metadata for ANFComponentData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_217C83C98()
{
  result = qword_27CBA3270;
  if (!qword_27CBA3270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA3270);
  }

  return result;
}

unint64_t sub_217C83CF0()
{
  result = qword_2811C5E58;
  if (!qword_2811C5E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C5E58);
  }

  return result;
}

unint64_t sub_217C83D48()
{
  result = qword_2811C5E60;
  if (!qword_2811C5E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C5E60);
  }

  return result;
}

uint64_t sub_217C83D9C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x617461646174656DLL && a2 == 0xE800000000000000;
  if (v4 || (sub_217D89D4C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701869940 && a2 == 0xE400000000000000 || (sub_217D89D4C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 25705 && a2 == 0xE200000000000000 || (sub_217D89D4C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 1701605234 && a2 == 0xE400000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_217D89D4C();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_217C83EF8()
{
  v0 = sub_217D881BC();
  __swift_allocate_value_buffer(v0, qword_27CBA3278);
  v1 = __swift_project_value_buffer(v0, qword_27CBA3278);
  *v1 = 0x7364612E6D6F63;
  *(v1 + 8) = 0xE700000000000000;
  *(v1 + 16) = 3;
  *(v1 + 24) = 0;
  v2 = *MEMORY[0x277CEACB0];
  v3 = *(*(v0 - 8) + 104);

  return v3();
}

uint64_t sub_217C83FE4()
{
  v0 = sub_217D8856C();
  __swift_allocate_value_buffer(v0, qword_27CBA3290);
  v1 = __swift_project_value_buffer(v0, qword_27CBA3290);
  v2 = *MEMORY[0x277CEADA8];
  v3 = *(*(v0 - 8) + 104);

  return v3(v1, v2, v0);
}

uint64_t sub_217C840A4()
{
  v0 = sub_217D8867C();
  __swift_allocate_value_buffer(v0, qword_27CBA32A8);
  __swift_project_value_buffer(v0, qword_27CBA32A8);
  return sub_217D8866C();
}

uint64_t InterstitialAdImpressionEvent.eventData.setter(uint64_t a1)
{
  sub_217A6018C();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t InterstitialAdImpressionEvent.timedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for InterstitialAdImpressionEvent(0) + 20);
  sub_217A608E0();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t InterstitialAdImpressionEvent.adUserData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for InterstitialAdImpressionEvent(0) + 24);
  sub_217C848A8(0, &qword_2811C8830, sub_217A5867C, sub_217A586D4);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t InterstitialAdImpressionEvent.adUserData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for InterstitialAdImpressionEvent(0) + 24);
  sub_217C848A8(0, &qword_2811C8830, sub_217A5867C, sub_217A586D4);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t InterstitialAdImpressionEvent.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for InterstitialAdImpressionEvent(0) + 28);
  sub_217C848A8(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t InterstitialAdImpressionEvent.userBundleSubscriptionContextData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for InterstitialAdImpressionEvent(0) + 28);
  sub_217C848A8(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t InterstitialAdImpressionEvent.adPlacementData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for InterstitialAdImpressionEvent(0) + 32);
  sub_217C848A8(0, &qword_2811C8710, sub_217B3CE30, sub_217B3CE84);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t InterstitialAdImpressionEvent.adPlacementData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for InterstitialAdImpressionEvent(0) + 32);
  sub_217C848A8(0, &qword_2811C8710, sub_217B3CE30, sub_217B3CE84);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t InterstitialAdImpressionEvent.adFeedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for InterstitialAdImpressionEvent(0) + 36);
  sub_217C848A8(0, &qword_2811C8840, sub_217A5BD70, sub_217A5BFF4);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void sub_217C848A8(uint64_t a1, unint64_t *a2, void (*a3)(void), void (*a4)(void))
{
  if (!*a2)
  {
    a3();
    a4();
    v6 = sub_217D8829C();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t InterstitialAdImpressionEvent.adFeedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for InterstitialAdImpressionEvent(0) + 36);
  sub_217C848A8(0, &qword_2811C8840, sub_217A5BD70, sub_217A5BFF4);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t InterstitialAdImpressionEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_217A6018C();
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for InterstitialAdImpressionEvent(0);
  v5 = v4[5];
  sub_217A608E0();
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = v4[6];
  sub_217C848A8(0, &qword_2811C8830, sub_217A5867C, sub_217A586D4);
  (*(*(v8 - 8) + 104))(a1 + v7, v2, v8);
  v9 = v4[7];
  sub_217C848A8(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  (*(*(v10 - 8) + 104))(a1 + v9, v2, v10);
  v11 = v4[8];
  sub_217C848A8(0, &qword_2811C8710, sub_217B3CE30, sub_217B3CE84);
  (*(*(v12 - 8) + 104))(a1 + v11, v2, v12);
  v13 = v4[9];
  v14 = *MEMORY[0x277CEACF0];
  sub_217C848A8(0, &qword_2811C8840, sub_217A5BD70, sub_217A5BFF4);
  v16 = *(*(v15 - 8) + 104);

  return v16(a1 + v13, v14, v15);
}

uint64_t sub_217C84D18@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a1(0) + 20);
  v7 = a2(0);
  v8 = *(*(v7 - 8) + 16);

  return v8(a3, v3 + v6, v7);
}

uint64_t InterstitialAdImpressionEvent.Model.adUserData.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for InterstitialAdImpressionEvent.Model(0) + 24));
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;
}

uint64_t InterstitialAdImpressionEvent.Model.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for InterstitialAdImpressionEvent.Model(0) + 28));
  v4 = v3[2];
  v10 = v3[1];
  v5 = v10;
  v11 = v4;
  v12 = *(v3 + 48);
  v6 = v12;
  v9 = *v3;
  *a1 = v9;
  *(a1 + 16) = v5;
  *(a1 + 32) = v4;
  *(a1 + 48) = v6;
  return sub_217ACC004(&v9, v8);
}

uint64_t InterstitialAdImpressionEvent.Model.adPlacementData.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for InterstitialAdImpressionEvent.Model(0) + 32));
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;
}

uint64_t InterstitialAdImpressionEvent.Model.adFeedData.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for InterstitialAdImpressionEvent.Model(0);
  *a1 = *(v1 + *(result + 36));
  return result;
}

__n128 InterstitialAdImpressionEvent.Model.init(eventData:timedData:adUserData:userBundleSubscriptionContextData:adPlacementData:adFeedData:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, char *a6@<X5>, uint64_t a7@<X8>)
{
  v11 = *a3;
  v12 = a3[1];
  v13 = *a5;
  v14 = a5[1];
  v15 = *a6;
  v16 = sub_217D8899C();
  (*(*(v16 - 8) + 32))(a7, a1, v16);
  v17 = type metadata accessor for InterstitialAdImpressionEvent.Model(0);
  v18 = v17[5];
  v19 = sub_217D889CC();
  (*(*(v19 - 8) + 32))(a7 + v18, a2, v19);
  v20 = (a7 + v17[6]);
  *v20 = v11;
  v20[1] = v12;
  v21 = a7 + v17[7];
  v22 = *(a4 + 16);
  *v21 = *a4;
  *(v21 + 16) = v22;
  result = *(a4 + 32);
  *(v21 + 32) = result;
  *(v21 + 48) = *(a4 + 48);
  v24 = (a7 + v17[8]);
  *v24 = v13;
  v24[1] = v14;
  *(a7 + v17[9]) = v15;
  return result;
}

unint64_t sub_217C85010()
{
  v1 = *v0;
  v2 = 0x746144746E657665;
  v3 = 0xD000000000000021;
  v4 = 0x6D6563616C506461;
  if (v1 != 4)
  {
    v4 = 0x6144646565466461;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x74614464656D6974;
  if (v1 != 1)
  {
    v5 = 0x6144726573556461;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_217C850E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_217C86598(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_217C8510C(uint64_t a1)
{
  v2 = sub_217C855AC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217C85148(uint64_t a1)
{
  v2 = sub_217C855AC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t InterstitialAdImpressionEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_217C85CBC(0, &qword_27CBA32C0, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v23 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217C855AC();
  sub_217D89E7C();
  LOBYTE(v34[0]) = 0;
  sub_217D8899C();
  sub_217A60258(&unk_2811C8410, MEMORY[0x277CEAEB0]);
  sub_217D89CAC();
  if (!v2)
  {
    v12 = type metadata accessor for InterstitialAdImpressionEvent.Model(0);
    v13 = v12[5];
    LOBYTE(v34[0]) = 1;
    sub_217D889CC();
    sub_217A60258(&qword_2811C83F8, MEMORY[0x277CEAED0]);
    sub_217D89CAC();
    v14 = (v3 + v12[6]);
    v15 = v14[1];
    v37 = *v14;
    v38 = v15;
    v36 = 2;
    sub_217A586D4();

    sub_217D89CAC();

    v16 = (v3 + v12[7]);
    v17 = v16[1];
    v34[0] = *v16;
    v34[1] = v17;
    v19 = *v16;
    v18 = v16[1];
    v34[2] = v16[2];
    v35 = *(v16 + 48);
    v30 = v19;
    v31 = v18;
    v32 = v16[2];
    v33 = *(v16 + 48);
    v29 = 3;
    sub_217ACC004(v34, v27);
    sub_217A55B98();
    sub_217D89CAC();
    v27[0] = v30;
    v27[1] = v31;
    v27[2] = v32;
    v28 = v33;
    sub_217ACC69C(v27);
    v20 = (v3 + v12[8]);
    v21 = v20[1];
    v25 = *v20;
    v26 = v21;
    v24 = 4;
    sub_217B3CE84();

    sub_217D89CAC();

    LOBYTE(v25) = *(v3 + v12[9]);
    v24 = 5;
    sub_217A5BFF4();
    sub_217D89C3C();
  }

  return (*(v7 + 8))(v10, v6);
}

unint64_t sub_217C855AC()
{
  result = qword_27CBA32C8;
  if (!qword_27CBA32C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA32C8);
  }

  return result;
}

uint64_t InterstitialAdImpressionEvent.Model.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v35 = sub_217D889CC();
  v33 = *(v35 - 8);
  v3 = *(v33 + 64);
  MEMORY[0x28223BE20](v35);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_217D8899C();
  v34 = *(v6 - 8);
  v7 = *(v34 + 64);
  MEMORY[0x28223BE20](v6);
  v37 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217C85CBC(0, &qword_27CBA32D0, MEMORY[0x277D844C8]);
  v39 = v9;
  v36 = *(v9 - 8);
  v10 = *(v36 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v31 - v11;
  v13 = type metadata accessor for InterstitialAdImpressionEvent.Model(0);
  v14 = *(*(v13 - 1) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217C855AC();
  v38 = v12;
  v18 = v40;
  sub_217D89E5C();
  if (v18)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v19 = v5;
  v20 = v35;
  LOBYTE(v43) = 0;
  sub_217A60258(&qword_2811C8408, MEMORY[0x277CEAEB0]);
  sub_217D89BCC();
  v21 = *(v34 + 32);
  v40 = v6;
  v21(v16, v37, v6);
  LOBYTE(v43) = 1;
  sub_217A60258(&qword_2811C83F0, MEMORY[0x277CEAED0]);
  sub_217D89BCC();
  (*(v33 + 32))(&v16[v13[5]], v19, v20);
  LOBYTE(v41) = 2;
  sub_217A5867C();
  v37 = 0;
  sub_217D89BCC();
  v22 = a1;
  v23 = *(&v43 + 1);
  v24 = &v16[v13[6]];
  *v24 = v43;
  *(v24 + 1) = v23;
  v48 = 3;
  sub_217A54D08();
  sub_217D89BCC();
  v25 = v36;
  v26 = &v16[v13[7]];
  v27 = v44;
  *v26 = v43;
  *(v26 + 1) = v27;
  *(v26 + 2) = v45;
  v26[48] = v46;
  v47 = 4;
  sub_217B3CE30();
  sub_217D89BCC();
  v28 = v42;
  v29 = &v16[v13[8]];
  *v29 = v41;
  *(v29 + 1) = v28;
  v47 = 5;
  sub_217A5BD70();
  sub_217D89B5C();
  (*(v25 + 8))(v38, v39);
  v16[v13[9]] = v41;
  sub_217C85D20(v16, v32);
  __swift_destroy_boxed_opaque_existential_1(v22);
  return sub_217C85D84(v16);
}

void sub_217C85CBC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217C855AC();
    v7 = a3(a1, &type metadata for InterstitialAdImpressionEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217C85D20(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InterstitialAdImpressionEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_217C85D84(uint64_t a1)
{
  v2 = type metadata accessor for InterstitialAdImpressionEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_217C85EB8@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *MEMORY[0x277CEACF8];
  sub_217A6018C();
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  sub_217A608E0();
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = a1[6];
  sub_217C848A8(0, &qword_2811C8830, sub_217A5867C, sub_217A586D4);
  (*(*(v9 - 8) + 104))(a2 + v8, v4, v9);
  v10 = a1[7];
  sub_217C848A8(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  (*(*(v11 - 8) + 104))(a2 + v10, v4, v11);
  v12 = a1[8];
  sub_217C848A8(0, &qword_2811C8710, sub_217B3CE30, sub_217B3CE84);
  (*(*(v13 - 8) + 104))(a2 + v12, v4, v13);
  v14 = a1[9];
  v15 = *MEMORY[0x277CEACF0];
  sub_217C848A8(0, &qword_2811C8840, sub_217A5BD70, sub_217A5BFF4);
  v17 = *(*(v16 - 8) + 104);

  return v17(a2 + v14, v15, v16);
}

void sub_217C8618C()
{
  sub_217A6018C();
  if (v0 <= 0x3F)
  {
    sub_217A608E0();
    if (v1 <= 0x3F)
    {
      sub_217C848A8(319, &qword_2811C8830, sub_217A5867C, sub_217A586D4);
      if (v2 <= 0x3F)
      {
        sub_217C848A8(319, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
        if (v3 <= 0x3F)
        {
          sub_217C848A8(319, &qword_2811C8710, sub_217B3CE30, sub_217B3CE84);
          if (v4 <= 0x3F)
          {
            sub_217C848A8(319, &qword_2811C8840, sub_217A5BD70, sub_217A5BFF4);
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_217C86378()
{
  sub_217D8899C();
  if (v0 <= 0x3F)
  {
    sub_217D889CC();
    if (v1 <= 0x3F)
    {
      sub_217C86430();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_217C86430()
{
  if (!qword_27CB9FD68)
  {
    v0 = sub_217D898EC();
    if (!v1)
    {
      atomic_store(v0, &qword_27CB9FD68);
    }
  }
}

unint64_t sub_217C86494()
{
  result = qword_27CBA32F8;
  if (!qword_27CBA32F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA32F8);
  }

  return result;
}

unint64_t sub_217C864EC()
{
  result = qword_27CBA3300;
  if (!qword_27CBA3300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA3300);
  }

  return result;
}

unint64_t sub_217C86544()
{
  result = qword_27CBA3308;
  if (!qword_27CBA3308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA3308);
  }

  return result;
}

uint64_t sub_217C86598(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746144746E657665 && a2 == 0xE900000000000061;
  if (v4 || (sub_217D89D4C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x74614464656D6974 && a2 == 0xE900000000000061 || (sub_217D89D4C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6144726573556461 && a2 == 0xEA00000000006174 || (sub_217D89D4C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000021 && 0x8000000217DCCBB0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6D6563616C506461 && a2 == 0xEF61746144746E65 || (sub_217D89D4C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6144646565466461 && a2 == 0xEA00000000006174)
  {

    return 5;
  }

  else
  {
    v6 = sub_217D89D4C();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_217C86828@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x614C656C7A7A7570 && a2 == 0xEC00000074756F79)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_217D89D4C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_217C868B4(uint64_t a1)
{
  v2 = sub_217C86A88();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217C868F0(uint64_t a1)
{
  v2 = sub_217C86A88();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PuzzleLayoutData.encode(to:)(void *a1)
{
  sub_217C86CC8(0, &qword_27CBA3310, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v8 = &v12 - v7;
  v9 = *v1;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217C86A88();
  sub_217D89E7C();
  v13 = v9;
  sub_217C86ADC();
  sub_217D89CAC();
  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_217C86A88()
{
  result = qword_27CBA3318;
  if (!qword_27CBA3318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA3318);
  }

  return result;
}

unint64_t sub_217C86ADC()
{
  result = qword_27CBA3320;
  if (!qword_27CBA3320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA3320);
  }

  return result;
}

uint64_t PuzzleLayoutData.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  sub_217C86CC8(0, &qword_27CBA3328, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v13 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217C86A88();
  sub_217D89E5C();
  if (!v2)
  {
    sub_217C86D2C();
    sub_217D89BCC();
    (*(v7 + 8))(v10, v6);
    *a2 = v14;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_217C86CC8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217C86A88();
    v7 = a3(a1, &type metadata for PuzzleLayoutData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_217C86D2C()
{
  result = qword_27CBA3330;
  if (!qword_27CBA3330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA3330);
  }

  return result;
}

unint64_t sub_217C86DDC()
{
  result = qword_27CBA3338;
  if (!qword_27CBA3338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA3338);
  }

  return result;
}

unint64_t sub_217C86E34()
{
  result = qword_27CBA3340;
  if (!qword_27CBA3340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA3340);
  }

  return result;
}

unint64_t sub_217C86E8C()
{
  result = qword_27CBA3348;
  if (!qword_27CBA3348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA3348);
  }

  return result;
}

NewsAnalytics::NewsletterSubscriptionType_optional __swiftcall NewsletterSubscriptionType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_217D89B0C();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t NewsletterSubscriptionType.rawValue.getter()
{
  v1 = 0x6E776F6E6B6E75;
  v2 = 0x7474656C7377656ELL;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000016;
  }

  if (*v0)
  {
    v1 = 1701736302;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_217C86FC8()
{
  result = qword_27CBA3350;
  if (!qword_27CBA3350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA3350);
  }

  return result;
}

uint64_t sub_217C8701C()
{
  v1 = *v0;
  sub_217D89E1C();
  sub_217D895CC();

  return sub_217D89E3C();
}

uint64_t sub_217C870E0()
{
  *v0;
  *v0;
  *v0;
  sub_217D895CC();
}

uint64_t sub_217C87190()
{
  v1 = *v0;
  sub_217D89E1C();
  sub_217D895CC();

  return sub_217D89E3C();
}

void sub_217C8725C(unint64_t *a1@<X8>)
{
  v2 = 0xE700000000000000;
  v3 = 0x6E776F6E6B6E75;
  v4 = 0xEA00000000007265;
  v5 = 0x7474656C7377656ELL;
  if (*v1 != 2)
  {
    v5 = 0xD000000000000016;
    v4 = 0x8000000217DCB9E0;
  }

  if (*v1)
  {
    v3 = 1701736302;
    v2 = 0xE400000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

unint64_t sub_217C8739C()
{
  result = qword_2811BEFB0;
  if (!qword_2811BEFB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BEFB0);
  }

  return result;
}

uint64_t sub_217C87404()
{
  v1 = *v0;
  if (qword_2811C8C28 != -1)
  {
    swift_once();
  }

  sub_217C87724();
  sub_217D87DCC();
  if (v20 > 2u)
  {
    v2 = 0.5;
    v4 = 0.75;
    if (v20 != 4)
    {
      v4 = 1.0;
    }

    v3 = v20 == 3;
  }

  else
  {
    if (!v20)
    {
      v16 = [v0[2] possiblyUnfetchedAppConfiguration];
      if ([v16 respondsToSelector_])
      {
        v17 = [v16 sportsPrivacyConfiguration];
        swift_unknownObjectRelease();
        [v17 syncEventSamplingRate];
        v19 = v18;

        v5 = v19;
      }

      else
      {
        swift_unknownObjectRelease();
        v5 = 0.95;
      }

      goto LABEL_12;
    }

    v2 = 0.0;
    v3 = v20 == 1;
    v4 = 0.25;
  }

  if (v3)
  {
    v5 = v2;
  }

  else
  {
    v5 = v4;
  }

LABEL_12:
  v6 = *__swift_project_boxed_opaque_existential_1(v0 + 3, v0[6]);
  v7 = sub_217CFD498(0, 0, v5);
  sub_217A535B4();
  v8 = sub_217D898DC();
  sub_217D897FC();
  sub_217A67100();
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_217D9CB60;
  v10 = v7 & 1;
  if (v10)
  {
    v11 = 1702195828;
  }

  else
  {
    v11 = 0x65736C6166;
  }

  if (v10)
  {
    v12 = 0xE400000000000000;
  }

  else
  {
    v12 = 0xE500000000000000;
  }

  MEMORY[0x21CEACC70](v11, v12);

  v13 = MEMORY[0x277D837D0];
  *(v9 + 56) = MEMORY[0x277D837D0];
  v14 = sub_217A62448();
  *(v9 + 64) = v14;
  *(v9 + 32) = 0;
  *(v9 + 40) = 0xE000000000000000;
  sub_217D8972C();
  *(v9 + 96) = v13;
  *(v9 + 104) = v14;
  *(v9 + 72) = 0;
  *(v9 + 80) = 0xE000000000000000;
  sub_217D88E5C();

  return v10;
}

uint64_t sub_217C876BC()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + 24));

  return MEMORY[0x2821FE8D8](v0, 64, 7);
}

unint64_t sub_217C87724()
{
  result = qword_2811BE298[0];
  if (!qword_2811BE298[0])
  {
    type metadata accessor for SportsSyncEventPrivacySampler();
    result = swift_getWitnessTable();
    atomic_store(result, qword_2811BE298);
  }

  return result;
}

uint64_t sub_217C87840()
{
  v0 = sub_217D8867C();
  __swift_allocate_value_buffer(v0, qword_27CBA3358);
  __swift_project_value_buffer(v0, qword_27CBA3358);
  return sub_217D8866C();
}

uint64_t IssueExposureEvent.eventData.setter(uint64_t a1)
{
  sub_217A6018C();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t IssueExposureEvent.issueData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for IssueExposureEvent(0) + 20);
  sub_217C88A64(0, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t IssueExposureEvent.issueData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for IssueExposureEvent(0) + 20);
  sub_217C88A64(0, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t IssueExposureEvent.timedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for IssueExposureEvent(0) + 24);
  sub_217A608E0();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t IssueExposureEvent.feedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for IssueExposureEvent(0) + 28);
  sub_217C88A64(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t IssueExposureEvent.feedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for IssueExposureEvent(0) + 28);
  sub_217C88A64(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t IssueExposureEvent.groupData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for IssueExposureEvent(0) + 32);
  sub_217C88A64(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t IssueExposureEvent.groupData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for IssueExposureEvent(0) + 32);
  sub_217C88A64(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t IssueExposureEvent.issueScienceData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for IssueExposureEvent(0) + 36);
  sub_217C88A64(0, &qword_2811C87D0, sub_217ACF8E0, sub_217ACF934);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t IssueExposureEvent.issueScienceData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for IssueExposureEvent(0) + 36);
  sub_217C88A64(0, &qword_2811C87D0, sub_217ACF8E0, sub_217ACF934);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t IssueExposureEvent.channelData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for IssueExposureEvent(0) + 40);
  sub_217C88A64(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t IssueExposureEvent.channelData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for IssueExposureEvent(0) + 40);
  sub_217C88A64(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t IssueExposureEvent.userChannelContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for IssueExposureEvent(0) + 44);
  sub_217C88A64(0, &qword_2811C85A0, sub_217ACFB38, sub_217ACFB8C);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t IssueExposureEvent.userChannelContextData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for IssueExposureEvent(0) + 44);
  sub_217C88A64(0, &qword_2811C85A0, sub_217ACFB38, sub_217ACFB8C);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t IssueExposureEvent.issueExposureContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for IssueExposureEvent(0) + 48);
  sub_217C88A64(0, &qword_2811C8598, sub_217AD03F0, sub_217AD0444);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t IssueExposureEvent.issueExposureContextData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for IssueExposureEvent(0) + 48);
  sub_217C88A64(0, &qword_2811C8598, sub_217AD03F0, sub_217AD0444);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t IssueExposureEvent.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for IssueExposureEvent(0) + 52);
  sub_217C88A64(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t IssueExposureEvent.userBundleSubscriptionContextData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for IssueExposureEvent(0) + 52);
  sub_217C88A64(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t IssueExposureEvent.feedPositionData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for IssueExposureEvent(0) + 56);
  sub_217C88A64(0, &qword_2811C86C8, sub_217AD76BC, sub_217AD7710);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t IssueExposureEvent.feedPositionData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for IssueExposureEvent(0) + 56);
  sub_217C88A64(0, &qword_2811C86C8, sub_217AD76BC, sub_217AD7710);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t IssueExposureEvent.offlineModeData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for IssueExposureEvent(0) + 60);
  sub_217C88A64(0, &qword_2811C86F0, sub_217ACA338, sub_217ACA390);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void sub_217C88A64(uint64_t a1, unint64_t *a2, void (*a3)(void), void (*a4)(void))
{
  if (!*a2)
  {
    a3();
    a4();
    v6 = sub_217D8829C();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t IssueExposureEvent.offlineModeData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for IssueExposureEvent(0) + 60);
  sub_217C88A64(0, &qword_2811C86F0, sub_217ACA338, sub_217ACA390);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t IssueExposureEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_217A6018C();
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for IssueExposureEvent(0);
  v5 = v4[5];
  sub_217C88A64(0, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = v4[6];
  sub_217A608E0();
  (*(*(v8 - 8) + 104))(a1 + v7, v2, v8);
  v9 = v4[7];
  v10 = *MEMORY[0x277CEACF0];
  sub_217C88A64(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C);
  (*(*(v11 - 8) + 104))(a1 + v9, v10, v11);
  v12 = v4[8];
  sub_217C88A64(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4);
  (*(*(v13 - 8) + 104))(a1 + v12, v10, v13);
  v14 = v4[9];
  sub_217C88A64(0, &qword_2811C87D0, sub_217ACF8E0, sub_217ACF934);
  (*(*(v15 - 8) + 104))(a1 + v14, v2, v15);
  v16 = v4[10];
  sub_217C88A64(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C);
  (*(*(v17 - 8) + 104))(a1 + v16, v2, v17);
  v18 = v4[11];
  sub_217C88A64(0, &qword_2811C85A0, sub_217ACFB38, sub_217ACFB8C);
  (*(*(v19 - 8) + 104))(a1 + v18, v2, v19);
  v20 = v4[12];
  sub_217C88A64(0, &qword_2811C8598, sub_217AD03F0, sub_217AD0444);
  (*(*(v21 - 8) + 104))(a1 + v20, v10, v21);
  v22 = v4[13];
  sub_217C88A64(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98);
  (*(*(v23 - 8) + 104))(a1 + v22, v2, v23);
  v24 = v4[14];
  sub_217C88A64(0, &qword_2811C86C8, sub_217AD76BC, sub_217AD7710);
  (*(*(v25 - 8) + 104))(a1 + v24, v2, v25);
  v26 = v4[15];
  sub_217C88A64(0, &qword_2811C86F0, sub_217ACA338, sub_217ACA390);
  v28 = *(*(v27 - 8) + 104);

  return v28(a1 + v26, v2, v27);
}

uint64_t IssueExposureEvent.Model.issueData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for IssueExposureEvent.Model(0) + 20);
  v4 = *(v3 + 8);
  v5 = *(v3 + 16);
  v6 = *(v3 + 17);
  v7 = *(v3 + 24);
  *a1 = *v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 17) = v6;
  *(a1 + 24) = v7;
}

uint64_t sub_217C89234@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a1(0) + 24);
  v7 = a2(0);
  v8 = *(*(v7 - 8) + 16);

  return v8(a3, v3 + v6, v7);
}

uint64_t IssueExposureEvent.Model.feedData.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for IssueExposureEvent.Model(0) + 28));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;

  return sub_217AD1A68(v4, v5, v6);
}

uint64_t IssueExposureEvent.Model.groupData.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for IssueExposureEvent.Model(0) + 32));
  v4 = v3[5];
  v5 = v3[7];
  v22 = v3[6];
  v23 = v5;
  v6 = v3[7];
  v24 = v3[8];
  v7 = v3[1];
  v8 = v3[3];
  v18 = v3[2];
  v9 = v18;
  v19 = v8;
  v10 = v3[3];
  v11 = v3[5];
  v20 = v3[4];
  v12 = v20;
  v21 = v11;
  v13 = v3[1];
  v17[0] = *v3;
  v14 = v17[0];
  v17[1] = v13;
  a1[6] = v22;
  a1[7] = v6;
  a1[8] = v3[8];
  a1[2] = v9;
  a1[3] = v10;
  a1[4] = v12;
  a1[5] = v4;
  *a1 = v14;
  a1[1] = v7;
  return sub_217AD87FC(v17, &v16);
}

uint64_t IssueExposureEvent.Model.issueScienceData.getter@<X0>(void *a1@<X8>)
{
  v3 = *(type metadata accessor for IssueExposureEvent.Model(0) + 36);
  memcpy(__dst, (v1 + v3), 0x111uLL);
  memcpy(a1, (v1 + v3), 0x111uLL);
  return sub_217AD1744(__dst, &v5);
}

uint64_t IssueExposureEvent.Model.channelData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for IssueExposureEvent.Model(0) + 40);
  v4 = *(v3 + 8);
  v5 = *(v3 + 16);
  v6 = *(v3 + 17);
  v7 = *(v3 + 24);
  v8 = *(v3 + 32);
  *a1 = *v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 17) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v8;
}

uint64_t IssueExposureEvent.Model.userChannelContextData.getter@<X0>(uint64_t a1@<X8>)
{
  result = type metadata accessor for IssueExposureEvent.Model(0);
  v4 = (v1 + *(result + 44));
  v5 = *v4;
  v6 = v4[1];
  LOWORD(v4) = *(v4 + 1);
  *a1 = v5;
  *(a1 + 1) = v6;
  *(a1 + 2) = v4;
  return result;
}

uint64_t IssueExposureEvent.Model.issueExposureContextData.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for IssueExposureEvent.Model(0) + 48));
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;
}

uint64_t IssueExposureEvent.Model.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for IssueExposureEvent.Model(0) + 52);
  v4 = *(v3 + 16);
  v8[0] = *v3;
  v8[1] = v4;
  v9 = *(v3 + 32);
  v5 = v9;
  LOBYTE(v3) = *(v3 + 48);
  v10 = v3;
  *a1 = v8[0];
  *(a1 + 16) = v4;
  *(a1 + 32) = v5;
  *(a1 + 48) = v3;
  return sub_217ACC004(v8, v7);
}

uint64_t IssueExposureEvent.Model.feedPositionData.getter@<X0>(_DWORD *a1@<X8>)
{
  result = type metadata accessor for IssueExposureEvent.Model(0);
  *a1 = *(v1 + *(result + 56));
  return result;
}

uint64_t IssueExposureEvent.Model.offlineModeData.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for IssueExposureEvent.Model(0);
  *a1 = *(v1 + *(result + 60));
  return result;
}

__n128 IssueExposureEvent.Model.init(eventData:issueData:timedData:feedData:groupData:issueScienceData:channelData:userChannelContextData:issueExposureContextData:userBundleSubscriptionContextData:feedPositionData:offlineModeData:)@<Q0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, __int128 *a4@<X3>, _OWORD *a5@<X4>, const void *a6@<X5>, uint64_t *a7@<X6>, char *a8@<X7>, uint64_t a9@<X8>, uint64_t *a10, uint64_t a11, int *a12, char *a13)
{
  v16 = *a2;
  v17 = a2[1];
  v18 = *(a2 + 16);
  v19 = *(a2 + 17);
  v20 = a2[3];
  v39 = *a4;
  v21 = *(a4 + 2);
  v46 = *a7;
  v45 = a7[1];
  v44 = *(a7 + 16);
  v43 = *(a7 + 17);
  v42 = a7[3];
  v41 = a7[4];
  v49 = *a8;
  v48 = a8[1];
  v47 = *(a8 + 1);
  v50 = a10[1];
  v51 = *a10;
  v53 = *a12;
  v54 = *a13;
  v22 = sub_217D8899C();
  (*(*(v22 - 8) + 32))(a9, a1, v22);
  v23 = type metadata accessor for IssueExposureEvent.Model(0);
  v24 = a9 + v23[5];
  *v24 = v16;
  *(v24 + 8) = v17;
  *(v24 + 16) = v18;
  *(v24 + 17) = v19;
  *(v24 + 24) = v20;
  v25 = v23[6];
  v26 = sub_217D889CC();
  (*(*(v26 - 8) + 32))(a9 + v25, a3, v26);
  v27 = a9 + v23[7];
  *v27 = v39;
  *(v27 + 16) = v21;
  v28 = (a9 + v23[8]);
  v29 = a5[7];
  v28[6] = a5[6];
  v28[7] = v29;
  v28[8] = a5[8];
  v30 = a5[3];
  v28[2] = a5[2];
  v28[3] = v30;
  v31 = a5[5];
  v28[4] = a5[4];
  v28[5] = v31;
  v32 = a5[1];
  *v28 = *a5;
  v28[1] = v32;
  memcpy((a9 + v23[9]), a6, 0x111uLL);
  v33 = a9 + v23[10];
  *v33 = v46;
  *(v33 + 8) = v45;
  *(v33 + 16) = v44;
  *(v33 + 17) = v43;
  *(v33 + 24) = v42;
  *(v33 + 32) = v41;
  v34 = a9 + v23[11];
  *v34 = v49;
  *(v34 + 1) = v48;
  *(v34 + 2) = v47;
  v35 = (a9 + v23[12]);
  *v35 = v51;
  v35[1] = v50;
  v36 = a9 + v23[13];
  v37 = *(a11 + 16);
  *v36 = *a11;
  *(v36 + 16) = v37;
  result = *(a11 + 32);
  *(v36 + 32) = result;
  *(v36 + 48) = *(a11 + 48);
  *(a9 + v23[14]) = v53;
  *(a9 + v23[15]) = v54;
  return result;
}
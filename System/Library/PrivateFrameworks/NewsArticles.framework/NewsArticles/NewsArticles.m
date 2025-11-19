id Assembly.init()()
{
  ObjectType = swift_getObjectType();
  v2 = OBJC_IVAR___NAAssembly_assemblies;
  sub_1D798B29C();
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1D7D45EA0;
  v4 = type metadata accessor for AdsAssembly();
  v5 = swift_allocObject();
  *(v3 + 56) = v4;
  *(v3 + 64) = sub_1D798B37C(&qword_1EE0CF988, type metadata accessor for AdsAssembly);
  *(v3 + 32) = v5;
  v6 = type metadata accessor for AnalyticsAssembly();
  v7 = swift_allocObject();
  *(v3 + 96) = v6;
  *(v3 + 104) = sub_1D798B37C(qword_1EE0CEE28, type metadata accessor for AnalyticsAssembly);
  *(v3 + 72) = v7;
  v8 = type metadata accessor for CommandAssembly();
  v9 = swift_allocObject();
  *(v3 + 136) = v8;
  *(v3 + 144) = sub_1D798B37C(&unk_1EE0CF388, type metadata accessor for CommandAssembly);
  *(v3 + 112) = v9;
  v10 = type metadata accessor for FactoryAssembly();
  v11 = swift_allocObject();
  *(v3 + 176) = v10;
  *(v3 + 184) = sub_1D798B37C(qword_1EE0CF2D8, type metadata accessor for FactoryAssembly);
  *(v3 + 152) = v11;
  v12 = type metadata accessor for ManagerAssembly();
  v13 = swift_allocObject();
  *(v3 + 216) = v12;
  *(v3 + 224) = sub_1D798B37C(&qword_1EE0CF228, type metadata accessor for ManagerAssembly);
  *(v3 + 192) = v13;
  v14 = type metadata accessor for NewsletterAssembly();
  v15 = swift_allocObject();
  *(v3 + 256) = v14;
  *(v3 + 264) = sub_1D798B37C(&qword_1EE0CED68, type metadata accessor for NewsletterAssembly);
  *(v3 + 232) = v15;
  v16 = type metadata accessor for TagSubscriptionStatusAssembly();
  v17 = swift_allocObject();
  *(v3 + 296) = v16;
  *(v3 + 304) = sub_1D798B37C(qword_1EE0C4598, type metadata accessor for TagSubscriptionStatusAssembly);
  *(v3 + 272) = v17;
  v18 = type metadata accessor for OfferUpsellScenarioAssembly();
  v19 = swift_allocObject();
  *(v3 + 336) = v18;
  *(v3 + 344) = sub_1D798B37C(&qword_1EE0CD528, type metadata accessor for OfferUpsellScenarioAssembly);
  *(v3 + 312) = v19;
  v20 = type metadata accessor for OfflineAssembly();
  v21 = swift_allocObject();
  *(v3 + 376) = v20;
  *(v3 + 384) = sub_1D798B37C(qword_1EE0CF188, type metadata accessor for OfflineAssembly);
  *(v3 + 352) = v21;
  v22 = type metadata accessor for ProxyAssembly();
  v23 = swift_allocObject();
  *(v3 + 416) = v22;
  *(v3 + 424) = sub_1D798B37C(qword_1EE0CF778, type metadata accessor for ProxyAssembly);
  *(v3 + 392) = v23;
  v24 = type metadata accessor for ServiceAssembly();
  v25 = swift_allocObject();
  *(v3 + 456) = v24;
  *(v3 + 464) = sub_1D798B37C(qword_1EE0CF0E8, type metadata accessor for ServiceAssembly);
  *(v3 + 432) = v25;
  v26 = type metadata accessor for SharingAssembly();
  v27 = swift_allocObject();
  *(v3 + 496) = v26;
  *(v3 + 504) = sub_1D798B37C(qword_1EE0CF038, type metadata accessor for SharingAssembly);
  *(v3 + 472) = v27;
  v28 = type metadata accessor for StylerAssembly();
  v29 = swift_allocObject();
  *(v3 + 536) = v28;
  *(v3 + 544) = sub_1D798B37C(qword_1EE0CF578, type metadata accessor for StylerAssembly);
  *(v3 + 512) = v29;
  v30 = type metadata accessor for SubscriptionAssembly();
  v31 = swift_allocObject();
  *(v3 + 576) = v30;
  *(v3 + 584) = sub_1D798B37C(qword_1EE0CE808, type metadata accessor for SubscriptionAssembly);
  *(v3 + 552) = v31;
  v32 = type metadata accessor for RendererAssembly();
  v33 = swift_allocObject();
  *(v3 + 616) = v32;
  *(v3 + 624) = sub_1D798B37C(&qword_1EE0CEED8, type metadata accessor for RendererAssembly);
  *(v3 + 592) = v33;
  v34 = type metadata accessor for UtilityAssembly();
  v35 = swift_allocObject();
  *(v3 + 656) = v34;
  *(v3 + 664) = sub_1D798B37C(qword_1EE0CEF98, type metadata accessor for UtilityAssembly);
  *(v3 + 632) = v35;
  v36 = type metadata accessor for AdComponentAssembly();
  v37 = swift_allocObject();
  *(v3 + 696) = v36;
  *(v3 + 704) = sub_1D798B37C(&unk_1EE0CEBF8, type metadata accessor for AdComponentAssembly);
  *(v3 + 672) = v37;
  v38 = type metadata accessor for ArticleThumbnailComponentAssembly();
  v39 = swift_allocObject();
  *(v3 + 736) = v38;
  *(v3 + 744) = sub_1D798B37C(qword_1EE0CCDD8, type metadata accessor for ArticleThumbnailComponentAssembly);
  *(v3 + 712) = v39;
  v40 = type metadata accessor for ArticleViewerAssembly();
  v41 = swift_allocObject();
  *(v3 + 776) = v40;
  *(v3 + 784) = sub_1D798B37C(&unk_1EE0CE628, type metadata accessor for ArticleViewerAssembly);
  *(v3 + 752) = v41;
  v42 = type metadata accessor for ArticleAssembly();
  v43 = swift_allocObject();
  *(v3 + 816) = v42;
  *(v3 + 824) = sub_1D798B37C(qword_1EE0CF4D8, type metadata accessor for ArticleAssembly);
  *(v3 + 792) = v43;
  v44 = type metadata accessor for CampaignLandingPageAssembly();
  v45 = swift_allocObject();
  *(v3 + 856) = v44;
  *(v3 + 864) = sub_1D798B37C(qword_1EE0CD7B8, type metadata accessor for CampaignLandingPageAssembly);
  *(v3 + 832) = v45;
  v46 = type metadata accessor for ArticleSharingAssembly();
  v47 = swift_allocObject();
  *(v3 + 896) = v46;
  *(v3 + 904) = sub_1D798B37C(qword_1EE0CE408, type metadata accessor for ArticleSharingAssembly);
  *(v3 + 872) = v47;
  v48 = type metadata accessor for EndOfArticleAssembly();
  v49 = swift_allocObject();
  *(v3 + 936) = v48;
  *(v3 + 944) = sub_1D798B37C(&qword_1EE0CE968, type metadata accessor for EndOfArticleAssembly);
  *(v3 + 912) = v49;
  v50 = type metadata accessor for EndOfRecipeAssembly();
  v51 = swift_allocObject();
  *(v3 + 976) = v50;
  *(v3 + 984) = sub_1D798B37C(&qword_1EE0CEB48, type metadata accessor for EndOfRecipeAssembly);
  *(v3 + 952) = v51;
  v52 = type metadata accessor for InterstitialAdAssembly();
  v53 = swift_allocObject();
  *(v3 + 1016) = v52;
  *(v3 + 1024) = sub_1D798B37C(&unk_1EE0CE2B8, type metadata accessor for InterstitialAdAssembly);
  *(v3 + 992) = v53;
  v54 = type metadata accessor for InterstitialAdPreviewAssembly();
  v55 = swift_allocObject();
  *(v3 + 1056) = v54;
  *(v3 + 1064) = sub_1D798B37C(&qword_1EE0CD048, type metadata accessor for InterstitialAdPreviewAssembly);
  *(v3 + 1032) = v55;
  v56 = type metadata accessor for IssueViewerAssembly();
  v57 = swift_allocObject();
  *(v3 + 1096) = v56;
  *(v3 + 1104) = sub_1D798B37C(qword_1EE0CEAA8, type metadata accessor for IssueViewerAssembly);
  *(v3 + 1072) = v57;
  v58 = type metadata accessor for ModalArticleViewerAssembly();
  v59 = swift_allocObject();
  *(v3 + 1136) = v58;
  *(v3 + 1144) = sub_1D798B37C(qword_1EE0CD908, type metadata accessor for ModalArticleViewerAssembly);
  *(v3 + 1112) = v59;
  v60 = type metadata accessor for PDFReplicaAssembly();
  v61 = swift_allocObject();
  *(v3 + 1176) = v60;
  *(v3 + 1184) = sub_1D798B37C(qword_1EE0CECB8, type metadata accessor for PDFReplicaAssembly);
  *(v3 + 1152) = v61;
  v62 = type metadata accessor for PDFReplicaViewerAssembly();
  v63 = swift_allocObject();
  *(v3 + 1216) = v62;
  *(v3 + 1224) = sub_1D798B37C(&qword_1EE0CDE38, type metadata accessor for PDFReplicaViewerAssembly);
  *(v3 + 1192) = v63;
  v64 = type metadata accessor for ReportConcernAssembly();
  v65 = swift_allocObject();
  *(v3 + 1256) = v64;
  *(v3 + 1264) = sub_1D798B37C(&qword_1EE0CE4B8, type metadata accessor for ReportConcernAssembly);
  *(v3 + 1232) = v65;
  v66 = type metadata accessor for ReportConcernDetailAssembly();
  v67 = swift_allocObject();
  *(v3 + 1296) = v66;
  *(v3 + 1304) = sub_1D798B37C(qword_1EE0CD3E0, type metadata accessor for ReportConcernDetailAssembly);
  *(v3 + 1272) = v67;
  v68 = type metadata accessor for TableOfContentsAssembly();
  v69 = swift_allocObject();
  *(v3 + 1336) = v68;
  *(v3 + 1344) = sub_1D798B37C(qword_1EE0CDF98, type metadata accessor for TableOfContentsAssembly);
  *(v3 + 1312) = v69;
  v70 = type metadata accessor for TextSizeControlAssembly();
  v71 = swift_allocObject();
  *(v3 + 1376) = v70;
  *(v3 + 1384) = sub_1D798B37C(qword_1EE0CDEF0, type metadata accessor for TextSizeControlAssembly);
  *(v3 + 1352) = v71;
  v72 = type metadata accessor for RecipeAssembly();
  v73 = swift_allocObject();
  *(v3 + 1416) = v72;
  *(v3 + 1424) = sub_1D798B37C(&qword_1EE0CF6C8, type metadata accessor for RecipeAssembly);
  *(v3 + 1392) = v73;
  v74 = type metadata accessor for RecipeArticleDrawerAssembly();
  v75 = swift_allocObject();
  *(v3 + 1456) = v74;
  *(v3 + 1464) = sub_1D798B37C(qword_1EE0CD480, type metadata accessor for RecipeArticleDrawerAssembly);
  *(v3 + 1432) = v75;
  v76 = type metadata accessor for RecipeViewerAssembly();
  v77 = swift_allocObject();
  *(v3 + 1496) = v76;
  *(v3 + 1504) = sub_1D798B37C(&unk_1EE0C8688, type metadata accessor for RecipeViewerAssembly);
  *(v3 + 1472) = v77;
  v78 = type metadata accessor for SearchInArticleAssembly();
  v79 = swift_allocObject();
  *(v3 + 1536) = v78;
  *(v3 + 1544) = sub_1D798B37C(&qword_1EE0CE038, type metadata accessor for SearchInArticleAssembly);
  *(v3 + 1512) = v79;
  *&v0[v2] = v3;
  v81.receiver = v0;
  v81.super_class = ObjectType;
  return objc_msgSendSuper2(&v81, sel_init);
}

void sub_1D798B29C()
{
  if (!qword_1EE0CB980)
  {
    sub_1D798B2F4();
    v0 = sub_1D7D3191C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE0CB980);
    }
  }
}

unint64_t sub_1D798B2F4()
{
  result = qword_1EE0CBEB8;
  if (!qword_1EE0CBEB8)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EE0CBEB8);
  }

  return result;
}

uint64_t sub_1D798B37C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D798B8A0()
{
  v0 = sub_1D7D2932C();
  v18 = *(v0 - 8);
  v19 = v0;
  MEMORY[0x1EEE9AC00](v0, v1);
  v3 = &v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1D7D28D9C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7D28E4C();
  __swift_project_boxed_opaque_existential_1(v20, v20[3]);
  sub_1D798C3BC(0, &unk_1EE0CBA98);
  (*(v5 + 104))(v8, *MEMORY[0x1E69D6500], v4);
  sub_1D7D2924C();
  (*(v5 + 8))(v8, v4);
  __swift_destroy_boxed_opaque_existential_1(v20);
  sub_1D7D28E2C();
  sub_1D7D2D41C();
  sub_1D7D291DC();

  sub_1D7D28E2C();
  sub_1D798C468(0, &unk_1EE0CBD70);
  sub_1D7D291EC();

  sub_1D7D2D30C();
  sub_1D7D28ABC();

  sub_1D7D28E2C();
  sub_1D798C468(0, &qword_1EE0CBD98);
  sub_1D7D291EC();

  sub_1D7D28ACC();

  sub_1D7D28E3C();
  sub_1D7D291CC();

  sub_1D7D28E2C();
  sub_1D798C468(0, &unk_1EE0CFC30);
  sub_1D7D291EC();

  sub_1D7D28E2C();
  sub_1D798C4C4();
  sub_1D7D291DC();

  sub_1D7D28E2C();
  sub_1D798C850();
  sub_1D7D291DC();

  sub_1D7D28E2C();
  v9 = MEMORY[0x1E69B42B0];
  sub_1D798C9C8(0, &qword_1EE0CBE10, MEMORY[0x1E69B42B8]);
  sub_1D7D291DC();

  sub_1D7D28E2C();
  sub_1D798C9C8(0, &qword_1EE0CBE18, MEMORY[0x1E69B4298]);
  sub_1D7D291DC();

  sub_1D7D28E2C();
  sub_1D798C468(0, &qword_1EE0CDBC0);
  sub_1D7D291EC();

  sub_1D7D28E2C();
  sub_1D798C468(0, &unk_1EE0CDBE8);
  sub_1D7D291EC();

  sub_1D7D28E2C();
  v10 = MEMORY[0x1E69B43B0];
  sub_1D798CAA4(0, &qword_1EE0CBD30, MEMORY[0x1E69B42B8], v9, MEMORY[0x1E69B43B0]);
  sub_1D7D291DC();

  v11 = *MEMORY[0x1E69D6AD0];
  v13 = v18;
  v12 = v19;
  v14 = *(v18 + 104);
  v17 = v18 + 104;
  v14(v3, v11, v19);
  sub_1D7D28ADC();

  v15 = *(v13 + 8);
  v15(v3, v12);
  sub_1D7D28E2C();
  sub_1D798CAA4(0, &unk_1EE0CBD40, MEMORY[0x1E69B4298], MEMORY[0x1E69B4290], v10);
  sub_1D7D291DC();

  v14(v3, v11, v12);
  sub_1D7D28ADC();

  v15(v3, v12);
  sub_1D7D28E3C();
  sub_1D7D291CC();

  sub_1D7D28E3C();
  sub_1D7D291CC();

  sub_1D7D28E2C();
  sub_1D798C468(0, qword_1EE0CCD30);
  sub_1D7D291EC();

  v14(v3, v11, v12);
  sub_1D7D28ADC();

  v15(v3, v12);
  sub_1D7D28E2C();
  sub_1D798C3BC(0, &unk_1EE0CB9D8);
  sub_1D7D291DC();

  sub_1D7D28E2C();
  sub_1D798CC04();
  sub_1D7D291DC();

  sub_1D7D28E2C();
  sub_1D798CCDC(0, &unk_1EE0CBD20, MEMORY[0x1E69B43B0]);
  sub_1D7D291DC();

  v14(v3, v11, v12);
  sub_1D7D28ADC();

  v15(v3, v12);
  sub_1D7D28E2C();
  sub_1D798CCDC(0, &qword_1EE0CBE38, MEMORY[0x1E69B3F38]);
  sub_1D7D291DC();

  sub_1D7D28E2C();
  type metadata accessor for ArticlePrerollAdRequester();
  sub_1D7D291DC();
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_1D798C3BC(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_1(uint64_t a1)
{
  v1 = *(*(a1 + 24) - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_1D798C468(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

void sub_1D798C4C4()
{
  if (!qword_1EE0CBDE0)
  {
    sub_1D7D2D04C();
    sub_1D7D2D0EC();
    sub_1D7D2D1DC();
    type metadata accessor for ArticleBannerAd();
    sub_1D798C6E8(&unk_1EE0CBDC0, MEMORY[0x1E69B4238]);
    sub_1D798C6E8(&qword_1EE0CF430, type metadata accessor for ArticleBannerAd);
    v0 = sub_1D7D2CF7C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE0CBDE0);
    }
  }
}

uint64_t type metadata accessor for ArticleBannerAd()
{
  result = qword_1EE0CF3F8;
  if (!qword_1EE0CF3F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D798C634()
{
  result = sub_1D7D2D57C();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1D798C6A0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D798C6E8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D798C730(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_1D798C778(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D798C7C0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D798C808(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1D798C850()
{
  if (!qword_1EE0CBDF0)
  {
    sub_1D7D2D04C();
    sub_1D7D2D0EC();
    sub_1D7D2D17C();
    type metadata accessor for RecipeBannerAd();
    sub_1D798C730(&unk_1EE0CBDC0, 255, MEMORY[0x1E69B4238]);
    sub_1D798C730(qword_1EE0CF618, 255, type metadata accessor for RecipeBannerAd);
    v0 = sub_1D7D2CF7C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE0CBDF0);
    }
  }
}

uint64_t type metadata accessor for RecipeBannerAd()
{
  result = qword_1EE0CF5D8;
  if (!qword_1EE0CF5D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D798C9C8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    sub_1D7D2D04C();
    sub_1D7D2D0EC();
    a3(255);
    sub_1D798C730(&unk_1EE0CBDC0, 255, MEMORY[0x1E69B4238]);
    v5 = sub_1D7D2CD6C();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1D798CAA4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t (*a5)(uint64_t, void *))
{
  if (!*a2)
  {
    v12[0] = sub_1D7D2D04C();
    v12[1] = a3(255);
    v12[2] = sub_1D798C730(&unk_1EE0CBDC0, 255, MEMORY[0x1E69B4238]);
    v12[3] = a4;
    v10 = a5(a1, v12);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

void sub_1D798CC04()
{
  if (!qword_1EE0CBE00)
  {
    sub_1D7D2D0CC();
    sub_1D7D2CE5C();
    sub_1D7D2CF0C();
    sub_1D798C730(&unk_1EE0CBDB0, 255, MEMORY[0x1E69B4260]);
    v0 = sub_1D7D2CD6C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE0CBE00);
    }
  }
}

void sub_1D798CCDC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = sub_1D7D2D0CC();
    v8[1] = sub_1D7D2CF0C();
    v8[2] = sub_1D798C730(&unk_1EE0CBDB0, 255, MEMORY[0x1E69B4260]);
    v8[3] = MEMORY[0x1E69B4108];
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_1D798CDC8()
{
  sub_1D7D28E2C();
  sub_1D798F0E0();
  sub_1D7D291DC();

  sub_1D7D28E2C();
  type metadata accessor for AnalyticsEventReporter();
  sub_1D7D291DC();

  sub_1D7D28E3C();
  sub_1D798F168(0, &qword_1EE0CC8C0);
  sub_1D7D291EC();

  sub_1D7D28ACC();

  sub_1D7D28E3C();
  type metadata accessor for ArticleScrollAnalyticsEventTransformer();
  sub_1D7D291DC();

  sub_1D7D28E3C();
  type metadata accessor for MediaViewAnalyticsEventTransformer();
  sub_1D7D291DC();

  sub_1D7D28E3C();
  type metadata accessor for MediaEngageAnalyticsEventTransformer();
  sub_1D7D291DC();

  sub_1D7D28E3C();
  type metadata accessor for MediaEngageCompleteAnalyticsEventTransformer();
  sub_1D7D291DC();

  sub_1D7D28E3C();
  type metadata accessor for MediaExposureAnalyticsEventTransformer();
  sub_1D7D291DC();

  sub_1D7D28E3C();
  type metadata accessor for ComponentExposureAnalyticsEventTransformer();
  sub_1D7D291DC();

  sub_1D7D28E3C();
  type metadata accessor for LinkTapAnalyticsEventTransformer();
  sub_1D7D291DC();

  sub_1D7D28E3C();
  type metadata accessor for WebContentLoadEventTransformer();
  sub_1D7D291DC();
}

uint64_t sub_1D798D1D8()
{
  v0 = sub_1D7D2932C();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7D28E2C();
  sub_1D798F168(0, qword_1EE0CE218);
  sub_1D7D291EC();

  (*(v1 + 104))(v4, *MEMORY[0x1E69D6AB8], v0);
  sub_1D7D28ADC();

  (*(v1 + 8))(v4, v0);
  sub_1D7D28E2C();
  sub_1D798F168(0, qword_1EE0CC610);
  sub_1D7D291EC();

  sub_1D7D28E2C();
  sub_1D798F168(0, &qword_1EE0CBE40);
  sub_1D7D291EC();

  sub_1D7D28E2C();
  sub_1D798F168(0, &unk_1EE0CBED0);
  sub_1D7D291EC();

  sub_1D7D28E2C();
  sub_1D798F168(0, qword_1EE0CD060);
  sub_1D7D291EC();

  sub_1D7D28E2C();
  sub_1D7D291EC();

  sub_1D7D28E2C();
  sub_1D798C3BC(0, &unk_1EE0CBA00);
  sub_1D7D291DC();

  sub_1D7D28E2C();
  sub_1D798F168(0, &unk_1EE0CCE80);
  sub_1D7D291EC();
}

uint64_t sub_1D798D5A0()
{
  v0 = sub_1D7D28D9C();
  v24 = *(v0 - 8);
  v25 = v0;
  MEMORY[0x1EEE9AC00](v0, v1);
  v23 = &v17[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v3 = sub_1D7D2932C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v17[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1D7D28E2C();
  sub_1D798F168(0, qword_1EE0CEEF0);
  sub_1D7D291EC();

  v8 = *MEMORY[0x1E69D6AD0];
  v9 = *(v4 + 104);
  v9(v7, v8, v3);
  sub_1D7D28ADC();

  v10 = *(v4 + 8);
  v10(v7, v3);
  sub_1D7D28E2C();
  sub_1D798F168(0, qword_1EE0CDCA8);
  sub_1D7D291EC();

  v9(v7, v8, v3);
  sub_1D7D28ADC();

  v10(v7, v3);
  sub_1D7D28E2C();
  sub_1D798F168(0, &qword_1EE0CDB98);
  sub_1D7D291EC();

  v18 = v8;
  v9(v7, v8, v3);
  v19 = v4 + 104;
  v21 = v9;
  sub_1D7D28ADC();

  v20 = v10;
  v22 = v4 + 8;
  v10(v7, v3);
  sub_1D7D28E2C();
  sub_1D798F168(0, &qword_1EE0CBBB0);
  sub_1D7D291EC();

  v9(v7, v8, v3);
  sub_1D7D28ADC();

  v10(v7, v3);
  sub_1D7D28E2C();
  sub_1D7D2FCFC();
  sub_1D7D291EC();

  sub_1D7D28E4C();
  __swift_project_boxed_opaque_existential_1(v26, v26[3]);
  sub_1D798F168(0, &qword_1EE0CBDD0);
  v11 = sub_1D7D3043C();
  v13 = v23;
  v12 = v24;
  *v23 = v11;
  v13[1] = v14;
  v15 = v25;
  (*(v12 + 104))(v13, *MEMORY[0x1E69D6508], v25);
  sub_1D7D2925C();
  (*(v12 + 8))(v13, v15);
  __swift_destroy_boxed_opaque_existential_1(v26);
  sub_1D7D28E2C();
  type metadata accessor for AdDataManager();
  sub_1D7D291DC();

  v21(v7, v18, v3);
  sub_1D7D28ADC();

  return v20(v7, v3);
}

uint64_t sub_1D798DB48()
{
  sub_1D7D28E2C();
  sub_1D798C3BC(0, &qword_1EE0BED88);
  sub_1D7D291DC();
}

uint64_t sub_1D798DBC8()
{
  v0 = sub_1D7D2932C();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7D28E2C();
  sub_1D798F2FC();
  sub_1D7D291DC();

  v5 = *MEMORY[0x1E69D6AC0];
  v6 = *(v1 + 104);
  v6(v4, v5, v0);
  sub_1D7D28ADC();

  v7 = *(v1 + 8);
  v7(v4, v0);
  sub_1D7D28E2C();
  sub_1D7D291DC();

  v6(v4, v5, v0);
  sub_1D7D28ADC();

  return (v7)(v4, v0);
}

uint64_t sub_1D798DDB4()
{
  v0 = sub_1D7D2932C();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7D28E2C();
  sub_1D798C468(0, &qword_1EE0CE058);
  sub_1D7D291EC();

  sub_1D7D28E2C();
  sub_1D798C468(0, &qword_1EE0CCF80);
  sub_1D7D291EC();

  sub_1D7D28E2C();
  sub_1D798C468(0, qword_1EE0CEC08);
  sub_1D7D291EC();

  sub_1D7D28E2C();
  sub_1D798C468(0, qword_1EE0CCEC0);
  sub_1D7D291EC();

  sub_1D7D28E2C();
  sub_1D798C468(0, &qword_1EE0CCF68);
  sub_1D7D291EC();

  sub_1D7D28E2C();
  sub_1D798C468(0, &qword_1EE0CBB60);
  sub_1D7D291EC();

  sub_1D7D28E2C();
  sub_1D798C468(0, qword_1EE0CBF08);
  sub_1D7D291EC();

  sub_1D7D28E2C();
  sub_1D798C468(0, &unk_1EE0CDBA0);
  sub_1D7D291EC();

  sub_1D7D28E2C();
  sub_1D798C468(0, &unk_1EE0CC8B0);
  sub_1D7D291EC();

  sub_1D7D28E2C();
  sub_1D798F35C();
  sub_1D7D291DC();

  sub_1D7D28E3C();
  sub_1D7D291CC();

  sub_1D7D28E2C();
  sub_1D7994F18();
  sub_1D7D291DC();

  sub_1D7D28E3C();
  sub_1D7D291CC();

  sub_1D7D28E2C();
  type metadata accessor for EndOfArticleFeedPoolService();
  sub_1D7D291DC();

  sub_1D7D28E2C();
  type metadata accessor for EndOfArticleFeedGroupEmitterFactory();
  sub_1D7D291DC();

  sub_1D7D28E2C();
  sub_1D7990D20();
  sub_1D7D291DC();

  sub_1D7D28E2C();
  sub_1D7995088();
  sub_1D7D291DC();

  sub_1D7D28E2C();
  type metadata accessor for EndOfRecipeFeedServiceConfigFetcher();
  sub_1D7D291DC();

  sub_1D7D28E2C();
  sub_1D7D291DC();

  sub_1D7D28E3C();
  sub_1D7D291CC();

  sub_1D7D28E2C();
  type metadata accessor for EndOfRecipeFeedPoolService();
  sub_1D7D291DC();

  sub_1D7D28E2C();
  type metadata accessor for EndOfRecipeFeedGroupEmitterFactory();
  sub_1D7D291DC();

  sub_1D7D28E3C();
  sub_1D7D291CC();

  sub_1D7D28E2C();
  sub_1D798C468(0, &qword_1EE0CD1D0);
  sub_1D7D291EC();

  sub_1D7D28E2C();
  sub_1D798C468(0, qword_1EE0CDD90);
  sub_1D7D291EC();

  v5 = *(v1 + 104);
  v5(v4, *MEMORY[0x1E69D6AC0], v0);
  sub_1D7D28ADC();

  v6 = *(v1 + 8);
  v6(v4, v0);
  sub_1D7D28E2C();
  sub_1D798C468(0, qword_1EE0CE580);
  sub_1D7D291EC();

  v5(v4, *MEMORY[0x1E69D6AD0], v0);
  sub_1D7D28ADC();

  v6(v4, v0);
  sub_1D7D28E2C();
  sub_1D798C468(0, &qword_1EE0CED70);
  sub_1D7D291EC();

  sub_1D7D28E3C();
  sub_1D7D291CC();

  sub_1D7D28E2C();
  sub_1D7D291CC();

  sub_1D7D28E2C();
  sub_1D798C468(0, &qword_1EE0CDCA0);
  sub_1D7D291EC();
}

uint64_t type metadata accessor for EndOfArticleFeedServiceConfig()
{
  result = qword_1EE0CD108;
  if (!qword_1EE0CD108)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1D798E858()
{
  result = type metadata accessor for EndOfArticleFeedContentConfig();
  if (v1 <= 0x3F)
  {
    result = sub_1D7994DC8();
    if (v2 <= 0x3F)
    {
      result = sub_1D7D2E3FC();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t type metadata accessor for EndOfArticleFeedContentConfig()
{
  result = qword_1EE0CD1B0;
  if (!qword_1EE0CD1B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D798E958()
{
  result = type metadata accessor for EndOfArticleFeedConfig();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for EndOfArticleFeedKnobsConfig();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_1D798E9DC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D7D3130C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1D798EA30(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1D798EA94(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1D798EAF8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1D798EB5C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t type metadata accessor for MoreFromEndOfArticleFeedGroupConfigData()
{
  result = qword_1EE0CC4A8;
  if (!qword_1EE0CC4A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D798EC0C()
{
  result = sub_1D7D2F06C();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1D798EC80()
{
  if (!qword_1EE0CBC90)
  {
    type metadata accessor for RelatedEndOfArticleFeedGroupConfigData();
    sub_1D798EDDC(&unk_1EE0CC560, type metadata accessor for RelatedEndOfArticleFeedGroupConfigData);
    sub_1D798EDDC(qword_1EE0CC570, type metadata accessor for RelatedEndOfArticleFeedGroupConfigData);
    v0 = sub_1D7D2DF5C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE0CBC90);
    }
  }
}

uint64_t sub_1D798ED4C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D798ED94(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D798EDDC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D798EE24(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D798EE6C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D798EEB4(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

void sub_1D798EEFC()
{
  if (!qword_1EE0CBC60)
  {
    type metadata accessor for RecommendedEndOfArticleFeedGroupConfigData();
    sub_1D798F830(&qword_1EE0CC188, type metadata accessor for RecommendedEndOfArticleFeedGroupConfigData);
    sub_1D798F830(qword_1EE0CC190, type metadata accessor for RecommendedEndOfArticleFeedGroupConfigData);
    v0 = sub_1D7D2DF5C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE0CBC60);
    }
  }
}

void sub_1D798EFC8()
{
  if (!qword_1EE0CBC70)
  {
    type metadata accessor for MoreToReadEndOfArticleFeedGroupConfigData();
    sub_1D798F878(&qword_1EE0CC2D8, type metadata accessor for MoreToReadEndOfArticleFeedGroupConfigData);
    sub_1D798F878(&unk_1EE0CC2E0, type metadata accessor for MoreToReadEndOfArticleFeedGroupConfigData);
    v0 = sub_1D7D2DF5C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE0CBC70);
    }
  }
}

uint64_t type metadata accessor for MoreToReadEndOfArticleFeedGroupConfigData()
{
  result = qword_1EE0CC2C0;
  if (!qword_1EE0CC2C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1D798F0E0()
{
  result = qword_1EE0CBA58;
  if (!qword_1EE0CBA58)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EE0CBA58);
  }

  return result;
}

uint64_t sub_1D798F168(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_1D798F278()
{
  sub_1D7D28E2C();
  sub_1D798C3BC(0, &qword_1EE0CB988);
  sub_1D7D291DC();
}

void sub_1D798F2FC()
{
  if (!qword_1EE0CBB88)
  {
    sub_1D79906C8();
    v0 = sub_1D7D2F13C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE0CBB88);
    }
  }
}

void sub_1D798F35C()
{
  if (!qword_1EE0CBCB0)
  {
    type metadata accessor for EndOfArticleFeedServiceConfig();
    sub_1D7990CA8();
    sub_1D798ED4C(&qword_1EE0CD120, type metadata accessor for EndOfArticleFeedServiceConfig);
    v0 = sub_1D7D2DCBC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE0CBCB0);
    }
  }
}

void sub_1D798F414()
{
  sub_1D798EA30(319, &qword_1EE0CFC20, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    sub_1D798EA30(319, &qword_1EE0CBAF0, type metadata accessor for EndOfArticleFeedGroupConfig, MEMORY[0x1E69E62F8]);
    if (v1 <= 0x3F)
    {
      sub_1D798EA30(319, &qword_1EE0BF9B8, MEMORY[0x1E69B59C0], MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t type metadata accessor for EndOfArticleFeedGroupConfig()
{
  result = qword_1EE0CD710;
  if (!qword_1EE0CD710)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D798F58C()
{
  sub_1D798F63C();
  if (v0 <= 0x3F)
  {
    sub_1D798EC80();
    if (v1 <= 0x3F)
    {
      sub_1D798EEFC();
      if (v2 <= 0x3F)
      {
        sub_1D798EFC8();
        if (v3 <= 0x3F)
        {
          sub_1D798F8C0();
          if (v4 <= 0x3F)
          {
            swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1D798F63C()
{
  if (!qword_1EE0CBC80)
  {
    type metadata accessor for MoreFromEndOfArticleFeedGroupConfigData();
    sub_1D798F708(&qword_1EE0CC4B8, type metadata accessor for MoreFromEndOfArticleFeedGroupConfigData);
    sub_1D798F708(&qword_1EE0CC4C0, type metadata accessor for MoreFromEndOfArticleFeedGroupConfigData);
    v0 = sub_1D7D2DF5C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE0CBC80);
    }
  }
}

uint64_t sub_1D798F708(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D798F750(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for RelatedEndOfArticleFeedGroupConfigData()
{
  result = qword_1EE0CC550;
  if (!qword_1EE0CC550)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata accessor for RecommendedEndOfArticleFeedGroupConfigData()
{
  result = qword_1EE0CC178;
  if (!qword_1EE0CC178)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D798F830(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D798F878(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1D798F8C0()
{
  if (!qword_1EE0CBC50)
  {
    type metadata accessor for MoreFromIssueEndOfArticleFeedGroupConfigData();
    sub_1D798EDDC(&unk_1EE0CC040, type metadata accessor for MoreFromIssueEndOfArticleFeedGroupConfigData);
    sub_1D798EDDC(qword_1EE0CC050, type metadata accessor for MoreFromIssueEndOfArticleFeedGroupConfigData);
    v0 = sub_1D7D2DF5C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE0CBC50);
    }
  }
}

uint64_t type metadata accessor for MoreFromIssueEndOfArticleFeedGroupConfigData()
{
  result = qword_1EE0CC030;
  if (!qword_1EE0CC030)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata accessor for EndOfArticleFeedKnobsConfig()
{
  result = qword_1EE0CD668;
  if (!qword_1EE0CD668)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata accessor for MoreFromEndOfArticleFeedGroupKnobs()
{
  result = qword_1EE0CCAE8;
  if (!qword_1EE0CCAE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D798FA70()
{
  sub_1D7990AB0(319);
  if (v0 <= 0x3F)
  {
    sub_1D7994BB0();
    if (v1 <= 0x3F)
    {
      sub_1D7994C2C();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1D798FB0C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(void), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a4();
    v11 = a5(a1, v9, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

void sub_1D798FB8C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(void), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a4();
    v11 = a5(a1, v9, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

void sub_1D798FC0C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(void), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a4();
    v11 = a5(a1, v9, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

uint64_t sub_1D798FC8C(uint64_t a1)
{
  v2 = sub_1D7D28D9C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7D28E3C();
  sub_1D7D291CC();

  v41 = a1;
  sub_1D7D28E3C();
  sub_1D7D291CC();

  sub_1D7D28E4C();
  __swift_project_boxed_opaque_existential_1(v42, v43);
  v7 = sub_1D798C468(0, &qword_1EE0CBE60);
  v8 = *MEMORY[0x1E69D6500];
  v9 = *(v3 + 104);
  v40 = v3 + 104;
  v38 = v8;
  v9(v6, v8, v2);
  v36 = v9;
  sub_1D7D2925C();
  v37 = *(v3 + 8);
  v37(v6, v2);
  __swift_destroy_boxed_opaque_existential_1(v42);
  sub_1D7D28E4C();
  __swift_project_boxed_opaque_existential_1(v42, v43);
  v9(v6, v8, v2);
  sub_1D7D2925C();
  v10 = v37;
  v37(v6, v2);
  __swift_destroy_boxed_opaque_existential_1(v42);
  sub_1D7D28E3C();
  sub_1D7D291CC();

  sub_1D7D28E4C();
  __swift_project_boxed_opaque_existential_1(v42, v43);
  v11 = v38;
  v36(v6, v38, v2);
  sub_1D7D2925C();
  v35 = v3 + 8;
  v10(v6, v2);
  __swift_destroy_boxed_opaque_existential_1(v42);
  sub_1D7D28E3C();
  sub_1D7D291CC();

  sub_1D7D28E4C();
  __swift_project_boxed_opaque_existential_1(v42, v43);
  v34 = v2;
  v12 = v36;
  v36(v6, v11, v2);
  sub_1D7D2925C();
  v10(v6, v2);
  __swift_destroy_boxed_opaque_existential_1(v42);
  sub_1D7D28E3C();
  sub_1D7D291CC();

  sub_1D7D28E4C();
  __swift_project_boxed_opaque_existential_1(v42, v43);
  v13 = v38;
  v14 = v34;
  v12(v6, v38, v34);
  v39 = v7;
  sub_1D7D2925C();
  v15 = v14;
  v16 = v14;
  v17 = v37;
  v37(v6, v15);
  __swift_destroy_boxed_opaque_existential_1(v42);
  sub_1D7D28E3C();
  sub_1D7D291CC();

  sub_1D7D28E4C();
  __swift_project_boxed_opaque_existential_1(v42, v43);
  v18 = v13;
  v19 = v13;
  v20 = v36;
  v36(v6, v19, v16);
  sub_1D7D2925C();
  v17(v6, v16);
  __swift_destroy_boxed_opaque_existential_1(v42);
  sub_1D7D28E3C();
  sub_1D7D291CC();

  sub_1D7D28E4C();
  __swift_project_boxed_opaque_existential_1(v42, v43);
  v21 = v18;
  v22 = v34;
  v20(v6, v18, v34);
  sub_1D7D2925C();
  v23 = v37;
  v37(v6, v22);
  __swift_destroy_boxed_opaque_existential_1(v42);
  sub_1D7D28E3C();
  sub_1D7D291CC();

  sub_1D7D28E4C();
  __swift_project_boxed_opaque_existential_1(v42, v43);
  v20(v6, v21, v22);
  sub_1D7D2925C();
  v24 = v22;
  v23(v6, v22);
  __swift_destroy_boxed_opaque_existential_1(v42);
  sub_1D7D28E3C();
  sub_1D7D291CC();

  sub_1D7D28E4C();
  __swift_project_boxed_opaque_existential_1(v42, v43);
  v25 = v38;
  v26 = v24;
  v27 = v24;
  v28 = v36;
  v36(v6, v38, v27);
  sub_1D7D2925C();
  v29 = v26;
  v30 = v26;
  v31 = v37;
  v37(v6, v29);
  __swift_destroy_boxed_opaque_existential_1(v42);
  sub_1D7D28E3C();
  sub_1D7D291CC();

  sub_1D7D28E4C();
  __swift_project_boxed_opaque_existential_1(v42, v43);
  v28(v6, v25, v30);
  sub_1D7D2925C();
  v31(v6, v30);
  __swift_destroy_boxed_opaque_existential_1(v42);
  sub_1D7D28E3C();
  sub_1D7D291CC();

  sub_1D7D28E4C();
  __swift_project_boxed_opaque_existential_1(v42, v43);
  v28(v6, v38, v30);
  sub_1D7D2925C();
  v31(v6, v30);
  return __swift_destroy_boxed_opaque_existential_1(v42);
}

uint64_t sub_1D79905F4()
{
  sub_1D7D28E2C();
  sub_1D7990664();
  sub_1D7D291DC();
}

unint64_t sub_1D7990664()
{
  result = qword_1EE0CB9B8;
  if (!qword_1EE0CB9B8)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EE0CB9B8);
  }

  return result;
}

unint64_t sub_1D79906C8()
{
  result = qword_1EE0CEB50;
  if (!qword_1EE0CEB50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0CEB50);
  }

  return result;
}

uint64_t sub_1D799071C()
{
  v0 = sub_1D7D2932C();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7D28E2C();
  sub_1D798C3BC(0, &unk_1EE0CBA48);
  sub_1D7D291DC();

  sub_1D7D28E2C();
  sub_1D798C3BC(0, &qword_1EE0CB9B0);
  sub_1D7D291DC();

  (*(v1 + 104))(v4, *MEMORY[0x1E69D6AD0], v0);
  sub_1D7D28ADC();

  return (*(v1 + 8))(v4, v0);
}

uint64_t type metadata accessor for EndOfArticleFeedConfig()
{
  result = qword_1EE0CE358;
  if (!qword_1EE0CE358)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D799091C()
{
  result = type metadata accessor for EndOfArticleFeedGroupKnobs();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t type metadata accessor for EndOfArticleFeedGroupKnobs()
{
  result = qword_1EE0CDB88;
  if (!qword_1EE0CDB88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D79909E4()
{
  result = type metadata accessor for MoreFromEndOfArticleFeedGroupKnobs();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for RelatedEndOfArticleFeedGroupKnobs();
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for RecommendedEndOfArticleFeedGroupKnobs();
      if (v3 <= 0x3F)
      {
        result = type metadata accessor for MoreToReadEndOfArticleFeedGroupKnobs();
        if (v4 <= 0x3F)
        {
          result = type metadata accessor for MoreFromIssueEndOfArticleFeedGroupKnobs();
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
            return 0;
          }
        }
      }
    }
  }

  return result;
}

uint64_t type metadata accessor for RelatedEndOfArticleFeedGroupKnobs()
{
  result = qword_1EE0CCD10;
  if (!qword_1EE0CCD10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata accessor for RecommendedEndOfArticleFeedGroupKnobs()
{
  result = qword_1EE0CC740;
  if (!qword_1EE0CC740)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D7990C0C()
{
  sub_1D7990AB0(319);
  if (v0 <= 0x3F)
  {
    sub_1D7994BB0();
    if (v1 <= 0x3F)
    {
      sub_1D7994C2C();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_1D7990CA8()
{
  result = qword_1EE0CCF88;
  if (!qword_1EE0CCF88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0CCF88);
  }

  return result;
}

void sub_1D7990D20()
{
  if (!qword_1EE0CBBA0)
  {
    sub_1D7990DB4();
    sub_1D798ED4C(&unk_1EE0CBC00, sub_1D7990DB4);
    v0 = sub_1D7D2EC9C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE0CBBA0);
    }
  }
}

void sub_1D7990DB4()
{
  if (!qword_1EE0CBBF8)
  {
    type metadata accessor for EndOfRecipeFeedGroupEmitterFactory();
    sub_1D7990EC4();
    sub_1D798ED4C(&qword_1EE0CCC30, type metadata accessor for EndOfRecipeFeedGroupEmitterFactory);
    sub_1D798ED4C(&qword_1EE0CBC38, sub_1D7990EC4);
    v0 = sub_1D7D2E10C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE0CBBF8);
    }
  }
}

void sub_1D7990EC4()
{
  if (!qword_1EE0CBC30)
  {
    type metadata accessor for EndOfRecipeFeedPoolService();
    sub_1D798ED4C(qword_1EE0CD9B8, type metadata accessor for EndOfRecipeFeedPoolService);
    v0 = sub_1D7D2DF8C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE0CBC30);
    }
  }
}

uint64_t type metadata accessor for EndOfRecipeFeedServiceConfig()
{
  result = qword_1EE0CD278;
  if (!qword_1EE0CD278)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D7990FA4()
{
  result = type metadata accessor for EndOfRecipeFeedConfig();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for EndOfRecipeFeedKnobsConfig();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t type metadata accessor for EndOfRecipeFeedConfig()
{
  result = qword_1EE0CE558;
  if (!qword_1EE0CE558)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D7991074()
{
  sub_1D798EAF8(319, &qword_1EE0CFC20, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    sub_1D798EAF8(319, &qword_1EE0CBAF8, type metadata accessor for EndOfRecipeFeedGroupConfig, MEMORY[0x1E69E62F8]);
    if (v1 <= 0x3F)
    {
      sub_1D798EAF8(319, &qword_1EE0BF9B8, MEMORY[0x1E69B59C0], MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1D79911A0()
{
  if (!qword_1EE0CBCA0)
  {
    type metadata accessor for RecipeTopicsEndOfRecipeFeedGroupConfigData();
    sub_1D79952A4(&qword_1EE0CFB68, type metadata accessor for RecipeTopicsEndOfRecipeFeedGroupConfigData);
    sub_1D79952A4(qword_1EE0CFB70, type metadata accessor for RecipeTopicsEndOfRecipeFeedGroupConfigData);
    v0 = sub_1D7D2DF5C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE0CBCA0);
    }
  }
}

void sub_1D799126C()
{
  sub_1D79911A0();
  if (v0 <= 0x3F)
  {
    sub_1D79913BC();
    if (v1 <= 0x3F)
    {
      sub_1D7991488();
      if (v2 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

uint64_t type metadata accessor for RecipeTopicsEndOfRecipeFeedGroupConfigData()
{
  result = qword_1EE0CFB50;
  if (!qword_1EE0CFB50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D7991340()
{
  result = sub_1D7D2F06C();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1D79913BC()
{
  if (!qword_1EE0CBC40)
  {
    type metadata accessor for RelatedArticlesEndOfRecipeFeedGroupConfigData();
    sub_1D79953C8(&qword_1EE0CFA28, type metadata accessor for RelatedArticlesEndOfRecipeFeedGroupConfigData);
    sub_1D79953C8(qword_1EE0CFA30, type metadata accessor for RelatedArticlesEndOfRecipeFeedGroupConfigData);
    v0 = sub_1D7D2DF5C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE0CBC40);
    }
  }
}

void sub_1D7991488()
{
  if (!qword_1EE0CBC48)
  {
    type metadata accessor for RelatedRecipesEndOfRecipeFeedGroupConfigData();
    sub_1D79915A0(&qword_1EE0CBFA0, type metadata accessor for RelatedRecipesEndOfRecipeFeedGroupConfigData);
    sub_1D79915A0(qword_1EE0CBFA8, type metadata accessor for RelatedRecipesEndOfRecipeFeedGroupConfigData);
    v0 = sub_1D7D2DF5C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE0CBC48);
    }
  }
}

uint64_t type metadata accessor for RelatedRecipesEndOfRecipeFeedGroupConfigData()
{
  result = qword_1EE0CBF90;
  if (!qword_1EE0CBF90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D79915A0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for RelatedArticlesEndOfRecipeFeedGroupKnobs()
{
  result = qword_1EE0CFAC0;
  if (!qword_1EE0CFAC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D7991634()
{
  sub_1D7995698();
  if (v0 <= 0x3F)
  {
    sub_1D7994BB0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1D79916B8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for RecipeTopicsEndOfRecipeFeedGroupKnobs()
{
  result = qword_1EE0CFC00;
  if (!qword_1EE0CFC00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1D799174C()
{
  result = qword_1EE0CBB50;
  if (!qword_1EE0CBB50)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EE0CBB50);
  }

  return result;
}

uint64_t sub_1D79917B0()
{
  sub_1D7D28E2C();
  sub_1D798C468(0, &qword_1EE0CBB80);
  sub_1D7D291EC();

  sub_1D7D28E2C();
  sub_1D798C468(0, &qword_1EE0CBB58);
  sub_1D7D291EC();

  sub_1D7D28E2C();
  sub_1D798C468(0, &qword_1EE0CBB48);
  sub_1D7D291EC();

  sub_1D7D28E2C();
  sub_1D7991994();
  sub_1D7D291DC();

  sub_1D7D28E2C();
  sub_1D798C468(0, &qword_1EE0CBB40);
  sub_1D7D291EC();
}

unint64_t sub_1D7991994()
{
  result = qword_1EE0CBB28;
  if (!qword_1EE0CBB28)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EE0CBB28);
  }

  return result;
}

uint64_t sub_1D79919FC()
{
  v0 = sub_1D7D2932C();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7D28E2C();
  sub_1D798F168(0, &unk_1EE0CE570);
  sub_1D7D291EC();

  sub_1D7D28E2C();
  sub_1D798F168(0, qword_1EE0CF6D0);
  sub_1D7D291EC();

  v5 = *MEMORY[0x1E69D6AD0];
  v6 = *(v1 + 104);
  v6(v4, v5, v0);
  sub_1D7D28ADC();

  v7 = *(v1 + 8);
  v7(v4, v0);
  sub_1D7D28E3C();
  sub_1D798F168(0, &unk_1EE0CBEC0);
  sub_1D7D291EC();

  v6(v4, v5, v0);
  sub_1D7D28ADC();

  v7(v4, v0);
  sub_1D7D28E2C();
  sub_1D798F168(0, &qword_1EE0CC8C8);
  sub_1D7D291EC();

  sub_1D7D28E2C();
  sub_1D798F168(0, qword_1EE0CC770);
  sub_1D7D291EC();

  sub_1D7D28E2C();
  type metadata accessor for ReplicaAdvertisementStyler();
  sub_1D7D291DC();
}

uint64_t sub_1D7991D80()
{
  sub_1D7D28E2C();
  sub_1D798C3BC(0, &unk_1EE0CB9E8);
  sub_1D7D291DC();

  sub_1D7D28E3C();
  type metadata accessor for SubscribeActionHandler();
  sub_1D7D291DC();

  sub_1D7D28ACC();

  sub_1D7D28E2C();
  sub_1D798C3BC(0, &qword_1EE0CB9C0);
  sub_1D7D291DC();

  sub_1D7D28E2C();
  sub_1D798C3BC(0, &qword_1EE0CB9A8);
  sub_1D7D291DC();

  sub_1D7D28E2C();
  sub_1D798C468(0, &unk_1EE0CBE80);
  sub_1D7D291EC();
}

uint64_t type metadata accessor for SubscribeActionHandler()
{
  result = qword_1EE0CE128;
  if (!qword_1EE0CE128)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D7991FD8()
{
  result = type metadata accessor for SubscribeActionModel();
  if (v1 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t type metadata accessor for SubscribeActionModel()
{
  result = qword_1EE0CE8A8;
  if (!qword_1EE0CE8A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D7992110()
{
  sub_1D7992238();
  if (v0 <= 0x3F)
  {
    sub_1D7992288(319, &qword_1EE0CBAE8, MEMORY[0x1E69B6AB0], MEMORY[0x1E69E62F8]);
    if (v1 <= 0x3F)
    {
      sub_1D7992288(319, &unk_1EE0CBE90, MEMORY[0x1E69B6B80], MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1D7992238()
{
  if (!qword_1EE0CBB10)
  {
    v0 = sub_1D7D3130C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE0CBB10);
    }
  }
}

void sub_1D7992288(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1D79922F0()
{
  v0 = sub_1D7D2932C();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7D28E2C();
  sub_1D798C468(0, &qword_1EE0CCEA8);
  sub_1D7D291EC();

  sub_1D7D28E2C();
  sub_1D798C468(0, &qword_1EE0CCC50);
  sub_1D7D291EC();

  sub_1D7D28E2C();
  sub_1D798C468(0, &unk_1EE0CBEE8);
  sub_1D7D291EC();

  sub_1D7D28E3C();
  sub_1D798C468(0, &qword_1EE0CCEA0);
  sub_1D7D291EC();

  sub_1D7D28E2C();
  type metadata accessor for SharedWithYouHeaderViewController();
  sub_1D7D291DC();

  sub_1D7D28E2C();
  sub_1D798C468(0, &unk_1EE0CBEF8);
  sub_1D7D291EC();

  sub_1D7D28E3C();
  sub_1D798C468(0, qword_1EE0CC0F0);
  sub_1D7D291EC();

  sub_1D7D28E2C();
  type metadata accessor for SponsoredHeaderViewController();
  sub_1D7D291DC();

  sub_1D7D28E2C();
  sub_1D798C468(0, qword_1EE0CC238);
  sub_1D7D291EC();

  sub_1D7D28E3C();
  sub_1D798C468(0, qword_1EE0CC2F0);
  sub_1D7D291EC();

  sub_1D7D28E2C();
  type metadata accessor for AIHeaderViewController();
  sub_1D7D291DC();

  sub_1D7D28E2C();
  sub_1D798C468(0, &qword_1EE0CCC48);
  sub_1D7D291EC();

  sub_1D7D28E3C();
  sub_1D798C468(0, &unk_1EE0CCE90);
  sub_1D7D291EC();

  sub_1D7D28E2C();
  sub_1D798C468(0, qword_1EE0CC4C8);
  sub_1D7D291EC();

  sub_1D7D28E3C();
  sub_1D798C468(0, &unk_1EE0CBE70);
  sub_1D7D291EC();

  (*(v1 + 104))(v4, *MEMORY[0x1E69D6AD0], v0);
  sub_1D7D28ADC();

  (*(v1 + 8))(v4, v0);
  sub_1D7D28E2C();
  sub_1D798C468(0, qword_1EE0CC6B0);
  sub_1D7D291EC();

  sub_1D7D28E2C();
  sub_1D798C468(0, &unk_1EE0CCD20);
  sub_1D7D291EC();

  sub_1D7D28E2C();
  sub_1D798C468(0, &unk_1EE0CC758);
  sub_1D7D291EC();

  sub_1D7D28E3C();
  sub_1D798C468(0, qword_1EE0CC8D0);
  sub_1D7D291EC();

  sub_1D7D28E3C();
  sub_1D798C3BC(0, &qword_1EE0CBE48);
  sub_1D7D291DC();

  sub_1D7D28E3C();
  sub_1D798C468(0, &unk_1EE0CBE50);
  sub_1D7D291EC();
}

uint64_t type metadata accessor for SharedWithYouHeaderViewController()
{
  result = qword_1EE0CCC58;
  if (!qword_1EE0CCC58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D7992BA0()
{
  result = sub_1D7D2EECC();
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

uint64_t sub_1D7992C9C()
{
  v0 = sub_1D7D2932C();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7D28E2C();
  sub_1D798F168(0, qword_1EE0CF990);
  sub_1D7D291EC();

  v5 = *(v1 + 104);
  v5(v4, *MEMORY[0x1E69D6AB8], v0);
  sub_1D7D28ADC();

  v6 = *(v1 + 8);
  v6(v4, v0);
  sub_1D7D28E2C();
  sub_1D798F168(0, &unk_1EE0CE048);
  sub_1D7D291EC();

  sub_1D7D28E2C();
  sub_1D7992EFC(0, &qword_1EE0CBAC0);
  sub_1D7D291DC();

  v5(v4, *MEMORY[0x1E69D6AD0], v0);
  sub_1D7D28ADC();

  return (v6)(v4, v0);
}

uint64_t sub_1D7992EFC(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_1D7992F48(uint64_t a1)
{
  v11 = a1;
  v1 = sub_1D7D28D9C();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7D28E4C();
  __swift_project_boxed_opaque_existential_1(v12, v13);
  sub_1D798C3BC(0, &unk_1EE0CBA38);
  v6 = *MEMORY[0x1E69D6500];
  v10 = *(v2 + 104);
  v10(v5, v6, v1);
  sub_1D7D2924C();
  v7 = *(v2 + 8);
  v7(v5, v1);
  __swift_destroy_boxed_opaque_existential_1(v12);
  sub_1D7D28E4C();
  v9 = v14;
  __swift_project_boxed_opaque_existential_1(v12, v13);
  sub_1D798C3BC(0, &qword_1EE0CBA20);
  v10(v5, v6, v1);
  sub_1D7D2924C();
  v7(v5, v1);
  __swift_destroy_boxed_opaque_existential_1(v12);
  sub_1D7D28E3C();
  sub_1D7D291CC();
}

uint64_t sub_1D79931A4(uint64_t a1)
{
  v11 = a1;
  v1 = sub_1D7D28D9C();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7D28E4C();
  __swift_project_boxed_opaque_existential_1(v12, v13);
  sub_1D798C3BC(0, &unk_1EE0CBA38);
  v6 = *MEMORY[0x1E69D6500];
  v10 = *(v2 + 104);
  v10(v5, v6, v1);
  sub_1D7D2924C();
  v7 = *(v2 + 8);
  v7(v5, v1);
  __swift_destroy_boxed_opaque_existential_1(v12);
  sub_1D7D28E4C();
  v9 = v14;
  __swift_project_boxed_opaque_existential_1(v12, v13);
  sub_1D798C3BC(0, &qword_1EE0CBA20);
  v10(v5, v6, v1);
  sub_1D7D2924C();
  v7(v5, v1);
  __swift_destroy_boxed_opaque_existential_1(v12);
  sub_1D7D28E3C();
  sub_1D7D291CC();
}

uint64_t sub_1D79933FC(uint64_t a1)
{
  v2 = sub_1D7D28D9C();
  v3 = *(v2 - 8);
  v24 = v2;
  v25 = v3;
  MEMORY[0x1EEE9AC00](v2, v4);
  v23 = v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1D7D2932C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7D28E2C();
  sub_1D798C468(0, qword_1EE0CE060);
  sub_1D7D291EC();

  sub_1D7D28E2C();
  sub_1D798C468(0, &unk_1EE0CFC10);
  sub_1D7D291EC();

  sub_1D7D28E2C();
  type metadata accessor for ArticleViewerViewController();
  sub_1D7D291DC();

  sub_1D7D28ACC();

  sub_1D7D28E2C();
  sub_1D798C468(0, qword_1EE0CF230);
  sub_1D7D291EC();

  sub_1D7D28E2C();
  sub_1D798C3BC(0, &unk_1EE0CBA70);
  sub_1D7D291DC();

  sub_1D7D28E2C();
  type metadata accessor for URLHandler();
  sub_1D7D291DC();

  v11 = *MEMORY[0x1E69D6AD0];
  v12 = *(v7 + 104);
  v12(v10, v11, v6);
  sub_1D7D28ADC();

  v13 = *(v7 + 8);
  v13(v10, v6);
  sub_1D7D28E2C();
  sub_1D798C468(0, &qword_1EE0CBB38);
  sub_1D7D291EC();

  sub_1D7D28E2C();
  sub_1D798C468(0, qword_1EE0CD530);
  sub_1D7D291EC();

  sub_1D7D28E2C();
  sub_1D798C3BC(0, qword_1EE0CDBF8);
  sub_1D7D291DC();

  sub_1D7D28E2C();
  sub_1D798C468(0, &unk_1EE0CDD80);
  sub_1D7D291EC();

  sub_1D7D28E2C();
  sub_1D798C3BC(0, qword_1EE0CF398);
  sub_1D7D291DC();

  sub_1D7D28E2C();
  sub_1D798C3BC(0, &qword_1EE0CB9A0);
  sub_1D7D291DC();

  v12(v10, v11, v6);
  sub_1D7D28ADC();

  v13(v10, v6);
  sub_1D7D28E2C();
  sub_1D798C468(0, qword_1EE0CCA58);
  sub_1D7D291EC();

  v12(v10, v11, v6);
  sub_1D7D28ADC();

  v13(v10, v6);
  sub_1D7D28E2C();
  sub_1D798C468(0, &unk_1EE0CCF90);
  sub_1D7D291EC();

  sub_1D7D28E2C();
  sub_1D798C3BC(0, &qword_1EE0CBAB8);
  sub_1D7D291DC();

  v12(v10, *MEMORY[0x1E69D6AB8], v6);
  sub_1D7D28ADC();

  v13(v10, v6);
  sub_1D7D28E2C();
  sub_1D7993EC4(0, &qword_1EE0CBAE0, type metadata accessor for NUArticleMessage, MEMORY[0x1E69E62F8]);
  sub_1D7D291EC();

  sub_1D7D28E2C();
  sub_1D798C468(0, &qword_1EE0CBEE0);
  sub_1D7D291EC();

  v22[1] = a1;
  sub_1D7D28E2C();
  sub_1D7D291EC();

  sub_1D7D28E4C();
  __swift_project_boxed_opaque_existential_1(v26, v27);
  sub_1D798C468(0, &unk_1EE0CBEA0);
  v14 = *MEMORY[0x1E69D6500];
  v16 = v24;
  v15 = v25;
  v17 = *(v25 + 104);
  v18 = v23;
  v17(v23, v14, v24);
  sub_1D7D2925C();
  v19 = v15 + 8;
  v20 = *(v15 + 8);
  v25 = v19;
  v20(v18, v16);
  __swift_destroy_boxed_opaque_existential_1(v26);
  sub_1D7D28E4C();
  v22[0] = v28;
  __swift_project_boxed_opaque_existential_1(v26, v27);
  sub_1D798C468(0, &unk_1EE0CCC38);
  v17(v18, v14, v16);
  sub_1D7D2925C();
  v20(v18, v16);
  __swift_destroy_boxed_opaque_existential_1(v26);
  sub_1D7D28E3C();
  sub_1D7D291CC();
}

void sub_1D7993EC4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1D7993F3C(uint64_t a1, unint64_t *a2)
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

uint64_t sub_1D7993F8C()
{
  result = type metadata accessor for ArticleModel();
  if (v1 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t type metadata accessor for ArticleNavigationAction()
{
  result = qword_1EE0CE110;
  if (!qword_1EE0CE110)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D799412C()
{
  if (!qword_1EE0CBB78)
  {
    sub_1D79961C4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE0CBB78);
    }
  }
}

void sub_1D7994174()
{
  if (!qword_1EE0CBB00)
  {
    type metadata accessor for ArticleNavigationAction();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EE0CBB00);
    }
  }
}

void sub_1D7994200(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

unint64_t sub_1D799426C()
{
  result = qword_1EE0CF8C8;
  if (!qword_1EE0CF8C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0CF8C8);
  }

  return result;
}

uint64_t sub_1D79942C0()
{
  sub_1D7D28E2C();
  sub_1D798C468(0, &unk_1EE0CD1C0);
  sub_1D7D291EC();

  sub_1D7D28E2C();
  type metadata accessor for CampaignLandingPageViewController();
  sub_1D7D291DC();

  sub_1D7D28E3C();
  sub_1D7D291CC();
}

void sub_1D79943C0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(void), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a4();
    v11 = a5(a1, v9, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

uint64_t sub_1D7994440()
{
  sub_1D7D28E2C();
  sub_1D798C468(0, qword_1EE0CE4C8);
  sub_1D7D291EC();

  sub_1D7D28E2C();
  sub_1D798C468(0, &qword_1EE0CFC28);
  sub_1D7D291EC();

  sub_1D7D28E2C();
  type metadata accessor for EndOfRecipeConfig();
  sub_1D7D291DC();

  sub_1D7D28E2C();
  sub_1D798C468(0, &qword_1EE0BF848);
  sub_1D7D291EC();

  sub_1D7D28E2C();
  sub_1D7996944(0);
  sub_1D7D291DC();

  sub_1D7D28E3C();
  sub_1D7D291CC();
}

void sub_1D7994678(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = type metadata accessor for EndOfRecipeSectionDescriptor();
    v8[1] = type metadata accessor for EndOfRecipeModel();
    v8[2] = sub_1D7996F14(&unk_1EE0C4B98, type metadata accessor for EndOfRecipeSectionDescriptor);
    v8[3] = sub_1D7996F14(&qword_1EE0CA100, type metadata accessor for EndOfRecipeModel);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1D799476C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = type metadata accessor for EndOfRecipeSectionDescriptor();
    v8[1] = type metadata accessor for EndOfRecipeModel();
    v8[2] = sub_1D7996F5C(&unk_1EE0C4B98, type metadata accessor for EndOfRecipeSectionDescriptor);
    v8[3] = sub_1D7996F5C(&qword_1EE0CA100, type metadata accessor for EndOfRecipeModel);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1D7994860(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = type metadata accessor for EndOfRecipeSectionDescriptor();
    v8[1] = type metadata accessor for EndOfRecipeModel();
    v8[2] = sub_1D7B571FC(&unk_1EE0C4B98, type metadata accessor for EndOfRecipeSectionDescriptor);
    v8[3] = sub_1D7B571FC(&qword_1EE0CA100, type metadata accessor for EndOfRecipeModel);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1D7994954(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = type metadata accessor for EndOfRecipeSectionDescriptor();
    v8[1] = type metadata accessor for EndOfRecipeModel();
    v8[2] = sub_1D79970C4(&unk_1EE0C4B98, type metadata accessor for EndOfRecipeSectionDescriptor);
    v8[3] = sub_1D79970C4(&qword_1EE0CA100, type metadata accessor for EndOfRecipeModel);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t type metadata accessor for EndOfRecipeSectionDescriptor()
{
  result = qword_1EE0C4B88;
  if (!qword_1EE0C4B88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D7994A94()
{
  result = type metadata accessor for RecipeTopicsEndOfRecipeFeedGroup();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for RelatedArticlesEndOfRecipeFeedGroup();
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for RelatedRecipesEndOfRecipeFeedGroup();
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t type metadata accessor for RelatedArticlesEndOfRecipeFeedGroup()
{
  result = qword_1EE0CAEC8;
  if (!qword_1EE0CAEC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D7994B68(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1D7994BB0()
{
  if (!qword_1EE0CBBD0)
  {
    v0 = sub_1D7D2E72C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE0CBBD0);
    }
  }
}

void sub_1D7994C2C()
{
  if (!qword_1EE0CBBD8)
  {
    sub_1D7D2EA6C();
    v0 = MEMORY[0x1E69B5D58];
    sub_1D798ED94(&qword_1EE0CBBB8, MEMORY[0x1E69B5D58]);
    sub_1D798ED94(&qword_1EE0CBBC8, v0);
    sub_1D798ED94(&qword_1EE0CBBC0, v0);
    v1 = sub_1D7D2E72C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE0CBBD8);
    }
  }
}

uint64_t type metadata accessor for MoreToReadEndOfArticleFeedGroupKnobs()
{
  result = qword_1EE0CC800;
  if (!qword_1EE0CC800)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata accessor for MoreFromIssueEndOfArticleFeedGroupKnobs()
{
  result = qword_1EE0CC418;
  if (!qword_1EE0CC418)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1D7994DC8()
{
  result = qword_1EE0CBA28;
  if (!qword_1EE0CBA28)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EE0CBA28);
  }

  return result;
}

void sub_1D7994E2C()
{
  if (!qword_1EE0CBBE0)
  {
    type metadata accessor for EndOfArticleFeedGroupEmitterFactory();
    sub_1D7994FD0();
    sub_1D798ED4C(&qword_1EE0CCA50, type metadata accessor for EndOfArticleFeedGroupEmitterFactory);
    sub_1D798ED4C(&unk_1EE0CBC20, sub_1D7994FD0);
    v0 = sub_1D7D2E10C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE0CBBE0);
    }
  }
}

void sub_1D7994F18()
{
  if (!qword_1EE0CBB90)
  {
    sub_1D7994E2C();
    sub_1D798ED4C(&qword_1EE0CBBF0, sub_1D7994E2C);
    v0 = sub_1D7D2EC9C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE0CBB90);
    }
  }
}

void sub_1D7994FD0()
{
  if (!qword_1EE0CBC10)
  {
    type metadata accessor for EndOfArticleFeedPoolService();
    sub_1D798ED4C(qword_1EE0CD5E0, type metadata accessor for EndOfArticleFeedPoolService);
    v0 = sub_1D7D2DF8C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE0CBC10);
    }
  }
}

void sub_1D7995088()
{
  if (!qword_1EE0CBCB8)
  {
    type metadata accessor for EndOfRecipeFeedServiceConfig();
    sub_1D7995774();
    sub_1D798ED4C(&unk_1EE0CD290, type metadata accessor for EndOfRecipeFeedServiceConfig);
    v0 = sub_1D7D2DCBC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE0CBCB8);
    }
  }
}

unint64_t sub_1D7995140()
{
  result = type metadata accessor for EndOfRecipeFeedContentConfig();
  if (v1 <= 0x3F)
  {
    result = sub_1D7994DC8();
    if (v2 <= 0x3F)
    {
      result = sub_1D7D2E3FC();
      if (v3 <= 0x3F)
      {
        result = sub_1D799174C();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t type metadata accessor for EndOfRecipeFeedContentConfig()
{
  result = qword_1EE0CD328;
  if (!qword_1EE0CD328)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata accessor for EndOfRecipeFeedGroupConfig()
{
  result = qword_1EE0CDAE8;
  if (!qword_1EE0CDAE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D79952A4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D79952EC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for RelatedArticlesEndOfRecipeFeedGroupConfigData()
{
  result = qword_1EE0CFA18;
  if (!qword_1EE0CFA18)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D7995380(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D79953C8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D7995410(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_1D7995458(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D79954A0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for EndOfRecipeFeedKnobsConfig()
{
  result = qword_1EE0CDA40;
  if (!qword_1EE0CDA40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D7995534()
{
  result = type metadata accessor for EndOfRecipeFeedGroupKnobs();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t type metadata accessor for EndOfRecipeFeedGroupKnobs()
{
  result = qword_1EE0CDC88;
  if (!qword_1EE0CDC88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D79955FC()
{
  result = type metadata accessor for RelatedArticlesEndOfRecipeFeedGroupKnobs();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for RelatedRecipesEndOfRecipeFeedGroupKnobs();
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for RecipeTopicsEndOfRecipeFeedGroupKnobs();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

void sub_1D7995698()
{
  if (!qword_1EC9E34D8)
  {
    type metadata accessor for EndOfRecipeFeedServiceConfig();
    sub_1D79952A4(&unk_1EE0CD290, type metadata accessor for EndOfRecipeFeedServiceConfig);
    v0 = sub_1D7D2E38C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC9E34D8);
    }
  }
}

unint64_t sub_1D7995774()
{
  result = qword_1EE0CD050;
  if (!qword_1EE0CD050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0CD050);
  }

  return result;
}

uint64_t sub_1D7995814()
{
  sub_1D7D28E2C();
  sub_1D798C468(0, qword_1EE0CED80);
  sub_1D7D291EC();

  sub_1D7D28E2C();
  type metadata accessor for ArticleViewController();
  sub_1D7D291DC();

  sub_1D7D28ACC();

  sub_1D7D28E2C();
  type metadata accessor for ArticlePagePrewarmer();
  sub_1D7D291DC();

  sub_1D7D28E2C();
  sub_1D798C3BC(0, &qword_1EE0CBAB0);
  sub_1D7D291DC();

  sub_1D7D28E2C();
  sub_1D798C3BC(0, &qword_1EE0CBA68);
  sub_1D7D291DC();

  sub_1D7D28E2C();
  sub_1D798C3BC(0, &unk_1EE0CB990);
  sub_1D7D291DC();

  sub_1D7D28E2C();
  sub_1D798C3BC(0, &qword_1EE0CB9F8);
  sub_1D7D291DC();

  sub_1D7D28E2C();
  sub_1D798C3BC(0, &qword_1EE0CB9D0);
  sub_1D7D291DC();

  sub_1D7D28E2C();
  sub_1D798C3BC(0, &qword_1EE0CB9C8);
  sub_1D7D291DC();

  sub_1D7D28E2C();
  type metadata accessor for TableOfContentsURLHandler();
  sub_1D7D291DC();

  sub_1D7D28E2C();
  sub_1D798C3BC(0, &unk_1EE0CBA10);
  sub_1D7D291DC();

  sub_1D7D28E2C();
  sub_1D798C3BC(0, &qword_1EE0CBAD8);
  sub_1D7D291DC();

  sub_1D7D28E2C();
  sub_1D798C468(0, &unk_1EE0CDBB0);
  sub_1D7D291EC();

  sub_1D7D28E2C();
  sub_1D798C3BC(0, &unk_1EE0CBAC8);
  sub_1D7D291DC();

  sub_1D7D28E2C();
  sub_1D7994200(0, &qword_1EE0CBEB0, sub_1D79962A4, &type metadata for ArticleEvent, MEMORY[0x1E69D6460]);
  sub_1D7D291DC();

  sub_1D7D28E3C();
  sub_1D7D291CC();

  sub_1D7D28E2C();
  sub_1D798C468(0, &qword_1EE0CBCF0);
  sub_1D7D291EC();

  sub_1D7D28E2C();
  sub_1D798C468(0, &unk_1EE0CBCE0);
  sub_1D7D291EC();

  sub_1D7D28E2C();
  sub_1D798C468(0, &unk_1EE0CBCD0);
  sub_1D7D291EC();

  sub_1D7D28E2C();
  sub_1D798C468(0, &qword_1EE0CBCF8);
  sub_1D7D291EC();
}

uint64_t type metadata accessor for ArticleViewController()
{
  result = qword_1EE0CE638;
  if (!qword_1EE0CE638)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata accessor for ArticleModel()
{
  result = qword_1EE0CF8B8;
  if (!qword_1EE0CF8B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D7995FD4()
{
  sub_1D7996048();
  if (v0 <= 0x3F)
  {
    sub_1D7994174();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_1D7996048()
{
  if (!qword_1EE0C0620)
  {
    type metadata accessor for ArticleNavigationAction();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EE0C0620);
    }
  }
}

void sub_1D79960B4()
{
  sub_1D7996194();
  if (v0 <= 0x3F)
  {
    sub_1D799613C();
    if (v1 <= 0x3F)
    {
      sub_1D799412C();
      if (v2 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void sub_1D799613C()
{
  if (!qword_1EE0CBA88)
  {
    v0 = sub_1D7992EFC(0, &qword_1EE0CBA80);
    if (!v1)
    {
      atomic_store(v0, &qword_1EE0CBA88);
    }
  }
}

uint64_t sub_1D7996194()
{
  result = qword_1EE0CBB20;
  if (!qword_1EE0CBB20)
  {
    result = MEMORY[0x1E69E6158];
    atomic_store(MEMORY[0x1E69E6158], &qword_1EE0CBB20);
  }

  return result;
}

void sub_1D79961C4()
{
  if (!qword_1EE0CBB70)
  {
    sub_1D799621C();
    v0 = sub_1D7D2F4DC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE0CBB70);
    }
  }
}

unint64_t sub_1D799621C()
{
  result = qword_1EE0CBA60;
  if (!qword_1EE0CBA60)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EE0CBA60);
  }

  return result;
}

unint64_t sub_1D79962A4()
{
  result = qword_1EE0CF8D8[0];
  if (!qword_1EE0CF8D8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE0CF8D8);
  }

  return result;
}

uint64_t sub_1D799631C()
{
  sub_1D7D28E2C();
  sub_1D798C468(0, qword_1EE0CDE50);
  sub_1D7D291EC();

  sub_1D7D28E3C();
  sub_1D7D291CC();
}

uint64_t sub_1D79963D8()
{
  v0 = sub_1D7D2932C();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7D28E2C();
  sub_1D798C3BC(0, qword_1EE0CE2C8);
  sub_1D7D291DC();

  sub_1D7D28E2C();
  sub_1D799685C();
  sub_1D7D291DC();

  (*(v1 + 104))(v4, *MEMORY[0x1E69D6AD0], v0);
  sub_1D7D28ADC();

  (*(v1 + 8))(v4, v0);
  sub_1D7D28E2C();
  sub_1D7D2D41C();
  sub_1D7D291DC();

  sub_1D7D28ACC();

  sub_1D7D28E2C();
  sub_1D798C468(0, &unk_1EE0CBD60);
  sub_1D7D291EC();

  sub_1D7D28E2C();
  sub_1D798C468(0, &qword_1EE0CC768);
  sub_1D7D291EC();

  sub_1D7D28E2C();
  v5 = MEMORY[0x1E69B5968];
  sub_1D79943C0(0, &qword_1EE0CBC10, type metadata accessor for EndOfArticleFeedPoolService, sub_1D7D1F0E4, MEMORY[0x1E69B5968]);
  sub_1D7D291DC();

  sub_1D7D28E2C();
  sub_1D79943C0(0, &qword_1EE0CBC30, type metadata accessor for EndOfRecipeFeedPoolService, sub_1D7D1F118, v5);
  sub_1D7D291DC();

  sub_1D7D28E2C();
  sub_1D798C468(0, &unk_1EE0CBD70);
  sub_1D7D291EC();

  sub_1D7D28E3C();
  sub_1D7D291CC();
}

void sub_1D799685C()
{
  if (!qword_1EE0CBD50)
  {
    sub_1D7D2CCEC();
    sub_1D7D2CE4C();
    sub_1D79968E8();
    v0 = sub_1D7D2D50C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE0CBD50);
    }
  }
}

unint64_t sub_1D79968E8()
{
  result = qword_1EE0CBE20;
  if (!qword_1EE0CBE20)
  {
    sub_1D7D2CCEC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0CBE20);
  }

  return result;
}

uint64_t type metadata accessor for RecipeTopicsEndOfRecipeFeedGroup()
{
  result = qword_1EE0CB218;
  if (!qword_1EE0CB218)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata accessor for RelatedRecipesEndOfRecipeFeedGroup()
{
  result = qword_1EE0C2270;
  if (!qword_1EE0C2270)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata accessor for RelatedRecipesEndOfRecipeFeedGroupKnobs()
{
  result = qword_1EE0CC380;
  if (!qword_1EE0CC380)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D7996A48()
{
  result = sub_1D7D2DE2C();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t type metadata accessor for EndOfRecipeModel()
{
  result = qword_1EE0CA0D8;
  if (!qword_1EE0CA0D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D7996B00()
{
  sub_1D7D29D1C();
  if (v0 <= 0x3F)
  {
    sub_1D7996B9C();
    if (v1 <= 0x3F)
    {
      sub_1D7996CC4();
      if (v2 <= 0x3F)
      {
        sub_1D7996DA4();
        if (v3 <= 0x3F)
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        }
      }
    }
  }
}

void sub_1D7996B9C()
{
  if (!qword_1EE0BF7B0)
  {
    sub_1D7D2ED3C();
    v0 = MEMORY[0x1E69B5FD0];
    sub_1D7996C7C(&unk_1EE0BF770, MEMORY[0x1E69B5FD0]);
    sub_1D7996C7C(&qword_1EE0BF780, v0);
    v1 = sub_1D7D2EC0C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE0BF7B0);
    }
  }
}

uint64_t sub_1D7996C7C(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1D7996CC4()
{
  if (!qword_1EE0BF7D0)
  {
    sub_1D7D2EC5C();
    v0 = MEMORY[0x1E69B5FA0];
    sub_1D7996C7C(&qword_1EE0BF798, MEMORY[0x1E69B5FA0]);
    sub_1D7996C7C(&unk_1EE0BF7A0, v0);
    v1 = sub_1D7D2EC0C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE0BF7D0);
    }
  }
}

void sub_1D7996DA4()
{
  if (!qword_1EE0BF7D8)
  {
    sub_1D7D2EAEC();
    v0 = MEMORY[0x1E69B5DA0];
    sub_1D7996C7C(&qword_1EE0BF800, MEMORY[0x1E69B5DA0]);
    sub_1D7996C7C(&qword_1EE0BF808, v0);
    v1 = sub_1D7D2EC0C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE0BF7D8);
    }
  }
}

uint64_t sub_1D7996E84(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D7996ECC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D7996F14(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D7996F5C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D7996FA4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D7996FEC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D7997034(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D799707C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D79970C4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D799710C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D79972C0()
{
  v0 = sub_1D7D2932C();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7D28E2C();
  sub_1D798C468(0, &unk_1EE0CDE40);
  sub_1D7D291EC();

  sub_1D7D28E2C();
  sub_1D7997744();
  sub_1D7D291DC();

  sub_1D7D28E2C();
  v13 = MEMORY[0x1E69B3F38];
  sub_1D79978F0(0, &qword_1EE0CBE30, MEMORY[0x1E69B3F38]);
  sub_1D7D291DC();

  v5 = *MEMORY[0x1E69D6AD0];
  v6 = *(v1 + 104);
  v6(v4, v5, v0);
  v11 = v6;
  sub_1D7D28ADC();

  v7 = *(v1 + 8);
  v7(v4, v0);
  sub_1D7D28E2C();
  v12 = MEMORY[0x1E69B43B0];
  sub_1D79978F0(0, &qword_1EE0CBD10, MEMORY[0x1E69B43B0]);
  sub_1D7D291DC();

  v6(v4, v5, v0);
  sub_1D7D28ADC();

  v7(v4, v0);
  sub_1D7D28E2C();
  sub_1D79979B4();
  sub_1D7D291DC();

  sub_1D7D28E2C();
  sub_1D7997A88(0, &qword_1EE0CBE28, v13);
  sub_1D7D291DC();

  v8 = v11;
  v11(v4, v5, v0);
  sub_1D7D28ADC();

  v7(v4, v0);
  sub_1D7D28E2C();
  sub_1D7997A88(0, &unk_1EE0CBD00, v12);
  sub_1D7D291DC();

  v8(v4, v5, v0);
  sub_1D7D28ADC();

  v7(v4, v0);
  sub_1D7D28E3C();
  sub_1D7D291CC();
}

void sub_1D7997744()
{
  if (!qword_1EE0CBDA8)
  {
    sub_1D7D2D39C();
    sub_1D7D2D05C();
    sub_1D7D2D12C();
    sub_1D7997818(&qword_1EE0CBD90, MEMORY[0x1E69B4328]);
    v0 = sub_1D7D2D27C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE0CBDA8);
    }
  }
}

uint64_t sub_1D7997818(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D7997860(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D79978A8(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1D79978F0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = sub_1D7D2D39C();
    v8[1] = sub_1D7D2D12C();
    v8[2] = sub_1D7997818(&qword_1EE0CBD90, MEMORY[0x1E69B4328]);
    v8[3] = MEMORY[0x1E69B4280];
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1D79979B4()
{
  if (!qword_1EE0CBDA0)
  {
    sub_1D7D2D3CC();
    sub_1D7D2D05C();
    sub_1D7D2D12C();
    sub_1D7997818(&qword_1EE0CBD80, MEMORY[0x1E69B4358]);
    v0 = sub_1D7D2D27C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE0CBDA0);
    }
  }
}

void sub_1D7997A88(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = sub_1D7D2D3CC();
    v8[1] = sub_1D7D2D12C();
    v8[2] = sub_1D7997818(&qword_1EE0CBD80, MEMORY[0x1E69B4358]);
    v8[3] = MEMORY[0x1E69B4280];
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_1D7997B4C()
{
  sub_1D7D28E2C();
  sub_1D798C468(0, &unk_1EE0CCEB0);
  sub_1D7D291EC();

  sub_1D7D28E3C();
  sub_1D7D291CC();
}

uint64_t sub_1D7997C04()
{
  sub_1D7D28E2C();
  sub_1D798C468(0, &qword_1EE0CE4C0);
  sub_1D7D291EC();

  sub_1D7D28E3C();
  sub_1D7D291CC();
}

uint64_t sub_1D7997CC0()
{
  v0 = sub_1D7D28D9C();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v7[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7D28E2C();
  sub_1D798C468(0, qword_1EE0CD1D8);
  sub_1D7D291EC();

  sub_1D7D28E2C();
  sub_1D798C468(0, qword_1EE0CE970);
  sub_1D7D291EC();

  sub_1D7D28E3C();
  sub_1D798C468(0, &qword_1EE0CED78);
  sub_1D7D291EC();

  sub_1D7D28E4C();
  __swift_project_boxed_opaque_existential_1(v7, v7[3]);
  type metadata accessor for ModalArticleViewerViewController();
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6500], v0);
  sub_1D7D2924C();
  (*(v1 + 8))(v4, v0);
  __swift_destroy_boxed_opaque_existential_1(v7);
  sub_1D7D28E3C();
  sub_1D7D291CC();
}

uint64_t sub_1D7997F84()
{
  sub_1D7D28E2C();
  sub_1D798C468(0, qword_1EE0CE8B8);
  sub_1D7D291EC();

  sub_1D7D28E3C();
  sub_1D7D291CC();
}

uint64_t sub_1D799803C()
{
  sub_1D7D28E2C();
  sub_1D798C468(0, qword_1EE0CD860);
  sub_1D7D291EC();

  sub_1D7D28E3C();
  sub_1D7D291CC();
}

uint64_t sub_1D79980F4()
{
  sub_1D7D28E2C();
  sub_1D798C468(0, &qword_1EE0CE040);
  sub_1D7D291EC();

  sub_1D7D28E3C();
  sub_1D7D291CC();
}

uint64_t sub_1D79981AC()
{
  sub_1D7D28E2C();
  sub_1D798C468(0, &qword_1EE0CCFA0);
  sub_1D7D291EC();

  sub_1D7D28E3C();
  sub_1D7D291CC();
}

uint64_t sub_1D7998264()
{
  sub_1D7D28E2C();
  sub_1D798C468(0, &unk_1EE0CCF70);
  sub_1D7D291EC();

  sub_1D7D28E2C();
  sub_1D798C468(0, &unk_1EE0CDBD0);
  sub_1D7D291EC();

  sub_1D7D28E3C();
  sub_1D7D291CC();
}

uint64_t sub_1D7998378()
{
  sub_1D7D28E2C();
  sub_1D7998478();
  sub_1D7D291DC();

  sub_1D7D28E2C();
  sub_1D798C468(0, &qword_1EE0CDBC8);
  sub_1D7D291EC();

  sub_1D7D28E3C();
  sub_1D7D291CC();
}

unint64_t sub_1D7998478()
{
  result = qword_1EE0CCE78;
  if (!qword_1EE0CCE78)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EE0CCE78);
  }

  return result;
}

uint64_t sub_1D79984E0()
{
  v0 = sub_1D7D2932C();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7D28E2C();
  sub_1D798C468(0, &unk_1EE0CEEE0);
  sub_1D7D291EC();

  sub_1D7D28E2C();
  type metadata accessor for RecipeRadarReporter();
  sub_1D7D291DC();

  sub_1D7D28E2C();
  sub_1D798C468(0, &unk_1EE0CBCC0);
  sub_1D7D291EC();

  sub_1D7D28E2C();
  type metadata accessor for RecipeCache();
  sub_1D7D291DC();

  (*(v1 + 104))(v4, *MEMORY[0x1E69D6AD0], v0);
  sub_1D7D28ADC();

  (*(v1 + 8))(v4, v0);
  sub_1D7D28E3C();
  sub_1D7D291CC();
}

uint64_t sub_1D79987A4()
{
  sub_1D7D28E2C();
  sub_1D798F168(0, qword_1EE0CCFA8);
  sub_1D7D291EC();
}

uint64_t sub_1D7998824()
{
  sub_1D7D28E2C();
  sub_1D798C468(0, qword_1EE0C7178);
  sub_1D7D291EC();

  sub_1D7D28E3C();
  sub_1D7D291CC();
}

uint64_t sub_1D79988DC()
{
  sub_1D7D28E2C();
  sub_1D798C468(0, &qword_1EE0CDBE0);
  sub_1D7D291EC();

  sub_1D7D28E3C();
  sub_1D7D291CC();
}

void sub_1D7998994(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v7)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_1D7998A1C()
{
  sub_1D7998994(319, &qword_1EE0C36D0, type metadata accessor for ArticleViewerBlueprintRouteModel, type metadata accessor for ArticleNavigationAction);
  if (v0 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
  }
}

uint64_t type metadata accessor for ArticleViewerBlueprintRouteModel()
{
  result = qword_1EE0C37A0;
  if (!qword_1EE0C37A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D7998B2C()
{
  type metadata accessor for ArticleViewerBlueprintRouteArticle();
  if (v0 <= 0x3F)
  {
    sub_1D7999010(319, &qword_1EE0CB770, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t type metadata accessor for ArticleViewerBlueprintRouteArticle()
{
  result = qword_1EE0CB130;
  if (!qword_1EE0CB130)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D7998CA0()
{
  result = type metadata accessor for AsyncArticle();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t type metadata accessor for AsyncArticle()
{
  result = qword_1EE0CABB8;
  if (!qword_1EE0CABB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D7998D68()
{
  sub_1D7998DF0();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_1D7998DF0()
{
  if (!qword_1EE0CB770)
  {
    sub_1D7D2824C();
    v0 = sub_1D7D3130C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE0CB770);
    }
  }
}

unint64_t sub_1D7998E48()
{
  result = qword_1EE0C8ED8;
  if (!qword_1EE0C8ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0C8ED8);
  }

  return result;
}

void sub_1D7998EA0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D7D3130C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1D7998EF4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D7D3130C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1D7998F48(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1D7998FAC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1D7999010(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1D7999074(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1D79990D8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D7D3130C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1D799912C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D7D3130C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1D7999180(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1D79991E4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1D7999248(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D7D3130C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1D799929C()
{
  result = qword_1EE0C8EC8;
  if (!qword_1EE0C8EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0C8EC8);
  }

  return result;
}

uint64_t sub_1D7999314(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1D799936C()
{
  result = qword_1EE0C8EC0;
  if (!qword_1EE0C8EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0C8EC0);
  }

  return result;
}

void sub_1D79993C0()
{
  type metadata accessor for ArticleViewerArticlePage(319);
  if (v0 <= 0x3F)
  {
    type metadata accessor for InterstitialAdvertisementPage(319);
    if (v1 <= 0x3F)
    {
      sub_1D799A6BC();
      if (v2 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void sub_1D7999468()
{
  sub_1D7D28A3C();
  if (v0 <= 0x3F)
  {
    sub_1D798F168(319, &qword_1EE0CBDD0);
    if (v1 <= 0x3F)
    {
      sub_1D7D295CC();
      if (v2 <= 0x3F)
      {
        type metadata accessor for ArticleNavigationAction();
        if (v3 <= 0x3F)
        {
          sub_1D799956C(319, &qword_1EE0C8EB8);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1D799956C(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_1D7D3130C();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_1D79995B8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1D7999608(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1D7999658(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1D79996A8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1D79996F8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_1D79997B0()
{
  result = type metadata accessor for InterstitialAdModel();
  if (v1 <= 0x3F)
  {
    result = sub_1D7D28A3C();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t type metadata accessor for InterstitialAdModel()
{
  result = qword_1EE0C8C70;
  if (!qword_1EE0C8C70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D7999884()
{
  result = sub_1D7D3130C();
  if (v1 <= 0x3F)
  {
    return swift_initClassMetadata2();
  }

  return result;
}

uint64_t sub_1D7999964()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      result = swift_initClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

void sub_1D7999A54()
{
  sub_1D7999AF4();
  if (v0 <= 0x3F)
  {
    sub_1D799A5AC();
    if (v1 <= 0x3F)
    {
      sub_1D799A64C();
      if (v2 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void sub_1D7999AF4()
{
  if (!qword_1EE0C8C90[0])
  {
    sub_1D7D2D39C();
    sub_1D7997860(&qword_1EE0CBD90, MEMORY[0x1E69B4328]);
    v0 = type metadata accessor for InterstitialAdModel.InterstitialAd();
    if (!v1)
    {
      atomic_store(v0, qword_1EE0C8C90);
    }
  }
}

uint64_t CookingAssembly.load(in:)(uint64_t a1)
{
  v2 = sub_1D7D2932C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7D3084C();
  sub_1D799A1D8(sub_1D799A370, a1);
  sub_1D7D28E2C();
  sub_1D798C468(0, &qword_1EE0BDF20);
  sub_1D7D291EC();

  v7 = *MEMORY[0x1E69D6AD0];
  v8 = *(v3 + 104);
  v8(v6, v7, v2);
  sub_1D7D28ADC();

  v9 = *(v3 + 8);
  v9(v6, v2);
  sub_1D7D28E2C();
  sub_1D798C468(0, &qword_1EE0CB780);
  sub_1D7D291EC();

  v8(v6, v7, v2);
  sub_1D7D28ADC();

  v9(v6, v2);
  sub_1D7D28E2C();
  sub_1D798C468(0, &unk_1EE0BDEE0);
  sub_1D7D291EC();

  v8(v6, v7, v2);
  sub_1D7D28ADC();

  v9(v6, v2);
  sub_1D7D28E2C();
  sub_1D798C468(0, &qword_1EE0BDF18);
  sub_1D7D291EC();

  v8(v6, *MEMORY[0x1E69D6AB8], v2);
  sub_1D7D28ADC();

  v9(v6, v2);
  sub_1D7D28E2C();
  sub_1D798C468(0, &unk_1EE0BF590);
  sub_1D7D291EC();

  sub_1D7D28E2C();
  sub_1D798C468(0, &qword_1EE0BDED8);
  sub_1D7D291EC();

  v8(v6, v7, v2);
  sub_1D7D28ADC();

  v9(v6, v2);
  sub_1D7D28E2C();
  sub_1D798C468(0, &qword_1EE0BDF10);
  sub_1D7D291EC();

  v8(v6, v7, v2);
  sub_1D7D28ADC();

  v9(v6, v2);
  sub_1D7D28E2C();
  sub_1D798C468(0, &unk_1EE0BDEC8);
  sub_1D7D291EC();

  sub_1D7D28E2C();
  sub_1D798C468(0, &unk_1EE0BDF00);
  sub_1D7D291EC();

  v8(v6, v7, v2);
  sub_1D7D28ADC();

  return (v9)(v6, v2);
}

uint64_t sub_1D799A1D8(uint64_t a1, uint64_t a2)
{
  sub_1D7D3083C();

  swift_task_getMainExecutor();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    goto LABEL_8;
  }

  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  sub_1D799A394();
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (v2)
  {
    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return result;
    }

    __break(1u);
  }

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
LABEL_8:
    sub_1D7D3145C();
    MEMORY[0x1DA70DE90](0xD00000000000003FLL, 0x80000001D7D6E470);
    v8 = sub_1D7D31B4C();
    MEMORY[0x1DA70DE90](v8);

    MEMORY[0x1DA70DE90](46, 0xE100000000000000);
    result = sub_1D7D3160C();
    __break(1u);
  }

  return result;
}

uint64_t sub_1D799A3BC()
{
  v0 = sub_1D7D2932C();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7D28E2C();
  sub_1D7D3024C();
  sub_1D7D291EC();

  (*(v1 + 104))(v4, *MEMORY[0x1E69D6AB8], v0);
  sub_1D7D28ADC();

  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_1D799A50C()
{
  sub_1D7D2D12C();
  result = sub_1D7D2D2DC();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1D799A5AC()
{
  if (!qword_1EE0C8C80)
  {
    sub_1D7D2D3CC();
    sub_1D7997860(&qword_1EE0CBD80, MEMORY[0x1E69B4358]);
    v0 = type metadata accessor for InterstitialAdModel.InterstitialAd();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE0C8C80);
    }
  }
}

void sub_1D799A64C()
{
  if (!qword_1EE0BFC10)
  {
    v0 = sub_1D7D2CADC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE0BFC10);
    }
  }
}

void sub_1D799A6BC()
{
  if (!qword_1EE0CB2F0[0])
  {
    type metadata accessor for ArticleViewerArticlePage(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, qword_1EE0CB2F0);
    }
  }
}

uint64_t sub_1D799A724(uint64_t a1, unint64_t *a2)
{
  sub_1D798C468(0, a2);
  sub_1D7D291EC();
}

uint64_t sub_1D799A794@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &unk_1EE0BF710);
  result = sub_1D7D28D2C();
  if (!v7)
  {
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C3BC(0, &unk_1EE0BEE60);
  result = sub_1D7D28D1C();
  if (!result)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7992EFC(0, &qword_1EE0BF090);
  result = sub_1D7D28D1C();
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C3BC(0, &qword_1EE0BEEC0);
  result = sub_1D7D28D1C();
  if (result)
  {
    v5 = sub_1D7D2F1EC();
    swift_allocObject();
    result = sub_1D7D2F1DC();
    v6 = MEMORY[0x1E69B6188];
    a2[3] = v5;
    a2[4] = v6;
    *a2 = result;
    return result;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_1D799A940()
{
  result = sub_1D7D3130C();
  if (v1 <= 0x3F)
  {
    return swift_initClassMetadata2();
  }

  return result;
}

uint64_t sub_1D799AA30(void *a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for ArticleViewerAppStateMonitor();
  result = sub_1D7D28D1C();
  if (result)
  {
    v4 = result;
    sub_1D799C134(qword_1EE0C4C70, type metadata accessor for ArticleViewerAppStateMonitor);
    sub_1D7D291FC();

    return __swift_destroy_boxed_opaque_existential_1(v5);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D799AB30()
{
  v0 = sub_1D7D2932C();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D798C3BC(0, &qword_1EE0BF0B0);
  sub_1D7D291DC();

  sub_1D799BB84();
  sub_1D7D291DC();
  sub_1D7D28ACC();

  sub_1D799BCF4(0);
  sub_1D7D291DC();

  sub_1D7D291DC();

  sub_1D799BDC4(0, &unk_1EE0BFE70, sub_1D799BCF4, sub_1D799C028, MEMORY[0x1E69D7E50]);
  sub_1D7D291DC();

  type metadata accessor for ArticleViewerPageViewControllerProvider();
  sub_1D7D291DC();

  sub_1D798C468(0, &unk_1EE0C7088);
  sub_1D7D291EC();

  sub_1D798C468(0, &qword_1EE0C6400);
  sub_1D7D291EC();

  sub_1D798C468(0, qword_1EE0C7098);
  sub_1D7D291EC();
  type metadata accessor for ArticleViewerRouter();
  sub_1D7D28ABC();

  sub_1D798C468(0, &qword_1EE0C4970);
  sub_1D7D291EC();

  sub_1D798C468(0, &unk_1EE0CCC38);
  sub_1D7D291EC();

  sub_1D798C468(0, &unk_1EE0C4C38);
  sub_1D7D291EC();

  sub_1D798C468(0, &qword_1EE0C53B0);
  sub_1D7D291EC();
  type metadata accessor for ArticleViewerInteractor();
  sub_1D7D28ABC();

  sub_1D798C468(0, &qword_1EE0C4C48);
  sub_1D7D291EC();

  sub_1D798C468(0, &qword_1EE0C17C0);
  sub_1D7D291EC();

  type metadata accessor for ArticleViewerAppStateMonitor();
  sub_1D7D291DC();
  v5 = *(v1 + 104);
  v5(v4, *MEMORY[0x1E69D6AD0], v0);
  sub_1D7D28ADC();

  v6 = *(v1 + 8);
  v6(v4, v0);
  type metadata accessor for SubscriptionAccessMeterIncrementer();
  sub_1D7D291DC();

  type metadata accessor for ArticleReadingHistoryRecorder();
  sub_1D7D291DC();

  type metadata accessor for IssueReadingHistoryRecorder();
  sub_1D7D291DC();

  sub_1D7D2AEBC();
  sub_1D7D291DC();

  sub_1D798C468(0, &qword_1EE0C15E8);
  sub_1D7D291EC();

  type metadata accessor for InterstitialAdManager();
  sub_1D7D291DC();

  sub_1D799C338(0, &unk_1EE0BFB40, MEMORY[0x1E69B4248], MEMORY[0x1E69B4038]);
  sub_1D7D291DC();

  sub_1D798C468(0, &qword_1EE0C3F20);
  sub_1D7D291EC();

  sub_1D798C468(0, qword_1EE0C3C58);
  sub_1D7D291EC();

  sub_1D798C468(0, &qword_1EE0C15E0);
  sub_1D7D291EC();

  sub_1D7D291EC();

  type metadata accessor for CombinedToolbarFeatureProvider();
  sub_1D7D291DC();

  sub_1D798C468(0, &qword_1EE0C0948);
  sub_1D7D291EC();

  sub_1D798C468(0, &unk_1EE0C07A0);
  sub_1D7D291EC();

  sub_1D798C468(0, qword_1EE0C0958);
  sub_1D7D291EC();

  sub_1D798C468(0, &qword_1EE0C2680);
  sub_1D7D291EC();

  sub_1D798C468(0, &qword_1EE0C09F8);
  sub_1D7D291EC();

  sub_1D798C468(0, &unk_1EE0C4960);
  sub_1D7D291EC();

  sub_1D798C468(0, &qword_1EE0C17C8);
  sub_1D7D291EC();

  sub_1D798C468(0, &qword_1EE0C0940);
  sub_1D7D291EC();

  type metadata accessor for MoreArticleViewerFeatureProvider();
  sub_1D7D291DC();

  type metadata accessor for OverflowMenuArticleViewerFeatureProvider();
  sub_1D7D291DC();

  type metadata accessor for TitleViewArticleViewerFeatureProvider();
  sub_1D7D291DC();

  type metadata accessor for TableOfContentsArticleViewerToolbarFeatureProvider();
  sub_1D7D291DC();

  type metadata accessor for TextResizeArticleViewerFeatureProvider();
  sub_1D7D291DC();

  sub_1D798C468(0, &qword_1EE0C4C68);
  sub_1D7D291EC();

  sub_1D798C468(0, qword_1EE0C1BF0);
  sub_1D7D291EC();

  sub_1D798C468(0, qword_1EE0C0B68);
  sub_1D7D291EC();

  sub_1D7D3010C();
  sub_1D7D291DC();
  v5(v4, *MEMORY[0x1E69D6AB8], v0);
  sub_1D7D28ADC();

  v6(v4, v0);
  type metadata accessor for BottomPaletteArticleViewerFeatureProvider();
  sub_1D7D291DC();

  sub_1D7D291EC();

  type metadata accessor for SaveArticleViewerFeatureProvider();
  sub_1D7D291DC();

  type metadata accessor for ReloadArticleViewerFeatureProvider();
  sub_1D7D291DC();

  type metadata accessor for LikeDislikeArticleViewerFeatureProvider();
  sub_1D7D291DC();

  type metadata accessor for ShareArticleViewerFeatureProvider();
  sub_1D7D291DC();

  type metadata accessor for HardPaywallArticleViewerFeatureProvider();
  sub_1D7D291DC();

  type metadata accessor for RecipeChromeArticleViewerFeatureProvider();
  sub_1D7D291DC();

  type metadata accessor for AudioArticleViewerFeatureProvider();
  sub_1D7D291DC();

  type metadata accessor for RecipeArticleViewerFeatureProvider();
  sub_1D7D291DC();

  sub_1D7D2A66C();
  sub_1D7D291DC();
  sub_1D7D28ACC();

  sub_1D798C468(0, &qword_1EE0C0950);
  sub_1D7D291EC();
}

void sub_1D799BB84()
{
  if (!qword_1EE0BFDE8)
  {
    sub_1D799BCF4(255);
    type metadata accessor for ArticleViewerPageViewControllerProvider();
    type metadata accessor for ArticleViewerViewController();
    sub_1D799BDC4(255, &unk_1EE0BFE70, sub_1D799BCF4, sub_1D799C028, MEMORY[0x1E69D7E50]);
    sub_1D799C028();
    sub_1D799C134(qword_1EE0C1510, type metadata accessor for ArticleViewerPageViewControllerProvider);
    sub_1D799C134(&qword_1EE0C5388, type metadata accessor for ArticleViewerViewController);
    sub_1D799C1C4();
    v0 = sub_1D7D2B4FC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE0BFDE8);
    }
  }
}

id sub_1D799BD3C(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7992EFC(0, &qword_1EE0BF090);
  result = sub_1D7D28D1C();
  if (result)
  {
    v2 = result;
    v3 = [result tagController];

    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1D799BDC4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(void), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a4();
    v11 = a5(a1, v9, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

unint64_t sub_1D799BE44()
{
  result = qword_1EE0C9930;
  if (!qword_1EE0C9930)
  {
    type metadata accessor for ArticleViewerPage(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0C9930);
  }

  return result;
}

uint64_t sub_1D799BEE4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D799C05C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D799C0A4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D799C0EC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D799C134(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D799C17C(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

unint64_t sub_1D799C1C4()
{
  result = qword_1EE0BFE80;
  if (!qword_1EE0BFE80)
  {
    sub_1D799BDC4(255, &unk_1EE0BFE70, sub_1D799BCF4, sub_1D799C028, MEMORY[0x1E69D7E50]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0BFE80);
  }

  return result;
}

void sub_1D799C338(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(uint64_t, void *))
{
  if (!*a2)
  {
    v10[0] = sub_1D7D2D39C();
    v10[1] = sub_1D7D2D05C();
    v10[2] = sub_1D7D2D12C();
    v10[3] = sub_1D799C134(&qword_1EE0CBD90, MEMORY[0x1E69B4328]);
    v10[4] = a3;
    v10[5] = MEMORY[0x1E69B4280];
    v8 = a4(a1, v10);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t type metadata accessor for CombinedToolbarFeatureProvider()
{
  result = qword_1EE0C40A8;
  if (!qword_1EE0C40A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D799C464()
{
  sub_1D799C67C(319, qword_1EE0C98E0, type metadata accessor for ArticleViewerPage, MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1D799C550(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1D799C5B4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1D799C618(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1D799C67C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1D799C6E0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

id sub_1D799C918(uint64_t a1, uint64_t (*a2)(void))
{
  v2 = objc_allocWithZone(a2(0));

  return [v2 init];
}

uint64_t sub_1D799C9E4(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for AdDataManager();
  result = sub_1D7D28D1C();
  if (result)
  {
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D799CA4C(void *a1)
{
  v2 = sub_1D7D2D60C();
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v14[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v6 = sub_1D7D2D62C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v14[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798F168(0, &qword_1EE0CBDD0);
  sub_1D7D3043C();
  sub_1D7D28CEC();

  if (v15)
  {
    type metadata accessor for AdDataManager();
    v12 = swift_allocObject();
    sub_1D799CC84(v14, v12 + 16);
    sub_1D799CCE8(v5);
    sub_1D7D2D61C();
    __swift_project_boxed_opaque_existential_1((v12 + 16), *(v12 + 40));
    sub_1D799D038(&qword_1EE0BFA28, MEMORY[0x1E69B4490]);
    sub_1D7D2CFDC();
    (*(v7 + 8))(v10, v6);
    __swift_destroy_boxed_opaque_existential_1(v14);
    return v12;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D799CC84(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1D799CCE8@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1D7D2DE4C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7D2857C();
  sub_1D799CFB4();
  sub_1D7D285AC();

  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == *MEMORY[0x1E69B58A8])
  {
    v8 = MEMORY[0x1E69B4440];
LABEL_15:
    v9 = *v8;
    v10 = sub_1D7D2D60C();
    v11 = *(*(v10 - 8) + 104);
    v12 = a1;
    v13 = v9;
    return v11(v12, v13, v10);
  }

  if (v7 == *MEMORY[0x1E69B58E0])
  {
    v8 = MEMORY[0x1E69B4478];
    goto LABEL_15;
  }

  if (v7 == *MEMORY[0x1E69B58B0])
  {
    v8 = MEMORY[0x1E69B4448];
    goto LABEL_15;
  }

  if (v7 == *MEMORY[0x1E69B58B8])
  {
    v8 = MEMORY[0x1E69B4450];
    goto LABEL_15;
  }

  if (v7 == *MEMORY[0x1E69B58D0])
  {
    v8 = MEMORY[0x1E69B4468];
    goto LABEL_15;
  }

  if (v7 == *MEMORY[0x1E69B58D8])
  {
    v8 = MEMORY[0x1E69B4470];
    goto LABEL_15;
  }

  if (v7 == *MEMORY[0x1E69B58C0])
  {
    v8 = MEMORY[0x1E69B4458];
    goto LABEL_15;
  }

  v15 = *MEMORY[0x1E69B58C8];
  v16 = v7;
  v10 = sub_1D7D2D60C();
  v11 = *(*(v10 - 8) + 104);
  if (v16 != v15)
  {
    v11(a1, *MEMORY[0x1E69B4480], v10);
    return (*(v3 + 8))(v6, v2);
  }

  v13 = *MEMORY[0x1E69B4460];
  v12 = a1;
  return v11(v12, v13, v10);
}

unint64_t sub_1D799CFB4()
{
  result = qword_1EE0CA630[0];
  if (!qword_1EE0CA630[0])
  {
    type metadata accessor for AdDataManager();
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE0CA630);
  }

  return result;
}

uint64_t sub_1D799D038(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D799D080(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();

  return MEMORY[0x1EEE44810](a1, ObjectType, a3);
}

uint64_t sub_1D799D0D0(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for ReportConcernCommandHandler();
  result = sub_1D7D28D1C();
  if (result)
  {
    swift_getObjectType();
    sub_1D7D2C4FC();
    sub_1D798C3BC(0, &qword_1EE0CBA60);
    sub_1D7AE4CD8(qword_1EE0C4E98, type metadata accessor for ReportConcernCommandHandler);
    sub_1D7D2A79C();

    sub_1D7D2C53C();
    sub_1D7D2A79C();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D799D24C(uint64_t a1, void (*a2)(void))
{
  v3 = sub_1D7D2932C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  a2(0);
  sub_1D7D291DC();
  (*(v4 + 104))(v7, *MEMORY[0x1E69D6AB8], v3);
  sub_1D7D28ADC();

  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_1D799D380@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &qword_1EE0CBB40);
  result = sub_1D7D28D2C();
  if (!v16)
  {
    __break(1u);
    goto LABEL_11;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &qword_1EE0CBCF0);
  result = sub_1D7D28D2C();
  if (!v15)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &unk_1EE0CBCE0);
  result = sub_1D7D28D2C();
  if (!v14)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &unk_1EE0CBCC0);
  result = sub_1D7D28D2C();
  if (!v12)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  sub_1D799D69C(&v11, v13);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &unk_1EE0CBCD0);
  result = sub_1D7D28D2C();
  if (!v10)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &qword_1EE0CBCF8);
  result = sub_1D7D28D2C();
  if (!v8)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  sub_1D799D69C(&v7, v9);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C3BC(0, &qword_1EE0BEEC0);
  result = sub_1D7D28D1C();
  if (!result)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7992EFC(0, &qword_1EE0BEEA0);
  result = sub_1D7D28D1C();
  if (result)
  {
    v5 = sub_1D7D2FE3C();
    swift_allocObject();
    result = sub_1D7D2FE2C();
    v6 = MEMORY[0x1E69B6780];
    a2[3] = v5;
    a2[4] = v6;
    *a2 = result;
    return result;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_1D799D69C(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

void sub_1D799D6E0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1D799D744(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1D7D291DC();
}

uint64_t sub_1D799D7C8@<X0>(uint64_t *a1@<X8>)
{
  sub_1D799D6E0(0, &qword_1EE0BE8D0, MEMORY[0x1E69B63D8], MEMORY[0x1E69E6F90]);
  v2 = sub_1D7D2F79C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 72);
  v5 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1D7D3B4E0;
  v7 = v6 + v5;
  v8 = *(v3 + 104);
  v8(v7, *MEMORY[0x1E69B63D0], v2);
  v8(v7 + v4, *MEMORY[0x1E69B63C8], v2);
  v9 = sub_1D7D2FF1C();
  swift_allocObject();
  result = sub_1D7D2FF0C();
  v11 = MEMORY[0x1E69B67D8];
  a1[3] = v9;
  a1[4] = v11;
  *a1 = result;
  return result;
}

uint64_t sub_1D799D938@<X0>(uint64_t *a1@<X8>)
{
  sub_1D799DB5C(0, &qword_1EE0BE8C0, MEMORY[0x1E69B6468], MEMORY[0x1E69E6F90]);
  v2 = sub_1D7D2F87C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 72);
  v5 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1D7D50440;
  v7 = v6 + v5;
  v8 = *(v3 + 104);
  v8(v7, *MEMORY[0x1E69B6460], v2);
  v8(v7 + v4, *MEMORY[0x1E69B6458], v2);
  v8(v7 + 2 * v4, *MEMORY[0x1E69B6438], v2);
  v8(v7 + 3 * v4, *MEMORY[0x1E69B6448], v2);
  v8(v7 + 4 * v4, *MEMORY[0x1E69B6440], v2);
  v8(v7 + 5 * v4, *MEMORY[0x1E69B6450], v2);
  v9 = sub_1D7D2FF7C();
  swift_allocObject();
  result = sub_1D7D2FF6C();
  v11 = MEMORY[0x1E69B67E8];
  a1[3] = v9;
  a1[4] = v11;
  *a1 = result;
  return result;
}

void sub_1D799DB5C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1D799DBEC@<X0>(uint64_t *a1@<X8>)
{
  sub_1D799D6E0(0, &qword_1EE0BE8C8, MEMORY[0x1E69B6430], MEMORY[0x1E69E6F90]);
  v2 = sub_1D7D2F86C();
  v3 = *(v2 - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1D7D3B4D0;
  (*(v3 + 104))(v5 + v4, *MEMORY[0x1E69B6428], v2);
  v6 = sub_1D7D2FF5C();
  swift_allocObject();
  result = sub_1D7D2FF4C();
  v8 = MEMORY[0x1E69B67E0];
  a1[3] = v6;
  a1[4] = v8;
  *a1 = result;
  return result;
}

uint64_t sub_1D799DD80@<X0>(uint64_t *a1@<X8>)
{
  sub_1D799D6E0(0, &unk_1EE0BE8B0, MEMORY[0x1E69B6600], MEMORY[0x1E69E6F90]);
  v2 = sub_1D7D2FBDC();
  v3 = *(v2 - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1D7D3B4D0;
  (*(v3 + 104))(v5 + v4, *MEMORY[0x1E69B65F8], v2);
  v6 = sub_1D7D2DC9C();
  swift_allocObject();
  result = sub_1D7D2DC8C();
  v8 = MEMORY[0x1E69B5818];
  a1[3] = v6;
  a1[4] = v8;
  *a1 = result;
  return result;
}

uint64_t sub_1D799DEC4(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &qword_1EE0CBB38);
  result = sub_1D7D28D2C();
  if (!v17)
  {
    __break(1u);
    goto LABEL_8;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7D28CEC();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C3BC(0, &qword_1EE0BEEC0);
  result = sub_1D7D28D1C();
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v3 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &unk_1EE0BF5B0);
  result = sub_1D7D28D2C();
  if (!v12)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7D28A3C();
  result = sub_1D7D28D1C();
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v4 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &unk_1EE0BFFE0);
  result = sub_1D7D28D2C();
  if (v10)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1D798C468(0, qword_1EE0C7B20);
    sub_1D7D28D2C();
    type metadata accessor for SharingCommandHandler();
    v5 = swift_allocObject();
    sub_1D799D69C(&v16, v5 + 16);
    v6 = v14;
    *(v5 + 56) = v13;
    *(v5 + 72) = v6;
    *(v5 + 88) = v15;
    *(v5 + 96) = v3;
    sub_1D799D69C(&v11, v5 + 104);
    *(v5 + 144) = v4;
    sub_1D799D69C(&v9, v5 + 152);
    *(v5 + 192) = v7;
    *(v5 + 200) = v8;
    return v5;
  }

LABEL_11:
  __break(1u);
  return result;
}

uint64_t sub_1D799E1E4(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for SharingCommandHandler();
  result = sub_1D7D28D1C();
  if (result)
  {
    swift_getObjectType();
    sub_1D7D2C4BC();
    sub_1D7D2F4FC();
    sub_1D7AE4CD8(qword_1EE0C7A60, type metadata accessor for SharingCommandHandler);
    sub_1D7D2A79C();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D799E318(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for SharingCompleteCommandHandler();
  result = sub_1D7D28D1C();
  if (result)
  {
    swift_getObjectType();
    sub_1D7D2C4AC();
    sub_1D7D2FC6C();
    sub_1D7AE4CD8(&unk_1EE0C4638, type metadata accessor for SharingCompleteCommandHandler);
    sub_1D7D2A79C();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D799E470()
{
  type metadata accessor for SharingCompleteCommandHandler();

  return swift_allocObject();
}

uint64_t sub_1D799E4A4(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for OpenInSafariCommandHandler();
  result = sub_1D7D28D1C();
  if (result)
  {
    swift_getObjectType();
    sub_1D7D2C5BC();
    sub_1D7D2C34C();
    sub_1D798C3BC(0, &qword_1EE0CBA60);
    sub_1D7AE4CD8(qword_1EE0C5790, type metadata accessor for OpenInSafariCommandHandler);
    sub_1D7D2A79C();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D799E644(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C3BC(0, &qword_1EE0BEEC0);
  result = sub_1D7D28D1C();
  if (result)
  {
    v3 = result;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1D798C3BC(0, &unk_1EE0BF0C0);
    result = sub_1D7D28D1C();
    if (result)
    {
      v4 = result;
      type metadata accessor for OpenInSafariCommandHandler();
      result = swift_allocObject();
      *(result + 16) = v3;
      *(result + 24) = v4;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D799E73C(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for ZoomCommandHandler();
  result = sub_1D7D28D1C();
  if (result)
  {
    swift_getObjectType();
    sub_1D7D2C2EC();
    sub_1D798C3BC(0, &qword_1EE0BF4E0);
    sub_1D7AE4CD8(qword_1EE0C90D8, type metadata accessor for ZoomCommandHandler);
    sub_1D7D2A79C();

    sub_1D7D2C2FC();
    sub_1D7D2A79C();

    sub_1D7D2C4CC();
    sub_1D7D2A79C();

    sub_1D7D2C4DC();
    sub_1D7D2A79C();

    sub_1D7D2C4EC();
    sub_1D7D2A79C();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D799E980()
{
  type metadata accessor for ZoomCommandHandler();

  return swift_allocObject();
}

uint64_t sub_1D799E9B4(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for ReloadArticleCommandHandler();
  result = sub_1D7D28D1C();
  if (result)
  {
    swift_getObjectType();
    sub_1D7D2C47C();
    sub_1D798C3BC(0, &qword_1EE0CBA60);
    sub_1D7AE4CD8(&qword_1EE0C4F50, type metadata accessor for ReloadArticleCommandHandler);
    sub_1D7D2A79C();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D799EB1C(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, qword_1EE0CDCA8);
  result = sub_1D7D28D2C();
  if (v4)
  {
    type metadata accessor for ReloadArticleCommandHandler();
    v2 = swift_allocObject();
    sub_1D799D69C(&v3, v2 + 16);
    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D799EBBC(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &qword_1EE0CE040);
  result = sub_1D7D28D2C();
  if (!v22)
  {
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &unk_1EE0BFFE0);
  result = sub_1D7D28D2C();
  if (!v20)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &qword_1EE0CED70);
  result = sub_1D7D28D2C();
  if (!v18)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C3BC(0, &qword_1EE0BEEC0);
  result = sub_1D7D28D1C();
  if (result)
  {
    v3 = result;
    v4 = __swift_mutable_project_boxed_opaque_existential_1(v17, v18);
    MEMORY[0x1EEE9AC00](v4, v4);
    v6 = (v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v7 + 16))(v6);
    v8 = *v6;
    v9 = type metadata accessor for HistoryService();
    v16[3] = v9;
    v16[4] = &off_1F52A2428;
    v16[0] = v8;
    type metadata accessor for ReportConcernCommandHandler();
    v10 = swift_allocObject();
    v11 = __swift_mutable_project_boxed_opaque_existential_1(v16, v9);
    MEMORY[0x1EEE9AC00](v11, v11);
    v13 = (v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v14 + 16))(v13);
    v15 = *v13;
    v10[15] = v9;
    v10[16] = &off_1F52A2428;
    v10[12] = v15;
    sub_1D799D69C(&v21, (v10 + 2));
    sub_1D799D69C(&v19, (v10 + 7));
    v10[17] = v3;
    __swift_destroy_boxed_opaque_existential_1(v16);
    __swift_destroy_boxed_opaque_existential_1(v17);
    return v10;
  }

LABEL_9:
  __break(1u);
  return result;
}

double sub_1D799EEE0@<D0>(void *a1@<X8>)
{
  v2 = type metadata accessor for ArticlePreviewManager();
  v3 = swift_allocObject();
  result = 0.0;
  v3[1] = xmmword_1D7D3E800;
  v3[2] = 0u;
  v3[3] = 0u;
  a1[3] = v2;
  a1[4] = &off_1F529DC30;
  *a1 = v3;
  return result;
}

uint64_t sub_1D799EF3C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1D799CC84(a1, v8);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7D28A3C();
  result = sub_1D7D28D1C();
  if (result)
  {
    v5 = result;
    v6 = type metadata accessor for ReportConcernModule();
    v7 = swift_allocObject();
    result = sub_1D799D69C(v8, v7 + 16);
    *(v7 + 56) = v5;
    a2[3] = v6;
    a2[4] = &protocol witness table for ReportConcernModule;
    *a2 = v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D799F034(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for ExportToGroceryListCommandHandler();
  result = sub_1D7D28D1C();
  if (result)
  {
    swift_getObjectType();
    sub_1D7D2C5BC();
    sub_1D7D2C36C();
    sub_1D7D2FBFC();
    sub_1D7AE4CD8(&unk_1EE0C29A0, type metadata accessor for ExportToGroceryListCommandHandler);
    sub_1D7D2A7AC();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D799F150@<X0>(void *a1@<X0>, unint64_t *a2@<X1>, uint64_t (*a3)(void)@<X3>, uint64_t a4@<X4>, uint64_t *a5@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7992EFC(0, a2);
  result = sub_1D7D28D1C();
  if (result)
  {
    v10 = result;
    v11 = a3(0);
    result = swift_allocObject();
    *(result + 16) = v10;
    a5[3] = v11;
    a5[4] = a4;
    *a5 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D799F230(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C3BC(0, &qword_1EE0BEDE0);
  result = sub_1D7D28D1C();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &unk_1EE0BF710);
  result = sub_1D7D28D2C();
  if (!v17)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v3 = sub_1D7D2F7DC();
  swift_allocObject();
  v4 = sub_1D7D2F7CC();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &qword_1EE0CBB50);
  result = sub_1D7D28D2C();
  if (!v15)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  sub_1D799D69C(&v14, &v16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &unk_1EE0BFFE0);
  result = sub_1D7D28D2C();
  if (*(&v12 + 1))
  {
    sub_1D799D69C(&v11, &v14);
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1D798C468(0, &qword_1EE0CB780);
    sub_1D7D28D2C();
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1D798C468(0, qword_1EE0C7B20);
    sub_1D7D28D2C();
    v5 = v8;
    v9 = v3;
    v10 = MEMORY[0x1E69B63F8];
    *&v8 = v4;
    type metadata accessor for ExportToGroceryListCommandHandler();
    v6 = swift_allocObject();
    sub_1D799D69C(&v8, v6 + 16);
    sub_1D799D69C(&v16, v6 + 56);
    sub_1D799D69C(&v14, v6 + 96);
    v7 = v12;
    *(v6 + 136) = v11;
    *(v6 + 152) = v7;
    *(v6 + 168) = v13;
    *(v6 + 176) = v5;
    return v6;
  }

LABEL_9:
  __break(1u);
  return result;
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

uint64_t sub_1D799F54C@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for RecipeURLProvider();
  v3 = swift_allocObject();
  a1[3] = v2;
  result = sub_1D799F6FC(qword_1EE0BD9E8, type metadata accessor for RecipeURLProvider);
  a1[4] = result;
  *a1 = v3;
  return result;
}

uint64_t sub_1D799F5F4(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for ReportConcernDetailCommandHandler();
  result = sub_1D7D28D1C();
  if (result)
  {
    swift_getObjectType();
    sub_1D7D2C54C();
    sub_1D7D2FD7C();
    sub_1D7AE4CD8(&qword_1EE0C28A0, type metadata accessor for ReportConcernDetailCommandHandler);
    sub_1D7D2A79C();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D799F6FC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D799F744()
{
  type metadata accessor for ReportConcernDetailCommandHandler();

  return swift_allocObject();
}

uint64_t sub_1D799F778(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for CopyArticleCommandHandler();
  result = sub_1D7D28D1C();
  if (result)
  {
    swift_getObjectType();
    sub_1D7D2C5BC();
    sub_1D7D2C31C();
    sub_1D798C3BC(0, &qword_1EE0CBA60);
    sub_1D7AE4CD8(&unk_1EE0C63F0, type metadata accessor for CopyArticleCommandHandler);
    sub_1D7D2A79C();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D799F89C(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C3BC(0, &qword_1EE0BEDA0);
  result = sub_1D7D28D1C();
  if (result)
  {
    v3 = result;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1D798C3BC(0, &qword_1EE0BEEC0);
    result = sub_1D7D28D1C();
    if (result)
    {
      v4 = result;
      type metadata accessor for CopyArticleCommandHandler();
      result = swift_allocObject();
      *(result + 16) = v3;
      *(result + 24) = v4;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D799F990(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for RemoveFromHistoryCommandHandler();
  result = sub_1D7D28D1C();
  if (result)
  {
    swift_getObjectType();
    sub_1D7D2C50C();
    sub_1D7AE4CD8(qword_1EE0C39B0, type metadata accessor for RemoveFromHistoryCommandHandler);
    sub_1D7D2A79C();
  }

  else
  {
    __break(1u);
  }

  return result;
}

id AudioPlayer.init()()
{
  ObjectType = swift_getObjectType();
  v2 = *v0;
  v3 = MEMORY[0x1E69E7D40];
  v4 = *MEMORY[0x1E69E7D40];
  *(v0 + *((*MEMORY[0x1E69E7D40] & *v0) + 0x60)) = 0;
  *(v0 + *((*v3 & *v0) + 0x68)) = 0;
  v5 = (v0 + *((*v3 & *v0) + 0x70));
  *v5 = 0u;
  v5[1] = 0u;
  *(v0 + *((*v3 & *v0) + 0x78)) = 0;
  *(v0 + *((*v3 & *v0) + 0x80)) = 0;
  *(v0 + *((*v3 & *v0) + 0x88)) = 0;
  *(v0 + *((*v3 & *v0) + 0x90)) = 0;
  v6 = *((v4 & v2) + 0x50);
  (*(*(v6 - 8) + 56))(v0 + *((*v3 & *v0) + 0x98), 1, 1, v6);
  *(v0 + *((*v3 & *v0) + 0xA0)) = MEMORY[0x1E69E7CC0];
  *(v0 + *((*v3 & *v0) + 0xA8)) = 0;
  v7 = *((*v3 & *v0) + 0xB0);
  v19 = 0.0;
  v8 = MEMORY[0x1E69D6538];
  sub_1D79A0170(0, &qword_1EE0C0428, MEMORY[0x1E69E63B0], MEMORY[0x1E69D6538]);
  swift_allocObject();
  *(v0 + v7) = sub_1D7D28ECC();
  v9 = *((*v3 & *v0) + 0xB8);
  LOBYTE(v19) = 1;
  sub_1D79A0170(0, &qword_1EE0C0458, &type metadata for AudioPlaybackRate, v8);
  swift_allocObject();
  *(v0 + v9) = sub_1D7D28ECC();
  v10 = *((*v3 & *v0) + 0xC0);
  v19 = 0.0;
  sub_1D79A0518();
  swift_allocObject();
  *(v0 + v10) = sub_1D7D28ECC();
  v11 = *((*v3 & *v0) + 0xC8);
  sub_1D79A0170(0, &qword_1EE0C0400, MEMORY[0x1E69E7CA8] + 8, v8);
  swift_allocObject();
  *(v0 + v11) = sub_1D7D28ECC();
  v12 = *((*v3 & *v0) + 0xD0);
  v19 = 0.0;
  sub_1D79A05E4();
  swift_allocObject();
  *(v0 + v12) = sub_1D7D28ECC();
  v13 = *((*v3 & *v0) + 0xD8);
  v19 = 0.0;
  v20 = 1;
  sub_1D79A0170(0, &unk_1EE0C0460, &type metadata for AudioSeekState, v8);
  swift_allocObject();
  *(v0 + v13) = sub_1D7D28ECC();
  v22.receiver = v0;
  v22.super_class = ObjectType;
  v14 = objc_msgSendSuper2(&v22, sel_init);
  swift_beginAccess();
  v15 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v16 = swift_allocObject();
  v16[2] = v6;
  v16[3] = *((v4 & v2) + 0x58);
  v16[4] = v15;
  v17 = v14;

  sub_1D7D28EEC();

  __swift_project_boxed_opaque_existential_1(&v19, v21);
  sub_1D7D28AEC();

  __swift_destroy_boxed_opaque_existential_1(&v19);
  if (qword_1EE0CB4A0 != -1)
  {
    swift_once();
  }

  swift_getWitnessTable();
  sub_1D7D285AC();
  AudioPlayer.setPlaybackRate(_:)(v19);

  return v17;
}

uint64_t sub_1D79A0040()
{
  MEMORY[0x1DA7103D0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D79A0078()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1D79A00B4(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D79A0124();
  result = sub_1D7D28D1C();
  if (result)
  {
    v2 = result;
    type metadata accessor for RemoveFromHistoryCommandHandler();
    result = swift_allocObject();
    *(result + 16) = v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1D79A0124()
{
  result = qword_1EE0BF040;
  if (!qword_1EE0BF040)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE0BF040);
  }

  return result;
}

void sub_1D79A0170(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_1D79A01C0(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for ReadStoryCommandHandler();
  result = sub_1D7D28D1C();
  if (result)
  {
    swift_getObjectType();
    sub_1D7D2C57C();
    sub_1D798C3BC(0, &qword_1EE0CBA60);
    sub_1D7AE4CD8(qword_1EE0C6EE8, type metadata accessor for ReadStoryCommandHandler);
    sub_1D7D2A79C();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1D79A02D8(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_1D798F168(255, a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1D79A0340(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_1D798F168(255, a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1D79A03A8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1D79A040C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1D79A0470(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D7D3191C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1D79A04C4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D7D3191C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1D79A0518()
{
  if (!qword_1EE0C0408)
  {
    sub_1D79A0340(255, &qword_1EE0BE7D8, &qword_1EE0BE7E0, MEMORY[0x1E69E7280], MEMORY[0x1E69E6720]);
    v0 = sub_1D7D28F2C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE0C0408);
    }
  }
}

uint64_t sub_1D79A059C()
{
  type metadata accessor for ReadStoryCommandHandler();

  return swift_allocObject();
}

void sub_1D79A05E4()
{
  if (!qword_1EE0C0410)
  {
    type metadata accessor for TimeControlStatus(255);
    v0 = sub_1D7D28F2C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE0C0410);
    }
  }
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_1D79A0650@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &qword_1EE0CBE60);
  result = sub_1D7D28D2C();
  if (!v18)
  {
    __break(1u);
    goto LABEL_12;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &qword_1EE0CBB58);
  result = sub_1D7D28D2C();
  if (!v17)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &qword_1EE0CBB48);
  result = sub_1D7D28D2C();
  if (!v16)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7991994();
  result = sub_1D7D28D1C();
  if (!result)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &qword_1EE0BF4F8);
  result = sub_1D7D28D2C();
  if (!v14)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  sub_1D799D69C(&v13, v15);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &unk_1EE0BF500);
  result = sub_1D7D28D2C();
  if (!v12)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &unk_1EE0BF5F0);
  result = sub_1D7D28D2C();
  if (!v11)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &qword_1EE0BF4F0);
  result = sub_1D7D28D2C();
  if (!v10)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &unk_1EE0BF590);
  sub_1D7D28D2C();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &qword_1EE0CBB50);
  result = sub_1D7D28D2C();
  if (v8)
  {
    sub_1D799D69C(&v7, v9);
    v5 = sub_1D7D2FC4C();
    swift_allocObject();
    result = sub_1D7D2FC3C();
    v6 = MEMORY[0x1E69B6648];
    a2[3] = v5;
    a2[4] = v6;
    *a2 = result;
    return result;
  }

LABEL_19:
  __break(1u);
  return result;
}

uint64_t sub_1D79A0A14()
{
  v0 = sub_1D7D2866C();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D7D2867C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = (v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v9 = sub_1D7D3034C();
  v9[1] = v10;
  (*(v6 + 104))(v9, *MEMORY[0x1E69D6E98], v5);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E88], v0);
  v13[1] = 0x3FF0000000000000;
  sub_1D79A0C48();
  swift_allocObject();
  sub_1D7D2871C();
  if (qword_1EE0CB488 != -1)
  {
    swift_once();
  }

  v11 = sub_1D7D286CC();

  qword_1EE0DE570 = v11;
  return result;
}

void sub_1D79A0C48()
{
  if (!qword_1EE0CB3C8)
  {
    v0 = sub_1D7D2870C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE0CB3C8);
    }
  }
}

id sub_1D79A0CA0()
{
  v0 = objc_allocWithZone(sub_1D7D2FE4C());

  return [v0 init];
}

uint64_t sub_1D79A0CD8()
{
  v0 = sub_1D7D2866C();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D7D2867C();
  v7 = MEMORY[0x1EEE9AC00](v5, v6);
  (*(v9 + 104))(v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x1E69D6EA0], v7);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E88], v0);
  v11[1] = 0x3FF0000000000000;
  sub_1D79A0C48();
  swift_allocObject();
  result = sub_1D7D2871C();
  qword_1EE0CB490 = result;
  return result;
}

uint64_t sub_1D79A0E90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  ObjectType = swift_getObjectType();

  return MEMORY[0x1EEE454E0](a1, a2, ObjectType, a6);
}

uint64_t sub_1D79A0EF8@<X0>(uint64_t *a1@<X8>)
{
  sub_1D799D6E0(0, &qword_1EE0BAE18, MEMORY[0x1E69B6508], MEMORY[0x1E69E6F90]);
  v2 = sub_1D7D2F90C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 72);
  v5 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1D7D50440;
  v7 = v6 + v5;
  v8 = *(v3 + 104);
  v8(v7, *MEMORY[0x1E69B6500], v2);
  v8(v7 + v4, *MEMORY[0x1E69B64F8], v2);
  v8(v7 + 2 * v4, *MEMORY[0x1E69B64E8], v2);
  v8(v7 + 3 * v4, *MEMORY[0x1E69B64E0], v2);
  v8(v7 + 4 * v4, *MEMORY[0x1E69B64F0], v2);
  v8(v7 + 5 * v4, *MEMORY[0x1E69B64D8], v2);
  v9 = sub_1D7D2FD1C();
  swift_allocObject();
  result = sub_1D7D2FD0C();
  v11 = MEMORY[0x1E69B66D8];
  a1[3] = v9;
  a1[4] = v11;
  *a1 = result;
  return result;
}

Swift::Void __swiftcall AudioPlayer.setPlaybackRate(_:)(Swift::Double a1)
{
  if (a1 == 0.75)
  {
    v2 = 0;
    v3 = 0;
    v4 = 0;
    v5 = 0;
    v6 = 0;
  }

  else if (a1 == 1.0)
  {
    v2 = 0;
    v3 = 0;
    v4 = 0;
    v5 = 0;
    v6 = 1;
  }

  else if (a1 == 1.25)
  {
    v2 = 0;
    v3 = 0;
    v4 = 0;
    v6 = 0;
    v5 = 1;
  }

  else if (a1 == 1.5)
  {
    v2 = 0;
    v3 = 0;
    v5 = 0;
    v6 = 0;
    v4 = 1;
  }

  else if (a1 == 1.75)
  {
    v2 = 0;
    v4 = 0;
    v5 = 0;
    v6 = 0;
    v3 = 1;
  }

  else
  {
    if (a1 != 2.0)
    {
      return;
    }

    v3 = 0;
    v4 = 0;
    v5 = 0;
    v6 = 0;
    v2 = 1;
  }

  swift_beginAccess();

  sub_1D7D28EDC();

  if (v7 > 2u)
  {
    if (v7 == 3)
    {
      if (v4)
      {
        return;
      }
    }

    else if (v7 == 4)
    {
      if (v3)
      {
        return;
      }
    }

    else if (v2)
    {
      return;
    }

    goto LABEL_25;
  }

  if (!v7)
  {
    if (a1 == 0.75)
    {
      return;
    }

    goto LABEL_25;
  }

  if (v7 == 1)
  {
    if (v6)
    {
      return;
    }

    goto LABEL_25;
  }

  if ((v5 & 1) == 0)
  {
LABEL_25:
    sub_1D7AEA8FC();

    sub_1D7D28F1C();
  }
}

uint64_t sub_1D79A134C@<X0>(uint64_t (*a1)(void)@<X1>, uint64_t (*a2)(void)@<X2>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  v7 = a1(0);
  swift_allocObject();
  result = a2();
  a4[3] = v7;
  a4[4] = a3;
  *a4 = result;
  return result;
}

uint64_t sub_1D79A13B4@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7992EFC(0, &qword_1EE0BF040);
  result = sub_1D7D28D1C();
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  v5 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &qword_1EE0BF560);
  result = sub_1D7D28D2C();
  if (!v18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &qword_1EE0CBE60);
  result = sub_1D7D28D2C();
  v6 = v15;
  if (v15)
  {
    v7 = v16;
    v8 = type metadata accessor for ArticleListeningProgressManager();
    v9 = objc_allocWithZone(v8);
    *&v9[OBJC_IVAR____TtC12NewsArticles31ArticleListeningProgressManager_listeningProgressObservations] = MEMORY[0x1E69E7CC8];
    v10 = OBJC_IVAR____TtC12NewsArticles31ArticleListeningProgressManager_cachedArticleTextRanges;
    sub_1D79A161C();
    swift_allocObject();
    *&v9[v10] = sub_1D7D292EC();
    *&v9[OBJC_IVAR____TtC12NewsArticles31ArticleListeningProgressManager_readingHistory] = v5;
    sub_1D799CC84(v17, &v9[OBJC_IVAR____TtC12NewsArticles31ArticleListeningProgressManager_paidBundleConfigManager]);
    v11 = &v9[OBJC_IVAR____TtC12NewsArticles31ArticleListeningProgressManager_commandCenter];
    *v11 = v6;
    *(v11 + 1) = v7;
    v14.receiver = v9;
    v14.super_class = v8;
    v12 = v5;
    swift_unknownObjectRetain();
    v13 = objc_msgSendSuper2(&v14, sel_init);
    [v12 addObserver_];
    __swift_destroy_boxed_opaque_existential_1(v17);

    result = swift_unknownObjectRelease();
    a2[3] = v8;
    a2[4] = &off_1F52B5220;
    *a2 = v13;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

void sub_1D79A161C()
{
  if (!qword_1EE0C0348)
  {
    v0 = sub_1D7D292FC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE0C0348);
    }
  }
}

char *AudioPlaybackConductor.init(player:playbackQueue:listeningProgressProvider:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = sub_1D79A1784(a1, a2, a3);
  (*(*(v7[12] - 8) + 8))(a3);
  (*(*(v7[11] - 8) + 8))(a2);
  (*(*(v7[10] - 8) + 8))(a1);
  return v8;
}

char *sub_1D79A1784(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = *(*v3 + 104);
  v9 = *(*v3 + 80);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v10 = type metadata accessor for AudioPlaybackState();
  MEMORY[0x1EEE9AC00](v10, v11);
  sub_1D7D28F2C();
  swift_storeEnumTagMultiPayload();
  *(v3 + 2) = sub_1D7D28EBC();
  *(v3 + 3) = 0;
  *(v3 + 4) = 0;
  *(v3 + 5) = 0;
  (*(*(v9 - 8) + 16))(&v4[*(*v4 + 160)], a1, v9);
  v12 = v7[11];
  v13 = v7[14];
  *&v3[*(*v3 + 168)] = AudioPlaybackQueue.currentPlayable.getter(v12, v13);
  v14 = v7[12];
  (*(*(v14 - 8) + 16))(&v4[*(*v4 + 176)], a3, v14);
  v15 = swift_allocObject();
  swift_weakInit();
  v16 = swift_allocObject();
  *&v17 = v9;
  *(&v17 + 1) = v12;
  *&v18 = v14;
  *(&v18 + 1) = v8;
  v30 = v18;
  v31 = v17;
  *(v16 + 16) = v17;
  *(v16 + 32) = v18;
  *(v16 + 48) = v13;
  v19 = v7[15];
  *(v16 + 56) = v19;
  *(v16 + 64) = v15;

  sub_1D7D28EEC();

  __swift_destroy_boxed_opaque_existential_1(v32);
  v8[8](v9, v8);
  v20 = swift_allocObject();
  swift_weakInit();
  v21 = swift_allocObject();
  *(v21 + 16) = v31;
  *(v21 + 32) = v30;
  *(v21 + 48) = v13;
  *(v21 + 56) = v19;
  *(v21 + 64) = v20;
  sub_1D7D28EEC();

  __swift_destroy_boxed_opaque_existential_1(v32);
  v8[9](v9, v8);
  v22 = swift_allocObject();
  swift_weakInit();
  v23 = swift_allocObject();
  *(v23 + 16) = v31;
  *(v23 + 32) = v30;
  *(v23 + 48) = v13;
  *(v23 + 56) = v19;
  *(v23 + 64) = v22;
  sub_1D7D28EEC();

  __swift_destroy_boxed_opaque_existential_1(v32);
  v8[12](v9, v8);
  v24 = swift_allocObject();
  swift_weakInit();
  v25 = swift_allocObject();
  *(v25 + 16) = v31;
  *(v25 + 32) = v30;
  *(v25 + 48) = v13;
  *(v25 + 56) = v19;
  *(v25 + 64) = v24;
  sub_1D7D28EEC();

  __swift_destroy_boxed_opaque_existential_1(v32);
  v8[13](v9, v8);
  v26 = swift_allocObject();
  swift_weakInit();

  v27 = swift_allocObject();
  *(v27 + 16) = v31;
  *(v27 + 32) = v30;
  *(v27 + 48) = v13;
  *(v27 + 56) = v19;
  *(v27 + 64) = v26;
  sub_1D7D28EEC();

  __swift_destroy_boxed_opaque_existential_1(v32);
  v28 = swift_allocObject();
  *(v28 + 16) = v31;
  *(v28 + 32) = v30;
  *(v28 + 48) = v13;
  *(v28 + 56) = v19;
  sub_1D7D28EEC();

  __swift_destroy_boxed_opaque_existential_1(v32);
  return v3;
}

uint64_t sub_1D79A1D88()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D79A1DC0()
{

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_1D79A1E2C()
{
  result = swift_getTupleTypeMetadata();
  if (v1 <= 0x3F)
  {
    result = swift_getTupleTypeMetadata3();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t AudioPlaybackQueue.currentPlayable.getter(uint64_t a1, uint64_t a2)
{
  (*(a2 + 24))();
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  swift_getAssociatedTypeWitness();
  sub_1D7D3130C();
  sub_1D7D307BC();
  swift_getAssociatedConformanceWitness();
  swift_getWitnessTable();
  swift_getWitnessTable();
  v5 = sub_1D7D28F0C();

  return v5;
}

uint64_t sub_1D79A20CC()
{
  swift_getAssociatedTypeWitness();
  sub_1D7D307BC();
  swift_getWitnessTable();
  return sub_1D7D30A8C();
}

uint64_t sub_1D79A2168()
{
  sub_1D79A219C();
}

uint64_t sub_1D79A219C()
{
  v1 = *((*MEMORY[0x1E69E7D40] & *v0) + 0xB0);
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1D79A21FC()
{
  sub_1D79A2230();
}

uint64_t sub_1D79A2230()
{
  v1 = *((*MEMORY[0x1E69E7D40] & *v0) + 0xB8);
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1D79A2290()
{
  sub_1D79A22D4();
}

uint64_t sub_1D79A22D4()
{
  v1 = *((*MEMORY[0x1E69E7D40] & *v0) + 0xD0);
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1D79A2334()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_1D79A2374()
{
  sub_1D79A23C8();
}

uint64_t sub_1D79A23C8()
{
  v1 = *((*MEMORY[0x1E69E7D40] & *v0) + 0xD8);
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1D79A2428(uint64_t *a1)
{
  v2 = *a1;
  swift_beginAccess();
  v3 = *(v1 + v2);
  v4 = *(v3 + 16);

  if (!v4)
  {
  }

  v6 = 0;
  v7 = v3 + 40;
  while (v6 < *(v3 + 16))
  {
    ++v6;
    v8 = *(v7 - 8);

    v8(v9);

    v7 += 16;
    if (v4 == v6)
    {
    }
  }

  __break(1u);
  return result;
}

uint64_t AudioPlaybackConductor.currentItem.getter()
{
  if (v0[4])
  {
    v1 = v0[4];
  }

  else
  {
    v1 = sub_1D79A2574(v0);
    v0[4] = v1;
  }

  return v1;
}

uint64_t sub_1D79A2574(void *a1)
{
  v1 = *a1;
  v2 = swift_allocObject();
  v3 = v1[10];
  v2[2] = v3;
  v14 = v1[11];
  v2[3] = v14;
  v13 = v1[12];
  v2[4] = v13;
  v4 = v1[13];
  v2[5] = v4;
  v5 = v1[14];
  v2[6] = v5;
  v6 = v1[15];
  v2[7] = v6;
  swift_getAssociatedTypeWitness();
  sub_1D7D3130C();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  type metadata accessor for AudioPlaybackState();
  swift_getWitnessTable();
  v16 = *(AssociatedConformanceWitness + 8);
  swift_getWitnessTable();
  v8 = sub_1D7D28F0C();

  v9 = swift_allocObject();
  *&v10 = v3;
  *(&v10 + 1) = v14;
  *&v11 = v13;
  *(&v11 + 1) = v4;
  *(v9 + 16) = v10;
  *(v9 + 32) = v11;
  *(v9 + 48) = v5;
  *(v9 + 56) = v6;
  sub_1D7D28EEC();

  __swift_destroy_boxed_opaque_existential_1(v15);
  return v8;
}

uint64_t sub_1D79A27A8(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();

  return MEMORY[0x1EEE447E0](ObjectType, a2);
}

uint64_t sub_1D79A27FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  ObjectType = swift_getObjectType();

  return MEMORY[0x1EEE447D8](a1, a2, a3, a4, a5, ObjectType, a7);
}

uint64_t sub_1D79A287C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v5 = type metadata accessor for AudioPlaybackState();
  v7 = MEMORY[0x1EEE9AC00](v5, v6);
  v9 = &v15 - v8;
  (*(v10 + 16))(&v15 - v8, a1, v5, v7);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v12 = *(AssociatedTypeWitness - 8);
  if (EnumCaseMultiPayload > 1)
  {
    v13 = 1;
  }

  else
  {
    (*(*(AssociatedTypeWitness - 8) + 32))(a2, v9, AssociatedTypeWitness);
    v13 = 0;
  }

  return (*(v12 + 56))(a2, v13, 1, AssociatedTypeWitness);
}

uint64_t sub_1D79A2A34@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798F168(0, &qword_1EE0BF6E8);
  result = sub_1D7D28D2C();
  if (!v25)
  {
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798F168(0, &qword_1EE0CE058);
  result = sub_1D7D28D2C();
  if (!v23)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798F168(0, &qword_1EE0CCF80);
  result = sub_1D7D28D2C();
  if (!v21)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798F168(0, qword_1EE0CEC08);
  result = sub_1D7D28D2C();
  if (v19)
  {
    v5 = __swift_mutable_project_boxed_opaque_existential_1(v22, v23);
    MEMORY[0x1EEE9AC00](v5, v5);
    v7 = &v18[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
    (*(v8 + 16))(v7);
    v9 = __swift_mutable_project_boxed_opaque_existential_1(v20, v21);
    MEMORY[0x1EEE9AC00](v9, v9);
    v11 = &v18[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
    (*(v12 + 16))(v11);
    v13 = __swift_mutable_project_boxed_opaque_existential_1(v18, v19);
    MEMORY[0x1EEE9AC00](v13, v13);
    v15 = &v18[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
    (*(v16 + 16))(v15);
    v17 = sub_1D79A34C0(&v24, *v7, *v11, *v15);
    __swift_destroy_boxed_opaque_existential_1(v18);
    __swift_destroy_boxed_opaque_existential_1(v20);
    __swift_destroy_boxed_opaque_existential_1(v22);
    result = type metadata accessor for IssueManager();
    a2[3] = result;
    a2[4] = &off_1F529CF48;
    *a2 = v17;
    return result;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_1D79A2DCC@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, qword_1EE0CC610);
  result = sub_1D7D28D2C();
  if (v23)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1D798C468(0, &qword_1EE0BF870);
    result = sub_1D7D28D2C();
    if (v21)
    {
      v5 = __swift_mutable_project_boxed_opaque_existential_1(v22, v23);
      MEMORY[0x1EEE9AC00](v5, v5);
      v7 = (&v19[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v8 + 16))(v7);
      v9 = *v7;
      OperationFactory = type metadata accessor for IssueHeadlineFetchOperationFactory();
      v19[3] = OperationFactory;
      v19[4] = &off_1F529CC30;
      v19[0] = v9;
      v11 = type metadata accessor for IssueArticleService();
      v12 = swift_allocObject();
      v13 = __swift_mutable_project_boxed_opaque_existential_1(v19, OperationFactory);
      MEMORY[0x1EEE9AC00](v13, v13);
      v15 = (&v19[-1] - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v16 + 16))(v15);
      v17 = *v15;
      v12[5] = OperationFactory;
      v12[6] = &off_1F529CC30;
      v12[2] = v17;
      sub_1D799D69C(&v20, (v12 + 7));
      __swift_destroy_boxed_opaque_existential_1(v19);
      result = __swift_destroy_boxed_opaque_existential_1(v22);
      a2[3] = v11;
      a2[4] = &off_1F529D4F0;
      *a2 = v12;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D79A305C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D79A30E4();
  result = sub_1D7D28D1C();
  if (result)
  {
    v4 = result;
    OperationFactory = type metadata accessor for IssueHeadlineFetchOperationFactory();
    result = swift_allocObject();
    *(result + 16) = v4;
    a2[3] = OperationFactory;
    a2[4] = &off_1F529CC30;
    *a2 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1D79A30E4()
{
  result = qword_1EE0BF090;
  if (!qword_1EE0BF090)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE0BF090);
  }

  return result;
}

uint64_t sub_1D79A3198@<X0>(uint64_t (*a1)(void)@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v5 = a1(0);
  result = swift_allocObject();
  a3[3] = v5;
  a3[4] = a2;
  *a3 = result;
  return result;
}

uint64_t sub_1D79A320C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &qword_1EE0CE058);
  result = sub_1D7D28D2C();
  if (v23)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1D798C468(0, &qword_1EE0BF870);
    result = sub_1D7D28D2C();
    if (v21)
    {
      v5 = __swift_mutable_project_boxed_opaque_existential_1(v22, v23);
      MEMORY[0x1EEE9AC00](v5, v5);
      v7 = (&v19[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v8 + 16))(v7);
      v9 = *v7;
      v10 = type metadata accessor for IssueArticleService();
      v19[3] = v10;
      v19[4] = &off_1F529D4F0;
      v19[0] = v9;
      v11 = type metadata accessor for ANFIssueService();
      v12 = swift_allocObject();
      v13 = __swift_mutable_project_boxed_opaque_existential_1(v19, v10);
      MEMORY[0x1EEE9AC00](v13, v13);
      v15 = (&v19[-1] - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v16 + 16))(v15);
      v17 = *v15;
      v12[5] = v10;
      v12[6] = &off_1F529D4F0;
      v12[2] = v17;
      sub_1D799D69C(&v20, (v12 + 7));
      __swift_destroy_boxed_opaque_existential_1(v19);
      result = __swift_destroy_boxed_opaque_existential_1(v22);
      a2[3] = v11;
      a2[4] = &off_1F529DE80;
      *a2 = v12;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_1D79A34C0(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = *a4;
  v9 = type metadata accessor for IssueArticleService();
  v35[3] = v9;
  v35[4] = &off_1F529D4F0;
  v35[0] = a2;
  v10 = type metadata accessor for IssuePDFReplicaPageService();
  v33 = v10;
  v34 = &off_1F52A3E70;
  v32[0] = a3;
  v30 = v8;
  v31 = &off_1F529DE80;
  v29[0] = a4;
  type metadata accessor for IssueManager();
  v11 = swift_allocObject();
  v12 = __swift_mutable_project_boxed_opaque_existential_1(v35, v9);
  MEMORY[0x1EEE9AC00](v12, v12);
  v14 = (&v29[-1] - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v15 + 16))(v14);
  v16 = __swift_mutable_project_boxed_opaque_existential_1(v32, v33);
  MEMORY[0x1EEE9AC00](v16, v16);
  v18 = (&v29[-1] - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v19 + 16))(v18);
  v20 = __swift_mutable_project_boxed_opaque_existential_1(v29, v30);
  MEMORY[0x1EEE9AC00](v20, v20);
  v22 = (&v29[-1] - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v23 + 16))(v22);
  v24 = *v14;
  v25 = *v18;
  v26 = *v22;
  v11[10] = v9;
  v11[11] = &off_1F529D4F0;
  v11[7] = v24;
  v11[15] = v10;
  v11[16] = &off_1F52A3E70;
  v11[17] = v26;
  v11[12] = v25;
  v11[20] = v8;
  v11[21] = &off_1F529DE80;
  sub_1D79A3804();
  swift_allocObject();
  v11[22] = sub_1D7D292EC();
  sub_1D799D69C(a1, (v11 + 2));
  __swift_destroy_boxed_opaque_existential_1(v29);
  __swift_destroy_boxed_opaque_existential_1(v32);
  __swift_destroy_boxed_opaque_existential_1(v35);
  return v11;
}

void sub_1D79A3804()
{
  if (!qword_1EE0C0338)
  {
    v0 = sub_1D7D292FC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE0C0338);
    }
  }
}

uint64_t AudioPlaybackConductor.playingItemState.getter()
{
  if (v0[5])
  {
    v1 = v0[5];
  }

  else
  {
    v1 = sub_1D79A38C4(v0);
    v0[5] = v1;
  }

  return v1;
}

uint64_t sub_1D79A38C4(void *a1)
{
  v1 = *a1;
  v2 = swift_allocObject();
  v3 = swift_allocObject();
  v4 = v1[10];
  v2[2] = v4;
  v5 = v1[11];
  v2[3] = v5;
  v6 = v1[12];
  v2[4] = v6;
  v7 = v1[13];
  v2[5] = v7;
  v8 = v1[14];
  v2[6] = v8;
  v9 = v1[15];
  v2[7] = v9;
  *&v10 = v4;
  *(&v10 + 1) = v5;
  *&v11 = v6;
  *(&v11 + 1) = v7;
  v15 = v11;
  v16 = v10;
  *(v3 + 16) = v10;
  *(v3 + 32) = v11;
  *(v3 + 48) = v8;
  *(v3 + 56) = v9;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for AudioNowPlayingPlaybackState();
  v12 = sub_1D7D28E8C();

  v13 = swift_allocObject();
  *(v13 + 16) = v16;
  *(v13 + 32) = v15;
  *(v13 + 48) = v8;
  *(v13 + 56) = v9;
  sub_1D7D28EEC();

  __swift_destroy_boxed_opaque_existential_1(v17);
  return v12;
}

uint64_t sub_1D79A3B28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v5 = type metadata accessor for AudioPlaybackState();
  v7 = MEMORY[0x1EEE9AC00](v5, v6);
  v9 = v26 - v8;
  (*(v10 + 16))(v26 - v8, a1, v5, v7);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
      v14 = *(TupleTypeMetadata3 + 48);
      v15 = *&v9[v14];
      v16 = *(TupleTypeMetadata3 + 64);
      v17 = v9[v16];
      (*(*(AssociatedTypeWitness - 8) + 32))(a2, v9, AssociatedTypeWitness);
      *(a2 + v14) = v15;
      *(a2 + v16) = v17;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](EnumCaseMultiPayload, v12);
    strcpy(&v26[-6], "item time playbackRate waiting ");
    v26[0] = AssociatedTypeWitness;
    v26[1] = MEMORY[0x1E69E63B0];
    v26[2] = &type metadata for AudioPlaybackRate;
    v26[3] = MEMORY[0x1E69E6370];
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v19 = TupleTypeMetadata[12];
    v20 = *&v9[v19];
    v21 = TupleTypeMetadata[16];
    v22 = v9[v21];
    v23 = TupleTypeMetadata[20];
    v24 = v9[v23];
    (*(*(AssociatedTypeWitness - 8) + 32))(a2, v9, AssociatedTypeWitness);
    *(a2 + v19) = v20;
    *(a2 + v21) = v22;
    *(a2 + v23) = v24;
  }

  type metadata accessor for AudioNowPlayingPlaybackState();
  return swift_storeEnumTagMultiPayload();
}

id AudioRemoteCommandCenterManager.__allocating_init<A>(center:playingItemState:commandCenter:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v11 = sub_1D7D28C2C();
  MEMORY[0x1EEE9AC00](v11, v12);
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  *(v13 + 24) = a2;
  sub_1D79A400C();
  sub_1D79A4064(0, &qword_1EE0BF2E8, MEMORY[0x1E69D6420], MEMORY[0x1E69E62F8]);
  sub_1D79A40C8();

  sub_1D7D313AC();
  sub_1D79A4150();
  swift_allocObject();
  v14 = sub_1D7D292AC();
  v15 = objc_allocWithZone(v6);
  v16 = AudioRemoteCommandCenterManager.init<A>(center:playingItemState:commandCenter:)(v14, a3, a4, a5);

  return v16;
}

uint64_t sub_1D79A3FD4()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

unint64_t sub_1D79A400C()
{
  result = qword_1EE0C04D0;
  if (!qword_1EE0C04D0)
  {
    sub_1D7D28C2C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0C04D0);
  }

  return result;
}

void sub_1D79A4064(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_1D79A40C8()
{
  result = qword_1EE0BF2E0;
  if (!qword_1EE0BF2E0)
  {
    sub_1D79A4064(255, &qword_1EE0BF2E8, MEMORY[0x1E69D6420], MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0BF2E0);
  }

  return result;
}

void sub_1D79A4150()
{
  if (!qword_1EE0C0350)
  {
    sub_1D7992EFC(255, &unk_1EE0BEF28);
    v0 = sub_1D7D292BC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE0C0350);
    }
  }
}

id AudioRemoteCommandCenterManager.init<A>(center:playingItemState:commandCenter:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = *a2;
  *&v5[OBJC_IVAR____TtC12NewsArticles31AudioRemoteCommandCenterManager_lazyCenter] = a1;
  v12 = swift_allocObject();
  v13 = *(v11 + *MEMORY[0x1E69D6540]);
  v14 = *(v13 + 16);
  v12[2] = v14;
  v15 = *(v13 + 24);
  v12[3] = v15;
  v12[4] = ObjectType;
  v16 = swift_allocObject();
  v16[2] = v14;
  v16[3] = v15;
  v16[4] = sub_1D79A4864;
  v16[5] = v12;

  v17 = sub_1D7D28E9C();

  *&v5[OBJC_IVAR____TtC12NewsArticles31AudioRemoteCommandCenterManager_playingItemState] = v17;
  v18 = &v5[OBJC_IVAR____TtC12NewsArticles31AudioRemoteCommandCenterManager_commandCenter];
  *v18 = a3;
  *(v18 + 1) = a4;
  v23.receiver = v5;
  v23.super_class = ObjectType;
  swift_unknownObjectRetain();
  v19 = objc_msgSendSuper2(&v23, sel_init);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v20 = v19;

  sub_1D7D28EEC();

  __swift_destroy_boxed_opaque_existential_1(v22);
  swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_1D7D2929C();

  swift_unknownObjectRelease();

  return v20;
}

uint64_t sub_1D79A4458()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1D79A4490()
{
  MEMORY[0x1DA7103D0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

unint64_t sub_1D79A44C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for AudioNowPlayingPlaybackState();
  v7 = MEMORY[0x1EEE9AC00](v5, v6);
  v9 = &v12[-v8];
  (*(v10 + 16))(&v12[-v8], a1, v7);
  return sub_1D79A48DC(v9, a3) & 0xFFFFFFFF00010101;
}

uint64_t sub_1D79A45B4@<X0>(uint64_t a1@<X8>)
{
  result = (*(v1 + 32))();
  *a1 = result & 1;
  *(a1 + 1) = BYTE1(result) & 1;
  *(a1 + 2) = BYTE2(result) & 1;
  *(a1 + 4) = HIDWORD(result);
  *(a1 + 8) = v4 & 1;
  return result;
}

char *ArticleAudioPrewarmer.init(bundleSubscriptionManager:avAssetPrewarmer:)(void *a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  *&v3[OBJC_IVAR____TtC12NewsArticles21ArticleAudioPrewarmer_bundleSubscriptionManager] = a1;
  *&v3[OBJC_IVAR____TtC12NewsArticles21ArticleAudioPrewarmer_avAssetPrewarmer] = a2;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v7 = [a1 cachedSubscription];
  if (objc_getAssociatedObject(v7, v7 + 1))
  {
    sub_1D7D3138C();
    swift_unknownObjectRelease();
  }

  else
  {
    v19 = 0u;
    v20 = 0u;
  }

  v21 = v19;
  v22 = v20;
  if (!*(&v20 + 1))
  {
    sub_1D79F0014(&v21);
    goto LABEL_9;
  }

  sub_1D79A4870();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_9:
    v8 = 0;
    v9 = 0;
    goto LABEL_10;
  }

  v8 = v17;
  v9 = [v17 integerValue];
  if (v9 == -1)
  {
    goto LABEL_17;
  }

LABEL_10:
  if (objc_getAssociatedObject(v7, ~v9))
  {
    sub_1D7D3138C();
    swift_unknownObjectRelease();
  }

  else
  {
    v19 = 0u;
    v20 = 0u;
  }

  v21 = v19;
  v22 = v20;
  if (!*(&v20 + 1))
  {
    sub_1D79F0014(&v21);
    goto LABEL_17;
  }

  sub_1D79A4870();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_17:

    v12 = -64;
    goto LABEL_18;
  }

  v10 = v17;
  v11 = [v10 integerValue];

  v12 = v11 - 64;
LABEL_18:
  v3[OBJC_IVAR____TtC12NewsArticles21ArticleAudioPrewarmer_isBundleSubscribed] = (v12 ^ v9) & 1;
  v18.receiver = v3;
  v18.super_class = ObjectType;
  v13 = objc_msgSendSuper2(&v18, sel_init);
  v14 = *&v13[OBJC_IVAR____TtC12NewsArticles21ArticleAudioPrewarmer_bundleSubscriptionManager];
  v15 = v13;
  [v14 addObserver_];

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v15;
}

unint64_t sub_1D79A4870()
{
  result = qword_1EE0BECA0;
  if (!qword_1EE0BECA0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE0BECA0);
  }

  return result;
}

uint64_t sub_1D79A48DC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AudioNowPlayingPlaybackState();
  v5 = *(v4 - 8);
  v7 = MEMORY[0x1EEE9AC00](v4, v6);
  v9 = &v17[-v8];
  (*(v5 + 16))(&v17[-v8], a1, v4, v7);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v12 = 0;
    v11 = 256;
    goto LABEL_5;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v11 = 0;
    v12 = 1;
LABEL_5:
    (*(*(a2 - 8) + 8))(v9, a2);
    v13 = 0;
    goto LABEL_7;
  }

  v11 = 0;
  v12 = 1;
  v13 = 0x10000;
LABEL_7:
  AudioNowPlayingPlaybackState.playbackRate.getter(v4, &v18);
  (*(v5 + 8))(a1, v4);
  if (v18 <= 2u)
  {
    v15 = 0x3F80000000000000;
    if (v18 != 1)
    {
      v15 = 0x3FA0000000000000;
    }

    if (v18)
    {
      v14 = v15;
    }

    else
    {
      v14 = 0x3F40000000000000;
    }
  }

  else if (v18 > 4u)
  {
    if (v18 == 5)
    {
      v14 = 0x4000000000000000;
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = 0x3FC0000000000000;
    if (v18 != 3)
    {
      v14 = 0x3FE0000000000000;
    }
  }

  return v11 | v13 | v14 | v12;
}

uint64_t sub_1D79A4AB8@<X0>(uint64_t (*a1)(void)@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v5 = a1(0);
  result = swift_allocObject();
  a3[3] = v5;
  a3[4] = a2;
  *a3 = result;
  return result;
}

uint64_t AudioNowPlayingPlaybackState.playbackRate.getter@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v5 = MEMORY[0x1EEE9AC00](a1, v2);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v7, v5);
  result = swift_getEnumCaseMultiPayload();
  if (result)
  {
    if (result != 1)
    {
      v13 = 6;
      goto LABEL_7;
    }

    v11 = *(a1 + 16);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  }

  else
  {
    MEMORY[0x1EEE9AC00](result, v10);
    strcpy(&v14[-6], "item time playbackRate waiting ");
    v11 = *(a1 + 16);
    v14[0] = v11;
    v14[1] = MEMORY[0x1E69E63B0];
    v14[2] = &type metadata for AudioPlaybackRate;
    v14[3] = MEMORY[0x1E69E6370];
    TupleTypeMetadata3 = swift_getTupleTypeMetadata();
  }

  v13 = v7[*(TupleTypeMetadata3 + 64)];
  result = (*(*(v11 - 8) + 8))(v7, v11);
LABEL_7:
  *a2 = v13;
  return result;
}

uint64_t __swift_memcpy9_4(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_1D79A4D40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  sub_1D799CC84(a2, &v10);
  v8 = swift_allocObject();
  *(v8 + 16) = a3;
  sub_1D799D69C(&v10, v8 + 24);
  *(v8 + 64) = a1;

  sub_1D7D28EFC();

  __swift_project_boxed_opaque_existential_1(&v10, v11);

  sub_1D7D28AEC();

  __swift_destroy_boxed_opaque_existential_1(a2);
  __swift_destroy_boxed_opaque_existential_1(&v10);
  return v4;
}

uint64_t sub_1D79A4E34()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t AudioNowPlayingInfoCenterManager.init<A>(playingItemState:thumbnailImageCache:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_1D79A4D40(a1, a2, a3);

  return v3;
}

uint64_t sub_1D79A4ED4(uint64_t a1, void (*a2)(void), uint64_t (*a3)(void))
{
  a2(0);
  swift_allocObject();
  return a3();
}

uint64_t AudioPlaybackConductor.playingItem.getter()
{
  if (v0[3])
  {
    v1 = v0[3];
  }

  else
  {
    v1 = sub_1D79A2574(v0);
    v0[3] = v1;
  }

  return v1;
}

uint64_t sub_1D79A4FE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v5 = type metadata accessor for AudioPlaybackState();
  v7 = MEMORY[0x1EEE9AC00](v5, v6);
  v9 = &v14 - v8;
  (*(v10 + 16))(&v14 - v8, a1, v5, v7);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v12 = *(AssociatedTypeWitness - 8);
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      (*(v12 + 8))(v9, AssociatedTypeWitness);
    }

    return (*(v12 + 56))(a2, 1, 1, AssociatedTypeWitness);
  }

  else
  {
    (*(v12 + 32))(a2, v9, AssociatedTypeWitness);
    return (*(v12 + 56))(a2, 0, 1, AssociatedTypeWitness);
  }
}

uint64_t sub_1D79A51F8()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 bundleIdentifier];

  if (v1)
  {
    sub_1D7D3034C();
  }

  sub_1D79A52C4();
  result = sub_1D7D312DC();
  qword_1EE0C05E8 = result;
  return result;
}

unint64_t sub_1D79A52C4()
{
  result = qword_1EE0BEC80;
  if (!qword_1EE0BEC80)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE0BEC80);
  }

  return result;
}

uint64_t sub_1D79A5310()
{
  sub_1D79A53B8();
}

uint64_t sub_1D79A53B8()
{
  v1 = *((*MEMORY[0x1E69E7D40] & *v0) + 0xC8);
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t AudioNowPlayingPlaybackState.nowPlaying.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = MEMORY[0x1EEE9AC00](a1, v3);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v8, v6);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v11 = *(a1 + 16);
  v12 = *(v11 - 8);
  if (EnumCaseMultiPayload > 1)
  {
    v13 = 1;
  }

  else
  {
    (*(*(v11 - 8) + 32))(a2, v8, v11);
    v13 = 0;
  }

  return (*(v12 + 56))(a2, v13, 1, v11);
}

id AudioPlaybackConductor.currentlyPlaying.getter()
{
  v1 = *v0;
  v2 = *v0;
  v3 = swift_allocObject();
  *(v3 + 16) = *(v2 + 80);
  *(v3 + 32) = *(v1 + 96);
  *(v3 + 40) = *(v2 + 104);
  *(v3 + 56) = *(v1 + 120);
  v4 = type metadata accessor for PlayableArticleInfo();
  v5 = sub_1D79A566C(sub_1D79A589C, v3, v4);

  return v5;
}

id sub_1D79A566C(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v7 = *(*v3 + *MEMORY[0x1E69D6540]);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v10 = &v18[-1] - v9;
  sub_1D79A58AC();
  sub_1D7D28EDC();
  v11 = a1(v10);
  (*(v8 + 8))(v10, v7);
  v12 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithValue_];

  v13 = swift_allocObject();
  v13[2] = v7;
  v13[3] = a3;
  v13[4] = v12;
  v13[5] = a1;
  v13[6] = a2;
  v14 = v12;

  sub_1D7D28EEC();

  __swift_project_boxed_opaque_existential_1(v18, v18[3]);
  v15 = v14;
  sub_1D7D28AEC();

  __swift_destroy_boxed_opaque_existential_1(v18);
  return v15;
}

uint64_t sub_1D79A585C()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

unint64_t sub_1D79A58AC()
{
  result = qword_1EE0BF130;
  if (!qword_1EE0BF130)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE0BF130);
  }

  return result;
}

id sub_1D79A58F8(uint64_t a1)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness, v4);
  v6 = &v35 - v5;
  swift_getAssociatedConformanceWitness();
  v7 = type metadata accessor for AudioPlaybackState();
  v9 = MEMORY[0x1EEE9AC00](v7, v8);
  v11 = &v35 - v10;
  (*(v12 + 16))(&v35 - v10, a1, v7, v9);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    MEMORY[0x1EEE9AC00](EnumCaseMultiPayload, v14);
    strcpy(&v35 - 48, "item time playbackRate waiting ");
    v36 = AssociatedTypeWitness;
    v37 = MEMORY[0x1E69E63B0];
    v38 = &type metadata for AudioPlaybackRate;
    v39 = MEMORY[0x1E69E6370];
    v23 = *&v11[*(swift_getTupleTypeMetadata() + 48)];
    (*(v3 + 32))(v6, v11, AssociatedTypeWitness);
    v24 = sub_1D7D28CBC();
    v26 = v25;
    v27 = type metadata accessor for PlayableArticleInfo();
    v28 = objc_allocWithZone(v27);
    v29 = &v28[OBJC_IVAR___NAPlayableArticleInfo_articleId];
    *v29 = v24;
    v29[1] = v26;
    *&v28[OBJC_IVAR___NAPlayableArticleInfo_listeningProgress] = v23;
    v28[OBJC_IVAR___NAPlayableArticleInfo_paused] = 0;
    v22 = objc_msgSendSuper2(&v35, sel_init, v28, v27);
    goto LABEL_5;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v15 = *&v11[*(swift_getTupleTypeMetadata3() + 48)];
    (*(v3 + 32))(v6, v11, AssociatedTypeWitness);
    v16 = sub_1D7D28CBC();
    v18 = v17;
    v19 = type metadata accessor for PlayableArticleInfo();
    v20 = objc_allocWithZone(v19);
    v21 = &v20[OBJC_IVAR___NAPlayableArticleInfo_articleId];
    *v21 = v16;
    v21[1] = v18;
    *&v20[OBJC_IVAR___NAPlayableArticleInfo_listeningProgress] = v15;
    v20[OBJC_IVAR___NAPlayableArticleInfo_paused] = 1;
    v40.receiver = v20;
    v40.super_class = v19;
    v22 = objc_msgSendSuper2(&v40, sel_init, v35.receiver, v35.super_class);
LABEL_5:
    v30 = v22;
    (*(v3 + 8))(v6, AssociatedTypeWitness);
    return v30;
  }

  v32 = type metadata accessor for PlayableArticleInfo();
  v33 = objc_allocWithZone(v32);
  v34 = &v33[OBJC_IVAR___NAPlayableArticleInfo_articleId];
  *v34 = 0;
  v34[1] = 0;
  *&v33[OBJC_IVAR___NAPlayableArticleInfo_listeningProgress] = 0;
  v33[OBJC_IVAR___NAPlayableArticleInfo_paused] = 0;
  v41.receiver = v33;
  v41.super_class = v32;
  return objc_msgSendSuper2(&v41, sel_init);
}

void *AudioSessionInterruptionHandler.init(currentlyPlayingObservable:commandCenter:)(void *a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a2;
  v3[4] = a3;
  v5 = objc_opt_self();
  v6 = a1;
  swift_unknownObjectRetain();
  v7 = [v5 defaultCenter];
  [v7 addObserver:v3 selector:sel_handleInterruption_ name:*MEMORY[0x1E69580D8] object:0];

  swift_unknownObjectRelease();
  return v3;
}

uint64_t AudioPlayer.currentError.getter()
{
  sub_1D79A5E24();
}

uint64_t sub_1D79A5E24()
{
  v1 = *((*MEMORY[0x1E69E7D40] & *v0) + 0xC0);
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t (*sub_1D79A5E84(uint64_t a1, uint64_t a2, uint64_t a3))()
{
  v5 = *(a2 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](a1, a1);
  v8 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, v7);
  v9 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  *(v10 + 24) = a3;
  (*(v5 + 32))(v10 + v9, v8, a2);
  return sub_1D7CA8790;
}

uint64_t sub_1D79A5FA4()
{
  v1 = *(*(v0 + 16) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t AudioMediaServicesResetHandler.init<A>(player:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1D79A608C(a1, a2, a3);
  (*(*(a2 - 8) + 8))(a1, a2);
  return v5;
}

uint64_t sub_1D79A608C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = sub_1D79A5E84(a1, a2, a3);
  *(v3 + 24) = v4;
  v5 = [objc_opt_self() defaultCenter];
  [v5 addObserver:v3 selector:sel_handleMediaServicesReset_ name:*MEMORY[0x1E6958128] object:0];

  return v3;
}

uint64_t NowPlayingViewCoordinator.init<A>(playbackState:commandCenter:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = *a1;
  v8 = swift_allocObject();
  v9 = *(v7 + *MEMORY[0x1E69D6540]);
  v8[2] = *(v9 + 16);
  v8[3] = *(v9 + 24);
  v8[4] = a2;
  v8[5] = a3;
  swift_unknownObjectRetain();
  sub_1D7D28EFC();

  __swift_project_boxed_opaque_existential_1(v11, v11[3]);

  sub_1D7D28AEC();

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v4;
}

uint64_t sub_1D79A6258()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1D79A6290()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1D79A633C()
{
  result = type metadata accessor for BlueprintRecipeViewerTokenState();
  if (v1 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1D79A6410()
{
  sub_1D7D2C80C();
  sub_1D7D2A23C();
  result = swift_getTupleTypeMetadata2();
  if (v1 <= 0x3F)
  {
    type metadata accessor for BlueprintRecipeViewerToken();
    sub_1D7D2A75C();
    sub_1D7D2B28C();
    result = swift_getTupleTypeMetadata3();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1D79A6584()
{

  v0 = sub_1D7D28C3C();
  sub_1D7D29DBC();

  sub_1D79A6608();
  swift_allocObject();
  return sub_1D7D2940C();
}

void sub_1D79A6608()
{
  if (!qword_1EE0BB3C0)
  {
    v0 = sub_1D7D2947C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE0BB3C0);
    }
  }
}

uint64_t sub_1D79A668C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D79A675C();
  result = sub_1D7D28D1C();
  if (result)
  {
    v4 = result;
    v5 = type metadata accessor for RecipeImageLoader();
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    a2[3] = v5;
    result = sub_1D799F6FC(&qword_1EE0BDA98, type metadata accessor for RecipeImageLoader);
    a2[4] = result;
    *a2 = v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1D79A675C()
{
  result = qword_1EE0BB000;
  if (!qword_1EE0BB000)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE0BB000);
  }

  return result;
}

void sub_1D79A67A8(id a1, uint64_t a2, SEL *a3)
{
  if (*(v3 + OBJC_IVAR____TtC12NewsArticles21ArticleAudioPrewarmer_isBundleSubscribed) == 1)
  {
    if ([a1 respondsToSelector_])
    {
      v7 = [a1 narrativeTrack];
      if (v7)
      {
        v8 = v7;
        v14 = [v7 asset];

        if (v14)
        {
          [*(v3 + OBJC_IVAR____TtC12NewsArticles21ArticleAudioPrewarmer_avAssetPrewarmer) *a3];
        }
      }
    }
  }

  else
  {
    if ([a1 respondsToSelector_])
    {
      v9 = [a1 narrativeTrackSample];
      if (v9)
      {
        v10 = v9;
        v11 = [v9 asset];

        if (v11)
        {
          [*(v3 + OBJC_IVAR____TtC12NewsArticles21ArticleAudioPrewarmer_avAssetPrewarmer) *a3];
        }
      }
    }

    if (a2)
    {
      v12 = *(v3 + OBJC_IVAR____TtC12NewsArticles21ArticleAudioPrewarmer_avAssetPrewarmer);
      v13 = *a3;

      [v12 v13];
    }
  }
}

uint64_t sub_1D79A696C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1D799CC84(a1, v9);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7D28A3C();
  result = sub_1D7D28D1C();
  if (result)
  {
    v5 = result;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    type metadata accessor for RecipeCoordinatorContainer();
    result = sub_1D7D28D1C();
    if (result)
    {
      v6 = result;
      v7 = type metadata accessor for EndOfRecipeViewControllerProvider();
      v8 = swift_allocObject();
      sub_1D799D69C(v9, v8 + 16);
      *(v8 + 56) = v5;
      *(v8 + 64) = v6;
      a2[3] = v7;
      result = sub_1D7996FA4(&qword_1EE0BBEC8, type metadata accessor for EndOfRecipeViewControllerProvider);
      a2[4] = result;
      *a2 = v8;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1D79A6AB0()
{
  if (!qword_1EE0BB120)
  {
    type metadata accessor for WeakRecipeCoordinator();
    v0 = sub_1D7D302AC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE0BB120);
    }
  }
}

void sub_1D79A6B14()
{
  if (!qword_1EE0BAF60)
  {
    sub_1D79A6AB0();
    type metadata accessor for os_unfair_lock_s(255);
    v0 = sub_1D7D314EC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE0BAF60);
    }
  }
}

uint64_t RecipeCoordinatorContainer.init()()
{
  sub_1D79A6B14();
  v1 = swift_allocObject();
  *(v1 + 24) = 0;
  *(v1 + 16) = MEMORY[0x1E69E7CC8];
  *(v0 + 16) = v1;
  return v0;
}

uint64_t EndOfRecipeViewControllerProvider.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_1D79A6C60@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &unk_1EE0BF6A0);
  result = sub_1D7D28D2C();
  if (v10)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1D798C468(0, &unk_1EE0BF590);
    result = sub_1D7D28D2C();
    if (v8)
    {
      v5 = type metadata accessor for CookingKitExternalRecipeHydrator();
      v6 = swift_allocObject();
      sub_1D799D69C(&v9, v6 + 16);
      sub_1D799D69C(&v7, v6 + 56);
      a2[3] = v5;
      result = sub_1D799F6FC(qword_1EE0BC0B0, type metadata accessor for CookingKitExternalRecipeHydrator);
      a2[4] = result;
      *a2 = v6;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_1D79A6DAC()
{
  result = qword_1EE0BEDE0;
  if (!qword_1EE0BEDE0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EE0BEDE0);
  }

  return result;
}

uint64_t sub_1D79A6E34@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &qword_1EE0BB1C8);
  result = sub_1D7D28D2C();
  if (!v15)
  {
    __break(1u);
    goto LABEL_8;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &qword_1EE0CBE60);
  result = sub_1D7D28D2C();
  if (!v12)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v5 = v13;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &unk_1EE0BF6A0);
  result = sub_1D7D28D2C();
  if (!v11)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7D28A3C();
  result = sub_1D7D28D1C();
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v6 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for RecipeCoordinatorContainer();
  result = sub_1D7D28D1C();
  if (result)
  {
    v7 = result;
    v8 = type metadata accessor for SavedRecipeService();
    v9 = swift_allocObject();
    sub_1D799D69C(&v14, (v9 + 2));
    v9[7] = v12;
    v9[8] = v5;
    sub_1D799D69C(&v10, (v9 + 9));
    v9[14] = v6;
    v9[15] = v7;
    a2[3] = v8;
    result = sub_1D799F6FC(qword_1EE0BD898, type metadata accessor for SavedRecipeService);
    a2[4] = result;
    *a2 = v9;
    return result;
  }

LABEL_11:
  __break(1u);
  return result;
}

uint64_t sub_1D79A7078@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &qword_1EE0BF6E0);
  result = sub_1D7D28D2C();
  if (v7)
  {
    v4 = type metadata accessor for CookingKitOfflineStatusProvider();
    v5 = swift_allocObject();
    sub_1D799D69C(&v6, v5 + 16);
    a2[3] = v4;
    result = sub_1D799F6FC(qword_1EE0BC210, type metadata accessor for CookingKitOfflineStatusProvider);
    a2[4] = result;
    *a2 = v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D79A7180@<X0>(uint64_t a1@<X8>)
{
  __swift_project_boxed_opaque_existential_1((*v1 + 16), *(*v1 + 40));
  v3 = sub_1D7D2E4CC();
  if (v3 >= 7)
  {
    result = sub_1D7D3160C();
    __break(1u);
  }

  else
  {
    v4 = **(&unk_1E84EABE0 + v3);
    v5 = sub_1D7D27BFC();
    v6 = *(*(v5 - 8) + 104);

    return v6(a1, v4, v5);
  }

  return result;
}

uint64_t ArticleViewerBlueprintRouteModel.__allocating_init(initialArticleIdentifier:articleIdentifiers:headlines:referringURL:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1D7999010(0, &qword_1EE0CB770, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v40 = &v40 - v12;
  v13 = type metadata accessor for ArticleViewerBlueprint(0);
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v16 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v40 - v19;
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = (&v40 - v23);
  v25 = type metadata accessor for ArticleViewerBlueprintRouteArticle();
  MEMORY[0x1EEE9AC00](v25 - 8, v26);
  v28 = &v40 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29, v30);
  v32 = &v40 - v31;
  sub_1D79A7A24(a4, a1, a2, (&v40 - v31));
  static ArticleViewerBlueprint.create(initialArticleIdentifier:articleIdentifiers:headlines:)(a1, a2, a3, a4, v24);

  sub_1D79A88CC(v32, v28, type metadata accessor for ArticleViewerBlueprintRouteArticle);
  sub_1D79A88CC(v24, v20, type metadata accessor for ArticleViewerBlueprint);
  v33 = type metadata accessor for ArticleViewerBlueprintProvider();
  v34 = swift_allocObject();
  sub_1D79A88CC(v20, v16, type metadata accessor for ArticleViewerBlueprint);
  sub_1D7999010(0, &qword_1EE0C0450, type metadata accessor for ArticleViewerBlueprint, MEMORY[0x1E69D6538]);
  swift_allocObject();
  v35 = sub_1D7D28ECC();
  sub_1D79A89C0(v20, type metadata accessor for ArticleViewerBlueprint);
  *(v34 + 16) = v35;
  v36 = v40;
  sub_1D79A8A20(a5, v40);
  v37 = swift_allocObject();
  v38 = (v37 + OBJC_IVAR____TtC12NewsArticles32ArticleViewerBlueprintRouteModel_articleBlueprintProvider);
  v38[3] = v33;
  v38[4] = &protocol witness table for ArticleViewerBlueprintProvider;
  *v38 = v34;
  sub_1D79A8AB4(a5);
  sub_1D79A89C0(v24, type metadata accessor for ArticleViewerBlueprint);
  sub_1D79A89C0(v32, type metadata accessor for ArticleViewerBlueprintRouteArticle);
  *(v37 + OBJC_IVAR____TtC12NewsArticles32ArticleViewerBlueprintRouteModel_shadowObserver + 8) = 0;
  swift_unknownObjectWeakInit();
  sub_1D79A88CC(v28, v37 + OBJC_IVAR____TtC12NewsArticles32ArticleViewerBlueprintRouteModel_article, type metadata accessor for ArticleViewerBlueprintRouteArticle);
  sub_1D79A8B40(v36, v37 + OBJC_IVAR____TtC12NewsArticles32ArticleViewerBlueprintRouteModel_referringURL);
  *(v37 + OBJC_IVAR____TtC12NewsArticles32ArticleViewerBlueprintRouteModel_shadowObserver + 8) = 0;
  swift_unknownObjectWeakAssign();
  sub_1D79A8C28(v28, v37 + OBJC_IVAR____TtC12NewsArticles32ArticleViewerBlueprintRouteModel_shownArticle, type metadata accessor for ArticleViewerBlueprintRouteArticle);
  return v37;
}

void sub_1D79A76A0()
{
  type metadata accessor for ArticleViewerBlueprint.ArticleItem(319);
  if (v0 <= 0x3F)
  {
    sub_1D79A7924(319, &qword_1EE0BF3C0, type metadata accessor for ArticleViewerBlueprint.ArticleItem, MEMORY[0x1E69E62F8]);
    if (v1 <= 0x3F)
    {
      sub_1D79A7988();
      if (v2 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void sub_1D79A778C()
{
  type metadata accessor for ArticleViewerBlueprint.ArticleItem.Model(319);
  if (v0 <= 0x3F)
  {
    sub_1D79A7880(319, &qword_1EE0BF3C8, &type metadata for ArticleViewerBlueprint.ArticleItem.Traits, MEMORY[0x1E69E62F8]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1D79A7834(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_1D7D3191C();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_1D79A7880(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1D79A78D0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x1E69E6158]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1D79A7924(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1D79A7988()
{
  if (!qword_1EE0BF3B8)
  {
    sub_1D79A7924(255, &qword_1EE0BF3C0, type metadata accessor for ArticleViewerBlueprint.ArticleItem, MEMORY[0x1E69E62F8]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EE0BF3B8);
    }
  }
}

uint64_t sub_1D79A7A24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  if (*(a1 + 16) && (v8 = sub_1D7A18FFC(a2, a3), (v9 & 1) != 0))
  {
    v10 = *(*(a1 + 56) + 8 * v8);
    v11 = [swift_unknownObjectRetain() identifier];
    v12 = sub_1D7D3034C();
    v14 = v13;

    v15 = [swift_unknownObjectRetain() identifier];
    v16 = sub_1D7D3034C();
    v18 = v17;
    swift_unknownObjectRelease();

    *a4 = v12;
    a4[1] = v14;
    a4[2] = v10;
    a4[3] = 0;
    a4[4] = 0;
    a4[5] = 0;
    a4[6] = v16;
    a4[7] = v18;
    type metadata accessor for ArticleViewerBlueprintRouteArticle();

    return swift_storeEnumTagMultiPayload();
  }

  else
  {
    v20 = *(type metadata accessor for AsyncArticle() + 28);
    v21 = sub_1D7D2824C();
    (*(*(v21 - 8) + 56))(a4 + v20, 1, 1, v21);
    *a4 = a2;
    a4[1] = a3;
    a4[2] = a2;
    a4[3] = a3;
    a4[4] = a2;
    a4[5] = a3;
    type metadata accessor for ArticleViewerBlueprintRouteArticle();
    swift_storeEnumTagMultiPayload();
    return swift_bridgeObjectRetain_n();
  }
}

uint64_t static ArticleViewerBlueprint.create(initialArticleIdentifier:articleIdentifiers:headlines:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char **a5@<X8>)
{
  v46 = a4;
  v9 = type metadata accessor for ArticleViewerBlueprint.ArticleItem(0);
  v50 = *(v9 - 8);
  v51 = v9;
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = (&v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = MEMORY[0x1E69E6158];
  sub_1D79A7880(0, &qword_1EE0BE890, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D7D3B4D0;
  *(inited + 32) = a1;
  *(inited + 40) = a2;
  v15 = *(a3 + 16);

  v16 = MEMORY[0x1E69E7CC0];
  v52 = sub_1D79A8020(0, v15 + 1, 0, MEMORY[0x1E69E7CC0]);

  sub_1D79A8198(v17);
  sub_1D79A8490(inited);
  sub_1D79A7880(0, qword_1EE0BF240, v13, MEMORY[0x1E69E62F8]);
  sub_1D79A8584();
  v18 = sub_1D7D3052C();

  v19 = *(v18 + 16);
  if (v19)
  {
    v45 = a5;
    v52 = v16;
    result = sub_1D79A8814(0, v19, 0);
    v21 = *(v18 + 16);
    v22 = v52;
    v23 = v21 - 1;
    v24 = (v18 + 16 * v21 + 24);
    v25 = v46;
    v49 = v18;
    while (v23 != -1)
    {
      if (v23 >= *(v18 + 16))
      {
        goto LABEL_16;
      }

      v26 = *(v24 - 1);
      v27 = *v24;
      v28 = *(v25 + 16);

      if (v28 && (v29 = sub_1D7A18FFC(v26, v27), (v30 & 1) != 0))
      {
        v31 = *(*(v25 + 56) + 8 * v29);
        v32 = [swift_unknownObjectRetain_n() identifier];
        v33 = sub_1D7D3034C();
        v47 = v34;
        v48 = v33;

        v35 = [swift_unknownObjectRetain() identifier];
        v36 = sub_1D7D3034C();
        v38 = v37;
        swift_unknownObjectRelease();

        v39 = v47;
        *v12 = v48;
        v12[1] = v39;
        v12[2] = v31;
        v12[3] = 0;
        v12[4] = 0;
        v12[5] = 0;
        v12[6] = v36;
        v12[7] = v38;
        v25 = v46;
        type metadata accessor for ArticleViewerBlueprint.ArticleItem.Model(0);
        swift_storeEnumTagMultiPayload();

        swift_unknownObjectRelease();
        *(v12 + *(v51 + 20)) = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v40 = *(type metadata accessor for AsyncArticle() + 28);
        v41 = sub_1D7D2824C();
        (*(*(v41 - 8) + 56))(v12 + v40, 1, 1, v41);
        *v12 = v26;
        v12[1] = v27;
        v12[2] = v26;
        v12[3] = v27;
        v12[4] = v26;
        v12[5] = v27;
        type metadata accessor for ArticleViewerBlueprint.ArticleItem.Model(0);
        swift_storeEnumTagMultiPayload();
        *(v12 + *(v51 + 20)) = MEMORY[0x1E69E7CC0];
        swift_bridgeObjectRetain_n();
      }

      v52 = v22;
      v43 = *(v22 + 2);
      v42 = *(v22 + 3);
      if (v43 >= v42 >> 1)
      {
        sub_1D79A8814(v42 > 1, v43 + 1, 1);
        v22 = v52;
      }

      *(v22 + 2) = v43 + 1;
      result = sub_1D79A8864(v12, &v22[((*(v50 + 80) + 32) & ~*(v50 + 80)) + *(v50 + 72) * v43], type metadata accessor for ArticleViewerBlueprint.ArticleItem);
      --v23;
      v24 -= 2;
      --v19;
      v18 = v49;
      if (!v19)
      {

        a5 = v45;
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  else
  {

    v22 = MEMORY[0x1E69E7CC0];
LABEL_14:
    *a5 = v22;
    type metadata accessor for ArticleViewerBlueprint(0);
    return swift_storeEnumTagMultiPayload();
  }

  return result;
}

char *sub_1D79A8020(char *result, int64_t a2, char a3, char *a4)
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
    sub_1D79A8148(0, &qword_1EE0BE890, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
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
    v10 = MEMORY[0x1E69E7CC0];
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_1D79A8148(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_1D79A8198(uint64_t result)
{
  v3 = *(result + 16);
  v4 = *v1;
  v5 = *(*v1 + 2);
  v6 = v5 + v3;
  if (__OFADD__(v5, v3))
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = result;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || (v9 = *(v4 + 3) >> 1, v9 < v6))
  {
    if (v5 <= v6)
    {
      v10 = v5 + v3;
    }

    else
    {
      v10 = v5;
    }

    v4 = sub_1D79A8020(isUniquelyReferenced_nonNull_native, v10, 1, v4);
    v9 = *(v4 + 3) >> 1;
  }

  v11 = *(v4 + 2);
  v12 = v9 - v11;
  result = sub_1D79A83B0(&v29, &v4[16 * v11 + 32], v9 - v11, v7);
  if (result < v3)
  {
    goto LABEL_15;
  }

  if (result)
  {
    v13 = *(v4 + 2);
    v14 = __OFADD__(v13, result);
    v15 = v13 + result;
    if (v14)
    {
      __break(1u);
      goto LABEL_32;
    }

    *(v4 + 2) = v15;
  }

  if (result != v12)
  {
LABEL_13:

    *v1 = v4;
    return result;
  }

LABEL_16:
  if (!v30)
  {
    goto LABEL_13;
  }

  v16 = v30 - 1;
  if (__OFSUB__(v30, 1))
  {
LABEL_34:
    __break(1u);
  }

  else if ((v16 & 0x8000000000000000) == 0)
  {
    v17 = v29;
    if (v16 < *(v29 + 16))
    {
      v18 = *(v4 + 2);
      v19 = v29 + 16 * v16;
      v21 = *(v19 + 32);
      v20 = *(v19 + 40);

      while (1)
      {
LABEL_22:
        v22 = *(v4 + 3);
        v23 = v22 >> 1;
        if ((v22 >> 1) < v18 + 1)
        {
          result = sub_1D79A8020((v22 > 1), v18 + 1, 1, v4);
          v4 = result;
          v23 = *(result + 24) >> 1;
          v24 = v18 - v23;
          if (v18 < v23)
          {
LABEL_24:
            v28 = v23;
            v2 = 0;
            v25 = (v17 + 24 + 16 * v16);
            v27 = v18;
            v26 = &v4[16 * v18 + 40];
            while (1)
            {
              *(v26 - 1) = v21;
              *v26 = v20;
              if (!(v16 + v2))
              {
                break;
              }

              if ((v16 + v2 - 1) >= *(v17 + 16))
              {
                __break(1u);
                goto LABEL_34;
              }

              v21 = *(v25 - 1);
              v20 = *v25;

              --v2;
              v25 -= 2;
              v26 += 16;
              if (v24 == v2)
              {
                v16 += v2;
                v18 = v28;
                *(v4 + 2) = v28;
                goto LABEL_22;
              }
            }

LABEL_32:
            *(v4 + 2) = v27 - v2 + 1;
            goto LABEL_13;
          }
        }

        else
        {
          v24 = v18 - v23;
          if (v18 < v23)
          {
            goto LABEL_24;
          }
        }

        *(v4 + 2) = v18;
      }
    }

    goto LABEL_36;
  }

  __break(1u);
LABEL_36:
  __break(1u);
  return result;
}
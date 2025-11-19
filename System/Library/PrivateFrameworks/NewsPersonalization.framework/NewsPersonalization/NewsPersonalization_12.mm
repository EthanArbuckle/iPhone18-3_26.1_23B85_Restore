uint64_t ComputeServiceScoringService.score(items:context:shadowMode:identifiedBy:)(unint64_t a1, uint64_t a2, int a3)
{
  LODWORD(v75) = a3;
  v74 = a2;
  v6 = sub_1C6D783E0();
  v68 = *(v6 - 8);
  v7 = *(v68 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v67 = &v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6B7A08C();
  v10 = v9;
  v11 = *(v9 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v14 = &v63 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for ArticleScoringWork(0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = &v63 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6C2EF1C();
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v69 = &v63 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v63 - v23;
  MEMORY[0x1EEE9AC00](v25);
  v26 = a1;
  v28 = &v63 - v27;
  if (!(v26 >> 62))
  {
    if (*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

    return sub_1C6B5F1EC(MEMORY[0x1E69E7CC0]);
  }

  v72 = v26;
  v62 = sub_1C6D79E90();
  v26 = v72;
  if (!v62)
  {
    return sub_1C6B5F1EC(MEMORY[0x1E69E7CC0]);
  }

LABEL_3:
  v63 = v6;
  v64 = v11;
  v65 = v10;
  v66 = v24;
  v72 = v26;
  v73 = v14;
  v29 = *(v3 + OBJC_IVAR____TtC19NewsPersonalization28ComputeServiceScoringService_computeService);
  v70 = v4;
  v71 = v29;
  v30 = v3 + OBJC_IVAR____TtC19NewsPersonalization28ComputeServiceScoringService_articleFeaturesFactory;
  v31 = *(v3 + OBJC_IVAR____TtC19NewsPersonalization28ComputeServiceScoringService_isSubscribed);
  v32 = *(v3 + OBJC_IVAR____TtC19NewsPersonalization28ComputeServiceScoringService_paidAccessChecker);
  v33 = v3 + OBJC_IVAR____TtC19NewsPersonalization28ComputeServiceScoringService_userEmbeddingProvider;
  v34 = type metadata accessor for ArticleScoringWork.Context(0);
  v35 = *(v34 - 8);
  (*(v35 + 56))(v28, 1, 1, v34);
  v36 = sub_1C6D75F70();
  MEMORY[0x1EEE9AC00](v36);
  v37 = v74;
  *(&v63 - 10) = v30;
  *(&v63 - 9) = v37;
  *(&v63 - 64) = v31;
  *(&v63 - 7) = v32;
  *(&v63 - 48) = v75 & 1;
  *(&v63 - 5) = v72;
  *(&v63 - 4) = v33;
  *(&v63 - 3) = v28;
  *(&v63 - 2) = v18;
  v38 = v70;
  sub_1C6D784F0();
  if (!v38)
  {
    v39 = v66;
    sub_1C6C2F010(v28, v66);
    v40 = *(v35 + 48);
    result = v40(v39, 1, v34);
    if (result == 1)
    {
      __break(1u);
    }

    else
    {
      v42 = v69;
      sub_1C6C2F010(v28, v69);
      result = v40(v42, 1, v34);
      if (result != 1)
      {
        v43 = (v42 + *(v34 + 20));
        v44 = *v43;
        v45 = v43[1];

        sub_1C6C2EFB0(v42, type metadata accessor for ArticleScoringWork.Context);
        v46 = v67;
        sub_1C6D783C0();
        sub_1C6BB320C();
        v47 = v65;
        v48 = sub_1C6D786D0();
        (*(v68 + 8))(v46, v63);
        v49 = *(v48 + 16);
        if (v49)
        {
          v75 = v28;
          v77 = MEMORY[0x1E69E7CC0];
          sub_1C6B39260(0, v49, 0);
          v50 = v77;
          v51 = v77[2];
          v52 = 32;
          do
          {
            v53 = *(v48 + v52);
            v77 = v50;
            v54 = v50[3];
            if (v51 >= v54 >> 1)
            {
              sub_1C6B39260((v54 > 1), v51 + 1, 1);
              v50 = v77;
            }

            v50[2] = v51 + 1;
            *&v50[v51 + 4] = v53;
            v52 += 4;
            ++v51;
            --v49;
          }

          while (v49);

          v47 = v65;
          v28 = v75;
        }

        else
        {

          v50 = MEMORY[0x1E69E7CC0];
        }

        v55 = v66;
        v56 = sub_1C6C2B998(v66, v50);
        v57 = v64;
        v61 = v56;

        (*(v57 + 8))(v73, v47);
        sub_1C6C2EFB0(v55, type metadata accessor for ArticleScoringWork.Context);
        sub_1C6C2EFB0(v18, type metadata accessor for ArticleScoringWork);
        sub_1C6C2EFB0(v28, sub_1C6C2EF1C);
        return v61;
      }
    }

    __break(1u);
    return result;
  }

  sub_1C6C2EFB0(v18, type metadata accessor for ArticleScoringWork);
  sub_1C6C2EFB0(v28, sub_1C6C2EF1C);
  if (qword_1EDCEA920 != -1)
  {
    swift_once();
  }

  sub_1C6D79AB0();
  sub_1C6B1D314();
  v58 = swift_allocObject();
  *(v58 + 16) = xmmword_1C6D7E630;
  v77 = 0;
  v78 = 0xE000000000000000;
  v76 = v38;
  sub_1C6B10A98(0, &qword_1EDCEA410);
  sub_1C6D79E60();
  v59 = v77;
  v60 = v78;
  *(v58 + 56) = MEMORY[0x1E69E6158];
  *(v58 + 64) = sub_1C6B2064C();
  *(v58 + 32) = v59;
  *(v58 + 40) = v60;
  sub_1C6D78D30();

  return swift_willThrow();
}

id ComputeServiceScoringService.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ComputeServiceScoringService.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id FCNewsTabiFeedPersonalizationConfiguration.articleFeaturesFactoryConfiguration.getter@<X0>(void *a1@<X8>)
{
  v3 = [v1 fullBodyEmbeddingDimension];
  result = [v1 titleEmbeddingDimension];
  *a1 = v3;
  a1[1] = result;
  return result;
}

uint64_t UserEmbeddingProviderType.feature.getter@<X0>(uint64_t a1@<X1>, void *a2@<X8>)
{
  (*(a1 + 8))(&v12);
  v3 = v12;
  if (v12)
  {
    v4 = v13;
    sub_1C6C2F074();
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1C6D7E630;
    *(inited + 32) = v4;

    sub_1C6B38474(inited);

    *a2 = v3;
    v6 = *MEMORY[0x1E6996138];
    v7 = sub_1C6D78760();
    v8 = *(v7 - 8);
    (*(v8 + 104))(a2, v6, v7);
    return (*(v8 + 56))(a2, 0, 1, v7);
  }

  else
  {
    v10 = sub_1C6D78760();
    v11 = *(*(v10 - 8) + 56);

    return v11(a2, 1, 1, v10);
  }
}

void sub_1C6C2EF1C()
{
  if (!qword_1EDCE7460)
  {
    type metadata accessor for ArticleScoringWork.Context(255);
    v0 = sub_1C6D79C00();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDCE7460);
    }
  }
}

uint64_t sub_1C6C2EFB0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1C6C2F010(uint64_t a1, uint64_t a2)
{
  sub_1C6C2EF1C();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1C6C2F074()
{
  if (!qword_1EDCE7CF0)
  {
    v0 = sub_1C6D7A0F0();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDCE7CF0);
    }
  }
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackVisited.metadata.getter@<X0>(uint64_t a1@<X8>)
{
  sub_1C6B3FCC8(0, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata, MEMORY[0x1E69E6720]);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v13 - v5;
  v7 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackVisited();
  sub_1C6B3E190(v1 + *(v7 + 24), v6);
  v8 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_1C6B3E2B0(v6, a1);
  }

  v10 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.OneOf_Metadata(0);
  (*(*(v10 - 8) + 56))(a1, 1, 1, v10);
  v11 = a1 + *(v8 + 20);
  sub_1C6D78A30();
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_1C6B3E224(v6);
  }

  return result;
}

uint64_t type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackVisited()
{
  result = qword_1EDCE34E0;
  if (!qword_1EDCE34E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackVisited.init()@<X0>(char *a1@<X8>)
{
  *a1 = 0;
  v2 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackVisited();
  v3 = &a1[*(v2 + 20)];
  sub_1C6D78A30();
  v4 = *(v2 + 24);
  v5 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0);
  v6 = *(*(v5 - 8) + 56);

  return v6(&a1[v4], 1, 1, v5);
}

uint64_t sub_1C6C2F3C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1C6B3FCC8(0, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata, MEMORY[0x1E69E6720]);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v14 - v6;
  v8 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackVisited();
  sub_1C6B3E190(a1 + *(v8 + 24), v7);
  v9 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v7, 1, v9) != 1)
  {
    return sub_1C6B3E2B0(v7, a2);
  }

  v11 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.OneOf_Metadata(0);
  (*(*(v11 - 8) + 56))(a2, 1, 1, v11);
  v12 = a2 + *(v9 + 20);
  sub_1C6D78A30();
  result = (v10)(v7, 1, v9);
  if (result != 1)
  {
    return sub_1C6B3E224(v7);
  }

  return result;
}

uint64_t sub_1C6C2F54C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6B3E660(a1, v8);
  v9 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackVisited() + 24);
  sub_1C6B3E224(a2 + v9);
  sub_1C6B3E2B0(v8, a2 + v9);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackVisited.metadata.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackVisited() + 24);
  sub_1C6B3E224(v1 + v3);
  sub_1C6B3E2B0(a1, v1 + v3);
  v4 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackVisited.metadata.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  sub_1C6B3FCC8(0, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata, MEMORY[0x1E69E6720]);
  v7 = *(*(v6 - 8) + 64);
  if (v3)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  v9 = v8;
  v5[1] = v8;
  v10 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0);
  v5[2] = v10;
  v11 = *(v10 - 8);
  v12 = v11;
  v5[3] = v11;
  v13 = *(v11 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v14 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v11 + 64));
    v14 = malloc(v13);
  }

  v15 = v14;
  v5[5] = v14;
  v16 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackVisited() + 24);
  *(v5 + 12) = v16;
  sub_1C6B3E190(v1 + v16, v9);
  v17 = *(v12 + 48);
  if (v17(v9, 1, v10) == 1)
  {
    v18 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.OneOf_Metadata(0);
    (*(*(v18 - 8) + 56))(v15, 1, 1, v18);
    v19 = v15 + *(v10 + 20);
    sub_1C6D78A30();
    if (v17(v9, 1, v10) != 1)
    {
      sub_1C6B3E224(v9);
    }
  }

  else
  {
    sub_1C6B3E2B0(v9, v15);
  }

  return sub_1C6B3E554;
}

BOOL Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackVisited.hasMetadata.getter()
{
  sub_1C6B3FCC8(0, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata, MEMORY[0x1E69E6720]);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v9 - v3;
  v5 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackVisited();
  sub_1C6B3E190(v0 + *(v5 + 24), v4);
  v6 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0);
  v7 = (*(*(v6 - 8) + 48))(v4, 1, v6) != 1;
  sub_1C6B3E224(v4);
  return v7;
}

Swift::Void __swiftcall Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackVisited.clearMetadata()()
{
  v1 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackVisited() + 24);
  sub_1C6B3E224(v0 + v1);
  v2 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0);
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackVisited.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackVisited() + 20);
  v4 = sub_1C6D78A40();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackVisited.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackVisited() + 20);
  v4 = sub_1C6D78A40();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t sub_1C6C2FBEC()
{
  v0 = sub_1C6D78D20();
  __swift_allocate_value_buffer(v0, qword_1EC1D8138);
  __swift_project_value_buffer(v0, qword_1EC1D8138);
  sub_1C6B3FCC8(0, &qword_1EDCDF400, sub_1C6B3FD2C, MEMORY[0x1E69E6F90]);
  sub_1C6B3FD2C();
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1C6D7EB10;
  v6 = (v5 + v4);
  v7 = v5 + v4 + *(v2 + 56);
  *v6 = 1;
  *v7 = "article_id";
  *(v7 + 8) = 10;
  *(v7 + 16) = 2;
  v8 = *MEMORY[0x1E69AADE8];
  v9 = sub_1C6D78D00();
  v10 = *(*(v9 - 8) + 104);
  (v10)(v7, v8, v9);
  v11 = v6 + v3 + *(v2 + 56);
  *(v6 + v3) = 2;
  *v11 = "metadata";
  *(v11 + 1) = 8;
  v11[16] = 2;
  v12 = *MEMORY[0x1E69AADC8];
  v10();
  return sub_1C6D78D10();
}

uint64_t static Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackVisited._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC1D5A20 != -1)
  {
    swift_once();
  }

  v2 = sub_1C6D78D20();
  v3 = __swift_project_value_buffer(v2, qword_1EC1D8138);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackVisited.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_1C6D78AD0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_1C6D78B50();
    }

    else if (result == 2)
    {
      sub_1C6C2FF0C();
    }
  }

  return result;
}

uint64_t sub_1C6C2FF0C()
{
  v0 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackVisited() + 24);
  type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0);
  sub_1C6C309B8(qword_1EDCE2E40, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
  return sub_1C6D78BB0();
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackVisited.traverse<A>(visitor:)()
{
  if (!*v0 || (result = sub_1C6D78CA0(), !v1))
  {
    result = sub_1C6C3005C(v0);
    if (!v1)
    {
      v3 = v0 + *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackVisited() + 20);
      return sub_1C6D78A20();
    }
  }

  return result;
}

uint64_t sub_1C6C3005C(uint64_t a1)
{
  sub_1C6B3FCC8(0, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata, MEMORY[0x1E69E6720]);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = v13 - v4;
  v6 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackVisited();
  sub_1C6B3E190(a1 + *(v11 + 24), v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    return sub_1C6B3E224(v5);
  }

  sub_1C6B3E2B0(v5, v10);
  sub_1C6C309B8(qword_1EDCE2E40, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
  sub_1C6D78CF0();
  return sub_1C6B3E6C4(v10, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackVisited.hashValue.getter()
{
  sub_1C6D7A260();
  type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackVisited();
  sub_1C6C309B8(&qword_1EC1D8150, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackVisited);
  sub_1C6D79510();
  return sub_1C6D7A2B0();
}

uint64_t sub_1C6C30338(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6C309B8(&qword_1EC1D8168, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackVisited);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C6C303B4@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC1D5A20 != -1)
  {
    swift_once();
  }

  v2 = sub_1C6D78D20();
  v3 = __swift_project_value_buffer(v2, qword_1EC1D8138);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1C6C3045C(uint64_t a1)
{
  v2 = sub_1C6C309B8(&qword_1EC1D7668, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackVisited);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C6C304C8()
{
  sub_1C6C309B8(&qword_1EC1D7668, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackVisited);

  return sub_1C6D78C20();
}

uint64_t _s19NewsPersonalization010Com_Apple_a1_B42Storage_CompressedSessionEventTrackVisitedV2eeoiySbAC_ACtFZ_0(_DWORD *a1, _DWORD *a2)
{
  v4 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6B3FCC8(0, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata, MEMORY[0x1E69E6720]);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v26 - v11;
  sub_1C6B3FB88();
  v14 = v13;
  v15 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1 != *a2)
  {
    goto LABEL_8;
  }

  v18 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackVisited();
  v19 = *(v18 + 24);
  v20 = *(v14 + 48);
  sub_1C6B3E190(a1 + v19, v17);
  sub_1C6B3E190(a2 + v19, &v17[v20]);
  v21 = *(v5 + 48);
  if (v21(v17, 1, v4) == 1)
  {
    if (v21(&v17[v20], 1, v4) == 1)
    {
      sub_1C6B3E224(v17);
LABEL_11:
      v25 = *(v18 + 20);
      sub_1C6D78A40();
      sub_1C6C309B8(&qword_1EC1D6AF0, MEMORY[0x1E69AAC08]);
      v22 = sub_1C6D79560();
      return v22 & 1;
    }

    goto LABEL_7;
  }

  sub_1C6B3E190(v17, v12);
  if (v21(&v17[v20], 1, v4) == 1)
  {
    sub_1C6B3E6C4(v12, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
LABEL_7:
    sub_1C6B3E6C4(v17, sub_1C6B3FB88);
    goto LABEL_8;
  }

  sub_1C6B3E2B0(&v17[v20], v8);
  v24 = static Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.== infix(_:_:)(v12, v8);
  sub_1C6B3E6C4(v8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
  sub_1C6B3E6C4(v12, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
  sub_1C6B3E224(v17);
  if (v24)
  {
    goto LABEL_11;
  }

LABEL_8:
  v22 = 0;
  return v22 & 1;
}

uint64_t sub_1C6C309B8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEventNotificationVended.init()@<X0>(char *a1@<X8>)
{
  *a1 = 0;
  v2 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventNotificationVended();
  v3 = &a1[*(v2 + 20)];
  sub_1C6D78A30();
  v4 = *(v2 + 24);
  v5 = sub_1C6D789A0();
  v6 = *(*(v5 - 8) + 56);

  return v6(&a1[v4], 1, 1, v5);
}

uint64_t type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventNotificationVended()
{
  result = qword_1EDCE2C38;
  if (!qword_1EDCE2C38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEventNotificationVended.vendedAt.getter@<X0>(uint64_t a1@<X8>)
{
  sub_1C6C3240C(0, &qword_1EDCE66F0, MEMORY[0x1E69AA900], MEMORY[0x1E69E6720]);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v12 - v5;
  v7 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventNotificationVended();
  sub_1C6B823A4(v1 + *(v7 + 24), v6);
  v8 = sub_1C6D789A0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 48);
  if (v10(v6, 1, v8) != 1)
  {
    return (*(v9 + 32))(a1, v6, v8);
  }

  sub_1C6D78990();
  result = (v10)(v6, 1, v8);
  if (result != 1)
  {
    return sub_1C6B82438(v6);
  }

  return result;
}

uint64_t sub_1C6C30C74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1C6C3240C(0, &qword_1EDCE66F0, MEMORY[0x1E69AA900], MEMORY[0x1E69E6720]);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v13 - v6;
  v8 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventNotificationVended();
  sub_1C6B823A4(a1 + *(v8 + 24), v7);
  v9 = sub_1C6D789A0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 48);
  if (v11(v7, 1, v9) != 1)
  {
    return (*(v10 + 32))(a2, v7, v9);
  }

  sub_1C6D78990();
  result = (v11)(v7, 1, v9);
  if (result != 1)
  {
    return sub_1C6B82438(v7);
  }

  return result;
}

uint64_t sub_1C6C30DE0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6D789A0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v9, a1, v4, v7);
  v10 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventNotificationVended() + 24);
  sub_1C6B82438(a2 + v10);
  (*(v5 + 32))(a2 + v10, v9, v4);
  return (*(v5 + 56))(a2 + v10, 0, 1, v4);
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEventNotificationVended.vendedAt.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventNotificationVended() + 24);
  sub_1C6B82438(v1 + v3);
  v4 = sub_1C6D789A0();
  v7 = *(v4 - 8);
  (*(v7 + 32))(v1 + v3, a1, v4);
  v5 = *(v7 + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*Com_Apple_News_PersonalizationStorage_CompressedSessionEventNotificationVended.vendedAt.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  sub_1C6C3240C(0, &qword_1EDCE66F0, MEMORY[0x1E69AA900], MEMORY[0x1E69E6720]);
  v7 = *(*(v6 - 8) + 64);
  if (v3)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  v9 = v8;
  v5[1] = v8;
  v10 = sub_1C6D789A0();
  v5[2] = v10;
  v11 = *(v10 - 8);
  v12 = v11;
  v5[3] = v11;
  v13 = *(v11 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v14 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v11 + 64));
    v14 = malloc(v13);
  }

  v15 = v14;
  v5[5] = v14;
  v16 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventNotificationVended() + 24);
  *(v5 + 12) = v16;
  sub_1C6B823A4(v1 + v16, v9);
  v17 = *(v12 + 48);
  if (v17(v9, 1, v10) == 1)
  {
    sub_1C6D78990();
    if (v17(v9, 1, v10) != 1)
    {
      sub_1C6B82438(v9);
    }
  }

  else
  {
    (*(v12 + 32))(v15, v9, v10);
  }

  return sub_1C6B83274;
}

BOOL Com_Apple_News_PersonalizationStorage_CompressedSessionEventNotificationVended.hasVendedAt.getter()
{
  sub_1C6C3240C(0, &qword_1EDCE66F0, MEMORY[0x1E69AA900], MEMORY[0x1E69E6720]);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v9 - v3;
  v5 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventNotificationVended();
  sub_1C6B823A4(v0 + *(v5 + 24), v4);
  v6 = sub_1C6D789A0();
  v7 = (*(*(v6 - 8) + 48))(v4, 1, v6) != 1;
  sub_1C6B82438(v4);
  return v7;
}

Swift::Void __swiftcall Com_Apple_News_PersonalizationStorage_CompressedSessionEventNotificationVended.clearVendedAt()()
{
  v1 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventNotificationVended() + 24);
  sub_1C6B82438(v0 + v1);
  v2 = sub_1C6D789A0();
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEventNotificationVended.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventNotificationVended() + 20);
  v4 = sub_1C6D78A40();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEventNotificationVended.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventNotificationVended() + 20);
  v4 = sub_1C6D78A40();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t sub_1C6C314AC()
{
  v0 = sub_1C6D78D20();
  __swift_allocate_value_buffer(v0, qword_1EC1D8170);
  __swift_project_value_buffer(v0, qword_1EC1D8170);
  sub_1C6C3240C(0, &qword_1EDCDF400, sub_1C6B3FD2C, MEMORY[0x1E69E6F90]);
  sub_1C6B3FD2C();
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1C6D7EB10;
  v6 = (v5 + v4);
  v7 = v5 + v4 + *(v2 + 56);
  *v6 = 1;
  *v7 = "article_id";
  *(v7 + 8) = 10;
  *(v7 + 16) = 2;
  v8 = *MEMORY[0x1E69AADE8];
  v9 = sub_1C6D78D00();
  v10 = *(*(v9 - 8) + 104);
  (v10)(v7, v8, v9);
  v11 = v6 + v3 + *(v2 + 56);
  *(v6 + v3) = 2;
  *v11 = "vended_at";
  *(v11 + 1) = 9;
  v11[16] = 2;
  v10();
  return sub_1C6D78D10();
}

uint64_t static Com_Apple_News_PersonalizationStorage_CompressedSessionEventNotificationVended._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC1D5A28 != -1)
  {
    swift_once();
  }

  v2 = sub_1C6D78D20();
  v3 = __swift_project_value_buffer(v2, qword_1EC1D8170);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEventNotificationVended.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_1C6D78AD0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_1C6D78B50();
    }

    else if (result == 2)
    {
      sub_1C6C317C4();
    }
  }

  return result;
}

uint64_t sub_1C6C317C4()
{
  v0 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventNotificationVended() + 24);
  sub_1C6D789A0();
  sub_1C6C32470(&unk_1EDCDFD10, MEMORY[0x1E69AA900]);
  return sub_1C6D78BB0();
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEventNotificationVended.traverse<A>(visitor:)()
{
  if (!*v0 || (result = sub_1C6D78CA0(), !v1))
  {
    result = sub_1C6C31914(v0);
    if (!v1)
    {
      v3 = v0 + *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventNotificationVended() + 20);
      return sub_1C6D78A20();
    }
  }

  return result;
}

uint64_t sub_1C6C31914(uint64_t a1)
{
  sub_1C6C3240C(0, &qword_1EDCE66F0, MEMORY[0x1E69AA900], MEMORY[0x1E69E6720]);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = v13 - v4;
  v6 = sub_1C6D789A0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventNotificationVended();
  sub_1C6B823A4(a1 + *(v11 + 24), v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    return sub_1C6B82438(v5);
  }

  (*(v7 + 32))(v10, v5, v6);
  sub_1C6C32470(&unk_1EDCDFD10, MEMORY[0x1E69AA900]);
  sub_1C6D78CF0();
  return (*(v7 + 8))(v10, v6);
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEventNotificationVended.hashValue.getter()
{
  sub_1C6D7A260();
  type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventNotificationVended();
  sub_1C6C32470(&qword_1EC1D8188, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventNotificationVended);
  sub_1C6D79510();
  return sub_1C6D7A2B0();
}

uint64_t sub_1C6C31BB8@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  *a2 = 0;
  v4 = &a2[*(a1 + 20)];
  sub_1C6D78A30();
  v5 = *(a1 + 24);
  v6 = sub_1C6D789A0();
  v7 = *(*(v6 - 8) + 56);

  return v7(&a2[v5], 1, 1, v6);
}

uint64_t sub_1C6C31C88(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6C32470(&qword_1EC1D81A0, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventNotificationVended);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C6C31D04@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC1D5A28 != -1)
  {
    swift_once();
  }

  v2 = sub_1C6D78D20();
  v3 = __swift_project_value_buffer(v2, qword_1EC1D8170);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1C6C31DAC(uint64_t a1)
{
  v2 = sub_1C6C32470(&qword_1EC1D7698, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventNotificationVended);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C6C31E18()
{
  sub_1C6C32470(&qword_1EC1D7698, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventNotificationVended);

  return sub_1C6D78C20();
}

uint64_t _s19NewsPersonalization010Com_Apple_a1_B48Storage_CompressedSessionEventNotificationVendedV2eeoiySbAC_ACtFZ_0(_DWORD *a1, _DWORD *a2)
{
  v4 = sub_1C6D789A0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6C3240C(0, &qword_1EDCE66F0, MEMORY[0x1E69AA900], MEMORY[0x1E69E6720]);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v26 - v11;
  sub_1C6B85620();
  v14 = v13;
  v15 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1 != *a2)
  {
    goto LABEL_8;
  }

  v27 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventNotificationVended();
  v18 = *(v27 + 24);
  v19 = *(v14 + 48);
  sub_1C6B823A4(a1 + v18, v17);
  sub_1C6B823A4(a2 + v18, &v17[v19]);
  v20 = *(v5 + 48);
  if (v20(v17, 1, v4) == 1)
  {
    if (v20(&v17[v19], 1, v4) == 1)
    {
      sub_1C6B82438(v17);
LABEL_11:
      v25 = *(v27 + 20);
      sub_1C6D78A40();
      sub_1C6C32470(&qword_1EC1D6AF0, MEMORY[0x1E69AAC08]);
      v21 = sub_1C6D79560();
      return v21 & 1;
    }

    goto LABEL_7;
  }

  sub_1C6B823A4(v17, v12);
  if (v20(&v17[v19], 1, v4) == 1)
  {
    (*(v5 + 8))(v12, v4);
LABEL_7:
    sub_1C6B856B4(v17);
    goto LABEL_8;
  }

  (*(v5 + 32))(v8, &v17[v19], v4);
  sub_1C6C32470(&qword_1EC1D6C58, MEMORY[0x1E69AA900]);
  v23 = sub_1C6D79560();
  v24 = *(v5 + 8);
  v24(v8, v4);
  v24(v12, v4);
  sub_1C6B82438(v17);
  if (v23)
  {
    goto LABEL_11;
  }

LABEL_8:
  v21 = 0;
  return v21 & 1;
}

void sub_1C6C32348()
{
  sub_1C6D78A40();
  if (v0 <= 0x3F)
  {
    sub_1C6C3240C(319, &qword_1EDCE66F0, MEMORY[0x1E69AA900], MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1C6C3240C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1C6C32470(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t Com_Apple_News_Personalization_SessionEventTagUnfollowed.tagID.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t Com_Apple_News_Personalization_SessionEventTagUnfollowed.tagID.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t Com_Apple_News_Personalization_SessionEventTagUnfollowed.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Com_Apple_News_Personalization_SessionEventTagUnfollowed() + 20);
  v4 = sub_1C6D78A40();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for Com_Apple_News_Personalization_SessionEventTagUnfollowed()
{
  result = qword_1EDCE4648;
  if (!qword_1EDCE4648)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Com_Apple_News_Personalization_SessionEventTagUnfollowed.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_News_Personalization_SessionEventTagUnfollowed() + 20);
  v4 = sub_1C6D78A40();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t Com_Apple_News_Personalization_SessionEventTagUnfollowed.init()@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0xE000000000000000;
  v1 = a1 + *(type metadata accessor for Com_Apple_News_Personalization_SessionEventTagUnfollowed() + 20);
  return sub_1C6D78A30();
}

uint64_t sub_1C6C32724()
{
  v0 = sub_1C6D78D20();
  __swift_allocate_value_buffer(v0, qword_1EC1D81A8);
  __swift_project_value_buffer(v0, qword_1EC1D81A8);
  sub_1C6B4A290();
  sub_1C6B3FD2C();
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1C6D7E630;
  v6 = v5 + v4 + *(v2 + 56);
  *(v5 + v4) = 1;
  *v6 = "tag_id";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1C6D78D00();
  (*(*(v8 - 8) + 104))(v6, v7, v8);
  return sub_1C6D78D10();
}

uint64_t static Com_Apple_News_Personalization_SessionEventTagUnfollowed._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC1D5A30 != -1)
  {
    swift_once();
  }

  v2 = sub_1C6D78D20();
  v3 = __swift_project_value_buffer(v2, qword_1EC1D81A8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t Com_Apple_News_Personalization_SessionEventTagUnfollowed.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_1C6D78AD0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_1C6D78B80();
    }
  }

  return result;
}

uint64_t Com_Apple_News_Personalization_SessionEventTagUnfollowed.traverse<A>(visitor:)()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v4 = *v0 & 0xFFFFFFFFFFFFLL;
  }

  if (!v4 || (result = sub_1C6D78CC0(), !v1))
  {
    v6 = v0 + *(type metadata accessor for Com_Apple_News_Personalization_SessionEventTagUnfollowed() + 20);
    return sub_1C6D78A20();
  }

  return result;
}

uint64_t static Com_Apple_News_Personalization_SessionEventTagUnfollowed.== infix(_:_:)(void *a1, void *a2)
{
  v2 = *a1 == *a2 && a1[1] == a2[1];
  if (!v2 && (sub_1C6D7A130() & 1) == 0)
  {
    return 0;
  }

  v3 = *(type metadata accessor for Com_Apple_News_Personalization_SessionEventTagUnfollowed() + 20);
  sub_1C6D78A40();
  sub_1C6C32FC8(&qword_1EC1D6AF0, MEMORY[0x1E69AAC08]);
  return sub_1C6D79560() & 1;
}

uint64_t Com_Apple_News_Personalization_SessionEventTagUnfollowed.hashValue.getter()
{
  sub_1C6D7A260();
  type metadata accessor for Com_Apple_News_Personalization_SessionEventTagUnfollowed();
  sub_1C6C32FC8(&qword_1EC1D81C0, type metadata accessor for Com_Apple_News_Personalization_SessionEventTagUnfollowed);
  sub_1C6D79510();
  return sub_1C6D7A2B0();
}

uint64_t sub_1C6C32BB8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6C32FC8(&qword_1EC1D81E0, type metadata accessor for Com_Apple_News_Personalization_SessionEventTagUnfollowed);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C6C32C34@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC1D5A30 != -1)
  {
    swift_once();
  }

  v2 = sub_1C6D78D20();
  v3 = __swift_project_value_buffer(v2, qword_1EC1D81A8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1C6C32CDC(uint64_t a1)
{
  v2 = sub_1C6C32FC8(&qword_1EC1D81D0, type metadata accessor for Com_Apple_News_Personalization_SessionEventTagUnfollowed);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C6C32D48()
{
  sub_1C6C32FC8(&qword_1EC1D81D0, type metadata accessor for Com_Apple_News_Personalization_SessionEventTagUnfollowed);

  return sub_1C6D78C20();
}

uint64_t sub_1C6C32EE4(void *a1, void *a2, uint64_t a3)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_1C6D7A130() & 1) == 0)
  {
    return 0;
  }

  v5 = *(a3 + 20);
  sub_1C6D78A40();
  sub_1C6C32FC8(&qword_1EC1D6AF0, MEMORY[0x1E69AAC08]);
  return sub_1C6D79560() & 1;
}

uint64_t sub_1C6C32FC8(unint64_t *a1, void (*a2)(uint64_t))
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

char *sub_1C6C33010(char *result, char *a2, char *a3, uint64_t a4, uint64_t *a5)
{
  v12[2] = a3;
  v6 = v5;
  v12[0] = result;
  v12[1] = a2;
  v7 = *(a4 + 16);
  if (v7)
  {
    for (i = (a4 + 40); ; i += 2)
    {
      v10 = *(i - 1);
      v11 = *i;

      sub_1C6C34C90(v12, v10, v11, a5);
      if (v6)
      {
        break;
      }

      if (!--v7)
      {
        return v12[0];
      }
    }
  }

  return result;
}

char *sub_1C6C330C8(char *result, char *a2, uint64_t a3, uint64_t *a4)
{
  v11[1] = a2;
  v5 = v4;
  v11[0] = result;
  v6 = *(a3 + 16);
  if (v6)
  {
    for (i = (a3 + 40); ; i += 2)
    {
      v9 = *(i - 1);
      v10 = *i;

      sub_1C6C34FE8(v11, v9, v10, a4);
      if (v5)
      {
        break;
      }

      if (!--v6)
      {
        return v11[0];
      }
    }
  }

  return result;
}

uint64_t sub_1C6C33174(uint64_t result, char a2, void *a3)
{
  v3 = *(result + 16);
  if (!v3)
  {
    return result;
  }

  for (i = (result + 48); ; i += 3)
  {
    v7 = *(i - 2);
    v6 = *(i - 1);
    v8 = *i;

    v9 = v8;
    v10 = [v9 cohortWithPreferredType_];
    if (v10)
    {
      break;
    }

LABEL_4:

    if (!--v3)
    {
      return result;
    }
  }

  v11 = v10;
  v33 = v9;

  v12 = *a3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = a3;
  v15 = *a3;
  v16 = v7;
  v17 = sub_1C6B5DEA8(v7, v6);
  v19 = v15[2];
  v20 = (v18 & 1) == 0;
  v21 = __OFADD__(v19, v20);
  v22 = v19 + v20;
  if (!v21)
  {
    v23 = v18;
    if (v15[3] >= v22)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v28 = v17;
        sub_1C6B736AC();
        v17 = v28;
        v25 = v15;
        if (v23)
        {
          goto LABEL_12;
        }

        goto LABEL_14;
      }
    }

    else
    {
      sub_1C6B6FCB4(v22, isUniquelyReferenced_nonNull_native);
      v17 = sub_1C6B5DEA8(v16, v6);
      if ((v23 & 1) != (v24 & 1))
      {
        goto LABEL_20;
      }
    }

    v25 = v15;
    if (v23)
    {
LABEL_12:
      v26 = v25[7];
      v27 = *(v26 + 8 * v17);
      *(v26 + 8 * v17) = v11;

LABEL_16:
      a3 = v14;
      *v14 = v25;

      goto LABEL_4;
    }

LABEL_14:
    v25[(v17 >> 6) + 8] |= 1 << v17;
    v29 = (v25[6] + 16 * v17);
    *v29 = v16;
    v29[1] = v6;
    *(v25[7] + 8 * v17) = v11;
    v30 = v25[2];
    v21 = __OFADD__(v30, 1);
    v31 = v30 + 1;
    if (v21)
    {
      goto LABEL_19;
    }

    v25[2] = v31;
    goto LABEL_16;
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  result = sub_1C6D7A1C0();
  __break(1u);
  return result;
}

uint64_t sub_1C6C33364(uint64_t result, void *a2)
{
  v2 = *(result + 16);
  if (!v2)
  {
    return result;
  }

  for (i = (result + 48); ; i += 3)
  {
    v8 = *(i - 2);
    v7 = *(i - 1);
    v9 = *i;

    v10 = *a2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *a2;
    v26 = *a2;
    *a2 = 0x8000000000000000;
    v13 = sub_1C6B5DEA8(v8, v7);
    v15 = v12[2];
    v16 = (v14 & 1) == 0;
    v17 = __OFADD__(v15, v16);
    v18 = v15 + v16;
    if (v17)
    {
      break;
    }

    v19 = v14;
    if (v12[3] < v18)
    {
      sub_1C6B6FC98(v18, isUniquelyReferenced_nonNull_native);
      v13 = sub_1C6B5DEA8(v8, v7);
      if ((v19 & 1) != (v20 & 1))
      {
        goto LABEL_18;
      }

LABEL_10:
      v21 = v26;
      if (v19)
      {
        goto LABEL_3;
      }

      goto LABEL_11;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_10;
    }

    v25 = v13;
    sub_1C6B73690();
    v13 = v25;
    v21 = v26;
    if (v19)
    {
LABEL_3:
      v5 = v21[7];
      v6 = *(v5 + 8 * v13);
      *(v5 + 8 * v13) = v9;

      goto LABEL_4;
    }

LABEL_11:
    v21[(v13 >> 6) + 8] |= 1 << v13;
    v22 = (v21[6] + 16 * v13);
    *v22 = v8;
    v22[1] = v7;
    *(v21[7] + 8 * v13) = v9;
    v23 = v21[2];
    v17 = __OFADD__(v23, 1);
    v24 = v23 + 1;
    if (v17)
    {
      goto LABEL_17;
    }

    v21[2] = v24;

LABEL_4:
    *a2 = v21;

    if (!--v2)
    {
      return result;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  result = sub_1C6D7A1C0();
  __break(1u);
  return result;
}

uint64_t sub_1C6C33510@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, int a5@<W4>, float a6@<W5>, uint64_t a7@<X8>)
{
  v168 = a6;
  v167 = a5;
  v165 = a3;
  v164 = a1;
  sub_1C6C35754();
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8);
  v166 = &v140 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v160 = &v140 - v14;
  v161 = sub_1C6D75F50();
  v15 = *(v161 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v161);
  v141 = &v140 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = [a4 topicIDs];
  v19 = MEMORY[0x1E69E7CC0];
  if (v18)
  {
    v20 = v18;
    v21 = sub_1C6D79780();
  }

  else
  {
    v21 = MEMORY[0x1E69E7CC0];
  }

  v22 = sub_1C6C0861C(a2, v21);

  v23 = [a4 itemID];
  v163 = sub_1C6D795A0();
  v162 = v24;

  v25 = sub_1C6C0861C(a2, v22);

  v26 = *(v25 + 16);
  if (v26 != a2)
  {
    if (__OFSUB__(a2, v26))
    {
LABEL_76:
      __break(1u);

      __break(1u);
      return result;
    }

    v27 = sub_1C6BFE220(0, 0xE000000000000000, a2 - v26);
    aBlock = v25;
    sub_1C6B38560(v27);
    v25 = aBlock;
  }

  v28 = [a4 publisherID];
  if (v28)
  {
    v29 = v28;
    v159 = sub_1C6D795A0();
    v158 = v30;
  }

  else
  {
    v159 = 0;
    v158 = 0xE000000000000000;
  }

  if ([a4 respondsToSelector_])
  {
    v31 = [a4 bodyTextLength];
    if (v31 == v31)
    {
      v32 = v31;
    }

    else
    {
      v32 = 0;
    }

    v156 = v32;
  }

  else
  {
    v156 = 0;
  }

  v155 = ([a4 respondsToSelector_] & 1) != 0 && (objc_msgSend(a4, sel_hasAudioTrack) & 1) != 0;
  v154 = ([a4 respondsToSelector_] & 1) != 0 && (objc_msgSend(a4, sel_isFeatured) & 1) != 0;
  v153 = [a4 isANF];
  v152 = [a4 isPaid];
  v151 = [a4 hasVideo];
  v150 = ([a4 respondsToSelector_] & 1) != 0 && (objc_msgSend(a4, sel_isAIGenerated) & 1) != 0;
  v33 = [a4 globalCohorts];
  v34 = &_OBJC_LABEL_PROTOCOL___FCSportsProviding;
  v157 = v15;
  if (!v33)
  {
    v180 = 0u;
    v181 = 0u;
    AssociatedConformanceWitness = 0;
LABEL_35:
    sub_1C6C357AC(&v180);
    v149 = 0.0;
    v148 = 0.0;
    v147 = 0.0;
    goto LABEL_36;
  }

  v35 = v33;
  v178 = sub_1C6B0C69C(0, &qword_1EDCE7D80, 0x1E69B6CA0);
  v179 = &off_1EDCE7D88;
  v177.i64[0] = v35;
  v36 = __swift_project_boxed_opaque_existential_1(&v177, v178);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v38 = sub_1C6D79C00();
  v39 = *(v38 - 8);
  v40 = (*(v39 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v38);
  v42 = (&v140 - v41);
  *v42 = [*v36 (v43 + 1118)];
  v44 = *(AssociatedTypeWitness - 8);
  if ((*(v44 + 48))(v42, 1, AssociatedTypeWitness) == 1)
  {
    (*(v39 + 8))(v42, v38);
    AssociatedConformanceWitness = 0;
    v181 = 0u;
    v180 = 0u;
  }

  else
  {
    *(&v181 + 1) = AssociatedTypeWitness;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    boxed_opaque_existential_2 = __swift_allocate_boxed_opaque_existential_2(&v180);
    (*(v44 + 32))(boxed_opaque_existential_2, v42, AssociatedTypeWitness);
  }

  __swift_destroy_boxed_opaque_existential_1(v177.i64);
  v19 = MEMORY[0x1E69E7CC0];
  v34 = &_OBJC_LABEL_PROTOCOL___FCSportsProviding;
  if (!*(&v181 + 1))
  {
    goto LABEL_35;
  }

  sub_1C6B15E34(&v180, &aBlock);
  v46 = v173;
  v47 = v174;
  __swift_project_boxed_opaque_existential_1(&aBlock, v173);
  v48 = (*(v47 + 1))(v46, v47);
  v149 = v48;
  v49 = v173;
  v50 = v174;
  __swift_project_boxed_opaque_existential_1(&aBlock, v173);
  v51 = (*(v50 + 2))(v49, v50);
  v148 = v51;
  v52 = v173;
  v53 = v174;
  __swift_project_boxed_opaque_existential_1(&aBlock, v173);
  v54 = (*(v53 + 3))(v52, v53);
  v147 = v54;
  __swift_destroy_boxed_opaque_existential_1(&aBlock);
LABEL_36:
  v55 = [a4 publisherCohorts];
  v56 = 0.0;
  v57 = 0.0;
  v58 = 0.0;
  v59 = 0.0;
  if (v55)
  {
    v60 = v34[462];
    v61 = v55;
    v62 = (LOBYTE(v168) & 1) != 0 ? [v55 v60] : objc_msgSend(v55, v60, 0);
    v63 = v62;

    if (v63)
    {
      [v63 clicks];
      v57 = v64;
      [v63 rawClicks];
      v58 = v65;
      [v63 impressions];
      v67 = v66;

      v59 = v67;
    }
  }

  v68 = MEMORY[0x1E69E7CC8];
  v176 = MEMORY[0x1E69E7CC8];
  v69 = swift_allocObject();
  *(v69 + 16) = v19;
  v70 = (v69 + 16);
  v174 = sub_1C6C35834;
  v175 = v69;
  aBlock = MEMORY[0x1E69E9820];
  v171 = 1107296256;
  v172 = sub_1C6BB25F8;
  v173 = &block_descriptor_5;
  v71 = _Block_copy(&aBlock);

  [a4 enumerateTopicCohortsWithBlock_];
  _Block_release(v71);
  swift_beginAccess();
  v72 = *v70;

  v23 = 0;
  sub_1C6C33174(v72, LOBYTE(v168) & 1, &v176);

  v73 = sub_1C6C33010(v19, v19, v19, v25, &v176);
  v145 = v74;
  v144 = v75;
  v76 = [a4 globalConversionStats];
  v77 = 0.0;
  if (v76)
  {
    v78 = v76;
    [v76 conversions];
    v56 = v79;
    [v78 impressions];
    v81 = v80;

    v77 = v81;
  }

  v168 = v56;
  v82 = [a4 publisherConversionStats];
  v146 = v73;
  if (v82)
  {
    v83 = v82;
    [v82 conversions];
    v85 = v84;
    [v83 impressions];
    v87 = v86;

    v88 = v87;
  }

  else
  {
    v85 = 0.0;
    v88 = 0.0;
  }

  v169[0] = v68;
  v89 = swift_allocObject();
  *(v89 + 16) = v19;
  v90 = (v89 + 16);
  v174 = sub_1C6C35864;
  v175 = v89;
  aBlock = MEMORY[0x1E69E9820];
  v171 = 1107296256;
  v172 = sub_1C6BB25F8;
  v173 = &block_descriptor_9;
  v91 = _Block_copy(&aBlock);

  [a4 enumerateTopicConversionStatsWithBlock_];
  _Block_release(v91);
  swift_beginAccess();
  v92 = *v90;

  sub_1C6C33364(v92, v169);

  v93 = sub_1C6C330C8(v19, v19, v25, v169);
  v143 = v94;
  v95 = sub_1C6C35248(a4);
  v177.i64[0] = v19;
  v177.i64[1] = v19;
  v96 = *(v25 + 16);
  if (v96)
  {
    v140 = v93;
    v97 = 0;
    v98 = (v25 + 40);
    while (v97 < *(v25 + 16))
    {
      v100 = *(v98 - 1);
      v99 = *v98;

      sub_1C6C354F4(&v177, v100, v99, v95);

      ++v97;
      v98 += 2;
      if (v96 == v97)
      {
        v142 = v177;
        v93 = v140;
        goto LABEL_53;
      }
    }

    __break(1u);
    goto LABEL_76;
  }

  v142 = vdupq_n_s64(v19);
LABEL_53:

  v101 = [a4 publisherTagMetadata];
  v102 = v157;
  if (!v101)
  {
    goto LABEL_57;
  }

  v103 = v101;
  v104 = [v101 contentAndRelevanceInfo];
  if (!v104)
  {

LABEL_57:
    v106 = 0;
    v108 = 0;
    goto LABEL_58;
  }

  v105 = v104;
  v106 = sub_1C6C34A10();
  v107 = sub_1C6C34B50();

  v108 = v107;
LABEL_58:
  v109 = [a4 publishDate];
  v110 = v161;
  v111 = v166;
  if (v109)
  {
    v112 = v109;
    sub_1C6D75F20();

    v111 = v166;
    v113 = 0;
  }

  else
  {
    v113 = 1;
  }

  (*(v102 + 56))(v111, v113, 1, v110);
  v114 = v111;
  v115 = v160;
  sub_1C6C35894(v114, v160);
  if ((*(v102 + 48))(v115, 1, v110) == 1)
  {
    sub_1C6C358F8(v115);
    v116 = 0.0;
  }

  else
  {
    v117 = v141;
    (*(v102 + 32))(v141, v115, v110);
    sub_1C6D75F10();
    v119 = v118;
    (*(v102 + 8))(v117, v110);
    v116 = v119;
  }

  if ([a4 respondsToSelector_])
  {
    v120 = [a4 float16TitleEncoding];
    if (v120)
    {
      v121 = v120;
      v166 = sub_1C6D75E60();
      v123 = v122;
    }

    else
    {
      v166 = 0;
      v123 = 0xF000000000000000;
    }
  }

  else
  {
    v166 = 0;
    v123 = 0xB000000000000000;
  }

  if ([a4 respondsToSelector_])
  {
    v124 = [a4 float16FullBodyEncoding];
    if (v124)
    {
      v125 = v108;
      v126 = v106;
      v127 = v93;
      v128 = v124;
      v129 = sub_1C6D75E60();
      v131 = v130;

      v93 = v127;
      v106 = v126;
      v108 = v125;
      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
      v129 = 0;
      v131 = 0xF000000000000000;
    }
  }

  else
  {
    swift_unknownObjectRelease();
    v129 = 0;
    v131 = 0xB000000000000000;
  }

  v132 = v167 & 1;

  v134 = v162;
  *a7 = v163;
  *(a7 + 8) = v134;
  v135 = v159;
  *(a7 + 16) = v25;
  *(a7 + 24) = v135;
  *(a7 + 32) = v158;
  LODWORD(v135) = v155;
  *(a7 + 40) = v156;
  *(a7 + 44) = v135;
  LODWORD(v135) = v153;
  *(a7 + 48) = v154;
  *(a7 + 52) = v135;
  *(a7 + 56) = v152;
  *(a7 + 60) = v132;
  LODWORD(v135) = v150;
  *(a7 + 64) = v151;
  *(a7 + 68) = v135;
  v136 = v148;
  *(a7 + 72) = v149;
  *(a7 + 76) = v136;
  *(a7 + 80) = v147;
  *(a7 + 84) = v57;
  *(a7 + 88) = v58;
  *(a7 + 92) = v59;
  v137 = v145;
  *(a7 + 96) = v146;
  *(a7 + 104) = v137;
  *(a7 + 112) = v144;
  *(a7 + 120) = v168;
  *(a7 + 124) = v77;
  *(a7 + 128) = v85;
  *(a7 + 132) = v88;
  v138 = v143;
  *(a7 + 136) = v93;
  *(a7 + 144) = v138;
  *(a7 + 152) = v116;
  *(a7 + 156) = v106;
  *(a7 + 160) = v108;
  *(a7 + 168) = v142;
  v139 = v164;
  *(a7 + 184) = v165;
  *(a7 + 192) = v139;
  *(a7 + 200) = v166;
  *(a7 + 208) = v123;
  *(a7 + 216) = v129;
  *(a7 + 224) = v131;
  return result;
}

__n128 sub_1C6C344E0@<Q0>(id a1@<X2>, void *a2@<X0>, int a3@<W1>, float a4@<W3>, uint64_t a5@<X8>)
{
  v10 = [a1 fullBodyEmbeddingDimension];
  v11 = [a1 maxTopicIds];
  v12 = [a1 titleEmbeddingDimension];
  swift_unknownObjectRetain();
  sub_1C6C33510(v10, v11, v12, a2, a3, a4, v20);
  swift_unknownObjectRelease();

  v13 = v20[13];
  *(a5 + 192) = v20[12];
  *(a5 + 208) = v13;
  *(a5 + 224) = v21;
  v14 = v20[9];
  *(a5 + 128) = v20[8];
  *(a5 + 144) = v14;
  v15 = v20[11];
  *(a5 + 160) = v20[10];
  *(a5 + 176) = v15;
  v16 = v20[5];
  *(a5 + 64) = v20[4];
  *(a5 + 80) = v16;
  v17 = v20[7];
  *(a5 + 96) = v20[6];
  *(a5 + 112) = v17;
  v18 = v20[1];
  *a5 = v20[0];
  *(a5 + 16) = v18;
  result = v20[3];
  *(a5 + 32) = v20[2];
  *(a5 + 48) = result;
  return result;
}

__n128 ArticleFeatures.init(item:bundlePaid:fullBodyEmbeddingDimension:maxTopicIds:titleEmbeddingDimension:)@<Q0>(void *a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  sub_1C6C33510(a3, a4, a5, a1, a2, 0.0, v14);
  v7 = v14[13];
  *(a6 + 192) = v14[12];
  *(a6 + 208) = v7;
  *(a6 + 224) = v15;
  v8 = v14[9];
  *(a6 + 128) = v14[8];
  *(a6 + 144) = v8;
  v9 = v14[11];
  *(a6 + 160) = v14[10];
  *(a6 + 176) = v9;
  v10 = v14[5];
  *(a6 + 64) = v14[4];
  *(a6 + 80) = v10;
  v11 = v14[7];
  *(a6 + 96) = v14[6];
  *(a6 + 112) = v11;
  v12 = v14[1];
  *a6 = v14[0];
  *(a6 + 16) = v12;
  result = v14[3];
  *(a6 + 32) = v14[2];
  *(a6 + 48) = result;
  return result;
}

__n128 ArticleFeatures.init(item:bundlePaid:fullBodyEmbeddingDimension:maxTopicIds:titleEmbeddingDimension:isSubscribed:)@<Q0>(void *a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, float a6@<W5>, uint64_t a7@<X8>)
{
  sub_1C6C33510(a3, a4, a5, a1, a2, a6, v15);
  v8 = v15[13];
  *(a7 + 192) = v15[12];
  *(a7 + 208) = v8;
  *(a7 + 224) = v16;
  v9 = v15[9];
  *(a7 + 128) = v15[8];
  *(a7 + 144) = v9;
  v10 = v15[11];
  *(a7 + 160) = v15[10];
  *(a7 + 176) = v10;
  v11 = v15[5];
  *(a7 + 64) = v15[4];
  *(a7 + 80) = v11;
  v12 = v15[7];
  *(a7 + 96) = v15[6];
  *(a7 + 112) = v12;
  v13 = v15[1];
  *a7 = v15[0];
  *(a7 + 16) = v13;
  result = v15[3];
  *(a7 + 32) = v15[2];
  *(a7 + 48) = result;
  return result;
}

id sub_1C6C34758(void *a1)
{
  result = [a1 topics];
  if (!result)
  {
    return result;
  }

  v2 = result;
  sub_1C6B0C69C(0, &qword_1EDCEA8F0, 0x1E69B6D00);
  v3 = sub_1C6D79780();

  if (!(v3 >> 62))
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
      goto LABEL_4;
    }

LABEL_12:

    return MEMORY[0x1E69E7CC0];
  }

  v4 = sub_1C6D79E90();
  if (!v4)
  {
    goto LABEL_12;
  }

LABEL_4:
  v8 = MEMORY[0x1E69E7CC0];
  result = sub_1C6D79DF0();
  if (v4 < 0)
  {
    __break(1u);
  }

  else
  {
    v5 = 0;
    do
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        MEMORY[0x1CCA56240](v5, v3);
      }

      else
      {
        v7 = *(v3 + 8 * v5 + 32);
      }

      ++v5;
      sub_1C6D79DC0();
      v6 = *(v8 + 16);
      sub_1C6D79E00();
      sub_1C6D79E10();
      sub_1C6D79DD0();
    }

    while (v4 != v5);

    return v8;
  }

  return result;
}

uint64_t sub_1C6C348B8(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t (*a5)(BOOL, uint64_t, uint64_t, uint64_t))
{
  swift_beginAccess();
  v10 = *(a4 + 16);

  v11 = a3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a4 + 16) = v10;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = a5(0, *(v10 + 16) + 1, 1, v10);
    *(a4 + 16) = v10;
  }

  v14 = *(v10 + 16);
  v13 = *(v10 + 24);
  if (v14 >= v13 >> 1)
  {
    v10 = a5(v13 > 1, v14 + 1, 1, v10);
  }

  *(v10 + 16) = v14 + 1;
  v15 = (v10 + 24 * v14);
  v15[4] = a1;
  v15[5] = a2;
  v15[6] = v11;
  *(a4 + 16) = v10;
  return swift_endAccess();
}

id sub_1C6C349CC@<X0>(char a1@<W0>, void *a2@<X8>)
{
  result = [*v2 cohortWithPreferredType_];
  *a2 = result;
  return result;
}

id sub_1C6C34A10()
{
  result = [v0 hasContentRating];
  if (result)
  {
    result = [v0 contentRating];
    if (result >= 6)
    {
      if (qword_1EDCE66F8 != -1)
      {
        swift_once();
      }

      sub_1C6D79AA0();
      sub_1C6B1A47C(0, &qword_1EDCEA8A0, &qword_1EDCEA890, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
      v2 = swift_allocObject();
      *(v2 + 16) = xmmword_1C6D7E630;
      v3 = [v0 contentRating];
      v4 = MEMORY[0x1E69E7358];
      *(v2 + 56) = MEMORY[0x1E69E72F0];
      *(v2 + 64) = v4;
      *(v2 + 32) = v3;
      sub_1C6D78D30();

      return 0;
    }
  }

  return result;
}

id sub_1C6C34B50()
{
  result = [v0 hasRelevanceRating];
  if (result)
  {
    result = [v0 relevanceRating];
    if (result >= 9)
    {
      if (qword_1EDCE66F8 != -1)
      {
        swift_once();
      }

      sub_1C6D79AA0();
      sub_1C6B1A47C(0, &qword_1EDCEA8A0, &qword_1EDCEA890, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
      v2 = swift_allocObject();
      *(v2 + 16) = xmmword_1C6D7E630;
      v3 = [v0 relevanceRating];
      v4 = MEMORY[0x1E69E7358];
      *(v2 + 56) = MEMORY[0x1E69E72F0];
      *(v2 + 64) = v4;
      *(v2 + 32) = v3;
      sub_1C6D78D30();

      return 0;
    }
  }

  return result;
}

void sub_1C6C34C90(char **a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v5 = *a4;
  if (*(*a4 + 16) && (v6 = sub_1C6B5DEA8(a2, a3), (v7 & 1) != 0))
  {
    v8 = *(*(v5 + 56) + 8 * v6);
    [v8 clicks];
    v10 = v9;
    v11 = *a1;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v11 = sub_1C6B656C8(0, *(v11 + 2) + 1, 1, v11);
    }

    v13 = *(v11 + 2);
    v12 = *(v11 + 3);
    if (v13 >= v12 >> 1)
    {
      v11 = sub_1C6B656C8((v12 > 1), v13 + 1, 1, v11);
    }

    v14 = v10;
    *(v11 + 2) = v13 + 1;
    *&v11[4 * v13 + 32] = v14;
    *a1 = v11;
    [v8 rawClicks];
    v16 = v15;
    v17 = a1[1];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v17 = sub_1C6B656C8(0, *(v17 + 2) + 1, 1, v17);
    }

    v19 = *(v17 + 2);
    v18 = *(v17 + 3);
    if (v19 >= v18 >> 1)
    {
      v17 = sub_1C6B656C8((v18 > 1), v19 + 1, 1, v17);
    }

    v20 = v16;
    *(v17 + 2) = v19 + 1;
    *&v17[4 * v19 + 32] = v20;
    a1[1] = v17;
    [v8 impressions];
    v22 = v21;
    v23 = a1[2];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v23 = sub_1C6B656C8(0, *(v23 + 2) + 1, 1, v23);
    }

    v25 = *(v23 + 2);
    v24 = *(v23 + 3);
    if (v25 >= v24 >> 1)
    {
      v23 = sub_1C6B656C8((v24 > 1), v25 + 1, 1, v23);
    }

    v26 = v22;
    *(v23 + 2) = v25 + 1;
    *&v23[4 * v25 + 32] = v26;
    a1[2] = v23;
  }

  else
  {
    v27 = *a1;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v27 = sub_1C6B656C8(0, *(v27 + 2) + 1, 1, v27);
    }

    v29 = *(v27 + 2);
    v28 = *(v27 + 3);
    if (v29 >= v28 >> 1)
    {
      v27 = sub_1C6B656C8((v28 > 1), v29 + 1, 1, v27);
    }

    *(v27 + 2) = v29 + 1;
    *&v27[4 * v29 + 32] = 0;
    *a1 = v27;
    v30 = a1[1];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v30 = sub_1C6B656C8(0, *(v30 + 2) + 1, 1, v30);
    }

    v32 = *(v30 + 2);
    v31 = *(v30 + 3);
    if (v32 >= v31 >> 1)
    {
      v30 = sub_1C6B656C8((v31 > 1), v32 + 1, 1, v30);
    }

    *(v30 + 2) = v32 + 1;
    *&v30[4 * v32 + 32] = 0;
    a1[1] = v30;
    v33 = a1[2];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v33 = sub_1C6B656C8(0, *(v33 + 2) + 1, 1, v33);
    }

    v35 = *(v33 + 2);
    v34 = *(v33 + 3);
    if (v35 >= v34 >> 1)
    {
      v33 = sub_1C6B656C8((v34 > 1), v35 + 1, 1, v33);
    }

    *(v33 + 2) = v35 + 1;
    *&v33[4 * v35 + 32] = 0;
    a1[2] = v33;
  }
}

void sub_1C6C34FE8(char **a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v5 = *a4;
  if (*(*a4 + 16) && (v6 = sub_1C6B5DEA8(a2, a3), (v7 & 1) != 0))
  {
    v8 = *(*(v5 + 56) + 8 * v6);
    [v8 conversions];
    v10 = v9;
    v11 = *a1;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v11 = sub_1C6B656C8(0, *(v11 + 2) + 1, 1, v11);
    }

    v13 = *(v11 + 2);
    v12 = *(v11 + 3);
    if (v13 >= v12 >> 1)
    {
      v11 = sub_1C6B656C8((v12 > 1), v13 + 1, 1, v11);
    }

    v14 = v10;
    *(v11 + 2) = v13 + 1;
    *&v11[4 * v13 + 32] = v14;
    *a1 = v11;
    [v8 impressions];
    v16 = v15;
    v17 = a1[1];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v17 = sub_1C6B656C8(0, *(v17 + 2) + 1, 1, v17);
    }

    v19 = *(v17 + 2);
    v18 = *(v17 + 3);
    if (v19 >= v18 >> 1)
    {
      v17 = sub_1C6B656C8((v18 > 1), v19 + 1, 1, v17);
    }

    v20 = v16;
    *(v17 + 2) = v19 + 1;
    *&v17[4 * v19 + 32] = v20;
    a1[1] = v17;
  }

  else
  {
    v21 = *a1;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v21 = sub_1C6B656C8(0, *(v21 + 2) + 1, 1, v21);
    }

    v23 = *(v21 + 2);
    v22 = *(v21 + 3);
    if (v23 >= v22 >> 1)
    {
      v21 = sub_1C6B656C8((v22 > 1), v23 + 1, 1, v21);
    }

    *(v21 + 2) = v23 + 1;
    *&v21[4 * v23 + 32] = 0;
    *a1 = v21;
    v24 = a1[1];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v24 = sub_1C6B656C8(0, *(v24 + 2) + 1, 1, v24);
    }

    v26 = *(v24 + 2);
    v25 = *(v24 + 3);
    if (v26 >= v25 >> 1)
    {
      v24 = sub_1C6B656C8((v25 > 1), v26 + 1, 1, v24);
    }

    *(v24 + 2) = v26 + 1;
    *&v24[4 * v26 + 32] = 0;
    a1[1] = v24;
  }
}

unint64_t sub_1C6C35248(void *a1)
{
  v1 = sub_1C6C34758(a1);
  if (!v1)
  {
    v34 = MEMORY[0x1E69E7CC0];

    return sub_1C6B6083C(v34);
  }

  v2 = v1;
  v3 = v1[2];
  if (!v3)
  {
    v6 = MEMORY[0x1E69E7CC8];
    goto LABEL_26;
  }

  v4 = 0;
  v5 = v3 - 1;
  v6 = MEMORY[0x1E69E7CC8];
  v7 = &_OBJC_LABEL_PROTOCOL___FCSportsProviding;
  while (2)
  {
    v8 = v4;
    while (1)
    {
      if (v8 >= v2[2])
      {
        __break(1u);
        goto LABEL_28;
      }

      v4 = v8 + 1;
      v9 = v2[v8 + 4];
      v10 = [v9 v7[444]];
      if (v10)
      {
        break;
      }

      ++v8;
      if (v3 == v4)
      {
        goto LABEL_26;
      }
    }

    v11 = v6;
    v36 = v5;
    v12 = v10;
    v13 = [v9 tagID];
    if (!v13)
    {
      goto LABEL_30;
    }

    v14 = v13;
    v38 = sub_1C6D795A0();
    v16 = v15;

    v37 = v12;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = sub_1C6B5DEA8(v38, v16);
    v20 = v11[2];
    v21 = (v19 & 1) == 0;
    v22 = __OFADD__(v20, v21);
    v23 = v20 + v21;
    if (v22)
    {
LABEL_28:
      __break(1u);
      goto LABEL_29;
    }

    v24 = v19;
    if (v11[3] < v23)
    {
      sub_1C6B6FC7C(v23, isUniquelyReferenced_nonNull_native);
      v25 = v16;
      v18 = sub_1C6B5DEA8(v38, v16);
      if ((v24 & 1) == (v26 & 1))
      {
        if (v24)
        {
          goto LABEL_14;
        }

LABEL_18:
        v6 = v11;
        v11[(v18 >> 6) + 8] |= 1 << v18;
        v30 = (v11[6] + 16 * v18);
        *v30 = v38;
        v30[1] = v25;
        *(v11[7] + 8 * v18) = v37;

        v31 = v11[2];
        v22 = __OFADD__(v31, 1);
        v32 = v31 + 1;
        if (!v22)
        {
          v11[2] = v32;
          goto LABEL_20;
        }

LABEL_29:
        __break(1u);
LABEL_30:
        __break(1u);
      }

      result = sub_1C6D7A1C0();
      __break(1u);
      return result;
    }

    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v33 = v18;
      sub_1C6B73674();
      v18 = v33;
    }

    v25 = v16;
    if ((v24 & 1) == 0)
    {
      goto LABEL_18;
    }

LABEL_14:
    v27 = v18;

    v6 = v11;
    v28 = v11[7];
    v29 = *(v28 + 8 * v27);
    *(v28 + 8 * v27) = v37;

LABEL_20:
    v5 = v36;
    v7 = &_OBJC_LABEL_PROTOCOL___FCSportsProviding;
    if (v36 != v8)
    {
      continue;
    }

    break;
  }

LABEL_26:

  return v6;
}

void sub_1C6C354F4(char **a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a4 + 16) && (v6 = sub_1C6B5DEA8(a2, a3), (v7 & 1) != 0))
  {
    v8 = *(*(a4 + 56) + 8 * v6);
    v9 = sub_1C6C34A10();
    v10 = *a1;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v10 = sub_1C6B65AD8(0, *(v10 + 2) + 1, 1, v10);
    }

    v12 = *(v10 + 2);
    v11 = *(v10 + 3);
    if (v12 >= v11 >> 1)
    {
      v10 = sub_1C6B65AD8((v11 > 1), v12 + 1, 1, v10);
    }

    *(v10 + 2) = v12 + 1;
    *&v10[4 * v12 + 32] = v9;
    *a1 = v10;
    v13 = sub_1C6C34B50();
    v14 = a1[1];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v14 = sub_1C6B65AD8(0, *(v14 + 2) + 1, 1, v14);
    }

    v16 = *(v14 + 2);
    v15 = *(v14 + 3);
    if (v16 >= v15 >> 1)
    {
      v14 = sub_1C6B65AD8((v15 > 1), v16 + 1, 1, v14);
    }

    *(v14 + 2) = v16 + 1;
    *&v14[4 * v16 + 32] = v13;
    a1[1] = v14;
  }

  else
  {
    v17 = *a1;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v17 = sub_1C6B65AD8(0, *(v17 + 2) + 1, 1, v17);
    }

    v19 = *(v17 + 2);
    v18 = *(v17 + 3);
    if (v19 >= v18 >> 1)
    {
      v17 = sub_1C6B65AD8((v18 > 1), v19 + 1, 1, v17);
    }

    *(v17 + 2) = v19 + 1;
    *&v17[4 * v19 + 32] = 0;
    *a1 = v17;
    v20 = a1[1];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v20 = sub_1C6B65AD8(0, *(v20 + 2) + 1, 1, v20);
    }

    v22 = *(v20 + 2);
    v21 = *(v20 + 3);
    if (v22 >= v21 >> 1)
    {
      v20 = sub_1C6B65AD8((v21 > 1), v22 + 1, 1, v20);
    }

    *(v20 + 2) = v22 + 1;
    *&v20[4 * v22 + 32] = 0;
    a1[1] = v20;
  }
}

void sub_1C6C35754()
{
  if (!qword_1EDCEA960)
  {
    sub_1C6D75F50();
    v0 = sub_1C6D79C00();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDCEA960);
    }
  }
}

uint64_t sub_1C6C357AC(uint64_t a1)
{
  sub_1C6B1A47C(0, &qword_1EDCE74A8, qword_1EDCE74B0, &protocol descriptor for ArticleCohortType, MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C6C35894(uint64_t a1, uint64_t a2)
{
  sub_1C6C35754();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C6C358F8(uint64_t a1)
{
  sub_1C6C35754();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t DropboxBundleSubscriptionManager.isSubscribed.getter()
{
  v0 = sub_1C6D78FE0();
  if (objc_getAssociatedObject(v0, (v0 + 1)))
  {
    sub_1C6D79C50();
    swift_unknownObjectRelease();
  }

  else
  {
    v8 = 0u;
    v9 = 0u;
  }

  v10 = v8;
  v11 = v9;
  if (!*(&v9 + 1))
  {
    sub_1C6B79FDC(&v10);
    goto LABEL_9;
  }

  sub_1C6B18500();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_9:
    v1 = 0;
    v2 = 0;
    goto LABEL_10;
  }

  v1 = v7;
  v2 = [v7 integerValue];
  if (v2 == -1)
  {
    goto LABEL_17;
  }

LABEL_10:
  if (objc_getAssociatedObject(v0, ~v2))
  {
    sub_1C6D79C50();
    swift_unknownObjectRelease();
  }

  else
  {
    v8 = 0u;
    v9 = 0u;
  }

  v10 = v8;
  v11 = v9;
  if (!*(&v9 + 1))
  {
    sub_1C6B79FDC(&v10);
    goto LABEL_17;
  }

  sub_1C6B18500();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_17:

    v5 = -16;
    return (v5 ^ v2) & 1;
  }

  v3 = v7;
  v4 = [v3 integerValue];

  v5 = v4 - 16;
  return (v5 ^ v2) & 1;
}

uint64_t sub_1C6C35B24(uint64_t a1)
{
  v3 = v1[5];
  v4 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v3);

  v6 = sub_1C6B1E610(v5);

  v7 = (*(v4 + 8))(v6, v3, v4);

  v8 = *(a1 + 16);
  if (v8)
  {
    v20 = MEMORY[0x1E69E7CC0];
    sub_1C6D79DF0();
    v9 = (a1 + 40);
    v10 = MEMORY[0x1E69E6158];
    do
    {
      v14 = *(v9 - 1);
      v13 = *v9;
      v15 = *(v7 + 16);

      if (v15 && (v16 = sub_1C6B5DEA8(v14, v13), (v17 & 1) != 0))
      {
        v11 = *(*(v7 + 56) + 4 * v16);
        sub_1C6D79940();
      }

      else
      {
        if (qword_1EC1D5AC8 != -1)
        {
          swift_once();
        }

        sub_1C6B1D314();
        v18 = swift_allocObject();
        *(v18 + 16) = xmmword_1C6D7E630;
        *(v18 + 56) = v10;
        *(v18 + 64) = sub_1C6B2064C();
        *(v18 + 32) = v14;
        *(v18 + 40) = v13;

        sub_1C6D79AC0();
        sub_1C6D78D30();

        sub_1C6B18500();
        sub_1C6D79B90();
      }

      sub_1C6D79DC0();
      v12 = *(v20 + 16);
      sub_1C6D79E00();
      sub_1C6D79E10();
      sub_1C6D79DD0();
      v9 += 2;
      --v8;
    }

    while (v8);

    return v20;
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }
}

uint64_t ArticleUnlikeEvent.Model.articleLength.getter()
{
  v0 = sub_1C6D77430();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6D77A80();
  v5 = sub_1C6D77400();
  (*(v1 + 8))(v4, v0);
  return v5;
}

uint64_t ArticleUnlikeEvent.Model.isANF.getter()
{
  v0 = sub_1C6D77440();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = v16 - v6;
  v8 = sub_1C6D77430();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6D77A80();
  sub_1C6D773F0();
  (*(v9 + 8))(v12, v8);
  (*(v1 + 104))(v4, *MEMORY[0x1E69B4590], v0);
  sub_1C6C373F8(&qword_1EDCE5FD0, MEMORY[0x1E69B4598]);
  sub_1C6D796F0();
  sub_1C6D796F0();
  if (v16[2] == v16[0] && v16[3] == v16[1])
  {
    v13 = 1;
  }

  else
  {
    v13 = sub_1C6D7A130();
  }

  v14 = *(v1 + 8);
  v14(v4, v0);
  v14(v7, v0);

  return v13 & 1;
}

uint64_t ArticleUnlikeEvent.Model.isPaid.getter()
{
  v0 = sub_1C6D77930();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = v16 - v6;
  v8 = sub_1C6D77430();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6D77A80();
  sub_1C6D77410();
  (*(v9 + 8))(v12, v8);
  (*(v1 + 104))(v4, *MEMORY[0x1E69B4810], v0);
  sub_1C6C373F8(&qword_1EDCE5F20, MEMORY[0x1E69B4818]);
  sub_1C6D796F0();
  sub_1C6D796F0();
  if (v16[2] == v16[0] && v16[3] == v16[1])
  {
    v13 = 1;
  }

  else
  {
    v13 = sub_1C6D7A130();
  }

  v14 = *(v1 + 8);
  v14(v4, v0);
  v14(v7, v0);

  return v13 & 1;
}

uint64_t ArticleUnlikeEvent.Model.isBundlePaid.getter()
{
  v0 = sub_1C6D77460();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6D77A90();
  v5 = sub_1C6D77450();
  (*(v1 + 8))(v4, v0);
  if (v5)
  {
    v6 = ArticleUnlikeEvent.Model.isPaid.getter();
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

uint64_t sub_1C6C366F4(uint64_t (*a1)(void), uint64_t (*a2)(uint64_t), uint64_t (*a3)(uint64_t))
{
  v5 = a1(0);
  v6 = *(v5 - 8);
  v7 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = MEMORY[0x1EEE9AC00]();
  v10 = &v14 - v9;
  v11 = a2(v8);
  v12 = a3(v11);
  (*(v6 + 8))(v10, v5);
  return v12;
}

uint64_t sub_1C6C36800(uint64_t (*a1)(uint64_t))
{
  v2 = sub_1C6D77430();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1C6D77A80();
  v8 = a1(v7);
  (*(v3 + 8))(v6, v2);
  return v8;
}

uint64_t ArticleUnlikeEvent.Model.feed.getter@<X0>(uint64_t a1@<X8>)
{
  v19 = a1;
  v1 = sub_1C6D77E80();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6B42BF8(0, &qword_1EDCE5E50, MEMORY[0x1E69B4B18]);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v18 - v8;
  v10 = sub_1C6D77090();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6D77AA0();
  v15 = sub_1C6D77E60();
  v16 = *(v15 - 8);
  if ((*(v16 + 48))(v9, 1, v15) == 1)
  {
    sub_1C6B428F4(v9, &qword_1EDCE5E50, MEMORY[0x1E69B4B18]);
    return (*(v11 + 104))(v19, *MEMORY[0x1E69E3780], v10);
  }

  else
  {
    sub_1C6D77E50();
    (*(v16 + 8))(v9, v15);
    sub_1C6C1EF1C(v14);
    (*(v2 + 8))(v5, v1);
    return (*(v11 + 32))(v19, v14, v10);
  }
}

uint64_t ArticleUnlikeEvent.Model.group.getter@<X0>(uint64_t a1@<X8>)
{
  v19 = a1;
  v1 = sub_1C6D77F00();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6B42BF8(0, &qword_1EDCE5E30, MEMORY[0x1E69B4C18]);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v18 - v8;
  v10 = sub_1C6D770A0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6D77AC0();
  v15 = sub_1C6D77EF0();
  v16 = *(v15 - 8);
  if ((*(v16 + 48))(v9, 1, v15) == 1)
  {
    sub_1C6B428F4(v9, &qword_1EDCE5E30, MEMORY[0x1E69B4C18]);
    return (*(v11 + 104))(v19, *MEMORY[0x1E69E39A0], v10);
  }

  else
  {
    sub_1C6D77EE0();
    (*(v16 + 8))(v9, v15);
    sub_1C6B4772C(v14);
    (*(v2 + 8))(v5, v1);
    return (*(v11 + 32))(v19, v14, v10);
  }
}

uint64_t ArticleUnlikeEvent.Model.viewAction.getter@<X0>(uint64_t a1@<X8>)
{
  v19 = a1;
  v1 = sub_1C6D773E0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6B42BF8(0, &qword_1EC1D68D0, MEMORY[0x1E69B4C00]);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v18 - v8;
  v10 = sub_1C6D76B90();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6D77AB0();
  v15 = sub_1C6D77EC0();
  v16 = *(v15 - 8);
  if ((*(v16 + 48))(v9, 1, v15) == 1)
  {
    sub_1C6B428F4(v9, &qword_1EC1D68D0, MEMORY[0x1E69B4C00]);
    return (*(v11 + 104))(v19, *MEMORY[0x1E69E3540], v10);
  }

  else
  {
    sub_1C6D77EB0();
    (*(v16 + 8))(v9, v15);
    sub_1C6B8CE90(v14);
    (*(v2 + 8))(v5, v1);
    return (*(v11 + 32))(v19, v14, v10);
  }
}

uint64_t sub_1C6C37138(uint64_t (*a1)(uint64_t))
{
  v2 = sub_1C6D77430();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1C6D77A80();
  LOBYTE(a1) = a1(v7);
  (*(v3 + 8))(v6, v2);
  return a1 & 1;
}

uint64_t ArticleUnlikeEvent.Model.groupBackingTagID.getter()
{
  sub_1C6B42BF8(0, &qword_1EDCE5E30, MEMORY[0x1E69B4C18]);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v8 - v2;
  sub_1C6D77AC0();
  v4 = sub_1C6D77EF0();
  v5 = *(v4 - 8);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_1C6B428F4(v3, &qword_1EDCE5E30, MEMORY[0x1E69B4C18]);
    return 0;
  }

  else
  {
    v7 = sub_1C6D77ED0();
    (*(v5 + 8))(v3, v4);
    return v7;
  }
}

uint64_t sub_1C6C373F8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C6C37498()
{
  v0 = sub_1C6D77430();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6D77A80();
  v5 = sub_1C6D77400();
  (*(v1 + 8))(v4, v0);
  return v5;
}

uint64_t sub_1C6C37598()
{
  v0 = sub_1C6D77460();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6D77A90();
  v5 = sub_1C6D77450();
  (*(v1 + 8))(v4, v0);
  if (v5)
  {
    v6 = ArticleUnlikeEvent.Model.isPaid.getter();
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

uint64_t sub_1C6C376E8(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v4 = sub_1C6D77430();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1C6D77A80();
  LOBYTE(a3) = a3(v9);
  (*(v5 + 8))(v8, v4);
  return a3 & 1;
}

uint64_t sub_1C6C37808(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t))
{
  v7 = a3(0);
  v8 = *(v7 - 8);
  v9 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = MEMORY[0x1EEE9AC00]();
  v12 = &v16 - v11;
  v13 = a4(v10);
  v14 = a5(v13);
  (*(v8 + 8))(v12, v7);
  return v14;
}

uint64_t sub_1C6C37910(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v4 = sub_1C6D77430();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1C6D77A80();
  v10 = a3(v9);
  (*(v5 + 8))(v8, v4);
  return v10;
}

uint64_t sub_1C6C379FC()
{
  sub_1C6B42BF8(0, &qword_1EDCE5E30, MEMORY[0x1E69B4C18]);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v8 - v2;
  sub_1C6D77AC0();
  v4 = sub_1C6D77EF0();
  v5 = *(v4 - 8);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_1C6B428F4(v3, &qword_1EDCE5E30, MEMORY[0x1E69B4C18]);
    return 0;
  }

  else
  {
    v7 = sub_1C6D77ED0();
    (*(v5 + 8))(v3, v4);
    return v7;
  }
}

uint64_t sub_1C6C37B4C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6D78FA0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6D78F90();
  v9 = sub_1C6D78F80();
  v11 = v10;
  (*(v5 + 8))(v8, v4);
  v12 = *(a1 + 8);

  *a1 = v9;
  *(a1 + 8) = v11;
  v14 = *(a2 + 16);
  v13 = *(a2 + 24);
  v15 = *(a1 + 32);

  *(a1 + 24) = v14;
  *(a1 + 32) = v13;
  v17 = *(a2 + 40);
  *(a1 + 40) = *(a2 + 32);
  *(a1 + 48) = v17;
  return result;
}

uint64_t sub_1C6C37C70()
{
  v1 = *(v0 + 24);

  return swift_deallocClassInstance();
}

void *sub_1C6C37CA8(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for Com_Apple_News_Personalization_RecipeSession();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_1C6C38810(qword_1EDCE5520, type metadata accessor for Com_Apple_News_Personalization_RecipeSession);
  sub_1C6D78C30();
  sub_1C6C389F4();
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  v13 = swift_allocObject();
  v13[2] = a1;
  v13[3] = a2;
  sub_1C6C38A54(v8, v13 + *(*v13 + 104));

  return v13;
}

uint64_t Com_Apple_News_Personalization_RecipeSession.identifier.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t Com_Apple_News_Personalization_RecipeSession.start(at:)(uint64_t a1)
{
  v21 = a1;
  v20 = sub_1C6D75F50();
  v2 = *(v20 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1C6D789A0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6C380BC();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(type metadata accessor for Com_Apple_News_Personalization_RecipeSession() + 36);
  sub_1C6B823A4(v1 + v15, v14);
  v16 = (*(v7 + 48))(v14, 1, v6);
  sub_1C6C38858(v14, sub_1C6C380BC);
  if (v16 == 1)
  {
    (*(v2 + 16))(v5, v21, v20);
    sub_1C6D78980();
    sub_1C6C38858(v1 + v15, sub_1C6C380BC);
    (*(v7 + 32))(v1 + v15, v10, v6);
    return (*(v7 + 56))(v1 + v15, 0, 1, v6);
  }

  else
  {
    sub_1C6C38114();
    swift_allocError();
    *v18 = 0;
    return swift_willThrow();
  }
}

void sub_1C6C380BC()
{
  if (!qword_1EDCE66F0)
  {
    sub_1C6D789A0();
    v0 = sub_1C6D79C00();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDCE66F0);
    }
  }
}

unint64_t sub_1C6C38114()
{
  result = qword_1EC1D81F8;
  if (!qword_1EC1D81F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D81F8);
  }

  return result;
}

uint64_t Com_Apple_News_Personalization_RecipeSession.end(at:)(uint64_t a1)
{
  v21 = a1;
  v20 = sub_1C6D75F50();
  v2 = *(v20 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1C6D789A0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6C380BC();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(type metadata accessor for Com_Apple_News_Personalization_RecipeSession() + 40);
  sub_1C6B823A4(v1 + v15, v14);
  v16 = (*(v7 + 48))(v14, 1, v6);
  sub_1C6C38858(v14, sub_1C6C380BC);
  if (v16 == 1)
  {
    (*(v2 + 16))(v5, v21, v20);
    sub_1C6D78980();
    sub_1C6C38858(v1 + v15, sub_1C6C380BC);
    (*(v7 + 32))(v1 + v15, v10, v6);
    return (*(v7 + 56))(v1 + v15, 0, 1, v6);
  }

  else
  {
    sub_1C6C38114();
    swift_allocError();
    *v18 = 0;
    return swift_willThrow();
  }
}

uint64_t Com_Apple_News_Personalization_RecipeSession.serialize()()
{
  v1 = type metadata accessor for Com_Apple_News_Personalization_Envelope();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1);
  v28 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6C380BC();
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v27 - v9;
  v11 = type metadata accessor for Com_Apple_News_Personalization_RecipeSession();
  sub_1C6B823A4(v0 + *(v11 + 36), v10);
  v12 = sub_1C6D789A0();
  v13 = *(*(v12 - 8) + 48);
  v14 = v13(v10, 1, v12);
  sub_1C6C38858(v10, sub_1C6C380BC);
  if (v14 == 1)
  {
    sub_1C6C38114();
    v15 = swift_allocError();
    v17 = 2;
LABEL_5:
    *v16 = v17;
    v19 = v15;
    swift_willThrow();
    return v19;
  }

  sub_1C6B823A4(v0 + *(v11 + 40), v8);
  v18 = v13(v8, 1, v12);
  sub_1C6C38858(v8, sub_1C6C380BC);
  if (v18 == 1)
  {
    sub_1C6C38114();
    v15 = swift_allocError();
    v17 = 3;
    goto LABEL_5;
  }

  sub_1C6C38810(qword_1EDCE5520, type metadata accessor for Com_Apple_News_Personalization_RecipeSession);
  v19 = v29;
  v21 = sub_1C6D78BF0();
  if (!v19)
  {
    v22 = MEMORY[0x1EEE9AC00](v21);
    *(&v27 - 2) = v22;
    *(&v27 - 1) = v23;
    v24 = v23;
    sub_1C6C38810(&qword_1EC1D6F98, type metadata accessor for Com_Apple_News_Personalization_Envelope);
    v25 = v28;
    sub_1C6D78C30();
    sub_1C6D78BF0();
    sub_1C6C38858(v25, type metadata accessor for Com_Apple_News_Personalization_Envelope);
    sub_1C6B1C9F0(v22, v24);
    v19 = *v0;
    v26 = v0[1];
  }

  return v19;
}

uint64_t sub_1C6C387AC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  *a1 = 1;
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  sub_1C6B1CD10(v4, v3);
  result = sub_1C6B1C9F0(v5, v6);
  *(a1 + 8) = v4;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1C6C38810(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C6C38858(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1C6C388B8()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t sub_1C6C38938()
{
  result = Com_Apple_News_Personalization_RecipeSession.serialize()();
  if (v0)
  {
    return v2;
  }

  return result;
}

unint64_t sub_1C6C38978()
{
  result = qword_1EC1D8200;
  if (!qword_1EC1D8200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8200);
  }

  return result;
}

void sub_1C6C389F4()
{
  if (!qword_1EDCE23C8)
  {
    type metadata accessor for Com_Apple_News_Personalization_RecipeSession();
    v0 = type metadata accessor for SessionContainer();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDCE23C8);
    }
  }
}

uint64_t sub_1C6C38A54(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_News_Personalization_RecipeSession();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1C6C38AB8(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v33[1] = a2;
  v6 = sub_1C6D77700();
  v33[0] = *(v6 - 8);
  v7 = *(v33[0] + 64);
  MEMORY[0x1EEE9AC00](v6);
  v36 = v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6C38FE4();
  v10 = v9;
  v11 = *(v9 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v14 = v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1C6D77290();
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](v15);
  (*(v19 + 16))(v33 - v18, a1, v15, v17);
  if (swift_dynamicCast())
  {
    (*(v11 + 8))(v14, v10);
    v20 = sub_1C6D77270();
    v21 = sub_1C6D77330();
    v23 = v22;

    if (!v3)
    {
      sub_1C6C39078(&qword_1EC1D68D8, MEMORY[0x1E69B4708]);
      sub_1C6D75AF0();
      if (qword_1EDCE9828 != -1)
      {
        swift_once();
      }

      sub_1C6B1D314();
      v25 = swift_allocObject();
      *(v25 + 16) = xmmword_1C6D7E630;
      v34 = 0;
      v35 = 0xE000000000000000;
      sub_1C6D79E60();
      v26 = v34;
      v27 = v35;
      *(v25 + 56) = MEMORY[0x1E69E6158];
      *(v25 + 64) = sub_1C6B2064C();
      *(v25 + 32) = v26;
      *(v25 + 40) = v27;
      sub_1C6D79AC0();
      sub_1C6D78D30();

      a3[3] = v6;
      v28 = MEMORY[0x1E69B4708];
      a3[4] = sub_1C6C39078(&qword_1EC1D8208, MEMORY[0x1E69B4708]);
      a3[5] = sub_1C6C39078(&unk_1EC1D8210, v28);
      boxed_opaque_existential_2 = __swift_allocate_boxed_opaque_existential_2(a3);
      (*(v33[0] + 32))(boxed_opaque_existential_2, v36, v6);
      sub_1C6B1C9F0(v21, v23);
      v30 = *MEMORY[0x1E69E3630];
      v31 = sub_1C6D76F90();
      v32 = *(v31 - 8);
      (*(v32 + 104))(a3, v30, v31);
      (*(v32 + 56))(a3, 0, 1, v31);
    }
  }

  else
  {
    v24 = sub_1C6D76F90();
    (*(*(v24 - 8) + 56))(a3, 1, 1, v24);
  }
}

void sub_1C6C38FE4()
{
  if (!qword_1EDCE60B0)
  {
    sub_1C6D77710();
    sub_1C6C39078(&qword_1EDCE5F78, MEMORY[0x1E69B4720]);
    v0 = sub_1C6D77290();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDCE60B0);
    }
  }
}

uint64_t sub_1C6C39078(unint64_t *a1, void (*a2)(uint64_t))
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

void *sub_1C6C390C0(uint64_t (*a1)(uint64_t *), void *a2, unint64_t a3)
{
  v5 = a3;
  v22 = MEMORY[0x1E69E7CC0];
  if (a3 >> 62)
  {
LABEL_18:
    v8 = sub_1C6D79E90();
    if (v8)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v8 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v8)
    {
LABEL_3:
      v9 = 0;
      v19 = v5 & 0xFFFFFFFFFFFFFF8;
      v20 = v5 & 0xC000000000000001;
      v18 = v5;
      while (1)
      {
        if (v20)
        {
          v10 = MEMORY[0x1CCA56240](v9, v5);
          v11 = v9 + 1;
          if (__OFADD__(v9, 1))
          {
LABEL_14:
            __break(1u);
LABEL_15:

            swift_unknownObjectRelease();

            return v3;
          }
        }

        else
        {
          if (v9 >= *(v19 + 16))
          {
            __break(1u);
            goto LABEL_18;
          }

          v10 = *(v5 + 8 * v9 + 32);
          swift_unknownObjectRetain();
          v11 = v9 + 1;
          if (__OFADD__(v9, 1))
          {
            goto LABEL_14;
          }
        }

        v21 = v10;
        v3 = a2;
        v12 = a1(&v21);
        if (v4)
        {
          goto LABEL_15;
        }

        if (v12)
        {
          sub_1C6D79DC0();
          v13 = v8;
          v14 = a1;
          v15 = a2;
          v16 = v22[2];
          sub_1C6D79E00();
          a2 = v15;
          a1 = v14;
          v8 = v13;
          v5 = v18;
          sub_1C6D79E10();
          v3 = &v22;
          sub_1C6D79DD0();
        }

        else
        {
          swift_unknownObjectRelease();
        }

        ++v9;
        if (v11 == v8)
        {
          v3 = v22;
          goto LABEL_20;
        }
      }
    }
  }

  v3 = MEMORY[0x1E69E7CC0];
LABEL_20:

  return v3;
}

uint64_t SportsRecommendedScoredTag.scoreProfile.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SportsRecommendedScoredTag() + 20);
  v4 = sub_1C6D76BD0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for SportsRecommendedScoredTag()
{
  result = qword_1EDCE1180;
  if (!qword_1EDCE1180)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SportsRecommendedScoredTag.init(tag:scoreProfile:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  *a3 = a1;
  v5 = *(type metadata accessor for SportsRecommendedScoredTag() + 20);
  v6 = sub_1C6D76BD0();
  v7 = *(*(v6 - 8) + 32);

  return v7(&a3[v5], a2, v6);
}

uint64_t SportsRecommendationResult.clustered(maxClusterSize:diversificationRules:)(unint64_t a1, uint64_t a2)
{
  v111 = a2;
  v133 = sub_1C6D76140();
  v125 = *(v133 - 8);
  v4 = *(v125 + 64);
  MEMORY[0x1EEE9AC00](v133);
  v132 = &v109 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v131 = sub_1C6D761A0();
  v6 = *(v131 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v131);
  v130 = &v109 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v129 = type metadata accessor for SportsRecommendedScoredTag();
  v9 = *(v129 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v129);
  v115 = &v109 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v118 = &v109 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v122 = &v109 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v121 = (&v109 - v17);
  MEMORY[0x1EEE9AC00](v18);
  v20 = (&v109 - v19);
  v138 = sub_1C6D761D0();
  v21 = *(v138 - 8);
  v22 = v21[8];
  MEMORY[0x1EEE9AC00](v138);
  v128 = &v109 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v109 - v25;
  sub_1C6C4070C(0, &qword_1EDCE6230, MEMORY[0x1E69E35A0], MEMORY[0x1E69E6720]);
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x1EEE9AC00](v27 - 8);
  v110 = &v109 - v29;
  v30 = sub_1C6D76C40();
  v114 = *(v30 - 8);
  v31 = *(v114 + 64);
  MEMORY[0x1EEE9AC00](v30);
  v113 = &v109 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = *v2;
  v34 = *(*v2 + 16);
  v136 = *v2;
  v137 = v9;
  v134 = v21;
  v135 = v34;
  v112 = v35;
  if (!v34)
  {
    v47 = v114;
LABEL_17:
    v48 = v110;
    sub_1C6D76C50();

    v49 = (*(v47 + 48))(v48, 1, v30);
    v50 = v47;
    v21 = &unk_1EDCE1000;
    if (v49 == 1)
    {
      sub_1C6C40CF8(v48, &qword_1EDCE6230, MEMORY[0x1E69E35A0]);
      if (qword_1EDCE18E0 == -1)
      {
        goto LABEL_19;
      }

      goto LABEL_66;
    }

    (*(v50 + 32))(v113, v48, v30);
    if (qword_1EDCE18E0 != -1)
    {
      swift_once();
    }

    sub_1C6B1D314();
    v61 = swift_allocObject();
    v62 = MEMORY[0x1E69E6530];
    *(v61 + 16) = xmmword_1C6D807C0;
    v63 = MEMORY[0x1E69E65A8];
    *(v61 + 56) = v62;
    *(v61 + 64) = v63;
    *(v61 + 32) = v135;
    v64 = *(sub_1C6D76C20() + 16);

    *(v61 + 96) = v62;
    *(v61 + 104) = v63;
    *(v61 + 72) = v64;
    v65 = *(sub_1C6D76C30() + 16);

    *(v61 + 136) = v62;
    *(v61 + 144) = v63;
    *(v61 + 112) = v65;
    sub_1C6D79AC0();
    sub_1C6D78D30();

    v21 = sub_1C6B61AFC(MEMORY[0x1E69E7CC0]);
    v66 = *(v33 + 16);
    if (v66)
    {
      v67 = 0;
      a1 = v33 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
      while (1)
      {
        if (v67 >= *(v33 + 16))
        {
          goto LABEL_63;
        }

        v33 = *(v9 + 72);
        v69 = v121;
        sub_1C6C4086C(a1 + v33 * v67, v121, type metadata accessor for SportsRecommendedScoredTag);
        v70 = [*v69 identifier];
        v71 = sub_1C6D795A0();
        v73 = v72;

        sub_1C6C4086C(v69, v122, type metadata accessor for SportsRecommendedScoredTag);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v139 = v21;
        v75 = sub_1C6B5DEA8(v71, v73);
        v77 = v21[2];
        v78 = (v76 & 1) == 0;
        v79 = __OFADD__(v77, v78);
        v80 = v77 + v78;
        if (v79)
        {
          goto LABEL_64;
        }

        v81 = v76;
        if (v21[3] < v80)
        {
          break;
        }

        if (isUniquelyReferenced_nonNull_native)
        {
          goto LABEL_34;
        }

        v86 = v75;
        sub_1C6B744D0();
        v75 = v86;
        if (v81)
        {
LABEL_26:
          v68 = v75;

          v21 = v139;
          sub_1C6C40414(v122, v139[7] + v68 * v33);
          goto LABEL_27;
        }

LABEL_35:
        v21 = v139;
        v139[(v75 >> 6) + 8] |= 1 << v75;
        v83 = (v21[6] + 16 * v75);
        *v83 = v71;
        v83[1] = v73;
        sub_1C6C40C30(v122, v21[7] + v75 * v33, type metadata accessor for SportsRecommendedScoredTag);
        v84 = v21[2];
        v79 = __OFADD__(v84, 1);
        v85 = v84 + 1;
        if (v79)
        {
          goto LABEL_65;
        }

        v21[2] = v85;
LABEL_27:
        ++v67;
        sub_1C6C40C98(v121, type metadata accessor for SportsRecommendedScoredTag);
        v33 = v136;
        v9 = v137;
        if (v66 == v67)
        {
          goto LABEL_39;
        }
      }

      sub_1C6B713B8(v80, isUniquelyReferenced_nonNull_native);
      v75 = sub_1C6B5DEA8(v71, v73);
      if ((v81 & 1) != (v82 & 1))
      {
        goto LABEL_70;
      }

LABEL_34:
      if (v81)
      {
        goto LABEL_26;
      }

      goto LABEL_35;
    }

LABEL_39:
    v87 = v113;
    v88 = sub_1C6D76C20();
    v89 = *(v88 + 16);
    if (!v89)
    {

      v60 = MEMORY[0x1E69E7CC0];
LABEL_60:
      (*(v114 + 8))(v87, v112);
      return v60;
    }

    v91 = v134[2];
    v90 = v134 + 2;
    v135 = v88;
    v136 = v91;
    v92 = v88 + ((*(v134 + 80) + 32) & ~*(v134 + 80));
    v93 = v134[9];
    v94 = (v134 + 1);
    v60 = MEMORY[0x1E69E7CC0];
    v91(v128, v92, v138);
    while (1)
    {
      v95 = sub_1C6D761C0();
      if (!v21[2])
      {
        break;
      }

      v97 = v90;
      v98 = sub_1C6B5DEA8(v95, v96);
      v100 = v99;

      if ((v100 & 1) == 0)
      {
        goto LABEL_42;
      }

      v101 = *(v137 + 72);
      v102 = v21[7] + v101 * v98;
      v103 = v115;
      sub_1C6C4086C(v102, v115, type metadata accessor for SportsRecommendedScoredTag);
      (*v94)(v128, v138);
      sub_1C6C40C30(v103, v118, type metadata accessor for SportsRecommendedScoredTag);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v60 = sub_1C6B669C0(0, v60[2] + 1, 1, v60);
      }

      v105 = v60[2];
      v104 = v60[3];
      if (v105 >= v104 >> 1)
      {
        v60 = sub_1C6B669C0(v104 > 1, v105 + 1, 1, v60);
      }

      v60[2] = v105 + 1;
      sub_1C6C40C30(v118, v60 + ((*(v137 + 80) + 32) & ~*(v137 + 80)) + v105 * v101, type metadata accessor for SportsRecommendedScoredTag);
      v90 = v97;
LABEL_43:
      v92 += v93;
      if (!--v89)
      {

        v87 = v113;
        goto LABEL_60;
      }

      v136(v128, v92, v138);
    }

LABEL_42:
    (*v94)(v128, v138);
    goto LABEL_43;
  }

  v109 = a1;
  v139 = MEMORY[0x1E69E7CC0];
  sub_1C6B39734(0, v34, 0);
  a1 = 0;
  v36 = v139;
  v127 = v33 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
  v117 = *MEMORY[0x1E69E31D8];
  v126 = (v6 + 104);
  v120 = *MEMORY[0x1E69E31F0];
  v116 = *MEMORY[0x1E69E31E0];
  v119 = *MEMORY[0x1E69E31E8];
  v125 += 104;
  v124 = *MEMORY[0x1E69E31C0];
  v123 = v21 + 4;
  while (a1 < *(v33 + 16))
  {
    v37 = v26;
    sub_1C6C4086C(v127 + *(v9 + 72) * a1, v20, type metadata accessor for SportsRecommendedScoredTag);
    v38 = *v20;
    v39 = [*v20 identifier];
    sub_1C6D795A0();

    v40 = v20 + *(v129 + 20);
    sub_1C6D76BA0();
    v41 = [v38 topLevelSportTagIdentifier];
    if (v41)
    {
      v42 = v41;
      sub_1C6D795A0();
    }

    v43 = [v38 sportsLeagueType];
    if (v43 > 1)
    {
      v44 = v120;
      if (v43 != 3)
      {
        v44 = v116;
        if (v43 != 2)
        {
LABEL_69:
          sub_1C6D79EB0();
          __break(1u);
LABEL_70:
          result = sub_1C6D7A1C0();
          __break(1u);
          return result;
        }
      }
    }

    else
    {
      v44 = v119;
      if (v43)
      {
        v44 = v117;
        if (v43 != 1)
        {
          goto LABEL_69;
        }
      }
    }

    (*v126)(v130, v44, v131);
    (*v125)(v132, v124, v133);
    sub_1C6D761B0();
    sub_1C6C40C98(v20, type metadata accessor for SportsRecommendedScoredTag);
    v139 = v36;
    v46 = v36[2];
    v45 = v36[3];
    v21 = (v46 + 1);
    if (v46 >= v45 >> 1)
    {
      sub_1C6B39734(v45 > 1, v46 + 1, 1);
      v36 = v139;
    }

    ++a1;
    v36[2] = v21;
    (v134[4])(v36 + ((*(v134 + 80) + 32) & ~*(v134 + 80)) + v134[9] * v46, v37, v138);
    v33 = v136;
    v9 = v137;
    v26 = v37;
    if (v135 == a1)
    {
      v30 = v112;
      v47 = v114;
      a1 = v109;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  __break(1u);
LABEL_65:
  __break(1u);
LABEL_66:
  swift_once();
LABEL_19:
  v51 = v21[285];
  sub_1C6D79AC0();
  sub_1C6D78D30();
  v52 = sub_1C6B6CE5C(a1, v33);
  v54 = v53;
  v56 = v55;
  v58 = v57;
  if (v57)
  {
    sub_1C6D7A190();
    swift_unknownObjectRetain_n();

    v106 = swift_dynamicCastClass();
    if (!v106)
    {
      swift_unknownObjectRelease();
      v106 = MEMORY[0x1E69E7CC0];
    }

    v107 = *(v106 + 16);

    if (__OFSUB__(v58 >> 1, v56))
    {
      __break(1u);
    }

    else if (v107 == (v58 >> 1) - v56)
    {
      v60 = swift_dynamicCastClass();
      swift_unknownObjectRelease();
      if (!v60)
      {
        swift_unknownObjectRelease();
        return MEMORY[0x1E69E7CC0];
      }

      return v60;
    }

    swift_unknownObjectRelease();
  }

  else
  {
  }

  sub_1C6B6E5BC(v52, v54, v56, v58);
  v60 = v59;
  swift_unknownObjectRelease();
  return v60;
}

uint64_t SportsRecommendationService.recommendedTags()()
{
  v1 = *v0;
  sub_1C6C40494();
  sub_1C6D783A0();
  v2 = sub_1C6D78210();
  sub_1C6C405B0();
  sub_1C6D782C0();

  *(swift_allocObject() + 16) = 0;
  v3 = sub_1C6D78210();
  v4 = sub_1C6D782D0();

  return v4;
}

uint64_t SportsRecommendationService.recommendedTags(within:)(uint64_t a1)
{
  v3 = *v1;
  sub_1C6C40494();
  sub_1C6D783A0();
  v4 = sub_1C6D78210();
  sub_1C6C405B0();
  sub_1C6D782C0();

  *(swift_allocObject() + 16) = a1;
  swift_unknownObjectRetain();
  v5 = sub_1C6D78210();
  v6 = sub_1C6D782D0();

  return v6;
}

void sub_1C6C3A4DC(void *a1)
{
  v2 = v1;
  v4 = sub_1C6D75F50();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6C4070C(0, &qword_1EDCEA960, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v20 - v14;
  sub_1C6B0C69C(0, &qword_1EDCEA510, 0x1E69B5250);
  sub_1C6D75F30();
  [a1 recentlyFollowedDurationThreshold];
  sub_1C6D75EC0();
  (*(v5 + 8))(v8, v4);
  v16 = *(v5 + 56);
  v16(v15, 0, 1, v4);
  sub_1C6D75F30();
  v16(v12, 0, 1, v4);
  v17 = sub_1C6D0477C(v15, v12);
  v18 = v2[28];
  v19 = v2[29];
  __swift_project_boxed_opaque_existential_1(v2 + 25, v18);
  (*(v19 + 8))(v17, v18, v19);
}

char *sub_1C6C3A728(unint64_t a1, void *a2)
{
  v4 = sub_1C6D76860();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1C6D767B0();
  v70 = *(v9 - 8);
  v71 = v9;
  v10 = *(v70 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v69 = &v63 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1C6D76B00();
  v72 = *(v12 - 8);
  v13 = *(v72 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v73 = &v63 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1C6D79170();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v63 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = [a2 respondsToSelector_];
  v75 = a1;
  if ((v21 & 1) == 0 || ![a2 enableTabiCohortMemberships])
  {
    v66 = v12;
    v36 = [a2 personalizationTreatment];
    (*(v16 + 104))(v20, *MEMORY[0x1E69B5A20], v15);
    v68 = v36;
    v37 = sub_1C6D79130();
    (*(v16 + 8))(v20, v15);
    v65 = v37;
    sub_1C6C3A4DC(v37);
    if (a1 >> 62)
    {
      v38 = sub_1C6D79E90();
    }

    else
    {
      v38 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v67 = v4;
    if (v38)
    {
      v76 = MEMORY[0x1E69E7CC0];
      v22 = &v76;
      sub_1C6B39280(0, v38 & ~(v38 >> 63), 0);
      if (v38 < 0)
      {
        __break(1u);
        goto LABEL_32;
      }

      v63 = v8;
      v64 = v5;
      v39 = 0;
      v40 = v76;
      do
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v41 = MEMORY[0x1CCA56240](v39, v75);
        }

        else
        {
          v41 = *(v75 + 8 * v39 + 32);
          swift_unknownObjectRetain();
        }

        v42 = [v41 identifier];
        v43 = sub_1C6D795A0();
        v45 = v44;
        swift_unknownObjectRelease();

        v76 = v40;
        v47 = *(v40 + 16);
        v46 = *(v40 + 24);
        if (v47 >= v46 >> 1)
        {
          sub_1C6B39280((v46 > 1), v47 + 1, 1);
          v40 = v76;
        }

        ++v39;
        *(v40 + 16) = v47 + 1;
        v48 = v40 + 16 * v47;
        *(v48 + 32) = v43;
        *(v48 + 40) = v45;
      }

      while (v38 != v39);
      v8 = v63;
      v5 = v64;
    }

    v76 = v74[2];
    v49 = v76;
    sub_1C6B14DC0();
    v51 = *(v50 + 48);
    v52 = *(v50 + 52);
    swift_allocObject();
    v53 = v49;
    v76 = sub_1C6D762F0();
    v54 = v73;
    sub_1C6D76AF0();
    v55 = v68;
    result = [v68 defaultScoringConfig];
    if (result)
    {
      v56 = result;
      [result decayFactor];

      v57 = v69;
      v58 = v65;
      sub_1C6B7C3F0(v65, 0, 0, v69);
      sub_1C6D76790();
      (*(v70 + 8))(v57, v71);
      sub_1C6C406A8(&unk_1EDCEA820, 255, sub_1C6B14DC0);
      v59 = sub_1C6D76400();

      (*(v5 + 8))(v8, v67);
      (*(v72 + 8))(v54, v66);

      __swift_destroy_boxed_opaque_existential_1(v77);
      return v59;
    }

    goto LABEL_34;
  }

  v22 = v74[24];
  if (a1 >> 62)
  {
LABEL_32:
    v23 = sub_1C6D79E90();
    goto LABEL_5;
  }

  v23 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_5:
  v24 = MEMORY[0x1E69E7CC0];
  if (!v23)
  {
LABEL_29:
    v60 = sub_1C6B1E610(v24);

    v61 = ComputeServiceCohortMembershipService.evaluate(tags:)(v60);

    v62 = sub_1C6CDD9A4(v61);

    return v62;
  }

  v74 = v22;
  v77[0] = MEMORY[0x1E69E7CC0];
  result = sub_1C6B39280(0, v23 & ~(v23 >> 63), 0);
  if ((v23 & 0x8000000000000000) == 0)
  {
    v26 = 0;
    v24 = v77[0];
    v27 = a1 & 0xC000000000000001;
    do
    {
      if (v27)
      {
        v28 = MEMORY[0x1CCA56240](v26, a1);
      }

      else
      {
        v28 = *(a1 + 8 * v26 + 32);
        swift_unknownObjectRetain();
      }

      v29 = [v28 identifier];
      v30 = sub_1C6D795A0();
      v32 = v31;
      swift_unknownObjectRelease();

      v77[0] = v24;
      v34 = *(v24 + 16);
      v33 = *(v24 + 24);
      if (v34 >= v33 >> 1)
      {
        sub_1C6B39280((v33 > 1), v34 + 1, 1);
        v24 = v77[0];
      }

      ++v26;
      *(v24 + 16) = v34 + 1;
      v35 = v24 + 16 * v34;
      *(v35 + 32) = v30;
      *(v35 + 40) = v32;
      a1 = v75;
    }

    while (v23 != v26);
    goto LABEL_29;
  }

  __break(1u);
LABEL_34:
  __break(1u);
  return result;
}

id sub_1C6C3AE78(void *a1, void *a2, unint64_t a3)
{
  v5 = sub_1C6C3A728(a3, a1);
  v6 = 0.0;
  if ([a1 respondsToSelector_])
  {
    [a1 minMembershipForTaxonomyCandidates];
    v6 = v7;
  }

  v34 = MEMORY[0x1E69E7CC0];
  v8 = a3 >> 62;
  if (!(a3 >> 62))
  {
    v9 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v9)
    {
      goto LABEL_5;
    }

LABEL_25:
    v26 = MEMORY[0x1E69E7CC0];
LABEL_26:

    if (qword_1EDCE18E0 != -1)
    {
      swift_once();
    }

    sub_1C6B1D314();
    v27 = swift_allocObject();
    *(v27 + 16) = xmmword_1C6D807C0;
    if (v8)
    {
      v28 = sub_1C6D79E90();
    }

    else
    {
      v28 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v29 = MEMORY[0x1E69E6530];
    v30 = MEMORY[0x1E69E65A8];
    *(v27 + 56) = MEMORY[0x1E69E6530];
    *(v27 + 64) = v30;
    *(v27 + 32) = v28;
    if (v26 < 0 || (v26 & 0x4000000000000000) != 0)
    {
      v31 = sub_1C6D79E90();
    }

    else
    {
      v31 = *(v26 + 16);
    }

    *(v27 + 96) = v29;
    *(v27 + 104) = v30;
    *(v27 + 72) = v31;
    sub_1C6D79910();
    *(v27 + 136) = MEMORY[0x1E69E6158];
    *(v27 + 144) = sub_1C6B2064C();
    *(v27 + 112) = 0;
    *(v27 + 120) = 0xE000000000000000;
    sub_1C6D79AC0();
    sub_1C6D78D30();

    return v26;
  }

LABEL_24:
  v9 = sub_1C6D79E90();
  if (!v9)
  {
    goto LABEL_25;
  }

LABEL_5:
  v10 = 0;
  v32 = v8;
  while (1)
  {
    if ((a3 & 0xC000000000000001) != 0)
    {
      v11 = MEMORY[0x1CCA56240](v10, a3);
      v8 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
LABEL_21:
        __break(1u);
LABEL_22:
        v26 = v34;
        v8 = v32;
        goto LABEL_26;
      }
    }

    else
    {
      if (v10 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_24;
      }

      v11 = *(a3 + 8 * v10 + 32);
      swift_unknownObjectRetain();
      v8 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        goto LABEL_21;
      }
    }

    result = [a2 defaultScoringConfig];
    if (!result)
    {
      break;
    }

    v13 = result;
    v14 = [result userCohort];

    [v14 userBaseline];
    v16 = v15;

    v17 = [v11 identifier];
    v18 = sub_1C6D795A0();
    v20 = v19;

    if (*(v5 + 2))
    {
      v21 = sub_1C6B5DEA8(v18, v20);
      v23 = v22;

      if (v23)
      {
        v24 = *(v5 + 7) + 16 * v21;
        if ((*(v24 + 8) & 1) == 0)
        {
          v16 = *v24;
        }
      }
    }

    else
    {
    }

    if (v6 > v16)
    {
      swift_unknownObjectRelease();
    }

    else
    {
      sub_1C6D79DC0();
      v25 = *(v34 + 16);
      sub_1C6D79E00();
      sub_1C6D79E10();
      sub_1C6D79DD0();
    }

    ++v10;
    if (v8 == v9)
    {
      goto LABEL_22;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C6C3B210(id *a1, void *a2, uint64_t a3)
{
  v5 = *a1;
  result = [*a1 isSportsRecommendable];
  if (result)
  {
    v7 = a2[4];
    __swift_project_boxed_opaque_existential_1(a2, a2[3]);
    v8 = sub_1C6D76070();
    v9 = [v5 identifier];
    v10 = sub_1C6D795A0();
    v12 = v11;

    LOBYTE(v9) = sub_1C6B1E978(v10, v12, v8);

    if (v9)
    {
      return 0;
    }

    v13 = sub_1C6C3B418(v5);
    v14 = a2[4];
    __swift_project_boxed_opaque_existential_1(a2, a2[3]);
    v15 = sub_1C6D76080();
    v16 = sub_1C6C3B534(v13, v15);

    if ((v16 & 1) == 0)
    {
      return 0;
    }

    v17 = [*(a3 + 24) appConfiguration];
    if ([v17 respondsToSelector_])
    {
      v18 = [v17 sportsRecommendationHidesIgnoredTags];
      swift_unknownObjectRelease();
      if (v18)
      {
        v19 = a2[4];
        __swift_project_boxed_opaque_existential_1(a2, a2[3]);
        v20 = sub_1C6D76090();
        v21 = [v5 identifier];
        v22 = sub_1C6D795A0();
        v24 = v23;

        LOBYTE(v21) = sub_1C6B1E978(v22, v24, v20);

        if (v21)
        {
          return 0;
        }
      }
    }

    else
    {
      swift_unknownObjectRelease();
    }

    return 1;
  }

  return result;
}

uint64_t sub_1C6C3B418(void *a1)
{
  v2 = [a1 topLevelGroupsTagIdentifiers];
  if (v2)
  {
    v3 = v2;
    v4 = sub_1C6D79780();
  }

  else
  {
    v4 = MEMORY[0x1E69E7CC0];
  }

  v5 = sub_1C6B1E610(v4);

  v17 = v5;
  v6 = [a1 identifier];
  v7 = sub_1C6D795A0();
  v9 = v8;

  sub_1C6B1E6A8(&v16, v7, v9);

  v10 = [a1 topLevelSportTagIdentifier];
  if (v10)
  {
    v11 = v10;
    v12 = sub_1C6D795A0();
    v14 = v13;

    sub_1C6B1E6A8(&v16, v12, v14);
  }

  return v17;
}

uint64_t sub_1C6C3B534(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    return 1;
  }

  v3 = *(a1 + 16);
  if (!v3)
  {
    return 1;
  }

  if (v2 >= v3)
  {
    v4 = a1;
  }

  else
  {
    v4 = a2;
  }

  v5 = v4 + 56;
  if (v2 >= v3)
  {
    v6 = a2;
  }

  else
  {
    v6 = a1;
  }

  v7 = 1 << *(v4 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(v4 + 56);
  v10 = (v7 + 63) >> 6;
  v11 = v6 + 56;

  v13 = 0;
  v26 = v4;
  while (v9)
  {
    v14 = v9;
LABEL_19:
    v9 = (v14 - 1) & v14;
    if (*(v6 + 16))
    {
      v16 = (*(v4 + 48) + ((v13 << 10) | (16 * __clz(__rbit64(v14)))));
      v18 = *v16;
      v17 = v16[1];
      v19 = *(v6 + 40);
      sub_1C6D7A260();

      sub_1C6D79610();
      v20 = sub_1C6D7A2B0();
      v21 = -1 << *(v6 + 32);
      v22 = v20 & ~v21;
      if ((*(v11 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22))
      {
        v23 = ~v21;
        while (1)
        {
          v24 = (*(v6 + 48) + 16 * v22);
          v25 = *v24 == v18 && v24[1] == v17;
          if (v25 || (sub_1C6D7A130() & 1) != 0)
          {
            break;
          }

          v22 = (v22 + 1) & v23;
          if (((*(v11 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22) & 1) == 0)
          {
            goto LABEL_28;
          }
        }

        return 0;
      }

LABEL_28:

      v4 = v26;
    }
  }

  while (1)
  {
    v15 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v15 >= v10)
    {

      return 1;
    }

    v14 = *(v5 + 8 * v15);
    ++v13;
    if (v14)
    {
      v13 = v15;
      goto LABEL_19;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C6C3B71C(void *a1, uint64_t a2)
{
  v4 = a1[3];
  swift_getObjectType();
  sub_1C6D79B50();
  v5 = *__swift_project_boxed_opaque_existential_1(a1 + 9, a1[12]);
  sub_1C6BDF2C4(a2);
  v6 = a1[23];
  __swift_project_boxed_opaque_existential_1(a1 + 19, a1[22]);
  sub_1C6D79310();
  sub_1C6B1AC10();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  sub_1C6D78350();
  v10 = sub_1C6D78380();

  return v10;
}

void sub_1C6C3B834(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  v9 = *(a5 + 16);
  v10 = swift_allocObject();
  *(v10 + 16) = sub_1C6C40F6C;
  *(v10 + 24) = v8;
  v12[4] = sub_1C6BF507C;
  v12[5] = v10;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 1107296256;
  v12[2] = sub_1C6B20B90;
  v12[3] = &block_descriptor_6;
  v11 = _Block_copy(v12);

  [v9 prepareAggregatesForUseWithCompletionHandler_];
  _Block_release(v11);
}

id sub_1C6C3B948(uint64_t a1, void *a2)
{
  v4 = sub_1C6D79170();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  v10 = *(a1 + 8);
  v12 = *(a1 + 16);
  LOBYTE(a1) = [*a1 respondsToSelector_];
  v53 = v11;
  swift_unknownObjectRetain();

  v13 = v12;
  v52 = v13;
  if ((a1 & 1) != 0 && ![v53 considerAutofavoritesInMappingCandidates])
  {
    v19 = [v13 subscribedTags];
    sub_1C6B0F7A8(0, &qword_1EDCDF8D0, &protocolRef_FCTagProviding);
    v18 = sub_1C6D79780();
  }

  else
  {
    v14 = [v13 subscribedTags];
    sub_1C6B0F7A8(0, &qword_1EDCDF8D0, &protocolRef_FCTagProviding);
    v15 = sub_1C6D79780();

    v16 = [v13 autoFavoriteTags];
    v17 = sub_1C6D79780();

    v55[0] = v15;
    sub_1C6B38CC4(v17);
    v18 = v55[0];
  }

  v20 = [v53 personalizationTreatment];
  (*(v5 + 104))(v9, *MEMORY[0x1E69B5A20], v4);
  v21 = sub_1C6D79130();
  (*(v5 + 8))(v9, v4);
  sub_1C6C3A4DC(v21);
  v22 = __swift_project_boxed_opaque_existential_1(a2 + 14, a2[17]);
  v51 = v21;
  if (v10 >> 62)
  {
    sub_1C6B0F7A8(0, &qword_1EDCDF8D0, &protocolRef_FCTagProviding);

    v24 = sub_1C6D79EC0();
  }

  else
  {
    v23 = v10 & 0xFFFFFFFFFFFFFF8;

    sub_1C6D7A180();
    sub_1C6B0F7A8(0, &qword_1EDCDF8D0, &protocolRef_FCTagProviding);
    v24 = v10;
    if (!swift_dynamicCastMetatype())
    {
      v47 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v24 = v10;
      if (v47)
      {
        v48 = (v23 + 32);
        while (1)
        {
          v49 = *v48;
          v55[6] = &unk_1F46987B8;
          if (!swift_dynamicCastObjCProtocolConditional())
          {
            break;
          }

          ++v48;
          if (!--v47)
          {
            v24 = v10;
            goto LABEL_7;
          }
        }

        v24 = v23 | 1;
      }
    }
  }

LABEL_7:
  v54[0] = v24;

  sub_1C6B38CC4(v25);
  v26 = *v22;
  v50[1] = sub_1C6BBC0E4(v54[0]);

  v27 = *__swift_project_boxed_opaque_existential_1(a2 + 14, a2[17]);
  sub_1C6BBC0E4(v18);

  v28 = *__swift_project_boxed_opaque_existential_1(a2 + 4, a2[7]);
  sub_1C6BB32CC(v55);
  v54[0] = v53;
  sub_1C6C40DC4();
  v30 = *(v29 + 48);
  v31 = *(v29 + 52);
  swift_allocObject();
  swift_unknownObjectRetain();
  sub_1C6D78300();
  v54[0] = v20;
  sub_1C6C40E2C();
  v33 = *(v32 + 48);
  v34 = *(v32 + 52);
  swift_allocObject();
  v50[0] = v20;
  sub_1C6D78300();
  v54[0] = v10;
  sub_1C6C4070C(0, &qword_1EDCE5D60, sub_1C6C40548, MEMORY[0x1E69D6B18]);
  v36 = *(v35 + 48);
  v37 = *(v35 + 52);
  swift_allocObject();
  sub_1C6D78300();
  v38 = v51;
  v54[0] = v51;
  sub_1C6C40E94();
  v40 = *(v39 + 48);
  v41 = *(v39 + 52);
  swift_allocObject();
  v42 = v38;
  sub_1C6D78300();
  sub_1C6B16F28(v55, v54);
  sub_1C6C40EFC();
  v44 = *(v43 + 48);
  v45 = *(v43 + 52);
  swift_allocObject();
  sub_1C6D78300();
  v51 = sub_1C6D78370();

  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1(v55);
  return v51;
}

uint64_t sub_1C6C3BED8@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X2>, unint64_t **a4@<X8>)
{
  v79 = a3;
  v75 = a2;
  v72 = a4;
  sub_1C6C405B0();
  v6 = (v5 - 8);
  v7 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v65 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6BB5940();
  v73 = *(v10 - 8);
  v74 = v10;
  v11 = *(v73 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = (&v65 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = type metadata accessor for SportsTopicMappingServiceResult();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  isUniquelyReferenced_nonNull_native = &v65 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v65 - v19;
  sub_1C6C4086C(a1, v9, sub_1C6C405B0);
  v21 = v6[14];
  v22 = v6[18];
  v23 = *&v9[v6[22]];
  v24 = *&v9[v6[26]];
  v25 = *&v9[v6[30]];
  v67 = *&v9[v6[34]];
  v77 = v6[38];
  v78 = v22;
  v69 = v20;
  sub_1C6C40C30(v9, v20, type metadata accessor for SportsTopicMappingServiceResult);
  sub_1C6C40C30(&v9[v21], isUniquelyReferenced_nonNull_native, type metadata accessor for SportsTopicMappingServiceResult);
  v26 = *(v73 + 32);
  v71 = v13;
  v26(v13, &v9[v78], v74);
  sub_1C6B15E34(&v9[v77], v81);
  v66 = v23;
  v68 = v24;
  v27 = sub_1C6C3AE78(v23, v24, v25);

  if (v79)
  {
    v28 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v28 = *isUniquelyReferenced_nonNull_native;
  }

  v82 = v27;

  sub_1C6B38BB4(v29);
  v30 = v82;
  if (qword_1EDCE18E0 != -1)
  {
LABEL_42:
    swift_once();
  }

  v79 = off_1EDCE18E8;
  sub_1C6B1D314();
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_1C6D807C0;
  v70 = isUniquelyReferenced_nonNull_native;
  if (v30 >> 62)
  {
    v32 = sub_1C6D79E90();
  }

  else
  {
    v32 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v33 = MEMORY[0x1E69E6530];
  v34 = MEMORY[0x1E69E65A8];
  *(v31 + 56) = MEMORY[0x1E69E6530];
  *(v31 + 64) = v34;
  *(v31 + 32) = v32;
  if (v27 >> 62)
  {
    v35 = sub_1C6D79E90();
  }

  else
  {
    v35 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  *(v31 + 96) = v33;
  *(v31 + 104) = v34;
  *(v31 + 72) = v35;
  if (v28 >> 62)
  {
    v36 = sub_1C6D79E90();
  }

  else
  {
    v36 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v27 = v80;

  *(v31 + 136) = v33;
  *(v31 + 144) = v34;
  *(v31 + 112) = v36;
  sub_1C6D79AC0();
  sub_1C6D78D30();

  MEMORY[0x1EEE9AC00](v37);
  *(&v65 - 2) = v81;
  *(&v65 - 1) = v75;
  v38 = sub_1C6C390C0(sub_1C6C408D4, &v65 - 4, v30);
  v65 = v27;
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_1C6D7EB10;
  *(v30 + 56) = v33;
  *(v30 + 64) = v34;
  *(v30 + 32) = v32;
  if (v38 >> 62)
  {
    v39 = sub_1C6D79E90();
  }

  else
  {
    v39 = *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  *(v30 + 96) = v33;
  *(v30 + 104) = v34;
  *(v30 + 72) = v39;
  sub_1C6D79AC0();
  sub_1C6D78D30();

  if (v38 >> 62)
  {
    isUniquelyReferenced_nonNull_native = sub_1C6D79E90();
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_15;
    }
  }

  else
  {
    isUniquelyReferenced_nonNull_native = *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (isUniquelyReferenced_nonNull_native)
    {
LABEL_15:
      v40 = 0;
      v78 = v38 & 0xFFFFFFFFFFFFFF8;
      v79 = (v38 & 0xC000000000000001);
      v28 = MEMORY[0x1E69E7CC8];
      v76 = isUniquelyReferenced_nonNull_native;
      v77 = v38;
      while (1)
      {
        if (v79)
        {
          v43 = MEMORY[0x1CCA56240](v40, v38);
          v44 = (v40 + 1);
          if (__OFADD__(v40, 1))
          {
            goto LABEL_38;
          }
        }

        else
        {
          if (v40 >= *(v78 + 16))
          {
            goto LABEL_39;
          }

          v43 = *(v38 + 8 * v40 + 32);
          swift_unknownObjectRetain();
          v44 = (v40 + 1);
          if (__OFADD__(v40, 1))
          {
LABEL_38:
            __break(1u);
LABEL_39:
            __break(1u);
LABEL_40:
            __break(1u);
LABEL_41:
            __break(1u);
            goto LABEL_42;
          }
        }

        v80 = v44;
        v45 = [v43 identifier];
        v46 = sub_1C6D795A0();
        v48 = v47;

        swift_unknownObjectRetain();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v82 = v28;
        v30 = v28;
        v50 = sub_1C6B5DEA8(v46, v48);
        v51 = *(v28 + 16);
        v52 = (v49 & 1) == 0;
        v53 = v51 + v52;
        if (__OFADD__(v51, v52))
        {
          goto LABEL_40;
        }

        v27 = v49;
        if (*(v28 + 24) >= v53)
        {
          if (isUniquelyReferenced_nonNull_native)
          {
            if (v49)
            {
              goto LABEL_16;
            }
          }

          else
          {
            v30 = &v82;
            sub_1C6B74780();
            if (v27)
            {
              goto LABEL_16;
            }
          }
        }

        else
        {
          sub_1C6B71754(v53, isUniquelyReferenced_nonNull_native);
          v30 = v82;
          v54 = sub_1C6B5DEA8(v46, v48);
          if ((v27 & 1) != (v55 & 1))
          {
            result = sub_1C6D7A1C0();
            __break(1u);
            return result;
          }

          v50 = v54;
          if (v27)
          {
LABEL_16:

            v28 = v82;
            v41 = v82[7];
            v42 = *(v41 + 8 * v50);
            *(v41 + 8 * v50) = v43;
            swift_unknownObjectRelease();
            swift_unknownObjectRelease();
            goto LABEL_17;
          }
        }

        v28 = v82;
        v82[(v50 >> 6) + 8] |= 1 << v50;
        v56 = (*(v28 + 48) + 16 * v50);
        *v56 = v46;
        v56[1] = v48;
        *(*(v28 + 56) + 8 * v50) = v43;
        swift_unknownObjectRelease();
        v57 = *(v28 + 16);
        v58 = __OFADD__(v57, 1);
        v59 = v57 + 1;
        if (v58)
        {
          goto LABEL_41;
        }

        *(v28 + 16) = v59;
LABEL_17:
        ++v40;
        isUniquelyReferenced_nonNull_native = v76;
        v38 = v77;
        if (v80 == v76)
        {
          goto LABEL_37;
        }
      }
    }
  }

  v28 = MEMORY[0x1E69E7CC8];
LABEL_37:

  v60 = v71;
  v61 = v67;
  v63 = v68;
  v62 = v69;
  sub_1C6C3C664(v28, v66, v68, v67, v81, v71, v69, v72);

  swift_unknownObjectRelease();

  (*(v73 + 8))(v60, v74);
  sub_1C6C40C98(v70, type metadata accessor for SportsTopicMappingServiceResult);
  sub_1C6C40C98(v62, type metadata accessor for SportsTopicMappingServiceResult);
  return __swift_destroy_boxed_opaque_existential_1(v81);
}

uint64_t sub_1C6C3C664@<X0>(void *a1@<X0>, unint64_t *a2@<X1>, void *a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, void (**a6)(void, uint64_t)@<X5>, uint64_t a7@<X6>, unint64_t **a8@<X8>)
{
  v185 = a7;
  v188 = a6;
  v186 = a5;
  v190 = a4;
  v196 = a3;
  v213 = a2;
  v176 = a8;
  v10 = *v8;
  v11 = MEMORY[0x1E69E6530];
  sub_1C6C408F4(0, &qword_1EDCDF920, type metadata accessor for SportsRecommendedScoredTag);
  v207 = v12;
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v206 = (v166 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v15);
  v171 = v166 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v205 = v166 - v18;
  sub_1C6C4070C(0, qword_1EDCE1148, type metadata accessor for SportsRecommendedScoredTag, MEMORY[0x1E69E6720]);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v210 = v166 - v21;
  v215 = type metadata accessor for SportsRecommendedScoredTag();
  v209 = *(v215 - 8);
  v22 = *(v209 + 64);
  MEMORY[0x1EEE9AC00](v215);
  v24 = v166 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v212 = v166 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v203 = v166 - v28;
  sub_1C6B3CA94();
  v195 = v29;
  v214 = *(v29 - 8);
  v30 = *(v214 + 64);
  MEMORY[0x1EEE9AC00](v29);
  v32 = (v166 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v33);
  v202 = (v166 - v34);
  v208 = sub_1C6D76BD0();
  v198 = *(v208 - 8);
  v35 = v198[8];
  MEMORY[0x1EEE9AC00](v208);
  *&v201 = v166 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = MEMORY[0x1E69E6158];
  sub_1C6C408F4(0, &qword_1EDCDFBA8, MEMORY[0x1E69E3560]);
  v194 = v38;
  v39 = *(*(v38 - 8) + 64);
  MEMORY[0x1EEE9AC00](v38);
  v193 = (v166 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v41);
  v200 = (v166 - v42);
  v184 = sub_1C6D76860();
  v183 = *(v184 - 8);
  v43 = *(v183 + 64);
  MEMORY[0x1EEE9AC00](v184);
  v182 = v166 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v179 = sub_1C6D767B0();
  v178 = *(v179 - 8);
  v45 = *(v178 + 64);
  MEMORY[0x1EEE9AC00](v179);
  v177 = v166 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v181 = sub_1C6D76B00();
  v180 = *(v181 - 8);
  v47 = *(v180 + 64);
  MEMORY[0x1EEE9AC00](v181);
  v189 = v166 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v173 = sub_1C6D76190();
  j = *(v173 - 8);
  v49 = *(j + 64);
  MEMORY[0x1EEE9AC00](v173);
  v172 = v166 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v51);
  v170 = v166 - v52;
  v53 = sub_1C6D76F80();
  v54 = *(v53 - 8);
  v55 = *(v54 + 64);
  MEMORY[0x1EEE9AC00](v53);
  v187 = v166 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDCE6110 != -1)
  {
    goto LABEL_76;
  }

  while (1)
  {
    v58 = sub_1C6D77170();
    if (v58)
    {
      if (qword_1EC1D58E0 != -1)
      {
        goto LABEL_78;
      }

      goto LABEL_4;
    }

    for (i = 0; ; i = v220)
    {
      v60 = [v196 sportsTagScoringConfig];
      if (!v60)
      {
        goto LABEL_81;
      }

      v61 = v60;
      sub_1C6B7DDF0(i, (v58 & 1) == 0);

      if (qword_1EDCE18E0 != -1)
      {
        swift_once();
      }

      v174 = v54;
      v62 = off_1EDCE18E8;
      sub_1C6B1D314();
      v218 = v63;
      v64 = swift_allocObject();
      *(v64 + 16) = xmmword_1C6D7EB10;
      v65 = a1[2];
      v66 = MEMORY[0x1E69E65A8];
      *(v64 + 56) = v11;
      *(v64 + 64) = v66;
      *(v64 + 32) = v65;
      v220 = 0;
      v221 = 0xE000000000000000;
      v175 = v53;
      sub_1C6D79E60();
      v67 = v220;
      v68 = v221;
      *(v64 + 96) = v37;
      v217 = sub_1C6B2064C();
      *(v64 + 104) = v217;
      *(v64 + 72) = v67;
      *(v64 + 80) = v68;
      sub_1C6D79AC0();
      v216 = v62;
      sub_1C6D78D30();

      v69 = a1[2];
      v211 = a1;
      v197 = v32;
      if (!v69)
      {
        break;
      }

      v54 = sub_1C6B6732C(v69, 0);
      v11 = sub_1C6B68220(&v220, (v54 + 32), v69, a1);
      a1 = v220;
      v32 = v221;
      v58 = v222;
      v53 = v223;

      sub_1C6B688C4();
      if (v11 == v69)
      {
        a1 = v211;
        goto LABEL_13;
      }

      __break(1u);
LABEL_78:
      swift_once();
LABEL_4:
      sub_1C6C406A8(&qword_1EC1D8220, v57, type metadata accessor for SportsRecommendationService);
      sub_1C6D77110();
    }

    v54 = MEMORY[0x1E69E7CC0];
LABEL_13:
    v204 = v24;
    v53 = *(v54 + 16);
    if (v53)
    {
      break;
    }

    v199 = MEMORY[0x1E69E7CC8];
LABEL_33:
    v93 = *(v192 + 16);
    v94 = swift_allocObject();
    v95 = v190;
    v96 = v196;
    *(v94 + 16) = v190;
    *(v94 + 24) = v96;
    *(swift_allocObject() + 16) = v96;
    v220 = v93;
    sub_1C6B14DC0();
    v58 = v97;
    v98 = *(v97 + 48);
    v99 = *(v97 + 52);
    swift_allocObject();
    v32 = v96;
    v100 = v93;
    v101 = v95;
    v24 = sub_1C6D762F0();
    v220 = v24;
    [v101 baselineRatePrior];
    [v32 baselineImpressionPrior];
    [v32 baselineImpressionPrior];
    v102 = v189;
    sub_1C6D76AF0();
    v103 = [v32 defaultScoringConfig];
    if (!v103)
    {
      goto LABEL_82;
    }

    v104 = v103;
    [v103 decayFactor];

    v105 = type metadata accessor for SportsTopicMappingServiceResult();
    v106 = *(v105 + 20);
    v107 = *(v105 + 24);
    v108 = v177;
    sub_1C6B7C3F0(v101, 0, 0, v177);
    v109 = v182;
    sub_1C6D76790();
    (*(v178 + 8))(v108, v179);
    *&v219 = MEMORY[0x1E69E7CC0];
    sub_1C6C40A58(MEMORY[0x1E69E7CC0]);
    sub_1C6C406A8(&unk_1EDCEA820, 255, sub_1C6B14DC0);
    v110 = sub_1C6D76410();

    (*(v183 + 8))(v109, v184);
    (*(v180 + 8))(v102, v181);

    v111 = v110 + 64;
    v112 = 1 << *(v110 + 32);
    v113 = -1;
    if (v112 < 64)
    {
      v113 = ~(-1 << v112);
    }

    v11 = v113 & *(v110 + 64);
    v54 = (v112 + 63) >> 6;
    v190 = v198 + 2;
    v189 = (v198 + 4);
    v188 = (v198 + 1);
    v196 = v110;

    v37 = 0;
    a1 = v210;
    v53 = v211;
    v32 = v197;
    v192 = v110 + 64;
    for (j = v54; v11; v53 = v211)
    {
LABEL_41:
      v115 = __clz(__rbit64(v11)) | (v37 << 6);
      v116 = *(v196 + 7);
      v117 = (*(v196 + 6) + 16 * v115);
      v118 = *v117;
      v199 = v117[1];
      v119 = v199;
      v120 = v198;
      v121 = v194;
      v24 = v198[2];
      v122 = v200;
      v123 = v208;
      (v24)(v200 + *(v194 + 48), v116 + v198[9] * v115, v208);
      *v122 = v118;
      v122[1] = v119;
      v124 = v122;
      v125 = v193;
      sub_1C6C40B60(v124, v193, &qword_1EDCDFBA8, MEMORY[0x1E69E3560]);
      v126 = *v125;
      v127 = v125[1];
      v128 = v120[4];
      v129 = v201;
      v128(v201, v125 + *(v121 + 48), v123);
      v130 = *(v195 + 48);
      v131 = v202;
      *v202 = v126;
      v131[1] = v127;
      (v24)(v131 + v130, v129, v123);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        *&v219 = sub_1C6B669F4(0, *(v219 + 16) + 1, 1, v219);
      }

      v133 = *(v219 + 16);
      v132 = *(v219 + 24);
      v32 = v197;
      v111 = v192;
      v54 = j;
      if (v133 >= v132 >> 1)
      {
        *&v219 = sub_1C6B669F4(v132 > 1, v133 + 1, 1, v219);
      }

      v11 &= v11 - 1;
      (*v188)(v201, v208);
      sub_1C6C40BD4(v200, &qword_1EDCDFBA8, MEMORY[0x1E69E3560]);
      v134 = v219;
      *(v219 + 16) = v133 + 1;
      sub_1C6C40C30(v202, v134 + ((*(v214 + 80) + 32) & ~*(v214 + 80)) + *(v214 + 72) * v133, sub_1C6B3CA94);
      a1 = v210;
    }

    while (1)
    {
      v114 = (v37 + 1);
      if (__OFADD__(v37, 1))
      {
        __break(1u);
LABEL_71:
        __break(1u);
        goto LABEL_72;
      }

      if (v114 >= v54)
      {
        break;
      }

      v11 = *(v111 + 8 * v114);
      v37 = (v37 + 1);
      if (v11)
      {
        v37 = v114;
        goto LABEL_41;
      }
    }

    v220 = v219;

    sub_1C6C3EBEC(&v220);

    v135 = v220;
    v11 = *(v220 + 2);
    v136 = MEMORY[0x1E69E7CC0];
    if (v11)
    {
      v54 = 0;
      v37 = (v209 + 48);
      *&v219 = MEMORY[0x1E69E7CC0];
      v24 = qword_1EDCE1148;
      while (v54 < *(v135 + 2))
      {
        sub_1C6C4086C(&v135[((*(v214 + 80) + 32) & ~*(v214 + 80)) + *(v214 + 72) * v54], v32, sub_1C6B3CA94);
        sub_1C6C3E0A4(v32, v53, v213, a1);
        sub_1C6C40C98(v32, sub_1C6B3CA94);
        if ((*v37)(a1, 1, v215) == 1)
        {
          sub_1C6C40CF8(a1, qword_1EDCE1148, type metadata accessor for SportsRecommendedScoredTag);
        }

        else
        {
          v137 = a1;
          v138 = v203;
          sub_1C6C40C30(v137, v203, type metadata accessor for SportsRecommendedScoredTag);
          sub_1C6C40C30(v138, v212, type metadata accessor for SportsRecommendedScoredTag);
          v139 = v219;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v139 = sub_1C6B669C0(0, v139[2] + 1, 1, v139);
          }

          v141 = v139[2];
          v140 = v139[3];
          *&v219 = v139;
          if (v141 >= v140 >> 1)
          {
            *&v219 = sub_1C6B669C0(v140 > 1, v141 + 1, 1, v219);
          }

          v142 = v219;
          *(v219 + 16) = v141 + 1;
          sub_1C6C40C30(v212, v142 + ((*(v209 + 80) + 32) & ~*(v209 + 80)) + *(v209 + 72) * v141, type metadata accessor for SportsRecommendedScoredTag);
          a1 = v210;
          v53 = v211;
        }

        if (v11 == ++v54)
        {
          goto LABEL_59;
        }
      }

LABEL_72:
      __break(1u);
      goto LABEL_73;
    }

    *&v219 = MEMORY[0x1E69E7CC0];
LABEL_59:

    v11 = v219;
    v143 = *(v219 + 16);
    if (!v143)
    {

      result = (*(v174 + 8))(v187, v175);
      v144 = MEMORY[0x1E69E7CC0];
LABEL_69:
      *v176 = v144;
      return result;
    }

    v220 = v136;
    sub_1C6B39784(0, v143, 0);
    v53 = 0;
    v144 = v220;
    v203 = *(v11 + 16);
    v199 = (*(v209 + 80) + 32) & ~*(v209 + 80);
    v202 = (v11 + v199);
    v37 = &qword_1EDCDF920;
    v24 = "offset element ";
    v201 = xmmword_1C6D80210;
    v54 = MEMORY[0x1E69E6530];
    v32 = v171;
    v200 = v143;
    while (v203 != v53)
    {
      if (v53 >= *(v11 + 16))
      {
        goto LABEL_74;
      }

      v213 = v144;
      v145 = v207;
      v146 = *(v207 + 48);
      v212 = *(v209 + 72);
      v147 = v205;
      sub_1C6C4086C(v202 + v212 * v53, &v205[v146], type metadata accessor for SportsRecommendedScoredTag);
      v211 = v53;
      *v32 = v53;
      sub_1C6C40C30(&v147[v146], v32 + *(v145 + 48), type metadata accessor for SportsRecommendedScoredTag);
      v148 = v206;
      sub_1C6C40B60(v32, v206, v37, type metadata accessor for SportsRecommendedScoredTag);
      v214 = *v148;
      v11 = v204;
      sub_1C6C40C30(v148 + *(v145 + 48), v204, type metadata accessor for SportsRecommendedScoredTag);
      LODWORD(v210) = sub_1C6D79A90();
      a1 = swift_allocObject();
      *(a1 + 1) = v201;
      v149 = *v11;
      v150 = [*v11 name];
      v151 = v54;
      v152 = sub_1C6D795A0();
      v154 = v153;

      v53 = v37;
      v37 = MEMORY[0x1E69E6158];
      v24 = v217;
      a1[7] = MEMORY[0x1E69E6158];
      a1[8] = v24;
      a1[4] = v152;
      a1[5] = v154;
      v155 = [v149 identifier];
      v156 = sub_1C6D795A0();
      v54 = v157;

      a1[12] = v37;
      a1[13] = v24;
      a1[9] = v156;
      a1[10] = v54;
      v158 = v214 + 1;
      if (__OFADD__(v214, 1))
      {
        goto LABEL_75;
      }

      a1[17] = v151;
      a1[18] = MEMORY[0x1E69E65A8];
      a1[14] = v158;
      v159 = *(v215 + 20);
      sub_1C6C406A8(&unk_1EDCE6238, 255, MEMORY[0x1E69E3560]);
      v160 = sub_1C6D7A0E0();
      a1[22] = v37;
      a1[23] = v24;
      a1[19] = v160;
      a1[20] = v161;
      sub_1C6D78D30();

      v24 = "offset element ";
      sub_1C6C40BD4(v32, v53, type metadata accessor for SportsRecommendedScoredTag);
      v144 = v213;
      v220 = v213;
      v163 = v213[2];
      v162 = v213[3];
      a1 = (v163 + 1);
      v54 = v151;
      v37 = v53;
      if (v163 >= v162 >> 1)
      {
        sub_1C6B39784(v162 > 1, v163 + 1, 1);
        v144 = v220;
      }

      v164 = v212;
      v53 = v211 + 1;
      v144[2] = a1;
      sub_1C6C40C30(v11, v144 + v199 + v163 * v164, type metadata accessor for SportsRecommendedScoredTag);
      v11 = v219;
      if (v200 == v53)
      {
        (*(v174 + 8))(v187, v175);

        goto LABEL_69;
      }
    }

LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
LABEL_75:
    __break(1u);
LABEL_76:
    swift_once();
  }

  v70 = 0;
  v169 = (j + 32);
  v166[1] = j + 40;
  v71 = v54 + 40;
  v167 = v53 - 1;
  v199 = MEMORY[0x1E69E7CC8];
  v219 = xmmword_1C6D7E630;
  v168 = v54 + 40;
  while (2)
  {
    v11 = v71 + 16 * v70;
    v72 = v70;
    while (1)
    {
      if (v72 >= *(v54 + 16))
      {
        goto LABEL_71;
      }

      v58 = *(v11 - 8);
      v32 = *v11;
      v75 = a1[2];

      if (v75)
      {
        v76 = sub_1C6B5DEA8(v58, v32);
        if (v77)
        {
          break;
        }
      }

      ++v72;
      v73 = swift_allocObject();
      *(v73 + 16) = v219;
      v74 = v217;
      *(v73 + 56) = v37;
      *(v73 + 64) = v74;
      *(v73 + 32) = v58;
      *(v73 + 40) = v32;

      sub_1C6D79AC0();
      sub_1C6D78D30();

      v11 += 16;
      if (v53 == v72)
      {
        goto LABEL_33;
      }
    }

    v24 = *(a1[7] + 8 * v76);
    [swift_unknownObjectRetain() subscriptionRate];
    LOBYTE(v220) = 1;
    v78 = v170;
    sub_1C6D76180();
    v79 = *v169;
    (*v169)(v172, v78, v173);
    v80 = v199;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v220 = v80;
    v82 = sub_1C6B5DEA8(v58, v32);
    v84 = *(v80 + 2);
    v85 = (v83 & 1) == 0;
    v86 = __OFADD__(v84, v85);
    v87 = v84 + v85;
    if (!v86)
    {
      if (*(v80 + 3) >= v87)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v199 = v82;
          v92 = v83;
          sub_1C6B73A18();
          LOBYTE(v83) = v92;
          v82 = v199;
        }
      }

      else
      {
        LODWORD(v199) = v83;
        sub_1C6B70294(v87, isUniquelyReferenced_nonNull_native);
        v82 = sub_1C6B5DEA8(v58, v32);
        v88 = v83 & 1;
        LOBYTE(v83) = v199;
        if ((v199 & 1) != v88)
        {
          goto LABEL_83;
        }
      }

      a1 = v211;
      v199 = v220;
      if (v83)
      {
        (*(j + 40))(*(v220 + 7) + *(j + 72) * v82, v172, v173);

        swift_unknownObjectRelease();
      }

      else
      {
        *&v220[8 * (v82 >> 6) + 64] |= 1 << v82;
        v89 = (*(v199 + 48) + 16 * v82);
        *v89 = v58;
        v89[1] = v32;
        v79((*(v199 + 56) + *(j + 72) * v82), v172, v173);
        swift_unknownObjectRelease();
        v90 = *(v199 + 16);
        v86 = __OFADD__(v90, 1);
        v91 = v90 + 1;
        if (v86)
        {
          goto LABEL_80;
        }

        *(v199 + 16) = v91;
      }

      v71 = v168;
      v70 = v72 + 1;
      if (v167 != v72)
      {
        continue;
      }

      goto LABEL_33;
    }

    break;
  }

  __break(1u);
LABEL_80:
  __break(1u);
LABEL_81:
  __break(1u);
LABEL_82:
  __break(1u);

  sub_1C6C40C98(v32, sub_1C6B3CA94);

  __break(1u);
LABEL_83:
  sub_1C6D7A1C0();
  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_1C6C3E0A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, void *a4@<X8>)
{
  v55 = a4;
  v52 = a3;
  sub_1C6B3CA94();
  v7 = v6 - 8;
  v8 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = (&v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = sub_1C6D76BD0();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6C4086C(a1, v10, sub_1C6B3CA94);
  v17 = *v10;
  v16 = v10[1];
  v18 = *(v7 + 56);
  v53 = v12;
  v54 = v11;
  v19 = v15;
  v51 = *(v12 + 32);
  v51(v15, v10 + v18, v11);
  if (!*(a2 + 16) || (v20 = sub_1C6B5DEA8(v17, v16), (v21 & 1) == 0))
  {
    if (qword_1EDCE18E0 != -1)
    {
      swift_once();
    }

    sub_1C6B1D314();
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_1C6D7E630;
    *(v29 + 56) = MEMORY[0x1E69E6158];
    *(v29 + 64) = sub_1C6B2064C();
    *(v29 + 32) = v17;
    *(v29 + 40) = v16;
    sub_1C6D79AC0();
    sub_1C6D78D30();

    (*(v53 + 8))(v15, v54);
    goto LABEL_20;
  }

  v22 = v20;

  v23 = *(*(a2 + 56) + 8 * v22);
  swift_unknownObjectRetain();
  v24 = v15;
  sub_1C6D76BB0();
  if (v25 <= 0.0)
  {
    v26 = &selRef_minMembershipThreshold;
    v27 = v52;
    if (([v52 respondsToSelector_] & 1) == 0)
    {
      v28 = 0.051;
      goto LABEL_12;
    }

LABEL_10:
    [v27 *v26];
    v28 = v30;
    goto LABEL_12;
  }

  v26 = &selRef_minMembershipThresholdForLocalRecommendation;
  v27 = v52;
  v28 = 0.0;
  if ([v52 respondsToSelector_])
  {
    goto LABEL_10;
  }

LABEL_12:
  sub_1C6D76BC0();
  if (v28 > v31)
  {
    if (qword_1EDCE18E0 == -1)
    {
      goto LABEL_19;
    }

    goto LABEL_22;
  }

  v32 = 0.0;
  if ([v27 respondsToSelector_])
  {
    [v27 minScoreThresholdForSportsRecommendations];
    v32 = v33;
  }

  sub_1C6D76BA0();
  if (v32 > v34)
  {
    if (qword_1EDCE18E0 == -1)
    {
LABEL_19:
      v52 = off_1EDCE18E8;
      sub_1C6D79A90();
      sub_1C6B1D314();
      v35 = swift_allocObject();
      *(v35 + 16) = xmmword_1C6D807C0;
      v36 = [v23 name];
      v37 = sub_1C6D795A0();
      v39 = v38;

      v40 = MEMORY[0x1E69E6158];
      *(v35 + 56) = MEMORY[0x1E69E6158];
      v41 = sub_1C6B2064C();
      *(v35 + 64) = v41;
      *(v35 + 32) = v37;
      *(v35 + 40) = v39;
      sub_1C6C406A8(&unk_1EDCE6238, 255, MEMORY[0x1E69E3560]);
      v42 = v54;
      v43 = sub_1C6D7A0E0();
      *(v35 + 96) = v40;
      *(v35 + 104) = v41;
      *(v35 + 72) = v43;
      *(v35 + 80) = v44;
      v56 = 0;
      v57 = 0xE000000000000000;
      sub_1C6D79910();
      v45 = v56;
      v46 = v57;
      *(v35 + 136) = v40;
      *(v35 + 144) = v41;
      *(v35 + 112) = v45;
      *(v35 + 120) = v46;
      sub_1C6D78D30();
      swift_unknownObjectRelease();

      (*(v53 + 8))(v24, v42);
LABEL_20:
      v47 = type metadata accessor for SportsRecommendedScoredTag();
      return (*(*(v47 - 8) + 56))(v55, 1, 1, v47);
    }

LABEL_22:
    swift_once();
    goto LABEL_19;
  }

  v49 = type metadata accessor for SportsRecommendedScoredTag();
  v50 = v55;
  v51(v55 + *(v49 + 20), v19, v54);
  *v50 = v23;
  return (*(*(v49 - 8) + 56))(v50, 0, 1, v49);
}

uint64_t SportsRecommendationService.deinit()
{
  v1 = *(v0 + 24);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + 32));
  __swift_destroy_boxed_opaque_existential_1((v0 + 72));
  __swift_destroy_boxed_opaque_existential_1((v0 + 112));
  __swift_destroy_boxed_opaque_existential_1((v0 + 152));
  v2 = *(v0 + 192);

  __swift_destroy_boxed_opaque_existential_1((v0 + 200));
  return v0;
}

uint64_t SportsRecommendationService.__deallocating_deinit()
{
  v1 = *(v0 + 24);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + 32));
  __swift_destroy_boxed_opaque_existential_1((v0 + 72));
  __swift_destroy_boxed_opaque_existential_1((v0 + 112));
  __swift_destroy_boxed_opaque_existential_1((v0 + 152));
  v2 = *(v0 + 192);

  __swift_destroy_boxed_opaque_existential_1((v0 + 200));

  return swift_deallocClassInstance();
}

uint64_t sub_1C6C3E7EC()
{
  v5 = *v0;
  sub_1C6C40494();
  sub_1C6D783A0();
  v1 = sub_1C6D78210();
  sub_1C6C405B0();
  sub_1C6D782C0();

  *(swift_allocObject() + 16) = 0;
  v2 = sub_1C6D78210();
  v3 = sub_1C6D782D0();

  return v3;
}

uint64_t sub_1C6C3E914(uint64_t a1)
{
  v7 = *v1;
  sub_1C6C40494();
  sub_1C6D783A0();
  v3 = sub_1C6D78210();
  sub_1C6C405B0();
  sub_1C6D782C0();

  *(swift_allocObject() + 16) = a1;
  swift_unknownObjectRetain();
  v4 = sub_1C6D78210();
  v5 = sub_1C6D782D0();

  return v5;
}

uint64_t FCNewsAppConfiguration.diversificationRules.getter()
{
  sub_1C6C4070C(0, &qword_1EDCDF5D0, MEMORY[0x1E69E3598], MEMORY[0x1E69E6F90]);
  v1 = sub_1C6D76C10();
  v2 = *(v1 - 8);
  v3 = *(v2 + 72);
  v4 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1C6D7EB10;
  v6 = (v5 + v4);
  if ([v0 respondsToSelector_])
  {
    v7 = [v0 maxSportRecommendationsWithLeagueTypeCollege];
  }

  else
  {
    v7 = 2;
  }

  *v6 = v7;
  v8 = *(v2 + 104);
  v8(v6, *MEMORY[0x1E69E3590], v1);
  if ([v0 respondsToSelector_])
  {
    v9 = [v0 maxSportRecommendationsPerSport];
  }

  else
  {
    v9 = 3;
  }

  *(v6 + v3) = v9;
  v8((v6 + v3), *MEMORY[0x1E69E3588], v1);
  return v5;
}

void sub_1C6C3EBEC(void **a1)
{
  sub_1C6B3CA94();
  v3 = *(v2 - 8);
  v4 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = sub_1C6C73FA8(v4);
  }

  v5 = v4[2];
  v6[0] = v4 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
  v6[1] = v5;
  sub_1C6C3EC94(v6);
  *a1 = v4;
}

void sub_1C6C3EC94(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_1C6D7A0C0();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        sub_1C6B3CA94();
        v6 = sub_1C6D797F0();
        *(v6 + 16) = v5;
      }

      sub_1C6B3CA94();
      v8[0] = v6 + ((*(*(v7 - 8) + 80) + 32) & ~*(*(v7 - 8) + 80));
      v8[1] = v5;
      sub_1C6C3F134(v8, v9, a1, v4);
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
    sub_1C6C3EDC0(0, v2, 1, a1);
  }
}

void sub_1C6C3EDC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  sub_1C6B3CA94();
  v9 = v8;
  v10 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v51 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v54 = &v42 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v53 = &v42 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v52 = &v42 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v58 = &v42 - v20;
  v44 = a2;
  if (a3 != a2)
  {
    v21 = *a4;
    v22 = *(v19 + 72);
    v23 = *a4 + v22 * (a3 - 1);
    v49 = -v22;
    v50 = v21;
    v24 = a1 - a3;
    v43 = v22;
    v25 = v21 + v22 * a3;
    v57 = v9;
LABEL_5:
    v47 = v23;
    v48 = a3;
    v45 = v25;
    v46 = v24;
    v55 = v24;
    while (1)
    {
      v26 = v58;
      sub_1C6C4086C(v25, v58, sub_1C6B3CA94);
      v27 = v52;
      sub_1C6C4086C(v23, v52, sub_1C6B3CA94);
      v28 = v53;
      sub_1C6C4086C(v26, v53, sub_1C6B3CA94);
      v29 = *(v28 + 8);

      v30 = *(v9 + 48);
      sub_1C6D76BA0();
      v32 = v31;
      v33 = sub_1C6D76BD0();
      v56 = *(*(v33 - 8) + 8);
      v56(v28 + v30, v33);
      v34 = v54;
      sub_1C6C4086C(v27, v54, sub_1C6B3CA94);
      v35 = *(v34 + 8);

      v36 = *(v57 + 48);
      sub_1C6D76BA0();
      v38 = v37;
      v39 = v33;
      v9 = v57;
      v56(v34 + v36, v39);
      sub_1C6C40C98(v27, sub_1C6B3CA94);
      sub_1C6C40C98(v58, sub_1C6B3CA94);
      if (v38 >= v32)
      {
LABEL_4:
        a3 = v48 + 1;
        v23 = v47 + v43;
        v24 = v46 - 1;
        v25 = v45 + v43;
        if (v48 + 1 == v44)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v50)
      {
        break;
      }

      v40 = v51;
      sub_1C6C40C30(v25, v51, sub_1C6B3CA94);
      swift_arrayInitWithTakeFrontToBack();
      sub_1C6C40C30(v40, v23, sub_1C6B3CA94);
      v23 += v49;
      v25 += v49;
      if (__CFADD__(v55++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_1C6C3F134(int64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = v4;
  v151 = a1;
  sub_1C6B3CA94();
  v9 = v8;
  v159 = *(v8 - 8);
  v10 = *(v159 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v155 = &v148 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v165 = &v148 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v168 = &v148 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v167 = &v148 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v169 = &v148 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v172 = &v148 - v21;
  v22 = a3[1];
  if (v22 < 1)
  {
    v24 = MEMORY[0x1E69E7CC0];
LABEL_98:
    v23 = *v151;
    if (!*v151)
    {
      goto LABEL_136;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_100:
      v173 = v24;
      v143 = *(v24 + 16);
      if (v143 >= 2)
      {
        while (*a3)
        {
          v144 = *(v24 + 16 * v143);
          v145 = v24;
          v146 = *(v24 + 16 * (v143 - 1) + 32);
          v24 = *(v24 + 16 * (v143 - 1) + 40);
          sub_1C6C3FD58(*a3 + *(v159 + 72) * v144, *a3 + *(v159 + 72) * v146, *a3 + *(v159 + 72) * v24, v23);
          if (v5)
          {
            goto LABEL_108;
          }

          if (v24 < v144)
          {
            goto LABEL_123;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v145 = sub_1C6C73C90(v145);
          }

          if (v143 - 2 >= *(v145 + 2))
          {
            goto LABEL_124;
          }

          v147 = &v145[16 * v143];
          *v147 = v144;
          *(v147 + 1) = v24;
          v173 = v145;
          sub_1C6C73C04(v143 - 1);
          v24 = v173;
          v143 = *(v173 + 16);
          if (v143 <= 1)
          {
            goto LABEL_108;
          }
        }

        goto LABEL_134;
      }

LABEL_108:

      return;
    }

LABEL_130:
    v24 = sub_1C6C73C90(v24);
    goto LABEL_100;
  }

  v149 = a4;
  v23 = 0;
  v24 = MEMORY[0x1E69E7CC0];
  v152 = a3;
  v166 = v9;
  while (1)
  {
    v154 = v23;
    if (v23 + 1 >= v22)
    {
      v46 = v23 + 1;
    }

    else
    {
      v25 = v23;
      v162 = v22;
      v150 = v24;
      v26 = *a3;
      v27 = *a3 + *(v159 + 72) * (v23 + 1);
      v160 = *(v159 + 72);
      v28 = v160;
      v29 = v26;
      v171 = v26;
      v23 = v27;
      v30 = v172;
      sub_1C6C4086C(v27, v172, sub_1C6B3CA94);
      sub_1C6C4086C(v29 + v28 * v25, v169, sub_1C6B3CA94);
      v31 = v167;
      sub_1C6C4086C(v30, v167, sub_1C6B3CA94);
      v32 = *(v31 + 8);

      v170 = *(v9 + 48);
      sub_1C6D76BA0();
      v34 = v33;
      v35 = sub_1C6D76BD0();
      v36 = *(v35 - 8);
      v37 = *(v36 + 8);
      v38 = v36 + 8;
      v37(v31 + v170, v35);
      v39 = v168;
      sub_1C6C4086C(v169, v168, sub_1C6B3CA94);
      v40 = *(v39 + 8);

      v41 = *(v9 + 48);
      sub_1C6D76BA0();
      v43 = v42;
      v157 = v37;
      v158 = v35;
      v156 = v38;
      v37(v39 + v41, v35);
      sub_1C6C40C98(v169, sub_1C6B3CA94);
      sub_1C6C40C98(v172, sub_1C6B3CA94);
      v44 = v154 + 2;
      v45 = v171 + v160 * (v154 + 2);
      while (1)
      {
        v46 = v162;
        if (v162 == v44)
        {
          break;
        }

        LODWORD(v164) = v43 < v34;
        v170 = v44;
        v171 = v45;
        v47 = v172;
        sub_1C6C4086C(v45, v172, sub_1C6B3CA94);
        v163 = v23;
        v48 = v169;
        sub_1C6C4086C(v23, v169, sub_1C6B3CA94);
        v49 = v167;
        sub_1C6C4086C(v47, v167, sub_1C6B3CA94);
        v50 = *(v49 + 8);

        v161 = v5;
        v51 = v166;
        v52 = *(v166 + 48);
        sub_1C6D76BA0();
        v54 = v53;
        v56 = v157;
        v55 = v158;
        (v157)(v49 + v52, v158);
        v57 = v168;
        sub_1C6C4086C(v48, v168, sub_1C6B3CA94);
        v58 = *(v57 + 8);

        v59 = *(v51 + 48);
        v5 = v161;
        sub_1C6D76BA0();
        v61 = v60;
        v56(v57 + v59, v55);
        sub_1C6C40C98(v48, sub_1C6B3CA94);
        sub_1C6C40C98(v172, sub_1C6B3CA94);
        v44 = v170 + 1;
        v45 = v171 + v160;
        v23 = v163 + v160;
        if (((v164 ^ (v61 >= v54)) & 1) == 0)
        {
          v46 = v170;
          break;
        }
      }

      a3 = v152;
      v24 = v150;
      v9 = v166;
      if (v43 < v34)
      {
        if (v46 < v154)
        {
          goto LABEL_127;
        }

        if (v154 < v46)
        {
          v62 = v160 * (v46 - 1);
          v63 = v46 * v160;
          v162 = v46;
          v64 = v154;
          v65 = v154 * v160;
          do
          {
            if (v64 != --v46)
            {
              v66 = *a3;
              if (!v66)
              {
                goto LABEL_133;
              }

              v23 = v66 + v65;
              sub_1C6C40C30(v66 + v65, v155, sub_1C6B3CA94);
              if (v65 < v62 || v23 >= (v66 + v63))
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v65 != v62)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              sub_1C6C40C30(v155, v66 + v62, sub_1C6B3CA94);
              a3 = v152;
            }

            ++v64;
            v62 -= v160;
            v63 -= v160;
            v65 += v160;
          }

          while (v64 < v46);
          v24 = v150;
          v46 = v162;
        }
      }
    }

    v67 = a3[1];
    if (v46 >= v67)
    {
      goto LABEL_33;
    }

    if (__OFSUB__(v46, v154))
    {
      goto LABEL_126;
    }

    if (v46 - v154 >= v149)
    {
LABEL_33:
      v23 = v46;
      goto LABEL_34;
    }

    if (__OFADD__(v154, v149))
    {
      goto LABEL_128;
    }

    if (v154 + v149 >= v67)
    {
      v23 = a3[1];
    }

    else
    {
      v23 = v154 + v149;
    }

    if (v23 < v154)
    {
LABEL_129:
      __break(1u);
      goto LABEL_130;
    }

    v68 = v154;
    if (v46 == v23)
    {
      v23 = v46;
      goto LABEL_35;
    }

    v150 = v24;
    v161 = v5;
    v117 = *a3;
    v118 = *(v159 + 72);
    v119 = *a3 + v118 * (v46 - 1);
    v163 = -v118;
    v164 = v117;
    v120 = v154 - v46;
    v153 = v118;
    v121 = (v117 + v46 * v118);
    v156 = v23;
LABEL_90:
    v162 = v46;
    v157 = v121;
    v158 = v120;
    v122 = v121;
    v123 = v120;
    v160 = v119;
LABEL_91:
    v170 = v122;
    v171 = v123;
    v124 = v172;
    sub_1C6C4086C(v122, v172, sub_1C6B3CA94);
    v125 = v169;
    sub_1C6C4086C(v119, v169, sub_1C6B3CA94);
    v126 = v167;
    sub_1C6C4086C(v124, v167, sub_1C6B3CA94);
    v127 = *(v126 + 8);

    v128 = *(v9 + 48);
    sub_1C6D76BA0();
    v130 = v129;
    v131 = v9;
    v132 = sub_1C6D76BD0();
    v133 = *(*(v132 - 8) + 8);
    v133(v126 + v128, v132);
    v134 = v168;
    sub_1C6C4086C(v125, v168, sub_1C6B3CA94);
    v135 = *(v134 + 8);

    v136 = *(v131 + 48);
    sub_1C6D76BA0();
    v138 = v137;
    v133(v134 + v136, v132);
    sub_1C6C40C98(v125, sub_1C6B3CA94);
    sub_1C6C40C98(v172, sub_1C6B3CA94);
    if (v138 < v130)
    {
      break;
    }

    v9 = v166;
LABEL_89:
    v46 = v162 + 1;
    v119 = v160 + v153;
    v120 = v158 - 1;
    v121 = &v157[v153];
    v23 = v156;
    if (v162 + 1 != v156)
    {
      goto LABEL_90;
    }

    v5 = v161;
    a3 = v152;
    v24 = v150;
LABEL_34:
    v68 = v154;
LABEL_35:
    if (v23 < v68)
    {
      goto LABEL_125;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v156 = v23;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v24 = sub_1C6B657D0(0, *(v24 + 16) + 1, 1, v24);
    }

    v71 = *(v24 + 16);
    v70 = *(v24 + 24);
    v72 = v71 + 1;
    if (v71 >= v70 >> 1)
    {
      v24 = sub_1C6B657D0((v70 > 1), v71 + 1, 1, v24);
    }

    *(v24 + 16) = v72;
    v73 = v24 + 16 * v71;
    v74 = v156;
    *(v73 + 32) = v154;
    *(v73 + 40) = v74;
    if (!*v151)
    {
      goto LABEL_135;
    }

    if (v71)
    {
      v75 = *v151;
      while (1)
      {
        v23 = v72 - 1;
        if (v72 >= 4)
        {
          break;
        }

        if (v72 == 3)
        {
          v76 = *(v24 + 32);
          v77 = *(v24 + 40);
          v86 = __OFSUB__(v77, v76);
          v78 = v77 - v76;
          v79 = v86;
LABEL_56:
          if (v79)
          {
            goto LABEL_114;
          }

          v92 = (v24 + 16 * v72);
          v94 = *v92;
          v93 = v92[1];
          v95 = __OFSUB__(v93, v94);
          v96 = v93 - v94;
          v97 = v95;
          if (v95)
          {
            goto LABEL_117;
          }

          v98 = (v24 + 32 + 16 * v23);
          v100 = *v98;
          v99 = v98[1];
          v86 = __OFSUB__(v99, v100);
          v101 = v99 - v100;
          if (v86)
          {
            goto LABEL_120;
          }

          if (__OFADD__(v96, v101))
          {
            goto LABEL_121;
          }

          if (v96 + v101 >= v78)
          {
            if (v78 < v101)
            {
              v23 = v72 - 2;
            }

            goto LABEL_77;
          }

          goto LABEL_70;
        }

        v102 = (v24 + 16 * v72);
        v104 = *v102;
        v103 = v102[1];
        v86 = __OFSUB__(v103, v104);
        v96 = v103 - v104;
        v97 = v86;
LABEL_70:
        if (v97)
        {
          goto LABEL_116;
        }

        v105 = v24 + 16 * v23;
        v107 = *(v105 + 32);
        v106 = *(v105 + 40);
        v86 = __OFSUB__(v106, v107);
        v108 = v106 - v107;
        if (v86)
        {
          goto LABEL_119;
        }

        if (v108 < v96)
        {
          goto LABEL_3;
        }

LABEL_77:
        v113 = v23 - 1;
        if (v23 - 1 >= v72)
        {
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
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
          goto LABEL_129;
        }

        if (!*a3)
        {
          goto LABEL_132;
        }

        v114 = *(v24 + 32 + 16 * v113);
        v115 = *(v24 + 32 + 16 * v23 + 8);
        sub_1C6C3FD58(*a3 + *(v159 + 72) * v114, *a3 + *(v159 + 72) * *(v24 + 32 + 16 * v23), *a3 + *(v159 + 72) * v115, v75);
        if (v5)
        {
          goto LABEL_108;
        }

        if (v115 < v114)
        {
          goto LABEL_110;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v24 = sub_1C6C73C90(v24);
        }

        if (v113 >= *(v24 + 16))
        {
          goto LABEL_111;
        }

        v116 = v24 + 16 * v113;
        *(v116 + 32) = v114;
        *(v116 + 40) = v115;
        v173 = v24;
        sub_1C6C73C04(v23);
        v24 = v173;
        v72 = *(v173 + 16);
        if (v72 <= 1)
        {
          goto LABEL_3;
        }
      }

      v80 = v24 + 32 + 16 * v72;
      v81 = *(v80 - 64);
      v82 = *(v80 - 56);
      v86 = __OFSUB__(v82, v81);
      v83 = v82 - v81;
      if (v86)
      {
        goto LABEL_112;
      }

      v85 = *(v80 - 48);
      v84 = *(v80 - 40);
      v86 = __OFSUB__(v84, v85);
      v78 = v84 - v85;
      v79 = v86;
      if (v86)
      {
        goto LABEL_113;
      }

      v87 = (v24 + 16 * v72);
      v89 = *v87;
      v88 = v87[1];
      v86 = __OFSUB__(v88, v89);
      v90 = v88 - v89;
      if (v86)
      {
        goto LABEL_115;
      }

      v86 = __OFADD__(v78, v90);
      v91 = v78 + v90;
      if (v86)
      {
        goto LABEL_118;
      }

      if (v91 >= v83)
      {
        v109 = (v24 + 32 + 16 * v23);
        v111 = *v109;
        v110 = v109[1];
        v86 = __OFSUB__(v110, v111);
        v112 = v110 - v111;
        if (v86)
        {
          goto LABEL_122;
        }

        if (v78 < v112)
        {
          v23 = v72 - 2;
        }

        goto LABEL_77;
      }

      goto LABEL_56;
    }

LABEL_3:
    v22 = a3[1];
    v23 = v156;
    if (v156 >= v22)
    {
      goto LABEL_98;
    }
  }

  v139 = v171;
  if (v164)
  {
    v140 = v170;
    v141 = v165;
    sub_1C6C40C30(v170, v165, sub_1C6B3CA94);
    v9 = v166;
    swift_arrayInitWithTakeFrontToBack();
    sub_1C6C40C30(v141, v119, sub_1C6B3CA94);
    v119 += v163;
    v122 = v140 + v163;
    v142 = __CFADD__(v139, 1);
    v123 = v139 + 1;
    if (v142)
    {
      goto LABEL_89;
    }

    goto LABEL_91;
  }

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
}

void sub_1C6C3FD58(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  sub_1C6B3CA94();
  v79 = v8;
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v73 = &v65 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v72 = &v65 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v75 = &v65 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v80 = &v65 - v16;
  v18 = *(v17 + 72);
  if (!v18)
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v18 == -1)
  {
    goto LABEL_61;
  }

  v19 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v18 == -1)
  {
    goto LABEL_62;
  }

  v20 = (a2 - a1) / v18;
  v83 = a1;
  v82 = a4;
  if (v20 >= v19 / v18)
  {
    v22 = v19 / v18 * v18;
    if (a4 < a2 || a2 + v22 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v42 = a4 + v22;
    if (v22 >= 1)
    {
      v43 = -v18;
      v44 = v42;
      v76 = a4;
      v77 = a1;
      v68 = v43;
      while (2)
      {
        while (1)
        {
          v66 = v42;
          v45 = a2;
          v46 = a2 + v43;
          v78 = v46;
          v69 = v45;
          while (1)
          {
            if (v45 <= a1)
            {
              v83 = v45;
              v81 = v66;
              goto LABEL_59;
            }

            v67 = v42;
            v74 = a3 + v43;
            v47 = v44 + v43;
            v48 = v80;
            v71 = a3;
            sub_1C6C4086C(v44 + v43, v80, sub_1C6B3CA94);
            v70 = v44;
            sub_1C6C4086C(v46, v75, sub_1C6B3CA94);
            v49 = v72;
            sub_1C6C4086C(v48, v72, sub_1C6B3CA94);
            v50 = *(v49 + 8);

            v51 = v79;
            v52 = *(v79 + 48);
            sub_1C6D76BA0();
            v54 = v53;
            v55 = sub_1C6D76BD0();
            v56 = *(*(v55 - 8) + 8);
            v56(v49 + v52, v55);
            v57 = v75;
            v58 = v73;
            sub_1C6C4086C(v75, v73, sub_1C6B3CA94);
            v59 = *(v58 + 8);

            v60 = *(v51 + 48);
            sub_1C6D76BA0();
            v62 = v61;
            v56(v58 + v60, v55);
            sub_1C6C40C98(v57, sub_1C6B3CA94);
            sub_1C6C40C98(v80, sub_1C6B3CA94);
            if (v62 < v54)
            {
              break;
            }

            v42 = v47;
            a3 = v74;
            v63 = v76;
            if (v71 < v70 || v74 >= v70)
            {
              swift_arrayInitWithTakeFrontToBack();
              a1 = v77;
              v46 = v78;
              v43 = v68;
            }

            else
            {
              a1 = v77;
              v46 = v78;
              v43 = v68;
              if (v71 != v70)
              {
                swift_arrayInitWithTakeBackToFront();
              }
            }

            v44 = v47;
            v45 = v69;
            if (v47 <= v63)
            {
              a2 = v69;
              goto LABEL_58;
            }
          }

          v44 = v70;
          a3 = v74;
          v64 = v76;
          if (v71 < v69 || v74 >= v69)
          {
            break;
          }

          a1 = v77;
          a2 = v78;
          v42 = v67;
          v43 = v68;
          if (v71 != v69)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          if (v44 <= v64)
          {
            goto LABEL_58;
          }
        }

        a2 = v78;
        swift_arrayInitWithTakeFrontToBack();
        a1 = v77;
        v42 = v67;
        v43 = v68;
        if (v44 > v64)
        {
          continue;
        }

        break;
      }
    }

LABEL_58:
    v83 = a2;
    v81 = v42;
  }

  else
  {
    v21 = v20 * v18;
    if (a4 < a1 || a1 + v21 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v71 = a4 + v21;
    v81 = a4 + v21;
    if (v21 >= 1 && a2 < a3)
    {
      v74 = a3;
      v70 = v18;
      v24 = v79;
      do
      {
        v77 = a1;
        v78 = a2;
        v76 = a4;
        v25 = v80;
        sub_1C6C4086C(a2, v80, sub_1C6B3CA94);
        v26 = v75;
        sub_1C6C4086C(a4, v75, sub_1C6B3CA94);
        v27 = v72;
        sub_1C6C4086C(v25, v72, sub_1C6B3CA94);
        v28 = *(v27 + 8);

        v29 = *(v24 + 48);
        sub_1C6D76BA0();
        v31 = v30;
        v32 = sub_1C6D76BD0();
        v33 = *(*(v32 - 8) + 8);
        v33(v27 + v29, v32);
        v34 = v73;
        sub_1C6C4086C(v26, v73, sub_1C6B3CA94);
        v35 = *(v34 + 8);

        v36 = *(v24 + 48);
        sub_1C6D76BA0();
        v38 = v37;
        v33(v34 + v36, v32);
        sub_1C6C40C98(v26, sub_1C6B3CA94);
        sub_1C6C40C98(v80, sub_1C6B3CA94);
        if (v38 >= v31)
        {
          v40 = v77;
          a2 = v78;
          v39 = v70;
          a4 = v76 + v70;
          if (v77 < v76 || v77 >= a4)
          {
            swift_arrayInitWithTakeFrontToBack();
            v41 = v74;
          }

          else
          {
            v41 = v74;
            if (v77 != v76)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v82 = a4;
        }

        else
        {
          v39 = v70;
          v40 = v77;
          a2 = v78 + v70;
          a4 = v76;
          if (v77 < v78 || v77 >= a2)
          {
            swift_arrayInitWithTakeFrontToBack();
            v41 = v74;
          }

          else
          {
            v41 = v74;
            if (v77 != v78)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }
        }

        a1 = v40 + v39;
        v83 = a1;
      }

      while (a4 < v71 && a2 < v41);
    }
  }

LABEL_59:
  sub_1C6C73CBC(&v83, &v82, &v81);
}

uint64_t sub_1C6C40414(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SportsRecommendedScoredTag();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_1C6C40494()
{
  if (!qword_1EDCDF878)
  {
    sub_1C6B0F7A8(255, &qword_1EDCE6560, &protocolRef_FCNewsAppConfiguration);
    sub_1C6C40548();
    sub_1C6B0C69C(255, &qword_1EDCDF8B8, 0x1E69B55F8);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata, &qword_1EDCDF878);
    }
  }
}

void sub_1C6C40548()
{
  if (!qword_1EDCDF9B0)
  {
    sub_1C6B0F7A8(255, &qword_1EDCDF8B0, &protocolRef_FCSportsProviding);
    v0 = sub_1C6D79820();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDCDF9B0);
    }
  }
}

void sub_1C6C405B0()
{
  if (!qword_1EDCE0570)
  {
    type metadata accessor for SportsTopicMappingServiceResult();
    sub_1C6BB5940();
    sub_1C6B0F7A8(255, &qword_1EDCE6560, &protocolRef_FCNewsAppConfiguration);
    sub_1C6B0C69C(255, &qword_1EDCEA500, 0x1E69B5480);
    sub_1C6C40548();
    sub_1C6B0C69C(255, &qword_1EDCDF800, 0x1E69B5468);
    sub_1C6B10A98(255, &unk_1EDCE6308);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata, &qword_1EDCE0570);
    }
  }
}

uint64_t sub_1C6C406A8(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

void sub_1C6C4070C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1C6C407C0()
{
  result = sub_1C6B0F7A8(319, &qword_1EDCDF8B0, &protocolRef_FCSportsProviding);
  if (v1 <= 0x3F)
  {
    result = sub_1C6D76BD0();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1C6C4086C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_1C6C408F4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t sub_1C6C40964()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  [v1 baselineRatePrior];
  [v2 baselineImpressionPrior];
  [v2 baselineImpressionPrior];

  return sub_1C6D76AF0();
}

uint64_t sub_1C6C409E4()
{
  v1 = *(v0 + 16);
  [v1 featureImpressionPrior];
  [v1 featureImpressionPrior];

  return sub_1C6D76AF0();
}

unint64_t sub_1C6C40A58(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1C6C40D68();
    v3 = sub_1C6D79F20();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_1C6B5DEA8(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
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

uint64_t sub_1C6C40B60(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_1C6C408F4(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1C6C40BD4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_1C6C408F4(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1C6C40C30(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C6C40C98(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1C6C40CF8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1C6C4070C(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_1C6C40D68()
{
  if (!qword_1EC1D6EC0)
  {
    v0 = sub_1C6D79F30();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC1D6EC0);
    }
  }
}

void sub_1C6C40DC4()
{
  if (!qword_1EDCE7A80)
  {
    sub_1C6B0F7A8(255, &qword_1EDCE6560, &protocolRef_FCNewsAppConfiguration);
    v0 = sub_1C6D78360();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDCE7A80);
    }
  }
}

void sub_1C6C40E2C()
{
  if (!qword_1EDCE5D38)
  {
    sub_1C6B0C69C(255, &qword_1EDCEA500, 0x1E69B5480);
    v0 = sub_1C6D78360();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDCE5D38);
    }
  }
}

void sub_1C6C40E94()
{
  if (!qword_1EDCE5D28)
  {
    sub_1C6B0C69C(255, &qword_1EDCDF800, 0x1E69B5468);
    v0 = sub_1C6D78360();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDCE5D28);
    }
  }
}

void sub_1C6C40EFC()
{
  if (!qword_1EDCE5DD0)
  {
    sub_1C6B10A98(255, &unk_1EDCE6308);
    v0 = sub_1C6D78360();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDCE5DD0);
    }
  }
}

id sub_1C6C40FC8(uint64_t a1, char **a2)
{
  v5 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a2;
  v10 = *(a2 + 8);
  sub_1C6C411DC(a1, v8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v12 = &selRef_articleSeenAggregateModificationConfiguration;
  v13 = 0;
  switch(EnumCaseMultiPayload)
  {
    case 1:
      v12 = &selRef_articleVisitedAggregateModificationConfiguration;
      goto LABEL_23;
    case 2:
      v12 = &selRef_articleReadAggregateModificationConfiguration;
      goto LABEL_23;
    case 3:
      v12 = &selRef_shareAggregateModificationConfiguration;
      goto LABEL_23;
    case 4:
      v12 = &selRef_likeAggregateModificationConfiguration;
      goto LABEL_23;
    case 5:
      v12 = &selRef_dislikeAggregateModificationConfiguration;
      goto LABEL_23;
    case 6:
      v12 = &selRef_savedAggregateModificationConfiguration;
      goto LABEL_23;
    case 7:
      v12 = &selRef_muteAggregateModificationConfiguration;
      goto LABEL_23;
    case 8:
      v12 = &selRef_unmuteAggregateModificationConfiguration;
      goto LABEL_23;
    case 9:
      v12 = &selRef_followAggregateModificationConfiguration;
      goto LABEL_23;
    case 10:
      v12 = &selRef_unfollowAggregateModificationConfiguration;
      goto LABEL_23;
    case 11:
      if (v10)
      {
        if ((v9 - 1) < 4)
        {
          v12 = &selRef_deprecatedFeedViewAggregateModificationConfiguration;
LABEL_23:
          v13 = [v2 *v12];
          goto LABEL_24;
        }

        v13 = v9;
        if ((v9 - 5) < 2)
        {
          v12 = &selRef_feedViewAggregateModificationConfiguration;
          goto LABEL_23;
        }
      }

      else
      {
        v13 = 0;
      }

LABEL_24:
      sub_1C6C41240(v8);
      return v13;
    case 12:
      v12 = &selRef_trackVisitedAggregateModificationConfiguration;
      goto LABEL_23;
    case 13:
      v12 = &selRef_trackListenedAggregateModificationConfiguration;
      goto LABEL_23;
    case 14:
      v12 = &selRef_trackFinishedAggregateModificationConfiguration;
      goto LABEL_23;
    case 15:
      v12 = &selRef_unlikeAggregateModificationConfiguration;
      goto LABEL_23;
    case 16:
      v12 = &selRef_undislikeAggregateModificationConfiguration;
      goto LABEL_23;
    case 17:
      v12 = &selRef_unsavedAggregateModificationConfiguration;
      goto LABEL_23;
    case 18:
      v12 = &selRef_sportsTagSeenAggregateModificationConfiguration;
      goto LABEL_23;
    case 19:
      v12 = &selRef_tagIgnoreAggregateModificationConfiguration;
      goto LABEL_23;
    case 20:
      goto LABEL_24;
    default:
      goto LABEL_23;
  }
}

uint64_t sub_1C6C411DC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C6C41240(uint64_t a1)
{
  v2 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C6C4129C(uint64_t a1, char a2, uint64_t a3)
{
  v7 = type metadata accessor for RecipeTagSuggestionsService.OutputNames();
  v8 = *(*(v7 - 1) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6B7A08C();
  v12 = v11;
  v13 = *(v11 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = a3;
  v30 = a2;
  v17 = a1;
  sub_1C6D784F0();
  if (!v3)
  {
    v32 = v13;
    sub_1C6D78500();
    v18 = v31;

    v19 = [v18 recipeTagSuggestionsConfiguration];

    if (v19)
    {
      sub_1C6C41D58(v19, a2 & 1, v10);
      sub_1C6B7A1B0(&qword_1EDCE7A60, sub_1C6B7A08C);
      v20 = sub_1C6D786C0();
      v21 = v7[5];
      v22 = sub_1C6D786D0();
      v23 = v7[6];
      v28 = sub_1C6D786C0();
      v24 = v7[7];
      v26 = sub_1C6D786D0();
      v17 = sub_1C6C1A420(v20, v22);

      sub_1C6C1A420(v28, v26);

      sub_1C6C41ED4(v10);
    }

    else
    {
      sub_1C6C41D04();
      v17 = swift_allocError();
      swift_willThrow();
    }

    (*(v32 + 8))(v16, v12);
  }

  return v17;
}

uint64_t type metadata accessor for RecipeTagSuggestionsService.OutputNames()
{
  result = qword_1EC1D8230;
  if (!qword_1EC1D8230)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C6C41670@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  LODWORD(v58) = a3;
  v7 = sub_1C6D75F80();
  v59 = *(v7 - 8);
  v60 = v7;
  v8 = *(v59 + 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for RecipeTagSuggestionsService.OutputNames();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1C6D78810();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v61 = &v52 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v52 - v20;
  v22 = [*(a1 + 24) recipeTagSuggestionsConfiguration];
  if (v22)
  {
    v55 = v16;
    v56 = v15;
    v57 = v14;
    v54 = a4;
    v62 = v22;
    v23 = [v22 eventAggregationConfiguration];
    v24 = [v23 maxSessionEvents];
    sub_1C6BFEC6C([v23 eventConditions], v64);
    v25 = [v23 inputNames];
    v26 = v21;
    v27 = sub_1C6D79780();

    v63 = v24;
    v64[5] = v27;
    v28 = v26;
    v29 = *(a2 + 32);
    MEMORY[0x1EEE9AC00](v30);
    *(&v52 - 2) = &v63;
    *(&v52 - 1) = a2;
    os_unfair_lock_lock((v29 + 24));
    v31 = v65;
    sub_1C6C1A93C((v29 + 16), v26);
    os_unfair_lock_unlock((v29 + 24));
    if (v31)
    {

      return sub_1C6BC624C(&v63);
    }

    else
    {
      v65 = 0;
      sub_1C6BC624C(&v63);
      v33 = v57;
      sub_1C6C41D58(v62, v58 & 1, v57);
      sub_1C6D75F70();
      v53 = sub_1C6D75F60();
      v58 = v34;
      (*(v59 + 1))(v10, v60);
      (*(v55 + 16))(v61, v26, v56);
      v59 = "iewEventTranslator";
      sub_1C6C41F30(0, &qword_1EDCE64A0, MEMORY[0x1E6996088]);
      v35 = v11;
      v36 = sub_1C6D783E0();
      v37 = *(v36 - 8);
      v38 = *(v37 + 72);
      v39 = (*(v37 + 80) + 32) & ~*(v37 + 80);
      v40 = swift_allocObject();
      *(v40 + 16) = xmmword_1C6D80210;
      v41 = v40 + v39;
      v42 = *(v37 + 16);
      v42(v41, v33, v36);
      v42(v41 + v38, v33 + v35[5], v36);
      v60 = v28;
      v42(v41 + 2 * v38, v33 + v35[6], v36);
      v43 = v35[7];
      v44 = v53;
      v45 = v33 + v43;
      v46 = v58;
      v42(v41 + 3 * v38, v45, v36);
      sub_1C6C07550(v40);
      swift_setDeallocating();
      swift_arrayDestroy();
      swift_deallocClassInstance();

      sub_1C6D78790();
      if (qword_1EDCE2380 != -1)
      {
        swift_once();
      }

      sub_1C6C41F30(0, &qword_1EDCEA8A0, sub_1C6B47670);
      v47 = swift_allocObject();
      *(v47 + 16) = xmmword_1C6D7EB10;
      v48 = MEMORY[0x1E69E6158];
      *(v47 + 56) = MEMORY[0x1E69E6158];
      v49 = sub_1C6B2064C();
      *(v47 + 64) = v49;
      *(v47 + 32) = v44;
      *(v47 + 40) = v46;
      sub_1C6D787B0();
      sub_1C6B7A1B0(&qword_1EDCE5CD0, MEMORY[0x1E6996158]);
      v50 = sub_1C6D7A0E0();
      *(v47 + 96) = v48;
      *(v47 + 104) = v49;
      *(v47 + 72) = v50;
      *(v47 + 80) = v51;
      sub_1C6D79AC0();
      sub_1C6D78D30();

      sub_1C6C41ED4(v57);
      return (*(v55 + 8))(v60, v56);
    }
  }

  else
  {
    sub_1C6C41D04();
    swift_allocError();
    return swift_willThrow();
  }
}

unint64_t sub_1C6C41D04()
{
  result = qword_1EC1D8228;
  if (!qword_1EC1D8228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8228);
  }

  return result;
}

void sub_1C6C41D58(void *a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v4 = &selRef_bundleOutputConfiguration;
  if ((a2 & 1) == 0)
  {
    v4 = &selRef_nonBundleOutputConfiguration;
  }

  v13 = [a1 *v4];
  v5 = [v13 channelIDsOutputName];
  sub_1C6D795A0();

  sub_1C6D783C0();
  v6 = [v13 channelScoresOutputName];
  sub_1C6D795A0();

  v7 = type metadata accessor for RecipeTagSuggestionsService.OutputNames();
  v8 = a3 + v7[5];
  sub_1C6D783C0();
  v9 = [v13 topicIDsOutputName];
  sub_1C6D795A0();

  v10 = a3 + v7[6];
  sub_1C6D783C0();
  v11 = [v13 topicScoresOutputName];
  sub_1C6D795A0();

  v12 = a3 + v7[7];
  sub_1C6D783C0();
}

uint64_t sub_1C6C41ED4(uint64_t a1)
{
  v2 = type metadata accessor for RecipeTagSuggestionsService.OutputNames();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1C6C41F30(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1C6D7A0F0();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1C6C41FBC()
{
  result = sub_1C6D783E0();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1C6C42030()
{
  result = qword_1EC1D8240;
  if (!qword_1EC1D8240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8240);
  }

  return result;
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleVisited.metadata.getter@<X0>(uint64_t a1@<X8>)
{
  sub_1C6C450C0(0, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata, MEMORY[0x1E69E6720]);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v13 - v5;
  v7 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleVisited();
  sub_1C6C44D7C(v1 + *(v7 + 24), v6, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
  v8 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_1C6B3E2B0(v6, a1);
  }

  v10 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.OneOf_Metadata(0);
  (*(*(v10 - 8) + 56))(a1, 1, 1, v10);
  v11 = a1 + *(v8 + 20);
  sub_1C6D78A30();
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_1C6C44DFC(v6, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
  }

  return result;
}

uint64_t type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleVisited()
{
  result = qword_1EDCE3018;
  if (!qword_1EDCE3018)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleVisited.init()@<X0>(char *a1@<X8>)
{
  *a1 = 0;
  v2 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleVisited();
  v3 = &a1[v2[5]];
  sub_1C6D78A30();
  v4 = v2[6];
  v5 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0);
  (*(*(v5 - 8) + 56))(&a1[v4], 1, 1, v5);
  v6 = v2[7];
  v7 = sub_1C6D78A00();
  v8 = *(*(v7 - 8) + 56);

  return v8(&a1[v6], 1, 1, v7);
}

uint64_t sub_1C6C42390@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1C6C450C0(0, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata, MEMORY[0x1E69E6720]);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v14 - v6;
  v8 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleVisited();
  sub_1C6C44D7C(a1 + *(v8 + 24), v7, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
  v9 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v7, 1, v9) != 1)
  {
    return sub_1C6B3E2B0(v7, a2);
  }

  v11 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.OneOf_Metadata(0);
  (*(*(v11 - 8) + 56))(a2, 1, 1, v11);
  v12 = a2 + *(v9 + 20);
  sub_1C6D78A30();
  result = (v10)(v7, 1, v9);
  if (result != 1)
  {
    return sub_1C6C44DFC(v7, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
  }

  return result;
}

uint64_t sub_1C6C42548(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6B3E660(a1, v8);
  v9 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleVisited() + 24);
  sub_1C6C44DFC(a2 + v9, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
  sub_1C6B3E2B0(v8, a2 + v9);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleVisited.metadata.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleVisited() + 24);
  sub_1C6C44DFC(v1 + v3, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
  sub_1C6B3E2B0(a1, v1 + v3);
  v4 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleVisited.metadata.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  sub_1C6C450C0(0, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata, MEMORY[0x1E69E6720]);
  v7 = *(*(v6 - 8) + 64);
  if (v3)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  v9 = v8;
  v5[1] = v8;
  v10 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0);
  v5[2] = v10;
  v11 = *(v10 - 8);
  v12 = v11;
  v5[3] = v11;
  v13 = *(v11 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v14 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v11 + 64));
    v14 = malloc(v13);
  }

  v15 = v14;
  v5[5] = v14;
  v16 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleVisited() + 24);
  *(v5 + 12) = v16;
  sub_1C6C44D7C(v1 + v16, v9, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
  v17 = *(v12 + 48);
  if (v17(v9, 1, v10) == 1)
  {
    v18 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.OneOf_Metadata(0);
    (*(*(v18 - 8) + 56))(v15, 1, 1, v18);
    v19 = v15 + *(v10 + 20);
    sub_1C6D78A30();
    if (v17(v9, 1, v10) != 1)
    {
      sub_1C6C44DFC(v9, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
    }
  }

  else
  {
    sub_1C6B3E2B0(v9, v15);
  }

  return sub_1C6C42988;
}

void sub_1C6C42988(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 12);
  v4 = (*a1)[4];
  v5 = (*a1)[5];
  v6 = (*a1)[2];
  v7 = (*a1)[3];
  v9 = **a1;
  v8 = (*a1)[1];
  if (a2)
  {
    sub_1C6B3E660((*a1)[5], v4);
    sub_1C6C44DFC(v9 + v3, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
    sub_1C6B3E2B0(v4, v9 + v3);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
    sub_1C6C02E68(v5);
  }

  else
  {
    sub_1C6C44DFC(v9 + v3, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
    sub_1C6B3E2B0(v5, v9 + v3);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

BOOL Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleVisited.hasMetadata.getter()
{
  sub_1C6C450C0(0, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata, MEMORY[0x1E69E6720]);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v9 - v3;
  v5 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleVisited();
  sub_1C6C44D7C(v0 + *(v5 + 24), v4, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
  v6 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0);
  v7 = (*(*(v6 - 8) + 48))(v4, 1, v6) != 1;
  sub_1C6C44DFC(v4, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
  return v7;
}

Swift::Void __swiftcall Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleVisited.clearMetadata()()
{
  v1 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleVisited() + 24);
  sub_1C6C44DFC(v0 + v1, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
  v2 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0);
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleVisited.duration.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = MEMORY[0x1E69AAB70];
  sub_1C6C450C0(0, &qword_1EDCDFD00, MEMORY[0x1E69AAB70], MEMORY[0x1E69E6720]);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v13 - v6;
  v8 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleVisited();
  sub_1C6C44D7C(v1 + *(v8 + 28), v7, &qword_1EDCDFD00, v3);
  v9 = sub_1C6D78A00();
  v10 = *(v9 - 8);
  v11 = *(v10 + 48);
  if (v11(v7, 1, v9) != 1)
  {
    return (*(v10 + 32))(a1, v7, v9);
  }

  sub_1C6D789F0();
  result = (v11)(v7, 1, v9);
  if (result != 1)
  {
    return sub_1C6C44DFC(v7, &qword_1EDCDFD00, MEMORY[0x1E69AAB70]);
  }

  return result;
}

uint64_t sub_1C6C42DFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = MEMORY[0x1E69AAB70];
  sub_1C6C450C0(0, &qword_1EDCDFD00, MEMORY[0x1E69AAB70], MEMORY[0x1E69E6720]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v14 - v7;
  v9 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleVisited();
  sub_1C6C44D7C(a1 + *(v9 + 28), v8, &qword_1EDCDFD00, v4);
  v10 = sub_1C6D78A00();
  v11 = *(v10 - 8);
  v12 = *(v11 + 48);
  if (v12(v8, 1, v10) != 1)
  {
    return (*(v11 + 32))(a2, v8, v10);
  }

  sub_1C6D789F0();
  result = (v12)(v8, 1, v10);
  if (result != 1)
  {
    return sub_1C6C44DFC(v8, &qword_1EDCDFD00, MEMORY[0x1E69AAB70]);
  }

  return result;
}

uint64_t sub_1C6C42F94(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6D78A00();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v9, a1, v4, v7);
  v10 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleVisited() + 28);
  sub_1C6C44DFC(a2 + v10, &qword_1EDCDFD00, MEMORY[0x1E69AAB70]);
  (*(v5 + 32))(a2 + v10, v9, v4);
  return (*(v5 + 56))(a2 + v10, 0, 1, v4);
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleVisited.duration.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleVisited() + 28);
  sub_1C6C44DFC(v1 + v3, &qword_1EDCDFD00, MEMORY[0x1E69AAB70]);
  v4 = sub_1C6D78A00();
  v7 = *(v4 - 8);
  (*(v7 + 32))(v1 + v3, a1, v4);
  v5 = *(v7 + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleVisited.duration.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  sub_1C6C450C0(0, &qword_1EDCDFD00, MEMORY[0x1E69AAB70], MEMORY[0x1E69E6720]);
  v7 = *(*(v6 - 8) + 64);
  if (v3)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  v9 = v8;
  v5[1] = v8;
  v10 = sub_1C6D78A00();
  v5[2] = v10;
  v11 = *(v10 - 8);
  v12 = v11;
  v5[3] = v11;
  v13 = *(v11 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v14 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v11 + 64));
    v14 = malloc(v13);
  }

  v15 = v14;
  v5[5] = v14;
  v16 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleVisited() + 28);
  *(v5 + 12) = v16;
  sub_1C6C44D7C(v1 + v16, v9, &qword_1EDCDFD00, MEMORY[0x1E69AAB70]);
  v17 = *(v12 + 48);
  if (v17(v9, 1, v10) == 1)
  {
    sub_1C6D789F0();
    if (v17(v9, 1, v10) != 1)
    {
      sub_1C6C44DFC(v9, &qword_1EDCDFD00, MEMORY[0x1E69AAB70]);
    }
  }

  else
  {
    (*(v12 + 32))(v15, v9, v10);
  }

  return sub_1C6C43400;
}

void sub_1C6C43400(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 12);
  v4 = (*a1)[4];
  v5 = (*a1)[5];
  v6 = (*a1)[2];
  v7 = (*a1)[3];
  v9 = **a1;
  v8 = (*a1)[1];
  if (a2)
  {
    (*(v7 + 16))((*a1)[4], v5, v6);
    sub_1C6C44DFC(v9 + v3, &qword_1EDCDFD00, MEMORY[0x1E69AAB70]);
    (*(v7 + 32))(v9 + v3, v4, v6);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
    (*(v7 + 8))(v5, v6);
  }

  else
  {
    sub_1C6C44DFC(v9 + v3, &qword_1EDCDFD00, MEMORY[0x1E69AAB70]);
    (*(v7 + 32))(v9 + v3, v5, v6);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

BOOL Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleVisited.hasDuration.getter()
{
  v1 = MEMORY[0x1E69AAB70];
  sub_1C6C450C0(0, &qword_1EDCDFD00, MEMORY[0x1E69AAB70], MEMORY[0x1E69E6720]);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v10 - v4;
  v6 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleVisited();
  sub_1C6C44D7C(v0 + *(v6 + 28), v5, &qword_1EDCDFD00, v1);
  v7 = sub_1C6D78A00();
  v8 = (*(*(v7 - 8) + 48))(v5, 1, v7) != 1;
  sub_1C6C44DFC(v5, &qword_1EDCDFD00, v1);
  return v8;
}

Swift::Void __swiftcall Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleVisited.clearDuration()()
{
  v1 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleVisited() + 28);
  sub_1C6C44DFC(v0 + v1, &qword_1EDCDFD00, MEMORY[0x1E69AAB70]);
  v2 = sub_1C6D78A00();
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleVisited.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleVisited() + 20);
  v4 = sub_1C6D78A40();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleVisited.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleVisited() + 20);
  v4 = sub_1C6D78A40();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t sub_1C6C4388C()
{
  v0 = sub_1C6D78D20();
  __swift_allocate_value_buffer(v0, qword_1EC1D8248);
  __swift_project_value_buffer(v0, qword_1EC1D8248);
  sub_1C6C450C0(0, &qword_1EDCDF400, sub_1C6B3FD2C, MEMORY[0x1E69E6F90]);
  sub_1C6B3FD2C();
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1C6D807C0;
  v6 = (v5 + v4);
  v7 = v5 + v4 + *(v2 + 56);
  *v6 = 1;
  *v7 = "article_id";
  *(v7 + 8) = 10;
  *(v7 + 16) = 2;
  v8 = *MEMORY[0x1E69AADE8];
  v9 = sub_1C6D78D00();
  v10 = *(*(v9 - 8) + 104);
  (v10)(v7, v8, v9);
  v11 = v6 + v3 + *(v2 + 56);
  *(v6 + v3) = 2;
  *v11 = "metadata";
  *(v11 + 1) = 8;
  v11[16] = 2;
  v12 = *MEMORY[0x1E69AADC8];
  v10();
  v13 = v6 + 2 * v3 + *(v2 + 56);
  *(v6 + 2 * v3) = 3;
  *v13 = "duration";
  *(v13 + 8) = 8;
  *(v13 + 16) = 2;
  v10();
  return sub_1C6D78D10();
}

uint64_t static Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleVisited._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC1D5A38 != -1)
  {
    swift_once();
  }

  v2 = sub_1C6D78D20();
  v3 = __swift_project_value_buffer(v2, qword_1EC1D8248);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleVisited.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_1C6D78AD0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 3:
        sub_1C6C43CD0();
        break;
      case 2:
        sub_1C6C43C1C();
        break;
      case 1:
        sub_1C6D78B50();
        break;
    }
  }

  return result;
}

uint64_t sub_1C6C43C1C()
{
  v0 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleVisited() + 24);
  type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0);
  sub_1C6C451F8(qword_1EDCE2E40, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
  return sub_1C6D78BB0();
}

uint64_t sub_1C6C43CD0()
{
  v0 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleVisited() + 28);
  sub_1C6D78A00();
  sub_1C6C451F8(&qword_1EDCDFD08, MEMORY[0x1E69AAB70]);
  return sub_1C6D78BB0();
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleVisited.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*v3 || (result = sub_1C6D78CA0(), !v4))
  {
    result = sub_1C6C43E38(v3, a1, a2, a3);
    if (!v4)
    {
      sub_1C6C4405C(v3, a1, a2, a3);
      v9 = v3 + *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleVisited() + 20);
      return sub_1C6D78A20();
    }
  }

  return result;
}

uint64_t sub_1C6C43E38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  sub_1C6C450C0(0, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata, MEMORY[0x1E69E6720]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleVisited();
  sub_1C6C44D7C(a1 + *(v14 + 24), v8, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1C6C44DFC(v8, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
  }

  sub_1C6B3E2B0(v8, v13);
  sub_1C6C451F8(qword_1EDCE2E40, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
  sub_1C6D78CF0();
  return sub_1C6C02E68(v13);
}

uint64_t sub_1C6C4405C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[3] = a4;
  v17[1] = a3;
  v5 = MEMORY[0x1E69AAB70];
  sub_1C6C450C0(0, &qword_1EDCDFD00, MEMORY[0x1E69AAB70], MEMORY[0x1E69E6720]);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = v17 - v8;
  v10 = sub_1C6D78A00();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleVisited();
  sub_1C6C44D7C(a1 + *(v15 + 28), v9, &qword_1EDCDFD00, v5);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return sub_1C6C44DFC(v9, &qword_1EDCDFD00, MEMORY[0x1E69AAB70]);
  }

  (*(v11 + 32))(v14, v9, v10);
  sub_1C6C451F8(&qword_1EDCDFD08, MEMORY[0x1E69AAB70]);
  sub_1C6D78CF0();
  return (*(v11 + 8))(v14, v10);
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleVisited.hashValue.getter()
{
  sub_1C6D7A260();
  type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleVisited();
  sub_1C6C451F8(&qword_1EC1D8260, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleVisited);
  sub_1C6D79510();
  return sub_1C6D7A2B0();
}

uint64_t sub_1C6C44330@<X0>(int *a1@<X0>, char *a2@<X8>)
{
  *a2 = 0;
  v4 = &a2[a1[5]];
  sub_1C6D78A30();
  v5 = a1[6];
  v6 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0);
  (*(*(v6 - 8) + 56))(&a2[v5], 1, 1, v6);
  v7 = a1[7];
  v8 = sub_1C6D78A00();
  v9 = *(*(v8 - 8) + 56);

  return v9(&a2[v7], 1, 1, v8);
}

uint64_t sub_1C6C4444C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6C451F8(&qword_1EC1D8270, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleVisited);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C6C444C8@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC1D5A38 != -1)
  {
    swift_once();
  }

  v2 = sub_1C6D78D20();
  v3 = __swift_project_value_buffer(v2, qword_1EC1D8248);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1C6C44570(uint64_t a1)
{
  v2 = sub_1C6C451F8(qword_1EDCE3030, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleVisited);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C6C445DC()
{
  sub_1C6C451F8(qword_1EDCE3030, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleVisited);

  return sub_1C6D78C20();
}

uint64_t _s19NewsPersonalization010Com_Apple_a1_B44Storage_CompressedSessionEventArticleVisitedV2eeoiySbAC_ACtFZ_0(_DWORD *a1, _DWORD *a2)
{
  v4 = sub_1C6D78A00();
  v61 = *(v4 - 8);
  v5 = *(v61 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v58 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1E69AAB70];
  v8 = MEMORY[0x1E69E6720];
  sub_1C6C450C0(0, &qword_1EDCDFD00, MEMORY[0x1E69AAB70], MEMORY[0x1E69E6720]);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v59 = &v52 - v11;
  sub_1C6C45124(0, &qword_1EC1D6F60, &qword_1EDCDFD00, v7);
  v13 = v12;
  v14 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v60 = &v52 - v15;
  v16 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v52 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6C450C0(0, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata, v8);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v24 = &v52 - v23;
  sub_1C6C45124(0, &qword_1EC1D68C8, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
  v26 = v25;
  v27 = *(*(v25 - 8) + 64);
  MEMORY[0x1EEE9AC00](v25);
  v29 = &v52 - v28;
  if (*a1 != *a2)
  {
    goto LABEL_16;
  }

  v53 = v13;
  v55 = v4;
  v54 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleVisited();
  v30 = *(v54 + 24);
  v31 = *(v26 + 48);
  v56 = a1;
  sub_1C6C44D7C(a1 + v30, v29, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
  v57 = a2;
  sub_1C6C44D7C(a2 + v30, &v29[v31], qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
  v32 = *(v17 + 48);
  if (v32(v29, 1, v16) != 1)
  {
    sub_1C6C44D7C(v29, v24, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
    if (v32(&v29[v31], 1, v16) != 1)
    {
      sub_1C6B3E2B0(&v29[v31], v20);
      v36 = static Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.== infix(_:_:)(v24, v20);
      sub_1C6C02E68(v20);
      sub_1C6C02E68(v24);
      sub_1C6C44DFC(v29, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
      if ((v36 & 1) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_9;
    }

    sub_1C6C02E68(v24);
LABEL_7:
    v33 = &qword_1EC1D68C8;
    v34 = qword_1EDCE2DF8;
    v35 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata;
LABEL_15:
    sub_1C6C4519C(v29, v33, v34, v35);
    goto LABEL_16;
  }

  if (v32(&v29[v31], 1, v16) != 1)
  {
    goto LABEL_7;
  }

  sub_1C6C44DFC(v29, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
LABEL_9:
  v37 = v54;
  v38 = *(v54 + 28);
  v39 = *(v53 + 48);
  v40 = MEMORY[0x1E69AAB70];
  v29 = v60;
  sub_1C6C44D7C(v56 + v38, v60, &qword_1EDCDFD00, MEMORY[0x1E69AAB70]);
  sub_1C6C44D7C(v57 + v38, &v29[v39], &qword_1EDCDFD00, v40);
  v41 = v61;
  v42 = *(v61 + 48);
  v43 = v55;
  if (v42(v29, 1, v55) == 1)
  {
    if (v42(&v29[v39], 1, v43) == 1)
    {
      sub_1C6C44DFC(v29, &qword_1EDCDFD00, MEMORY[0x1E69AAB70]);
LABEL_19:
      v51 = *(v37 + 20);
      sub_1C6D78A40();
      sub_1C6C451F8(&qword_1EC1D6AF0, MEMORY[0x1E69AAC08]);
      v45 = sub_1C6D79560();
      return v45 & 1;
    }

    goto LABEL_14;
  }

  v44 = v59;
  sub_1C6C44D7C(v29, v59, &qword_1EDCDFD00, MEMORY[0x1E69AAB70]);
  if (v42(&v29[v39], 1, v43) == 1)
  {
    (*(v41 + 8))(v44, v43);
LABEL_14:
    v33 = &qword_1EC1D6F60;
    v34 = &qword_1EDCDFD00;
    v35 = MEMORY[0x1E69AAB70];
    goto LABEL_15;
  }

  v47 = &v29[v39];
  v48 = v58;
  (*(v41 + 32))(v58, v47, v43);
  sub_1C6C451F8(&qword_1EC1D6F68, MEMORY[0x1E69AAB70]);
  v49 = sub_1C6D79560();
  v50 = *(v41 + 8);
  v50(v48, v43);
  v50(v44, v43);
  sub_1C6C44DFC(v29, &qword_1EDCDFD00, MEMORY[0x1E69AAB70]);
  if (v49)
  {
    goto LABEL_19;
  }

LABEL_16:
  v45 = 0;
  return v45 & 1;
}

uint64_t sub_1C6C44D7C(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1C6C450C0(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1C6C44DFC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1C6C450C0(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_1C6C44FB4()
{
  sub_1C6D78A40();
  if (v0 <= 0x3F)
  {
    sub_1C6C450C0(319, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      sub_1C6C450C0(319, &qword_1EDCDFD00, MEMORY[0x1E69AAB70], MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1C6C450C0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1C6C45124(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    sub_1C6C450C0(255, a3, a4, MEMORY[0x1E69E6720]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v6)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t sub_1C6C4519C(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1C6C45124(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t sub_1C6C451F8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLegacyMetadata()
{
  result = qword_1EDCE2B90;
  if (!qword_1EDCE2B90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLegacyMetadata.groupBackingTagID.getter()
{
  v1 = (v0 + *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLegacyMetadata() + 32));
  if (v1[4])
  {
    return 0;
  }

  else
  {
    return *v1;
  }
}

void Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLegacyMetadata.group.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v2;
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLegacyMetadata.group.setter(uint64_t result)
{
  v2 = *(result + 8);
  *v1 = *result;
  *(v1 + 8) = v2;
  return result;
}

void Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLegacyMetadata.feed.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *(v1 + 16);
  *(a1 + 8) = v2;
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLegacyMetadata.feed.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 16) = *result;
  *(v1 + 24) = v2;
  return result;
}

void Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLegacyMetadata.viewAction.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 40);
  *a1 = *(v1 + 32);
  *(a1 + 8) = v2;
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLegacyMetadata.viewAction.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 32) = *result;
  *(v1 + 40) = v2;
  return result;
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLegacyMetadata.groupBackingTagID.setter(int a1)
{
  result = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLegacyMetadata();
  v4 = v1 + *(result + 32);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLegacyMetadata.groupBackingTagID.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLegacyMetadata() + 32);
  *(a1 + 12) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 4))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *(a1 + 8) = v5;
  return sub_1C6C45468;
}

uint64_t sub_1C6C45468(uint64_t result)
{
  v1 = *result + *(result + 12);
  *v1 = *(result + 8);
  *(v1 + 4) = 0;
  return result;
}

Swift::Void __swiftcall Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLegacyMetadata.clearGroupBackingTagID()()
{
  v1 = v0 + *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLegacyMetadata() + 32);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLegacyMetadata.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLegacyMetadata() + 28);
  v4 = sub_1C6D78A40();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLegacyMetadata.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLegacyMetadata() + 28);
  v4 = sub_1C6D78A40();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLegacyMetadata.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
  *(a1 + 32) = 0;
  *(a1 + 40) = 1;
  v2 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLegacyMetadata();
  v3 = a1 + *(v2 + 28);
  result = sub_1C6D78A30();
  v5 = a1 + *(v2 + 32);
  *v5 = 0;
  *(v5 + 4) = 1;
  return result;
}

uint64_t sub_1C6C4567C()
{
  v0 = sub_1C6D78D20();
  __swift_allocate_value_buffer(v0, qword_1EC1D8278);
  __swift_project_value_buffer(v0, qword_1EC1D8278);
  sub_1C6B4A290();
  sub_1C6B3FD2C();
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1C6D80210;
  v6 = v5 + v4;
  v7 = v5 + v4 + *(v2 + 56);
  *(v5 + v4) = 1;
  *v7 = "group";
  *(v7 + 8) = 5;
  *(v7 + 16) = 2;
  v8 = *MEMORY[0x1E69AADC8];
  v9 = sub_1C6D78D00();
  v10 = *(*(v9 - 8) + 104);
  (v10)(v7, v8, v9);
  v11 = v6 + v3 + *(v2 + 56);
  *(v6 + v3) = 2;
  *v11 = "feed";
  *(v11 + 8) = 4;
  *(v11 + 16) = 2;
  v10();
  v12 = (v6 + 2 * v3);
  v13 = v12 + *(v2 + 56);
  *v12 = 3;
  *v13 = "view_action";
  *(v13 + 1) = 11;
  v13[16] = 2;
  v14 = *MEMORY[0x1E69AADE8];
  v10();
  v15 = (v6 + 3 * v3);
  v16 = v15 + *(v2 + 56);
  *v15 = 4;
  *v16 = "group_backing_tag_id";
  *(v16 + 1) = 20;
  v16[16] = 2;
  v10();
  return sub_1C6D78D10();
}

uint64_t static Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLegacyMetadata._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC1D5A40 != -1)
  {
    swift_once();
  }

  v2 = sub_1C6D78D20();
  v3 = __swift_project_value_buffer(v2, qword_1EC1D8278);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLegacyMetadata.decodeMessage<A>(decoder:)()
{
  result = sub_1C6D78AD0();
  if (!v0)
  {
    while (1)
    {
      if (v2)
      {
        return result;
      }

      if (result > 2)
      {
        if (result == 3)
        {
          v3 = v0;
          sub_1C6C0FC3C();
LABEL_5:
          v0 = v3;
          sub_1C6D78B00();
          goto LABEL_6;
        }

        if (result == 4)
        {
          v4 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLegacyMetadata() + 32);
          sub_1C6D78B40();
        }
      }

      else
      {
        if (result == 1)
        {
          v3 = v0;
          sub_1C6C0FB94();
          goto LABEL_5;
        }

        if (result == 2)
        {
          v3 = v0;
          sub_1C6C0FBE8();
          goto LABEL_5;
        }
      }

LABEL_6:
      result = sub_1C6D78AD0();
    }
  }

  return result;
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLegacyMetadata.traverse<A>(visitor:)()
{
  v2 = v1;
  v3 = *v0;
  v4 = *(v0 + 8);
  if (Com_Apple_News_Personalization_GroupType.rawValue.getter())
  {
    sub_1C6C0FB94();
    result = sub_1C6D78C70();
    if (v1)
    {
      return result;
    }

    v2 = 0;
  }

  if (*(v0 + 16))
  {
    v8 = *(v0 + 16);
    v9 = *(v0 + 24);
    sub_1C6C0FBE8();
    v6 = v2;
    result = sub_1C6D78C70();
    if (v2)
    {
      return result;
    }

    if (!*(v0 + 32))
    {
      goto LABEL_10;
    }

LABEL_9:
    v10 = *(v0 + 40);
    sub_1C6C0FC3C();
    result = sub_1C6D78C70();
    if (v6)
    {
      return result;
    }

    goto LABEL_10;
  }

  v6 = v2;
  if (*(v0 + 32))
  {
    goto LABEL_9;
  }

LABEL_10:
  result = sub_1C6C45C14(v0);
  if (!v6)
  {
    v7 = v0 + *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLegacyMetadata() + 28);
    return sub_1C6D78A20();
  }

  return result;
}

uint64_t sub_1C6C45C14(uint64_t a1)
{
  result = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLegacyMetadata();
  v3 = (a1 + *(result + 32));
  if ((v3[1] & 1) == 0)
  {
    v4 = *v3;
    return sub_1C6D78CA0();
  }

  return result;
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLegacyMetadata.hashValue.getter()
{
  sub_1C6D7A260();
  type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLegacyMetadata();
  sub_1C6C46358(&qword_1EC1D8290, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLegacyMetadata);
  sub_1C6D79510();
  return sub_1C6D7A2B0();
}

uint64_t sub_1C6C45D18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 1;
  *(a2 + 16) = 0;
  *(a2 + 24) = 1;
  *(a2 + 32) = 0;
  *(a2 + 40) = 1;
  v4 = a2 + *(a1 + 28);
  result = sub_1C6D78A30();
  v6 = a2 + *(a1 + 32);
  *v6 = 0;
  *(v6 + 4) = 1;
  return result;
}

uint64_t sub_1C6C45DC8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6C46358(&qword_1EC1D82A0, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLegacyMetadata);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C6C45E44@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC1D5A40 != -1)
  {
    swift_once();
  }

  v2 = sub_1C6D78D20();
  v3 = __swift_project_value_buffer(v2, qword_1EC1D8278);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1C6C45EEC(uint64_t a1)
{
  v2 = sub_1C6C46358(qword_1EDCE2BA8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLegacyMetadata);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C6C45F58()
{
  sub_1C6C46358(qword_1EDCE2BA8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLegacyMetadata);

  return sub_1C6D78C20();
}

uint64_t _s19NewsPersonalization010Com_Apple_a1_B51Storage_CompressedSessionEventArticleLegacyMetadataV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v17 = *a1;
  v18 = *(a1 + 8);
  v15 = *a2;
  v16 = *(a2 + 8);
  v4 = Com_Apple_News_Personalization_GroupType.rawValue.getter();
  if (v4 != Com_Apple_News_Personalization_GroupType.rawValue.getter())
  {
    return 0;
  }

  v5 = *(a2 + 24);
  if (!sub_1C6B69164(a1[2], *(a1 + 24), a2[2]))
  {
    return 0;
  }

  v6 = *(a2 + 40);
  if (!sub_1C6B69164(a1[4], *(a1 + 40), a2[4]))
  {
    return 0;
  }

  v7 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLegacyMetadata();
  v8 = *(v7 + 32);
  v9 = (a1 + v8);
  v10 = *(a1 + v8 + 4);
  v11 = (a2 + v8);
  v12 = *(a2 + v8 + 4);
  if (v10)
  {
    if (!v12)
    {
      return 0;
    }
  }

  else
  {
    if (*v9 != *v11)
    {
      LOBYTE(v12) = 1;
    }

    if (v12)
    {
      return 0;
    }
  }

  v14 = *(v7 + 28);
  sub_1C6D78A40();
  sub_1C6C46358(&qword_1EC1D6AF0, MEMORY[0x1E69AAC08]);
  return sub_1C6D79560() & 1;
}

void sub_1C6C4625C()
{
  sub_1C6D78A40();
  if (v0 <= 0x3F)
  {
    sub_1C6C46308();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1C6C46308()
{
  if (!qword_1EDCDF3D8)
  {
    v0 = sub_1C6D79C00();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDCDF3D8);
    }
  }
}

uint64_t sub_1C6C46358(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1C6C463A0(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v63 = a2;
  v6 = sub_1C6D773B0();
  v58 = *(v6 - 8);
  v59 = v6;
  v7 = *(v58 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v57 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1C6D77430();
  v60 = *(v9 - 8);
  v61 = v9;
  v10 = *(v60 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = sub_1C6D77D60();
  v62 = *(v64 - 8);
  v13 = *(v62 + 64);
  MEMORY[0x1EEE9AC00](v64);
  v65 = &v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6C474AC();
  v16 = v15;
  v17 = *(v15 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v20 = &v53 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1C6D77290();
  v22 = *(*(v21 - 8) + 64);
  v23 = MEMORY[0x1EEE9AC00](v21);
  (*(v25 + 16))(&v53 - v24, a1, v21, v23);
  if (swift_dynamicCast())
  {
    v56 = a3;
    v26 = v66[7];
    (*(v17 + 8))(v20, v16);
    v27 = sub_1C6D77270();
    v28 = sub_1C6D77330();
    v30 = v29;

    if (!v3)
    {
      sub_1C6C47540(&qword_1EDCE5E78, MEMORY[0x1E69B4A58]);
      v31 = v64;
      sub_1C6D75AF0();
      v63 = 0;
      v54 = v28;
      v55 = v30;
      swift_beginAccess();
      v33 = *(v26 + 16);

      sub_1C6D77D10();
      v34 = sub_1C6D77420();
      v36 = v35;
      v37 = v61;
      v38 = *(v60 + 8);
      v38(v12, v61);
      LOBYTE(v34) = sub_1C6B1E978(v34, v36, v33);

      if (v34)
      {
        (*(v62 + 8))(v65, v31);
        sub_1C6B1C9F0(v54, v55);
        v39 = sub_1C6D76F90();
        (*(*(v39 - 8) + 56))(v56, 1, 1, v39);
      }

      else
      {
        sub_1C6D77D10();
        v40 = sub_1C6D77420();
        v42 = v41;
        v38(v12, v37);
        swift_beginAccess();
        sub_1C6B1E6A8(v66, v40, v42);
        swift_endAccess();

        v43 = v56;
        v56[3] = v31;
        v44 = MEMORY[0x1E69B4A58];
        v43[4] = sub_1C6C47540(&qword_1EDCE5E90, MEMORY[0x1E69B4A58]);
        v43[5] = sub_1C6C47540(&qword_1EDCE5E88, v44);
        boxed_opaque_existential_2 = __swift_allocate_boxed_opaque_existential_2(v43);
        v46 = v62;
        v47 = v65;
        (*(v62 + 16))(boxed_opaque_existential_2, v65, v31);
        v48 = v57;
        sub_1C6D77D50();
        v49 = sub_1C6D773A0();
        sub_1C6B1C9F0(v54, v55);
        (*(v58 + 8))(v48, v59);
        (*(v46 + 8))(v47, v31);
        v43[6] = v49;
        v50 = *MEMORY[0x1E69E35F8];
        v51 = sub_1C6D76F90();
        v52 = *(v51 - 8);
        (*(v52 + 104))(v43, v50, v51);
        (*(v52 + 56))(v43, 0, 1, v51);
      }
    }
  }

  else
  {
    v32 = sub_1C6D76F90();
    (*(*(v32 - 8) + 56))(a3, 1, 1, v32);
  }
}
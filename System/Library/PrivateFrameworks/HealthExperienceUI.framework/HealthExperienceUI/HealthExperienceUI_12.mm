uint64_t sub_1BA058188(void *a1)
{
  v71 = sub_1BA4A1798();
  v70 = *(v71 - 8);
  MEMORY[0x1EEE9AC00](v71);
  v69 = &v69 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = sub_1BA4A4428();
  v3 = *(v83 - 8);
  MEMORY[0x1EEE9AC00](v83);
  v81 = &v69 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = type metadata accessor for ContentConfigurationItem();
  v82 = *(v84 - 8);
  MEMORY[0x1EEE9AC00](v84);
  v72 = &v69 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = &v69 - v8;
  v10 = [a1 dictionaryWithPropertyValues];
  v11 = sub_1BA4A6628();

  v12 = *(v11 + 16);
  v13 = MEMORY[0x1E69E7CC0];
  if (v12)
  {
    v14 = MEMORY[0x1E69E7CC0];
    v15 = sub_1BA021B74(*(v11 + 16), 0);
    v16 = sub_1BA023A08(&v91, (v15 + 4), v12, v11);
    v87 = v94;
    v88 = v16;

    sub_1B9F52E48();
    if (v88 != v12)
    {
LABEL_15:
      __break(1u);

      __break(1u);
      return result;
    }

    v13 = v14;
  }

  else
  {
    v15 = MEMORY[0x1E69E7CC0];
  }

  v91 = v15;
  sub_1BA054A80(&v91);

  v17 = v91;
  v15 = *(v91 + 16);
  if (v15)
  {
    v96 = v13;
    sub_1BA066F00(0, v15, 0);
    v18 = (v17 + 4);
    v19 = v96;
    v78 = objc_opt_self();
    v77 = *MEMORY[0x1E69DDD80];
    v76 = objc_opt_self();
    v20 = 0;
    v75 = *MEMORY[0x1E69DDCF8];
    v74 = (v3 + 16);
    v73 = (v3 + 8);
    v80 = v17;
    v79 = v15;
    while (v20 < v17[2])
    {
      sub_1BA058FF0(v18, &v91, sub_1BA058C84);
      v88 = v19;
      v86 = sub_1BA4A7D28();
      v22 = v21;
      sub_1B9F0AD9C(&v95, v89);
      v85 = sub_1BA4A6808();
      v23 = v81;
      sub_1BA4A4198();

      sub_1BA4A43B8();
      v24 = v78;
      v25 = [v78 preferredFontForTextStyle_];
      v26 = sub_1BA4A4238();
      v87 = v18;
      v27 = v26;
      sub_1BA4A41E8();
      v27(v89, 0);
      v28 = v76;
      v29 = [v76 secondaryLabelColor];
      v30 = sub_1BA4A4238();
      sub_1BA4A41F8();
      v30(v89, 0);

      sub_1BA4A41A8();
      v31 = [v24 preferredFontForTextStyle_];
      v32 = sub_1BA4A4318();
      sub_1BA4A41E8();
      v32(v89, 0);
      v33 = [v28 labelColor];
      v34 = sub_1BA4A4318();
      sub_1BA4A41F8();
      v34(v89, 0);
      v35 = v83;
      *(v9 + 12) = v83;
      *(v9 + 13) = MEMORY[0x1E69DC110];
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v9 + 9);
      (*v74)(boxed_opaque_existential_1, v23, v35);
      v37 = v84;
      v38 = *(v84 + 40);
      v39 = sub_1BA4A4168();
      (*(*(v39 - 8) + 56))(&v9[v38], 1, 1, v39);
      v90 = 0;
      memset(v89, 0, sizeof(v89));
      (*v73)(v23, v35);
      sub_1BA058FF0(v89, (v9 + 16), sub_1B9F2F31C);
      *&v9[v37[12]] = 0;
      *&v9[v37[13]] = 0;
      *v9 = v86;
      *(v9 + 1) = v22;
      v9[112] = 0;
      *(v9 + 15) = MEMORY[0x1E69E7CC0];
      *(v9 + 7) = 0;
      *(v9 + 8) = 0;
      v40 = v37[11];
      v19 = v88;
      v41 = &v9[v40];
      *v41 = 0;
      *(v41 + 1) = 0;

      sub_1BA059058(v89, sub_1B9F2F31C);

      sub_1BA059058(&v91, sub_1BA058C84);
      v96 = v19;
      v43 = *(v19 + 16);
      v42 = *(v19 + 24);
      if (v43 >= v42 >> 1)
      {
        sub_1BA066F00(v42 > 1, v43 + 1, 1);
        v19 = v96;
      }

      v20 = (v20 + 1);
      *(v19 + 16) = v43 + 1;
      sub_1BA058CEC(v9, v19 + ((*(v82 + 80) + 32) & ~*(v82 + 80)) + *(v82 + 72) * v43);
      v18 = v87 + 72;
      v15 = v79;
      v17 = v80;
      if (v79 == v20)
      {

        goto LABEL_13;
      }
    }

    __break(1u);
    goto LABEL_15;
  }

  v19 = MEMORY[0x1E69E7CC0];
LABEL_13:
  static ContentConfigurationItem.makeListHeaderConfiguration(text:automationIdentifier:)(0x706F7250206C6C41, 0xEE00736569747265, 0, 0, v72);
  v44 = sub_1B9FE5788(v19);

  v45 = v69;
  sub_1BA4A1788();
  v46 = sub_1BA4A1748();
  v48 = v47;
  v49 = *(v70 + 8);
  v50 = v71;
  v49(v45, v71);
  sub_1B9F1C5F0(MEMORY[0x1E69E7CC0]);

  v52 = Array<A>.identifierToIndexDict()(v51);

  sub_1B9F216C8(0, &qword_1EDC5DC90, &type metadata for ArrayDataSourceSection, MEMORY[0x1E69E6F90]);
  v53 = swift_allocObject();
  *(v53 + 16) = xmmword_1BA4B5480;
  *(v53 + 32) = 0;
  *(v53 + 40) = 0;
  *(v53 + 48) = v44;
  *(v53 + 56) = v52;
  *(v53 + 64) = v46;
  *(v53 + 72) = v48;
  v91 = 0x3C53447961727241;
  v92 = 0xE800000000000000;
  sub_1BA4A1788();
  v54 = sub_1BA4A1748();
  v56 = v55;
  v49(v45, v50);
  MEMORY[0x1BFAF1350](v54, v56);

  MEMORY[0x1BFAF1350](62, 0xE100000000000000);
  v57 = v91;
  v58 = v92;
  type metadata accessor for ArrayDataSource();
  swift_allocObject();
  v59 = sub_1B9F348D8(v53, v57, v58);

  v93 = v84;
  v94 = sub_1BA058D50();
  v60 = __swift_allocate_boxed_opaque_existential_1(&v91);
  sub_1BA058CEC(v72, v60);
  sub_1B9F0A534(&v91, v89);
  v61 = swift_allocObject();
  sub_1B9F1134C(v89, v61 + 16);
  sub_1BA001A4C(0);
  v62 = swift_allocObject();
  v62[4] = v59;
  v62[5] = sub_1B9F79BC8;
  v62[6] = v61;
  v64 = v59[5];
  v63 = v59[6];
  v62[2] = v64;
  v62[3] = v63;

  __swift_destroy_boxed_opaque_existential_1(&v91);
  sub_1BA058DA8(0);
  v65 = swift_allocObject();
  v65[4] = v62;
  v65[5] = sub_1BA0590E0;
  v65[6] = 0;
  v65[2] = v64;
  v65[3] = v63;
  v66 = swift_allocObject();
  v66[2] = sub_1BA0590E4;
  v66[3] = 0;
  v66[4] = v65;
  sub_1BA058DE4(0, &qword_1EBBEAAF8, sub_1BA058DA8, &protocol witness table for CellRegistering<A>, type metadata accessor for DataSourceWithLayout);
  v67 = swift_allocObject();
  *(v67 + 16) = v65;
  *(v67 + 24) = v64;
  *(v67 + 32) = v63;
  *(v67 + 40) = 0;
  *(v67 + 48) = sub_1BA058E50;
  *(v67 + 56) = v66;
  swift_bridgeObjectRetain_n();

  return v67;
}

void sub_1BA058C84()
{
  if (!qword_1EBBEAAE0)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EBBEAAE0);
    }
  }
}

uint64_t sub_1BA058CEC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContentConfigurationItem();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1BA058D50()
{
  result = qword_1EDC664A0;
  if (!qword_1EDC664A0)
  {
    type metadata accessor for ContentConfigurationItem();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC664A0);
  }

  return result;
}

void sub_1BA058DE4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a5(a1, v9, a4);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

uint64_t sub_1BA058E7C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1B9F2F7BC(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1BA058EEC(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1B9F2F7BC(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1BA058FF0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BA059058(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t HealthURLActivityItemProvider.__allocating_init(title:url:image:thumbnailImage:subtitle:)(uint64_t a1, uint64_t a2, char *a3, void *a4, void *a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v36 = a6;
  v37 = a7;
  sub_1BA011090();
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1BA4A15D8();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v34 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = v8;
  v21 = objc_allocWithZone(v8);
  v22 = &v21[OBJC_IVAR____TtC18HealthExperienceUI29HealthURLActivityItemProvider_title];
  *v22 = a1;
  *(v22 + 1) = a2;
  v23 = *(v18 + 16);
  v35 = a3;
  v23(&v21[OBJC_IVAR____TtC18HealthExperienceUI29HealthURLActivityItemProvider_url], a3, v17);
  *&v21[OBJC_IVAR____TtC18HealthExperienceUI29HealthURLActivityItemProvider_image] = a4;
  v24 = a5;
  if (!a5)
  {
    v25 = a4;
    v24 = a4;
  }

  *&v21[OBJC_IVAR____TtC18HealthExperienceUI29HealthURLActivityItemProvider_thumbnailImage] = v24;
  v26 = &v21[OBJC_IVAR____TtC18HealthExperienceUI29HealthURLActivityItemProvider_subtitle];
  v27 = v37;
  *v26 = v36;
  *(v26 + 1) = v27;
  v28 = a5;
  v29 = a4;
  sub_1BA4A15C8();
  result = (*(v18 + 48))(v16, 1, v17);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v18 + 32))(v20, v16, v17);
    v31 = sub_1BA4A1548();
    v32 = *(v18 + 8);
    v32(v20, v17);
    v38.receiver = v21;
    v38.super_class = v34;
    v33 = objc_msgSendSuper2(&v38, sel_initWithPlaceholderItem_, v31);

    v32(v35, v17);
    return v33;
  }

  return result;
}

uint64_t sub_1BA059388()
{
  if (qword_1EBBE8588 != -1)
  {
    swift_once();
  }

  qword_1EBBEAB18 = qword_1EBBEF2A8;
  unk_1EBBEAB20 = unk_1EBBEF2B0;
}

uint64_t static String.defaultURLProviderSubtitle.getter()
{
  if (qword_1EBBE8298 != -1)
  {
    swift_once();
  }

  v0 = qword_1EBBEAB18;

  return v0;
}

uint64_t HealthURLActivityItemProvider.init(title:url:image:thumbnailImage:subtitle:)(uint64_t a1, uint64_t a2, char *a3, void *a4, void *a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v34 = a6;
  v35 = a7;
  sub_1BA011090();
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1BA4A15D8();
  v18 = *(v17 - 8);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v21 = &v34 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = &v8[OBJC_IVAR____TtC18HealthExperienceUI29HealthURLActivityItemProvider_title];
  *v22 = a1;
  *(v22 + 1) = a2;
  (*(v18 + 16))(&v8[OBJC_IVAR____TtC18HealthExperienceUI29HealthURLActivityItemProvider_url], a3, v17, v19);
  *&v8[OBJC_IVAR____TtC18HealthExperienceUI29HealthURLActivityItemProvider_image] = a4;
  v23 = a5;
  if (!a5)
  {
    v24 = a4;
    v23 = a4;
  }

  *&v8[OBJC_IVAR____TtC18HealthExperienceUI29HealthURLActivityItemProvider_thumbnailImage] = v23;
  v25 = &v8[OBJC_IVAR____TtC18HealthExperienceUI29HealthURLActivityItemProvider_subtitle];
  v26 = v35;
  *v25 = v34;
  *(v25 + 1) = v26;
  v27 = a5;
  v28 = a4;
  sub_1BA4A15C8();
  result = (*(v18 + 48))(v16, 1, v17);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v18 + 32))(v21, v16, v17);
    v30 = sub_1BA4A1548();
    v31 = *(v18 + 8);
    v31(v21, v17);
    v32 = type metadata accessor for HealthURLActivityItemProvider();
    v36.receiver = v8;
    v36.super_class = v32;
    v33 = objc_msgSendSuper2(&v36, sel_initWithPlaceholderItem_, v30);

    v31(a3, v17);
    return v33;
  }

  return result;
}

uint64_t type metadata accessor for HealthURLActivityItemProvider()
{
  result = qword_1EBBEAB30;
  if (!qword_1EBBEAB30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_1BA05984C()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI29HealthURLActivityItemProvider_image);
  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v3 = _sSo22UIActivityItemProviderC18HealthExperienceUIE07defaultD5ImageSo7UIImageCvgZ_0();
  }

  v4 = *(v1 + OBJC_IVAR____TtC18HealthExperienceUI29HealthURLActivityItemProvider_thumbnailImage);
  v5 = v2;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = _sSo22UIActivityItemProviderC18HealthExperienceUIE07defaultD5ImageSo7UIImageCvgZ_0();
  }

  v7 = objc_allocWithZone(MEMORY[0x1E696ECA0]);
  v8 = v4;
  v9 = [v7 init];
  v10 = sub_1BA4A6758();
  [v9 setTitle_];

  v11 = sub_1BA4A1548();
  [v9 setOriginalURL_];

  v12 = [objc_allocWithZone(MEMORY[0x1E696EC68]) initWithPlatformImage_];
  [v9 setImage_];

  v13 = [objc_allocWithZone(MEMORY[0x1E696ACA0]) initWithObject_];
  [v9 setImageProvider_];

  v14 = [objc_allocWithZone(MEMORY[0x1E696ACA0]) initWithObject_];
  [v9 setIconProvider_];

  v15 = sub_1BA4A6758();
  [v9 setSummary_];

  return v9;
}

id HealthURLActivityItemProvider.__allocating_init(placeholderItem:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v4 = [v3 initWithPlaceholderItem_];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v4;
}

id HealthURLActivityItemProvider.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HealthURLActivityItemProvider();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1BA059C24()
{
  result = sub_1BA4A15D8();
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

id UINavigationItem.configureForAppearOnScroll(scrollDistance:)(double a1)
{
  result = [v1 _autoScrollEdgeTransitionDistance];
  if (v4 != a1)
  {
    [v1 _setManualScrollEdgeAppearanceEnabled_];
    [v1 _setAutoScrollEdgeTransitionDistance_];

    return [v1 _setManualScrollEdgeAppearanceEnabled_];
  }

  return result;
}

void *DataSourceWithAdaptiveSectionItemLimit.__allocating_init(source:limits:defaultLimit:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_1BA05A1B0(a1, a2, a3);
  swift_unknownObjectRelease();
  return v3;
}

void *DataSourceWithAdaptiveSectionItemLimit.init(source:limits:defaultLimit:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_1BA05A190(a1, a2, a3);
  swift_unknownObjectRelease();
  return v3;
}

uint64_t sub_1BA059E48()
{
  sub_1B9F7A684();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1BA4B5480;
  v1 = sub_1BA4A4438();
  v2 = MEMORY[0x1E69DC130];
  *(v0 + 32) = v1;
  *(v0 + 40) = v2;
  sub_1B9F264D0();
  sub_1B9F0D950(0, &qword_1EDC63A40);
  swift_unknownObjectRetain();
  if (swift_dynamicCast())
  {
    v3 = *(&v9 + 1);
    v4 = v10;
    __swift_project_boxed_opaque_existential_1(&v8, *(&v9 + 1));
    v5 = (*(v4 + 8))(v3, v4);
    __swift_destroy_boxed_opaque_existential_1(&v8);
    v6 = v5;
  }

  else
  {
    v10 = 0;
    v8 = 0u;
    v9 = 0u;
    sub_1B9F3BB6C(&v8);
    v6 = MEMORY[0x1E69E7CC0];
  }

  *&v8 = v0;
  sub_1B9F3BC30(v6);
  return v8;
}

uint64_t DataSourceWithAdaptiveSectionItemLimit.deinit()
{
  v0 = DataSourceWithSectionItemLimit.deinit();

  return v0;
}

uint64_t DataSourceWithAdaptiveSectionItemLimit.__deallocating_deinit()
{
  DataSourceWithSectionItemLimit.deinit();

  return swift_deallocClassInstance();
}

void sub_1BA05A0E8(void *a1)
{
  v2 = *(v1 + qword_1EDC84A98);
  v3 = [a1 traitCollection];
  v4 = [v3 horizontalSizeClass];

  if (*(v2 + 16) && (v5 = sub_1B9F82C68(v4), (v6 & 1) != 0))
  {
    v7 = (*(v2 + 56) + 8 * v5);
  }

  else
  {
    v7 = (v1 + qword_1EDC84AA0);
  }

  v8 = *v7;

  sub_1BA2A168C(v8);
}

void *sub_1BA05A190(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + qword_1EDC84A98) = a2;
  *(v3 + qword_1EDC84AA0) = a3;
  return sub_1BA2A2328(a1, a3);
}

void *sub_1BA05A1B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for DataSourceWithAdaptiveSectionItemLimit();
  v6 = swift_allocObject();
  *(v6 + qword_1EDC84A98) = a2;
  *(v6 + qword_1EDC84AA0) = a3;
  return sub_1BA2A2328(a1, a3);
}

id Presentation.cellHighlightColor.getter()
{
  v1 = *v0;
  if ((v1 - 6) < 2)
  {
    v9 = objc_opt_self();
    v10 = [v9 systemGray5Color];
    v11 = [v9 tertiarySystemGroupedBackgroundColor];
    v12 = swift_allocObject();
    v12[2] = 0;
    v12[3] = v11;
    v12[4] = 0;
    v12[5] = v10;
    v7 = objc_allocWithZone(MEMORY[0x1E69DC888]);
    v21 = sub_1B9FE1088;
    v22 = v12;
    v17 = MEMORY[0x1E69E9820];
    v18 = 1107296256;
    v8 = &block_descriptor_7;
    goto LABEL_9;
  }

  if (v1 == 4 || v1 == 12)
  {
    v3 = objc_opt_self();
    v4 = [v3 systemGray5Color];
    v5 = [v3 systemGray4Color];
    v6 = swift_allocObject();
    v6[2] = 0;
    v6[3] = v5;
    v6[4] = 0;
    v6[5] = v4;
    v7 = objc_allocWithZone(MEMORY[0x1E69DC888]);
    v21 = sub_1B9FE1088;
    v22 = v6;
    v17 = MEMORY[0x1E69E9820];
    v18 = 1107296256;
    v8 = &block_descriptor_14_0;
LABEL_9:
    v19 = sub_1B9F7EBBC;
    v20 = v8;
    v13 = _Block_copy(&v17);
    v14 = [v7 initWithDynamicProvider_];
    _Block_release(v13);

    return v14;
  }

  v16 = [objc_opt_self() systemGray5Color];

  return v16;
}

id sub_1BA05A5E8(SEL *a1, SEL *a2)
{
  v5 = *v2 - 4;
  v6 = objc_opt_self();
  if ((v5 & 0xF7) != 0)
  {
    v7 = a2;
  }

  else
  {
    v7 = a1;
  }

  v8 = [v6 *v7];

  return v8;
}

id static UIColor.customDynamicColor(defaultColor:darkColor:defaultHighContrastColor:darkHighContrastColor:)(void *a1, void *a2, void *a3, void *a4)
{
  v8 = swift_allocObject();
  v8[2] = a4;
  v8[3] = a2;
  v8[4] = a3;
  v8[5] = a1;
  v9 = objc_allocWithZone(MEMORY[0x1E69DC888]);
  v17[4] = sub_1B9FE1088;
  v17[5] = v8;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 1107296256;
  v17[2] = sub_1B9F7EBBC;
  v17[3] = &block_descriptor_21;
  v10 = _Block_copy(v17);
  v11 = a3;
  v12 = a1;
  v13 = a4;
  v14 = a2;
  v15 = [v9 initWithDynamicProvider_];
  _Block_release(v10);

  return v15;
}

id sub_1BA05A768(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  if ([a1 userInterfaceStyle] != 2)
  {
    v9 = a4;
    if (!a4)
    {
      v9 = a5;
    }

    v12 = a4;
    a3 = a5;
    if ([a1 accessibilityContrast] != 1)
    {
      goto LABEL_5;
    }

    return v9;
  }

  v9 = a2;
  if (!a2)
  {
    v9 = a3;
  }

  v10 = a2;
  if ([a1 accessibilityContrast] == 1)
  {
    return v9;
  }

LABEL_5:

  return a3;
}

id static UIColor.collectionViewCellHighlightColor.getter()
{
  v0 = [objc_opt_self() systemGray5Color];

  return v0;
}

id static UIColor.collectionViewCellBackgroundColor.getter()
{
  v0 = [objc_opt_self() secondarySystemGroupedBackgroundColor];

  return v0;
}

id static UIColor.tableViewCellGroupedBackgroundColor.getter()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.960784314 green:0.960784314 blue:0.976470588 alpha:1.0];
  v1 = [objc_opt_self() secondarySystemBackgroundColor];
  v2 = swift_allocObject();
  v2[2] = 0;
  v2[3] = v1;
  v2[4] = 0;
  v2[5] = v0;
  v3 = objc_allocWithZone(MEMORY[0x1E69DC888]);
  v7[4] = sub_1B9FE1088;
  v7[5] = v2;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 1107296256;
  v7[2] = sub_1B9F7EBBC;
  v7[3] = &block_descriptor_28;
  v4 = _Block_copy(v7);
  v5 = [v3 initWithDynamicProvider_];
  _Block_release(v4);

  return v5;
}

id sub_1BA05AA48(SEL *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = objc_opt_self();
  v8 = [v7 systemGray5Color];
  v9 = [v7 *a1];
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = v9;
  v10[4] = 0;
  v10[5] = v8;
  v11 = objc_allocWithZone(MEMORY[0x1E69DC888]);
  v15[4] = a3;
  v15[5] = v10;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 1107296256;
  v15[2] = sub_1B9F7EBBC;
  v15[3] = a4;
  v12 = _Block_copy(v15);
  v13 = [v11 initWithDynamicProvider_];
  _Block_release(v12);

  return v13;
}

id Presentation.cellBackgroundColor(for:)()
{
  v1 = *v0;
  v2 = objc_opt_self();
  v3 = &selRef_tertiarySystemBackgroundColor;
  if (((v1 - 4) & 0xF7) != 0)
  {
    v3 = &selRef_secondarySystemGroupedBackgroundColor;
  }

  v4 = [v2 *v3];
  if (sub_1BA4A4068())
  {
    if ((v1 - 6) < 2)
    {
      v15 = objc_opt_self();
      v16 = [v15 systemGray5Color];
      v17 = [v15 tertiarySystemGroupedBackgroundColor];
      v18 = swift_allocObject();
      v18[2] = 0;
      v18[3] = v17;
      v18[4] = 0;
      v18[5] = v16;
      v9 = objc_allocWithZone(MEMORY[0x1E69DC888]);
      v31 = sub_1B9FE1088;
      v32 = v18;
      v27 = MEMORY[0x1E69E9820];
      v28 = 1107296256;
      v10 = &block_descriptor_56;
      goto LABEL_15;
    }

    if (v1 == 4 || v1 == 12)
    {
      v5 = objc_opt_self();
      v6 = [v5 systemGray5Color];
      v7 = [v5 systemGray4Color];
      v8 = swift_allocObject();
      v8[2] = 0;
      v8[3] = v7;
      v8[4] = 0;
      v8[5] = v6;
      v9 = objc_allocWithZone(MEMORY[0x1E69DC888]);
      v31 = sub_1B9FE1088;
      v32 = v8;
      v27 = MEMORY[0x1E69E9820];
      v28 = 1107296256;
      v10 = &block_descriptor_63;
LABEL_15:
      v29 = sub_1B9F7EBBC;
      v30 = v10;
      v23 = _Block_copy(&v27);
      v24 = [v9 initWithDynamicProvider_];
      _Block_release(v23);

      return v24;
    }
  }

  else
  {
    if ((sub_1BA4A4078() & 1) == 0)
    {
      return v4;
    }

    if ((v1 - 6) < 2)
    {
      v19 = objc_opt_self();
      v20 = [v19 systemGray5Color];
      v21 = [v19 tertiarySystemGroupedBackgroundColor];
      v22 = swift_allocObject();
      v22[2] = 0;
      v22[3] = v21;
      v22[4] = 0;
      v22[5] = v20;
      v9 = objc_allocWithZone(MEMORY[0x1E69DC888]);
      v31 = sub_1B9FE1088;
      v32 = v22;
      v27 = MEMORY[0x1E69E9820];
      v28 = 1107296256;
      v10 = &block_descriptor_42;
      goto LABEL_15;
    }

    if (v1 == 4 || v1 == 12)
    {
      v11 = objc_opt_self();
      v12 = [v11 systemGray5Color];
      v13 = [v11 systemGray4Color];
      v14 = swift_allocObject();
      v14[2] = 0;
      v14[3] = v13;
      v14[4] = 0;
      v14[5] = v12;
      v9 = objc_allocWithZone(MEMORY[0x1E69DC888]);
      v31 = sub_1B9FE1088;
      v32 = v14;
      v27 = MEMORY[0x1E69E9820];
      v28 = 1107296256;
      v10 = &block_descriptor_49;
      goto LABEL_15;
    }
  }

  v26 = [objc_opt_self() systemGray5Color];

  return v26;
}

id Presentation.cellSelectedColor.getter()
{
  v1 = *v0;
  if ((v1 - 6) < 2)
  {
    v9 = objc_opt_self();
    v10 = [v9 systemGray5Color];
    v11 = [v9 tertiarySystemGroupedBackgroundColor];
    v12 = swift_allocObject();
    v12[2] = 0;
    v12[3] = v11;
    v12[4] = 0;
    v12[5] = v10;
    v7 = objc_allocWithZone(MEMORY[0x1E69DC888]);
    v21 = sub_1B9FE1088;
    v22 = v12;
    v17 = MEMORY[0x1E69E9820];
    v18 = 1107296256;
    v8 = &block_descriptor_70;
    goto LABEL_9;
  }

  if (v1 == 12 || v1 == 4)
  {
    v3 = objc_opt_self();
    v4 = [v3 systemGray5Color];
    v5 = [v3 systemGray4Color];
    v6 = swift_allocObject();
    v6[2] = 0;
    v6[3] = v5;
    v6[4] = 0;
    v6[5] = v4;
    v7 = objc_allocWithZone(MEMORY[0x1E69DC888]);
    v21 = sub_1B9FE1088;
    v22 = v6;
    v17 = MEMORY[0x1E69E9820];
    v18 = 1107296256;
    v8 = &block_descriptor_77;
LABEL_9:
    v19 = sub_1B9F7EBBC;
    v20 = v8;
    v13 = _Block_copy(&v17);
    v14 = [v7 initWithDynamicProvider_];
    _Block_release(v13);

    return v14;
  }

  v16 = [objc_opt_self() systemGray5Color];

  return v16;
}

uint64_t sub_1BA05B274()
{
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  result = sub_1BA4A1318();
  qword_1EBBEAB40 = result;
  *algn_1EBBEAB48 = v1;
  return result;
}

uint64_t sub_1BA05B32C()
{
  if (qword_1EBBE8630 != -1)
  {
    swift_once();
  }

  qword_1EBBEAB50 = qword_1EBBEF888;
  *algn_1EBBEAB58 = unk_1EBBEF890;
}

uint64_t sub_1BA05B398()
{
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  result = sub_1BA4A1318();
  qword_1EBBEAB60 = result;
  *algn_1EBBEAB68 = v1;
  return result;
}

id sub_1BA05B460()
{
  result = [objc_allocWithZone(type metadata accessor for LastSyncedDateFormatter()) init];
  qword_1EBBEAB70 = result;
  return result;
}

uint64_t sub_1BA05B494(void *a1)
{
  v3 = sub_1BA4A1798();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0) + 64;
  v7 = OBJC_IVAR____TtC18HealthExperienceUI19CloudSyncDataSource_cloudSyncStateObserver;
  *(v1 + OBJC_IVAR____TtC18HealthExperienceUI19CloudSyncDataSource_cloudSyncStateObserver) = 0;
  v8 = OBJC_IVAR____TtC18HealthExperienceUI19CloudSyncDataSource_healthStore;
  *(v1 + OBJC_IVAR____TtC18HealthExperienceUI19CloudSyncDataSource_healthStore) = a1;
  v9 = a1;
  v10 = [v9 profileIdentifier];
  v11 = [v10 type];

  if (v11 == 1 && ([objc_opt_self() isRunningStoreDemoMode] & 1) == 0)
  {
    v13 = type metadata accessor for CloudSyncStateObserver();
    memset(v29, 0, sizeof(v29));
    v30 = 0;
    v14 = objc_allocWithZone(v13);
    v15 = v9;
    v16 = CloudSyncStateObserver.init(healthStore:store:)(v15, v29);
    v17 = *(v1 + v7);
    *(v1 + v7) = v16;

    sub_1B9FF6758();
    inited = swift_initStackObject();
    v28 = xmmword_1BA4B5480;
    *(inited + 16) = xmmword_1BA4B5480;
    sub_1BA05DD4C(0, &qword_1EDC5DCA0, sub_1B9F32244, MEMORY[0x1E69E6F90]);
    v19 = swift_allocObject();
    *(v19 + 16) = v28;
    v20 = type metadata accessor for CloudSyncDataSourceItem();
    swift_allocObject();
    v21 = sub_1BA247E24();
    *(v19 + 56) = v20;
    *(v19 + 64) = sub_1BA05DD04(&qword_1EBBEAB98, type metadata accessor for CloudSyncDataSourceItem);
    *(v19 + 32) = v21;
    sub_1BA4A1788();
    v22 = sub_1BA4A1748();
    v24 = v23;
    (*(v4 + 8))(v6, v3);
    v25 = MEMORY[0x1E69E7CC0];
    *(inited + 48) = MEMORY[0x1E69E7CC0];
    *(inited + 56) = sub_1B9F1C5F0(v25);
    *(inited + 32) = 0;
    *(inited + 40) = 0;

    *(inited + 48) = v19;
    v26 = Array<A>.identifierToIndexDict()(v19);

    *(inited + 56) = v26;
    *(inited + 64) = v22;
    *(inited + 72) = v24;
    v12 = sub_1B9F1DAFC(inited, 1, sub_1BA05B800, 0);

    sub_1BA05B91C();
  }

  else
  {

    type metadata accessor for CloudSyncDataSource();
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v12;
}

id sub_1BA05B800()
{
  if (qword_1EDC6D268 != -1)
  {
    swift_once();
  }

  v14[4] = xmmword_1EDC6D2B0;
  v14[5] = *&qword_1EDC6D2C0;
  v14[6] = xmmword_1EDC6D2D0;
  v14[7] = unk_1EDC6D2E0;
  v14[0] = xmmword_1EDC6D270;
  v14[1] = *&qword_1EDC6D280;
  v14[2] = xmmword_1EDC6D290;
  v14[3] = *&qword_1EDC6D2A0;
  v4 = xmmword_1EDC6D270;
  v5 = qword_1EDC6D280;
  v0 = *algn_1EDC6D288;
  v2 = xmmword_1EDC6D290;
  v1 = qword_1EDC6D2A0;
  v9 = *(&xmmword_1EDC6D2B0 + 8);
  v10 = unk_1EDC6D2C8;
  v11 = *(&xmmword_1EDC6D2D0 + 8);
  v12 = qword_1EDC6D2E8;
  v8 = *algn_1EDC6D2A8;
  sub_1B9F1D9A4(v14, v13);
  sub_1B9F1DA18(v0, v2, *(&v2 + 1), v1);
  sub_1B9F0ADF8(0, &qword_1EDC6B530);
  v6 = 0u;
  v7 = 0u;
  return sub_1B9F293A8(&v4);
}

void sub_1BA05B91C()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC18HealthExperienceUI19CloudSyncDataSource_cloudSyncStateObserver;
  v3 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI19CloudSyncDataSource_cloudSyncStateObserver);
  if (v3)
  {
    v4 = swift_allocObject();
    swift_weakInit();
    v5 = MEMORY[0x1E69E7D40];
    v6 = *((*MEMORY[0x1E69E7D40] & *v3) + 0xA0);
    v7 = v3;

    v6(sub_1BA05DBD0, v4);

    v8 = *(v1 + v2);
    if (v8)
    {
      v9 = swift_allocObject();
      swift_weakInit();
      v10 = *((*v5 & *v8) + 0xB8);
      v11 = v8;

      v10(sub_1BA05DBD8, v9);

      v12 = *(v1 + v2);
      if (v12)
      {
        v13 = *((*v5 & *v12) + 0x118);
        v14 = v12;
        v13();
      }
    }
  }
}

uint64_t sub_1BA05BAFC(uint64_t a1, uint64_t a2)
{
  v17 = a2;
  v3 = sub_1BA4A6478();
  v20 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1BA4A64C8();
  v18 = *(v6 - 8);
  v19 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1BA4A2D28();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  sub_1B9F0ADF8(0, &qword_1EDC6B5A0);
  v12 = sub_1BA4A7308();
  (*(v10 + 16))(&v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v9);
  v13 = (*(v10 + 80) + 24) & ~*(v10 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = v17;
  (*(v10 + 32))(v14 + v13, &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v9);
  aBlock[4] = sub_1BA05DE7C;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B9F0B040;
  aBlock[3] = &block_descriptor_31;
  v15 = _Block_copy(aBlock);

  sub_1BA4A64A8();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1BA05DD04(&qword_1EDC5E8E0, MEMORY[0x1E69E7F60]);
  sub_1BA05DD4C(0, &qword_1EDC5E6B0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_1B9F31534();
  sub_1BA4A7C38();
  MEMORY[0x1BFAF1D50](0, v8, v5, v15);
  _Block_release(v15);

  (*(v20 + 8))(v5, v3);
  return (*(v18 + 8))(v8, v19);
}

uint64_t sub_1BA05BEB4()
{
  v0 = sub_1BA4A2918();
  MEMORY[0x1EEE9AC00](v0);
  v2 = &v9 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = result;
    if (sub_1BA4A2D18())
    {
      swift_storeEnumTagMultiPayload();
      sub_1BA05C430(v2);

      return sub_1BA05D968(v2);
    }

    else
    {
      type metadata accessor for CloudSyncDataSourceItem();
      swift_allocObject();
      v5 = sub_1BA247E24();
      v5[4] = 0;
      v5[5] = 0xE000000000000000;

      v5[6] = 0;
      v5[7] = 0xE000000000000000;

      sub_1BA05CAB4(v5);

      v6 = *(v4 + OBJC_IVAR____TtC18HealthExperienceUI19CloudSyncDataSource_cloudSyncStateObserver);
      if (v6)
      {
        v7 = *((*MEMORY[0x1E69E7D40] & *v6) + 0x110);
        v8 = v6;
        v7();
      }
    }
  }

  return result;
}

uint64_t sub_1BA05C040(uint64_t a1, uint64_t a2)
{
  v18 = a2;
  v3 = sub_1BA4A6478();
  v20 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1BA4A64C8();
  v6 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1BA4A2918();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  sub_1B9F0ADF8(0, &qword_1EDC6B5A0);
  v12 = sub_1BA4A7308();
  sub_1BA05D9C4(a1, &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = (*(v10 + 80) + 24) & ~*(v10 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = v18;
  sub_1BA05DA28(&v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13);
  aBlock[4] = sub_1BA05DCD8;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B9F0B040;
  aBlock[3] = &block_descriptor_12;
  v15 = _Block_copy(aBlock);

  sub_1BA4A64A8();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1BA05DD04(&qword_1EDC5E8E0, MEMORY[0x1E69E7F60]);
  sub_1BA05DD4C(0, &qword_1EDC5E6B0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_1B9F31534();
  sub_1BA4A7C38();
  MEMORY[0x1BFAF1D50](0, v8, v5, v15);
  _Block_release(v15);

  (*(v20 + 8))(v5, v3);
  return (*(v6 + 8))(v8, v19);
}

uint64_t sub_1BA05C3D0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1BA05C430(a2);
  }

  return result;
}

uint64_t sub_1BA05C430(uint64_t a1)
{
  sub_1BA05DD4C(0, &qword_1EDC6E440, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v50 - v4;
  v6 = sub_1BA4A1728();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v50 - v11;
  v13 = sub_1BA4A2918();
  MEMORY[0x1EEE9AC00](v13);
  v15 = v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA05D9C4(a1, v15);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      if (qword_1EDC69368 != -1)
      {
        swift_once();
      }

      v39 = &qword_1EDC69370;
      goto LABEL_39;
    }

    if (EnumCaseMultiPayload != 4)
    {
      return sub_1BA05CCE0();
    }

    goto LABEL_24;
  }

  if (!EnumCaseMultiPayload)
  {
    if (qword_1EBBE8610 != -1)
    {
      swift_once();
    }

    v39 = &qword_1EBBEF7C8;
    goto LABEL_39;
  }

  if (EnumCaseMultiPayload != 1)
  {
    (*(v7 + 32))(v9, v15, v6);
    sub_1BA05D14C(v9);
    return (*(v7 + 8))(v9, v6);
  }

  v17 = sub_1BA4A28E8();
  v19 = v18;
  if (v17 == sub_1BA4A28E8() && v19 == v20)
  {

    goto LABEL_36;
  }

  v22 = sub_1BA4A8338();

  if (v22)
  {
LABEL_36:
    if (qword_1EBBE85F0 != -1)
    {
      swift_once();
    }

    v39 = &qword_1EBBEF768;
    goto LABEL_39;
  }

  v23 = sub_1BA4A28E8();
  v25 = v24;
  if (v23 == sub_1BA4A28E8() && v25 == v26)
  {

    goto LABEL_41;
  }

  v28 = sub_1BA4A8338();

  if (v28)
  {
LABEL_41:
    if (qword_1EBBE85E8 != -1)
    {
      swift_once();
    }

    v39 = &qword_1EBBEF738;
    goto LABEL_39;
  }

  v29 = sub_1BA4A28E8();
  v31 = v30;
  if (v29 == sub_1BA4A28E8() && v31 == v32)
  {

    goto LABEL_45;
  }

  v34 = sub_1BA4A8338();

  if (v34)
  {
LABEL_45:
    if (qword_1EBBE8600 != -1)
    {
      swift_once();
    }

    v39 = &qword_1EBBEF798;
    goto LABEL_39;
  }

  v35 = sub_1BA4A28E8();
  v37 = v36;
  if (v35 == sub_1BA4A28E8() && v37 == v38)
  {

    return sub_1BA0E7F10(MEMORY[0x1E69E7CC0], 1);
  }

  v46 = sub_1BA4A8338();

  if (v46)
  {
    return sub_1BA0E7F10(MEMORY[0x1E69E7CC0], 1);
  }

  v47 = *(v1 + OBJC_IVAR____TtC18HealthExperienceUI19CloudSyncDataSource_cloudSyncStateObserver);
  if (!v47)
  {
    (*(v7 + 56))(v5, 1, 1, v6);
    goto LABEL_54;
  }

  v48 = *((*MEMORY[0x1E69E7D40] & *v47) + 0xF8);
  v49 = v47;
  v48();

  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
LABEL_54:
    sub_1BA05DB44(v5);
LABEL_24:
    if (qword_1EBBE85E0 != -1)
    {
      swift_once();
    }

    v39 = &qword_1EBBEF708;
LABEL_39:
    v41 = v39[1];
    v42 = v39[2];
    v43 = v39[3];
    v44 = v39[4];
    v45 = v39[5];
    v50[0] = *v39;
    v50[1] = v41;
    v50[2] = v42;
    v50[3] = v43;
    v50[4] = v44;
    v50[5] = v45;

    sub_1BA05CDFC(v50, a1);
  }

  (*(v7 + 32))(v12, v5, v6);
  sub_1BA05D14C(v12);
  return (*(v7 + 8))(v12, v6);
}

uint64_t sub_1BA05CAB4(uint64_t a1)
{
  v2 = sub_1BA4A1798();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9FF6758();
  inited = swift_initStackObject();
  v14 = xmmword_1BA4B5480;
  *(inited + 16) = xmmword_1BA4B5480;
  sub_1BA05DD4C(0, &qword_1EDC5DCA0, sub_1B9F32244, MEMORY[0x1E69E6F90]);
  v7 = swift_allocObject();
  *(v7 + 16) = v14;
  *(v7 + 56) = type metadata accessor for CloudSyncDataSourceItem();
  *(v7 + 64) = sub_1BA05DD04(&qword_1EBBEAB98, type metadata accessor for CloudSyncDataSourceItem);
  *(v7 + 32) = a1;

  sub_1BA4A1788();
  v8 = sub_1BA4A1748();
  v10 = v9;
  (*(v3 + 8))(v5, v2);
  v11 = MEMORY[0x1E69E7CC0];
  *(inited + 48) = MEMORY[0x1E69E7CC0];
  *(inited + 56) = sub_1B9F1C5F0(v11);
  *(inited + 40) = 0;
  *(inited + 32) = 0;

  *(inited + 48) = v7;
  v12 = Array<A>.identifierToIndexDict()(v7);

  *(inited + 56) = v12;
  *(inited + 64) = v8;
  *(inited + 72) = v10;
  sub_1BA0E7F10(inited, 1);
  swift_setDeallocating();
  return sub_1B9FF7224(inited + 32);
}

uint64_t sub_1BA05CCE0()
{
  type metadata accessor for CloudSyncDataSourceItem();
  swift_allocObject();
  v0 = sub_1BA247E24();
  if (qword_1EBBE82A0 != -1)
  {
    swift_once();
  }

  v1 = *algn_1EBBEAB48;
  v0[4] = qword_1EBBEAB40;
  v0[5] = v1;

  if (qword_1EBBE82A8 != -1)
  {
    swift_once();
  }

  v2 = *algn_1EBBEAB58;
  v0[6] = qword_1EBBEAB50;
  v0[7] = v2;

  *(v0 + OBJC_IVAR____TtC18HealthExperienceUI23CloudSyncDataSourceItem_animateCloudSync) = 1;
  sub_1BA05CAB4(v0);
}

uint64_t sub_1BA05CDFC(uint64_t *a1, uint64_t a2)
{
  v26 = a2;
  v3 = sub_1BA4A2918();
  v25 = *(v3 - 8);
  v4 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA05DD4C(0, &qword_1EBBEAB90, type metadata accessor for CloudSyncAction, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = (&v23 - v7);
  v9 = a1[1];
  v10 = a1[2];
  v11 = a1[3];
  v28 = *a1;
  v29 = v10;
  v27 = v11;
  v12 = a1[4];
  v13 = a1[5];
  v24 = v12;
  type metadata accessor for CloudSyncDataSourceItem();
  swift_allocObject();

  v14 = sub_1BA247E24();
  v15 = type metadata accessor for CloudSyncAction(0);
  v16 = (v8 + *(v15 + 20));
  v17 = swift_allocObject();
  swift_weakInit();
  sub_1BA05D9C4(v26, v5);
  v18 = (*(v25 + 80) + 24) & ~*(v25 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = v17;
  sub_1BA05DA28(v5, v19 + v18);
  *v16 = sub_1BA05DA8C;
  v16[1] = v19;
  type metadata accessor for CloudSyncTarget(0);
  swift_storeEnumTagMultiPayload();
  *v8 = v24;
  v8[1] = v13;
  (*(*(v15 - 8) + 56))(v8, 0, 1, v15);
  v20 = OBJC_IVAR____TtC18HealthExperienceUI23CloudSyncDataSourceItem_action;
  swift_beginAccess();
  sub_1BA05D8D4(v8, v14 + v20);
  swift_endAccess();
  v14[4] = v28;
  v14[5] = v9;

  v21 = v27;
  v14[6] = v29;
  v14[7] = v21;

  sub_1BA05CAB4(v14);
}

void sub_1BA05D0D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {

    v4 = [objc_allocWithZone(type metadata accessor for CloudSyncFlow()) init];
    sub_1BA2FAA50(a3);
  }
}

uint64_t sub_1BA05D14C(uint64_t a1)
{
  sub_1BA05DD4C(0, &qword_1EBBEAB90, type metadata accessor for CloudSyncAction, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = (&v23 - v4);
  v6 = sub_1BA4A1728();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for CloudSyncDataSourceItem();
  swift_allocObject();
  v10 = sub_1BA247E24();
  if (qword_1EBBE82B8 != -1)
  {
    swift_once();
  }

  v27 = v1;
  sub_1BA4A1718();
  v11 = sub_1BA0A4EC4(a1, &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = a1;
  v13 = v12;
  (*(v7 + 8))(&v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
  v10[4] = v11;
  v10[5] = v13;

  if (qword_1EBBE82B0 != -1)
  {
    swift_once();
  }

  v25 = *algn_1EBBEAB68;
  v26 = qword_1EBBEAB60;
  v14 = type metadata accessor for CloudSyncAction(0);
  v15 = (v5 + *(v14 + 20));
  v16 = swift_allocObject();
  swift_weakInit();
  (*(v7 + 16))(&v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v24, v6);
  v17 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = v16;
  (*(v7 + 32))(v18 + v17, v9, v6);
  *v15 = sub_1BA05D8A8;
  v15[1] = v18;
  type metadata accessor for CloudSyncTarget(0);
  swift_storeEnumTagMultiPayload();
  v19 = v25;
  *v5 = v26;
  v5[1] = v19;
  (*(*(v14 - 8) + 56))(v5, 0, 1, v14);
  v20 = OBJC_IVAR____TtC18HealthExperienceUI23CloudSyncDataSourceItem_action;
  swift_beginAccess();

  sub_1BA05D8D4(v5, v10 + v20);
  swift_endAccess();
  if (qword_1EBBE82A8 != -1)
  {
    swift_once();
  }

  v21 = *algn_1EBBEAB58;
  v10[6] = qword_1EBBEAB50;
  v10[7] = v21;

  sub_1BA05CAB4(v10);
}

uint64_t sub_1BA05D50C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1BA4A2918();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {

    v8 = sub_1BA4A1728();
    (*(*(v8 - 8) + 16))(v6, a3, v8);
    swift_storeEnumTagMultiPayload();
    v9 = [objc_allocWithZone(type metadata accessor for CloudSyncFlow()) init];
    sub_1BA2FAA50(v6);

    return sub_1BA05D968(v6);
  }

  return result;
}

void sub_1BA05D68C()
{
  v1 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI19CloudSyncDataSource_healthStore);
}

uint64_t sub_1BA05D6CC()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_snapshot;
  sub_1B9F12538();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t sub_1BA05D7AC()
{
  sub_1BA05D6CC();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for CloudSyncDataSource()
{
  result = qword_1EBBEAB80;
  if (!qword_1EBBEAB80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BA05D8D4(uint64_t a1, uint64_t a2)
{
  sub_1BA05DD4C(0, &qword_1EBBEAB90, type metadata accessor for CloudSyncAction, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BA05D968(uint64_t a1)
{
  v2 = sub_1BA4A2918();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BA05D9C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BA4A2918();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BA05DA28(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BA4A2918();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BA05DAB8(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  v5 = *(a2(0) - 8);
  v6 = *(v3 + 16);
  v7 = v3 + ((*(v5 + 80) + 24) & ~*(v5 + 80));

  return a3(a1, v6, v7);
}

uint64_t sub_1BA05DB44(uint64_t a1)
{
  sub_1BA05DD4C(0, &qword_1EDC6E440, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t objectdestroy_19Tm_0()
{
  v1 = *(sub_1BA4A2918() - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(v1 + 64);

  if (swift_getEnumCaseMultiPayload() == 2)
  {
    v5 = sub_1BA4A1728();
    (*(*(v5 - 8) + 8))(v0 + v3, v5);
  }

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1BA05DD04(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1BA05DD4C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t objectdestroy_15Tm(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 24) & ~v4;
  v6 = *(v3 + 64);

  (*(v3 + 8))(v1 + v5, v2);

  return MEMORY[0x1EEE6BDD0](v1, v5 + v6, v4 | 7);
}

uint64_t sub_1BA05DEA8(uint64_t (*a1)(void), uint64_t (*a2)(uint64_t, uint64_t))
{
  v3 = *(a1(0) - 8);
  v4 = *(v2 + 16);
  v5 = v2 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return a2(v4, v5);
}

uint64_t sub_1BA05DF98(uint64_t a1, uint64_t a2)
{
  sub_1B9F7EC24(0, &qword_1EDC68F40, &qword_1EDC68F50, &protocol descriptor for PluginViewModel, sub_1B9F0D950);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t ConfigurationFeedItemActionContent.actionHandlerUserData.getter()
{
  v1 = *(v0 + 48);
  sub_1B9F6AD84(v1, *(v0 + 56));
  return v1;
}

uint64_t ConfigurationFeedItemActionContent.actionHandlerUserData.setter(uint64_t a1, uint64_t a2)
{
  result = sub_1B9F6AC8C(*(v2 + 48), *(v2 + 56));
  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return result;
}

uint64_t ConfigurationFeedItemActionContent.providedContext.setter(uint64_t a1)
{

  *(v1 + 64) = a1;
  return result;
}

uint64_t ConfigurationFeedItemActionContent.init(objectID:viewModel:actionHandlerUserData:providedContext:presentingViewController:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  *(a7 + 40) = 0u;
  *(a7 + 24) = 0u;
  *(a7 + 8) = 0u;
  *(a7 + 56) = 0xF000000000000000;
  *a7 = a1;
  sub_1BA05DF98(a2, a7 + 8);
  result = sub_1B9F6AC8C(*(a7 + 48), *(a7 + 56));
  *(a7 + 48) = a3;
  *(a7 + 56) = a4;
  *(a7 + 64) = a5;
  *(a7 + 72) = a6;
  return result;
}

void ConfigurationFeedItemActionContent.presentation.getter()
{
  v1 = [*(v0 + 72) traitCollection];
  sub_1B9F3AEE8();
  sub_1BA4A7358();
}

__n128 AnyConfigurationActionHandler.__allocating_init(content:)(uint64_t a1)
{
  v2 = swift_allocObject();
  v3 = *(a1 + 48);
  *(v2 + 48) = *(a1 + 32);
  *(v2 + 64) = v3;
  *(v2 + 80) = *(a1 + 64);
  result = *(a1 + 16);
  *(v2 + 16) = *a1;
  *(v2 + 32) = result;
  return result;
}

_OWORD *AnyConfigurationActionHandler.init(content:)(_OWORD *a1)
{
  v2 = a1[3];
  v1[3] = a1[2];
  v1[4] = v2;
  v1[5] = a1[4];
  v3 = a1[1];
  v1[1] = *a1;
  v1[2] = v3;
  return v1;
}

uint64_t AnyConfigurationActionHandler.__deallocating_deinit()
{
  sub_1BA00D7E8(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t TabActionHandlerPresentation.hashValue.getter()
{
  v1 = *v0;
  sub_1BA4A8488();
  MEMORY[0x1BFAF2ED0](v1);
  return sub_1BA4A84D8();
}

Swift::Void __swiftcall TabActionHandler.didSelect()()
{
  v3 = v1;
  v4 = v0;
  (*(v1 + 16))(&v9);
  v5 = v9;
  v6 = *(v2 + 88);
  v7 = (*(v3 + 24))(v4, v3);
  v8 = v7;
  if (v5 == 1)
  {
    [v6 showDetailViewController:v7 sender:v2];
  }

  else
  {
    [v6 presentViewController:v7 animated:1 completion:0];
  }
}

void *TabActionHandler.deselectionBehavior(in:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, char *a3@<X8>)
{
  result = (*(a2 + 16))(&v6, a1, a2);
  if (v6)
  {
    v5 = 2;
  }

  else
  {
    v5 = 1;
  }

  *a3 = v5;
  return result;
}

Swift::Void __swiftcall DismissibleConfigurationActionHandler.defaultPlatformDidTapDismiss()()
{
  v3 = v1;
  v4 = v0;
  if ((*(v1 + 16))())
  {
    v5 = *(v2 + 16);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1BA4A4F28();

    __swift_project_boxed_opaque_existential_1(v11, v12);
    v6 = sub_1BA4A1B78();
    __swift_destroy_boxed_opaque_existential_1(v11);
    v7 = swift_allocObject();
    v7[2] = v4;
    v7[3] = v3;
    v7[4] = v6;
    v7[5] = v5;
    v13 = sub_1BA05EB68;
    v14 = v7;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 1107296256;
    v11[2] = sub_1B9F0B040;
    v12 = &block_descriptor_13;
    v8 = _Block_copy(v11);
    v9 = v6;
    v10 = v5;

    [v9 performBlock_];
    _Block_release(v8);
  }
}

void sub_1BA05E6B4(void *a1, void *a2, void *a3)
{
  v42 = *MEMORY[0x1E69E9840];
  v6 = sub_1BA4A3EA8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v38 - v12;
  v14 = [a1 objectWithID_];
  sub_1BA4A27B8();
  v15 = swift_dynamicCastClass();
  if (v15)
  {
    [v15 setHideInDiscover_];
    v40 = 0;
    if ([a1 save_])
    {
      v16 = v40;
      _s18HealthExperienceUI0A44ChecklistStagedFeatureStatusFeedItemProviderPAAE6logger2os6LoggerVvg_0();
      v17 = sub_1BA4A3E88();
      v18 = sub_1BA4A6FC8();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        v38 = v6;
        v39 = a3;
        v21 = v20;
        v40 = v20;
        *v19 = 136446210;
        swift_getMetatypeMetadata();
        v22 = sub_1BA4A6808();
        v24 = sub_1B9F0B82C(v22, v23, &v40);

        *(v19 + 4) = v24;
        _os_log_impl(&dword_1B9F07000, v17, v18, "[%{public}s]: Dismiss occurred; updating Summary feed", v19, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v21);
        MEMORY[0x1BFAF43A0](v21, -1, -1);
        MEMORY[0x1BFAF43A0](v19, -1, -1);

        (*(v7 + 8))(v13, v38);
      }

      else
      {

        (*(v7 + 8))(v13, v6);
      }

      sub_1B9F0ADF8(0, &qword_1EDC6B5F0);
      v31 = sub_1BA4A7198();
      sub_1BA4A2588();
      v32 = objc_allocWithZone(sub_1BA4A3518());
      v33 = sub_1BA4A3508();
      [v31 addOperation_];
    }

    else
    {
      v34 = v40;
      v35 = sub_1BA4A1488();

      swift_willThrow();
      v40 = 0;
      v41 = 0xE000000000000000;
      sub_1BA4A7DF8();

      v40 = 0xD000000000000023;
      v41 = 0x80000001BA4E6390;
      v39 = v35;
      v36 = v35;
      sub_1B9F0D950(0, &qword_1EDC6E310);
      v37 = sub_1BA4A6828();
      MEMORY[0x1BFAF1350](v37);

      sub_1BA4A8018();
      __break(1u);
    }
  }

  else
  {

    sub_1BA4A3DD8();
    v25 = a2;
    v26 = sub_1BA4A3E88();
    v27 = sub_1BA4A6FC8();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      *v28 = 138412290;
      *(v28 + 4) = v25;
      *v29 = v25;
      v30 = v25;
      _os_log_impl(&dword_1B9F07000, v26, v27, "Background context could not find object with id: '%@'", v28, 0xCu);
      sub_1B9F8C6C8(v29);
      MEMORY[0x1BFAF43A0](v29, -1, -1);
      MEMORY[0x1BFAF43A0](v28, -1, -1);
    }

    (*(v7 + 8))(v9, v6);
  }
}

unint64_t sub_1BA05EB78()
{
  result = qword_1EBBEABA0;
  if (!qword_1EBBEABA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEABA0);
  }

  return result;
}

char *CategoryDataTypesDataSource.init(_:dateRange:sectionIdentifier:layoutType:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = qword_1EBC09440;
  v10 = sub_1BA4A0FA8();
  v11 = *(v10 - 8);
  (*(v11 + 16))(v4 + v9, a2, v10);
  v12 = qword_1EBC09448;
  v13 = sub_1BA4A3BD8();
  v14 = *(v13 - 8);
  (*(v14 + 16))(v4 + v12, a3, v13);
  sub_1BA05EEB4(a4, v4 + qword_1EBC09450);
  v15 = FetchedResultsControllerDataSource.init(_:)(a1);
  sub_1BA05EF34(a4);
  (*(v14 + 8))(a3, v13);
  (*(v11 + 8))(a2, v10);
  return v15;
}

uint64_t sub_1BA05EEB4(uint64_t a1, uint64_t a2)
{
  sub_1BA0603F8(0, qword_1EDC66C30, type metadata accessor for LayoutConfigurationType);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BA05EF34(uint64_t a1)
{
  sub_1BA0603F8(0, qword_1EDC66C30, type metadata accessor for LayoutConfigurationType);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

char *CategoryDataTypesDataSource.__allocating_init(_:dateRange:sectionIdentifier:layout:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23 = a4;
  v22 = a2;
  v25 = a1;
  sub_1BA0603F8(0, qword_1EDC66C30, type metadata accessor for LayoutConfigurationType);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = (&v22 - v7);
  v9 = sub_1BA4A3BD8();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1BA4A0FA8();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v17, a2, v13, v15);
  (*(v10 + 16))(v12, a3, v9);
  *v8 = v23;
  v18 = type metadata accessor for LayoutConfigurationType();
  swift_storeEnumTagMultiPayload();
  (*(*(v18 - 8) + 56))(v8, 0, 1, v18);
  v19 = objc_allocWithZone(v24);
  v20 = CategoryDataTypesDataSource.init(_:dateRange:sectionIdentifier:layoutType:)(v25, v17, v12, v8);
  (*(v10 + 8))(a3, v9);
  (*(v14 + 8))(v22, v13);
  return v20;
}

uint64_t sub_1BA05F248@<X0>(void *a1@<X8>)
{
  v28 = a1;
  v27 = sub_1BA4A4428();
  v2 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v25 - v6;
  v8 = sub_1BA4A3BD8();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1BA4A1728();
  MEMORY[0x1EEE9AC00](v12 - 8);
  v26 = sub_1BA4A3C28();
  v13 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA4A3C08();
  (*(v9 + 16))(v11, v1 + qword_1EBC09448, v8);
  sub_1BA4A3BE8();
  v16 = sub_1BA4A3BF8();
  v18 = v17;
  _s18HealthExperienceUI29CollectionViewHeaderProvidingPAAE24makeDefaultConfiguration5UIKit013UIListContentJ0VyFZ_0();
  v19 = v27;
  (*(v2 + 16))(v4, v7, v27);
  v20 = type metadata accessor for HeaderItem();
  swift_allocObject();
  HeaderItem.init(title:buttonText:buttonWasTapped:configuration:automationIdentifier:)(v16, v18, 0, 0, 0, 0, v4, 0, 0);
  v22 = v21;
  (*(v2 + 8))(v7, v19);
  v23 = v28;
  v28[3] = v20;
  v23[4] = sub_1B9F322A8(&qword_1EDC69800, type metadata accessor for HeaderItem);
  *v23 = v22;
  return (*(v13 + 8))(v15, v26);
}

uint64_t sub_1BA05F600()
{
  sub_1BA05EF34(v0 + qword_1EBC09450);
  v1 = qword_1EBC09440;
  v2 = sub_1BA4A0FA8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = qword_1EBC09448;
  v4 = sub_1BA4A3BD8();
  v5 = *(*(v4 - 8) + 8);

  return v5(v0 + v3, v4);
}

uint64_t sub_1BA05F6D0(uint64_t a1)
{
  sub_1BA05EF34(a1 + qword_1EBC09450);
  v2 = qword_1EBC09440;
  v3 = sub_1BA4A0FA8();
  (*(*(v3 - 8) + 8))(a1 + v2, v3);
  v4 = qword_1EBC09448;
  v5 = sub_1BA4A3BD8();
  v6 = *(*(v5 - 8) + 8);

  return v6(a1 + v4, v5);
}

char *CategoryDataSource.init(_:headerTitle:footerText:reuseIdentifier:layoutType:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = (v8 + qword_1EBC09460);
  *v11 = a6;
  v11[1] = a7;
  v12 = (v8 + qword_1EBC09468);
  *v12 = a2;
  v12[1] = a3;
  v13 = (v8 + qword_1EBC09470);
  *v13 = a4;
  v13[1] = a5;
  sub_1BA05EEB4(a8, v8 + qword_1EBC09458);
  v14 = FetchedResultsControllerDataSource.init(_:)(a1);
  sub_1BA05EF34(a8);
  return v14;
}

char *CategoryDataSource.__allocating_init(_:headerTitle:footerText:reuseIdentifier:layout:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, _OWORD *a8)
{
  v9 = v8;
  sub_1BA0603F8(0, qword_1EDC66C30, type metadata accessor for LayoutConfigurationType);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = (&v28 - v19);
  v21 = a8[5];
  v20[4] = a8[4];
  v20[5] = v21;
  v22 = a8[7];
  v20[6] = a8[6];
  v20[7] = v22;
  v23 = a8[1];
  *v20 = *a8;
  v20[1] = v23;
  v24 = a8[3];
  v20[2] = a8[2];
  v20[3] = v24;
  v25 = type metadata accessor for LayoutConfigurationType();
  swift_storeEnumTagMultiPayload();
  (*(*(v25 - 8) + 56))(v20, 0, 1, v25);
  v26 = objc_allocWithZone(v9);
  return CategoryDataSource.init(_:headerTitle:footerText:reuseIdentifier:layoutType:)(a1, a2, a3, a4, a5, a6, a7, v20);
}

uint64_t sub_1BA05FA64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_1BA4A1798();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1BA4A4428();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v41 - v15;
  if (_sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0() == a1 && v17 == a2)
  {

LABEL_13:
    v23 = *(v44 + qword_1EBC09468 + 8);
    if (v23)
    {
      v24 = *(v44 + qword_1EBC09468);

      _s18HealthExperienceUI29CollectionViewHeaderProvidingPAAE24makeDefaultConfiguration5UIKit013UIListContentJ0VyFZ_0();
      (*(v11 + 16))(v13, v16, v10);
      v25 = type metadata accessor for HeaderItem();
      swift_allocObject();
      HeaderItem.init(title:buttonText:buttonWasTapped:configuration:automationIdentifier:)(v24, v23, 0, 0, 0, 0, v13, 0, 0);
      v27 = v26;
      (*(v11 + 8))(v16, v10);
      a3[3] = v25;
      result = sub_1B9F322A8(&qword_1EDC69800, type metadata accessor for HeaderItem);
      a3[4] = result;
      *a3 = v27;
      return result;
    }

    goto LABEL_18;
  }

  v42 = v7;
  v43 = v6;
  v19 = sub_1BA4A8338();

  if (v19)
  {
    goto LABEL_13;
  }

  if (_sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0() == a1 && v20 == a2)
  {
  }

  else
  {
    v22 = sub_1BA4A8338();

    if ((v22 & 1) == 0)
    {
      goto LABEL_18;
    }
  }

  v29 = *(v44 + qword_1EBC09470 + 8);
  if (v29)
  {
    v30 = *(v44 + qword_1EBC09470);
    v45 = 0x74497265746F6F46;
    v46 = 0xEB000000005F6D65;

    sub_1BA4A1788();
    v31 = sub_1BA4A1748();
    v33 = v32;
    (*(v42 + 8))(v9, v43);
    MEMORY[0x1BFAF1350](v31, v33);

    v34 = v45;
    v35 = v46;
    v36 = type metadata accessor for CollectionViewGroupedFooterItem(0);
    a3[3] = v36;
    a3[4] = sub_1B9F322A8(&qword_1EDC63278, type metadata accessor for CollectionViewGroupedFooterItem);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a3);
    v45 = type metadata accessor for CollectionViewGroupedFooterCell();
    sub_1BA0603B0();
    *boxed_opaque_existential_1 = sub_1BA4A6808();
    boxed_opaque_existential_1[1] = v38;
    v39 = boxed_opaque_existential_1 + *(v36 + 32);
    *v39 = 0u;
    *(v39 + 1) = 0u;
    v39[32] = 1;
    v40 = (boxed_opaque_existential_1 + *(v36 + 28));
    *v40 = v30;
    v40[1] = v29;
    type metadata accessor for CollectionViewGroupedFooterItem.Content(0);
    result = swift_storeEnumTagMultiPayload();
    boxed_opaque_existential_1[2] = v34;
    boxed_opaque_existential_1[3] = v35;
    boxed_opaque_existential_1[4] = 0;
    boxed_opaque_existential_1[5] = 0;
    return result;
  }

LABEL_18:
  a3[3] = &type metadata for EmptyHeaderItem;
  a3[4] = sub_1B9FDA1B0();
  *a3 = swift_allocObject();
  return EmptyHeaderItem.init()();
}

uint64_t sub_1BA05FEE0@<X0>(uint64_t a1@<X8>)
{
  sub_1BA0603F8(0, qword_1EDC66C30, type metadata accessor for LayoutConfigurationType);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v15 - v4;
  v6 = type metadata accessor for LayoutConfigurationType();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA05EEB4(v1 + qword_1EBC09458, v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_1BA05EF34(v5);
    sub_1B9FF8124();
    v11 = *(v10 + 48);
    if (qword_1EDC6CBB0 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for ListLayoutConfiguration();
    v13 = __swift_project_value_buffer(v12, qword_1EDC6CBB8);
    sub_1B9F37E38(v13, a1);
    *(a1 + v11) = 0;
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    sub_1BA06044C(v5, v9);
    sub_1BA06044C(v9, a1);
  }

  return (*(v7 + 56))(a1, 0, 1, v6);
}

uint64_t sub_1BA0600D4()
{
  v0 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  sub_1BA162E6C(v0, v1);
}

uint64_t sub_1BA0601AC()
{
  sub_1BA05EF34(v0 + qword_1EBC09458);
}

id sub_1BA060230(uint64_t (*a1)(void, void, void))
{
  v2 = a1(0, *((*MEMORY[0x1E69E7D40] & *v1) + 0x158), *((*MEMORY[0x1E69E7D40] & *v1) + 0x160));
  v4.receiver = v1;
  v4.super_class = v2;
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_1BA0602A8(uint64_t a1)
{
  sub_1BA05EF34(a1 + qword_1EBC09458);
}

unint64_t sub_1BA0603B0()
{
  result = qword_1EDC63330[0];
  if (!qword_1EDC63330[0])
  {
    type metadata accessor for CollectionViewGroupedFooterCell();
    result = swift_getMetatypeMetadata();
    atomic_store(result, qword_1EDC63330);
  }

  return result;
}

void sub_1BA0603F8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1BA4A7AA8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1BA06044C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LayoutConfigurationType();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1BA0604F8()
{
  sub_1BA0603F8(319, qword_1EDC66C30, type metadata accessor for LayoutConfigurationType);
  if (v0 <= 0x3F)
  {
    sub_1BA4A0FA8();
    if (v1 <= 0x3F)
    {
      sub_1BA4A3BD8();
      if (v2 <= 0x3F)
      {
        swift_initClassMetadata2();
      }
    }
  }
}

void sub_1BA0606BC()
{
  sub_1BA0603F8(319, qword_1EDC66C30, type metadata accessor for LayoutConfigurationType);
  if (v0 <= 0x3F)
  {
    swift_initClassMetadata2();
  }
}

id sub_1BA060940(void *a1)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI27CloudSyncCollectionViewCell_cloudSyncDetailView;
  v4 = [objc_allocWithZone(type metadata accessor for ActivityIndicatorDetailView(0)) initWithFrame_];
  [v4 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v1[v3] = v4;
  v5 = &v1[OBJC_IVAR____TtC18HealthExperienceUI27CloudSyncCollectionViewCell_item];
  v6 = type metadata accessor for CloudSyncCollectionViewCell();
  *v5 = 0u;
  *(v5 + 1) = 0u;
  *(v5 + 4) = 0;
  v11.receiver = v1;
  v11.super_class = v6;
  v7 = objc_msgSendSuper2(&v11, sel_initWithCoder_, a1);
  v8 = v7;
  if (v7)
  {
    v9 = v7;
    sub_1BA060A74();
  }

  return v8;
}

void sub_1BA060A74()
{
  v1 = v0;
  v2 = [v0 contentView];
  v3 = OBJC_IVAR____TtC18HealthExperienceUI27CloudSyncCollectionViewCell_cloudSyncDetailView;
  [v2 addSubview_];

  v4 = objc_opt_self();
  sub_1B9F109F8();
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1BA4B5890;
  v6 = [*&v1[v3] leadingAnchor];
  v7 = [v1 contentView];
  v8 = [v7 leadingAnchor];

  v9 = [v6 constraintEqualToAnchor:v8 constant:16.0];
  *(v5 + 32) = v9;
  v10 = [*&v1[v3] trailingAnchor];
  v11 = [v1 contentView];
  v12 = [v11 trailingAnchor];

  v13 = [v10 constraintEqualToAnchor:v12 constant:-16.0];
  *(v5 + 40) = v13;
  v14 = [*&v1[v3] topAnchor];
  v15 = [v1 contentView];
  v16 = [v15 topAnchor];

  v17 = [v14 constraintEqualToAnchor_];
  *(v5 + 48) = v17;
  v18 = [*&v1[v3] bottomAnchor];
  v19 = [v1 contentView];
  v20 = [v19 bottomAnchor];

  v21 = [v18 constraintEqualToAnchor_];
  *(v5 + 56) = v21;
  sub_1B9F740B0();
  v22 = sub_1BA4A6AE8();

  [v4 activateConstraints_];
}

uint64_t sub_1BA060D50()
{
  sub_1BA06138C();
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v21[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v4 = OBJC_IVAR____TtC18HealthExperienceUI27CloudSyncCollectionViewCell_item;
  swift_beginAccess();
  sub_1B9F68124(&v0[v4], v26);
  if (!v27)
  {
    sub_1B9F43A50(v26, &qword_1EDC6E1A0, &qword_1EDC6E1B0);
    v23 = 0u;
    v24 = 0u;
    v25 = 0;
    return sub_1B9F43A50(&v23, &qword_1EBBEABB8, &qword_1EBBEABC0);
  }

  sub_1B9F0D950(0, &qword_1EDC6E1B0);
  sub_1B9F0D950(0, &qword_1EBBEABC0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v25 = 0;
    v23 = 0u;
    v24 = 0u;
    return sub_1B9F43A50(&v23, &qword_1EBBEABB8, &qword_1EBBEABC0);
  }

  if (!*(&v24 + 1))
  {
    return sub_1B9F43A50(&v23, &qword_1EBBEABB8, &qword_1EBBEABC0);
  }

  sub_1B9F1134C(&v23, v26);
  v5 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI27CloudSyncCollectionViewCell_cloudSyncDetailView];
  v6 = __swift_project_boxed_opaque_existential_1(v26, v27);
  v7 = *(*v6 + 40);
  v20 = *(*v6 + 32);
  v8 = __swift_project_boxed_opaque_existential_1(v26, v27);
  v10 = *(*v8 + 48);
  v9 = *(*v8 + 56);
  v11 = *__swift_project_boxed_opaque_existential_1(v26, v27);
  v12 = OBJC_IVAR____TtC18HealthExperienceUI23CloudSyncDataSourceItem_action;
  swift_beginAccess();
  sub_1BA0613E4(v11 + v12, v3);
  LOBYTE(v12) = *(*__swift_project_boxed_opaque_existential_1(v26, v27) + OBJC_IVAR____TtC18HealthExperienceUI23CloudSyncDataSourceItem_animateCloudSync);
  v13 = v5;

  sub_1BA3915A8(v20, v7, v10, v9, v3, v12 & 1);

  sub_1BA061448(v3);
  sub_1B9F68124(&v0[v4], v21);
  if (v22)
  {
    sub_1B9F0D950(0, qword_1EDC61778);
    if (swift_dynamicCast())
    {
      v14 = *(&v24 + 1);
      if (*(&v24 + 1))
      {
        v15 = v25;
        __swift_project_boxed_opaque_existential_1(&v23, *(&v24 + 1));
        (*(v15 + 8))(v14, v15);
        v17 = v16;
        __swift_destroy_boxed_opaque_existential_1(&v23);
        if (v17)
        {
          v18 = sub_1BA4A6758();
        }

        else
        {
          v18 = 0;
        }

        goto LABEL_15;
      }
    }

    else
    {
      v25 = 0;
      v23 = 0u;
      v24 = 0u;
    }
  }

  else
  {
    sub_1B9F43A50(v21, &qword_1EDC6E1A0, &qword_1EDC6E1B0);
    v23 = 0u;
    v24 = 0u;
    v25 = 0;
  }

  sub_1B9F43A50(&v23, &qword_1EDC61770, qword_1EDC61778);
  v18 = 0;
LABEL_15:
  [v0 setAccessibilityIdentifier_];

  return __swift_destroy_boxed_opaque_existential_1(v26);
}

id sub_1BA061104()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CloudSyncCollectionViewCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1BA0611B4@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI27CloudSyncCollectionViewCell_item;
  swift_beginAccess();
  return sub_1B9F68124(v1 + v3, a1);
}

uint64_t sub_1BA06120C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI27CloudSyncCollectionViewCell_item;
  swift_beginAccess();
  sub_1B9F63E74(a1, v1 + v3);
  swift_endAccess();
  sub_1BA060D50();
  return sub_1B9F43A50(a1, &qword_1EDC6E1A0, &qword_1EDC6E1B0);
}

uint64_t (*sub_1BA061290(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1BA0612F4;
}

uint64_t sub_1BA0612F4(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return sub_1BA060D50();
  }

  return result;
}

void sub_1BA061328(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  if (a2)
  {
    v4 = sub_1BA4A6758();
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  [v3 setAccessibilityIdentifier_];
}

void sub_1BA06138C()
{
  if (!qword_1EBBEAB90)
  {
    type metadata accessor for CloudSyncAction(255);
    v0 = sub_1BA4A7AA8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBBEAB90);
    }
  }
}

uint64_t sub_1BA0613E4(uint64_t a1, uint64_t a2)
{
  sub_1BA06138C();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BA061448(uint64_t a1)
{
  sub_1BA06138C();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

char *NotificationSettingsViewController.init(healthExperienceStore:)(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI34NotificationSettingsViewController_viewControllerTitle;
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  v4 = (v1 + v3);
  *v4 = sub_1BA4A1318();
  v4[1] = v5;
  sub_1B9F0A534(a1, v13);
  type metadata accessor for NotificationSettingsDataSource(0);
  swift_allocObject();
  sub_1BA0621C4(v13);
  sub_1B9F0A534(a1, v13);
  type metadata accessor for NotificationInvalidAuthorizationDataSource(0);
  swift_allocObject();
  v6 = sub_1BA062450(v13);
  sub_1BA0637A4();
  swift_allocObject();

  v8 = sub_1BA063C7C(v7, v6, sub_1BA064A2C, &OBJC_IVAR____TtC18HealthExperienceUI27CompoundSectionedDataSource_identifier, &OBJC_IVAR____TtC18HealthExperienceUI27CompoundSectionedDataSource_identifier);

  (*(*v8 + 184))(sub_1BA061750, 0);
  sub_1B9F35664(0, &qword_1EDC5DC70, sub_1BA03A7DC, MEMORY[0x1E69E6F90]);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1BA4B5480;
  *(v9 + 32) = v8;
  *(v9 + 40) = &protocol witness table for PrimarySecondaryDataSource<A, B>;
  type metadata accessor for CompoundSectionedDataSource();
  swift_allocObject();

  v10 = CompoundSectionedDataSource.init(_:)(v9);
  v11 = CompoundDataSourceCollectionViewController.init(dataSource:)(v10);

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v11;
}

BOOL sub_1BA061750(uint64_t a1, uint64_t a2)
{
  sub_1B9F12538();
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a2 + OBJC_IVAR____TtC18HealthExperienceUIP33_A4493740400C52C858983AD72DFA1B2D42NotificationInvalidAuthorizationDataSource_platformAlertDataSource);
  v9 = qword_1EDC84AC8;
  swift_beginAccess();
  (*(v5 + 16))(v7, v8 + v9, v4);
  v10 = sub_1BA4A4538();
  (*(v5 + 8))(v7, v4);
  v11 = *(v10 + 16);

  return v11 == 0;
}

void sub_1BA061884()
{
  v9.receiver = v0;
  v9.super_class = type metadata accessor for NotificationSettingsViewController();
  objc_msgSendSuper2(&v9, sel_viewDidLoad);
  v1 = sub_1BA4A6758();
  [v0 setTitle_];

  sub_1BA061C4C();
  v2 = [v0 collectionView];
  if (v2)
  {
    v3 = v2;
    v4 = sub_1BA4A6AE8();
    v5 = HKUIJoinStringsForAutomationIdentifier();

    [v3 setAccessibilityIdentifier_];
    v6 = [v0 navigationItem];
    [v6 setLargeTitleDisplayMode_];

    v7 = [v0 navigationItem];
    v8 = [objc_allocWithZone(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:0 target:v0 action:sel_dismissProfile_];
    [v7 setRightBarButtonItem_];
  }

  else
  {
    __break(1u);
  }
}

id NotificationSettingsViewController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void NotificationSettingsViewController.init(coder:)()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI34NotificationSettingsViewController_viewControllerTitle;
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  v2 = (v0 + v1);
  *v2 = sub_1BA4A1318();
  v2[1] = v3;
  sub_1BA4A8018();
  __break(1u);
}

void sub_1BA061C4C()
{
  v1 = [v0 collectionView];
  if (!v1)
  {
    __break(1u);
    goto LABEL_8;
  }

  v2 = v1;
  v3 = [objc_opt_self() systemGroupedBackgroundColor];
  [v2 setBackgroundColor_];

  v4 = [v0 collectionView];
  if (!v4)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v5 = v4;
  [v4 setPreservesSuperviewLayoutMargins_];

  v6 = [v0 collectionView];
  if (!v6)
  {
LABEL_9:
    __break(1u);
    return;
  }

  v7 = v6;
  [v6 contentInset];
  [v7 setContentInset_];
}

id sub_1BA061D64()
{
  v1 = v0;
  sub_1B9F36938();
  result = [v0 collectionView];
  if (!result)
  {
    __break(1u);
    goto LABEL_11;
  }

  v3 = result;
  v4 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  sub_1BA162F08(v4, v5);

  result = [v1 collectionView];
  if (!result)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v6 = result;
  sub_1B9F437FC();

  result = [v1 collectionView];
  if (!result)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v7 = result;
  sub_1B9F439C8();

  result = [v1 collectionView];
  if (!result)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v8 = result;
  sub_1B9FF5A98();

  result = [v1 collectionView];
  if (!result)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v9 = result;
  sub_1B9FF5B9C();

  result = [v1 collectionView];
  if (!result)
  {
LABEL_15:
    __break(1u);
    return result;
  }

  v10 = result;
  v11 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  sub_1BA162E6C(v11, v12);
}

void sub_1BA061F60()
{
  v1 = sub_1BA4A3678();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x1EEE9AC00](v1);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 104))(v5, *MEMORY[0x1E69A2C40], v1, v3);
  v6 = sub_1BA4A35B8();
  (*(v2 + 8))(v5, v1);
  [v0 setUserActivity_];
}

id NotificationSettingsViewController.__allocating_init(collectionViewLayout:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCollectionViewLayout_];

  return v3;
}

id NotificationSettingsViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NotificationSettingsViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1BA0621C4(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v2 = sub_1BA4A1B68();
  sub_1B9F35664(0, &qword_1EDC5DC70, sub_1BA03A7DC, MEMORY[0x1E69E6F90]);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1BA4B9FD0;
  type metadata accessor for NotificationSettingsDefaultsDataSource(0);
  swift_allocObject();
  sub_1BA4A2188();
  *(v3 + 32) = sub_1BA18E254();
  *(v3 + 40) = &protocol witness table for MutableArrayDataSource;
  type metadata accessor for NotificationSettingsFeaturesDataSource(0);
  swift_allocObject();
  v4 = v2;
  v5 = sub_1BA18ED54();

  *(v3 + 48) = v5;
  *(v3 + 56) = &protocol witness table for CompoundSectionedDataSource;
  type metadata accessor for NotificationSettingsSharingDataSource();
  swift_allocObject();
  v6 = v4;
  v7 = sub_1BA047450();

  *(v3 + 64) = v7;
  *(v3 + 72) = &protocol witness table for MutableArrayDataSource;
  v8 = CompoundSectionedDataSource.init(_:)(v3);

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v8;
}

uint64_t sub_1BA062364()
{

  v1 = OBJC_IVAR____TtC18HealthExperienceUI27CompoundSectionedDataSource_snapshot;
  sub_1B9F12538();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1BA062450(void *a1)
{
  sub_1B9F35664(0, &qword_1EDC6E2A0, MEMORY[0x1E6968130], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v36 - v3;
  sub_1BA4A1FF8();
  sub_1BA4A27B8();
  sub_1B9F35664(0, &qword_1EDC6B460, MEMORY[0x1E69A3C08], MEMORY[0x1E69E6F90]);
  v5 = sub_1BA4A1C68();
  v6 = *(v5 - 8);
  v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v8 = swift_allocObject();
  v36 = xmmword_1BA4B5480;
  *(v8 + 16) = xmmword_1BA4B5480;
  (*(v6 + 104))(v8 + v7, *MEMORY[0x1E69A3B80], v5);
  v9 = sub_1BA4A0FA8();
  (*(*(v9 - 8) + 56))(v4, 1, 1, v9);
  sub_1B9F1C048(0, &qword_1EDC6B450);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1BA4B5460;
  *(v10 + 32) = sub_1BA4A1D78();
  *(v10 + 40) = 0;
  v11 = sub_1BA4A25F8();

  sub_1B9F1C1B0(v4);
  v12 = v11;
  v13 = sub_1BA4A26C8();

  [v13 setFetchLimit_];
  sub_1B9F1C048(0, &qword_1EDC6B400);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1BA4B5470;
  v15 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  v16 = sub_1BA4A6758();
  v17 = [v15 initWithKey:v16 ascending:1];

  *(v14 + 32) = v17;
  sub_1B9F0ADF8(0, &qword_1EDC6E3E0);
  v18 = sub_1BA4A6AE8();

  [v13 setSortDescriptors_];

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v19 = sub_1BA4A1B68();
  v20 = [objc_allocWithZone(MEMORY[0x1E695D600]) initWithFetchRequest:v13 managedObjectContext:v19 sectionNameKeyPath:0 cacheName:0];
  if (qword_1EDC6D410 != -1)
  {
    swift_once();
  }

  v48[4] = xmmword_1EDC6D458;
  v48[5] = *&qword_1EDC6D468;
  v48[6] = xmmword_1EDC6D478;
  v48[7] = xmmword_1EDC6D488;
  v48[0] = xmmword_1EDC6D418;
  v48[1] = *&qword_1EDC6D428;
  v48[2] = xmmword_1EDC6D438;
  v48[3] = xmmword_1EDC6D448;
  v38 = xmmword_1EDC6D418;
  v39 = qword_1EDC6D428;
  v21 = unk_1EDC6D430;
  v23 = xmmword_1EDC6D438;
  v22 = xmmword_1EDC6D448;
  v43 = *(&xmmword_1EDC6D458 + 8);
  v44 = *&qword_1EDC6D470;
  v45 = *(&xmmword_1EDC6D478 + 8);
  v46 = *(&xmmword_1EDC6D488 + 1);
  v42 = *(&xmmword_1EDC6D448 + 8);
  sub_1B9F1D9A4(v48, &v47);
  sub_1B9F1DA18(v21, v23, *(&v23 + 1), v22);
  sub_1B9F0ADF8(0, &qword_1EDC6B530);
  v40 = 0u;
  v41 = 0u;
  v24 = sub_1B9F293A8(&v38);
  sub_1BA0649AC();
  v26 = objc_allocWithZone(v25);
  v27 = swift_allocObject();
  *(v27 + 16) = v24;
  v28 = &v26[qword_1EDC61AF0];
  *v28 = sub_1BA064A10;
  v28[1] = v27;
  v29 = v20;
  v30 = v24;
  v31 = _s18HealthExperienceUI33FeedItemSuggestedActionDataSourceCyACSo26NSFetchedResultsControllerCy0A8Platform0dE0CGcfc_0(v29);
  *(v37 + OBJC_IVAR____TtC18HealthExperienceUIP33_A4493740400C52C858983AD72DFA1B2D42NotificationInvalidAuthorizationDataSource_platformAlertDataSource) = v31;
  sub_1B9F35664(0, &qword_1EDC5DC70, sub_1BA03A7DC, MEMORY[0x1E69E6F90]);
  v32 = swift_allocObject();
  *(v32 + 16) = v36;
  *(v32 + 32) = v31;
  *(v32 + 40) = &protocol witness table for FetchedResultsControllerDataSource<A>;
  v33 = v31;
  v34 = CompoundSectionedDataSource.init(_:)(v32);

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v34;
}

uint64_t sub_1BA062A48()
{

  v1 = OBJC_IVAR____TtC18HealthExperienceUI27CompoundSectionedDataSource_snapshot;
  sub_1B9F12538();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1BA062B5C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  sub_1B9F12538();
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v36 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v33 - v10;
  v12 = *(a1 + 16);
  v13 = *a3;
  swift_beginAccess();
  v14 = v7 + 16;
  v15 = *(v7 + 16);
  v39 = v12;
  v15(v11, v12 + v13, v6);
  v16 = sub_1BA4A4548();
  v19 = *(v7 + 8);
  v17 = v7 + 8;
  v18 = v19;
  result = (v19)(v11, v6);
  if (v16 < 0)
  {
LABEL_12:
    __break(1u);
  }

  else
  {
    if (v16)
    {
      v37 = v16;
      v38 = v18;
      v21 = 0;
      v22 = 0;
      v34 = v15;
      v35 = v17;
      v33 = v14;
      v23 = v38;
      do
      {
        v15(v11, v39 + v13, v6);
        v24 = sub_1BA4A4548();
        v23(v11, v6);
        if (v22 < v24)
        {
          v25 = v39;
          v15(v11, v39 + v13, v6);
          v26 = v15;
          v27 = v36;
          v26(v36, v25 + v13, v6);
          v28 = sub_1BA4A4578();
          result = (v23)(v27, v6);
          if (v22 >= *(v28 + 16))
          {
            __break(1u);
            goto LABEL_12;
          }

          v29 = v13;
          v31 = *(v28 + v21 + 32);
          v30 = *(v28 + v21 + 40);

          v40 = v31;
          v41 = v30;
          v13 = v29;
          v32 = sub_1BA4A44A8();

          v23(v11, v6);
          v15 = v34;
          if (v32 > 0)
          {
            return 1;
          }
        }

        ++v22;
        v21 += 16;
      }

      while (v37 != v22);
    }

    return 0;
  }

  return result;
}

uint64_t sub_1BA062E20(uint64_t a1)
{
  sub_1B9F12538();
  v3 = v2;
  v4 = *(v2 - 8);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v41 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v38 - v7;
  swift_beginAccess();
  v44 = a1;
  v9 = *(a1 + 104);
  ObjectType = swift_getObjectType();
  v11 = *(v9 + 16);
  swift_unknownObjectRetain();
  v11(ObjectType, v9);
  swift_unknownObjectRelease();
  v12 = sub_1BA4A4548();
  v15 = *(v4 + 8);
  v13 = v4 + 8;
  v14 = v15;
  result = (v15)(v8, v3);
  if (v12 < 0)
  {
LABEL_12:
    __break(1u);
  }

  else
  {
    if (v12)
    {
      v17 = 0;
      v18 = 0;
      v39 = v12;
      v40 = v3;
      v42 = v14;
      v43 = v13;
      do
      {
        v19 = *(v44 + 104);
        v20 = swift_getObjectType();
        v21 = *(v19 + 16);
        swift_unknownObjectRetain();
        v21(v20, v19);
        v22 = v42;
        swift_unknownObjectRelease();
        v23 = sub_1BA4A4548();
        v22(v8, v3);
        if (v18 < v23)
        {
          v24 = v44;
          v25 = *(v44 + 104);
          v26 = swift_getObjectType();
          v27 = *(v25 + 16);
          swift_unknownObjectRetain();
          v27(v26, v25);
          swift_unknownObjectRelease();
          v28 = *(v24 + 104);
          v3 = v40;
          v29 = swift_getObjectType();
          v30 = *(v28 + 16);
          swift_unknownObjectRetain();
          v31 = v8;
          v32 = v41;
          v30(v29, v28);
          v33 = v42;
          swift_unknownObjectRelease();
          v34 = sub_1BA4A4578();
          result = v33(v32, v3);
          if (v18 >= *(v34 + 16))
          {
            __break(1u);
            goto LABEL_12;
          }

          v36 = *(v34 + v17 + 32);
          v35 = *(v34 + v17 + 40);

          v45 = v36;
          v46 = v35;
          v37 = sub_1BA4A44A8();

          v33(v31, v3);
          v8 = v31;
          v12 = v39;
          if (v37 > 0)
          {
            return 1;
          }
        }

        ++v18;
        v17 += 16;
      }

      while (v12 != v18);
    }

    return 0;
  }

  return result;
}

uint64_t sub_1BA06316C(uint64_t a1)
{
  sub_1B9F12538();
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v44 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v42 - v7;
  v47 = a1;
  sub_1BA0FBDE0();
  v10 = v9;
  ObjectType = swift_getObjectType();
  v12 = *(v10 + 16);
  swift_unknownObjectRetain();
  v12(ObjectType, v10);
  swift_unknownObjectRelease();
  v13 = sub_1BA4A4548();
  v16 = *(v4 + 8);
  v14 = v4 + 8;
  v15 = v16;
  result = (v16)(v8, v3);
  if (v13 < 0)
  {
LABEL_12:
    __break(1u);
  }

  else
  {
    if (v13)
    {
      v18 = 0;
      v19 = 0;
      v42 = v14;
      v43 = v3;
      v45 = v13;
      v46 = v15;
      do
      {
        sub_1BA0FBDE0();
        v21 = v20;
        v22 = swift_getObjectType();
        v23 = *(v21 + 16);
        swift_unknownObjectRetain();
        v24 = v22;
        v25 = v46;
        v23(v24, v21);
        swift_unknownObjectRelease();
        v26 = sub_1BA4A4548();
        v25(v8, v3);
        if (v19 < v26)
        {
          sub_1BA0FBDE0();
          v28 = v27;
          v29 = swift_getObjectType();
          v30 = *(v28 + 16);
          swift_unknownObjectRetain();
          v30(v29, v28);
          swift_unknownObjectRelease();
          v3 = v43;
          sub_1BA0FBDE0();
          v32 = v31;
          v33 = swift_getObjectType();
          v34 = *(v32 + 16);
          swift_unknownObjectRetain();
          v35 = v44;
          v36 = v33;
          v37 = v46;
          v34(v36, v32);
          swift_unknownObjectRelease();
          v38 = sub_1BA4A4578();
          result = v37(v35, v3);
          if (v19 >= *(v38 + 16))
          {
            __break(1u);
            goto LABEL_12;
          }

          v39 = *(v38 + v18 + 32);
          v40 = *(v38 + v18 + 40);

          v48 = v39;
          v49 = v40;
          v41 = sub_1BA4A44A8();

          v37(v8, v3);
          if (v41 >= 1)
          {
            return 1;
          }
        }

        ++v19;
        v18 += 16;
      }

      while (v45 != v19);
    }

    return 0;
  }

  return result;
}

uint64_t sub_1BA0634AC(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  sub_1B9F12538();
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v36 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v33 - v10;
  v12 = *a3;
  swift_beginAccess();
  v13 = *(v7 + 16);
  v38 = a1;
  v39 = v12;
  v13(v11, a1 + v12, v6);
  v14 = sub_1BA4A4548();
  v15 = *(v7 + 8);
  v16 = v7 + 8;
  result = v15(v11, v6);
  if (v14 < 0)
  {
LABEL_12:
    __break(1u);
  }

  else
  {
    if (v14)
    {
      v37 = v15;
      v18 = 0;
      v19 = 0;
      v34 = v14;
      v35 = v7 + 16;
      do
      {
        v13(v11, v38 + v39, v6);
        v20 = sub_1BA4A4548();
        v21 = v37;
        v37(v11, v6);
        if (v19 < v20)
        {
          v22 = v38;
          v23 = v39;
          v13(v11, v38 + v39, v6);
          v24 = v22 + v23;
          v25 = v13;
          v26 = v36;
          v27 = v25;
          v25(v36, v24, v6);
          v28 = sub_1BA4A4578();
          result = v21(v26, v6);
          if (v19 >= *(v28 + 16))
          {
            __break(1u);
            goto LABEL_12;
          }

          v29 = v16;
          v31 = *(v28 + v18 + 32);
          v30 = *(v28 + v18 + 40);

          v40 = v31;
          v41 = v30;
          v32 = sub_1BA4A44A8();

          v16 = v29;
          v21(v11, v6);
          v13 = v27;
          v14 = v34;
          if (v32 > 0)
          {
            return 1;
          }
        }

        ++v19;
        v18 += 16;
      }

      while (v14 != v19);
    }

    return 0;
  }

  return result;
}

void sub_1BA0637A4()
{
  if (!qword_1EBBEABD0)
  {
    type metadata accessor for NotificationSettingsDataSource(255);
    type metadata accessor for NotificationInvalidAuthorizationDataSource(255);
    v0 = type metadata accessor for PrimarySecondaryDataSource();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBBEABD0);
    }
  }
}

void *sub_1BA063820(void *a1, uint64_t a2)
{
  v3 = v2;
  sub_1B9F0ADF8(0, &qword_1EDC5E090);
  v6 = sub_1BA4A7A78();
  v7 = objc_allocWithZone(MEMORY[0x1E696C4F8]);
  v8 = sub_1BA4A6758();
  v9 = [v7 initWithName:v8 loggingCategory:v6];

  v3[2] = v9;
  v3[5] = sub_1BA062B44;
  v3[6] = 0;
  sub_1BA4A7DF8();

  v10 = a1[3];
  v11 = a1[4];

  MEMORY[0x1BFAF1350](v10, v11);

  MEMORY[0x1BFAF1350](95, 0xE100000000000000);
  v12 = *(a2 + OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_identifier);
  v13 = *(a2 + OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_identifier + 8);

  MEMORY[0x1BFAF1350](v12, v13);

  v3[3] = 0xD000000000000011;
  v3[4] = 0x80000001BA4E6710;
  v3[7] = a1;
  v3[8] = a2;
  v14 = a1[2];
  swift_beginAccess();
  v15 = *(v14 + 16);

  [v15 registerObserver_];
  swift_beginAccess();
  v16 = v3[8];
  swift_beginAccess();
  [*(v16 + 16) registerObserver_];
  return v3;
}

void *sub_1BA063A28(void *a1, uint64_t a2)
{
  v3 = v2;
  sub_1B9F0ADF8(0, &qword_1EDC5E090);
  v6 = sub_1BA4A7A78();
  v7 = objc_allocWithZone(MEMORY[0x1E696C4F8]);
  v8 = sub_1BA4A6758();
  v9 = [v7 initWithName:v8 loggingCategory:v6];

  v3[2] = v9;
  v3[5] = sub_1BA062B50;
  v3[6] = 0;
  sub_1BA4A7DF8();

  v10 = a1[3];
  v11 = a1[4];

  MEMORY[0x1BFAF1350](v10, v11);

  MEMORY[0x1BFAF1350](95, 0xE100000000000000);
  v12 = *(a2 + 24);
  v13 = *(a2 + 32);

  MEMORY[0x1BFAF1350](v12, v13);

  v3[3] = 0xD000000000000011;
  v3[4] = 0x80000001BA4E6710;
  v3[7] = a1;
  v3[8] = a2;
  v14 = a1[2];
  v15 = OBJC_IVAR____TtC18HealthExperienceUI27SectionsPublisherDataSource_changeObservers;
  swift_beginAccess();
  v16 = *(v14 + v15);

  [v16 registerObserver_];
  swift_beginAccess();
  v17 = *(v3[8] + 16);
  swift_beginAccess();
  [*(v17 + 16) registerObserver_];
  return v3;
}

void *sub_1BA063C7C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v9 = v5;
  sub_1B9F0ADF8(0, &qword_1EDC5E090);
  v12 = sub_1BA4A7A78();
  v13 = objc_allocWithZone(MEMORY[0x1E696C4F8]);
  v14 = sub_1BA4A6758();
  v15 = [v13 initWithName:v14 loggingCategory:v12];

  v9[2] = v15;
  v9[5] = a3;
  v9[6] = 0;
  sub_1BA4A7DF8();

  v16 = (a1 + *a4);
  v17 = *v16;
  v18 = v16[1];

  MEMORY[0x1BFAF1350](v17, v18);

  MEMORY[0x1BFAF1350](95, 0xE100000000000000);
  v19 = (a2 + *a5);
  v20 = *v19;
  v21 = v19[1];

  MEMORY[0x1BFAF1350](v20, v21);

  v9[3] = 0xD000000000000011;
  v9[4] = 0x80000001BA4E6710;
  v9[7] = a1;
  v9[8] = a2;
  swift_beginAccess();
  v22 = *(a1 + 16);

  [v22 registerObserver_];
  swift_beginAccess();
  v23 = v9[8];
  swift_beginAccess();
  [*(v23 + 16) registerObserver_];
  return v9;
}

void *sub_1BA063F2C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  sub_1B9F0ADF8(0, &qword_1EDC5E090);
  v6 = sub_1BA4A7A78();
  v7 = objc_allocWithZone(MEMORY[0x1E696C4F8]);
  v8 = sub_1BA4A6758();
  v9 = [v7 initWithName:v8 loggingCategory:v6];

  v3[2] = v9;
  v3[5] = sub_1BA062E14;
  v3[6] = 0;
  sub_1BA4A7DF8();

  v10 = *(a1 + OBJC_IVAR____TtC18HealthExperienceUI27SectionsPublisherDataSource_identifier);
  v11 = *(a1 + OBJC_IVAR____TtC18HealthExperienceUI27SectionsPublisherDataSource_identifier + 8);

  MEMORY[0x1BFAF1350](v10, v11);

  MEMORY[0x1BFAF1350](95, 0xE100000000000000);
  v12 = *(a2 + 40);
  v13 = *(a2 + 48);

  MEMORY[0x1BFAF1350](v12, v13);

  v3[3] = 0xD000000000000011;
  v3[4] = 0x80000001BA4E6710;
  v3[7] = a1;
  v3[8] = a2;
  v14 = OBJC_IVAR____TtC18HealthExperienceUI27SectionsPublisherDataSource_changeObservers;
  swift_beginAccess();
  v15 = *(a1 + v14);

  [v15 registerObserver_];
  swift_beginAccess();
  v16 = v3[8];
  swift_beginAccess();
  [*(v16 + 16) registerObserver_];
  return v3;
}

void *sub_1BA064154(char *a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  sub_1B9F0ADF8(0, &qword_1EDC5E090);
  v8 = sub_1BA4A7A78();
  v9 = objc_allocWithZone(MEMORY[0x1E696C4F8]);
  v10 = sub_1BA4A6758();
  v11 = [v9 initWithName:v10 loggingCategory:v8];

  v5[2] = v11;
  v5[5] = a3;
  v5[6] = 0;
  sub_1BA4A7DF8();

  v12 = *&a1[qword_1EDC84AD0];
  v13 = *&a1[qword_1EDC84AD0 + 8];

  MEMORY[0x1BFAF1350](v12, v13);

  MEMORY[0x1BFAF1350](95, 0xE100000000000000);
  v14 = *(a2 + OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_identifier);
  v15 = *(a2 + OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_identifier + 8);

  MEMORY[0x1BFAF1350](v14, v15);

  v5[3] = 0xD000000000000011;
  v5[4] = 0x80000001BA4E6710;
  v5[7] = a1;
  v5[8] = a2;
  v16 = qword_1EBBEA528;
  swift_beginAccess();
  v17 = *&a1[v16];
  v18 = a1;

  [v17 registerObserver_];
  swift_beginAccess();
  v19 = v5[8];
  swift_beginAccess();
  [*(v19 + 16) registerObserver_];
  return v5;
}

void *sub_1BA064364(char *a1, uint64_t a2)
{
  v3 = v2;
  sub_1B9F0ADF8(0, &qword_1EDC5E090);
  v6 = sub_1BA4A7A78();
  v7 = objc_allocWithZone(MEMORY[0x1E696C4F8]);
  v8 = sub_1BA4A6758();
  v9 = [v7 initWithName:v8 loggingCategory:v6];

  v3[2] = v9;
  v3[5] = sub_1BA064A30;
  v3[6] = 0;
  sub_1BA4A7DF8();

  v10 = *&a1[qword_1EDC84AD0];
  v11 = *&a1[qword_1EDC84AD0 + 8];

  MEMORY[0x1BFAF1350](v10, v11);

  MEMORY[0x1BFAF1350](95, 0xE100000000000000);
  v12 = *(a2 + 16);
  v13 = *(a2 + 24);

  MEMORY[0x1BFAF1350](v12, v13);

  v3[3] = 0xD000000000000011;
  v3[4] = 0x80000001BA4E6710;
  v3[7] = a1;
  v3[8] = a2;
  v14 = qword_1EBBEA528;
  swift_beginAccess();
  v15 = *&a1[v14];
  v16 = a1;

  [v15 registerObserver_];
  swift_beginAccess();
  v17 = *(v3[8] + 32);
  swift_beginAccess();
  [*(v17 + 16) registerObserver_];
  return v3;
}

void *sub_1BA064594(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = v4;
  sub_1B9F0ADF8(0, &qword_1EDC5E090);
  v10 = sub_1BA4A7A78();
  v11 = objc_allocWithZone(MEMORY[0x1E696C4F8]);
  v12 = sub_1BA4A6758();
  v13 = [v11 initWithName:v12 loggingCategory:v10];

  v7[2] = v13;
  v7[5] = a3;
  v7[6] = 0;
  sub_1BA4A7DF8();

  v14 = a1[3];
  v15 = a1[4];

  MEMORY[0x1BFAF1350](v14, v15);

  MEMORY[0x1BFAF1350](95, 0xE100000000000000);
  v16 = (a2 + *a4);
  v17 = *v16;
  v18 = v16[1];

  MEMORY[0x1BFAF1350](v17, v18);

  v7[3] = 0xD000000000000011;
  v7[4] = 0x80000001BA4E6710;
  v7[7] = a1;
  v7[8] = a2;
  swift_beginAccess();
  v19 = a1[2];

  [v19 registerObserver_];
  swift_beginAccess();
  v20 = v7[8];
  swift_beginAccess();
  [*(v20 + 16) registerObserver_];
  return v7;
}

void *sub_1BA064790(uint64_t a1, char *a2)
{
  v3 = v2;
  sub_1B9F0ADF8(0, &qword_1EDC5E090);
  v6 = sub_1BA4A7A78();
  v7 = objc_allocWithZone(MEMORY[0x1E696C4F8]);
  v8 = sub_1BA4A6758();
  v9 = [v7 initWithName:v8 loggingCategory:v6];

  v3[2] = v9;
  v3[5] = sub_1BA064A34;
  v3[6] = 0;
  sub_1BA4A7DF8();

  v10 = *(a1 + OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_identifier);
  v11 = *(a1 + OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_identifier + 8);

  MEMORY[0x1BFAF1350](v10, v11);

  MEMORY[0x1BFAF1350](95, 0xE100000000000000);
  v12 = *&a2[qword_1EDC84AD0];
  v13 = *&a2[qword_1EDC84AD0 + 8];

  MEMORY[0x1BFAF1350](v12, v13);

  v3[3] = 0xD000000000000011;
  v3[4] = 0x80000001BA4E6710;
  v3[7] = a1;
  v3[8] = a2;
  swift_beginAccess();
  v14 = *(a1 + 16);

  v15 = a2;
  [v14 registerObserver_];
  swift_beginAccess();
  v16 = v3[8];
  v17 = qword_1EBBEA528;
  swift_beginAccess();
  [*(v16 + v17) registerObserver_];
  return v3;
}

void sub_1BA0649AC()
{
  if (!qword_1EDC61AE0)
  {
    sub_1BA4A27B8();
    sub_1B9F15730();
    v0 = type metadata accessor for FetchedResultsWithLayoutDataSource();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC61AE0);
    }
  }
}

uint64_t PDFVStackWithFixedWidth.init(width:spacing:_:)@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  result = a1();
  *a2 = result;
  *(a2 + 8) = a4;
  *(a2 + 16) = a3;
  return result;
}

double PDFVStackWithFixedWidth.render(context:document:)(void *a1, uint64_t a2)
{
  v5 = *(v2 + 16);
  type metadata accessor for PDFBuilder.Document();
  swift_allocObject();
  v6 = sub_1BA20F244(a2);
  PDFBuilder.Document.constrainDrawingContext(height:width:)(0, 1, v5, 0);

  PDFVStack.render(context:document:)(a1, v6);

  swift_initStackObject();
  v7 = sub_1BA20F244(a2);

  PDFBuilder.Document.constrainDrawingContext(height:width:)(0, 1, v5, 0);
  PDFVStack.boundingRectForContent(in:)(v7);
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;

  v26.origin.x = v9;
  v26.origin.y = v11;
  v26.size.width = v13;
  v26.size.height = v15;
  Height = CGRectGetHeight(v26);
  v27.origin.x = PDFBuilder.Document.drawingContext.getter();
  x = v27.origin.x;
  y = v27.origin.y;
  width = v27.size.width;
  v20 = v27.size.height;
  v21 = CGRectGetMinX(v27) + 0.0;
  v28.origin.x = x;
  v28.origin.y = y;
  v28.size.width = width;
  v28.size.height = v20;
  v22 = Height + CGRectGetMinY(v28);
  v29.origin.x = x;
  v29.origin.y = y;
  v29.size.width = width;
  v29.size.height = v20;
  v23 = CGRectGetWidth(v29);
  v30.origin.x = x;
  v30.origin.y = y;
  v30.size.width = width;
  v30.size.height = v20;
  v24 = CGRectGetHeight(v30);

  result = v24 - Height;
  *(a2 + 168) = v21;
  *(a2 + 176) = v22;
  *(a2 + 184) = v23;
  *(a2 + 192) = v24 - Height;
  *(a2 + 200) = 0;
  return result;
}

double PDFVStackWithFixedWidth.boundingRectForContent(in:)(uint64_t a1)
{
  v3 = *(v1 + 16);
  type metadata accessor for PDFBuilder.Document();
  swift_initStackObject();
  v4 = sub_1BA20F244(a1);

  PDFBuilder.Document.constrainDrawingContext(height:width:)(0, 1, v3, 0);
  PDFVStack.boundingRectForContent(in:)(v4);
  v6 = v5;

  return v6;
}

double PDFVStackWithFixedWidth.minimumBoundingRectForContent(in:)(uint64_t a1)
{
  v3 = *(v1 + 16);
  type metadata accessor for PDFBuilder.Document();
  swift_initStackObject();
  v4 = sub_1BA20F244(a1);

  PDFBuilder.Document.constrainDrawingContext(height:width:)(0, 1, v3, 0);
  PDFVStack.boundingRectForContent(in:)(v4);
  v6 = v5;

  return v6;
}

uint64_t SnapshotDataSource.firstItem.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = SnapshotDataSource.numberOfSections.getter(a1, a2);
  if (result < 0)
  {
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
  }

  else
  {
    v7 = result;
    v8 = 0;
    v9 = 0;
    do
    {
      if (v7 == v9)
      {
        goto LABEL_12;
      }

      if (__OFADD__(v9, 1))
      {
        __break(1u);
        goto LABEL_14;
      }

      result = SnapshotDataSource.numberOfItems(in:)(v9++);
      v8 += 16;
    }

    while (result <= 0);
    result = SnapshotDataSource.sectionIdentifiers.getter(a1, a2);
    if (v9 - 1 >= *(result + 16))
    {
      goto LABEL_15;
    }

    v10 = *(result + v8 + 16);
    v11 = *(result + v8 + 24);

    v12 = SnapshotDataSource.itemIdentifiers(in:)(v10, v11, a1, a2);

    if (!v12[2])
    {

LABEL_12:
      *(a3 + 32) = 0;
      *a3 = 0u;
      *(a3 + 16) = 0u;
      return result;
    }

    v13 = v12[4];
    v14 = v12[5];

    (*(a2 + 24))(v13, v14, a1, a2);
  }

  return result;
}

uint64_t NSDiffableDataSourceSnapshot.snapshotWithoutUpdateOperations()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v29 = a2;
  v5 = *(a1 + 16);
  v35 = sub_1BA4A7AA8();
  v38 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v34 = &v27 - v6;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a1 - 8);
  v27 = v9;
  v28 = v11;
  MEMORY[0x1EEE9AC00](v12);
  v37 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_1BA4A4598();
  sub_1BA4A6BF8();
  swift_getWitnessTable();
  v14 = sub_1BA4A6E78();

  if (v14)
  {
    v40 = sub_1BA4A45B8();
    v15 = sub_1BA4A6E78();

    if (v15)
    {
      v40 = sub_1BA4A45A8();
      sub_1BA4A6BF8();
      swift_getWitnessTable();
      v16 = sub_1BA4A6E78();

      if (v16)
      {
        return (*(v28 + 16))(v29, v3, a1);
      }
    }
  }

  sub_1BA4A45D8();
  v36 = a1;
  v33 = v3;
  v18 = sub_1BA4A4578();
  if (sub_1BA4A6BC8())
  {
    v19 = 0;
    v39 = (v7 + 16);
    v31 = (v38 + 8);
    v32 = v7 + 56;
    v30 = v7 + 8;
    do
    {
      v20 = sub_1BA4A6BA8();
      sub_1BA4A6B48();
      if (v20)
      {
        v21 = *(v7 + 16);
        v21(v10, (v18 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v19), v5);
        v22 = v19 + 1;
        if (__OFADD__(v19, 1))
        {
          goto LABEL_14;
        }
      }

      else
      {
        result = sub_1BA4A7E18();
        if (v27 != 8)
        {
          __break(1u);
          return result;
        }

        v40 = result;
        v21 = *v39;
        (*v39)(v10, &v40, v5);
        swift_unknownObjectRelease();
        v22 = v19 + 1;
        if (__OFADD__(v19, 1))
        {
LABEL_14:
          __break(1u);
          break;
        }
      }

      v38 = v22;
      sub_1BA066AFC(v5, v5);
      swift_allocObject();
      sub_1BA4A6B38();
      v21(v23, v10, v5);
      sub_1BA4A6BF8();
      sub_1BA4A44C8();

      sub_1BA4A4528();
      v24 = v10;
      v25 = v34;
      (*(v7 + 56))(v34, 1, 1, v5);
      sub_1BA4A4448();

      v26 = v25;
      v10 = v24;
      (*v31)(v26, v35);
      (*(v7 + 8))(v24, v5);
      ++v19;
    }

    while (v38 != sub_1BA4A6BC8());
  }

  return (*(v28 + 32))(v29, v37, v36);
}

unint64_t NSDiffableDataSourceSnapshot<>.description.getter()
{
  sub_1BA4A7DF8();

  v23 = 0xD000000000000019;
  v24 = 0x80000001BA4E67C0;
  sub_1B9F117BC(0, &qword_1EDC5F8A0, MEMORY[0x1E69E6168], MEMORY[0x1E69DC168]);
  sub_1BA4A4548();
  v0 = sub_1BA4A82D8();
  MEMORY[0x1BFAF1350](v0);

  MEMORY[0x1BFAF1350](0x6920666F2023202CLL, 0xEE00203A736D6574);
  v22[0] = sub_1BA4A44B8();
  v1 = sub_1BA4A82D8();
  MEMORY[0x1BFAF1350](v1);

  MEMORY[0x1BFAF1350](2570, 0xE200000000000000);
  v21 = sub_1BA4A4578();
  v2 = *(v21 + 16);
  if (v2)
  {
    v3 = (v21 + 40);
    v4 = MEMORY[0x1E69E6158];
    do
    {
      v6 = *(v3 - 1);
      v5 = *v3;

      sub_1BA4A7DF8();

      strcpy(v22, "In section: ");
      BYTE5(v22[1]) = 0;
      HIWORD(v22[1]) = -5120;
      MEMORY[0x1BFAF1350](v6, v5);
      MEMORY[0x1BFAF1350](2618, 0xE200000000000000);
      MEMORY[0x1BFAF1350](v22[0], v22[1]);

      v7 = sub_1BA4A4528();

      v8 = MEMORY[0x1BFAF1560](v7, v4);
      v10 = v9;

      v22[0] = v8;
      v22[1] = v10;
      MEMORY[0x1BFAF1350](2570, 0xE200000000000000);
      MEMORY[0x1BFAF1350](v8, v10);

      v3 += 2;
      --v2;
    }

    while (v2);
  }

  sub_1BA4A7DF8();

  sub_1BA4A45B8();
  v11 = MEMORY[0x1BFAF1560]();
  v13 = v12;

  MEMORY[0x1BFAF1350](v11, v13);

  MEMORY[0x1BFAF1350](2570, 0xE200000000000000);
  MEMORY[0x1BFAF1350](0xD000000000000014, 0x80000001BA4E67E0);

  sub_1BA4A7DF8();

  sub_1BA4A4598();
  v14 = MEMORY[0x1BFAF1560]();
  v16 = v15;

  MEMORY[0x1BFAF1350](v14, v16);

  MEMORY[0x1BFAF1350](2570, 0xE200000000000000);
  MEMORY[0x1BFAF1350](0xD000000000000010, 0x80000001BA4E6800);

  sub_1BA4A7DF8();

  sub_1BA4A45A8();
  v17 = MEMORY[0x1BFAF1560]();
  v19 = v18;

  MEMORY[0x1BFAF1350](v17, v19);

  MEMORY[0x1BFAF1350](2570, 0xE200000000000000);
  MEMORY[0x1BFAF1350](0xD000000000000013, 0x80000001BA4E6820);

  return v23;
}

uint64_t sub_1BA065994@<X0>(unint64_t *a1@<X0>, unint64_t *a2@<X1>, uint64_t a3@<X2>, unint64_t *a4@<X8>)
{
  v9 = sub_1BA4A3EA8();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a1;
  v40 = *a2;
  sub_1BA4A3D88();

  v14 = sub_1BA4A3E88();
  v15 = sub_1BA4A6FB8();

  v16 = os_log_type_enabled(v14, v15);
  v41 = v13;
  if (!v16)
  {

    result = (*(v10 + 8))(v12, v9);
    goto LABEL_7;
  }

  v39 = v10;
  v17 = swift_slowAlloc();
  result = swift_slowAlloc();
  v43 = result;
  *v17 = 136315650;
  if ((v13 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  v38 = v9;
  v19 = *(a3 + 16);
  if (v13 >= v19)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v34 = result;
  v35 = v15;
  v36 = a4;
  v37 = v4;
  v20 = a3 + 32;
  v21 = (a3 + 32 + 40 * v13);
  v22 = v20;
  __swift_project_boxed_opaque_existential_1(v21, v21[3]);
  v23 = sub_1BA4A2D58();
  v25 = sub_1B9F0B82C(v23, v24, &v43);

  *(v17 + 4) = v25;
  *(v17 + 12) = 2080;
  sub_1B9F0A534(v21, v42);
  sub_1B9F0D9AC(0, &qword_1EDC6AD50);
  v26 = sub_1BA4A6808();
  v28 = sub_1B9F0B82C(v26, v27, &v43);

  *(v17 + 14) = v28;
  *(v17 + 22) = 2080;
  if (v40 < v19)
  {
    sub_1B9F0A534(v22 + 40 * v40, v42);
    v29 = sub_1BA4A6808();
    v31 = sub_1B9F0B82C(v29, v30, &v43);

    *(v17 + 24) = v31;
    _os_log_impl(&dword_1B9F07000, v14, v35, "Duplicate key when creating cache map %s left: %s right: %s", v17, 0x20u);
    v32 = v34;
    swift_arrayDestroy();
    MEMORY[0x1BFAF43A0](v32, -1, -1);
    MEMORY[0x1BFAF43A0](v17, -1, -1);

    result = (*(v39 + 8))(v12, v38);
    a4 = v36;
LABEL_7:
    *a4 = v41;
    return result;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_1BA065CAC@<X0>(unint64_t *a1@<X0>, unint64_t *a2@<X1>, uint64_t a3@<X2>, unint64_t *a4@<X8>)
{
  v9 = sub_1BA4A3EA8();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a1;
  v50 = *a2;
  sub_1BA4A3D88();

  v14 = sub_1BA4A3E88();
  v15 = sub_1BA4A6FB8();

  if (!os_log_type_enabled(v14, v15))
  {

    result = (*(v10 + 8))(v12, v9);
    goto LABEL_7;
  }

  v49 = v15;
  v16 = swift_slowAlloc();
  result = swift_slowAlloc();
  v57 = result;
  *v16 = 136315650;
  if ((v13 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  v18 = v13;
  v19 = *(a3 + 16);
  if (v18 >= v19)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v44 = result;
  v45 = v18;
  v46 = v9;
  v47 = a4;
  v48 = v4;
  v20 = a3 + 32;
  v21 = (a3 + 32 + 48 * v18);
  v22 = v21[4];
  v23 = v21[5];

  v24 = sub_1B9F0B82C(v22, v23, &v57);

  *(v16 + 4) = v24;
  *(v16 + 12) = 2080;
  v25 = v21[1];
  v27 = v21[2];
  v26 = v21[3];
  v28 = v21[4];
  v29 = v21[5];
  v51 = *v21;
  v52 = v25;
  v53 = v27;
  v54 = v26;
  v55 = v28;
  v56 = v29;

  v30 = sub_1BA4A6808();
  v32 = sub_1B9F0B82C(v30, v31, &v57);

  *(v16 + 14) = v32;
  *(v16 + 22) = 2080;
  if (v50 < v19)
  {
    v33 = (v20 + 48 * v50);
    v34 = v33[1];
    v36 = v33[2];
    v35 = v33[3];
    v37 = v33[4];
    v38 = v33[5];
    v51 = *v33;
    v52 = v34;
    v53 = v36;
    v54 = v35;
    v55 = v37;
    v56 = v38;

    v39 = sub_1BA4A6808();
    v41 = sub_1B9F0B82C(v39, v40, &v57);

    *(v16 + 24) = v41;
    _os_log_impl(&dword_1B9F07000, v14, v49, "Duplicate key when creating cache map %s left: %s right: %s", v16, 0x20u);
    v42 = v44;
    swift_arrayDestroy();
    MEMORY[0x1BFAF43A0](v42, -1, -1);
    MEMORY[0x1BFAF43A0](v16, -1, -1);

    result = (*(v10 + 8))(v12, v46);
    a4 = v47;
    v13 = v45;
LABEL_7:
    *a4 = v13;
    return result;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t SnapshotDataSource.doesIndexPathExist(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_1BA4A1998();
  v63 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v64 = &v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v58 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v60 = &v58 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v59 = &v58 - v15;
  v16 = sub_1BA4A3EA8();
  v61 = *(v16 - 8);
  v62 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v58 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v58 - v20;
  v22 = sub_1BA4A1968();
  v65 = v3;
  if (v22 >= SnapshotDataSource.numberOfSections.getter(a2, a3))
  {
    v60 = a2;
    sub_1BA4A3D88();
    v27 = v63;
    v28 = *(v63 + 16);
    v28(v11, a1, v7);
    v28(v64, a1, v7);
    swift_unknownObjectRetain();
    v29 = sub_1BA4A3E88();
    v30 = sub_1BA4A6FA8();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v67 = v32;
      *v31 = 134218498;
      v33 = sub_1BA4A1968();
      v34 = *(v27 + 8);
      v34(v11, v7);
      *(v31 + 4) = v33;
      *(v31 + 12) = 2048;
      v35 = v64;
      v36 = sub_1BA4A1958();
      v34(v35, v7);
      *(v31 + 14) = v36;
      *(v31 + 22) = 2080;
      v66 = v65;
      swift_unknownObjectRetain();
      v37 = sub_1BA4A6808();
      v39 = sub_1B9F0B82C(v37, v38, &v67);

      *(v31 + 24) = v39;
      _os_log_impl(&dword_1B9F07000, v29, v30, "The indexpath's section with section %ld and item %ld requested does not exist in the data source %s", v31, 0x20u);
      __swift_destroy_boxed_opaque_existential_1(v32);
      MEMORY[0x1BFAF43A0](v32, -1, -1);
      MEMORY[0x1BFAF43A0](v31, -1, -1);
    }

    else
    {
      v56 = *(v27 + 8);
      v56(v64, v7);
      v56(v11, v7);
    }

    (*(v61 + 8))(v18, v62);
  }

  else
  {
    v23 = v63;
    v24 = sub_1BA4A1958();
    v25 = sub_1BA4A1968();
    if (v24 < SnapshotDataSource.numberOfItems(in:)(v25))
    {
      return 1;
    }

    v40 = v21;
    sub_1BA4A3D88();
    v41 = v23;
    v42 = *(v23 + 16);
    v43 = v59;
    v44 = v7;
    v42(v59, a1, v7);
    v45 = v60;
    v42(v60, a1, v44);
    swift_unknownObjectRetain();
    v46 = sub_1BA4A3E88();
    v47 = sub_1BA4A6FA8();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v64 = swift_slowAlloc();
      v67 = v64;
      *v48 = 134218498;
      v49 = sub_1BA4A1968();
      v50 = *(v41 + 8);
      v50(v43, v44);
      *(v48 + 4) = v49;
      *(v48 + 12) = 2048;
      v51 = sub_1BA4A1958();
      v50(v45, v44);
      *(v48 + 14) = v51;
      *(v48 + 22) = 2080;
      v66 = v65;
      swift_unknownObjectRetain();
      v52 = sub_1BA4A6808();
      v54 = sub_1B9F0B82C(v52, v53, &v67);

      *(v48 + 24) = v54;
      _os_log_impl(&dword_1B9F07000, v46, v47, "The indexpath's item with section %ld and item %ld requested does not exist in the data source %s", v48, 0x20u);
      v55 = v64;
      __swift_destroy_boxed_opaque_existential_1(v64);
      MEMORY[0x1BFAF43A0](v55, -1, -1);
      MEMORY[0x1BFAF43A0](v48, -1, -1);
    }

    else
    {
      v57 = *(v41 + 8);
      v57(v45, v44);
      v57(v43, v44);
    }

    (*(v61 + 8))(v40, v62);
  }

  return 0;
}

uint64_t NSDiffableDataSourceSnapshot.indexPath(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v44 = a3;
  v5 = *(a2 + 24);
  v6 = sub_1BA4A7AA8();
  v38 = *(v6 - 8);
  v39 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v41 = v37 - v7;
  v42 = v5;
  v43 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v40 = v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a2 + 16);
  v11 = sub_1BA4A7AA8();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = v37 - v13;
  v15 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v18 = v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37[1] = a1;
  sub_1BA4A4568();
  if ((*(v15 + 48))(v14, 1, v10) == 1)
  {
    (*(v12 + 8))(v14, v11);
LABEL_10:
    v31 = 1;
    v32 = v44;
LABEL_11:
    v33 = sub_1BA4A1998();
    return (*(*(v33 - 8) + 56))(v32, v31, 1, v33);
  }

  (*(v15 + 32))(v18, v14, v10);
  v19 = sub_1BA4A44E8();
  if (v20)
  {
LABEL_9:
    (*(v15 + 8))(v18, v10);
    goto LABEL_10;
  }

  v21 = v19;
  v37[0] = sub_1BA4A4528();
  v45 = v37[0];
  v22 = v42;
  sub_1BA4A6BF8();
  swift_getWitnessTable();
  v23 = v41;
  sub_1BA4A6E68();
  v24 = v43;
  if ((*(v43 + 48))(v23, 1, v22) == 1)
  {
    (*(v15 + 8))(v18, v10);
    (*(v38 + 8))(v23, v39);

    goto LABEL_10;
  }

  v39 = v21;
  v25 = v40;
  (*(v24 + 32))(v40, v23, v22);

  v26 = sub_1BA4A4468();
  if (v27 & 1) != 0 || (v28 = v26, result = sub_1BA4A4468(), (v30))
  {
    (*(v24 + 8))(v25, v22);
    goto LABEL_9;
  }

  v34 = __OFSUB__(result, v28);
  v35 = result - v28;
  v32 = v44;
  if (!v34)
  {
    sub_1B9F1BFA8(0, &qword_1EDC5DBD8, MEMORY[0x1E69E6530], MEMORY[0x1E69E6F90]);
    v36 = swift_allocObject();
    *(v36 + 16) = xmmword_1BA4B5460;
    *(v36 + 32) = v39;
    *(v36 + 40) = v35;
    MEMORY[0x1BFAEC320]();
    (*(v24 + 8))(v25, v22);
    (*(v15 + 8))(v18, v10);
    v31 = 0;
    goto LABEL_11;
  }

  __break(1u);
  return result;
}

void sub_1BA066AFC(uint64_t a1, uint64_t a2)
{
  if (swift_isClassType() && a2)
  {
    sub_1B9F1BFA8(0, &qword_1EDC6B400, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  }

  else
  {

    sub_1BA4A82E8();
  }
}

void *sub_1BA066B80(void *a1, int64_t a2, char a3)
{
  result = sub_1BA068F20(a1, a2, a3, *v3, &qword_1EDC5DCA0, &qword_1EDC6AD50, MEMORY[0x1E69A3310]);
  *v3 = result;
  return result;
}

char *sub_1BA066BB8(char *a1, int64_t a2, char a3)
{
  result = sub_1BA0679A8(a1, a2, a3, *v3, sub_1BA069A54);
  *v3 = result;
  return result;
}

void *sub_1BA066BEC(void *a1, int64_t a2, char a3)
{
  result = sub_1BA068F20(a1, a2, a3, *v3, &qword_1EDC6B448, &qword_1EDC6E1B0, MEMORY[0x1E69A3348]);
  *v3 = result;
  return result;
}

void *sub_1BA066C24(void *a1, int64_t a2, char a3)
{
  result = sub_1BA067200(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1BA066C44(char *a1, int64_t a2, char a3)
{
  result = sub_1BA06734C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1BA066C64(char *a1, int64_t a2, char a3)
{
  result = sub_1BA067488(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1BA066C84(void *a1, int64_t a2, char a3)
{
  result = sub_1BA0675AC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1BA066CA4(char *a1, int64_t a2, char a3)
{
  result = sub_1BA06772C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1BA066CC4(size_t a1, int64_t a2, char a3)
{
  result = sub_1BA06908C(a1, a2, a3, *v3, &qword_1EBBEA648, MEMORY[0x1E69A3C80], MEMORY[0x1E69A3C80]);
  *v3 = result;
  return result;
}

void *sub_1BA066D14(void *a1, int64_t a2, char a3)
{
  result = sub_1BA067838(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1BA066D34(char *a1, int64_t a2, char a3)
{
  result = sub_1BA0679A8(a1, a2, a3, *v3, sub_1B9F7A684);
  *v3 = result;
  return result;
}

char *sub_1BA066D68(char *a1, int64_t a2, char a3)
{
  result = sub_1BA067AA4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1BA066D88(void *a1, int64_t a2, char a3)
{
  result = sub_1BA068954(a1, a2, a3, *v3, &qword_1EBBEAC80, &qword_1EBBEAC88, &type metadata for ConfirmDetailsSection.Row);
  *v3 = result;
  return result;
}

void *sub_1BA066DC0(void *a1, int64_t a2, char a3)
{
  result = sub_1BA067BC0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1BA066DE0(char *a1, int64_t a2, char a3)
{
  result = sub_1BA067D2C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1BA066E00(size_t a1, int64_t a2, char a3)
{
  result = sub_1BA06908C(a1, a2, a3, *v3, &qword_1EBBEAC20, sub_1BA00ADAC, sub_1BA00ADAC);
  *v3 = result;
  return result;
}

size_t sub_1BA066E50(size_t a1, int64_t a2, char a3)
{
  result = sub_1BA06908C(a1, a2, a3, *v3, &qword_1EBBEA670, type metadata accessor for SummarySharingSelectableDataTypeItem, type metadata accessor for SummarySharingSelectableDataTypeItem);
  *v3 = result;
  return result;
}

size_t sub_1BA066EA0(size_t a1, int64_t a2, char a3)
{
  result = sub_1BA067FB0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1BA066EC0(char *a1, int64_t a2, char a3)
{
  result = sub_1BA0681CC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1BA066EE0(void *a1, int64_t a2, char a3)
{
  result = sub_1BA0682D8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1BA066F00(size_t a1, int64_t a2, char a3)
{
  result = sub_1BA06908C(a1, a2, a3, *v3, &qword_1EBBEAB08, type metadata accessor for ContentConfigurationItem, type metadata accessor for ContentConfigurationItem);
  *v3 = result;
  return result;
}

char *sub_1BA066F50(char *a1, int64_t a2, char a3)
{
  result = sub_1BA0685B0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1BA066F70(void *a1, int64_t a2, char a3)
{
  result = sub_1BA0686E8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1BA066F90(char *a1, int64_t a2, char a3)
{
  result = sub_1BA068854(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1BA066FB0(void *a1, int64_t a2, char a3)
{
  result = sub_1BA068954(a1, a2, a3, *v3, &qword_1EBBEACA0, &qword_1EDC6B670, MEMORY[0x1E69E6158]);
  *v3 = result;
  return result;
}

char *sub_1BA066FE8(char *a1, int64_t a2, char a3)
{
  result = sub_1BA068ABC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1BA067008(size_t a1, int64_t a2, char a3)
{
  result = sub_1BA068BC8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1BA067028(void *a1, int64_t a2, char a3)
{
  result = sub_1BA068F20(a1, a2, a3, *v3, &qword_1EBBEAC38, &qword_1EBBF18E0, &protocol descriptor for RecentSamplesItemModel);
  *v3 = result;
  return result;
}

char *sub_1BA067060(char *a1, int64_t a2, char a3)
{
  result = sub_1BA068DDC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1BA067080(void *a1, int64_t a2, char a3)
{
  result = sub_1BA068F20(a1, a2, a3, *v3, &qword_1EDC5DC80, qword_1EDC69430, &protocol descriptor for PDFRenderable);
  *v3 = result;
  return result;
}

size_t sub_1BA0670B8(size_t a1, int64_t a2, char a3)
{
  result = sub_1BA06908C(a1, a2, a3, *v3, &qword_1EDC6B438, MEMORY[0x1E69A3E18], MEMORY[0x1E69A3E18]);
  *v3 = result;
  return result;
}

size_t sub_1BA067108(size_t a1, int64_t a2, char a3)
{
  result = sub_1BA06908C(a1, a2, a3, *v3, &qword_1EBBEAC30, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FB0]);
  *v3 = result;
  return result;
}

char *sub_1BA067158(char *a1, int64_t a2, char a3)
{
  result = sub_1BA069280(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1BA067178(void *a1, int64_t a2, char a3)
{
  result = sub_1BA069510(a1, a2, a3, *v3, &qword_1EBBEAC98, sub_1B9FE983C, sub_1B9FE983C);
  *v3 = result;
  return result;
}

void *sub_1BA0671C8(void *a1, int64_t a2, char a3)
{
  result = sub_1BA068F20(a1, a2, a3, *v3, &qword_1EBBEAC28, &qword_1EBBE9B10, &protocol descriptor for SourcesItem);
  *v3 = result;
  return result;
}

void *sub_1BA067200(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1BA069920();
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 80);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[10 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 80 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1BA069C00(0, &qword_1EDC5E5C8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1BA06734C(char *result, int64_t a2, char a3, char *a4)
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
    sub_1B9F1BFA8(0, &qword_1EDC5DC50, &type metadata for EmbeddedDataSourceCollectionViewCell.Item, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 72);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[72 * v8])
    {
      memmove(v12, v13, 72 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1BA067488(char *result, int64_t a2, char a3, char *a4)
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
    sub_1B9F1BFA8(0, &qword_1EDC6B450, MEMORY[0x1E69A3C58], MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1BA0675AC(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1BA069B20(0, &qword_1EBBEA8A0, &qword_1EDC6E1A0, MEMORY[0x1E69E6720]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1BA069708(0, &qword_1EDC6E1A0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348], MEMORY[0x1E69E6720]);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1BA06772C(char *result, int64_t a2, char a3, char *a4)
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
    sub_1B9F1BFA8(0, &unk_1EDC5DC40, &type metadata for SummarySharingSelectionSuggestedCategory, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

void *sub_1BA067838(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1BA0698C8(0, &qword_1EDC5DBF8, &qword_1EDC5E718, sub_1B9FD8844);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1BA069998(0, &qword_1EDC5E718, sub_1B9FD8844);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1BA0679A8(char *result, int64_t a2, char a3, char *a4, void (*a5)(void))
{
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 3);
    v8 = v7 >> 1;
    if ((v7 >> 1) < a2)
    {
      if (v8 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if ((v7 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v8 = a2;
      }
    }
  }

  else
  {
    v8 = a2;
  }

  v9 = *(a4 + 2);
  if (v8 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = v8;
  }

  if (v10)
  {
    a5(0);
    v11 = swift_allocObject();
    v12 = _swift_stdlib_malloc_size(v11);
    v13 = v12 - 32;
    if (v12 < 32)
    {
      v13 = v12 - 17;
    }

    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * (v13 >> 4);
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  v14 = v11 + 32;
  v15 = a4 + 32;
  if (v6)
  {
    if (v11 != a4 || v14 >= &v15[16 * v9])
    {
      memmove(v14, v15, 16 * v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, 16 * v9);
  }

  return v11;
}

char *sub_1BA067AA4(char *result, int64_t a2, char a3, char *a4)
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
    sub_1B9F1BFA8(0, &qword_1EDC5DBD8, MEMORY[0x1E69E6530], MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

void *sub_1BA067BC0(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1BA069B20(0, &unk_1EDC6B420, &qword_1EDC6B688, MEMORY[0x1E69E62F8]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1BA069708(0, &qword_1EDC6B688, &qword_1EDC6E1B0, MEMORY[0x1E69A3348], MEMORY[0x1E69E62F8]);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1BA067D2C(char *result, int64_t a2, char a3, char *a4)
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
    sub_1B9F1BFA8(0, &qword_1EBBEAC90, &type metadata for ConfirmDetailsSection.Row, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 80);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[80 * v8])
    {
      memmove(v12, v13, 80 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1BA067E64(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1B9F25CF4(0, &qword_1EBBEA628, sub_1BA025410, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1BA025410();
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_1BA067FB0(size_t result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  sub_1BA0698C8(0, &qword_1EBBEAC50, &qword_1EBBEAC58, sub_1BA0699FC);
  sub_1BA069998(0, &qword_1EBBEAC58, sub_1BA0699FC);
  v11 = *(*(v10 - 8) + 72);
  v12 = (*(*(v10 - 8) + 80) + 32) & ~*(*(v10 - 8) + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  sub_1BA069998(0, &qword_1EBBEAC58, sub_1BA0699FC);
  v16 = *(v15 - 8);
  if (v5)
  {
    if (v13 < a4 || (v17 = (*(v16 + 80) + 32) & ~*(v16 + 80), v13 + v17 >= a4 + v17 + *(v16 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_1BA0681CC(char *result, int64_t a2, char a3, char *a4)
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
    sub_1B9F1BFA8(0, &qword_1EBBEAC40, MEMORY[0x1E69A3C50], MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

void *sub_1BA0682D8(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1BA06986C(0, &qword_1EBBEAC18, &qword_1EBBEAAA8, MEMORY[0x1E69E6158], MEMORY[0x1E69E6EE8]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1B9F1BFA8(0, &qword_1EBBEAAA8, MEMORY[0x1E69E6158], MEMORY[0x1E69E6EE8]);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1BA068454(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1BA069774();
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 72);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[9 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 72 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1BA069C00(0, &qword_1EBBEAAE0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1BA0685B0(char *result, int64_t a2, char a3, char *a4)
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
    sub_1B9F1BFA8(0, &qword_1EDC5DCA8, MEMORY[0x1E69E7DE0], MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

void *sub_1BA0686E8(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1BA06986C(0, &unk_1EDC5DC10, &qword_1EDC6E410, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1B9F1BFA8(0, &qword_1EDC6E410, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1BA068854(char *result, int64_t a2, char a3, char *a4)
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
    sub_1B9FE91CC();
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

void *sub_1BA068954(void *result, int64_t a2, char a3, void *a4, unint64_t *a5, unint64_t *a6, uint64_t a7)
{
  v10 = result;
  if (a3)
  {
    v11 = a4[3];
    v12 = v11 >> 1;
    if ((v11 >> 1) < a2)
    {
      if (v12 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v12 = v11 & 0xFFFFFFFFFFFFFFFELL;
      if ((v11 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v12 = a2;
      }
    }
  }

  else
  {
    v12 = a2;
  }

  v13 = a4[2];
  if (v12 <= v13)
  {
    v14 = a4[2];
  }

  else
  {
    v14 = v12;
  }

  if (v14)
  {
    sub_1BA06986C(0, a5, a6, a7, MEMORY[0x1E69E62F8]);
    v15 = swift_allocObject();
    v16 = _swift_stdlib_malloc_size(v15);
    v17 = v16 - 32;
    if (v16 < 32)
    {
      v17 = v16 - 25;
    }

    v15[2] = v13;
    v15[3] = 2 * (v17 >> 3);
  }

  else
  {
    v15 = MEMORY[0x1E69E7CC0];
  }

  if (v10)
  {
    if (v15 != a4 || v15 + 4 >= &a4[v13 + 4])
    {
      memmove(v15 + 4, a4 + 4, 8 * v13);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1B9F1BFA8(0, a6, a7, MEMORY[0x1E69E62F8]);
    swift_arrayInitWithCopy();
  }

  return v15;
}

char *sub_1BA068ABC(char *result, int64_t a2, char a3, char *a4)
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
    sub_1B9F1BFA8(0, &qword_1EBBEAC10, MEMORY[0x1E69E6370], MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

size_t sub_1BA068BC8(size_t result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  sub_1BA0697F0();
  sub_1B9F117BC(0, &qword_1EBBE98D8, MEMORY[0x1E69E6180], type metadata accessor for DataSourceSectionTransaction);
  v11 = *(*(v10 - 8) + 72);
  v12 = (*(*(v10 - 8) + 80) + 32) & ~*(*(v10 - 8) + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  sub_1B9F117BC(0, &qword_1EBBE98D8, MEMORY[0x1E69E6180], type metadata accessor for DataSourceSectionTransaction);
  v16 = *(v15 - 8);
  if (v5)
  {
    if (v13 < a4 || (v17 = (*(v16 + 80) + 32) & ~*(v16 + 80), v13 + v17 >= a4 + v17 + *(v16 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_1BA068DDC(char *result, int64_t a2, char a3, char *a4)
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
    sub_1B9F25CF4(0, &qword_1EDC5DB90, type metadata accessor for CGRect, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 32 * v8);
  }

  return v10;
}

void *sub_1BA068F20(void *result, int64_t a2, char a3, void *a4, unint64_t *a5, unint64_t *a6, uint64_t a7)
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    sub_1BA069708(0, a5, a6, a7, MEMORY[0x1E69E6F90]);
    v14 = swift_allocObject();
    v15 = _swift_stdlib_malloc_size(v14);
    v14[2] = v12;
    v14[3] = 2 * ((v15 - 32) / 40);
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC0];
  }

  if (v9)
  {
    if (v14 != a4 || v14 + 4 >= &a4[5 * v12 + 4])
    {
      memmove(v14 + 4, a4 + 4, 40 * v12);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1B9F0D9AC(0, a6);
    swift_arrayInitWithCopy();
  }

  return v14;
}

size_t sub_1BA06908C(size_t result, int64_t a2, char a3, void *a4, unint64_t *a5, uint64_t (*a6)(uint64_t), uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  sub_1B9F25CF4(0, a5, a6, MEMORY[0x1E69E6F90]);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

char *sub_1BA069280(char *result, int64_t a2, char a3, char *a4)
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
    sub_1B9F1BFA8(0, &qword_1EBBEAC00, &type metadata for FeatureRequirementEvaluation, MEMORY[0x1E69E6F90]);
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

void *sub_1BA0693A4(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1BA069B8C();
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1BA069C00(0, &qword_1EBBEA6A0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1BA069510(void *result, int64_t a2, char a3, void *a4, unint64_t *a5, uint64_t (*a6)(uint64_t), void (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    sub_1B9F25CF4(0, a5, a6, MEMORY[0x1E69E6F90]);
    v14 = swift_allocObject();
    v15 = _swift_stdlib_malloc_size(v14);
    v16 = v15 - 32;
    if (v15 < 32)
    {
      v16 = v15 - 17;
    }

    v14[2] = v12;
    v14[3] = 2 * (v16 >> 4);
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC0];
  }

  if (v9)
  {
    if (v14 != a4 || v14 + 4 >= &a4[2 * v12 + 4])
    {
      memmove(v14 + 4, a4 + 4, 16 * v12);
    }

    a4[2] = 0;
  }

  else
  {
    a7(0);
    swift_arrayInitWithCopy();
  }

  return v14;
}

void sub_1BA069708(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_1B9F0D9AC(255, a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1BA069774()
{
  if (!qword_1EBBEA600)
  {
    sub_1BA069C00(255, &qword_1EBBEAAE0);
    v0 = sub_1BA4A82E8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBBEA600);
    }
  }
}

void sub_1BA0697F0()
{
  if (!qword_1EBBEAC08)
  {
    sub_1B9F117BC(255, &qword_1EBBE98D8, MEMORY[0x1E69E6180], type metadata accessor for DataSourceSectionTransaction);
    v0 = sub_1BA4A82E8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBBEAC08);
    }
  }
}

void sub_1BA06986C(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(void, uint64_t))
{
  if (!*a2)
  {
    sub_1B9F1BFA8(255, a3, a4, a5);
    v6 = sub_1BA4A82E8();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1BA0698C8(uint64_t a1, unint64_t *a2, unint64_t *a3, void (*a4)(uint64_t))
{
  if (!*a2)
  {
    sub_1BA069998(255, a3, a4);
    v5 = sub_1BA4A82E8();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1BA069920()
{
  if (!qword_1EDC5DBE0)
  {
    sub_1BA069C00(255, &qword_1EDC5E5C8);
    v0 = sub_1BA4A82E8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC5DBE0);
    }
  }
}

void sub_1BA069998(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

void sub_1BA0699FC()
{
  if (!qword_1EBBEAC60)
  {
    v0 = sub_1BA4A4778();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBBEAC60);
    }
  }
}

void sub_1BA069A54()
{
  if (!qword_1EBBEAC68)
  {
    sub_1BA069AC8(255, &qword_1EBBEAC70, &qword_1EBBEAC78);
    v0 = sub_1BA4A82E8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBBEAC68);
    }
  }
}

uint64_t sub_1BA069AC8(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    sub_1B9F0D9AC(255, a3);
    result = swift_getExistentialMetatypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

void sub_1BA069B20(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_1BA069708(255, a3, &qword_1EDC6E1B0, MEMORY[0x1E69A3348], a4);
    v5 = sub_1BA4A82E8();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1BA069B8C()
{
  if (!qword_1EBBEA698)
  {
    sub_1BA069C00(255, &qword_1EBBEA6A0);
    v0 = sub_1BA4A82E8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBBEA698);
    }
  }
}

void sub_1BA069C00(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v4)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t PDFVerticalSeparator.init(lineWidth:horizontalMargin:color:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  *a2 = a3;
  *(a2 + 8) = a4;
  *(a2 + 16) = result;
  return result;
}

double PDFVerticalSeparator.render(context:document:)(void *a1, uint64_t a2)
{
  v4 = *(v2 + 8);
  v28 = *v2;
  v5 = *(v2 + 16);
  v6 = [a1 CGContext];
  CGContextSaveGState(v6);
  v29.origin.x = PDFBuilder.Document.drawingContext.getter();
  x = v29.origin.x;
  y = v29.origin.y;
  width = v29.size.width;
  height = v29.size.height;
  v11 = v4 + CGRectGetMinX(v29);
  v30.origin.x = x;
  v30.origin.y = y;
  v30.size.width = width;
  v30.size.height = height;
  v12 = CGRectGetMinY(v30) + 0.0;
  v31.origin.x = x;
  v31.origin.y = y;
  v31.size.width = width;
  v31.size.height = height;
  v13 = CGRectGetWidth(v31) - v4;
  v32.origin.x = x;
  v32.origin.y = y;
  v32.size.width = width;
  v32.size.height = height;
  v14 = CGRectGetHeight(v32);
  *(a2 + 168) = v11;
  *(a2 + 176) = v12;
  *(a2 + 184) = v13;
  *(a2 + 192) = v14;
  *(a2 + 200) = 0;
  CGContextSetLineWidth(v6, v28);
  sub_1BA069EC4();
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1BA4B5460;
  v16 = *(a2 + 168);
  v33.origin.y = *(a2 + 176);
  v33.size.width = *(a2 + 184);
  v33.size.height = *(a2 + 192);
  *(v15 + 32) = v16;
  *(v15 + 40) = v33.origin.y;
  v33.origin.x = v16;
  MaxY = CGRectGetMaxY(v33);
  *(v15 + 48) = v16;
  *(v15 + 56) = MaxY;
  sub_1BA4A6F08();

  CGContextSetStrokeColorWithColor(v6, v5);
  CGContextStrokePath(v6);
  CGContextRestoreGState(v6);
  v18 = v28 + v4;
  v19 = *(a2 + 168);
  v20 = *(a2 + 176);
  v21 = *(a2 + 184);
  v22 = *(a2 + 192);
  v34.origin.x = v19;
  v34.origin.y = v20;
  v34.size.width = v21;
  v34.size.height = v22;
  v23 = CGRectGetMinX(v34) + 0.0;
  v35.origin.x = v19;
  v35.origin.y = v20;
  v35.size.width = v21;
  v35.size.height = v22;
  v24 = v18 + CGRectGetMinY(v35);
  v36.origin.x = v19;
  v36.origin.y = v20;
  v36.size.width = v21;
  v36.size.height = v22;
  v25 = CGRectGetWidth(v36);
  v37.origin.x = v19;
  v37.origin.y = v20;
  v37.size.width = v21;
  v37.size.height = v22;
  v26 = CGRectGetHeight(v37);

  result = v26 - v18;
  *(a2 + 168) = v23;
  *(a2 + 176) = v24;
  *(a2 + 184) = v25;
  *(a2 + 192) = v26 - v18;
  *(a2 + 200) = 0;
  return result;
}

void sub_1BA069EC4()
{
  if (!qword_1EDC5DB80)
  {
    type metadata accessor for CGPoint(255);
    v0 = sub_1BA4A82E8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC5DB80);
    }
  }
}

uint64_t DeviceSourcesDataSource.__allocating_init(healthStore:)(void *a1)
{
  v11[3] = &type metadata for HealthStoreDeviceProvider;
  v11[4] = &off_1F38030B0;
  v11[0] = a1;
  type metadata accessor for DeviceSourcesDataSource();
  v2 = swift_allocObject();
  v3 = __swift_mutable_project_boxed_opaque_existential_1(v11, &type metadata for HealthStoreDeviceProvider);
  v4 = MEMORY[0x1EEE9AC00](v3);
  v6 = (&v11[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v7 + 16))(v6, v4);
  v8 = sub_1BA06D4C4(a1, *v6, v2);
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v8;
}

uint64_t type metadata accessor for DeviceSourcesDataSource()
{
  result = qword_1EBBEACB0;
  if (!qword_1EBBEACB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *sub_1BA06A060(uint64_t a1, void *a2)
{
  v3 = type metadata accessor for ListLayoutConfiguration();
  MEMORY[0x1EEE9AC00](v3);
  v6 = (&v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_1EBBE8850 != -1)
  {
    v10 = v4;
    swift_once();
    v4 = v10;
  }

  v7 = __swift_project_value_buffer(v4, qword_1EBBF0B98);
  sub_1B9F37E38(v7, v6);
  v6[6] = 0x4034000000000000;
  v6[7] = 0;
  v6[8] = 0;
  v6[9] = 0;
  v8 = ListLayoutConfiguration.layout(for:)(a2);
  sub_1BA047354(v6);
  return v8;
}

uint64_t sub_1BA06A148(void *a1)
{
  v3 = *v1;
  v4 = sub_1BA4A3EA8();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [a1 sources];
  if (v9)
  {
    v10 = v9;
    v11 = [v9 orderedDeviceSources];
    sub_1B9F0ADF8(0, &qword_1EBBE99E8);
    v12 = sub_1BA4A6B08();

    sub_1BA06A418(v12);
  }

  else
  {
    _s18HealthExperienceUI0A44ChecklistStagedFeatureStatusFeedItemProviderPAAE6logger2os6LoggerVvg_0();
    v14 = sub_1BA4A3E88();
    v15 = sub_1BA4A6FA8();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v21[0] = v17;
      v21[1] = v3;
      *v16 = 136446210;
      swift_getMetatypeMetadata();
      v18 = sub_1BA4A6808();
      v20 = sub_1B9F0B82C(v18, v19, v21);

      *(v16 + 4) = v20;
      _os_log_impl(&dword_1B9F07000, v14, v15, "[%{public}s] App data sources did not get fetched", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v17);
      MEMORY[0x1BFAF43A0](v17, -1, -1);
      MEMORY[0x1BFAF43A0](v16, -1, -1);
    }

    return (*(v5 + 8))(v8, v4);
  }
}

uint64_t sub_1BA06A440(uint64_t a1, unint64_t a2)
{
  v3 = *(a1 + OBJC_IVAR____TtC18HealthExperienceUI23DeviceSourcesDataSource_devices);

  sub_1BA06A870(a2, v3);
}

uint64_t sub_1BA06A4A0()
{
  v1 = *__swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC18HealthExperienceUI23DeviceSourcesDataSource_deviceProvider), *(v0 + OBJC_IVAR____TtC18HealthExperienceUI23DeviceSourcesDataSource_deviceProvider + 24));

  sub_1BA06D908(v1, v0);
}

uint64_t sub_1BA06A524(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18 = a4;
  v7 = sub_1BA4A6478();
  v20 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1BA4A64C8();
  v10 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F0ADF8(0, &qword_1EDC6B5A0);
  v13 = sub_1BA4A7308();
  v14 = swift_allocObject();
  *(v14 + 16) = v4;
  *(v14 + 24) = a1;
  aBlock[4] = a3;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B9F0B040;
  aBlock[3] = v18;
  v15 = _Block_copy(aBlock);

  sub_1BA4A64A8();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1B9F0AE40(&qword_1EDC5E8E0, MEMORY[0x1E69E7F60]);
  sub_1B9F3F378();
  sub_1B9F0AE40(&qword_1EDC5E6A0, sub_1B9F3F378);
  sub_1BA4A7C38();
  MEMORY[0x1BFAF1D50](0, v12, v9, v15);
  _Block_release(v15);

  (*(v20 + 8))(v9, v7);
  return (*(v10 + 8))(v12, v19);
}

uint64_t sub_1BA06A814(uint64_t a1, uint64_t a2)
{

  sub_1BA06A870(v3, a2);
}

uint64_t sub_1BA06A870(unint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1BA4A1798();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1BA4A64F8();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = (&v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1B9F0ADF8(0, &qword_1EDC6B5A0);
  *v13 = sub_1BA4A7308();
  (*(v11 + 104))(v13, *MEMORY[0x1E69E8020], v10);
  v14 = sub_1BA4A6528();
  (*(v11 + 8))(v13, v10);
  if (v14)
  {
    v15 = OBJC_IVAR____TtC18HealthExperienceUI23DeviceSourcesDataSource_sources;
    *(v3 + OBJC_IVAR____TtC18HealthExperienceUI23DeviceSourcesDataSource_sources) = a1;

    *(v3 + OBJC_IVAR____TtC18HealthExperienceUI23DeviceSourcesDataSource_devices) = a2;

    a1 = *(v3 + v15);
    if (!a1)
    {
    }

    if (!a2)
    {
      return result;
    }

    if (!(a1 >> 62))
    {
      if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_6:

LABEL_12:
        sub_1BA06AD78(a1, a2);
        v18 = v17;

        v35 = v18;

        sub_1BA06C4D0(&v35);

        v19 = sub_1B9FE598C(v35);

        v20 = sub_1B9FE4F98(v19);

        sub_1BA0EB668(0, v20, 1);
      }

      goto LABEL_10;
    }
  }

  else
  {
    __break(1u);
  }

  if (sub_1BA4A7CC8())
  {
    goto LABEL_6;
  }

LABEL_10:
  if ((a2 & 0xC000000000000001) != 0)
  {

    if (sub_1BA4A7CC8())
    {
      goto LABEL_12;
    }
  }

  else
  {
    v21 = *(a2 + 16);

    if (v21)
    {
      goto LABEL_12;
    }
  }

  sub_1B9FF6758();
  inited = swift_initStackObject();
  v34 = xmmword_1BA4B5480;
  *(inited + 16) = xmmword_1BA4B5480;
  sub_1B9F0CF6C(0, &qword_1EDC5DCA0, &qword_1EDC6AD50, MEMORY[0x1E69A3310], MEMORY[0x1E69E6F90]);
  v23 = swift_allocObject();
  *(v23 + 16) = v34;
  if (qword_1EBBE8278 != -1)
  {
    swift_once();
  }

  v24 = unk_1EBC093B0;
  *&v34 = qword_1EBC093A8;
  v25 = type metadata accessor for EmptyIconSourcesItem();
  v26 = swift_allocObject();
  *(v26 + 16) = 0;
  *(v26 + 24) = 0;
  v27 = objc_allocWithZone(MEMORY[0x1E69DCAB8]);

  v28 = [v27 init];
  *(v26 + 40) = v24;
  *(v26 + 48) = v28;
  *(v26 + 32) = v34;
  *(v26 + 56) = 1;
  *(v23 + 56) = v25;
  *(v23 + 64) = sub_1B9F0AE40(&qword_1EBBEA740, type metadata accessor for EmptyIconSourcesItem);
  *(v23 + 32) = v26;
  sub_1BA4A1788();
  v29 = sub_1BA4A1748();
  v31 = v30;
  (*(v7 + 8))(v9, v6);
  sub_1B9F1C5F0(MEMORY[0x1E69E7CC0]);

  v33 = Array<A>.identifierToIndexDict()(v32);

  *(inited + 32) = 0;
  *(inited + 40) = 0;
  *(inited + 48) = v23;
  *(inited + 56) = v33;
  *(inited + 64) = v29;
  *(inited + 72) = v31;
  sub_1BA0E7F10(inited, 1);
  swift_setDeallocating();
  return sub_1B9FF7224(inited + 32);
}

void sub_1BA06AD78(unint64_t a1, uint64_t a2)
{
  v3 = v2;
  v41[0] = MEMORY[0x1E69E7CD0];
  v40 = MEMORY[0x1E69E7CC0];

  sub_1BA06D804(a1, v3, v41, &v40);
  v36 = v3;

  if ((a2 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_1BA4A7C88();
    sub_1B9F0ADF8(0, &qword_1EBBE9E48);
    sub_1BA06DC94();
    sub_1BA4A6DA8();
    a2 = v41[1];
    v6 = v41[2];
    v7 = v41[3];
    v8 = v41[4];
    v9 = v41[5];
  }

  else
  {
    v10 = -1 << *(a2 + 32);
    v6 = a2 + 56;
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

    v9 = v12 & *(a2 + 56);

    v8 = 0;
  }

  v13 = (v7 + 64) >> 6;
  v35 = a2;
  while (a2 < 0)
  {
    if (!sub_1BA4A7CF8() || (sub_1B9F0ADF8(0, &qword_1EBBE9E48), swift_dynamicCast(), countAndFlagsBits = v39.uniqueIdentifier._countAndFlagsBits, v16 = v8, v17 = v9, !v39.uniqueIdentifier._countAndFlagsBits))
    {
LABEL_29:
      sub_1B9F52E48();

      return;
    }

LABEL_18:
    sub_1B9F0ADF8(0, &qword_1EDC6E350);
    v19 = [objc_opt_self() localDevice];
    v20 = sub_1BA4A7798();

    if ((v20 & 1) != 0 || [countAndFlagsBits _isAppleManufacturer] && objc_msgSend(countAndFlagsBits, sel__isAppleModel) && objc_msgSend(countAndFlagsBits, sel__isAppleHardwareVersion))
    {

      v8 = v16;
      v9 = v17;
    }

    else
    {
      v38 = v17;
      v21 = *(v36 + OBJC_IVAR____TtC18HealthExperienceUI23DeviceSourcesDataSource_healthStore);
      v22 = countAndFlagsBits;
      DeviceSourcesItem.init(device:healthStore:)(&v39, v22, v21);
      v23 = v39.uniqueIdentifier._countAndFlagsBits;
      object = v39.uniqueIdentifier._object;
      v25 = v39.name._object;
      v37 = v39.name._countAndFlagsBits;
      isa = v39.device.super.isa;
      v27 = v39.healthStore.super.isa;
      v28 = v41[0];

      LOBYTE(v28) = sub_1BA3D30B0(v23, object, v28);

      if (v28)
      {

        v8 = v16;
        v9 = v38;
        a2 = v35;
      }

      else
      {
        v33 = v27;

        sub_1BA0E1C3C(&v39.uniqueIdentifier._countAndFlagsBits, v23, object);

        v29 = v40;
        v34 = v25;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v29 = sub_1BA27FC24(0, v29[2] + 1, 1, v29);
        }

        a2 = v35;
        v31 = v29[2];
        v30 = v29[3];
        if (v31 >= v30 >> 1)
        {
          v29 = sub_1BA27FC24((v30 > 1), v31 + 1, 1, v29);
        }

        v39.name._object = &type metadata for DeviceSourcesItem;
        v39.device.super.isa = sub_1BA06DCFC();
        v32 = swift_allocObject();
        v39.uniqueIdentifier._countAndFlagsBits = v32;
        v32[2] = v23;
        v32[3] = object;
        v32[4] = v37;
        v32[5] = v34;
        v32[6] = isa;
        v32[7] = v33;
        v29[2] = v31 + 1;
        sub_1B9F1134C(&v39.uniqueIdentifier._countAndFlagsBits, &v29[5 * v31 + 4]);
        v40 = v29;
        v8 = v16;
        v9 = v38;
      }
    }
  }

  v14 = v8;
  v15 = v9;
  v16 = v8;
  if (v9)
  {
LABEL_14:
    v17 = (v15 - 1) & v15;
    countAndFlagsBits = *(*(a2 + 48) + ((v16 << 9) | (8 * __clz(__rbit64(v15)))));
    if (!countAndFlagsBits)
    {
      goto LABEL_29;
    }

    goto LABEL_18;
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
      goto LABEL_29;
    }

    v15 = *(v6 + 8 * v16);
    ++v14;
    if (v15)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
}

void sub_1BA06B1F0(id *a1, uint64_t a2, uint64_t *a3, void **a4)
{
  v7 = *a1;
  v8 = [*a1 source];
  v9 = [v8 _isHiddenSource];

  if ((v9 & 1) == 0)
  {
    v10 = *(a2 + OBJC_IVAR____TtC18HealthExperienceUI23DeviceSourcesDataSource_healthStore);
    LOBYTE(v24) = 2;
    v11 = type metadata accessor for AppSourcesItem();
    swift_allocObject();
    v12 = v7;
    v13 = v10;
    v14 = sub_1BA0B115C(v12, v13, &v24);

    v15 = *a3;
    v16 = *(v14 + 16);
    v17 = *(v14 + 24);

    LOBYTE(v13) = sub_1BA3D30B0(v16, v17, v15);

    if (v13)
    {
    }

    else
    {
      v19 = *(v14 + 16);
      v18 = *(v14 + 24);

      sub_1BA0E1C3C(&v24, v19, v18);

      v20 = *a4;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *a4 = v20;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v20 = sub_1BA27FC24(0, v20[2] + 1, 1, v20);
        *a4 = v20;
      }

      v23 = v20[2];
      v22 = v20[3];
      if (v23 >= v22 >> 1)
      {
        v20 = sub_1BA27FC24((v22 > 1), v23 + 1, 1, v20);
        *a4 = v20;
      }

      v25 = v11;
      v26 = sub_1B9F0AE40(&qword_1EBBEACC8, type metadata accessor for AppSourcesItem);
      *&v24 = v14;
      v20[2] = v23 + 1;
      sub_1B9F1134C(&v24, &v20[5 * v23 + 4]);
    }
  }
}

uint64_t sub_1BA06B470()
{

  return __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC18HealthExperienceUI23DeviceSourcesDataSource_deviceProvider);
}

uint64_t DeviceSourcesDataSource.deinit()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_snapshot;
  sub_1B9F12538();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC18HealthExperienceUI23DeviceSourcesDataSource_deviceProvider);
  return v0;
}

uint64_t DeviceSourcesDataSource.__deallocating_deinit()
{
  DeviceSourcesDataSource.deinit();

  return swift_deallocClassInstance();
}

void sub_1BA06B63C(unint64_t a1, void *a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v63 = a5;
  v64 = a6;
  v10 = sub_1BA4A1798();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v61 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1BA4A3EA8();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v61 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v61 - v19;
  if (a2)
  {
    v21 = v18;
    v62 = a3;
    sub_1BA4A3D88();
    v22 = a2;
    v23 = sub_1BA4A3E88();
    v24 = sub_1BA4A6FA8();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v61 = a4;
      v27 = v26;
      v68 = a2;
      aBlock[0] = v26;
      *v25 = 136446210;
      v28 = a2;
      sub_1B9F0CF6C(0, &qword_1EDC6B3E0, &qword_1EDC6E310, MEMORY[0x1E69E7280], MEMORY[0x1E69E6720]);
      v29 = sub_1BA4A6808();
      v31 = sub_1B9F0B82C(v29, v30, aBlock);

      *(v25 + 4) = v31;
      v32 = v64;
      _os_log_impl(&dword_1B9F07000, v23, v24, "Unable to retrieve Bluetooth devices, %{public}s", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v27);
      v33 = v27;
      a4 = v61;
      MEMORY[0x1BFAF43A0](v33, -1, -1);
      MEMORY[0x1BFAF43A0](v25, -1, -1);

      (*(v21 + 8))(v20, v14);
      a3 = v62;
LABEL_17:
      v50 = v63;
LABEL_23:
      v58 = swift_allocObject();
      v58[2] = a3;
      v58[3] = a4;
      v58[4] = v50;
      v58[5] = v32;
      aBlock[4] = sub_1BA06DD60;
      aBlock[5] = v58;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1BA06C40C;
      aBlock[3] = &block_descriptor_46_0;
      v59 = _Block_copy(aBlock);

      v60 = a4;

      [v60 healthPeripheralsWithFilter:1 handler:v59];
      _Block_release(v59);
      return;
    }

    (*(v21 + 8))(v20, v14);
    a3 = v62;
LABEL_22:
    v50 = v63;
    v32 = v64;
    goto LABEL_23;
  }

  v67 = v10;
  if (!a1)
  {
    goto LABEL_19;
  }

  v34 = v11;
  if (!(a1 >> 62))
  {
    v35 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v35)
    {
      goto LABEL_7;
    }

LABEL_19:
    v53 = v18;
    sub_1BA4A3D88();
    v54 = sub_1BA4A3E88();
    v55 = sub_1BA4A6FC8();
    if (os_log_type_enabled(v54, v55))
    {
      v56 = v14;
      v57 = swift_slowAlloc();
      *v57 = 0;
      _os_log_impl(&dword_1B9F07000, v54, v55, "BTLE services not returned", v57, 2u);
      MEMORY[0x1BFAF43A0](v57, -1, -1);

      (*(v53 + 8))(v16, v56);
    }

    else
    {

      (*(v53 + 8))(v16, v14);
    }

    goto LABEL_22;
  }

  v51 = v18;
  v52 = sub_1BA4A7CC8();
  v18 = v51;
  v35 = v52;
  if (!v52)
  {
    goto LABEL_19;
  }

LABEL_7:
  v61 = a4;
  v62 = a3;
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1B9F1C360(0, v35 & ~(v35 >> 63), 0);
  if ((v35 & 0x8000000000000000) == 0)
  {
    v36 = 0;
    v37 = aBlock[0];
    v38 = a1;
    v65 = a1 & 0xC000000000000001;
    v66 = a1;
    v39 = (v34 + 8);
    do
    {
      v40 = v35;
      if (v65)
      {
        v41 = MEMORY[0x1BFAF2860](v36, v38);
      }

      else
      {
        v41 = *(v38 + 8 * v36 + 32);
      }

      v42 = v41;
      v43 = [v41 identifier];
      sub_1BA4A1778();

      v44 = sub_1BA4A1748();
      v46 = v45;

      (*v39)(v13, v67);
      aBlock[0] = v37;
      v48 = *(v37 + 16);
      v47 = *(v37 + 24);
      if (v48 >= v47 >> 1)
      {
        sub_1B9F1C360((v47 > 1), v48 + 1, 1);
        v37 = aBlock[0];
      }

      ++v36;
      *(v37 + 16) = v48 + 1;
      v49 = v37 + 16 * v48;
      *(v49 + 32) = v44;
      *(v49 + 40) = v46;
      v35 = v40;
      v38 = v66;
    }

    while (v40 != v36);
    a3 = v62;
    swift_beginAccess();
    sub_1B9FE271C(v37);
    swift_endAccess();
    v32 = v64;
    a4 = v61;
    goto LABEL_17;
  }

  __break(1u);
}

void sub_1BA06BC20(unint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v68 = a4;
  v11 = sub_1BA4A1798();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v65 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1BA4A3EA8();
  v16 = *(v15 - 8);
  v18.n128_f64[0] = MEMORY[0x1EEE9AC00](v15);
  v20 = &v65 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = a5;
  if (a2)
  {
    v21 = v17;
    v66 = a3;
    v67 = a6;
    sub_1BA4A3D88();
    v22 = a2;
    v23 = sub_1BA4A3E88();
    v24 = sub_1BA4A6FA8();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      aBlock[0] = v26;
      *v25 = 136446210;
      aBlock[6] = a2;
      v27 = a2;
      sub_1B9F0CF6C(0, &qword_1EDC6B3E0, &qword_1EDC6E310, MEMORY[0x1E69E7280], MEMORY[0x1E69E6720]);
      v28 = sub_1BA4A6808();
      v30 = sub_1B9F0B82C(v28, v29, aBlock);

      *(v25 + 4) = v30;
      _os_log_impl(&dword_1B9F07000, v23, v24, "BTLE services not returned %{public}s", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v26);
      MEMORY[0x1BFAF43A0](v26, -1, -1);
      MEMORY[0x1BFAF43A0](v25, -1, -1);
    }

    (*(v16 + 8))(v20, v21);
    a6 = v67;
    goto LABEL_44;
  }

  v72 = v11;
  v73 = v14;
  v70 = v12;
  if (a1)
  {
    v66 = a3;
    aBlock[0] = MEMORY[0x1E69E7CC0];
    v31 = a1 & 0xFFFFFFFFFFFFFF8;
    if (a1 >> 62)
    {
      goto LABEL_40;
    }

    for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1BA4A7CC8())
    {
      v33 = MEMORY[0x1E69E7CC0];
      v67 = a6;
      if (i)
      {
        v34 = 0;
        a6 = a1 & 0xC000000000000001;
        do
        {
          if (a6)
          {
            v35 = MEMORY[0x1BFAF2860](v34, a1, v18);
          }

          else
          {
            if (v34 >= *(v31 + 16))
            {
              goto LABEL_37;
            }

            v35 = *(a1 + 8 * v34 + 32);
          }

          v36 = v35;
          v37 = v34 + 1;
          if (__OFADD__(v34, 1))
          {
            __break(1u);
LABEL_37:
            __break(1u);
            goto LABEL_38;
          }

          if ([v35 type])
          {
          }

          else
          {
            sub_1BA4A7ED8();
            sub_1BA4A7F18();
            sub_1BA4A7F28();
            sub_1BA4A7EE8();
          }

          ++v34;
        }

        while (v37 != i);
        v38 = aBlock[0];
        a6 = v67;
        v33 = MEMORY[0x1E69E7CC0];
        v39 = v70;
        if ((aBlock[0] & 0x8000000000000000) == 0)
        {
          goto LABEL_22;
        }
      }

      else
      {
        v38 = MEMORY[0x1E69E7CC0];
        v39 = v70;
        if ((MEMORY[0x1E69E7CC0] & 0x8000000000000000) == 0)
        {
LABEL_22:
          if ((v38 & 0x4000000000000000) == 0)
          {
            v31 = *(v38 + 16);
            if (!v31)
            {
              goto LABEL_42;
            }

            goto LABEL_24;
          }
        }
      }

      v56 = v38;
      v31 = sub_1BA4A7CC8();
      v38 = v56;
      if (!v31)
      {
LABEL_42:

        v42 = MEMORY[0x1E69E7CC0];
LABEL_43:
        swift_beginAccess();
        sub_1B9FE271C(v42);
        swift_endAccess();
        break;
      }

LABEL_24:
      v40 = v38;
      aBlock[0] = v33;
      sub_1B9F1C360(0, v31 & ~(v31 >> 63), 0);
      if (v31 < 0)
      {
        __break(1u);
LABEL_46:
        __break(1u);
        return;
      }

      v41 = 0;
      v42 = aBlock[0];
      v43 = v40;
      v70 = v40;
      v71 = v40 & 0xC000000000000001;
      v44 = (v39 + 8);
      while (1)
      {
        a6 = v41 + 1;
        if (__OFADD__(v41, 1))
        {
          break;
        }

        if (v71)
        {
          v45 = MEMORY[0x1BFAF2860](v41, v43);
        }

        else
        {
          if (v41 >= *(v43 + 16))
          {
            goto LABEL_39;
          }

          v45 = *(v43 + 8 * v41 + 32);
        }

        v46 = v45;
        v47 = [v45 identifier];
        if (!v47)
        {
          goto LABEL_46;
        }

        v48 = v47;
        sub_1BA4A1778();

        v49 = sub_1BA4A1748();
        v50 = v73;
        v51 = v49;
        v53 = v52;

        (*v44)(v50, v72);
        aBlock[0] = v42;
        a1 = *(v42 + 16);
        v54 = *(v42 + 24);
        if (a1 >= v54 >> 1)
        {
          sub_1B9F1C360((v54 > 1), a1 + 1, 1);
          v42 = aBlock[0];
        }

        *(v42 + 16) = a1 + 1;
        v55 = v42 + 16 * a1;
        *(v55 + 32) = v51;
        *(v55 + 40) = v53;
        ++v41;
        v43 = v70;
        if (a6 == v31)
        {

          a6 = v67;
          goto LABEL_43;
        }
      }

LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      ;
    }
  }

LABEL_44:
  v57 = objc_allocWithZone(MEMORY[0x1E696C0E0]);
  v58 = [v57 initWithHealthStore_];
  swift_beginAccess();

  sub_1B9F12EB8(v59);

  v60 = sub_1BA4A6D68();

  v61 = *MEMORY[0x1E696B768];
  v62 = swift_allocObject();
  *(v62 + 16) = v69;
  *(v62 + 24) = a6;
  aBlock[4] = sub_1BA06DD6C;
  aBlock[5] = v62;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BA06C35C;
  aBlock[3] = &block_descriptor_52;
  v63 = _Block_copy(aBlock);
  v64 = v61;

  [v58 fetchGymkitAndBluetoothDevicesMatchingValues:v60 forProperty:v64 completion:v63];
  _Block_release(v63);
}

uint64_t sub_1BA06C2B0(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  if (a1)
  {
    v4 = a1;
  }

  else if (MEMORY[0x1E69E7CC0] >> 62)
  {
    if (sub_1BA4A7CC8())
    {
      sub_1B9FF63A4(MEMORY[0x1E69E7CC0]);
      v4 = v6;
    }

    else
    {
      v4 = MEMORY[0x1E69E7CD0];
    }
  }

  else
  {
    v4 = MEMORY[0x1E69E7CD0];
  }

  a3(v4);
}

uint64_t sub_1BA06C35C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {
    sub_1B9F0ADF8(0, &qword_1EBBE9E48);
    sub_1BA06DC94();
    v4 = sub_1BA4A6D78();
  }

  v6 = a3;
  v5(v4, a3);
}

uint64_t sub_1BA06C434(uint64_t a1, uint64_t a2, void *a3, unint64_t *a4)
{
  v5 = a2;
  v6 = *(a1 + 32);
  if (a2)
  {
    sub_1B9F0ADF8(0, a4);
    v5 = sub_1BA4A6B08();
  }

  v7 = a3;
  v6(v5, a3);
}

uint64_t sub_1BA06C4D0(void **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1BA442EE4(v2);
  }

  v3 = v2[2];
  v5[0] = (v2 + 4);
  v5[1] = v3;
  result = sub_1BA06C53C(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_1BA06C53C(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1BA4A82B8();
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
        sub_1B9F0D950(0, &qword_1EBBE9B10);
        v5 = sub_1BA4A6B98();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_1BA06C7F4(v7, v8, a1, v4);
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
    return sub_1BA06C648(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1BA06C648(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 40 * a3;
    v6 = result - a3;
LABEL_5:
    v23 = a3;
    v15 = v6;
    v16 = v5;
    while (1)
    {
      sub_1B9F0A534(v5, &v20);
      sub_1B9F0A534(v5 - 40, v17);
      v7 = v21;
      v8 = v22;
      __swift_project_boxed_opaque_existential_1(&v20, v21);
      (*(v8 + 16))(v7, v8);
      v10 = v18;
      v9 = v19;
      __swift_project_boxed_opaque_existential_1(v17, v18);
      (*(v9 + 16))(v10, v9);
      sub_1B9F252FC();
      v11 = sub_1BA4A7B88();

      __swift_destroy_boxed_opaque_existential_1(v17);
      result = __swift_destroy_boxed_opaque_existential_1(&v20);
      if ((v11 & 1) == 0)
      {
LABEL_4:
        a3 = v23 + 1;
        v5 = v16 + 40;
        v6 = v15 - 1;
        if (v23 + 1 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v4)
      {
        break;
      }

      sub_1B9F1134C(v5, &v20);
      v12 = *(v5 - 24);
      *v5 = *(v5 - 40);
      *(v5 + 16) = v12;
      *(v5 + 32) = *(v5 - 8);
      result = sub_1B9F1134C(&v20, v5 - 40);
      v5 -= 40;
      if (__CFADD__(v6++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1BA06C7F4(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3;
  v7 = result;
  v8 = a3[1];
  if (v8 < 1)
  {
    v10 = MEMORY[0x1E69E7CC0];
LABEL_90:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_1BA442D80(v10);
      v10 = result;
    }

    v124 = v10;
    v96 = *(v10 + 16);
    if (v96 >= 2)
    {
      while (1)
      {
        v97 = *v6;
        if (!*v6)
        {
          goto LABEL_126;
        }

        v6 = (v96 - 1);
        v98 = *(v10 + 16 * v96);
        v99 = v10;
        v100 = *(v10 + 16 * (v96 - 1) + 32);
        v10 = *(v10 + 16 * (v96 - 1) + 40);
        sub_1BA06D06C((v97 + 40 * v98), (v97 + 40 * v100), v97 + 40 * v10, v7);
        if (v5)
        {
        }

        if (v10 < v98)
        {
          goto LABEL_115;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v99 = sub_1BA442D80(v99);
        }

        if (v96 - 2 >= *(v99 + 2))
        {
          goto LABEL_116;
        }

        v101 = &v99[16 * v96];
        *v101 = v98;
        *(v101 + 1) = v10;
        v124 = v99;
        result = sub_1BA442CF4(v6);
        v10 = v124;
        v96 = *(v124 + 16);
        v6 = a3;
        if (v96 <= 1)
        {
        }
      }
    }
  }

  v9 = 0;
  v10 = MEMORY[0x1E69E7CC0];
  v104 = result;
  while (1)
  {
    if (v9 + 1 >= v8)
    {
      v20 = v9 + 1;
    }

    else
    {
      v115 = v8;
      v107 = v10;
      v11 = *v6;
      sub_1B9F0A534(*v6 + 40 * (v9 + 1), &v121);
      v12 = 40 * v9;
      v110 = v11 + 40 * v9;
      sub_1B9F0A534(v110, v118);
      v13 = v9;
      v15 = v122;
      v14 = v123;
      __swift_project_boxed_opaque_existential_1(&v121, v122);
      (*(v14 + 16))(v15, v14);
      v17 = v119;
      v16 = v120;
      __swift_project_boxed_opaque_existential_1(v118, v119);
      (*(v16 + 16))(v17, v16);
      sub_1B9F252FC();
      v113 = sub_1BA4A7B88();

      __swift_destroy_boxed_opaque_existential_1(v118);
      result = __swift_destroy_boxed_opaque_existential_1(&v121);
      v105 = v13;
      v18 = v13 + 2;
      v19 = v110 + 80;
      while (1)
      {
        v20 = v115;
        if (v115 == v18)
        {
          break;
        }

        sub_1B9F0A534(v19, &v121);
        sub_1B9F0A534(v19 - 40, v118);
        v22 = v122;
        v21 = v123;
        __swift_project_boxed_opaque_existential_1(&v121, v122);
        (*(v21 + 16))(v22, v21);
        v24 = v119;
        v23 = v120;
        __swift_project_boxed_opaque_existential_1(v118, v119);
        (*(v23 + 16))(v24, v23);
        v25 = sub_1BA4A7B88() & 1;

        __swift_destroy_boxed_opaque_existential_1(v118);
        result = __swift_destroy_boxed_opaque_existential_1(&v121);
        ++v18;
        v19 += 40;
        if ((v113 & 1) != v25)
        {
          v20 = v18 - 1;
          break;
        }
      }

      v10 = v107;
      v6 = a3;
      v7 = v104;
      v9 = v105;
      if (v113)
      {
        if (v20 < v105)
        {
          goto LABEL_119;
        }

        if (v105 < v20)
        {
          v26 = v20;
          v27 = 40 * v20 - 40;
          v116 = v20;
          v28 = v105;
          do
          {
            if (v28 != --v26)
            {
              v33 = *a3;
              if (!*a3)
              {
                goto LABEL_125;
              }

              v29 = v33 + v12;
              v30 = v33 + v27;
              sub_1B9F1134C((v33 + v12), &v121);
              v31 = *(v30 + 32);
              v32 = *(v30 + 16);
              *v29 = *v30;
              *(v29 + 16) = v32;
              *(v29 + 32) = v31;
              result = sub_1B9F1134C(&v121, v30);
            }

            ++v28;
            v27 -= 40;
            v12 += 40;
          }

          while (v28 < v26);
          v10 = v107;
          v7 = v104;
          v20 = v116;
        }
      }
    }

    v34 = v6[1];
    if (v20 < v34)
    {
      if (__OFSUB__(v20, v9))
      {
        goto LABEL_118;
      }

      if (v20 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v9 + a4 >= v34)
        {
          v35 = v6[1];
        }

        else
        {
          v35 = v9 + a4;
        }

        if (v35 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v20 != v35)
        {
          break;
        }
      }
    }

    v36 = v20;
    if (v20 < v9)
    {
      goto LABEL_117;
    }

LABEL_29:
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1BA27F470(0, *(v10 + 16) + 1, 1, v10);
      v10 = result;
    }

    v38 = *(v10 + 16);
    v37 = *(v10 + 24);
    v39 = v38 + 1;
    if (v38 >= v37 >> 1)
    {
      result = sub_1BA27F470((v37 > 1), v38 + 1, 1, v10);
      v10 = result;
    }

    *(v10 + 16) = v39;
    v40 = v10 + 16 * v38;
    *(v40 + 32) = v9;
    *(v40 + 40) = v36;
    v41 = *v7;
    if (!*v7)
    {
      goto LABEL_127;
    }

    v111 = v36;
    if (v38)
    {
      while (1)
      {
        v42 = v39 - 1;
        if (v39 >= 4)
        {
          break;
        }

        if (v39 == 3)
        {
          v43 = *(v10 + 32);
          v44 = *(v10 + 40);
          v53 = __OFSUB__(v44, v43);
          v45 = v44 - v43;
          v46 = v53;
LABEL_48:
          if (v46)
          {
            goto LABEL_106;
          }

          v59 = (v10 + 16 * v39);
          v61 = *v59;
          v60 = v59[1];
          v62 = __OFSUB__(v60, v61);
          v63 = v60 - v61;
          v64 = v62;
          if (v62)
          {
            goto LABEL_109;
          }

          v65 = (v10 + 32 + 16 * v42);
          v67 = *v65;
          v66 = v65[1];
          v53 = __OFSUB__(v66, v67);
          v68 = v66 - v67;
          if (v53)
          {
            goto LABEL_112;
          }

          if (__OFADD__(v63, v68))
          {
            goto LABEL_113;
          }

          if (v63 + v68 >= v45)
          {
            if (v45 < v68)
            {
              v42 = v39 - 2;
            }

            goto LABEL_69;
          }

          goto LABEL_62;
        }

        v69 = (v10 + 16 * v39);
        v71 = *v69;
        v70 = v69[1];
        v53 = __OFSUB__(v70, v71);
        v63 = v70 - v71;
        v64 = v53;
LABEL_62:
        if (v64)
        {
          goto LABEL_108;
        }

        v72 = v10 + 16 * v42;
        v74 = *(v72 + 32);
        v73 = *(v72 + 40);
        v53 = __OFSUB__(v73, v74);
        v75 = v73 - v74;
        if (v53)
        {
          goto LABEL_111;
        }

        if (v75 < v63)
        {
          goto LABEL_3;
        }

LABEL_69:
        v80 = v42 - 1;
        if (v42 - 1 >= v39)
        {
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
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
          goto LABEL_121;
        }

        if (!*v6)
        {
          goto LABEL_124;
        }

        v81 = *(v10 + 32 + 16 * v80);
        v82 = *(v10 + 32 + 16 * v42 + 8);
        sub_1BA06D06C((*v6 + 40 * v81), (*v6 + 40 * *(v10 + 32 + 16 * v42)), *v6 + 40 * v82, v41);
        if (v5)
        {
        }

        if (v82 < v81)
        {
          goto LABEL_102;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = sub_1BA442D80(v10);
        }

        if (v80 >= *(v10 + 16))
        {
          goto LABEL_103;
        }

        v83 = v10 + 16 * v80;
        *(v83 + 32) = v81;
        *(v83 + 40) = v82;
        v124 = v10;
        result = sub_1BA442CF4(v42);
        v10 = v124;
        v39 = *(v124 + 16);
        if (v39 <= 1)
        {
          goto LABEL_3;
        }
      }

      v47 = v10 + 32 + 16 * v39;
      v48 = *(v47 - 64);
      v49 = *(v47 - 56);
      v53 = __OFSUB__(v49, v48);
      v50 = v49 - v48;
      if (v53)
      {
        goto LABEL_104;
      }

      v52 = *(v47 - 48);
      v51 = *(v47 - 40);
      v53 = __OFSUB__(v51, v52);
      v45 = v51 - v52;
      v46 = v53;
      if (v53)
      {
        goto LABEL_105;
      }

      v54 = (v10 + 16 * v39);
      v56 = *v54;
      v55 = v54[1];
      v53 = __OFSUB__(v55, v56);
      v57 = v55 - v56;
      if (v53)
      {
        goto LABEL_107;
      }

      v53 = __OFADD__(v45, v57);
      v58 = v45 + v57;
      if (v53)
      {
        goto LABEL_110;
      }

      if (v58 >= v50)
      {
        v76 = (v10 + 32 + 16 * v42);
        v78 = *v76;
        v77 = v76[1];
        v53 = __OFSUB__(v77, v78);
        v79 = v77 - v78;
        if (v53)
        {
          goto LABEL_114;
        }

        if (v45 < v79)
        {
          v42 = v39 - 2;
        }

        goto LABEL_69;
      }

      goto LABEL_48;
    }

LABEL_3:
    v8 = v6[1];
    v9 = v111;
    if (v111 >= v8)
    {
      goto LABEL_90;
    }
  }

  v106 = v9;
  v108 = v10;
  v102 = v5;
  v84 = *v6;
  v85 = v84 + 40 * v20;
  v86 = v9 - v20;
  v112 = v35;
LABEL_81:
  v114 = v85;
  v117 = v20;
  v87 = v86;
  v88 = v85;
  while (1)
  {
    sub_1B9F0A534(v88, &v121);
    sub_1B9F0A534(v88 - 40, v118);
    v89 = v122;
    v90 = v123;
    __swift_project_boxed_opaque_existential_1(&v121, v122);
    (*(v90 + 16))(v89, v90);
    v91 = v119;
    v92 = v120;
    __swift_project_boxed_opaque_existential_1(v118, v119);
    (*(v92 + 16))(v91, v92);
    sub_1B9F252FC();
    v93 = sub_1BA4A7B88();

    __swift_destroy_boxed_opaque_existential_1(v118);
    result = __swift_destroy_boxed_opaque_existential_1(&v121);
    if ((v93 & 1) == 0)
    {
LABEL_80:
      v20 = v117 + 1;
      v85 = v114 + 40;
      --v86;
      v36 = v112;
      if (v117 + 1 != v112)
      {
        goto LABEL_81;
      }

      v5 = v102;
      v10 = v108;
      v6 = a3;
      v7 = v104;
      v9 = v106;
      if (v112 < v106)
      {
        goto LABEL_117;
      }

      goto LABEL_29;
    }

    if (!v84)
    {
      break;
    }

    sub_1B9F1134C(v88, &v121);
    v94 = *(v88 - 24);
    *v88 = *(v88 - 40);
    *(v88 + 16) = v94;
    *(v88 + 32) = *(v88 - 8);
    sub_1B9F1134C(&v121, v88 - 40);
    v88 -= 40;
    if (__CFADD__(v87++, 1))
    {
      goto LABEL_80;
    }
  }

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
  return result;
}

uint64_t sub_1BA06D06C(char *__src, char *a2, unint64_t a3, char *a4)
{
  v4 = a4;
  v5 = a2;
  v6 = __src;
  v7 = a2 - __src;
  v8 = (a2 - __src) / 40;
  v9 = a3 - a2;
  v10 = (a3 - a2) / 40;
  if (v8 >= v10)
  {
    if (a4 != a2 || &a2[40 * v10] <= a4)
    {
      v26 = a3;
      memmove(a4, a2, 40 * v10);
      a3 = v26;
    }

    v12 = &v4[40 * v10];
    if (v9 < 40 || v5 <= v6)
    {
      v25 = v5;
      goto LABEL_34;
    }

    v27 = v5;
    v48 = v6;
    while (1)
    {
      __dst = v27;
      v28 = (v27 - 40);
      v29 = (v12 - 40);
      v30 = a3 - 40;
      v56 = v27 - 40;
      while (1)
      {
        v33 = v4;
        v34 = v29 + 40;
        v35 = v30;
        v36 = (v30 + 40);
        sub_1B9F0A534(v29, v53);
        sub_1B9F0A534(v28, v50);
        v37 = v54;
        v38 = v55;
        __swift_project_boxed_opaque_existential_1(v53, v54);
        (*(v38 + 16))(v37, v38);
        v40 = v51;
        v39 = v52;
        __swift_project_boxed_opaque_existential_1(v50, v51);
        (*(v39 + 16))(v40, v39);
        sub_1B9F252FC();
        v41 = sub_1BA4A7B88();

        __swift_destroy_boxed_opaque_existential_1(v50);
        __swift_destroy_boxed_opaque_existential_1(v53);
        if (v41)
        {
          break;
        }

        v4 = v33;
        if (v36 != v34)
        {
          v42 = *v29;
          v43 = *(v29 + 16);
          *(v35 + 32) = *(v29 + 32);
          *v35 = v42;
          *(v35 + 16) = v43;
        }

        v31 = v29 - 40;
        v30 = v35 - 40;
        v32 = v29 > v33;
        v29 -= 40;
        v28 = v56;
        if (!v32)
        {
          v12 = (v31 + 40);
          v25 = __dst;
          goto LABEL_34;
        }
      }

      v4 = v33;
      v25 = v56;
      a3 = v35;
      if (v36 != __dst)
      {
        v44 = *v56;
        v45 = *(v56 + 1);
        *(v35 + 32) = *(v56 + 4);
        *v35 = v44;
        *(v35 + 16) = v45;
      }

      v12 = (v29 + 40);
      if (v34 > v33)
      {
        v27 = v25;
        if (v25 > v48)
        {
          continue;
        }
      }

      v12 = (v29 + 40);
      goto LABEL_34;
    }
  }

  if (a4 != __src || &__src[40 * v8] <= a4)
  {
    v11 = a3;
    memmove(a4, __src, 40 * v8);
    a3 = v11;
  }

  v12 = &v4[40 * v8];
  if (v7 < 40 || v5 >= a3)
  {
    v25 = v6;
    goto LABEL_34;
  }

  do
  {
    v13 = a3;
    v14 = v12;
    sub_1B9F0A534(v5, v53);
    sub_1B9F0A534(v4, v50);
    v15 = v4;
    v16 = v5;
    v17 = v54;
    v18 = v55;
    __swift_project_boxed_opaque_existential_1(v53, v54);
    (*(v18 + 16))(v17, v18);
    v20 = v51;
    v19 = v52;
    __swift_project_boxed_opaque_existential_1(v50, v51);
    (*(v19 + 16))(v20, v19);
    sub_1B9F252FC();
    v21 = sub_1BA4A7B88();

    __swift_destroy_boxed_opaque_existential_1(v50);
    __swift_destroy_boxed_opaque_existential_1(v53);
    if (v21)
    {
      v22 = v16;
      v5 = v16 + 40;
      v4 = v15;
      if (v6 == v16)
      {
        goto LABEL_12;
      }

LABEL_11:
      v23 = *v22;
      v24 = *(v22 + 1);
      *(v6 + 4) = *(v22 + 4);
      *v6 = v23;
      *(v6 + 1) = v24;
      goto LABEL_12;
    }

    v22 = v15;
    v4 = v15 + 40;
    v5 = v16;
    if (v6 != v15)
    {
      goto LABEL_11;
    }

LABEL_12:
    v6 += 40;
    v12 = v14;
    if (v4 >= v14)
    {
      break;
    }

    a3 = v13;
  }

  while (v5 < v13);
  v25 = v6;
LABEL_34:
  v46 = (v12 - v4) / 40;
  if (v25 != v4 || v25 >= &v4[40 * v46])
  {
    memmove(v25, v4, 40 * v46);
  }

  return 1;
}

uint64_t sub_1BA06D4C4(void *a1, uint64_t a2, uint64_t a3)
{
  v24[3] = &type metadata for HealthStoreDeviceProvider;
  v24[4] = &off_1F38030B0;
  v24[0] = a2;
  *(a3 + OBJC_IVAR____TtC18HealthExperienceUI23DeviceSourcesDataSource_sources) = 0;
  *(a3 + OBJC_IVAR____TtC18HealthExperienceUI23DeviceSourcesDataSource_devices) = 0;
  *(a3 + OBJC_IVAR____TtC18HealthExperienceUI23DeviceSourcesDataSource_healthStore) = a1;
  sub_1B9F0A534(v24, a3 + OBJC_IVAR____TtC18HealthExperienceUI23DeviceSourcesDataSource_deviceProvider);
  v5 = objc_allocWithZone(MEMORY[0x1E69A44D0]);
  v6 = a1;
  v7 = [v5 initWithHealthStore_];
  *(a3 + OBJC_IVAR____TtC18HealthExperienceUI23DeviceSourcesDataSource_sourceListDataSource) = v7;
  v8 = MEMORY[0x1E69E7CC0];
  v9 = sub_1B9F1DAFC(MEMORY[0x1E69E7CC0], 1, sub_1BA06A060, 0);
  v10 = OBJC_IVAR____TtC18HealthExperienceUI23DeviceSourcesDataSource_sourceListDataSource;
  v11 = *(v9 + OBJC_IVAR____TtC18HealthExperienceUI23DeviceSourcesDataSource_sourceListDataSource);

  [v11 setShouldIncludeSpecialSources_];
  [*(v9 + v10) setDeliverUpdates_];
  [*(v9 + v10) fetchSources];
  [*(v9 + v10) registerObserver_];
  v12 = *__swift_project_boxed_opaque_existential_1((v9 + OBJC_IVAR____TtC18HealthExperienceUI23DeviceSourcesDataSource_deviceProvider), *(v9 + OBJC_IVAR____TtC18HealthExperienceUI23DeviceSourcesDataSource_deviceProvider + 24));
  swift_retain_n();
  v13 = [v12 profileIdentifier];
  v14 = [v13 type];

  if (v14 == 1)
  {
    v15 = swift_allocObject();
    *(v15 + 16) = v8;
    v16 = sub_1BA4A6AE8();
    v17 = swift_allocObject();
    v17[2] = v15;
    v17[3] = v12;
    v17[4] = sub_1BA06DE08;
    v17[5] = v9;
    aBlock[4] = sub_1BA06DDD0;
    aBlock[5] = v17;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1BA06C420;
    aBlock[3] = &block_descriptor_62;
    v18 = _Block_copy(aBlock);

    v19 = v12;

    [v19 healthPeripheralsWithCustomProperties:v16 withCompletion:v18];
    _Block_release(v18);
  }

  else
  {
    if (v8 >> 62 && sub_1BA4A7CC8())
    {
      sub_1B9FF63A4(MEMORY[0x1E69E7CC0]);
      v20 = v22;
    }

    else
    {
      v20 = MEMORY[0x1E69E7CD0];
    }

    sub_1BA06A4FC(v20);
  }

  __swift_destroy_boxed_opaque_existential_1(v24);

  return v9;
}

void sub_1BA06D804(unint64_t a1, uint64_t a2, uint64_t *a3, void **a4)
{
  if (a1 >> 62)
  {
    goto LABEL_14;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1BA4A7CC8())
  {
    v8 = 0;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x1BFAF2860](v8, a1);
      }

      else
      {
        if (v8 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_13;
        }

        v9 = *(a1 + 8 * v8 + 32);
      }

      v10 = v9;
      v11 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      v14 = v9;
      sub_1BA06B1F0(&v14, a2, a3, a4);

      if (!v4)
      {
        ++v8;
        if (v11 != i)
        {
          continue;
        }
      }

      return;
    }

    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    ;
  }
}

void sub_1BA06D908(void *a1, uint64_t a2)
{

  v4 = [a1 profileIdentifier];
  v5 = [v4 type];

  if (v5 == 1)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = MEMORY[0x1E69E7CC0];
    v7 = sub_1BA4A6AE8();
    v8 = swift_allocObject();
    v8[2] = v6;
    v8[3] = a1;
    v8[4] = sub_1BA06DD50;
    v8[5] = a2;
    v13[4] = sub_1BA06DD54;
    v13[5] = v8;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 1107296256;
    v13[2] = sub_1BA06C420;
    v13[3] = &block_descriptor_40_0;
    v9 = _Block_copy(v13);

    v10 = a1;

    [v10 healthPeripheralsWithCustomProperties:v7 withCompletion:v9];
    _Block_release(v9);
  }

  else
  {
    if (MEMORY[0x1E69E7CC0] >> 62 && sub_1BA4A7CC8())
    {
      sub_1B9FF63A4(MEMORY[0x1E69E7CC0]);
      v11 = v12;
    }

    else
    {
      v11 = MEMORY[0x1E69E7CD0];
    }

    sub_1BA06A4FC(v11);
  }
}

unint64_t sub_1BA06DC94()
{
  result = qword_1EBBE9E50;
  if (!qword_1EBBE9E50)
  {
    sub_1B9F0ADF8(255, &qword_1EBBE9E48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBE9E50);
  }

  return result;
}

unint64_t sub_1BA06DCFC()
{
  result = qword_1EBBEACC0;
  if (!qword_1EBBEACC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEACC0);
  }

  return result;
}

uint64_t objectdestroy_36Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

id ProfileCharacteristicsWithAutoAvatarImageViewController.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t ProfileCharacteristicsWithAutoAvatarImageViewController.init()()
{
  ObjectType = swift_getObjectType();
  v1 = [objc_allocWithZone(MEMORY[0x1E696C1C0]) init];
  v2 = sub_1BA4A1B08();
  v3 = sub_1BA4A1AF8();
  v6[3] = v2;
  v6[4] = MEMORY[0x1E69A3B38];
  v6[0] = v3;
  v4 = (*(ObjectType + 176))(v1, v6);
  swift_deallocPartialClassInstance();
  return v4;
}

id ProfileCharacteristicsWithAutoAvatarImageViewController.__allocating_init(healthStore:healthExperienceStore:)(void *a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = sub_1BA06F854(a1, a2);

  return v6;
}

id ProfileCharacteristicsWithAutoAvatarImageViewController.init(healthStore:healthExperienceStore:)(void *a1, uint64_t a2)
{
  v3 = sub_1BA06F854(a1, a2);

  return v3;
}

uint64_t sub_1BA06E024(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  sub_1B9F3DA8C();
  v27 = *(v5 - 8);
  v28 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F44C60();
  v29 = *(v8 - 8);
  v30 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  [swift_getObjCClassFromMetadata() avatarImageSize];
  v12 = v11;
  v13 = [objc_opt_self() mainScreen];
  [v13 scale];
  v15 = v14;

  if (qword_1EDC63680 != -1)
  {
    swift_once();
  }

  v31 = v12;
  v32 = v15;
  v33 = qword_1EDC63688;
  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v17 = swift_allocObject();
  v17[2] = v16;
  v17[3] = a1;
  v17[4] = ObjectType;
  v18 = MEMORY[0x1E695BED0];
  sub_1B9F3D93C(0, &qword_1EDC5F490, MEMORY[0x1E695BED0]);
  sub_1B9F3DB14();

  v19 = a1;
  sub_1BA4A4FE8();

  v20 = sub_1B9F3DBAC(&qword_1EDC5F690, sub_1B9F3DA8C);
  v21 = sub_1B9F3DB68(&qword_1EDC5F498, &qword_1EDC5F490, v18);
  v22 = v28;
  MEMORY[0x1BFAEFB60](v28, v20, v21);
  (*(v27 + 8))(v7, v22);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_1B9F3DBAC(&qword_1EDC5F6B0, sub_1B9F44C60);
  v23 = v30;
  v24 = sub_1BA4A5148();

  (*(v29 + 8))(v10, v23);
  *(v2 + OBJC_IVAR____TtC18HealthExperienceUI55ProfileCharacteristicsWithAutoAvatarImageViewController_imagePublisherCancellable) = v24;
}

uint64_t sub_1BA06E420@<X0>(void **a1@<X0>, void *a2@<X2>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  v36 = a2;
  v37 = a3;
  v42 = a4;
  sub_1BA06FA80(0, &qword_1EDC5F428, sub_1B9F3C928, MEMORY[0x1E695C000]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v35 - v8;
  sub_1BA06FED4();
  v40 = *(v10 - 8);
  v41 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA06FF80();
  v38 = *(v13 - 8);
  v39 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F3D93C(0, &unk_1EDC5F410, MEMORY[0x1E695C010]);
  v17 = v16;
  v18 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v35 - v19;
  v21 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v23 = Strong;
    if (v21)
    {
      v43 = v21;
      sub_1B9F3C928();
      v24 = v21;
      sub_1BA4A4E78();
      sub_1BA07003C();
      v25 = sub_1BA4A4F98();

      result = (*(v7 + 8))(v9, v6);
    }

    else
    {
      __swift_project_boxed_opaque_existential_1((Strong + OBJC_IVAR____TtC18HealthExperienceUI55ProfileCharacteristicsWithAutoAvatarImageViewController_healthExperienceStore), *(Strong + OBJC_IVAR____TtC18HealthExperienceUI55ProfileCharacteristicsWithAutoAvatarImageViewController_healthExperienceStore + 24));
      v27 = sub_1BA4A1B68();
      type metadata accessor for HealthKitProfileInformationDataSource();
      swift_allocObject();
      v43 = *(sub_1BA2B8F0C(v27, v36, 0, 0, sub_1BA0700C4, 0) + qword_1EDC6A560);
      v28 = MEMORY[0x1E695BF98];
      sub_1BA06FD34(0, &qword_1EDC6B720, MEMORY[0x1E695BF98]);
      sub_1BA06FDD4(&qword_1EDC6B730, &qword_1EDC6B720, v28);
      v43 = sub_1BA4A4F98();
      v29 = MEMORY[0x1E695BED0];
      sub_1BA06FD34(0, &qword_1EDC6B738, MEMORY[0x1E695BED0]);
      sub_1BA06FDD4(&qword_1EDC6B740, &qword_1EDC6B738, v29);

      sub_1BA4A4FB8();

      v30 = swift_allocObject();
      v31 = v37;
      *(v30 + 16) = v23;
      *(v30 + 24) = v31;
      sub_1B9F3C928();
      sub_1B9F3DBAC(&qword_1EBBEAD30, sub_1BA06FF80);
      v32 = v23;
      v33 = v39;
      sub_1BA4A4FE8();

      sub_1B9F3DBAC(&qword_1EBBEAD40, sub_1BA06FED4);
      v34 = v41;
      v25 = sub_1BA4A4F98();

      (*(v40 + 8))(v12, v34);
      result = (*(v38 + 8))(v15, v33);
    }
  }

  else
  {
    sub_1B9F3C928();
    sub_1BA4A4E88();
    sub_1B9F3DB68(&qword_1EBBEAD38, &unk_1EDC5F410, MEMORY[0x1E695C010]);
    v25 = sub_1BA4A4F98();
    result = (*(v18 + 8))(v20, v17);
  }

  *v42 = v25;
  return result;
}

uint64_t sub_1BA06EA9C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1BA06FA80(0, &qword_1EDC6E200, MEMORY[0x1E69A3108], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v11 - v5;
  sub_1BA06FE18(a1, &v11 - v5);
  v7 = sub_1BA4A2888();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    result = sub_1BA06F9D0(v6);
    v10 = 0;
  }

  else
  {
    sub_1BA4A27F8();
    (*(v8 + 8))(v6, v7);
    [swift_getObjCClassFromMetadata() avatarImageSize];
    v10 = sub_1BA4A2DF8();
  }

  *a2 = v10;
  return result;
}

uint64_t sub_1BA06EC30(void *a1)
{
  v2 = v1;
  sub_1BA06FC68();
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC18HealthExperienceUI55ProfileCharacteristicsWithAutoAvatarImageViewController_healthExperienceStore), *(v1 + OBJC_IVAR____TtC18HealthExperienceUI55ProfileCharacteristicsWithAutoAvatarImageViewController_healthExperienceStore + 24));
  v9 = sub_1BA4A1B68();
  type metadata accessor for HealthKitProfileInformationDataSource();
  swift_allocObject();
  v10 = sub_1BA2B8F0C(v9, a1, 0, 0, sub_1BA0700C4, 0);
  v16 = *(v10 + qword_1EDC6A560);
  v11 = MEMORY[0x1E695BF98];
  sub_1BA06FD34(0, &qword_1EDC6B720, MEMORY[0x1E695BF98]);
  sub_1BA06FDD4(&qword_1EDC6B730, &qword_1EDC6B720, v11);
  v16 = sub_1BA4A4F98();
  v12 = MEMORY[0x1E695BED0];
  sub_1BA06FD34(0, &qword_1EDC6B738, MEMORY[0x1E695BED0]);
  sub_1B9F3C928();
  sub_1BA06FDD4(&qword_1EDC6B740, &qword_1EDC6B738, v12);
  sub_1BA4A4FE8();

  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_1B9F3DBAC(&qword_1EBBEAD18, sub_1BA06FC68);
  v13 = sub_1BA4A5148();

  (*(v6 + 8))(v8, v5);
  *(v2 + OBJC_IVAR____TtC18HealthExperienceUI55ProfileCharacteristicsWithAutoAvatarImageViewController_imagePublisherCancellable) = v13;

  *(v2 + OBJC_IVAR____TtC18HealthExperienceUI55ProfileCharacteristicsWithAutoAvatarImageViewController_dataSource) = v10;
}
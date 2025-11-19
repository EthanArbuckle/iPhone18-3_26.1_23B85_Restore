__n128 __swift_memcpy80_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_1C5679444(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C567948C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1C56794F0()
{
  v1 = v0;
  v2 = (v0 + OBJC_IVAR____TtC6MapsUI23TransitDepartureRowView_model);
  swift_beginAccess();
  v3 = v2[3];
  v4 = v2[4];
  v5 = __swift_project_boxed_opaque_existential_1(v2, v3);
  v6 = *(v3 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5, v5);
  v9 = &v60 - v8;
  (*(v6 + 16))(&v60 - v8);
  v60 = (*(v4 + 8))(v3, v4);
  v11 = v10;
  (*(v6 + 8))(v9, v3);
  v12 = v2[3];
  v13 = v2[4];
  v14 = __swift_project_boxed_opaque_existential_1(v2, v12);
  v15 = *(v12 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14, v14);
  v18 = &v60 - v17;
  (*(v15 + 16))(&v60 - v17);
  v19 = (*(v13 + 16))(v12, v13);
  (*(v15 + 8))(v18, v12);
  v21 = v2[3];
  v20 = v2[4];
  v22 = __swift_project_boxed_opaque_existential_1(v2, v21);
  v23 = *(v21 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v22, v22);
  v26 = &v60 - v25;
  (*(v23 + 16))(&v60 - v25);
  v27 = (*(v20 + 24))(v21, v20);
  (*(v23 + 8))(v26, v21);
  v29 = v2[3];
  v28 = v2[4];
  v30 = __swift_project_boxed_opaque_existential_1(v2, v29);
  v31 = *(v29 - 8);
  v32 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v30, v30);
  v34 = &v60 - v33;
  (*(v31 + 16))(&v60 - v33);
  v35 = (*(v28 + 32))(v29, v28);
  (*(v31 + 8))(v34, v29);
  v36 = v2[3];
  v37 = v2[4];
  v38 = __swift_project_boxed_opaque_existential_1(v2, v36);
  v39 = *(v36 - 8);
  v40 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v38, v38);
  v42 = &v60 - v41;
  (*(v39 + 16))(&v60 - v41);
  v43 = (*(v37 + 40))(v36, v37);
  (*(v39 + 8))(v42, v36);
  v44 = *(v1 + OBJC_IVAR____TtC6MapsUI23TransitDepartureRowView_primaryLabel);
  if (v11)
  {

    v45 = sub_1C584F630();

    [v44 setText_];

    v46 = sub_1C584F6D0();

    v47 = v46 == 0;
  }

  else
  {
    [*(v1 + OBJC_IVAR____TtC6MapsUI23TransitDepartureRowView_primaryLabel) setText_];
    v47 = 0;
  }

  [v44 setHidden_];
  v48 = *(v1 + OBJC_IVAR____TtC6MapsUI23TransitDepartureRowView_secondaryMultipartLabel);
  v49 = [objc_opt_self() interpunctDelimeter];
  if (!v49)
  {
    sub_1C584F660();
    v49 = sub_1C584F630();
  }

  v50 = [objc_allocWithZone(MEMORY[0x1E696AAB0]) initWithString_];

  sub_1C5626E40(0, &unk_1EC170B70, 0x1E696AAB0);
  v51 = sub_1C584F750();
  v52 = [objc_opt_self() multiPartAttributedStringWithComponents:v51 repeatedSeparator:v50];

  [v48 setMultiPartString_];
  if (v19 >> 62)
  {
    v53 = sub_1C584FB90();
  }

  else
  {
    v53 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  [v48 setHidden_];
  v54 = *(v1 + OBJC_IVAR____TtC6MapsUI23TransitDepartureRowView_tertiaryLabel);
  [v54 setAttributedText_];
  if (v27)
  {
    v55 = [v27 length] == 0;
  }

  else
  {
    v55 = 0;
  }

  [v54 setHidden_];
  v56 = *(v1 + OBJC_IVAR____TtC6MapsUI23TransitDepartureRowView_departureLabel);
  [v56 setAttributedText_];
  if (v35)
  {
    v57 = [v35 length] == 0;
  }

  else
  {
    v57 = 0;
  }

  [v56 setHidden_];
  v58 = *(v1 + OBJC_IVAR____TtC6MapsUI23TransitDepartureRowView_departureDetailLabel);
  [v58 setAttributedText_];
  if (v43)
  {
    v59 = [v43 length] == 0;
  }

  else
  {
    v59 = 0;
  }

  [v58 setHidden_];
}

char *sub_1C5679C50(uint64_t *a1)
{
  ObjectType = swift_getObjectType();
  v4 = OBJC_IVAR____TtC6MapsUI23TransitDepartureRowView_primaryLabel;
  v5 = objc_opt_self();
  *&v1[v4] = [v5 labelForProminence_];
  v6 = OBJC_IVAR____TtC6MapsUI23TransitDepartureRowView_secondaryMultipartLabel;
  *&v1[v6] = [objc_allocWithZone(MEMORY[0x1E696F2D8]) initWithFrame_];
  v7 = OBJC_IVAR____TtC6MapsUI23TransitDepartureRowView_tertiaryLabel;
  *&v1[v7] = [v5 labelForProminence_];
  v8 = OBJC_IVAR____TtC6MapsUI23TransitDepartureRowView_leadingStackView;
  *&v1[v8] = [objc_allocWithZone(MEMORY[0x1E69DCF90]) init];
  v9 = OBJC_IVAR____TtC6MapsUI23TransitDepartureRowView_departureLabel;
  *&v1[v9] = [v5 labelForProminence_];
  v10 = OBJC_IVAR____TtC6MapsUI23TransitDepartureRowView_departureDetailLabel;
  *&v1[v10] = [v5 labelForProminence_];
  v11 = OBJC_IVAR____TtC6MapsUI23TransitDepartureRowView_trailingStackView;
  *&v1[v11] = [objc_allocWithZone(MEMORY[0x1E69DCF90]) init];
  sub_1C5633310(a1, &v1[OBJC_IVAR____TtC6MapsUI23TransitDepartureRowView_model]);
  v59.receiver = v1;
  v59.super_class = ObjectType;
  v12 = objc_msgSendSuper2(&v59, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v13 = sub_1C584F630();
  [v12 setAccessibilityIdentifier_];

  [v12 _mapsui_resetLayoutMargins];
  [v12 setDirectionalLayoutMargins_];
  v14 = *&v12[OBJC_IVAR____TtC6MapsUI23TransitDepartureRowView_primaryLabel];
  [v14 setNumberOfLines_];
  [v14 setAdjustsFontForContentSizeCategory_];
  v15 = objc_opt_self();
  v57 = *MEMORY[0x1E69DDCF8];
  v16 = v15;
  v55 = v15;
  v17 = [v15 _mapkit_preferredFontForTextStyleInTableViewCell_];
  [v14 setFont_];

  v18 = sub_1C584F630();
  [v14 &selRef_searchUID];

  v19 = *&v12[OBJC_IVAR____TtC6MapsUI23TransitDepartureRowView_secondaryMultipartLabel];
  [v19 &selRef:0 setSelectedIndex:?];
  v20 = sub_1C584F630();
  [v19 &selRef_searchUID];

  v21 = *&v12[OBJC_IVAR____TtC6MapsUI23TransitDepartureRowView_tertiaryLabel];
  [v21 &selRef:0 setSelectedIndex:?];
  [v21 &selRef:1 setDeparturesDelegate:?];
  v56 = *MEMORY[0x1E69DDD80];
  v22 = [v16 _mapkit_preferredFontForTextStyleInTableViewCell_addingSymbolicTraits_];
  [v21 &selRef_representedElementCategory];

  v23 = [objc_opt_self() secondaryLabelColor];
  [v21 setTextColor_];

  v24 = sub_1C584F630();
  [v21 &selRef_searchUID];

  v25 = *&v12[OBJC_IVAR____TtC6MapsUI23TransitDepartureRowView_leadingStackView];
  [v25 setAxis_];
  [v25 setAlignment_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16DBD0, &unk_1C58682B0);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_1C58679B0;
  *(v26 + 32) = v14;
  *(v26 + 40) = v19;
  *(v26 + 48) = v21;
  sub_1C5626E40(0, &qword_1ED77E800, 0x1E69DD250);
  v27 = v14;
  v28 = v19;
  v29 = v21;
  v30 = sub_1C584F750();

  [v25 _mapsui_setArrangedSubviews_];

  [v12 addSubview_];
  v31 = *&v12[OBJC_IVAR____TtC6MapsUI23TransitDepartureRowView_departureLabel];
  [v31 &selRef:1 setSelectedIndex:?];
  [v31 &selRef:1 setDeparturesDelegate:?];
  if ([v12 _mapsui_isRTL])
  {
    v32 = 0;
  }

  else
  {
    v32 = 2;
  }

  [v31 setTextAlignment_];
  LODWORD(v33) = 1148846080;
  [v31 setContentCompressionResistancePriority:0 forAxis:v33];
  LODWORD(v34) = 1148846080;
  [v31 setContentHuggingPriority:0 forAxis:v34];
  v35 = [v55 _mapkit_preferredFontForTextStyleInTableViewCell_];
  [v31 &selRef_representedElementCategory];

  v36 = sub_1C584F630();
  [v31 setAccessibilityIdentifier_];

  v37 = *&v12[OBJC_IVAR____TtC6MapsUI23TransitDepartureRowView_departureDetailLabel];
  [v37 setNumberOfLines_];
  [v37 setAdjustsFontForContentSizeCategory_];
  if ([v12 _mapsui_isRTL])
  {
    v38 = 0;
  }

  else
  {
    v38 = 2;
  }

  [v37 setTextAlignment_];
  LODWORD(v39) = 1148846080;
  [v37 setContentCompressionResistancePriority:0 forAxis:v39];
  LODWORD(v40) = 1148846080;
  [v37 setContentHuggingPriority:0 forAxis:v40];
  v41 = [v55 _mapkit_preferredFontForTextStyleInTableViewCell_];
  [v37 &selRef_representedElementCategory];

  v42 = sub_1C584F630();
  [v37 setAccessibilityIdentifier_];

  v43 = *&v12[OBJC_IVAR____TtC6MapsUI23TransitDepartureRowView_trailingStackView];
  [v43 setAxis_];
  [v43 setAlignment_];
  v44 = swift_allocObject();
  *(v44 + 16) = xmmword_1C58682A0;
  *(v44 + 32) = v31;
  *(v44 + 40) = v37;
  v45 = v31;
  v46 = v37;
  v47 = sub_1C584F750();

  [v43 _mapsui_setArrangedSubviews_];

  [v12 addSubview_];
  sub_1C575D20C(0, v62);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16E928, &qword_1C5879830);
  v48 = swift_allocObject();
  *(v48 + 16) = xmmword_1C5867990;
  v49 = sub_1C5626E40(0, &qword_1EC16E930, 0x1E69DCF90);
  *(v48 + 56) = v49;
  *(v48 + 64) = &off_1F44C2610;
  *(v48 + 32) = v25;
  *(v48 + 96) = v49;
  *(v48 + 104) = &off_1F44C2610;
  *(v48 + 72) = v43;
  v50 = v25;
  v51 = v43;
  sub_1C575D334(v48);
  sub_1C563E578(v60);
  v64 = v60[0] | (v61 << 32);
  v65 = 0x4020000000000000;
  sub_1C563E578(v60);
  v52 = 1610612736;
  if (v60[0])
  {
    v52 = 1610612737;
  }

  v63 = v52 | (v61 << 32);
  type metadata accessor for CompositionalStackLayout();
  v53 = sub_1C57783A8([v12 layoutMarginsGuide], v62);
  ConstraintLayout.activate()();

  sub_1C56794F0();
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v12;
}

void sub_1C567A63C()
{
  v1 = OBJC_IVAR____TtC6MapsUI23TransitDepartureRowView_primaryLabel;
  v2 = objc_opt_self();
  *(v0 + v1) = [v2 labelForProminence_];
  v3 = OBJC_IVAR____TtC6MapsUI23TransitDepartureRowView_secondaryMultipartLabel;
  *(v0 + v3) = [objc_allocWithZone(MEMORY[0x1E696F2D8]) initWithFrame_];
  v4 = OBJC_IVAR____TtC6MapsUI23TransitDepartureRowView_tertiaryLabel;
  *(v0 + v4) = [v2 labelForProminence_];
  v5 = OBJC_IVAR____TtC6MapsUI23TransitDepartureRowView_leadingStackView;
  *(v0 + v5) = [objc_allocWithZone(MEMORY[0x1E69DCF90]) init];
  v6 = OBJC_IVAR____TtC6MapsUI23TransitDepartureRowView_departureLabel;
  *(v0 + v6) = [v2 labelForProminence_];
  v7 = OBJC_IVAR____TtC6MapsUI23TransitDepartureRowView_departureDetailLabel;
  *(v0 + v7) = [v2 labelForProminence_];
  v8 = OBJC_IVAR____TtC6MapsUI23TransitDepartureRowView_trailingStackView;
  *(v0 + v8) = [objc_allocWithZone(MEMORY[0x1E69DCF90]) init];
  sub_1C584FD00();
  __break(1u);
}

uint64_t sub_1C567A7DC()
{
  type metadata accessor for MUMapItemFetcher();
  result = swift_initStaticObject();
  qword_1EC18F9E0 = result;
  return result;
}

uint64_t *sub_1C567A818()
{
  if (qword_1EC17ACF0 != -1)
  {
    swift_once();
  }

  return &qword_1EC18F9E0;
}

void sub_1C567A868(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [objc_opt_self() sharedService];
  if (v5)
  {
    v6 = v5;
    sub_1C5626E40(0, &qword_1EC16CFF0, 0x1E696F280);
    v7 = sub_1C584F750();
    v8 = [v6 ticketForIdentifiers:v7 traits:0];

    if (v8)
    {
      v9 = swift_allocObject();
      *(v9 + 16) = a2;
      *(v9 + 24) = a3;
      v11[4] = sub_1C567B8FC;
      v11[5] = v9;
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 1107296256;
      v11[2] = sub_1C567AB00;
      v11[3] = &block_descriptor_7;
      v10 = _Block_copy(v11);
      swift_unknownObjectRetain();
      sub_1C5633060(a2);

      [v8 submitWithHandler:v10 networkActivity:0];
      swift_unknownObjectRelease_n();
      _Block_release(v10);
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1C567A9F4(uint64_t a1)
{
  v7 = MEMORY[0x1E69E7CC0];
  v2 = *(a1 + 16);
  sub_1C584FCC0();
  if (!v2)
  {
    return v7;
  }

  for (i = a1 + 32; ; i += 32)
  {
    sub_1C56465F8(i, v6);
    sub_1C5626E40(0, &unk_1EC16CF70, 0x1E696F270);
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    sub_1C584FCA0();
    v4 = *(v7 + 16);
    sub_1C584FCD0();
    sub_1C584FCE0();
    sub_1C584FCB0();
    if (!--v2)
    {
      return v7;
    }
  }

  return 0;
}

uint64_t sub_1C567AB00(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  if (a2)
  {
    v6 = sub_1C584F770();
  }

  else
  {
    v6 = 0;
  }

  v7 = a3;
  v5(v6, a3);
}

void sub_1C567AB9C(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = [objc_opt_self() sharedService];
  if (v6)
  {
    v7 = v6;
    v8 = sub_1C584F630();
    v9 = [v7 ticketForFreshIdentifier:a1 resultProviderID:0 contentProvider:v8 traits:0];

    if (v9)
    {
      v10 = swift_allocObject();
      v10[2] = a2;
      v10[3] = a3;
      v10[4] = a1;
      v13[4] = sub_1C567BB7C;
      v13[5] = v10;
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 1107296256;
      v13[2] = sub_1C567AB00;
      v13[3] = &block_descriptor_6_0;
      v11 = _Block_copy(v13);
      swift_unknownObjectRetain();
      sub_1C5633060(a2);
      v12 = a1;

      [v9 submitWithHandler:v11 networkActivity:0];
      swift_unknownObjectRelease_n();
      _Block_release(v11);
    }
  }

  else
  {
    __break(1u);
  }
}

id sub_1C567AD20(uint64_t a1, uint64_t a2, id a3)
{
  v6 = [a3 _attribution];
  if (v6)
  {

    result = [a3 _attribution];
    if (!result)
    {
      __break(1u);
      goto LABEL_64;
    }

    v8 = result;
    v9 = [result providerID];

    if (v9)
    {
      v10 = sub_1C584F660();
      v12 = v11;

      if (v10 == a1 && v12 == a2)
      {
      }

      else
      {
        v14 = sub_1C584FDC0();

        if ((v14 & 1) == 0)
        {
          goto LABEL_9;
        }
      }

      v21 = [a3 _attribution];
      return v21;
    }
  }

LABEL_9:
  v15 = [a3 _reviewsAttribution];
  if (!v15)
  {
    goto LABEL_19;
  }

  result = [a3 _reviewsAttribution];
  if (!result)
  {
LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

  v16 = result;
  v17 = [result providerID];

  if (v17)
  {
    v18 = sub_1C584F660();
    v20 = v19;

    if (v18 == a1 && v20 == a2)
    {

LABEL_18:
      v21 = [a3 _reviewsAttribution];
      return v21;
    }

    v22 = sub_1C584FDC0();

    if (v22)
    {
      goto LABEL_18;
    }
  }

LABEL_19:
  v23 = [a3 _photosAttribution];
  if (!v23)
  {
    goto LABEL_27;
  }

  result = [a3 _photosAttribution];
  if (!result)
  {
LABEL_65:
    __break(1u);
    goto LABEL_66;
  }

  v24 = result;
  v25 = [result providerID];

  if (v25)
  {
    v26 = sub_1C584F660();
    v28 = v27;

    if (v26 == a1 && v28 == a2)
    {

LABEL_26:
      v21 = [a3 _photosAttribution];
      return v21;
    }

    v29 = sub_1C584FDC0();

    if (v29)
    {
      goto LABEL_26;
    }
  }

LABEL_27:
  v30 = [a3 _encyclopedicInfoAttribution];
  if (v30)
  {

    result = [a3 _encyclopedicInfoAttribution];
    if (result)
    {
      v31 = result;
      v32 = [result providerID];

      if (v32)
      {
        v33 = sub_1C584F660();
        v35 = v34;

        if (v33 == a1 && v35 == a2)
        {

LABEL_34:
          v21 = [a3 _encyclopedicInfoAttribution];
          return v21;
        }

        v36 = sub_1C584FDC0();

        if (v36)
        {
          goto LABEL_34;
        }
      }

      goto LABEL_37;
    }

LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

LABEL_37:
  v38 = [a3 _allPhotoAttributions];
  if (!v38)
  {
    return 0;
  }

  result = [a3 _allPhotoAttributions];
  if (result)
  {
    v39 = result;
    sub_1C5626E40(0, &qword_1EC16CFA0, 0x1E696F480);
    v40 = sub_1C584F770();

    if (v40 >> 62)
    {
      goto LABEL_61;
    }

    v41 = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v41)
    {
LABEL_62:

      return 0;
    }

LABEL_41:
    v42 = 0;
    v56 = v40;
    v57 = v40 & 0xC000000000000001;
    v55 = v40 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v57)
      {
        v43 = MEMORY[0x1C694A320](v42, v40);
        v44 = v42 + 1;
        if (__OFADD__(v42, 1))
        {
          goto LABEL_59;
        }
      }

      else
      {
        if (v42 >= *(v55 + 16))
        {
          goto LABEL_60;
        }

        v43 = *(v40 + 8 * v42 + 32);
        v44 = v42 + 1;
        if (__OFADD__(v42, 1))
        {
LABEL_59:
          __break(1u);
LABEL_60:
          __break(1u);
LABEL_61:
          v41 = sub_1C584FB90();
          if (!v41)
          {
            goto LABEL_62;
          }

          goto LABEL_41;
        }
      }

      v37 = v43;
      v45 = [v37 providerID];
      if (v45)
      {
        v46 = v45;
        v47 = a1;
        v48 = a2;
        v49 = sub_1C584F660();
        v51 = v50;

        v52 = v49;
        a2 = v48;
        if (v52 == v47 && v51 == v48)
        {

          return v37;
        }

        a1 = v47;
        v54 = sub_1C584FDC0();

        v40 = v56;
        if (v54)
        {

          return v37;
        }
      }

      else
      {
      }

      ++v42;
      if (v44 == v41)
      {
        goto LABEL_62;
      }
    }
  }

LABEL_67:
  __break(1u);
  return result;
}

uint64_t sub_1C567B25C(void *a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  if (a2 >> 62 && (result = sub_1C584FB90(), result < 0))
  {
    __break(1u);
  }

  else
  {

    v9 = a1;
    sub_1C567C028(0, 0, v9);

    v10 = swift_allocObject();
    *(v10 + 16) = a3;
    *(v10 + 24) = a4;
    v11 = *(*v5 + 80);
    sub_1C5633060(a3);
    v11(a2, sub_1C567C114, v10);
  }

  return result;
}

void sub_1C567B388()
{
  v1 = *v0;
  v2 = *v0 >> 62;
  if (!v2)
  {
    if (*((*v0 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_13:
    __break(1u);
LABEL_14:
    MEMORY[0x1C694A320](0, v1);
    if (!v2)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

  if (v1 < 0)
  {
    v4 = *v0;
  }

  else
  {
    v4 = *v0 & 0xFFFFFFFFFFFFFF8;
  }

  if (!sub_1C584FB90())
  {
    goto LABEL_20;
  }

  if (!sub_1C584FB90())
  {
    __break(1u);
    goto LABEL_13;
  }

LABEL_3:
  if ((v1 & 0xC000000000000001) != 0)
  {
    goto LABEL_14;
  }

  if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    *(v1 + 32);
    if (!v2)
    {
LABEL_6:
      v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_16;
    }

LABEL_15:
    v3 = sub_1C584FB90();
LABEL_16:
    if (v3)
    {
      sub_1C567CE58(0, 1);
      return;
    }

    goto LABEL_19;
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
}

void sub_1C567B460(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = [objc_opt_self() sharedService];
  if (v6)
  {
    v7 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16DBD0, &unk_1C58682B0);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1C5867970;
    *(v8 + 32) = a1;
    sub_1C5626E40(0, &qword_1EC16CFF0, 0x1E696F280);
    v9 = a1;
    v10 = sub_1C584F750();

    v11 = [v7 ticketForRefreshingEVChargersWithIdentifiers:v10 traits:0];

    if (v11)
    {
      v12 = swift_allocObject();
      v12[2] = v9;
      v12[3] = a2;
      v12[4] = a3;
      v15[4] = sub_1C567C1A8;
      v15[5] = v12;
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 1107296256;
      v15[2] = sub_1C567AB00;
      v15[3] = &block_descriptor_15_0;
      v13 = _Block_copy(v15);
      v14 = v9;
      swift_unknownObjectRetain();
      sub_1C5633060(a2);

      [v11 submitRefreshRequestWithHandler:v13 networkActivity:0];
      swift_unknownObjectRelease_n();
      _Block_release(v13);
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_1C567B644(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = objc_opt_self();
  v9 = [v8 sharedService];
  if (!v9)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    return;
  }

  v10 = v9;
  v11 = [v9 defaultTraits];

  v12 = [objc_allocWithZone(MEMORY[0x1E69A2570]) init];
  v13 = v12;
  v21 = v12;
  if (v12)
  {
    [v12 setSearchImplicitType_];
    v13 = v21;
  }

  [v11 setSearchImplicitFilterInfo_];
  if (v11)
  {
    [v11 setSearchOriginationType_];
  }

  v14 = [v8 sharedService];
  if (!v14)
  {
    goto LABEL_13;
  }

  v15 = v14;
  v16 = sub_1C584F630();
  v17 = [v15 searchAroundPOITicketWithIdentifier:a1 categoryID:v16 maxResults:100 traits:v11];

  if (v17)
  {
    v18 = swift_allocObject();
    v18[2] = a1;
    v18[3] = a4;
    v18[4] = a5;
    aBlock[4] = sub_1C567C810;
    aBlock[5] = v18;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1C567AB00;
    aBlock[3] = &block_descriptor_21;
    v19 = _Block_copy(aBlock);
    swift_unknownObjectRetain();
    v20 = a1;
    sub_1C5633060(a4);

    [v17 submitWithHandler:v19 networkActivity:0];
    swift_unknownObjectRelease_n();

    _Block_release(v19);
  }

  else
  {
  }
}

void sub_1C567B8FC(uint64_t a1, void *a2)
{
  v5 = *(v2 + 16);
  v4 = *(v2 + 24);
  if (!a2 && a1 && sub_1C567A9F4(a1))
  {
    if (v5)
    {
      v5();
    }
  }

  else
  {
    if (qword_1EC17CBC0 != -1)
    {
      swift_once();
    }

    v6 = sub_1C584F2C0();
    __swift_project_value_buffer(v6, qword_1EC18FAC8);
    v7 = a2;
    v8 = sub_1C584F2A0();
    v9 = sub_1C584F9B0();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      *v10 = 138412290;
      if (a2)
      {
        v12 = a2;
        v13 = _swift_stdlib_bridgeErrorToNSError();
        v14 = v13;
      }

      else
      {
        v13 = 0;
        v14 = 0;
      }

      *(v10 + 4) = v13;
      *v11 = v14;
      _os_log_impl(&dword_1C5620000, v8, v9, "mapItem fetching error:%@", v10, 0xCu);
      sub_1C567CCE0(v11);
      MEMORY[0x1C694B7A0](v11, -1, -1);
      MEMORY[0x1C694B7A0](v10, -1, -1);
    }

    if (v5)
    {
      (v5)(0, a2);
    }
  }
}

uint64_t block_copy_helper_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1C567BADC()
{
  v0 = sub_1C584F2C0();
  __swift_allocate_value_buffer(v0, qword_1EC18FAC8);
  __swift_project_value_buffer(v0, qword_1EC18FAC8);
  type metadata accessor for MUMapItemFetcher();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16E938, &unk_1C586A730);
  sub_1C584F680();
  return sub_1C584F2B0();
}

void sub_1C567BB7C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v2[2];
  v5 = v2[3];
  if (a2 || !a1 || (v6 = v2[4], (v7 = sub_1C567A9F4(a1)) == 0))
  {
    if (qword_1EC17CBC0 != -1)
    {
      goto LABEL_28;
    }

    goto LABEL_18;
  }

  v8 = v7;
  v31 = v4;
  v30 = v7 >> 62;
  if (v7 >> 62)
  {
    v3 = sub_1C584FB90();
    if (v3)
    {
      goto LABEL_6;
    }

LABEL_30:
    if (v30)
    {
      v27 = sub_1C584FB90();
    }

    else
    {
      v27 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v17 = v31;
    if (v27 == 1 && v3)
    {
      if ((v8 & 0xC000000000000001) != 0)
      {
        v28 = MEMORY[0x1C694A320](0, v8);
      }

      else
      {
        if (!*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          return;
        }

        v28 = *(v8 + 32);
      }

      v32 = v28;

LABEL_39:
      v29 = v32;
      if (!v17)
      {
        goto LABEL_43;
      }
    }

    else
    {

      v29 = 0;
      if (!v31)
      {
LABEL_43:

        return;
      }
    }

    v33 = v29;
    v17();
    v29 = v33;
    goto LABEL_43;
  }

  v3 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v3)
  {
    goto LABEL_30;
  }

LABEL_6:
  v4 = (v8 & 0xC000000000000001);
  v9 = 4;
  while (1)
  {
    v10 = v9 - 4;
    if (!v4)
    {
      break;
    }

    v11 = MEMORY[0x1C694A320](v9 - 4, v8);
    v12 = (v9 - 3);
    if (__OFADD__(v10, 1))
    {
      goto LABEL_26;
    }

LABEL_14:
    v32 = v11;
    v13 = [v11 identifier];
    if (v13)
    {
      v14 = v13;
      sub_1C5626E40(0, &qword_1EC16CFF0, 0x1E696F280);
      v15 = v6;
      v16 = sub_1C584FAC0();

      if (v16)
      {

        v17 = v31;
        goto LABEL_39;
      }
    }

    ++v9;
    if (v12 == v3)
    {
      goto LABEL_30;
    }
  }

  if (v10 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_27;
  }

  v11 = *(v8 + 8 * v9);
  v12 = (v9 - 3);
  if (!__OFADD__(v10, 1))
  {
    goto LABEL_14;
  }

LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  swift_once();
LABEL_18:
  v18 = sub_1C584F2C0();
  __swift_project_value_buffer(v18, qword_1EC18FAC8);
  v19 = v3;
  v20 = sub_1C584F2A0();
  v21 = sub_1C584F9B0();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    *v22 = 138412290;
    if (v3)
    {
      v24 = v3;
      v25 = _swift_stdlib_bridgeErrorToNSError();
      v26 = v25;
    }

    else
    {
      v25 = 0;
      v26 = 0;
    }

    *(v22 + 4) = v25;
    *v23 = v26;
    _os_log_impl(&dword_1C5620000, v20, v21, "mapItem fetching error:%@", v22, 0xCu);
    sub_1C567CCE0(v23);
    MEMORY[0x1C694B7A0](v23, -1, -1);
    MEMORY[0x1C694B7A0](v22, -1, -1);
  }

  if (v4)
  {
    (v4)(0, v3);
  }
}

char *sub_1C567BEFC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_21;
  }

  v8 = a4;
  v4 = a3;
  v7 = a2;
  v12 = *v5;
  v5 = (*v5 & 0xFFFFFFFFFFFFFF8);
  v9 = v5 + 4;
  v6 = &v5[a1 + 4];
  sub_1C5626E40(0, &qword_1EC16CFF0, 0x1E696F280);
  result = swift_arrayDestroy();
  v14 = __OFSUB__(v4, v11);
  v11 = v4 - v11;
  if (v14)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v11)
  {
    v10 = v12 >> 62;
    if (!(v12 >> 62))
    {
      result = v5[2];
      v15 = &result[-v7];
      if (!__OFSUB__(result, v7))
      {
        goto LABEL_6;
      }

      goto LABEL_24;
    }

LABEL_22:
    result = sub_1C584FB90();
    v15 = &result[-v7];
    if (!__OFSUB__(result, v7))
    {
LABEL_6:
      v16 = &v6[v4];
      v17 = &v9[v7];
      if (v16 != v17 || v16 >= &v17[8 * v15])
      {
        memmove(v16, v17, 8 * v15);
      }

      if (v10)
      {
        result = sub_1C584FB90();
      }

      else
      {
        result = v5[2];
      }

      if (!__OFADD__(result, v11))
      {
        v5[2] = &result[v11];
        goto LABEL_17;
      }

LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      return result;
    }

LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_17:
  if (v4 > 0)
  {
    *v6 = v8;
    result = v8;
    if (v4 != 1)
    {
      goto LABEL_26;
    }
  }

  return result;
}

char *sub_1C567C028(uint64_t a1, uint64_t a2, void *a3)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = a3;
    v5 = a2;
    v6 = a1;
    v7 = *v4;
    v8 = *v4 >> 62;
    if (!v8)
    {
      result = *((*v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  result = sub_1C584FB90();
  if (result < v5)
  {
    goto LABEL_15;
  }

LABEL_4:
  v10 = v5 - v6;
  if (__OFSUB__(v5, v6))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v11 = 1 - v10;
  if (__OFSUB__(1, v10))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v8)
  {
    v12 = sub_1C584FB90();
  }

  else
  {
    v12 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v13 = __OFADD__(v12, v11);
  result = (v12 + v11);
  if (v13)
  {
    goto LABEL_18;
  }

  sub_1C5640E88(result);

  return sub_1C567BEFC(v6, v5, 1, v3);
}

void sub_1C567C114(uint64_t a1, uint64_t a2)
{
  if (!a2 && a1)
  {
    v4 = *(v2 + 16);
    v3 = *(v2 + 24);

    sub_1C567B388();
    v6 = v5;
    if (v4)
    {
      v4(v5, a1);
    }

    else
    {
    }
  }
}

void sub_1C567C1A8(uint64_t a1, id a2)
{
  v3 = v2[2];
  v4 = v2[3];
  v5 = v2[4];
  if (a2)
  {
    v7 = a2;
    if (qword_1EC17CBC0 != -1)
    {
      swift_once();
    }

    v8 = sub_1C584F2C0();
    __swift_project_value_buffer(v8, qword_1EC18FAC8);
    v9 = a2;
    v10 = v3;
    v11 = sub_1C584F2A0();
    v12 = sub_1C584F9B0();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *v13 = 134218242;
      *(v13 + 4) = [v10 muid];

      *(v13 + 12) = 2112;
      v15 = a2;
      v16 = _swift_stdlib_bridgeErrorToNSError();
      *(v13 + 14) = v16;
      *v14 = v16;
      _os_log_impl(&dword_1C5620000, v11, v12, "Error downloading map item with identifier:%llu. Error: %@", v13, 0x16u);
      sub_1C567CCE0(v14);
      MEMORY[0x1C694B7A0](v14, -1, -1);
      MEMORY[0x1C694B7A0](v13, -1, -1);

      if (!v4)
      {
LABEL_22:
        v29 = a2;

LABEL_24:

        return;
      }
    }

    else
    {

      if (!v4)
      {
        goto LABEL_22;
      }
    }

    v28 = a2;
    v4(0, a2);

    goto LABEL_22;
  }

  if (a1)
  {
    v17 = sub_1C567A9F4(a1);
    if (v17)
    {
      v18 = v17 & 0xFFFFFFFFFFFFFF8;
      if (v17 >> 62)
      {
        v35 = v17;
        v36 = sub_1C584FB90();
        v17 = v35;
        if (v36)
        {
          goto LABEL_11;
        }
      }

      else if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_11:
        if ((v17 & 0xC000000000000001) != 0)
        {
          v19 = MEMORY[0x1C694A320](0);
        }

        else
        {
          if (!*(v18 + 16))
          {
            __break(1u);
            goto LABEL_50;
          }

          v19 = *(v17 + 32);
        }

        v43 = v19;
        v20 = [v19 _geoMapItem];
        if (v20)
        {
          v21 = v20;

          v22 = [v21 _evCharger];
          swift_unknownObjectRelease();
          if (!v22)
          {
            if (qword_1EC17CBC0 != -1)
            {
              swift_once();
            }

            v30 = sub_1C584F2C0();
            __swift_project_value_buffer(v30, qword_1EC18FAC8);
            v31 = v3;
            v32 = sub_1C584F2A0();
            v33 = sub_1C584F9B0();
            if (os_log_type_enabled(v32, v33))
            {
              v34 = swift_slowAlloc();
              *v34 = 134217984;
              *(v34 + 4) = [v31 muid];

              _os_log_impl(&dword_1C5620000, v32, v33, "downloaded mapItem doesn't have charger availability information. mapItem identifier:%llu ", v34, 0xCu);
              MEMORY[0x1C694B7A0](v34, -1, -1);
            }

            else
            {

              v32 = v31;
            }

            if (v4)
            {
              v4(0, 0);
            }

            goto LABEL_34;
          }

          if (qword_1EC17CBC0 == -1)
          {
LABEL_17:
            v23 = sub_1C584F2C0();
            __swift_project_value_buffer(v23, qword_1EC18FAC8);
            v24 = v3;
            v25 = sub_1C584F2A0();
            v26 = sub_1C584F990();
            if (os_log_type_enabled(v25, v26))
            {
              v27 = swift_slowAlloc();
              *v27 = 134217984;
              *(v27 + 4) = [v24 muid];

              _os_log_impl(&dword_1C5620000, v25, v26, "downloaded new availability for muid: %llu", v27, 0xCu);
              MEMORY[0x1C694B7A0](v27, -1, -1);

              if (!v4)
              {
                goto LABEL_34;
              }
            }

            else
            {

              if (!v4)
              {
LABEL_34:
                v29 = v43;
LABEL_35:

                goto LABEL_24;
              }
            }

            v42 = v43;
            v4(v43, 0);

            v29 = v42;
            goto LABEL_35;
          }

LABEL_50:
          swift_once();
          goto LABEL_17;
        }

        __break(1u);
        return;
      }
    }
  }

  if (qword_1EC17CBC0 != -1)
  {
    swift_once();
  }

  v37 = sub_1C584F2C0();
  __swift_project_value_buffer(v37, qword_1EC18FAC8);
  v38 = v3;
  v39 = sub_1C584F2A0();
  v40 = sub_1C584F9B0();
  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    *v41 = 134217984;
    *(v41 + 4) = [v38 muid];

    _os_log_impl(&dword_1C5620000, v39, v40, "refresh ticket returned no error and no mapItem. mapItem identifier:%llu", v41, 0xCu);
    MEMORY[0x1C694B7A0](v41, -1, -1);

    if (!v4)
    {
      return;
    }
  }

  else
  {

    if (!v4)
    {
      return;
    }
  }

  v4(0, 0);
}

uint64_t objectdestroy_11Tm()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 32);
  }

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

void sub_1C567C810(uint64_t a1, id a2)
{
  v3 = v2[2];
  v4 = v2[3];
  v5 = v2[4];
  if (a2)
  {
    v7 = a2;
    if (qword_1EC17CBC0 != -1)
    {
      swift_once();
    }

    v8 = sub_1C584F2C0();
    __swift_project_value_buffer(v8, qword_1EC18FAC8);
    v9 = a2;
    v10 = v3;
    v11 = sub_1C584F2A0();
    v12 = sub_1C584F9B0();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *v13 = 134218242;
      *(v13 + 4) = [v10 muid];

      *(v13 + 12) = 2112;
      v15 = a2;
      v16 = _swift_stdlib_bridgeErrorToNSError();
      *(v13 + 14) = v16;
      *v14 = v16;
      _os_log_impl(&dword_1C5620000, v11, v12, "Error downloading map item with identifier:%llu. Error: %@", v13, 0x16u);
      sub_1C567CCE0(v14);
      MEMORY[0x1C694B7A0](v14, -1, -1);
      MEMORY[0x1C694B7A0](v13, -1, -1);

      if (!v4)
      {
LABEL_21:
        v25 = a2;

LABEL_23:

        return;
      }
    }

    else
    {

      if (!v4)
      {
        goto LABEL_21;
      }
    }

    v26 = a2;
    v4(0, a2);

    goto LABEL_21;
  }

  if (a1)
  {
    v17 = sub_1C567A9F4(a1);
    if (v17)
    {
      v18 = v17 & 0xFFFFFFFFFFFFFF8;
      if (v17 >> 62)
      {
        v27 = v17;
        v28 = sub_1C584FB90();
        v17 = v27;
        if (v28)
        {
          goto LABEL_11;
        }
      }

      else if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_11:
        if ((v17 & 0xC000000000000001) != 0)
        {
          v19 = MEMORY[0x1C694A320](0);
LABEL_14:
          v35 = v19;

          if (qword_1EC17CBC0 != -1)
          {
            swift_once();
          }

          v20 = sub_1C584F2C0();
          __swift_project_value_buffer(v20, qword_1EC18FAC8);
          v21 = v3;
          v22 = sub_1C584F2A0();
          v23 = sub_1C584F990();
          if (os_log_type_enabled(v22, v23))
          {
            v24 = swift_slowAlloc();
            *v24 = 134217984;
            *(v24 + 4) = [v21 muid];

            _os_log_impl(&dword_1C5620000, v22, v23, "Fetched mapItem for nearby places for muid: %llu", v24, 0xCu);
            MEMORY[0x1C694B7A0](v24, -1, -1);

            if (v4)
            {
LABEL_18:
              v34 = v35;
              v4(v35, 0);

              v25 = v34;
              goto LABEL_26;
            }
          }

          else
          {

            if (v4)
            {
              goto LABEL_18;
            }
          }

          v25 = v35;
LABEL_26:

          goto LABEL_23;
        }

        if (*(v18 + 16))
        {
          v19 = *(v17 + 32);
          goto LABEL_14;
        }

        __break(1u);
        return;
      }
    }
  }

  if (qword_1EC17CBC0 != -1)
  {
    swift_once();
  }

  v29 = sub_1C584F2C0();
  __swift_project_value_buffer(v29, qword_1EC18FAC8);
  v30 = v3;
  v31 = sub_1C584F2A0();
  v32 = sub_1C584F9B0();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    *v33 = 134217984;
    *(v33 + 4) = [v30 muid];

    _os_log_impl(&dword_1C5620000, v31, v32, "refresh ticket returned no error and no mapItem. mapItem identifier:%llu", v33, 0xCu);
    MEMORY[0x1C694B7A0](v33, -1, -1);

    if (!v4)
    {
      return;
    }
  }

  else
  {

    if (!v4)
    {
      return;
    }
  }

  v4(0, 0);
}

uint64_t sub_1C567CCE0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC16E670, &qword_1C586A030);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C567CD48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v3 = a3;
  v6 = a2;
  v10 = *v4;
  v4 = (*v4 & 0xFFFFFFFFFFFFFF8);
  v7 = v4 + 4;
  v5 = &v4[a1 + 4];
  sub_1C5626E40(0, &unk_1EC16CF70, 0x1E696F270);
  result = swift_arrayDestroy();
  v12 = __OFSUB__(v3, v9);
  v9 = v3 - v9;
  if (v12)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v9)
  {
    goto LABEL_17;
  }

  v8 = v10 >> 62;
  if (!(v10 >> 62))
  {
    result = v4[2];
    v13 = result - v6;
    if (!__OFSUB__(result, v6))
    {
      goto LABEL_6;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_21:
  result = sub_1C584FB90();
  v13 = result - v6;
  if (__OFSUB__(result, v6))
  {
    goto LABEL_23;
  }

LABEL_6:
  v14 = (v5 + 8 * v3);
  v15 = &v7[v6];
  if (v14 != v15 || v14 >= &v15[8 * v13])
  {
    memmove(v14, v15, 8 * v13);
  }

  if (v8)
  {
    result = sub_1C584FB90();
  }

  else
  {
    result = v4[2];
  }

  if (__OFADD__(result, v9))
  {
    goto LABEL_24;
  }

  v4[2] = result + v9;
LABEL_17:
  if (v3 > 0)
  {
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_1C567CE58(uint64_t a1, uint64_t a2)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = a2;
    v4 = a1;
    v5 = *v3;
    v6 = *v3 >> 62;
    if (!v6)
    {
      result = *((*v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  result = sub_1C584FB90();
  if (result < v2)
  {
    goto LABEL_15;
  }

LABEL_4:
  if (__OFSUB__(v2, v4))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v4 - v2;
  if (__OFSUB__(0, v2 - v4))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v6)
  {
    v9 = sub_1C584FB90();
  }

  else
  {
    v9 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v10 = __OFADD__(v9, v8);
  result = v9 + v8;
  if (v10)
  {
    goto LABEL_18;
  }

  sub_1C5640E88(result);

  return sub_1C567CD48(v4, v2, 0);
}

id BoxLayout.__allocating_init(container:)()
{
  v1 = objc_allocWithZone(v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16E940, &qword_1C586A750);
  swift_unknownObjectRetain();
  sub_1C56236C4();
  v7[1] = MEMORY[0x1E69E7CC0];
  v2 = *MEMORY[0x1E69DC5C0];
  v3 = *(MEMORY[0x1E69DC5C0] + 16);
  v8 = vdupq_n_s64(0xC0000000uLL);
  v9 = v2;
  v10 = v3;
  *&v1[OBJC_IVAR___MUBoxLayoutInternal_builder] = sub_1C562370C(v7);

  v5 = sub_1C562389C(v4, &off_1F44C6BC0);
  swift_unknownObjectRelease();
  return v5;
}

id BoxLayout.init(container:)()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16E940, &qword_1C586A750);
  swift_unknownObjectRetain();
  sub_1C56236C4();
  v6[1] = MEMORY[0x1E69E7CC0];
  v1 = *MEMORY[0x1E69DC5C0];
  v2 = *(MEMORY[0x1E69DC5C0] + 16);
  v7 = vdupq_n_s64(0xC0000000uLL);
  v8 = v1;
  v9 = v2;
  *(v0 + OBJC_IVAR___MUBoxLayoutInternal_builder) = sub_1C562370C(v6);

  v4 = sub_1C562389C(v3, &off_1F44C6BC0);
  swift_unknownObjectRelease();
  return v4;
}

uint64_t sub_1C567D1F4()
{
  v1 = *(v0 + OBJC_IVAR___MUBoxLayoutInternal_builder);
  sub_1C5623A68(v4);
  Strong = swift_unknownObjectWeakLoadStrong();
  sub_1C567D244(v4);
  return Strong;
}

uint64_t sub_1C567D30C()
{
  v1 = *(v0 + OBJC_IVAR___MUBoxLayoutInternal_builder);
  sub_1C5623A68(v5);
  swift_unknownObjectWeakAssign();
  sub_1C567D378(v5, v4);
  sub_1C5623B40(v4, v2);
  swift_unknownObjectRelease();
  return sub_1C567D244(v5);
}

uint64_t sub_1C567D3B0@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x70))();
  *a2 = result;
  return result;
}

uint64_t sub_1C567D40C(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x78);
  v4 = swift_unknownObjectRetain();
  return v3(v4);
}

void (*sub_1C567D470(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x90uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 136) = *(v1 + OBJC_IVAR___MUBoxLayoutInternal_builder);
  sub_1C5623A68(v3);
  Strong = swift_unknownObjectWeakLoadStrong();
  sub_1C567D244(v4);
  *(v4 + 128) = Strong;
  return sub_1C567D50C;
}

void sub_1C567D50C(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  v4 = *(*a1 + 136);
  if (a2)
  {
    v5 = *(*a1 + 128);
    swift_unknownObjectRetain();
    sub_1C5623A68(v2);
    v6 = swift_unknownObjectWeakAssign();
    sub_1C567D378(v6, (v2 + 8));
    sub_1C5623B40((v2 + 8), v7);
    swift_unknownObjectRelease();
    sub_1C567D244(v2);
    v8 = v2[16];
    swift_unknownObjectRelease();
  }

  else
  {
    sub_1C5623A68(*a1);
    v9 = swift_unknownObjectWeakAssign();
    sub_1C567D378(v9, (v2 + 8));
    sub_1C5623B40((v2 + 8), v10);
    swift_unknownObjectRelease();
    sub_1C567D244(v2);
  }

  free(v2);
}

uint64_t sub_1C567D5D4()
{
  v1 = *(v0 + OBJC_IVAR___MUBoxLayoutInternal_builder);
  sub_1C5623A68(v4);
  v2 = v4[1];

  sub_1C567D244(v4);
  return v2;
}

uint64_t sub_1C567D624(uint64_t a1)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = a1 + 32;
    do
    {
      sub_1C567D708(v4, v10);
      sub_1C56250A4(v10, v9);
      sub_1C567D740(v10);
      Strong = swift_unknownObjectWeakLoadStrong();
      sub_1C56260B4(v9);
      if (Strong)
      {
        [Strong _mapsui_disableTranslatesAutoresizingMaskIntoConstraints];
        swift_unknownObjectRelease();
      }

      v4 += 72;
      --v3;
    }

    while (v3);
  }

  v6 = *(v1 + OBJC_IVAR___MUBoxLayoutInternal_builder);
  sub_1C5623A68(v10);

  v11 = a1;
  sub_1C567D378(v10, v9);
  sub_1C5623B40(v9, v7);
  return sub_1C567D244(v10);
}

void (*sub_1C567D770(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x50uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(v1 + OBJC_IVAR___MUBoxLayoutInternal_builder);
  sub_1C5623A68(v3);
  v6 = *(v4 + 8);

  sub_1C567D244(v4);
  *(v4 + 64) = v6;
  return sub_1C567D80C;
}

void sub_1C567D80C(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = (*a1 + 64);
  v4 = *(*a1 + 72);
  if (a2)
  {

    sub_1C567D624(v5);
    v6 = *v3;
  }

  else
  {
    sub_1C567D624(*v3);
  }

  free(v2);
}

uint64_t sub_1C567D870@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR___MUBoxLayoutInternal_builder);
  sub_1C5623A68(v6);
  v4 = v6[2];
  result = sub_1C567D244(v6);
  *a1 = v4;
  return result;
}

uint64_t sub_1C567D8BC(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(v1 + OBJC_IVAR___MUBoxLayoutInternal_builder);
  sub_1C5623A68(v7);
  v8 = v2;
  sub_1C567D378(v7, v6);
  sub_1C5623B40(v6, v4);
  return sub_1C567D244(v7);
}

void (*sub_1C567D918(uint64_t *a1))(uint64_t *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x90uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 128) = *(v1 + OBJC_IVAR___MUBoxLayoutInternal_builder);
  sub_1C5623A68(v3);
  v5 = *(v4 + 16);
  sub_1C567D244(v4);
  *(v4 + 136) = v5;
  return sub_1C567D9AC;
}

void sub_1C567D9AC(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 128);
  v3 = *(*a1 + 136);
  sub_1C5623A68(*a1);
  v1[2] = v3;
  sub_1C567D378(v1, (v1 + 8));
  sub_1C5623B40((v1 + 8), v4);
  sub_1C567D244(v1);

  free(v1);
}

uint64_t sub_1C567DA7C()
{
  v1 = *(v0 + OBJC_IVAR___MUBoxLayoutInternal_builder);
  sub_1C5623A68(v4);
  v2 = sub_1C57243F4();
  sub_1C567D244(v4);
  return v2;
}

uint64_t sub_1C567DB5C(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR___MUBoxLayoutInternal_builder);
  sub_1C5623A68(v7);
  sub_1C572440C(a1);
  sub_1C567D378(v7, v6);
  sub_1C5623B40(v6, v4);
  return sub_1C567D244(v7);
}

uint64_t sub_1C567DBD4@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0xB8))();
  *a2 = result;
  return result;
}

void (*sub_1C567DC88(uint64_t *a1))(uint64_t *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x90uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 136) = *(v1 + OBJC_IVAR___MUBoxLayoutInternal_builder);
  sub_1C5623A68(v3);
  v5 = sub_1C57243F4();
  sub_1C567D244(v4);
  *(v4 + 128) = v5;
  return sub_1C567DD24;
}

void sub_1C567DD24(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 128);
  v3 = *(*a1 + 136);
  sub_1C5623A68(*a1);
  sub_1C572440C(v2);
  sub_1C567D378(v1, v1 + 64);
  sub_1C5623B40(v1 + 64, v4);
  sub_1C567D244(v1);

  free(v1);
}

uint64_t sub_1C567DE04()
{
  v1 = *(v0 + OBJC_IVAR___MUBoxLayoutInternal_builder);
  sub_1C5623A68(v4);
  v2 = sub_1C5724830();
  sub_1C567D244(v4);
  return v2 & 1;
}

uint64_t sub_1C567DEE4(char a1)
{
  v3 = *(v1 + OBJC_IVAR___MUBoxLayoutInternal_builder);
  sub_1C5623A68(v7);
  sub_1C5724854(a1);
  sub_1C567D378(v7, v6);
  sub_1C5623B40(v6, v4);
  return sub_1C567D244(v7);
}

uint64_t sub_1C567DF5C@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0xD0))();
  *a2 = result & 1;
  return result;
}

void (*sub_1C567E014(uint64_t *a1))(uint64_t *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x90uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 128) = *(v1 + OBJC_IVAR___MUBoxLayoutInternal_builder);
  sub_1C5623A68(v3);
  v5 = sub_1C5724830();
  sub_1C567D244(v4);
  *(v4 + 136) = v5 & 1;
  return sub_1C567E0B4;
}

void sub_1C567E0B4(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 136);
  v3 = *(*a1 + 128);
  sub_1C5623A68(*a1);
  sub_1C5724854(v2);
  sub_1C567D378(v1, v1 + 64);
  sub_1C5623B40(v1 + 64, v4);
  sub_1C567D244(v1);

  free(v1);
}

float sub_1C567E1A0()
{
  v1 = *(v0 + OBJC_IVAR___MUBoxLayoutInternal_builder);
  sub_1C5623A68(v4);
  v2 = sub_1C5724800();
  sub_1C567D244(v4);
  return v2;
}

uint64_t sub_1C567E290(float a1)
{
  v3 = *(v1 + OBJC_IVAR___MUBoxLayoutInternal_builder);
  sub_1C5623A68(v7);
  sub_1C57248B8(a1);
  sub_1C567D378(v7, v6);
  sub_1C5623B40(v6, v4);
  return sub_1C567D244(v7);
}

void (*sub_1C567E3C4(uint64_t *a1))(uint64_t *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x90uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 128) = *(v1 + OBJC_IVAR___MUBoxLayoutInternal_builder);
  sub_1C5623A68(v3);
  v5 = sub_1C5724800();
  sub_1C567D244(v4);
  *(v4 + 136) = v5;
  return sub_1C567E468;
}

void sub_1C567E468(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 136);
  v3 = *(*a1 + 128);
  sub_1C5623A68(*a1);
  sub_1C57248B8(v2);
  sub_1C567D378(v1, v1 + 64);
  sub_1C5623B40(v1 + 64, v4);
  sub_1C567D244(v1);

  free(v1);
}

uint64_t sub_1C567E4EC@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR___MUBoxLayoutInternal_builder);
  sub_1C5623A68(v6);
  v4 = v6[3];
  result = sub_1C567D244(v6);
  *a1 = v4;
  return result;
}

uint64_t sub_1C567E538(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(v1 + OBJC_IVAR___MUBoxLayoutInternal_builder);
  sub_1C5623A68(v7);
  v8 = v2;
  sub_1C567D378(v7, v6);
  sub_1C5623B40(v6, v4);
  return sub_1C567D244(v7);
}

void (*sub_1C567E594(uint64_t *a1))(uint64_t *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x90uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 128) = *(v1 + OBJC_IVAR___MUBoxLayoutInternal_builder);
  sub_1C5623A68(v3);
  v5 = *(v4 + 24);
  sub_1C567D244(v4);
  *(v4 + 136) = v5;
  return sub_1C567E628;
}

void sub_1C567E628(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 128);
  v3 = *(*a1 + 136);
  sub_1C5623A68(*a1);
  v1[3] = v3;
  sub_1C567D378(v1, (v1 + 8));
  sub_1C5623B40((v1 + 8), v4);
  sub_1C567D244(v1);

  free(v1);
}

uint64_t sub_1C567E6F8()
{
  v1 = *(v0 + OBJC_IVAR___MUBoxLayoutInternal_builder);
  sub_1C5623A68(v4);
  v2 = sub_1C57243F4();
  sub_1C567D244(v4);
  return v2;
}

uint64_t sub_1C567E7D8(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR___MUBoxLayoutInternal_builder);
  sub_1C5623A68(v7);
  sub_1C572440C(a1);
  sub_1C567D378(v7, v6);
  sub_1C5623B40(v6, v4);
  return sub_1C567D244(v7);
}

uint64_t sub_1C567E850@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x118))();
  *a2 = result;
  return result;
}

void (*sub_1C567E914(uint64_t *a1))(uint64_t *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x90uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 136) = *(v1 + OBJC_IVAR___MUBoxLayoutInternal_builder);
  sub_1C5623A68(v3);
  v5 = sub_1C57243F4();
  sub_1C567D244(v4);
  *(v4 + 128) = v5;
  return sub_1C567E9B0;
}

void sub_1C567E9B0(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 128);
  v3 = *(*a1 + 136);
  sub_1C5623A68(*a1);
  sub_1C572440C(v2);
  sub_1C567D378(v1, v1 + 64);
  sub_1C5623B40(v1 + 64, v4);
  sub_1C567D244(v1);

  free(v1);
}

uint64_t sub_1C567EA90()
{
  v1 = *(v0 + OBJC_IVAR___MUBoxLayoutInternal_builder);
  sub_1C5623A68(v4);
  v2 = sub_1C5724830();
  sub_1C567D244(v4);
  return v2 & 1;
}

uint64_t sub_1C567EB70(char a1)
{
  v3 = *(v1 + OBJC_IVAR___MUBoxLayoutInternal_builder);
  sub_1C5623A68(v7);
  sub_1C5724854(a1);
  sub_1C567D378(v7, v6);
  sub_1C5623B40(v6, v4);
  return sub_1C567D244(v7);
}

uint64_t sub_1C567EBE8@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x130))();
  *a2 = result & 1;
  return result;
}

void (*sub_1C567ECB0(uint64_t *a1))(uint64_t *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x90uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 128) = *(v1 + OBJC_IVAR___MUBoxLayoutInternal_builder);
  sub_1C5623A68(v3);
  v5 = sub_1C5724830();
  sub_1C567D244(v4);
  *(v4 + 136) = v5 & 1;
  return sub_1C567ED50;
}

void sub_1C567ED50(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 136);
  v3 = *(*a1 + 128);
  sub_1C5623A68(*a1);
  sub_1C5724854(v2);
  sub_1C567D378(v1, v1 + 64);
  sub_1C5623B40(v1 + 64, v4);
  sub_1C567D244(v1);

  free(v1);
}

float sub_1C567EE3C()
{
  v1 = *(v0 + OBJC_IVAR___MUBoxLayoutInternal_builder);
  sub_1C5623A68(v4);
  v2 = sub_1C5724800();
  sub_1C567D244(v4);
  return v2;
}

uint64_t sub_1C567EF2C(float a1)
{
  v3 = *(v1 + OBJC_IVAR___MUBoxLayoutInternal_builder);
  sub_1C5623A68(v7);
  sub_1C57248B8(a1);
  sub_1C567D378(v7, v6);
  sub_1C5623B40(v6, v4);
  return sub_1C567D244(v7);
}

void (*sub_1C567F070(uint64_t *a1))(uint64_t *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x90uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 128) = *(v1 + OBJC_IVAR___MUBoxLayoutInternal_builder);
  sub_1C5623A68(v3);
  v5 = sub_1C5724800();
  sub_1C567D244(v4);
  *(v4 + 136) = v5;
  return sub_1C567F114;
}

void sub_1C567F114(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 136);
  v3 = *(*a1 + 128);
  sub_1C5623A68(*a1);
  sub_1C57248B8(v2);
  sub_1C567D378(v1, v1 + 64);
  sub_1C5623B40(v1 + 64, v4);
  sub_1C567D244(v1);

  free(v1);
}

double sub_1C567F20C()
{
  v1 = *(v0 + OBJC_IVAR___MUBoxLayoutInternal_builder);
  sub_1C5623A68(v4);
  v2 = *&v4[4];
  sub_1C567D244(v4);
  return v2;
}

uint64_t sub_1C567F30C(double a1, double a2, double a3, double a4)
{
  v9 = *(v4 + OBJC_IVAR___MUBoxLayoutInternal_builder);
  sub_1C5623A68(v13);
  v14 = a1;
  v15 = a2;
  v16 = a3;
  v17 = a4;
  sub_1C567D378(v13, v12);
  sub_1C5623B40(v12, v10);
  return sub_1C567D244(v13);
}

void sub_1C567F388(void **a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x160))();
  *(a2 + 8) = v3;
  *(a2 + 16) = v4;
  *(a2 + 24) = v5;
}

void (*sub_1C567F454(uint64_t *a1))(uint64_t *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0xA8uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 160) = *(v1 + OBJC_IVAR___MUBoxLayoutInternal_builder);
  sub_1C5623A68(v3);
  v6 = v4[2];
  v7 = v4[3];
  sub_1C567D244(v4);
  v4[8] = v6;
  v4[9] = v7;
  return sub_1C567F4F8;
}

void sub_1C567F4F8(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 160);
  v4 = *(*a1 + 144);
  v5 = *(*a1 + 128);
  sub_1C5623A68(*a1);
  v1[2] = v5;
  v1[3] = v4;
  sub_1C567D378(v1, (v1 + 4));
  sub_1C5623B40((v1 + 4), v3);
  sub_1C567D244(v1);

  free(v1);
}

uint64_t sub_1C567F56C()
{
  sub_1C5662408();
  sub_1C584F5F0();
  v2 = *(v0 + 8);
  v4 = *(v0 + 24);
  type metadata accessor for NSDirectionalEdgeInsets(0);
  sub_1C5682E20(&qword_1EC16DB78, type metadata accessor for NSDirectionalEdgeInsets);
  sub_1C584F5F0();
  v3 = *(v0 + 40);
  type metadata accessor for UIOffset(0);
  sub_1C5682E20(&qword_1EC16E950, type metadata accessor for UIOffset);
  sub_1C584F5F0();
  *&v3 = *(v0 + 56);
  sub_1C5682E68();
  sub_1C584F5F0();
  *&v3 = *(v0 + 64);
  return sub_1C584F5F0();
}

uint64_t sub_1C567F6C4()
{
  sub_1C584FEA0();
  sub_1C567F56C();
  return sub_1C584FEF0();
}

uint64_t sub_1C567F708()
{
  sub_1C584FEA0();
  sub_1C567F56C();
  return sub_1C584FEF0();
}

uint64_t sub_1C567F748()
{
  v1 = v0;
  sub_1C56250A4(v0, v47);
  v48 = 0;
  v2 = *(v0 + 8);
  v3 = *(v2 + 16);
  v4 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    v36[0] = MEMORY[0x1E69E7CC0];
    sub_1C5675B20(0, v3, 0);
    v4 = v36[0];
    v5 = v2 + 32;
    do
    {
      sub_1C567D708(v5, v38);
      sub_1C56250A4(v38, v49);
      LOBYTE(v50) = 0;
      v6 = v39;
      v7 = v40;
      v8 = v41;
      v9 = v42;
      v10 = v43;
      v11 = v44;
      v57 = v45;
      sub_1C5633434();
      sub_1C563E43C(v49, &v57, &type metadata for LayoutItemSpecification, v56, v6, v7, v8, v9, v10, v11);
      sub_1C567D740(v38);
      v36[0] = v4;
      v13 = *(v4 + 16);
      v12 = *(v4 + 24);
      if (v13 >= v12 >> 1)
      {
        sub_1C5675B20((v12 > 1), v13 + 1, 1);
        v4 = v36[0];
      }

      *(v4 + 16) = v13 + 1;
      sub_1C5683AE4(v56, v4 + 80 * v13 + 32);
      v5 += 72;
      --v3;
    }

    while (v3);
  }

  v56[0] = v1[2];
  v14 = v1[4];
  v15 = v1[5];
  v16 = v1[6];
  v17 = v1[7];
  sub_1C5688A00(v47, 1, v4, v56, v38, v14, v15, v16, v17);
  sub_1C56250A4(v1, v36);
  v37 = 0;
  v18 = *(v1 + 1);
  v19 = *(v18 + 16);
  v20 = MEMORY[0x1E69E7CC0];
  if (v19)
  {
    v34 = v15;
    v35 = v14;
    v57 = MEMORY[0x1E69E7CC0];
    sub_1C5675B20(0, v19, 0);
    v21 = v57;
    v22 = v18 + 32;
    do
    {
      sub_1C567D708(v22, v49);
      sub_1C56250A4(v49, v47);
      v48 = 0;
      v23 = *&v49[1];
      v24 = v50;
      v25 = v51;
      v26 = v52;
      v27 = v53;
      v28 = v54;
      v46 = v55;
      sub_1C5633434();
      sub_1C563E43C(v47, &v46, &type metadata for LayoutItemSpecification, v56, v23, v24, v25, v26, v27, v28);
      sub_1C567D740(v49);
      v57 = v21;
      v30 = *(v21 + 16);
      v29 = *(v21 + 24);
      if (v30 >= v29 >> 1)
      {
        sub_1C5675B20((v29 > 1), v30 + 1, 1);
        v21 = v57;
      }

      *(v21 + 16) = v30 + 1;
      sub_1C5683AE4(v56, v21 + 80 * v30 + 32);
      v22 += 72;
      --v19;
    }

    while (v19);
    v15 = v34;
    v14 = v35;
  }

  else
  {
    v21 = MEMORY[0x1E69E7CC0];
  }

  v49[0] = v1[3];
  sub_1C5688A00(v36, 0, v21, v49, v56, v14, v15, v16, v17);
  v49[0] = v20;
  v31 = sub_1C5687648();
  sub_1C5650E8C(v31);
  v32 = sub_1C5687648();
  sub_1C5650E8C(v32);
  sub_1C5675B40(v56);
  sub_1C5675B40(v38);
  return v49[0];
}

uint64_t sub_1C567FA88(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
LABEL_18:
    v6 = 0;
    return v6 & 1;
  }

  if (v2 && a1 != a2)
  {
    v3 = a1 + 32;
    v4 = a2 + 32;
    while (1)
    {
      sub_1C567D708(v3, v17);
      sub_1C567D708(v4, v10);
      if ((sub_1C5623E2C(v17, v10) & 1) == 0 || (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v18, v11), vceqq_f64(v19, v12)))) & 1) == 0)
      {
        break;
      }

      if (v20 != v13 || v21 != v14)
      {
        break;
      }

      v8 = v15;
      v9 = v22;
      if ((sub_1C563DF98(&v9, &v8) & 1) == 0)
      {
        break;
      }

      v8 = v16;
      v9 = v23;
      v6 = sub_1C563DF98(&v9, &v8);
      sub_1C567D740(v10);
      sub_1C567D740(v17);
      if (v6)
      {
        v3 += 72;
        v4 += 72;
        if (--v2)
        {
          continue;
        }
      }

      return v6 & 1;
    }

    sub_1C567D740(v10);
    sub_1C567D740(v17);
    goto LABEL_18;
  }

  v6 = 1;
  return v6 & 1;
}

uint64_t sub_1C567FBCC(uint64_t a1)
{
  sub_1C5662408();
  sub_1C584F5F0();
  sub_1C5682BC0(a1, *(v1 + 8));
  v4 = *(v1 + 16);
  sub_1C56760A0();
  sub_1C584F5F0();
  v5 = *(v1 + 24);
  sub_1C584F5F0();
  v6 = *(v1 + 32);
  v7 = *(v1 + 48);
  type metadata accessor for NSDirectionalEdgeInsets(0);
  sub_1C5682E20(&qword_1EC16DB78, type metadata accessor for NSDirectionalEdgeInsets);
  return sub_1C584F5F0();
}

uint64_t sub_1C567FCD4()
{
  sub_1C584FEA0();
  sub_1C567FBCC(v1);
  return sub_1C584FEF0();
}

uint64_t sub_1C567FD18()
{
  sub_1C584FEA0();
  sub_1C567FBCC(v1);
  return sub_1C584FEF0();
}

id BoxLayout.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BoxLayout();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t BoxLayout.arrangedLayoutItems.getter()
{
  v1 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x88))();
  v11 = MEMORY[0x1E69E7CC0];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v1 + 32;
    v4 = MEMORY[0x1E69E7CC0];
    do
    {
      sub_1C567D708(v3, v10);
      sub_1C56250A4(v10, v9);
      Strong = swift_unknownObjectWeakLoadStrong();
      sub_1C56260B4(v9);
      v6 = sub_1C567D740(v10);
      if (Strong)
      {
        MEMORY[0x1C6949DF0](v6);
        if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v7 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_1C584F7A0();
        }

        sub_1C584F7E0();
        v4 = v11;
      }

      v3 += 72;
      --v2;
    }

    while (v2);
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return v4;
}

uint64_t BoxLayout.arrangedLayoutItems.setter(unint64_t a1)
{
  v3 = MEMORY[0x1E69E7D40];
  result = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x88))();
  v5 = result;
  if (a1 >> 62)
  {
LABEL_22:
    result = sub_1C584FB90();
    v6 = result;
    if (result)
    {
      goto LABEL_3;
    }

LABEL_23:

    v9 = MEMORY[0x1E69E7CC0];
    return (*((*v3 & *v1) + 0x90))(v9);
  }

  v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v6)
  {
    goto LABEL_23;
  }

LABEL_3:
  if (v6 >= 1)
  {
    v3 = 0;
    v15 = v1;
    v17 = *MEMORY[0x1E69DC5C0];
    v18 = *(MEMORY[0x1E69DC5C0] + 16);
    v7 = *MEMORY[0x1E69DE258];
    v8 = *(MEMORY[0x1E69DE258] + 8);
    v9 = MEMORY[0x1E69E7CC0];
    v16 = vdupq_n_s64(0xFFFFFFFEuLL);
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        MEMORY[0x1C694A320](v3, a1);
      }

      else
      {
        v10 = *(a1 + 32 + 8 * v3);
        swift_unknownObjectRetain();
      }

      swift_unknownObjectRetain();
      sub_1C56236C4();
      v1 = *(v5 + 16);
      if (v1)
      {
        v11 = 0;
        v12 = v5 + 32;
        while ((sub_1C5623E2C(v12, v25) & 1) == 0)
        {
          v11 = (v11 + 1);
          v12 += 72;
          if (v1 == v11)
          {
            goto LABEL_12;
          }
        }

        if (v11 >= *(v5 + 16))
        {
          __break(1u);
          goto LABEL_22;
        }

        sub_1C567D708(v12, v19);
      }

      else
      {
LABEL_12:
        sub_1C56250A4(v25, v19);
        v20 = v17;
        v21 = v18;
        v22 = v7;
        v23 = v8;
        v24 = v16;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = sub_1C5682898(0, v9[2] + 1, 1, v9);
      }

      v14 = v9[2];
      v13 = v9[3];
      if (v14 >= v13 >> 1)
      {
        v9 = sub_1C5682898((v13 > 1), v14 + 1, 1, v9);
      }

      swift_unknownObjectRelease();
      v9[2] = v14 + 1;
      sub_1C5682F88(v19, &v9[9 * v14 + 4]);
      v3 = (v3 + 1);
      sub_1C56260B4(v25);
      if (v3 == v6)
      {

        v1 = v15;
        v3 = MEMORY[0x1E69E7D40];
        return (*((*v3 & *v1) + 0x90))(v9);
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t BoxLayout.addArrangedLayoutItem(_:)()
{
  swift_unknownObjectRetain();
  v2 = sub_1C56236C4();
  v3 = MEMORY[0x1E69E7D40];
  v4 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x88))(v2);
  v5 = v4 + 32;
  v6 = -*(v4 + 16);
  v7 = -1;
  while (v6 + v7 != -1)
  {
    if (++v7 >= *(v4 + 16))
    {
      __break(1u);
      goto LABEL_12;
    }

    v8 = v5 + 72;
    sub_1C567D708(v5, v16);
    v1 = sub_1C5623E2C(v16, v21);
    sub_1C567D740(v16);
    v5 = v8;
    if (v1)
    {

      return sub_1C56260B4(v21);
    }
  }

  sub_1C56250A4(v21, v16);
  v9 = *(MEMORY[0x1E69DC5C0] + 16);
  v17 = *MEMORY[0x1E69DC5C0];
  v18 = v9;
  v19 = *MEMORY[0x1E69DE258];
  v20 = vdupq_n_s64(0xFFFFFFFEuLL);
  v4 = (*((*v3 & *v0) + 0x98))(v15);
  v1 = v10;
  v0 = *v10;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v0;
  if (isUniquelyReferenced_nonNull_native)
  {
    goto LABEL_7;
  }

LABEL_12:
  v0 = sub_1C5682898(0, v0[2] + 1, 1, v0);
  *v1 = v0;
LABEL_7:
  v13 = v0[2];
  v12 = v0[3];
  if (v13 >= v12 >> 1)
  {
    v0 = sub_1C5682898((v12 > 1), v13 + 1, 1, v0);
    *v1 = v0;
  }

  v0[2] = v13 + 1;
  sub_1C5682F88(v16, &v0[9 * v13 + 4]);
  (v4)(v15, 0);
  return sub_1C56260B4(v21);
}

int64_t BoxLayout.removeArrangedLayoutItem(_:)()
{
  swift_unknownObjectRetain();
  sub_1C56236C4();
  v1 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x98))(v6);
  v3 = v2;
  result = sub_1C56829E0(sub_1C5676118);
  v5 = *(*v3 + 16);
  if (v5 < result)
  {
    __break(1u);
  }

  else
  {
    sub_1C56830B0(result, v5);
    v1(v6, 0);
    return sub_1C56260B4(v7);
  }

  return result;
}

uint64_t sub_1C56806B4@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v5 = *(a2 + 16);
  if (v5)
  {
    v6 = result;
    v7 = a2 + 32;
    while (1)
    {
      sub_1C567D708(v7, v9);
      v8 = v6(v9);
      if (v3)
      {
        return sub_1C567D740(v9);
      }

      if (v8)
      {
        return sub_1C5682F88(v9, a3);
      }

      result = sub_1C567D740(v9);
      v7 += 72;
      if (!--v5)
      {
        goto LABEL_6;
      }
    }
  }

  else
  {
LABEL_6:
    *(a3 + 48) = 0;
    *(a3 + 16) = 0u;
    *(a3 + 32) = 0u;
    *a3 = 0u;
    *(a3 + 56) = xmmword_1C586A740;
  }

  return result;
}

uint64_t sub_1C568077C(uint64_t a1)
{
  v2 = v1;
  swift_unknownObjectRetain();
  v4 = sub_1C56236C4();
  v5 = MEMORY[0x1E69E7D40];
  v6 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x88))(v4);
  v7 = *(v6 + 16);
  if (v7)
  {
    v8 = 0;
    v9 = v6 + 32;
    while (1)
    {
      v10 = sub_1C5676CD0(v9);
      if (v10)
      {
        break;
      }

      ++v8;
      v9 += 72;
      if (v7 == v8)
      {
        v8 = 0;
        break;
      }
    }

    v11 = v10 ^ 1;
  }

  else
  {
    v8 = 0;
    v11 = 1;
  }

  v12 = v11 & 1;

  if (v12)
  {
    sub_1C5683170(a1);
    swift_unknownObjectRelease();
    return sub_1C56260B4(v27);
  }

  sub_1C56831D8(a1, v20);
  if ((v21 & 0xFFFFFFFE) == 0x7FFFFFFE)
  {
    sub_1C5683170(v20);
    sub_1C56250A4(v27, v22);
    v13 = *(MEMORY[0x1E69DC5C0] + 16);
    v23 = *MEMORY[0x1E69DC5C0];
    v24 = v13;
    v25 = *MEMORY[0x1E69DE258];
    v26 = vdupq_n_s64(0xFFFFFFFEuLL);
    v14 = (*((*v5 & *v2) + 0x98))(v20);
    v16 = v15;
    v17 = *v15;
    result = swift_isUniquelyReferenced_nonNull_native();
    *v16 = v17;
    if (result)
    {
      if ((v8 & 0x8000000000000000) == 0)
      {
        goto LABEL_13;
      }
    }

    else
    {
      result = sub_1C5682BAC(v17);
      v17 = result;
      *v16 = result;
      if ((v8 & 0x8000000000000000) == 0)
      {
LABEL_13:
        if (v8 < v17[2])
        {
          sub_1C5683248(v22, &v17[9 * v8 + 4]);
          v14(v20, 0);
          swift_unknownObjectRelease();
          sub_1C5683170(a1);
          return sub_1C56260B4(v27);
        }

        goto LABEL_24;
      }
    }

    __break(1u);
LABEL_22:
    result = sub_1C5682BAC(v17);
    v17 = result;
    *v16 = result;
    if ((v8 & 0x8000000000000000) != 0)
    {
      goto LABEL_23;
    }

    goto LABEL_17;
  }

  sub_1C5682F88(v20, v22);
  v14 = (*((*v5 & *v2) + 0x98))(v20);
  v16 = v19;
  v17 = *v19;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v16 = v17;
  if ((result & 1) == 0)
  {
    goto LABEL_22;
  }

  if ((v8 & 0x8000000000000000) != 0)
  {
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_17:
  if (v8 < v17[2])
  {
    sub_1C5683280(v22, &v17[9 * v8 + 4]);
    v14(v20, 0);
    swift_unknownObjectRelease();
    sub_1C5683170(a1);
    sub_1C567D740(v22);
    return sub_1C56260B4(v27);
  }

LABEL_25:
  __break(1u);
  return result;
}

double BoxLayout.padding(forArrangedLayoutItem:)()
{
  swift_unknownObjectRetain();
  v1 = sub_1C56236C4();
  v2 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x88))(v1);
  sub_1C56806B4(sub_1C5676CD0, v2, v10);

  sub_1C56260B4(v9);
  if ((v12[6] & 0xFFFFFFFE) == 0x7FFFFFFELL)
  {
    v3 = *MEMORY[0x1E69DC5C0];
    v4 = *(MEMORY[0x1E69DC5C0] + 8);
    v5 = (MEMORY[0x1E69DC5C0] + 24);
    v6 = *(MEMORY[0x1E69DC5C0] + 16);
  }

  else
  {
    v3 = v11;
    v5 = v12;
  }

  v7 = *v5;
  sub_1C5683170(v10);
  return v3;
}

uint64_t BoxLayout.setPadding(_:forArrangedLayoutItem:)(double a1, double a2, double a3, double a4)
{
  swift_unknownObjectRetain();
  v9 = sub_1C56236C4();
  v10 = (*((*MEMORY[0x1E69E7D40] & *v4) + 0x88))(v9);
  sub_1C56806B4(sub_1C5676CD0, v10, v13);

  sub_1C56260B4(v12);
  if ((v18 & 0xFFFFFFFE) == 0x7FFFFFFE)
  {
    sub_1C56831D8(v13, v12);
    swift_unknownObjectRetain();
    sub_1C568077C(v12);
    return sub_1C5683170(v13);
  }

  else
  {
    v14 = a1;
    v15 = a2;
    v16 = a3;
    v17 = a4;
    swift_unknownObjectRetain();
    return sub_1C568077C(v13);
  }
}

double BoxLayout.offset(forArrangedLayoutItem:)()
{
  swift_unknownObjectRetain();
  v1 = sub_1C56236C4();
  v2 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x88))(v1);
  sub_1C56806B4(sub_1C5676CD0, v2, v10);

  sub_1C56260B4(v9);
  v3 = v12 & 0xFFFFFFFE;
  v4 = *MEMORY[0x1E69DE258];
  v5 = *(MEMORY[0x1E69DE258] + 8);
  if (v3 == 2147483646)
  {
    v6 = *MEMORY[0x1E69DE258];
  }

  else
  {
    v6 = v11;
  }

  if (v3 == 2147483646)
  {
    v7 = *(MEMORY[0x1E69DE258] + 8);
  }

  sub_1C5683170(v10);
  return v6;
}

uint64_t BoxLayout.setOffset(_:forArrangedLayoutItem:)(double a1, double a2)
{
  swift_unknownObjectRetain();
  v5 = sub_1C56236C4();
  v6 = (*((*MEMORY[0x1E69E7D40] & *v2) + 0x88))(v5);
  sub_1C56806B4(sub_1C5676CD0, v6, v9);

  sub_1C56260B4(v8);
  if ((v12 & 0xFFFFFFFE) == 0x7FFFFFFE)
  {
    sub_1C56831D8(v9, v8);
    swift_unknownObjectRetain();
    sub_1C568077C(v8);
    return sub_1C5683170(v9);
  }

  else
  {
    v10 = a1;
    v11 = a2;
    swift_unknownObjectRetain();
    return sub_1C568077C(v9);
  }
}

uint64_t *sub_1C5681100@<X0>(uint64_t *a1@<X8>)
{
  swift_unknownObjectRetain();
  v3 = sub_1C56236C4();
  v4 = MEMORY[0x1E69E7D40];
  v5 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x88))(v3);
  sub_1C56806B4(sub_1C5676CD0, v5, v10);

  sub_1C56260B4(&v9);
  v6 = v11;
  v7 = v11 & 0xFFFFFFFE;
  result = sub_1C5683170(v10);
  if (v7 == 2147483646)
  {
    *a1 = 4294967294;
  }

  else
  {
    v10[0] = v6;
    (*((*v4 & *v1) + 0xA0))(&v9, result);
    return sub_1C5724040(&v9, a1);
  }

  return result;
}

void sub_1C5681278(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  swift_unknownObjectRetain();
  v7 = a1;
  a4(a3);
  swift_unknownObjectRelease();
}

uint64_t sub_1C568130C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_unknownObjectRetain();
  v6 = sub_1C56236C4();
  v7 = (*((*MEMORY[0x1E69E7D40] & *v3) + 0x88))(v6);
  sub_1C56806B4(a2, v7, v10);

  sub_1C56260B4(v9);
  if ((v11 & 0xFFFFFFFE) == 0x7FFFFFFE)
  {
    sub_1C56831D8(v10, v9);
    swift_unknownObjectRetain();
    sub_1C568077C(v9);
    return sub_1C5683170(v10);
  }

  else
  {
    v11 = a3;
    swift_unknownObjectRetain();
    return sub_1C568077C(v10);
  }
}

uint64_t BoxLayout.verticalAlignmentKind(forArrangedLayoutItem:)()
{
  v1 = sub_1C5681100(&v4);
  v2 = v4;
  if ((~v4 & 0xFFFFFFFE) == 0)
  {
    (*((*MEMORY[0x1E69E7D40] & *v0) + 0xA0))(&v5, v1);
    v2 = v5;
  }

  v5 = v2;
  return sub_1C57243F4();
}

uint64_t BoxLayout.setVerticalAlignmentKind(_:forArrangedLayoutItem:)(uint64_t a1)
{
  v3 = sub_1C5681100(v10);
  v4 = MEMORY[0x1E69E7D40];
  if ((~LODWORD(v10[0]) & 0xFFFFFFFE) != 0)
  {
    v12 = v10[0];
  }

  else
  {
    (*((*MEMORY[0x1E69E7D40] & *v1) + 0xA0))(&v12, v3);
  }

  sub_1C572440C(a1);
  swift_unknownObjectRetain();
  v5 = sub_1C56236C4();
  v6 = (*((*v4 & *v1) + 0x88))(v5);
  MEMORY[0x1EEE9AC00](v6, v7);
  sub_1C56806B4(sub_1C5676CD0, v6, v10);

  sub_1C56260B4(v9);
  if ((v11 & 0xFFFFFFFE) == 0x7FFFFFFE)
  {
    sub_1C56831D8(v10, v9);
    swift_unknownObjectRetain();
    sub_1C568077C(v9);
    return sub_1C5683170(v10);
  }

  else
  {
    v11 = v12;
    swift_unknownObjectRetain();
    return sub_1C568077C(v10);
  }
}

uint64_t *BoxLayout.setVerticalAlignmentBoundsContent(_:forArrangedLayoutItem:)(char a1)
{
  result = sub_1C5681100(v8);
  if ((~LODWORD(v8[0]) & 0xFFFFFFFE) != 0)
  {
    v10 = v8[0];
    sub_1C5724854(a1 & 1);
    swift_unknownObjectRetain();
    v4 = sub_1C56236C4();
    v5 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x88))(v4);
    MEMORY[0x1EEE9AC00](v5, v6);
    sub_1C56806B4(sub_1C5676CD0, v5, v8);

    sub_1C56260B4(v7);
    if ((v9 & 0xFFFFFFFE) == 0x7FFFFFFE)
    {
      sub_1C56831D8(v8, v7);
      swift_unknownObjectRetain();
      sub_1C568077C(v7);
      return sub_1C5683170(v8);
    }

    else
    {
      v9 = v10;
      swift_unknownObjectRetain();
      return sub_1C568077C(v8);
    }
  }

  return result;
}

uint64_t *BoxLayout.setVerticalFittingSizePriority(_:forArrangedLayoutItem:)(float a1)
{
  result = sub_1C5681100(v8);
  if ((~LODWORD(v8[0]) & 0xFFFFFFFE) != 0)
  {
    v10 = v8[0];
    sub_1C57248B8(a1);
    swift_unknownObjectRetain();
    v4 = sub_1C56236C4();
    v5 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x88))(v4);
    MEMORY[0x1EEE9AC00](v5, v6);
    sub_1C56806B4(sub_1C5676CD0, v5, v8);

    sub_1C56260B4(v7);
    if ((v9 & 0xFFFFFFFE) == 0x7FFFFFFE)
    {
      sub_1C56831D8(v8, v7);
      swift_unknownObjectRetain();
      sub_1C568077C(v7);
      return sub_1C5683170(v8);
    }

    else
    {
      v9 = v10;
      swift_unknownObjectRetain();
      return sub_1C568077C(v8);
    }
  }

  return result;
}

uint64_t *sub_1C5681B10@<X0>(uint64_t *a1@<X8>)
{
  swift_unknownObjectRetain();
  v3 = sub_1C56236C4();
  v4 = MEMORY[0x1E69E7D40];
  v5 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x88))(v3);
  sub_1C56806B4(sub_1C5676CD0, v5, v10);

  sub_1C56260B4(&v9);
  if ((v11 & 0xFFFFFFFE) == 0x7FFFFFFE)
  {
    result = sub_1C5683170(v10);
    *a1 = 4294967294;
  }

  else
  {
    v7 = v12;
    v8 = sub_1C5683170(v10);
    v10[0] = v7;
    (*((*v4 & *v1) + 0x100))(&v9, v8);
    return sub_1C5724040(&v9, a1);
  }

  return result;
}

BOOL sub_1C5681C70(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *__return_ptr, uint64_t))
{
  swift_unknownObjectRetain();
  v7 = a1;
  a4(&v9, a3);
  swift_unknownObjectRelease();

  return (~v9 & 0xFFFFFFFE) != 0;
}

uint64_t sub_1C5681D38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_unknownObjectRetain();
  v6 = sub_1C56236C4();
  v7 = (*((*MEMORY[0x1E69E7D40] & *v3) + 0x88))(v6);
  sub_1C56806B4(a2, v7, v10);

  sub_1C56260B4(v9);
  if ((v11 & 0xFFFFFFFE) == 0x7FFFFFFE)
  {
    sub_1C56831D8(v10, v9);
    swift_unknownObjectRetain();
    sub_1C568077C(v9);
    return sub_1C5683170(v10);
  }

  else
  {
    v12 = a3;
    swift_unknownObjectRetain();
    return sub_1C568077C(v10);
  }
}

uint64_t BoxLayout.horizontalAlignmentKind(forArrangedLayoutItem:)()
{
  v1 = sub_1C5681B10(&v4);
  v2 = v4;
  if ((~v4 & 0xFFFFFFFE) == 0)
  {
    (*((*MEMORY[0x1E69E7D40] & *v0) + 0x100))(&v5, v1);
    v2 = v5;
  }

  v5 = v2;
  return sub_1C57243F4();
}

uint64_t BoxLayout.setHorizontalAlignmentKind(_:forArrangedLayoutItem:)(uint64_t a1)
{
  v3 = sub_1C5681B10(v10);
  v4 = MEMORY[0x1E69E7D40];
  if ((~LODWORD(v10[0]) & 0xFFFFFFFE) != 0)
  {
    v13 = v10[0];
  }

  else
  {
    (*((*MEMORY[0x1E69E7D40] & *v1) + 0x100))(&v13, v3);
  }

  sub_1C572440C(a1);
  swift_unknownObjectRetain();
  v5 = sub_1C56236C4();
  v6 = (*((*v4 & *v1) + 0x88))(v5);
  MEMORY[0x1EEE9AC00](v6, v7);
  sub_1C56806B4(sub_1C5676CD0, v6, v10);

  sub_1C56260B4(v9);
  if ((v11 & 0xFFFFFFFE) == 0x7FFFFFFE)
  {
    sub_1C56831D8(v10, v9);
    swift_unknownObjectRetain();
    sub_1C568077C(v9);
    return sub_1C5683170(v10);
  }

  else
  {
    v12 = v13;
    swift_unknownObjectRetain();
    return sub_1C568077C(v10);
  }
}

void sub_1C568218C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t))
{
  swift_unknownObjectRetain();
  v9 = a1;
  a5(a3, a4);
  swift_unknownObjectRelease();
}

uint64_t sub_1C5682224(uint64_t a1, void (*a2)(uint64_t *__return_ptr))
{
  a2(&v4);
  if ((~v4 & 0xFFFFFFFE) != 0)
  {
    v2 = sub_1C5724830();
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

uint64_t sub_1C5682294(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *__return_ptr, uint64_t))
{
  swift_unknownObjectRetain();
  v7 = a1;
  a4(&v10, a3);
  if ((~v10 & 0xFFFFFFFE) != 0)
  {
    v8 = sub_1C5724830();
    swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRelease();

    v8 = 0;
  }

  return v8 & 1;
}

uint64_t *BoxLayout.setHorizontalAlignmentBoundsContent(_:forArrangedLayoutItem:)(char a1)
{
  result = sub_1C5681B10(v8);
  if ((~LODWORD(v8[0]) & 0xFFFFFFFE) != 0)
  {
    v11 = v8[0];
    sub_1C5724854(a1 & 1);
    swift_unknownObjectRetain();
    v4 = sub_1C56236C4();
    v5 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x88))(v4);
    MEMORY[0x1EEE9AC00](v5, v6);
    sub_1C56806B4(sub_1C5676CD0, v5, v8);

    sub_1C56260B4(v7);
    if ((v9 & 0xFFFFFFFE) == 0x7FFFFFFE)
    {
      sub_1C56831D8(v8, v7);
      swift_unknownObjectRetain();
      sub_1C568077C(v7);
      return sub_1C5683170(v8);
    }

    else
    {
      v10 = v11;
      swift_unknownObjectRetain();
      return sub_1C568077C(v8);
    }
  }

  return result;
}

void sub_1C56824CC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t))
{
  swift_unknownObjectRetain();
  v9 = a1;
  a5(a3, a4);
  swift_unknownObjectRelease();
}

float sub_1C5682564(uint64_t a1, void (*a2)(uint64_t *__return_ptr))
{
  a2(&v3);
  result = 0.0;
  if ((~v3 & 0xFFFFFFFE) != 0)
  {
    return sub_1C5724800();
  }

  return result;
}

void sub_1C56825CC(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *__return_ptr, uint64_t))
{
  swift_unknownObjectRetain();
  v7 = a1;
  a4(&v8, a3);
  if ((~v8 & 0xFFFFFFFE) != 0)
  {
    sub_1C5724800();
  }

  swift_unknownObjectRelease();
}

uint64_t *BoxLayout.setHorizontalFittingSizePriority(_:forArrangedLayoutItem:)(float a1)
{
  result = sub_1C5681B10(v8);
  if ((~LODWORD(v8[0]) & 0xFFFFFFFE) != 0)
  {
    v11 = v8[0];
    sub_1C57248B8(a1);
    swift_unknownObjectRetain();
    v4 = sub_1C56236C4();
    v5 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x88))(v4);
    MEMORY[0x1EEE9AC00](v5, v6);
    sub_1C56806B4(sub_1C5676CD0, v5, v8);

    sub_1C56260B4(v7);
    if ((v9 & 0xFFFFFFFE) == 0x7FFFFFFE)
    {
      sub_1C56831D8(v8, v7);
      swift_unknownObjectRetain();
      sub_1C568077C(v7);
      return sub_1C5683170(v8);
    }

    else
    {
      v10 = v11;
      swift_unknownObjectRetain();
      return sub_1C568077C(v8);
    }
  }

  return result;
}

void sub_1C5682810(void *a1, float a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, float))
{
  swift_unknownObjectRetain();
  v9 = a1;
  a5(a4, a2);
  swift_unknownObjectRelease();
}

void *sub_1C5682898(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16E978, &qword_1C586A8F8);
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
    if (v10 < a4 || v10 + 4 >= &a4[9 * v8 + 4])
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v10 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1C56829E0(uint64_t (*a1)(void *))
{
  v4 = *v2;
  v5 = (*v2 + 2);
  v6 = *v5;
  if (*v5)
  {
    v1 = 0;
    for (i = 13; ; i += 9)
    {
      result = a1(&v4[i - 9]);
      if (v3)
      {
        break;
      }

      if (result)
      {
        v16 = v2;
        v10 = v1 + 1;
        if (__OFADD__(v1, 1))
        {
LABEL_32:
          __break(1u);
          return result;
        }

        v11 = *v5;
        while (v10 != v11)
        {
          if (v10 >= v11)
          {
            __break(1u);
LABEL_28:
            __break(1u);
LABEL_29:
            __break(1u);
LABEL_30:
            __break(1u);
LABEL_31:
            __break(1u);
            goto LABEL_32;
          }

          sub_1C567D708(&v4[i], v15);
          v12 = a1(v15);
          result = sub_1C567D740(v15);
          if ((v12 & 1) == 0)
          {
            if (v10 != v1)
            {
              if ((v1 & 0x8000000000000000) != 0)
              {
                goto LABEL_28;
              }

              v13 = *v5;
              if (v1 >= *v5)
              {
                goto LABEL_29;
              }

              result = sub_1C567D708(&v4[9 * v1 + 4], v15);
              if (v10 >= v13)
              {
                goto LABEL_30;
              }

              sub_1C567D708(&v4[i], v14);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v4 = sub_1C5682BAC(v4);
              }

              result = sub_1C5683248(v14, &v4[9 * v1 + 4]);
              if (v10 >= v4[2])
              {
                goto LABEL_31;
              }

              result = sub_1C5683248(v15, &v4[i]);
              *v16 = v4;
            }

            ++v1;
          }

          ++v10;
          v5 = (v4 + 2);
          v11 = v4[2];
          i += 9;
        }

        return v1;
      }

      if (v6 == ++v1)
      {
        return *v5;
      }
    }
  }

  else if (!v3)
  {
    return *v5;
  }

  return v1;
}

uint64_t sub_1C5682BC0(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x1C694A560](v3);
  if (v3)
  {
    v5 = a2 + 32;
    do
    {
      sub_1C567D708(v5, v6);
      sub_1C5662408();
      sub_1C584F5F0();
      type metadata accessor for NSDirectionalEdgeInsets(0);
      sub_1C5682E20(&qword_1EC16DB78, type metadata accessor for NSDirectionalEdgeInsets);
      sub_1C584F5F0();
      type metadata accessor for UIOffset(0);
      sub_1C5682E20(&qword_1EC16E950, type metadata accessor for UIOffset);
      sub_1C584F5F0();
      sub_1C5682E68();
      sub_1C584F5F0();
      sub_1C584F5F0();
      result = sub_1C567D740(v6);
      v5 += 72;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_1C5682D6C(uint64_t a1, uint64_t a2)
{
  if (sub_1C5623E2C(a1, a2) & 1) != 0 && (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*(a1 + 8), *(a2 + 8)), vceqq_f64(*(a1 + 24), *(a2 + 24))))) & 1) != 0 && (*(a1 + 40) == *(a2 + 40) ? (v4 = *(a1 + 48) == *(a2 + 48)) : (v4 = 0), v4 && (v5 = *(a1 + 56), v9 = *(a2 + 56), v10 = v5, (sub_1C563DF98(&v10, &v9))))
  {
    v6 = *(a1 + 64);
    v9 = *(a2 + 64);
    v10 = v6;
    v7 = sub_1C563DF98(&v10, &v9);
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

uint64_t sub_1C5682E20(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1C5682E68()
{
  result = qword_1EC16E958;
  if (!qword_1EC16E958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC16E958);
  }

  return result;
}

uint64_t sub_1C5682EBC(uint64_t a1, uint64_t a2)
{
  if (sub_1C5623E2C(a1, a2) & 1) != 0 && (sub_1C567FA88(*(a1 + 8), *(a2 + 8)) & 1) != 0 && (v4 = *(a1 + 16), v8 = *(a2 + 16), v9 = v4, (static StackLayout.Alignment.== infix(_:_:)(&v9, &v8)) && (v5 = *(a1 + 24), v8 = *(a2 + 24), v9 = v5, (static StackLayout.Alignment.== infix(_:_:)(&v9, &v8)))
  {
    v6 = vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*(a1 + 32), *(a2 + 32)), vceqq_f64(*(a1 + 48), *(a2 + 48)))));
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

unint64_t sub_1C5682FC0(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_18;
  }

  v7 = *v3;
  v8 = v7 + 32 + 72 * result;
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v10)
  {
    goto LABEL_15;
  }

  v11 = *(v7 + 16);
  if (__OFSUB__(v11, a2))
  {
    goto LABEL_19;
  }

  result = v8 + 72 * a3;
  v12 = v7 + 32 + 72 * a2;
  if (result < v12 || result >= v12 + 72 * (v11 - a2))
  {
    result = swift_arrayInitWithTakeFrontToBack();
  }

  else if (result != v12)
  {
    result = swift_arrayInitWithTakeBackToFront();
  }

  v14 = *(v7 + 16);
  v9 = __OFADD__(v14, v10);
  v15 = v14 + v10;
  if (v9)
  {
    goto LABEL_20;
  }

  *(v7 + 16) = v15;
LABEL_15:
  if (a3 > 0)
  {
LABEL_21:
    __break(1u);
  }

  return result;
}

unint64_t sub_1C56830B0(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v4 = *v2;
  v5 = *(*v2 + 16);
  if (v5 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v6 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v5 + v7;
  if (__OFADD__(v5, v7))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  v9 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (!isUniquelyReferenced_nonNull_native || v8 > v4[3] >> 1)
  {
    if (v5 <= v8)
    {
      v11 = v8;
    }

    else
    {
      v11 = v5;
    }

    v4 = sub_1C5682898(isUniquelyReferenced_nonNull_native, v11, 1, v4);
    *v2 = v4;
  }

  result = sub_1C5682FC0(v6, a2, 0);
  *v2 = v4;
  return result;
}

uint64_t sub_1C5683170(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16E968, qword_1C586A758);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C56831D8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16E968, qword_1C586A758);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1C56832BC()
{
  result = qword_1EC16E970;
  if (!qword_1EC16E970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC16E970);
  }

  return result;
}

unint64_t sub_1C5683310(uint64_t a1)
{
  result = sub_1C5683338();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C5683338()
{
  result = qword_1ED77E858;
  if (!qword_1ED77E858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED77E858);
  }

  return result;
}

unint64_t sub_1C5683390()
{
  result = qword_1ED77E850;
  if (!qword_1ED77E850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED77E850);
  }

  return result;
}

uint64_t sub_1C5683950(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFFA && *(a1 + 72))
  {
    return (*a1 + 2147483643);
  }

  v3 = *(a1 + 56);
  v4 = 2147483645 - ((2 * v3) & 0x7FFFFFFC | (v3 >> 30));
  if (v4 < 0)
  {
    v4 = -1;
  }

  if (((2 * v3) & 0x7FFFFFFC) == 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1C56839B8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFB)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 - 2147483643;
    if (a3 > 0x7FFFFFFA)
    {
      *(result + 72) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFA)
    {
      *(result + 72) = 0;
    }

    if (a2)
    {
      *(result + 56) = ((2147483646 - a2) >> 1) & 0x3FFFFFFE | ((2147483646 - a2) << 30);
    }
  }

  return result;
}

uint64_t sub_1C5683A3C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C5683A84(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1C5683AE4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC16E860, &qword_1C5868750);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for PlaceFactoidMeasurementFormatter.FormatStyleConfig()
{
  result = qword_1EC17CCE0;
  if (!qword_1EC17CCE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C5683BA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1C56534F4(a1, a3, &qword_1EC16E260, &unk_1C586A900);
  v5 = type metadata accessor for PlaceFactoidMeasurementFormatter.FormatStyleConfig();
  return sub_1C56534F4(a2, a3 + *(v5 + 20), &qword_1EC16E258, &unk_1C5869AF0);
}

id sub_1C5683C04()
{
  v0 = sub_1C584ED50();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0, v3);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [objc_allocWithZone(MEMORY[0x1E696AB70]) init];
  sub_1C584ED10();
  v7 = sub_1C584ED00();
  (*(v1 + 8))(v5, v0);
  [v6 setCalendar_];

  [v6 setAllowedUnits_];
  [v6 setMaximumUnitCount_];
  result = [v6 setUnitsStyle_];
  qword_1EC17CCD8 = v6;
  return result;
}

uint64_t static PlaceFactoidMeasurementFormatter.format(factoidUnitType:value:formatStyleConfig:locale:)(int a1, uint64_t a2, uint64_t a3, double a4)
{
  v206 = a2;
  v177 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16E980, &qword_1C586A910);
  v197 = *(v177 - 8);
  v7 = *(v197 + 64);
  v9 = MEMORY[0x1EEE9AC00](v177, v8);
  v196 = &v173 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v9, v11);
  v195 = &v173 - v13;
  v15 = MEMORY[0x1EEE9AC00](v12, v14);
  v194 = &v173 - v16;
  MEMORY[0x1EEE9AC00](v15, v17);
  v193 = &v173 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16E988, &qword_1C586A918);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19 - 8, v21);
  v189 = &v173 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16E990, &qword_1C586A920);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x1EEE9AC00](v23 - 8, v25);
  v185 = &v173 - v26;
  v190 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16E998, &qword_1C586A928);
  v188 = *(v190 - 8);
  v27 = *(v188 + 64);
  MEMORY[0x1EEE9AC00](v190, v28);
  v187 = &v173 - v29;
  v198 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16E9A0, &unk_1C586A930);
  v186 = *(v198 - 8);
  v30 = *(v186 + 64);
  v32 = MEMORY[0x1EEE9AC00](v198, v31);
  v192 = &v173 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = MEMORY[0x1EEE9AC00](v32, v34);
  v37 = &v173 - v36;
  v39 = MEMORY[0x1EEE9AC00](v35, v38);
  v175 = &v173 - v40;
  MEMORY[0x1EEE9AC00](v39, v41);
  v178 = &v173 - v42;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16DA98, &qword_1C5867AA8);
  v44 = *(*(v43 - 8) + 64);
  MEMORY[0x1EEE9AC00](v43 - 8, v45);
  v202 = &v173 - v46;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16E9A8, &qword_1C586A940);
  v48 = *(*(v47 - 8) + 64);
  MEMORY[0x1EEE9AC00](v47 - 8, v49);
  v184 = &v173 - v50;
  v51 = sub_1C584ECE0();
  v199 = *(v51 - 8);
  v200 = v51;
  v52 = *(v199 + 64);
  MEMORY[0x1EEE9AC00](v51, v53);
  v201 = &v173 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16E9B0, &qword_1C586A948);
  v56 = *(*(v55 - 8) + 64);
  MEMORY[0x1EEE9AC00](v55 - 8, v57);
  v179 = &v173 - v58;
  v183 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16E9B8, &qword_1C586A950);
  v182 = *(v183 - 8);
  v59 = *(v182 + 64);
  MEMORY[0x1EEE9AC00](v183, v60);
  v180 = &v173 - v61;
  v191 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16E9C0, &qword_1C586A958);
  v181 = *(v191 - 8);
  v62 = *(v181 + 64);
  v64 = MEMORY[0x1EEE9AC00](v191, v63);
  v66 = &v173 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = MEMORY[0x1EEE9AC00](v64, v67);
  v176 = &v173 - v69;
  v71 = MEMORY[0x1EEE9AC00](v68, v70);
  v73 = &v173 - v72;
  MEMORY[0x1EEE9AC00](v71, v74);
  v174 = &v173 - v75;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16DAB8, &qword_1C586A960);
  v203 = *(v76 - 8);
  v204 = v76;
  v77 = *(v203 + 64);
  MEMORY[0x1EEE9AC00](v76, v78);
  v80 = &v173 - v79;
  v81 = sub_1C584EBE0();
  v82 = *(v81 - 8);
  v83 = *(v82 + 64);
  v85 = MEMORY[0x1EEE9AC00](v81, v84);
  v87 = &v173 - ((v86 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v85, v88);
  v90 = &v173 - v89;
  v207 = a3;
  sub_1C584EBF0();
  sub_1C584EBC0();
  v205 = MEMORY[0x1C6949250](v90, v87);
  v91 = *(v82 + 8);
  v91(v87, v81);
  v91(v90, v81);
  if (a1 > 4)
  {
    v94 = v192;
    v95 = v193;
    v96 = v37;
    v98 = v194;
    v97 = v195;
    v100 = v196;
    v99 = v197;
    if (a1 > 6)
    {
      if (a1 == 7)
      {
        v107 = objc_opt_self();
        v108 = [v107 squareKilometers];
        sub_1C5626E40(0, &qword_1EC16E9C8, 0x1E696AFE8);
        v109 = v98;
        sub_1C584E700();
        v110 = [v107 squareMiles];
        v111 = v205;
        if (v205)
        {
          v97 = v95;
          v112 = v110;
          v113 = v177;
          sub_1C584E770();

          (*(v99 + 8))(v109, v113);
        }

        else
        {

          v97 = v95;
          v113 = v177;
          (*(v99 + 32))(v95, v109, v177);
        }

        v151 = v207;
        v152 = v111 & 1;
      }

      else
      {
        if (a1 != 8)
        {
          goto LABEL_39;
        }

        v128 = objc_opt_self();
        v129 = [v128 squareMeters];
        sub_1C5626E40(0, &qword_1EC16E9C8, 0x1E696AFE8);
        v130 = v100;
        sub_1C584E700();
        v131 = [v128 squareFeet];
        v132 = v205;
        if (v205)
        {
          v133 = v131;
          v113 = v177;
          sub_1C584E770();

          (*(v99 + 8))(v130, v113);
        }

        else
        {

          v113 = v177;
          (*(v99 + 32))(v97, v130, v177);
        }

        v151 = v207;
        v152 = v132 & 1;
      }

      v93 = sub_1C5684FF4(v97, v206, v151, v152);
      (*(v99 + 8))(v97, v113);
      return v93;
    }

    if (a1 != 5)
    {
      return sub_1C5686358();
    }

    v101 = objc_opt_self();
    v102 = [v101 meters];
    sub_1C5626E40(0, &qword_1EC16E9D0, 0x1E696B058);
    sub_1C584E700();
    v103 = [v101 feet];
    v173 = v96;
    if (v205)
    {
      v104 = v103;
      v105 = v198;
      sub_1C584E770();

      v106 = v186;
      (*(v186 + 8))(v94, v105);
    }

    else
    {

      v106 = v186;
      (*(v186 + 32))(v96, v94, v198);
    }

    v142 = v207;
    v144 = v201;
    v143 = v202;
    v146 = v199;
    v145 = v200;
    v148 = v203;
    v147 = v204;
    sub_1C584E750();
    (*(v146 + 16))(v144, v142, v145);
    sub_1C584E9B0();
    sub_1C5685B48(v206, v142, v143);
    (*(v148 + 56))(v143, 0, 1, v147);
    v149 = v187;
    sub_1C584E730();
    v150 = &v204;
LABEL_37:
    v170 = *(v150 - 32);
    v171 = v190;
    v93 = sub_1C584E740();
    (*(v188 + 8))(v149, v171);
    (*(v106 + 8))(v170, v198);
    return v93;
  }

  if (a1 > 2)
  {
    if (a1 == 3)
    {
      v114 = objc_opt_self();
      v115 = [v114 cubicMeters];
      sub_1C5626E40(0, &qword_1EC16E9D8, 0x1E696B088);
      sub_1C584E700();
      v116 = [v114 cubicFeet];
      if (v205)
      {
        v117 = v116;
        v118 = v191;
        sub_1C584E770();

        v119 = v181;
        (*(v181 + 8))(v66, v118);
      }

      else
      {

        v119 = v181;
        (*(v181 + 32))(v176, v66, v191);
      }

      v156 = v207;
      v158 = v201;
      v157 = v202;
      v160 = v199;
      v159 = v200;
      v161 = v203;
      sub_1C584E750();
      (*(v160 + 16))(v158, v156, v159);
      sub_1C584E9B0();
      sub_1C5685B48(v206, v156, v157);
      (*(v161 + 56))(v157, 0, 1, v204);
      v162 = v180;
      sub_1C584E730();
      v163 = v176;
      v164 = v183;
      v93 = sub_1C584E740();
      (*(v182 + 8))(v162, v164);
      (*(v119 + 8))(v163, v191);
      return v93;
    }

    v134 = objc_opt_self();
    v135 = [v134 kilometers];
    sub_1C5626E40(0, &qword_1EC16E9D0, 0x1E696B058);
    v136 = v175;
    sub_1C584E700();
    v137 = [v134 miles];
    v138 = v202;
    v139 = v198;
    v106 = v186;
    v140 = v178;
    if (v205)
    {
      v141 = v137;
      sub_1C584E770();

      (*(v106 + 8))(v136, v139);
    }

    else
    {

      (*(v106 + 32))(v140, v136, v139);
    }

    v165 = v207;
    v167 = v199;
    v166 = v200;
    v169 = v203;
    v168 = v204;
    sub_1C584E750();
    (*(v167 + 16))(v201, v165, v166);
    sub_1C584E9B0();
    sub_1C5685B48(v206, v165, v138);
    (*(v169 + 56))(v138, 0, 1, v168);
    v149 = v187;
    sub_1C584E730();
    v150 = &v209;
    goto LABEL_37;
  }

  if (a1 < 2)
  {
    sub_1C5685B48(v206, v207, v80);
    v208 = a4;
    v92 = v204;
    v93 = sub_1C584E960();
    (*(v203 + 8))(v80, v92);
    return v93;
  }

  if (a1 == 2)
  {
    v120 = objc_opt_self();
    v121 = [v120 cubicKilometers];
    sub_1C5626E40(0, &qword_1EC16E9D8, 0x1E696B088);
    sub_1C584E700();
    v122 = [v120 cubicMiles];
    v123 = v202;
    v124 = v191;
    v125 = v181;
    v126 = v174;
    if (v205)
    {
      v127 = v122;
      sub_1C584E770();

      (*(v125 + 8))(v73, v124);
    }

    else
    {

      (*(v125 + 32))(v126, v73, v124);
    }

    v153 = v207;
    sub_1C584E750();
    (*(v199 + 16))(v201, v153, v200);
    sub_1C584E9B0();
    sub_1C5685B48(v206, v153, v123);
    (*(v203 + 56))(v123, 0, 1, v204);
    v154 = v180;
    sub_1C584E730();
    v155 = v183;
    v93 = sub_1C584E740();
    (*(v182 + 8))(v154, v155);
    (*(v125 + 8))(v126, v124);
    return v93;
  }

LABEL_39:
  result = sub_1C584FD00();
  __break(1u);
  return result;
}

uint64_t sub_1C5684FF4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v114 = a3;
  v108 = a2;
  v110 = a1;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16DAB8, &qword_1C586A960);
  v109 = *(v111 - 8);
  v5 = *(v109 + 64);
  MEMORY[0x1EEE9AC00](v111, v6);
  v94 = &v92 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16E9E0, &qword_1C586A968);
  v96 = *(v8 - 8);
  v97 = v8;
  v9 = *(v96 + 64);
  MEMORY[0x1EEE9AC00](v8, v10);
  v95 = &v92 - v11;
  v12 = sub_1C584E8B0();
  v98 = *(v12 - 8);
  v99 = v12;
  v13 = *(v98 + 64);
  MEMORY[0x1EEE9AC00](v12, v14);
  v113 = &v92 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16DA98, &qword_1C5867AA8);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8, v18);
  v105 = &v92 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16E9E8, &qword_1C586A970);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20 - 8, v22);
  v104 = &v92 - v23;
  v102 = sub_1C584ECE0();
  v100 = *(v102 - 8);
  v24 = *(v100 + 64);
  MEMORY[0x1EEE9AC00](v102, v25);
  v103 = &v92 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16E9F0, &qword_1C586A978);
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x1EEE9AC00](v27 - 8, v29);
  v101 = &v92 - v30;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16E9F8, &qword_1C586A980);
  v107 = *(v112 - 8);
  v31 = *(v107 + 64);
  MEMORY[0x1EEE9AC00](v112, v32);
  v106 = &v92 - v33;
  v34 = sub_1C584EB90();
  v35 = *(v34 - 8);
  v36 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v34, v37);
  v92 = &v92 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16EA00, &qword_1C586A988);
  v40 = *(*(v39 - 8) + 64);
  MEMORY[0x1EEE9AC00](v39, v41);
  v43 = &v92 - v42;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16EA08, &unk_1C586A990);
  v45 = *(*(v44 - 8) + 64);
  v47 = MEMORY[0x1EEE9AC00](v44 - 8, v46);
  v93 = &v92 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = MEMORY[0x1EEE9AC00](v47, v49);
  v52 = &v92 - v51;
  MEMORY[0x1EEE9AC00](v50, v53);
  v55 = &v92 - v54;
  v56 = sub_1C584ECA0();
  v57 = *(v56 - 8);
  v58 = *(v57 + 64);
  MEMORY[0x1EEE9AC00](v56, v59);
  v61 = &v92 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a4 & 1) == 0)
  {
    goto LABEL_8;
  }

  sub_1C584ECB0();
  sub_1C584EC90();
  (*(v57 + 8))(v61, v56);
  sub_1C584EB80();
  (*(v35 + 56))(v52, 0, 1, v34);
  v62 = *(v39 + 48);
  sub_1C56466CC(v55, v43, &qword_1EC16EA08, &unk_1C586A990);
  sub_1C56466CC(v52, &v43[v62], &qword_1EC16EA08, &unk_1C586A990);
  v63 = *(v35 + 48);
  if (v63(v43, 1, v34) != 1)
  {
    v64 = v93;
    sub_1C56466CC(v43, v93, &qword_1EC16EA08, &unk_1C586A990);
    if (v63(&v43[v62], 1, v34) != 1)
    {
      v89 = v92;
      (*(v35 + 32))(v92, &v43[v62], v34);
      sub_1C5687600(&qword_1EC16EA18, MEMORY[0x1E6969610]);
      v90 = sub_1C584F620();
      v91 = *(v35 + 8);
      v91(v89, v34);
      sub_1C5625230(v52, &qword_1EC16EA08, &unk_1C586A990);
      sub_1C5625230(v55, &qword_1EC16EA08, &unk_1C586A990);
      v91(v64, v34);
      sub_1C5625230(v43, &qword_1EC16EA08, &unk_1C586A990);
      if (v90)
      {
        goto LABEL_17;
      }

LABEL_8:
      sub_1C5626E40(0, &qword_1EC16E9C8, 0x1E696AFE8);
      sub_1C584E750();
      v65 = 0;
      goto LABEL_9;
    }

    sub_1C5625230(v52, &qword_1EC16EA08, &unk_1C586A990);
    sub_1C5625230(v55, &qword_1EC16EA08, &unk_1C586A990);
    (*(v35 + 8))(v64, v34);
LABEL_7:
    sub_1C5625230(v43, &qword_1EC16EA00, &qword_1C586A988);
    goto LABEL_8;
  }

  sub_1C5625230(v52, &qword_1EC16EA08, &unk_1C586A990);
  sub_1C5625230(v55, &qword_1EC16EA08, &unk_1C586A990);
  if (v63(&v43[v62], 1, v34) != 1)
  {
    goto LABEL_7;
  }

  sub_1C5625230(v43, &qword_1EC16EA08, &unk_1C586A990);
LABEL_17:
  sub_1C5626E40(0, &qword_1EC16E9C8, 0x1E696AFE8);
  sub_1C584E760();
  v65 = 1;
LABEL_9:
  v66 = v114;
  (*(v100 + 16))(v103, v114, v102);
  sub_1C5626E40(0, &qword_1EC16E9C8, 0x1E696AFE8);
  sub_1C584E9B0();
  v67 = v105;
  v68 = v108;
  sub_1C5685B48(v108, v66, v105);
  v69 = v109;
  v70 = v111;
  (*(v109 + 56))(v67, 0, 1, v111);
  v71 = v106;
  sub_1C584E730();
  v73 = v112;
  v72 = v113;
  if (v65)
  {
    v74 = v95;
    sub_1C584E720();
    v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16E980, &qword_1C586A910);
    sub_1C563D368(&qword_1EC16EA10, &qword_1EC16E9E0, &qword_1C586A968);
    v105 = v75;
    v76 = v97;
    sub_1C584E780();
    (*(v96 + 8))(v74, v76);
    v77 = sub_1C56865C0(v72);
    if (v78)
    {
      v79 = v77;
      v80 = v78;
      v81 = v94;
      sub_1C5685B48(v68, v114, v94);
      sub_1C584E710();
      v115 = v82;
      v83 = sub_1C584E960();
      v85 = v84;
      v86 = v81;
      v73 = v112;
      (*(v69 + 8))(v86, v70);
      v115 = v83;
      v116 = v85;

      MEMORY[0x1C6949D90](32, 0xE100000000000000);

      MEMORY[0x1C6949D90](v79, v80);

      v87 = v115;
    }

    else
    {
      v87 = sub_1C584E740();
    }

    (*(v98 + 8))(v113, v99);
  }

  else
  {
    v87 = sub_1C584E740();
  }

  (*(v107 + 8))(v71, v73);
  return v87;
}

uint64_t sub_1C5685B48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16E258, &unk_1C5869AF0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8, v8);
  v64 = &v55 - v9;
  v10 = sub_1C584FDA0();
  v62 = *(v10 - 8);
  v63 = v10;
  v11 = *(v62 + 64);
  MEMORY[0x1EEE9AC00](v10, v12);
  v56 = &v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16E250, &qword_1C5869AE8);
  v15 = *(*(v14 - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](v14 - 8, v16);
  v59 = &v55 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v19);
  v21 = &v55 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16E260, &unk_1C586A900);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x1EEE9AC00](v22 - 8, v24);
  v26 = &v55 - v25;
  v27 = sub_1C584E9E0();
  v58 = *(v27 - 8);
  v28 = *(v58 + 64);
  MEMORY[0x1EEE9AC00](v27, v29);
  v67 = &v55 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_1C584ECE0();
  v32 = *(*(v31 - 8) + 64);
  MEMORY[0x1EEE9AC00](v31 - 8, v33);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16DAB8, &qword_1C586A960);
  v35 = *(v34 - 8);
  v36 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v34, v37);
  v39 = &v55 - v38;
  sub_1C584EC20();
  sub_1C563D314();
  sub_1C584E970();
  v65 = a3;
  MEMORY[0x1C6949030](a2, v34);
  v68 = v35;
  v66 = *(v35 + 8);
  v66(v39, v34);
  v61 = a1;
  sub_1C56466CC(a1, v21, &qword_1EC16E250, &qword_1C5869AE8);
  v40 = type metadata accessor for PlaceFactoidMeasurementFormatter.FormatStyleConfig();
  v57 = *(*(v40 - 8) + 48);
  v41 = v57(v21, 1, v40);
  v60 = v27;
  if (v41 == 1)
  {
    sub_1C5625230(v21, &qword_1EC16E250, &qword_1C5869AE8);
    v42 = v58;
    (*(v58 + 56))(v26, 1, 1, v27);
    v43 = v27;
  }

  else
  {
    sub_1C56466CC(v21, v26, &qword_1EC16E260, &unk_1C586A900);
    sub_1C5687448(v21);
    v42 = v58;
    v43 = v27;
    if ((*(v58 + 48))(v26, 1, v27) != 1)
    {
      v45 = v42;
      v44 = v67;
      (*(v42 + 32))(v67, v26, v43);
      v47 = v65;
      v48 = v62;
      goto LABEL_7;
    }
  }

  v44 = v67;
  sub_1C584E9C0();
  v45 = v42;
  v46 = (*(v42 + 48))(v26, 1, v43);
  v47 = v65;
  v48 = v62;
  if (v46 != 1)
  {
    sub_1C5625230(v26, &qword_1EC16E260, &unk_1C586A900);
  }

LABEL_7:
  MEMORY[0x1C6949050](v44, v34);
  v66(v47, v34);
  v49 = *(v68 + 32);
  v68 += 32;
  v65 = v49;
  (v49)(v47, v39, v34);
  v50 = v59;
  sub_1C56466CC(v61, v59, &qword_1EC16E250, &qword_1C5869AE8);
  if (v57(v50, 1, v40) == 1)
  {
    (*(v45 + 8))(v44, v60);
    sub_1C5625230(v50, &qword_1EC16E250, &qword_1C5869AE8);
    v51 = v64;
    (*(v48 + 56))(v64, 1, 1, v63);
    return sub_1C5625230(v51, &qword_1EC16E258, &unk_1C5869AF0);
  }

  v51 = v64;
  sub_1C56466CC(v50 + *(v40 + 20), v64, &qword_1EC16E258, &unk_1C5869AF0);
  sub_1C5687448(v50);
  v52 = v63;
  if ((*(v48 + 48))(v51, 1, v63) == 1)
  {
    (*(v45 + 8))(v67, v60);
    return sub_1C5625230(v51, &qword_1EC16E258, &unk_1C5869AF0);
  }

  v54 = v56;
  (*(v48 + 32))(v56, v51, v52);
  MEMORY[0x1C6949040](v54, 0, 1, v34);
  (*(v48 + 8))(v54, v52);
  (*(v45 + 8))(v67, v60);
  v66(v47, v34);
  return (v65)(v47, v39, v34);
}

id PlaceFactoidMeasurementFormatter.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id PlaceFactoidMeasurementFormatter.init()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_init);
}

id PlaceFactoidMeasurementFormatter.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1C5686358()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16EA90, &unk_1C586AA20);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v4 = MEMORY[0x1EEE9AC00](v0, v3);
  v6 = v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = v23 - v8;
  v10 = objc_opt_self();
  v11 = [v10 milliseconds];
  sub_1C5626E40(0, &qword_1EC16EA98, 0x1E696B008);
  sub_1C584E700();
  v12 = [v10 seconds];
  sub_1C584E770();

  sub_1C584E710();
  v14 = v13;
  v15 = *(v1 + 8);
  v15(v6, v0);
  if (qword_1EC17CCD0 != -1)
  {
    swift_once();
  }

  v16 = [qword_1EC17CCD8 stringFromTimeInterval_];
  if (v16)
  {
    v17 = v16;
    v18 = sub_1C584F660();
    v20 = v19;

    v23[0] = v18;
    v23[1] = v20;
    sub_1C566339C();
    v21 = sub_1C584FB10();
    v15(v9, v0);
  }

  else
  {
    v15(v9, v0);
    return 0;
  }

  return v21;
}

uint64_t sub_1C56865C0(uint64_t a1)
{
  v108 = sub_1C584E830();
  v2 = *(*(v108 - 8) + 64);
  MEMORY[0x1EEE9AC00](v108, v3);
  v107 = &v99 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = sub_1C584E930();
  v104 = *(v105 - 8);
  v5 = *(v104 + 64);
  MEMORY[0x1EEE9AC00](v105, v6);
  v103 = &v99 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16EA30, &qword_1C586A9F8);
  v8 = *(*(v102 - 8) + 64);
  MEMORY[0x1EEE9AC00](v102, v9);
  v101 = &v99 - v10;
  v141 = sub_1C584E810();
  v117 = *(v141 - 8);
  v11 = *(v117 + 64);
  MEMORY[0x1EEE9AC00](v141, v12);
  v114 = &v99 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16EA38, &qword_1C586AA00);
  v14 = *(*(v132 - 8) + 64);
  MEMORY[0x1EEE9AC00](v132, v15);
  v128 = &v99 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16EA40, &qword_1C586AA08);
  v18 = *(*(v17 - 8) + 64);
  v20 = MEMORY[0x1EEE9AC00](v17 - 8, v19);
  v118 = &v99 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v20, v22);
  v25 = &v99 - v24;
  MEMORY[0x1EEE9AC00](v23, v26);
  v140 = &v99 - v27;
  v131 = sub_1C584E900();
  v134 = *(v131 - 8);
  v28 = *(v134 + 64);
  MEMORY[0x1EEE9AC00](v131, v29);
  v130 = &v99 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_1C584E880();
  v32 = *(v31 - 8);
  v137 = v31;
  v138 = v32;
  v33 = v32[8];
  MEMORY[0x1EEE9AC00](v31, v34);
  v136 = &v99 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16EA48, &qword_1C586AA10);
  v37 = v36 - 8;
  v38 = *(*(v36 - 8) + 64);
  MEMORY[0x1EEE9AC00](v36, v39);
  v41 = &v99 - v40;
  v42 = sub_1C584E890();
  v43 = *(v42 - 8);
  v44 = *(v43 + 64);
  v46 = MEMORY[0x1EEE9AC00](v42, v45);
  v135 = (&v99 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v46, v48);
  v50 = &v99 - v49;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16EA50, &qword_1C586AA18);
  v52 = *(*(v51 - 8) + 64);
  MEMORY[0x1EEE9AC00](v51 - 8, v53);
  v112 = &v99 - v54;
  v55 = sub_1C584E870();
  v56 = *(v55 - 8);
  v57 = *(v56 + 64);
  v59 = MEMORY[0x1EEE9AC00](v55, v58);
  v139 = &v99 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = MEMORY[0x1EEE9AC00](v59, v61);
  v129 = &v99 - v63;
  MEMORY[0x1EEE9AC00](v62, v64);
  v100 = &v99 - v65;
  v106 = a1;
  sub_1C584E8A0();
  v111 = v43;
  v66 = *(v43 + 16);
  v109 = v50;
  v66(v135, v50, v42);
  v67 = MEMORY[0x1E69687C8];
  sub_1C5687600(&qword_1EC16EA58, MEMORY[0x1E69687C8]);
  sub_1C584F720();
  v68 = *(v37 + 44);
  v69 = sub_1C5687600(&qword_1EC16EA60, v67);
  v135 = (v138 + 1);
  v138 = (v56 + 32);
  v126 = (v134 + 8);
  v127 = (v56 + 16);
  v125 = *MEMORY[0x1E69683F0];
  v124 = (v117 + 104);
  v123 = (v117 + 56);
  v122 = (v117 + 48);
  v113 = (v117 + 32);
  v117 += 8;
  v110 = v56;
  v133 = v55;
  v134 = v56 + 8;
  v121 = v42;
  v120 = v68;
  v119 = v69;
  while (1)
  {
    v71 = v136;
    sub_1C584F960();
    sub_1C5687600(&qword_1EC16EA68, MEMORY[0x1E69687B0]);
    v72 = v137;
    v73 = sub_1C584F620();
    (*v135)(v71, v72);
    if (v73)
    {
      sub_1C5625230(v41, &qword_1EC16EA48, &qword_1C586AA10);
      (*(v111 + 8))(v109, v42);
      v91 = 1;
      v92 = v112;
      goto LABEL_14;
    }

    v74 = sub_1C584F980();
    v75 = v129;
    (*v127)(v129);
    v74(v142, 0);
    sub_1C584F970();
    v76 = *v138;
    (*v138)(v139, v75, v55);
    v77 = v130;
    sub_1C584E850();
    sub_1C584E820();
    sub_1C5687600(&qword_1EC16EA70, MEMORY[0x1E6968438]);
    v78 = v140;
    sub_1C584E910();
    (*v126)(v77, v131);
    v79 = v141;
    (*v124)(v25, v125, v141);
    (*v123)(v25, 0, 1, v79);
    v80 = *(v132 + 48);
    v81 = v128;
    sub_1C56466CC(v78, v128, &qword_1EC16EA40, &qword_1C586AA08);
    sub_1C56466CC(v25, v81 + v80, &qword_1EC16EA40, &qword_1C586AA08);
    v82 = *v122;
    if ((*v122)(v81, 1, v79) == 1)
    {
      break;
    }

    v116 = v76;
    v83 = v25;
    v84 = v118;
    sub_1C56466CC(v81, v118, &qword_1EC16EA40, &qword_1C586AA08);
    if (v82(v81 + v80, 1, v141) == 1)
    {
      sub_1C5625230(v83, &qword_1EC16EA40, &qword_1C586AA08);
      sub_1C5625230(v140, &qword_1EC16EA40, &qword_1C586AA08);
      v85 = v84;
      v25 = v83;
      (*v117)(v85, v141);
      v55 = v133;
      goto LABEL_3;
    }

    v86 = v81 + v80;
    v87 = v141;
    v88 = v114;
    (*v113)(v114, v86, v141);
    sub_1C5687600(&qword_1EC16EA88, MEMORY[0x1E6968400]);
    v115 = sub_1C584F620();
    v89 = *v117;
    (*v117)(v88, v87);
    sub_1C5625230(v83, &qword_1EC16EA40, &qword_1C586AA08);
    sub_1C5625230(v140, &qword_1EC16EA40, &qword_1C586AA08);
    v90 = v84;
    v25 = v83;
    v89(v90, v87);
    sub_1C5625230(v81, &qword_1EC16EA40, &qword_1C586AA08);
    v55 = v133;
    v42 = v121;
    if (v115)
    {
      goto LABEL_13;
    }

LABEL_4:
    (*v134)(v139, v55);
  }

  sub_1C5625230(v25, &qword_1EC16EA40, &qword_1C586AA08);
  sub_1C5625230(v140, &qword_1EC16EA40, &qword_1C586AA08);
  v70 = v82(v81 + v80, 1, v141);
  v55 = v133;
  if (v70 != 1)
  {
LABEL_3:
    sub_1C5625230(v81, &qword_1EC16EA38, &qword_1C586AA00);
    v42 = v121;
    goto LABEL_4;
  }

  v116 = v76;
  sub_1C5625230(v81, &qword_1EC16EA40, &qword_1C586AA08);
  v42 = v121;
LABEL_13:
  sub_1C5625230(v41, &qword_1EC16EA48, &qword_1C586AA10);
  (*(v111 + 8))(v109, v42);
  v92 = v112;
  v116(v112, v139, v55);
  v91 = 0;
LABEL_14:
  v93 = v110;
  (*(v110 + 56))(v92, v91, 1, v55);
  if ((*(v93 + 48))(v92, 1, v55) == 1)
  {
    sub_1C5625230(v92, &qword_1EC16EA50, &qword_1C586AA18);
    return 0;
  }

  else
  {
    v95 = v100;
    (*v138)(v100, v92, v55);
    v96 = v101;
    sub_1C584E860();
    sub_1C563D368(&qword_1EC16EA78, &qword_1EC16EA30, &qword_1C586A9F8);
    v97 = v103;
    sub_1C584E8E0();
    sub_1C5625230(v96, &qword_1EC16EA30, &qword_1C586A9F8);
    sub_1C584E920();
    (*(v104 + 8))(v97, v105);
    sub_1C5687600(&qword_1EC16EA80, MEMORY[0x1E6968678]);
    v98 = sub_1C584F710();
    (*v134)(v95, v55);
    return v98;
  }
}

uint64_t sub_1C5687448(uint64_t a1)
{
  v2 = type metadata accessor for PlaceFactoidMeasurementFormatter.FormatStyleConfig();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1C56874F0()
{
  sub_1C56875AC(319, &qword_1EC16EA20, MEMORY[0x1E6968F20]);
  if (v0 <= 0x3F)
  {
    sub_1C56875AC(319, &qword_1EC16EA28, MEMORY[0x1E69E7050]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1C56875AC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1C584FAF0();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1C5687600(unint64_t *a1, void (*a2)(uint64_t))
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

void *sub_1C5687648()
{
  v1 = v0;
  v2 = *(v0 + 32);
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = 0;
    v6 = v2 + 32;
    v7 = 0x80000001C5893E80;
    v8 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      while (1)
      {
        if (v5 == v3)
        {
          memset(v196, 0, sizeof(v196));
          v5 = v3;
          v197 = 2147483646;
        }

        else
        {
          if ((v5 & 0x8000000000000000) != 0)
          {
            __break(1u);
LABEL_74:
            __break(1u);
            goto LABEL_75;
          }

          v7 = *(v2 + 16);
          if (v5 >= v7)
          {
            goto LABEL_74;
          }

          v198 = v5;
          sub_1C5688760(v6 + 80 * v5, v199);
          sub_1C56534F4(&v198, v196, &qword_1EC16DEF8, &qword_1C5868C28);
          ++v5;
        }

        sub_1C56534F4(v196, &v200, &qword_1EC16EAA0, &qword_1C586AA30);
        if ((v201[18] & 0xFFFFFFFE) == 0x7FFFFFFELL)
        {
          return v8;
        }

        v9 = v200;
        sub_1C56534F4(v201, &v198, &unk_1EC16E860, &qword_1C5868750);
        v195[0] = v199[8];
        v194[0] = v1[5];
        v0 = v195;
        sub_1C5724040(v194, v196);
        if ((~LODWORD(v196[0]) & 0xFFFFFFFE) != 0)
        {
          break;
        }

        sub_1C56887D0(&v198);
      }

      v192 = v6;
      v193 = v2;
      sub_1C5724768(v195);
      v10 = v195[0];
      *&v196[0] = v195[0];
      v11 = sub_1C5724830();
      *&v196[0] = v10;
      v12 = sub_1C5724800();
      *v196 = v12;
      LODWORD(v195[0]) = 0;
      type metadata accessor for UILayoutPriority(0);
      sub_1C5688838(&qword_1ED77E828, type metadata accessor for UILayoutPriority);
      v190 = sub_1C584F610();
      *v196 = v12;
      LODWORD(v195[0]) = 1148846080;
      sub_1C5688838(&qword_1ED77E830, type metadata accessor for UILayoutPriority);
      v13 = sub_1C584F2D0() & v11;
      v14 = v10 >> 30;
      if (v10 >> 30 > 1)
      {
        if (v14 != 2)
        {
          sub_1C5625EE8(&v198, v195);
          v140 = v1[3];
          v141 = sub_1C570FA50(v140);
          sub_1C5625EE8(v1, v194);
          v142 = sub_1C570FA50(v140);
          v143 = v1[9];
          v189 = v1[7];
          v191 = v1[6];
          v187 = v1[8];
          sub_1C570FC58(v140);
          v145 = v144;
          sub_1C570FC58(v140);
          v147 = v145 + v146;
          sub_1C570FD20(v140);
          v149 = v147 + v148;
          v150 = sub_1C5625100();
          sub_1C5625108(v195, v141, 0, v194, v142, 0, 0, v196, v150, v149, 1000.0);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v8 = sub_1C5625864(0, v8[2] + 1, 1, v8);
          }

          v152 = v8[2];
          v151 = v8[3];
          if (v152 >= v151 >> 1)
          {
            v8 = sub_1C5625864((v151 > 1), v152 + 1, 1, v8);
          }

          v8[2] = v152 + 1;
          sub_1C5625808(v196, &v8[14 * v152 + 4]);
          sub_1C5625EE8(&v198, v195);
          v153 = sub_1C570FB20(v140);
          sub_1C5625EE8(v1, v194);
          v154 = sub_1C570FB20(v140);
          sub_1C570FCBC(v140);
          v156 = v155;
          sub_1C570FCBC(v140);
          v158 = v156 + v157;
          sub_1C570FD20(v140);
          v160 = v159 - v158;
          v79 = sub_1C5625100();
          v139 = 1000.0;
          v80 = v153;
          v81 = v154;
          v138 = v160;
          goto LABEL_59;
        }

        v188 = v12;
        if (v13)
        {
          sub_1C5625EE8(&v198, v195);
          v46 = v1[3];
          v47 = sub_1C570FA50(v46);
          sub_1C5625EE8(v1, v194);
          v48 = sub_1C570FA50(v46);
          v49 = v1[6];
          v50 = v1[7];
          v51 = v1[8];
          v52 = v1[9];
          sub_1C570FC58(v46);
          v54 = v53;
          sub_1C570FC58(v46);
          v56 = v54 + v55;
          sub_1C570FD20(v46);
          v58 = v56 + v57;
          v59 = sub_1C5625100();
          sub_1C5625108(v195, v47, 1, v194, v48, 0, 0, v196, v59, v58, 1000.0);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v8 = sub_1C5625864(0, v8[2] + 1, 1, v8);
          }

          v61 = v8[2];
          v60 = v8[3];
          if (v61 >= v60 >> 1)
          {
            v8 = sub_1C5625864((v60 > 1), v61 + 1, 1, v8);
          }

          v8[2] = v61 + 1;
          sub_1C5625808(v196, &v8[14 * v61 + 4]);
        }

        sub_1C5625EE8(&v198, v195);
        v0 = v1[3];
        v62 = sub_1C570FB20(v0);
        sub_1C5625EE8(v1, v194);
        v63 = sub_1C570FB20(v0);
        v64 = v1[9];
        v184 = v1[7];
        v186 = v1[6];
        v182 = v1[8];
        sub_1C570FCBC(v0);
        v66 = v65;
        sub_1C570FCBC(v0);
        v68 = v66 + v67;
        sub_1C570FD20(v0);
        v70 = v69 - v68;
        v71 = sub_1C5625100();
        sub_1C5625108(v195, v62, 0, v194, v63, 0, 0, v196, v71, v70, 1000.0);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_1C5625864(0, v8[2] + 1, 1, v8);
        }

        v73 = v8[2];
        v72 = v8[3];
        if (v73 >= v72 >> 1)
        {
          v8 = sub_1C5625864((v72 > 1), v73 + 1, 1, v8);
        }

        v8[2] = v73 + 1;
        sub_1C5625808(v196, &v8[14 * v73 + 4]);
        v7 = v190;
        if (v190)
        {
          sub_1C5625EE8(&v198, v195);
          v38 = sub_1C570FA50(v0);
          sub_1C5625EE8(v1, v194);
          v39 = sub_1C570FA50(v0);
          sub_1C570FC58(v0);
          v75 = v74;
          sub_1C570FC58(v0);
          v77 = v75 + v76;
          sub_1C570FD20(v0);
          v45 = v77 + v78;
LABEL_36:
          v79 = sub_1C5625100();
          v80 = v38;
          v81 = v39;
LABEL_53:
          v138 = v45;
          v139 = v188;
LABEL_59:
          sub_1C5625108(v195, v80, 0, v194, v81, 0, 0, v196, v79, v138, v139);
          v162 = v8[2];
          v161 = v8[3];
          v0 = v162 + 1;
          if (v162 >= v161 >> 1)
          {
            v8 = sub_1C5625864((v161 > 1), v162 + 1, 1, v8);
          }

          v8[2] = v0;
          sub_1C5625808(v196, &v8[14 * v162 + 4]);
        }
      }

      else
      {
        v188 = v12;
        v185 = v13;
        if (v14)
        {
          if (v13)
          {
            sub_1C5625EE8(&v198, v195);
            v82 = v1[3];
            v83 = sub_1C570FA50(v82);
            sub_1C5625EE8(v1, v194);
            v84 = sub_1C570FA50(v82);
            v85 = v1[6];
            v86 = v1[7];
            v87 = v1[8];
            v88 = v1[9];
            sub_1C570FC58(v82);
            v90 = v89;
            sub_1C570FC58(v82);
            v92 = v90 + v91;
            sub_1C570FD20(v82);
            v94 = v92 + v93;
            v95 = sub_1C5625100();
            sub_1C5625108(v195, v83, 1, v194, v84, 0, 0, v196, v95, v94, 1000.0);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v8 = sub_1C5625864(0, v8[2] + 1, 1, v8);
            }

            v97 = v8[2];
            v96 = v8[3];
            if (v97 >= v96 >> 1)
            {
              v8 = sub_1C5625864((v96 > 1), v97 + 1, 1, v8);
            }

            v8[2] = v97 + 1;
            sub_1C5625808(v196, &v8[14 * v97 + 4]);
          }

          sub_1C5625EE8(&v198, v195);
          v0 = v1[3];
          v98 = sub_1C570FAB8(v0);
          sub_1C5625EE8(v1, v194);
          v99 = sub_1C570FAB8(v0);
          sub_1C570FC58(v0);
          v101 = v100;
          sub_1C570FCBC(v0);
          v103 = (v101 - v102) * 0.5;
          sub_1C570FD20(v0);
          v105 = v103 + v104;
          v106 = sub_1C5625100();
          v107 = sub_1C57056F8();
          sub_1C5625108(v195, v98, 0, v194, v99, 0, 0, v196, v106, v105, v107);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v8 = sub_1C5625864(0, v8[2] + 1, 1, v8);
          }

          v109 = v8[2];
          v108 = v8[3];
          if (v109 >= v108 >> 1)
          {
            v8 = sub_1C5625864((v108 > 1), v109 + 1, 1, v8);
          }

          v8[2] = v109 + 1;
          sub_1C5625808(v196, &v8[14 * v109 + 4]);
          if (v185)
          {
            sub_1C5625EE8(&v198, v195);
            v110 = sub_1C570FB20(v0);
            sub_1C5625EE8(v1, v194);
            v111 = sub_1C570FB20(v0);
            v112 = v1[6];
            v113 = v1[7];
            v114 = v1[8];
            v115 = v1[9];
            sub_1C570FCBC(v0);
            v117 = v116;
            sub_1C570FCBC(v0);
            v119 = v117 + v118;
            sub_1C570FD20(v0);
            v121 = v120 - v119;
            v122 = sub_1C5625100();
            sub_1C5625108(v195, v110, -1, v194, v111, 0, 0, v196, v122, v121, 1000.0);
            v124 = v8[2];
            v123 = v8[3];
            if (v124 >= v123 >> 1)
            {
              v8 = sub_1C5625864((v123 > 1), v124 + 1, 1, v8);
            }

            v8[2] = v124 + 1;
            sub_1C5625808(v196, &v8[14 * v124 + 4]);
          }

          v7 = v190;
          if (v190)
          {
            sub_1C5625EE8(&v198, v195);
            v125 = sub_1C570FB88(v0);
            sub_1C5625EE8(v1, v194);
            v126 = sub_1C570FB88(v0);
            v127 = v1[6];
            v128 = v1[7];
            v129 = v1[8];
            v130 = v1[9];
            sub_1C570FC58(v0);
            v132 = v131;
            sub_1C570FCBC(v0);
            v134 = v132 + v133;
            sub_1C570FC58(v0);
            v136 = v134 + v135;
            sub_1C570FCBC(v0);
            v45 = -(v136 + v137);
            v79 = sub_1C5625100();
            v80 = v125;
            v81 = v126;
            goto LABEL_53;
          }
        }

        else
        {
          sub_1C5625EE8(&v198, v195);
          v0 = v1[3];
          v15 = sub_1C570FA50(v0);
          sub_1C5625EE8(v1, v194);
          v16 = sub_1C570FA50(v0);
          v17 = v1[9];
          v181 = v1[7];
          v183 = v1[6];
          v180 = v1[8];
          sub_1C570FC58(v0);
          v19 = v18;
          sub_1C570FC58(v0);
          v21 = v19 + v20;
          sub_1C570FD20(v0);
          v23 = v21 + v22;
          v24 = sub_1C5625100();
          sub_1C5625108(v195, v15, 0, v194, v16, 0, 0, v196, v24, v23, 1000.0);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v8 = sub_1C5625864(0, v8[2] + 1, 1, v8);
          }

          v26 = v8[2];
          v25 = v8[3];
          if (v26 >= v25 >> 1)
          {
            v8 = sub_1C5625864((v25 > 1), v26 + 1, 1, v8);
          }

          v8[2] = v26 + 1;
          sub_1C5625808(v196, &v8[14 * v26 + 4]);
          if (v185)
          {
            sub_1C5625EE8(&v198, v195);
            v27 = sub_1C570FB20(v0);
            sub_1C5625EE8(v1, v194);
            v28 = sub_1C570FB20(v0);
            sub_1C570FCBC(v0);
            v30 = v29;
            sub_1C570FCBC(v0);
            v32 = v30 + v31;
            sub_1C570FD20(v0);
            v34 = v33 - v32;
            v35 = sub_1C5625100();
            sub_1C5625108(v195, v27, -1, v194, v28, 0, 0, v196, v35, v34, 1000.0);
            v37 = v8[2];
            v36 = v8[3];
            if (v37 >= v36 >> 1)
            {
              v8 = sub_1C5625864((v36 > 1), v37 + 1, 1, v8);
            }

            v8[2] = v37 + 1;
            sub_1C5625808(v196, &v8[14 * v37 + 4]);
          }

          v7 = v190;
          if (v190)
          {
            sub_1C5625EE8(&v198, v195);
            v38 = sub_1C570FB20(v0);
            sub_1C5625EE8(v1, v194);
            v39 = sub_1C570FB20(v0);
            sub_1C570FCBC(v0);
            v41 = v40;
            sub_1C570FCBC(v0);
            v43 = v41 + v42;
            sub_1C570FD20(v0);
            v45 = v44 - v43;
            goto LABEL_36;
          }
        }
      }

      v163 = v8[2];
      if (v163 < v4)
      {
        goto LABEL_76;
      }

      if (v4 != v163)
      {
        v164 = &v8[14 * v4 + 17];
        while (1)
        {
          *&v196[0] = 0;
          *(&v196[0] + 1) = 0xE000000000000000;
          sub_1C584FC50();

          *&v196[0] = 0xD000000000000017;
          *(&v196[0] + 1) = 0x80000001C5893E80;
          v195[0] = v9;
          v165 = sub_1C584FD90();
          MEMORY[0x1C6949D90](v165);

          v0 = v196;
          MEMORY[0x1C6949D90](93, 0xE100000000000000);
          v7 = v8[2];
          if (v4 >= v7)
          {
            break;
          }

          v166 = *(&v196[0] + 1);
          ++v4;
          v167 = *v164;
          *(v164 - 1) = *&v196[0];
          *v164 = v166;

          v164 += 14;
          if (v163 == v4)
          {
            goto LABEL_67;
          }
        }

LABEL_75:
        __break(1u);
LABEL_76:
        __break(1u);
LABEL_77:
        v8 = sub_1C5625864((v7 > 1), v1, 1, v8);
LABEL_70:
        v8[2] = v1;
        sub_1C5625808(v196, &v8[14 * v0 + 4]);
        return v8;
      }

LABEL_67:
      sub_1C56887D0(&v198);
      v4 = v8[2];
      v6 = v192;
      v2 = v193;
    }
  }

  *&v196[0] = *(v0 + 40);
  LODWORD(v200) = sub_1C5724800();
  LODWORD(v198) = 0;
  type metadata accessor for UILayoutPriority(0);
  sub_1C5688838(&qword_1ED77E828, type metadata accessor for UILayoutPriority);
  if (sub_1C584F610())
  {
    sub_1C5625EE8(v0, &v200);
    v168 = *(v0 + 24);
    v169 = sub_1C570FB88(v1[3]);
    v170 = v1[6];
    v171 = v1[7];
    v172 = v1[8];
    v173 = v1[9];
    sub_1C570FC58(v168);
    v175 = v174;
    sub_1C570FCBC(v168);
    v177 = v175 + v176;
    v198 = v1[5];
    v178 = sub_1C5724800();
    sub_1C5705704(&v200, v169, 0, 0x7A69537974706D65, 0xE900000000000065, v196, v177, v178);
    v8 = sub_1C5625864(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v0 = v8[2];
    v7 = v8[3];
    v1 = (v0 + 1);
    if (v0 >= v7 >> 1)
    {
      goto LABEL_77;
    }

    goto LABEL_70;
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t sub_1C5688760(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC16E860, &qword_1C5868750);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C56887D0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC16E860, &qword_1C5868750);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C5688838(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C5688880()
{
  sub_1C5633434();
  sub_1C584F5F0();
  MEMORY[0x1C694A560](*(v0 + 24));
  v1 = *(v0 + 32);
  MEMORY[0x1C694A560](*(v1 + 16));
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v1 + 32;
    do
    {
      sub_1C5688760(v3, v6);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC16E860, &qword_1C5868750);
      sub_1C56534A4(&qword_1EC16DEA8);
      sub_1C584F5F0();
      sub_1C56887D0(v6);
      v3 += 80;
      --v2;
    }

    while (v2);
  }

  *&v6[0] = *(v0 + 40);
  sub_1C56760A0();
  sub_1C584F5F0();
  v4 = *(v0 + 64);
  v6[0] = *(v0 + 48);
  v6[1] = v4;
  type metadata accessor for NSDirectionalEdgeInsets(0);
  sub_1C5688838(&qword_1EC16DB78, type metadata accessor for NSDirectionalEdgeInsets);
  return sub_1C584F5F0();
}

uint64_t sub_1C5688A00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X8>, double a6@<D0>, double a7@<D1>, double a8@<D2>, double a9@<D3>)
{
  v16 = *a4;
  result = sub_1C56251C8(a1, a5);
  *(a5 + 24) = a2;
  *(a5 + 32) = a3;
  *(a5 + 40) = v16;
  *(a5 + 48) = a6;
  *(a5 + 56) = a7;
  *(a5 + 64) = a8;
  *(a5 + 72) = a9;
  return result;
}

uint64_t sub_1C5688A70()
{
  sub_1C584FEA0();
  sub_1C5688880();
  return sub_1C584FEF0();
}

uint64_t sub_1C5688AB4()
{
  sub_1C584FEA0();
  sub_1C5688880();
  return sub_1C584FEF0();
}

uint64_t sub_1C5688AF4(uint64_t a1, uint64_t a2)
{
  if (sub_1C57057BC(a1, a2) & 1) != 0 && *(a1 + 24) == *(a2 + 24) && (sub_1C5652690(*(a1 + 32), *(a2 + 32)) & 1) != 0 && (v4 = *(a1 + 40), v7 = *(a2 + 40), v8 = v4, (static StackLayout.Alignment.== infix(_:_:)(&v8, &v7)))
  {
    v5 = vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*(a1 + 48), *(a2 + 48)), vceqq_f64(*(a1 + 64), *(a2 + 64)))));
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

unint64_t sub_1C5688B90(uint64_t a1)
{
  result = sub_1C5688BB8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C5688BB8()
{
  result = qword_1EC16EAA8;
  if (!qword_1EC16EAA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC16EAA8);
  }

  return result;
}

unint64_t sub_1C5688C10()
{
  result = qword_1EC16EAB0;
  if (!qword_1EC16EAB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC16EAB0);
  }

  return result;
}

uint64_t sub_1C5688C64(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C5688CAC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1C5688D10@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(*v1 + 112);
  swift_beginAccess();
  v5 = *(v3 + 80);
  v6 = type metadata accessor for ItemPreloader.LoadingState();
  return (*(*(v6 - 8) + 16))(a1, v1 + v4, v6);
}

uint64_t sub_1C5688DBC(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 112);
  swift_beginAccess();
  v5 = *(v3 + 80);
  v6 = type metadata accessor for ItemPreloader.LoadingState();
  (*(*(v6 - 8) + 40))(v1 + v4, a1, v6);
  return swift_endAccess();
}

uint64_t sub_1C5688E70(uint64_t a1)
{
  v3 = *(*v1 + 120);
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t ItemPreloader.__allocating_init(provider:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  v7 = swift_allocObject();
  ItemPreloader.init(provider:)(a1, a2);
  return v7;
}

uint64_t *ItemPreloader.init(provider:)(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  swift_defaultActor_initialize();
  v6 = qword_1EC17AE50;
  if (qword_1EC17B0A0 != -1)
  {
    swift_once();
  }

  v7 = sub_1C584F2C0();
  v8 = __swift_project_value_buffer(v7, qword_1EC17B0A8);
  (*(*(v7 - 8) + 16))(v2 + v6, v8, v7);
  v9 = *(*v2 + 112);
  v10 = *(v5 + 80);
  type metadata accessor for ItemPreloader.LoadingState();
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC16EAB8, &unk_1C586ADD0);
  sub_1C584F860();
  *(v2 + *(*v2 + 120)) = sub_1C584F7B0();
  v11 = (v2 + qword_1EC17AE48);
  *v11 = a1;
  v11[1] = a2;
  return v2;
}

uint64_t sub_1C56890A4()
{
  v1[2] = v0;
  v2 = *(*v0 + 80);
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();
  v5 = type metadata accessor for ItemPreloader.LoadingState();
  v1[6] = v5;
  v6 = *(v5 - 8);
  v1[7] = v6;
  v7 = *(v6 + 64) + 15;
  v1[8] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C56891D4, v0, 0);
}

uint64_t sub_1C56891D4()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[6];
  v4 = v0[2];
  sub_1C5688D10(v1);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  (*(v2 + 8))(v1, v3);
  v0[9] = qword_1EC17AE50;
  v6 = sub_1C584F2A0();
  v7 = sub_1C584F9C0();
  v8 = os_log_type_enabled(v6, v7);
  if (EnumCaseMultiPayload == 2)
  {
    if (v8)
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_1C5620000, v6, v7, "Starting preload", v9, 2u);
      MEMORY[0x1C694B7A0](v9, -1, -1);
    }

    v10 = v0[2];

    v11 = *(*v10 + 192);
    v21 = (v11 + *v11);
    v12 = v11[1];
    v13 = swift_task_alloc();
    v0[10] = v13;
    *v13 = v0;
    v13[1] = sub_1C5689460;
    v14 = v0[5];
    v15 = v0[2];

    return v21(v14);
  }

  else
  {
    if (v8)
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_1C5620000, v6, v7, "Trying to preload but not doing it because we've already started and/or loaded the item", v17, 2u);
      MEMORY[0x1C694B7A0](v17, -1, -1);
    }

    v18 = v0[8];
    v19 = v0[5];

    v20 = v0[1];

    return v20();
  }
}

uint64_t sub_1C5689460()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v4 = *v1;
  *(*v1 + 88) = v0;

  v5 = *(v2 + 16);
  if (v0)
  {
    v6 = sub_1C56896A0;
  }

  else
  {
    v6 = sub_1C568958C;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

uint64_t sub_1C568958C()
{
  v1 = v0[2] + v0[9];
  v2 = sub_1C584F2A0();
  v3 = sub_1C584F9C0();
  v4 = os_log_type_enabled(v2, v3);
  v6 = v0[4];
  v5 = v0[5];
  v7 = v0[3];
  if (v4)
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_1C5620000, v2, v3, "Successfuly ended preload", v8, 2u);
    MEMORY[0x1C694B7A0](v8, -1, -1);
  }

  (*(v6 + 8))(v5, v7);
  v9 = v0[8];
  v10 = v0[5];

  v11 = v0[1];

  return v11();
}

uint64_t sub_1C56896A0()
{
  v1 = v0[11];
  v2 = v0[9];
  v3 = v0[2];
  v4 = v1;
  v5 = sub_1C584F2A0();
  v6 = sub_1C584F9B0();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[11];
  if (v7)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    v11 = v8;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v12;
    *v10 = v12;
    _os_log_impl(&dword_1C5620000, v5, v6, "Failed to preload with error %@", v9, 0xCu);
    sub_1C567CCE0(v10);
    MEMORY[0x1C694B7A0](v10, -1, -1);
    MEMORY[0x1C694B7A0](v9, -1, -1);
  }

  else
  {
  }

  v13 = v0[8];
  v14 = v0[5];

  v15 = v0[1];

  return v15();
}

uint64_t sub_1C568980C(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = *(*v1 + 80);
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();
  v6 = type metadata accessor for ItemPreloader.LoadingState();
  v2[8] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C5689930, v1, 0);
}

uint64_t sub_1C5689930()
{
  v1 = v0[3];
  v0[11] = qword_1EC17AE50;
  v2 = sub_1C584F2A0();
  v3 = sub_1C584F9C0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1C5620000, v2, v3, "Performing fetch", v4, 2u);
    MEMORY[0x1C694B7A0](v4, -1, -1);
  }

  v5 = v0[10];
  v6 = v0[8];
  v7 = v0[3];

  sub_1C5688D10(v5);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v21 = sub_1C584F2A0();
      v22 = sub_1C584F9C0();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        *v23 = 0;
        _os_log_impl(&dword_1C5620000, v21, v22, "Moving from notStarted to loading", v23, 2u);
        MEMORY[0x1C694B7A0](v23, -1, -1);
      }

      v25 = v0[8];
      v24 = v0[9];
      v26 = v0[3];

      swift_storeEnumTagMultiPayload();
      sub_1C5688DBC(v24);
      v27 = *(v26 + qword_1EC17AE48);
      v28 = *(v26 + qword_1EC17AE48 + 8);
      v52 = (v27 + *v27);
      v29 = v27[1];
      v30 = swift_task_alloc();
      v0[12] = v30;
      *v30 = v0;
      v30[1] = sub_1C5689EAC;
      v31 = v0[7];

      return v52(v31);
    }

    else
    {
      v41 = sub_1C584F2A0();
      v42 = sub_1C584F9C0();
      if (os_log_type_enabled(v41, v42))
      {
        v43 = swift_slowAlloc();
        *v43 = 0;
        _os_log_impl(&dword_1C5620000, v41, v42, "We're currently loading so adding to waiters to be called back later", v43, 2u);
        MEMORY[0x1C694B7A0](v43, -1, -1);
      }

      v45 = v0[3];
      v44 = v0[4];

      type metadata accessor for ItemPreloader();
      WitnessTable = swift_getWitnessTable();
      v47 = *(MEMORY[0x1E69E8920] + 4);
      v48 = swift_task_alloc();
      v0[15] = v48;
      *v48 = v0;
      v48[1] = sub_1C568A2DC;
      v49 = v0[3];
      v50 = v0[4];
      v51 = v0[2];

      return MEMORY[0x1EEE6DE38](v51, v45, WitnessTable, 0x29286863746566, 0xE700000000000000, sub_1C568B4C8, v49, v50);
    }
  }

  else
  {
    if (EnumCaseMultiPayload)
    {
      v33 = *v0[10];
      v34 = sub_1C584F2A0();
      v35 = sub_1C584F9C0();
      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        *v36 = 0;
        _os_log_impl(&dword_1C5620000, v34, v35, "Item is loaded with an error", v36, 2u);
        MEMORY[0x1C694B7A0](v36, -1, -1);
      }

      swift_willThrow();
      v38 = v0[9];
      v37 = v0[10];
      v40 = v0[6];
      v39 = v0[7];

      v20 = v0[1];
    }

    else
    {
      v9 = *(v0[5] + 32);
      v9(v0[6], v0[10], v0[4]);
      v10 = sub_1C584F2A0();
      v11 = sub_1C584F9C0();
      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        *v12 = 0;
        _os_log_impl(&dword_1C5620000, v10, v11, "Item is loaded and valid", v12, 2u);
        MEMORY[0x1C694B7A0](v12, -1, -1);
      }

      v13 = v0[6];
      v14 = v0[4];
      v15 = v0[2];

      v9(v15, v13, v14);
      v17 = v0[9];
      v16 = v0[10];
      v19 = v0[6];
      v18 = v0[7];

      v20 = v0[1];
    }

    return v20();
  }
}

uint64_t sub_1C5689EAC()
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v4 = *v1;
  *(*v1 + 104) = v0;

  v5 = *(v2 + 24);
  if (v0)
  {
    v6 = sub_1C568A490;
  }

  else
  {
    v6 = sub_1C5689FD8;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

uint64_t sub_1C5689FD8()
{
  v1 = v0[11];
  v2 = v0[9];
  v3 = v0[3];
  (*(v0[5] + 16))(v2, v0[7], v0[4]);
  swift_storeEnumTagMultiPayload();
  sub_1C5688DBC(v2);
  v4 = sub_1C584F2A0();
  v5 = sub_1C584F9C0();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_1C5620000, v4, v5, "Successfully fetched item", v6, 2u);
    MEMORY[0x1C694B7A0](v6, -1, -1);
  }

  v7 = swift_task_alloc();
  v0[14] = v7;
  *v7 = v0;
  v7[1] = sub_1C568A128;
  v8 = v0[7];
  v9 = v0[3];

  return sub_1C568AB04(v8);
}

uint64_t sub_1C568A128()
{
  v1 = *(*v0 + 112);
  v2 = *(*v0 + 24);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1C568A238, v2, 0);
}

uint64_t sub_1C568A238()
{
  (*(v0[5] + 32))(v0[2], v0[7], v0[4]);
  v2 = v0[9];
  v1 = v0[10];
  v4 = v0[6];
  v3 = v0[7];

  v5 = v0[1];

  return v5();
}

uint64_t sub_1C568A2DC()
{
  v2 = *v1;
  v3 = *(*v1 + 120);
  v4 = *v1;
  *(*v1 + 128) = v0;

  v5 = *(v2 + 24);
  if (v0)
  {
    v6 = sub_1C568A788;
  }

  else
  {
    v6 = sub_1C568A408;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

uint64_t sub_1C568A408()
{
  v2 = v0[9];
  v1 = v0[10];
  v4 = v0[6];
  v3 = v0[7];

  v5 = v0[1];

  return v5();
}

uint64_t sub_1C568A490()
{
  v1 = v0[3] + v0[11];
  v2 = sub_1C584F2A0();
  v3 = sub_1C584F9C0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1C5620000, v2, v3, "Error in fetching item", v4, 2u);
    MEMORY[0x1C694B7A0](v4, -1, -1);
  }

  v5 = v0[13];
  v7 = v0[8];
  v6 = v0[9];
  v8 = v0[3];

  *v6 = v5;
  swift_storeEnumTagMultiPayload();
  v9 = v5;
  sub_1C5688DBC(v6);
  v10 = swift_task_alloc();
  v0[17] = v10;
  *v10 = v0;
  v10[1] = sub_1C568A5E0;
  v11 = v0[13];
  v12 = v0[3];

  return sub_1C568AF14(v11);
}

uint64_t sub_1C568A5E0()
{
  v1 = *(*v0 + 136);
  v2 = *(*v0 + 24);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1C568A6F0, v2, 0);
}

uint64_t sub_1C568A6F0()
{
  v1 = v0[13];
  swift_willThrow();
  v2 = v0[13];
  v4 = v0[9];
  v3 = v0[10];
  v6 = v0[6];
  v5 = v0[7];

  v7 = v0[1];

  return v7();
}

uint64_t sub_1C568A788()
{
  v1 = v0[16];
  v3 = v0[9];
  v2 = v0[10];
  v5 = v0[6];
  v4 = v0[7];

  v6 = v0[1];

  return v6();
}

uint64_t sub_1C568A810(uint64_t a1, uint64_t a2)
{
  v4 = *(*a2 + 80);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC16EAB8, &unk_1C586ADD0);
  v5 = sub_1C584F860();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5, v7);
  (*(v9 + 16))(&v12 - v8, a1, v5);
  v10 = *(*a2 + 120);
  swift_beginAccess();
  sub_1C584F810();
  sub_1C584F7F0();
  return swift_endAccess();
}

uint64_t sub_1C568A958@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 80);
  v4 = type metadata accessor for ItemPreloader.LoadingState();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v14 - v8;
  sub_1C5688D10(&v14 - v8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if ((EnumCaseMultiPayload - 2) < 2)
  {
    goto LABEL_5;
  }

  if (EnumCaseMultiPayload)
  {
    (*(v5 + 8))(v9, v4);
LABEL_5:
    v11 = *(v3 - 8);
    v12 = 1;
    return (*(v11 + 56))(a1, v12, 1, v3);
  }

  v11 = *(v3 - 8);
  (*(v11 + 32))(a1, v9, v3);
  v12 = 0;
  return (*(v11 + 56))(a1, v12, 1, v3);
}

uint64_t sub_1C568AB04(uint64_t a1)
{
  v2[6] = a1;
  v2[7] = v1;
  v3 = *(*v1 + 80);
  v2[8] = v3;
  v4 = *(v3 - 8);
  v2[9] = v4;
  v5 = *(v4 + 64) + 15;
  v2[10] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC16EAB8, &unk_1C586ADD0);
  v6 = sub_1C584F860();
  v2[11] = v6;
  v7 = *(v6 - 8);
  v2[12] = v7;
  v2[13] = *(v7 + 64);
  v2[14] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C568AC5C, v1, 0);
}

uint64_t sub_1C568AC5C()
{
  v1 = v0[7] + qword_1EC17AE50;
  v2 = sub_1C584F2A0();
  v3 = sub_1C584F9C0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1C5620000, v2, v3, "Invoking waiters with loaded result", v4, 2u);
    MEMORY[0x1C694B7A0](v4, -1, -1);
  }

  v5 = v0[11];
  v6 = v0[7];

  v7 = *(*v6 + 120);
  swift_beginAccess();
  v8 = *(v6 + v7);

  if (sub_1C584F800())
  {
    v9 = 0;
    v10 = v0[12];
    v27 = v0[13];
    v11 = (v0[9] + 16);
    do
    {
      v12 = v0[11];
      v13 = sub_1C584F7D0();
      sub_1C584F790();
      if (v13)
      {
        (*(v10 + 16))(v0[14], v8 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v9, v0[11]);
        v14 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          goto LABEL_12;
        }
      }

      else
      {
        v17 = v0[11];
        result = sub_1C584FC60();
        if (v27 != 8)
        {
          __break(1u);
          return result;
        }

        v19 = v0[14];
        v20 = v0[11];
        v0[5] = result;
        (*(v10 + 16))(v19, v0 + 5, v20);
        swift_unknownObjectRelease();
        v14 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
LABEL_12:
          __break(1u);
          break;
        }
      }

      v15 = v0[14];
      v16 = v0[11];
      (*v11)(v0[10], v0[6], v0[8]);
      sub_1C584F850();
      (*(v10 + 8))(v15, v16);
      ++v9;
    }

    while (v14 != sub_1C584F800());
  }

  v21 = v0[14];
  v22 = v0[10];
  v23 = v0[11];
  v24 = v0[7];

  v25 = sub_1C584F7B0();
  sub_1C5688E70(v25);

  v26 = v0[1];

  return v26();
}

uint64_t sub_1C568AF14(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v3 = *(*v1 + 80);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC16EAB8, &unk_1C586ADD0);
  v4 = sub_1C584F860();
  v2[9] = v4;
  v5 = *(v4 - 8);
  v2[10] = v5;
  v2[11] = *(v5 + 64);
  v2[12] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C568B014, v1, 0);
}

uint64_t sub_1C568B014()
{
  v1 = v0[8] + qword_1EC17AE50;
  v2 = sub_1C584F2A0();
  v3 = sub_1C584F9C0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1C5620000, v2, v3, "Invoking waiters with error", v4, 2u);
    MEMORY[0x1C694B7A0](v4, -1, -1);
  }

  v5 = v0[8];
  v6 = v0[9];

  v7 = *(*v5 + 120);
  swift_beginAccess();
  v8 = *(v5 + v7);

  if (sub_1C584F800())
  {
    v9 = 0;
    v11 = v0[10];
    v10 = v0[11];
    do
    {
      v12 = v0[9];
      v13 = sub_1C584F7D0();
      sub_1C584F790();
      if (v13)
      {
        (*(v11 + 16))(v0[12], v8 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v9, v0[9]);
        v14 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          goto LABEL_12;
        }
      }

      else
      {
        v19 = v0[9];
        result = sub_1C584FC60();
        if (v10 != 8)
        {
          __break(1u);
          return result;
        }

        v21 = v0[12];
        v22 = v0[9];
        v0[5] = result;
        (*(v11 + 16))(v21, v0 + 5, v22);
        swift_unknownObjectRelease();
        v14 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
LABEL_12:
          __break(1u);
          break;
        }
      }

      v15 = v0[12];
      v16 = v0[9];
      v17 = v0[7];
      v0[6] = v17;
      v18 = v17;
      sub_1C584F840();
      (*(v11 + 8))(v15, v16);
      ++v9;
    }

    while (v14 != sub_1C584F800());
  }

  v23 = v0[12];
  v24 = v0[8];
  v25 = v0[9];

  v26 = sub_1C584F7B0();
  sub_1C5688E70(v26);

  v27 = v0[1];

  return v27();
}

uint64_t *ItemPreloader.deinit()
{
  v1 = *v0;
  v2 = qword_1EC17AE50;
  v3 = sub_1C584F2C0();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  v4 = *(v0 + qword_1EC17AE48 + 8);

  v5 = *(*v0 + 112);
  v6 = *(v1 + 80);
  v7 = type metadata accessor for ItemPreloader.LoadingState();
  (*(*(v7 - 8) + 8))(v0 + v5, v7);
  v8 = *(v0 + *(*v0 + 120));

  swift_defaultActor_destroy();
  return v0;
}

uint64_t ItemPreloader.__deallocating_deinit()
{
  ItemPreloader.deinit();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1C568B3EC()
{
  v0 = sub_1C584F2C0();
  __swift_allocate_value_buffer(v0, qword_1EC17B0A8);
  __swift_project_value_buffer(v0, qword_1EC17B0A8);
  v1 = sub_1C5715FD8();
  swift_beginAccess();
  v3 = *v1;
  v2 = v1[1];

  return sub_1C584F2B0();
}

uint64_t sub_1C568B4D0(uint64_t a1)
{
  result = sub_1C584F2C0();
  if (v3 <= 0x3F)
  {
    v6 = *(result - 8) + 64;
    v4 = *(a1 + 80);
    result = type metadata accessor for ItemPreloader.LoadingState();
    if (v5 <= 0x3F)
    {
      v7 = *(result - 8) + 64;
      result = swift_initClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t dispatch thunk of ItemPreloader.preload()()
{
  v2 = *(*v0 + 184);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1C565C598;

  return v6();
}

uint64_t dispatch thunk of ItemPreloader.fetch()(uint64_t a1)
{
  v4 = *(*v1 + 192);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1C565C598;

  return v8(a1);
}

unint64_t sub_1C568B850(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    result = sub_1C568BBDC();
    if (v4 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1C568B8C8(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = 8;
  if (*(v3 + 64) > 8uLL)
  {
    v4 = *(v3 + 64);
  }

  v5 = (1u >> (8 * v4)) ^ 0xFD;
  if (v4 > 3)
  {
    v5 = 253;
  }

  if (!a2)
  {
    return 0;
  }

  if (v5 >= a2)
  {
    goto LABEL_27;
  }

  v6 = v4 + 1;
  v7 = 8 * (v4 + 1);
  if ((v4 + 1) <= 3)
  {
    v10 = ((~(-1 << v7) + a2 - v5) >> v7) + 1;
    if (HIWORD(v10))
    {
      v8 = *(a1 + v6);
      if (!v8)
      {
        goto LABEL_27;
      }

      goto LABEL_16;
    }

    if (v10 > 0xFF)
    {
      v8 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_27;
      }

      goto LABEL_16;
    }

    if (v10 < 2)
    {
LABEL_27:
      v12 = *(a1 + v4);
      if (v5 <= (v12 ^ 0xFFu))
      {
        return 0;
      }

      else
      {
        return (256 - v12);
      }
    }
  }

  v8 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_27;
  }

LABEL_16:
  v11 = (v8 - 1) << v7;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    if (v6 > 2)
    {
      if (v6 == 3)
      {
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v6) = *a1;
      }
    }

    else if (v6 == 1)
    {
      LODWORD(v6) = *a1;
    }

    else
    {
      LODWORD(v6) = *a1;
    }
  }

  return v5 + (v6 | v11) + 1;
}

void sub_1C568BA08(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (v5 <= 8)
  {
    v5 = 8;
  }

  v6 = (1u >> (8 * v5)) ^ 0xFD;
  if (v5 > 3)
  {
    v6 = 253;
  }

  v7 = v5 + 1;
  if (v6 >= a3)
  {
    v8 = 0;
    if (v6 < a2)
    {
      goto LABEL_17;
    }

LABEL_21:
    if (v8 > 1)
    {
      if (v8 != 2)
      {
        *&a1[v7] = 0;
        if (!a2)
        {
          return;
        }

LABEL_33:
        a1[v5] = -a2;
        return;
      }

      *&a1[v7] = 0;
    }

    else if (v8)
    {
      a1[v7] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_33;
    }

    if (!a2)
    {
      return;
    }

    goto LABEL_33;
  }

  v8 = 1;
  if (v7 <= 3)
  {
    v9 = ((~(-1 << (8 * v7)) + a3 - v6) >> (8 * v7)) + 1;
    v10 = HIWORD(v9);
    if (v9 < 0x100)
    {
      v11 = 1;
    }

    else
    {
      v11 = 2;
    }

    if (v9 >= 2)
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    if (v10)
    {
      v8 = 4;
    }

    else
    {
      v8 = v12;
    }
  }

  if (v6 >= a2)
  {
    goto LABEL_21;
  }

LABEL_17:
  v13 = ~v6 + a2;
  if (v7 >= 4)
  {
    bzero(a1, v7);
    *a1 = v13;
    v14 = 1;
    if (v8 > 1)
    {
      goto LABEL_41;
    }

    goto LABEL_38;
  }

  v14 = (v13 >> (8 * v7)) + 1;
  if (v5 == -1)
  {
LABEL_37:
    if (v8 > 1)
    {
      goto LABEL_41;
    }

    goto LABEL_38;
  }

  v15 = v13 & ~(-1 << (8 * v7));
  bzero(a1, v7);
  if (v7 == 3)
  {
    *a1 = v15;
    a1[2] = BYTE2(v15);
    goto LABEL_37;
  }

  if (v7 == 2)
  {
    *a1 = v15;
    if (v8 > 1)
    {
LABEL_41:
      if (v8 == 2)
      {
        *&a1[v7] = v14;
      }

      else
      {
        *&a1[v7] = v14;
      }

      return;
    }
  }

  else
  {
    *a1 = v13;
    if (v8 > 1)
    {
      goto LABEL_41;
    }
  }

LABEL_38:
  if (v8)
  {
    a1[v7] = v14;
  }
}

unint64_t sub_1C568BBDC()
{
  result = qword_1EC16CF60;
  if (!qword_1EC16CF60)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EC16CF60);
  }

  return result;
}

double URLShorteningSessionConfiguration.timeout.getter()
{
  v1 = OBJC_IVAR___MUURLShorteningSessionConfiguration_timeout;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t URLShorteningSessionConfiguration.timeout.setter(double a1)
{
  v3 = OBJC_IVAR___MUURLShorteningSessionConfiguration_timeout;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t URLShorteningSessionConfiguration.doNotUseCache.getter()
{
  v1 = OBJC_IVAR___MUURLShorteningSessionConfiguration_doNotUseCache;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t URLShorteningSessionConfiguration.doNotUseCache.setter(char a1)
{
  v3 = OBJC_IVAR___MUURLShorteningSessionConfiguration_doNotUseCache;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

id URLShorteningSessionConfiguration.init()()
{
  ObjectType = swift_getObjectType();
  v2 = *MEMORY[0x1E696F178];
  v3 = *(MEMORY[0x1E696F178] + 8);
  GEOConfigGetDouble();
  *&v0[OBJC_IVAR___MUURLShorteningSessionConfiguration_timeout] = v4;
  v0[OBJC_IVAR___MUURLShorteningSessionConfiguration_doNotUseCache] = 0;
  v6.receiver = v0;
  v6.super_class = ObjectType;
  return objc_msgSendSuper2(&v6, sel_init);
}

id URLShorteningSessionConfiguration.__allocating_init(timeout:doNotUseCache:)(char a1, double a2)
{
  v5 = objc_allocWithZone(v2);
  *&v5[OBJC_IVAR___MUURLShorteningSessionConfiguration_timeout] = a2;
  v5[OBJC_IVAR___MUURLShorteningSessionConfiguration_doNotUseCache] = a1;
  v7.receiver = v5;
  v7.super_class = v2;
  return objc_msgSendSuper2(&v7, sel_init);
}

id URLShorteningSessionConfiguration.init(timeout:doNotUseCache:)(char a1, double a2)
{
  ObjectType = swift_getObjectType();
  *&v2[OBJC_IVAR___MUURLShorteningSessionConfiguration_timeout] = a2;
  v2[OBJC_IVAR___MUURLShorteningSessionConfiguration_doNotUseCache] = a1;
  v7.receiver = v2;
  v7.super_class = ObjectType;
  return objc_msgSendSuper2(&v7, sel_init);
}

uint64_t sub_1C568C178()
{
  sub_1C584FEA0();
  MEMORY[0x1C694A560](0);
  return sub_1C584FEF0();
}

uint64_t sub_1C568C1E4()
{
  sub_1C584FEA0();
  MEMORY[0x1C694A560](0);
  return sub_1C584FEF0();
}

id URLShorteningSession.__allocating_init(originalURLProvider:configuration:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v25 = a3;
  v7 = sub_1C584F2C0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7, v10);
  v11 = v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = v4;
  v12 = objc_allocWithZone(v4);
  if (qword_1EC17B060 != -1)
  {
    swift_once();
  }

  v13 = __swift_project_value_buffer(v7, qword_1EC17B068);
  v14 = *(v8 + 16);
  v14(&v12[OBJC_IVAR___MUURLShorteningSession_logger], v13, v7);
  v15 = &v12[OBJC_IVAR___MUURLShorteningSession_originalURLProvider];
  *v15 = a1;
  *(v15 + 1) = a2;
  v24[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16EAD8, &qword_1C586AC20);
  v14(v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v13, v7);
  v16 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v17 = (v9 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = swift_allocObject();
  (*(v8 + 32))(v18 + v16, v11, v7);
  v19 = (v18 + v17);
  *v19 = a1;
  v19[1] = a2;
  v20 = v25;
  *(v18 + ((v17 + 23) & 0xFFFFFFFFFFFFFFF8)) = v25;
  swift_retain_n();
  v21 = v20;
  *&v12[OBJC_IVAR___MUURLShorteningSession_internalShorteningSession] = ItemPreloader.__allocating_init(provider:)(&unk_1C586AC30, v18);
  v27.receiver = v12;
  v27.super_class = v26;
  v22 = objc_msgSendSuper2(&v27, sel_init);

  return v22;
}

id URLShorteningSession.init(originalURLProvider:configuration:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v24 = a3;
  ObjectType = swift_getObjectType();
  v7 = sub_1C584F2C0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7, v10);
  v11 = v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC17B060 != -1)
  {
    swift_once();
  }

  v12 = __swift_project_value_buffer(v7, qword_1EC17B068);
  v13 = *(v8 + 16);
  v13(&v4[OBJC_IVAR___MUURLShorteningSession_logger], v12, v7);
  v14 = &v4[OBJC_IVAR___MUURLShorteningSession_originalURLProvider];
  *v14 = a1;
  *(v14 + 1) = a2;
  v23[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16EAD8, &qword_1C586AC20);
  v13(v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v12, v7);
  v15 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v16 = (v9 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = swift_allocObject();
  (*(v8 + 32))(v17 + v15, v11, v7);
  v18 = (v17 + v16);
  *v18 = a1;
  v18[1] = a2;
  v19 = v24;
  *(v17 + ((v16 + 23) & 0xFFFFFFFFFFFFFFF8)) = v24;
  swift_retain_n();
  v20 = v19;
  *&v4[OBJC_IVAR___MUURLShorteningSession_internalShorteningSession] = ItemPreloader.__allocating_init(provider:)(&unk_1C586AC38, v17);
  v26.receiver = v4;
  v26.super_class = ObjectType;
  v21 = objc_msgSendSuper2(&v26, sel_init);

  return v21;
}

uint64_t sub_1C568C6D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[24] = a4;
  v5[25] = a5;
  v5[22] = a2;
  v5[23] = a3;
  v5[21] = a1;
  v6 = sub_1C584F580();
  v5[26] = v6;
  v7 = *(v6 - 8);
  v5[27] = v7;
  v8 = *(v7 + 64) + 15;
  v5[28] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC16E660, &unk_1C58685F0) - 8) + 64) + 15;
  v5[29] = swift_task_alloc();
  v10 = sub_1C584EA90();
  v5[30] = v10;
  v11 = *(v10 - 8);
  v5[31] = v11;
  v12 = *(v11 + 64) + 15;
  v5[32] = swift_task_alloc();
  v5[33] = swift_task_alloc();
  v5[34] = swift_task_alloc();
  v5[35] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C568C850, 0, 0);
}

uint64_t sub_1C568C850()
{
  v60 = v0;
  v1 = v0[22];
  v2 = sub_1C584F2A0();
  v3 = sub_1C584F9C0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1C5620000, v2, v3, "Fetching original URL", v4, 2u);
    MEMORY[0x1C694B7A0](v4, -1, -1);
  }

  v5 = v0[30];
  v6 = v0[31];
  v7 = v0[29];
  v9 = v0[23];
  v8 = v0[24];

  v9();
  if ((*(v6 + 48))(v7, 1, v5) == 1)
  {
    v10 = v0[22];
    sub_1C5625230(v0[29], &unk_1EC16E660, &unk_1C58685F0);
    v11 = sub_1C584F2A0();
    v12 = sub_1C584F9B0();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_1C5620000, v11, v12, "No original URL", v13, 2u);
      MEMORY[0x1C694B7A0](v13, -1, -1);
    }

    sub_1C568FB68();
    swift_allocError();
    swift_willThrow();
    v15 = v0[34];
    v14 = v0[35];
    v17 = v0[32];
    v16 = v0[33];
    v19 = v0[28];
    v18 = v0[29];

    v20 = v0[1];

    return v20();
  }

  else
  {
    v22 = v0[34];
    v23 = v0[35];
    v24 = v0[30];
    v25 = v0[31];
    v26 = v0[29];
    v27 = v0[22];
    v28 = *(v25 + 32);
    v0[36] = v28;
    v0[37] = (v25 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v28(v23, v26, v24);
    v29 = *(v25 + 16);
    v0[38] = v29;
    v0[39] = (v25 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v29(v22, v23, v24);
    v30 = sub_1C584F2A0();
    v31 = sub_1C584F9C0();
    v32 = os_log_type_enabled(v30, v31);
    v33 = v0[34];
    v35 = v0[30];
    v34 = v0[31];
    if (v32)
    {
      v36 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      v59 = v57;
      *v36 = 136315138;
      sub_1C568FB10();
      v37 = sub_1C584FD90();
      v39 = v38;
      v40 = *(v34 + 8);
      v40(v33, v35);
      v41 = sub_1C5649518(v37, v39, &v59);

      *(v36 + 4) = v41;
      _os_log_impl(&dword_1C5620000, v30, v31, "Trying to shorten original url %s", v36, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v57);
      MEMORY[0x1C694B7A0](v57, -1, -1);
      MEMORY[0x1C694B7A0](v36, -1, -1);
    }

    else
    {

      v40 = *(v34 + 8);
      v40(v33, v35);
    }

    v0[40] = v40;
    v42 = v0[35];
    v58 = v0[33];
    v44 = v0[27];
    v43 = v0[28];
    v45 = v0[25];
    v46 = v0[26];
    v47 = [objc_allocWithZone(MEMORY[0x1E696F420]) init];
    v0[41] = v47;
    v48 = OBJC_IVAR___MUURLShorteningSessionConfiguration_doNotUseCache;
    swift_beginAccess();
    if (*(v45 + v48))
    {
      v49 = 2;
    }

    else
    {
      v49 = 0;
    }

    [v47 setOptions_];
    v50 = sub_1C584EA20();
    v0[42] = v50;
    v51 = *MEMORY[0x1E696F178];
    v52 = *(MEMORY[0x1E696F178] + 8);
    GEOConfigGetDouble();
    v54 = v53;
    sub_1C568FBBC();
    (*(v44 + 104))(v43, *MEMORY[0x1E69E7F98], v46);
    v55 = sub_1C584FA20();
    v0[43] = v55;
    (*(v44 + 8))(v43, v46);
    v0[2] = v0;
    v0[7] = v58;
    v0[3] = sub_1C568CDD4;
    v56 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16EAF8, &qword_1C586ADC8);
    v0[10] = MEMORY[0x1E69E9820];
    v0[11] = 1107296256;
    v0[12] = sub_1C568D22C;
    v0[13] = &block_descriptor_83;
    v0[14] = v56;
    [v47 shortenURL:v50 timeout:v55 queue:v0 + 10 completion:v54];

    return MEMORY[0x1EEE6DEC8](v0 + 2);
  }
}

uint64_t sub_1C568CDD4()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 352) = v2;
  if (v2)
  {
    v3 = sub_1C568D13C;
  }

  else
  {
    v3 = sub_1C568CEE4;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1C568CEE4()
{
  v35 = v0;
  v2 = *(v0 + 336);
  v1 = *(v0 + 344);
  v4 = *(v0 + 304);
  v3 = *(v0 + 312);
  v5 = *(v0 + 296);
  v6 = *(v0 + 256);
  v7 = *(v0 + 240);
  v8 = *(v0 + 168);
  (*(v0 + 288))(v8, *(v0 + 264), v7);

  v4(v6, v8, v7);
  v9 = sub_1C584F2A0();
  v10 = sub_1C584F9C0();
  v11 = os_log_type_enabled(v9, v10);
  v12 = *(v0 + 320);
  v13 = *(v0 + 280);
  v15 = *(v0 + 248);
  v14 = *(v0 + 256);
  v16 = *(v0 + 240);
  if (v11)
  {
    v32 = *(v0 + 328);
    v33 = *(v0 + 320);
    v17 = swift_slowAlloc();
    v31 = v13;
    v18 = swift_slowAlloc();
    v34 = v18;
    *v17 = 136315138;
    sub_1C568FB10();
    v19 = sub_1C584FD90();
    v21 = v20;
    v33(v14, v16);
    v22 = sub_1C5649518(v19, v21, &v34);

    *(v17 + 4) = v22;
    _os_log_impl(&dword_1C5620000, v9, v10, "Successfuly shortened url %s", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v18);
    MEMORY[0x1C694B7A0](v18, -1, -1);
    MEMORY[0x1C694B7A0](v17, -1, -1);

    v33(v31, v16);
  }

  else
  {

    v12(v14, v16);
    v12(v13, v16);
  }

  v24 = *(v0 + 272);
  v23 = *(v0 + 280);
  v26 = *(v0 + 256);
  v25 = *(v0 + 264);
  v28 = *(v0 + 224);
  v27 = *(v0 + 232);

  v29 = *(v0 + 8);

  return v29();
}

uint64_t sub_1C568D13C()
{
  v2 = v0[43];
  v1 = v0[44];
  v4 = v0[41];
  v3 = v0[42];
  v5 = v0[40];
  v6 = v0[35];
  v7 = v0[30];
  v8 = v0[31];
  swift_willThrow();

  v5(v6, v7);
  v9 = v0[44];
  v11 = v0[34];
  v10 = v0[35];
  v13 = v0[32];
  v12 = v0[33];
  v15 = v0[28];
  v14 = v0[29];

  v16 = v0[1];

  return v16();
}

uint64_t sub_1C568D22C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_1C584EA90();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16EAB8, &unk_1C586ADD0);
    v12 = swift_allocError();
    *v13 = a3;
    v14 = a3;

    return MEMORY[0x1EEE6DEE8](v11, v12);
  }

  else
  {
    sub_1C584EA50();
    (*(v6 + 32))(*(*(v11 + 64) + 40), v10, v5);
    return swift_continuation_throwingResume();
  }
}

uint64_t sub_1C568D62C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = (*(a1 + 16))();
  if (v3)
  {
    v4 = v3;
    sub_1C584EA50();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = sub_1C584EA90();
  v7 = *(*(v6 - 8) + 56);

  return v7(a2, v5, 1, v6);
}

id URLShorteningSession.__allocating_init(originalURLProvider:)(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  v10[4] = a1;
  v10[5] = a2;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 1107296256;
  v10[2] = sub_1C568D8A4;
  v10[3] = &block_descriptor_8;
  v6 = _Block_copy(v10);

  v7 = [objc_allocWithZone(type metadata accessor for URLShorteningSessionConfiguration()) init];
  v8 = [v5 initWithOriginalURLProvider:v6 configuration:v7];

  _Block_release(v6);
  return v8;
}

id URLShorteningSession.init(originalURLProvider:)(uint64_t a1, uint64_t a2)
{
  v7[4] = a1;
  v7[5] = a2;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 1107296256;
  v7[2] = sub_1C568D8A4;
  v7[3] = &block_descriptor_9;
  v3 = _Block_copy(v7);

  v4 = [objc_allocWithZone(type metadata accessor for URLShorteningSessionConfiguration()) init];
  v5 = [v2 initWithOriginalURLProvider:v3 configuration:v4];

  _Block_release(v3);
  return v5;
}

id sub_1C568D8A4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC16E660, &unk_1C58685F0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8, v4);
  v6 = &v16 - v5;
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);

  v8(v9);

  v10 = sub_1C584EA90();
  v11 = *(v10 - 8);
  v12 = (*(v11 + 48))(v6, 1, v10);
  v13 = 0;
  if (v12 != 1)
  {
    v14 = sub_1C584EA20();
    (*(v11 + 8))(v6, v10);
    v13 = v14;
  }

  return v13;
}

Swift::Void __swiftcall URLShorteningSession.preload()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC170930, &qword_1C58695F0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8, v3);
  v5 = &v9 - v4;
  v6 = sub_1C584F8A0();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = v0;
  v8 = v0;
  sub_1C5659C04(0, 0, v5, &unk_1C586AC50, v7);
}

uint64_t sub_1C568DC18()
{
  v1 = v0[2];
  v0[3] = OBJC_IVAR___MUURLShorteningSession_logger;
  v2 = sub_1C584F2A0();
  v3 = sub_1C584F9C0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1C5620000, v2, v3, "Preloading URL for shortening", v4, 2u);
    MEMORY[0x1C694B7A0](v4, -1, -1);
  }

  v5 = v0[2];

  v6 = *(**(v5 + OBJC_IVAR___MUURLShorteningSession_internalShorteningSession) + 184);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  v0[4] = v8;
  *v8 = v0;
  v8[1] = sub_1C568DDC0;

  return v10();
}

uint64_t sub_1C568DDC0()
{
  v1 = *(*v0 + 32);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1C568DEBC, 0, 0);
}

uint64_t sub_1C568DEBC()
{
  v1 = v0[2] + v0[3];
  v2 = sub_1C584F2A0();
  v3 = sub_1C584F9C0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1C5620000, v2, v3, "Finished preload", v4, 2u);
    MEMORY[0x1C694B7A0](v4, -1, -1);
  }

  v5 = v0[1];

  return v5();
}

uint64_t sub_1C568E0B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC16E660, &unk_1C58685F0) - 8) + 64) + 15;
  v6[5] = swift_task_alloc();
  v8 = sub_1C584EA90();
  v6[6] = v8;
  v9 = *(v8 - 8);
  v6[7] = v9;
  v10 = *(v9 + 64) + 15;
  v6[8] = swift_task_alloc();
  v6[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C568E1C0, 0, 0);
}

uint64_t sub_1C568E1C0()
{
  v1 = v0[2];
  v0[10] = OBJC_IVAR___MUURLShorteningSession_logger;
  v2 = sub_1C584F2A0();
  v3 = sub_1C584F9C0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1C5620000, v2, v3, "Fetching short URL", v4, 2u);
    MEMORY[0x1C694B7A0](v4, -1, -1);
  }

  v5 = v0[2];

  v6 = *(**(v5 + OBJC_IVAR___MUURLShorteningSession_internalShorteningSession) + 192);
  v11 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  v0[11] = v8;
  *v8 = v0;
  v8[1] = sub_1C568E370;
  v9 = v0[9];

  return v11(v9);
}

uint64_t sub_1C568E370()
{
  v2 = *(*v1 + 88);
  v5 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v3 = sub_1C568E6F8;
  }

  else
  {
    v3 = sub_1C568E484;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1C568E484()
{
  v29 = v0;
  v1 = v0[10];
  v2 = v0[2];
  v3 = *(v0[7] + 16);
  v3(v0[8], v0[9], v0[6]);
  v4 = sub_1C584F2A0();
  v5 = sub_1C584F9C0();
  v6 = os_log_type_enabled(v4, v5);
  v8 = v0[7];
  v7 = v0[8];
  v9 = v0[6];
  if (v6)
  {
    v10 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v28 = v25;
    *v10 = 136315138;
    sub_1C568FB10();
    v24 = sub_1C584FD90();
    v26 = v3;
    v12 = v11;
    v27 = *(v8 + 8);
    v27(v7, v9);
    v13 = sub_1C5649518(v24, v12, &v28);
    v3 = v26;

    *(v10 + 4) = v13;
    _os_log_impl(&dword_1C5620000, v4, v5, "Fetched short URL %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v25);
    MEMORY[0x1C694B7A0](v25, -1, -1);
    MEMORY[0x1C694B7A0](v10, -1, -1);
  }

  else
  {

    v27 = *(v8 + 8);
    v27(v7, v9);
  }

  v14 = v0[9];
  v15 = v0[6];
  v16 = v0[7];
  v17 = v0[5];
  v18 = v0[3];
  v3(v17, v14, v15);
  (*(v16 + 56))(v17, 0, 1, v15);
  v18(v17, 0);
  sub_1C5625230(v17, &unk_1EC16E660, &unk_1C58685F0);
  v27(v14, v15);
  v20 = v0[8];
  v19 = v0[9];
  v21 = v0[5];

  v22 = v0[1];

  return v22();
}

uint64_t sub_1C568E6F8()
{
  v1 = v0[12];
  v2 = v0[10];
  v3 = v0[2];
  v4 = v1;
  v5 = sub_1C584F2A0();
  v6 = sub_1C584F9B0();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[12];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_1C5620000, v5, v6, "Short URL ended with error %@", v8, 0xCu);
    sub_1C5625230(v9, &unk_1EC16E670, &qword_1C586A030);
    MEMORY[0x1C694B7A0](v9, -1, -1);
    MEMORY[0x1C694B7A0](v8, -1, -1);
  }

  v12 = v0[12];
  v13 = v0[6];
  v14 = v0[7];
  v15 = v0[4];
  v16 = v0[5];
  v17 = v0[3];

  (*(v14 + 56))(v16, 1, 1, v13);
  v18 = v12;
  v17(v16, v12);

  sub_1C5625230(v16, &unk_1EC16E660, &unk_1C58685F0);
  v20 = v0[8];
  v19 = v0[9];
  v21 = v0[5];

  v22 = v0[1];

  return v22();
}

void sub_1C568E918(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC16E660, &unk_1C58685F0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8, v8);
  v10 = &v15 - v9;
  sub_1C56466CC(a1, &v15 - v9, &unk_1EC16E660, &unk_1C58685F0);
  v11 = sub_1C584EA90();
  v12 = *(v11 - 8);
  v13 = 0;
  if ((*(v12 + 48))(v10, 1, v11) != 1)
  {
    v13 = sub_1C584EA20();
    (*(v12 + 8))(v10, v11);
  }

  if (a2)
  {
    v14 = sub_1C584E940();
  }

  else
  {
    v14 = 0;
  }

  (*(a3 + 16))(a3, v13, v14);
}

uint64_t sub_1C568EA94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC170930, &qword_1C58695F0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8, v10);
  v12 = &v17 - v11;
  v13 = sub_1C584F8A0();
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = v4;
  v14[5] = a1;
  v14[6] = a2;
  v15 = v4;

  sub_1C5659C04(0, 0, v12, a4, v14);
}

uint64_t sub_1C568EBA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC16E660, &unk_1C58685F0) - 8) + 64) + 15;
  v6[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C568EC48, 0, 0);
}

uint64_t sub_1C568EC48()
{
  v1 = *(v0[2] + OBJC_IVAR___MUURLShorteningSession_internalShorteningSession);
  v0[6] = v1;
  v2 = (*v1 + 200) & 0xFFFFFFFFFFFFLL | 0x2ED2000000000000;
  v0[7] = *(*v1 + 200);
  v0[8] = v2;
  return MEMORY[0x1EEE6DFA0](sub_1C568EC90, v1, 0);
}

uint64_t sub_1C568EC90()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  (*(v0 + 56))();

  return MEMORY[0x1EEE6DFA0](sub_1C568ECFC, 0, 0);
}

uint64_t sub_1C568ECFC()
{
  v1 = *(v0 + 40);
  (*(v0 + 24))(v1);
  sub_1C5625230(v1, &unk_1EC16E660, &unk_1C58685F0);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1C568EDC4(void *a1, uint64_t a2, const void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC170930, &qword_1C58695F0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8, v13);
  v15 = &v22 - v14;
  v16 = _Block_copy(a3);
  v17 = swift_allocObject();
  *(v17 + 16) = v16;
  v18 = sub_1C584F8A0();
  (*(*(v18 - 8) + 56))(v15, 1, 1, v18);
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = a1;
  v19[5] = a6;
  v19[6] = v17;
  v20 = a1;
  sub_1C5659C04(0, 0, v15, a7, v19);
}

void sub_1C568EF04(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC16E660, &unk_1C58685F0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8, v6);
  v8 = &v12 - v7;
  sub_1C56466CC(a1, &v12 - v7, &unk_1EC16E660, &unk_1C58685F0);
  v9 = sub_1C584EA90();
  v10 = *(v9 - 8);
  v11 = 0;
  if ((*(v10 + 48))(v8, 1, v9) != 1)
  {
    v11 = sub_1C584EA20();
    (*(v10 + 8))(v8, v9);
  }

  (*(a2 + 16))(a2, v11);
}

id URLShorteningSession.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_1C568F164()
{
  v0 = sub_1C584F2C0();
  __swift_allocate_value_buffer(v0, qword_1EC17B068);
  __swift_project_value_buffer(v0, qword_1EC17B068);
  v1 = sub_1C5715FD8();
  swift_beginAccess();
  v3 = *v1;
  v2 = v1[1];

  return sub_1C584F2B0();
}

uint64_t sub_1C568F208(uint64_t a1)
{
  v4 = *(sub_1C584F2C0() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 23) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v1 + v6);
  v9 = *v8;
  v10 = v8[1];
  v11 = *(v1 + v7);
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_1C565C934;

  return sub_1C568C6D0(a1, v1 + v5, v9, v10, v11);
}

uint64_t sub_1C568F334(uint64_t a1)
{
  v4 = *(sub_1C584F2C0() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 23) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v1 + v6);
  v9 = *v8;
  v10 = v8[1];
  v11 = *(v1 + v7);
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_1C565C598;

  return sub_1C568C6D0(a1, v1 + v5, v9, v10, v11);
}

uint64_t block_copy_helper_9(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1C568F49C()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1C565C934;

  return sub_1C568DBF8(v3, v4, v5, v2);
}

uint64_t sub_1C568F530()
{
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1C565C934;

  return sub_1C568E0B8(v5, v6, v7, v2, v3, v4);
}

uint64_t sub_1C568F5D8()
{
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1C565C934;

  return sub_1C568EBA8(v5, v6, v7, v2, v3, v4);
}

unint64_t sub_1C568F684()
{
  result = qword_1EC16EAE8;
  if (!qword_1EC16EAE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC16EAE8);
  }

  return result;
}

uint64_t type metadata accessor for URLShorteningSession()
{
  result = qword_1EC178050;
  if (!qword_1EC178050)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C568F758()
{
  result = sub_1C584F2C0();
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

uint64_t getEnumTagSinglePayload for URLShorteningSession.InternalError(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for URLShorteningSession.InternalError(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t sub_1C568F920()
{
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1C565C598;

  return sub_1C568EBA8(v5, v6, v7, v2, v3, v4);
}

uint64_t objectdestroy_15Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 48);

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t objectdestroy_11Tm_0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t objectdestroyTm()
{
  v1 = sub_1C584F2C0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v7 = *(v0 + v5 + 8);

  return MEMORY[0x1EEE6BDD0](v0, v6 + 8, v3 | 7);
}

unint64_t sub_1C568FB10()
{
  result = qword_1EC16D8C0;
  if (!qword_1EC16D8C0)
  {
    sub_1C584EA90();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC16D8C0);
  }

  return result;
}

unint64_t sub_1C568FB68()
{
  result = qword_1EC16EAF0;
  if (!qword_1EC16EAF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC16EAF0);
  }

  return result;
}

unint64_t sub_1C568FBBC()
{
  result = qword_1EC16D010;
  if (!qword_1EC16D010)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC16D010);
  }

  return result;
}

id sub_1C568FC7C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for _MUSwiftBundleIdentifier();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id static NSBundle.mapsUIBundle.getter()
{
  type metadata accessor for _MUSwiftBundleIdentifier();
  v0 = [swift_getObjCClassFromMetadata() classForCoder];
  v1 = [objc_opt_self() bundleForClass_];

  return v1;
}

uint64_t sub_1C568FD38(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C57041CC();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1C568FDA0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C56F4368();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

unint64_t sub_1C568FDEC@<X0>(unint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1C56EBE80(a1);
  *a2 = result;
  return result;
}

unint64_t sub_1C568FE24@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1C56EBE80(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1C568FE50()
{
  v1 = *(v0 + *(type metadata accessor for WebPlacecardBridge(0) + 24));
  if (v1 == 19)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1C568FE7C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C5704178();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

unint64_t sub_1C568FEC8@<X0>(unint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1C56EBEB0(a1);
  *a2 = result;
  return result;
}

unint64_t sub_1C568FF00@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1C56EBEB0(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1C568FF2C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C5704124();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1C568FF88(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C57040D0();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1C569001C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C570407C();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1C5690068@<X0>(unint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1C56EBEC0(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1C56900B4@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1C56EBEC0(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1C569011C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C5704028();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1C5690168@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1C56EBEE0(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1C56901B4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1C56EBEE0(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1C56901F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C56F2204();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1C5690244@<X0>(unint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1C562A110(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1C5690288@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1C562A110(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1C56902C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C5703FD4();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1C5690320(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C5703F80();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1C569036C@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  if (result == 2)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (result == 1)
  {
    v2 = 0;
  }

  *a2 = v2;
  return result;
}

uint64_t sub_1C5690388()
{
  if (*v0)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

void *sub_1C56903AC@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == 2)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result == 1)
  {
    v3 = 0;
  }

  else
  {
    v3 = v2;
  }

  *a2 = v3;
  return result;
}

void sub_1C56903CC(uint64_t *a1@<X8>)
{
  v2 = 1;
  if (*v1)
  {
    v2 = 2;
  }

  *a1 = v2;
}

uint64_t sub_1C56903E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C5703F2C();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1C5690440(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C5703ED8();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

unint64_t sub_1C569048C@<X0>(unint64_t result@<X0>, _BYTE *a2@<X8>)
{
  v2 = 0x2010003u >> (8 * result);
  if (result >= 4)
  {
    LOBYTE(v2) = 3;
  }

  *a2 = v2;
  return result;
}

void *sub_1C56904C0@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result >= 4uLL)
  {
    v2 = 3;
  }

  else
  {
    v2 = 0x2010003u >> (8 * *result);
  }

  *a2 = v2;
  return result;
}

uint64_t sub_1C56904E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C5703E84();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

unint64_t sub_1C5690534@<X0>(unint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1C56EC0C8(a1);
  *a2 = result;
  return result;
}

unint64_t sub_1C569056C@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1C56EC0C8(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1C5690598(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C5703E30();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1C56905F4@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16EB00, &qword_1C586AF68);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8, v5);
  v7 = &v16 - v6;
  v8 = *(v1 + *(type metadata accessor for WebPlacecardBridge.MUBridgeMethodArgument(0) + 20));
  v9 = OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge22MUBridgeMethodArgumentP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__iconArgument;
  swift_beginAccess();
  sub_1C56466CC(v8 + v9, v7, &qword_1EC16EB00, &qword_1C586AF68);
  v10 = type metadata accessor for WebPlacecardBridge.MUIconArgument(0);
  v11 = *(*(v10 - 1) + 48);
  if (v11(v7, 1, v10) != 1)
  {
    return sub_1C56EC178(v7, a1, type metadata accessor for WebPlacecardBridge.MUIconArgument);
  }

  sub_1C584EFC0();
  v12 = v10[5];
  v13 = type metadata accessor for WebPlacecardBridge.MUStyleAttributes(0);
  (*(*(v13 - 8) + 56))(a1 + v12, 1, 1, v13);
  *(a1 + v10[6]) = 2;
  *(a1 + v10[7]) = 2;
  v14 = a1 + v10[8];
  *v14 = 0;
  *(v14 + 4) = 1;
  result = (v11)(v7, 1, v10);
  if (result != 1)
  {
    return sub_1C5625230(v7, &qword_1EC16EB00, &qword_1C586AF68);
  }

  return result;
}

uint64_t sub_1C56907E0@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16EB08, &qword_1C586AF70);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8, v5);
  v7 = &v14 - v6;
  v8 = *(v1 + *(type metadata accessor for WebPlacecardBridge.MUBridgeMethodArgument(0) + 20));
  v9 = OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge22MUBridgeMethodArgumentP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__attributionArgument;
  swift_beginAccess();
  sub_1C56466CC(v8 + v9, v7, &qword_1EC16EB08, &qword_1C586AF70);
  v10 = type metadata accessor for WebPlacecardBridge.MUAttributionArgument(0);
  v11 = *(*(v10 - 8) + 48);
  if (v11(v7, 1, v10) != 1)
  {
    return sub_1C56EC178(v7, a1, type metadata accessor for WebPlacecardBridge.MUAttributionArgument);
  }

  sub_1C584EFC0();
  v12 = (a1 + *(v10 + 20));
  *v12 = 0;
  v12[1] = 0;
  *(a1 + *(v10 + 24)) = 2;
  result = (v11)(v7, 1, v10);
  if (result != 1)
  {
    return sub_1C5625230(v7, &qword_1EC16EB08, &qword_1C586AF70);
  }

  return result;
}

uint64_t sub_1C5690970@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16EB10, &qword_1C586AF78);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8, v5);
  v7 = &v14 - v6;
  v8 = *(v1 + *(type metadata accessor for WebPlacecardBridge.MUBridgeMethodArgument(0) + 20));
  v9 = OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge22MUBridgeMethodArgumentP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__artworkArgument;
  swift_beginAccess();
  sub_1C56466CC(v8 + v9, v7, &qword_1EC16EB10, &qword_1C586AF78);
  v10 = type metadata accessor for WebPlacecardBridge.MUAmpArtworkArgument(0);
  v11 = *(*(v10 - 8) + 48);
  if (v11(v7, 1, v10) != 1)
  {
    return sub_1C56EC178(v7, a1, type metadata accessor for WebPlacecardBridge.MUAmpArtworkArgument);
  }

  sub_1C584EFC0();
  v12 = (a1 + *(v10 + 20));
  *v12 = 0;
  v12[1] = 0;
  result = (v11)(v7, 1, v10);
  if (result != 1)
  {
    return sub_1C5625230(v7, &qword_1EC16EB10, &qword_1C586AF78);
  }

  return result;
}

uint64_t sub_1C5690AF4@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16EB18, &qword_1C586AF80);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8, v5);
  v7 = &v15 - v6;
  v8 = *(v1 + *(type metadata accessor for WebPlacecardBridge.MUBridgeMethodArgument(0) + 20));
  v9 = OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge22MUBridgeMethodArgumentP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__userInteractionAction;
  swift_beginAccess();
  sub_1C56466CC(v8 + v9, v7, &qword_1EC16EB18, &qword_1C586AF80);
  v10 = type metadata accessor for WebPlacecardBridge.MUUserInteractionAction(0);
  v11 = *(*(v10 - 8) + 48);
  if (v11(v7, 1, v10) != 1)
  {
    return sub_1C56EC178(v7, a1, type metadata accessor for WebPlacecardBridge.MUUserInteractionAction);
  }

  sub_1C584EFC0();
  v12 = *(v10 + 20);
  if (qword_1EC178E90 != -1)
  {
    swift_once();
  }

  *(a1 + v12) = qword_1EC178E98;
  v13 = v11(v7, 1, v10);

  if (v13 != 1)
  {
    return sub_1C5625230(v7, &qword_1EC16EB18, &qword_1C586AF80);
  }

  return result;
}

uint64_t sub_1C5690CC0@<X0>(char *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16EB20, &qword_1C586AF88);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8, v5);
  v7 = &v17 - v6;
  v8 = *(v1 + *(type metadata accessor for WebPlacecardBridge.MUBridgeMethodArgument(0) + 20));
  v9 = OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge22MUBridgeMethodArgumentP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__webMenuButton;
  swift_beginAccess();
  sub_1C56466CC(v8 + v9, v7, &qword_1EC16EB20, &qword_1C586AF88);
  v10 = type metadata accessor for WebPlacecardBridge.MUWebMenuButton(0);
  v11 = *(*(v10 - 1) + 48);
  if (v11(v7, 1, v10) != 1)
  {
    return sub_1C56EC178(v7, a1, type metadata accessor for WebPlacecardBridge.MUWebMenuButton);
  }

  *a1 = MEMORY[0x1E69E7CC0];
  v12 = &a1[v10[5]];
  sub_1C584EFC0();
  v13 = &a1[v10[6]];
  *v13 = 0;
  *(v13 + 1) = 0;
  v14 = v10[7];
  v15 = type metadata accessor for WebPlacecardBridge.MUWebMenuButtonBoundingBox(0);
  (*(*(v15 - 8) + 56))(&a1[v14], 1, 1, v15);
  result = (v11)(v7, 1, v10);
  if (result != 1)
  {
    return sub_1C5625230(v7, &qword_1EC16EB20, &qword_1C586AF88);
  }

  return result;
}

uint64_t sub_1C5690E98@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16EB28, &qword_1C586AF90);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8, v5);
  v7 = &v14 - v6;
  v8 = *(v1 + *(type metadata accessor for WebPlacecardBridge.MUBridgeMethodArgument(0) + 20));
  v9 = OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge22MUBridgeMethodArgumentP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__pageResizedArgument;
  swift_beginAccess();
  sub_1C56466CC(v8 + v9, v7, &qword_1EC16EB28, &qword_1C586AF90);
  v10 = type metadata accessor for WebPlacecardBridge.MUPageResizedArgument(0);
  v11 = *(*(v10 - 8) + 48);
  if (v11(v7, 1, v10) != 1)
  {
    return sub_1C56EC178(v7, a1, type metadata accessor for WebPlacecardBridge.MUPageResizedArgument);
  }

  sub_1C584EFC0();
  v12 = a1 + *(v10 + 20);
  *v12 = 0;
  *(v12 + 4) = 1;
  result = (v11)(v7, 1, v10);
  if (result != 1)
  {
    return sub_1C5625230(v7, &qword_1EC16EB28, &qword_1C586AF90);
  }

  return result;
}

uint64_t sub_1C5691024@<X0>(void *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16EB30, &qword_1C586AF98);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8, v5);
  v7 = &v15 - v6;
  v8 = *(v1 + *(type metadata accessor for WebPlacecardBridge.MUBridgeMethodArgument(0) + 20));
  v9 = OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge22MUBridgeMethodArgumentP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__mapItemRefreshArgument;
  swift_beginAccess();
  sub_1C56466CC(v8 + v9, v7, &qword_1EC16EB30, &qword_1C586AF98);
  refreshed = type metadata accessor for WebPlacecardBridge.MUMapItemRefreshArgument(0);
  v11 = *(*(refreshed - 1) + 48);
  if (v11(v7, 1, refreshed) != 1)
  {
    return sub_1C56EC178(v7, a1, type metadata accessor for WebPlacecardBridge.MUMapItemRefreshArgument);
  }

  *a1 = MEMORY[0x1E69E7CC0];
  v12 = a1 + refreshed[5];
  sub_1C584EFC0();
  v13 = (a1 + refreshed[6]);
  *v13 = 0;
  v13[1] = 0;
  *(a1 + refreshed[7]) = 3;
  result = (v11)(v7, 1, refreshed);
  if (result != 1)
  {
    return sub_1C5625230(v7, &qword_1EC16EB30, &qword_1C586AF98);
  }

  return result;
}

uint64_t sub_1C56911C4@<X0>(void *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16EB38, &qword_1C586AFA0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8, v5);
  v7 = &v14 - v6;
  v8 = *(v1 + *(type metadata accessor for WebPlacecardBridge.MUBridgeMethodArgument(0) + 20));
  v9 = OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge22MUBridgeMethodArgumentP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__transitLabelArgument;
  swift_beginAccess();
  sub_1C56466CC(v8 + v9, v7, &qword_1EC16EB38, &qword_1C586AFA0);
  v10 = type metadata accessor for WebPlacecardBridge.MUTransitLabelArgument(0);
  v11 = *(*(v10 - 8) + 48);
  if (v11(v7, 1, v10) != 1)
  {
    return sub_1C56EC178(v7, a1, type metadata accessor for WebPlacecardBridge.MUTransitLabelArgument);
  }

  *a1 = MEMORY[0x1E69E7CC0];
  v12 = a1 + *(v10 + 20);
  sub_1C584EFC0();
  result = (v11)(v7, 1, v10);
  if (result != 1)
  {
    return sub_1C5625230(v7, &qword_1EC16EB38, &qword_1C586AFA0);
  }

  return result;
}

uint64_t sub_1C569134C@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16EB40, &qword_1C586AFA8);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8, v5);
  v7 = &v15 - v6;
  v8 = *(v1 + *(type metadata accessor for WebPlacecardBridge.MUBridgeMethodArgument(0) + 20));
  v9 = OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge22MUBridgeMethodArgumentP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__nearbyPlacesArgument;
  swift_beginAccess();
  sub_1C56466CC(v8 + v9, v7, &qword_1EC16EB40, &qword_1C586AFA8);
  v10 = type metadata accessor for WebPlacecardBridge.MUNearbyPlacesArgument(0);
  v11 = *(*(v10 - 8) + 48);
  if (v11(v7, 1, v10) != 1)
  {
    return sub_1C56EC178(v7, a1, type metadata accessor for WebPlacecardBridge.MUNearbyPlacesArgument);
  }

  sub_1C584EFC0();
  v12 = (a1 + *(v10 + 20));
  *v12 = 0;
  v12[1] = 0;
  v13 = (a1 + *(v10 + 24));
  *v13 = 0;
  v13[1] = 0;
  result = (v11)(v7, 1, v10);
  if (result != 1)
  {
    return sub_1C5625230(v7, &qword_1EC16EB40, &qword_1C586AFA8);
  }

  return result;
}

uint64_t sub_1C56914DC@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16EB48, &qword_1C586AFB0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8, v5);
  v7 = &v14 - v6;
  v8 = *(v1 + *(type metadata accessor for WebPlacecardBridge.MUBridgeMethodArgument(0) + 20));
  v9 = OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge22MUBridgeMethodArgumentP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__routeSnapshotArgument;
  swift_beginAccess();
  sub_1C56466CC(v8 + v9, v7, &qword_1EC16EB48, &qword_1C586AFB0);
  v10 = type metadata accessor for WebPlacecardBridge.MURouteSnapshotArgument(0);
  v11 = *(*(v10 - 8) + 48);
  if (v11(v7, 1, v10) != 1)
  {
    return sub_1C56EC178(v7, a1, type metadata accessor for WebPlacecardBridge.MURouteSnapshotArgument);
  }

  sub_1C584EFC0();
  v12 = (a1 + *(v10 + 20));
  *v12 = 0;
  v12[1] = 0;
  result = (v11)(v7, 1, v10);
  if (result != 1)
  {
    return sub_1C5625230(v7, &qword_1EC16EB48, &qword_1C586AFB0);
  }

  return result;
}

uint64_t sub_1C5691660@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  sub_1C584EFC0();
  result = a1(0);
  v5 = (a2 + *(result + 20));
  *v5 = 0;
  v5[1] = 0;
  return result;
}

uint64_t sub_1C56916A0@<X0>(void *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16EB50, &qword_1C586AFB8);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8, v5);
  v7 = &v15 - v6;
  v8 = *(v1 + *(type metadata accessor for WebPlacecardBridge.MUBridgeMethodArgument(0) + 20));
  v9 = OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge22MUBridgeMethodArgumentP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__analyticsArgument;
  swift_beginAccess();
  sub_1C56466CC(v8 + v9, v7, &qword_1EC16EB50, &qword_1C586AFB8);
  v10 = type metadata accessor for WebPlacecardBridge.MUAnalyticsArgument(0);
  v11 = *(*(v10 - 1) + 48);
  if (v11(v7, 1, v10) != 1)
  {
    return sub_1C56EC178(v7, a1, type metadata accessor for WebPlacecardBridge.MUAnalyticsArgument);
  }

  *a1 = MEMORY[0x1E69E7CC0];
  v12 = a1 + v10[5];
  sub_1C584EFC0();
  v13 = (a1 + v10[6]);
  *v13 = 0;
  v13[1] = 0;
  *(a1 + v10[7]) = 5;
  result = (v11)(v7, 1, v10);
  if (result != 1)
  {
    return sub_1C5625230(v7, &qword_1EC16EB50, &qword_1C586AFB8);
  }

  return result;
}

uint64_t sub_1C5691840@<X0>(char *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16EB58, &qword_1C586AFC0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8, v5);
  v7 = &v16 - v6;
  v8 = *(v1 + *(type metadata accessor for WebPlacecardBridge.MUBridgeMethodArgument(0) + 20));
  v9 = OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge22MUBridgeMethodArgumentP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__actionBarArgument;
  swift_beginAccess();
  sub_1C56466CC(v8 + v9, v7, &qword_1EC16EB58, &qword_1C586AFC0);
  v10 = type metadata accessor for WebPlacecardBridge.MUActionBarArgument(0);
  v11 = *(*(v10 - 8) + 48);
  if (v11(v7, 1, v10) != 1)
  {
    return sub_1C56EC178(v7, a1, type metadata accessor for WebPlacecardBridge.MUActionBarArgument);
  }

  *a1 = MEMORY[0x1E69E7CC0];
  v12 = &a1[*(v10 + 20)];
  sub_1C584EFC0();
  v13 = *(v10 + 24);
  v14 = type metadata accessor for WebPlacecardBridge.MUActionBarItem(0);
  (*(*(v14 - 8) + 56))(&a1[v13], 1, 1, v14);
  result = (v11)(v7, 1, v10);
  if (result != 1)
  {
    return sub_1C5625230(v7, &qword_1EC16EB58, &qword_1C586AFC0);
  }

  return result;
}

uint64_t sub_1C5691A0C@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16EB60, &qword_1C586AFC8);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8, v5);
  v7 = &v13 - v6;
  v8 = *(v1 + *(type metadata accessor for WebPlacecardBridge.MUBridgeMethodArgument(0) + 20));
  v9 = OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge22MUBridgeMethodArgumentP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__stickyHeaderArgument;
  swift_beginAccess();
  sub_1C56466CC(v8 + v9, v7, &qword_1EC16EB60, &qword_1C586AFC8);
  v10 = type metadata accessor for WebPlacecardBridge.MUStickyHeaderArgument(0);
  v11 = *(*(v10 - 8) + 48);
  if (v11(v7, 1, v10) != 1)
  {
    return sub_1C56EC178(v7, a1, type metadata accessor for WebPlacecardBridge.MUStickyHeaderArgument);
  }

  sub_1C584EFC0();
  *(a1 + *(v10 + 20)) = 2;
  result = (v11)(v7, 1, v10);
  if (result != 1)
  {
    return sub_1C5625230(v7, &qword_1EC16EB60, &qword_1C586AFC8);
  }

  return result;
}

uint64_t sub_1C5691B90@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16EB68, &qword_1C586AFD0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8, v5);
  v7 = &v15 - v6;
  v8 = *(v1 + *(type metadata accessor for WebPlacecardBridge.MUBridgeMethodArgument(0) + 20));
  v9 = OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge22MUBridgeMethodArgumentP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__headerInsetsArgument;
  swift_beginAccess();
  sub_1C56466CC(v8 + v9, v7, &qword_1EC16EB68, &qword_1C586AFD0);
  v10 = type metadata accessor for WebPlacecardBridge.MUHeaderInsetsArgument(0);
  v11 = *(*(v10 - 8) + 48);
  if (v11(v7, 1, v10) != 1)
  {
    return sub_1C56EC178(v7, a1, type metadata accessor for WebPlacecardBridge.MUHeaderInsetsArgument);
  }

  sub_1C584EFC0();
  v12 = a1 + *(v10 + 20);
  *v12 = 0;
  *(v12 + 4) = 1;
  v13 = a1 + *(v10 + 24);
  *v13 = 0;
  *(v13 + 4) = 1;
  result = (v11)(v7, 1, v10);
  if (result != 1)
  {
    return sub_1C5625230(v7, &qword_1EC16EB68, &qword_1C586AFD0);
  }

  return result;
}

uint64_t sub_1C5691D2C@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16EB70, &qword_1C586AFD8);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8, v5);
  v7 = &v17 - v6;
  v8 = *(v1 + *(type metadata accessor for WebPlacecardBridge.MUBridgeMethodArgument(0) + 20));
  v9 = OBJC_IVAR____TtCVV6MapsUI18WebPlacecardBridge22MUBridgeMethodArgumentP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__textSelectionViewArgument;
  swift_beginAccess();
  sub_1C56466CC(v8 + v9, v7, &qword_1EC16EB70, &qword_1C586AFD8);
  v10 = type metadata accessor for WebPlacecardBridge.MUWebTextSelectionViewArgument(0);
  v11 = *(*(v10 - 1) + 48);
  if (v11(v7, 1, v10) != 1)
  {
    return sub_1C56EC178(v7, a1, type metadata accessor for WebPlacecardBridge.MUWebTextSelectionViewArgument);
  }

  sub_1C584EFC0();
  v12 = (a1 + v10[5]);
  *v12 = 0;
  v12[1] = 0;
  v13 = (a1 + v10[6]);
  *v13 = 0;
  v13[1] = 0;
  v14 = v10[7];
  v15 = type metadata accessor for WebPlacecardBridge.MUWebMenuButtonBoundingBox(0);
  (*(*(v15 - 8) + 56))(a1 + v14, 1, 1, v15);
  result = (v11)(v7, 1, v10);
  if (result != 1)
  {
    return sub_1C5625230(v7, &qword_1EC16EB70, &qword_1C586AFD8);
  }

  return result;
}

uint64_t sub_1C5691F00@<X0>(uint64_t (*a1)(void)@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  sub_1C584EFC0();
  v8 = *(a1(0) + 20);
  if (*a2 != -1)
  {
    swift_once();
  }

  *(a4 + v8) = *a3;
}

uint64_t sub_1C5691FA0()
{
  v1 = *(v0 + *(type metadata accessor for WebPlacecardBridge.MUMapItemRefreshArgument(0) + 28));
  if (v1 == 3)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1C5691FFC(uint64_t (*a1)(void))
{
  v2 = (v1 + *(a1(0) + 24));
  if (v2[1])
  {
    v3 = *v2;
    v4 = v2[1];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t sub_1C5692058(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = (v3 + *(a3(0) + 24));
  v7 = v6[1];

  *v6 = a1;
  v6[1] = a2;
  return result;
}

uint64_t sub_1C56920BC(uint64_t (*a1)(void))
{
  v2 = (v1 + *(a1(0) + 20));
  if (v2[1])
  {
    v3 = *v2;
    v4 = v2[1];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t sub_1C5692118(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = (v3 + *(a3(0) + 20));
  v7 = v6[1];

  *v6 = a1;
  v6[1] = a2;
  return result;
}

uint64_t sub_1C569217C()
{
  v1 = *(v0 + *(type metadata accessor for WebPlacecardBridge.MUAnalyticsArgument(0) + 28));
  if (v1 == 5)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}
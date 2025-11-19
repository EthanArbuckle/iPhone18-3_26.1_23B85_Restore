void sub_1D1272ADC()
{
  v1 = v0;
  v2 = objc_opt_self();
  v3 = OBJC_IVAR____TtC15HealthRecordsUI15RecordRangeView_activeConstraints;
  sub_1D106F934(0, &qword_1EC609690);

  v4 = sub_1D139044C();

  v86 = v2;
  [v2 deactivateConstraints_];

  if (v1[OBJC_IVAR____TtC15HealthRecordsUI15RecordRangeView_style] == 2)
  {
    v5 = sub_1D1271858();
    v6 = [v5 arrangedSubviews];

    sub_1D106F934(0, &qword_1EC609680);
    v7 = sub_1D139045C();

    if (v7 >> 62)
    {
      v84 = sub_1D13910DC();

      if (!v84)
      {
        return;
      }
    }

    else
    {
      v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);

      if (!v8)
      {
        return;
      }
    }

    v85 = v3;
    sub_1D106F424();
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_1D13A68D0;
    v10 = sub_1D127193C();
    v11 = [v10 topAnchor];

    v12 = [v1 &selRef_setTitle_forState_];
    v13 = [v11 constraintEqualToAnchor_];

    *(v9 + 32) = v13;
    v14 = OBJC_IVAR____TtC15HealthRecordsUI15RecordRangeView____lazy_storage___rangeLabel;
    v15 = [*&v1[OBJC_IVAR____TtC15HealthRecordsUI15RecordRangeView____lazy_storage___rangeLabel] leadingAnchor];
    v16 = OBJC_IVAR____TtC15HealthRecordsUI15RecordRangeView____lazy_storage___pillsStackView;
    v17 = [*&v1[OBJC_IVAR____TtC15HealthRecordsUI15RecordRangeView____lazy_storage___pillsStackView] leadingAnchor];
    v18 = [v15 constraintEqualToAnchor_];

    *(v9 + 40) = v18;
    v19 = [*&v1[v14] trailingAnchor];
    v20 = [*&v1[v16] trailingAnchor];
    v21 = [v19 constraintEqualToAnchor_];

    *(v9 + 48) = v21;
    v22 = [*&v1[v16] topAnchor];
    v23 = [*&v1[v14] bottomAnchor];
    v24 = [v22 constraintEqualToAnchor:v23 constant:1.0];

    *(v9 + 56) = v24;
    v25 = [*&v1[v16] leadingAnchor];
    v26 = [v1 leadingAnchor];
    v27 = [v25 constraintEqualToAnchor_];

    *(v9 + 64) = v27;
    v28 = [*&v1[v16] trailingAnchor];
    v29 = [v1 trailingAnchor];
    v30 = [v28 constraintLessThanOrEqualToAnchor_];

    *(v9 + 72) = v30;
    v87 = v9;
    sub_1D12716F8();
    if (v31)
    {
      v32 = v31;
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1D13A68D0;
      v34 = sub_1D1271A68();
      v35 = [v34 topAnchor];

      v36 = [*&v1[v16] bottomAnchor];
      v37 = [v35 constraintEqualToAnchor:v36 constant:1.0];

      *(inited + 32) = v37;
      v38 = OBJC_IVAR____TtC15HealthRecordsUI15RecordRangeView____lazy_storage___lowBookend;
      v39 = [*&v1[OBJC_IVAR____TtC15HealthRecordsUI15RecordRangeView____lazy_storage___lowBookend] leadingAnchor];
      v40 = v32;
      v41 = [v40 leadingAnchor];
      v42 = [v39 constraintEqualToAnchor_];

      *(inited + 40) = v42;
      v43 = [*&v1[v38] bottomAnchor];
      v44 = [v1 bottomAnchor];
      v45 = [v43 constraintEqualToAnchor_];

      *(inited + 48) = v45;
      v46 = sub_1D1271A88();
      v47 = [v46 firstBaselineAnchor];

      v48 = [*&v1[v38] firstBaselineAnchor];
      v49 = [v47 constraintEqualToAnchor_];

      *(inited + 56) = v49;
      v50 = OBJC_IVAR____TtC15HealthRecordsUI15RecordRangeView____lazy_storage___highBookend;
      v51 = [*&v1[OBJC_IVAR____TtC15HealthRecordsUI15RecordRangeView____lazy_storage___highBookend] trailingAnchor];
      v52 = [v40 trailingAnchor];

      v53 = [v51 constraintEqualToAnchor_];
      *(inited + 64) = v53;
      v54 = [*&v1[v50] bottomAnchor];
      v55 = [v1 bottomAnchor];
      v56 = [v54 constraintEqualToAnchor_];

      *(inited + 72) = v56;
      sub_1D1121F80(inited);

      v9 = v87;
    }
  }

  else
  {
    v85 = v3;
    sub_1D106F424();
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_1D13A0750;
    v57 = sub_1D127193C();
    v58 = [v57 topAnchor];

    v59 = [v1 topAnchor];
    v60 = [v58 constraintEqualToAnchor_];

    *(v9 + 32) = v60;
    v61 = OBJC_IVAR____TtC15HealthRecordsUI15RecordRangeView____lazy_storage___rangeLabel;
    v62 = [*&v1[OBJC_IVAR____TtC15HealthRecordsUI15RecordRangeView____lazy_storage___rangeLabel] leadingAnchor];
    v63 = sub_1D1271858();
    v64 = [v63 &selRef_hrui_insurance + 1];

    v65 = [v62 constraintEqualToAnchor_];
    *(v9 + 40) = v65;
    v66 = [*&v1[v61] trailingAnchor];
    v67 = OBJC_IVAR____TtC15HealthRecordsUI15RecordRangeView____lazy_storage___pillsStackView;
    v68 = [*&v1[OBJC_IVAR____TtC15HealthRecordsUI15RecordRangeView____lazy_storage___pillsStackView] trailingAnchor];
    v69 = [v66 constraintEqualToAnchor_];

    *(v9 + 48) = v69;
    v70 = [*&v1[v67] topAnchor];
    v71 = [*&v1[v61] bottomAnchor];
    v72 = [v70 constraintEqualToAnchor:v71 constant:1.0];

    *(v9 + 56) = v72;
    v73 = [*&v1[v67] bottomAnchor];
    v74 = [v1 bottomAnchor];
    v75 = [v73 constraintEqualToAnchor_];

    *(v9 + 64) = v75;
    v76 = [*&v1[v67] leadingAnchor];
    v77 = [v1 leadingAnchor];
    v78 = [v76 constraintEqualToAnchor_];

    *(v9 + 72) = v78;
    v79 = [*&v1[v67] trailingAnchor];
    v80 = [v1 trailingAnchor];
    v81 = [v79 constraintLessThanOrEqualToAnchor_];

    *(v9 + 80) = v81;
  }

  v82 = sub_1D1272694();
  sub_1D1121F80(v82);
  *&v1[v85] = v9;

  v83 = sub_1D139044C();

  [v86 activateConstraints_];
}

id RecordRangeView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id RecordRangeView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RecordRangeView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1D127362C()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  [v0 setTranslatesAutoresizingMaskIntoConstraints_];
  [v0 setAdjustsFontForContentSizeCategory_];
  [v0 setNumberOfLines_];
  v1 = [objc_opt_self() secondaryLabelColor];
  [v0 setTextColor_];

  sub_1D106F934(0, &qword_1EC60E670);
  v2 = sub_1D1390C6C();
  [v0 setFont_];

  return v0;
}

void sub_1D1273744(void *a1)
{
  v2 = [a1 rangeLow];
  if (v2 || (v2 = [a1 rangeHigh]) != 0)
  {

    if (a1)
    {
      v3 = [a1 rangeLow];
      if (v3)
      {
        v4 = v3;
        [v3 doubleValue];
        v6 = v5;
      }

      else
      {
        v6 = -1.79769313e308;
      }

      v7 = [a1 rangeHigh];
      if (v7)
      {
        v8 = v7;
        [v7 doubleValue];
        v10 = v9;

        if (v6 > v10)
        {
          return;
        }
      }

      else
      {
        v10 = 1.79769313e308;
        if (v6 > 1.79769313e308)
        {
          return;
        }
      }

      v11 = [a1 value];
      if (v11)
      {
        v12 = v11;
        [v11 doubleValue];

        v13 = [a1 rangeLow];
        if (v13)
        {

          v14 = [a1 rangeHigh];
          if (v14)
          {

            if (v6 > v10)
            {
              goto LABEL_20;
            }

            return;
          }

          if (v6 <= v10)
          {
            return;
          }
        }

        else if (v6 <= v10)
        {
          return;
        }

LABEL_20:
        __break(1u);
      }
    }
  }
}

uint64_t getEnumTagSinglePayload for RecordRangeView.Style(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_20;
  }

  v2 = a2 + 2;
  if (a2 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 <= 1)
  {
    if (!v4)
    {
      goto LABEL_20;
    }

    v5 = a1[1];
    if (!a1[1])
    {
      goto LABEL_20;
    }

    return (*a1 | (v5 << 8)) - 2;
  }

  if (v4 == 2)
  {
    v5 = *(a1 + 1);
    if (*(a1 + 1))
    {
      return (*a1 | (v5 << 8)) - 2;
    }
  }

  else
  {
    v5 = *(a1 + 1);
    if (v5)
    {
      return (*a1 | (v5 << 8)) - 2;
    }
  }

LABEL_20:
  v7 = *a1;
  v8 = v7 >= 2;
  v9 = (v7 + 2147483646) & 0x7FFFFFFF;
  if (!v8)
  {
    v9 = -1;
  }

  if (v9 + 1 >= 2)
  {
    return v9;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for RecordRangeView.Style(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 2;
  if (a3 + 2 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xFE)
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_1D1273BE0(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = v1 >= 2;
  v3 = (v1 + 2147483646) & 0x7FFFFFFF;
  if (v2)
  {
    return (v3 + 1);
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_1D1273BFC(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 1;
  }

  return result;
}

unint64_t sub_1D1273C48()
{
  result = qword_1EC60E658;
  if (!qword_1EC60E658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60E658);
  }

  return result;
}

unint64_t sub_1D1273CA0()
{
  result = qword_1EC60E660;
  if (!qword_1EC60E660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60E660);
  }

  return result;
}

uint64_t block_copy_helper_52(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1D1273D1C()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t sub_1D1273D4C()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_1D139177C();
  MEMORY[0x1D38870E0](v1);
  MEMORY[0x1D38870E0](v2);
  sub_1D1390D9C();
  return sub_1D13917CC();
}

uint64_t sub_1D1273DBC()
{
  v1 = *(v0 + 8);
  MEMORY[0x1D38870E0](*v0);
  MEMORY[0x1D38870E0](v1);
  return sub_1D1390D9C();
}

uint64_t sub_1D1273E0C()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_1D139177C();
  MEMORY[0x1D38870E0](v1);
  MEMORY[0x1D38870E0](v2);
  sub_1D1390D9C();
  return sub_1D13917CC();
}

uint64_t sub_1D1273E7C()
{
  v1 = sub_1D138D5EC();
  v2 = *(v1 - 8);
  *&v3 = MEMORY[0x1EEE9AC00](v1).n128_u64[0];
  v5 = v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = (v0 + OBJC_IVAR____TtC15HealthRecordsUI25MedicalRecordTimelineItem_viewData);
  v7 = [*(v0 + OBJC_IVAR____TtC15HealthRecordsUI25MedicalRecordTimelineItem_viewData + 16) UUID];
  sub_1D138D5CC();

  v8 = sub_1D138D59C();
  v10 = v9;
  (*(v2 + 8))(v5, v1);
  v16 = v8;
  v17 = v10;
  MEMORY[0x1D3885C10](46, 0xE100000000000000);
  v15[1] = *v6;
  v11 = sub_1D13915CC();
  MEMORY[0x1D3885C10](v11);

  MEMORY[0x1D3885C10](46, 0xE100000000000000);
  MEMORY[0x1D3885C10](v6[3], v6[4]);
  MEMORY[0x1D3885C10](46, 0xE100000000000000);
  if (v6[9])
  {
    v12 = v6[8];
    v13 = v6[9];
  }

  else
  {
    v12 = 0;
    v13 = 0xE000000000000000;
  }

  MEMORY[0x1D3885C10](v12, v13);

  return v16;
}

uint64_t sub_1D1274024(uint64_t a1, uint64_t a2, void *a3)
{
  *(a1 + OBJC_IVAR____TtC15HealthRecordsUI29MedicalRecordTimelineItemCell_item) = *a3;
  swift_retain_n();

  sub_1D127553C();
}

uint64_t sub_1D127408C()
{
  sub_1D1277A30(v0 + OBJC_IVAR____TtC15HealthRecordsUI25MedicalRecordTimelineItem_cellResolution, MEMORY[0x1E69A3458]);
  v1 = *(v0 + OBJC_IVAR____TtC15HealthRecordsUI25MedicalRecordTimelineItem_viewData + 16);
  v2 = *(v0 + OBJC_IVAR____TtC15HealthRecordsUI25MedicalRecordTimelineItem_viewData + 56);
  v3 = *(v0 + OBJC_IVAR____TtC15HealthRecordsUI25MedicalRecordTimelineItem_viewData + 96);

  return swift_deallocClassInstance();
}

uint64_t sub_1D12741A0()
{
  result = sub_1D138DC8C();
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

uint64_t sub_1D127429C()
{
  v1 = *v0;
  sub_1D139177C();
  v2 = *(v1 + OBJC_IVAR____TtC15HealthRecordsUI25MedicalRecordTimelineItem_viewData);
  v3 = *(v1 + OBJC_IVAR____TtC15HealthRecordsUI25MedicalRecordTimelineItem_viewData + 8);
  MEMORY[0x1D38870E0](v2);
  MEMORY[0x1D38870E0](v3);
  sub_1D1390D9C();
  return sub_1D13917CC();
}

uint64_t sub_1D1274318()
{
  v1 = *v0 + OBJC_IVAR____TtC15HealthRecordsUI25MedicalRecordTimelineItem_viewData;
  v2 = *(v1 + 8);
  MEMORY[0x1D38870E0](*v1);
  MEMORY[0x1D38870E0](v2);
  return sub_1D1390D9C();
}

uint64_t sub_1D1274378()
{
  sub_1D139177C();
  v1 = *v0 + OBJC_IVAR____TtC15HealthRecordsUI25MedicalRecordTimelineItem_viewData;
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 56);
  v5 = *(v1 + 96);
  MEMORY[0x1D38870E0](*v1);
  MEMORY[0x1D38870E0](v2);
  v6 = v5;

  v7 = v3;

  v8 = v4;

  sub_1D1390D9C();

  return sub_1D13917CC();
}

uint64_t sub_1D1274498()
{
  result = sub_1D138D85C();
  qword_1EC62FC58 = v1;
  return result;
}

uint64_t sub_1D12744B8()
{
  result = sub_1D138D85C();
  qword_1EC62FC60 = v1;
  return result;
}

uint64_t sub_1D12744D8()
{
  result = sub_1D138D85C();
  qword_1EC62FC68 = v1;
  return result;
}

id sub_1D12744F8()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  v1 = [objc_opt_self() secondaryLabelColor];
  [v0 setTextColor_];

  v2 = [objc_opt_self() _preferredFontForTextStyle_variant_];
  [v0 setFont_];

  [v0 setNumberOfLines_];
  [v0 setTranslatesAutoresizingMaskIntoConstraints_];
  return v0;
}

char *sub_1D12745E4(double a1, double a2, double a3, double a4)
{
  sub_1D1277860(0, &qword_1EC6103F0, MEMORY[0x1E69DC0D8]);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v29 - v10;
  v12 = sub_1D138F20C();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = OBJC_IVAR____TtC15HealthRecordsUI29MedicalRecordTimelineItemCell_titleView;
  *&v4[v16] = [objc_allocWithZone(type metadata accessor for ConceptFeedItemTitleView()) initWithFrame_];
  v17 = OBJC_IVAR____TtC15HealthRecordsUI29MedicalRecordTimelineItemCell_valueView;
  *&v4[v17] = [objc_allocWithZone(type metadata accessor for ConceptFeedItemValueView()) initWithFrame_];
  v18 = OBJC_IVAR____TtC15HealthRecordsUI29MedicalRecordTimelineItemCell_subtitleLabel;
  *&v4[v18] = sub_1D12744F8();
  *&v4[OBJC_IVAR____TtC15HealthRecordsUI29MedicalRecordTimelineItemCell_item] = 0;
  v19 = OBJC_IVAR____TtC15HealthRecordsUI29MedicalRecordTimelineItemCell_sectionContext;
  v20 = sub_1D138DF1C();
  (*(*(v20 - 8) + 56))(&v4[v19], 1, 1, v20);
  v21 = type metadata accessor for MedicalRecordTimelineItemCell(0);
  v29.receiver = v4;
  v29.super_class = v21;
  v22 = objc_msgSendSuper2(&v29, sel_initWithFrame_, a1, a2, a3, a4);
  v23 = [v22 contentView];
  [v23 addSubview_];

  v24 = [v22 contentView];
  [v24 addSubview_];

  v25 = [v22 contentView];
  [v25 addSubview_];

  sub_1D138D84C();
  sub_1D1390C8C();
  v26 = [objc_opt_self() currentTraitCollection];
  sub_1D138F1DC();
  sub_1D133DBE4();
  v27 = sub_1D138F27C();
  (*(*(v27 - 8) + 56))(v11, 0, 1, v27);
  MEMORY[0x1D38864A0](v11);
  (*(v13 + 8))(v15, v12);
  sub_1D1274D8C();

  return v22;
}

id sub_1D127497C(void *a1)
{
  v3 = OBJC_IVAR____TtC15HealthRecordsUI29MedicalRecordTimelineItemCell_titleView;
  *&v1[v3] = [objc_allocWithZone(type metadata accessor for ConceptFeedItemTitleView()) initWithFrame_];
  v4 = OBJC_IVAR____TtC15HealthRecordsUI29MedicalRecordTimelineItemCell_valueView;
  *&v1[v4] = [objc_allocWithZone(type metadata accessor for ConceptFeedItemValueView()) initWithFrame_];
  v5 = OBJC_IVAR____TtC15HealthRecordsUI29MedicalRecordTimelineItemCell_subtitleLabel;
  *&v1[v5] = sub_1D12744F8();
  *&v1[OBJC_IVAR____TtC15HealthRecordsUI29MedicalRecordTimelineItemCell_item] = 0;
  v6 = OBJC_IVAR____TtC15HealthRecordsUI29MedicalRecordTimelineItemCell_sectionContext;
  v7 = sub_1D138DF1C();
  (*(*(v7 - 8) + 56))(&v1[v6], 1, 1, v7);
  v10.receiver = v1;
  v10.super_class = type metadata accessor for MedicalRecordTimelineItemCell(0);
  v8 = objc_msgSendSuper2(&v10, sel_initWithCoder_, a1);

  if (v8)
  {
  }

  return v8;
}

uint64_t sub_1D1274B3C()
{
  sub_1D1277860(0, &qword_1EC6103F0, MEMORY[0x1E69DC0D8]);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v15 - v2;
  v4 = sub_1D138F20C();
  v5 = *(v4 - 8);
  *&v6 = MEMORY[0x1EEE9AC00](v4).n128_u64[0];
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [v0 contentView];
  [v9 addSubview_];

  v10 = [v0 contentView];
  [v10 addSubview_];

  v11 = [v0 contentView];
  [v11 addSubview_];

  sub_1D138D84C();
  sub_1D1390C8C();
  v12 = [objc_opt_self() currentTraitCollection];
  sub_1D138F1DC();
  sub_1D133DBE4();
  v13 = sub_1D138F27C();
  (*(*(v13 - 8) + 56))(v3, 0, 1, v13);
  MEMORY[0x1D38864A0](v3);
  return (*(v5 + 8))(v8, v4);
}

void sub_1D1274D8C()
{
  sub_1D12779E0(0, &qword_1EE06A4C0, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1D13A72C0;
  v2 = *&v0[OBJC_IVAR____TtC15HealthRecordsUI29MedicalRecordTimelineItemCell_titleView];
  v3 = [v2 leadingAnchor];
  v4 = [v0 contentView];
  v5 = [v4 leadingAnchor];

  v6 = [v3 constraintEqualToAnchor_];
  *(v1 + 32) = v6;
  v7 = [v2 trailingAnchor];
  v8 = [v0 contentView];
  v9 = [v8 trailingAnchor];

  v10 = [v7 constraintEqualToAnchor_];
  *(v1 + 40) = v10;
  v11 = *&v0[OBJC_IVAR____TtC15HealthRecordsUI29MedicalRecordTimelineItemCell_valueView];
  v12 = [v11 leadingAnchor];
  v13 = [v0 contentView];
  v14 = [v13 leadingAnchor];

  v15 = [v12 constraintEqualToAnchor_];
  *(v1 + 48) = v15;
  v16 = [v11 trailingAnchor];
  v17 = [v0 contentView];
  v18 = [v17 trailingAnchor];

  if (qword_1EC608DE0 != -1)
  {
    swift_once();
  }

  v19 = -*&qword_1EC62FC60;
  v20 = [v16 constraintEqualToAnchor:v18 constant:-*&qword_1EC62FC60];

  *(v1 + 56) = v20;
  v21 = *&v0[OBJC_IVAR____TtC15HealthRecordsUI29MedicalRecordTimelineItemCell_subtitleLabel];
  v22 = [v21 leadingAnchor];
  v23 = [v0 contentView];
  v24 = [v23 leadingAnchor];

  if (qword_1EC608DD8 != -1)
  {
    swift_once();
  }

  v25 = [v22 constraintEqualToAnchor:v24 constant:*&qword_1EC62FC58];

  *(v1 + 64) = v25;
  v26 = [v21 trailingAnchor];
  v27 = [v0 &selRef_batches];
  v28 = [v27 trailingAnchor];

  v29 = [v26 constraintEqualToAnchor:v28 constant:v19];
  *(v1 + 72) = v29;
  v30 = [v21 topAnchor];
  v31 = [v11 bottomAnchor];
  v32 = [v30 constraintEqualToAnchor:v31 constant:-8.0];

  *(v1 + 80) = v32;
  v33 = [v21 bottomAnchor];
  v34 = [v0 &selRef_batches];
  v35 = [v34 bottomAnchor];

  if (qword_1EC608DE8 != -1)
  {
    swift_once();
  }

  v36 = [v33 constraintEqualToAnchor:v35 constant:-*&qword_1EC62FC68];

  *(v1 + 88) = v36;
  v37 = [v2 topAnchor];
  v38 = [v0 &selRef_batches];
  v39 = [v38 topAnchor];

  v40 = [v37 constraintEqualToAnchor_];
  LODWORD(v41) = 1148846080;
  [v40 setPriority_];
  [v40 setActive_];
  v42 = [v11 topAnchor];
  v43 = [v2 bottomAnchor];
  v44 = [v42 constraintGreaterThanOrEqualToAnchor:v43 constant:7.0];

  LODWORD(v45) = 1140129792;
  [v44 setPriority_];
  [v44 setActive_];
  v46 = [v0 &selRef_batches];
  v47 = [v46 heightAnchor];

  v48 = [v47 constraintGreaterThanOrEqualToConstant_];
  LODWORD(v49) = 1148846080;
  [v48 setPriority_];
  [v48 setActive_];
  v50 = [v0 &selRef_batches];
  v51 = [v50 heightAnchor];

  v52 = [v51 constraintEqualToConstant_];
  LODWORD(v53) = 1132068864;
  [v52 setPriority_];
  [v52 setActive_];
  v54 = objc_opt_self();
  sub_1D106F934(0, &qword_1EC609690);
  v55 = sub_1D139044C();

  [v54 activateConstraints_];
}

void sub_1D127553C()
{
  v1 = v0;
  v2 = sub_1D138F0BC();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v79 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for BrowseCategory();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v79 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR____TtC15HealthRecordsUI29MedicalRecordTimelineItemCell_item;
  v10 = *&v1[OBJC_IVAR____TtC15HealthRecordsUI29MedicalRecordTimelineItemCell_item];
  if (!v10)
  {
    sub_1D138F06C();
    v17 = v1;
    v18 = sub_1D138F0AC();
    v19 = sub_1D13907FC();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *&v107[0] = v21;
      *v20 = 136446210;
      *&v101 = *&v1[v9];
      sub_1D1277860(0, &qword_1EC60E6D0, type metadata accessor for MedicalRecordTimelineItem);

      v22 = sub_1D139020C();
      v24 = sub_1D11DF718(v22, v23, v107);

      *(v20 + 4) = v24;
      _os_log_impl(&dword_1D101F000, v18, v19, "Incorrect view model for MedicalRecordTimelineItem: %{public}s", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v21);
      MEMORY[0x1D38882F0](v21, -1, -1);
      MEMORY[0x1D38882F0](v20, -1, -1);
    }

    (*(v3 + 8))(v5, v2);
    return;
  }

  v11 = v10 + OBJC_IVAR____TtC15HealthRecordsUI25MedicalRecordTimelineItem_viewData;
  *v8 = *(v10 + OBJC_IVAR____TtC15HealthRecordsUI25MedicalRecordTimelineItem_viewData + 8);
  swift_storeEnumTagMultiPayload();

  v12 = BrowseCategory.tintColorForTemplateImage.getter();
  v13 = *(v11 + 32);
  *&v80 = *(v11 + 24);
  v81 = v12;
  v84 = v12;
  *(&v80 + 1) = v13;

  v79 = BrowseCategory.systemImage.getter();
  v14 = *(v11 + 96);
  v82 = v1;
  if (v14)
  {
    v15 = v14;
    if ([v15 hasRenderableContent])
    {
      v16 = [objc_opt_self() referenceRangeViewDataFromInspectableValueInRange_];

      goto LABEL_10;
    }
  }

  v16 = 0;
LABEL_10:
  v83 = v10;
  v85 = v8;
  v25 = *(v11 + 64);
  v26 = *(v11 + 72);
  v27 = *(v11 + 104);
  if (*(v11 + 88))
  {

    v28 = sub_1D139023C();
    v30 = v29;
  }

  else
  {

    v28 = 0;
    v30 = 0;
  }

  v109 = 1;
  v89 = v80;
  v90 = 0uLL;
  *&v91 = v79;
  *(&v91 + 1) = v81;
  *&v92 = v16;
  *(&v92 + 1) = v25;
  *&v93 = v26;
  *(&v93 + 1) = v28;
  *v94 = v30;
  *&v94[8] = 0;
  v94[16] = 1;
  *&v94[17] = 0;
  v94[19] = 0;
  v94[20] = v27;
  v31 = v82;
  v32 = *&v82[OBJC_IVAR____TtC15HealthRecordsUI29MedicalRecordTimelineItemCell_titleView];
  v88[3] = &type metadata for UserDomainConceptFeedItemViewData;
  v88[4] = &protocol witness table for UserDomainConceptFeedItemViewData;
  v33 = swift_allocObject();
  v88[0] = v33;
  v34 = *v94;
  *(v33 + 80) = v93;
  *(v33 + 96) = v34;
  *(v33 + 109) = *&v94[13];
  v35 = v90;
  *(v33 + 16) = v89;
  *(v33 + 32) = v35;
  v36 = v92;
  *(v33 + 48) = v91;
  *(v33 + 64) = v36;
  v37 = OBJC_IVAR____TtC15HealthRecordsUI24ConceptFeedItemTitleView_viewData;
  swift_beginAccess();
  sub_1D1128A74(&v89, v86);
  sub_1D12778B4(v88, v32 + v37, &qword_1EC60A4D0, sub_1D1277920);
  swift_endAccess();
  sub_1D10B9714();
  sub_1D1277984(v88, &qword_1EC60A4D0, sub_1D1277920);
  v38 = *&v31[OBJC_IVAR____TtC15HealthRecordsUI29MedicalRecordTimelineItemCell_valueView];
  v99 = v93;
  v100[0] = *v94;
  *(v100 + 13) = *&v94[13];
  v95 = v89;
  v96 = v90;
  v97 = v91;
  v98 = v92;
  v39 = v38 + OBJC_IVAR____TtC15HealthRecordsUI24ConceptFeedItemValueView_viewData;
  swift_beginAccess();
  v40 = *v39;
  v41 = *(v39 + 32);
  v102 = *(v39 + 16);
  v103 = v41;
  v101 = v40;
  v42 = *(v39 + 48);
  v43 = *(v39 + 64);
  v44 = *(v39 + 80);
  *(v106 + 13) = *(v39 + 93);
  v105 = v43;
  v106[0] = v44;
  v104 = v42;
  v46 = *(v39 + 64);
  v45 = *(v39 + 80);
  v47 = *(v39 + 48);
  *&v108[13] = *(v39 + 93);
  v107[4] = v46;
  *v108 = v45;
  v107[3] = v47;
  v48 = *v39;
  v49 = *(v39 + 32);
  v107[1] = *(v39 + 16);
  v107[2] = v49;
  v107[0] = v48;
  v50 = v100[0];
  *(v39 + 64) = v99;
  *(v39 + 80) = v50;
  *(v39 + 93) = *(v100 + 13);
  v51 = v96;
  *v39 = v95;
  *(v39 + 16) = v51;
  v52 = v98;
  *(v39 + 32) = v97;
  *(v39 + 48) = v52;
  sub_1D1128A74(&v89, v86);
  sub_1D113AE4C(&v101, v86);
  sub_1D1128AD0(v107);
  v86[4] = v105;
  v87[0] = v106[0];
  *(v87 + 13) = *(v106 + 13);
  v86[0] = v101;
  v86[1] = v102;
  v86[2] = v103;
  v86[3] = v104;
  sub_1D1193EAC(v86);
  sub_1D1128AD0(&v101);
  v53 = *&v31[OBJC_IVAR____TtC15HealthRecordsUI29MedicalRecordTimelineItemCell_subtitleLabel];
  if (*(v11 + 56))
  {
    [*&v31[OBJC_IVAR____TtC15HealthRecordsUI29MedicalRecordTimelineItemCell_subtitleLabel] setAttributedText_];
    if (!*(v11 + 48))
    {
      goto LABEL_21;
    }

LABEL_20:

    sub_1D139023C();
    v56 = v55;

    if (v56)
    {
      goto LABEL_23;
    }

    goto LABEL_21;
  }

  if (*(v11 + 48))
  {

    v54 = sub_1D139012C();
  }

  else
  {
    v54 = 0;
  }

  [v53 setText_];

  if (*(v11 + 48))
  {
    goto LABEL_20;
  }

LABEL_21:
  v57 = *(v11 + 56);
  if (!v57 || (v58 = [v57 string], sub_1D139016C(), v58, sub_1D139023C(), v60 = v59, , !v60))
  {
    v61 = 1;
    goto LABEL_25;
  }

LABEL_23:

  v61 = 0;
LABEL_25:
  [v53 setHidden_];
  v62 = *(v11 + 16);
  objc_opt_self();
  v63 = swift_dynamicCastObjCClass();
  if (!v63)
  {

LABEL_38:

    sub_1D1128B50(&v89);
    sub_1D1277A30(v85, type metadata accessor for BrowseCategory);
    return;
  }

  v64 = *(v11 + 48);
  if (!v64)
  {
    sub_1D1277A30(v85, type metadata accessor for BrowseCategory);

    sub_1D1128B50(&v89);

    return;
  }

  v65 = *(v11 + 40);
  v66 = v63;
  v67 = v62;

  v68 = [v66 authors];
  if (v68)
  {
    v69 = v68;
    sub_1D139045C();
  }

  v70 = objc_opt_self();
  v71 = sub_1D139044C();

  v72 = [v70 localizedStringByJoiningStrings_];

  v73 = sub_1D139016C();
  v75 = v74;

  v76 = HIBYTE(v64) & 0xF;
  if ((v64 & 0x2000000000000000) == 0)
  {
    v76 = v65 & 0xFFFFFFFFFFFFLL;
  }

  if (v76)
  {
    v77 = HIBYTE(v75) & 0xF;
    if ((v75 & 0x2000000000000000) == 0)
    {
      v77 = v73 & 0xFFFFFFFFFFFFLL;
    }

    if (v77)
    {
      *&v86[0] = v65;
      *(&v86[0] + 1) = v64;
      MEMORY[0x1D3885C10](0x209480E220, 0xA500000000000000);
      MEMORY[0x1D3885C10](v73, v75);

      v78 = sub_1D139012C();

      [v53 setText_];

      goto LABEL_38;
    }
  }

  sub_1D1277A30(v85, type metadata accessor for BrowseCategory);

  sub_1D1128B50(&v89);
}

uint64_t sub_1D1275F04(uint64_t a1)
{
  v3 = sub_1D138D82C();
  v18 = *(v3 - 8);
  v19 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1E69A3588];
  sub_1D1277860(0, &qword_1EC60A840, MEMORY[0x1E69A3588]);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v17 - v8;
  v10 = sub_1D138DF1C();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtC15HealthRecordsUI29MedicalRecordTimelineItemCell_sectionContext;
  swift_beginAccess();
  sub_1D12778B4(a1, v1 + v14, &qword_1EC60A840, v6);
  swift_endAccess();
  sub_1D118C460(v1 + v14, v9);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    v15 = MEMORY[0x1E69A3588];
    sub_1D1277984(a1, &qword_1EC60A840, MEMORY[0x1E69A3588]);
    return sub_1D1277984(v9, &qword_1EC60A840, v15);
  }

  else
  {
    (*(v11 + 32))(v13, v9, v10);
    sub_1D138DF0C();
    sub_1D12764D8();
    sub_1D1277984(a1, &qword_1EC60A840, MEMORY[0x1E69A3588]);
    (*(v18 + 8))(v5, v19);
    return (*(v11 + 8))(v13, v10);
  }
}

void (*sub_1D12761D8(uint64_t *a1))(uint64_t *a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x60uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 24) = v1;
  v6 = sub_1D138D82C();
  v5[4] = v6;
  v7 = *(v6 - 8);
  v5[5] = v7;
  if (v3)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(*(v7 + 64));
  }

  v5[6] = v8;
  sub_1D1277860(0, &qword_1EC60A840, MEMORY[0x1E69A3588]);
  v10 = *(*(v9 - 8) + 64);
  if (v3)
  {
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v11 = malloc(v10);
  }

  v5[7] = v11;
  v12 = sub_1D138DF1C();
  v5[8] = v12;
  v13 = *(v12 - 8);
  v5[9] = v13;
  if (v3)
  {
    v14 = swift_coroFrameAlloc();
  }

  else
  {
    v14 = malloc(*(v13 + 64));
  }

  v15 = OBJC_IVAR____TtC15HealthRecordsUI29MedicalRecordTimelineItemCell_sectionContext;
  v5[10] = v14;
  v5[11] = v15;
  swift_beginAccess();
  return sub_1D127637C;
}

void sub_1D127637C(uint64_t *a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 72);
    v6 = *(v3 + 56);
    sub_1D118C460(*(v3 + 24) + *(v3 + 88), v6);
    if ((*(v5 + 48))(v6, 1, v4) == 1)
    {
      sub_1D1277984(*(v3 + 56), &qword_1EC60A840, MEMORY[0x1E69A3588]);
    }

    else
    {
      v8 = *(v3 + 72);
      v7 = *(v3 + 80);
      v9 = *(v3 + 64);
      v11 = *(v3 + 40);
      v10 = *(v3 + 48);
      v12 = *(v3 + 32);
      (*(v8 + 32))(v7, *(v3 + 56), v9);
      sub_1D138DF0C();
      sub_1D12764D8();
      (*(v11 + 8))(v10, v12);
      (*(v8 + 8))(v7, v9);
    }
  }

  v14 = *(v3 + 48);
  v13 = *(v3 + 56);
  free(*(v3 + 80));
  free(v13);
  free(v14);

  free(v3);
}

void sub_1D12764D8()
{
  v1 = v0;
  sub_1D13911EC();
  v2 = sub_1D139016C();
  v4 = v3;

  MEMORY[0x1D3885C10](0xD000000000000011, 0x80000001D13C02A0);
  sub_1D138D81C();
  v5 = sub_1D13915CC();
  MEMORY[0x1D3885C10](v5);

  MEMORY[0x1D3885C10](0x2E6D6574492ELL, 0xE600000000000000);
  sub_1D138D80C();
  v6 = sub_1D13915CC();
  MEMORY[0x1D3885C10](v6);

  v7 = v4;
  v8 = sub_1D139012C();
  [v1 setAccessibilityIdentifier_];

  v9 = *&v1[OBJC_IVAR____TtC15HealthRecordsUI29MedicalRecordTimelineItemCell_titleView];
  v10 = (v9 + OBJC_IVAR____TtC15HealthRecordsUI24ConceptFeedItemTitleView_baseAccessibilityIdentifier);
  swift_beginAccess();
  *v10 = v2;
  v10[1] = v4;

  v11 = *(v9 + OBJC_IVAR____TtC15HealthRecordsUI24ConceptFeedItemTitleView_titleLabel);
  swift_bridgeObjectRetain_n();
  MEMORY[0x1D3885C10](0x656C7469542ELL, 0xE600000000000000);
  v12 = sub_1D139012C();

  [v11 setAccessibilityIdentifier_];

  v13 = *(v9 + OBJC_IVAR____TtC15HealthRecordsUI24ConceptFeedItemTitleView_dateLabel);

  MEMORY[0x1D3885C10](0x657461442ELL, 0xE500000000000000);
  v14 = sub_1D139012C();

  [v13 setAccessibilityIdentifier_];

  v15 = (*&v1[OBJC_IVAR____TtC15HealthRecordsUI29MedicalRecordTimelineItemCell_valueView] + OBJC_IVAR____TtC15HealthRecordsUI24ConceptFeedItemValueView_baseAccessibilityIdentifier);
  swift_beginAccess();
  *v15 = v2;
  v15[1] = v7;

  v16 = sub_1D1194D14();

  MEMORY[0x1D3885C10](0x65756C61562ELL, 0xE600000000000000);
  v17 = sub_1D139012C();

  [v16 setAccessibilityIdentifier_];

  v18 = sub_1D1194E00();

  MEMORY[0x1D3885C10](0x695665676E61522ELL, 0xEA00000000007765);

  v19 = sub_1D139012C();

  [v18 setAccessibilityIdentifier_];

  v20 = *&v1[OBJC_IVAR____TtC15HealthRecordsUI29MedicalRecordTimelineItemCell_subtitleLabel];
  v22 = v7;

  MEMORY[0x1D3885C10](0x6C7469746275532ELL, 0xE900000000000065);

  v21 = sub_1D139012C();

  [v20 setAccessibilityIdentifier_];
}

id sub_1D12768A8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MedicalRecordTimelineItemCell(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1D1276994()
{
  sub_1D1277860(319, &qword_1EC60A840, MEMORY[0x1E69A3588]);
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

__n128 __swift_memcpy120_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 112) = *(a2 + 14);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_1D1276A88(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 120))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D1276AD0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 120) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 120) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1D1276B40()
{
  result = qword_1EC60E6B8;
  if (!qword_1EC60E6B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60E6B8);
  }

  return result;
}

unint64_t sub_1D1276B94(uint64_t a1)
{
  result = sub_1D1276BBC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D1276BBC()
{
  result = qword_1EC60E6C0;
  if (!qword_1EC60E6C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60E6C0);
  }

  return result;
}

uint64_t sub_1D1276C38@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC15HealthRecordsUI29MedicalRecordTimelineItemCell_sectionContext;
  swift_beginAccess();
  return sub_1D118C460(v1 + v3, a1);
}

void (*sub_1D1276C94(uint64_t **a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = sub_1D12761D8(v2);
  return sub_1D10B0564;
}

uint64_t sub_1D1276D4C(uint64_t a1, uint64_t a2)
{
  if (*(a1 + OBJC_IVAR____TtC15HealthRecordsUI25MedicalRecordTimelineItem_viewData) != *(a2 + OBJC_IVAR____TtC15HealthRecordsUI25MedicalRecordTimelineItem_viewData) || *(a1 + OBJC_IVAR____TtC15HealthRecordsUI25MedicalRecordTimelineItem_viewData + 8) != *(a2 + OBJC_IVAR____TtC15HealthRecordsUI25MedicalRecordTimelineItem_viewData + 8))
  {
    return 0;
  }

  v4 = *(a2 + OBJC_IVAR____TtC15HealthRecordsUI25MedicalRecordTimelineItem_viewData + 16);
  v5 = *(a1 + OBJC_IVAR____TtC15HealthRecordsUI25MedicalRecordTimelineItem_viewData + 16);
  sub_1D106F934(0, &qword_1EE06B0C0);
  v6 = v5;
  v7 = v4;
  v8 = sub_1D1390D8C();

  return v8 & 1;
}

uint64_t sub_1D1276DF4(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || *(a1 + 8) != *(a2 + 8))
  {
    return 0;
  }

  v4 = *(a2 + 16);
  v5 = *(a1 + 16);
  sub_1D106F934(0, &qword_1EE06B0C0);
  v6 = v5;
  v7 = v4;
  v8 = sub_1D1390D8C();

  return v8 & 1;
}

void sub_1D1276E8C(void *a1)
{
  v3 = sub_1D138F0BC();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D138FF3C();
  v71 = *(v7 - 8);
  v72 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = (&v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = type metadata accessor for PresentationContext(0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v57 - v14;
  v68 = v1;
  v16 = *(v1 + OBJC_IVAR____TtC15HealthRecordsUI29MedicalRecordTimelineItemCell_item);
  if (!v16)
  {
    return;
  }

  v17 = *(v16 + OBJC_IVAR____TtC15HealthRecordsUI25MedicalRecordTimelineItem_viewData + 16);
  objc_opt_self();
  v18 = swift_dynamicCastObjCClass();
  if (!v18)
  {
    return;
  }

  v67 = v18;
  v60 = a1;
  v57 = v6;
  v19 = v17;

  v20 = sub_1D138F6CC();
  v70 = 0;
  v64 = aBlock;
  v21 = v75;
  v63 = v74;
  v22 = v76;
  if (!v75 && v76)
  {
    v23 = v77;
    v20 = [v67 recordCategoryType];
    v70 = (qword_1F4D04590 == v20) & (v23 ^ 1);
  }

  if (qword_1EE069ED0 != -1)
  {
    v20 = swift_once();
  }

  v66 = v19;
  v62 = v16;
  v69 = v21;
  v58 = v4;
  v59 = v3;
  v65 = v22;
  if (qword_1EE06AF70 != -1)
  {
    v20 = swift_once();
  }

  v80 = *(qword_1EE06BB58 + OBJC_IVAR___HRProfileManager_lock);
  MEMORY[0x1EEE9AC00](v20);
  *(&v57 - 2) = v24;
  sub_1D138D96C();
  sub_1D106F934(0, &qword_1EE06B6B0);
  sub_1D1277798(&qword_1EE06B048, MEMORY[0x1E69A3B50]);

  sub_1D138ED0C();

  v25 = aBlock;
  v61 = aBlock;
  if (v70)
  {
    v26 = sub_1D1298D48(v67, aBlock);
  }

  else
  {
    v27 = sub_1D138D5EC();
    (*(*(v27 - 8) + 56))(v15, 1, 1, v27);
    sub_1D12777E0(v15, v12, type metadata accessor for PresentationContext);
    v28 = objc_allocWithZone(type metadata accessor for MedicalRecordDetailViewController(0));
    v29 = v66;
    v30 = v25;
    v31 = sub_1D131237C(v67, v30, v12);

    v26 = v31;
    v32 = [v26 navigationItem];
    [v32 setLargeTitleDisplayMode_];

    sub_1D1277A30(v15, type metadata accessor for PresentationContext);
  }

  v33 = v65;
  v34 = 12;
  if (!v65)
  {
    v34 = 19;
  }

  v35 = 11;
  if (v65)
  {
    v35 = 12;
  }

  if (v64)
  {
    v34 = 10;
    v35 = 10;
  }

  if (v69)
  {
    v36 = v34;
  }

  else
  {
    v36 = v35;
  }

  if (qword_1EE06A170 != -1)
  {
    swift_once();
  }

  v37 = qword_1EE06AEB8;
  if (v33)
  {
    sub_1D123E1C4(v33, &aBlock);
    sub_1D1080D98(&aBlock);
    v38 = aBlock;
  }

  else
  {
    v38 = 11;
  }

  v39 = OBJC_IVAR___CHRAnalyticsManager_managerQueue;
  v40 = *(v37 + OBJC_IVAR___CHRAnalyticsManager_managerQueue);
  *v9 = v40;
  v41 = v71;
  v42 = v72;
  (*(v71 + 104))(v9, *MEMORY[0x1E69E8018], v72);
  v43 = v40;
  LOBYTE(v40) = sub_1D138FF5C();
  (*(v41 + 8))(v9, v42);
  if ((v40 & 1) == 0)
  {
    __break(1u);
    goto LABEL_42;
  }

  v44 = *(v37 + v39);
  v45 = swift_allocObject();
  *(v45 + 16) = 1;
  *(v45 + 24) = v36;
  *(v45 + 32) = 0;
  *(v45 + 40) = v38;
  *(v45 + 48) = 0;
  v46 = swift_allocObject();
  *(v46 + 16) = sub_1D1080D6C;
  *(v46 + 24) = v45;
  v77 = sub_1D1080D80;
  v78 = v46;
  aBlock = MEMORY[0x1E69E9820];
  v74 = 1107296256;
  v75 = sub_1D10DD3BC;
  v76 = &block_descriptor_52;
  v47 = _Block_copy(&aBlock);

  dispatch_sync(v44, v47);
  _Block_release(v47);
  LOBYTE(v47) = swift_isEscapingClosureAtFileLocation();

  if (v47)
  {
LABEL_42:
    __break(1u);
    return;
  }

  if (v70)
  {
    v48 = [v60 navigationController];
    if (v48)
    {
      v49 = v48;
      [v48 pushViewController:v26 animated:1];
    }

    goto LABEL_35;
  }

  v79 = &unk_1F4DADB50;
  v50 = swift_dynamicCastObjCProtocolConditional();
  if (v50)
  {
    v51 = v50;
    v52 = v26;
    [v60 showAdaptively:v51 sender:v68 animated:1];

LABEL_35:

    return;
  }

  v53 = v57;
  sub_1D138F06C();
  v54 = sub_1D138F0AC();
  v55 = sub_1D139080C();
  if (os_log_type_enabled(v54, v55))
  {
    v56 = swift_slowAlloc();
    *v56 = 0;
    _os_log_impl(&dword_1D101F000, v54, v55, "Could not make AdaptiveModalPresentedViewController from factor makeDetailViewController(for:using:)", v56, 2u);
    MEMORY[0x1D38882F0](v56, -1, -1);
  }

  else
  {
  }

  (*(v58 + 8))(v53, v59);
}

uint64_t sub_1D1277798(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D12777E0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t block_copy_helper_53(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_1D1277860(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D1390F3C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1D12778B4(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_1D1277860(0, a3, a4);
  (*(*(v6 - 8) + 24))(a2, a1, v6);
  return a2;
}

unint64_t sub_1D1277920()
{
  result = qword_1EC60A4D8;
  if (!qword_1EC60A4D8)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EC60A4D8);
  }

  return result;
}

uint64_t sub_1D1277984(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_1D1277860(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_1D12779E0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1D1277A30(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D1277A90()
{
  sub_1D1162FD4(v0 + OBJC_IVAR____TtC15HealthRecordsUI19UDCAlphabeticalItem_viewData);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for UDCAlphabeticalItem()
{
  result = qword_1EC60E6D8;
  if (!qword_1EC60E6D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D1277B6C()
{
  result = type metadata accessor for UserDomainConceptViewData();
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

uint64_t sub_1D1277C20()
{
  v1 = *(*v0 + OBJC_IVAR____TtC15HealthRecordsUI19UDCAlphabeticalItem_reuseIdentifier);

  return v1;
}

uint64_t sub_1D1277C8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  type metadata accessor for UDCAlphabeticalItem();
  v6 = swift_allocObject();
  v7 = (v6 + OBJC_IVAR____TtC15HealthRecordsUI19UDCAlphabeticalItem_reuseIdentifier);
  type metadata accessor for AlphabeticalUDCCell();
  sub_1D127843C(&qword_1EC60BEB0, type metadata accessor for AlphabeticalUDCCell);
  *v7 = sub_1D138DECC();
  v7[1] = v8;
  result = sub_1D11631E4(a1, v6 + OBJC_IVAR____TtC15HealthRecordsUI19UDCAlphabeticalItem_viewData);
  *(v6 + OBJC_IVAR____TtC15HealthRecordsUI19UDCAlphabeticalItem_healthStore) = a2;
  *(v6 + OBJC_IVAR____TtC15HealthRecordsUI19UDCAlphabeticalItem_listConfiguration) = 1;
  *a3 = v6;
  return result;
}

uint64_t sub_1D1277D6C()
{
  v1 = sub_1D138D5EC();
  v2 = *(v1 - 8);
  *&v3 = MEMORY[0x1EEE9AC00](v1).n128_u64[0];
  v5 = v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = (*v0 + OBJC_IVAR____TtC15HealthRecordsUI19UDCAlphabeticalItem_reuseIdentifier);
  v8 = *v6;
  v7 = v6[1];
  v9 = [*(*v0 + OBJC_IVAR____TtC15HealthRecordsUI19UDCAlphabeticalItem_viewData + 8) UUID];
  sub_1D138D5CC();

  v10 = sub_1D138D59C();
  v12 = v11;
  (*(v2 + 8))(v5, v1);
  v14[0] = v8;
  v14[1] = v7;

  MEMORY[0x1D3885C10](v10, v12);

  return v14[0];
}

uint64_t sub_1D1277EB8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE0DA58](a1, WitnessTable);
}

uint64_t sub_1D1277F1C()
{
  v1 = sub_1D138D5EC();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  sub_1D139177C();
  v6 = [*(v5 + OBJC_IVAR____TtC15HealthRecordsUI19UDCAlphabeticalItem_viewData + 8) UUID];
  sub_1D138D5CC();

  sub_1D127843C(&qword_1EE06B4F8, MEMORY[0x1E69695A8]);
  sub_1D139007C();
  (*(v2 + 8))(v4, v1);
  return sub_1D13917CC();
}

uint64_t sub_1D127806C()
{
  v1 = sub_1D138D5EC();
  v2 = *(v1 - 8);
  *&v3 = MEMORY[0x1EEE9AC00](v1).n128_u64[0];
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [*(*v0 + OBJC_IVAR____TtC15HealthRecordsUI19UDCAlphabeticalItem_viewData + 8) UUID];
  sub_1D138D5CC();

  sub_1D127843C(&qword_1EE06B4F8, MEMORY[0x1E69695A8]);
  sub_1D139007C();
  return (*(v2 + 8))(v5, v1);
}

uint64_t sub_1D12781B0()
{
  v1 = sub_1D138D5EC();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D139177C();
  v5 = [*(*v0 + OBJC_IVAR____TtC15HealthRecordsUI19UDCAlphabeticalItem_viewData + 8) UUID];
  sub_1D138D5CC();

  sub_1D127843C(&qword_1EE06B4F8, MEMORY[0x1E69695A8]);
  sub_1D139007C();
  (*(v2 + 8))(v4, v1);
  return sub_1D13917CC();
}

uint64_t sub_1D1278370(uint64_t a1)
{
  *(a1 + 8) = sub_1D127843C(&qword_1EC60E6F0, type metadata accessor for UDCAlphabeticalItem);
  result = sub_1D127843C(&qword_1EC60E6F8, type metadata accessor for UDCAlphabeticalItem);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1D127843C(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_1D1278484()
{
  v0 = [objc_opt_self() labelColor];
  v1 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  [v1 setFont_];
  [v1 setNumberOfLines_];
  v2 = v0;
  [v1 setTextColor_];

  [v1 setTranslatesAutoresizingMaskIntoConstraints_];
  return v1;
}

void sub_1D127854C()
{
  v1 = *&v0[OBJC_IVAR____TtC15HealthRecordsUI28HeaderWithRightAlignedButton_baseAccessibilityIdentifier + 8];
  if (v1)
  {
    v2 = *&v0[OBJC_IVAR____TtC15HealthRecordsUI28HeaderWithRightAlignedButton_baseAccessibilityIdentifier];
    sub_1D10A5C9C(0, &qword_1EE06B560);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_1D139E710;
    *(v3 + 32) = v2;
    *(v3 + 40) = v1;
    *(v3 + 48) = 0x6956726564616548;
    *(v3 + 56) = 0xEA00000000007765;

    v4 = sub_1D139044C();
    v5 = HKUIJoinStringsForAutomationIdentifier();

    [v0 setAccessibilityIdentifier_];
    v6 = *&v0[OBJC_IVAR____TtC15HealthRecordsUI28HeaderWithRightAlignedButton_headerLabel];

    v7 = v0;
    sub_1D1121FC4(&unk_1F4D044E0);
    v8 = sub_1D139044C();

    v9 = HKUIJoinStringsForAutomationIdentifier();

    [v6 setAccessibilityIdentifier_];
    v10 = *&v7[OBJC_IVAR____TtC15HealthRecordsUI28HeaderWithRightAlignedButton_button];
    sub_1D1121FC4(&unk_1F4D04510);
    v11 = sub_1D139044C();

    v12 = HKUIJoinStringsForAutomationIdentifier();

    [v10 setAccessibilityIdentifier_];
  }
}

char *sub_1D1278744(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC15HealthRecordsUI28HeaderWithRightAlignedButton_headerLabel;
  *&v2[v4] = sub_1D1278484();
  v5 = OBJC_IVAR____TtC15HealthRecordsUI28HeaderWithRightAlignedButton_button;
  v6 = [objc_opt_self() buttonWithType_];
  [v6 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v2[v5] = v6;
  *&v2[OBJC_IVAR____TtC15HealthRecordsUI28HeaderWithRightAlignedButton_customConstraints] = MEMORY[0x1E69E7CC0];
  v7 = &v2[OBJC_IVAR____TtC15HealthRecordsUI28HeaderWithRightAlignedButton_headerText];
  *v7 = 0;
  *(v7 + 1) = 0;
  v8 = &v2[OBJC_IVAR____TtC15HealthRecordsUI28HeaderWithRightAlignedButton_buttonText];
  *v8 = 0;
  *(v8 + 1) = 0;
  v9 = &v2[OBJC_IVAR____TtC15HealthRecordsUI28HeaderWithRightAlignedButton_baseAccessibilityIdentifier];
  *v9 = 0;
  *(v9 + 1) = 0;
  *&v2[OBJC_IVAR____TtC15HealthRecordsUI28HeaderWithRightAlignedButton_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  if (a2)
  {
    v10 = sub_1D139012C();
  }

  else
  {
    v10 = 0;
  }

  v20.receiver = v2;
  v20.super_class = type metadata accessor for HeaderWithRightAlignedButton();
  v11 = objc_msgSendSuper2(&v20, sel_initWithReuseIdentifier_, v10);

  v12 = OBJC_IVAR____TtC15HealthRecordsUI28HeaderWithRightAlignedButton_button;
  v13 = *&v11[OBJC_IVAR____TtC15HealthRecordsUI28HeaderWithRightAlignedButton_button];
  v14 = v11;
  [v13 addTarget:v14 action:sel_buttonTapped_ forControlEvents:64];
  LODWORD(v15) = 1148846080;
  [*&v11[v12] setContentHuggingPriority:0 forAxis:v15];
  [v14 addSubview_];
  [v14 addSubview_];
  sub_1D1278AB0();
  sub_1D1278CE0();
  sub_1D1195238();
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1D139E700;
  v17 = sub_1D138F4EC();
  v18 = MEMORY[0x1E69DC2B0];
  *(v16 + 32) = v17;
  *(v16 + 40) = v18;
  MEMORY[0x1D3886600](v16, sel_traitCollectionDidChangeWithTraitEnvironment_previousTraitCollection_);

  swift_unknownObjectRelease();

  return v14;
}

uint64_t sub_1D1278AB0()
{
  v1 = v0;
  v2 = sub_1D138F2EC();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1D138F3FC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D138F36C();
  v10 = *&v0[OBJC_IVAR____TtC15HealthRecordsUI28HeaderWithRightAlignedButton_headerLabel];
  sub_1D138F30C();
  v11 = sub_1D138F2BC();
  (*(v3 + 8))(v5, v2);
  [v10 setFont_];

  v12 = [*&v1[OBJC_IVAR____TtC15HealthRecordsUI28HeaderWithRightAlignedButton_button] titleLabel];
  if (v12)
  {
    v13 = v12;
    v14 = [objc_opt_self() preferredFontForTextStyle_];
    [v13 setFont_];
  }

  sub_1D138F35C();
  [v1 setDirectionalLayoutMargins_];
  return (*(v7 + 8))(v9, v6);
}

id sub_1D1278CE0()
{
  v1 = objc_opt_self();
  v2 = OBJC_IVAR____TtC15HealthRecordsUI28HeaderWithRightAlignedButton_customConstraints;
  sub_1D106F934(0, &qword_1EC609690);

  v3 = sub_1D139044C();

  [v1 deactivateConstraints_];

  v4 = [v0 traitCollection];
  v5 = [v4 preferredContentSizeCategory];

  LOBYTE(v4) = sub_1D1390B5C();
  if (v4)
  {
    v6 = sub_1D1278E34();
  }

  else
  {
    v6 = sub_1D12791BC();
  }

  *&v0[v2] = v6;

  v7 = sub_1D139044C();

  [v1 activateConstraints_];

  return [v0 setNeedsLayout];
}

uint64_t sub_1D1278E34()
{
  sub_1D10A5C9C(0, &qword_1EE06A4C0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1D13A0750;
  v2 = *&v0[OBJC_IVAR____TtC15HealthRecordsUI28HeaderWithRightAlignedButton_headerLabel];
  v3 = [v2 topAnchor];
  v4 = [v0 layoutMarginsGuide];
  v5 = [v4 topAnchor];

  v6 = [v3 constraintEqualToAnchor_];
  *(v1 + 32) = v6;
  v7 = [v2 leadingAnchor];
  v8 = [v0 layoutMarginsGuide];
  v9 = [v8 &selRef_hrui_insurance + 1];

  v10 = [v7 constraintEqualToAnchor_];
  *(v1 + 40) = v10;
  v11 = [v2 trailingAnchor];
  v12 = [v0 layoutMarginsGuide];
  v13 = [v12 trailingAnchor];

  v14 = [v11 constraintEqualToAnchor_];
  *(v1 + 48) = v14;
  v15 = *&v0[OBJC_IVAR____TtC15HealthRecordsUI28HeaderWithRightAlignedButton_button];
  v16 = [v15 topAnchor];
  v17 = [v2 bottomAnchor];
  v18 = [v16 constraintEqualToAnchor:v17 constant:8.0];

  *(v1 + 56) = v18;
  v19 = [v15 leadingAnchor];
  v20 = [v2 leadingAnchor];
  v21 = [v19 constraintEqualToAnchor_];

  *(v1 + 64) = v21;
  v22 = [v15 trailingAnchor];
  v23 = [v2 trailingAnchor];
  v24 = [v22 constraintLessThanOrEqualToAnchor_];

  *(v1 + 72) = v24;
  v25 = [v0 layoutMarginsGuide];
  v26 = [v25 bottomAnchor];

  v27 = [v15 bottomAnchor];
  v28 = [v26 constraintEqualToAnchor_];

  *(v1 + 80) = v28;
  return v1;
}

uint64_t sub_1D12791BC()
{
  v1 = v0;
  sub_1D10A5C9C(0, &qword_1EE06A4C0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1D13A68D0;
  v3 = *&v0[OBJC_IVAR____TtC15HealthRecordsUI28HeaderWithRightAlignedButton_headerLabel];
  v4 = [v3 topAnchor];
  v5 = [v1 layoutMarginsGuide];
  v6 = [v5 topAnchor];

  v7 = [v4 constraintEqualToAnchor_];
  *(v2 + 32) = v7;
  v8 = [v3 leadingAnchor];
  v9 = [v1 layoutMarginsGuide];
  v10 = [v9 leadingAnchor];

  v11 = [v8 constraintEqualToAnchor_];
  *(v2 + 40) = v11;
  v12 = [v1 layoutMarginsGuide];
  v13 = [v12 bottomAnchor];

  v14 = [v3 bottomAnchor];
  v15 = [v13 constraintEqualToAnchor_];

  *(v2 + 48) = v15;
  v16 = *&v1[OBJC_IVAR____TtC15HealthRecordsUI28HeaderWithRightAlignedButton_button];
  v17 = [v16 leadingAnchor];
  v18 = [v3 trailingAnchor];
  v19 = [v17 constraintEqualToAnchor:v18 constant:8.0];

  *(v2 + 56) = v19;
  v20 = [v16 trailingAnchor];
  v21 = [v1 layoutMarginsGuide];
  v22 = [v21 trailingAnchor];

  v23 = [v20 constraintEqualToAnchor_];
  *(v2 + 64) = v23;
  v24 = [v16 lastBaselineAnchor];
  v25 = [v3 lastBaselineAnchor];
  v26 = [v24 constraintEqualToAnchor_];

  *(v2 + 72) = v26;
  return v2;
}

id sub_1D127959C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HeaderWithRightAlignedButton();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1D127969C()
{
  v1 = OBJC_IVAR____TtC15HealthRecordsUI28HeaderWithRightAlignedButton_headerLabel;
  *(v0 + v1) = sub_1D1278484();
  v2 = OBJC_IVAR____TtC15HealthRecordsUI28HeaderWithRightAlignedButton_button;
  v3 = [objc_opt_self() buttonWithType_];
  [v3 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v0 + v2) = v3;
  *(v0 + OBJC_IVAR____TtC15HealthRecordsUI28HeaderWithRightAlignedButton_customConstraints) = MEMORY[0x1E69E7CC0];
  v4 = (v0 + OBJC_IVAR____TtC15HealthRecordsUI28HeaderWithRightAlignedButton_headerText);
  *v4 = 0;
  v4[1] = 0;
  v5 = (v0 + OBJC_IVAR____TtC15HealthRecordsUI28HeaderWithRightAlignedButton_buttonText);
  *v5 = 0;
  v5[1] = 0;
  v6 = (v0 + OBJC_IVAR____TtC15HealthRecordsUI28HeaderWithRightAlignedButton_baseAccessibilityIdentifier);
  *v6 = 0;
  v6[1] = 0;
  *(v0 + OBJC_IVAR____TtC15HealthRecordsUI28HeaderWithRightAlignedButton_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  sub_1D13913BC();
  __break(1u);
}

uint64_t type metadata accessor for ClinicalAccountDetailsViewController()
{
  result = qword_1EC60E7B0;
  if (!qword_1EC60E7B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

char *sub_1D127988C(void *a1, void *a2, char *a3, void (*a4)(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t)), void (*a5)(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t)))
{
  v6 = v5;
  v52 = a4;
  v66 = MEMORY[0x1E6969FF0];
  v11 = MEMORY[0x1E69E6720];
  v54 = MEMORY[0x1E69E6720];
  sub_1D127E484(0, &qword_1EC60E7F0, MEMORY[0x1E6969FF0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v60 = &v52 - v13;
  v14 = sub_1D1390F1C();
  v64 = *(v14 - 8);
  v65 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v57 = &v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = MEMORY[0x1E69E8050];
  sub_1D127E484(0, &qword_1EE06A620, MEMORY[0x1E69E8050], v11);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v52 - v17;
  sub_1D127F168();
  v59 = v19;
  v61 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v67 = &v52 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D127F350();
  v22 = *(v21 - 8);
  v62 = v21;
  v63 = v22;
  MEMORY[0x1EEE9AC00](v21);
  v58 = &v52 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *a3;
  *&v6[qword_1EC60E738] = 0;
  *&v6[qword_1EC60E740] = 0;
  *&v6[qword_1EC60E780] = 0;
  *&v6[qword_1EC60E788] = 0;
  *&v6[qword_1EC60E790] = 0;
  *&v6[qword_1EC60E798] = 0;
  v6[qword_1EC60E7A0] = 0;
  *&v6[qword_1EC60E7A8] = 0;
  v70 = a1;
  v71 = 0;
  sub_1D127F268();
  swift_allocObject();
  v25 = a1;
  *&v6[qword_1EC60E748] = sub_1D138F6EC();
  *&v6[qword_1EC60E750] = a2;
  v26 = a2;
  v27 = [v26 clinicalAccountStore];
  *&v6[qword_1EC60E758] = v27;
  type metadata accessor for ClinicalAccountManager();
  v28 = swift_allocObject();
  v29 = MEMORY[0x1E69E7CD0];
  v28[5] = 0;
  v28[6] = 0;
  v28[4] = v29;
  v28[2] = v26;
  v56 = v26;
  v28[3] = [v56 clinicalAccountStore];
  *&v6[qword_1EC60E760] = v28;
  type metadata accessor for ClinicalAccountDetailsDataSourceProvider();
  swift_allocObject();
  v30 = v25;
  v53 = v30;

  v31 = sub_1D11A5FD8(v30, v28);

  *&v6[qword_1EC60E768] = v31;
  v6[qword_1EC60E770] = v24;
  v32 = &v6[qword_1EC60E778];
  *v32 = v52;
  v32[1] = a5;
  v33 = type metadata accessor for ClinicalAccountDetailsViewController();
  v69.receiver = v6;
  v69.super_class = v33;
  v34 = objc_msgSendSuper2(&v69, sel_initWithCollectionViewLayout_, 0);
  v35 = *&v34[qword_1EC60E768];
  v36 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v37 = *(v35 + 88);
  *(v35 + 88) = sub_1D127F450;
  *(v35 + 96) = v36;
  v38 = v34;

  sub_1D102CC60(v37);

  v70 = *&v38[qword_1EC60E748];
  sub_1D106F934(0, &qword_1EE06B760);

  v39 = sub_1D1390A7C();
  v68 = v39;
  v40 = sub_1D1390A2C();
  (*(*(v40 - 8) + 56))(v18, 1, 1, v40);
  sub_1D127EAA8(&qword_1EC60E810, sub_1D127F268);
  sub_1D10809F0(&qword_1EE06A610, &qword_1EE06B760);
  sub_1D138F8BC();
  v52 = sub_1D127E484;
  v41 = v54;
  sub_1D127EAF0(v18, &qword_1EE06A620, v55, v54, sub_1D127E484);

  v42 = v57;
  sub_1D1390F0C();
  v43 = [objc_opt_self() mainRunLoop];
  v70 = v43;
  v44 = sub_1D1390EFC();
  v45 = v60;
  (*(*(v44 - 8) + 56))(v60, 1, 1, v44);
  sub_1D106F934(0, &qword_1EC60E820);
  sub_1D127EAA8(&qword_1EC60E828, sub_1D127F168);
  sub_1D10809F0(&qword_1EC60E830, &qword_1EC60E820);
  v47 = v58;
  v46 = v59;
  v48 = v67;
  sub_1D138F8CC();
  sub_1D127EAF0(v45, &qword_1EC60E7F0, v66, v41, v52);

  (*(v64 + 8))(v42, v65);
  (*(v61 + 8))(v48, v46);
  swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_1D127EAA8(&qword_1EC60E838, sub_1D127F350);
  v49 = v62;
  v50 = sub_1D138F90C();

  (*(v63 + 8))(v47, v49);
  *&v38[qword_1EC60E788] = v50;

  return v38;
}

uint64_t sub_1D127A11C(uint64_t a1)
{
  sub_1D127E484(0, &qword_1EE06A620, MEMORY[0x1E69E8050], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v22 - v3;
  sub_1D127F5D0(0, &qword_1EC60E840, MEMORY[0x1E69E6370], MEMORY[0x1E695C060]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v22 - v8;
  sub_1D127F460();
  v11 = v10;
  v12 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v16 = result;
    if (a1)
    {

      sub_1D138E0FC();
      v23 = v12;

      swift_beginAccess();
      sub_1D127F5D0(0, &qword_1EE06A698, MEMORY[0x1E69E6370], MEMORY[0x1E695C070]);
      sub_1D138F78C();
      swift_endAccess();

      sub_1D106F934(0, &qword_1EE06B760);
      v17 = sub_1D1390A7C();
      v24 = v17;
      v18 = sub_1D1390A2C();
      (*(*(v18 - 8) + 56))(v4, 1, 1, v18);
      sub_1D127F554();
      v22 = v11;
      sub_1D10809F0(&qword_1EE06A610, &qword_1EE06B760);
      sub_1D138F8BC();
      sub_1D127EAF0(v4, &qword_1EE06A620, MEMORY[0x1E69E8050], MEMORY[0x1E69E6720], sub_1D127E484);

      (*(v7 + 8))(v9, v6);
      swift_allocObject();
      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      swift_unknownObjectWeakInit();

      sub_1D127EAA8(&qword_1EC60E858, sub_1D127F460);
      v20 = v22;
      v21 = sub_1D138F90C();

      (*(v23 + 8))(v14, v20);
    }

    else
    {
      v21 = 0;
    }

    *&v16[qword_1EC60E780] = v21;
  }

  return result;
}

void sub_1D127A5C4(char *a1)
{
  v1 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_1D127B800(v1);
  }
}

void sub_1D127A620(void **a1)
{
  v1 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    if (*&Strong[qword_1EC60E738])
    {
    }

    else
    {
      v3 = *&Strong[qword_1EC60E790];
      if (v3)
      {
        v4 = Strong;
        v5 = v3;
        [v5 setHidden_];

        Strong = v4;
      }

      v6 = Strong;

      sub_1D11A4C3C(v1);
    }
  }
}

id sub_1D127A734()
{
  v1 = *&v0[qword_1EC60E768];
  v10 = type metadata accessor for ClinicalAccountDetailsDataSourceProvider();
  v11 = sub_1D127EAA8(&qword_1EC60E7C8, type metadata accessor for ClinicalAccountDetailsDataSourceProvider);
  v9 = v1;

  sub_1D138EC5C();
  v8.receiver = v0;
  v8.super_class = type metadata accessor for ClinicalAccountDetailsViewController();
  objc_msgSendSuper2(&v8, sel_viewDidLoad);
  result = [v0 collectionView];
  if (result)
  {
    v3 = result;
    v4 = v0[qword_1EC60E770];
    v5 = objc_opt_self();
    v6 = &selRef_systemBackgroundColor;
    if (!v4)
    {
      v6 = &selRef_systemGroupedBackgroundColor;
    }

    v7 = [v5 *v6];
    [v3 setBackgroundColor_];

    return sub_1D127A868();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D127A868()
{
  ObjectType = swift_getObjectType();
  sub_1D127E484(0, &qword_1EE06A620, MEMORY[0x1E69E8050], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v22 - v2;
  sub_1D1080870();
  v23 = *(v4 - 8);
  v24 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EE06AF70 != -1)
  {
    swift_once();
  }

  v7 = qword_1EE06BB58;
  v8 = [*(v0 + qword_1EC60E750) healthStore];
  v22 = v0;
  v9 = v8;
  v10 = [v8 profileIdentifier];

  v26 = *(v7 + OBJC_IVAR___HRProfileManager_lock);
  MEMORY[0x1EEE9AC00](v11);
  *(&v22 - 2) = v7;
  *(&v22 - 1) = v10;
  sub_1D138D96C();
  type metadata accessor for AccountStateProvider();
  sub_1D127EAA8(&qword_1EE06B048, MEMORY[0x1E69A3B50]);

  sub_1D138ED0C();

  v12 = *(v27 + 24);

  v27 = v12;
  sub_1D106F934(0, &qword_1EE06B760);
  v13 = sub_1D1390A7C();
  v26 = v13;
  v14 = sub_1D1390A2C();
  (*(*(v14 - 8) + 56))(v3, 1, 1, v14);
  sub_1D112F230();
  sub_1D127EAA8(&qword_1EC6099A8, sub_1D112F230);
  sub_1D10809F0(&qword_1EE06A610, &qword_1EE06B760);
  sub_1D138F8BC();
  sub_1D127EAF0(v3, &qword_1EE06A620, MEMORY[0x1E69E8050], MEMORY[0x1E69E6720], sub_1D127E484);

  v15 = swift_allocObject();
  v16 = v22;
  swift_unknownObjectWeakInit();
  v17 = swift_allocObject();
  v18 = ObjectType;
  *(v17 + 16) = v15;
  *(v17 + 24) = v18;
  sub_1D127EAA8(&qword_1EC6099B8, sub_1D1080870);
  v19 = v24;
  v20 = sub_1D138F90C();

  (*(v23 + 8))(v6, v19);
  *(v16 + qword_1EC60E7A8) = v20;
}

void sub_1D127AD48(void *a1)
{
  v1 = a1;
  sub_1D127A734();
}

id sub_1D127AD90(char a1)
{
  v4.receiver = v1;
  v4.super_class = type metadata accessor for ClinicalAccountDetailsViewController();
  result = objc_msgSendSuper2(&v4, sel_viewDidAppear_, a1 & 1);
  if (*(*&v1[qword_1EC60E768] + 80))
  {

    sub_1D138E0FC();

    sub_1D1130200(1);
  }

  return result;
}

void sub_1D127AE28(void *a1, uint64_t a2, char a3)
{
  v4 = a1;
  sub_1D127AD90(a3);
}

void sub_1D127AE7C(char a1)
{
  v2 = v1;
  v9.receiver = v1;
  v9.super_class = type metadata accessor for ClinicalAccountDetailsViewController();
  objc_msgSendSuper2(&v9, sel_viewWillDisappear_, a1 & 1);
  v4 = *&v1[qword_1EC60E778 + 8];
  if (v4)
  {
    v5 = *&v1[qword_1EC60E778];
    if (([v2 isMovingFromParentViewController] & 1) != 0 || (objc_msgSend(v2, sel_isBeingDismissed) & 1) != 0 || (v6 = objc_msgSend(v2, sel_navigationController)) != 0 && (v7 = v6, v8 = objc_msgSend(v6, sel_isBeingDismissed), v7, v8))
    {
      _s15HealthRecordsUI0aB10ViewRouterV12navigateBack2toySS_tFZ_0(v5, v4);
    }
  }
}

void sub_1D127AF50(void *a1, uint64_t a2, char a3)
{
  v4 = a1;
  sub_1D127AE7C(a3);
}

void sub_1D127AFA4()
{
  v1 = v0;
  sub_1D138EC6C();
  v2 = sub_1D138EC7C();
  v2();
  v3 = [v0 collectionView];
  if (!v3)
  {
    __break(1u);
    goto LABEL_18;
  }

  v4 = v3;
  type metadata accessor for TextItemCell();
  sub_1D127EAA8(&unk_1EC60F720, type metadata accessor for TextItemCell);
  sub_1D13908AC();

  v5 = [v1 collectionView];
  if (!v5)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v6 = v5;
  type metadata accessor for AccountActionCell();
  sub_1D127EAA8(&qword_1EC60E7D0, type metadata accessor for AccountActionCell);
  sub_1D13908AC();

  v7 = [v1 collectionView];
  if (!v7)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v8 = v7;
  type metadata accessor for AccountUpgradeCell();
  sub_1D127EAA8(&qword_1EC60A050, type metadata accessor for AccountUpgradeCell);
  sub_1D13908AC();

  v9 = [v1 collectionView];
  if (!v9)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v10 = v9;
  type metadata accessor for TitleSubtitleDetailCell();
  sub_1D127EAA8(&qword_1EC60B7E0, type metadata accessor for TitleSubtitleDetailCell);
  sub_1D13908AC();

  v11 = [v1 collectionView];
  if (!v11)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v12 = v11;
  type metadata accessor for TitleSubtitleDetailSpinnerCell();
  sub_1D127EAA8(&qword_1EC60F730, type metadata accessor for TitleSubtitleDetailSpinnerCell);
  sub_1D13908AC();

  v13 = [v1 collectionView];
  if (!v13)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v14 = v13;
  type metadata accessor for AccountSourceCell();
  sub_1D127EAA8(&qword_1EC60E7D8, type metadata accessor for AccountSourceCell);
  sub_1D13908AC();

  v15 = [v1 collectionView];
  if (!v15)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v16 = v15;
  type metadata accessor for TopAlignedIconListCell();
  sub_1D127EAA8(&qword_1EC60E7E0, type metadata accessor for TopAlignedIconListCell);
  sub_1D13908AC();

  v17 = [v1 collectionView];
  if (!v17)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v18 = v17;
  type metadata accessor for UploadNewDataCell();
  sub_1D127EAA8(&qword_1EC60E7E8, type metadata accessor for UploadNewDataCell);
  sub_1D13908AC();

  v19 = [v1 collectionView];
  if (!v19)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v20 = v19;
  sub_1D138EA0C();
  sub_1D13908BC();

  v21 = [v1 collectionView];
  if (!v21)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v22 = v21;
  type metadata accessor for ClinicalSharingSelectableAuthorizationCategoryCell();
  sub_1D127EAA8(&qword_1EC609BC8, type metadata accessor for ClinicalSharingSelectableAuthorizationCategoryCell);
  sub_1D13908AC();

  v23 = [v1 collectionView];
  if (!v23)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v24 = v23;
  sub_1D138E71C();
  sub_1D13908CC();

  v25 = [v1 collectionView];
  if (!v25)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v26 = v25;
  sub_1D138EB6C();
  sub_1D13908CC();

  v27 = [v1 collectionView];
  if (!v27)
  {
LABEL_29:
    __break(1u);
    return;
  }

  sub_1D138E0AC();
  sub_1D13908AC();
}

id sub_1D127B518()
{
  v1 = [objc_allocWithZone(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:0 target:v0 action:sel_didTapDone_];
  sub_1D127F5D0(0, &qword_1EE06B560, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1D139EAB0;
  *(v2 + 32) = sub_1D139016C();
  *(v2 + 40) = v3;
  *(v2 + 48) = 0x746E756F636341;
  *(v2 + 56) = 0xE700000000000000;
  *(v2 + 64) = 1701736260;
  *(v2 + 72) = 0xE400000000000000;
  v4 = v1;
  v5 = sub_1D139044C();

  v6 = HKUIJoinStringsForAutomationIdentifier();

  [v4 setAccessibilityIdentifier_];
  v7 = *(v0 + qword_1EC60E798);
  *(v0 + qword_1EC60E798) = v4;
  v8 = v4;

  return v8;
}

void sub_1D127B668()
{
  v1 = v0;
  v0[qword_1EC60E7A0] = 1;
  v2 = [objc_allocWithZone(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:1 target:v0 action:sel_didTapCancel_];
  v3 = qword_1EC60E790;
  v4 = *&v0[qword_1EC60E790];
  *&v0[qword_1EC60E790] = v2;
  v5 = v2;

  if (v5)
  {
    [v5 setEnabled_];
  }

  v6 = *&v1[v3];
  if (v6)
  {
    v7 = v6;

    sub_1D138F6CC();

    v8 = [v13 isSharingToProvider];

    [v7 setHidden_];
  }

  v9 = [v1 navigationItem];
  v10 = *&v1[v3];
  [v9 setLeftBarButtonItem_];

  v11 = [v1 navigationItem];
  v12 = sub_1D127B518();
  [v11 setRightBarButtonItem_];
}

void sub_1D127B800(char a1)
{
  if (v1[qword_1EC60E7A0] == 1)
  {
    v3 = qword_1EC60E790;
    [*&v1[qword_1EC60E790] setEnabled_];
    v4 = *&v1[v3];
    if (v4)
    {
      v5 = v4;

      sub_1D138F6CC();

      v6 = [v14 isSharingToProvider];

      [v5 setHidden_];
    }
  }

  else
  {
    v7 = [v1 navigationItem];
    v8 = v7;
    if (a1)
    {
      if (qword_1EE06AD00 != -1)
      {
        swift_once();
      }

      sub_1D138D1CC();
      v9 = sub_1D139012C();

      [v8 setBackButtonTitle_];

      v13 = [v1 navigationItem];
      v10 = *&v1[qword_1EC60E798];
      if (v10)
      {
        v11 = *&v1[qword_1EC60E798];
      }

      else
      {
        v11 = sub_1D127B518();
        v10 = 0;
      }

      v12 = v10;
      [v13 setRightBarButtonItem_];
    }

    else
    {
      [v7 setBackButtonTitle_];

      v13 = [v1 navigationItem];
      [v13 setRightBarButtonItem_];
    }
  }
}

uint64_t sub_1D127BA50(void *a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = a1;
    swift_unknownObjectRetain();
    sub_1D139101C();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v10, 0, sizeof(v10));
    v5 = a1;
  }

  memset(v9, 0, sizeof(v9));
  sub_1D127BC18();

  v6 = MEMORY[0x1E69E7CA0];
  v7 = MEMORY[0x1E69E6720];
  sub_1D127EAF0(v9, &qword_1EE06A4A8, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720], sub_1D127F5D0);
  return sub_1D127EAF0(v10, &qword_1EE06A4A8, v6 + 8, v7, sub_1D127F5D0);
}

uint64_t sub_1D127BB2C()
{
  if (*(*(v0 + qword_1EC60E768) + 80))
  {

    sub_1D138E0FC();

    sub_1D1133088();
  }

  memset(v2, 0, sizeof(v2));
  sub_1D127BC18();
  return sub_1D127EAF0(v2, &qword_1EE06A4A8, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720], sub_1D127F5D0);
}

void sub_1D127BC18()
{
  v1 = [v0 navigationController];
  if (!v1)
  {
    return;
  }

  v21 = v1;
  v2 = [v1 viewControllers];
  sub_1D106F934(0, &unk_1EC6099E0);
  v3 = sub_1D139045C();

  if (v3 >> 62)
  {
    v4 = sub_1D13910DC();
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v4 == 1)
  {
    v5 = [v21 topViewController];
    if (v5)
    {
      v6 = v5;
      v7 = v0;
      v8 = sub_1D1390D8C();

      if (v8)
      {
        [v7 dismissViewControllerAnimated:1 completion:0];
LABEL_17:
        v14 = v21;
        goto LABEL_18;
      }
    }
  }

  v9 = [v21 topViewController];
  if (!v9 || (v10 = v9, v11 = v0, v12 = sub_1D1390D8C(), v10, v11, (v12 & 1) == 0))
  {
    v15 = [v0 presentingViewController];
    if (v15)
    {
      v16 = v15;
      v17 = [v15 presentedViewController];
      if (v17)
      {
        v18 = v17;
        v19 = v0;
        v20 = sub_1D1390D8C();

        if (v20)
        {
          [v19 dismissViewControllerAnimated:1 completion:0];
        }
      }
    }

    goto LABEL_17;
  }

  v13 = [v21 popViewControllerAnimated_];

  v14 = v13;
LABEL_18:
}

uint64_t sub_1D127BE78(void *a1, uint64_t a2, uint64_t a3, void (*a4)(id))
{
  if (a3)
  {
    v6 = a1;
    swift_unknownObjectRetain();
    sub_1D139101C();
    v7 = swift_unknownObjectRelease();
  }

  else
  {
    memset(v9, 0, sizeof(v9));
    v7 = a1;
  }

  a4(v7);

  return sub_1D127EAF0(v9, &qword_1EE06A4A8, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720], sub_1D127F5D0);
}

id sub_1D127BF30(uint64_t a1, uint64_t a2, SEL *a3)
{
  v4 = sub_1D138F20C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v18 - v9;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    v13 = [Strong _bridgedConfigurationState];

    sub_1D138F1FC();
    (*(v5 + 32))(v10, v7, v4);
    if (sub_1D138F1BC() & 1) != 0 || (sub_1D138F1CC())
    {
      sub_1D106F934(0, &qword_1EE06B6E0);
      v14 = sub_1D1390CDC();
    }

    else
    {
      v14 = [objc_opt_self() *a3];
    }

    v17 = v14;
    (*(v5 + 8))(v10, v4);
    return v17;
  }

  else
  {
    v15 = [objc_opt_self() clearColor];

    return v15;
  }
}

uint64_t sub_1D127C13C(void *a1, uint64_t a2, void *a3, void *a4)
{
  v7 = sub_1D138D82C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D138D7EC();
  v11 = a3;
  v12 = a4;
  v13 = a1;
  sub_1D127E650();

  return (*(v8 + 8))(v10, v7);
}

void sub_1D127C250(void *a1)
{
  v2 = sub_1D138D7DC();
  [a1 deselectItemAtIndexPath:v2 animated:1];

  v3 = sub_1D138D7DC();
  v4 = [a1 cellForItemAtIndexPath_];

  if (v4)
  {
    sub_1D138EC3C();
    sub_1D138E86C();
    sub_1D138E24C();

    sub_1D1072E70(v11, v8);
    sub_1D1080EA4(0, &qword_1EC60F6A0);
    sub_1D1080EA4(0, &unk_1EC60F6C0);
    if (swift_dynamicCast())
    {
      v5 = v6;
LABEL_6:
      sub_1D102CC18(v5, v10);
      __swift_project_boxed_opaque_existential_1Tm(v10, v10[3]);
      sub_1D138E41C();

      __swift_destroy_boxed_opaque_existential_1Tm(v11);
      __swift_destroy_boxed_opaque_existential_1Tm(v10);
      return;
    }

    v7 = 0;
    memset(v6, 0, sizeof(v6));
    sub_1D108B0C4(v6);
    *&v6[0] = v4;
    sub_1D106F934(0, &qword_1EC60F6D0);
    v4 = v4;
    if (swift_dynamicCast())
    {
      v5 = v8;
      goto LABEL_6;
    }

    v9 = 0;
    memset(v8, 0, sizeof(v8));
    __swift_destroy_boxed_opaque_existential_1Tm(v11);
    sub_1D108B0C4(v8);
  }
}

uint64_t sub_1D127C44C(void *a1, uint64_t a2, void *a3)
{
  v5 = sub_1D138D82C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D138D7EC();
  v9 = a3;
  v10 = a1;
  sub_1D127C250(v9);

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1D127C548(void *a1)
{
  sub_1D138EC3C();
  sub_1D138E86C();
  sub_1D138E24C();

  v2 = sub_1D138D7DC();
  v3 = [a1 cellForItemAtIndexPath_];

  sub_1D102CC18(&v9, &v6);
  sub_1D1080EA4(0, &qword_1EC60F6A0);
  sub_1D1080EA4(0, &unk_1EC60F6C0);
  if (!swift_dynamicCast())
  {
    if (v3)
    {
      v5[0] = v3;
      sub_1D106F934(0, &qword_1EC60F6D0);
      if (swift_dynamicCast())
      {
        v3 = *(&v7 + 1) != 0;
LABEL_8:
        sub_1D108B0C4(&v6);
        return v3;
      }

      v3 = 0;
    }

    v8 = 0;
    v6 = 0u;
    v7 = 0u;
    goto LABEL_8;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v5);
  return 1;
}

uint64_t sub_1D127C6B8(void *a1, uint64_t a2, void *a3)
{
  v5 = sub_1D138D82C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D138D7EC();
  v9 = a3;
  v10 = a1;
  LOBYTE(a1) = sub_1D127C548(v9);

  (*(v6 + 8))(v8, v5);
  return a1 & 1;
}

uint64_t sub_1D127C81C()
{
}

uint64_t sub_1D127C92C(uint64_t a1)
{
}

void sub_1D127CA34(uint64_t a1, uint64_t a2, char *a3)
{
  v47 = a3;
  v4 = sub_1D138D5EC();
  v50 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v49 = &v41 - v8;
  v9 = sub_1D138F0BC();
  v48 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a1;
  v13 = *(a1 + 8);
  v14 = *(a1 + 16);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v16 = Strong;
    if (v12)
    {
      v17 = v12;
      v18 = v13;
      sub_1D138F06C();
      sub_1D112F344(v12, v13);
      v19 = v17;
      v20 = v18;
      v21 = sub_1D138F0AC();
      v45 = sub_1D139081C();
      v22 = os_log_type_enabled(v21, v45);
      v46 = v14;
      if (v22)
      {
        v23 = swift_slowAlloc();
        v44 = v21;
        v24 = v23;
        v43 = swift_slowAlloc();
        v51 = v43;
        *v24 = 136446466;
        v52 = v47;
        swift_getMetatypeMetadata();
        v25 = sub_1D13901EC();
        v47 = v6;
        v27 = sub_1D11DF718(v25, v26, &v51);
        v42 = v9;
        v28 = v4;
        v29 = v13;
        v30 = v27;
        v6 = v47;

        *(v24 + 4) = v30;
        v13 = v29;
        v4 = v28;
        *(v24 + 12) = 2050;
        sub_1D1080A3C(v12, v13);
        *(v24 + 14) = v14;
        sub_1D1080A3C(v12, v13);
        v31 = v44;
        _os_log_impl(&dword_1D101F000, v44, v45, "[%{public}s]: account state did change (changeType: %{public}ld)", v24, 0x16u);
        v32 = v43;
        __swift_destroy_boxed_opaque_existential_1Tm(v43);
        MEMORY[0x1D38882F0](v32, -1, -1);
        MEMORY[0x1D38882F0](v24, -1, -1);

        (v48)[1](v11, v42);
      }

      else
      {
        sub_1D1080A3C(v12, v13);
        sub_1D1080A3C(v12, v13);

        (v48)[1](v11, v9);
      }

      v48 = v20;
      v33 = [v20 identifier];
      v34 = v49;
      sub_1D138D5CC();

      sub_1D138F6CC();

      v35 = v52;
      v36 = [v52 identifier];

      sub_1D138D5CC();
      LOBYTE(v35) = sub_1D138D5BC();
      v37 = *(v50 + 8);
      v37(v6, v4);
      v37(v34, v4);
      if ((v35 & 1) == 0)
      {

        sub_1D1080A3C(v12, v13);
        return;
      }

      if (v46 == 3)
      {
        v38 = v16;
        sub_1D127EB58(0, v38, v38);

        sub_1D1080A3C(v12, v13);
        return;
      }

      v39 = v48;
      v52 = v48;
      v53 = v46;

      v40 = v39;
      sub_1D138F6BC();

      sub_1D1080A3C(v12, v13);
    }
  }
}

void sub_1D127CEF4()
{
  sub_1D127E484(0, &qword_1EE06A650, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  *&v2 = MEMORY[0x1EEE9AC00](v1 - 8).n128_u64[0];
  v4 = &v37 - v3;
  v5 = [v0 navigationController];
  if (!v5)
  {
    return;
  }

  v38 = v5;
  v6 = [objc_opt_self() mainBundle];
  v7 = [v6 bundleIdentifier];

  if (!v7)
  {
    sub_1D139016C();
    goto LABEL_11;
  }

  v8 = sub_1D139016C();
  v10 = v9;

  v11 = sub_1D139016C();
  if (!v10)
  {
LABEL_11:

    goto LABEL_12;
  }

  if (v8 == v11 && v10 == v12)
  {

    goto LABEL_15;
  }

  v14 = sub_1D139162C();

  if ((v14 & 1) == 0)
  {
LABEL_12:
    memset(v39, 0, sizeof(v39));
    sub_1D127BC18();

    sub_1D127EAF0(v39, &qword_1EE06A4A8, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720], sub_1D127F5D0);
    return;
  }

LABEL_15:
  v15 = &off_1E83DF000;
  v16 = [v38 viewControllers];
  sub_1D106F934(0, &unk_1EC6099E0);
  v17 = sub_1D139045C();

  if (v17 >> 62)
  {
    goto LABEL_42;
  }

  v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_17:

  if (v18 == 1)
  {
    [v38 dismissViewControllerAnimated:1 completion:0];
    v19 = [v0 traitCollection];
    v20 = [v19 horizontalSizeClass];

    if (v20 == 2)
    {
      v21 = sub_1D13905DC();
      (*(*(v21 - 8) + 56))(v4, 1, 1, v21);
      sub_1D13905AC();
      v22 = sub_1D139059C();
      v23 = swift_allocObject();
      v24 = MEMORY[0x1E69E85E0];
      *(v23 + 16) = v22;
      *(v23 + 24) = v24;
      sub_1D107877C(0, 0, v4, &unk_1D13ACF10, v23);

      return;
    }
  }

  else
  {
    v25 = [v38 topViewController];
    if (v25)
    {
      v26 = v25;
      v27 = v0;
      v28 = sub_1D1390D8C();

      if (v28)
      {
        v29 = [v38 v15[208]];
        v4 = sub_1D139045C();

        v15 = (v4 & 0xFFFFFFFFFFFFFF8);
        if (v4 >> 62)
        {
          v0 = sub_1D13910DC();
        }

        else
        {
          v0 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v30 = 0;
        while (v0 != v30)
        {
          if ((v4 & 0xC000000000000001) != 0)
          {
            v31 = MEMORY[0x1D3886B70](v30, v4);
          }

          else
          {
            if (v30 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_41;
            }

            v31 = *(v4 + 8 * v30 + 32);
          }

          v32 = v31;
          if (__OFADD__(v30, 1))
          {
            __break(1u);
LABEL_41:
            __break(1u);
LABEL_42:
            v18 = sub_1D13910DC();
            goto LABEL_17;
          }

          type metadata accessor for MedicalRecordTimelineViewController();
          v33 = [v32 isKindOfClass_];

          ++v30;
          if (v33)
          {

            v35 = [v38 popToRootViewControllerAnimated_];
LABEL_36:

            goto LABEL_37;
          }
        }

        v35 = [v38 popViewControllerAnimated_];
        goto LABEL_36;
      }
    }

    v34 = [v0 presentingViewController];
    if (v34)
    {

      [v0 dismissViewControllerAnimated:1 completion:0];
    }
  }

LABEL_37:
  v36 = v38;
}

void sub_1D127D448(void *a1, void (*a2)(void), uint64_t a3)
{
  v4 = v3;
  v44 = a1;
  v45 = a3;
  v43 = a2;
  v5 = sub_1D138FECC();
  v41 = *(v5 - 8);
  v42 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D138FF0C();
  v39 = *(v8 - 8);
  v40 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1D138FF2C();
  v37 = *(v11 - 8);
  v38 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v36 - v15;
  v17 = sub_1D138FF3C();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = (&v36 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D106F934(0, &qword_1EE06B760);
  *v20 = sub_1D1390A7C();
  (*(v18 + 104))(v20, *MEMORY[0x1E69E8020], v17);
  v21 = sub_1D138FF5C();
  (*(v18 + 8))(v20, v17);
  if (v21)
  {
    v22 = qword_1EC60E738;
    v23 = *&v3[qword_1EC60E738];
    if (v23)
    {
      if (!*&v3[qword_1EC60E740])
      {
        goto LABEL_7;
      }

      [*&v3[qword_1EC60E740] timeIntervalSinceNow];
      if (v24 > 0.01)
      {
        v36 = sub_1D1390A7C();
        sub_1D138FF1C();
        sub_1D138FF4C();
        v25 = v38;
        v37 = *(v37 + 8);
        (v37)(v13, v38);
        v26 = swift_allocObject();
        v27 = v43;
        v28 = v44;
        v26[2] = v3;
        v26[3] = v28;
        v29 = v45;
        v26[4] = v27;
        v26[5] = v29;
        aBlock[4] = sub_1D127E440;
        aBlock[5] = v26;
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1D10CBD3C;
        aBlock[3] = &block_descriptor_53;
        v30 = _Block_copy(aBlock);
        v31 = v3;
        v32 = v28;

        sub_1D138FEEC();
        aBlock[0] = MEMORY[0x1E69E7CC0];
        sub_1D127EAA8(&qword_1EE06B7E0, MEMORY[0x1E69E7F60]);
        sub_1D127E484(0, &qword_1EE06B7C0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
        sub_1D1080CD4();
        v33 = v42;
        sub_1D139103C();
        v34 = v36;
        MEMORY[0x1D3886370](v16, v10, v7, v30);
        _Block_release(v30);

        (*(v41 + 8))(v7, v33);
        (*(v39 + 8))(v10, v40);
        (v37)(v16, v25);
LABEL_10:
        sub_1D127DFA0(v4);
        return;
      }

      v23 = *&v3[v22];
      if (!v23)
      {
        v35 = 0;
      }

      else
      {
LABEL_7:
        [v23 removeFromSuperview];
        v35 = *&v3[v22];
      }

      *&v3[v22] = 0;
    }

    v43(v44);
    goto LABEL_10;
  }

  __break(1u);
}

uint64_t sub_1D127D9A0()
{
  v0[2] = sub_1D13905AC();
  v0[3] = sub_1D139059C();
  v0[4] = sub_1D139059C();
  v1 = swift_task_alloc();
  v0[5] = v1;
  *v1 = v0;
  v1[1] = sub_1D127DA64;

  return sub_1D130871C(0xD000000000000018, 0x80000001D13C8BC0);
}

uint64_t sub_1D127DA64()
{

  v1 = sub_1D139055C();

  return MEMORY[0x1EEE6DFA0](sub_1D127DBA0, v1, v0);
}

uint64_t sub_1D127DBA0()
{

  v1 = sub_1D139055C();

  return MEMORY[0x1EEE6DFA0](sub_1D10AA4BC, v1, v0);
}

void sub_1D127DC24()
{
  if (*(*(v0 + qword_1EC60E768) + 80))
  {

    v1 = sub_1D138E0FC();

    v2 = qword_1EC60B560;
    swift_beginAccess();
    v3 = MEMORY[0x1E69E7CC0];
    *(v1 + v2) = MEMORY[0x1E69E7CC0];

    v4 = *(v1 + qword_1EC60B570);
    v5 = *(v4 + 16);
    *(v4 + 16) = v3;

    sub_1D133575C(v5);
  }
}

void sub_1D127DD00(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = sub_1D138FF3C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = (&v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D106F934(0, &qword_1EE06B760);
  *v9 = sub_1D1390A7C();
  (*(v7 + 104))(v9, *MEMORY[0x1E69E8020], v6);
  v10 = sub_1D138FF5C();
  (*(v7 + 8))(v9, v6);
  if ((v10 & 1) == 0)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return;
  }

  v11 = [objc_allocWithZone(MEMORY[0x1E695DF00]) initWithTimeIntervalSinceNow_];
  v12 = *&v3[qword_1EC60E740];
  *&v3[qword_1EC60E740] = v11;

  v13 = qword_1EC60E738;
  v14 = *&v3[qword_1EC60E738];
  if (v14)
  {
    [v14 removeFromSuperview];
  }

  v15 = objc_allocWithZone(type metadata accessor for HRProgressHUD());
  swift_unknownObjectWeakInit();
  v16 = sub_1D110519C(0, 0);
  v17 = *&v3[v13];
  *&v3[v13] = v16;
  v18 = v16;

  v19 = [v3 view];
  if (!v19)
  {
    goto LABEL_9;
  }

  v20 = v19;
  [v18 setAutoresizingMask_];
  v21 = &v18[OBJC_IVAR____TtC15HealthRecordsUI11ProgressHUD_text];
  *v21 = a1;
  *(v21 + 1) = a2;

  v22 = *&v18[OBJC_IVAR____TtC15HealthRecordsUI11ProgressHUD_progressMessageLabel];
  if (a2)
  {

    a2 = sub_1D139012C();
  }

  [v22 setText_];

  [v18 setNeedsLayout];
  [v20 addSubview_];
  [*&v18[OBJC_IVAR____TtC15HealthRecordsUI11ProgressHUD_progressIndicator] startAnimating];
}

void sub_1D127DFA0(uint64_t a1)
{
  v1 = *(a1 + qword_1EC60E790);
  if (v1)
  {
    v2 = v1;

    sub_1D138F6CC();

    v3 = [v4 isSharingToProvider];

    [v2 setHidden_];
  }

  sub_1D138F6CC();

  sub_1D11A4C3C(v4);
}

void sub_1D127E098(void *a1)
{
  v2 = v1;
  v10.receiver = v2;
  v10.super_class = type metadata accessor for HRProgressHUD();
  objc_msgSendSuper2(&v10, sel_willMoveToSuperview_, a1);
  v4 = [v2 superview];
  v5 = v4;
  if (a1)
  {
    if (v4)
    {
      sub_1D106F934(0, &qword_1EC609680);
      v6 = a1;
      v7 = sub_1D1390D8C();

      if (v7)
      {
        return;
      }
    }
  }

  else
  {
    if (!v4)
    {
      return;
    }
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    [Strong setUserInteractionEnabled_];
  }

  swift_unknownObjectWeakAssign();
}

id sub_1D127E204()
{
  v1 = [v0 superview];
  if (v1)
  {

    v2 = [v0 superview];
    v3 = [v2 window];

    swift_unknownObjectWeakAssign();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v5 = Strong;
      [Strong setUserInteractionEnabled_];
    }
  }

  v7.receiver = v0;
  v7.super_class = type metadata accessor for HRProgressHUD();
  return objc_msgSendSuper2(&v7, sel_didMoveToSuperview);
}

id sub_1D127E3D4(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t block_copy_helper_54(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_1D127E484(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1D127E4E8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1D108077C;

  return sub_1D127D9A0();
}

void sub_1D127E594()
{
  *(v0 + qword_1EC60E738) = 0;
  *(v0 + qword_1EC60E740) = 0;
  *(v0 + qword_1EC60E780) = 0;
  *(v0 + qword_1EC60E788) = 0;
  *(v0 + qword_1EC60E790) = 0;
  *(v0 + qword_1EC60E798) = 0;
  *(v0 + qword_1EC60E7A0) = 0;
  *(v0 + qword_1EC60E7A8) = 0;
  sub_1D13913BC();
  __break(1u);
}

uint64_t sub_1D127E650()
{
  v1 = v0;
  v2 = MEMORY[0x1E69E6720];
  sub_1D127E484(0, &qword_1EC6103F0, MEMORY[0x1E69DC0D8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v17 - v4;
  sub_1D127E484(0, &qword_1EC60CB60, MEMORY[0x1E69DC1B8], v2);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v17 - v7;
  v9 = sub_1D138F27C();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ClinicalSharingSelectableAuthorizationCategoryCell();
  if (swift_dynamicCastClass() || (sub_1D138E08C(), (result = swift_dynamicCastClass()) != 0))
  {
    sub_1D138F26C();
    v14 = [objc_opt_self() secondarySystemGroupedBackgroundColor];
    sub_1D138F23C();
    swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_1D138F4BC();
    v15 = sub_1D138F4AC();
    (*(*(v15 - 8) + 56))(v8, 0, 1, v15);
    sub_1D138F24C();
    (*(v10 + 16))(v5, v12, v9);
    (*(v10 + 56))(v5, 0, 1, v9);
    MEMORY[0x1D38864A0](v5);
    result = (*(v10 + 8))(v12, v9);
  }

  if (*(v1 + qword_1EC60E770) == 1)
  {
    type metadata accessor for AccountSourceCell();
    result = swift_dynamicCastClass();
    if (!result)
    {
      sub_1D138F26C();
      swift_allocObject();
      swift_unknownObjectWeakInit();
      sub_1D138F4BC();
      v16 = sub_1D138F4AC();
      (*(*(v16 - 8) + 56))(v8, 0, 1, v16);
      sub_1D138F24C();
      (*(v10 + 16))(v5, v12, v9);
      (*(v10 + 56))(v5, 0, 1, v9);
      MEMORY[0x1D38864A0](v5);
      return (*(v10 + 8))(v12, v9);
    }
  }

  return result;
}

uint64_t sub_1D127EAA8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D127EAF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5(0);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_1D127EB58(void *a1, char *a2, void *a3)
{
  v34 = a1;
  v5 = sub_1D138FECC();
  v40 = *(v5 - 8);
  v41 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v38 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_1D138FF0C();
  v37 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v36 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_1D138FF2C();
  v35 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v33 - v11;
  v13 = sub_1D138FF3C();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = (&v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = swift_allocObject();
  *(v17 + 16) = a3;
  sub_1D106F934(0, &qword_1EE06B760);
  a3;
  *v16 = sub_1D1390A7C();
  (*(v14 + 104))(v16, *MEMORY[0x1E69E8020], v13);
  v18 = sub_1D138FF5C();
  result = (*(v14 + 8))(v16, v13);
  if (v18)
  {
    v20 = qword_1EC60E738;
    v21 = *&a2[qword_1EC60E738];
    if (v21)
    {
      if (!*&a2[qword_1EC60E740])
      {
        goto LABEL_7;
      }

      [*&a2[qword_1EC60E740] timeIntervalSinceNow];
      if (v22 > 0.01)
      {
        v33 = sub_1D1390A7C();
        sub_1D138FF1C();
        sub_1D138FF4C();
        v35 = *(v35 + 8);
        (v35)(v9, v42);
        v23 = swift_allocObject();
        v24 = v34;
        v23[2] = a2;
        v23[3] = v24;
        v23[4] = sub_1D127F0FC;
        v23[5] = v17;
        aBlock[4] = sub_1D127F630;
        aBlock[5] = v23;
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1D10CBD3C;
        aBlock[3] = &block_descriptor_38;
        v25 = _Block_copy(aBlock);
        v26 = a2;
        v27 = v24;

        v28 = v36;
        sub_1D138FEEC();
        aBlock[0] = MEMORY[0x1E69E7CC0];
        sub_1D127EAA8(&qword_1EE06B7E0, MEMORY[0x1E69E7F60]);
        sub_1D127E484(0, &qword_1EE06B7C0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
        sub_1D1080CD4();
        v29 = v38;
        v30 = v41;
        sub_1D139103C();
        v31 = v33;
        MEMORY[0x1D3886370](v12, v28, v29, v25);
        _Block_release(v25);

        (*(v40 + 8))(v29, v30);
        (*(v37 + 8))(v28, v39);
        (v35)(v12, v42);
LABEL_10:
        sub_1D127DFA0(a2);
      }

      v21 = *&a2[v20];
      if (!v21)
      {
        v32 = 0;
      }

      else
      {
LABEL_7:
        [v21 removeFromSuperview];
        v32 = *&a2[v20];
      }

      *&a2[v20] = 0;
    }

    sub_1D127CEF4();
    goto LABEL_10;
  }

  __break(1u);
  return result;
}

uint64_t objectdestroyTm_10()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

void sub_1D127F168()
{
  if (!qword_1EC60E7F8)
  {
    sub_1D127F268();
    sub_1D106F934(255, &qword_1EE06B760);
    sub_1D127EAA8(&qword_1EC60E810, sub_1D127F268);
    sub_1D10809F0(&qword_1EE06A610, &qword_1EE06B760);
    v0 = sub_1D138F5FC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC60E7F8);
    }
  }
}

void sub_1D127F268()
{
  if (!qword_1EC60E800)
  {
    sub_1D127F2D0();
    v0 = sub_1D138F6DC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC60E800);
    }
  }
}

void sub_1D127F2D0()
{
  if (!qword_1EC60E808)
  {
    sub_1D106F934(255, &qword_1EC609A00);
    type metadata accessor for HKClinicalAccountStateChangeType(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC60E808);
    }
  }
}

void sub_1D127F350()
{
  if (!qword_1EC60E818)
  {
    sub_1D127F168();
    sub_1D106F934(255, &qword_1EC60E820);
    sub_1D127EAA8(&qword_1EC60E828, sub_1D127F168);
    sub_1D10809F0(&qword_1EC60E830, &qword_1EC60E820);
    v0 = sub_1D138F5AC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC60E818);
    }
  }
}

void sub_1D127F460()
{
  if (!qword_1EC60E848)
  {
    sub_1D127F5D0(255, &qword_1EC60E840, MEMORY[0x1E69E6370], MEMORY[0x1E695C060]);
    sub_1D106F934(255, &qword_1EE06B760);
    sub_1D127F554();
    sub_1D10809F0(&qword_1EE06A610, &qword_1EE06B760);
    v0 = sub_1D138F5FC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC60E848);
    }
  }
}

unint64_t sub_1D127F554()
{
  result = qword_1EC60E850;
  if (!qword_1EC60E850)
  {
    sub_1D127F5D0(255, &qword_1EC60E840, MEMORY[0x1E69E6370], MEMORY[0x1E695C060]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60E850);
  }

  return result;
}

void sub_1D127F5D0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

id WeakNotificationObserver.__allocating_init(forName:object:scheduler:center:block:)(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v13 = *(a3 + 24);
  v14 = *(a3 + 32);
  v15 = __swift_mutable_project_boxed_opaque_existential_1(a3, v13);
  v16 = sub_1D127FEAC(a1, a2, v15, a4, a5, a6, v6, v13, v14);

  __swift_destroy_boxed_opaque_existential_1Tm(a3);
  return v16;
}

id WeakNotificationObserver.init(forName:object:scheduler:center:block:)(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v14 = *(a3 + 24);
  v15 = *(a3 + 32);
  v16 = __swift_mutable_project_boxed_opaque_existential_1(a3, v14);
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = &v23 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v20 + 16))(v19, v17);
  v21 = sub_1D127FC4C(a1, a2, v19, a4, a5, a6, v7, v14, v15);

  __swift_destroy_boxed_opaque_existential_1Tm(a3);
  return v21;
}

id WeakNotificationObserver.__deallocating_deinit()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    [Strong removeObserver_];
  }

  v4.receiver = v0;
  v4.super_class = type metadata accessor for WeakNotificationObserver();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

void sub_1D127F968()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    [Strong removeObserver_];
  }
}

id WeakNotificationObserver.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id sub_1D127FC4C(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, char *a7, uint64_t a8, uint64_t a9)
{
  v36[3] = a8;
  v36[4] = a9;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v36);
  (*(*(a8 - 8) + 32))(boxed_opaque_existential_1, a3, a8);
  swift_unknownObjectWeakInit();
  sub_1D1072E70(v36, &a7[OBJC_IVAR____TtC15HealthRecordsUI24WeakNotificationObserver_scheduler]);
  v18 = &a7[OBJC_IVAR____TtC15HealthRecordsUI24WeakNotificationObserver_block];
  *v18 = a5;
  *(v18 + 1) = a6;
  swift_unknownObjectWeakAssign();
  v35.receiver = a7;
  v35.super_class = type metadata accessor for WeakNotificationObserver();

  v19 = objc_msgSendSuper2(&v35, sel_init);
  sub_1D1096B28(a2, v33);
  v20 = v34;
  if (v34)
  {
    v21 = __swift_project_boxed_opaque_existential_1Tm(v33, v34);
    v22 = *(v20 - 8);
    v23 = MEMORY[0x1EEE9AC00](v21);
    v25 = &v33[-1] - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v22 + 16))(v25, v23);
    v26 = v19;
    v27 = a1;
    v28 = sub_1D139161C();
    (*(v22 + 8))(v25, v20);
    __swift_destroy_boxed_opaque_existential_1Tm(v33);
  }

  else
  {
    v29 = v19;
    v30 = a1;
    v28 = 0;
  }

  [a4 addObserver:v19 selector:sel_didReceiveWithNotification_ name:a1 object:v28];

  swift_unknownObjectRelease();
  sub_1D1096BE0(a2);
  __swift_destroy_boxed_opaque_existential_1Tm(v36);
  return v19;
}

id sub_1D127FEAC(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v21 = a6;
  v15 = *(a8 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v17 = &v20 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = objc_allocWithZone(type metadata accessor for WeakNotificationObserver());
  (*(v15 + 16))(v17, a3, a8);
  return sub_1D127FC4C(a1, a2, v17, a4, a5, v21, v18, a8, a9);
}

id static UIAlertController.basicAlertController(title:message:)()
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = sub_1D139012C();
  v2 = sub_1D139012C();
  v3 = [ObjCClassFromMetadata basicAlertControllerWithTitle:v1 message:v2 internalError:0];

  return v3;
}

id sub_1D1280158(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = [a1 basicAlertControllerWithTitle:a3 message:a4 internalError:0];

  return v4;
}

id sub_1D1280198(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (a3)
  {
    v6 = sub_1D139016C();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v9 = sub_1D139016C();
  v11 = v10;
  v12 = a5;
  v13 = _sSo17UIAlertControllerC15HealthRecordsUIE010basicAlertB05title7message13internalErrorABSSSg_SSs0K0_pSgtFZ_0(v6, v8, v9, v11, a5);

  return v13;
}

id _sSo17UIAlertControllerC15HealthRecordsUIE010basicAlertB05title7message13internalErrorABSSSg_SSs0K0_pSgtFZ_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (!a5)
  {

    if (a2)
    {
      goto LABEL_7;
    }

LABEL_9:
    v13 = 0;
    goto LABEL_10;
  }

  v7 = objc_opt_self();

  v8 = a5;
  result = [v7 sharedBehavior];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v10 = result;
  v11 = [result isAppleInternalInstall];

  if (!v11)
  {

    if (a2)
    {
      goto LABEL_7;
    }

    goto LABEL_9;
  }

  MEMORY[0x1D3885C10](0xD000000000000012, 0x80000001D13C8CF0);
  swift_getErrorValue();
  v12 = sub_1D13916FC();
  MEMORY[0x1D3885C10](v12);

  if (!a2)
  {
    goto LABEL_9;
  }

LABEL_7:
  v13 = sub_1D139012C();
LABEL_10:
  v14 = sub_1D139012C();

  v15 = [objc_opt_self() alertControllerWithTitle:v13 message:v14 preferredStyle:1];

  if (qword_1EE06AD00 != -1)
  {
    swift_once();
  }

  sub_1D138D1CC();
  v16 = sub_1D139012C();

  v17 = [objc_opt_self() actionWithTitle:v16 style:0 handler:{0, 0xE000000000000000}];

  [v15 addAction_];
  return v15;
}

Swift::Int __swiftcall SettingsViewController.numberOfSections(in:)(UITableView *in)
{

  v2 = sub_1D115FCFC(v1);

  v3 = *(v2 + 16);

  return v3;
}

Swift::String_optional __swiftcall SettingsViewController.tableView(_:titleForHeaderInSection:)(UITableView *_, Swift::Int titleForHeaderInSection)
{
  v5 = OBJC_IVAR____TtC15HealthRecordsUI22SettingsViewController_accounts;

  v7 = sub_1D115FCFC(v6);

  if (titleForHeaderInSection < 0 || *(v7 + 16) <= titleForHeaderInSection)
  {

    v9 = 0;
    goto LABEL_9;
  }

  v8 = *(v7 + titleForHeaderInSection + 32);

  v9 = [v2 tableView:_ numberOfRowsInSection:titleForHeaderInSection];
  if (!v9)
  {
LABEL_9:
    v11 = 0;
    goto LABEL_12;
  }

  if (!v8)
  {
    v10 = *&v2[v5];
    if (v10 >> 62)
    {
      v9 = sub_1D13910DC();
      if (v9)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v9 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v9)
      {
        goto LABEL_7;
      }
    }

    goto LABEL_9;
  }

LABEL_7:
  v9 = sub_1D115F868(v8);
LABEL_12:
  result.value._object = v11;
  result.value._countAndFlagsBits = v9;
  return result;
}

Swift::String_optional __swiftcall SettingsViewController.tableView(_:titleForFooterInSection:)(UITableView *_, Swift::Int titleForFooterInSection)
{
  v2 = sub_1D1282454(titleForFooterInSection);
  result.value._object = v3;
  result.value._countAndFlagsBits = v2;
  return result;
}

void SettingsViewController.tableView(_:cellForRowAt:)(id a1, uint64_t a2)
{
  v3 = v2;

  v7 = sub_1D115FCFC(v6);

  v8 = sub_1D138D81C();
  if (v8 < 0 || v8 >= *(v7 + 16))
  {

    v14 = sub_1D139012C();
    v15 = HKErrorTableViewCell();

    if (!v15)
    {
      __break(1u);
LABEL_57:
      __break(1u);
    }
  }

  else
  {
    LODWORD(v9) = *(v7 + v8 + 32);

    if (v9 <= 2)
    {
      if (!v9)
      {
LABEL_38:

        sub_1D1281024();
        return;
      }

      if (v9 != 1)
      {
        v47 = *(v3 + OBJC_IVAR____TtC15HealthRecordsUI22SettingsViewController_appSourceModels);

        v11 = a2;
        v12 = v47;
        v13 = 1;
        goto LABEL_42;
      }

      v16 = sub_1D139012C();
      v17 = sub_1D138D7DC();
      v18 = [a1 dequeueReusableCellWithIdentifier:v16 forIndexPath:v17];

      v9 = &selRef_removeObserver_name_object_;
      v19 = [v18 textLabel];
      if (v19)
      {
        v20 = v19;
        if (qword_1EE06AD00 != -1)
        {
          swift_once();
        }

        sub_1D138D1CC();
        v21 = sub_1D139012C();

        [v20 setText_];
      }

      v22 = [v18 textLabel];
      if (v22)
      {
        v23 = v22;
        v24 = [objc_opt_self() systemBlueColor];
        [v23 setTextColor_];
      }

      v25 = [v18 textLabel];
      if (v25)
      {
        v26 = v25;
        [v25 setTextAlignment_];
      }

      v27 = [v18 textLabel];
      if (v27)
      {
        v28 = v27;
        [v27 setNumberOfLines_];
      }

      [v18 setAccessoryType_];
      a1 = v18;
      v29 = sub_1D139044C();
      v30 = HKUIJoinStringsForAutomationIdentifier();

      if (v30)
      {
        goto LABEL_52;
      }

      __break(1u);
    }

    else if (v9 <= 4)
    {
      if (v9 == 3)
      {
        v10 = *(v3 + OBJC_IVAR____TtC15HealthRecordsUI22SettingsViewController_researchStudySourceModels);

        v11 = a2;
        v12 = v10;
        v13 = 0;
LABEL_42:
        sub_1D1281778(v11, v12, v13);

        return;
      }

      v48 = sub_1D139012C();
      v49 = sub_1D138D7DC();
      v50 = [a1 dequeueReusableCellWithIdentifier:v48 forIndexPath:v49];

      v51 = [v50 textLabel];
      if (v51)
      {
        v52 = v51;
        if (qword_1EE06AD00 != -1)
        {
          swift_once();
        }

        sub_1D138D1CC();
        v53 = sub_1D139012C();

        [v52 setText_];
      }

      v54 = [v50 textLabel];
      if (v54)
      {
        v55 = v54;
        v56 = [objc_opt_self() labelColor];
        [v55 setTextColor_];
      }

      v57 = [v50 textLabel];
      if (v57)
      {
        v58 = v57;
        [v57 setTextAlignment_];
      }

      [v50 setAccessoryType_];
      a1 = v50;
      v59 = sub_1D139044C();
      v30 = HKUIJoinStringsForAutomationIdentifier();

      if (v30)
      {
        goto LABEL_52;
      }

      goto LABEL_57;
    }

    if (v9 == 5)
    {
      v31 = sub_1D139012C();
      v32 = sub_1D138D7DC();
      v33 = [a1 dequeueReusableCellWithIdentifier:v31 forIndexPath:v32];

      v34 = [v33 textLabel];
      if (v34)
      {
        v35 = v34;
        if (qword_1EE06AD00 != -1)
        {
          swift_once();
        }

        sub_1D138D1CC();
        v36 = sub_1D139012C();

        [v35 setText_];
      }

      v37 = [v33 textLabel];
      if (v37)
      {
        v38 = v37;
        v39 = [objc_opt_self() systemBlueColor];
        [v38 setTextColor_];
      }

      v40 = [v33 textLabel];
      if (v40)
      {
        v41 = v40;
        [v40 setTextAlignment_];
      }

      v42 = [v33 textLabel];
      if (v42)
      {
        v43 = v42;
        [v42 setNumberOfLines_];
      }

      v44 = [v33 textLabel];
      if (v44)
      {
        v45 = v44;
        [v44 setLineBreakMode_];
      }

      [v33 setAccessoryType_];
      a1 = v33;
      v46 = sub_1D139044C();
      v30 = HKUIJoinStringsForAutomationIdentifier();

      if (v30)
      {
LABEL_52:
        [a1 setAccessibilityIdentifier_];

        return;
      }

      __break(1u);
      goto LABEL_38;
    }

    sub_1D12824E0(a1);
  }
}

void sub_1D1281024()
{
  v1 = v0;
  if (v0[OBJC_IVAR____TtC15HealthRecordsUI22SettingsViewController_isLoadingAccounts] == 1)
  {
    v2 = [v0 tableView];
    if (v2)
    {
      v3 = v2;
      v4 = sub_1D139012C();
      v5 = sub_1D138D7DC();
      [v3 dequeueReusableCellWithIdentifier:v4 forIndexPath:v5];

      return;
    }

    __break(1u);
    goto LABEL_47;
  }

  v6 = OBJC_IVAR____TtC15HealthRecordsUI22SettingsViewController_accounts;
  v7 = *&v0[OBJC_IVAR____TtC15HealthRecordsUI22SettingsViewController_accounts];
  if (!(v7 >> 62))
  {
    if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_6;
    }

LABEL_22:
    v26 = [v0 tableView];
    if (!v26)
    {
LABEL_48:
      __break(1u);
      goto LABEL_49;
    }

    v27 = v26;
    v28 = sub_1D139012C();
    v29 = [v27 dequeueReusableCellWithIdentifier_];

    if (v29)
    {
      type metadata accessor for OnboardingTableViewCell(0);
      if (swift_dynamicCastClass())
      {
        return;
      }
    }

    v30 = *&v1[OBJC_IVAR____TtC15HealthRecordsUI22SettingsViewController_profile];
    v31 = type metadata accessor for OnboardingTableViewCell(0);
    v32 = objc_allocWithZone(v31);
    *&v32[qword_1EC60FD40] = v30;
    v33 = &v32[qword_1EC60FD48];
    *v33 = 0;
    *(v33 + 1) = 0;
    v34 = v30;
    v35 = sub_1D139012C();
    v58.receiver = v32;
    v58.super_class = v31;
    v36 = objc_msgSendSuper2(&v58, sel_initWithStyle_reuseIdentifier_, 0, v35);

    v37 = v36;
    sub_1D1359618();

    return;
  }

  if (!sub_1D13910DC())
  {
    goto LABEL_22;
  }

LABEL_6:
  v8 = sub_1D138D7FC();
  v9 = *&v0[v6];
  if (v9 >> 62)
  {
    if (v8 != sub_1D13910DC())
    {
LABEL_28:
      v38 = [v0 tableView];
      if (!v38)
      {
LABEL_47:
        __break(1u);
        goto LABEL_48;
      }

      v39 = v38;
      v40 = sub_1D139012C();
      v41 = sub_1D138D7DC();
      v42 = [v39 dequeueReusableCellWithIdentifier:v40 forIndexPath:v41];

      type metadata accessor for AccountTableViewCell();
      v43 = swift_dynamicCastClass();
      if (!v43)
      {

        v1 = sub_1D139012C();
        v46 = HKErrorTableViewCell();

        if (v46)
        {
          return;
        }

        __break(1u);
        goto LABEL_38;
      }

      v14 = v43;
      v44 = sub_1D138D7FC();
      v16 = *&v1[v6];
      if ((v16 & 0xC000000000000001) == 0)
      {
        if ((v44 & 0x8000000000000000) != 0)
        {
          __break(1u);
        }

        else if (v44 < *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v40 = *(v16 + 8 * v44 + 32);
          goto LABEL_34;
        }

        __break(1u);
        goto LABEL_45;
      }

      v57 = v44;

      v40 = MEMORY[0x1D3886B70](v57, v16);

LABEL_34:
      if (*&v1[OBJC_IVAR____TtC15HealthRecordsUI22SettingsViewController_accountsDisambiguator])
      {

        v45 = sub_1D124D634(v40);

LABEL_39:
        v47 = [*&v1[OBJC_IVAR____TtC15HealthRecordsUI22SettingsViewController_profile] clinicalSourcesDataProvider];
        strcpy(v60, "AccountCell.");
        BYTE5(v60[1]) = 0;
        HIWORD(v60[1]) = -5120;
        v59 = sub_1D138D7FC();
        v48 = sub_1D13915CC();
        MEMORY[0x1D3885C10](v48);

        v50 = v60[0];
        v49 = v60[1];
        sub_1D1086E1C();
        v51 = swift_allocObject();
        *(v51 + 16) = xmmword_1D139E710;
        *(v51 + 32) = 0xD000000000000015;
        *(v51 + 40) = 0x80000001D13B7540;
        *(v51 + 48) = v50;
        *(v51 + 56) = v49;

        v52 = sub_1D139044C();

        v53 = HKUIJoinStringsForAutomationIdentifier();

        if (!v53)
        {
LABEL_49:
          __break(1u);
          goto LABEL_50;
        }

        v54 = sub_1D139016C();
        v56 = v55;

        sub_1D1232D4C(v40, v45, v47, v54, v56, 0);

        return;
      }

LABEL_38:
      v45 = 0;
      goto LABEL_39;
    }
  }

  else if (v8 != *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_28;
  }

  if ((sub_1D112A290() & 1) == 0)
  {
    goto LABEL_28;
  }

  v10 = [v0 tableView];
  if (!v10)
  {
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
    return;
  }

  v11 = v10;
  v12 = sub_1D139012C();
  v13 = sub_1D138D7DC();
  v14 = [v11 dequeueReusableCellWithIdentifier:v12 forIndexPath:v13];

  type metadata accessor for AddAccountTableViewCell();
  v15 = swift_dynamicCastClass();
  if (v15)
  {
    v16 = v15;
    v17 = *&v1[v6];
    if (!(v17 >> 62))
    {
      v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_13;
    }

LABEL_45:
    v18 = sub_1D13910DC();
LABEL_13:
    *(v16 + OBJC_IVAR____TtC15HealthRecordsUI23AddAccountTableViewCell_alignWithAccountTitle) = v18 != 0;
    v19 = v14;
    v20 = [v16 imageView];
    v21 = v20;
    if (v18)
    {
      if (!v20)
      {
        goto LABEL_19;
      }

      v22 = [objc_opt_self() hk:28.0 transparentInterfaceImageWithSize:28.0];
      [v21 setImage_];

      v21 = v22;
    }

    else
    {
      if (!v20)
      {
        goto LABEL_19;
      }

      [v20 setImage_];
    }

LABEL_19:
    v23 = v19;
    v24 = sub_1D139044C();
    v25 = HKUIJoinStringsForAutomationIdentifier();

    if (v25)
    {
      [v16 setAccessibilityIdentifier_];

      return;
    }

    goto LABEL_51;
  }
}

void sub_1D1281778(uint64_t a1, unint64_t a2, char a3)
{
  if ([objc_opt_self() isMainThread])
  {
    if (*&v3[OBJC_IVAR____TtC15HealthRecordsUI22SettingsViewController_sourceLoadingToken])
    {
      v6 = [v3 tableView];
      if (v6)
      {
        v7 = v6;
        v8 = sub_1D139012C();
        v9 = sub_1D138D7DC();
        [v7 dequeueReusableCellWithIdentifier:v8 forIndexPath:v9];

        return;
      }

      goto LABEL_35;
    }

    if (!(a2 >> 62))
    {
      v10 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_7;
    }
  }

  else
  {
    __break(1u);
  }

  v10 = sub_1D13910DC();
LABEL_7:
  v11 = [v3 tableView];
  v12 = v11;
  if (v10)
  {
    if (!v11)
    {
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    v13 = sub_1D139012C();
    v14 = sub_1D138D7DC();
    v15 = [v12 dequeueReusableCellWithIdentifier:v13 forIndexPath:v14];

    type metadata accessor for SourceTableViewCell();
    v16 = swift_dynamicCastClass();
    if (v16)
    {
      v17 = v16;
      v18 = sub_1D138D7FC();
      if ((a2 & 0xC000000000000001) == 0)
      {
        if ((v18 & 0x8000000000000000) != 0)
        {
          __break(1u);
        }

        else if (v18 < *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v19 = *(a2 + 8 * v18 + 32);
          goto LABEL_14;
        }

        __break(1u);
LABEL_35:
        __break(1u);
        goto LABEL_36;
      }

      v19 = MEMORY[0x1D3886B70](v18, a2);
LABEL_14:
      v20 = *&v17[OBJC_IVAR___HRSourceTableViewCell_sourceModel];
      *&v17[OBJC_IVAR___HRSourceTableViewCell_sourceModel] = v19;
      v21 = v19;
      sub_1D12F206C(v20);

      if (a3)
      {
        v22 = 0x6C6C6543707041;
      }

      else
      {
        v22 = 0xD000000000000011;
      }

      if (a3)
      {
        v23 = 0xE700000000000000;
      }

      else
      {
        v23 = 0x80000001D13C8E40;
      }

      v24 = v15;
      MEMORY[0x1D3885C10](v22, v23);

      MEMORY[0x1D3885C10](46, 0xE100000000000000);
      sub_1D138D7FC();
      v25 = sub_1D13915CC();
      MEMORY[0x1D3885C10](v25);

      sub_1D1086E1C();
      v26 = swift_allocObject();
      *(v26 + 16) = xmmword_1D139E710;
      *(v26 + 32) = 0xD000000000000015;
      *(v26 + 40) = 0x80000001D13B7540;
      *(v26 + 48) = 0;
      *(v26 + 56) = 0xE000000000000000;

      v27 = sub_1D139044C();

      v28 = HKUIJoinStringsForAutomationIdentifier();

      if (v28)
      {

        [v17 setAccessibilityIdentifier_];

        return;
      }

      goto LABEL_37;
    }

    v38 = sub_1D139012C();
    v39 = HKErrorTableViewCell();

    if (!v39)
    {
LABEL_39:
      __break(1u);
    }
  }

  else
  {
    if (!v11)
    {
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v29 = sub_1D139012C();
    v30 = sub_1D138D7DC();
    v31 = [v12 dequeueReusableCellWithIdentifier:v29 forIndexPath:v30];

    v32 = [v31 textLabel];
    if (v32)
    {
      v33 = v32;
      sub_1D117194C(0x5F535050415F4F4ELL, 0xEF574F48535F4F54, a3 & 1, MEMORY[0x1E69E7CC0]);
      v34 = sub_1D139012C();

      [v33 setText_];
    }

    v35 = [v31 textLabel];
    if (v35)
    {
      v36 = v35;
      v37 = [objc_opt_self() secondaryLabelColor];
      [v36 setTextColor_];
    }

    [v31 setAccessoryType_];
  }
}

char *SettingsViewController.tableView(_:willDisplay:forRowAt:)(uint64_t a1, void *a2)
{
  sub_1D138E07C();
  if (swift_dynamicCastClass())
  {
    v4 = a2;
    v5 = v2;
    sub_1D138E05C();
  }

  type metadata accessor for LoadingTableViewCell();
  result = swift_dynamicCastClass();
  if (result)
  {
    v7 = *&result[OBJC_IVAR____TtC15HealthRecordsUI20LoadingTableViewCell_spinner];

    return [v7 startAnimating];
  }

  return result;
}

char *SettingsViewController.tableView(_:didEndDisplaying:forRowAt:)(uint64_t a1, void *a2)
{
  sub_1D138E07C();
  if (swift_dynamicCastClass())
  {
    v3 = a2;
    sub_1D138E05C();
  }

  type metadata accessor for LoadingTableViewCell();
  result = swift_dynamicCastClass();
  if (result)
  {
    v5 = *&result[OBJC_IVAR____TtC15HealthRecordsUI20LoadingTableViewCell_spinner];

    return [v5 stopAnimating];
  }

  return result;
}

uint64_t sub_1D12821DC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15HealthRecordsUI22SettingsViewController_accounts;

  v5 = sub_1D115FCFC(v4);

  if (a1 < 0 || *(v5 + 16) <= a1)
  {

    return 0;
  }

  v6 = *(v5 + a1 + 32);

  v7 = sub_1D112A290();
  result = 1;
  if (v6 > 2)
  {
    if ((v6 - 4) < 2)
    {
      return result;
    }

    if (v6 != 3)
    {
LABEL_27:
      if ([objc_opt_self() isAppleInternalInstall])
      {
        return 4;
      }

      else
      {
        return 0;
      }
    }

    result = [objc_opt_self() isMainThread];
    if (result)
    {
      if (*(v1 + OBJC_IVAR____TtC15HealthRecordsUI22SettingsViewController_sourceLoadingToken))
      {
        return 1;
      }

      v9 = &OBJC_IVAR____TtC15HealthRecordsUI22SettingsViewController_researchStudySourceModels;
      goto LABEL_16;
    }

    __break(1u);
    goto LABEL_34;
  }

  if (!v6)
  {
    result = v7 & 1;
    if (*(v1 + OBJC_IVAR____TtC15HealthRecordsUI22SettingsViewController_isLoadingAccounts))
    {
      return result;
    }

    v12 = *(v1 + v3);
    if (!(v12 >> 62))
    {
      if (!*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        return result;
      }

LABEL_23:
      v13 = *(v1 + v3);
      if (v13 >> 62)
      {
        v18 = result;
        v19 = sub_1D13910DC();
        v15 = __OFADD__(v19, v18);
        result = v19 + v18;
        if (!v15)
        {
          return result;
        }
      }

      else
      {
        v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v15 = __OFADD__(v14, result);
        result += v14;
        if (!v15)
        {
          return result;
        }
      }

      __break(1u);
      goto LABEL_27;
    }

LABEL_34:
    v16 = result;
    v17 = sub_1D13910DC();
    result = v16;
    if (!v17)
    {
      return result;
    }

    goto LABEL_23;
  }

  if (v6 == 1)
  {
    return result;
  }

  if (![objc_opt_self() isMainThread])
  {
    __break(1u);
    goto LABEL_31;
  }

  if (*(v1 + OBJC_IVAR____TtC15HealthRecordsUI22SettingsViewController_sourceLoadingToken))
  {
    return 1;
  }

  v9 = &OBJC_IVAR____TtC15HealthRecordsUI22SettingsViewController_appSourceModels;
LABEL_16:
  v6 = *v9;
  v10 = *(v1 + *v9);
  if (!(v10 >> 62))
  {
    if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_18;
    }

    return 1;
  }

LABEL_31:
  if (!sub_1D13910DC())
  {
    return 1;
  }

LABEL_18:
  v11 = *(v1 + v6);
  if (!(v11 >> 62))
  {
    return *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return sub_1D13910DC();
}

uint64_t sub_1D1282454(uint64_t a1)
{

  v3 = sub_1D115FCFC(v2);

  if (a1 < 0 || *(v3 + 16) <= a1)
  {

    return 0;
  }

  else
  {
    v4 = *(v3 + a1 + 32);

    return sub_1D115FA4C(v4);
  }
}

id sub_1D12824E0(id a1)
{
  v2 = sub_1D138D7FC();
  v3 = sub_1D115FDE8(v2);
  if (v3 != 4)
  {
LABEL_4:
    v5 = v3;
    v6 = sub_1D139012C();
    v7 = sub_1D138D7DC();
    a1 = [a1 dequeueReusableCellWithIdentifier:v6 forIndexPath:v7];

    v8 = [a1 textLabel];
    if (v8)
    {
      v9 = v8;
      v10 = [objc_opt_self() labelColor];
      [v9 setTextColor_];
    }

    v11 = [a1 textLabel];
    if (v11)
    {
      v12 = v11;
      [v11 setTextAlignment_];
    }

    [a1 setAccessibilityIdentifier_];
    v13 = [a1 textLabel];
    v14 = v13;
    if (v5 <= 1u)
    {
      if (!v5)
      {
        if (v13)
        {
          if ([objc_opt_self() isAppleInternalInstall])
          {
            v20 = 0x3A65646F4D204955;
            v21 = 0xE900000000000020;
            if (qword_1EC608EB0 != -1)
            {
              swift_once();
            }

            if (byte_1EC6101E8)
            {
              v15 = 0x7265656E69676E45;
            }

            else
            {
              v15 = 0x647261646E617453;
            }

            if (byte_1EC6101E8)
            {
              v16 = 0xEB00000000676E69;
            }

            else
            {
              v16 = 0xE800000000000000;
            }

            MEMORY[0x1D3885C10](v15, v16);

            v17 = sub_1D139012C();
          }

          else
          {
            v17 = 0;
          }

          v18 = 0;
          goto LABEL_36;
        }

        v18 = 0;
LABEL_37:
        [a1 setAccessoryType_];
        return a1;
      }

      if (v13)
      {
        if ([objc_opt_self() isAppleInternalInstall])
        {
          goto LABEL_30;
        }

LABEL_32:
        v17 = 0;
        v18 = 1;
        goto LABEL_36;
      }

LABEL_31:
      v18 = 1;
      goto LABEL_37;
    }

    if (v5 == 2)
    {
      if (!v13)
      {
        goto LABEL_31;
      }

      if (![objc_opt_self() isAppleInternalInstall])
      {
        goto LABEL_32;
      }
    }

    else
    {
      if (!v13)
      {
        goto LABEL_31;
      }

      if (![objc_opt_self() isAppleInternalInstall])
      {
        goto LABEL_32;
      }
    }

LABEL_30:
    v17 = sub_1D139012C();
    v18 = 1;
LABEL_36:
    [v14 setText_];

    goto LABEL_37;
  }

  v4 = sub_1D139012C();
  a1 = HKErrorTableViewCell();

  if (!a1)
  {
    __break(1u);
    goto LABEL_4;
  }

  return a1;
}

double sub_1D1282884()
{
  v0 = sub_1D139016C();
  v2 = v1;
  if (v0 == sub_1D139016C() && v2 == v3)
  {
    v6 = 0.82;
    goto LABEL_8;
  }

  v5 = sub_1D139162C();

  if ((v5 & 1) == 0)
  {
    v8 = sub_1D139016C();
    v10 = v9;
    if (v8 == sub_1D139016C() && v10 == v11)
    {
      v6 = 0.88;
    }

    else
    {
      v13 = sub_1D139162C();

      if (v13)
      {
        return 0.88;
      }

      v14 = sub_1D139016C();
      v16 = v15;
      if (v14 == sub_1D139016C() && v16 == v17)
      {
        v6 = 0.94;
      }

      else
      {
        v18 = sub_1D139162C();

        if (v18)
        {
          return 0.94;
        }

        v19 = sub_1D139016C();
        v21 = v20;
        if (v19 == sub_1D139016C())
        {
          v6 = 1.0;
          if (v21 == v22)
          {
            goto LABEL_8;
          }
        }

        v23 = sub_1D139162C();

        v6 = 1.0;
        if (v23)
        {
          return v6;
        }

        v24 = sub_1D139016C();
        v26 = v25;
        if (v24 == sub_1D139016C() && v26 == v27)
        {
          v6 = 1.12;
        }

        else
        {
          v28 = sub_1D139162C();

          if (v28)
          {
            return 1.12;
          }

          v29 = sub_1D139016C();
          v31 = v30;
          if (v29 == sub_1D139016C() && v31 == v32)
          {
            v6 = 1.24;
          }

          else
          {
            v33 = sub_1D139162C();

            if (v33)
            {
              return 1.24;
            }

            v34 = sub_1D139016C();
            v36 = v35;
            if (v34 == sub_1D139016C() && v36 == v37)
            {
              v6 = 1.35;
            }

            else
            {
              v38 = sub_1D139162C();

              if (v38)
              {
                return 1.35;
              }

              v39 = sub_1D139016C();
              v41 = v40;
              if (v39 == sub_1D139016C() && v41 == v42)
              {
                v6 = 1.62;
              }

              else
              {
                v43 = sub_1D139162C();

                if (v43)
                {
                  return 1.62;
                }

                v44 = sub_1D139016C();
                v46 = v45;
                if (v44 == sub_1D139016C() && v46 == v47)
                {
                  v48 = 0x3FFF333333333333;
                }

                else
                {
                  v49 = sub_1D139162C();

                  if (v49)
                  {
                    return 1.95;
                  }

                  v50 = sub_1D139016C();
                  v52 = v51;
                  if (v50 == sub_1D139016C() && v52 == v53)
                  {
                    v6 = 2.34;
                    goto LABEL_8;
                  }

                  v54 = sub_1D139162C();

                  if (v54)
                  {
                    return 2.34;
                  }

                  v55 = sub_1D139016C();
                  v57 = v56;
                  if (v55 == sub_1D139016C() && v57 == v58)
                  {
                    v6 = 2.74;
                    goto LABEL_8;
                  }

                  v59 = sub_1D139162C();

                  if (v59)
                  {
                    return 2.74;
                  }

                  v60 = sub_1D139016C();
                  v62 = v61;
                  if (v60 != sub_1D139016C() || v62 != v63)
                  {
                    sub_1D139162C();
                  }

                  v48 = 0x4009333333333333;
                }

                v6 = *&v48;
              }
            }
          }
        }
      }
    }

LABEL_8:

    return v6;
  }

  return 0.82;
}

uint64_t HKMedicalUserDomainConcept.localizedOntologyPreferredName.getter()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 preferredLocalizations];

  v2 = sub_1D139045C();
  countAndFlagsBits = HKMedicalUserDomainConcept.localizedOntologyPreferredName(given:)(v2)._countAndFlagsBits;

  return countAndFlagsBits;
}

Swift::String __swiftcall HKMedicalUserDomainConcept.localizedOntologyPreferredName(given:)(Swift::OpaquePointer given)
{
  v2 = [v1 ontologyPreferredName];
  if (!v2)
  {
    if (qword_1EE06AD00 != -1)
    {
      goto LABEL_17;
    }

    goto LABEL_4;
  }

  v3 = v2;
  v4 = sub_1D139016C();
  v6 = v5;

  while (1)
  {
    v8 = [v1 preferredNameByLocaleIdentifier];
    if (!v8)
    {
      break;
    }

    v9 = v8;
    v1 = sub_1D138FFFC();

    v10 = v1[2];
    if (!v10)
    {
      goto LABEL_9;
    }

    v29 = v6;
    v11 = v4;
    v12 = sub_1D129F730(v10, 0);
    v13 = sub_1D12A2F70(&v30, v12 + 4, v10, v1);

    sub_1D102CC30();
    if (v13 == v10)
    {
      v4 = v11;
      v6 = v29;
LABEL_9:
      v14 = objc_opt_self();
      v15 = sub_1D139044C();

      v16 = sub_1D139044C();
      v17 = [v14 preferredLocalizationsFromArray:v15 forPreferences:v16];

      v18 = sub_1D139045C();
      if (v18[2] && (v20 = v18[4], v19 = v18[5], , , v1[2]))
      {
        v21 = sub_1D11362EC(v20, v19);
        v23 = v22;

        if (v23)
        {

          v24 = (v1[7] + 16 * v21);
          v4 = *v24;
          v6 = v24[1];
        }
      }

      else
      {
      }

      break;
    }

    __break(1u);
LABEL_17:
    swift_once();
LABEL_4:
    v28 = 0xE000000000000000;
    v4 = sub_1D138D1CC();
    v6 = v7;
  }

  v25 = v4;
  v26 = v6;
  result._object = v26;
  result._countAndFlagsBits = v25;
  return result;
}

uint64_t sub_1D1283198(uint64_t a1, uint64_t a2, void *a3)
{
  *(a1 + OBJC_IVAR____TtC15HealthRecordsUI34MedicalRecordTimelinePanelItemCell_item) = *a3;
  swift_retain_n();

  sub_1D1283B14();
}

uint64_t sub_1D1283200()
{
  sub_1D116DEF0(v0 + OBJC_IVAR____TtC15HealthRecordsUI30MedicalRecordTimelinePanelItem_cellResolution);

  return swift_deallocClassInstance();
}

uint64_t sub_1D12832A8()
{
  result = sub_1D138DC8C();
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

uint64_t sub_1D1283350()
{
  v1 = *v0;
  sub_1D139177C();
  sub_1D139027C();
  v2 = *(v1 + 16);
  sub_1D1390D9C();

  return sub_1D13917CC();
}

void sub_1D12833BC()
{
  v1 = *v0;
  sub_1D139027C();
  v2 = *(v1 + 16);
  sub_1D1390D9C();
}

uint64_t sub_1D128342C()
{
  sub_1D139177C();
  v1 = *v0;
  sub_1D139027C();
  v2 = *(v1 + 16);
  sub_1D1390D9C();

  return sub_1D13917CC();
}

uint64_t sub_1D1283494()
{
  v1 = sub_1D138D5EC();
  v2 = *(v1 - 8);
  *&v3 = MEMORY[0x1EEE9AC00](v1).n128_u64[0];
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [*(*v0 + 16) UUID];
  sub_1D138D5CC();

  v7 = sub_1D138D59C();
  v9 = v8;
  (*(v2 + 8))(v5, v1);
  v11[0] = 0x2E6C656E6150;
  v11[1] = 0xE600000000000000;
  MEMORY[0x1D3885C10](v7, v9);

  return v11[0];
}

id sub_1D12835DC(double a1, double a2, double a3, double a4)
{
  sub_1D118C4F4(0, &qword_1EC6103F0, MEMORY[0x1E69DC0D8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v23 - v10;
  v12 = sub_1D138F20C();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v4[OBJC_IVAR____TtC15HealthRecordsUI34MedicalRecordTimelinePanelItemCell_item] = 0;
  v16 = OBJC_IVAR____TtC15HealthRecordsUI34MedicalRecordTimelinePanelItemCell_sectionContext;
  v17 = sub_1D138DF1C();
  (*(*(v17 - 8) + 56))(&v4[v16], 1, 1, v17);
  v18 = type metadata accessor for MedicalRecordTimelinePanelItemCell(0);
  v23.receiver = v4;
  v23.super_class = v18;
  v19 = objc_msgSendSuper2(&v23, sel_initWithFrame_, a1, a2, a3, a4);
  sub_1D138D84C();
  sub_1D1390C8C();
  v20 = [objc_opt_self() currentTraitCollection];
  sub_1D138F1DC();
  sub_1D133DBE4();
  v21 = sub_1D138F27C();
  (*(*(v21 - 8) + 56))(v11, 0, 1, v21);
  MEMORY[0x1D38864A0](v11);

  (*(v13 + 8))(v15, v12);
  return v19;
}

id sub_1D128387C(void *a1)
{
  sub_1D118C4F4(0, &qword_1EC6103F0, MEMORY[0x1E69DC0D8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v19 - v4;
  v6 = sub_1D138F20C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v1[OBJC_IVAR____TtC15HealthRecordsUI34MedicalRecordTimelinePanelItemCell_item] = 0;
  v10 = OBJC_IVAR____TtC15HealthRecordsUI34MedicalRecordTimelinePanelItemCell_sectionContext;
  v11 = sub_1D138DF1C();
  (*(*(v11 - 8) + 56))(&v1[v10], 1, 1, v11);
  v12 = type metadata accessor for MedicalRecordTimelinePanelItemCell(0);
  v19.receiver = v1;
  v19.super_class = v12;
  v13 = objc_msgSendSuper2(&v19, sel_initWithCoder_, a1);
  if (v13)
  {
    v14 = v13;
    v15 = v13;
    sub_1D138D84C();
    sub_1D1390C8C();
    v16 = [objc_opt_self() currentTraitCollection];
    sub_1D138F1DC();
    sub_1D133DBE4();
    v17 = sub_1D138F27C();
    (*(*(v17 - 8) + 56))(v5, 0, 1, v17);
    MEMORY[0x1D38864A0](v5);

    (*(v7 + 8))(v9, v6);
    return v14;
  }

  else
  {

    return 0;
  }
}

id sub_1D1283B14()
{
  sub_1D118C4F4(0, &qword_1EC60A060, MEMORY[0x1E69DBF38], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v25 = &v22 - v2;
  v3 = sub_1D138F15C();
  v26 = *(v3 - 8);
  v27 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v24 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D138F0FC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1D138F3FC();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = v0;
  MEMORY[0x1D38864F0](v11);
  if (qword_1EE06AD00 != -1)
  {
    swift_once();
  }

  sub_1D138D1CC();
  sub_1D138F3BC();
  result = [objc_opt_self() _preferredFontForTextStyle_weight_];
  if (result)
  {
    v15 = sub_1D138F2FC();
    sub_1D138F2CC();
    v15(v29, 0);
    v16 = [objc_opt_self() labelColor];
    v17 = sub_1D138F2FC();
    sub_1D138F2DC();
    v17(v29, 0);
    v29[3] = v9;
    v29[4] = MEMORY[0x1E69DC110];
    v23 = v9;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v29);
    (*(v10 + 16))(boxed_opaque_existential_1, v13, v9);
    MEMORY[0x1D3886480](v29);
    sub_1D118C4F4(0, &qword_1EC60A058, MEMORY[0x1E69DBF68], MEMORY[0x1E69E6F90]);
    sub_1D138F17C();
    *(swift_allocObject() + 16) = xmmword_1D139E700;
    v19 = v8;
    (*(v6 + 104))(v8, *MEMORY[0x1E69DBF28], v5);
    v20 = sub_1D138F10C();
    (*(*(v20 - 8) + 56))(v25, 1, 1, v20);
    v21 = v24;
    sub_1D138F14C();
    sub_1D138F11C();
    (*(v26 + 8))(v21, v27);
    (*(v6 + 8))(v19, v5);
    sub_1D1390B8C();
    return (*(v10 + 8))(v13, v23);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D1284150()
{
  v1 = v0;
  v2 = sub_1D138D82C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D118C4F4(0, &qword_1EC60A840, MEMORY[0x1E69A3588], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v20 - v7;
  v9 = sub_1D138DF1C();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtC15HealthRecordsUI34MedicalRecordTimelinePanelItemCell_sectionContext;
  swift_beginAccess();
  sub_1D118C460(v1 + v13, v8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1D10DCA4C(v8);
  }

  (*(v10 + 32))(v12, v8, v9);
  sub_1D138DF0C();
  v21 = 0;
  v22 = 0xE000000000000000;
  sub_1D13911EC();
  v15 = sub_1D139016C();
  v17 = v16;

  v21 = v15;
  v22 = v17;
  MEMORY[0x1D3885C10](0xD000000000000011, 0x80000001D13C02A0);
  v20 = sub_1D138D81C();
  v18 = sub_1D13915CC();
  MEMORY[0x1D3885C10](v18);

  MEMORY[0x1D3885C10](0x74496C656E61502ELL, 0xEA00000000006D65);
  v19 = sub_1D139012C();

  [v1 setAccessibilityIdentifier_];

  (*(v3 + 8))(v5, v2);
  return (*(v10 + 8))(v12, v9);
}

id sub_1D1284490()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MedicalRecordTimelinePanelItemCell(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1D128453C()
{
  sub_1D118C4F4(319, &qword_1EC60A840, MEMORY[0x1E69A3588], MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1D1284630@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC15HealthRecordsUI34MedicalRecordTimelinePanelItemCell_sectionContext;
  swift_beginAccess();
  return sub_1D118C460(v1 + v3, a1);
}

uint64_t sub_1D1284688(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15HealthRecordsUI34MedicalRecordTimelinePanelItemCell_sectionContext;
  swift_beginAccess();
  sub_1D10DCAC4(a1, v1 + v3);
  swift_endAccess();
  sub_1D1284150();
  return sub_1D10DCA4C(a1);
}

uint64_t (*sub_1D12846F4(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1D1284758;
}

uint64_t sub_1D1284758(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return sub_1D1284150();
  }

  return result;
}

void sub_1D12847D4(void *a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC15HealthRecordsUI34MedicalRecordTimelinePanelItemCell_item);
  if (v2)
  {
    v4 = qword_1EE06AF70;

    if (v4 != -1)
    {
      v5 = swift_once();
    }

    MEMORY[0x1EEE9AC00](v5);
    sub_1D138D96C();
    sub_1D106F934(0, &qword_1EE06B6B0);
    sub_1D12849A4(&qword_1EE06B048, MEMORY[0x1E69A3B50]);

    sub_1D138ED0C();

    if (qword_1EE069ED0 != -1)
    {
      swift_once();
    }

    v6 = *(v2 + 16);
    sub_1D1299750(v6, a1, v7);
  }
}

uint64_t sub_1D12849A4(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_1D12849EC(void *a1)
{
  v1 = [a1 note];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1D139016C();
  v5 = v4;

  v6 = sub_1D139032C();
  v7 = sub_1D133D580(v3, v5, v6 & 1);
  v9 = v8;

  v10 = HIBYTE(v9) & 0xF;
  if ((v9 & 0x2000000000000000) == 0)
  {
    v10 = v7 & 0xFFFFFFFFFFFFLL;
  }

  if (!v10)
  {

    return 0;
  }

  v11 = [objc_allocWithZone(WDMedicalRecordDisplayItem) init];
  [v11 setDisplayItemType_];
  if (qword_1EE06AD00 != -1)
  {
    swift_once();
  }

  sub_1D138D1CC();
  v12 = sub_1D139012C();

  [v11 setTitle_];

  v13 = sub_1D139012C();

  [v11 setSubtitle_];

  [v11 setSeparatorStyle_];
  [v11 setSeparatorHidden_];
  [v11 setExtraTopPadding_];

  return v11;
}

id MedicalRecordFormatter.__allocating_init(store:context:)(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  *&v5[OBJC_IVAR___HRMedicalRecordFormatter_store] = a1;
  *&v5[OBJC_IVAR___HRMedicalRecordFormatter_context] = a2;
  v7.receiver = v5;
  v7.super_class = v2;
  return objc_msgSendSuper2(&v7, sel_init);
}

uint64_t sub_1D1284C58(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = sub_1D138F0BC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  objc_opt_self();
  v8 = swift_dynamicCastObjCClass();
  if (v8)
  {

    return sub_1D1285194(v8);
  }

  objc_opt_self();
  v10 = swift_dynamicCastObjCClass();
  if (v10)
  {
    v11 = v10;
    v12 = *&v1[OBJC_IVAR___HRMedicalRecordFormatter_store];
    v13 = *&v1[OBJC_IVAR___HRMedicalRecordFormatter_context];
    v14 = type metadata accessor for CoverageRecordFormatter();
    v15 = objc_allocWithZone(v14);
    *&v15[OBJC_IVAR____TtC15HealthRecordsUI23CoverageRecordFormatter____lazy_storage___classificationFormatter] = 0;
    *&v15[OBJC_IVAR____TtC15HealthRecordsUI23CoverageRecordFormatter____lazy_storage___identifierFormatter] = 0;
    *&v15[OBJC_IVAR____TtC15HealthRecordsUI23CoverageRecordFormatter_store] = v12;
    *&v15[OBJC_IVAR____TtC15HealthRecordsUI23CoverageRecordFormatter_context] = v13;
    v37.receiver = v15;
    v37.super_class = v14;
    v16 = v12;
    v17 = objc_msgSendSuper2(&v37, sel_init);
    v18 = sub_1D1165790(v11);

    return v18;
  }

  objc_opt_self();
  v19 = swift_dynamicCastObjCClass();
  if (v19)
  {

    return sub_1D128539C(v19);
  }

  else
  {
    objc_opt_self();
    v20 = swift_dynamicCastObjCClass();
    if (v20)
    {

      return sub_1D12854DC(v20);
    }

    else
    {
      objc_opt_self();
      v21 = swift_dynamicCastObjCClass();
      if (!v21)
      {
        sub_1D138F06C();
        v22 = v1;
        v23 = a1;
        v24 = sub_1D138F0AC();
        v25 = sub_1D139081C();

        if (os_log_type_enabled(v24, v25))
        {
          v26 = swift_slowAlloc();
          v27 = swift_slowAlloc();
          v38 = ObjectType;
          v39 = v27;
          *v26 = 136315394;
          swift_getMetatypeMetadata();
          v28 = sub_1D13901EC();
          v30 = sub_1D11DF718(v28, v29, &v39);

          *(v26 + 4) = v30;
          *(v26 + 12) = 2080;
          v31 = [v23 sampleType];
          v32 = [v31 identifier];

          v33 = sub_1D139016C();
          v35 = v34;

          v36 = sub_1D11DF718(v33, v35, &v39);

          *(v26 + 14) = v36;
          _os_log_impl(&dword_1D101F000, v24, v25, "%s: not generating structured items for sampleType %s", v26, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x1D38882F0](v27, -1, -1);
          MEMORY[0x1D38882F0](v26, -1, -1);
        }

        (*(v5 + 8))(v7, v4);
        return MEMORY[0x1E69E7CC0];
      }

      return sub_1D128561C(v21);
    }
  }
}

id sub_1D12850EC(void *a1, uint64_t a2, void *a3, void (*a4)(id), uint64_t a5, uint64_t a6, void (*a7)(void, uint64_t, uint64_t))
{
  v12 = a3;
  v13 = a1;
  a4(v12);

  a7(0, a5, a6);
  v14 = sub_1D139044C();

  return v14;
}

uint64_t sub_1D1285194(void *a1)
{
  v3 = *(v1 + OBJC_IVAR___HRMedicalRecordFormatter_store);
  v4 = *(v1 + OBJC_IVAR___HRMedicalRecordFormatter_context);
  v5 = type metadata accessor for AllergyRecordFormatter();
  v6 = objc_allocWithZone(v5);
  *&v6[OBJC_IVAR____TtC15HealthRecordsUI22AllergyRecordFormatter____lazy_storage___reactionFormatter] = 0;
  *&v6[OBJC_IVAR____TtC15HealthRecordsUI22AllergyRecordFormatter_store] = v3;
  *&v6[OBJC_IVAR____TtC15HealthRecordsUI22AllergyRecordFormatter_context] = v4;
  v15.receiver = v6;
  v15.super_class = v5;
  v7 = v3;
  v8 = objc_msgSendSuper2(&v15, sel_init);
  v9 = [a1 reactions];
  if (v9)
  {
    v10 = v9;
    sub_1D106F934(0, &qword_1EC60C4B8);
    v11 = sub_1D139045C();

    v12 = sub_1D118E9A4();
    v13 = sub_1D12279F8(v11);
  }

  else
  {
    v13 = MEMORY[0x1E69E7CC0];
  }

  return v13;
}

uint64_t sub_1D12852D8(void *a1)
{
  v3 = *(v1 + OBJC_IVAR___HRMedicalRecordFormatter_store);
  v4 = *(v1 + OBJC_IVAR___HRMedicalRecordFormatter_context);
  v5 = type metadata accessor for CoverageRecordFormatter();
  v6 = objc_allocWithZone(v5);
  *&v6[OBJC_IVAR____TtC15HealthRecordsUI23CoverageRecordFormatter____lazy_storage___classificationFormatter] = 0;
  *&v6[OBJC_IVAR____TtC15HealthRecordsUI23CoverageRecordFormatter____lazy_storage___identifierFormatter] = 0;
  *&v6[OBJC_IVAR____TtC15HealthRecordsUI23CoverageRecordFormatter_store] = v3;
  *&v6[OBJC_IVAR____TtC15HealthRecordsUI23CoverageRecordFormatter_context] = v4;
  v11.receiver = v6;
  v11.super_class = v5;
  v7 = v3;
  v8 = objc_msgSendSuper2(&v11, sel_init);
  v9 = sub_1D1165790(a1);

  return v9;
}

uint64_t sub_1D128539C(void *a1)
{
  v3 = *(v1 + OBJC_IVAR___HRMedicalRecordFormatter_store);
  v4 = *(v1 + OBJC_IVAR___HRMedicalRecordFormatter_context);
  v5 = type metadata accessor for MedicationRecordFormatter();
  v6 = objc_allocWithZone(v5);
  *&v6[OBJC_IVAR____TtC15HealthRecordsUI25MedicationRecordFormatter____lazy_storage___dosagesFormatter] = 0;
  *&v6[OBJC_IVAR____TtC15HealthRecordsUI25MedicationRecordFormatter_store] = v3;
  *&v6[OBJC_IVAR____TtC15HealthRecordsUI25MedicationRecordFormatter_context] = v4;
  v14.receiver = v6;
  v14.super_class = v5;
  v7 = v3;
  v8 = objc_msgSendSuper2(&v14, sel_init);
  v9 = [a1 dosages];
  if (v9)
  {
    v10 = v9;
    sub_1D106F934(0, &qword_1EC60B110);
    sub_1D139045C();

    v11 = sub_1D126EE80();
    v12 = sub_1D11B8F68();
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  return v12;
}

uint64_t sub_1D12854DC(void *a1)
{
  v3 = *(v1 + OBJC_IVAR___HRMedicalRecordFormatter_store);
  v4 = *(v1 + OBJC_IVAR___HRMedicalRecordFormatter_context);
  v5 = type metadata accessor for MedicationOrderFormatter();
  v6 = objc_allocWithZone(v5);
  *&v6[OBJC_IVAR____TtC15HealthRecordsUI24MedicationOrderFormatter____lazy_storage___dosagesFormatter] = 0;
  *&v6[OBJC_IVAR____TtC15HealthRecordsUI24MedicationOrderFormatter_store] = v3;
  *&v6[OBJC_IVAR____TtC15HealthRecordsUI24MedicationOrderFormatter_context] = v4;
  v14.receiver = v6;
  v14.super_class = v5;
  v7 = v3;
  v8 = objc_msgSendSuper2(&v14, sel_init);
  v9 = [a1 dosages];
  if (v9)
  {
    v10 = v9;
    sub_1D106F934(0, &qword_1EC60B110);
    sub_1D139045C();

    v11 = sub_1D1196A00();
    v12 = sub_1D11B8F68();
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  return v12;
}

uint64_t sub_1D128561C(void *a1)
{
  v3 = *(v1 + OBJC_IVAR___HRMedicalRecordFormatter_store);
  v4 = *(v1 + OBJC_IVAR___HRMedicalRecordFormatter_context);
  v5 = type metadata accessor for MedicationDispenseFormatter();
  v6 = objc_allocWithZone(v5);
  *&v6[OBJC_IVAR___HRMedicationDispenseFormatter____lazy_storage___dosagesFormatter] = 0;
  *&v6[OBJC_IVAR___HRMedicationDispenseFormatter_store] = v3;
  *&v6[OBJC_IVAR___HRMedicationDispenseFormatter_context] = v4;
  v14.receiver = v6;
  v14.super_class = v5;
  v7 = v3;
  v8 = objc_msgSendSuper2(&v14, sel_init);
  v9 = [a1 dosages];
  if (v9)
  {
    v10 = v9;
    sub_1D106F934(0, &qword_1EC60B110);
    sub_1D139045C();

    v11 = sub_1D1351038();
    v12 = sub_1D11B8F68();
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  return v12;
}

uint64_t sub_1D128575C(void *a1)
{
  v3 = *(v1 + OBJC_IVAR___HRMedicalRecordFormatter_store);
  v4 = *(v1 + OBJC_IVAR___HRMedicalRecordFormatter_context);
  v5 = type metadata accessor for AllergyRecordFormatter();
  v6 = objc_allocWithZone(v5);
  *&v6[OBJC_IVAR____TtC15HealthRecordsUI22AllergyRecordFormatter____lazy_storage___reactionFormatter] = 0;
  *&v6[OBJC_IVAR____TtC15HealthRecordsUI22AllergyRecordFormatter_store] = v3;
  *&v6[OBJC_IVAR____TtC15HealthRecordsUI22AllergyRecordFormatter_context] = v4;
  v13.receiver = v6;
  v13.super_class = v5;
  v7 = v3;
  v8 = objc_msgSendSuper2(&v13, sel_init);
  v9 = *&v8[OBJC_IVAR____TtC15HealthRecordsUI22AllergyRecordFormatter_context];
  if (v9 == 1)
  {
    v10 = sub_1D118EA74(a1);
LABEL_5:
    v11 = v10;

    return v11;
  }

  if (!v9)
  {
    v10 = sub_1D118F1F8(a1);
    goto LABEL_5;
  }

  result = sub_1D139169C();
  __break(1u);
  return result;
}

uint64_t sub_1D1285860(void *a1)
{
  v3 = *(v1 + OBJC_IVAR___HRMedicalRecordFormatter_store);
  v4 = *(v1 + OBJC_IVAR___HRMedicalRecordFormatter_context);
  v5 = type metadata accessor for ClinicalNoteRecordFormatter();
  v6 = objc_allocWithZone(v5);
  *&v6[OBJC_IVAR____TtC15HealthRecordsUI27ClinicalNoteRecordFormatter_store] = v3;
  *&v6[OBJC_IVAR____TtC15HealthRecordsUI27ClinicalNoteRecordFormatter_context] = v4;
  v13.receiver = v6;
  v13.super_class = v5;
  v7 = v3;
  v8 = objc_msgSendSuper2(&v13, sel_init);
  v9 = *&v8[OBJC_IVAR____TtC15HealthRecordsUI27ClinicalNoteRecordFormatter_context];
  if (v9 == 1)
  {
    v10 = sub_1D13142BC(a1);
LABEL_5:
    v11 = v10;

    return v11;
  }

  if (!v9)
  {
    v10 = sub_1D1314088(a1);
    goto LABEL_5;
  }

  result = sub_1D139169C();
  __break(1u);
  return result;
}

uint64_t sub_1D1285958(void *a1)
{
  v3 = *(v1 + OBJC_IVAR___HRMedicalRecordFormatter_store);
  v4 = *(v1 + OBJC_IVAR___HRMedicalRecordFormatter_context);
  v5 = type metadata accessor for ConditionRecordFormatter();
  v6 = objc_allocWithZone(v5);
  *&v6[OBJC_IVAR____TtC15HealthRecordsUI24ConditionRecordFormatter_store] = v3;
  *&v6[OBJC_IVAR____TtC15HealthRecordsUI24ConditionRecordFormatter_context] = v4;
  v13.receiver = v6;
  v13.super_class = v5;
  v7 = v3;
  v8 = objc_msgSendSuper2(&v13, sel_init);
  v9 = *&v8[OBJC_IVAR____TtC15HealthRecordsUI24ConditionRecordFormatter_context];
  if (v9 == 1)
  {
    v10 = sub_1D1107C78(a1);
LABEL_5:
    v11 = v10;

    return v11;
  }

  if (!v9)
  {
    v10 = sub_1D1107980(a1);
    goto LABEL_5;
  }

  result = sub_1D139169C();
  __break(1u);
  return result;
}

uint64_t sub_1D1285A50(void *a1)
{
  v3 = *(v1 + OBJC_IVAR___HRMedicalRecordFormatter_store);
  v4 = *(v1 + OBJC_IVAR___HRMedicalRecordFormatter_context);
  v5 = type metadata accessor for CoverageRecordFormatter();
  v6 = objc_allocWithZone(v5);
  *&v6[OBJC_IVAR____TtC15HealthRecordsUI23CoverageRecordFormatter____lazy_storage___classificationFormatter] = 0;
  *&v6[OBJC_IVAR____TtC15HealthRecordsUI23CoverageRecordFormatter____lazy_storage___identifierFormatter] = 0;
  *&v6[OBJC_IVAR____TtC15HealthRecordsUI23CoverageRecordFormatter_store] = v3;
  *&v6[OBJC_IVAR____TtC15HealthRecordsUI23CoverageRecordFormatter_context] = v4;
  v13.receiver = v6;
  v13.super_class = v5;
  v7 = v3;
  v8 = objc_msgSendSuper2(&v13, sel_init);
  v9 = *&v8[OBJC_IVAR____TtC15HealthRecordsUI23CoverageRecordFormatter_context];
  if (v9 == 1)
  {
    v10 = sub_1D11663E0(a1);
LABEL_5:
    v11 = v10;

    return v11;
  }

  if (!v9)
  {
    v10 = sub_1D1166258(a1);
    goto LABEL_5;
  }

  result = sub_1D139169C();
  __break(1u);
  return result;
}

uint64_t sub_1D1285B60(void *a1)
{
  v3 = *(v1 + OBJC_IVAR___HRMedicalRecordFormatter_store);
  v4 = *(v1 + OBJC_IVAR___HRMedicalRecordFormatter_context);
  v5 = type metadata accessor for DiagnosticTestReportFormatter();
  v6 = objc_allocWithZone(v5);
  *&v6[OBJC_IVAR____TtC15HealthRecordsUI29DiagnosticTestReportFormatter_store] = v3;
  *&v6[OBJC_IVAR____TtC15HealthRecordsUI29DiagnosticTestReportFormatter_context] = v4;
  v13.receiver = v6;
  v13.super_class = v5;
  v7 = v3;
  v8 = objc_msgSendSuper2(&v13, sel_init);
  v9 = *&v8[OBJC_IVAR____TtC15HealthRecordsUI29DiagnosticTestReportFormatter_context];
  if (v9 == 1)
  {
    v10 = sub_1D125166C(a1);
LABEL_5:
    v11 = v10;

    return v11;
  }

  if (!v9)
  {
    v10 = sub_1D1250B74(a1);
    goto LABEL_5;
  }

  result = sub_1D139169C();
  __break(1u);
  return result;
}

uint64_t sub_1D1285C58(void *a1)
{
  v3 = *(v1 + OBJC_IVAR___HRMedicalRecordFormatter_store);
  v4 = *(v1 + OBJC_IVAR___HRMedicalRecordFormatter_context);
  v5 = type metadata accessor for DiagnosticTestResultFormatter();
  v6 = objc_allocWithZone(v5);
  *&v6[OBJC_IVAR____TtC15HealthRecordsUI29DiagnosticTestResultFormatter_store] = v3;
  *&v6[OBJC_IVAR____TtC15HealthRecordsUI29DiagnosticTestResultFormatter_context] = v4;
  v12.receiver = v6;
  v12.super_class = v5;
  v7 = v3;
  v8 = objc_msgSendSuper2(&v12, sel_init);
  if (*&v8[OBJC_IVAR____TtC15HealthRecordsUI29DiagnosticTestResultFormatter_context] >= 2uLL)
  {
    result = sub_1D139169C();
    __break(1u);
  }

  else
  {
    v9 = v8;
    v10 = sub_1D10CCA90(a1);

    return v10;
  }

  return result;
}

uint64_t sub_1D1285D40(void *a1)
{
  v3 = *(v1 + OBJC_IVAR___HRMedicalRecordFormatter_store);
  v4 = *(v1 + OBJC_IVAR___HRMedicalRecordFormatter_context);
  v5 = type metadata accessor for MedicationRecordFormatter();
  v6 = objc_allocWithZone(v5);
  *&v6[OBJC_IVAR____TtC15HealthRecordsUI25MedicationRecordFormatter____lazy_storage___dosagesFormatter] = 0;
  *&v6[OBJC_IVAR____TtC15HealthRecordsUI25MedicationRecordFormatter_store] = v3;
  *&v6[OBJC_IVAR____TtC15HealthRecordsUI25MedicationRecordFormatter_context] = v4;
  v13.receiver = v6;
  v13.super_class = v5;
  v7 = v3;
  v8 = objc_msgSendSuper2(&v13, sel_init);
  v9 = *&v8[OBJC_IVAR____TtC15HealthRecordsUI25MedicationRecordFormatter_context];
  if (v9 == 1)
  {
    v10 = sub_1D126EF50(a1);
LABEL_5:
    v11 = v10;

    return v11;
  }

  if (!v9)
  {
    v10 = sub_1D126FC50(a1);
    goto LABEL_5;
  }

  result = sub_1D139169C();
  __break(1u);
  return result;
}

uint64_t sub_1D1285E44(void *a1)
{
  v3 = *(v1 + OBJC_IVAR___HRMedicalRecordFormatter_store);
  v4 = *(v1 + OBJC_IVAR___HRMedicalRecordFormatter_context);
  v5 = type metadata accessor for MedicationOrderFormatter();
  v6 = objc_allocWithZone(v5);
  *&v6[OBJC_IVAR____TtC15HealthRecordsUI24MedicationOrderFormatter____lazy_storage___dosagesFormatter] = 0;
  *&v6[OBJC_IVAR____TtC15HealthRecordsUI24MedicationOrderFormatter_store] = v3;
  *&v6[OBJC_IVAR____TtC15HealthRecordsUI24MedicationOrderFormatter_context] = v4;
  v13.receiver = v6;
  v13.super_class = v5;
  v7 = v3;
  v8 = objc_msgSendSuper2(&v13, sel_init);
  v9 = *&v8[OBJC_IVAR____TtC15HealthRecordsUI24MedicationOrderFormatter_context];
  if (v9 == 1)
  {
    v10 = sub_1D1196AD0(a1);
LABEL_5:
    v11 = v10;

    return v11;
  }

  if (!v9)
  {
    v10 = sub_1D1199030(a1);
    goto LABEL_5;
  }

  result = sub_1D139169C();
  __break(1u);
  return result;
}

uint64_t sub_1D1285F48(void *a1)
{
  v3 = *(v1 + OBJC_IVAR___HRMedicalRecordFormatter_store);
  v4 = *(v1 + OBJC_IVAR___HRMedicalRecordFormatter_context);
  v5 = type metadata accessor for MedicationDispenseFormatter();
  v6 = objc_allocWithZone(v5);
  *&v6[OBJC_IVAR___HRMedicationDispenseFormatter____lazy_storage___dosagesFormatter] = 0;
  *&v6[OBJC_IVAR___HRMedicationDispenseFormatter_store] = v3;
  *&v6[OBJC_IVAR___HRMedicationDispenseFormatter_context] = v4;
  v13.receiver = v6;
  v13.super_class = v5;
  v7 = v3;
  v8 = objc_msgSendSuper2(&v13, sel_init);
  v9 = *&v8[OBJC_IVAR___HRMedicationDispenseFormatter_context];
  if (v9 == 1)
  {
    v10 = sub_1D13519A8(a1);
LABEL_5:
    v11 = v10;

    return v11;
  }

  if (!v9)
  {
    v10 = sub_1D1351628(a1);
    goto LABEL_5;
  }

  result = sub_1D139169C();
  __break(1u);
  return result;
}

uint64_t sub_1D128604C(void *a1)
{
  v3 = *(v1 + OBJC_IVAR___HRMedicalRecordFormatter_store);
  v4 = *(v1 + OBJC_IVAR___HRMedicalRecordFormatter_context);
  v5 = type metadata accessor for ProcedureRecordFormatter();
  v6 = objc_allocWithZone(v5);
  *&v6[OBJC_IVAR____TtC15HealthRecordsUI24ProcedureRecordFormatter_store] = v3;
  *&v6[OBJC_IVAR____TtC15HealthRecordsUI24ProcedureRecordFormatter_context] = v4;
  v13.receiver = v6;
  v13.super_class = v5;
  v7 = v3;
  v8 = objc_msgSendSuper2(&v13, sel_init);
  v9 = *&v8[OBJC_IVAR____TtC15HealthRecordsUI24ProcedureRecordFormatter_context];
  if (v9 == 1)
  {
    v10 = sub_1D1382468(a1);
LABEL_5:
    v11 = v10;

    return v11;
  }

  if (!v9)
  {
    v10 = sub_1D13822BC(a1);
    goto LABEL_5;
  }

  result = sub_1D139169C();
  __break(1u);
  return result;
}

uint64_t sub_1D1286144(void *a1)
{
  v3 = *(v1 + OBJC_IVAR___HRMedicalRecordFormatter_store);
  v4 = *(v1 + OBJC_IVAR___HRMedicalRecordFormatter_context);
  v5 = type metadata accessor for VaccinationRecordFormatter();
  v6 = objc_allocWithZone(v5);
  *&v6[OBJC_IVAR____TtC15HealthRecordsUI26VaccinationRecordFormatter_store] = v3;
  *&v6[OBJC_IVAR____TtC15HealthRecordsUI26VaccinationRecordFormatter_context] = v4;
  v13.receiver = v6;
  v13.super_class = v5;
  v7 = v3;
  v8 = objc_msgSendSuper2(&v13, sel_init);
  v9 = *&v8[OBJC_IVAR____TtC15HealthRecordsUI26VaccinationRecordFormatter_context];
  if (v9 == 1)
  {
    v10 = sub_1D1202DBC(a1);
LABEL_5:
    v11 = v10;

    return v11;
  }

  if (!v9)
  {
    v10 = sub_1D1202BE8(a1);
    goto LABEL_5;
  }

  result = sub_1D139169C();
  __break(1u);
  return result;
}

id MedicalRecordFormatter.init(store:context:)(uint64_t a1, uint64_t a2)
{
  *&v2[OBJC_IVAR___HRMedicalRecordFormatter_store] = a1;
  *&v2[OBJC_IVAR___HRMedicalRecordFormatter_context] = a2;
  v4.receiver = v2;
  v4.super_class = type metadata accessor for MedicalRecordFormatter();
  return objc_msgSendSuper2(&v4, sel_init);
}

uint64_t sub_1D128630C(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = sub_1D138F0BC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  objc_opt_self();
  v8 = swift_dynamicCastObjCClass();
  if (v8)
  {

    return sub_1D128575C(v8);
  }

  else
  {
    objc_opt_self();
    v10 = swift_dynamicCastObjCClass();
    if (v10)
    {

      return sub_1D1285860(v10);
    }

    else
    {
      objc_opt_self();
      v11 = swift_dynamicCastObjCClass();
      if (v11)
      {

        return sub_1D1285B60(v11);
      }

      else
      {
        objc_opt_self();
        v12 = swift_dynamicCastObjCClass();
        if (v12)
        {

          return sub_1D1285C58(v12);
        }

        else
        {
          objc_opt_self();
          v13 = swift_dynamicCastObjCClass();
          if (v13)
          {

            return sub_1D1285958(v13);
          }

          else
          {
            objc_opt_self();
            v14 = swift_dynamicCastObjCClass();
            if (v14)
            {

              return sub_1D1285D40(v14);
            }

            else
            {
              objc_opt_self();
              v15 = swift_dynamicCastObjCClass();
              if (v15)
              {

                return sub_1D1285E44(v15);
              }

              else
              {
                objc_opt_self();
                v16 = swift_dynamicCastObjCClass();
                if (v16)
                {

                  return sub_1D1285F48(v16);
                }

                else
                {
                  objc_opt_self();
                  v17 = swift_dynamicCastObjCClass();
                  if (v17)
                  {

                    return sub_1D128604C(v17);
                  }

                  else
                  {
                    objc_opt_self();
                    v18 = swift_dynamicCastObjCClass();
                    if (v18)
                    {

                      return sub_1D1286144(v18);
                    }

                    else
                    {
                      objc_opt_self();
                      v19 = swift_dynamicCastObjCClass();
                      if (v19)
                      {

                        return sub_1D1285A50(v19);
                      }

                      else
                      {
                        sub_1D138F06C();
                        v20 = v1;
                        v21 = a1;
                        v22 = sub_1D138F0AC();
                        v23 = sub_1D13907FC();

                        if (os_log_type_enabled(v22, v23))
                        {
                          v24 = swift_slowAlloc();
                          v38[0] = swift_slowAlloc();
                          v38[1] = ObjectType;
                          v39 = v38[0];
                          *v24 = 136315394;
                          swift_getMetatypeMetadata();
                          v25 = sub_1D13901EC();
                          v27 = sub_1D11DF718(v25, v26, &v39);

                          *(v24 + 4) = v27;
                          *(v24 + 12) = 2080;
                          v28 = [v21 sampleType];
                          v29 = [v28 identifier];

                          v30 = sub_1D139016C();
                          v32 = v31;

                          v33 = sub_1D11DF718(v30, v32, &v39);

                          *(v24 + 14) = v33;
                          _os_log_impl(&dword_1D101F000, v22, v23, "%s: missing display item formatter for sampleType identifier:%s", v24, 0x16u);
                          v34 = v38[0];
                          swift_arrayDestroy();
                          MEMORY[0x1D38882F0](v34, -1, -1);
                          MEMORY[0x1D38882F0](v24, -1, -1);
                        }

                        (*(v5 + 8))(v7, v4);
                        v35 = sub_1D12849EC(v21);
                        v40 = v35;
                        v36 = MEMORY[0x1E69E7CC0];
                        v39 = MEMORY[0x1E69E7CC0];
                        if (v35)
                        {
                          v37 = v35;
                          MEMORY[0x1D3885D90]();
                          if (*((v39 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v39 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                          {
                            sub_1D13904BC();
                          }

                          sub_1D13904FC();
                          v36 = v39;
                        }

                        sub_1D1166490(&v40);
                        return v36;
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

uint64_t sub_1D12869C4(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR___HRMedicalRecordFormatter_store);
  v4 = *(v1 + OBJC_IVAR___HRMedicalRecordFormatter_context);
  v5 = type metadata accessor for SignedClinicalDataRecordFormatter();
  v6 = objc_allocWithZone(v5);
  *&v6[OBJC_IVAR____TtC15HealthRecordsUI33SignedClinicalDataRecordFormatter_store] = v3;
  *&v6[OBJC_IVAR____TtC15HealthRecordsUI33SignedClinicalDataRecordFormatter_context] = v4;
  v15.receiver = v6;
  v15.super_class = v5;
  v7 = v3;
  v8 = objc_msgSendSuper2(&v15, sel_init);
  v14 = MEMORY[0x1E69E7CC0];
  v9 = [*(a1 + OBJC_IVAR____TtC15HealthRecordsUI30SignedClinicalDataGroupContext_group) mainRecord];
  if (!v9)
  {
    goto LABEL_4;
  }

  if (*&v8[OBJC_IVAR____TtC15HealthRecordsUI33SignedClinicalDataRecordFormatter_context] < 2uLL)
  {
    v10 = v9;
    v11 = sub_1D124C754(v9);
    sub_1D11220E0(v11);

LABEL_4:
    v12 = sub_1D124C920(a1);
    sub_1D11220E0(v12);

    return v14;
  }

  result = sub_1D139169C();
  __break(1u);
  return result;
}

uint64_t sub_1D1286AF8(void *a1)
{
  v3 = *(v1 + OBJC_IVAR___HRMedicalRecordFormatter_store);
  v4 = *(v1 + OBJC_IVAR___HRMedicalRecordFormatter_context);
  v5 = type metadata accessor for SignedClinicalDataRecordFormatter();
  v6 = objc_allocWithZone(v5);
  *&v6[OBJC_IVAR____TtC15HealthRecordsUI33SignedClinicalDataRecordFormatter_store] = v3;
  *&v6[OBJC_IVAR____TtC15HealthRecordsUI33SignedClinicalDataRecordFormatter_context] = v4;
  v11.receiver = v6;
  v11.super_class = v5;
  v7 = v3;
  v8 = objc_msgSendSuper2(&v11, sel_init);
  v9 = sub_1D1249FD0(a1);

  return v9;
}

id MedicalRecordFormatter.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id MedicalRecordFormatter.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MedicalRecordFormatter();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_1D1286CA0(uint64_t a1)
{
  result = sub_1D1286CC8();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1D1286CC8()
{
  result = qword_1EC60E8B8;
  if (!qword_1EC60E8B8)
  {
    type metadata accessor for MedicalRecordFormatter();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60E8B8);
  }

  return result;
}

uint64_t dispatch thunk of MedicalRecordFormatter.structuredItems(from:)()
{
  return (*((*MEMORY[0x1E69E7D40] & *v0) + 0x60))();
}

{
  return (*((*MEMORY[0x1E69E7D40] & *v0) + 0x68))();
}

{
  return (*((*MEMORY[0x1E69E7D40] & *v0) + 0x70))();
}

{
  return (*((*MEMORY[0x1E69E7D40] & *v0) + 0x78))();
}

{
  return (*((*MEMORY[0x1E69E7D40] & *v0) + 0x80))();
}

{
  return (*((*MEMORY[0x1E69E7D40] & *v0) + 0x88))();
}

uint64_t dispatch thunk of MedicalRecordFormatter.displayItems(from:)()
{
  return (*((*MEMORY[0x1E69E7D40] & *v0) + 0x90))();
}

{
  return (*((*MEMORY[0x1E69E7D40] & *v0) + 0x98))();
}

{
  return (*((*MEMORY[0x1E69E7D40] & *v0) + 0xA0))();
}

{
  return (*((*MEMORY[0x1E69E7D40] & *v0) + 0xA8))();
}

{
  return (*((*MEMORY[0x1E69E7D40] & *v0) + 0xB0))();
}

{
  return (*((*MEMORY[0x1E69E7D40] & *v0) + 0xB8))();
}

{
  return (*((*MEMORY[0x1E69E7D40] & *v0) + 0xC0))();
}

{
  return (*((*MEMORY[0x1E69E7D40] & *v0) + 0xC8))();
}

{
  return (*((*MEMORY[0x1E69E7D40] & *v0) + 0xD0))();
}

{
  return (*((*MEMORY[0x1E69E7D40] & *v0) + 0xD8))();
}

{
  return (*((*MEMORY[0x1E69E7D40] & *v0) + 0xE0))();
}

{
  return (*((*MEMORY[0x1E69E7D40] & *v0) + 0xF0))();
}

void *ConceptsDataSource.init(arrangedSections:isHidden:)(uint64_t a1, int a2)
{
  v18 = a2;
  v17 = a1;
  sub_1D1287448(0, &qword_1EE069700, MEMORY[0x1E69A35F8]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v17 - v6;
  v8 = sub_1D138D5EC();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2[3] = 0;
  v2[4] = 0;
  v19[0] = 0;
  v19[1] = 0xE000000000000000;
  sub_1D13911EC();

  strcpy(v19, "MutableArray<");
  HIWORD(v19[1]) = -4864;
  sub_1D138D5DC();
  v12 = sub_1D138D59C();
  v14 = v13;
  (*(v9 + 8))(v11, v8);
  MEMORY[0x1D3885C10](v12, v14);

  MEMORY[0x1D3885C10](62, 0xE100000000000000);
  sub_1D138E5BC();
  swift_allocObject();
  sub_1D138E56C();
  v15 = MEMORY[0x1E69A35E8];
  if ((v18 & 1) == 0)
  {
    v15 = MEMORY[0x1E69A35F0];
  }

  (*(v5 + 104))(v7, *v15, v4);
  sub_1D1287448(0, &qword_1EE0696F8, MEMORY[0x1E69A3608]);
  swift_allocObject();
  v2[2] = sub_1D138E17C();
  return v2;
}

void sub_1D1287448(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, void))
{
  if (!*a2)
  {
    v6 = sub_1D138E5BC();
    v7 = a3(a1, v6, MEMORY[0x1E69A3698]);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t ConceptsDataSource.deinit()
{

  return v0;
}

uint64_t sub_1D12874D8()
{
  v1 = v0;
  v2 = sub_1D138D5EC();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v1 + 32))
  {
    v6 = *(v1 + 24);
  }

  else
  {
    v13 = 0;
    v14 = 0xE000000000000000;
    sub_1D138D5DC();
    v7 = sub_1D138D59C();
    v9 = v8;
    (*(v3 + 8))(v5, v2);
    MEMORY[0x1D3885C10](v7, v9);

    MEMORY[0x1D3885C10](95, 0xE100000000000000);
    v12[1] = v1;
    sub_1D139133C();
    v6 = v13;
    v10 = v14;
    *(v1 + 24) = v13;
    *(v1 + 32) = v10;
  }

  return v6;
}

uint64_t sub_1D1287648(uint64_t a1, uint64_t a2)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
}

uint64_t (*sub_1D1287658(uint64_t *a1))(void *a1)
{
  a1[2] = v1;
  *a1 = sub_1D12874D8();
  a1[1] = v3;
  return sub_1D12876A0;
}

uint64_t sub_1D12876A0(void *a1)
{
  v2 = a1[1];
  v1 = a1[2];
  *(v1 + 24) = *a1;
  *(v1 + 32) = v2;
}

uint64_t sub_1D12876B4()
{
  sub_1D1287448(0, &qword_1EE069700, MEMORY[0x1E69A35F8]);
  v1 = v0;
  v2 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v11 - v6;
  sub_1D138E14C();
  (*(v2 + 104))(v4, *MEMORY[0x1E69A35E8], v1);
  sub_1D138E5BC();
  v8 = sub_1D138E11C();
  v9 = *(v2 + 8);
  v9(v4, v1);
  v9(v7, v1);
  return v8 & 1;
}

uint64_t sub_1D1287820(char a1)
{
  v39 = *v1;
  v3 = sub_1D138F0BC();
  v41 = *(v3 - 8);
  v42 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v44 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x1E69A35F8];
  sub_1D1287448(0, &qword_1EE069700, MEMORY[0x1E69A35F8]);
  v7 = v6;
  v8 = *(v6 - 8);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v43 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v36 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v36 - v14;
  v16 = MEMORY[0x1E69A35E8];
  if ((a1 & 1) == 0)
  {
    v16 = MEMORY[0x1E69A35F0];
  }

  (*(v8 + 104))(&v36 - v14, *v16, v7);
  sub_1D138E14C();
  sub_1D128834C(&qword_1EC60E8C0, &qword_1EE069700, v5);
  v17 = sub_1D139011C();
  v18 = *(v8 + 8);
  v18(v13, v7);
  if ((v17 & 1) == 0)
  {
    sub_1D138F06C();
    v40 = *(v8 + 16);
    v40(v43, v15, v7);

    v19 = sub_1D138F0AC();
    v20 = sub_1D13907DC();

    v38 = v20;
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v45 = v37;
      *v21 = 136446722;
      v22 = sub_1D139184C();
      v36 = v19;
      v24 = sub_1D11DF718(v22, v23, &v45);

      *(v21 + 4) = v24;
      *(v21 + 12) = 2082;
      sub_1D138E14C();
      v25 = sub_1D13901EC();
      v27 = sub_1D11DF718(v25, v26, &v45);

      *(v21 + 14) = v27;
      *(v21 + 22) = 2082;
      v39 = v18;
      v28 = v43;
      v40(v13, v43, v7);
      v29 = sub_1D13901EC();
      v31 = v30;
      v18 = v39;
      v39(v28, v7);
      v32 = sub_1D11DF718(v29, v31, &v45);

      *(v21 + 24) = v32;
      v33 = v36;
      _os_log_impl(&dword_1D101F000, v36, v38, "[%{public}s] Changing visibility %{public}s -> %{public}s", v21, 0x20u);
      v34 = v37;
      swift_arrayDestroy();
      MEMORY[0x1D38882F0](v34, -1, -1);
      MEMORY[0x1D38882F0](v21, -1, -1);
    }

    else
    {

      v18(v43, v7);
    }

    (*(v41 + 8))(v44, v42);
    v40(v13, v15, v7);
    sub_1D138E15C();
  }

  return (v18)(v15, v7);
}

void (*sub_1D1287CEC(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  sub_1D1287448(0, &qword_1EE069700, MEMORY[0x1E69A35F8]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  if (MEMORY[0x1E69E7D08])
  {
    v7 = swift_coroFrameAlloc();
    *(a1 + 8) = v7;
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
    *(a1 + 8) = v7;
    v8 = malloc(v6);
  }

  v9 = v8;
  *(a1 + 16) = v8;
  sub_1D138E14C();
  (*(v5 + 104))(v7, *MEMORY[0x1E69A35E8], v4);
  sub_1D138E5BC();
  v10 = sub_1D138E11C();
  v11 = *(v5 + 8);
  v11(v7, v4);
  v11(v9, v4);
  *(a1 + 24) = v10 & 1;
  return sub_1D1287E88;
}

void sub_1D1287E88(uint64_t a1)
{
  v2 = *(a1 + 8);
  v1 = *(a1 + 16);
  sub_1D1287820(*(a1 + 24));
  free(v1);

  free(v2);
}

uint64_t sub_1D1287EE0@<X0>(_BYTE *a1@<X8>)
{
  sub_1D1287448(0, &qword_1EE069700, MEMORY[0x1E69A35F8]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v13 - v8;
  sub_1D138E14C();
  (*(v4 + 104))(v6, *MEMORY[0x1E69A35E8], v3);
  sub_1D138E5BC();
  v10 = sub_1D138E11C();
  v11 = *(v4 + 8);
  v11(v6, v3);
  result = (v11)(v9, v3);
  *a1 = v10 & 1;
  return result;
}

uint64_t ConceptsDataSource.__allocating_init(arrangedSections:isHidden:)(uint64_t a1, int a2)
{
  v4 = swift_allocObject();
  ConceptsDataSource.init(arrangedSections:isHidden:)(a1, a2);
  return v4;
}

uint64_t ConceptsDataSource.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t ConceptsDataSource.item(for:)()
{
  v0 = MEMORY[0x1E69A3608];
  sub_1D1287448(0, &qword_1EE0696F8, MEMORY[0x1E69A3608]);
  sub_1D128834C(&qword_1EC60E8C8, &qword_1EE0696F8, v0);
  sub_1D138E36C();
  swift_getObjectType();
  sub_1D138E1BC();

  return swift_unknownObjectRelease();
}

uint64_t sub_1D1288244()
{
  v0 = MEMORY[0x1E69A3608];
  sub_1D1287448(0, &qword_1EE0696F8, MEMORY[0x1E69A3608]);
  sub_1D128834C(&qword_1EC60E8C8, &qword_1EE0696F8, v0);
  sub_1D138E36C();
  swift_getObjectType();
  sub_1D138E1BC();

  return swift_unknownObjectRelease();
}

uint64_t sub_1D128834C(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, void))
{
  result = *a1;
  if (!result)
  {
    sub_1D1287448(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id sub_1D12884B8(void *a1)
{
  *&v1[OBJC_IVAR____TtC15HealthRecordsUI64ClinicalSharingOnboardingNecessaryScopesNotPresentViewController_account] = a1;
  v2 = a1;
  v3 = [v2 gateway];
  p_vtable = &OBJC_METACLASS___WDClinicalSourcesDataProvider.vtable;
  if (v3)
  {
    v5 = v3;
    v6 = [v3 title];

    v7 = sub_1D139016C();
    v9 = v8;

    if (qword_1EE069F90 != -1)
    {
      swift_once();
    }

    sub_1D138D1CC();
    sub_1D10F48A8();
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_1D139E700;
    *(v10 + 56) = MEMORY[0x1E69E6158];
    *(v10 + 64) = sub_1D1089930();
    *(v10 + 32) = v7;
    *(v10 + 40) = v9;
    sub_1D13901AC();

    p_vtable = (&OBJC_METACLASS___WDClinicalSourcesDataProvider + 24);
  }

  else
  {
    if (qword_1EE069F90 != -1)
    {
      swift_once();
    }

    sub_1D138D1CC();
  }

  if (p_vtable[498] != -1)
  {
    swift_once();
  }

  sub_1D138D1CC();
  v11 = sub_1D139012C();

  v12 = sub_1D139012C();

  v15.receiver = v1;
  v15.super_class = type metadata accessor for ClinicalSharingOnboardingNecessaryScopesNotPresentViewController();
  v13 = objc_msgSendSuper2(&v15, sel_initWithTitle_detailText_icon_contentLayout_, v11, v12, 0, 3, 0xE000000000000000);

  return v13;
}

void sub_1D12887BC()
{
  v7.receiver = v0;
  v7.super_class = type metadata accessor for ClinicalSharingOnboardingNecessaryScopesNotPresentViewController();
  objc_msgSendSuper2(&v7, sel_viewDidLoad);
  [v0 setModalInPresentation_];
  if (qword_1EE069F90 != -1)
  {
    swift_once();
  }

  sub_1D138D1CC();
  sub_1D138D1CC();
  v1 = [objc_opt_self() boldButton];
  v2 = sub_1D139012C();

  [v1 setTitle:v2 forState:0];

  [v1 addTarget:v0 action:sel_logInAgain_ forControlEvents:64];
  v3 = [v0 buttonTray];
  [v3 addButton_];

  v4 = [objc_opt_self() linkButton];
  v5 = sub_1D139012C();

  [v4 setTitle:v5 forState:0];

  [v4 addTarget:v0 action:sel_abort_ forControlEvents:64];
  v6 = [v0 buttonTray];
  [v6 addButton_];
}

void sub_1D1288A84()
{
  v1 = v0;
  v2 = sub_1D138F0BC();
  v3 = *(v2 - 1);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v7 = MEMORY[0x1EEE9AC00](v6).n128_u64[0];
  v9 = &v37 - v8;
  v10 = [v1 navigationController];
  if (v10)
  {
    v39 = v10;
    v11 = [v10 popViewControllerAnimated_];
    if (v11)
    {

      v12 = v39;
    }

    else
    {
      sub_1D138F06C();
      v25 = v1;
      v26 = sub_1D138F0AC();
      v27 = sub_1D13907FC();

      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        v38 = v3;
        v29 = v28;
        v37 = swift_slowAlloc();
        v40 = v37;
        *v29 = 136315138;
        v30 = v25;
        v31 = [v30 description];
        v32 = sub_1D139016C();
        v34 = v33;

        v35 = sub_1D11DF718(v32, v34, &v40);

        *(v29 + 4) = v35;
        _os_log_impl(&dword_1D101F000, v26, v27, "%s: I was the first vc on a navigation controller, can't pop, attempting to abort", v29, 0xCu);
        v36 = v37;
        __swift_destroy_boxed_opaque_existential_1Tm(v37);
        MEMORY[0x1D38882F0](v36, -1, -1);
        MEMORY[0x1D38882F0](v29, -1, -1);

        (*(v38 + 8))(v9, v2);
      }

      else
      {

        (*(v3 + 8))(v9, v2);
      }

      [v25 dismissViewControllerAnimated:1 completion:0];
    }
  }

  else
  {
    sub_1D138F06C();
    v13 = v1;
    v14 = sub_1D138F0AC();
    v15 = sub_1D13907FC();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v38 = v3;
      v17 = v16;
      v18 = swift_slowAlloc();
      v40 = v18;
      *v17 = 136315138;
      v19 = v13;
      v20 = [v19 description];
      v21 = sub_1D139016C();
      v39 = v2;
      v23 = v22;

      v24 = sub_1D11DF718(v21, v23, &v40);

      *(v17 + 4) = v24;
      _os_log_impl(&dword_1D101F000, v14, v15, "%s: not on a navigation controller, can't pop, attempting to abort", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v18);
      MEMORY[0x1D38882F0](v18, -1, -1);
      MEMORY[0x1D38882F0](v17, -1, -1);

      (*(v38 + 8))(v5, v39);
    }

    else
    {

      (*(v3 + 8))(v5, v2);
    }

    [v13 dismissViewControllerAnimated:1 completion:0];
  }
}

id sub_1D1288FF8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ClinicalSharingOnboardingNecessaryScopesNotPresentViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1D12890AC()
{
  sub_1D1292328(0, &qword_1EE06A650, MEMORY[0x1E69E85F0]);
  *&v2 = MEMORY[0x1EEE9AC00](v1 - 8).n128_u64[0];
  v4 = &v23 - v3;
  v6 = *v0;
  v5 = *(v0 + 8);
  if (*(v0 + 32) > 1u)
  {
    if (*(v0 + 32) != 2)
    {
      v17 = sub_1D13905DC();
      (*(*(v17 - 8) + 56))(v4, 1, 1, v17);
      sub_1D13905AC();
      v18 = v6;
      v19 = v5;
      v20 = sub_1D139059C();
      v21 = swift_allocObject();
      v22 = MEMORY[0x1E69E85E0];
      v21[2] = v20;
      v21[3] = v22;
      v21[4] = v18;
      v21[5] = v19;
      sub_1D107877C(0, 0, v4, &unk_1D13AD3D8, v21);

      return;
    }

    sub_1D106F934(0, &unk_1EC6099E0);
    v24 = sub_1D139044C();
    [v6 setViewControllers:v24 animated:1];
    v13 = v24;
  }

  else
  {
    if (!*(v0 + 32))
    {
      v7 = [*v0 presentedViewController];
      if (v7)
      {
        v8 = v7;
        v9 = swift_allocObject();
        *(v9 + 16) = v6;
        *(v9 + 24) = v5;
        aBlock[4] = sub_1D12928E8;
        aBlock[5] = v9;
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1D10CBD3C;
        aBlock[3] = &block_descriptor_46_0;
        v10 = _Block_copy(aBlock);
        v11 = v6;
        v12 = v5;

        [v8 dismissViewControllerAnimated:0 completion:v10];
        _Block_release(v10);
      }

      else
      {

        [v6 presentViewController:v5 animated:1 completion:0];
      }

      return;
    }

    v15 = *(v0 + 16);
    v14 = *(v0 + 24);
    [v6 presentViewController:v5 animated:1 completion:{0, v2}];
    if (v14)
    {
      v16 = [v15 popToViewController:v14 animated:1];
    }

    else
    {
      v16 = [v15 popToRootViewControllerAnimated_];
    }

    v13 = v16;
  }
}

uint64_t sub_1D12893F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v5[4] = sub_1D13905AC();
  v5[5] = sub_1D139059C();
  v5[6] = sub_1D139059C();
  v6 = swift_task_alloc();
  v5[7] = v6;
  *v6 = v5;
  v6[1] = sub_1D12894BC;

  return sub_1D130871C(0xD000000000000018, 0x80000001D13C8BC0);
}

uint64_t sub_1D12894BC()
{

  v1 = sub_1D139055C();

  return MEMORY[0x1EEE6DFA0](sub_1D12895F8, v1, v0);
}

uint64_t sub_1D12895F8()
{

  v1 = swift_task_alloc();
  *(v0 + 64) = v1;
  *v1 = v0;
  v1[1] = sub_1D1289698;

  return MEMORY[0x1EEE6DA60](500000000);
}

uint64_t sub_1D1289698()
{

  if (v0)
  {

    v1 = sub_1D139055C();
    v3 = v2;
    v4 = sub_1D1293A50;
  }

  else
  {
    v1 = sub_1D139055C();
    v3 = v5;
    v4 = sub_1D128981C;
  }

  return MEMORY[0x1EEE6DFA0](v4, v1, v3);
}

uint64_t sub_1D128981C()
{
  v1 = v0[2];
  v2 = v0[3];

  [v1 presentViewController:v2 animated:1 completion:0];
  v3 = v0[1];

  return v3();
}

void sub_1D128989C(uint64_t a1@<X8>)
{
  v3 = v1[1];
  if (!v3)
  {
    goto LABEL_25;
  }

  v4 = v1[2];
  v5 = v3;
  v6 = v5;
  if (v4)
  {
    v7 = v5;
    v8 = v4;
    v9 = [v7 viewControllers];
    sub_1D106F934(0, &unk_1EC6099E0);
    v10 = sub_1D139045C();

    v11 = sub_1D136BC54(v8, v10);
    v13 = v12;

    if ((v13 & 1) == 0 && !v11)
    {

      v3 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v17 = 4;
      goto LABEL_30;
    }
  }

  else
  {
    v18 = v5;
  }

  v15 = v1[3];
  v19 = v6;
  if (!v15)
  {
LABEL_13:

    if (v4)
    {
      goto LABEL_14;
    }

    goto LABEL_23;
  }

  v52 = v1;
  sub_1D106F934(0, &qword_1EE06B0C0);
  v19 = v15;
  if ((sub_1D1390D8C() & 1) == 0)
  {

    goto LABEL_13;
  }

  if (v4)
  {
    v4 = v4;
    v20 = [v6 viewControllers];
    sub_1D106F934(0, &unk_1EC6099E0);
    v21 = sub_1D139045C();

    v14 = sub_1D136BC54(v4, v21);
    v23 = v22;

    v1 = v52;
    if (v23)
    {
    }

    else
    {
      v44 = v52[4];
      if (v44)
      {
        v50 = v44;
        v45 = [v19 viewControllers];
        v46 = sub_1D139045C();

        v48 = sub_1D136BC54(v50, v46);
        v51 = v47;

        if ((v51 & 1) == 0)
        {

          v16 = 0;
          v17 = 0;
          v15 = v48;
          goto LABEL_30;
        }
      }

      else
      {
      }
    }

LABEL_14:
    v24 = v4;
    v25 = [v6 viewControllers];
    sub_1D106F934(0, &unk_1EC6099E0);
    v26 = sub_1D139045C();

    v14 = sub_1D136BC54(v24, v26);
    v28 = v27;

    if ((v28 & 1) == 0 && v15 && (v29 = v1[4], (v56 = v29) != 0))
    {
      v53 = v29;
      v49 = v15;
      sub_1D12935D8(&v56, &v55, &qword_1EC60E908, type metadata accessor for ClinicalAccountDetailsViewController);
      v30 = [v49 viewControllers];
      v31 = sub_1D139045C();

      v16 = sub_1D136BC54(v53, v31);
      LOBYTE(v53) = v32;

      sub_1D12936B8(&v56, &qword_1EC60E908, type metadata accessor for ClinicalAccountDetailsViewController);
      if ((v53 & 1) == 0)
      {

        v17 = 1;
        goto LABEL_30;
      }
    }

    else
    {
    }

    v33 = v24;
    v34 = [v6 viewControllers];
    v35 = sub_1D139045C();

    v14 = sub_1D136BC54(v33, v35);
    v37 = v36;

    if ((v37 & 1) == 0)
    {
      v15 = 0;
      v16 = 0;
      v17 = 2;
      goto LABEL_30;
    }

    goto LABEL_24;
  }

LABEL_23:
LABEL_24:

LABEL_25:
  v3 = v1[3];
  if (v3)
  {
    v38 = v1[4];
    v55 = v38;
    if (v38)
    {
      v39 = v3;
      sub_1D12935D8(&v55, v54, &qword_1EC60E908, type metadata accessor for ClinicalAccountDetailsViewController);
      v40 = [v39 viewControllers];
      sub_1D106F934(0, &unk_1EC6099E0);
      v41 = sub_1D139045C();

      v14 = sub_1D136BC54(v38, v41);
      v43 = v42;

      sub_1D12936B8(&v55, &qword_1EC60E908, type metadata accessor for ClinicalAccountDetailsViewController);
      if ((v43 & 1) == 0)
      {
        v15 = 0;
        v16 = 0;
        v17 = 3;
        goto LABEL_30;
      }
    }
  }

  v14 = 0;
  v15 = 0;
  v16 = 0;
  v17 = 4;
  v3 = 1;
LABEL_30:
  *a1 = v3;
  *(a1 + 8) = v14;
  *(a1 + 16) = v15;
  *(a1 + 24) = v16;
  *(a1 + 32) = v17;
}

void sub_1D1289E2C(uint64_t a1)
{
  v3 = a1 - 1;
  if (__OFSUB__(a1, 1))
  {
    __break(1u);
  }

  else
  {
    if (v3 < 0)
    {
      return;
    }

    v2 = &off_1E83DF000;
    v4 = [v1 viewControllers];
    sub_1D106F934(0, &unk_1EC6099E0);
    v5 = sub_1D139045C();

    if (!(v5 >> 62))
    {
      v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_5;
    }
  }

  v6 = sub_1D13910DC();
LABEL_5:

  if (v3 < v6)
  {
    v7 = [v1 v2[208]];
    v8 = sub_1D139045C();

    if ((v8 & 0xC000000000000001) != 0)
    {
      MEMORY[0x1D3886B70](v3, v8);
      goto LABEL_9;
    }

    if (v3 < *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v9 = *(v8 + 8 * v3 + 32);
LABEL_9:

      return;
    }

    __break(1u);
  }
}

uint64_t sub_1D1289F64()
{
  swift_unknownObjectRelease();
  sub_1D12936B8(v0 + OBJC_IVAR____TtCC15HealthRecordsUI29ClinicalAccountUpgradeManagerP33_C1E9680787D6FC085CDD3D854B2FD8D912SessionState_loginSessionState, &qword_1EC60D6B0, MEMORY[0x1E69695A8]);
  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1D1289FC8()
{
  v1[3] = v0;
  v2 = sub_1D138D5EC();
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();
  v3 = sub_1D138F0BC();
  v1[7] = v3;
  v1[8] = *(v3 - 8);
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D128A0F0, 0, 0);
}

uint64_t sub_1D128A0F0()
{
  v24 = v0;
  sub_1D138F06C();

  v1 = sub_1D138F0AC();
  v2 = sub_1D139081C();

  v3 = os_log_type_enabled(v1, v2);
  v4 = v0[10];
  v6 = v0[7];
  v5 = v0[8];
  if (v3)
  {
    v8 = v0[5];
    v7 = v0[6];
    v22 = v0[10];
    v9 = v0[3];
    v10 = v0[4];
    v21 = v0[7];
    v11 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v23 = v20;
    *v11 = 136315394;
    *(v11 + 4) = sub_1D11DF718(*(v9 + 48), *(v9 + 56), &v23);
    *(v11 + 12) = 2080;
    v12 = [*(v9 + 16) identifier];
    sub_1D138D5CC();

    sub_1D12927B4(&qword_1EC60D1C0);
    v13 = sub_1D13915CC();
    v15 = v14;
    (*(v8 + 8))(v7, v10);
    v16 = sub_1D11DF718(v13, v15, &v23);

    *(v11 + 14) = v16;
    _os_log_impl(&dword_1D101F000, v1, v2, "%s beginning upgrade of account %s", v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D38882F0](v20, -1, -1);
    MEMORY[0x1D38882F0](v11, -1, -1);

    v17 = *(v5 + 8);
    v17(v22, v21);
  }

  else
  {

    v17 = *(v5 + 8);
    v17(v4, v6);
  }

  v0[11] = v17;
  v18 = swift_task_alloc();
  v0[12] = v18;
  *v18 = v0;
  v18[1] = sub_1D128A364;

  return sub_1D128AC20();
}

uint64_t sub_1D128A364(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  v4[13] = a1;
  v4[14] = v1;

  if (v1)
  {

    return MEMORY[0x1EEE6DFA0](sub_1D128A770, 0, 0);
  }

  else
  {
    v6 = swift_task_alloc();
    v4[15] = v6;
    *v6 = v5;
    v6[1] = sub_1D128A4E8;

    return sub_1D128B208(a1);
  }
}

uint64_t sub_1D128A4E8()
{
  *(*v1 + 128) = v0;

  if (v0)
  {
    v2 = sub_1D128A9C4;
  }

  else
  {
    v2 = sub_1D128A5FC;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D128A5FC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D128A678()
{
  v1 = *(v0 + 136);

  sub_1D128BC70(v1);

  return MEMORY[0x1EEE6DFA0](sub_1D128A6F4, 0, 0);
}

uint64_t sub_1D128A6F4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D128A770()
{
  v23 = v0;
  v1 = v0[14];
  v0[17] = v1;
  sub_1D138F06C();

  v2 = v1;
  v3 = sub_1D138F0AC();
  v4 = sub_1D13907FC();

  if (os_log_type_enabled(v3, v4))
  {
    v20 = v0[9];
    v21 = v0[11];
    v5 = v0[7];
    v6 = v0[3];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v22 = v8;
    *v7 = 136315394;
    *(v7 + 4) = sub_1D11DF718(*(v6 + 48), *(v6 + 56), &v22);
    *(v7 + 12) = 2080;
    v0[2] = v1;
    v9 = v1;
    sub_1D10922EC();
    v10 = sub_1D13901EC();
    v12 = sub_1D11DF718(v10, v11, &v22);

    *(v7 + 14) = v12;
    _os_log_impl(&dword_1D101F000, v3, v4, "%s failed to initiate upgrading account: %s", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D38882F0](v8, -1, -1);
    MEMORY[0x1D38882F0](v7, -1, -1);

    v21(v20, v5);
  }

  else
  {
    v13 = v0[11];
    v14 = v0[9];
    v15 = v0[7];

    v13(v14, v15);
  }

  sub_1D13905AC();
  v16 = v1;
  v0[18] = sub_1D139059C();
  v18 = sub_1D139055C();

  return MEMORY[0x1EEE6DFA0](sub_1D128A678, v18, v17);
}

uint64_t sub_1D128A9C4()
{
  v23 = v0;

  v1 = *(v0 + 128);
  *(v0 + 136) = v1;
  sub_1D138F06C();

  v2 = v1;
  v3 = sub_1D138F0AC();
  v4 = sub_1D13907FC();

  if (os_log_type_enabled(v3, v4))
  {
    v20 = *(v0 + 72);
    v21 = *(v0 + 88);
    v5 = *(v0 + 56);
    v6 = *(v0 + 24);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v22 = v8;
    *v7 = 136315394;
    *(v7 + 4) = sub_1D11DF718(*(v6 + 48), *(v6 + 56), &v22);
    *(v7 + 12) = 2080;
    *(v0 + 16) = v1;
    v9 = v1;
    sub_1D10922EC();
    v10 = sub_1D13901EC();
    v12 = sub_1D11DF718(v10, v11, &v22);

    *(v7 + 14) = v12;
    _os_log_impl(&dword_1D101F000, v3, v4, "%s failed to initiate upgrading account: %s", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D38882F0](v8, -1, -1);
    MEMORY[0x1D38882F0](v7, -1, -1);

    v21(v20, v5);
  }

  else
  {
    v13 = *(v0 + 88);
    v14 = *(v0 + 72);
    v15 = *(v0 + 56);

    v13(v14, v15);
  }

  sub_1D13905AC();
  v16 = v1;
  *(v0 + 144) = sub_1D139059C();
  v18 = sub_1D139055C();

  return MEMORY[0x1EEE6DFA0](sub_1D128A678, v18, v17);
}

uint64_t sub_1D128AC40()
{
  v1 = [*(v0[19] + 16) gateway];
  v0[20] = v1;
  if (v1)
  {
    v2 = v1;
    v3 = [v1 newerSupportedGatewayVersion];
    v0[21] = v3;
    if (v3)
    {
      v4 = v3;
      v5 = [*(*(v0[19] + 24) + 24) healthStore];
      v6 = [objc_allocWithZone(MEMORY[0x1E69A3F68]) initWithHealthStore_];
      v0[22] = v6;

      v7 = [v4 gatewayID];
      if (!v7)
      {
        sub_1D139016C();
        v7 = sub_1D139012C();
      }

      v0[23] = v7;
      v8 = [v4 gatewayBatchID];
      if (!v8)
      {
        sub_1D139016C();
        v8 = sub_1D139012C();
      }

      v0[24] = v8;
      v0[2] = v0;
      v0[7] = v0 + 18;
      v0[3] = sub_1D128AF2C;
      v9 = swift_continuation_init();
      sub_1D12937D4(0, &qword_1EC60E918, &qword_1EC60E920);
      v0[17] = v10;
      v0[10] = MEMORY[0x1E69E9820];
      v0[11] = 1107296256;
      v0[12] = sub_1D1121DF8;
      v0[13] = &block_descriptor_59_2;
      v0[14] = v9;
      [v6 fetchRemoteGatewayWithExternalID:v7 batchID:v8 completion:v0 + 10];

      return MEMORY[0x1EEE6DEC8](v0 + 2);
    }

    sub_1D1293780();
    swift_allocError();
    *v12 = 2;
    swift_willThrow();
  }

  else
  {
    sub_1D1293780();
    swift_allocError();
    *v11 = 1;
    swift_willThrow();
  }

  v13 = v0[1];

  return v13();
}

uint64_t sub_1D128AF2C()
{
  v1 = *(*v0 + 48);
  *(*v0 + 200) = v1;
  if (v1)
  {
    v2 = sub_1D128B170;
  }

  else
  {
    v2 = sub_1D128B03C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D128B03C()
{
  v1 = *(v0 + 184);
  v2 = *(v0 + 144);

  v3 = [v2 status];
  v4 = *(v0 + 168);
  v5 = *(v0 + 176);
  v6 = *(v0 + 160);
  if (v3 == 1)
  {

    v7 = *(v0 + 8);

    return v7(v2);
  }

  else
  {
    sub_1D1293780();
    swift_allocError();
    *v9 = 3;
    swift_willThrow();

    v10 = *(v0 + 8);

    return v10();
  }
}

uint64_t sub_1D128B170()
{
  v1 = v0[24];
  v3 = v0[22];
  v2 = v0[23];
  v5 = v0[20];
  v4 = v0[21];
  swift_willThrow();

  v6 = v0[1];

  return v6();
}

uint64_t sub_1D128B208(uint64_t a1)
{
  v2[16] = a1;
  v2[17] = v1;
  sub_1D1292328(0, &qword_1EC60D6B0, MEMORY[0x1E69695A8]);
  v2[18] = swift_task_alloc();
  sub_1D13905AC();
  v2[19] = sub_1D139059C();
  v4 = sub_1D139055C();
  v2[20] = v4;
  v2[21] = v3;

  return MEMORY[0x1EEE6DFA0](sub_1D128B2E8, v4, v3);
}

uint64_t sub_1D128B2E8()
{
  v1 = v0[18];
  v2 = *(v0[17] + 40);
  v0[22] = v2;
  v3 = sub_1D138D5EC();
  v0[23] = v3;
  v4 = *(v3 - 8);
  v5 = *(v4 + 56);
  v0[24] = v5;
  v0[25] = (v4 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v5(v1, 1, 1, v3);

  return MEMORY[0x1EEE6DFA0](sub_1D128B3A4, v2, 0);
}

uint64_t sub_1D128B3A4()
{
  v1 = v0[22];
  v2 = v0[18];
  v3 = OBJC_IVAR____TtCC15HealthRecordsUI29ClinicalAccountUpgradeManagerP33_C1E9680787D6FC085CDD3D854B2FD8D912SessionState_loginSessionState;
  v0[26] = OBJC_IVAR____TtCC15HealthRecordsUI29ClinicalAccountUpgradeManagerP33_C1E9680787D6FC085CDD3D854B2FD8D912SessionState_loginSessionState;
  swift_beginAccess();
  sub_1D1292280(v2, v1 + v3);
  swift_endAccess();
  sub_1D12936B8(v2, &qword_1EC60D6B0, MEMORY[0x1E69695A8]);
  v4 = v0[20];
  v5 = v0[21];

  return MEMORY[0x1EEE6DFA0](sub_1D128B468, v4, v5);
}

uint64_t sub_1D128B468()
{
  super_class = v0[8].super_class;
  v2 = *(super_class + 4);
  v3 = *(*(super_class + 3) + 24);
  v4 = [v2 hk_window];
  if (!v4)
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E69DD2E8]) initWithFrame_];
  }

  v5 = type metadata accessor for ClinicalAccountLoginSession();
  v6 = objc_allocWithZone(v5);
  *&v6[OBJC_IVAR___HRUIClinicalAccountLoginSession_authSession] = 0;
  *&v6[OBJC_IVAR___HRUIClinicalAccountLoginSession_accountStore] = v3;
  *&v6[OBJC_IVAR___HRUIClinicalAccountLoginSession_presentationAnchor] = v4;
  *&v6[OBJC_IVAR___HRUIClinicalAccountLoginSession_funnelContext] = 8;
  v0[7].receiver = v6;
  v0[7].super_class = v5;
  v0[13].super_class = objc_msgSendSuper2(v0 + 7, sel_init);
  v7 = [objc_opt_self() defaultCenter];
  v0[14].receiver = v7;
  if (qword_1EC608D68 != -1)
  {
    swift_once();
  }

  receiver = v0[11].receiver;
  v9 = qword_1EC60DA18;
  v10 = [objc_opt_self() mainQueue];
  v11 = swift_allocObject();
  swift_weakInit();
  v0[3].receiver = sub_1D1292300;
  v0[3].super_class = v11;
  v0[1].receiver = MEMORY[0x1E69E9820];
  v0[1].super_class = 1107296256;
  v0[2].receiver = sub_1D128C6AC;
  v0[2].super_class = &block_descriptor_54;
  v12 = _Block_copy(&v0[1]);

  v0[14].super_class = [v7 addObserverForName:v9 object:0 queue:v10 usingBlock:v12];
  _Block_release(v12);

  swift_unknownObjectRetain();

  return MEMORY[0x1EEE6DFA0](sub_1D128B70C, receiver, 0);
}

uint64_t sub_1D128B70C()
{
  v1 = *(v0 + 176);
  if (*(v1 + 112))
  {
    [*(v0 + 224) removeObserver_];
  }

  *(v1 + 112) = *(v0 + 232);
  swift_unknownObjectRelease();
  v2 = *(v0 + 160);
  v3 = *(v0 + 168);

  return MEMORY[0x1EEE6DFA0](sub_1D128B79C, v2, v3);
}

uint64_t sub_1D128B79C()
{
  v2 = v0[16];
  v1 = v0[17];
  v3 = swift_allocObject();
  v0[30] = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;

  v4 = v2;
  v5 = swift_task_alloc();
  v0[31] = v5;
  *v5 = v0;
  v5[1] = sub_1D128B890;
  v6 = v0[16];

  return sub_1D10BD140(v6, 0, 0, sub_1D1292320, v3);
}

uint64_t sub_1D128B890(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 256) = v1;

  if (v1)
  {
    v5 = v4[20];
    v6 = v4[21];
    v7 = sub_1D128BBD4;
  }

  else
  {

    v4[33] = a1;
    v5 = v4[20];
    v6 = v4[21];
    v7 = sub_1D128B9C0;
  }

  return MEMORY[0x1EEE6DFA0](v7, v5, v6);
}

uint64_t sub_1D128B9C0()
{
  v1 = *(v0 + 192);
  v2 = *(v0 + 176);
  v3 = *(v0 + 184);
  v4 = *(v0 + 144);
  v5 = [*(v0 + 264) state];
  sub_1D138D5CC();

  v1(v4, 0, 1, v3);

  return MEMORY[0x1EEE6DFA0](sub_1D128BA78, v2, 0);
}

uint64_t sub_1D128BA78()
{
  v1 = v0[26];
  v2 = v0[22];
  v3 = v0[18];
  swift_beginAccess();
  sub_1D1292280(v3, v2 + v1);
  swift_endAccess();
  sub_1D12936B8(v3, &qword_1EC60D6B0, MEMORY[0x1E69695A8]);
  v4 = v0[20];
  v5 = v0[21];

  return MEMORY[0x1EEE6DFA0](sub_1D128BB34, v4, v5);
}

uint64_t sub_1D128BB34()
{
  v1 = *(v0 + 224);
  v2 = *(v0 + 216);

  swift_unknownObjectRelease();

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1D128BBD4()
{
  v2 = v0[27];
  v1 = v0[28];

  swift_unknownObjectRelease();

  v3 = v0[1];

  return v3();
}

void sub_1D128BC70(void *a1)
{
  if (qword_1EE06AD00 != -1)
  {
    swift_once();
  }

  sub_1D138D1CC();
  v3 = sub_1D139012C();

  sub_1D138D1CC();
  v4 = sub_1D139012C();

  if (a1)
  {
    a1 = sub_1D138D2AC();
  }

  v5 = [objc_opt_self() basicAlertControllerWithTitle:v3 message:v4 internalError:{a1, 0xE000000000000000}];

  [*(v1 + 32) presentViewController:v5 animated:1 completion:0];
}

uint64_t sub_1D128BE14()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1D128BE74();
  }

  return result;
}

uint64_t sub_1D128BE74()
{
  v1 = v0;
  sub_1D1292328(0, &qword_1EE06A650, MEMORY[0x1E69E85F0]);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v64 = &v61 - v3;
  v4 = sub_1D138F0BC();
  v65 = *(v4 - 8);
  v66 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v61 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D1292328(0, &qword_1EC60D6B0, MEMORY[0x1E69695A8]);
  v63 = v7;
  v67 = *(v7 - 8);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = &v61 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v61 - v12;
  v69 = v14;
  MEMORY[0x1EEE9AC00](v11);
  v16 = &v61 - v15;
  v17 = sub_1D138D00C();
  if (!v17)
  {
    goto LABEL_9;
  }

  v18 = v17;
  *&v73 = 0xD00000000000002DLL;
  *(&v73 + 1) = 0x80000001D13BA650;
  sub_1D139116C();
  if (!*(v18 + 16) || (v19 = sub_1D129E400(v72), (v20 & 1) == 0))
  {

    sub_1D1116E48(v72);
LABEL_9:
    v73 = 0u;
    v74 = 0u;
    goto LABEL_10;
  }

  sub_1D109F94C(*(v18 + 56) + 32 * v19, &v73);
  sub_1D1116E48(v72);

  if (!*(&v74 + 1))
  {
LABEL_10:
    sub_1D1096BE0(&v73);
    v68 = 0;
    goto LABEL_11;
  }

  sub_1D106F934(0, &qword_1EC609A00);
  v21 = swift_dynamicCast();
  v22 = v72[0];
  if (!v21)
  {
    v22 = 0;
  }

  v68 = v22;
LABEL_11:
  v23 = sub_1D138D00C();
  if (!v23)
  {
LABEL_17:
    v73 = 0u;
    v74 = 0u;
    goto LABEL_18;
  }

  v24 = v23;
  v70 = 0xD00000000000002BLL;
  v71 = 0x80000001D13BA680;
  sub_1D139116C();
  if (!*(v24 + 16) || (v25 = sub_1D129E400(v72), (v26 & 1) == 0))
  {

    sub_1D1116E48(v72);
    goto LABEL_17;
  }

  sub_1D109F94C(*(v24 + 56) + 32 * v25, &v73);
  sub_1D1116E48(v72);

  if (*(&v74 + 1))
  {
    v27 = sub_1D138D5EC();
    v28 = swift_dynamicCast();
    (*(*(v27 - 8) + 56))(v16, v28 ^ 1u, 1, v27);
    goto LABEL_19;
  }

LABEL_18:
  sub_1D1096BE0(&v73);
  v29 = sub_1D138D5EC();
  (*(*(v29 - 8) + 56))(v16, 1, 1, v29);
LABEL_19:
  v30 = sub_1D138D00C();
  if (!v30)
  {
LABEL_27:
    v73 = 0u;
    v74 = 0u;
    goto LABEL_28;
  }

  v31 = v30;
  *&v73 = 0xD00000000000002BLL;
  *(&v73 + 1) = 0x80000001D13BA6B0;
  sub_1D139116C();
  if (!*(v31 + 16) || (v32 = sub_1D129E400(v72), (v33 & 1) == 0))
  {

    sub_1D1116E48(v72);
    goto LABEL_27;
  }

  sub_1D109F94C(*(v31 + 56) + 32 * v32, &v73);
  sub_1D1116E48(v72);

  if (*(&v74 + 1))
  {
    sub_1D10922EC();
    if (swift_dynamicCast())
    {
      v34 = v72[0];
    }

    else
    {
      v34 = 0;
    }

    goto LABEL_29;
  }

LABEL_28:
  sub_1D1096BE0(&v73);
  v34 = 0;
LABEL_29:
  sub_1D138F06C();
  sub_1D12935D8(v16, v13, &qword_1EC60D6B0, MEMORY[0x1E69695A8]);

  v35 = sub_1D138F0AC();
  v36 = sub_1D139081C();

  if (os_log_type_enabled(v35, v36))
  {
    v37 = v13;
    v38 = swift_slowAlloc();
    v62 = swift_slowAlloc();
    v72[0] = v62;
    *v38 = 136315394;
    *(v38 + 4) = sub_1D11DF718(*(v1 + 48), *(v1 + 56), v72);
    *(v38 + 12) = 2080;
    v39 = v16;
    v40 = MEMORY[0x1E69695A8];
    sub_1D12935D8(v37, v10, &qword_1EC60D6B0, MEMORY[0x1E69695A8]);
    v41 = sub_1D13901EC();
    v61 = v6;
    v42 = v41;
    v63 = v34;
    v43 = v36;
    v44 = v10;
    v45 = v1;
    v47 = v46;
    v48 = v40;
    v16 = v39;
    sub_1D12936B8(v37, &qword_1EC60D6B0, v48);
    v49 = sub_1D11DF718(v42, v47, v72);
    v1 = v45;
    v10 = v44;

    *(v38 + 14) = v49;
    v50 = v43;
    v34 = v63;
    _os_log_impl(&dword_1D101F000, v35, v50, "%s received oauth completion notification for login state %s", v38, 0x16u);
    v51 = v62;
    swift_arrayDestroy();
    MEMORY[0x1D38882F0](v51, -1, -1);
    MEMORY[0x1D38882F0](v38, -1, -1);

    (*(v65 + 8))(v61, v66);
  }

  else
  {

    sub_1D12936B8(v13, &qword_1EC60D6B0, MEMORY[0x1E69695A8]);
    (*(v65 + 8))(v6, v66);
  }

  v52 = sub_1D13905DC();
  v53 = v64;
  (*(*(v52 - 8) + 56))(v64, 1, 1, v52);
  v54 = MEMORY[0x1E69695A8];
  sub_1D12935D8(v16, v10, &qword_1EC60D6B0, MEMORY[0x1E69695A8]);
  v55 = (*(v67 + 80) + 48) & ~*(v67 + 80);
  v56 = v10;
  v57 = (v69 + v55 + 7) & 0xFFFFFFFFFFFFFFF8;
  v58 = swift_allocObject();
  v58[2] = 0;
  v58[3] = 0;
  v59 = v68;
  v58[4] = v1;
  v58[5] = v59;
  sub_1D1293714(v56, v58 + v55, &qword_1EC60D6B0, v54);
  *(v58 + v57) = v34;

  sub_1D107877C(0, 0, v53, &unk_1D13AD3A8, v58);

  return sub_1D12936B8(v16, &qword_1EC60D6B0, v54);
}

uint64_t sub_1D128C6AC(uint64_t a1)
{
  v2 = sub_1D138D01C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 32);
  sub_1D138CFDC();

  v6(v5);

  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_1D128C7A0(void *a1, uint64_t a2, void *a3)
{
  sub_1D1292328(0, &qword_1EE06A650, MEMORY[0x1E69E85F0]);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v14 - v7;
  v9 = sub_1D13905DC();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = a2;
  v10[5] = a3;
  v10[6] = a1;

  v11 = a3;
  v12 = a1;
  sub_1D107877C(0, 0, v8, &unk_1D13AD398, v10);
}

uint64_t sub_1D128C8DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return MEMORY[0x1EEE6DFA0](sub_1D128C900, 0, 0);
}

uint64_t sub_1D128C900()
{
  sub_1D13905AC();
  *(v0 + 40) = sub_1D139059C();
  v2 = sub_1D139055C();

  return MEMORY[0x1EEE6DFA0](sub_1D128C994, v2, v1);
}

uint64_t sub_1D128C994()
{

  if (qword_1EE069ED0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 16);
  v2 = sub_1D1299A40(*(v0 + 24), *(v0 + 32));
  [*(v1 + 32) presentViewController:v2 animated:1 completion:0];

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1D128CA54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = swift_task_alloc();
  *(v7 + 16) = v11;
  *v11 = v7;
  v11[1] = sub_1D108077C;

  return sub_1D128CB08(a5, a6, a7);
}

uint64_t sub_1D128CB08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[8] = a3;
  v4[9] = v3;
  v4[6] = a1;
  v4[7] = a2;
  v5 = sub_1D138F0BC();
  v4[10] = v5;
  v4[11] = *(v5 - 8);
  v4[12] = swift_task_alloc();
  v4[13] = swift_task_alloc();
  sub_1D1292328(0, &qword_1EC60D6B0, MEMORY[0x1E69695A8]);
  v4[14] = swift_task_alloc();
  v4[15] = swift_task_alloc();
  v6 = sub_1D138D5EC();
  v4[16] = v6;
  v4[17] = *(v6 - 8);
  v4[18] = swift_task_alloc();
  v4[19] = swift_task_alloc();
  v4[20] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D128CCA0, 0, 0);
}

uint64_t sub_1D128CCA0()
{
  v1 = *(v0[9] + 40);
  v0[21] = v1;
  v0[22] = [objc_opt_self() defaultCenter];

  return MEMORY[0x1EEE6DFA0](sub_1D128CD30, v1, 0);
}

uint64_t sub_1D128CD30()
{
  v1 = *(v0 + 168);
  v2 = *(v1 + 112);
  if (v2)
  {
    v3 = *(v0 + 176);
    swift_unknownObjectRetain_n();
    [v3 removeObserver_];
    swift_unknownObjectRelease_n();
  }

  *(v1 + 112) = 0;
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6DFA0](sub_1D128CDE8, 0, 0);
}

uint64_t sub_1D128CDE8()
{
  v50 = v0;
  v1 = v0[16];
  v2 = v0[17];
  v3 = v0[15];
  sub_1D12935D8(v0[7], v3, &qword_1EC60D6B0, MEMORY[0x1E69695A8]);
  v4 = *(v2 + 48);
  v0[23] = v4;
  v0[24] = (v2 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v4(v3, 1, v1) == 1)
  {
    sub_1D12936B8(v0[15], &qword_1EC60D6B0, MEMORY[0x1E69695A8]);
    v5 = v0[6];
    if (v5)
    {
      v6 = v5;
      v7 = swift_task_alloc();
      v0[27] = v7;
      *v7 = v0;
      v7[1] = sub_1D128D9F4;

      return sub_1D128DCC8(v6);
    }

    v18 = v0[8];
    sub_1D138F06C();

    v19 = v18;
    v20 = sub_1D138F0AC();
    v21 = sub_1D13907FC();

    if (os_log_type_enabled(v20, v21))
    {
      v23 = v0[17];
      v22 = v0[18];
      v24 = v0[16];
      v46 = v0[11];
      v25 = v0[9];
      v47 = v0[10];
      v48 = v0[12];
      v44 = v0[8];
      v26 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v49 = v45;
      *v26 = 136315650;
      *(v26 + 4) = sub_1D11DF718(*(v25 + 48), *(v25 + 56), &v49);
      *(v26 + 12) = 2080;
      v27 = [*(v25 + 16) identifier];
      sub_1D138D5CC();

      sub_1D12927B4(&qword_1EC60D1C0);
      v28 = sub_1D13915CC();
      v30 = v29;
      (*(v23 + 8))(v22, v24);
      v31 = sub_1D11DF718(v28, v30, &v49);

      *(v26 + 14) = v31;
      *(v26 + 22) = 2080;
      v0[5] = v44;
      v32 = v18;
      sub_1D1292328(0, &qword_1EE06B078, sub_1D10922EC);
      v33 = sub_1D13901EC();
      v35 = sub_1D11DF718(v33, v34, &v49);

      *(v26 + 24) = v35;
      _os_log_impl(&dword_1D101F000, v20, v21, "%s error logging in during upgrade of account %s: %s", v26, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1D38882F0](v45, -1, -1);
      MEMORY[0x1D38882F0](v26, -1, -1);

      (*(v46 + 8))(v48, v47);
    }

    else
    {
      v37 = v0[11];
      v36 = v0[12];
      v38 = v0[10];

      (*(v37 + 8))(v36, v38);
    }

    v39 = v18;
    if (!v0[8])
    {
      v39 = [objc_opt_self() hk:0 error:0 userInfo:?];
    }

    v0[28] = v39;
    sub_1D13905AC();
    v40 = v18;
    v0[29] = sub_1D139059C();
    v41 = sub_1D139055C();
    v43 = v42;
    v15 = sub_1D128DBA4;
    v16 = v41;
    v17 = v43;
  }

  else
  {
    v9 = v0[20];
    v10 = v0[21];
    v11 = v0[16];
    v12 = v0[17];
    v13 = v0[15];
    v14 = *(v12 + 32);
    v0[25] = v14;
    v0[26] = (v12 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v14(v9, v13, v11);
    v15 = sub_1D128D288;
    v16 = v10;
    v17 = 0;
  }

  return MEMORY[0x1EEE6DFA0](v15, v16, v17);
}

uint64_t sub_1D128D288()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 112);
  v3 = OBJC_IVAR____TtCC15HealthRecordsUI29ClinicalAccountUpgradeManagerP33_C1E9680787D6FC085CDD3D854B2FD8D912SessionState_loginSessionState;
  swift_beginAccess();
  sub_1D12935D8(v1 + v3, v2, &qword_1EC60D6B0, MEMORY[0x1E69695A8]);

  return MEMORY[0x1EEE6DFA0](sub_1D128D33C, 0, 0);
}

uint64_t sub_1D128D33C()
{
  v60 = v0;
  v1 = *(v0 + 128);
  v2 = *(v0 + 112);
  if ((*(v0 + 184))(v2, 1, v1) == 1)
  {
    (*(*(v0 + 136) + 8))(*(v0 + 160), v1);
    sub_1D12936B8(v2, &qword_1EC60D6B0, MEMORY[0x1E69695A8]);
    v3 = *(v0 + 48);
    if (v3)
    {
LABEL_3:
      v4 = v3;
      v5 = swift_task_alloc();
      *(v0 + 216) = v5;
      *v5 = v0;
      v5[1] = sub_1D128D9F4;

      return sub_1D128DCC8(v4);
    }

    goto LABEL_8;
  }

  (*(v0 + 200))(*(v0 + 152), v2, v1);
  sub_1D12927B4(&qword_1EC6098A0);
  if (sub_1D139011C())
  {
    v7 = *(v0 + 160);
    v8 = *(v0 + 128);
    v9 = *(*(v0 + 136) + 8);
    v9(*(v0 + 152), v8);
    v9(v7, v8);
    v3 = *(v0 + 48);
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_8:
    v10 = *(v0 + 64);
    sub_1D138F06C();

    v11 = v10;
    v12 = sub_1D138F0AC();
    v13 = sub_1D13907FC();

    if (os_log_type_enabled(v12, v13))
    {
      v15 = *(v0 + 136);
      v14 = *(v0 + 144);
      v16 = *(v0 + 128);
      v53 = *(v0 + 88);
      v17 = *(v0 + 72);
      v55 = *(v0 + 80);
      v57 = *(v0 + 96);
      v51 = *(v0 + 64);
      v18 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v59 = v52;
      *v18 = 136315650;
      *(v18 + 4) = sub_1D11DF718(*(v17 + 48), *(v17 + 56), &v59);
      *(v18 + 12) = 2080;
      v19 = [*(v17 + 16) identifier];
      sub_1D138D5CC();

      sub_1D12927B4(&qword_1EC60D1C0);
      v20 = sub_1D13915CC();
      v22 = v21;
      (*(v15 + 8))(v14, v16);
      v23 = sub_1D11DF718(v20, v22, &v59);

      *(v18 + 14) = v23;
      *(v18 + 22) = 2080;
      *(v0 + 40) = v51;
      v24 = v10;
      sub_1D1292328(0, &qword_1EE06B078, sub_1D10922EC);
      v25 = sub_1D13901EC();
      v27 = sub_1D11DF718(v25, v26, &v59);

      *(v18 + 24) = v27;
      _os_log_impl(&dword_1D101F000, v12, v13, "%s error logging in during upgrade of account %s: %s", v18, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1D38882F0](v52, -1, -1);
      MEMORY[0x1D38882F0](v18, -1, -1);

      (*(v53 + 8))(v57, v55);
    }

    else
    {
      v44 = *(v0 + 88);
      v43 = *(v0 + 96);
      v45 = *(v0 + 80);

      (*(v44 + 8))(v43, v45);
    }

    v46 = v10;
    if (!*(v0 + 64))
    {
      v46 = [objc_opt_self() hk:0 error:0 userInfo:?];
    }

    *(v0 + 224) = v46;
    sub_1D13905AC();
    v47 = v10;
    *(v0 + 232) = sub_1D139059C();
    v49 = sub_1D139055C();

    return MEMORY[0x1EEE6DFA0](sub_1D128DBA4, v49, v48);
  }

  sub_1D138F06C();

  v28 = sub_1D138F0AC();
  v29 = sub_1D139081C();

  v30 = os_log_type_enabled(v28, v29);
  v32 = *(v0 + 152);
  v31 = *(v0 + 160);
  v33 = *(v0 + 128);
  v34 = *(v0 + 136);
  v35 = *(v0 + 104);
  v37 = *(v0 + 80);
  v36 = *(v0 + 88);
  if (v30)
  {
    v58 = *(v0 + 160);
    v38 = *(v0 + 72);
    v56 = *(v0 + 152);
    v39 = swift_slowAlloc();
    v54 = v35;
    v40 = swift_slowAlloc();
    v59 = v40;
    *v39 = 136315138;
    *(v39 + 4) = sub_1D11DF718(*(v38 + 48), *(v38 + 56), &v59);
    _os_log_impl(&dword_1D101F000, v28, v29, "%s received the oauth completion notification but for a different login session state, will ignore and not attempt to replace the account", v39, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v40);
    MEMORY[0x1D38882F0](v40, -1, -1);
    MEMORY[0x1D38882F0](v39, -1, -1);

    (*(v36 + 8))(v54, v37);
    v41 = *(v34 + 8);
    v41(v56, v33);
    v42 = v58;
  }

  else
  {

    (*(v36 + 8))(v35, v37);
    v41 = *(v34 + 8);
    v41(v32, v33);
    v42 = v31;
  }

  v41(v42, v33);

  v50 = *(v0 + 8);

  return v50();
}

uint64_t sub_1D128D9F4()
{

  return MEMORY[0x1EEE6DFA0](sub_1D128DAF0, 0, 0);
}

uint64_t sub_1D128DAF0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D128DBA4()
{

  if (qword_1EE069ED0 != -1)
  {
    swift_once();
  }

  v1 = v0[28];
  v2 = v0[9];
  v3 = sub_1D1299A40(0, v1);
  [*(v2 + 32) presentViewController:v3 animated:1 completion:0];

  v4 = v0[1];

  return v4();
}

uint64_t sub_1D128DCC8(uint64_t a1)
{
  v2[9] = a1;
  v2[10] = v1;
  v3 = sub_1D138D5EC();
  v2[11] = v3;
  v2[12] = *(v3 - 8);
  v2[13] = swift_task_alloc();
  v4 = sub_1D138F0BC();
  v2[14] = v4;
  v2[15] = *(v4 - 8);
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  sub_1D13905AC();
  v2[19] = sub_1D139059C();
  v6 = sub_1D139055C();
  v2[20] = v6;
  v2[21] = v5;

  return MEMORY[0x1EEE6DFA0](sub_1D128DE30, v6, v5);
}

uint64_t sub_1D128DE30()
{
  v36 = v0;
  v1 = v0[9];
  sub_1D138F06C();

  v2 = v1;
  v3 = sub_1D138F0AC();
  v4 = sub_1D139081C();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[18];
  v7 = v0[14];
  v8 = v0[15];
  if (v5)
  {
    log = v3;
    v34 = v0[18];
    v32 = v4;
    v10 = v0[12];
    v9 = v0[13];
    v11 = v0[10];
    v12 = v0[11];
    v29 = v0[9];
    v13 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v35 = v31;
    *v13 = 136315650;
    *(v13 + 4) = sub_1D11DF718(*(v11 + 48), *(v11 + 56), &v35);
    *(v13 + 12) = 2080;
    v14 = [*(v11 + 16) identifier];
    sub_1D138D5CC();

    sub_1D12927B4(&qword_1EC60D1C0);
    v30 = v7;
    v15 = sub_1D13915CC();
    v17 = v16;
    v18 = *(v10 + 8);
    v18(v9, v12);
    v19 = sub_1D11DF718(v15, v17, &v35);

    *(v13 + 14) = v19;
    *(v13 + 22) = 2080;
    v20 = [v29 identifier];
    sub_1D138D5CC();

    v21 = sub_1D13915CC();
    v23 = v22;
    v18(v9, v12);
    v24 = sub_1D11DF718(v21, v23, &v35);

    *(v13 + 24) = v24;
    _os_log_impl(&dword_1D101F000, log, v32, "%s beginning to replace account %s with new account %s", v13, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1D38882F0](v31, -1, -1);
    MEMORY[0x1D38882F0](v13, -1, -1);

    v25 = *(v8 + 8);
    v25(v34, v30);
  }

  else
  {

    v25 = *(v8 + 8);
    v25(v6, v7);
  }

  v0[22] = v25;
  v26 = swift_task_alloc();
  v0[23] = v26;
  *v26 = v0;
  v26[1] = sub_1D128E148;
  v27 = v0[9];

  return sub_1D128EFB8(v27);
}

uint64_t sub_1D128E148(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 192) = a1;
  *(v4 + 200) = v1;

  v5 = *(v3 + 168);
  v6 = *(v3 + 160);
  if (v1)
  {
    v7 = sub_1D128E93C;
  }

  else
  {
    v7 = sub_1D128E28C;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, v5);
}
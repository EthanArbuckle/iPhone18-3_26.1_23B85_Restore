uint64_t sub_1D132C638()
{
  sub_1D132D55C(0, &qword_1EC60A5F0, MEMORY[0x1E6968FB0]);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = v45 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = v45 - v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = v45 - v8;
  v10 = OBJC_IVAR____TtC15HealthRecordsUI17AccountSourceCell_item;
  swift_beginAccess();
  sub_1D132D630(v0 + v10, v46, &qword_1EC60B620, sub_1D10A7254);
  if (!v47)
  {
    return sub_1D132D69C(v46, &qword_1EC60B620, sub_1D10A7254);
  }

  sub_1D10A7254();
  type metadata accessor for AccountSourceItem();
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
    return result;
  }

  v12 = v45[1];
  v13 = sub_1D132B0C0();
  [v13 fetchBrandable:*(v12 + 16) dataProvider:*(v12 + 24)];

  v14 = sub_1D132B154();
  v15 = [*(v12 + 16) title];
  if (!v15)
  {
    sub_1D139016C();
    v15 = sub_1D139012C();
  }

  [v14 setText_];

  v16 = sub_1D132B2C0();
  v17 = [*(v12 + 16) subtitle];
  if (v17)
  {
    goto LABEL_8;
  }

  v18 = [*(v12 + 16) provenance];
  v19 = [v18 signedClinicalDataIssuer];

  if (v19)
  {
    v17 = [v19 identifier];

LABEL_8:
    sub_1D139016C();

    v19 = sub_1D139012C();
  }

  [v16 setText_];

  v20 = OBJC_IVAR____TtC15HealthRecordsUI17AccountSourceCell____lazy_storage___subtitleLabel;
  v21 = [*(v0 + OBJC_IVAR____TtC15HealthRecordsUI17AccountSourceCell____lazy_storage___subtitleLabel) text];
  if (v21)
  {
  }

  else
  {
    [*(v0 + v20) removeFromSuperview];
  }

  v22 = sub_1D132B2CC();
  v23 = [*(v12 + 16) displayableSharingSinceTitle];
  [v22 setText_];

  v24 = OBJC_IVAR____TtC15HealthRecordsUI17AccountSourceCell____lazy_storage___detailLabel;
  v25 = [*(v0 + OBJC_IVAR____TtC15HealthRecordsUI17AccountSourceCell____lazy_storage___detailLabel) text];
  if (v25)
  {
  }

  else
  {
    [*(v0 + v24) removeFromSuperview];
  }

  v26 = [*(v12 + 16) gateway];
  if (v26)
  {
    v27 = v26;
    v28 = [v26 informationURL];

    if (v28)
    {
      sub_1D138D33C();

      v29 = 0;
    }

    else
    {
      v29 = 1;
    }

    v31 = sub_1D138D39C();
    (*(*(v31 - 8) + 56))(v6, v29, 1, v31);
    sub_1D10C7940(v6, v9);
  }

  else
  {
    v30 = sub_1D138D39C();
    (*(*(v30 - 8) + 56))(v9, 1, 1, v30);
  }

  v32 = OBJC_IVAR____TtC15HealthRecordsUI17AccountSourceCell_accountURL;
  swift_beginAccess();
  sub_1D132D5B0(v9, v0 + v32);
  swift_endAccess();
  v33 = MEMORY[0x1E6968FB0];
  sub_1D132D630(v0 + v32, v3, &qword_1EC60A5F0, MEMORY[0x1E6968FB0]);
  v34 = sub_1D138D39C();
  LODWORD(v32) = (*(*(v34 - 8) + 48))(v3, 1, v34);
  sub_1D132D69C(v3, &qword_1EC60A5F0, v33);
  if (v32 == 1)
  {
    v35 = sub_1D132B440();
    [v35 removeFromSuperview];
  }

  v36 = sub_1D132BC94();
  v37 = 12.0;
  [v36 setCustomSpacing:*(v0 + OBJC_IVAR____TtC15HealthRecordsUI17AccountSourceCell____lazy_storage___logoView) afterView:12.0];

  v38 = [*(v0 + v20) text];
  if (v38 || (v38 = [*(v0 + v24) text]) != 0)
  {

    v37 = 8.0;
  }

  [*(v0 + OBJC_IVAR____TtC15HealthRecordsUI17AccountSourceCell____lazy_storage___stackView) setCustomSpacing:*(v0 + OBJC_IVAR____TtC15HealthRecordsUI17AccountSourceCell____lazy_storage___titleLabel) afterView:v37];
  v39 = [*(v0 + v20) text];
  v40 = 12.0;
  if (v39)
  {

    v41 = [*(v0 + v24) text];
    if (v41)
    {

      v40 = 8.0;
    }
  }

  [*(v0 + OBJC_IVAR____TtC15HealthRecordsUI17AccountSourceCell____lazy_storage___stackView) setCustomSpacing:*(v0 + v20) afterView:v40];
  v42 = OBJC_IVAR____TtC15HealthRecordsUI17AccountSourceCell____lazy_storage___stackView;
  [*(v0 + OBJC_IVAR____TtC15HealthRecordsUI17AccountSourceCell____lazy_storage___stackView) setCustomSpacing:*(v0 + v24) afterView:12.0];
  v43 = *(v0 + v42);
  v44 = sub_1D132B440();
  [v43 setCustomSpacing:v44 afterView:24.0];

  sub_1D132CCA4();
}

void sub_1D132CCA4()
{
  v0 = sub_1D132B0C0();
  sub_1D10A5C9C(0, &qword_1EE06B560);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1D139EAB0;
  *(v1 + 32) = sub_1D139016C();
  *(v1 + 40) = v2;
  strcpy((v1 + 48), "ProviderLogo");
  *(v1 + 61) = 0;
  *(v1 + 62) = -5120;
  *(v1 + 64) = 0x6567616D69;
  *(v1 + 72) = 0xE500000000000000;
  v3 = sub_1D139044C();

  v4 = HKUIJoinStringsForAutomationIdentifier();

  [v0 setAccessibilityIdentifier_];
  v5 = sub_1D132B154();
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1D139E710;
  *(v6 + 32) = sub_1D139016C();
  *(v6 + 40) = v7;
  strcpy((v6 + 48), "ProviderName");
  *(v6 + 61) = 0;
  *(v6 + 62) = -5120;
  v8 = sub_1D139044C();

  v9 = HKUIJoinStringsForAutomationIdentifier();

  [v5 setAccessibilityIdentifier_];
  v10 = sub_1D132B2C0();
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1D139E710;
  *(v11 + 32) = sub_1D139016C();
  *(v11 + 40) = v12;
  strcpy((v11 + 48), "PatientPortal");
  *(v11 + 62) = -4864;
  v13 = sub_1D139044C();

  v14 = HKUIJoinStringsForAutomationIdentifier();

  [v10 setAccessibilityIdentifier_];
  v15 = sub_1D132B2CC();
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1D139E710;
  *(v16 + 32) = sub_1D139016C();
  *(v16 + 40) = v17;
  *(v16 + 48) = 0xD000000000000010;
  *(v16 + 56) = 0x80000001D13CCB90;
  v18 = sub_1D139044C();

  v19 = HKUIJoinStringsForAutomationIdentifier();

  [v15 setAccessibilityIdentifier_];
}

void sub_1D132CF9C()
{
  v9.receiver = v0;
  v9.super_class = type metadata accessor for AccountSourceCell();
  objc_msgSendSuper2(&v9, sel_prepareForReuse);
  v1 = sub_1D132B0C0();
  [v1 setImage_];

  v2 = sub_1D132B154();
  [v2 setText_];

  v3 = sub_1D132B2C0();
  [v3 setText_];

  v4 = sub_1D132B2CC();
  [v4 setText_];

  v5 = sub_1D132BC94();
  [v5 setCustomSpacing:*&v0[OBJC_IVAR____TtC15HealthRecordsUI17AccountSourceCell____lazy_storage___logoView] afterView:0.0];

  v6 = OBJC_IVAR____TtC15HealthRecordsUI17AccountSourceCell____lazy_storage___stackView;
  [*&v0[OBJC_IVAR____TtC15HealthRecordsUI17AccountSourceCell____lazy_storage___stackView] setCustomSpacing:*&v0[OBJC_IVAR____TtC15HealthRecordsUI17AccountSourceCell____lazy_storage___titleLabel] afterView:0.0];
  [*&v0[v6] setCustomSpacing:*&v0[OBJC_IVAR____TtC15HealthRecordsUI17AccountSourceCell____lazy_storage___subtitleLabel] afterView:0.0];
  [*&v0[v6] setCustomSpacing:*&v0[OBJC_IVAR____TtC15HealthRecordsUI17AccountSourceCell____lazy_storage___detailLabel] afterView:0.0];
  v7 = *&v0[v6];
  v8 = sub_1D132B440();
  [v7 setCustomSpacing:v8 afterView:0.0];
}

id sub_1D132D148()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AccountSourceCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for AccountSourceCell()
{
  result = qword_1EC60F8E0;
  if (!qword_1EC60F8E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D132D2AC()
{
  sub_1D132D55C(319, &qword_1EC60A5F0, MEMORY[0x1E6968FB0]);
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1D132D380@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC15HealthRecordsUI17AccountSourceCell_item;
  swift_beginAccess();
  return sub_1D132D630(v1 + v3, a1, &qword_1EC60B620, sub_1D10A7254);
}

uint64_t sub_1D132D3F4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15HealthRecordsUI17AccountSourceCell_item;
  swift_beginAccess();
  sub_1D10B1300(a1, v1 + v3);
  swift_endAccess();
  sub_1D132C638();
  return sub_1D132D69C(a1, &qword_1EC60B620, sub_1D10A7254);
}

uint64_t (*sub_1D132D47C(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1D132D4E0;
}

uint64_t sub_1D132D4E0(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return sub_1D132C638();
  }

  return result;
}

void sub_1D132D55C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t sub_1D132D5B0(uint64_t a1, uint64_t a2)
{
  sub_1D132D55C(0, &qword_1EC60A5F0, MEMORY[0x1E6968FB0]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D132D630(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_1D132D55C(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1D132D69C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_1D132D55C(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1D132D6F8(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

void sub_1D132D748()
{
  v1 = (v0 + OBJC_IVAR____TtC15HealthRecordsUI17AccountSourceCell_contentMargins);
  v2 = *MEMORY[0x1E69A4090];
  *v1 = 0x4034000000000000;
  v1[1] = v2;
  v1[2] = 0;
  v1[3] = v2;
  *(v0 + OBJC_IVAR____TtC15HealthRecordsUI17AccountSourceCell____lazy_storage___logoView) = 0;
  *(v0 + OBJC_IVAR____TtC15HealthRecordsUI17AccountSourceCell____lazy_storage___titleLabel) = 0;
  *(v0 + OBJC_IVAR____TtC15HealthRecordsUI17AccountSourceCell____lazy_storage___subtitleLabel) = 0;
  *(v0 + OBJC_IVAR____TtC15HealthRecordsUI17AccountSourceCell____lazy_storage___detailLabel) = 0;
  *(v0 + OBJC_IVAR____TtC15HealthRecordsUI17AccountSourceCell____lazy_storage___webLinkButton) = 0;
  *(v0 + OBJC_IVAR____TtC15HealthRecordsUI17AccountSourceCell____lazy_storage___stackView) = 0;
  v3 = OBJC_IVAR____TtC15HealthRecordsUI17AccountSourceCell_accountURL;
  v4 = sub_1D138D39C();
  (*(*(v4 - 8) + 56))(v0 + v3, 1, 1, v4);
  v5 = v0 + OBJC_IVAR____TtC15HealthRecordsUI17AccountSourceCell_item;
  *v5 = 0u;
  *(v5 + 16) = 0u;
  *(v5 + 32) = 0;
  sub_1D13913BC();
  __break(1u);
}

uint64_t HKConcept.displayName.getter()
{
  v1 = [v0 localizedPreferredName];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1D139016C();

  return v3;
}

uint64_t HKMedicalUserDomainConcept.uniqueIdentifier.getter()
{
  v1 = sub_1D138D5EC();
  v2 = *(v1 - 8);
  *&v3 = MEMORY[0x1EEE9AC00](v1).n128_u64[0];
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [v0 UUID];
  sub_1D138D5CC();

  v7 = sub_1D138D59C();
  (*(v2 + 8))(v5, v1);
  return v7;
}

uint64_t HKConcept.uniqueIdentifier.getter()
{
  v1 = [v0 identifier];
  v2 = [v1 numberRepresentation];

  v3 = [v2 description];
  v4 = sub_1D139016C();

  return v4;
}

uint64_t sub_1D132DA78()
{
  v1 = [*v0 localizedPreferredName];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1D139016C();

  return v3;
}

uint64_t sub_1D132DB28()
{
  v1 = [*v0 identifier];
  v2 = [v1 numberRepresentation];

  v3 = [v2 description];
  v4 = sub_1D139016C();

  return v4;
}

uint64_t HKMedicalUserDomainConcept.displayName.getter()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 preferredLocalizations];

  v2 = sub_1D139045C();
  countAndFlagsBits = HKMedicalUserDomainConcept.localizedOntologyPreferredName(given:)(v2)._countAndFlagsBits;

  return countAndFlagsBits;
}

uint64_t sub_1D132DC68()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 preferredLocalizations];

  v2 = sub_1D139045C();
  countAndFlagsBits = HKMedicalUserDomainConcept.localizedOntologyPreferredName(given:)(v2)._countAndFlagsBits;

  return countAndFlagsBits;
}

uint64_t sub_1D132DD08()
{
  v1 = sub_1D138D5EC();
  v2 = *(v1 - 8);
  *&v3 = MEMORY[0x1EEE9AC00](v1).n128_u64[0];
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [*v0 UUID];
  sub_1D138D5CC();

  v7 = sub_1D138D59C();
  (*(v2 + 8))(v5, v1);
  return v7;
}

void HKMedicalRecord.conceptForChart.getter(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = [v1 primaryConcept];
  v5 = [v4 chartedWithConcept];

  if (!v5)
  {
    v5 = [v2 primaryConcept];
  }

  v6 = [v5 identifier];
  v7 = [v6 numberRepresentation];

  v8 = [v7 description];
  v9 = sub_1D139016C();
  v11 = v10;

  v12 = [v5 localizedPreferredName];
  if (v12)
  {
    v13 = v12;
    v14 = sub_1D139016C();
    v16 = v15;
  }

  else
  {
    v14 = 0;
    v16 = 0xE000000000000000;
  }

  v17 = [v5 chartsBloodPressure];
  v18 = [v5 hidesOutOfRangeFilter];

  *a1 = v9;
  *(a1 + 8) = v11;
  *(a1 + 16) = 0;
  *(a1 + 24) = v14;
  *(a1 + 32) = v16;
  *(a1 + 40) = v17;
  *(a1 + 41) = v18;
}

id sub_1D132DFD0()
{
  v1 = [*v0 chartableCodedQuantitySet];

  return v1;
}

id HKDiagnosticTestResult.chartableCodedQuantitySet()()
{
  v41[1] = *MEMORY[0x1E69E9840];
  v1 = sub_1D138F0BC();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D138D57C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v10 = MEMORY[0x1EEE9AC00](v9).n128_u64[0];
  v12 = &v36 - v11;
  result = [v0 value];
  if (result)
  {
    v14 = result;
    v15 = [result inspectableValue];

    if (v15)
    {
      if ([v0 isDateLess])
      {
      }

      else
      {
        v36 = v2;
        v37 = v1;
        v16 = [v0 diagnosticTestCodingCollection];
        v17 = [v16 codings];

        if (!v17)
        {
          sub_1D132E508();
          sub_1D139045C();
          v17 = sub_1D139044C();
        }

        v18 = [v0 referenceRanges];
        v19 = objc_allocWithZone(MEMORY[0x1E696C008]);
        v20 = v15;
        v21 = [v19 initWithCodings:v17 value:v20 referenceRanges:v18];

        v22 = [v0 sortDate];
        v23 = [v22 date];

        sub_1D138D52C();
        Date.medicalDateAdjustedToCurrentCalendar()(v12);
        v24 = *(v6 + 8);
        v24(v8, v5);
        v25 = sub_1D138D4EC();
        v39 = 0;
        v26 = [v21 chartableCodedQuantitySetWithDate:v25 error:&v39];

        v27 = v39;
        if (v26)
        {
          v24(v12, v5);

          return v26;
        }

        v28 = v27;
        v29 = sub_1D138D2BC();

        swift_willThrow();
        v24(v12, v5);
        sub_1D138F07C();
        v30 = v29;
        v31 = sub_1D138F0AC();
        v32 = sub_1D13907FC();

        if (os_log_type_enabled(v31, v32))
        {
          v33 = swift_slowAlloc();
          v34 = swift_slowAlloc();
          v41[0] = v34;
          *v33 = 136446210;
          v39 = 0;
          v40 = 0xE000000000000000;
          v38 = v29;
          sub_1D10922EC();
          sub_1D139133C();
          v35 = sub_1D11DF718(v39, v40, v41);

          *(v33 + 4) = v35;
          _os_log_impl(&dword_1D101F000, v31, v32, "%{public}s", v33, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v34);
          MEMORY[0x1D38882F0](v34, -1, -1);
          MEMORY[0x1D38882F0](v33, -1, -1);
        }

        else
        {
        }

        (*(v36 + 8))(v4, v37);
      }
    }

    return 0;
  }

  return result;
}

unint64_t sub_1D132E508()
{
  result = qword_1EC609D38;
  if (!qword_1EC609D38)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC609D38);
  }

  return result;
}

id sub_1D132E554(void *a1)
{
  v1 = a1;
  v2 = HKDiagnosticTestResult.chartableCodedQuantitySet()();

  return v2;
}

uint64_t AttachmentSearchItem.reuseIdentifier.getter()
{
  type metadata accessor for AttachmentSearchCell();
  sub_1D13311D0(&qword_1EC60F8F0, v0, type metadata accessor for AttachmentSearchCell);
  return sub_1D138DECC();
}

uint64_t AttachmentSearchItem.uniqueIdentifier.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

id sub_1D132E6A4()
{
  if (!*(v0 + OBJC_IVAR____TtC15HealthRecordsUI20AttachmentSearchItem_previewString + 8) || !*(*(v0 + OBJC_IVAR____TtC15HealthRecordsUI20AttachmentSearchItem_previewStringMatchRanges) + 16))
  {
    return 0;
  }

  v25 = *(v0 + OBJC_IVAR____TtC15HealthRecordsUI20AttachmentSearchItem_previewStringMatchRanges);
  v1 = objc_allocWithZone(MEMORY[0x1E696AD40]);
  v2 = sub_1D139012C();
  v3 = [v1 initWithString_];

  sub_1D133110C(0, &qword_1EC60F520, sub_1D106F814, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D139E700;
  v5 = *MEMORY[0x1E69DB648];
  *(inited + 32) = *MEMORY[0x1E69DB648];
  v6 = sub_1D106F934(0, &qword_1EC60E670);
  v23 = v5;
  v7 = sub_1D1390C6C();
  *(inited + 64) = v6;
  *(inited + 40) = v7;
  sub_1D109B2B4(inited);
  swift_setDeallocating();
  sub_1D1331170(inited + 32, sub_1D106F814);
  type metadata accessor for Key(0);
  sub_1D13311D0(&qword_1EC60F530, 255, type metadata accessor for Key);
  v8 = sub_1D138FFEC();

  v9 = v3;
  [v9 addAttributes:v8 range:{0, objc_msgSend(v9, sel_length)}];

  v10 = sub_1D1390C6C();
  v11 = swift_initStackObject();
  *(v11 + 16) = xmmword_1D139E710;
  v12 = *MEMORY[0x1E69DB650];
  *(v11 + 32) = *MEMORY[0x1E69DB650];
  v13 = objc_opt_self();
  v14 = v12;
  v15 = [v13 labelColor];
  v16 = sub_1D106F934(0, &qword_1EE06B6E0);
  *(v11 + 40) = v15;
  *(v11 + 64) = v16;
  *(v11 + 72) = v23;
  *(v11 + 104) = v6;
  *(v11 + 80) = v10;
  v24 = v10;
  sub_1D109B2B4(v11);
  swift_setDeallocating();
  sub_1D106F814();
  swift_arrayDestroy();
  v17 = *(v25 + 16);
  if (v17)
  {
    v18 = (v25 + 40);
    do
    {
      v19 = *(v18 - 1);
      v20 = *v18;
      v21 = sub_1D138FFEC();
      [v9 setAttributes:v21 range:{v19, v20, v24}];

      v18 += 2;
      --v17;
    }

    while (v17);
  }

  return v9;
}

void *AttachmentSearchItem.__allocating_init(name:previewString:previewStringMatchRanges:record:attachmentUUID:profile:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8)
{
  v48 = a7;
  v49 = a8;
  v41 = a2;
  v42 = a6;
  v46 = a4;
  v47 = a5;
  v45 = a3;
  v40 = a1;
  sub_1D133110C(0, &qword_1EE06B500, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v43 = &v39 - v9;
  v10 = sub_1D138D57C();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v39 - v15;
  v17 = sub_1D138D5EC();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v39 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = swift_allocObject();
  sub_1D138D5DC();
  v22 = sub_1D138D59C();
  v24 = v23;
  v25 = *(v18 + 8);
  v44 = v17;
  v25(v20, v17);
  v21[2] = v22;
  v21[3] = v24;
  v26 = v41;
  v27 = v42;
  v21[4] = v40;
  v21[5] = v26;
  v28 = [v27 meaningfulDate];
  if (v28)
  {
    v29 = v28;
    sub_1D138D52C();

    v30 = *(v11 + 32);
    v31 = v43;
    v30(v43, v13, v10);
    (*(v11 + 56))(v31, 0, 1, v10);
    v30(v16, v31, v10);
  }

  else
  {
    v32 = v43;
    (*(v11 + 56))(v43, 1, 1, v10);
    v33 = [v27 sortDate];
    v34 = [v33 date];

    sub_1D138D52C();
    if ((*(v11 + 48))(v32, 1, v10) != 1)
    {
      sub_1D13310AC(v32, &qword_1EE06B500, MEMORY[0x1E6969530], MEMORY[0x1E69E6720], sub_1D133110C);
    }
  }

  (*(v11 + 32))(v21 + OBJC_IVAR____TtC15HealthRecordsUI20AttachmentSearchItem_date, v16, v10);
  HKMedicalRecord.categoryKind.getter(&v50);
  *(v21 + OBJC_IVAR____TtC15HealthRecordsUI20AttachmentSearchItem_categoryKind) = v50;
  v35 = (v21 + OBJC_IVAR____TtC15HealthRecordsUI20AttachmentSearchItem_previewString);
  v36 = v46;
  *v35 = v45;
  v35[1] = v36;
  v37 = v48;
  *(v21 + OBJC_IVAR____TtC15HealthRecordsUI20AttachmentSearchItem_previewStringMatchRanges) = v47;
  *(v21 + OBJC_IVAR____TtC15HealthRecordsUI20AttachmentSearchItem_record) = v27;
  (*(v18 + 32))(v21 + OBJC_IVAR____TtC15HealthRecordsUI20AttachmentSearchItem_attachmentUUID, v37, v44);
  *(v21 + OBJC_IVAR____TtC15HealthRecordsUI20AttachmentSearchItem_profile) = v49;
  return v21;
}

void *AttachmentSearchItem.init(name:previewString:previewStringMatchRanges:record:attachmentUUID:profile:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v49 = a7;
  v50 = a8;
  v42 = a2;
  v43 = a6;
  v47 = a4;
  v48 = a5;
  v46 = a3;
  v41 = a1;
  sub_1D133110C(0, &qword_1EE06B500, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v44 = &v40 - v11;
  v12 = sub_1D138D57C();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v40 - v17;
  v19 = sub_1D138D5EC();
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v40 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D138D5DC();
  v23 = sub_1D138D59C();
  v25 = v24;
  v26 = *(v20 + 8);
  v45 = v19;
  v26(v22, v19);
  v9[2] = v23;
  v9[3] = v25;
  v27 = v42;
  v28 = v43;
  v9[4] = v41;
  v9[5] = v27;
  v29 = [v28 meaningfulDate];
  if (v29)
  {
    v30 = v29;
    sub_1D138D52C();

    v31 = *(v13 + 32);
    v32 = v44;
    v31(v44, v15, v12);
    (*(v13 + 56))(v32, 0, 1, v12);
    v31(v18, v32, v12);
  }

  else
  {
    v33 = v44;
    (*(v13 + 56))(v44, 1, 1, v12);
    v34 = [v28 sortDate];
    v35 = [v34 date];

    sub_1D138D52C();
    if ((*(v13 + 48))(v33, 1, v12) != 1)
    {
      sub_1D13310AC(v33, &qword_1EE06B500, MEMORY[0x1E6969530], MEMORY[0x1E69E6720], sub_1D133110C);
    }
  }

  (*(v13 + 32))(v9 + OBJC_IVAR____TtC15HealthRecordsUI20AttachmentSearchItem_date, v18, v12);
  HKMedicalRecord.categoryKind.getter(&v51);
  *(v9 + OBJC_IVAR____TtC15HealthRecordsUI20AttachmentSearchItem_categoryKind) = v51;
  v36 = (v9 + OBJC_IVAR____TtC15HealthRecordsUI20AttachmentSearchItem_previewString);
  v37 = v47;
  *v36 = v46;
  v36[1] = v37;
  v38 = v49;
  *(v9 + OBJC_IVAR____TtC15HealthRecordsUI20AttachmentSearchItem_previewStringMatchRanges) = v48;
  *(v9 + OBJC_IVAR____TtC15HealthRecordsUI20AttachmentSearchItem_record) = v28;
  (*(v20 + 32))(v9 + OBJC_IVAR____TtC15HealthRecordsUI20AttachmentSearchItem_attachmentUUID, v38, v45);
  *(v9 + OBJC_IVAR____TtC15HealthRecordsUI20AttachmentSearchItem_profile) = v50;
  return v9;
}

uint64_t AttachmentSearchItem.deinit()
{

  v1 = OBJC_IVAR____TtC15HealthRecordsUI20AttachmentSearchItem_date;
  v2 = sub_1D138D57C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = OBJC_IVAR____TtC15HealthRecordsUI20AttachmentSearchItem_attachmentUUID;
  v4 = sub_1D138D5EC();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return v0;
}

uint64_t AttachmentSearchItem.__deallocating_deinit()
{
  AttachmentSearchItem.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1D132F430()
{
  type metadata accessor for AttachmentSearchCell();
  sub_1D13311D0(&qword_1EC60F8F0, v0, type metadata accessor for AttachmentSearchCell);
  return sub_1D138DECC();
}

uint64_t sub_1D132F494(uint64_t a1)
{
  v2 = sub_1D13311D0(&qword_1EC60F940, 255, type metadata accessor for AttachmentSearchItem);

  return MEMORY[0x1EEE0DA58](a1, v2);
}

id sub_1D132F514()
{
  v1 = OBJC_IVAR____TtC15HealthRecordsUI20AttachmentSearchCell____lazy_storage___titleView;
  v2 = *(v0 + OBJC_IVAR____TtC15HealthRecordsUI20AttachmentSearchCell____lazy_storage___titleView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC15HealthRecordsUI20AttachmentSearchCell____lazy_storage___titleView);
  }

  else
  {
    v4 = [objc_allocWithZone(type metadata accessor for ConceptFeedItemTitleView()) initWithFrame_];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_1D132F598()
{
  v1 = OBJC_IVAR____TtC15HealthRecordsUI20AttachmentSearchCell____lazy_storage___previewLabel;
  v2 = *(v0 + OBJC_IVAR____TtC15HealthRecordsUI20AttachmentSearchCell____lazy_storage___previewLabel);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC15HealthRecordsUI20AttachmentSearchCell____lazy_storage___previewLabel);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
    [v4 setNumberOfLines_];
    v5 = [objc_opt_self() secondaryLabelColor];
    [v4 setTextColor_];

    [v4 setLineBreakMode_];
    [v4 setTranslatesAutoresizingMaskIntoConstraints_];
    v6 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

id sub_1D132F684()
{
  v1 = OBJC_IVAR____TtC15HealthRecordsUI20AttachmentSearchCell____lazy_storage___titleLabelBottomConstraint;
  v2 = *&v0[OBJC_IVAR____TtC15HealthRecordsUI20AttachmentSearchCell____lazy_storage___titleLabelBottomConstraint];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC15HealthRecordsUI20AttachmentSearchCell____lazy_storage___titleLabelBottomConstraint];
  }

  else
  {
    v4 = [v0 contentView];
    v5 = [v4 safeAreaLayoutGuide];

    v6 = [v5 bottomAnchor];
    v7 = sub_1D132F514();
    v8 = [v7 bottomAnchor];

    v9 = [v6 constraintEqualToAnchor:v8 constant:13.0];
    v10 = *&v0[v1];
    *&v0[v1] = v9;
    v3 = v9;

    v2 = 0;
  }

  v11 = v2;
  return v3;
}

uint64_t sub_1D132F78C()
{
  v1 = OBJC_IVAR____TtC15HealthRecordsUI20AttachmentSearchCell____lazy_storage___previewLabelConstraints;
  if (*&v0[OBJC_IVAR____TtC15HealthRecordsUI20AttachmentSearchCell____lazy_storage___previewLabelConstraints])
  {
    v2 = *&v0[OBJC_IVAR____TtC15HealthRecordsUI20AttachmentSearchCell____lazy_storage___previewLabelConstraints];
  }

  else
  {
    sub_1D106F424();
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_1D139F5B0;
    v3 = sub_1D132F598();
    v4 = [v3 topAnchor];

    v5 = sub_1D132F514();
    v6 = [v5 bottomAnchor];

    v7 = [v4 constraintEqualToAnchor:v6 constant:12.0];
    *(v2 + 32) = v7;
    v8 = OBJC_IVAR____TtC15HealthRecordsUI20AttachmentSearchCell____lazy_storage___previewLabel;
    v9 = [*&v0[OBJC_IVAR____TtC15HealthRecordsUI20AttachmentSearchCell____lazy_storage___previewLabel] leadingAnchor];
    v10 = [v0 contentView];
    v11 = [v10 safeAreaLayoutGuide];

    v12 = [v11 leadingAnchor];
    v13 = [v9 constraintEqualToAnchor:v12 constant:16.0];

    *(v2 + 40) = v13;
    v14 = [v0 contentView];
    v15 = [v14 safeAreaLayoutGuide];

    v16 = [v15 trailingAnchor];
    v17 = [*&v0[v8] trailingAnchor];
    v18 = [v16 constraintEqualToAnchor:v17 constant:16.0];

    *(v2 + 48) = v18;
    v19 = [v0 contentView];
    v20 = [v19 bottomAnchor];

    v21 = [*&v0[v8] bottomAnchor];
    v22 = [v20 constraintEqualToAnchor:v21 constant:11.0];

    *(v2 + 56) = v22;
    *&v0[v1] = v2;
  }

  return v2;
}

uint64_t AttachmentSearchCell.item.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC15HealthRecordsUI20AttachmentSearchCell_item;
  swift_beginAccess();
  return sub_1D10A71C0(v1 + v3, a1);
}

uint64_t sub_1D132FAA8(uint64_t a1, uint64_t *a2)
{
  sub_1D10A71C0(a1, v7);
  v3 = *a2;
  v4 = OBJC_IVAR____TtC15HealthRecordsUI20AttachmentSearchCell_item;
  swift_beginAccess();
  v5 = MEMORY[0x1E69A3348];
  sub_1D10DC970(v7, v3 + v4, &qword_1EC60B620, &qword_1EC60A3D0);
  swift_endAccess();
  sub_1D132FC24();
  return sub_1D13310AC(v7, &qword_1EC60B620, &qword_1EC60A3D0, v5, sub_1D10DC698);
}

uint64_t AttachmentSearchCell.item.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15HealthRecordsUI20AttachmentSearchCell_item;
  swift_beginAccess();
  v4 = MEMORY[0x1E69A3348];
  sub_1D10DC970(a1, v1 + v3, &qword_1EC60B620, &qword_1EC60A3D0);
  swift_endAccess();
  sub_1D132FC24();
  return sub_1D13310AC(a1, &qword_1EC60B620, &qword_1EC60A3D0, v4, sub_1D10DC698);
}

uint64_t sub_1D132FC24()
{
  v1 = sub_1D138D42C();
  v43 = *(v1 - 8);
  v44 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v36 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1D138D44C();
  v41 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D138D45C();
  v42 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v36 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v36 - v14;
  v16 = type metadata accessor for BrowseCategory();
  MEMORY[0x1EEE9AC00](v16);
  v45 = &v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = OBJC_IVAR____TtC15HealthRecordsUI20AttachmentSearchCell_item;
  swift_beginAccess();
  sub_1D10A71C0(v0 + v18, v47);
  if (!v48)
  {
    return sub_1D13310AC(v47, &qword_1EC60B620, &qword_1EC60A3D0, MEMORY[0x1E69A3348], sub_1D10DC698);
  }

  sub_1D1080EA4(0, &qword_1EC60A3D0);
  type metadata accessor for AttachmentSearchItem();
  result = swift_dynamicCast();
  if (result)
  {
    v20 = v46;
    *v45 = *(v46 + OBJC_IVAR____TtC15HealthRecordsUI20AttachmentSearchItem_categoryKind);
    swift_storeEnumTagMultiPayload();
    v40 = v0;
    v21 = sub_1D132F514();
    v38 = *(v20 + 32);
    v39 = v21;
    v37 = *(v20 + 40);

    MEMORY[0x1D38827C0](v22);
    sub_1D138D43C();
    sub_1D138D40C();
    (*(v41 + 8))(v6, v4);
    v23 = *(v42 + 8);
    v23(v9, v7);
    sub_1D138D41C();
    sub_1D138D3FC();
    (*(v43 + 8))(v3, v44);
    v23(v12, v7);
    sub_1D13311D0(&qword_1EC60F948, 255, MEMORY[0x1E6969328]);
    sub_1D138D55C();
    v23(v15, v7);
    v24 = v47[0];
    v25 = v47[1];
    v26 = BrowseCategory.systemImage.getter();
    v27 = BrowseCategory.tintColorForTemplateImage.getter();
    v48 = &type metadata for AttachmentSearchFeedItemViewData;
    v49 = &off_1F4D14248;
    v28 = swift_allocObject();
    v47[0] = v28;
    v29 = v37;
    v28[2] = v38;
    v28[3] = v29;
    v28[4] = v24;
    v28[5] = v25;
    v28[6] = v26;
    v28[7] = v27;
    v30 = OBJC_IVAR____TtC15HealthRecordsUI24ConceptFeedItemTitleView_viewData;
    v31 = v39;
    swift_beginAccess();
    sub_1D10DC970(v47, v31 + v30, &qword_1EC60A4D0, &qword_1EC60A4D8);
    swift_endAccess();
    sub_1D10B9714();

    sub_1D13310AC(v47, &qword_1EC60A4D0, &qword_1EC60A4D8, &protocol descriptor for ConceptTitleViewContentProviding, sub_1D10DC698);
    v32 = sub_1D132E6A4();
    v33 = v32;
    if (v32)
    {
    }

    sub_1D13301AC(v33 != 0);
    v34 = sub_1D132F598();
    v35 = sub_1D132E6A4();
    [v34 setAttributedText_];

    return sub_1D1331170(v45, type metadata accessor for BrowseCategory);
  }

  return result;
}

id sub_1D13301AC(char a1)
{
  v3 = objc_opt_self();
  v4 = OBJC_IVAR____TtC15HealthRecordsUI20AttachmentSearchCell_customConstraints;
  sub_1D106F934(0, &qword_1EC609690);

  v5 = sub_1D139044C();

  [v3 deactivateConstraints_];

  if (a1)
  {
    v6 = sub_1D132F78C();
  }

  else
  {
    sub_1D106F424();
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_1D139E810;
    *(v6 + 32) = sub_1D132F684();
  }

  *&v1[v4] = v6;

  v7 = sub_1D139044C();

  [v3 activateConstraints_];

  return [v1 setNeedsLayout];
}

uint64_t (*AttachmentSearchCell.item.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1D1330350;
}

uint64_t sub_1D1330350(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return sub_1D132FC24();
  }

  return result;
}

id AttachmentSearchCell.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

char *AttachmentSearchCell.init(frame:)(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  *&v4[OBJC_IVAR____TtC15HealthRecordsUI20AttachmentSearchCell____lazy_storage___titleView] = 0;
  *&v4[OBJC_IVAR____TtC15HealthRecordsUI20AttachmentSearchCell____lazy_storage___previewLabel] = 0;
  *&v4[OBJC_IVAR____TtC15HealthRecordsUI20AttachmentSearchCell_customConstraints] = MEMORY[0x1E69E7CC0];
  *&v4[OBJC_IVAR____TtC15HealthRecordsUI20AttachmentSearchCell____lazy_storage___titleLabelBottomConstraint] = 0;
  *&v4[OBJC_IVAR____TtC15HealthRecordsUI20AttachmentSearchCell____lazy_storage___previewLabelConstraints] = 0;
  v10 = &v4[OBJC_IVAR____TtC15HealthRecordsUI20AttachmentSearchCell_item];
  *v10 = 0u;
  *(v10 + 1) = 0u;
  *(v10 + 4) = 0;
  v39.receiver = v4;
  v39.super_class = ObjectType;
  v11 = objc_msgSendSuper2(&v39, sel_initWithFrame_, a1, a2, a3, a4);
  v12 = [v11 contentView];
  v13 = sub_1D132F514();
  [v12 addSubview_];

  v14 = v11;
  v15 = [v14 contentView];
  v16 = sub_1D132F598();
  [v15 addSubview_];

  v17 = [objc_opt_self() secondarySystemGroupedBackgroundColor];
  [v14 setBackgroundColor_];

  sub_1D138D84C();
  sub_1D1390C8C();
  v18 = objc_opt_self();
  sub_1D106F424();
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1D139E6F0;
  v20 = OBJC_IVAR____TtC15HealthRecordsUI20AttachmentSearchCell____lazy_storage___titleView;
  v21 = [*&v14[OBJC_IVAR____TtC15HealthRecordsUI20AttachmentSearchCell____lazy_storage___titleView] leadingAnchor];
  v22 = [v14 contentView];
  v23 = [v22 leadingAnchor];

  v24 = [v21 constraintEqualToAnchor_];
  *(v19 + 32) = v24;
  v25 = [*&v14[v20] topAnchor];
  v26 = [v14 contentView];
  v27 = [v26 topAnchor];

  v28 = [v25 constraintEqualToAnchor_];
  *(v19 + 40) = v28;
  v29 = [*&v14[v20] trailingAnchor];
  v30 = [v14 contentView];

  v31 = [v30 trailingAnchor];
  v32 = [v29 constraintEqualToAnchor_];

  *(v19 + 48) = v32;
  sub_1D106F934(0, &qword_1EC609690);
  v33 = sub_1D139044C();

  [v18 activateConstraints_];

  v34 = OBJC_IVAR____TtC15HealthRecordsUI20AttachmentSearchCell_customConstraints;

  v35 = sub_1D139044C();

  [v18 deactivateConstraints_];

  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_1D139E810;
  *(v36 + 32) = sub_1D132F684();
  *&v14[v34] = v36;

  v37 = sub_1D139044C();

  [v18 activateConstraints_];

  [v14 setNeedsLayout];
  return v14;
}

id AttachmentSearchCell.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1D13309A4@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC15HealthRecordsUI20AttachmentSearchCell_item;
  swift_beginAccess();
  return sub_1D10A71C0(v1 + v3, a1);
}

uint64_t sub_1D13309FC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15HealthRecordsUI20AttachmentSearchCell_item;
  swift_beginAccess();
  v4 = MEMORY[0x1E69A3348];
  sub_1D10DC970(a1, v1 + v3, &qword_1EC60B620, &qword_1EC60A3D0);
  swift_endAccess();
  sub_1D132FC24();
  return sub_1D13310AC(a1, &qword_1EC60B620, &qword_1EC60A3D0, v4, sub_1D10DC698);
}

uint64_t (*sub_1D1330AB4(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1D1330350;
}

void sub_1D1330B50(void *a1)
{
  v3 = type metadata accessor for PresentationContext(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v21 - v7;
  v9 = OBJC_IVAR____TtC15HealthRecordsUI20AttachmentSearchCell_item;
  swift_beginAccess();
  sub_1D10A71C0(v1 + v9, v22);
  if (v23)
  {
    sub_1D1080EA4(0, &qword_1EC60A3D0);
    type metadata accessor for AttachmentSearchItem();
    if (swift_dynamicCast())
    {
      v10 = v21[1];
      if (qword_1EE069ED0 != -1)
      {
        swift_once();
      }

      v11 = *(v10 + OBJC_IVAR____TtC15HealthRecordsUI20AttachmentSearchItem_record);
      v12 = *(v10 + OBJC_IVAR____TtC15HealthRecordsUI20AttachmentSearchItem_profile);
      v13 = OBJC_IVAR____TtC15HealthRecordsUI20AttachmentSearchItem_attachmentUUID;
      v14 = sub_1D138D5EC();
      v15 = *(v14 - 8);
      (*(v15 + 16))(v8, v10 + v13, v14);
      (*(v15 + 56))(v8, 0, 1, v14);
      sub_1D13124B0(v8, v5);
      v16 = objc_allocWithZone(type metadata accessor for MedicalRecordDetailViewController(0));
      v17 = v11;
      v18 = v12;
      v19 = sub_1D131237C(v17, v18, v5);

      v20 = [v19 navigationItem];
      [v20 setLargeTitleDisplayMode_];

      sub_1D1331170(v8, type metadata accessor for PresentationContext);
      [a1 showViewController:v19 sender:0];
    }
  }

  else
  {
    sub_1D13310AC(v22, &qword_1EC60B620, &qword_1EC60A3D0, MEMORY[0x1E69A3348], sub_1D10DC698);
  }
}

uint64_t type metadata accessor for AttachmentSearchItem()
{
  result = qword_1EC60F930;
  if (!qword_1EC60F930)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D1330EC4()
{
  result = sub_1D138D57C();
  if (v1 <= 0x3F)
  {
    result = sub_1D138D5EC();
    if (v2 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

void sub_1D1330FF4()
{
  *(v0 + OBJC_IVAR____TtC15HealthRecordsUI20AttachmentSearchCell____lazy_storage___titleView) = 0;
  *(v0 + OBJC_IVAR____TtC15HealthRecordsUI20AttachmentSearchCell____lazy_storage___previewLabel) = 0;
  *(v0 + OBJC_IVAR____TtC15HealthRecordsUI20AttachmentSearchCell_customConstraints) = MEMORY[0x1E69E7CC0];
  *(v0 + OBJC_IVAR____TtC15HealthRecordsUI20AttachmentSearchCell____lazy_storage___titleLabelBottomConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC15HealthRecordsUI20AttachmentSearchCell____lazy_storage___previewLabelConstraints) = 0;
  v1 = v0 + OBJC_IVAR____TtC15HealthRecordsUI20AttachmentSearchCell_item;
  *v1 = 0u;
  *(v1 + 16) = 0u;
  *(v1 + 32) = 0;
  sub_1D13913BC();
  __break(1u);
}

uint64_t sub_1D13310AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5(0);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

void sub_1D133110C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1D1331170(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D13311D0(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

id sub_1D1331228()
{
  v1 = sub_1D138D57C();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x1EEE9AC00](v1);
  v5 = v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v3);
  v8 = v40 - v7;
  MEMORY[0x1EEE9AC00](v6);
  v10 = v40 - v9;
  v11 = [v0 expirationDate];
  if (!v11 || (v12 = v11, sub_1D138D52C(), v12, (*(v2 + 32))(v10, v8, v1), sub_1D138D53C(), v13 = sub_1D138D50C(), v14 = *(v2 + 8), v14(v5, v1), v14(v10, v1), (v13 & 1) == 0))
  {
    v16 = [v0 signatureStatus];
    if (v16 <= 1)
    {
      if (v16 == 1)
      {
        if (qword_1EC608CD0 == -1)
        {
          goto LABEL_14;
        }

        goto LABEL_26;
      }

LABEL_13:
      if (qword_1EC608CD0 == -1)
      {
LABEL_14:
        sub_1D138D1CC();
        v22 = 0;
        goto LABEL_15;
      }

LABEL_26:
      swift_once();
      goto LABEL_14;
    }

    if (v16 == 2)
    {
      if (qword_1EC608CD0 != -1)
      {
        swift_once();
      }

      v17 = sub_1D138D1CC();
      v19 = v25;
      v20 = sub_1D139012C();
      v21 = &selRef_systemGreenColor;
    }

    else
    {
      if (v16 != 3)
      {
        goto LABEL_13;
      }

      if (qword_1EC608CD0 != -1)
      {
        swift_once();
      }

      v17 = sub_1D138D1CC();
      v19 = v18;
      v20 = sub_1D139012C();
      v21 = &selRef_systemRedColor;
    }

    v26 = [objc_opt_self() systemImageNamed_];

    v22 = [objc_opt_self() *v21];
    if (v26)
    {
      v27 = [v26 imageWithRenderingMode_];
      v28 = [objc_opt_self() textAttachmentWithImage_];

      sub_1D106F934(0, &qword_1EC60C410);
      v15 = [swift_getObjCClassFromMetadata() attributedStringWithAttachment_];
      v40[10] = 9011426;
      v40[11] = 0xA300000000000000;
      MEMORY[0x1D3885C10](v17, v19);

      v29 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
      v30 = sub_1D139012C();

      v31 = [v29 initWithString_];

      if (v22)
      {
        sub_1D12BA6C4(0, &qword_1EC60F520, sub_1D106F814);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1D139E700;
        v33 = *MEMORY[0x1E69DB650];
        *(inited + 32) = *MEMORY[0x1E69DB650];
        *(inited + 64) = sub_1D106F934(0, &qword_1EE06B6E0);
        *(inited + 40) = v22;
        v34 = v22;
        v35 = v31;
        v36 = v33;
        sub_1D109B2B4(inited);
        swift_setDeallocating();
        sub_1D12BA718(inited + 32, sub_1D106F814);
        type metadata accessor for Key(0);
        sub_1D106F8DC();
        v37 = sub_1D138FFEC();

        [v15 addAttributes:v37 range:{0, objc_msgSend(v15, sel_length)}];
      }

      else
      {
        v38 = v31;
      }

      [v15 appendAttributedString_];

      goto LABEL_24;
    }

LABEL_15:
    v23 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
    v24 = sub_1D139012C();

    v15 = [v23 initWithString_];

LABEL_24:
    return v15;
  }

  return sub_1D1333DD4();
}

id sub_1D13318F8()
{
  v1 = sub_1D138D57C();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x1EEE9AC00](v1);
  v5 = v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v3);
  v8 = v38 - v7;
  MEMORY[0x1EEE9AC00](v6);
  v10 = v38 - v9;
  v11 = [v0 expirationDate];
  if (!v11 || (v12 = v11, sub_1D138D52C(), v12, (*(v2 + 32))(v10, v8, v1), sub_1D138D53C(), v13 = sub_1D138D50C(), v14 = *(v2 + 8), v14(v5, v1), v14(v10, v1), (v13 & 1) == 0))
  {
    if ([v0 signatureStatus] == 2)
    {
      v16 = [v0 recordIssuerDisplayName];
      v17 = sub_1D139016C();
      v19 = v18;

      v20 = sub_1D139012C();
      v21 = [objc_opt_self() systemImageNamed_];

      v22 = [objc_opt_self() systemGreenColor];
      if (v21)
      {
        v23 = [v21 imageWithRenderingMode_];
        v24 = [objc_opt_self() textAttachmentWithImage_];

        sub_1D106F934(0, &qword_1EC60C410);
        v15 = [swift_getObjCClassFromMetadata() attributedStringWithAttachment_];
        v38[10] = 9011426;
        v38[11] = 0xA300000000000000;
        MEMORY[0x1D3885C10](v17, v19);

        v25 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
        v26 = sub_1D139012C();

        v27 = [v25 initWithString_];

        if (v22)
        {
          sub_1D12BA6C4(0, &qword_1EC60F520, sub_1D106F814);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_1D139E700;
          v29 = *MEMORY[0x1E69DB650];
          *(inited + 32) = *MEMORY[0x1E69DB650];
          *(inited + 64) = sub_1D106F934(0, &qword_1EE06B6E0);
          *(inited + 40) = v22;
          v30 = v22;
          v31 = v27;
          v32 = v29;
          sub_1D109B2B4(inited);
          swift_setDeallocating();
          sub_1D12BA718(inited + 32, sub_1D106F814);
          type metadata accessor for Key(0);
          sub_1D106F8DC();
          v33 = sub_1D138FFEC();

          [v15 addAttributes:v33 range:{0, objc_msgSend(v15, sel_length)}];
        }

        else
        {
          v36 = v27;
        }

        [v15 appendAttributedString_];

        goto LABEL_14;
      }
    }

    else
    {
      if (qword_1EC608CD0 != -1)
      {
        swift_once();
      }

      sub_1D138D1CC();
      v22 = 0;
    }

    v34 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
    v35 = sub_1D139012C();

    v15 = [v34 initWithString_];

LABEL_14:
    return v15;
  }

  return sub_1D1333DD4();
}

uint64_t sub_1D1331E58(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_1D1247E34(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_1D1332D68(v6);
  return sub_1D13912BC();
}

uint64_t sub_1D1331ED4()
{

  v5 = sub_1D11132D0(v0);
  sub_1D1331E58(&v5);
  v1 = v5;
  if ((v5 & 0x8000000000000000) == 0 && (v5 & 0x4000000000000000) == 0)
  {
    if (*(v5 + 16))
    {
      goto LABEL_4;
    }

LABEL_9:

    return 0;
  }

  if (!sub_1D13910DC())
  {
    goto LABEL_9;
  }

LABEL_4:
  if ((v1 & 0xC000000000000001) != 0)
  {
    v2 = MEMORY[0x1D3886B70](0, v1);
    goto LABEL_7;
  }

  if (*(v1 + 16))
  {
    v2 = *(v1 + 32);
LABEL_7:
    v3 = v2;

    return v3;
  }

  __break(1u);

  __break(1u);
  return result;
}

id sub_1D1331F9C()
{
  v1 = sub_1D138D57C();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v43 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = v43 - v6;
  *&v9 = MEMORY[0x1EEE9AC00](v8).n128_u64[0];
  v11 = v43 - v10;
  v12 = [v0 expirationDate];
  if (v12)
  {
    v13 = v12;
    sub_1D138D52C();

    (*(v2 + 32))(v11, v7, v1);
    sub_1D138D53C();
    v14 = sub_1D138D50C();
    v15 = *(v2 + 8);
    v15(v4, v1);
    v15(v11, v1);
    if (v14)
    {
      return sub_1D1333DD4();
    }
  }

  v17 = [v0 signatureStatus];
  if (v17 == 3)
  {
    v18 = sub_1D139012C();
    v19 = &selRef_systemRedColor;
  }

  else if (v17 == 2)
  {
    v18 = sub_1D139012C();
    v19 = &selRef_systemGreenColor;
  }

  else
  {
    v18 = sub_1D139012C();
    v19 = &selRef_secondaryLabelColor;
  }

  v20 = [objc_opt_self() systemImageNamed_];

  v21 = objc_opt_self();
  v22 = v20;
  v23 = [v21 *v19];
  v24 = [v0 recordIssuerDisplayName];
  if (!v24)
  {
    sub_1D139016C();
    v24 = sub_1D139012C();
  }

  v25 = sub_1D139016C();
  v27 = v26;
  if (v22)
  {
    v28 = v25;
    v29 = v22;

    v30 = [v29 imageWithRenderingMode_];
    v31 = [objc_opt_self() textAttachmentWithImage_];

    sub_1D106F934(0, &qword_1EC60C410);
    v16 = [swift_getObjCClassFromMetadata() attributedStringWithAttachment_];
    v43[10] = 9011426;
    v43[11] = 0xA300000000000000;
    MEMORY[0x1D3885C10](v28, v27);

    v32 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
    v33 = sub_1D139012C();

    v34 = [v32 initWithString_];

    if (v23)
    {
      sub_1D12BA6C4(0, &qword_1EC60F520, sub_1D106F814);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1D139E700;
      v36 = *MEMORY[0x1E69DB650];
      *(inited + 32) = *MEMORY[0x1E69DB650];
      *(inited + 64) = sub_1D106F934(0, &qword_1EE06B6E0);
      *(inited + 40) = v23;
      v37 = v23;
      v38 = v34;
      v39 = v36;
      sub_1D109B2B4(inited);
      swift_setDeallocating();
      sub_1D12BA718(inited + 32, sub_1D106F814);
      type metadata accessor for Key(0);
      sub_1D106F8DC();
      v40 = sub_1D138FFEC();

      [v16 addAttributes:v40 range:{0, objc_msgSend(v16, sel_length)}];
    }

    else
    {
      v41 = v34;
    }

    [v16 appendAttributedString_];
  }

  else
  {

    v16 = [objc_allocWithZone(MEMORY[0x1E696AAB0]) initWithString_];
  }

  return v16;
}

NSAttributedString __swiftcall HKSignedClinicalDataRecord.attributedMeaningfulDateString(with:)(Swift::String with)
{
  v2 = v1;
  object = with._object;
  countAndFlagsBits = with._countAndFlagsBits;
  v5 = sub_1D138D57C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v61 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v61 - v13;
  v63 = countAndFlagsBits;
  v64 = object;

  MEMORY[0x1D3885C10](0x209480E220, 0xA500000000000000);
  v15 = [v2 subject];
  v16 = [v15 fullName];

  v17 = sub_1D139016C();
  v19 = v18;

  MEMORY[0x1D3885C10](v17, v19);

  v21 = v63;
  v20 = v64;
  v22 = [v2 expirationDate];
  if (v22)
  {
    v23 = v22;
    sub_1D138D52C();

    (*(v6 + 32))(v14, v11, v5);
    sub_1D138D53C();
    LOBYTE(v23) = sub_1D138D50C();
    v24 = *(v6 + 8);
    v24(v8, v5);
    v24(v14, v5);
    if (v23)
    {
      v25 = [objc_opt_self() configurationWithScale_];
      v26 = sub_1D139012C();
      v27 = [objc_opt_self() systemImageNamed:v26 withConfiguration:v25];

      if (v27)
      {
        goto LABEL_6;
      }

      __break(1u);
    }
  }

  v28 = [objc_opt_self() configurationWithScale_];
  v29 = sub_1D139012C();
  v27 = [objc_opt_self() systemImageNamed:v29 withConfiguration:v28];

  if (v27)
  {
LABEL_6:
    v31 = objc_opt_self();
    v32 = [v31 secondaryLabelColor];
    v33 = v27;
    v34 = [v31 secondaryLabelColor];
    v35 = v33;
    v36 = [v35 imageWithRenderingMode_];
    v37 = [objc_opt_self() textAttachmentWithImage_];

    sub_1D106F934(0, &qword_1EC60C410);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v61 = v37;
    v39 = [ObjCClassFromMetadata attributedStringWithAttachment_];
    v40 = MEMORY[0x1E69DB650];
    v62 = v32;
    if (v32)
    {
      sub_1D12BA6C4(0, &qword_1EC60C418, sub_1D118A210);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1D139E700;
      v42 = *v40;
      *(inited + 32) = *v40;
      *(inited + 40) = v32;
      v43 = v32;
      v44 = v21;
      v45 = v43;
      v46 = v42;
      v47 = sub_1D109D974(inited);
      swift_setDeallocating();
      sub_1D12BA718(inited + 32, sub_1D118A210);
      v63 = 9011426;
      v64 = 0xA300000000000000;
      MEMORY[0x1D3885C10](v44, v20);

      sub_1D10988B8(v47);

      v48 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
      v49 = sub_1D139012C();

      type metadata accessor for Key(0);
      sub_1D106F8DC();
      v50 = sub_1D138FFEC();

      v51 = [v48 initWithString:v49 attributes:v50];

      if (v34)
      {
LABEL_8:
        sub_1D12BA6C4(0, &qword_1EC60F520, sub_1D106F814);
        v52 = swift_initStackObject();
        *(v52 + 16) = xmmword_1D139E700;
        v53 = *MEMORY[0x1E69DB650];
        *(v52 + 32) = *MEMORY[0x1E69DB650];
        *(v52 + 64) = sub_1D106F934(0, &qword_1EE06B6E0);
        *(v52 + 40) = v34;
        v54 = v34;
        v55 = v51;
        v56 = v53;
        sub_1D109B2B4(v52);
        swift_setDeallocating();
        sub_1D12BA718(v52 + 32, sub_1D106F814);
        type metadata accessor for Key(0);
        sub_1D106F8DC();
        v57 = sub_1D138FFEC();

        [v39 addAttributes:v57 range:{0, objc_msgSend(v39, sel_length)}];

LABEL_11:
        [v39 appendAttributedString_];

        return v39;
      }
    }

    else
    {
      v63 = 9011426;
      v64 = 0xA300000000000000;
      MEMORY[0x1D3885C10](v21, v20);

      v58 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
      v59 = sub_1D139012C();

      v51 = [v58 initWithString_];

      if (v34)
      {
        goto LABEL_8;
      }
    }

    v60 = v51;
    goto LABEL_11;
  }

  __break(1u);
  return result;
}

Class sub_1D1332C4C(void *a1)
{
  v2 = sub_1D139016C();
  v4 = v3;
  v5 = a1;
  v6._countAndFlagsBits = v2;
  v6._object = v4;
  v7.super.isa = HKSignedClinicalDataRecord.attributedMeaningfulDateString(with:)(v6).super.isa;

  return v7.super.isa;
}

BOOL sub_1D1332CC0(void *a1)
{
  v1 = a1;
  if ([v1 signatureStatus])
  {
    v2 = [v1 signatureStatus];

    return v2 == 1;
  }

  else
  {

    return 1;
  }
}

void sub_1D1332D68(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_1D13915BC();
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
        sub_1D106F934(0, &qword_1EC60B028);
        v6 = sub_1D13904DC();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = (v6 & 0xFFFFFFFFFFFFFF8) + 32;
      v8[1] = v5;
      sub_1D133309C(v8, v9, a1, v4);
      *(v7 + 16) = 0;

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
    sub_1D1332E7C(0, v2, 1, a1);
  }
}

void sub_1D1332E7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v36 = sub_1D138D57C();
  MEMORY[0x1EEE9AC00](v36);
  v35 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v30 - v11;
  v31 = a2;
  if (a3 != a2)
  {
    v13 = (v10 + 8);
    v37 = *a4;
    v14 = v37 + 8 * a3 - 8;
    v15 = a1 - a3;
LABEL_5:
    v33 = v14;
    v34 = a3;
    v16 = *(v37 + 8 * a3);
    v32 = v15;
    v17 = v15;
    while (1)
    {
      v18 = *v14;
      v19 = v16;
      v20 = v18;
      v21 = [v19 relevantDate];
      sub_1D138D52C();

      v22 = [v20 relevantDate];
      v23 = v35;
      sub_1D138D52C();

      v24 = sub_1D138D54C();
      v25 = *v13;
      v26 = v23;
      v27 = v36;
      (*v13)(v26, v36);
      v25(v12, v27);

      if (v24 != 1)
      {
LABEL_4:
        a3 = v34 + 1;
        v14 = v33 + 8;
        v15 = v32 - 1;
        if (v34 + 1 == v31)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v37)
      {
        break;
      }

      v28 = *v14;
      v16 = *(v14 + 8);
      *v14 = v16;
      *(v14 + 8) = v28;
      v14 -= 8;
      if (__CFADD__(v17++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_1D133309C(unint64_t *a1, uint64_t a2, void *a3, unint64_t a4)
{
  v7 = v4;
  v118 = a1;
  v127 = sub_1D138D57C();
  MEMORY[0x1EEE9AC00](v127);
  v126 = &v112 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v125 = &v112 - v13;
  v14 = a3[1];
  if (v14 < 1)
  {
    v16 = MEMORY[0x1E69E7CC0];
LABEL_88:
    v5 = *v118;
    if (!*v118)
    {
      goto LABEL_127;
    }

    a4 = v16;
    v6 = a3;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v107 = a4;
    }

    else
    {
LABEL_121:
      v107 = sub_1D1245848(a4);
    }

    v128 = v107;
    v108 = *(v107 + 2);
    if (v108 >= 2)
    {
      while (*v6)
      {
        a4 = *&v107[16 * v108];
        v109 = v107;
        v110 = *&v107[16 * v108 + 24];
        sub_1D133392C((*v6 + 8 * a4), (*v6 + 8 * *&v107[16 * v108 + 16]), (*v6 + 8 * v110), v5);
        if (v7)
        {
          goto LABEL_99;
        }

        if (v110 < a4)
        {
          goto LABEL_114;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v109 = sub_1D1245848(v109);
        }

        if (v108 - 2 >= *(v109 + 2))
        {
          goto LABEL_115;
        }

        v111 = &v109[16 * v108];
        *v111 = a4;
        v111[1] = v110;
        v128 = v109;
        sub_1D12457BC(v108 - 1);
        v107 = v128;
        v108 = *(v128 + 2);
        if (v108 <= 1)
        {
          goto LABEL_99;
        }
      }

      goto LABEL_125;
    }

LABEL_99:

    return;
  }

  v15 = 0;
  v124 = (v12 + 8);
  v16 = MEMORY[0x1E69E7CC0];
  v117 = a4;
  v113 = a3;
  while (1)
  {
    v17 = v15++;
    if (v15 < v14)
    {
      v121 = v14;
      v115 = v16;
      v116 = v7;
      v18 = *a3;
      v19 = *(*a3 + 8 * v15);
      v20 = v17;
      v119 = 8 * v17;
      v21 = (v18 + 8 * v17);
      v22 = *v21;
      v5 = (v21 + 2);
      v6 = v19;
      v23 = v22;
      v24 = [v6 relevantDate];
      v25 = v125;
      sub_1D138D52C();

      v26 = [v23 relevantDate];
      v27 = v126;
      sub_1D138D52C();

      v122 = sub_1D138D54C();
      v28 = *v124;
      v29 = v127;
      (*v124)(v27, v127);
      v120 = v28;
      (v28)(v25, v29);

      v114 = v20;
      v30 = v20 + 2;
      while (1)
      {
        v15 = v121;
        if (v121 == v30)
        {
          break;
        }

        LODWORD(v123) = v122 == 1;
        v31 = *(v5 - 8);
        v32 = *v5;
        v6 = v31;
        v33 = [v32 relevantDate];
        v34 = v125;
        sub_1D138D52C();

        v35 = [v6 relevantDate];
        v36 = v126;
        sub_1D138D52C();

        v37 = sub_1D138D54C();
        v38 = v36;
        v39 = v127;
        v40 = v120;
        (v120)(v38, v127);
        v40(v34, v39);

        ++v30;
        v5 += 8;
        if (((v123 ^ (v37 != 1)) & 1) == 0)
        {
          v15 = v30 - 1;
          break;
        }
      }

      v16 = v115;
      v7 = v116;
      a4 = v117;
      v17 = v114;
      v41 = v119;
      if (v122 == 1)
      {
        if (v15 < v114)
        {
          goto LABEL_118;
        }

        a3 = v113;
        if (v114 < v15)
        {
          v42 = 8 * v15 - 8;
          v43 = v15;
          v44 = v114;
          do
          {
            if (v44 != --v43)
            {
              v46 = *a3;
              if (!*a3)
              {
                goto LABEL_124;
              }

              v45 = *(v46 + v41);
              *(v46 + v41) = *(v46 + v42);
              *(v46 + v42) = v45;
            }

            ++v44;
            v42 -= 8;
            v41 += 8;
          }

          while (v44 < v43);
        }
      }

      else
      {
        a3 = v113;
      }
    }

    v47 = a3[1];
    if (v15 < v47)
    {
      if (__OFSUB__(v15, v17))
      {
        goto LABEL_117;
      }

      if (v15 - v17 < a4)
      {
        v48 = v17 + a4;
        if (__OFADD__(v17, a4))
        {
          goto LABEL_119;
        }

        if (v48 >= v47)
        {
          v48 = a3[1];
        }

        if (v48 < v17)
        {
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (v15 != v48)
        {
          break;
        }
      }
    }

LABEL_36:
    if (v15 < v17)
    {
      goto LABEL_116;
    }

    v62 = v16;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v16 = v62;
    }

    else
    {
      v16 = sub_1D10F7610(0, *(v62 + 2) + 1, 1, v62);
    }

    v64 = *(v16 + 2);
    v63 = *(v16 + 3);
    a4 = v64 + 1;
    if (v64 >= v63 >> 1)
    {
      v16 = sub_1D10F7610((v63 > 1), v64 + 1, 1, v16);
    }

    *(v16 + 2) = a4;
    v65 = &v16[16 * v64];
    *(v65 + 4) = v17;
    *(v65 + 5) = v15;
    v66 = *v118;
    if (!*v118)
    {
      goto LABEL_126;
    }

    if (v64)
    {
      while (1)
      {
        v5 = a4 - 1;
        if (a4 >= 4)
        {
          break;
        }

        if (a4 == 3)
        {
          v67 = *(v16 + 4);
          v68 = *(v16 + 5);
          v77 = __OFSUB__(v68, v67);
          v69 = v68 - v67;
          v70 = v77;
LABEL_56:
          if (v70)
          {
            goto LABEL_105;
          }

          v83 = &v16[16 * a4];
          v85 = *v83;
          v84 = *(v83 + 1);
          v86 = __OFSUB__(v84, v85);
          v87 = v84 - v85;
          v88 = v86;
          if (v86)
          {
            goto LABEL_108;
          }

          v89 = &v16[16 * v5 + 32];
          v91 = *v89;
          v90 = *(v89 + 1);
          v77 = __OFSUB__(v90, v91);
          v92 = v90 - v91;
          if (v77)
          {
            goto LABEL_111;
          }

          if (__OFADD__(v87, v92))
          {
            goto LABEL_112;
          }

          if (v87 + v92 >= v69)
          {
            if (v69 < v92)
            {
              v5 = a4 - 2;
            }

            goto LABEL_77;
          }

          goto LABEL_70;
        }

        v93 = &v16[16 * a4];
        v95 = *v93;
        v94 = *(v93 + 1);
        v77 = __OFSUB__(v94, v95);
        v87 = v94 - v95;
        v88 = v77;
LABEL_70:
        if (v88)
        {
          goto LABEL_107;
        }

        v96 = &v16[16 * v5];
        v98 = *(v96 + 4);
        v97 = *(v96 + 5);
        v77 = __OFSUB__(v97, v98);
        v99 = v97 - v98;
        if (v77)
        {
          goto LABEL_110;
        }

        if (v99 < v87)
        {
          goto LABEL_3;
        }

LABEL_77:
        v104 = v5 - 1;
        if (v5 - 1 >= a4)
        {
          __break(1u);
LABEL_101:
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
          goto LABEL_120;
        }

        if (!*a3)
        {
          goto LABEL_123;
        }

        v105 = v16;
        a4 = *&v16[16 * v104 + 32];
        v6 = *&v16[16 * v5 + 40];
        sub_1D133392C((*a3 + 8 * a4), (*a3 + 8 * *&v16[16 * v5 + 32]), (*a3 + 8 * v6), v66);
        if (v7)
        {
          goto LABEL_99;
        }

        if (v6 < a4)
        {
          goto LABEL_101;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v105 = sub_1D1245848(v105);
        }

        if (v104 >= *(v105 + 2))
        {
          goto LABEL_102;
        }

        v106 = &v105[16 * v104];
        *(v106 + 4) = a4;
        *(v106 + 5) = v6;
        v128 = v105;
        sub_1D12457BC(v5);
        v16 = v128;
        a4 = *(v128 + 2);
        if (a4 <= 1)
        {
          goto LABEL_3;
        }
      }

      v71 = &v16[16 * a4 + 32];
      v72 = *(v71 - 64);
      v73 = *(v71 - 56);
      v77 = __OFSUB__(v73, v72);
      v74 = v73 - v72;
      if (v77)
      {
        goto LABEL_103;
      }

      v76 = *(v71 - 48);
      v75 = *(v71 - 40);
      v77 = __OFSUB__(v75, v76);
      v69 = v75 - v76;
      v70 = v77;
      if (v77)
      {
        goto LABEL_104;
      }

      v78 = &v16[16 * a4];
      v80 = *v78;
      v79 = *(v78 + 1);
      v77 = __OFSUB__(v79, v80);
      v81 = v79 - v80;
      if (v77)
      {
        goto LABEL_106;
      }

      v77 = __OFADD__(v69, v81);
      v82 = v69 + v81;
      if (v77)
      {
        goto LABEL_109;
      }

      if (v82 >= v74)
      {
        v100 = &v16[16 * v5 + 32];
        v102 = *v100;
        v101 = *(v100 + 1);
        v77 = __OFSUB__(v101, v102);
        v103 = v101 - v102;
        if (v77)
        {
          goto LABEL_113;
        }

        if (v69 < v103)
        {
          v5 = a4 - 2;
        }

        goto LABEL_77;
      }

      goto LABEL_56;
    }

LABEL_3:
    v14 = a3[1];
    a4 = v117;
    if (v15 >= v14)
    {
      goto LABEL_88;
    }
  }

  v115 = v16;
  v116 = v7;
  v123 = *a3;
  v49 = v123 + 8 * v15 - 8;
  v114 = v17;
  v50 = (v17 - v15);
  v119 = v48;
LABEL_29:
  v121 = v49;
  v122 = v15;
  v51 = *(v123 + 8 * v15);
  v120 = v50;
  while (1)
  {
    v52 = *v49;
    v53 = v51;
    v5 = v52;
    v54 = [v53 relevantDate];
    v6 = v125;
    sub_1D138D52C();

    v55 = [v5 relevantDate];
    v56 = v126;
    sub_1D138D52C();

    a4 = sub_1D138D54C();
    v57 = *v124;
    v58 = v56;
    v59 = v127;
    (*v124)(v58, v127);
    v57(v6, v59);

    if (a4 != 1)
    {
LABEL_28:
      v15 = v122 + 1;
      v49 = v121 + 8;
      v50 = v120 - 1;
      if (v122 + 1 != v119)
      {
        goto LABEL_29;
      }

      v15 = v119;
      v16 = v115;
      v7 = v116;
      a3 = v113;
      v17 = v114;
      goto LABEL_36;
    }

    if (!v123)
    {
      break;
    }

    v60 = *v49;
    v51 = *(v49 + 8);
    *v49 = v51;
    *(v49 + 8) = v60;
    v49 -= 8;
    if (__CFADD__(v50++, 1))
    {
      goto LABEL_28;
    }
  }

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
}

uint64_t sub_1D133392C(void **a1, void **a2, char *a3, void **a4)
{
  v59 = sub_1D138D57C();
  v8 = *(v59 - 8);
  MEMORY[0x1EEE9AC00](v59);
  v58 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v57 = &v51 - v11;
  v12 = a2 - a1 + 7;
  if (a2 - a1 >= 0)
  {
    v12 = a2 - a1;
  }

  v13 = v12 >> 3;
  v14 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v14 = a3 - a2;
  }

  v15 = v14 >> 3;
  if (v13 >= v14 >> 3)
  {
    if (a4 != a2 || &a2[v15] <= a4)
    {
      memmove(a4, a2, 8 * v15);
    }

    v60 = &a4[v15];
    if (a3 - a2 >= 8 && a2 > a1)
    {
      v52 = (v8 + 8);
      v56 = a1;
      v32 = v57;
LABEL_26:
      v51 = a2;
      v33 = a2 - 1;
      a3 -= 8;
      v34 = v60;
      v53 = a2 - 1;
      do
      {
        v35 = a4;
        v36 = (a3 + 8);
        v37 = *--v34;
        v38 = *v33;
        v39 = v37;
        v55 = v39;
        v40 = v38;
        v54 = v40;
        v41 = [v39 relevantDate];
        sub_1D138D52C();

        v42 = [v40 relevantDate];
        v43 = v58;
        sub_1D138D52C();

        v44 = sub_1D138D54C();
        v45 = *v52;
        v46 = v43;
        v47 = v59;
        (*v52)(v46, v59);
        v45(v32, v47);

        if (v44 == 1)
        {
          a4 = v35;
          v48 = v56;
          v49 = v53;
          if (v36 != v51)
          {
            *a3 = *v53;
          }

          if (v60 <= v35 || (a2 = v49, v49 <= v48))
          {
            a2 = v49;
            goto LABEL_37;
          }

          goto LABEL_26;
        }

        a4 = v35;
        if (v36 != v60)
        {
          *a3 = *v34;
        }

        a3 -= 8;
        v60 = v34;
        v33 = v53;
      }

      while (v34 > v35);
      v60 = v34;
      a2 = v51;
    }
  }

  else
  {
    if (a4 != a1 || &a1[v13] <= a4)
    {
      memmove(a4, a1, 8 * v13);
    }

    v60 = &a4[v13];
    if (a2 - a1 >= 8 && a2 < a3)
    {
      v16 = a2;
      v53 = (v8 + 8);
      v54 = a3;
      v17 = (v8 + 8);
      while (1)
      {
        v56 = a1;
        v18 = *a4;
        v19 = *v16;
        v55 = v19;
        v20 = v18;
        v21 = [v19 relevantDate];
        v22 = v57;
        sub_1D138D52C();

        v23 = [v20 relevantDate];
        v24 = v58;
        sub_1D138D52C();

        v25 = a4;
        v26 = sub_1D138D54C();
        v27 = v16;
        v28 = *v17;
        v29 = v59;
        (*v17)(v24, v59);
        v28(v22, v29);

        if (v26 != 1)
        {
          break;
        }

        v30 = v27;
        v16 = v27 + 1;
        v31 = v56;
        a4 = v25;
        if (v56 != v27)
        {
          goto LABEL_16;
        }

LABEL_17:
        a1 = v31 + 1;
        if (a4 >= v60 || v16 >= v54)
        {
          goto LABEL_19;
        }
      }

      v30 = v25;
      a4 = v25 + 1;
      v31 = v56;
      v16 = v27;
      if (v56 == v25)
      {
        goto LABEL_17;
      }

LABEL_16:
      *v31 = *v30;
      goto LABEL_17;
    }

LABEL_19:
    a2 = a1;
  }

LABEL_37:
  if (a2 != a4 || a2 >= (a4 + ((v60 - a4 + (v60 - a4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(a2, a4, 8 * (v60 - a4));
  }

  return 1;
}

id sub_1D1333DD4()
{
  if (qword_1EC608CD0 != -1)
  {
    swift_once();
  }

  v0 = sub_1D138D1CC();
  v2 = v1;
  v3 = sub_1D139012C();
  v4 = [objc_opt_self() systemImageNamed_];

  v5 = [objc_opt_self() systemRedColor];
  if (v4)
  {
    v6 = v4;
    v7 = [v6 imageWithRenderingMode_];
    v8 = [objc_opt_self() textAttachmentWithImage_];

    sub_1D106F934(0, &qword_1EC60C410);
    v9 = [swift_getObjCClassFromMetadata() attributedStringWithAttachment_];
    MEMORY[0x1D3885C10](v0, v2);

    v10 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
    v11 = sub_1D139012C();

    v12 = [v10 initWithString_];

    if (v5)
    {
      sub_1D12BA6C4(0, &qword_1EC60F520, sub_1D106F814);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1D139E700;
      v14 = *MEMORY[0x1E69DB650];
      *(inited + 32) = *MEMORY[0x1E69DB650];
      *(inited + 64) = sub_1D106F934(0, &qword_1EE06B6E0);
      *(inited + 40) = v5;
      v15 = v5;
      v16 = v12;
      v17 = v14;
      sub_1D109B2B4(inited);
      swift_setDeallocating();
      sub_1D12BA718(inited + 32, sub_1D106F814);
      type metadata accessor for Key(0);
      sub_1D106F8DC();
      v18 = sub_1D138FFEC();

      [v9 addAttributes:v18 range:{0, objc_msgSend(v9, sel_length)}];
    }

    else
    {
      v23 = v12;
    }

    [v9 appendAttributedString_];

    return v9;
  }

  else
  {
    v19 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
    v20 = sub_1D139012C();

    v21 = [v19 initWithString_];

    return v21;
  }
}

id DynamicView.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_1D13341D8()
{
  v1 = MEMORY[0x1E69E7D40];
  v2 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x70))();
  (*((*v1 & *v0) + 0x80))(v2);
  v3 = *((*v1 & *v0) + 0x78);

  return v3();
}

id DynamicView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id DynamicView.init(frame:)(double a1, double a2, double a3, double a4)
{
  v11.receiver = v4;
  v11.super_class = type metadata accessor for DynamicView();
  v9 = objc_msgSendSuper2(&v11, sel_initWithFrame_, a1, a2, a3, a4);
  sub_1D13341D8();

  return v9;
}

id DynamicView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id DynamicView.init(coder:)(void *a1)
{
  v7.receiver = v1;
  v7.super_class = type metadata accessor for DynamicView();
  v3 = objc_msgSendSuper2(&v7, sel_initWithCoder_, a1);
  v4 = v3;
  if (v3)
  {
    v5 = v3;
    sub_1D13341D8();
  }

  return v4;
}

void sub_1D133451C(void *a1)
{
  v3 = MEMORY[0x1E69E7D40];
  v19.receiver = v1;
  v19.super_class = type metadata accessor for DynamicView();
  objc_msgSendSuper2(&v19, sel_traitCollectionDidChange_, a1);
  v4 = [v1 traitCollection];
  v5 = [v4 preferredContentSizeCategory];

  if (!a1)
  {

    goto LABEL_11;
  }

  v6 = [a1 preferredContentSizeCategory];
  v7 = sub_1D139016C();
  v9 = v8;
  if (v7 == sub_1D139016C() && v9 == v10)
  {
  }

  else
  {
    v12 = sub_1D139162C();

    if ((v12 & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v14 = [v1 traitCollection];
  v15 = [v14 legibilityWeight];

  v13 = [a1 legibilityWeight];
  if (v15 == v13)
  {
    goto LABEL_12;
  }

LABEL_11:
  v16 = (*((*v3 & *v1) + 0x78))(v13);
  if (a1)
  {
LABEL_12:
    v17 = [v1 traitCollection];
    v18 = [a1 hasDifferentColorAppearanceComparedToTraitCollection_];

    if (!v18)
    {
      return;
    }
  }

  (*((*v3 & *v1) + 0x80))(v16);
}

void sub_1D1334754(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = a1;
  sub_1D133451C(a3);
}

id DynamicView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DynamicView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1D1334AC0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    for (i = 0; ; i += 48)
    {
      v6 = *(a1 + i + 48);
      v5 = *(a1 + i + 56);
      v22 = *(a1 + i + 64);
      v7 = *(a1 + i + 72);
      v9 = *(a2 + i + 48);
      v8 = *(a2 + i + 56);
      v10 = *(a2 + i + 64);
      v11 = *(a2 + i + 72);
      if (*(a1 + i + 32) != *(a2 + i + 32) || *(a1 + i + 40) != *(a2 + i + 40))
      {
        v13 = *(a2 + i + 56);
        v14 = sub_1D139162C();
        v8 = v13;
        if ((v14 & 1) == 0)
        {
          return 0;
        }
      }

      v15 = v6 == v9 && v5 == v8;
      if (!v15 && (sub_1D139162C() & 1) == 0)
      {
        return 0;
      }

      if (v7 <= 1)
      {
        break;
      }

      if (v7 == 2)
      {
        if (v11 != 2)
        {
          return 0;
        }

        v17 = sub_1D10E2CA0(v22, v10);
LABEL_5:
        v4 = v17;

        if ((v4 & 1) == 0)
        {
          return 0;
        }

        goto LABEL_6;
      }

      if (v7 == 3)
      {
        if (v11 != 3)
        {
          return 0;
        }

        v16 = sub_1D10E2F5C(v22, v10);
      }

      else
      {
        if (v11 != 4)
        {
          return 0;
        }

        v16 = sub_1D10E3240(v22, v10);
      }

      v18 = v16;

      if ((v18 & 1) == 0)
      {
        return 0;
      }

LABEL_6:
      if (!--v2)
      {
        return 1;
      }
    }

    if (v7)
    {
      if (v11 != 1)
      {
        return 0;
      }

      v17 = sub_1D10E2A40(v22, v10);
    }

    else
    {
      if (v11)
      {
        return 0;
      }

      v17 = sub_1D10E287C(v22, v10);
    }

    goto LABEL_5;
  }

  return 1;
}

uint64_t sub_1D1334E2C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D138D5EC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v25 - v10;
  v12 = *(a1 + 16);
  if (v12 != *(a2 + 16))
  {
    v22 = 0;
    return v22 & 1;
  }

  if (!v12 || a1 == a2)
  {
    v22 = 1;
    return v22 & 1;
  }

  v13 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v14 = a1 + v13;
  v15 = a2 + v13;
  v17 = *(v5 + 16);
  v16 = v5 + 16;
  v18 = (v16 - 8);
  v25 = *(v16 + 56);
  v26 = v17;
  while (1)
  {
    v19 = v26;
    result = (v26)(v11, v14, v4, v9);
    if (!v12)
    {
      break;
    }

    v21 = v16;
    v19(v7, v15, v4);
    sub_1D13360A4(&qword_1EC6098A0, MEMORY[0x1E69695A8]);
    v22 = sub_1D139011C();
    v23 = *v18;
    (*v18)(v7, v4);
    v23(v11, v4);
    if (v22)
    {
      v15 += v25;
      v14 += v25;
      v24 = v12-- == 1;
      v16 = v21;
      if (!v24)
      {
        continue;
      }
    }

    return v22 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D1335068(unint64_t a1, uint64_t a2, unint64_t *a3)
{
  v4 = a1;
  v5 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_44;
  }

  v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (!(a2 >> 62))
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6 != result)
    {
      goto LABEL_46;
    }

LABEL_5:
    if (!v6)
    {
      goto LABEL_29;
    }

    v8 = v4 & 0xFFFFFFFFFFFFFF8;
    v9 = (v4 & 0xFFFFFFFFFFFFFF8) + 32;
    if (v4 < 0)
    {
      v8 = v4;
    }

    if (v5)
    {
      v9 = v8;
    }

    v10 = a2 & 0xFFFFFFFFFFFFFF8;
    v11 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    if (a2 < 0)
    {
      v10 = a2;
    }

    if (a2 >> 62)
    {
      v11 = v10;
    }

    if (v9 == v11)
    {
LABEL_29:
      v19 = 1;
      return v19 & 1;
    }

    if (v6 < 0)
    {
      __break(1u);
      return result;
    }

    v5 = sub_1D106F934(0, a3);
    if (((a2 | v4) & 0xC000000000000001) != 0)
    {
      v12 = a2 & 0xC000000000000001;
      v13 = 4;
      while (1)
      {
        v14 = v13 - 4;
        v15 = v13 - 3;
        if (__OFADD__(v13 - 4, 1))
        {
          __break(1u);
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

        if ((v4 & 0xC000000000000001) != 0)
        {
          v16 = MEMORY[0x1D3886B70](v13 - 4, v4);
          if (!v12)
          {
            goto LABEL_24;
          }
        }

        else
        {
          if (v14 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_42;
          }

          v16 = *(v4 + 8 * v13);
          if (!v12)
          {
LABEL_24:
            if (v14 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_43;
            }

            v17 = *(a2 + 8 * v13);
            goto LABEL_26;
          }
        }

        v17 = MEMORY[0x1D3886B70](v13 - 4, a2);
LABEL_26:
        v18 = v17;
        v19 = sub_1D1390D8C();

        if (v19)
        {
          ++v13;
          if (v15 != v6)
          {
            continue;
          }
        }

        return v19 & 1;
      }
    }

    v20 = (v4 + 32);
    v21 = (a2 + 32);
    v22 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v23 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v24 = v6 - 1;
    while (1)
    {
      if (!v22)
      {
        goto LABEL_40;
      }

      if (!v23)
      {
        break;
      }

      v26 = *v20++;
      v25 = v26;
      v27 = *v21++;
      a2 = v25;
      v4 = v27;
      v19 = sub_1D1390D8C();

      v29 = v24-- != 0;
      if (v19)
      {
        --v23;
        --v22;
        if (v29)
        {
          continue;
        }
      }

      return v19 & 1;
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    v30 = a3;
    v31 = sub_1D13910DC();
    a3 = v30;
    v6 = v31;
  }

  v32 = a3;
  result = sub_1D13910DC();
  a3 = v32;
  if (v6 == result)
  {
    goto LABEL_5;
  }

LABEL_46:
  v19 = 0;
  return v19 & 1;
}

uint64_t sub_1D13352E4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ClinicalSharingSelectableAuthorizationCategoryItem() - 8;
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = (&v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v5);
  v10 = (&v20 - v9);
  v11 = *(a1 + 16);
  if (v11 != *(a2 + 16))
  {
    return 0;
  }

  if (!v11 || a1 == a2)
  {
    return 1;
  }

  v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v13 = a1 + v12;
  v14 = a2 + v12;
  v15 = *(v8 + 72);
  while (1)
  {
    sub_1D111EC40(v13, v10);
    sub_1D111EC40(v14, v7);
    v16 = v10[2] == v7[2] && v10[3] == v7[3];
    if (!v16 && (sub_1D139162C() & 1) == 0)
    {
      break;
    }

    if (*v10 == *v7 && v10[1] == v7[1])
    {
      sub_1D111ECA4(v7);
      sub_1D111ECA4(v10);
    }

    else
    {
      v18 = sub_1D139162C();
      sub_1D111ECA4(v7);
      sub_1D111ECA4(v10);
      if ((v18 & 1) == 0)
      {
        return 0;
      }
    }

    v14 += v15;
    v13 += v15;
    if (!--v11)
    {
      return 1;
    }
  }

  sub_1D111ECA4(v7);
  sub_1D111ECA4(v10);
  return 0;
}

void sub_1D13354A4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16) && v2 && a1 != a2)
  {
    v3 = (a1 + 32);
    v4 = (a2 + 32);
    do
    {
      v6 = *v3++;
      v5 = v6;
      v7 = *v4;
      if (v6 > 1)
      {
        if (v5 == 2)
        {
          if (v7 != 2)
          {
            return;
          }

          goto LABEL_6;
        }

        if (v5 == 3)
        {
          if (v7 != 3)
          {
            return;
          }

          goto LABEL_6;
        }
      }

      else
      {
        if (!v5)
        {
          if (v7)
          {
            return;
          }

          goto LABEL_6;
        }

        if (v5 == 1)
        {
          if (v7 != 1)
          {
            return;
          }

          goto LABEL_6;
        }
      }

      if (v7 < 4)
      {
        return;
      }

      sub_1D106F934(0, &qword_1EE06B0C0);
      sub_1D10A43FC(v7);
      sub_1D10A43FC(v5);
      v8 = sub_1D1390D8C();
      sub_1D10A44E0(v7);
      sub_1D10A44E0(v5);
      if ((v8 & 1) == 0)
      {
        return;
      }

LABEL_6:
      ++v4;
      --v2;
    }

    while (v2);
  }
}

uint64_t sub_1D13355D4(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4 != *(a2 + 16))
  {
    return 0;
  }

  if (!v4 || a1 == a2)
  {
    return 1;
  }

  v43 = v2;
  v44 = v3;
  v5 = a1 + 32;
  v6 = a2 + 32;
  for (i = v4 - 1; ; --i)
  {
    v8 = *(v5 + 64);
    v9 = *(v5 + 80);
    v10 = *(v5 + 32);
    v31 = *(v5 + 48);
    v32 = v8;
    v33[0] = v9;
    *(v33 + 13) = *(v5 + 93);
    v11 = *(v5 + 16);
    v30[0] = *v5;
    v30[1] = v11;
    v30[2] = v10;
    v24 = v30[0];
    v25 = v11;
    v26 = v10;
    v27 = v31;
    v28 = v8;
    v29[0] = v9;
    *(v29 + 13) = *(v33 + 13);
    v12 = *(v6 + 80);
    v37 = *(v6 + 64);
    v38[0] = v12;
    *(v38 + 13) = *(v6 + 93);
    v13 = *(v6 + 16);
    v34[0] = *v6;
    v34[1] = v13;
    v14 = *(v6 + 48);
    v35 = *(v6 + 32);
    v36 = v14;
    v18 = v34[0];
    v19 = v13;
    v20 = v35;
    v21 = v14;
    v22 = v37;
    v23[0] = v12;
    *(v23 + 13) = *(v38 + 13);
    sub_1D1128A74(v30, v17);
    sub_1D1128A74(v34, v17);
    v15 = _s15HealthRecordsUI33UserDomainConceptFeedItemViewDataV2eeoiySbAC_ACtFZ_0(&v24, &v18);
    v39[3] = v21;
    v39[4] = v22;
    v40[0] = v23[0];
    v39[0] = v18;
    v39[1] = v19;
    *(v40 + 13) = *(v23 + 13);
    v39[2] = v20;
    sub_1D1128B50(v39);
    v41[4] = v28;
    v42[0] = v29[0];
    *(v42 + 13) = *(v29 + 13);
    v41[0] = v24;
    v41[1] = v25;
    v41[2] = v26;
    v41[3] = v27;
    sub_1D1128B50(v41);
    if ((v15 & 1) == 0)
    {
      return 0;
    }

    if (!i)
    {
      break;
    }

    v6 += 104;
    v5 += 104;
  }

  return 1;
}

uint64_t sub_1D133575C(uint64_t a1)
{
  v3 = sub_1D138ED5C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ClinicalSharingSelectableAuthorizationCategoryItem();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);

  LOBYTE(a1) = sub_1D13352E4(v11, a1);

  if ((a1 & 1) == 0)
  {
    v13 = *(v1 + 16);
    v14 = *(v13 + 16);
    if (v14)
    {
      v23[1] = *(v1 + 16);
      v24 = v1;
      v15 = *(v7 + 48);
      v16 = v13 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
      v26 = *(v8 + 72);
      v27 = v15;
      v25 = v4 + 32;

      v17 = MEMORY[0x1E69E7CC0];
      do
      {
        sub_1D111EC40(v16, v10);
        (*(v4 + 16))(v6, &v10[v27], v3);
        sub_1D111ECA4(v10);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v17 = sub_1D10F78B8(0, v17[2] + 1, 1, v17);
        }

        v19 = v17[2];
        v18 = v17[3];
        if (v19 >= v18 >> 1)
        {
          v17 = sub_1D10F78B8(v18 > 1, v19 + 1, 1, v17);
        }

        v17[2] = v19 + 1;
        (*(v4 + 32))(v17 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v19, v6, v3);
        v16 += v26;
        --v14;
      }

      while (v14);

      v1 = v24;
    }

    else
    {
      v17 = MEMORY[0x1E69E7CC0];
    }

    v20 = sub_1D12DEBC4(v17);

    *(v1 + 24) = v20;

    if ((*(v1 + 32) & 1) == 0)
    {
      v21 = *(v1 + 40);
      if (v21)
      {

        v21(v22);
        return sub_1D1138F60(v21);
      }
    }
  }

  return result;
}

uint64_t sub_1D1335A40(uint64_t a1, int a2)
{
  v44 = a2;
  v56 = a1;
  v59 = sub_1D138ED5C();
  v45 = *(v59 - 8);
  MEMORY[0x1EEE9AC00](v59);
  v57 = &v43[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v48 = type metadata accessor for ClinicalSharingSelectableAuthorizationCategoryItem();
  v3 = *(v48 - 8);
  v4 = MEMORY[0x1EEE9AC00](v48);
  v6 = &v43[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v43[-v7];
  v9 = sub_1D138F0BC();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v43[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1D138F07C();
  v13 = sub_1D138F0AC();
  v14 = sub_1D139081C();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v53 = v15;
    v54 = swift_slowAlloc();
    v60 = v54;
    *v15 = 136315138;
    v16 = sub_1D139184C();
    v18 = sub_1D11DF718(v16, v17, &v60);
    v55 = v9;
    v19 = v14;
    v20 = v18;

    v21 = v53;
    *(v53 + 1) = v20;
    _os_log_impl(&dword_1D101F000, v13, v19, "[%s] Adding array of data types to selected items", v21, 0xCu);
    v22 = v54;
    __swift_destroy_boxed_opaque_existential_1Tm(v54);
    MEMORY[0x1D38882F0](v22, -1, -1);
    MEMORY[0x1D38882F0](v21, -1, -1);

    (*(v10 + 8))(v12, v55);
  }

  else
  {

    (*(v10 + 8))(v12, v9);
  }

  v51 = *(v56 + 16);
  if (v51)
  {
    v23 = 0;
    v24 = (*(v3 + 80) + 32) & ~*(v3 + 80);
    v25 = *(v3 + 72);
    v49 = v24;
    v50 = v56 + v24;
    v56 = v45 + 16;
    v26 = MEMORY[0x1E69E7CC0];
    v55 = (v45 + 8);
    v46 = v25;
    v47 = v6;
    v58 = v8;
    while (1)
    {
      sub_1D111EC40(v50 + v25 * v23, v8);
      v27 = *(v52 + 24);
      if (*(v27 + 16))
      {
        v53 = v26;
        v54 = v23;
        sub_1D13360A4(&qword_1EC60A930, MEMORY[0x1E69A3910]);

        v28 = sub_1D139006C();
        v29 = -1 << *(v27 + 32);
        v30 = v28 & ~v29;
        if ((*(v27 + 56 + ((v30 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v30))
        {
          v31 = ~v29;
          v32 = *(v45 + 72);
          v33 = *(v45 + 16);
          while (1)
          {
            v34 = v57;
            v35 = v59;
            v33(v57, *(v27 + 48) + v32 * v30, v59);
            sub_1D13360A4(&qword_1EC60A938, MEMORY[0x1E69A3910]);
            v36 = sub_1D139011C();
            (*v55)(v34, v35);
            if (v36)
            {
              break;
            }

            v30 = (v30 + 1) & v31;
            if (((*(v27 + 56 + ((v30 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v30) & 1) == 0)
            {
              goto LABEL_13;
            }
          }

          v8 = v58;
          sub_1D111ECA4(v58);
          v25 = v46;
          v6 = v47;
          v26 = v53;
          v23 = v54;
          goto LABEL_7;
        }

LABEL_13:

        v25 = v46;
        v6 = v47;
        v8 = v58;
        v26 = v53;
        v23 = v54;
      }

      sub_1D10F0DFC(v8, v6);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v60 = v26;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1D10FD934(0, *(v26 + 16) + 1, 1);
        v26 = v60;
      }

      v39 = *(v26 + 16);
      v38 = *(v26 + 24);
      if (v39 >= v38 >> 1)
      {
        sub_1D10FD934(v38 > 1, v39 + 1, 1);
        v26 = v60;
      }

      *(v26 + 16) = v39 + 1;
      sub_1D10F0DFC(v6, v26 + v49 + v39 * v25);
LABEL_7:
      if (++v23 == v51)
      {
        goto LABEL_20;
      }
    }
  }

  v26 = MEMORY[0x1E69E7CC0];
LABEL_20:
  v40 = v52;
  *(v52 + 32) = v44 & 1;
  v60 = *(v40 + 16);

  sub_1D11222FC(v26);
  v41 = *(v40 + 16);
  *(v40 + 16) = v60;
  sub_1D133575C(v41);

  *(v40 + 32) = 0;
  return result;
}

uint64_t sub_1D1336038()
{

  sub_1D1138F60(*(v0 + 40));

  return swift_deallocClassInstance();
}

uint64_t sub_1D13360A4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t AccountStatusSummaryTileSettingsManager.__allocating_init(healthStore:)(uint64_t a1)
{
  v2 = swift_allocObject();
  v3 = MEMORY[0x1E69E7CC8];
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  sub_1D1336F8C();
  return v2;
}

uint64_t AccountStatusSummaryTileSettingsManager.init(healthStore:)(void *a1)
{
  v2 = MEMORY[0x1E69E7CC8];
  *(v1 + 16) = a1;
  *(v1 + 24) = v2;
  v3 = a1;
  sub_1D1336F8C();

  return v1;
}

id sub_1D13361C0()
{
  v1 = v0;
  v2 = sub_1D138ED9C();
  v4 = v3;
  swift_beginAccess();
  v5 = *(v0 + 24);
  if (*(v5 + 16))
  {

    v6 = sub_1D11362EC(v2, v4);
    if (v7)
    {
      v8 = v6;

      v9 = *(*(v5 + 56) + 8 * v8);

      return v9;
    }
  }

  v11 = *(v1 + 16);
  v12 = objc_allocWithZone(MEMORY[0x1E696C210]);
  v13 = sub_1D139012C();
  v14 = [v12 initWithCategory:2 domainName:v13 healthStore:v11];

  swift_beginAccess();
  v15 = v14;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17 = *(v1 + 24);
  *(v1 + 24) = 0x8000000000000000;
  sub_1D11DAD44(v15, v2, v4, isUniquelyReferenced_nonNull_native);

  *(v1 + 24) = v17;
  swift_endAccess();
  return v15;
}

uint64_t sub_1D1336324()
{
  sub_1D109C820();
  v1 = v0;
  v2 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D13361C0();
  v6 = sub_1D139087C();

  v9[1] = v6;
  sub_1D109C8BC();
  sub_1D1337390(&qword_1EE069678, sub_1D109C8BC);
  sub_1D138F84C();

  sub_1D1337390(&qword_1EE0696C8, sub_1D109C820);
  v7 = sub_1D138F80C();
  (*(v2 + 8))(v4, v1);
  return v7;
}

uint64_t sub_1D13364E8@<X0>(uint64_t a1@<X0>, BOOL *a2@<X8>)
{
  v4 = sub_1D138D57C();
  result = (*(*(v4 - 8) + 48))(a1, 1, v4);
  *a2 = result == 1;
  return result;
}

uint64_t sub_1D1336554(int a1, uint64_t a2)
{
  v76 = a1;
  v80 = *v2;
  sub_1D13392D0(0, &qword_1EC60F950, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E695C000]);
  v83 = v4;
  v81 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v70 - v5;
  sub_1D13384CC(0, &qword_1EC60F958, MEMORY[0x1E695C0C0]);
  v84 = v7;
  v82 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v70 - v8;
  sub_1D13383D8(0, &qword_1EE06B500, MEMORY[0x1E6969530]);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v75 = &v70 - v11;
  v12 = sub_1D138F0BC();
  v85 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v70 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v70 - v16;
  sub_1D13383D8(0, &qword_1EE0696E0, MEMORY[0x1E69A3E90]);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = &v70 - v19;
  v21 = sub_1D138EDCC();
  v78 = *(v21 - 8);
  v79 = v21;
  MEMORY[0x1EEE9AC00](v21);
  v77 = &v70 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*(a2 + 16) || (v23 = sub_1D11362EC(0x49746E756F636361, 0xE900000000000064), (v24 & 1) == 0) || !*(a2 + 16))
  {
LABEL_8:
    sub_1D138F06C();

    v34 = sub_1D138F0AC();
    v35 = sub_1D13907FC();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v87[0] = v37;
      *v36 = 136315394;
      v86 = v80;
      swift_getMetatypeMetadata();
      v38 = sub_1D13901EC();
      v74 = v12;
      v40 = sub_1D11DF718(v38, v39, v87);

      *(v36 + 4) = v40;
      *(v36 + 12) = 2080;
      v86 = a2;
      sub_1D10FA6A8();

      sub_1D13916AC();
      v41 = HKSensitiveLogItem();
      swift_unknownObjectRelease();
      sub_1D139101C();
      swift_unknownObjectRelease();
      v42 = sub_1D13901EC();
      v44 = sub_1D11DF718(v42, v43, v87);

      *(v36 + 14) = v44;
      _os_log_impl(&dword_1D101F000, v34, v35, "[%s] failed to track account summary tile appearance, not enough information provided in userInfo: %s", v36, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1D38882F0](v37, -1, -1);
      MEMORY[0x1D38882F0](v36, -1, -1);

      (*(v85 + 8))(v14, v74);
    }

    else
    {

      (*(v85 + 8))(v14, v12);
    }

    sub_1D138F71C();
    sub_1D10922EC();
    v45 = v83;
    sub_1D138F6FC();
    (*(v81 + 8))(v6, v45);
    sub_1D133842C(&qword_1EC60F960, &qword_1EC60F958, MEMORY[0x1E695C0C0]);
    v46 = v84;
    v47 = sub_1D138F80C();
    (*(v82 + 8))(v9, v46);
    return v47;
  }

  v25 = (*(a2 + 56) + 16 * v23);
  v26 = v25[1];
  v73 = *v25;

  v27 = sub_1D11362EC(0x65707954656C6974, 0xE800000000000000);
  if ((v28 & 1) == 0)
  {

    goto LABEL_8;
  }

  v72 = v26;
  v29 = (*(a2 + 56) + 16 * v27);
  v30 = *v29;
  v31 = v29[1];
  swift_bridgeObjectRetain_n();
  v70 = v30;
  v71 = v31;
  sub_1D138EDAC();
  v32 = v79;
  v33 = v78;
  if ((*(v78 + 48))(v20, 1, v79) == 1)
  {

    sub_1D1338470(v20, &qword_1EE0696E0, MEMORY[0x1E69A3E90]);
    goto LABEL_8;
  }

  v49 = v33;
  v50 = v77;
  (*(v33 + 32))(v77, v20, v32);
  sub_1D138F06C();
  v51 = v72;

  v52 = v71;

  v53 = sub_1D138F0AC();
  v54 = sub_1D139081C();

  if (os_log_type_enabled(v53, v54))
  {
    v55 = swift_slowAlloc();
    v74 = v12;
    v56 = v55;
    v57 = swift_slowAlloc();
    v87[0] = v57;
    *v56 = 136315906;
    v86 = v80;
    swift_getMetatypeMetadata();
    v58 = sub_1D13901EC();
    v60 = sub_1D11DF718(v58, v59, v87);

    *(v56 + 4) = v60;
    *(v56 + 12) = 2080;
    v61 = sub_1D11DF718(v70, v52, v87);

    *(v56 + 14) = v61;
    *(v56 + 22) = 1024;
    v62 = v76;
    *(v56 + 24) = v76 & 1;
    *(v56 + 28) = 2080;
    v49 = v78;
    *(v56 + 30) = sub_1D11DF718(v73, v51, v87);
    _os_log_impl(&dword_1D101F000, v53, v54, "[%s] setting account summary %s tile dismissal to %{BOOL}d for account %s", v56, 0x26u);
    swift_arrayDestroy();
    v63 = v57;
    v50 = v77;
    MEMORY[0x1D38882F0](v63, -1, -1);
    MEMORY[0x1D38882F0](v56, -1, -1);

    (*(v85 + 8))(v17, v74);
  }

  else
  {

    (*(v85 + 8))(v17, v12);
    v62 = v76;
  }

  v64 = sub_1D13361C0();
  v65 = v75;
  if (v62)
  {
    sub_1D138D56C();
    v66 = 0;
  }

  else
  {
    v66 = 1;
  }

  v67 = sub_1D138D57C();
  (*(*(v67 - 8) + 56))(v65, v66, 1, v67);
  v68 = sub_1D139088C();

  sub_1D1338470(v65, &qword_1EE06B500, MEMORY[0x1E6969530]);
  v86 = v68;
  v69 = MEMORY[0x1E695C028];
  sub_1D13384CC(0, &qword_1EC609D78, MEMORY[0x1E695C028]);
  sub_1D133842C(&qword_1EC609D80, &qword_1EC609D78, v69);
  v47 = sub_1D138F80C();
  (*(v49 + 8))(v50, v79);

  return v47;
}

void sub_1D1336F8C()
{
  v1 = v0;
  v2 = sub_1D138F0BC();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v7 = sub_1D139012C();
  v8 = [v6 initWithSuiteName_];

  if (v8)
  {
    v9 = [v8 dictionaryRepresentation];
    v10 = sub_1D138FFFC();

    if (*(v10 + 16))
    {
      sub_1D138F06C();

      v11 = sub_1D138F0AC();
      v12 = sub_1D139081C();

      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        v34 = v3;
        v14 = v13;
        v15 = swift_slowAlloc();
        v33 = v15;
        *v14 = 136446210;
        v35 = *v1;
        v36[0] = v15;
        sub_1D1339268();
        v16 = sub_1D13901EC();
        v18 = sub_1D11DF718(v16, v17, v36);

        *(v14 + 4) = v18;
        _os_log_impl(&dword_1D101F000, v11, v12, "[%{public}s] Migrating account status summary tile dismissal states", v14, 0xCu);
        v19 = v33;
        __swift_destroy_boxed_opaque_existential_1Tm(v33);
        MEMORY[0x1D38882F0](v19, -1, -1);
        MEMORY[0x1D38882F0](v14, -1, -1);

        (*(v34 + 8))(v5, v2);
      }

      else
      {

        (*(v3 + 8))(v5, v2);
      }

      v20 = 1 << *(v10 + 32);
      v21 = -1;
      if (v20 < 64)
      {
        v21 = ~(-1 << v20);
      }

      v22 = v21 & *(v10 + 64);
      v23 = (v20 + 63) >> 6;

      v24 = 0;
      while (v22)
      {
        v25 = v24;
LABEL_17:
        v26 = __clz(__rbit64(v22));
        v22 &= v22 - 1;
        v27 = v26 | (v25 << 6);
        v28 = (*(v10 + 48) + 16 * v27);
        v29 = *v28;
        v30 = v28[1];
        sub_1D109F94C(*(v10 + 56) + 32 * v27, v37);
        v36[0] = v29;
        v36[1] = v30;

        sub_1D1338C40(v29, v30, v37, v1);
        sub_1D13391A4(v36);
      }

      while (1)
      {
        v25 = v24 + 1;
        if (__OFADD__(v24, 1))
        {
          break;
        }

        if (v25 >= v23)
        {

          v31 = sub_1D139012C();
          [v8 hk:v31 removeObjectsForKeysWithPrefix:?];

          return;
        }

        v22 = *(v10 + 64 + 8 * v25);
        ++v24;
        if (v22)
        {
          v24 = v25;
          goto LABEL_17;
        }
      }

      __break(1u);
    }

    else
    {
    }
  }
}

uint64_t sub_1D1337390(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D133742C(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v79 = a3;
  v78 = a2;
  v96 = *MEMORY[0x1E69E9840];
  v5 = sub_1D138F0BC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v70 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = sub_1D138D5EC();
  v81 = *(v86 - 8);
  MEMORY[0x1EEE9AC00](v86);
  v85 = v70 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1D138EDCC();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v70 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = sub_1D138D57C();
  v14 = *(v88 - 8);
  MEMORY[0x1EEE9AC00](v88);
  v87 = v70 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D138D56C();
  v16 = *(v11 + 104);
  v73 = *MEMORY[0x1E69A3E88];
  v74 = v11 + 104;
  v72 = v16;
  v16(v13);
  v17 = sub_1D13361C0();
  v18 = *(v11 + 8);
  v75 = v13;
  v77 = v10;
  v76 = v11 + 8;
  v71 = v18;
  v18(v13, v10);
  *&aBlock = 0;
  v19 = [v17 allValuesWithError_];

  v20 = aBlock;
  v80 = v14;
  if (v19)
  {
    v21 = sub_1D138FFFC();
    v22 = v20;

    v70[1] = v3;
    if (a1 >> 62)
    {
LABEL_27:
      v23 = sub_1D13910DC();
      if (v23)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v23 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v23)
      {
LABEL_4:
        if (v23 < 1)
        {
          __break(1u);
        }

        v24 = a1;
        a1 = 0;
        v84 = v24;
        v82 = (v14 + 16);
        v83 = v24 & 0xC000000000000001;
        ++v81;
        do
        {
          v14 = v23;
          if (v83)
          {
            v26 = MEMORY[0x1D3886B70](a1, v84);
          }

          else
          {
            v26 = *(v84 + 8 * a1 + 32);
          }

          v27 = v26;
          v28 = v88;
          v95 = v88;
          boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v94);
          (*v82)(boxed_opaque_existential_1, v87, v28);
          v30 = [v27 identifier];
          v31 = v85;
          sub_1D138D5CC();

          v32 = sub_1D138D59C();
          v34 = v33;
          (*v81)(v31, v86);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v89 = v21;
          v37 = sub_1D11362EC(v32, v34);
          v38 = v21[2];
          v39 = (v36 & 1) == 0;
          v40 = v38 + v39;
          if (__OFADD__(v38, v39))
          {
            __break(1u);
LABEL_26:
            __break(1u);
            goto LABEL_27;
          }

          v41 = v36;
          if (v21[3] >= v40)
          {
            if (isUniquelyReferenced_nonNull_native)
            {
              v21 = v89;
              if (v36)
              {
                goto LABEL_6;
              }
            }

            else
            {
              sub_1D11825B8();
              v21 = v89;
              if (v41)
              {
                goto LABEL_6;
              }
            }
          }

          else
          {
            sub_1D117C9F4(v40, isUniquelyReferenced_nonNull_native);
            v42 = sub_1D11362EC(v32, v34);
            if ((v41 & 1) != (v43 & 1))
            {
              result = sub_1D13916CC();
              __break(1u);
              return result;
            }

            v37 = v42;
            v21 = v89;
            if (v41)
            {
LABEL_6:
              v25 = 32 * v37;
              sub_1D109E39C((v21[7] + v25), &aBlock);
              sub_1D109E39C(&v94, (v21[7] + v25));

              goto LABEL_7;
            }
          }

          v21[(v37 >> 6) + 8] |= 1 << v37;
          v44 = (v21[6] + 16 * v37);
          *v44 = v32;
          v44[1] = v34;
          sub_1D109E39C(&v94, (v21[7] + 32 * v37));
          v45 = v21[2];
          v46 = __OFADD__(v45, 1);
          v47 = v45 + 1;
          if (v46)
          {
            goto LABEL_26;
          }

          v21[2] = v47;
          aBlock = 0u;
          v91 = 0u;
LABEL_7:
          ++a1;

          sub_1D1096BE0(&aBlock);
          v23 = v14;
        }

        while (v14 != a1);
      }
    }

    v62 = v75;
    v63 = v77;
    v72(v75, v73, v77);
    v64 = sub_1D13361C0();
    v71(v62, v63);
    v65 = sub_1D138FFEC();

    v66 = swift_allocObject();
    v67 = v78;
    v68 = v79;
    *(v66 + 16) = v78;
    *(v66 + 24) = v68;
    v92 = sub_1D1339320;
    v93 = v66;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    *&v91 = sub_1D112A218;
    *(&v91 + 1) = &block_descriptor_72;
    v69 = _Block_copy(&aBlock);
    sub_1D102CE24(v67);

    [v64 setValuesWithDictionary:v65 completion:v69];
    _Block_release(v69);

    return (*(v80 + 8))(v87, v88);
  }

  else
  {
    v48 = v6;
    v49 = v5;
    v50 = aBlock;
    v51 = sub_1D138D2BC();

    swift_willThrow();
    sub_1D138F06C();
    v52 = v51;
    v53 = sub_1D138F0AC();
    v54 = sub_1D13907FC();

    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      *&aBlock = v56;
      *v55 = 136315138;
      *&v94 = v51;
      v57 = v51;
      sub_1D10922EC();
      v58 = sub_1D13901EC();
      v60 = sub_1D11DF718(v58, v59, &aBlock);

      *(v55 + 4) = v60;
      _os_log_impl(&dword_1D101F000, v53, v54, "HKKeyValueDomain returned error when attempting to fetch ids of dismissed upgrade tiles: %s", v55, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v56);
      MEMORY[0x1D38882F0](v56, -1, -1);
      MEMORY[0x1D38882F0](v55, -1, -1);
    }

    (*(v48 + 8))(v8, v49);
    return (*(v80 + 8))(v87, v88);
  }
}

uint64_t sub_1D1337CE0(uint64_t a1, void *a2, void (*a3)(uint64_t))
{
  v5 = sub_1D138F0BC();
  v6 = *(v5 - 8);
  result = MEMORY[0x1EEE9AC00](v5);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a2)
  {
LABEL_4:
    if (!a3)
    {
      return result;
    }

    goto LABEL_5;
  }

  v10 = a2;
  sub_1D138F06C();
  v11 = a2;
  v12 = sub_1D138F0AC();
  v13 = sub_1D13907FC();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v24 = v6;
    v15 = v14;
    v16 = swift_slowAlloc();
    v25 = a2;
    v26 = v16;
    *v15 = 136315138;
    v17 = a2;
    sub_1D10922EC();
    v18 = sub_1D13901EC();
    v20 = sub_1D11DF718(v18, v19, &v26);
    v23 = v5;
    v21 = v20;

    *(v15 + 4) = v21;
    _os_log_impl(&dword_1D101F000, v12, v13, "HKKeyValueDomain returned error when attempting to set ids of dismissed upgrade tiles: %s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v16);
    MEMORY[0x1D38882F0](v16, -1, -1);
    MEMORY[0x1D38882F0](v15, -1, -1);

    result = (*(v24 + 8))(v9, v23);
    goto LABEL_4;
  }

  result = (*(v6 + 8))(v9, v5);
  if (!a3)
  {
    return result;
  }

LABEL_5:

  a3(v22);
  return sub_1D1138F60(a3);
}

void *sub_1D1337F2C(uint64_t a1)
{
  v39[5] = *MEMORY[0x1E69E9840];
  v2 = sub_1D138EDCC();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v34[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_1D138F0BC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v34[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_1D13361C0();
  v39[0] = 0;
  v11 = [v10 allValuesWithError_];

  v12 = v39[0];
  if (!v11)
  {
    v19 = v39[0];
    v20 = sub_1D138D2BC();

    swift_willThrow();
    sub_1D138F06C();
    (*(v3 + 16))(v5, a1, v2);
    v21 = v20;
    v22 = sub_1D138F0AC();
    v23 = sub_1D13907FC();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v39[0] = v36;
      *v24 = 136315394;
      v35 = v23;
      v25 = sub_1D138EDBC();
      v37 = v7;
      v27 = v26;
      (*(v3 + 8))(v5, v2);
      v28 = sub_1D11DF718(v25, v27, v39);

      *(v24 + 4) = v28;
      *(v24 + 12) = 2080;
      v38 = v20;
      v29 = v20;
      sub_1D10922EC();
      v30 = sub_1D13901EC();
      v32 = sub_1D11DF718(v30, v31, v39);

      *(v24 + 14) = v32;
      _os_log_impl(&dword_1D101F000, v22, v35, "HKKeyValueDomain error when attempting to fetch ids of dismissed tiles of type %s: %s", v24, 0x16u);
      v33 = v36;
      swift_arrayDestroy();
      MEMORY[0x1D38882F0](v33, -1, -1);
      MEMORY[0x1D38882F0](v24, -1, -1);

      (*(v37 + 8))(v9, v6);
    }

    else
    {

      (*(v3 + 8))(v5, v2);
      (*(v7 + 8))(v9, v6);
    }

    return MEMORY[0x1E69E7CC0];
  }

  v13 = sub_1D138FFFC();
  v14 = v12;

  v15 = *(v13 + 16);
  if (!v15)
  {

    return MEMORY[0x1E69E7CC0];
  }

  v16 = sub_1D129F730(*(v13 + 16), 0);
  v17 = sub_1D12A2F70(v39, v16 + 4, v15, v13);
  sub_1D102CC30();
  if (v17 != v15)
  {
    __break(1u);
  }

  return v16;
}

uint64_t AccountStatusSummaryTileSettingsManager.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

void sub_1D13383D8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t sub_1D133842C(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, unint64_t, void))
{
  result = *a1;
  if (!result)
  {
    sub_1D13384CC(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D1338470(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_1D13383D8(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_1D13384CC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, unint64_t, void))
{
  if (!*a2)
  {
    v6 = sub_1D10922EC();
    v7 = a3(a1, MEMORY[0x1E69E7CA8] + 8, v6, MEMORY[0x1E69E7288]);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1D1338540(unint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  v4 = a4[6] + 72 * result;
  v5 = *(a2 + 48);
  *(v4 + 32) = *(a2 + 32);
  *(v4 + 48) = v5;
  *(v4 + 64) = *(a2 + 64);
  v6 = *(a2 + 16);
  *v4 = *a2;
  *(v4 + 16) = v6;
  *(a4[7] + 8 * result) = a3;
  v7 = a4[2];
  v8 = __OFADD__(v7, 1);
  v9 = v7 + 1;
  if (v8)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v9;
  }

  return result;
}

unint64_t sub_1D13385A0(unint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + 8 * result) = a2;
  *(a4[7] + 8 * result) = a3;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

  return result;
}

uint64_t sub_1D13385E4(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = sub_1D138E52C();
  result = (*(*(v10 - 8) + 32))(v9 + *(*(v10 - 8) + 72) * a1, a4, v10);
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

unint64_t sub_1D1338694(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  v6 = a5[7] + 72 * result;
  *(v6 + 64) = *(a4 + 64);
  v7 = *(a4 + 48);
  *(v6 + 32) = *(a4 + 32);
  *(v6 + 48) = v7;
  v8 = *(a4 + 16);
  *v6 = *a4;
  *(v6 + 16) = v8;
  v9 = a5[2];
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v11;
  }

  return result;
}

unint64_t sub_1D13386F8(unint64_t result, uint64_t a2, void *a3, double a4)
{
  a3[(result >> 6) + 8] |= 1 << result;
  *(a3[6] + 8 * result) = a4;
  *(a3[7] + 8 * result) = a2;
  v4 = a3[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a3[2] = v6;
  }

  return result;
}

unint64_t sub_1D133873C(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  a7[(result >> 6) + 8] |= 1 << result;
  v7 = (a7[6] + 32 * result);
  *v7 = a2;
  v7[1] = a3;
  v7[2] = a4;
  v7[3] = a5;
  *(a7[7] + 8 * result) = a6;
  v8 = a7[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a7[2] = v10;
  }

  return result;
}

uint64_t sub_1D1338788(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_1D138D5EC();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  v11 = a4[7] + 72 * a1;
  *(v11 + 64) = *(a3 + 64);
  v12 = *(a3 + 48);
  *(v11 + 32) = *(a3 + 32);
  *(v11 + 48) = v12;
  v13 = *(a3 + 16);
  *v11 = *a3;
  *(v11 + 16) = v13;
  v14 = a4[2];
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v16;
  }

  return result;
}

unint64_t sub_1D133885C(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, char a5, _OWORD *a6, void *a7)
{
  a7[(result >> 6) + 8] |= 1 << result;
  v7 = a7[6] + 32 * result;
  *v7 = a2;
  *(v7 + 8) = a3;
  *(v7 + 16) = a4;
  *(v7 + 24) = a5 & 1;
  v8 = (a7[7] + 48 * result);
  v9 = a6[1];
  *v8 = *a6;
  v8[1] = v9;
  v8[2] = a6[2];
  v10 = a7[2];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    a7[2] = v12;
  }

  return result;
}

_OWORD *sub_1D13388C4(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_1D109E39C(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

unint64_t sub_1D1338930(unint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  v4 = a4[6] + 40 * result;
  v5 = *(a2 + 16);
  *v4 = *a2;
  *(v4 + 16) = v5;
  *(v4 + 32) = *(a2 + 32);
  *(a4[7] + 8 * result) = a3;
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

_OWORD *sub_1D1338988(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  result = sub_1D109E39C(a3, (a4[7] + 32 * a1));
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

unint64_t sub_1D13389F0(unint64_t result, char a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + result) = a2;
  *(a4[7] + 8 * result) = a3;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

  return result;
}

unint64_t sub_1D1338A34(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + 8 * result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

uint64_t sub_1D1338A7C(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for BrowseCategory();
  result = sub_1D10F36E4(a2, v8 + *(*(v9 - 8) + 72) * a1);
  v11 = a4[7] + 72 * a1;
  *(v11 + 64) = *(a3 + 64);
  v12 = *(a3 + 48);
  *(v11 + 32) = *(a3 + 32);
  *(v11 + 48) = v12;
  v13 = *(a3 + 16);
  *v11 = *a3;
  *(v11 + 16) = v13;
  v14 = a4[2];
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v16;
  }

  return result;
}

unint64_t sub_1D1338B38(unint64_t result, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + 8 * result) = a2;
  v4 = (a4[7] + 48 * result);
  v5 = a3[1];
  *v4 = *a3;
  v4[1] = v5;
  v4[2] = a3[2];
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

unint64_t sub_1D1338B90(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  if ((a3 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(a3) & 0xF;
  }

  else
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  v4 = 7;
  if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
  {
    v4 = 11;
  }

  v5 = v4 | (v3 << 16);
  result = sub_1D13902AC();
  if (v6)
  {
    result = v5;
  }

  if (4 * v3 < result >> 14)
  {
    goto LABEL_14;
  }

  return sub_1D139037C();
}

uint64_t sub_1D1338C40(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t *a4)
{
  v54[4] = *MEMORY[0x1E69E9840];
  v8 = sub_1D138F0BC();
  v49 = *(v8 - 8);
  v50 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v48 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1D138EDCC();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1D138D57C();
  v51 = *(v14 - 8);
  v52 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_1D139032C();
  if (result)
  {
    sub_1D109F94C(a3, v54);
    result = swift_dynamicCast();
    if (result)
    {

      v18 = sub_1D139028C();
      v19 = sub_1D1338B90(v18, a1, a2);
      v21 = v20;
      v23 = v22;
      v25 = v24;

      v26 = MEMORY[0x1D3885B80](v19, v21, v23, v25);
      v28 = v27;

      sub_1D138D3EC();
      (*(v11 + 104))(v13, *MEMORY[0x1E69A3E80], v10);
      v29 = sub_1D13361C0();
      (*(v11 + 8))(v13, v10);
      v30 = sub_1D138D4EC();
      v47 = v26;
      v31 = sub_1D139012C();
      v54[0] = 0;
      LODWORD(v26) = [v29 setDate:v30 forKey:v31 error:v54];

      if (v26)
      {
        v32 = *(v51 + 8);
        v33 = v54[0];
        v32(v16, v52);
      }

      else
      {
        v34 = v54[0];
        v35 = sub_1D138D2BC();

        swift_willThrow();
        v36 = v48;
        sub_1D138F06C();

        v37 = sub_1D138F0AC();
        v38 = sub_1D13907FC();

        if (os_log_type_enabled(v37, v38))
        {
          v39 = swift_slowAlloc();
          v40 = swift_slowAlloc();
          v46 = v35;
          v41 = v40;
          *v39 = 136446466;
          v53 = *a4;
          v54[0] = v40;
          sub_1D1339268();
          v42 = sub_1D13901EC();
          v44 = sub_1D11DF718(v42, v43, v54);

          *(v39 + 4) = v44;
          *(v39 + 12) = 2082;
          v45 = sub_1D11DF718(v47, v28, v54);

          *(v39 + 14) = v45;
          _os_log_impl(&dword_1D101F000, v37, v38, "[%{public}s] Failed to migrate account status summary tile dismissal for: %{public}s", v39, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x1D38882F0](v41, -1, -1);
          MEMORY[0x1D38882F0](v39, -1, -1);
        }

        else
        {
        }

        (*(v49 + 8))(v36, v50);
        return (*(v51 + 8))(v16, v52);
      }
    }
  }

  return result;
}

uint64_t sub_1D13391A4(uint64_t a1)
{
  sub_1D1339200();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1D1339200()
{
  if (!qword_1EE0695E8)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EE0695E8);
    }
  }
}

unint64_t sub_1D1339268()
{
  result = qword_1EE0697A8[0];
  if (!qword_1EE0697A8[0])
  {
    type metadata accessor for AccountStatusSummaryTileSettingsManager();
    result = swift_getMetatypeMetadata();
    atomic_store(result, qword_1EE0697A8);
  }

  return result;
}

void sub_1D13392D0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t block_copy_helper_73(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id HealthRecordsMigrator.__allocating_init(healthStore:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  if (qword_1EE06AB28 != -1)
  {
    swift_once();
  }

  v4 = qword_1EE06D978;
  v5 = objc_allocWithZone(v1);

  v6 = sub_1D133A6A8(a1, v4);

  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v6;
}

id HealthRecordsMigrator.init(healthStore:)(void *a1)
{
  ObjectType = swift_getObjectType();
  if (qword_1EE06AB28 != -1)
  {
    v7 = ObjectType;
    swift_once();
    ObjectType = v7;
  }

  v3 = qword_1EE06D978;
  v4 = objc_allocWithZone(ObjectType);

  v5 = sub_1D133A6A8(a1, v3);

  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v5;
}

uint64_t HealthRecordsMigrator.migrateIfNeeded(completion:)(uint64_t (*a1)(void), uint64_t a2)
{
  v5 = sub_1D138F0BC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*&v2[OBJC_IVAR___HRHealthRecordsMigrator_searchIndexController])
  {
    v9 = swift_allocObject();
    v9[2] = v2;
    v9[3] = a1;
    v9[4] = a2;
    v10 = v2;

    sub_1D1339988(sub_1D133A9DC, v9);
  }

  else
  {
    sub_1D138F08C();
    v12 = sub_1D138F0AC();
    v13 = sub_1D139081C();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_1D101F000, v12, v13, "Unable to perform health record search index migration since private SearchIndex is unsupported for non-sandbox process", v14, 2u);
      MEMORY[0x1D38882F0](v14, -1, -1);
    }

    (*(v6 + 8))(v8, v5);
    return a1(0);
  }
}

void sub_1D1339890(void *a1, char a2, void *a3, void (*a4)(void *), uint64_t a5)
{
  if (a2)
  {
    v8 = a1;
    sub_1D10922EC();
    swift_willThrowTypedImpl();
    v9 = a1;
    a4(a1);
    sub_1D133ACCC(a1, 1);
    sub_1D133ACCC(a1, 1);
  }

  else if (a1 == 1)
  {
    a4(0);
  }

  else
  {

    v11 = a3;
    sub_1D133AD40(v11, a4, a5, v11);
  }
}

void sub_1D1339988(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1D138F0BC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D138F08C();
  v10 = sub_1D138F0AC();
  v11 = sub_1D139081C();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_1D101F000, v10, v11, "Fetching DataVersion...", v12, 2u);
    MEMORY[0x1D38882F0](v12, -1, -1);
  }

  (*(v7 + 8))(v9, v6);
  v13 = *(v3 + OBJC_IVAR___HRHealthRecordsMigrator_keyValueDomain);
  v14 = sub_1D139012C();
  v15 = swift_allocObject();
  *(v15 + 16) = a1;
  *(v15 + 24) = a2;
  aBlock[4] = sub_1D133ACA0;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D1226920;
  aBlock[3] = &block_descriptor_73;
  v16 = _Block_copy(aBlock);

  [v13 numberForKey:v14 completion:v16];
  _Block_release(v16);
}

void sub_1D1339C20(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = sub_1D138D2AC();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  (*(a2 + 16))(a2);
}

void sub_1D1339C84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_1D138F0BC();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D138F08C();
  v12 = sub_1D138F0AC();
  v13 = sub_1D139081C();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v33 = a3;
    v15 = v14;
    v16 = swift_slowAlloc();
    v32 = v3;
    v17 = v16;
    v34 = a1;
    aBlock[0] = v16;
    *v15 = 136446210;
    v18 = sub_1D13915CC();
    v20 = sub_1D11DF718(v18, v19, aBlock);
    v31 = v8;
    v21 = a1;
    v22 = a2;
    v23 = v20;

    *(v15 + 4) = v23;
    a2 = v22;
    a1 = v21;
    _os_log_impl(&dword_1D101F000, v12, v13, "Setting DataVersion to %{public}s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v17);
    v24 = v17;
    v4 = v32;
    MEMORY[0x1D38882F0](v24, -1, -1);
    v25 = v15;
    a3 = v33;
    MEMORY[0x1D38882F0](v25, -1, -1);

    (*(v9 + 8))(v11, v31);
  }

  else
  {

    (*(v9 + 8))(v11, v8);
  }

  v26 = *(v4 + OBJC_IVAR___HRHealthRecordsMigrator_keyValueDomain);
  v27 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  v28 = sub_1D139012C();
  v29 = swift_allocObject();
  *(v29 + 16) = a2;
  *(v29 + 24) = a3;
  aBlock[4] = sub_1D133AF6C;
  aBlock[5] = v29;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D112A218;
  aBlock[3] = &block_descriptor_21_5;
  v30 = _Block_copy(aBlock);

  [v26 setNumber:v27 forKey:v28 completion:v30];
  _Block_release(v30);
}

void sub_1D1339F80(uint64_t a1, void *a2, void (*a3)(void, void))
{
  v6 = sub_1D138F0BC();
  v7 = *(v6 - 8);
  *&v9 = MEMORY[0x1EEE9AC00](a1).n128_u64[0];
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v8)
  {
    v8 = [v8 integerValue];
  }

  if (a2)
  {
    v12 = a2;
  }

  else
  {
    v12 = v8;
  }

  v13 = a2;
  sub_1D138F08C();
  sub_1D133ACC0(v12, a2 != 0);
  v14 = sub_1D138F0AC();
  v15 = sub_1D139081C();
  sub_1D133ACCC(v12, a2 != 0);
  if (os_log_type_enabled(v14, v15))
  {
    v26 = v6;
    v16 = swift_slowAlloc();
    v24 = v16;
    v25 = swift_slowAlloc();
    v29 = v25;
    *v16 = 136446210;
    v27 = v12;
    v28 = a2 != 0;
    sub_1D133ACC0(v12, a2 != 0);
    sub_1D133ACD8();
    v17 = sub_1D139020C();
    v19 = a3;
    v20 = sub_1D11DF718(v17, v18, &v29);

    v21 = v24;
    *(v24 + 1) = v20;
    a3 = v19;
    v22 = v21;
    _os_log_impl(&dword_1D101F000, v14, v15, "Fetched DataVersion: %{public}s", v21, 0xCu);
    v23 = v25;
    __swift_destroy_boxed_opaque_existential_1Tm(v25);
    MEMORY[0x1D38882F0](v23, -1, -1);
    MEMORY[0x1D38882F0](v22, -1, -1);

    (*(v7 + 8))(v11, v26);
  }

  else
  {

    (*(v7 + 8))(v11, v6);
  }

  a3(v12, a2 != 0);
  sub_1D133ACCC(v12, a2 != 0);
}

void sub_1D133A210(int a1, void *a2, void (*a3)(void), uint64_t a4)
{
  LODWORD(v7) = a1;
  v8 = sub_1D138F0BC();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D138F08C();
  v12 = a2;
  v13 = sub_1D138F0AC();
  v14 = sub_1D139081C();

  if (!os_log_type_enabled(v13, v14))
  {

    (*(v9 + 8))(v11, v8);
    v21 = a2;
    if (a2)
    {
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  v25 = v7;
  v23[1] = a4;
  v24 = a3;
  v7 = swift_slowAlloc();
  v15 = swift_slowAlloc();
  v27 = v15;
  *v7 = 136446210;
  v16 = a2;
  if (!a2)
  {
    v16 = 0;
    if ((v25 & 1) == 0)
    {
      sub_1D133AF74();
      v16 = swift_allocError();
    }
  }

  v26 = v16;
  v17 = a2;
  sub_1D133B020(0, &qword_1EE06B078, sub_1D10922EC, MEMORY[0x1E69E6720]);
  v18 = sub_1D139020C();
  v20 = sub_1D11DF718(v18, v19, &v27);

  *(v7 + 4) = v20;
  _os_log_impl(&dword_1D101F000, v13, v14, "Set DataVersion: %{public}s", v7, 0xCu);
  __swift_destroy_boxed_opaque_existential_1Tm(v15);
  MEMORY[0x1D38882F0](v15, -1, -1);
  MEMORY[0x1D38882F0](v7, -1, -1);

  (*(v9 + 8))(v11, v8);
  a3 = v24;
  LOBYTE(v7) = v25;
  v21 = a2;
  if (!a2)
  {
LABEL_8:
    if ((v7 & 1) == 0)
    {
      sub_1D133AF74();
      v21 = swift_allocError();
    }
  }

LABEL_10:
  v22 = a2;
  a3(v21);
}

id HealthRecordsMigrator.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id HealthRecordsMigrator.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1D133A62C(void *a1, void (*a2)(void *), uint64_t a3)
{
  if (a1)
  {
    v5 = a1;
    a2(a1);
  }

  else
  {
    sub_1D1339C84(1, a2, a3);
  }
}

id sub_1D133A6A8(void *a1, uint64_t a2)
{
  v3 = v2;
  v20 = a1;
  v21 = a2;
  ObjectType = swift_getObjectType();
  v19 = sub_1D1390A6C();
  v4 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D1390A0C();
  MEMORY[0x1EEE9AC00](v7);
  v8 = sub_1D138FF0C();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v18 = OBJC_IVAR___HRHealthRecordsMigrator_queue;
  sub_1D108310C();
  sub_1D138FEEC();
  v24 = MEMORY[0x1E69E7CC0];
  sub_1D133AFC8();
  sub_1D133B020(0, &qword_1EE06B7A8, MEMORY[0x1E69E8030], MEMORY[0x1E69E62F8]);
  sub_1D1220F04();
  sub_1D139103C();
  (*(v4 + 104))(v6, *MEMORY[0x1E69E8090], v19);
  *&v2[v18] = sub_1D1390ABC();
  v9 = &v2[OBJC_IVAR___HRHealthRecordsMigrator_healthRecordsKeyValueDomain];
  *v9 = 0xD000000000000020;
  *(v9 + 1) = 0x80000001D13CD060;
  v10 = &v2[OBJC_IVAR___HRHealthRecordsMigrator_dataVersionKey];
  *v10 = 0x7372655661746164;
  *(v10 + 1) = 0xEB000000006E6F69;
  v11 = v20;
  v12 = v21;
  *&v2[OBJC_IVAR___HRHealthRecordsMigrator_healthStore] = v20;
  *&v2[OBJC_IVAR___HRHealthRecordsMigrator_searchIndexController] = v12;
  v13 = objc_allocWithZone(MEMORY[0x1E696C210]);

  v14 = v11;
  v15 = sub_1D139012C();
  v16 = [v13 initWithCategory:1 domainName:v15 healthStore:v14];

  *&v3[OBJC_IVAR___HRHealthRecordsMigrator_keyValueDomain] = v16;
  v23.receiver = v3;
  v23.super_class = ObjectType;
  return objc_msgSendSuper2(&v23, sel_init);
}

uint64_t sub_1D133AA28(char *a1, void (**a2)(void, void))
{
  v4 = sub_1D138F0BC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = swift_allocObject();
  *(v8 + 16) = a2;
  if (*&a1[OBJC_IVAR___HRHealthRecordsMigrator_searchIndexController])
  {
    v9 = swift_allocObject();
    v9[2] = a1;
    v9[3] = sub_1D133AC58;
    v9[4] = v8;
    _Block_copy(a2);
    v10 = a1;

    sub_1D1339988(sub_1D133B08C, v9);
  }

  else
  {
    _Block_copy(a2);
    sub_1D138F08C();
    v12 = sub_1D138F0AC();
    v13 = sub_1D139081C();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_1D101F000, v12, v13, "Unable to perform health record search index migration since private SearchIndex is unsupported for non-sandbox process", v14, 2u);
      MEMORY[0x1D38882F0](v14, -1, -1);
    }

    (*(v5 + 8))(v7, v4);
    a2[2](a2, 0);
  }
}

uint64_t objectdestroyTm_12()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t block_copy_helper_74(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_1D133ACC0(id result, char a2)
{
  if (a2)
  {
    return result;
  }

  return result;
}

void sub_1D133ACCC(id a1, char a2)
{
  if (a2)
  {
  }
}

void sub_1D133ACD8()
{
  if (!qword_1EE06A4B0)
  {
    sub_1D10922EC();
    v0 = sub_1D13917DC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE06A4B0);
    }
  }
}

uint64_t sub_1D133AD40(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = sub_1D138F0BC();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = swift_allocObject();
  v12[2] = a2;
  v12[3] = a3;
  v12[4] = a4;
  if (*(a1 + OBJC_IVAR___HRHealthRecordsMigrator_searchIndexController))
  {

    v13 = a4;

    sub_1D13879EC(sub_1D133AF60, v12);
  }

  else
  {

    a4;
    sub_1D138F08C();
    v15 = sub_1D138F0AC();
    v16 = sub_1D139081C();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_1D101F000, v15, v16, "Unable to perform health record search index migration since private SearchIndex is unsupported for non-sandbox process", v17, 2u);
      MEMORY[0x1D38882F0](v17, -1, -1);
    }

    (*(v9 + 8))(v11, v8);
    sub_1D1339C84(1, a2, a3);
  }
}

unint64_t sub_1D133AF74()
{
  result = qword_1EE06B4E8;
  if (!qword_1EE06B4E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE06B4E8);
  }

  return result;
}

unint64_t sub_1D133AFC8()
{
  result = qword_1EE06B770;
  if (!qword_1EE06B770)
  {
    sub_1D1390A0C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE06B770);
  }

  return result;
}

void sub_1D133B020(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1D133B090@<X0>(uint64_t a1@<X8>)
{
  sub_1D106A23C();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for UserDomainConceptViewData();
  sub_1D106A1D8(v1 + *(v6 + 36), v5);
  v7 = sub_1D138D57C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 48);
  if (v9(v5, 1, v7) != 1)
  {
    return (*(v8 + 32))(a1, v5, v7);
  }

  v10 = [*(v1 + 8) modificationDate];
  sub_1D138D52C();

  result = (v9)(v5, 1, v7);
  if (result != 1)
  {
    return sub_1D133BD78(v5, sub_1D106A23C);
  }

  return result;
}

uint64_t UserDomainConceptViewData.meaningfulDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for UserDomainConceptViewData() + 36);

  return sub_1D106A1D8(v3, a1);
}

uint64_t UserDomainConceptViewData.hash(into:)()
{
  v1 = v0;
  v2 = sub_1D138D57C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D106A23C();
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1D38870E0](*v0, v7);
  sub_1D1390D9C();
  MEMORY[0x1D38870E0](*(v0 + 2));
  sub_1D139027C();
  MEMORY[0x1D38870E0](*(v0 + 5));
  v10 = type metadata accessor for UserDomainConceptViewData();
  sub_1D106A1D8(&v0[v10[9]], v9);
  if ((*(v3 + 48))(v9, 1, v2) == 1)
  {
    sub_1D139179C();
  }

  else
  {
    (*(v3 + 32))(v5, v9, v2);
    sub_1D139179C();
    sub_1D133BDD8(&qword_1EC608ED8, MEMORY[0x1E6969530]);
    sub_1D139007C();
    (*(v3 + 8))(v5, v2);
  }

  v11 = *&v0[v10[10]];
  sub_1D139179C();
  if (v11)
  {
    v12 = v11;
    sub_1D1390D9C();
  }

  if (*&v1[v10[11] + 8])
  {
    sub_1D139179C();
    sub_1D139027C();
  }

  else
  {
    sub_1D139179C();
  }

  if (*&v1[v10[12] + 8])
  {
    sub_1D139179C();
    sub_1D139027C();
  }

  else
  {
    sub_1D139179C();
  }

  v13 = &v1[v10[13]];
  if (v13[8] == 1)
  {
    sub_1D139179C();
  }

  else
  {
    v14 = *v13;
    sub_1D139179C();
    MEMORY[0x1D38870E0](v14);
  }

  v15 = &v1[v10[14]];
  if (v15[8] == 1)
  {
    return sub_1D139179C();
  }

  v17 = *v15;
  sub_1D139179C();
  return MEMORY[0x1D38870E0](v17);
}

uint64_t UserDomainConceptViewData.hashValue.getter()
{
  sub_1D139177C();
  UserDomainConceptViewData.hash(into:)();
  return sub_1D13917CC();
}

uint64_t sub_1D133B5D8()
{
  sub_1D139177C();
  UserDomainConceptViewData.hash(into:)();
  return sub_1D13917CC();
}

uint64_t sub_1D133B61C()
{
  sub_1D139177C();
  UserDomainConceptViewData.hash(into:)();
  return sub_1D13917CC();
}

BOOL _s15HealthRecordsUI25UserDomainConceptViewDataV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = sub_1D138D57C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D106A23C();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D106C974();
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1 != *a2)
  {
    return 0;
  }

  v15 = v12;
  sub_1D106F934(0, &qword_1EE06B0C0);
  if ((sub_1D1390D8C() & 1) == 0 || a1[2] != a2[2])
  {
    return 0;
  }

  if ((a1[3] != a2[3] || a1[4] != a2[4]) && (sub_1D139162C() & 1) == 0)
  {
    return 0;
  }

  if (a1[5] != a2[5])
  {
    return 0;
  }

  v50 = type metadata accessor for UserDomainConceptViewData();
  v16 = *(v50 + 36);
  v17 = *(v15 + 48);
  sub_1D106A1D8(a1 + v16, v14);
  sub_1D106A1D8(a2 + v16, &v14[v17]);
  v18 = *(v5 + 48);
  if (v18(v14, 1, v4) == 1)
  {
    if (v18(&v14[v17], 1, v4) == 1)
    {
      sub_1D133BD78(v14, sub_1D106A23C);
      goto LABEL_16;
    }

LABEL_13:
    sub_1D133BD78(v14, sub_1D106C974);
    return 0;
  }

  sub_1D106A1D8(v14, v10);
  if (v18(&v14[v17], 1, v4) == 1)
  {
    (*(v5 + 8))(v10, v4);
    goto LABEL_13;
  }

  (*(v5 + 32))(v7, &v14[v17], v4);
  sub_1D133BDD8(&unk_1EC609370, MEMORY[0x1E6969530]);
  v20 = sub_1D139011C();
  v21 = *(v5 + 8);
  v21(v7, v4);
  v21(v10, v4);
  sub_1D133BD78(v14, sub_1D106A23C);
  if ((v20 & 1) == 0)
  {
    return 0;
  }

LABEL_16:
  v22 = v50;
  v23 = *(v50 + 40);
  v24 = *(a1 + v23);
  v25 = *(a2 + v23);
  if (v24)
  {
    if (!v25)
    {
      return 0;
    }

    sub_1D106F934(0, &qword_1EC60C558);
    v26 = v25;
    v27 = v24;
    v28 = sub_1D1390D8C();

    if ((v28 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v25)
  {
    return 0;
  }

  v29 = v22[11];
  v30 = (a1 + v29);
  v31 = *(a1 + v29 + 8);
  v32 = (a2 + v29);
  v33 = v32[1];
  if (v31)
  {
    if (!v33 || (*v30 != *v32 || v31 != v33) && (sub_1D139162C() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v33)
  {
    return 0;
  }

  v34 = v22[12];
  v35 = (a1 + v34);
  v36 = *(a1 + v34 + 8);
  v37 = (a2 + v34);
  v38 = v37[1];
  if (v36)
  {
    if (!v38 || (*v35 != *v37 || v36 != v38) && (sub_1D139162C() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v38)
  {
    return 0;
  }

  v39 = v22[13];
  v40 = (a1 + v39);
  v41 = *(a1 + v39 + 8);
  v42 = (a2 + v39);
  v43 = *(a2 + v39 + 8);
  if (v41)
  {
    if (!v43)
    {
      return 0;
    }
  }

  else
  {
    if (*v40 != *v42)
    {
      LOBYTE(v43) = 1;
    }

    if (v43)
    {
      return 0;
    }
  }

  v44 = v22[14];
  v45 = (a1 + v44);
  v46 = *(a1 + v44 + 8);
  v47 = (a2 + v44);
  v48 = *(a2 + v44 + 8);
  if ((v46 & 1) == 0)
  {
    if (*v45 != *v47)
    {
      v48 = 1;
    }

    return (v48 & 1) == 0;
  }

  return (v48 & 1) != 0;
}

uint64_t type metadata accessor for UserDomainConceptViewData()
{
  result = qword_1EC60F9A0;
  if (!qword_1EC60F9A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D133BC14()
{
  sub_1D106F934(319, &qword_1EE06A5C0);
  if (v0 <= 0x3F)
  {
    type metadata accessor for HKMedicalRecordState(319);
    if (v1 <= 0x3F)
    {
      sub_1D106A23C();
      if (v2 <= 0x3F)
      {
        sub_1D12B9414();
        if (v3 <= 0x3F)
        {
          sub_1D112F2A8(319, &qword_1EE06A660);
          if (v4 <= 0x3F)
          {
            sub_1D112F2A8(319, &qword_1EC60F9B0);
            if (v5 <= 0x3F)
            {
              sub_1D112F2A8(319, &qword_1EE0695B0);
              if (v6 <= 0x3F)
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

uint64_t sub_1D133BD78(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D133BDD8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for ConceptListViewController()
{
  result = qword_1EC60F9B8;
  if (!qword_1EC60F9B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D133BEF4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D138E2EC();
  *a1 = result;
  return result;
}

uint64_t sub_1D133BF4C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D138E2CC();
  *a1 = result;
  return result;
}

id sub_1D133BFA4(uint64_t a1, void *a2)
{
  v4 = *(a1 + 16);
  v27[0] = *a1;
  v27[1] = v4;
  v5 = *(a1 + 48);
  v27[2] = *(a1 + 32);
  v27[3] = v5;
  v28 = *(a1 + 64);
  if (*(&v27[0] + 1))
  {
    v6 = v27[0];
  }

  else
  {
    v6 = 11;
  }

  sub_1D138DB9C();
  v26 = v6;
  v7 = [a2 healthStore];
  v8 = [v7 profileIdentifier];

  v9 = static FeedItem.predicateForHealthRecordsData(categoryKind:sourceProfile:)(&v26, v8);
  if (*(&v27[0] + 1))
  {

    sub_1D133D470(v27, &qword_1EC609AC8, &type metadata for DisplayCategory, MEMORY[0x1E69E6720], sub_1D133D530);
  }

  else
  {
    if (qword_1EE06AD00 != -1)
    {
      swift_once();
    }

    sub_1D138D1CC();
  }

  sub_1D133D530(0, &qword_1EE06A4C0, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1D139E6E0;
  *(v10 + 32) = v9;
  v11 = v9;
  v12 = [a2 healthStore];
  v13 = [v12 profileIdentifier];

  v14 = _s14HealthPlatform8FeedItemC0A9RecordsUIE019predicateForGeneralaE10Onboarding9profileIdSo11NSPredicateCSo19HKProfileIdentifierC_tFZ_0(v13);
  *(v10 + 40) = v14;
  sub_1D106F934(0, &qword_1EE06B790);
  v15 = sub_1D139044C();

  v16 = [objc_opt_self() orPredicateWithSubpredicates_];

  *&v2[qword_1EC60AAC0] = v16;
  *&v2[qword_1EC60AAC8] = MEMORY[0x1E69E7CC0];
  *&v2[qword_1EC60AAB8] = a2;
  v17 = objc_allocWithZone(MEMORY[0x1E69DC840]);
  v18 = v16;
  v19 = a2;
  v20 = [v17 init];
  v25.receiver = v2;
  v25.super_class = type metadata accessor for FeedItemListViewController();
  v21 = objc_msgSendSuper2(&v25, sel_initWithCollectionViewLayout_, v20);

  v22 = v21;
  v23 = sub_1D139012C();

  [v22 setTitle_];

  return v22;
}

uint64_t sub_1D133C330(char a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_1D138FF3C();
  v6 = *(v5 - 8);
  *&v7 = MEMORY[0x1EEE9AC00](v5).n128_u64[0];
  v9 = (aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20.receiver = v2;
  v20.super_class = ObjectType;
  objc_msgSendSuper2(&v20, sel_viewDidAppear_, a1 & 1, v7);
  if (qword_1EE06A170 != -1)
  {
    swift_once();
  }

  v10 = qword_1EE06AEB8;
  v11 = OBJC_IVAR___CHRAnalyticsManager_managerQueue;
  v12 = *(qword_1EE06AEB8 + OBJC_IVAR___CHRAnalyticsManager_managerQueue);
  *v9 = v12;
  (*(v6 + 104))(v9, *MEMORY[0x1E69E8018], v5);
  v13 = v12;
  LOBYTE(v12) = sub_1D138FF5C();
  result = (*(v6 + 8))(v9, v5);
  if ((v12 & 1) == 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  v15 = *(v10 + v11);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1D13B1520;
  *(v16 + 32) = 0;
  *(v16 + 40) = 11;
  *(v16 + 48) = 1;
  v17 = swift_allocObject();
  *(v17 + 16) = sub_1D1080D6C;
  *(v17 + 24) = v16;
  aBlock[4] = sub_1D1080D80;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D10DD3BC;
  aBlock[3] = &block_descriptor_74;
  v18 = _Block_copy(aBlock);

  dispatch_sync(v15, v18);
  _Block_release(v18);
  LOBYTE(v15) = swift_isEscapingClosureAtFileLocation();

  if (v15)
  {
LABEL_7:
    __break(1u);
  }

  return result;
}

void sub_1D133C5D8(void *a1, uint64_t a2, char a3)
{
  v4 = a1;
  sub_1D133C330(a3);
}

void sub_1D133C62C(char a1)
{
  v10.receiver = v1;
  v10.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v10, sel_viewIsAppearing_, a1 & 1);
  v3 = [v1 view];
  if (v3)
  {
    v4 = v3;
    v5 = objc_opt_self();
    v6 = [v5 clearColor];
    [v4 setBackgroundColor_];

    v7 = [v1 collectionView];
    if (v7)
    {
      v8 = v7;
      v9 = [v5 clearColor];
      [v8 setBackgroundColor_];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_1D133C740(void *a1, uint64_t a2, char a3)
{
  v4 = a1;
  sub_1D133C62C(a3);
}

uint64_t sub_1D133C794@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + qword_1EC60AAB8);
  v4 = *(v1 + qword_1EC60AAC0);
  v5 = [v3 healthStore];
  v6 = [v5 profileIdentifier];

  sub_1D139092C();
  v7 = type metadata accessor for ConceptListViewDataSourceProvider();
  v8 = swift_allocObject();
  sub_1D133C8A4(v4, v6, v11);
  a1[3] = v7;
  result = sub_1D133D4E8(&qword_1EC60A690, v9, type metadata accessor for ConceptListViewDataSourceProvider);
  a1[4] = result;
  *a1 = v8;
  return result;
}

void *sub_1D133C8A4(void *a1, void *a2, uint64_t a3)
{
  v4 = v3;
  sub_1D133D40C(0, &qword_1EC60F9C8, MEMORY[0x1E69A34D0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v17[-v9 - 8];
  v4[2] = a1;
  sub_1D1072E70(a3, (v4 + 3));
  sub_1D1072E70(a3, v17);
  v11 = sub_1D138DE5C();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  sub_1D138E9FC();
  swift_allocObject();
  v12 = a2;
  v13 = a1;
  v14 = sub_1D138E9EC();
  __swift_destroy_boxed_opaque_existential_1Tm(a3);
  v4[8] = v14;
  v4[9] = a2;
  return v4;
}

uint64_t sub_1D133CA14()
{
  v1 = v0;
  v2 = sub_1D138E35C();
  v63 = *(v2 - 8);
  v64 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v62 = v56 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v58 = MEMORY[0x1E6968130];
  v59 = v56 - v5;
  v57 = MEMORY[0x1E69E6720];
  sub_1D133D40C(0, &qword_1EC60B290, MEMORY[0x1E6968130], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v56 - v7;
  sub_1D138DB9C();
  v61 = MEMORY[0x1D38834C0]();
  v9 = MEMORY[0x1E69E6F90];
  sub_1D133D530(0, &qword_1EE06A4C0, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v60 = v10;
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1D139F5B0;
  v56[1] = sub_1D106F934(0, &qword_1EE06B790);
  sub_1D11044D4(0, &qword_1EE06B080, &qword_1EE06B070);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1D139E710;
  v13 = MEMORY[0x1E69E6158];
  *(v12 + 56) = MEMORY[0x1E69E6158];
  v14 = sub_1D1089930();
  strcpy((v12 + 32), "pluginPackage");
  *(v12 + 46) = -4864;
  *(v12 + 96) = v13;
  *(v12 + 104) = v14;
  *(v12 + 64) = v14;
  *(v12 + 72) = 0xD000000000000025;
  *(v12 + 80) = 0x80000001D13BCBC0;
  *(v11 + 32) = sub_1D139076C();
  sub_1D133D40C(0, &qword_1EC60B298, MEMORY[0x1E69A3C08], MEMORY[0x1E69E6F90]);
  v15 = sub_1D138D97C();
  v16 = *(v15 - 8);
  v17 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v18 = swift_allocObject();
  v65 = xmmword_1D139E700;
  *(v18 + 16) = xmmword_1D139E700;
  (*(v16 + 104))(v18 + v17, *MEMORY[0x1E69A3BB0], v15);
  sub_1D138DA6C();
  v19 = sub_1D138CFBC();
  (*(*(v19 - 8) + 56))(v8, 1, 1, v19);
  sub_1D133D530(0, &qword_1EC60A0A8, MEMORY[0x1E69A3C58], v9);
  v20 = swift_allocObject();
  *(v20 + 16) = v65;
  v21 = v1[9];
  *(v20 + 32) = v21;
  v22 = v21;
  v23 = sub_1D138DB4C();

  v24 = v59;

  sub_1D133D470(v8, &qword_1EC60B290, v58, v57, sub_1D133D40C);
  v25 = v1[2];
  *(v11 + 40) = v23;
  *(v11 + 48) = v25;
  v26 = swift_allocObject();
  *(v26 + 16) = v65;
  v27 = v25;
  *(v26 + 32) = sub_1D138E9DC();
  v28 = MEMORY[0x1D38834E0](v26);

  *(v11 + 56) = v28;
  v29 = sub_1D139044C();

  v30 = [objc_opt_self() andPredicateWithSubpredicates_];

  v31 = v61;
  [v61 setPredicate_];

  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_1D139E810;
  v33 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  v34 = sub_1D139012C();
  v35 = [v33 initWithKey:v34 ascending:1 selector:sel_localizedStandardCompare_];

  *(v32 + 32) = v35;
  sub_1D106F934(0, &qword_1EE06B578);
  v36 = sub_1D139044C();

  [v31 setSortDescriptors_];

  v37 = v1[6];
  v38 = __swift_project_boxed_opaque_existential_1Tm(v1 + 3, v37);
  v39 = *(v37 - 8);
  v40 = MEMORY[0x1EEE9AC00](v38);
  v42 = v56 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v39 + 16))(v42, v40);
  v43 = v31;
  v44 = sub_1D138D8BC();
  (*(v39 + 8))(v42, v37);
  [objc_allocWithZone(MEMORY[0x1E695D600]) initWithFetchRequest:v43 managedObjectContext:v44 sectionNameKeyPath:0 cacheName:0];

  sub_1D138E31C();
  v45 = sub_1D138E33C();
  v47 = v46;
  v48 = sub_1D138E2BC();
  v49 = *(*(v48 - 8) + 48);
  if (!v49(v47, 1, v48))
  {
    swift_getKeyPath();
    v66 = [objc_opt_self() absoluteDimension_];
    sub_1D138E2AC();
  }

  v45(v67, 0);
  v50 = sub_1D138E33C();
  if (!v49(v51, 1, v48))
  {
    swift_getKeyPath();
    v66 = [objc_opt_self() absoluteDimension_];
    sub_1D138E2AC();
  }

  v50(v67, 0);
  sub_1D10A5CE8();
  v52 = v63;
  v53 = v64;
  (*(v63 + 16))(v62, v24, v64);
  v54 = sub_1D138E0DC();

  (*(v52 + 8))(v24, v53);
  sub_1D133D4E8(&qword_1EC60A0C0, 255, sub_1D10A5CE8);
  return v54;
}

uint64_t sub_1D133D308()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t sub_1D133D37C()
{
  sub_1D11044D4(0, &qword_1EC60A098, &qword_1EC60A0A0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1D139EAB0;
  *(v0 + 32) = sub_1D133CA14();
  *(v0 + 40) = v1;
  *(v0 + 48) = sub_1D138E9CC();
  *(v0 + 56) = v2;
  *(v0 + 64) = sub_1D138E9BC();
  *(v0 + 72) = v3;
  return v0;
}

void sub_1D133D40C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1D133D470(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5(0);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t block_copy_helper_75(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1D133D4E8(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

void sub_1D133D530(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1D133D580(uint64_t a1, uint64_t a2, char a3)
{
  v36 = sub_1D138F0BC();
  v5 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D13901DC();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D13901BC();
  v12 = sub_1D139017C();
  v14 = v13;
  (*(v9 + 8))(v11, v8);
  if (v14 >> 60 == 15)
  {
    sub_1D133D9FC();
    v15 = swift_allocError();
    swift_willThrow();
    sub_1D138F06C();
    v24 = v15;
    v25 = sub_1D138F0AC();
    v26 = sub_1D13907FC();

    if (os_log_type_enabled(v25, v26))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v37 = v30;
      *v28 = 136315394;
      *(v28 + 4) = sub_1D11DF718(0xD000000000000019, 0x80000001D13B1650, &v37);
      *(v28 + 12) = 2112;
      v31 = v15;
      v32 = _swift_stdlib_bridgeErrorToNSError();
      *(v28 + 14) = v32;
      *v29 = v32;
      _os_log_impl(&dword_1D101F000, v25, v26, "%s: failed to create NSAttributedString from string: %@", v28, 0x16u);
      sub_1D10B8240(v29);
      MEMORY[0x1D38882F0](v29, -1, -1);
      __swift_destroy_boxed_opaque_existential_1Tm(v30);
      MEMORY[0x1D38882F0](v30, -1, -1);
      MEMORY[0x1D38882F0](v28, -1, -1);
    }

    else
    {
    }

    (*(v5 + 8))(v7, v36);
  }

  else
  {
    sub_1D133DA50(0, &qword_1EC60F9D8, sub_1D133DAB4, MEMORY[0x1E69E6F90]);
    inited = swift_initStackObject();
    v17 = *MEMORY[0x1E69DB630];
    *(inited + 32) = *MEMORY[0x1E69DB630];
    v18 = MEMORY[0x1E69DB6A0];
    *(inited + 16) = xmmword_1D139E700;
    if ((a3 & 1) == 0)
    {
      v18 = MEMORY[0x1E69DB658];
    }

    v19 = *v18;
    type metadata accessor for DocumentType(0);
    *(inited + 64) = v20;
    *(inited + 40) = v19;
    v21 = v17;
    v22 = sub_1D109C4E0(inited);
    swift_setDeallocating();
    sub_1D133DB20(inited + 32);
    v23 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
    sub_1D1083D58(v12, v14);
    v34 = sub_1D1246828(v12, v14, v22, 0);
    sub_1D10847DC(v12, v14);
    v35 = [v34 string];
    a1 = sub_1D139016C();

    sub_1D10847DC(v12, v14);
  }

  return a1;
}

unint64_t sub_1D133D9FC()
{
  result = qword_1EC60F9D0;
  if (!qword_1EC60F9D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60F9D0);
  }

  return result;
}

void sub_1D133DA50(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1D133DAB4()
{
  if (!qword_1EC609F78)
  {
    type metadata accessor for DocumentReadingOptionKey(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC609F78);
    }
  }
}

uint64_t sub_1D133DB20(uint64_t a1)
{
  sub_1D133DAB4();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1D133DB90()
{
  result = qword_1EC60F9E0;
  if (!qword_1EC60F9E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60F9E0);
  }

  return result;
}

uint64_t sub_1D133DBE4()
{
  sub_1D138F26C();
  if (sub_1D138F1CC() & 1) != 0 || (sub_1D138F1BC())
  {
    v0 = objc_allocWithZone(MEMORY[0x1E69DC888]);
    v4[4] = sub_1D133DCFC;
    v4[5] = 0;
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 1107296256;
    v4[2] = sub_1D120E4B8;
    v4[3] = &block_descriptor_75;
    v1 = _Block_copy(v4);
    [v0 initWithDynamicProvider_];
    _Block_release(v1);
  }

  else
  {
    v2 = [objc_opt_self() secondarySystemGroupedBackgroundColor];
  }

  return sub_1D138F23C();
}

id sub_1D133DCFC(void *a1)
{
  v1 = [a1 userInterfaceStyle];
  v2 = objc_opt_self();
  v3 = &selRef_tertiarySystemGroupedBackgroundColor;
  if (v1 != 2)
  {
    v3 = &selRef_secondarySystemFillColor;
  }

  v4 = [v2 *v3];

  return v4;
}

uint64_t block_copy_helper_76(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t Calendar.endOfDay(for:)@<X0>(uint64_t a1@<X8>)
{
  v19[1] = a1;
  v2 = sub_1D138D75C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1D138D57C();
  v6 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v8 = v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D106A23C();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D138D6AC();
  v12 = *MEMORY[0x1E6969A48];
  v19[0] = *(v3 + 104);
  (v19[0])(v5, v12, v2);
  v20 = v1;
  sub_1D138D70C();
  v13 = *(v3 + 8);
  v14 = v2;
  v13(v5, v2);
  v15 = *(v6 + 8);
  v16 = v8;
  v17 = v21;
  v15(v16, v21);
  result = (*(v6 + 48))(v11, 1, v17);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (v19[0])(v5, *MEMORY[0x1E6969A98], v14);
    sub_1D138D70C();
    v13(v5, v14);
    return (v15)(v11, v17);
  }

  return result;
}

uint64_t sub_1D133E040(uint64_t a1, unsigned int *a2)
{
  v3 = sub_1D138D75C();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 104))(v7, *a2, v3, v5);
  sub_1D138D70C();
  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_1D133E150@<X0>(void *a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v21 = a4;
  sub_1D133EE98();
  v22 = *(v7 - 8);
  v23 = v7;
  *&v8 = MEMORY[0x1EEE9AC00](v7).n128_u64[0];
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [a2 gatewayVersions];
  if (v11)
  {
    v12 = v11;
    sub_1D124F53C();
    v13 = sub_1D139045C();
  }

  else
  {
    v13 = MEMORY[0x1E69E7CC0];
  }

  v14 = swift_allocObject();
  v14[2] = a1;
  v14[3] = a2;
  v14[4] = a3;
  v24 = v13;
  MEMORY[0x1EEE9AC00](v14);
  *(&v21 - 4) = &v24;
  *(&v21 - 3) = sub_1D133F128;
  *(&v21 - 2) = v15;
  sub_1D133EF18();
  sub_1D133F05C();
  v16 = a1;
  v17 = a2;
  v18 = a3;
  sub_1D138FC5C();

  sub_1D138FB2C();
  sub_1D133F284(&qword_1EC60FA18, sub_1D133EE98);
  v19 = v23;
  sub_1D138FD3C();

  return (*(v22 + 8))(v10, v19);
}

id sub_1D133E3D4@<X0>(id *a1@<X0>, void *a2@<X1>, void *a3@<X2>, void *a4@<X3>, void *a5@<X8>)
{
  v11 = *a1;
  *a5 = a2;
  a5[1] = a3;
  a5[2] = a4;
  a5[3] = v11;
  v7 = a2;
  v8 = a3;
  v9 = a4;

  return v11;
}

uint64_t sub_1D133E430@<X0>(void *a1@<X0>, void *a2@<X1>, void *a3@<X2>, void *a4@<X3>, char *a5@<X8>)
{
  v61 = a2;
  v62 = a3;
  v60 = a1;
  sub_1D12C7CE0();
  v64 = *(v7 - 8);
  v65 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v63 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v10 = MEMORY[0x1EEE9AC00](v9).n128_u64[0];
  v66 = &v53 - v11;
  v12 = [a4 gatewayID];
  v13 = sub_1D139016C();
  v58 = v14;
  v59 = v13;

  v15 = [a4 FHIRVersion];
  v16 = [v15 stringRepresentation];

  v17 = sub_1D139016C();
  v19 = v18;

  v67 = v17;
  v68 = v19;
  MEMORY[0x1D3885C10](10272, 0xE200000000000000);
  v20 = [a4 FHIRVersion];
  v21 = [v20 FHIRRelease];

  v22 = sub_1D139016C();
  v24 = v23;

  MEMORY[0x1D3885C10](v22, v24);

  MEMORY[0x1D3885C10](41, 0xE100000000000000);
  v25 = v67;
  v57 = v68;
  v67 = [a4 minCompatibleAPIVersion];
  v26 = sub_1D13915CC();
  v55 = v27;
  v56 = v26;
  v28 = [a4 gatewayBatchID];
  v29 = sub_1D139016C();
  v53 = v30;
  v54 = v29;

  sub_1D138FB2C();
  v31 = swift_allocObject();
  v32 = v60;
  v33 = v61;
  v31[2] = v60;
  v31[3] = v33;
  v34 = v62;
  v31[4] = v62;
  v31[5] = a4;
  v35 = v32;
  v36 = v33;
  v37 = v34;
  v38 = a4;
  v39 = v66;
  sub_1D138FDDC();
  v40 = v63;
  v41 = v64;
  v42 = *(v64 + 16);
  v43 = v65;
  v42(v63, v39, v65);
  *a5 = 0x79617765746147;
  v45 = v58;
  v44 = v59;
  *(a5 + 1) = 0xE700000000000000;
  *(a5 + 2) = v44;
  *(a5 + 3) = v45;
  *(a5 + 4) = 1380534342;
  *(a5 + 5) = 0xE400000000000000;
  *(a5 + 6) = v25;
  *(a5 + 7) = v57;
  *(a5 + 8) = 1447117645;
  v47 = v55;
  v46 = v56;
  *(a5 + 9) = 0xE400000000000000;
  *(a5 + 10) = v46;
  *(a5 + 11) = v47;
  *(a5 + 12) = 0x4449206863746142;
  v49 = v53;
  v48 = v54;
  *(a5 + 13) = 0xE800000000000000;
  *(a5 + 14) = v48;
  *(a5 + 15) = v49;
  sub_1D133F360();
  v42(&a5[*(v50 + 96)], v40, v43);
  v51 = *(v41 + 8);

  swift_bridgeObjectRetain_n();

  v51(v66, v43);
  v51(v40, v43);

  swift_bridgeObjectRelease_n();
}

void sub_1D133E864(void *a1, int a2, void *a3, id a4)
{
  v7 = [a4 gatewayID];
  if (!v7)
  {
    sub_1D139016C();
    v7 = sub_1D139012C();
  }

  v8 = [a4 gatewayBatchID];
  if (!v8)
  {
    sub_1D139016C();
    v8 = sub_1D139012C();
  }

  v9 = [objc_allocWithZone(WDClinicalGatewayProxy) initWithGatewayID:v7 batchID:v8];

  if (qword_1EE069ED0 != -1)
  {
    swift_once();
  }

  v10 = objc_allocWithZone(WDClinicalOnboardingOAuthNavigationViewController);
  v11 = v9;
  v12 = [v10 initWithContext:7 onboardingOptions:0 sourceIdentifier:0 profile:a1 existingAccount:0];
  [v12 setGatewayProxyToTry_];
  v13 = [a1 onboardingManager];
  v14 = swift_allocObject();
  v14[2] = a3;
  v14[3] = v12;
  v14[4] = nullsub_1;
  v14[5] = 0;
  v18[4] = sub_1D11ECB40;
  v18[5] = v14;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 1107296256;
  v18[2] = sub_1D116B84C;
  v18[3] = &block_descriptor_76;
  v15 = _Block_copy(v18);
  v16 = a3;
  v17 = v12;

  [v13 registerInflightOnboardingViewController:v17 completion:v15];
  _Block_release(v15);
}

uint64_t sub_1D133EAB4@<X0>(uint64_t a1@<X8>)
{
  sub_1D10940C8();

  v2 = sub_1D138FCEC();
  v4 = v3;
  v6 = v5;
  sub_1D138FC0C();
  v7 = sub_1D138FC7C();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  sub_1D113EE84(v2, v4, v6 & 1);

  v14 = sub_1D138FCEC();
  v16 = v15;
  v17 = v11 & 1;
  v22 = v11 & 1;
  v19 = v18 & 1;
  *a1 = v7;
  *(a1 + 8) = v9;
  *(a1 + 16) = v17;
  *(a1 + 24) = v13;
  *(a1 + 32) = 0;
  *(a1 + 40) = 1;
  *(a1 + 48) = v14;
  *(a1 + 56) = v15;
  *(a1 + 64) = v18 & 1;
  *(a1 + 72) = v20;
  sub_1D113EED8(v7, v9, v17);

  sub_1D113EED8(v14, v16, v19);

  sub_1D113EE84(v14, v16, v19);

  sub_1D113EE84(v7, v9, v22);
}

double sub_1D133EC50@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_1D138FACC();
  v14 = 1;
  sub_1D133EAB4(&v8);
  v17 = v10;
  v18 = v11;
  v15 = v8;
  v16 = v9;
  v20[2] = v10;
  v20[3] = v11;
  v20[4] = v12;
  v20[1] = v9;
  v19 = v12;
  v20[0] = v8;
  sub_1D133F56C(&v15, &v7);
  sub_1D133F664(v20);
  *&v13[7] = v15;
  *&v13[71] = v19;
  *&v13[55] = v18;
  *&v13[39] = v17;
  *&v13[23] = v16;
  v3 = *&v13[48];
  *(a1 + 49) = *&v13[32];
  *(a1 + 65) = v3;
  *(a1 + 81) = *&v13[64];
  result = *v13;
  v5 = *&v13[16];
  *(a1 + 17) = *v13;
  v6 = v14;
  *a1 = v2;
  *(a1 + 8) = 0;
  *(a1 + 16) = v6;
  *(a1 + 96) = *&v13[79];
  *(a1 + 33) = v5;
  return result;
}

uint64_t sub_1D133ED50()
{
  sub_1D133F600(0, &qword_1EC60FA28, sub_1D133F360, MEMORY[0x1E6981F40]);
  sub_1D133F6F0(&qword_1EC60FA38, &qword_1EC60FA28, sub_1D133F360);
  return sub_1D138FE7C();
}

void protocol witness for Identifiable.id.getter in conformance HKClinicalGatewayReference(uint64_t *a1@<X8>)
{
  v3 = [*v1 gatewayID];
  v4 = sub_1D139016C();
  v6 = v5;

  *a1 = v4;
  a1[1] = v6;
}

void sub_1D133EE98()
{
  if (!qword_1EC60F9E8)
  {
    sub_1D133EF18();
    sub_1D133F05C();
    v0 = sub_1D138FC6C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC60F9E8);
    }
  }
}

void sub_1D133EF18()
{
  if (!qword_1EC60F9F0)
  {
    sub_1D133F600(255, &qword_1EC60F9F8, sub_1D124F53C, MEMORY[0x1E69E62F8]);
    sub_1D133EFD4();
    v0 = sub_1D138FE5C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC60F9F0);
    }
  }
}

unint64_t sub_1D133EFD4()
{
  result = qword_1EC60FA00;
  if (!qword_1EC60FA00)
  {
    sub_1D133F600(255, &qword_1EC60F9F8, sub_1D124F53C, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60FA00);
  }

  return result;
}

unint64_t sub_1D133F05C()
{
  result = qword_1EC60FA08;
  if (!qword_1EC60FA08)
  {
    sub_1D133EF18();
    sub_1D133F0D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60FA08);
  }

  return result;
}

unint64_t sub_1D133F0D4()
{
  result = qword_1EC60FA10;
  if (!qword_1EC60FA10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60FA10);
  }

  return result;
}

uint64_t sub_1D133F134(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a2;
  *(v5 + 24) = a3;
  sub_1D133F600(0, &qword_1EC60F9F8, sub_1D124F53C, MEMORY[0x1E69E62F8]);
  sub_1D133EFD4();
  sub_1D133F0D4();
  sub_1D133F284(&qword_1EC60FA20, sub_1D124F53C);

  return sub_1D138FE4C();
}

uint64_t sub_1D133F284(unint64_t *a1, void (*a2)(uint64_t))
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

double sub_1D133F2CC@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = *(v2 + 16);
  v8 = *a1;
  v4(v7, &v8);
  result = *v7;
  v6 = v7[1];
  *a2 = v7[0];
  a2[1] = v6;
  return result;
}

void sub_1D133F360()
{
  if (!qword_1EC60FA30)
  {
    sub_1D12C7CE0();
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata, &qword_1EC60FA30);
    }
  }
}

uint64_t block_copy_helper_77(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1D133F414()
{
  result = qword_1EC60FA40;
  if (!qword_1EC60FA40)
  {
    sub_1D133F4BC();
    sub_1D133F6F0(&qword_1EC60FA38, &qword_1EC60FA28, sub_1D133F360);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60FA40);
  }

  return result;
}

void sub_1D133F4BC()
{
  if (!qword_1EC60FA48)
  {
    sub_1D133F600(255, &qword_1EC60FA28, sub_1D133F360, MEMORY[0x1E6981F40]);
    v0 = sub_1D138FE9C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC60FA48);
    }
  }
}

uint64_t sub_1D133F56C(uint64_t a1, uint64_t a2)
{
  sub_1D133F600(0, &qword_1EC60EE90, sub_1D12C863C, MEMORY[0x1E6981F40]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1D133F600(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1D133F664(uint64_t a1)
{
  sub_1D133F600(0, &qword_1EC60EE90, sub_1D12C863C, MEMORY[0x1E6981F40]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D133F6F0(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_1D133F600(255, a2, a3, MEMORY[0x1E6981F40]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t Array<A>.newlineJoined.getter(uint64_t result)
{
  v1 = 0;
  v2 = *(result + 16);
  v3 = result + 40;
  v4 = MEMORY[0x1E69E7CC0];
LABEL_2:
  v5 = (v3 + 16 * v1);
  while (1)
  {
    if (v2 == v1)
    {
      sub_1D109CFDC();
      sub_1D10F73A8();
      v13 = sub_1D139008C();

      return v13;
    }

    if (v1 >= v2)
    {
      break;
    }

    v6 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      goto LABEL_16;
    }

    v8 = *(v5 - 1);
    v7 = *v5;
    v9 = HIBYTE(*v5) & 0xF;
    if ((*v5 & 0x2000000000000000) == 0)
    {
      v9 = v8 & 0xFFFFFFFFFFFFLL;
    }

    ++v1;
    v5 += 2;
    if (v9)
    {

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_1D10FDBA4(0, *(v4 + 16) + 1, 1);
      }

      v11 = *(v4 + 16);
      v10 = *(v4 + 24);
      if (v11 >= v10 >> 1)
      {
        result = sub_1D10FDBA4((v10 > 1), v11 + 1, 1);
      }

      *(v4 + 16) = v11 + 1;
      v12 = v4 + 16 * v11;
      *(v12 + 32) = v8;
      *(v12 + 40) = v7;
      v1 = v6;
      goto LABEL_2;
    }
  }

  __break(1u);
LABEL_16:
  __break(1u);
  return result;
}

id HRNewlineJoinedStrings()
{
  v0 = sub_1D139045C();
  Array<A>.newlineJoined.getter(v0);

  v1 = sub_1D139012C();

  return v1;
}

id sub_1D133F92C()
{
  v1 = OBJC_IVAR____TtC15HealthRecordsUI13RecentUDCCell____lazy_storage___store;
  v2 = *(v0 + OBJC_IVAR____TtC15HealthRecordsUI13RecentUDCCell____lazy_storage___store);
  if (!v2)
  {
    v4 = OBJC_IVAR____TtC15HealthRecordsUI13RecentUDCCell_item;
    swift_beginAccess();
    sub_1D10A71C0(v0 + v4, v12);
    if (v13)
    {
      sub_1D1080EA4(0, &qword_1EC60A3D0);
      sub_1D1080EA4(0, &qword_1EC60A868);
      if (swift_dynamicCast())
      {
        v5 = *(&v15 + 1);
        if (*(&v15 + 1))
        {
          v6 = v16;
          __swift_project_boxed_opaque_existential_1Tm(&v14, *(&v15 + 1));
          v7 = (*(v6 + 40))(v5, v6);
          __swift_destroy_boxed_opaque_existential_1Tm(&v14);
          v8 = v7;
LABEL_10:
          v9 = *(v0 + v1);
          *(v0 + v1) = v8;
          v3 = v8;

          v2 = 0;
          goto LABEL_11;
        }
      }

      else
      {
        v16 = 0;
        v14 = 0u;
        v15 = 0u;
      }
    }

    else
    {
      sub_1D1119098(v12, &qword_1EC60B620, &qword_1EC60A3D0);
      v14 = 0u;
      v15 = 0u;
      v16 = 0;
    }

    sub_1D1119098(&v14, &qword_1EC60A860, &qword_1EC60A868);
    v8 = [objc_allocWithZone(MEMORY[0x1E696C1C0]) init];
    goto LABEL_10;
  }

  v3 = *(v0 + OBJC_IVAR____TtC15HealthRecordsUI13RecentUDCCell____lazy_storage___store);
LABEL_11:
  v10 = v2;
  return v3;
}

id sub_1D133FAE0()
{
  sub_1D13445A8(0, &qword_1EC60A848, MEMORY[0x1E69DC598]);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v16 - v2;
  v4 = OBJC_IVAR____TtC15HealthRecordsUI13RecentUDCCell____lazy_storage___button;
  v5 = *&v0[OBJC_IVAR____TtC15HealthRecordsUI13RecentUDCCell____lazy_storage___button];
  if (v5)
  {
    v6 = *&v0[OBJC_IVAR____TtC15HealthRecordsUI13RecentUDCCell____lazy_storage___button];
  }

  else
  {
    v7 = [objc_allocWithZone(MEMORY[0x1E69DC738]) initWithFrame_];
    sub_1D106F934(0, &unk_1EC60F6B0);
    *(swift_allocObject() + 16) = v0;
    v0;
    v8 = v0;
    v9 = sub_1D1390DCC();
    [v7 addAction:v9 forControlEvents:64];

    sub_1D133FD30();
    sub_1D11CB89C();
    v10 = sub_1D1390ECC();
    (*(*(v10 - 8) + 56))(v3, 0, 1, v10);
    sub_1D1390EEC();
    v11 = v7;
    [v11 setTranslatesAutoresizingMaskIntoConstraints_];
    LODWORD(v12) = 1148846080;
    [v11 setContentHuggingPriority:0 forAxis:v12];
    [v11 setAlpha_];

    v13 = *&v8[v4];
    *&v8[v4] = v11;
    v6 = v11;

    v5 = 0;
  }

  v14 = v5;
  return v6;
}

uint64_t sub_1D133FD30()
{
  v1 = type metadata accessor for UserDomainConceptViewData();
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = (&v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = OBJC_IVAR____TtC15HealthRecordsUI13RecentUDCCell_item;
  swift_beginAccess();
  sub_1D10A71C0(v0 + v4, v14);
  if (!v14[3])
  {
    sub_1D1119098(v14, &qword_1EC60B620, &qword_1EC60A3D0);
    goto LABEL_7;
  }

  sub_1D1080EA4(0, &qword_1EC60A3D0);
  type metadata accessor for UDCRecentItem();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_7:
    v10 = 0;
    return v10 & 1;
  }

  sub_1D10DC904(v13 + OBJC_IVAR____TtC15HealthRecordsUI13UDCRecentItem_viewData, v3);

  v5 = v3[1];
  sub_1D10DD050(v3, type metadata accessor for UserDomainConceptViewData);
  if (qword_1EE06AF70 != -1)
  {
    swift_once();
  }

  v6 = qword_1EE06BB58;
  v7 = sub_1D133F92C();
  v8 = [v7 profileIdentifier];

  v13 = *(v6 + OBJC_IVAR___HRProfileManager_lock);
  MEMORY[0x1EEE9AC00](v9);
  *(&v12 - 2) = v6;
  *(&v12 - 1) = v8;
  sub_1D138D96C();
  sub_1D138EF2C();
  sub_1D10DC8AC();

  sub_1D138ED0C();

  v10 = sub_1D138EEFC();

  return v10 & 1;
}

char *sub_1D133FFBC(double a1, double a2, double a3, double a4)
{
  sub_1D13445A8(0, &qword_1EC6103F0, MEMORY[0x1E69DC0D8]);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v30 - v10;
  v12 = sub_1D138F20C();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v4[OBJC_IVAR____TtC15HealthRecordsUI13RecentUDCCell____lazy_storage___store] = 0;
  v16 = OBJC_IVAR____TtC15HealthRecordsUI13RecentUDCCell_titleView;
  *&v4[v16] = [objc_allocWithZone(type metadata accessor for ConceptFeedItemTitleView()) initWithFrame_];
  v17 = OBJC_IVAR____TtC15HealthRecordsUI13RecentUDCCell_valueView;
  *&v4[v17] = [objc_allocWithZone(type metadata accessor for ConceptFeedItemValueView()) initWithFrame_];
  *&v4[OBJC_IVAR____TtC15HealthRecordsUI13RecentUDCCell____lazy_storage___button] = 0;
  *&v4[OBJC_IVAR____TtC15HealthRecordsUI13RecentUDCCell_activeConstraints] = MEMORY[0x1E69E7CC0];
  v4[OBJC_IVAR____TtC15HealthRecordsUI13RecentUDCCell_editMode] = 0;
  v18 = &v4[OBJC_IVAR____TtC15HealthRecordsUI13RecentUDCCell_item];
  *(v18 + 4) = 0;
  *v18 = 0u;
  *(v18 + 1) = 0u;
  v19 = OBJC_IVAR____TtC15HealthRecordsUI13RecentUDCCell_sectionContext;
  v20 = sub_1D138DF1C();
  (*(*(v20 - 8) + 56))(&v4[v19], 1, 1, v20);
  v21 = type metadata accessor for RecentUDCCell();
  v30.receiver = v4;
  v30.super_class = v21;
  v22 = objc_msgSendSuper2(&v30, sel_initWithFrame_, a1, a2, a3, a4);
  v23 = [v22 contentView];
  [v23 addSubview_];

  v24 = [v22 contentView];
  [v24 addSubview_];

  v25 = [v22 contentView];
  v26 = sub_1D133FAE0();
  [v25 addSubview_];

  sub_1D138D84C();
  sub_1D1390C8C();
  v27 = [objc_opt_self() currentTraitCollection];
  sub_1D138F1DC();
  sub_1D133DBE4();
  v28 = sub_1D138F27C();
  (*(*(v28 - 8) + 56))(v11, 0, 1, v28);
  MEMORY[0x1D38864A0](v11);
  (*(v13 + 8))(v15, v12);
  sub_1D1341F54();
  sub_1D13408D8();

  return v22;
}

id sub_1D1340398(void *a1)
{
  *&v1[OBJC_IVAR____TtC15HealthRecordsUI13RecentUDCCell____lazy_storage___store] = 0;
  v3 = OBJC_IVAR____TtC15HealthRecordsUI13RecentUDCCell_titleView;
  *&v1[v3] = [objc_allocWithZone(type metadata accessor for ConceptFeedItemTitleView()) initWithFrame_];
  v4 = OBJC_IVAR____TtC15HealthRecordsUI13RecentUDCCell_valueView;
  *&v1[v4] = [objc_allocWithZone(type metadata accessor for ConceptFeedItemValueView()) initWithFrame_];
  *&v1[OBJC_IVAR____TtC15HealthRecordsUI13RecentUDCCell____lazy_storage___button] = 0;
  *&v1[OBJC_IVAR____TtC15HealthRecordsUI13RecentUDCCell_activeConstraints] = MEMORY[0x1E69E7CC0];
  v1[OBJC_IVAR____TtC15HealthRecordsUI13RecentUDCCell_editMode] = 0;
  v5 = &v1[OBJC_IVAR____TtC15HealthRecordsUI13RecentUDCCell_item];
  *(v5 + 4) = 0;
  *v5 = 0u;
  *(v5 + 1) = 0u;
  v6 = OBJC_IVAR____TtC15HealthRecordsUI13RecentUDCCell_sectionContext;
  v7 = sub_1D138DF1C();
  (*(*(v7 - 8) + 56))(&v1[v6], 1, 1, v7);
  v10.receiver = v1;
  v10.super_class = type metadata accessor for RecentUDCCell();
  v8 = objc_msgSendSuper2(&v10, sel_initWithCoder_, a1);

  if (v8)
  {
  }

  return v8;
}

uint64_t sub_1D1340590()
{
  sub_1D13445A8(0, &qword_1EC6103F0, MEMORY[0x1E69DC0D8]);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v16 - v2;
  v4 = sub_1D138F20C();
  v5 = *(v4 - 8);
  *&v6 = MEMORY[0x1EEE9AC00](v4).n128_u64[0];
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [v0 contentView];
  [v9 addSubview_];

  v10 = [v0 contentView];
  [v10 addSubview_];

  v11 = [v0 contentView];
  v12 = sub_1D133FAE0();
  [v11 addSubview_];

  sub_1D138D84C();
  sub_1D1390C8C();
  v13 = [objc_opt_self() currentTraitCollection];
  sub_1D138F1DC();
  sub_1D133DBE4();
  v14 = sub_1D138F27C();
  (*(*(v14 - 8) + 56))(v3, 0, 1, v14);
  MEMORY[0x1D38864A0](v3);
  return (*(v5 + 8))(v8, v4);
}

void sub_1D13407E8()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_1D13408D8();
    v2 = [v1 contentView];
    [v2 layoutIfNeeded];
  }
}

void sub_1D13408D8()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC15HealthRecordsUI13RecentUDCCell_editMode);
  v3 = *(v0 + OBJC_IVAR____TtC15HealthRecordsUI13RecentUDCCell_titleView);
  v4 = OBJC_IVAR____TtC15HealthRecordsUI24ConceptFeedItemTitleView_hidesChevron;
  if (v2 == 1)
  {
    swift_beginAccess();
    *(v3 + v4) = 1;
    sub_1D10B8C14();
    v5 = OBJC_IVAR____TtC15HealthRecordsUI24ConceptFeedItemTitleView_isInEditingMode;
    swift_beginAccess();
    *(v3 + v5) = 1;
    v6 = sub_1D10B86B4();
    v7 = 0.0;
    if ((*(v3 + v5) & 1) == 0)
    {
      if (qword_1EC608BD8 != -1)
      {
        swift_once();
      }

      v7 = -*&qword_1EC62F888;
    }

    [v6 setConstant_];

    v8 = *(v1 + OBJC_IVAR____TtC15HealthRecordsUI13RecentUDCCell_valueView);
    v9 = OBJC_IVAR____TtC15HealthRecordsUI24ConceptFeedItemValueView_isInEditingMode;
    swift_beginAccess();
    *(v8 + v9) = 1;
    v10 = 1.0;
  }

  else
  {
    swift_beginAccess();
    *(v3 + v4) = 0;
    sub_1D10B8C14();
    v11 = OBJC_IVAR____TtC15HealthRecordsUI24ConceptFeedItemTitleView_isInEditingMode;
    swift_beginAccess();
    *(v3 + v11) = 0;
    v12 = sub_1D10B86B4();
    v10 = 0.0;
    v13 = 0.0;
    if ((*(v3 + v11) & 1) == 0)
    {
      if (qword_1EC608BD8 != -1)
      {
        swift_once();
      }

      v13 = -*&qword_1EC62F888;
    }

    [v12 setConstant_];

    v14 = *(v1 + OBJC_IVAR____TtC15HealthRecordsUI13RecentUDCCell_valueView);
    v15 = OBJC_IVAR____TtC15HealthRecordsUI24ConceptFeedItemValueView_isInEditingMode;
    swift_beginAccess();
    *(v14 + v15) = 0;
  }

  sub_1D11946C0();
  v16 = sub_1D133FAE0();
  [v16 setAlpha_];

  sub_1D1341F54();
}

uint64_t sub_1D1340B28()
{
  v1 = v0;
  v102 = sub_1D138F0BC();
  v2 = *(v102 - 8);
  MEMORY[0x1EEE9AC00](v102);
  v4 = &v92 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D13445A8(0, &qword_1EC60A848, MEMORY[0x1E69DC598]);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v92 - v6;
  v8 = sub_1D138D57C();
  *(&v101 + 1) = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  *&v101 = &v92 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D13445A8(0, &qword_1EE06B500, MEMORY[0x1E6969530]);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v92 - v11;
  v13 = type metadata accessor for BrowseCategory();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v92 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = OBJC_IVAR____TtC15HealthRecordsUI13RecentUDCCell_item;
  swift_beginAccess();
  sub_1D10A71C0(v1 + v16, &v124);
  if (*(&v125 + 1))
  {
    v99 = v7;
    sub_1D1080EA4(0, &qword_1EC60A3D0);
    type metadata accessor for UDCRecentItem();
    if (swift_dynamicCast())
    {
      v96 = v8;
      v98 = v118;
      v17 = v118 + OBJC_IVAR____TtC15HealthRecordsUI13UDCRecentItem_viewData;
      *v15 = *(v118 + OBJC_IVAR____TtC15HealthRecordsUI13UDCRecentItem_viewData);
      v100 = v15;
      swift_storeEnumTagMultiPayload();
      if (qword_1EE06AF70 != -1)
      {
        swift_once();
      }

      v18 = qword_1EE06BB58;
      v102 = v1;
      v19 = sub_1D133F92C();
      v97 = &v92;
      *&v118 = *(v18 + OBJC_IVAR___HRProfileManager_lock);
      MEMORY[0x1EEE9AC00](v19);
      sub_1D138D96C();
      sub_1D106F934(0, &qword_1EE06B6B0);
      sub_1D10DC8AC();

      sub_1D138ED0C();

      v20 = v124;
      v21 = type metadata accessor for UserDomainConceptViewData();
      sub_1D13446EC(v17 + v21[9], v12, &qword_1EE06B500, MEMORY[0x1E6969530]);
      v22 = *(&v101 + 1);
      v23 = v96;
      v24 = (*(*(&v101 + 1) + 48))(v12, 1, v96);
      v25 = v17;
      v97 = v20;
      if (v24 == 1)
      {
        if (qword_1EE06AD00 != -1)
        {
          swift_once();
        }

        v26 = sub_1D138D1CC();
        v94 = v27;
        v95 = v26;
      }

      else
      {
        v38 = v101;
        (*(v22 + 32))(v101, v12, v23);
        v39 = [v20 utcDateFormatter];
        v40 = sub_1D138D4EC();
        v41 = [v39 relativeStringFromDate_];

        v42 = sub_1D139016C();
        v94 = v43;
        v95 = v42;

        (*(v22 + 8))(v38, v23);
      }

      v44 = *(v25 + 32);
      *&v101 = *(v25 + 24);
      *(&v101 + 1) = v44;

      v96 = BrowseCategory.systemImage.getter();
      v93 = BrowseCategory.tintColorForTemplateImage.getter();
      v45 = *(v25 + v21[10]);
      if (v45)
      {
        v46 = v45;
        if ([v46 hasRenderableContent])
        {
          v47 = [objc_opt_self() referenceRangeViewDataFromInspectableValueInRange_];

LABEL_19:
          v48 = v21[12];
          v49 = (v25 + v21[11]);
          v50 = *v49;
          v51 = v49[1];
          v52 = v25 + v48;
          v53 = *(v25 + v48);
          v54 = *(v52 + 8);
          v55 = *(v102 + OBJC_IVAR____TtC15HealthRecordsUI13RecentUDCCell_editMode);

          v56 = sub_1D133FD30();
          if (v54)
          {
            v53 = sub_1D139023C();
            v58 = v57;
          }

          else
          {
            v58 = 0;
          }

          v130 = 1;
          v106 = v101;
          *&v107 = v95;
          *(&v107 + 1) = v94;
          *&v108 = v96;
          *(&v108 + 1) = v93;
          *&v109 = v47;
          *(&v109 + 1) = v50;
          *&v110 = v51;
          *(&v110 + 1) = v53;
          *v111 = v58;
          *&v111[8] = 0;
          v111[16] = 1;
          v111[17] = v55;
          v111[18] = v56 & 1;
          *&v111[19] = 256;
          v59 = v102;
          v60 = *(v102 + OBJC_IVAR____TtC15HealthRecordsUI13RecentUDCCell_titleView);
          v105[3] = &type metadata for UserDomainConceptFeedItemViewData;
          v105[4] = &protocol witness table for UserDomainConceptFeedItemViewData;
          v61 = swift_allocObject();
          v105[0] = v61;
          v62 = *v111;
          *(v61 + 80) = v110;
          *(v61 + 96) = v62;
          *(v61 + 109) = *&v111[13];
          v63 = v107;
          *(v61 + 16) = v106;
          *(v61 + 32) = v63;
          v64 = v109;
          *(v61 + 48) = v108;
          *(v61 + 64) = v64;
          v65 = OBJC_IVAR____TtC15HealthRecordsUI24ConceptFeedItemTitleView_viewData;
          swift_beginAccess();
          sub_1D1128A74(&v106, v103);
          sub_1D10DC970(v105, v60 + v65, &qword_1EC60A4D0, &qword_1EC60A4D8);
          swift_endAccess();
          sub_1D10B9714();
          sub_1D1119098(v105, &qword_1EC60A4D0, &qword_1EC60A4D8);
          v66 = *(v59 + OBJC_IVAR____TtC15HealthRecordsUI13RecentUDCCell_valueView);
          v116 = v110;
          v117[0] = *v111;
          *(v117 + 13) = *&v111[13];
          v112 = v106;
          v113 = v107;
          v114 = v108;
          v115 = v109;
          v67 = v66 + OBJC_IVAR____TtC15HealthRecordsUI24ConceptFeedItemValueView_viewData;
          swift_beginAccess();
          v68 = *v67;
          v69 = *(v67 + 32);
          v119 = *(v67 + 16);
          v120 = v69;
          v118 = v68;
          v70 = *(v67 + 48);
          v71 = *(v67 + 64);
          v72 = *(v67 + 80);
          *(v123 + 13) = *(v67 + 93);
          v122 = v71;
          v123[0] = v72;
          v121 = v70;
          v74 = *(v67 + 64);
          v73 = *(v67 + 80);
          v75 = *(v67 + 48);
          *(v129 + 13) = *(v67 + 93);
          v128 = v74;
          v129[0] = v73;
          v127 = v75;
          v76 = *v67;
          v77 = *(v67 + 32);
          v125 = *(v67 + 16);
          v126 = v77;
          v124 = v76;
          v78 = v117[0];
          *(v67 + 64) = v116;
          *(v67 + 80) = v78;
          *(v67 + 93) = *(v117 + 13);
          v79 = v113;
          *v67 = v112;
          *(v67 + 16) = v79;
          v80 = v115;
          *(v67 + 32) = v114;
          *(v67 + 48) = v80;
          sub_1D1128A74(&v106, v103);
          sub_1D13445FC(&v118, v103, &qword_1EC60B448, &type metadata for UserDomainConceptFeedItemViewData);
          sub_1D134467C(&v124, &qword_1EC60B448, &type metadata for UserDomainConceptFeedItemViewData);
          v103[4] = v122;
          v104[0] = v123[0];
          *(v104 + 13) = *(v123 + 13);
          v103[0] = v118;
          v103[1] = v119;
          v103[2] = v120;
          v103[3] = v121;
          sub_1D1193EAC(v103);
          sub_1D134467C(&v118, &qword_1EC60B448, &type metadata for UserDomainConceptFeedItemViewData);
          v81 = sub_1D133FAE0();
          sub_1D133FD30();
          v82 = v99;
          sub_1D11CB89C();
          v83 = sub_1D1390ECC();
          (*(*(v83 - 8) + 56))(v82, 0, 1, v83);
          sub_1D1390EEC();

          v84 = sub_1D133FD30();
          v85 = (v84 & 1) == 0;
          if (v84)
          {
            v86 = 0x7475426E69706E55;
          }

          else
          {
            v86 = 0x6F747475426E6950;
          }

          if (v85)
          {
            v87 = 0xE90000000000006ELL;
          }

          else
          {
            v87 = 0xEB000000006E6F74;
          }

          sub_1D1341C30(v86, v87);
          v89 = v88;

          if (v89)
          {
            v90 = *(v59 + OBJC_IVAR____TtC15HealthRecordsUI13RecentUDCCell____lazy_storage___button);
            v91 = sub_1D139012C();

            [v90 setAccessibilityIdentifier_];

            sub_1D1128B50(&v106);
            return sub_1D10DD050(v100, type metadata accessor for BrowseCategory);
          }

          else
          {
            sub_1D10DD050(v100, type metadata accessor for BrowseCategory);

            sub_1D1128B50(&v106);
          }
        }
      }

      v47 = 0;
      goto LABEL_19;
    }
  }

  else
  {
    sub_1D1119098(&v124, &qword_1EC60B620, &qword_1EC60A3D0);
  }

  sub_1D138F06C();
  v28 = v1;
  v29 = v1;
  v30 = sub_1D138F0AC();
  v31 = sub_1D13907FC();

  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    *&v118 = v33;
    *v32 = 136446210;
    sub_1D10A71C0(v29 + v16, &v124);
    sub_1D10DC698(0, &qword_1EC60B620, &qword_1EC60A3D0);
    v34 = sub_1D139020C();
    v36 = sub_1D11DF718(v34, v35, &v118);

    *(v32 + 4) = v36;
    _os_log_impl(&dword_1D101F000, v30, v31, "Incorrect view model for UDCRecentCell: %{public}s", v32, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v33);
    MEMORY[0x1D38882F0](v33, -1, -1);
    MEMORY[0x1D38882F0](v32, -1, -1);
  }

  return (*(v2 + 8))(v4, v102);
}

uint64_t sub_1D13416AC()
{
  v1 = v0;
  v2 = sub_1D138D82C();
  v41 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x1E69A3588];
  sub_1D13445A8(0, &qword_1EC60A840, MEMORY[0x1E69A3588]);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v37 - v7;
  v9 = sub_1D138DF1C();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtC15HealthRecordsUI13RecentUDCCell_sectionContext;
  swift_beginAccess();
  sub_1D13446EC(&v1[v13], v8, &qword_1EC60A840, v5);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1D10DCA4C(v8);
  }

  v15 = *(v10 + 32);
  v40 = v12;
  v15(v12, v8, v9);
  sub_1D138DF0C();
  v46 = 0;
  v47 = 0xE000000000000000;
  sub_1D13911EC();
  v16 = sub_1D139016C();
  v18 = v17;

  v46 = v16;
  v47 = v18;
  MEMORY[0x1D3885C10](0xD000000000000017, 0x80000001D13CD160);
  v44 = sub_1D138D81C();
  v19 = sub_1D13915CC();
  v39 = v2;
  MEMORY[0x1D3885C10](v19);

  MEMORY[0x1D3885C10](0x2E6D6574492ELL, 0xE600000000000000);
  v44 = sub_1D138D80C();
  v20 = sub_1D13915CC();
  MEMORY[0x1D3885C10](v20);

  v22 = v46;
  v21 = v47;
  v23 = sub_1D139012C();
  [v1 setAccessibilityIdentifier_];

  v24 = *&v1[OBJC_IVAR____TtC15HealthRecordsUI13RecentUDCCell_titleView];
  v25 = (v24 + OBJC_IVAR____TtC15HealthRecordsUI24ConceptFeedItemTitleView_baseAccessibilityIdentifier);
  swift_beginAccess();
  *v25 = v22;
  v25[1] = v21;

  v26 = *(v24 + OBJC_IVAR____TtC15HealthRecordsUI24ConceptFeedItemTitleView_titleLabel);
  v44 = v22;
  v45 = v21;
  swift_bridgeObjectRetain_n();
  MEMORY[0x1D3885C10](0x656C7469542ELL, 0xE600000000000000);
  v27 = sub_1D139012C();
  v38 = v4;
  v28 = v41;
  v29 = v27;

  [v26 setAccessibilityIdentifier_];

  v30 = *(v24 + OBJC_IVAR____TtC15HealthRecordsUI24ConceptFeedItemTitleView_dateLabel);
  v44 = v22;
  v45 = v21;

  MEMORY[0x1D3885C10](0x657461442ELL, 0xE500000000000000);
  v31 = sub_1D139012C();

  [v30 setAccessibilityIdentifier_];

  v32 = (*&v1[OBJC_IVAR____TtC15HealthRecordsUI13RecentUDCCell_valueView] + OBJC_IVAR____TtC15HealthRecordsUI24ConceptFeedItemValueView_baseAccessibilityIdentifier);
  swift_beginAccess();
  *v32 = v22;
  v32[1] = v21;

  v33 = sub_1D1194D14();
  v42 = v22;
  v43 = v21;

  MEMORY[0x1D3885C10](0x65756C61562ELL, 0xE600000000000000);
  v34 = sub_1D139012C();

  [v33 setAccessibilityIdentifier_];

  v35 = sub_1D1194E00();
  v42 = v22;
  v43 = v21;

  MEMORY[0x1D3885C10](0x695665676E61522ELL, 0xEA00000000007765);

  v36 = sub_1D139012C();

  [v35 setAccessibilityIdentifier_];

  (*(v28 + 8))(v38, v39);
  return (*(v10 + 8))(v40, v9);
}

uint64_t sub_1D1341C30(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for UserDomainConceptViewData();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC15HealthRecordsUI13RecentUDCCell_item;
  swift_beginAccess();
  sub_1D10A71C0(v2 + v8, v17);
  if (v18)
  {
    sub_1D1080EA4(0, &qword_1EC60A3D0);
    type metadata accessor for UDCRecentItem();
    if (swift_dynamicCast())
    {
      sub_1D10DC904(v16[1] + OBJC_IVAR____TtC15HealthRecordsUI13UDCRecentItem_viewData, v7);

      v10 = *(v7 + 3);
      v9 = *(v7 + 4);

      sub_1D10DD050(v7, type metadata accessor for UserDomainConceptViewData);
      sub_1D13447B4(0, &qword_1EE06B560, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
      v11 = swift_allocObject();
      *(v11 + 16) = xmmword_1D139EAB0;
      strcpy((v11 + 32), "LabLatestView");
      *(v11 + 46) = -4864;
      *(v11 + 48) = a1;
      *(v11 + 56) = a2;
      *(v11 + 64) = v10;
      *(v11 + 72) = v9;

      v12 = sub_1D139044C();

      v13 = HKUIJoinStringsForAutomationIdentifier();

      if (v13)
      {
        v14 = sub_1D139016C();

        return v14;
      }
    }
  }

  else
  {
    sub_1D1119098(v17, &qword_1EC60B620, &qword_1EC60A3D0);
  }

  return 0;
}

void sub_1D1341F54()
{
  v1 = v0;
  v2 = objc_opt_self();
  v73 = OBJC_IVAR____TtC15HealthRecordsUI13RecentUDCCell_activeConstraints;
  swift_beginAccess();
  sub_1D106F934(0, &qword_1EC609690);

  v3 = sub_1D139044C();

  v74 = v2;
  [v2 deactivateConstraints_];

  sub_1D13447B4(0, &qword_1EE06A4C0, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D13B19D0;
  v5 = *&v1[OBJC_IVAR____TtC15HealthRecordsUI13RecentUDCCell_titleView];
  v6 = [v5 leadingAnchor];
  v7 = [v1 contentView];
  v8 = [v7 leadingAnchor];

  v9 = [v6 constraintEqualToAnchor_];
  *(v4 + 32) = v9;
  v10 = [v5 topAnchor];
  v11 = [v1 &selRef_batches];
  v12 = [v11 topAnchor];

  v13 = [v10 constraintEqualToAnchor_];
  *(v4 + 40) = v13;
  v14 = *&v1[OBJC_IVAR____TtC15HealthRecordsUI13RecentUDCCell_valueView];
  v15 = [v14 leadingAnchor];
  v16 = [v1 &selRef_batches];
  v17 = [v16 leadingAnchor];

  v18 = [v15 constraintEqualToAnchor_];
  *(v4 + 48) = v18;
  v19 = [v14 trailingAnchor];
  v20 = sub_1D133FAE0();
  v21 = v73;
  v22 = [v20 leadingAnchor];

  v23 = [v19 constraintEqualToAnchor:v22 constant:-7.0];
  *(v4 + 56) = v23;
  v24 = [v14 topAnchor];
  v25 = [v5 bottomAnchor];
  v26 = [v24 constraintGreaterThanOrEqualToAnchor:v25 constant:7.0];

  LODWORD(v27) = 1140129792;
  [v26 setPriority_];
  *(v4 + 64) = v26;
  v28 = [v14 bottomAnchor];
  v29 = [v1 contentView];
  v30 = [v29 bottomAnchor];

  v31 = [v28 constraintEqualToAnchor_];
  *(v4 + 72) = v31;
  v32 = OBJC_IVAR____TtC15HealthRecordsUI13RecentUDCCell____lazy_storage___button;
  v33 = [*&v1[OBJC_IVAR____TtC15HealthRecordsUI13RecentUDCCell____lazy_storage___button] centerYAnchor];
  v34 = [v1 contentView];
  v35 = [v34 centerYAnchor];

  v36 = [v33 constraintEqualToAnchor_];
  *(v4 + 80) = v36;
  v37 = [*&v1[v32] heightAnchor];
  v38 = [*&v1[v32] widthAnchor];
  v39 = [v37 constraintEqualToAnchor:v38 multiplier:1.0];

  *(v4 + 88) = v39;
  v40 = [*&v1[v32] widthAnchor];
  v41 = [v1 traitCollection];
  v42 = [v41 preferredContentSizeCategory];
  LOBYTE(v26) = sub_1D1390B5C();

  v43 = 32.0;
  if (v26)
  {
    v43 = 64.0;
  }

  v44 = [v40 constraintEqualToConstant_];

  *(v4 + 96) = v44;
  v45 = [v1 contentView];
  v46 = [v45 heightAnchor];

  v47 = [v46 constraintGreaterThanOrEqualToConstant_];
  LODWORD(v48) = 1148846080;
  [v47 setPriority_];
  *(v4 + 104) = v47;
  v49 = [v1 contentView];
  v50 = [v49 heightAnchor];

  v51 = [v50 constraintEqualToConstant_];
  LODWORD(v52) = 1132068864;
  [v51 setPriority_];
  *(v4 + 112) = v51;
  *&v1[v21] = v4;

  if (v1[OBJC_IVAR____TtC15HealthRecordsUI13RecentUDCCell_editMode] == 1)
  {
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1D139E6E0;
    v54 = [v5 trailingAnchor];
    v55 = [*&v1[v32] leadingAnchor];
    v56 = [v54 constraintEqualToAnchor:v55 constant:-7.0];

    *(inited + 32) = v56;
    v57 = [*&v1[v32] trailingAnchor];
    v58 = [v1 contentView];
    v59 = [v58 trailingAnchor];

    v60 = [v57 constraintEqualToAnchor:v59 constant:-16.0];
    *(inited + 40) = v60;
  }

  else
  {
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1D139E6E0;
    v61 = [v5 trailingAnchor];
    v62 = [*&v1[v32] leadingAnchor];
    v63 = [v61 constraintEqualToAnchor:v62 constant:7.0];

    *(inited + 32) = v63;
    v64 = [*&v1[v32] trailingAnchor];
    v65 = [v1 contentView];
    v66 = [v65 trailingAnchor];

    v67 = [v1 traitCollection];
    v68 = [v67 preferredContentSizeCategory];
    v69 = sub_1D1390B5C();

    v70 = 56.0;
    if ((v69 & 1) == 0)
    {
      v70 = 24.0;
    }

    v71 = [v64 constraintEqualToAnchor:v66 constant:v70];

    *(inited + 40) = v71;
  }

  swift_beginAccess();
  sub_1D1121F80(inited);
  swift_endAccess();

  v72 = sub_1D139044C();

  [v74 activateConstraints_];
}

uint64_t sub_1D1342890(uint64_t a1, void *a2)
{
  v5 = type metadata accessor for UserDomainConceptViewData();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = (&v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = OBJC_IVAR____TtC15HealthRecordsUI13RecentUDCCell_item;
  swift_beginAccess();
  sub_1D10A71C0(v2 + v8, v28);
  if (!v29)
  {
    return sub_1D1119098(v28, &qword_1EC60B620, &qword_1EC60A3D0);
  }

  sub_1D1080EA4(0, &qword_1EC60A3D0);
  type metadata accessor for UDCRecentItem();
  result = swift_dynamicCast();
  if (result)
  {
    v26 = a2;
    sub_1D10DC904(v27 + OBJC_IVAR____TtC15HealthRecordsUI13UDCRecentItem_viewData, v7);

    v10 = v7[1];
    sub_1D10DD050(v7, type metadata accessor for UserDomainConceptViewData);
    if (qword_1EE06AF70 != -1)
    {
      swift_once();
    }

    v11 = qword_1EE06BB58;
    v12 = sub_1D133F92C();
    v27 = *&v11[OBJC_IVAR___HRProfileManager_lock];
    MEMORY[0x1EEE9AC00](v12);
    *(&v26 - 2) = v13;
    *(&v26 - 1) = v11;
    sub_1D138D96C();
    sub_1D106F934(0, &qword_1EE06B6B0);
    sub_1D10DC8AC();

    sub_1D138ED0C();

    v14 = v28[0];
    if (qword_1EE069ED0 != -1)
    {
      swift_once();
    }

    v15 = objc_allocWithZone(type metadata accessor for UserDomainConceptDetailViewController());
    v16 = v10;
    v17 = v14;
    v18 = sub_1D12288FC(v16, v17);

    sub_1D13445FC(a1, v28, &qword_1EE06A4A8, MEMORY[0x1E69E7CA0] + 8);
    v19 = v29;
    if (v29)
    {
      v20 = __swift_project_boxed_opaque_existential_1Tm(v28, v29);
      v21 = *(v19 - 8);
      v22 = MEMORY[0x1EEE9AC00](v20);
      v24 = &v26 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v21 + 16))(v24, v22);
      v25 = sub_1D139161C();
      (*(v21 + 8))(v24, v19);
      __swift_destroy_boxed_opaque_existential_1Tm(v28);
    }

    else
    {
      v25 = 0;
    }

    [v26 showViewController:v18 sender:v25];

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D1342D2C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1D138EF8C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for OnboardingViewIdentifier();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for UserDomainConceptViewData();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = (&v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = OBJC_IVAR____TtC15HealthRecordsUI13RecentUDCCell_item;
  swift_beginAccess();
  sub_1D10A71C0(v2 + v14, aBlock);
  if (!v60)
  {
    return sub_1D1119098(aBlock, &qword_1EC60B620, &qword_1EC60A3D0);
  }

  v15 = sub_1D1080EA4(0, &qword_1EC60A3D0);
  v58 = type metadata accessor for UDCRecentItem();
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
    return result;
  }

  v56 = v15;
  v52 = v8;
  v50 = v10;
  v53 = v7;
  v54 = v5;
  v55 = v4;
  v51 = a1;
  sub_1D10DC904(v63 + OBJC_IVAR____TtC15HealthRecordsUI13UDCRecentItem_viewData, v13);

  v57 = v13[1];
  sub_1D10DD050(v13, type metadata accessor for UserDomainConceptViewData);
  if (qword_1EE06AF70 != -1)
  {
    swift_once();
  }

  v17 = qword_1EE06BB58;
  v18 = sub_1D133F92C();
  v19 = [v18 profileIdentifier];

  v63 = *(v17 + OBJC_IVAR___HRProfileManager_lock);
  MEMORY[0x1EEE9AC00](v20);
  *(&v50 - 2) = v17;
  *(&v50 - 1) = v19;
  sub_1D138D96C();
  sub_1D138EF2C();
  sub_1D10DC8AC();

  sub_1D138ED0C();

  v21 = sub_1D133FD30();
  v22 = (v21 & 1) == 0;
  if (v21)
  {
    v23 = 0x7475426E69706E55;
  }

  else
  {
    v23 = 0x6F747475426E6950;
  }

  if (v22)
  {
    v24 = 0xE90000000000006ELL;
  }

  else
  {
    v24 = 0xEB000000006E6F74;
  }

  sub_1D1341C30(v23, v24);
  v26 = v25;

  if (v26)
  {
    v28 = sub_1D133FAE0(v27);
    v29 = sub_1D139012C();

    [v28 setAccessibilityIdentifier_];
  }

  sub_1D10A71C0(v2 + v14, aBlock);
  v30 = v57;
  if (!v60)
  {

    return sub_1D1119098(aBlock, &qword_1EC60B620, &qword_1EC60A3D0);
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_23;
  }

  v31 = *(v63 + OBJC_IVAR____TtC15HealthRecordsUI13UDCRecentItem_listConfiguration);

  v32 = sub_1D138EECC();
  if (v32 >> 62)
  {
    v33 = sub_1D13910DC();
  }

  else
  {
    v33 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v33)
  {
    v34 = *(v2 + OBJC_IVAR____TtC15HealthRecordsUI13RecentUDCCell____lazy_storage___store);
    type metadata accessor for OnboardingTileAppearanceManager();
    inited = swift_initStackObject();
    *(inited + 16) = v34;
    v36 = objc_allocWithZone(MEMORY[0x1E696C210]);
    v37 = v34;
    v38 = sub_1D139012C();
    v39 = [v36 initWithCategory:0 domainName:v38 healthStore:v37];

    *(inited + 24) = v39;
    v40 = v50;
    swift_storeEnumTagMultiPayload();
    sub_1D1096F38(1, v40);
    swift_setDeallocating();

    v41 = *(inited + 24);

    sub_1D10DD050(v40, type metadata accessor for OnboardingViewIdentifier);
  }

  v42 = v53;
  ListConceptManager.togglePinState(for:onCommitHandler:)(v30, 0, 0, v53);
  (*(v54 + 8))(v42, v55);
  if (qword_1EE06A170 != -1)
  {
    swift_once();
  }

  v43 = qword_1EE06AEB8;
  if (sub_1D138EEFC())
  {
    v44 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v45 = swift_allocObject();
    v46 = v51;
    *(v45 + 16) = v44;
    *(v45 + 24) = v46;
    *(v45 + 32) = 0;
    *(v45 + 40) = v31;
    *(v45 + 48) = 0;
    v47 = *(v43 + OBJC_IVAR___CHRAnalyticsManager_healthRecordsStore);
    v48 = swift_allocObject();
    *(v48 + 16) = sub_1D10DD038;
    *(v48 + 24) = v45;
    v61 = sub_1D10DD048;
    v62 = v48;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1D1226920;
    v60 = &block_descriptor_44_0;
    v49 = _Block_copy(aBlock);

    [v47 fetchIsImproveHealthRecordsDataSubmissionAllowedWithCompletion_];

    _Block_release(v49);
  }

  else
  {
LABEL_23:
  }
}

id sub_1D1343488()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RecentUDCCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for RecentUDCCell()
{
  result = qword_1EC60FA90;
  if (!qword_1EC60FA90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D13435C8()
{
  sub_1D13445A8(319, &qword_1EC60A840, MEMORY[0x1E69A3588]);
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1D13436B4@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC15HealthRecordsUI13RecentUDCCell_item;
  swift_beginAccess();
  return sub_1D10A71C0(v1 + v3, a1);
}

uint64_t sub_1D134370C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15HealthRecordsUI13RecentUDCCell_item;
  swift_beginAccess();
  sub_1D10DC970(a1, v1 + v3, &qword_1EC60B620, &qword_1EC60A3D0);
  swift_endAccess();
  sub_1D1340B28();
  return sub_1D1119098(a1, &qword_1EC60B620, &qword_1EC60A3D0);
}

uint64_t (*sub_1D13437B0(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1D1343814;
}

uint64_t sub_1D134382C(void *a1, void *a2)
{
  v6[3] = sub_1D106F934(0, &qword_1EC609680);
  v6[0] = a1;
  v4 = a1;
  sub_1D1342890(v6, a2);
  return sub_1D134467C(v6, &qword_1EE06A4A8, MEMORY[0x1E69E7CA0] + 8);
}

uint64_t sub_1D13438B0@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC15HealthRecordsUI13RecentUDCCell_sectionContext;
  swift_beginAccess();
  return sub_1D13446EC(v1 + v3, a1, &qword_1EC60A840, MEMORY[0x1E69A3588]);
}

uint64_t sub_1D1343924(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15HealthRecordsUI13RecentUDCCell_sectionContext;
  swift_beginAccess();
  sub_1D10DCAC4(a1, v1 + v3);
  swift_endAccess();
  sub_1D13416AC();
  return sub_1D10DCA4C(a1);
}

uint64_t (*sub_1D1343990(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1D13439F4;
}

uint64_t sub_1D1343A0C(uint64_t a1, char a2, uint64_t (*a3)(uint64_t))
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return a3(result);
  }

  return result;
}

id sub_1D1343A50()
{
  v1 = type metadata accessor for UserDomainConceptViewData();
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = (v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = OBJC_IVAR____TtC15HealthRecordsUI13RecentUDCCell_item;
  swift_beginAccess();
  sub_1D10A71C0(v0 + v4, v8);
  if (v9)
  {
    sub_1D1080EA4(0, &qword_1EC60A3D0);
    type metadata accessor for UDCRecentItem();
    if (swift_dynamicCast())
    {
      sub_1D10DC904(v7[1] + OBJC_IVAR____TtC15HealthRecordsUI13UDCRecentItem_viewData, v3);

      v5 = v3[1];
      sub_1D10DD050(v3, type metadata accessor for UserDomainConceptViewData);
      return v5;
    }
  }

  else
  {
    sub_1D1119098(v8, &qword_1EC60B620, &qword_1EC60A3D0);
  }

  return 0;
}

void sub_1D1343BCC(char a1, char a2)
{
  v3 = v2;
  v5 = a1 & 1;
  sub_1D13445A8(0, &qword_1EC60A848, MEMORY[0x1E69DC598]);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = aBlock - v7;
  if (*(v3 + OBJC_IVAR____TtC15HealthRecordsUI13RecentUDCCell_editMode) != v5)
  {
    *(v3 + OBJC_IVAR____TtC15HealthRecordsUI13RecentUDCCell_editMode) = v5;
    v9 = sub_1D133FAE0();
    sub_1D133FD30();
    sub_1D11CB89C();
    v10 = sub_1D1390ECC();
    (*(*(v10 - 8) + 56))(v8, 0, 1, v10);
    sub_1D1390EEC();

    if (a2)
    {
      v11 = objc_opt_self();
      v12 = swift_allocObject();
      swift_unknownObjectWeakInit();
      aBlock[4] = sub_1D1344758;
      aBlock[5] = v12;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1D10CBD3C;
      aBlock[3] = &block_descriptor_77;
      v13 = _Block_copy(aBlock);

      [v11 animateWithDuration:v13 animations:0.25];
      _Block_release(v13);
    }

    else
    {
      sub_1D13408D8();
    }
  }
}

id sub_1D1343DE0()
{
  v0 = swift_allocObject();
  swift_unknownObjectWeakInit();
  if (sub_1D133FD30())
  {
    v1 = sub_1D10DCB6C(sub_1D1344778, v0);
  }

  else
  {
    v1 = sub_1D10DCD78(sub_1D1344778, v0);
  }

  v2 = v1;
  sub_1D1341C30(0xD000000000000013, 0x80000001D13B7460);
  if (v3)
  {
    v4 = v2;
    v5 = sub_1D139012C();

    [v4 setAccessibilityIdentifier_];
  }

  sub_1D13447B4(0, &qword_1EE06A4C0, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1D139E810;
  *(v6 + 32) = v2;
  sub_1D106F934(0, &qword_1EC60A850);
  v7 = v2;
  v8 = sub_1D139044C();

  v9 = [objc_opt_self() configurationWithActions_];

  return v9;
}

void sub_1D1343FA4(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    sub_1D1342D2C(2);
    (a3)(1);
  }

  else
  {
    a3();
  }
}

uint64_t sub_1D1344054()
{
  if (sub_1D133FD30())
  {
    if (qword_1EE06AD00 == -1)
    {
      return sub_1D138D1CC();
    }

    goto LABEL_6;
  }

  if (qword_1EE06AD00 != -1)
  {
LABEL_6:
    swift_once();
  }

  return sub_1D138D1CC();
}

uint64_t sub_1D1344150()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;
    v2 = OBJC_IVAR____TtC15HealthRecordsUI13RecentUDCCell_item;
    swift_beginAccess();
    sub_1D10A71C0(v1 + v2, v15);
    if (v16)
    {
      sub_1D1080EA4(0, &qword_1EC60A3D0);
      type metadata accessor for UDCRecentItem();
      if ((swift_dynamicCast() & 1) == 0 || ((v3 = *(v14 + OBJC_IVAR____TtC15HealthRecordsUI13UDCRecentItem_listConfiguration), , v3 <= 4) ? (v4 = ((1 << v3) & 0x13) == 0) : (v4 = 1), v4))
      {

        return 0;
      }

      else
      {
        sub_1D1344054();
        sub_1D133FD30();
        v5 = sub_1D139012C();
        v6 = [objc_opt_self() systemImageNamed_];

        sub_1D106F934(0, &unk_1EC60F6B0);
        v7 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v8 = sub_1D1390DCC();
        sub_1D1341C30(0x73657250676E6F4CLL, 0xE900000000000073);
        if (v9)
        {
          v10 = v8;
          v11 = sub_1D139012C();

          [v10 setAccessibilityIdentifier_];
        }

        sub_1D106F934(0, &unk_1EC60CF20);
        sub_1D13447B4(0, &qword_1EE06A4C0, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
        v12 = swift_allocObject();
        *(v12 + 16) = xmmword_1D139E810;
        *(v12 + 32) = v8;
        v13 = sub_1D1390C7C();

        return v13;
      }
    }

    else
    {

      sub_1D1119098(v15, &qword_1EC60B620, &qword_1EC60A3D0);
      return 0;
    }
  }

  return result;
}

void sub_1D1344490()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_1D1342D2C(1);
  }
}

id sub_1D13444E8()
{
  v1 = *v0;
  sub_1D106F934(0, &qword_1EC60A858);
  v2 = swift_allocObject();
  *(v2 + 16) = v1;
  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v4 = v1;
  return sub_1D10DC370(0, sub_1D1344780, v2, sub_1D13447A4, v3);
}

void sub_1D13445A8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t sub_1D13445FC(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  sub_1D13447B4(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1D134467C(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  sub_1D13447B4(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1D13446EC(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_1D13445A8(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t block_copy_helper_78(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_1D13447B4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1D1344834()
{
  v1 = *(v0 + 8);
  sub_1D139177C();
  if (v1 == 1)
  {
    MEMORY[0x1D38870E0](0);
  }

  else
  {
    MEMORY[0x1D38870E0](1);
    sub_1D139179C();
    if (v1)
    {
      sub_1D139027C();
    }
  }

  return sub_1D13917CC();
}

uint64_t sub_1D13448C4()
{
  v1 = *(v0 + 8);
  if (v1 == 1)
  {
    return MEMORY[0x1D38870E0](0);
  }

  MEMORY[0x1D38870E0](1);
  if (!v1)
  {
    return sub_1D139179C();
  }

  sub_1D139179C();

  return sub_1D139027C();
}

uint64_t sub_1D1344954()
{
  v1 = *(v0 + 8);
  sub_1D139177C();
  if (v1 == 1)
  {
    MEMORY[0x1D38870E0](0);
  }

  else
  {
    MEMORY[0x1D38870E0](1);
    sub_1D139179C();
    if (v1)
    {
      sub_1D139027C();
    }
  }

  return sub_1D13917CC();
}

BOOL sub_1D13449E0(void *a1, void *a2)
{
  v3 = a1[1];
  v4 = a2[1];
  if (v3 == 1)
  {
    return v4 == 1;
  }

  if (v4 == 1)
  {
    return 0;
  }

  if (v3)
  {
    if (v4 && (*a1 == *a2 && v3 == v4 || (sub_1D139162C() & 1) != 0))
    {
      return 1;
    }
  }

  else if (!v4)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_1D1344A64()
{
  sub_1D139027C();
  v1 = *(v0 + 24);
  if (v1 == 1)
  {
    return MEMORY[0x1D38870E0](0);
  }

  v3 = *(v0 + 16);
  MEMORY[0x1D38870E0](1);
  sub_1D139179C();
  if (v1)
  {

    sub_1D139027C();
    v4 = v3;
    v5 = v1;
  }

  else
  {
    v4 = v3;
    v5 = 0;
  }

  return sub_1D1345D54(v4, v5);
}

uint64_t sub_1D1344B24()
{
  sub_1D1345D54(*(v0 + 16), *(v0 + 24));

  return swift_deallocClassInstance();
}

uint64_t sub_1D1344B88()
{
  sub_1D139177C();
  sub_1D139027C();
  v1 = *(v0 + 24);
  if (v1 == 1)
  {
    MEMORY[0x1D38870E0](0);
  }

  else
  {
    v2 = *(v0 + 16);
    MEMORY[0x1D38870E0](1);
    sub_1D139179C();
    if (v1)
    {

      sub_1D139027C();
      v3 = v2;
      v4 = v1;
    }

    else
    {
      v3 = v2;
      v4 = 0;
    }

    sub_1D1345D54(v3, v4);
  }

  return sub_1D13917CC();
}

uint64_t sub_1D1344C90()
{
  sub_1D139177C();
  v1 = *v0;
  sub_1D139027C();
  v2 = *(v1 + 24);
  if (v2 == 1)
  {
    MEMORY[0x1D38870E0](0);
  }

  else
  {
    v3 = *(v1 + 16);
    MEMORY[0x1D38870E0](1);
    sub_1D139179C();
    if (v2)
    {

      sub_1D139027C();
      v4 = v3;
      v5 = v2;
    }

    else
    {
      v4 = v3;
      v5 = 0;
    }

    sub_1D1345D54(v4, v5);
  }

  return sub_1D13917CC();
}

uint64_t sub_1D1344D5C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE0DA58](a1, WitnessTable);
}

id sub_1D1344DE0()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle_];
  [v0 setAlpha_];
  [v0 setHidesWhenStopped_];
  v4 = sub_1D139016C();
  v5 = v1;

  MEMORY[0x1D3885C10](0x536D65747379532ELL, 0xED00007375746174);

  MEMORY[0x1D3885C10](0x72656E6E6970532ELL, 0xE800000000000000);

  v2 = sub_1D139012C();

  [v0 setAccessibilityIdentifier_];

  [v0 setTranslatesAutoresizingMaskIntoConstraints_];
  return v0;
}

id sub_1D1344F4C(uint64_t *a1, uint64_t (*a2)(void))
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    v6 = a2();
    v7 = *(v2 + v3);
    *(v2 + v3) = v6;
    v5 = v6;

    v4 = 0;
  }

  v8 = v4;
  return v5;
}

id sub_1D1344FAC()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  [v0 setNumberOfLines_];
  v1 = v0;
  [v1 setAlpha_];
  v5 = sub_1D139016C();
  v6 = v2;

  MEMORY[0x1D3885C10](0x536D65747379532ELL, 0xED00007375746174);

  MEMORY[0x1D3885C10](0x656C7469542ELL, 0xE600000000000000);

  v3 = sub_1D139012C();

  [v1 setAccessibilityIdentifier_];

  [v1 setTranslatesAutoresizingMaskIntoConstraints_];
  return v1;
}

char *sub_1D13450EC(double a1, double a2, double a3, double a4)
{
  sub_1D12A3EAC(0, &qword_1EC6103F0, MEMORY[0x1E69DC0D8]);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v42 - v10;
  *&v4[OBJC_IVAR____TtC15HealthRecordsUI41MedicalRecordTimelineSystemStatusItemCell____lazy_storage___spinner] = 0;
  *&v4[OBJC_IVAR____TtC15HealthRecordsUI41MedicalRecordTimelineSystemStatusItemCell____lazy_storage___titleLabel] = 0;
  v12 = &v4[OBJC_IVAR____TtC15HealthRecordsUI41MedicalRecordTimelineSystemStatusItemCell_item];
  v13 = type metadata accessor for MedicalRecordTimelineSystemStatusItemCell();
  *v12 = 0u;
  *(v12 + 1) = 0u;
  *(v12 + 4) = 0;
  v42.receiver = v4;
  v42.super_class = v13;
  v14 = objc_msgSendSuper2(&v42, sel_initWithFrame_, a1, a2, a3, a4);
  v15 = [v14 contentView];
  v16 = sub_1D1344DC0();
  [v15 addSubview_];

  v17 = [v14 &selRef_batches];
  v18 = sub_1D1344F2C();
  [v17 addSubview_];

  sub_1D138F25C();
  v19 = sub_1D138F27C();
  (*(*(v19 - 8) + 56))(v11, 0, 1, v19);
  MEMORY[0x1D38864A0](v11);
  v20 = OBJC_IVAR____TtC15HealthRecordsUI41MedicalRecordTimelineSystemStatusItemCell____lazy_storage___spinner;
  v21 = [*&v14[OBJC_IVAR____TtC15HealthRecordsUI41MedicalRecordTimelineSystemStatusItemCell____lazy_storage___spinner] topAnchor];
  v22 = [v14 &selRef_batches];
  v23 = [v22 topAnchor];

  v24 = [v21 constraintEqualToAnchor:v23 constant:16.0];
  [v24 setActive_];

  v25 = [*&v14[v20] centerXAnchor];
  v26 = [v14 &selRef_batches];
  v27 = [v26 centerXAnchor];

  v28 = [v25 constraintEqualToAnchor_];
  [v28 setActive_];

  v29 = OBJC_IVAR____TtC15HealthRecordsUI41MedicalRecordTimelineSystemStatusItemCell____lazy_storage___titleLabel;
  v30 = [*&v14[OBJC_IVAR____TtC15HealthRecordsUI41MedicalRecordTimelineSystemStatusItemCell____lazy_storage___titleLabel] topAnchor];
  v31 = [*&v14[v20] bottomAnchor];
  v32 = [v30 constraintEqualToAnchor:v31 constant:8.0];

  [v32 setActive_];
  v33 = [*&v14[v29] centerXAnchor];
  v34 = [v14 contentView];
  v35 = [v34 centerXAnchor];

  v36 = [v33 constraintEqualToAnchor_];
  [v36 setActive_];

  v37 = [*&v14[v29] bottomAnchor];
  v38 = [v14 contentView];

  v39 = [v38 bottomAnchor];
  v40 = [v37 constraintEqualToAnchor:v39 constant:-16.0];

  [v40 setActive_];
  return v14;
}

uint64_t sub_1D1345644()
{
  v1 = v0;
  v2 = sub_1D138F0BC();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC15HealthRecordsUI41MedicalRecordTimelineSystemStatusItemCell_item;
  swift_beginAccess();
  sub_1D10A71C0(v1 + v6, v24);
  if (v25)
  {
    sub_1D10A7254();
    type metadata accessor for MedicalRecordTimelineSystemStatusItem();
    if (swift_dynamicCast())
    {
      v7 = *(v23 + 24);
      if (v7 == 1)
      {
        v8 = sub_1D1344F2C();
        [v8 setText_];

        v9 = sub_1D1344DC0();
        [v9 stopAnimating];
      }

      else
      {
        v19 = *(v23 + 16);

        v20 = sub_1D1344F2C();
        if (v7)
        {
          v21 = sub_1D139012C();
          sub_1D1345D54(v19, v7);
        }

        else
        {
          v21 = 0;
        }

        [v20 setText_];

        v9 = sub_1D1344DC0();
        [v9 startAnimating];
      }
    }
  }

  else
  {
    sub_1D10A72B8(v24);
  }

  sub_1D138F06C();
  v10 = v1;
  v11 = sub_1D138F0AC();
  v12 = sub_1D13907FC();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v23 = v14;
    *v13 = 136446210;
    sub_1D10A71C0(v1 + v6, v24);
    sub_1D12A3EAC(0, &qword_1EC60B620, sub_1D10A7254);
    v15 = sub_1D139020C();
    v17 = sub_1D11DF718(v15, v16, &v23);

    *(v13 + 4) = v17;
    _os_log_impl(&dword_1D101F000, v11, v12, "Incorrect view model for MedicalRecordTimelineSystemStatusItem: %{public}s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v14);
    MEMORY[0x1D38882F0](v14, -1, -1);
    MEMORY[0x1D38882F0](v13, -1, -1);
  }

  return (*(v3 + 8))(v5, v2);
}
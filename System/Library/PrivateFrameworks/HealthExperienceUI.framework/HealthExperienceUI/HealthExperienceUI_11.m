uint64_t ConfirmDetailsValueFormatterImpl.ValueType.hashValue.getter()
{
  v1 = *v0;
  sub_1BA4A8488();
  MEMORY[0x1BFAF2ED0](v1);
  return sub_1BA4A84D8();
}

id sub_1BA03BD28()
{
  v1 = *(v0 + 32);
  if (v1)
  {
    v2 = *(v0 + 32);
LABEL_5:
    v5 = v1;
    return v2;
  }

  result = [*(v0 + 16) displayTypeController];
  if (result)
  {
    v4 = *(v0 + 32);
    *(v0 + 32) = result;
    v2 = result;

    v1 = 0;
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

void *ConfirmDetailsValueFormatterImpl.__allocating_init(healthStore:)(void *a1)
{
  v2 = swift_allocObject();
  v2[4] = 0;
  v2[5] = 0;
  v2[2] = a1;
  v3 = objc_opt_self();
  v4 = a1;
  v5 = [v3 sharedInstanceForHealthStore_];
  v6 = [v5 createHKUnitPreferenceController];

  v2[3] = v6;
  return v2;
}

void *ConfirmDetailsValueFormatterImpl.init(healthStore:)(void *a1)
{
  v1[4] = 0;
  v1[5] = 0;
  v1[2] = a1;
  v3 = objc_opt_self();
  v4 = a1;
  v5 = [v3 sharedInstanceForHealthStore_];
  v6 = [v5 createHKUnitPreferenceController];

  v1[3] = v6;
  return v1;
}

id sub_1BA03BED0(unsigned __int8 *a1)
{
  v2 = v1;
  v4 = sub_1BA4A3EA8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a1;
  sub_1B9F0ADF8(0, &qword_1EDC5E538);
  v9 = MEMORY[0x1E696BD40];
  if (!v8)
  {
    v9 = MEMORY[0x1E696BC98];
  }

  v10 = MEMORY[0x1BFAF1AC0](*v9);
  v11 = sub_1BA03BD28();
  v12 = [v11 displayTypeForObjectType_];

  if (!v12)
  {
    goto LABEL_10;
  }

  v13 = [*(v2 + 24) unitForDisplayType_];
  if (!v13)
  {

LABEL_10:
    sub_1BA4A3DE8();
    v20 = v10;
    v21 = sub_1BA4A3E88();
    v22 = sub_1BA4A6FB8();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v35 = v4;
      v36 = v34;
      *v23 = 136446722;
      v24 = sub_1BA4A85D8();
      v26 = v5;
      v27 = sub_1B9F0B82C(v24, v25, &v36);

      *(v23 + 4) = v27;
      *(v23 + 12) = 2082;
      *(v23 + 14) = sub_1B9F0B82C(0xD000000000000013, 0x80000001BA4E52E0, &v36);
      *(v23 + 22) = 2082;
      v28 = [v20 identifier];
      v29 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      v31 = v30;

      v32 = sub_1B9F0B82C(v29, v31, &v36);

      *(v23 + 24) = v32;
      _os_log_impl(&dword_1B9F07000, v21, v22, "[%{public}s.%{public}s]: Unable to determine preferred unit for type %{public}s", v23, 0x20u);
      v33 = v34;
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v33, -1, -1);
      MEMORY[0x1BFAF43A0](v23, -1, -1);

      (*(v26 + 8))(v7, v35);
    }

    else
    {

      (*(v5 + 8))(v7, v4);
    }

    v37 = v8;
    v14 = sub_1BA03B984();

    return v14;
  }

  v14 = v13;
  if (v8)
  {
    sub_1B9F0ADF8(0, &qword_1EDC6E350);
    v15 = objc_opt_self();
    v16 = [v15 meterUnit];
    v17 = sub_1BA4A7798();

    if (v17)
    {
      v18 = [v15 meterUnitWithMetricPrefix_];

      return v18;
    }
  }

  return v14;
}

id sub_1BA03C2C0()
{
  v1 = *(v0 + 40);
  if (v1)
  {
    v2 = *(v0 + 40);
LABEL_5:
    v7 = v1;
    return v2;
  }

  v3 = [objc_allocWithZone(MEMORY[0x1E696ACF8]) init];
  [v3 setForPersonHeightUse_];
  [v3 setUnitStyle_];
  result = [v3 numberFormatter];
  if (result)
  {
    v5 = result;
    [result setMaximumFractionDigits_];

    v6 = *(v0 + 40);
    *(v0 + 40) = v3;
    v2 = v3;

    v1 = 0;
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

uint64_t sub_1BA03C38C(unsigned __int8 *a1, void *a2)
{
  v3 = v2;
  v48 = a2;
  v5 = sub_1BA4A3EA8();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = *a1;
  v9 = v51;
  v10 = sub_1BA03BED0(&v51);
  sub_1B9F0ADF8(0, &qword_1EDC5E538);
  v11 = MEMORY[0x1E696BD40];
  if (!v9)
  {
    v11 = MEMORY[0x1E696BC98];
  }

  v12 = MEMORY[0x1BFAF1AC0](*v11);
  v13 = sub_1BA03BD28();
  v14 = [v13 displayTypeForObjectType_];

  if (!v14)
  {
    v47 = v6;
    sub_1BA4A3DE8();
    v21 = v12;
    v22 = sub_1BA4A3E88();
    v23 = sub_1BA4A6FB8();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v49 = v46;
      *v24 = 136446722;
      v25 = sub_1BA4A85D8();
      v27 = sub_1B9F0B82C(v25, v26, &v49);
      HIDWORD(v45) = v23;
      v28 = v27;

      *(v24 + 4) = v28;
      *(v24 + 12) = 2082;
      *(v24 + 14) = sub_1B9F0B82C(0xD00000000000001DLL, 0x80000001BA4E5300, &v49);
      *(v24 + 22) = 2082;
      v29 = [v21 identifier];
      v30 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      v31 = v10;
      v33 = v32;

      v34 = sub_1B9F0B82C(v30, v33, &v49);
      v10 = v31;

      *(v24 + 24) = v34;
      _os_log_impl(&dword_1B9F07000, v22, BYTE4(v45), "[%{public}s.%{public}s]: Unable to determine display type for type %{public}s", v24, 0x20u);
      v35 = v46;
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v35, -1, -1);
      MEMORY[0x1BFAF43A0](v24, -1, -1);
    }

    (*(v47 + 8))(v8, v5);
    v50 = v9;
    sub_1BA03BAEC(v48);
    v37 = v36;

    return v37;
  }

  if (!v9)
  {
    v38 = [v14 hk:v10 valueFormatterForUnit:?];
    [v48 doubleValueForUnit_];
    v39 = sub_1BA4A1A08();
    v40 = [v38 stringFromValue:v39 displayType:v14 unitController:*(v3 + 24)];

    if (v40)
    {
      v37 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    }

    else
    {

      return 0;
    }

    return v37;
  }

  v15 = objc_opt_self();
  v16 = v10;
  v17 = [v15 footUnit];
  sub_1B9F0ADF8(0, &qword_1EDC6B4D0);
  v18 = sub_1BA4A7798();

  if (v18)
  {
    [v48 doubleValueForUnit_];
    v19 = HKFormattedFeetAndInches();
    if (v19)
    {
      v20 = v19;
LABEL_15:
      v37 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();

      return v37;
    }

    __break(1u);
  }

  else
  {
    v16 = v16;
    v41 = [v15 meterUnitWithMetricPrefix_];
    v42 = sub_1BA4A7798();

    if (v42)
    {
      v43 = sub_1BA03C2C0();
      [v48 doubleValueForUnit_];
      v20 = [v43 stringFromValue:9 unit:?];

      goto LABEL_15;
    }
  }

  result = sub_1BA4A8018();
  __break(1u);
  return result;
}

uint64_t ConfirmDetailsValueFormatterImpl.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

unint64_t sub_1BA03C9F8()
{
  result = qword_1EBBEA8D0;
  if (!qword_1EBBEA8D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEA8D0);
  }

  return result;
}

void __swiftcall UICollectionViewController.scrollViewToTest()(UIScrollView_optional *__return_ptr retstr)
{
  v2 = [v1 collectionView];

  v3 = v2;
}

id sub_1BA03CB54()
{
  v1 = [*v0 collectionView];

  return v1;
}

void sub_1BA03CBC8(uint64_t a1, void *a2)
{
  sub_1B9F0ADF8(0, &qword_1EDC6B630);
  v3 = sub_1BA4A6AE8();
  v4 = [objc_opt_self() orPredicateWithSubpredicates_];

  sub_1BA4A27B8();
  v5 = v4;
  v6 = sub_1BA4A26C8();

  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v7 = sub_1BA4A1B78();
  sub_1BA03D024(0, &qword_1EBBEA8F0, MEMORY[0x1E69A3DD0]);
  sub_1BA4A7588();
}

void sub_1BA03CD14(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v4 = sub_1BA4A1B78();
  sub_1BA4A27B8();
  v5 = sub_1BA4A7598();

  if (!v2)
  {
    *a2 = v5;
  }
}

uint64_t sub_1BA03CDC8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), unint64_t *a4)
{
  sub_1BA03D024(0, a2, a3);
  sub_1BA03D078(a4, a2, a3);
  return sub_1BA4A6A18();
}

uint64_t sub_1BA03CE44()
{
  sub_1BA03CEA0();
  sub_1BA03CFB0();
  return sub_1BA4A6A18();
}

void sub_1BA03CEA0()
{
  if (!qword_1EBBEA8D8)
  {
    sub_1B9F0ADF8(255, &unk_1EBBEE680);
    sub_1BA03D024(255, &qword_1EBBEA640, type metadata accessor for SummarySharingSelectableDataTypeItem);
    sub_1BA03CF48();
    v0 = sub_1BA4A6688();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBBEA8D8);
    }
  }
}

unint64_t sub_1BA03CF48()
{
  result = qword_1EBBEA8E0;
  if (!qword_1EBBEA8E0)
  {
    sub_1B9F0ADF8(255, &unk_1EBBEE680);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEA8E0);
  }

  return result;
}

unint64_t sub_1BA03CFB0()
{
  result = qword_1EBBEA8E8;
  if (!qword_1EBBEA8E8)
  {
    sub_1BA03CEA0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEA8E8);
  }

  return result;
}

void sub_1BA03D024(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1BA4A6BF8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1BA03D078(unint64_t *a1, unint64_t *a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_1BA03D024(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static AnalyticsSubmitting.getDataTypeDetailViewControllerIdentifier(of:)()
{
  type metadata accessor for DataTypeDetailViewController();
  v0 = swift_dynamicCastClass();
  if (!v0)
  {
    return 0;
  }

  v1 = OBJC_IVAR____TtC18HealthExperienceUI28DataTypeDetailViewController_viewModel;
  v2 = v0;
  swift_beginAccess();
  sub_1B9F0A534(v2 + v1, v7);
  v3 = v8;
  v4 = v9;
  __swift_project_boxed_opaque_existential_1(v7, v8);
  v5 = (*(v4 + 24))(v3, v4);
  __swift_destroy_boxed_opaque_existential_1(v7);
  return v5;
}

double sub_1BA03D1A0(uint64_t a1)
{
  v2 = PDFBuilder.Document.drawingContext.getter();
  CGRectGetWidth(*(a1 + 168));
  return v2;
}

uint64_t FeedItemViewControllerContext.cachedObject<A>(using:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v22 = sub_1BA4A3EA8();
  v8 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v21 - v11;
  v13 = (*(a3 + 8))(a1, a3, v10);
  if (v14 >> 60 == 15)
  {
    sub_1BA4A3DD8();
    v15 = sub_1BA4A3E88();
    v16 = sub_1BA4A6FB8();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_1B9F07000, v15, v16, "Unable to decode cached user data because there isn't anything stored.", v17, 2u);
      MEMORY[0x1BFAF43A0](v17, -1, -1);
    }

    (*(v8 + 8))(v12, v22);
    return (*(*(a2 - 8) + 56))(a4, 1, 1, a2);
  }

  else
  {
    v18 = v13;
    v19 = v14;
    sub_1BA4A0E98();
    (*(*(a2 - 8) + 56))(a4, 0, 1, a2);

    return sub_1B9F6AC8C(v18, v19);
  }
}

void sub_1BA03D5DC()
{
  v1 = v0;
  sub_1BA27D1B8();
  v2 = sub_1BA27A7D4();
  v3 = OBJC_IVAR____TtC18HealthExperienceUI32CollectionViewListDisclosureCell_item;
  swift_beginAccess();
  sub_1B9F68124(v0 + v3, v13);
  if (v14)
  {
    sub_1B9F0D950(0, &qword_1EDC6E1B0);
    sub_1B9F0D950(0, &unk_1EBBEA918);
    if (swift_dynamicCast())
    {
      v4 = *(&v16 + 1);
      if (*(&v16 + 1))
      {
        v5 = v17;
        __swift_project_boxed_opaque_existential_1(&v15, *(&v16 + 1));
        v6 = (*(v5 + 16))(v4, v5);
        __swift_destroy_boxed_opaque_existential_1(&v15);
        goto LABEL_8;
      }
    }

    else
    {
      v17 = 0;
      v15 = 0u;
      v16 = 0u;
    }
  }

  else
  {
    sub_1B9F43A50(v13, &qword_1EDC6E1A0, &qword_1EDC6E1B0);
    v15 = 0u;
    v16 = 0u;
    v17 = 0;
  }

  sub_1B9F43A50(&v15, &qword_1EBBEA910, &unk_1EBBEA918);
  v6 = [objc_opt_self() systemBlueColor];
LABEL_8:
  [v2 setTextColor_];

  sub_1B9F68124(v1 + v3, v13);
  if (v14)
  {
    sub_1B9F0D950(0, &qword_1EDC6E1B0);
    sub_1B9F0D950(0, &unk_1EBBEA918);
    if (swift_dynamicCast())
    {
      v7 = *(&v16 + 1);
      if (*(&v16 + 1))
      {
        v8 = v17;
        __swift_project_boxed_opaque_existential_1(&v15, *(&v16 + 1));
        v9 = (*(v8 + 24))(v7, v8);
        __swift_destroy_boxed_opaque_existential_1(&v15);
        goto LABEL_15;
      }
    }

    else
    {
      v17 = 0;
      v15 = 0u;
      v16 = 0u;
    }
  }

  else
  {
    sub_1B9F43A50(v13, &qword_1EDC6E1A0, &qword_1EDC6E1B0);
    v15 = 0u;
    v16 = 0u;
    v17 = 0;
  }

  sub_1B9F43A50(&v15, &qword_1EBBEA910, &unk_1EBBEA918);
  v9 = [objc_opt_self() systemGroupedBackgroundColor];
LABEL_15:
  [v1 setBackgroundColor_];

  sub_1B9F68124(v1 + v3, v13);
  if (!v14)
  {
    sub_1B9F43A50(v13, &qword_1EDC6E1A0, &qword_1EDC6E1B0);
    v15 = 0u;
    v16 = 0u;
    v17 = 0;
    goto LABEL_21;
  }

  sub_1B9F0D950(0, &qword_1EDC6E1B0);
  sub_1B9F0D950(0, &unk_1EBBEA918);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v17 = 0;
    v15 = 0u;
    v16 = 0u;
    goto LABEL_21;
  }

  v10 = *(&v16 + 1);
  if (!*(&v16 + 1))
  {
LABEL_21:
    sub_1B9F43A50(&v15, &qword_1EBBEA910, &unk_1EBBEA918);
    v12 = 1;
    goto LABEL_22;
  }

  v11 = v17;
  __swift_project_boxed_opaque_existential_1(&v15, *(&v16 + 1));
  v12 = (*(v11 + 40))(v10, v11);
  __swift_destroy_boxed_opaque_existential_1(&v15);
LABEL_22:
  [v1 setUserInteractionEnabled_];
  sub_1BA27AE60();
}

uint64_t sub_1BA03D9F8@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI32CollectionViewListDisclosureCell_item;
  swift_beginAccess();
  return sub_1B9F68124(v1 + v3, a1);
}

uint64_t sub_1BA03DA54(uint64_t a1)
{
  sub_1B9F68124(a1, v5);
  v3 = OBJC_IVAR____TtC18HealthExperienceUI32CollectionViewListDisclosureCell_item;
  swift_beginAccess();
  sub_1B9F63E74(v5, v1 + v3);
  swift_endAccess();
  sub_1BA27D72C();
  sub_1B9F43A50(v5, &qword_1EDC6E1A0, &qword_1EDC6E1B0);
  sub_1BA03D5DC();
  return sub_1B9F43A50(a1, &qword_1EDC6E1A0, &qword_1EDC6E1B0);
}

void (*sub_1BA03DB10(uint64_t *a1))(void *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  *a1 = v3;
  *(v3 + 32) = v1;
  *(v3 + 40) = sub_1BA27A5B4(v3);
  return sub_1BA03DB84;
}

void sub_1BA03DB84(void *a1, char a2)
{
  v3 = *a1;
  (*(*a1 + 40))(*a1, 0);
  if ((a2 & 1) == 0)
  {
    sub_1BA03D5DC();
  }

  free(v3);
}

void sub_1BA03DBE0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  sub_1BA001B68(0, &qword_1EDC6B780, MEMORY[0x1E69DBF38], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v28 - v7;
  v9 = sub_1BA4A3FD8();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1BA4A3F98();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA27B2E0(a1, a2);
  v17 = OBJC_IVAR____TtC18HealthExperienceUI32CollectionViewListDisclosureCell_item;
  swift_beginAccess();
  sub_1B9F68124(v3 + v17, v31);
  if (!v32)
  {
    sub_1B9F43A50(v31, &qword_1EDC6E1A0, &qword_1EDC6E1B0);
    v33 = 0u;
    v34 = 0u;
    v35 = 0;
    goto LABEL_8;
  }

  sub_1B9F0D950(0, &qword_1EDC6E1B0);
  sub_1B9F0D950(0, &unk_1EBBEA918);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v35 = 0;
    v33 = 0u;
    v34 = 0u;
    goto LABEL_8;
  }

  v18 = *(&v34 + 1);
  if (!*(&v34 + 1))
  {
LABEL_8:
    sub_1B9F43A50(&v33, &qword_1EBBEA910, &unk_1EBBEA918);
    return;
  }

  v30 = v14;
  v19 = v35;
  __swift_project_boxed_opaque_existential_1(&v33, *(&v34 + 1));
  v20 = (*(v19 + 32))(v18, v19);
  __swift_destroy_boxed_opaque_existential_1(&v33);
  if (v20)
  {
    v29 = [objc_allocWithZone(MEMORY[0x1E69DC638]) initWithFrame_];
    sub_1BA001B68(0, &qword_1EDC6B430, MEMORY[0x1E69DBF68], MEMORY[0x1E69E6F90]);
    v21 = *(sub_1BA4A3FE8() - 8);
    v28[1] = (*(v21 + 80) + 32) & ~*(v21 + 80);
    *(swift_allocObject() + 16) = xmmword_1BA4B5480;
    sub_1B9FD7EE0();
    v23 = &v12[*(v22 + 48)];
    v24 = *MEMORY[0x1E69DBF28];
    v25 = sub_1BA4A3F18();
    (*(*(v25 - 8) + 104))(v12, v24, v25);
    *v23 = sub_1B9FF87F0;
    v23[1] = 0;
    (*(v10 + 104))(v12, *MEMORY[0x1E69DBF60], v9);
    v26 = sub_1BA4A3F48();
    (*(*(v26 - 8) + 56))(v8, 1, 1, v26);
    v27 = v29;
    sub_1BA4A3F88();
    sub_1BA4A3EE8();
    (*(v30 + 8))(v16, v13);
    sub_1BA4A75F8();
    [v27 startAnimating];
  }
}

id ProfileButtonCell.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id ProfileButtonCell.init(frame:)(double a1, double a2, double a3, double a4)
{
  v10.receiver = v4;
  v10.super_class = type metadata accessor for ProfileButtonCell();
  return objc_msgSendSuper2(&v10, sel_initWithFrame_, a1, a2, a3, a4);
}

id ProfileButtonCell.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id ProfileButtonCell.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for ProfileButtonCell();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id ProfileButtonCell.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ProfileButtonCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1BA03E384()
{
  v0 = [objc_opt_self() systemBlueColor];

  return v0;
}

uint64_t static SectionedAdaptorCell<>.makeCellRegistration()(uint64_t a1, uint64_t a2)
{
  sub_1B9F0D950(255, &qword_1EDC6AD50);
  v4 = sub_1BA4A71D8();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  sub_1BA4A71C8();
  return sub_1BA4A3478();
}

uint64_t sub_1BA03E4D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_1BA4A3EA8();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F0A534(a3, v26);
  sub_1B9F0D950(0, &qword_1EDC6AD50);
  sub_1B9F0D950(0, &qword_1EDC6E1B0);
  if (swift_dynamicCast())
  {
    sub_1B9F25598(v24, v27);
    sub_1B9F0A534(v27, v26);
    (*(a5 + 16))(v26, a4, a5);
    return __swift_destroy_boxed_opaque_existential_1(v27);
  }

  else
  {
    v25 = 0;
    memset(v24, 0, sizeof(v24));
    sub_1B9F7B644(v24);
    sub_1BA4A3D88();
    sub_1B9F0A534(a3, v27);
    v13 = sub_1BA4A3E88();
    v14 = sub_1BA4A6FA8();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      *&v24[0] = v16;
      *v15 = 136315394;
      v17 = sub_1BA4A85D8();
      v19 = sub_1B9F0B82C(v17, v18, v24);

      *(v15 + 4) = v19;
      *(v15 + 12) = 2080;
      sub_1B9F0A534(v27, v26);
      v20 = sub_1BA4A6808();
      v22 = v21;
      __swift_destroy_boxed_opaque_existential_1(v27);
      v23 = sub_1B9F0B82C(v20, v22, v24);

      *(v15 + 14) = v23;
      _os_log_impl(&dword_1B9F07000, v13, v14, "[%s]: Cell registration using existing path but type does not conform to legacy protocol: %s", v15, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v16, -1, -1);
      MEMORY[0x1BFAF43A0](v15, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1(v27);
    }

    return (*(v9 + 8))(v11, v8);
  }
}

double sub_1BA03E804@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (*(a3 + 16) && (v6 = sub_1B9F24A34(a1, a2), (v7 & 1) != 0))
  {
    v8 = *(a3 + 56) + 48 * v6;
    v9 = *(v8 + 8);
    v10 = *(v8 + 32);
    v11 = *(v8 + 40);
    *a4 = *v8;
    *(a4 + 8) = v9;
    *(a4 + 16) = *(v8 + 16);
    *(a4 + 32) = v10;
    *(a4 + 40) = v11;
  }

  else
  {
    result = 0.0;
    *(a4 + 16) = 0u;
    *(a4 + 32) = 0u;
    *a4 = 0u;
  }

  return result;
}

void *sub_1BA03E8F0(void *a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4)
{
  if ((a2 & 0xC000000000000001) != 0)
  {
    v5 = a1;
    v6 = sub_1BA4A7FF8();

    if (v6)
    {
      sub_1B9F0ADF8(0, a4);
      swift_dynamicCast();
      return v13;
    }
  }

  else if (*(a2 + 16))
  {
    v9 = a3();
    if (v10)
    {
      v11 = *(*(a2 + 56) + 8 * v9);
      v12 = v11;
      return v11;
    }
  }

  return 0;
}

uint64_t FeedSection.typeGroup.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EDC6EA18 != -1)
  {
    swift_once();
  }

  v3 = off_1EDC6EA20;
  v4 = [v1 identifier];
  v5 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  v7 = v6;

  sub_1BA03E804(v5, v7, v3, a1);
}

id ShareFileActivityItemSource.init(data:filename:contentType:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v93 = a2;
  v96 = a1;
  v107 = *MEMORY[0x1E69E9840];
  ObjectType = swift_getObjectType();
  v98 = sub_1BA4A3EA8();
  v97 = *(v98 - 8);
  MEMORY[0x1EEE9AC00](v98);
  v9 = v88 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v88 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v90 = v88 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v89 = v88 - v16;
  v100 = sub_1BA4A15D8();
  v17 = *(v100 - 8);
  MEMORY[0x1EEE9AC00](v100);
  v95 = v88 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = v88 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v101 = v88 - v23;
  v103 = a3;
  v104 = a4;
  v94 = a5;
  v24 = sub_1BA4A3C68();
  if (v25)
  {
    v105 = 46;
    v106 = 0xE100000000000000;
    MEMORY[0x1BFAF1350](v24);

    v26 = v105;
    v27 = v106;
    if ((sub_1BA4A6998() & 1) == 0)
    {
      MEMORY[0x1BFAF1350](v26, v27);
    }
  }

  v88[3] = v9;
  v28 = objc_opt_self();
  v29 = [v28 defaultManager];
  v30 = [v29 temporaryDirectory];

  sub_1BA4A1588();
  sub_1BA4A1558();
  v31 = (v17 + 8);
  v32 = *(v17 + 8);
  v91 = v17;
  v33 = v100;
  v32(v21, v100);
  v34 = [v28 defaultManager];
  v35 = sub_1BA4A1548();
  v105 = 0;
  v36 = [v34 createDirectoryAtURL:v35 withIntermediateDirectories:1 attributes:0 error:&v105];

  if (v36)
  {
    v37 = v105;
    v38 = v95;
    sub_1BA4A1568();

    v39 = *(v91 + 16);
    v40 = v99;
    v91 = OBJC_IVAR____TtC18HealthExperienceUI27ShareFileActivityItemSource_fileURL;
    v39(&v99[OBJC_IVAR____TtC18HealthExperienceUI27ShareFileActivityItemSource_fileURL], v38, v33);
    sub_1BA4A1508();
    v41 = sub_1BA4A15B8();
    v43 = v42;
    v32(v21, v33);
    v44 = &v40[OBJC_IVAR____TtC18HealthExperienceUI27ShareFileActivityItemSource_filePath];
    *v44 = v41;
    v44[1] = v43;

    sub_1BA040384();
    v45 = v32;
    v90 = v31;

    v65 = v89;
    sub_1BA4A3E08();
    v66 = v40;
    v67 = sub_1BA4A3E88();
    v68 = sub_1BA4A6FC8();

    if (os_log_type_enabled(v67, v68))
    {
      v69 = v32;
      v70 = swift_slowAlloc();
      v71 = swift_slowAlloc();
      v105 = v71;
      *v70 = 136446466;
      v72 = sub_1BA4A85D8();
      v74 = sub_1B9F0B82C(v72, v73, &v105);

      *(v70 + 4) = v74;
      *(v70 + 12) = 2080;
      v75 = *v44;
      v76 = v44[1];

      v77 = sub_1B9F0B82C(v75, v76, &v105);

      *(v70 + 14) = v77;
      _os_log_impl(&dword_1B9F07000, v67, v68, "[%{public}s] Writing %s to disk", v70, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v71, -1, -1);
      v78 = v70;
      v45 = v69;
      MEMORY[0x1BFAF43A0](v78, -1, -1);

      (*(v97 + 8))(v89, v98);
    }

    else
    {

      (*(v97 + 8))(v65, v98);
    }

    v79 = v101;
    v80 = v93;
    v81 = v95;
    v82 = v96;
    sub_1BA4A1618();
    v83 = v100;
    v45(v81, v100);
    v45(v79, v83);
    v84 = type metadata accessor for ShareFileActivityItemSource();
    v102.receiver = v66;
    v102.super_class = v84;
    v85 = objc_msgSendSuper2(&v102, sel_init);
    sub_1B9F2BB4C(v82, v80);
    v86 = sub_1BA4A3C98();
    (*(*(v86 - 8) + 8))(v94, v86);
    return v85;
  }

  else
  {
    v46 = v33;
    v47 = v32;
    v48 = v105;

    v49 = sub_1BA4A1488();

    swift_willThrow();
    sub_1BA4A3E08();
    v50 = v49;
    v51 = sub_1BA4A3E88();
    v52 = sub_1BA4A6FA8();

    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v105 = v54;
      *v53 = 136446466;
      v55 = sub_1BA4A85D8();
      v57 = sub_1B9F0B82C(v55, v56, &v105);

      *(v53 + 4) = v57;
      *(v53 + 12) = 2080;
      swift_getErrorValue();
      v58 = sub_1BA4A8418();
      v60 = sub_1B9F0B82C(v58, v59, &v105);

      *(v53 + 14) = v60;
      _os_log_impl(&dword_1B9F07000, v51, v52, "[%{public}s] Error creating temporary directory with error: %s", v53, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v54, -1, -1);
      MEMORY[0x1BFAF43A0](v53, -1, -1);
      sub_1B9F2BB4C(v96, v93);

      v61 = sub_1BA4A3C98();
      (*(*(v61 - 8) + 8))(v94, v61);
      (*(v97 + 8))(v12, v98);
      v62 = v101;
      v63 = v100;
    }

    else
    {
      sub_1B9F2BB4C(v96, v93);

      v64 = sub_1BA4A3C98();
      (*(*(v64 - 8) + 8))(v94, v64);
      (*(v97 + 8))(v12, v98);
      v62 = v101;
      v63 = v46;
    }

    v47(v62, v63);
    type metadata accessor for ShareFileActivityItemSource();
    swift_deallocPartialClassInstance();
    return 0;
  }
}

uint64_t type metadata accessor for ShareFileActivityItemSource()
{
  result = qword_1EBBEA928;
  if (!qword_1EBBEA928)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id ShareFileActivityItemSource.__deallocating_deinit()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_1BA4A3EA8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v25 - v8;
  sub_1BA4A3E08();
  v10 = v1;
  v11 = sub_1BA4A3E88();
  v12 = sub_1BA4A6FC8();

  v13 = os_log_type_enabled(v11, v12);
  v25[4] = v4;
  v25[5] = v3;
  v25[2] = ObjectType;
  if (v13)
  {
    v14 = swift_slowAlloc();
    v25[3] = v6;
    v15 = v14;
    v16 = swift_slowAlloc();
    v26 = v16;
    *v15 = 136446466;
    v17 = sub_1BA4A85D8();
    v19 = sub_1B9F0B82C(v17, v18, &v26);

    *(v15 + 4) = v19;
    *(v15 + 12) = 2080;
    v20 = *&v10[OBJC_IVAR____TtC18HealthExperienceUI27ShareFileActivityItemSource_filePath];
    v21 = *&v10[OBJC_IVAR____TtC18HealthExperienceUI27ShareFileActivityItemSource_filePath + 8];

    v22 = sub_1B9F0B82C(v20, v21, &v26);

    *(v15 + 14) = v22;
    _os_log_impl(&dword_1B9F07000, v11, v12, "[%{public}s] Removing %s", v15, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1BFAF43A0](v16, -1, -1);
    MEMORY[0x1BFAF43A0](v15, -1, -1);
  }

  (*(v4 + 8))(v9, v3);

  sub_1BA040384();

  v23 = type metadata accessor for ShareFileActivityItemSource();
  v27.receiver = v10;
  v27.super_class = v23;
  return objc_msgSendSuper2(&v27, sel_dealloc);
}

uint64_t sub_1BA0400A4@<X0>(uint64_t *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI27ShareFileActivityItemSource_fileURL;
  v4 = sub_1BA4A15D8();
  a1[3] = v4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
  v6 = *(*(v4 - 8) + 16);

  return v6(boxed_opaque_existential_1, v1 + v3, v4);
}

id ShareFileActivityItemSource.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

void sub_1BA040384()
{
  v9[1] = *MEMORY[0x1E69E9840];
  v0 = objc_opt_self();
  v1 = [v0 defaultManager];
  v2 = sub_1BA4A6758();
  v3 = [v1 fileExistsAtPath_];

  if (v3)
  {
    v4 = [v0 defaultManager];
    v5 = sub_1BA4A6758();
    v9[0] = 0;
    v6 = [v4 removeItemAtPath:v5 error:v9];

    if (v6)
    {
      v7 = v9[0];
    }

    else
    {
      v8 = v9[0];
      sub_1BA4A1488();

      swift_willThrow();
    }
  }
}

uint64_t sub_1BA0404E0()
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

char *NoticesDataSource.__allocating_init(healthExperienceStore:associatedProfileIdentifier:)(void *a1, void *a2)
{
  v5 = objc_allocWithZone(v2);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v6 = sub_1BA4A1B68();
  v7 = sub_1BA4A7578();

  v8 = _s18HealthExperienceUI33FeedItemSuggestedActionDataSourceCyACSo26NSFetchedResultsControllerCy0A8Platform0dE0CGcfc_0(v7);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v8;
}

unint64_t sub_1BA0406A4@<X0>(uint64_t *a1@<X8>)
{
  a1[3] = &type metadata for EmptyHeaderItem;
  a1[4] = sub_1B9FDA1B0();
  *a1 = swift_allocObject();
  return EmptyHeaderItem.init()();
}

id NoticesDataSource.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NoticesDataSource();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1BA0407B0()
{
  if (qword_1EDC6D380 != -1)
  {
    swift_once();
  }

  v25[4] = xmmword_1EDC6D3C8;
  v25[5] = unk_1EDC6D3D8;
  v25[6] = xmmword_1EDC6D3E8;
  v25[7] = unk_1EDC6D3F8;
  v25[0] = xmmword_1EDC6D388;
  v25[1] = xmmword_1EDC6D398;
  v25[2] = xmmword_1EDC6D3A8;
  v25[3] = xmmword_1EDC6D3B8;
  v0 = xmmword_1EDC6D388;
  v24 = xmmword_1EDC6D3A8;
  v23 = xmmword_1EDC6D398;
  v1 = *(&xmmword_1EDC6D3A8 + 1);
  v2 = xmmword_1EDC6D3B8;
  v22 = qword_1EDC6D400;
  v20 = *&qword_1EDC6D3E0;
  v21 = *(&xmmword_1EDC6D3E8 + 8);
  v18 = *(&xmmword_1EDC6D3B8 + 8);
  v19 = *(&xmmword_1EDC6D3C8 + 8);
  if (*(&xmmword_1EDC6D3A8 + 1))
  {
    v3 = objc_opt_self();
    sub_1B9F1D9A4(v25, &v14);
    v4 = [v3 absoluteDimension_];

    v2 = v4;
  }

  else
  {
    sub_1B9F1D9A4(v25, &v14);
  }

  v5 = *(&v25[0] + 1);
  v6 = [objc_opt_self() estimatedDimension_];

  v11 = v23;
  *&v13[24] = v19;
  *&v13[40] = v20;
  *&v13[56] = v21;
  *&v10 = v0;
  *(&v10 + 1) = v6;
  *&v12 = v24;
  *(&v12 + 1) = v1;
  *v13 = v2;
  *&v13[72] = v22;
  *&v13[8] = v18;
  sub_1BA0117AC();
  *&v17[16] = *&v13[16];
  *&v17[32] = *&v13[32];
  *&v17[48] = *&v13[48];
  *&v17[64] = *&v13[64];
  v14 = v10;
  v15 = v11;
  v16 = v12;
  *v17 = *v13;
  sub_1B9F1D9A4(&v10, &v9);
  v7 = sub_1B9F293A8(&v14);
  *&v14 = v0;
  v15 = v23;
  *&v17[24] = v19;
  *&v17[40] = v20;
  *&v17[56] = v21;
  *(&v14 + 1) = v6;
  *&v16 = v24;
  *(&v16 + 1) = v1;
  *v17 = v2;
  *&v17[72] = v22;
  *&v17[8] = v18;
  sub_1B9F1DA58(&v14);
  return v7;
}

uint64_t sub_1BA040A54(void *a1, void *a2)
{
  v5 = *v2;
  v6 = sub_1BA041AC8(a1, a2, &unk_1F3801B58, sub_1BA0392BC);
  v8 = v7;
  v10 = v9;
  v52 = v11;
  if (!v6)
  {
    *&v61 = 0;
    v59 = 0u;
    v60 = 0u;
    goto LABEL_5;
  }

  ObjectType = swift_getObjectType();
  swift_unknownObjectRetain();
  SnapshotDataSource.firstItem.getter(ObjectType, v8, &v59);
  swift_unknownObjectRelease();
  if (!*(&v60 + 1))
  {
LABEL_5:
    v13 = 0;
    goto LABEL_6;
  }

  v13 = 1;
LABEL_6:
  sub_1B9F43AAC(&v59, &qword_1EDC6AD40, &qword_1EDC6AD50);
  v14 = swift_allocObject();
  swift_weakInit();
  sub_1B9F0A534(a2, &v59);
  v15 = swift_allocObject();
  *(v15 + 16) = v14;
  *(v15 + 24) = a1;
  sub_1B9F1134C(&v59, v15 + 32);
  *(v15 + 72) = v13;
  *(v15 + 80) = v5;
  sub_1BA043C5C(0);
  swift_allocObject();
  v16 = a1;

  v18 = sub_1BA271A84(v17, sub_1BA043C44, v15, 2);

  sub_1BA043DC8(0);
  v19 = swift_allocObject();
  v19[4] = v18;
  v19[5] = sub_1BA03721C;
  v19[6] = 0;
  v20 = *(v18 + OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_identifier);
  v21 = *(v18 + OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_identifier + 8);
  v19[2] = v20;
  v19[3] = v21;
  v22 = swift_allocObject();
  swift_weakInit();
  v23 = swift_allocObject();
  *(v23 + 16) = v22;
  *(v23 + 24) = v5;
  v24 = swift_allocObject();
  v24[2] = sub_1BA043E04;
  v24[3] = v23;
  v24[4] = v19;
  sub_1BA043AA4(0, &qword_1EBBEA9E0, sub_1BA043DC8, &protocol witness table for CellRegistering<A>, type metadata accessor for DataSourceWithLayout);
  v25 = swift_allocObject();
  *(v25 + 16) = v19;
  *(v25 + 24) = v20;
  *(v25 + 32) = v21;
  *(v25 + 40) = 0;
  *(v25 + 48) = sub_1BA043E48;
  *(v25 + 56) = v24;
  if (v6 && v10)
  {
    v26 = type metadata accessor for EmbeddedDataSourceCollectionViewCell();
    *&v59 = v26;
    sub_1BA038E58();
    swift_unknownObjectRetain();
    swift_bridgeObjectRetain_n();

    swift_unknownObjectRetain();

    v27 = sub_1BA4A6808();
    v29 = v28;
    v51 = v10;
    v31 = *(v25 + 24);
    v30 = *(v25 + 32);
    *&v59 = 0x6465646465626D45;
    *(&v59 + 1) = 0xE90000000000005FLL;

    MEMORY[0x1BFAF1350](v31, v30);

    v32 = v59;
    v33 = swift_allocObject();
    *(v33 + 16) = v25;
    *(v33 + 24) = &protocol witness table for DataSourceWithLayout<A>;
    v34 = swift_allocObject();
    *(v34 + 16) = sub_1BA038EA0;
    *(v34 + 24) = v33;
    v54 = v32;
    *&v55 = v27;
    *(&v55 + 1) = v29;
    *&v56 = v25;
    *(&v56 + 1) = &protocol witness table for DataSourceWithLayout<A>;
    *&v57 = sub_1BA043E74;
    *(&v57 + 1) = v34;
    v58 = 0;
    v35 = swift_allocObject();
    v35[2] = v6;
    v35[3] = v8;
    v35[4] = v51;
    v35[5] = v52;
    *&v59 = v26;
    swift_unknownObjectRetain_n();
    swift_unknownObjectRetain();
    v36 = sub_1BA4A6808();
    v38 = v37;
    v39 = swift_getObjectType();
    v40 = *(v8 + 8);
    swift_unknownObjectRetain();
    v41 = v40(v39, v8);
    *&v59 = 0x6465646465626D45;
    *(&v59 + 1) = 0xE90000000000005FLL;
    MEMORY[0x1BFAF1350](v41);
    swift_unknownObjectRelease();

    *&v60 = v36;
    *(&v60 + 1) = v38;
    *&v61 = v6;
    *(&v61 + 1) = v8;
    *&v62 = sub_1BA038EE0;
    *(&v62 + 1) = v35;
    v63 = 1;
    type metadata accessor for CollapsibleMultiColumnDataSource(0);
    sub_1B9F1C048(0, &qword_1EDC5DC50);
    v42 = swift_allocObject();
    v43 = v56;
    v44 = v57;
    v45 = v54;
    *(v42 + 48) = v55;
    *(v42 + 64) = v43;
    *(v42 + 80) = v44;
    *(v42 + 16) = xmmword_1BA4B5460;
    *(v42 + 32) = v45;
    v46 = v59;
    *(v42 + 120) = v60;
    v47 = v62;
    *(v42 + 136) = v61;
    *(v42 + 152) = v47;
    *(v42 + 96) = v58;
    *(v42 + 168) = v63;
    *(v42 + 104) = v46;
    sub_1BA038EEC(&v54, v53);
    sub_1BA038EEC(&v59, v53);
    v48 = sub_1BA49E264(v42);

    swift_unknownObjectRelease_n();
    swift_unknownObjectRelease_n();
    sub_1BA038F48(&v54);
    sub_1BA038F48(&v59);
  }

  else
  {
    type metadata accessor for MultiColumnDataSource(0);
    sub_1B9F1DEA0();
    v49 = swift_allocObject();
    *(v49 + 16) = xmmword_1BA4B5480;
    *(v49 + 32) = v25;
    *(v49 + 40) = &protocol witness table for DataSourceWithLayout<A>;
    swift_bridgeObjectRetain_n();

    v48 = MultiColumnDataSource.__allocating_init(_:)(v49);

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  return v48;
}

uint64_t sub_1BA0410CC(void *a1, void *a2)
{
  v5 = *v2;
  v6 = sub_1BA041AC8(a1, a2, &unk_1F3801C98, sub_1BA0448AC);
  v8 = v7;
  v10 = v9;
  v52 = v11;
  if (!v6)
  {
    *&v61 = 0;
    v59 = 0u;
    v60 = 0u;
    goto LABEL_5;
  }

  ObjectType = swift_getObjectType();
  swift_unknownObjectRetain();
  SnapshotDataSource.firstItem.getter(ObjectType, v8, &v59);
  swift_unknownObjectRelease();
  if (!*(&v60 + 1))
  {
LABEL_5:
    v13 = 0;
    goto LABEL_6;
  }

  v13 = 1;
LABEL_6:
  sub_1B9F43AAC(&v59, &qword_1EDC6AD40, &qword_1EDC6AD50);
  v14 = swift_allocObject();
  swift_weakInit();
  sub_1B9F0A534(a2, &v59);
  v15 = swift_allocObject();
  *(v15 + 16) = v14;
  *(v15 + 24) = a1;
  sub_1B9F1134C(&v59, v15 + 32);
  *(v15 + 72) = v13;
  *(v15 + 80) = v5;
  sub_1BA043EF8(0);
  swift_allocObject();
  v16 = a1;

  v18 = sub_1BA271A84(v17, sub_1BA043EC4, v15, 2);

  sub_1BA04401C(0);
  v19 = swift_allocObject();
  v19[4] = v18;
  v19[5] = sub_1BA03721C;
  v19[6] = 0;
  v20 = *(v18 + OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_identifier);
  v21 = *(v18 + OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_identifier + 8);
  v19[2] = v20;
  v19[3] = v21;
  v22 = swift_allocObject();
  swift_weakInit();
  v23 = swift_allocObject();
  *(v23 + 16) = v22;
  *(v23 + 24) = v5;
  v24 = swift_allocObject();
  v24[2] = sub_1BA044058;
  v24[3] = v23;
  v24[4] = v19;
  sub_1BA043AA4(0, &qword_1EBBEAA10, sub_1BA04401C, &protocol witness table for CellRegistering<A>, type metadata accessor for DataSourceWithLayout);
  v25 = swift_allocObject();
  *(v25 + 16) = v19;
  *(v25 + 24) = v20;
  *(v25 + 32) = v21;
  *(v25 + 40) = 0;
  *(v25 + 48) = sub_1BA0440DC;
  *(v25 + 56) = v24;
  if (v6 && v10)
  {
    v26 = type metadata accessor for EmbeddedDataSourceCollectionViewCell();
    *&v59 = v26;
    sub_1BA038E58();
    swift_unknownObjectRetain();
    swift_bridgeObjectRetain_n();

    swift_unknownObjectRetain();

    v27 = sub_1BA4A6808();
    v29 = v28;
    v51 = v10;
    v31 = *(v25 + 24);
    v30 = *(v25 + 32);
    *&v59 = 0x6465646465626D45;
    *(&v59 + 1) = 0xE90000000000005FLL;

    MEMORY[0x1BFAF1350](v31, v30);

    v32 = v59;
    v33 = swift_allocObject();
    *(v33 + 16) = v25;
    *(v33 + 24) = &protocol witness table for DataSourceWithLayout<A>;
    v34 = swift_allocObject();
    *(v34 + 16) = sub_1BA0448B4;
    *(v34 + 24) = v33;
    v54 = v32;
    *&v55 = v27;
    *(&v55 + 1) = v29;
    *&v56 = v25;
    *(&v56 + 1) = &protocol witness table for DataSourceWithLayout<A>;
    *&v57 = sub_1BA0448A8;
    *(&v57 + 1) = v34;
    v58 = 0;
    v35 = swift_allocObject();
    v35[2] = v6;
    v35[3] = v8;
    v35[4] = v51;
    v35[5] = v52;
    *&v59 = v26;
    swift_unknownObjectRetain_n();
    swift_unknownObjectRetain();
    v36 = sub_1BA4A6808();
    v38 = v37;
    v39 = swift_getObjectType();
    v40 = *(v8 + 8);
    swift_unknownObjectRetain();
    v41 = v40(v39, v8);
    *&v59 = 0x6465646465626D45;
    *(&v59 + 1) = 0xE90000000000005FLL;
    MEMORY[0x1BFAF1350](v41);
    swift_unknownObjectRelease();

    *&v60 = v36;
    *(&v60 + 1) = v38;
    *&v61 = v6;
    *(&v61 + 1) = v8;
    *&v62 = sub_1BA0448B0;
    *(&v62 + 1) = v35;
    v63 = 1;
    type metadata accessor for CollapsibleMultiColumnDataSource(0);
    sub_1B9F1C048(0, &qword_1EDC5DC50);
    v42 = swift_allocObject();
    v43 = v56;
    v44 = v57;
    v45 = v54;
    *(v42 + 48) = v55;
    *(v42 + 64) = v43;
    *(v42 + 80) = v44;
    *(v42 + 16) = xmmword_1BA4B5460;
    *(v42 + 32) = v45;
    v46 = v59;
    *(v42 + 120) = v60;
    v47 = v62;
    *(v42 + 136) = v61;
    *(v42 + 152) = v47;
    *(v42 + 96) = v58;
    *(v42 + 168) = v63;
    *(v42 + 104) = v46;
    sub_1BA038EEC(&v54, v53);
    sub_1BA038EEC(&v59, v53);
    v48 = sub_1BA49E264(v42);

    swift_unknownObjectRelease_n();
    swift_unknownObjectRelease_n();
    sub_1BA038F48(&v54);
    sub_1BA038F48(&v59);
  }

  else
  {
    type metadata accessor for MultiColumnDataSource(0);
    sub_1B9F1DEA0();
    v49 = swift_allocObject();
    *(v49 + 16) = xmmword_1BA4B5480;
    *(v49 + 32) = v25;
    *(v49 + 40) = &protocol witness table for DataSourceWithLayout<A>;
    swift_bridgeObjectRetain_n();

    v48 = MultiColumnDataSource.__allocating_init(_:)(v49);

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  return v48;
}

id sub_1BA04179C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void), void (*a6)(__int128 *__return_ptr))
{
  v9 = sub_1BA4A3EA8();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v24[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    a5();
    a6(&v25);

    if (*(&v26 + 1))
    {
      sub_1B9F1134C(&v25, &v33);
      v13 = *(&v34 + 1);
      v14 = v35;
      __swift_project_boxed_opaque_existential_1(&v33, *(&v34 + 1));
      v15 = (*(v14 + 32))(a2, v13, v14);

      __swift_destroy_boxed_opaque_existential_1(&v33);
      return v15;
    }

    sub_1B9F43AAC(&v25, &unk_1EBBEA890, qword_1EDC63A78);
  }

  sub_1BA4A3D88();
  v17 = sub_1BA4A3E88();
  v18 = sub_1BA4A6FA8();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    *&v33 = v20;
    *v19 = 136315138;
    v21 = sub_1BA4A85D8();
    v23 = sub_1B9F0B82C(v21, v22, &v33);

    *(v19 + 4) = v23;
    _os_log_impl(&dword_1B9F07000, v17, v18, "[%s] Could not find the header provider to create a profile header", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v20);
    MEMORY[0x1BFAF43A0](v20, -1, -1);
    MEMORY[0x1BFAF43A0](v19, -1, -1);
  }

  (*(v10 + 8))(v12, v9);
  if (qword_1EDC6D380 != -1)
  {
    swift_once();
  }

  v37 = xmmword_1EDC6D3C8;
  v38 = unk_1EDC6D3D8;
  v39 = xmmword_1EDC6D3E8;
  v40 = unk_1EDC6D3F8;
  v33 = xmmword_1EDC6D388;
  v34 = xmmword_1EDC6D398;
  v35 = xmmword_1EDC6D3A8;
  v36 = xmmword_1EDC6D3B8;
  sub_1BA0117AC();
  v29 = xmmword_1EDC6D3C8;
  v30 = unk_1EDC6D3D8;
  v31 = xmmword_1EDC6D3E8;
  v32 = unk_1EDC6D3F8;
  v25 = xmmword_1EDC6D388;
  v26 = xmmword_1EDC6D398;
  v27 = xmmword_1EDC6D3A8;
  v28 = xmmword_1EDC6D3B8;
  sub_1B9F1D9A4(&v33, v24);
  return sub_1B9F293A8(&v25);
}

uint64_t sub_1BA041AC8(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = v4;
  v9 = sub_1BA4A6F38();
  v10 = v9;
  v11 = sub_1BA4A1D78();
  v12 = sub_1BA4A1D68();

  if (v12)
  {
    v49 = a4;

    sub_1B9F0A534(a2, &v50);
    v13 = [a1 profileIdentifier];
    v14 = type metadata accessor for NoticesDataSource();
    objc_allocWithZone(v14);
    __swift_project_boxed_opaque_existential_1(&v50, v52);
    v15 = sub_1BA4A1B68();
    v16 = sub_1BA4A7578();

    v17 = _s18HealthExperienceUI33FeedItemSuggestedActionDataSourceCyACSo26NSFetchedResultsControllerCy0A8Platform0dE0CGcfc_0(v16);
    __swift_destroy_boxed_opaque_existential_1(&v50);
    sub_1B9F0A534(a2, &v50);
    v17;
    v18 = [a1 profileIdentifier];
    v19 = objc_allocWithZone(v14);
    __swift_project_boxed_opaque_existential_1(&v50, v52);
    v20 = sub_1BA4A1B68();
    v21 = sub_1BA4A7578();

    v22 = _s18HealthExperienceUI33FeedItemSuggestedActionDataSourceCyACSo26NSFetchedResultsControllerCy0A8Platform0dE0CGcfc_0(v21);
    __swift_destroy_boxed_opaque_existential_1(&v50);
  }

  else
  {
    if (!v9)
    {
      return 0;
    }

    v49 = a4;

    __swift_project_boxed_opaque_existential_1(a2, a2[3]);
    v23 = sub_1BA4A1B68();
    v24 = sub_1BA4A6F38();
    v25 = type metadata accessor for SharedProfileNoticesDataSource();
    v26 = objc_allocWithZone(v25);
    v27 = MEMORY[0x1E69E7CC0];
    v28 = sub_1BA26C5A4(v23, v24, MEMORY[0x1E69E7CC0]);
    __swift_project_boxed_opaque_existential_1(a2, a2[3]);
    v28;
    v29 = sub_1BA4A1B68();
    v30 = sub_1BA4A6F38();
    v31 = objc_allocWithZone(v25);
    v22 = sub_1BA26C5A4(v29, v30, v27);
  }

  ObjectType = swift_getObjectType();
  v33 = off_1F3800AF8;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v34 = v33();
  [v34 registerObserver_];

  v35 = SnapshotDataSource.numberOfSections.getter(ObjectType, &protocol witness table for FetchedResultsControllerDataSource<A>);
  swift_unknownObjectRelease();
  if (v35 >= 1)
  {
    v36 = v6 + qword_1EDC84CE8;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v37 = *(v36 + 8);
      v38 = swift_getObjectType();
      (*(v37 + 8))(v38, v37);
      swift_unknownObjectRelease();
    }
  }

  if (qword_1EBBE83F0 != -1)
  {
    swift_once();
  }

  v40 = qword_1EBBECB08;
  v39 = unk_1EBBECB10;
  v41 = qword_1EDC5E838;

  if (v41 != -1)
  {
    swift_once();
  }

  v43 = qword_1EDC5E840;
  v42 = *algn_1EDC5E848;
  v44 = swift_allocObject();
  *(v44 + 16) = a1;
  *&v50 = v40;
  *(&v50 + 1) = v39;
  v51 = v43;
  v52 = v42;
  v53 = v49;
  v54 = v44;

  v45 = a1;
  v46 = SnapshotDataSource.asCardStack(config:showAllDataSource:)(&v50, v22, &protocol witness table for FetchedResultsControllerDataSource<A>, ObjectType, &protocol witness table for FetchedResultsControllerDataSource<A>);
  swift_unknownObjectRelease_n();
  swift_unknownObjectRelease();
  v47 = v53;

  sub_1B9F0E310(v47);
  return v46;
}

void sub_1BA041FD4(uint64_t a1@<X0>, unint64_t *a2@<X1>, uint64_t (*a3)(uint64_t)@<X2>, uint64_t (*a4)(void, double)@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v29 = a5;
  v30 = a6;
  sub_1BA0437C4(0, a2, a3, MEMORY[0x1E69E6720]);
  v11 = MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v27 - v12;
  v14 = a4(0, v11);
  v31 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v28 = &v27 - v15;
  v32 = *(a1 + 16);
  if (v32)
  {
    v16 = 0;
    v33 = a1 + 32;
    v17 = (v31 + 56);
    while (1)
    {
      v18 = *(v33 + 48 * v16 + 16);
      v19 = *(v18 + 16);

      if (v19)
      {
        break;
      }

LABEL_3:
      ++v16;

      if (v16 == v32)
      {
        goto LABEL_11;
      }
    }

    v20 = 0;
    v21 = v18 + 32;
    while (v20 < *(v18 + 16))
    {
      sub_1B9F0A534(v21, &v34);
      sub_1B9F0D9AC(0, &qword_1EDC6AD50);
      if (swift_dynamicCast())
      {

        v22 = v31;
        (*(v31 + 56))(v13, 0, 1, v14);
        v23 = *(v22 + 32);
        v24 = v28;
        v23(v28, v13, v14);
        v35 = v14;
        v36 = v29;
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v34);
        v23(boxed_opaque_existential_1, v24, v14);
        sub_1B9F1134C(&v34, v30);
        return;
      }

      ++v20;
      (*v17)(v13, 1, 1, v14);
      sub_1BA04417C(v13, a2, a3);
      v21 += 40;
      if (v19 == v20)
      {
        goto LABEL_3;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_11:
    v26 = v30;
    *(v30 + 32) = 0;
    *v26 = 0u;
    v26[1] = 0u;
  }
}

char *sub_1BA042298(void *a1)
{
  v4[3] = &type metadata for DefaultCloudSyncStateStore;
  v4[4] = &protocol witness table for DefaultCloudSyncStateStore;
  v4[0] = [objc_opt_self() standardUserDefaults];
  v2 = objc_allocWithZone(type metadata accessor for CloudSyncStateObserver());
  return CloudSyncStateObserver.init(healthStore:store:)(a1, v4);
}

uint64_t (*static ProfileAllDataDataSource.cloudSyncStateObserverFactory.getter())()
{
  swift_beginAccess();
  v0 = off_1EE8F7660;

  return v0;
}

uint64_t static ProfileAllDataDataSource.cloudSyncStateObserverFactory.setter(uint64_t (*a1)(), uint64_t a2)
{
  swift_beginAccess();
  off_1EE8F7660 = a1;
  qword_1EE8F7668 = a2;
}

uint64_t sub_1BA04241C@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  v3 = off_1EE8F7660;
  v2 = qword_1EE8F7668;
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;
  *a1 = sub_1BA043A9C;
  a1[1] = v4;
}

uint64_t sub_1BA0424A0(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  swift_beginAccess();
  off_1EE8F7660 = sub_1BA043A94;
  qword_1EE8F7668 = v3;
}

uint64_t sub_1BA042530@<X0>(uint64_t a1@<X8>)
{
  v3 = MEMORY[0x1E69E6720];
  sub_1BA0437C4(0, &qword_1EBBEA950, sub_1BA043790, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v23 - v8;
  v10 = OBJC_IVAR____TtC18HealthExperienceUI24ProfileAllDataDataSource____lazy_storage___firstRestoreState;
  swift_beginAccess();
  sub_1BA04398C(v1 + v10, v9, &qword_1EBBEA950, sub_1BA043790, v3, sub_1BA0437C4);
  sub_1BA043790(0);
  v12 = v11;
  v13 = *(v11 - 8);
  if ((*(v13 + 48))(v9, 1, v11) != 1)
  {
    return (*(v13 + 32))(a1, v9, v12);
  }

  sub_1BA04417C(v9, &qword_1EBBEA950, sub_1BA043790);
  v14 = sub_1BA4A2D28();
  v15 = MEMORY[0x1BFAED490](a1, v14);
  v17 = v16;
  v18 = *(v1 + OBJC_IVAR____TtC18HealthExperienceUI24ProfileAllDataDataSource_cloudSyncStateObserver);
  v19 = *MEMORY[0x1E69E7D40] & *v18;
  v24 = a1;
  v20 = *(v19 + 160);

  v21 = v20(v15, v17);
  (*((*MEMORY[0x1E69E7D40] & *v18) + 0x118))(v21);

  (*(v13 + 16))(v6, v24, v12);
  (*(v13 + 56))(v6, 0, 1, v12);
  swift_beginAccess();
  sub_1BA043A00(v6, v1 + v10);
  return swift_endAccess();
}

uint64_t ProfileAllDataDataSource.__allocating_init(context:healthStore:healthExperienceStore:pinnedContentManager:)(void *a1, void *a2, void *a3, uint64_t a4)
{
  swift_allocObject();
  v8 = sub_1BA042DF0(a1, a2, a3, a4);

  return v8;
}

uint64_t ProfileAllDataDataSource.init(context:healthStore:healthExperienceStore:pinnedContentManager:)(void *a1, void *a2, void *a3, uint64_t a4)
{
  v5 = sub_1BA042DF0(a1, a2, a3, a4);

  return v5;
}

uint64_t sub_1BA0428F0(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1BA042950(a1);
  }

  return result;
}

void sub_1BA042950(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1BA4A2D28();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, a1, v4, v6);
  if (sub_1BA4A2D18())
  {
    sub_1BA1EC5C4(1);
    v9 = *(v2 + OBJC_IVAR____TtC18HealthExperienceUI24ProfileAllDataDataSource_allDataHideableDataSource);
    v10 = *(*v9 + 112);
    swift_beginAccess();
    v11 = *(v9 + v10);
    v12 = *(*v11 + 176);

    v14 = v12(v13);
    swift_beginAccess();
    v15 = v11[7];
    swift_beginAccess();
    v16 = v11[8];

    LOBYTE(v14) = (v14)(v15, v16);

    sub_1BA1EC7FC(v14 & 1);
    (*(v5 + 8))(v8, v4);
  }

  else
  {
    (*(v5 + 8))(v8, v4);
    sub_1BA1EC5C4(0);
    sub_1BA1EC7FC(1);
  }
}

uint64_t sub_1BA042BD0()
{

  sub_1BA04417C(v0 + OBJC_IVAR____TtC18HealthExperienceUI24ProfileAllDataDataSource____lazy_storage___firstRestoreState, &qword_1EBBEA950, sub_1BA043790);
}

uint64_t ProfileAllDataDataSource.deinit()
{

  v1 = OBJC_IVAR____TtC18HealthExperienceUI27CompoundSectionedDataSource_snapshot;
  sub_1B9F12538();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_1BA04417C(v0 + OBJC_IVAR____TtC18HealthExperienceUI24ProfileAllDataDataSource____lazy_storage___firstRestoreState, &qword_1EBBEA950, sub_1BA043790);

  return v0;
}

uint64_t ProfileAllDataDataSource.__deallocating_deinit()
{
  ProfileAllDataDataSource.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1BA042DF0(void *a1, void *a2, void *a3, uint64_t a4)
{
  v5 = v4;
  v90 = a4;
  sub_1BA043790(0);
  MEMORY[0x1EEE9AC00](v9);
  v86 = &v77 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v85 = &v77 - v13;
  v87 = v15;
  v88 = v14;
  (*(v15 + 56))(v5 + OBJC_IVAR____TtC18HealthExperienceUI24ProfileAllDataDataSource____lazy_storage___firstRestoreState, 1, 1, v12);
  v16 = a1;
  v17 = [a2 profileIdentifier];
  type metadata accessor for ProfileAvatarDataSource();
  swift_allocObject();
  v18 = ProfileAvatarDataSource.init(context:profileIdentifier:layoutConstructor:shouldDisplayName:)(v16, v17, sub_1BA03A208, 0, 1);
  v19 = OBJC_IVAR____TtC18HealthExperienceUI24ProfileAllDataDataSource_profileInformationDataSource;
  *(v5 + OBJC_IVAR____TtC18HealthExperienceUI24ProfileAllDataDataSource_profileInformationDataSource) = v18;
  swift_beginAccess();
  v20 = off_1EE8F7660;

  v21 = (v20)(a2);

  *(v5 + OBJC_IVAR____TtC18HealthExperienceUI24ProfileAllDataDataSource_cloudSyncStateObserver) = v21;
  sub_1BA0437C4(0, &qword_1EDC5DB98, sub_1B9F1ABA4, MEMORY[0x1E69E6F90]);
  v79 = v22;
  inited = swift_initStackObject();
  *(inited + 32) = 1;
  v89 = xmmword_1BA4B5460;
  *(inited + 16) = xmmword_1BA4B5460;
  *(inited + 40) = *(v5 + v19);
  *(inited + 48) = &protocol witness table for SingleUserDataDataSource<A>;
  *(inited + 56) = &protocol witness table for MutableArrayDataSource;
  *(inited + 64) = 2;
  swift_retain_n();
  v82 = a2;
  v92 = a3;
  v24 = sub_1BA040A54(a2, a3);
  v26 = v25;
  v28 = v27;

  *(inited + 72) = v24;
  *(inited + 80) = v26;
  *(inited + 88) = v28;
  v29 = sub_1B9F28D90(inited);
  swift_setDeallocating();
  sub_1B9F1ABA4();
  v81 = v30;
  swift_arrayDestroy();
  v91 = v5;
  v31 = *(v5 + v19);
  v80 = type metadata accessor for SizeClassResponsiveDataSource();
  swift_allocObject();

  v32 = sub_1B9F1D348(v29, v31, &protocol witness table for SingleUserDataDataSource<A>, &protocol witness table for MutableArrayDataSource);

  v33 = sub_1B9F1E00C(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v35 = *(v33 + 16);
  v34 = *(v33 + 24);
  if (v35 >= v34 >> 1)
  {
    v33 = sub_1B9F1E00C(v34 > 1, v35 + 1, 1, v33);
  }

  *(v33 + 16) = v35 + 1;
  v36 = v33 + 16 * v35;
  v84 = v32;
  *(v36 + 32) = v32;
  *(v36 + 40) = &protocol witness table for SizeClassResponsiveDataSource;
  v37 = sub_1BA020614();
  sub_1BA043AA4(0, &unk_1EBBEA980, type metadata accessor for MutableArrayDataSourceWithLayout, &protocol witness table for MutableArrayDataSource, type metadata accessor for HideableDataSource);
  swift_allocObject();
  v38 = sub_1BA2AE300(v37, 0);

  v39 = v92;
  v83 = OBJC_IVAR____TtC18HealthExperienceUI24ProfileAllDataDataSource_downloadingDataDataSource;
  *(v91 + OBJC_IVAR____TtC18HealthExperienceUI24ProfileAllDataDataSource_downloadingDataDataSource) = v38;
  sub_1B9F0A534(v39, v93);
  sub_1B9F1C048(0, &qword_1EDC6B450);
  v40 = swift_allocObject();
  *(v40 + 16) = xmmword_1BA4B5480;
  v41 = v82;
  *(v40 + 32) = [v41 profileIdentifier];
  v42 = objc_allocWithZone(type metadata accessor for PlatformAlertsDataSource());
  v43 = sub_1BA2DFC4C(v93, v40);

  v78 = v41;
  v44 = _s18HealthExperienceUI014ProfileAllDataF6SourceC014makeNavigationfG011healthStore0jbK020pinnedContentManagerAA0fG10WithLayoutCyAA05ArrayfG0CGSo08HKHealthK0C_0A8Platform0abK0_pAO06PinnedM8Managing_ptFZ_0(v41, v39, v90);
  v46 = *(v33 + 16);
  v45 = *(v33 + 24);
  if (v46 >= v45 >> 1)
  {
    v76 = v44;
    v33 = sub_1B9F1E00C(v45 > 1, v46 + 1, 1, v33);
    v44 = v76;
  }

  *(v33 + 16) = v46 + 1;
  v47 = v33 + 16 * v46;
  *(v47 + 32) = v44;
  *(v47 + 40) = &protocol witness table for DataSourceWithLayout<A>;
  sub_1BA043AA4(0, &qword_1EBBEA990, type metadata accessor for PlatformAlertsDataSource, &protocol witness table for FetchedResultsControllerDataSource<A>, type metadata accessor for HideableDataSource);
  swift_allocObject();
  v48 = v43;
  v49 = sub_1BA2AE320(v48, 1);
  v82 = v48;

  v50 = OBJC_IVAR____TtC18HealthExperienceUI24ProfileAllDataDataSource_alertsDataSource;
  v51 = v91;
  *(v91 + OBJC_IVAR____TtC18HealthExperienceUI24ProfileAllDataDataSource_alertsDataSource) = v49;
  v52 = swift_initStackObject();
  *(v52 + 16) = v89;
  *(v52 + 32) = 1;
  v53 = sub_1BA043B10();
  *(v52 + 40) = v49;
  *(v52 + 48) = v53;
  *(v52 + 56) = &protocol witness table for HideableDataSource<A>;
  *(v52 + 64) = 2;
  type metadata accessor for CompoundSectionedDataSource();
  swift_allocObject();

  *(v52 + 72) = CompoundSectionedDataSource.init(_:)(MEMORY[0x1E69E7CC0]);
  *(v52 + 80) = &protocol witness table for CompoundSectionedDataSource;
  *(v52 + 88) = &protocol witness table for CompoundSectionedDataSource;
  v54 = sub_1B9F28D90(v52);
  swift_setDeallocating();
  swift_arrayDestroy();
  v55 = *(v51 + v50);
  swift_allocObject();

  v56 = sub_1B9F1D348(v54, v55, v53, &protocol witness table for HideableDataSource<A>);

  v57 = *(v33 + 16);
  v58 = *(v33 + 24);

  if (v57 >= v58 >> 1)
  {
    v33 = sub_1B9F1E00C(v58 > 1, v57 + 1, 1, v33);
  }

  *(v33 + 16) = v57 + 1;
  v59 = v33 + 16 * v57;
  *(v59 + 32) = v56;
  *(v59 + 40) = &protocol witness table for SizeClassResponsiveDataSource;
  sub_1B9F0A534(v92, v93);
  v60 = v78;
  v81 = v56;
  v61 = v60;
  v62 = sub_1BA4A3BB8();
  type metadata accessor for SnippetAllDataDataSource(0);
  swift_allocObject();
  v63 = sub_1BA28ED0C(v61, v93, v62, MEMORY[0x1E69E7CC0]);

  type metadata accessor for NoDataDataSource();
  swift_allocObject();

  v64 = NoDataDataSource.init()();
  sub_1BA043BB8();
  swift_allocObject();
  v65 = sub_1BA063C54(v63, v64);

  sub_1BA043AA4(0, &qword_1EBBEA9A8, sub_1BA043BB8, &protocol witness table for PrimarySecondaryDataSource<A, B>, type metadata accessor for HideableDataSource);
  swift_allocObject();
  v66 = sub_1BA2AE338(v65, 1);

  v67 = v91;
  *(v91 + OBJC_IVAR____TtC18HealthExperienceUI24ProfileAllDataDataSource_allDataHideableDataSource) = v66;
  sub_1B9F1DEA0();
  v68 = swift_initStackObject();
  *(v68 + 16) = v89;
  *(v68 + 32) = *(v67 + v83);
  *(v68 + 40) = &protocol witness table for HideableDataSource<A>;
  *(v68 + 48) = v66;
  *(v68 + 56) = &protocol witness table for HideableDataSource<A>;
  v93[0] = v33;

  sub_1B9FE20B8(v68);
  v69 = CompoundSectionedDataSource.init(_:)(v93[0]);

  v70 = v86;
  sub_1BA042530(v86);
  v71 = [objc_opt_self() mainQueue];
  swift_allocObject();
  swift_weakInit();
  sub_1BA043D80(&qword_1EBBEA9B0, sub_1BA043790);
  v72 = v85;
  v73 = v88;
  sub_1BA4A2D38();

  __swift_destroy_boxed_opaque_existential_1(v90);
  __swift_destroy_boxed_opaque_existential_1(v92);
  v74 = *(v87 + 8);
  v74(v70, v73);
  v74(v72, v73);
  return v69;
}

void sub_1BA0437C4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t type metadata accessor for ProfileAllDataDataSource()
{
  result = qword_1EBBEA968;
  if (!qword_1EBBEA968)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BA04387C()
{
  sub_1BA0437C4(319, &qword_1EBBEA950, sub_1BA043790, MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1BA04398C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = a6(0, a3, a4, a5);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

uint64_t sub_1BA043A00(uint64_t a1, uint64_t a2)
{
  sub_1BA0437C4(0, &qword_1EBBEA950, sub_1BA043790, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_1BA043AA4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

unint64_t sub_1BA043B10()
{
  result = qword_1EBBEA998;
  if (!qword_1EBBEA998)
  {
    sub_1BA043AA4(255, &qword_1EBBEA990, type metadata accessor for PlatformAlertsDataSource, &protocol witness table for FetchedResultsControllerDataSource<A>, type metadata accessor for HideableDataSource);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEA998);
  }

  return result;
}

void sub_1BA043BB8()
{
  if (!qword_1EBBEA9A0)
  {
    type metadata accessor for SnippetAllDataDataSource(255);
    type metadata accessor for MutableArrayDataSourceWithLayout();
    v0 = type metadata accessor for PrimarySecondaryDataSource();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBBEA9A0);
    }
  }
}

void sub_1BA043C98()
{
  if (!qword_1EBBEA9C0)
  {
    sub_1BA4A2888();
    v0 = MEMORY[0x1E69A3108];
    sub_1BA043D80(&qword_1EBBEA9C8, MEMORY[0x1E69A3108]);
    sub_1BA043D80(&qword_1EBBEA9D0, v0);
    v1 = type metadata accessor for SingleUserDataDataSource();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBBEA9C0);
    }
  }
}

uint64_t sub_1BA043D80(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t objectdestroy_14Tm()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 88, 7);
}

void sub_1BA043F34()
{
  if (!qword_1EBBEA9F0)
  {
    sub_1BA4A33C8();
    v0 = MEMORY[0x1E69A3430];
    sub_1BA043D80(&qword_1EBBEA9F8, MEMORY[0x1E69A3430]);
    sub_1BA043D80(&qword_1EBBEAA00, v0);
    v1 = type metadata accessor for SingleUserDataDataSource();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBBEA9F0);
    }
  }
}

uint64_t objectdestroy_21Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t objectdestroy_30Tm_0()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1BA04417C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1BA0437C4(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1BA0441EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, void (*a7)(__int128 *__return_ptr, uint64_t))
{
  *&v53 = sub_1BA4A3EA8();
  v12 = *(v53 - 8);
  MEMORY[0x1EEE9AC00](v53);
  v14 = v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    a7(&v65, a1);

    if (*(&v66 + 1))
    {
      sub_1B9F1134C(&v65, v68);
      v15 = v69;
      v16 = v70;
      __swift_project_boxed_opaque_existential_1(v68, v69);
      (*(v16 + 16))(&v65, a3, a4, v15, v16);
      v17 = v69;
      v18 = v70;
      __swift_project_boxed_opaque_existential_1(v68, v69);
      (*(v18 + 8))(v64, a3, a4, v17, v18);
      v19 = v69;
      v20 = v70;
      __swift_project_boxed_opaque_existential_1(v68, v69);
      v21 = (*(v20 + 24))(a5 & 1, v19, v20);
      sub_1BA039238();
      inited = swift_initStackObject();
      v53 = xmmword_1BA4B5480;
      *(inited + 16) = xmmword_1BA4B5480;
      v23 = MEMORY[0x1E69A3348];
      sub_1BA04398C(&v65, inited + 32, &qword_1EDC6E1A0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348], sub_1B9F0CE40);
      v24 = swift_initStackObject();
      *(v24 + 16) = v53;
      sub_1BA04398C(v64, v24 + 32, &qword_1EDC6E1A0, &qword_1EDC6E1B0, v23, sub_1B9F0CE40);
      v63 = inited;
      sub_1B9FE21C4(v24);
      v25 = sub_1B9FE4FF4(v21);

      sub_1B9FE21C4(v25);
      v26 = *(v63 + 16);
      if (v26)
      {
        v52[1] = v63;
        v27 = v63 + 32;
        v28 = MEMORY[0x1E69E7CC0];
        v29 = MEMORY[0x1E69A3348];
        do
        {
          sub_1BA04398C(v27, &v59, &qword_1EDC6E1A0, &qword_1EDC6E1B0, v29, sub_1B9F0CE40);
          v54[0] = v59;
          v54[1] = v60;
          v55 = v61;
          if (*(&v60 + 1))
          {
            sub_1B9F1134C(v54, v56);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v62 = v28;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v28 = sub_1BA27EFB4(0, v28[2] + 1, 1, v28);
              v62 = v28;
            }

            v32 = v28[2];
            v31 = v28[3];
            if (v32 >= v31 >> 1)
            {
              v28 = sub_1BA27EFB4((v31 > 1), v32 + 1, 1, v28);
              v62 = v28;
            }

            v33 = v57;
            v34 = v58;
            v35 = __swift_mutable_project_boxed_opaque_existential_1(v56, v57);
            v36 = MEMORY[0x1EEE9AC00](v35);
            v38 = v52 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
            (*(v39 + 16))(v38, v36);
            sub_1B9F1C4F4(v32, v38, &v62, v33, v34);
            __swift_destroy_boxed_opaque_existential_1(v56);
            v29 = MEMORY[0x1E69A3348];
          }

          else
          {
            sub_1B9F43AAC(v54, &qword_1EDC6E1A0, &qword_1EDC6E1B0);
          }

          v27 += 40;
          --v26;
        }

        while (v26);
      }

      else
      {

        v28 = MEMORY[0x1E69E7CC0];
      }

      sub_1B9F1C048(0, &qword_1EDC5DC90);
      v48 = swift_allocObject();
      *(v48 + 16) = v53;
      v49 = sub_1B9FE4F98(v28);

      sub_1B9F1C5F0(MEMORY[0x1E69E7CC0]);
      *(v48 + 32) = 0;
      *(v48 + 40) = 0;
      *(v48 + 48) = v49;

      v51 = Array<A>.identifierToIndexDict()(v50);

      *(v48 + 56) = v51;
      *(v48 + 64) = 0xD000000000000014;
      *(v48 + 72) = 0x80000001BA4E5030;
      sub_1B9F43AAC(v64, &qword_1EDC6E1A0, &qword_1EDC6E1B0);
      sub_1B9F43AAC(&v65, &qword_1EDC6E1A0, &qword_1EDC6E1B0);
      __swift_destroy_boxed_opaque_existential_1(v68);
      return v48;
    }
  }

  else
  {
    v67 = 0;
    v65 = 0u;
    v66 = 0u;
  }

  sub_1B9F43AAC(&v65, &unk_1EBBEA890, qword_1EDC63A78);
  sub_1BA4A3D88();
  v40 = sub_1BA4A3E88();
  v41 = sub_1BA4A6FA8();
  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v68[0] = v43;
    *v42 = 136315138;
    v44 = sub_1BA4A85D8();
    v46 = sub_1B9F0B82C(v44, v45, v68);

    *(v42 + 4) = v46;
    _os_log_impl(&dword_1B9F07000, v40, v41, "[%s] Could not find the header provider to create a profile header", v42, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v43);
    MEMORY[0x1BFAF43A0](v43, -1, -1);
    MEMORY[0x1BFAF43A0](v42, -1, -1);
  }

  (*(v12 + 8))(v14, v53);
  return MEMORY[0x1E69E7CC0];
}

uint64_t sub_1BA0448D0(uint64_t a1, uint64_t *a2)
{
  v4 = sub_1BA4A3428();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA0449E0(a1, v6);
  v7 = *a2;
  v8 = OBJC_IVAR____TtC18HealthExperienceUI30SnapshotDataSourceItemSwizzler_cellResolution;
  swift_beginAccess();
  sub_1BA044AA4(v6, v7 + v8);
  return swift_endAccess();
}

uint64_t sub_1BA044988@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI30SnapshotDataSourceItemSwizzler_cellResolution;
  swift_beginAccess();
  return sub_1BA0449E0(v1 + v3, a1);
}

uint64_t sub_1BA0449E0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BA4A3428();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BA044A44(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI30SnapshotDataSourceItemSwizzler_cellResolution;
  swift_beginAccess();
  sub_1BA044AA4(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_1BA044AA4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BA4A3428();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BA044B68(uint64_t a1, uint64_t *a2)
{
  sub_1B9F0A534(a1, v6);
  v3 = *a2;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI30SnapshotDataSourceItemSwizzler_realSnapshotDataSourceItem;
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1(v3 + v4);
  sub_1B9F25598(v6, v3 + v4);
  return swift_endAccess();
}

uint64_t sub_1BA044BD4@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI30SnapshotDataSourceItemSwizzler_realSnapshotDataSourceItem;
  swift_beginAccess();
  return sub_1B9F0A534(v1 + v3, a1);
}

uint64_t sub_1BA044C2C(__int128 *a1)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI30SnapshotDataSourceItemSwizzler_realSnapshotDataSourceItem;
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1(v1 + v3);
  sub_1B9F25598(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t SnapshotDataSourceItemSwizzler.__allocating_init<A>(realSnapshotDataSourceItem:swizzledCellTypeClass:)(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = swift_allocObject();
  SnapshotDataSourceItemSwizzler.init<A>(realSnapshotDataSourceItem:swizzledCellTypeClass:)(a1, v6, a3);
  return v5;
}

uint64_t SnapshotDataSourceItemSwizzler.init<A>(realSnapshotDataSourceItem:swizzledCellTypeClass:)(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  sub_1B9F32244();
  v7 = sub_1BA4A71D8();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v8 = sub_1BA4A3488();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(swift_allocObject() + 16) = a3;
  sub_1BA4A71C8();
  sub_1BA4A3478();
  (*(v9 + 16))(v4 + OBJC_IVAR____TtC18HealthExperienceUI30SnapshotDataSourceItemSwizzler_cellResolution, v11, v8);
  sub_1BA4A3428();
  swift_storeEnumTagMultiPayload();
  sub_1B9F0A534(a1, v4 + OBJC_IVAR____TtC18HealthExperienceUI30SnapshotDataSourceItemSwizzler_realSnapshotDataSourceItem);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v12 = sub_1BA4A2D58();
  v14 = v13;
  (*(v9 + 8))(v11, v8);
  *(v4 + 16) = v12;
  *(v4 + 24) = v14;
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v4;
}

void sub_1BA044F48(void *a1, uint64_t a2, uint64_t a3)
{
  swift_getObjectType();
  v5 = swift_conformsToProtocol2();
  if (v5 && a1)
  {
    v6 = v5;
    sub_1B9F0A534(a3, v11);
    sub_1B9F32244();
    type metadata accessor for SnapshotDataSourceItemSwizzler();
    v7 = a1;
    if (swift_dynamicCast())
    {
      ObjectType = swift_getObjectType();
      v9 = OBJC_IVAR____TtC18HealthExperienceUI30SnapshotDataSourceItemSwizzler_realSnapshotDataSourceItem;
      swift_beginAccess();
      sub_1B9F0A534(v10 + v9, v11);
      (*(v6 + 16))(v11, ObjectType, v6);
    }
  }
}

uint64_t SnapshotDataSourceItemSwizzler.deinit()
{

  sub_1BA0450A0(v0 + OBJC_IVAR____TtC18HealthExperienceUI30SnapshotDataSourceItemSwizzler_cellResolution);
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC18HealthExperienceUI30SnapshotDataSourceItemSwizzler_realSnapshotDataSourceItem);
  return v0;
}

uint64_t sub_1BA0450A0(uint64_t a1)
{
  v2 = sub_1BA4A3428();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t SnapshotDataSourceItemSwizzler.__deallocating_deinit()
{

  sub_1BA0450A0(v0 + OBJC_IVAR____TtC18HealthExperienceUI30SnapshotDataSourceItemSwizzler_cellResolution);
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC18HealthExperienceUI30SnapshotDataSourceItemSwizzler_realSnapshotDataSourceItem);

  return swift_deallocClassInstance();
}

unint64_t sub_1BA045178(uint64_t a1)
{
  result = sub_1BA0451A0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1BA0451A0()
{
  result = qword_1EDC63588;
  if (!qword_1EDC63588)
  {
    type metadata accessor for SnapshotDataSourceItemSwizzler();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC63588);
  }

  return result;
}

uint64_t type metadata accessor for SnapshotDataSourceItemSwizzler()
{
  result = qword_1EDC63578;
  if (!qword_1EDC63578)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BA045244()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = *(v1 + 16);

  return v2;
}

uint64_t sub_1BA045294@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI30SnapshotDataSourceItemSwizzler_cellResolution;
  swift_beginAccess();
  return sub_1BA0449E0(v3 + v4, a1);
}

uint64_t sub_1BA04530C()
{
  result = sub_1BA4A3428();
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

unint64_t HKTAlertDetailFactory.AlertDetailFactoryFailure.localizedDescription.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  if (!*(v0 + 16))
  {
    sub_1BA4A7DF8();

    v6 = 0xD00000000000001DLL;
    v3 = v1;
    v4 = v2;
    goto LABEL_5;
  }

  if (*(v0 + 16) == 1)
  {
    sub_1BA4A7DF8();

    v6 = 0x20656C646E7542;
    MEMORY[0x1BFAF1350](v1, v2);
    v3 = 0xD000000000000029;
    v4 = 0x80000001BA4E5720;
LABEL_5:
    MEMORY[0x1BFAF1350](v3, v4);
    return v6;
  }

  return 0xD00000000000004BLL;
}

uint64_t get_enum_tag_for_layout_string_18HealthExperienceUI21HKTAlertDetailFactoryV05AlerteF7FailureO(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t sub_1BA045650(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 17))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1BA045698(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_1BA0456DC(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t sub_1BA045704(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_1BA4A3EA8();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA0459F0(a2, a3, v30);
  if (!v4)
  {
    v26 = v10;
    v13 = v31;
    v14 = v32;
    __swift_project_boxed_opaque_existential_1(v30, v31);
    v15 = (*(v14 + 8))(a1, a4, v13, v14);
    if (v15)
    {
      a4 = v15;
      __swift_destroy_boxed_opaque_existential_1(v30);
    }

    else
    {
      sub_1BA4A3E08();

      v17 = sub_1BA4A3E88();
      v18 = sub_1BA4A6FA8();

      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        v33 = v25;
        *v19 = 136315394;
        *(v19 + 4) = sub_1B9F0B82C(0xD000000000000015, 0x80000001BA4E57C0, &v33);
        *(v19 + 12) = 2082;
        v27 = a2;
        v28 = a3;
        v29 = 1;

        v20 = sub_1BA4A6808();
        v22 = sub_1B9F0B82C(v20, v21, &v33);

        *(v19 + 14) = v22;
        _os_log_impl(&dword_1B9F07000, v17, v18, "[%s]: %{public}s", v19, 0x16u);
        v23 = v25;
        swift_arrayDestroy();
        MEMORY[0x1BFAF43A0](v23, -1, -1);
        MEMORY[0x1BFAF43A0](v19, -1, -1);
      }

      (*(v26 + 8))(v12, v9);
      sub_1BA045D5C();
      a4 = swift_allocError();
      *v24 = a2;
      *(v24 + 8) = a3;
      *(v24 + 16) = 1;
      swift_willThrow();

      __swift_destroy_boxed_opaque_existential_1(v30);
    }
  }

  return a4;
}

uint64_t sub_1BA0459F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v28 = a3;
  v5 = sub_1BA4A3EA8();
  v26 = *(v5 - 8);
  v27 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1BA4A1B28();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA4A1B58();
  sub_1BA4A1B48();
  v12 = a1;
  v13 = v29;
  sub_1BA4A1B38();
  if (v13)
  {
  }

  v15 = sub_1BA4A1B18();
  (*(v9 + 8))(v11, v8);
  sub_1BA2FDD1C(&v30);

  if (v32)
  {
    return sub_1B9F1134C(&v30, v28);
  }

  sub_1BA045DB0(&v30);
  sub_1BA4A3E08();
  v16 = a2;

  v17 = sub_1BA4A3E88();
  v18 = sub_1BA4A6FA8();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v33 = v20;
    *v19 = 136315394;
    *(v19 + 4) = sub_1B9F0B82C(0xD000000000000015, 0x80000001BA4E57C0, &v33);
    *(v19 + 12) = 2082;
    *&v30 = v12;
    *(&v30 + 1) = v16;
    v31 = 0;

    v21 = sub_1BA4A6808();
    v23 = sub_1B9F0B82C(v21, v22, &v33);

    *(v19 + 14) = v23;
    _os_log_impl(&dword_1B9F07000, v17, v18, "[%s]: PluginDetailViewProviding Error: %{public}s", v19, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1BFAF43A0](v20, -1, -1);
    MEMORY[0x1BFAF43A0](v19, -1, -1);
  }

  (*(v26 + 8))(v7, v27);
  sub_1BA045D5C();
  swift_allocError();
  *v24 = v12;
  *(v24 + 8) = v16;
  *(v24 + 16) = 0;
  swift_willThrow();
}

unint64_t sub_1BA045D5C()
{
  result = qword_1EBBEAA18;
  if (!qword_1EBBEAA18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEAA18);
  }

  return result;
}

uint64_t sub_1BA045DB0(uint64_t a1)
{
  sub_1BA045E0C();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1BA045E0C()
{
  if (!qword_1EBBEAA20)
  {
    sub_1BA045E64();
    v0 = sub_1BA4A7AA8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBBEAA20);
    }
  }
}

unint64_t sub_1BA045E64()
{
  result = qword_1EBBEAA28;
  if (!qword_1EBBEAA28)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EBBEAA28);
  }

  return result;
}

uint64_t sub_1BA045EC8(uint64_t a1)
{
  sub_1BA047740(0, &qword_1EDC6E2A0, MEMORY[0x1E6968130], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v38 = v28 - v4;
  v5 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v5)
  {
    v28[1] = v1;
    v41 = MEMORY[0x1E69E7CC0];
    sub_1BA4A7F08();
    v7 = a1 + 56;
    v8 = sub_1BA4A7C48();
    v9 = *(a1 + 36);
    result = sub_1BA4A27B8();
    v36 = result;
    v10 = 0;
    v35 = *MEMORY[0x1E69A3B70];
    v29 = a1 + 64;
    v34 = xmmword_1BA4B5480;
    v33 = xmmword_1BA4B5460;
    v37 = a1;
    v31 = a1 + 56;
    v32 = v5;
    v30 = v9;
    while ((v8 & 0x8000000000000000) == 0 && v8 < 1 << *(a1 + 32))
    {
      v12 = v8 >> 6;
      if ((*(v7 + 8 * (v8 >> 6)) & (1 << v8)) == 0)
      {
        goto LABEL_21;
      }

      if (v9 != *(a1 + 36))
      {
        goto LABEL_22;
      }

      v39 = v10;
      v40 = *(*(a1 + 48) + 16 * v8);
      sub_1BA047740(0, &qword_1EDC6B460, MEMORY[0x1E69A3C08], MEMORY[0x1E69E6F90]);
      v13 = sub_1BA4A1C68();
      v14 = *(v13 - 8);
      v15 = (*(v14 + 80) + 32) & ~*(v14 + 80);
      v16 = swift_allocObject();
      *(v16 + 16) = v34;
      (*(v14 + 104))(v16 + v15, v35, v13);
      v17 = sub_1BA4A0FA8();
      v18 = v38;
      (*(*(v17 - 8) + 56))(v38, 1, 1, v17);
      sub_1B9F1C048(0, &qword_1EDC6B450);
      v19 = swift_allocObject();
      *(v19 + 16) = v33;

      *(v19 + 32) = sub_1BA4A1D78();
      *(v19 + 40) = 0;
      sub_1BA4A25F8();

      sub_1B9F1C1B0(v18);

      sub_1BA4A7ED8();
      sub_1BA4A7F18();
      a1 = v37;
      sub_1BA4A7F28();
      result = sub_1BA4A7EE8();
      v11 = 1 << *(a1 + 32);
      if (v8 >= v11)
      {
        goto LABEL_23;
      }

      v7 = v31;
      v20 = v32;
      v21 = *(v31 + 8 * v12);
      if ((v21 & (1 << v8)) == 0)
      {
        goto LABEL_24;
      }

      LODWORD(v9) = v30;
      if (v30 != *(a1 + 36))
      {
        goto LABEL_25;
      }

      v22 = v21 & (-2 << (v8 & 0x3F));
      if (v22)
      {
        v11 = __clz(__rbit64(v22)) | v8 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v23 = v12 << 6;
        v24 = v12 + 1;
        v25 = (v29 + 8 * v12);
        while (v24 < (v11 + 63) >> 6)
        {
          v27 = *v25++;
          v26 = v27;
          v23 += 64;
          ++v24;
          if (v27)
          {
            result = sub_1BA0477A4(v8, v30, 0);
            v11 = __clz(__rbit64(v26)) + v23;
            goto LABEL_4;
          }
        }

        result = sub_1BA0477A4(v8, v30, 0);
      }

LABEL_4:
      v10 = v39 + 1;
      v8 = v11;
      if (v39 + 1 == v20)
      {
        return v41;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_1BA046320(uint64_t a1)
{
  v2 = sub_1BA4A3EA8();
  v52 = *(v2 - 8);
  v53 = v2;
  MEMORY[0x1EEE9AC00](v2);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v51 - v4;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v51 - v7;
  v9 = sub_1BA4A33C8();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v51 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v51 - v17;
  sub_1B9F0A534(a1, v56);
  sub_1B9F0D950(0, &qword_1EDC6AD50);
  sub_1BA4A27B8();
  if (swift_dynamicCast())
  {
    v19 = v54[0];
    v20 = [v54[0] userData];
    if (v20)
    {
      v21 = v20;
      v51 = v19;
      v22 = sub_1BA4A1608();
      v24 = v23;

      sub_1BA4A3378();
      (*(v10 + 32))(v18, v15, v9);
      sub_1B9F28360();
      v48 = swift_allocObject();
      *(v48 + 16) = xmmword_1BA4B5480;
      (*(v10 + 16))(v12, v18, v9);
      *(v48 + 56) = type metadata accessor for NotificationSettingsSharingItem();
      *(v48 + 64) = sub_1BA0476F8(&qword_1EBBEAA48, type metadata accessor for NotificationSettingsSharingItem);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v48 + 32));
      sub_1BA0755A0(v12, boxed_opaque_existential_1);
      sub_1B9F2BB4C(v22, v24);

      (*(v10 + 8))(v18, v9);
      return v48;
    }

    sub_1BA4A3E28();
    sub_1B9F0A534(a1, v56);
    v36 = sub_1BA4A3E88();
    v37 = sub_1BA4A6FB8();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = v19;
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v54[0] = v40;
      *v39 = 136446466;
      v41 = sub_1BA4A85D8();
      v43 = sub_1B9F0B82C(v41, v42, v54);

      *(v39 + 4) = v43;
      *(v39 + 12) = 2082;
      __swift_project_boxed_opaque_existential_1(v56, v56[3]);
      v44 = sub_1BA4A2D58();
      v46 = v45;
      __swift_destroy_boxed_opaque_existential_1(v56);
      v47 = sub_1B9F0B82C(v44, v46, v54);

      *(v39 + 14) = v47;
      _os_log_impl(&dword_1B9F07000, v36, v37, "%{public}s Could not access feed item user data: %{public}s", v39, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v40, -1, -1);
      MEMORY[0x1BFAF43A0](v39, -1, -1);

      (*(v52 + 8))(v8, v53);
    }

    else
    {

      (*(v52 + 8))(v8, v53);
      __swift_destroy_boxed_opaque_existential_1(v56);
    }
  }

  else
  {
    sub_1BA4A3E28();
    sub_1B9F0A534(a1, v56);
    v25 = sub_1BA4A3E88();
    v26 = sub_1BA4A6FB8();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v55 = v28;
      *v27 = 136446466;
      v29 = sub_1BA4A85D8();
      v31 = sub_1B9F0B82C(v29, v30, &v55);

      *(v27 + 4) = v31;
      *(v27 + 12) = 2082;
      sub_1B9F0A534(v56, v54);
      v32 = sub_1BA4A6808();
      v34 = v33;
      __swift_destroy_boxed_opaque_existential_1(v56);
      v35 = sub_1B9F0B82C(v32, v34, &v55);

      *(v27 + 14) = v35;
      _os_log_impl(&dword_1B9F07000, v25, v26, "%{public}s: Incorrect view model; expected FeedItem, got: %{public}s", v27, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v28, -1, -1);
      MEMORY[0x1BFAF43A0](v27, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1(v56);
    }

    (*(v52 + 8))(v5, v53);
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t sub_1BA046B28()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_snapshot;
  sub_1B9F12538();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_1B9F18460(*(v0 + qword_1EDC64EB0), *(v0 + qword_1EDC64EB0 + 8), *(v0 + qword_1EDC64EB0 + 16));

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for NotificationSettingsSharingDataSource()
{
  result = qword_1EBBEAA30;
  if (!qword_1EBBEAA30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *sub_1BA046CBC(uint64_t a1)
{
  v2 = type metadata accessor for ListLayoutConfiguration();
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 8);
  if (qword_1EDC6CBB0 != -1)
  {
    v9 = v3;
    swift_once();
    v3 = v9;
  }

  __swift_project_value_buffer(v3, qword_1EDC6CBB8);
  ListLayoutConfiguration.withFooter.getter(v5);
  v7 = ListLayoutConfiguration.layout(for:)(v6);
  sub_1BA047354(v5);
  return v7;
}

void sub_1BA046DAC(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_1BA4A1798();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (_sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0() == a1 && v10 == a2)
  {

    goto LABEL_13;
  }

  v12 = sub_1BA4A8338();

  if (v12)
  {
LABEL_13:
    if (qword_1EDC5E100 != -1)
    {
      swift_once();
    }

    v16 = sub_1BA4A1318();
    v18 = v17;
    a3[3] = &type metadata for CollectionViewHeaderItem;
    a3[4] = sub_1BA0473B0();
    v19 = swift_allocObject();
    *a3 = v19;
    v44 = type metadata accessor for CollectionViewHeaderCell();
    sub_1BA047404(0, &qword_1EDC664A8, type metadata accessor for CollectionViewHeaderCell);
    *(v19 + 16) = sub_1BA4A6808();
    *(v19 + 24) = v20;
    *(v19 + 32) = v16;
    *(v19 + 40) = v18;
    *(v19 + 48) = sub_1BA047338;
    *(v19 + 56) = 0;
    *(v19 + 64) = 1;
    *(v19 + 72) = 1;
    *(v19 + 144) = 0;
    *(v19 + 80) = 0u;
    *(v19 + 96) = 0u;
    *(v19 + 112) = 0u;
    *(v19 + 121) = 0u;
    v44 = v16;
    v45 = v18;
    v43[2] = 32;
    v43[3] = 0xE100000000000000;
    v43[0] = 0;
    v43[1] = 0xE000000000000000;
    sub_1B9F252FC();
    v21 = sub_1BA4A7B58();
    v23 = v22;
    sub_1B9F1C048(0, &qword_1EDC6E330);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_1BA4B5480;
    *(v24 + 32) = v21;
    *(v24 + 40) = v23;

    v25 = sub_1BA4A6AE8();

    v26 = HKUIJoinStringsForAutomationIdentifier();

    if (v26)
    {

      v27 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      v29 = v28;

      *(v19 + 152) = v27;
      *(v19 + 160) = v29;
    }

    else
    {
      __break(1u);
    }

    return;
  }

  if (_sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0() == a1 && v13 == a2)
  {
  }

  else
  {
    v15 = sub_1BA4A8338();

    if ((v15 & 1) == 0)
    {
      a3[3] = &type metadata for EmptyHeaderItem;
      a3[4] = sub_1B9FDA1B0();
      *a3 = swift_allocObject();
      EmptyHeaderItem.init()();
      return;
    }
  }

  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  v30 = sub_1BA4A1318();
  v32 = v31;
  v44 = 0x74497265746F6F46;
  v45 = 0xEB000000005F6D65;
  sub_1BA4A1788();
  v33 = sub_1BA4A1748();
  v35 = v34;
  (*(v7 + 8))(v9, v6);
  MEMORY[0x1BFAF1350](v33, v35);

  v36 = v44;
  v37 = v45;
  v38 = type metadata accessor for CollectionViewGroupedFooterItem(0);
  a3[3] = v38;
  a3[4] = sub_1BA0476F8(&qword_1EDC63278, type metadata accessor for CollectionViewGroupedFooterItem);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a3);
  v44 = type metadata accessor for CollectionViewGroupedFooterCell();
  sub_1BA047404(0, qword_1EDC63330, type metadata accessor for CollectionViewGroupedFooterCell);
  *boxed_opaque_existential_1 = sub_1BA4A6808();
  boxed_opaque_existential_1[1] = v40;
  v41 = boxed_opaque_existential_1 + *(v38 + 32);
  *v41 = 0u;
  *(v41 + 1) = 0u;
  v41[32] = 1;
  v42 = (boxed_opaque_existential_1 + *(v38 + 28));
  *v42 = v30;
  v42[1] = v32;
  type metadata accessor for CollectionViewGroupedFooterItem.Content(0);
  swift_storeEnumTagMultiPayload();
  boxed_opaque_existential_1[2] = v36;
  boxed_opaque_existential_1[3] = v37;
  boxed_opaque_existential_1[4] = 0;
  boxed_opaque_existential_1[5] = 0;
}

uint64_t sub_1BA047354(uint64_t a1)
{
  v2 = type metadata accessor for ListLayoutConfiguration();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1BA0473B0()
{
  result = qword_1EBBEAA40;
  if (!qword_1EBBEAA40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEAA40);
  }

  return result;
}

uint64_t sub_1BA047404(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  result = *a2;
  if (!*a2)
  {
    a3(255);
    result = swift_getMetatypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_1BA047450()
{
  v1 = *v0;
  sub_1B9F1C048(0, &qword_1EDC6E330);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BA4B5460;
  *(inited + 32) = sub_1BA4A2128();
  *(inited + 40) = v3;
  *(inited + 48) = sub_1BA4A2148();
  *(inited + 56) = v4;
  v5 = sub_1B9F12EB8(inited);
  swift_setDeallocating();
  swift_arrayDestroy();
  sub_1BA045EC8(v5);

  sub_1B9F1BFFC();
  v6 = sub_1BA4A6AE8();

  v7 = [objc_opt_self() andPredicateWithSubpredicates_];

  sub_1B9F1C048(0, &qword_1EDC6B400);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1BA4B5470;
  v9 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  v10 = sub_1BA4A6758();
  v11 = [v9 initWithKey:v10 ascending:1 selector:sel_localizedStandardCompare_];

  *(v8 + 32) = v11;
  v12 = v7;
  v13 = sub_1BA4A7558();

  sub_1B9F126E0();
  v15 = objc_allocWithZone(v14);
  v16 = v13;
  v17 = _s18HealthExperienceUI33FeedItemSuggestedActionDataSourceCyACSo26NSFetchedResultsControllerCy0A8Platform0dE0CGcfc_0(v16);
  v18 = swift_allocObject();
  *(v18 + 16) = v1;
  v19 = sub_1B9F17A68(v17, sub_1BA0476D4, v18, 0);

  return v19;
}

uint64_t sub_1BA0476F8(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1BA047740(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1BA0477A4(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

id sub_1BA047800()
{
  v0 = [objc_opt_self() hk_appTintColor];

  return v0;
}

id TextCellItem.textColor.getter()
{
  v0 = [objc_opt_self() hk_appTintColor];

  return v0;
}

uint64_t CellItem.title.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_1BA047948()
{
  sub_1B9F12538();
  v2 = v1;
  v3 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v17[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v17[-v7];
  v9 = qword_1EBBEA528;
  swift_beginAccess();
  v10 = *&v0[v9];
  v11 = swift_allocObject();
  *(v11 + 16) = v0;
  *(v11 + 24) = 1;
  aBlock[4] = sub_1BA048764;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B9F8A254;
  aBlock[3] = &block_descriptor_10;
  v12 = _Block_copy(aBlock);
  v13 = v10;
  v14 = v0;

  [v13 notifyObservers_];
  _Block_release(v12);

  v15 = qword_1EDC84AC8;
  swift_beginAccess();
  (*(v3 + 16))(v5, &v14[v15], v2);
  sub_1B9F177C4(v8);
  (*(v3 + 8))(v5, v2);
  swift_beginAccess();
  (*(v3 + 40))(&v14[v15], v8, v2);
  return swift_endAccess();
}

id DataTypeDetailConfiguration.HideablePregnancyArticlesComponent.predicate.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v3;
  return v2;
}

__n128 DataTypeDetailConfiguration.HideablePregnancyArticlesComponent.init(predicate:maximumNumberOfArticles:header:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __n128 *a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *(a1 + 8);
  *a4 = *a1;
  *(a4 + 8) = v4;
  *(a4 + 16) = a2;
  result = *a3;
  *(a4 + 24) = *a3;
  return result;
}

void *DataTypeDetailConfiguration.HideablePregnancyArticlesComponent.makeDataSource(context:)(uint64_t a1)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = *(v1 + 24);
  v38 = *(v1 + 16);
  v6 = *(v1 + 32);
  __swift_project_boxed_opaque_existential_1(a1, *(a1 + 24));
  v7 = sub_1BA4A1B68();
  sub_1B9F1C048(0, &qword_1EDC6B450);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1BA4B5480;
  *(v8 + 32) = 0;
  if (*(a1 + 48) == 2)
  {
  }

  else
  {
    v9 = sub_1BA4A8338();

    if ((v9 & 1) == 0)
    {
      v10 = [*(a1 + 40) profileIdentifier];
      v12 = *(v8 + 16);
      v11 = *(v8 + 24);
      if (v12 >= v11 >> 1)
      {
        v37 = v10;
        v8 = sub_1BA27EFDC((v11 > 1), v12 + 1, 1, v8);
        v10 = v37;
      }

      *(v8 + 16) = v12 + 1;
      *(v8 + 8 * v12 + 32) = v10;
    }
  }

  v13 = *(a1 + 40);
  v14 = objc_allocWithZone(MEMORY[0x1E69A3B30]);
  v15 = v3;
  v16 = v7;
  sub_1BA048494(v5, v6);
  v17 = [v14 initWithHealthStore_];
  v18 = objc_allocWithZone(type metadata accessor for HideablePregnancyArticlesFRCDataSource());
  v19 = &v18[qword_1EBBED908];
  *v19 = 0;
  *(v19 + 1) = 0;
  *&v18[qword_1EBBED900] = v17;
  v20 = &v18[qword_1EBBED910];
  *v20 = v3;
  v20[8] = v4;
  *&v18[qword_1EBBED918] = v8;
  v21 = &v18[qword_1EBBED920];
  *v21 = 0;
  *(v21 + 1) = 0;
  v40 = v3;
  v41 = v4;
  v39[0] = v5;
  v39[1] = v6;
  v22 = v16;
  v23 = v15;

  v24 = ArticlesFetchedResultsControllerDataSource.init(managedObjectContext:sourceProfiles:predicate:header:)(v22, v8, &v40, v39);
  v25 = qword_1EBBED900;
  v26 = *&v24[qword_1EBBED900];
  v27 = v24;
  v28 = [v26 getCurrentPregnancyModel];
  v29 = v28;
  if (v28)
  {
    v30 = [v28 state];
  }

  else
  {
    v30 = 0;
  }

  v31 = *&v27[qword_1EBBED920];
  if (v31)
  {

    v32 = v31(v30, v29 == 0);
    sub_1B9F0E310(v31);
  }

  else
  {
    v32 = sub_1BA1BACA0(v30, v29 == 0);
  }

  v33 = qword_1EDC84AD8;
  swift_beginAccess();
  v34 = [*&v27[v33] fetchRequest];
  [v34 setPredicate_];

  sub_1B9F12964();
  sub_1BA047948();

  [*&v24[v25] registerObserver:v27 isUserInitiated:1];
  sub_1BA0484A8();
  swift_allocObject();
  v35 = sub_1BA048770(v27, v38);

  return v35;
}

uint64_t sub_1BA048048(uint64_t *a1)
{
  v3 = v1;
  sub_1B9F12538();
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v43 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v40 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v40 - v12;
  v14 = *(v1 + 32);
  v15 = *a1;
  swift_beginAccess();
  v44 = v6;
  v41 = *(v6 + 16);
  v42 = v6 + 16;
  v41(v13, v14 + v15, v5);
  sub_1BA4A45D8();
  sub_1BA4A4578();
  sub_1BA4A44C8();
  v16 = v13;

  v47 = sub_1BA4A4578();
  v17 = *(v47 + 16);
  result = swift_beginAccess();
  v46 = v17;
  if (v17)
  {
    v19 = 0;
    v20 = (v47 + 40);
    v45 = v5;
    while (v19 < *(v47 + 16))
    {
      v21 = *(v20 - 1);
      v22 = *v20;
      v48 = v21;
      v49 = v22;

      result = sub_1BA4A4528();
      v23 = *(v3 + 24);
      if ((v23 & 0x8000000000000000) != 0)
      {
        goto LABEL_20;
      }

      v24 = *(result + 16);
      if (v24 >= v23)
      {
        v25 = *(v3 + 24);
      }

      else
      {
        v25 = *(result + 16);
      }

      if (v23)
      {
        v26 = v25;
      }

      else
      {
        v26 = 0;
      }

      if (v24 != v26)
      {
        v27 = v16;
        v28 = v10;
        v29 = v3;
        if (v26)
        {
          sub_1B9F1C048(0, &qword_1EDC6E330);
          v30 = swift_allocObject();
          v31 = _swift_stdlib_malloc_size(v30);
          v32 = v31 - 32;
          if (v31 < 32)
          {
            v32 = v31 - 17;
          }

          v30[2] = v26;
          v30[3] = 2 * (v32 >> 4);
          swift_arrayInitWithCopy();
        }

        v3 = v29;
        v10 = v28;
        v16 = v27;
        v5 = v45;
      }

      ++v19;
      v48 = v21;
      v49 = v22;
      sub_1BA4A4448();

      v20 += 2;
      if (v46 == v19)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
  }

  else
  {
LABEL_18:

    v33 = sub_1BA4A45B8();
    v34 = v16;
    sub_1BA2A2800(v33, v10);

    sub_1BA4A4558();

    sub_1BA4A45A8();
    sub_1BA4A4518();

    v35 = sub_1BA4A4598();
    sub_1BA2A2800(v35, v10);

    sub_1BA4A4498();

    v36 = v44;
    v37 = *(v44 + 8);
    v37(v34, v5);
    v38 = v43;
    v41(v43, v10, v5);
    v39 = qword_1EDC84B68;
    swift_beginAccess();
    (*(v36 + 40))(v3 + v39, v38, v5);
    swift_endAccess();
    return (v37)(v10, v5);
  }

  return result;
}

uint64_t sub_1BA048494(uint64_t a1, unint64_t a2)
{
  if (a2 >= 2)
  {
  }

  return result;
}

void sub_1BA0484A8()
{
  if (!qword_1EDC63980)
  {
    type metadata accessor for HideablePregnancyArticlesFRCDataSource();
    v0 = type metadata accessor for DataSourceWithSectionItemLimit();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC63980);
    }
  }
}

void *sub_1BA048508(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  sub_1B9F15B38();
  v6 = sub_1BA4A7A78();
  v7 = objc_allocWithZone(MEMORY[0x1E696C4F8]);
  v8 = sub_1BA4A6758();
  v9 = [v7 initWithName:v8 loggingCategory:v6];

  v3[2] = v9;
  sub_1BA4A45D8();
  v3[3] = a2;
  v3[4] = a1;
  v10 = *(a1 + OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_identifier + 8);
  v3[5] = *(a1 + OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_identifier);
  v3[6] = v10;
  swift_beginAccess();
  v11 = *(a1 + 16);

  [v11 registerObserver_];
  sub_1BA048048(&OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_snapshot);
  return v3;
}

uint64_t get_enum_tag_for_layout_string_18HealthExperienceUI42ArticlesFetchedResultsControllerDataSourceC6HeaderO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1BA0486A0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFFD && *(a1 + 40))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 32);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 2;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1BA0486FC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 2147483646;
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2 + 1;
    }
  }

  return result;
}

void *sub_1BA048770(char *a1, uint64_t a2)
{
  v3 = v2;
  sub_1B9F15B38();
  v6 = sub_1BA4A7A78();
  v7 = objc_allocWithZone(MEMORY[0x1E696C4F8]);
  v8 = sub_1BA4A6758();
  v9 = [v7 initWithName:v8 loggingCategory:v6];

  v3[2] = v9;
  sub_1BA4A45D8();
  v3[3] = a2;
  v3[4] = a1;
  v10 = *&a1[qword_1EDC84AD0 + 8];
  v3[5] = *&a1[qword_1EDC84AD0];
  v3[6] = v10;
  v11 = qword_1EBBEA528;
  swift_beginAccess();
  v12 = *&a1[v11];
  v13 = a1;

  [v12 registerObserver_];
  sub_1BA048048(&qword_1EDC84AC8);
  return v3;
}

id OBWelcomeController.hxui_addContinueButton(accessibilityIdentifier:)(uint64_t a1, void *a2)
{
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  sub_1BA4A1318();
  v4 = sub_1BA4A6758();

  if (a2)
  {
    a2 = sub_1BA4A6758();
  }

  v5 = [v2 hxui:v4 addPrimaryFooterButtonWithTitle:a2 accessibilityIdentifier:0xE000000000000000];

  return v5;
}

id sub_1BA048A28(void *a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v7 = a1;
  v8 = OBWelcomeController.hxui_addContinueButton(accessibilityIdentifier:)(v4, v6);

  return v8;
}

id sub_1BA048ABC(uint64_t a1, void *a2)
{
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  sub_1BA4A1318();
  v4 = sub_1BA4A6758();

  if (a2)
  {
    a2 = sub_1BA4A6758();
  }

  v5 = [v2 hxui:v4 addPrimaryFooterButtonWithTitle:a2 accessibilityIdentifier:0xE000000000000000];

  return v5;
}

id sub_1BA048BD4(void *a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = qword_1EDC5E100;
  v7 = a1;
  if (v6 != -1)
  {
    swift_once();
  }

  sub_1BA4A1318();
  v8 = sub_1BA4A6758();

  if (v5)
  {
    v9 = sub_1BA4A6758();
  }

  else
  {
    v9 = 0;
  }

  v10 = [v7 hxui:v8 addPrimaryFooterButtonWithTitle:v9 accessibilityIdentifier:0xE000000000000000];

  return v10;
}

id OBWelcomeController.hxui_addSkipButton(accessibilityIdentifier:)(uint64_t a1, void *a2)
{
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  sub_1BA4A1318();
  v4 = sub_1BA4A6758();

  if (a2)
  {
    a2 = sub_1BA4A6758();
  }

  v5 = [v2 hxui:v4 addSecondaryFooterButtonWithTitle:0 bold:a2 accessibilityIdentifier:0xE000000000000000];

  return v5;
}

id sub_1BA048E30(void *a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = qword_1EDC5E100;
  v7 = a1;
  if (v6 != -1)
  {
    swift_once();
  }

  sub_1BA4A1318();
  v8 = sub_1BA4A6758();

  if (v5)
  {
    v9 = sub_1BA4A6758();
  }

  else
  {
    v9 = 0;
  }

  v10 = [v7 hxui:v8 addSecondaryFooterButtonWithTitle:0 bold:v9 accessibilityIdentifier:0xE000000000000000];

  return v10;
}

id OBWelcomeController.hxui_addPrimaryFooterButton(title:accessibilityIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = [objc_opt_self() boldButton];
  [v6 addTarget:v4 action:sel_hxui_primaryFooterButtonTapped forControlEvents:64];
  v7 = sub_1BA4A6758();
  [v6 setTitle:v7 forState:0];

  v8 = v6;
  if (a4)
  {
    a4 = sub_1BA4A6758();
  }

  [v6 setAccessibilityIdentifier_];

  v9 = [v4 buttonTray];
  [v9 addButton_];

  return v6;
}

id sub_1BA0490F0(uint64_t a1, uint64_t a2, char a3, uint64_t a4, void *a5, void *a6)
{
  if (a3)
  {
    v9 = &selRef_boldButton;
  }

  else
  {
    v9 = &selRef_linkButton;
  }

  v10 = [objc_opt_self() *v9];
  [v10 addTarget:v6 action:*a6 forControlEvents:64];
  v11 = sub_1BA4A6758();
  [v10 setTitle:v11 forState:0];

  v12 = v10;
  if (a5)
  {
    a5 = sub_1BA4A6758();
  }

  [v10 setAccessibilityIdentifier_];

  v13 = [v6 buttonTray];
  [v13 addButton_];

  return v10;
}

id sub_1BA04924C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v10 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  v12 = v11;
  if (a5)
  {
    v13 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    a5 = v14;
  }

  else
  {
    v13 = 0;
  }

  v15 = a1;
  v16 = a6(v10, v12, a4, v13, a5);

  return v16;
}

UIBarButtonItem __swiftcall OBWelcomeController.hxui_addCancelButton()()
{
  v1 = [objc_allocWithZone(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:1 target:v0 action:sel_hxui_cancelButtonTapped];
  v2 = [v0 navigationItem];
  [v2 setRightBarButtonItem_];

  return v1;
}

id sub_1BA049398(void *a1)
{
  v2 = objc_allocWithZone(MEMORY[0x1E69DC708]);
  v3 = a1;
  v4 = [v2 initWithBarButtonSystemItem:1 target:v3 action:sel_hxui_cancelButtonTapped];
  v5 = [v3 navigationItem];
  [v5 setRightBarButtonItem_];

  return v4;
}

id OBWelcomeController.hxui_addHeaderAccessoryButton(text:accessibilityIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = [objc_opt_self() accessoryButton];
  v7 = sub_1BA4A6758();
  [v6 setTitle:v7 forState:0];

  v8 = [v6 titleLabel];
  if (v8)
  {
    [v8 setNumberOfLines_];
  }

  v9 = v6;
  if (a4)
  {
    a4 = sub_1BA4A6758();
  }

  [v6 setAccessibilityIdentifier_];

  [v6 addTarget:v4 action:sel_hxui_headerAccessoryButtonTapped forControlEvents:64];
  v10 = [v4 headerView];
  [v10 addAccessoryButton_];

  return v6;
}

id sub_1BA0495C4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v8 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  v10 = v9;
  if (a4)
  {
    v11 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    a4 = v12;
  }

  else
  {
    v11 = 0;
  }

  v13 = a1;
  v14 = a5(v8, v10, v11, a4);

  return v14;
}

void OBWelcomeController.hxui_addCustomImageIconView(imageView:accessibilityIdentifier:height:)(void *a1, double a2, uint64_t a3, void *a4)
{
  ObjectType = swift_getObjectType();
  v8 = sub_1BA4A3EA8();
  v47 = *(v8 - 8);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &ObjectType - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  [a1 setTranslatesAutoresizingMaskIntoConstraints_];
  v12 = [v4 headerView];
  v13 = [v12 customIconContainerView];

  [v13 addSubview_];
  v14 = [v4 headerView];
  v15 = [v14 customIconContainerView];

  if (v15)
  {
    if (a4)
    {
      a4 = sub_1BA4A6758();
    }

    [v15 setAccessibilityIdentifier_];
  }

  v16 = [v4 headerView];
  v17 = [v16 customIconContainerView];

  if (v17)
  {
    v18 = [a1 leadingAnchor];
    v19 = [v17 leadingAnchor];
    v20 = [v18 constraintEqualToAnchor_];

    LODWORD(v21) = 1132068864;
    [v20 setPriority_];
    v22 = [a1 trailingAnchor];
    v23 = [v17 trailingAnchor];
    v24 = [v22 &selRef:v23 numberWithInteger:? + 5];

    LODWORD(v25) = 1132068864;
    [v24 setPriority_];
    v26 = objc_opt_self();
    sub_1B9F109F8();
    v27 = swift_allocObject();
    *(v27 + 16) = xmmword_1BA4B5880;
    v28 = [a1 centerXAnchor];
    v29 = [v17 centerXAnchor];
    v30 = [v28 &selRef:v29 numberWithInteger:? + 5];

    *(v27 + 32) = v30;
    v31 = [a1 centerYAnchor];
    v32 = [v17 centerYAnchor];
    v33 = [v31 &selRef:v32 numberWithInteger:? + 5];

    *(v27 + 40) = v33;
    v34 = [a1 heightAnchor];
    v35 = [v34 constraintEqualToConstant_];

    *(v27 + 48) = v35;
    *(v27 + 56) = v20;
    *(v27 + 64) = v24;
    sub_1B9F0ADF8(0, &qword_1EDC6B570);
    v36 = v20;
    v37 = v24;
    v47 = sub_1BA4A6AE8();

    [v26 activateConstraints_];

    v38 = v47;
  }

  else
  {
    sub_1BA4A3DD8();
    v39 = sub_1BA4A3E88();
    v40 = sub_1BA4A6FA8();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v48[0] = v42;
      *v41 = 136315138;
      v48[1] = ObjectType;
      swift_getMetatypeMetadata();
      v43 = sub_1BA4A6808();
      v45 = sub_1B9F0B82C(v43, v44, v48);

      *(v41 + 4) = v45;
      _os_log_impl(&dword_1B9F07000, v39, v40, "%s: unable to access the header view's custom icon container view. This view is lazy loaded, so please call on viewDidLoad, and make sure you aren't setting a symbol or image on the HeaderView that will also cause it to be nil", v41, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v42);
      MEMORY[0x1BFAF43A0](v42, -1, -1);
      MEMORY[0x1BFAF43A0](v41, -1, -1);
    }

    (*(v47 + 8))(v11, v8);
  }
}

uint64_t sub_1BA049C10(void *a1, double a2, uint64_t a3, void *a4, uint64_t a5)
{
  if (a5)
  {
    v8 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    v10 = v9;
  }

  else
  {
    v8 = 0;
    v10 = 0;
  }

  v11 = a4;
  v12 = a1;
  OBWelcomeController.hxui_addCustomImageIconView(imageView:accessibilityIdentifier:height:)(v11, a2, v8, v10);
}

Swift::Void __swiftcall OBWelcomeController.removeOBContentViewHeightConstraints()()
{
  v1 = [v0 contentView];
  v2 = [v1 constraints];

  sub_1B9F0ADF8(0, &qword_1EDC6B570);
  v3 = sub_1BA4A6B08();

  if (v3 >> 62)
  {
    v4 = sub_1BA4A7CC8();
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_18:

    return;
  }

  v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v4)
  {
    goto LABEL_18;
  }

LABEL_3:
  if (v4 >= 1)
  {
    v5 = 0;
    while (1)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x1BFAF2860](v5, v3);
      }

      else
      {
        v6 = *(v3 + 8 * v5 + 32);
      }

      v7 = v6;
      if ([v6 firstItem])
      {
        objc_opt_self();
        if (!swift_dynamicCastObjCClass())
        {

          swift_unknownObjectRelease();
          goto LABEL_7;
        }

        sub_1B9F0ADF8(0, &qword_1EDC6E350);
        v8 = [v10 contentView];
        v9 = sub_1BA4A7798();

        if ((v9 & 1) != 0 && [v7 firstAttribute] == 8)
        {
          [v7 setActive_];
        }

        swift_unknownObjectRelease();
      }

LABEL_7:
      if (v4 == ++v5)
      {
        goto LABEL_18;
      }
    }
  }

  __break(1u);
}

uint64_t sub_1BA049F1C(void *a1)
{
  v2 = sub_1BA4A1728();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = a1[3];
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v6);
  (*(v7 + 24))(v6, v7);
  v8 = sub_1BA4A16B8();
  (*(v3 + 8))(v5, v2);
  v9 = HKLocalizedStringForDateAndTemplate();

  if (!v9)
  {
    return 0;
  }

  v10 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();

  return v10;
}

id sub_1BA04A074(void *a1)
{
  v2 = sub_1BA4A1728();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [objc_opt_self() hk_mediumMonthDayDateIntervalFormatter];
  if (result)
  {
    v7 = result;
    v8 = a1[3];
    v9 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v8);
    (*(v9 + 16))(v8, v9);
    v10 = sub_1BA4A16B8();
    v11 = *(v3 + 8);
    v11(v5, v2);
    v12 = a1[3];
    v13 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v12);
    (*(v13 + 24))(v12, v13);
    v14 = sub_1BA4A16B8();
    v11(v5, v2);
    v15 = [v7 stringFromDate:v10 toDate:v14];

    v16 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    return v16;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BA04A254(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v1);
  v3 = (*(v2 + 32))(v1, v2);
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  if (!*(v4 + 16))
  {

    goto LABEL_8;
  }

  v7 = sub_1B9F24A34(v5, v6);
  v9 = v8;

  if ((v9 & 1) == 0)
  {
LABEL_8:

    return 0;
  }

  sub_1B9F0AD9C(*(v4 + 56) + 32 * v7, v16);

  if (swift_dynamicCast())
  {
    v10 = sub_1BA4A6758();
    v11 = HKUILocalizedString();

    v12 = sub_1BA4A6758();

    v13 = HKFormatValueAndUnit();

    if (v13)
    {
      v14 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();

      return v14;
    }
  }

  return 0;
}

void *sub_1BA04A3E0(void *a1)
{
  v2 = a1[3];
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v2);
  v4 = (*(v3 + 40))(v2, v3);
  if ((v5 & 1) == 0)
  {
    v6 = v4;
    v7 = a1[3];
    v8 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v7);
    result = (*(v8 + 8))(v7, v8);
    if (!result)
    {
      return result;
    }

    v10 = result;
    if ([result code] == 250)
    {
      v11 = [objc_opt_self() localizedTitleForWalkingSteadinessEventCategoryValue_];
      v12 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();

      return v12;
    }
  }

  return 0;
}

uint64_t PDFFloatingImage.Corner.hashValue.getter()
{
  v1 = *v0;
  sub_1BA4A8488();
  MEMORY[0x1BFAF2ED0](v1);
  return sub_1BA4A84D8();
}

uint64_t PDFFloatingImage.init(image:pinnedCorner:verticalSpacing:horizontalSpacing:)@<X0>(uint64_t result@<X0>, char *a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  v5 = *a2;
  *(a3 + 8) = result;
  *a3 = v5;
  *(a3 + 16) = a4;
  *(a3 + 24) = a5;
  return result;
}

id sub_1BA04A5E4(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 1);
  v4 = *(v1 + 2);
  v5 = *(v1 + 3);
  if (*(a1 + 96) != 1)
  {
    v7 = *(a1 + 32);
    v6 = *(a1 + 40);
    v9 = *(a1 + 48);
    v8 = *(a1 + 56);
    [v3 size];
    v12 = v15;
    if (v2 <= 1)
    {
      if (!v2)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }

    v17 = v14;
    if (v2 == 2)
    {
      goto LABEL_10;
    }

LABEL_12:
    v27.origin.x = v7;
    v27.origin.y = v6;
    v27.size.width = v9;
    v27.size.height = v8;
    MinX = CGRectGetMinX(v27);
    goto LABEL_13;
  }

  v5 = -v5;
  v7 = *(a1 + 32);
  v6 = *(a1 + 40);
  v9 = *(a1 + 48);
  v8 = *(a1 + 56);
  [v3 size];
  v12 = v11;
  if (v2 <= 1)
  {
    if (v2)
    {
LABEL_4:
      v23.origin.x = v7;
      v23.origin.y = v6;
      v23.size.width = v9;
      v23.size.height = v8;
      MinX = CGRectGetMinX(v23);
LABEL_8:
      v25.origin.x = v7;
      v25.origin.y = v6;
      v25.size.width = v9;
      v25.size.height = v8;
      MinY = CGRectGetMinY(v25);
      goto LABEL_14;
    }

LABEL_7:
    v24.origin.x = v7;
    v24.origin.y = v6;
    v24.size.width = v9;
    v24.size.height = v8;
    MinX = CGRectGetMaxX(v24) - v12;
    goto LABEL_8;
  }

  v17 = v10;
  if (v2 == 2)
  {
    goto LABEL_12;
  }

LABEL_10:
  v26.origin.x = v7;
  v26.origin.y = v6;
  v26.size.width = v9;
  v26.size.height = v8;
  MinX = CGRectGetMaxX(v26) - v12;
LABEL_13:
  v28.origin.x = v7;
  v28.origin.y = v6;
  v28.size.width = v9;
  v28.size.height = v8;
  MinY = CGRectGetMaxY(v28) - v17;
LABEL_14:
  v18 = v4 + MinY;
  [v3 size];

  return [v3 drawInRect_];
}

unint64_t sub_1BA04A784()
{
  result = qword_1EBBEAA50;
  if (!qword_1EBBEAA50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEAA50);
  }

  return result;
}

void sub_1BA04A850(void *a1, uint64_t a2)
{
  v5 = v2 + OBJC_IVAR____TtC18HealthExperienceUI24SwitchCellViewController_delegate;
  swift_beginAccess();
  *(v5 + 8) = a2;
  swift_unknownObjectWeakAssign();
}

void (*sub_1BA04A8B8(uint64_t *a1))(id **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC18HealthExperienceUI24SwitchCellViewController_delegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_1BA04A958;
}

void sub_1BA04A958(id **a1, char a2)
{
  v3 = *a1;
  v4 = (*a1)[3];
  *((*a1)[6] + (*a1)[5] + 8) = (*a1)[4];
  swift_unknownObjectWeakAssign();
  if (a2)
  {

    swift_endAccess();
  }

  else
  {
    swift_endAccess();
  }

  free(v3);
}

id sub_1BA04A9DC()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI24SwitchCellViewController____lazy_storage___switchView;
  v2 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI24SwitchCellViewController____lazy_storage___switchView);
  v3 = v2;
  if (v2 == 1)
  {
    v3 = [objc_allocWithZone(MEMORY[0x1E69DCFD0]) init];
    [v3 setTranslatesAutoresizingMaskIntoConstraints_];
    [v3 addTarget:v0 action:sel_switchTapped forControlEvents:0x2000];
    v4 = *(v0 + v1);
    *(v0 + v1) = v3;
    v5 = v3;
    sub_1B9F49114(v4);
  }

  sub_1BA028194(v2);
  return v3;
}

char *sub_1BA04AA8C()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI24SwitchCellViewController____lazy_storage___cellAccessoryView;
  v2 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI24SwitchCellViewController____lazy_storage___cellAccessoryView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI24SwitchCellViewController____lazy_storage___cellAccessoryView);
  }

  else
  {
    v4 = v0;
    v5 = sub_1BA04A9DC();
    v6 = objc_allocWithZone(type metadata accessor for CellWithAccessoryView());
    v7 = sub_1BA33F3C8(v5);
    v8 = *(v4 + v1);
    *(v4 + v1) = v7;
    v3 = v7;

    v2 = 0;
  }

  v9 = v2;
  return v3;
}

void sub_1BA04AC58()
{
  v1 = v0;
  v2 = MEMORY[0x1E69E7D40];
  v3 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x80))();
  if (!v3)
  {
    __break(1u);
    goto LABEL_8;
  }

  v4 = v3;
  v5 = OBJC_IVAR____TtC18HealthExperienceUI31CellWithAccessoryViewController_context;
  swift_beginAccess();
  sub_1BA04B338(v1 + v5, v14);
  if (!v14[3])
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  sub_1BA33FB50(v14);

  v6 = __swift_destroy_boxed_opaque_existential_1(v14);
  v7 = (*((*v2 & *v1) + 0xF0))(v6);
  if (!v7)
  {
    return;
  }

  v9 = v7;
  v10 = v8;
  v11 = sub_1BA04A9DC();
  if (!v11)
  {
LABEL_9:
    __break(1u);
    return;
  }

  v12 = v11;
  ObjectType = swift_getObjectType();
  [v12 setOn:(*(v10 + 8))(ObjectType animated:{v10) & 1, 1}];
}

void sub_1BA04ADA8()
{
  v1 = [v0 setAccessibilityTraits_];
  v2 = MEMORY[0x1E69E7D40];
  v3 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x98))(v1);
  (*((*v2 & *v0) + 0xD0))(v3);

  v4 = sub_1BA04A9DC();
  if (v4)
  {
    v5 = v4;
    [v4 setIsAccessibilityElement_];
  }

  else
  {
    __break(1u);
  }
}

void sub_1BA04AE90(uint64_t a1, void *a2)
{
  v3 = a1;
  if (a2)
  {

    MEMORY[0x1BFAF1350](0x6863746977532ELL, 0xE700000000000000);
    v3 = a1;
    v4 = a2;
  }

  else
  {
    v4 = 0;
  }

  v5 = MEMORY[0x1E69E7D40];
  v6 = *((*MEMORY[0x1E69E7D40] & *v2) + 0xA0);

  v7 = v6(v3, v4);
  v8 = (*((*v5 & *v2) + 0x80))(v7);
  if (v8)
  {
    v9 = v8;
    v10.value._countAndFlagsBits = v3;
    v10.value._object = v4;
    v11 = v9;
    CellWithAccessoryView.updateAutomationIdentifiers(with:)(v10);
  }

  else
  {
    __break(1u);
  }
}

id SwitchCellViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_1BA4A6758();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id SwitchCellViewController.init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  *&v3[OBJC_IVAR____TtC18HealthExperienceUI24SwitchCellViewController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v3[OBJC_IVAR____TtC18HealthExperienceUI24SwitchCellViewController____lazy_storage___switchView] = 1;
  *&v3[OBJC_IVAR____TtC18HealthExperienceUI24SwitchCellViewController____lazy_storage___cellAccessoryView] = 0;
  if (a2)
  {
    v6 = sub_1BA4A6758();
  }

  else
  {
    v6 = 0;
  }

  v9.receiver = v3;
  v9.super_class = type metadata accessor for SwitchCellViewController();
  v7 = objc_msgSendSuper2(&v9, sel_initWithNibName_bundle_, v6, a3);

  return v7;
}

id SwitchCellViewController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id SwitchCellViewController.init(coder:)(void *a1)
{
  *&v1[OBJC_IVAR____TtC18HealthExperienceUI24SwitchCellViewController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____TtC18HealthExperienceUI24SwitchCellViewController____lazy_storage___switchView] = 1;
  *&v1[OBJC_IVAR____TtC18HealthExperienceUI24SwitchCellViewController____lazy_storage___cellAccessoryView] = 0;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for SwitchCellViewController();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

void sub_1BA04B258()
{
  sub_1B9FAB600(v0 + OBJC_IVAR____TtC18HealthExperienceUI24SwitchCellViewController_delegate);
  sub_1B9F49114(*(v0 + OBJC_IVAR____TtC18HealthExperienceUI24SwitchCellViewController____lazy_storage___switchView));
  v1 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI24SwitchCellViewController____lazy_storage___cellAccessoryView);
}

id SwitchCellViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SwitchCellViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1BA04B338(uint64_t a1, uint64_t a2)
{
  sub_1BA04B39C();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1BA04B39C()
{
  if (!qword_1EDC6C130)
  {
    sub_1BA04B3F4();
    v0 = sub_1BA4A7AA8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC6C130);
    }
  }
}

unint64_t sub_1BA04B3F4()
{
  result = qword_1EDC6C140;
  if (!qword_1EDC6C140)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EDC6C140);
  }

  return result;
}

Swift::Void __swiftcall SwitchCellViewController.didSelectCell(_:in:)(UIView *_, UIViewController *in)
{
  if ([v2 accessibilityElementIsFocused])
  {
    v9 = (*((*MEMORY[0x1E69E7D40] & *v2) + 0xF0))();
    if (v9)
    {
      v4 = v3;
      v5 = sub_1BA04A9DC();
      if (v5)
      {
        v6 = v5;
        ObjectType = swift_getObjectType();
        v8 = [v6 isOn];

        (*(v4 + 16))(v8, ObjectType, v4);
      }

      else
      {
        __break(1u);
      }
    }
  }
}

void sub_1BA04B558()
{
  v1 = *v0;
  if ([v1 accessibilityElementIsFocused])
  {
    v8 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0xF0))();
    if (v8)
    {
      v3 = v2;
      v4 = sub_1BA04A9DC();
      if (v4)
      {
        v5 = v4;
        ObjectType = swift_getObjectType();
        v7 = [v5 isOn];

        (*(v3 + 16))(v7, ObjectType, v3);
      }

      else
      {
        __break(1u);
      }
    }
  }
}

id sub_1BA04B770()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI24SwitchCollectionViewCell____lazy_storage___switchView;
  v2 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI24SwitchCollectionViewCell____lazy_storage___switchView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI24SwitchCollectionViewCell____lazy_storage___switchView);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E69DCFD0]) init];
    [v4 addTarget:v0 action:sel_switchTapped forControlEvents:0x2000];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_1BA04B840()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI24SwitchCollectionViewCell____lazy_storage___imageView;
  v2 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI24SwitchCollectionViewCell____lazy_storage___imageView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI24SwitchCollectionViewCell____lazy_storage___imageView);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) initWithImage_];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

uint64_t sub_1BA04B8F4@<X0>(uint64_t *a1@<X0>, uint64_t (*a2)(uint64_t)@<X1>, uint64_t a3@<X2>, unsigned int *a4@<X3>, uint64_t a5@<X8>)
{
  v40 = a3;
  v41 = a4;
  v36 = a2;
  v42 = a5;
  v7 = MEMORY[0x1E69E6720];
  sub_1B9F0CF08(0, &qword_1EDC6B780, MEMORY[0x1E69DBF38], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v35 - v9;
  v37 = sub_1BA4A3FD8();
  v35 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1BA4A3F98();
  v38 = *(v13 - 8);
  v39 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1E69DBF68];
  sub_1B9F0CF08(0, &qword_1EDC6E658, MEMORY[0x1E69DBF68], v7);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v35 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v35 - v21;
  v23 = *a1;
  swift_beginAccess();
  sub_1BA04E0A4(v5 + v23, v22, &qword_1EDC6E658, v16);
  v24 = sub_1BA4A3FE8();
  v25 = *(v24 - 8);
  if ((*(v25 + 48))(v22, 1, v24) != 1)
  {
    return (*(v25 + 32))(v42, v22, v24);
  }

  v26 = sub_1B9F43BD8(v22, &qword_1EDC6E658, MEMORY[0x1E69DBF68]);
  v36 = v36(v26);
  sub_1B9FD7EE0();
  v28 = &v12[*(v27 + 48)];
  v29 = *MEMORY[0x1E69DBF28];
  v30 = sub_1BA4A3F18();
  (*(*(v30 - 8) + 104))(v12, v29, v30);
  v31 = v41;
  *v28 = v40;
  *(v28 + 1) = 0;
  (*(v35 + 104))(v12, *v31, v37);
  v32 = sub_1BA4A3F48();
  (*(*(v32 - 8) + 56))(v10, 1, 1, v32);
  sub_1BA4A3F88();
  v33 = v42;
  sub_1BA4A3EE8();
  (*(v38 + 8))(v15, v39);
  (*(v25 + 16))(v19, v33, v24);
  (*(v25 + 56))(v19, 0, 1, v24);
  swift_beginAccess();
  sub_1BA04E124(v19, v5 + v23);
  return swift_endAccess();
}

uint64_t sub_1BA04BD80(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (*a2 + OBJC_IVAR____TtC18HealthExperienceUI24SwitchCollectionViewCell_baseIdentifier);
  swift_beginAccess();
  *v4 = v3;
  v4[1] = v2;
}

uint64_t sub_1BA04BDEC()
{
  v1 = (v0 + OBJC_IVAR____TtC18HealthExperienceUI24SwitchCollectionViewCell_baseIdentifier);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t sub_1BA04BE44(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC18HealthExperienceUI24SwitchCollectionViewCell_baseIdentifier);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

id sub_1BA04BF04(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC18HealthExperienceUI24SwitchCollectionViewCell_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v4[OBJC_IVAR____TtC18HealthExperienceUI24SwitchCollectionViewCell____lazy_storage___switchView] = 0;
  v9 = OBJC_IVAR____TtC18HealthExperienceUI24SwitchCollectionViewCell____lazy_storage___switchViewAccessory;
  v10 = sub_1BA4A3FE8();
  v11 = *(v10 - 8);
  v12 = *(v11 + 56);
  v13 = v11 + 56;
  v12(&v4[v9], 1, 1, v10);
  *&v4[OBJC_IVAR____TtC18HealthExperienceUI24SwitchCollectionViewCell____lazy_storage___imageView] = 0;
  v12(&v4[OBJC_IVAR____TtC18HealthExperienceUI24SwitchCollectionViewCell____lazy_storage___imageAccessory], 1, 1, v10);
  v14 = &v4[OBJC_IVAR____TtC18HealthExperienceUI24SwitchCollectionViewCell_baseIdentifier];
  v15 = type metadata accessor for SwitchCollectionViewCell();
  *v14 = 0;
  *(v14 + 1) = 0;
  v21.receiver = v4;
  v21.super_class = v15;
  v16 = objc_msgSendSuper2(&v21, sel_initWithFrame_, a1, a2, a3, a4);
  sub_1B9F0CF08(0, &qword_1EDC6B430, MEMORY[0x1E69DBF68], MEMORY[0x1E69E6F90]);
  v17 = (*(v13 + 24) + 32) & ~*(v13 + 24);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1BA4B5480;
  v19 = v16;
  sub_1BA04B804(v18 + v17);
  sub_1BA4A75F8();

  return v19;
}

void sub_1BA04C114()
{
  v1 = v0;
  v2 = v0 + OBJC_IVAR____TtC18HealthExperienceUI24SwitchCollectionViewCell_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v3 = *(v2 + 8);
    ObjectType = swift_getObjectType();
    v5 = (*(v3 + 16))(v1, ObjectType, v3);
    v6 = sub_1BA04B770();
    v8 = v6;
    if (v5)
    {
      v7 = [v6 isOn];

      (*(v3 + 24))(v7, v1, ObjectType, v3);

      swift_unknownObjectRelease();
    }

    else
    {
      [v6 setOn:objc_msgSend(*(v1 + OBJC_IVAR____TtC18HealthExperienceUI24SwitchCollectionViewCell____lazy_storage___switchView) animated:{sel_isOn) ^ 1, 1}];
      swift_unknownObjectRelease();
    }
  }
}

void sub_1BA04C2C4()
{
  v1 = sub_1BA04B770();
  [v1 setOn:objc_msgSend(*(v0 + OBJC_IVAR____TtC18HealthExperienceUI24SwitchCollectionViewCell____lazy_storage___switchView) animated:{sel_isOn) ^ 1, 1}];
}

uint64_t sub_1BA04C32C()
{
  v1 = v0;
  swift_getObjectType();
  v2 = sub_1BA4A3EA8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA27D1B8();
  v6 = OBJC_IVAR____TtC18HealthExperienceUI32CollectionViewListDisclosureCell_item;
  swift_beginAccess();
  sub_1BA04E0A4(&v1[v6], v28, &qword_1EDC6E1A0, sub_1B9FCD918);
  if (v28[3])
  {
    sub_1B9FCD918();
    sub_1BA04D9B0();
    if (swift_dynamicCast())
    {
      v7 = v26;
      v8 = v27;
      v9 = *v26;
      *&v1[OBJC_IVAR____TtC18HealthExperienceUI24SwitchCollectionViewCell_delegate + 8] = v27;
      swift_unknownObjectWeakAssign();
      v10 = sub_1BA04B770();
      v11 = [v10 isOn];

      v12 = *(v8 + 8);
      if (v11 != (v12(v9, v8) & 1))
      {
        v13 = *&v1[OBJC_IVAR____TtC18HealthExperienceUI24SwitchCollectionViewCell____lazy_storage___switchView];
        [v13 setOn:v12(v9 animated:{v8) & 1, 1}];
      }

      v14 = sub_1BA04B840();
      v15 = (*(*v7 + 160))();
      [v14 setImage_];

      v16 = (*(*v7 + 232))();
      if (v16)
      {
        v17 = v16;
        [v1 setBackgroundColor_];
      }

      sub_1BA04C714();
    }
  }

  else
  {
    sub_1B9F43BD8(v28, &qword_1EDC6E1A0, sub_1B9FCD918);
  }

  sub_1BA4A3DD8();
  v19 = sub_1BA4A3E88();
  v20 = sub_1BA4A6FC8();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v28[0] = v22;
    *v21 = 136315138;
    v23 = sub_1BA4A85D8();
    v25 = sub_1B9F0B82C(v23, v24, v28);

    *(v21 + 4) = v25;
    _os_log_impl(&dword_1B9F07000, v19, v20, "[%s] SwitchCollectionViewItem should conform to SwitchCollectionViewCellDelegate for proper updates to SwitchCollectionViewCell", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v22);
    MEMORY[0x1BFAF43A0](v22, -1, -1);
    MEMORY[0x1BFAF43A0](v21, -1, -1);
  }

  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_1BA04C714()
{
  sub_1B9F0CF08(0, &qword_1EDC6B430, MEMORY[0x1E69DBF68], MEMORY[0x1E69E6F90]);
  v0 = *(sub_1BA4A3FE8() - 8);
  v1 = (*(v0 + 80) + 32) & ~*(v0 + 80);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1BA4B5480;
  sub_1BA04B804(v2 + v1);
  v3 = sub_1BA04B840();
  v4 = [v3 image];

  if (v4)
  {

    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_1BA4B5480;
    sub_1BA04B8B8(v5 + v1);
    sub_1B9FE1E48(v5);
  }

  return sub_1BA4A75F8();
}

void sub_1BA04C894()
{
  [v0 setAccessibilityTraits_];
  v1 = sub_1BA04B770();
  [v1 setIsAccessibilityElement_];
}

void sub_1BA04C8F8()
{
  v1 = v0;
  sub_1BA27AE60();
  v2 = sub_1BA04B770();
  v3 = [v2 accessibilityTraits];

  [v1 setAccessibilityTraits_];
  v4 = [*&v1[OBJC_IVAR____TtC18HealthExperienceUI24SwitchCollectionViewCell____lazy_storage___switchView] accessibilityValue];
  [v1 setAccessibilityValue_];

  v5 = 0xE000000000000000;
  sub_1BA4A7DF8();
  v6 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  v8 = v7;

  v17 = v6;
  MEMORY[0x1BFAF1350](0x436863746977532ELL, 0xEC0000002E6C6C65);
  v9 = sub_1BA27A7D4();
  v10 = [v9 text];

  if (v10)
  {
    v11 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    v5 = v12;
  }

  else
  {
    v11 = 0;
  }

  MEMORY[0x1BFAF1350](v11, v5);

  sub_1BA27AC50(v17, v8);

  v13 = sub_1BA04B770();
  sub_1B9F21718(0, &qword_1EDC6E330, MEMORY[0x1E69E6F90]);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1BA4B5460;
  *(v14 + 32) = v17;
  *(v14 + 40) = v8;
  *(v14 + 48) = 0x686374697753;
  *(v14 + 56) = 0xE600000000000000;
  v15 = sub_1BA4A6AE8();

  v16 = HKUIJoinStringsForAutomationIdentifier();

  [v13 setAccessibilityIdentifier_];
}

void sub_1BA04CB40(uint64_t a1, uint64_t a2)
{
  sub_1BA27AC50(a1, a2);
  if (a2)
  {

    v4 = sub_1BA04B770();
    sub_1B9F21718(0, &qword_1EDC6E330, MEMORY[0x1E69E6F90]);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_1BA4B5460;
    *(v5 + 32) = a1;
    *(v5 + 40) = a2;
    *(v5 + 48) = 0x686374697753;
    *(v5 + 56) = 0xE600000000000000;
    v6 = sub_1BA4A6AE8();

    v7 = HKUIJoinStringsForAutomationIdentifier();

    [v4 setAccessibilityIdentifier_];
  }

  else
  {
    v7 = sub_1BA04B770();
    [v7 setAccessibilityIdentifier_];
  }
}

void sub_1BA04CC5C(uint64_t a1, uint64_t a2)
{
  sub_1BA27B2E0(a1, a2);
  if ([v2 accessibilityElementIsFocused])
  {

    sub_1BA04C114();
  }
}

uint64_t sub_1BA04CCB8()
{
  sub_1B9FAB600(v0 + OBJC_IVAR____TtC18HealthExperienceUI24SwitchCollectionViewCell_delegate);

  v1 = MEMORY[0x1E69DBF68];
  sub_1B9F43BD8(v0 + OBJC_IVAR____TtC18HealthExperienceUI24SwitchCollectionViewCell____lazy_storage___switchViewAccessory, &qword_1EDC6E658, MEMORY[0x1E69DBF68]);

  sub_1B9F43BD8(v0 + OBJC_IVAR____TtC18HealthExperienceUI24SwitchCollectionViewCell____lazy_storage___imageAccessory, &qword_1EDC6E658, v1);
}

id SwitchCollectionViewCell.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SwitchCollectionViewCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1BA04CE74()
{
  v1 = (*v0 + OBJC_IVAR____TtC18HealthExperienceUI24SwitchCollectionViewCell_baseIdentifier);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t sub_1BA04CED0(uint64_t a1, uint64_t a2)
{
  v5 = (*v2 + OBJC_IVAR____TtC18HealthExperienceUI24SwitchCollectionViewCell_baseIdentifier);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

uint64_t sub_1BA04CF98()
{
  v2 = sub_1BA4A85D8();
  MEMORY[0x1BFAF1350](95, 0xE100000000000000);
  swift_beginAccess();
  sub_1B9F21718(0, &qword_1EDC6E410, MEMORY[0x1E69E6720]);

  v0 = sub_1BA4A6808();
  MEMORY[0x1BFAF1350](v0);

  return v2;
}

void sub_1BA04D074(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v3 + 32);
  *(v3 + 32) = v2;
  v5 = v2;
}

void *sub_1BA04D0CC()
{
  swift_beginAccess();
  v1 = *(v0 + 32);
  v2 = v1;
  return v1;
}

void sub_1BA04D110(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 32);
  *(v1 + 32) = a1;
}

uint64_t sub_1BA04D158(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  swift_beginAccess();
  *(v4 + 40) = v3;
  *(v4 + 48) = v2;
}

uint64_t sub_1BA04D1B8()
{
  swift_beginAccess();
  v1 = *(v0 + 40);

  return v1;
}

uint64_t sub_1BA04D204(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
}

uint64_t sub_1BA04D258(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  swift_beginAccess();
  *(v4 + 56) = v3;
  *(v4 + 64) = v2;
}

uint64_t sub_1BA04D2B8()
{
  swift_beginAccess();
  v1 = *(v0 + 56);

  return v1;
}

uint64_t sub_1BA04D304(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 56) = a1;
  *(v2 + 64) = a2;
}

void sub_1BA04D3A8(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v3 + 72);
  *(v3 + 72) = v2;
  v5 = v2;
}

void *sub_1BA04D400()
{
  swift_beginAccess();
  v1 = *(v0 + 72);
  v2 = v1;
  return v1;
}

void sub_1BA04D444(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 72);
  *(v1 + 72) = a1;
}

uint64_t sub_1BA04D510(char a1)
{
  result = swift_beginAccess();
  *(v1 + 80) = a1;
  return result;
}

uint64_t SwitchCollectionViewItem.__allocating_init(image:text:detailText:backgroundColor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_allocObject();
  type metadata accessor for SwitchCollectionViewCell();
  sub_1BA04DA88();
  *(v12 + 16) = sub_1BA4A6808();
  *(v12 + 24) = v13;
  *(v12 + 48) = 0u;
  *(v12 + 64) = 0u;
  *(v12 + 80) = 0;
  *(v12 + 32) = 0u;
  swift_beginAccess();
  *(v12 + 32) = a1;
  swift_beginAccess();
  *(v12 + 40) = a2;
  *(v12 + 48) = a3;
  swift_beginAccess();
  *(v12 + 56) = a4;
  *(v12 + 64) = a5;
  swift_beginAccess();
  *(v12 + 72) = a6;
  return v12;
}

uint64_t SwitchCollectionViewItem.init(image:text:detailText:backgroundColor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  type metadata accessor for SwitchCollectionViewCell();
  sub_1BA04DA88();
  *(v6 + 16) = sub_1BA4A6808();
  *(v6 + 24) = v13;
  *(v6 + 48) = 0u;
  *(v6 + 64) = 0u;
  *(v6 + 80) = 0;
  *(v6 + 32) = 0u;
  swift_beginAccess();
  *(v6 + 32) = a1;
  swift_beginAccess();
  *(v6 + 40) = a2;
  *(v6 + 48) = a3;
  swift_beginAccess();
  *(v6 + 56) = a4;
  *(v6 + 64) = a5;

  swift_beginAccess();
  v14 = *(v6 + 72);
  *(v6 + 72) = a6;

  return v6;
}

uint64_t SwitchCollectionViewItem.deinit()
{

  return v0;
}

uint64_t SwitchCollectionViewItem.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1BA04D840()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = *(v1 + 40);

  return v2;
}

uint64_t sub_1BA04D890()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = *(v1 + 56);

  return v2;
}

uint64_t sub_1BA04D8E0()
{
  v1 = *v0;
  swift_beginAccess();
  return *(v1 + 80);
}

uint64_t sub_1BA04D944(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE0DA58](a1, WitnessTable);
}

unint64_t sub_1BA04D9B0()
{
  result = qword_1EBBEAA78;
  if (!qword_1EBBEAA78)
  {
    type metadata accessor for SwitchCollectionViewItem();
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EBBEAA78);
  }

  return result;
}

uint64_t type metadata accessor for SwitchCollectionViewCell()
{
  result = qword_1EDC6E660;
  if (!qword_1EDC6E660)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1BA04DA88()
{
  result = qword_1EBBF0D80;
  if (!qword_1EBBF0D80)
  {
    type metadata accessor for SwitchCollectionViewCell();
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_1EBBF0D80);
  }

  return result;
}

uint64_t sub_1BA04DB04(uint64_t a1)
{
  result = sub_1BA04DB48(&qword_1EBBEAA88);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1BA04DB48(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SwitchCollectionViewItem();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1BA04DBCC()
{
  sub_1B9F0CF08(319, &qword_1EDC6E658, MEMORY[0x1E69DBF68], MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1BA04E0A4(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1B9F0CF08(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1BA04E124(uint64_t a1, uint64_t a2)
{
  sub_1B9F0CF08(0, &qword_1EDC6E658, MEMORY[0x1E69DBF68], MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_1BA04E1B8()
{
  *(v0 + OBJC_IVAR____TtC18HealthExperienceUI24SwitchCollectionViewCell_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC18HealthExperienceUI24SwitchCollectionViewCell____lazy_storage___switchView) = 0;
  v1 = OBJC_IVAR____TtC18HealthExperienceUI24SwitchCollectionViewCell____lazy_storage___switchViewAccessory;
  v2 = sub_1BA4A3FE8();
  v3 = *(*(v2 - 8) + 56);
  v3(v0 + v1, 1, 1, v2);
  *(v0 + OBJC_IVAR____TtC18HealthExperienceUI24SwitchCollectionViewCell____lazy_storage___imageView) = 0;
  v3(v0 + OBJC_IVAR____TtC18HealthExperienceUI24SwitchCollectionViewCell____lazy_storage___imageAccessory, 1, 1, v2);
  v4 = (v0 + OBJC_IVAR____TtC18HealthExperienceUI24SwitchCollectionViewCell_baseIdentifier);
  *v4 = 0;
  v4[1] = 0;
  sub_1BA4A8018();
  __break(1u);
}

uint64_t sub_1BA04E2D0(uint64_t a1)
{
  v2 = v1;
  sub_1BA051C1C(0, &qword_1EBBEAA90, &qword_1EBBEAA98, MEMORY[0x1E69E6EF8], MEMORY[0x1E69E6E48]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v72 - v5;
  v80 = sub_1BA4A3EA8();
  v7 = *(v80 - 8);
  MEMORY[0x1EEE9AC00](v80);
  v9 = &v72 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v72 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v72 - v14;
  sub_1B9FDCAFC();
  v17 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v72 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v72 - v22;
  if (!*(a1 + 16))
  {
    v33 = v7;
    sub_1BA4A3D68();
    v34 = sub_1BA4A3E88();
    v35 = sub_1BA4A6FA8();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      *&v82 = v37;
      *v36 = 136315138;
      *(v36 + 4) = sub_1B9F0B82C(0xD000000000000022, 0x80000001BA4E5BE0, &v82);
      _os_log_impl(&dword_1B9F07000, v34, v35, "[%s]: Attempted reordering with empty section transactions", v36, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v37);
      MEMORY[0x1BFAF43A0](v37, -1, -1);
      MEMORY[0x1BFAF43A0](v36, -1, -1);
    }

    return (*(v33 + 8))(v15, v80);
  }

  sub_1BA0519CC(a1 + ((*(v21 + 80) + 32) & ~*(v21 + 80)), &v72 - v22);
  v24 = sub_1BA050CCC(&v23[*(v17 + 52)], sub_1BA1F4C60);
  if (v24)
  {
    v25 = v24;
    sub_1BA4A3D68();

    v26 = sub_1BA4A3E88();
    v27 = sub_1BA4A6FC8();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      *&v82 = v29;
      *v28 = 136315394;
      *(v28 + 4) = sub_1B9F0B82C(0xD000000000000022, 0x80000001BA4E5BE0, &v82);
      *(v28 + 12) = 2080;
      v30 = MEMORY[0x1BFAF1560](v25, MEMORY[0x1E69A2B70]);
      v79 = v23;
      v32 = sub_1B9F0B82C(v30, v31, &v82);

      *(v28 + 14) = v32;
      _os_log_impl(&dword_1B9F07000, v26, v27, "[%s]: Pinned reordering occurred, computed these differences: %s", v28, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v29, -1, -1);
      MEMORY[0x1BFAF43A0](v28, -1, -1);

      (*(v7 + 8))(v12, v80);
      v23 = v79;
    }

    else
    {

      (*(v7 + 8))(v12, v80);
    }

    v63 = qword_1EBC096C0;
    swift_beginAccess();
    sub_1B9F0A534(v2 + v63, &v82);
    __swift_project_boxed_opaque_existential_1(&v82, *(&v83 + 1));
    sub_1BA4A2358();

    sub_1BA051CE4(v23, sub_1B9FDCAFC);
    return __swift_destroy_boxed_opaque_existential_1(&v82);
  }

  sub_1BA4A3D68();
  sub_1BA0519CC(v23, v19);
  v39 = sub_1BA4A3E88();
  v40 = sub_1BA4A6FA8();
  if (!os_log_type_enabled(v39, v40))
  {

    sub_1BA051CE4(v19, sub_1B9FDCAFC);
    (*(v7 + 8))(v9, v80);
    v64 = v23;
    return sub_1BA051CE4(v64, sub_1B9FDCAFC);
  }

  v74 = v40;
  v77 = v9;
  v78 = v7;
  v79 = v23;
  v41 = swift_slowAlloc();
  v73 = swift_slowAlloc();
  v88[0] = v73;
  *v41 = 136315394;
  *(v41 + 4) = sub_1B9F0B82C(0xD000000000000022, 0x80000001BA4E5BE0, v88);
  v75 = v41;
  *(v41 + 12) = 2080;
  v42 = *(v17 + 52);
  v43 = MEMORY[0x1E69E6EF0];
  sub_1BA051BC8(0, &unk_1EBBED8B0, MEMORY[0x1E69E6EF0]);
  v45 = *(*(v44 - 8) + 16);
  v76 = v19;
  v46 = &v19[v42];
  v47 = v6;
  v45(v6, v46, v44);
  sub_1BA051A30(&qword_1EBBEAAA0, &unk_1EBBED8B0, v43);
  v48 = sub_1BA4A6E18();
  if (!v48)
  {
    sub_1BA051B6C(v6, &qword_1EBBEAA90, &qword_1EBBEAA98, MEMORY[0x1E69E6EF8], MEMORY[0x1E69E6E48]);
    v50 = MEMORY[0x1E69E7CC0];
LABEL_22:
    v85[0] = v50;
    v65 = MEMORY[0x1E69E62F8];
    sub_1BA051BC8(0, &qword_1EDC6B670, MEMORY[0x1E69E62F8]);
    sub_1BA051A30(&qword_1EDC6B660, &qword_1EDC6B670, v65);
    v66 = sub_1BA4A66D8();
    v68 = v67;

    sub_1BA051CE4(v76, sub_1B9FDCAFC);
    v69 = sub_1B9F0B82C(v66, v68, v88);

    v70 = v75;
    *(v75 + 14) = v69;
    _os_log_impl(&dword_1B9F07000, v39, v74, "[%s]: Failed to apply transaction %s", v70, 0x16u);
    v71 = v73;
    swift_arrayDestroy();
    MEMORY[0x1BFAF43A0](v71, -1, -1);
    MEMORY[0x1BFAF43A0](v70, -1, -1);

    (*(v78 + 8))(v77, v80);
    v64 = v79;
    return sub_1BA051CE4(v64, sub_1B9FDCAFC);
  }

  v49 = v48;
  v72 = v39;
  v87 = MEMORY[0x1E69E7CC0];
  sub_1B9F1C360(0, v48 & ~(v48 >> 63), 0);
  v50 = v87;
  result = sub_1BA4A6DF8();
  if ((v49 & 0x8000000000000000) == 0)
  {
    v51 = 0;
    v52 = v82;
    v81 = v49;
    while (1)
    {
      v86[4] = v52;
      result = sub_1BA4A6DF8();
      if (v52 < v85[0])
      {
        break;
      }

      result = sub_1BA4A6E38();
      if (v52 >= v85[0])
      {
        goto LABEL_25;
      }

      v53 = sub_1BA4A6E88();
      v55 = *(v54 + 16);
      v56 = v54[1];
      v82 = *v54;
      v83 = v56;
      LOWORD(v84) = v55;
      sub_1BA051A74(&v82, v85);
      v53(v86, 0);
      v57 = sub_1BA10A904(v51, &v82);
      v59 = v58;
      sub_1BA051AF4(&v82);
      v87 = v50;
      v61 = *(v50 + 16);
      v60 = *(v50 + 24);
      if (v61 >= v60 >> 1)
      {
        sub_1B9F1C360((v60 > 1), v61 + 1, 1);
        v50 = v87;
      }

      ++v51;
      *(v50 + 16) = v61 + 1;
      v62 = v50 + 16 * v61;
      *(v62 + 32) = v57;
      *(v62 + 40) = v59;
      v86[0] = v52;
      sub_1BA4A6E28();
      v52 = v85[0];
      if (v81 == v51)
      {
        sub_1BA051B6C(v47, &qword_1EBBEAA90, &qword_1EBBEAA98, MEMORY[0x1E69E6EF8], MEMORY[0x1E69E6E48]);
        v39 = v72;
        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1BA04ED40(uint64_t a1)
{
  v2 = v1;
  sub_1BA051C1C(0, &qword_1EBBEAA90, &qword_1EBBEAA98, MEMORY[0x1E69E6EF8], MEMORY[0x1E69E6E48]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v72 - v5;
  v80 = sub_1BA4A3EA8();
  v7 = *(v80 - 8);
  MEMORY[0x1EEE9AC00](v80);
  v9 = &v72 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v72 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v72 - v14;
  sub_1B9FDCAFC();
  v17 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v72 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v72 - v22;
  if (!*(a1 + 16))
  {
    v33 = v7;
    sub_1BA4A3D68();
    v34 = sub_1BA4A3E88();
    v35 = sub_1BA4A6FA8();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      *&v82 = v37;
      *v36 = 136315138;
      *(v36 + 4) = sub_1B9F0B82C(0xD000000000000017, 0x80000001BA4E5BC0, &v82);
      _os_log_impl(&dword_1B9F07000, v34, v35, "[%s]: Attempted reordering with empty section transactions", v36, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v37);
      MEMORY[0x1BFAF43A0](v37, -1, -1);
      MEMORY[0x1BFAF43A0](v36, -1, -1);
    }

    return (*(v33 + 8))(v15, v80);
  }

  sub_1BA0519CC(a1 + ((*(v21 + 80) + 32) & ~*(v21 + 80)), &v72 - v22);
  v24 = sub_1BA050CCC(&v23[*(v17 + 52)], sub_1BA1F4FF4);
  if (v24)
  {
    v25 = v24;
    sub_1BA4A3D68();

    v26 = sub_1BA4A3E88();
    v27 = sub_1BA4A6FC8();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      *&v82 = v29;
      *v28 = 136315394;
      *(v28 + 4) = sub_1B9F0B82C(0xD000000000000017, 0x80000001BA4E5BC0, &v82);
      *(v28 + 12) = 2080;
      v30 = MEMORY[0x1BFAF1560](v25, MEMORY[0x1E69A2B70]);
      v79 = v23;
      v32 = sub_1B9F0B82C(v30, v31, &v82);

      *(v28 + 14) = v32;
      _os_log_impl(&dword_1B9F07000, v26, v27, "[%s]: Pinned reordering occurred, computed these differences: %s", v28, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v29, -1, -1);
      MEMORY[0x1BFAF43A0](v28, -1, -1);

      (*(v7 + 8))(v12, v80);
      v23 = v79;
    }

    else
    {

      (*(v7 + 8))(v12, v80);
    }

    v63 = qword_1EBC09290;
    swift_beginAccess();
    sub_1B9F0A534(v2 + v63, &v82);
    __swift_project_boxed_opaque_existential_1(&v82, *(&v83 + 1));
    sub_1BA4A2358();

    sub_1BA051CE4(v23, sub_1B9FDCAFC);
    return __swift_destroy_boxed_opaque_existential_1(&v82);
  }

  sub_1BA4A3D68();
  sub_1BA0519CC(v23, v19);
  v39 = sub_1BA4A3E88();
  v40 = sub_1BA4A6FA8();
  if (!os_log_type_enabled(v39, v40))
  {

    sub_1BA051CE4(v19, sub_1B9FDCAFC);
    (*(v7 + 8))(v9, v80);
    v64 = v23;
    return sub_1BA051CE4(v64, sub_1B9FDCAFC);
  }

  v74 = v40;
  v77 = v9;
  v78 = v7;
  v79 = v23;
  v41 = swift_slowAlloc();
  v73 = swift_slowAlloc();
  v88[0] = v73;
  *v41 = 136315394;
  *(v41 + 4) = sub_1B9F0B82C(0xD000000000000017, 0x80000001BA4E5BC0, v88);
  v75 = v41;
  *(v41 + 12) = 2080;
  v42 = *(v17 + 52);
  v43 = MEMORY[0x1E69E6EF0];
  sub_1BA051BC8(0, &unk_1EBBED8B0, MEMORY[0x1E69E6EF0]);
  v45 = *(*(v44 - 8) + 16);
  v76 = v19;
  v46 = &v19[v42];
  v47 = v6;
  v45(v6, v46, v44);
  sub_1BA051A30(&qword_1EBBEAAA0, &unk_1EBBED8B0, v43);
  v48 = sub_1BA4A6E18();
  if (!v48)
  {
    sub_1BA051B6C(v6, &qword_1EBBEAA90, &qword_1EBBEAA98, MEMORY[0x1E69E6EF8], MEMORY[0x1E69E6E48]);
    v50 = MEMORY[0x1E69E7CC0];
LABEL_22:
    v85[0] = v50;
    v65 = MEMORY[0x1E69E62F8];
    sub_1BA051BC8(0, &qword_1EDC6B670, MEMORY[0x1E69E62F8]);
    sub_1BA051A30(&qword_1EDC6B660, &qword_1EDC6B670, v65);
    v66 = sub_1BA4A66D8();
    v68 = v67;

    sub_1BA051CE4(v76, sub_1B9FDCAFC);
    v69 = sub_1B9F0B82C(v66, v68, v88);

    v70 = v75;
    *(v75 + 14) = v69;
    _os_log_impl(&dword_1B9F07000, v39, v74, "[%s]: Failed to apply transaction %s", v70, 0x16u);
    v71 = v73;
    swift_arrayDestroy();
    MEMORY[0x1BFAF43A0](v71, -1, -1);
    MEMORY[0x1BFAF43A0](v70, -1, -1);

    (*(v78 + 8))(v77, v80);
    v64 = v79;
    return sub_1BA051CE4(v64, sub_1B9FDCAFC);
  }

  v49 = v48;
  v72 = v39;
  v87 = MEMORY[0x1E69E7CC0];
  sub_1B9F1C360(0, v48 & ~(v48 >> 63), 0);
  v50 = v87;
  result = sub_1BA4A6DF8();
  if ((v49 & 0x8000000000000000) == 0)
  {
    v51 = 0;
    v52 = v82;
    v81 = v49;
    while (1)
    {
      v86[4] = v52;
      result = sub_1BA4A6DF8();
      if (v52 < v85[0])
      {
        break;
      }

      result = sub_1BA4A6E38();
      if (v52 >= v85[0])
      {
        goto LABEL_25;
      }

      v53 = sub_1BA4A6E88();
      v55 = *(v54 + 16);
      v56 = v54[1];
      v82 = *v54;
      v83 = v56;
      LOWORD(v84) = v55;
      sub_1BA051A74(&v82, v85);
      v53(v86, 0);
      v57 = sub_1BA10A904(v51, &v82);
      v59 = v58;
      sub_1BA051AF4(&v82);
      v87 = v50;
      v61 = *(v50 + 16);
      v60 = *(v50 + 24);
      if (v61 >= v60 >> 1)
      {
        sub_1B9F1C360((v60 > 1), v61 + 1, 1);
        v50 = v87;
      }

      ++v51;
      *(v50 + 16) = v61 + 1;
      v62 = v50 + 16 * v61;
      *(v62 + 32) = v57;
      *(v62 + 40) = v59;
      v86[0] = v52;
      sub_1BA4A6E28();
      v52 = v85[0];
      if (v81 == v51)
      {
        sub_1BA051B6C(v47, &qword_1EBBEAA90, &qword_1EBBEAA98, MEMORY[0x1E69E6EF8], MEMORY[0x1E69E6E48]);
        v39 = v72;
        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1BA04F7B0(uint64_t a1)
{
  v2 = v1;
  sub_1BA051C1C(0, &qword_1EBBEAA90, &qword_1EBBEAA98, MEMORY[0x1E69E6EF8], MEMORY[0x1E69E6E48]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v72 - v5;
  v80 = sub_1BA4A3EA8();
  v7 = *(v80 - 8);
  MEMORY[0x1EEE9AC00](v80);
  v9 = &v72 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v72 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v72 - v14;
  sub_1B9FDCAFC();
  v17 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v72 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v72 - v22;
  if (!*(a1 + 16))
  {
    v33 = v7;
    sub_1BA4A3D68();
    v34 = sub_1BA4A3E88();
    v35 = sub_1BA4A6FA8();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      *&v82 = v37;
      *v36 = 136315138;
      *(v36 + 4) = sub_1B9F0B82C(0xD000000000000021, 0x80000001BA4E5C10, &v82);
      _os_log_impl(&dword_1B9F07000, v34, v35, "[%s]: Attempted reordering with empty section transactions", v36, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v37);
      MEMORY[0x1BFAF43A0](v37, -1, -1);
      MEMORY[0x1BFAF43A0](v36, -1, -1);
    }

    return (*(v33 + 8))(v15, v80);
  }

  sub_1BA0519CC(a1 + ((*(v21 + 80) + 32) & ~*(v21 + 80)), &v72 - v22);
  v24 = sub_1BA050CCC(&v23[*(v17 + 52)], PinnedPinnableFeedItemsDataSource.getPinnedIdentifier(for:));
  if (v24)
  {
    v25 = v24;
    sub_1BA4A3D68();

    v26 = sub_1BA4A3E88();
    v27 = sub_1BA4A6FC8();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      *&v82 = v29;
      *v28 = 136315394;
      *(v28 + 4) = sub_1B9F0B82C(0xD000000000000021, 0x80000001BA4E5C10, &v82);
      *(v28 + 12) = 2080;
      v30 = MEMORY[0x1BFAF1560](v25, MEMORY[0x1E69A2B70]);
      v79 = v23;
      v32 = sub_1B9F0B82C(v30, v31, &v82);

      *(v28 + 14) = v32;
      _os_log_impl(&dword_1B9F07000, v26, v27, "[%s]: Pinned reordering occurred, computed these differences: %s", v28, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v29, -1, -1);
      MEMORY[0x1BFAF43A0](v28, -1, -1);

      (*(v7 + 8))(v12, v80);
      v23 = v79;
    }

    else
    {

      (*(v7 + 8))(v12, v80);
    }

    v63 = qword_1EBC094D8;
    swift_beginAccess();
    sub_1B9F0A534(v2 + v63, &v82);
    __swift_project_boxed_opaque_existential_1(&v82, *(&v83 + 1));
    sub_1BA4A2358();

    sub_1BA051CE4(v23, sub_1B9FDCAFC);
    return __swift_destroy_boxed_opaque_existential_1(&v82);
  }

  sub_1BA4A3D68();
  sub_1BA0519CC(v23, v19);
  v39 = sub_1BA4A3E88();
  v40 = sub_1BA4A6FA8();
  if (!os_log_type_enabled(v39, v40))
  {

    sub_1BA051CE4(v19, sub_1B9FDCAFC);
    (*(v7 + 8))(v9, v80);
    v64 = v23;
    return sub_1BA051CE4(v64, sub_1B9FDCAFC);
  }

  v74 = v40;
  v77 = v9;
  v78 = v7;
  v79 = v23;
  v41 = swift_slowAlloc();
  v73 = swift_slowAlloc();
  v88[0] = v73;
  *v41 = 136315394;
  *(v41 + 4) = sub_1B9F0B82C(0xD000000000000021, 0x80000001BA4E5C10, v88);
  v75 = v41;
  *(v41 + 12) = 2080;
  v42 = *(v17 + 52);
  v43 = MEMORY[0x1E69E6EF0];
  sub_1BA051BC8(0, &unk_1EBBED8B0, MEMORY[0x1E69E6EF0]);
  v45 = *(*(v44 - 8) + 16);
  v76 = v19;
  v46 = &v19[v42];
  v47 = v6;
  v45(v6, v46, v44);
  sub_1BA051A30(&qword_1EBBEAAA0, &unk_1EBBED8B0, v43);
  v48 = sub_1BA4A6E18();
  if (!v48)
  {
    sub_1BA051B6C(v6, &qword_1EBBEAA90, &qword_1EBBEAA98, MEMORY[0x1E69E6EF8], MEMORY[0x1E69E6E48]);
    v50 = MEMORY[0x1E69E7CC0];
LABEL_22:
    v85[0] = v50;
    v65 = MEMORY[0x1E69E62F8];
    sub_1BA051BC8(0, &qword_1EDC6B670, MEMORY[0x1E69E62F8]);
    sub_1BA051A30(&qword_1EDC6B660, &qword_1EDC6B670, v65);
    v66 = sub_1BA4A66D8();
    v68 = v67;

    sub_1BA051CE4(v76, sub_1B9FDCAFC);
    v69 = sub_1B9F0B82C(v66, v68, v88);

    v70 = v75;
    *(v75 + 14) = v69;
    _os_log_impl(&dword_1B9F07000, v39, v74, "[%s]: Failed to apply transaction %s", v70, 0x16u);
    v71 = v73;
    swift_arrayDestroy();
    MEMORY[0x1BFAF43A0](v71, -1, -1);
    MEMORY[0x1BFAF43A0](v70, -1, -1);

    (*(v78 + 8))(v77, v80);
    v64 = v79;
    return sub_1BA051CE4(v64, sub_1B9FDCAFC);
  }

  v49 = v48;
  v72 = v39;
  v87 = MEMORY[0x1E69E7CC0];
  sub_1B9F1C360(0, v48 & ~(v48 >> 63), 0);
  v50 = v87;
  result = sub_1BA4A6DF8();
  if ((v49 & 0x8000000000000000) == 0)
  {
    v51 = 0;
    v52 = v82;
    v81 = v49;
    while (1)
    {
      v86[4] = v52;
      result = sub_1BA4A6DF8();
      if (v52 < v85[0])
      {
        break;
      }

      result = sub_1BA4A6E38();
      if (v52 >= v85[0])
      {
        goto LABEL_25;
      }

      v53 = sub_1BA4A6E88();
      v55 = *(v54 + 16);
      v56 = v54[1];
      v82 = *v54;
      v83 = v56;
      LOWORD(v84) = v55;
      sub_1BA051A74(&v82, v85);
      v53(v86, 0);
      v57 = sub_1BA10A904(v51, &v82);
      v59 = v58;
      sub_1BA051AF4(&v82);
      v87 = v50;
      v61 = *(v50 + 16);
      v60 = *(v50 + 24);
      if (v61 >= v60 >> 1)
      {
        sub_1B9F1C360((v60 > 1), v61 + 1, 1);
        v50 = v87;
      }

      ++v51;
      *(v50 + 16) = v61 + 1;
      v62 = v50 + 16 * v61;
      *(v62 + 32) = v57;
      *(v62 + 40) = v59;
      v86[0] = v52;
      sub_1BA4A6E28();
      v52 = v85[0];
      if (v81 == v51)
      {
        sub_1BA051B6C(v47, &qword_1EBBEAA90, &qword_1EBBEAA98, MEMORY[0x1E69E6EF8], MEMORY[0x1E69E6E48]);
        v39 = v72;
        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t PinnedContentDiffableReorderHandling<>.applyReorder(sectionTransactions:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  sub_1BA051C1C(0, &qword_1EBBEAA90, &qword_1EBBEAA98, MEMORY[0x1E69E6EF8], MEMORY[0x1E69E6E48]);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v89 - v9;
  v11 = sub_1BA4A3EA8();
  v96 = *(v11 - 8);
  v97 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v89 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v95 = (&v89 - v15);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v89 - v17;
  sub_1B9FDCAFC();
  v20 = v19;
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v89 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v26 = &v89 - v25;
  if (!*(a1 + 16))
  {
    sub_1BA4A3D68();
    v42 = sub_1BA4A3E88();
    v43 = sub_1BA4A6FA8();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v45 = v96;
      v46 = v44;
      v47 = swift_slowAlloc();
      *&v99 = v47;
      *v46 = 136315138;
      v48 = sub_1BA4A85D8();
      v50 = sub_1B9F0B82C(v48, v49, &v99);

      *(v46 + 4) = v50;
      _os_log_impl(&dword_1B9F07000, v42, v43, "[%s]: Attempted reordering with empty section transactions", v46, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v47);
      MEMORY[0x1BFAF43A0](v47, -1, -1);
      MEMORY[0x1BFAF43A0](v46, -1, -1);

      return (*(v45 + 8))(v13, v97);
    }

    else
    {

      return (*(v96 + 8))(v13, v97);
    }
  }

  sub_1BA0519CC(a1 + ((*(v24 + 80) + 32) & ~*(v24 + 80)), &v89 - v25);
  v27 = &v26[*(v20 + 52)];
  v98 = a2;
  v28 = PinnedContentDiffableReorderHandling<>.map(difference:)(v27, a2, a3);
  if (v28)
  {
    v29 = v28;
    v94 = v4;
    v95 = a3;
    sub_1BA4A3D68();

    v30 = sub_1BA4A3E88();
    v31 = sub_1BA4A6FC8();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      *&v99 = v33;
      *v32 = 136315394;
      v34 = v98;
      v35 = sub_1BA4A85D8();
      v93 = v26;
      v36 = v96;
      v38 = sub_1B9F0B82C(v35, v37, &v99);

      *(v32 + 4) = v38;
      *(v32 + 12) = 2080;
      v39 = MEMORY[0x1BFAF1560](v29, MEMORY[0x1E69A2B70]);
      v41 = sub_1B9F0B82C(v39, v40, &v99);

      *(v32 + 14) = v41;
      _os_log_impl(&dword_1B9F07000, v30, v31, "[%s]: Pinned reordering occurred, computed these differences: %s", v32, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v33, -1, -1);
      MEMORY[0x1BFAF43A0](v32, -1, -1);

      (*(v36 + 8))(v18, v97);
      v26 = v93;
    }

    else
    {

      (*(v96 + 8))(v18, v97);
      v34 = v98;
    }

    v102[0] = v94;
    v95[2](&v99, v34);
    __swift_project_boxed_opaque_existential_1(&v99, *(&v100 + 1));
    sub_1BA4A2358();

    sub_1BA051CE4(v26, sub_1B9FDCAFC);
    return __swift_destroy_boxed_opaque_existential_1(&v99);
  }

  v52 = v22;
  v53 = v95;
  sub_1BA4A3D68();
  sub_1BA0519CC(v26, v52);
  v54 = sub_1BA4A3E88();
  v55 = sub_1BA4A6FA8();
  if (!os_log_type_enabled(v54, v55))
  {

    sub_1BA051CE4(v52, sub_1B9FDCAFC);
LABEL_23:
    (*(v96 + 8))(v53, v97);
    return sub_1BA051CE4(v26, sub_1B9FDCAFC);
  }

  v90 = v55;
  v92 = v54;
  v56 = swift_slowAlloc();
  v89 = swift_slowAlloc();
  v105[0] = v89;
  *v56 = 136315394;
  v57 = sub_1BA4A85D8();
  v59 = sub_1B9F0B82C(v57, v58, v105);

  *(v56 + 4) = v59;
  v91 = v56;
  *(v56 + 12) = 2080;
  v60 = *(v20 + 52);
  v61 = MEMORY[0x1E69E6EF0];
  sub_1BA051BC8(0, &unk_1EBBED8B0, MEMORY[0x1E69E6EF0]);
  v63 = *(*(v62 - 8) + 16);
  v94 = v52;
  v63(v10, v52 + v60, v62);
  sub_1BA051A30(&qword_1EBBEAAA0, &unk_1EBBED8B0, v61);
  v64 = sub_1BA4A6E18();
  if (!v64)
  {
    sub_1BA051B6C(v10, &qword_1EBBEAA90, &qword_1EBBEAA98, MEMORY[0x1E69E6EF8], MEMORY[0x1E69E6E48]);
    v80 = MEMORY[0x1E69E7CC0];
LABEL_22:
    v102[0] = v80;
    v81 = MEMORY[0x1E69E62F8];
    sub_1BA051BC8(0, &qword_1EDC6B670, MEMORY[0x1E69E62F8]);
    sub_1BA051A30(&qword_1EDC6B660, &qword_1EDC6B670, v81);
    v82 = sub_1BA4A66D8();
    v84 = v83;

    sub_1BA051CE4(v94, sub_1B9FDCAFC);
    v85 = sub_1B9F0B82C(v82, v84, v105);

    v86 = v91;
    *(v91 + 14) = v85;
    v87 = v92;
    _os_log_impl(&dword_1B9F07000, v92, v90, "[%s]: Failed to apply transaction %s", v86, 0x16u);
    v88 = v89;
    swift_arrayDestroy();
    MEMORY[0x1BFAF43A0](v88, -1, -1);
    MEMORY[0x1BFAF43A0](v86, -1, -1);

    goto LABEL_23;
  }

  v65 = v64;
  v93 = v26;
  v104 = MEMORY[0x1E69E7CC0];
  sub_1B9F1C360(0, v64 & ~(v64 >> 63), 0);
  v66 = v104;
  result = sub_1BA4A6DF8();
  if ((v65 & 0x8000000000000000) == 0)
  {
    v67 = 0;
    v68 = v99;
    v98 = v65;
    while (1)
    {
      v103[4] = v68;
      result = sub_1BA4A6DF8();
      if (v68 < v102[0])
      {
        break;
      }

      result = sub_1BA4A6E38();
      if (v68 >= v102[0])
      {
        goto LABEL_25;
      }

      v69 = sub_1BA4A6E88();
      v71 = *(v70 + 16);
      v72 = v70[1];
      v99 = *v70;
      v100 = v72;
      LOWORD(v101) = v71;
      sub_1BA051A74(&v99, v102);
      v69(v103, 0);
      v73 = sub_1BA10A904(v67, &v99);
      v75 = v74;
      sub_1BA051AF4(&v99);
      v104 = v66;
      v76 = v10;
      v78 = *(v66 + 16);
      v77 = *(v66 + 24);
      if (v78 >= v77 >> 1)
      {
        sub_1B9F1C360((v77 > 1), v78 + 1, 1);
        v66 = v104;
      }

      ++v67;
      *(v66 + 16) = v78 + 1;
      v79 = v66 + 16 * v78;
      *(v79 + 32) = v73;
      *(v79 + 40) = v75;
      v103[0] = v68;
      sub_1BA4A6E28();
      v68 = v102[0];
      v10 = v76;
      if (v98 == v67)
      {
        sub_1BA051B6C(v76, &qword_1EBBEAA90, &qword_1EBBEAA98, MEMORY[0x1E69E6EF8], MEMORY[0x1E69E6E48]);
        v26 = v93;
        v80 = v66;
        v53 = v95;
        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
  }

  __break(1u);
  return result;
}

char *sub_1BA050CCC(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v33 = a2;
  sub_1BA051C1C(0, &unk_1EBBEAAB0, &qword_1EBBEAAA0, MEMORY[0x1E69E6F00], MEMORY[0x1E69E6CF0]);
  v4 = v3 - 8;
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v30 - v5;
  v7 = MEMORY[0x1E69E6EF0];
  sub_1BA051BC8(0, &unk_1EBBED8B0, MEMORY[0x1E69E6EF0]);
  v9 = v8;
  (*(*(v8 - 8) + 16))(v6, a1, v8);
  v10 = *(v4 + 44);
  v11 = sub_1BA051A30(&qword_1EBBEAAA0, &unk_1EBBED8B0, v7);
  sub_1BA4A6DF8();
  sub_1BA4A6E38();
  v12 = MEMORY[0x1E69E7CC0];
  if (*&v6[v10] != v37[0])
  {
    v31 = v10;
    v32 = v9;
    v30 = v11;
    do
    {
      v15 = sub_1BA4A6E88();
      v18 = *v16;
      v17 = v16[1];
      v19 = v16[2];
      v20 = *(v16 + 32);
      v21 = *(v16 + 33);
      v35 = v16[3];
      v36 = v20;
      sub_1BA051CD4();
      v15(v37, 0);
      sub_1BA4A6E48();
      v22 = v33(v17, v19);
      v24 = v23;
      v34 = v22;
      if (v21)
      {
        if (!v23)
        {
          goto LABEL_18;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v12 = sub_1BA27F848(0, *(v12 + 2) + 1, 1, v12);
        }

        v26 = *(v12 + 2);
        v25 = *(v12 + 3);
        v27 = v26 + 1;
        if (v26 >= v25 >> 1)
        {
          v12 = sub_1BA27F848((v25 > 1), v26 + 1, 1, v12);
        }

        v13 = 0;
      }

      else
      {
        if (!v23)
        {
LABEL_18:
          sub_1BA051CDC();
          sub_1BA051B6C(v6, &unk_1EBBEAAB0, &qword_1EBBEAAA0, MEMORY[0x1E69E6F00], MEMORY[0x1E69E6CF0]);

          return 0;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v12 = sub_1BA27F848(0, *(v12 + 2) + 1, 1, v12);
        }

        v26 = *(v12 + 2);
        v28 = *(v12 + 3);
        v27 = v26 + 1;
        if (v26 >= v28 >> 1)
        {
          v12 = sub_1BA27F848((v28 > 1), v26 + 1, 1, v12);
        }

        v13 = v18;
      }

      sub_1BA051CDC();
      *(v12 + 2) = v27;
      v14 = &v12[32 * v26];
      *(v14 + 4) = v34;
      *(v14 + 5) = v24;
      *(v14 + 6) = v13;
      v14[56] = v21 ^ 1;
      sub_1BA4A6E38();
    }

    while (*&v6[v31] != v37[0]);
  }

  sub_1BA051B6C(v6, &unk_1EBBEAAB0, &qword_1EBBEAAA0, MEMORY[0x1E69E6F00], MEMORY[0x1E69E6CF0]);
  return v12;
}

char *PinnedContentDiffableReorderHandling<>.map(difference:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v40 = a2;
  sub_1BA051C1C(0, &unk_1EBBEAAB0, &qword_1EBBEAAA0, MEMORY[0x1E69E6F00], MEMORY[0x1E69E6CF0]);
  v6 = v5 - 8;
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v35 - v7;
  v9 = MEMORY[0x1E69E6EF0];
  sub_1BA051BC8(0, &unk_1EBBED8B0, MEMORY[0x1E69E6EF0]);
  v11 = v10;
  (*(*(v10 - 8) + 16))(v8, a1, v10);
  v12 = *(v6 + 44);
  v13 = sub_1BA051A30(&qword_1EBBEAAA0, &unk_1EBBED8B0, v9);
  sub_1BA4A6DF8();
  sub_1BA4A6E38();
  if (*&v8[v12] != v45[0])
  {
    v39 = a3 + 40;
    v44 = MEMORY[0x1E69E7CC0];
    v37 = v11;
    v38 = a3;
    v35 = v13;
    v36 = v12;
    while (1)
    {
      v17 = sub_1BA4A6E88();
      v20 = *v18;
      v19 = v18[1];
      v21 = v18[2];
      v22 = *(v18 + 32);
      v23 = *(v18 + 33);
      v42 = v18[3];
      v43 = v22;
      sub_1BA051CD4();
      v17(v45, 0);
      sub_1BA4A6E48();
      if (v23)
      {
        v45[0] = v41;
        v24 = (*(a3 + 40))(v19, v21, v40, a3);
        if (!v25)
        {
          goto LABEL_19;
        }

        v26 = v24;
        v27 = v25;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v44 = sub_1BA27F848(0, *(v44 + 2) + 1, 1, v44);
        }

        v29 = *(v44 + 2);
        v28 = *(v44 + 3);
        v30 = v29 + 1;
        if (v29 >= v28 >> 1)
        {
          v44 = sub_1BA27F848((v28 > 1), v29 + 1, 1, v44);
        }

        v14 = 0;
      }

      else
      {
        v45[0] = v41;
        v31 = (*(a3 + 40))(v19, v21, v40, a3);
        if (!v32)
        {
LABEL_19:
          sub_1BA051CDC();
          sub_1BA051B6C(v8, &unk_1EBBEAAB0, &qword_1EBBEAAA0, MEMORY[0x1E69E6F00], MEMORY[0x1E69E6CF0]);

          return 0;
        }

        v26 = v31;
        v27 = v32;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v44 = sub_1BA27F848(0, *(v44 + 2) + 1, 1, v44);
        }

        v29 = *(v44 + 2);
        v33 = *(v44 + 3);
        v30 = v29 + 1;
        if (v29 >= v33 >> 1)
        {
          v44 = sub_1BA27F848((v33 > 1), v29 + 1, 1, v44);
        }

        v14 = v20;
      }

      sub_1BA051CDC();
      v15 = v44;
      *(v44 + 2) = v30;
      v16 = &v15[32 * v29];
      *(v16 + 4) = v26;
      *(v16 + 5) = v27;
      *(v16 + 6) = v14;
      v16[56] = v23 ^ 1;
      sub_1BA4A6E38();
      a3 = v38;
      if (*&v8[v36] == v45[0])
      {
        goto LABEL_3;
      }
    }
  }

  v44 = MEMORY[0x1E69E7CC0];
LABEL_3:
  sub_1BA051B6C(v8, &unk_1EBBEAAB0, &qword_1EBBEAAA0, MEMORY[0x1E69E6F00], MEMORY[0x1E69E6CF0]);
  return v44;
}

uint64_t PinnedContentDiffableReorderHandling<>.pinnedIdentifierFromFeedItem(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1BA4A3EA8();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(a5 + 24))(&v37, a1, a2, a3, a5, v11);
  if (v38)
  {
    sub_1B9F25598(&v37, v40);
    sub_1B9F0A534(v40, &v37);
    sub_1B9F32244();
    sub_1BA4A27B8();
    if (swift_dynamicCast())
    {
      v14 = v36[0];
      v15 = [v36[0] pinnedContentIdentifier];
      if (v15)
      {
        v16 = v15;
        v17 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();

        __swift_destroy_boxed_opaque_existential_1(v40);
        return v17;
      }

      __swift_destroy_boxed_opaque_existential_1(v40);
    }

    else
    {
      sub_1BA4A3D68();
      sub_1B9F0A534(v40, &v37);
      sub_1B9F0A534(v40, v36);
      v19 = sub_1BA4A3E88();
      v20 = sub_1BA4A6FA8();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        v22 = swift_slowAlloc();
        v35 = v22;
        *v21 = 136315650;
        v23 = sub_1BA4A85D8();
        v25 = sub_1B9F0B82C(v23, v24, &v35);

        *(v21 + 4) = v25;
        *(v21 + 12) = 2080;
        __swift_project_boxed_opaque_existential_1(&v37, v38);
        v34[0] = swift_getDynamicType();
        v34[1] = v39;
        sub_1BA051D44();
        v26 = sub_1BA4A6808();
        v28 = v27;
        __swift_destroy_boxed_opaque_existential_1(&v37);
        v29 = sub_1B9F0B82C(v26, v28, &v35);

        *(v21 + 14) = v29;
        *(v21 + 22) = 2080;
        sub_1B9F0A534(v36, v34);
        v30 = sub_1BA4A6808();
        v32 = v31;
        __swift_destroy_boxed_opaque_existential_1(v36);
        v33 = sub_1B9F0B82C(v30, v32, &v35);

        *(v21 + 24) = v33;
        _os_log_impl(&dword_1B9F07000, v19, v20, "[%s]: Expected FeedItem but got %s. Item: %s", v21, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1BFAF43A0](v22, -1, -1);
        MEMORY[0x1BFAF43A0](v21, -1, -1);
      }

      else
      {

        __swift_destroy_boxed_opaque_existential_1(v36);
        __swift_destroy_boxed_opaque_existential_1(&v37);
      }

      (*(v10 + 8))(v13, v9);
      __swift_destroy_boxed_opaque_existential_1(v40);
    }
  }

  else
  {
    sub_1BA051CE4(&v37, sub_1B9FCD694);
  }

  return 0;
}

uint64_t sub_1BA0519CC(uint64_t a1, uint64_t a2)
{
  sub_1B9FDCAFC();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BA051A30(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(void, void))
{
  result = *a1;
  if (!result)
  {
    sub_1BA051BC8(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1BA051A74(uint64_t a1, uint64_t a2)
{
  sub_1BA051BC8(0, &qword_1EBBEAAA8, MEMORY[0x1E69E6EE8]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BA051AF4(uint64_t a1)
{
  sub_1BA051BC8(0, &qword_1EBBEAAA8, MEMORY[0x1E69E6EE8]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BA051B6C(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  sub_1BA051C1C(0, a2, a3, a4, a5);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

void sub_1BA051BC8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void))
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

void sub_1BA051C1C(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = MEMORY[0x1E69E6EF0];
    sub_1BA051BC8(255, &unk_1EBBED8B0, MEMORY[0x1E69E6EF0]);
    v11 = v10;
    v12 = sub_1BA051A30(a3, &unk_1EBBED8B0, v9);
    v13 = a5(a1, v11, v12);
    if (!v14)
    {
      atomic_store(v13, a2);
    }
  }
}

uint64_t sub_1BA051CE4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1BA051D44()
{
  result = qword_1EBBEBB90;
  if (!qword_1EBBEBB90)
  {
    sub_1B9F32244();
    result = swift_getExistentialMetatypeMetadata();
    atomic_store(result, &qword_1EBBEBB90);
  }

  return result;
}

id sub_1BA051DDC()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E696AB70]) init];
  [v0 setUnitsStyle_];
  result = [v0 setAllowedUnits_];
  qword_1EBBEAAC0 = v0;
  return result;
}

char *sub_1BA051E40(void *a1)
{
  v2 = v1;
  swift_getObjectType();
  *(v2 + OBJC_IVAR____TtC18HealthExperienceUI36InternalFeedItemDetailViewController_feedItem) = a1;
  v4 = a1;
  v5 = sub_1BA051EA8(v4);
  v6 = CompoundDataSourceCollectionViewController.init(dataSource:)(v5);

  return v6;
}

uint64_t sub_1BA051EA8(void *a1)
{
  v2 = sub_1BA052100(a1);
  v4 = v3;
  sub_1B9F355F0(0, &qword_1EDC5DC70, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BA4B5480;
  *(inited + 32) = v2;
  *(inited + 40) = v4;
  v6 = sub_1BA0564F8(a1);
  v8 = v7;
  v9 = swift_initStackObject();
  *(v9 + 16) = xmmword_1BA4B5480;
  *(v9 + 32) = v6;
  *(v9 + 40) = v8;
  v10 = sub_1BA058188(a1);
  v12 = v11;
  result = swift_initStackObject();
  *(result + 16) = xmmword_1BA4B5480;
  *(result + 32) = v10;
  *(result + 40) = v12;
  v25 = inited;
  v26 = v9;
  v14 = 32;
  v27 = result;
  v15 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v16 = *&v24[v14];
    v17 = *(v16 + 16);
    v18 = *(v15 + 16);
    v19 = v18 + v17;
    if (__OFADD__(v18, v17))
    {
      break;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result && v19 <= *(v15 + 24) >> 1)
    {
      if (*(v16 + 16))
      {
        goto LABEL_13;
      }
    }

    else
    {
      if (v18 <= v19)
      {
        v20 = v18 + v17;
      }

      else
      {
        v20 = v18;
      }

      result = sub_1B9F1E00C(result, v20, 1, v15);
      v15 = result;
      if (*(v16 + 16))
      {
LABEL_13:
        if ((*(v15 + 24) >> 1) - *(v15 + 16) < v17)
        {
          goto LABEL_20;
        }

        sub_1B9F0D9AC(0, &qword_1EDC67F10);
        swift_arrayInitWithCopy();

        if (v17)
        {
          v21 = *(v15 + 16);
          v22 = __OFADD__(v21, v17);
          v23 = v21 + v17;
          if (v22)
          {
            goto LABEL_21;
          }

          *(v15 + 16) = v23;
        }

        goto LABEL_3;
      }
    }

    if (v17)
    {
      goto LABEL_19;
    }

LABEL_3:
    v14 += 8;
    if (v14 == 56)
    {
      sub_1B9F355F0(0, &qword_1EBBEAAD8, MEMORY[0x1E69E62F8]);
      swift_arrayDestroy();
      type metadata accessor for CompoundSectionedDataSource();
      swift_allocObject();
      return CompoundSectionedDataSource.init(_:)(v15);
    }
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_1BA052100(void *a1)
{
  v213 = a1;
  v220 = *MEMORY[0x1E69E9840];
  v196 = sub_1BA4A1798();
  v195 = *(v196 - 8);
  MEMORY[0x1EEE9AC00](v196);
  v194 = &v180 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v197 = type metadata accessor for ContentConfigurationItem();
  v3 = *(v197 - 8);
  MEMORY[0x1EEE9AC00](v197);
  v184 = &v180 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v183 = &v180 - v6;
  MEMORY[0x1EEE9AC00](v7);
  v182 = &v180 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v181 = &v180 - v10;
  sub_1B9F2F7BC(0, &qword_1EDC6B770, MEMORY[0x1E69DC0D8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v191 = &v180 - v12;
  v212 = sub_1BA4A4428();
  v214 = *(v212 - 8);
  MEMORY[0x1EEE9AC00](v212);
  v190 = &v180 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v180 - v15;
  sub_1B9F2F7BC(0, &qword_1EBBEAB08, type metadata accessor for ContentConfigurationItem, MEMORY[0x1E69E6F90]);
  v17 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v200 = *(v3 + 72);
  v188 = 2 * v200;
  v189 = 3 * v200;
  v180 = 6 * v200;
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1BA4B9A80;
  v193 = v18;
  v192 = v17;
  v19 = v18 + v17;
  v20 = [a1 pluginPackage];
  v209 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();

  sub_1BA4A4198();
  sub_1BA4A43B8();
  v21 = objc_opt_self();
  v210 = *MEMORY[0x1E69DDD80];
  v22 = v21;
  v23 = [v21 preferredFontForTextStyle_];
  v24 = sub_1BA4A4238();
  sub_1BA4A41E8();
  v24(&v217, 0);
  v25 = objc_opt_self();
  v211 = v25;
  v26 = [v25 secondaryLabelColor];
  v27 = sub_1BA4A4238();
  sub_1BA4A41F8();
  v27(&v217, 0);

  sub_1BA4A41A8();
  v209 = *MEMORY[0x1E69DDCF8];
  v28 = v22;
  v29 = [v22 preferredFontForTextStyle_];
  v30 = sub_1BA4A4318();
  sub_1BA4A41E8();
  v30(&v217, 0);
  v31 = [v25 labelColor];
  v32 = sub_1BA4A4318();
  sub_1BA4A41F8();
  v32(&v217, 0);
  v33 = MEMORY[0x1E69DC110];
  v34 = v212;
  *(v19 + 96) = v212;
  *(v19 + 104) = v33;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v19 + 72));
  v36 = v214;
  v207 = *(v214 + 16);
  v208 = v214 + 16;
  v207(boxed_opaque_existential_1, v16, v34);
  v37 = v197;
  v38 = *(v197 + 40);
  v206 = sub_1BA4A4168();
  v39 = *(v206 - 8);
  v205 = *(v39 + 56);
  v204 = v39 + 56;
  v205(v19 + v38, 1, 1, v206);
  v40 = *(v36 + 8);
  v214 = v36 + 8;
  v203 = v40;
  v219 = 0;
  v217 = 0u;
  v218 = 0u;
  v40(v16, v34);
  v202 = sub_1B9F2F31C;
  sub_1BA058FF0(&v217, v19 + 16, sub_1B9F2F31C);
  *(v19 + v37[12]) = 0;
  *(v19 + v37[13]) = 0;
  strcpy(v19, "pluginPackage");
  *(v19 + 14) = -4864;
  *(v19 + 112) = 0;
  *(v19 + 120) = MEMORY[0x1E69E7CC0];
  *(v19 + 56) = 0;
  *(v19 + 64) = 0;
  v41 = (v19 + v37[11]);
  *v41 = 0;
  v41[1] = 0;
  v201 = sub_1B9F2F31C;
  sub_1BA059058(&v217, sub_1B9F2F31C);

  v42 = v19 + v200;
  v187 = 0x80000001BA4E1DC0;
  v43 = [v213 uniqueIdentifier];
  v186 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  v185 = v44;

  sub_1BA4A4198();
  sub_1BA4A43B8();
  v45 = v28;
  v198 = v28;
  v46 = [v28 preferredFontForTextStyle_];
  v47 = sub_1BA4A4238();
  sub_1BA4A41E8();
  v47(&v217, 0);
  v48 = v211;
  v49 = [v211 secondaryLabelColor];
  v50 = sub_1BA4A4238();
  sub_1BA4A41F8();
  v50(&v217, 0);

  sub_1BA4A41A8();
  v51 = v19;
  v199 = v19;
  v52 = v197;
  v53 = [v45 preferredFontForTextStyle_];
  v54 = sub_1BA4A4318();
  sub_1BA4A41E8();
  v54(&v217, 0);
  v55 = [v48 labelColor];
  v56 = sub_1BA4A4318();
  sub_1BA4A41F8();
  v56(&v217, 0);
  v57 = v212;
  *(v42 + 96) = v212;
  *(v42 + 104) = MEMORY[0x1E69DC110];
  v58 = __swift_allocate_boxed_opaque_existential_1((v42 + 72));
  v207(v58, v16, v57);
  v205(v42 + v52[10], 1, 1, v206);
  v219 = 0;
  v217 = 0u;
  v218 = 0u;
  v203(v16, v57);
  sub_1BA058FF0(&v217, v42 + 16, v202);
  *(v42 + v52[12]) = 0;
  *(v42 + v52[13]) = 0;
  *v42 = 0xD000000000000010;
  *(v42 + 8) = v187;
  *(v42 + 112) = 0;
  *(v42 + 120) = MEMORY[0x1E69E7CC0];
  *(v42 + 56) = 0;
  *(v42 + 64) = 0;
  v59 = (v42 + v52[11]);
  *v59 = 0;
  v59[1] = 0;
  sub_1BA059058(&v217, v201);

  v60 = v51 + v188;
  v61 = [v213 contentKindRawValue];
  v188 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  v187 = v62;

  sub_1BA4A4198();
  sub_1BA4A43B8();
  v63 = v198;
  v64 = [v198 preferredFontForTextStyle_];
  v65 = sub_1BA4A4238();
  sub_1BA4A41E8();
  v65(&v217, 0);
  v66 = v211;
  v67 = [v211 secondaryLabelColor];
  v68 = sub_1BA4A4238();
  sub_1BA4A41F8();
  v68(&v217, 0);

  sub_1BA4A41A8();
  v69 = [v63 preferredFontForTextStyle_];
  v70 = sub_1BA4A4318();
  sub_1BA4A41E8();
  v70(&v217, 0);
  v71 = [v66 labelColor];
  v72 = sub_1BA4A4318();
  sub_1BA4A41F8();
  v72(&v217, 0);
  v73 = v212;
  *(v60 + 96) = v212;
  *(v60 + 104) = MEMORY[0x1E69DC110];
  v74 = __swift_allocate_boxed_opaque_existential_1((v60 + 72));
  v207(v74, v16, v73);
  v205(v60 + v52[10], 1, 1, v206);
  v219 = 0;
  v217 = 0u;
  v218 = 0u;
  v203(v16, v73);
  sub_1BA058FF0(&v217, v60 + 16, v202);
  *(v60 + v52[12]) = 0;
  *(v60 + v52[13]) = 0;
  *v60 = 0x4B746E65746E6F63;
  *(v60 + 8) = 0xEB00000000646E69;
  *(v60 + 112) = 0;
  *(v60 + 120) = MEMORY[0x1E69E7CC0];
  *(v60 + 56) = 0;
  *(v60 + 64) = 0;
  v75 = (v60 + v52[11]);
  *v75 = 0;
  v75[1] = 0;
  sub_1BA059058(&v217, v201);

  v76 = v199 + v189;
  *&v217 = sub_1BA4A2718();
  *(&v217 + 1) = v77;
  LOBYTE(v218) = v78;
  v189 = sub_1BA4A6808();
  sub_1BA4A4198();
  sub_1BA4A43B8();
  v79 = v198;
  v80 = [v198 preferredFontForTextStyle_];
  v81 = sub_1BA4A4238();
  sub_1BA4A41E8();
  v81(&v217, 0);
  v82 = v211;
  v83 = [v211 secondaryLabelColor];
  v84 = sub_1BA4A4238();
  sub_1BA4A41F8();
  v84(&v217, 0);

  sub_1BA4A41A8();
  v85 = [v79 preferredFontForTextStyle_];
  v86 = sub_1BA4A4318();
  sub_1BA4A41E8();
  v86(&v217, 0);
  v87 = [v82 labelColor];
  v88 = sub_1BA4A4318();
  sub_1BA4A41F8();
  v88(&v217, 0);
  v89 = v212;
  *(v76 + 96) = v212;
  *(v76 + 104) = MEMORY[0x1E69DC110];
  v90 = __swift_allocate_boxed_opaque_existential_1((v76 + 72));
  v207(v90, v16, v89);
  v205(v76 + v52[10], 1, 1, v206);
  v219 = 0;
  v217 = 0u;
  v218 = 0u;
  v203(v16, v89);
  sub_1BA058FF0(&v217, v76 + 16, v202);
  *(v76 + v52[12]) = 0;
  *(v76 + v52[13]) = 0;
  strcpy(v76, "userInterface");
  *(v76 + 14) = -4864;
  *(v76 + 112) = 0;
  *(v76 + 120) = MEMORY[0x1E69E7CC0];
  *(v76 + 56) = 0;
  *(v76 + 64) = 0;
  v91 = (v76 + v52[11]);
  *v91 = 0;
  v91[1] = 0;
  sub_1BA059058(&v217, v201);

  v92 = v199 + 4 * v200;
  v93 = [v213 favoriteStatusRawValue];
  v189 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();

  sub_1BA4A4198();
  sub_1BA4A43B8();
  v94 = v198;
  v95 = [v198 preferredFontForTextStyle_];
  v96 = sub_1BA4A4238();
  sub_1BA4A41E8();
  v96(&v217, 0);
  v97 = v211;
  v98 = [v211 secondaryLabelColor];
  v99 = sub_1BA4A4238();
  sub_1BA4A41F8();
  v99(&v217, 0);

  sub_1BA4A41A8();
  v100 = [v94 preferredFontForTextStyle_];
  v101 = sub_1BA4A4318();
  sub_1BA4A41E8();
  v101(&v217, 0);
  v102 = [v97 labelColor];
  v103 = sub_1BA4A4318();
  sub_1BA4A41F8();
  v103(&v217, 0);
  v104 = v212;
  *(v92 + 96) = v212;
  *(v92 + 104) = MEMORY[0x1E69DC110];
  v105 = __swift_allocate_boxed_opaque_existential_1((v92 + 72));
  v207(v105, v16, v104);
  v205(v92 + v52[10], 1, 1, v206);
  v219 = 0;
  v217 = 0u;
  v218 = 0u;
  v203(v16, v104);
  sub_1BA058FF0(&v217, v92 + 16, v202);
  *(v92 + v52[12]) = 0;
  *(v92 + v52[13]) = 0;
  strcpy(v92, "favoriteStatus");
  *(v92 + 15) = -18;
  *(v92 + 112) = 0;
  *(v92 + 120) = MEMORY[0x1E69E7CC0];
  *(v92 + 56) = 0;
  *(v92 + 64) = 0;
  v106 = (v92 + v52[11]);
  *v106 = 0;
  v106[1] = 0;
  sub_1BA059058(&v217, v201);

  v107 = [v213 pinnedContentIdentifier];
  if (v107)
  {
    v108 = v107;
    _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  }

  v202 = 0x80000001BA4E5D80;
  v109 = v190;
  sub_1BA4A4198();
  v201 = 0xD000000000000017;
  sub_1BA4A43B8();
  v110 = [v94 preferredFontForTextStyle_];
  v111 = sub_1BA4A4238();
  sub_1BA4A41E8();
  v111(&v217, 0);
  v112 = v211;
  v113 = [v211 secondaryLabelColor];
  v114 = sub_1BA4A4238();
  sub_1BA4A41F8();
  v114(&v217, 0);
  v115 = v199 + 5 * v200;

  sub_1BA4A41A8();
  v116 = [v94 preferredFontForTextStyle_];
  v117 = sub_1BA4A4318();
  sub_1BA4A41E8();
  v117(&v217, 0);
  v118 = [v112 labelColor];
  v119 = sub_1BA4A4318();
  sub_1BA4A41F8();
  v119(&v217, 0);
  v120 = v212;
  *(&v218 + 1) = v212;
  v219 = MEMORY[0x1E69DC110];
  v121 = __swift_allocate_boxed_opaque_existential_1(&v217);
  v207(v121, v109, v120);
  v122 = v191;
  v205(v191, 1, 1, v206);
  v216 = 0;
  memset(v215, 0, sizeof(v215));
  v203(v109, v120);
  sub_1BA058FF0(v215, v115 + 16, sub_1B9F2F31C);
  *(v115 + v52[12]) = 0;
  *(v115 + v52[13]) = 0;
  v123 = v202;
  *v115 = v201;
  *(v115 + 8) = v123;
  sub_1B9F1134C(&v217, v115 + 72);
  *(v115 + 112) = 0;
  *(v115 + 120) = MEMORY[0x1E69E7CC0];
  sub_1B9F2F728(v122, v115 + v52[10]);
  *(v115 + 56) = 0;
  *(v115 + 64) = 0;
  v124 = (v115 + v52[11]);
  *v124 = 0;
  v124[1] = 0;
  sub_1BA059058(v215, sub_1B9F2F31C);

  v125 = v213;
  v126 = [v213 userData];
  if (v126)
  {
    v127 = v126;
    v128 = sub_1BA4A1608();
    v130 = v129;

    sub_1B9F2BB4C(v128, v130);
    v131 = [v125 userData];
    v132 = v193;
    v133 = v192;
    if (v131)
    {
      v134 = v131;
      v135 = sub_1BA4A1608();
      v137 = v136;
    }

    else
    {
      v135 = 0;
      v137 = 0xF000000000000000;
    }

    *&v217 = v135;
    *(&v217 + 1) = v137;
    sub_1B9F216C8(0, &unk_1EDC6E268, MEMORY[0x1E6969080], MEMORY[0x1E69E6720]);
    v139 = sub_1BA4A6808();
    v140 = swift_allocObject();
    *(v140 + 16) = v125;
    v141 = v125;
    v142 = v181;
    sub_1BA053D10(0x6174614472657375, 0xE800000000000000, v139, sub_1BA0590B8, v140, v181);

    v143 = v182;
    sub_1BA058FF0(v142, v182, type metadata accessor for ContentConfigurationItem);
    v138 = sub_1BA27FA78(1uLL, 7, 1, v132);
    sub_1BA059058(v142, type metadata accessor for ContentConfigurationItem);
    v138[2] = 7;
    sub_1BA058CEC(v143, v138 + v133 + v180);
  }

  else
  {
    v138 = v193;
    v133 = v192;
  }

  v144 = [v125 actionHandlerUserData];
  if (v144)
  {
    v145 = v144;
    v146 = sub_1BA4A1608();
    v148 = v147;

    sub_1B9F2BB4C(v146, v148);
    v149 = [v125 actionHandlerUserData];
    if (v149)
    {
      v150 = v149;
      v151 = sub_1BA4A1608();
      v153 = v152;
    }

    else
    {
      v151 = 0;
      v153 = 0xF000000000000000;
    }

    *&v217 = v151;
    *(&v217 + 1) = v153;
    sub_1B9F216C8(0, &unk_1EDC6E268, MEMORY[0x1E6969080], MEMORY[0x1E69E6720]);
    v154 = sub_1BA4A6808();
    v155 = swift_allocObject();
    *(v155 + 16) = v125;
    v156 = v125;
    v157 = v183;
    sub_1BA053D10(0xD000000000000015, 0x80000001BA4E5DA0, v154, sub_1BA058FCC, v155, v183);

    v158 = v184;
    sub_1BA058FF0(v157, v184, type metadata accessor for ContentConfigurationItem);
    v160 = v138[2];
    v159 = v138[3];
    if (v160 >= v159 >> 1)
    {
      v138 = sub_1BA27FA78(v159 > 1, v160 + 1, 1, v138);
    }

    sub_1BA059058(v157, type metadata accessor for ContentConfigurationItem);
    v138[2] = v160 + 1;
    sub_1BA058CEC(v158, v138 + v133 + v160 * v200);
  }

  v161 = sub_1B9FE5788(v138);

  v162 = v194;
  sub_1BA4A1788();
  v163 = sub_1BA4A1748();
  v165 = v164;
  v166 = *(v195 + 8);
  v167 = v196;
  v166(v162, v196);
  sub_1B9F1C5F0(MEMORY[0x1E69E7CC0]);

  v169 = Array<A>.identifierToIndexDict()(v168);

  sub_1B9F216C8(0, &qword_1EDC5DC90, &type metadata for ArrayDataSourceSection, MEMORY[0x1E69E6F90]);
  v170 = swift_allocObject();
  *(v170 + 16) = xmmword_1BA4B5480;
  *(v170 + 32) = 0;
  *(v170 + 40) = 0;
  *(v170 + 48) = v161;
  *(v170 + 56) = v169;
  *(v170 + 64) = v163;
  *(v170 + 72) = v165;
  *&v217 = 0x3C53447961727241;
  *(&v217 + 1) = 0xE800000000000000;
  sub_1BA4A1788();
  v171 = sub_1BA4A1748();
  v173 = v172;
  v166(v162, v167);
  MEMORY[0x1BFAF1350](v171, v173);

  MEMORY[0x1BFAF1350](62, 0xE100000000000000);
  v174 = v217;
  type metadata accessor for ArrayDataSource();
  swift_allocObject();
  v175 = sub_1B9F348D8(v170, v174, *(&v174 + 1));

  v176 = swift_allocObject();
  v176[2] = sub_1BA05459C;
  v176[3] = 0;
  v176[4] = v175;
  sub_1BA058DE4(0, &qword_1EBBEAB10, type metadata accessor for ArrayDataSource, &protocol witness table for ArrayDataSource, type metadata accessor for DataSourceWithLayout);
  v177 = swift_allocObject();
  *(v177 + 16) = v175;
  v178 = v175[6];
  *(v177 + 24) = v175[5];
  *(v177 + 32) = v178;
  *(v177 + 40) = 0;
  *(v177 + 48) = sub_1BA058F6C;
  *(v177 + 56) = v176;

  return v177;
}

uint64_t sub_1BA053D10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v53 = a5;
  v59 = a4;
  v55 = a3;
  v9 = MEMORY[0x1E69E6720];
  sub_1B9F2F7BC(0, &qword_1EDC6B770, MEMORY[0x1E69DC0D8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v56 = &v46 - v11;
  sub_1B9F2F7BC(0, &qword_1EDC6B780, MEMORY[0x1E69DBF38], v9);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v50 = &v46 - v13;
  v14 = sub_1BA4A3FB8();
  v51 = *(v14 - 8);
  v52 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v48 = &v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_1BA4A3F18();
  v47 = *(v49 - 8);
  MEMORY[0x1EEE9AC00](v49);
  v46 = &v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1BA4A4428();
  v54 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v46 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA4A4198();

  v57 = a1;
  v58 = a2;
  sub_1BA4A43B8();
  v20 = objc_opt_self();
  v21 = [v20 preferredFontForTextStyle_];
  v22 = sub_1BA4A4238();
  sub_1BA4A41E8();
  v22(&v63, 0);
  v23 = objc_opt_self();
  v24 = [v23 secondaryLabelColor];
  v25 = sub_1BA4A4238();
  sub_1BA4A41F8();
  v25(&v63, 0);

  sub_1BA4A41A8();
  v26 = [v20 preferredFontForTextStyle_];
  v27 = sub_1BA4A4318();
  sub_1BA4A41E8();
  v27(&v63, 0);
  v28 = [v23 labelColor];
  v29 = sub_1BA4A4318();
  sub_1BA4A41F8();
  v29(&v63, 0);
  v30 = v54;
  v64 = v17;
  v65 = MEMORY[0x1E69DC110];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v63);
  v32 = *(v30 + 16);
  v55 = v17;
  v32(boxed_opaque_existential_1, v19, v17);
  if (v59)
  {
    sub_1B9F2F7BC(0, &qword_1EDC6B430, MEMORY[0x1E69DBF68], MEMORY[0x1E69E6F90]);
    sub_1BA4A3FE8();
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_1BA4B5480;
    v34 = v47;
    v35 = v46;
    v36 = v49;
    (*(v47 + 104))(v46, *MEMORY[0x1E69DBF28], v49);
    v37 = sub_1BA4A3F48();
    (*(*(v37 - 8) + 56))(v50, 1, 1, v37);
    v38 = v48;
    sub_1BA4A3FA8();
    sub_1BA4A3F78();
    (*(v51 + 8))(v38, v52);
    (*(v34 + 8))(v35, v36);
  }

  else
  {
    v33 = MEMORY[0x1E69E7CC0];
  }

  v39 = sub_1BA4A4168();
  v40 = v56;
  (*(*(v39 - 8) + 56))(v56, 1, 1, v39);
  v62 = 0;
  v60 = 0u;
  v61 = 0u;
  if (v59)
  {
    v41 = v53;

    sub_1BA059058(&v60, sub_1B9F2F31C);
    *(&v61 + 1) = &type metadata for BasicCellSelectionHandler;
    v62 = &off_1F381BCC8;
    *&v60 = v59;
    *(&v60 + 1) = v41;
    LOBYTE(v61) = 2;
  }

  (*(v30 + 8))(v19, v55);
  sub_1BA058FF0(&v60, a6 + 16, sub_1B9F2F31C);
  v42 = type metadata accessor for ContentConfigurationItem();
  *(a6 + v42[12]) = 0;
  *(a6 + v42[13]) = 0;
  v43 = v58;
  *a6 = v57;
  *(a6 + 8) = v43;
  sub_1B9F1134C(&v63, a6 + 72);
  *(a6 + 112) = 0;
  *(a6 + 120) = v33;
  sub_1B9F2F728(v40, a6 + v42[10]);
  *(a6 + 56) = 0;
  *(a6 + 64) = 0;
  v44 = (a6 + v42[11]);
  *v44 = 0;
  v44[1] = 0;

  return sub_1BA059058(&v60, sub_1B9F2F31C);
}

void sub_1BA0544B4(void *a1, id a2, SEL *a3)
{
  v4 = [a2 *a3];
  if (v4)
  {
    v5 = v4;
    v6 = sub_1BA4A1608();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0xF000000000000000;
  }

  v9 = type metadata accessor for InternalFeedItemDataPropertyViewController();
  v10 = objc_allocWithZone(v9);
  v11 = &v10[OBJC_IVAR____TtC18HealthExperienceUI42InternalFeedItemDataPropertyViewController_data];
  *v11 = v6;
  v11[1] = v8;
  v15.receiver = v10;
  v15.super_class = v9;
  v12 = objc_msgSendSuper2(&v15, sel_initWithNibName_bundle_, 0, 0);
  v13 = [a1 navigationController];
  if (v13)
  {
    v14 = v13;
    [v13 pushViewController:v12 animated:1];
  }
}

BOOL sub_1BA0545C0(uint64_t a1, uint64_t a2)
{
  sub_1BA058FF0(a1, v8, sub_1BA058C84);
  sub_1BA4A7D28();
  sub_1B9FDC768(v8);
  __swift_destroy_boxed_opaque_existential_1(v9);
  sub_1BA058FF0(a2, v8, sub_1BA058C84);
  v3 = sub_1BA4A7D28();
  v5 = v4;
  sub_1B9FDC768(v8);
  __swift_destroy_boxed_opaque_existential_1(v9);
  v8[0] = v3;
  v8[1] = v5;
  sub_1B9F252FC();
  v6 = sub_1BA4A7B78();

  return v6 == -1;
}

uint64_t sub_1BA0546BC()
{
  v0 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  sub_1BA162FA4(v0, v1);
}

void *sub_1BA054708(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  if (*a3 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for ListLayoutConfiguration();
  __swift_project_value_buffer(v6, a4);
  return ListLayoutConfiguration.layout(for:)(a2);
}

void sub_1BA0547C0()
{
  v6.receiver = v0;
  v6.super_class = type metadata accessor for InternalFeedItemDetailViewController();
  objc_msgSendSuper2(&v6, sel_viewDidLoad);
  v1 = sub_1BA4A6758();
  [v0 setTitle_];

  v2 = [v0 navigationItem];
  v3 = [objc_allocWithZone(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:0 target:v0 action:sel_didTapDone_];
  [v2 setRightBarButtonItem_];

  sub_1B9F23FB0();
  v4 = [v0 collectionView];
  if (v4)
  {
    v5 = v4;
    CompoundSectionedDataSource.registerCells(for:)(v4);
  }

  else
  {
    __break(1u);
  }
}

id sub_1BA054A18()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for InternalFeedItemDetailViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1BA054A80(void **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1BA442ED0(v2);
  }

  v3 = v2[2];
  v5[0] = (v2 + 4);
  v5[1] = v3;
  result = sub_1BA055134(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_1BA054AEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  result = a4();
  if (!result)
  {
    sub_1BA4A7DF8();

    sub_1BA058DE4(0, &qword_1EDC68D60, type metadata accessor for SharingEntryProfileInformationDataSource, &protocol witness table for MutableArrayDataSource, type metadata accessor for MappedDataSource);

    v5 = sub_1BA4A6808();
    MEMORY[0x1BFAF1350](v5);

    sub_1B9FF806C();
    swift_allocError();
    *v6 = 0xD000000000000065;
    *(v6 + 8) = 0x80000001BA4E5F60;
    *(v6 + 16) = 1;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1BA054C14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  result = a4();
  if (!result)
  {
    sub_1BA4A7DF8();

    v5 = sub_1BA4A6808();
    MEMORY[0x1BFAF1350](v5);

    sub_1B9FF806C();
    swift_allocError();
    *v6 = 0xD000000000000083;
    *(v6 + 8) = 0x80000001BA4E5ED0;
    *(v6 + 16) = 1;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1BA054D20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  result = a4();
  if (!result)
  {
    sub_1BA4A7DF8();

    v5 = sub_1BA4A6808();
    MEMORY[0x1BFAF1350](v5);

    sub_1B9FF806C();
    swift_allocError();
    *v6 = 0xD000000000000086;
    *(v6 + 8) = 0x80000001BA4E5FD0;
    *(v6 + 16) = 1;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1BA054E2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  result = a4();
  if (!result)
  {
    sub_1BA4A7DF8();

    v5 = sub_1BA4A6808();
    MEMORY[0x1BFAF1350](v5);

    sub_1B9FF806C();
    swift_allocError();
    *v6 = 0xD00000000000004BLL;
    *(v6 + 8) = 0x80000001BA4E5E80;
    *(v6 + 16) = 1;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1BA054F38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  result = a4();
  if (!result)
  {
    sub_1BA4A7DF8();

    type metadata accessor for ArrayDataSource();

    v5 = sub_1BA4A6808();
    MEMORY[0x1BFAF1350](v5);

    sub_1B9FF806C();
    swift_allocError();
    *v6 = 0xD00000000000003ALL;
    *(v6 + 8) = 0x80000001BA4E5DC0;
    *(v6 + 16) = 1;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1BA055028(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  result = a4();
  if (!result)
  {
    sub_1BA4A7DF8();

    v5 = sub_1BA4A6808();
    MEMORY[0x1BFAF1350](v5);

    sub_1B9FF806C();
    swift_allocError();
    *v6 = 0xD00000000000005ALL;
    *(v6 + 8) = 0x80000001BA4E5CA0;
    *(v6 + 16) = 1;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1BA055134(uint64_t *a1)
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
        sub_1BA058C84();
        v5 = sub_1BA4A6B98();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_1BA05544C(v7, v8, a1, v4);
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
    return sub_1BA055230(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1BA055230(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 72 * a3;
    v6 = result - a3;
LABEL_5:
    v29 = a3;
    v19 = v6;
    v20 = v5;
    while (1)
    {
      sub_1BA058FF0(v5, &v24, sub_1BA058C84);
      v7 = (v5 - 72);
      sub_1BA058FF0(v5 - 72, v23, sub_1BA058C84);
      sub_1BA058FF0(&v24, v21, sub_1BA058C84);
      sub_1BA4A7D28();
      sub_1B9FDC768(v21);
      __swift_destroy_boxed_opaque_existential_1(v22);
      sub_1BA058FF0(v23, v21, sub_1BA058C84);
      v8 = sub_1BA4A7D28();
      v10 = v9;
      sub_1B9FDC768(v21);
      __swift_destroy_boxed_opaque_existential_1(v22);
      v21[0] = v8;
      v21[1] = v10;
      sub_1B9F252FC();
      v11 = sub_1BA4A7B78();

      sub_1BA059058(v23, sub_1BA058C84);
      result = sub_1BA059058(&v24, sub_1BA058C84);
      if (v11 != -1)
      {
LABEL_4:
        a3 = v29 + 1;
        v5 = v20 + 72;
        v6 = v19 - 1;
        if (v29 + 1 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v4)
      {
        break;
      }

      v25 = *(v5 + 16);
      v26 = *(v5 + 32);
      v27 = *(v5 + 48);
      v28 = *(v5 + 64);
      v24 = *v5;
      v12 = *(v5 - 24);
      *(v5 + 32) = *(v5 - 40);
      *(v5 + 48) = v12;
      *(v5 + 64) = *(v5 - 8);
      v13 = *(v5 - 56);
      *v5 = *v7;
      *(v5 + 16) = v13;
      *v7 = v24;
      v14 = v25;
      v15 = v26;
      v16 = v27;
      *(v5 - 8) = v28;
      *(v5 - 40) = v15;
      *(v5 - 24) = v16;
      *(v5 - 56) = v14;
      v5 -= 72;
      if (__CFADD__(v6++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1BA05544C(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3;
  v103 = result;
  v7 = a3[1];
  if (v7 < 1)
  {
    v10 = MEMORY[0x1E69E7CC0];
LABEL_91:
    v9 = *v103;
    if (!*v103)
    {
      goto LABEL_132;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      goto LABEL_126;
    }

    goto LABEL_93;
  }

  v8 = a4;
  v9 = 0;
  v10 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v11 = v9;
    if ((v9 + 1) >= v7)
    {
      v20 = v9 + 1;
    }

    else
    {
      v108 = v7;
      v12 = *v6;
      sub_1BA058FF0(*v6 + 72 * (v9 + 1), &v114, sub_1BA058C84);
      sub_1BA058FF0(v12 + 72 * v9, v113, sub_1BA058C84);
      v106 = sub_1BA0545C0(&v114, v113);
      if (v5)
      {
        sub_1BA059058(v113, sub_1BA058C84);
        sub_1BA059058(&v114, sub_1BA058C84);
      }

      sub_1BA059058(v113, sub_1BA058C84);
      result = sub_1BA059058(&v114, sub_1BA058C84);
      v13 = v9 + 2;
      v100 = v9;
      v14 = 72 * v9;
      v15 = v12 + 72 * v9 + 144;
      while (v108 != v13)
      {
        sub_1BA058FF0(v15, &v114, sub_1BA058C84);
        sub_1BA058FF0(v15 - 72, v113, sub_1BA058C84);
        sub_1BA058FF0(&v114, &v110, sub_1BA058C84);
        sub_1BA4A7D28();
        sub_1B9FDC768(&v110);
        __swift_destroy_boxed_opaque_existential_1(v112);
        sub_1BA058FF0(v113, &v110, sub_1BA058C84);
        v16 = sub_1BA4A7D28();
        v18 = v17;
        sub_1B9FDC768(&v110);
        __swift_destroy_boxed_opaque_existential_1(v112);
        v110 = v16;
        v111 = v18;
        sub_1B9F252FC();
        v19 = sub_1BA4A7B78();

        v9 = sub_1BA058C84;
        sub_1BA059058(v113, sub_1BA058C84);
        result = sub_1BA059058(&v114, sub_1BA058C84);
        ++v13;
        v15 += 72;
        if (((v106 ^ (v19 != -1)) & 1) == 0)
        {
          v20 = v13 - 1;
          v8 = a4;
          goto LABEL_12;
        }
      }

      v8 = a4;
      v20 = v108;
LABEL_12:
      v6 = a3;
      v11 = v100;
      if (v106)
      {
        if (v20 < v100)
        {
          goto LABEL_125;
        }

        if (v100 < v20)
        {
          v98 = v10;
          v21 = v20;
          v22 = 72 * v20 - 72;
          v9 = v20;
          v23 = v100;
          do
          {
            if (v23 != --v21)
            {
              v24 = *a3;
              if (!*a3)
              {
                goto LABEL_129;
              }

              v25 = v24 + v22;
              v115 = *(v24 + v14 + 16);
              v116 = *(v24 + v14 + 32);
              v117 = *(v24 + v14 + 48);
              v118 = *(v24 + v14 + 64);
              v114 = *(v24 + v14);
              result = memmove((v24 + v14), (v24 + v22), 0x48uLL);
              *(v25 + 16) = v115;
              *(v25 + 32) = v116;
              *(v25 + 48) = v117;
              *(v25 + 64) = v118;
              *v25 = v114;
            }

            ++v23;
            v22 -= 72;
            v14 += 72;
          }

          while (v23 < v21);
          v10 = v98;
          v8 = a4;
          v20 = v9;
        }
      }
    }

    v26 = v6[1];
    if (v20 < v26)
    {
      if (__OFSUB__(v20, v11))
      {
        goto LABEL_122;
      }

      if (v20 - v11 < v8)
      {
        if (__OFADD__(v11, v8))
        {
          goto LABEL_123;
        }

        if (&v11[v8] >= v26)
        {
          v27 = v6[1];
        }

        else
        {
          v27 = &v11[v8];
        }

        if (v27 < v11)
        {
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          result = sub_1BA442D80(v10);
          v10 = result;
LABEL_93:
          v119 = v10;
          v91 = *(v10 + 16);
          if (v91 >= 2)
          {
            while (1)
            {
              v92 = *v6;
              if (!*v6)
              {
                goto LABEL_130;
              }

              v6 = (v91 - 1);
              v93 = *(v10 + 16 * v91);
              v94 = v10;
              v95 = *(v10 + 16 * (v91 - 1) + 32);
              v10 = *(v10 + 16 * (v91 - 1) + 40);
              sub_1BA055D8C((v92 + 72 * v93), (v92 + 72 * v95), (v92 + 72 * v10), v9);
              if (v5)
              {
              }

              if (v10 < v93)
              {
                goto LABEL_119;
              }

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v94 = sub_1BA442D80(v94);
              }

              if (v91 - 2 >= *(v94 + 2))
              {
                goto LABEL_120;
              }

              v96 = &v94[16 * v91];
              *v96 = v93;
              *(v96 + 1) = v10;
              v119 = v94;
              result = sub_1BA442CF4(v6);
              v10 = v119;
              v91 = *(v119 + 16);
              v6 = a3;
              if (v91 <= 1)
              {
              }
            }
          }
        }

        if (v20 != v27)
        {
          break;
        }
      }
    }

    v28 = v20;
    if (v20 < v11)
    {
      goto LABEL_121;
    }

LABEL_31:
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1BA27F470(0, *(v10 + 16) + 1, 1, v10);
      v10 = result;
    }

    v30 = *(v10 + 16);
    v29 = *(v10 + 24);
    v31 = v30 + 1;
    if (v30 >= v29 >> 1)
    {
      result = sub_1BA27F470((v29 > 1), v30 + 1, 1, v10);
      v10 = result;
    }

    *(v10 + 16) = v31;
    v32 = v10 + 16 * v30;
    *(v32 + 32) = v11;
    *(v32 + 40) = v28;
    v33 = *v103;
    if (!*v103)
    {
      goto LABEL_131;
    }

    v9 = v28;
    if (v30)
    {
      while (1)
      {
        v34 = v31 - 1;
        if (v31 >= 4)
        {
          break;
        }

        if (v31 == 3)
        {
          v35 = *(v10 + 32);
          v36 = *(v10 + 40);
          v45 = __OFSUB__(v36, v35);
          v37 = v36 - v35;
          v38 = v45;
LABEL_50:
          if (v38)
          {
            goto LABEL_110;
          }

          v51 = (v10 + 16 * v31);
          v53 = *v51;
          v52 = v51[1];
          v54 = __OFSUB__(v52, v53);
          v55 = v52 - v53;
          v56 = v54;
          if (v54)
          {
            goto LABEL_113;
          }

          v57 = (v10 + 32 + 16 * v34);
          v59 = *v57;
          v58 = v57[1];
          v45 = __OFSUB__(v58, v59);
          v60 = v58 - v59;
          if (v45)
          {
            goto LABEL_116;
          }

          if (__OFADD__(v55, v60))
          {
            goto LABEL_117;
          }

          if (v55 + v60 >= v37)
          {
            if (v37 < v60)
            {
              v34 = v31 - 2;
            }

            goto LABEL_71;
          }

          goto LABEL_64;
        }

        v61 = (v10 + 16 * v31);
        v63 = *v61;
        v62 = v61[1];
        v45 = __OFSUB__(v62, v63);
        v55 = v62 - v63;
        v56 = v45;
LABEL_64:
        if (v56)
        {
          goto LABEL_112;
        }

        v64 = v10 + 16 * v34;
        v66 = *(v64 + 32);
        v65 = *(v64 + 40);
        v45 = __OFSUB__(v65, v66);
        v67 = v65 - v66;
        if (v45)
        {
          goto LABEL_115;
        }

        if (v67 < v55)
        {
          goto LABEL_3;
        }

LABEL_71:
        v72 = v34 - 1;
        if (v34 - 1 >= v31)
        {
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
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
          goto LABEL_124;
        }

        if (!*v6)
        {
          goto LABEL_128;
        }

        v73 = *(v10 + 32 + 16 * v72);
        v74 = *(v10 + 32 + 16 * v34 + 8);
        sub_1BA055D8C((*v6 + 72 * v73), (*v6 + 72 * *(v10 + 32 + 16 * v34)), (*v6 + 72 * v74), v33);
        if (v5)
        {
        }

        if (v74 < v73)
        {
          goto LABEL_106;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = sub_1BA442D80(v10);
        }

        if (v72 >= *(v10 + 16))
        {
          goto LABEL_107;
        }

        v75 = v10 + 16 * v72;
        *(v75 + 32) = v73;
        *(v75 + 40) = v74;
        v119 = v10;
        result = sub_1BA442CF4(v34);
        v10 = v119;
        v31 = *(v119 + 16);
        if (v31 <= 1)
        {
          goto LABEL_3;
        }
      }

      v39 = v10 + 32 + 16 * v31;
      v40 = *(v39 - 64);
      v41 = *(v39 - 56);
      v45 = __OFSUB__(v41, v40);
      v42 = v41 - v40;
      if (v45)
      {
        goto LABEL_108;
      }

      v44 = *(v39 - 48);
      v43 = *(v39 - 40);
      v45 = __OFSUB__(v43, v44);
      v37 = v43 - v44;
      v38 = v45;
      if (v45)
      {
        goto LABEL_109;
      }

      v46 = (v10 + 16 * v31);
      v48 = *v46;
      v47 = v46[1];
      v45 = __OFSUB__(v47, v48);
      v49 = v47 - v48;
      if (v45)
      {
        goto LABEL_111;
      }

      v45 = __OFADD__(v37, v49);
      v50 = v37 + v49;
      if (v45)
      {
        goto LABEL_114;
      }

      if (v50 >= v42)
      {
        v68 = (v10 + 32 + 16 * v34);
        v70 = *v68;
        v69 = v68[1];
        v45 = __OFSUB__(v69, v70);
        v71 = v69 - v70;
        if (v45)
        {
          goto LABEL_118;
        }

        if (v37 < v71)
        {
          v34 = v31 - 2;
        }

        goto LABEL_71;
      }

      goto LABEL_50;
    }

LABEL_3:
    v7 = v6[1];
    v8 = a4;
    if (v9 >= v7)
    {
      goto LABEL_91;
    }
  }

  v97 = v5;
  v99 = v10;
  v76 = *v6;
  v77 = *v6 + 72 * v20;
  v101 = v11;
  v109 = v20;
  v78 = v11 - v20;
  v105 = v27;
LABEL_82:
  v79 = v78;
  v107 = v77;
  while (1)
  {
    sub_1BA058FF0(v77, &v114, sub_1BA058C84);
    v80 = (v77 - 72);
    sub_1BA058FF0(v77 - 72, v113, sub_1BA058C84);
    sub_1BA058FF0(&v114, &v110, sub_1BA058C84);
    sub_1BA4A7D28();
    sub_1B9FDC768(&v110);
    __swift_destroy_boxed_opaque_existential_1(v112);
    sub_1BA058FF0(v113, &v110, sub_1BA058C84);
    v81 = sub_1BA4A7D28();
    v83 = v82;
    sub_1B9FDC768(&v110);
    __swift_destroy_boxed_opaque_existential_1(v112);
    v110 = v81;
    v111 = v83;
    sub_1B9F252FC();
    v84 = sub_1BA4A7B78();

    v9 = sub_1BA058C84;
    sub_1BA059058(v113, sub_1BA058C84);
    result = sub_1BA059058(&v114, sub_1BA058C84);
    if (v84 != -1)
    {
LABEL_81:
      v77 = v107 + 72;
      --v78;
      v28 = v105;
      if (++v109 != v105)
      {
        goto LABEL_82;
      }

      v5 = v97;
      v10 = v99;
      v6 = a3;
      v11 = v101;
      if (v105 < v101)
      {
        goto LABEL_121;
      }

      goto LABEL_31;
    }

    if (!v76)
    {
      break;
    }

    v115 = *(v77 + 16);
    v116 = *(v77 + 32);
    v117 = *(v77 + 48);
    v118 = *(v77 + 64);
    v114 = *v77;
    v85 = *(v77 - 24);
    *(v77 + 32) = *(v77 - 40);
    *(v77 + 48) = v85;
    *(v77 + 64) = *(v77 - 8);
    v86 = *(v77 - 56);
    *v77 = *v80;
    *(v77 + 16) = v86;
    *v80 = v114;
    v87 = v115;
    v88 = v116;
    v89 = v117;
    *(v77 - 8) = v118;
    *(v77 - 40) = v88;
    *(v77 - 24) = v89;
    *(v77 - 56) = v87;
    v77 -= 72;
    if (__CFADD__(v79++, 1))
    {
      goto LABEL_81;
    }
  }

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
  return result;
}

uint64_t sub_1BA055D8C(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 72;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 72;
  if (v9 >= v11)
  {
    if (a4 != __src || &__src[72 * v11] <= a4)
    {
      memmove(a4, __src, 72 * v11);
      v6 = __src;
    }

    v44 = &v4[72 * v11];
    if (v10 >= 72 && v6 > v7)
    {
      v35 = v7;
      v38 = v4;
      do
      {
        v36 = v6;
        v22 = (v6 - 72);
        v23 = v44 - 72;
        v5 -= 72;
        __srca = v6 - 72;
        while (1)
        {
          v26 = v23 + 72;
          v27 = v5 + 72;
          sub_1BA058FF0(v23, v43, sub_1BA058C84);
          sub_1BA058FF0(v22, v42, sub_1BA058C84);
          sub_1BA058FF0(v43, &v39, sub_1BA058C84);
          sub_1BA4A7D28();
          sub_1B9FDC768(&v39);
          __swift_destroy_boxed_opaque_existential_1(v41);
          sub_1BA058FF0(v42, &v39, sub_1BA058C84);
          v28 = sub_1BA4A7D28();
          v30 = v29;
          sub_1B9FDC768(&v39);
          __swift_destroy_boxed_opaque_existential_1(v41);
          v39 = v28;
          v40 = v30;
          sub_1B9F252FC();
          v31 = sub_1BA4A7B78();

          sub_1BA059058(v42, sub_1BA058C84);
          sub_1BA059058(v43, sub_1BA058C84);
          if (v31 == -1)
          {
            break;
          }

          if (v27 != v26)
          {
            memmove(v5, v23, 0x48uLL);
          }

          v24 = v23 - 72;
          v5 -= 72;
          v22 = __srca;
          v25 = v23 > v38;
          v23 -= 72;
          if (!v25)
          {
            v44 = v24 + 72;
            v32 = v36;
LABEL_36:
            v4 = v38;
            goto LABEL_37;
          }
        }

        v32 = __srca;
        if (v27 != v36)
        {
          memmove(v5, __srca, 0x48uLL);
        }

        v44 = v23 + 72;
        if (v26 <= v38)
        {
          break;
        }

        v6 = __srca;
      }

      while (__srca > v35);
      v44 = v23 + 72;
      goto LABEL_36;
    }

    v32 = v6;
  }

  else
  {
    if (a4 != __dst || &__dst[72 * v9] <= a4)
    {
      memmove(a4, __dst, 72 * v9);
      v6 = __src;
    }

    v44 = &v4[72 * v9];
    if (v8 >= 72 && v6 < v5)
    {
      while (1)
      {
        v13 = v6;
        sub_1BA058FF0(v6, v43, sub_1BA058C84);
        sub_1BA058FF0(v4, v42, sub_1BA058C84);
        sub_1BA058FF0(v43, &v39, sub_1BA058C84);
        sub_1BA4A7D28();
        v14 = v4;
        sub_1B9FDC768(&v39);
        __swift_destroy_boxed_opaque_existential_1(v41);
        sub_1BA058FF0(v42, &v39, sub_1BA058C84);
        v15 = sub_1BA4A7D28();
        v17 = v16;
        sub_1B9FDC768(&v39);
        __swift_destroy_boxed_opaque_existential_1(v41);
        v39 = v15;
        v40 = v17;
        sub_1B9F252FC();
        v18 = sub_1BA4A7B78();

        sub_1BA059058(v42, sub_1BA058C84);
        sub_1BA059058(v43, sub_1BA058C84);
        if (v18 != -1)
        {
          break;
        }

        v19 = v13;
        v20 = v7 == v13;
        v13 += 72;
        if (!v20)
        {
          goto LABEL_9;
        }

LABEL_10:
        v7 += 72;
        if (v4 < v44)
        {
          v6 = v13;
          if (v13 < v5)
          {
            continue;
          }
        }

        v32 = v7;
        goto LABEL_37;
      }

      v19 = v4;
      v4 += 72;
      if (v7 == v14)
      {
        goto LABEL_10;
      }

LABEL_9:
      memmove(v7, v19, 0x48uLL);
      goto LABEL_10;
    }

    v32 = v7;
  }

LABEL_37:
  v33 = (v44 - v4) / 72;
  if (v32 != v4 || v32 >= &v4[72 * v33])
  {
    memmove(v32, v4, 72 * v33);
  }

  return 1;
}

uint64_t sub_1BA0562C0(uint64_t a1)
{
  v2 = MEMORY[0x1E6969530];
  sub_1B9F2F7BC(0, &qword_1EDC6E440, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v15 - v4;
  v6 = sub_1BA4A1728();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA058EEC(a1, v5, &qword_1EDC6E440, v2);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_1BA058E7C(v5, &qword_1EDC6E440, MEMORY[0x1E6969530]);
    return 0x3E6C696E3CLL;
  }

  else
  {
    (*(v7 + 32))(v9, v5, v6);
    v11 = objc_opt_self();
    v12 = sub_1BA4A16B8();
    v13 = [v11 localizedStringFromDate:v12 dateStyle:3 timeStyle:3];

    v14 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    (*(v7 + 8))(v9, v6);
    return v14;
  }
}

uint64_t sub_1BA0564F8(void *a1)
{
  v191 = sub_1BA4A1798();
  v190 = *(v191 - 8);
  MEMORY[0x1EEE9AC00](v191);
  v189 = &v177 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v214 = type metadata accessor for ContentConfigurationItem();
  v3 = *(v214 - 8);
  MEMORY[0x1EEE9AC00](v214);
  v196 = &v177 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v180 = sub_1BA4A0FA8();
  v179 = *(v180 - 8);
  MEMORY[0x1EEE9AC00](v180);
  v178 = &v177 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v213 = sub_1BA4A4428();
  v215 = *(v213 - 8);
  MEMORY[0x1EEE9AC00](v213);
  v7 = &v177 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1E6969530];
  v9 = MEMORY[0x1E69E6720];
  sub_1B9F2F7BC(0, &qword_1EDC6E440, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v185 = &v177 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v212 = &v177 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v177 - v15;
  v199 = MEMORY[0x1E69A3D00];
  sub_1B9F2F7BC(0, &qword_1EDC6E220, MEMORY[0x1E69A3D00], v9);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v187 = &v177 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v186 = &v177 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v184 = &v177 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v183 = &v177 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v195 = &v177 - v26;
  sub_1BA4A2788();
  sub_1B9F2F7BC(0, &qword_1EBBEAB08, type metadata accessor for ContentConfigurationItem, MEMORY[0x1E69E6F90]);
  v27 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v211 = *(v3 + 72);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_1BA4B9A90;
  v188 = v28;
  v29 = v28 + v27;
  v201 = a1;
  v30 = [a1 dateSubmitted];
  sub_1BA4A16F8();

  v31 = sub_1BA4A1728();
  v32 = *(v31 - 8);
  v33 = *(v32 + 56);
  v194 = v31;
  v193 = v33;
  v192 = v32 + 56;
  (v33)(v16, 0, 1);
  v208 = sub_1BA0562C0(v16);
  sub_1BA058E7C(v16, &qword_1EDC6E440, v8);
  sub_1BA4A4198();
  sub_1BA4A43B8();
  v34 = objc_opt_self();
  v209 = *MEMORY[0x1E69DDD80];
  v35 = [v34 preferredFontForTextStyle_];
  v36 = sub_1BA4A4238();
  sub_1BA4A41E8();
  v36(&v217, 0);
  v37 = objc_opt_self();
  v38 = [v37 secondaryLabelColor];
  v39 = sub_1BA4A4238();
  v200 = v34;
  sub_1BA4A41F8();
  v39(&v217, 0);

  sub_1BA4A41A8();
  v208 = *MEMORY[0x1E69DDCF8];
  v40 = [v34 preferredFontForTextStyle_];
  v41 = sub_1BA4A4318();
  sub_1BA4A41E8();
  v41(&v217, 0);
  v210 = v37;
  v42 = [v37 labelColor];
  v43 = sub_1BA4A4318();
  sub_1BA4A41F8();
  v44 = v214;
  v43(&v217, 0);
  v45 = v183;
  v46 = MEMORY[0x1E69DC110];
  v47 = v213;
  *(v29 + 96) = v213;
  *(v29 + 104) = v46;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v29 + 72));
  v49 = v215;
  v50 = *(v215 + 16);
  v51 = v47;
  v207 = v215 + 16;
  v206 = v50;
  v50(boxed_opaque_existential_1, v7, v47);
  v52 = v44[10];
  v53 = sub_1BA4A4168();
  v54 = *(v53 - 8);
  v55 = *(v54 + 56);
  v205 = v53;
  v204 = v55;
  v203 = v54 + 56;
  (v55)(v29 + v52, 1, 1);
  v56 = *(v49 + 8);
  v219 = 0;
  v217 = 0u;
  v218 = 0u;
  v57 = v51;
  v58 = v29;
  v215 = v49 + 8;
  v202 = v56;
  v56(v7, v57);
  sub_1BA058FF0(&v217, v29 + 16, sub_1B9F2F31C);
  *(v29 + v44[12]) = 0;
  *(v29 + v44[13]) = 0;
  strcpy(v29, "dateSubmitted");
  *(v29 + 14) = -4864;
  *(v29 + 112) = 0;
  *(v29 + 120) = MEMORY[0x1E69E7CC0];
  *(v29 + 56) = 0;
  *(v29 + 64) = 0;
  v59 = (v29 + v44[11]);
  *v59 = 0;
  v59[1] = 0;
  sub_1BA059058(&v217, sub_1B9F2F31C);

  sub_1BA058EEC(v195, v45, &qword_1EDC6E220, v199);
  v60 = sub_1BA4A22F8();
  v61 = *(v60 - 1);
  v62 = *(v61 + 48);
  v198 = v61 + 48;
  v197 = v62;
  v63 = v62(v45, 1, v60);
  v199 = v60;
  if (v63 == 1)
  {
    sub_1BA058E7C(v45, &qword_1EDC6E220, MEMORY[0x1E69A3D00]);
    v64 = 1;
    v65 = v212;
  }

  else
  {
    v66 = v178;
    sub_1BA4A22E8();
    (*(v61 + 8))(v45, v60);
    v67 = v212;
    sub_1BA4A0F88();
    (*(v179 + 8))(v66, v180);
    v64 = 0;
    v65 = v67;
  }

  v193(v65, v64, 1, v194);
  v68 = &v58[v211];
  v183 = 0x80000001BA4E5D00;
  v181 = sub_1BA0562C0(v65);
  sub_1BA058E7C(v65, &qword_1EDC6E440, MEMORY[0x1E6969530]);
  sub_1BA4A4198();
  v182 = 0xD000000000000011;
  sub_1BA4A43B8();
  v69 = v200;
  v70 = [v200 preferredFontForTextStyle_];
  v212 = v58;
  v71 = sub_1BA4A4238();
  sub_1BA4A41E8();
  v71(&v217, 0);
  v72 = v210;
  v73 = [v210 secondaryLabelColor];
  v74 = sub_1BA4A4238();
  sub_1BA4A41F8();
  v74(&v217, 0);
  v75 = v69;

  sub_1BA4A41A8();
  v76 = [v69 preferredFontForTextStyle_];
  v77 = sub_1BA4A4318();
  sub_1BA4A41E8();
  v77(&v217, 0);
  v78 = [v72 labelColor];
  v79 = sub_1BA4A4318();
  sub_1BA4A41F8();
  v79(&v217, 0);
  v80 = v213;
  *(v68 + 12) = v213;
  *(v68 + 13) = MEMORY[0x1E69DC110];
  v81 = __swift_allocate_boxed_opaque_existential_1(v68 + 9);
  v206(v81, v7, v80);
  v82 = v214;
  v204(&v68[*(v214 + 40)], 1, 1, v205);
  v219 = 0;
  v217 = 0u;
  v218 = 0u;
  v202(v7, v80);
  sub_1BA058FF0(&v217, (v68 + 16), sub_1B9F2F31C);
  *&v68[v82[12]] = 0;
  *&v68[v82[13]] = 0;
  v83 = v183;
  *v68 = v182;
  *(v68 + 1) = v83;
  v68[112] = 0;
  *(v68 + 15) = MEMORY[0x1E69E7CC0];
  *(v68 + 7) = 0;
  *(v68 + 8) = 0;
  v84 = &v68[v82[11]];
  v85 = 1;
  *v84 = 0;
  *(v84 + 1) = 0;
  sub_1BA059058(&v217, sub_1B9F2F31C);

  v86 = v184;
  sub_1BA4A2788();
  v87 = v197(v86, 1, v199);
  v88 = v185;
  if (!v87)
  {
    v89 = v178;
    sub_1BA4A22E8();
    sub_1BA4A0F58();
    (*(v179 + 8))(v89, v180);
    v85 = 0;
  }

  sub_1BA058E7C(v86, &qword_1EDC6E220, MEMORY[0x1E69A3D00]);
  v193(v88, v85, 1, v194);
  v90 = &v212[2 * v211];
  v194 = sub_1BA0562C0(v88);
  v193 = v91;
  sub_1BA058E7C(v88, &qword_1EDC6E440, MEMORY[0x1E6969530]);
  sub_1BA4A4198();
  sub_1BA4A43B8();
  v92 = [v75 preferredFontForTextStyle_];
  v93 = v75;
  v94 = sub_1BA4A4238();
  sub_1BA4A41E8();
  v94(&v217, 0);
  v95 = v210;
  v96 = [v210 secondaryLabelColor];
  v97 = sub_1BA4A4238();
  sub_1BA4A41F8();
  v97(&v217, 0);

  sub_1BA4A41A8();
  v98 = [v93 preferredFontForTextStyle_];
  v99 = sub_1BA4A4318();
  sub_1BA4A41E8();
  v99(&v217, 0);
  v100 = [v95 labelColor];
  v101 = sub_1BA4A4318();
  sub_1BA4A41F8();
  v101(&v217, 0);
  *(v90 + 12) = v80;
  *(v90 + 13) = MEMORY[0x1E69DC110];
  v102 = __swift_allocate_boxed_opaque_existential_1(v90 + 9);
  v206(v102, v7, v80);
  v204(&v90[v82[10]], 1, 1, v205);
  v219 = 0;
  v217 = 0u;
  v218 = 0u;
  v202(v7, v80);
  sub_1BA058FF0(&v217, (v90 + 16), sub_1B9F2F31C);
  *&v90[v82[12]] = 0;
  *&v90[v82[13]] = 0;
  *v90 = 0x746E6176656C6572;
  *(v90 + 1) = 0xEF65746144646E45;
  v90[112] = 0;
  *(v90 + 15) = MEMORY[0x1E69E7CC0];
  *(v90 + 7) = 0;
  *(v90 + 8) = 0;
  v103 = &v90[v82[11]];
  *v103 = 0;
  *(v103 + 1) = 0;
  sub_1BA059058(&v217, sub_1B9F2F31C);

  v104 = v186;
  sub_1BA4A2788();
  if (v197(v104, 1, v199))
  {
    sub_1BA058E7C(v104, &qword_1EDC6E220, MEMORY[0x1E69A3D00]);
    v105 = v211;
    v106 = v200;
    v107 = v209;
  }

  else
  {
    sub_1BA4A22C8();
    v109 = v108;
    sub_1BA058E7C(v104, &qword_1EDC6E220, MEMORY[0x1E69A3D00]);
    if (qword_1EBBE8290 != -1)
    {
      swift_once();
    }

    v110 = [qword_1EBBEAAC0 stringFromTimeInterval_];
    v105 = v211;
    v106 = v200;
    v107 = v209;
    if (v110)
    {
      v111 = v110;
      _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    }
  }

  v112 = &v212[3 * v105];
  v194 = 0x80000001BA4E5D20;
  sub_1BA4A4198();
  sub_1BA4A43B8();
  v113 = [v106 preferredFontForTextStyle_];
  v114 = sub_1BA4A4238();
  sub_1BA4A41E8();
  v114(&v217, 0);
  v115 = v210;
  v116 = [v210 secondaryLabelColor];
  v117 = sub_1BA4A4238();
  sub_1BA4A41F8();
  v117(&v217, 0);
  v118 = v200;

  sub_1BA4A41A8();
  v119 = [v118 preferredFontForTextStyle_];
  v120 = sub_1BA4A4318();
  sub_1BA4A41E8();
  v120(&v217, 0);
  v121 = [v115 labelColor];
  v122 = sub_1BA4A4318();
  sub_1BA4A41F8();
  v122(&v217, 0);
  v123 = v213;
  *(v112 + 12) = v213;
  *(v112 + 13) = MEMORY[0x1E69DC110];
  v124 = __swift_allocate_boxed_opaque_existential_1(v112 + 9);
  v206(v124, v7, v123);
  v125 = v214;
  v204(&v112[*(v214 + 40)], 1, 1, v205);
  v219 = 0;
  v217 = 0u;
  v218 = 0u;
  v202(v7, v123);
  sub_1BA058FF0(&v217, (v112 + 16), sub_1B9F2F31C);
  *&v112[v125[12]] = 0;
  *&v112[v125[13]] = 0;
  v126 = v194;
  *v112 = 0xD000000000000012;
  *(v112 + 1) = v126;
  v112[112] = 0;
  *(v112 + 15) = MEMORY[0x1E69E7CC0];
  *(v112 + 7) = 0;
  *(v112 + 8) = 0;
  v127 = &v112[v125[11]];
  *v127 = 0;
  *(v127 + 1) = 0;
  sub_1BA059058(&v217, sub_1B9F2F31C);

  v128 = v187;
  sub_1BA4A2788();
  if (v197(v128, 1, v199))
  {
    sub_1BA058E7C(v128, &qword_1EDC6E220, MEMORY[0x1E69A3D00]);
    v129 = v211;
    v130 = v209;
    v131 = 0x3E6C696E3CLL;
  }

  else
  {
    sub_1BA4A22D8();
    v133 = v132;
    sub_1BA058E7C(v128, &qword_1EDC6E220, MEMORY[0x1E69A3D00]);
    if (qword_1EBBE8290 != -1)
    {
      swift_once();
    }

    v134 = [qword_1EBBEAAC0 stringFromTimeInterval_];
    v129 = v211;
    v130 = v209;
    if (v134)
    {
      v135 = v134;
      v201 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();

      goto LABEL_19;
    }

    v131 = 0xD000000000000012;
  }

  v201 = v131;
LABEL_19:
  v136 = &v212[4 * v129];
  v211 = 0x80000001BA4E5D40;
  sub_1BA4A4198();
  v209 = 0xD000000000000014;
  sub_1BA4A43B8();
  v137 = [v118 preferredFontForTextStyle_];
  v138 = v118;
  v139 = sub_1BA4A4238();
  sub_1BA4A41E8();
  v139(&v217, 0);
  v140 = v210;
  v141 = [v210 secondaryLabelColor];
  v142 = sub_1BA4A4238();
  sub_1BA4A41F8();
  v142(&v217, 0);

  sub_1BA4A41A8();
  v143 = [v138 preferredFontForTextStyle_];
  v144 = sub_1BA4A4318();
  sub_1BA4A41E8();
  v144(&v217, 0);
  v145 = [v140 labelColor];
  v146 = sub_1BA4A4318();
  sub_1BA4A41F8();
  v146(&v217, 0);
  v147 = v213;
  *(v136 + 12) = v213;
  *(v136 + 13) = MEMORY[0x1E69DC110];
  v148 = __swift_allocate_boxed_opaque_existential_1(v136 + 9);
  v206(v148, v7, v147);
  v149 = v214;
  v204(&v136[*(v214 + 40)], 1, 1, v205);
  v219 = 0;
  v217 = 0u;
  v218 = 0u;
  v202(v7, v147);
  sub_1BA058FF0(&v217, (v136 + 16), sub_1B9F2F31C);
  *&v136[v149[12]] = 0;
  *&v136[v149[13]] = 0;
  v150 = v211;
  *v136 = v209;
  *(v136 + 1) = v150;
  v136[112] = 0;
  v151 = MEMORY[0x1E69E7CC0];
  *(v136 + 15) = MEMORY[0x1E69E7CC0];
  *(v136 + 7) = 0;
  *(v136 + 8) = 0;
  v152 = &v136[v149[11]];
  *v152 = 0;
  *(v152 + 1) = 0;
  sub_1BA059058(&v217, sub_1B9F2F31C);

  static ContentConfigurationItem.makeListHeaderConfiguration(text:automationIdentifier:)(0x7365746144, 0xE500000000000000, 0, 0, v196);
  v153 = sub_1B9FE5788(v188);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v154 = v189;
  sub_1BA4A1788();
  v155 = sub_1BA4A1748();
  v157 = v156;
  v158 = *(v190 + 8);
  v159 = v191;
  v158(v154, v191);
  sub_1B9F1C5F0(v151);

  v161 = Array<A>.identifierToIndexDict()(v160);

  sub_1B9F216C8(0, &qword_1EDC5DC90, &type metadata for ArrayDataSourceSection, MEMORY[0x1E69E6F90]);
  v162 = swift_allocObject();
  *(v162 + 16) = xmmword_1BA4B5480;
  *(v162 + 32) = 0;
  *(v162 + 40) = 0;
  *(v162 + 48) = v153;
  *(v162 + 56) = v161;
  *(v162 + 64) = v155;
  *(v162 + 72) = v157;
  *&v217 = 0x3C53447961727241;
  *(&v217 + 1) = 0xE800000000000000;
  sub_1BA4A1788();
  v163 = sub_1BA4A1748();
  v165 = v164;
  v158(v154, v159);
  MEMORY[0x1BFAF1350](v163, v165);

  MEMORY[0x1BFAF1350](62, 0xE100000000000000);
  v166 = v217;
  type metadata accessor for ArrayDataSource();
  swift_allocObject();
  v167 = sub_1B9F348D8(v162, v166, *(&v166 + 1));

  *(&v218 + 1) = v149;
  v219 = sub_1BA058D50();
  v168 = __swift_allocate_boxed_opaque_existential_1(&v217);
  sub_1BA058CEC(v196, v168);
  sub_1BA058E7C(v195, &qword_1EDC6E220, MEMORY[0x1E69A3D00]);
  sub_1B9F0A534(&v217, &v216);
  v169 = swift_allocObject();
  sub_1B9F1134C(&v216, v169 + 16);
  sub_1BA001A4C(0);
  v170 = swift_allocObject();
  v170[4] = v167;
  v170[5] = sub_1BA0590DC;
  v170[6] = v169;
  v172 = v167[5];
  v171 = v167[6];
  v170[2] = v172;
  v170[3] = v171;

  __swift_destroy_boxed_opaque_existential_1(&v217);
  sub_1BA058DA8(0);
  v173 = swift_allocObject();
  v173[4] = v170;
  v173[5] = sub_1BA0590E0;
  v173[6] = 0;
  v173[2] = v172;
  v173[3] = v171;
  v174 = swift_allocObject();
  v174[2] = sub_1BA0590E4;
  v174[3] = 0;
  v174[4] = v173;
  sub_1BA058DE4(0, &qword_1EBBEAAF8, sub_1BA058DA8, &protocol witness table for CellRegistering<A>, type metadata accessor for DataSourceWithLayout);
  v175 = swift_allocObject();
  *(v175 + 16) = v173;
  *(v175 + 24) = v172;
  *(v175 + 32) = v171;
  *(v175 + 40) = 0;
  *(v175 + 48) = sub_1BA0590E8;
  *(v175 + 56) = v174;
  swift_bridgeObjectRetain_n();

  return v175;
}
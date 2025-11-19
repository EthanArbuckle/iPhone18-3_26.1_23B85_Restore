void *sub_1BA29A714(void *result, unsigned int a2)
{
  if (a2 > 0x7FFFFFFE)
  {
    result[2] = 0;
    result[3] = 0;
    *result = a2 - 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[3] = a2;
  }

  return result;
}

void *sub_1BA29A764(void *a1, uint64_t a2)
{
  v3 = v2;
  v5 = *a2;
  v6 = *(a2 + 8);
  v7 = *(a2 + 16);
  v8 = *(a2 + 24);
  v37 = *(a2 + 32);
  v2[11] = 0;
  v9 = (v2 + 11);
  v2[12] = 0;
  v38 = v5;
  v39 = v6;
  v40 = v7;
  v41 = v8;
  sub_1B9FF2FA4(v5, v6, v7, v8);
  SummarySharingSetupDetailAnalyticsEvent.OnboardingStepDetailsAnalytics.Step.analyticsString.getter();
  v10 = sub_1BA4A6758();

  sub_1B9FF3BFC(v5, v6, v7, v8);
  v2[10] = v10;
  v11 = a1[3];

  if ([v11 BOOLValue])
  {
    v38 = v5;
    v39 = v6;
    v40 = v7;
    v41 = v8;
    v12 = sub_1BA299D78();
    v13 = v12;
    if (v12)
    {
      v12 = sub_1BA0B2740();
    }

    else
    {
      v39 = 0;
      v40 = 0;
    }

    v38 = v13;
    v41 = v12;
    sub_1BA29AA64(&qword_1EBBEFCD8);
    sub_1BA4A2CC8();
    sub_1B9F23224(&v38);
    v16 = sub_1BA4A6758();

    v15 = *v9;
    *v9 = v16;
  }

  else
  {
    sub_1BA29AA64(&qword_1EBBEFCD8);
    sub_1BA4A2CB8();
    v14 = sub_1BA4A6758();

    v15 = *v9;
    *v9 = v14;
  }

  if (v37 == 7)
  {
    sub_1B9FF3BFC(v5, v6, v7, v8);
    v17 = 0;
    v39 = 0;
    v40 = 0;
    v41 = 0;
  }

  else
  {
    v17 = SummarySharingSetupDetailAnalyticsEvent.OnboardingStepDetailsAnalytics.Action.rawValue.getter();
    v41 = sub_1BA0B2740();
    sub_1B9FF3BFC(v5, v6, v7, v8);
  }

  v38 = v17;
  sub_1BA29AA64(&qword_1EBBEFCD8);
  sub_1BA4A2CC8();
  sub_1B9F23224(&v38);
  v18 = sub_1BA4A6758();

  v19 = v3[12];
  v3[12] = v18;

  v20 = a1[2];
  v21 = a1[3];
  v23 = a1[4];
  v22 = a1[5];
  v24 = a1[6];
  v25 = a1[7];
  v27 = a1[8];
  v26 = a1[9];
  v3[2] = v20;
  v3[3] = v21;
  v3[4] = v23;
  v3[5] = v22;
  v3[6] = v24;
  v3[7] = v25;
  v3[8] = v27;
  v3[9] = v26;
  v28 = v22;
  v29 = v24;
  v30 = v25;
  v31 = v27;
  v32 = v26;
  v33 = v20;
  v34 = v21;
  v35 = v23;
  return v3;
}

uint64_t sub_1BA29AA64(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SummarySharingSetupDetailAnalyticsEvent();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1BA29AAC4(uint64_t a1)
{
  v2 = v1;
  sub_1B9F12538();
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(*v2 + 512);
  swift_beginAccess();
  *(v2 + v9) = a1;

  v10 = OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_snapshot;
  swift_beginAccess();
  (*(v6 + 16))(v8, v2 + v10, v5);
  v11 = sub_1BA4A4578();
  (*(v6 + 8))(v8, v5);
  v12 = *(v11 + 16);
  v13 = OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_sections;
  result = swift_beginAccess();
  if (v12)
  {
    v15 = 0;
    v16 = v11 + 40;
    v40 = v12 - 1;
    v17 = MEMORY[0x1E69E7CC0];
    v41 = v11 + 40;
    while (1)
    {
      v18 = (v16 + 16 * v15);
      v19 = v15;
      while (1)
      {
        if (v19 >= *(v11 + 16))
        {
          __break(1u);
          return result;
        }

        v20 = *(v2 + v13);
        if (*(v20 + 16))
        {
          break;
        }

LABEL_4:
        ++v19;
        v18 += 2;
        if (v12 == v19)
        {
          goto LABEL_16;
        }
      }

      v21 = *(v18 - 1);
      v22 = *v18;

      v23 = sub_1B9F24A34(v21, v22);
      if ((v24 & 1) == 0)
      {
        break;
      }

      v25 = (*(v20 + 56) + 48 * v23);
      v26 = v25[1];
      v39 = *v25;
      v27 = v25[2];
      v28 = v25[4];
      v29 = v25[5];
      v35 = v25[3];
      v36 = v28;
      v37 = v26;

      v38 = v27;
      v30 = v35;

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_1B9F21540(0, *(v17 + 16) + 1, 1, v17);
        v17 = result;
      }

      v32 = *(v17 + 16);
      v31 = *(v17 + 24);
      if (v32 >= v31 >> 1)
      {
        result = sub_1B9F21540((v31 > 1), v32 + 1, 1, v17);
        v17 = result;
      }

      v15 = v19 + 1;
      *(v17 + 16) = v32 + 1;
      v33 = (v17 + 48 * v32);
      v34 = v37;
      v33[4] = v39;
      v33[5] = v34;
      v33[6] = v38;
      v33[7] = v30;
      v33[8] = v36;
      v33[9] = v29;
      v16 = v41;
      if (v40 == v19)
      {
        goto LABEL_16;
      }
    }

    goto LABEL_4;
  }

  v17 = MEMORY[0x1E69E7CC0];
LABEL_16:

  sub_1BA0E7F10(v17, 1);
}

void sub_1BA29ADF4()
{
  v1 = sub_1BA4A4428();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = OBJC_IVAR____TtC18HealthExperienceUI16IconWithNameCell_item;
  swift_beginAccess();
  sub_1BA29C2C8(v0 + v5, &v18, &qword_1EDC6E1A0, sub_1B9FCD918);
  if (!*(&v19 + 1))
  {
    sub_1B9F442E8(&v18, &qword_1EDC6E1A0, sub_1B9FCD918, MEMORY[0x1E69E6720], sub_1B9F0D534);
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    goto LABEL_8;
  }

  sub_1B9FCD918();
  if ((swift_dynamicCast() & 1) == 0)
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v13 = 0u;
    v12 = 0u;
    goto LABEL_8;
  }

  if (!*(&v12 + 1))
  {
LABEL_8:
    sub_1B9F442E8(&v12, &unk_1EBBEFCE0, &type metadata for SummarySharingAddDataTypesItem, MEMORY[0x1E69E6720], sub_1B9F23348);
    return;
  }

  v21 = v15;
  v22 = v16;
  v23 = v17;
  v19 = v13;
  v20 = v14;
  v18 = v12;
  v6 = sub_1BA4A6758();
  v7 = [objc_opt_self() systemImageNamed_];

  if (v7)
  {
    MEMORY[0x1BFAF2040]();

    sub_1BA4A43B8();
    v8 = v7;
    sub_1BA4A43D8();
    v9 = sub_1BA4A42D8();
    sub_1BA4A4268();
    v9(&v12, 0);
    sub_1BA4A4348();
    *(&v13 + 1) = v1;
    *&v14 = MEMORY[0x1E69DC110];
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v12);
    (*(v2 + 16))(boxed_opaque_existential_1, v4, v1);
    MEMORY[0x1BFAF1EF0](&v12);

    (*(v2 + 8))(v4, v1);
    sub_1BA29C298(&v18);
  }

  else
  {
    __break(1u);
  }
}

id sub_1BA29B144()
{
  v1 = v0;
  sub_1B9F0D534(0, &qword_1EDC6B770, MEMORY[0x1E69DC0D8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v17 - v6;
  v8 = sub_1BA31D5B4();
  MEMORY[0x1BFAF1F00](v8);
  v9 = sub_1BA4A4168();
  if ((*(*(v9 - 8) + 48))(v7, 1, v9))
  {
    v10 = MEMORY[0x1E69DC0D8];
    sub_1BA29C2C8(v7, v4, &qword_1EDC6B770, MEMORY[0x1E69DC0D8]);
    MEMORY[0x1BFAF1F10](v4);
    sub_1B9F442E8(v7, &qword_1EDC6B770, v10, MEMORY[0x1E69E6720], sub_1B9F0D534);
  }

  else
  {
    v11 = [objc_opt_self() secondarySystemBackgroundColor];
    sub_1BA4A4118();
    MEMORY[0x1BFAF1F10](v7);
  }

  v12 = *MEMORY[0x1E69796E8];
  v13 = [v1 layer];
  [v13 setCornerCurve_];

  v14 = [v1 layer];
  [v14 setCornerRadius_];

  v15 = [v1 layer];
  [v15 setMaskedCorners_];

  return [v1 setClipsToBounds_];
}

id sub_1BA29B3AC()
{
  MEMORY[0x1BFAF2040]();
  sub_1BA4A43B8();
  [objc_allocWithZone(MEMORY[0x1E69DCAB8]) init];
  sub_1BA4A43D8();
  v0 = sub_1BA4A43C8();
  if (!v0)
  {
    return sub_1BA4A43D8();
  }

  v1 = v0;
  result = HKHealthKeyColor();
  if (result)
  {
    v3 = result;
    v4 = [v1 imageWithTintColor_];

    return sub_1BA4A43D8();
  }

  __break(1u);
  return result;
}

id sub_1BA29B54C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SummarySharingAddDataTypesCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1BA29B5CC()
{
  type metadata accessor for SummarySharingAddDataTypesCell();
  sub_1BA29C3B0();
  return sub_1BA4A6808();
}

uint64_t sub_1BA29B604(uint64_t a1)
{
  v2 = sub_1BA29C3F4();

  return MEMORY[0x1EEE0DA58](a1, v2);
}

uint64_t sub_1BA29B650(char *a1)
{
  v2 = v1;
  swift_getObjectType();
  v4 = sub_1BA4A3EA8();
  v76 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v69 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v69 - v8;
  v10 = type metadata accessor for SummarySharingSelectionFlow(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v69 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v69 - v14;
  swift_getObjectType();
  v16 = swift_conformsToProtocol2();
  if (!v16 || !a1)
  {
LABEL_18:
    sub_1BA4A3D88();
    v39 = a1;
    v40 = sub_1BA4A3E88();
    v41 = sub_1BA4A6FA8();

    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      *&v89[0] = v43;
      *v42 = 136315394;
      v44 = sub_1BA4A85D8();
      v46 = sub_1B9F0B82C(v44, v45, v89);

      *(v42 + 4) = v46;
      *(v42 + 12) = 2080;
      v47 = v39;
      v48 = [v47 description];
      v49 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      v75 = v4;
      v51 = v50;

      v52 = sub_1B9F0B82C(v49, v51, v89);

      *(v42 + 14) = v52;
      _os_log_impl(&dword_1B9F07000, v40, v41, "[%s] Presenting view controller %s does not conform to SummarySharingSelectedDataTypesDelegate", v42, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v43, -1, -1);
      MEMORY[0x1BFAF43A0](v42, -1, -1);

      return (*(v76 + 8))(v6, v75);
    }

    else
    {

      return (*(v76 + 8))(v6, v4);
    }
  }

  v74 = v16;
  v75 = v4;
  v73 = v15;
  v17 = OBJC_IVAR____TtC18HealthExperienceUI16IconWithNameCell_item;
  swift_beginAccess();
  sub_1BA29C2C8(v2 + v17, &v77, &qword_1EDC6E1A0, sub_1B9FCD918);
  if (!v79)
  {
    v54 = a1;
    sub_1B9F442E8(&v77, &qword_1EDC6E1A0, sub_1B9FCD918, MEMORY[0x1E69E6720], sub_1B9F0D534);
    v83 = 0u;
    v84 = 0u;
    v85 = 0u;
    v86 = 0u;
    v87 = 0u;
    v88 = 0u;
    goto LABEL_23;
  }

  sub_1B9FCD918();
  v72 = a1;
  if ((swift_dynamicCast() & 1) == 0)
  {
    v87 = 0u;
    v88 = 0u;
    v85 = 0u;
    v86 = 0u;
    v83 = 0u;
    v84 = 0u;
    goto LABEL_23;
  }

  if (!*(&v83 + 1))
  {
LABEL_23:
    sub_1B9F442E8(&v83, &unk_1EBBEFCE0, &type metadata for SummarySharingAddDataTypesItem, MEMORY[0x1E69E6720], sub_1B9F23348);
    sub_1BA4A3D88();
    v55 = v2;
    v56 = sub_1BA4A3E88();
    v57 = sub_1BA4A6FA8();

    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      v74 = swift_slowAlloc();
      *&v83 = v74;
      *v58 = 136315394;
      v59 = sub_1BA4A85D8();
      v61 = sub_1B9F0B82C(v59, v60, &v83);

      *(v58 + 4) = v61;
      *(v58 + 12) = 2080;
      sub_1BA29C2C8(v2 + v17, v89, &qword_1EDC6E1A0, sub_1B9FCD918);
      sub_1B9F0D534(0, &qword_1EDC6E1A0, sub_1B9FCD918, MEMORY[0x1E69E6720]);
      v62 = sub_1BA4A6808();
      v64 = sub_1B9F0B82C(v62, v63, &v83);

      *(v58 + 14) = v64;
      _os_log_impl(&dword_1B9F07000, v56, v57, "[%s] Item was not an AddSummarySharingDataTypesItem: %s", v58, 0x16u);
      v65 = v74;
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v65, -1, -1);
      MEMORY[0x1BFAF43A0](v58, -1, -1);
    }

    else
    {
    }

    return (*(v76 + 8))(v9, v75);
  }

  v89[2] = v85;
  v90[0] = v86;
  v90[1] = v87;
  v90[2] = v88;
  v89[0] = v83;
  v89[1] = v84;
  sub_1B9F0A534(v90 + 8, v82);
  ObjectType = swift_getObjectType();
  v19 = (*(v74 + 8))(ObjectType);
  v20 = [objc_allocWithZone(MEMORY[0x1E696C1C0]) init];
  v21 = v73;
  swift_storeEnumTagMultiPayload();
  v22 = objc_allocWithZone(type metadata accessor for SummarySharingDataTypeSelectionViewController(0));
  *&v22[OBJC_IVAR____TtC18HealthExperienceUI45SummarySharingDataTypeSelectionViewController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v23 = MEMORY[0x1E69E7CC0];
  *&v22[OBJC_IVAR____TtC18HealthExperienceUI45SummarySharingDataTypeSelectionViewController_cancellables] = MEMORY[0x1E69E7CC0];
  sub_1B9F0A534(v82, &v22[OBJC_IVAR____TtC18HealthExperienceUI45SummarySharingDataTypeSelectionViewController_healthExperienceStore]);
  *&v22[OBJC_IVAR____TtC18HealthExperienceUI45SummarySharingDataTypeSelectionViewController_selectedCategories] = 0;
  sub_1B9FF1628(v21, &v22[OBJC_IVAR____TtC18HealthExperienceUI45SummarySharingDataTypeSelectionViewController_selectionFlow]);
  v24 = &v22[OBJC_IVAR____TtC18HealthExperienceUI45SummarySharingDataTypeSelectionViewController_selectedContact];
  *v24 = 0u;
  *(v24 + 1) = 0u;
  *(v24 + 4) = 0;
  *&v22[OBJC_IVAR____TtC18HealthExperienceUI45SummarySharingDataTypeSelectionViewController_selectedContactPhotoPublisher] = 0;
  *&v22[OBJC_IVAR____TtC18HealthExperienceUI45SummarySharingDataTypeSelectionViewController_selectedDataTypesContext] = v19;
  sub_1B9F23348(0, &qword_1EDC6B400, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_1BA4B5470;
  sub_1B9F0A534(v82, v81);
  sub_1B9FF1628(v21, v12);
  v77 = 1;
  type metadata accessor for SummarySharingDataTypeSelectionDataSource(0);
  memset(v80, 0, sizeof(v80));
  v78 = 0u;
  v79 = 0u;
  swift_allocObject();

  v70 = v20;
  *(v25 + 32) = sub_1BA3094BC(v81, v20, v23, 1, 0, v12, v23, 0, 0, &v77, 1u);
  *&v22[OBJC_IVAR____TtC18HealthExperienceUI45SummarySharingDataTypeSelectionViewController_dataTypeSelectionDataSources] = v25;

  v27 = sub_1B9FE98D4(v26);

  v77 = v27;
  sub_1B9FE20B8(v23);
  v28 = v77;
  type metadata accessor for CompoundSectionedDataSource();
  swift_allocObject();
  v29 = CompoundSectionedDataSource.init(_:)(v28);
  v30 = CompoundDataSourceCollectionViewController.init(dataSource:)(v29);
  v71 = v19;
  v77 = *(v19 + 48);
  v31 = MEMORY[0x1E695BF70];
  sub_1BA10E0E4(0, &qword_1EBBEB1A0, MEMORY[0x1E695BF70]);
  sub_1BA10E150(&qword_1EBBEB1A8, &qword_1EBBEB1A0, v31);
  v32 = v30;
  v77 = sub_1BA4A4F98();
  v33 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v6 = swift_allocObject();
  *(v6 + 2) = sub_1BA10E0DC;
  *(v6 + 3) = v33;
  v34 = MEMORY[0x1E695BED0];
  sub_1BA10E0E4(0, &qword_1EBBEB1B0, MEMORY[0x1E695BED0]);
  sub_1BA10E150(&qword_1EBBEB1B8, &qword_1EBBEB1B0, v34);
  sub_1BA4A5148();

  swift_beginAccess();
  sub_1B9F0D534(0, &qword_1EDC5E6C0, MEMORY[0x1E695BF10], MEMORY[0x1E69E62F8]);
  sub_1BA091D04();
  sub_1BA4A4D38();
  swift_endAccess();

  v35 = *&v32[OBJC_IVAR____TtC18HealthExperienceUI45SummarySharingDataTypeSelectionViewController_dataTypeSelectionDataSources];
  if (v35 >> 62)
  {
    goto LABEL_30;
  }

  v36 = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_8:

  if (v36)
  {
    v4 = 0;
    v75 = v35 & 0xFFFFFFFFFFFFFF8;
    v76 = v35 & 0xC000000000000001;
    do
    {
      if (v76)
      {
        a1 = MEMORY[0x1BFAF2860](v4, v35);
        v37 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
LABEL_17:
          __break(1u);
          goto LABEL_18;
        }
      }

      else
      {
        if (v4 >= *(v75 + 16))
        {
          __break(1u);
LABEL_30:
          v36 = sub_1BA4A7CC8();
          goto LABEL_8;
        }

        a1 = *(v35 + 8 * v4 + 32);

        v37 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          goto LABEL_17;
        }
      }

      *(*&a1[qword_1EBBF0538] + OBJC_IVAR____TtCC18HealthExperienceUI41SummarySharingDataTypeSelectionDataSourceP33_90A4BE97C9AD775CAB10EB5F12011C5813Configuration_selectedDataTypesDelegate + 8) = &protocol witness table for SummarySharingDataTypeSelectionViewController;
      swift_unknownObjectWeakAssign();
      type metadata accessor for SummarySharingSelectionContextDelegate();
      v6 = swift_allocObject();
      *(v6 + 3) = 0;
      swift_unknownObjectWeakInit();
      *(v6 + 3) = &protocol witness table for SummarySharingDataTypeSelectionViewController;
      swift_unknownObjectWeakAssign();
      v38 = v32;
      sub_1BA29AAC4(v6);
      sub_1BA2FE7FC();

      ++v4;
    }

    while (v37 != v36);
  }

  sub_1BA10E1EC(v73);
  __swift_destroy_boxed_opaque_existential_1(v82);
  v66 = &v32[OBJC_IVAR____TtC18HealthExperienceUI45SummarySharingDataTypeSelectionViewController_delegate];
  swift_beginAccess();
  *(v66 + 1) = v74;
  v67 = v72;
  swift_unknownObjectWeakAssign();
  v68 = [objc_allocWithZone(MEMORY[0x1E69A4418]) initWithRootViewController_];
  [v67 presentViewController:v68 animated:1 completion:0];

  return sub_1BA29C298(v89);
}

uint64_t sub_1BA29C2C8(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1B9F0D534(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

unint64_t sub_1BA29C35C()
{
  result = qword_1EBBEFCE8;
  if (!qword_1EBBEFCE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEFCE8);
  }

  return result;
}

unint64_t sub_1BA29C3B0()
{
  result = qword_1EBBE9E00;
  if (!qword_1EBBE9E00)
  {
    type metadata accessor for SummarySharingAddDataTypesCell();
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_1EBBE9E00);
  }

  return result;
}

unint64_t sub_1BA29C3F4()
{
  result = qword_1EBBEFCF0;
  if (!qword_1EBBEFCF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEFCF0);
  }

  return result;
}

uint64_t EmptyDataSource.__allocating_init()()
{
  v0 = swift_allocObject();
  EmptyDataSource.init()();
  return v0;
}

uint64_t sub_1BA29C480()
{
  sub_1BA29C6B4();
  swift_allocError();
  return swift_willThrow();
}

uint64_t EmptyDataSource.init()()
{
  v1 = v0;
  v2 = sub_1BA4A1798();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = 0;
  v17 = 0xE000000000000000;
  sub_1BA4A7DF8();

  v16 = 0xD000000000000010;
  v17 = 0x80000001BA4F99D0;
  sub_1BA4A1788();
  v6 = sub_1BA4A1748();
  v8 = v7;
  (*(v3 + 8))(v5, v2);
  MEMORY[0x1BFAF1350](v6, v8);

  MEMORY[0x1BFAF1350](62, 0xE100000000000000);
  v9 = v17;
  *(v0 + 16) = v16;
  *(v0 + 24) = v9;
  sub_1BA4A45D8();
  v10 = OBJC_IVAR____TtC18HealthExperienceUI15EmptyDataSource_changeObservers;
  sub_1B9F15B38();
  v11 = sub_1BA4A7A78();
  v12 = objc_allocWithZone(MEMORY[0x1E696C4F8]);
  v13 = sub_1BA4A6758();
  v14 = [v12 initWithName:v13 loggingCategory:v11];

  *(v1 + v10) = v14;
  return v1;
}

unint64_t sub_1BA29C6B4()
{
  result = qword_1EBBEFCF8;
  if (!qword_1EBBEFCF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEFCF8);
  }

  return result;
}

uint64_t EmptyDataSource.identifier.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t EmptyDataSource.snapshot.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI15EmptyDataSource_snapshot;
  sub_1B9F12538();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

double sub_1BA29C7C0@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t EmptyDataSource.deinit()
{

  v1 = OBJC_IVAR____TtC18HealthExperienceUI15EmptyDataSource_snapshot;
  sub_1B9F12538();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t EmptyDataSource.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC18HealthExperienceUI15EmptyDataSource_snapshot;
  sub_1B9F12538();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1BA29C8FC@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI15EmptyDataSource_snapshot;
  sub_1B9F12538();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for EmptyDataSource()
{
  result = qword_1EDC69030;
  if (!qword_1EDC69030)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BA29C9D8()
{
  sub_1B9F12538();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

unint64_t sub_1BA29CB40()
{
  result = qword_1EBBEFD00;
  if (!qword_1EBBEFD00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEFD00);
  }

  return result;
}

uint64_t static NotificationGenerating.createNotificationEnabledDefaultsPublisher(with:for:)(void *a1, char *a2)
{
  sub_1BA29CD84();
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a2;
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = v9;
  sub_1BA18779C();
  sub_1BA29D23C(&qword_1EDC5F4A8, sub_1BA18779C);
  v11 = a1;
  sub_1BA4A4EC8();
  sub_1BA29D23C(&qword_1EDC5F390, sub_1BA29CD84);
  v12 = sub_1BA4A4F98();
  (*(v6 + 8))(v8, v5);
  return v12;
}

void sub_1BA29CD84()
{
  if (!qword_1EDC5F388)
  {
    sub_1BA18779C();
    sub_1BA29D23C(&qword_1EDC5F4A8, sub_1BA18779C);
    v0 = sub_1BA4A4ED8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC5F388);
    }
  }
}

uint64_t sub_1BA29CE18@<X0>(void *a1@<X0>, int a2@<W1>, uint64_t *a3@<X8>)
{
  v31 = a2;
  v29 = a1;
  v35 = a3;
  sub_1BA29E234(0, &qword_1EDC5F438, MEMORY[0x1E695C000]);
  v4 = *(v3 - 8);
  v33 = v3;
  v34 = v4;
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v27 - v5;
  sub_1BA29E234(0, &qword_1EDC5E078, MEMORY[0x1E695C0B0]);
  v30 = v7;
  v32 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v27 - v8;
  sub_1BA29E288(0, &qword_1EDC5F360, sub_1BA078F34, MEMORY[0x1E695C070]);
  v11 = v10;
  v12 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v27 - v13;
  v28 = [objc_opt_self() defaultCenter];
  sub_1BA29E2EC();
  v15 = sub_1BA4A70E8();
  v16 = type metadata accessor for SharedProfileNotificationSettingsManager();
  v17 = objc_allocWithZone(v16);
  v18 = OBJC_IVAR____TtC18HealthExperienceUI40SharedProfileNotificationSettingsManager_lock;
  sub_1BA4A1C18();
  swift_allocObject();
  *&v17[v18] = sub_1BA4A1C08();
  v19 = OBJC_IVAR____TtC18HealthExperienceUI40SharedProfileNotificationSettingsManager__currentValues;
  v37 = sub_1B9FDB444(MEMORY[0x1E69E7CC0]);
  sub_1BA078F34();
  sub_1BA4A4EE8();
  (*(v12 + 32))(&v17[v19], v14, v11);
  v20 = v29;
  *&v17[OBJC_IVAR____TtC18HealthExperienceUI40SharedProfileNotificationSettingsManager_healthStore] = v29;
  v21 = [objc_allocWithZone(MEMORY[0x1E696C210]) initWithCategory:1 domainName:*MEMORY[0x1E696C890] healthStore:v20];
  *&v17[OBJC_IVAR____TtC18HealthExperienceUI40SharedProfileNotificationSettingsManager_legacyKeyValueDomain] = v21;
  *&v17[OBJC_IVAR____TtC18HealthExperienceUI40SharedProfileNotificationSettingsManager_notificationCenter] = v28;
  *&v17[OBJC_IVAR____TtC18HealthExperienceUI40SharedProfileNotificationSettingsManager_userDefaults] = v15;
  v36.receiver = v17;
  v36.super_class = v16;
  v22 = objc_msgSendSuper2(&v36, sel_init);
  LOBYTE(v37) = v31;
  LOBYTE(v37) = sub_1BA3E529C(&v37) & 1;
  sub_1BA4A4E78();
  v23 = v33;
  MEMORY[0x1BFAEF890](sub_1B9FAB580, 0, v33);
  (*(v34 + 8))(v6, v23);
  sub_1BA29E338();
  v24 = v30;
  v25 = sub_1BA4A4F98();

  result = (*(v32 + 8))(v9, v24);
  *v35 = v25;
  return result;
}

uint64_t sub_1BA29D23C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t static NotificationGenerating.createNotificationUserInfo(for:with:uuid:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1BA29E288(0, &unk_1EDC6AE50, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v20 - v7;
  v9 = sub_1BA4A1798();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA4A3648();
  v13 = MEMORY[0x1BFAEE060](a1, a2);
  sub_1BA29D4CC(a3, v8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_1BA29D560(v8);
  }

  else
  {
    (*(v10 + 32))(v12, v8, v9);
    *&v22 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    *(&v22 + 1) = v14;
    v15 = MEMORY[0x1E69E6158];
    sub_1BA4A7D58();
    v16 = sub_1BA4A1748();
    v23 = v15;
    *&v22 = v16;
    *(&v22 + 1) = v17;
    sub_1B9F46920(&v22, v21);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = v13;
    sub_1B9FF1AE4(v21, v24, isUniquelyReferenced_nonNull_native);
    sub_1B9FDC768(v24);
    (*(v10 + 8))(v12, v9);
    return v20;
  }

  return v13;
}

uint64_t sub_1BA29D4CC(uint64_t a1, uint64_t a2)
{
  sub_1BA29E288(0, &unk_1EDC6AE50, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BA29D560(uint64_t a1)
{
  sub_1BA29E288(0, &unk_1EDC6AE50, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t AnyPublisher<>.executeNotificationRequest()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = swift_allocObject();
  v9[2] = a2;
  v9[3] = a3;
  v9[4] = a4;
  v9[5] = a5;
  v10 = swift_allocObject();
  v10[2] = a2;
  v10[3] = a3;
  v10[4] = a4;
  v10[5] = a5;
  sub_1BA4A4D18();
  swift_getWitnessTable();
  sub_1BA4A4F88();
}

uint64_t sub_1BA29D704(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v54 = a2;
  v5 = sub_1BA4A3EA8();
  v55 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v49 - v9;
  v11 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v53 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v49 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v49 - v18;
  v20 = sub_1BA4A4CF8();
  v21 = MEMORY[0x1EEE9AC00](v20);
  v23 = &v49 - v22;
  (*(v24 + 16))(&v49 - v22, a1, v21);
  if ((*(v11 + 48))(v23, 1, a3) == 1)
  {
    _s18HealthExperienceUI0A44ChecklistStagedFeatureStatusFeedItemProviderPAAE6logger2os6LoggerVvg_0();
    v25 = sub_1BA4A3E88();
    v26 = sub_1BA4A6FC8();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v56 = v28;
      *v27 = 136446210;
      sub_1BA4A4D18();
      v29 = sub_1BA4A85D8();
      v31 = sub_1B9F0B82C(v29, v30, &v56);

      *(v27 + 4) = v31;
      _os_log_impl(&dword_1B9F07000, v25, v26, "[%{public}s] Successfully executed notification request", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v28);
      MEMORY[0x1BFAF43A0](v28, -1, -1);
      MEMORY[0x1BFAF43A0](v27, -1, -1);
    }

    return (*(v55 + 8))(v7, v5);
  }

  else
  {
    (*(v11 + 32))(v19, v23, a3);
    _s18HealthExperienceUI0A44ChecklistStagedFeatureStatusFeedItemProviderPAAE6logger2os6LoggerVvg_0();
    v33 = *(v11 + 16);
    v52 = v19;
    v33(v16);
    v34 = sub_1BA4A3E88();
    v35 = sub_1BA4A6FA8();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v51 = v5;
      v37 = v36;
      v50 = swift_slowAlloc();
      v56 = v50;
      *v37 = 136446466;
      sub_1BA4A4D18();
      v38 = sub_1BA4A85D8();
      v40 = sub_1B9F0B82C(v38, v39, &v56);
      LODWORD(v54) = v35;
      v41 = v40;

      *(v37 + 4) = v41;
      *(v37 + 12) = 2082;
      (v33)(v53, v16, a3);
      v42 = sub_1BA4A6828();
      v44 = v43;
      v45 = *(v11 + 8);
      v45(v16, a3);
      v46 = sub_1B9F0B82C(v42, v44, &v56);

      *(v37 + 14) = v46;
      _os_log_impl(&dword_1B9F07000, v34, v54, "[%{public}s] Failed to execute notification request. %{public}s", v37, 0x16u);
      v47 = v50;
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v47, -1, -1);
      MEMORY[0x1BFAF43A0](v37, -1, -1);

      (*(v55 + 8))(v10, v51);
      return (v45)(v52, a3);
    }

    else
    {

      v48 = *(v11 + 8);
      v48(v16, a3);
      (*(v55 + 8))(v10, v5);
      return (v48)(v52, a3);
    }
  }
}

uint64_t sub_1BA29DC94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v33 = a5;
  v7 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v34 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v30 - v10;
  v12 = sub_1BA4A3EA8();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s18HealthExperienceUI0A44ChecklistStagedFeatureStatusFeedItemProviderPAAE6logger2os6LoggerVvg_0();
  v16 = *(v7 + 16);
  v16(v11, a1, a2);
  v17 = sub_1BA4A3E88();
  v32 = sub_1BA4A6FC8();
  if (os_log_type_enabled(v17, v32))
  {
    v18 = swift_slowAlloc();
    v31 = v13;
    v19 = v18;
    v30 = swift_slowAlloc();
    v35 = v30;
    *v19 = 136446467;
    sub_1BA4A4D18();
    v20 = sub_1BA4A85D8();
    v22 = sub_1B9F0B82C(v20, v21, &v35);
    v33 = v12;
    v23 = v22;

    *(v19 + 4) = v23;
    *(v19 + 12) = 2081;
    v16(v34, v11, a2);
    v24 = sub_1BA4A6808();
    v26 = v25;
    (*(v7 + 8))(v11, a2);
    v27 = sub_1B9F0B82C(v24, v26, &v35);

    *(v19 + 14) = v27;
    _os_log_impl(&dword_1B9F07000, v17, v32, "[%{public}s] Executing notification request for %{private}s", v19, 0x16u);
    v28 = v30;
    swift_arrayDestroy();
    MEMORY[0x1BFAF43A0](v28, -1, -1);
    MEMORY[0x1BFAF43A0](v19, -1, -1);

    return (*(v31 + 8))(v15, v33);
  }

  else
  {

    (*(v7 + 8))(v11, a2);
    return (*(v13 + 8))(v15, v12);
  }
}

uint64_t sub_1BA29E000(uint64_t a1, uint64_t a2)
{
  sub_1BA29E06C();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

void sub_1BA29E06C()
{
  if (!qword_1EBBEFD08)
  {
    v0 = sub_1BA4A15D8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBBEFD08);
    }
  }
}

uint64_t sub_1BA29E0B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1BA29E06C();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, a2, a3, v6);
}

uint64_t type metadata accessor for NotificationGeneratingError()
{
  result = qword_1EBBEFD10;
  if (!qword_1EBBEFD10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BA29E17C(uint64_t a1)
{
  sub_1BA29E06C();
  v3 = v2;
  if (v4 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSingleCaseWithLayoutString();
    v5 = sub_1BA4A15D8();
    v3 = v5;
    if (v6 <= 0x3F)
    {
      *(*(a1 - 8) + 84) = *(*(v5 - 8) + 84);
      return 0;
    }
  }

  return v3;
}

void sub_1BA29E234(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x1E69E6370]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1BA29E288(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_1BA29E2EC()
{
  result = qword_1EDC6B610;
  if (!qword_1EDC6B610)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDC6B610);
  }

  return result;
}

unint64_t sub_1BA29E338()
{
  result = qword_1EDC5E080;
  if (!qword_1EDC5E080)
  {
    sub_1BA29E234(255, &qword_1EDC5E078, MEMORY[0x1E695C0B0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC5E080);
  }

  return result;
}

uint64_t sub_1BA29E3DC()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC18HealthExperienceUI51ProfileSharingWithYouNotificationSettingsDataSource_profileInformation);
}

uint64_t sub_1BA29E41C()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_snapshot;
  sub_1B9F12538();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = OBJC_IVAR____TtC18HealthExperienceUI51ProfileSharingWithYouNotificationSettingsDataSource_profileInformation;

  __swift_destroy_boxed_opaque_existential_1(v0 + v3);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ProfileSharingWithYouNotificationSettingsDataSource()
{
  result = qword_1EBBEFDE8;
  if (!qword_1EBBEFDE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BA29E5EC()
{
  sub_1B9FF5A98();
  _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  sub_1B9F43830();

  if (!*(v0 + OBJC_IVAR____TtC18HealthExperienceUI51ProfileSharingWithYouNotificationSettingsDataSource_notificationType))
  {
    if (qword_1EBBE8710 != -1)
    {
      swift_once();
    }

    v1 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    sub_1BA162F08(v1, v2);
  }

  v3 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  sub_1BA162E6C(v3, v4);
}

void *sub_1BA29E6E8(uint64_t a1)
{
  v3 = type metadata accessor for ListLayoutConfiguration();
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 8);
  if (*(v1 + OBJC_IVAR____TtC18HealthExperienceUI51ProfileSharingWithYouNotificationSettingsDataSource_notificationType))
  {
    if (qword_1EDC6CB88 != -1)
    {
      v10 = v4;
      swift_once();
      v4 = v10;
    }

    __swift_project_value_buffer(v4, qword_1EDC6CB90);
    ListLayoutConfiguration.withFooter.getter(v6);
    *(v6 + 6) = 0x4020000000000000;
  }

  else
  {
    if (qword_1EBBE8710 != -1)
    {
      v11 = v4;
      swift_once();
      v4 = v11;
    }

    if (qword_1EDC6CBB0 != -1)
    {
      v12 = v4;
      swift_once();
      v4 = v12;
    }

    __swift_project_value_buffer(v4, qword_1EDC6CBB8);
    ListLayoutConfiguration.withFooter.getter(v6);
  }

  v8 = ListLayoutConfiguration.layout(for:)(v7);
  sub_1B9F5AC24(v6, type metadata accessor for ListLayoutConfiguration);
  return v8;
}

void sub_1BA29E8BC(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = sub_1BA4A1798();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v60 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA071250();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1BA4A33C8();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v58 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (_sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0() == a1 && v17 == a2)
  {
  }

  else
  {
    v58 = v8;
    v59 = v7;
    v19 = sub_1BA4A8338();

    if ((v19 & 1) == 0)
    {
      if (_sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0() == a1 && v20 == a2)
      {

        goto LABEL_20;
      }

      v22 = sub_1BA4A8338();

      if (v22)
      {
LABEL_20:
        v36 = v3;
        v37 = v3 + OBJC_IVAR____TtC18HealthExperienceUI51ProfileSharingWithYouNotificationSettingsDataSource_profileInformation;
        __swift_project_boxed_opaque_existential_1((v3 + OBJC_IVAR____TtC18HealthExperienceUI51ProfileSharingWithYouNotificationSettingsDataSource_profileInformation), *(v3 + OBJC_IVAR____TtC18HealthExperienceUI51ProfileSharingWithYouNotificationSettingsDataSource_profileInformation + 24));
        v38 = sub_1BA4A2AD8();
        v40 = v39;
        sub_1B9F0A534(v37, &v65);
        sub_1B9F0D950(0, &qword_1EDC6E1F0);
        if (swift_dynamicCast())
        {

          (*(v14 + 56))(v12, 0, 1, v13);
          (*(v14 + 32))(v16, v12, v13);
          v38 = sub_1BA4A3328();
          v40 = v41;
          (*(v14 + 8))(v16, v13);
        }

        else
        {
          (*(v14 + 56))(v12, 1, 1, v13);
          sub_1B9F5AC24(v12, sub_1BA071250);
        }

        if (*(v36 + OBJC_IVAR____TtC18HealthExperienceUI51ProfileSharingWithYouNotificationSettingsDataSource_notificationType))
        {
          v42 = v58;
          if (*(v36 + OBJC_IVAR____TtC18HealthExperienceUI51ProfileSharingWithYouNotificationSettingsDataSource_notificationType) == 1)
          {
            if (qword_1EBBE8730 == -1)
            {
              goto LABEL_30;
            }
          }

          else if (qword_1EBBE8740 == -1)
          {
LABEL_30:

            sub_1B9F2EAC0();
            v43 = swift_allocObject();
            *(v43 + 16) = xmmword_1BA4B5480;
            *(v43 + 56) = MEMORY[0x1E69E6158];
            *(v43 + 64) = sub_1B9F1BE20();
            *(v43 + 32) = v38;
            *(v43 + 40) = v40;
            v44 = sub_1BA4A6768();
            v46 = v45;

            v65 = 0x74497265746F6F46;
            v66 = 0xEB000000005F6D65;
            v47 = v60;
            sub_1BA4A1788();
            v48 = sub_1BA4A1748();
            v50 = v49;
            (*(v42 + 8))(v47, v59);
            MEMORY[0x1BFAF1350](v48, v50);

            v51 = v65;
            v52 = v66;
            v53 = type metadata accessor for CollectionViewGroupedFooterItem(0);
            a3[3] = v53;
            a3[4] = sub_1BA2A01B4();
            boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a3);
            v65 = type metadata accessor for CollectionViewGroupedFooterCell();
            sub_1BA2A020C(0, qword_1EDC63330, type metadata accessor for CollectionViewGroupedFooterCell);
            *boxed_opaque_existential_1 = sub_1BA4A6808();
            boxed_opaque_existential_1[1] = v55;
            v56 = boxed_opaque_existential_1 + *(v53 + 32);
            *v56 = 0u;
            *(v56 + 1) = 0u;
            v56[32] = 1;
            v57 = (boxed_opaque_existential_1 + *(v53 + 28));
            *v57 = v44;
            v57[1] = v46;
            type metadata accessor for CollectionViewGroupedFooterItem.Content(0);
            swift_storeEnumTagMultiPayload();
            boxed_opaque_existential_1[2] = v51;
            boxed_opaque_existential_1[3] = v52;
            boxed_opaque_existential_1[4] = 0;
            boxed_opaque_existential_1[5] = 0;
            return;
          }
        }

        else
        {
          v42 = v58;
          if (qword_1EBBE8720 == -1)
          {
            goto LABEL_30;
          }
        }

        swift_once();
        goto LABEL_30;
      }

LABEL_14:
      a3[3] = &type metadata for EmptyHeaderItem;
      a3[4] = sub_1B9FDA1B0();
      *a3 = swift_allocObject();
      EmptyHeaderItem.init()();
      return;
    }
  }

  if (*(v3 + OBJC_IVAR____TtC18HealthExperienceUI51ProfileSharingWithYouNotificationSettingsDataSource_notificationType))
  {
    goto LABEL_14;
  }

  if (qword_1EBBE8710 != -1)
  {
    swift_once();
  }

  v24 = qword_1EBBEFD20;
  v23 = *algn_1EBBEFD28;
  a3[3] = &type metadata for CollectionViewHeaderItem;
  a3[4] = sub_1BA0473B0();
  v25 = swift_allocObject();
  *a3 = v25;
  v65 = type metadata accessor for CollectionViewHeaderCell();
  sub_1BA2A020C(0, &qword_1EDC664A8, type metadata accessor for CollectionViewHeaderCell);

  *(v25 + 16) = sub_1BA4A6808();
  *(v25 + 24) = v26;
  *(v25 + 32) = v24;
  *(v25 + 40) = v23;
  *(v25 + 48) = sub_1B9F97920;
  *(v25 + 56) = 0;
  *(v25 + 64) = 1;
  *(v25 + 72) = 1;
  *(v25 + 144) = 0;
  *(v25 + 80) = 0u;
  *(v25 + 96) = 0u;
  *(v25 + 112) = 0u;
  *(v25 + 121) = 0u;
  v65 = v24;
  v66 = v23;
  v63 = 32;
  v64 = 0xE100000000000000;
  v61 = 0;
  v62 = 0xE000000000000000;
  sub_1B9F252FC();
  v27 = sub_1BA4A7B58();
  v29 = v28;
  sub_1B9F25350();
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_1BA4B5480;
  *(v30 + 32) = v27;
  *(v30 + 40) = v29;

  v31 = sub_1BA4A6AE8();

  v32 = HKUIJoinStringsForAutomationIdentifier();

  if (v32)
  {

    v33 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    v35 = v34;

    *(v25 + 152) = v33;
    *(v25 + 160) = v35;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1BA29F0B0(unsigned __int8 *a1, void *a2, char a3)
{
  v4 = v3;
  v6 = *a1;
  *(v3 + 81) = v6;
  *(v3 + 88) = a2;
  *(v3 + 97) = a3;
  LOBYTE(v16[0]) = v6;
  v7 = a2;
  *(v4 + 96) = (a3 ^ 1) & sub_1BA3E529C(v16);
  if (v6)
  {
    if (v6 == 1)
    {
      if (qword_1EBBE8728 != -1)
      {
        swift_once();
      }

      v8 = &qword_1EBBEFD50;
    }

    else
    {
      if (qword_1EBBE8738 != -1)
      {
        swift_once();
      }

      v8 = &qword_1EBBEFD70;
    }
  }

  else
  {
    if (qword_1EBBE8718 != -1)
    {
      swift_once();
    }

    v8 = &qword_1EBBEFD30;
  }

  v10 = *v8;
  v9 = v8[1];

  v16[0] = type metadata accessor for SwitchCollectionViewCell();
  sub_1BA2A020C(0, &qword_1EBBF0D80, type metadata accessor for SwitchCollectionViewCell);
  v11 = sub_1BA4A6808();
  v13 = v12;

  *(v4 + 16) = v11;
  *(v4 + 24) = v13;
  *(v4 + 48) = 0u;
  *(v4 + 64) = 0u;
  *(v4 + 80) = 0;
  *(v4 + 32) = 0u;
  swift_beginAccess();
  *(v4 + 32) = 0;
  swift_beginAccess();
  *(v4 + 40) = v10;
  *(v4 + 48) = v9;
  swift_beginAccess();
  *(v4 + 56) = 0;
  *(v4 + 64) = 0;

  swift_beginAccess();
  v14 = *(v4 + 72);
  *(v4 + 72) = 0;

  return v4;
}

uint64_t sub_1BA29F2F0()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1BA29F374(void *a1)
{
  v2 = v1;
  v4 = sub_1BA4A3EA8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v2 + 97);
  if (v8 == 1)
  {
    v21 = v2;
    sub_1BA4A3DD8();
    v9 = sub_1BA4A3E88();
    v10 = sub_1BA4A6FC8();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v20 = a1;
      v12 = v11;
      v13 = swift_slowAlloc();
      v22 = v13;
      *v12 = 136315138;
      v14 = sub_1BA4A85D8();
      v16 = sub_1B9F0B82C(v14, v15, &v22);

      *(v12 + 4) = v16;
      _os_log_impl(&dword_1B9F07000, v9, v10, "[%s]: Showing notifications disabled alert", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v13);
      MEMORY[0x1BFAF43A0](v13, -1, -1);
      v17 = v12;
      a1 = v20;
      MEMORY[0x1BFAF43A0](v17, -1, -1);
    }

    (*(v5 + 8))(v7, v4);
    sub_1BA29F570(a1);
  }

  return v8 ^ 1u;
}

void sub_1BA29F570(void *a1)
{
  v2 = sub_1BA4A3EA8();
  v23 = *(v2 - 8);
  v24 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EBBE8748 != -1)
  {
    swift_once();
  }

  if (qword_1EBBE8750 != -1)
  {
    swift_once();
  }

  v5 = sub_1BA4A6758();
  v6 = sub_1BA4A6758();
  v7 = [objc_opt_self() alertControllerWithTitle:v5 message:v6 preferredStyle:1];

  if (qword_1EBBE8758 != -1)
  {
    swift_once();
  }

  v8 = sub_1BA4A6758();
  v9 = objc_opt_self();
  v10 = [v9 actionWithTitle:v8 style:1 handler:0];

  [v7 addAction_];
  if (qword_1EBBE8760 != -1)
  {
    swift_once();
  }

  v11 = sub_1BA4A6758();
  aBlock[4] = sub_1BA29FA18;
  aBlock[5] = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BA0B06D4;
  aBlock[3] = &block_descriptor_69;
  v12 = _Block_copy(aBlock);

  v13 = [v9 actionWithTitle:v11 style:0 handler:v12];
  _Block_release(v12);

  [v7 addAction_];
  [v7 setPreferredAction_];
  v14 = [a1 viewController];
  if (v14)
  {
    v15 = v14;
    [v14 presentViewController:v7 animated:1 completion:0];
  }

  else
  {
    sub_1BA4A3DD8();
    v16 = sub_1BA4A3E88();
    v17 = sub_1BA4A6FA8();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      aBlock[0] = v19;
      *v18 = 136315138;
      v20 = sub_1BA4A85D8();
      v22 = sub_1B9F0B82C(v20, v21, aBlock);

      *(v18 + 4) = v22;
      _os_log_impl(&dword_1B9F07000, v16, v17, "[%s]: Could not present alert: No view controller available", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v19);
      MEMORY[0x1BFAF43A0](v19, -1, -1);
      MEMORY[0x1BFAF43A0](v18, -1, -1);
    }

    else
    {
    }

    (*(v23 + 8))(v4, v24);
  }
}

uint64_t sub_1BA29FA18()
{
  v0 = sub_1BA4A2A48();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x1EEE9AC00](v0);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v4, *MEMORY[0x1E69A31A0], v0, v2);
  sub_1BA4A2A38();
  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_1BA29FB0C()
{
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  result = sub_1BA4A1318();
  qword_1EBBEFD20 = result;
  *algn_1EBBEFD28 = v1;
  return result;
}

uint64_t sub_1BA29FBE4()
{
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  result = sub_1BA4A1318();
  qword_1EBBEFD40 = result;
  *algn_1EBBEFD48 = v1;
  return result;
}

uint64_t sub_1BA29FCBC()
{
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  result = sub_1BA4A1318();
  qword_1EBBEFD60 = result;
  *algn_1EBBEFD68 = v1;
  return result;
}

uint64_t sub_1BA29FD98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, void *a5)
{
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  result = sub_1BA4A1318();
  *a4 = result;
  *a5 = v8;
  return result;
}

uint64_t sub_1BA29FE58()
{
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  result = sub_1BA4A1318();
  qword_1EBBEFD80 = result;
  *algn_1EBBEFD88 = v1;
  return result;
}

uint64_t sub_1BA29FF04()
{
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  result = sub_1BA4A1318();
  qword_1EBBEFD90 = result;
  *algn_1EBBEFD98 = v1;
  return result;
}

uint64_t sub_1BA29FFB0()
{
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  result = sub_1BA4A1318();
  qword_1EBBEFDA0 = result;
  *algn_1EBBEFDA8 = v1;
  return result;
}

uint64_t sub_1BA2A005C()
{
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  result = sub_1BA4A1318();
  qword_1EBBEFDB0 = result;
  *algn_1EBBEFDB8 = v1;
  return result;
}

uint64_t sub_1BA2A0108()
{
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  result = sub_1BA4A1318();
  qword_1EBBEFDC0 = result;
  *algn_1EBBEFDC8 = v1;
  return result;
}

unint64_t sub_1BA2A01B4()
{
  result = qword_1EDC63278;
  if (!qword_1EDC63278)
  {
    type metadata accessor for CollectionViewGroupedFooterItem(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC63278);
  }

  return result;
}

uint64_t sub_1BA2A020C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t sub_1BA2A0258(char a1)
{
  v2 = v1;
  v4 = sub_1BA4A3EA8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA4A3D88();

  v8 = sub_1BA4A3E88();
  v9 = sub_1BA4A6FC8();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v23 = v4;
    v11 = v10;
    v12 = swift_slowAlloc();
    v25 = v12;
    *v11 = 136315650;
    v13 = sub_1BA4A85D8();
    v15 = sub_1B9F0B82C(v13, v14, &v25);

    *(v11 + 4) = v15;
    *(v11 + 12) = 2080;
    v24 = *(v2 + 81);
    v16 = sub_1BA4A6808();
    v18 = sub_1B9F0B82C(v16, v17, &v25);

    *(v11 + 14) = v18;
    *(v11 + 22) = 2080;
    if (a1)
    {
      v19 = 28271;
    }

    else
    {
      v19 = 6710895;
    }

    if (a1)
    {
      v20 = 0xE200000000000000;
    }

    else
    {
      v20 = 0xE300000000000000;
    }

    v21 = sub_1B9F0B82C(v19, v20, &v25);

    *(v11 + 24) = v21;
    _os_log_impl(&dword_1B9F07000, v8, v9, "[%s]: Notification setting switch for type %s toggled to %s", v11, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1BFAF43A0](v12, -1, -1);
    MEMORY[0x1BFAF43A0](v11, -1, -1);

    (*(v5 + 8))(v7, v23);
  }

  else
  {

    (*(v5 + 8))(v7, v4);
  }

  v26 = *(v2 + 81);
  return sub_1BA3E5630(a1 & 1, &v26, 1);
}

uint64_t PDFGrid.__allocating_init(columns:rowSpacing:columnSpacing:_:)(uint64_t a1, uint64_t (*a2)(void), double a3, double a4)
{
  v8 = swift_allocObject();
  *(v8 + 24) = a1;
  *(v8 + 32) = a3;
  *(v8 + 40) = a4;
  *(v8 + 16) = a2();
  return v8;
}

uint64_t PDFGrid.init(columns:rowSpacing:columnSpacing:_:)(uint64_t a1, uint64_t (*a2)(void), double a3, double a4)
{
  *(v4 + 24) = a1;
  *(v4 + 32) = a3;
  *(v4 + 40) = a4;
  *(v4 + 16) = a2();
  return v4;
}

void PDFGrid.render(context:document:)(UIGraphicsPDFRendererContext a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X8>)
{
  v4 = v3;
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  v8 = sub_1BA2A09E8(v7, v6, a3);
  v9 = v8;
  v64 = v8[2];
  if (v64)
  {
    v10 = 0;
    v62 = v8;
    v63 = v8 + 4;
    v11 = __OFSUB__(v7, 1);
    v69 = v11;
    v12 = (v7 - 1);
    v13 = v7;
    while (v10 < v9[2])
    {
      v14 = v63[v10];

      sub_1BA2A0C50(v15, a2);
      v17 = v16;
      v18 = PDFBuilder.Document.drawingContext.getter();
      v20 = v19;
      v86.size.width = CGRectGetWidth(*(a2 + 168));
      v86.origin.x = v18;
      v86.origin.y = v20;
      v86.size.height = v17;
      if (!CGRectContainsRect(*(a2 + 168), v86))
      {
        PDFBuilder.Document.moveToNextDrawableRegion(in:)(a1);
      }

      v21 = 0;
      v66 = v10;
      v68 = v10 + 1;
      v22 = *(v14 + 16);
      while (1)
      {
        v31 = 0uLL;
        v32 = v22;
        v33 = 0uLL;
        v34 = 0uLL;
        if (v21 != v22)
        {
          if (v21 >= *(v14 + 16))
          {
            goto LABEL_26;
          }

          v32 = v21 + 1;
          *&v74 = v21;
          sub_1B9F0A534(v14 + 32 + 40 * v21, &v74 + 8);
          v31 = v74;
          v33 = v75;
          v34 = v76;
        }

        v77[0] = v31;
        v77[1] = v33;
        v77[2] = v34;
        if (!v34)
        {
          break;
        }

        v71 = v31;
        sub_1B9F25598((v77 + 8), &v74);
        type metadata accessor for PDFBuilder.Document();
        swift_allocObject();
        v35 = sub_1BA20F244(a2);
        Width = CGRectGetWidth(*(a2 + 168));
        if (v69)
        {
          __break(1u);
LABEL_26:
          __break(1u);
          goto LABEL_27;
        }

        v37 = *(v4 + 40);
        v38 = (Width - v37 * v12) / v13;
        v39 = (v37 + v38) * v71;
        v40 = *(a2 + 168);
        if (*(a2 + 96) == 1)
        {
          v41 = *(a2 + 176);
          v42 = *(a2 + 184);
          v43 = *(a2 + 192);
          v23 = CGRectGetMaxX(*&v40) - v38 - v39;
          v40 = *(a2 + 168);
        }

        else
        {
          v23 = v39 + v40;
        }

        v24 = *(a2 + 176);
        v25 = *(a2 + 184);
        v26 = *(a2 + 192);
        v27 = v24;
        Height = CGRectGetHeight(*&v40);
        *(v35 + 168) = v23;
        *(v35 + 176) = v24;
        *(v35 + 184) = v38;
        *(v35 + 192) = Height;
        *(v35 + 200) = 0;
        v29 = *(&v75 + 1);
        v30 = v76;
        __swift_project_boxed_opaque_existential_1(&v74, *(&v75 + 1));
        (*(v30 + 16))(a1, v35, v29, v30);

        __swift_destroy_boxed_opaque_existential_1(&v74);
        v21 = v32;
      }

      v44 = v17;
      v45 = *(a2 + 168);
      v46 = *(a2 + 176);
      v47 = *(a2 + 184);
      v48 = *(a2 + 192);
      v78.origin.x = v45;
      v78.origin.y = v46;
      v78.size.width = v47;
      v78.size.height = v48;
      v72 = CGRectGetMinX(v78) + 0.0;
      v79.origin.x = v45;
      v79.origin.y = v46;
      v79.size.width = v47;
      v79.size.height = v48;
      v65 = v44 + CGRectGetMinY(v79);
      v80.origin.x = v45;
      v80.origin.y = v46;
      v80.size.width = v47;
      v80.size.height = v48;
      v49 = CGRectGetWidth(v80);
      v81.origin.x = v45;
      v81.origin.y = v46;
      v81.size.width = v47;
      v81.size.height = v48;
      v50 = CGRectGetHeight(v81);
      v51 = v49;
      v52 = v50 - v44;
      *(a2 + 168) = v72;
      *(a2 + 176) = v65;
      *(a2 + 184) = v49;
      *(a2 + 192) = v50 - v44;
      *(a2 + 200) = 0;
      v9 = v62;
      v10 = v68;
      if (v66 < v62[2] - 1)
      {
        v53 = *(v4 + 32);
        v54 = v72;
        v55 = v65;
        v87.size.width = CGRectGetWidth(*(&v51 - 2));
        v87.origin.x = v72;
        v87.origin.y = v65;
        v87.size.height = v53;
        if (CGRectContainsRect(*(a2 + 168), v87))
        {
          v57 = *(a2 + 168);
          v56 = *(a2 + 176);
          v58 = *(a2 + 184);
          v59 = *(a2 + 192);
          v82.origin.x = v57;
          v82.origin.y = v56;
          v82.size.width = v58;
          v82.size.height = v59;
          v73 = CGRectGetMinX(v82) + 0.0;
          v83.origin.x = v57;
          v83.origin.y = v56;
          v83.size.width = v58;
          v83.size.height = v59;
          v67 = v53 + CGRectGetMinY(v83);
          v84.origin.x = v57;
          v84.origin.y = v56;
          v84.size.width = v58;
          v84.size.height = v59;
          v60 = CGRectGetWidth(v84);
          v85.origin.x = v57;
          v85.origin.y = v56;
          v85.size.width = v58;
          v85.size.height = v59;
          v61 = CGRectGetHeight(v85);
          *(a2 + 168) = v73;
          *(a2 + 176) = v67;
          *(a2 + 184) = v60;
          *(a2 + 192) = v61 - v53;
          *(a2 + 200) = 0;
        }

        else
        {
          PDFBuilder.Document.moveToNextDrawableRegion(in:)(a1);
        }
      }

      if (v68 == v64)
      {
        goto LABEL_24;
      }
    }

LABEL_27:
    __break(1u);
  }

  else
  {
LABEL_24:
  }
}

void *sub_1BA2A09E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X8>)
{
  if (!a1)
  {
    __break(1u);
LABEL_19:
    v3 = sub_1BA27FAD4((a3 > 1), v5, 1, v3);
    goto LABEL_15;
  }

  v9 = *(a2 + 16);
  v4 = MEMORY[0x1E69E7CC0];
  v3 = sub_1BA27FAD4(0, (v9 / a1) & ~((v9 / a1) >> 63), 0, MEMORY[0x1E69E7CC0]);
  if (v9)
  {
    v10 = a2 + 32;
    do
    {
      sub_1B9F0A534(v10, v24);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v27 = v4;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v4 = sub_1BA27FAAC(0, v4[2] + 1, 1, v4);
        v27 = v4;
      }

      v13 = v4[2];
      v12 = v4[3];
      if (v13 >= v12 >> 1)
      {
        v4 = sub_1BA27FAAC((v12 > 1), v13 + 1, 1, v4);
        v27 = v4;
      }

      v14 = v25;
      v15 = v26;
      v16 = __swift_mutable_project_boxed_opaque_existential_1(v24, v25);
      v17 = MEMORY[0x1EEE9AC00](v16);
      v19 = &v24[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
      (*(v20 + 16))(v19, v17);
      sub_1B9F1C4F4(v13, v19, &v27, v14, v15);
      __swift_destroy_boxed_opaque_existential_1(v24);
      if (v4[2] == a1)
      {
        v22 = v3[2];
        v21 = v3[3];
        if (v22 >= v21 >> 1)
        {
          v3 = sub_1BA27FAD4((v21 > 1), v22 + 1, 1, v3);
        }

        v3[2] = v22 + 1;
        v3[v22 + 4] = v4;
        v4 = MEMORY[0x1E69E7CC0];
      }

      v10 += 40;
      --v9;
    }

    while (v9);
  }

  if (!v4[2])
  {

    return v3;
  }

  v6 = v3[2];
  a3 = v3[3];
  v5 = v6 + 1;
  if (v6 >= a3 >> 1)
  {
    goto LABEL_19;
  }

LABEL_15:
  v3[2] = v5;
  v3[v6 + 4] = v4;
  return v3;
}

void sub_1BA2A0C50(uint64_t a1, uint64_t a2)
{
  type metadata accessor for PDFBuilder.Document();
  swift_allocObject();
  v5 = sub_1BA20F244(a2);
  v14.origin.x = PDFBuilder.Document.drawingContext.getter();
  Width = CGRectGetWidth(v14);
  v7 = *(v2 + 24);
  if (__OFSUB__(v7, 1))
  {
    __break(1u);
  }

  else
  {
    PDFBuilder.Document.constrainDrawingContext(height:width:)(0, 1, COERCE__INT64((Width - *(v2 + 40) * (v7 - 1)) / v7), 0);
    v8 = *(a1 + 16);
    if (v8)
    {
      v9 = (a1 + 32);
      v10 = 0.0;
      do
      {
        v11 = v9[3];
        v12 = v9[4];
        __swift_project_boxed_opaque_existential_1(v9, v11);
        v15.origin.x = (*(v12 + 24))(v5, v11, v12);
        Height = CGRectGetHeight(v15);
        if (Height > v10)
        {
          v10 = Height;
        }

        v9 += 5;
        --v8;
      }

      while (v8);
    }
  }
}

void PDFGrid.boundingRectForContent(in:)(uint64_t a1@<X0>, unint64_t a2@<X8>)
{
  v3 = v2;
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);
  v6 = sub_1BA2A09E8(v5, v4, a2);
  v7 = v6;
  v40 = v6[2];
  if (v40)
  {
    v8 = 0;
    v39 = v6 + 4;
    v9 = __OFSUB__(v5, 1);
    v38 = v9;
    v10 = (v5 - 1);
    v11 = v5;
    v12 = 0.0;
    while (v8 < v7[2])
    {
      v14 = v39[v8];
      type metadata accessor for PDFBuilder.Document();
      swift_allocObject();
      v15 = sub_1BA20F244(a1);
      v16 = PDFBuilder.Document.drawingContext.getter();
      v18 = v17;
      v20 = v19;
      v22 = v21;

      v42.origin.x = v16;
      v42.origin.y = v18;
      v42.size.width = v20;
      v42.size.height = v22;
      Width = CGRectGetWidth(v42);
      if (v38)
      {
        goto LABEL_21;
      }

      v24 = (Width - *(v3 + 40) * v10) / v11;
      v43.origin.x = PDFBuilder.Document.drawingContext.getter();
      Height = CGRectGetHeight(v43);
      v26 = *(v15 + 168);
      v27 = *(v15 + 176);
      v28 = *(v15 + 184);
      v29 = *(v15 + 192);
      v30 = v27;
      if (*(v15 + 96) == 1)
      {
        MinX = CGRectGetMaxX(*&v26) - v24;
      }

      else
      {
        MinX = CGRectGetMinX(*&v26);
      }

      *(v15 + 168) = MinX;
      *(v15 + 176) = v27;
      *(v15 + 184) = v24;
      *(v15 + 192) = Height;
      *(v15 + 200) = 0;
      v32 = *(v14 + 16);
      if (v32)
      {
        v33 = v7;
        v34 = (v14 + 32);
        v13 = 0.0;
        do
        {
          v35 = v34[3];
          v36 = v34[4];
          __swift_project_boxed_opaque_existential_1(v34, v35);
          v44.origin.x = (*(v36 + 24))(v15, v35, v36);
          v37 = CGRectGetHeight(v44);
          if (v37 > v13)
          {
            v13 = v37;
          }

          v34 += 5;
          --v32;
        }

        while (v32);

        v7 = v33;
      }

      else
      {

        v13 = 0.0;
      }

      ++v8;
      v12 = v12 + v13 + *(v3 + 32);
      if (v8 == v40)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }

  else
  {
LABEL_19:

    PDFBuilder.Document.drawingContext.getter();
    CGRectGetWidth(*(a1 + 168));
  }
}

void PDFGrid.minimumBoundingRectForContent(in:)(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);
  if (*(v4 + 16) >= v5)
  {
    v6 = *(v2 + 24);
  }

  else
  {
    v6 = *(v4 + 16);
  }

  PDFBuilder.Document.drawingContext.getter();
  CGRectGetWidth(*(a1 + 168));
  if (v5 < 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  v7 = *(v4 + 16);
  if (v7 < v6)
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v7 == v6)
  {
  }

  else
  {
    sub_1BA2A13A4(v4, v4 + 32, 0, (2 * v6) | 1, &qword_1EDC5DC80, qword_1EDC69430);
    v4 = v8;
  }

  sub_1BA2A0C50(v4, a1);
}

uint64_t PDFGrid.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

void sub_1BA2A11C0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
LABEL_7:
        sub_1B9F21ADC();
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      sub_1B9F1C048(0, &qword_1EDC6B400);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v9 = v8 - 32;
      if (v8 < 32)
      {
        v9 = v8 - 25;
      }

      v7[2] = v5;
      v7[3] = (2 * (v9 >> 3)) | 1;
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

void sub_1BA2A12AC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
LABEL_7:
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      sub_1B9F1C048(0, &qword_1EDC6E330);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v9 = v8 - 32;
      if (v8 < 32)
      {
        v9 = v8 - 17;
      }

      v7[2] = v5;
      v7[3] = 2 * (v9 >> 4);
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

void sub_1BA2A13A4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t *a5, unint64_t *a6)
{
  v6 = a4 >> 1;
  v7 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_9:
    __break(1u);
    return;
  }

  if (v7)
  {
    if (v7 < 1)
    {
      if (v6 != a3)
      {
        goto LABEL_5;
      }
    }

    else
    {
      sub_1B9F1B560(0, a5, a6);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      v10[2] = v7;
      v10[3] = 2 * ((v11 - 32) / 40);
      if (v6 != a3)
      {
LABEL_5:
        sub_1B9F0D950(0, a6);
        swift_arrayInitWithCopy();
        return;
      }
    }

    __break(1u);
    goto LABEL_9;
  }
}

uint64_t sub_1BA2A14AC(unint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) == 0)
  {
    goto LABEL_5;
  }

  v2 = sub_1BA4A7CC8();
  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  while (1)
  {
    v3 = sub_1BA025524(v2, 0);

    v1 = sub_1BA024000(&v5, (v3 + 32), v2, v1);
    sub_1B9F52E48();
    if (v1 == v2)
    {
      break;
    }

    __break(1u);
LABEL_5:
    v2 = v1[2];
    if (!v2)
    {
      return MEMORY[0x1E69E7CC0];
    }
  }

  return v3;
}

void *DataSourceWithSectionItemLimit.__allocating_init(source:itemLimit:)(uint64_t a1, uint64_t a2)
{
  v2 = sub_1BA2A249C(a1, a2);
  swift_unknownObjectRelease();
  return v2;
}

void *DataSourceWithSectionItemLimit.init(source:itemLimit:)(uint64_t a1, uint64_t a2)
{
  v2 = sub_1BA2A2328(a1, a2);
  swift_unknownObjectRelease();
  return v2;
}

uint64_t DataSourceWithSectionItemLimit.deinit()
{
  swift_unknownObjectRelease();

  v1 = qword_1EDC84B68;
  sub_1B9F12538();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

void sub_1BA2A168C(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 24) = a1;
  sub_1BA2A1CFC();
}

void (*sub_1BA2A16D0(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1BA2A1724;
}

void sub_1BA2A1724(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    sub_1BA2A1CFC();
  }
}

uint64_t sub_1BA2A1758@<X0>(uint64_t a1@<X8>)
{
  v3 = qword_1EDC84B68;
  swift_beginAccess();
  sub_1B9F12538();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t sub_1BA2A17E0(uint64_t a1)
{
  v3 = qword_1EDC84B68;
  swift_beginAccess();
  sub_1B9F12538();
  (*(*(v4 - 8) + 40))(v1 + v3, a1, v4);
  return swift_endAccess();
}

uint64_t sub_1BA2A18DC()
{
  v1 = v0;
  v2 = *v0;
  sub_1B9F12538();
  v4 = v3;
  v42 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v41 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v40 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v40 - v10;
  v12 = *(v2 + 88);
  v13 = *(v12 + 16);
  v14 = *(v2 + 80);
  swift_unknownObjectRetain();
  v15 = v12;
  v16 = v11;
  v13(v14, v15);
  swift_unknownObjectRelease();
  sub_1BA4A45D8();
  sub_1BA4A4578();
  v45 = v8;
  sub_1BA4A44C8();

  result = sub_1BA4A4578();
  v18 = result;
  v44 = *(result + 16);
  if (v44)
  {
    v19 = 0;
    v20 = (result + 40);
    v43 = v4;
    while (v19 < *(v18 + 16))
    {
      v24 = *(v20 - 1);
      v25 = *v20;
      v46 = v24;
      v47 = v25;

      v26 = sub_1BA4A4528();
      result = swift_beginAccess();
      v27 = v1[3];
      if ((v27 & 0x8000000000000000) != 0)
      {
        goto LABEL_21;
      }

      v28 = *(v26 + 16);
      if (v28 >= v27)
      {
        v29 = v1[3];
      }

      else
      {
        v29 = *(v26 + 16);
      }

      if (v27)
      {
        v30 = v29;
      }

      else
      {
        v30 = 0;
      }

      if (v28 != v30)
      {
        v31 = v18;
        v32 = v1;
        v33 = v16;
        if (v30)
        {
          sub_1B9F25350();
          v21 = swift_allocObject();
          v22 = _swift_stdlib_malloc_size(v21);
          v23 = v22 - 32;
          if (v22 < 32)
          {
            v23 = v22 - 17;
          }

          v21[2] = v30;
          v21[3] = 2 * (v23 >> 4);
          swift_arrayInitWithCopy();
        }

        v16 = v33;
        v1 = v32;
        v18 = v31;
        v4 = v43;
      }

      ++v19;
      v46 = v24;
      v47 = v25;
      sub_1BA4A4448();

      v20 += 2;
      if (v44 == v19)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }

  else
  {
LABEL_19:

    v34 = sub_1BA4A45B8();
    v35 = v45;
    sub_1BA2A20FC(v34, v45);

    sub_1BA4A4558();

    sub_1BA4A45A8();
    sub_1BA4A4518();

    v36 = sub_1BA4A4598();
    sub_1BA2A20FC(v36, v35);

    sub_1BA4A4498();

    v37 = v41;
    v38 = v42;
    (*(v42 + 16))(v41, v35, v4);
    sub_1BA2A17E0(v37);
    v39 = *(v38 + 8);
    v39(v16, v4);
    return (v39)(v35, v4);
  }

  return result;
}

void sub_1BA2A1CFC()
{
  sub_1BA2A18DC();
  type metadata accessor for DataSourceWithSectionItemLimit();

  SnapshotDataSource.notifyObserversSnapshotDidChange(animated:)(1);
}

uint64_t DataSourceWithSectionItemLimit.identifier.getter()
{
  v0 = sub_1BA2A20F4();

  return v0;
}

uint64_t sub_1BA2A1DA8(uint64_t a1)
{
  sub_1B9F12538();
  v3 = MEMORY[0x1EEE9AC00](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v5, a1, v3);
  return sub_1BA2A17E0(v5);
}

uint64_t sub_1BA2A1E74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, Swift::Bool a5)
{
  sub_1B9F12538();
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA4A45C8();

  sub_1BA2A24F0(v10, a5);

  return (*(v8 + 8))(v10, v7);
}

uint64_t DataSourceWithSectionItemLimit.__deallocating_deinit()
{
  DataSourceWithSectionItemLimit.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1BA2A1FDC()
{
  v0 = sub_1BA2A20F4();

  return v0;
}

uint64_t DataSourceWithSectionItemLimit<>.supplementaryItem(ofKind:at:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 8);
  v10 = *(*v4 + 80);
  swift_unknownObjectRetain();
  v9(a1, a2, a3, v10, a4);
  return swift_unknownObjectRelease();
}

void sub_1BA2A20FC(uint64_t a1, uint64_t a2)
{
  v28 = a2;
  sub_1B9F12538();
  v4 = v3;
  v6.n128_f64[0] = MEMORY[0x1EEE9AC00](v3);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + 16);
  if (v9)
  {
    v10 = 0;
    v26 = (v5 + 8);
    v27 = (v5 + 16);
    v11 = a1 + 40;
    v12 = MEMORY[0x1E69E7CC0];
    v24 = v11;
    do
    {
      v25 = v12;
      v13 = (v11 + 16 * v10);
      for (i = v10; ; ++i)
      {
        if (i >= v9)
        {
          __break(1u);
LABEL_17:
          __break(1u);
          return;
        }

        v10 = i + 1;
        if (__OFADD__(i, 1))
        {
          goto LABEL_17;
        }

        v15 = *(v13 - 1);
        v16 = *v13;
        (*v27)(v8, v28, v4, v6);
        v29 = v15;
        v30 = v16;

        sub_1BA4A4468();
        v18 = v17;
        (*v26)(v8, v4);
        if ((v18 & 1) == 0)
        {
          break;
        }

        v13 += 2;
        if (v10 == v9)
        {
          return;
        }
      }

      v12 = v25;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v31 = v12;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1B9F1C360(0, *(v12 + 16) + 1, 1);
        v12 = v31;
      }

      v11 = v24;
      v21 = *(v12 + 16);
      v20 = *(v12 + 24);
      v22 = v21 + 1;
      if (v21 >= v20 >> 1)
      {
        v25 = v21 + 1;
        sub_1B9F1C360((v20 > 1), v21 + 1, 1);
        v22 = v25;
        v12 = v31;
      }

      *(v12 + 16) = v22;
      v23 = v12 + 16 * v21;
      *(v23 + 32) = v15;
      *(v23 + 40) = v16;
    }

    while (v10 != v9);
  }
}

void *sub_1BA2A2328(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  sub_1B9F15B38();
  v7 = sub_1BA4A7A78();
  v8 = objc_allocWithZone(MEMORY[0x1E696C4F8]);
  v9 = sub_1BA4A6758();
  v10 = [v8 initWithName:v9 loggingCategory:v7];

  v3[2] = v10;
  sub_1BA4A45D8();
  v3[3] = a2;
  v3[4] = a1;
  v11 = *(v6 + 88);
  v12 = *(v11 + 8);
  v13 = *(v6 + 80);
  swift_unknownObjectRetain();
  v3[5] = v12(v13, v11);
  v3[6] = v14;
  v15 = (*(v11 + 40))(v13, v11);
  [v15 registerObserver_];

  sub_1BA2A18DC();
  return v3;
}

void *sub_1BA2A249C(uint64_t a1, uint64_t a2)
{
  type metadata accessor for DataSourceWithSectionItemLimit();
  swift_allocObject();
  return sub_1BA2A2328(a1, a2);
}

void sub_1BA2A24F0(uint64_t a1, Swift::Bool a2)
{
  sub_1BA2A18DC();
  type metadata accessor for DataSourceWithSectionItemLimit();

  SnapshotDataSource.notifyObserversSnapshotDidChange(animated:)(a2);
}

void sub_1BA2A2570()
{
  sub_1B9F12538();
  if (v0 <= 0x3F)
  {
    swift_initClassMetadata2();
  }
}

void sub_1BA2A28B4()
{
  v1 = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) init];
  v2 = OBJC_IVAR____TtC18HealthExperienceUI26ProfileAvatarWithNameBelow_iconView;
  v3 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI26ProfileAvatarWithNameBelow_iconView];
  *&v0[OBJC_IVAR____TtC18HealthExperienceUI26ProfileAvatarWithNameBelow_iconView] = v1;
  v4 = v1;

  if (!v4)
  {
    __break(1u);
    goto LABEL_13;
  }

  v5 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI26ProfileAvatarWithNameBelow_avatar];
  [v4 setImage_];

  if (!*&v0[v2])
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  [v0 addSubview_];
  v6 = *&v0[v2];
  if (!v6)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  [v6 setTranslatesAutoresizingMaskIntoConstraints_];
  v7 = *&v0[v2];
  if (!v7)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  [v7 setAdjustsImageSizeForAccessibilityContentSizeCategory_];
  sub_1B9F109F8();
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1BA4B5890;
  v9 = *&v0[v2];
  if (!v9)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v10 = [v9 topAnchor];
  v11 = [v0 topAnchor];
  v12 = [v10 constraintEqualToAnchor_];

  *(v8 + 32) = v12;
  v13 = *&v0[v2];
  if (!v13)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v14 = [v13 centerXAnchor];
  v15 = [v0 centerXAnchor];
  v16 = [v14 constraintEqualToAnchor_];

  *(v8 + 40) = v16;
  v17 = *&v0[v2];
  if (!v17)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v18 = [v17 widthAnchor];
  v19 = [v18 constraintEqualToConstant_];

  *(v8 + 48) = v19;
  v20 = *&v0[v2];
  if (!v20)
  {
LABEL_19:
    __break(1u);
    return;
  }

  v21 = objc_opt_self();
  v22 = [v20 heightAnchor];
  v23 = [v22 constraintEqualToConstant_];

  *(v8 + 56) = v23;
  sub_1B9F740B0();
  v24 = sub_1BA4A6AE8();

  [v21 activateConstraints_];
}

void sub_1BA2A2B90()
{
  v1 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  [v1 setNumberOfLines_];
  [v1 setTextAlignment_];
  [v1 setPreferredMaxLayoutWidth_];
  [v1 setLineBreakMode_];
  [v1 setTranslatesAutoresizingMaskIntoConstraints_];
  v2 = OBJC_IVAR____TtC18HealthExperienceUI26ProfileAvatarWithNameBelow_nameLabel;
  v3 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI26ProfileAvatarWithNameBelow_nameLabel];
  *&v0[OBJC_IVAR____TtC18HealthExperienceUI26ProfileAvatarWithNameBelow_nameLabel] = v1;
  v4 = v1;

  v5 = sub_1BA4A6758();

  [v4 setText_];

  if (!*&v0[v2])
  {
    __break(1u);
    goto LABEL_12;
  }

  [v0 addSubview_];
  v6 = *&v0[v2];
  if (!v6)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v7 = objc_opt_self();
  v8 = v6;
  v9 = [v7 boldSystemFontOfSize_];
  [v8 setFont_];

  v11 = *&v0[v2];
  if (!v11)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  LODWORD(v10) = 1144750080;
  [v11 setContentHuggingPriority:1 forAxis:v10];
  sub_1B9F109F8();
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1BA4B8B60;
  v13 = *&v0[v2];
  if (!v13)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v14 = [v13 leadingAnchor];
  v15 = [v0 leadingAnchor];
  v16 = [v14 constraintEqualToAnchor_];

  *(v12 + 32) = v16;
  v17 = *&v0[v2];
  if (!v17)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v18 = [v17 trailingAnchor];
  v19 = [v0 trailingAnchor];
  v20 = [v18 constraintEqualToAnchor_];

  *(v12 + 40) = v20;
  v21 = *&v0[v2];
  if (!v21)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v22 = [v21 topAnchor];
  v23 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI26ProfileAvatarWithNameBelow_iconView];
  if (!v23)
  {
LABEL_17:
    __break(1u);
    return;
  }

  v24 = v22;
  v25 = objc_opt_self();
  v26 = [v23 bottomAnchor];
  v27 = [v24 constraintEqualToAnchor:v26 constant:10.0];

  *(v12 + 48) = v27;
  sub_1B9F740B0();
  v28 = sub_1BA4A6AE8();

  [v25 activateConstraints_];
}

void sub_1BA2A2F24()
{
  v1 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  [v1 setNumberOfLines_];
  [v1 setTextAlignment_];
  [v1 setPreferredMaxLayoutWidth_];
  [v1 setLineBreakMode_];
  [v1 setTranslatesAutoresizingMaskIntoConstraints_];
  v2 = OBJC_IVAR____TtC18HealthExperienceUI26ProfileAvatarWithNameBelow_icloudAccountLabel;
  v3 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI26ProfileAvatarWithNameBelow_icloudAccountLabel];
  *&v0[OBJC_IVAR____TtC18HealthExperienceUI26ProfileAvatarWithNameBelow_icloudAccountLabel] = v1;

  if (*&v0[OBJC_IVAR____TtC18HealthExperienceUI26ProfileAvatarWithNameBelow_icloudAccount + 8])
  {
    v4 = *&v0[v2];
    if (!v4)
    {
LABEL_27:
      __break(1u);
      return;
    }

    v5 = v4;
    v6 = sub_1BA4A6758();

    [v5 setText_];
  }

  if (!*&v0[v2])
  {
    __break(1u);
    goto LABEL_18;
  }

  [v0 addSubview_];
  v7 = *&v0[v2];
  if (!v7)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v8 = objc_opt_self();
  v9 = v7;
  v10 = [v8 darkGrayColor];
  [v9 setTextColor_];

  v12 = *&v0[v2];
  if (!v12)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  LODWORD(v11) = 1144750080;
  [v12 setContentCompressionResistancePriority:1 forAxis:v11];
  v14 = *&v0[v2];
  if (!v14)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  LODWORD(v13) = 1144750080;
  [v14 setContentCompressionResistancePriority:0 forAxis:v13];
  v15 = *&v0[v2];
  if (!v15)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v16 = objc_opt_self();
  v17 = *MEMORY[0x1E69DDD08];
  v18 = v15;
  v19 = [v16 hk:v17 scalableFontForTextStyle:64 symbolicTraits:?];
  [v18 setFont_];

  sub_1B9F109F8();
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1BA4B5890;
  v21 = *&v0[v2];
  if (!v21)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v22 = [v21 leadingAnchor];
  v23 = [v0 leadingAnchor];
  v24 = [v22 constraintEqualToAnchor_];

  *(v20 + 32) = v24;
  v25 = *&v0[v2];
  if (!v25)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v26 = [v25 trailingAnchor];
  v27 = [v0 trailingAnchor];
  v28 = [v26 constraintEqualToAnchor_];

  *(v20 + 40) = v28;
  v29 = *&v0[v2];
  if (!v29)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v30 = [v29 topAnchor];
  v31 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI26ProfileAvatarWithNameBelow_nameLabel];
  if (!v31)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v32 = [v31 bottomAnchor];
  v33 = [v30 constraintEqualToAnchor:v32 constant:5.0];

  *(v20 + 48) = v33;
  v34 = *&v0[v2];
  if (!v34)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v35 = objc_opt_self();
  v36 = [v34 bottomAnchor];
  v37 = [v0 bottomAnchor];
  v38 = [v36 constraintEqualToAnchor_];

  *(v20 + 56) = v38;
  sub_1B9F740B0();
  v39 = sub_1BA4A6AE8();

  [v35 activateConstraints_];
}

id sub_1BA2A33EC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ProfileAvatarWithNameBelow();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1BA2A34D8(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  sub_1BA0B4364();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1BA4A2FF8();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v32 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35[3] = a3;
  v35[4] = a4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v35);
  (*(*(a3 - 8) + 32))(boxed_opaque_existential_1, a1, a3);
  *&a2[OBJC_IVAR____TtC18HealthExperienceUI26ProfileAvatarWithNameBelow_iconView] = 0;
  *&a2[OBJC_IVAR____TtC18HealthExperienceUI26ProfileAvatarWithNameBelow_nameLabel] = 0;
  *&a2[OBJC_IVAR____TtC18HealthExperienceUI26ProfileAvatarWithNameBelow_icloudAccountLabel] = 0;
  v15 = OBJC_IVAR____TtC18HealthExperienceUI26ProfileAvatarWithNameBelow_avatar;
  *&a2[OBJC_IVAR____TtC18HealthExperienceUI26ProfileAvatarWithNameBelow_avatar] = 0;
  v16 = &a2[OBJC_IVAR____TtC18HealthExperienceUI26ProfileAvatarWithNameBelow_icloudAccount];
  *v16 = 0;
  v16[1] = 0;
  v17 = sub_1BA4A2AB8();
  v18 = &a2[OBJC_IVAR____TtC18HealthExperienceUI26ProfileAvatarWithNameBelow_localizedFullName];
  *v18 = v17;
  v18[1] = v19;
  v20 = sub_1BA4A2AC8();
  v21 = *&a2[v15];
  *&a2[v15] = v20;

  sub_1B9F0A534(v35, v34);
  sub_1BA0B43BC();
  v22 = swift_dynamicCast();
  v23 = *(v12 + 56);
  if (v22)
  {
    v23(v10, 0, 1, v11);
    v24 = v32;
    (*(v12 + 32))(v32, v10, v11);
    v25 = sub_1BA4A2FD8();
    v27 = v26;
    (*(v12 + 8))(v24, v11);
    *v16 = v25;
    v16[1] = v27;
  }

  else
  {
    v23(v10, 1, 1, v11);
    sub_1BA0B4420(v10);
  }

  v28 = type metadata accessor for ProfileAvatarWithNameBelow();
  v33.receiver = a2;
  v33.super_class = v28;
  v29 = objc_msgSendSuper2(&v33, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  sub_1BA2A28B4();
  sub_1BA2A2B90();
  sub_1BA2A2F24();

  __swift_destroy_boxed_opaque_existential_1(v35);
  return v29;
}

__n128 PDFSection.layoutConstraints.getter@<Q0>(__n128 *a1@<X8>)
{
  v2 = v1[2].n128_u64[0];
  v3 = v1[2].n128_u8[8];
  v4 = v1[2].n128_u8[9];
  result = v1[1];
  *a1 = result;
  a1[1].n128_u64[0] = v2;
  a1[1].n128_u8[8] = v3;
  a1[1].n128_u8[9] = v4;
  return result;
}

uint64_t PDFSection.init(columns:drawColumnSeparators:layoutConstraints:header:body:footer:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t (*a4)(void)@<X3>, uint64_t (*a5)(void)@<X5>, uint64_t (*a6)(void)@<X7>, uint64_t a7@<X8>)
{
  v10 = *(a3 + 16);
  v11 = *(a3 + 24);
  v12 = *(a3 + 25);
  *a7 = a1;
  *(a7 + 8) = a2;
  *(a7 + 16) = *a3;
  *(a7 + 32) = v10;
  *(a7 + 40) = v11;
  *(a7 + 41) = v12;
  *(a7 + 48) = a4();
  *(a7 + 56) = a5();
  result = a6();
  *(a7 + 64) = result;
  return result;
}

__n128 PDFSection.init(columns:drawColumnSeparators:layoutConstraints:header:body:footer:)@<Q0>(unint64_t a1@<X0>, unsigned __int8 a2@<W1>, __n128 *a3@<X2>, unint64_t a4@<X3>, unint64_t a5@<X4>, unint64_t a6@<X5>, __n128 *a7@<X8>)
{
  v7 = a3[1].n128_u64[0];
  v8 = a3[1].n128_u8[8];
  v9 = a3[1].n128_u8[9];
  a7->n128_u64[0] = a1;
  a7->n128_u8[8] = a2;
  result = *a3;
  a7[1] = *a3;
  a7[2].n128_u64[0] = v7;
  a7[2].n128_u8[8] = v8;
  a7[2].n128_u8[9] = v9;
  a7[3].n128_u64[0] = a4;
  a7[3].n128_u64[1] = a5;
  a7[4].n128_u64[0] = a6;
  return result;
}

uint64_t PDFSection.pdfSection.getter(uint64_t a1)
{
  *(v2 + 160) = a1;
  *(v2 + 168) = v1;
  v3 = *(v1 + 48);
  *(v2 + 48) = *(v1 + 32);
  *(v2 + 64) = v3;
  *(v2 + 80) = *(v1 + 64);
  v4 = *(v1 + 16);
  *(v2 + 16) = *v1;
  *(v2 + 32) = v4;
  return MEMORY[0x1EEE6DFA0](sub_1BA2A3918, 0, 0);
}

uint64_t sub_1BA2A3918()
{
  v2 = v0[20];
  v1 = v0[21];
  v4 = *(v1 + 32);
  v3 = *(v1 + 48);
  v5 = *(v1 + 16);
  *(v2 + 64) = *(v1 + 64);
  *(v2 + 32) = v4;
  *(v2 + 48) = v3;
  *(v2 + 16) = v5;
  *v2 = *v1;
  sub_1BA2A39A4((v0 + 2), (v0 + 11));
  v6 = v0[1];

  return v6();
}

uint64_t sub_1BA2A39DC(uint64_t a1)
{
  *(v2 + 160) = a1;
  *(v2 + 168) = v1;
  v3 = *(v1 + 48);
  *(v2 + 48) = *(v1 + 32);
  *(v2 + 64) = v3;
  *(v2 + 80) = *(v1 + 64);
  v4 = *(v1 + 16);
  *(v2 + 16) = *v1;
  *(v2 + 32) = v4;
  return MEMORY[0x1EEE6DFA0](sub_1BA2A46DC, 0, 0);
}

uint64_t sub_1BA2A3A14(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1BA2A3A34, 0, 0);
}

uint64_t sub_1BA2A3A34()
{
  v1 = v0[3];
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v7 = (*(v3 + 8) + **(v3 + 8));
  v4 = swift_task_alloc();
  v0[4] = v4;
  *v4 = v0;
  v4[1] = sub_1BA0D9AA8;
  v5 = v0[2];

  return v7(v5, v2, v3);
}

uint64_t PDFSectionLoader.deinit()
{

  swift_defaultActor_destroy();
  return v0;
}

uint64_t PDFSectionLoader.__deallocating_deinit()
{

  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

__n128 PDFAsyncSection.init(columns:drawColumnSeparators:layoutConstraints:headerProviders:bodyProviders:footerProviders:)@<Q0>(unint64_t a1@<X0>, unsigned __int8 a2@<W1>, __n128 *a3@<X2>, uint64_t (*a4)(void)@<X3>, uint64_t (*a5)(void)@<X5>, uint64_t (*a6)(void)@<X7>, __n128 *a7@<X8>)
{
  v15 = *a3;
  v10 = a3[1].n128_u64[0];
  v11 = a3[1].n128_u8[8];
  v12 = a3[1].n128_u8[9];
  a7->n128_u64[0] = a4();
  a7->n128_u64[1] = a5();
  v13 = a6();

  result = v15;
  a7[2] = v15;
  a7[3].n128_u64[0] = v10;
  a7[3].n128_u8[8] = v11;
  a7[3].n128_u8[9] = v12;
  a7[1].n128_u64[0] = v13;
  a7[1].n128_u64[1] = a1;
  a7[3].n128_u8[10] = a2;
  return result;
}

uint64_t PDFAsyncSection.pdfSection.getter(uint64_t a1)
{
  *(v2 + 16) = a1;
  v3 = *v1;
  *(v2 + 24) = *(v1 + 8);
  *(v2 + 40) = *(v1 + 24);
  *(v2 + 56) = *(v1 + 40);
  *(v2 + 128) = *(v1 + 56);
  *(v2 + 129) = *(v1 + 57);
  *(v2 + 130) = *(v1 + 58);
  v4 = swift_task_alloc();
  *(v2 + 72) = v4;
  *v4 = v2;
  v4[1] = sub_1BA2A3D7C;

  return Array<A>.collectRenderables.getter(v3);
}

uint64_t sub_1BA2A3D7C(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {
    v6 = v5[1];

    return v6();
  }

  else
  {
    v4[10] = a1;
    v8 = swift_task_alloc();
    v4[11] = v8;
    *v8 = v5;
    v8[1] = sub_1BA2A3EFC;
    v9 = v4[3];

    return Array<A>.collectRenderables.getter(v9);
  }
}

uint64_t sub_1BA2A3EFC(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 96) = a1;
  *(v3 + 104) = v1;

  if (v1)
  {
    v4 = sub_1BA2A42F8;
  }

  else
  {
    v4 = sub_1BA2A4010;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1BA2A4010()
{
  if (v0[12])
  {
    v1 = swift_task_alloc();
    v0[14] = v1;
    *v1 = v0;
    v1[1] = sub_1BA2A4110;
    v2 = v0[4];

    return Array<A>.collectRenderables.getter(v2);
  }

  else
  {
    v4 = v0[2];

    *(v4 + 64) = 0;
    *(v4 + 32) = 0u;
    *(v4 + 48) = 0u;
    *v4 = 0u;
    *(v4 + 16) = 0u;
    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_1BA2A4110(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {

    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    *(v4 + 120) = a1;

    return MEMORY[0x1EEE6DFA0](sub_1BA2A4274, 0, 0);
  }
}

uint64_t sub_1BA2A4274()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 96);
  v3 = *(v0 + 80);
  v4 = *(v0 + 130);
  v5 = *(v0 + 129);
  v6 = *(v0 + 128);
  v7 = *(v0 + 64);
  v8 = *(v0 + 16);
  if (!v3)
  {
    v3 = MEMORY[0x1E69E7CC0];
  }

  if (!v1)
  {
    v1 = MEMORY[0x1E69E7CC0];
  }

  v9 = *(v0 + 48);
  *v8 = *(v0 + 40);
  *(v8 + 8) = v4;
  *(v8 + 16) = v9;
  *(v8 + 32) = v7;
  *(v8 + 40) = v6;
  *(v8 + 41) = v5;
  *(v8 + 48) = v3;
  *(v8 + 56) = v2;
  *(v8 + 64) = v1;
  return (*(v0 + 8))();
}

uint64_t sub_1BA2A42F8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1BA2A436C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1BA0C2E3C;

  return PDFAsyncSection.pdfSection.getter(a1);
}

uint64_t sub_1BA2A4404(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 48);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1BA2A444C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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
      *(result + 48) = (a2 - 1);
      return result;
    }

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t dispatch thunk of PDFSectionProvider.pdfSection.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 8) + **(a3 + 8));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1BA0C2E3C;

  return v9(a1, a2, a3);
}

__n128 __swift_memcpy59_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 43) = *(a2 + 43);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1BA2A4630(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 59))
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

uint64_t sub_1BA2A4678(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 58) = 0;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 59) = 1;
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

    *(result + 59) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

BOOL Viewable<>.isInHierarchy.getter()
{
  v1 = [v0 superview];
  v2 = v1;
  if (v1)
  {
  }

  return v2 != 0;
}

{
  v1 = [v0 parentViewController];
  v2 = v1;
  if (v1)
  {
  }

  return v2 != 0;
}

id Viewable<>.presentingView.getter()
{
  v0 = sub_1B9F6B730();

  return v0;
}

id Viewable<>.loadPresentingView()()
{
  return [v0 loadViewIfNeeded];
}

{
  return [v0 loadView];
}

id sub_1BA2A4860()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI22AlertVerticalSeparator____lazy_storage___vibrancyView;
  v2 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI22AlertVerticalSeparator____lazy_storage___vibrancyView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI22AlertVerticalSeparator____lazy_storage___vibrancyView);
  }

  else
  {
    v4 = [objc_opt_self() effectWithStyle_];
    v5 = [objc_opt_self() effectForBlurEffect:v4 style:7];

    v6 = [objc_allocWithZone(MEMORY[0x1E69DD298]) initWithEffect_];
    [v6 setTranslatesAutoresizingMaskIntoConstraints_];
    v7 = *(v0 + v1);
    *(v0 + v1) = v6;
    v3 = v6;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

void sub_1BA2A4A48()
{
  v1 = v0;
  v2 = sub_1BA2A4860();
  [v0 addSubview_];

  v3 = objc_opt_self();
  sub_1B9F109F8();
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1BA4B5890;
  v5 = OBJC_IVAR____TtC18HealthExperienceUI22AlertVerticalSeparator____lazy_storage___vibrancyView;
  v6 = [*&v1[OBJC_IVAR____TtC18HealthExperienceUI22AlertVerticalSeparator____lazy_storage___vibrancyView] topAnchor];
  v7 = [v1 topAnchor];
  v8 = [v6 constraintEqualToAnchor_];

  *(v4 + 32) = v8;
  v9 = [*&v1[v5] bottomAnchor];
  v10 = [v1 bottomAnchor];
  v11 = [v9 constraintEqualToAnchor_];

  *(v4 + 40) = v11;
  v12 = [*&v1[v5] leadingAnchor];
  v13 = [v1 leadingAnchor];
  v14 = [v12 constraintEqualToAnchor_];

  *(v4 + 48) = v14;
  v15 = [*&v1[v5] trailingAnchor];
  v16 = [v1 trailingAnchor];
  v17 = [v15 constraintEqualToAnchor_];

  *(v4 + 56) = v17;
  sub_1B9F740B0();
  v18 = sub_1BA4A6AE8();

  [v3 activateConstraints_];
}

id sub_1BA2A4CD0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AlertVerticalSeparator();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1BA2A4D38()
{
  v1 = [v0 traitCollection];
  [v1 horizontalSizeClass];

  v2 = [v0 view];
  if (v2)
  {
    v3 = v2;
    [v2 frame];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;

    v14.origin.x = v5;
    v14.origin.y = v7;
    v14.size.width = v9;
    v14.size.height = v11;
    CGRectGetHeight(v14);
    v12 = [v0 view];
    if (v12)
    {
      v13 = v12;
      [v12 safeAreaInsets];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

id OnboardingTopContentShortViewController.__allocating_init(title:detailText:heroImage:heroImageHeight:linkButtonText:linkButtonAccessibilityIdentifier:)(int a1, int a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, char a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v16 = objc_allocWithZone(v11);
  *&v16[OBJC_IVAR____TtC18HealthExperienceUI39OnboardingTopContentShortViewController_heroImageHeightConstraint] = 0;
  *&v16[OBJC_IVAR____TtC18HealthExperienceUI39OnboardingTopContentShortViewController_contentViewHeightConstraint] = 0;
  v32 = a5;
  v17 = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) initWithImage_];
  v18 = OBJC_IVAR____TtC18HealthExperienceUI39OnboardingTopContentShortViewController_heroImageView;
  *&v16[OBJC_IVAR____TtC18HealthExperienceUI39OnboardingTopContentShortViewController_heroImageView] = v17;
  [v17 setTranslatesAutoresizingMaskIntoConstraints_];
  [*&v16[v18] setContentMode_];
  v19 = &v16[OBJC_IVAR____TtC18HealthExperienceUI39OnboardingTopContentShortViewController_heroImageCustomHeight];
  *v19 = a6;
  v19[8] = a7 & 1;
  v20 = &v16[OBJC_IVAR____TtC18HealthExperienceUI39OnboardingTopContentShortViewController_linkButtonText];
  *v20 = a8;
  *(v20 + 1) = a9;
  v21 = &v16[OBJC_IVAR____TtC18HealthExperienceUI39OnboardingTopContentShortViewController_linkButtonAccessibilityIdentifier];
  *v21 = a10;
  *(v21 + 1) = a11;
  v22 = sub_1BA4A6758();

  if (a4)
  {
    v23 = sub_1BA4A6758();
  }

  else
  {
    v23 = 0;
  }

  v33.receiver = v16;
  v33.super_class = v11;
  v24 = objc_msgSendSuper2(&v33, sel_initWithTitle_detailText_icon_contentLayout_, v22, v23, 0, 1, a3);

  sub_1B9F7A684();
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_1BA4B5480;
  v26 = sub_1BA4A4438();
  v27 = MEMORY[0x1E69DC130];
  *(v25 + 32) = v26;
  *(v25 + 40) = v27;
  v28 = v24;
  MEMORY[0x1BFAF1C40](v25, sel_updateLayoutOnTraitChanges);

  swift_unknownObjectRelease();

  return v28;
}

id OnboardingTopContentShortViewController.init(title:detailText:heroImage:heroImageHeight:linkButtonText:linkButtonAccessibilityIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, char a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  *&v11[OBJC_IVAR____TtC18HealthExperienceUI39OnboardingTopContentShortViewController_heroImageHeightConstraint] = 0;
  *&v11[OBJC_IVAR____TtC18HealthExperienceUI39OnboardingTopContentShortViewController_contentViewHeightConstraint] = 0;
  v16 = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) initWithImage_];
  v17 = OBJC_IVAR____TtC18HealthExperienceUI39OnboardingTopContentShortViewController_heroImageView;
  *&v11[OBJC_IVAR____TtC18HealthExperienceUI39OnboardingTopContentShortViewController_heroImageView] = v16;
  [v16 setTranslatesAutoresizingMaskIntoConstraints_];
  [*&v11[v17] setContentMode_];
  v18 = &v11[OBJC_IVAR____TtC18HealthExperienceUI39OnboardingTopContentShortViewController_heroImageCustomHeight];
  *v18 = a6;
  v18[8] = a7 & 1;
  v19 = &v11[OBJC_IVAR____TtC18HealthExperienceUI39OnboardingTopContentShortViewController_linkButtonText];
  *v19 = a8;
  *(v19 + 1) = a9;
  v20 = &v11[OBJC_IVAR____TtC18HealthExperienceUI39OnboardingTopContentShortViewController_linkButtonAccessibilityIdentifier];
  *v20 = a10;
  *(v20 + 1) = a11;
  v21 = sub_1BA4A6758();

  if (a4)
  {
    v22 = sub_1BA4A6758();
  }

  else
  {
    v22 = 0;
  }

  v30.receiver = v11;
  v30.super_class = type metadata accessor for OnboardingTopContentShortViewController();
  v23 = objc_msgSendSuper2(&v30, sel_initWithTitle_detailText_icon_contentLayout_, v21, v22, 0, 1);

  sub_1B9F7A684();
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_1BA4B5480;
  v25 = sub_1BA4A4438();
  v26 = MEMORY[0x1E69DC130];
  *(v24 + 32) = v25;
  *(v24 + 40) = v26;
  v27 = v23;
  MEMORY[0x1BFAF1C40](v24, sel_updateLayoutOnTraitChanges);

  swift_unknownObjectRelease();

  return v27;
}

void sub_1BA2A5254()
{
  v51.receiver = v0;
  v51.super_class = type metadata accessor for OnboardingTopContentShortViewController();
  objc_msgSendSuper2(&v51, sel_viewDidLoad);
  if (*&v0[OBJC_IVAR____TtC18HealthExperienceUI39OnboardingTopContentShortViewController_linkButtonText + 8])
  {
    v1 = sub_1BA4A6758();
    if (*&v0[OBJC_IVAR____TtC18HealthExperienceUI39OnboardingTopContentShortViewController_linkButtonAccessibilityIdentifier + 8])
    {
      v2 = sub_1BA4A6758();
    }

    else
    {
      v2 = 0;
    }
  }

  v3 = [v0 contentView];
  v4 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI39OnboardingTopContentShortViewController_heroImageView];
  [v3 addSubview_];

  v5 = [v0 contentView];
  v6 = [objc_opt_self() clearColor];
  [v5 setBackgroundColor_];

  OBWelcomeController.removeOBContentViewHeightConstraints()();
  v7 = [v4 heightAnchor];
  if (v0[OBJC_IVAR____TtC18HealthExperienceUI39OnboardingTopContentShortViewController_heroImageCustomHeight + 8])
  {
    v8 = [v0 traitCollection];
    v9 = [v8 horizontalSizeClass];

    v10 = 188.0;
    if (v9 == 2)
    {
      v10 = 226.0;
    }
  }

  else
  {
    v10 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI39OnboardingTopContentShortViewController_heroImageCustomHeight];
  }

  v11 = [v7 constraintEqualToConstant_];

  v12 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI39OnboardingTopContentShortViewController_heroImageHeightConstraint];
  v50 = OBJC_IVAR____TtC18HealthExperienceUI39OnboardingTopContentShortViewController_heroImageHeightConstraint;
  *&v0[OBJC_IVAR____TtC18HealthExperienceUI39OnboardingTopContentShortViewController_heroImageHeightConstraint] = v11;
  v13 = v11;

  if (v13)
  {
    LODWORD(v14) = 1148846080;
    [v13 setPriority_];
  }

  v15 = [v0 contentView];
  v16 = [v15 heightAnchor];

  sub_1BA2A4D38();
  v17 = [v16 constraintEqualToConstant_];

  v18 = OBJC_IVAR____TtC18HealthExperienceUI39OnboardingTopContentShortViewController_contentViewHeightConstraint;
  v19 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI39OnboardingTopContentShortViewController_contentViewHeightConstraint];
  *&v0[OBJC_IVAR____TtC18HealthExperienceUI39OnboardingTopContentShortViewController_contentViewHeightConstraint] = v17;
  v20 = v17;

  if (v20)
  {
    LODWORD(v21) = 1132068864;
    [v20 setPriority_];
  }

  v22 = [v4 topAnchor];
  v23 = [v0 contentView];
  v24 = [v23 topAnchor];

  v25 = [v22 constraintEqualToAnchor_];
  LODWORD(v26) = 1144750080;
  [v25 setPriority_];
  v27 = [v4 bottomAnchor];
  v28 = [v0 contentView];
  v29 = [v28 bottomAnchor];

  v30 = [v27 constraintEqualToAnchor_];
  LODWORD(v31) = 1148846080;
  [v30 setPriority_];
  sub_1B9F109F8();
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_1BA4B79E0;
  v33 = *&v0[v18];
  if (v33)
  {
    v34 = v32;
    *(v32 + 32) = v33;
    v35 = v33;
    v36 = [v4 leadingAnchor];
    v37 = [v0 contentView];
    v38 = [v37 leadingAnchor];

    v39 = [v36 constraintEqualToAnchor_];
    v34[5] = v39;
    v40 = [v4 trailingAnchor];
    v41 = [v0 contentView];
    v42 = [v41 trailingAnchor];

    v43 = [v40 constraintEqualToAnchor_];
    v34[6] = v43;
    v34[7] = v25;
    v34[8] = v30;
    v44 = *&v0[v50];
    if (v44)
    {
      v45 = objc_opt_self();
      v34[9] = v44;
      sub_1B9F740B0();
      v46 = v25;
      v47 = v30;
      v48 = v44;
      v49 = sub_1BA4A6AE8();

      [v45 activateConstraints_];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_1BA2A5824()
{
  v1 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI39OnboardingTopContentShortViewController_heroImageHeightConstraint];
  if (v1)
  {
    if (v0[OBJC_IVAR____TtC18HealthExperienceUI39OnboardingTopContentShortViewController_heroImageCustomHeight + 8])
    {
      v5 = v1;
      v2 = [v0 traitCollection];
      v3 = [v2 horizontalSizeClass];

      if (v3 == 2)
      {
        v4 = 226.0;
      }

      else
      {
        v4 = 188.0;
      }
    }

    else
    {
      v4 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI39OnboardingTopContentShortViewController_heroImageCustomHeight];
      v5 = v1;
    }

    [v5 setConstant_];
  }
}

id OnboardingTopContentShortViewController.__allocating_init(title:detailText:symbolName:contentLayout:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v12 = sub_1BA4A6758();

  if (!a4)
  {
    v13 = 0;
    if (a6)
    {
      goto LABEL_3;
    }

LABEL_5:
    v14 = 0;
    goto LABEL_6;
  }

  v13 = sub_1BA4A6758();

  if (!a6)
  {
    goto LABEL_5;
  }

LABEL_3:
  v14 = sub_1BA4A6758();

LABEL_6:
  v15 = [objc_allocWithZone(v8) initWithTitle:v12 detailText:v13 symbolName:v14 contentLayout:a7];

  return v15;
}

id OnboardingTopContentShortViewController.__allocating_init(title:detailText:icon:contentLayout:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v7 = v6;
  v11 = sub_1BA4A6758();

  if (a4)
  {
    v12 = sub_1BA4A6758();
  }

  else
  {
    v12 = 0;
  }

  v13 = [objc_allocWithZone(v7) initWithTitle:v11 detailText:v12 icon:a5 contentLayout:a6];

  return v13;
}

id OnboardingTopContentShortViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for OnboardingTopContentShortViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t PDFHeaderRenderableProvider.init(characteristicsProvider:showExportedDate:)@<X0>(__int128 *a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  result = sub_1B9F1134C(a1, a3);
  *(a3 + 40) = a2;
  return result;
}

uint64_t PDFHeaderRenderableProvider.renderables.getter()
{
  *(v1 + 224) = v0;
  type metadata accessor for PDFCharacteristicsProvider.Content();
  *(v1 + 232) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BA2A5E24, 0, 0);
}

uint64_t sub_1BA2A5E24()
{
  v1 = v0;
  v2 = *(v0 + 224);
  v3 = v2[3];
  v4 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v3);
  v8 = (*(v4 + 8) + **(v4 + 8));
  v5 = swift_task_alloc();
  *(v1 + 240) = v5;
  *v5 = v1;
  v5[1] = sub_1BA2A5F80;
  v6 = *(v1 + 232);

  return v8(v6, v3, v4);
}

uint64_t sub_1BA2A5F80()
{
  *(*v1 + 248) = v0;

  if (v0)
  {
    v2 = sub_1BA2A657C;
  }

  else
  {
    v2 = sub_1BA2A60C0;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1BA2A60C0()
{
  v1 = v0[29];
  v2 = *v1;
  if (v1[1])
  {
    v3 = v1[1];
  }

  else
  {
    if (qword_1EDC5E100 != -1)
    {
      swift_once();
    }

    v2 = sub_1BA4A1318();
    v3 = v4;
    v1 = v0[29];
  }

  v5 = sub_1BA0CBE90(v1);
  v7 = v6;
  v8 = sub_1BA0CC544();
  v0[16] = v2;
  v0[17] = v3;
  v0[18] = v5;
  v0[19] = v7;
  v0[20] = v8;
  v0[21] = v9;
  sub_1BA2A6D70(0, &qword_1EDC5DBB0, sub_1B9FE9628, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BA4B5460;
  v11 = *MEMORY[0x1E69DB648];
  *(inited + 32) = *MEMORY[0x1E69DB648];
  v12 = objc_opt_self();
  v13 = v11;
  v14 = [v12 systemFontOfSize_];
  v15 = sub_1B9F0ADF8(0, &unk_1EDC5E210);
  v16 = MEMORY[0x1E69DB650];
  *(inited + 40) = v14;
  v17 = *v16;
  *(inited + 64) = v15;
  *(inited + 72) = v17;
  v18 = qword_1EBBE8448;
  v19 = v17;
  if (v18 != -1)
  {
    swift_once();
  }

  v37 = v0[28];
  v20 = qword_1EBBED260;
  *(inited + 104) = sub_1B9F0ADF8(0, &qword_1EDC6E380);
  *(inited + 80) = v20;
  v21 = v20;
  sub_1B9FDB1C4(inited);
  swift_setDeallocating();
  sub_1B9FE9628();
  swift_arrayDestroy();
  sub_1BA2A6D20();
  v22 = swift_initStackObject();
  *(v22 + 16) = xmmword_1BA4B5480;
  *(v22 + 40) = 0;
  v23 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
  v24 = sub_1BA4A6758();
  type metadata accessor for Key(0);
  sub_1BA0262E4();
  v25 = sub_1BA4A6618();
  v26 = [v23 initWithString:v24 attributes:v25];

  *(v22 + 32) = v26;
  if (*(v37 + 40) == 1)
  {
    v27 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
    v28 = sub_1BA4A6758();
    v29 = sub_1BA4A6618();

    v30 = [v27 initWithString:v28 attributes:v29];

    v31 = sub_1BA2809F0(1, 2, 1, v22);
    *(v31 + 2) = 2;
    *(v31 + 6) = v30;
    *(v31 + 28) = 1;
  }

  else
  {
  }

  v32 = v0[29];
  sub_1BA2A6D70(0, &qword_1EDC5DC80, sub_1BA0A186C, MEMORY[0x1E69E6F90]);
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_1BA4B5480;
  *(v33 + 56) = &type metadata for PDFVStack;
  *(v33 + 64) = &protocol witness table for PDFVStack;
  *(v33 + 48) = 0;
  v34 = sub_1BA2A660C();
  sub_1BA2A6DD4((v0 + 16));
  *(v33 + 32) = v34;
  *(v33 + 40) = 0;
  sub_1B9FF9FB0(v32);

  v35 = v0[1];

  return v35(v33);
}

uint64_t sub_1BA2A657C()
{

  v1 = *(v0 + 8);

  return v1();
}

void *sub_1BA2A660C()
{
  v13 = &type metadata for PDFVStack;
  v14 = &protocol witness table for PDFVStack;
  *&v11 = sub_1BA2A6800();
  *(&v11 + 1) = 0x3FF0000000000000;
  v12 = 0;
  sub_1BA2A6D70(0, &qword_1EDC5DC80, sub_1BA0A186C, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BA4B5480;
  sub_1B9F1134C(&v11, inited + 32);
  if (qword_1EBBE8468 != -1)
  {
    swift_once();
  }

  v1 = [qword_1EBBED280 CGColor];
  v9 = &type metadata for PDFHorizontalSeparator;
  v10 = &protocol witness table for PDFHorizontalSeparator;
  v2 = swift_allocObject();
  *&v8 = v2;
  *(v2 + 16) = xmmword_1BA4CC490;
  *(v2 + 32) = 0;
  *(v2 + 40) = v1;
  v3 = swift_initStackObject();
  *(v3 + 16) = v7;
  sub_1B9F1134C(&v8, v3 + 32);
  sub_1BA2A6D70(0, &qword_1EBBEB2F0, sub_1BA0A17D4, MEMORY[0x1E69E6F90]);
  v4 = swift_initStackObject();
  *(v4 + 16) = xmmword_1BA4B5460;
  *(v4 + 32) = inited;
  *(v4 + 40) = v3;
  v5 = _s18HealthExperienceUI20PDFRenderableBuilderV10buildBlockySayAA0D0_pGAFd_tFZ_0(v4);
  swift_setDeallocating();
  sub_1BA0A17D4(0);
  swift_arrayDestroy();
  return v5;
}

void *sub_1BA2A6800()
{
  v0 = MEMORY[0x1E69E6F90];
  sub_1BA2A6D70(0, &qword_1EDC5DBB0, sub_1B9FE9628, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BA4B5460;
  v2 = *MEMORY[0x1E69DB648];
  *(inited + 32) = *MEMORY[0x1E69DB648];
  v3 = objc_opt_self();
  v4 = *MEMORY[0x1E69DB980];
  v5 = v2;
  v6 = [v3 systemFontOfSize:14.0 weight:v4];
  v7 = sub_1B9F0ADF8(0, &unk_1EDC5E210);
  *(inited + 40) = v6;
  v8 = *MEMORY[0x1E69DB650];
  *(inited + 64) = v7;
  *(inited + 72) = v8;
  v9 = objc_opt_self();
  v10 = v8;
  v11 = [v9 darkTextColor];
  *(inited + 104) = sub_1B9F0ADF8(0, &qword_1EDC6E380);
  *(inited + 80) = v11;
  sub_1B9FDB1C4(inited);
  swift_setDeallocating();
  sub_1B9FE9628();
  swift_arrayDestroy();
  v30 = 0;
  v12 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
  v13 = sub_1BA4A6758();
  type metadata accessor for Key(0);
  sub_1BA0262E4();
  v14 = sub_1BA4A6618();

  v15 = [v12 initWithString:v13 attributes:v14];

  v28 = &type metadata for PDFTitle;
  v29 = &protocol witness table for PDFTitle;
  *&v27 = v15;
  WORD4(v27) = 0;
  sub_1BA2A6D70(0, &qword_1EDC5DC80, sub_1BA0A186C, v0);
  v16 = swift_initStackObject();
  *(v16 + 16) = xmmword_1BA4B5480;
  sub_1B9F1134C(&v27, v16 + 32);

  v18 = sub_1B9FE635C(v17);

  v25 = &type metadata for PDFHStack;
  v26 = &protocol witness table for PDFHStack;
  v19 = swift_allocObject();
  *&v24 = v19;
  v19[2] = v18;
  v19[3] = 0x4042000000000000;
  v19[4] = 0;
  v19[5] = 0;
  v20 = swift_initStackObject();
  *(v20 + 16) = xmmword_1BA4B5480;
  sub_1B9F1134C(&v24, v20 + 32);
  sub_1BA2A6D70(0, &qword_1EBBEB2F0, sub_1BA0A17D4, v0);
  v21 = swift_initStackObject();
  *(v21 + 16) = xmmword_1BA4B5460;
  *(v21 + 32) = v16;
  *(v21 + 40) = v20;
  v22 = _s18HealthExperienceUI20PDFRenderableBuilderV10buildBlockySayAA0D0_pGAFd_tFZ_0(v21);
  swift_setDeallocating();
  sub_1BA0A17D4(0);
  swift_arrayDestroy();
  return v22;
}

uint64_t sub_1BA2A6B94()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1BA2A6C20;

  return PDFHeaderRenderableProvider.renderables.getter();
}

uint64_t sub_1BA2A6C20(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

void sub_1BA2A6D20()
{
  if (!qword_1EBBEF6C0)
  {
    v0 = sub_1BA4A82E8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBBEF6C0);
    }
  }
}

void sub_1BA2A6D70(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1BA2A6E28(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 41))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1BA2A6E70(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

__n128 AnimatedSnidgetCurrentValueText.init(text:configuration:previousConfiguration:)@<Q0>(uint64_t a1@<X0>, __int128 *a2@<X1>, __n128 *a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *(a2 + 2);
  v7 = *(a2 + 24);
  v15 = *a2;
  v16 = *a3;
  v8 = a3[1].n128_u64[0];
  v9 = a3[1].n128_u8[8];
  v10 = type metadata accessor for AnimatedSnidgetCurrentValueText(0);
  v11 = a4 + *(v10 + 20);
  *v11 = 0;
  *(v11 + 8) = 0;
  *(v11 + 24) = 0;
  *(v11 + 16) = 0;
  v12 = a4 + *(v10 + 24);
  v13 = sub_1BA4A12C8();
  *(v12 + 8) = 0;
  *(v12 + 16) = 0;
  *v12 = 0;
  *(v12 + 24) = 0;
  (*(*(v13 - 8) + 32))(a4, a1, v13);

  *v11 = v15;
  *(v11 + 16) = v6;
  *(v11 + 24) = v7;

  result = v16;
  *v12 = v16;
  *(v12 + 16) = v8;
  *(v12 + 24) = v9;
  return result;
}

uint64_t sub_1BA2A6FC8(uint64_t a1)
{
  v2 = sub_1B9F759E0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BA2A7004(uint64_t a1)
{
  v2 = sub_1B9F759E0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BA2A7040@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x65756C6176 && a2 == 0xE500000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1BA4A8338();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1BA2A70C4(uint64_t a1)
{
  v2 = sub_1B9F75434();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BA2A7100(uint64_t a1)
{
  v2 = sub_1B9F75434();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BA2A713C(uint64_t a1)
{
  v2 = sub_1B9F74FD4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BA2A7178(uint64_t a1)
{
  v2 = sub_1B9F74FD4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AnimatedSnidgetCurrentValueText.Configuration.Style.encode(to:)(void *a1)
{
  v3 = MEMORY[0x1E69E6F58];
  sub_1B9F738B4(0, &qword_1EDC5DD28, sub_1B9F74FD4, &type metadata for AnimatedSnidgetCurrentValueText.Configuration.Style.StringCodingKeys, MEMORY[0x1E69E6F58]);
  v21 = *(v4 - 8);
  v22 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v18 = &v18 - v5;
  sub_1B9F738B4(0, &qword_1EDC5DD20, sub_1B9F75434, &type metadata for AnimatedSnidgetCurrentValueText.Configuration.Style.NumericCodingKeys, v3);
  v19 = *(v6 - 8);
  v20 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v18 - v7;
  sub_1B9F738B4(0, &qword_1EDC5DD30, sub_1B9F759E0, &type metadata for AnimatedSnidgetCurrentValueText.Configuration.Style.CodingKeys, v3);
  v23 = v9;
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v18 - v11;
  LOBYTE(v3) = *(v1 + 8);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B9F759E0();
  sub_1BA4A8548();
  if (v3)
  {
    v25 = 1;
    sub_1B9F74FD4();
    v13 = v18;
    v14 = v23;
    sub_1BA4A81F8();
    (*(v21 + 8))(v13, v22);
    return (*(v10 + 8))(v12, v14);
  }

  else
  {
    v24 = 0;
    sub_1B9F75434();
    v16 = v23;
    sub_1BA4A81F8();
    v17 = v20;
    sub_1BA4A8268();
    (*(v19 + 8))(v8, v17);
    return (*(v10 + 8))(v12, v16);
  }
}

uint64_t AnimatedSnidgetCurrentValueText.Configuration.domain.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t AnimatedSnidgetCurrentValueText.Configuration.domain.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

void AnimatedSnidgetCurrentValueText.Configuration.style.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *(v1 + 16);
  *(a1 + 8) = v2;
}

uint64_t AnimatedSnidgetCurrentValueText.Configuration.style.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 16) = *result;
  *(v1 + 24) = v2;
  return result;
}

uint64_t AnimatedSnidgetCurrentValueText.Configuration.isAnimatable(from:)(uint64_t *a1)
{
  v2 = a1[1];
  if (!v2)
  {
    return 0;
  }

  v3 = *a1;
  v5 = *v1;
  v6 = v1[1];
  v7 = *(v1 + 24);
  v8 = *(a1 + 24);
  v9 = v5 == v3 && v2 == v6;
  if (!v9 && (sub_1BA4A8338() & 1) == 0)
  {
    return 0;
  }

  if (v7)
  {
    if ((v8 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v8)
  {
    return 0;
  }

  return 1;
}

uint64_t AnimatedSnidgetCurrentValueText.Configuration.init(domain:style:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *a3;
  v5 = *(a3 + 8);
  *a4 = result;
  *(a4 + 8) = a2;
  *(a4 + 16) = v4;
  *(a4 + 24) = v5;
  return result;
}

uint64_t static AnimatedSnidgetCurrentValueText.Configuration.numeric(domain:value:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  *a3 = a1;
  *(a3 + 8) = a2;
  *(a3 + 16) = a4;
  *(a3 + 24) = 0;
}

uint64_t static AnimatedSnidgetCurrentValueText.Configuration.string(domain:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = a1;
  *(a3 + 8) = a2;
  *(a3 + 16) = 0;
  *(a3 + 24) = 1;
}

uint64_t sub_1BA2A76C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6E69616D6F64 && a2 == 0xE600000000000000;
  if (v6 || (sub_1BA4A8338() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x656C797473 && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1BA4A8338();

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

uint64_t sub_1BA2A7798(uint64_t a1)
{
  v2 = sub_1B9F73DDC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BA2A77D4(uint64_t a1)
{
  v2 = sub_1B9F73DDC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AnimatedSnidgetCurrentValueText.Configuration.encode(to:)(void *a1)
{
  sub_1B9F738B4(0, &qword_1EDC5DD38, sub_1B9F73DDC, &type metadata for AnimatedSnidgetCurrentValueText.Configuration.CodingKeys, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v10 - v6;
  v10[0] = *(v1 + 16);
  v12 = *(v1 + 24);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B9F73DDC();
  sub_1BA4A8548();
  v14 = 0;
  v8 = v10[1];
  sub_1BA4A8248();
  if (!v8)
  {
    v10[2] = v10[0];
    v11 = v12;
    v13 = 1;
    sub_1BA2A79DC();
    sub_1BA4A8288();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_1BA2A79DC()
{
  result = qword_1EDC63478[0];
  if (!qword_1EDC63478[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDC63478);
  }

  return result;
}

uint64_t SnidgetAnimation.animation.setter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 36);

  *(v2 + v4) = a1;
  return result;
}

uint64_t SnidgetAnimation.init(value:animation:enableAnimation:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  (*(*(a4 - 8) + 32))(a5, a1, a4);
  result = type metadata accessor for SnidgetAnimation();
  *(a5 + *(result + 36)) = a2;
  *(a5 + *(result + 40)) = a3;
  return result;
}

uint64_t View.snidgetAnimation<A>(value:animation:enableAnimation:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v21 = a6;
  v20 = a4;
  v10 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for SnidgetAnimation();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v19 - v16;
  (*(v10 + 16))(v12, a1, a5, v15);
  (*(v10 + 32))(v17, v12, a5);
  *&v17[*(v13 + 36)] = a2;
  v17[*(v13 + 40)] = a3;

  MEMORY[0x1BFAF0A30](v17, v20, v13, v21);
  return (*(v14 + 8))(v17, v13);
}

uint64_t sub_1BA2A7DDC@<X0>(uint64_t a1@<X8>)
{
  v35 = a1;
  v2 = sub_1BA4A54D8();
  v33 = *(v2 - 8);
  v34 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v32 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1BA4A12C8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F5AB80(0, &qword_1EDC5F218, sub_1B9F5FCF0);
  v9 = v8 - 8;
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v30 - v11;
  v13 = *(v5 + 16);
  v13(v7, v1, v4, v10);
  v30 = sub_1BA4A5E08();
  v31 = v14;
  v16 = v15;
  v18 = v17;
  v19 = *(v1 + *(type metadata accessor for AnimatedCharacterText(0) + 20));
  v20 = MEMORY[0x1BFAF0E30](0.5, 0.7, 0.0);
  v21 = &v12[*(v9 + 44)];
  (v13)(v21, v1, v4);
  sub_1B9F5FCF0();
  *&v21[*(v22 + 36)] = v20;
  v21[*(v22 + 40)] = v19;
  *v12 = v30;
  *(v12 + 1) = v16;
  v12[16] = v18 & 1;
  *(v12 + 3) = v31;
  v23 = v32;
  if (v19 == 1)
  {
    sub_1BA4A54B8();
  }

  else
  {
    sub_1BA4A54C8();
  }

  KeyPath = swift_getKeyPath();
  sub_1B9F5FA78();
  v26 = v35;
  v27 = (v35 + *(v25 + 36));
  sub_1B9F57FD4();
  (*(v33 + 32))(v27 + *(v28 + 28), v23, v34);
  *v27 = KeyPath;
  return sub_1B9F613F4(v12, v26);
}

uint64_t sub_1BA2A80C8(uint64_t a1)
{
  v2 = sub_1BA4A54D8();
  v3 = MEMORY[0x1EEE9AC00](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return sub_1BA4A55E8();
}

uint64_t sub_1BA2A81C8(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 9;
  v9 = (a2 - v7 + 255) >> 8;
  if (v8 <= 3)
  {
    v10 = v9 + 1;
  }

  else
  {
    v10 = 2;
  }

  if (v10 >= 0x10000)
  {
    v11 = 4;
  }

  else
  {
    v11 = 2;
  }

  if (v10 < 0x100)
  {
    v11 = 1;
  }

  if (v10 >= 2)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (v12 > 1)
  {
    if (v12 == 2)
    {
      v13 = *&a1[v8];
      if (!*&a1[v8])
      {
        goto LABEL_28;
      }
    }

    else
    {
      v13 = *&a1[v8];
      if (!v13)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v12 || (v13 = a1[v8]) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))();
    }

    v17 = *(&a1[v6 + 7] & 0xFFFFFFFFFFFFFFF8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v15 = (v13 - 1) << (8 * v8);
  if (v8 <= 3)
  {
    v16 = *a1;
  }

  else
  {
    v15 = 0;
    v16 = *a1;
  }

  return v7 + (v16 | v15) + 1;
}

void sub_1BA2A831C(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(*(*(a4 + 16) - 8) + 64);
  v10 = ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 9;
  if (v8 >= a3)
  {
    v14 = 0;
    if (v8 >= a2)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v11 = (a3 - v8 + 255) >> 8;
    if (v10 <= 3)
    {
      v12 = v11 + 1;
    }

    else
    {
      v12 = 2;
    }

    if (v12 >= 0x10000)
    {
      v13 = 4;
    }

    else
    {
      v13 = 2;
    }

    if (v12 < 0x100)
    {
      v13 = 1;
    }

    if (v12 >= 2)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    if (v8 >= a2)
    {
LABEL_17:
      if (v14 > 1)
      {
        if (v14 != 2)
        {
          *&a1[v10] = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_32;
        }

        *&a1[v10] = 0;
      }

      else if (v14)
      {
        a1[v10] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_32;
      }

      if (!a2)
      {
        return;
      }

LABEL_32:
      if (v7 < 0x7FFFFFFF)
      {
        v18 = (&a1[v9 + 7] & 0xFFFFFFFFFFFFFFF8);
        if ((a2 & 0x80000000) != 0)
        {
          v19 = a2 & 0x7FFFFFFF;
        }

        else
        {
          v19 = a2 - 1;
        }

        *v18 = v19;
      }

      else
      {
        v17 = *(v6 + 56);

        v17();
      }

      return;
    }
  }

  v15 = ~v8 + a2;
  bzero(a1, ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 9);
  if (v10 <= 3)
  {
    v16 = (v15 >> 8) + 1;
  }

  else
  {
    v16 = 1;
  }

  if (v10 <= 3)
  {
    *a1 = v15;
    if (v14 > 1)
    {
LABEL_27:
      if (v14 == 2)
      {
        *&a1[v10] = v16;
      }

      else
      {
        *&a1[v10] = v16;
      }

      return;
    }
  }

  else
  {
    *a1 = v15;
    if (v14 > 1)
    {
      goto LABEL_27;
    }
  }

  if (v14)
  {
    a1[v10] = v16;
  }
}

unint64_t sub_1BA2A8590()
{
  result = qword_1EBBEFE60;
  if (!qword_1EBBEFE60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEFE60);
  }

  return result;
}

unint64_t sub_1BA2A85E8()
{
  result = qword_1EBBEFE68;
  if (!qword_1EBBEFE68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEFE68);
  }

  return result;
}

unint64_t sub_1BA2A8640()
{
  result = qword_1EBBEFE70;
  if (!qword_1EBBEFE70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEFE70);
  }

  return result;
}

void sub_1BA2A86B0(uint64_t a1, unint64_t a2)
{
  v5 = *(v2 + OBJC_IVAR____TtC18HealthExperienceUI30SharingVersionMismatchTileView_messageView);
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  sub_1BA4A1318();
  sub_1BA2AA2E0(a1, a2);
  v6 = sub_1BA4A1318();
  v8 = v7;
  v27 = [objc_opt_self() systemGray5Color];
  v9 = *&v5[OBJC_IVAR____TtC18HealthExperienceUI25MessageWithActionTileView_titleLabel];
  v10 = sub_1BA4A6758();
  [v9 setText_];

  v11 = OBJC_IVAR____TtC18HealthExperienceUI25MessageWithActionTileView_bodyLabel;
  v12 = *&v5[OBJC_IVAR____TtC18HealthExperienceUI25MessageWithActionTileView_bodyLabel];
  v13 = sub_1BA4A6758();
  [v12 setText_];

  [*&v5[v11] setHidden_];
  v14 = OBJC_IVAR____TtC18HealthExperienceUI25MessageWithActionTileView_actionButton;
  v15 = *&v5[OBJC_IVAR____TtC18HealthExperienceUI25MessageWithActionTileView_actionButton];
  v16 = objc_opt_self();
  v17 = swift_allocObject();
  v17[2] = v15;
  v17[3] = v6;
  v17[4] = v8;
  v17[5] = 0;
  v18 = swift_allocObject();
  *(v18 + 16) = sub_1BA02C5F4;
  *(v18 + 24) = v17;
  aBlock[4] = sub_1B9F89DF8;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B9F7B0FC;
  aBlock[3] = &block_descriptor_26_1;
  v19 = _Block_copy(aBlock);
  v20 = v15;

  [v16 performWithoutAnimation_];
  _Block_release(v19);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v22 = HIBYTE(v8) & 0xF;
    if ((v8 & 0x2000000000000000) == 0)
    {
      v22 = v6 & 0xFFFFFFFFFFFFLL;
    }

    [*&v5[v14] setHidden_];
    [v5 setBackgroundColor_];
    [v5 updateConstraints];
    v23 = sub_1BA42FCF0();
    [v23 setHidden_];

    v24 = *&v5[OBJC_IVAR____TtC18HealthExperienceUI25MessageWithActionTileView_separatorTopConstraint];
    if (v24)
    {
      [v24 setConstant_];
    }

    v25 = *&v5[OBJC_IVAR____TtC18HealthExperienceUI25MessageWithActionTileView_actionButtonTopConstraint];
    if (v25)
    {
      [v25 setConstant_];
    }

    v26.value._countAndFlagsBits = 0xD00000000000001ALL;
    v26.value._object = 0x80000001BA4FA140;
    MessageWithActionTileView.updateAutomationIdentifiers(with:)(v26);
  }
}

void sub_1BA2A8AB0(void *a1)
{
  v3 = qword_1EDC5E100;
  v4 = *(v1 + OBJC_IVAR____TtC18HealthExperienceUIP33_1DFA22859B1ADF5237349B513C5FCFAB33SummarySharingVersionMismatchCell_messageView);
  if (v3 != -1)
  {
    swift_once();
  }

  sub_1BA4A1318();
  sub_1BA2AA4B4(a1);
  v5 = sub_1BA4A1318();
  v7 = v6;
  v26 = [objc_opt_self() systemGray5Color];
  v8 = *&v4[OBJC_IVAR____TtC18HealthExperienceUI25MessageWithActionTileView_titleLabel];
  v9 = sub_1BA4A6758();
  [v8 setText_];

  v10 = OBJC_IVAR____TtC18HealthExperienceUI25MessageWithActionTileView_bodyLabel;
  v11 = *&v4[OBJC_IVAR____TtC18HealthExperienceUI25MessageWithActionTileView_bodyLabel];
  v12 = sub_1BA4A6758();
  [v11 setText_];

  [*&v4[v10] setHidden_];
  v13 = OBJC_IVAR____TtC18HealthExperienceUI25MessageWithActionTileView_actionButton;
  v14 = *&v4[OBJC_IVAR____TtC18HealthExperienceUI25MessageWithActionTileView_actionButton];
  v15 = objc_opt_self();
  v16 = swift_allocObject();
  v16[2] = v14;
  v16[3] = v5;
  v16[4] = v7;
  v16[5] = 0;
  v17 = swift_allocObject();
  *(v17 + 16) = sub_1B9F7B15C;
  *(v17 + 24) = v16;
  aBlock[4] = sub_1B9F7B0CC;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B9F7B0FC;
  aBlock[3] = &block_descriptor_70;
  v18 = _Block_copy(aBlock);
  v19 = v14;

  [v15 performWithoutAnimation_];
  _Block_release(v18);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v21 = HIBYTE(v7) & 0xF;
    if ((v7 & 0x2000000000000000) == 0)
    {
      v21 = v5 & 0xFFFFFFFFFFFFLL;
    }

    [*&v4[v13] setHidden_];
    [v4 setBackgroundColor_];
    [v4 updateConstraints];
    v22 = sub_1BA42FCF0();
    [v22 setHidden_];

    v23 = *&v4[OBJC_IVAR____TtC18HealthExperienceUI25MessageWithActionTileView_separatorTopConstraint];
    if (v23)
    {
      [v23 setConstant_];
    }

    v24 = *&v4[OBJC_IVAR____TtC18HealthExperienceUI25MessageWithActionTileView_actionButtonTopConstraint];
    if (v24)
    {
      [v24 setConstant_];
    }

    v25.value._countAndFlagsBits = 0xD00000000000001ALL;
    v25.value._object = 0x80000001BA4FA140;
    MessageWithActionTileView.updateAutomationIdentifiers(with:)(v25);
  }
}

id sub_1BA2A8EB8(void *a1)
{
  sub_1BA011090();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1BA4A15D8();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [objc_opt_self() defaultWorkspace];
  if (result)
  {
    v10 = result;
    sub_1BA4A15C8();
    result = (*(v6 + 48))(v4, 1, v5);
    if (result != 1)
    {
      (*(v6 + 32))(v8, v4, v5);
      v11 = sub_1BA4A1548();
      (*(v6 + 8))(v8, v5);
      [v10 openURL:v11 configuration:0 completionHandler:0];

      type metadata accessor for HealthAppAnalyticsManager();
      v15 = 5;
      v12 = [a1 viewController];
      v14 = 0;
      memset(v13, 0, sizeof(v13));
      static HealthAppAnalyticsManager.submitInteraction(action:viewController:analyticProvenance:pinnedContentManager:)(&v15, v12, 0xD000000000000010, 0x80000001BA4FA1D0, v13);

      return sub_1BA011178(v13, &unk_1EDC6ADB0, &qword_1EDC6ADC0, MEMORY[0x1E69A3D48]);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1BA2A9118(uint64_t a1, uint64_t *a2)
{
  sub_1BA04B338(a1, v6);
  v3 = *a2;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI30SharingVersionMismatchTileView_context;
  swift_beginAccess();
  sub_1BA0BACD4(v6, v3 + v4);
  swift_endAccess();
  sub_1BA2A91A0();
  return sub_1BA011178(v6, &qword_1EDC6C130, &qword_1EDC6C140, &protocol descriptor for FeedItemViewControllerContext);
}

uint64_t sub_1BA2A91A0()
{
  v1 = (v0 + OBJC_IVAR____TtC18HealthExperienceUI30SharingVersionMismatchTileView_context);
  result = swift_beginAccess();
  v3 = v1[3];
  if (v3)
  {
    v4 = v1[4];
    v5 = __swift_project_boxed_opaque_existential_1(v1, v1[3]);
    v6 = *(v3 - 8);
    v7 = MEMORY[0x1EEE9AC00](v5);
    v9 = v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v6 + 16))(v9, v7);
    v10 = (*(v4 + 8))(v3, v4);
    v12 = v11;
    result = (*(v6 + 8))(v9, v3);
    if (v12 >> 60 != 15)
    {
      sub_1BA4A0EB8();
      swift_allocObject();
      sub_1BA4A0EA8();
      sub_1BA2A9F58();
      sub_1BA4A0E98();

      sub_1BA2A86B0(v13[1], v13[2]);
      sub_1B9F6AC8C(v10, v12);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BA2A9390@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI30SharingVersionMismatchTileView_context;
  swift_beginAccess();
  return sub_1BA04B338(v1 + v3, a1);
}

uint64_t sub_1BA2A93E8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI30SharingVersionMismatchTileView_context;
  swift_beginAccess();
  sub_1BA0BACD4(a1, v1 + v3);
  swift_endAccess();
  sub_1BA2A91A0();
  return sub_1BA011178(a1, &qword_1EDC6C130, &qword_1EDC6C140, &protocol descriptor for FeedItemViewControllerContext);
}

uint64_t (*sub_1BA2A946C(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1BA2A94D0;
}

uint64_t sub_1BA2A94D0(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return sub_1BA2A91A0();
  }

  return result;
}

uint64_t sub_1BA2A9524@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x4E676E6972616873 && a2 == 0xEB00000000656D61)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1BA4A8338();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1BA2A95B0(uint64_t a1)
{
  v2 = sub_1BA2A9774();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BA2A95EC(uint64_t a1)
{
  v2 = sub_1BA2A9774();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SharingVersionMismatchTileView.Model.encode(to:)(void *a1)
{
  sub_1BA2A994C(0, &qword_1EBBEFE80, MEMORY[0x1E69E6F58]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BA2A9774();
  sub_1BA4A8548();
  sub_1BA4A8208();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_1BA2A9774()
{
  result = qword_1EBBEFE88;
  if (!qword_1EBBEFE88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEFE88);
  }

  return result;
}

uint64_t SharingVersionMismatchTileView.Model.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1BA2A994C(0, &qword_1EBBEFE90, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v14 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BA2A9774();
  sub_1BA4A8528();
  if (!v2)
  {
    v10 = sub_1BA4A8138();
    v12 = v11;
    (*(v7 + 8))(v9, v6);
    *a2 = v10;
    a2[1] = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_1BA2A994C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1BA2A9774();
    v7 = a3(a1, &type metadata for SharingVersionMismatchTileView.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1BA2A99C8(void *a1)
{
  sub_1BA2A994C(0, &qword_1EBBEFE80, MEMORY[0x1E69E6F58]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BA2A9774();
  sub_1BA4A8548();
  sub_1BA4A8208();
  return (*(v4 + 8))(v6, v3);
}

id SharingVersionMismatchTileView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

char *SharingVersionMismatchTileView.init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = &v4[OBJC_IVAR____TtC18HealthExperienceUI30SharingVersionMismatchTileView_context];
  v10 = type metadata accessor for MessageWithActionTileView();
  *v9 = 0u;
  *(v9 + 1) = 0u;
  *(v9 + 4) = 0;
  v11 = [objc_allocWithZone(v10) initWithFrame_];
  *&v4[OBJC_IVAR____TtC18HealthExperienceUI30SharingVersionMismatchTileView_messageView] = v11;
  v22.receiver = v4;
  v22.super_class = type metadata accessor for SharingVersionMismatchTileView();
  v12 = objc_msgSendSuper2(&v22, sel_initWithFrame_, a1, a2, a3, a4);
  v13 = OBJC_IVAR____TtC18HealthExperienceUI30SharingVersionMismatchTileView_messageView;
  v14 = *&v12[OBJC_IVAR____TtC18HealthExperienceUI30SharingVersionMismatchTileView_messageView];
  v15 = v12;
  [v15 addSubview_];
  v16 = *&v12[v13];
  v17 = swift_allocObject();
  *(v17 + 16) = v15;
  v18 = (v16 + OBJC_IVAR____TtC18HealthExperienceUI25MessageWithActionTileView_didTapActionButton);
  swift_beginAccess();
  v19 = *v18;
  *v18 = sub_1BA2A9D24;
  v18[1] = v17;
  v20 = v15;
  sub_1B9F0E310(v19);
  [*&v12[v13] hk:v20 alignConstraintsWithView:?];
  sub_1BA2A86B0(0, 0);

  return v20;
}

id SharingVersionMismatchTileView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void SharingVersionMismatchTileView.init(coder:)()
{
  v1 = v0 + OBJC_IVAR____TtC18HealthExperienceUI30SharingVersionMismatchTileView_context;
  *v1 = 0u;
  *(v1 + 16) = 0u;
  *(v1 + 32) = 0;
  sub_1BA4A8018();
  __break(1u);
}

id SharingVersionMismatchTileView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SharingVersionMismatchTileView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_1BA2A9F28(uint64_t a1)
{
  *(a1 + 8) = sub_1BA2A9F58();
  result = sub_1BA2A9FAC();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1BA2A9F58()
{
  result = qword_1EBBEFEA0;
  if (!qword_1EBBEFEA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEFEA0);
  }

  return result;
}

unint64_t sub_1BA2A9FAC()
{
  result = qword_1EBBEFEA8;
  if (!qword_1EBBEFEA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEFEA8);
  }

  return result;
}

unint64_t sub_1BA2AA004()
{
  result = qword_1EBBEFEB0;
  if (!qword_1EBBEFEB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEFEB0);
  }

  return result;
}

uint64_t sub_1BA2AA10C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
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

uint64_t sub_1BA2AA168(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_1BA2AA1DC()
{
  result = qword_1EBBEFEB8;
  if (!qword_1EBBEFEB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEFEB8);
  }

  return result;
}

unint64_t sub_1BA2AA234()
{
  result = qword_1EBBEFEC0;
  if (!qword_1EBBEFEC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEFEC0);
  }

  return result;
}

unint64_t sub_1BA2AA28C()
{
  result = qword_1EBBEFEC8;
  if (!qword_1EBBEFEC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEFEC8);
  }

  return result;
}

uint64_t sub_1BA2AA2E0(uint64_t a1, unint64_t a2)
{
  if (a2 >= 2)
  {
    v5 = qword_1EDC5E100;

    if (v5 != -1)
    {
      swift_once();
    }

    sub_1BA4A1318();
    sub_1B9F40D10(0, &qword_1EDC6B410, &qword_1EDC6B3D0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_1BA4B5480;
    *(v6 + 56) = MEMORY[0x1E69E6158];
    *(v6 + 64) = sub_1B9F1BE20();
    *(v6 + 32) = a1;
    *(v6 + 40) = a2;
    v7 = sub_1BA4A6768();

    return v7;
  }

  else
  {
    if (qword_1EDC5E100 != -1)
    {
      swift_once();
    }

    return sub_1BA4A1318();
  }
}

uint64_t sub_1BA2AA4B4(void *a1)
{
  v1 = a1[5];
  if (a1[1])
  {
    v2 = v1 == 0;
  }

  else
  {
    v2 = 1;
  }

  if (v2)
  {
    if (qword_1EDC5E100 != -1)
    {
      swift_once();
    }

    return sub_1BA4A1318();
  }

  else
  {
    v4 = a1[4];
    v5 = qword_1EDC5E100;

    if (v5 != -1)
    {
      swift_once();
    }

    sub_1BA4A1318();
    sub_1B9F40D10(0, &qword_1EDC6B410, &qword_1EDC6B3D0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_1BA4B5480;
    *(v6 + 56) = MEMORY[0x1E69E6158];
    *(v6 + 64) = sub_1B9F1BE20();
    *(v6 + 32) = v4;
    *(v6 + 40) = v1;
    v7 = sub_1BA4A6768();

    return v7;
  }
}

id DelayedDataSource.changeObservers.getter()
{
  v0 = sub_1B9F1E1BC();

  return v0;
}

void DelayedDataSource.changeObservers.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  *(v1 + 16) = a1;
}

double sub_1BA2AA758@<D0>(uint64_t a1@<X8>)
{
  DelayedDataSource.dataSourceState.getter();
  result = *&v3;
  *a1 = v3;
  *(a1 + 16) = v4;
  return result;
}

void (*DelayedDataSource.dataSourceState.modify(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  MEMORY[0x1EEE9AC00](v2);
  KeyPath = swift_getKeyPath();
  v3[4] = KeyPath;
  MEMORY[0x1EEE9AC00](KeyPath);
  v3[5] = swift_getKeyPath();
  v3[6] = sub_1BA4A4F18();
  return sub_1B9FD0D9C;
}

uint64_t DelayedDataSource.$dataSourceState.setter(uint64_t a1)
{
  sub_1BA2AB140(a1);
  type metadata accessor for DelayedDataSource.DataSourceState();
  v2 = sub_1BA4A4F48();
  v3 = *(*(v2 - 8) + 8);

  return v3(a1, v2);
}

void (*DelayedDataSource.$dataSourceState.modify(void *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  type metadata accessor for DelayedDataSource.DataSourceState();
  v6 = sub_1BA4A4F48();
  v5[1] = v6;
  v7 = *(v6 - 8);
  v5[2] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[3] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[3] = malloc(*(v7 + 64));
    v9 = malloc(v8);
  }

  v5[4] = v9;
  DelayedDataSource.$dataSourceState.getter();
  return sub_1BA2AAAF8;
}

void sub_1BA2AAAF8(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  v4 = *(*a1 + 32);
  v5 = *(*a1 + 8);
  v6 = *(*a1 + 16);
  if (a2)
  {
    (*(v6 + 16))(*(*a1 + 24), v4, v5);
    sub_1BA2AB140(v3);
    v7 = *(v6 + 8);
    v7(v3, v5);
    v7(v4, v5);
  }

  else
  {
    sub_1BA2AB140(*(*a1 + 32));
    (*(v6 + 8))(v4, v5);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t DelayedDataSource.identifier.getter()
{
  v0 = sub_1B9F315F4();

  return v0;
}

void *DelayedDataSource.__allocating_init(delay:dataSourceProvider:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_1BA2AB284(a1, a2, a3);

  return v3;
}

void *DelayedDataSource.init(delay:dataSourceProvider:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_1B9F30E88(a1, a2, a3);

  return v3;
}

uint64_t sub_1BA2AAC74()
{
  DelayedDataSource.dataSourceState.getter();
  if (v3 == 1 && (swift_unknownObjectRetain(), v1))
  {
    sub_1B9F33840(v1, v2, 1);
    return v1;
  }

  else
  {
    sub_1B9F33840(v1, v2, v3);
    result = sub_1BA4A8018();
    __break(1u);
  }

  return result;
}

double DelayedDataSource.item(for:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *v3;
  if (DelayedDataSource.wrappedDataSource.getter())
  {
    (*(*(v7 + 88) + 24))(a1, a2, *(v7 + 80));

    swift_unknownObjectRelease();
  }

  else
  {
    *(a3 + 32) = 0;
    result = 0.0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

uint64_t sub_1BA2AAE1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, Swift::Bool a5)
{
  sub_1B9F12538();
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA4A45C8();

  sub_1BA2AB2D8(v10, a5);

  return (*(v8 + 8))(v10, v7);
}

id *DelayedDataSource.deinit()
{
  v1 = *(*v0 + 13);
  type metadata accessor for DelayedDataSource.DataSourceState();
  v2 = sub_1BA4A4F58();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t DelayedDataSource.__deallocating_deinit()
{
  DelayedDataSource.deinit();

  return swift_deallocClassInstance();
}

uint64_t DelayedDataSource<>.supplementaryItem(ofKind:at:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *v4;
  sub_1BA2AAC74();
  (*(a4 + 8))(a1, a2, a3, *(v9 + 80), a4);
  return swift_unknownObjectRelease();
}

uint64_t sub_1BA2AB140(uint64_t a1)
{
  type metadata accessor for DelayedDataSource.DataSourceState();
  v2 = sub_1BA4A4F48();
  v3 = MEMORY[0x1EEE9AC00](v2);
  (*(v5 + 16))(&v7 - v4, a1, v3);
  swift_beginAccess();
  sub_1BA4A4F58();
  sub_1BA4A4F08();
  return swift_endAccess();
}

uint64_t sub_1BA2AB348(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    return swift_unknownObjectRetain();
  }

  else
  {
  }
}

uint64_t SharingParticipantDataSourceItem.uniqueIdentifier.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t SharingParticipantDataSourceItem.deinit()
{

  return v0;
}

uint64_t SharingParticipantDataSourceItem.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1BA2AB498(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE0DA58](a1, WitnessTable);
}

uint64_t RevokeSharingDataSourceItem.uniqueIdentifier.getter()
{
  v1 = *(v0 + 64);

  return v1;
}

uint64_t sub_1BA2AB53C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 96);
  v5 = *(v3 + 104);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_1BA0A4A28;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_1B9F0F1B8(v4);
}

uint64_t sub_1BA2AB5D0(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1BA0C68C8;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *a2;
  swift_beginAccess();
  v8 = *(v7 + 96);
  *(v7 + 96) = v6;
  *(v7 + 104) = v5;
  sub_1B9F0F1B8(v3);
  return sub_1B9F0E310(v8);
}

uint64_t sub_1BA2AB68C()
{
  swift_beginAccess();
  v1 = *(v0 + 96);
  sub_1B9F0F1B8(v1);
  return v1;
}

uint64_t sub_1BA2AB6DC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 96);
  *(v2 + 96) = a1;
  *(v2 + 104) = a2;
  return sub_1B9F0E310(v5);
}

uint64_t sub_1BA2AB780(char a1)
{
  v2 = v1;
  v4 = sub_1BA4A1798();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v1 + 32) = 0u;
  *(v1 + 48) = 0u;
  v16 = 0xD00000000000001CLL;
  v17 = 0x80000001BA4FA3F0;
  sub_1BA4A1788();
  sub_1BA2AC964(&qword_1EDC6AE60, 255, MEMORY[0x1E69695A8]);
  v8 = sub_1BA4A82D8();
  MEMORY[0x1BFAF1350](v8);

  (*(v5 + 8))(v7, v4);
  v9 = v17;
  *(v1 + 64) = v16;
  *(v1 + 72) = v9;
  v16 = type metadata accessor for ProfileButtonCell();
  sub_1BA071208();
  *(v1 + 80) = sub_1BA4A6808();
  *(v1 + 88) = v10;
  *(v1 + 96) = 0;
  *(v1 + 104) = 0;
  if (a1)
  {
    *(v1 + 16) = 0;
    *(v1 + 24) = [objc_opt_self() secondaryLabelColor];
    if (qword_1EDC5E100 == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_6;
  }

  *(v1 + 16) = 1;
  *(v1 + 24) = [objc_opt_self() systemRedColor];
  if (qword_1EDC5E100 != -1)
  {
LABEL_6:
    swift_once();
  }

LABEL_5:
  v11 = sub_1BA4A1318();
  v13 = v12;
  swift_beginAccess();
  *(v2 + 32) = v11;
  *(v2 + 40) = v13;

  return v2;
}

void sub_1BA2ABAC8(uint64_t a1, void *a2)
{
  v5 = *v2;
  v6 = sub_1BA4A3EA8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA4A3E48();
  v10 = sub_1BA4A3E88();
  v11 = sub_1BA4A6FC8();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v22 = v7;
    v13 = v12;
    v14 = swift_slowAlloc();
    v23[0] = v14;
    v23[1] = v5;
    *v13 = 136446210;
    swift_getMetatypeMetadata();
    v15 = sub_1BA4A6808();
    v17 = sub_1B9F0B82C(v15, v16, v23);
    v21 = v6;
    v18 = a2;
    v19 = a1;
    v20 = v17;

    *(v13 + 4) = v20;
    a1 = v19;
    a2 = v18;
    _os_log_impl(&dword_1B9F07000, v10, v11, "[%{public}s]: Tapped stop sharing profile", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v14);
    MEMORY[0x1BFAF43A0](v14, -1, -1);
    MEMORY[0x1BFAF43A0](v13, -1, -1);

    (*(v22 + 8))(v9, v21);
  }

  else
  {

    (*(v7 + 8))(v9, v6);
  }

  sub_1BA2ABCF8(a2, a1);
}

void sub_1BA2ABCF8(void *a1, uint64_t a2)
{
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  sub_1BA4A1318();
  sub_1BA4A1318();
  sub_1BA4A1318();
  v3 = swift_allocObject();
  swift_weakInit();
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = a1;

  v15 = a1;
  v5 = sub_1BA4A6758();

  aBlock[4] = sub_1BA2AC9AC;
  aBlock[5] = v4;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BA0B06D4;
  aBlock[3] = &block_descriptor_72;
  v6 = _Block_copy(aBlock);

  v7 = objc_opt_self();
  v8 = [v7 actionWithTitle:v5 style:2 handler:{v6, 0x80000001BA4FA660}];
  _Block_release(v6);

  sub_1BA4A1318();
  v9 = sub_1BA4A6758();

  v10 = [v7 actionWithTitle:v9 style:1 handler:{0, 0x80000001BA4FA6E0}];

  v11 = sub_1BA4A6758();

  v12 = sub_1BA4A6758();

  v13 = [objc_opt_self() alertControllerWithTitle:v11 message:v12 preferredStyle:0];

  v14 = [v13 popoverPresentationController];
  [v14 setSourceItem_];

  [v13 addAction_];
  [v13 addAction_];
  [v15 presentViewController:v13 animated:1 completion:0];
}

uint64_t sub_1BA2AC13C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v5 = result;
    swift_beginAccess();
    v6 = *(v5 + 96);
    sub_1B9F0F1B8(v6);

    if (v6)
    {
      v6(a3);
      return sub_1B9F0E310(v6);
    }
  }

  return result;
}

uint64_t RevokeSharingDataSourceItem.deinit()
{

  sub_1B9F0E310(*(v0 + 96));
  return v0;
}

uint64_t RevokeSharingDataSourceItem.__deallocating_deinit()
{

  sub_1B9F0E310(*(v0 + 96));

  return swift_deallocClassInstance();
}

uint64_t sub_1BA2AC2C0()
{
  v1 = *(*v0 + 64);

  return v1;
}

uint64_t sub_1BA2AC2F4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE0DA58](a1, WitnessTable);
}

uint64_t sub_1BA2AC3C4(uint64_t a1, uint64_t a2)
{
  result = sub_1BA2AC964(&qword_1EBBEFED8, a2, type metadata accessor for SharingParticipantDataSourceItem);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1BA2AC488(uint64_t a1, uint64_t a2)
{
  result = sub_1BA2AC964(&qword_1EBBEFEE8, a2, type metadata accessor for RevokeSharingDataSourceItem);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1BA2AC4E0(uint64_t a1, uint64_t a2)
{
  result = sub_1BA2AC964(&qword_1EBBEFEF0, a2, type metadata accessor for RevokeSharingDataSourceItem);
  *(a1 + 8) = result;
  return result;
}

uint64_t keypath_getTm_0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 40);
  *a2 = *(v3 + 32);
  a2[1] = v4;
}

uint64_t keypath_get_4Tm@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 56);
  *a2 = *(v3 + 48);
  a2[1] = v4;
}

uint64_t sub_1BA2AC964(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_1BA2AC9CC(uint64_t a1, uint64_t *a2)
{
  sub_1B9F0A534(a1, v6);
  v3 = *a2;
  v4 = qword_1EBC09290;
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1(v3 + v4);
  sub_1B9F25598(v6, v3 + v4);
  return swift_endAccess();
}

uint64_t sub_1BA2ACA38@<X0>(uint64_t a1@<X8>)
{
  v3 = qword_1EBC09290;
  swift_beginAccess();
  return sub_1B9F0A534(v1 + v3, a1);
}

uint64_t sub_1BA2ACA90(__int128 *a1)
{
  v3 = qword_1EBC09290;
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1(v1 + v3);
  sub_1B9F25598(a1, v1 + v3);
  return swift_endAccess();
}

id PinnedContentDataSource.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PinnedContentDataSource();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1BA2ACC28@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = qword_1EBC09290;
  swift_beginAccess();
  return sub_1B9F0A534(v3 + v4, a1);
}

uint64_t sub_1BA2ACC84(__int128 *a1)
{
  v3 = *v1;
  v4 = qword_1EBC09290;
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1(v3 + v4);
  sub_1B9F25598(a1, v3 + v4);
  return swift_endAccess();
}

id ChromeHostView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

void sub_1BA2ACF6C(uint64_t a1, void *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2 + OBJC_IVAR____TtC18HealthExperienceUI14ChromeHostView_header;
  swift_beginAccess();
  v5 = *v4;
  *v4 = v2;
  *(v4 + 8) = v3;
  v6 = v2;
}

id sub_1BA2ACFD0()
{
  v1 = (v0 + OBJC_IVAR____TtC18HealthExperienceUI14ChromeHostView_header);
  swift_beginAccess();
  v2 = *v1;
  v3 = *v1;
  return v2;
}

id ChromeHostView.init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = &v4[OBJC_IVAR____TtC18HealthExperienceUI14ChromeHostView_header];
  v10 = type metadata accessor for ChromeHostView();
  *v9 = 0;
  *(v9 + 1) = 0;
  v19.receiver = v4;
  v19.super_class = v10;
  v11 = objc_msgSendSuper2(&v19, sel_initWithFrame_, a1, a2, a3, a4);
  v12 = *MEMORY[0x1E69796E8];
  v13 = v11;
  v14 = [v13 layer];
  [v14 setCornerCurve_];

  v15 = [v13 layer];
  [v15 setCornerRadius_];

  v16 = [v13 layer];
  [v16 setMaskedCorners_];

  [v13 setClipsToBounds_];
  v17 = [objc_opt_self() secondarySystemGroupedBackgroundColor];
  [v13 setBackgroundColor_];

  return v13;
}

id ChromeHostView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id ChromeHostView.init(coder:)(void *a1)
{
  v3 = &v1[OBJC_IVAR____TtC18HealthExperienceUI14ChromeHostView_header];
  v4 = type metadata accessor for ChromeHostView();
  *v3 = 0;
  *(v3 + 1) = 0;
  v14.receiver = v1;
  v14.super_class = v4;
  v5 = objc_msgSendSuper2(&v14, sel_initWithCoder_, a1);
  v6 = v5;
  if (v5)
  {
    v7 = *MEMORY[0x1E69796E8];
    v8 = v5;
    v9 = [v8 layer];
    [v9 setCornerCurve_];

    v10 = [v8 layer];
    [v10 setCornerRadius_];

    v11 = [v8 layer];
    [v11 setMaskedCorners_];

    [v8 setClipsToBounds_];
    v12 = [objc_opt_self() secondarySystemGroupedBackgroundColor];
    [v8 setBackgroundColor_];

    a1 = v12;
  }

  return v6;
}

id ChromeHostView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ChromeHostView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_1BA2AD424(unint64_t result)
{
  if (result >= 2)
  {
  }

  return result;
}

uint64_t sub_1BA2AD498()
{
}

uint64_t sub_1BA2AD4D8()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_snapshot;
  sub_1B9F12538();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t sub_1BA2AD5B8()
{
  sub_1BA2AD4D8();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for MedicalDetailsDataSource()
{
  result = qword_1EBBEFEF8;
  if (!qword_1EBBEFEF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BA2AD710(void *a1)
{
  v2 = v1;
  v34 = *MEMORY[0x1E69E9840];
  v4 = sub_1BA4A1798();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC18HealthExperienceUI24MedicalDetailsDataSource_medicalIDDataSourceItem;
  *(v2 + OBJC_IVAR____TtC18HealthExperienceUI24MedicalDetailsDataSource_medicalIDDataSourceItem) = 0;
  v9 = type metadata accessor for CharacteristicsDataSourceItem();
  swift_allocObject();
  v10 = a1;
  v11 = sub_1BA3907CC(v10);
  *(v2 + OBJC_IVAR____TtC18HealthExperienceUI24MedicalDetailsDataSource_characteristicsDataSourceItem) = v11;
  sub_1BA28168C();
  inited = swift_initStackObject();
  v30 = xmmword_1BA4B5480;
  *(inited + 16) = xmmword_1BA4B5480;
  *(inited + 56) = v9;
  *(inited + 64) = sub_1BA2ADAAC(&qword_1EBBEFF08, type metadata accessor for CharacteristicsDataSourceItem);
  *(inited + 32) = v11;
  v13 = objc_opt_self();

  v14 = [v13 shared];
  LODWORD(v13) = [v14 isMedicalIDAvailable];

  if (v13)
  {
    sub_1BA4A2998();
    v15 = v10;
    v16 = MEMORY[0x1BFAED380]();
    v17 = type metadata accessor for MedicalIDDataSourceItem();
    v18 = objc_allocWithZone(v17);
    v19 = sub_1BA169908(v15, v16);

    v20 = *(v2 + v8);
    *(v2 + v8) = v19;
    v21 = v19;

    inited = sub_1BA27EFB4(1, 2, 1, inited);
    v32 = v17;
    v33 = sub_1BA2ADAAC(&qword_1EBBECD70, type metadata accessor for MedicalIDDataSourceItem);
    *&v31 = v21;
    *(inited + 16) = 2;
    sub_1B9F25598(&v31, inited + 72);
  }

  sub_1B9FF6758();
  v22 = swift_initStackObject();
  *(v22 + 16) = v30;
  v23 = sub_1B9FE4F98(inited);

  sub_1BA4A1788();
  v24 = sub_1BA4A1748();
  v26 = v25;
  (*(v5 + 8))(v7, v4);
  v27 = MEMORY[0x1E69E7CC0];
  *(v22 + 48) = MEMORY[0x1E69E7CC0];
  *(v22 + 56) = sub_1B9F1C5F0(v27);
  *(v22 + 32) = 0;
  *(v22 + 40) = 0;

  *(v22 + 48) = v23;
  v28 = Array<A>.identifierToIndexDict()(v23);

  *(v22 + 56) = v28;
  *(v22 + 64) = v24;
  *(v22 + 72) = v26;
  return sub_1B9F1DAFC(v22, 1, sub_1B9F5AEA0, 0);
}

uint64_t sub_1BA2ADAAC(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1BA2ADBAC(void *a1, uint64_t a2, unint64_t a3)
{
  v5 = [objc_allocWithZone(MEMORY[0x1E696C1C0]) init];
  v6 = sub_1BA4A1D38();
  if (v6)
  {
    v7 = v6;
    [v5 setProfileIdentifier_];
  }

  [v5 resume];
  v8 = v5;
  UIViewController.resolvedHealthExperienceStore.getter(v30);
  UIViewController.resolvedPresentation.getter(&v29);
  v9 = v29;
  v10 = objc_allocWithZone(type metadata accessor for AllTrendsViewController());
  *&v10[OBJC_IVAR____TtC18HealthExperienceUI23AllTrendsViewController_cancellables] = MEMORY[0x1E69E7CD0];
  *&v10[OBJC_IVAR____TtC18HealthExperienceUI23AllTrendsViewController_healthStore] = v8;
  sub_1B9F0A534(v30, &v10[OBJC_IVAR____TtC18HealthExperienceUI23AllTrendsViewController_healthExperienceStore]);
  v28[0] = v9;
  v11 = Presentation.description.getter();
  v12 = &v10[OBJC_IVAR____TtC18HealthExperienceUI23AllTrendsViewController_provenance];
  *v12 = v11;
  v12[1] = v13;
  sub_1B9F0A534(v30, v28);
  type metadata accessor for AllTrendsDataSource(0);
  swift_allocObject();
  sub_1B9F0A534(v28, v27);
  v26 = v9;
  type metadata accessor for AllTrendsHeaderDataSource(0);
  swift_allocObject();
  v14 = v8;
  v15 = sub_1BA297AC0(v14, v27, &v26);
  sub_1B9F0A534(v28, v27);
  type metadata accessor for AllTrendsSectionedDataSource(0);
  swift_allocObject();
  v16 = v14;

  v17 = sub_1BA296558(v16, v27, a3);
  type metadata accessor for NoDataDataSource();
  swift_allocObject();

  v18 = NoDataDataSource.init()();
  sub_1BA2AEC14(0, &qword_1EBBEE058, type metadata accessor for AllTrendsSectionedDataSource, type metadata accessor for NoDataDataSource);
  swift_allocObject();
  v19 = sub_1BA063C54(v17, v18);

  swift_beginAccess();
  v19[5] = sub_1BA29613C;
  v19[6] = 0;

  sub_1B9F1DEA0();
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1BA4B5460;
  *(v20 + 32) = v15;
  *(v20 + 40) = &protocol witness table for MutableArrayDataSource;
  *(v20 + 48) = v19;
  *(v20 + 56) = &protocol witness table for PrimarySecondaryDataSource<A, B>;
  v21 = CompoundSectionedDataSource.init(_:)(v20);

  __swift_destroy_boxed_opaque_existential_1(v28);
  *&v10[OBJC_IVAR____TtC18HealthExperienceUI23AllTrendsViewController_trendDataSource] = v21;

  v23 = CompoundDataSourceCollectionViewController.init(dataSource:)(v22);

  __swift_destroy_boxed_opaque_existential_1(v30);
  v24 = [a1 navigationController];
  if (v24)
  {
    v25 = v24;
    [v24 pushViewController:v23 animated:1];
  }
}

id *SummaryFeedTrendsSectionDataSource.deinit()
{
  v1 = *(*v0 + 13);
  sub_1B9F0CB68(0, &qword_1EBBEFF10, sub_1BA2AE4D8, MEMORY[0x1E695C070]);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t SummaryFeedTrendsSectionDataSource.__deallocating_deinit()
{
  v1 = *(*v0 + 13);
  sub_1B9F0CB68(0, &qword_1EBBEFF10, sub_1BA2AE4D8, MEMORY[0x1E695C070]);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

id sub_1BA2AE1B0(__int128 *a1)
{
  v4 = *a1;
  v1 = *(a1 + 2);
  static GridLayoutEngine.largeCard.getter(v8);
  v6 = v4;
  v7 = v1;
  v2 = GridLayoutEngine.layout(for:)(&v6);
  v5[2] = v8[2];
  v5[3] = v8[3];
  v5[4] = v8[4];
  v5[0] = v8[0];
  v5[1] = v8[1];
  sub_1B9F5A690(v5);
  return v2;
}

id SignificantTrendsDataSource.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SignificantTrendsDataSource(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void *sub_1BA2AE338(uint64_t a1, char a2)
{
  v3 = v2;
  sub_1B9F0ADF8(0, &qword_1EDC5E090);
  v6 = sub_1BA4A7A78();
  v7 = objc_allocWithZone(MEMORY[0x1E696C4F8]);
  v8 = sub_1BA4A6758();
  v9 = [v7 initWithName:v8 loggingCategory:v6];

  v3[2] = v9;
  v10 = *(*v3 + 112);
  *(v3 + v10) = a1;
  swift_beginAccess();
  LOBYTE(v16) = a2 & 1;
  sub_1BA2AEB84();

  sub_1BA4A4EE8();
  swift_endAccess();
  v11 = *(a1 + 32);
  v12 = (v3 + *(*v3 + 120));
  *v12 = *(a1 + 24);
  v12[1] = v11;
  swift_beginAccess();
  v13 = *(v3 + v10);
  swift_beginAccess();
  v14 = *(v13 + 16);

  [v14 registerObserver_];
  return v3;
}

void *sub_1BA2AE534(uint64_t a1, char a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  v7 = v4;
  sub_1B9F0ADF8(0, &qword_1EDC5E090);
  v10 = sub_1BA4A7A78();
  v11 = objc_allocWithZone(MEMORY[0x1E696C4F8]);
  v12 = sub_1BA4A6758();
  v13 = [v11 initWithName:v12 loggingCategory:v10];

  v7[2] = v13;
  v14 = *(*v7 + 112);
  *(v7 + v14) = a1;
  swift_beginAccess();
  LOBYTE(v20) = a2 & 1;
  sub_1B9F325DC(0, a3, a4, &protocol witness table for MutableArrayDataSource, type metadata accessor for HideableDataSource.Visibility);

  sub_1BA4A4EE8();
  swift_endAccess();
  v15 = *(a1 + OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_identifier + 8);
  v16 = (v7 + *(*v7 + 120));
  *v16 = *(a1 + OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_identifier);
  v16[1] = v15;
  swift_beginAccess();
  v17 = *(v7 + v14);
  swift_beginAccess();
  v18 = *(v17 + 16);

  [v18 registerObserver_];
  return v7;
}

void *sub_1BA2AE79C(uint64_t a1, char a2)
{
  v3 = v2;
  sub_1B9F0ADF8(0, &qword_1EDC5E090);
  v6 = sub_1BA4A7A78();
  v7 = objc_allocWithZone(MEMORY[0x1E696C4F8]);
  v8 = sub_1BA4A6758();
  v9 = [v7 initWithName:v8 loggingCategory:v6];

  v3[2] = v9;
  v10 = *(*v3 + 112);
  *(v3 + v10) = a1;
  swift_beginAccess();
  LOBYTE(v16) = a2 & 1;
  sub_1B9F325DC(0, &qword_1EBBEFF18, type metadata accessor for CloudSyncAllHealthDataDataSource, &protocol witness table for ArrayDataSource, type metadata accessor for HideableDataSource.Visibility);

  sub_1BA4A4EE8();
  swift_endAccess();
  v11 = *(a1 + 48);
  v12 = (v3 + *(*v3 + 120));
  *v12 = *(a1 + 40);
  v12[1] = v11;
  swift_beginAccess();
  v13 = *(v3 + v10);
  swift_beginAccess();
  v14 = *(v13 + 16);

  [v14 registerObserver_];
  return v3;
}

void *sub_1BA2AE974(void *a1, uint64_t a2, void (*a3)(void))
{
  v5 = v3;
  sub_1B9F0ADF8(0, &qword_1EDC5E090);
  v7 = sub_1BA4A7A78();
  v8 = objc_allocWithZone(MEMORY[0x1E696C4F8]);
  v9 = sub_1BA4A6758();
  v10 = [v8 initWithName:v9 loggingCategory:v7];

  v5[2] = v10;
  v11 = *(*v5 + 112);
  *(v5 + v11) = a1;
  swift_beginAccess();
  a3(0);
  v12 = a1;
  sub_1BA4A4EE8();
  swift_endAccess();
  v13 = *&v12[qword_1EDC84AD0 + 8];
  v14 = (v5 + *(*v5 + 120));
  *v14 = *&v12[qword_1EDC84AD0];
  v14[1] = v13;
  swift_beginAccess();
  v15 = *(v5 + v11);
  v16 = qword_1EBBEA528;
  swift_beginAccess();
  v17 = *(v15 + v16);

  [v17 registerObserver_];
  return v5;
}

void sub_1BA2AEB84()
{
  if (!qword_1EBBEFF20)
  {
    sub_1BA2AEC14(255, &qword_1EBBEA9A0, type metadata accessor for SnippetAllDataDataSource, type metadata accessor for MutableArrayDataSourceWithLayout);
    v0 = type metadata accessor for HideableDataSource.Visibility();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBBEFF20);
    }
  }
}

void sub_1BA2AEC14(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    v6 = type metadata accessor for PrimarySecondaryDataSource();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t static NibLoadable.make(from:)()
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = [objc_opt_self() bundleForClass_];
  v3 = sub_1BA4A6758();
  v4 = [objc_opt_self() nibWithNibName:v3 bundle:v2];

  v8 = v0;
  swift_getMetatypeMetadata();
  v5 = [v4 instantiateWithOwner:sub_1BA4A8328() options:0];

  swift_unknownObjectRelease();
  v6 = sub_1BA4A6B08();

  if (*(v6 + 16))
  {
    sub_1B9F0AD9C(v6 + 32, v9);

    if (swift_dynamicCast())
    {
      return v8;
    }
  }

  else
  {
  }

  result = sub_1BA4A8018();
  __break(1u);
  return result;
}

uint64_t static NibLoadable.make()(uint64_t a1, uint64_t a2)
{
  swift_getMetatypeMetadata();
  v3 = sub_1BA4A6808();
  v4 = (*(a2 + 8))(v3);

  return v4;
}

uint64_t sub_1BA2AEFBC()
{
  v0 = type metadata accessor for ListLayoutConfiguration();
  v1 = MEMORY[0x1EEE9AC00](v0);
  v3 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MEMORY[0x1EEE9AC00](v1);
  v6 = &v24 - v5;
  __swift_allocate_value_buffer(v4, qword_1EDC62080);
  v7 = __swift_project_value_buffer(v0, qword_1EDC62080);
  if (qword_1EDC6CBB0 != -1)
  {
    swift_once();
  }

  v8 = __swift_project_value_buffer(v0, qword_1EDC6CBB8);
  sub_1B9F37E38(v8, v6);
  sub_1B9F37E38(v6, v3);
  *(v3 + 8) = 0;
  v9 = *(v6 + 3);
  if (!v9 || !*(v6 + 4))
  {
    if (qword_1EDC6D4A0 != -1)
    {
      swift_once();
    }

    v10 = qword_1EDC6D4B0;
    v11 = v9;
    if (!v9)
    {
      v11 = qword_1EDC6D4A8;
      v12 = qword_1EDC6D4A8;
    }

    v13 = *(v3 + 3);
    v14 = v9;

    *(v3 + 3) = v11;
    v15 = *(v6 + 4);
    v16 = v15;
    if (!v15)
    {
      v17 = v10;
      v16 = v10;
    }

    v18 = *(v3 + 4);
    v19 = v15;

    *(v3 + 4) = v16;
    v20 = *(v0 + 92);
    v21 = sub_1BA4A47C8();
    v22 = *(v21 - 8);
    (*(v22 + 8))(&v3[v20], v21);
    (*(v22 + 104))(&v3[v20], *MEMORY[0x1E69DC270], v21);
  }

  sub_1BA2AFC5C(v3, v7);
  return sub_1BA047354(v6);
}

uint64_t sub_1BA2AF254()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC18HealthExperienceUI33SharingWithYouLearnMoreDataSource_healthExperienceStore);
}

uint64_t sub_1BA2AF2A4()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_snapshot;
  sub_1B9F12538();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC18HealthExperienceUI33SharingWithYouLearnMoreDataSource_healthExperienceStore);

  return v0;
}

uint64_t sub_1BA2AF394()
{
  sub_1BA2AF2A4();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SharingWithYouLearnMoreDataSource()
{
  result = qword_1EDC62068;
  if (!qword_1EDC62068)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BA2AF4B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_1BA4A1798();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1BA4A4428();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (_sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0() == a1 && v13 == a2)
  {

    goto LABEL_13;
  }

  v15 = sub_1BA4A8338();

  if (v15)
  {
LABEL_13:
    if (qword_1EDC5E100 != -1)
    {
      swift_once();
    }

    v20 = sub_1BA4A1318();
    v22 = v21;
    _s18HealthExperienceUI29CollectionViewHeaderProvidingPAAE24makeDefaultConfiguration5UIKit013UIListContentJ0VyFZ_0();
    v23 = type metadata accessor for HeaderItem();
    swift_allocObject();
    HeaderItem.init(title:buttonText:buttonWasTapped:configuration:automationIdentifier:)(v20, v22, 0, 0, 0, 0, v12, 0, 0);
    v25 = v24;
    a3[3] = v23;
    result = sub_1B9F2AAEC(&qword_1EDC69800, type metadata accessor for HeaderItem);
    a3[4] = result;
    *a3 = v25;
    return result;
  }

  if (_sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0() == a1 && v16 == a2)
  {
  }

  else
  {
    v18 = sub_1BA4A8338();

    if ((v18 & 1) == 0)
    {
      a3[3] = &type metadata for EmptyHeaderItem;
      a3[4] = sub_1B9FDA1B0();
      *a3 = swift_allocObject();
      return EmptyHeaderItem.init()();
    }
  }

  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  v26 = sub_1BA4A1318();
  v28 = v27;
  a3[3] = &type metadata for TextViewItem;
  a3[4] = sub_1BA0712A8();
  v29 = swift_allocObject();
  *a3 = v29;
  strcpy(v32, "TextViewItem_");
  HIWORD(v32[1]) = -4864;
  sub_1BA4A1788();
  sub_1B9F2AAEC(&qword_1EDC6AE60, MEMORY[0x1E69695A8]);
  v30 = sub_1BA4A82D8();
  MEMORY[0x1BFAF1350](v30);

  result = (*(v7 + 8))(v9, v6);
  v31 = v32[1];
  *(v29 + 16) = v32[0];
  *(v29 + 24) = v31;
  *(v29 + 32) = 0;
  *(v29 + 40) = 0;
  *(v29 + 56) = 0;
  *(v29 + 64) = 0;
  *(v29 + 48) = -1;
  *(v29 + 72) = -1;
  *(v29 + 80) = v26;
  *(v29 + 88) = v28;
  *(v29 + 96) = sub_1BA34B4C4;
  *(v29 + 104) = 0;
  *(v29 + 112) = 0;
  *(v29 + 120) = 0;
  *(v29 + 128) = 0;
  return result;
}

void sub_1BA2AF96C()
{
  _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  sub_1B9F43830();

  v0 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  sub_1BA162F3C(v0, v1);

  sub_1B9FF58F8();
}

void *sub_1BA2AF9D0(uint64_t a1, void *a2)
{
  if (qword_1EDC62078 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for ListLayoutConfiguration();
  __swift_project_value_buffer(v3, qword_1EDC62080);
  return ListLayoutConfiguration.layout(for:)(a2);
}

uint64_t sub_1BA2AFA40(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = sub_1BA4A1798();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v19[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *(v3 + OBJC_IVAR____TtC18HealthExperienceUI33SharingWithYouLearnMoreDataSource_shouldDisplayRequestItem) = 0;
  v10 = OBJC_IVAR____TtC18HealthExperienceUI33SharingWithYouLearnMoreDataSource_disabledState;
  *(v3 + OBJC_IVAR____TtC18HealthExperienceUI33SharingWithYouLearnMoreDataSource_disabledState) = 2;
  sub_1B9F0A534(a1, v3 + OBJC_IVAR____TtC18HealthExperienceUI33SharingWithYouLearnMoreDataSource_healthExperienceStore);
  *(v3 + OBJC_IVAR____TtC18HealthExperienceUI33SharingWithYouLearnMoreDataSource_healthStore) = a2;
  sub_1B9F0A534(a1, v21);
  v20 = *(v3 + v10);
  type metadata accessor for RequestNewSharingRelationshipItem();
  swift_allocObject();
  *(v3 + OBJC_IVAR____TtC18HealthExperienceUI33SharingWithYouLearnMoreDataSource_item) = sub_1BA429834(v21, a2, &v20);
  sub_1B9FF6758();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BA4B5480;
  sub_1BA4A1788();
  v12 = sub_1BA4A1748();
  v14 = v13;
  (*(v7 + 8))(v9, v6);
  v15 = MEMORY[0x1E69E7CC0];
  *(inited + 48) = MEMORY[0x1E69E7CC0];
  *(inited + 56) = sub_1B9F1C5F0(v15);
  *(inited + 32) = 0;
  *(inited + 40) = 0;

  *(inited + 48) = v15;
  v16 = Array<A>.identifierToIndexDict()(v15);

  *(inited + 56) = v16;
  *(inited + 64) = v12;
  *(inited + 72) = v14;
  v17 = sub_1B9F1DAFC(inited, 0, sub_1BA2AF9D0, 0);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v17;
}

uint64_t sub_1BA2AFC5C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ListLayoutConfiguration();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t DataTypeDetailConfiguration.SampleListComponent.init(sampleType:sampleMetadataViewControllerProvider:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 40) = 0;
  *(a3 + 24) = 0u;
  *a3 = a1;
  *(a3 + 8) = 0u;
  return sub_1BA0952AC(a2, a3 + 8);
}

void sub_1BA2AFCE0()
{
  if (!qword_1EBBF18F0)
  {
    sub_1BA2AFD38();
    v0 = sub_1BA4A7AA8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBBF18F0);
    }
  }
}

unint64_t sub_1BA2AFD38()
{
  result = qword_1EBBEC590;
  if (!qword_1EBBEC590)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EBBEC590);
  }

  return result;
}

uint64_t sub_1BA2AFE34(uint64_t a1, uint64_t a2)
{
  sub_1BA2AFCE0();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t DataTypeDetailConfiguration.SampleListComponent.makeDataSource(context:)(uint64_t a1)
{
  v3 = objc_opt_self();
  v4 = *(a1 + 40);
  v5 = [v3 sharedInstanceForHealthStore_];
  v6 = [v5 createHKUnitPreferenceController];

  v7 = *(a1 + 48);
  v8 = *v1;
  type metadata accessor for DataTypeMostRecentSamplesDisclosureItemsDataSource(0);
  if ((v7 & 0xFE) == 2)
  {
    sub_1B9F0A534(a1, v13);
    return sub_1BA1350E4(v8, v4, v6, v13, v7);
  }

  else
  {
    sub_1BA2AFE34((v1 + 1), v13);
    v10 = v4;
    v11 = v8;
    v12 = sub_1BA13A3EC(v11, v10, v6, v13, v7);

    return v12;
  }
}

uint64_t DataTypeDetailConfiguration.SampleListComponent.makeDatabaseBackedMostRecentSamplesDataSource(sampleType:context:unitPreferencesController:sampleMetadataViewControllerProvider:)(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  type metadata accessor for DataTypeMostRecentSamplesDisclosureItemsDataSource(0);
  v8 = *(a2 + 40);
  sub_1BA2AFE34(a4, v14);
  LOBYTE(a4) = *(a2 + 48);
  v9 = a1;
  v10 = v8;
  v11 = a3;
  v12 = sub_1BA13A3EC(v9, v10, v11, v14, a4);

  return v12;
}

uint64_t DataTypeDetailConfiguration.SampleListComponent.makeSharableSummaryMostRecentSamplesDataSource(sampleType:context:unitPreferencesController:)(void *a1, uint64_t a2, void *a3)
{
  type metadata accessor for DataTypeMostRecentSamplesDisclosureItemsDataSource(0);
  v6 = *(a2 + 40);
  sub_1B9F0A534(a2, v8);
  return sub_1BA1350E4(a1, v6, a3, v8, *(a2 + 48));
}

uint64_t get_enum_tag_for_layout_string_18HealthExperienceUI37SampleMetadataViewControllerProviding_pSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1BA2B0188()
{
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  result = sub_1BA4A1318();
  qword_1EBBEFF38 = result;
  unk_1EBBEFF40 = v1;
  return result;
}

uint64_t sub_1BA2B0234()
{
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  result = sub_1BA4A1318();
  qword_1EBBEFF48 = result;
  unk_1EBBEFF50 = v1;
  return result;
}

void sub_1BA2B02E0()
{
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  v0 = qword_1EDC84A30;
  v1 = sub_1BA4A6758();
  v2 = [objc_opt_self() imageNamed:v1 inBundle:v0];

  qword_1EBBEFF58 = v2;
}

uint64_t sub_1BA2B03A0()
{
  type metadata accessor for SummarySharingOnboardingError();

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1BA2B03F8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI47SummarySharingOnboardingSettingUpViewController_selectionFlowContext;
  swift_beginAccess();
  *(v3 + v4) = v2;
}

id SummarySharingOnboardingSettingUpViewController.__allocating_init(healthExperienceStore:healthStore:selectionFlowContext:)(uint64_t a1, void *a2, uint64_t a3)
{
  v7 = objc_allocWithZone(v3);
  v8 = sub_1BA2B2378(a1, a2, a3);

  return v8;
}

id SummarySharingOnboardingSettingUpViewController.init(healthExperienceStore:healthStore:selectionFlowContext:)(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = sub_1BA2B2378(a1, a2, a3);

  return v4;
}

void sub_1BA2B054C()
{
  v14.receiver = v0;
  v14.super_class = type metadata accessor for SummarySharingOnboardingSettingUpViewController();
  objc_msgSendSuper2(&v14, sel_viewDidLoad);
  v1 = [objc_allocWithZone(MEMORY[0x1E69DC638]) init];
  [v1 setTranslatesAutoresizingMaskIntoConstraints_];
  [v1 startAnimating];
  v2 = [v0 contentView];
  [v2 addSubview_];

  v3 = objc_opt_self();
  sub_1BA2B2808(0, &qword_1EDC6B400, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1BA4B7510;
  v5 = [v1 centerXAnchor];
  v6 = [v0 contentView];
  v7 = [v6 centerXAnchor];

  v8 = [v5 constraintEqualToAnchor_];
  *(v4 + 32) = v8;
  v9 = [v1 topAnchor];

  v10 = [v0 contentView];
  v11 = [v10 topAnchor];

  v12 = [v9 constraintEqualToAnchor:v11 constant:0.0];
  *(v4 + 40) = v12;
  sub_1B9F0ADF8(0, &qword_1EDC6B570);
  v13 = sub_1BA4A6AE8();

  [v3 activateConstraints_];
}

id sub_1BA2B0868()
{
  v1 = v0;
  swift_beginAccess();
  v4 = 0;
  v5 = 0;
  v6 = 0;
  v7 = 12;
  LOBYTE(v8) = 0;

  sub_1B9FEF9F4(v0, &v4);

  v2 = [objc_opt_self() defaultCenter];
  if (qword_1EDC5E428 != -1)
  {
    swift_once();
  }

  [v2 postNotificationName:qword_1EDC5E430 object:0];

  return [v1 dismissViewControllerAnimated:1 completion:0];
}

void sub_1BA2B09B0()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_1BA4A3EA8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((v1[OBJC_IVAR____TtC18HealthExperienceUI47SummarySharingOnboardingSettingUpViewController_hasRunningGeneration] & 1) == 0)
  {
    v1[OBJC_IVAR____TtC18HealthExperienceUI47SummarySharingOnboardingSettingUpViewController_hasRunningGeneration] = 1;
    sub_1BA4A3DD8();
    v7 = sub_1BA4A3E88();
    v8 = sub_1BA4A6FC8();
    v9 = os_log_type_enabled(v7, v8);
    v20 = ObjectType;
    if (v9)
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v21 = v11;
      *v10 = 136315138;
      v12 = sub_1BA4A85D8();
      v14 = sub_1B9F0B82C(v12, v13, &v21);

      *(v10 + 4) = v14;
      _os_log_impl(&dword_1B9F07000, v7, v8, "[%s] Starting background generation.", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v11);
      MEMORY[0x1BFAF43A0](v11, -1, -1);
      MEMORY[0x1BFAF43A0](v10, -1, -1);
    }

    (*(v4 + 8))(v6, v3);
    v15 = [objc_opt_self() defaultCenter];
    if (qword_1EDC5E400 != -1)
    {
      swift_once();
    }

    [v15 postNotificationName:qword_1EDC5E408 object:{0, v20}];

    v16 = [objc_allocWithZone(sub_1BA4A3578()) init];
    sub_1BA4A3558();
    v17 = swift_allocObject();
    v18 = v20;
    *(v17 + 16) = v1;
    *(v17 + 24) = v18;
    v19 = v1;
    sub_1BA4A3568();
  }
}

uint64_t sub_1BA2B0C88(void *a1, uint64_t a2)
{
  v4 = sub_1BA4A6478();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v55 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1BA4A64C8();
  v53 = *(v7 - 8);
  v54 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v52 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1BA4A3EA8();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v48 - v14;
  if (a1)
  {
    v49 = v5;
    v16 = a1;
    sub_1BA4A3DD8();
    v17 = a1;
    v18 = sub_1BA4A3E88();
    v19 = sub_1BA4A6FA8();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v50 = a2;
      v21 = v20;
      v22 = swift_slowAlloc();
      v51 = v4;
      v23 = v22;
      aBlock[0] = v22;
      *v21 = 136315394;
      v24 = sub_1BA4A85D8();
      v26 = v9;
      v27 = sub_1B9F0B82C(v24, v25, aBlock);

      *(v21 + 4) = v27;
      *(v21 + 12) = 2080;
      swift_getErrorValue();
      v28 = sub_1BA4A8418();
      v30 = sub_1B9F0B82C(v28, v29, aBlock);

      *(v21 + 14) = v30;
      _os_log_impl(&dword_1B9F07000, v18, v19, "[%s] Error trying to run generation %s", v21, 0x16u);
      swift_arrayDestroy();
      v31 = v23;
      v4 = v51;
      MEMORY[0x1BFAF43A0](v31, -1, -1);
      MEMORY[0x1BFAF43A0](v21, -1, -1);

      (*(v10 + 8))(v15, v26);
    }

    else
    {

      (*(v10 + 8))(v15, v9);
    }

    v5 = v49;
  }

  else
  {
    v50 = a2;
    v51 = v4;
    sub_1BA4A3DD8();
    v32 = sub_1BA4A3E88();
    v33 = sub_1BA4A6FC8();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v49 = v9;
      v36 = v35;
      aBlock[0] = v35;
      *v34 = 136315138;
      v37 = sub_1BA4A85D8();
      v39 = sub_1B9F0B82C(v37, v38, aBlock);

      *(v34 + 4) = v39;
      _os_log_impl(&dword_1B9F07000, v32, v33, "[%s] Ran background generation", v34, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v36);
      MEMORY[0x1BFAF43A0](v36, -1, -1);
      MEMORY[0x1BFAF43A0](v34, -1, -1);

      (*(v10 + 8))(v12, v49);
    }

    else
    {

      (*(v10 + 8))(v12, v9);
    }

    v4 = v51;
  }

  sub_1B9F0ADF8(0, &qword_1EDC6B5A0);
  v40 = sub_1BA4A7308();
  v41 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v42 = swift_allocObject();
  *(v42 + 16) = v41;
  *(v42 + 24) = a1;
  aBlock[4] = sub_1BA2B25AC;
  aBlock[5] = v42;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B9F0B040;
  aBlock[3] = &block_descriptor_74;
  v43 = _Block_copy(aBlock);
  v44 = a1;

  v45 = v52;
  sub_1BA4A64A8();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1B9F0AED0(&qword_1EDC5E8E0, MEMORY[0x1E69E7F60]);
  sub_1B9F0A940(0, &qword_1EDC5E6B0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_1B9F31534();
  v46 = v55;
  sub_1BA4A7C38();
  MEMORY[0x1BFAF1D50](0, v45, v46, v43);
  _Block_release(v43);

  (*(v5 + 8))(v46, v4);
  return (*(v53 + 8))(v45, v54);
}

void sub_1BA2B12F0(uint64_t a1, void *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_1BA2B13F0(a2);
  }

  swift_beginAccess();
  v5 = swift_unknownObjectWeakLoadStrong();
  if (v5)
  {

    v6 = [objc_opt_self() defaultCenter];
    if (qword_1EDC5E428 != -1)
    {
      swift_once();
    }

    [v6 postNotificationName:qword_1EDC5E430 object:0];
  }
}

void sub_1BA2B13F0(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_1BA4A3EA8();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1BA4A64F8();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = (v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1B9F0ADF8(0, &qword_1EDC6B5A0);
  *v12 = sub_1BA4A7308();
  (*(v10 + 104))(v12, *MEMORY[0x1E69E8020], v9);
  v13 = sub_1BA4A6528();
  (*(v10 + 8))(v12, v9);
  if (v13)
  {
    if (a1)
    {
      v41 = v5;
      v14 = a1;
      sub_1BA4A3DD8();
      v15 = a1;
      v16 = sub_1BA4A3E88();
      v17 = sub_1BA4A6FA8();

      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        v40[1] = ObjectType;
        v20 = v19;
        v42 = v19;
        *v18 = 136315394;
        v21 = sub_1BA4A85D8();
        v23 = sub_1B9F0B82C(v21, v22, &v42);

        *(v18 + 4) = v23;
        *(v18 + 12) = 2080;
        swift_getErrorValue();
        v24 = sub_1BA4A8418();
        v26 = sub_1B9F0B82C(v24, v25, &v42);

        *(v18 + 14) = v26;
        _os_log_impl(&dword_1B9F07000, v16, v17, "[%s] Waiting for a transaction sync failed %s", v18, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1BFAF43A0](v20, -1, -1);
        MEMORY[0x1BFAF43A0](v18, -1, -1);
      }

      (*(v6 + 8))(v8, v41);
      v27 = swift_allocObject();
      *(v27 + 16) = v2;
      static SummarySharingOnboardingErrorHandling.displayGenericError(on:title:completion:)(v2, 0, 0, sub_1BA08FD7C, v27);
    }

    else
    {
      v28 = OBJC_IVAR____TtC18HealthExperienceUI47SummarySharingOnboardingSettingUpViewController_selectionFlowContext;
      swift_beginAccess();
      memset(v47, 0, sizeof(v47));
      v42 = 0;
      v43 = 0;
      v44 = 0;
      v45 = 4;
      v46 = 7;

      sub_1B9FEEC64(ObjectType, v47, 1, &v42);

      sub_1B9FF3BFC(v42, v43, v44, v45);
      sub_1B9F0DE00(v47, &qword_1EDC6E300, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720], sub_1BA2B2808);
      sub_1B9F0ADF8(0, &qword_1EDC5E540);
      v29 = sub_1BA4A7028();
      v30 = *&v2[OBJC_IVAR____TtC18HealthExperienceUI47SummarySharingOnboardingSettingUpViewController_healthStore];
      if (v29)
      {
        sub_1B9F0A534(&v2[OBJC_IVAR____TtC18HealthExperienceUI47SummarySharingOnboardingSettingUpViewController_healthExperienceStore], &v42);
        v31 = *&v2[v28];
        v32 = objc_allocWithZone(type metadata accessor for SummarySharingOnboardingContactPickerViewController());
        v33 = v30;

        v34 = sub_1BA202D18(v33, &v42, v31);
      }

      else
      {
        sub_1B9F0A534(&v2[OBJC_IVAR____TtC18HealthExperienceUI47SummarySharingOnboardingSettingUpViewController_healthExperienceStore], &v42);
        v35 = *&v2[v28];
        v36 = objc_allocWithZone(type metadata accessor for SummarySharingSystemContactsPickerViewController());
        v33 = v30;

        v34 = sub_1BA1F1518(v33, &v42, v35);
      }

      v37 = v34;

      v38 = [v37 navigationItem];
      [v38 setHidesBackButton_];

      v39 = [v2 navigationController];
      [v39 pushViewController:v37 animated:1];
    }
  }

  else
  {
    __break(1u);
  }
}

id SummarySharingOnboardingSettingUpViewController.__allocating_init(title:detailText:symbolName:contentLayout:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v12 = sub_1BA4A6758();

  if (!a4)
  {
    v13 = 0;
    if (a6)
    {
      goto LABEL_3;
    }

LABEL_5:
    v14 = 0;
    goto LABEL_6;
  }

  v13 = sub_1BA4A6758();

  if (!a6)
  {
    goto LABEL_5;
  }

LABEL_3:
  v14 = sub_1BA4A6758();

LABEL_6:
  v15 = [objc_allocWithZone(v8) initWithTitle:v12 detailText:v13 symbolName:v14 contentLayout:a7];

  return v15;
}

id SummarySharingOnboardingSettingUpViewController.__allocating_init(title:detailText:icon:contentLayout:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v7 = v6;
  v11 = sub_1BA4A6758();

  if (a4)
  {
    v12 = sub_1BA4A6758();
  }

  else
  {
    v12 = 0;
  }

  v13 = [objc_allocWithZone(v7) initWithTitle:v11 detailText:v12 icon:a5 contentLayout:a6];

  return v13;
}

id SummarySharingOnboardingSettingUpViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SummarySharingOnboardingSettingUpViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1BA2B1C48(uint64_t a1)
{
  v31[1] = a1;
  sub_1B9F0A940(0, &qword_1EDC6B5B8, MEMORY[0x1E69E8050], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = v31 - v2;
  sub_1BA2B25B4();
  v34 = v4;
  v32 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA2B2680();
  v37 = v7;
  v35 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA2B276C();
  v11 = v10;
  v36 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v33 = v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA2B2808(0, &qword_1EDC5F438, MEMORY[0x1E69E6370], MEMORY[0x1E695C000]);
  v14 = v13;
  v15 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v17 = v31 - v16;
  sub_1BA02F280(0);
  v19 = v18;
  v20 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v22 = v31 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (HAFeatureFlagAlwaysRunGenerationOnSharingSetUp())
  {
    LOBYTE(v39) = 1;
    sub_1BA4A4E78();
    type metadata accessor for SummarySharingOnboardingError();
    sub_1B9F0AED0(&qword_1EBBE9D20, type metadata accessor for SummarySharingOnboardingError);
    sub_1BA4A4E48();
    (*(v15 + 8))(v17, v14);
    sub_1B9F0AED0(&qword_1EBBEA810, sub_1BA02F280);
    v23 = sub_1BA4A4F98();
    (*(v20 + 8))(v22, v19);
  }

  else
  {
    v39 = sub_1BA4A6F68();
    sub_1B9F0ADF8(0, &qword_1EDC6B5A0);
    v24 = sub_1BA4A7308();
    v38 = v24;
    v25 = sub_1BA4A72A8();
    (*(*(v25 - 8) + 56))(v3, 1, 1, v25);
    sub_1BA1DAF84();
    v26 = v11;
    sub_1B9F0AED0(&qword_1EBBEDDF0, sub_1BA1DAF84);
    sub_1B9F3DC80();
    sub_1BA4A50A8();
    sub_1B9F0DE00(v3, &qword_1EDC6B5B8, MEMORY[0x1E69E8050], MEMORY[0x1E69E6720], sub_1B9F0A940);

    type metadata accessor for SummarySharingOnboardingError();
    sub_1B9F0AED0(&qword_1EBBEFF90, sub_1BA2B25B4);
    sub_1B9F0AED0(&qword_1EBBE9D20, type metadata accessor for SummarySharingOnboardingError);
    v27 = v34;
    sub_1BA4A50D8();
    (*(v32 + 8))(v6, v27);
    sub_1B9F0AED0(&qword_1EBBEFFA0, sub_1BA2B2680);
    v28 = v33;
    v29 = v37;
    sub_1BA4A4FE8();
    (*(v35 + 8))(v9, v29);
    sub_1B9F0AED0(&qword_1EBBEFFA8, sub_1BA2B276C);
    v23 = sub_1BA4A4F98();
    (*(v36 + 8))(v28, v26);
  }

  return v23;
}

id sub_1BA2B2378(uint64_t a1, void *a2, uint64_t a3)
{
  v3[OBJC_IVAR____TtC18HealthExperienceUI47SummarySharingOnboardingSettingUpViewController_hasRunningGeneration] = 0;
  sub_1B9F0A534(a1, &v3[OBJC_IVAR____TtC18HealthExperienceUI47SummarySharingOnboardingSettingUpViewController_healthExperienceStore]);
  *&v3[OBJC_IVAR____TtC18HealthExperienceUI47SummarySharingOnboardingSettingUpViewController_healthStore] = a2;
  *&v3[OBJC_IVAR____TtC18HealthExperienceUI47SummarySharingOnboardingSettingUpViewController_selectionFlowContext] = a3;
  v7 = qword_1EBBE8770;
  v8 = a2;

  if (v7 != -1)
  {
    swift_once();
  }

  v9 = sub_1BA4A6758();
  if (qword_1EBBE8778 != -1)
  {
    swift_once();
  }

  v10 = sub_1BA4A6758();
  if (qword_1EBBE8780 != -1)
  {
    swift_once();
  }

  v11 = qword_1EBBEFF58;
  v16.receiver = v3;
  v16.super_class = type metadata accessor for SummarySharingOnboardingSettingUpViewController();
  v12 = objc_msgSendSuper2(&v16, sel_initWithTitle_detailText_icon_contentLayout_, v9, v10, v11, 2);

  v13 = v12;
  v14 = [v13 hxui_addCancelButton];

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v13;
}

void sub_1BA2B25B4()
{
  if (!qword_1EBBEFF80)
  {
    sub_1BA1DAF84();
    sub_1B9F0ADF8(255, &qword_1EDC6B5A0);
    sub_1B9F0AED0(&qword_1EBBEDDF0, sub_1BA1DAF84);
    sub_1B9F3DC80();
    v0 = sub_1BA4A4CC8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBBEFF80);
    }
  }
}

void sub_1BA2B2680()
{
  if (!qword_1EBBEFF88)
  {
    sub_1BA2B25B4();
    type metadata accessor for SummarySharingOnboardingError();
    sub_1B9F0AED0(&qword_1EBBEFF90, sub_1BA2B25B4);
    sub_1B9F0AED0(&qword_1EBBE9D20, type metadata accessor for SummarySharingOnboardingError);
    v0 = sub_1BA4A4C58();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBBEFF88);
    }
  }
}

void sub_1BA2B276C()
{
  if (!qword_1EBBEFF98)
  {
    sub_1BA2B2680();
    sub_1B9F0AED0(&qword_1EBBEFFA0, sub_1BA2B2680);
    v0 = sub_1BA4A4B78();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBBEFF98);
    }
  }
}

void sub_1BA2B2808(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1BA2B28A0(uint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v8 = *a1;
  swift_beginAccess();
  sub_1B9F374E8(v4 + v8, &v21, &qword_1EDC6E1A0, &qword_1EDC6E1B0);
  if (*(&v22 + 1))
  {
    sub_1B9F0D950(0, &qword_1EDC6E1B0);
    sub_1BA4A27B8();
    if (swift_dynamicCast())
    {
      v9 = v16[0];
      v10 = [v16[0] actionHandlerClassName];
      if (v10 && (v11 = v10, v12 = NSClassFromString(v10), v11, v12) && (ObjCClassMetadata = swift_getObjCClassMetadata(), swift_conformsToProtocol2()) && ObjCClassMetadata)
      {
        sub_1B9F7E154(a1, a3, a4, v16);
        if (v16[0])
        {
          v23 = v18;
          v24 = v19;
          v25 = v20;
          v21 = *v16;
          v22 = v17;
          sub_1BA00D78C(&v21, v16);
          v14 = (*(ObjCClassMetadata + 88))(v16);

          sub_1BA00D7E8(&v21);
          if (swift_conformsToProtocol2())
          {
            return v14;
          }
        }

        else
        {

          sub_1B9F4A1F4(v16, qword_1EDC6BB70, &type metadata for ConfigurationFeedItemActionContent, MEMORY[0x1E69E6720], sub_1B9F23348);
        }
      }

      else
      {
      }
    }
  }

  else
  {
    sub_1B9F4A1F4(&v21, &qword_1EDC6E1A0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348], sub_1B9F0CDE8);
  }

  return 0;
}

uint64_t sub_1BA2B2B34(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI28ContentConfigurationHostCell_providedViewContext;
  swift_beginAccess();
  *(v3 + v4) = v2;
}

uint64_t sub_1BA2B2BE4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI28ContentConfigurationHostCell_providedViewContext;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

void (*sub_1BA2B2CE4(uint64_t *a1))(id **, char)
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
  v5 = OBJC_IVAR____TtC18HealthExperienceUI28ContentConfigurationHostCell_parentViewController;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_1BA0BAB9C;
}

uint64_t sub_1BA2B2E0C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  sub_1B9F374E8(a1, v10, &qword_1EDC68F40, &qword_1EDC68F50);
  v7 = *a2;
  v8 = *a5;
  swift_beginAccess();
  sub_1B9F4A184(v10, v7 + v8, &qword_1EDC68F40, &qword_1EDC68F50);
  return swift_endAccess();
}

uint64_t sub_1BA2B2ED4@<X0>(uint64_t *a1@<X0>, unint64_t *a2@<X1>, unint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *a1;
  swift_beginAccess();
  return sub_1B9F374E8(v4 + v8, a4, a2, a3);
}

uint64_t sub_1BA2B2F54(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  swift_beginAccess();
  sub_1B9F4A184(a1, v2 + v4, &qword_1EDC68F40, &qword_1EDC68F50);
  return swift_endAccess();
}

uint64_t sub_1BA2B3060()
{
  v1 = (v0 + OBJC_IVAR____TtC18HealthExperienceUI28ContentConfigurationHostCell_baseIdentifier);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

void (*sub_1BA2B30B8(uint64_t *a1))(uint64_t *a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x48uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 40) = v1;
  v6 = sub_1BA4A4018();
  v5[6] = v6;
  v7 = *(*(v6 - 8) + 64);
  if (v3)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC18HealthExperienceUI28ContentConfigurationHostCell_baseIdentifier;
  v5[7] = v8;
  v5[8] = v9;
  swift_beginAccess();
  return sub_1BA2B317C;
}

void sub_1BA2B317C(uint64_t *a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = *(v3 + 40);
    v5 = &v4[*(v3 + 64)];
    v6 = *(v5 + 1);
    if (v6)
    {
      v7 = *v5;
      swift_bridgeObjectRetain_n();
      v8 = sub_1BA4A6758();
      [v4 setAccessibilityIdentifier_];

      sub_1BA4A76D8();
      *(v3 + 24) = v7;
      *(v3 + 32) = v6;
      sub_1B9F5B584();
      sub_1BA4A4008();
      sub_1BA4A76E8();
    }
  }

  free(*(v3 + 56));

  free(v3);
}

uint64_t sub_1BA2B3280(uint64_t a1, uint64_t *a2)
{
  v3 = MEMORY[0x1E69A3348];
  sub_1B9F374E8(a1, v8, &qword_1EDC6E1A0, &qword_1EDC6E1B0);
  v4 = *a2;
  v5 = OBJC_IVAR____TtC18HealthExperienceUI28ContentConfigurationHostCell_item;
  swift_beginAccess();
  sub_1B9F374E8(v4 + v5, v7, &qword_1EDC6E1A0, &qword_1EDC6E1B0);
  swift_beginAccess();
  sub_1B9F63E74(v8, v4 + v5);
  swift_endAccess();
  sub_1B9F49124(v7);
  sub_1B9F4A1F4(v7, &qword_1EDC6E1A0, &qword_1EDC6E1B0, v3, sub_1B9F0CDE8);
  return sub_1B9F4A1F4(v8, &qword_1EDC6E1A0, &qword_1EDC6E1B0, v3, sub_1B9F0CDE8);
}

void (*sub_1BA2B33B4(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0xB8uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC18HealthExperienceUI28ContentConfigurationHostCell_item;
  *(v3 + 168) = v1;
  *(v3 + 176) = v5;
  swift_beginAccess();
  sub_1B9F374E8(v1 + v5, v4, &qword_1EDC6E1A0, &qword_1EDC6E1B0);
  return sub_1BA2B3464;
}

void sub_1BA2B3464(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 168);
  v4 = *(*a1 + 176);
  v5 = MEMORY[0x1E69A3348];
  if (a2)
  {
    sub_1B9F374E8(*a1, v2 + 40, &qword_1EDC6E1A0, &qword_1EDC6E1B0);
    sub_1B9F374E8(v3 + v4, v2 + 80, &qword_1EDC6E1A0, &qword_1EDC6E1B0);
    swift_beginAccess();
    sub_1B9F63E74(v2 + 40, v3 + v4);
    swift_endAccess();
    sub_1B9F49124(v2 + 80);
    sub_1B9F4A1F4(v2 + 80, &qword_1EDC6E1A0, &qword_1EDC6E1B0, v5, sub_1B9F0CDE8);
  }

  else
  {
    sub_1B9F374E8(v3 + v4, v2 + 40, &qword_1EDC6E1A0, &qword_1EDC6E1B0);
    swift_beginAccess();
    sub_1B9F63E74(v2, v3 + v4);
    swift_endAccess();
    sub_1B9F49124(v2 + 40);
  }

  sub_1B9F4A1F4(v2 + 40, &qword_1EDC6E1A0, &qword_1EDC6E1B0, v5, sub_1B9F0CDE8);
  sub_1B9F4A1F4(v2, &qword_1EDC6E1A0, &qword_1EDC6E1B0, v5, sub_1B9F0CDE8);

  free(v2);
}

id ContentConfigurationHostCell.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

char *ContentConfigurationHostCell.init(coder:)(char *a1)
{
  v30 = a1;
  v2 = sub_1BA4A40C8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v28 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = v28 - v10;
  *&v1[OBJC_IVAR____TtC18HealthExperienceUI28ContentConfigurationHostCell_providedViewContext] = 0;
  swift_unknownObjectWeakInit();
  v12 = &v1[OBJC_IVAR____TtC18HealthExperienceUI28ContentConfigurationHostCell_currentViewModel];
  *v12 = 0u;
  *(v12 + 1) = 0u;
  *(v12 + 4) = 0;
  v13 = &v1[OBJC_IVAR____TtC18HealthExperienceUI28ContentConfigurationHostCell_previousViewModel];
  *v13 = 0u;
  *(v13 + 1) = 0u;
  *(v13 + 4) = 0;
  v14 = &v1[OBJC_IVAR____TtC18HealthExperienceUI28ContentConfigurationHostCell_configurationProvider];
  *v14 = 0u;
  *(v14 + 1) = 0u;
  *(v14 + 4) = 0;
  v15 = &v1[OBJC_IVAR____TtC18HealthExperienceUI28ContentConfigurationHostCell_baseIdentifier];
  *v15 = 0;
  *(v15 + 1) = 0;
  v16 = &v1[OBJC_IVAR____TtC18HealthExperienceUI28ContentConfigurationHostCell_item];
  *v16 = 0u;
  *(v16 + 1) = 0u;
  *(v16 + 4) = 0;
  [objc_allocWithZone(MEMORY[0x1E69DD1B8]) init];
  sub_1BA4A4088();
  type metadata accessor for ObservableCellState(0);
  v17 = swift_allocObject();
  v18 = *(v3 + 16);
  v18(v8, v11, v2);
  swift_beginAccess();
  v29 = v18;
  v18(v5, v8, v2);
  sub_1BA4A4EE8();
  v19 = *(v3 + 8);
  v19(v8, v2);
  swift_endAccess();
  swift_beginAccess();
  v32 = 0;
  sub_1BA4A4EE8();
  swift_endAccess();
  v19(v11, v2);
  *&v1[OBJC_IVAR____TtC18HealthExperienceUI28ContentConfigurationHostCell_cellState] = v17;
  v20 = type metadata accessor for ContentConfigurationHostCell();
  v31.receiver = v1;
  v31.super_class = v20;
  v21 = v30;
  v22 = objc_msgSendSuper2(&v31, sel_initWithCoder_);
  v23 = v22;
  if (v22)
  {
    v28[1] = *&v22[OBJC_IVAR____TtC18HealthExperienceUI28ContentConfigurationHostCell_cellState];
    v24 = v22;

    v25 = [v24 _bridgedConfigurationState];
    v28[0] = v19;
    v26 = v25;
    sub_1BA4A40B8();

    swift_getKeyPath();
    swift_getKeyPath();
    v29(v8, v11, v2);
    sub_1BA4A4F38();
    (v28[0])(v11, v2);
    [v24 setAutomaticallyUpdatesContentConfiguration_];

    v21 = v24;
  }

  return v23;
}

id ContentConfigurationHostCell.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

void sub_1BA2B3A88()
{
  swift_getObjectType();
  v1 = OBJC_IVAR____TtC18HealthExperienceUI28ContentConfigurationHostCell_item;
  swift_beginAccess();
  sub_1B9F374E8(v0 + v1, v12, &qword_1EDC6E1A0, &qword_1EDC6E1B0);
  if (!v12[3])
  {
    v10 = v1;
    sub_1B9F4A1F4(v12, &qword_1EDC6E1A0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348], sub_1B9F0CDE8);
LABEL_8:
    v12[0] = 0;
    v12[1] = 0xE000000000000000;
    sub_1BA4A7DF8();

    v8 = sub_1BA4A85D8();
    MEMORY[0x1BFAF1350](v8);

    MEMORY[0x1BFAF1350](0xD000000000000019, 0x80000001BA4FADD0);
    sub_1B9F374E8(v0 + v10, v12, &qword_1EDC6E1A0, &qword_1EDC6E1B0);
    sub_1B9F0CDE8(0, &qword_1EDC6E1A0, &qword_1EDC6E1B0);
    v9 = sub_1BA4A6808();
    MEMORY[0x1BFAF1350](v9);

    sub_1BA4A8018();
    __break(1u);
    return;
  }

  sub_1B9F0D950(0, &qword_1EDC6E1B0);
  sub_1BA4A27B8();
  if ((swift_dynamicCast() & 1) == 0)
  {
    v10 = v1;
    goto LABEL_8;
  }

  v2 = objc_allocWithZone(type metadata accessor for InternalFeedItemDetailViewController());
  v3 = v11;
  v4 = sub_1BA051E40(v3);
  v5 = [objc_allocWithZone(MEMORY[0x1E69DCCD8]) initWithRootViewController_];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    [Strong presentViewController:v5 animated:1 completion:0];
  }
}

id sub_1BA2B3D94()
{
  v1 = v0;
  swift_getObjectType();
  v2 = sub_1BA4A3EA8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA4A3DD8();
  v6 = sub_1BA4A3E88();
  v7 = sub_1BA4A6FC8();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v15 = v9;
    *v8 = 136315138;
    v10 = sub_1BA4A85D8();
    v12 = sub_1B9F0B82C(v10, v11, &v15);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_1B9F07000, v6, v7, "[%s]: providerInvalidatedContentConfiguration, updating configuration", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x1BFAF43A0](v9, -1, -1);
    MEMORY[0x1BFAF43A0](v8, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  return [v1 setNeedsUpdateConfiguration];
}

id ContentConfigurationHostCell.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ContentConfigurationHostCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1BA2B40C8@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI28ContentConfigurationHostCell_item;
  swift_beginAccess();
  return sub_1B9F374E8(v1 + v3, a1, &qword_1EDC6E1A0, &qword_1EDC6E1B0);
}

uint64_t (*sub_1BA2B4138(uint64_t **a1))()
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
  v2[4] = sub_1BA2B33B4(v2);
  return sub_1B9FCDCF4;
}

void (*sub_1BA2B4258(uint64_t *a1))(id **, char)
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
  v5 = OBJC_IVAR____TtC18HealthExperienceUI28ContentConfigurationHostCell_parentViewController;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_1BA0C36E0;
}

uint64_t sub_1BA2B42F0()
{
  v1 = (*v0 + OBJC_IVAR____TtC18HealthExperienceUI28ContentConfigurationHostCell_baseIdentifier);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t (*sub_1BA2B4370(uint64_t **a1))()
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
  v2[4] = sub_1BA2B30B8(v2);
  return sub_1B9FCF2C4;
}

uint64_t keypath_get_16Tm@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, unint64_t *a3@<X4>, unint64_t *a4@<X5>, uint64_t a5@<X8>)
{
  v8 = *a1;
  v9 = *a2;
  swift_beginAccess();
  return sub_1B9F374E8(v8 + v9, a5, a3, a4);
}

char *AllHighlightsForExperienceViewController.__allocating_init(baseKeyword:sectionKeywords:healthExperienceStore:title:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  objc_allocWithZone(v4);
  sub_1B9F0A534(a4, v13);
  type metadata accessor for AllHighlightsForExperienceDataSource();
  swift_allocObject();
  v9 = AllHighlightsForExperienceDataSource.init(baseKeyword:sectionKeywords:healthExperienceStore:)(a1, a2, a3, v13);
  v10 = CompoundDataSourceCollectionViewController.init(dataSource:)(v9);
  v11 = sub_1BA4A6758();

  [v10 setTitle_];

  __swift_destroy_boxed_opaque_existential_1(a4);
  return v10;
}

char *AllHighlightsForExperienceViewController.init(baseKeyword:sectionKeywords:healthExperienceStore:title:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1B9F0A534(a4, v12);
  type metadata accessor for AllHighlightsForExperienceDataSource();
  swift_allocObject();
  v8 = AllHighlightsForExperienceDataSource.init(baseKeyword:sectionKeywords:healthExperienceStore:)(a1, a2, a3, v12);
  v9 = CompoundDataSourceCollectionViewController.init(dataSource:)(v8);
  v10 = sub_1BA4A6758();

  [v9 setTitle_];

  __swift_destroy_boxed_opaque_existential_1(a4);
  return v9;
}

uint64_t type metadata accessor for AllHighlightsForExperienceDataSource()
{
  result = qword_1EBBEFFF0;
  if (!qword_1EBBEFFF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id AllHighlightsForExperienceViewController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id AllHighlightsForExperienceViewController.__allocating_init(collectionViewLayout:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCollectionViewLayout_];

  return v3;
}

id AllHighlightsForExperienceViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AllHighlightsForExperienceViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t AllHighlightsForExperienceDataSource.init(baseKeyword:sectionKeywords:healthExperienceStore:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *v4;
  v10[2] = a1;
  v10[3] = a2;
  v10[4] = a4;
  v10[5] = v6;
  v7 = sub_1BA24AD10(sub_1BA2B509C, v10, a3);

  v8 = CompoundSectionedDataSource.init(_:)(v7);
  __swift_destroy_boxed_opaque_existential_1(a4);
  return v8;
}

void *sub_1BA2B509C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_1BA2B54F0(*a1, a1[1], *(v2 + 16), *(v2 + 24), *(v2 + 32));
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_1BA2B50DC(uint64_t a1, uint64_t a2)
{
  if (sub_1BA4A2068() == a1 && v4 == a2)
  {

    return 0;
  }

  v5 = sub_1BA4A8338();

  if (v5)
  {
    return 0;
  }

  if (sub_1BA4A2058() == a1 && v7 == a2)
  {

    goto LABEL_10;
  }

  v8 = sub_1BA4A8338();

  if (v8)
  {
LABEL_10:
    if (qword_1EDC5E100 == -1)
    {
      return sub_1BA4A1318();
    }

    goto LABEL_14;
  }

  if (qword_1EDC5E100 != -1)
  {
LABEL_14:
    swift_once();
  }

  return sub_1BA4A1318();
}

uint64_t AllHighlightsForExperienceDataSource.deinit()
{

  v1 = OBJC_IVAR____TtC18HealthExperienceUI27CompoundSectionedDataSource_snapshot;
  sub_1B9F12538();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t AllHighlightsForExperienceDataSource.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC18HealthExperienceUI27CompoundSectionedDataSource_snapshot;
  sub_1B9F12538();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

void *sub_1BA2B54F0(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v73 = a5;
  v71 = a3;
  v9 = sub_1BA4A4428();
  v76 = *(v9 - 8);
  v77 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v75 = v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v74 = v58 - v12;
  sub_1B9F0C9D8(0, &qword_1EDC6E2A0, MEMORY[0x1E6968130], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = v58 - v14;
  v79[9] = a1;
  v79[10] = a2;
  v72 = a1;
  v63 = a2;
  v79[11] = a3;
  v79[12] = a4;
  v70 = a4;
  v79[0] = MEMORY[0x1E69E7CC0];

  sub_1BA4A7F08();
  v58[1] = sub_1BA4A27B8();
  sub_1B9F0C9D8(0, &qword_1EDC6B460, MEMORY[0x1E69A3C08], MEMORY[0x1E69E6F90]);
  v69 = v16;
  v66 = sub_1BA4A1C68();
  v17 = *(v66 - 8);
  v68 = *(v17 + 72);
  v18 = (*(v17 + 80) + 32) & ~*(v17 + 80);
  v19 = swift_allocObject();
  v67 = xmmword_1BA4B5480;
  *(v19 + 16) = xmmword_1BA4B5480;
  v65 = *MEMORY[0x1E69A3BF8];
  v64 = *(v17 + 104);
  v64(v19 + v18);
  v20 = sub_1BA4A0FA8();
  v21 = *(v20 - 8);
  v61 = *(v21 + 56);
  v62 = v21 + 56;
  v61(v15, 1, 1, v20);
  sub_1B9F1C048(0, &qword_1EDC6B450);
  v60 = v22;
  v23 = swift_allocObject();
  v59 = xmmword_1BA4B5460;
  *(v23 + 16) = xmmword_1BA4B5460;
  v24 = v63;

  *(v23 + 32) = sub_1BA4A1D78();
  *(v23 + 40) = 0;
  v25 = v24;
  sub_1BA4A25F8();

  sub_1B9F1C1B0(v15);
  sub_1BA4A7ED8();
  sub_1BA4A7F18();
  sub_1BA4A7F28();
  sub_1BA4A7EE8();

  swift_arrayDestroy();
  v26 = swift_allocObject();
  *(v26 + 16) = v67;
  (v64)(v26 + v18, v65, v66);
  v61(v15, 1, 1, v20);
  v27 = swift_allocObject();
  *(v27 + 16) = v59;
  *(v27 + 32) = sub_1BA4A1D78();
  *(v27 + 40) = 0;
  sub_1BA4A25F8();

  sub_1B9F1C1B0(v15);
  sub_1BA4A7ED8();
  sub_1BA4A7F18();
  sub_1BA4A7F28();
  sub_1BA4A7EE8();
  sub_1B9F0ADF8(0, &qword_1EDC6B630);
  v28 = sub_1BA4A6AE8();

  v29 = [objc_opt_self() andPredicateWithSubpredicates_];
  v70 = v29;

  v30 = MEMORY[0x1BFAED110]();
  v31 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  v32 = sub_1BA4A6758();
  v33 = [v31 initWithKey:v32 ascending:1];

  sub_1B9F1C048(0, &qword_1EDC6B400);
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_1BA4B5470;
  *(v34 + 32) = v33;
  sub_1B9F0ADF8(0, &qword_1EDC6E3E0);
  v71 = v33;
  v35 = sub_1BA4A6AE8();

  [v30 setSortDescriptors_];

  [v30 setPredicate_];
  __swift_project_boxed_opaque_existential_1(v73, v73[3]);
  v36 = v30;
  v37 = sub_1BA4A1B68();
  v38 = [objc_allocWithZone(MEMORY[0x1E695D600]) initWithFetchRequest:v36 managedObjectContext:v37 sectionNameKeyPath:0 cacheName:0];

  sub_1BA0649AC();
  v40 = objc_allocWithZone(v39);
  v41 = &v40[qword_1EDC61AF0];
  *v41 = sub_1BA236D80;
  v41[1] = 0;
  v42 = v38;
  v43 = _s18HealthExperienceUI33FeedItemSuggestedActionDataSourceCyACSo26NSFetchedResultsControllerCy0A8Platform0dE0CGcfc_0(v42);
  v44 = sub_1BA2B50DC(v72, v25);
  v46 = v45;
  v47 = v74;
  _s18HealthExperienceUI29CollectionViewHeaderProvidingPAAE24makeDefaultConfiguration5UIKit013UIListContentJ0VyFZ_0();
  v48 = v75;
  v49 = v76;
  v50 = v77;
  (*(v76 + 16))(v75, v47, v77);
  v51 = type metadata accessor for HeaderItem();
  swift_allocObject();
  HeaderItem.init(title:buttonText:buttonWasTapped:configuration:automationIdentifier:)(v44, v46, 0, 0, 0, 0, v48, 0, 0);
  v53 = v52;
  (*(v49 + 8))(v47, v50);
  v79[3] = v51;
  v79[4] = sub_1B9F25430(&qword_1EDC69800, type metadata accessor for HeaderItem);

  v79[0] = v53;
  sub_1B9F0A534(v79, v78);
  v54 = swift_allocObject();
  sub_1B9F25598(v78, v54 + 16);
  sub_1BA2B5DF4();
  v55 = swift_allocObject();
  v55[4] = v43;
  v55[5] = sub_1B9F79BC8;
  v55[6] = v54;
  v56 = *&v43[qword_1EDC84AD0 + 8];
  v55[2] = *&v43[qword_1EDC84AD0];
  v55[3] = v56;

  __swift_destroy_boxed_opaque_existential_1(v79);
  return v55;
}

void sub_1BA2B5DF4()
{
  if (!qword_1EBBEED90)
  {
    sub_1BA0649AC();
    v0 = type metadata accessor for Supplementary();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBBEED90);
    }
  }
}

void sub_1BA2B5F40()
{
  v1 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI43EmergencyAccessBuddyMedicalIDViewController_medicalIDViewController];
  [v0 addChildViewController_];
  v2 = [v0 contentView];
  v3 = [v1 view];
  if (!v3)
  {
    __break(1u);
    goto LABEL_11;
  }

  v4 = v3;
  [v2 addSubview_];

  [v1 didMoveToParentViewController_];
  v5 = [v1 view];
  if (!v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v6 = v5;
  [v5 setTranslatesAutoresizingMaskIntoConstraints_];

  v7 = [v0 contentView];
  v8 = [v7 heightAnchor];

  v9 = [v8 constraintGreaterThanOrEqualToConstant_];
  v10 = OBJC_IVAR____TtC18HealthExperienceUI43EmergencyAccessBuddyMedicalIDViewController_contentViewHeightConstraint;
  v11 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI43EmergencyAccessBuddyMedicalIDViewController_contentViewHeightConstraint];
  *&v0[OBJC_IVAR____TtC18HealthExperienceUI43EmergencyAccessBuddyMedicalIDViewController_contentViewHeightConstraint] = v9;

  sub_1B9F109F8();
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1BA4B5880;
  v13 = [v1 view];
  if (!v13)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v14 = v13;
  v15 = [v13 topAnchor];

  v16 = [v0 contentView];
  v17 = [v16 topAnchor];

  v18 = [v15 constraintEqualToAnchor_];
  *(v12 + 32) = v18;
  v19 = [v1 view];
  if (!v19)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v20 = v19;
  v21 = [v19 leadingAnchor];

  v22 = [v0 contentView];
  v23 = [v22 leadingAnchor];

  v24 = [v21 constraintEqualToAnchor:v23 constant:6.0];
  *(v12 + 40) = v24;
  v25 = [v1 view];
  if (!v25)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v26 = v25;
  v27 = [v25 trailingAnchor];

  v28 = [v0 contentView];
  v29 = [v28 trailingAnchor];

  v30 = [v27 constraintEqualToAnchor:v29 constant:-6.0];
  *(v12 + 48) = v30;
  v31 = [v1 view];
  if (!v31)
  {
LABEL_15:
    __break(1u);
    return;
  }

  v32 = v31;
  v33 = objc_opt_self();
  v34 = [v32 bottomAnchor];

  v35 = [v0 contentView];
  v36 = [v35 bottomAnchor];

  v37 = [v34 constraintEqualToAnchor_];
  v38 = *&v0[v10];
  *(v12 + 56) = v37;
  *(v12 + 64) = v38;
  sub_1B9F0ADF8(0, &qword_1EDC6B570);
  v39 = v38;
  v40 = sub_1BA4A6AE8();

  [v33 activateConstraints_];
}

id sub_1BA2B646C()
{
  v1 = sub_1BA4A6478();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1BA4A64C8();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1BA4A6488();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [v0 dismissViewControllerAnimated:1 completion:{0, v11}];
  v15 = &v0[OBJC_IVAR____TtC18HealthExperienceUI43EmergencyAccessBuddyMedicalIDViewController_flow];
  v16 = v0[OBJC_IVAR____TtC18HealthExperienceUI43EmergencyAccessBuddyMedicalIDViewController_flow + 8];
  if (v16 <= 1)
  {
    v23 = v6;
    v17 = *v15;
    sub_1B9F0ADF8(0, &qword_1EDC6B5A0);
    v22 = v5;
    (*(v10 + 104))(v13, *MEMORY[0x1E69E7F88], v9);
    sub_1BA02040C(v17, v16);
    v18 = sub_1BA4A7338();
    (*(v10 + 8))(v13, v9);
    v19 = swift_allocObject();
    *(v19 + 16) = v17;
    aBlock[4] = sub_1BA020420;
    aBlock[5] = v19;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1B9F0B040;
    aBlock[3] = &block_descriptor_75;
    v20 = _Block_copy(aBlock);
    sub_1BA4A64A8();
    v24 = MEMORY[0x1E69E7CC0];
    sub_1B9F0AF18(&qword_1EDC5E8E0, MEMORY[0x1E69E7F60]);
    sub_1B9F3F378();
    sub_1B9F0AF18(&qword_1EDC5E6A0, sub_1B9F3F378);
    sub_1BA4A7C38();
    MEMORY[0x1BFAF1D50](0, v8, v4, v20);
    _Block_release(v20);

    (*(v2 + 8))(v4, v1);
    (*(v23 + 8))(v8, v22);
  }

  return result;
}

void sub_1BA2B6868()
{
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  sub_1BA4A1318();
  v1 = [objc_opt_self() boldButton];
  v2 = sub_1BA4A6758();

  [v1 setTitle:v2 forState:0];

  [v1 addTarget:v0 action:sel_didTapNext_ forControlEvents:64];
  v3 = [v0 buttonTray];
  [v3 addButton_];
}

void sub_1BA2B69BC()
{
  v1 = v0;
  v2 = type metadata accessor for EmergencyAccessUserStatus();
  MEMORY[0x1EEE9AC00](v2);
  v4 = v49 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v49 - v7;
  v9 = &v1[OBJC_IVAR____TtC18HealthExperienceUI43EmergencyAccessBuddyMedicalIDViewController_flow];
  v10 = v1[OBJC_IVAR____TtC18HealthExperienceUI43EmergencyAccessBuddyMedicalIDViewController_flow + 8];
  if (v10 == 1)
  {
    v13 = &v1[OBJC_IVAR____TtC18HealthExperienceUI43EmergencyAccessBuddyMedicalIDViewController_emergencyStatus];
    v41 = *v9;
LABEL_10:
    v42 = *&v1[OBJC_IVAR____TtC18HealthExperienceUI43EmergencyAccessBuddyMedicalIDViewController_healthStore];
    v53 = v41;
    v54 = v10;
    sub_1BA020470(v13, v49 - v7);
    v43 = objc_allocWithZone(type metadata accessor for EmergencyAccessBuddyDoneViewController());
    v44 = v42;
    sub_1BA02040C(v41, v10);
    sub_1BA337850(v44, &v53, v8);
    v39 = v45;
LABEL_13:
    [v1 showViewController:v39 sender:v1];
    goto LABEL_14;
  }

  if (v10 != 2)
  {
    v11 = *v9;
    goto LABEL_12;
  }

  v11 = *v9;
  if (*v9 != 1)
  {
LABEL_12:
    v46 = *&v1[OBJC_IVAR____TtC18HealthExperienceUI43EmergencyAccessBuddyMedicalIDViewController_healthStore];
    v53 = v11;
    v54 = v10;
    sub_1BA020470(&v1[OBJC_IVAR____TtC18HealthExperienceUI43EmergencyAccessBuddyMedicalIDViewController_emergencyStatus], v49 - v7);
    objc_allocWithZone(type metadata accessor for EmergencyAccessBuddyShareMedicalIDViewController());
    v47 = v46;
    sub_1BA02040C(v11, v10);
    sub_1BA40231C(v47, &v53, v8);
    v39 = v48;

    goto LABEL_13;
  }

  v12 = *(v6 + 20);
  v13 = &v1[OBJC_IVAR____TtC18HealthExperienceUI43EmergencyAccessBuddyMedicalIDViewController_emergencyStatus];
  if (v1[OBJC_IVAR____TtC18HealthExperienceUI43EmergencyAccessBuddyMedicalIDViewController_emergencyStatus + v12] != 1)
  {
    v41 = 1;
    goto LABEL_10;
  }

  v14 = *&v1[OBJC_IVAR____TtC18HealthExperienceUI43EmergencyAccessBuddyMedicalIDViewController_healthStore];
  v53 = 1;
  v54 = 2;
  v15 = &v1[OBJC_IVAR____TtC18HealthExperienceUI43EmergencyAccessBuddyMedicalIDViewController_emergencyStatus];
  sub_1BA020470(v13, v49 - v7);
  v16 = objc_allocWithZone(type metadata accessor for EmergencyAccessBuddyDoneViewController());
  v17 = v14;
  sub_1BA02040C(1, 2u);
  sub_1BA337850(v17, &v53, v8);
  v19 = v18;
  v20 = swift_allocObject();
  *(v20 + 16) = v19;
  *(v20 + 24) = v1;
  v21 = qword_1EDC5E100;
  v51 = v19;
  v50 = v1;
  if (v21 != -1)
  {
    swift_once();
  }

  v49[2] = sub_1BA4A1318();
  v49[3] = v22;
  v23 = *v9;
  v24 = v9[8];
  sub_1BA020470(v15, v4);
  v25 = type metadata accessor for EmergencyAccessBuddyStewieViewController();
  v26 = objc_allocWithZone(v25);
  v49[1] = "eview_medical_id_later_button";
  v27 = v26;
  *&v26[OBJC_IVAR____TtC18HealthExperienceUI40EmergencyAccessBuddyStewieViewController_healthStore] = v17;
  v28 = &v26[OBJC_IVAR____TtC18HealthExperienceUI40EmergencyAccessBuddyStewieViewController_flow];
  *v28 = v23;
  v28[8] = v24;
  sub_1BA020470(v4, &v26[OBJC_IVAR____TtC18HealthExperienceUI40EmergencyAccessBuddyStewieViewController_emergencyStatus]);
  v29 = &v27[OBJC_IVAR____TtC18HealthExperienceUI40EmergencyAccessBuddyStewieViewController_nextVCHandler];
  *v29 = sub_1BA2B7514;
  v29[1] = v20;
  type metadata accessor for EmergencyAccessBuddyStartViewController();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v31 = objc_opt_self();
  swift_retain_n();
  v32 = v17;
  sub_1BA02040C(v23, v24);
  v33 = [v31 bundleForClass_];
  v34 = sub_1BA4A6758();
  v35 = [objc_opt_self() imageNamed:v34 inBundle:v33];

  if (v35)
  {
    sub_1BA4A1318();
    v36 = sub_1BA4A6758();

    v37 = sub_1BA4A6758();

    v52.receiver = v27;
    v52.super_class = v25;
    v38 = objc_msgSendSuper2(&v52, sel_initWithTitle_detailText_icon_contentLayout_, v36, v37, v35, 2);

    v39 = v38;
    v40 = [v39 headerView];
    [v40 setAllowFullWidthIcon_];

    sub_1BA0204E8(v4);
    [v50 showViewController:v39 sender:v50];

LABEL_14:

    return;
  }

  __break(1u);
}

uint64_t sub_1BA2B6F54(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  swift_unknownObjectRetain();
  v6 = a1;
  sub_1BA4A7BF8();
  v7 = swift_unknownObjectRelease();
  a4(v7);

  return __swift_destroy_boxed_opaque_existential_1(&v9);
}

id sub_1BA2B7028()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for EmergencyAccessBuddyMedicalIDViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for EmergencyAccessBuddyMedicalIDViewController()
{
  result = qword_1EBBF0020;
  if (!qword_1EBBF0020)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BA2B7138()
{
  result = type metadata accessor for EmergencyAccessUserStatus();
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

id sub_1BA2B71E4(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = *a2;
  v8 = *(a2 + 8);
  v9 = &v4[OBJC_IVAR____TtC18HealthExperienceUI43EmergencyAccessBuddyMedicalIDViewController_flow];
  *v9 = *a2;
  v9[8] = v8;
  *&v4[OBJC_IVAR____TtC18HealthExperienceUI43EmergencyAccessBuddyMedicalIDViewController_healthStore] = a1;
  sub_1BA020470(a3, &v4[OBJC_IVAR____TtC18HealthExperienceUI43EmergencyAccessBuddyMedicalIDViewController_emergencyStatus]);
  v10 = objc_allocWithZone(MEMORY[0x1E696C248]);
  sub_1BA02040C(v7, v8);
  v11 = a1;
  v12 = [v10 initWithHealthStore_];
  v13 = [v12 medicalIDSetUpStatus];

  if (v13 != 2)
  {
    if (qword_1EDC5E100 == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_9;
  }

  if (qword_1EDC5E100 != -1)
  {
LABEL_9:
    swift_once();
  }

LABEL_5:
  sub_1BA4A1318();
  v14 = [objc_opt_self() standardConfiguration];
  [v14 setIsShowWhenLockedVisible_];
  [v14 setIsShareDuringEmergencyCallVisible_];
  [v14 setSuggestHealthData_];
  if (v8 > 1)
  {
    v15 = 3;
  }

  else
  {
    sub_1BA0204D4(v7, v8);
    v15 = 6;
  }

  [v14 setAccessPoint_];
  sub_1BA4A2998();
  v16 = v11;
  v17 = sub_1BA4A2988();
  v18 = sub_1BA4A2928();

  v19 = [objc_allocWithZone(MEMORY[0x1E69B1510]) initWithHealthStore:v16 medicalIDData:v18 displayConfiguration:v14];
  *&v4[OBJC_IVAR____TtC18HealthExperienceUI43EmergencyAccessBuddyMedicalIDViewController_medicalIDViewController] = v19;
  v20 = [objc_allocWithZone(MEMORY[0x1E696ACD8]) init];
  *&v4[OBJC_IVAR____TtC18HealthExperienceUI43EmergencyAccessBuddyMedicalIDViewController_contentViewHeightConstraint] = v20;
  v21 = sub_1BA4A6758();

  v24.receiver = v4;
  v24.super_class = type metadata accessor for EmergencyAccessBuddyMedicalIDViewController();
  v22 = objc_msgSendSuper2(&v24, sel_initWithTitle_detailText_symbolName_contentLayout_, v21, 0, 0, 3);

  sub_1BA0204E8(a3);
  return v22;
}
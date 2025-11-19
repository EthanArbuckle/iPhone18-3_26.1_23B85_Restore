uint64_t SnapshotDataSource.asCardStack(config:showAllDataSource:)(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v47 = a5;
  v46 = a4;
  v48 = a3;
  v45 = a2;
  v8 = sub_1BA4A1798();
  v44 = v8;
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a1[1];
  v58 = *a1;
  v59 = v12;
  v60 = a1[2];
  v56 = type metadata accessor for MultipleItemsCardStackCell();
  sub_1BA155F78(0, &qword_1EDC654A0, type metadata accessor for MultipleItemsCardStackCell);
  v13 = sub_1BA4A6808();
  v52 = v14;
  v53 = v13;
  v56 = 0xD00000000000001BLL;
  v57 = 0x80000001BA4EDCF0;
  sub_1BA4A1788();
  v15 = sub_1BA4A1748();
  v17 = v16;
  v18 = *(v9 + 8);
  v18(v11, v8);
  MEMORY[0x1BFAF1350](v15, v17);

  v50 = v57;
  v51 = v56;
  v19 = swift_allocObject();
  v20 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v21 = swift_allocObject();
  *(v21 + 16) = a4;
  *(v21 + 24) = a5;
  v22 = v45;
  *(v21 + 32) = v20;
  *(v21 + 40) = v22;
  *(v21 + 48) = v48;
  v23 = v59;
  *(v21 + 56) = v58;
  *(v21 + 72) = v23;
  *(v21 + 88) = v60;
  *&v54 = type metadata accessor for CardStackMoreButtonCell();

  swift_unknownObjectRetain();
  sub_1BA155F40(&v58, &v56);
  sub_1BA155F78(0, &qword_1EDC66CA8, type metadata accessor for CardStackMoreButtonCell);
  v24 = sub_1BA4A6808();
  v26 = v25;
  sub_1BA4A1788();
  v27 = sub_1BA4A1748();
  v29 = v28;
  v18(v11, v44);
  *(v19 + 32) = v27;
  *(v19 + 40) = v29;
  *(v19 + 48) = 0;
  *(v19 + 56) = 0xE000000000000000;
  *(v19 + 64) = 0;
  *(v19 + 72) = 1;
  *(v19 + 80) = sub_1BA155F2C;
  *(v19 + 88) = v21;
  *(v19 + 96) = 0;
  *(v19 + 104) = 0;
  *(v19 + 112) = 0;
  sub_1B9F0E30C(0, 0);
  *(v19 + 97) = 0;
  *(v19 + 16) = v24;
  *(v19 + 24) = v26;

  v30 = swift_allocObject();
  v31 = MEMORY[0x1E69E7CC0];
  v30[4] = MEMORY[0x1E69E7CC0];
  v32 = sub_1B9F1C5F0(v31);
  v30[2] = 0;
  v30[3] = 0;
  v30[4] = v31;
  v30[5] = v32;

  v30[5] = Array<A>.identifierToIndexDict()(v31);

  v30[6] = 0xD000000000000015;
  v30[7] = 0x80000001BA4EDD10;
  type metadata accessor for MappedDataSource();
  v33 = swift_allocObject();
  v34 = v59;
  *(v33 + 24) = v58;
  *(v33 + 16) = v30;
  *(v33 + 40) = v34;
  *(v33 + 56) = v60;
  v36 = v52;
  v35 = v53;
  *(v33 + 72) = v19;
  *(v33 + 80) = v35;
  v37 = v50;
  v38 = v51;
  *(v33 + 88) = v36;
  *(v33 + 96) = v38;
  *(v33 + 104) = v37;
  *&v54 = sub_1BA156BEC;
  *(&v54 + 1) = v33;
  v55 = 2;
  sub_1BA155F40(&v58, &v56);
  v39 = v49;
  swift_unknownObjectRetain();

  sub_1BA3718D4(v39, &v54);
  swift_unknownObjectRelease();
  SnapshotDataSource.withCellRegistration(_:)(sub_1BA1564E0, 0);

  v40 = type metadata accessor for CellRegistering();
  v41 = SnapshotDataSource.withLayoutSectionProvider(collapseEmptySections:_:)(0, sub_1BA156508, 0, v40, &protocol witness table for CellRegistering<A>);

  return v41;
}

uint64_t SectionedDataSourceCardStackConfiguration.moreItemsButtonTitleFormat.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t SectionedDataSourceCardStackConfiguration.expandedModalTitle.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t SectionedDataSourceCardStackConfiguration.modalDisplayedCompletion.getter()
{
  v1 = *(v0 + 32);
  sub_1B9F0F1B4(v1, *(v0 + 40));
  return v1;
}

uint64_t SectionedDataSourceCardStackConfiguration.init(moreItemsButtonTitleFormat:expandedModalTitle:modalDisplayedCompletion:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  *a7 = result;
  a7[1] = a2;
  a7[2] = a3;
  a7[3] = a4;
  a7[4] = a5;
  a7[5] = a6;
  return result;
}

void sub_1BA155CEC(uint64_t a1)
{
  type metadata accessor for AlertStackModalPresentationManager();
  inited = swift_initStackObject();
  v3 = [objc_opt_self() healthAppDefaultsDomainWithHealthStore_];
  *(inited + 16) = v3;
  sub_1B9FFE318(0, 0);
}

uint64_t sub_1BA155D64()
{
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  result = sub_1BA4A1318();
  qword_1EBBECB08 = result;
  unk_1EBBECB10 = v1;
  return result;
}

uint64_t sub_1BA155DFC()
{
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  result = sub_1BA4A1318();
  qword_1EDC5E840 = result;
  *algn_1EDC5E848 = v1;
  return result;
}

uint64_t sub_1BA155E94(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, _OWORD *a5)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v10 = a5[1];
    v11[0] = *a5;
    v11[1] = v10;
    v11[2] = a5[2];
    _s18HealthExperienceUI18SnapshotDataSourcePAAE024presentCardStackOriginaleF014viewController04dataF06configySo06UIViewL0CSg_AaB_pSgAA09SectionedefhI13ConfigurationVtF_0(a1, a3, a4, v11);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1BA155F78(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

void *sub_1BA155FC8(void *result, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9 = result[2];
  if (!v9)
  {
    v10 = MEMORY[0x1E69E7CC0];
LABEL_19:
    v20 = v10[2];
    if (v20)
    {
      sub_1B9F0A534((v10 + 4), v54);

      if (v20 == 1)
      {
        sub_1B9F21C5C(0, &qword_1EDC5DCA0, &qword_1EDC6AD50, MEMORY[0x1E69A3310], MEMORY[0x1E69E6F90]);
        v21 = swift_allocObject();
        *(v21 + 16) = xmmword_1BA4B5480;
        sub_1B9F0A534(v54, v21 + 32);
        v22 = a3;
        swift_beginAccess();
        a3[4] = v21;

        a3[5] = Array<A>.identifierToIndexDict()(v21);
        swift_endAccess();

        sub_1B9FF6758();
        v23 = swift_allocObject();
      }

      else
      {
        v24 = MEMORY[0x1E69E6F90];
        sub_1B9F21C5C(0, &qword_1EDC6B410, &qword_1EDC6B3D0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
        v25 = swift_allocObject();
        v26 = MEMORY[0x1E69E6530];
        *(v25 + 16) = xmmword_1BA4B5480;
        v27 = MEMORY[0x1E69E65A8];
        *(v25 + 56) = v26;
        *(v25 + 64) = v27;
        *(v25 + 32) = v20 - 1;
        v28 = sub_1BA4A6768();
        v30 = v29;

        swift_beginAccess();
        *(a5 + 48) = v28;
        *(a5 + 56) = v30;

        sub_1B9F21C5C(0, &qword_1EDC5DCA0, &qword_1EDC6AD50, MEMORY[0x1E69A3310], v24);
        v31 = swift_allocObject();
        *(v31 + 16) = xmmword_1BA4B9FD0;
        *(v31 + 56) = &type metadata for MultipleItemsCardStackItem;
        *(v31 + 64) = sub_1BA156FC0();
        v32 = swift_allocObject();
        *(v31 + 32) = v32;
        v32[2] = a6;
        v32[3] = a7;
        v32[4] = a8;
        v32[5] = a9;
        sub_1B9F0A534(v54, v31 + 72);
        swift_beginAccess();
        v33 = *(a5 + 96);
        v52[4] = *(a5 + 80);
        v52[5] = v33;
        v53 = *(a5 + 112);
        v34 = *(a5 + 32);
        v52[0] = *(a5 + 16);
        v52[1] = v34;
        v35 = *(a5 + 64);
        v52[2] = *(a5 + 48);
        v52[3] = v35;
        *(v31 + 136) = &type metadata for ButtonCollectionViewItem;
        *(v31 + 144) = sub_1BA0FF9A8();
        v36 = swift_allocObject();
        *(v31 + 112) = v36;
        v37 = *(a5 + 96);
        *(v36 + 80) = *(a5 + 80);
        *(v36 + 96) = v37;
        *(v36 + 112) = *(a5 + 112);
        v38 = *(a5 + 32);
        *(v36 + 16) = *(a5 + 16);
        *(v36 + 32) = v38;
        v39 = *(a5 + 64);
        *(v36 + 48) = *(a5 + 48);
        *(v36 + 64) = v39;
        v22 = a3;
        swift_beginAccess();
        a3[4] = v31;

        sub_1BA157084(v52, v51);

        a3[5] = Array<A>.identifierToIndexDict()(v31);
        swift_endAccess();

        sub_1B9FF6758();
        v23 = swift_allocObject();
      }

      *(v23 + 16) = xmmword_1BA4B5480;
      swift_beginAccess();
      v41 = v22[2];
      v40 = v22[3];
      v42 = v22[4];
      v43 = v22[5];
      v44 = v22[6];
      v45 = v22[7];
      *(v23 + 32) = v41;
      *(v23 + 40) = v40;
      *(v23 + 48) = v42;
      *(v23 + 56) = v43;
      *(v23 + 64) = v44;
      *(v23 + 72) = v45;

      __swift_destroy_boxed_opaque_existential_1(v54);
    }

    else
    {

      return MEMORY[0x1E69E7CC0];
    }

    return v23;
  }

  v10 = MEMORY[0x1E69E7CC0];
  v11 = result + 6;
  while (1)
  {
    v12 = *v11;
    v13 = *(*v11 + 16);
    v14 = v10[2];
    v15 = v14 + v13;
    if (__OFADD__(v14, v13))
    {
      break;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result && v15 <= v10[3] >> 1)
    {
      if (*(v12 + 16))
      {
        goto LABEL_14;
      }
    }

    else
    {
      if (v14 <= v15)
      {
        v16 = v14 + v13;
      }

      else
      {
        v16 = v14;
      }

      result = sub_1B9F281E8(result, v16, 1, v10);
      v10 = result;
      if (*(v12 + 16))
      {
LABEL_14:
        if ((v10[3] >> 1) - v10[2] < v13)
        {
          goto LABEL_28;
        }

        sub_1B9F0D9AC(0, &qword_1EDC6AD50);
        swift_arrayInitWithCopy();

        if (v13)
        {
          v17 = v10[2];
          v18 = __OFADD__(v17, v13);
          v19 = v17 + v13;
          if (v18)
          {
            goto LABEL_29;
          }

          v10[2] = v19;
        }

        goto LABEL_4;
      }
    }

    if (v13)
    {
      goto LABEL_27;
    }

LABEL_4:
    v11 += 6;
    if (!--v9)
    {
      goto LABEL_19;
    }
  }

  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
  return result;
}

id sub_1BA156508()
{
  if (qword_1EDC6D380 != -1)
  {
    swift_once();
  }

  v12[4] = xmmword_1EDC6D3C8;
  v12[5] = unk_1EDC6D3D8;
  v12[6] = xmmword_1EDC6D3E8;
  v12[7] = unk_1EDC6D3F8;
  v12[0] = xmmword_1EDC6D388;
  v12[1] = xmmword_1EDC6D398;
  v12[2] = xmmword_1EDC6D3A8;
  v12[3] = xmmword_1EDC6D3B8;
  v11 = *(&xmmword_1EDC6D388 + 8);
  v0 = *(&xmmword_1EDC6D398 + 1);
  v2 = xmmword_1EDC6D3A8;
  v1 = xmmword_1EDC6D3B8;
  v10 = qword_1EDC6D400;
  v8 = *&qword_1EDC6D3E0;
  v9 = *(&xmmword_1EDC6D3E8 + 8);
  v6 = *(&xmmword_1EDC6D3B8 + 8);
  v7 = *(&xmmword_1EDC6D3C8 + 8);
  sub_1B9F1D9A4(v12, v14);
  sub_1B9F1DA18(v0, v2, *(&v2 + 1), v1);
  *&v13[8] = v11;
  *&v13[72] = v7;
  *&v13[88] = v8;
  *&v13[104] = v9;
  memset(&v13[24], 0, 32);
  *v13 = 0;
  *&v13[120] = v10;
  *&v13[56] = v6;
  sub_1BA0117AC();
  *&v14[64] = *&v13[64];
  *&v14[80] = *&v13[80];
  *&v14[96] = *&v13[96];
  *&v14[112] = *&v13[112];
  *v14 = *v13;
  *&v14[16] = *&v13[16];
  *&v14[32] = *&v13[32];
  *&v14[48] = *&v13[48];
  sub_1B9F1D9A4(v13, &v5);
  v3 = sub_1B9F293A8(v14);
  *&v14[8] = v11;
  memset(&v14[24], 0, 32);
  *&v14[72] = v7;
  *&v14[88] = v8;
  *&v14[104] = v9;
  *v14 = 0;
  *&v14[120] = v10;
  *&v14[56] = v6;
  sub_1B9F1DA58(v14);
  return v3;
}

char *sub_1BA1566A8(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR____TtC18HealthExperienceUIP33_769EF482A8E949D5E185D49C9A04EEB923AllAlertsViewController_cancellable] = 0;
  return CompoundDataSourceCollectionViewController.init(dataSource:)(a1);
}

uint64_t sub_1BA15678C()
{
  v1 = [v0 navigationController];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 presentingViewController];

    v4 = UIViewController.resolvedHealthStore.getter();
    if (v4)
    {
LABEL_3:
      v5 = v4;
      v6 = [v4 profileIdentifier];

      [v6 type];
      v7 = HKStringFromProfileType();
      v8 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      v10 = v9;

      goto LABEL_6;
    }
  }

  else
  {
    v3 = 0;
    v4 = UIViewController.resolvedHealthStore.getter();
    if (v4)
    {
      goto LABEL_3;
    }
  }

  v8 = 0;
  v10 = 0;
LABEL_6:
  v14 = 1;
  if (!v10)
  {
    v8 = 7104878;
    v10 = 0xE300000000000000;
  }

  type metadata accessor for HealthAppAnalyticsManager();
  v13 = 0;
  memset(v12, 0, sizeof(v12));
  static HealthAppAnalyticsManager.submitInteraction(action:viewController:analyticProvenance:pinnedContentManager:)(&v14, v3, v8, v10, v12);

  return sub_1BA10F728(v12);
}

void _s18HealthExperienceUI18SnapshotDataSourcePAAE024presentCardStackOriginaleF014viewController04dataF06configySo06UIViewL0CSg_AaB_pSgAA09SectionedefhI13ConfigurationVtF_0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 && a2)
  {
    v7 = *(a4 + 32);
    v24 = *(a4 + 40);
    sub_1B9F1DEA0();
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1BA4B5480;
    *(v8 + 32) = a2;
    *(v8 + 40) = a3;
    type metadata accessor for CompoundSectionedDataSource();
    swift_allocObject();
    swift_unknownObjectRetain_n();
    v9 = a1;
    CompoundSectionedDataSource.init(_:)(v8);
    v10 = objc_allocWithZone(type metadata accessor for AllAlertsViewController());
    *&v10[OBJC_IVAR____TtC18HealthExperienceUIP33_769EF482A8E949D5E185D49C9A04EEB923AllAlertsViewController_cancellable] = 0;

    v12 = CompoundDataSourceCollectionViewController.init(dataSource:)(v11);
    if (qword_1EDC6D380 != -1)
    {
      swift_once();
    }

    v35[4] = xmmword_1EDC6D3C8;
    v35[5] = unk_1EDC6D3D8;
    v35[6] = xmmword_1EDC6D3E8;
    v35[7] = unk_1EDC6D3F8;
    v35[0] = xmmword_1EDC6D388;
    v35[1] = xmmword_1EDC6D398;
    v35[2] = xmmword_1EDC6D3A8;
    v35[3] = xmmword_1EDC6D3B8;
    v25 = xmmword_1EDC6D388;
    v13 = *(&xmmword_1EDC6D398 + 1);
    v26 = xmmword_1EDC6D398;
    v15 = xmmword_1EDC6D3A8;
    v14 = xmmword_1EDC6D3B8;
    v30 = *(&xmmword_1EDC6D3C8 + 8);
    v31 = *&qword_1EDC6D3E0;
    v32 = *(&xmmword_1EDC6D3E8 + 8);
    v33 = qword_1EDC6D400;
    v29 = *(&xmmword_1EDC6D3B8 + 8);
    sub_1B9F1D9A4(v35, aBlock);
    sub_1B9F1DA18(v13, v15, *(&v15 + 1), v14);
    sub_1BA0117AC();
    v27 = 0u;
    v28 = 0u;
    v16 = sub_1B9F293A8(&v25);
    v17 = [objc_allocWithZone(MEMORY[0x1E69DC808]) initWithSection_];

    v18 = [v12 collectionView];
    if (v18)
    {
      v19 = v18;
      [v18 setCollectionViewLayout:v17 animated:0];

      v20 = objc_allocWithZone(MEMORY[0x1E69A4418]);
      v21 = v12;
      v22 = [v20 initWithRootViewController_];
      v23 = sub_1BA4A6758();
      [v21 setTitle_];

      [v22 setModalPresentationStyle_];
      if (v7)
      {
        aBlock[4] = v7;
        aBlock[5] = v24;
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1B9F0B040;
        aBlock[3] = &block_descriptor_33;
        v7 = _Block_copy(aBlock);
      }

      [v9 presentViewController:v22 animated:1 completion:{v7, v24}];
      _Block_release(v7);

      swift_unknownObjectRelease();
    }

    else
    {
      __break(1u);
    }
  }
}

unint64_t sub_1BA156FC0()
{
  result = qword_1EBBECB20;
  if (!qword_1EBBECB20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBECB20);
  }

  return result;
}

uint64_t objectdestroy_2Tm_1()
{

  if (*(v0 + 80))
  {
  }

  if (*(v0 + 104))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 120, 7);
}

UIBarButtonItem_optional __swiftcall TapToRadarButtonDisplaying.makeTapToRadarButtonIfNeeded()()
{
  v1 = v0;
  if (qword_1EDC648D0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for TapToRadarVisibilityManager();
  __swift_project_value_buffer(v2, qword_1EDC648D8);
  if ([objc_opt_self() isAppleInternalInstall] && (sub_1B9F140B4(), sub_1BA4A1CA8(), (v8 & 1) == 0))
  {
    v5 = sub_1BA4A6758();
    v6 = [objc_opt_self() systemImageNamed_];

    v7 = [objc_allocWithZone(MEMORY[0x1E69DC708]) initWithImage:v6 style:0 target:sub_1BA4A8328() action:{sel_ttrButtonTapped, v1}];
    swift_unknownObjectRelease();
    v4 = v7;
  }

  else
  {
    v4 = 0;
  }

  result.value.super.super.isa = v4;
  result.is_nil = v3;
  return result;
}

void TapToRadarButtonDisplaying<>.showDisambiguationTriageAlert(featureName:userConfirmed:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1BA4A7DF8();
  MEMORY[0x1BFAF1350](0xD000000000000016, 0x80000001BA4EBE50);
  MEMORY[0x1BFAF1350](a1, a2);
  MEMORY[0x1BFAF1350](0xD00000000000001CLL, 0x80000001BA4EBE70);
  v8 = sub_1BA4A6758();
  v9 = sub_1BA4A6758();

  v10 = [objc_opt_self() alertControllerWithTitle:v8 message:v9 preferredStyle:1];

  v11 = swift_allocObject();
  *(v11 + 16) = a3;
  *(v11 + 24) = a4;

  v12 = sub_1BA4A6758();
  v29 = sub_1B9F7B0D4;
  v30 = v11;
  aBlock = MEMORY[0x1E69E9820];
  v26 = 1107296256;
  v27 = sub_1BA0B06D4;
  v28 = &block_descriptor_34;
  v13 = _Block_copy(&aBlock);

  v14 = objc_opt_self();
  v15 = [v14 actionWithTitle:v12 style:0 handler:v13];
  _Block_release(v13);

  [v10 addAction_];
  v16 = sub_1BA4A6758();
  v29 = sub_1BA157770;
  v30 = 0;
  aBlock = MEMORY[0x1E69E9820];
  v26 = 1107296256;
  v27 = sub_1BA0B06D4;
  v28 = &block_descriptor_3_0;
  v17 = _Block_copy(&aBlock);

  v18 = [v14 actionWithTitle:v16 style:0 handler:v17];
  _Block_release(v17);

  [v10 addAction_];
  v19 = sub_1BA4A6758();
  v29 = sub_1BA157958;
  v30 = 0;
  aBlock = MEMORY[0x1E69E9820];
  v26 = 1107296256;
  v27 = sub_1BA0B06D4;
  v28 = &block_descriptor_6_3;
  v20 = _Block_copy(&aBlock);

  v21 = [v14 actionWithTitle:v19 style:0 handler:v20];
  _Block_release(v20);

  [v10 addAction_];
  v22 = sub_1BA4A6758();
  v23 = [v14 actionWithTitle:v22 style:1 handler:0];

  [v10 addAction_];
  [v24 presentViewController:v10 animated:1 completion:0];
}

uint64_t TapToRadarVisibilityManager.shouldShowTapToRadarButtons.getter()
{
  if ([objc_opt_self() isAppleInternalInstall])
  {
    sub_1B9F140B4();
    sub_1BA4A1CA8();
    v0 = v2 ^ 1;
  }

  else
  {
    v0 = 0;
  }

  return v0 & 1;
}

uint64_t static TapToRadarVisibilityManager.shared.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EDC648D0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for TapToRadarVisibilityManager();
  v3 = __swift_project_value_buffer(v2, qword_1EDC648D8);

  return sub_1BA157AF4(v3, a1);
}

uint64_t sub_1BA157770()
{
  v0 = sub_1BA4A15D8();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = objc_opt_self();
  v5 = sub_1BA4A6758();
  sub_1BA0B5A7C();
  v6 = sub_1BA4A6AE8();
  v7 = [v4 hk:v5 tapToHealthRadarURLWithTitle:0 description:0 classification:0 reproducibility:v6 keywords:2 autoDiagnostics:0 attachments:?];

  sub_1BA4A1588();
  v8 = [objc_opt_self() defaultWorkspace];
  if (v8)
  {
    v9 = v8;
    v10 = sub_1BA4A1548();
    sub_1B9FDB798(MEMORY[0x1E69E7CC0]);
    v11 = sub_1BA4A6618();

    [v9 openSensitiveURL:v10 withOptions:v11];
  }

  return (*(v1 + 8))(v3, v0);
}

void sub_1BA157958()
{
  sub_1BA011090();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v9 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = [objc_opt_self() defaultWorkspace];
  if (v3)
  {
    v4 = v3;
    sub_1BA4A15C8();
    v5 = sub_1BA4A15D8();
    v6 = *(v5 - 8);
    if ((*(v6 + 48))(v2, 1, v5) == 1)
    {
      __break(1u);
    }

    else
    {
      v7 = sub_1BA4A1548();
      (*(v6 + 8))(v2, v5);
      sub_1B9FDB798(MEMORY[0x1E69E7CC0]);
      v8 = sub_1BA4A6618();

      [v4 openSensitiveURL:v7 withOptions:v8];
    }
  }
}

uint64_t sub_1BA157AF4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TapToRadarVisibilityManager();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void __swiftcall HeaderWithSubtitleAndRightGlyphView.ViewModel.init(header:subtitle:glyphName:)(HealthExperienceUI::HeaderWithSubtitleAndRightGlyphView::ViewModel *__return_ptr retstr, Swift::String header, Swift::String subtitle, Swift::String glyphName)
{
  retstr->header = header;
  retstr->subtitle = subtitle;
  retstr->glyphName = glyphName;
}

id HeaderWithSubtitleAndRightGlyphView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

char *HeaderWithSubtitleAndRightGlyphView.init(frame:)(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = sub_1BA4A3EA8();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtC18HealthExperienceUI35HeaderWithSubtitleAndRightGlyphView_headerLabel;
  v15 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  v55 = objc_opt_self();
  v16 = [v55 labelColor];
  [v15 setTextColor_];

  [v15 setAdjustsFontForContentSizeCategory_];
  [v15 setTranslatesAutoresizingMaskIntoConstraints_];
  v17 = sub_1B9F6B774(*MEMORY[0x1E69DDCF8], *MEMORY[0x1E69DB980], 0, 0, 0, 0, 1);
  [v15 setFont_];

  *&v5[v14] = v15;
  v18 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  [v18 setTranslatesAutoresizingMaskIntoConstraints_];
  v19 = *MEMORY[0x1E69DDD00];
  v20 = objc_opt_self();
  v21 = [v20 preferredFontDescriptorWithTextStyle:v19 compatibleWithTraitCollection:0];
  if (v21)
  {
    v22 = v21;
    v23 = [objc_opt_self() fontWithDescriptor:v21 size:0.0];
  }

  else
  {
    v53 = v11;
    v54 = v10;
    sub_1BA4A3DD8();
    v24 = v19;
    v25 = sub_1BA4A3E88();
    v26 = sub_1BA4A6FB8();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v58 = v28;
      *v27 = 136315906;
      v29 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      HIDWORD(v51) = v26;
      v31 = sub_1B9F0B82C(v29, v30, &v58);

      *(v27 + 4) = v31;
      *(v27 + 12) = 2080;
      v56 = 0;
      v57 = 1;
      sub_1BA1508E8();
      v32 = sub_1BA4A6808();
      v34 = sub_1B9F0B82C(v32, v33, &v58);

      *(v27 + 14) = v34;
      *(v27 + 22) = 2080;
      LODWORD(v56) = 0;
      type metadata accessor for SymbolicTraits(0);
      v35 = sub_1BA4A6808();
      v37 = sub_1B9F0B82C(v35, v36, &v58);

      *(v27 + 24) = v37;
      *(v27 + 32) = 2112;
      v38 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
      *(v27 + 34) = v38;
      v39 = v52;
      *v52 = v38;
      _os_log_impl(&dword_1B9F07000, v25, BYTE4(v51), "Unable to create descriptor with textStyle %s, weight %s, traits %s and rounded %@. Using only the text style", v27, 0x2Au);
      sub_1B9F8C6C8(v39);
      MEMORY[0x1BFAF43A0](v39, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v28, -1, -1);
      MEMORY[0x1BFAF43A0](v27, -1, -1);
    }

    (*(v53 + 8))(v13, v54);
    v40 = [v20 preferredFontDescriptorWithTextStyle_];
    v23 = [objc_opt_self() fontWithDescriptor:v40 size:0.0];
  }

  v41 = OBJC_IVAR____TtC18HealthExperienceUI35HeaderWithSubtitleAndRightGlyphView_subtitleLabel;
  [v18 setFont_];

  v42 = [v55 secondaryLabelColor];
  [v18 setTextColor_];

  [v18 setAdjustsFontForContentSizeCategory_];
  *&v5[v41] = v18;
  v43 = OBJC_IVAR____TtC18HealthExperienceUI35HeaderWithSubtitleAndRightGlyphView_glyphImageView;
  v44 = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) init];
  [v44 setTranslatesAutoresizingMaskIntoConstraints_];
  [v44 setAdjustsImageSizeForAccessibilityContentSizeCategory_];
  v45 = [objc_opt_self() configurationWithScale_];
  [v44 setPreferredSymbolConfiguration_];

  *&v5[v43] = v44;
  v46 = type metadata accessor for HeaderWithSubtitleAndRightGlyphView();
  v59.receiver = v5;
  v59.super_class = v46;
  v47 = objc_msgSendSuper2(&v59, sel_initWithFrame_, a1, a2, a3, a4);
  v48 = *&v47[OBJC_IVAR____TtC18HealthExperienceUI35HeaderWithSubtitleAndRightGlyphView_headerLabel];
  v49 = v47;
  [v49 addSubview_];
  [v49 addSubview_];
  [v49 addSubview_];
  sub_1BA158284();

  return v49;
}

void sub_1BA158284()
{
  v38 = objc_opt_self();
  sub_1B9F109F8();
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1BA4B79D0;
  v2 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI35HeaderWithSubtitleAndRightGlyphView_headerLabel];
  v3 = [v2 leadingAnchor];
  v4 = [v0 leadingAnchor];
  v5 = [v3 constraintEqualToAnchor_];

  *(v1 + 32) = v5;
  v6 = [v2 topAnchor];
  v7 = [v0 topAnchor];
  v8 = [v6 constraintEqualToAnchor_];

  *(v1 + 40) = v8;
  v9 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI35HeaderWithSubtitleAndRightGlyphView_glyphImageView];
  v10 = [v9 leadingAnchor];
  v11 = [v2 trailingAnchor];
  v12 = [v10 constraintGreaterThanOrEqualToAnchor:v11 constant:5.0];

  *(v1 + 48) = v12;
  v13 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI35HeaderWithSubtitleAndRightGlyphView_subtitleLabel];
  v14 = [v13 topAnchor];
  v15 = [v2 bottomAnchor];
  v16 = [v14 constraintEqualToAnchor:v15 constant:5.0];

  *(v1 + 56) = v16;
  v17 = [v13 leadingAnchor];
  v18 = [v0 leadingAnchor];
  v19 = [v17 constraintEqualToAnchor_];

  *(v1 + 64) = v19;
  v20 = [v0 bottomAnchor];
  v21 = [v13 bottomAnchor];
  v22 = [v20 constraintEqualToAnchor_];

  *(v1 + 72) = v22;
  v23 = [v9 leadingAnchor];
  v24 = [v13 trailingAnchor];
  v25 = [v23 constraintGreaterThanOrEqualToAnchor:v24 constant:5.0];

  *(v1 + 80) = v25;
  v26 = [v9 trailingAnchor];
  v27 = [v0 trailingAnchor];
  v28 = [v26 &selRef:v27 numberWithInteger:? + 5];

  *(v1 + 88) = v28;
  v29 = [v9 centerYAnchor];
  v30 = [v0 centerYAnchor];
  v31 = [v29 &selRef:v30 numberWithInteger:? + 5];

  *(v1 + 96) = v31;
  v32 = [v9 topAnchor];
  v33 = [v0 topAnchor];
  v34 = [v32 constraintGreaterThanOrEqualToAnchor_];

  *(v1 + 104) = v34;
  v35 = [v0 bottomAnchor];
  v36 = [v9 bottomAnchor];
  v37 = [v35 constraintGreaterThanOrEqualToAnchor_];

  *(v1 + 112) = v37;
  sub_1B9F0ADF8(0, &qword_1EDC6B570);
  v39 = sub_1BA4A6AE8();

  [v38 activateConstraints_];
}

void sub_1BA158790(uint64_t *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v4 = sub_1BA4A3EA8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a1;
  v9 = a1[1];
  v11 = a1[2];
  v10 = a1[3];
  v12 = a1[4];
  v13 = a1[5];
  v39 = v12;
  v40 = v8;
  sub_1BA4A3DD8();

  v14 = sub_1BA4A3E88();
  v15 = sub_1BA4A6FC8();

  v38 = v15;
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v36 = v2;
    v17 = v16;
    v34 = swift_slowAlloc();
    v47 = v34;
    *v17 = 136315394;
    v18 = sub_1BA4A85D8();
    ObjectType = v5;
    v20 = sub_1B9F0B82C(v18, v19, &v47);
    v35 = v4;
    v21 = v20;

    *(v17 + 4) = v21;
    *(v17 + 12) = 2080;
    v41 = v40;
    v42 = v9;
    v43 = v11;
    v44 = v10;
    v45 = v39;
    v46 = v13;

    v22 = sub_1BA4A6808();
    v24 = sub_1B9F0B82C(v22, v23, &v47);

    *(v17 + 14) = v24;
    _os_log_impl(&dword_1B9F07000, v14, v38, "[%s] Updating view with view model: %s", v17, 0x16u);
    v25 = v34;
    swift_arrayDestroy();
    MEMORY[0x1BFAF43A0](v25, -1, -1);
    v26 = v17;
    v2 = v36;
    MEMORY[0x1BFAF43A0](v26, -1, -1);

    (*(ObjectType + 8))(v7, v35);
  }

  else
  {

    (*(v5 + 8))(v7, v4);
  }

  v27 = *(v2 + OBJC_IVAR____TtC18HealthExperienceUI35HeaderWithSubtitleAndRightGlyphView_headerLabel);
  v28 = sub_1BA4A6758();
  [v27 setText_];

  v29 = *(v2 + OBJC_IVAR____TtC18HealthExperienceUI35HeaderWithSubtitleAndRightGlyphView_subtitleLabel);
  v30 = sub_1BA4A6758();
  [v29 setText_];

  v31 = *(v2 + OBJC_IVAR____TtC18HealthExperienceUI35HeaderWithSubtitleAndRightGlyphView_glyphImageView);
  v32 = sub_1BA4A6758();
  v33 = [objc_opt_self() systemImageNamed_];

  [v31 setImage_];
}

id HeaderWithSubtitleAndRightGlyphView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HeaderWithSubtitleAndRightGlyphView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1BA158C08()
{
  v1 = v0;
  v2 = sub_1BA4A3EA8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC18HealthExperienceUI35HeaderWithSubtitleAndRightGlyphView_headerLabel;
  v7 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  v42 = objc_opt_self();
  v8 = [v42 labelColor];
  [v7 setTextColor_];

  [v7 setAdjustsFontForContentSizeCategory_];
  [v7 setTranslatesAutoresizingMaskIntoConstraints_];
  v9 = sub_1B9F6B774(*MEMORY[0x1E69DDCF8], *MEMORY[0x1E69DB980], 0, 0, 0, 0, 1);
  [v7 setFont_];

  *(v1 + v6) = v7;
  v10 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  [v10 setTranslatesAutoresizingMaskIntoConstraints_];
  v11 = *MEMORY[0x1E69DDD00];
  v12 = objc_opt_self();
  v13 = [v12 preferredFontDescriptorWithTextStyle:v11 compatibleWithTraitCollection:0];
  if (v13)
  {
    v14 = v13;
    v15 = [objc_opt_self() fontWithDescriptor:v13 size:0.0];
  }

  else
  {
    v40 = v2;
    v41 = v3;
    sub_1BA4A3DD8();
    v16 = v11;
    v17 = sub_1BA4A3E88();
    v18 = sub_1BA4A6FB8();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v45 = v39;
      *v19 = 136315906;
      v20 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      v22 = sub_1B9F0B82C(v20, v21, &v45);

      *(v19 + 4) = v22;
      *(v19 + 12) = 2080;
      v43 = 0;
      v44 = 1;
      sub_1BA1508E8();
      v23 = sub_1BA4A6808();
      v25 = sub_1B9F0B82C(v23, v24, &v45);

      *(v19 + 14) = v25;
      *(v19 + 22) = 2080;
      LODWORD(v43) = 0;
      type metadata accessor for SymbolicTraits(0);
      v26 = sub_1BA4A6808();
      v28 = sub_1B9F0B82C(v26, v27, &v45);

      *(v19 + 24) = v28;
      *(v19 + 32) = 2112;
      v29 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
      *(v19 + 34) = v29;
      v30 = v38;
      *v38 = v29;
      _os_log_impl(&dword_1B9F07000, v17, v18, "Unable to create descriptor with textStyle %s, weight %s, traits %s and rounded %@. Using only the text style", v19, 0x2Au);
      sub_1B9F8C6C8(v30);
      MEMORY[0x1BFAF43A0](v30, -1, -1);
      v31 = v39;
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v31, -1, -1);
      MEMORY[0x1BFAF43A0](v19, -1, -1);
    }

    (*(v41 + 8))(v5, v40);
    v32 = [v12 preferredFontDescriptorWithTextStyle_];
    v15 = [objc_opt_self() fontWithDescriptor:v32 size:0.0];
  }

  v33 = OBJC_IVAR____TtC18HealthExperienceUI35HeaderWithSubtitleAndRightGlyphView_subtitleLabel;
  [v10 setFont_];

  v34 = [v42 secondaryLabelColor];
  [v10 setTextColor_];

  [v10 setAdjustsFontForContentSizeCategory_];
  *(v1 + v33) = v10;
  v35 = OBJC_IVAR____TtC18HealthExperienceUI35HeaderWithSubtitleAndRightGlyphView_glyphImageView;
  v36 = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) init];
  [v36 setTranslatesAutoresizingMaskIntoConstraints_];
  [v36 setAdjustsImageSizeForAccessibilityContentSizeCategory_];
  v37 = [objc_opt_self() configurationWithScale_];
  [v36 setPreferredSymbolConfiguration_];

  *(v1 + v35) = v36;
  sub_1BA4A8018();
  __break(1u);
}

uint64_t sub_1BA1591BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1BA4A7C48();
  v5 = 1;
  if (v4 != 1 << *(a1 + 32))
  {
    sub_1BA15B4D4(v4, *(a1 + 36), a1, a2);
    v5 = 0;
  }

  v6 = sub_1BA4A1D08();
  v7 = *(*(v6 - 8) + 56);

  return v7(a2, v5, 1, v6);
}

void *sub_1BA159278(uint64_t a1)
{
  v2 = sub_1BA4A7C48();
  if (v2 == 1 << *(a1 + 32))
  {
    return 0;
  }

  else
  {
    return sub_1BA15B594(&v4, v2, *(a1 + 36), 0, a1);
  }
}

uint64_t sub_1BA159320(uint64_t a1, unint64_t *a2)
{
  v4 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v5 = sub_1BA4A7C78();
    v7 = v6;
    v8 = sub_1BA4A7D18();
    v10 = v9;
    v11 = MEMORY[0x1BFAF26D0](v5, v7, v8, v9);
    sub_1BA0477A4(v8, v10, 1);
    if (v11)
    {
LABEL_3:
      sub_1BA0477A4(v5, v7, v4 != 0);
      return 0;
    }
  }

  else
  {
    v5 = sub_1BA4A7C48();
    v7 = *(a1 + 36);
    if (v5 == 1 << *(a1 + 32))
    {
      goto LABEL_3;
    }
  }

  sub_1BA15B2BC(v5, v7, v4 != 0, a1, a2);
  v14 = v13;
  sub_1BA0477A4(v5, v7, v4 != 0);
  return v14;
}

double sub_1BA159454@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v25 = a3;
  sub_1B9F12538();
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_snapshot;
  swift_beginAccess();
  v13 = *(v9 + 16);
  v13(v11, v4 + v12, v8);
  v24 = a1;
  v26 = a1;
  v27 = a2;
  v14 = a2;
  sub_1BA4A44E8();
  v16 = v15;
  v17 = *(v9 + 8);
  v17(v11, v8);
  if (v16)
  {
    v18 = MEMORY[0x1E69E7CC0];
    if (*(MEMORY[0x1E69E7CC0] + 16))
    {
LABEL_3:
      v19 = v18[4];
      v20 = v18[5];

      sub_1B9F3AB98(v19, v20, v25);

      return result;
    }
  }

  else
  {
    v13(v11, v4 + v12, v8);
    v26 = v24;
    v27 = v14;
    v18 = sub_1BA4A4528();
    v17(v11, v8);
    if (v18[2])
    {
      goto LABEL_3;
    }
  }

  v22 = v25;
  *(v25 + 32) = 0;
  result = 0.0;
  *v22 = 0u;
  v22[1] = 0u;
  return result;
}

uint64_t FavoritableFeedItemsDataSource.init(sourceProfiles:managedObjectContext:pinnedContentManager:favoriteStatusFilter:searchQuery:separateByCategory:)(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, char a6)
{
  v7 = sub_1BA15B73C(a1, a2, a3, a4, a5, a6);

  return v7;
}

uint64_t FavoritableFeedItemsDataSource.deinit()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_snapshot;
  sub_1B9F12538();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_1B9F18460(*(v0 + qword_1EDC64EB0), *(v0 + qword_1EDC64EB0 + 8), *(v0 + qword_1EDC64EB0 + 16));

  return v0;
}

uint64_t sub_1BA159798()
{
  sub_1B9FF5828();
  _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  sub_1B9F405E0();
}

uint64_t FavoritableFeedItemsDataSource.__allocating_init(sourceProfiles:managedObjectContext:pinnedContentManager:favoriteStatusFilter:searchQuery:separateByCategory:)(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, char a6)
{
  swift_allocObject();
  v12 = sub_1BA15B73C(a1, a2, a3, a4, a5, a6);

  return v12;
}

uint64_t FavoritableFeedItem.uniqueIdentifier.getter()
{
  v1 = [*(v0 + 40) uniqueIdentifier];
  v2 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();

  MEMORY[0x1BFAF1350](0x7469726F7661665FLL, 0xEC000000656C6261);
  return v2;
}

uint64_t FavoritableFeedItem.hash(into:)()
{
  sub_1BA4A77A8();
  sub_1BA4A84A8();
  sub_1BA4A84A8();
  sub_1BA4A68C8();
  if (!*(v0 + 80))
  {
    return sub_1BA4A84A8();
  }

  sub_1BA4A84A8();

  return sub_1BA4A68C8();
}

uint64_t FavoritableFeedItem.pinnedContentManager.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1);

  return sub_1B9F1134C(a1, v1);
}

uint64_t FavoritableFeedItem.reuseIdentifier.getter()
{
  v1 = *(v0 + 56);

  return v1;
}

uint64_t FavoritableFeedItem.baseIdentifier.getter()
{
  v1 = *(v0 + 72);

  return v1;
}

uint64_t FavoritableFeedItem.baseIdentifier.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 72) = a1;
  *(v2 + 80) = a2;
  return result;
}

uint64_t FavoritableFeedItem.init(feedItem:cellClass:pinnedContentManager:showReorderingHandle:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  *(a6 + 72) = 0;
  *(a6 + 80) = 0;
  *(a6 + 40) = a1;
  sub_1B9F0A534(a4, a6);
  v12 = a1;
  sub_1BA4A2748();
  *(a6 + 48) = sub_1BA4A2728() & 1;
  *(a6 + 49) = a5;
  *(a6 + 56) = (*(*(a3 + 8) + 8))(a2);
  *(a6 + 64) = v13;
  v14 = sub_1BA4A2758();

  v15 = sub_1BA159320(v14, &qword_1EDC6E920);

  if (v15)
  {
    v16 = [v15 identifier];

    v17 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    v19 = v18;

    sub_1B9F217BC(0, &qword_1EDC6E330, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_1BA4B9FD0;
    *(v20 + 32) = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    *(v20 + 40) = v21;
    strcpy((v20 + 48), "FavoritesEdit");
    *(v20 + 62) = -4864;
    *(v20 + 64) = v17;
    *(v20 + 72) = v19;
    v22 = sub_1BA4A6AE8();

    v23 = HKUIJoinStringsForAutomationIdentifier();

    if (v23)
    {
      v24 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      v26 = v25;
    }

    else
    {
      v24 = 0;
      v26 = 0;
    }

    result = __swift_destroy_boxed_opaque_existential_1(a4);
    *(a6 + 72) = v24;
    *(a6 + 80) = v26;
  }

  else
  {

    return __swift_destroy_boxed_opaque_existential_1(a4);
  }

  return result;
}

id FavoritableFeedItem.favoritesCategoryImage.getter()
{
  v0 = sub_1BA4A2648();
  v1 = [v0 systemImage];

  return v1;
}

uint64_t sub_1BA159DC8(SEL *a1)
{
  v2 = [*(v1 + 40) *a1];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();

  return v4;
}

uint64_t sub_1BA159E58(SEL *a1, const char *a2)
{
  v5 = sub_1BA4A3EA8();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [*(v2 + 40) *a1];
  if (v10)
  {
    v11 = v10;
    v12 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  }

  else
  {
    v12 = 0x6E776F6E6B6E55;
    sub_1BA4A3D68();
    v13 = sub_1BA4A3E88();
    v14 = sub_1BA4A6FA8();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_1B9F07000, v13, v14, a2, v15, 2u);
      MEMORY[0x1BFAF43A0](v15, -1, -1);
    }

    (*(v6 + 8))(v9, v5);
  }

  return v12;
}

uint64_t FavoritableFeedItem.hashValue.getter()
{
  sub_1BA4A8488();
  FavoritableFeedItem.hash(into:)();
  return sub_1BA4A84D8();
}

id sub_1BA15A050()
{
  v0 = sub_1BA4A2648();
  v1 = [v0 systemImage];

  return v1;
}

uint64_t sub_1BA15A0E0(uint64_t a1, uint64_t a2, SEL *a3)
{
  v4 = [*(v3 + 40) *a3];
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v6 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();

  return v6;
}

uint64_t sub_1BA15A144()
{
  sub_1BA4A8488();
  FavoritableFeedItem.hash(into:)();
  return sub_1BA4A84D8();
}

uint64_t sub_1BA15A188()
{
  sub_1BA4A8488();
  FavoritableFeedItem.hash(into:)();
  return sub_1BA4A84D8();
}

uint64_t sub_1BA15A1C4()
{
  v1 = *(v0 + 72);

  return v1;
}

uint64_t sub_1BA15A1F4(uint64_t a1, uint64_t a2)
{

  *(v2 + 72) = a1;
  *(v2 + 80) = a2;
  return result;
}

uint64_t sub_1BA15A22C()
{
  v1 = [*(v0 + 40) uniqueIdentifier];
  v2 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();

  MEMORY[0x1BFAF1350](0x7469726F7661665FLL, 0xEC000000656C6261);
  return v2;
}

uint64_t sub_1BA15A2B0(uint64_t a1)
{
  v2 = sub_1BA15BD08();

  return MEMORY[0x1EEE0DA58](a1, v2);
}

uint64_t sub_1BA15A310(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_1BA4A3EA8();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v69 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v69 - v12;
  sub_1B9F0A534(a1, v70);
  sub_1B9F0D950(0, &qword_1EDC6AD50);
  sub_1BA4A27B8();
  if (!swift_dynamicCast())
  {
    sub_1BA4A3DD8();
    sub_1B9F0A534(a1, v70);
    v25 = sub_1BA4A3E88();
    v26 = sub_1BA4A6FB8();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v76 = v28;
      *v27 = 136446466;
      v29 = sub_1BA4A85D8();
      v31 = sub_1B9F0B82C(v29, v30, &v76);

      *(v27 + 4) = v31;
      *(v27 + 12) = 2082;
      sub_1B9F0A534(v70, v75);
      v32 = sub_1BA4A6808();
      v34 = v33;
      __swift_destroy_boxed_opaque_existential_1(v70);
      v35 = sub_1B9F0B82C(v32, v34, &v76);

      *(v27 + 14) = v35;
      _os_log_impl(&dword_1B9F07000, v25, v26, "[%{public}s)]: Incorrect viewmodel; expected FeedItem, got: %{public}s", v27, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v28, -1, -1);
      MEMORY[0x1BFAF43A0](v27, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1(v70);
    }

    (*(v8 + 8))(v10, v7);
    return MEMORY[0x1E69E7CC0];
  }

  v14 = v75[0];
  v15 = [v75[0] localizedTitle];
  if (!v15)
  {
    sub_1BA4A3DD8();
    sub_1B9F0A534(a1, v70);
    v54 = sub_1BA4A3E88();
    v55 = sub_1BA4A6FB8();
    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      v76 = v57;
      *v56 = 136446466;
      v58 = sub_1BA4A85D8();
      v60 = sub_1B9F0B82C(v58, v59, &v76);
      v69 = v7;
      v61 = v60;

      *(v56 + 4) = v61;
      *(v56 + 12) = 2082;
      sub_1B9F0A534(v70, v75);
      v62 = sub_1BA4A6808();
      v64 = v63;
      __swift_destroy_boxed_opaque_existential_1(v70);
      v65 = sub_1B9F0B82C(v62, v64, &v76);

      *(v56 + 14) = v65;
      _os_log_impl(&dword_1B9F07000, v54, v55, "[%{public}s)]: Incorrect viewmodel; expected FeedItem with localizedTitle, got: %{public}s", v56, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v57, -1, -1);
      MEMORY[0x1BFAF43A0](v56, -1, -1);

      (*(v8 + 8))(v13, v69);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1(v70);
      (*(v8 + 8))(v13, v7);
    }

LABEL_21:

    return MEMORY[0x1E69E7CC0];
  }

  v16 = v15;
  v17 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  v19 = v18;

  v20 = *(a3 + 24);
  if (!v20)
  {
    goto LABEL_13;
  }

  v21 = *(a3 + 16);
  v22 = HIBYTE(v20) & 0xF;
  if ((v20 & 0x2000000000000000) == 0)
  {
    v22 = v21 & 0xFFFFFFFFFFFFLL;
  }

  if (!v22)
  {
LABEL_13:

    v24 = 1;
    goto LABEL_14;
  }

  *&v70[0] = v17;
  *(&v70[0] + 1) = v19;
  v75[0] = v21;
  v75[1] = v20;
  sub_1B9F252FC();
  v23 = sub_1BA4A7B68();

  if ((v23 & 1) == 0)
  {
    goto LABEL_21;
  }

  v24 = 0;
LABEL_14:
  sub_1BA15BC20(0, &qword_1EDC5DCA0, &qword_1EDC6AD50, MEMORY[0x1E69A3310], MEMORY[0x1E69E6F90]);
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_1BA4B5480;
  sub_1B9F0A534(a4, v75);
  *(v36 + 56) = &type metadata for FavoritableFeedItem;
  *(v36 + 64) = sub_1BA15BC8C();
  v37 = swift_allocObject();
  v38 = v36;
  *(v36 + 32) = v37;
  *(&v73 + 1) = 0;
  v74 = 0;
  *(&v71 + 1) = v14;
  sub_1B9F0A534(v75, v70);
  v39 = v14;
  sub_1BA4A2748();
  LOBYTE(v72) = sub_1BA4A2728() & 1;
  BYTE1(v72) = v24;
  v76 = type metadata accessor for EditFavoritesCollectionViewCell();
  sub_1BA15BFB8();
  *(&v72 + 1) = sub_1BA4A6808();
  *&v73 = v40;
  v41 = sub_1BA4A2758();
  v42 = sub_1BA159320(v41, &qword_1EDC6E920);

  if (v42)
  {
    v43 = [v42 identifier];

    v44 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    v46 = v45;

    sub_1B9F217BC(0, &qword_1EDC6E330, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
    v47 = swift_allocObject();
    *(v47 + 16) = xmmword_1BA4B9FD0;
    *(v47 + 32) = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    *(v47 + 40) = v48;
    strcpy((v47 + 48), "FavoritesEdit");
    *(v47 + 62) = -4864;
    *(v47 + 64) = v44;
    *(v47 + 72) = v46;
    v49 = sub_1BA4A6AE8();

    v50 = HKUIJoinStringsForAutomationIdentifier();

    if (v50)
    {
      v51 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      v53 = v52;
    }

    else
    {
      v51 = 0;
      v53 = 0;
    }

    __swift_destroy_boxed_opaque_existential_1(v75);
    *(&v73 + 1) = v51;
    v74 = v53;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v75);
  }

  v67 = v72;
  *(v37 + 48) = v71;
  *(v37 + 64) = v67;
  *(v37 + 80) = v73;
  *(v37 + 96) = v74;
  v68 = v70[1];
  *(v37 + 16) = v70[0];
  *(v37 + 32) = v68;

  return v38;
}

uint64_t sub_1BA15AA44@<X0>(uint64_t a1@<X2>, void *a2@<X8>)
{
  v3 = v2;
  v6 = *v2;
  v59 = sub_1BA4A3EA8();
  v7 = *(v59 - 8);
  MEMORY[0x1EEE9AC00](v59);
  v9 = &v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F12538();
  v11 = v10;
  v12 = *(v10 - 1);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_snapshot;
  swift_beginAccess();
  (*(v12 + 16))(v14, v3 + v15, v11);
  v16 = sub_1BA4A4578();
  v18 = *(v12 + 8);
  v17 = v12 + 8;
  v18(v14, v11);
  v19 = sub_1BA4A1968();
  if ((v19 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_17;
  }

  if (v19 >= *(v16 + 16))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v17 = 0xD00000000000001DLL;
  v20 = v16 + 16 * v19;
  v11 = *(v20 + 32);
  a1 = *(v20 + 40);

  sub_1BA159454(v11, a1, v66);
  if (!v67)
  {
LABEL_19:
    sub_1BA15BBB0(v66, &qword_1EDC6AD40, &qword_1EDC6AD50, MEMORY[0x1E69A3310]);
    v69 = 0u;
    v70 = 0u;
    v71 = 0;
    goto LABEL_21;
  }

  sub_1B9F0D950(0, &qword_1EDC6AD50);
  sub_1B9F0D950(0, &qword_1EDC6CCD8);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v71 = 0;
    v69 = 0u;
    v70 = 0u;
    goto LABEL_21;
  }

  if (*(&v70 + 1))
  {
    sub_1B9F1134C(&v69, v72);
    v21 = v73;
    v22 = v74;
    __swift_project_boxed_opaque_existential_1(v72, v73);
    v23 = (*(v22 + 40))(v21, v22);
    if (v23)
    {
      v11 = v23;
      v24 = v73;
      v25 = v74;
      __swift_project_boxed_opaque_existential_1(v72, v73);
      v26 = (*(v25 + 88))(v24, v25);
      if (v27)
      {
        v28 = v26;
        v29 = v27;

LABEL_15:
        a2[3] = &type metadata for HeaderWithIconItem;
        a2[4] = sub_1B9FE8F38();
        v55 = swift_allocObject();
        *a2 = v55;
        v55[2] = 0xD000000000000024;
        v55[3] = 0x80000001BA4EA100;
        v55[4] = v28;
        v55[5] = v29;
        v55[6] = v11;
        v55[7] = 0;
        v55[8] = 0;
        v55[9] = 0;
        return __swift_destroy_boxed_opaque_existential_1(v72);
      }
    }

    sub_1BA4A3DD8();
    sub_1B9F0A534(v72, &v69);
    sub_1B9F0A534(v72, v66);
    sub_1B9F0A534(v72, v63);
    v30 = sub_1BA4A3E88();
    v31 = sub_1BA4A6FA8();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      v62 = v58;
      *v32 = 136315906;
      v60 = v6;
      swift_getMetatypeMetadata();
      v33 = sub_1BA4A6808();
      v35 = sub_1B9F0B82C(v33, v34, &v62);

      *(v32 + 4) = v35;
      *(v32 + 12) = 2080;
      __swift_project_boxed_opaque_existential_1(&v69, *(&v70 + 1));
      v36 = sub_1BA4A2D58();
      v38 = v37;
      __swift_destroy_boxed_opaque_existential_1(&v69);
      v39 = sub_1B9F0B82C(v36, v38, &v62);

      *(v32 + 14) = v39;
      *(v32 + 22) = 2080;
      v41 = v67;
      v40 = v68;
      __swift_project_boxed_opaque_existential_1(v66, v67);
      v60 = (*(v40 + 88))(v41, v40);
      v61 = v42;
      sub_1B9F217BC(0, &qword_1EDC6E410, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
      v43 = sub_1BA4A6808();
      v45 = v44;
      __swift_destroy_boxed_opaque_existential_1(v66);
      v46 = sub_1B9F0B82C(v43, v45, &v62);

      *(v32 + 24) = v46;
      *(v32 + 32) = 2080;
      v47 = v64;
      v48 = v65;
      __swift_project_boxed_opaque_existential_1(v63, v64);
      v60 = (*(v48 + 40))(v47, v48);
      sub_1B9F3C928();
      v49 = sub_1BA4A6808();
      v51 = v50;
      __swift_destroy_boxed_opaque_existential_1(v63);
      v52 = sub_1B9F0B82C(v49, v51, &v62);
      v17 = 0xD00000000000001DLL;

      *(v32 + 34) = v52;
      _os_log_impl(&dword_1B9F07000, v30, v31, "[%s]: FeedItem does not have a category title or image: %s, %s, %s", v32, 0x2Au);
      v53 = v58;
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v53, -1, -1);
      MEMORY[0x1BFAF43A0](v32, -1, -1);

      (*(v7 + 8))(v9, v59);
    }

    else
    {

      (*(v7 + 8))(v9, v59);
      __swift_destroy_boxed_opaque_existential_1(&v69);
      __swift_destroy_boxed_opaque_existential_1(v66);
      __swift_destroy_boxed_opaque_existential_1(v63);
    }

    v54 = sub_1BA4A6758();
    v11 = [objc_opt_self() systemImageNamed_];

    if (v11)
    {

      v28 = 0;
      v29 = 0xE000000000000000;
      goto LABEL_15;
    }

    goto LABEL_18;
  }

LABEL_21:
  sub_1BA15BBB0(&v69, &qword_1EBBE9BB0, &qword_1EDC6CCD8, &protocol descriptor for FavoritableDisplaying);
  v72[0] = 0;
  v72[1] = 0xE000000000000000;
  sub_1BA4A7DF8();
  MEMORY[0x1BFAF1350](v17 + 25, 0x80000001BA4EDFB0);
  MEMORY[0x1BFAF1350](v11, a1);
  result = sub_1BA4A8018();
  __break(1u);
  return result;
}

uint64_t FavoritableFeedItemsDataSource.__deallocating_deinit()
{
  FavoritableFeedItemsDataSource.deinit();

  return swift_deallocClassInstance();
}

void sub_1BA15B2BC(unint64_t a1, uint64_t a2, char a3, uint64_t a4, unint64_t *a5)
{
  v8 = a1;
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      if (a4 < 0)
      {
        v9 = a4;
      }

      else
      {
        v9 = a4 & 0xFFFFFFFFFFFFFF8;
      }

      MEMORY[0x1BFAF2720](a1, a2, v9);
      sub_1B9F0ADF8(0, a5);
      swift_dynamicCast();
      return;
    }

LABEL_26:
    __break(1u);
    return;
  }

  if (a3)
  {
    sub_1B9F0ADF8(0, a5);
    if (sub_1BA4A7CA8() != *(a4 + 36))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    sub_1BA4A7CB8();
    swift_dynamicCast();
    v5 = v17;
    v10 = sub_1BA4A7788();
    v11 = -1 << *(a4 + 32);
    v8 = v10 & ~v11;
    if ((*(a4 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
    {
      v12 = ~v11;
      do
      {
        v13 = *(*(a4 + 48) + 8 * v8);
        v14 = sub_1BA4A7798();

        if (v14)
        {
          goto LABEL_19;
        }

        v8 = (v8 + 1) & v12;
      }

      while (((*(a4 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) != 0);
    }

    __break(1u);
  }

  if ((v8 & 0x8000000000000000) != 0 || 1 << *(a4 + 32) <= v8)
  {
    goto LABEL_24;
  }

  if (((*(a4 + 8 * (v8 >> 6) + 56) >> v8) & 1) == 0)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_19:
  }

  v15 = *(*(a4 + 48) + 8 * v8);

  v16 = v15;
}

uint64_t sub_1BA15B4D4@<X0>(uint64_t result@<X0>, int a2@<W1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  if (result < 0 || (v4 = result, 1 << *(a3 + 32) <= result))
  {
    __break(1u);
    goto LABEL_9;
  }

  if (((*(a3 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (*(a3 + 36) != a2)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v6 = *(a3 + 48);
  v7 = sub_1BA4A1D08();
  v8 = *(v7 - 8);
  v9 = *(v8 + 16);
  v10 = v6 + *(v8 + 72) * v4;

  return v9(a4, v10, v7);
}

void *sub_1BA15B594(void *result, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0 || 1 << *(a5 + 32) <= a2)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a5 + 8 * (a2 >> 6) + 64) >> a2) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a5 + 36) == a3)
  {
    v5 = *(*(a5 + 48) + 16 * a2);
    *result = *(*(a5 + 56) + 8 * a2);

    return v5;
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t _s18HealthExperienceUI19FavoritableFeedItemV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 40) uniqueIdentifier];
  v4 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  v6 = v5;

  v14 = v6;
  MEMORY[0x1BFAF1350](0x7469726F7661665FLL, 0xEC000000656C6261);
  v7 = v4;
  v8 = [*(a2 + 40) uniqueIdentifier];
  v9 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  v11 = v10;

  MEMORY[0x1BFAF1350](0x7469726F7661665FLL, 0xEC000000656C6261);
  if (v7 == v9 && v14 == v11)
  {
    v12 = 1;
  }

  else
  {
    v12 = sub_1BA4A8338();
  }

  return v12 & 1;
}

uint64_t sub_1BA15B73C(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, char a6)
{
  v32 = *v6;
  *(v6 + qword_1EBC095A0) = a1;
  sub_1BA4A27B8();
  __swift_project_boxed_opaque_existential_1(a3, a3[3]);

  sub_1BA4A2388();
  v10 = sub_1BA4A2578();

  v11 = v10;
  v12 = sub_1BA4A26C8();

  sub_1B9F217BC(0, &qword_1EDC6B400, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1BA4B7510;
  v14 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  v15 = sub_1BA4A6758();
  v16 = [v14 initWithKey:v15 ascending:1];

  *(v13 + 32) = v16;
  v17 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  v18 = sub_1BA4A6758();
  v19 = [v17 initWithKey:v18 ascending:1 selector:sel_localizedStandardCompare_];

  *(v13 + 40) = v19;
  sub_1B9F0ADF8(0, &qword_1EDC6E3E0);
  v20 = sub_1BA4A6AE8();

  [v12 setSortDescriptors_];

  v21 = a2;
  v22 = v12;
  if (a6)
  {
    v23 = sub_1BA4A6758();
  }

  else
  {
    v23 = 0;
  }

  v24 = [objc_allocWithZone(MEMORY[0x1E695D600]) initWithFetchRequest:v12 managedObjectContext:a2 sectionNameKeyPath:v23 cacheName:0];

  sub_1B9F126E0();
  v26 = objc_allocWithZone(v25);
  v27 = v24;
  v28 = _s18HealthExperienceUI33FeedItemSuggestedActionDataSourceCyACSo26NSFetchedResultsControllerCy0A8Platform0dE0CGcfc_0(v27);
  sub_1B9F0A534(a3, v34);
  v29 = swift_allocObject();
  *(v29 + 16) = a5;
  sub_1B9F1134C(v34, v29 + 24);
  *(v29 + 64) = v32;

  v30 = sub_1B9F17A68(v28, sub_1BA0D8EF8, v29, 0);

  __swift_destroy_boxed_opaque_existential_1(a3);
  return v30;
}

uint64_t sub_1BA15BBB0(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  sub_1BA15BC20(0, a2, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

void sub_1BA15BC20(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_1B9F0D950(255, a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

unint64_t sub_1BA15BC8C()
{
  result = qword_1EDC67DC8;
  if (!qword_1EDC67DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC67DC8);
  }

  return result;
}

unint64_t sub_1BA15BCE0(uint64_t a1)
{
  result = sub_1BA15BD08();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1BA15BD08()
{
  result = qword_1EDC6D4B8;
  if (!qword_1EDC6D4B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC6D4B8);
  }

  return result;
}

unint64_t sub_1BA15BD60()
{
  result = qword_1EBBECB40;
  if (!qword_1EBBECB40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBECB40);
  }

  return result;
}

uint64_t sub_1BA15BDB4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
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

uint64_t sub_1BA15BDFC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t type metadata accessor for FavoritableFeedItemsDataSource()
{
  result = qword_1EBBECB48;
  if (!qword_1EBBECB48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1BA15BFB8()
{
  result = qword_1EBBE9E08;
  if (!qword_1EBBE9E08)
  {
    type metadata accessor for EditFavoritesCollectionViewCell();
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_1EBBE9E08);
  }

  return result;
}

void sub_1BA15C010(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  sub_1B9F264E0();
  swift_beginAccess();
  v8 = *(v4 + 16);
  v9 = swift_allocObject();
  *(v9 + 16) = v4;
  *(v9 + 24) = a4;
  aBlock[4] = sub_1B9F8C0CC;
  aBlock[5] = v9;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B9F8A254;
  aBlock[3] = &block_descriptor_35;
  v10 = _Block_copy(aBlock);
  v11 = v8;

  [v11 notifyObservers_];
  _Block_release(v10);

  v12 = (*(v4 + OBJC_IVAR____TtC18HealthExperienceUI25SharingOverviewDataSource_profilesSharingWithYouDataSource) + OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_identifier);
  v13 = *v12 == a1 && v12[1] == a2;
  if (v13 || (sub_1BA4A8338() & 1) != 0 || ((v14 = (*(v4 + OBJC_IVAR____TtC18HealthExperienceUI25SharingOverviewDataSource_profilesYouAreSharingWithDataSource) + OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_identifier), *v14 == a1) ? (v15 = v14[1] == a2) : (v15 = 0), v15 || (sub_1BA4A8338() & 1) != 0))
  {
    sub_1BA15C358();
  }

  else
  {
    v16 = (*(v4 + OBJC_IVAR____TtC18HealthExperienceUI25SharingOverviewDataSource_errorDataSource) + qword_1EDC84AD0);
    if (*v16 == a1 && v16[1] == a2 || (sub_1BA4A8338() & 1) != 0)
    {
      sub_1B9F12538();
      v17 = sub_1BA4A44B8() > 0;
      sub_1BA15C8E4(v17);
    }
  }
}

void sub_1BA15C358()
{
  v1 = v0;
  sub_1B9F12538();
  v3 = v2;
  v4 = *(v2 - 8);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v46 - v8;
  v10 = *(v1 + OBJC_IVAR____TtC18HealthExperienceUI25SharingOverviewDataSource_profilesSharingWithYouDataSource);
  v11 = OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_snapshot;
  swift_beginAccess();
  v12 = *(v4 + 16);
  v12(v9, v10 + v11, v3);
  v13 = sub_1BA4A4538();
  v14 = *(v4 + 8);
  v14(v9, v3);
  v55 = *(v13 + 16);

  v56 = v1;
  v15 = *(v1 + OBJC_IVAR____TtC18HealthExperienceUI25SharingOverviewDataSource_profilesYouAreSharingWithDataSource);
  v16 = OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_snapshot;
  swift_beginAccess();
  v12(v7, v15 + v16, v3);
  v17 = sub_1BA4A4578();
  v14(v7, v3);
  v18 = *(v17 + 16);
  v19 = OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_sections;
  swift_beginAccess();
  if (!v18)
  {
    v22 = MEMORY[0x1E69E7CC0];
    goto LABEL_17;
  }

  v20 = 0;
  v21 = v17 + 40;
  v53 = v18 - 1;
  v22 = MEMORY[0x1E69E7CC0];
  v54 = v17 + 40;
  do
  {
    v23 = (v21 + 16 * v20);
    v24 = v20;
    while (1)
    {
      if (v24 >= *(v17 + 16))
      {
        __break(1u);
        goto LABEL_26;
      }

      v25 = *(v15 + v19);
      if (*(v25 + 16))
      {
        break;
      }

LABEL_4:
      ++v24;
      v23 += 2;
      if (v18 == v24)
      {
        goto LABEL_17;
      }
    }

    v26 = *(v23 - 1);
    v27 = *v23;

    v28 = sub_1B9F24A34(v26, v27);
    if ((v29 & 1) == 0)
    {

      goto LABEL_4;
    }

    v30 = (*(v25 + 56) + 48 * v28);
    v32 = *v30;
    v31 = v30[1];
    v33 = v30[2];
    v47 = v30[3];
    v48 = v32;
    v34 = v30[5];
    v50 = v30[4];
    v51 = v31;

    v52 = v33;
    v35 = v47;

    v49 = v34;

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v36 = v48;
    }

    else
    {
      v36 = v48;
      v22 = sub_1B9F21540(0, *(v22 + 2) + 1, 1, v22);
    }

    v38 = *(v22 + 2);
    v37 = *(v22 + 3);
    if (v38 >= v37 >> 1)
    {
      v22 = sub_1B9F21540((v37 > 1), v38 + 1, 1, v22);
    }

    v20 = v24 + 1;
    *(v22 + 2) = v38 + 1;
    v39 = &v22[48 * v38];
    v41 = v51;
    v40 = v52;
    *(v39 + 4) = v36;
    *(v39 + 5) = v41;
    *(v39 + 6) = v40;
    *(v39 + 7) = v35;
    v42 = v49;
    *(v39 + 8) = v50;
    *(v39 + 9) = v42;
    v21 = v54;
  }

  while (v53 != v24);
LABEL_17:

  v43 = sub_1BA00A2A0(v22);

  if (v43 >> 62)
  {
LABEL_26:
    v44 = sub_1BA4A7CC8();
  }

  else
  {
    v44 = *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v55)
  {
    sub_1BA1EC154(v44 < 1);
    sub_1BA1EC38C(0);
  }

  else
  {
    if (v44 < 1)
    {
      sub_1BA1EC154(1);
      v45 = 0;
    }

    else
    {
      sub_1BA1EC154(0);
      v45 = 1;
    }

    sub_1BA15C798(1, v45);
  }
}

void sub_1BA15C798(char a1, unsigned __int8 a2)
{
  v4 = a2;
  v5 = *(v2 + OBJC_IVAR____TtC18HealthExperienceUI25SharingOverviewDataSource_sharingWithYouLearnMoreDataSource);
  sub_1BA1EC38C(a1 & 1);
  if (v4 != 2)
  {
    v6 = *(*v5 + 112);
    swift_beginAccess();
    v7 = *(v5 + v6);
    *(v7 + OBJC_IVAR____TtC18HealthExperienceUI33SharingWithYouLearnMoreDataSource_shouldDisplayRequestItem) = a2 & 1;
    if (a2)
    {
      sub_1B9F1B4AC(0, &qword_1EDC5DCA0, &qword_1EDC6AD50);
      v8 = swift_allocObject();
      *(v8 + 16) = xmmword_1BA4B5480;
      v9 = *(v7 + OBJC_IVAR____TtC18HealthExperienceUI33SharingWithYouLearnMoreDataSource_item);
      *(v8 + 56) = type metadata accessor for RequestNewSharingRelationshipItem();
      *(v8 + 64) = sub_1BA15D2B0();
      *(v8 + 32) = v9;

      sub_1BA0EB668(0, v8, 1);
    }

    else
    {

      sub_1BA0EB668(0, MEMORY[0x1E69E7CC0], 1);
    }
  }
}

void sub_1BA15C8E4(char a1)
{
  v2 = v1;
  sub_1B9F12538();
  v36 = *(v4 - 8);
  v37 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v35 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = a1 & 1;
  if (a1)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  v7 = *(v2 + OBJC_IVAR____TtC18HealthExperienceUI25SharingOverviewDataSource_profilesSharingWithYouDataSource);
  v8 = *(*v7 + 512);
  swift_beginAccess();
  v9 = *(v7 + v8);
  *(v9 + 32) = v6;
  v10 = *(v7 + qword_1EDC84BB8);
  v11 = *(v7 + *(*v7 + 520));
  v12 = *(v7 + qword_1EDC64EB0);
  v13 = *(v7 + qword_1EDC64EB0 + 8);
  v14 = *(v7 + qword_1EDC64EB0 + 16);

  v15 = v10;
  v16 = sub_1BA1A217C(v15, v9, v11, v12, v13, v14);

  sub_1BA0E7F10(v16, 1);

  v17 = *(v2 + OBJC_IVAR____TtC18HealthExperienceUI25SharingOverviewDataSource_profilesYouAreSharingWithDataSource);
  v18 = *(*v17 + 512);
  swift_beginAccess();
  v19 = *(v17 + v18);
  *(v19 + 16) = v6;
  v20 = *(v17 + qword_1EDC84BB8);
  LOBYTE(v12) = *(v17 + *(*v17 + 520));
  v21 = *(v17 + qword_1EDC64EB0);
  v22 = *(v17 + qword_1EDC64EB0 + 8);
  LOBYTE(v15) = *(v17 + qword_1EDC64EB0 + 16);

  v23 = v20;
  v24 = sub_1BA15CFD8(v23, v19, v12, v21, v22, v15);

  sub_1BA0E7F10(v24, 1);

  v25 = *(v2 + OBJC_IVAR____TtC18HealthExperienceUI25SharingOverviewDataSource_sharingWithYouLearnMoreDataSource);
  v26 = *(*v25 + 112);
  swift_beginAccess();
  v27 = *(v25 + v26);
  *(v27 + OBJC_IVAR____TtC18HealthExperienceUI33SharingWithYouLearnMoreDataSource_disabledState) = v6;
  *(*(v27 + OBJC_IVAR____TtC18HealthExperienceUI33SharingWithYouLearnMoreDataSource_item) + 96) = v6;

  sub_1BA0E8D84(0);

  if (v38)
  {
    v28 = 0;
  }

  else
  {
    v29 = OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_snapshot;
    swift_beginAccess();
    v30 = v35;
    v31 = v36;
    v32 = v37;
    (*(v36 + 16))(v35, v7 + v29, v37);
    v33 = sub_1BA4A4538();
    (*(v31 + 8))(v30, v32);
    v34 = *(v33 + 16);

    v28 = v34 == 0;
  }

  sub_1BA1EC38C(v28);
}

uint64_t sub_1BA15CC78()
{

  v1 = v0 + OBJC_IVAR____TtC18HealthExperienceUI25SharingOverviewDataSource_healthExperienceStore;

  return __swift_destroy_boxed_opaque_existential_1(v1);
}

uint64_t sub_1BA15CD18()
{

  v1 = OBJC_IVAR____TtC18HealthExperienceUI27CompoundSectionedDataSource_snapshot;
  sub_1B9F12538();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC18HealthExperienceUI25SharingOverviewDataSource_healthExperienceStore);
  return v0;
}

uint64_t sub_1BA15CE48()
{
  sub_1BA15CD18();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SharingOverviewDataSource()
{
  result = qword_1EDC656F0;
  if (!qword_1EDC656F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double sub_1BA15CF5C@<D0>(uint64_t a1@<X0>, void (*a2)(_OWORD *__return_ptr, _OWORD *, uint64_t *)@<X1>, uint64_t *a3@<X3>, uint64_t a4@<X8>)
{
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v18 = *a3;
  v7 = *(a1 + 16);
  v12[0] = *a1;
  v12[1] = v7;
  v13 = v5;
  v14 = v6;
  a2(v15, v12, &v18);
  v8 = v16;
  v9 = v17;
  result = *v15;
  v11 = v15[1];
  *a4 = v15[0];
  *(a4 + 16) = v11;
  *(a4 + 32) = v8;
  *(a4 + 40) = v9;
  return result;
}

uint64_t sub_1BA15CFD8(uint64_t a1, uint64_t a2, char a3, uint64_t (*a4)(void, void), uint64_t a5, char a6)
{
  v39 = a2;
  v10 = sub_1B9F18214();
  v11 = v10;
  if (a6)
  {
    if (a6 == 1)
    {
      MEMORY[0x1EEE9AC00](v10);
      v30 = a4;
      v31 = a5;
      v32 = &v39;
      v12 = sub_1BA2F4270(sub_1BA15D290, v29, v11);
      v34 = 0;

      v14 = 0;
      v15 = *(v12 + 2);
      v16 = MEMORY[0x1E69E7CC0];
LABEL_4:
      v17 = &v12[48 * v14 + 16];
      while (v15 != v14)
      {
        if (v14 >= *(v12 + 2))
        {
          __break(1u);
          return result;
        }

        ++v14;
        v18 = (v17 + 48);
        v19 = *(v17 + 32);
        v17 += 48;
        if (*(v19 + 16))
        {
          v20 = *(v18 - 3);
          v35 = *(v18 - 4);
          v21 = *(v18 - 1);
          v22 = *v18;
          v23 = v18[1];

          result = swift_isUniquelyReferenced_nonNull_native();
          v37 = v21;
          v38 = v16;
          v36 = v22;
          if ((result & 1) == 0)
          {
            result = sub_1B9F277B0(0, *(v16 + 2) + 1, 1);
            v16 = v38;
          }

          v25 = *(v16 + 2);
          v24 = *(v16 + 3);
          if (v25 >= v24 >> 1)
          {
            result = sub_1B9F277B0((v24 > 1), v25 + 1, 1);
            v16 = v38;
          }

          *(v16 + 2) = v25 + 1;
          v26 = &v16[48 * v25];
          *(v26 + 4) = v35;
          *(v26 + 5) = v20;
          v27 = v36;
          v28 = v37;
          *(v26 + 6) = v19;
          *(v26 + 7) = v28;
          *(v26 + 8) = v27;
          *(v26 + 9) = v23;
          goto LABEL_4;
        }
      }
    }

    else
    {
      v16 = a4(v10, &v39);
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](v10);
    v30 = a4;
    v31 = a5;
    v32 = &v39;
    v33 = a3 & 1;
    v16 = sub_1BA2F4270(sub_1BA15D24C, v29, v11);
  }

  return v16;
}

uint64_t sub_1BA15D24C@<X0>(_OWORD *a1@<X0>, void *a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v5 = *(v2 + 32);
  v6 = *(v2 + 40);
  v7 = a1[1];
  v9[0] = *a1;
  v9[1] = v7;
  v9[2] = a1[2];
  return sub_1BA170204(v9, v3, v4, *v5, v6, a2);
}

unint64_t sub_1BA15D2B0()
{
  result = qword_1EBBECB60;
  if (!qword_1EBBECB60)
  {
    type metadata accessor for RequestNewSharingRelationshipItem();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBECB60);
  }

  return result;
}

uint64_t sub_1BA15D308(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = v3;
  sub_1B9F12538();
  v64 = *(v8 - 8);
  v65 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v63 = &v62 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F140B4();
  v70 = *(v10 - 8);
  v71 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v69 = &v62 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1BA4A2A28();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v62 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F0A534(a1, v4 + OBJC_IVAR____TtC18HealthExperienceUI25SharingOverviewDataSource_healthExperienceStore);
  sub_1B9F0A534(a1, v76);
  v72 = a3;
  sub_1B9F0A534(a3, v75);
  v74 = 2;
  type metadata accessor for ProfilesSharingWithYouDataSource();
  swift_allocObject();
  v16 = a2;
  v17 = sub_1BA19FEA8(v76, v16, v75, &v74);
  v68 = OBJC_IVAR____TtC18HealthExperienceUI25SharingOverviewDataSource_profilesSharingWithYouDataSource;
  *(v4 + OBJC_IVAR____TtC18HealthExperienceUI25SharingOverviewDataSource_profilesSharingWithYouDataSource) = v17;
  sub_1B9F0A534(a1, v76);
  v75[0] = 2;
  sub_1B9F53270();
  v18 = v16;
  v19 = sub_1BA4A7068();
  type metadata accessor for ProfilesYouAreSharingWithDataSource();
  swift_allocObject();
  v20 = sub_1BA359C28(v76, v18, v19, v75);

  v67 = OBJC_IVAR____TtC18HealthExperienceUI25SharingOverviewDataSource_profilesYouAreSharingWithDataSource;
  *(v4 + OBJC_IVAR____TtC18HealthExperienceUI25SharingOverviewDataSource_profilesYouAreSharingWithDataSource) = v20;
  sub_1B9F0A534(a1, v76);
  type metadata accessor for SharingWithYouLearnMoreDataSource();
  swift_allocObject();
  v21 = v18;
  v22 = sub_1BA2AFA40(v76, v21);

  sub_1B9F33FDC(0, &qword_1EDC67F20, type metadata accessor for SharingWithYouLearnMoreDataSource);
  swift_allocObject();
  v23 = sub_1BA2AE514(v22, 0);

  v66 = OBJC_IVAR____TtC18HealthExperienceUI25SharingOverviewDataSource_sharingWithYouLearnMoreDataSource;
  *(v4 + OBJC_IVAR____TtC18HealthExperienceUI25SharingOverviewDataSource_sharingWithYouLearnMoreDataSource) = v23;
  sub_1B9F0A534(a1, v76);
  v24 = objc_allocWithZone(type metadata accessor for ProvidersYouAreSharingWithDataSource());
  v25 = v21;
  v26 = sub_1BA25BA64(v76);
  v27 = _s18HealthExperienceUI33FeedItemSuggestedActionDataSourceCyACSo26NSFetchedResultsControllerCy0A8Platform0dE0CGcfc_0(v26);

  __swift_destroy_boxed_opaque_existential_1(v76);
  v28 = OBJC_IVAR____TtC18HealthExperienceUI25SharingOverviewDataSource_providersYouAreSharingWithDataSource;
  *(v4 + OBJC_IVAR____TtC18HealthExperienceUI25SharingOverviewDataSource_providersYouAreSharingWithDataSource) = v27;
  sub_1B9F0A534(a1, v76);
  v29 = objc_allocWithZone(type metadata accessor for SharingOnboardingDataSource());
  v29[qword_1EDC84BB0] = 0;
  sub_1BA4A3268();
  v30 = SuggestedAction.fetchRequest.getter();
  (*(v13 + 8))(v15, v12);
  __swift_project_boxed_opaque_existential_1(v76, v76[3]);
  v31 = v30;
  v32 = sub_1BA4A1B68();
  v33 = [objc_allocWithZone(MEMORY[0x1E695D600]) initWithFetchRequest:v31 managedObjectContext:v32 sectionNameKeyPath:0 cacheName:0];

  v34 = _s18HealthExperienceUI33FeedItemSuggestedActionDataSourceCyACSo26NSFetchedResultsControllerCy0A8Platform0dE0CGcfc_0(v33);
  __swift_destroy_boxed_opaque_existential_1(v76);
  sub_1B9F33FDC(0, qword_1EDC67F30, type metadata accessor for SharingOnboardingDataSource);
  swift_allocObject();
  v35 = sub_1BA2AE718(v34, 0);

  v36 = OBJC_IVAR____TtC18HealthExperienceUI25SharingOverviewDataSource_onboardingDataSource;
  *(v4 + OBJC_IVAR____TtC18HealthExperienceUI25SharingOverviewDataSource_onboardingDataSource) = v35;
  type metadata accessor for AppsAndReSearchSectionDataSource();
  swift_allocObject();
  v37 = v25;
  v38 = sub_1BA4172BC(v37);

  v39 = OBJC_IVAR____TtC18HealthExperienceUI25SharingOverviewDataSource_appsAndReSearchSectionDataSource;
  *(v4 + OBJC_IVAR____TtC18HealthExperienceUI25SharingOverviewDataSource_appsAndReSearchSectionDataSource) = v38;
  v73 = a1;
  sub_1B9F0A534(a1, v76);
  v40 = objc_allocWithZone(type metadata accessor for SharingCloudErrorDataSource());
  v41 = v37;
  v42 = sub_1BA290CC4(v41, v76);

  *(v4 + OBJC_IVAR____TtC18HealthExperienceUI25SharingOverviewDataSource_errorDataSource) = v42;
  sub_1B9F1B4AC(0, &qword_1EDC5DC70, &qword_1EDC67F10);
  v43 = swift_allocObject();
  *(v43 + 16) = xmmword_1BA4C1050;
  *(v43 + 32) = v42;
  *(v43 + 40) = &protocol witness table for FetchedResultsControllerDataSource<A>;
  v44 = v67;
  *(v43 + 48) = *(v4 + v68);
  *(v43 + 56) = &protocol witness table for MutableArrayDataSource;
  *(v43 + 64) = *(v4 + v36);
  *(v43 + 72) = &protocol witness table for HideableDataSource<A>;
  *(v43 + 80) = *(v4 + v44);
  *(v43 + 88) = &protocol witness table for MutableArrayDataSource;
  v45 = *(v4 + v28);
  *(v43 + 96) = v45;
  *(v43 + 104) = &protocol witness table for FetchedResultsControllerDataSource<A>;
  *(v43 + 112) = *(v4 + v39);
  *(v43 + 120) = &protocol witness table for MutableArrayDataSource;
  *(v43 + 128) = *(v4 + v66);
  *(v43 + 136) = &protocol witness table for HideableDataSource<A>;
  v46 = v42;

  v47 = v45;

  v48 = CompoundSectionedDataSource.init(_:)(v43);

  sub_1BA15C358();
  if (qword_1EDC63A50 != -1)
  {
    swift_once();
  }

  v49 = v71;
  v50 = __swift_project_value_buffer(v71, qword_1EDC63A58);
  v51 = v69;
  v52 = v70;
  (*(v70 + 16))(v69, v50, v49);
  sub_1BA4A1CA8();
  (*(v52 + 8))(v51, v49);
  if ((v76[0] & 1) == 0)
  {
    v53 = *(v48 + OBJC_IVAR____TtC18HealthExperienceUI25SharingOverviewDataSource_errorDataSource);
    v54 = qword_1EDC84AC8;
    swift_beginAccess();
    v55 = v64;
    v56 = v53 + v54;
    v57 = v63;
    v58 = v65;
    (*(v64 + 16))(v63, v56, v65);
    v59 = sub_1BA4A4538();
    (*(v55 + 8))(v57, v58);
    v60 = *(v59 + 16);

    sub_1BA15C8E4(v60 != 0);
  }

  __swift_destroy_boxed_opaque_existential_1(v72);
  __swift_destroy_boxed_opaque_existential_1(v73);
  return v48;
}

uint64_t DataTypeDetailConfiguration.FavoriteToggleComponent.init(hkType:headerTitle:contentInsetsReference:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = result;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  return result;
}

uint64_t DataTypeDetailConfiguration.FavoriteToggleComponent.headerTitle.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t DataTypeDetailConfiguration.FavoriteToggleComponent.headerTitle.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t static DataTypeDetailConfiguration.FavoriteToggleComponent.defaultHeaderTitle.getter()
{
  type metadata accessor for DataTypeDetailViewController();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_1BA4A1318();

  return v2;
}

uint64_t DataTypeDetailConfiguration.FavoriteToggleComponent.makeDataSource(context:)(uint64_t a1)
{
  if ((*(a1 + 48) & 0xFE) == 2)
  {
    type metadata accessor for EmptyDataSource();
    swift_allocObject();
    v2 = EmptyDataSource.init()();
    sub_1BA15E1D0();
    v3 = swift_allocObject();
    v4 = *(v2 + 24);
    *(v3 + 16) = *(v2 + 16);
    *(v3 + 24) = v4;
    *(v3 + 32) = v2;
    *(v3 + 40) = 0;
  }

  else
  {
    v5 = *(v1 + 16);
    v6 = *(v1 + 24);
    v8 = *v1;
    v7 = *(v1 + 8);
    __swift_project_boxed_opaque_existential_1(a1, *(a1 + 24));
    v10 = sub_1BA4A1B68();
    v11 = *(a1 + 56);
    sub_1B9F0A534(a1 + 64, v35);
    v12 = *(a1 + 40);
    sub_1BA15E094();
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_1BA4B5480;

    *(v13 + 32) = sub_1BA4A6F38();
    type metadata accessor for DataTypeDetailFavoritesDataSource(0);
    v14 = swift_allocObject();
    *(v14 + OBJC_IVAR____TtC18HealthExperienceUI33DataTypeDetailFavoritesDataSource_favoriteChangedSink) = 0;
    *(v14 + OBJC_IVAR____TtC18HealthExperienceUI33DataTypeDetailFavoritesDataSource_objectType) = v8;
    *(v14 + OBJC_IVAR____TtC18HealthExperienceUI33DataTypeDetailFavoritesDataSource_healthStore) = v12;
    v15 = (v14 + OBJC_IVAR____TtC18HealthExperienceUI33DataTypeDetailFavoritesDataSource_headerTitle);
    *v15 = v7;
    v15[1] = v5;
    *(v14 + OBJC_IVAR____TtC18HealthExperienceUI33DataTypeDetailFavoritesDataSource_contentInsetsReference) = v6;
    sub_1B9F0A534(v35, v34);
    type metadata accessor for FavoritesToggleDataSource(0);
    swift_allocObject();
    swift_bridgeObjectRetain_n();
    v16 = v8;

    v17 = v16;
    v18 = v12;
    v19 = v10;
    v20 = sub_1BA2E8670(v17, v19, v11, v34, v13, v7, v5, 0, v6);
    v21 = OBJC_IVAR____TtC18HealthExperienceUI33DataTypeDetailFavoritesDataSource_favoritesToggleDataSource;
    *(v14 + OBJC_IVAR____TtC18HealthExperienceUI33DataTypeDetailFavoritesDataSource_favoritesToggleDataSource) = v20;
    type metadata accessor for MutableArrayDataSource();
    sub_1B9F320F0();
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1BA4B5480;
    *(inited + 32) = MEMORY[0x1E69E7CC0];
    v23 = MutableArrayDataSource.__allocating_init(_:)(inited);
    *(v14 + OBJC_IVAR____TtC18HealthExperienceUI33DataTypeDetailFavoritesDataSource_favoritesDescriptionDataSource) = v23;
    sub_1B9F1DEA0();
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_1BA4B5460;
    *(v24 + 32) = *(v14 + v21);
    *(v24 + 40) = &protocol witness table for MutableArrayDataSource;
    v25 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v26 = swift_allocObject();
    *(v26 + 16) = v6;
    *(v26 + 24) = v25;
    sub_1BA15E128(0);
    v27 = swift_allocObject();
    *(v27 + 16) = v23;
    v29 = *(v23 + OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_identifier);
    v28 = *(v23 + OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_identifier + 8);
    *(v27 + 24) = v29;
    *(v27 + 32) = v28;
    *(v27 + 40) = 1;
    *(v27 + 48) = sub_1BA15E10C;
    *(v27 + 56) = v26;
    sub_1BA15E164(0, qword_1EDC69078, sub_1BA15E128, &protocol witness table for DataSourceWithLayout<A>, type metadata accessor for CellRegistering);
    v30 = swift_allocObject();
    v30[4] = v27;
    v30[5] = sub_1BA2E7D80;
    v30[6] = 0;
    v30[2] = v29;
    v30[3] = v28;
    *(v24 + 48) = v30;
    *(v24 + 56) = &protocol witness table for CellRegistering<A>;
    swift_bridgeObjectRetain_n();

    v31 = CompoundSectionedDataSource.init(_:)(v24);

    sub_1BA2E8038();

    __swift_destroy_boxed_opaque_existential_1(v35);
    sub_1BA15E1D0();
    v3 = swift_allocObject();
    v32 = *(v31 + OBJC_IVAR____TtC18HealthExperienceUI27CompoundSectionedDataSource_identifier + 8);
    *(v3 + 16) = *(v31 + OBJC_IVAR____TtC18HealthExperienceUI27CompoundSectionedDataSource_identifier);
    *(v3 + 24) = v32;
    *(v3 + 32) = v31;
    *(v3 + 40) = 1;
  }

  return v3;
}

void sub_1BA15E094()
{
  if (!qword_1EDC6B450)
  {
    v0 = sub_1BA4A82E8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC6B450);
    }
  }
}

void sub_1BA15E164(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

void sub_1BA15E1D0()
{
  if (!qword_1EDC66D00)
  {
    type metadata accessor for EmptyDataSource();
    type metadata accessor for DataTypeDetailFavoritesDataSource(255);
    v0 = type metadata accessor for _ConditionalDataSource();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC66D00);
    }
  }
}

void sub_1BA15E280(void *a1, uint64_t a2)
{
  v20 = *v2;
  v4 = swift_allocObject();
  swift_weakInit();
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = a1;

  v6 = a1;
  v7 = sub_1BA4A6758();
  v27 = sub_1BA15F71C;
  v28 = v5;
  aBlock = MEMORY[0x1E69E9820];
  v24 = 1107296256;
  v25 = sub_1BA0B06D4;
  v26 = &block_descriptor_36;
  v8 = _Block_copy(&aBlock);

  v9 = objc_opt_self();
  v10 = [v9 actionWithTitle:v7 style:2 handler:v8];
  _Block_release(v8);

  v11 = swift_allocObject();
  swift_weakInit();
  v12 = swift_allocObject();
  v12[2] = v11;
  v12[3] = v6;
  v12[4] = v20;
  v21 = v6;

  v13 = sub_1BA4A6758();
  v27 = sub_1BA15F770;
  v28 = v12;
  aBlock = MEMORY[0x1E69E9820];
  v24 = 1107296256;
  v25 = sub_1BA0B06D4;
  v26 = &block_descriptor_12_1;
  v14 = _Block_copy(&aBlock);

  v15 = [v9 actionWithTitle:v13 style:1 handler:v14];
  _Block_release(v14);

  sub_1BA15E82C();
  v16 = sub_1BA4A6758();
  v17 = sub_1BA4A6758();

  v18 = [objc_opt_self() alertControllerWithTitle:v16 message:v17 preferredStyle:0];

  v19 = [v18 popoverPresentationController];
  [v19 setSourceItem_];

  [v18 addAction_];
  [v18 addAction_];
  [v21 presentViewController:v18 animated:1 completion:0];
}

uint64_t sub_1BA15E600(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1BA15E954(a3);
  }

  return result;
}

uint64_t sub_1BA15E660()
{
  v0 = sub_1BA4A3EA8();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v13[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA4A3E28();
  v4 = sub_1BA4A3E88();
  v5 = sub_1BA4A6FC8();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v13[0] = v7;
    *v6 = 136315138;
    v8 = sub_1BA4A85D8();
    v10 = sub_1B9F0B82C(v8, v9, v13);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_1B9F07000, v4, v5, "[%s] User chose not to end sharing", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x1BFAF43A0](v7, -1, -1);
    MEMORY[0x1BFAF43A0](v6, -1, -1);
  }

  (*(v1 + 8))(v3, v0);
  swift_beginAccess();
  swift_weakLoadStrong();
}

uint64_t sub_1BA15E82C()
{
  sub_1BA071040(v0 + 24, v7);
  if (v8)
  {
    __swift_project_boxed_opaque_existential_1(v7, v8);
    v1 = sub_1BA4A2AD8();
    v3 = v2;
    __swift_destroy_boxed_opaque_existential_1(v7);
    sub_1B9F1B310(0, &qword_1EDC6B410, &qword_1EDC6B3D0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_1BA4B5480;
    *(v4 + 56) = MEMORY[0x1E69E6158];
    *(v4 + 64) = sub_1B9F1BE20();
    *(v4 + 32) = v1;
    *(v4 + 40) = v3;
    v5 = sub_1BA4A6768();
  }

  else
  {
    sub_1BA071124(v7);
    v5 = *(v0 + 96);
  }

  return v5;
}

uint64_t sub_1BA15E954(uint64_t a1)
{
  v2 = v1;
  v86 = a1;
  v85 = *v1;
  v84 = sub_1BA4A1798();
  v83 = *(v84 - 8);
  MEMORY[0x1EEE9AC00](v84);
  v82 = &v78 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = sub_1BA4A3EA8();
  v88 = *(v89 - 8);
  MEMORY[0x1EEE9AC00](v89);
  v87 = &v78 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v78 - v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v78 - v9;
  sub_1BA15F66C(0, &qword_1EBBEA318, MEMORY[0x1E69A3430], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v78 - v12;
  v14 = sub_1BA4A33C8();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v78 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for EndSharingRelationshipNotificationUserInfo();
  MEMORY[0x1EEE9AC00](v18);
  v81 = &v78 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v78 - v21;
  v24 = MEMORY[0x1EEE9AC00](v23);
  v26 = &v78 - v25;
  v90 = v2;
  v27 = v2[2];
  v28 = [v27 type];
  if (v28 == 1)
  {
    sub_1BA071040((v90 + 3), &v91);
    if (v93)
    {
      sub_1B9F0D950(0, &qword_1EDC6E1F0);
      v60 = swift_dynamicCast();
      (*(v15 + 56))(v13, v60 ^ 1u, 1, v14);
      if ((*(v15 + 48))(v13, 1, v14) != 1)
      {
        (*(v15 + 32))(v17, v13, v14);
        sub_1BA4A3358();
        (*(v15 + 8))(v17, v14);
        v29 = 1;
        goto LABEL_5;
      }
    }

    else
    {
      sub_1BA071124(&v91);
      (*(v15 + 56))(v13, 1, 1, v14);
    }

    sub_1BA013068(v13);
    sub_1BA4A3E28();
    v71 = sub_1BA4A3E88();
    v72 = sub_1BA4A6FA8();
    if (os_log_type_enabled(v71, v72))
    {
      v73 = swift_slowAlloc();
      v74 = swift_slowAlloc();
      v91 = v74;
      *v73 = 136315138;
      v75 = sub_1BA4A85D8();
      v77 = sub_1B9F0B82C(v75, v76, &v91);

      *(v73 + 4) = v77;
      _os_log_impl(&dword_1B9F07000, v71, v72, "[%s] Unable to cast as SharingEntryProfileInformation", v73, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v74);
      MEMORY[0x1BFAF43A0](v74, -1, -1);
      MEMORY[0x1BFAF43A0](v73, -1, -1);
    }

    return (*(v88 + 8))(v10, v89);
  }

  else
  {
    v29 = v28;
    if (v28 == 2 || v28 == 3)
    {
      v30 = [v27 identifier];
      sub_1BA4A1778();

LABEL_5:
      *&v26[*(v18 + 20)] = v29;
      v31 = v87;
      sub_1BA4A3E28();
      sub_1BA15F5AC(v26, v22);
      v32 = sub_1BA4A3E88();
      v33 = sub_1BA4A6FC8();
      if (os_log_type_enabled(v32, v33))
      {
        v79 = v29;
        v80 = v26;
        v34 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        v91 = v35;
        *v34 = 136315650;
        v36 = sub_1BA4A85D8();
        v38 = sub_1B9F0B82C(v36, v37, &v91);

        *(v34 + 4) = v38;
        *(v34 + 12) = 2080;
        v39 = v81;
        sub_1BA15F5AC(v22, v81);
        v40 = v83;
        v41 = v82;
        v42 = v84;
        (*(v83 + 32))(v82, v39, v84);
        sub_1B9FD9EDC();
        v43 = sub_1BA4A82D8();
        v45 = v44;
        (*(v40 + 8))(v41, v42);
        sub_1BA15F610(v22);
        v46 = sub_1B9F0B82C(v43, v45, &v91);

        *(v34 + 14) = v46;
        *(v34 + 22) = 2080;
        if (qword_1EDC5E438 != -1)
        {
          swift_once();
        }

        v47 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
        v49 = sub_1B9F0B82C(v47, v48, &v91);

        *(v34 + 24) = v49;
        _os_log_impl(&dword_1B9F07000, v32, v33, "[%s] User confirmed to end sharing with %s. Posting notification for %s for this user.", v34, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1BFAF43A0](v35, -1, -1);
        MEMORY[0x1BFAF43A0](v34, -1, -1);

        (*(v88 + 8))(v87, v89);
        v26 = v80;
        v29 = v79;
      }

      else
      {

        sub_1BA15F610(v22);
        (*(v88 + 8))(v31, v89);
      }

      if (qword_1EDC5E438 != -1)
      {
        swift_once();
      }

      v50 = qword_1EDC5E440;
      sub_1BA15F66C(0, &qword_1EDC6B418, sub_1BA1284D4, MEMORY[0x1E69E6F90]);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1BA4B5460;
      v91 = 0x55656C69666F7270;
      v92 = 0xEB00000000444955;
      v52 = v50;
      v53 = MEMORY[0x1E69E6158];
      sub_1BA4A7D58();
      v54 = sub_1BA4A1748();
      *(inited + 96) = v53;
      *(inited + 72) = v54;
      *(inited + 80) = v55;
      v91 = 0x54656C69666F7270;
      v92 = 0xEB00000000657079;
      sub_1BA4A7D58();
      *(inited + 168) = MEMORY[0x1E69E6530];
      *(inited + 144) = v29;
      sub_1B9FDB524(inited);
      swift_setDeallocating();
      sub_1BA1284D4();
      swift_arrayDestroy();
      v56 = objc_allocWithZone(sub_1BA4A34C8());
      v57 = sub_1BA4A34B8();
      sub_1BA15F6D0();
      v58 = sub_1BA4A7198();
      [v58 addOperation_];

      (v90[18])(v86);
      return sub_1BA15F610(v26);
    }

    sub_1BA4A3E28();

    v61 = sub_1BA4A3E88();
    v62 = sub_1BA4A6FC8();

    if (os_log_type_enabled(v61, v62))
    {
      v63 = swift_slowAlloc();
      v64 = swift_slowAlloc();
      v91 = v64;
      *v63 = 136315394;
      v65 = sub_1BA4A85D8();
      v67 = sub_1B9F0B82C(v65, v66, &v91);

      *(v63 + 4) = v67;
      *(v63 + 12) = 2080;
      v94 = [v27 type];
      type metadata accessor for HKProfileType(0);
      v68 = sub_1BA4A6808();
      v70 = sub_1B9F0B82C(v68, v69, &v91);

      *(v63 + 14) = v70;
      _os_log_impl(&dword_1B9F07000, v61, v62, "[%s] profile type %s not supported for ending sharing relationship", v63, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v64, -1, -1);
      MEMORY[0x1BFAF43A0](v63, -1, -1);
    }

    return (*(v88 + 8))(v7, v89);
  }
}

uint64_t sub_1BA15F4DC()
{
  sub_1BA071124(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t sub_1BA15F5AC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EndSharingRelationshipNotificationUserInfo();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BA15F610(uint64_t a1)
{
  v2 = type metadata accessor for EndSharingRelationshipNotificationUserInfo();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1BA15F66C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_1BA15F6D0()
{
  result = qword_1EDC6B5F0;
  if (!qword_1EDC6B5F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDC6B5F0);
  }

  return result;
}

uint64_t objectdestroy_4Tm(uint64_t a1)
{

  return MEMORY[0x1EEE6BDD0](v1, a1, 7);
}

char *sub_1BA15F784(double a1, double a2, double a3, double a4)
{
  v9 = &v4[OBJC_IVAR____TtC18HealthExperienceUI40SummarySharingContactSelectionSplashView_openContactsHandler];
  *v9 = 0;
  *(v9 + 1) = 0;
  if (qword_1EBBE83F8 != -1)
  {
    swift_once();
  }

  v10 = qword_1EBC095A8;
  v11 = sub_1BA4A6758();
  v12 = [objc_opt_self() imageNamed:v11 inBundle:v10];

  v13 = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) initWithImage_];
  *&v4[OBJC_IVAR____TtC18HealthExperienceUI40SummarySharingContactSelectionSplashView_imageView] = v13;
  v14 = [objc_allocWithZone(MEMORY[0x1E69DD168]) initWithFrame_];
  *&v4[OBJC_IVAR____TtC18HealthExperienceUI40SummarySharingContactSelectionSplashView_textView] = v14;
  v86.receiver = v4;
  v86.super_class = type metadata accessor for SummarySharingContactSelectionSplashView();
  v15 = objc_msgSendSuper2(&v86, sel_initWithFrame_, a1, a2, a3, a4);
  v16 = OBJC_IVAR____TtC18HealthExperienceUI40SummarySharingContactSelectionSplashView_imageView;
  v17 = *&v15[OBJC_IVAR____TtC18HealthExperienceUI40SummarySharingContactSelectionSplashView_imageView];
  v18 = v15;
  [v17 setTranslatesAutoresizingMaskIntoConstraints_];
  [*&v15[v16] setAdjustsImageSizeForAccessibilityContentSizeCategory_];
  v83 = v16;
  v84 = v15;
  v19 = *&v15[v16];
  v20 = v18;
  [v20 addSubview_];
  v21 = OBJC_IVAR____TtC18HealthExperienceUI40SummarySharingContactSelectionSplashView_textView;
  [*&v20[OBJC_IVAR____TtC18HealthExperienceUI40SummarySharingContactSelectionSplashView_textView] setTranslatesAutoresizingMaskIntoConstraints_];
  [*&v20[v21] setAdjustsFontForContentSizeCategory_];
  [*&v20[v21] setBackgroundColor_];
  [*&v20[v21] setScrollEnabled_];
  [*&v20[v21] _setInteractiveTextSelectionDisabled_];
  [*&v20[v21] setEditable_];
  [*&v20[v21] setSelectable_];
  v22 = *&v20[v21];
  [v22 textContainerInset];
  [v22 setTextContainerInset_];

  [*&v20[v21] setAccessibilityTraits_];
  [*&v20[v21] setTextAlignment_];
  [*&v20[v21] setDelegate_];
  v85 = v21;
  [v20 addSubview_];
  v23 = [objc_allocWithZone(MEMORY[0x1E69DB7C8]) init];
  [v23 setAlignment_];
  LODWORD(v24) = 0.5;
  [v23 setHyphenationFactor_];
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  v25 = sub_1BA4A1318();
  v27 = v26;
  sub_1BA4A1318();
  sub_1B9F1B50C(0, &qword_1EDC6B410, sub_1BA06FAE4);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_1BA4B5480;
  *(v28 + 56) = MEMORY[0x1E69E6158];
  *(v28 + 64) = sub_1B9F1BE20();
  *(v28 + 32) = v25;
  *(v28 + 40) = v27;

  sub_1BA4A6768();

  sub_1B9F1B50C(0, &qword_1EDC5DBB0, sub_1B9FE9628);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BA4B9FD0;
  v30 = *MEMORY[0x1E69DB648];
  *(inited + 32) = *MEMORY[0x1E69DB648];
  v31 = objc_opt_self();
  v32 = *MEMORY[0x1E69DDCF8];
  v33 = v30;
  v34 = [v31 preferredFontForTextStyle_];
  v35 = sub_1B9F0ADF8(0, &unk_1EDC5E210);
  *(inited + 40) = v34;
  v36 = *MEMORY[0x1E69DB650];
  *(inited + 64) = v35;
  *(inited + 72) = v36;
  v37 = objc_opt_self();
  v38 = v36;
  v39 = [v37 secondaryLabelColor];
  v40 = sub_1B9F0ADF8(0, &qword_1EDC6E380);
  *(inited + 80) = v39;
  v41 = *MEMORY[0x1E69DB688];
  *(inited + 104) = v40;
  *(inited + 112) = v41;
  *(inited + 144) = sub_1B9F0ADF8(0, &qword_1EDC5E340);
  *(inited + 120) = v23;
  v42 = v41;
  v82 = v23;
  sub_1B9FDB1C4(inited);
  swift_setDeallocating();
  sub_1B9FE9628();
  swift_arrayDestroy();
  v43 = objc_allocWithZone(MEMORY[0x1E696AD40]);
  v44 = sub_1BA4A6758();
  type metadata accessor for Key(0);
  sub_1BA0262E4();
  v45 = sub_1BA4A6618();

  v46 = [v43 initWithString:v44 attributes:v45];

  v47 = objc_allocWithZone(MEMORY[0x1E696AEC0]);
  v48 = sub_1BA4A6758();

  v49 = [v47 initWithString_];

  v50 = sub_1BA4A6758();

  v51 = [v49 rangeOfString_];
  v53 = v52;

  v54 = *MEMORY[0x1E69DB670];
  v55 = sub_1BA4A6758();
  [v46 addAttribute:v54 value:v55 range:{v51, v53}];

  [*&v20[v85] setAttributedText_];
  v81 = objc_opt_self();
  sub_1B9F109F8();
  v56 = swift_allocObject();
  *(v56 + 16) = xmmword_1BA4BBC90;
  v57 = [*&v84[v83] topAnchor];
  v58 = [v20 topAnchor];

  v59 = [v57 constraintEqualToAnchor_];
  *(v56 + 32) = v59;
  v60 = [*&v84[v83] centerXAnchor];
  v61 = [v20 centerXAnchor];

  v62 = [v60 constraintEqualToAnchor_];
  *(v56 + 40) = v62;
  v63 = [*&v84[v83] widthAnchor];
  v64 = [v63 constraintEqualToConstant_];

  *(v56 + 48) = v64;
  v65 = [*&v84[v83] heightAnchor];
  v66 = [v65 constraintEqualToConstant_];

  *(v56 + 56) = v66;
  v67 = [*&v20[v85] topAnchor];
  v68 = [*&v84[v83] bottomAnchor];
  v69 = [v67 constraintEqualToAnchor:v68 constant:20.0];

  *(v56 + 64) = v69;
  v70 = [*&v20[v85] leadingAnchor];
  v71 = [v20 leadingAnchor];

  v72 = [v70 constraintEqualToAnchor:v71 constant:24.0];
  *(v56 + 72) = v72;
  v73 = [*&v20[v85] trailingAnchor];
  v74 = [v20 trailingAnchor];

  v75 = [v73 constraintEqualToAnchor:v74 constant:-24.0];
  *(v56 + 80) = v75;
  v76 = [*&v20[v85] bottomAnchor];
  v77 = [v20 bottomAnchor];

  v78 = [v76 constraintEqualToAnchor_];
  *(v56 + 88) = v78;
  sub_1B9F0ADF8(0, &qword_1EDC6B570);
  v79 = sub_1BA4A6AE8();

  [v81 activateConstraints_];

  return v20;
}

id sub_1BA16043C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SummarySharingContactSelectionSplashView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1BA1604F4()
{
  type metadata accessor for SummarySharingOnboardingContactPickerViewController();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  qword_1EBC095A8 = result;
  return result;
}

id sub_1BA16054C()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI31ActivityIndicatorViewController____lazy_storage___activityIndicatorView;
  v2 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI31ActivityIndicatorViewController____lazy_storage___activityIndicatorView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI31ActivityIndicatorViewController____lazy_storage___activityIndicatorView);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle_];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_1BA1605C4()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI31ActivityIndicatorViewController____lazy_storage___cancelBarButtonItem;
  v2 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI31ActivityIndicatorViewController____lazy_storage___cancelBarButtonItem);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI31ActivityIndicatorViewController____lazy_storage___cancelBarButtonItem);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:1 target:v0 action:sel_didTapCancel_];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

void sub_1BA16064C()
{
  v9.receiver = v0;
  v9.super_class = type metadata accessor for ActivityIndicatorViewController();
  objc_msgSendSuper2(&v9, sel_viewDidLoad);
  v1 = [v0 view];
  if (v1)
  {
    v2 = v1;
    v3 = sub_1BA16054C();
    [v2 addSubview_];

    sub_1BA1607DC();
    [*&v0[OBJC_IVAR____TtC18HealthExperienceUI31ActivityIndicatorViewController____lazy_storage___activityIndicatorView] startAnimating];
    v4 = [v0 view];
    if (v4)
    {
      v5 = v4;
      v6 = [objc_opt_self() systemBackgroundColor];
      [v5 setBackgroundColor_];

      v7 = [v0 navigationItem];
      v8 = sub_1BA1605C4();
      [v7 setRightBarButtonItem_];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_1BA1607DC()
{
  v1 = sub_1BA16054C();
  [v1 setTranslatesAutoresizingMaskIntoConstraints_];

  sub_1B9F109F8();
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1BA4B7510;
  v3 = OBJC_IVAR____TtC18HealthExperienceUI31ActivityIndicatorViewController____lazy_storage___activityIndicatorView;
  v4 = [*&v0[OBJC_IVAR____TtC18HealthExperienceUI31ActivityIndicatorViewController____lazy_storage___activityIndicatorView] centerXAnchor];
  v5 = [v0 view];
  if (!v5)
  {
    __break(1u);
    goto LABEL_7;
  }

  v6 = v5;
  v7 = [v5 centerXAnchor];

  v8 = [v4 constraintEqualToAnchor_];
  *(v2 + 32) = v8;
  v9 = [*&v0[v3] centerYAnchor];
  v10 = [v0 view];
  if (!v10)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v11 = v10;
  v12 = objc_opt_self();
  v13 = [v11 centerYAnchor];

  v14 = [v9 constraintEqualToAnchor_];
  *(v2 + 40) = v14;
  sub_1B9F740B0();
  v15 = sub_1BA4A6AE8();

  [v12 activateConstraints_];
}

id sub_1BA160B90()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ActivityIndicatorViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t EmbeddedViewDataSourceItem.uniqueIdentifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t EmbeddedViewDataSourceItem.uniqueIdentifier.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t EmbeddedViewDataSourceItem.reuseIdentifier.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

void __swiftcall EmbeddedViewDataSourceItem.init(reuseIdentifier:embeddedView:)(HealthExperienceUI::EmbeddedViewDataSourceItem *__return_ptr retstr, Swift::String reuseIdentifier, UIView *embeddedView)
{
  object = reuseIdentifier._object;
  countAndFlagsBits = reuseIdentifier._countAndFlagsBits;
  v7 = sub_1BA4A1798();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  retstr->reuseIdentifier._countAndFlagsBits = countAndFlagsBits;
  retstr->reuseIdentifier._object = object;
  retstr->embeddedView.super.super.isa = embeddedView;
  v14 = 0xD00000000000001BLL;
  v15 = 0x80000001BA4EE490;

  v11 = embeddedView;
  MEMORY[0x1BFAF1350](countAndFlagsBits, object);

  MEMORY[0x1BFAF1350](95, 0xE100000000000000);
  sub_1BA4A1788();
  sub_1B9FD9EDC();
  v12 = sub_1BA4A82D8();
  MEMORY[0x1BFAF1350](v12);

  (*(v8 + 8))(v10, v7);

  v13 = v15;
  retstr->uniqueIdentifier._countAndFlagsBits = v14;
  retstr->uniqueIdentifier._object = v13;
}

uint64_t static EmbeddedViewDataSourceItem.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (!v6 && (sub_1BA4A8338() & 1) == 0)
  {
    return 0;
  }

  v7 = v2 == v4 && v3 == v5;
  if (!v7 && (sub_1BA4A8338() & 1) == 0)
  {
    return 0;
  }

  sub_1BA0004FC();
  return sub_1BA4A7798() & 1;
}

uint64_t EmbeddedViewDataSourceItem.hash(into:)()
{
  sub_1BA4A68C8();
  sub_1BA4A68C8();
  return sub_1BA4A77A8();
}

uint64_t EmbeddedViewDataSourceItem.hashValue.getter()
{
  sub_1BA4A8488();
  sub_1BA4A68C8();
  sub_1BA4A68C8();
  sub_1BA4A77A8();
  return sub_1BA4A84D8();
}

uint64_t sub_1BA160FE4()
{
  sub_1BA4A8488();
  sub_1BA4A68C8();
  sub_1BA4A68C8();
  sub_1BA4A77A8();
  return sub_1BA4A84D8();
}

uint64_t sub_1BA161060()
{
  sub_1BA4A68C8();
  sub_1BA4A68C8();
  return sub_1BA4A77A8();
}

uint64_t sub_1BA1610B0()
{
  sub_1BA4A8488();
  sub_1BA4A68C8();
  sub_1BA4A68C8();
  sub_1BA4A77A8();
  return sub_1BA4A84D8();
}

uint64_t sub_1BA161128(uint64_t a1)
{
  v2 = sub_1BA1624C0();

  return MEMORY[0x1EEE0DA58](a1, v2);
}

uint64_t sub_1BA161174(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (!v6 && (sub_1BA4A8338() & 1) == 0)
  {
    return 0;
  }

  v7 = v2 == v4 && v3 == v5;
  if (!v7 && (sub_1BA4A8338() & 1) == 0)
  {
    return 0;
  }

  sub_1BA0004FC();
  return sub_1BA4A7798() & 1;
}

uint64_t EmbeddedViewControllerDataSourceItem.uniqueIdentifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t EmbeddedViewControllerDataSourceItem.uniqueIdentifier.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t EmbeddedViewControllerDataSourceItem.reuseIdentifier.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

void EmbeddedViewControllerDataSourceItem.init(reuseIdentifier:parentViewController:embeddedViewController:)(unint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X2>, void *a4@<X3>, unint64_t *a5@<X8>)
{
  v10 = sub_1BA4A1798();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  a5[2] = a1;
  a5[3] = a2;
  a5[4] = a3;
  a5[5] = a4;
  v19 = 0xD000000000000025;
  v20 = 0x80000001BA4EE4B0;

  v14 = a3;
  v15 = a4;
  MEMORY[0x1BFAF1350](a1, a2);

  MEMORY[0x1BFAF1350](95, 0xE100000000000000);
  sub_1BA4A1788();
  sub_1B9FD9EDC();
  v16 = sub_1BA4A82D8();
  MEMORY[0x1BFAF1350](v16);

  (*(v11 + 8))(v13, v10);

  v17 = v19;
  v18 = v20;

  *a5 = v17;
  a5[1] = v18;
}

uint64_t EmbeddedViewControllerDataSourceItem.hash(into:)()
{
  sub_1BA4A68C8();
  sub_1BA4A68C8();
  sub_1BA4A77A8();
  return sub_1BA4A77A8();
}

uint64_t EmbeddedViewControllerDataSourceItem.hashValue.getter()
{
  sub_1BA4A8488();
  sub_1BA4A68C8();
  sub_1BA4A68C8();
  sub_1BA4A77A8();
  sub_1BA4A77A8();
  return sub_1BA4A84D8();
}

uint64_t sub_1BA161578()
{
  sub_1BA4A8488();
  sub_1BA4A68C8();
  sub_1BA4A68C8();
  sub_1BA4A77A8();
  sub_1BA4A77A8();
  return sub_1BA4A84D8();
}

uint64_t sub_1BA16160C()
{
  sub_1BA4A68C8();
  sub_1BA4A68C8();
  sub_1BA4A77A8();
  return sub_1BA4A77A8();
}

uint64_t sub_1BA161674()
{
  sub_1BA4A8488();
  sub_1BA4A68C8();
  sub_1BA4A68C8();
  sub_1BA4A77A8();
  sub_1BA4A77A8();
  return sub_1BA4A84D8();
}

uint64_t sub_1BA161704(uint64_t a1)
{
  v2 = sub_1BA16246C();

  return MEMORY[0x1EEE0DA58](a1, v2);
}

uint64_t sub_1BA161754(uint64_t a1, uint64_t *a2)
{
  sub_1B9F68124(a1, v6);
  v3 = *a2;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI25EmbeddedViewTableViewCell_item;
  swift_beginAccess();
  sub_1B9F63E74(v6, v3 + v4);
  swift_endAccess();
  sub_1BA1617C4();
  return sub_1B9F7B644(v6);
}

uint64_t sub_1BA1617C4()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI25EmbeddedViewTableViewCell_item;
  swift_beginAccess();
  sub_1B9F68124(&v0[v1], v12);
  if (v12[3])
  {
    sub_1B9FCD918();
    if (swift_dynamicCast())
    {
      v2 = v17;
      v3 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI25EmbeddedViewTableViewCell_embeddedView];
      *&v0[OBJC_IVAR____TtC18HealthExperienceUI25EmbeddedViewTableViewCell_embeddedView] = v17;
      v4 = v2;

      v5 = [v0 contentView];
      [v5 addSubview_];

      v6 = [v0 contentView];
      sub_1BA162514(v4, v6);

      v7 = [v0 contentView];
      [v7 setNeedsLayout];

LABEL_8:
    }
  }

  else
  {
    sub_1B9F7B644(v12);
  }

  sub_1B9F68124(&v0[v1], v15);
  if (v16)
  {
    sub_1B9FCD918();
    result = swift_dynamicCast();
    if ((result & 1) == 0)
    {
      return result;
    }

    v4 = v13;
    v9 = v14;
    [v13 addChildViewController_];
    [v9 didMoveToParentViewController_];
    v10 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI25EmbeddedViewTableViewCell_embeddedViewController];
    *&v0[OBJC_IVAR____TtC18HealthExperienceUI25EmbeddedViewTableViewCell_embeddedViewController] = v9;
    v11 = v9;

    sub_1BA161B30([v11 view]);
    goto LABEL_8;
  }

  return sub_1B9F7B644(v15);
}

uint64_t sub_1BA1619D4@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI25EmbeddedViewTableViewCell_item;
  swift_beginAccess();
  return sub_1B9F68124(v1 + v3, a1);
}

uint64_t sub_1BA161A2C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI25EmbeddedViewTableViewCell_item;
  swift_beginAccess();
  sub_1B9F63E74(a1, v1 + v3);
  swift_endAccess();
  sub_1BA1617C4();
  return sub_1B9F7B644(a1);
}

uint64_t (*sub_1BA161A98(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1BA161AFC;
}

uint64_t sub_1BA161AFC(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return sub_1BA1617C4();
  }

  return result;
}

void sub_1BA161B30(void *a1)
{
  v3 = *&v1[OBJC_IVAR____TtC18HealthExperienceUI25EmbeddedViewTableViewCell_embeddedView];
  *&v1[OBJC_IVAR____TtC18HealthExperienceUI25EmbeddedViewTableViewCell_embeddedView] = a1;
  v4 = a1;

  if (a1)
  {
    v5 = [v1 contentView];
    [v5 addSubview_];

    v6 = [v1 contentView];
    sub_1BA162514(v4, v6);

    v7 = [v1 contentView];
    [v7 setNeedsLayout];
  }
}

void sub_1BA161C28()
{
  v7.receiver = v0;
  v7.super_class = type metadata accessor for EmbeddedViewTableViewCell();
  objc_msgSendSuper2(&v7, sel_prepareForReuse);
  v1 = OBJC_IVAR____TtC18HealthExperienceUI25EmbeddedViewTableViewCell_embeddedViewController;
  v2 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI25EmbeddedViewTableViewCell_embeddedViewController];
  if (v2)
  {
    [v2 willMoveToParentViewController_];
  }

  v3 = OBJC_IVAR____TtC18HealthExperienceUI25EmbeddedViewTableViewCell_embeddedView;
  [*&v0[OBJC_IVAR____TtC18HealthExperienceUI25EmbeddedViewTableViewCell_embeddedView] removeFromSuperview];
  v4 = *&v0[v3];
  *&v0[v3] = 0;

  v5 = *&v0[v1];
  if (v5)
  {
    [v5 removeFromParentViewController];
    v6 = *&v0[v1];
    *&v0[v1] = 0;
  }
}

id EmbeddedViewTableViewCell.__allocating_init(style:reuseIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a3)
  {
    v6 = sub_1BA4A6758();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithStyle:a1 reuseIdentifier:v6];

  return v7;
}

id EmbeddedViewTableViewCell.init(style:reuseIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = &v3[OBJC_IVAR____TtC18HealthExperienceUI25EmbeddedViewTableViewCell_item];
  *v5 = 0u;
  *(v5 + 1) = 0u;
  *(v5 + 4) = 0;
  *&v3[OBJC_IVAR____TtC18HealthExperienceUI25EmbeddedViewTableViewCell_embeddedView] = 0;
  *&v3[OBJC_IVAR____TtC18HealthExperienceUI25EmbeddedViewTableViewCell_embeddedViewController] = 0;
  if (a3)
  {
    v6 = sub_1BA4A6758();
  }

  else
  {
    v6 = 0;
  }

  v9.receiver = v3;
  v9.super_class = type metadata accessor for EmbeddedViewTableViewCell();
  v7 = objc_msgSendSuper2(&v9, sel_initWithStyle_reuseIdentifier_, a1, v6);

  return v7;
}

id EmbeddedViewTableViewCell.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id EmbeddedViewTableViewCell.init(coder:)(void *a1)
{
  v3 = &v1[OBJC_IVAR____TtC18HealthExperienceUI25EmbeddedViewTableViewCell_item];
  *v3 = 0u;
  *(v3 + 1) = 0u;
  *(v3 + 4) = 0;
  *&v1[OBJC_IVAR____TtC18HealthExperienceUI25EmbeddedViewTableViewCell_embeddedView] = 0;
  *&v1[OBJC_IVAR____TtC18HealthExperienceUI25EmbeddedViewTableViewCell_embeddedViewController] = 0;
  v6.receiver = v1;
  v6.super_class = type metadata accessor for EmbeddedViewTableViewCell();
  v4 = objc_msgSendSuper2(&v6, sel_initWithCoder_, a1);

  if (v4)
  {
  }

  return v4;
}

id EmbeddedViewTableViewCell.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for EmbeddedViewTableViewCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t _s18HealthExperienceUI36EmbeddedViewControllerDataSourceItemV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  if (*a1 == *a2 && a1[1] == a2[1] || (sub_1BA4A8338()) && (v2 == v4 && v3 == v5 || (sub_1BA4A8338()) && (sub_1BA0004FC(), (sub_1BA4A7798()))
  {
    return sub_1BA4A7798() & 1;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_1BA1621AC()
{
  result = qword_1EBBECC18;
  if (!qword_1EBBECC18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBECC18);
  }

  return result;
}

unint64_t sub_1BA162204()
{
  result = qword_1EBBECC20;
  if (!qword_1EBBECC20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBECC20);
  }

  return result;
}

unint64_t sub_1BA16225C()
{
  result = qword_1EBBECC28;
  if (!qword_1EBBECC28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBECC28);
  }

  return result;
}

unint64_t sub_1BA1622B4()
{
  result = qword_1EBBECC30;
  if (!qword_1EBBECC30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBECC30);
  }

  return result;
}

uint64_t sub_1BA162308(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_1BA162350(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1BA16246C()
{
  result = qword_1EBBECC38;
  if (!qword_1EBBECC38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBECC38);
  }

  return result;
}

unint64_t sub_1BA1624C0()
{
  result = qword_1EBBECC40;
  if (!qword_1EBBECC40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBECC40);
  }

  return result;
}

void sub_1BA162514(void *a1, void *a2)
{
  [a1 setTranslatesAutoresizingMaskIntoConstraints_];
  v4 = [a1 leadingAnchor];
  v5 = [a2 leadingAnchor];
  v6 = [v4 constraintEqualToAnchor_];

  [v6 setActive_];
  v7 = [a1 trailingAnchor];
  v8 = [a2 trailingAnchor];
  v9 = [v7 constraintEqualToAnchor_];

  [v9 setActive_];
  v10 = [a1 topAnchor];
  v11 = [a2 topAnchor];
  v12 = [v10 constraintEqualToAnchor_];

  [v12 setActive_];
  v13 = [a1 bottomAnchor];
  v14 = [a2 bottomAnchor];
  v15 = [v13 constraintEqualToAnchor_];

  [v15 setActive_];
}

uint64_t sub_1BA162730@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI42CompoundDataSourceCollectionViewController_dataSourceProvider;
  swift_beginAccess();
  return sub_1B9F374E8(v1 + v3, a1, &qword_1EDC6BAD0, qword_1EDC6BAE0);
}

uint64_t sub_1BA162800()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI42CompoundDataSourceCollectionViewController_usesAdaptiveMargins;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1BA162844(char a1)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI42CompoundDataSourceCollectionViewController_usesAdaptiveMargins;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

void *sub_1BA1628F4()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI42CompoundDataSourceCollectionViewController_collectionViewBackgroundColor;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1BA162940(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI42CompoundDataSourceCollectionViewController_collectionViewBackgroundColor;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t (*sub_1BA162A10(uint64_t *a1))(void *a1)
{
  a1[1] = v1;
  *a1 = sub_1B9F23FB0();
  return sub_1BA162A58;
}

uint64_t sub_1BA162A70(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI42CompoundDataSourceCollectionViewController_dataSourceAdaptor;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

id sub_1BA162B28()
{
  result = [v0 collectionView];
  if (result)
  {
    v2 = result;
    v3 = type metadata accessor for DiffableCollectionViewAdaptor(0);
    v4 = sub_1B9F23FB0();
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    return (*(v3 + 248))(v2, v4, &protocol witness table for CompoundSectionedDataSource, &protocol witness table for CompoundSectionedDataSource, 1, sub_1BA165690, v5);
  }

  else
  {
    __break(1u);
  }

  return result;
}

Swift::Void __swiftcall UICollectionViewController.clearSelection()()
{
  v1 = v0;
  v2 = sub_1BA4A1998();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = v1;
  if ([v1 clearsSelectionOnViewWillAppear])
  {
    v7 = [v17 collectionView];
    if (!v7)
    {
LABEL_13:
      __break(1u);
      return;
    }

    v8 = v7;
    v9 = [v7 indexPathsForSelectedItems];

    if (v9)
    {
      v10 = sub_1BA4A6B08();

      v11 = *(v10 + 16);
      if (v11)
      {
        v12 = 0;
        while (v12 < *(v10 + 16))
        {
          (*(v3 + 16))(v6, v10 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v12, v2);
          v13 = [v17 collectionView];
          if (!v13)
          {
            goto LABEL_12;
          }

          v14 = v13;
          ++v12;
          v15 = sub_1BA4A18F8();
          [v14 deselectItemAtIndexPath:v15 animated:1];

          (*(v3 + 8))(v6, v2);
          if (v11 == v12)
          {
            goto LABEL_9;
          }
        }

        __break(1u);
LABEL_12:
        __break(1u);
        goto LABEL_13;
      }

LABEL_9:
    }
  }
}

uint64_t CompoundSectionedDataSourceProvider.dataSource(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = (*(a3 + 8))();
  type metadata accessor for CompoundSectionedDataSource();
  swift_allocObject();
  return CompoundSectionedDataSource.init(_:)(v3);
}

uint64_t sub_1BA162FD8(uint64_t a1, uint64_t *a2)
{
  sub_1B9F374E8(a1, v6, &qword_1EDC6BAD0, qword_1EDC6BAE0);
  v3 = *a2;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI42CompoundDataSourceCollectionViewController_dataSourceProvider;
  swift_beginAccess();
  sub_1B9F10C48(v6, v3 + v4);
  return swift_endAccess();
}

void sub_1BA163054(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI42CompoundDataSourceCollectionViewController_collectionViewBackgroundColor;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
}

uint64_t sub_1BA1630B4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI42CompoundDataSourceCollectionViewController_dataSourceAdaptor;
  swift_beginAccess();
  *(v3 + v4) = v2;
}

id CompoundDataSourceCollectionViewController.__allocating_init(collectionViewLayout:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCollectionViewLayout_];

  return v3;
}

id CompoundDataSourceCollectionViewController.init(collectionViewLayout:)(void *a1)
{
  v2 = sub_1B9F0F3F4(a1);

  return v2;
}

id CompoundDataSourceCollectionViewController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id CompoundDataSourceCollectionViewController.init(coder:)(void *a1)
{
  v3 = &v1[OBJC_IVAR____TtC18HealthExperienceUI42CompoundDataSourceCollectionViewController_dataSourceProvider];
  *v3 = 0u;
  *(v3 + 1) = 0u;
  *(v3 + 4) = 0;
  v1[OBJC_IVAR____TtC18HealthExperienceUI42CompoundDataSourceCollectionViewController_usesAdaptiveMargins] = 1;
  *&v1[OBJC_IVAR____TtC18HealthExperienceUI42CompoundDataSourceCollectionViewController_collectionViewBackgroundColor] = 0;
  *&v1[OBJC_IVAR____TtC18HealthExperienceUI42CompoundDataSourceCollectionViewController____lazy_storage___dataSource] = 0;
  *&v1[OBJC_IVAR____TtC18HealthExperienceUI42CompoundDataSourceCollectionViewController_dataSourceAdaptor] = 0;
  v6.receiver = v1;
  v6.super_class = type metadata accessor for CompoundDataSourceCollectionViewController();
  v4 = objc_msgSendSuper2(&v6, sel_initWithCoder_, a1);

  if (v4)
  {
  }

  return v4;
}

uint64_t sub_1BA1632E4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = result;
    sub_1B9F23FB0();
    v6 = sub_1B9F54D58(a1);

    v11[3] = v5;
    type metadata accessor for CompoundDataSourceCollectionViewController();
    sub_1B9F0D950(0, &unk_1EDC60EE0);
    swift_unknownObjectRetain();
    v7 = v5;
    if (swift_dynamicCast())
    {
      v8 = *(&v13 + 1);
      v9 = v14;
      __swift_project_boxed_opaque_existential_1(&v12, *(&v13 + 1));
      v11[0] = a1;
      v11[1] = a2;
      v11[2] = v6;
      v10 = (*(v9 + 8))(v11, v8, v9);
      swift_unknownObjectRelease();

      __swift_destroy_boxed_opaque_existential_1(&v12);
      return v10;
    }

    else
    {
      swift_unknownObjectRelease();

      v14 = 0;
      v12 = 0u;
      v13 = 0u;
      sub_1B9F43A50(&v12, &qword_1EBBECC80, &unk_1EDC60EE0);
      return 0;
    }
  }

  return result;
}

id CompoundDataSourceCollectionViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
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

id CompoundDataSourceCollectionViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CompoundDataSourceCollectionViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

double CompoundDataSourceCollectionViewController.selectableHandler(in:at:)@<D0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v68 = sub_1BA4A1998();
  v6 = *(v68 - 8);
  MEMORY[0x1EEE9AC00](v68);
  v67 = &v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1BA4A3EA8();
  v69 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v70 = &v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F12538();
  v11 = v10;
  v12 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1BA4A18F8();
  v16 = [a1 cellForItemAtIndexPath_];

  if (!v16)
  {
    *(a3 + 32) = 0;
    result = 0.0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
    return result;
  }

  v64 = v8;
  v65 = v16;
  v66 = a3;
  v17 = sub_1BA4A1968();
  v18 = sub_1B9F23FB0();
  v19 = OBJC_IVAR____TtC18HealthExperienceUI27CompoundSectionedDataSource_snapshot;
  swift_beginAccess();
  v20 = *(v12 + 16);
  v63 = v12 + 16;
  v61 = v20;
  v20(v14, v18 + v19, v11);
  v21 = sub_1BA4A4548();

  v22 = *(v12 + 8);
  v62 = v12 + 8;
  v60 = v22;
  v22(v14, v11);
  if (v17 >= v21 || (v23 = sub_1BA4A1958(), , v24 = sub_1BA4A1968(), v25 = sub_1B9F54D58(v24), , v23 >= v25))
  {
    v27 = v70;
    sub_1BA4A3D88();
    v28 = v67;
    v29 = v68;
    (*(v6 + 16))(v67, a2, v68);
    v30 = v71;
    v31 = sub_1BA4A3E88();
    v32 = sub_1BA4A6FA8();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v59 = v32;
      v34 = v28;
      v35 = v33;
      v71 = swift_slowAlloc();
      *&v77[0] = v71;
      *v35 = 136315906;
      sub_1B9F3A36C(&unk_1EBBED850, MEMORY[0x1E6969C28]);
      v58 = v31;
      v36 = sub_1BA4A82D8();
      v38 = v37;
      (*(v6 + 8))(v34, v29);
      v39 = sub_1B9F0B82C(v36, v38, v77);

      *(v35 + 4) = v39;
      *(v35 + 12) = 2048;
      v40 = sub_1B9F23FB0();
      v41 = OBJC_IVAR____TtC18HealthExperienceUI27CompoundSectionedDataSource_snapshot;
      swift_beginAccess();
      v42 = v61;
      v61(v14, v40 + v41, v11);
      v43 = sub_1BA4A4548();

      v44 = v60;
      v60(v14, v11);

      *(v35 + 14) = v43;
      *(v35 + 22) = 2048;
      v45 = sub_1B9F23FB0();
      v46 = OBJC_IVAR____TtC18HealthExperienceUI27CompoundSectionedDataSource_snapshot;
      swift_beginAccess();
      v42(v14, v45 + v46, v11);

      v47 = sub_1BA4A44B8();
      v44(v14, v11);

      *(v35 + 24) = v47;
      *(v35 + 32) = 2080;
      v48 = *&v30[OBJC_IVAR____TtC18HealthExperienceUI42CompoundDataSourceCollectionViewController____lazy_storage___dataSource];
      v49 = OBJC_IVAR____TtC18HealthExperienceUI27CompoundSectionedDataSource_snapshot;
      swift_beginAccess();
      v42(v14, v48 + v49, v11);
      v50 = NSDiffableDataSourceSnapshot<>.description.getter();
      v52 = v51;
      v44(v14, v11);
      v53 = sub_1B9F0B82C(v50, v52, v77);

      *(v35 + 34) = v53;
      v54 = v58;
      _os_log_impl(&dword_1B9F07000, v58, v59, "Failed to get handler for item because the snapshot does not contain the index path: %s, dataSource has %ld sections, %ld items. snapshot: %s.", v35, 0x2Au);
      v55 = v71;
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v55, -1, -1);
      MEMORY[0x1BFAF43A0](v35, -1, -1);

      (*(v69 + 8))(v70, v64);
    }

    else
    {

      (*(v6 + 8))(v28, v29);
      (*(v69 + 8))(v27, v64);
    }

    v26 = v66;
    v80 = 0;
    v78 = 0u;
    v79 = 0u;
  }

  else
  {

    sub_1BA079B80(a2, &v78);

    v26 = v66;
  }

  v72[0] = v78;
  v72[1] = v79;
  v73 = v80;
  if (*(&v79 + 1))
  {
    sub_1B9F0D950(0, &qword_1EDC6AD50);
    sub_1B9F0D950(0, &qword_1EDC6CCF0);
    if (swift_dynamicCast())
    {
      if (*(&v75 + 1))
      {

LABEL_17:
        sub_1B9F1134C(&v74, v77);
        sub_1B9F1134C(v77, v26);
        return result;
      }
    }

    else
    {
      v76 = 0;
      v75 = 0u;
      v74 = 0u;
    }
  }

  else
  {
    sub_1B9F43A50(v72, &qword_1EDC6AD40, &qword_1EDC6AD50);
    v74 = 0u;
    v75 = 0u;
    v76 = 0;
  }

  sub_1B9F43A50(&v74, qword_1EDC67B40, &qword_1EDC6CCF0);
  *&v72[0] = v65;
  sub_1BA1650A4();
  sub_1B9F0D950(0, &qword_1EDC6CCF0);
  if (swift_dynamicCast())
  {
    goto LABEL_17;
  }

  v76 = 0;
  v75 = 0u;
  v74 = 0u;
  sub_1B9F43A50(&v74, qword_1EDC67B40, &qword_1EDC6CCF0);
  *(v26 + 32) = 0;
  result = 0.0;
  *v26 = 0u;
  *(v26 + 16) = 0u;
  return result;
}

uint64_t _s18HealthExperienceUI42CompoundDataSourceCollectionViewControllerC010collectionH0_18shouldSelectItemAtSbSo012UICollectionH0C_10Foundation9IndexPathVtF_0(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1BA4A18F8();
  v7 = [a1 cellForItemAtIndexPath_];

  if (!v7)
  {
    goto LABEL_5;
  }

  CompoundDataSourceCollectionViewController.selectableHandler(in:at:)(a1, a2, v15);
  sub_1B9F374E8(v15, v12, qword_1EDC67B40, &qword_1EDC6CCF0);
  v8 = v13;
  if (!v13)
  {
    sub_1B9F43A50(v15, qword_1EDC67B40, &qword_1EDC6CCF0);

    sub_1B9F43A50(v12, qword_1EDC67B40, &qword_1EDC6CCF0);
LABEL_5:
    v10 = 0;
    return v10 & 1;
  }

  v9 = v14;
  __swift_project_boxed_opaque_existential_1(v12, v13);
  v10 = (*(v9 + 8))(v7, v3, v8, v9);

  sub_1B9F43A50(v15, qword_1EDC67B40, &qword_1EDC6CCF0);
  __swift_destroy_boxed_opaque_existential_1(v12);
  return v10 & 1;
}

void CompoundDataSourceCollectionViewController.collectionView(_:didSelectItemAt:)(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1BA4A18F8();
  v7 = [a1 cellForItemAtIndexPath_];

  if (v7)
  {
    CompoundDataSourceCollectionViewController.selectableHandler(in:at:)(a1, a2, v17);
    sub_1B9F374E8(v17, v14 + 1, qword_1EDC67B40, &qword_1EDC6CCF0);
    v8 = v15;
    if (v15)
    {
      v9 = v16;
      __swift_project_boxed_opaque_existential_1((v14 + 1), v15);
      (*(v9 + 16))(v7, v3, v8, v9);
      __swift_destroy_boxed_opaque_existential_1(v14 + 1);
    }

    else
    {
      sub_1B9F43A50(v14 + 1, qword_1EDC67B40, &qword_1EDC6CCF0);
    }

    sub_1B9F374E8(v17, v14 + 1, qword_1EDC67B40, &qword_1EDC6CCF0);
    v10 = v15;
    if (v15)
    {
      v11 = v16;
      __swift_project_boxed_opaque_existential_1((v14 + 1), v15);
      (*(v11 + 24))(v14, v3, v10, v11);
      v12 = LOBYTE(v14[0]);
      __swift_destroy_boxed_opaque_existential_1(v14 + 1);
      if (v12 == 2)
      {
        sub_1B9F43A50(v17, qword_1EDC67B40, &qword_1EDC6CCF0);

        return;
      }

      v13 = sub_1BA4A18F8();
      [a1 deselectItemAtIndexPath:v13 animated:v12 & 1];
    }

    else
    {

      sub_1B9F43A50(v14 + 1, qword_1EDC67B40, &qword_1EDC6CCF0);
    }

    sub_1B9F43A50(v17, qword_1EDC67B40, &qword_1EDC6CCF0);
  }
}

uint64_t CompoundDataSourceCollectionViewController.collectionView(_:selectionFollowsFocusForItemAt:)(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1BA4A18F8();
  v7 = [a1 cellForItemAtIndexPath_];

  if (!v7)
  {
    v10 = [a1 selectionFollowsFocus];
    return v10 & 1;
  }

  CompoundDataSourceCollectionViewController.selectableHandler(in:at:)(a1, a2, v15);
  sub_1B9F374E8(v15, v12, qword_1EDC67B40, &qword_1EDC6CCF0);
  v8 = v13;
  if (!v13)
  {
    sub_1B9F43A50(v12, qword_1EDC67B40, &qword_1EDC6CCF0);
    goto LABEL_7;
  }

  v9 = v14;
  __swift_project_boxed_opaque_existential_1(v12, v13);
  v10 = (*(v9 + 32))(v7, v3, v8, v9);
  __swift_destroy_boxed_opaque_existential_1(v12);
  if (v10 == 2)
  {
LABEL_7:
    v10 = [a1 selectionFollowsFocus];

    sub_1B9F43A50(v15, qword_1EDC67B40, &qword_1EDC6CCF0);
    return v10 & 1;
  }

  sub_1B9F43A50(v15, qword_1EDC67B40, &qword_1EDC6CCF0);

  return v10 & 1;
}

uint64_t sub_1BA164784(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t (*a5)(id, char *))
{
  v8 = sub_1BA4A1998();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA4A1918();
  v12 = a3;
  v13 = a1;
  LOBYTE(a5) = a5(v12, v11);

  (*(v9 + 8))(v11, v8);
  return a5 & 1;
}

uint64_t CompoundDataSourceCollectionViewController.collectionView(_:targetIndexPathForMoveOfItemFromOriginalIndexPath:atCurrentIndexPath:toProposedIndexPath:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v6 = sub_1B9F23FB0();
  v7 = (*(*v6 + 360))(a1, a2);

  v8 = sub_1BA4A1998();
  v9 = *(*(v8 - 8) + 16);
  if (v7)
  {
    v10 = a2;
  }

  else
  {
    v10 = a1;
  }

  return v9(a3, v10, v8);
}

uint64_t sub_1BA164B9C(void *a1)
{
  sub_1B9F3BED8(0, &qword_1EBBECC78, type metadata accessor for DiffableCollectionViewAdaptor.DebugState, MEMORY[0x1E69E6720]);
  v3 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v31 - v4;
  v6 = sub_1BA4A3EA8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA4A3DD8();
  v10 = a1;

  v11 = sub_1BA4A3E88();
  v12 = sub_1BA4A6FA8();

  if (os_log_type_enabled(v11, v12))
  {
    v33 = v12;
    v34 = v3;
    v35 = v6;
    v13 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v37 = v32;
    *v13 = 136315650;
    v14 = sub_1BA4A85D8();
    v16 = sub_1B9F0B82C(v14, v15, &v37);

    *(v13 + 4) = v16;
    *(v13 + 12) = 2080;
    v36 = a1;
    v17 = a1;
    sub_1B9F0D950(0, &qword_1EDC6E310);
    v18 = sub_1BA4A6808();
    v20 = sub_1B9F0B82C(v18, v19, &v37);

    *(v13 + 14) = v20;
    *(v13 + 22) = 2080;
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v22 = OBJC_IVAR____TtC18HealthExperienceUI29DiffableCollectionViewAdaptor__debug_currentSnapshotState;
      v23 = Strong;
      swift_beginAccess();
      sub_1BA10C8F0(v23 + v22, v5);

      v24 = 0;
    }

    else
    {
      v24 = 1;
    }

    v25 = type metadata accessor for DiffableCollectionViewAdaptor.DebugState(0);
    (*(*(v25 - 8) + 56))(v5, v24, 1, v25);
    v26 = sub_1BA4A6808();
    v28 = sub_1B9F0B82C(v26, v27, &v37);

    *(v13 + 24) = v28;
    _os_log_impl(&dword_1B9F07000, v11, v33, "[%s]: Unable to resolve layout: %s. Backing snapshot state: %s", v13, 0x20u);
    v29 = v32;
    swift_arrayDestroy();
    MEMORY[0x1BFAF43A0](v29, -1, -1);
    MEMORY[0x1BFAF43A0](v13, -1, -1);

    (*(v7 + 8))(v9, v35);
  }

  else
  {

    (*(v7 + 8))(v9, v6);
  }

  return 0;
}

unint64_t sub_1BA164F44()
{
  result = qword_1EBBED8C0;
  if (!qword_1EBBED8C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBED8C0);
  }

  return result;
}

uint64_t sub_1BA164FF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = swift_allocObject();
  *(v15 + 16) = a4;
  return (*(a4 + 248))(a1, a2, a6, a7, a3, a8, v15);
}

unint64_t sub_1BA1650A4()
{
  result = qword_1EDC6B550;
  if (!qword_1EDC6B550)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDC6B550);
  }

  return result;
}

uint64_t _s18HealthExperienceUI42CompoundDataSourceCollectionViewControllerC010collectionH0_33contextMenuConfigurationForItemAt5pointSo09UIContextlM0CSgSo012UICollectionH0C_10Foundation9IndexPathVSo7CGPointVtF_0(void *a1)
{
  v2 = sub_1BA4A18F8();
  v3 = [a1 cellForItemAtIndexPath_];

  if (v3)
  {
    v11 = v3;
    sub_1BA1650A4();
    sub_1B9F0D950(0, &qword_1EBBE9910);
    v4 = v3;
    if (swift_dynamicCast())
    {
      sub_1B9F1134C(v9, v12);
      v5 = v13;
      v6 = v14;
      __swift_project_boxed_opaque_existential_1(v12, v13);
      v7 = (*(v6 + 8))(v5, v6);

      __swift_destroy_boxed_opaque_existential_1(v12);
      return v7;
    }

    v10 = 0;
    memset(v9, 0, sizeof(v9));
    sub_1B9F43A50(v9, &qword_1EBBE9908, &qword_1EBBE9910);
  }

  return 0;
}

id CategoryGradientView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id CategoryGradientView.init(frame:)(double a1, double a2, double a3, double a4)
{
  v13.receiver = v4;
  v13.super_class = type metadata accessor for CategoryGradientView();
  v9 = objc_msgSendSuper2(&v13, sel_initWithFrame_, a1, a2, a3, a4);
  v10 = [v9 layer];
  objc_opt_self();
  [swift_dynamicCastObjCClassUnconditional() setStartPoint_];

  v11 = [v9 layer];
  objc_opt_self();
  [swift_dynamicCastObjCClassUnconditional() setEndPoint_];

  return v9;
}

void sub_1BA165A18(unint64_t a1)
{
  v3 = [v1 layer];
  objc_opt_self();
  v4 = swift_dynamicCastObjCClassUnconditional();
  if (a1 >> 62)
  {
    v5 = sub_1BA4A7CC8();
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v5)
  {
LABEL_12:
    v14 = sub_1BA4A6AE8();

    [v4 setColors_];

    return;
  }

  v17 = MEMORY[0x1E69E7CC0];
  sub_1B9F468EC(0, v5 & ~(v5 >> 63), 0);
  if ((v5 & 0x8000000000000000) == 0)
  {
    v6 = 0;
    v7 = v17;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x1BFAF2860](v6, a1);
      }

      else
      {
        v8 = *(a1 + 8 * v6 + 32);
      }

      v9 = v8;
      v10 = [v8 CGColor];
      type metadata accessor for CGColor(0);
      v16 = v11;

      *&v15 = v10;
      v17 = v7;
      v13 = *(v7 + 16);
      v12 = *(v7 + 24);
      if (v13 >= v12 >> 1)
      {
        sub_1B9F468EC((v12 > 1), v13 + 1, 1);
        v7 = v17;
      }

      ++v6;
      *(v7 + 16) = v13 + 1;
      sub_1B9F46920(&v15, (v7 + 32 * v13 + 32));
    }

    while (v5 != v6);
    goto LABEL_12;
  }

  __break(1u);
}

id CategoryGradientView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CategoryGradientView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t CategoryGradientColorProvider.colors.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

uint64_t CategoryGradientColorProvider.relevantTraits.getter()
{
  sub_1B9F7A684();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1BA4B5480;
  v1 = sub_1BA4A4178();
  v2 = MEMORY[0x1E69DC0F8];
  *(v0 + 32) = v1;
  *(v0 + 40) = v2;
  return v0;
}

uint64_t CategoryGradientColorProvider.init(baseColor:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_1B9F10B50();
  swift_allocObject();
  result = sub_1BA4A4DF8();
  *a2 = a1;
  a2[1] = result;
  return result;
}

Swift::Void __swiftcall CategoryGradientColorProvider.configureForTraitCollection(_:)(UITraitCollection a1)
{
  sub_1BA165D9C(a1.super.isa);
  sub_1BA4A4DA8();
}

uint64_t sub_1BA165D9C(void *a1)
{
  v3 = sub_1BA4A3EA8();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v1;
  v9 = [a1 userInterfaceStyle];
  if (v9 >= 2)
  {
    if (v9 == 2)
    {
      sub_1B9F109F8();
      v10 = swift_allocObject();
      *(v10 + 16) = xmmword_1BA4B7510;
      *(v10 + 32) = [v8 colorWithAlphaComponent_];
      v11 = [v8 colorWithAlphaComponent_];
    }

    else
    {
      sub_1BA4A3DD8();
      v12 = a1;
      v13 = sub_1BA4A3E88();
      v14 = sub_1BA4A6FA8();

      if (os_log_type_enabled(v13, v14))
      {
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        v23 = v17;
        *v16 = 136315394;
        *(v16 + 4) = sub_1B9F0B82C(0xD00000000000001DLL, 0x80000001BA4C1600, &v23);
        *(v16 + 12) = 2080;
        v22 = [v12 horizontalSizeClass];
        type metadata accessor for UIUserInterfaceSizeClass(0);
        v18 = sub_1BA4A6808();
        v20 = sub_1B9F0B82C(v18, v19, &v23);

        *(v16 + 14) = v20;
        _os_log_impl(&dword_1B9F07000, v13, v14, "[%s]: Unknown size class: %s", v16, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1BFAF43A0](v17, -1, -1);
        MEMORY[0x1BFAF43A0](v16, -1, -1);
      }

      (*(v4 + 8))(v7, v3);
      sub_1B9F109F8();
      v10 = swift_allocObject();
      *(v10 + 16) = xmmword_1BA4B7510;
      *(v10 + 32) = [v8 colorWithAlphaComponent_];
      v11 = [v8 colorWithAlphaComponent_];
    }
  }

  else
  {
    sub_1B9F109F8();
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_1BA4B7510;
    *(v10 + 32) = [v8 colorWithAlphaComponent_];
    v11 = [v8 colorWithAlphaComponent_];
  }

  *(v10 + 40) = v11;
  return v10;
}

uint64_t sub_1BA1660F8(void *a1)
{
  sub_1BA165D9C(a1);
  sub_1BA4A4DA8();
}

uint64_t sub_1BA166150()
{
  sub_1B9F7A684();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1BA4B5480;
  v1 = sub_1BA4A4178();
  v2 = MEMORY[0x1E69DC0F8];
  *(v0 + 32) = v1;
  *(v0 + 40) = v2;
  return v0;
}

uint64_t sub_1BA166238(double a1)
{
  sub_1B9FCD86C(v5, a1);
  if (!v5[3])
  {
    sub_1B9FCD638(v5);
    v6 = 0u;
    v7 = 0u;
    v8 = 0u;
    v9 = 0u;
    v10 = 0u;
    v11 = 0;
    goto LABEL_8;
  }

  sub_1B9F0D950(0, &qword_1EDC6AD50);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v11 = 0;
    v9 = 0u;
    v10 = 0u;
    v7 = 0u;
    v8 = 0u;
    v6 = 0u;
    goto LABEL_8;
  }

  if (!*(&v7 + 1))
  {
LABEL_8:
    sub_1BA166BC4(&v6, &qword_1EBBEBB88, &type metadata for FavoritableFeedItem, MEMORY[0x1E69E6720], sub_1BA167378);
    return 0;
  }

  v1 = [*(&v8 + 1) localizedTitle];
  if (v1)
  {
    v2 = v1;
    v3 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();

    sub_1BA0D8BF4(&v6);
    return v3;
  }

  sub_1BA0D8BF4(&v6);
  return 0;
}

uint64_t sub_1BA166380(double a1)
{
  sub_1B9FCD86C(v3, a1);
  if (v3[3])
  {
    sub_1B9F0D950(0, &qword_1EDC6AD50);
    if (swift_dynamicCast())
    {
      if (*(&v5 + 1))
      {
        v1 = v7;
        sub_1BA0D8BF4(&v4);
        return v1;
      }
    }

    else
    {
      v9 = 0;
      v7 = 0u;
      v8 = 0u;
      v5 = 0u;
      v6 = 0u;
      v4 = 0u;
    }
  }

  else
  {
    sub_1B9FCD638(v3);
    v4 = 0u;
    v5 = 0u;
    v6 = 0u;
    v7 = 0u;
    v8 = 0u;
    v9 = 0;
  }

  sub_1BA166BC4(&v4, &qword_1EBBEBB88, &type metadata for FavoritableFeedItem, MEMORY[0x1E69E6720], sub_1BA167378);
  return 0;
}

uint64_t OnboardingAddToFavoritesDataSource.init(objectType:healthExperienceStore:pinnedContentManager:)(void *a1, void *a2, void *a3)
{
  v4 = v3;
  v58 = a3;
  v59 = a2;
  v57 = v4;
  v56 = *v4;
  v54 = MEMORY[0x1E6968130];
  v6 = MEMORY[0x1E69E6720];
  sub_1B9F0C9D8(0, &qword_1EDC6E2A0, MEMORY[0x1E6968130], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v50 - v8;
  sub_1BA4A27B8();
  sub_1B9F0C9D8(0, &qword_1EDC6B460, MEMORY[0x1E69A3C08], MEMORY[0x1E69E6F90]);
  v10 = sub_1BA4A1C68();
  v11 = *(v10 - 8);
  v12 = *(v11 + 72);
  v13 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v14 = swift_allocObject();
  v55 = xmmword_1BA4B5460;
  *(v14 + 16) = xmmword_1BA4B5460;
  v15 = v14 + v13;
  v16 = *(v11 + 104);
  v16(v15, *MEMORY[0x1E69A3BB0], v10);
  v16(v15 + v12, *MEMORY[0x1E69A3BB8], v10);
  v17 = MEMORY[0x1E69E6F90];
  sub_1BA167378(0, &qword_1EDC6B400, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v18 = swift_allocObject();
  v52 = xmmword_1BA4B5470;
  *(v18 + 16) = xmmword_1BA4B5470;
  *(v18 + 32) = a1;
  v19 = sub_1BA4A0FA8();
  (*(*(v19 - 8) + 56))(v9, 1, 1, v19);
  sub_1BA167378(0, &qword_1EDC6B450, MEMORY[0x1E69A3C58], v17);
  v20 = swift_allocObject();
  *(v20 + 16) = v55;
  *&v55 = a1;
  *(v20 + 32) = sub_1BA4A1D78();
  *(v20 + 40) = 0;
  v21 = MEMORY[0x1BFAED020](v14, v18, v9, v20);

  sub_1BA166BC4(v9, &qword_1EDC6E2A0, v54, v6, sub_1B9F0C9D8);
  v22 = v58;
  __swift_project_boxed_opaque_existential_1(v58, v58[3]);
  sub_1BA4A2388();
  v23 = sub_1BA4A2568();
  v24 = swift_allocObject();
  v50 = xmmword_1BA4B7510;
  *(v24 + 16) = xmmword_1BA4B7510;
  *(v24 + 32) = v21;
  *(v24 + 40) = v23;
  sub_1B9F0ADF8(0, &qword_1EDC6B630);
  v54 = v21;
  v53 = v23;
  v25 = sub_1BA4A6AE8();

  v26 = objc_opt_self();
  v27 = [v26 andPredicateWithSubpredicates_];

  __swift_project_boxed_opaque_existential_1(v59, v59[3]);
  v28 = sub_1BA4A1B68();
  sub_1B9F0A534(v22, v61);
  v51 = type metadata accessor for AddToFavoritesTableViewCell();
  __swift_project_boxed_opaque_existential_1(v61, v61[3]);
  sub_1BA4A2388();
  v29 = sub_1BA4A26E8();
  v30 = swift_allocObject();
  *(v30 + 16) = v50;
  *(v30 + 32) = v27;
  *(v30 + 40) = v29;
  v31 = v27;
  v32 = v29;
  v33 = sub_1BA4A6AE8();

  v34 = [v26 andPredicateWithSubpredicates_];

  v35 = v34;
  v36 = sub_1BA4A26C8();

  [v36 setFetchLimit_];
  v37 = swift_allocObject();
  *(v37 + 16) = v52;
  v38 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  v39 = sub_1BA4A6758();
  v40 = [v38 initWithKey:v39 ascending:1];

  *(v37 + 32) = v40;
  sub_1B9F0ADF8(0, &qword_1EDC6E3E0);
  v41 = sub_1BA4A6AE8();

  [v36 setSortDescriptors_];

  v42 = [objc_allocWithZone(MEMORY[0x1E695D600]) initWithFetchRequest:v36 managedObjectContext:v28 sectionNameKeyPath:0 cacheName:0];
  sub_1B9F126E0();
  v44 = objc_allocWithZone(v43);
  v45 = v42;
  v46 = _s18HealthExperienceUI33FeedItemSuggestedActionDataSourceCyACSo26NSFetchedResultsControllerCy0A8Platform0dE0CGcfc_0(v45);
  sub_1B9F0A534(v61, v60);
  v47 = swift_allocObject();
  v47[2] = v51;
  v47[3] = &protocol witness table for AddToFavoritesTableViewCell;
  sub_1B9F25598(v60, (v47 + 4));
  v47[9] = v56;
  v48 = sub_1B9F17A68(v46, sub_1BA1672F0, v47, 0);

  __swift_destroy_boxed_opaque_existential_1(v61);
  __swift_destroy_boxed_opaque_existential_1(v58);
  __swift_destroy_boxed_opaque_existential_1(v59);
  return v48;
}

uint64_t sub_1BA166BC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5(0);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t OnboardingAddToFavoritesDataSource.deinit()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_snapshot;
  sub_1B9F12538();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_1B9F18460(*(v0 + qword_1EDC64EB0), *(v0 + qword_1EDC64EB0 + 8), *(v0 + qword_1EDC64EB0 + 16));

  return v0;
}

uint64_t OnboardingAddToFavoritesDataSource.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_snapshot;
  sub_1B9F12538();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_1B9F18460(*(v0 + qword_1EDC64EB0), *(v0 + qword_1EDC64EB0 + 8), *(v0 + qword_1EDC64EB0 + 16));

  return swift_deallocClassInstance();
}

void OnboardingAddToFavoritesDataSource.supplementaryContentConfiguration(ofKind:at:)(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = sub_1BA4A1968();
  if (v3 != 1 || v4 != 0)
  {
    *(a2 + 32) = 0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
    return;
  }

  v6 = [objc_opt_self() sharedBehavior];
  if (v6)
  {
    v7 = v6;
    v8 = [v6 features];

    if (v8)
    {
      v9 = [v8 isPinnedInBrowse];

      if (v9)
      {
        if (qword_1EDC5E100 == -1)
        {
          goto LABEL_12;
        }
      }

      else if (qword_1EDC5E100 == -1)
      {
LABEL_12:
        sub_1BA4A1318();
        sub_1B9F0CF6C(0, &qword_1EDC6B410, &qword_1EDC6B3D0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
        v10 = swift_allocObject();
        *(v10 + 16) = xmmword_1BA4B5480;
        v11 = sub_1BA166238(COERCE_DOUBLE(1));
        v13 = v12;
        *(v10 + 56) = MEMORY[0x1E69E6158];
        *(v10 + 64) = sub_1B9F1BE20();
        *(v10 + 32) = v11;
        *(v10 + 40) = v13;
        sub_1BA4A67D8();

        sub_1BA4A1318();
        sub_1BA166380(v14);

        v15 = sub_1BA4A4428();
        v16 = MEMORY[0x1E69DC110];
        *(a2 + 24) = v15;
        *(a2 + 32) = v16;
        __swift_allocate_boxed_opaque_existential_1(a2);
        sub_1BA4A43E8();
        sub_1BA4A43B8();
        return;
      }

      swift_once();
      goto LABEL_12;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t type metadata accessor for OnboardingAddToFavoritesDataSource()
{
  result = qword_1EBBECC88;
  if (!qword_1EBBECC88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BA167378(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1BA1673E8(uint64_t a1, uint64_t *a2)
{
  sub_1B9F68124(a1, v6);
  v3 = *a2;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI31SectionHeaderCollectionViewCell_item;
  swift_beginAccess();
  sub_1B9F63E74(v6, v3 + v4);
  swift_endAccess();
  sub_1BA167CE0();
  return sub_1B9F7B644(v6);
}

uint64_t sub_1BA167458@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI31SectionHeaderCollectionViewCell_item;
  swift_beginAccess();
  return sub_1B9F68124(v1 + v3, a1);
}

uint64_t sub_1BA1674B0(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI31SectionHeaderCollectionViewCell_item;
  swift_beginAccess();
  sub_1B9F63E74(a1, v1 + v3);
  swift_endAccess();
  sub_1BA167CE0();
  return sub_1B9F7B644(a1);
}

void (*sub_1BA16751C(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1BA167580;
}

void sub_1BA167580(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    sub_1BA167CE0();
  }
}

uint64_t sub_1BA1675B4(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (*a2 + OBJC_IVAR____TtC18HealthExperienceUI31SectionHeaderCollectionViewCell_baseIdentifier);
  swift_beginAccess();
  *v4 = v3;
  v4[1] = v2;
}

uint64_t sub_1BA167620()
{
  v1 = (v0 + OBJC_IVAR____TtC18HealthExperienceUI31SectionHeaderCollectionViewCell_baseIdentifier);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t sub_1BA167678(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC18HealthExperienceUI31SectionHeaderCollectionViewCell_baseIdentifier);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

id SectionHeaderCollectionViewCell.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id SectionHeaderCollectionViewCell.init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = &v4[OBJC_IVAR____TtC18HealthExperienceUI31SectionHeaderCollectionViewCell_item];
  *v9 = 0u;
  *(v9 + 1) = 0u;
  *(v9 + 4) = 0;
  v10 = &v4[OBJC_IVAR____TtC18HealthExperienceUI31SectionHeaderCollectionViewCell_baseIdentifier];
  v11 = type metadata accessor for DefaultHeaderCollectionReusableView();
  *v10 = 0;
  *(v10 + 1) = 0;
  v12 = [objc_allocWithZone(v11) initWithFrame_];
  *&v4[OBJC_IVAR____TtC18HealthExperienceUI31SectionHeaderCollectionViewCell_headerView] = v12;
  v15.receiver = v4;
  v15.super_class = type metadata accessor for SectionHeaderCollectionViewCell();
  v13 = objc_msgSendSuper2(&v15, sel_initWithFrame_, a1, a2, a3, a4);
  sub_1BA167A40();

  return v13;
}

id sub_1BA167958(void *a1)
{
  v3 = &v1[OBJC_IVAR____TtC18HealthExperienceUI31SectionHeaderCollectionViewCell_item];
  *v3 = 0u;
  *(v3 + 1) = 0u;
  *(v3 + 4) = 0;
  v4 = &v1[OBJC_IVAR____TtC18HealthExperienceUI31SectionHeaderCollectionViewCell_baseIdentifier];
  v5 = type metadata accessor for DefaultHeaderCollectionReusableView();
  *v4 = 0;
  *(v4 + 1) = 0;
  result = [objc_allocWithZone(v5) initWithCoder_];
  if (result)
  {
    *&v1[OBJC_IVAR____TtC18HealthExperienceUI31SectionHeaderCollectionViewCell_headerView] = result;
    v10.receiver = v1;
    v10.super_class = type metadata accessor for SectionHeaderCollectionViewCell();
    v7 = objc_msgSendSuper2(&v10, sel_initWithCoder_, a1);
    v8 = v7;
    if (v7)
    {
      v9 = v7;
      sub_1BA167A40();
    }

    return v8;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1BA167A40()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC18HealthExperienceUI31SectionHeaderCollectionViewCell_headerView;
  v3 = [*&v0[OBJC_IVAR____TtC18HealthExperienceUI31SectionHeaderCollectionViewCell_headerView] accessibilityIdentifier];
  [v1 setAccessibilityIdentifier_];

  [*&v1[v2] setTranslatesAutoresizingMaskIntoConstraints_];
  v4 = [v1 contentView];
  [v4 addSubview_];

  v13 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  v14 = v5;

  MEMORY[0x1BFAF1350](0x437265646165482ELL, 0xEB000000006C6C65);

  v6 = &v1[OBJC_IVAR____TtC18HealthExperienceUI31SectionHeaderCollectionViewCell_baseIdentifier];
  swift_beginAccess();
  *v6 = v13;
  v6[1] = v14;

  v7 = *&v1[v2];
  v8 = sub_1BA4A6758();
  [v7 setAccessibilityIdentifier_];

  v9 = sub_1B9F7A014();

  MEMORY[0x1BFAF1350](0x6C69617465442ELL, 0xE700000000000000);
  v10 = sub_1BA4A6758();

  [v9 setAccessibilityIdentifier_];

  v11 = *&v1[v2];
  v12 = [v1 contentView];
  [v11 hk:v12 alignConstraintsWithView:?];
}

Swift::Void __swiftcall SectionHeaderCollectionViewCell.updateAutomationIdentifiers(with:)(Swift::String_optional with)
{
  object = with.value._object;
  countAndFlagsBits = with.value._countAndFlagsBits;
  v4 = *(v1 + OBJC_IVAR____TtC18HealthExperienceUI31SectionHeaderCollectionViewCell_headerView);
  sub_1B9F7B558(countAndFlagsBits, object);
}

void sub_1BA167CE0()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI31SectionHeaderCollectionViewCell_headerView];
  v3 = OBJC_IVAR____TtC18HealthExperienceUI31SectionHeaderCollectionViewCell_item;
  swift_beginAccess();
  sub_1B9F68124(&v0[v3], v7);
  v4 = OBJC_IVAR____TtC18HealthExperienceUI35DefaultHeaderCollectionReusableView_item;
  swift_beginAccess();
  v5 = v2;
  sub_1B9F63E74(v7, v2 + v4);
  swift_endAccess();
  sub_1B9F7A7A4();

  sub_1B9F7B644(v7);
  sub_1B9F68124(v1 + v3, v7);
  if (v8)
  {
    sub_1B9FCD918();
    type metadata accessor for HeaderItem();
    if (swift_dynamicCast())
    {

      v6 = sub_1BA4A6758();

      [v1 setAccessibilityLabel_];
    }
  }

  else
  {
    sub_1B9F7B644(v7);
  }
}

id SectionHeaderCollectionViewCell.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SectionHeaderCollectionViewCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void (*sub_1BA167EC4(uint64_t a1))(uint64_t, char)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1BA168348;
}

uint64_t sub_1BA167F28@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI31SectionHeaderCollectionViewCell_item;
  swift_beginAccess();
  return sub_1B9F68124(v3 + v4, a1);
}

uint64_t sub_1BA167F84(uint64_t a1)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI31SectionHeaderCollectionViewCell_item;
  swift_beginAccess();
  sub_1B9F63E74(a1, v3 + v4);
  swift_endAccess();
  sub_1BA167CE0();
  return sub_1B9F7B644(a1);
}

void (*sub_1BA167FF4(uint64_t a1))(uint64_t, char)
{
  *(a1 + 24) = *v1;
  swift_beginAccess();
  return sub_1BA16805C;
}

void sub_1BA168060(uint64_t a1, uint64_t a2)
{
  v5 = *(*v2 + OBJC_IVAR____TtC18HealthExperienceUI31SectionHeaderCollectionViewCell_headerView);
  sub_1B9F7B558(a1, a2);
}

uint64_t sub_1BA1680D4()
{
  v1 = (*v0 + OBJC_IVAR____TtC18HealthExperienceUI31SectionHeaderCollectionViewCell_baseIdentifier);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t sub_1BA168130(uint64_t a1, uint64_t a2)
{
  v5 = (*v2 + OBJC_IVAR____TtC18HealthExperienceUI31SectionHeaderCollectionViewCell_baseIdentifier);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

void sub_1BA168388(void *a1, char a2)
{
  v3 = v2;
  swift_getObjectType();
  v61 = sub_1BA4A6468();
  v6 = *(v61 - 8);
  MEMORY[0x1EEE9AC00](v61);
  v8 = (&v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v62 = sub_1BA4A3EA8();
  v9 = *(v62 - 8);
  MEMORY[0x1EEE9AC00](v62);
  v11 = &v60 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v60 - v13;
  v15 = sub_1BA4A2A28();
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v60 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v3 + OBJC_IVAR____TtC18HealthExperienceUI23MedicalIDDataSourceItem_currentMedicalIDDataResultPresented);
  *(v3 + OBJC_IVAR____TtC18HealthExperienceUI23MedicalIDDataSourceItem_currentMedicalIDDataResultPresented) = a1;
  sub_1BA1698F8(v18);
  if (a1 < 2)
  {
    sub_1BA16A338(a1);
    sub_1BA4A3E48();
    v19 = sub_1BA4A3E88();
    v20 = sub_1BA4A6FC8();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_1B9F07000, v19, v20, "Medical ID data is unknown, waiting for value", v21, 2u);
      MEMORY[0x1BFAF43A0](v21, -1, -1);
    }

    (*(v9 + 8))(v11, v62);
    v63[0] = sub_1BA4A2978();
    sub_1BA16A348();
    sub_1BA1698B0(&qword_1EBBECD98, 255, sub_1BA16A348);
    v22 = sub_1BA4A4F98();

    *v8 = 1500;
    v23 = v61;
    (*(v6 + 104))(v8, *MEMORY[0x1E69E7F38], v61);
    v24 = sub_1BA169CBC(v22, v8);

    (*(v6 + 8))(v8, v23);
    v63[0] = v24;
    swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_1BA16A3B0();
    sub_1BA1698B0(&qword_1EBBECDB0, 255, sub_1BA16A3B0);
    v25 = sub_1BA4A5008();

    *(v3 + OBJC_IVAR____TtC18HealthExperienceUI23MedicalIDDataSourceItem_currentMedicalIDDataResultCancellable) = v25;

    return;
  }

  if (a1 != 2)
  {
    v45 = a1;

    sub_1BA168C40(a2 & 1);
    return;
  }

  v26 = *(v3 + OBJC_IVAR____TtC18HealthExperienceUI23MedicalIDDataSourceItem_presentingViewController);
  if (v26)
  {
    v27 = *(v3 + OBJC_IVAR____TtC18HealthExperienceUI23MedicalIDDataSourceItem_healthStore);
    v28 = v26;
    v29 = [v27 profileIdentifier];
    sub_1BA4A2A18();

    UIViewController.resolvedPinnedContentManager.getter(v63);
    v30 = objc_allocWithZone(type metadata accessor for FeedItemSuggestedActionViewController());
    v31 = FeedItemSuggestedActionViewController.init(_:pinnedContentManager:)(v17, v63);
    v33 = sub_1BA1698B0(&qword_1EBBECDB8, v32, type metadata accessor for MedicalIDDataSourceItem);
    v34 = &v31[OBJC_IVAR____TtC18HealthExperienceUI37FeedItemSuggestedActionViewController_suggestedActionDelegate];
    swift_beginAccess();
    *(v34 + 1) = v33;
    swift_unknownObjectWeakAssign();
    type metadata accessor for ProfileViewController();
    if (swift_dynamicCastClass())
    {
      v35 = v28;
      v36 = sub_1BA388464();
      if (v37)
      {
        v38 = v36;
        v39 = v37;
        type metadata accessor for MedicalIDDataSourceItem();
        ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
        v41 = [objc_opt_self() bundleForClass_];
        sub_1BA4A1318();

        sub_1B9F2EAC0();
        v42 = swift_allocObject();
        *(v42 + 16) = xmmword_1BA4B5480;
        *(v42 + 56) = MEMORY[0x1E69E6158];
        *(v42 + 64) = sub_1B9F1BE20();
        *(v42 + 32) = v38;
        *(v42 + 40) = v39;
        v43 = v31;
        sub_1BA4A6768();

        v44 = sub_1BA4A6758();

        [v43 setTitle_];

LABEL_19:
        v57 = [v28 navigationController];
        if (v57)
        {
          v58 = a2 & 1;
          v59 = v57;
          [v57 pushViewController:v31 animated:v58];
        }

        return;
      }
    }

    type metadata accessor for MedicalIDDataSourceItem();
    v53 = swift_getObjCClassFromMetadata();
    v54 = objc_opt_self();
    v55 = v31;
    v56 = [v54 bundleForClass_];
    sub_1BA4A1318();

    v44 = sub_1BA4A6758();

    [v55 setTitle_];
    goto LABEL_19;
  }

  sub_1BA4A3E48();
  v46 = sub_1BA4A3E88();
  v47 = sub_1BA4A6FC8();
  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v63[0] = v49;
    *v48 = 136315138;
    v50 = sub_1BA4A85D8();
    v52 = sub_1B9F0B82C(v50, v51, v63);

    *(v48 + 4) = v52;
    _os_log_impl(&dword_1B9F07000, v46, v47, "[%s] Did not have presentingViewController to display Medical ID view controller", v48, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v49);
    MEMORY[0x1BFAF43A0](v49, -1, -1);
    MEMORY[0x1BFAF43A0](v48, -1, -1);
  }

  (*(v9 + 8))(v14, v62);
}

void sub_1BA168C40(char a1)
{
  v2 = v1;
  v11 = [objc_opt_self() standardConfiguration];
  [v11 setIsDeletionAvailable_];
  [v11 setShouldShowDonateLifeRegistrationIfAvailable_];
  [v11 setSuggestHealthData_];
  [v11 setAccessPoint_];
  v4 = *(v1 + OBJC_IVAR____TtC18HealthExperienceUI23MedicalIDDataSourceItem_healthStore);
  v5 = sub_1BA4A2928();
  v6 = [objc_allocWithZone(MEMORY[0x1E69B1510]) initWithHealthStore:v4 medicalIDData:v5 displayConfiguration:v11];

  v7 = *(v2 + OBJC_IVAR____TtC18HealthExperienceUI23MedicalIDDataSourceItem_presentingViewController);
  if (v7)
  {
    v8 = [v7 navigationController];
    if (v8)
    {
      v9 = a1 & 1;
      v10 = v8;
      [v8 pushViewController:v6 animated:v9];
    }
  }
}

uint64_t sub_1BA168D94(void **a1)
{
  v2 = sub_1BA4A3EA8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v23 - v7;
  v9 = *a1;
  if (*a1)
  {
    sub_1BA4A3E48();
    v10 = v9;
    v11 = sub_1BA4A3E88();
    v12 = sub_1BA4A6FA8();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v23 = v9;
      v24 = v14;
      *v13 = 136446210;
      v15 = v9;
      sub_1B9F0D950(0, &qword_1EDC6E310);
      v16 = sub_1BA4A6808();
      v18 = sub_1B9F0B82C(v16, v17, &v24);

      *(v13 + 4) = v18;
      _os_log_impl(&dword_1B9F07000, v11, v12, "Failed to show Medical ID due to %{public}s", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v14);
      MEMORY[0x1BFAF43A0](v14, -1, -1);
      MEMORY[0x1BFAF43A0](v13, -1, -1);
    }

    return (*(v3 + 8))(v5, v2);
  }

  else
  {
    sub_1BA4A3E48();
    v20 = sub_1BA4A3E88();
    v21 = sub_1BA4A6FC8();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_1B9F07000, v20, v21, "Successfully displayed Medical ID view controller", v22, 2u);
      MEMORY[0x1BFAF43A0](v22, -1, -1);
    }

    return (*(v3 + 8))(v8, v2);
  }
}

void sub_1BA169018(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    if (sub_1BA4A2C08())
    {
      sub_1BA4A7DF8();
      MEMORY[0x1BFAF1350](0xD000000000000022, 0x80000001BA4EEDD0);
      sub_1BA4A7FB8();
      sub_1BA4A8018();
      __break(1u);
    }

    else
    {
      sub_1BA168388(v1, 1);
    }
  }
}

uint64_t sub_1BA16914C@<X0>(uint64_t *a1@<X8>)
{
  sub_1BA16A660();
  result = swift_allocError();
  *a1 = result;
  return result;
}

id sub_1BA1691BC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MedicalIDDataSourceItem();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1BA1692F4()
{
  v1 = *(*v0 + OBJC_IVAR____TtC18HealthExperienceUI23MedicalIDDataSourceItem_reuseIdentifier);

  return v1;
}

uint64_t sub_1BA16934C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(*v3 + *a3);

  return v4;
}

uint64_t sub_1BA16939C()
{
  v1 = (*v0 + OBJC_IVAR____TtC18HealthExperienceUI23MedicalIDDataSourceItem_baseIdentifier);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t sub_1BA1693F8(uint64_t a1, uint64_t a2)
{
  v5 = (*v2 + OBJC_IVAR____TtC18HealthExperienceUI23MedicalIDDataSourceItem_baseIdentifier);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

uint64_t sub_1BA1694C0()
{
  v1 = *(*v0 + OBJC_IVAR____TtC18HealthExperienceUI23MedicalIDDataSourceItem_uniqueIdentifier);

  return v1;
}

uint64_t sub_1BA169500(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE0DA58](a1, WitnessTable);
}

void sub_1BA169564(uint64_t a1, void *a2)
{
  v3 = *v2;
  v4 = *(*v2 + OBJC_IVAR____TtC18HealthExperienceUI23MedicalIDDataSourceItem_presentingViewController);
  *(v3 + OBJC_IVAR____TtC18HealthExperienceUI23MedicalIDDataSourceItem_presentingViewController) = a2;
  v5 = a2;

  v6 = sub_1BA4A2968();
  sub_1BA168388(v6, 1);

  sub_1BA1698F8(v6);
}

void sub_1BA1695D8(uint64_t a1)
{
  sub_1B9FF168C(a1, v10);
  if (!v11)
  {
    sub_1B9F23224(v10);
    goto LABEL_8;
  }

  sub_1B9F0ADF8(0, &qword_1EBBECD88);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_8:
    sub_1BA4A8018();
    __break(1u);
    return;
  }

  v2 = v9;
  v3 = *(v1 + OBJC_IVAR____TtC18HealthExperienceUI23MedicalIDDataSourceItem_presentingViewController);
  if (v3)
  {
    v4 = [v3 navigationController];
    if (v4)
    {
      v5 = v4;

      v6 = *(v1 + OBJC_IVAR____TtC18HealthExperienceUI23MedicalIDDataSourceItem_currentMedicalIDDataResultPresented);
      *(v1 + OBJC_IVAR____TtC18HealthExperienceUI23MedicalIDDataSourceItem_currentMedicalIDDataResultPresented) = v9;
      v7 = v9;
      sub_1BA1698F8(v6);
      v8 = v7;
      sub_1BA168C40(0);

      v2 = v5;
    }
  }
}

void sub_1BA169794(uint64_t a1, uint64_t a2, void *a3)
{
  if (a3)
  {
    v5 = a3;
    v3 = [v5 navigationController];
    if (v3)
    {
      v4 = v3;
      [v3 dismissViewControllerAnimated:1 completion:0];
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1BA169810(uint64_t a1, uint64_t a2)
{
  result = sub_1BA1698B0(&qword_1EBBECD70, a2, type metadata accessor for MedicalIDDataSourceItem);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1BA1698B0(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

void sub_1BA1698F8(id a1)
{
  if (a1 >= 3)
  {
  }
}

id sub_1BA169908(void *a1, void *a2)
{
  v3 = v2;
  v6 = sub_1BA4A1798();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = &v2[OBJC_IVAR____TtC18HealthExperienceUI23MedicalIDDataSourceItem_uniqueIdentifier];
  v31 = 0xD000000000000018;
  v32 = 0x80000001BA4EEE30;
  sub_1BA4A1788();
  sub_1BA1698B0(&qword_1EDC6AE60, 255, MEMORY[0x1E69695A8]);
  v11 = sub_1BA4A82D8();
  MEMORY[0x1BFAF1350](v11);

  (*(v7 + 8))(v9, v6);
  v12 = v32;
  *v10 = v31;
  v10[1] = v12;
  v13 = &v2[OBJC_IVAR____TtC18HealthExperienceUI23MedicalIDDataSourceItem_text];
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  *v13 = sub_1BA4A1318();
  v13[1] = v14;
  v15 = &v3[OBJC_IVAR____TtC18HealthExperienceUI23MedicalIDDataSourceItem_detailText];
  *v15 = 0;
  v15[1] = 0;
  v3[OBJC_IVAR____TtC18HealthExperienceUI23MedicalIDDataSourceItem_showDisclosureIndicator] = 1;
  v16 = &v3[OBJC_IVAR____TtC18HealthExperienceUI23MedicalIDDataSourceItem_reuseIdentifier];
  v31 = type metadata accessor for CollectionViewListDisclosureCell();
  sub_1BA16A6B4();
  *v16 = sub_1BA4A6808();
  v16[1] = v17;
  sub_1B9F23348(0, &qword_1EDC6E330, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1BA4B5460;
  *(v18 + 32) = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  *(v18 + 40) = v19;
  strcpy((v18 + 48), "ShowMedicalID");
  *(v18 + 62) = -4864;
  v20 = sub_1BA4A6AE8();

  v21 = HKUIJoinStringsForAutomationIdentifier();

  if (v21)
  {
    v22 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    v24 = v23;
  }

  else
  {
    v22 = 0;
    v24 = 0;
  }

  v25 = &v3[OBJC_IVAR____TtC18HealthExperienceUI23MedicalIDDataSourceItem_baseIdentifier];
  *v25 = v22;
  v25[1] = v24;
  *&v3[OBJC_IVAR____TtC18HealthExperienceUI23MedicalIDDataSourceItem_presentingViewController] = 0;
  *&v3[OBJC_IVAR____TtC18HealthExperienceUI23MedicalIDDataSourceItem_currentMedicalIDDataResultCancellable] = 0;
  *&v3[OBJC_IVAR____TtC18HealthExperienceUI23MedicalIDDataSourceItem_currentMedicalIDDataResultPresented] = 0;
  *&v3[OBJC_IVAR____TtC18HealthExperienceUI23MedicalIDDataSourceItem_healthStore] = a1;
  *&v3[OBJC_IVAR____TtC18HealthExperienceUI23MedicalIDDataSourceItem_medicalIDCache] = a2;
  v26 = a1;
  v27 = a2;
  sub_1BA4A2938();
  v28 = type metadata accessor for MedicalIDDataSourceItem();
  v30.receiver = v3;
  v30.super_class = v28;
  return objc_msgSendSuper2(&v30, sel_init);
}

uint64_t sub_1BA169CBC(void *a1, uint64_t a2)
{
  v36 = a2;
  sub_1B9F3E26C();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v37 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_1BA4A6468();
  v5 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1BA4A72D8();
  v38 = *(v8 - 8);
  v39 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA16A428();
  v12 = v11;
  v13 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA16A4C0();
  v17 = *(v16 - 8);
  v32 = v16;
  v33 = v17;
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v31 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA16A590();
  v21 = *(v20 - 8);
  v34 = v20;
  v35 = v21;
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v31 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = a1;
  sub_1BA16A348();
  sub_1BA1698B0(&qword_1EBBECD98, 255, sub_1BA16A348);
  sub_1BA4A5028();
  sub_1B9F0D950(0, &qword_1EDC6E310);
  sub_1BA1698B0(&qword_1EBBECDD0, 255, sub_1BA16A428);
  sub_1BA4A5138();
  (*(v13 + 8))(v15, v12);
  (*(v5 + 16))(v7, v36, v31);
  sub_1BA4A72E8();
  sub_1B9F0ADF8(0, &qword_1EDC6B5A0);
  v24 = sub_1BA4A7308();
  v40 = v24;
  v25 = sub_1BA4A72A8();
  v26 = v37;
  (*(*(v25 - 8) + 56))(v37, 1, 1, v25);
  sub_1BA1698B0(&unk_1EBBECDE8, 255, sub_1BA16A4C0);
  sub_1B9F3DC80();
  v27 = v32;
  sub_1BA4A50B8();
  sub_1B9F3E2C4(v26);

  (*(v38 + 8))(v10, v39);
  (*(v33 + 8))(v19, v27);
  sub_1BA1698B0(&qword_1EBBECDF8, 255, sub_1BA16A590);
  v28 = v34;
  v29 = sub_1BA4A4F98();
  (*(v35 + 8))(v23, v28);
  return v29;
}

void sub_1BA16A26C()
{
  v4 = [objc_allocWithZone(MEMORY[0x1E696C248]) initWithHealthStore_];
  [v4 deleteMedicalIDDataWithCompletion_];
  v1 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI23MedicalIDDataSourceItem_presentingViewController);
  if (v1)
  {
    v2 = [v1 navigationController];
    if (v2)
    {
      v3 = v2;

      sub_1BA168388(2, 0);
    }
  }
}

id sub_1BA16A338(id result)
{
  if (result >= 3)
  {
    return result;
  }

  return result;
}

void sub_1BA16A348()
{
  if (!qword_1EBBECD90)
  {
    v0 = sub_1BA4A4D18();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBBECD90);
    }
  }
}

void sub_1BA16A3B0()
{
  if (!qword_1EBBECDA0)
  {
    sub_1B9F0D950(255, &qword_1EDC6E310);
    v0 = sub_1BA4A4D18();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBBECDA0);
    }
  }
}

void sub_1BA16A428()
{
  if (!qword_1EBBECDC0)
  {
    sub_1BA16A348();
    sub_1BA1698B0(&qword_1EBBECD98, 255, sub_1BA16A348);
    v0 = sub_1BA4A4AD8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBBECDC0);
    }
  }
}

void sub_1BA16A4C0()
{
  if (!qword_1EBBECDC8)
  {
    sub_1BA16A428();
    sub_1B9F0D950(255, &qword_1EDC6E310);
    sub_1BA1698B0(&qword_1EBBECDD0, 255, sub_1BA16A428);
    v0 = sub_1BA4A4B38();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBBECDC8);
    }
  }
}

void sub_1BA16A590()
{
  if (!qword_1EBBECDD8)
  {
    sub_1BA16A4C0();
    sub_1B9F0ADF8(255, &qword_1EDC6B5A0);
    sub_1BA1698B0(&unk_1EBBECDE8, 255, sub_1BA16A4C0);
    sub_1B9F3DC80();
    v0 = sub_1BA4A4C38();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBBECDD8);
    }
  }
}

unint64_t sub_1BA16A660()
{
  result = qword_1EBBECE00;
  if (!qword_1EBBECE00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBECE00);
  }

  return result;
}

unint64_t sub_1BA16A6B4()
{
  result = qword_1EDC6BE20;
  if (!qword_1EDC6BE20)
  {
    type metadata accessor for CollectionViewListDisclosureCell();
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_1EDC6BE20);
  }

  return result;
}

unint64_t sub_1BA16A710()
{
  result = qword_1EBBECE10;
  if (!qword_1EBBECE10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBECE10);
  }

  return result;
}

uint64_t sub_1BA16A76C()
{
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  result = sub_1BA4A1318();
  qword_1EBBECE20 = result;
  *algn_1EBBECE28 = v1;
  return result;
}

uint64_t sub_1BA16A830()
{
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  result = sub_1BA4A1318();
  qword_1EBBECE30 = result;
  *algn_1EBBECE38 = v1;
  return result;
}

uint64_t sub_1BA16A8F0()
{
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  result = sub_1BA4A1318();
  qword_1EBBECE40 = result;
  *algn_1EBBECE48 = v1;
  return result;
}

uint64_t sub_1BA16A99C()
{
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  result = sub_1BA4A1318();
  qword_1EBBECE50 = result;
  *algn_1EBBECE58 = v1;
  return result;
}

uint64_t sub_1BA16AA48()
{
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  result = sub_1BA4A1318();
  qword_1EBBECE60 = result;
  *algn_1EBBECE68 = v1;
  return result;
}

uint64_t sub_1BA16AAF4()
{
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  result = sub_1BA4A1318();
  qword_1EBBECE70 = result;
  *algn_1EBBECE78 = v1;
  return result;
}

uint64_t sub_1BA16ABA0()
{
  v1 = OBJC_IVAR____TtCC18HealthExperienceUI39SummarySharingAlertsSelectionDataSourceP33_DBCA476D2670707FCCF6662511BF365A13Configuration_id;
  v2 = sub_1BA4A1798();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtCC18HealthExperienceUI39SummarySharingAlertsSelectionDataSourceP33_DBCA476D2670707FCCF6662511BF365A13Configuration_healthExperienceStore);
  sub_1BA172980(v0 + OBJC_IVAR____TtCC18HealthExperienceUI39SummarySharingAlertsSelectionDataSourceP33_DBCA476D2670707FCCF6662511BF365A13Configuration_selectionFlow, type metadata accessor for SummarySharingSelectionFlow);
  sub_1B9FAB600(v0 + OBJC_IVAR____TtCC18HealthExperienceUI39SummarySharingAlertsSelectionDataSourceP33_DBCA476D2670707FCCF6662511BF365A13Configuration_selectedDataTypesDelegate);

  return swift_deallocClassInstance();
}

uint64_t sub_1BA16AC90(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  v66 = a3;
  v67 = *v4;
  sub_1BA170230(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v59 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for SummarySharingSelectionFlow(0);
  v63 = *(v10 - 8);
  v62 = v63[8];
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);

  sub_1B9F0A534(a1, v73);
  v61 = type metadata accessor for SummarySharingSelectionFlow;
  sub_1BA16FF9C(a3, v12, type metadata accessor for SummarySharingSelectionFlow);
  type metadata accessor for SummarySharingAlertsSelectionDataSource.Configuration(0);
  v13 = swift_allocObject();
  sub_1BA4A1788();
  v14 = v13 + OBJC_IVAR____TtCC18HealthExperienceUI39SummarySharingAlertsSelectionDataSourceP33_DBCA476D2670707FCCF6662511BF365A13Configuration_selectedDataTypesDelegate;
  *(v13 + OBJC_IVAR____TtCC18HealthExperienceUI39SummarySharingAlertsSelectionDataSourceP33_DBCA476D2670707FCCF6662511BF365A13Configuration_selectedDataTypesDelegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v15 = OBJC_IVAR____TtCC18HealthExperienceUI39SummarySharingAlertsSelectionDataSourceP33_DBCA476D2670707FCCF6662511BF365A13Configuration_iconCache;
  *(v13 + v15) = sub_1B9FDB1F8(MEMORY[0x1E69E7CC0]);
  sub_1B9F1134C(v73, v13 + OBJC_IVAR____TtCC18HealthExperienceUI39SummarySharingAlertsSelectionDataSourceP33_DBCA476D2670707FCCF6662511BF365A13Configuration_healthExperienceStore);
  v60 = type metadata accessor for SummarySharingSelectionFlow;
  sub_1BA172650(v12, v13 + OBJC_IVAR____TtCC18HealthExperienceUI39SummarySharingAlertsSelectionDataSourceP33_DBCA476D2670707FCCF6662511BF365A13Configuration_selectionFlow, type metadata accessor for SummarySharingSelectionFlow);
  *(v14 + 8) = 0;
  swift_unknownObjectWeakAssign();
  *(v13 + OBJC_IVAR____TtCC18HealthExperienceUI39SummarySharingAlertsSelectionDataSourceP33_DBCA476D2670707FCCF6662511BF365A13Configuration_hasShowAllButton) = a4;
  *(v4 + qword_1EBBECE80) = v13;

  v16 = sub_1BA171E0C();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v17 = sub_1BA4A1B68();
  v18 = [objc_allocWithZone(MEMORY[0x1E695D600]) initWithFetchRequest:v16 managedObjectContext:v17 sectionNameKeyPath:0 cacheName:0];

  sub_1B9F126E0();
  v20 = objc_allocWithZone(v19);
  v65 = v18;
  v21 = _s18HealthExperienceUI33FeedItemSuggestedActionDataSourceCyACSo26NSFetchedResultsControllerCy0A8Platform0dE0CGcfc_0(v65);
  type metadata accessor for SummarySharingSelectionContextDelegate();
  v22 = swift_allocObject();
  *(v22 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v22 + 24) = 0;
  swift_unknownObjectWeakAssign();
  sub_1BA4A27B8();
  sub_1B9F0CA3C(0, &qword_1EDC6B460, MEMORY[0x1E69A3C08], MEMORY[0x1E69E6F90]);
  v23 = sub_1BA4A1C68();
  v24 = *(v23 - 8);
  v25 = (*(v24 + 80) + 32) & ~*(v24 + 80);
  v26 = swift_allocObject();
  v58 = xmmword_1BA4B5480;
  *(v26 + 16) = xmmword_1BA4B5480;
  (*(v24 + 104))(v26 + v25, *MEMORY[0x1E69A3B78], v23);
  v27 = sub_1BA4A0FA8();
  v28 = v59;
  (*(*(v27 - 8) + 56))(v59, 1, 1, v27);
  sub_1B9F1C0E4(0, &qword_1EDC6B450, MEMORY[0x1E69A3C58], MEMORY[0x1E69E6F90]);
  v29 = swift_allocObject();
  *(v29 + 16) = v58;
  *&v58 = v21;
  *(v29 + 32) = sub_1BA4A1D78();
  v30 = MEMORY[0x1BFAED020](v26, 0, v28, v29);

  sub_1BA172980(v28, sub_1BA170230);
  v64 = a1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v31 = sub_1BA4A1B68();
  v59 = v31;
  sub_1BA16FF9C(v66, v12, v61);
  v32 = (*(v63 + 80) + 16) & ~*(v63 + 80);
  v33 = (v62 + v32 + 7) & 0xFFFFFFFFFFFFFFF8;
  v34 = swift_allocObject();
  sub_1BA172650(v12, v34 + v32, v60);
  *(v34 + v33) = v13;
  *(v34 + ((v33 + 15) & 0xFFFFFFFFFFFFFFF8)) = v67;
  sub_1BA1722CC();
  v35 = swift_allocObject();
  *(v35 + *(*v35 + 600)) = MEMORY[0x1E69E7CC0];
  v36 = (v35 + *(*v35 + 608));
  *v36 = sub_1BA17220C;
  v36[1] = v34;
  type metadata accessor for FetchedResultsContext();
  swift_allocObject();

  v37 = v30;
  v63 = v37;
  v38 = sub_1BA0A31C4(v31);

  sub_1BA0A27C8();
  *(v35 + *(*v35 + 616)) = v38;
  v39 = swift_allocObject();
  v39[2] = sub_1BA17220C;
  v39[3] = v34;
  v39[4] = v38;
  v40 = v35 + qword_1EDC64EB0;
  *v40 = sub_1BA17233C;
  *(v40 + 8) = v39;
  *(v40 + 16) = 0;
  v41 = v58;
  *(v35 + qword_1EDC84BB8) = v58;
  *(v35 + *(*v35 + 512)) = v22;
  *(v35 + *(*v35 + 520)) = 1;
  *&v73[0] = v22;
  v42 = v41;
  swift_retain_n();
  v43 = v42;

  v44 = sub_1B9F18214();
  v69 = sub_1BA17233C;
  v70 = v39;
  v71 = v73;
  v72 = 1;
  v45 = sub_1BA2F4270(sub_1BA1723B8, v68, v44);

  *&v73[0] = 0x534464657070614DLL;
  *(&v73[0] + 1) = 0xE90000000000003CLL;
  v46 = *&v43[qword_1EDC84AD0];
  v47 = *&v43[qword_1EDC84AD0 + 8];

  MEMORY[0x1BFAF1350](v46, v47);

  MEMORY[0x1BFAF1350](62, 0xE100000000000000);
  v48 = MutableArrayDataSource.init(arrangedSections:identifier:)(v45, *&v73[0], *(&v73[0] + 1));
  v49 = *(v48 + qword_1EDC84BB8);
  v50 = qword_1EBBEA528;
  swift_beginAccess();
  [*(v49 + v50) registerObserver_];

  v51 = *(*(v48 + *(*v48 + 616)) + 16);
  v52 = qword_1EBBEA528;
  swift_beginAccess();
  v53 = *(v51 + v52);

  [v53 registerObserver_];

  v54 = swift_allocObject();
  v55 = v67;
  *(v54 + 16) = v13;
  *(v54 + 24) = v55;

  v56 = sub_1BA271888(v48, sub_1BA172410, v54, 1);

  sub_1BA172980(v66, type metadata accessor for SummarySharingSelectionFlow);
  __swift_destroy_boxed_opaque_existential_1(v64);
  return v56;
}

uint64_t sub_1BA16B5E4(uint64_t a1, uint64_t *a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v130 = a5;
  v131 = a4;
  v128 = a3;
  v133 = type metadata accessor for SummarySharingSelectionFlow(0);
  v7 = *(v133 - 8);
  MEMORY[0x1EEE9AC00](v133);
  v9 = &v114 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v127 = &v114 - v11;
  v129 = type metadata accessor for SummarySharingSelectableDataTypeItem(0);
  MEMORY[0x1EEE9AC00](v129);
  v13 = &v114 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA17294C(0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v114 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA1728B8(0);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v114 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v134 = type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent(0);
  v132 = *(v134 - 8);
  MEMORY[0x1EEE9AC00](v134);
  v21 = &v114 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v114 - v23;
  v25 = *a2;
  sub_1B9F0A534(a1, v138);
  sub_1B9F0D9AC(0, &qword_1EDC6AD50);
  sub_1BA4A27B8();
  if ((swift_dynamicCast() & 1) == 0)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v122 = v9;
  v124 = v13;
  v125 = v24;
  v26 = v136;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v27 = *(v25 + 24);
    ObjectType = swift_getObjectType();
    v29 = (*(v27 + 8))(ObjectType, v27);
    swift_unknownObjectRelease();

    v30 = [v26 uniqueIdentifier];
    v31 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    v33 = v32;

    swift_beginAccess();
    v34 = *(v29 + 32);

    v123 = sub_1BA3D30B0(v31, v33, v34);
    v126 = v29;
  }

  else
  {
    v123 = 0;
    v126 = 0;
  }

  if (FeedItem.pluginInfo.getter())
  {
    v35 = sub_1BA4A3AD8();

    v36 = sub_1BA2FD9C4();
    v38 = v37;

    if (v36)
    {
      v39 = swift_getObjectType();
      sub_1BA16FF9C(v131, v16, type metadata accessor for SummarySharingSelectionFlow);
      (*(v7 + 56))(v16, 0, 1, v133);
      (*(v38 + 40))(v26, v16, v39, v38);
      sub_1BA172980(v16, sub_1BA17294C);
      v40 = *(v132 + 48);
      if (v40(v19, 1, v134) == 1)
      {
        swift_unknownObjectRelease();
        v41 = sub_1BA1728B8;
        v42 = v19;
LABEL_19:
        sub_1BA172980(v42, v41);
        goto LABEL_20;
      }

      v131 = v36;
      v43 = v125;
      sub_1BA172650(v19, v125, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
      v44 = *(v43 + 8);
      if (v44)
      {
        v45 = v44;
        if ((HKObjectType.isHealthSharingAlert.getter() & 1) != 0 && *(v43 + 24))
        {
          v116._object = *(v43 + 24);
          v117 = v40;
          v46 = v45;
          v116._countAndFlagsBits = *(v43 + 16);
          sub_1BA16FF9C(v43, v21, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
          Strong = swift_unknownObjectWeakLoadStrong();
          v120 = *(v25 + 24);
          v136 = type metadata accessor for SummarySharingSelectableDataTypeCell();
          sub_1BA1729E0(0, &qword_1EBBE9DF8, type metadata accessor for SummarySharingSelectableDataTypeCell);
          v47 = v26;
          v48 = sub_1BA4A6808();
          v50 = v49;
          v51 = v124;
          *(v124 + 5) = 0;
          swift_unknownObjectWeakInit();
          v118 = &v51[*(v129 + 40)];
          v132 = *(v132 + 56);
          (v132)();
          *v51 = v48;
          *(v51 + 1) = v50;
          v136 = 0xD000000000000025;
          v137 = 0x80000001BA4E3640;
          v52 = [v47 uniqueIdentifier];
          v53 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
          v55 = v54;

          MEMORY[0x1BFAF1350](v53, v55);

          v56 = v137;
          *(v51 + 2) = v136;
          *(v51 + 3) = v56;
          v57 = [v47 uniqueIdentifier];
          v58 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
          v60 = v59;
          v115 = v47;

          *(v51 + 7) = v58;
          *(v51 + 8) = v60;
          v61 = v118;
          sub_1BA172980(v118, sub_1BA1728B8);
          sub_1BA172650(v21, v61, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
          (v132)(v61, 0, 1, v134);
          v51[49] = v123 & 1;
          *(v51 + 5) = v120;
          swift_unknownObjectWeakAssign();
          swift_unknownObjectRelease();
          v51[48] = 1;
          v62 = v128;
          if (v128 >> 62)
          {
            goto LABEL_83;
          }

          for (i = *((v128 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1BA4A7CC8())
          {
            v64 = v130;
            v65 = v46;
            if (!i)
            {
              break;
            }

            v61 = 0;
            v132 = v62 & 0xC000000000000001;
            Strong = v62 & 0xFFFFFFFFFFFFFF8;
            v120 = (v62 + 32);
            v114 = i;
            while (1)
            {
              if (v132)
              {
                v67 = MEMORY[0x1BFAF2860](v61, v128);
              }

              else
              {
                if (v61 >= *(Strong + 16))
                {
                  goto LABEL_82;
                }

                v67 = *&v120[8 * v61];
              }

              v62 = v67;
              if (__OFADD__(v61++, 1))
              {
                break;
              }

              v69 = sub_1BA4A2758();
              v70 = v69;
              if ((v69 & 0xC000000000000001) != 0)
              {
                v71 = v65;
                v72 = sub_1BA4A7D08();

                if (v72)
                {
                  v119 = v62;
                  goto LABEL_44;
                }
              }

              else if (*(v69 + 16))
              {
                v119 = v62;
                sub_1B9F0ADF8(0, &qword_1EDC6E920);
                v73 = sub_1BA4A7788();
                v74 = -1 << *(v70 + 32);
                v75 = v73 & ~v74;
                if ((*(v70 + 56 + ((v75 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v75))
                {
                  v62 = ~v74;
                  while (1)
                  {
                    v76 = *(*(v70 + 48) + 8 * v75);
                    v77 = sub_1BA4A7798();

                    if (v77)
                    {
                      break;
                    }

                    v75 = (v75 + 1) & v62;
                    if (((*(v70 + 56 + ((v75 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v75) & 1) == 0)
                    {
                      goto LABEL_23;
                    }
                  }

                  v64 = v130;
                  v65 = v46;
                  goto LABEL_44;
                }

LABEL_23:

                v64 = v130;
                v65 = v46;
                i = v114;
              }

              else
              {
              }

              if (v61 == i)
              {
                v119 = 0;
LABEL_44:
                v61 = v118;
                goto LABEL_45;
              }
            }

            __break(1u);
LABEL_82:
            __break(1u);
LABEL_83:
            ;
          }

          v119 = 0;
LABEL_45:
          v78 = LocalizedGeminiHealthAlertTitle(_:value:)(v65, v116);
          v79 = v117;
          if (!v117(v61, 1, v134))
          {
            *(v61 + 16) = v78;
          }

          v80 = OBJC_IVAR____TtCC18HealthExperienceUI39SummarySharingAlertsSelectionDataSourceP33_DBCA476D2670707FCCF6662511BF365A13Configuration_selectionFlow;
          v81 = v127;
          sub_1BA16FF9C(v64 + OBJC_IVAR____TtCC18HealthExperienceUI39SummarySharingAlertsSelectionDataSourceP33_DBCA476D2670707FCCF6662511BF365A13Configuration_selectionFlow, v127, type metadata accessor for SummarySharingSelectionFlow);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            sub_1BA172980(v81, type metadata accessor for SummarySharingSelectionFlow);
            goto LABEL_65;
          }

          v82 = OBJC_IVAR____TtCC18HealthExperienceUI39SummarySharingAlertsSelectionDataSourceP33_DBCA476D2670707FCCF6662511BF365A13Configuration_iconCache;
          swift_beginAccess();
          v83 = sub_1BA03E8C8(v65, *(v64 + v82));
          swift_endAccess();
          if (v83)
          {
            if (v79(v61, 1, v134))
            {

              goto LABEL_65;
            }

            v91 = *(v61 + 48);
            *(v61 + 48) = v83;
          }

          else
          {
            v84 = sub_1BA39EEFC(v65);
            if (!v84)
            {
              goto LABEL_65;
            }

            v85 = v84;
            v86 = v61;
            swift_beginAccess();
            v87 = *(v64 + v82);
            if ((v87 & 0xC000000000000001) != 0)
            {
              if (v87 < 0)
              {
                v88 = *(v64 + v82);
              }

              else
              {
                v88 = v87 & 0xFFFFFFFFFFFFFF8;
              }

              v89 = v85;
              v90 = v65;
              result = sub_1BA4A7CC8();
              if (__OFADD__(result, 1))
              {
                __break(1u);
                return result;
              }

              *(v64 + v82) = sub_1BA1703E0(v88, result + 1);
            }

            else
            {
              v89 = v85;
              v92 = v65;
            }

            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v135 = *(v64 + v82);
            sub_1B9FF1C30(v89, v65, isUniquelyReferenced_nonNull_native);
            *(v64 + v82) = v135;

            swift_endAccess();
            if (v79(v86, 1, v134))
            {

              goto LABEL_65;
            }

            v91 = *(v86 + 48);
            *(v86 + 48) = v85;
          }

LABEL_65:
          v94 = v126;
          if (v126)
          {

            v95 = v115;
            v96 = [v115 uniqueIdentifier];
            v97 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
            v99 = v98;

            swift_beginAccess();
            v100 = *(v94 + 40);

            v101 = sub_1BA3D30B0(v97, v99, v100);

            v102 = v124;
          }

          else
          {
            v101 = 0;
            v102 = v124;
            v95 = v115;
          }

          if (v119)
          {
            v103 = v119;
            v104 = sub_1BA4A2768();

            v105 = sub_1BA4A2018();
            v107 = sub_1BA3D30B0(v105, v106, v104);

            if ((*(v64 + OBJC_IVAR____TtCC18HealthExperienceUI39SummarySharingAlertsSelectionDataSourceP33_DBCA476D2670707FCCF6662511BF365A13Configuration_hasShowAllButton) & 1) == 0)
            {
              goto LABEL_75;
            }
          }

          else if (*(v64 + OBJC_IVAR____TtCC18HealthExperienceUI39SummarySharingAlertsSelectionDataSourceP33_DBCA476D2670707FCCF6662511BF365A13Configuration_hasShowAllButton) != 1)
          {
            v107 = 0;
LABEL_75:
            v112 = v122;
            sub_1BA16FF9C(v64 + v80, v122, type metadata accessor for SummarySharingSelectionFlow);
            if (swift_getEnumCaseMultiPayload() == 1)
            {
              v113 = v123 | v101 | v107;
              sub_1BA172980(v112, type metadata accessor for SummarySharingSelectionFlow);
              v108 = v125;
              if ((v113 & 1) == 0)
              {
                goto LABEL_79;
              }

LABEL_73:
              sub_1BA172450(0, &qword_1EDC5DCA0, &qword_1EDC6AD50, MEMORY[0x1E69A3310], MEMORY[0x1E69E6F90]);
              v109 = swift_allocObject();
              *(v109 + 16) = xmmword_1BA4B5480;
              *(v109 + 56) = v129;
              *(v109 + 64) = sub_1BA1721C4(&unk_1EBBE9B38, type metadata accessor for SummarySharingSelectableDataTypeItem);
              v110 = v109;
              boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v109 + 32));
              sub_1BA172650(v102, boxed_opaque_existential_1, type metadata accessor for SummarySharingSelectableDataTypeItem);
              swift_unknownObjectRelease();

LABEL_80:
              sub_1BA172980(v108, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
              return v110;
            }

            sub_1BA172980(v112, type metadata accessor for SummarySharingSelectionFlow);
            v108 = v125;
            if (v107)
            {
              goto LABEL_73;
            }

LABEL_79:

            swift_unknownObjectRelease();

            sub_1BA172980(v102, type metadata accessor for SummarySharingSelectableDataTypeItem);
            v110 = MEMORY[0x1E69E7CC0];
            goto LABEL_80;
          }

          v108 = v125;
          if ((v123 | v101))
          {
            goto LABEL_73;
          }

          goto LABEL_79;
        }

        swift_unknownObjectRelease();
      }

      else
      {
        swift_unknownObjectRelease();
      }

      v41 = type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent;
      v42 = v43;
      goto LABEL_19;
    }
  }

LABEL_20:

  return MEMORY[0x1E69E7CC0];
}

__n128 sub_1BA16C490@<Q0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v53 = a2;
  v5 = sub_1BA4A1798();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  v10 = a1[1];
  v11 = a1[2];
  v12 = a1[3];
  v14 = a1[4];
  v13 = a1[5];
  v65.n128_u64[0] = v9;
  v65.n128_u64[1] = v10;
  *&v66 = v11;
  *(&v66 + 1) = v12;
  v67 = v14;
  v68 = v13;
  v52 = v11[2];
  if (v52)
  {

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v11 = sub_1BA2F67D4(v11);
    }

    v15 = v11[2];
    *&v59 = v11 + 4;
    *(&v59 + 1) = v15;
    sub_1BA17061C(&v59);
    *&v66 = v11;
    v16 = Array<A>.identifierToIndexDict()(v11);

    *(&v66 + 1) = v16;
  }

  else
  {
    v17 = qword_1EBBE88D0;

    if (v17 != -1)
    {
      swift_once();
    }

    v18 = *algn_1EBBF1688;
    v51 = qword_1EBBF1680;
    *&v59 = type metadata accessor for SummarySharingIconWithNameCell();
    sub_1BA1729E0(0, &qword_1EBBE9DF0, type metadata accessor for SummarySharingIconWithNameCell);
    v48 = v18;

    v50 = sub_1BA4A6808();
    v49 = v19;
    *&v59 = 0xD00000000000001FLL;
    *(&v59 + 1) = 0x80000001BA4EF020;
    sub_1BA4A1788();
    v20 = sub_1BA4A1748();
    v22 = v21;
    (*(v6 + 8))(v8, v5);
    MEMORY[0x1BFAF1350](v20, v22);

    v23 = v59;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v11 = sub_1B9F281E8(0, v11[2] + 1, 1, v11);
    }

    v25 = v11[2];
    v24 = v11[3];
    v47 = a3;
    if (v25 >= v24 >> 1)
    {
      v11 = sub_1B9F281E8((v24 > 1), v25 + 1, 1, v11);
    }

    v26 = v50;
    *&v55 = v50;
    v27 = v49;
    *(&v55 + 1) = v49;
    v56 = v23;
    v28 = v51;
    *&v57 = v51;
    v29 = v48;
    *(&v57 + 1) = v48;
    v58 = 0uLL;
    *(&v60 + 1) = &type metadata for SummarySharingIconWithNameItem;
    v61 = sub_1BA14D884();
    v30 = swift_allocObject();
    *&v59 = v30;
    v31 = v56;
    v30[1] = v55;
    v30[2] = v31;
    v32 = v58;
    v30[3] = v57;
    v30[4] = v32;
    v11[2] = v25 + 1;
    sub_1B9F1134C(&v59, &v11[5 * v25 + 4]);
    *&v59 = v26;
    *(&v59 + 1) = v27;
    v60 = v23;
    v61 = v28;
    v62 = v29;
    v63 = 0;
    v64 = 0;
    sub_1BA14D8D8(&v55, v54);
    sub_1BA14D934(&v59);
    *&v66 = v11;
    v16 = Array<A>.identifierToIndexDict()(v11);

    *(&v66 + 1) = v16;
    v10 = v65.n128_u64[1];
    v9 = v65.n128_u64[0];
    v11 = v66;
    v14 = v67;
    v13 = v68;
    a3 = v47;
  }

  v33 = v52 != 0;
  *&v59 = v9;
  *(&v59 + 1) = v10;
  *&v60 = v11;
  *(&v60 + 1) = v16;
  v61 = v14;
  v62 = v13;

  v34 = v53;
  sub_1BA16ECDC(&v59, v53, v33, &v55);

  v35 = *(&v56 + 1);
  v36 = v57;
  v37 = __swift_project_boxed_opaque_existential_1(&v55, *(&v56 + 1));
  *(&v60 + 1) = v35;
  v61 = *(v36 + 8);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v59);
  (*(*(v35 - 8) + 16))(boxed_opaque_existential_1, v37, v35);
  sub_1B9F1134C(&v59, v54);
  v39 = v11[2];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || v39 >= v11[3] >> 1)
  {
    v11 = sub_1B9F281E8(isUniquelyReferenced_nonNull_native, v39 + 1, 1, v11);
    *&v66 = v11;
  }

  sub_1BA17029C(0, 0, 1, v54, &qword_1EDC6AD50, MEMORY[0x1E69A3310], &qword_1EBBECEE8);
  *&v66 = v11;
  v41 = Array<A>.identifierToIndexDict()(v11);

  *(&v66 + 1) = v41;
  __swift_destroy_boxed_opaque_existential_1(&v55);
  sub_1BA16D9E4(&v65, v34);
  v42 = v67;
  v43 = v68;
  result = v65;
  v45 = v66;
  *a3 = v65;
  *(a3 + 16) = v45;
  *(a3 + 32) = v42;
  *(a3 + 40) = v43;
  return result;
}

uint64_t sub_1BA16CA30()
{
  v1 = v0;
  v2 = *(v0 + qword_1EDC84BB8);
  v3 = *(v2 + qword_1EDC84BB8);
  v4 = *(*v2 + 512);
  swift_beginAccess();
  v5 = *(v2 + v4);
  v6 = *(v2 + *(*v2 + 520));
  v7 = *(v2 + qword_1EDC64EB0);
  v8 = *(v2 + qword_1EDC64EB0 + 8);
  v9 = *(v2 + qword_1EDC64EB0 + 16);

  v10 = v3;
  v11 = sub_1BA1E433C(v10, v5, v6, v7, v8, v9);

  sub_1BA0E7F10(v11, 1);

  LOBYTE(v5) = *(v1 + *(*v1 + 520));
  v12 = *(v1 + qword_1EDC64EB0);
  v13 = *(v1 + qword_1EDC64EB0 + 8);
  LOBYTE(v8) = *(v1 + qword_1EDC64EB0 + 16);

  v15 = sub_1BA2710F0(v14, v5, v12, v13, v8);

  sub_1BA0E7F10(v15, 1);
}

uint64_t sub_1BA16CBD8()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_snapshot;
  sub_1B9F12538();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_1B9F18460(*(v0 + qword_1EDC64EB0), *(v0 + qword_1EDC64EB0 + 8), *(v0 + qword_1EDC64EB0 + 16));

  return v0;
}

uint64_t sub_1BA16CCBC()
{
  sub_1BA16CBD8();

  return swift_deallocClassInstance();
}

uint64_t sub_1BA16CDA4()
{
  result = sub_1BA4A1798();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for SummarySharingSelectionFlow(319);
    if (v2 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

void *sub_1BA16CE94(uint64_t a1)
{
  v3 = type metadata accessor for SummarySharingSelectionFlow(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ListLayoutConfiguration();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v19 - v10;
  v12 = *(a1 + 8);
  if (qword_1EDC6CB88 != -1)
  {
    swift_once();
  }

  v13 = __swift_project_value_buffer(v6, qword_1EDC6CB90);
  sub_1BA16FF9C(v13, v11, type metadata accessor for ListLayoutConfiguration);
  v14 = *(v6 + 88);
  v15 = sub_1BA4A47D8();
  v16 = *(v15 - 8);
  (*(v16 + 8))(&v11[v14], v15);
  (*(v16 + 104))(&v11[v14], *MEMORY[0x1E69DC288], v15);
  sub_1BA16FF9C(*(v1 + qword_1EBBECE80) + OBJC_IVAR____TtCC18HealthExperienceUI39SummarySharingAlertsSelectionDataSourceP33_DBCA476D2670707FCCF6662511BF365A13Configuration_selectionFlow, v5, type metadata accessor for SummarySharingSelectionFlow);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    *(v11 + 8) = 0x4034000000000000;
    sub_1BA172980(v5, type metadata accessor for SummarySharingSelectionFlow);
  }

  else
  {
    ListLayoutConfiguration.withFooter.getter(v8);
    sub_1BA170004(v8, v11);
  }

  v17 = ListLayoutConfiguration.layout(for:)(v12);
  sub_1BA172980(v11, type metadata accessor for ListLayoutConfiguration);
  return v17;
}

BOOL sub_1BA16D14C(uint64_t a1, uint64_t a2)
{
  sub_1BA1728B8(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v77 = &v72 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v78 = &v72 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v79 = &v72 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v72 - v11;
  sub_1BA17256C(0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v72 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v72 - v17;
  v19 = type metadata accessor for SummarySharingSelectableDataTypeItem(0);
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v80 = &v72 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v72 - v23;
  sub_1B9F0A534(a1, &v83);
  sub_1B9F0D9AC(0, &qword_1EDC6AD50);
  v25 = swift_dynamicCast();
  v26 = *(v20 + 56);
  if ((v25 & 1) == 0)
  {
    v26(v18, 1, 1, v19);
    v32 = sub_1BA17256C;
    v33 = v18;
LABEL_13:
    sub_1BA172980(v33, v32);
    return 0;
  }

  v26(v18, 0, 1, v19);
  sub_1BA172650(v18, v24, type metadata accessor for SummarySharingSelectableDataTypeItem);
  sub_1B9F0A534(a2, &v83);
  if ((swift_dynamicCast() & 1) == 0)
  {
    sub_1BA172980(v24, type metadata accessor for SummarySharingSelectableDataTypeItem);
    v26(v15, 1, 1, v19);
    v32 = sub_1BA17256C;
    v33 = v15;
    goto LABEL_13;
  }

  v26(v15, 0, 1, v19);
  sub_1BA172650(v15, v80, type metadata accessor for SummarySharingSelectableDataTypeItem);
  v27 = *(v19 + 40);
  v28 = v24;
  sub_1BA16FF9C(&v24[v27], v12, sub_1BA1728B8);
  v29 = type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent(0);
  v30 = *(*(v29 - 8) + 48);
  if (v30(v12, 1, v29) == 1)
  {
    v31 = v12;
LABEL_10:
    sub_1BA172980(v31, sub_1BA1728B8);
    goto LABEL_11;
  }

  v34 = *(v12 + 7);
  v35 = v34;
  sub_1BA172980(v12, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
  if (!v34)
  {
LABEL_11:
    sub_1BA172980(v80, type metadata accessor for SummarySharingSelectableDataTypeItem);
    v33 = v28;
LABEL_12:
    v32 = type metadata accessor for SummarySharingSelectableDataTypeItem;
    goto LABEL_13;
  }

  v36 = *(v19 + 40);
  v37 = v79;
  sub_1BA16FF9C(v80 + v36, v79, sub_1BA1728B8);
  if (v30(v37, 1, v29) == 1)
  {

    v31 = v37;
    goto LABEL_10;
  }

  v73 = v36;
  v39 = *(v37 + 7);
  v40 = v39;
  sub_1BA172980(v37, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
  if (!v39)
  {

    goto LABEL_11;
  }

  v79 = v35;
  v41 = [v35 displayName];
  v42 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  v74 = v43;
  v75 = v42;

  v76 = v40;
  v44 = [v40 displayName];
  v45 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  v47 = v46;

  if (v75 == v45 && v74 == v47)
  {
  }

  else
  {
    v48 = sub_1BA4A8338();

    if ((v48 & 1) == 0)
    {
      v57 = v79;
      v58 = [v79 displayName];
      v59 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      v61 = v60;

      v83 = v59;
      v84 = v61;
      v62 = v76;
      v63 = [v76 displayName];
      v64 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      v66 = v65;

      v81 = v64;
      v82 = v66;
      sub_1B9F252FC();
      v67 = sub_1BA4A7B78();

      sub_1BA172980(v80, type metadata accessor for SummarySharingSelectableDataTypeItem);
      sub_1BA172980(v28, type metadata accessor for SummarySharingSelectableDataTypeItem);
      return v67 == -1;
    }
  }

  v49 = v28 + v27;
  v50 = v28;
  v51 = v78;
  sub_1BA16FF9C(v49, v78, sub_1BA1728B8);
  v52 = v30(v51, 1, v29);
  v53 = v79;
  if (v52 == 1)
  {

    sub_1BA172980(v51, sub_1BA1728B8);
LABEL_35:
    sub_1BA172980(v80, type metadata accessor for SummarySharingSelectableDataTypeItem);
    v33 = v50;
    goto LABEL_12;
  }

  v54 = *(v51 + 16);
  v55 = *(v51 + 24);

  sub_1BA172980(v51, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
  if (!v55)
  {
LABEL_33:

    goto LABEL_34;
  }

  v56 = v77;
  sub_1BA16FF9C(v80 + v73, v77, sub_1BA1728B8);
  if (v30(v56, 1, v29) == 1)
  {

    sub_1BA172980(v56, sub_1BA1728B8);
LABEL_34:
    v50 = v28;
    goto LABEL_35;
  }

  v69 = *(v56 + 16);
  v70 = *(v56 + 24);

  sub_1BA172980(v56, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
  if (!v70)
  {

    goto LABEL_33;
  }

  v83 = v54;
  v84 = v55;
  v81 = v69;
  v82 = v70;
  sub_1B9F252FC();
  v71 = sub_1BA4A7B78();

  sub_1BA172980(v80, type metadata accessor for SummarySharingSelectableDataTypeItem);
  sub_1BA172980(v28, type metadata accessor for SummarySharingSelectableDataTypeItem);

  return v71 == -1;
}

uint64_t sub_1BA16D9E4(uint64_t result, uint64_t a2)
{
  if (*(a2 + OBJC_IVAR____TtCC18HealthExperienceUI39SummarySharingAlertsSelectionDataSourceP33_DBCA476D2670707FCCF6662511BF365A13Configuration_hasShowAllButton) != 1)
  {
    return result;
  }

  v31 = result;
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  sub_1BA4A1318();
  sub_1BA172450(0, &qword_1EDC6B410, &qword_1EDC6B3D0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1BA4B5480;
  v5 = sub_1BA4A1318();
  v7 = v6;
  *(v4 + 56) = MEMORY[0x1E69E6158];
  *(v4 + 64) = sub_1B9F1BE20();
  *(v4 + 32) = v5;
  *(v4 + 40) = v7;
  v8 = sub_1BA4A6768();
  v10 = v9;

  v11 = objc_opt_self();
  v12 = [v11 secondarySystemBackgroundColor];
  v13 = swift_allocObject();
  *(v13 + 16) = v2;
  *(v13 + 24) = a2;

  v30 = [v11 linkColor];
  *&v35 = 0x6D6574496B6E694CLL;
  *(&v35 + 1) = 0xE90000000000005FLL;
  MEMORY[0x1BFAF1350](v8, v10);
  v14 = v31;
  v15 = *(v31 + 16);
  v16 = v15[2];
  if (!v16)
  {
    v32 = 0u;
    v33 = 0u;
    v34 = 0;
    goto LABEL_12;
  }

  sub_1B9F0A534(&v15[5 * v16 - 1], &v35);
  sub_1B9F0D9AC(0, &qword_1EDC6AD50);
  sub_1B9F0D9AC(0, &qword_1EDC6E1B0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v34 = 0;
    v32 = 0u;
    v33 = 0u;
    goto LABEL_12;
  }

  if (!*(&v33 + 1))
  {
LABEL_12:
    sub_1B9F43EAC(&v32, &qword_1EDC6E1A0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348], MEMORY[0x1E69E6720]);
    goto LABEL_13;
  }

  v29 = v12;
  sub_1B9F1134C(&v32, &v35);
  __swift_project_boxed_opaque_existential_1(&v35, v36);
  v17 = sub_1BA4A2E58();
  v19 = v18;
  *&v32 = type metadata accessor for SummarySharingIconWithNameCell();
  sub_1BA1729E0(0, &qword_1EBBE9DF0, type metadata accessor for SummarySharingIconWithNameCell);
  if (v17 == sub_1BA4A6808() && v19 == v20)
  {

    goto LABEL_20;
  }

  v25 = sub_1BA4A8338();

  if (v25)
  {
LABEL_20:
    if (v15[2])
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      if (result)
      {
LABEL_22:
        v12 = v29;
        v26 = v15[2];
        if (!v26)
        {
          __break(1u);
          return result;
        }

        v27 = v26 - 1;
        __swift_destroy_boxed_opaque_existential_1(&v15[5 * v26 - 1]);
        v15[2] = v27;
        v14 = v31;
        *(v31 + 16) = v15;
        v28 = Array<A>.identifierToIndexDict()(v15);

        *(v31 + 24) = v28;
        __swift_destroy_boxed_opaque_existential_1(&v35);
        goto LABEL_13;
      }
    }

    else
    {
      __break(1u);
    }

    result = sub_1BA2F67D4(v15);
    v15 = result;
    goto LABEL_22;
  }

  __swift_destroy_boxed_opaque_existential_1(&v35);
  v12 = v29;
LABEL_13:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v15 = sub_1B9F281E8(0, v15[2] + 1, 1, v15);
  }

  v22 = v15[2];
  v21 = v15[3];
  if (v22 >= v21 >> 1)
  {
    v15 = sub_1B9F281E8((v21 > 1), v22 + 1, 1, v15);
  }

  v36 = &type metadata for LinkButtonItem;
  v37 = sub_1BA1724E4();
  v23 = swift_allocObject();
  *&v35 = v23;
  v23[2] = 0x6D6574496B6E694CLL;
  v23[3] = 0xE90000000000005FLL;
  v23[4] = v8;
  v23[5] = v10;
  v23[6] = v30;
  v23[7] = v12;
  v23[8] = sub_1BA1724BC;
  v23[9] = v13;
  v15[2] = v22 + 1;
  sub_1B9F1134C(&v35, &v15[5 * v22 + 4]);
  *(v14 + 16) = v15;
  v24 = Array<A>.identifierToIndexDict()(v15);

  *(v14 + 24) = v24;
  return result;
}

uint64_t sub_1BA16DF54@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = *v3;
  v8 = sub_1BA4A3EA8();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1BA4A1798();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (_sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0() == a1 && v16 == a2)
  {
  }

  else
  {
    v42 = v7;
    v43 = v9;
    v18 = sub_1BA4A8338();

    if ((v18 & 1) == 0)
    {
      sub_1BA4A3D88();

      v19 = sub_1BA4A3E88();
      v20 = sub_1BA4A6FB8();

      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        v41 = swift_slowAlloc();
        v44 = v41;
        *v21 = 136446466;
        v22 = sub_1BA4A85D8();
        v24 = sub_1B9F0B82C(v22, v23, &v44);

        *(v21 + 4) = v24;
        *(v21 + 12) = 2080;
        *(v21 + 14) = sub_1B9F0B82C(a1, a2, &v44);
        _os_log_impl(&dword_1B9F07000, v19, v20, "[%{public}s] Asked for a supplementary item type we weren't expecting: %s", v21, 0x16u);
        v25 = v41;
        swift_arrayDestroy();
        MEMORY[0x1BFAF43A0](v25, -1, -1);
        MEMORY[0x1BFAF43A0](v21, -1, -1);
      }

      (*(v43 + 8))(v11, v8);
      a3[3] = &type metadata for EmptyHeaderItem;
      a3[4] = sub_1B9FDA1B0();
      *a3 = swift_allocObject();
      return EmptyHeaderItem.init()();
    }
  }

  if (sub_1BA4A2C68())
  {
    if (qword_1EBBE8410 != -1)
    {
      swift_once();
    }

    v27 = &qword_1EBBECE40;
  }

  else
  {
    if (qword_1EBBE8418 != -1)
    {
      swift_once();
    }

    v27 = &qword_1EBBECE50;
  }

  v29 = *v27;
  v28 = v27[1];

  v44 = 0x74497265746F6F46;
  v45 = 0xEB000000005F6D65;
  sub_1BA4A1788();
  v30 = sub_1BA4A1748();
  v32 = v31;
  (*(v13 + 8))(v15, v12);
  MEMORY[0x1BFAF1350](v30, v32);

  v33 = v44;
  v34 = v45;
  v35 = type metadata accessor for CollectionViewGroupedFooterItem(0);
  a3[3] = v35;
  a3[4] = sub_1BA1721C4(&qword_1EDC63278, type metadata accessor for CollectionViewGroupedFooterItem);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a3);
  v44 = type metadata accessor for CollectionViewGroupedFooterCell();
  sub_1BA1729E0(0, qword_1EDC63330, type metadata accessor for CollectionViewGroupedFooterCell);
  *boxed_opaque_existential_1 = sub_1BA4A6808();
  boxed_opaque_existential_1[1] = v37;
  v38 = boxed_opaque_existential_1 + *(v35 + 32);
  *v38 = 0u;
  *(v38 + 1) = 0u;
  v38[32] = 1;
  v39 = (boxed_opaque_existential_1 + *(v35 + 28));
  *v39 = v29;
  v39[1] = v28;
  type metadata accessor for CollectionViewGroupedFooterItem.Content(0);
  result = swift_storeEnumTagMultiPayload();
  boxed_opaque_existential_1[2] = v33;
  boxed_opaque_existential_1[3] = v34;
  boxed_opaque_existential_1[4] = 0;
  boxed_opaque_existential_1[5] = 0;
  return result;
}

void sub_1BA16E438(void *a1, uint64_t a2)
{
  v4 = sub_1BA4A3EA8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for SummarySharingSelectionFlow(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v57 - v12;
  swift_getObjectType();
  v14 = swift_conformsToProtocol2();
  if (v14 && a1)
  {
    v15 = v14;
    v58 = v10;
    sub_1B9F0A534(a2 + OBJC_IVAR____TtCC18HealthExperienceUI39SummarySharingAlertsSelectionDataSourceP33_DBCA476D2670707FCCF6662511BF365A13Configuration_healthExperienceStore, v66);
    ObjectType = swift_getObjectType();
    v17 = *(v15 + 8);
    v18 = a1;
    v62 = v15;
    v63 = v18;
    v19 = v17(ObjectType, v15);
    v61 = v13;
    sub_1BA16FF9C(a2 + OBJC_IVAR____TtCC18HealthExperienceUI39SummarySharingAlertsSelectionDataSourceP33_DBCA476D2670707FCCF6662511BF365A13Configuration_selectionFlow, v13, type metadata accessor for SummarySharingSelectionFlow);
    v59 = [objc_allocWithZone(MEMORY[0x1E696C1C0]) init];
    v20 = objc_allocWithZone(type metadata accessor for SummarySharingAlertsSelectionViewController());
    *&v20[OBJC_IVAR____TtC18HealthExperienceUI43SummarySharingAlertsSelectionViewController_delegate + 8] = 0;
    swift_unknownObjectWeakInit();
    v21 = MEMORY[0x1E69E7CC0];
    *&v20[OBJC_IVAR____TtC18HealthExperienceUI43SummarySharingAlertsSelectionViewController_cancellables] = MEMORY[0x1E69E7CC0];
    sub_1B9F0A534(v66, v65);
    swift_beginAccess();
    v60 = v19;
    v22 = *(v19 + 24);
    v23 = v22[2];
    if (v23 && (v21 = sub_1BA0219CC(v22[2], 0), v24 = *(type metadata accessor for SummarySharingSelectableDataTypeItem(0) - 8), sub_1BA023688(&v64, v21 + ((*(v24 + 80) + 32) & ~*(v24 + 80)), v23, v22), v26 = v25, , sub_1B9F52E48(), v26 != v23))
    {
      __break(1u);
    }

    else
    {
      v27 = v61;
      v28 = v58;
      sub_1BA16FF9C(v61, v58, type metadata accessor for SummarySharingSelectionFlow);
      type metadata accessor for SummarySharingAlertsSelectionDataSource(0);
      swift_allocObject();
      v29 = sub_1BA16AC90(v65, v21, v28, 0);
      *&v20[OBJC_IVAR____TtC18HealthExperienceUI43SummarySharingAlertsSelectionViewController_alertsDataSource] = v29;
      v30 = v60;
      *&v20[OBJC_IVAR____TtC18HealthExperienceUI43SummarySharingAlertsSelectionViewController_selectedDataTypesContext] = v60;
      sub_1B9F1DEA0();
      v31 = swift_allocObject();
      *(v31 + 16) = xmmword_1BA4B5480;
      *(v31 + 32) = v29;
      *(v31 + 40) = &protocol witness table for MutableArrayDataSource;
      type metadata accessor for CompoundSectionedDataSource();
      swift_allocObject();

      v32 = CompoundSectionedDataSource.init(_:)(v31);
      v33 = CompoundDataSourceCollectionViewController.init(dataSource:)(v32);
      v65[0] = *(v30 + 48);
      v34 = MEMORY[0x1E695BF70];
      sub_1BA10E0E4(0, &qword_1EBBEB1A0, MEMORY[0x1E695BF70]);
      sub_1BA10E150(&qword_1EBBEB1A8, &qword_1EBBEB1A0, v34);
      v35 = v33;
      v65[0] = sub_1BA4A4F98();
      v36 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v37 = swift_allocObject();
      *(v37 + 16) = sub_1BA14DE2C;
      *(v37 + 24) = v36;
      v38 = MEMORY[0x1E695BED0];
      sub_1BA10E0E4(0, &qword_1EBBEB1B0, MEMORY[0x1E695BED0]);
      sub_1BA10E150(&qword_1EBBEB1B8, &qword_1EBBEB1B0, v38);
      sub_1BA4A5148();

      swift_beginAccess();
      sub_1B9F0CA3C(0, &qword_1EDC5E6C0, MEMORY[0x1E695BF10], MEMORY[0x1E69E62F8]);
      sub_1BA091D04();
      sub_1BA4A4D38();
      swift_endAccess();

      *(*(*&v35[OBJC_IVAR____TtC18HealthExperienceUI43SummarySharingAlertsSelectionViewController_alertsDataSource] + qword_1EBBECE80) + OBJC_IVAR____TtCC18HealthExperienceUI39SummarySharingAlertsSelectionDataSourceP33_DBCA476D2670707FCCF6662511BF365A13Configuration_selectedDataTypesDelegate + 8) = &protocol witness table for SummarySharingAlertsSelectionViewController;
      swift_unknownObjectWeakAssign();
      type metadata accessor for SummarySharingSelectionContextDelegate();
      v39 = swift_allocObject();
      *(v39 + 24) = 0;
      swift_unknownObjectWeakInit();
      *(v39 + 24) = &protocol witness table for SummarySharingAlertsSelectionViewController;
      swift_unknownObjectWeakAssign();

      sub_1BA29AAC4(v39);
      sub_1BA16CA30();

      sub_1BA172980(v27, type metadata accessor for SummarySharingSelectionFlow);
      __swift_destroy_boxed_opaque_existential_1(v66);

      v40 = &v35[OBJC_IVAR____TtC18HealthExperienceUI43SummarySharingAlertsSelectionViewController_delegate];
      swift_beginAccess();
      v41 = v63;
      *(v40 + 1) = v62;
      swift_unknownObjectWeakAssign();
      v42 = [objc_allocWithZone(MEMORY[0x1E69A4420]) initWithRootViewController_];
      [v41 presentViewController:v42 animated:1 completion:0];
    }
  }

  else
  {
    sub_1BA4A3D88();
    v43 = a1;
    v44 = sub_1BA4A3E88();
    v45 = sub_1BA4A6FA8();

    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      v66[0] = v63;
      *v46 = 136315394;
      v47 = sub_1BA4A85D8();
      v49 = sub_1B9F0B82C(v47, v48, v66);

      *(v46 + 4) = v49;
      *(v46 + 12) = 2080;
      v50 = v43;
      v51 = [v50 description];
      v52 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      v54 = v53;

      v55 = sub_1B9F0B82C(v52, v54, v66);

      *(v46 + 14) = v55;
      _os_log_impl(&dword_1B9F07000, v44, v45, "[%s] %s does not conform to SummarySharingSelectedDataTypesDelegate", v46, 0x16u);
      v56 = v63;
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v56, -1, -1);
      MEMORY[0x1BFAF43A0](v46, -1, -1);
    }

    (*(v5 + 8))(v7, v4);
  }
}

void sub_1BA16ECDC(__int128 *a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t *a4@<X8>)
{
  LODWORD(v125) = a3;
  v112 = a4;
  v7 = type metadata accessor for SummarySharingSelectableDataTypeItem(0);
  v124 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v119 = &v108 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA172538(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v121 = &v108 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v108 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v123 = &v108 - v15;
  sub_1BA17256C(0);
  v17 = v16;
  v18 = *(v16 - 1);
  MEMORY[0x1EEE9AC00](v16);
  v115 = &v108 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v114 = &v108 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v116 = &v108 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v120 = &v108 - v25;
  v26 = type metadata accessor for SummarySharingSelectionFlow(0);
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v108 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = a1[1];
  v139 = *a1;
  v140 = v29;
  v141 = a1[2];
  sub_1BA16FF9C(a2 + OBJC_IVAR____TtCC18HealthExperienceUI39SummarySharingAlertsSelectionDataSourceP33_DBCA476D2670707FCCF6662511BF365A13Configuration_selectionFlow, v28, type metadata accessor for SummarySharingSelectionFlow);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v125 = v28;
    v30 = objc_opt_self();
    sub_1B9F1C0E4(0, &qword_1EDC6B400, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
    v31 = swift_allocObject();
    *(v31 + 16) = xmmword_1BA4B7510;
    v32 = objc_opt_self();
    *(v31 + 32) = [v32 blackColor];
    *(v31 + 40) = [v32 systemYellowColor];
    sub_1B9F0ADF8(0, &qword_1EDC6E380);
    v33 = sub_1BA4A6AE8();

    v34 = [v30 _configurationWithHierarchicalColors_];

    v17 = [v30 configurationWithWeight_];
    v35 = v34;
    v36 = sub_1BA4A6758();
    v37 = [objc_opt_self() systemImageNamed:v36 withConfiguration:v35];

    v38 = [v37 imageByApplyingSymbolConfiguration_];
    LOBYTE(v134) = 0;
    LOBYTE(v28) = 1;
    LOBYTE(v128) = 1;
    LOBYTE(v126[0]) = 0;
    *&v130[0] = v38;
    *(v130 + 8) = xmmword_1BA4C1910;
    BYTE8(v130[1]) = 0;
    v131 = 0uLL;
    LOBYTE(v132) = 1;
    *(&v132 + 1) = 0x4024000000000000;
    v133 = 0;
    v39 = qword_1EBBE8400;
    v40 = v38;
    if (v39 != -1)
    {
      goto LABEL_38;
    }

    goto LABEL_3;
  }

  v111 = v4;
  if (qword_1EBBE8408 != -1)
  {
    swift_once();
  }

  v59 = qword_1EBBECE30;
  v58 = *algn_1EBBECE38;
  v35 = v116;
  if (v125)
  {
    v108 = qword_1EBBECE30;
    v109 = *algn_1EBBECE38;
    v110 = a2;
    v127[0] = v140;
    v113 = v140 + 32;
    v60 = *(v140 + 16);
    v125 = (v124 + 7);
    v40 = (v18 + 56);
    v61 = (v18 + 48);
    v62 = (v124 + 6);

    v28 = 0;
    v124 = v62;
    v117 = v62 & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
    v118 = v7;
    v122 = v60;
    while (1)
    {
      if (v28 == v60)
      {
        *&v136 = 0;
        v28 = v60;
        v134 = 0u;
        v135 = 0u;
      }

      else
      {
        if (v28 >= v60)
        {
          __break(1u);
LABEL_37:
          __break(1u);
LABEL_38:
          swift_once();
LABEL_3:
          v42 = qword_1EBBECE20;
          v41 = *algn_1EBBECE28;
          v136 = v131;
          v137 = v132;
          v138 = v133;
          v134 = v130[0];
          v135 = v130[1];
          v43 = v112;
          v112[3] = &type metadata for CollectionViewHeaderItem;
          v43[4] = sub_1BA09ADCC();
          v44 = swift_allocObject();
          *v43 = v44;
          v126[0] = type metadata accessor for CollectionViewHeaderCell();
          sub_1BA1725A0(v130, &v128);
          sub_1BA1725A0(v130, &v128);
          sub_1BA1729E0(0, &qword_1EDC664A8, type metadata accessor for CollectionViewHeaderCell);
          *(v44 + 16) = sub_1BA4A6808();
          *(v44 + 24) = v45;
          *(v44 + 32) = v42;
          *(v44 + 40) = v41;
          v46 = v134;
          *(v44 + 88) = v135;
          v47 = v137;
          *(v44 + 104) = v136;
          *(v44 + 120) = v47;
          *(v44 + 48) = sub_1BA09AE24;
          *(v44 + 56) = 0;
          *(v44 + 64) = v28;
          *(v44 + 136) = v138;
          *(v44 + 72) = v46;
          *(v44 + 144) = 0;
          v128 = v42;
          v129 = v41;
          v126[0] = 32;
          v126[1] = 0xE100000000000000;
          v127[0] = 0;
          v127[1] = 0xE000000000000000;
          sub_1B9F252FC();

          v48 = MEMORY[0x1E69E6158];
          v49 = sub_1BA4A7B58();
          v51 = v50;
          sub_1B9F1C0E4(0, &qword_1EDC6E330, v48, MEMORY[0x1E69E6F90]);
          v52 = swift_allocObject();
          *(v52 + 16) = xmmword_1BA4B5480;
          *(v52 + 32) = v49;
          *(v52 + 40) = v51;

          v53 = sub_1BA4A6AE8();

          v54 = HKUIJoinStringsForAutomationIdentifier();

          if (v54)
          {

            v55 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
            v57 = v56;

            sub_1BA1725FC(v130);
            *(v44 + 152) = v55;
            *(v44 + 160) = v57;

            sub_1BA1725FC(v130);
            sub_1BA172980(v125, type metadata accessor for SummarySharingSelectionFlow);
            return;
          }

LABEL_40:
          __break(1u);
LABEL_41:
          __break(1u);
          return;
        }

        sub_1B9F0A534(v113 + 40 * v28, &v134);
        if (__OFADD__(v28++, 1))
        {
          goto LABEL_37;
        }
      }

      v130[0] = v134;
      v130[1] = v135;
      *&v131 = v136;
      if (*(&v135 + 1))
      {
        sub_1B9F1134C(v130, &v128);
        sub_1B9F0A534(&v128, v126);
        sub_1B9F0D9AC(0, &qword_1EDC6AD50);
        v64 = swift_dynamicCast();
        (*v125)(v13, v64 ^ 1u, 1, v7);
        __swift_destroy_boxed_opaque_existential_1(&v128);
        v65 = *v40;
        (*v40)(v13, 0, 1, v17);
      }

      else
      {
        v65 = *v40;
        (*v40)(v13, 1, 1, v17);
      }

      v66 = *v61;
      if ((*v61)(v13, 1, v17) == 1)
      {
        break;
      }

      sub_1BA172650(v13, v35, sub_1BA17256C);
      if ((*v124)(v35, 1, v7) == 1)
      {
        sub_1BA172980(v35, sub_1BA17256C);
        v60 = v122;
      }

      else
      {
        sub_1BA172650(v35, v123, sub_1BA17256C);
        v67 = 0;
LABEL_21:
        v68 = v123;
        v65(v123, v67, 1, v17);
        v69 = v121;
        sub_1BA172650(v68, v121, sub_1BA172538);
        if (v66(v69, 1, v17) == 1)
        {
          v70 = v120;
          v7 = v118;
          (*v125)(v120, 1, 1, v118);
          v71 = (*v124)(v70, 1, v7);
        }

        else
        {
          v72 = v114;
          sub_1BA172650(v69, v114, sub_1BA17256C);
          v73 = v115;
          sub_1BA16FF9C(v72, v115, sub_1BA17256C);
          v74 = *v124;
          v7 = v118;
          if ((*v124)(v73, 1, v118) == 1)
          {
            __break(1u);
            goto LABEL_40;
          }

          v75 = v73;
          v70 = v120;
          sub_1BA172650(v75, v120, type metadata accessor for SummarySharingSelectableDataTypeItem);
          sub_1BA172980(v72, sub_1BA17256C);
          (*v125)(v70, 0, 1, v7);
          v35 = v116;
          v71 = v74(v70, 1, v7);
        }

        if (v71 == 1)
        {
          v79 = v111;
          sub_1B9F43EAC(v127, &qword_1EDC5E710, &qword_1EDC6AD50, MEMORY[0x1E69A3310], MEMORY[0x1E69E62F8]);
          if (qword_1EBBE8428 != -1)
          {
            swift_once();
          }

          v80 = &qword_1EBBECE70;
          goto LABEL_35;
        }

        v76 = v70;
        v77 = v119;
        sub_1BA172650(v76, v119, type metadata accessor for SummarySharingSelectableDataTypeItem);
        v78 = *(v77 + 49);
        sub_1BA172980(v77, type metadata accessor for SummarySharingSelectableDataTypeItem);
        v60 = v122;
        if ((v78 & 1) == 0)
        {
          v79 = v111;
          sub_1B9F43EAC(v127, &qword_1EDC5E710, &qword_1EDC6AD50, MEMORY[0x1E69A3310], MEMORY[0x1E69E62F8]);
          if (qword_1EBBE8420 != -1)
          {
            swift_once();
          }

          v80 = &qword_1EBBECE60;
LABEL_35:
          v94 = v112;
          v96 = *v80;
          v95 = v80[1];

          *&v134 = 0;
          *(&v134 + 1) = 0xE000000000000000;
          sub_1BA4A7DF8();
          v97 = sub_1BA4A85D8();
          v99 = v98;

          *&v134 = v97;
          *(&v134 + 1) = v99;
          MEMORY[0x1BFAF1350](95, 0xE100000000000000);
          v100 = v110;
          v101 = sub_1BA4A1748();
          MEMORY[0x1BFAF1350](v101);

          MEMORY[0x1BFAF1350](0x497265646165485FLL, 0xEB000000006D6574);
          v102 = v134;
          v103 = swift_allocObject();
          *(v103 + 16) = v100;
          *(v103 + 24) = v79;
          v104 = v140;
          *(v103 + 32) = v139;
          *(v103 + 48) = v104;
          *(v103 + 64) = v141;
          *(v103 + 80) = v79;
          v94[3] = &type metadata for CollectionViewHeaderWithLinkItem;
          v94[4] = sub_1BA09AD78();
          v105 = swift_allocObject();
          *v94 = v105;
          *&v130[0] = type metadata accessor for CollectionViewHeaderWithLinkCell();

          sub_1BA0F7D24(&v139, &v134);
          sub_1BA1729E0(0, &qword_1EBBE9DC0, type metadata accessor for CollectionViewHeaderWithLinkCell);
          *(v105 + 16) = sub_1BA4A6808();
          *(v105 + 24) = v106;
          *(v105 + 32) = v102;
          v107 = v109;
          *(v105 + 48) = v108;
          *(v105 + 56) = v107;
          *(v105 + 64) = sub_1BA09AE24;
          *(v105 + 72) = 0;
          *(v105 + 80) = 1;
          *(v105 + 88) = 1;
          *(v105 + 96) = 0u;
          *(v105 + 112) = 0u;
          *(v105 + 128) = 0u;
          *(v105 + 137) = 0u;
          *(v105 + 160) = 0;
          *(v105 + 168) = v96;
          *(v105 + 176) = v95;
          *(v105 + 184) = 1;
          *(v105 + 192) = sub_1BA1726B8;
          *(v105 + 200) = v103;
          *(v105 + 208) = 0;
          *(v105 + 216) = 0;

          return;
        }
      }
    }

    sub_1BA172980(v13, sub_1BA172538);
    v67 = 1;
    goto LABEL_21;
  }

  v81 = v112;
  v112[3] = &type metadata for CollectionViewHeaderItem;
  v81[4] = sub_1BA09ADCC();
  v82 = swift_allocObject();
  *v81 = v82;
  *&v134 = type metadata accessor for CollectionViewHeaderCell();
  sub_1BA1729E0(0, &qword_1EDC664A8, type metadata accessor for CollectionViewHeaderCell);
  *(v82 + 16) = sub_1BA4A6808();
  *(v82 + 24) = v83;
  *(v82 + 32) = v59;
  *(v82 + 40) = v58;
  *(v82 + 48) = sub_1BA09AE24;
  *(v82 + 56) = 0;
  *(v82 + 64) = 1;
  *(v82 + 72) = 1;
  *(v82 + 144) = 0;
  *(v82 + 80) = 0u;
  *(v82 + 96) = 0u;
  *(v82 + 112) = 0u;
  *(v82 + 121) = 0u;
  *&v134 = v59;
  *(&v134 + 1) = v58;
  *&v130[0] = 32;
  *(&v130[0] + 1) = 0xE100000000000000;
  v128 = 0;
  v129 = 0xE000000000000000;
  sub_1B9F252FC();

  v84 = MEMORY[0x1E69E6158];
  v85 = sub_1BA4A7B58();
  v87 = v86;
  sub_1B9F1C0E4(0, &qword_1EDC6E330, v84, MEMORY[0x1E69E6F90]);
  v88 = swift_allocObject();
  *(v88 + 16) = xmmword_1BA4B5480;
  *(v88 + 32) = v85;
  *(v88 + 40) = v87;

  v89 = sub_1BA4A6AE8();

  v90 = HKUIJoinStringsForAutomationIdentifier();

  if (!v90)
  {
    goto LABEL_41;
  }

  v91 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  v93 = v92;

  *(v82 + 152) = v91;
  *(v82 + 160) = v93;
}

uint64_t sub_1BA16FCD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_1BA4A3EA8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a2 + OBJC_IVAR____TtCC18HealthExperienceUI39SummarySharingAlertsSelectionDataSourceP33_DBCA476D2670707FCCF6662511BF365A13Configuration_selectedDataTypesDelegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v11 = *(v10 + 8);
    ObjectType = swift_getObjectType();
    v13 = (*(v11 + 8))(ObjectType, v11);
    sub_1BA309CDC(a4, v13);

    return swift_unknownObjectRelease();
  }

  else
  {
    sub_1BA4A3D88();
    v15 = sub_1BA4A3E88();
    v16 = sub_1BA4A6FA8();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v23 = v18;
      *v17 = 136315138;
      v19 = sub_1BA4A85D8();
      v21 = sub_1B9F0B82C(v19, v20, &v23);

      *(v17 + 4) = v21;
      _os_log_impl(&dword_1B9F07000, v15, v16, "[%s] Attempting to toggle data type selection without a context to apply changes", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v18);
      MEMORY[0x1BFAF43A0](v18, -1, -1);
      MEMORY[0x1BFAF43A0](v17, -1, -1);
    }

    return (*(v7 + 8))(v9, v6);
  }
}

void sub_1BA16FF2C()
{
  _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  sub_1B9F43830();

  sub_1B9FF51C4();
  v0 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  sub_1BA162E6C(v0, v1);

  sub_1B9FF51F8();
  sub_1B9FF522C();
  sub_1B9FF5294();
}

uint64_t sub_1BA16FF9C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BA170004(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ListLayoutConfiguration();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BA170094@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, void *(*a6)(uint64_t *__return_ptr, uint64_t)@<X5>, void *a7@<X8>)
{
  v28 = a4;
  v10 = a1[2];
  v29 = a1[3];
  v12 = *a1;
  v11 = a1[1];
  v13 = a1[5];
  v22 = a1[4];
  v24 = a2;
  v25 = a3;
  v26 = &v28;
  sub_1BA0F7D24(a1, v27);
  v14 = sub_1BA26CFFC(a6, v23, v10);

  v15 = Array<A>.identifierToIndexDict()(v14);
  result = sub_1BA172980(&v29, sub_1BA1728EC);
  if (v14[2])
  {
    v17 = v12;
    v18 = v14;
    v19 = v15;
    v20 = v13;
  }

  else
  {
    if (a5)
    {
      v17 = v12;

      v21 = v11;
      v18 = v14;
      v19 = v15;
      v20 = v13;
    }

    else
    {
      v17 = 0;
      v21 = 0;
      v18 = 0;
      v19 = 0;
      v22 = 0;
      v20 = 0;
    }

    v11 = v21;
  }

  *a7 = v17;
  a7[1] = v11;
  a7[2] = v18;
  a7[3] = v19;
  a7[4] = v22;
  a7[5] = v20;
  return result;
}

unint64_t sub_1BA17029C(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t *a5, uint64_t a6, unint64_t *a7)
{
  v8 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = *v7;
  v15 = v14 + 32 + 40 * result;
  sub_1B9F0D9AC(0, a5);
  result = swift_arrayDestroy();
  v16 = __OFSUB__(a3, v8);
  v17 = a3 - v8;
  if (v16)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v17)
  {
    v18 = *(v14 + 16);
    v16 = __OFSUB__(v18, a2);
    v19 = v18 - a2;
    if (!v16)
    {
      result = v15 + 40 * a3;
      v20 = (v14 + 32 + 40 * a2);
      if (result != v20 || result >= v20 + 40 * v19)
      {
        result = memmove(result, v20, 40 * v19);
      }

      v22 = *(v14 + 16);
      v16 = __OFADD__(v22, v17);
      v23 = v22 + v17;
      if (!v16)
      {
        *(v14 + 16) = v23;
        goto LABEL_13;
      }

LABEL_19:
      __break(1u);
      goto LABEL_20;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_13:
  if (a3 < 1)
  {
    return sub_1B9F43EAC(a4, a7, a5, a6, MEMORY[0x1E69E6BC0]);
  }

  result = sub_1B9F0A534(a4, v15);
  if (a3 == 1)
  {
    return sub_1B9F43EAC(a4, a7, a5, a6, MEMORY[0x1E69E6BC0]);
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_1BA1703E0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_1B9FDC2DC();
    v2 = sub_1BA4A8088();
    v19 = v2;
    sub_1BA4A7FD8();
    v3 = sub_1BA4A8008();
    if (v3)
    {
      v4 = v3;
      sub_1B9F0ADF8(0, &qword_1EDC6E920);
      v5 = v4;
      do
      {
        v17 = v5;
        swift_dynamicCast();
        sub_1B9F0ADF8(0, &qword_1EDC6E370);
        swift_dynamicCast();
        v12 = *(v2 + 16);
        if (*(v2 + 24) <= v12)
        {
          sub_1BA0F47B0(v12 + 1, 1);
        }

        v2 = v19;
        result = sub_1BA4A7788();
        v7 = v19 + 64;
        v8 = -1 << *(v19 + 32);
        v9 = result & ~v8;
        v10 = v9 >> 6;
        if (((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6))) != 0)
        {
          v11 = __clz(__rbit64((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6)))) | v9 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v13 = 0;
          v14 = (63 - v8) >> 6;
          do
          {
            if (++v10 == v14 && (v13 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v15 = v10 == v14;
            if (v10 == v14)
            {
              v10 = 0;
            }

            v13 |= v15;
            v16 = *(v7 + 8 * v10);
          }

          while (v16 == -1);
          v11 = __clz(__rbit64(~v16)) + (v10 << 6);
        }

        *(v7 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
        *(*(v19 + 48) + 8 * v11) = v18;
        *(*(v19 + 56) + 8 * v11) = v17;
        ++*(v19 + 16);
        v5 = sub_1BA4A8008();
      }

      while (v5);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CC8];
  }

  return v2;
}

uint64_t sub_1BA17061C(uint64_t *a1)
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
        sub_1B9F0D9AC(0, &qword_1EDC6AD50);
        v5 = sub_1BA4A6B98();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = (v5 + 32);
      v7[1] = (v2 / 2);
      v6 = v5;
      sub_1BA170844(v7, v8, a1, v4);
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
    return sub_1BA17072C(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1BA17072C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v16 = a2;
  if (a3 != a2)
  {
    v5 = a3;
    v6 = *a4;
    v7 = *a4 + 40 * a3;
    v8 = result - a3;
LABEL_4:
    v9 = v8;
    v10 = v7;
    while (1)
    {
      sub_1B9F0A534(v10, v15);
      sub_1B9F0A534(v10 - 40, v14);
      v11 = sub_1BA16D14C(v15, v14);
      __swift_destroy_boxed_opaque_existential_1(v14);
      result = __swift_destroy_boxed_opaque_existential_1(v15);
      if (v4)
      {
        break;
      }

      if (v11)
      {
        if (!v6)
        {
          __break(1u);
          return result;
        }

        sub_1B9F1134C(v10, v15);
        v12 = *(v10 - 24);
        *v10 = *(v10 - 40);
        *(v10 + 16) = v12;
        *(v10 + 32) = *(v10 - 8);
        result = sub_1B9F1134C(v15, v10 - 40);
        v10 -= 40;
        if (!__CFADD__(v9++, 1))
        {
          continue;
        }
      }

      ++v5;
      v7 += 40;
      --v8;
      if (v5 != v16)
      {
        goto LABEL_4;
      }

      return result;
    }
  }

  return result;
}

void sub_1BA170844(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v154 = a1;
  sub_1BA1728B8(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v160 = &v152 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v161 = &v152 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v163 = &v152 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v152 - v15;
  sub_1BA17256C(0);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v152 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v152 - v21;
  v23 = type metadata accessor for SummarySharingSelectableDataTypeItem(0);
  MEMORY[0x1EEE9AC00](v23);
  v179 = &v152 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v177 = &v152 - v28;
  v168 = a3;
  v29 = a3[1];
  if (v29 < 1)
  {
    v31 = MEMORY[0x1E69E7CC0];
LABEL_126:
    v19 = *v154;
    if (*v154)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_157;
      }

      goto LABEL_128;
    }

    goto LABEL_166;
  }

  v164 = v16;
  v153 = a4;
  v30 = 0;
  v165 = (v27 + 56);
  v31 = MEMORY[0x1E69E7CC0];
  v167 = v19;
  v166 = v22;
  v32 = v26;
  v176 = v26;
  while (1)
  {
    v155 = v30;
    if (v30 + 1 >= v29)
    {
      v41 = v30 + 1;
      v39 = v164;
      v42 = v32;
    }

    else
    {
      v33 = *v168;
      sub_1B9F0A534(*v168 + 40 * (v30 + 1), &v185);
      sub_1B9F0A534(v33 + 40 * v30, v184);
      v34 = sub_1BA16D14C(&v185, v184);
      if (v5)
      {
        __swift_destroy_boxed_opaque_existential_1(v184);
        __swift_destroy_boxed_opaque_existential_1(&v185);
        goto LABEL_138;
      }

      v35 = v34;
      __swift_destroy_boxed_opaque_existential_1(v184);
      __swift_destroy_boxed_opaque_existential_1(&v185);
      v36 = v30 + 2;
      v37 = 40 * v30;
      v38 = v33 + 40 * v30 + 80;
      v39 = v164;
      while (v29 != v36)
      {
        sub_1B9F0A534(v38, &v185);
        sub_1B9F0A534(v38 - 40, v184);
        v40 = sub_1BA16D14C(&v185, v184);
        __swift_destroy_boxed_opaque_existential_1(v184);
        __swift_destroy_boxed_opaque_existential_1(&v185);
        ++v36;
        v38 += 40;
        if ((v35 ^ v40))
        {
          v41 = v36 - 1;
          goto LABEL_12;
        }
      }

      v41 = v29;
LABEL_12:
      v19 = v167;
      v22 = v166;
      if (!v35)
      {
        goto LABEL_23;
      }

      v43 = v155;
      if (v41 < v155)
      {
        goto LABEL_160;
      }

      if (v155 < v41)
      {
        v44 = 40 * v41 - 40;
        v45 = v41;
        do
        {
          if (v43 != --v45)
          {
            v51 = *v168;
            if (!*v168)
            {
              goto LABEL_164;
            }

            v46 = v41;
            v47 = v51 + v37;
            v48 = v51 + v44;
            sub_1B9F1134C((v51 + v37), &v185);
            v49 = *(v48 + 32);
            v50 = *(v48 + 16);
            *v47 = *v48;
            *(v47 + 16) = v50;
            *(v47 + 32) = v49;
            sub_1B9F1134C(&v185, v48);
            v41 = v46;
          }

          ++v43;
          v44 -= 40;
          v37 += 40;
        }

        while (v43 < v45);
        v39 = v164;
        v19 = v167;
        v22 = v166;
LABEL_23:
        v42 = v176;
        goto LABEL_24;
      }

      v42 = v176;
      v39 = v164;
    }

LABEL_24:
    v52 = v168[1];
    if (v41 >= v52)
    {
      goto LABEL_32;
    }

    if (__OFSUB__(v41, v155))
    {
      goto LABEL_156;
    }

    if (v41 - v155 >= v153)
    {
LABEL_32:
      v30 = v41;
      goto LABEL_33;
    }

    if (__OFADD__(v155, v153))
    {
      __break(1u);
LABEL_159:
      __break(1u);
LABEL_160:
      __break(1u);
LABEL_161:
      __break(1u);
LABEL_162:
      __break(1u);
LABEL_163:
      __break(1u);
LABEL_164:
      __break(1u);
LABEL_165:
      __break(1u);
LABEL_166:
      __break(1u);
      return;
    }

    if (&v155[v153] < v52)
    {
      v52 = &v155[v153];
    }

    if (v52 < v155)
    {
      goto LABEL_159;
    }

    if (v41 == v52)
    {
      goto LABEL_32;
    }

    v156 = v52;
    v162 = *v168;
    v99 = v162 + 40 * v41;
    v100 = &v155[-v41];
    v175 = v31;
    while (2)
    {
      v159 = v41;
      v157 = v100;
      v101 = v100;
      v158 = v99;
      while (1)
      {
        sub_1B9F0A534(v99, &v185);
        v174 = v99;
        v173 = (v99 - 40);
        sub_1B9F0A534(v99 - 40, v184);
        sub_1B9F0A534(&v185, &v182);
        sub_1B9F0D9AC(0, &qword_1EDC6AD50);
        v102 = swift_dynamicCast();
        v103 = *v165;
        if (!v102)
        {
          v103(v22, 1, 1, v42);
          sub_1BA172980(v22, sub_1BA17256C);
          goto LABEL_114;
        }

        v172 = v101;
        v104 = v5;
        v103(v22, 0, 1, v42);
        v105 = v177;
        sub_1BA172650(v22, v177, type metadata accessor for SummarySharingSelectableDataTypeItem);
        sub_1B9F0A534(v184, &v182);
        if ((swift_dynamicCast() & 1) == 0)
        {
          break;
        }

        v103(v19, 0, 1, v42);
        sub_1BA172650(v19, v179, type metadata accessor for SummarySharingSelectableDataTypeItem);
        v106 = *(v42 + 40);
        sub_1BA16FF9C(v105 + v106, v39, sub_1BA1728B8);
        v107 = type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent(0);
        v108 = *(*(v107 - 8) + 48);
        if (v108(v39, 1, v107) == 1)
        {
          sub_1BA172980(v39, sub_1BA1728B8);
          v5 = v104;
          v31 = v175;
LABEL_85:
          sub_1BA172980(v179, type metadata accessor for SummarySharingSelectableDataTypeItem);
          sub_1BA172980(v177, type metadata accessor for SummarySharingSelectableDataTypeItem);
          goto LABEL_86;
        }

        v109 = *(v39 + 56);
        v178 = v109;
        sub_1BA172980(v39, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
        v5 = v104;
        v31 = v175;
        if (!v109)
        {
          goto LABEL_85;
        }

        v169 = v106;
        v110 = *(v176 + 40);
        v111 = v163;
        sub_1BA16FF9C(v179 + v110, v163, sub_1BA1728B8);
        if (v108(v111, 1, v107) == 1)
        {

          sub_1BA172980(v111, sub_1BA1728B8);
          goto LABEL_117;
        }

        v112 = *(v111 + 56);
        v113 = v112;
        sub_1BA172980(v111, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
        if (!v112)
        {

LABEL_117:
          sub_1BA172980(v179, type metadata accessor for SummarySharingSelectableDataTypeItem);
          sub_1BA172980(v177, type metadata accessor for SummarySharingSelectableDataTypeItem);
          v39 = v164;
LABEL_86:
          v19 = v167;
          v22 = v166;
LABEL_87:
          v42 = v176;
          goto LABEL_88;
        }

        v171 = v5;
        v114 = v113;
        v115 = [v178 displayName];
        v116 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
        v118 = v117;

        v170 = v114;
        v119 = [v114 displayName];
        v120 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
        v122 = v121;

        if (v116 == v120 && v118 == v122)
        {

          v5 = v171;
          v31 = v175;
        }

        else
        {
          v123 = sub_1BA4A8338();

          v5 = v171;
          v31 = v175;
          if ((v123 & 1) == 0)
          {
            v134 = v178;
            v135 = [v178 displayName];
            v136 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
            v138 = v137;

            v182 = v136;
            v183 = v138;
            v139 = v170;
            v140 = [v170 displayName];
            v141 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
            v143 = v142;

            v180 = v141;
            v181 = v143;
            sub_1B9F252FC();
            v133 = sub_1BA4A7B78();

            sub_1BA172980(v179, type metadata accessor for SummarySharingSelectableDataTypeItem);
            sub_1BA172980(v177, type metadata accessor for SummarySharingSelectableDataTypeItem);
            v39 = v164;
            v19 = v167;
            v22 = v166;
            goto LABEL_107;
          }
        }

        v124 = v177;
        v125 = v161;
        sub_1BA16FF9C(v177 + v169, v161, sub_1BA1728B8);
        if (v108(v125, 1, v107) == 1)
        {

          sub_1BA172980(v125, sub_1BA1728B8);
          v39 = v164;
          v19 = v167;
          v22 = v166;
          goto LABEL_123;
        }

        v126 = *(v125 + 16);
        v127 = *(v125 + 24);

        sub_1BA172980(v125, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
        if (!v127)
        {

          goto LABEL_121;
        }

        v128 = v160;
        sub_1BA16FF9C(v179 + v110, v160, sub_1BA1728B8);
        if (v108(v128, 1, v107) == 1)
        {

          sub_1BA172980(v128, sub_1BA1728B8);
LABEL_121:
          v39 = v164;
          v19 = v167;
          v22 = v166;
          v124 = v177;
LABEL_123:
          sub_1BA172980(v179, type metadata accessor for SummarySharingSelectableDataTypeItem);
          sub_1BA172980(v124, type metadata accessor for SummarySharingSelectableDataTypeItem);
          goto LABEL_87;
        }

        v129 = v128;
        v131 = *(v128 + 16);
        v130 = *(v128 + 24);

        sub_1BA172980(v129, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
        v132 = v164;
        v19 = v167;
        v22 = v166;
        if (!v130)
        {

          v124 = v177;
          v39 = v132;
          goto LABEL_123;
        }

        v182 = v126;
        v183 = v127;
        v180 = v131;
        v181 = v130;
        sub_1B9F252FC();
        v133 = sub_1BA4A7B78();

        sub_1BA172980(v179, type metadata accessor for SummarySharingSelectableDataTypeItem);
        sub_1BA172980(v177, type metadata accessor for SummarySharingSelectableDataTypeItem);

        v39 = v132;
LABEL_107:
        __swift_destroy_boxed_opaque_existential_1(v184);
        __swift_destroy_boxed_opaque_existential_1(&v185);
        v42 = v176;
        v144 = v172;
        if (v133 != -1)
        {
          goto LABEL_89;
        }

        if (!v162)
        {
          goto LABEL_161;
        }

        v145 = v174;
        sub_1B9F1134C(v174, &v185);
        v99 = v173;
        v146 = v173[1];
        *v145 = *v173;
        v145[1] = v146;
        *(v145 + 4) = *(v99 + 32);
        sub_1B9F1134C(&v185, v99);
        v147 = __CFADD__(v144, 1);
        v101 = v144 + 1;
        if (v147)
        {
          goto LABEL_89;
        }
      }

      sub_1BA172980(v105, type metadata accessor for SummarySharingSelectableDataTypeItem);
      v103(v19, 1, 1, v42);
      sub_1BA172980(v19, sub_1BA17256C);
      v5 = v104;
LABEL_114:
      v31 = v175;
LABEL_88:
      __swift_destroy_boxed_opaque_existential_1(v184);
      __swift_destroy_boxed_opaque_existential_1(&v185);
LABEL_89:
      v41 = v159 + 1;
      v99 = v158 + 40;
      v100 = v157 - 1;
      if (v159 + 1 != v156)
      {
        continue;
      }

      break;
    }

    v30 = v156;
LABEL_33:
    v19 = v155;
    if (v30 < v155)
    {
      goto LABEL_155;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v31 = sub_1BA27F470(0, *(v31 + 2) + 1, 1, v31);
    }

    v54 = *(v31 + 2);
    v53 = *(v31 + 3);
    v55 = v54 + 1;
    if (v54 >= v53 >> 1)
    {
      v31 = sub_1BA27F470((v53 > 1), v54 + 1, 1, v31);
    }

    *(v31 + 2) = v55;
    v56 = &v31[16 * v54];
    *(v56 + 4) = v19;
    *(v56 + 5) = v30;
    v19 = *v154;
    if (!*v154)
    {
      goto LABEL_165;
    }

    if (v54)
    {
      break;
    }

LABEL_3:
    v32 = v42;
    v29 = v168[1];
    v19 = v167;
    v22 = v166;
    if (v30 >= v29)
    {
      goto LABEL_126;
    }
  }

  while (1)
  {
    v57 = v55 - 1;
    if (v55 >= 4)
    {
      v62 = &v31[16 * v55 + 32];
      v63 = *(v62 - 64);
      v64 = *(v62 - 56);
      v68 = __OFSUB__(v64, v63);
      v65 = v64 - v63;
      if (v68)
      {
        goto LABEL_142;
      }

      v67 = *(v62 - 48);
      v66 = *(v62 - 40);
      v68 = __OFSUB__(v66, v67);
      v60 = v66 - v67;
      v61 = v68;
      if (v68)
      {
        goto LABEL_143;
      }

      v69 = &v31[16 * v55];
      v71 = *v69;
      v70 = *(v69 + 1);
      v68 = __OFSUB__(v70, v71);
      v72 = v70 - v71;
      if (v68)
      {
        goto LABEL_145;
      }

      v68 = __OFADD__(v60, v72);
      v73 = v60 + v72;
      if (v68)
      {
        goto LABEL_148;
      }

      if (v73 >= v65)
      {
        v91 = &v31[16 * v57 + 32];
        v93 = *v91;
        v92 = *(v91 + 1);
        v68 = __OFSUB__(v92, v93);
        v94 = v92 - v93;
        if (v68)
        {
          goto LABEL_154;
        }

        if (v60 < v94)
        {
          v57 = v55 - 2;
        }

        goto LABEL_74;
      }

      goto LABEL_53;
    }

    if (v55 == 3)
    {
      v58 = *(v31 + 4);
      v59 = *(v31 + 5);
      v68 = __OFSUB__(v59, v58);
      v60 = v59 - v58;
      v61 = v68;
LABEL_53:
      if (v61)
      {
        goto LABEL_144;
      }

      v74 = &v31[16 * v55];
      v76 = *v74;
      v75 = *(v74 + 1);
      v77 = __OFSUB__(v75, v76);
      v78 = v75 - v76;
      v79 = v77;
      if (v77)
      {
        goto LABEL_147;
      }

      v80 = &v31[16 * v57 + 32];
      v82 = *v80;
      v81 = *(v80 + 1);
      v68 = __OFSUB__(v81, v82);
      v83 = v81 - v82;
      if (v68)
      {
        goto LABEL_150;
      }

      if (__OFADD__(v78, v83))
      {
        goto LABEL_151;
      }

      if (v78 + v83 >= v60)
      {
        if (v60 < v83)
        {
          v57 = v55 - 2;
        }

        goto LABEL_74;
      }

      goto LABEL_67;
    }

    v84 = &v31[16 * v55];
    v86 = *v84;
    v85 = *(v84 + 1);
    v68 = __OFSUB__(v85, v86);
    v78 = v85 - v86;
    v79 = v68;
LABEL_67:
    if (v79)
    {
      goto LABEL_146;
    }

    v87 = &v31[16 * v57];
    v89 = *(v87 + 4);
    v88 = *(v87 + 5);
    v68 = __OFSUB__(v88, v89);
    v90 = v88 - v89;
    if (v68)
    {
      goto LABEL_149;
    }

    if (v90 < v78)
    {
      goto LABEL_3;
    }

LABEL_74:
    v95 = v57 - 1;
    if (v57 - 1 >= v55)
    {
      break;
    }

    if (!*v168)
    {
      goto LABEL_162;
    }

    v96 = *&v31[16 * v95 + 32];
    v97 = *&v31[16 * v57 + 40];
    sub_1BA171A28((*v168 + 40 * v96), (*v168 + 40 * *&v31[16 * v57 + 32]), *v168 + 40 * v97, v19);
    if (v5)
    {
      goto LABEL_138;
    }

    if (v97 < v96)
    {
      goto LABEL_140;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v31 = sub_1BA442D80(v31);
    }

    if (v95 >= *(v31 + 2))
    {
      goto LABEL_141;
    }

    v98 = &v31[16 * v95];
    *(v98 + 4) = v96;
    *(v98 + 5) = v97;
    v186 = v31;
    sub_1BA442CF4(v57);
    v31 = v186;
    v55 = *(v186 + 2);
    v42 = v176;
    if (v55 <= 1)
    {
      goto LABEL_3;
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
LABEL_145:
  __break(1u);
LABEL_146:
  __break(1u);
LABEL_147:
  __break(1u);
LABEL_148:
  __break(1u);
LABEL_149:
  __break(1u);
LABEL_150:
  __break(1u);
LABEL_151:
  __break(1u);
LABEL_152:
  __break(1u);
LABEL_153:
  __break(1u);
LABEL_154:
  __break(1u);
LABEL_155:
  __break(1u);
LABEL_156:
  __break(1u);
LABEL_157:
  v31 = sub_1BA442D80(v31);
LABEL_128:
  v186 = v31;
  v148 = *(v31 + 2);
  if (v148 >= 2)
  {
    while (*v168)
    {
      v149 = *&v31[16 * v148];
      v150 = *&v31[16 * v148 + 24];
      sub_1BA171A28((*v168 + 40 * v149), (*v168 + 40 * *&v31[16 * v148 + 16]), *v168 + 40 * v150, v19);
      if (v5)
      {
        goto LABEL_138;
      }

      if (v150 < v149)
      {
        goto LABEL_152;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v31 = sub_1BA442D80(v31);
      }

      if (v148 - 2 >= *(v31 + 2))
      {
        goto LABEL_153;
      }

      v151 = &v31[16 * v148];
      *v151 = v149;
      *(v151 + 1) = v150;
      v186 = v31;
      sub_1BA442CF4(v148 - 1);
      v31 = v186;
      v148 = *(v186 + 2);
      if (v148 <= 1)
      {
        goto LABEL_138;
      }
    }

    goto LABEL_163;
  }

LABEL_138:
}
uint64_t sub_1BA425CF8(void **__src, id *a2, id *a3, id *a4)
{
  v4 = a3;
  v5 = a2;
  v6 = __src;
  v7 = a2 - __src;
  v8 = a2 - __src + 7;
  if (a2 - __src >= 0)
  {
    v8 = a2 - __src;
  }

  v9 = v8 >> 3;
  v10 = a3 - a2;
  v11 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v11 = a3 - a2;
  }

  v12 = v11 >> 3;
  if (v9 < v11 >> 3)
  {
    if (a4 != __src || &__src[v9] <= a4)
    {
      v13 = a4;
      memmove(a4, __src, 8 * v9);
      v5 = a2;
      a4 = v13;
    }

    v49 = &a4[v9];
    v15 = a4;
    if (v7 < 8)
    {
LABEL_10:
      v16 = v6;
      goto LABEL_37;
    }

    while (1)
    {
      if (v5 >= v4)
      {
        goto LABEL_10;
      }

      v46 = v6;
      __dst = v5;
      v19 = *v15;
      v20 = *v5;
      v21 = v19;
      v22 = [v20 source];
      v23 = [v22 name];

      _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      v24 = [v21 source];
      v25 = [v24 name];

      _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      sub_1B9F252FC();
      v26 = sub_1BA4A7B78();

      if (v26 != -1)
      {
        break;
      }

      v17 = v46;
      v18 = __dst;
      v5 = __dst + 1;
      if (v46 != __dst)
      {
        goto LABEL_12;
      }

LABEL_13:
      v6 = v17 + 1;
      if (v15 >= v49)
      {
        goto LABEL_10;
      }
    }

    v18 = v15;
    v17 = v46;
    v27 = v46 == v15++;
    v5 = __dst;
    if (v27)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v17 = *v18;
    goto LABEL_13;
  }

  v15 = a4;
  if (a4 != a2 || &a2[v12] <= a4)
  {
    memmove(a4, a2, 8 * v12);
    v5 = a2;
  }

  v49 = &v15[v12];
  if (v10 < 8 || v5 <= v6)
  {
    v16 = v5;
  }

  else
  {
    v44 = v15;
LABEL_25:
    __dsta = v5;
    v29 = v5 - 1;
    v30 = v4 - 1;
    v31 = v49;
    do
    {
      v32 = v30;
      v33 = v30 + 1;
      v34 = *--v31;
      v35 = v29;
      v36 = *v29;
      v45 = v34;
      v37 = v36;
      v38 = [v45 source];
      v39 = [v38 name];

      _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      v40 = [v37 source];
      v41 = [v40 name];

      _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      sub_1B9F252FC();
      v42 = sub_1BA4A7B78();

      if (v42 == -1)
      {
        v4 = v32;
        if (v33 != __dsta)
        {
          *v32 = *v35;
        }

        v15 = v44;
        if (v49 <= v44 || (v5 = v35, v35 <= v6))
        {
          v16 = v35;
          goto LABEL_37;
        }

        goto LABEL_25;
      }

      if (v33 != v49)
      {
        *v32 = *v31;
      }

      v30 = v32 - 1;
      v49 = v31;
      v29 = v35;
    }

    while (v31 > v44);
    v49 = v31;
    v15 = v44;
    v16 = __dsta;
  }

LABEL_37:
  if (v16 != v15 || v16 >= (v15 + ((v49 - v15 + (v49 - v15 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v16, v15, 8 * (v49 - v15));
  }

  return 1;
}

uint64_t sub_1BA42615C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v13 = a4;
  v14 = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v12);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_1, a2, a4);
  v10 = *a3;
  *(v10 + 16) = a1 + 1;
  return sub_1B9F1134C(&v12, v10 + 40 * a1 + 32);
}

uint64_t sub_1BA4261F4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1BA4263C4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1BA426424(void *a1, uint64_t a2)
{
  v5 = OBJC_IVAR____TtC18HealthExperienceUI20AppSourcesDataSource_profileInformationDataSource;
  *(v2 + OBJC_IVAR____TtC18HealthExperienceUI20AppSourcesDataSource_profileInformationDataSource) = 0;
  v6 = OBJC_IVAR____TtC18HealthExperienceUI20AppSourcesDataSource_healthStore;
  *(v2 + OBJC_IVAR____TtC18HealthExperienceUI20AppSourcesDataSource_healthStore) = a1;
  sub_1BA0B5A00(a2, &v16);
  if (v17)
  {
    sub_1B9F1134C(&v16, v18);
    __swift_project_boxed_opaque_existential_1(v18, v18[3]);
    v7 = a1;
    v8 = v2;
    v9 = sub_1BA4A1B68();
    v10 = [v7 profileIdentifier];
    type metadata accessor for HealthKitProfileInformationDataSource();
    swift_allocObject();
    v11 = sub_1BA2B8F0C(v9, v10, 0, 0, sub_1BA06EF58, 0);
    v2 = v8;
    *(v8 + v5) = v11;

    __swift_destroy_boxed_opaque_existential_1(v18);
  }

  else
  {
    v12 = a1;
    sub_1BA0B5978(&v16);
  }

  v13 = [objc_allocWithZone(MEMORY[0x1E69A44D0]) initWithHealthStore_];
  *(v2 + OBJC_IVAR____TtC18HealthExperienceUI20AppSourcesDataSource_sourceListDataSource) = v13;
  v14 = sub_1B9F1DAFC(MEMORY[0x1E69E7CC0], 1, sub_1BA423308, 0);

  sub_1BA423408();

  sub_1BA0B5978(a2);
  return v14;
}

uint64_t SizeClassResponsiveDataSource.__allocating_init(dataSources:defaultDataSource:)(uint64_t a1, uint64_t a2, _UNKNOWN **a3, _UNKNOWN **a4)
{
  swift_allocObject();
  v8 = sub_1B9F1D348(a1, a2, a3, a4);
  swift_unknownObjectRelease();
  return v8;
}

uint64_t SizeClassResponsiveDataSource.init(dataSources:defaultDataSource:)(uint64_t a1, uint64_t a2, _UNKNOWN **a3, _UNKNOWN **a4)
{
  v4 = sub_1B9F1D348(a1, a2, a3, a4);
  swift_unknownObjectRelease();
  return v4;
}

uint64_t SizeClassResponsiveDataSource.deinit()
{

  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  return v0;
}

void sub_1BA426724(uint64_t a1, char a2)
{
  v5 = a2 & 1;
  swift_beginAccess();
  v6 = *(v2 + 72);
  v7 = *(v2 + 80);
  *(v2 + 72) = a1;
  *(v2 + 80) = v5;
  if (a2)
  {
    if (v7)
    {
      return;
    }

LABEL_7:
    sub_1B9F1DCEC();
    swift_beginAccess();
    v8 = *(v2 + 16);
    v9 = swift_allocObject();
    *(v9 + 16) = v2;
    *(v9 + 24) = 1;
    v12[4] = sub_1BA427878;
    v12[5] = v9;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 1107296256;
    v12[2] = sub_1B9F8A254;
    v12[3] = &block_descriptor_116;
    v10 = _Block_copy(v12);
    v11 = v8;

    [v11 notifyObservers_];
    _Block_release(v10);

    return;
  }

  if (v6 != a1)
  {
    LOBYTE(v7) = 1;
  }

  if (v7)
  {
    goto LABEL_7;
  }
}

void (*sub_1BA426874(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x78uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 112) = v1;
  swift_beginAccess();
  v5 = *(v1 + 80);
  *(v4 + 96) = *(v1 + 72);
  *(v4 + 104) = v5;
  return sub_1BA426908;
}

void sub_1BA426908(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 96);
  v5 = v3[104];
  v6 = *(v3 + 14);
  if (a2)
  {
    sub_1BA426724(v4, v5);
    goto LABEL_10;
  }

  v7 = *(v6 + 72);
  v8 = *(v6 + 80);
  *(v6 + 72) = v4;
  *(v6 + 80) = v5;
  if (v5)
  {
    if (v8)
    {
      goto LABEL_10;
    }

LABEL_9:
    v9 = *(v3 + 14);
    sub_1B9F1DCEC();
    swift_beginAccess();
    v10 = *(v9 + 16);
    v11 = swift_allocObject();
    *(v11 + 16) = v9;
    *(v11 + 24) = 1;
    *(v3 + 4) = sub_1BA427B00;
    *(v3 + 5) = v11;
    *v3 = MEMORY[0x1E69E9820];
    *(v3 + 1) = 1107296256;
    *(v3 + 2) = sub_1B9F8A254;
    *(v3 + 3) = &block_descriptor_7_3;
    v12 = _Block_copy(v3);
    v13 = v10;

    [v13 notifyObservers_];
    _Block_release(v12);

    goto LABEL_10;
  }

  if (v4 != v7)
  {
    v8 = 1;
  }

  if (v8)
  {
    goto LABEL_9;
  }

LABEL_10:

  free(v3);
}

uint64_t sub_1BA426ABC(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 96);
  ObjectType = swift_getObjectType();
  return (*(v3 + 16))(a1, ObjectType, v3) & 1;
}

uint64_t sub_1BA426B38(__int128 *a1)
{
  v7 = *a1;
  v2 = *(a1 + 2);
  swift_beginAccess();
  v3 = *(v1 + 88);
  v4 = *(v1 + 96);
  ObjectType = swift_getObjectType();
  v10 = v3;
  v8 = v7;
  v9 = v2;
  return (*(v4 + 8))(&v8, ObjectType, v4);
}

void sub_1BA426BD4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  swift_beginAccess();
  v6 = *(v4 + 16);
  v7 = swift_allocObject();
  *(v7 + 16) = v4;
  *(v7 + 24) = a4;
  aBlock[4] = sub_1BA427B00;
  aBlock[5] = v7;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B9F8A254;
  aBlock[3] = &block_descriptor_14_4;
  v8 = _Block_copy(aBlock);
  v9 = v6;

  [v9 notifyObservers_];
  _Block_release(v8);
}

uint64_t sub_1BA426CD8()
{
  sub_1B9F7A684();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1BA4B5480;
  v1 = sub_1BA4A4438();
  v2 = MEMORY[0x1E69DC130];
  *(v0 + 32) = v1;
  *(v0 + 40) = v2;
  return v0;
}

void sub_1BA426D30(void *a1)
{
  v1 = [a1 traitCollection];
  v2 = [v1 horizontalSizeClass];

  sub_1BA426724(v2, 0);
}

uint64_t SizeClassResponsiveDataSource.identifier.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t sub_1BA426DC8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 104);
  *a2 = *(v3 + 88);
  *(a2 + 16) = v4;
  return swift_unknownObjectRetain();
}

uint64_t sub_1BA426E20(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 16);
  v4 = *a2;
  swift_beginAccess();
  *(v4 + 88) = *a1;
  *(v4 + 104) = v3;
  swift_unknownObjectRetain();
  return swift_unknownObjectRelease();
}

uint64_t SizeClassResponsiveDataSource.__deallocating_deinit()
{

  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_1BA4270C0(__int128 *a1)
{
  v2 = *v1;
  v8 = *a1;
  v3 = *(a1 + 2);
  swift_beginAccess();
  v4 = *(v2 + 88);
  v5 = *(v2 + 96);
  ObjectType = swift_getObjectType();
  v10 = v3;
  v11 = v4;
  v9 = v8;
  return (*(v5 + 8))(&v9, ObjectType, v5);
}

uint64_t sub_1BA427154(uint64_t a1)
{
  v3 = *v1;
  swift_beginAccess();
  v4 = *(v3 + 96);
  ObjectType = swift_getObjectType();
  return (*(v4 + 16))(a1, ObjectType, v4) & 1;
}

void sub_1BA4271D4(void *a1)
{
  v1 = [a1 traitCollection];
  v2 = [v1 horizontalSizeClass];

  sub_1BA426724(v2, 0);
}

uint64_t SizeClassResponsiveDataSource.supplementaryItem(ofKind:at:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v30[1] = *v4;
  v10 = sub_1BA4A3EA8();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v14 = v5[13];
  v31 = *(v5 + 11);
  v34 = v31;
  v35 = v14;
  sub_1B9F1AC28();
  sub_1B9F0D950(0, qword_1EDC648F8);
  swift_unknownObjectRetain();
  if (swift_dynamicCast())
  {
    sub_1B9F1134C(v32, &v36);
    v15 = v38;
    v16 = v39;
    __swift_project_boxed_opaque_existential_1(&v36, v38);
    (*(v16 + 8))(a1, a2, a3, v15, v16);
    return __swift_destroy_boxed_opaque_existential_1(&v36);
  }

  else
  {
    *&v31 = a4;
    v33 = 0;
    memset(v32, 0, sizeof(v32));
    sub_1B9F43A50(v32, &qword_1EBBEBD40, qword_1EDC648F8);
    sub_1BA4A3E28();

    v18 = sub_1BA4A3E88();
    v19 = sub_1BA4A6FA8();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v30[0] = swift_slowAlloc();
      *&v32[0] = v30[0];
      *v20 = 136315394;
      v21 = sub_1BA4A85D8();
      v23 = sub_1B9F0B82C(v21, v22, v32);

      *(v20 + 4) = v23;
      *(v20 + 12) = 2080;
      v24 = v5[13];
      v36 = *(v5 + 11);
      v37 = v24;
      swift_unknownObjectRetain();
      v25 = sub_1BA4A6808();
      v27 = sub_1B9F0B82C(v25, v26, v32);

      *(v20 + 14) = v27;
      _os_log_impl(&dword_1B9F07000, v18, v19, "[%s]: Cannot fetch supplementary item because child data source is not SupplementaryItemDataSource: %s", v20, 0x16u);
      v28 = v30[0];
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v28, -1, -1);
      MEMORY[0x1BFAF43A0](v20, -1, -1);
    }

    (*(v11 + 8))(v13, v10);
    v29 = v31;
    *(v31 + 24) = &type metadata for FallbackHeaderItem;
    v29[4] = sub_1BA1BA0F8();
    *v29 = swift_allocObject();
    return FallbackHeaderItem.init()();
  }
}

Swift::Void __swiftcall SizeClassResponsiveDataSource.registerCells(for:)(UICollectionView *a1)
{
  v3 = *(v1 + 56);
  v18 = *(v1 + 40);
  *&v19 = v3;
  sub_1B9F1AC28();
  sub_1B9F0D950(0, qword_1EDC6C328);
  swift_unknownObjectRetain();
  v17 = a1;
  if (swift_dynamicCast())
  {
    v4 = *(&v24 + 1);
    v5 = v25;
    __swift_project_boxed_opaque_existential_1(&v23, *(&v24 + 1));
    (*(v5 + 8))(a1, v4, v5);
    __swift_destroy_boxed_opaque_existential_1(&v23);
  }

  else
  {
    v25 = 0;
    v23 = 0u;
    v24 = 0u;
    sub_1B9F43A50(&v23, &qword_1EDC6C320, qword_1EDC6C328);
  }

  v6 = *(v1 + 64);
  v7 = 1 << *(v6 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(v6 + 64);
  v10 = (v7 + 63) >> 6;

  v11 = 0;
  if (v9)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v12 >= v10)
    {

      return;
    }

    v9 = *(v6 + 64 + 8 * v12);
    ++v11;
    if (v9)
    {
      while (1)
      {
        v13 = *(v6 + 56) + 24 * (__clz(__rbit64(v9)) | (v12 << 6));
        v14 = *(v13 + 16);
        v9 &= v9 - 1;
        v21 = *v13;
        v22 = v14;
        swift_unknownObjectRetain();
        if (swift_dynamicCast())
        {
          sub_1B9F1134C(&v18, &v23);
          v15 = *(&v24 + 1);
          v16 = v25;
          __swift_project_boxed_opaque_existential_1(&v23, *(&v24 + 1));
          (*(v16 + 8))(v17, v15, v16);
          __swift_destroy_boxed_opaque_existential_1(&v23);
          v11 = v12;
          if (!v9)
          {
            goto LABEL_10;
          }
        }

        else
        {
          v20 = 0;
          v18 = 0u;
          v19 = 0u;
          sub_1B9F43A50(&v18, &qword_1EDC6C320, qword_1EDC6C328);
          v11 = v12;
          if (!v9)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v12 = v11;
      }
    }
  }

  __break(1u);
}

uint64_t TitleEmptyStateCollectionViewCellItem.reuseIdentifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t TitleEmptyStateCollectionViewCellItem.reuseIdentifier.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t TitleEmptyStateCollectionViewCellItem.uniqueIdentifier.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t TitleEmptyStateCollectionViewCellItem.title.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t TitleEmptyStateCollectionViewCellItem.baseIdentifier.getter()
{
  v0 = sub_1BA4A6AE8();
  v1 = HKUIJoinStringsForAutomationIdentifier();

  if (!v1)
  {
    return 0;
  }

  v2 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();

  return v2;
}

void sub_1BA427C90(uint64_t *a1@<X8>)
{
  v2 = sub_1BA4A6AE8();
  v3 = HKUIJoinStringsForAutomationIdentifier();

  if (v3)
  {
    v4 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  *a1 = v4;
  a1[1] = v6;
}

uint64_t (*TitleEmptyStateCollectionViewCellItem.baseIdentifier.modify(uint64_t *a1))()
{
  v2 = sub_1BA4A6AE8();
  v3 = HKUIJoinStringsForAutomationIdentifier();

  if (v3)
  {
    v4 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  *a1 = v4;
  a1[1] = v6;
  return sub_1B9FF3F48;
}

uint64_t TitleEmptyStateCollectionViewCellItem.makeContentConfiguration()@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_1BA4A3EA8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1BA4A4428();
  v7 = MEMORY[0x1E69DC110];
  a1[3] = v6;
  a1[4] = v7;
  __swift_allocate_boxed_opaque_existential_1(a1);

  sub_1BA4A43A8();
  sub_1BA4A43B8();
  v8 = *MEMORY[0x1E69DDCF8];
  v9 = objc_opt_self();
  v10 = [v9 preferredFontDescriptorWithTextStyle:v8 compatibleWithTraitCollection:0];
  if (v10)
  {
    v11 = v10;
    v12 = [objc_opt_self() fontWithDescriptor:v10 size:0.0];
  }

  else
  {
    sub_1BA4A3DD8();
    v13 = v8;
    v14 = sub_1BA4A3E88();
    v15 = sub_1BA4A6FB8();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v38 = v36;
      *v16 = 136315906;
      v17 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      v37 = v13;
      v19 = sub_1B9F0B82C(v17, v18, &v38);

      *(v16 + 4) = v19;
      *(v16 + 12) = 2080;
      v39 = 0;
      v40 = 1;
      sub_1B9F6C13C(0, &qword_1EBBECB00, type metadata accessor for Weight);
      v20 = sub_1BA4A6808();
      v22 = sub_1B9F0B82C(v20, v21, &v38);

      *(v16 + 14) = v22;
      *(v16 + 22) = 2080;
      LODWORD(v39) = 0;
      type metadata accessor for SymbolicTraits(0);
      v23 = sub_1BA4A6808();
      v25 = sub_1B9F0B82C(v23, v24, &v38);
      v13 = v37;

      *(v16 + 24) = v25;
      *(v16 + 32) = 2112;
      v26 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
      *(v16 + 34) = v26;
      v27 = v35;
      *v35 = v26;
      _os_log_impl(&dword_1B9F07000, v14, v15, "Unable to create descriptor with textStyle %s, weight %s, traits %s and rounded %@. Using only the text style", v16, 0x2Au);
      sub_1B9F8C6C8(v27);
      MEMORY[0x1BFAF43A0](v27, -1, -1);
      v28 = v36;
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v28, -1, -1);
      MEMORY[0x1BFAF43A0](v16, -1, -1);
    }

    (*(v3 + 8))(v5, v2);
    v29 = [v9 preferredFontDescriptorWithTextStyle_];
    v30 = [objc_opt_self() fontWithDescriptor:v29 size:0.0];
  }

  v31 = sub_1BA4A4238();
  sub_1BA4A41E8();
  v31(&v39, 0);
  v32 = [objc_opt_self() secondaryLabelColor];
  v33 = sub_1BA4A4238();
  sub_1BA4A41F8();
  return v33(&v39, 0);
}

uint64_t sub_1BA428204()
{
  v0 = sub_1BA4A6AE8();
  v1 = HKUIJoinStringsForAutomationIdentifier();

  if (!v1)
  {
    return 0;
  }

  v2 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();

  return v2;
}

uint64_t (*sub_1BA428280(uint64_t *a1))()
{
  v2 = sub_1BA4A6AE8();
  v3 = HKUIJoinStringsForAutomationIdentifier();

  if (v3)
  {
    v4 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  *a1 = v4;
  a1[1] = v6;
  return sub_1BA4286CC;
}

uint64_t sub_1BA428318(uint64_t a1)
{
  v2 = sub_1BA139F30();

  return MEMORY[0x1EEE0DA58](a1, v2);
}

uint64_t sub_1BA4283C8()
{
  sub_1BA4A4158();
  v0 = [objc_opt_self() tertiarySystemFillColor];
  return sub_1BA4A4118();
}

id TitleEmptyStateCollectionViewCell.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id TitleEmptyStateCollectionViewCell.init(frame:)(double a1, double a2, double a3, double a4)
{
  v10.receiver = v4;
  v10.super_class = type metadata accessor for TitleEmptyStateCollectionViewCell();
  return objc_msgSendSuper2(&v10, sel_initWithFrame_, a1, a2, a3, a4);
}

id TitleEmptyStateCollectionViewCell.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id TitleEmptyStateCollectionViewCell.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for TitleEmptyStateCollectionViewCell();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id TitleEmptyStateCollectionViewCell.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TitleEmptyStateCollectionViewCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_1BA4286A0(uint64_t a1)
{
  result = sub_1BA139F30();
  *(a1 + 8) = result;
  return result;
}

id sub_1BA4286D0(double a1, double a2, double a3, double a4)
{
  sub_1B9F0D774(0, &qword_1EDC6B770, MEMORY[0x1E69DC0D8]);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v31 - v13;
  v15 = &v4[OBJC_IVAR____TtC18HealthExperienceUI33RequestNewSharingRelationshipCell_item];
  *v15 = 0u;
  *(v15 + 1) = 0u;
  *(v15 + 4) = 0;
  v16 = &v4[OBJC_IVAR____TtC18HealthExperienceUI33RequestNewSharingRelationshipCell_accessibilityIdentifierBase];
  v32 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  v33 = v17;

  MEMORY[0x1BFAF1350](0x676E69726168532ELL, 0xE800000000000000);

  MEMORY[0x1BFAF1350](0x6E696D6F636E492ELL, 0xE900000000000067);

  MEMORY[0x1BFAF1350](0x526E6F737265502ELL, 0xEE00747365757165);

  v18 = v33;
  *v16 = v32;
  v16[1] = v18;
  v19 = type metadata accessor for RequestNewSharingRelationshipCell();
  v31.receiver = v4;
  v31.super_class = v19;
  v20 = objc_msgSendSuper2(&v31, sel_initWithFrame_, a1, a2, a3, a4);
  sub_1BA4A4158();
  v21 = sub_1BA4A4168();
  v22 = *(v21 - 8);
  (*(v22 + 56))(v14, 0, 1, v21);
  v23 = MEMORY[0x1BFAF1F10](v14);
  MEMORY[0x1BFAF1F00](v23);
  if ((*(v22 + 48))(v11, 1, v21))
  {
    v24 = MEMORY[0x1E69DC0D8];
    sub_1BA429C60(v11, v14, &qword_1EDC6B770, MEMORY[0x1E69DC0D8]);
    MEMORY[0x1BFAF1F10](v14);
    sub_1B9F44648(v11, &qword_1EDC6B770, v24);
  }

  else
  {
    v25 = [objc_opt_self() secondarySystemGroupedBackgroundColor];
    sub_1BA4A4118();
    MEMORY[0x1BFAF1F10](v11);
  }

  v26 = *MEMORY[0x1E69796E8];
  v27 = [v20 layer];
  [v27 setCornerCurve_];

  v28 = [v20 layer];
  [v28 setCornerRadius_];

  v29 = [v20 layer];
  [v29 setMaskedCorners_];

  [v20 setClipsToBounds_];
  return v20;
}

uint64_t sub_1BA428AD0()
{
  v1 = v0;
  sub_1B9F0D774(0, &qword_1EDC6B770, MEMORY[0x1E69DC0D8]);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v31 - v6;
  v8 = sub_1BA4A4428();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtC18HealthExperienceUI33RequestNewSharingRelationshipCell_item;
  swift_beginAccess();
  sub_1BA429C60(v1 + v12, v35, &qword_1EDC6E1A0, sub_1B9FCD918);
  if (!v36)
  {
    return sub_1B9F44648(v35, &qword_1EDC6E1A0, sub_1B9FCD918);
  }

  sub_1B9FCD918();
  type metadata accessor for RequestNewSharingRelationshipItem();
  result = swift_dynamicCast();
  if (result)
  {
    v33 = v9;
    v14 = v34;
    [v1 setUserInteractionEnabled_];
    sub_1BA4A43A8();
    if (qword_1EDC5E100 != -1)
    {
      swift_once();
    }

    sub_1BA4A1318();
    sub_1BA4A43B8();
    v15 = *(v14 + 96);
    v16 = objc_opt_self();
    v17 = [v16 linkColor];
    v32 = v16;
    if (v15 != 2)
    {
      [v16 secondaryLabelColor];
    }

    v18 = sub_1BA4A4238();
    sub_1BA4A41F8();
    v18(v35, 0);
    v36 = v8;
    v37 = MEMORY[0x1E69DC110];
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v35);
    v20 = v33;
    (*(v33 + 16))(boxed_opaque_existential_1, v11, v8);
    MEMORY[0x1BFAF1EF0](v35);
    v21 = [v1 contentView];
    v22 = v21;
    if (*(v14 + 96))
    {
      v23 = 0.75;
    }

    else
    {
      v23 = 1.0;
    }

    [v21 setAlpha_];

    MEMORY[0x1BFAF1F00]();
    v24 = sub_1BA4A4168();
    if ((*(*(v24 - 8) + 48))(v7, 1, v24))
    {
      v25 = MEMORY[0x1E69DC0D8];
      sub_1BA429C60(v7, v4, &qword_1EDC6B770, MEMORY[0x1E69DC0D8]);
      MEMORY[0x1BFAF1F10](v4);
      v20 = v33;
      sub_1B9F44648(v7, &qword_1EDC6B770, v25);
    }

    else
    {
      v26 = [v32 secondarySystemGroupedBackgroundColor];
      v27 = v26;
      if (*(v14 + 96))
      {
        v28 = 0.75;
      }

      else
      {
        v28 = 1.0;
      }

      v29 = [v26 colorWithAlphaComponent_];

      sub_1BA4A4118();
      MEMORY[0x1BFAF1F10](v7);
    }

    v30 = sub_1BA4A6758();
    [v1 setAccessibilityIdentifier_];

    return (*(v20 + 8))(v11, v8);
  }

  return result;
}

uint64_t static RequestNewSharingRelationshipItem.title.getter()
{
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  return sub_1BA4A1318();
}

id sub_1BA429070()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RequestNewSharingRelationshipCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1BA429110@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI33RequestNewSharingRelationshipCell_item;
  swift_beginAccess();
  return sub_1BA429C60(v1 + v3, a1, &qword_1EDC6E1A0, sub_1B9FCD918);
}

uint64_t sub_1BA429184(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI33RequestNewSharingRelationshipCell_item;
  swift_beginAccess();
  sub_1B9F63E74(a1, v1 + v3);
  swift_endAccess();
  sub_1BA428AD0();
  return sub_1B9F44648(a1, &qword_1EDC6E1A0, sub_1B9FCD918);
}

uint64_t (*sub_1BA42920C(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1BA429270;
}

uint64_t sub_1BA429270(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return sub_1BA428AD0();
  }

  return result;
}

uint64_t sub_1BA4292A4(void *a1, void *a2)
{
  v4 = MEMORY[0x1E69A2CB0];
  sub_1B9F0D774(0, &qword_1EBBF0038, MEMORY[0x1E69A2CB0]);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v11 - v6;
  v8 = sub_1BA4A3788();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  v11[3] = sub_1BA35A4C8();
  v11[0] = a1;
  v9 = a1;
  _s18HealthExperienceUI35SharingInviteActivityViewControllerC7present2on4with6senderySo06UIViewH0C_0A11AppServices27ContactDeepLinkingParameterVSgypSgtFZ_0(a2, v7, v11);
  sub_1B9F44648(v7, &qword_1EBBF0038, v4);
  return sub_1B9F23224(v11);
}

uint64_t sub_1BA4293C0()
{
  v1 = v0;
  sub_1B9F0D774(0, &qword_1EDC6B770, MEMORY[0x1E69DC0D8]);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = aBlock - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = aBlock - v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = aBlock - v9;
  v11 = sub_1BA4A40A8();
  v12 = type metadata accessor for RequestNewSharingRelationshipCell();
  v27.receiver = v1;
  v27.super_class = v12;
  objc_msgSendSuper2(&v27, sel__bridgedUpdateConfigurationUsingState_, v11);

  if ([v1 isHighlighted])
  {
    MEMORY[0x1BFAF1F00]();
    v13 = sub_1BA4A4168();
    if ((*(*(v13 - 8) + 48))(v10, 1, v13))
    {
      v14 = MEMORY[0x1E69DC0D8];
      sub_1BA429C60(v10, v7, &qword_1EDC6B770, MEMORY[0x1E69DC0D8]);
      MEMORY[0x1BFAF1F10](v7);
      v15 = v10;
      return sub_1B9F44648(v15, &qword_1EDC6B770, v14);
    }

    v18 = objc_opt_self();
    v19 = [v18 systemGray5Color];
    v20 = [v18 tertiarySystemGroupedBackgroundColor];
    v21 = swift_allocObject();
    v21[2] = 0;
    v21[3] = v20;
    v21[4] = 0;
    v21[5] = v19;
    v22 = objc_allocWithZone(MEMORY[0x1E69DC888]);
    aBlock[4] = sub_1B9FD7F54;
    aBlock[5] = v21;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1B9F7EBBC;
    aBlock[3] = &block_descriptor_117;
    v23 = _Block_copy(aBlock);
    [v22 initWithDynamicProvider_];
    _Block_release(v23);

    sub_1BA4A4118();
    v24 = v10;
  }

  else
  {
    MEMORY[0x1BFAF1F00]();
    v16 = sub_1BA4A4168();
    if ((*(*(v16 - 8) + 48))(v4, 1, v16))
    {
      v14 = MEMORY[0x1E69DC0D8];
      sub_1BA429C60(v4, v7, &qword_1EDC6B770, MEMORY[0x1E69DC0D8]);
      MEMORY[0x1BFAF1F10](v7);
      v15 = v4;
      return sub_1B9F44648(v15, &qword_1EDC6B770, v14);
    }

    v25 = [objc_opt_self() secondarySystemGroupedBackgroundColor];
    sub_1BA4A4118();
    v24 = v4;
  }

  return MEMORY[0x1BFAF1F10](v24);
}

uint64_t sub_1BA429834(__int128 *a1, uint64_t a2, char *a3)
{
  v4 = v3;
  v8 = sub_1BA4A1798();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a3;
  v17 = 0xD000000000000022;
  v18 = 0x80000001BA5086A0;
  sub_1BA4A1788();
  sub_1BA429E18(&qword_1EDC6AE60, 255, MEMORY[0x1E69695A8]);
  v13 = sub_1BA4A82D8();
  MEMORY[0x1BFAF1350](v13);

  (*(v9 + 8))(v11, v8);
  v14 = v18;
  *(v4 + 16) = v17;
  *(v4 + 24) = v14;
  v17 = type metadata accessor for RequestNewSharingRelationshipCell();
  sub_1BA429E60();
  *(v4 + 32) = sub_1BA4A6808();
  *(v4 + 40) = v15;
  *(v4 + 96) = 2;
  sub_1B9F25598(a1, v4 + 48);
  *(v4 + 88) = a2;
  *(v4 + 96) = v12;
  return v4;
}

uint64_t RequestNewSharingRelationshipItem.deinit()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 48);

  return v0;
}

uint64_t RequestNewSharingRelationshipItem.__deallocating_deinit()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 48);

  return swift_deallocClassInstance();
}

uint64_t sub_1BA429AE8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE0DA58](a1, WitnessTable);
}

uint64_t sub_1BA429C60(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_1B9F0D774(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void sub_1BA429CCC()
{
  v1 = v0 + OBJC_IVAR____TtC18HealthExperienceUI33RequestNewSharingRelationshipCell_item;
  *v1 = 0u;
  *(v1 + 16) = 0u;
  *(v1 + 32) = 0;
  v2 = (v0 + OBJC_IVAR____TtC18HealthExperienceUI33RequestNewSharingRelationshipCell_accessibilityIdentifierBase);
  v4 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  v5 = v3;

  MEMORY[0x1BFAF1350](0x676E69726168532ELL, 0xE800000000000000);

  MEMORY[0x1BFAF1350](0x6E696D6F636E492ELL, 0xE900000000000067);

  MEMORY[0x1BFAF1350](0x526E6F737265502ELL, 0xEE00747365757165);

  *v2 = v4;
  v2[1] = v5;
  sub_1BA4A8018();
  __break(1u);
}

uint64_t sub_1BA429E18(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

unint64_t sub_1BA429E60()
{
  result = qword_1EDC621B0[0];
  if (!qword_1EDC621B0[0])
  {
    type metadata accessor for RequestNewSharingRelationshipCell();
    result = swift_getMetatypeMetadata();
    atomic_store(result, qword_1EDC621B0);
  }

  return result;
}

uint64_t sub_1BA429EA4@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI31FeatureStatusTileViewController_context;
  swift_beginAccess();
  return sub_1BA04B338(v1 + v3, a1);
}

uint64_t sub_1BA429EFC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI31FeatureStatusTileViewController_context;
  swift_beginAccess();
  sub_1BA0BACD4(a1, v1 + v3);
  swift_endAccess();
  v4 = sub_1BA42A144();
  sub_1BA04B338(v1 + v3, v7);
  v5 = OBJC_IVAR____TtC18HealthExperienceUI33FeatureStatusPlatformFeedItemView_context;
  swift_beginAccess();
  sub_1BA0BACD4(v7, v4 + v5);
  swift_endAccess();
  sub_1BA0BD294();

  sub_1BA0BD670(a1);
  return sub_1BA0BD670(v7);
}

void (*sub_1BA429FC0(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x50uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI31FeatureStatusTileViewController_context;
  *(v3 + 64) = v1;
  *(v3 + 72) = v4;
  swift_beginAccess();
  return sub_1BA42A048;
}

void sub_1BA42A048(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = v3[8];
    v5 = v3[9];
    v6 = sub_1BA42A144();
    sub_1BA04B338(v4 + v5, v3);
    v7 = OBJC_IVAR____TtC18HealthExperienceUI33FeatureStatusPlatformFeedItemView_context;
    swift_beginAccess();
    sub_1BA0BACD4(v3, v6 + v7);
    swift_endAccess();
    sub_1BA0BD294();

    sub_1BA0BD670(v3);
  }

  free(v3);
}

void sub_1BA42A0F4()
{
  v0 = sub_1BA42A144();
  sub_1BA0BADEC();
}

id sub_1BA42A144()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI31FeatureStatusTileViewController____lazy_storage___featureStatusPlatformView;
  v2 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI31FeatureStatusTileViewController____lazy_storage___featureStatusPlatformView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI31FeatureStatusTileViewController____lazy_storage___featureStatusPlatformView);
  }

  else
  {
    v4 = [objc_allocWithZone(type metadata accessor for FeatureStatusPlatformFeedItemView()) init];
    [v4 setTranslatesAutoresizingMaskIntoConstraints_];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

void sub_1BA42A1CC(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC18HealthExperienceUI31FeatureStatusTileViewController____lazy_storage___featureStatusPlatformView);
  *(v1 + OBJC_IVAR____TtC18HealthExperienceUI31FeatureStatusTileViewController____lazy_storage___featureStatusPlatformView) = a1;
}

void (*sub_1BA42A1E0(id *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = sub_1BA42A144();
  return sub_1BA42A228;
}

void sub_1BA42A228(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(v1 + OBJC_IVAR____TtC18HealthExperienceUI31FeatureStatusTileViewController____lazy_storage___featureStatusPlatformView);
  *(v1 + OBJC_IVAR____TtC18HealthExperienceUI31FeatureStatusTileViewController____lazy_storage___featureStatusPlatformView) = v2;
}

void sub_1BA42A240()
{
  v6.receiver = v0;
  v6.super_class = type metadata accessor for FeatureStatusTileViewController();
  objc_msgSendSuper2(&v6, sel_viewDidLoad);
  v1 = [v0 view];
  if (v1)
  {
    v2 = v1;
    v3 = sub_1BA42A144();
    [v2 addSubview_];

    v4 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI31FeatureStatusTileViewController____lazy_storage___featureStatusPlatformView];
    v5 = [v0 view];
    [v4 hk:v5 alignConstraintsWithView:?];
  }

  else
  {
    __break(1u);
  }
}

void sub_1BA42A380(char a1)
{
  v2 = sub_1BA42A144();
  sub_1BA0C2110(a1);
}

uint64_t sub_1BA42A3D4@<X0>(char *a1@<X8>)
{
  v2 = sub_1BA4A2A88();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v18 - v7;
  v9 = sub_1BA4A30B8();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1BA42A144();
  sub_1BA0BADEC();
  sub_1BA4A3018();
  (*(v3 + 104))(v5, *MEMORY[0x1E69A31D0], v2);
  v14 = sub_1BA4A2A78();

  v15 = *(v3 + 8);
  v15(v5, v2);
  v15(v8, v2);
  result = (*(v10 + 8))(v12, v9);
  if (v14)
  {
    v17 = 2;
  }

  else
  {
    v17 = 1;
  }

  *a1 = v17;
  return result;
}

void sub_1BA42A5D8()
{
  v1 = sub_1BA42A144();
  swift_beginAccess();
  swift_unknownObjectWeakAssign();

  v2 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI31FeatureStatusTileViewController____lazy_storage___featureStatusPlatformView);
  sub_1BA0C1E78();
}

id FeatureStatusTileViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
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

id FeatureStatusTileViewController.init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = &v3[OBJC_IVAR____TtC18HealthExperienceUI31FeatureStatusTileViewController_context];
  *v5 = 0u;
  *(v5 + 1) = 0u;
  *(v5 + 4) = 0;
  *&v3[OBJC_IVAR____TtC18HealthExperienceUI31FeatureStatusTileViewController____lazy_storage___featureStatusPlatformView] = 0;
  if (a2)
  {
    v6 = sub_1BA4A6758();
  }

  else
  {
    v6 = 0;
  }

  v9.receiver = v3;
  v9.super_class = type metadata accessor for FeatureStatusTileViewController();
  v7 = objc_msgSendSuper2(&v9, sel_initWithNibName_bundle_, v6, a3);

  return v7;
}

id FeatureStatusTileViewController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id FeatureStatusTileViewController.init(coder:)(void *a1)
{
  v3 = &v1[OBJC_IVAR____TtC18HealthExperienceUI31FeatureStatusTileViewController_context];
  *v3 = 0u;
  *(v3 + 1) = 0u;
  *(v3 + 4) = 0;
  *&v1[OBJC_IVAR____TtC18HealthExperienceUI31FeatureStatusTileViewController____lazy_storage___featureStatusPlatformView] = 0;
  v6.receiver = v1;
  v6.super_class = type metadata accessor for FeatureStatusTileViewController();
  v4 = objc_msgSendSuper2(&v6, sel_initWithCoder_, a1);

  if (v4)
  {
  }

  return v4;
}

id FeatureStatusTileViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FeatureStatusTileViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void (*sub_1BA42AB6C(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x70))();
  return sub_1B9FCDD98;
}

void sub_1BA42AC0C(char a1)
{
  v2 = sub_1BA42A144();
  sub_1BA0C2110(a1);
}

id UIResponder.resolvedPersonalizedFeedTrainer()()
{
  if ([v0 nextResponder] && (sub_1BA42B154(), sub_1BA42B0F0(), (swift_dynamicCast() & 1) != 0))
  {
    if (*(&v8 + 1))
    {
      sub_1B9F1134C(&v7, v10);
      v1 = v11;
      v2 = v12;
      __swift_project_boxed_opaque_existential_1(v10, v11);
      v3 = (*(v2 + 8))(v1, v2);
      __swift_destroy_boxed_opaque_existential_1(v10);
      return v3;
    }
  }

  else
  {
    v9 = 0;
    v7 = 0u;
    v8 = 0u;
  }

  sub_1BA42B03C(&v7);
  result = [v0 nextResponder];
  if (result)
  {
    v5 = result;
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      v6 = UIResponder.resolvedPersonalizedFeedTrainer()();

      return v6;
    }

    else
    {

      return 0;
    }
  }

  return result;
}

uint64_t sub_1BA42B03C(uint64_t a1)
{
  sub_1BA42B098();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1BA42B098()
{
  if (!qword_1EDC62620)
  {
    sub_1BA42B0F0();
    v0 = sub_1BA4A7AA8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC62620);
    }
  }
}

unint64_t sub_1BA42B0F0()
{
  result = qword_1EDC62628[0];
  if (!qword_1EDC62628[0])
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, qword_1EDC62628);
  }

  return result;
}

unint64_t sub_1BA42B154()
{
  result = qword_1EDC5E590;
  if (!qword_1EDC5E590)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDC5E590);
  }

  return result;
}

uint64_t DataTypeDetailConfiguration.DescriptionComponent.init(hkType:contentInsetsReference:)@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t a1@<X0>, uint64_t a2@<X8>)@<X1>, void (**a3)(uint64_t a1@<X0>, uint64_t a2@<X8>)@<X8>)
{
  a3[2] = a2;
  result = swift_allocObject();
  *(result + 16) = a1;
  *a3 = sub_1BA095004;
  a3[1] = result;
  return result;
}

uint64_t DataTypeDetailConfiguration.DescriptionComponent.init(measureIdentifier:contentInsetsReference:)@<X0>(uint64_t a1@<X0>, uint64_t (*a2)@<X0>(uint64_t *a1@<X8>)@<X1>, uint64_t (**a3)@<X0>(uint64_t *a1@<X8>)@<X8>)
{
  a3[2] = a2;
  v5 = sub_1BA4A1A48();
  v6 = *(v5 - 8);
  v7 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v8 = swift_allocObject();
  result = (*(v6 + 32))(v8 + v7, a1, v5);
  *a3 = sub_1BA42B814;
  a3[1] = v8;
  return result;
}

uint64_t DataTypeDetailConfiguration.DescriptionComponent.init(descriptionProvider:contentInsetsReference:)@<X0>(__int128 *a1@<X0>, uint64_t (*a2)@<X0>(uint64_t a1@<X8>)@<X1>, uint64_t (**a3)@<X0>(uint64_t a1@<X8>)@<X8>)
{
  a3[2] = a2;
  v5 = swift_allocObject();
  result = sub_1B9F1134C(a1, v5 + 16);
  *a3 = sub_1B9F79BBC;
  a3[1] = v5;
  return result;
}

uint64_t sub_1BA42B39C@<X0>(uint64_t *a1@<X8>)
{
  sub_1BA4A1A78();
  swift_allocObject();
  sub_1BA4A1A68();
  sub_1BA4A1A58();

  if (v12)
  {
    sub_1B9F1134C(&v11, v13);
    __swift_project_boxed_opaque_existential_1(v13, v14);
    v2 = sub_1BA4A1A98();
    v4 = v3;
    *&v11 = 0;
    *(&v11 + 1) = 0xE000000000000000;
    sub_1BA4A7DF8();

    *&v11 = 0xD000000000000010;
    *(&v11 + 1) = 0x80000001BA508750;
    __swift_project_boxed_opaque_existential_1(v13, v14);
    v5 = sub_1BA4A1A98();
    MEMORY[0x1BFAF1350](v5);

    MEMORY[0x1BFAF1350](0x4543414C505B202ELL, 0xEF5D5245444C4F48);
    v6 = v11;
    v7 = swift_allocObject();
    *a1 = v7;
    *(v7 + 16) = v2;
    *(v7 + 24) = v4;
    *(v7 + 32) = v6;
    *(v7 + 48) = 0;
    *(v7 + 56) = 0;
    *(v7 + 64) = 0;
    *(v7 + 72) = 0;
    result = __swift_destroy_boxed_opaque_existential_1(v13);
    v9 = &off_1F3821A00;
    v10 = &type metadata for StandardDataTypeDescriptionProvider;
  }

  else
  {
    result = sub_1B9F43A50(&v11, &qword_1EBBF27D0, &qword_1EBBF27D8);
    v10 = 0;
    v9 = 0;
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }

  a1[3] = v10;
  a1[4] = v9;
  return result;
}

void sub_1BA42B55C(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1BA4A3EA8();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [*(a1 + 40) displayTypeController];
  if (v11)
  {
    v12 = v11;
    v22 = [v11 displayTypeForObjectType_];

    if (v22)
    {
      sub_1BA42B894(v22, a1, a3);
      v13 = v22;
    }

    else
    {
      sub_1BA4A3D88();
      v14 = a2;
      v15 = sub_1BA4A3E88();
      v16 = sub_1BA4A6FA8();

      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        v22 = v7;
        v19 = v18;
        v20 = swift_slowAlloc();
        v23 = v20;
        *v17 = 136315394;
        *(v17 + 4) = sub_1B9F0B82C(0xD000000000000014, 0x80000001BA4DB040, &v23);
        *(v17 + 12) = 2112;
        *(v17 + 14) = v14;
        *v19 = a2;
        v21 = v14;
        _os_log_impl(&dword_1B9F07000, v15, v16, "%s Could not fetch displayType for %@", v17, 0x16u);
        sub_1B9F8C6C8(v19);
        MEMORY[0x1BFAF43A0](v19, -1, -1);
        __swift_destroy_boxed_opaque_existential_1(v20);
        MEMORY[0x1BFAF43A0](v20, -1, -1);
        MEMORY[0x1BFAF43A0](v17, -1, -1);

        (*(v22 + 1))(v10, v6);
      }

      else
      {

        (v7)[1](v10, v6);
      }

      *(a3 + 32) = 0;
      *a3 = 0u;
      *(a3 + 16) = 0u;
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1BA42B814@<X0>(uint64_t *a1@<X8>)
{
  sub_1BA4A1A48();

  return sub_1BA42B39C(a1);
}

double sub_1BA42B894@<D0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1BA4A3EA8();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [a1 localization];
  v12 = [v11 summary];

  if (!v12)
  {
    goto LABEL_6;
  }

  v13 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  v15 = v14;

  v16 = HIBYTE(v15) & 0xF;
  if ((v15 & 0x2000000000000000) == 0)
  {
    v16 = v13 & 0xFFFFFFFFFFFFLL;
  }

  if (v16)
  {
    *(a3 + 24) = &type metadata for StandardDataTypeDescriptionProvider;
    *(a3 + 32) = &off_1F3821A00;
    v17 = *(a2 + 48);
    v18 = swift_allocObject();
    *a3 = v18;
    sub_1BA470D28(a1, v17, v18 + 16);
  }

  else
  {
LABEL_6:
    sub_1BA4A3D88();
    v20 = a1;
    v21 = sub_1BA4A3E88();
    v22 = sub_1BA4A6FA8();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v32 = v24;
      *v23 = 136315394;
      *(v23 + 4) = sub_1B9F0B82C(0xD000000000000014, 0x80000001BA4DB040, &v32);
      *(v23 + 12) = 2080;
      v25 = [v20 debugDescription];
      v26 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      v31 = v6;
      v27 = v26;
      v29 = v28;

      v30 = sub_1B9F0B82C(v27, v29, &v32);

      *(v23 + 14) = v30;
      _os_log_impl(&dword_1B9F07000, v21, v22, "%s %s does not have a presentable summary.", v23, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v24, -1, -1);
      MEMORY[0x1BFAF43A0](v23, -1, -1);

      (*(v7 + 8))(v10, v31);
    }

    else
    {

      (*(v7 + 8))(v10, v6);
    }

    *(a3 + 32) = 0;
    result = 0.0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

uint64_t DataTypeDetailConfiguration.DescriptionComponent.init(displayType:contentInsetsReference:)@<X0>(uint64_t a1@<X0>, double (*a2)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)@<X1>, double (**a3)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)@<X8>)
{
  a3[2] = a2;
  result = swift_allocObject();
  *(result + 16) = a1;
  *a3 = sub_1BA42BBDC;
  a3[1] = result;
  return result;
}

uint64_t DataTypeDetailConfiguration.DescriptionComponent.makeDataSource(context:)()
{
  v1 = *(v0 + 16);
  (*v0)(&v8);
  if (v9)
  {
    sub_1B9F1134C(&v8, v10);
    sub_1B9F0A534(v10, &v8);
    type metadata accessor for DataTypeDescriptionDataSource();
    swift_allocObject();
    v2 = DataTypeDescriptionDataSource.init(descriptionProvider:contentInsetsReference:)(&v8, v1);
    __swift_destroy_boxed_opaque_existential_1(v10);
    sub_1BA42BD24();
    v3 = swift_allocObject();
    v4 = *(v2 + OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_identifier + 8);
    *(v3 + 16) = *(v2 + OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_identifier);
    *(v3 + 24) = v4;
    *(v3 + 32) = v2;
    *(v3 + 40) = 0;
  }

  else
  {
    sub_1B9F43A50(&v8, &qword_1EBBF27C8, &qword_1EDC646E0);
    type metadata accessor for EmptyDataSource();
    swift_allocObject();
    v5 = EmptyDataSource.init()();
    sub_1BA42BD24();
    v3 = swift_allocObject();
    v6 = *(v5 + 24);
    *(v3 + 16) = *(v5 + 16);
    *(v3 + 24) = v6;
    *(v3 + 32) = v5;
    *(v3 + 40) = 1;
  }

  return v3;
}

void sub_1BA42BD24()
{
  if (!qword_1EDC66CE8)
  {
    type metadata accessor for DataTypeDescriptionDataSource();
    type metadata accessor for EmptyDataSource();
    v0 = type metadata accessor for _ConditionalDataSource();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC66CE8);
    }
  }
}

void sub_1BA42BE20(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2 - 4;
  v6 = objc_opt_self();
  v7 = &selRef_tertiarySystemBackgroundColor;
  if ((v5 & 0xF7) != 0)
  {
    v7 = &selRef_secondarySystemGroupedBackgroundColor;
  }

  v8 = [v6 *v7];
  sub_1BA4A6048();
  v9 = sub_1BA4A6288();
  sub_1B9F806B4(0, &qword_1EBBF2830, sub_1BA42CE2C);
  (*(*(v10 - 8) + 16))(a2, a1, v10);
  sub_1BA42D08C();
  *(a2 + *(v11 + 36)) = v9;
}

uint64_t sub_1BA42BF28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1BA42D1AC();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA42D698(0, &qword_1EBBF2860, sub_1BA42D2A0, sub_1BA42D1AC, MEMORY[0x1E697F948]);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v41 - v10;
  sub_1BA42D2A0(0);
  v13 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v42 = &v41 - v17;
  type metadata accessor for PlatformCellHighlightBackgroundColor(0);
  v18 = sub_1BA4A4078();
  v19 = *v2;
  if (v18)
  {
    v41 = a2;
    if ((v19 - 6) < 2)
    {
      v30 = objc_opt_self();
      v31 = [v30 systemGray5Color];
      v32 = [v30 tertiarySystemGroupedBackgroundColor];
      v33 = swift_allocObject();
      v33[2] = 0;
      v33[3] = v32;
      v33[4] = 0;
      v33[5] = v31;
      v34 = objc_allocWithZone(MEMORY[0x1E69DC888]);
      v47 = sub_1B9FD7F54;
      v48 = v33;
      aBlock = MEMORY[0x1E69E9820];
      v44 = 1107296256;
      v45 = sub_1B9F7EBBC;
      v46 = &block_descriptor_118;
      v35 = _Block_copy(&aBlock);
      [v34 initWithDynamicProvider_];
      _Block_release(v35);

      v20 = a1;
    }

    else
    {
      v20 = a1;
      if (v19 == 4 || v19 == 12)
      {
        v21 = objc_opt_self();
        v22 = [v21 systemGray5Color];
        v23 = [v21 systemGray4Color];
        v24 = swift_allocObject();
        v24[2] = 0;
        v24[3] = v23;
        v24[4] = 0;
        v24[5] = v22;
        v25 = objc_allocWithZone(MEMORY[0x1E69DC888]);
        v47 = sub_1B9FE1088;
        v48 = v24;
        aBlock = MEMORY[0x1E69E9820];
        v44 = 1107296256;
        v45 = sub_1B9F7EBBC;
        v46 = &block_descriptor_35_1;
        v26 = _Block_copy(&aBlock);
        [v25 initWithDynamicProvider_];
        _Block_release(v26);
      }

      else
      {
        v36 = [objc_opt_self() systemGray5Color];
      }
    }

    v37 = v42;
    aBlock = sub_1BA4A6048();
    v38 = sub_1BA4A6288();
    sub_1BA42D20C();
    (*(*(v39 - 8) + 16))(v15, v20, v39);
    *&v15[*(v13 + 36)] = v38;
    sub_1BA42D7B0(v15, v37, sub_1BA42D2A0);
    sub_1BA42D478(v37, v11, sub_1BA42D2A0);
    swift_storeEnumTagMultiPayload();
    sub_1BA42D2E8();
    sub_1BA42D3C8();
    sub_1BA4A58E8();
    v28 = sub_1BA42D2A0;
    v29 = v37;
  }

  else
  {
    sub_1BA42D20C();
    (*(*(v27 - 8) + 16))(v8, a1, v27);
    v8[*(v6 + 36)] = v19;
    sub_1BA42D478(v8, v11, sub_1BA42D1AC);
    swift_storeEnumTagMultiPayload();
    sub_1BA42D2E8();
    sub_1BA42D3C8();
    sub_1BA4A58E8();
    v28 = sub_1BA42D1AC;
    v29 = v8;
  }

  return sub_1BA42D8F8(v29, v28);
}

uint64_t sub_1BA42C520@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v43[1] = a2;
  sub_1BA42DD60(0, &qword_1EBBF28B8, MEMORY[0x1E697F948]);
  MEMORY[0x1EEE9AC00](v4);
  v6 = v43 - v5;
  sub_1BA42D650(0);
  v8 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v10 = v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v43 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = v43 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = v43 - v18;
  type metadata accessor for PlatformCellCornerAndHighlightBackground(0);
  v20 = sub_1BA4A4078();
  v21 = *v2;
  if (v20)
  {
    v43[0] = a1;
    if ((v21 - 6) < 2)
    {
      v34 = objc_opt_self();
      v35 = [v34 systemGray5Color];
      v36 = [v34 tertiarySystemGroupedBackgroundColor];
      v37 = swift_allocObject();
      v37[2] = 0;
      v37[3] = v36;
      v37[4] = 0;
      v37[5] = v35;
      v26 = objc_allocWithZone(MEMORY[0x1E69DC888]);
      v48 = sub_1B9FE1088;
      v49 = v37;
      aBlock = MEMORY[0x1E69E9820];
      v45 = 1107296256;
      v27 = &block_descriptor_42_1;
    }

    else
    {
      if (v21 != 4 && v21 != 12)
      {
        v42 = [objc_opt_self() systemGray5Color];
        goto LABEL_11;
      }

      v22 = objc_opt_self();
      v23 = [v22 systemGray5Color];
      v24 = [v22 systemGray4Color];
      v25 = swift_allocObject();
      v25[2] = 0;
      v25[3] = v24;
      v25[4] = 0;
      v25[5] = v23;
      v26 = objc_allocWithZone(MEMORY[0x1E69DC888]);
      v48 = sub_1B9FE1088;
      v49 = v25;
      aBlock = MEMORY[0x1E69E9820];
      v45 = 1107296256;
      v27 = &block_descriptor_49_1;
    }

    v46 = sub_1B9F7EBBC;
    v47 = v27;
    v38 = _Block_copy(&aBlock);
    [v26 initWithDynamicProvider_];
    _Block_release(v38);

LABEL_11:
    aBlock = sub_1BA4A6048();
    sub_1B9F80198();
    sub_1B9F801F0();
    v39 = sub_1BA4A6288();
    sub_1BA42D71C();
    (*(*(v40 - 8) + 16))(v16, v43[0], v40);
    *&v16[*(v8 + 36)] = v39;
    sub_1BA42D7B0(v16, v19, sub_1BA42D650);
    goto LABEL_12;
  }

  v28 = v21 - 4;
  v29 = objc_opt_self();
  v30 = &selRef_tertiarySystemBackgroundColor;
  if ((v28 & 0xF7) != 0)
  {
    v30 = &selRef_secondarySystemGroupedBackgroundColor;
  }

  v31 = [v29 *v30];
  aBlock = sub_1BA4A6048();
  sub_1B9F80198();
  sub_1B9F801F0();
  v32 = sub_1BA4A6288();
  sub_1BA42D71C();
  (*(*(v33 - 8) + 16))(v10, a1, v33);
  *&v10[*(v8 + 36)] = v32;
  sub_1BA42D7B0(v10, v13, sub_1BA42D650);
  v19 = v13;
LABEL_12:
  sub_1BA42D478(v19, v6, sub_1BA42D650);
  swift_storeEnumTagMultiPayload();
  sub_1BA42D818();
  sub_1BA4A58E8();
  return sub_1BA42D8F8(v19, sub_1BA42D650);
}

uint64_t sub_1BA42CADC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1BA42D4E0();
  (*(*(v7 - 8) + 16))(a3, a1, v7);
  sub_1BA42D574(0);
  v9 = a3 + *(v8 + 36);
  __asm { FMOV            V0.2D, #16.0 }

  *v9 = _Q0;
  *(v9 + 16) = _Q0;
  *(v9 + 32) = 0;
  LOBYTE(a1) = *v3;
  v15 = *(a2 + 20);
  sub_1BA42D698(0, &qword_1EBBF28B0, sub_1BA42D574, type metadata accessor for PlatformCellCornerAndHighlightBackground, MEMORY[0x1E697E830]);
  v17 = (a3 + *(v16 + 36));
  v18 = *(type metadata accessor for PlatformCellCornerAndHighlightBackground(0) + 20);
  v19 = sub_1BA4A40C8();
  result = (*(*(v19 - 8) + 16))(&v17[v18], &v3[v15], v19);
  *v17 = a1;
  return result;
}

uint64_t sub_1BA42CC40(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  v11 = a5(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v18 - v12;
  LOBYTE(a1) = *a1;
  v15 = *(v14 + 20);
  v16 = sub_1BA4A40C8();
  (*(*(v16 - 8) + 16))(&v13[v15], a2, v16);
  *v13 = a1;
  MEMORY[0x1BFAF0A30](v13, a3, v11, a4);
  return sub_1BA42D8F8(v13, a6);
}

uint64_t get_witness_table_7SwiftUI4ViewRzlAA15ModifiedContentVyx016HealthExperienceB024PlatformCellCornerRadiusVGAaBHPxAaBHD1__AgA0C8ModifierHPyHCHCTm(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  sub_1BA4A5418();
  a3();
  return swift_getWitnessTable();
}

unint64_t sub_1BA42CE2C()
{
  result = qword_1EBBF27E0;
  if (!qword_1EBBF27E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBF27E0);
  }

  return result;
}

uint64_t get_witness_table_7SwiftUI4ViewRzlAA15ModifiedContentVyx016HealthExperienceB036PlatformCellHighlightBackgroundColorVGAaBHPxAaBHD1__AgA0C8ModifierHPyHCHCTm(uint64_t a1, void (*a2)(uint64_t), unint64_t *a3, void (*a4)(uint64_t))
{
  a2(255);
  sub_1BA4A5418();
  sub_1B9F8AA5C(a3, a4);
  return swift_getWitnessTable();
}

uint64_t sub_1BA42CF90()
{
  result = sub_1BA4A40C8();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1BA42D08C()
{
  if (!qword_1EBBF2838)
  {
    sub_1B9F806B4(255, &qword_1EBBF2830, sub_1BA42CE2C);
    sub_1BA42D118();
    v0 = sub_1BA4A5418();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBBF2838);
    }
  }
}

void sub_1BA42D118()
{
  if (!qword_1EBBF2840)
  {
    sub_1BA4A5A18();
    sub_1B9F8AA5C(&qword_1EBBF2848, MEMORY[0x1E697C9E8]);
    v0 = sub_1BA4A5968();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBBF2840);
    }
  }
}

void sub_1BA42D1AC()
{
  if (!qword_1EBBF2850)
  {
    sub_1BA42D20C();
    v0 = sub_1BA4A5418();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBBF2850);
    }
  }
}

void sub_1BA42D20C()
{
  if (!qword_1EBBF2858)
  {
    type metadata accessor for PlatformCellHighlightBackgroundColor(255);
    sub_1B9F8AA5C(&qword_1EBBF27E8, type metadata accessor for PlatformCellHighlightBackgroundColor);
    v0 = sub_1BA4A5978();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBBF2858);
    }
  }
}

unint64_t sub_1BA42D2E8()
{
  result = qword_1EBBF2870;
  if (!qword_1EBBF2870)
  {
    sub_1BA42D2A0(255);
    sub_1B9F8AA5C(&qword_1EBBF2878, sub_1BA42D20C);
    sub_1B9F8AA5C(&qword_1EBBF2880, sub_1BA42D118);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBF2870);
  }

  return result;
}

unint64_t sub_1BA42D3C8()
{
  result = qword_1EBBF2888;
  if (!qword_1EBBF2888)
  {
    sub_1BA42D1AC();
    sub_1B9F8AA5C(&qword_1EBBF2878, sub_1BA42D20C);
    sub_1BA42CE2C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBF2888);
  }

  return result;
}

uint64_t sub_1BA42D478(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_1BA42D4E0()
{
  if (!qword_1EBBF2890)
  {
    type metadata accessor for PlatformCellBackgroundStyle(255);
    sub_1B9F8AA5C(&qword_1EBBF27F0, type metadata accessor for PlatformCellBackgroundStyle);
    v0 = sub_1BA4A5978();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBBF2890);
    }
  }
}

void sub_1BA42D5BC()
{
  if (!qword_1EBBF28A0)
  {
    sub_1BA4A5948();
    sub_1B9F8AA5C(&qword_1EBBF28A8, MEMORY[0x1E697C768]);
    v0 = sub_1BA4A5968();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBBF28A0);
    }
  }
}

void sub_1BA42D698(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a4(255);
    v11 = a5(a1, v9, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

void sub_1BA42D71C()
{
  if (!qword_1EBBF28C8)
  {
    type metadata accessor for PlatformCellCornerAndHighlightBackground(255);
    sub_1B9F8AA5C(&qword_1EBBF27F8, type metadata accessor for PlatformCellCornerAndHighlightBackground);
    v0 = sub_1BA4A5978();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBBF28C8);
    }
  }
}

uint64_t sub_1BA42D7B0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1BA42D818()
{
  result = qword_1EBBF28D0;
  if (!qword_1EBBF28D0)
  {
    sub_1BA42D650(255);
    sub_1B9F8AA5C(&qword_1EBBF28D8, sub_1BA42D71C);
    sub_1B9F8AA5C(&qword_1EBBF2880, sub_1BA42D118);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBF28D0);
  }

  return result;
}

uint64_t sub_1BA42D8F8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1BA42D958()
{
  result = qword_1EBBF28E0;
  if (!qword_1EBBF28E0)
  {
    sub_1BA42D08C();
    sub_1B9F8A8E4(&qword_1EBBF28E8, &qword_1EBBF2830, sub_1BA42CE2C);
    sub_1B9F8AA5C(&qword_1EBBF2880, sub_1BA42D118);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBF28E0);
  }

  return result;
}

unint64_t sub_1BA42DA34()
{
  result = qword_1EBBF28F0;
  if (!qword_1EBBF28F0)
  {
    sub_1BA42D698(255, &qword_1EBBF28F8, sub_1BA42D2A0, sub_1BA42D1AC, MEMORY[0x1E697F960]);
    sub_1BA42D2E8();
    sub_1BA42D3C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBF28F0);
  }

  return result;
}

unint64_t sub_1BA42DAF8()
{
  result = qword_1EBBF2900;
  if (!qword_1EBBF2900)
  {
    sub_1BA42D698(255, &qword_1EBBF28B0, sub_1BA42D574, type metadata accessor for PlatformCellCornerAndHighlightBackground, MEMORY[0x1E697E830]);
    sub_1BA42DBEC();
    sub_1B9F8AA5C(&qword_1EBBF27F8, type metadata accessor for PlatformCellCornerAndHighlightBackground);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBF2900);
  }

  return result;
}

unint64_t sub_1BA42DBEC()
{
  result = qword_1EBBF2908;
  if (!qword_1EBBF2908)
  {
    sub_1BA42D574(255);
    sub_1B9F8AA5C(&qword_1EBBF2910, sub_1BA42D4E0);
    sub_1B9F8AA5C(&qword_1EBBF2918, sub_1BA42D5BC);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBF2908);
  }

  return result;
}

unint64_t sub_1BA42DCCC()
{
  result = qword_1EBBF2920;
  if (!qword_1EBBF2920)
  {
    sub_1BA42DD60(255, &qword_1EBBF2928, MEMORY[0x1E697F960]);
    sub_1BA42D818();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBF2920);
  }

  return result;
}

void sub_1BA42DD60(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_1BA42D650(255);
    v7 = a3(a1, v6, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

double SettingsItemSection.init(data:)@<D0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1BA4A0EB8();
  swift_allocObject();
  sub_1BA4A0EA8();
  sub_1BA18F124();
  sub_1BA4A0E98();

  sub_1B9F2BB4C(a1, a2);
  if (!v3)
  {
    result = *&v8;
    *a3 = v8;
    *(a3 + 16) = v9;
    *(a3 + 24) = v10;
    *(a3 + 32) = v11;
  }

  return result;
}

uint64_t SettingsItem.title.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t SettingsItem.init(data:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  sub_1BA4A0EB8();
  swift_allocObject();
  sub_1BA4A0EA8();
  sub_1BA42DF90();
  sub_1BA4A0E98();

  result = sub_1B9F2BB4C(a1, a2);
  if (!v3)
  {
    *a3 = v8;
    a3[1] = v9;
  }

  return result;
}

unint64_t sub_1BA42DF90()
{
  result = qword_1EBBF2930;
  if (!qword_1EBBF2930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBF2930);
  }

  return result;
}

uint64_t SettingsItem.encode()()
{
  sub_1BA4A0EE8();
  swift_allocObject();
  sub_1BA4A0ED8();
  sub_1BA42E078();
  v0 = sub_1BA4A0EC8();

  return v0;
}

unint64_t sub_1BA42E078()
{
  result = qword_1EDC69508;
  if (!qword_1EDC69508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC69508);
  }

  return result;
}

uint64_t sub_1BA42E0E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x656C746974 && a2 == 0xE500000000000000)
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

uint64_t sub_1BA42E164(uint64_t a1)
{
  v2 = sub_1BA42E344();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BA42E1A0(uint64_t a1)
{
  v2 = sub_1BA42E344();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SettingsItem.encode(to:)(void *a1)
{
  sub_1BA42EF6C(0, &qword_1EDC5DDE0, sub_1BA42E344, &type metadata for SettingsItem.CodingKeys, MEMORY[0x1E69E6F58]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BA42E344();
  sub_1BA4A8548();
  sub_1BA4A8248();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_1BA42E344()
{
  result = qword_1EDC69520;
  if (!qword_1EDC69520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC69520);
  }

  return result;
}

uint64_t SettingsItem.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v15 = a2;
  sub_1BA42EF6C(0, &qword_1EBBF2938, sub_1BA42E344, &type metadata for SettingsItem.CodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v14 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BA42E344();
  sub_1BA4A8528();
  if (!v2)
  {
    v9 = v15;
    v10 = sub_1BA4A8188();
    v12 = v11;
    (*(v6 + 8))(v8, v5);
    *v9 = v10;
    v9[1] = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1BA42E558(void *a1)
{
  sub_1BA42EF6C(0, &qword_1EDC5DDE0, sub_1BA42E344, &type metadata for SettingsItem.CodingKeys, MEMORY[0x1E69E6F58]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BA42E344();
  sub_1BA4A8548();
  sub_1BA4A8248();
  return (*(v4 + 8))(v6, v3);
}

uint64_t SettingsItemSection.headerTitle.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t SettingsItemSection.headerTitle.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t SettingsItemSection.item.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *(v1 + 16);
  a1[1] = v2;
}

uint64_t SettingsItemSection.item.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];

  *(v1 + 16) = v2;
  *(v1 + 24) = v3;
  return result;
}

uint64_t SettingsItemSection.footerText.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t SettingsItemSection.footerText.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

void __swiftcall SettingsItemSection.init(headerTitle:item:footerText:)(HealthExperienceUI::SettingsItemSection *__return_ptr retstr, Swift::String_optional headerTitle, HealthExperienceUI::SettingsItem item, Swift::String_optional footerText)
{
  v4 = *item.title._countAndFlagsBits;
  v5 = *(item.title._countAndFlagsBits + 8);
  retstr->headerTitle = headerTitle;
  retstr->item.title._countAndFlagsBits = v4;
  retstr->item.title._object = v5;
  retstr->footerText.value._countAndFlagsBits = item.title._object;
  retstr->footerText.value._object = footerText.value._countAndFlagsBits;
}

uint64_t SettingsItemSection.encode()()
{
  sub_1BA4A0EE8();
  swift_allocObject();
  sub_1BA4A0ED8();
  sub_1BA42E8E8();
  v0 = sub_1BA4A0EC8();

  return v0;
}

unint64_t sub_1BA42E8E8()
{
  result = qword_1EDC67CE8;
  if (!qword_1EDC67CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC67CE8);
  }

  return result;
}

uint64_t sub_1BA42E93C()
{
  v1 = 1835365481;
  if (*v0 != 1)
  {
    v1 = 0x65547265746F6F66;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6954726564616568;
  }
}

uint64_t sub_1BA42E99C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BA42F254(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1BA42E9C4(uint64_t a1)
{
  v2 = sub_1BA42EC50();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BA42EA00(uint64_t a1)
{
  v2 = sub_1BA42EC50();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SettingsItemSection.encode(to:)(void *a1)
{
  sub_1BA42EF6C(0, &qword_1EDC5DDB0, sub_1BA42EC50, &type metadata for SettingsItemSection.CodingKeys, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v12 - v6;
  v8 = v1[3];
  v13 = v1[2];
  v14 = v8;
  v9 = v1[4];
  v12[1] = v1[5];
  v12[2] = v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BA42EC50();
  sub_1BA4A8548();
  LOBYTE(v16) = 0;
  v10 = v15;
  sub_1BA4A8208();
  if (!v10)
  {
    v16 = v13;
    v17 = v14;
    v18 = 1;
    sub_1BA42E078();

    sub_1BA4A8288();

    LOBYTE(v16) = 2;
    sub_1BA4A8208();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_1BA42EC50()
{
  result = qword_1EDC67D00;
  if (!qword_1EDC67D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC67D00);
  }

  return result;
}

uint64_t SettingsItemSection.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v24 = a2;
  sub_1BA42EF6C(0, &qword_1EBBF2940, sub_1BA42EC50, &type metadata for SettingsItemSection.CodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v21 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BA42EC50();
  sub_1BA4A8528();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v9 = v6;
    v10 = v24;
    LOBYTE(v25) = 0;
    v11 = sub_1BA4A8138();
    v14 = v13;
    v23 = v11;
    v27 = 1;
    sub_1BA42DF90();
    sub_1BA4A81C8();
    v15 = v26;
    v22 = v25;
    LOBYTE(v25) = 2;
    v16 = sub_1BA4A8138();
    v18 = v17;
    v19 = *(v9 + 8);
    v21 = v16;
    v19(v8, v5);
    v20 = v22;
    *v10 = v23;
    v10[1] = v14;
    v10[2] = v20;
    v10[3] = v15;
    v10[4] = v21;
    v10[5] = v18;

    __swift_destroy_boxed_opaque_existential_1(a1);
  }
}

void sub_1BA42EF6C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

unint64_t sub_1BA42F048()
{
  result = qword_1EBBF2948;
  if (!qword_1EBBF2948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBF2948);
  }

  return result;
}

unint64_t sub_1BA42F0A0()
{
  result = qword_1EBBF2950;
  if (!qword_1EBBF2950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBF2950);
  }

  return result;
}

unint64_t sub_1BA42F0F8()
{
  result = qword_1EDC67CF0;
  if (!qword_1EDC67CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC67CF0);
  }

  return result;
}

unint64_t sub_1BA42F150()
{
  result = qword_1EDC67CF8;
  if (!qword_1EDC67CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC67CF8);
  }

  return result;
}

unint64_t sub_1BA42F1A8()
{
  result = qword_1EDC69510;
  if (!qword_1EDC69510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC69510);
  }

  return result;
}

unint64_t sub_1BA42F200()
{
  result = qword_1EDC69518;
  if (!qword_1EDC69518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC69518);
  }

  return result;
}

uint64_t sub_1BA42F254(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6954726564616568 && a2 == 0xEB00000000656C74;
  if (v4 || (sub_1BA4A8338() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1835365481 && a2 == 0xE400000000000000 || (sub_1BA4A8338() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x65547265746F6F66 && a2 == 0xEA00000000007478)
  {

    return 2;
  }

  else
  {
    v6 = sub_1BA4A8338();

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

double sub_1BA42F378@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = [a1 identifier];
  v4 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  v6 = v5;

  v7 = v4 == 0xD000000000000033 && 0x80000001BA4E9340 == v6;
  if (v7 || (sub_1BA4A8338() & 1) != 0)
  {

    v9 = &type metadata for WalkingSteadinessEventItemTextProvider;
    v10 = &off_1F3802070;
LABEL_16:
    *(a2 + 24) = v9;
    *(a2 + 32) = v10;
    return result;
  }

  v11 = v4 == 0xD00000000000002ALL && 0x80000001BA4E9200 == v6;
  if (v11 || (sub_1BA4A8338() & 1) != 0 || v4 == 0xD000000000000029 && 0x80000001BA4E9230 == v6 || (sub_1BA4A8338() & 1) != 0)
  {

    v9 = &type metadata for HighLowHeartRateEventItemTextProvider;
    v10 = &off_1F3802090;
    goto LABEL_16;
  }

  if (v4 == 0xD000000000000038 && 0x80000001BA4E9380 == v6 || (sub_1BA4A8338() & 1) != 0 || v4 == 0xD000000000000031 && 0x80000001BA4E93C0 == v6 || (sub_1BA4A8338() & 1) != 0 || v4 == 0xD000000000000030 && 0x80000001BA4E9400 == v6 || (sub_1BA4A8338() & 1) != 0 || v4 == 0xD000000000000031 && 0x80000001BA4E9440 == v6 || (sub_1BA4A8338() & 1) != 0)
  {

    v9 = &type metadata for SampleRangeItemTextProvider;
    v10 = &off_1F38020B0;
    goto LABEL_16;
  }

  if (v4 == 0xD000000000000029 && 0x80000001BA4E94B0 == v6)
  {

LABEL_34:
    v9 = &type metadata for HypertensionEventItemTextProvider;
    v10 = &off_1F38020D0;
    goto LABEL_16;
  }

  v12 = sub_1BA4A8338();

  if (v12)
  {
    goto LABEL_34;
  }

  *(a2 + 32) = 0;
  result = 0.0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  return result;
}

id MessageWithActionTileView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

Swift::Void __swiftcall MessageWithActionTileView.updateAutomationIdentifiers(with:)(Swift::String_optional with)
{
  if (with.value._object)
  {
    object = with.value._object;
    countAndFlagsBits = with.value._countAndFlagsBits;
    sub_1B9F1C048(0, &qword_1EDC6E330);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_1BA4B5460;
    *(v4 + 32) = countAndFlagsBits;
    *(v4 + 40) = object;
    *(v4 + 48) = 2003134806;
    *(v4 + 56) = 0xE400000000000000;
    swift_bridgeObjectRetain_n();
    v5 = sub_1BA4A6AE8();

    v6 = HKUIJoinStringsForAutomationIdentifier();

    [v1 setAccessibilityIdentifier_];
    v7 = *&v1[OBJC_IVAR____TtC18HealthExperienceUI25MessageWithActionTileView_titleLabel];
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1BA4B5460;
    *(v8 + 32) = countAndFlagsBits;
    *(v8 + 40) = object;
    *(v8 + 48) = 0x656C746954;
    *(v8 + 56) = 0xE500000000000000;

    v9 = sub_1BA4A6AE8();

    v10 = HKUIJoinStringsForAutomationIdentifier();

    [v7 setAccessibilityIdentifier_];
    v11 = *&v1[OBJC_IVAR____TtC18HealthExperienceUI25MessageWithActionTileView_bodyLabel];
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_1BA4B5460;
    *(v12 + 32) = countAndFlagsBits;
    *(v12 + 40) = object;
    *(v12 + 48) = 0x7470697263736544;
    *(v12 + 56) = 0xEB000000006E6F69;

    v13 = sub_1BA4A6AE8();

    v14 = HKUIJoinStringsForAutomationIdentifier();

    [v11 setAccessibilityIdentifier_];
    v15 = *&v1[OBJC_IVAR____TtC18HealthExperienceUI25MessageWithActionTileView_actionButton];
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_1BA4B5460;
    *(v16 + 32) = countAndFlagsBits;
    *(v16 + 40) = object;
    *(v16 + 48) = 1802398028;
    *(v16 + 56) = 0xE400000000000000;
    v17 = sub_1BA4A6AE8();

    v19 = HKUIJoinStringsForAutomationIdentifier();

    [v15 setAccessibilityIdentifier_];
  }

  else
  {
    [v1 setAccessibilityIdentifier_];
    [*&v1[OBJC_IVAR____TtC18HealthExperienceUI25MessageWithActionTileView_titleLabel] setAccessibilityIdentifier_];
    [*&v1[OBJC_IVAR____TtC18HealthExperienceUI25MessageWithActionTileView_bodyLabel] setAccessibilityIdentifier_];
    v18 = *&v1[OBJC_IVAR____TtC18HealthExperienceUI25MessageWithActionTileView_actionButton];

    [v18 setAccessibilityIdentifier_];
  }
}

void *sub_1BA42FA1C()
{
  sub_1B9F6C190(0, &qword_1EDC5F868, MEMORY[0x1E69DC2E8]);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v14 - v1;
  v3 = sub_1BA4A7938();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1BA4A79A8();
  MEMORY[0x1EEE9AC00](v7 - 8);
  sub_1B9F0ADF8(0, &qword_1EDC5E0A0);
  sub_1BA4A7998();
  (*(v4 + 104))(v6, *MEMORY[0x1E69DC560], v3);
  sub_1BA4A7828();
  sub_1BA4A4898();
  v8 = sub_1BA4A4888();
  (*(*(v8 - 8) + 56))(v2, 0, 1, v8);
  sub_1BA4A7928();
  sub_1BA4A7918();
  v9 = sub_1BA4A79B8();
  [v9 setTranslatesAutoresizingMaskIntoConstraints_];
  [v9 setContentHorizontalAlignment_];
  [v9 setAdjustsImageSizeForAccessibilityContentSizeCategory_];
  v10 = [v9 titleLabel];
  [v10 setAdjustsFontForContentSizeCategory_];

  v11 = [v9 titleLabel];
  if (v11)
  {
    v12 = v11;
    [v11 setNumberOfLines_];
  }

  return v9;
}

id sub_1BA42FCF0()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI25MessageWithActionTileView____lazy_storage___separator;
  v2 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI25MessageWithActionTileView____lazy_storage___separator);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI25MessageWithActionTileView____lazy_storage___separator);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E69A44A8]) init];
    HKUIOnePixel();
    [v4 setSeparatorThickness_];
    [v4 setTranslatesAutoresizingMaskIntoConstraints_];
    v5 = [objc_opt_self() opaqueSeparatorColor];
    [v4 setColor_];

    v6 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

uint64_t sub_1BA42FDCC@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC18HealthExperienceUI25MessageWithActionTileView_didTapActionButton);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_1B9F7B0D4;
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

uint64_t sub_1BA42FE6C(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1BA4323AC;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtC18HealthExperienceUI25MessageWithActionTileView_didTapActionButton);
  swift_beginAccess();
  v8 = *v7;
  *v7 = v6;
  v7[1] = v5;
  sub_1B9F0F1B8(v3);
  return sub_1B9F0E310(v8);
}

uint64_t sub_1BA42FF34()
{
  v1 = (v0 + OBJC_IVAR____TtC18HealthExperienceUI25MessageWithActionTileView_didTapActionButton);
  swift_beginAccess();
  v2 = *v1;
  sub_1B9F0F1B8(*v1);
  return v2;
}

uint64_t sub_1BA42FF90(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC18HealthExperienceUI25MessageWithActionTileView_didTapActionButton);
  swift_beginAccess();
  v6 = *v5;
  *v5 = a1;
  v5[1] = a2;
  return sub_1B9F0E310(v6);
}

id MessageWithActionTileView.init(frame:)(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = sub_1BA4A3EA8();
  v57 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v58 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtC18HealthExperienceUI25MessageWithActionTileView_titleLabel;
  v13 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  [v13 setTranslatesAutoresizingMaskIntoConstraints_];
  v14 = *MEMORY[0x1E69DDCF8];
  v15 = sub_1B9F6B774(*MEMORY[0x1E69DDCF8], *MEMORY[0x1E69DB980], 0, 0, 0, 0, 1);
  [v13 setFont_];

  [v13 setAdjustsFontForContentSizeCategory_];
  [v13 setNumberOfLines_];
  v16 = objc_opt_self();
  v17 = [v16 labelColor];
  [v13 setTextColor_];

  [v13 setTextAlignment_];
  *&v5[v12] = v13;
  v18 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  [v18 setTranslatesAutoresizingMaskIntoConstraints_];
  v19 = objc_opt_self();
  v20 = [v19 preferredFontDescriptorWithTextStyle:v14 compatibleWithTraitCollection:0];
  if (v20)
  {
    v21 = v20;
    v22 = [objc_opt_self() fontWithDescriptor:v20 size:0.0];
  }

  else
  {
    v56 = v10;
    sub_1BA4A3DD8();
    v23 = v14;
    v24 = sub_1BA4A3E88();
    v25 = sub_1BA4A6FB8();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      v61 = v55;
      *v26 = 136315906;
      v27 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      v29 = sub_1B9F0B82C(v27, v28, &v61);

      *(v26 + 4) = v29;
      v53 = v25;
      *(v26 + 12) = 2080;
      v59 = 0;
      v60 = 1;
      sub_1B9F6C190(0, &qword_1EBBECB00, type metadata accessor for Weight);
      v30 = sub_1BA4A6808();
      v32 = sub_1B9F0B82C(v30, v31, &v61);

      *(v26 + 14) = v32;
      *(v26 + 22) = 2080;
      LODWORD(v59) = 0;
      type metadata accessor for SymbolicTraits(0);
      v33 = sub_1BA4A6808();
      v35 = sub_1B9F0B82C(v33, v34, &v61);

      *(v26 + 24) = v35;
      *(v26 + 32) = 2112;
      v36 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
      *(v26 + 34) = v36;
      v37 = v54;
      *v54 = v36;
      _os_log_impl(&dword_1B9F07000, v24, v53, "Unable to create descriptor with textStyle %s, weight %s, traits %s and rounded %@. Using only the text style", v26, 0x2Au);
      sub_1B9F8C6C8(v37);
      MEMORY[0x1BFAF43A0](v37, -1, -1);
      v38 = v55;
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v38, -1, -1);
      MEMORY[0x1BFAF43A0](v26, -1, -1);
    }

    (*(v57 + 8))(v58, v56);
    v39 = [v19 preferredFontDescriptorWithTextStyle_];
    v22 = [objc_opt_self() fontWithDescriptor:v39 size:0.0];
  }

  v40 = OBJC_IVAR____TtC18HealthExperienceUI25MessageWithActionTileView_bodyLabel;
  [v18 setFont_];

  [v18 setAdjustsFontForContentSizeCategory_];
  v41 = [v16 secondaryLabelColor];
  [v18 setTextColor_];

  [v18 setNumberOfLines_];
  [v18 setLineBreakMode_];
  [v18 setTextAlignment_];
  *&v5[v40] = v18;
  v42 = OBJC_IVAR____TtC18HealthExperienceUI25MessageWithActionTileView_actionButton;
  *&v5[v42] = sub_1BA42FA1C();
  *&v5[OBJC_IVAR____TtC18HealthExperienceUI25MessageWithActionTileView____lazy_storage___separator] = 0;
  *&v5[OBJC_IVAR____TtC18HealthExperienceUI25MessageWithActionTileView_separatorTopConstraint] = 0;
  *&v5[OBJC_IVAR____TtC18HealthExperienceUI25MessageWithActionTileView_actionButtonTopConstraint] = 0;
  *&v5[OBJC_IVAR____TtC18HealthExperienceUI25MessageWithActionTileView_bottomConstraint] = 0;
  v43 = &v5[OBJC_IVAR____TtC18HealthExperienceUI25MessageWithActionTileView_didTapActionButton];
  v44 = type metadata accessor for MessageWithActionTileView();
  *v43 = 0;
  *(v43 + 1) = 0;
  v62.receiver = v5;
  v62.super_class = v44;
  v45 = objc_msgSendSuper2(&v62, sel_initWithFrame_, a1, a2, a3, a4);
  v46 = *MEMORY[0x1E69796E8];
  v47 = v45;
  v48 = [v47 layer];
  [v48 setCornerCurve_];

  v49 = [v47 layer];
  [v49 setCornerRadius_];

  v50 = [v47 layer];
  [v50 setMaskedCorners_];

  [v47 setClipsToBounds_];
  sub_1BA430AB4();

  return v47;
}

id sub_1BA43073C()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI25MessageWithActionTileView_separatorTopConstraint;
  v2 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI25MessageWithActionTileView_separatorTopConstraint];
  if (v2)
  {
    [v2 setActive_];
  }

  v3 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI25MessageWithActionTileView_bodyLabel];
  v4 = [v3 text];
  if (v4)
  {

    v5 = sub_1BA42FCF0();
    v6 = [v5 topAnchor];

    v7 = v3;
  }

  else
  {
    v8 = sub_1BA42FCF0();
    v6 = [v8 topAnchor];

    v7 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI25MessageWithActionTileView_titleLabel];
  }

  v9 = [v7 bottomAnchor];
  v10 = [v6 constraintEqualToAnchor:v9 constant:12.0];

  v11 = *&v0[v1];
  *&v0[v1] = v10;
  v12 = v10;

  if (v12)
  {
    [v12 setActive_];
  }

  v13 = OBJC_IVAR____TtC18HealthExperienceUI25MessageWithActionTileView_bottomConstraint;
  v14 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI25MessageWithActionTileView_bottomConstraint];
  if (v14)
  {
    [v14 setActive_];
  }

  v15 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI25MessageWithActionTileView_actionButton];
  v16 = [v15 titleForState_];
  if (!v16)
  {
    goto LABEL_15;
  }

  v17 = v16;
  v18 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  v20 = v19;

  v21 = HIBYTE(v20) & 0xF;
  if ((v20 & 0x2000000000000000) == 0)
  {
    v21 = v18 & 0xFFFFFFFFFFFFLL;
  }

  if (v21)
  {
    v22 = [v0 safeAreaLayoutGuide];
    v23 = [v22 bottomAnchor];

    v3 = v15;
  }

  else
  {
LABEL_15:
    v24 = [v3 text];
    if (v24)
    {

      v25 = [v0 safeAreaLayoutGuide];
      v23 = [v25 bottomAnchor];
    }

    else
    {
      v26 = [v0 safeAreaLayoutGuide];
      v23 = [v26 bottomAnchor];

      v3 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI25MessageWithActionTileView_titleLabel];
    }
  }

  v27 = [v3 bottomAnchor];
  v28 = [v23 constraintEqualToAnchor:v27 constant:16.0];

  v29 = *&v0[v13];
  *&v0[v13] = v28;
  v30 = v28;

  if (v30)
  {
    [v30 setActive_];
  }

  v32.receiver = v0;
  v32.super_class = type metadata accessor for MessageWithActionTileView();
  return objc_msgSendSuper2(&v32, sel_updateConstraints);
}

void sub_1BA430AB4()
{
  [v0 addSubview_];
  [v0 addSubview_];
  v1 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI25MessageWithActionTileView_actionButton];
  [v0 addSubview_];
  v2 = sub_1BA42FCF0();
  [v0 addSubview_];

  [v1 addTarget:v0 action:sel_didTapAction_ forControlEvents:64];

  sub_1BA430B74();
}

void sub_1BA430B74()
{
  [v0 directionalLayoutMargins];
  [v0 setDirectionalLayoutMargins_];
  [v0 directionalLayoutMargins];
  [v0 setDirectionalLayoutMargins_];
  [v0 directionalLayoutMargins];
  [v0 setDirectionalLayoutMargins_];
  [v0 directionalLayoutMargins];
  [v0 setDirectionalLayoutMargins_];
  v1 = sub_1BA42FCF0();
  v2 = [v1 topAnchor];

  v58 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI25MessageWithActionTileView_bodyLabel];
  v3 = [v58 bottomAnchor];
  v4 = [v2 constraintEqualToAnchor:v3 constant:12.0];

  v5 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI25MessageWithActionTileView_separatorTopConstraint];
  *&v0[OBJC_IVAR____TtC18HealthExperienceUI25MessageWithActionTileView_separatorTopConstraint] = v4;
  v61 = v4;

  v6 = [v0 safeAreaLayoutGuide];
  v7 = [v6 bottomAnchor];

  v8 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI25MessageWithActionTileView_actionButton];
  v9 = [v8 bottomAnchor];
  v10 = [v7 constraintEqualToAnchor:v9 constant:16.0];

  v11 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI25MessageWithActionTileView_bottomConstraint];
  *&v0[OBJC_IVAR____TtC18HealthExperienceUI25MessageWithActionTileView_bottomConstraint] = v10;
  v64 = v10;

  v12 = [v8 topAnchor];
  v57 = OBJC_IVAR____TtC18HealthExperienceUI25MessageWithActionTileView____lazy_storage___separator;
  v13 = [*&v0[OBJC_IVAR____TtC18HealthExperienceUI25MessageWithActionTileView____lazy_storage___separator] bottomAnchor];
  v14 = [v12 constraintEqualToAnchor:v13 constant:12.0];

  v15 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI25MessageWithActionTileView_actionButtonTopConstraint];
  *&v0[OBJC_IVAR____TtC18HealthExperienceUI25MessageWithActionTileView_actionButtonTopConstraint] = v14;
  v59 = v14;

  v63 = objc_opt_self();
  sub_1B9F1C048(0, &qword_1EDC6B400);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1BA4DB660;
  v17 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI25MessageWithActionTileView_titleLabel];
  v18 = [v17 topAnchor];
  v19 = [v0 safeAreaLayoutGuide];
  v20 = [v19 topAnchor];

  v21 = [v18 constraintEqualToAnchor:v20 constant:14.0];
  *(v16 + 32) = v21;
  v22 = [v17 leadingAnchor];
  v23 = [v0 safeAreaLayoutGuide];
  v24 = [v23 leadingAnchor];

  v25 = [v22 constraintEqualToAnchor:v24 constant:16.0];
  *(v16 + 40) = v25;
  v26 = [v0 safeAreaLayoutGuide];
  v27 = [v26 trailingAnchor];

  v28 = [v17 trailingAnchor];
  v29 = [v27 constraintEqualToAnchor:v28 constant:16.0];

  *(v16 + 48) = v29;
  v30 = [v58 topAnchor];
  v31 = [v17 bottomAnchor];
  v32 = [v30 constraintEqualToAnchor:v31 constant:4.0];

  *(v16 + 56) = v32;
  v33 = [v58 leadingAnchor];
  v34 = [v17 leadingAnchor];
  v35 = [v33 constraintEqualToAnchor_];

  *(v16 + 64) = v35;
  v36 = [v58 trailingAnchor];
  v37 = [v17 trailingAnchor];
  v38 = [v36 constraintEqualToAnchor_];

  *(v16 + 72) = v38;
  *(v16 + 80) = v61;
  v39 = *&v0[v57];
  v62 = v61;
  v40 = [v39 &selRef__totalDistance + 1];
  v41 = [v8 &selRef__totalDistance + 1];
  v42 = [v40 constraintEqualToAnchor_];

  *(v16 + 88) = v42;
  v43 = [*&v0[v57] trailingAnchor];
  v44 = [v0 trailingAnchor];
  v45 = [v43 constraintEqualToAnchor_];

  *(v16 + 96) = v45;
  *(v16 + 104) = v59;
  v60 = v59;
  v46 = [v8 &selRef__totalDistance + 1];
  v47 = [v17 &selRef__totalDistance + 1];
  v48 = [v46 constraintEqualToAnchor_];

  *(v16 + 112) = v48;
  v49 = [v8 trailingAnchor];
  v50 = [v17 trailingAnchor];
  v51 = [v49 constraintLessThanOrEqualToAnchor_];

  *(v16 + 120) = v51;
  *(v16 + 128) = v64;
  sub_1B9F0ADF8(0, &qword_1EDC6B570);
  v52 = v64;
  v53 = sub_1BA4A6AE8();

  [v63 activateConstraints_];

  LODWORD(v54) = 1148846080;
  [v17 setContentCompressionResistancePriority:0 forAxis:v54];
  LODWORD(v55) = 1148846080;
  [v8 setContentCompressionResistancePriority:1 forAxis:v55];
  LODWORD(v56) = 1148846080;
  [v8 setContentHuggingPriority:0 forAxis:v56];
}

uint64_t sub_1BA43131C()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_1BA4A3EA8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v19[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = (v1 + OBJC_IVAR____TtC18HealthExperienceUI25MessageWithActionTileView_didTapActionButton);
  swift_beginAccess();
  v8 = *v7;
  if (*v7)
  {

    v8(v9);
    return sub_1B9F0E310(v8);
  }

  else
  {
    sub_1BA4A3DD8();
    v11 = sub_1BA4A3E88();
    v12 = sub_1BA4A6FB8();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v19[0] = v14;
      *v13 = 136446210;
      v19[4] = ObjectType;
      swift_getMetatypeMetadata();
      v15 = sub_1BA4A6808();
      v17 = sub_1B9F0B82C(v15, v16, v19);

      *(v13 + 4) = v17;
      _os_log_impl(&dword_1B9F07000, v11, v12, "[%{public}s] didTapActionButton is not set and needs to be set to provide an action for the MessageWithActionTileView link", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v14);
      MEMORY[0x1BFAF43A0](v14, -1, -1);
      MEMORY[0x1BFAF43A0](v13, -1, -1);
    }

    return (*(v4 + 8))(v6, v3);
  }
}

void sub_1BA431588(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, char a7, uint64_t a8, uint64_t a9, void *a10)
{
  v14 = *&v10[OBJC_IVAR____TtC18HealthExperienceUI25MessageWithActionTileView_titleLabel];
  if (a2)
  {
    v15 = sub_1BA4A6758();
  }

  else
  {
    v15 = 0;
  }

  [v14 setText_];

  v16 = *&v10[OBJC_IVAR____TtC18HealthExperienceUI25MessageWithActionTileView_bodyLabel];
  if (a4)
  {
    v17 = sub_1BA4A6758();
  }

  else
  {
    v17 = 0;
  }

  [v16 setText_];

  [v16 setHidden_];
  v18 = *&v10[OBJC_IVAR____TtC18HealthExperienceUI25MessageWithActionTileView_actionButton];
  v19 = objc_opt_self();
  v20 = swift_allocObject();
  v20[2] = v18;
  v20[3] = a5;
  v20[4] = a6;
  v20[5] = 0;
  v21 = swift_allocObject();
  *(v21 + 16) = sub_1B9F7B15C;
  *(v21 + 24) = v20;
  aBlock[4] = sub_1B9F7B0CC;
  aBlock[5] = v21;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B9F7B0FC;
  aBlock[3] = &block_descriptor_119;
  v22 = _Block_copy(aBlock);
  v23 = v18;

  [v19 performWithoutAnimation_];
  _Block_release(v22);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v25 = HIBYTE(a6) & 0xF;
    if ((a6 & 0x2000000000000000) == 0)
    {
      v25 = a5 & 0xFFFFFFFFFFFFLL;
    }

    [v23 setHidden_];
    [v10 setBackgroundColor_];
    [v10 updateConstraints];
    v26 = sub_1BA42FCF0();
    [v26 setHidden_];

    v27 = *&v10[OBJC_IVAR____TtC18HealthExperienceUI25MessageWithActionTileView_separatorTopConstraint];
    if (v27)
    {
      v28 = 0.0;
      if (a7)
      {
        v28 = 12.0;
      }

      [v27 setConstant_];
    }

    v29 = *&v10[OBJC_IVAR____TtC18HealthExperienceUI25MessageWithActionTileView_actionButtonTopConstraint];
    if (v29)
    {
      [v29 setConstant_];
    }

    v30.value._countAndFlagsBits = a9;
    v30.value._object = a10;
    MessageWithActionTileView.updateAutomationIdentifiers(with:)(v30);
  }
}

void sub_1BA43187C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, char a6, uint64_t a7, uint64_t a8, void *a9)
{
  with.value._countAndFlagsBits = a8;
  [*&v9[OBJC_IVAR____TtC18HealthExperienceUI25MessageWithActionTileView_titleLabel] setAttributedText_];
  v14 = *&v9[OBJC_IVAR____TtC18HealthExperienceUI25MessageWithActionTileView_bodyLabel];
  v31 = a6;
  if (a3)
  {
    v15 = sub_1BA4A6758();
  }

  else
  {
    v15 = 0;
  }

  [v14 setText_];

  [v14 setHidden_];
  v16 = *&v9[OBJC_IVAR____TtC18HealthExperienceUI25MessageWithActionTileView_actionButton];
  v17 = objc_opt_self();
  v18 = swift_allocObject();
  v18[2] = v16;
  v18[3] = a4;
  v18[4] = a5;
  v18[5] = 0;
  v19 = swift_allocObject();
  *(v19 + 16) = sub_1BA02C5F4;
  *(v19 + 24) = v18;
  v36 = sub_1B9F89DF8;
  v37 = v19;
  with.value._object = MEMORY[0x1E69E9820];
  v33 = 1107296256;
  v34 = sub_1B9F7B0FC;
  v35 = &block_descriptor_14_5;
  v20 = _Block_copy(&with.value._object);

  v21 = v16;

  [v17 performWithoutAnimation_];
  _Block_release(v20);
  LOBYTE(v20) = swift_isEscapingClosureAtFileLocation();

  if (v20)
  {
    __break(1u);
  }

  else
  {
    v22 = HIBYTE(a5) & 0xF;
    if ((a5 & 0x2000000000000000) == 0)
    {
      v22 = a4 & 0xFFFFFFFFFFFFLL;
    }

    v23 = v22 == 0;
    if (a5)
    {
      v24 = v23;
    }

    else
    {
      v24 = 1;
    }

    [v21 setHidden_];
    [v9 setBackgroundColor_];
    [v9 updateConstraints];
    v25 = sub_1BA42FCF0();
    [v25 setHidden_];

    v26 = *&v9[OBJC_IVAR____TtC18HealthExperienceUI25MessageWithActionTileView_separatorTopConstraint];
    if (v26)
    {
      v27 = 0.0;
      if (v31)
      {
        v27 = 12.0;
      }

      [v26 setConstant_];
    }

    v28 = *&v9[OBJC_IVAR____TtC18HealthExperienceUI25MessageWithActionTileView_actionButtonTopConstraint];
    if (v28)
    {
      [v28 setConstant_];
    }

    v29.value._countAndFlagsBits = with.value._countAndFlagsBits;
    v29.value._object = a9;
    MessageWithActionTileView.updateAutomationIdentifiers(with:)(v29);
  }
}

id MessageWithActionTileView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MessageWithActionTileView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1BA431DD8()
{
  v1 = v0;
  v2 = sub_1BA4A3EA8();
  v41 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v42 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = OBJC_IVAR____TtC18HealthExperienceUI25MessageWithActionTileView_titleLabel;
  v5 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  [v5 setTranslatesAutoresizingMaskIntoConstraints_];
  v6 = *MEMORY[0x1E69DDCF8];
  v7 = sub_1B9F6B774(*MEMORY[0x1E69DDCF8], *MEMORY[0x1E69DB980], 0, 0, 0, 0, 1);
  [v5 setFont_];

  [v5 setAdjustsFontForContentSizeCategory_];
  [v5 setNumberOfLines_];
  v8 = objc_opt_self();
  v9 = [v8 labelColor];
  [v5 setTextColor_];

  [v5 setTextAlignment_];
  *(v1 + v4) = v5;
  v10 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  [v10 setTranslatesAutoresizingMaskIntoConstraints_];
  v11 = objc_opt_self();
  v12 = [v11 preferredFontDescriptorWithTextStyle:v6 compatibleWithTraitCollection:0];
  if (v12)
  {
    v13 = v12;
    v14 = [objc_opt_self() fontWithDescriptor:v12 size:0.0];
  }

  else
  {
    v40 = v2;
    sub_1BA4A3DD8();
    v15 = v6;
    v16 = sub_1BA4A3E88();
    v17 = sub_1BA4A6FB8();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v45 = v39;
      *v18 = 136315906;
      v19 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      v21 = sub_1B9F0B82C(v19, v20, &v45);

      *(v18 + 4) = v21;
      v37 = v17;
      *(v18 + 12) = 2080;
      v43 = 0;
      v44 = 1;
      sub_1B9F6C190(0, &qword_1EBBECB00, type metadata accessor for Weight);
      v22 = sub_1BA4A6808();
      v24 = sub_1B9F0B82C(v22, v23, &v45);

      *(v18 + 14) = v24;
      *(v18 + 22) = 2080;
      LODWORD(v43) = 0;
      type metadata accessor for SymbolicTraits(0);
      v25 = sub_1BA4A6808();
      v27 = sub_1B9F0B82C(v25, v26, &v45);

      *(v18 + 24) = v27;
      *(v18 + 32) = 2112;
      v28 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
      *(v18 + 34) = v28;
      v29 = v38;
      *v38 = v28;
      _os_log_impl(&dword_1B9F07000, v16, v37, "Unable to create descriptor with textStyle %s, weight %s, traits %s and rounded %@. Using only the text style", v18, 0x2Au);
      sub_1B9F8C6C8(v29);
      MEMORY[0x1BFAF43A0](v29, -1, -1);
      v30 = v39;
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v30, -1, -1);
      MEMORY[0x1BFAF43A0](v18, -1, -1);
    }

    (*(v41 + 8))(v42, v40);
    v31 = [v11 preferredFontDescriptorWithTextStyle_];
    v14 = [objc_opt_self() fontWithDescriptor:v31 size:0.0];
  }

  v32 = OBJC_IVAR____TtC18HealthExperienceUI25MessageWithActionTileView_bodyLabel;
  [v10 setFont_];

  [v10 setAdjustsFontForContentSizeCategory_];
  v33 = [v8 secondaryLabelColor];
  [v10 setTextColor_];

  [v10 setNumberOfLines_];
  [v10 setLineBreakMode_];
  [v10 setTextAlignment_];
  *(v1 + v32) = v10;
  v34 = OBJC_IVAR____TtC18HealthExperienceUI25MessageWithActionTileView_actionButton;
  *(v1 + v34) = sub_1BA42FA1C();
  *(v1 + OBJC_IVAR____TtC18HealthExperienceUI25MessageWithActionTileView____lazy_storage___separator) = 0;
  *(v1 + OBJC_IVAR____TtC18HealthExperienceUI25MessageWithActionTileView_separatorTopConstraint) = 0;
  *(v1 + OBJC_IVAR____TtC18HealthExperienceUI25MessageWithActionTileView_actionButtonTopConstraint) = 0;
  *(v1 + OBJC_IVAR____TtC18HealthExperienceUI25MessageWithActionTileView_bottomConstraint) = 0;
  v35 = (v1 + OBJC_IVAR____TtC18HealthExperienceUI25MessageWithActionTileView_didTapActionButton);
  *v35 = 0;
  v35[1] = 0;
  sub_1BA4A8018();
  __break(1u);
}

id NavigationBarScrollAnimationCustomizing<>.scrollView.getter()
{
  result = [v0 collectionView];
  if (!result)
  {
    __break(1u);
  }

  return result;
}

BOOL NavigationBarScrollAnimationCustomizing.navigationBarShouldBeVisible.getter(uint64_t a1, uint64_t a2)
{
  v4 = (*(a2 + 24))();
  v5 = (*(a2 + 8))(a1, a2);
  [v4 contentOffset];
  v7 = v6;
  [v4 adjustedContentInset];
  v9 = v8;

  return v7 + v9 > v5;
}

void NavigationBarScrollAnimationCustomizing<>.configureNavigationItemForCustomScrollAnimation()(uint64_t a1, uint64_t a2)
{
  if ((_UISolariumEnabled() & 1) == 0)
  {
    v5 = [v2 navigationItem];
    [v5 _setManualScrollEdgeAppearanceEnabled_];

    NavigationBarScrollAnimationCustomizing<>.updateNavigationBarForManualScrollAppearance(animated:)(0, a1, a2);
  }
}

void NavigationBarScrollAnimationCustomizing<>.updateNavigationBarForManualScrollAppearance(animated:)(char a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if ((_UISolariumEnabled() & 1) == 0)
  {
    v8 = [v3 navigationItem];
    [v8 _manualScrollEdgeAppearanceProgress];
    v10 = v9;

    v18[0] = v4;
    if (NavigationBarScrollAnimationCustomizing.navigationBarShouldBeVisible.getter(a2, a3))
    {
      v11 = 1.0;
    }

    else
    {
      v11 = 0.0;
    }

    if (v10 != v11)
    {
      if (a1)
      {
        v12 = objc_opt_self();
        v18[0] = v4;
        v13 = (*(a3 + 16))(a2, a3);
        v14 = swift_allocObject();
        *(v14 + 16) = a2;
        *(v14 + 24) = a3;
        *(v14 + 32) = v4;
        *(v14 + 40) = v11;
        v18[4] = sub_1BA4327B8;
        v18[5] = v14;
        v18[0] = MEMORY[0x1E69E9820];
        v18[1] = 1107296256;
        v18[2] = sub_1B9F0B040;
        v18[3] = &block_descriptor_120;
        v15 = _Block_copy(v18);
        v16 = v4;

        [v12 animateWithDuration:v15 animations:v13];
        _Block_release(v15);
      }

      else
      {
        v17 = [v4 navigationItem];
        [v17 _setManualScrollEdgeAppearanceProgress_];
      }
    }
  }
}

double CGFloat.percent(through:)(double a1, double a2, double a3)
{
  v3 = 0.0;
  if (a3 > a1)
  {
    v3 = 1.0;
    if (a2 > a3)
    {
      return (a3 - a1) / (a2 - a1);
    }
  }

  return v3;
}

BOOL static NavigationBarScrollAnimationCustomizing.navigationBarIsVisible(scrollView:thresholdY:)(void *a1, double a2)
{
  [a1 contentOffset];
  v5 = v4;
  [a1 adjustedContentInset];
  return v5 + v6 > a2;
}

void sub_1BA4327B8()
{
  v1 = *(v0 + 40);
  v2 = [*(v0 + 32) navigationItem];
  [v2 _setManualScrollEdgeAppearanceProgress_];
}

uint64_t sub_1BA432860()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI27HealthDetailsViewController_isInEditMode;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1BA4328A4(char a1)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI27HealthDetailsViewController_isInEditMode;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t _s18HealthExperienceUI0A21DetailsViewControllerC10dataSource3forAA021CompoundSectionedDataH0CSo06UIViewF0C_tF_0()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI27HealthDetailsViewController____lazy_storage___healthDetailsDataSource;
  if (*(v0 + OBJC_IVAR____TtC18HealthExperienceUI27HealthDetailsViewController____lazy_storage___healthDetailsDataSource))
  {
    v2 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI27HealthDetailsViewController____lazy_storage___healthDetailsDataSource);
  }

  else
  {
    v3 = v0;
    UIViewController.resolvedHealthExperienceStore.getter(v8);
    __swift_project_boxed_opaque_existential_1(v8, v8[3]);
    v4 = sub_1BA4A1B68();
    __swift_destroy_boxed_opaque_existential_1(v8);
    v5 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI27HealthDetailsViewController_healthStore);
    type metadata accessor for HealthDetailsCompoundDataSource();
    swift_allocObject();
    v6 = v5;
    v2 = sub_1BA17933C(v6, v4);

    *(v3 + v1) = v2;
  }

  return v2;
}

id HealthDetailsViewController.__allocating_init(healthStore:inEditMode:)(void *a1, char a2)
{
  v5 = objc_allocWithZone(v2);
  v5[OBJC_IVAR____TtC18HealthExperienceUI27HealthDetailsViewController_shouldSaveItems] = 1;
  *&v5[OBJC_IVAR____TtC18HealthExperienceUI27HealthDetailsViewController____lazy_storage___healthDetailsDataSource] = 0;
  *&v5[OBJC_IVAR____TtC18HealthExperienceUI27HealthDetailsViewController_healthStore] = a1;
  v5[OBJC_IVAR____TtC18HealthExperienceUI27HealthDetailsViewController_isInEditMode] = a2;
  v6 = objc_allocWithZone(MEMORY[0x1E69DC840]);
  v7 = a1;
  v8 = [v6 init];
  v11.receiver = v5;
  v11.super_class = v2;
  v9 = objc_msgSendSuper2(&v11, sel_initWithCollectionViewLayout_, v8);

  return v9;
}

id HealthDetailsViewController.init(healthStore:inEditMode:)(void *a1, char a2)
{
  v2[OBJC_IVAR____TtC18HealthExperienceUI27HealthDetailsViewController_shouldSaveItems] = 1;
  *&v2[OBJC_IVAR____TtC18HealthExperienceUI27HealthDetailsViewController____lazy_storage___healthDetailsDataSource] = 0;
  *&v2[OBJC_IVAR____TtC18HealthExperienceUI27HealthDetailsViewController_healthStore] = a1;
  v2[OBJC_IVAR____TtC18HealthExperienceUI27HealthDetailsViewController_isInEditMode] = a2;
  v4 = objc_allocWithZone(MEMORY[0x1E69DC840]);
  v5 = a1;
  v6 = [v4 init];
  v9.receiver = v2;
  v9.super_class = type metadata accessor for HealthDetailsViewController();
  v7 = objc_msgSendSuper2(&v9, sel_initWithCollectionViewLayout_, v6);

  return v7;
}

id HealthDetailsViewController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void HealthDetailsViewController.init(coder:)()
{
  *(v0 + OBJC_IVAR____TtC18HealthExperienceUI27HealthDetailsViewController_shouldSaveItems) = 1;
  *(v0 + OBJC_IVAR____TtC18HealthExperienceUI27HealthDetailsViewController____lazy_storage___healthDetailsDataSource) = 0;
  sub_1BA4A8018();
  __break(1u);
}

void sub_1BA432D18()
{
  v1 = type metadata accessor for HealthDetailsViewController();
  v12[3] = v1;
  v12[4] = &protocol witness table for HealthDetailsViewController;
  v12[0] = v0;
  v2 = OBJC_IVAR____TtC18HealthExperienceUI42CompoundDataSourceCollectionViewController_dataSourceProvider;
  swift_beginAccess();
  v3 = v0;
  sub_1B9F10C48(v12, v0 + v2);
  swift_endAccess();
  v11.receiver = v3;
  v11.super_class = v1;
  objc_msgSendSuper2(&v11, sel_viewDidLoad);
  v4 = [v3 collectionView];
  if (v4)
  {
    v5 = v4;
    v6 = [objc_opt_self() systemGroupedBackgroundColor];
    [v5 setBackgroundColor_];

    v7 = [*&v3[OBJC_IVAR____TtC18HealthExperienceUI27HealthDetailsViewController_healthStore] profileIdentifier];
    v8 = [v7 type];

    if (v8 == 1)
    {
      v9 = [v3 navigationItem];
      v10 = [v3 editButtonItem];
      [v9 setRightBarButtonItem_];
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_1BA432F88(char a1, char a2)
{
  v5 = [*&v2[OBJC_IVAR____TtC18HealthExperienceUI27HealthDetailsViewController_healthStore] profileIdentifier];
  v6 = [v5 type];

  if (v6 == 1)
  {
    v12.receiver = v2;
    v12.super_class = type metadata accessor for HealthDetailsViewController();
    objc_msgSendSuper2(&v12, sel_setEditing_animated_, a1 & 1, a2 & 1);
    v7 = OBJC_IVAR____TtC18HealthExperienceUI27HealthDetailsViewController_shouldSaveItems;
    if (v2[OBJC_IVAR____TtC18HealthExperienceUI27HealthDetailsViewController_shouldSaveItems] == 1)
    {
      _s18HealthExperienceUI0A21DetailsViewControllerC10dataSource3forAA021CompoundSectionedDataH0CSo06UIViewF0C_tF_0();
      sub_1BA2ED190(a1 & 1);
    }

    v2[v7] = 1;
    v8 = [v2 isEditing];
    v9 = [v2 navigationItem];
    v10 = v9;
    if (v8)
    {
      v11 = [objc_allocWithZone(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:1 target:v2 action:sel_resetCharacteristics];
      [v10 setLeftBarButtonItem_];

      v10 = v11;
    }

    else
    {
      [v9 setLeftBarButtonItem_];
    }
  }
}

id HealthDetailsViewController.__allocating_init(collectionViewLayout:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCollectionViewLayout_];

  return v3;
}

uint64_t sub_1BA43323C()
{
}

id HealthDetailsViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HealthDetailsViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t ProfileAllDataDataSource.NavigationItem.uniqueIdentifier.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t ProfileAllDataDataSource.NavigationItem.reuseIdentifier.getter()
{
  v1 = *(v0 + 64);

  return v1;
}

uint64_t ProfileAllDataDataSource.NavigationItem.makeViewControllerToPush.getter()
{
  v1 = *(v0 + 104);

  return v1;
}

id sub_1BA433560@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  sub_1B9F0A534(a2, (a3 + 1));
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  v6 = sub_1BA4A1318();
  v8 = v7;
  v9 = sub_1BA4A6758();
  v10 = [objc_opt_self() systemImageNamed_];

  sub_1B9F0A534(a2, v15);
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  sub_1B9F1134C(v15, v11 + 24);
  type metadata accessor for ProfileNavigationCollectionViewCell();
  sub_1BA1809F0();
  v14 = a1;
  a3[8] = sub_1BA4A6808();
  a3[9] = v12;
  *a3 = v14;
  a3[6] = 0xD000000000000034;
  a3[7] = 0x80000001BA508A00;
  a3[10] = v6;
  a3[11] = v8;
  a3[12] = v10;
  a3[13] = sub_1BA434124;
  a3[14] = v11;

  return v14;
}

id sub_1BA433750(void *a1, uint64_t a2)
{
  sub_1B9F0A534(a2, v15);
  v3 = objc_allocWithZone(type metadata accessor for ProfileViewController());
  v4 = v16;
  v5 = v17;
  v6 = __swift_mutable_project_boxed_opaque_existential_1(v15, v16);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = &v15[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  (*(v10 + 16))(v9, v7);
  v11 = a1;
  v12 = sub_1BA38A128(v11, v9, v3, v4, v5);

  __swift_destroy_boxed_opaque_existential_1(v15);
  return v12;
}

char *sub_1BA433870(void *a1, uint64_t a2, uint64_t a3)
{
  sub_1B9F0A534(a2, v10);
  sub_1B9F0A534(a3, v9);
  v5 = objc_allocWithZone(type metadata accessor for ProfileCategoriesViewController());
  v6 = a1;
  v7 = sub_1BA3F9C88(v6, v10, v9);

  return v7;
}

Swift::Void __swiftcall ProfileAllDataDataSource.NavigationItem.didSelectCell(_:in:)(UIView *_, UIViewController *in)
{
  v4 = (*(v2 + 104))(_);
  [(UIViewController *)in showViewController:v4 sender:in];
}

void sub_1BA433958(uint64_t a1, void *a2)
{
  v4 = (*(v2 + 104))();
  [a2 showViewController:v4 sender:a2];
}

uint64_t sub_1BA4339BC(uint64_t a1)
{
  v2 = sub_1BA4340D0();

  return MEMORY[0x1EEE0DA58](a1, v2);
}

id sub_1BA433A08(uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  result = [objc_opt_self() sharedBehavior];
  if (result)
  {
    v6 = result;
    v7 = [result isiPad];

    if (v7)
    {
      static GridLayoutEngine.maximumOfTwoItemsLayout.getter(v13);
      v12[0] = v3;
      v12[1] = v2;
      v12[2] = v4;
      v8 = GridLayoutEngine.layout(for:)(v12);
      v11[2] = v13[2];
      v11[3] = v13[3];
      v11[4] = v13[4];
      v11[0] = v13[0];
      v11[1] = v13[1];
      if (v1)
      {
        return sub_1B9F5A690(v11);
      }

      else
      {
        v10 = v8;
        sub_1B9F5A690(v11);
        return v10;
      }
    }

    else
    {
      if (qword_1EDC6CB88 != -1)
      {
        swift_once();
      }

      v9 = type metadata accessor for ListLayoutConfiguration();
      __swift_project_value_buffer(v9, qword_1EDC6CB90);
      return ListLayoutConfiguration.layout(for:)(v2);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t _s18HealthExperienceUI014ProfileAllDataF6SourceC014makeNavigationfG011healthStore0jbK020pinnedContentManagerAA0fG10WithLayoutCyAA05ArrayfG0CGSo08HKHealthK0C_0A8Platform0abK0_pAO06PinnedM8Managing_ptFZ_0(void *a1, uint64_t a2, uint64_t a3)
{
  v32 = a2;
  v35 = sub_1BA4A1798();
  v33 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1E69E6F90];
  sub_1B9F321E0(0, &qword_1EDC5DBF0, sub_1B9F32148, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BA4B5480;
  sub_1B9F321E0(0, &qword_1EDC5DCA0, sub_1B9F32244, v7);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1BA4B5460;
  *(v8 + 56) = &type metadata for ProfileAllDataDataSource.NavigationItem;
  v9 = sub_1BA433FC8();
  *(v8 + 64) = v9;
  v10 = swift_allocObject();
  *(v8 + 32) = v10;
  sub_1BA433560(a1, a3, (v10 + 16));
  *(v8 + 96) = &type metadata for ProfileAllDataDataSource.NavigationItem;
  *(v8 + 104) = v9;
  v11 = swift_allocObject();
  *(v8 + 72) = v11;
  sub_1B9F0A534(a3, (v11 + 3));
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  v31 = 0x80000001BA4EF6A0;
  v12 = sub_1BA4A1318();
  v14 = v13;
  v15 = sub_1BA4A6758();
  v16 = [objc_opt_self() systemImageNamed_];

  sub_1B9F0A534(v32, v38);
  sub_1B9F0A534(a3, v37);
  v17 = swift_allocObject();
  *(v17 + 16) = a1;
  sub_1B9F1134C(v38, v17 + 24);
  sub_1B9F1134C(v37, v17 + 64);
  v36 = type metadata accessor for ProfileNavigationCollectionViewCell();
  sub_1BA1809F0();
  v18 = a1;
  v11[10] = sub_1BA4A6808();
  v11[11] = v19;
  v11[2] = v18;
  v11[8] = 0xD000000000000037;
  v11[9] = v31;
  v11[12] = v12;
  v11[13] = v14;
  v11[14] = v16;
  v11[15] = sub_1BA1809E0;
  v11[16] = v17;
  v20 = inited;
  *(inited + 32) = v8;
  *&v38[0] = 0x3C53447961727241;
  *(&v38[0] + 1) = 0xE800000000000000;
  v21 = v18;
  sub_1BA4A1788();
  v22 = sub_1BA4A1748();
  v24 = v23;
  (*(v33 + 8))(v6, v35);
  MEMORY[0x1BFAF1350](v22, v24);

  MEMORY[0x1BFAF1350](62, 0xE100000000000000);
  v25 = v38[0];
  type metadata accessor for ArrayDataSource();
  swift_allocObject();
  v26 = ArrayDataSource.init(_:identifier:)(v20, v25, *(&v25 + 1));
  sub_1BA0A71F0();
  v27 = swift_allocObject();
  v29 = v26[5];
  v28 = v26[6];
  *(v27 + 16) = v26;
  *(v27 + 24) = v29;
  *(v27 + 32) = v28;
  *(v27 + 40) = 0;
  *(v27 + 48) = sub_1BA433A08;
  *(v27 + 56) = 0;

  return v27;
}

unint64_t sub_1BA433FC8()
{
  result = qword_1EBBF29B8;
  if (!qword_1EBBF29B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBF29B8);
  }

  return result;
}

uint64_t sub_1BA43401C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 120))
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

uint64_t sub_1BA434064(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

unint64_t sub_1BA4340D0()
{
  result = qword_1EBBF29C0;
  if (!qword_1EBBF29C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBF29C0);
  }

  return result;
}

uint64_t DataTypeDetailConfiguration.HighlightsComponent.init(hkType:itemLimits:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

id DataTypeDetailConfiguration.HighlightsComponent.hkType.getter()
{
  v1 = *v0;
  v2 = *v0;
  return v1;
}

uint64_t DataTypeDetailConfiguration.HighlightsComponent.makeDataSource(context:)(uint64_t a1)
{
  v3 = sub_1BA4A1C48();
  v62 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v56 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA170230(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v65 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v56 - v9;
  v11 = v1[1];
  v63 = *v1;
  v64 = v11;
  sub_1B9F1C048(0, &qword_1EDC6B450);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1BA4B5460;
  *(v12 + 32) = sub_1BA4A6F38();
  *(v12 + 40) = 0;
  v13 = *(a1 + 48);
  if (v13 > 2)
  {
    goto LABEL_9;
  }

  v14 = sub_1BA4A8338();

  if (v14)
  {
LABEL_10:

    type metadata accessor for EmptyDataSource();
    swift_allocObject();
    v38 = EmptyDataSource.init()();
    sub_1BA434AAC();
    v39 = swift_allocObject();
    v40 = *(v38 + 24);
    *(v39 + 16) = *(v38 + 16);
    *(v39 + 24) = v40;
    *(v39 + 32) = v38;
    *(v39 + 40) = 1;

    return v39;
  }

  if (v13 > 1)
  {
LABEL_9:

    goto LABEL_10;
  }

  v15 = sub_1BA4A8338();

  if (v15)
  {
    goto LABEL_10;
  }

  __swift_project_boxed_opaque_existential_1(a1, *(a1 + 24));
  v61 = sub_1BA4A1B68();
  sub_1B9F1C048(0, &qword_1EDC6B400);
  v60 = v16;
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1BA4B8B60;
  v18 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  v19 = sub_1BA4A6758();
  v20 = [v18 initWithKey:v19 ascending:0];

  *(v17 + 32) = v20;
  v21 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  v22 = sub_1BA4A6758();
  v23 = [v21 initWithKey:v22 ascending:1];

  *(v17 + 40) = v23;
  v24 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  v25 = sub_1BA4A6758();
  v26 = [v24 initWithKey:v25 ascending:0];

  *(v17 + 48) = v26;
  v27 = sub_1BA4A0FA8();
  (*(*(v27 - 8) + 56))(v10, 1, 1, v27);
  v57 = sub_1BA0CD1D8(v64);
  v59 = v28;
  if (qword_1EDC60080 != -1)
  {
    swift_once();
  }

  v29 = qword_1EDC60088;
  v30 = unk_1EDC60090;
  v31 = objc_allocWithZone(type metadata accessor for HighlightsFetchedResultsControllerDataSource());

  sub_1BA4A1C28();
  v58 = sub_1BA4A1C38();
  v62[1](v5, v3);
  sub_1BA1FA3F8(v10, v65);
  v32 = v63;
  *(v31 + qword_1EDC84A78) = v63;
  v62 = v31;
  v33 = (v31 + qword_1EDC84A80);
  *v33 = v29;
  v33[1] = v30;
  sub_1BA4A27B8();
  v34 = v32;
  v35 = MEMORY[0x1BFAED110]();
  sub_1B9F0ADF8(0, &qword_1EDC6E3E0);
  v36 = sub_1BA4A6AE8();

  [v35 setSortDescriptors_];

  if (v32)
  {
    v37 = swift_allocObject();
    *(v37 + 16) = xmmword_1BA4B5470;
    *(v37 + 32) = v34;
  }

  else
  {
    v37 = 0;
  }

  v42 = v34;
  v43 = MEMORY[0x1BFAED020](v58, v37, v65, v12);

  v44 = swift_allocObject();
  *(v44 + 16) = xmmword_1BA4B5470;
  *(v44 + 32) = v43;
  sub_1B9F0ADF8(0, &qword_1EDC6B630);
  v45 = v43;
  v46 = sub_1BA4A6AE8();

  v47 = [objc_opt_self() andPredicateWithSubpredicates_];

  [v35 setPredicate_];
  if ((v59 & 1) == 0)
  {
    [v35 setFetchLimit_];
  }

  v48 = objc_allocWithZone(MEMORY[0x1E695D600]);
  v49 = v61;
  v50 = _s18HealthExperienceUI33FeedItemSuggestedActionDataSourceCyACSo26NSFetchedResultsControllerCy0A8Platform0dE0CGcfc_0([v48 initWithFetchRequest:v35 managedObjectContext:v61 sectionNameKeyPath:0 cacheName:0]);

  sub_1B9F1C1B0(v65);
  sub_1B9F1C1B0(v10);
  sub_1BA4349E4(0);
  v51 = swift_allocObject();
  *(v51 + qword_1EDC84A98) = v64;
  *(v51 + qword_1EDC84AA0) = 0x7FFFFFFFFFFFFFFFLL;

  v52 = sub_1BA0488BC(v50, 0x7FFFFFFFFFFFFFFFLL);

  sub_1BA434A40(0, &qword_1EDC67CA0, sub_1BA4349E4, &protocol witness table for DataSourceWithSectionItemLimit<A>, type metadata accessor for DataSourceWithLayout);
  v53 = swift_allocObject();
  *(v53 + 16) = v52;
  v55 = *(v52 + 40);
  v54 = *(v52 + 48);
  *(v53 + 24) = v55;
  *(v53 + 32) = v54;
  *(v53 + 40) = 1;
  *(v53 + 48) = sub_1BA236D80;
  *(v53 + 56) = 0;
  sub_1BA434AAC();
  v39 = swift_allocObject();
  *(v39 + 16) = v55;
  *(v39 + 24) = v54;
  *(v39 + 32) = v53;
  *(v39 + 40) = 0;
  swift_bridgeObjectRetain_n();
  return v39;
}

void sub_1BA434A40(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

void sub_1BA434AAC()
{
  if (!qword_1EDC66CD8)
  {
    sub_1BA434A40(255, &qword_1EDC67CA0, sub_1BA4349E4, &protocol witness table for DataSourceWithSectionItemLimit<A>, type metadata accessor for DataSourceWithLayout);
    type metadata accessor for EmptyDataSource();
    v0 = type metadata accessor for _ConditionalDataSource();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC66CD8);
    }
  }
}

Swift::Void __swiftcall TileHeader.updateDetailLabel()()
{
  v2 = v1;
  v3 = v0;
  v4 = (*(v1 + 64))();
  if (v4)
  {
    v5 = v4;
    (*(v2 + 48))(v3, v2);
    if (v6)
    {
      v7 = sub_1BA4A6758();
    }

    else
    {
      v7 = 0;
    }

    [v5 setText_];
  }
}

void sub_1BA434C74()
{
  if (!qword_1EDC6CD10)
  {
    sub_1BA434CCC();
    v0 = sub_1BA4A7AA8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC6CD10);
    }
  }
}

unint64_t sub_1BA434CCC()
{
  result = qword_1EDC6CD18[0];
  if (!qword_1EDC6CD18[0])
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, qword_1EDC6CD18);
  }

  return result;
}

uint64_t TileHeader.isAccessibilitySizing.getter()
{
  v1 = [v0 traitCollection];
  v2 = [v1 preferredContentSizeCategory];

  LOBYTE(v1) = sub_1BA4A74F8();
  return v1 & 1;
}

NSMutableAttributedString __swiftcall TileHeader.attributedString(with:bounds:renderingMode:)(UIImage with, __C::CGRect_optional *bounds, UIImageRenderingMode renderingMode)
{
  x = bounds->value.origin.x;
  y = bounds->value.origin.y;
  width = bounds->value.size.width;
  height = bounds->value.size.height;
  v9 = [(objc_class *)with.super.isa imageWithRenderingMode:renderingMode];
  v10 = [objc_allocWithZone(MEMORY[0x1E69DB7F0]) init];
  if (([(objc_class *)with.super.isa isSymbolImage]& 1) == 0)
  {
    [v10 setAdjustsImageSizeForAccessibilityContentSizeCategory_];
  }

  [v10 setImage_];
  if (!bounds->is_nil)
  {
    [v10 setBounds_];
  }

  sub_1BA434EB0();
  v11 = [swift_getObjCClassFromMetadata() attributedStringWithAttachment_];

  return v11;
}

unint64_t sub_1BA434EB0()
{
  result = qword_1EDC6B520;
  if (!qword_1EDC6B520)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDC6B520);
  }

  return result;
}

uint64_t TileHeader.detailText.getter(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BA4A1728();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for TileHeaderDetailKind();
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = (&v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(a2 + 112))(&v22, a1, a2, v9);
  if (!v23)
  {
    sub_1B9F6F2F0(&v22, sub_1BA434C74);
    return 0;
  }

  sub_1B9F25598(&v22, v24);
  v12 = v25;
  v13 = v26;
  __swift_project_boxed_opaque_existential_1(v24, v25);
  (*(v13 + 40))(v12, v13);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v18 = *v11;
    __swift_destroy_boxed_opaque_existential_1(v24);
    return v18;
  }

  if (EnumCaseMultiPayload != 1)
  {
    __swift_destroy_boxed_opaque_existential_1(v24);
    return 0;
  }

  sub_1B9F6D6D8();
  v16 = *(v11 + *(v15 + 48));
  (*(v5 + 32))(v7, v11, v4);
  v17 = sub_1BA4A16B8();
  if (v16)
  {
    if (qword_1EDC6E3F8 != -1)
    {
      swift_once();
    }
  }

  else if (qword_1EDC6E3F8 != -1)
  {
    swift_once();
  }

  v20 = HKMostRecentSampleEndDateText();

  if (v20)
  {
    v21 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  }

  else
  {
    v21 = 0;
  }

  (*(v5 + 8))(v7, v4);
  __swift_destroy_boxed_opaque_existential_1(v24);
  return v21;
}

uint64_t TileHeaderDetailKind.DateFormat.hashValue.getter()
{
  v1 = *v0;
  sub_1BA4A8488();
  MEMORY[0x1BFAF2ED0](v1);
  return sub_1BA4A84D8();
}

uint64_t _s18HealthExperienceUI20TileHeaderDetailKindO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BA4A1728();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for TileHeaderDetailKind();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = (&v32 - v12);
  sub_1B9F777C4();
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = &v16[*(v17 + 56)];
  sub_1B9F70FE4(a1, v16);
  sub_1B9F70FE4(a2, v18);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1B9F70FE4(v16, v10);
      sub_1B9F6D6D8();
      v21 = *(v20 + 48);
      v22 = v10[v21];
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v23 = v18[v21];
        (*(v5 + 32))(v7, v18, v4);
        v24 = sub_1BA4A16E8();
        v25 = *(v5 + 8);
        v25(v7, v4);
        v25(v10, v4);
        if (v24)
        {
          sub_1B9F6F2F0(v16, type metadata accessor for TileHeaderDetailKind);
          return v22 ^ v23 ^ 1u;
        }

        goto LABEL_18;
      }

      (*(v5 + 8))(v10, v4);
LABEL_11:
      v29 = sub_1B9F777C4;
LABEL_12:
      sub_1B9F6F2F0(v16, v29);
      return 0;
    }

    if (swift_getEnumCaseMultiPayload() != 2)
    {
      goto LABEL_11;
    }
  }

  else
  {
    sub_1B9F70FE4(v16, v13);
    v28 = *v13;
    v27 = v13[1];
    if (swift_getEnumCaseMultiPayload())
    {

      goto LABEL_11;
    }

    if (v28 == *v18 && v27 == *(v18 + 1))
    {
    }

    else
    {
      v31 = sub_1BA4A8338();

      if ((v31 & 1) == 0)
      {
LABEL_18:
        v29 = type metadata accessor for TileHeaderDetailKind;
        goto LABEL_12;
      }
    }
  }

  sub_1B9F6F2F0(v16, type metadata accessor for TileHeaderDetailKind);
  return 1;
}

unint64_t sub_1BA435678()
{
  result = qword_1EBBF29C8;
  if (!qword_1EBBF29C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBF29C8);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_18HealthExperienceUI14TileHeaderTypeO(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1BA4356E4(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 16))
  {
    return (*a1 + 2147483646);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1BA435738(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

void *sub_1BA435794(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = (a2 - 1);
  }

  *result = v2;
  return result;
}

uint64_t WeightItem.reuseIdentifier.getter()
{
  type metadata accessor for TitleValueTableViewCell();
  sub_1BA2253B4();
  return sub_1BA4A6808();
}

uint64_t WeightItem.uniqueIdentifier.getter()
{
  sub_1BA435AAC();
  v1 = sub_1BA4A6808();
  v2 = *v0;
  sub_1BA01D2B0();
  v3 = v2;
  v4 = sub_1BA4A6808();
  v6 = v5;

  MEMORY[0x1BFAF1350](v4, v6);

  return v1;
}

unint64_t sub_1BA435AAC()
{
  result = qword_1EBBF29D0;
  if (!qword_1EBBF29D0)
  {
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_1EBBF29D0);
  }

  return result;
}

uint64_t sub_1BA435AF4()
{
  sub_1BA435AAC();
  v1 = sub_1BA4A6808();
  v2 = *v0;
  sub_1BA01D2B0();
  v3 = v2;
  v4 = sub_1BA4A6808();
  v6 = v5;

  MEMORY[0x1BFAF1350](v4, v6);

  return v1;
}

uint64_t sub_1BA435BA4(uint64_t a1)
{
  v2 = sub_1BA120B20();

  return MEMORY[0x1EEE0DA58](a1, v2);
}

uint64_t WeightItem.title.getter()
{
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  return sub_1BA4A1318();
}

uint64_t WeightItem.value.getter()
{
  v1 = *v0;
  if (*v0)
  {
    v2 = *(v0 + 32);
    v3 = *(v0 + 40);
    __swift_project_boxed_opaque_existential_1((v0 + 8), v2);
    v8 = 0;
    v4 = *(v3 + 16);
    v5 = v1;
    v6 = v4(&v8, v5, v2, v3);

    return v6;
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

unint64_t sub_1BA435D88()
{
  result = qword_1EBBF29D8;
  if (!qword_1EBBF29D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBF29D8);
  }

  return result;
}

uint64_t sub_1BA435DDC()
{
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  return sub_1BA4A1318();
}

uint64_t sub_1BA435E7C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (!v1)
  {
    return v2;
  }

  v25 = MEMORY[0x1E69E7CC0];
  v24 = *(a1 + 16);
  sub_1BA066D68(0, v1, 0);
  v2 = v25;
  v4 = a1 + 56;
  result = sub_1BA4A7C48();
  v6 = v24;
  v7 = 0;
  while ((result & 0x8000000000000000) == 0 && result < 1 << *(a1 + 32))
  {
    v9 = result >> 6;
    v10 = 1 << result;
    if ((*(v4 + 8 * (result >> 6)) & (1 << result)) == 0)
    {
      goto LABEL_21;
    }

    v11 = *(*(a1 + 48) + 8 * result);
    v12 = *(a1 + 36);
    v14 = *(v25 + 16);
    v13 = *(v25 + 24);
    if (v14 >= v13 >> 1)
    {
      v22 = *(a1 + 36);
      v23 = result;
      sub_1BA066D68((v13 > 1), v14 + 1, 1);
      v6 = v24;
      v12 = v22;
      result = v23;
    }

    *(v25 + 16) = v14 + 1;
    *(v25 + 8 * v14 + 32) = v11;
    v8 = 1 << *(a1 + 32);
    if (result >= v8)
    {
      goto LABEL_22;
    }

    v15 = *(v4 + 8 * v9);
    if ((v15 & v10) == 0)
    {
      goto LABEL_23;
    }

    if (v12 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v16 = v15 & (-2 << (result & 0x3F));
    if (v16)
    {
      v8 = __clz(__rbit64(v16)) | result & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v17 = v9 << 6;
      v18 = v9 + 1;
      v19 = (a1 + 64 + 8 * v9);
      while (v18 < (v8 + 63) >> 6)
      {
        v21 = *v19++;
        v20 = v21;
        v17 += 64;
        ++v18;
        if (v21)
        {
          sub_1BA0477A4(result, v12, 0);
          v6 = v24;
          v8 = __clz(__rbit64(v20)) + v17;
          goto LABEL_4;
        }
      }

      sub_1BA0477A4(result, v12, 0);
      v6 = v24;
    }

LABEL_4:
    ++v7;
    result = v8;
    if (v7 == v6)
    {
      return v2;
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
  return result;
}

uint64_t SpotlightSearchResultProvider.search(text:)(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  v3[6] = *v2;
  v4 = sub_1BA4A3CD8();
  v3[7] = v4;
  v3[8] = *(v4 - 8);
  v3[9] = swift_task_alloc();
  v3[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BA436190, 0, 0);
}

uint64_t sub_1BA436190()
{
  sub_1BA4A3CC8();
  v1 = sub_1BA4A3CF8();
  v2 = sub_1BA4A7418();
  if (sub_1BA4A7A68())
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    v4 = sub_1BA4A3CB8();
    _os_signpost_emit_with_name_impl(&dword_1B9F07000, v1, v2, v4, "SpotlightFeedItemSearch", "", v3, 2u);
    MEMORY[0x1BFAF43A0](v3, -1, -1);
  }

  v5 = v0[9];
  v6 = v0[10];
  v7 = v0[7];
  v8 = v0[8];
  v10 = v0[5];
  v9 = v0[6];
  v12 = v0[3];
  v11 = v0[4];

  (*(v8 + 16))(v5, v6, v7);
  sub_1BA4A3D48();
  swift_allocObject();
  v0[11] = sub_1BA4A3D38();
  (*(v8 + 8))(v6, v7);
  sub_1B9F0ADF8(0, &qword_1EBBF29E0);

  v13 = sub_1BA436850();
  v0[12] = v13;
  v14 = swift_task_alloc();
  v0[13] = v14;
  v14[2] = v10;
  v14[3] = v13;
  v14[4] = v12;
  v14[5] = v11;
  v14[6] = v9;
  v15 = swift_task_alloc();
  v0[14] = v15;
  *(v15 + 16) = v13;
  v16 = swift_task_alloc();
  v0[15] = v16;
  sub_1BA43879C(0, &qword_1EBBE99C0, &qword_1EDC5E4A0);
  *v16 = v0;
  v16[1] = sub_1BA436414;

  return MEMORY[0x1EEE6DE18](v0 + 2, &unk_1BA4DBB00, v14, sub_1BA437C68, v15, 0, 0, v17);
}

void sub_1BA436414()
{

  if (v0)
  {
  }

  else
  {

    MEMORY[0x1EEE6DFA0](sub_1BA436558, 0, 0);
  }
}

uint64_t sub_1BA436558()
{
  v1 = *(v0 + 16);
  sub_1BA4365FC();

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1BA4365FC()
{
  v0 = sub_1BA4A3D18();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1BA4A3CD8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1BA4A3CF8();
  sub_1BA4A3D28();
  v9 = sub_1BA4A7408();
  if (sub_1BA4A7A68())
  {

    sub_1BA4A3D58();

    if ((*(v1 + 88))(v3, v0) == *MEMORY[0x1E69E93E8])
    {
      v10 = "[Error] Interval already ended";
    }

    else
    {
      (*(v1 + 8))(v3, v0);
      v10 = "";
    }

    v11 = swift_slowAlloc();
    *v11 = 0;
    v12 = sub_1BA4A3CB8();
    _os_signpost_emit_with_name_impl(&dword_1B9F07000, v8, v9, v12, "SpotlightFeedItemSearch", v10, v11, 2u);
    MEMORY[0x1BFAF43A0](v11, -1, -1);
  }

  return (*(v5 + 8))(v7, v4);
}

id sub_1BA436850()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E6964E70]) init];
  v1 = MEMORY[0x1E69E6158];
  sub_1B9F1D8D0(0, &qword_1EDC6E330, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1BA4B5480;
  sub_1B9F0ADF8(0, &qword_1EBBF2A18);
  *(v2 + 32) = sub_1BA4A7458();
  *(v2 + 40) = v3;
  v4 = sub_1BA4A6AE8();

  [v0 setFetchAttributes_];

  v5 = sub_1BA4A6AE8();
  [v0 setBundleIDs_];

  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1BA4B5480;
  *(v6 + 32) = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  *(v6 + 40) = v7;
  v8 = sub_1BA4A6AE8();

  [v0 setProtectionClasses_];

  v9 = sub_1B9F252FC();
  sub_1BA4A7B58();

  v17 = v1;
  v10 = sub_1BA4A7B58();
  v12 = v11;

  MEMORY[0x1BFAF1350](v10, v12);

  MEMORY[0x1BFAF1350](0x74647763222ALL, 0xE600000000000000);
  v13 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v14 = sub_1BA4A6758();

  v15 = [v13 initWithQueryString:v14 queryContext:{v0, v17, v9, v9, v9}];

  [v15 setPrivateIndex_];
  return v15;
}

uint64_t sub_1BA436B50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[15] = a5;
  v6[16] = a6;
  v6[13] = a3;
  v6[14] = a4;
  v6[11] = a1;
  v6[12] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1BA436B78, 0, 0);
}

uint64_t sub_1BA436B78()
{
  v2 = v0[15];
  v1 = v0[16];
  v4 = v0[13];
  v3 = v0[14];
  v5 = v0[12];
  v0[2] = v0;
  v0[7] = v0 + 10;
  v0[3] = sub_1BA436C40;
  v6 = swift_continuation_init();
  sub_1BA436D50(v6, v5, v4, v3, v2, v1);

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1BA436C40()
{
  v3 = *v0;
  **(*v0 + 88) = *(*v0 + 80);
  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1BA436D50(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, unint64_t a5, uint64_t a6)
{
  v25 = a1;
  v26 = a6;
  v24 = a4;
  v9 = sub_1BA4A3EA8();
  v27 = *(v9 - 8);
  v28 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtC18HealthExperienceUI29SpotlightSearchResultProvider_healthExperienceStore;
  v13 = swift_allocObject();
  *(v13 + 16) = MEMORY[0x1E69E7CC0];
  v34 = sub_1BA437C98;
  v35 = v13;
  aBlock = MEMORY[0x1E69E9820];
  v31 = 1107296256;
  v32 = sub_1BA437130;
  v33 = &block_descriptor_121;
  v14 = _Block_copy(&aBlock);

  [a3 setFoundItemsHandler_];
  _Block_release(v14);
  sub_1B9F0A534(a2 + v12, v29);
  v15 = swift_allocObject();
  v15[2] = v13;
  sub_1B9F25598(v29, (v15 + 3));
  v16 = v26;
  v15[8] = v25;
  v15[9] = v16;
  v34 = sub_1BA437CA0;
  v35 = v15;
  v17 = a3;
  aBlock = MEMORY[0x1E69E9820];
  v31 = 1107296256;
  v32 = sub_1BA33A4B8;
  v33 = &block_descriptor_11_3;
  v18 = _Block_copy(&aBlock);

  [a3 setCompletionHandler_];
  _Block_release(v18);
  sub_1BA4A3E18();

  v19 = sub_1BA4A3E88();
  v20 = sub_1BA4A6FC8();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    aBlock = v22;
    *v21 = 136643075;
    *(v21 + 4) = sub_1B9F0B82C(v24, a5, &aBlock);
    *(v21 + 12) = 2050;
    *(v21 + 14) = sub_1BA4A68D8();

    _os_log_impl(&dword_1B9F07000, v19, v20, "Starting search for search text %{sensitive}s (%{public}ld characters)", v21, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v22);
    MEMORY[0x1BFAF43A0](v22, -1, -1);
    MEMORY[0x1BFAF43A0](v21, -1, -1);
  }

  else
  {
  }

  (*(v27 + 8))(v11, v28);
  [v17 start];
}

uint64_t sub_1BA4370D0()
{
  swift_beginAccess();

  sub_1B9FE2AEC(v0);
  return swift_endAccess();
}

uint64_t sub_1BA437130(uint64_t a1)
{
  v1 = *(a1 + 32);
  sub_1B9F0ADF8(0, &qword_1EBBE99D0);
  v2 = sub_1BA4A6B08();

  v1(v2);
}

void sub_1BA4371B4(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v49 = a4;
  v50 = a5;
  v8 = sub_1BA4A3EA8();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v47 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v47 - v16;
  if (a1)
  {
    v48 = a3;
    aBlock[0] = a1;
    v18 = a1;
    v19 = a1;
    sub_1B9F0D950(0, &qword_1EDC6E310);
    type metadata accessor for CSSearchQueryError(0);
    if (swift_dynamicCast() && (v20 = v9, v21 = v8, v22 = *&v53[0], sub_1BA437D00(), sub_1BA4A1448(), v22, v8 = v21, v9 = v20, v51 == -2003))
    {
      sub_1BA4A3E18();
      v23 = sub_1BA4A3E88();
      v24 = sub_1BA4A6FC8();
      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        *v25 = 0;
        _os_log_impl(&dword_1B9F07000, v23, v24, "Search query cancelled", v25, 2u);
        MEMORY[0x1BFAF43A0](v25, -1, -1);
      }

      else
      {
      }

      (*(v20 + 8))(v17, v8);
    }

    else
    {
      sub_1BA4A3E18();
      v26 = a1;
      v27 = sub_1BA4A3E88();
      v28 = sub_1BA4A6FA8();

      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        aBlock[0] = v30;
        *v29 = 136446210;
        *&v53[0] = a1;
        v31 = a1;
        v32 = sub_1BA4A6808();
        v34 = sub_1B9F0B82C(v32, v33, aBlock);
        v47 = v8;
        v35 = v9;
        v36 = a2;
        v37 = v34;

        *(v29 + 4) = v37;
        a2 = v36;
        _os_log_impl(&dword_1B9F07000, v27, v28, "Search query completed with error: %{public}s", v29, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v30);
        MEMORY[0x1BFAF43A0](v30, -1, -1);
        MEMORY[0x1BFAF43A0](v29, -1, -1);

        (*(v35 + 8))(v14, v47);
      }

      else
      {

        (*(v9 + 8))(v14, v8);
      }
    }

    a3 = v48;
  }

  else
  {
    sub_1BA4A3E18();

    v38 = sub_1BA4A3E88();
    v39 = sub_1BA4A6FC8();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 134349056;
      swift_beginAccess();
      v41 = *(a2 + 16);
      if (v41 >> 62)
      {
        v42 = sub_1BA4A7CC8();
      }

      else
      {
        v42 = *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v40 + 4) = v42;

      _os_log_impl(&dword_1B9F07000, v38, v39, "Search query completed with %{public}ld items", v40, 0xCu);
      MEMORY[0x1BFAF43A0](v40, -1, -1);
    }

    else
    {
    }

    (*(v9 + 8))(v11, v8);
  }

  __swift_project_boxed_opaque_existential_1(a3, a3[3]);
  v43 = sub_1BA4A1B78();
  sub_1B9F0A534(a3, v53);
  v44 = swift_allocObject();
  v44[2] = a2;
  sub_1B9F25598(v53, (v44 + 3));
  v45 = v50;
  v44[8] = v49;
  v44[9] = v45;
  aBlock[4] = sub_1BA437CF0;
  aBlock[5] = v44;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B9F0B040;
  aBlock[3] = &block_descriptor_17_1;
  v46 = _Block_copy(aBlock);

  [v43 performBlock_];
  _Block_release(v46);
}

uint64_t sub_1BA437738(uint64_t a1, void *a2, uint64_t a3)
{
  v12 = MEMORY[0x1E69E7CD0];
  swift_beginAccess();
  v6 = *(a1 + 16);
  v10[2] = &v12;
  v10[3] = a2;

  v7 = sub_1BA2F49FC(sub_1BA437D58, v10, v6);

  v8 = sub_1BA437D74(v12, a2);
  v11 = v7;
  sub_1B9FE294C(v8);
  **(*(a3 + 64) + 40) = v11;
  swift_continuation_resume();
}

uint64_t sub_1BA437820@<X0>(id *a1@<X0>, void *a2@<X2>, uint64_t *a3@<X8>)
{
  v5 = *a1;
  v6 = [*a1 attributeSet];
  v7 = sub_1BA4A7688();
  v9 = v8;

  if ((v9 & 1) == 0)
  {
    sub_1BA0E32D8(&v11, v7);
  }

  result = sub_1BA0B1578(v5, a2);
  *a3 = result;
  return result;
}

uint64_t SpotlightSearchResultProvider.deinit()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI29SpotlightSearchResultProvider_signposter;
  v2 = sub_1BA4A3D08();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC18HealthExperienceUI29SpotlightSearchResultProvider_healthExperienceStore);
  return v0;
}

uint64_t SpotlightSearchResultProvider.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI29SpotlightSearchResultProvider_signposter;
  v2 = sub_1BA4A3D08();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC18HealthExperienceUI29SpotlightSearchResultProvider_healthExperienceStore);

  return swift_deallocClassInstance();
}

uint64_t sub_1BA4379E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = sub_1BA437A90;

  return SpotlightSearchResultProvider.search(text:)(a2, a3);
}

uint64_t sub_1BA437A90(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  *v3 = a1;
  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_1BA437BA0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1BA0C2E3C;

  return sub_1BA436B50(a1, v4, v5, v6, v7, v8);
}

uint64_t objectdestroy_7Tm()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

unint64_t sub_1BA437D00()
{
  result = qword_1EBBE9400;
  if (!qword_1EBBE9400)
  {
    type metadata accessor for CSSearchQueryError(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBE9400);
  }

  return result;
}

id sub_1BA437D74(uint64_t a1, void *a2)
{
  sub_1B9F0C9D8(0, &qword_1EDC6E2A0, MEMORY[0x1E6968130], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v63 = &v58 - v5;
  v6 = sub_1BA4A3EA8();
  v65 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v64 = (&v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1BA4A2558();
  v8 = sub_1BA4A2518();
  sub_1B9F2EAC0();
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1BA4B9FD0;
  *(v9 + 56) = MEMORY[0x1E69E6158];
  *(v9 + 64) = sub_1B9F1BE20();
  *(v9 + 32) = 0x77615265646F63;
  *(v9 + 40) = 0xE700000000000000;
  v10 = a1;
  v11 = 0;
  v12 = sub_1BA435E7C(v10);
  sub_1B9F1D8D0(0, &qword_1EBBF29E8, MEMORY[0x1E69E6530], MEMORY[0x1E69E62F8]);
  *(v9 + 96) = v13;
  *(v9 + 104) = sub_1BA438648();
  *(v9 + 72) = v12;
  v14 = [objc_opt_self() primaryProfile];
  result = [v14 identifier];
  if (result)
  {
    v16 = result;

    sub_1B9F0ADF8(0, &qword_1EDC6B630);
    *(v9 + 136) = sub_1B9F0ADF8(0, &qword_1EBBF29F8);
    *(v9 + 144) = sub_1BA4386C4();
    *(v9 + 112) = v16;
    v17 = sub_1BA4A6EE8();
    [v8 setPredicate_];

    v18 = a2[3];
    v19 = a2[4];
    v60 = __swift_project_boxed_opaque_existential_1(a2, v18);
    v61 = v19;
    v20 = sub_1BA4A1B78();
    v66 = v8;
    v21 = sub_1BA4A7598();
    v62 = v18;
    v22 = v21;
    v59 = v6;

    v68 = MEMORY[0x1E69E7CC0];
    if (v22 >> 62)
    {
      v23 = sub_1BA4A7CC8();
    }

    else
    {
      v23 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v24 = 0;
    v25 = MEMORY[0x1E69E7CC0];
    while (v23 != v24)
    {
      if ((v22 & 0xC000000000000001) != 0)
      {
        v26 = MEMORY[0x1BFAF2860](v24, v22);
      }

      else
      {
        if (v24 >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_41;
        }

        v26 = *(v22 + 8 * v24 + 32);
      }

      v27 = v26;
      v28 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        while (1)
        {
          __break(1u);
LABEL_41:
          __break(1u);
LABEL_42:
          if (!sub_1BA4A7CC8())
          {
            goto LABEL_43;
          }

LABEL_21:
          sub_1BA4A27B8();
          v40 = MEMORY[0x1BFAED110]();
          sub_1B9F0C9D8(0, &qword_1EDC6B460, MEMORY[0x1E69A3C08], MEMORY[0x1E69E6F90]);
          v41 = sub_1BA4A1C68();
          v42 = *(v41 - 8);
          v43 = (*(v42 + 80) + 32) & ~*(v42 + 80);
          v44 = swift_allocObject();
          *(v44 + 16) = xmmword_1BA4B5480;
          (*(v42 + 104))(v44 + v43, *MEMORY[0x1E69A3B88], v41);
          v45 = sub_1BA4A0FA8();
          v46 = v63;
          (*(*(v45 - 8) + 56))(v63, 1, 1, v45);
          sub_1B9F1D8D0(0, &qword_1EDC6B450, MEMORY[0x1E69A3C58], MEMORY[0x1E69E6F90]);
          v47 = swift_allocObject();
          *(v47 + 16) = xmmword_1BA4B5460;
          *(v47 + 32) = sub_1BA4A1D78();
          *(v47 + 40) = 0;
          v48 = MEMORY[0x1BFAED020](v44, v25, v46, v47);

          sub_1B9F1C1B0(v46);
          [v40 setPredicate_];

          v49 = sub_1BA4A1B78();
          v65 = v40;
          v50 = sub_1BA4A7598();
          v24 = MEMORY[0x1E69E7CC0];
          if (v11)
          {

            v51 = MEMORY[0x1E69E7CC0];
          }

          else
          {
            v51 = v50;
          }

          v68 = v24;
          v64 = v11;
          if (v51 >> 62)
          {
            v52 = sub_1BA4A7CC8();
          }

          else
          {
            v52 = *((v51 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v53 = 0;
          v25 = v51 & 0xC000000000000001;
          v54 = MEMORY[0x1E69E7CC0];
          v11 = &selRef_createHKUnitPreferenceController;
          while (1)
          {
            if (v52 == v53)
            {

              return v54;
            }

            if (v25)
            {
              v55 = MEMORY[0x1BFAF2860](v53, v51);
            }

            else
            {
              if (v53 >= *((v51 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_39;
              }

              v55 = *(v51 + 8 * v53 + 32);
            }

            v56 = v55;
            v57 = v53 + 1;
            if (__OFADD__(v53, 1))
            {
              break;
            }

            v24 = [v55 objectID];

            ++v53;
            if (v24)
            {
              MEMORY[0x1BFAF1510]();
              if (*((v68 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v68 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                sub_1BA4A6B68();
              }

              sub_1BA4A6BB8();
              v54 = v68;
              v53 = v57;
            }
          }

          __break(1u);
LABEL_39:
          __break(1u);
        }
      }

      v29 = sub_1BA4A2508();

      ++v24;
      if (v29)
      {
        MEMORY[0x1BFAF1510]();
        if (*((v68 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v68 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1BA4A6B68();
        }

        sub_1BA4A6BB8();
        v25 = v68;
        v24 = v28;
      }
    }

    v30 = v59;
    v31 = v64;
    sub_1BA4A3E18();

    v32 = sub_1BA4A3E88();
    v33 = sub_1BA4A6FC8();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v67 = v25;
      v68 = v35;
      *v34 = 136315138;
      sub_1BA43872C();

      v36 = sub_1BA4A6808();
      v38 = v30;
      v39 = sub_1B9F0B82C(v36, v37, &v68);

      *(v34 + 4) = v39;
      _os_log_impl(&dword_1B9F07000, v32, v33, "Matched types with highlights: %s", v34, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v35);
      MEMORY[0x1BFAF43A0](v35, -1, -1);
      MEMORY[0x1BFAF43A0](v34, -1, -1);

      (*(v65 + 1))(v31, v38);
    }

    else
    {

      (*(v65 + 1))(v31, v30);
    }

    v24 = v66;
    if (v25)
    {
      if (v25 >> 62)
      {
        goto LABEL_42;
      }

      if (*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_21;
      }

LABEL_43:
    }

    return MEMORY[0x1E69E7CC0];
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1BA438648()
{
  result = qword_1EBBF29F0;
  if (!qword_1EBBF29F0)
  {
    sub_1B9F1D8D0(255, &qword_1EBBF29E8, MEMORY[0x1E69E6530], MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBF29F0);
  }

  return result;
}

unint64_t sub_1BA4386C4()
{
  result = qword_1EBBF2A00;
  if (!qword_1EBBF2A00)
  {
    sub_1B9F0ADF8(255, &qword_1EBBF29F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBF2A00);
  }

  return result;
}

void sub_1BA43872C()
{
  if (!qword_1EBBF2A08)
  {
    sub_1BA43879C(255, &qword_1EBBF2A10, &qword_1EDC6E920);
    v0 = sub_1BA4A7AA8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBBF2A08);
    }
  }
}

void sub_1BA43879C(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  if (!*a2)
  {
    sub_1B9F0ADF8(255, a3);
    v4 = sub_1BA4A6BF8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1BA4387FC(uint64_t a1)
{
  v3 = *(*v1 + 144);
  swift_beginAccess();
  swift_getAssociatedTypeWitness();
  v4 = sub_1BA4A7AA8();
  (*(*(v4 - 8) + 40))(v1 + v3, a1, v4);
  return swift_endAccess();
}

uint64_t sub_1BA4388E0(uint64_t a1, uint64_t a2)
{
  swift_getAssociatedTypeWitness();
  v3 = sub_1BA4A7AA8();
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v8 - v4;
  (*(v6 + 16))(&v8 - v4, a2);
  return sub_1BA4387FC(v5);
}

uint64_t sub_1BA4389F4(uint64_t a1)
{
  v3 = *(*v1 + 152);
  swift_beginAccess();
  swift_getAssociatedTypeWitness();
  v4 = sub_1BA4A7AA8();
  (*(*(v4 - 8) + 40))(v1 + v3, a1, v4);
  return swift_endAccess();
}

uint64_t sub_1BA438AD8(uint64_t a1, uint64_t a2)
{
  swift_getAssociatedTypeWitness();
  v3 = sub_1BA4A7AA8();
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v8 - v4;
  (*(v6 + 16))(&v8 - v4, a2);
  return sub_1BA4389F4(v5);
}

uint64_t SnidgetContentView.ViewModel.__allocating_init(currentValueViewModel:visualizationViewModel:)(uint64_t a1, uint64_t a2)
{
  swift_allocObject();
  v4 = sub_1BA439CD8(a1, a2);
  swift_getAssociatedTypeWitness();
  v5 = sub_1BA4A7AA8();
  (*(*(v5 - 8) + 8))(a2, v5);
  swift_getAssociatedTypeWitness();
  v6 = sub_1BA4A7AA8();
  (*(*(v6 - 8) + 8))(a1, v6);
  return v4;
}

uint64_t SnidgetContentView.ViewModel.init(currentValueViewModel:visualizationViewModel:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BA439CD8(a1, a2);
  swift_getAssociatedTypeWitness();
  v5 = sub_1BA4A7AA8();
  (*(*(v5 - 8) + 8))(a2, v5);
  swift_getAssociatedTypeWitness();
  v6 = sub_1BA4A7AA8();
  (*(*(v6 - 8) + 8))(a1, v6);
  return v4;
}

uint64_t sub_1BA438F2C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000016 && 0x80000001BA508BF0 == a2 || (sub_1BA4A8338() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001BA508C10 == a2 || (sub_1BA4A8338() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001BA506420 == a2)
  {

    return 2;
  }

  else
  {
    v5 = sub_1BA4A8338();

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

uint64_t sub_1BA439054@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BA438F2C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1BA43909C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1BA4390F0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t SnidgetContentView.ViewModel.deinit()
{
  v1 = *(*v0 + 144);
  swift_getAssociatedTypeWitness();
  v2 = sub_1BA4A7AA8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 152);
  swift_getAssociatedTypeWitness();
  v4 = sub_1BA4A7AA8();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = *(*v0 + 160);
  v6 = sub_1BA4A19E8();
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  return v0;
}

uint64_t SnidgetContentView.ViewModel.__deallocating_deinit()
{
  SnidgetContentView.ViewModel.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1BA43933C(void *a1)
{
  v2 = v1;
  v36 = *v2;
  v4 = v36;
  v5 = *(v36 + 104);
  v6 = *(v36 + 88);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = sub_1BA4A7AA8();
  v28 = *(v7 - 8);
  v29 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v30 = v27 - v8;
  v9 = *(v36 + 96);
  v10 = *(v36 + 80);
  v33 = swift_getAssociatedTypeWitness();
  v11 = sub_1BA4A7AA8();
  v34 = *(v11 - 8);
  v35 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v13 = v27 - v12;
  v14 = *(v4 + 112);
  v15 = *(v4 + 136);
  *&v16 = v10;
  *(&v16 + 1) = v6;
  *&v17 = v9;
  *(&v17 + 1) = v5;
  v38 = v17;
  v37 = v16;
  v39 = v14;
  v32 = *(v36 + 120);
  v40 = v32;
  v27[1] = v15;
  v41 = v15;
  type metadata accessor for SnidgetContentView.ViewModel.CodingKeys();
  swift_getWitnessTable();
  v18 = sub_1BA4A8298();
  v36 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v20 = v27 - v19;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BA4A8548();
  sub_1B9F4F484(v13);
  LOBYTE(v37) = 0;
  v21 = v18;
  v22 = v42;
  sub_1BA4A8238();
  if (v22)
  {
    (*(v34 + 8))(v13, v35);
    return (*(v36 + 8))(v20, v18);
  }

  else
  {
    v24 = v28;
    v25 = v29;
    (*(v34 + 8))(v13, v35);
    v26 = v30;
    sub_1B9F51AB0(v30);
    LOBYTE(v37) = 1;
    sub_1BA4A8238();
    (*(v24 + 8))(v26, v25);
    LOBYTE(v37) = 2;
    sub_1BA4A19E8();
    sub_1BA439E60();
    sub_1BA4A8288();
    return (*(v36 + 8))(v20, v21);
  }
}

uint64_t SnidgetContentView.id.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t SnidgetContentView.id.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t SnidgetContentView.viewModel.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t SnidgetContentView.previousViewModel.setter(uint64_t a1)
{

  *(v1 + 24) = a1;
  return result;
}

uint64_t sub_1BA439940(uint64_t a1)
{
  v3 = *v1;
  v4 = *v1;
  v5 = *(*v1 + 96);
  v6 = *(*v1 + 80);
  swift_getAssociatedTypeWitness();
  v7 = sub_1BA4A7AA8();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v12[-v9];
  sub_1B9F4F484(&v12[-v9]);
  (*(v8 + 8))(v10, v7);
  v15 = v6;
  v16 = *(v3 + 88);
  v17 = v5;
  v18 = *(v4 + 104);
  v19 = *(v4 + 120);
  v20 = *(v3 + 136);
  swift_getKeyPath();
  v13 = v1;
  v14 = a1;
  sub_1BA438E48();
}

uint64_t sub_1BA439B24(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 104);
  v5 = *(*v1 + 88);
  swift_getAssociatedTypeWitness();
  v6 = sub_1BA4A7AA8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v14[-v8];
  sub_1B9F51AB0(&v14[-v8]);
  (*(v7 + 8))(v9, v6);
  *&v10 = *(v3 + 80);
  *(&v10 + 1) = v5;
  *&v11 = *(v3 + 96);
  *(&v11 + 1) = v4;
  v17 = v10;
  v18 = v11;
  v12 = *(v3 + 128);
  v19 = *(v3 + 112);
  v20 = v12;
  swift_getKeyPath();
  v15 = v1;
  v16 = a1;
  sub_1BA438E48();
}

uint64_t sub_1BA439CD8(uint64_t a1, uint64_t a2)
{
  v5 = *(*v2 + 144);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 56))(v2 + v5, 1, 1, AssociatedTypeWitness);
  v7 = *(*v2 + 152);
  v8 = swift_getAssociatedTypeWitness();
  (*(*(v8 - 8) + 56))(v2 + v7, 1, 1, v8);
  sub_1BA4A19D8();
  sub_1BA439940(a1);
  sub_1BA439B24(a2);
  return v2;
}

unint64_t sub_1BA439E60()
{
  result = qword_1EDC6AE20;
  if (!qword_1EDC6AE20)
  {
    sub_1BA4A19E8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC6AE20);
  }

  return result;
}

uint64_t sub_1BA439EB8(uint64_t a1)
{
  *(a1 + 16) = swift_getWitnessTable();
  result = swift_getWitnessTable();
  *(a1 + 24) = result;
  return result;
}

uint64_t PickerItem.reuseIdentifier.getter()
{
  v0 = sub_1BA43D4F0();

  return v0;
}

uint64_t PickerItem.reuseIdentifier.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t PickerItem.uniqueIdentifier.getter()
{
  v2 = sub_1BA4A85D8();
  MEMORY[0x1BFAF1350](95, 0xE100000000000000);
  v0 = sub_1BA4A1748();
  MEMORY[0x1BFAF1350](v0);

  return v2;
}

uint64_t PickerItem.title.getter(uint64_t a1)
{
  v1 = sub_1BA43D894(a1);

  return v1;
}

uint64_t PickerItem.title.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = (v3 + *(a3 + 40));

  *v6 = a1;
  v6[1] = a2;
  return result;
}

uint64_t PickerItem.placeholderText.getter(uint64_t a1)
{
  v1 = sub_1BA43D8A4(a1);

  return v1;
}

uint64_t PickerItem.placeholderText.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = (v3 + *(a3 + 44));

  *v6 = a1;
  v6[1] = a2;
  return result;
}

uint64_t sub_1BA43A2E8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for PickerItem() + 56));
  v4 = *v3;
  if (*v3)
  {
    v5 = v3[1];
  }

  else
  {
    v5 = 0;
  }

  *a2 = v4;
  a2[1] = v5;

  return sub_1B9F0F1B8(v4);
}

uint64_t sub_1BA43A344(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
  }

  else
  {
    v3 = 0;
  }

  v4 = (a2 + *(type metadata accessor for PickerItem() + 56));
  v5 = *v4;
  sub_1B9F0F1B8(v2);
  result = sub_1B9F0E310(v5);
  *v4 = v2;
  v4[1] = v3;
  return result;
}

uint64_t PickerItem.dataProvider.getter(uint64_t a1)
{
  v1 = sub_1BA43D934(a1);
  sub_1B9F0F1B8(v1);
  return v1;
}

uint64_t PickerItem.dataProvider.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = (v3 + *(a3 + 56));
  result = sub_1B9F0E310(*v6);
  *v6 = a1;
  v6[1] = a2;
  return result;
}

uint64_t sub_1BA43A450@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (**a4)()@<X8>)
{
  v5 = *(a2 + a3 - 16);
  v6 = *(a2 + a3 - 8);
  v7 = (a1 + *(type metadata accessor for PickerItem() + 60));
  v8 = *v7;
  v9 = v7[1];
  if (*v7)
  {
    v10 = swift_allocObject();
    *(v10 + 2) = v5;
    *(v10 + 3) = v6;
    *(v10 + 4) = v8;
    *(v10 + 5) = v9;
    v11 = sub_1BA43E424;
  }

  else
  {
    v11 = 0;
    v10 = 0;
  }

  *a4 = v11;
  a4[1] = v10;

  return sub_1B9F0F1B8(v8);
}

uint64_t sub_1BA43A500(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a3 + a4 - 16);
  v6 = *(a3 + a4 - 8);
  v7 = *a1;
  v8 = a1[1];
  if (*a1)
  {
    v9 = swift_allocObject();
    v9[2] = v5;
    v9[3] = v6;
    v9[4] = v7;
    v9[5] = v8;
    v10 = sub_1BA43E3FC;
  }

  else
  {
    v10 = 0;
    v9 = 0;
  }

  v11 = (a2 + *(type metadata accessor for PickerItem() + 60));
  v12 = *v11;
  sub_1B9F0F1B8(v7);
  result = sub_1B9F0E310(v12);
  *v11 = v10;
  v11[1] = v9;
  return result;
}

uint64_t PickerItem.updateHandler.getter(uint64_t a1)
{
  v1 = sub_1BA43D944(a1);
  sub_1B9F0F1B8(v1);
  return v1;
}

uint64_t PickerItem.updateHandler.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = (v3 + *(a3 + 60));
  result = sub_1B9F0E310(*v6);
  *v6 = a1;
  v6[1] = a2;
  return result;
}

uint64_t PickerItem.items.setter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 64);

  *(v2 + v4) = a1;
  return result;
}

uint64_t PickerItem.init(uuid:title:placeholderText:backgroundConfiguration:isEditEnabled:items:dataProvider:updateHandler:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X7>, uint64_t *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  type metadata accessor for PickerCollectionViewCell();
  *a9 = static ReusableView.reuseIdentifier.getter();
  a9[1] = v17;
  v18 = type metadata accessor for PickerItem();
  v19 = v18[12];
  v20 = (a9 + v18[11]);
  v21 = sub_1BA4A4168();
  (*(*(v21 - 8) + 56))(a9 + v19, 1, 1, v21);
  v22 = (a9 + v18[14]);
  v23 = (a9 + v18[15]);
  v24 = v18[9];
  v25 = sub_1BA4A1798();
  (*(*(v25 - 8) + 32))(a9 + v24, a1, v25);
  v26 = (a9 + v18[10]);
  *v26 = a2;
  v26[1] = a3;
  *v20 = a4;
  v20[1] = a5;
  result = sub_1BA43D8B4(a6, a9 + v19);
  *(a9 + v18[13]) = a7;
  *(a9 + v18[16]) = a8;
  *v22 = a10;
  v22[1] = a11;
  *v23 = a12;
  v23[1] = a13;
  return result;
}

uint64_t sub_1BA43A85C(uint64_t a1)
{
  v1 = sub_1BA43D894(a1);

  return v1;
}

uint64_t sub_1BA43A894(uint64_t a1)
{
  v1 = sub_1BA43D8A4(a1);

  return v1;
}

uint64_t sub_1BA43A8FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a1)
  {
    a2 = 0;
  }

  return PickerItem.dataProvider.setter(a1, a2, a3);
}

uint64_t (*sub_1BA43A908(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x40uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 48) = PickerItem.dataProvider.modify();
  v3[7] = v4;
  if (*v4)
  {
    v5 = v4[1];
  }

  else
  {
    v5 = 0;
  }

  v3[4] = *v4;
  v3[5] = v5;
  return sub_1BA43A994;
}

uint64_t sub_1BA43A9C4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), void (*a4)(void))
{
  v5 = a3();
  a4();
  return v5;
}

uint64_t sub_1BA43AA10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a1)
  {
    a2 = 0;
  }

  return PickerItem.updateHandler.setter(a1, a2, a3);
}

uint64_t (*sub_1BA43AA1C(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x40uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 48) = PickerItem.updateHandler.modify();
  v3[7] = v4;
  if (*v4)
  {
    v5 = v4[1];
  }

  else
  {
    v5 = 0;
  }

  v3[4] = *v4;
  v3[5] = v5;
  return sub_1BA43E44C;
}

void sub_1BA43AAA8(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 56);
  v3 = *(*a1 + 32);
  v4 = *(*a1 + 40);
  if (!v3)
  {
    v4 = 0;
  }

  *v2 = v3;
  v2[1] = v4;
  v1[6](v1);

  free(v1);
}

uint64_t sub_1BA43AB04()
{
  v0 = sub_1BA43D4F0();

  return v0;
}

uint64_t sub_1BA43AB40(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE0DA58](a1, WitnessTable);
}

uint64_t sub_1BA43ABA4@<X0>(uint64_t a1@<X8>)
{
  v3 = qword_1EBBF2A20;
  swift_beginAccess();
  return sub_1BA43D984(v1 + v3, a1, &qword_1EDC6E1A0, sub_1B9FCD918);
}

uint64_t sub_1BA43AC18(uint64_t a1)
{
  v3 = qword_1EBBF2A20;
  swift_beginAccess();
  sub_1B9F63E74(a1, v1 + v3);
  swift_endAccess();
  sub_1BA43BDC4();
  return sub_1B9F446A4(a1, &qword_1EDC6E1A0, sub_1B9FCD918);
}

uint64_t (*sub_1BA43ACA0(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1BA43AD04;
}

uint64_t sub_1BA43AD04(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return sub_1BA43BDC4();
  }

  return result;
}

id sub_1BA43AD68(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = *MEMORY[0x1E69E7D40] & *v4;
  v11 = sub_1BA4A3EA8();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = &v5[qword_1EBBF2A20];
  *v15 = 0u;
  *(v15 + 1) = 0u;
  *(v15 + 4) = 0;
  v16 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  [v16 setTranslatesAutoresizingMaskIntoConstraints_];
  v17 = *MEMORY[0x1E69DDCF8];
  v18 = objc_opt_self();
  v19 = [v18 preferredFontDescriptorWithTextStyle:v17 compatibleWithTraitCollection:0];
  if (v19)
  {
    v20 = v19;
    v21 = [objc_opt_self() fontWithDescriptor:v19 size:0.0];
  }

  else
  {
    sub_1BA4A3DD8();
    v22 = v17;
    v23 = sub_1BA4A3E88();
    v24 = sub_1BA4A6FB8();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v56 = v10;
      v26 = v25;
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v59 = v54;
      *v26 = 136315906;
      v27 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      v55 = v22;
      v29 = sub_1B9F0B82C(v27, v28, &v59);
      HIDWORD(v52) = v24;
      v30 = v29;

      *(v26 + 4) = v30;
      *(v26 + 12) = 2080;
      v57 = 0;
      v58 = 1;
      sub_1B9F664A8(0, &qword_1EBBECB00, type metadata accessor for Weight);
      v31 = sub_1BA4A6808();
      v33 = sub_1B9F0B82C(v31, v32, &v59);

      *(v26 + 14) = v33;
      *(v26 + 22) = 2080;
      LODWORD(v57) = 0;
      type metadata accessor for SymbolicTraits(0);
      v34 = sub_1BA4A6808();
      v36 = sub_1B9F0B82C(v34, v35, &v59);
      v22 = v55;

      *(v26 + 24) = v36;
      *(v26 + 32) = 2112;
      v37 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
      *(v26 + 34) = v37;
      v38 = v53;
      *v53 = v37;
      _os_log_impl(&dword_1B9F07000, v23, BYTE4(v52), "Unable to create descriptor with textStyle %s, weight %s, traits %s and rounded %@. Using only the text style", v26, 0x2Au);
      sub_1B9F8C6C8(v38);
      MEMORY[0x1BFAF43A0](v38, -1, -1);
      v39 = v54;
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v39, -1, -1);
      MEMORY[0x1BFAF43A0](v26, -1, -1);
    }

    (*(v12 + 8))(v14, v11);
    v40 = [v18 preferredFontDescriptorWithTextStyle_];
    v21 = [objc_opt_self() fontWithDescriptor:v40 size:0.0];
  }

  v41 = qword_1EBBF2AA8;
  [v16 setFont_];

  [v16 setTextAlignment_];
  [v16 setAdjustsFontForContentSizeCategory_];
  v42 = [objc_opt_self() labelColor];
  [v16 setTextColor_];

  [v16 setLineBreakMode_];
  [v16 setNumberOfLines_];
  *&v5[v41] = v16;
  v43 = qword_1EBBF2AB0;
  v44 = [objc_allocWithZone(MEMORY[0x1E69DC738]) init];
  [v44 setShowsMenuAsPrimaryAction_];
  [v44 setChangesSelectionAsPrimaryAction_];
  v45 = v44;
  [v45 setTranslatesAutoresizingMaskIntoConstraints_];
  v46 = sub_1BA4A6AE8();
  v47 = HKUIJoinStringsForAutomationIdentifier();

  [v45 setAccessibilityIdentifier_];
  *&v5[v43] = v45;
  v48 = MEMORY[0x1E69E7CC0];
  *&v5[qword_1EBBF2AB8] = MEMORY[0x1E69E7CC0];
  *&v5[qword_1EBBF2AC0] = v48;
  v49 = type metadata accessor for PickerCollectionViewCell();
  v60.receiver = v5;
  v60.super_class = v49;
  v50 = objc_msgSendSuper2(&v60, sel_initWithFrame_, a1, a2, a3, a4);
  sub_1BA43B3F0();

  return v50;
}

id PickerCollectionViewCell.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

uint64_t sub_1BA43B3F0()
{
  v1 = v0;
  sub_1B9F664A8(0, &qword_1EDC6B770, MEMORY[0x1E69DC0D8]);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v8 = &v15 - v7;
  v9 = [v0 contentView];
  [v9 addSubview_];

  v10 = [v1 contentView];
  [v10 addSubview_];

  sub_1BA43B5E0();
  MEMORY[0x1BFAF1F00]();
  v11 = sub_1BA4A4168();
  if ((*(*(v11 - 8) + 48))(v8, 1, v11))
  {
    v12 = MEMORY[0x1E69DC0D8];
    sub_1BA43D984(v8, v4, &qword_1EDC6B770, MEMORY[0x1E69DC0D8]);
    MEMORY[0x1BFAF1F10](v4);
    return sub_1B9F446A4(v8, &qword_1EDC6B770, v12);
  }

  else
  {
    v14 = [objc_opt_self() secondarySystemGroupedBackgroundColor];
    sub_1BA4A4118();
    return MEMORY[0x1BFAF1F10](v8);
  }
}

void sub_1BA43B5E0()
{
  sub_1B9F23348(0, &qword_1EDC6B400, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1BA4B5890;
  v2 = [v0 contentView];
  v3 = [v2 bottomAnchor];

  v4 = *&v0[qword_1EBBF2AA8];
  v5 = [v4 bottomAnchor];
  v6 = [v3 constraintEqualToAnchor:v5 constant:12.0];

  *(v1 + 32) = v6;
  v7 = *&v0[qword_1EBBF2AB0];
  v8 = [v7 topAnchor];
  v9 = [v0 &selRef_fetchSources];
  v10 = [v9 topAnchor];

  v11 = [v8 &selRef:v10 objectAtIndex:12.0 + 6];
  *(v1 + 40) = v11;
  v12 = [v7 leadingAnchor];
  v13 = [v4 trailingAnchor];
  v14 = [v12 constraintGreaterThanOrEqualToAnchor:v13 constant:8.0];

  *(v1 + 48) = v14;
  v15 = [v7 trailingAnchor];
  v16 = [v0 &selRef_fetchSources];
  v17 = [v16 layoutMarginsGuide];

  v18 = [v17 trailingAnchor];
  v19 = [v15 constraintEqualToAnchor_];

  *(v1 + 56) = v19;
  *&v0[qword_1EBBF2AB8] = v1;

  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1BA4B5890;
  v21 = [v4 trailingAnchor];
  v22 = [v0 contentView];
  v23 = [v22 layoutMarginsGuide];

  v24 = [v23 trailingAnchor];
  v25 = [v21 constraintEqualToAnchor_];

  *(v20 + 32) = v25;
  v26 = [v7 topAnchor];
  v27 = [v4 bottomAnchor];
  v28 = [v26 constraintEqualToAnchor_];

  *(v20 + 40) = v28;
  v29 = [v7 leadingAnchor];
  v30 = [v0 contentView];
  v31 = [v30 layoutMarginsGuide];

  v32 = [v31 leadingAnchor];
  v33 = [v29 &selRef:v32 numberWithInteger:? + 5];

  *(v20 + 48) = v33;
  v34 = [v7 trailingAnchor];
  v35 = [v0 contentView];
  v36 = [v35 layoutMarginsGuide];

  v37 = [v36 trailingAnchor];
  v38 = [v34 constraintLessThanOrEqualToAnchor_];

  *(v20 + 56) = v38;
  *&v0[qword_1EBBF2AC0] = v20;

  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_1BA4B8B60;
  v40 = [v4 topAnchor];
  v41 = [v0 contentView];
  v42 = [v41 topAnchor];

  v43 = [v40 constraintEqualToAnchor:v42 constant:12.0];
  *(v39 + 32) = v43;
  v44 = [v4 leadingAnchor];
  v45 = [v0 contentView];
  v46 = [v45 layoutMarginsGuide];

  v47 = [v46 leadingAnchor];
  v48 = [v44 constraintEqualToAnchor_];

  *(v39 + 40) = v48;
  v49 = [v0 contentView];
  v50 = [v49 bottomAnchor];

  v51 = [v7 bottomAnchor];
  v52 = [v50 constraintEqualToAnchor:v51 constant:12.0];

  *(v39 + 48) = v52;
  v53 = sub_1BA43BD5C();
  v54 = &qword_1EBBF2AB8;
  if (v53)
  {
    v54 = &qword_1EBBF2AC0;
  }

  v55 = *&v0[*v54];

  v56 = objc_opt_self();
  sub_1B9F73B50(v55);
  sub_1B9F0ADF8(0, &qword_1EDC6B570);
  v57 = sub_1BA4A6AE8();

  [v56 activateConstraints_];
}

uint64_t sub_1BA43BD5C()
{
  v1 = [v0 traitCollection];
  v2 = [v1 preferredContentSizeCategory];

  LOBYTE(v1) = sub_1BA4A74F8();
  return v1 & 1;
}

uint64_t sub_1BA43BDC4()
{
  v1 = *v0;
  v2 = *MEMORY[0x1E69E7D40];
  sub_1B9F664A8(0, &qword_1EDC6B770, MEMORY[0x1E69DC0D8]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v36 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v38 = &v35 - v6;
  v7 = sub_1BA4A4168();
  v39 = *(v7 - 8);
  v40 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v35 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F664A8(0, &qword_1EDC5E0A8, MEMORY[0x1E69DC598]);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v35 - v10;
  v12 = *((v2 & v1) + 0x58);
  v37 = *((v2 & v1) + 0x50);
  v13 = type metadata accessor for PickerItem();
  v14 = sub_1BA4A7AA8();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v35 - v16;
  v18 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v35 - v20;
  v22 = qword_1EBBF2A20;
  swift_beginAccess();
  sub_1BA43D984(v0 + v22, v41, &qword_1EDC6E1A0, sub_1B9FCD918);
  if (!v42)
  {
    sub_1B9F446A4(v41, &qword_1EDC6E1A0, sub_1B9FCD918);
    (*(v18 + 56))(v17, 1, 1, v13);
    return (*(v15 + 8))(v17, v14);
  }

  sub_1B9FCD918();
  v23 = swift_dynamicCast();
  (*(v18 + 56))(v17, v23 ^ 1u, 1, v13);
  if ((*(v18 + 48))(v17, 1, v13) == 1)
  {
    return (*(v15 + 8))(v17, v14);
  }

  (*(v18 + 32))(v21, v17, v13);
  v24 = *(v0 + qword_1EBBF2AA8);
  v25 = sub_1BA4A6758();
  [v24 setText_];

  v26 = *(v0 + qword_1EBBF2AB0);
  v27 = sub_1BA43D4F8(v21, v37, v12);
  [v26 setMenu_];

  sub_1BA43CE24(v21);
  v28 = sub_1BA4A79A8();
  (*(*(v28 - 8) + 56))(v11, 0, 1, v28);
  sub_1BA4A79D8();
  [v26 setEnabled_];
  v29 = v38;
  sub_1BA43D984(&v21[*(v13 + 48)], v38, &qword_1EDC6B770, MEMORY[0x1E69DC0D8]);
  v31 = v39;
  v30 = v40;
  if ((*(v39 + 48))(v29, 1, v40) == 1)
  {
    (*(v18 + 8))(v21, v13);
    return sub_1B9F446A4(v29, &qword_1EDC6B770, MEMORY[0x1E69DC0D8]);
  }

  else
  {
    v33 = v35;
    (*(v31 + 32))(v35, v29, v30);
    v34 = v36;
    (*(v31 + 16))(v36, v33, v30);
    (*(v31 + 56))(v34, 0, 1, v30);
    MEMORY[0x1BFAF1F10](v34);
    (*(v31 + 8))(v33, v30);
    return (*(v18 + 8))(v21, v13);
  }
}

uint64_t sub_1BA43C3F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1BA4A7AA8();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11 - v7;
  result = type metadata accessor for PickerItem();
  v10 = *(a2 + *(result + 60));
  if (v10)
  {
    (*(*(a3 - 8) + 56))(v8, 1, 1, a3);
    v10(a2, v8);
    return (*(v6 + 8))(v8, v5);
  }

  return result;
}

void sub_1BA43C530(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v77 = a3;
  v82 = a1;
  v83 = a2;
  v7 = sub_1BA4A7AA8();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v68 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v75 = &v65 - v8;
  v76 = v7;
  v81 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v67 = &v65 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v84 = &v65 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v79 = &v65 - v14;
  v15 = *(a4 - 8);
  v73 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v65 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for PickerItem();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v65 - v22;
  v69 = &v65 - v22;
  v74 = sub_1B9F0ADF8(0, &unk_1EDC5E0B0);
  v24 = a5;
  v78 = a5;
  v25 = *(a5 + 16);
  v26 = v82;
  v27 = v25(a4, v24);
  v71 = v28;
  v72 = v27;
  (*(v20 + 16))(v23, v83, v19);
  v29 = v15;
  v70 = *(v15 + 16);
  v70(v18, v26, a4);
  v30 = (*(v20 + 80) + 32) & ~*(v20 + 80);
  v31 = (v21 + *(v15 + 80) + v30) & ~*(v15 + 80);
  v32 = swift_allocObject();
  v33 = v78;
  *(v32 + 16) = a4;
  *(v32 + 24) = v33;
  v34 = v32 + v30;
  v35 = v79;
  (*(v20 + 32))(v34, v69, v19);
  v36 = v29;
  v37 = *(v29 + 32);
  v38 = v18;
  v39 = v35;
  v73 = v38;
  v69 = (v29 + 32);
  v66 = v37;
  (v37)(v32 + v31);
  v40 = sub_1BA4A77E8();
  v70(v35, v82, a4);
  v82 = v36;
  v41 = *(v36 + 56);
  v41(v39, 0, 1, a4);
  v42 = *(v83 + *(v19 + 56));
  v74 = v40;
  if (v42)
  {
    v42();
  }

  else
  {
    v41(v84, 1, 1, a4);
  }

  v43 = a4;
  v44 = v81;
  v45 = *(TupleTypeMetadata2 + 48);
  v46 = *(v81 + 16);
  v47 = v75;
  v48 = v76;
  v46(v75, v39, v76);
  v83 = v45;
  v46(&v47[v45], v84, v48);
  v49 = v39;
  v50 = *(v82 + 48);
  if (v50(v47, 1, v43) != 1)
  {
    v54 = v67;
    v46(v67, v47, v48);
    v55 = v83;
    v56 = v43;
    if (v50(&v47[v83], 1, v43) != 1)
    {
      v58 = &v47[v55];
      v59 = v73;
      v66(v73, v58, v43);
      v60 = sub_1BA4A6728();
      v61 = *(v82 + 8);
      v61(v59, v56);
      v62 = v54;
      v63 = *(v81 + 8);
      v63(v84, v48);
      v63(v79, v48);
      v61(v62, v56);
      v63(v47, v48);
      v52 = v77;
      v53 = v74;
      if ((v60 & 1) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }

    v57 = *(v81 + 8);
    v57(v84, v48);
    v57(v79, v48);
    (*(v82 + 8))(v54, v56);
LABEL_9:
    (*(v68 + 8))(v47, TupleTypeMetadata2);
    v52 = v77;
    v53 = v74;
    goto LABEL_12;
  }

  v51 = *(v44 + 8);
  v51(v84, v48);
  v51(v49, v48);
  if (v50(&v47[v83], 1, v43) != 1)
  {
    goto LABEL_9;
  }

  v51(v47, v48);
  v52 = v77;
  v53 = v74;
LABEL_11:
  [v53 setState_];
LABEL_12:
  v64 = v53;
  MEMORY[0x1BFAF1510]();
  if (*((*v52 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v52 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1BA4A6B68();
  }

  sub_1BA4A6BB8();
}

uint64_t sub_1BA43CC90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_1BA4A7AA8();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v14 - v9;
  result = type metadata accessor for PickerItem();
  v12 = *(a2 + *(result + 60));
  if (v12)
  {
    v13 = *(a4 - 8);
    (*(v13 + 16))(v10, a3, a4);
    (*(v13 + 56))(v10, 0, 1, a4);
    v12(a2, v10);
    return (*(v8 + 8))(v10, v7);
  }

  return result;
}

uint64_t sub_1BA43CE24(uint64_t a1)
{
  v3 = *v1;
  v4 = *MEMORY[0x1E69E7D40];
  v5 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x50);
  v6 = sub_1BA4A7AA8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v15[-v8];
  sub_1BA4A7968();
  _UISolariumEnabled();
  sub_1BA4A7878();
  v10 = *((v4 & v3) + 0x58);
  v11 = *(a1 + *(type metadata accessor for PickerItem() + 56));
  if (v11)
  {
    v11(a1);
    v12 = *(v5 - 8);
    if ((*(v12 + 48))(v9, 1, v5) != 1)
    {
      (*(v10 + 16))(v5, v10);
      (*(v12 + 8))(v9, v5);
      goto LABEL_6;
    }

    (*(v7 + 8))(v9, v6);
  }

LABEL_6:
  sub_1BA4A7978();
  v13 = sub_1BA4A7808();
  sub_1BA4A4108();
  return v13(v15, 0);
}

void sub_1BA43D088(void *a1)
{
  v9.receiver = v1;
  v9.super_class = type metadata accessor for PickerCollectionViewCell();
  objc_msgSendSuper2(&v9, sel_traitCollectionDidChange_, a1);
  if (a1)
  {
    v3 = [a1 preferredContentSizeCategory];
    v4 = sub_1BA4A74F8();

    v5 = v4 & 1;
  }

  else
  {
    v5 = 2;
  }

  v6 = [v1 traitCollection];
  v7 = [v6 preferredContentSizeCategory];

  v8 = sub_1BA4A74F8();
  if (v5 == 2 || ((v8 ^ v5) & 1) != 0)
  {
    sub_1BA43D214();
  }
}

void sub_1BA43D1A8(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = a1;
  sub_1BA43D088(a3);
}

void sub_1BA43D214()
{
  if (sub_1BA43BD5C())
  {

    sub_1BA43D258();
  }

  else
  {

    sub_1BA43D26C();
  }
}

void sub_1BA43D280()
{
  v0 = objc_opt_self();
  sub_1B9F0ADF8(0, &qword_1EDC6B570);

  v1 = sub_1BA4A6AE8();

  [v0 activateConstraints_];

  v2 = sub_1BA4A6AE8();

  [v0 deactivateConstraints_];
}

id PickerCollectionViewCell.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PickerCollectionViewCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1BA43D3E0(uint64_t a1)
{
  sub_1B9F446A4(a1 + qword_1EBBF2A20, &qword_1EDC6E1A0, sub_1B9FCD918);
}

void (*sub_1BA43D480(uint64_t *a1))(void *a1)
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
  *(v2 + 32) = sub_1BA43ACA0(v2);
  return sub_1B9FCDD98;
}

uint64_t sub_1BA43D4F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for PickerItem();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v17 - v9;
  v18 = MEMORY[0x1E69E7CC0];
  v11 = (a1 + *(v8 + 44));
  if (v11[1])
  {
    v17[0] = *v11;
    sub_1B9F0ADF8(0, &unk_1EDC5E0B0);
    (*(v7 + 16))(v10, a1, v6);
    v12 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    v13 = swift_allocObject();
    *(v13 + 16) = a2;
    *(v13 + 24) = a3;
    (*(v7 + 32))(v13 + v12, v10, v6);

    v14 = sub_1BA4A77E8();
    MEMORY[0x1BFAF1510]();
    if (*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1BA4A6B68();
    }

    sub_1BA4A6BB8();
  }

  v17[2] = *(a1 + *(v6 + 64));
  MEMORY[0x1EEE9AC00](v8);
  sub_1BA4A6BF8();

  swift_getWitnessTable();
  sub_1BA4A6A38();

  if (v18 >> 62)
  {
    sub_1B9F0ADF8(0, &qword_1EBBF3400);

    sub_1BA4A8028();
  }

  else
  {

    sub_1BA4A8358();
    sub_1B9F0ADF8(0, &qword_1EBBF3400);
  }

  sub_1B9F0ADF8(0, &qword_1EBBEDA10);
  v15 = sub_1BA4A76C8();

  return v15;
}

uint64_t sub_1BA43D8B4(uint64_t a1, uint64_t a2)
{
  sub_1B9F664A8(0, &qword_1EDC6B770, MEMORY[0x1E69DC0D8]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BA43D984(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_1B9F664A8(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void _s18HealthExperienceUI24PickerCollectionViewCellC5coderACyxGSgSo7NSCoderC_tcfc_0()
{
  v1 = v0;
  v2 = sub_1BA4A3EA8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = v1 + qword_1EBBF2A20;
  *v6 = 0u;
  *(v6 + 16) = 0u;
  *(v6 + 32) = 0;
  v7 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  [v7 setTranslatesAutoresizingMaskIntoConstraints_];
  v8 = *MEMORY[0x1E69DDCF8];
  v9 = objc_opt_self();
  v10 = [v9 preferredFontDescriptorWithTextStyle:v8 compatibleWithTraitCollection:0];
  if (v10)
  {
    v11 = v10;
    v12 = [objc_opt_self() fontWithDescriptor:v10 size:0.0];
  }

  else
  {
    v45 = v3;
    sub_1BA4A3DD8();
    v13 = v8;
    v14 = sub_1BA4A3E88();
    v15 = sub_1BA4A6FB8();

    v44 = v15;
    v16 = v15;
    v17 = v14;
    if (os_log_type_enabled(v14, v16))
    {
      v18 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v48 = v42;
      *v18 = 136315906;
      v19 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      v21 = sub_1B9F0B82C(v19, v20, &v48);
      v43 = v13;
      v22 = v21;

      *(v18 + 4) = v22;
      *(v18 + 12) = 2080;
      v46 = 0;
      v47 = 1;
      sub_1B9F664A8(0, &qword_1EBBECB00, type metadata accessor for Weight);
      v23 = sub_1BA4A6808();
      v25 = sub_1B9F0B82C(v23, v24, &v48);

      *(v18 + 14) = v25;
      *(v18 + 22) = 2080;
      LODWORD(v46) = 0;
      type metadata accessor for SymbolicTraits(0);
      v26 = sub_1BA4A6808();
      v28 = sub_1B9F0B82C(v26, v27, &v48);
      v13 = v43;

      *(v18 + 24) = v28;
      *(v18 + 32) = 2112;
      v29 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
      *(v18 + 34) = v29;
      v30 = v41;
      *v41 = v29;
      _os_log_impl(&dword_1B9F07000, v17, v44, "Unable to create descriptor with textStyle %s, weight %s, traits %s and rounded %@. Using only the text style", v18, 0x2Au);
      sub_1B9F8C6C8(v30);
      MEMORY[0x1BFAF43A0](v30, -1, -1);
      v31 = v42;
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v31, -1, -1);
      MEMORY[0x1BFAF43A0](v18, -1, -1);
    }

    (*(v45 + 8))(v5, v2);
    v32 = [v9 preferredFontDescriptorWithTextStyle_];
    v12 = [objc_opt_self() fontWithDescriptor:v32 size:0.0];
  }

  v33 = qword_1EBBF2AA8;
  [v7 setFont_];

  [v7 setTextAlignment_];
  [v7 setAdjustsFontForContentSizeCategory_];
  v34 = [objc_opt_self() labelColor];
  [v7 setTextColor_];

  [v7 setLineBreakMode_];
  [v7 setNumberOfLines_];
  *(v1 + v33) = v7;
  v35 = qword_1EBBF2AB0;
  v36 = [objc_allocWithZone(MEMORY[0x1E69DC738]) init];
  [v36 setShowsMenuAsPrimaryAction_];
  [v36 setChangesSelectionAsPrimaryAction_];
  v37 = v36;
  [v37 setTranslatesAutoresizingMaskIntoConstraints_];
  v38 = sub_1BA4A6AE8();
  v39 = HKUIJoinStringsForAutomationIdentifier();

  [v37 setAccessibilityIdentifier_];
  *(v1 + v35) = v37;
  v40 = MEMORY[0x1E69E7CC0];
  *(v1 + qword_1EBBF2AB8) = MEMORY[0x1E69E7CC0];
  *(v1 + qword_1EBBF2AC0) = v40;
  sub_1BA4A8018();
  __break(1u);
}

uint64_t sub_1BA43DF7C(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

void sub_1BA43DFF0()
{
  v0 = MEMORY[0x1E69E6158];
  sub_1BA4A1798();
  if (v1 <= 0x3F)
  {
    sub_1B9F23348(319, &qword_1EDC6E410, v0, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      sub_1B9F664A8(319, &qword_1EDC6B770, MEMORY[0x1E69DC0D8]);
      if (v3 <= 0x3F)
      {
        sub_1B9F664A8(319, &qword_1EDC5DB48, sub_1B9F37BB8);
        if (v4 <= 0x3F)
        {
          sub_1BA4A6BF8();
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_1BA43E290(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(type metadata accessor for PickerItem() - 8);
  v5 = v1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));

  return sub_1BA43C3F0(a1, v5, v3);
}

uint64_t sub_1BA43E31C(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(type metadata accessor for PickerItem() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = v1 + ((v5 + *(v4 + 64) + *(*(v3 - 8) + 80)) & ~*(*(v3 - 8) + 80));

  return sub_1BA43CC90(a1, v1 + v5, v6, v3);
}

uint64_t SummarySharingOnboardingPresenting.presentOnboardingFlow(on:healthStore:healthExperienceStore:numOutgoingRelationships:isInfoTile:isPresentedViaLink:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6, uint64_t a7, uint64_t a8)
{
  v92 = a2;
  v93 = a8;
  v87 = a5;
  v88 = a6;
  v83 = a3;
  v89 = a1;
  v86 = *(a7 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v79 = v10;
  v85 = &v71 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F3D7EC(0, &qword_1EDC6B5B8, MEMORY[0x1E69E8050], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v71 - v12;
  sub_1BA02E124();
  v78 = v14;
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v71 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA02E1C8();
  v19 = *(v18 - 8);
  v80 = v18;
  v81 = v19;
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v71 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA02E25C();
  v84 = v22;
  v82 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v90 = &v71 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_1BA4A3EA8();
  v77 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v71 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA4A3DD8();
  v27 = sub_1BA4A3E88();
  v28 = sub_1BA4A6FC8();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v76 = v21;
    v30 = v29;
    v31 = swift_slowAlloc();
    v75 = a4;
    v73 = a7;
    v32 = v31;
    *&v94[0] = v31;
    *v30 = 136315138;
    v33 = sub_1BA4A85D8();
    v74 = v13;
    v35 = sub_1B9F0B82C(v33, v34, v94);
    v72 = v24;
    v36 = v35;
    v13 = v74;

    *(v30 + 4) = v36;
    _os_log_impl(&dword_1B9F07000, v27, v28, "[%s]: Checking criteria for Sharing onboaring", v30, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v32);
    a4 = v75;
    MEMORY[0x1BFAF43A0](v32, -1, -1);
    v37 = v30;
    v21 = v76;
    MEMORY[0x1BFAF43A0](v37, -1, -1);

    (*(v77 + 8))(v26, v72);
    v38 = v73;
  }

  else
  {

    (*(v77 + 8))(v26, v24);
    v38 = a7;
  }

  v39 = v93;
  v40 = v91;
  (*(v93 + 48))(v38, v93);
  *&v94[0] = sub_1BA443554(v38, v39);
  v96 = sub_1BA443FAC(a4);
  v95 = sub_1BA2B1C48(v92);
  sub_1BA02DF60(0);
  sub_1BA44350C(&qword_1EBBEA0F8, sub_1BA02DF60);
  sub_1BA4A4AB8();
  sub_1BA44350C(&qword_1EBBEA798, sub_1BA02E124);
  v41 = v78;
  sub_1BA4A5038();
  (*(v15 + 8))(v17, v41);
  sub_1B9F0ADF8(0, &qword_1EDC6B5A0);
  v42 = sub_1BA4A7308();
  *&v94[0] = v42;
  v43 = sub_1BA4A72A8();
  (*(*(v43 - 8) + 56))(v13, 1, 1, v43);
  sub_1BA44350C(&qword_1EBBEA7A8, sub_1BA02E1C8);
  sub_1B9F3DC80();
  v44 = v80;
  sub_1BA4A50A8();
  sub_1B9F0E040(v13, &qword_1EDC6B5B8, MEMORY[0x1E69E8050], MEMORY[0x1E69E6720], sub_1B9F3D7EC);

  (*(v81 + 8))(v21, v44);
  v46 = v85;
  v45 = v86;
  v47 = *(v86 + 16);
  v47(v85, v40, v38);
  v48 = *(v45 + 80);
  v49 = (v48 + 32) & ~v48;
  v50 = v79 + 7;
  v51 = (v79 + 7 + v49) & 0xFFFFFFFFFFFFFFF8;
  v52 = swift_allocObject();
  v53 = v93;
  *(v52 + 16) = v38;
  *(v52 + 24) = v53;
  v54 = *(v45 + 32);
  v55 = v52 + v49;
  v56 = v52;
  v81 = v52;
  v54(v55, v46, v38);
  v57 = v89;
  *(v56 + v51) = v89;
  v58 = v57;
  v47(v46, v91, v38);
  sub_1B9F0A534(v83, v94);
  v59 = (v48 + 40) & ~v48;
  v60 = (v50 + v59) & 0xFFFFFFFFFFFFFFF8;
  v61 = swift_allocObject();
  v62 = v93;
  v61[2] = v38;
  v61[3] = v62;
  v61[4] = v58;
  v54(v61 + v59, v46, v38);
  v63 = v92;
  *(v61 + v60) = v92;
  v64 = v61 + ((v60 + 15) & 0xFFFFFFFFFFFFFFF8);
  sub_1B9F25598(v94, v64);
  *(v64 + 40) = v87 & 1;
  *(v64 + 41) = v88 & 1;
  v65 = swift_allocObject();
  *(v65 + 16) = sub_1BA444284;
  *(v65 + 24) = v61;
  sub_1BA44350C(&qword_1EBBEA7B8, sub_1BA02E25C);
  v66 = v58;
  v67 = v63;
  v68 = v84;
  v69 = v90;
  sub_1BA4A4F88();

  return (*(v82 + 8))(v69, v68);
}

uint64_t sub_1BA43ED80(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1BA442F48(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_1BA441920(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_1BA43EDEC(unsigned __int8 *a1)
{
  v2 = sub_1BA4A3EA8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *a1;
  sub_1BA4A3DD8();
  v7 = sub_1BA4A3E88();
  v8 = sub_1BA4A6FC8();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v16 = v10;
    *v9 = 136315394;
    v11 = sub_1BA4A85D8();
    v13 = sub_1B9F0B82C(v11, v12, &v16);

    *(v9 + 4) = v13;
    *(v9 + 12) = 1024;
    *(v9 + 14) = v6;
    _os_log_impl(&dword_1B9F07000, v7, v8, "[%s] iCloud sync eligibility check is overriden in UserDefaults. Returning: %{BOOL}d", v9, 0x12u);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x1BFAF43A0](v10, -1, -1);
    MEMORY[0x1BFAF43A0](v9, -1, -1);
  }

  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_1BA43EFA8(uint64_t a1)
{
  v2 = sub_1BA4A3EA8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA02F428();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA44446C(a1, v8, sub_1BA02F428);
  v9 = type metadata accessor for SummarySharingOnboardingError();
  LODWORD(a1) = (*(*(v9 - 8) + 48))(v8, 1, v9);
  result = sub_1BA444404(v8, sub_1BA02F428);
  if (a1 != 1)
  {
    sub_1BA4A3DD8();
    v11 = sub_1BA4A3E88();
    v12 = sub_1BA4A6FA8();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v19 = v14;
      *v13 = 136315138;
      v15 = sub_1BA4A85D8();
      v17 = sub_1B9F0B82C(v15, v16, &v19);

      *(v13 + 4) = v17;
      _os_log_impl(&dword_1B9F07000, v11, v12, "[%s] Sync Observer is nil", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v14);
      MEMORY[0x1BFAF43A0](v14, -1, -1);
      MEMORY[0x1BFAF43A0](v13, -1, -1);
    }

    return (*(v3 + 8))(v5, v2);
  }

  return result;
}

uint64_t sub_1BA43F21C(uint64_t a1)
{
  v2 = sub_1BA4A3EA8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v28 - v7;
  v9 = *a1;
  if (*(a1 + 8) == 1)
  {
    v10 = v9;
    sub_1BA4A3DD8();
    v11 = v9;
    v12 = sub_1BA4A3E88();
    v13 = sub_1BA4A6FC8();
    sub_1BA336520(v9);
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v28 = v9;
      v29 = v15;
      *v14 = 136315138;
      v16 = v9;
      sub_1B9FED358();
      v17 = sub_1BA4A6808();
      v19 = sub_1B9F0B82C(v17, v18, &v29);

      *(v14 + 4) = v19;
      _os_log_impl(&dword_1B9F07000, v12, v13, "Received CloudSyncObserver error: %s", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v15);
      MEMORY[0x1BFAF43A0](v15, -1, -1);
      MEMORY[0x1BFAF43A0](v14, -1, -1);

      sub_1BA336520(v9);
    }

    else
    {
      sub_1BA336520(v9);
    }

    return (*(v3 + 8))(v8, v2);
  }

  else
  {
    v20 = v9;
    sub_1BA4A3DD8();
    v21 = v20;
    v22 = sub_1BA4A3E88();
    v23 = sub_1BA4A6FC8();
    sub_1BA336520(v9);
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      *v24 = 138412290;
      *(v24 + 4) = v21;
      *v25 = v9;
      v26 = v21;
      _os_log_impl(&dword_1B9F07000, v22, v23, "Received CloudSyncObserver status: %@", v24, 0xCu);
      sub_1BA444404(v25, sub_1BA074DD4);
      MEMORY[0x1BFAF43A0](v25, -1, -1);
      MEMORY[0x1BFAF43A0](v24, -1, -1);

      sub_1BA336520(v9);
    }

    else
    {
      sub_1BA336520(v9);
    }

    return (*(v3 + 8))(v5, v2);
  }
}

uint64_t sub_1BA43F550@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v36 = a2;
  sub_1BA4444E4(0, &qword_1EDC5F438, MEMORY[0x1E69E6370], MEMORY[0x1E695C000]);
  v32 = *(v3 - 8);
  v33 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v30 = &v30 - v4;
  sub_1BA02F280(0);
  v34 = *(v5 - 8);
  v35 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v31 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F3D7EC(0, &qword_1EBBEA160, type metadata accessor for SummarySharingOnboardingError, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v30 - v8;
  v10 = type metadata accessor for SummarySharingOnboardingError();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = (&v30 - v15);
  sub_1BA02EF20(0);
  v18 = v17;
  v19 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *a1;
  if (*(a1 + 8) == 1)
  {
    v23 = v22;
    SummarySharingOnboardingError.init(error:)(v22, v16);
    sub_1BA44350C(&qword_1EBBE9D20, type metadata accessor for SummarySharingOnboardingError);
    sub_1BA4A4E38();
    sub_1BA44350C(&qword_1EBBEA7D0, sub_1BA02EF20);
    v24 = sub_1BA4A4F98();
    result = (*(v19 + 8))(v21, v18);
  }

  else
  {
    SummarySharingOnboardingError.init(syncStatus:)(v22, v9);
    if ((*(v11 + 48))(v9, 1, v10) == 1)
    {
      sub_1B9F0E040(v9, &qword_1EBBEA160, type metadata accessor for SummarySharingOnboardingError, MEMORY[0x1E69E6720], sub_1B9F3D7EC);
      v37 = 1;
      v26 = v30;
      sub_1BA4A4E78();
      sub_1BA44350C(&qword_1EBBE9D20, type metadata accessor for SummarySharingOnboardingError);
      v27 = v31;
      v28 = v33;
      sub_1BA4A4E48();
      (*(v32 + 8))(v26, v28);
      sub_1BA44350C(&qword_1EBBEA810, sub_1BA02F280);
      v29 = v35;
      v24 = sub_1BA4A4F98();
      result = (*(v34 + 8))(v27, v29);
    }

    else
    {
      sub_1BA2CDF68(v9, v13);
      sub_1BA44446C(v13, v16, type metadata accessor for SummarySharingOnboardingError);
      sub_1BA44350C(&qword_1EBBE9D20, type metadata accessor for SummarySharingOnboardingError);
      sub_1BA4A4E38();
      sub_1BA44350C(&qword_1EBBEA7D0, sub_1BA02EF20);
      v24 = sub_1BA4A4F98();
      (*(v19 + 8))(v21, v18);
      result = sub_1BA444404(v13, type metadata accessor for SummarySharingOnboardingError);
    }
  }

  *v36 = v24;
  return result;
}

uint64_t sub_1BA43FB7C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v32 = a2;
  v3 = type metadata accessor for SummarySharingOnboardingError();
  MEMORY[0x1EEE9AC00](v3);
  v5 = (&v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1BA02EF20(0);
  v30 = *(v6 - 8);
  v31 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA4444E4(0, &qword_1EDC5F438, MEMORY[0x1E69E6370], MEMORY[0x1E695C000]);
  v10 = v9;
  v27 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v27 - v11;
  sub_1BA02F280(0);
  v28 = *(v13 - 8);
  v29 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA4444E4(0, &qword_1EBBEB8F0, MEMORY[0x1E69E6530], MEMORY[0x1E69A3C40]);
  v17 = v16;
  v18 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v27 - v19;
  v21 = *a1;
  if (qword_1EBBE8328 != -1)
  {
    swift_once();
  }

  v22 = __swift_project_value_buffer(v17, qword_1EBBEB818);
  (*(v18 + 16))(v20, v22, v17);
  sub_1BA4A1CA8();
  (*(v18 + 8))(v20, v17);
  if (v21 >= v34)
  {
    *v5 = 0;
    swift_storeEnumTagMultiPayload();
    sub_1BA44350C(&qword_1EBBE9D20, type metadata accessor for SummarySharingOnboardingError);
    sub_1BA4A4E38();
    sub_1BA44350C(&qword_1EBBEA7D0, sub_1BA02EF20);
    v26 = v31;
    v24 = sub_1BA4A4F98();
    result = (*(v30 + 8))(v8, v26);
  }

  else
  {
    v33 = 1;
    sub_1BA4A4E78();
    sub_1BA44350C(&qword_1EBBE9D20, type metadata accessor for SummarySharingOnboardingError);
    sub_1BA4A4E48();
    (*(v27 + 8))(v12, v10);
    sub_1BA44350C(&qword_1EBBEA810, sub_1BA02F280);
    v23 = v29;
    v24 = sub_1BA4A4F98();
    result = (*(v28 + 8))(v15, v23);
  }

  *v32 = v24;
  return result;
}

uint64_t sub_1BA440078(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v46 = a3;
  v8 = sub_1BA4A3EA8();
  v44 = *(v8 - 8);
  v45 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v43 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA02F428();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for SummarySharingOnboardingError();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v40 - v18;
  v21 = MEMORY[0x1EEE9AC00](v20);
  v23 = &v40 - v22;
  v24 = *(a5 + 56);
  v42 = a4;
  v24(a4, a5, v21);
  sub_1BA44446C(a1, v12, sub_1BA02F428);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    v25 = sub_1BA02F428;
    v26 = v12;
  }

  else
  {
    sub_1BA2CDF68(v12, v23);
    v27 = v43;
    sub_1BA4A3DD8();
    sub_1BA44446C(v23, v19, type metadata accessor for SummarySharingOnboardingError);
    v28 = sub_1BA4A3E88();
    v29 = sub_1BA4A6FA8();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v47 = v41;
      *v30 = 136315394;
      v31 = sub_1BA4A85D8();
      v33 = sub_1B9F0B82C(v31, v32, &v47);

      *(v30 + 4) = v33;
      *(v30 + 12) = 2080;
      sub_1BA44446C(v19, v16, type metadata accessor for SummarySharingOnboardingError);
      v34 = sub_1BA4A6828();
      v36 = v35;
      sub_1BA444404(v19, type metadata accessor for SummarySharingOnboardingError);
      v37 = sub_1B9F0B82C(v34, v36, &v47);

      *(v30 + 14) = v37;
      _os_log_impl(&dword_1B9F07000, v28, v29, "[%s] Received error when presenting onboarding flow: %s", v30, 0x16u);
      v38 = v41;
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v38, -1, -1);
      MEMORY[0x1BFAF43A0](v30, -1, -1);
    }

    else
    {

      sub_1BA444404(v19, type metadata accessor for SummarySharingOnboardingError);
    }

    (*(v44 + 8))(v27, v45);
    sub_1BA0C6BA4(v46, 0, 0, 0, 0, MEMORY[0x1E69E7CC0], 0, 0);
    v25 = type metadata accessor for SummarySharingOnboardingError;
    v26 = v23;
  }

  return sub_1BA444404(v26, v25);
}

void sub_1BA4404D8(int a1, int a2, int a3, void *a4, uint64_t a5, void *a6, uint64_t a7, int a8, char a9, uint64_t a10, uint64_t a11)
{
  v38 = a8;
  v39 = a6;
  v40 = a3;
  v41 = a1;
  v42 = a2;
  v13 = a11;
  v14 = sub_1BA4A3EA8();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA4A3DD8();
  v18 = sub_1BA4A3E88();
  v19 = sub_1BA4A6FC8();
  v20 = os_log_type_enabled(v18, v19);
  v43 = a10;
  if (v20)
  {
    v21 = swift_slowAlloc();
    v36 = a7;
    v22 = v21;
    v23 = swift_slowAlloc();
    v37 = a4;
    v24 = v23;
    v44 = v23;
    *v22 = 136315650;
    v25 = sub_1BA4A85D8();
    v27 = sub_1B9F0B82C(v25, v26, &v44);
    v35 = v14;
    v28 = v27;

    *(v22 + 4) = v28;
    v13 = a11;
    *(v22 + 12) = 1024;
    v30 = v41;
    v29 = v42;
    *(v22 + 14) = v41 & 1;
    *(v22 + 18) = 1024;
    *(v22 + 20) = v29 & 1;
    _os_log_impl(&dword_1B9F07000, v18, v19, "[%s] iCloud sync eligible: %{BOOL}d, less than sharing limit: %{BOOL}d", v22, 0x18u);
    __swift_destroy_boxed_opaque_existential_1(v24);
    v31 = v24;
    a4 = v37;
    MEMORY[0x1BFAF43A0](v31, -1, -1);
    v32 = v22;
    a7 = v36;
    MEMORY[0x1BFAF43A0](v32, -1, -1);

    (*(v15 + 8))(v17, v35);
    v33 = v29;
    if ((v30 & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  else
  {

    (*(v15 + 8))(v17, v14);
    v33 = v42;
    if ((v41 & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  if (v33)
  {
    SummarySharingOnboardingPresenting.presentOnboardingVC(on:healthStore:healthExperienceStore:isInfoTile:needsOnboardingSetup:isPresentedViaLink:)(a4, v39, a7, v38 & 1, v40 & 1, a9 & 1, v43, v13);
    return;
  }

LABEL_7:
  static SummarySharingOnboardingErrorHandling.displayGenericError(on:title:completion:)(a4, 0xD00000000000001ALL, 0x80000001BA4FB630, 0, 0);
}

void SummarySharingOnboardingPresenting.presentOnboardingVC(on:healthStore:healthExperienceStore:isInfoTile:needsOnboardingSetup:isPresentedViaLink:)(void *a1, void *a2, uint64_t a3, char a4, char a5, char a6, uint64_t a7, uint64_t a8)
{
  (*(a8 + 16))(&v32, a7, a8);
  if (a6)
  {
    v15 = 2;
    LOBYTE(v32) = 2;
  }

  else
  {
    v15 = v32;
  }

  v16 = (*(a8 + 64))(a2, a7, a8);
  v17 = (*(a8 + 72))(a2, a7, a8);
  v29 = a3;
  v18 = (*(a8 + 88))(a2, a3, a7, a8);
  v19 = (*(a8 + 80))(a7, a8);
  v31[0] = v15;
  type metadata accessor for SummarySharingSelectionFlowContext();
  swift_allocObject();
  v20 = sub_1B9FF2A10(v16, v17, v18, v19, v31, a4 & 1, a4 & 1u & a5);

  if (a5)
  {
    if (a4)
    {
      sub_1B9F0A534(v29, v31);
      v21 = objc_allocWithZone(type metadata accessor for SummarySharingOnboardingSettingUpViewController());

      v22 = a2;
      v23 = sub_1BA2B2378(v31, v22, v20);
      goto LABEL_11;
    }

LABEL_10:
    sub_1B9F0A534(v29, v31);
    v25 = objc_allocWithZone(type metadata accessor for SummarySharingOnboardingInfoViewController());

    v22 = a2;
    v23 = sub_1BA294B44(v31, v22, v20);
    goto LABEL_11;
  }

  *(v20 + 72) = 1;
  if ((a4 & 1) == 0)
  {
    goto LABEL_10;
  }

  sub_1B9F0ADF8(0, &qword_1EDC5E540);
  if (sub_1BA4A7028())
  {
    sub_1B9F0A534(v29, v31);
    v24 = objc_allocWithZone(type metadata accessor for SummarySharingOnboardingContactPickerViewController());

    v22 = a2;
    v23 = sub_1BA202D18(v22, v31, v20);
  }

  else
  {
    sub_1B9F0A534(v29, v31);
    v28 = objc_allocWithZone(type metadata accessor for SummarySharingSystemContactsPickerViewController());

    v22 = a2;
    v23 = sub_1BA1F1518(v22, v31, v20);
  }

LABEL_11:
  v26 = v23;

  v27 = [objc_allocWithZone(MEMORY[0x1E69A4420]) initWithRootViewController_];
  [v27 setModalInPresentation_];
  [a1 presentViewController:v27 animated:1 completion:0];
}

uint64_t sub_1BA440AA8()
{
  ObjectType = swift_getObjectType();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  *(v2 + 24) = ObjectType;
  sub_1BA2CDCF0();
  swift_allocObject();
  v3 = v0;
  return sub_1BA4A4EA8();
}

uint64_t sub_1BA440B30@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1BA2CDE2C();
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_1BA4A3EA8();
  v9 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a1;
  sub_1BA4A3DD8();
  v13 = v12;
  v14 = sub_1BA4A3E88();
  v15 = sub_1BA4A6FA8();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v33 = v5;
    v17 = v16;
    v18 = swift_slowAlloc();
    v32 = v6;
    v19 = v18;
    v37 = v18;
    *v17 = 136315394;
    v20 = sub_1BA4A85D8();
    v22 = sub_1B9F0B82C(v20, v21, &v37);
    v34 = a2;
    v23 = v22;

    *(v17 + 4) = v23;
    *(v17 + 12) = 2080;
    v36 = v12;
    v24 = v12;
    sub_1B9FED358();
    v25 = sub_1BA4A6828();
    v27 = sub_1B9F0B82C(v25, v26, &v37);

    *(v17 + 14) = v27;
    a2 = v34;
    _os_log_impl(&dword_1B9F07000, v14, v15, "[%s] Received error when fetching suggested categories: %s", v17, 0x16u);
    swift_arrayDestroy();
    v28 = v19;
    v6 = v32;
    MEMORY[0x1BFAF43A0](v28, -1, -1);
    v29 = v17;
    v5 = v33;
    MEMORY[0x1BFAF43A0](v29, -1, -1);
  }

  (*(v9 + 8))(v11, v35);
  v37 = &unk_1F37FDB78;
  sub_1BA4444E4(0, &qword_1EBBE9CE8, &type metadata for SummarySharingSelectionSuggestedCategory, MEMORY[0x1E69E62F8]);
  sub_1BA4A4E78();
  sub_1BA44350C(&qword_1EBBF0160, sub_1BA2CDE2C);
  v30 = sub_1BA4A4F98();
  result = (*(v6 + 8))(v8, v5);
  *a2 = v30;
  return result;
}

char *sub_1BA440E84@<X0>(char **a1@<X0>, char **a2@<X8>)
{
  v4 = *a1;

  sub_1BA43ED80(&v4);
  result = v4;
  if (!*(v4 + 2))
  {

    result = &unk_1F37FDBA0;
  }

  *a2 = result;
  return result;
}

void sub_1BA440F00(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v8 = swift_allocObject();
  v8[2] = a3;
  v8[3] = a1;
  v8[4] = a2;
  v8[5] = a4;
  v11[4] = sub_1BA4443F8;
  v11[5] = v8;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 1107296256;
  v11[2] = sub_1BA454240;
  v11[3] = &block_descriptor_122;
  v9 = _Block_copy(v11);
  v10 = a3;

  [v10 fetchSharingEntriesWithCompletion_];
  _Block_release(v9);
}

uint64_t sub_1BA440FF4(char a1, void *a2, void *a3, char **a4, uint64_t a5)
{
  v48 = a5;
  v9 = sub_1BA4A3EA8();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a1 & 1) == 0)
  {
    sub_1BA4A3E58();
    v22 = a2;
    v23 = sub_1BA4A3E88();
    v24 = sub_1BA4A6FA8();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v47 = a4;
      v27 = v26;
      v50 = v26;
      *v25 = 136315394;
      v28 = sub_1BA4A85D8();
      v30 = sub_1B9F0B82C(v28, v29, &v50);

      *(v25 + 4) = v30;
      *(v25 + 12) = 2080;
      v49 = a2;
      v31 = a2;
      sub_1B9F3D7EC(0, &qword_1EDC6B3E0, sub_1B9FED358, MEMORY[0x1E69E6720]);
      v32 = sub_1BA4A6828();
      v34 = sub_1B9F0B82C(v32, v33, &v50);

      *(v25 + 14) = v34;
      _os_log_impl(&dword_1B9F07000, v23, v24, "[%s] Failed to get analytics data for sharing entries: %s", v25, 0x16u);
      swift_arrayDestroy();
      v35 = v27;
      a4 = v47;
      MEMORY[0x1BFAF43A0](v35, -1, -1);
      MEMORY[0x1BFAF43A0](v25, -1, -1);
    }

    (*(v10 + 8))(v13, v9);
    v50 = 0;
    v51 = 2;
    return (a4)(&v50);
  }

  v14 = [a3 sharingEntries];
  sub_1B9F0ADF8(0, &qword_1EBBE9FC0);
  v15 = sub_1BA4A6B08();

  v50 = MEMORY[0x1E69E7CC0];
  if (v15 >> 62)
  {
    goto LABEL_42;
  }

  for (i = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1BA4A7CC8())
  {
    v17 = MEMORY[0x1E69E7CC0];
    v47 = a4;
    if (i)
    {
      v18 = 0;
      a4 = (v15 & 0xFFFFFFFFFFFFFF8);
      while (1)
      {
        if ((v15 & 0xC000000000000001) != 0)
        {
          v19 = MEMORY[0x1BFAF2860](v18, v15);
        }

        else
        {
          if (v18 >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_39;
          }

          v19 = *(v15 + 8 * v18 + 32);
        }

        v20 = v19;
        v21 = v18 + 1;
        if (__OFADD__(v18, 1))
        {
          break;
        }

        if ([v19 direction])
        {
        }

        else
        {
          sub_1BA4A7ED8();
          sub_1BA4A7F18();
          sub_1BA4A7F28();
          sub_1BA4A7EE8();
        }

        ++v18;
        if (v21 == i)
        {
          v36 = v50;
          a4 = v47;
          v17 = MEMORY[0x1E69E7CC0];
          goto LABEL_20;
        }
      }

      __break(1u);
LABEL_39:
      __break(1u);
      goto LABEL_40;
    }

    v36 = MEMORY[0x1E69E7CC0];
LABEL_20:

    v50 = v17;
    v37 = v36 < 0 || (v36 & 0x4000000000000000) != 0;
    if (!v37)
    {
      v15 = *(v36 + 16);
      if (!v15)
      {
        break;
      }

      goto LABEL_25;
    }

    v15 = sub_1BA4A7CC8();
    if (!v15)
    {
      break;
    }

LABEL_25:
    v38 = 0;
    a4 = &selRef_preferredContentSizeCategory;
    while (1)
    {
      if ((v36 & 0xC000000000000001) != 0)
      {
        v39 = MEMORY[0x1BFAF2860](v38, v36);
      }

      else
      {
        if (v38 >= *(v36 + 16))
        {
          goto LABEL_41;
        }

        v39 = *(v36 + 8 * v38 + 32);
      }

      v40 = v39;
      v41 = v38 + 1;
      if (__OFADD__(v38, 1))
      {
        break;
      }

      if ([v39 status] == 1 || !objc_msgSend(v40, sel_status))
      {
        sub_1BA4A7ED8();
        sub_1BA4A7F18();
        sub_1BA4A7F28();
        sub_1BA4A7EE8();
      }

      else
      {
      }

      ++v38;
      if (v41 == v15)
      {
        v42 = v50;
        a4 = v47;
        if ((v50 & 0x8000000000000000) == 0)
        {
          goto LABEL_45;
        }

        goto LABEL_48;
      }
    }

LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    ;
  }

  v42 = MEMORY[0x1E69E7CC0];
  if ((MEMORY[0x1E69E7CC0] & 0x8000000000000000) == 0)
  {
LABEL_45:
    if ((v42 & 0x4000000000000000) == 0)
    {
      v43 = *(v42 + 16);

      if (v37)
      {
        goto LABEL_47;
      }

LABEL_49:
      v44 = *(v36 + 16);
      goto LABEL_50;
    }
  }

LABEL_48:
  v43 = sub_1BA4A7CC8();

  if (!v37)
  {
    goto LABEL_49;
  }

LABEL_47:
  v44 = sub_1BA4A7CC8();
LABEL_50:

  v50 = v43;
  v51 = v44 == 0;
  return (a4)(&v50);
}

void sub_1BA441510(void (*a1)(__int128 *), uint64_t a2, void *a3)
{
  if (HKImproveHealthAndActivityAnalyticsAllowed())
  {
    v6 = swift_allocObject();
    *(v6 + 16) = a1;
    *(v6 + 24) = a2;
    v11 = sub_1BA444464;
    v12 = v6;
    *&v8 = MEMORY[0x1E69E9820];
    *(&v8 + 1) = 1107296256;
    v9 = sub_1BA0B06D4;
    v10 = &block_descriptor_18;
    v7 = _Block_copy(&v8);

    [a3 hk:v7 fetchExistingDemographicInformationWithCompletion:?];
    _Block_release(v7);
  }

  else
  {
    v8 = xmmword_1BA4BC920;
    v9 = 0;
    LOWORD(v10) = 1;
    BYTE2(v10) = 0;
    a1(&v8);
  }
}

uint64_t sub_1BA441628(void *a1, uint64_t (*a2)(void *))
{
  v4 = sub_1BA4A1148();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [a1 dateOfBirthComponents];
  sub_1BA4A1108();

  v10 = [a1 biologicalSexObject];
  v11 = [v10 biologicalSex];

  v12 = sub_1BA3C58A4(v8);
  v14 = v13;
  (*(v5 + 8))(v8, v4);
  v16[0] = v12;
  v16[1] = v14 & 1;
  v16[2] = v11;
  v17 = 256;
  v18 = 0;
  return a2(v16);
}

void sub_1BA44178C(void (*a1)(__int128 *))
{
  v2 = [objc_opt_self() sharedInstance];
  if (v2)
  {
    v3 = v2;
    v4 = [v2 getActivePairedDevice];

    if (v4)
    {
      if ([v4 valueForProperty_])
      {
        sub_1BA4A7BF8();
        swift_unknownObjectRelease();
      }

      else
      {
        v6 = 0u;
        v7 = 0u;
      }

      v8 = v6;
      v9 = v7;
      if (*(&v7 + 1))
      {
        if (swift_dynamicCast())
        {
          v8 = v5;
          LOBYTE(v9) = 0;
          a1(&v8);

          return;
        }
      }

      else
      {

        sub_1B9F0E040(&v8, &qword_1EDC6E300, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720], sub_1BA4444E4);
      }
    }

    v8 = xmmword_1BA4DBFF0;
    LOBYTE(v9) = 0;
    a1(&v8);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1BA441920(uint64_t *a1)
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
        v5 = sub_1BA4A6B98();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_1BA441CC0(v7, v8, a1, v4);
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
    return sub_1BA441A18(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1BA441A18(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = result;
    v7 = *a4;
    if (qword_1EBBE8700 != -1)
    {
      swift_once();
    }

    do
    {
      result = swift_beginAccess();
      v8 = *(v7 + v4);
      v9 = v4;
LABEL_7:
      v10 = *(off_1EBBEFA40 + 2);
      if (v10)
      {
        v11 = 0;
        v12 = v9 - 1;
        v13 = *(v7 + v9 - 1);
        v14 = off_1EBBEFA40 + 32;
        do
        {
          v15 = v14[v11];
          v16 = v15 >> 6;
          if (v15 >> 6 > 1)
          {
            if (v16 == 3)
            {
              if (v15 == 192)
              {
                if (v8 == 192)
                {
                  goto LABEL_36;
                }
              }

              else if (v15 == 193)
              {
                if (v8 == 193)
                {
                  goto LABEL_36;
                }
              }

              else if (v8 == 194)
              {
                goto LABEL_36;
              }
            }

            else if (v14[v11] > 0x81u)
            {
              if (v15 == 130)
              {
                if (v8 == 130)
                {
                  goto LABEL_36;
                }
              }

              else if (v8 == 131)
              {
                goto LABEL_36;
              }
            }

            else if (v15 == 128)
            {
              if (v8 == 128)
              {
                goto LABEL_36;
              }
            }

            else if (v8 == 129)
            {
              goto LABEL_36;
            }
          }

          else if (v16)
          {
            if ((v8 & 0xC0) == 0x40 && ((v15 ^ v8) & 0x3F) == 0)
            {
LABEL_36:
              v17 = 0;
              while (v10 != v17)
              {
                v18 = v14[v17];
                result = v18 >> 6;
                if (v18 >> 6 > 1)
                {
                  if (result == 3)
                  {
                    if (v18 == 192)
                    {
                      if (v13 == 192)
                      {
                        goto LABEL_65;
                      }
                    }

                    else if (v18 == 193)
                    {
                      if (v13 == 193)
                      {
                        goto LABEL_65;
                      }
                    }

                    else if (v13 == 194)
                    {
                      goto LABEL_65;
                    }
                  }

                  else if (v14[v17] > 0x81u)
                  {
                    if (v18 == 130)
                    {
                      if (v13 == 130)
                      {
                        goto LABEL_65;
                      }
                    }

                    else if (v13 == 131)
                    {
                      goto LABEL_65;
                    }
                  }

                  else if (v18 == 128)
                  {
                    if (v13 == 128)
                    {
                      goto LABEL_65;
                    }
                  }

                  else if (v13 == 129)
                  {
                    goto LABEL_65;
                  }
                }

                else if (result)
                {
                  if ((v13 & 0xC0) == 0x40 && ((v18 ^ v13) & 0x3F) == 0)
                  {
LABEL_65:
                    if (v11 >= v17)
                    {
                      goto LABEL_5;
                    }

                    if (v7)
                    {
                      *(v7 + v9) = v13;
                      *(v7 + v12) = v8;
                      --v9;
                      if (v12 != v6)
                      {
                        goto LABEL_7;
                      }

                      goto LABEL_5;
                    }

LABEL_70:
                    __break(1u);
                    return result;
                  }
                }

                else if (v13 <= 0x3F && v18 == v13)
                {
                  goto LABEL_65;
                }

                if (v10 == ++v17)
                {
                  goto LABEL_5;
                }
              }

              __break(1u);
              goto LABEL_70;
            }
          }

          else if (v8 <= 0x3F && v15 == v8)
          {
            goto LABEL_36;
          }

          ++v11;
        }

        while (v10 != v11);
      }

LABEL_5:
      ++v4;
    }

    while (v4 != a2);
  }

  return result;
}

uint64_t sub_1BA441CC0(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v105 = result;
  v7 = a3[1];
  if (v7 < 1)
  {
    v9 = MEMORY[0x1E69E7CC0];
    goto LABEL_215;
  }

  v8 = 0;
  v9 = MEMORY[0x1E69E7CC0];
  v10 = &OBJC_IVAR____TtC18HealthExperienceUI47OBKSummarySharingInvitationTopicsViewController_healthExperienceStore;
LABEL_4:
  v11 = v8++;
  if (v8 >= v7)
  {
    goto LABEL_88;
  }

  v12 = *a3;
  v13 = v11;
  v14 = v8[*a3];
  v104 = v13;
  v15 = *(*a3 + v13);
  if (qword_1EBBE8700 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v16 = off_1EBBEFA40;
  result = sub_1B9FEE484(v14, off_1EBBEFA40);
  if (v17)
  {
    v18 = 0;
  }

  else
  {
    v19 = result;
    result = sub_1B9FEE484(v15, v16);
    v18 = (v20 & 1) == 0 && v19 < result;
  }

  v10 = &OBJC_IVAR____TtC18HealthExperienceUI47OBKSummarySharingInvitationTopicsViewController_healthExperienceStore;
  v11 = v104;
  v21 = (v104 + 2);
  if (v104 + 2 >= v7)
  {
LABEL_75:
    v8 = v21;
    if (v18)
    {
      goto LABEL_78;
    }

    goto LABEL_88;
  }

  v22 = v16[2];
  v23 = (v16 + 4);
  v24 = v8[v12];
LABEL_16:
  v25 = v21[v12];
  if (v22)
  {
    for (i = 0; v22 != i; ++i)
    {
      v27 = v23[i];
      v28 = v27 >> 6;
      if (v27 >> 6 > 1)
      {
        if (v28 == 3)
        {
          if (v27 == 192)
          {
            if (v25 == 192)
            {
              goto LABEL_45;
            }
          }

          else if (v27 == 193)
          {
            if (v25 == 193)
            {
              goto LABEL_45;
            }
          }

          else if (v25 == 194)
          {
            goto LABEL_45;
          }
        }

        else if (v23[i] > 0x81u)
        {
          if (v27 == 130)
          {
            if (v25 == 130)
            {
              goto LABEL_45;
            }
          }

          else if (v25 == 131)
          {
            goto LABEL_45;
          }
        }

        else if (v27 == 128)
        {
          if (v25 == 128)
          {
            goto LABEL_45;
          }
        }

        else if (v25 == 129)
        {
          goto LABEL_45;
        }
      }

      else if (v28)
      {
        if ((v25 & 0xC0) == 0x40 && ((v27 ^ v25) & 0x3F) == 0)
        {
LABEL_45:
          v29 = 0;
          while (1)
          {
            if (v22 == v29)
            {
LABEL_227:
              __break(1u);
LABEL_228:
              __break(1u);
LABEL_229:
              __break(1u);
LABEL_230:
              __break(1u);
LABEL_231:
              __break(1u);
LABEL_232:
              __break(1u);
LABEL_233:
              __break(1u);
LABEL_234:
              __break(1u);
LABEL_235:
              __break(1u);
LABEL_236:
              __break(1u);
LABEL_237:
              __break(1u);
LABEL_238:
              __break(1u);
LABEL_239:
              __break(1u);
LABEL_240:
              __break(1u);
LABEL_241:
              __break(1u);
LABEL_242:
              __break(1u);
LABEL_243:
              __break(1u);
              goto LABEL_244;
            }

            v30 = v23[v29];
            v31 = v30 >> 6;
            if (v30 >> 6 > 1)
            {
              if (v31 == 3)
              {
                if (v30 == 192)
                {
                  if (v24 == 192)
                  {
                    goto LABEL_74;
                  }
                }

                else if (v30 == 193)
                {
                  if (v24 == 193)
                  {
                    goto LABEL_74;
                  }
                }

                else if (v24 == 194)
                {
                  goto LABEL_74;
                }
              }

              else if (v23[v29] > 0x81u)
              {
                if (v30 == 130)
                {
                  if (v24 == 130)
                  {
                    goto LABEL_74;
                  }
                }

                else if (v24 == 131)
                {
                  goto LABEL_74;
                }
              }

              else if (v30 == 128)
              {
                if (v24 == 128)
                {
                  goto LABEL_74;
                }
              }

              else if (v24 == 129)
              {
                goto LABEL_74;
              }
            }

            else if (v31)
            {
              if ((v24 & 0xC0) == 0x40 && ((v30 ^ v24) & 0x3F) == 0)
              {
LABEL_74:
                if (((v18 ^ (i >= v29)) & 1) == 0)
                {
                  goto LABEL_75;
                }

LABEL_15:
                ++v21;
                v24 = v25;
                if (v21 != v7)
                {
                  goto LABEL_16;
                }

                v21 = v7;
                v8 = v7;
                if (v18)
                {
                  goto LABEL_78;
                }

LABEL_88:
                v37 = a3[1];
                if (v8 >= v37)
                {
                  goto LABEL_164;
                }

                if (__OFSUB__(v8, v11))
                {
                  goto LABEL_245;
                }

                if (&v8[-v11] >= a4)
                {
                  goto LABEL_164;
                }

                if (__OFADD__(v11, a4))
                {
                  goto LABEL_247;
                }

                if (v11 + a4 >= v37)
                {
                  v38 = a3[1];
                }

                else
                {
                  v38 = (v11 + a4);
                }

                if (v38 < v11)
                {
LABEL_248:
                  __break(1u);
                  goto LABEL_249;
                }

                if (v8 == v38)
                {
                  goto LABEL_164;
                }

                v39 = *a3;
                if (qword_1EBBE8700 != -1)
                {
                  swift_once();
                }

LABEL_100:
                swift_beginAccess();
                v40 = v8[v39];
                v41 = v8;
LABEL_101:
                v42 = v10[328];
                v43 = *(v42 + 16);
                if (!v43)
                {
                  goto LABEL_99;
                }

                v44 = 0;
                v45 = v41 - 1;
                v46 = v41[v39 - 1];
                v47 = v42 + 32;
                while (1)
                {
                  v48 = *(v47 + v44);
                  v49 = v48 >> 6;
                  if (v48 >> 6 > 1)
                  {
                    if (v49 == 3)
                    {
                      if (v48 == 192)
                      {
                        if (v40 == 192)
                        {
                          goto LABEL_130;
                        }
                      }

                      else if (v48 == 193)
                      {
                        if (v40 == 193)
                        {
                          goto LABEL_130;
                        }
                      }

                      else if (v40 == 194)
                      {
                        goto LABEL_130;
                      }
                    }

                    else if (*(v47 + v44) > 0x81u)
                    {
                      if (v48 == 130)
                      {
                        if (v40 == 130)
                        {
                          goto LABEL_130;
                        }
                      }

                      else if (v40 == 131)
                      {
                        goto LABEL_130;
                      }
                    }

                    else if (v48 == 128)
                    {
                      if (v40 == 128)
                      {
                        goto LABEL_130;
                      }
                    }

                    else if (v40 == 129)
                    {
                      goto LABEL_130;
                    }
                  }

                  else if (v49)
                  {
                    if ((v40 & 0xC0) == 0x40 && ((v48 ^ v40) & 0x3F) == 0)
                    {
LABEL_130:
                      v50 = 0;
                      while (1)
                      {
                        if (v43 == v50)
                        {
                          __break(1u);
                          goto LABEL_227;
                        }

                        v51 = *(v47 + v50);
                        result = v51 >> 6;
                        if (v51 >> 6 > 1)
                        {
                          if (result == 3)
                          {
                            if (v51 == 192)
                            {
                              if (v46 == 192)
                              {
                                goto LABEL_159;
                              }
                            }

                            else if (v51 == 193)
                            {
                              if (v46 == 193)
                              {
                                goto LABEL_159;
                              }
                            }

                            else if (v46 == 194)
                            {
                              goto LABEL_159;
                            }
                          }

                          else if (*(v47 + v50) > 0x81u)
                          {
                            if (v51 == 130)
                            {
                              if (v46 == 130)
                              {
                                goto LABEL_159;
                              }
                            }

                            else if (v46 == 131)
                            {
                              goto LABEL_159;
                            }
                          }

                          else if (v51 == 128)
                          {
                            if (v46 == 128)
                            {
                              goto LABEL_159;
                            }
                          }

                          else if (v46 == 129)
                          {
                            goto LABEL_159;
                          }
                        }

                        else if (result)
                        {
                          if ((v46 & 0xC0) == 0x40 && ((v51 ^ v46) & 0x3F) == 0)
                          {
LABEL_159:
                            if (v44 >= v50)
                            {
                              goto LABEL_99;
                            }

                            if (!v39)
                            {
                              goto LABEL_253;
                            }

                            v41[v39] = v46;
                            v45[v39] = v40;
                            --v41;
                            if (v45 == v11)
                            {
LABEL_99:
                              if (++v8 != v38)
                              {
                                goto LABEL_100;
                              }

                              v8 = v38;
LABEL_164:
                              if (v8 >= v11)
                              {
                                result = swift_isUniquelyReferenced_nonNull_native();
                                if ((result & 1) == 0)
                                {
                                  result = sub_1BA27F470(0, *(v9 + 2) + 1, 1, v9);
                                  v9 = result;
                                }

                                v53 = *(v9 + 2);
                                v52 = *(v9 + 3);
                                v54 = v53 + 1;
                                if (v53 >= v52 >> 1)
                                {
                                  result = sub_1BA27F470((v52 > 1), v53 + 1, 1, v9);
                                  v9 = result;
                                }

                                *(v9 + 2) = v54;
                                v55 = &v9[16 * v53];
                                *(v55 + 4) = v11;
                                *(v55 + 5) = v8;
                                v56 = *v105;
                                if (!*v105)
                                {
                                  goto LABEL_254;
                                }

                                if (v53)
                                {
                                  while (2)
                                  {
                                    v57 = v54 - 1;
                                    if (v54 >= 4)
                                    {
                                      v62 = &v9[16 * v54 + 32];
                                      v63 = *(v62 - 64);
                                      v64 = *(v62 - 56);
                                      v68 = __OFSUB__(v64, v63);
                                      v65 = v64 - v63;
                                      if (v68)
                                      {
                                        goto LABEL_231;
                                      }

                                      v67 = *(v62 - 48);
                                      v66 = *(v62 - 40);
                                      v68 = __OFSUB__(v66, v67);
                                      v60 = v66 - v67;
                                      v61 = v68;
                                      if (v68)
                                      {
                                        goto LABEL_232;
                                      }

                                      v69 = &v9[16 * v54];
                                      v71 = *v69;
                                      v70 = *(v69 + 1);
                                      v68 = __OFSUB__(v70, v71);
                                      v72 = v70 - v71;
                                      if (v68)
                                      {
                                        goto LABEL_234;
                                      }

                                      v68 = __OFADD__(v60, v72);
                                      v73 = v60 + v72;
                                      if (v68)
                                      {
                                        goto LABEL_237;
                                      }

                                      if (v73 >= v65)
                                      {
                                        v91 = &v9[16 * v57 + 32];
                                        v93 = *v91;
                                        v92 = *(v91 + 1);
                                        v68 = __OFSUB__(v92, v93);
                                        v94 = v92 - v93;
                                        if (v68)
                                        {
                                          goto LABEL_241;
                                        }

                                        if (v60 < v94)
                                        {
                                          v57 = v54 - 2;
                                        }
                                      }

                                      else
                                      {
LABEL_184:
                                        if (v61)
                                        {
                                          goto LABEL_233;
                                        }

                                        v74 = &v9[16 * v54];
                                        v76 = *v74;
                                        v75 = *(v74 + 1);
                                        v77 = __OFSUB__(v75, v76);
                                        v78 = v75 - v76;
                                        v79 = v77;
                                        if (v77)
                                        {
                                          goto LABEL_236;
                                        }

                                        v80 = &v9[16 * v57 + 32];
                                        v82 = *v80;
                                        v81 = *(v80 + 1);
                                        v68 = __OFSUB__(v81, v82);
                                        v83 = v81 - v82;
                                        if (v68)
                                        {
                                          goto LABEL_239;
                                        }

                                        if (__OFADD__(v78, v83))
                                        {
                                          goto LABEL_240;
                                        }

                                        if (v78 + v83 < v60)
                                        {
                                          goto LABEL_198;
                                        }

                                        if (v60 < v83)
                                        {
                                          v57 = v54 - 2;
                                        }
                                      }
                                    }

                                    else
                                    {
                                      if (v54 == 3)
                                      {
                                        v58 = *(v9 + 4);
                                        v59 = *(v9 + 5);
                                        v68 = __OFSUB__(v59, v58);
                                        v60 = v59 - v58;
                                        v61 = v68;
                                        goto LABEL_184;
                                      }

                                      v84 = &v9[16 * v54];
                                      v86 = *v84;
                                      v85 = *(v84 + 1);
                                      v68 = __OFSUB__(v85, v86);
                                      v78 = v85 - v86;
                                      v79 = v68;
LABEL_198:
                                      if (v79)
                                      {
                                        goto LABEL_235;
                                      }

                                      v87 = &v9[16 * v57];
                                      v89 = *(v87 + 4);
                                      v88 = *(v87 + 5);
                                      v68 = __OFSUB__(v88, v89);
                                      v90 = v88 - v89;
                                      if (v68)
                                      {
                                        goto LABEL_238;
                                      }

                                      if (v90 < v78)
                                      {
                                        break;
                                      }
                                    }

                                    v95 = v57 - 1;
                                    if (v57 - 1 >= v54)
                                    {
                                      goto LABEL_228;
                                    }

                                    if (!*a3)
                                    {
                                      __break(1u);
                                      goto LABEL_251;
                                    }

                                    v96 = *&v9[16 * v95 + 32];
                                    v97 = *&v9[16 * v57 + 40];
                                    sub_1BA442688((*a3 + v96), (*a3 + *&v9[16 * v57 + 32]), *a3 + v97, v56);
                                    if (v5)
                                    {
                                    }

                                    if (v97 < v96)
                                    {
                                      goto LABEL_229;
                                    }

                                    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                                    {
                                      v9 = sub_1BA442D80(v9);
                                    }

                                    if (v95 >= *(v9 + 2))
                                    {
                                      goto LABEL_230;
                                    }

                                    v98 = &v9[16 * v95];
                                    *(v98 + 4) = v96;
                                    *(v98 + 5) = v97;
                                    result = sub_1BA442CF4(v57);
                                    v54 = *(v9 + 2);
                                    if (v54 <= 1)
                                    {
                                      break;
                                    }

                                    continue;
                                  }
                                }

                                v7 = a3[1];
                                v10 = &OBJC_IVAR____TtC18HealthExperienceUI47OBKSummarySharingInvitationTopicsViewController_healthExperienceStore;
                                if (v8 < v7)
                                {
                                  goto LABEL_4;
                                }

LABEL_215:
                                v8 = *v105;
                                if (!*v105)
                                {
                                  goto LABEL_255;
                                }

                                result = swift_isUniquelyReferenced_nonNull_native();
                                if (result)
                                {
LABEL_217:
                                  v99 = *(v9 + 2);
                                  if (v99 >= 2)
                                  {
                                    while (*a3)
                                    {
                                      v100 = *&v9[16 * v99];
                                      v101 = *&v9[16 * v99 + 24];
                                      sub_1BA442688((*a3 + v100), (*a3 + *&v9[16 * v99 + 16]), *a3 + v101, v8);
                                      if (v5)
                                      {
                                      }

                                      if (v101 < v100)
                                      {
                                        goto LABEL_242;
                                      }

                                      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                                      {
                                        v9 = sub_1BA442D80(v9);
                                      }

                                      if (v99 - 2 >= *(v9 + 2))
                                      {
                                        goto LABEL_243;
                                      }

                                      v102 = &v9[16 * v99];
                                      *v102 = v100;
                                      *(v102 + 1) = v101;
                                      result = sub_1BA442CF4(v99 - 1);
                                      v99 = *(v9 + 2);
                                      if (v99 <= 1)
                                      {
                                      }
                                    }

                                    goto LABEL_252;
                                  }
                                }

LABEL_249:
                                result = sub_1BA442D80(v9);
                                v9 = result;
                                goto LABEL_217;
                              }

LABEL_244:
                              __break(1u);
LABEL_245:
                              __break(1u);
LABEL_246:
                              __break(1u);
LABEL_247:
                              __break(1u);
                              goto LABEL_248;
                            }

                            goto LABEL_101;
                          }
                        }

                        else if (v46 <= 0x3F && v51 == v46)
                        {
                          goto LABEL_159;
                        }

                        if (v43 == ++v50)
                        {
                          goto LABEL_99;
                        }
                      }
                    }
                  }

                  else if (v40 <= 0x3F && v48 == v40)
                  {
                    goto LABEL_130;
                  }

                  if (v43 == ++v44)
                  {
                    goto LABEL_99;
                  }
                }
              }
            }

            else if (v24 <= 0x3F && v30 == v24)
            {
              goto LABEL_74;
            }

            if (v22 == ++v29)
            {
              goto LABEL_14;
            }
          }
        }
      }

      else if (v25 <= 0x3F && v27 == v25)
      {
        goto LABEL_45;
      }
    }
  }

LABEL_14:
  if (!v18)
  {
    goto LABEL_15;
  }

LABEL_78:
  if (v21 < v104)
  {
    goto LABEL_246;
  }

  if (v104 >= v21)
  {
LABEL_87:
    v8 = v21;
    goto LABEL_88;
  }

  v32 = v21 - 1;
  v33 = v104;
  while (1)
  {
    if (v33 == v32)
    {
      goto LABEL_82;
    }

    v36 = *a3;
    if (!*a3)
    {
      break;
    }

    v34 = v33[v36];
    v33[v36] = v32[v36];
    v32[v36] = v34;
LABEL_82:
    if (++v33 >= v32--)
    {
      goto LABEL_87;
    }
  }

LABEL_251:
  __break(1u);
LABEL_252:
  __break(1u);
LABEL_253:
  __break(1u);
LABEL_254:
  __break(1u);
LABEL_255:
  __break(1u);
  return result;
}
uint64_t sub_1BA171A28(char *__dst, char *__src, unint64_t a3, char *a4)
{
  v5 = a4;
  v6 = a3;
  v7 = __src;
  v8 = __dst;
  v9 = __src - __dst;
  v10 = (__src - __dst) / 40;
  v11 = a3 - __src;
  v12 = (a3 - __src) / 40;
  if (v10 >= v12)
  {
    if (a4 != __src || &__src[40 * v12] <= a4)
    {
      memmove(a4, __src, 40 * v12);
    }

    v13 = v5 + 40 * v12;
    if (v11 < 40 || v7 <= v8)
    {
LABEL_43:
      v20 = v7;
      goto LABEL_44;
    }

    v21 = -v5;
    v40 = -v5;
    while (1)
    {
      v20 = v7 - 40;
      v22 = v13 - 40;
      v23 = v21 + v13;
      v6 -= 40;
      while (1)
      {
        sub_1B9F0A534(v22, v39);
        sub_1B9F0A534((v7 - 40), v38);
        v26 = sub_1BA16D14C(v39, v38);
        if (v4)
        {
          __swift_destroy_boxed_opaque_existential_1(v38);
          __swift_destroy_boxed_opaque_existential_1(v39);
          v35 = v23 / 40;
          if (v7 >= v5 && v7 < v5 + 40 * v35 && v7 == v5)
          {
            return 1;
          }

          v33 = 40 * v35;
          v34 = v7;
          goto LABEL_48;
        }

        v27 = v26;
        __swift_destroy_boxed_opaque_existential_1(v38);
        __swift_destroy_boxed_opaque_existential_1(v39);
        if (v27)
        {
          break;
        }

        if (v6 + 40 != v22 + 40)
        {
          v28 = *v22;
          v29 = *(v22 + 16);
          *(v6 + 32) = *(v22 + 32);
          *v6 = v28;
          *(v6 + 16) = v29;
        }

        v24 = v22 - 40;
        v23 -= 40;
        v6 -= 40;
        v25 = v22 > v5;
        v22 -= 40;
        if (!v25)
        {
          v13 = v24 + 40;
          goto LABEL_43;
        }
      }

      if ((v6 + 40) != v7)
      {
        v30 = *v20;
        v31 = *(v7 - 24);
        *(v6 + 32) = *(v7 - 1);
        *v6 = v30;
        *(v6 + 16) = v31;
      }

      v13 = v22 + 40;
      if (v22 + 40 > v5)
      {
        v7 -= 40;
        v21 = v40;
        if (v20 > v8)
        {
          continue;
        }
      }

      v13 = v22 + 40;
      goto LABEL_44;
    }
  }

  if (a4 != __dst || &__dst[40 * v10] <= a4)
  {
    memmove(a4, __dst, 40 * v10);
  }

  v13 = v5 + 40 * v10;
  if (v9 < 40 || v7 >= v6)
  {
LABEL_16:
    v20 = v8;
LABEL_44:
    v36 = (v13 - v5) / 40;
    if (v20 >= v5 && v20 < v5 + 40 * v36 && v20 == v5)
    {
      return 1;
    }

    v33 = 40 * v36;
    v34 = v20;
LABEL_48:
    memmove(v34, v5, v33);
    return 1;
  }

  while (1)
  {
    sub_1B9F0A534(v7, v39);
    sub_1B9F0A534(v5, v38);
    v14 = sub_1BA16D14C(v39, v38);
    if (v4)
    {
      break;
    }

    v15 = v14;
    __swift_destroy_boxed_opaque_existential_1(v38);
    __swift_destroy_boxed_opaque_existential_1(v39);
    if (!v15)
    {
      v16 = v5;
      v17 = v8 == v5;
      v5 += 40;
      if (v17)
      {
        goto LABEL_14;
      }

LABEL_13:
      v18 = *v16;
      v19 = *(v16 + 1);
      *(v8 + 4) = *(v16 + 4);
      *v8 = v18;
      *(v8 + 1) = v19;
      goto LABEL_14;
    }

    v16 = v7;
    v17 = v8 == v7;
    v7 += 40;
    if (!v17)
    {
      goto LABEL_13;
    }

LABEL_14:
    v8 += 40;
    if (v5 >= v13 || v7 >= v6)
    {
      goto LABEL_16;
    }
  }

  __swift_destroy_boxed_opaque_existential_1(v38);
  __swift_destroy_boxed_opaque_existential_1(v39);
  v32 = (v13 - v5) / 40;
  if (v8 < v5 || v8 >= v5 + 40 * v32 || v8 != v5)
  {
    v33 = 40 * v32;
    v34 = v8;
    goto LABEL_48;
  }

  return 1;
}

uint64_t sub_1BA171DC0@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, char a5@<W4>, void *a6@<X8>)
{
  v6 = a1[1];
  v8[0] = *a1;
  v8[1] = v6;
  v8[2] = a1[2];
  return sub_1BA170094(v8, a2, a3, *a4, a5, sub_1BA172B20, a6);
}

void *sub_1BA171E0C()
{
  sub_1BA170230(0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v21 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA4A27B8();
  v3 = MEMORY[0x1BFAED110]();
  sub_1B9F0CA3C(0, &qword_1EDC6B460, MEMORY[0x1E69A3C08], MEMORY[0x1E69E6F90]);
  v4 = sub_1BA4A1C68();
  v5 = *(v4 - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = swift_allocObject();
  v21 = xmmword_1BA4B5480;
  *(v7 + 16) = xmmword_1BA4B5480;
  (*(v5 + 104))(v7 + v6, *MEMORY[0x1E69A3B90], v4);
  sub_1BA4A21D8();
  v8 = sub_1BA4A0FA8();
  (*(*(v8 - 8) + 56))(v2, 1, 1, v8);
  v9 = MEMORY[0x1E69E6F90];
  sub_1B9F1C0E4(0, &qword_1EDC6B450, MEMORY[0x1E69A3C58], MEMORY[0x1E69E6F90]);
  v10 = swift_allocObject();
  *(v10 + 16) = v21;
  *(v10 + 32) = sub_1BA4A1D78();
  v11 = sub_1BA4A25F8();

  sub_1BA172980(v2, sub_1BA170230);
  [v3 setPredicate_];

  sub_1B9F1C0E4(0, &qword_1EDC6B400, MEMORY[0x1E69E7C98] + 8, v9);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1BA4B7510;
  v13 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  v14 = sub_1BA4A6758();
  v15 = [v13 initWithKey:v14 ascending:1];

  *(v12 + 32) = v15;
  v16 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  v17 = sub_1BA4A6758();
  v18 = [v16 initWithKey:v17 ascending:1 selector:sel_localizedStandardCompare_];

  *(v12 + 40) = v18;
  sub_1B9F0ADF8(0, &qword_1EDC6E3E0);
  v19 = sub_1BA4A6AE8();

  [v3 setSortDescriptors_];

  return v3;
}

uint64_t sub_1BA1721C4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1BA17220C(uint64_t a1, uint64_t *a2, unint64_t a3)
{
  v7 = *(type metadata accessor for SummarySharingSelectionFlow(0) - 8);
  v8 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v9 = *(v3 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1BA16B5E4(a1, a2, a3, v3 + v8, v9);
}

void sub_1BA1722CC()
{
  if (!qword_1EBBECED8)
  {
    sub_1B9F126E0();
    type metadata accessor for SummarySharingSelectionContextDelegate();
    v0 = type metadata accessor for MappedDataSourceWithFeedItemsAndContext();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBBECED8);
    }
  }
}

uint64_t sub_1BA17233C(uint64_t a1, uint64_t *a2)
{
  v4 = *(v2 + 16);
  v5 = *(v2 + 32);
  v9 = *a2;
  v6 = *(v5 + 24);

  v7 = v4(a1, &v9, v6);

  return v7;
}

uint64_t sub_1BA1723B8@<X0>(_OWORD *a1@<X0>, void *a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v5 = *(v2 + 32);
  v6 = *(v2 + 40);
  v7 = a1[1];
  v9[0] = *a1;
  v9[1] = v7;
  v9[2] = a1[2];
  return sub_1BA170094(v9, v3, v4, *v5, v6, sub_1BA172B20, a2);
}

double sub_1BA172410@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 16);
  v8[0] = *a1;
  v8[1] = v6;
  v9 = v4;
  v10 = v5;
  *&result = sub_1BA16C490(v8, v3, a2).n128_u64[0];
  return result;
}

void sub_1BA172450(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
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

unint64_t sub_1BA1724E4()
{
  result = qword_1EBBECEE0;
  if (!qword_1EBBECEE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBECEE0);
  }

  return result;
}

uint64_t sub_1BA172650(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1BA1726C8(unint64_t result, _BYTE *a2, uint64_t a3, const void *a4)
{
  v5 = &a2[-result];
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_18;
  }

  v8 = a2;
  v9 = *v4;
  v10 = (v9 + 32 + 80 * result);
  result = swift_arrayDestroy();
  v11 = __OFSUB__(a3, v5);
  v12 = a3 - v5;
  if (v11)
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v12)
  {
    goto LABEL_13;
  }

  v13 = *(v9 + 16);
  v11 = __OFSUB__(v13, v8);
  v14 = v13 - v8;
  if (v11)
  {
    goto LABEL_19;
  }

  result = v10 + 80 * a3;
  a2 = (v9 + 32 + 80 * v8);
  if (result != a2 || result >= &a2[80 * v14])
  {
    result = memmove(result, a2, 80 * v14);
  }

  v16 = *(v9 + 16);
  v11 = __OFADD__(v16, v12);
  v17 = v16 + v12;
  if (v11)
  {
    goto LABEL_20;
  }

  *(v9 + 16) = v17;
LABEL_13:
  if (a3 <= 0)
  {
    return result;
  }

  memmove(v10, a4, 0x50uLL);
  a2 = v18;
  result = a4;
  if (a3 != 1)
  {
LABEL_21:
    result = sub_1BA172A98(result, a2);
    __break(1u);
    return result;
  }

  return sub_1BA172A98(a4, v18);
}

unint64_t sub_1BA1727D4(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_17;
  }

  v11 = *v5;
  v12 = (v11 + 32 + 16 * result);
  result = swift_arrayDestroy();
  v13 = __OFSUB__(a3, v6);
  v14 = a3 - v6;
  if (v13)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v14)
  {
    v15 = *(v11 + 16);
    v13 = __OFSUB__(v15, a2);
    v16 = v15 - a2;
    if (!v13)
    {
      result = &v12[2 * a3];
      v17 = (v11 + 32 + 16 * a2);
      if (result != v17 || result >= v17 + 16 * v16)
      {
        result = memmove(result, v17, 16 * v16);
      }

      v19 = *(v11 + 16);
      v13 = __OFADD__(v19, v14);
      v20 = v19 + v14;
      if (!v13)
      {
        *(v11 + 16) = v20;
        goto LABEL_13;
      }

LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
      return result;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_13:
  if (a3 > 0)
  {
    *v12 = a4;
    v12[1] = a5;

    if (a3 != 1)
    {
      goto LABEL_20;
    }
  }

  return result;
}

void sub_1BA1728EC()
{
  if (!qword_1EBBECEF8)
  {
    v0 = sub_1BA4A6688();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBBECEF8);
    }
  }
}

uint64_t sub_1BA172980(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1BA1729E0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t sub_1BA172A44@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(v2 + 16);
  v6 = **(v2 + 32);
  result = v4(a1, &v6);
  *a2 = result;
  return result;
}

uint64_t sub_1BA172A98(uint64_t a1, uint64_t a2)
{
  sub_1B9F1C0E4(0, &qword_1EBBECF08, &type metadata for ConfirmDetailsSection.Row, MEMORY[0x1E69E6BC0]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_1BA172B38()
{
  v1 = [*v0 sampleType];

  return v1;
}

void sub_1BA172B88(uint64_t a1, uint64_t a2, SEL *a3)
{
  v4 = [*v3 *a3];
  sub_1BA4A16F8();
}

uint64_t sub_1BA172BE4()
{
  v1 = [*v0 metadata];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1BA4A6628();

  return v3;
}

id sub_1BA172C54()
{
  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (result)
  {
    return [result value];
  }

  return result;
}

id sub_1BA172CAC()
{
  v1 = *v0;
  v2 = *v0;
  return v1;
}

id sub_1BA172CD4()
{
  sub_1B9F0ADF8(0, &qword_1EDC5E570);
  v0 = [swift_getObjCClassFromMetadata() electrocardiogramType];

  return v0;
}

void sub_1BA172D3C(uint64_t a1, uint64_t a2, SEL *a3)
{
  v5 = [*v3 dateInterval];
  if (v5)
  {
    v6 = v5;
    [v5 *a3];

    v7 = HKDecodeDateForValue();
    sub_1BA4A16F8();
  }

  else
  {
    __break(1u);
  }
}

unint64_t sub_1BA172DE8()
{
  v1 = [v0 metadataDictionary];
  if (!v1)
  {
    return sub_1B9FDB798(MEMORY[0x1E69E7CC0]);
  }

  v2 = v1;
  v3 = [v1 keyValuePairs];
  if (v3)
  {
    v4 = v3;
    sub_1B9F0ADF8(0, &qword_1EDC5E270);
    sub_1BA4A6AF8();
    v5 = sub_1B9FDB798(MEMORY[0x1E69E7CC0]);
  }

  else
  {
    v5 = sub_1B9FDB798(MEMORY[0x1E69E7CC0]);
  }

  return v5;
}

id sub_1BA1731DC()
{
  v1 = *v0;
  sub_1B9F0ADF8(0, &qword_1EDC5E570);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [v1 dataType];
  v4 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithLongLong_];
  v5 = [ObjCClassFromMetadata dataTypeWithNumber_];

  return v5;
}

void sub_1BA173290(uint64_t a1, uint64_t a2, SEL *a3)
{
  [*v3 *a3];
  v4 = HKDecodeDateForValue();
  sub_1BA4A16F8();
}

uint64_t DataTypeDetailConfiguration.FeatureStatusComponent.init(hkType:container:)@<X0>(uint64_t result@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  *a3 = result;
  *(a3 + 8) = v3;
  return result;
}

uint64_t DataTypeDetailConfiguration.FeatureStatusComponent.makeDataSource(context:)(uint64_t a1)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = *(a1 + 48);
  v6 = *(a1 + 40);
  v7 = sub_1BA4A6F38();
  if (v5 == 1 && (v8 = sub_1BA4A1D78(), v9 = sub_1BA4A1D68(), v8, (v9 & 1) != 0))
  {
    __swift_project_boxed_opaque_existential_1(a1, *(a1 + 24));
    v10 = sub_1BA4A1B68();
    sub_1B9F0A534(a1 + 64, v18);
    v17 = v4;
    type metadata accessor for DataTypeDetailFeatureStatusDataSource();
    swift_allocObject();
    v11 = DataTypeDetailFeatureStatusDataSource.init(healthStore:pinnedContentManager:managedObjectContext:hkType:container:)(v6, v18, v10, v3, &v17);

    sub_1BA17354C();
    v12 = swift_allocObject();
    v13 = *(v11 + OBJC_IVAR____TtC18HealthExperienceUI27CompoundSectionedDataSource_identifier + 8);
    *(v12 + 16) = *(v11 + OBJC_IVAR____TtC18HealthExperienceUI27CompoundSectionedDataSource_identifier);
    *(v12 + 24) = v13;
    *(v12 + 32) = v11;
    *(v12 + 40) = 0;
  }

  else
  {

    type metadata accessor for EmptyDataSource();
    swift_allocObject();
    v14 = EmptyDataSource.init()();
    sub_1BA17354C();
    v12 = swift_allocObject();
    v15 = *(v14 + 24);
    *(v12 + 16) = *(v14 + 16);
    *(v12 + 24) = v15;
    *(v12 + 32) = v14;
    *(v12 + 40) = 1;
  }

  return v12;
}

void sub_1BA17354C()
{
  if (!qword_1EDC66CE0)
  {
    type metadata accessor for DataTypeDetailFeatureStatusDataSource();
    type metadata accessor for EmptyDataSource();
    v0 = type metadata accessor for _ConditionalDataSource();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC66CE0);
    }
  }
}

BOOL static LabelWithIndicatorView.Style.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == 2)
  {
    return v3 == 2;
  }

  if (v2 == 3)
  {
    return v3 == 3;
  }

  if ((v3 & 0xFE) == 2)
  {
    return 0;
  }

  return (v3 ^ v2 ^ 1) & 1;
}

BOOL sub_1BA1736D4(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = v3 == 2;
  v5 = v3 == 3;
  v6 = v3 & 0xFE;
  v7 = v3 ^ v2 ^ 1;
  if (v6 == 2)
  {
    v7 = 0;
  }

  if (v2 == 3)
  {
    v7 = v5;
  }

  if (v2 == 2)
  {
    return v4;
  }

  else
  {
    return v7;
  }
}

uint64_t sub_1BA173718(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (*a2 + OBJC_IVAR____TtC18HealthExperienceUI22LabelWithIndicatorView_baseIdentifier);
  swift_beginAccess();
  *v4 = v3;
  v4[1] = v2;
}

uint64_t sub_1BA173784()
{
  v1 = (v0 + OBJC_IVAR____TtC18HealthExperienceUI22LabelWithIndicatorView_baseIdentifier);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t sub_1BA1737DC(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC18HealthExperienceUI22LabelWithIndicatorView_baseIdentifier);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

id sub_1BA17389C()
{
  v1 = sub_1BA4A3EA8();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC18HealthExperienceUI22LabelWithIndicatorView____lazy_storage___titleLabel;
  v7 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI22LabelWithIndicatorView____lazy_storage___titleLabel);
  if (v7)
  {
    v8 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI22LabelWithIndicatorView____lazy_storage___titleLabel);
  }

  else
  {
    v41 = v3;
    v9 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
    [v9 setTranslatesAutoresizingMaskIntoConstraints_];
    v10 = [objc_opt_self() secondaryLabelColor];
    [v9 setTextColor_];

    v11 = *MEMORY[0x1E69DDD80];
    v12 = objc_opt_self();
    v13 = [v12 preferredFontDescriptorWithTextStyle:v11 compatibleWithTraitCollection:0];
    if (v13)
    {
      v14 = v13;
      v15 = [objc_opt_self() fontWithDescriptor:v13 size:0.0];
    }

    else
    {
      v40 = v0;
      sub_1BA4A3DD8();
      v16 = v11;
      v17 = sub_1BA4A3E88();
      v18 = sub_1BA4A6FB8();

      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        v37 = swift_slowAlloc();
        v38 = swift_slowAlloc();
        v44 = v38;
        *v19 = 136315906;
        v20 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
        v39 = v16;
        v22 = sub_1B9F0B82C(v20, v21, &v44);

        *(v19 + 4) = v22;
        *(v19 + 12) = 2080;
        v42 = 0;
        v43 = 1;
        sub_1BA1508E8();
        v23 = sub_1BA4A6808();
        v25 = sub_1B9F0B82C(v23, v24, &v44);

        *(v19 + 14) = v25;
        *(v19 + 22) = 2080;
        LODWORD(v42) = 0;
        type metadata accessor for SymbolicTraits(0);
        v26 = sub_1BA4A6808();
        v28 = sub_1B9F0B82C(v26, v27, &v44);
        v16 = v39;

        *(v19 + 24) = v28;
        *(v19 + 32) = 2112;
        v29 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
        *(v19 + 34) = v29;
        v30 = v37;
        *v37 = v29;
        _os_log_impl(&dword_1B9F07000, v17, v18, "Unable to create descriptor with textStyle %s, weight %s, traits %s and rounded %@. Using only the text style", v19, 0x2Au);
        sub_1B9F8C6C8(v30);
        MEMORY[0x1BFAF43A0](v30, -1, -1);
        v31 = v38;
        swift_arrayDestroy();
        MEMORY[0x1BFAF43A0](v31, -1, -1);
        MEMORY[0x1BFAF43A0](v19, -1, -1);
      }

      (*(v2 + 8))(v5, v41);
      v0 = v40;
      v32 = [v12 preferredFontDescriptorWithTextStyle_];
      v15 = [objc_opt_self() fontWithDescriptor:v32 size:0.0];
    }

    [v9 setFont_];

    [v9 setAdjustsFontForContentSizeCategory_];
    [v9 setNumberOfLines_];
    [v9 setLineBreakMode_];
    LODWORD(v33) = 1148846080;
    [v9 setContentCompressionResistancePriority:1 forAxis:v33];
    v34 = *(v0 + v6);
    *(v0 + v6) = v9;
    v8 = v9;

    v7 = 0;
  }

  v35 = v7;
  return v8;
}

id sub_1BA173D1C()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI22LabelWithIndicatorView____lazy_storage___indicatorView;
  v2 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI22LabelWithIndicatorView____lazy_storage___indicatorView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI22LabelWithIndicatorView____lazy_storage___indicatorView);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
    [v4 setTranslatesAutoresizingMaskIntoConstraints_];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id LabelWithIndicatorView.init(style:title:contentInsets:)(char *a1, uint64_t a2, uint64_t a3, double a4, double a5, double a6, double a7)
{
  v8 = *a1;
  v9 = &v7[OBJC_IVAR____TtC18HealthExperienceUI22LabelWithIndicatorView_baseIdentifier];
  *v9 = 0;
  v9[1] = 0;
  *&v7[OBJC_IVAR____TtC18HealthExperienceUI22LabelWithIndicatorView____lazy_storage___titleLabel] = 0;
  *&v7[OBJC_IVAR____TtC18HealthExperienceUI22LabelWithIndicatorView____lazy_storage___indicatorView] = 0;
  *&v7[OBJC_IVAR____TtC18HealthExperienceUI22LabelWithIndicatorView_indicatorViewWidthConstraint] = 0;
  *&v7[OBJC_IVAR____TtC18HealthExperienceUI22LabelWithIndicatorView_indicatorViewTrailingConstraint] = 0;
  *&v7[OBJC_IVAR____TtC18HealthExperienceUI22LabelWithIndicatorView_titleLabelLeadingAnchor] = 0;
  v7[OBJC_IVAR____TtC18HealthExperienceUI22LabelWithIndicatorView_style] = v8;
  v10 = &v7[OBJC_IVAR____TtC18HealthExperienceUI22LabelWithIndicatorView_title];
  *v10 = a2;
  v10[1] = a3;
  v11 = &v7[OBJC_IVAR____TtC18HealthExperienceUI22LabelWithIndicatorView_contentInsets];
  *v11 = a4;
  v11[1] = a5;
  v11[2] = a6;
  v11[3] = a7;
  v14.receiver = v7;
  v14.super_class = type metadata accessor for LabelWithIndicatorView();
  v12 = objc_msgSendSuper2(&v14, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  sub_1BA17404C();

  return v12;
}

void sub_1BA173EE0()
{
  v7.receiver = v0;
  v7.super_class = type metadata accessor for LabelWithIndicatorView();
  objc_msgSendSuper2(&v7, sel_layoutSubviews);
  v1 = sub_1BA173D1C();
  [*&v0[OBJC_IVAR____TtC18HealthExperienceUI22LabelWithIndicatorView____lazy_storage___indicatorView] bounds];
  v2 = CGRectGetWidth(v8) * 0.5;
  v3 = *MEMORY[0x1E69796E8];
  v4 = [v1 layer];
  [v4 setCornerCurve_];

  v5 = [v1 layer];
  [v5 setCornerRadius_];

  v6 = [v1 layer];
  [v6 setMaskedCorners_];

  [v1 setClipsToBounds_];
}

void sub_1BA17404C()
{
  v1 = v0;
  v2 = sub_1BA4A3EA8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1BA173D1C();
  [v1 addSubview_];

  v7 = sub_1BA17389C();
  [v1 addSubview_];

  v48 = MEMORY[0x1E69E7CC0];
  sub_1BA1746B0();
  sub_1B9F73B50(v8);
  sub_1BA174A38();
  sub_1B9F73B50(v9);
  v10 = objc_opt_self();
  sub_1B9F0ADF8(0, &qword_1EDC6B570);
  v11 = sub_1BA4A6AE8();

  [v10 activateConstraints_];

  sub_1BA174570();
  v12 = OBJC_IVAR____TtC18HealthExperienceUI22LabelWithIndicatorView____lazy_storage___titleLabel;
  v13 = *&v1[OBJC_IVAR____TtC18HealthExperienceUI22LabelWithIndicatorView____lazy_storage___titleLabel];
  v14 = sub_1BA4A6758();
  [v13 setText_];

  v15 = v1[OBJC_IVAR____TtC18HealthExperienceUI22LabelWithIndicatorView_style];
  v16 = *&v1[v12];
  v17 = *MEMORY[0x1E69DDD80];
  v18 = objc_opt_self();
  v19 = v16;
  v20 = [v18 preferredFontDescriptorWithTextStyle:v17 compatibleWithTraitCollection:0];
  v21 = v20;
  v22 = v15 != 3;
  if (v15 != 3)
  {
    v23 = [v20 fontDescriptorWithSymbolicTraits_];

    v21 = v23;
  }

  if (v21)
  {
    v24 = [objc_opt_self() fontWithDescriptor:v21 size:0.0];
  }

  else
  {
    sub_1BA4A3DD8();
    v25 = v17;
    v26 = sub_1BA4A3E88();
    v27 = sub_1BA4A6FB8();

    if (os_log_type_enabled(v26, v27))
    {
      v44 = 2 * v22;
      v28 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v50 = v46;
      *v28 = 136315906;
      v29 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      v31 = sub_1B9F0B82C(v29, v30, &v50);
      v47 = v3;
      v32 = v31;

      *(v28 + 4) = v32;
      *(v28 + 12) = 2080;
      v48 = 0;
      v49 = 1;
      sub_1BA1508E8();
      v33 = sub_1BA4A6808();
      v35 = sub_1B9F0B82C(v33, v34, &v50);

      *(v28 + 14) = v35;
      *(v28 + 22) = 2080;
      LODWORD(v48) = v44;
      type metadata accessor for SymbolicTraits(0);
      v36 = sub_1BA4A6808();
      v38 = sub_1B9F0B82C(v36, v37, &v50);

      *(v28 + 24) = v38;
      *(v28 + 32) = 2112;
      v39 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
      *(v28 + 34) = v39;
      v40 = v45;
      *v45 = v39;
      _os_log_impl(&dword_1B9F07000, v26, v27, "Unable to create descriptor with textStyle %s, weight %s, traits %s and rounded %@. Using only the text style", v28, 0x2Au);
      sub_1B9F8C6C8(v40);
      MEMORY[0x1BFAF43A0](v40, -1, -1);
      v41 = v46;
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v41, -1, -1);
      MEMORY[0x1BFAF43A0](v28, -1, -1);

      (*(v47 + 8))(v5, v2);
    }

    else
    {

      (*(v3 + 8))(v5, v2);
    }

    v42 = [v18 preferredFontDescriptorWithTextStyle_];
    v24 = [objc_opt_self() fontWithDescriptor:v42 size:0.0];
  }

  [v19 setFont_];
}

void sub_1BA174570()
{
  v1 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI22LabelWithIndicatorView_style);
  if ((v1 & 0xFE) == 2)
  {
    v2 = sub_1BA173D1C();
    [v2 setHidden_];

    v3 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI22LabelWithIndicatorView_indicatorViewWidthConstraint);
    if (v3)
    {
      [v3 setConstant_];
    }

    v4 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI22LabelWithIndicatorView_titleLabelLeadingAnchor);
    if (v4)
    {

      [v4 setConstant_];
    }
  }

  else
  {
    sub_1BA174D2C();
    v5 = sub_1BA173D1C();
    v6 = objc_opt_self();
    v7 = &selRef_systemGreenColor;
    if ((v1 & 1) == 0)
    {
      v7 = &selRef_systemGrayColor;
    }

    v8 = [v6 *v7];
    [v5 setBackgroundColor_];
  }
}

void sub_1BA1746B0()
{
  v1 = sub_1BA173D1C();
  v2 = [v1 widthAnchor];

  v3 = sub_1BA17389C();
  v4 = [v3 font];

  if (!v4)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  [v4 capHeight];
  v6 = v5;

  v7 = [v2 constraintEqualToConstant_];
  v8 = OBJC_IVAR____TtC18HealthExperienceUI22LabelWithIndicatorView_indicatorViewWidthConstraint;
  v9 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI22LabelWithIndicatorView_indicatorViewWidthConstraint];
  *&v0[OBJC_IVAR____TtC18HealthExperienceUI22LabelWithIndicatorView_indicatorViewWidthConstraint] = v7;

  v10 = OBJC_IVAR____TtC18HealthExperienceUI22LabelWithIndicatorView____lazy_storage___titleLabel;
  v11 = [*&v0[OBJC_IVAR____TtC18HealthExperienceUI22LabelWithIndicatorView____lazy_storage___titleLabel] font];
  if (!v11)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v12 = v11;
  [v11 ascender];
  v14 = v13;

  v15 = [*&v0[v10] font];
  if (!v15)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v16 = v15;
  [v15 descender];
  v18 = v17;

  v19 = OBJC_IVAR____TtC18HealthExperienceUI22LabelWithIndicatorView____lazy_storage___indicatorView;
  v20 = [*&v0[OBJC_IVAR____TtC18HealthExperienceUI22LabelWithIndicatorView____lazy_storage___indicatorView] leadingAnchor];
  v21 = [v0 leadingAnchor];
  v22 = [v20 constraintEqualToAnchor_];

  v39[4] = v22;
  v23 = [*&v0[v19] centerYAnchor];
  v24 = [*&v0[v10] firstBaselineAnchor];
  v25 = [v23 constraintEqualToAnchor:v24 constant:(v14 + v18) * -0.5];

  v39[5] = v25;
  v26 = [*&v0[v19] heightAnchor];
  v27 = [*&v0[v10] font];
  if (v27)
  {
    v28 = v27;
    [v27 capHeight];
    v30 = v29;

    v31 = [v26 constraintEqualToConstant_];
    v32 = *&v0[v8];
    v39[6] = v31;
    v39[7] = v32;
    v38 = MEMORY[0x1E69E7CC0];
    v33 = v32;
    v34 = 0;
LABEL_6:
    if (v34 <= 4)
    {
      v35 = 4;
    }

    else
    {
      v35 = v34;
    }

    while (1)
    {
      if (v34 == 4)
      {
        sub_1B9F6A804(0, &qword_1EBBECF58, &qword_1EDC6B570);
        swift_arrayDestroy();
        return;
      }

      if (v35 == v34)
      {
        break;
      }

      v36 = v39[v34++ + 4];
      if (v36)
      {
        v37 = v36;
        MEMORY[0x1BFAF1510]();
        if (*((v38 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v38 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1BA4A6B68();
        }

        sub_1BA4A6BB8();
        goto LABEL_6;
      }
    }

    __break(1u);
    goto LABEL_17;
  }

LABEL_20:
  __break(1u);
}

void sub_1BA174A38()
{
  v1 = sub_1BA17389C();
  v2 = [v1 leadingAnchor];

  v3 = sub_1BA173D1C();
  v4 = [v3 trailingAnchor];

  IsUsingAccessibilityContentSizeCategory = HKUIApplicationIsUsingAccessibilityContentSizeCategory();
  v6 = 4.0;
  if (IsUsingAccessibilityContentSizeCategory)
  {
    v6 = 8.0;
  }

  v7 = [v2 constraintEqualToAnchor:v4 constant:v6];

  v8 = OBJC_IVAR____TtC18HealthExperienceUI22LabelWithIndicatorView_titleLabelLeadingAnchor;
  v9 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI22LabelWithIndicatorView_titleLabelLeadingAnchor];
  *&v0[OBJC_IVAR____TtC18HealthExperienceUI22LabelWithIndicatorView_titleLabelLeadingAnchor] = v7;

  v29 = *&v0[v8];
  v10 = OBJC_IVAR____TtC18HealthExperienceUI22LabelWithIndicatorView____lazy_storage___titleLabel;
  v11 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI22LabelWithIndicatorView____lazy_storage___titleLabel];
  v12 = v29;
  v13 = [v11 trailingAnchor];
  v14 = [v0 trailingAnchor];
  v15 = &v0[OBJC_IVAR____TtC18HealthExperienceUI22LabelWithIndicatorView_contentInsets];
  v16 = [v13 constraintEqualToAnchor:v14 constant:-*&v0[OBJC_IVAR____TtC18HealthExperienceUI22LabelWithIndicatorView_contentInsets + 24]];

  v30 = v16;
  v17 = [*&v0[v10] topAnchor];
  v18 = [v0 topAnchor];
  v19 = [v17 constraintEqualToAnchor:v18 constant:*v15];

  v31 = v19;
  v20 = [*&v0[v10] bottomAnchor];
  v21 = [v0 bottomAnchor];
  v22 = [v20 constraintEqualToAnchor:v21 constant:-v15[2]];

  v23 = 0;
  v32 = v22;
  v27 = MEMORY[0x1E69E7CC0];
LABEL_4:
  if (v23 <= 4)
  {
    v24 = 4;
  }

  else
  {
    v24 = v23;
  }

  while (1)
  {
    if (v23 == 4)
    {
      sub_1B9F6A804(0, &qword_1EBBECF58, &qword_1EDC6B570);
      swift_arrayDestroy();
      return;
    }

    if (v24 == v23)
    {
      break;
    }

    v25 = v28[v23++ + 4];
    if (v25)
    {
      v26 = v25;
      MEMORY[0x1BFAF1510]();
      if (*((v27 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v27 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1BA4A6B68();
      }

      sub_1BA4A6BB8();
      goto LABEL_4;
    }
  }

  __break(1u);
}

void sub_1BA174D2C()
{
  v1 = sub_1BA173D1C();
  [v1 setHidden_];

  v2 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI22LabelWithIndicatorView_indicatorViewWidthConstraint);
  if (v2)
  {
    v3 = v2;
    v4 = sub_1BA17389C();
    v5 = [v4 font];

    if (!v5)
    {
      __break(1u);
      return;
    }

    [v5 capHeight];
    v7 = v6;

    [v3 setConstant_];
  }

  v8 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI22LabelWithIndicatorView_titleLabelLeadingAnchor);
  if (v8)
  {
    v11 = v8;
    IsUsingAccessibilityContentSizeCategory = HKUIApplicationIsUsingAccessibilityContentSizeCategory();
    v10 = 4.0;
    if (IsUsingAccessibilityContentSizeCategory)
    {
      v10 = 8.0;
    }

    [v11 setConstant_];
  }
}

void sub_1BA174E60(uint64_t a1, uint64_t a2)
{
  v5 = &v2[OBJC_IVAR____TtC18HealthExperienceUI22LabelWithIndicatorView_baseIdentifier];
  swift_beginAccess();
  *v5 = a1;
  *(v5 + 1) = a2;

  if (a2)
  {
    v6 = sub_1BA4A6758();
    [v2 setAccessibilityIdentifier_];

    v7 = sub_1BA173D1C();

    MEMORY[0x1BFAF1350](0x74616369646E492ELL, 0xEA0000000000726FLL);
    v8 = sub_1BA4A6758();

    [v7 setAccessibilityIdentifier_];

    v9 = sub_1BA17389C();

    MEMORY[0x1BFAF1350](0x6C6562614C2ELL, 0xE600000000000000);
    v10 = sub_1BA4A6758();

    [v9 setAccessibilityIdentifier_];
  }

  else
  {
    [v2 setAccessibilityIdentifier_];
    v11 = sub_1BA173D1C();
    [v11 setAccessibilityIdentifier_];

    v10 = sub_1BA17389C();
    [v10 setAccessibilityIdentifier_];
  }
}

id LabelWithIndicatorView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id LabelWithIndicatorView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LabelWithIndicatorView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1BA1751D4()
{
  v1 = (*v0 + OBJC_IVAR____TtC18HealthExperienceUI22LabelWithIndicatorView_baseIdentifier);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t sub_1BA175230(uint64_t a1, uint64_t a2)
{
  v5 = (*v2 + OBJC_IVAR____TtC18HealthExperienceUI22LabelWithIndicatorView_baseIdentifier);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

uint64_t getEnumTagSinglePayload for LabelWithIndicatorView.Style(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD)
  {
    v2 = a2 + 3;
    if (a2 + 3 >= 0xFFFF00)
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

    if (v4 > 1)
    {
      if (v4 == 2)
      {
        v5 = *(a1 + 1);
        if (!*(a1 + 1))
        {
          goto LABEL_19;
        }
      }

      else
      {
        v5 = *(a1 + 1);
        if (!v5)
        {
          goto LABEL_19;
        }
      }
    }

    else
    {
      if (!v4)
      {
        goto LABEL_19;
      }

      v5 = a1[1];
      if (!a1[1])
      {
        goto LABEL_19;
      }
    }

    return (*a1 | (v5 << 8)) - 3;
  }

LABEL_19:
  v7 = *a1;
  if (*a1 >= 2u)
  {
    v8 = (v7 & 0xFE) + 2147483646;
    if ((v8 & 0x7FFFFFFE) != 0)
    {
      return (v8 & 0x7FFFFFFE | v7 & 1u) - 1;
    }
  }

  return 0;
}

uint64_t storeEnumTagSinglePayload for LabelWithIndicatorView.Style(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 3;
  if (a3 + 3 >= 0xFFFF00)
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

  if (a3 < 0xFD)
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

void sub_1BA175578()
{
  v1 = (v0 + OBJC_IVAR____TtC18HealthExperienceUI22LabelWithIndicatorView_baseIdentifier);
  *v1 = 0;
  v1[1] = 0;
  *(v0 + OBJC_IVAR____TtC18HealthExperienceUI22LabelWithIndicatorView____lazy_storage___titleLabel) = 0;
  *(v0 + OBJC_IVAR____TtC18HealthExperienceUI22LabelWithIndicatorView____lazy_storage___indicatorView) = 0;
  *(v0 + OBJC_IVAR____TtC18HealthExperienceUI22LabelWithIndicatorView_indicatorViewWidthConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC18HealthExperienceUI22LabelWithIndicatorView_indicatorViewTrailingConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC18HealthExperienceUI22LabelWithIndicatorView_titleLabelLeadingAnchor) = 0;
  sub_1BA4A8018();
  __break(1u);
}

void sub_1BA175668(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t type metadata accessor for CategoryTileBackgroundView()
{
  result = qword_1EBBECF70;
  if (!qword_1EBBECF70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BA17572C()
{
  sub_1BA175668(319, &qword_1EBBECF60, sub_1BA175634, MEMORY[0x1E697DCC0]);
  if (v0 <= 0x3F)
  {
    sub_1BA175814();
    if (v1 <= 0x3F)
    {
      sub_1BA176824(319, &qword_1EDC5EB98, MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1BA175814()
{
  if (!qword_1EBBECF80)
  {
    type metadata accessor for ObservableCellState(255);
    sub_1BA1767DC(&qword_1EDC67D30, type metadata accessor for ObservableCellState);
    v0 = sub_1BA4A5378();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBBECF80);
    }
  }
}

__n128 sub_1BA1758C4@<Q0>(__n128 *a1@<X8>)
{
  v70 = a1;
  v59 = sub_1BA4A6398();
  v58 = *(v59 - 8);
  MEMORY[0x1EEE9AC00](v59);
  v57 = &v54[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v3 = sub_1BA4A59D8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v60 = &v54[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1BA1763AC();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v66 = &v54[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v54[-v10];
  sub_1BA175634(0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v67 = &v54[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v14);
  v65 = &v54[-v15];
  MEMORY[0x1EEE9AC00](v16);
  v68 = &v54[-v17];
  MEMORY[0x1EEE9AC00](v18);
  v72 = &v54[-v19];
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v54[-v21];
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v54[-v24];
  v69 = v1;
  sub_1BA176410(&v54[-v24]);
  v26 = v4[13];
  v63 = *MEMORY[0x1E697FF40];
  v62 = v26;
  v26(v22);
  v61 = v4[7];
  v61(v22, 0, 1, v3);
  v64 = v7;
  v27 = *(v7 + 48);
  sub_1BA1765EC(v25, v11);
  sub_1BA1765EC(v22, &v11[v27]);
  v71 = v4;
  v28 = v4[6];
  if (v28(v11, 1, v3) != 1)
  {
    sub_1BA1765EC(v11, v72);
    v56 = v28;
    if (v28(&v11[v27], 1, v3) != 1)
    {
      v31 = v60;
      (v71[4])(v60, &v11[v27], v3);
      sub_1BA1767DC(&qword_1EBBECFA8, MEMORY[0x1E697FF50]);
      v55 = sub_1BA4A6728();
      v32 = v71[1];
      v32(v31, v3);
      sub_1BA176650(v22, sub_1BA175634);
      sub_1BA176650(v25, sub_1BA175634);
      v32(v72, v3);
      sub_1BA176650(v11, sub_1BA175634);
      v29 = v69;
      v30 = v68;
      v28 = v56;
      if ((v55 & 1) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_8;
    }

    sub_1BA176650(v22, sub_1BA175634);
    sub_1BA176650(v25, sub_1BA175634);
    (v71[1])(v72, v3);
    v28 = v56;
LABEL_6:
    sub_1BA176650(v11, sub_1BA1763AC);
    v30 = v68;
    goto LABEL_10;
  }

  sub_1BA176650(v22, sub_1BA175634);
  sub_1BA176650(v25, sub_1BA175634);
  if (v28(&v11[v27], 1, v3) != 1)
  {
    goto LABEL_6;
  }

  sub_1BA176650(v11, sub_1BA175634);
  v29 = v69;
  v30 = v68;
LABEL_8:
  v33 = *(v29 + *(type metadata accessor for CategoryTileBackgroundView() + 24));
  if (v33)
  {
    sub_1BA176824(0, &qword_1EBBECFB0, MEMORY[0x1E69E6F90]);
    v34 = swift_allocObject();
    *(v34 + 16) = xmmword_1BA4B5460;
    *(v34 + 32) = v33;
    swift_retain_n();
    sub_1BA4A60C8();
    v35 = v57;
    sub_1BA4A6388();
    v36 = sub_1BA4A6068();

    (*(v58 + 8))(v35, v59);
    *(v34 + 40) = v36;
    sub_1BA4A6448();
    sub_1BA4A6458();
    MEMORY[0x1BFAF0DE0](v34);
    sub_1BA4A52F8();
    v73 = v81;
    v74 = v82;
    v75 = v83;
    v76 = 0;
    sub_1BA1766B0();
    sub_1BA176708();
    sub_1B9F7F308();
    sub_1BA4A58E8();

    goto LABEL_21;
  }

LABEL_10:
  sub_1BA176410(v30);
  v37 = v65;
  v62(v65, v63, v3);
  v61(v37, 0, 1, v3);
  v38 = *(v64 + 48);
  v39 = v66;
  sub_1BA1765EC(v30, v66);
  sub_1BA1765EC(v37, &v39[v38]);
  if (v28(v39, 1, v3) == 1)
  {
    sub_1BA176650(v37, sub_1BA175634);
    sub_1BA176650(v30, sub_1BA175634);
    v40 = v28(&v39[v38], 1, v3);
    if (v40 == 1)
    {
      v41 = sub_1BA175634;
    }

    else
    {
      v41 = sub_1BA1763AC;
    }

    if (v40 == 1)
    {
      v42 = -1;
    }

    else
    {
      v42 = 0;
    }
  }

  else
  {
    sub_1BA1765EC(v39, v67);
    if (v28(&v39[v38], 1, v3) == 1)
    {
      sub_1BA176650(v37, sub_1BA175634);
      sub_1BA176650(v30, sub_1BA175634);
      (v71[1])(v67, v3);
      v42 = 0;
      v41 = sub_1BA1763AC;
    }

    else
    {
      v43 = v71;
      v44 = v60;
      (v71[4])(v60, &v39[v38], v3);
      sub_1BA1767DC(&qword_1EBBECFA8, MEMORY[0x1E697FF50]);
      v42 = sub_1BA4A6728();
      v45 = v43[1];
      v45(v44, v3);
      sub_1BA176650(v37, sub_1BA175634);
      sub_1BA176650(v30, sub_1BA175634);
      v45(v67, v3);
      v41 = sub_1BA175634;
    }
  }

  sub_1BA176650(v39, v41);
  type metadata accessor for CategoryTileBackgroundView();
  KeyPath = swift_getKeyPath();
  v77.n128_u8[0] = 0;
  LOBYTE(v73) = v42 & 1;
  type metadata accessor for ObservableCellState(0);
  sub_1BA1767DC(&qword_1EDC67D30, type metadata accessor for ObservableCellState);

  v47 = sub_1BA4A5348();
  v48 = v73;
  v73 = KeyPath;
  *&v74 = v77.n128_u8[0];
  *(&v74 + 1) = v47;
  *&v75 = v49;
  *(&v75 + 1) = v48;
  v76 = 1;
  sub_1BA1766B0();
  sub_1BA176708();
  sub_1B9F7F308();
  sub_1BA4A58E8();
LABEL_21:
  result = v78;
  v51 = v79;
  v52 = v80;
  v53 = v70;
  *v70 = v77;
  v53[1] = result;
  v53[2].n128_u64[0] = v51;
  v53[2].n128_u8[8] = v52;
  return result;
}

void sub_1BA1763AC()
{
  if (!qword_1EBBECF88)
  {
    sub_1BA175634(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EBBECF88);
    }
  }
}

uint64_t sub_1BA176410@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1BA4A5718();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA175668(0, &qword_1EBBECFB8, sub_1BA175634, MEMORY[0x1E697DCB8]);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v13 - v9;
  sub_1BA176878(v2, &v13 - v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_1BA17690C(v10, a1);
  }

  sub_1BA4A6FB8();
  v12 = sub_1BA4A5B28();
  sub_1BA4A3CA8();

  sub_1BA4A5708();
  swift_getAtKeyPath();

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_1BA1765EC(uint64_t a1, uint64_t a2)
{
  sub_1BA175634(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BA176650(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1BA1766B0()
{
  if (!qword_1EBBECF90)
  {
    v0 = sub_1BA4A5418();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBBECF90);
    }
  }
}

unint64_t sub_1BA176708()
{
  result = qword_1EBBECF98;
  if (!qword_1EBBECF98)
  {
    sub_1BA1766B0();
    sub_1BA176788();
    sub_1B9F8A01C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBECF98);
  }

  return result;
}

unint64_t sub_1BA176788()
{
  result = qword_1EBBECFA0;
  if (!qword_1EBBECFA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBECFA0);
  }

  return result;
}

uint64_t sub_1BA1767DC(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1BA176824(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x1E69815C0]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1BA176878(uint64_t a1, uint64_t a2)
{
  sub_1BA175668(0, &qword_1EBBECFB8, sub_1BA175634, MEMORY[0x1E697DCB8]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BA17690C(uint64_t a1, uint64_t a2)
{
  sub_1BA175634(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1BA176970()
{
  result = qword_1EBBECFC0;
  if (!qword_1EBBECFC0)
  {
    sub_1BA1769F0();
    sub_1BA176708();
    sub_1B9F7F308();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBECFC0);
  }

  return result;
}

void sub_1BA1769F0()
{
  if (!qword_1EBBECFC8)
  {
    sub_1BA1766B0();
    v0 = sub_1BA4A58F8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBBECFC8);
    }
  }
}

uint64_t sub_1BA176A6C(uint64_t a1, uint64_t *a2)
{
  sub_1B9F68124(a1, v6);
  v3 = *a2;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI33EmptyHeaderCollectionReusableView_item;
  swift_beginAccess();
  sub_1BA176B88(v6, v3 + v4);
  return swift_endAccess();
}

uint64_t sub_1BA176AD0@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI33EmptyHeaderCollectionReusableView_item;
  swift_beginAccess();
  return sub_1B9F68124(v1 + v3, a1);
}

uint64_t sub_1BA176B28(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI33EmptyHeaderCollectionReusableView_item;
  swift_beginAccess();
  sub_1BA176B88(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_1BA176B88(uint64_t a1, uint64_t a2)
{
  sub_1B9F7B6F8();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

id EmptyHeaderCollectionReusableView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id EmptyHeaderCollectionReusableView.init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = &v4[OBJC_IVAR____TtC18HealthExperienceUI33EmptyHeaderCollectionReusableView_item];
  v10 = type metadata accessor for EmptyHeaderCollectionReusableView();
  *v9 = 0u;
  *(v9 + 1) = 0u;
  *(v9 + 4) = 0;
  v12.receiver = v4;
  v12.super_class = v10;
  return objc_msgSendSuper2(&v12, sel_initWithFrame_, a1, a2, a3, a4);
}

id EmptyHeaderCollectionReusableView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for EmptyHeaderCollectionReusableView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1BA176E8C@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI33EmptyHeaderCollectionReusableView_item;
  swift_beginAccess();
  return sub_1B9F68124(v3 + v4, a1);
}

uint64_t sub_1BA176EE8(uint64_t a1)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI33EmptyHeaderCollectionReusableView_item;
  swift_beginAccess();
  sub_1BA176B88(a1, v3 + v4);
  return swift_endAccess();
}

uint64_t sub_1BA177080(uint64_t a1, uint64_t *a2)
{
  v3 = MEMORY[0x1E69A3348];
  sub_1BA178CF0(a1, v7, &qword_1EDC6E1A0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348], sub_1B9F0CDE8);
  v4 = *a2;
  v5 = OBJC_IVAR____TtC18HealthExperienceUI27DataTypeDetailFavoritesCell_item;
  swift_beginAccess();
  sub_1B9F63E74(v7, v4 + v5);
  swift_endAccess();
  sub_1BA178154();
  return sub_1B9F43F08(v7, &qword_1EDC6E1A0, &qword_1EDC6E1B0, v3, sub_1B9F0CDE8);
}

uint64_t sub_1BA177158@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI27DataTypeDetailFavoritesCell_item;
  swift_beginAccess();
  return sub_1BA178CF0(v1 + v3, a1, &qword_1EDC6E1A0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348], sub_1B9F0CDE8);
}

uint64_t sub_1BA1771DC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI27DataTypeDetailFavoritesCell_item;
  swift_beginAccess();
  sub_1B9F63E74(a1, v1 + v3);
  swift_endAccess();
  sub_1BA178154();
  return sub_1B9F43F08(a1, &qword_1EDC6E1A0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348], sub_1B9F0CDE8);
}

void (*sub_1BA177274(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1BA1772D8;
}

void sub_1BA1772D8(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    sub_1BA178154();
  }
}

void sub_1BA177354(void *a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
}

void (*sub_1BA1773B0(uint64_t *a1))(id **, char)
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
  v5 = OBJC_IVAR____TtC18HealthExperienceUI27DataTypeDetailFavoritesCell_parentViewController;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_1BA0BAB9C;
}

void sub_1BA177448()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI27DataTypeDetailFavoritesCell____lazy_storage___imageForUnpinnedState;
  v2 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI27DataTypeDetailFavoritesCell____lazy_storage___imageForUnpinnedState);
  if (v2)
  {
    goto LABEL_4;
  }

  v3 = [objc_opt_self() configurationWithTextStyle_];
  v4 = sub_1BA4A6758();
  v5 = [objc_opt_self() systemImageNamed:v4 withConfiguration:v3];

  if (v5)
  {
    v6 = *(v0 + v1);
    *(v0 + v1) = v5;
    v5;

    v2 = 0;
LABEL_4:
    v7 = v2;
    return;
  }

  __break(1u);
}

void sub_1BA177544()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI27DataTypeDetailFavoritesCell____lazy_storage___imageForPinnedState;
  v2 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI27DataTypeDetailFavoritesCell____lazy_storage___imageForPinnedState);
  if (v2)
  {
    goto LABEL_4;
  }

  v3 = [objc_opt_self() configurationWithTextStyle_];
  v4 = sub_1BA4A6758();
  v5 = [objc_opt_self() systemImageNamed:v4 withConfiguration:v3];

  if (v5)
  {
    v6 = *(v0 + v1);
    *(v0 + v1) = v5;
    v5;

    v2 = 0;
LABEL_4:
    v7 = v2;
    return;
  }

  __break(1u);
}

id sub_1BA177638()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI27DataTypeDetailFavoritesCell____lazy_storage___accessoryImageView;
  v2 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI27DataTypeDetailFavoritesCell____lazy_storage___accessoryImageView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI27DataTypeDetailFavoritesCell____lazy_storage___accessoryImageView);
  }

  else
  {
    sub_1BA177448();
    v5 = v4;
    v6 = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) initWithImage_];

    v7 = [objc_opt_self() systemYellowColor];
    [v6 setTintColor_];

    v8 = *(v0 + v1);
    *(v0 + v1) = v6;
    v3 = v6;

    v2 = 0;
  }

  v9 = v2;
  return v3;
}

id sub_1BA177704(double a1, double a2, double a3, double a4)
{
  v9 = &v4[OBJC_IVAR____TtC18HealthExperienceUI27DataTypeDetailFavoritesCell_item];
  *v9 = 0u;
  *(v9 + 1) = 0u;
  *(v9 + 4) = 0;
  swift_unknownObjectWeakInit();
  v10 = *MEMORY[0x1E69DDCF8];
  *&v4[OBJC_IVAR____TtC18HealthExperienceUI27DataTypeDetailFavoritesCell_textStyle] = *MEMORY[0x1E69DDCF8];
  *&v4[OBJC_IVAR____TtC18HealthExperienceUI27DataTypeDetailFavoritesCell____lazy_storage___imageForUnpinnedState] = 0;
  *&v4[OBJC_IVAR____TtC18HealthExperienceUI27DataTypeDetailFavoritesCell____lazy_storage___imageForPinnedState] = 0;
  *&v4[OBJC_IVAR____TtC18HealthExperienceUI27DataTypeDetailFavoritesCell____lazy_storage___accessoryImageView] = 0;
  v14.receiver = v4;
  v14.super_class = type metadata accessor for DataTypeDetailFavoritesCell();
  v11 = v10;
  v12 = objc_msgSendSuper2(&v14, sel_initWithFrame_, a1, a2, a3, a4);
  sub_1BA177C68();

  return v12;
}

id sub_1BA177824(void *a1)
{
  v3 = &v1[OBJC_IVAR____TtC18HealthExperienceUI27DataTypeDetailFavoritesCell_item];
  *v3 = 0u;
  *(v3 + 1) = 0u;
  *(v3 + 4) = 0;
  swift_unknownObjectWeakInit();
  v4 = *MEMORY[0x1E69DDCF8];
  *&v1[OBJC_IVAR____TtC18HealthExperienceUI27DataTypeDetailFavoritesCell_textStyle] = *MEMORY[0x1E69DDCF8];
  *&v1[OBJC_IVAR____TtC18HealthExperienceUI27DataTypeDetailFavoritesCell____lazy_storage___imageForUnpinnedState] = 0;
  *&v1[OBJC_IVAR____TtC18HealthExperienceUI27DataTypeDetailFavoritesCell____lazy_storage___imageForPinnedState] = 0;
  *&v1[OBJC_IVAR____TtC18HealthExperienceUI27DataTypeDetailFavoritesCell____lazy_storage___accessoryImageView] = 0;
  v10.receiver = v1;
  v10.super_class = type metadata accessor for DataTypeDetailFavoritesCell();
  v5 = v4;
  v6 = objc_msgSendSuper2(&v10, sel_initWithCoder_, a1);
  v7 = v6;
  if (v6)
  {
    v8 = v6;
    sub_1BA177C68();
  }

  return v7;
}

uint64_t sub_1BA177938()
{
  v1 = v0;
  sub_1BA178C68(0, &qword_1EDC6B770, MEMORY[0x1E69DC0D8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v15[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v15[-v6];
  v8 = sub_1BA4A40A8();
  v9 = type metadata accessor for DataTypeDetailFavoritesCell();
  v16.receiver = v1;
  v16.super_class = v9;
  objc_msgSendSuper2(&v16, sel__bridgedUpdateConfigurationUsingState_, v8);

  MEMORY[0x1BFAF1F00]();
  v10 = sub_1BA4A4168();
  if ((*(*(v10 - 8) + 48))(v7, 1, v10))
  {
    v11 = MEMORY[0x1E69DC0D8];
    v12 = MEMORY[0x1E69E6720];
    sub_1BA178CF0(v7, v4, &qword_1EDC6B770, MEMORY[0x1E69DC0D8], MEMORY[0x1E69E6720], sub_1BA178C68);
    MEMORY[0x1BFAF1F10](v4);
    return sub_1B9F43F08(v7, &qword_1EDC6B770, v11, v12, sub_1BA178C68);
  }

  else
  {
    v14 = [v1 traitCollection];
    sub_1B9F3AEE8();
    sub_1BA4A7358();

    v15[14] = v15[15];
    Presentation.cellBackgroundColor(for:)();
    sub_1BA4A4118();
    return MEMORY[0x1BFAF1F10](v7);
  }
}

void sub_1BA177C68()
{
  v1 = v0;
  v2 = MEMORY[0x1E69E6720];
  sub_1BA178C68(0, &qword_1EDC6B780, MEMORY[0x1E69DBF38], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v27 = &v24 - v4;
  v25 = sub_1BA4A3FD8();
  v5 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_1BA4A3F98();
  v8 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA178C68(0, &qword_1EDC6B770, MEMORY[0x1E69DC0D8], v2);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v24 - v12;
  sub_1BA4A4158();
  v14 = [objc_opt_self() tertiarySystemBackgroundColor];
  sub_1BA4A4118();
  v15 = sub_1BA4A4168();
  (*(*(v15 - 8) + 56))(v13, 0, 1, v15);
  MEMORY[0x1BFAF1F10](v13);
  sub_1BA178C68(0, &qword_1EDC6B430, MEMORY[0x1E69DBF68], MEMORY[0x1E69E6F90]);
  sub_1BA4A3FE8();
  *(swift_allocObject() + 16) = xmmword_1BA4B5480;
  sub_1BA177638();
  sub_1B9FD7EE0();
  v17 = &v7[*(v16 + 48)];
  v18 = *MEMORY[0x1E69DBF28];
  v19 = sub_1BA4A3F18();
  (*(*(v19 - 8) + 104))(v7, v18, v19);
  *v17 = sub_1B9FF87F0;
  v17[1] = 0;
  (*(v5 + 104))(v7, *MEMORY[0x1E69DBF60], v25);
  v20 = sub_1BA4A3F48();
  (*(*(v20 - 8) + 56))(v27, 1, 1, v20);
  sub_1BA4A3F88();
  sub_1BA4A3EE8();
  (*(v8 + 8))(v10, v26);
  v21 = v1;
  sub_1BA4A75F8();
  v28 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  v29 = v22;

  MEMORY[0x1BFAF1350](0x7469726F7661462ELL, 0xEF656C67676F5465);

  v23 = sub_1BA4A6758();

  [v21 setAccessibilityIdentifier_];
}

void sub_1BA178154()
{
  v1 = v0;
  v2 = sub_1BA4A4428();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0) + 8;
  sub_1B9FEB5F0();
  MEMORY[0x1BFAF2040]();
  sub_1B9F6B774(*&v0[OBJC_IVAR____TtC18HealthExperienceUI27DataTypeDetailFavoritesCell_textStyle], *MEMORY[0x1E69DB978], 0, 0x8000, 0, 0, 1);
  v6 = sub_1BA4A4238();
  sub_1BA4A41E8();
  v6(&v28, 0);
  v7 = OBJC_IVAR____TtC18HealthExperienceUI27DataTypeDetailFavoritesCell_item;
  swift_beginAccess();
  sub_1BA178CF0(v1 + v7, v21, &qword_1EDC6E1A0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348], sub_1B9F0CDE8);
  if (!v21[3])
  {
    sub_1B9F43F08(v21, &qword_1EDC6E1A0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348], sub_1B9F0CDE8);
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0;
    goto LABEL_12;
  }

  sub_1B9F0D950(0, &qword_1EDC6E1B0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v27 = 0;
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v22 = 0u;
    goto LABEL_12;
  }

  if (!*(&v23 + 1))
  {
LABEL_12:
    sub_1BA0D8B74(&v22);
    [v1 setAccessibilityIdentifier_];
LABEL_13:
    *(&v29 + 1) = v2;
    *&v30 = MEMORY[0x1E69DC110];
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v28);
    (*(v3 + 16))(boxed_opaque_existential_1, v5, v2);
    MEMORY[0x1BFAF1EF0](&v28);
    (*(v3 + 8))(v5, v2);
    return;
  }

  v30 = v24;
  v31 = v25;
  v32 = v26;
  v33 = v27;
  v28 = v22;
  v29 = v23;
  v8 = objc_opt_self();
  v9 = [v8 sharedBehavior];
  if (!v9)
  {
    __break(1u);
    goto LABEL_38;
  }

  v10 = v9;
  v11 = [v9 features];

  if (!v11)
  {
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v12 = [v11 isPinnedInBrowse];

  if (v12)
  {
    v13 = v1;
    if (v31 == 1)
    {
      if (qword_1EDC5E100 == -1)
      {
        goto LABEL_29;
      }
    }

    else if (qword_1EDC5E100 == -1)
    {
      goto LABEL_29;
    }

    goto LABEL_33;
  }

  v15 = [v8 sharedBehavior];
  if (!v15)
  {
    goto LABEL_39;
  }

  v16 = v15;
  v17 = [v15 features];

  if (v17)
  {
    v18 = [v17 simplifiedLogging];

    if (v18 && (v13 = v1, (sub_1BA4A25A8() & 1) != 0))
    {
      if (v31 == 1)
      {
        if (qword_1EDC5E100 == -1)
        {
          goto LABEL_29;
        }
      }

      else if (qword_1EDC5E100 == -1)
      {
LABEL_29:
        sub_1BA4A1318();
        sub_1BA4A43B8();
        if (v33)
        {
          v19 = sub_1BA4A6758();
        }

        else
        {
          v19 = 0;
        }

        [v13 setAccessibilityIdentifier_];

        sub_1BA0D8BF4(&v28);
        goto LABEL_13;
      }
    }

    else
    {
      v13 = v1;
      if (v31 == 1)
      {
        if (qword_1EDC5E100 == -1)
        {
          goto LABEL_29;
        }
      }

      else if (qword_1EDC5E100 == -1)
      {
        goto LABEL_29;
      }
    }

LABEL_33:
    swift_once();
    goto LABEL_29;
  }

LABEL_40:
  __break(1u);
}

id DataTypeDetailFavoritesCell.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DataTypeDetailFavoritesCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void (*sub_1BA17897C(uint64_t *a1))(id **, char)
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
  v5 = OBJC_IVAR____TtC18HealthExperienceUI27DataTypeDetailFavoritesCell_parentViewController;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_1BA0C36E0;
}

uint64_t sub_1BA178A3C(void *a1)
{
  sub_1BA0272AC();
  v3 = OBJC_IVAR____TtC18HealthExperienceUI27DataTypeDetailFavoritesCell_item;
  swift_beginAccess();
  sub_1BA178CF0(v1 + v3, v13, &qword_1EDC6E1A0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348], sub_1B9F0CDE8);
  if (!v14)
  {
    sub_1B9F43F08(v13, &qword_1EDC6E1A0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348], sub_1B9F0CDE8);
    v10 = 0u;
    v11 = 0u;
    v12 = 0;
    return sub_1B9F43F08(&v10, &qword_1EBBE9BB0, &qword_1EDC6CCD8, &protocol descriptor for FavoritableDisplaying, sub_1B9F0CDE8);
  }

  sub_1B9F0D950(0, &qword_1EDC6E1B0);
  sub_1B9F0D950(0, &qword_1EDC6CCD8);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v12 = 0;
    v10 = 0u;
    v11 = 0u;
    return sub_1B9F43F08(&v10, &qword_1EBBE9BB0, &qword_1EDC6CCD8, &protocol descriptor for FavoritableDisplaying, sub_1B9F0CDE8);
  }

  if (!*(&v11 + 1))
  {
    return sub_1B9F43F08(&v10, &qword_1EBBE9BB0, &qword_1EDC6CCD8, &protocol descriptor for FavoritableDisplaying, sub_1B9F0CDE8);
  }

  sub_1B9F1134C(&v10, v13);
  v4 = v14;
  v5 = v15;
  __swift_project_boxed_opaque_existential_1(v13, v14);
  if ((*(v5 + 48))(v4, v5))
  {
    v6 = 11;
  }

  else
  {
    v6 = 12;
  }

  type metadata accessor for HealthAppAnalyticsManager();
  v9 = v6;
  v8 = 4;
  v12 = 0;
  v10 = 0u;
  v11 = 0u;
  static HealthAppAnalyticsManager.submitInteraction(action:viewController:presentation:pinnedContentManager:)(&v9, a1, &v8, &v10);
  sub_1B9F43F08(&v10, &unk_1EDC6ADB0, &qword_1EDC6ADC0, MEMORY[0x1E69A3D48], sub_1B9F0CDE8);
  return __swift_destroy_boxed_opaque_existential_1(v13);
}

void sub_1BA178C68(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1BA178CF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = a6(0, a3, a4, a5);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

id sub_1BA178F60()
{
  if (qword_1EDC6D380 != -1)
  {
    swift_once();
  }

  v13[0] = xmmword_1EDC6D388;
  v13[1] = xmmword_1EDC6D398;
  v13[2] = xmmword_1EDC6D3A8;
  v13[3] = xmmword_1EDC6D3B8;
  v13[4] = xmmword_1EDC6D3C8;
  v13[5] = unk_1EDC6D3D8;
  v13[6] = xmmword_1EDC6D3E8;
  v13[7] = unk_1EDC6D3F8;
  v0 = xmmword_1EDC6D388;
  v1 = xmmword_1EDC6D398;
  v3 = xmmword_1EDC6D3A8;
  v2 = xmmword_1EDC6D3B8;
  v12 = qword_1EDC6D3E0;
  v10 = *(&xmmword_1EDC6D3B8 + 8);
  v11 = *(&xmmword_1EDC6D3C8 + 8);
  sub_1B9F1D9A4(v13, &v18);
  sub_1B9F1DA18(*(&v1 + 1), v3, *(&v3 + 1), v2);
  v4 = [objc_opt_self() estimatedDimension_];

  v5 = *(MEMORY[0x1E69DC5C0] + 8);
  v6 = *(MEMORY[0x1E69DC5C0] + 24);
  *&v14 = v0;
  *(&v14 + 1) = v4;
  *v15 = v1;
  *&v15[40] = v10;
  memset(&v15[8], 0, 32);
  *&v15[56] = v11;
  *&v15[72] = v12;
  *&v16 = 0x4034000000000000;
  *(&v16 + 1) = v5;
  *&v17 = 0x4044000000000000;
  *(&v17 + 1) = v6;
  sub_1BA0117AC();
  *&v19[48] = *&v15[48];
  *&v19[64] = *&v15[64];
  v20 = v16;
  v21 = v17;
  v18 = v14;
  *v19 = *v15;
  *&v19[16] = *&v15[16];
  *&v19[32] = *&v15[32];
  sub_1B9F1D9A4(&v14, &v9);
  v7 = sub_1B9F293A8(&v18);
  *&v18 = v0;
  *(&v18 + 1) = v4;
  *v19 = v1;
  memset(&v19[8], 0, 32);
  *&v19[40] = v10;
  *&v19[56] = v11;
  *&v19[72] = v12;
  *&v20 = 0x4034000000000000;
  *(&v20 + 1) = v5;
  *&v21 = 0x4044000000000000;
  *(&v21 + 1) = v6;
  sub_1B9F1DA58(&v18);
  return v7;
}

uint64_t sub_1BA179180()
{
}

uint64_t sub_1BA1791C0()
{

  v1 = OBJC_IVAR____TtC18HealthExperienceUI27CompoundSectionedDataSource_snapshot;
  sub_1B9F12538();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t sub_1BA179290()
{
  sub_1BA1791C0();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for HealthDetailsCompoundDataSource()
{
  result = qword_1EBBED008;
  if (!qword_1EBBED008)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BA17933C(void *a1, void *a2)
{
  v3 = v2;
  v5 = a2;
  v6 = [a1 profileIdentifier];
  type metadata accessor for ProfileAvatarDataSource();
  swift_allocObject();
  v7 = ProfileAvatarDataSource.init(context:profileIdentifier:layoutConstructor:shouldDisplayName:)(v5, v6, sub_1BA178F60, 0, 0);
  v8 = OBJC_IVAR____TtC18HealthExperienceUI31HealthDetailsCompoundDataSource_profileAvatarDataSource;
  *(v3 + OBJC_IVAR____TtC18HealthExperienceUI31HealthDetailsCompoundDataSource_profileAvatarDataSource) = v7;
  type metadata accessor for HealthDetailsDemographicsDataSource();
  v9 = swift_allocObject();
  v10 = v9 + OBJC_IVAR____TtC18HealthExperienceUI35HealthDetailsDemographicsDataSource_selectedItem;
  *v10 = 0u;
  *(v10 + 16) = 0u;
  *(v10 + 32) = 0;
  v11 = v9 + OBJC_IVAR____TtC18HealthExperienceUI35HealthDetailsDemographicsDataSource_firstNameItem;
  *(v11 + 32) = 0;
  *v11 = 0u;
  *(v11 + 16) = 0u;
  v12 = v9 + OBJC_IVAR____TtC18HealthExperienceUI35HealthDetailsDemographicsDataSource_lastNameItem;
  *v12 = 0u;
  *(v12 + 16) = 0u;
  *(v12 + 32) = 0;
  *(v9 + OBJC_IVAR____TtC18HealthExperienceUI35HealthDetailsDemographicsDataSource_healthStore) = a1;
  v13 = a1;
  v14 = sub_1B9F1DAFC(MEMORY[0x1E69E7CC0], 1, sub_1BA2EEB74, 0);

  sub_1BA2EEC58();

  *(v3 + OBJC_IVAR____TtC18HealthExperienceUI31HealthDetailsCompoundDataSource_demographicsDataSource) = v14;
  sub_1B9F1DEA0();
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1BA4B5460;
  *(v15 + 32) = *(v3 + v8);
  *(v15 + 40) = &protocol witness table for MutableArrayDataSource;
  *(v15 + 48) = v14;
  *(v15 + 56) = &protocol witness table for MutableArrayDataSource;

  return CompoundSectionedDataSource.init(_:)(v15);
}

uint64_t PlatformCellBackgroundView.init(includeCorners:cellState:)@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  *a2 = swift_getKeyPath();
  *(a2 + 8) = 0;
  *(a2 + 32) = a1;
  type metadata accessor for ObservableCellState(0);
  sub_1BA179564();
  result = sub_1BA4A5348();
  *(a2 + 16) = result;
  *(a2 + 24) = v5;
  return result;
}

unint64_t sub_1BA179564()
{
  result = qword_1EDC67D30;
  if (!qword_1EDC67D30)
  {
    type metadata accessor for ObservableCellState(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC67D30);
  }

  return result;
}

uint64_t sub_1BA1795BC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
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

uint64_t sub_1BA179604(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

char *ProfileOverviewViewController.__allocating_init(healthStore:healthExperienceStore:pinnedContentManager:)(void *a1, void *a2, uint64_t a3)
{
  type metadata accessor for ProfileGradientsProviderFactory();
  swift_initStaticObject();
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v6 = sub_1BA4A1B68();
  v7 = sub_1B9FE10EC(a1, v6);

  sub_1B9F0A534(a2, v12);
  sub_1B9F0A534(a3, v11);
  v8 = objc_allocWithZone(type metadata accessor for ProfileOverviewViewController());
  v9 = sub_1BA1803C4(a1, v12, v11, v7);

  __swift_destroy_boxed_opaque_existential_1(a3);
  __swift_destroy_boxed_opaque_existential_1(a2);
  return v9;
}

void sub_1BA179754()
{
  v1 = v0;
  v2 = [v0 traitCollection];
  sub_1B9F3AEE8();
  sub_1BA4A7358();

  v3 = objc_opt_self();
  v4 = &selRef_secondarySystemBackgroundColor;
  if (((LOBYTE(v41[0]) - 4) & 0xF7) != 0)
  {
    v4 = &selRef_systemGroupedBackgroundColor;
  }

  v5 = [v3 *v4];
  v6 = [v1 view];
  if (!v6)
  {
    __break(1u);
    goto LABEL_13;
  }

  v7 = v6;
  [v6 setBackgroundColor_];

  v8 = OBJC_IVAR____TtC18HealthExperienceUI42PreviewSharedProfileOverviewViewController_gradientColorProvider;
  sub_1B9F0A534(&v1[OBJC_IVAR____TtC18HealthExperienceUI42PreviewSharedProfileOverviewViewController_gradientColorProvider], v41);
  v9 = v42;
  v10 = v43;
  __swift_project_boxed_opaque_existential_1(v41, v42);
  (*(v10 + 8))(v9, v10);
  sub_1BA4A4DB8();

  __swift_destroy_boxed_opaque_existential_1(v41);
  v11 = &v1[OBJC_IVAR____TtC18HealthExperienceUI42PreviewSharedProfileOverviewViewController_gradientView];
  v12 = *&v1[OBJC_IVAR____TtC18HealthExperienceUI42PreviewSharedProfileOverviewViewController_gradientView];
  v13 = *&v1[OBJC_IVAR____TtC18HealthExperienceUI42PreviewSharedProfileOverviewViewController_gradientView + 8];
  ObjectType = swift_getObjectType();
  v15 = *(v13 + 8);
  v16 = v12;
  v15(v39, ObjectType, v13);

  v17 = [*v11 layer];
  [v17 setZPosition_];

  v18 = [v1 view];
  if (!v18)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v19 = v18;
  [v18 insertSubview:*v11 atIndex:0];

  sub_1B9F0A534(&v1[v8], v41);
  v20 = v42;
  v21 = v43;
  __swift_project_boxed_opaque_existential_1(v41, v42);
  v40 = (*(v21 + 8))(v20, v21);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_1B9F10B50();
  sub_1BA1808C4(&qword_1EDC5F468, sub_1B9F10B50);
  v22 = sub_1BA4A5148();

  __swift_destroy_boxed_opaque_existential_1(v41);
  v23 = OBJC_IVAR____TtC18HealthExperienceUI42PreviewSharedProfileOverviewViewController_gradientSubscriber;
  swift_beginAccess();
  *&v1[v23] = v22;

  v24 = *(v11 + 1);
  v25 = *v11;
  v26 = [v1 view];
  if (!v26)
  {
LABEL_14:
    __break(1u);
    return;
  }

  v27 = v26;

  v28 = [v27 backgroundColor];

  if (!v28)
  {
    v28 = [objc_opt_self() systemBackgroundColor];
  }

  v29 = swift_getObjectType();
  (*(v24 + 16))(v28, v29, v24);

  sub_1BA18090C(0, &qword_1EDC5DC30, sub_1B9F3BF3C, MEMORY[0x1E69E6F90]);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_1BA4B5480;
  v31 = sub_1BA4A4178();
  v32 = MEMORY[0x1E69DC0F8];
  *(v30 + 32) = v31;
  *(v30 + 40) = v32;
  *(swift_allocObject() + 16) = v5;
  type metadata accessor for PreviewSharedProfileOverviewViewController();
  v33 = v5;
  sub_1BA4A7228();
  swift_unknownObjectRelease();

  sub_1B9F0A534(&v1[v8], v41);
  v34 = v42;
  v35 = v43;
  __swift_project_boxed_opaque_existential_1(v41, v42);
  v36 = *((*(v35 + 24))(v34, v35) + 16);

  __swift_destroy_boxed_opaque_existential_1(v41);
  if (v36)
  {
    sub_1B9F0A534(&v1[v8], v41);
    v37 = v42;
    v38 = v43;
    __swift_project_boxed_opaque_existential_1(v41, v42);
    (*(v38 + 24))(v37, v38);
    sub_1BA4A7228();

    swift_unknownObjectRelease();

    __swift_destroy_boxed_opaque_existential_1(v41);
  }

  else
  {
  }
}

void sub_1BA179CE8()
{
  v1 = v0;
  v2 = [v0 traitCollection];
  sub_1B9F3AEE8();
  sub_1BA4A7358();

  v3 = objc_opt_self();
  v4 = &selRef_secondarySystemBackgroundColor;
  if (((LOBYTE(v42[0]) - 4) & 0xF7) != 0)
  {
    v4 = &selRef_systemGroupedBackgroundColor;
  }

  v5 = [v3 *v4];
  v6 = [v1 view];
  if (!v6)
  {
    __break(1u);
    goto LABEL_13;
  }

  v7 = v6;
  [v6 setBackgroundColor_];

  v8 = OBJC_IVAR____TtC18HealthExperienceUI29ProfileOverviewViewController_gradientColorProvider;
  swift_beginAccess();
  sub_1B9F0A534(&v1[v8], v42);
  v9 = v43;
  v10 = v44;
  __swift_project_boxed_opaque_existential_1(v42, v43);
  (*(v10 + 8))(v9, v10);
  sub_1BA4A4DB8();

  __swift_destroy_boxed_opaque_existential_1(v42);
  v11 = &v1[OBJC_IVAR____TtC18HealthExperienceUI29ProfileOverviewViewController_gradientView];
  swift_beginAccess();
  v12 = *v11;
  v13 = *(v11 + 1);
  ObjectType = swift_getObjectType();
  v15 = *(v13 + 8);
  v16 = v12;
  v15(v41, ObjectType, v13);

  v17 = [*v11 layer];
  [v17 setZPosition_];

  v18 = [v1 view];
  if (!v18)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v19 = v18;
  [v18 insertSubview:*v11 atIndex:0];

  sub_1B9F0A534(&v1[v8], v42);
  v20 = v43;
  v21 = v44;
  __swift_project_boxed_opaque_existential_1(v42, v43);
  v40 = (*(v21 + 8))(v20, v21);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_1B9F10B50();
  sub_1BA1808C4(&qword_1EDC5F468, sub_1B9F10B50);
  v22 = sub_1BA4A5148();

  __swift_destroy_boxed_opaque_existential_1(v42);
  v23 = OBJC_IVAR____TtC18HealthExperienceUI29ProfileOverviewViewController_gradientSubscriber;
  swift_beginAccess();
  *&v1[v23] = v22;

  v24 = *v11;
  v25 = *(v11 + 1);
  v26 = v24;
  v27 = [v1 view];
  if (!v27)
  {
LABEL_14:
    __break(1u);
    return;
  }

  v28 = v27;

  v29 = [v28 backgroundColor];

  if (!v29)
  {
    v29 = [objc_opt_self() systemBackgroundColor];
  }

  v30 = swift_getObjectType();
  (*(v25 + 16))(v29, v30, v25);

  sub_1BA18090C(0, &qword_1EDC5DC30, sub_1B9F3BF3C, MEMORY[0x1E69E6F90]);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_1BA4B5480;
  v32 = sub_1BA4A4178();
  v33 = MEMORY[0x1E69DC0F8];
  *(v31 + 32) = v32;
  *(v31 + 40) = v33;
  *(swift_allocObject() + 16) = v5;
  type metadata accessor for ProfileOverviewViewController();
  v34 = v5;
  sub_1BA4A7228();
  swift_unknownObjectRelease();

  sub_1B9F0A534(&v1[v8], v42);
  v35 = v43;
  v36 = v44;
  __swift_project_boxed_opaque_existential_1(v42, v43);
  v37 = *((*(v36 + 24))(v35, v36) + 16);

  __swift_destroy_boxed_opaque_existential_1(v42);
  if (v37)
  {
    sub_1B9F0A534(&v1[v8], v42);
    v38 = v43;
    v39 = v44;
    __swift_project_boxed_opaque_existential_1(v42, v43);
    (*(v39 + 24))(v38, v39);
    sub_1BA4A7228();

    swift_unknownObjectRelease();

    __swift_destroy_boxed_opaque_existential_1(v42);
  }

  else
  {
  }
}

void sub_1BA17A294()
{
  v1 = v0;
  v2 = [v0 traitCollection];
  sub_1B9F3AEE8();
  sub_1BA4A7358();

  v3 = objc_opt_self();
  v4 = &selRef_secondarySystemBackgroundColor;
  if (((LOBYTE(v42[0]) - 4) & 0xF7) != 0)
  {
    v4 = &selRef_systemGroupedBackgroundColor;
  }

  v5 = [v3 *v4];
  v6 = [v1 view];
  if (!v6)
  {
    __break(1u);
    goto LABEL_13;
  }

  v7 = v6;
  [v6 setBackgroundColor_];

  v8 = OBJC_IVAR____TtC18HealthExperienceUI35SharedProfileOverviewViewController_gradientColorProvider;
  swift_beginAccess();
  sub_1B9F0A534(&v1[v8], v42);
  v9 = v43;
  v10 = v44;
  __swift_project_boxed_opaque_existential_1(v42, v43);
  (*(v10 + 8))(v9, v10);
  sub_1BA4A4DB8();

  __swift_destroy_boxed_opaque_existential_1(v42);
  v11 = &v1[OBJC_IVAR____TtC18HealthExperienceUI35SharedProfileOverviewViewController_gradientView];
  swift_beginAccess();
  v12 = *v11;
  v13 = *(v11 + 1);
  ObjectType = swift_getObjectType();
  v15 = *(v13 + 8);
  v16 = v12;
  v15(v41, ObjectType, v13);

  v17 = [*v11 layer];
  [v17 setZPosition_];

  v18 = [v1 view];
  if (!v18)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v19 = v18;
  [v18 insertSubview:*v11 atIndex:0];

  sub_1B9F0A534(&v1[v8], v42);
  v20 = v43;
  v21 = v44;
  __swift_project_boxed_opaque_existential_1(v42, v43);
  v40 = (*(v21 + 8))(v20, v21);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_1B9F10B50();
  sub_1BA1808C4(&qword_1EDC5F468, sub_1B9F10B50);
  v22 = sub_1BA4A5148();

  __swift_destroy_boxed_opaque_existential_1(v42);
  v23 = OBJC_IVAR____TtC18HealthExperienceUI35SharedProfileOverviewViewController_gradientSubscriber;
  swift_beginAccess();
  *&v1[v23] = v22;

  v24 = *v11;
  v25 = *(v11 + 1);
  v26 = v24;
  v27 = [v1 view];
  if (!v27)
  {
LABEL_14:
    __break(1u);
    return;
  }

  v28 = v27;

  v29 = [v28 backgroundColor];

  if (!v29)
  {
    v29 = [objc_opt_self() systemBackgroundColor];
  }

  v30 = swift_getObjectType();
  (*(v25 + 16))(v29, v30, v25);

  sub_1BA18090C(0, &qword_1EDC5DC30, sub_1B9F3BF3C, MEMORY[0x1E69E6F90]);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_1BA4B5480;
  v32 = sub_1BA4A4178();
  v33 = MEMORY[0x1E69DC0F8];
  *(v31 + 32) = v32;
  *(v31 + 40) = v33;
  *(swift_allocObject() + 16) = v5;
  type metadata accessor for SharedProfileOverviewViewController();
  v34 = v5;
  sub_1BA4A7228();
  swift_unknownObjectRelease();

  sub_1B9F0A534(&v1[v8], v42);
  v35 = v43;
  v36 = v44;
  __swift_project_boxed_opaque_existential_1(v42, v43);
  v37 = *((*(v36 + 24))(v35, v36) + 16);

  __swift_destroy_boxed_opaque_existential_1(v42);
  if (v37)
  {
    sub_1B9F0A534(&v1[v8], v42);
    v38 = v43;
    v39 = v44;
    __swift_project_boxed_opaque_existential_1(v42, v43);
    (*(v39 + 24))(v38, v39);
    sub_1BA4A7228();

    swift_unknownObjectRelease();

    __swift_destroy_boxed_opaque_existential_1(v42);
  }

  else
  {
  }
}

void sub_1BA17A850()
{
  v1 = v0;
  v2 = [v0 traitCollection];
  sub_1B9F3AEE8();
  sub_1BA4A7358();

  v3 = objc_opt_self();
  v4 = &selRef_secondarySystemBackgroundColor;
  if (((LOBYTE(v42[0]) - 4) & 0xF7) != 0)
  {
    v4 = &selRef_systemGroupedBackgroundColor;
  }

  v5 = [v3 *v4];
  v6 = [v1 view];
  if (!v6)
  {
    __break(1u);
    goto LABEL_13;
  }

  v7 = v6;
  [v6 setBackgroundColor_];

  v8 = OBJC_IVAR____TtC18HealthExperienceUI22CategoryViewController_gradientColorProvider;
  swift_beginAccess();
  sub_1B9F0A534(&v1[v8], v42);
  v9 = v43;
  v10 = v44;
  __swift_project_boxed_opaque_existential_1(v42, v43);
  (*(v10 + 8))(v9, v10);
  sub_1BA4A4DB8();

  __swift_destroy_boxed_opaque_existential_1(v42);
  v11 = &v1[OBJC_IVAR____TtC18HealthExperienceUI22CategoryViewController_gradientView];
  swift_beginAccess();
  v12 = *v11;
  v13 = *(v11 + 1);
  ObjectType = swift_getObjectType();
  v15 = *(v13 + 8);
  v16 = v12;
  v15(v41, ObjectType, v13);

  v17 = [*v11 layer];
  [v17 setZPosition_];

  v18 = [v1 view];
  if (!v18)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v19 = v18;
  [v18 insertSubview:*v11 atIndex:0];

  sub_1B9F0A534(&v1[v8], v42);
  v20 = v43;
  v21 = v44;
  __swift_project_boxed_opaque_existential_1(v42, v43);
  v40 = (*(v21 + 8))(v20, v21);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_1B9F10B50();
  sub_1BA1808C4(&qword_1EDC5F468, sub_1B9F10B50);
  v22 = sub_1BA4A5148();

  __swift_destroy_boxed_opaque_existential_1(v42);
  v23 = OBJC_IVAR____TtC18HealthExperienceUI22CategoryViewController_gradientSubscriber;
  swift_beginAccess();
  *&v1[v23] = v22;

  v24 = *v11;
  v25 = *(v11 + 1);
  v26 = v24;
  v27 = [v1 view];
  if (!v27)
  {
LABEL_14:
    __break(1u);
    return;
  }

  v28 = v27;

  v29 = [v28 backgroundColor];

  if (!v29)
  {
    v29 = [objc_opt_self() systemBackgroundColor];
  }

  v30 = swift_getObjectType();
  (*(v25 + 16))(v29, v30, v25);

  sub_1BA18090C(0, &qword_1EDC5DC30, sub_1B9F3BF3C, MEMORY[0x1E69E6F90]);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_1BA4B5480;
  v32 = sub_1BA4A4178();
  v33 = MEMORY[0x1E69DC0F8];
  *(v31 + 32) = v32;
  *(v31 + 40) = v33;
  *(swift_allocObject() + 16) = v5;
  type metadata accessor for CategoryViewController();
  v34 = v5;
  sub_1BA4A7228();
  swift_unknownObjectRelease();

  sub_1B9F0A534(&v1[v8], v42);
  v35 = v43;
  v36 = v44;
  __swift_project_boxed_opaque_existential_1(v42, v43);
  v37 = *((*(v36 + 24))(v35, v36) + 16);

  __swift_destroy_boxed_opaque_existential_1(v42);
  if (v37)
  {
    sub_1B9F0A534(&v1[v8], v42);
    v38 = v43;
    v39 = v44;
    __swift_project_boxed_opaque_existential_1(v42, v43);
    (*(v39 + 24))(v38, v39);
    sub_1BA4A7228();

    swift_unknownObjectRelease();

    __swift_destroy_boxed_opaque_existential_1(v42);
  }

  else
  {
  }
}

void sub_1BA17AE0C(char *a1, uint64_t a2, void *a3)
{
  v5 = *&a1[OBJC_IVAR____TtC18HealthExperienceUI42PreviewSharedProfileOverviewViewController_gradientView + 8];
  v10 = *&a1[OBJC_IVAR____TtC18HealthExperienceUI42PreviewSharedProfileOverviewViewController_gradientView];
  v6 = [a1 view];
  if (v6)
  {
    v7 = v6;
    v8 = [v6 backgroundColor];

    if (!v8)
    {
      v8 = a3;
    }

    ObjectType = swift_getObjectType();
    (*(v5 + 16))(v8, ObjectType, v5);
  }

  else
  {
    __break(1u);
  }
}

void sub_1BA17AEEC(char *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = &a1[*a4];
  swift_beginAccess();
  v7 = *v6;
  v8 = *(v6 + 1);
  v9 = v7;
  v10 = [a1 view];
  if (v10)
  {
    v11 = v10;
    v12 = [v10 backgroundColor];

    if (!v12)
    {
      v12 = a3;
    }

    ObjectType = swift_getObjectType();
    (*(v8 + 16))(v12, ObjectType, v8);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1BA17AFCC(void *a1)
{
  sub_1B9F0A534(a1 + OBJC_IVAR____TtC18HealthExperienceUI42PreviewSharedProfileOverviewViewController_gradientColorProvider, v5);
  v2 = v5[4];
  __swift_project_boxed_opaque_existential_1(v5, v5[3]);
  v3 = [a1 traitCollection];
  (*(v2 + 16))();

  return __swift_destroy_boxed_opaque_existential_1(v5);
}

uint64_t sub_1BA17B084(void *a1, uint64_t a2, uint64_t *a3)
{
  v4 = *a3;
  swift_beginAccess();
  sub_1B9F0A534(a1 + v4, v8);
  v5 = v8[4];
  __swift_project_boxed_opaque_existential_1(v8, v8[3]);
  v6 = [a1 traitCollection];
  (*(v5 + 16))();

  return __swift_destroy_boxed_opaque_existential_1(v8);
}

void sub_1BA17B13C()
{
  v1 = v0;
  v2 = [v0 navigationItem];
  [v2 setLargeTitleDisplayMode_];

  v3 = sub_1BA084234();
  v4 = [v1 presentingViewController];
  v5 = v4;
  if (v4)
  {
  }

  v6 = objc_allocWithZone(type metadata accessor for ProfileNavigationBarView());
  v7 = sub_1BA25A190(v3, v5 != 0);
  v8 = OBJC_IVAR____TtC18HealthExperienceUI47SummarySharingRelationshipDetailsViewController_navigationBarTitleView;
  swift_beginAccess();
  v9 = *&v1[v8];
  *&v1[v8] = v7;
  v10 = v7;

  v11 = [v1 navigationItem];
  [v11 setTitleView_];

  [*&v10[OBJC_IVAR____TtC18HealthExperienceUI24ProfileNavigationBarView_contentView] setAlpha_];
  if ((_UISolariumEnabled() & 1) == 0)
  {
    v12 = [v1 navigationItem];
    [v12 _setManualScrollEdgeAppearanceEnabled_];

    sub_1BA17F870(0, sub_1BA17BF70, &unk_1F380A4D0, sub_1BA1811DC, &block_descriptor_19);
  }
}

void sub_1BA17B2FC()
{
  v1 = v0;
  sub_1BA142B40();
  v3 = v2;
  v4 = *(v2 - 8);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [v0 navigationItem];
  [v8 setLargeTitleDisplayMode_];

  v22 = *(*(*&v1[OBJC_IVAR____TtC18HealthExperienceUI29ProfileOverviewViewController_profileAllDataDataSource] + OBJC_IVAR____TtC18HealthExperienceUI24ProfileAllDataDataSource_profileInformationDataSource) + qword_1EDC6A560);
  v9 = MEMORY[0x1E695BF98];
  sub_1BA1807E0(0, &qword_1EDC6B720, MEMORY[0x1E695BF98]);
  sub_1BA180880(&qword_1EDC6B730, &qword_1EDC6B720, v9);
  v22 = sub_1BA4A4F98();
  v10 = MEMORY[0x1E695BED0];
  sub_1BA1807E0(0, &qword_1EDC6B738, MEMORY[0x1E695BED0]);
  sub_1BA142C28();
  sub_1BA180880(&qword_1EDC6B740, &qword_1EDC6B738, v10);
  sub_1BA4A4FE8();
  sub_1BA1808C4(&qword_1EBBEC7C0, sub_1BA142B40);
  v11 = sub_1BA4A4F98();

  (*(v4 + 8))(v7, v3);
  v12 = [v1 presentingViewController];
  v13 = v12;
  if (v12)
  {
  }

  v14 = objc_allocWithZone(type metadata accessor for ProfileNavigationBarView());
  v15 = sub_1BA25A190(v11, v13 != 0);
  v16 = OBJC_IVAR____TtC18HealthExperienceUI29ProfileOverviewViewController_navigationBarTitleView;
  swift_beginAccess();
  v17 = *&v1[v16];
  *&v1[v16] = v15;
  v18 = v15;

  v19 = [v1 navigationItem];
  [v19 setTitleView_];

  [*&v18[OBJC_IVAR____TtC18HealthExperienceUI24ProfileNavigationBarView_contentView] setAlpha_];
  if ((_UISolariumEnabled() & 1) == 0)
  {
    v20 = [v1 navigationItem];
    [v20 _setManualScrollEdgeAppearanceEnabled_];

    sub_1BA17F870(0, sub_1BA17C19C, &unk_1F380A7A0, sub_1BA1811DC, &block_descriptor_75);
  }
}

void sub_1BA17B6CC()
{
  v1 = v0;
  v2 = [v0 navigationItem];
  [v2 setLargeTitleDisplayMode_];

  v3 = sub_1BA1E5C0C();
  v4 = [v1 presentingViewController];
  v5 = v4;
  if (v4)
  {
  }

  v6 = objc_allocWithZone(type metadata accessor for ProfileNavigationBarView());
  v7 = sub_1BA25A190(v3, v5 != 0);
  v8 = OBJC_IVAR____TtC18HealthExperienceUI35SharedProfileOverviewViewController_navigationBarTitleView;
  swift_beginAccess();
  v9 = *&v1[v8];
  *&v1[v8] = v7;
  v10 = v7;

  v11 = [v1 navigationItem];
  [v11 setTitleView_];

  [*&v10[OBJC_IVAR____TtC18HealthExperienceUI24ProfileNavigationBarView_contentView] setAlpha_];
  if ((_UISolariumEnabled() & 1) == 0)
  {
    v12 = [v1 navigationItem];
    [v12 _setManualScrollEdgeAppearanceEnabled_];

    sub_1BA17F870(0, sub_1BA17C3C8, &unk_1F380A6B0, sub_1BA1811DC, &block_descriptor_56_0);
  }
}

void sub_1BA17B88C()
{
  v1 = v0;
  v2 = [v0 navigationItem];
  [v2 setLargeTitleDisplayMode_];

  v3 = sub_1BA388058();
  v4 = [v1 presentingViewController];
  v5 = v4;
  if (v4)
  {
  }

  v6 = objc_allocWithZone(type metadata accessor for ProfileNavigationBarView());
  v7 = sub_1BA25A190(v3, v5 != 0);
  v8 = OBJC_IVAR____TtC18HealthExperienceUI21ProfileViewController_navigationBarTitleView;
  swift_beginAccess();
  v9 = *&v1[v8];
  *&v1[v8] = v7;
  v10 = v7;

  v11 = [v1 navigationItem];
  [v11 setTitleView_];

  [*&v10[OBJC_IVAR____TtC18HealthExperienceUI24ProfileNavigationBarView_contentView] setAlpha_];
  if ((_UISolariumEnabled() & 1) == 0)
  {
    v12 = [v1 navigationItem];
    [v12 _setManualScrollEdgeAppearanceEnabled_];

    sub_1BA17F870(0, sub_1BA17C5F4, &unk_1F380A5C0, sub_1BA180E10, &block_descriptor_37_0);
  }
}

void sub_1BA17BA4C()
{
  v1 = v0;
  sub_1BA142B40();
  v3 = v2;
  v4 = *(v2 - 8);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [v0 navigationItem];
  [v8 setLargeTitleDisplayMode_];

  v22 = *(*(*&v1[OBJC_IVAR____TtC18HealthExperienceUI31ProfileCategoriesViewController_categoriesDataSource] + OBJC_IVAR____TtC18HealthExperienceUI27ProfileCategoriesDataSource_profileInformationDataSource) + qword_1EDC6A560);
  v9 = MEMORY[0x1E695BF98];
  sub_1BA1807E0(0, &qword_1EDC6B720, MEMORY[0x1E695BF98]);
  sub_1BA180880(&qword_1EDC6B730, &qword_1EDC6B720, v9);
  v22 = sub_1BA4A4F98();
  v10 = MEMORY[0x1E695BED0];
  sub_1BA1807E0(0, &qword_1EDC6B738, MEMORY[0x1E695BED0]);
  sub_1BA142C28();
  sub_1BA180880(&qword_1EDC6B740, &qword_1EDC6B738, v10);
  sub_1BA4A4FE8();
  sub_1BA1808C4(&qword_1EBBEC7C0, sub_1BA142B40);
  v11 = sub_1BA4A4F98();

  (*(v4 + 8))(v7, v3);
  v12 = [v1 presentingViewController];
  v13 = v12;
  if (v12)
  {
  }

  v14 = objc_allocWithZone(type metadata accessor for ProfileNavigationBarView());
  v15 = sub_1BA25A190(v11, v13 != 0);
  v16 = OBJC_IVAR____TtC18HealthExperienceUI31ProfileCategoriesViewController_navigationBarTitleView;
  swift_beginAccess();
  v17 = *&v1[v16];
  *&v1[v16] = v15;
  v18 = v15;

  v19 = [v1 navigationItem];
  [v19 setTitleView_];

  [*&v18[OBJC_IVAR____TtC18HealthExperienceUI24ProfileNavigationBarView_contentView] setAlpha_];
  if ((_UISolariumEnabled() & 1) == 0)
  {
    v20 = [v1 navigationItem];
    [v20 _setManualScrollEdgeAppearanceEnabled_];

    sub_1BA17F870(0, sub_1BA17C820, &unk_1F380A570, sub_1BA1811DC, &block_descriptor_31_1);
  }
}

id sub_1BA17BE24()
{
  v1 = v0;
  v2 = sub_1BA4A1998();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [v1 collectionView];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v8 = result;
  MEMORY[0x1BFAEC380](1, 0);
  v9 = sub_1BA4A18F8();
  (*(v3 + 8))(v6, v2);
  v10 = [v8 cellForItemAtIndexPath_];

  if (v10)
  {
    type metadata accessor for ProfileNameCell();
    result = swift_dynamicCastClass();
    if (result)
    {
      return result;
    }
  }

  return 0;
}

void sub_1BA17BF70()
{
  v0 = sub_1BA4A3EA8();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1BA17BE24();
  if (v4)
  {
    v5 = v4;
    v6 = *&v4[OBJC_IVAR____TtC18HealthExperienceUI15ProfileNameCell_profileNameView];

    v7 = OBJC_IVAR____TtC18HealthExperienceUI15ProfileNameView_nameLabel;
    v8 = *&v6[OBJC_IVAR____TtC18HealthExperienceUI15ProfileNameView_nameLabel];
    [v8 bounds];
    [v8 convertRect:0 toView:?];
    [*&v6[v7] _lastLineBaseline];
  }

  else
  {
    sub_1BA4A3E28();
    v9 = sub_1BA4A3E88();
    v10 = sub_1BA4A6F88();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v14 = v12;
      *v11 = 136315138;
      *(v11 + 4) = sub_1B9F0B82C(0xD00000000000002FLL, 0x80000001BA4EF8B0, &v14);
      _os_log_impl(&dword_1B9F07000, v9, v10, "[%s)]: No profile info cell found, defaulting to placeholder value", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v12);
      MEMORY[0x1BFAF43A0](v12, -1, -1);
      MEMORY[0x1BFAF43A0](v11, -1, -1);
    }

    (*(v1 + 8))(v3, v0);
  }
}

void sub_1BA17C19C()
{
  v0 = sub_1BA4A3EA8();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1BA17BE24();
  if (v4)
  {
    v5 = v4;
    v6 = *&v4[OBJC_IVAR____TtC18HealthExperienceUI15ProfileNameCell_profileNameView];

    v7 = OBJC_IVAR____TtC18HealthExperienceUI15ProfileNameView_nameLabel;
    v8 = *&v6[OBJC_IVAR____TtC18HealthExperienceUI15ProfileNameView_nameLabel];
    [v8 bounds];
    [v8 convertRect:0 toView:?];
    [*&v6[v7] _lastLineBaseline];
  }

  else
  {
    sub_1BA4A3E28();
    v9 = sub_1BA4A3E88();
    v10 = sub_1BA4A6F88();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v14 = v12;
      *v11 = 136315138;
      *(v11 + 4) = sub_1B9F0B82C(0xD00000000000001DLL, 0x80000001BA4C1F20, &v14);
      _os_log_impl(&dword_1B9F07000, v9, v10, "[%s)]: No profile info cell found, defaulting to placeholder value", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v12);
      MEMORY[0x1BFAF43A0](v12, -1, -1);
      MEMORY[0x1BFAF43A0](v11, -1, -1);
    }

    (*(v1 + 8))(v3, v0);
  }
}

void sub_1BA17C3C8()
{
  v0 = sub_1BA4A3EA8();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1BA17BE24();
  if (v4)
  {
    v5 = v4;
    v6 = *&v4[OBJC_IVAR____TtC18HealthExperienceUI15ProfileNameCell_profileNameView];

    v7 = OBJC_IVAR____TtC18HealthExperienceUI15ProfileNameView_nameLabel;
    v8 = *&v6[OBJC_IVAR____TtC18HealthExperienceUI15ProfileNameView_nameLabel];
    [v8 bounds];
    [v8 convertRect:0 toView:?];
    [*&v6[v7] _lastLineBaseline];
  }

  else
  {
    sub_1BA4A3E28();
    v9 = sub_1BA4A3E88();
    v10 = sub_1BA4A6F88();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v14 = v12;
      *v11 = 136315138;
      *(v11 + 4) = sub_1B9F0B82C(0xD000000000000023, 0x80000001BA4EF900, &v14);
      _os_log_impl(&dword_1B9F07000, v9, v10, "[%s)]: No profile info cell found, defaulting to placeholder value", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v12);
      MEMORY[0x1BFAF43A0](v12, -1, -1);
      MEMORY[0x1BFAF43A0](v11, -1, -1);
    }

    (*(v1 + 8))(v3, v0);
  }
}

void sub_1BA17C5F4()
{
  v0 = sub_1BA4A3EA8();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1BA17BE24();
  if (v4)
  {
    v5 = v4;
    v6 = *&v4[OBJC_IVAR____TtC18HealthExperienceUI15ProfileNameCell_profileNameView];

    v7 = OBJC_IVAR____TtC18HealthExperienceUI15ProfileNameView_nameLabel;
    v8 = *&v6[OBJC_IVAR____TtC18HealthExperienceUI15ProfileNameView_nameLabel];
    [v8 bounds];
    [v8 convertRect:0 toView:?];
    [*&v6[v7] _lastLineBaseline];
  }

  else
  {
    sub_1BA4A3E28();
    v9 = sub_1BA4A3E88();
    v10 = sub_1BA4A6F88();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v14 = v12;
      *v11 = 136315138;
      *(v11 + 4) = sub_1B9F0B82C(0xD000000000000015, 0x80000001BA4E13B0, &v14);
      _os_log_impl(&dword_1B9F07000, v9, v10, "[%s)]: No profile info cell found, defaulting to placeholder value", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v12);
      MEMORY[0x1BFAF43A0](v12, -1, -1);
      MEMORY[0x1BFAF43A0](v11, -1, -1);
    }

    (*(v1 + 8))(v3, v0);
  }
}

void sub_1BA17C820()
{
  v0 = sub_1BA4A3EA8();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1BA17BE24();
  if (v4)
  {
    v5 = v4;
    v6 = *&v4[OBJC_IVAR____TtC18HealthExperienceUI15ProfileNameCell_profileNameView];

    v7 = OBJC_IVAR____TtC18HealthExperienceUI15ProfileNameView_nameLabel;
    v8 = *&v6[OBJC_IVAR____TtC18HealthExperienceUI15ProfileNameView_nameLabel];
    [v8 bounds];
    [v8 convertRect:0 toView:?];
    [*&v6[v7] _lastLineBaseline];
  }

  else
  {
    sub_1BA4A3E28();
    v9 = sub_1BA4A3E88();
    v10 = sub_1BA4A6F88();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v14 = v12;
      *v11 = 136315138;
      *(v11 + 4) = sub_1B9F0B82C(0xD00000000000001FLL, 0x80000001BA4EF8E0, &v14);
      _os_log_impl(&dword_1B9F07000, v9, v10, "[%s)]: No profile info cell found, defaulting to placeholder value", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v12);
      MEMORY[0x1BFAF43A0](v12, -1, -1);
      MEMORY[0x1BFAF43A0](v11, -1, -1);
    }

    (*(v1 + 8))(v3, v0);
  }
}

void sub_1BA17CAAC(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI29ProfileOverviewViewController_navigationBarTitleView;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
}

void *sub_1BA17CB0C()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI29ProfileOverviewViewController_navigationBarTitleView;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1BA17CB58(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI29ProfileOverviewViewController_navigationBarTitleView;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_1BA17CC10()
{
  sub_1BA142B40();
  v2 = v1;
  v3 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*(*(v0 + OBJC_IVAR____TtC18HealthExperienceUI29ProfileOverviewViewController_profileAllDataDataSource) + OBJC_IVAR____TtC18HealthExperienceUI24ProfileAllDataDataSource_profileInformationDataSource) + qword_1EDC6A560);
  v6 = MEMORY[0x1E695BF98];
  sub_1BA1807E0(0, &qword_1EDC6B720, MEMORY[0x1E695BF98]);
  sub_1BA180880(&qword_1EDC6B730, &qword_1EDC6B720, v6);
  v11 = sub_1BA4A4F98();
  v7 = MEMORY[0x1E695BED0];
  sub_1BA1807E0(0, &qword_1EDC6B738, MEMORY[0x1E695BED0]);
  sub_1BA142C28();
  sub_1BA180880(&qword_1EDC6B740, &qword_1EDC6B738, v7);
  sub_1BA4A4FE8();
  sub_1BA1808C4(&qword_1EBBEC7C0, sub_1BA142B40);
  v8 = sub_1BA4A4F98();

  (*(v3 + 8))(v5, v2);
  return v8;
}

uint64_t sub_1BA17CE60@<X0>(uint64_t a1@<X8>)
{
  sub_1BA18090C(0, &qword_1EDC6E200, MEMORY[0x1E69A3108], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v13 - v4;
  v6 = *(**(*(v1 + OBJC_IVAR____TtC18HealthExperienceUI29ProfileOverviewViewController_profileAllDataDataSource) + OBJC_IVAR____TtC18HealthExperienceUI24ProfileAllDataDataSource_profileInformationDataSource) + 760);

  v6(v7);

  v8 = sub_1BA4A2888();
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v5, 1, v8) == 1)
  {
    result = sub_1BA180970(v5, &qword_1EDC6E200, MEMORY[0x1E69A3108]);
    *a1 = 0u;
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0;
  }

  else
  {
    v11 = MEMORY[0x1E69A30F0];
    *(a1 + 24) = v8;
    *(a1 + 32) = v11;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
    return (*(v9 + 32))(boxed_opaque_existential_1, v5, v8);
  }

  return result;
}

void sub_1BA17D028(__int128 *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI29ProfileOverviewViewController_gradientView;
  swift_beginAccess();
  v5 = *(v3 + v4);
  v6 = *a1;
  *(v3 + v4) = *a1;
  v7 = v6;
}

id sub_1BA17D090()
{
  v1 = (v0 + OBJC_IVAR____TtC18HealthExperienceUI29ProfileOverviewViewController_gradientView);
  swift_beginAccess();
  v2 = *v1;
  v3 = *v1;
  return v2;
}

void sub_1BA17D0E4(uint64_t a1, uint64_t a2)
{
  v5 = v2 + OBJC_IVAR____TtC18HealthExperienceUI29ProfileOverviewViewController_gradientView;
  swift_beginAccess();
  v6 = *v5;
  *v5 = a1;
  *(v5 + 8) = a2;
}

uint64_t sub_1BA17D1A4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI29ProfileOverviewViewController_gradientSubscriber;
  swift_beginAccess();
  *(v3 + v4) = v2;
}

uint64_t sub_1BA17D254(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI29ProfileOverviewViewController_gradientSubscriber;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_1BA17D30C(uint64_t a1, uint64_t *a2)
{
  sub_1B9F0A534(a1, v6);
  v3 = *a2;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI29ProfileOverviewViewController_gradientColorProvider;
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1(v3 + v4);
  sub_1B9F1134C(v6, v3 + v4);
  return swift_endAccess();
}

uint64_t sub_1BA17D378@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI29ProfileOverviewViewController_gradientColorProvider;
  swift_beginAccess();
  return sub_1B9F0A534(v1 + v3, a1);
}

uint64_t sub_1BA17D3D0(__int128 *a1)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI29ProfileOverviewViewController_gradientColorProvider;
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1(v1 + v3);
  sub_1B9F1134C(a1, v1 + v3);
  return swift_endAccess();
}

char *ProfileOverviewViewController.__allocating_init(healthStore:healthExperienceStore:pinnedContentManager:profileGradientsProvider:)(void *a1, void *a2, uint64_t a3, void *a4)
{
  v9 = objc_allocWithZone(v4);
  v10 = sub_1BA1803C4(a1, a2, a3, a4);

  return v10;
}

char *ProfileOverviewViewController.init(healthStore:healthExperienceStore:pinnedContentManager:profileGradientsProvider:)(void *a1, void *a2, uint64_t a3, void *a4)
{
  v6 = sub_1BA1803C4(a1, a2, a3, a4);

  return v6;
}

id sub_1BA17D618()
{
  v7.receiver = v0;
  v7.super_class = type metadata accessor for ProfileOverviewViewController();
  objc_msgSendSuper2(&v7, sel_viewDidLoad);
  result = [v0 collectionView];
  if (result)
  {
    v2 = result;
    v3 = objc_opt_self();
    v4 = [v3 systemGroupedBackgroundColor];
    [v2 setBackgroundColor_];

    result = [v0 collectionView];
    if (result)
    {
      v5 = result;
      v6 = [v3 clearColor];
      [v5 setBackgroundColor_];

      sub_1BA179CE8();
      sub_1BA17D74C();
      sub_1BA17B2FC();
      sub_1BA4A2B08();
      return sub_1BA4A2B28();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1BA17D74C()
{
  v1 = v0;
  v2 = sub_1BA4A3EA8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v56 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (_UISolariumEnabled())
  {
    return;
  }

  v6 = [v1 navigationController];
  if (v6)
  {
    v7 = v6;
    v8 = [v6 viewControllers];

    sub_1B9F0ADF8(0, &qword_1EDC6B5D0);
    v9 = sub_1BA4A6B08();

    v10 = sub_1B9FEEB54(v1, v9);
    if ((v11 & 1) == 0)
    {
      v12 = v10;
      v13 = v10 < 1;
      v14 = v10 - 1;
      if (!v13)
      {
        if ((v9 & 0xC000000000000001) != 0)
        {
          v15 = MEMORY[0x1BFAF2860](v14, v9);
        }

        else
        {
          if (v12 > *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_28;
          }

          v15 = *(v9 + 8 * v14 + 32);
        }

        v16 = v15;

        v17 = [v16 title];

        if (v17)
        {
          v18 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
          v20 = v19;

LABEL_16:
          v23 = *MEMORY[0x1E69DDD40];
          v24 = objc_opt_self();
          v25 = [v24 preferredFontDescriptorWithTextStyle:v23 compatibleWithTraitCollection:0];
          if (v25)
          {
            v26 = v25;
            v27 = [objc_opt_self() fontWithDescriptor:v25 size:0.0];
          }

          else
          {
            v60 = v18;
            sub_1BA4A3DD8();
            v28 = v23;
            v29 = sub_1BA4A3E88();
            v30 = sub_1BA4A6FB8();

            if (os_log_type_enabled(v29, v30))
            {
              v31 = swift_slowAlloc();
              v57 = swift_slowAlloc();
              v58 = swift_slowAlloc();
              v63 = v58;
              *v31 = 136315906;
              v32 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
              v59 = v28;
              v34 = sub_1B9F0B82C(v32, v33, &v63);
              HIDWORD(v56) = v30;
              v35 = v34;

              *(v31 + 4) = v35;
              *(v31 + 12) = 2080;
              v61 = 0;
              v62 = 1;
              sub_1BA18090C(0, &qword_1EBBECB00, type metadata accessor for Weight, MEMORY[0x1E69E6720]);
              v36 = sub_1BA4A6808();
              v38 = sub_1B9F0B82C(v36, v37, &v63);

              *(v31 + 14) = v38;
              *(v31 + 22) = 2080;
              LODWORD(v61) = 0;
              type metadata accessor for SymbolicTraits(0);
              v39 = sub_1BA4A6808();
              v41 = sub_1B9F0B82C(v39, v40, &v63);
              v28 = v59;

              *(v31 + 24) = v41;
              *(v31 + 32) = 2112;
              v42 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
              *(v31 + 34) = v42;
              v43 = v57;
              *v57 = v42;
              _os_log_impl(&dword_1B9F07000, v29, BYTE4(v56), "Unable to create descriptor with textStyle %s, weight %s, traits %s and rounded %@. Using only the text style", v31, 0x2Au);
              sub_1B9F8C6C8(v43);
              MEMORY[0x1BFAF43A0](v43, -1, -1);
              v44 = v58;
              swift_arrayDestroy();
              MEMORY[0x1BFAF43A0](v44, -1, -1);
              MEMORY[0x1BFAF43A0](v31, -1, -1);
            }

            (*(v3 + 8))(v5, v2);
            v45 = [v24 preferredFontDescriptorWithTextStyle_];
            v27 = [objc_opt_self() fontWithDescriptor:v45 size:0.0];

            v18 = v60;
          }

          v46 = [objc_opt_self() configurationWithFont_];

          v47 = sub_1BA4A6758();
          v48 = [objc_opt_self() systemImageNamed:v47 withConfiguration:v46];

          v49 = sub_1BA1A386C(v18, v20, v48);

          [v49 addTarget:v1 action:sel_backButtonTapped_ forControlEvents:64];
          v50 = sub_1BA3D3628(v49);
          v51 = [objc_allocWithZone(MEMORY[0x1E69DC708]) initWithCustomView_];

          v52 = [v1 navigationItem];
          [v52 setLeftBarButtonItem_];

          v53 = [v1 navigationController];
          if (v53)
          {
            v54 = v53;
            v55 = [v53 interactivePopGestureRecognizer];

            if (v55)
            {
              [v55 setDelegate_];
            }
          }

          return;
        }

        if (qword_1EBBE8510 == -1)
        {
LABEL_15:
          v18 = sub_1BA4A1318();
          v20 = v22;
          goto LABEL_16;
        }

LABEL_28:
        swift_once();
        goto LABEL_15;
      }
    }
  }

  v60 = [v1 navigationItem];
  [v60 setLeftBarButtonItem_];
  v21 = v60;
}

id sub_1BA17DEB0()
{
  v1 = v0;
  sub_1B9F36938();
  result = [v0 collectionView];
  if (!result)
  {
    __break(1u);
    goto LABEL_14;
  }

  v3 = result;
  sub_1B9FF57C0();

  result = [v1 collectionView];
  if (!result)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v4 = result;
  sub_1B9FF5688();

  result = [v1 collectionView];
  if (!result)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v5 = result;
  sub_1B9FF578C();

  result = [v1 collectionView];
  if (!result)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  sub_1B9FF5260();

  result = [v1 collectionView];
  if (!result)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v7 = result;
  sub_1B9FF515C();

  result = [v1 collectionView];
  if (!result)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v8 = result;
  sub_1B9FF5190();

  result = [v1 collectionView];
  if (!result)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v9 = result;
  sub_1B9FF5DD8();

  result = [v1 collectionView];
  if (!result)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v10 = result;
  sub_1B9F39D20();

  result = [v1 collectionView];
  if (!result)
  {
LABEL_21:
    __break(1u);
    return result;
  }

  v11 = result;
  v12 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  sub_1BA162F3C(v12, v13);
}

void sub_1BA17E070(uint64_t a1)
{
  v23.receiver = v1;
  v23.super_class = type metadata accessor for ProfileOverviewViewController();
  objc_msgSendSuper2(&v23, sel_traitCollectionDidChange_, a1);
  if ((_UISolariumEnabled() & 1) == 0)
  {
    sub_1BA17F870(1, sub_1BA17C19C, &unk_1F380A7A0, sub_1BA1811DC, &block_descriptor_75);
  }

  v3 = OBJC_IVAR____TtC18HealthExperienceUI29ProfileOverviewViewController_navigationBarTitleView;
  swift_beginAccess();
  v4 = *&v1[v3];
  if (!v4)
  {
    goto LABEL_12;
  }

  type metadata accessor for ProfileNavigationBarView();
  v5 = swift_dynamicCastClass();
  if (!v5)
  {
    goto LABEL_12;
  }

  v6 = v5;
  v7 = v4;
  v8 = [v1 collectionView];
  if (v8)
  {
    v9 = v8;
    sub_1BA17C19C();
    v11 = v10;
    [v9 contentOffset];
    v13 = v12;
    [v9 adjustedContentInset];
    v15 = v14;

    if (v11 >= v13 + v15)
    {
      v16 = 0.0;
    }

    else
    {
      v16 = 1.0;
    }

    [*(v6 + OBJC_IVAR____TtC18HealthExperienceUI24ProfileNavigationBarView_contentView) alpha];
    if (v16 == v17)
    {
    }

    else
    {
      v18 = swift_allocObject();
      *(v18 + 16) = v6;
      *(v18 + 24) = v16;
      v19 = objc_opt_self();
      aBlock[4] = sub_1BA090900;
      aBlock[5] = v18;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1B9F0B040;
      aBlock[3] = &block_descriptor_38;
      v20 = _Block_copy(aBlock);
      v21 = v7;

      [v19 animateWithDuration:v20 animations:0.2];

      _Block_release(v20);
    }

LABEL_12:
    sub_1BA17D74C();
    return;
  }

  __break(1u);
}

void sub_1BA17E51C()
{
  v18 = sub_1BA4A3678();
  v1 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v3 = &v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA18090C(0, &qword_1EDC6E200, MEMORY[0x1E69A3108], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v18 - v5;
  v7 = sub_1BA4A2888();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [*&v0[OBJC_IVAR____TtC18HealthExperienceUI29ProfileOverviewViewController_providedHealthStore] profileIdentifier];
  v19 = v0;
  v13 = *(**(*&v0[OBJC_IVAR____TtC18HealthExperienceUI29ProfileOverviewViewController_profileAllDataDataSource] + OBJC_IVAR____TtC18HealthExperienceUI24ProfileAllDataDataSource_profileInformationDataSource) + 760);

  v13(v14);

  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_1BA180970(v6, &qword_1EDC6E200, MEMORY[0x1E69A3108]);
  }

  else
  {
    (*(v8 + 32))(v11, v6, v7);
    sub_1BA4A2AB8();
    (*(v8 + 8))(v11, v7);
  }

  v15 = v18;
  (*(v1 + 104))(v3, *MEMORY[0x1E69A2C30], v18);
  v16 = v12;
  v17 = sub_1BA4A35B8();

  (*(v1 + 8))(v3, v15);
  [v19 setUserActivity_];
}

id sub_1BA17E894(void *a1)
{
  v2 = v1;
  v100 = v2;
  ObjectType = swift_getObjectType();
  v4 = sub_1BA4A3EA8();
  v98 = *(v4 - 8);
  v99 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v89[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v7);
  v96 = &v89[-v8];
  sub_1BA18090C(0, &qword_1EBBED070, MEMORY[0x1E69A2C78], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v89[-v10];
  v12 = sub_1BA4A3678();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v94 = &v89[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v15);
  v95 = &v89[-v16];
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v89[-v18];
  v21 = MEMORY[0x1EEE9AC00](v20);
  v23 = &v89[-v22];
  v101 = a1;
  v24 = [a1 activityType];
  _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();

  sub_1BA4A3688();
  v25 = &off_1E7EEF000;
  if ((*(v13 + 48))(v11, 1, v12) != 1)
  {
    (*(v13 + 32))(v23, v11, v12);
    v37 = *(v13 + 16);
    v37(v19, v23, v12);
    v38 = (*(v13 + 88))(v19, v12);
    v39 = *MEMORY[0x1E69A2C20];
    v93 = v13;
    if (v38 == v39 || v38 == *MEMORY[0x1E69A2C60] || v38 == *MEMORY[0x1E69A2C00])
    {
      v41 = v100;
      v55 = *&v100[OBJC_IVAR____TtC18HealthExperienceUI29ProfileOverviewViewController_providedHealthStore];
      ObjectType = v23;
      v98 = OBJC_IVAR____TtC18HealthExperienceUI29ProfileOverviewViewController_providedHealthExperienceStore;
      v56 = OBJC_IVAR____TtC18HealthExperienceUI29ProfileOverviewViewController_pinnedContentManager;
      sub_1B9F0A534(&v100[OBJC_IVAR____TtC18HealthExperienceUI29ProfileOverviewViewController_pinnedContentManager], &v109);
      v99 = 0x80000001BA4EF6A0;
      if (qword_1EDC5E100 != -1)
      {
        swift_once();
      }

      v57 = sub_1BA4A1318();
      v59 = v58;
      v60 = sub_1BA4A6758();
      v61 = [objc_opt_self() systemImageNamed_];

      sub_1B9F0A534(v41 + v98, v107);
      sub_1B9F0A534(v41 + v56, v106);
      sub_1B9F0A534(v107, v105);
      sub_1B9F0A534(v106, v104);
      v62 = swift_allocObject();
      *(v62 + 16) = v55;
      sub_1B9F1134C(v107, v62 + 24);
      sub_1B9F1134C(v106, v62 + 64);
      v103[0] = type metadata accessor for ProfileNavigationCollectionViewCell();
      sub_1BA1809F0();
      v63 = v55;
      v64 = sub_1BA4A6808();
      v108 = v63;
      v112 = 0xD000000000000037;
      v113 = v99;
      v114 = v64;
      v115 = v65;
      v116 = v57;
      v117 = v59;
      v118 = v61;
      v119 = sub_1BA1809E0;
      v120 = v62;
      v66 = v63;

      sub_1BA180A38(&v108);
      sub_1B9F0A534(v105, v103);
      sub_1B9F0A534(v104, v102);
      objc_allocWithZone(type metadata accessor for ProfileCategoriesViewController());
      v67 = v66;
      v68 = sub_1BA3F9C88(v67, v103, v102);

      __swift_destroy_boxed_opaque_existential_1(v105);
      __swift_destroy_boxed_opaque_existential_1(v104);
      v69 = [v41 navigationController];
      if (v69)
      {
        v70 = v69;
        [v69 pushViewController:v68 animated:0];
      }

      v25 = &off_1E7EEF000;
      v34 = v101;
      [v68 restoreUserActivityState_];

      (*(v93 + 8))(ObjectType, v12);
    }

    else
    {
      if (v38 != *MEMORY[0x1E69A2C28])
      {
        v71 = v96;
        sub_1BA4A3DD8();
        v72 = v95;
        v37(v95, v23, v12);
        v73 = sub_1BA4A3E88();
        v74 = sub_1BA4A6F98();
        if (os_log_type_enabled(v73, v74))
        {
          v75 = v72;
          v76 = swift_slowAlloc();
          v92 = swift_slowAlloc();
          *&v107[0] = v92;
          *v76 = 136446466;
          v108 = ObjectType;
          swift_getMetatypeMetadata();
          v77 = sub_1BA4A6808();
          v91 = v73;
          v79 = sub_1B9F0B82C(v77, v78, v107);
          v90 = v74;
          v80 = v79;

          *(v76 + 4) = v80;
          *(v76 + 12) = 2080;
          v37(v94, v75, v12);
          v81 = sub_1BA4A6808();
          ObjectType = v23;
          v83 = v82;
          v84 = *(v93 + 8);
          v84(v75, v12);
          v85 = sub_1B9F0B82C(v81, v83, v107);

          *(v76 + 14) = v85;
          v86 = v91;
          _os_log_impl(&dword_1B9F07000, v91, v90, "[%{public}s]: no restoration configured for %s", v76, 0x16u);
          v87 = v92;
          swift_arrayDestroy();
          MEMORY[0x1BFAF43A0](v87, -1, -1);
          MEMORY[0x1BFAF43A0](v76, -1, -1);

          (*(v98 + 8))(v96, v99);
          v84(ObjectType, v12);
        }

        else
        {

          v84 = *(v93 + 8);
          v84(v72, v12);
          (*(v98 + 8))(v71, v99);
          v84(v23, v12);
        }

        v34 = v101;
        v84(v19, v12);
        v35 = type metadata accessor for ProfileOverviewViewController();
        v122 = v100;
        v36 = &v122;
        v25 = &off_1E7EEF000;
        goto LABEL_23;
      }

      v40 = v23;
      v41 = v100;
      v42 = *&v100[OBJC_IVAR____TtC18HealthExperienceUI29ProfileOverviewViewController_providedHealthStore];
      sub_1B9F0A534(&v100[OBJC_IVAR____TtC18HealthExperienceUI29ProfileOverviewViewController_pinnedContentManager], &v108);
      v43 = objc_allocWithZone(type metadata accessor for ProfileViewController());
      v44 = v110;
      v45 = v111;
      v46 = __swift_mutable_project_boxed_opaque_existential_1(&v108, v110);
      v47 = MEMORY[0x1EEE9AC00](v46);
      v49 = &v89[-((v48 + 15) & 0xFFFFFFFFFFFFFFF0)];
      (*(v50 + 16))(v49, v47);
      v51 = v42;
      v52 = sub_1BA38A128(v51, v49, v43, v44, v45);

      __swift_destroy_boxed_opaque_existential_1(&v108);
      v53 = [v41 navigationController];
      if (v53)
      {
        v54 = v53;
        [v53 pushViewController:v52 animated:0];

        (*(v93 + 8))(v40, v12);
      }

      else
      {
        (*(v93 + 8))(v40, v12);
      }

      v34 = v101;
      v25 = &off_1E7EEF000;
    }

    v35 = type metadata accessor for ProfileOverviewViewController();
    v121 = v41;
    v36 = &v121;
    goto LABEL_23;
  }

  sub_1BA180970(v11, &qword_1EBBED070, MEMORY[0x1E69A2C78]);
  sub_1BA4A3E48();
  v26 = sub_1BA4A3E88();
  v27 = sub_1BA4A6FA8();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    *&v107[0] = v29;
    *v28 = 136446210;
    v108 = ObjectType;
    swift_getMetatypeMetadata();
    v30 = sub_1BA4A6808();
    v32 = sub_1B9F0B82C(v30, v31, v107);
    v25 = &off_1E7EEF000;

    *(v28 + 4) = v32;
    _os_log_impl(&dword_1B9F07000, v26, v27, "[%{public}s] user activity passed in does not have a valid activity type", v28, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v29);
    MEMORY[0x1BFAF43A0](v29, -1, -1);
    MEMORY[0x1BFAF43A0](v28, -1, -1);
  }

  (*(v98 + 8))(v6, v99);
  v33 = v100;
  v34 = v101;
  v35 = type metadata accessor for ProfileOverviewViewController();
  v123.receiver = v33;
  v36 = &v123;
LABEL_23:
  v36->super_class = v35;
  return objc_msgSendSuper2(v36, v25[354], v34);
}

id ProfileOverviewViewController.__allocating_init(collectionViewLayout:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCollectionViewLayout_];

  return v3;
}

uint64_t sub_1BA17F554()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC18HealthExperienceUI29ProfileOverviewViewController_providedHealthExperienceStore);
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC18HealthExperienceUI29ProfileOverviewViewController_pinnedContentManager);

  return __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC18HealthExperienceUI29ProfileOverviewViewController_gradientColorProvider);
}

id ProfileOverviewViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ProfileOverviewViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1BA17F870(char a1, double (*a2)(void), uint64_t a3, uint64_t a4, uint64_t a5)
{
  if ((_UISolariumEnabled() & 1) == 0)
  {
    v10 = [v5 navigationItem];
    [v10 _manualScrollEdgeAppearanceProgress];
    v12 = v11;

    v13 = [v5 collectionView];
    if (v13)
    {
      v14 = v13;
      v15 = a2();
      [v14 contentOffset];
      v17 = v16;
      [v14 adjustedContentInset];
      v19 = v18;

      if (v15 >= v17 + v19)
      {
        v20 = 0.0;
      }

      else
      {
        v20 = 1.0;
      }

      if (v12 != v20)
      {
        if (a1)
        {
          v21 = objc_opt_self();
          v22 = swift_allocObject();
          *(v22 + 16) = v5;
          *(v22 + 24) = v20;
          aBlock[4] = a4;
          aBlock[5] = v22;
          aBlock[0] = MEMORY[0x1E69E9820];
          aBlock[1] = 1107296256;
          aBlock[2] = sub_1B9F0B040;
          aBlock[3] = a5;
          v23 = _Block_copy(aBlock);
          v24 = v5;

          [v21 animateWithDuration:v23 animations:0.2];
          _Block_release(v23);
        }

        else
        {
          v25 = [v5 navigationItem];
          [v25 _setManualScrollEdgeAppearanceProgress_];
        }
      }
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_1BA17FA8C(double (*a1)(void))
{
  if ((_UISolariumEnabled() & 1) == 0)
  {
    v3 = [v1 collectionView];
    if (v3)
    {
      v4 = v3;
      v5 = a1();
      [v4 contentOffset];
      v7 = v6;
      [v4 adjustedContentInset];
      v9 = v8;

      if (v5 >= v7 + v9)
      {
        v11 = [objc_opt_self() effectWithStyle_];
        v23 = [objc_opt_self() effectForBlurEffect:v11 style:4];

        v10 = [v1 navigationController];
      }

      else
      {
        v10 = [v1 navigationController];
      }

      v12 = v10;
      if (v12)
      {
        v13 = v12;
        v14 = [v12 navigationBar];

        v15 = [v14 items];
        if (v15)
        {
          sub_1B9F0ADF8(0, &qword_1EBBED078);
          v16 = sub_1BA4A6B08();

          if (v16 >> 62)
          {
            goto LABEL_20;
          }

          for (i = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1BA4A7CC8())
          {
            v18 = 0;
            while (1)
            {
              if ((v16 & 0xC000000000000001) != 0)
              {
                v19 = MEMORY[0x1BFAF2860](v18, v16);
              }

              else
              {
                if (v18 >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_19;
                }

                v19 = *(v16 + 8 * v18 + 32);
              }

              v20 = v19;
              v21 = v18 + 1;
              if (__OFADD__(v18, 1))
              {
                break;
              }

              sub_1BA180E78(v19, v22);

              ++v18;
              if (v21 == i)
              {
                goto LABEL_21;
              }
            }

            __break(1u);
LABEL_19:
            __break(1u);
LABEL_20:
            ;
          }

LABEL_21:
        }
      }
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_1BA17FD14()
{
  if ((_UISolariumEnabled() & 1) == 0)
  {
    sub_1BA17F870(1, sub_1BA17C19C, &unk_1F380A7A0, sub_1BA1811DC, &block_descriptor_75);
  }

  v1 = OBJC_IVAR____TtC18HealthExperienceUI29ProfileOverviewViewController_navigationBarTitleView;
  swift_beginAccess();
  v2 = *&v0[v1];
  if (!v2)
  {
    goto LABEL_12;
  }

  type metadata accessor for ProfileNavigationBarView();
  v3 = swift_dynamicCastClass();
  if (!v3)
  {
    goto LABEL_12;
  }

  v4 = v3;
  v5 = v2;
  v6 = [v0 collectionView];
  if (v6)
  {
    v7 = v6;
    sub_1BA17C19C();
    v9 = v8;
    [v7 contentOffset];
    v11 = v10;
    [v7 adjustedContentInset];
    v13 = v12;

    if (v9 >= v11 + v13)
    {
      v14 = 0.0;
    }

    else
    {
      v14 = 1.0;
    }

    [*(v4 + OBJC_IVAR____TtC18HealthExperienceUI24ProfileNavigationBarView_contentView) alpha];
    if (v14 == v15)
    {
    }

    else
    {
      v16 = swift_allocObject();
      *(v16 + 16) = v4;
      *(v16 + 24) = v14;
      v17 = objc_opt_self();
      aBlock[4] = sub_1BA091E04;
      aBlock[5] = v16;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1B9F0B040;
      aBlock[3] = &block_descriptor_69;
      v18 = _Block_copy(aBlock);
      v19 = v5;

      [v17 animateWithDuration:v18 animations:0.2];

      _Block_release(v18);
    }

LABEL_12:
    sub_1BA17FA8C(sub_1BA17C19C);
    return;
  }

  __break(1u);
}

void sub_1BA17FF78()
{
  if ((_UISolariumEnabled() & 1) == 0)
  {
    sub_1BA17F870(1, sub_1BA17C3C8, &unk_1F380A6B0, sub_1BA1811DC, &block_descriptor_56_0);
  }

  v1 = OBJC_IVAR____TtC18HealthExperienceUI35SharedProfileOverviewViewController_navigationBarTitleView;
  swift_beginAccess();
  v2 = *&v0[v1];
  if (!v2)
  {
    goto LABEL_12;
  }

  type metadata accessor for ProfileNavigationBarView();
  v3 = swift_dynamicCastClass();
  if (!v3)
  {
    goto LABEL_12;
  }

  v4 = v3;
  v5 = v2;
  v6 = [v0 collectionView];
  if (v6)
  {
    v7 = v6;
    sub_1BA17C3C8();
    v9 = v8;
    [v7 contentOffset];
    v11 = v10;
    [v7 adjustedContentInset];
    v13 = v12;

    if (v9 >= v11 + v13)
    {
      v14 = 0.0;
    }

    else
    {
      v14 = 1.0;
    }

    [*(v4 + OBJC_IVAR____TtC18HealthExperienceUI24ProfileNavigationBarView_contentView) alpha];
    if (v14 == v15)
    {
    }

    else
    {
      v16 = swift_allocObject();
      *(v16 + 16) = v4;
      *(v16 + 24) = v14;
      v17 = objc_opt_self();
      aBlock[4] = sub_1BA091E04;
      aBlock[5] = v16;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1B9F0B040;
      aBlock[3] = &block_descriptor_50_0;
      v18 = _Block_copy(aBlock);
      v19 = v5;

      [v17 animateWithDuration:v18 animations:0.2];

      _Block_release(v18);
    }

LABEL_12:
    sub_1BA17FA8C(sub_1BA17C3C8);
    return;
  }

  __break(1u);
}

void sub_1BA1801E0(void *a1, double a2)
{
  v3 = [a1 navigationItem];
  [v3 _setManualScrollEdgeAppearanceProgress_];
}

void sub_1BA180244(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = *(Strong + OBJC_IVAR____TtC18HealthExperienceUI42PreviewSharedProfileOverviewViewController_gradientView);
    v4 = *(Strong + OBJC_IVAR____TtC18HealthExperienceUI42PreviewSharedProfileOverviewViewController_gradientView + 8);
    v5 = Strong;
    ObjectType = swift_getObjectType();
    v7 = *(v4 + 8);
    v8 = v3;
    v7(v1, ObjectType, v4);
  }
}

void sub_1BA1802FC(uint64_t *a1, uint64_t a2, void *a3)
{
  v4 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong + *a3;
    v7 = Strong;
    swift_beginAccess();
    v8 = *v6;
    v9 = *(v6 + 8);
    ObjectType = swift_getObjectType();
    v11 = *(v9 + 8);
    v12 = v8;
    v11(v4, ObjectType, v9);
  }
}

char *sub_1BA1803C4(void *a1, void *a2, uint64_t a3, void *a4)
{
  v5 = v4;
  v33 = a4;
  sub_1BA18090C(0, &qword_1EDC6E200, MEMORY[0x1E69A3108], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v32 - v10;
  v12 = sub_1BA4A2888();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v32 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v5 + OBJC_IVAR____TtC18HealthExperienceUI29ProfileOverviewViewController_navigationBarTitleView) = 0;
  v15 = (v5 + OBJC_IVAR____TtC18HealthExperienceUI29ProfileOverviewViewController_gradientView);
  type metadata accessor for ProfileGradientWithFadeView();
  *v15 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v15[1] = &protocol witness table for ProfileGradientWithFadeView;
  *(v5 + OBJC_IVAR____TtC18HealthExperienceUI29ProfileOverviewViewController_gradientSubscriber) = 0;
  v16 = OBJC_IVAR____TtC18HealthExperienceUI29ProfileOverviewViewController_providedHealthStore;
  *(v5 + OBJC_IVAR____TtC18HealthExperienceUI29ProfileOverviewViewController_providedHealthStore) = a1;
  sub_1B9F0A534(a2, v5 + OBJC_IVAR____TtC18HealthExperienceUI29ProfileOverviewViewController_providedHealthExperienceStore);
  sub_1B9F0A534(a3, v5 + OBJC_IVAR____TtC18HealthExperienceUI29ProfileOverviewViewController_pinnedContentManager);
  sub_1BA4A2B38();
  v17 = a1;
  *(v5 + OBJC_IVAR____TtC18HealthExperienceUI29ProfileOverviewViewController_syncHandler) = sub_1BA4A2B18();
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v18 = a3;
  v19 = sub_1BA4A1B68();
  v20 = *(v5 + v16);
  sub_1B9F0A534(a2, v35);
  sub_1B9F0A534(a3, v34);
  type metadata accessor for ProfileAllDataDataSource();
  swift_allocObject();
  v21 = sub_1BA042DF0(v19, v20, v35, v34);

  *(v5 + OBJC_IVAR____TtC18HealthExperienceUI29ProfileOverviewViewController_profileAllDataDataSource) = v21;
  v22 = (v5 + OBJC_IVAR____TtC18HealthExperienceUI29ProfileOverviewViewController_gradientColorProvider);
  v22[3] = type metadata accessor for ProfileGradientsProvider();
  v22[4] = &protocol witness table for ProfileGradientsProvider;
  v23 = v33;
  *v22 = v33;

  v24 = v23;
  v25 = CompoundDataSourceCollectionViewController.init(dataSource:)(v21);
  v26 = *(**(*&v25[OBJC_IVAR____TtC18HealthExperienceUI29ProfileOverviewViewController_profileAllDataDataSource] + OBJC_IVAR____TtC18HealthExperienceUI24ProfileAllDataDataSource_profileInformationDataSource) + 760);
  v27 = v25;

  v26(v28);

  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_1BA180970(v11, &qword_1EDC6E200, MEMORY[0x1E69A3108]);
    v29 = 0;
  }

  else
  {
    v30 = v32;
    (*(v13 + 32))(v32, v11, v12);
    sub_1BA4A2AB8();
    (*(v13 + 8))(v30, v12);
    v29 = sub_1BA4A6758();
  }

  [v27 setTitle_];

  __swift_destroy_boxed_opaque_existential_1(v18);
  __swift_destroy_boxed_opaque_existential_1(a2);
  return v27;
}

void sub_1BA1807E0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, void, void))
{
  if (!*a2)
  {
    sub_1BA18090C(255, &qword_1EDC6E200, MEMORY[0x1E69A3108], MEMORY[0x1E69E6720]);
    v7 = a3(a1, v6, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7410]);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1BA180880(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, void, void))
{
  result = *a1;
  if (!result)
  {
    sub_1BA1807E0(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1BA1808C4(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1BA18090C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1BA180970(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1BA18090C(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_1BA1809F0()
{
  result = qword_1EBBE9DD8;
  if (!qword_1EBBE9DD8)
  {
    type metadata accessor for ProfileNavigationCollectionViewCell();
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_1EBBE9DD8);
  }

  return result;
}

id sub_1BA180E78(void *a1, uint64_t a2)
{
  v3 = [a1 leftBarButtonItems];
  if (v3)
  {
    v4 = v3;
    sub_1B9F0ADF8(0, &qword_1EDC6B600);
    v5 = sub_1BA4A6B08();

    v25 = a1;
    if (v5 >> 62)
    {
      goto LABEL_18;
    }

    for (i = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1BA4A7CC8())
    {
      v7 = 0;
      while (1)
      {
        if ((v5 & 0xC000000000000001) != 0)
        {
          v9 = MEMORY[0x1BFAF2860](v7, v5);
        }

        else
        {
          if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_17;
          }

          v9 = *(v5 + 8 * v7 + 32);
        }

        v10 = v9;
        v11 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          break;
        }

        v12 = [v9 customView];
        if (v12)
        {
          v8 = v12;
          objc_opt_self();
          v13 = swift_dynamicCastObjCClass();
          if (v13)
          {
            [v13 setEffect_];
          }
        }

        else
        {
          v8 = v10;
        }

        ++v7;
        if (v11 == i)
        {
          goto LABEL_19;
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
LABEL_18:
      ;
    }

LABEL_19:
  }

  result = [a1 rightBarButtonItems];
  if (result)
  {
    v15 = result;
    sub_1B9F0ADF8(0, &qword_1EDC6B600);
    v16 = sub_1BA4A6B08();

    if (v16 >> 62)
    {
      goto LABEL_37;
    }

    for (j = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10); j; j = sub_1BA4A7CC8())
    {
      for (k = 0; ; ++k)
      {
        if ((v16 & 0xC000000000000001) != 0)
        {
          v20 = MEMORY[0x1BFAF2860](k, v16);
        }

        else
        {
          if (k >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_36;
          }

          v20 = *(v16 + 8 * k + 32);
        }

        v21 = v20;
        v22 = k + 1;
        if (__OFADD__(k, 1))
        {
          break;
        }

        v23 = [v20 customView];
        if (v23)
        {
          v19 = v23;
          objc_opt_self();
          v24 = swift_dynamicCastObjCClass();
          if (v24)
          {
            [v24 setEffect_];
          }
        }

        else
        {
          v19 = v21;
        }

        if (v22 == j)
        {
        }
      }

      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      ;
    }
  }

  return result;
}

uint64_t sub_1BA181208@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v5 = *(v3 + 16);
  v4 = *(v3 + 24);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = v4;
  *a2 = sub_1B9F89DF8;
  a2[1] = v6;
}

uint64_t sub_1BA181288(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  v6 = *a2;
  swift_beginAccess();
  *(v6 + 16) = sub_1BA1847C4;
  *(v6 + 24) = v5;
}

uint64_t sub_1BA181318()
{
  swift_beginAccess();
  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_1BA181364(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

uint64_t sub_1BA1813B8@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v5 = *(v3 + 32);
  v4 = *(v3 + 40);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = v4;
  *a2 = sub_1B9F7B0CC;
  a2[1] = v6;
}

uint64_t sub_1BA181438(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  v6 = *a2;
  swift_beginAccess();
  *(v6 + 32) = sub_1BA1846E4;
  *(v6 + 40) = v5;
}

uint64_t sub_1BA1814C8()
{
  swift_beginAccess();
  v1 = *(v0 + 32);

  return v1;
}

uint64_t sub_1BA181514(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
}

uint64_t HelpTileActionHandler.deinit()
{

  return v0;
}

uint64_t HelpTileActionHandler.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t HelpTile.ViewModel.init(image:title:body:actionButtonTitle:isDismissible:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>)
{
  *a9 = result;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  return result;
}

uint64_t sub_1BA1815E8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI8HelpTile_actionHandler;
  swift_beginAccess();
  *(v3 + v4) = v2;
}

uint64_t sub_1BA181698(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI8HelpTile_actionHandler;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_1BA181750@<X0>(void *a1@<X0>, __int128 *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC18HealthExperienceUI8HelpTile_viewModel);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  *&v11[9] = *(v3 + 41);
  v10[1] = v5;
  *v11 = v6;
  v10[0] = v4;
  v7 = v3[1];
  *a2 = *v3;
  a2[1] = v7;
  a2[2] = v3[2];
  *(a2 + 41) = *(v3 + 41);
  return sub_1BA1846EC(v10, v9, &unk_1EBBED090, &type metadata for HelpTile.ViewModel, MEMORY[0x1E69E6720], sub_1B9F23348);
}

uint64_t sub_1BA181810(__int128 *a1, void *a2)
{
  v2 = a1[1];
  v24 = *a1;
  v25 = v2;
  v26[0] = a1[2];
  *(v26 + 9) = *(a1 + 41);
  v3 = *a2 + OBJC_IVAR____TtC18HealthExperienceUI8HelpTile_viewModel;
  swift_beginAccess();
  v4 = *v3;
  v5 = *(v3 + 16);
  v6 = *(v3 + 32);
  *(v28 + 9) = *(v3 + 41);
  v27[1] = v5;
  v28[0] = v6;
  v27[0] = v4;
  v7 = v24;
  v8 = v25;
  v9 = v26[0];
  *(v3 + 41) = *(v26 + 9);
  *(v3 + 16) = v8;
  *(v3 + 32) = v9;
  *v3 = v7;
  v10 = MEMORY[0x1E69E6720];
  sub_1BA1846EC(&v24, &v29, &unk_1EBBED090, &type metadata for HelpTile.ViewModel, MEMORY[0x1E69E6720], sub_1B9F23348);
  result = sub_1BA184228(v27, &unk_1EBBED090, &type metadata for HelpTile.ViewModel, v10, sub_1B9F23348);
  v12 = *v3;
  v13 = *(v3 + 41);
  v14 = *(v3 + 32);
  v30 = *(v3 + 16);
  v31[0] = v14;
  *(v31 + 9) = v13;
  v29 = v12;
  v35 = *v3;
  v15 = *(v3 + 40);
  v32 = *(v3 + 24);
  v33 = v15;
  v34 = *(v3 + 56);
  if (v30)
  {
    v17 = v35;
    v18 = v30;
    v19 = v32;
    v20 = v33;
    v21 = v34;
    v22[0] = v29;
    v22[1] = v30;
    v23[0] = v31[0];
    *(v23 + 9) = *(v31 + 9);
    sub_1BA183784(v22, &v16);
    sub_1BA1832F0(&v17);
    return sub_1BA184228(&v29, &unk_1EBBED090, &type metadata for HelpTile.ViewModel, MEMORY[0x1E69E6720], sub_1B9F23348);
  }

  return result;
}

uint64_t sub_1BA1819FC@<X0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtC18HealthExperienceUI8HelpTile_viewModel);
  swift_beginAccess();
  v4 = v3[1];
  v9[0] = *v3;
  v9[1] = v4;
  v10[0] = v3[2];
  v5 = v10[0];
  *(v10 + 9) = *(v3 + 41);
  v6 = *(v10 + 9);
  *a1 = v9[0];
  a1[1] = v4;
  a1[2] = v5;
  *(a1 + 41) = v6;
  return sub_1BA1846EC(v9, v8, &unk_1EBBED090, &type metadata for HelpTile.ViewModel, MEMORY[0x1E69E6720], sub_1B9F23348);
}

uint64_t sub_1BA181AAC(__int128 *a1)
{
  v3 = (v1 + OBJC_IVAR____TtC18HealthExperienceUI8HelpTile_viewModel);
  swift_beginAccess();
  v4 = v3[1];
  v17[0] = *v3;
  v17[1] = v4;
  v18[0] = v3[2];
  *(v18 + 9) = *(v3 + 41);
  v5 = a1[1];
  *v3 = *a1;
  v3[1] = v5;
  v3[2] = a1[2];
  *(v3 + 41) = *(a1 + 41);
  result = sub_1BA184228(v17, &unk_1EBBED090, &type metadata for HelpTile.ViewModel, MEMORY[0x1E69E6720], sub_1B9F23348);
  v7 = v3[1];
  v19 = *v3;
  v20 = v7;
  v21[0] = v3[2];
  *(v21 + 9) = *(v3 + 41);
  if (v7)
  {
    v12 = *(v3 + 24);
    v13 = *(v3 + 40);
    v8 = v3[1];
    v10 = *v3;
    v11 = v20;
    v14 = *(v3 + 56);
    v15[0] = v10;
    v15[1] = v8;
    v16[0] = v3[2];
    *(v16 + 9) = *(v3 + 41);
    sub_1BA183784(v15, &v9);
    sub_1BA1832F0(&v10);
    return sub_1BA184228(&v19, &unk_1EBBED090, &type metadata for HelpTile.ViewModel, MEMORY[0x1E69E6720], sub_1B9F23348);
  }

  return result;
}

void (*sub_1BA181C1C(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0xD0uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI8HelpTile_viewModel;
  *(v3 + 192) = v1;
  *(v3 + 200) = v4;
  swift_beginAccess();
  return sub_1BA181CA8;
}

void sub_1BA181CA8(void **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    swift_endAccess();
  }

  else
  {
    v3 = (*(v2 + 24) + *(v2 + 25));
    swift_endAccess();
    v5 = v3[1];
    v4 = v3[2];
    v6 = *v3;
    *(v2 + 41) = *(v3 + 41);
    *(v2 + 1) = v5;
    *(v2 + 2) = v4;
    *v2 = v6;
    v7 = *(v2 + 2);
    if (v7)
    {
      v8 = (*(v2 + 24) + *(v2 + 25));
      v10 = v8[1];
      v13 = *v8;
      v9 = v13;
      v14 = v7;
      v15 = *(v8 + 24);
      v16 = *(v8 + 40);
      v17 = *(v8 + 56);
      v11 = *(v8 + 41);
      v12 = v8[2];
      *(v2 + 5) = v10;
      *(v2 + 6) = v12;
      *(v2 + 105) = v11;
      *(v2 + 4) = v9;
      sub_1BA183784((v2 + 64), (v2 + 128));
      sub_1BA1832F0(&v13);
      sub_1BA184228(v2, &unk_1EBBED090, &type metadata for HelpTile.ViewModel, MEMORY[0x1E69E6720], sub_1B9F23348);
    }
  }

  free(v2);
}

id sub_1BA181DB8(double a1, double a2, double a3, double a4)
{
  v9 = sub_1BA4A79A8();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v10 = MEMORY[0x1E69E7CC0];
  *&v4[OBJC_IVAR____TtC18HealthExperienceUI8HelpTile_accessibilityConstraints] = MEMORY[0x1E69E7CC0];
  *&v4[OBJC_IVAR____TtC18HealthExperienceUI8HelpTile_nonAccessibilityConstraints] = v10;
  v11 = OBJC_IVAR____TtC18HealthExperienceUI8HelpTile_actionHandler;
  type metadata accessor for HelpTileActionHandler();
  v12 = swift_allocObject();
  v12[2] = nullsub_1;
  v12[3] = 0;
  v12[4] = nullsub_1;
  v12[5] = 0;
  *&v4[v11] = v12;
  v13 = &v4[OBJC_IVAR____TtC18HealthExperienceUI8HelpTile_viewModel];
  *v13 = 0u;
  *(v13 + 1) = 0u;
  *(v13 + 2) = 0u;
  *(v13 + 41) = 0u;
  v14 = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) initWithFrame_];
  *&v4[OBJC_IVAR____TtC18HealthExperienceUI8HelpTile_imageView] = v14;
  v15 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) initWithFrame_];
  *&v4[OBJC_IVAR____TtC18HealthExperienceUI8HelpTile_titleLabel] = v15;
  v16 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) initWithFrame_];
  *&v4[OBJC_IVAR____TtC18HealthExperienceUI8HelpTile_bodyLabel] = v16;
  v17 = [objc_allocWithZone(MEMORY[0x1E69DD250]) initWithFrame_];
  *&v4[OBJC_IVAR____TtC18HealthExperienceUI8HelpTile_separatorView] = v17;
  sub_1B9F0ADF8(0, &qword_1EDC5E0A0);
  sub_1BA4A7968();
  *&v4[OBJC_IVAR____TtC18HealthExperienceUI8HelpTile_actionButton] = sub_1BA4A79B8();
  *&v4[OBJC_IVAR____TtC18HealthExperienceUI8HelpTile_dismissButton] = sub_1BA184288();
  v21.receiver = v4;
  v21.super_class = type metadata accessor for HelpTile();
  v18 = objc_msgSendSuper2(&v21, sel_initWithFrame_, a1, a2, a3, a4);
  sub_1BA182224();
  sub_1BA182528(v19);
  sub_1BA182808();

  return v18;
}

void sub_1BA182078(void *a1)
{
  v13.receiver = v1;
  v13.super_class = type metadata accessor for HelpTile();
  objc_msgSendSuper2(&v13, sel_traitCollectionDidChange_, a1);
  if (!a1)
  {
LABEL_7:
    sub_1BA1837E0();
    return;
  }

  v3 = a1;
  v4 = [v1 traitCollection];
  v5 = [v4 preferredContentSizeCategory];

  v6 = [v3 preferredContentSizeCategory];
  v7 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  v9 = v8;
  if (v7 != _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0() || v9 != v10)
  {
    v12 = sub_1BA4A8338();

    if (v12)
    {
      return;
    }

    goto LABEL_7;
  }
}

uint64_t sub_1BA182224()
{
  sub_1B9F23348(0, &qword_1EDC6B400, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BA4B79E0;
  v2 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI8HelpTile_imageView];
  *(inited + 32) = v2;
  v3 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI8HelpTile_titleLabel];
  *(inited + 40) = v3;
  v4 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI8HelpTile_bodyLabel];
  *(inited + 48) = v4;
  v5 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI8HelpTile_separatorView];
  *(inited + 56) = v5;
  v6 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI8HelpTile_actionButton];
  *(inited + 64) = v6;
  v7 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI8HelpTile_dismissButton];
  *(inited + 72) = v7;
  v8 = inited & 0xC000000000000001;
  v9 = v2;
  v10 = v3;
  v11 = v4;
  v12 = v5;
  v13 = v6;
  v14 = v7;
  if ((inited & 0xC000000000000001) != 0)
  {
    goto LABEL_21;
  }

  if (!*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_20;
  }

  for (i = v9; ; i = MEMORY[0x1BFAF2860](0, inited))
  {
    v16 = i;
    [i setTranslatesAutoresizingMaskIntoConstraints_];
    [v0 addSubview_];

    if (v8)
    {
      v17 = MEMORY[0x1BFAF2860](1, inited);
    }

    else
    {
      if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
      {
        goto LABEL_20;
      }

      v17 = *(inited + 40);
    }

    v18 = v17;
    [v17 setTranslatesAutoresizingMaskIntoConstraints_];
    [v0 addSubview_];

    if (v8)
    {
      v19 = MEMORY[0x1BFAF2860](2, inited);
    }

    else
    {
      if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) < 3uLL)
      {
        goto LABEL_20;
      }

      v19 = *(inited + 48);
    }

    v20 = v19;
    [v19 setTranslatesAutoresizingMaskIntoConstraints_];
    [v0 addSubview_];

    if (v8)
    {
      v21 = MEMORY[0x1BFAF2860](3, inited);
    }

    else
    {
      if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) < 4uLL)
      {
        goto LABEL_20;
      }

      v21 = *(inited + 56);
    }

    v22 = v21;
    [v21 setTranslatesAutoresizingMaskIntoConstraints_];
    [v0 addSubview_];

    if (v8)
    {
      v23 = MEMORY[0x1BFAF2860](4, inited);
    }

    else
    {
      if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) < 5uLL)
      {
        goto LABEL_20;
      }

      v23 = *(inited + 64);
    }

    v24 = v23;
    [v23 setTranslatesAutoresizingMaskIntoConstraints_];
    [v0 addSubview_];

    if (v8)
    {
      break;
    }

    if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) >= 6uLL)
    {
      v25 = *(inited + 72);
      goto LABEL_19;
    }

LABEL_20:
    __break(1u);
LABEL_21:
    ;
  }

  v25 = MEMORY[0x1BFAF2860](5, inited);
LABEL_19:
  v26 = v25;
  [v25 setTranslatesAutoresizingMaskIntoConstraints_];
  [v0 addSubview_];

  swift_setDeallocating();
  return swift_arrayDestroy();
}

id sub_1BA182528(double a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC18HealthExperienceUI8HelpTile_imageView);
  LODWORD(a1) = 1148846080;
  [v2 setContentCompressionResistancePriority:0 forAxis:a1];
  LODWORD(v3) = 1148846080;
  [v2 setContentHuggingPriority:0 forAxis:v3];
  v4 = *(v1 + OBJC_IVAR____TtC18HealthExperienceUI8HelpTile_titleLabel);
  v5 = objc_opt_self();
  v6 = [v5 _preferredFontForTextStyle_weight_];
  [v4 setFont_];

  [v4 setAdjustsFontForContentSizeCategory_];
  v7 = objc_opt_self();
  v8 = [v7 labelColor];
  [v4 setTextColor_];

  [v4 setNumberOfLines_];
  LODWORD(v9) = 1132068864;
  [v4 setContentCompressionResistancePriority:0 forAxis:v9];
  LODWORD(v10) = 1132068864;
  [v4 setContentHuggingPriority:0 forAxis:v10];
  v11 = *(v1 + OBJC_IVAR____TtC18HealthExperienceUI8HelpTile_bodyLabel);
  v12 = [v5 preferredFontForTextStyle_];
  [v11 setFont_];

  [v11 setAdjustsFontForContentSizeCategory_];
  v13 = [v7 secondaryLabelColor];
  [v11 setTextColor_];

  [v11 setNumberOfLines_];
  v14 = *(v1 + OBJC_IVAR____TtC18HealthExperienceUI8HelpTile_separatorView);
  v15 = [v7 separatorColor];
  [v14 setBackgroundColor_];

  [*(v1 + OBJC_IVAR____TtC18HealthExperienceUI8HelpTile_actionButton) addTarget:v1 action:sel_actionTapped forControlEvents:64];
  v16 = *(v1 + OBJC_IVAR____TtC18HealthExperienceUI8HelpTile_dismissButton);
  [v16 addTarget:v1 action:sel_dismissTapped forControlEvents:64];
  LODWORD(v17) = 1148846080;
  [v16 setContentCompressionResistancePriority:0 forAxis:v17];
  LODWORD(v18) = 1148846080;

  return [v16 setContentHuggingPriority:0 forAxis:v18];
}

void sub_1BA182808()
{
  v1 = v0;
  sub_1BA184760(0, &qword_1EDC5E0A8, MEMORY[0x1E69DC598], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v88 = &v86 - v3;
  [v0 setDirectionalLayoutMargins_];
  v4 = [v0 layoutMarginsGuide];
  sub_1B9F23348(0, &qword_1EDC6B400, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v5 = swift_allocObject();
  v86 = xmmword_1BA4B7510;
  *(v5 + 16) = xmmword_1BA4B7510;
  v6 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI8HelpTile_titleLabel];
  v7 = [v6 topAnchor];
  v8 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI8HelpTile_imageView];
  v9 = [v8 bottomAnchor];
  v10 = [v7 constraintEqualToAnchor_];

  *(v5 + 32) = v10;
  v11 = [v6 leadingAnchor];
  v12 = [v4 &selRef__totalDistance + 1];
  v13 = [v11 constraintEqualToAnchor_];

  *(v5 + 40) = v13;
  *&v0[OBJC_IVAR____TtC18HealthExperienceUI8HelpTile_accessibilityConstraints] = v5;

  v14 = swift_allocObject();
  *(v14 + 16) = v86;
  v87 = v6;
  v15 = [v6 topAnchor];
  v16 = [v4 topAnchor];
  v17 = [v15 constraintEqualToAnchor_];

  *(v14 + 32) = v17;
  v18 = [v6 leadingAnchor];
  v19 = [v8 trailingAnchor];
  v20 = [v18 constraintEqualToAnchor:v19 constant:11.0];

  *(v14 + 40) = v20;
  *&v0[OBJC_IVAR____TtC18HealthExperienceUI8HelpTile_nonAccessibilityConstraints] = v14;

  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1BA4C1F70;
  v22 = [v8 topAnchor];
  v89 = v4;
  v23 = [v4 topAnchor];
  v24 = [v22 constraintEqualToAnchor_];

  *(v21 + 32) = v24;
  v25 = [v8 leadingAnchor];
  v26 = [v4 leadingAnchor];
  v27 = [v25 &selRef:v26 numberWithInteger:? + 5];

  *(v21 + 40) = v27;
  v28 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI8HelpTile_dismissButton];
  v29 = [v28 topAnchor];
  v30 = [v0 topAnchor];
  v31 = [v29 &selRef:v30 numberWithInteger:? + 5];

  *(v21 + 48) = v31;
  v32 = [v28 trailingAnchor];
  v33 = [v0 trailingAnchor];
  v34 = [v32 &selRef:v33 numberWithInteger:? + 5];

  *(v21 + 56) = v34;
  v35 = v87;
  v36 = [v87 trailingAnchor];
  v37 = [v28 leadingAnchor];
  v38 = [v36 &selRef:v37 numberWithInteger:? + 5];

  *(v21 + 64) = v38;
  v39 = *&v1[OBJC_IVAR____TtC18HealthExperienceUI8HelpTile_bodyLabel];
  v40 = [v39 topAnchor];
  v41 = [v35 bottomAnchor];
  v42 = [v40 constraintEqualToAnchor:v41 constant:4.0];

  *(v21 + 72) = v42;
  v43 = [v39 leadingAnchor];
  v44 = [v35 leadingAnchor];
  v45 = [v43 constraintEqualToAnchor_];

  *(v21 + 80) = v45;
  v46 = [v39 trailingAnchor];
  v47 = [v89 trailingAnchor];
  v48 = [v46 constraintEqualToAnchor_];

  *(v21 + 88) = v48;
  v49 = *&v1[OBJC_IVAR____TtC18HealthExperienceUI8HelpTile_separatorView];
  v50 = [v49 heightAnchor];
  v51 = [v1 traitCollection];
  [v51 displayScale];
  v53 = v52;

  v54 = [v50 constraintEqualToConstant_];
  *(v21 + 96) = v54;
  v55 = [v49 topAnchor];
  v56 = [v39 bottomAnchor];
  v57 = [v55 constraintEqualToAnchor:v56 constant:11.0];

  *(v21 + 104) = v57;
  v58 = [v49 leadingAnchor];
  v59 = [v35 leadingAnchor];
  v60 = [v58 constraintEqualToAnchor_];

  *(v21 + 112) = v60;
  v61 = [v49 trailingAnchor];
  v62 = [v1 trailingAnchor];
  v63 = [v61 constraintEqualToAnchor_];

  *(v21 + 120) = v63;
  v64 = *&v1[OBJC_IVAR____TtC18HealthExperienceUI8HelpTile_actionButton];
  v65 = [v64 topAnchor];
  v66 = [v49 bottomAnchor];
  v67 = [v65 constraintEqualToAnchor_];

  *(v21 + 128) = v67;
  v68 = [v64 bottomAnchor];
  v69 = [v1 bottomAnchor];
  v70 = v88;
  v71 = [v68 constraintEqualToAnchor_];

  *(v21 + 136) = v71;
  v72 = v89;
  v73 = [v64 heightAnchor];
  v74 = [v73 constraintGreaterThanOrEqualToConstant_];

  *(v21 + 144) = v74;
  v75 = [v72 trailingAnchor];
  v76 = [v64 trailingAnchor];
  v77 = [v75 constraintGreaterThanOrEqualToAnchor_];

  *(v21 + 152) = v77;
  v78 = [v64 leadingAnchor];
  v79 = [v35 leadingAnchor];
  sub_1BA4A79C8();
  v80 = sub_1BA4A79A8();
  v81 = 0.0;
  if (!(*(*(v80 - 8) + 48))(v70, 1, v80))
  {
    sub_1BA4A7868();
    v81 = v82;
  }

  v83 = objc_opt_self();
  sub_1BA184228(v70, &qword_1EDC5E0A8, MEMORY[0x1E69DC598], MEMORY[0x1E69E6720], sub_1BA184760);
  v84 = [v78 constraintEqualToAnchor:v79 constant:-v81];

  *(v21 + 160) = v84;
  sub_1B9F0ADF8(0, &qword_1EDC6B570);
  v85 = sub_1BA4A6AE8();

  [v83 activateConstraints_];

  sub_1BA1837E0();
}

void sub_1BA1832F0(uint64_t *a1)
{
  v2 = v1;
  v4 = sub_1BA4A1338();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = MEMORY[0x1E69E6720];
  sub_1BA184760(0, &unk_1EDC6E290, MEMORY[0x1E6968848], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v32 - v7;
  sub_1BA184760(0, &qword_1EDC5E0A8, MEMORY[0x1E69DC598], v5);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = v32 - v14;
  v16 = *a1;
  v17 = a1[5];
  v32[0] = a1[6];
  v32[1] = v17;
  v33 = *(a1 + 56);
  [*(v2 + OBJC_IVAR____TtC18HealthExperienceUI8HelpTile_imageView) setImage_];
  v18 = *(v2 + OBJC_IVAR____TtC18HealthExperienceUI8HelpTile_titleLabel);
  v19 = sub_1BA4A6758();
  [v18 setText_];

  v20 = *(v2 + OBJC_IVAR____TtC18HealthExperienceUI8HelpTile_bodyLabel);
  v21 = sub_1BA4A6758();
  [v20 setText_];

  v22 = [objc_opt_self() _preferredFontForTextStyle_weight_];
  if (v22)
  {
    v23 = v22;
    sub_1BA4A79C8();
    v24 = sub_1BA4A79A8();
    if ((*(*(v24 - 8) + 48))(v15, 1, v24))
    {
      v25 = MEMORY[0x1E69DC598];
      v26 = MEMORY[0x1E69E6720];
      sub_1BA1846EC(v15, v11, &qword_1EDC5E0A8, MEMORY[0x1E69DC598], MEMORY[0x1E69E6720], sub_1BA184760);
      sub_1BA4A79D8();
      sub_1BA184228(v15, &qword_1EDC5E0A8, v25, v26, sub_1BA184760);
    }

    else
    {
      sub_1BA184760(0, &qword_1EDC5DBB0, sub_1B9FE9628, MEMORY[0x1E69E6F90]);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1BA4B5480;
      v28 = *MEMORY[0x1E69DB648];
      *(inited + 32) = *MEMORY[0x1E69DB648];
      *(inited + 64) = sub_1B9F0ADF8(0, &unk_1EDC5E210);
      *(inited + 40) = v23;

      v29 = v28;
      v30 = v23;
      sub_1B9FDB1C4(inited);
      swift_setDeallocating();
      sub_1BA026288(inited + 32);
      sub_1BA4A1358();
      sub_1BA4A12D8();
      v31 = sub_1BA4A12C8();
      (*(*(v31 - 8) + 56))(v8, 0, 1, v31);
      sub_1BA4A78D8();
      sub_1BA4A79D8();
    }

    [*(v2 + OBJC_IVAR____TtC18HealthExperienceUI8HelpTile_dismissButton) setHidden_];
  }

  else
  {
    __break(1u);
  }
}

void sub_1BA1837E0()
{
  v1 = [v0 traitCollection];
  v2 = [v1 preferredContentSizeCategory];

  sub_1BA4A74F8();
  v3 = objc_opt_self();
  sub_1B9F0ADF8(0, &qword_1EDC6B570);

  v4 = sub_1BA4A6AE8();

  [v3 deactivateConstraints_];

  v5 = sub_1BA4A6AE8();

  [v3 activateConstraints_];
}

void sub_1BA183A44(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a2)
  {
    v4 = sub_1BA4A6758();
    [v3 setAccessibilityIdentifier_];

    v5 = *&v3[OBJC_IVAR____TtC18HealthExperienceUI8HelpTile_imageView];

    MEMORY[0x1BFAF1350](0x6567616D492ELL, 0xE600000000000000);
    v6 = sub_1BA4A6758();

    [v5 setAccessibilityIdentifier_];

    v7 = *&v3[OBJC_IVAR____TtC18HealthExperienceUI8HelpTile_titleLabel];

    MEMORY[0x1BFAF1350](0x6554656C7469542ELL, 0xEA00000000007478);
    v8 = sub_1BA4A6758();

    [v7 setAccessibilityIdentifier_];

    v9 = *&v3[OBJC_IVAR____TtC18HealthExperienceUI8HelpTile_bodyLabel];

    MEMORY[0x1BFAF1350](0x546C69617465442ELL, 0xEB00000000747865);
    v10 = sub_1BA4A6758();

    [v9 setAccessibilityIdentifier_];

    v11 = *&v3[OBJC_IVAR____TtC18HealthExperienceUI8HelpTile_actionButton];

    MEMORY[0x1BFAF1350](0x426E6F697463412ELL, 0xED00006E6F747475);
    v12 = sub_1BA4A6758();

    [v11 setAccessibilityIdentifier_];

    v13 = *&v3[OBJC_IVAR____TtC18HealthExperienceUI8HelpTile_dismissButton];

    MEMORY[0x1BFAF1350](0x7373696D7369442ELL, 0xE800000000000000);
    v15 = sub_1BA4A6758();

    [v13 setAccessibilityIdentifier_];
  }

  else
  {
    [v2 setAccessibilityIdentifier_];
    [*&v2[OBJC_IVAR____TtC18HealthExperienceUI8HelpTile_imageView] setAccessibilityIdentifier_];
    [*&v2[OBJC_IVAR____TtC18HealthExperienceUI8HelpTile_titleLabel] setAccessibilityIdentifier_];
    [*&v2[OBJC_IVAR____TtC18HealthExperienceUI8HelpTile_bodyLabel] setAccessibilityIdentifier_];
    [*&v2[OBJC_IVAR____TtC18HealthExperienceUI8HelpTile_actionButton] setAccessibilityIdentifier_];
    v14 = *&v2[OBJC_IVAR____TtC18HealthExperienceUI8HelpTile_dismissButton];

    [v14 setAccessibilityIdentifier_];
  }
}

id HelpTile.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HelpTile();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1BA183EA0()
{
  v0 = [objc_opt_self() quaternaryLabelColor];

  return v0;
}

uint64_t sub_1BA184180(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 57))
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

uint64_t sub_1BA1841C8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 57) = 1;
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

    *(result + 57) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1BA184228(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5(0);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

id sub_1BA184288()
{
  sub_1BA184760(0, &qword_1EBBED0D8, MEMORY[0x1E69DC1B8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v19 - v1;
  v3 = sub_1BA4A79A8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v19 - v8;
  result = [objc_opt_self() _preferredFontForTextStyle_weight_];
  if (result)
  {
    v11 = result;
    v12 = [objc_opt_self() configurationWithFont:result scale:2];

    v13 = v12;
    v14 = sub_1BA4A6758();
    v15 = [objc_opt_self() systemImageNamed:v14 withConfiguration:v13];

    sub_1BA4A7818();
    v16 = v15;
    sub_1BA4A7958();
    sub_1BA4A7878();
    sub_1BA4A46A8();
    v17 = sub_1BA4A4698();
    (*(*(v17 - 8) + 56))(v2, 0, 1, v17);
    sub_1BA4A7908();
    sub_1B9F0ADF8(0, &qword_1EDC5E0A0);
    (*(v4 + 16))(v6, v9, v3);
    v18 = sub_1BA4A79B8();

    (*(v4 + 8))(v9, v3);
    return v18;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1BA1845A0()
{
  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + OBJC_IVAR____TtC18HealthExperienceUI8HelpTile_accessibilityConstraints) = MEMORY[0x1E69E7CC0];
  *(v0 + OBJC_IVAR____TtC18HealthExperienceUI8HelpTile_nonAccessibilityConstraints) = v1;
  v2 = OBJC_IVAR____TtC18HealthExperienceUI8HelpTile_actionHandler;
  type metadata accessor for HelpTileActionHandler();
  v3 = swift_allocObject();
  v3[2] = nullsub_1;
  v3[3] = 0;
  *(v0 + v2) = v3;
  v3[4] = nullsub_1;
  v3[5] = 0;
  v4 = (v0 + OBJC_IVAR____TtC18HealthExperienceUI8HelpTile_viewModel);
  *v4 = 0u;
  v4[1] = 0u;
  v4[2] = 0u;
  *(v4 + 41) = 0u;
  sub_1BA4A8018();
  __break(1u);
}

void sub_1BA184680(void *a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
  }
}

uint64_t sub_1BA1846EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = a6(0, a3, a4, a5);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

void sub_1BA184760(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1BA1847C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v10 = *(a3 + 8);
  v10(&v11, a2, a3);
  if (v11 != 2 && (v11 & 1) != 0 || (v8 = sub_1BA4A3118(), result = (*(*(v8 - 8) + 48))(a1, 1, v8), result == 1))
  {

    return (v10)(a2, a3);
  }

  else
  {
    *a4 = 0;
  }

  return result;
}

uint64_t SharingTileDisabledState.hashValue.getter()
{
  v1 = *v0;
  sub_1BA4A8488();
  MEMORY[0x1BFAF2ED0](v1);
  return sub_1BA4A84D8();
}

unint64_t sub_1BA184954()
{
  result = qword_1EBBED0E0;
  if (!qword_1EBBED0E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBED0E0);
  }

  return result;
}

uint64_t sub_1BA1849B8(uint64_t a1, uint64_t *a2)
{
  sub_1B9F68124(a1, v6);
  v3 = *a2;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI33PlaceholderTextCollectionViewCell_item;
  swift_beginAccess();
  sub_1B9F63E74(v6, v3 + v4);
  swift_endAccess();
  sub_1BA184A28();
  return sub_1B9F7B644(v6);
}

uint64_t sub_1BA184A28()
{
  v1 = v0;
  swift_getObjectType();
  v2 = sub_1BA4A3EA8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC18HealthExperienceUI33PlaceholderTextCollectionViewCell_item;
  swift_beginAccess();
  sub_1B9F68124(v1 + v6, v22);
  if (v22[3])
  {
    sub_1B9FCD918();
    if (swift_dynamicCast())
    {
      sub_1BA185DD8(&v21);
    }
  }

  else
  {
    sub_1B9F7B644(v22);
  }

  sub_1BA4A3DD8();
  v8 = v1;
  v9 = sub_1BA4A3E88();
  v10 = sub_1BA4A6FB8();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v20 = v2;
    v13 = v12;
    v22[0] = v12;
    *v11 = 136315394;
    v14 = sub_1BA4A85D8();
    v16 = sub_1B9F0B82C(v14, v15, v22);

    *(v11 + 4) = v16;
    *(v11 + 12) = 2080;
    sub_1B9F68124(v1 + v6, &v21);
    sub_1B9F0D20C(0, &qword_1EDC6E1A0, sub_1B9FCD918);
    v17 = sub_1BA4A6808();
    v19 = sub_1B9F0B82C(v17, v18, v22);

    *(v11 + 14) = v19;
    _os_log_impl(&dword_1B9F07000, v9, v10, "%s Expected PlaceholderTextItem, found unexpected item %s", v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1BFAF43A0](v13, -1, -1);
    MEMORY[0x1BFAF43A0](v11, -1, -1);

    return (*(v3 + 8))(v5, v20);
  }

  else
  {

    return (*(v3 + 8))(v5, v2);
  }
}

uint64_t sub_1BA184D18@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI33PlaceholderTextCollectionViewCell_item;
  swift_beginAccess();
  return sub_1B9F68124(v1 + v3, a1);
}

uint64_t sub_1BA184D70(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI33PlaceholderTextCollectionViewCell_item;
  swift_beginAccess();
  sub_1B9F63E74(a1, v1 + v3);
  swift_endAccess();
  sub_1BA184A28();
  return sub_1B9F7B644(a1);
}

uint64_t (*sub_1BA184DDC(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1BA184E40;
}

uint64_t sub_1BA184E40(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return sub_1BA184A28();
  }

  return result;
}

id sub_1BA184E74()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI33PlaceholderTextCollectionViewCell____lazy_storage___label;
  v2 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI33PlaceholderTextCollectionViewCell____lazy_storage___label);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI33PlaceholderTextCollectionViewCell____lazy_storage___label);
  }

  else
  {
    v4 = sub_1BA184ED4();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_1BA184ED4()
{
  v0 = sub_1BA4A3EA8();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v31 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  [v4 setTranslatesAutoresizingMaskIntoConstraints_];
  v5 = *MEMORY[0x1E69DDDC0];
  v6 = objc_opt_self();
  v7 = [v6 preferredFontDescriptorWithTextStyle:v5 compatibleWithTraitCollection:0];
  v8 = [v7 fontDescriptorWithSymbolicTraits_];

  if (v8)
  {
    v9 = [objc_opt_self() fontWithDescriptor:v8 size:0.0];
  }

  else
  {
    sub_1BA4A3DD8();
    v10 = v5;
    v11 = sub_1BA4A3E88();
    v12 = sub_1BA4A6FB8();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v36 = v32;
      *v13 = 136315906;
      v14 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      v16 = sub_1B9F0B82C(v14, v15, &v36);
      v33 = v10;
      v17 = v16;

      *(v13 + 4) = v17;
      *(v13 + 12) = 2080;
      v34 = 0;
      v35 = 1;
      sub_1B9F0D20C(0, &qword_1EBBECB00, type metadata accessor for Weight);
      v18 = sub_1BA4A6808();
      v20 = sub_1B9F0B82C(v18, v19, &v36);

      *(v13 + 14) = v20;
      *(v13 + 22) = 2080;
      LODWORD(v34) = 2;
      type metadata accessor for SymbolicTraits(0);
      v21 = sub_1BA4A6808();
      v23 = sub_1B9F0B82C(v21, v22, &v36);

      *(v13 + 24) = v23;
      v10 = v33;
      *(v13 + 32) = 2112;
      v24 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
      *(v13 + 34) = v24;
      v25 = v12;
      v26 = v31;
      *v31 = v24;
      _os_log_impl(&dword_1B9F07000, v11, v25, "Unable to create descriptor with textStyle %s, weight %s, traits %s and rounded %@. Using only the text style", v13, 0x2Au);
      sub_1B9F8C6C8(v26);
      MEMORY[0x1BFAF43A0](v26, -1, -1);
      v27 = v32;
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v27, -1, -1);
      MEMORY[0x1BFAF43A0](v13, -1, -1);
    }

    (*(v1 + 8))(v3, v0);
    v28 = [v6 preferredFontDescriptorWithTextStyle_];
    v9 = [objc_opt_self() fontWithDescriptor:v28 size:0.0];
  }

  [v4 setFont_];

  v29 = [objc_opt_self() secondaryLabelColor];
  [v4 setTextColor_];

  [v4 setNumberOfLines_];
  [v4 setTranslatesAutoresizingMaskIntoConstraints_];

  [v4 setTextAlignment_];
  [v4 setAdjustsFontForContentSizeCategory_];
  return v4;
}

id sub_1BA18535C()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI33PlaceholderTextCollectionViewCell____lazy_storage___spinnerZeroWidthConstraint;
  v2 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI33PlaceholderTextCollectionViewCell____lazy_storage___spinnerZeroWidthConstraint);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI33PlaceholderTextCollectionViewCell____lazy_storage___spinnerZeroWidthConstraint);
  }

  else
  {
    v4 = sub_1BA1854D8();
    v5 = [v4 widthAnchor];

    v6 = [v5 constraintEqualToConstant_];
    v7 = *(v0 + v1);
    *(v0 + v1) = v6;
    v3 = v6;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

id sub_1BA185400()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI33PlaceholderTextCollectionViewCell____lazy_storage___spinnerToLabelWidthConstraint;
  v2 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI33PlaceholderTextCollectionViewCell____lazy_storage___spinnerToLabelWidthConstraint);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI33PlaceholderTextCollectionViewCell____lazy_storage___spinnerToLabelWidthConstraint);
  }

  else
  {
    v4 = sub_1BA184E74();
    v5 = [v4 leadingAnchor];

    v6 = sub_1BA1854D8();
    v7 = [v6 trailingAnchor];

    v8 = [v5 constraintEqualToAnchor:v7 constant:14.0];
    v9 = *(v0 + v1);
    *(v0 + v1) = v8;
    v3 = v8;

    v2 = 0;
  }

  v10 = v2;
  return v3;
}

id sub_1BA1854D8()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI33PlaceholderTextCollectionViewCell____lazy_storage___spinner;
  v2 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI33PlaceholderTextCollectionViewCell____lazy_storage___spinner);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI33PlaceholderTextCollectionViewCell____lazy_storage___spinner);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle_];
    [v4 setTranslatesAutoresizingMaskIntoConstraints_];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_1BA185564(double a1, double a2, double a3, double a4)
{
  v9 = &v4[OBJC_IVAR____TtC18HealthExperienceUI33PlaceholderTextCollectionViewCell_item];
  *v9 = 0u;
  *(v9 + 1) = 0u;
  *(v9 + 4) = 0;
  *&v4[OBJC_IVAR____TtC18HealthExperienceUI33PlaceholderTextCollectionViewCell____lazy_storage___label] = 0;
  *&v4[OBJC_IVAR____TtC18HealthExperienceUI33PlaceholderTextCollectionViewCell____lazy_storage___spinnerZeroWidthConstraint] = 0;
  *&v4[OBJC_IVAR____TtC18HealthExperienceUI33PlaceholderTextCollectionViewCell____lazy_storage___spinnerToLabelWidthConstraint] = 0;
  *&v4[OBJC_IVAR____TtC18HealthExperienceUI33PlaceholderTextCollectionViewCell____lazy_storage___spinner] = 0;
  v10 = [objc_allocWithZone(MEMORY[0x1E69DD250]) initWithFrame_];
  *&v4[OBJC_IVAR____TtC18HealthExperienceUI33PlaceholderTextCollectionViewCell_subview] = v10;
  v13.receiver = v4;
  v13.super_class = type metadata accessor for PlaceholderTextCollectionViewCell();
  v11 = objc_msgSendSuper2(&v13, sel_initWithFrame_, a1, a2, a3, a4);
  sub_1BA185728();

  return v11;
}

void sub_1BA185728()
{
  v1 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI33PlaceholderTextCollectionViewCell_subview];
  v2 = sub_1BA184E74();
  [v1 addSubview_];

  v3 = sub_1BA1854D8();
  [v1 addSubview_];

  [v1 setTranslatesAutoresizingMaskIntoConstraints_];
  v4 = [v0 contentView];
  [v4 addSubview_];

  v52 = objc_opt_self();
  sub_1B9F109F8();
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1BA4BF880;
  v6 = OBJC_IVAR____TtC18HealthExperienceUI33PlaceholderTextCollectionViewCell____lazy_storage___spinner;
  v7 = [*&v0[OBJC_IVAR____TtC18HealthExperienceUI33PlaceholderTextCollectionViewCell____lazy_storage___spinner] leadingAnchor];
  v8 = [v1 &selRef__totalDistance + 1];
  v9 = [v7 constraintEqualToAnchor_];

  *(v5 + 32) = v9;
  v10 = [*&v0[v6] topAnchor];
  v11 = [v1 topAnchor];
  v12 = [v10 constraintEqualToAnchor_];

  *(v5 + 40) = v12;
  v13 = [v1 bottomAnchor];
  v14 = [*&v0[v6] bottomAnchor];
  v15 = [v13 constraintEqualToAnchor_];

  *(v5 + 48) = v15;
  *(v5 + 56) = sub_1BA185400();
  v16 = [v1 trailingAnchor];
  v17 = OBJC_IVAR____TtC18HealthExperienceUI33PlaceholderTextCollectionViewCell____lazy_storage___label;
  v18 = [*&v0[OBJC_IVAR____TtC18HealthExperienceUI33PlaceholderTextCollectionViewCell____lazy_storage___label] trailingAnchor];
  v19 = [v16 constraintEqualToAnchor_];

  *(v5 + 64) = v19;
  v20 = [*&v0[v17] topAnchor];
  v21 = [v1 topAnchor];
  v22 = [v20 constraintEqualToAnchor_];

  *(v5 + 72) = v22;
  v23 = [*&v0[v17] heightAnchor];
  v24 = [v23 constraintGreaterThanOrEqualToConstant_];

  *(v5 + 80) = v24;
  v25 = [v1 bottomAnchor];
  v26 = [*&v0[v17] bottomAnchor];
  v27 = [v25 constraintEqualToAnchor_];

  *(v5 + 88) = v27;
  v28 = [v1 centerYAnchor];
  v29 = [v0 contentView];
  v30 = [v29 centerYAnchor];

  v31 = [v28 constraintEqualToAnchor_];
  *(v5 + 96) = v31;
  v32 = [v1 centerXAnchor];
  v33 = [v0 contentView];
  v34 = [v33 centerXAnchor];

  v35 = [v32 constraintEqualToAnchor_];
  *(v5 + 104) = v35;
  v36 = [v1 leadingAnchor];
  v37 = [v0 contentView];
  v38 = [v37 leadingAnchor];

  v39 = [v36 constraintGreaterThanOrEqualToAnchor:v38 constant:8.0];
  *(v5 + 112) = v39;
  v40 = [v0 contentView];
  v41 = [v40 trailingAnchor];

  v42 = [v1 trailingAnchor];
  v43 = [v41 constraintGreaterThanOrEqualToAnchor:v42 constant:8.0];

  *(v5 + 120) = v43;
  v44 = [v1 topAnchor];
  v45 = [v0 contentView];
  v46 = [v45 topAnchor];

  v47 = [v44 constraintEqualToAnchor:v46 constant:16.0];
  *(v5 + 128) = v47;
  v48 = [v0 contentView];
  v49 = [v48 bottomAnchor];

  v50 = [v1 bottomAnchor];
  v51 = [v49 constraintEqualToAnchor:v50 constant:16.0];

  *(v5 + 136) = v51;
  sub_1B9F0ADF8(0, &qword_1EDC6B570);
  v53 = sub_1BA4A6AE8();

  [v52 activateConstraints_];
}

void sub_1BA185DD8(uint64_t a1)
{
  v1 = *(a1 + 48);
  v2 = sub_1BA184E74();
  v3 = sub_1BA4A6758();
  [v2 setText_];

  v4 = sub_1BA1854D8();
  v5 = v4;
  if (v1)
  {
    v6 = 14.0;
  }

  else
  {
    v6 = 0.0;
  }

  v7 = &selRef_startAnimating;
  if (!v1)
  {
    v7 = &selRef_stopAnimating;
  }

  [v4 *v7];

  v8 = sub_1BA18535C();
  [v8 setActive_];

  v9 = sub_1BA185400();
  [v9 setConstant_];
}

id PlaceholderTextCollectionViewCell.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PlaceholderTextCollectionViewCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

char *HideableHearingArticlesFRCDataSource.__allocating_init(managedObjectContext:sourceProfiles:predicate:header:healthStore:)(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4, void *a5)
{
  v32 = a1;
  v33 = a5;
  sub_1BA1863C8();
  v10 = v9;
  v11 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a3;
  v15 = *(a3 + 8);
  v16 = *a4;
  v30 = a4[1];
  v31 = v16;
  v17 = [objc_allocWithZone(MEMORY[0x1E696C178]) initWithFeatureIdentifier:*MEMORY[0x1E696B898] healthStore:a5];
  v34[0] = v17;
  sub_1B9F0ADF8(0, &qword_1EBBF15E0);
  v34[0] = sub_1BA4A39A8();
  sub_1BA0B9D44();
  sub_1BA1864BC(&qword_1EDC5F500, sub_1BA0B9D44);
  sub_1BA4A4FE8();

  sub_1BA1864BC(&qword_1EBBED118, sub_1BA1863C8);
  sub_1BA4A4F98();
  (*(v11 + 8))(v13, v10);
  v18 = objc_allocWithZone(type metadata accessor for HideableHearingArticlesFRCDataSource());
  *&v18[qword_1EBBED120] = MEMORY[0x1E69E7CD0];
  v19 = &v18[qword_1EBBED128];
  *v19 = 0;
  *(v19 + 1) = 0;
  v20 = &v18[qword_1EBBED130];
  *v20 = 0;
  *(v20 + 1) = 0;
  v21 = &v18[qword_1EBBED138];
  *v21 = v14;
  v21[8] = v15;
  *&v18[qword_1EBBED140] = a2;
  v35 = v14;
  v36 = v15;
  v34[0] = v31;
  v34[1] = v30;
  v22 = v14;

  v23 = v32;
  v24 = ArticlesFetchedResultsControllerDataSource.init(managedObjectContext:sourceProfiles:predicate:header:)(v23, a2, &v35, v34);
  v25 = sub_1BA186BA8(0);
  v26 = qword_1EDC84AD8;
  swift_beginAccess();
  v27 = [*&v24[v26] fetchRequest];
  [v27 setPredicate_];

  sub_1B9F128B4();
  sub_1BA047948();

  sub_1BA18682C();

  return v24;
}

void sub_1BA1863C8()
{
  if (!qword_1EDC5F680)
  {
    sub_1BA0B9D44();
    sub_1BA1864BC(&qword_1EDC5F500, sub_1BA0B9D44);
    v0 = sub_1BA4A4B78();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC5F680);
    }
  }
}

void sub_1BA186464(unsigned __int8 *a1@<X8>)
{
  v2 = sub_1BA4A3948();
  v3 = [v2 areAllRequirementsSatisfied];

  *a1 = v3;
}

uint64_t sub_1BA1864BC(unint64_t *a1, void (*a2)(uint64_t))
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

char *HideableHearingArticlesFRCDataSource.__allocating_init(managedObjectContext:sourceProfiles:predicate:header:hearingAidAvailabilityPublisher:)(void *a1, uint64_t a2, uint64_t a3, __int128 *a4)
{
  v9 = objc_allocWithZone(v4);
  v10 = *a3;
  *&v9[qword_1EBBED120] = MEMORY[0x1E69E7CD0];
  v11 = *(a3 + 8);
  v12 = &v9[qword_1EBBED128];
  *v12 = 0;
  *(v12 + 1) = 0;
  v13 = &v9[qword_1EBBED130];
  *v13 = 0;
  *(v13 + 1) = 0;
  v14 = &v9[qword_1EBBED138];
  *v14 = v10;
  v14[8] = v11;
  *&v9[qword_1EBBED140] = a2;
  v23 = v10;
  v24 = v11;
  v22 = *a4;
  v15 = v10;

  v16 = a1;
  v17 = ArticlesFetchedResultsControllerDataSource.init(managedObjectContext:sourceProfiles:predicate:header:)(v16, a2, &v23, &v22);
  v18 = sub_1BA186BA8(0);
  v19 = qword_1EDC84AD8;
  swift_beginAccess();
  v20 = [*&v17[v19] fetchRequest];
  [v20 setPredicate_];

  sub_1B9F128B4();
  sub_1BA047948();

  sub_1BA18682C();

  return v17;
}

uint64_t type metadata accessor for HideableHearingArticlesFRCDataSource()
{
  result = qword_1EBBED148;
  if (!qword_1EBBED148)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

char *HideableHearingArticlesFRCDataSource.init(managedObjectContext:sourceProfiles:predicate:header:hearingAidAvailabilityPublisher:)(void *a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  v7 = *a3;
  *(v4 + qword_1EBBED120) = MEMORY[0x1E69E7CD0];
  v8 = *(a3 + 8);
  v9 = (v4 + qword_1EBBED128);
  *v9 = 0;
  v9[1] = 0;
  v10 = (v4 + qword_1EBBED130);
  *v10 = 0;
  v10[1] = 0;
  v11 = v4 + qword_1EBBED138;
  *v11 = v7;
  *(v11 + 8) = v8;
  *(v4 + qword_1EBBED140) = a2;
  v20 = v7;
  v21 = v8;
  *v19 = *a4;
  v12 = v7;

  v13 = a1;
  v14 = ArticlesFetchedResultsControllerDataSource.init(managedObjectContext:sourceProfiles:predicate:header:)(v13, a2, &v20, v19);
  v15 = sub_1BA186BA8(0);
  v16 = qword_1EDC84AD8;
  swift_beginAccess();
  v17 = [*&v14[v16] fetchRequest];
  [v17 setPredicate_];

  sub_1B9F128B4();
  sub_1BA047948();

  sub_1BA18682C();

  return v14;
}

uint64_t sub_1BA18682C()
{
  ObjectType = swift_getObjectType();
  v1 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v2 = swift_allocObject();
  *(v2 + 16) = v1;
  *(v2 + 24) = ObjectType;
  sub_1BA18779C();
  sub_1BA1864BC(&qword_1EDC5F4A8, sub_1BA18779C);
  sub_1BA4A5148();

  swift_beginAccess();
  sub_1BA4A4D28();
  swift_endAccess();
}

void sub_1BA186958(unsigned __int8 *a1)
{
  v2 = sub_1BA4A3EA8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    sub_1BA4A3E38();
    v9 = sub_1BA4A3E88();
    v10 = sub_1BA4A6FC8();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v20 = v2;
      v12 = v11;
      v13 = swift_slowAlloc();
      v21 = v13;
      *v12 = 136446466;
      v14 = sub_1BA4A85D8();
      v16 = sub_1B9F0B82C(v14, v15, &v21);

      *(v12 + 4) = v16;
      *(v12 + 12) = 1024;
      *(v12 + 14) = v6;
      _os_log_impl(&dword_1B9F07000, v9, v10, "[%{public}s] Updating availability of Hearing Aid to %{BOOL}d.", v12, 0x12u);
      __swift_destroy_boxed_opaque_existential_1(v13);
      MEMORY[0x1BFAF43A0](v13, -1, -1);
      MEMORY[0x1BFAF43A0](v12, -1, -1);

      (*(v3 + 8))(v5, v20);
    }

    else
    {

      (*(v3 + 8))(v5, v2);
    }

    v17 = *&v8[qword_1EBBED130];
    if (v17)
    {

      v17(v6);
      sub_1B9F0E310(v17);
    }

    v18 = sub_1BA186BA8(v6);
    sub_1BA187030(v18);
  }
}

id sub_1BA186BA8(char a1)
{
  sub_1B9F0A7B0(0, &qword_1EDC6E2A0, MEMORY[0x1E6968130], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v34 - v4;
  v6 = *(v1 + qword_1EBBED138);
  v7 = *(v1 + qword_1EBBED138 + 8);
  sub_1BA4A27B8();
  sub_1B9F0A7B0(0, &qword_1EDC6B460, MEMORY[0x1E69A3C08], MEMORY[0x1E69E6F90]);
  v8 = sub_1BA4A1C68();
  v9 = *(v8 - 8);
  v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1BA4B5480;
  (*(v9 + 104))(v11 + v10, *MEMORY[0x1E69A3BD0], v8);
  if (v7)
  {
    v12 = sub_1BA4A0FA8();
    (*(*(v12 - 8) + 56))(v5, 1, 1, v12);
    v13 = *(v1 + qword_1EBBED140);
    v14 = v6;
    v15 = MEMORY[0x1BFAED020](v11, 0, v5, v13);

    sub_1B9F1C1B0(v5);
    sub_1B9F109F8();
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_1BA4B7510;
    *(v16 + 32) = v15;
    *(v16 + 40) = v14;
    sub_1B9F0ADF8(0, &qword_1EDC6B630);
    v17 = v14;
    v18 = v15;
    v19 = sub_1BA4A6AE8();

    v20 = [objc_opt_self() andPredicateWithSubpredicates_];

    if ((a1 & 1) == 0)
    {
LABEL_3:
      sub_1BA4A27B8();
      v21 = sub_1BA4A2698();
      v22 = objc_opt_self();
      v23 = [v22 notPredicateWithSubpredicate_];
      sub_1B9F109F8();
      v24 = swift_allocObject();
      *(v24 + 16) = xmmword_1BA4B7510;
      *(v24 + 32) = v20;
      *(v24 + 40) = v23;
      sub_1B9F0ADF8(0, &qword_1EDC6B630);
      v25 = v20;
      v26 = v23;
      v27 = sub_1BA4A6AE8();

      v28 = [v22 andPredicateWithSubpredicates_];

      return v28;
    }
  }

  else
  {
    sub_1B9F109F8();
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_1BA4B5470;
    *(v30 + 32) = v6;
    v31 = sub_1BA4A0FA8();
    (*(*(v31 - 8) + 56))(v5, 1, 1, v31);
    v32 = *(v1 + qword_1EBBED140);
    v33 = v6;
    v20 = MEMORY[0x1BFAED020](v11, v30, v5, v32);

    sub_1B9F1C1B0(v5);
    if ((a1 & 1) == 0)
    {
      goto LABEL_3;
    }
  }

  return v20;
}

void sub_1BA187030(void *a1)
{
  v2 = v1;
  v4 = sub_1BA4A6478();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &aBlock[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1BA4A64C8();
  v8 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v10 = &aBlock[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = qword_1EDC84AD8;
  swift_beginAccess();
  v12 = [*&v2[v11] fetchRequest];
  v13 = [v12 predicate];

  if (!v13 || (sub_1B9F0ADF8(0, &qword_1EDC6B630), v14 = a1, v15 = sub_1BA4A7798(), v13, v14, (v15 & 1) == 0))
  {
    sub_1B9F0ADF8(0, &qword_1EDC6B5A0);
    v16 = sub_1BA4A7308();
    v17 = swift_allocObject();
    *(v17 + 16) = v2;
    *(v17 + 24) = a1;
    aBlock[4] = sub_1BA18778C;
    aBlock[5] = v17;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1B9F0B040;
    aBlock[3] = &block_descriptor_39;
    v18 = _Block_copy(aBlock);
    v19 = a1;
    v20 = v2;

    sub_1BA4A64A8();
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_1BA1864BC(&qword_1EDC5E8E0, MEMORY[0x1E69E7F60]);
    sub_1B9F0A7B0(0, &qword_1EDC5E6B0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
    sub_1B9F31534();
    sub_1BA4A7C38();
    MEMORY[0x1BFAF1D50](0, v10, v7, v18);
    _Block_release(v18);

    (*(v5 + 8))(v7, v4);
    (*(v8 + 8))(v10, v21);
  }
}

uint64_t sub_1BA1873BC(uint64_t a1, uint64_t a2)
{
  v4 = qword_1EDC84AD8;
  swift_beginAccess();
  v5 = [*(a1 + v4) fetchRequest];
  [v5 setPredicate_];

  sub_1B9F128B4();
  result = sub_1BA047948();
  v7 = *(a1 + qword_1EBBED128);
  if (v7)
  {

    v7(v8);
    return sub_1B9F0E310(v7);
  }

  return result;
}

uint64_t sub_1BA1874BC(uint64_t a1, uint64_t a2, void *a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v5 = (v4 + *a3);
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;

  return a4(v6, v7);
}

uint64_t sub_1BA18754C()
{

  sub_1B9F0E310(*(v0 + qword_1EBBED128));
  v1 = *(v0 + qword_1EBBED130);

  return sub_1B9F0E310(v1);
}

id HideableHearingArticlesFRCDataSource.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HideableHearingArticlesFRCDataSource();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1BA1875FC(uint64_t a1)
{

  sub_1B9F0E310(*(a1 + qword_1EBBED128));
  v2 = *(a1 + qword_1EBBED130);

  return sub_1B9F0E310(v2);
}

void sub_1BA18779C()
{
  if (!qword_1EDC5F4A0)
  {
    v0 = sub_1BA4A4D18();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC5F4A0);
    }
  }
}

__n128 DataTypeDetailConfiguration.ArticlesComponent.init(predicate:maximumNumberOfArticles:header:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __n128 *a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *(a1 + 8);
  *a4 = *a1;
  *(a4 + 8) = v4;
  *(a4 + 16) = a2;
  result = *a3;
  *(a4 + 24) = *a3;
  return result;
}

uint64_t DataTypeDetailConfiguration.ArticlesComponent.init(measureIdentifier:maximumNumberOfArticles:header:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *a3;
  v8 = a3[1];
  sub_1BA4A27B8();
  sub_1BA187974();
  v9 = sub_1BA4A1A48();
  v10 = *(v9 - 8);
  v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1BA4B5480;
  (*(v10 + 16))(v12 + v11, a1, v9);
  v13 = sub_1BA4A2618();

  result = (*(v10 + 8))(a1, v9);
  *a4 = v13;
  *(a4 + 8) = 1;
  *(a4 + 16) = a2;
  *(a4 + 24) = v7;
  *(a4 + 32) = v8;
  return result;
}

void sub_1BA187974()
{
  if (!qword_1EBBEB208)
  {
    sub_1BA4A1A48();
    v0 = sub_1BA4A82E8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBBEB208);
    }
  }
}

id DataTypeDetailConfiguration.ArticlesComponent.predicate.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v3;
  return v2;
}

uint64_t DataTypeDetailConfiguration.ArticlesComponent.makeDataSource(context:)(uint64_t a1)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  v7 = *(v1 + 32);
  __swift_project_boxed_opaque_existential_1(a1, *(a1 + 24));
  v8 = sub_1BA4A1B68();
  sub_1BA15E094();
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1BA4B5480;
  *(v9 + 32) = 0;
  if (*(a1 + 48) == 2)
  {
  }

  else
  {
    v10 = sub_1BA4A8338();

    if ((v10 & 1) == 0)
    {
      v11 = [*(a1 + 40) profileIdentifier];
      v13 = *(v9 + 16);
      v12 = *(v9 + 24);
      if (v13 >= v12 >> 1)
      {
        v19 = v11;
        v9 = sub_1BA27EFDC((v12 > 1), v13 + 1, 1, v9);
        v11 = v19;
      }

      *(v9 + 16) = v13 + 1;
      *(v9 + 8 * v13 + 32) = v11;
    }
  }

  v20[1] = v7;
  v21 = v3;
  v22 = v4;
  v20[0] = v6;
  objc_allocWithZone(type metadata accessor for ArticlesFetchedResultsControllerDataSource());
  v14 = v3;
  v15 = v8;
  sub_1BA048494(v6, v7);
  v16 = ArticlesFetchedResultsControllerDataSource.init(managedObjectContext:sourceProfiles:predicate:header:)(v15, v9, &v21, v20);
  sub_1BA187C68();
  swift_allocObject();
  v17 = sub_1BA0488BC(v16, v5);

  return v17;
}

void sub_1BA187C68()
{
  if (!qword_1EDC63988)
  {
    type metadata accessor for ArticlesFetchedResultsControllerDataSource();
    v0 = type metadata accessor for DataSourceWithSectionItemLimit();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC63988);
    }
  }
}

id EmergencyAccessFollowUpStartViewController.init(healthStore:flow:emergencyStatus:)(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = *a2;
  v8 = *(a2 + 8);
  v9 = OBJC_IVAR____TtC18HealthExperienceUI42EmergencyAccessFollowUpStartViewController_animationView;
  if (qword_1EBBE8430 != -1)
  {
    swift_once();
  }

  v24[4] = xmmword_1EBC09600;
  v25[0] = *&qword_1EBC09610;
  *(v25 + 9) = unk_1EBC09619;
  v24[0] = xmmword_1EBC095C0;
  v24[1] = *&qword_1EBC095D0;
  v24[2] = xmmword_1EBC095E0;
  v24[3] = unk_1EBC095F0;
  v22[4] = xmmword_1EBC09600;
  v23[0] = *&qword_1EBC09610;
  *(v23 + 9) = unk_1EBC09619;
  v22[0] = xmmword_1EBC095C0;
  v22[1] = *&qword_1EBC095D0;
  v22[2] = xmmword_1EBC095E0;
  v22[3] = unk_1EBC095F0;
  v21 = 1;
  v10 = objc_allocWithZone(type metadata accessor for MicaAnimationView());
  sub_1BA189034(v24, v20);
  *&v3[v9] = MicaAnimationView.init(animation:inset:scaleMode:)(v22, 0, &v21);
  *&v3[OBJC_IVAR____TtC18HealthExperienceUI42EmergencyAccessFollowUpStartViewController_healthStore] = a1;
  v11 = &v3[OBJC_IVAR____TtC18HealthExperienceUI42EmergencyAccessFollowUpStartViewController_flow];
  *v11 = v7;
  v11[8] = v8;
  sub_1BA020470(a3, &v3[OBJC_IVAR____TtC18HealthExperienceUI42EmergencyAccessFollowUpStartViewController_emergencyStatus]);
  v12 = a1;
  sub_1BA02040C(v7, v8);
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  sub_1BA4A1318();
  sub_1BA4A1318();
  v13 = sub_1BA4A6758();

  v14 = sub_1BA4A6758();

  v19.receiver = v4;
  v19.super_class = type metadata accessor for EmergencyAccessFollowUpStartViewController();
  v15 = objc_msgSendSuper2(&v19, sel_initWithTitle_detailText_icon_contentLayout_, v13, v14, 0, 1, 0xE000000000000000);

  v16 = v15;
  sub_1BA0204D4(v7, v8);
  if (v8 > 1)
  {
    sub_1BA0204E8(a3);
  }

  else
  {
    sub_1BA4A2998();
    v17 = sub_1BA4A2988();
    sub_1BA4A2938();

    sub_1BA0204E8(a3);
  }

  return v16;
}

void sub_1BA188268(void *a1)
{
  v3 = [v1 navigationController];
  if (v3)
  {
    v4 = v3;
    [v3 setNavigationBarHidden_];
  }

  v5 = [v1 contentView];
  [v5 addSubview_];

  v6 = [v1 contentView];
  [v6 setClipsToBounds_];

  [a1 setTranslatesAutoresizingMaskIntoConstraints_];
  v7 = objc_opt_self();
  sub_1B9F109F8();
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1BA4B5890;
  v9 = [a1 topAnchor];
  v10 = [v1 contentView];
  v11 = [v10 topAnchor];

  v12 = [v9 constraintEqualToAnchor_];
  *(v8 + 32) = v12;
  v13 = [a1 leadingAnchor];
  v14 = [v1 contentView];
  v15 = [v14 leadingAnchor];

  v16 = [v13 constraintEqualToAnchor_];
  *(v8 + 40) = v16;
  v17 = [a1 bottomAnchor];
  v18 = [v1 contentView];
  v19 = [v18 bottomAnchor];

  v20 = [v17 constraintEqualToAnchor_];
  *(v8 + 48) = v20;
  v21 = [a1 trailingAnchor];
  v22 = [v1 contentView];
  v23 = [v22 trailingAnchor];

  v24 = [v21 constraintEqualToAnchor_];
  *(v8 + 56) = v24;
  sub_1B9F740B0();
  v25 = sub_1BA4A6AE8();

  [v7 activateConstraints_];
}

void sub_1BA1885A4()
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

void sub_1BA188700()
{
  v1 = type metadata accessor for EmergencyAccessUserStatus();
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = v28 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = swift_allocObject();
  *(v4 + 16) = v0;
  v5 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI42EmergencyAccessFollowUpStartViewController_healthStore];
  v6 = qword_1EDC5E100;
  v7 = v0;
  if (v6 != -1)
  {
    swift_once();
  }

  v28[1] = sub_1BA4A1318();
  v28[2] = v8;
  v9 = *&v7[OBJC_IVAR____TtC18HealthExperienceUI42EmergencyAccessFollowUpStartViewController_flow];
  v10 = v7[OBJC_IVAR____TtC18HealthExperienceUI42EmergencyAccessFollowUpStartViewController_flow + 8];
  sub_1BA020470(&v7[OBJC_IVAR____TtC18HealthExperienceUI42EmergencyAccessFollowUpStartViewController_emergencyStatus], v3);
  v11 = v3;
  v12 = type metadata accessor for EmergencyAccessBuddyStewieViewController();
  v13 = objc_allocWithZone(v12);
  v28[0] = "eview_medical_id_later_button";
  v14 = v13;
  *&v13[OBJC_IVAR____TtC18HealthExperienceUI40EmergencyAccessBuddyStewieViewController_healthStore] = v5;
  v15 = &v13[OBJC_IVAR____TtC18HealthExperienceUI40EmergencyAccessBuddyStewieViewController_flow];
  *v15 = v9;
  v15[8] = v10;
  v29 = v11;
  sub_1BA020470(v11, &v13[OBJC_IVAR____TtC18HealthExperienceUI40EmergencyAccessBuddyStewieViewController_emergencyStatus]);
  v16 = &v14[OBJC_IVAR____TtC18HealthExperienceUI40EmergencyAccessBuddyStewieViewController_nextVCHandler];
  *v16 = sub_1BA1891BC;
  *(v16 + 1) = v4;
  type metadata accessor for EmergencyAccessBuddyStartViewController();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v18 = objc_opt_self();
  swift_retain_n();
  v19 = v5;
  sub_1BA02040C(v9, v10);
  v20 = [v18 bundleForClass_];
  v21 = sub_1BA4A6758();
  v22 = [objc_opt_self() imageNamed:v21 inBundle:v20];

  if (v22)
  {
    sub_1BA4A1318();
    v23 = sub_1BA4A6758();

    v24 = sub_1BA4A6758();

    v30.receiver = v14;
    v30.super_class = v12;
    v25 = objc_msgSendSuper2(&v30, sel_initWithTitle_detailText_icon_contentLayout_, v23, v24, v22, 2);

    v26 = v25;
    v27 = [v26 headerView];
    [v27 setAllowFullWidthIcon_];

    sub_1BA0204E8(v29);
    [v7 showViewController:v26 sender:v7];
  }

  else
  {
    __break(1u);
  }
}

void sub_1BA188AC4(_BYTE *a1, uint64_t a2)
{
  v4 = type metadata accessor for EmergencyAccessUserStatus();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *&a1[OBJC_IVAR____TtC18HealthExperienceUI40EmergencyAccessBuddyStewieViewController_healthStore];
  v9 = a1[OBJC_IVAR____TtC18HealthExperienceUI40EmergencyAccessBuddyStewieViewController_flow + 8];
  v13 = *&a1[OBJC_IVAR____TtC18HealthExperienceUI40EmergencyAccessBuddyStewieViewController_flow];
  v8 = v13;
  v14 = v9;
  sub_1BA020470(a2 + OBJC_IVAR____TtC18HealthExperienceUI42EmergencyAccessFollowUpStartViewController_emergencyStatus, v6);
  objc_allocWithZone(type metadata accessor for EmergencyAccessBuddyStartViewController());
  v10 = v7;
  sub_1BA02040C(v8, v9);
  sub_1BA01FEB8(v10, &v13, v6);
  v12 = v11;

  [a1 showViewController:v12 sender:a2];
}

id EmergencyAccessFollowUpStartViewController.__allocating_init(title:detailText:symbolName:contentLayout:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
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

id EmergencyAccessFollowUpStartViewController.__allocating_init(title:detailText:icon:contentLayout:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
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

id EmergencyAccessFollowUpStartViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for EmergencyAccessFollowUpStartViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1BA188F50()
{
  IsRightToLeft = HKUILocaleIsRightToLeft();
  if (qword_1EDC5E100 != -1)
  {
    v10 = IsRightToLeft;
    swift_once();
    IsRightToLeft = v10;
  }

  v1 = qword_1EDC84A30;
  v2 = "eed_onboarding_stewie_title";
  if (IsRightToLeft)
  {
    v2 = "boarding-animation";
  }

  v3 = 0xD000000000000022;
  if (IsRightToLeft)
  {
    v3 = 0xD000000000000026;
  }

  *&xmmword_1EBC095C0 = v3;
  *(&xmmword_1EBC095C0 + 1) = v2 | 0x8000000000000000;
  qword_1EBC095D0 = qword_1EDC84A30;
  *&xmmword_1EBC095E0 = 0;
  dword_1EBC095D8 = 0;
  __asm { FMOV            V0.2D, #1.5 }

  *(&xmmword_1EBC095E0 + 8) = _Q0;
  unk_1EBC095F8 = _Q0;
  BYTE8(xmmword_1EBC09600) = 3;
  qword_1EBC09610 = 0;
  unk_1EBC09618 = 0;
  qword_1EBC09620 = 0x3FF0000000000000;
  byte_1EBC09628 = 0;

  return v1;
}

uint64_t type metadata accessor for EmergencyAccessFollowUpStartViewController()
{
  result = qword_1EBBED178;
  if (!qword_1EBBED178)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BA1890E4()
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

uint64_t sub_1BA18921C(void *a1)
{
  sub_1BA4A57F8();
  LOWORD(v7) = 256;
  sub_1BA4A5DF8();
  v2 = [a1 version];
  v3 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  v5 = v4;

  MEMORY[0x1BFAF1350](v3, v5);

  sub_1B9F252FC();
  sub_1BA4A5E18();
  sub_1BA189B0C(0, &qword_1EBBED188, MEMORY[0x1E697F960]);
  sub_1BA189A40();
  return sub_1BA4A6348();
}

uint64_t sub_1BA1893A4@<X0>(uint64_t a1@<X8>)
{
  v44 = a1;
  sub_1BA189970();
  v45 = v1;
  v41 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v40 = &v39 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA189B0C(0, &qword_1EBBED1B0, MEMORY[0x1E697F948]);
  v42 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v43 = (&v39 - v4);
  v5 = sub_1BA4A7468();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v39 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = (&v39 - v13);
  sub_1BA4A7478();
  v15 = *(v6 + 88);
  v16 = v15(v14, v5);
  v17 = v16;
  v18 = *MEMORY[0x1E69A39A0];
  if (v16 == *MEMORY[0x1E69A39A0])
  {
    (*(v6 + 96))(v14, v5);
    v19 = *v14;
    sub_1BA4A7478();
    v20 = v15(v8, v5);
    if (v20 == v17)
    {
      v21 = 0x756F6320656D6F53;
      v22 = 0xEE0073656972746ELL;
    }

    else
    {
      if (v20 == *MEMORY[0x1E69A39A8])
      {
        v21 = 0x656B636568636E55;
        v22 = 0xE900000000000064;
        goto LABEL_19;
      }

      if (v20 == *MEMORY[0x1E69A3998])
      {
        v21 = 0x6E756F63206C6C41;
        v22 = 0xED00007365697274;
        goto LABEL_19;
      }

      v22 = 0xE700000000000000;
      v21 = 0x6E776F6E6B6E55;
    }

    (*(v6 + 8))(v8, v5);
LABEL_19:
    v47 = v21;
    v48 = v22;
    v46 = v19;
    sub_1BA1899EC();
    sub_1B9F252FC();
    v29 = v19;
    v30 = v40;
    sub_1BA4A5328();
    v31 = v41;
    v32 = v45;
    (*(v41 + 16))(v43, v30, v45);
    swift_storeEnumTagMultiPayload();
    sub_1BA18AEE8(&qword_1EBBED1A8, sub_1BA189970);
    sub_1BA4A58E8();

    return (*(v31 + 8))(v30, v32);
  }

  v23 = *MEMORY[0x1E69A39A8];
  v24 = v16 == *MEMORY[0x1E69A39A8] || v16 == *MEMORY[0x1E69A3998];
  v25 = *MEMORY[0x1E69A3998];
  if (!v24)
  {
    (*(v6 + 8))(v14, v5);
  }

  sub_1BA4A7478();
  v26 = v15(v11, v5);
  if (v26 == v18)
  {
    v27 = 0x756F6320656D6F53;
    v28 = 0xEE0073656972746ELL;
  }

  else
  {
    if (v26 == v23)
    {
      v27 = 0x656B636568636E55;
      v28 = 0xE900000000000064;
      goto LABEL_22;
    }

    if (v26 == v25)
    {
      v27 = 0x6E756F63206C6C41;
      v28 = 0xED00007365697274;
      goto LABEL_22;
    }

    v28 = 0xE700000000000000;
    v27 = 0x6E776F6E6B6E55;
  }

  (*(v6 + 8))(v11, v5);
LABEL_22:
  v47 = v27;
  v48 = v28;
  sub_1B9F252FC();
  v34 = sub_1BA4A5E18();
  v35 = v43;
  *v43 = v34;
  v35[1] = v36;
  *(v35 + 16) = v37 & 1;
  v35[3] = v38;
  swift_storeEnumTagMultiPayload();
  sub_1BA18AEE8(&qword_1EBBED1A8, sub_1BA189970);
  return sub_1BA4A58E8();
}

void sub_1BA189970()
{
  if (!qword_1EBBED190)
  {
    sub_1BA1899EC();
    v0 = sub_1BA4A5338();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBBED190);
    }
  }
}

unint64_t sub_1BA1899EC()
{
  result = qword_1EBBED198;
  if (!qword_1EBBED198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBED198);
  }

  return result;
}

unint64_t sub_1BA189A40()
{
  result = qword_1EBBED1A0;
  if (!qword_1EBBED1A0)
  {
    sub_1BA189B0C(255, &qword_1EBBED188, MEMORY[0x1E697F960]);
    sub_1BA18AEE8(&qword_1EBBED1A8, sub_1BA189970);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBED1A0);
  }

  return result;
}

void sub_1BA189B0C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, void))
{
  if (!*a2)
  {
    sub_1BA189970();
    v7 = a3(a1, v6, MEMORY[0x1E6981148]);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_1BA189B84()
{
  if (!qword_1EBBED1C0)
  {
    sub_1BA189B0C(255, &qword_1EBBED188, MEMORY[0x1E697F960]);
    v0 = sub_1BA4A6378();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBBED1C0);
    }
  }
}

uint64_t sub_1BA189C20@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v63 = a2;
  sub_1BA18A73C(0, &qword_1EBBED1F0);
  v59 = v3;
  v56 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v55 = &v50 - v4;
  sub_1BA18A794(0, &qword_1EBBED200, MEMORY[0x1E697F948]);
  v57 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = (&v50 - v6);
  sub_1BA18A794(0, &qword_1EBBED1E8, MEMORY[0x1E697F960]);
  v60 = *(v8 - 8);
  v61 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v58 = &v50 - v9;
  sub_1BA18A6C8();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v62 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v50 - v13;
  sub_1BA18A73C(0, &qword_1EBBED1D8);
  v16 = v15;
  v17 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v50 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v20);
  v23 = &v50 - v22;
  v64 = a1;
  v65 = 0x206E6F6973726556;
  v66 = 0xE800000000000000;
  v24 = [a1 version];
  v25 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  v27 = v26;

  MEMORY[0x1BFAF1350](v25, v27);

  sub_1B9F252FC();
  v65 = sub_1BA4A5E18();
  v66 = v28;
  v67 = v29 & 1;
  v68 = v30;
  sub_1BA4A6368();
  v31 = [a1 localCountrySet];
  v32 = sub_1BA0B78B8();
  if (v33 == 0xFF)
  {
    v41 = 1;
  }

  else
  {
    v54 = v31;
    if (v33)
    {
      v34 = v32;
      v51 = v32;
      v52 = v33;
      v35 = sub_1BA4A57F8();
      MEMORY[0x1EEE9AC00](v35);
      *(&v50 - 16) = v34;
      v53 = v19;
      v36 = v55;
      sub_1BA4A6328();
      v37 = v56;
      v38 = v59;
      (*(v56 + 16))(v7, v36, v59);
      swift_storeEnumTagMultiPayload();
      sub_1BA18A8E4();
      sub_1BA18A938();
      v39 = v58;
      sub_1BA4A58E8();
      sub_1BA18A9CC(v51, v52);
      v40 = v36;
      v19 = v53;
      (*(v37 + 8))(v40, v38);
    }

    else
    {
      *v7 = 0x532065746F6D6552;
      v7[1] = 0xEA00000000007465;
      v7[2] = v32;
      swift_storeEnumTagMultiPayload();
      sub_1BA18A8E4();
      sub_1BA18A938();
      v39 = v58;
      sub_1BA4A58E8();
    }

    sub_1BA18A9F0(v39, v14);
    v41 = 0;
    v31 = v54;
  }

  (*(v60 + 56))(v14, v41, 1, v61);
  v42 = *(v17 + 16);
  v42(v19, v23, v16);
  v43 = v62;
  sub_1BA18A81C(v14, v62);
  v44 = v63;
  v42(v63, v19, v16);
  sub_1BA18A638();
  v46 = &v44[*(v45 + 48)];
  *v46 = 0x6553206C61636F4CLL;
  *(v46 + 1) = 0xE900000000000074;
  *(v46 + 2) = v31;
  sub_1BA18A81C(v43, &v44[*(v45 + 64)]);

  v47 = v31;
  sub_1BA18A880(v14);
  v48 = *(v17 + 8);
  v48(v23, v16);
  sub_1BA18A880(v43);

  return (v48)(v19, v16);
}

uint64_t sub_1BA18A2A0@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1BA4A7388();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA4A7398();
  v6 = (*(v3 + 88))(v5, v2);
  if (v6 == *MEMORY[0x1E69A3988])
  {
    (*(v3 + 96))(v5, v2);
    v7 = 0x80000001BA4EFF40;
    v8 = sub_1BA4A7378();
    (*(*(v8 - 8) + 8))(v5, v8);
    v9 = 0xD00000000000005ALL;
  }

  else if (v6 == *MEMORY[0x1E69A3990])
  {
    v9 = 0xD000000000000034;
    v7 = 0x80000001BA4EFFA0;
  }

  else
  {
    (*(v3 + 8))(v5, v2);
    v7 = 0xE700000000000000;
    v9 = 0x6E776F6E6B6E55;
  }

  v14[0] = v9;
  v14[1] = v7;
  sub_1B9F252FC();
  result = sub_1BA4A5E18();
  *a1 = result;
  *(a1 + 8) = v11;
  *(a1 + 16) = v12 & 1;
  *(a1 + 24) = v13;
  return result;
}

uint64_t sub_1BA18A484@<X0>(uint64_t a1@<X8>)
{
  sub_1B9F252FC();
  result = sub_1BA4A5E18();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_1BA18A540()
{
  sub_1BA18A5E0();
  sub_1BA18AEE8(&qword_1EBBED1F8, sub_1BA18A5E0);
  return sub_1BA4A5D88();
}

void sub_1BA18A5E0()
{
  if (!qword_1EBBED1C8)
  {
    sub_1BA18A638();
    v0 = sub_1BA4A6428();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBBED1C8);
    }
  }
}

void sub_1BA18A638()
{
  if (!qword_1EBBED1D0)
  {
    sub_1BA18A73C(255, &qword_1EBBED1D8);
    sub_1BA18A6C8();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EBBED1D0);
    }
  }
}

void sub_1BA18A6C8()
{
  if (!qword_1EBBED1E0)
  {
    sub_1BA18A794(255, &qword_1EBBED1E8, MEMORY[0x1E697F960]);
    v0 = sub_1BA4A7AA8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBBED1E0);
    }
  }
}

void sub_1BA18A73C(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_1BA4A6378();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_1BA18A794(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, uint64_t))
{
  if (!*a2)
  {
    sub_1BA18A73C(255, &qword_1EBBED1F0);
    v7 = a3(a1, &type metadata for InternalSettingsAllowedCountrySetSection, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1BA18A81C(uint64_t a1, uint64_t a2)
{
  sub_1BA18A6C8();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BA18A880(uint64_t a1)
{
  sub_1BA18A6C8();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1BA18A8E4()
{
  result = qword_1EBBED208;
  if (!qword_1EBBED208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBED208);
  }

  return result;
}

unint64_t sub_1BA18A938()
{
  result = qword_1EBBED210;
  if (!qword_1EBBED210)
  {
    sub_1BA18A73C(255, &qword_1EBBED1F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBED210);
  }

  return result;
}

void sub_1BA18A9CC(void *a1, char a2)
{
  if (a2 != -1)
  {
    sub_1BA18A9E4(a1, a2 & 1);
  }
}

void sub_1BA18A9E4(id a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }
}

uint64_t sub_1BA18A9F0(uint64_t a1, uint64_t a2)
{
  sub_1BA18A794(0, &qword_1EBBED1E8, MEMORY[0x1E697F960]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1BA18AA80()
{
  if (!qword_1EBBED220)
  {
    sub_1BA18A5E0();
    sub_1BA18AEE8(&qword_1EBBED1F8, sub_1BA18A5E0);
    v0 = sub_1BA4A5D98();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBBED220);
    }
  }
}

uint64_t sub_1BA18AB4C(uint64_t a1, uint64_t a2, void *a3)
{
  sub_1B9F252FC();

  sub_1BA4A5E18();
  sub_1BA0B7DE8(a3);
  sub_1BA4A5E18();
  sub_1BA18AE2C();
  sub_1BA18AF30();
  return sub_1BA4A6348();
}

uint64_t sub_1BA18AC48(uint64_t a1, uint64_t a2, void *a3)
{
  sub_1BA0B7C38(a3);
  swift_getKeyPath();
  sub_1B9F1D718();
  sub_1BA18AEE8(&qword_1EBBED230, sub_1B9F1D718);
  return sub_1BA4A62F8();
}

uint64_t sub_1BA18AD20@<X0>(uint64_t a1@<X8>)
{
  sub_1B9F252FC();

  v2 = sub_1BA4A5E18();
  v4 = v3;
  v6 = v5;
  sub_1BA4A5C18();
  sub_1BA4A5BF8();

  v7 = sub_1BA4A5DE8();
  v9 = v8;
  v11 = v10;
  v13 = v12;

  sub_1BA102AF4(v2, v4, v6 & 1);

  *a1 = v7;
  *(a1 + 8) = v9;
  *(a1 + 16) = v11 & 1;
  *(a1 + 24) = v13;
  return result;
}

void sub_1BA18AE2C()
{
  if (!qword_1EBBED228)
  {
    sub_1B9F1D718();
    sub_1BA18AEE8(&qword_1EBBED230, sub_1B9F1D718);
    v0 = sub_1BA4A6318();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBBED228);
    }
  }
}

uint64_t sub_1BA18AEE8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1BA18AF30()
{
  result = qword_1EBBED238;
  if (!qword_1EBBED238)
  {
    sub_1BA18AE2C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBED238);
  }

  return result;
}

uint64_t sub_1BA18AFA0(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1BA18B028()
{
  if (!qword_1EBBED248)
  {
    sub_1BA18AE2C();
    v0 = sub_1BA4A6378();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBBED248);
    }
  }
}

unint64_t sub_1BA18B0F0(double *a1, double a2)
{
  sub_1BA18D024(0, &qword_1EDC5DBB0, sub_1B9FE9628, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BA4B5460;
  v5 = *MEMORY[0x1E69DB648];
  *(inited + 32) = *MEMORY[0x1E69DB648];
  v6 = objc_opt_self();
  v7 = *a1;
  v8 = v5;
  v9 = [v6 systemFontOfSize:a2 weight:v7];
  v10 = sub_1B9F0ADF8(0, &unk_1EDC5E210);
  *(inited + 40) = v9;
  v11 = *MEMORY[0x1E69DB650];
  *(inited + 64) = v10;
  *(inited + 72) = v11;
  v12 = objc_opt_self();
  v13 = v11;
  v14 = [v12 darkTextColor];
  *(inited + 104) = sub_1B9F0ADF8(0, &qword_1EDC6E380);
  *(inited + 80) = v14;
  v15 = sub_1B9FDB1C4(inited);
  swift_setDeallocating();
  sub_1B9FE9628();
  swift_arrayDestroy();
  return v15;
}

void *static NSMutableParagraphStyle.pdfTextStyle(lineHeight:lineSpacing:paragraphSpacing:)(uint64_t a1, char a2, uint64_t a3, char a4, uint64_t a5, char a6)
{
  v12 = [objc_allocWithZone(MEMORY[0x1E69DB7C8]) init];
  v13 = v12;
  if (a2)
  {
    if (a6)
    {
      goto LABEL_3;
    }

LABEL_7:
    [v13 setParagraphSpacing_];
    if (a4)
    {
      return v13;
    }

    goto LABEL_4;
  }

  [v12 setMinimumLineHeight_];
  [v13 setMaximumLineHeight_];
  if ((a6 & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_3:
  if ((a4 & 1) == 0)
  {
LABEL_4:
    [v13 setLineSpacing_];
  }

  return v13;
}

unint64_t static PDFDefaults.Text.bodyHeavyTextAttributes.getter()
{
  v0 = sub_1BA18C230(7.0);
  v1 = *MEMORY[0x1E69DB648];
  v2 = [objc_opt_self() systemFontOfSize:10.0 weight:*MEMORY[0x1E69DB960]];
  v7 = sub_1B9F0ADF8(0, &unk_1EDC5E210);
  *&v6 = v2;
  sub_1B9F46920(&v6, v5);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1B9FF1D74(v5, v1, isUniquelyReferenced_nonNull_native);
  return v0;
}

unint64_t static PDFDefaults.Text.bodyGrayTextAttributes.getter()
{
  v0 = sub_1BA18C230(7.0);
  v1 = *MEMORY[0x1E69DB650];
  v2 = [objc_opt_self() grayColor];
  v7 = sub_1B9F0ADF8(0, &qword_1EDC6E380);
  *&v6 = v2;
  sub_1B9F46920(&v6, v5);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1B9FF1D74(v5, v1, isUniquelyReferenced_nonNull_native);
  return v0;
}

unint64_t static PDFDefaults.Text.largeSemiboldBodyTextAttributes.getter()
{
  v0 = MEMORY[0x1E69DB980];
  v1 = sub_1BA18C4FC(MEMORY[0x1E69DB980]);
  v2 = *MEMORY[0x1E69DB648];
  v3 = [objc_opt_self() systemFontOfSize:14.0 weight:*v0];
  v8 = sub_1B9F0ADF8(0, &unk_1EDC5E210);
  *&v7 = v3;
  sub_1B9F46920(&v7, v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1B9FF1D74(v6, v2, isUniquelyReferenced_nonNull_native);
  return v1;
}

unint64_t static PDFDefaults.Text.calloutTextAttributes.getter()
{
  sub_1BA18D024(0, &qword_1EDC5DBB0, sub_1B9FE9628, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BA4B9FD0;
  v1 = *MEMORY[0x1E69DB648];
  *(inited + 32) = *MEMORY[0x1E69DB648];
  v2 = objc_opt_self();
  v3 = v1;
  v4 = [v2 systemFontOfSize_];
  v5 = sub_1B9F0ADF8(0, &unk_1EDC5E210);
  *(inited + 40) = v4;
  v6 = *MEMORY[0x1E69DB650];
  *(inited + 64) = v5;
  *(inited + 72) = v6;
  v7 = objc_opt_self();
  v8 = v6;
  v9 = [v7 blackColor];
  v10 = sub_1B9F0ADF8(0, &qword_1EDC6E380);
  *(inited + 80) = v9;
  v11 = *MEMORY[0x1E69DB688];
  *(inited + 104) = v10;
  *(inited + 112) = v11;
  v12 = objc_allocWithZone(MEMORY[0x1E69DB7C8]);
  v13 = v11;
  v14 = [v12 init];
  [v14 setLineSpacing_];
  *(inited + 144) = sub_1B9F0ADF8(0, &qword_1EDC5E340);
  *(inited + 120) = v14;
  v15 = sub_1B9FDB1C4(inited);
  swift_setDeallocating();
  sub_1B9FE9628();
  swift_arrayDestroy();
  return v15;
}

unint64_t static PDFDefaults.Text.calloutEmphTextAttributes.getter()
{
  sub_1BA18D024(0, &qword_1EDC5DBB0, sub_1B9FE9628, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BA4B9FD0;
  v1 = *MEMORY[0x1E69DB648];
  *(inited + 32) = *MEMORY[0x1E69DB648];
  v2 = objc_opt_self();
  v3 = *MEMORY[0x1E69DB980];
  v4 = v1;
  v5 = [v2 systemFontOfSize:12.0 weight:v3];
  v6 = sub_1B9F0ADF8(0, &unk_1EDC5E210);
  *(inited + 40) = v5;
  v7 = *MEMORY[0x1E69DB650];
  *(inited + 64) = v6;
  *(inited + 72) = v7;
  v8 = objc_opt_self();
  v9 = v7;
  v10 = [v8 blackColor];
  v11 = sub_1B9F0ADF8(0, &qword_1EDC6E380);
  *(inited + 80) = v10;
  v12 = *MEMORY[0x1E69DB688];
  *(inited + 104) = v11;
  *(inited + 112) = v12;
  v13 = objc_allocWithZone(MEMORY[0x1E69DB7C8]);
  v14 = v12;
  v15 = [v13 init];
  [v15 setLineSpacing_];
  *(inited + 144) = sub_1B9F0ADF8(0, &qword_1EDC5E340);
  *(inited + 120) = v15;
  v16 = sub_1B9FDB1C4(inited);
  swift_setDeallocating();
  sub_1B9FE9628();
  swift_arrayDestroy();
  return v16;
}

unint64_t static PDFDefaults.Text.largeCaptionAttributes.getter()
{
  v0 = _s18HealthExperienceUI11PDFDefaultsO4TextO17captionAttributesSDySo21NSAttributedStringKeyaypGvgZ_0();
  v1 = *MEMORY[0x1E69DB648];
  v2 = [objc_opt_self() systemFontOfSize_];
  v7 = sub_1B9F0ADF8(0, &unk_1EDC5E210);
  *&v6 = v2;
  sub_1B9F46920(&v6, v5);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1B9FF1D74(v5, v1, isUniquelyReferenced_nonNull_native);
  return v0;
}

uint64_t static PDFDefaults.Text.captionBlackAttributesDefaultParagraphSpacing.getter()
{
  v2 = sub_1BA18C8EC(_s18HealthExperienceUI11PDFDefaultsO4TextO17captionAttributesSDySo21NSAttributedStringKeyaypGvgZ_0, &selRef_blackColor);
  sub_1BA0F66B8(*MEMORY[0x1E69DB688], v1);
  sub_1B9F0DC80(v1, sub_1BA01E3E8);
  return v2;
}

uint64_t static PDFDefaults.Text.captionBoldBlackAttributesDefaultParagraphSpacing.getter()
{
  v2 = sub_1BA18C9A4(MEMORY[0x1E69DB958]);
  sub_1BA0F66B8(*MEMORY[0x1E69DB688], v1);
  sub_1B9F0DC80(v1, sub_1BA01E3E8);
  return v2;
}

id sub_1BA18BC24()
{
  result = [objc_opt_self() systemFontOfSize_];
  qword_1EBBED250 = result;
  return result;
}

id sub_1BA18BCC0()
{
  result = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.24 green:0.24 blue:0.26 alpha:0.6];
  qword_1EBBED260 = result;
  return result;
}

id sub_1BA18BDBC(uint64_t a1, double *a2, void *a3)
{
  result = [objc_opt_self() systemFontOfSize:10.0 weight:*a2];
  *a3 = result;
  return result;
}

id sub_1BA18BE30(void *a1, void **a2)
{
  if (*a1 == -1)
  {
    v3 = *a2;
  }

  else
  {
    swift_once();
    v3 = *a2;
  }

  return v3;
}

unint64_t static PDFDefaults.Text.semiboldTableHeaderAttributes.getter()
{
  sub_1BA18D024(0, &qword_1EDC5DBB0, sub_1B9FE9628, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BA4B5480;
  v1 = *MEMORY[0x1E69DB648];
  *(inited + 32) = *MEMORY[0x1E69DB648];
  v2 = qword_1EBBE8460;
  v3 = v1;
  if (v2 != -1)
  {
    swift_once();
  }

  v4 = qword_1EBBED278;
  *(inited + 64) = sub_1B9F0ADF8(0, &unk_1EDC5E210);
  *(inited + 40) = v4;
  v5 = v4;
  v6 = sub_1B9FDB1C4(inited);
  swift_setDeallocating();
  sub_1B9F0DC80(inited + 32, sub_1B9FE9628);
  return v6;
}

uint64_t sub_1BA18BFB4()
{
  sub_1B9F0ADF8(0, &qword_1EDC6E380);
  result = sub_1BA4A7738();
  qword_1EBBED280 = result;
  return result;
}

unint64_t static PDFDefaults.Header.headerDOBAttributes.getter()
{
  sub_1BA18D024(0, &qword_1EDC5DBB0, sub_1B9FE9628, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BA4B5460;
  v1 = *MEMORY[0x1E69DB648];
  *(inited + 32) = *MEMORY[0x1E69DB648];
  v2 = objc_opt_self();
  v3 = v1;
  v4 = [v2 systemFontOfSize_];
  v5 = sub_1B9F0ADF8(0, &unk_1EDC5E210);
  v6 = MEMORY[0x1E69DB650];
  *(inited + 40) = v4;
  v7 = *v6;
  *(inited + 64) = v5;
  *(inited + 72) = v7;
  v8 = qword_1EBBE8448;
  v9 = v7;
  if (v8 != -1)
  {
    swift_once();
  }

  v10 = qword_1EBBED260;
  *(inited + 104) = sub_1B9F0ADF8(0, &qword_1EDC6E380);
  *(inited + 80) = v10;
  v11 = v10;
  v12 = sub_1B9FDB1C4(inited);
  swift_setDeallocating();
  sub_1B9FE9628();
  swift_arrayDestroy();
  return v12;
}

uint64_t static PDFDefaults.Footer.default()@<X0>(uint64_t a1@<X8>)
{
  result = _s18HealthExperienceUI11PDFDefaultsO6FooterO05appleA6StringSo012NSAttributedG0CvgZ_0();
  *(a1 + 24) = &type metadata for PDFBody;
  *(a1 + 32) = &protocol witness table for PDFBody;
  *(a1 + 8) = 256;
  *a1 = result;
  return result;
}

unint64_t sub_1BA18C230(double a1)
{
  sub_1BA18D024(0, &qword_1EDC5DBB0, sub_1B9FE9628, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BA4B9FD0;
  v3 = *MEMORY[0x1E69DB648];
  *(inited + 32) = *MEMORY[0x1E69DB648];
  v4 = objc_opt_self();
  v5 = v3;
  v6 = [v4 systemFontOfSize_];
  v7 = sub_1B9F0ADF8(0, &unk_1EDC5E210);
  *(inited + 40) = v6;
  v8 = *MEMORY[0x1E69DB650];
  *(inited + 64) = v7;
  *(inited + 72) = v8;
  v9 = objc_opt_self();
  v10 = v8;
  v11 = [v9 darkTextColor];
  v12 = sub_1B9F0ADF8(0, &qword_1EDC6E380);
  *(inited + 80) = v11;
  v13 = *MEMORY[0x1E69DB688];
  *(inited + 104) = v12;
  *(inited + 112) = v13;
  v14 = objc_allocWithZone(MEMORY[0x1E69DB7C8]);
  v15 = v13;
  v16 = [v14 init];
  [v16 setParagraphSpacing_];
  [v16 setLineSpacing_];
  *(inited + 144) = sub_1B9F0ADF8(0, &qword_1EDC5E340);
  *(inited + 120) = v16;
  v17 = sub_1B9FDB1C4(inited);
  swift_setDeallocating();
  sub_1B9FE9628();
  swift_arrayDestroy();
  return v17;
}

unint64_t _s18HealthExperienceUI11PDFDefaultsO4TextO18bodyEmphAttributesSDySo21NSAttributedStringKeyaypGvgZ_0()
{
  v0 = sub_1BA18C230(7.0);
  v1 = *MEMORY[0x1E69DB648];
  if (qword_1EBBE8440 != -1)
  {
    swift_once();
  }

  v2 = qword_1EBBED258;
  v8 = sub_1B9F0ADF8(0, &unk_1EDC5E210);
  *&v7 = v2;
  sub_1B9F46920(&v7, v6);
  v3 = v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1B9FF1D74(v6, v1, isUniquelyReferenced_nonNull_native);
  return v0;
}

unint64_t sub_1BA18C4FC(double *a1)
{
  sub_1BA18D024(0, &qword_1EDC5DBB0, sub_1B9FE9628, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BA4B9FD0;
  v3 = *MEMORY[0x1E69DB648];
  *(inited + 32) = *MEMORY[0x1E69DB648];
  v4 = objc_opt_self();
  v5 = *a1;
  v6 = v3;
  v7 = [v4 systemFontOfSize:10.0 weight:v5];
  v8 = sub_1B9F0ADF8(0, &unk_1EDC5E210);
  *(inited + 40) = v7;
  v9 = *MEMORY[0x1E69DB650];
  *(inited + 64) = v8;
  *(inited + 72) = v9;
  v10 = objc_opt_self();
  v11 = v9;
  v12 = [v10 darkTextColor];
  v13 = sub_1B9F0ADF8(0, &qword_1EDC6E380);
  *(inited + 80) = v12;
  v14 = *MEMORY[0x1E69DB688];
  *(inited + 104) = v13;
  *(inited + 112) = v14;
  v15 = objc_allocWithZone(MEMORY[0x1E69DB7C8]);
  v16 = v14;
  v17 = [v15 init];
  [v17 setParagraphSpacing_];
  [v17 setLineSpacing_];
  *(inited + 144) = sub_1B9F0ADF8(0, &qword_1EDC5E340);
  *(inited + 120) = v17;
  v18 = sub_1B9FDB1C4(inited);
  swift_setDeallocating();
  sub_1B9FE9628();
  swift_arrayDestroy();
  return v18;
}

unint64_t _s18HealthExperienceUI11PDFDefaultsO4TextO17captionAttributesSDySo21NSAttributedStringKeyaypGvgZ_0()
{
  sub_1BA18D024(0, &qword_1EDC5DBB0, sub_1B9FE9628, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BA4B9FD0;
  v1 = *MEMORY[0x1E69DB648];
  *(inited + 32) = *MEMORY[0x1E69DB648];
  v2 = objc_opt_self();
  v3 = v1;
  v4 = [v2 systemFontOfSize_];
  v5 = sub_1B9F0ADF8(0, &unk_1EDC5E210);
  v6 = MEMORY[0x1E69DB650];
  *(inited + 40) = v4;
  v7 = *v6;
  *(inited + 64) = v5;
  *(inited + 72) = v7;
  v8 = qword_1EBBE8448;
  v9 = v7;
  if (v8 != -1)
  {
    swift_once();
  }

  v10 = qword_1EBBED260;
  v11 = sub_1B9F0ADF8(0, &qword_1EDC6E380);
  *(inited + 80) = v10;
  v12 = *MEMORY[0x1E69DB688];
  *(inited + 104) = v11;
  *(inited + 112) = v12;
  v13 = objc_allocWithZone(MEMORY[0x1E69DB7C8]);
  v14 = v10;
  v15 = v12;
  v16 = [v13 init];
  [v16 setParagraphSpacing_];
  *(inited + 144) = sub_1B9F0ADF8(0, &qword_1EDC5E340);
  *(inited + 120) = v16;
  v17 = sub_1B9FDB1C4(inited);
  swift_setDeallocating();
  sub_1B9FE9628();
  swift_arrayDestroy();
  return v17;
}

uint64_t sub_1BA18C8EC(uint64_t (*a1)(void), SEL *a2)
{
  v3 = a1();
  v4 = *MEMORY[0x1E69DB650];
  v5 = [objc_opt_self() *a2];
  v10 = sub_1B9F0ADF8(0, &qword_1EDC6E380);
  *&v9 = v5;
  sub_1B9F46920(&v9, v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1B9FF1D74(v8, v4, isUniquelyReferenced_nonNull_native);
  return v3;
}

uint64_t sub_1BA18C9A4(double *a1)
{
  v2 = sub_1BA18C8EC(_s18HealthExperienceUI11PDFDefaultsO4TextO17captionAttributesSDySo21NSAttributedStringKeyaypGvgZ_0, &selRef_blackColor);
  v3 = *MEMORY[0x1E69DB648];
  v4 = [objc_opt_self() systemFontOfSize:8.0 weight:*a1];
  v9 = sub_1B9F0ADF8(0, &unk_1EDC5E210);
  *&v8 = v4;
  sub_1B9F46920(&v8, v7);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1B9FF1D74(v7, v3, isUniquelyReferenced_nonNull_native);
  return v2;
}

uint64_t _s18HealthExperienceUI11PDFDefaultsO6FooterO05appleA6StringSo012NSAttributedG0CvgZ_0()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E69DB7F0]) init];
  if (qword_1EBBE8450 != -1)
  {
    swift_once();
  }

  v1 = [objc_opt_self() configurationWithFont_];
  v2 = sub_1BA4A6758();
  v3 = [objc_opt_self() systemImageNamed:v2 withConfiguration:v1];

  [v0 setImage_];
  v4 = [objc_allocWithZone(MEMORY[0x1E696AD40]) init];
  sub_1B9F0ADF8(0, &qword_1EDC6B520);
  v5 = [swift_getObjCClassFromMetadata() attributedStringWithAttachment_];
  [v4 appendAttributedString_];

  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  v6 = sub_1BA4A1318();
  MEMORY[0x1BFAF1350](v6);

  v7 = objc_allocWithZone(MEMORY[0x1E696AD40]);
  v8 = sub_1BA4A6758();

  v9 = [v7 initWithString_];

  [v4 appendAttributedString_];
  sub_1BA18C4FC(MEMORY[0x1E69DB980]);
  type metadata accessor for Key(0);
  sub_1BA0262E4();
  v10 = sub_1BA4A6618();

  v11 = v4;
  v12 = [v11 string];
  _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();

  v13 = sub_1BA4A68D8();

  if (v13 < 0)
  {
    __break(1u);
  }

  else
  {
    [v11 addAttributes:v10 range:{0, v13}];

    return v11;
  }

  return result;
}

uint64_t _s18HealthExperienceUI11PDFDefaultsO6FooterO19pageIndicatorString0F6Number0F5CountSSSi_SitFZ_0(uint64_t a1, uint64_t a2)
{
  sub_1BA18D024(0, &qword_1EDC6AE40, MEMORY[0x1E6969770], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v13 - v5;
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  sub_1BA4A1318();
  sub_1BA4A17B8();
  v7 = sub_1BA4A17C8();
  (*(*(v7 - 8) + 56))(v6, 0, 1, v7);
  sub_1BA18D024(0, &qword_1EDC6B410, sub_1BA06FAE4, MEMORY[0x1E69E6F90]);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1BA4B5460;
  v9 = MEMORY[0x1E69E6530];
  v10 = MEMORY[0x1E69E65A8];
  *(v8 + 56) = MEMORY[0x1E69E6530];
  *(v8 + 64) = v10;
  *(v8 + 32) = a1;
  *(v8 + 96) = v9;
  *(v8 + 104) = v10;
  *(v8 + 72) = a2;
  v11 = sub_1BA4A67C8();

  sub_1BA18D088(v6);
  return v11;
}

void sub_1BA18D024(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1BA18D088(uint64_t a1)
{
  sub_1BA18D024(0, &qword_1EDC6AE40, MEMORY[0x1E6969770], MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_1BA18D1D0(char a1, void *a2)
{
  v4 = type metadata accessor for ListLayoutConfiguration();
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    if (qword_1EDC6CBB0 != -1)
    {
      v12 = v5;
      swift_once();
      v5 = v12;
    }

    v8 = qword_1EDC6CBB8;
  }

  else
  {
    if (qword_1EDC6CB88 != -1)
    {
      v13 = v5;
      swift_once();
      v5 = v13;
    }

    v8 = qword_1EDC6CB90;
  }

  v9 = __swift_project_value_buffer(v5, v8);
  sub_1BA18F050(v9, v7, type metadata accessor for ListLayoutConfiguration);
  *(v7 + 19) = 0x3F847AE147AE147BLL;
  *(v7 + 8) = 0x4028000000000000;
  v10 = ListLayoutConfiguration.layout(for:)(a2);
  sub_1B9F5AC84(v7, type metadata accessor for ListLayoutConfiguration);
  return v10;
}

void sub_1BA18D358(void *a1)
{
  v2 = type metadata accessor for HealthChecklistViewController();
  v3 = objc_allocWithZone(v2);
  v4 = &v3[OBJC_IVAR____TtC18HealthExperienceUI29HealthChecklistViewController____lazy_storage___mainStore];
  *v4 = 0u;
  *(v4 + 1) = 0u;
  *(v4 + 4) = 0;
  *&v3[OBJC_IVAR____TtC18HealthExperienceUI29HealthChecklistViewController____lazy_storage___dataSources] = 0;
  *&v3[OBJC_IVAR____TtC18HealthExperienceUI29HealthChecklistViewController_analyticsSource] = xmmword_1BA4C2560;
  v3[OBJC_IVAR____TtC18HealthExperienceUI29HealthChecklistViewController_isDoneButtonVisible] = 1;
  v8.receiver = v3;
  v8.super_class = v2;
  v5 = objc_msgSendSuper2(&v8, sel_initWithCollectionViewLayout_, 0);
  v6 = [a1 navigationController];
  if (v6)
  {
    v7 = v6;
    [v6 pushViewController:v5 animated:1];
  }
}

uint64_t sub_1BA18D464()
{

  return swift_unknownObjectRelease();
}

uint64_t sub_1BA18D4A4()
{

  v1 = OBJC_IVAR____TtC18HealthExperienceUI27CompoundSectionedDataSource_snapshot;
  sub_1B9F12538();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  swift_unknownObjectRelease();
  return v0;
}

uint64_t sub_1BA18D574()
{
  sub_1BA18D4A4();

  return swift_deallocClassInstance();
}

void sub_1BA18D728(uint64_t *a1@<X8>)
{
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  v2 = sub_1BA4A1318();
  v4 = v3;
  a1[3] = &type metadata for CollectionViewHeaderItem;
  a1[4] = sub_1BA0473B0();
  v5 = swift_allocObject();
  *a1 = v5;
  type metadata accessor for CollectionViewHeaderCell();
  sub_1BA18F004(0, &qword_1EDC664A8, type metadata accessor for CollectionViewHeaderCell);
  *(v5 + 16) = sub_1BA4A6808();
  *(v5 + 24) = v6;
  *(v5 + 32) = v2;
  *(v5 + 40) = v4;
  *(v5 + 48) = sub_1BA18F698;
  *(v5 + 56) = 0;
  *(v5 + 64) = 1;
  *(v5 + 72) = 1;
  *(v5 + 144) = 0;
  *(v5 + 80) = 0u;
  *(v5 + 96) = 0u;
  *(v5 + 112) = 0u;
  *(v5 + 121) = 0u;
  sub_1B9F252FC();
  v7 = sub_1BA4A7B58();
  v9 = v8;
  sub_1B9F1C048(0, &qword_1EDC6E330);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1BA4B5480;
  *(v10 + 32) = v7;
  *(v10 + 40) = v9;

  v11 = sub_1BA4A6AE8();

  v12 = HKUIJoinStringsForAutomationIdentifier();

  if (v12)
  {

    v13 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    v15 = v14;

    *(v5 + 152) = v13;
    *(v5 + 160) = v15;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1BA18D984(uint64_t a1)
{
  v2 = sub_1BA4A3EA8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F0A534(a1, v23);
  sub_1B9F0D950(0, &qword_1EDC6AD50);
  sub_1BA4A27B8();
  if (swift_dynamicCast())
  {
    v6 = v21;
    v7 = sub_1BA18DC20(v21);

    return v7;
  }

  else
  {
    sub_1BA4A3E28();
    sub_1B9F0A534(a1, v23);
    v9 = sub_1BA4A3E88();
    v10 = sub_1BA4A6FB8();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v22 = v12;
      *v11 = 136446466;
      v13 = sub_1BA4A85D8();
      v15 = sub_1B9F0B82C(v13, v14, &v22);

      *(v11 + 4) = v15;
      *(v11 + 12) = 2082;
      sub_1B9F0A534(v23, &v21);
      v16 = sub_1BA4A6808();
      v18 = v17;
      __swift_destroy_boxed_opaque_existential_1(v23);
      v19 = sub_1B9F0B82C(v16, v18, &v22);

      *(v11 + 14) = v19;
      _os_log_impl(&dword_1B9F07000, v9, v10, "%{public}s: Incorrect view model; expected FeedItem, got: %{public}s", v11, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v12, -1, -1);
      MEMORY[0x1BFAF43A0](v11, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1(v23);
    }

    (*(v3 + 8))(v5, v2);
    return MEMORY[0x1E69E7CC0];
  }
}

uint64_t sub_1BA18DC20(void *a1)
{
  v2 = sub_1BA4A3EA8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [a1 userData];
  if (v7)
  {
    v8 = v7;
    v9 = sub_1BA4A1608();
    v11 = v10;

    sub_1BA4A0EB8();
    swift_allocObject();
    sub_1B9F206D4(v9, v11);
    sub_1BA4A0EA8();
    sub_1BA18F124();
    sub_1BA4A0E98();

    sub_1B9F2BB4C(v9, v11);
    v29[1] = v31;
    sub_1BA18F178(&v30, a1);
    v27 = v26;
    sub_1B9F2BB4C(v9, v11);

    return v27;
  }

  else
  {
    sub_1BA4A3E28();
    v12 = a1;
    v13 = sub_1BA4A3E88();
    v14 = sub_1BA4A6FB8();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v30 = v16;
      *v15 = 136446466;
      v17 = sub_1BA4A85D8();
      v18 = v2;
      v20 = sub_1B9F0B82C(v17, v19, &v30);

      *(v15 + 4) = v20;
      *(v15 + 12) = 2082;
      v21 = [v12 uniqueIdentifier];
      v22 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      v24 = v23;

      v25 = sub_1B9F0B82C(v22, v24, &v30);

      *(v15 + 14) = v25;
      _os_log_impl(&dword_1B9F07000, v13, v14, "%{public}s Could not access feed item user data: %{public}s", v15, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v16, -1, -1);
      MEMORY[0x1BFAF43A0](v15, -1, -1);

      (*(v3 + 8))(v5, v18);
    }

    else
    {

      (*(v3 + 8))(v5, v2);
    }

    return MEMORY[0x1E69E7CC0];
  }
}

void *sub_1BA18E140(uint64_t a1, void *a2)
{
  v3 = type metadata accessor for ListLayoutConfiguration();
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDC6CB88 != -1)
  {
    v10 = v4;
    swift_once();
    v4 = v10;
  }

  v7 = __swift_project_value_buffer(v4, qword_1EDC6CB90);
  sub_1BA18F050(v7, v6, type metadata accessor for ListLayoutConfiguration);
  *(v6 + 19) = 0x3F847AE147AE147BLL;
  *(v6 + 8) = 0x4028000000000000;
  v8 = ListLayoutConfiguration.layout(for:)(a2);
  sub_1B9F5AC84(v6, type metadata accessor for ListLayoutConfiguration);
  return v8;
}

uint64_t sub_1BA18E254()
{
  v25 = *v0;
  sub_1B9F0C9D8(0, &qword_1EDC6E2A0, MEMORY[0x1E6968130], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v24 - v2;
  sub_1BA4A27B8();
  sub_1B9F0C9D8(0, &qword_1EDC6B460, MEMORY[0x1E69A3C08], MEMORY[0x1E69E6F90]);
  v4 = sub_1BA4A1C68();
  v5 = *(v4 - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1BA4B5480;
  (*(v5 + 104))(v7 + v6, *MEMORY[0x1E69A3BF0], v4);
  v8 = sub_1BA4A0FA8();
  (*(*(v8 - 8) + 56))(v3, 1, 1, v8);
  sub_1B9F1C048(0, &qword_1EDC6B450);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1BA4B5460;
  *(v9 + 32) = sub_1BA4A1D78();
  *(v9 + 40) = 0;
  v10 = sub_1BA4A25F8();

  sub_1B9F1C1B0(v3);
  sub_1B9F1C048(0, &qword_1EDC6B400);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1BA4B5470;
  v12 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  v13 = sub_1BA4A6758();
  v14 = [v12 initWithKey:v13 ascending:0];

  *(v11 + 32) = v14;
  v15 = v10;
  v16 = sub_1BA4A7558();

  sub_1B9F126E0();
  v18 = objc_allocWithZone(v17);
  v19 = v16;
  v20 = _s18HealthExperienceUI33FeedItemSuggestedActionDataSourceCyACSo26NSFetchedResultsControllerCy0A8Platform0dE0CGcfc_0(v19);
  v21 = swift_allocObject();
  *(v21 + 16) = v25;
  v22 = sub_1B9F17A68(v20, sub_1BA18F11C, v21, 0);

  return v22;
}

uint64_t sub_1BA18E630()
{
  v0 = sub_1BA4A1798();
  v35 = *(v0 - 8);
  v36 = v0;
  MEMORY[0x1EEE9AC00](v0);
  v34 = &v34 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = type metadata accessor for CollectionViewGroupedFooterItem(0);
  MEMORY[0x1EEE9AC00](v37);
  v3 = &v34 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for ContentConfigurationItem();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1BA4A4428();
  v38 = *(v7 - 8);
  v39 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA4A4418();
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  sub_1BA4A1318();
  sub_1BA4A43B8();
  v10 = [objc_opt_self() systemBlueColor];
  v11 = sub_1BA4A4238();
  sub_1BA4A41F8();
  v11(&v40, 0);
  v12 = MEMORY[0x1E69DC110];
  v13 = v39;
  *(v6 + 12) = v39;
  *(v6 + 13) = v12;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v6 + 9);
  (*(v38 + 16))(boxed_opaque_existential_1, v9, v13);
  v15 = v4[10];
  v16 = sub_1BA4A4168();
  (*(*(v16 - 8) + 56))(&v6[v15], 1, 1, v16);
  v42 = 0;
  v40 = 0u;
  v41 = 0u;
  sub_1B9F2F610(&v40);
  *(&v41 + 1) = &type metadata for BasicCellSelectionHandler;
  v42 = &off_1F381BCC8;
  *&v40 = sub_1BA18D358;
  *(&v40 + 1) = 0;
  LOBYTE(v41) = 2;
  sub_1B9F2F698(&v40, (v6 + 16));
  *&v6[v4[12]] = 0;
  *&v6[v4[13]] = 0;
  *v6 = 0xD00000000000002DLL;
  *(v6 + 1) = 0x80000001BA4F0240;
  v6[112] = 0;
  *(v6 + 15) = MEMORY[0x1E69E7CC0];
  *(v6 + 7) = 0xD000000000000019;
  *(v6 + 8) = 0x80000001BA4F0270;
  v17 = &v6[v4[11]];
  *v17 = 0;
  *(v17 + 1) = 0;
  sub_1B9F2F610(&v40);
  v18 = sub_1BA4A1318();
  v20 = v19;
  *&v40 = 0x74497265746F6F46;
  *(&v40 + 1) = 0xEB000000005F6D65;
  v21 = v34;
  sub_1BA4A1788();
  v22 = sub_1BA4A1748();
  v24 = v23;
  (*(v35 + 8))(v21, v36);
  MEMORY[0x1BFAF1350](v22, v24);

  v25 = v40;
  *&v40 = type metadata accessor for CollectionViewGroupedFooterCell();
  sub_1BA18F004(0, qword_1EDC63330, type metadata accessor for CollectionViewGroupedFooterCell);
  *v3 = sub_1BA4A6808();
  *(v3 + 1) = v26;
  v27 = v37;
  v28 = &v3[*(v37 + 32)];
  *v28 = 0u;
  *(v28 + 1) = 0u;
  v28[32] = 1;
  v29 = &v3[*(v27 + 28)];
  *v29 = v18;
  v29[1] = v20;
  type metadata accessor for CollectionViewGroupedFooterItem.Content(0);
  swift_storeEnumTagMultiPayload();
  *(v3 + 1) = v25;
  sub_1BA18EF9C(0, &qword_1EDC6B448, &qword_1EDC6E1B0, MEMORY[0x1E69A3348], MEMORY[0x1E69E6F90]);
  *(v3 + 4) = 0;
  *(v3 + 5) = 0;
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_1BA4B5460;
  *(v30 + 56) = v4;
  *(v30 + 64) = sub_1B9F2F820(&qword_1EDC66498, type metadata accessor for ContentConfigurationItem);
  v31 = __swift_allocate_boxed_opaque_existential_1((v30 + 32));
  sub_1BA18F050(v6, v31, type metadata accessor for ContentConfigurationItem);
  *(v30 + 96) = v27;
  *(v30 + 104) = sub_1B9F2F820(&qword_1EDC63270, type metadata accessor for CollectionViewGroupedFooterItem);
  v32 = __swift_allocate_boxed_opaque_existential_1((v30 + 72));
  sub_1BA18F0B8(v3, v32);
  (*(v38 + 8))(v9, v39);
  sub_1B9F5AC84(v6, type metadata accessor for ContentConfigurationItem);
  return v30;
}

uint64_t sub_1BA18EC68()
{
  v0 = [objc_opt_self() shared];
  v1 = [v0 isHealthChecklistAvailable];

  if (!v1)
  {
    return 0;
  }

  v2 = sub_1BA18E630();
  type metadata accessor for MutableArrayDataSourceWithLayout();
  sub_1B9F320F0();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BA4B5480;
  v4 = sub_1B9FE4F98(v2);

  *(inited + 32) = v4;
  return MutableArrayDataSourceWithLayout.__allocating_init(_:collapseEmptySections:layoutConstructor:)(inited, 1, sub_1BA18E140, 0);
}

uint64_t sub_1BA18ED54()
{
  type metadata accessor for NotificationSettingsOnboardedFeaturesDataSource(0);
  swift_allocObject();
  sub_1BA4A2198();
  v1 = sub_1BA18E254();
  *(v0 + OBJC_IVAR____TtC18HealthExperienceUI38NotificationSettingsFeaturesDataSource_onboardedFeaturesDataSource) = v1;

  v2 = sub_1BA27F2F0(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v4 = v2[2];
  v3 = v2[3];
  v5 = v4 + 1;
  if (v4 >= v3 >> 1)
  {
LABEL_18:
    v2 = sub_1BA27F2F0((v3 > 1), v5, 1, v2);
  }

  v2[2] = v5;
  v6 = &v2[2 * v4];
  v6[4] = v1;
  v6[5] = &protocol witness table for MutableArrayDataSource;
  v7 = sub_1BA18EC68();
  v4 = v8;
  v9 = (v0 + OBJC_IVAR____TtC18HealthExperienceUI38NotificationSettingsFeaturesDataSource_healthChecklistDataSource);
  *v9 = v7;
  v9[1] = v8;
  v10 = v2[2];
  v11 = v2[3];
  v1 = v10 + 1;
  swift_unknownObjectRetain();
  if (v10 >= v11 >> 1)
  {
    v2 = sub_1BA27F2F0((v11 > 1), v10 + 1, 1, v2);
  }

  v12 = 0;
  v2[2] = v1;
  v13 = &v2[2 * v10 + 4];
  *v13 = v7;
  v13[1] = v4;
  v5 = MEMORY[0x1E69E7CC0];
LABEL_5:
  v3 = &v2[2 * v12 + 4];
  while (v1 != v12)
  {
    if (v12 >= v2[2])
    {
      __break(1u);
      goto LABEL_18;
    }

    ++v12;
    v14 = v3 + 16;
    v4 = *v3;
    v3 += 16;
    if (v4)
    {
      v15 = *(v14 - 8);
      swift_unknownObjectRetain();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v21 = v5;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v5 = sub_1B9F1E00C(0, *(v5 + 16) + 1, 1, v5);
        v21 = v5;
      }

      v18 = *(v5 + 16);
      v17 = *(v5 + 24);
      if (v18 >= v17 >> 1)
      {
        v5 = sub_1B9F1E00C(v17 > 1, v18 + 1, 1, v5);
        v21 = v5;
      }

      ObjectType = swift_getObjectType();
      sub_1BA1BA008(v18, v4, &v21, ObjectType, v15);
      goto LABEL_5;
    }
  }

  return CompoundSectionedDataSource.init(_:)(v5);
}
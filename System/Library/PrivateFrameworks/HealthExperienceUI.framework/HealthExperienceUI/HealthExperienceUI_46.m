uint64_t sub_1BA3ED64C(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = sub_1BA4A3EA8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1BA4A1728();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtC18HealthExperienceUI29ProfileSharingWithYouTileCell_item;
  swift_beginAccess();
  sub_1B9F68124(v1 + v12, v46);
  if (!v46[3])
  {
    return sub_1B9F7B644(v46);
  }

  v44 = v9;
  sub_1B9F0D950(0, &qword_1EDC6E1B0);
  type metadata accessor for SummarySharingAcceptedProfileTileItem();
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
    return result;
  }

  v42 = a1;
  v14 = v45[0];
  v15 = *(v45[0] + 112);
  if (!v15)
  {
    goto LABEL_12;
  }

  v40 = ObjectType;
  v41 = v5;
  v16 = objc_allocWithZone(MEMORY[0x1E696C1C0]);
  v43 = v15;
  v17 = [v16 init];
  v18 = v17;
  if (*(v14 + 112))
  {
    [v17 setProfileIdentifier_];
  }

  sub_1B9F0ADF8(0, &qword_1EDC6E350);
  [v18 resume];
  v19 = [v18 profileIdentifier];

  v20 = v43;
  v21 = sub_1BA4A7798();

  if ((v21 & 1) == 0)
  {

    ObjectType = v40;
    v5 = v41;
LABEL_12:
    sub_1BA4A3DD8();

    v29 = sub_1BA4A3E88();
    v30 = sub_1BA4A6FB8();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v45[0] = v44;
      *v31 = 136315394;
      v46[0] = ObjectType;
      swift_getMetatypeMetadata();
      v32 = sub_1BA4A6808();
      v34 = v5;
      v35 = sub_1B9F0B82C(v32, v33, v45);

      *(v31 + 4) = v35;
      *(v31 + 12) = 2080;
      v46[0] = v14;

      v36 = sub_1BA4A6808();
      v38 = sub_1B9F0B82C(v36, v37, v45);

      *(v31 + 14) = v38;
      _os_log_impl(&dword_1B9F07000, v29, v30, "[%s]: Attempting to tap into an accepted sharing entry without a profile identifier: %s", v31, 0x16u);
      v39 = v44;
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v39, -1, -1);
      MEMORY[0x1BFAF43A0](v31, -1, -1);

      return (*(v34 + 8))(v7, v4);
    }

    else
    {

      return (*(v5 + 8))(v7, v4);
    }
  }

  sub_1BA4A1718();
  sub_1B9F0ADF8(0, &qword_1EDC6B610);
  v22 = sub_1BA4A70E8();
  sub_1BA4A1628();
  v23 = sub_1BA4A1A08();
  [v22 setValue:v23 forKey:*MEMORY[0x1E696C8A0]];

  v24 = [objc_allocWithZone(MEMORY[0x1E696C1C0]) init];
  v25 = v24;
  if (*(v14 + 112))
  {
    [v24 setProfileIdentifier_];
  }

  [v25 resume];
  sub_1B9F0A534(v14 + 32, v46);
  v26 = sub_1BA3EC2B0();
  sub_1B9F0A534(v14 + 72, v45);
  v27 = objc_allocWithZone(type metadata accessor for SharedProfileOverviewViewController());
  v28 = sub_1BA1E87F4(v25, v46, v26, v45);

  [v42 showViewController:v28 sender:v42];

  return (*(v44 + 8))(v11, v8);
}

uint64_t sub_1BA3EDBB4(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1B9F48158(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

unint64_t sub_1BA3EDC34()
{
  result = qword_1EDC60D00;
  if (!qword_1EDC60D00)
  {
    type metadata accessor for SummarySharingAcceptedProfileTileCell();
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_1EDC60D00);
  }

  return result;
}

id sub_1BA3EDC78(uint64_t a1, char *a2, char a3)
{
  if (a1 >= 1)
  {
    v5 = *a2;
    v6 = [objc_allocWithZone(MEMORY[0x1E69DB7F0]) init];
    v7 = sub_1BA3E8E8C(a3 & 1);
    [v6 setImage_];

    [v6 setAdjustsImageSizeForAccessibilityContentSizeCategory_];
    sub_1B9F0ADF8(0, &qword_1EDC6B520);
    v8 = [swift_getObjCClassFromMetadata() attributedStringWithAttachment_];
    if (v5)
    {
      if (qword_1EBBE8930 == -1)
      {
        goto LABEL_7;
      }
    }

    else if (qword_1EBBE8928 == -1)
    {
LABEL_7:

      sub_1B9F0CF6C(0, &qword_1EDC6B410, &qword_1EDC6B3D0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
      v9 = swift_allocObject();
      v10 = MEMORY[0x1E69E6530];
      *(v9 + 16) = xmmword_1BA4B5480;
      v11 = MEMORY[0x1E69E65A8];
      *(v9 + 56) = v10;
      *(v9 + 64) = v11;
      *(v9 + 32) = a1;
      sub_1BA4A6768();

      sub_1BA3E9BB8(a3 & 1);
      v12 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
      v13 = sub_1BA4A6758();

      type metadata accessor for Key(0);
      sub_1BA3ED604(&qword_1EDC5E3D0, type metadata accessor for Key);
      v14 = sub_1BA4A6618();

      v15 = [v12 initWithString:v13 attributes:v14];

      v16 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
      v17 = sub_1BA4A6758();
      v18 = [v16 initWithString_];

      [v8 appendAttributedString_];
      [v8 appendAttributedString_];

      return v8;
    }

    swift_once();
    goto LABEL_7;
  }

  return 0;
}

uint64_t sub_1BA3EDFB4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1B9F48158(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_1BA3EE024()
{
  if (!qword_1EBBF22B0)
  {
    sub_1BA3EE16C(255, &qword_1EBBF22A8, MEMORY[0x1E69E6530], MEMORY[0x1E695C060]);
    sub_1BA3EE0B8();
    v0 = sub_1BA4A4A98();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBBF22B0);
    }
  }
}

unint64_t sub_1BA3EE0B8()
{
  result = qword_1EBBF22B8;
  if (!qword_1EBBF22B8)
  {
    sub_1BA3EE16C(255, &qword_1EBBF22A8, MEMORY[0x1E69E6530], MEMORY[0x1E695C060]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBF22B8);
  }

  return result;
}

void sub_1BA3EE16C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1BA3EE1BC(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1B9F48158(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_1BA3EE23C(uint64_t a1)
{
  sub_1BA2474C0();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_1BA3EE298(void *a1)
{
  v2 = v1;
  v4 = sub_1BA4A2A88();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F0A534(a1, (v1 + 2));
  type metadata accessor for HeaderDescriptionDataSource();
  swift_allocObject();
  v1[7] = HeaderDescriptionDataSource.init()();
  v1[8] = &protocol witness table for MutableArrayDataSource;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v8 = sub_1BA4A1B68();
  v9 = *(v5 + 104);
  v9(v7, *MEMORY[0x1E69A31D0], v4);
  v10 = type metadata accessor for HealthChecklistFeatureStatusDataSource();
  v11 = objc_allocWithZone(v10);
  v12 = v8;
  v2[9] = sub_1BA3F0BE4(v12, v7);
  v2[10] = &protocol witness table for FetchedResultsControllerDataSource<A>;
  v9(v7, *MEMORY[0x1E69A31D8], v4);
  v13 = objc_allocWithZone(v10);
  v14 = v12;
  v2[11] = sub_1BA3F0BE4(v14, v7);
  v2[12] = &protocol witness table for FetchedResultsControllerDataSource<A>;
  v9(v7, *MEMORY[0x1E69A31C0], v4);
  v15 = objc_allocWithZone(v10);
  v16 = v14;
  v2[13] = sub_1BA3F0BE4(v16, v7);
  v2[14] = &protocol witness table for FetchedResultsControllerDataSource<A>;
  v9(v7, *MEMORY[0x1E69A31B8], v4);
  v17 = objc_allocWithZone(v10);
  v2[15] = sub_1BA3F0BE4(v16, v7);
  v2[16] = &protocol witness table for FetchedResultsControllerDataSource<A>;
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v2;
}

uint64_t sub_1BA3EE4DC()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

_OWORD *sub_1BA3EE584()
{
  sub_1B9F1DEA0();
  v1 = swift_allocObject();
  v2 = *(v0 + 56);
  v1[1] = xmmword_1BA4B9A90;
  v1[2] = v2;
  v4 = *(v0 + 88);
  v1[3] = *(v0 + 120);
  v1[4] = v4;
  v5 = *(v0 + 104);
  v1[5] = *(v0 + 72);
  v1[6] = v5;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  return v1;
}

uint64_t ConfirmDetailsSection.Row.MedicationDetail.rawValue.getter()
{
  if (*v0)
  {
    return 0x636F6C4261746562;
  }

  else
  {
    return 0xD000000000000016;
  }
}

HealthExperienceUI::ConfirmDetailsSection::Row::CorrelatedItem __swiftcall ConfirmDetailsSection.Row.CorrelatedItem.init(valueKey:isInverted:)(HealthExperienceUI::ConfirmDetailsSection::Row::CorrelatedItem valueKey, Swift::Bool isInverted)
{
  *v2 = valueKey.valueKey;
  *(v2 + 16) = isInverted;
  valueKey.isInverted = isInverted;
  return valueKey;
}

void __swiftcall ConfirmDetailsSection.Row.MultiselectDetail.init(title:subtitle:valueKey:correlatedItems:initialValue:canDeselect:accessibilityIdentifierPrefix:)(HealthExperienceUI::ConfirmDetailsSection::Row::MultiselectDetail *__return_ptr retstr, Swift::String title, Swift::String_optional subtitle, Swift::String valueKey, Swift::OpaquePointer correlatedItems, Swift::Bool_optional initialValue, Swift::Bool canDeselect, Swift::String_optional accessibilityIdentifierPrefix)
{
  retstr->title = title;
  retstr->subtitle = subtitle;
  retstr->valueKey = valueKey;
  retstr->correlatedItems = correlatedItems;
  retstr->initialValue = initialValue;
  retstr->canDeselect = canDeselect;
  retstr->accessibilityIdentifierPrefix = accessibilityIdentifierPrefix;
}

HealthExperienceUI::ConfirmDetailsSection::Row::HealthDetail_optional __swiftcall ConfirmDetailsSection.Row.HealthDetail.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 5;
  if (rawValue < 5)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

HealthExperienceUI::ConfirmDetailsSection::Row::MedicationDetail_optional __swiftcall ConfirmDetailsSection.Row.MedicationDetail.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1BA4A8108();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1BA3EE744(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x636F6C4261746562;
  }

  else
  {
    v3 = 0xD000000000000016;
  }

  if (v2)
  {
    v4 = 0x80000001BA4E14F0;
  }

  else
  {
    v4 = 0xEC0000007372656BLL;
  }

  if (*a2)
  {
    v5 = 0x636F6C4261746562;
  }

  else
  {
    v5 = 0xD000000000000016;
  }

  if (*a2)
  {
    v6 = 0xEC0000007372656BLL;
  }

  else
  {
    v6 = 0x80000001BA4E14F0;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1BA4A8338();
  }

  return v8 & 1;
}

uint64_t sub_1BA3EE7F8@<X0>(char *a1@<X8>)
{
  v2 = sub_1BA4A8108();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

void sub_1BA3EE858(unint64_t *a1@<X8>)
{
  v2 = 0x80000001BA4E14F0;
  v3 = 0xD000000000000016;
  if (*v1)
  {
    v3 = 0x636F6C4261746562;
    v2 = 0xEC0000007372656BLL;
  }

  *a1 = v3;
  a1[1] = v2;
}

uint64_t sub_1BA3EE8A4()
{
  sub_1BA4A8488();
  sub_1BA4A68C8();

  return sub_1BA4A84D8();
}

uint64_t sub_1BA3EE934()
{
  sub_1BA4A68C8();
}

uint64_t sub_1BA3EE9B0()
{
  sub_1BA4A8488();
  sub_1BA4A68C8();

  return sub_1BA4A84D8();
}

uint64_t static ConfirmDetailsSection.Row.CorrelatedItem.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a2 + 16);
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8))
  {
    return v2 ^ v3 ^ 1u;
  }

  v5 = sub_1BA4A8338();
  result = 0;
  if (v5)
  {
    return v2 ^ v3 ^ 1u;
  }

  return result;
}

uint64_t ConfirmDetailsSection.Row.CorrelatedItem.hashValue.getter()
{
  sub_1BA4A8488();
  sub_1BA4A68C8();
  sub_1BA4A84A8();
  return sub_1BA4A84D8();
}

uint64_t sub_1BA3EEB38()
{
  sub_1BA4A8488();
  sub_1BA4A68C8();
  sub_1BA4A84A8();
  return sub_1BA4A84D8();
}

uint64_t sub_1BA3EEBD4()
{
  sub_1BA4A8488();
  sub_1BA4A68C8();
  sub_1BA4A84A8();
  return sub_1BA4A84D8();
}

uint64_t sub_1BA3EEC34(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a2 + 16);
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8))
  {
    return v2 ^ v3 ^ 1u;
  }

  v5 = sub_1BA4A8338();
  result = 0;
  if (v5)
  {
    return v2 ^ v3 ^ 1u;
  }

  return result;
}

uint64_t ConfirmDetailsSection.Row.MultiselectDetail.title.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t ConfirmDetailsSection.Row.MultiselectDetail.subtitle.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t ConfirmDetailsSection.Row.MultiselectDetail.valueKey.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t ConfirmDetailsSection.Row.MultiselectDetail.accessibilityIdentifierPrefix.getter()
{
  v1 = *(v0 + 64);

  return v1;
}

uint64_t ConfirmDetailsSection.Row.MultiselectDetail.hash(into:)(uint64_t a1)
{
  v3 = *(v1 + 24);
  v4 = *(v1 + 48);
  v5 = *(v1 + 56);
  v6 = *(v1 + 72);
  sub_1BA4A68C8();
  sub_1BA4A84A8();
  if (v3)
  {
    sub_1BA4A68C8();
  }

  sub_1BA4A68C8();
  sub_1BA34E4B4(a1, v4);
  if (v5 != 2)
  {
    sub_1BA4A84A8();
  }

  sub_1BA4A84A8();
  sub_1BA4A84A8();
  if (!v6)
  {
    return sub_1BA4A84A8();
  }

  sub_1BA4A84A8();

  return sub_1BA4A68C8();
}

uint64_t ConfirmDetailsSection.Row.hash(into:)(uint64_t a1)
{
  v3 = *v1;
  v4 = *(v1 + 7) >> 62;
  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v5 = 2;
      goto LABEL_6;
    }

    MEMORY[0x1BFAF2ED0](3);
    return ConfirmDetailsSection.Row.MultiselectDetail.hash(into:)(a1);
  }

  else
  {
    if (!v4)
    {
      v5 = 0;
LABEL_6:
      MEMORY[0x1BFAF2ED0](v5);
      return MEMORY[0x1BFAF2ED0](v3);
    }

    MEMORY[0x1BFAF2ED0](1);
    sub_1BA4A68C8();
  }
}

uint64_t sub_1BA3EF0A4(void (*a1)(_BYTE *))
{
  sub_1BA4A8488();
  a1(v3);
  return sub_1BA4A84D8();
}

uint64_t sub_1BA3EF104(uint64_t a1, uint64_t a2, void (*a3)(_BYTE *))
{
  sub_1BA4A8488();
  a3(v5);
  return sub_1BA4A84D8();
}

uint64_t sub_1BA3EF168(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *))
{
  sub_1BA4A8488();
  a4(v6);
  return sub_1BA4A84D8();
}

uint64_t _s18HealthExperienceUI21ConfirmDetailsSectionV3RowO17MultiselectDetailV2eeoiySbAG_AGtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v6 = *(a1 + 40);
  v5 = *(a1 + 48);
  v18 = *(a1 + 57);
  v15 = *(a1 + 72);
  v7 = *(a2 + 16);
  v8 = *(a2 + 24);
  v9 = *(a2 + 32);
  v10 = *(a2 + 40);
  v11 = *(a2 + 48);
  v19 = *(a2 + 56);
  v20 = *(a1 + 56);
  v17 = *(a2 + 57);
  v13 = *(a1 + 64);
  v14 = *(a2 + 64);
  v16 = *(a2 + 72);
  if ((*a1 != *a2 || *(a1 + 8) != *(a2 + 8)) && (sub_1BA4A8338() & 1) == 0)
  {
    return 0;
  }

  if (v3)
  {
    if (!v8 || (v2 != v7 || v3 != v8) && (sub_1BA4A8338() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v8)
  {
    return 0;
  }

  if ((v4 != v9 || v6 != v10) && (sub_1BA4A8338() & 1) == 0 || (sub_1B9FF1188(v5, v11) & 1) == 0)
  {
    return 0;
  }

  if (v20 == 2)
  {
    result = 0;
    if (v19 != 2)
    {
      return result;
    }

LABEL_20:
    if ((v18 ^ v17))
    {
      return result;
    }

    if (v15)
    {
      if (v16 && (v13 == v14 && v15 == v16 || (sub_1BA4A8338() & 1) != 0))
      {
        return 1;
      }
    }

    else if (!v16)
    {
      return 1;
    }

    return 0;
  }

  result = 0;
  if (v19 != 2 && ((v19 ^ v20) & 1) == 0)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t _s18HealthExperienceUI21ConfirmDetailsSectionV3RowO2eeoiySbAE_AEtFZ_0(_OWORD *a1, __int128 *a2)
{
  v2 = a1[1];
  v3 = a1[3];
  *&v29[32] = a1[2];
  *&v29[48] = v3;
  v4 = a1[3];
  v30 = a1[4];
  v5 = a1[1];
  *v29 = *a1;
  *&v29[16] = v5;
  v6 = a2[1];
  v7 = a2[3];
  v33 = a2[2];
  v34 = v7;
  v8 = a2[3];
  v35 = a2[4];
  v9 = a2[1];
  v31 = *a2;
  v32 = v9;
  v36[2] = *&v29[32];
  v36[3] = v4;
  v36[0] = *v29;
  v36[1] = v2;
  v36[6] = v6;
  v36[7] = v33;
  v10 = a2[4];
  v36[8] = v8;
  v36[9] = v10;
  v36[4] = a1[4];
  v36[5] = v31;
  v11 = *&v29[56] >> 62;
  if ((*&v29[56] >> 62) > 1)
  {
    if (v11 == 2)
    {
      if (*(&v34 + 1) >> 62 == 2)
      {
LABEL_7:
        sub_1BA3EF99C(v36);
        v13 = v29[0] == v31;
        return v13 & 1;
      }
    }

    else
    {
      if (*(&v34 + 1) >> 62 == 3)
      {
        v27[0] = v29[0];
        *&v27[1] = *&v29[1];
        v27[7] = (*&v29[1] | ((*&v29[5] | (v29[7] << 16)) << 32)) >> 48;
        *&v27[5] = *&v29[5];
        *&v27[8] = *&v29[8];
        *&v27[24] = *&v29[24];
        *&v27[40] = *&v29[40];
        *&v27[56] = *&v29[56] & 0x3FFFFFFFFFFFFFFFLL;
        v28 = v30;
        v23[0] = v31;
        v23[1] = v32;
        v23[2] = v33;
        v24 = v34;
        v25 = *(&v34 + 1) & 0x3FFFFFFFFFFFFFFFLL;
        v26 = v35;
        v13 = _s18HealthExperienceUI21ConfirmDetailsSectionV3RowO17MultiselectDetailV2eeoiySbAG_AGtFZ_0(v27, v23);
        sub_1B9FF3650(&v31, v22);
        sub_1B9FF3650(v29, v22);
        sub_1BA3EF99C(v36);
        return v13 & 1;
      }

      v18 = a1[3];
      *&v27[32] = a1[2];
      *&v27[48] = v18;
      v28 = a1[4];
      v19 = a1[1];
      *v27 = *a1;
      *&v27[16] = v19;
      *&v27[56] &= 0x3FFFFFFFFFFFFFFFuLL;
      sub_1BA0AEED4(v27, v23);
    }

LABEL_27:
    sub_1B9FF3650(&v31, v27);
    sub_1BA3EF99C(v36);
    v13 = 0;
    return v13 & 1;
  }

  v12 = *(&v34 + 1) >> 62;
  if (!v11)
  {
    if (v12)
    {
      goto LABEL_27;
    }

    goto LABEL_7;
  }

  if (v12 != 1)
  {
    goto LABEL_27;
  }

  if (v29[0])
  {
    v14 = 0x636F6C4261746562;
  }

  else
  {
    v14 = 0xD000000000000016;
  }

  if (v29[0])
  {
    v15 = 0xEC0000007372656BLL;
  }

  else
  {
    v15 = 0x80000001BA4E14F0;
  }

  if (v31)
  {
    v16 = 0x636F6C4261746562;
  }

  else
  {
    v16 = 0xD000000000000016;
  }

  if (v31)
  {
    v17 = 0xEC0000007372656BLL;
  }

  else
  {
    v17 = 0x80000001BA4E14F0;
  }

  if (v14 != v16 || v15 != v17)
  {
    v21 = sub_1BA4A8338();

    sub_1BA3EF99C(v36);
    return v21 & 1;
  }

  sub_1BA3EF99C(v36);
  v13 = 1;
  return v13 & 1;
}

unint64_t sub_1BA3EF618()
{
  result = qword_1EBBF22C8;
  if (!qword_1EBBF22C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBF22C8);
  }

  return result;
}

unint64_t sub_1BA3EF670()
{
  result = qword_1EBBF22D0;
  if (!qword_1EBBF22D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBF22D0);
  }

  return result;
}

unint64_t sub_1BA3EF6C8()
{
  result = qword_1EBBF22D8;
  if (!qword_1EBBF22D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBF22D8);
  }

  return result;
}

unint64_t sub_1BA3EF720()
{
  result = qword_1EBBF22E0;
  if (!qword_1EBBF22E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBF22E0);
  }

  return result;
}

unint64_t sub_1BA3EF778()
{
  result = qword_1EBBF22E8;
  if (!qword_1EBBF22E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBF22E8);
  }

  return result;
}

uint64_t sub_1BA3EF7E8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 56) >> 9;
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

double sub_1BA3EF838(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    *(a1 + 72) = 0;
    result = 0.0;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 80) = 1;
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
      result = 0.0;
      *(a1 + 16) = 0u;
      *(a1 + 32) = 0u;
      *a1 = 0u;
      *(a1 + 48) = 0;
      *(a1 + 56) = -a2 << 9;
      *(a1 + 64) = 0;
      *(a1 + 72) = 0;
      return result;
    }

    *(a1 + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1BA3EF8F4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
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

uint64_t sub_1BA3EF93C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1BA3EF99C(uint64_t a1)
{
  sub_1B9FF370C();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

char *ArticlesFetchedResultsControllerDataSource.init(managedObjectContext:sourceProfiles:predicate:header:)(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v51 = a1;
  sub_1B9F0CC30(0, &qword_1EDC6E2A0, MEMORY[0x1E6968130], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v50 - v9;
  v11 = *a3;
  v12 = *(a3 + 8);
  v13 = *a4;
  v14 = a4[1];
  v50 = v4;
  v15 = (v4 + qword_1EDC84A88);
  v52 = v14;
  v53 = v13;
  *v15 = v13;
  v15[1] = v14;
  sub_1BA4A27B8();
  sub_1B9F0CC30(0, &qword_1EDC6B460, MEMORY[0x1E69A3C08], MEMORY[0x1E69E6F90]);
  v16 = sub_1BA4A1C68();
  v17 = *(v16 - 8);
  v18 = (*(v17 + 80) + 32) & ~*(v17 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1BA4B5480;
  (*(v17 + 104))(v19 + v18, *MEMORY[0x1E69A3BD0], v16);
  if (v12)
  {
    v20 = sub_1BA4A0FA8();
    (*(*(v20 - 8) + 56))(v10, 1, 1, v20);
    sub_1BA048494(v53, v52);
    v21 = MEMORY[0x1BFAED020](v19, 0, v10, a2);

    sub_1B9F1C1B0(v10);
    sub_1B9F109F8();
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_1BA4B7510;
    *(v22 + 32) = v21;
    *(v22 + 40) = v11;
    sub_1B9F0ADF8(0, &qword_1EDC6B630);
    v23 = v11;
    v24 = v21;
    v25 = sub_1BA4A6AE8();

    v26 = [objc_opt_self() andPredicateWithSubpredicates_];
  }

  else
  {
    sub_1B9F109F8();
    v27 = swift_allocObject();
    *(v27 + 16) = xmmword_1BA4B5470;
    *(v27 + 32) = v11;
    v28 = sub_1BA4A0FA8();
    (*(*(v28 - 8) + 56))(v10, 1, 1, v28);
    sub_1BA048494(v53, v52);
    v29 = v11;
    v26 = MEMORY[0x1BFAED020](v19, v27, v10, a2);

    sub_1B9F1C1B0(v10);
  }

  sub_1BA4A27B8();
  v30 = v26;
  v31 = MEMORY[0x1BFAED110]();
  [v31 setPredicate_];

  v32 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  v33 = sub_1BA4A6758();
  v34 = [v32 initWithKey:v33 ascending:0];

  v35 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  v36 = sub_1BA4A6758();
  v37 = [v35 initWithKey:v36 ascending:0];

  sub_1B9F109F8();
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_1BA4B7510;
  *(v38 + 32) = v34;
  *(v38 + 40) = v37;
  sub_1B9F0ADF8(0, &qword_1EDC6E3E0);
  v39 = v34;
  v40 = v37;
  v41 = sub_1BA4A6AE8();

  [v31 setSortDescriptors_];

  v42 = objc_allocWithZone(MEMORY[0x1E695D600]);
  v43 = v51;
  v44 = [v42 initWithFetchRequest:v31 managedObjectContext:v51 sectionNameKeyPath:0 cacheName:0];
  v45 = swift_allocObject();
  v46 = v52;
  *(v45 + 16) = v53;
  *(v45 + 24) = v46;
  v47 = (v50 + qword_1EDC61AF0);
  *v47 = sub_1BA3F04CC;
  v47[1] = v45;

  v48 = _s18HealthExperienceUI33FeedItemSuggestedActionDataSourceCyACSo26NSFetchedResultsControllerCy0A8Platform0dE0CGcfc_0(v44);

  return v48;
}

uint64_t sub_1BA3F0024@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + qword_1EDC84A88);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  *a1 = *v3;
  a1[1] = v5;
  return sub_1BA048494(v4, v5);
}

uint64_t sub_1BA3F0078(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = (v1 + qword_1EDC84A88);
  swift_beginAccess();
  v5 = *v4;
  v6 = v4[1];
  *v4 = v2;
  v4[1] = v3;
  return sub_1BA220238(v5, v6);
}

uint64_t static ArticlesFetchedResultsControllerDataSource.Header.customTitle(with:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[2];
  v4 = a1[3];
  v5 = a1[4];
  v6 = [objc_opt_self() categoryWithID_];
  if (v6)
  {
    v7 = v6;
    v8 = [v6 embeddedDisplayName];
    v4 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    v5 = v9;
  }

  else
  {
  }

  sub_1BA3F0744(v3, v4, v5, a2);
}

uint64_t static ArticlesFetchedResultsControllerDataSource.Header.customTitle(displayCategory:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = [a1 categoryID];
  v5 = [a1 embeddedDisplayName];
  v6 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  v8 = v7;

  sub_1BA3F0744(v4, v6, v8, a2);
}

uint64_t sub_1BA3F02EC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = (*a1 + qword_1EDC84A88);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  *a2 = *v3;
  a2[1] = v5;
  return sub_1BA048494(v4, v5);
}

uint64_t sub_1BA3F0344(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = (*a2 + qword_1EDC84A88);
  swift_beginAccess();
  v5 = *v4;
  v6 = v4[1];
  *v4 = v2;
  v4[1] = v3;
  sub_1BA048494(v2, v3);
  return sub_1BA220238(v5, v6);
}

__int128 *sub_1BA3F03C0(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v11 = *a1;
  v5 = *(a1 + 2);
  static GridLayoutEngine.articles.getter(&v19);
  v17 = v11;
  v18 = v5;
  v6 = &v19;
  v7 = GridLayoutEngine.layout(for:)(&v17);
  if (v3)
  {
    v14 = v21;
    v15 = v22;
    v16 = v23;
    v12 = v19;
    v13 = v20;
    sub_1B9F5A690(&v12);
  }

  else
  {
    v6 = v7;
    v14 = v21;
    v15 = v22;
    v16 = v23;
    v12 = v19;
    v13 = v20;
    sub_1B9F5A690(&v12);
    if (a3)
    {
      v8 = [objc_opt_self() estimatedDimension_];
      v9 = sub_1B9F5CA58(v8, 2);

      return v9;
    }
  }

  return v6;
}

id ArticlesFetchedResultsControllerDataSource.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ArticlesFetchedResultsControllerDataSource();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t ArticlesFetchedResultsControllerDataSource.supplementaryItem(ofKind:at:)@<X0>(void *a1@<X8>)
{
  v3 = sub_1BA4A4428();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = (v1 + qword_1EDC84A88);
  swift_beginAccess();
  v7 = *v6;
  v8 = v6[1];
  if (v8)
  {
    if (v8 == 1)
    {
      v9 = *v6;
      if (qword_1EDC5E100 != -1)
      {
        swift_once();
      }

      v10 = sub_1BA4A1318();
      v12 = v11;
      v7 = v9;
      v8 = 1;
    }

    else
    {
      v10 = *v6;
      v12 = v6[1];
    }
  }

  else
  {
    v12 = 0xE000000000000000;
    v10 = 0;
  }

  sub_1BA048494(v7, v8);
  _s18HealthExperienceUI29CollectionViewHeaderProvidingPAAE24makeDefaultConfiguration5UIKit013UIListContentJ0VyFZ_0();
  v13 = type metadata accessor for HeaderItem();
  swift_allocObject();
  HeaderItem.init(title:buttonText:buttonWasTapped:configuration:automationIdentifier:)(v10, v12, 0, 0, 0, 0, v5, 0, 0);
  v15 = v14;
  a1[3] = v13;
  result = sub_1BA011754();
  a1[4] = result;
  *a1 = v15;
  return result;
}

uint64_t sub_1BA3F0744@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  if (a1 == 14)
  {
    if (qword_1EDC5E100 != -1)
    {
      swift_once();
    }

    result = sub_1BA4A1318();
    v6 = result;
    v8 = v7;
  }

  else
  {
    if (qword_1EDC5E100 != -1)
    {
      swift_once();
    }

    sub_1BA4A1318();
    sub_1B9F0CC30(0, &qword_1EDC6B410, sub_1BA06FAE4, MEMORY[0x1E69E6F90]);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_1BA4B5480;
    *(v11 + 56) = MEMORY[0x1E69E6158];
    *(v11 + 64) = sub_1B9F1BE20();
    *(v11 + 32) = a2;
    *(v11 + 40) = a3;

    v6 = sub_1BA4A6768();
    v8 = v12;
  }

  *a4 = v6;
  a4[1] = v8;
  return result;
}

uint64_t type metadata accessor for ArticlesFetchedResultsControllerDataSource()
{
  result = qword_1EDC603C8;
  if (!qword_1EDC603C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BA3F0AD4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 16))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_1BA3F0B28(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

void *sub_1BA3F0B84(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

char *sub_1BA3F0BE4(void *a1, uint64_t a2)
{
  v3 = v2;
  v5 = qword_1EBC099D0;
  v6 = sub_1BA4A2A88();
  v7 = *(v6 - 8);
  (*(v7 + 16))(v3 + v5, a2, v6);
  v8 = sub_1BA4A2C78();
  v10 = v9;
  sub_1BA4A27B8();
  sub_1B9F1C048(0, &qword_1EDC6E330);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BA4B5480;
  *(inited + 32) = v8;
  v12 = inited + 32;
  *(inited + 40) = v10;
  sub_1B9FF6B78(inited);
  swift_setDeallocating();
  sub_1BA000898(v12);
  v13 = sub_1BA4A2678();

  sub_1BA4A2008();
  v14 = sub_1BA4A2658();

  sub_1B9F1C048(0, &qword_1EDC6B400);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1BA4B7510;
  *(v15 + 32) = v13;
  *(v15 + 40) = v14;
  sub_1B9F0ADF8(0, &qword_1EDC6B630);
  v16 = v13;
  v17 = v14;
  v18 = sub_1BA4A6AE8();

  v19 = [objc_opt_self() andPredicateWithSubpredicates_];

  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1BA4B5470;
  v21 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  v22 = sub_1BA4A6758();
  v23 = [v21 initWithKey:v22 ascending:0];

  *(v20 + 32) = v23;
  v24 = v19;
  v25 = sub_1BA4A7558();

  v26 = _s18HealthExperienceUI33FeedItemSuggestedActionDataSourceCyACSo26NSFetchedResultsControllerCy0A8Platform0dE0CGcfc_0(v25);

  (*(v7 + 8))(a2, v6);
  return v26;
}

uint64_t sub_1BA3F0F08()
{
  v1 = qword_1EBC099D0;
  v2 = sub_1BA4A2A88();
  v3 = *(*(v2 - 8) + 8);

  return v3(v0 + v1, v2);
}

id HealthChecklistFeatureStatusDataSource.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HealthChecklistFeatureStatusDataSource();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for HealthChecklistFeatureStatusDataSource()
{
  result = qword_1EBBF22F0;
  if (!qword_1EBBF22F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BA3F0FF4(uint64_t a1)
{
  v2 = qword_1EBC099D0;
  v3 = sub_1BA4A2A88();
  v4 = *(*(v3 - 8) + 8);

  return v4(a1 + v2, v3);
}

unint64_t HealthChecklistFeatureStatusDataSource.supplementaryItem(ofKind:at:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = v3;
  v52 = a2;
  v53 = a3;
  v49 = a1;
  ObjectType = swift_getObjectType();
  v5 = sub_1BA4A4428();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1BA4A3EA8();
  v50 = *(v8 - 8);
  v51 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1BA4A2A88();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v43 - v17;
  v19 = qword_1EBC099D0;
  v20 = *(v12 + 16);
  v20(&v43 - v17, &v4[qword_1EBC099D0], v11, v16);
  v21 = (*(v12 + 88))(v18, v11);
  if (v21 == *MEMORY[0x1E69A31D0])
  {
    if (qword_1EDC5E100 == -1)
    {
      goto LABEL_16;
    }

    goto LABEL_22;
  }

  if (v21 == *MEMORY[0x1E69A31D8])
  {
    if (qword_1EDC5E100 == -1)
    {
      goto LABEL_16;
    }

    goto LABEL_22;
  }

  if (v21 == *MEMORY[0x1E69A31C8] || v21 == *MEMORY[0x1E69A31C0])
  {
    if (qword_1EDC5E100 == -1)
    {
      goto LABEL_16;
    }

    goto LABEL_22;
  }

  if (v21 == *MEMORY[0x1E69A31B8])
  {
    if (qword_1EDC5E100 == -1)
    {
LABEL_16:
      v23 = sub_1BA4A1318();
      v25 = v24;
      goto LABEL_17;
    }

LABEL_22:
    swift_once();
    goto LABEL_16;
  }

  sub_1BA4A3DD8();

  v45 = v4;
  v47 = sub_1BA4A3E88();
  v46 = sub_1BA4A6FB8();

  if (os_log_type_enabled(v47, v46))
  {
    v45 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v54 = v44;
    *v45 = 136446722;
    v31 = sub_1BA4A85D8();
    v43 = v32;
    ObjectType = sub_1B9F0B82C(v31, v32, &v54);

    v33 = v45;
    v34 = v49;
    *(v45 + 4) = ObjectType;
    *(v33 + 6) = 2082;
    v35 = sub_1B9F0B82C(v34, v52, &v54);
    v36 = v45;
    *(v45 + 14) = v35;
    *(v36 + 11) = 2082;
    (v20)(v14, &v4[v19], v11);
    v37 = sub_1BA4A6808();
    v39 = sub_1B9F0B82C(v37, v38, &v54);

    v40 = v45;
    *(v45 + 3) = v39;
    v41 = v47;
    _os_log_impl(&dword_1B9F07000, v47, v46, "%{public}s Supplementary Item %{public}s for keyword %{public}s isn't valid!", v40, 0x20u);
    v42 = v44;
    swift_arrayDestroy();
    MEMORY[0x1BFAF43A0](v42, -1, -1);
    MEMORY[0x1BFAF43A0](v40, -1, -1);
  }

  else
  {
  }

  (*(v50 + 8))(v10, v51);
  (*(v12 + 8))(v18, v11);
  v23 = 0;
  v25 = 0xE000000000000000;
LABEL_17:
  _s18HealthExperienceUI29CollectionViewHeaderProvidingPAAE24makeDefaultConfiguration5UIKit013UIListContentJ0VyFZ_0();
  v26 = type metadata accessor for HeaderItem();
  swift_allocObject();
  HeaderItem.init(title:buttonText:buttonWasTapped:configuration:automationIdentifier:)(v23, v25, 0, 0, 0, 0, v7, 0, 0);
  v28 = v27;
  v29 = v53;
  v53[3] = v26;
  result = sub_1BA011754();
  v29[4] = result;
  *v29 = v28;
  return result;
}

id sub_1BA3F1744(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (qword_1EDC6D380 != -1)
  {
    swift_once();
  }

  v38[4] = xmmword_1EDC6D3C8;
  v38[5] = unk_1EDC6D3D8;
  v38[6] = xmmword_1EDC6D3E8;
  v38[7] = unk_1EDC6D3F8;
  v38[0] = xmmword_1EDC6D388;
  v38[1] = xmmword_1EDC6D398;
  v38[2] = xmmword_1EDC6D3A8;
  v38[3] = xmmword_1EDC6D3B8;
  v36 = xmmword_1EDC6D398;
  v30 = xmmword_1EDC6D3B8;
  v31 = xmmword_1EDC6D3C8;
  v2 = *(&xmmword_1EDC6D388 + 1);
  v3 = xmmword_1EDC6D388;
  v37 = xmmword_1EDC6D3A8;
  v4 = BYTE1(xmmword_1EDC6D3A8);
  v34 = *(&xmmword_1EDC6D3A8 + 2);
  v35 = WORD3(xmmword_1EDC6D3A8);
  v5 = *(&xmmword_1EDC6D3A8 + 1);
  v32 = unk_1EDC6D3D8;
  v33 = xmmword_1EDC6D3E8;
  v6 = qword_1EDC6D400;
  sub_1B9F1D9A4(v38, &v22);
  v7 = [v1 traitCollection];
  v8 = [v7 preferredContentSizeCategory];

  LOBYTE(v7) = sub_1BA4A7528();
  if (v7)
  {
    v9 = *(&v38[0] + 1);
    v2 = [objc_opt_self() estimatedDimension_];
  }

  *&v14 = v3;
  if (v5)
  {
    v10 = 1;
  }

  else
  {
    v10 = v4;
  }

  *(&v14 + 1) = v2;
  v15 = v36;
  LOBYTE(v16) = v37;
  BYTE1(v16) = v10;
  *(&v16 + 2) = v34;
  WORD3(v16) = v35;
  *(&v16 + 1) = v5;
  v19 = v32;
  v20 = v33;
  v17 = v30;
  v18 = v31;
  *&v21 = v3;
  *(&v21 + 1) = v6;
  sub_1B9F0ADF8(0, &qword_1EDC6B530);
  v26 = v18;
  v27 = v19;
  v28 = v20;
  v29 = v21;
  v22 = v14;
  v23 = v15;
  v24 = v16;
  v25 = v17;
  sub_1B9F1D9A4(&v14, &v13);
  v11 = sub_1B9F293A8(&v22);
  *&v22 = v3;
  *(&v22 + 1) = v2;
  v23 = v36;
  LOBYTE(v24) = v37;
  BYTE1(v24) = v10;
  *(&v24 + 2) = v34;
  WORD3(v24) = v35;
  *(&v24 + 1) = v5;
  v27 = v32;
  v28 = v33;
  v25 = v30;
  v26 = v31;
  *&v29 = v3;
  *(&v29 + 1) = v6;
  sub_1B9F1DA58(&v22);
  return v11;
}

uint64_t sub_1BA3F19C0()
{
  result = sub_1BA4A2A88();
  if (v1 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

double CGFloat.rounded(_:toScaleOf:)(uint64_t a1, void *a2, double a3)
{
  swift_getObjectType();

  return sub_1BA3F1D18(a1, a2, a3);
}

double CGFloat.rounded(_:toScale:)(uint64_t a1, double a2, double a3)
{
  v6 = sub_1BA4A82F8();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a2 * a3;
  v17 = v11;
  (*(v7 + 16))(v10, a1, v6, v8);
  v12 = (*(v7 + 88))(v10, v6);
  if (v12 == *MEMORY[0x1E69E7038])
  {
    v13 = round(v11);
  }

  else if (v12 == *MEMORY[0x1E69E7030])
  {
    v13 = rint(v11);
  }

  else if (v12 == *MEMORY[0x1E69E7040])
  {
    v13 = ceil(v11);
  }

  else if (v12 == *MEMORY[0x1E69E7048])
  {
    v13 = floor(v11);
  }

  else if (v12 == *MEMORY[0x1E69E7020])
  {
    v13 = trunc(v11);
  }

  else if (v12 == *MEMORY[0x1E69E7028])
  {
    v13 = ceil(v11);
    v14 = floor(v11);
    if (v11 < 0.0)
    {
      v13 = v14;
    }
  }

  else
  {
    sub_1BA4A6CD8();
    (*(v7 + 8))(v10, v6);
    v13 = v17;
  }

  return v13 / a2;
}

double CGFloat.rounded(_:toScaleOf:)(uint64_t a1, id a2, double a3)
{
  [a2 displayScale];

  return CGFloat.rounded(_:toScale:)(a1, v5, a3);
}

double sub_1BA3F1D18(uint64_t a1, id a2, double a3)
{
  v5 = [a2 traitCollection];
  [v5 displayScale];
  v7 = CGFloat.rounded(_:toScale:)(a1, v6, a3);

  return v7;
}

Swift::Void __swiftcall SummarySharingSelectedDataTypesDelegate.selectedItemsDidUpdate(with:)(Swift::OpaquePointer with)
{
  (*(v1 + 8))();

  sub_1BA0DF96C(v2);
}

uint64_t SummarySharingSelectedDataTypesDelegate.selectedItemsDidUpdate(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  (*(a3 + 8))(a2, a3);
  if (*(a1 + 49) == 1)
  {
    sub_1BA0E11F0(a1);
  }

  else
  {
    sub_1BA3F1F4C();
    v5 = *(type metadata accessor for SummarySharingSelectableDataTypeItem(0) - 8);
    v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_1BA4B5480;
    sub_1BA025290(a1, v7 + v6);
    sub_1BA0E17CC(v7);

    swift_setDeallocating();
    swift_arrayDestroy();

    return swift_deallocClassInstance();
  }
}

void sub_1BA3F1F4C()
{
  if (!qword_1EBBEA670)
  {
    type metadata accessor for SummarySharingSelectableDataTypeItem(255);
    v0 = sub_1BA4A82E8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBBEA670);
    }
  }
}

uint64_t sub_1BA3F2008()
{
  sub_1B9FAB600(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_1BA3F206C()
{
  sub_1B9F0ADF8(0, &qword_1EDC6B610);
  result = sub_1BA4A70E8();
  qword_1EBBF2300 = result;
  return result;
}

id static URLRouter.userDefaults.getter()
{
  if (qword_1EBBE8948 != -1)
  {
    swift_once();
  }

  v1 = qword_1EBBF2300;

  return v1;
}

uint64_t static URLRouter.handleURL(_:options:rootViewController:)(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = *(a3 + 32);
  v4 = *(a3 + 16);
  v6[0] = *a3;
  v6[1] = v4;
  v7 = v3;
  return sub_1BA3F7B90(a1, a2, v6) & 1;
}

uint64_t sub_1BA3F2160()
{
  v1 = v0;
  v2 = sub_1BA4A3878();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v34[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_1BA4A15D8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v34[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1BA4A3818();
  v10 = sub_1BA4A1528();
  v11 = *(v7 + 8);
  v11(v9, v6);
  if (v10[2] == 2 && (v10[4] == 47 ? (v12 = v10[5] == 0xE100000000000000) : (v12 = 0), v12 || (sub_1BA4A8338() & 1) != 0))
  {
    v38 = v2;
    v39 = v3;
    v13 = v10[6];
    v14 = v10[7];

    v15 = sub_1BA4A6758();
    v16 = HKDisplayCategoryIdentifierFromString();

    if (v16 != -1)
    {

      return v16;
    }

    v37 = v13;
    if (qword_1EBBE88C8 != -1)
    {
      swift_once();
    }

    v18 = sub_1BA4A3EA8();
    __swift_project_value_buffer(v18, qword_1EBC09940);
    v19 = v38;
    v20 = v39;
    (*(v39 + 16))(v5, v1, v38);

    v21 = sub_1BA4A3E88();
    v22 = sub_1BA4A6FA8();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v35 = v22;
      v24 = v20;
      v25 = v23;
      v36 = swift_slowAlloc();
      v40 = v36;
      *v25 = 136315651;
      *(v25 + 4) = sub_1B9F0B82C(0x4C52554148, 0xE500000000000000, &v40);
      *(v25 + 12) = 2082;
      v26 = sub_1B9F0B82C(v37, v14, &v40);
      v37 = v21;
      v27 = v26;

      *(v25 + 14) = v27;
      *(v25 + 22) = 2081;
      sub_1BA4A3818();
      v28 = sub_1BA4A1518();
      v30 = v29;
      v11(v9, v6);
      (*(v24 + 8))(v5, v19);
      v31 = sub_1B9F0B82C(v28, v30, &v40);

      *(v25 + 24) = v31;
      v32 = v37;
      _os_log_impl(&dword_1B9F07000, v37, v35, "%s Invalid category identifier %{public}s provided in URL %{private}s", v25, 0x20u);
      v33 = v36;
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v33, -1, -1);
      MEMORY[0x1BFAF43A0](v25, -1, -1);
    }

    else
    {

      (*(v20 + 8))(v5, v19);
    }
  }

  else
  {
  }

  return 0;
}

uint64_t sub_1BA3F2580(uint64_t a1, void *a2, uint64_t *a3)
{
  v5 = *a3;
  v6 = a3[4];
  v7 = sub_1BA4A3678();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1BA4A3898();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = (&v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v12 + 16))(v15, a1, v11, v13);
  v16 = (*(v12 + 88))(v15, v11);
  if (v16 != *MEMORY[0x1E69A2CC8])
  {
    if (v16 == *MEMORY[0x1E69A2CB8] || v16 == *MEMORY[0x1E69A2D38])
    {
      ObjectType = swift_getObjectType();
      v38 = v5;
      (*(v8 + 104))(v10, *MEMORY[0x1E69A2C70], v7);
      (*(v6 + 8))(v10, ObjectType, v6);
      (*(v8 + 8))(v10, v7);
      v38 = v5;
      v28 = (*(v6 + 24))(ObjectType, v6);
      _s18HealthExperienceUI21ProfileDeepLinkRouterV7openURL24presentingViewController7urlTypeySo06UIViewL0C_0A11AppServices7URLTypeOtFZ_0(v28, a1);

      return 1;
    }

    (*(v12 + 8))(v15, v11);
    return 0;
  }

  (*(v12 + 96))(v15, v11);
  v18 = *v15;
  v17 = v15[1];
  v19 = swift_getObjectType();
  v38 = v5;
  (*(v8 + 104))(v10, *MEMORY[0x1E69A2C28], v7);
  (*(v6 + 8))(v10, v19, v6);
  (*(v8 + 8))(v10, v7);
  if (qword_1EBBE8948 != -1)
  {
    swift_once();
  }

  v20 = 0xD000000000000012;
  v21 = qword_1EBBF2300;
  v22 = sub_1BA4A6758();
  v23 = [v21 stringForKey_];

  if (v23)
  {
    v20 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    v25 = v24;

    if (!a2)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v25 = 0x80000001BA506D00;
    if (!a2)
    {
LABEL_18:

LABEL_19:

      return 0;
    }
  }

  v30 = [a2 sourceApplication];
  if (!v30)
  {
    goto LABEL_18;
  }

  v31 = v30;
  v32 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  v34 = v33;

  if (v32 == v20 && v34 == v25)
  {
  }

  else
  {
    v35 = sub_1BA4A8338();

    if ((v35 & 1) == 0)
    {
      goto LABEL_19;
    }
  }

  v38 = v5;
  v36 = (*(v6 + 24))(v19, v6);
  sub_1BA24A2A0(v36, v18, v17);

  return 1;
}

uint64_t sub_1BA3F2A24(uint64_t a1, void *a2, void **a3)
{
  v94 = *a3;
  v4 = a3[4];
  v92 = a2;
  v93 = v4;
  v5 = sub_1BA4A15D8();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v87 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v87 - v10;
  v12 = sub_1BA4A3EA8();
  v13 = *(v12 - 8);
  v95 = v12;
  v96 = v13;
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v87 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v87 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v88 = &v87 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v87 = &v87 - v22;
  v23 = sub_1BA4A3678();
  v90 = *(v23 - 8);
  v91 = v23;
  MEMORY[0x1EEE9AC00](v23);
  v89 = &v87 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA3F7E50(0, &qword_1EDC6ACC0, MEMORY[0x1E69A2D48]);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v27 = (&v87 - v26);
  sub_1BA4A3538();
  v28 = sub_1BA4A3898();
  v29 = *(v28 - 8);
  if ((*(v29 + 48))(v27, 1, v28) == 1)
  {
    sub_1BA3F801C(v27, &qword_1EDC6ACC0, MEMORY[0x1E69A2D48]);
LABEL_11:
    sub_1BA4A3E28();
    (*(v6 + 16))(v8, a1, v5);
    v38 = sub_1BA4A3E88();
    v39 = sub_1BA4A6FA8();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v99[0] = v41;
      *v40 = 136315394;
      *(v40 + 4) = sub_1B9F0B82C(0x6574756F524C5255, 0xE900000000000072, v99);
      *(v40 + 12) = 2080;
      sub_1BA3F7EEC();
      v42 = sub_1BA4A82D8();
      v44 = v43;
      (*(v6 + 8))(v8, v5);
      v45 = sub_1B9F0B82C(v42, v44, v99);

      *(v40 + 14) = v45;
      _os_log_impl(&dword_1B9F07000, v38, v39, "[%s] Invalid URL %s", v40, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v41, -1, -1);
      MEMORY[0x1BFAF43A0](v40, -1, -1);
    }

    else
    {

      (*(v6 + 8))(v8, v5);
    }

    (*(v96 + 8))(v15, v95);
    return 0;
  }

  if ((*(v29 + 88))(v27, v28) != *MEMORY[0x1E69A2D00])
  {
    (*(v29 + 8))(v27, v28);
    goto LABEL_11;
  }

  (*(v29 + 96))(v27, v28);
  v31 = *v27;
  v30 = v27[1];
  v32 = sub_1BA4A1598();
  if (!v33)
  {

    sub_1BA4A3E28();
    (*(v6 + 16))(v11, a1, v5);
    v47 = sub_1BA4A3E88();
    v48 = sub_1BA4A6FA8();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v99[0] = v50;
      *v49 = 136315394;
      *(v49 + 4) = sub_1B9F0B82C(0x6574756F524C5255, 0xE900000000000072, v99);
      *(v49 + 12) = 2080;
      sub_1BA3F7EEC();
      v51 = sub_1BA4A82D8();
      v53 = v52;
      (*(v6 + 8))(v11, v5);
      v54 = sub_1B9F0B82C(v51, v53, v99);

      *(v49 + 14) = v54;
      _os_log_impl(&dword_1B9F07000, v47, v48, "[%s] URL did not have a host: %s", v49, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v50, -1, -1);
      MEMORY[0x1BFAF43A0](v49, -1, -1);
    }

    else
    {

      (*(v6 + 8))(v11, v5);
    }

    (*(v96 + 8))(v18, v95);
    return 0;
  }

  v34 = v32;
  v35 = v33;
  if (!v92 || (v36 = [v92 sourceApplication]) == 0)
  {
    v36 = 0;
  }

  if (v30)
  {

    v37 = sub_1BA4A6758();
  }

  else
  {
    v37 = 0;
  }

  v55 = [objc_opt_self() canOpenLinkWithSourceIdentifier:v36 destinationIdentifier:v37];

  v99[0] = v34;
  v99[1] = v35;
  v56 = [objc_opt_self() sharingOverviewHostName];
  v57 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  v59 = v58;

  v97 = v57;
  v98 = v59;
  sub_1B9F252FC();
  LOBYTE(v56) = sub_1BA4A7B88();

  if ((v56 & 1) == 0)
  {
    v71 = v94;
    ObjectType = swift_getObjectType();
    v99[0] = v71;
    v74 = v89;
    v73 = v90;
    v75 = v91;
    (*(v90 + 104))(v89, *MEMORY[0x1E69A2C28], v91);
    v76 = v93;
    v93[1](v74, ObjectType, v93);
    (*(v73 + 8))(v74, v75);
    if (v55)
    {
      v99[0] = v71;
      v77 = (v76[3])(ObjectType, v76);
      sub_1BA24A2A8(v77, v31, v30);

      return 1;
    }

    v78 = v88;
    sub_1BA4A3E28();
    v79 = sub_1BA4A3E88();
    v80 = sub_1BA4A6FA8();
    if (!os_log_type_enabled(v79, v80))
    {
      goto LABEL_36;
    }

    v81 = swift_slowAlloc();
    v82 = swift_slowAlloc();
    v99[0] = v82;
    *v81 = 136315138;
    *(v81 + 4) = sub_1B9F0B82C(0x6574756F524C5255, 0xE900000000000072, v99);
    v83 = "[%s] [Authorization] Health Profile: Application not allowed to open authorization page";
    goto LABEL_35;
  }

  v60 = v93;
  v61 = v94;
  if (!v55)
  {

    v78 = v87;
    sub_1BA4A3E28();
    v79 = sub_1BA4A3E88();
    v80 = sub_1BA4A6FA8();
    if (!os_log_type_enabled(v79, v80))
    {
LABEL_36:

      (*(v96 + 8))(v78, v95);
      return 0;
    }

    v81 = swift_slowAlloc();
    v82 = swift_slowAlloc();
    v99[0] = v82;
    *v81 = 136315138;
    *(v81 + 4) = sub_1B9F0B82C(0x6574756F524C5255, 0xE900000000000072, v99);
    v83 = "[%s] [Authorization] Health Sharing: Application not allowed to open authorization page";
LABEL_35:
    _os_log_impl(&dword_1B9F07000, v79, v80, v83, v81, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v82);
    MEMORY[0x1BFAF43A0](v82, -1, -1);
    MEMORY[0x1BFAF43A0](v81, -1, -1);
    goto LABEL_36;
  }

  v62 = swift_getObjectType();
  v99[0] = v61;
  v64 = v89;
  v63 = v90;
  v65 = v91;
  (*(v90 + 104))(v89, *MEMORY[0x1E69A2C30], v91);
  v60[1](v64, v62, v60);
  (*(v63 + 8))(v64, v65);
  v99[0] = v61;
  v66 = (v60[3])(v62, v60);
  v67 = UIViewController.resolvedHealthStore.getter();
  v68 = v67;
  if (!v67 || (v69 = [v67 viewControllerFactory]) == 0)
  {
    v69 = [v61 resolvedHealthToolbox];
  }

  if (v30)
  {
    v70 = sub_1BA4A6758();
  }

  else
  {
    v70 = 0;
  }

  v84 = [v69 createSingleAppAuthorizationViewControllerUsingInsetStyling:1 restorationApplicationBundleIdentifier:v70];

  v85 = [v66 navigationController];
  if (v85)
  {
    v86 = v85;
    [v85 pushViewController:v84 animated:0];
  }

  return 1;
}

uint64_t sub_1BA3F35DC(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[4];
  v5 = sub_1BA4A3678();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1BA4A3898();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v13, a1, v9, v11);
  v14 = (*(v10 + 88))(v13, v9);
  if (v14 != *MEMORY[0x1E69A2D18])
  {
    if (v14 == *MEMORY[0x1E69A2D08])
    {
      ObjectType = swift_getObjectType();
      v20 = v3;
      v16 = MEMORY[0x1E69A2C48];
      goto LABEL_13;
    }

    if (v14 == *MEMORY[0x1E69A2CD0] || v14 == *MEMORY[0x1E69A2CE0])
    {
      ObjectType = swift_getObjectType();
      v20 = v3;
      v16 = MEMORY[0x1E69A2C30];
      goto LABEL_13;
    }

    if (v14 == *MEMORY[0x1E69A2D30])
    {
      ObjectType = swift_getObjectType();
      v20 = v3;
      v16 = MEMORY[0x1E69A2C68];
      goto LABEL_13;
    }

    if (v14 != *MEMORY[0x1E69A2CD8])
    {
      (*(v10 + 8))(v13, v9);
      return 0;
    }
  }

  ObjectType = swift_getObjectType();
  v20 = v3;
  v16 = MEMORY[0x1E69A2C58];
LABEL_13:
  (*(v6 + 104))(v8, *v16, v5);
  (*(v4 + 8))(v8, ObjectType, v4);
  (*(v6 + 8))(v8, v5);
  return 1;
}

id sub_1BA3F38B8(uint64_t a1, void *a2, uint64_t a3)
{
  v498 = a2;
  v4 = *(a3 + 8);
  v532 = *a3;
  v6 = *(a3 + 16);
  v5 = *(a3 + 24);
  v509 = v4;
  v510 = v6;
  v511 = v5;
  v528 = *(a3 + 32);
  sub_1BA3F7E50(0, &qword_1EDC6ACC8, MEMORY[0x1E69A2C88]);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v486 = &v472 - v8;
  sub_1BA3F7E50(0, &unk_1EDC6AE50, MEMORY[0x1E69695A8]);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v494 = &v472 - v10;
  sub_1BA3F7E50(0, &qword_1EDC6E2A0, MEMORY[0x1E6968130]);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v497 = &v472 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v523 = &v472 - v14;
  sub_1BA3F7E50(0, &qword_1EDC6E440, MEMORY[0x1E6969530]);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v516 = &v472 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v522 = &v472 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v502 = &v472 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v512 = &v472 - v22;
  v515 = sub_1BA4A1728();
  v513 = *(v515 - 8);
  MEMORY[0x1EEE9AC00](v515);
  v496 = &v472 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v495 = &v472 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v503 = &v472 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v514 = &v472 - v29;
  sub_1BA3F7E50(0, &qword_1EBBF2308, MEMORY[0x1E69A2CF0]);
  MEMORY[0x1EEE9AC00](v30 - 8);
  v508 = &v472 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v529 = &v472 - v33;
  v34 = sub_1BA4A35F8();
  v488 = *(v34 - 8);
  v489 = v34;
  MEMORY[0x1EEE9AC00](v34);
  v487 = &v472 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_1BA4A3678();
  v518 = *(v36 - 8);
  v519 = v36;
  MEMORY[0x1EEE9AC00](v36);
  v517 = &v472 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_1BA4A3878();
  v39 = *(v38 - 8);
  v520 = v38;
  v521 = v39;
  MEMORY[0x1EEE9AC00](v38);
  v531 = &v472 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v41);
  v493 = &v472 - v42;
  v43 = sub_1BA4A35A8();
  v500 = *(v43 - 8);
  v501 = v43;
  MEMORY[0x1EEE9AC00](v43);
  v499 = &v472 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA3F7E50(0, &qword_1EDC6ACC0, MEMORY[0x1E69A2D48]);
  MEMORY[0x1EEE9AC00](v45 - 8);
  v537 = (&v472 - v46);
  v540 = sub_1BA4A3898();
  v541 = *(v540 - 8);
  MEMORY[0x1EEE9AC00](v540);
  v538 = (&v472 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v48);
  v50 = &v472 - v49;
  v51 = sub_1BA4A15D8();
  v52 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51);
  v526 = &v472 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v54);
  v479 = &v472 - v55;
  MEMORY[0x1EEE9AC00](v56);
  v477 = &v472 - v57;
  MEMORY[0x1EEE9AC00](v58);
  v483 = &v472 - v59;
  MEMORY[0x1EEE9AC00](v60);
  v484 = &v472 - v61;
  MEMORY[0x1EEE9AC00](v62);
  v481 = &v472 - v63;
  MEMORY[0x1EEE9AC00](v64);
  v507 = &v472 - v65;
  MEMORY[0x1EEE9AC00](v66);
  v490 = &v472 - v67;
  MEMORY[0x1EEE9AC00](v68);
  v536 = &v472 - v69;
  MEMORY[0x1EEE9AC00](v70);
  v72 = &v472 - v71;
  v73 = sub_1BA4A3EA8();
  v74 = *(v73 - 8);
  MEMORY[0x1EEE9AC00](v73);
  v505 = &v472 - ((v75 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v76);
  v533 = &v472 - v77;
  MEMORY[0x1EEE9AC00](v78);
  v478 = &v472 - v79;
  MEMORY[0x1EEE9AC00](v80);
  v475 = &v472 - v81;
  MEMORY[0x1EEE9AC00](v82);
  v474 = &v472 - v83;
  MEMORY[0x1EEE9AC00](v84);
  v476 = &v472 - v85;
  MEMORY[0x1EEE9AC00](v86);
  v482 = &v472 - v87;
  MEMORY[0x1EEE9AC00](v88);
  v485 = &v472 - v89;
  MEMORY[0x1EEE9AC00](v90);
  v480 = &v472 - v91;
  MEMORY[0x1EEE9AC00](v92);
  v506 = &v472 - v93;
  MEMORY[0x1EEE9AC00](v94);
  v504 = &v472 - v95;
  MEMORY[0x1EEE9AC00](v96);
  v491 = &v472 - v97;
  MEMORY[0x1EEE9AC00](v98);
  v492 = &v472 - v99;
  MEMORY[0x1EEE9AC00](v100);
  v102 = &v472 - v101;
  sub_1BA4A3E28();
  v543 = v52;
  v103 = v52[2];
  v539 = a1;
  v104 = a1;
  v105 = v51;
  v103(v72, v104, v51);
  v106 = sub_1BA4A3E88();
  v525 = sub_1BA4A6FC8();
  v107 = os_log_type_enabled(v106, v525);
  v542 = v73;
  v534 = v103;
  v535 = v52 + 2;
  if (v107)
  {
    v108 = swift_slowAlloc();
    v524 = v74;
    v109 = v108;
    v473 = swift_slowAlloc();
    *&v558[0] = v473;
    *v109 = 136446466;
    *&v550 = &type metadata for URLRouter;
    sub_1BA3F7EA4();
    v110 = sub_1BA4A6808();
    v112 = sub_1B9F0B82C(v110, v111, v558);
    v527 = v50;
    v113 = v112;

    *(v109 + 4) = v113;
    *(v109 + 12) = 2082;
    v103(v536, v72, v105);
    v114 = sub_1BA4A6858();
    v116 = v115;
    v530 = *(v543 + 1);
    v530(v72, v105);
    v117 = v114;
    v118 = v540;
    v50 = v527;
    v119 = sub_1B9F0B82C(v117, v116, v558);

    *(v109 + 14) = v119;
    _os_log_impl(&dword_1B9F07000, v106, v525, "[%{public}s]: attempting to open URL %{public}s", v109, 0x16u);
    v120 = v473;
    swift_arrayDestroy();
    v121 = v120;
    v122 = v541;
    MEMORY[0x1BFAF43A0](v121, -1, -1);
    v123 = v109;
    v74 = v524;
    MEMORY[0x1BFAF43A0](v123, -1, -1);

    v124 = v122;
    v125 = *(v74 + 8);
    v125(v102, v542);
    v126 = v105;
    v127 = v118;
  }

  else
  {

    v530 = *(v543 + 1);
    v530(v72, v105);
    v125 = *(v74 + 8);
    v125(v102, v73);
    v126 = v105;
    v124 = v541;
    v127 = v540;
  }

  v128 = v537;
  v129 = v539;
  sub_1BA4A3538();
  v130 = (*(v124 + 48))(v128, 1, v127);
  v131 = v538;
  if (v130 == 1)
  {
    sub_1BA3F801C(v128, &qword_1EDC6ACC0, MEMORY[0x1E69A2D48]);
    v132 = v533;
    sub_1BA4A3E28();
    v133 = v526;
    v534(v526, v129, v126);
    v134 = sub_1BA4A3E88();
    v135 = sub_1BA4A6FC8();
    if (os_log_type_enabled(v134, v135))
    {
      v136 = swift_slowAlloc();
      v137 = swift_slowAlloc();
      v537 = v125;
      v138 = v137;
      *&v558[0] = v137;
      *v136 = 136446466;
      *&v550 = &type metadata for URLRouter;
      sub_1BA3F7EA4();
      v139 = sub_1BA4A6808();
      v141 = v133;
      v142 = sub_1B9F0B82C(v139, v140, v558);

      *(v136 + 4) = v142;
      *(v136 + 12) = 2082;
      sub_1BA3F7EEC();
      v143 = sub_1BA4A82D8();
      v145 = v144;
      v530(v141, v126);
      v146 = sub_1B9F0B82C(v143, v145, v558);

      *(v136 + 14) = v146;
      _os_log_impl(&dword_1B9F07000, v134, v135, "[%{public}s]: asked to open a URL that we don't understand: %{public}s", v136, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v138, -1, -1);
      MEMORY[0x1BFAF43A0](v136, -1, -1);

      v537(v533, v542);
    }

    else
    {

      v530(v133, v126);
      v125(v132, v542);
    }

    goto LABEL_48;
  }

  v147 = v128;
  v148 = v50;
  (*(v124 + 32))(v50, v147, v127);
  (*(v124 + 16))(v131, v50, v127);
  v149 = (*(v124 + 88))(v131, v127);
  if (v149 == *MEMORY[0x1E69A2D28])
  {
    v537 = v125;
    v527 = v50;
    (*(v124 + 96))(v131, v127);
    sub_1BA3F7FB0(v131, v529, &qword_1EBBF2308, MEMORY[0x1E69A2CF0]);
    v150 = v129;
    v151 = v532;
    ObjectType = swift_getObjectType();
    *&v558[0] = v151;
    v154 = v518;
    v153 = v519;
    v155 = v127;
    v156 = v517;
    (*(v518 + 104))(v517, *MEMORY[0x1E69A2C00], v519);
    v157 = *(v528 + 8);
    v533 = ObjectType;
    v157(v156, ObjectType);
    (*(v154 + 8))(v156, v153);
    v158 = v534;
    v534(v536, v150, v126);
    sub_1BA4A3828();
    v538 = sub_1BA4A37C8();
    if (v538)
    {
      v524 = v74;
      v159 = v512;
      sub_1BA4A3868();
      v160 = v513;
      v161 = *(v513 + 48);
      v162 = v515;
      if (v161(v159, 1, v515) != 1)
      {
        v163 = *(v160 + 32);
        v163(v514, v159, v162);
        v159 = v502;
        sub_1BA4A3858();
        if (v161(v159, 1, v162) != 1)
        {
          v213 = v503;
          v163(v503, v159, v162);
          v214 = *(v160 + 16);
          v214(v495, v514, v162);
          v214(v496, v213, v162);
          v215 = v523;
          sub_1BA4A0F68();
          v216 = sub_1BA4A0FA8();
          (*(*(v216 - 8) + 56))(v215, 0, 1, v216);
          (*(v160 + 56))(v522, 1, 1, v162);
          v217 = MEMORY[0x1E6968130];
          v218 = v215;
          v219 = v497;
          sub_1BA3F7F44(v218, v497, &qword_1EDC6E2A0, MEMORY[0x1E6968130]);
          v543 = type metadata accessor for ChartContext();
          v220 = objc_allocWithZone(v543);
          v221 = &v220[OBJC_IVAR____TtC18HealthExperienceUI12ChartContext_preferredOverlayRawValue];
          *v221 = 0;
          v221[8] = 1;
          v222 = v160;
          v223 = &v220[OBJC_IVAR____TtC18HealthExperienceUI12ChartContext_trendActiveRawValue];
          *v223 = 0;
          v223[8] = 1;
          v224 = &v220[OBJC_IVAR____TtC18HealthExperienceUI12ChartContext_chartOptionsRawValue];
          *v224 = 0;
          v224[8] = 1;
          v225 = MEMORY[0x1E6969530];
          v226 = v522;
          sub_1BA3F7F44(v522, &v220[OBJC_IVAR____TtC18HealthExperienceUI12ChartContext_date], &qword_1EDC6E440, MEMORY[0x1E6969530]);
          sub_1BA3F7F44(v219, &v220[OBJC_IVAR____TtC18HealthExperienceUI12ChartContext_dateInterval], &qword_1EDC6E2A0, v217);
          *v221 = 0;
          v221[8] = 1;
          *v223 = 0;
          v223[8] = 0;
          *v224 = 0;
          v224[8] = 0;
          v544.receiver = v220;
          v544.super_class = v543;
          v175 = objc_msgSendSuper2(&v544, sel_init);
          sub_1BA3F801C(v219, &qword_1EDC6E2A0, v217);
          sub_1BA3F801C(v226, &qword_1EDC6E440, v225);
          sub_1BA3F801C(v523, &qword_1EDC6E2A0, v217);
          v227 = *(v222 + 8);
          v228 = v515;
          v227(v503, v515);
          v227(v514, v228);
          goto LABEL_29;
        }

        (*(v160 + 8))(v514, v162);
      }

      v164 = MEMORY[0x1E6969530];
      sub_1BA3F801C(v159, &qword_1EDC6E440, MEMORY[0x1E6969530]);
      v165 = v522;
      sub_1BA4A3838();
      v166 = v516;
      sub_1BA3F7F44(v165, v516, &qword_1EDC6E440, v164);
      v167 = sub_1BA4A0FA8();
      (*(*(v167 - 8) + 56))(v523, 1, 1, v167);
      v168 = type metadata accessor for ChartContext();
      v169 = objc_allocWithZone(v168);
      v170 = &v169[OBJC_IVAR____TtC18HealthExperienceUI12ChartContext_preferredOverlayRawValue];
      *v170 = 0;
      v170[8] = 1;
      v171 = &v169[OBJC_IVAR____TtC18HealthExperienceUI12ChartContext_trendActiveRawValue];
      *v171 = 0;
      v171[8] = 1;
      v172 = &v169[OBJC_IVAR____TtC18HealthExperienceUI12ChartContext_chartOptionsRawValue];
      *v172 = 0;
      v172[8] = 1;
      sub_1BA3F7F44(v166, &v169[OBJC_IVAR____TtC18HealthExperienceUI12ChartContext_date], &qword_1EDC6E440, v164);
      v173 = MEMORY[0x1E6968130];
      v174 = v523;
      sub_1BA3F7F44(v523, &v169[OBJC_IVAR____TtC18HealthExperienceUI12ChartContext_dateInterval], &qword_1EDC6E2A0, MEMORY[0x1E6968130]);
      *v170 = 0;
      v170[8] = 1;
      *v171 = 0;
      v171[8] = 0;
      *v172 = 0;
      v172[8] = 0;
      v561.receiver = v169;
      v561.super_class = v168;
      v175 = objc_msgSendSuper2(&v561, sel_init);
      sub_1BA3F801C(v522, &qword_1EDC6E440, v164);
      sub_1BA3F801C(v174, &qword_1EDC6E2A0, v173);
      sub_1BA3F801C(v516, &qword_1EDC6E440, v164);
LABEL_29:
      v229 = v531;
      v230 = sub_1BA4A37D8();
      v231 = v532;
      v232 = v529;
      if (v233)
      {
        v234 = 0;
      }

      else
      {
        v234 = HADataTypeDetailTrendOverlay.trendActive.getter(v230);
      }

      v235 = v541;
      v236 = &v175[OBJC_IVAR____TtC18HealthExperienceUI12ChartContext_trendActiveRawValue];
      *v236 = v234;
      v236[8] = 0;
      UIViewController.resolvedHealthExperienceStore.getter(v567);
      v237 = UIViewController.resolvedHealthStore.getter();
      if (v237)
      {
        v238 = v237;
        v239 = [v237 profileIdentifier];
        LOBYTE(v558[0]) = 15;
        v240 = _s18HealthExperienceUI18DataTypeDetailModeO07defaultG03for12presentationACSo19HKProfileIdentifierC_AA12PresentationOSgtFZ_0(v239, v558);

        UIViewController.resolvedPinnedContentManager.getter(v560);
        sub_1B9F0A534(v567, v557);
        sub_1B9F0A534(v560, v556);
        sub_1B9F0A534(v557, &v550);
        *(&v552 + 1) = v238;
        LOBYTE(v553) = v240;
        sub_1BA4A2488();
        swift_allocObject();
        v241 = v238;
        v543 = v175;
        *(&v553 + 1) = sub_1BA4A2468();
        sub_1BA10F7B4(v556, &v545);
        if (v546)
        {

          sub_1BA10F728(v556);
          __swift_destroy_boxed_opaque_existential_1(v557);
          sub_1B9F25598(&v545, &v547);
          v242 = v508;
        }

        else
        {
          v253 = sub_1BA4A22B8();
          v254 = sub_1BA4A22A8();
          v549 = MEMORY[0x1E69A3CF8];
          v548 = v253;
          *&v547 = v254;
          sub_1BA10F728(v556);
          __swift_destroy_boxed_opaque_existential_1(v557);
          v242 = v508;
          if (v546)
          {
            sub_1BA10F728(&v545);
          }
        }

        sub_1B9F25598(&v547, v554);
        *(&v555 + 1) = v175;
        v559 = 0;
        v558[4] = v554[0];
        v558[5] = v554[1];
        v558[0] = v550;
        v558[1] = v551;
        v558[2] = v552;
        v558[3] = v553;
        v558[6] = v555;
        v255 = HKTDataTypeDetailFactory.makeViewController(hkType:context:)(v538, v558);
        *&v550 = v231;
        v256 = (*(v528 + 24))(v533);
        v257 = [v256 navigationController];
        if (v257)
        {
          v258 = v257;
          [v257 pushViewController:v255 animated:0];
        }

        sub_1BA3F7F44(v232, v242, &qword_1EBBF2308, MEMORY[0x1E69A2CF0]);
        v259 = sub_1BA4A3888();
        v260 = *(v259 - 8);
        if ((*(v260 + 48))(v242, 1, v259) == 1)
        {

          sub_1BA114E30(v558);
          __swift_destroy_boxed_opaque_existential_1(v560);
          __swift_destroy_boxed_opaque_existential_1(v567);
          (*(v521 + 8))(v531, v520);
          v261 = MEMORY[0x1E69A2CF0];
          sub_1BA3F801C(v232, &qword_1EBBF2308, MEMORY[0x1E69A2CF0]);
          (*(v235 + 8))(v527, v540);
          sub_1BA3F801C(v242, &qword_1EBBF2308, v261);
          v195 = 1;
          return (v195 & 1);
        }

        if ((*(v260 + 88))(v242, v259) != *MEMORY[0x1E69A2CE8])
        {

          sub_1BA114E30(v558);
          __swift_destroy_boxed_opaque_existential_1(v560);
          __swift_destroy_boxed_opaque_existential_1(v567);
          (*(v521 + 8))(v531, v520);
          sub_1BA3F801C(v232, &qword_1EBBF2308, MEMORY[0x1E69A2CF0]);
          (*(v235 + 8))(v527, v540);
          (*(v260 + 8))(v242, v259);
          v195 = 1;
          return (v195 & 1);
        }

        (*(v260 + 96))(v242, v259);
        v264 = v242;
        v265 = v494;
        sub_1BA3F7FB0(v264, v494, &unk_1EDC6AE50, MEMORY[0x1E69695A8]);
        swift_getObjectType();
        v266 = swift_conformsToProtocol2();
        if (v266 && v255)
        {
          v267 = v266;
          v268 = swift_getObjectType();
          (*(v267 + 8))(v265, v268, v267);
        }

        else
        {
        }

        sub_1BA3F801C(v265, &unk_1EDC6AE50, MEMORY[0x1E69695A8]);
        sub_1BA114E30(v558);
        __swift_destroy_boxed_opaque_existential_1(v560);
        __swift_destroy_boxed_opaque_existential_1(v567);
        (*(v521 + 8))(v531, v520);
        sub_1BA3F801C(v232, &qword_1EBBF2308, MEMORY[0x1E69A2CF0]);
LABEL_66:
        (*(v235 + 8))(v527, v540);
        v195 = 1;
        return (v195 & 1);
      }

      v243 = v504;
      sub_1BA4A3E28();
      v244 = sub_1BA4A3E88();
      v245 = sub_1BA4A6FA8();
      if (os_log_type_enabled(v244, v245))
      {
        v246 = swift_slowAlloc();
        v247 = swift_slowAlloc();
        *&v558[0] = v247;
        *v246 = 136446210;
        *&v550 = &type metadata for URLRouter;
        sub_1BA3F7EA4();
        v248 = sub_1BA4A6808();
        v250 = sub_1B9F0B82C(v248, v249, v558);

        *(v246 + 4) = v250;
        _os_log_impl(&dword_1B9F07000, v244, v245, "[%{public}s]: Could Not Process URL: No Health Store Found", v246, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v247);
        MEMORY[0x1BFAF43A0](v247, -1, -1);
        MEMORY[0x1BFAF43A0](v246, -1, -1);

        v537(v504, v542);
        __swift_destroy_boxed_opaque_existential_1(v567);
        (*(v521 + 8))(v229, v520);
        v251 = MEMORY[0x1E69A2CF0];
        v252 = v529;
      }

      else
      {

        v537(v243, v542);
        __swift_destroy_boxed_opaque_existential_1(v567);
        (*(v521 + 8))(v229, v520);
        v251 = MEMORY[0x1E69A2CF0];
        v252 = v232;
      }

      sub_1BA3F801C(v252, &qword_1EBBF2308, v251);
      goto LABEL_47;
    }

    v196 = v506;
    sub_1BA4A3E28();
    v197 = v507;
    v158(v507, v150, v126);
    v198 = sub_1BA4A3E88();
    LODWORD(v539) = sub_1BA4A6FA8();
    v199 = os_log_type_enabled(v198, v539);
    v200 = v542;
    if (!v199)
    {

      v530(v197, v126);
      v537(v196, v200);
      (*(v521 + 8))(v531, v520);
      sub_1BA3F801C(v529, &qword_1EBBF2308, MEMORY[0x1E69A2CF0]);
      (*(v541 + 8))(v527, v155);
LABEL_48:
      v195 = 0;
      return (v195 & 1);
    }

    v201 = swift_slowAlloc();
    v524 = v74;
    v202 = v201;
    v203 = swift_slowAlloc();
    v538 = v198;
    v204 = v203;
    *&v558[0] = v203;
    *v202 = 136446466;
    *&v550 = &type metadata for URLRouter;
    sub_1BA3F7EA4();
    v205 = sub_1BA4A6808();
    v207 = sub_1B9F0B82C(v205, v206, v558);

    *(v202 + 4) = v207;
    *(v202 + 12) = 2082;
    v158(v536, v197, v126);
    v208 = sub_1BA4A6858();
    v210 = v209;
    v530(v197, v126);
    v211 = sub_1B9F0B82C(v208, v210, v558);

    *(v202 + 14) = v211;
    v212 = v538;
    _os_log_impl(&dword_1B9F07000, v538, v539, "[%{public}s]: No Object Type Found: %{public}s", v202, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1BFAF43A0](v204, -1, -1);
    MEMORY[0x1BFAF43A0](v202, -1, -1);

    v537(v196, v542);
    (*(v521 + 8))(v531, v520);
    sub_1BA3F801C(v529, &qword_1EBBF2308, MEMORY[0x1E69A2CF0]);
LABEL_22:
    (*(v541 + 8))(v527, v540);
    goto LABEL_48;
  }

  v176 = v124;
  if (v149 == *MEMORY[0x1E69A2D10])
  {
    (*(v124 + 96))(v131, v127);
    isa = v131->isa;
    v178 = v131[1].isa;
    v179 = v532;
    v180 = swift_getObjectType();
    *&v558[0] = v179;
    (*(v528 + 16))(isa, v178, v180);

    (*(v124 + 8))(v148, v127);
LABEL_19:
    v195 = 1;
    return (v195 & 1);
  }

  if (v149 == *MEMORY[0x1E69A2D40])
  {
    (*(v124 + 96))(v131, v127);
    v182 = v500;
    v181 = v501;
    v183 = v127;
    v184 = v499;
    (*(v500 + 32))(v499, v131, v501);
    type metadata accessor for PluginDeepLinkRouter();
    v185 = v129;
    v186 = swift_allocObject();
    v187 = v532;
    v188 = v509;
    v189 = v510;
    *(v186 + 16) = v532;
    *(v186 + 24) = v188;
    v190 = v511;
    *(v186 + 32) = v189;
    *(v186 + 40) = v190;
    *(v186 + 48) = v528;
    v191 = v187;
    PluginDeepLinkRouter.launchPluginFromURL(_:pluginType:)(v185, v184);
    swift_setDeallocating();

    swift_deallocClassInstance();
    (*(v182 + 8))(v184, v181);
    v192 = *(v176 + 8);
    v193 = v148;
    v194 = v183;
LABEL_18:
    v192(v193, v194);
    goto LABEL_19;
  }

  if (v149 == *MEMORY[0x1E69A2CC8])
  {
    (*(v124 + 8))(v131, v127);
LABEL_26:
    v562[0] = v532;
    v562[1] = v509;
    v562[2] = v510;
    v562[3] = v511;
    v562[4] = v528;
    v195 = sub_1BA3F2580(v148, v498, v562);
    (*(v124 + 8))(v148, v127);
    return (v195 & 1);
  }

  if (v149 == *MEMORY[0x1E69A2D00])
  {
    v262 = *(v124 + 8);
    v262(v131, v127);
    v563[0] = v532;
    v563[1] = v509;
    v563[2] = v510;
    v563[3] = v511;
    v563[4] = v528;
    v195 = sub_1BA3F2A24(v539, v498, v563);
    v262(v148, v127);
    return (v195 & 1);
  }

  if (v149 == *MEMORY[0x1E69A2D18])
  {
    goto LABEL_55;
  }

  if (v149 == *MEMORY[0x1E69A2D20])
  {
    v271 = UIViewController.resolvedHealthStore.getter();
    if (!v271)
    {
      v292 = v491;
      sub_1BA4A3E28();
      v293 = sub_1BA4A3E88();
      v294 = sub_1BA4A6FA8();
      if (!os_log_type_enabled(v293, v294))
      {

        v125(v292, v542);
        (*(v124 + 8))(v148, v540);
        goto LABEL_48;
      }

      v295 = swift_slowAlloc();
      v524 = v74;
      v296 = v295;
      v297 = swift_slowAlloc();
      *&v558[0] = v297;
      *v296 = 136446210;
      *&v550 = &type metadata for URLRouter;
      sub_1BA3F7EA4();
      v298 = sub_1BA4A6808();
      v527 = v148;
      v300 = v125;
      v235 = v124;
      v301 = sub_1B9F0B82C(v298, v299, v558);

      *(v296 + 4) = v301;
      _os_log_impl(&dword_1B9F07000, v293, v294, "[%{public}s]: Could Not Process URL: No Health Store Found", v296, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v297);
      MEMORY[0x1BFAF43A0](v297, -1, -1);
      MEMORY[0x1BFAF43A0](v296, -1, -1);

      v300(v292, v542);
      goto LABEL_47;
    }

    v538 = v271;
    v272 = v125;
    v273 = v539;
    v274 = v534;
    v534(v536, v539, v126);
    sub_1BA4A3828();
    v275 = sub_1BA3F2160();
    if ((v276 & 1) == 0)
    {
      v302 = v275;
      v304 = v517;
      v303 = v518;
      v305 = v519;
      (*(v518 + 104))(v517, *MEMORY[0x1E69A2C60], v519);
      v306 = sub_1BA4A35B8();
      (*(v303 + 8))(v304, v305);
      v307 = [v306 userInfo];
      if (v307)
      {
        v308 = v302;
        v309 = v148;
        v310 = v307;
        v311 = sub_1BA4A6628();

        v312 = v487;
        v313 = v488;
        v314 = v489;
        (*(v488 + 104))(v487, *MEMORY[0x1E69A2B98], v489);
        v315 = sub_1BA4A35E8();
        v317 = v316;
        (*(v313 + 8))(v312, v314);
        *&v550 = v315;
        *(&v550 + 1) = v317;
        sub_1BA4A7D58();
        *(&v551 + 1) = MEMORY[0x1E69E6530];
        *&v550 = v308;
        sub_1B9F46920(&v550, v567);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v560[0] = v311;
        sub_1B9FF1AE4(v567, v558, isUniquelyReferenced_nonNull_native);
        sub_1B9FDC768(v558);
        v319 = v541;
        if (v560[0])
        {
          v320 = sub_1BA4A6618();
        }

        else
        {
          v320 = 0;
        }

        [v306 setUserInfo_];
      }

      else
      {
        [v306 setUserInfo_];
        v319 = v541;
        v309 = v148;
      }

      v340 = v538;
      v341 = [v538 profileIdentifier];
      sub_1BA4A7098();

      [v532 restoreUserActivityState_];
      (*(v521 + 8))(v493, v520);
      (*(v319 + 8))(v309, v540);
      v195 = 1;
      return (v195 & 1);
    }

    sub_1BA4A3E28();
    v277 = v490;
    v274(v490, v273, v126);
    v278 = sub_1BA4A3E88();
    v279 = sub_1BA4A6FA8();
    if (!os_log_type_enabled(v278, v279))
    {

      v530(v277, v126);
      v272(v492, v542);
      (*(v521 + 8))(v493, v520);
      (*(v541 + 8))(v148, v540);
      goto LABEL_48;
    }

    v280 = swift_slowAlloc();
    v524 = v74;
    v281 = v280;
    v282 = swift_slowAlloc();
    v527 = v148;
    v539 = v282;
    *&v558[0] = v282;
    *v281 = 136446466;
    *&v550 = &type metadata for URLRouter;
    sub_1BA3F7EA4();
    v283 = sub_1BA4A6808();
    v537 = v272;
    v285 = v277;
    v286 = sub_1B9F0B82C(v283, v284, v558);

    *(v281 + 4) = v286;
    *(v281 + 12) = 2082;
    v274(v536, v285, v126);
    v287 = sub_1BA4A6858();
    v289 = v288;
    v530(v285, v126);
    v290 = sub_1B9F0B82C(v287, v289, v558);

    *(v281 + 14) = v290;
    _os_log_impl(&dword_1B9F07000, v278, v279, "[%{public}s]: No Category Type Found: %{public}s", v281, 0x16u);
    v291 = v539;
    swift_arrayDestroy();
    MEMORY[0x1BFAF43A0](v291, -1, -1);
    MEMORY[0x1BFAF43A0](v281, -1, -1);

    v537(v492, v542);
    (*(v521 + 8))(v493, v520);
    goto LABEL_22;
  }

  if (v149 == *MEMORY[0x1E69A2D08])
  {
LABEL_55:
    v564[0] = v532;
    v564[1] = v509;
    v564[2] = v510;
    v564[3] = v511;
    v564[4] = v528;
    v269 = v564;
LABEL_56:
    v270 = sub_1BA3F35DC(v148, v269);
LABEL_57:
    v195 = v270;
    (*(v124 + 8))(v148, v127);
    return (v195 & 1);
  }

  if (v149 == *MEMORY[0x1E69A2CD0])
  {
    v565[0] = v532;
    v565[1] = v509;
    v565[2] = v510;
    v565[3] = v511;
    v565[4] = v528;
    v269 = v565;
    goto LABEL_56;
  }

  if (v149 == *MEMORY[0x1E69A2CE0])
  {
    v566[0] = v532;
    v566[1] = v509;
    v566[2] = v510;
    v566[3] = v511;
    v566[4] = v528;
    v270 = sub_1BA3FA330(v539, v566);
    goto LABEL_57;
  }

  v321 = *MEMORY[0x1E69A2CC0];
  v322 = v539;
  v524 = v74;
  if (v149 == v321)
  {
    v537 = v125;
    v323 = v486;
    sub_1BA4A3768();
    v324 = sub_1BA4A3778();
    v325 = *(v324 - 8);
    if ((*(v325 + 48))(v323, 1, v324) == 1)
    {
      sub_1BA3F801C(v323, &qword_1EDC6ACC8, MEMORY[0x1E69A2C88]);
      v326 = v485;
      sub_1BA4A3E28();
      v327 = v484;
      v534(v484, v322, v126);
      v328 = sub_1BA4A3E88();
      v329 = sub_1BA4A6FA8();
      if (os_log_type_enabled(v328, v329))
      {
        v330 = v327;
        v331 = swift_slowAlloc();
        v332 = swift_slowAlloc();
        v527 = v148;
        v333 = v332;
        *&v558[0] = v332;
        *v331 = 136315394;
        *(v331 + 4) = sub_1B9F0B82C(0x6574756F524C5255, 0xE900000000000072, v558);
        *(v331 + 12) = 2080;
        sub_1BA3F7EEC();
        v334 = sub_1BA4A82D8();
        v336 = v335;
        v530(v330, v126);
        v337 = sub_1B9F0B82C(v334, v336, v558);

        *(v331 + 14) = v337;
        _os_log_impl(&dword_1B9F07000, v328, v329, "[%s] URL did not have a restoration type: %s", v331, 0x16u);
        swift_arrayDestroy();
        v338 = v333;
        v148 = v527;
        MEMORY[0x1BFAF43A0](v338, -1, -1);
        MEMORY[0x1BFAF43A0](v331, -1, -1);

        v339 = v485;
      }

      else
      {

        v530(v327, v126);
        v339 = v326;
      }

      v537(v339, v542);
      v384 = v532;
      v385 = swift_getObjectType();
      *&v558[0] = v384;
      v386 = v517;
      v387 = v518;
      v388 = v519;
      (*(v518 + 104))(v517, *MEMORY[0x1E69A2C30], v519);
      (*(v528 + 8))(v386, v385);
      (*(v387 + 8))(v386, v388);
      (*(v176 + 8))(v148, v540);
      goto LABEL_48;
    }

    v365 = sub_1BA4A3728();
    (*(v325 + 8))(v323, v324);
    v366 = v532;
    v367 = swift_getObjectType();
    [v366 restoreUserActivityState_];
    *&v558[0] = v366;
    v368 = (*(v528 + 24))(v367);

    v192 = *(v124 + 8);
    v193 = v148;
    goto LABEL_92;
  }

  if (v149 == *MEMORY[0x1E69A2D30])
  {
    v538 = v126;
    v527 = v148;
    v342 = v532;
    v343 = swift_getObjectType();
    v344 = UIViewController.resolvedHealthStore.getter();
    if (v344)
    {
      v345 = v344;
      *&v558[0] = v342;
      v347 = v517;
      v346 = v518;
      v348 = v519;
      (*(v518 + 104))(v517, *MEMORY[0x1E69A2C68], v519);
      v349 = v528;
      (*(v528 + 8))(v347, v343, v528);
      (*(v346 + 8))(v347, v348);
      *&v558[0] = v342;
      v350 = (*(v349 + 24))(v343, v349);
      v351 = v345;
      UIViewController.resolvedHealthExperienceStore.getter(v558);
      UIViewController.resolvedPresentation.getter(&v568);
      v352 = objc_allocWithZone(type metadata accessor for AllTrendsViewController());
      *&v352[OBJC_IVAR____TtC18HealthExperienceUI23AllTrendsViewController_cancellables] = MEMORY[0x1E69E7CD0];
      *&v352[OBJC_IVAR____TtC18HealthExperienceUI23AllTrendsViewController_healthStore] = v351;
      sub_1B9F0A534(v558, &v352[OBJC_IVAR____TtC18HealthExperienceUI23AllTrendsViewController_healthExperienceStore]);
      *&v352[OBJC_IVAR____TtC18HealthExperienceUI23AllTrendsViewController_provenance] = xmmword_1BA4D9CE0;
      sub_1B9F0A534(v558, &v550);
      type metadata accessor for AllTrendsDataSource(0);
      swift_allocObject();
      sub_1B9F0A534(&v550, v567);
      type metadata accessor for AllTrendsHeaderDataSource(0);
      swift_allocObject();
      v353 = v351;
      v354 = sub_1BA297AC0(v353, v567, &v568);

      sub_1B9F0A534(&v550, v567);
      type metadata accessor for AllTrendsSectionedDataSource(0);
      swift_allocObject();
      v355 = v353;
      v356 = sub_1BA296558(v355, v567, MEMORY[0x1E69E7CC0]);
      type metadata accessor for NoDataDataSource();
      swift_allocObject();

      v357 = NoDataDataSource.init()();
      sub_1BA1E8DB4();
      swift_allocObject();
      v358 = sub_1BA063C54(v356, v357);

      swift_beginAccess();
      v358[5] = sub_1BA29613C;
      v358[6] = 0;

      sub_1B9F1DEA0();
      v359 = swift_allocObject();
      *(v359 + 16) = xmmword_1BA4B5460;
      *(v359 + 32) = v354;
      *(v359 + 40) = &protocol witness table for MutableArrayDataSource;
      *(v359 + 48) = v358;
      *(v359 + 56) = &protocol witness table for PrimarySecondaryDataSource<A, B>;
      v360 = CompoundSectionedDataSource.init(_:)(v359);

      __swift_destroy_boxed_opaque_existential_1(&v550);
      *&v352[OBJC_IVAR____TtC18HealthExperienceUI23AllTrendsViewController_trendDataSource] = v360;

      v362 = CompoundDataSourceCollectionViewController.init(dataSource:)(v361);

      __swift_destroy_boxed_opaque_existential_1(v558);
      v363 = [v350 navigationController];
      if (!v363)
      {
        (*(v176 + 8))(v527, v540);

        v195 = 1;
        return (v195 & 1);
      }

      v364 = v363;
      [v363 pushViewController:v362 animated:0];

      v192 = *(v176 + 8);
      v193 = v527;
LABEL_92:
      v194 = v540;
      goto LABEL_18;
    }

    v537 = v125;
    sub_1BA4A3E28();
    v534(v483, v539, v538);
    v407 = sub_1BA4A3E88();
    v408 = sub_1BA4A6FA8();
    if (os_log_type_enabled(v407, v408))
    {
      v409 = swift_slowAlloc();
      v410 = swift_slowAlloc();
      *&v558[0] = v410;
      *v409 = 136315394;
      *(v409 + 4) = sub_1B9F0B82C(0x6574756F524C5255, 0xE900000000000072, v558);
      *(v409 + 12) = 2082;
      v411 = v483;
      v412 = v538;
      v534(v536, v483, v538);
      v413 = sub_1BA4A6858();
      v415 = v414;
      v530(v411, v412);
      v416 = sub_1B9F0B82C(v413, v415, v558);

      *(v409 + 14) = v416;
      _os_log_impl(&dword_1B9F07000, v407, v408, "[%s] Could not resolve a health store for %{public}s", v409, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v410, -1, -1);
      MEMORY[0x1BFAF43A0](v409, -1, -1);
    }

    else
    {

      v530(v483, v538);
    }

    v417 = v482;
    v418 = v542;
LABEL_130:
    v537(v417, v418);
    v235 = v541;
LABEL_47:
    (*(v235 + 8))(v527, v540);
    goto LABEL_48;
  }

  if (v149 == *MEMORY[0x1E69A2CB8])
  {
    if ((sub_1BA4A3548() & 1) == 0)
    {
      goto LABEL_26;
    }

    v537 = v125;
    v369 = v542;
    v527 = v148;
    v370 = swift_getObjectType();
    v371 = UIViewController.resolvedHealthStore.getter();
    if (v371)
    {
      v372 = v371;
      v373 = v532;
      UIViewController.resolvedHealthExperienceStore.getter(v558);
      sub_1B9F0A534(v558, &v550);
      v374 = objc_allocWithZone(type metadata accessor for ProfileCharacteristicsWithAutoAvatarImageViewController());
      v375 = v372;
      v376 = sub_1BA06F854(v375, &v550);

      v377 = objc_allocWithZone(MEMORY[0x1E69A4420]);
      v378 = v376;
      v379 = [v377 initWithRootViewController_];
      v380 = [objc_allocWithZone(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:0 target:0 action:0];
      sub_1B9F0ADF8(0, &unk_1EDC5E0B0);
      swift_allocObject();
      swift_unknownObjectWeakInit();
      v381 = sub_1BA4A77E8();
      [v380 setPrimaryAction_];

      v382 = [v378 navigationItem];
      [v382 setLeftBarButtonItem_];

      *&v550 = v373;
      v383 = (*(v528 + 24))(v370);
      v195 = 1;
      [v383 presentViewController:v379 animated:1 completion:0];

LABEL_103:
      __swift_destroy_boxed_opaque_existential_1(v558);
      (*(v541 + 8))(v527, v540);
      return (v195 & 1);
    }

    sub_1BA4A3E28();
    v534(v481, v539, v126);
    v426 = sub_1BA4A3E88();
    v427 = sub_1BA4A6FA8();
    if (os_log_type_enabled(v426, v427))
    {
      v428 = swift_slowAlloc();
      v429 = swift_slowAlloc();
      *&v558[0] = v429;
      *v428 = 136315394;
      *(v428 + 4) = sub_1B9F0B82C(0x6574756F524C5255, 0xE900000000000072, v558);
      *(v428 + 12) = 2082;
      v430 = v481;
      v534(v536, v481, v126);
      v431 = sub_1BA4A6858();
      v433 = v432;
      v530(v430, v126);
      v434 = sub_1B9F0B82C(v431, v433, v558);

      *(v428 + 14) = v434;
      _os_log_impl(&dword_1B9F07000, v426, v427, "[%s] Could not resolve a health store for %{public}s", v428, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v429, -1, -1);
      MEMORY[0x1BFAF43A0](v428, -1, -1);
    }

    else
    {

      v530(v481, v126);
    }

    v417 = v480;
    goto LABEL_129;
  }

  if (v149 == *MEMORY[0x1E69A2D38])
  {
    goto LABEL_26;
  }

  v537 = v125;
  v369 = v542;
  v527 = v148;
  if (v149 == *MEMORY[0x1E69A2CF8])
  {
    v389 = swift_getObjectType();
    v390 = UIViewController.resolvedHealthStore.getter();
    if (v390)
    {
      v391 = v390;
      v392 = v532;
      *&v558[0] = v532;
      v394 = v517;
      v393 = v518;
      v395 = v519;
      (*(v518 + 104))(v517, *MEMORY[0x1E69A2C40], v519);
      v396 = v528;
      v397 = *(v528 + 8);
      v538 = v389;
      v397(v394, v389, v528);
      (*(v393 + 8))(v394, v395);
      UIViewController.resolvedHealthExperienceStore.getter(v558);
      sub_1BA4A22B8();
      v398 = v391;
      v399 = sub_1BA4A22A8();
      sub_1B9F0A534(v558, &v550);
      v400 = objc_allocWithZone(type metadata accessor for NotificationSettingsViewController());
      v401 = NotificationSettingsViewController.init(healthExperienceStore:)(&v550);
      v402 = objc_allocWithZone(type metadata accessor for ProfileViewController());
      v403 = v398;

      v404 = sub_1BA249DB8(v403, v399, v402);

      v405 = [objc_allocWithZone(MEMORY[0x1E69A4420]) initWithRootViewController_];
      v406 = [v405 navigationBar];
      v195 = 1;
      [v406 setPrefersLargeTitles_];

      [v405 pushViewController:v401 animated:0];
      *&v550 = v392;
      v383 = (*(v396 + 24))(v538, v396);
      [v383 presentViewController:v405 animated:1 completion:0];

      goto LABEL_103;
    }

    sub_1BA4A3E28();
    v534(v477, v539, v126);
    v447 = sub_1BA4A3E88();
    v448 = sub_1BA4A6FA8();
    if (os_log_type_enabled(v447, v448))
    {
      v449 = swift_slowAlloc();
      v450 = swift_slowAlloc();
      *&v558[0] = v450;
      *v449 = 136315394;
      *(v449 + 4) = sub_1B9F0B82C(0x6574756F524C5255, 0xE900000000000072, v558);
      *(v449 + 12) = 2082;
      v451 = v477;
      v534(v536, v477, v126);
      v452 = sub_1BA4A6858();
      v454 = v453;
      v530(v451, v126);
      v455 = sub_1B9F0B82C(v452, v454, v558);

      *(v449 + 14) = v455;
      _os_log_impl(&dword_1B9F07000, v447, v448, "[%s] Could not resolve a health store for %{public}s", v449, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v450, -1, -1);
      MEMORY[0x1BFAF43A0](v449, -1, -1);
    }

    else
    {

      v530(v477, v126);
    }

    v417 = v476;
LABEL_129:
    v418 = v369;
    goto LABEL_130;
  }

  if (v149 != *MEMORY[0x1E69A2CD8])
  {
    sub_1BA4A3E28();
    v534(v479, v539, v126);
    v435 = sub_1BA4A3E88();
    v436 = sub_1BA4A6FC8();
    if (os_log_type_enabled(v435, v436))
    {
      v437 = swift_slowAlloc();
      v438 = swift_slowAlloc();
      *&v558[0] = v438;
      *v437 = 136446466;
      *&v550 = &type metadata for URLRouter;
      sub_1BA3F7EA4();
      v439 = sub_1BA4A6808();
      v441 = sub_1B9F0B82C(v439, v440, v558);

      *(v437 + 4) = v441;
      *(v437 + 12) = 2080;
      v442 = v479;
      v534(v536, v479, v126);
      v443 = sub_1BA4A6858();
      v445 = v444;
      v530(v442, v126);
      v446 = sub_1B9F0B82C(v443, v445, v558);

      *(v437 + 14) = v446;
      _os_log_impl(&dword_1B9F07000, v435, v436, "[%{public}s]: unknown URL type received: %s", v437, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v438, -1, -1);
      MEMORY[0x1BFAF43A0](v437, -1, -1);
    }

    else
    {

      v530(v479, v126);
    }

    v537(v478, v369);
    v456 = *(v541 + 8);
    v456(v527, v540);
    v456(v538, v540);
    goto LABEL_48;
  }

  result = [objc_opt_self() sharedBehavior];
  if (result)
  {
    v419 = result;
    v420 = [result isAppleInternalInstall];

    if (v420)
    {
      v421 = v532;
      v570[0] = v532;
      v570[1] = v509;
      v570[2] = v510;
      v570[3] = v511;
      v422 = v528;
      v570[4] = v528;
      sub_1BA3F35DC(v527, v570);
      v423 = swift_getObjectType();
      *&v558[0] = v421;
      v424 = (*(v422 + 24))(v423, v422);
      v569 = &unk_1F387F108;
      v425 = swift_dynamicCastObjCProtocolConditional();
      if (v425)
      {
        [v425 onInternalSettingsGesture];

        v235 = v541;
        goto LABEL_66;
      }

      sub_1BA4A3E28();
      v461 = v424;
      v462 = sub_1BA4A3E88();
      v463 = sub_1BA4A6FA8();

      if (os_log_type_enabled(v462, v463))
      {
        v464 = swift_slowAlloc();
        v465 = swift_slowAlloc();
        *&v558[0] = v465;
        *v464 = 136446466;
        *(v464 + 4) = sub_1B9F0B82C(0x6574756F524C5255, 0xE900000000000072, v558);
        *(v464 + 12) = 2080;
        v466 = v461;
        v467 = [v466 description];
        v468 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
        v470 = v469;

        v471 = sub_1B9F0B82C(v468, v470, v558);

        *(v464 + 14) = v471;
        _os_log_impl(&dword_1B9F07000, v462, v463, "[%{public}s]: %s is not a internal settings feature handler", v464, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1BFAF43A0](v465, -1, -1);
        MEMORY[0x1BFAF43A0](v464, -1, -1);
      }

      else
      {
      }

      v417 = v474;
    }

    else
    {
      sub_1BA4A3E28();
      v457 = sub_1BA4A3E88();
      v458 = sub_1BA4A6FC8();
      if (os_log_type_enabled(v457, v458))
      {
        v459 = swift_slowAlloc();
        v460 = swift_slowAlloc();
        *&v558[0] = v460;
        *v459 = 136446210;
        *(v459 + 4) = sub_1B9F0B82C(0x6574756F524C5255, 0xE900000000000072, v558);
        _os_log_impl(&dword_1B9F07000, v457, v458, "[%{public}s]: Internal settings prohibited from being shown on non-internal install", v459, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v460);
        MEMORY[0x1BFAF43A0](v460, -1, -1);
        MEMORY[0x1BFAF43A0](v459, -1, -1);
      }

      v417 = v475;
    }

    goto LABEL_129;
  }

  __break(1u);
  return result;
}

uint64_t sub_1BA3F7B90(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *a3;
  v5 = *(a3 + 8);
  v7 = *(a3 + 16);
  v6 = *(a3 + 24);
  v8 = *(a3 + 32);
  v31 = a2;
  v32 = v8;
  v9 = sub_1BA4A15D8();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_1BA4A3878();
  v13 = *(v33 - 8);
  v14 = MEMORY[0x1EEE9AC00](v33);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v12, a1, v9, v14);
  sub_1BA4A3828();
  v17 = sub_1BA4A37F8();
  if (v17)
  {
    v18 = v17;
    if ([v17 type] != 1)
    {
      v34[0] = v4;
      v34[1] = v5;
      v34[2] = v7;
      v34[3] = v6;
      v34[4] = v32;
      v28 = static SharingProfileDeepLinkRouter.handleURL(_:rootViewController:profileIdentifier:)(a1, v34, v18);

      goto LABEL_18;
    }
  }

  v35[0] = v4;
  v35[1] = v5;
  v35[2] = v7;
  v35[3] = v6;
  v35[4] = v32;
  if (sub_1BA3F38B8(a1, v31, v35))
  {
    v19 = sub_1BA4A3848();
    v21 = v20;
    v22 = [objc_opt_self() externalSourceAssistantService];
    v23 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    v25 = v24;

    if (v21)
    {
      if (v19 == v23 && v21 == v25)
      {
      }

      else
      {
        v27 = sub_1BA4A8338();

        if ((v27 & 1) == 0)
        {
          goto LABEL_17;
        }
      }

      sub_1BA1FA864();
    }

    else
    {
    }

LABEL_17:
    v28 = 1;
    goto LABEL_18;
  }

  v28 = 0;
LABEL_18:
  (*(v13 + 8))(v16, v33);
  return v28 & 1;
}

void sub_1BA3F7E50(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

unint64_t sub_1BA3F7EA4()
{
  result = qword_1EDC5F908;
  if (!qword_1EDC5F908)
  {
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_1EDC5F908);
  }

  return result;
}

unint64_t sub_1BA3F7EEC()
{
  result = qword_1EBBF0B10;
  if (!qword_1EBBF0B10)
  {
    sub_1BA4A15D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBF0B10);
  }

  return result;
}

uint64_t sub_1BA3F7F44(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_1BA3F7E50(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1BA3F7FB0(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_1BA3F7E50(0, a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_1BA3F801C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_1BA3F7E50(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_1BA3F80B0(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI31ProfileCategoriesViewController_navigationBarTitleView;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
}

void *sub_1BA3F8110()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI31ProfileCategoriesViewController_navigationBarTitleView;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1BA3F815C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI31ProfileCategoriesViewController_navigationBarTitleView;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_1BA3F8214()
{
  sub_1BA142B40();
  v2 = v1;
  v3 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*(*(v0 + OBJC_IVAR____TtC18HealthExperienceUI31ProfileCategoriesViewController_categoriesDataSource) + OBJC_IVAR____TtC18HealthExperienceUI27ProfileCategoriesDataSource_profileInformationDataSource) + qword_1EDC6A560);
  v6 = MEMORY[0x1E695BF98];
  sub_1BA3F8490(0, &qword_1EDC6B720, MEMORY[0x1E695BF98]);
  sub_1BA3F851C(&qword_1EDC6B730, &qword_1EDC6B720, v6);
  v11 = sub_1BA4A4F98();
  v7 = MEMORY[0x1E695BED0];
  sub_1BA3F8490(0, &qword_1EDC6B738, MEMORY[0x1E695BED0]);
  sub_1B9F1B310(0, &qword_1EDC6E1E0, &qword_1EDC6E1F0, MEMORY[0x1E69A3208], MEMORY[0x1E69E6720]);
  sub_1BA3F851C(&qword_1EDC6B740, &qword_1EDC6B738, v7);
  sub_1BA4A4FE8();
  sub_1BA2FA06C(&qword_1EBBEC7C0, sub_1BA142B40);
  v8 = sub_1BA4A4F98();

  (*(v3 + 8))(v5, v2);
  return v8;
}

void sub_1BA3F8490(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, void, void))
{
  if (!*a2)
  {
    sub_1BA3F9DDC(255, &qword_1EDC6E200, MEMORY[0x1E69A3108]);
    v7 = a3(a1, v6, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7410]);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1BA3F851C(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, void, void))
{
  result = *a1;
  if (!result)
  {
    sub_1BA3F8490(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

char *ProfileCategoriesViewController.__allocating_init(healthStore:healthExperienceStore:pinnedContentManager:)(void *a1, void *a2, uint64_t a3)
{
  v7 = objc_allocWithZone(v3);
  v8 = sub_1BA3F9C88(a1, a2, a3);

  return v8;
}

char *ProfileCategoriesViewController.init(healthStore:healthExperienceStore:pinnedContentManager:)(void *a1, void *a2, uint64_t a3)
{
  v4 = sub_1BA3F9C88(a1, a2, a3);

  return v4;
}

void sub_1BA3F86A8()
{
  v1 = v0;
  sub_1B9F36938();
  v2 = [v0 collectionView];
  if (!v2)
  {
    __break(1u);
    goto LABEL_8;
  }

  v3 = v2;
  sub_1B9FF515C();

  v4 = [v1 collectionView];
  if (!v4)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v5 = v4;
  sub_1B9FF5190();

  v6 = [v1 collectionView];
  if (!v6)
  {
LABEL_9:
    __break(1u);
    return;
  }

  v7 = v6;
  sub_1B9FF578C();
}

void sub_1BA3F87D4(uint64_t a1)
{
  v23.receiver = v1;
  v23.super_class = type metadata accessor for ProfileCategoriesViewController();
  objc_msgSendSuper2(&v23, sel_traitCollectionDidChange_, a1);
  if ((_UISolariumEnabled() & 1) == 0)
  {
    sub_1BA17F834(1);
  }

  v3 = OBJC_IVAR____TtC18HealthExperienceUI31ProfileCategoriesViewController_navigationBarTitleView;
  swift_beginAccess();
  v4 = *&v1[v3];
  if (v4)
  {
    type metadata accessor for ProfileNavigationBarView();
    v5 = swift_dynamicCastClass();
    if (v5)
    {
      v6 = v5;
      v7 = v4;
      v8 = [v1 collectionView];
      if (v8)
      {
        v9 = v8;
        sub_1BA17C820();
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
          aBlock[3] = &block_descriptor_112;
          v20 = _Block_copy(aBlock);
          v21 = v7;

          [v19 animateWithDuration:v20 animations:0.2];

          _Block_release(v20);
        }
      }

      else
      {
        __break(1u);
      }
    }
  }
}

void sub_1BA3F8A74(uint64_t a1)
{
  v23.receiver = v1;
  v23.super_class = type metadata accessor for ProfileCategoriesViewController();
  objc_msgSendSuper2(&v23, sel_scrollViewDidScroll_, a1);
  if ((_UISolariumEnabled() & 1) == 0)
  {
    sub_1BA17F834(1);
  }

  v3 = OBJC_IVAR____TtC18HealthExperienceUI31ProfileCategoriesViewController_navigationBarTitleView;
  swift_beginAccess();
  v4 = *&v1[v3];
  if (v4)
  {
    type metadata accessor for ProfileNavigationBarView();
    v5 = swift_dynamicCastClass();
    if (v5)
    {
      v6 = v5;
      v7 = v4;
      v8 = [v1 collectionView];
      if (v8)
      {
        v9 = v8;
        sub_1BA17C820();
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
          aBlock[4] = sub_1BA091E04;
          aBlock[5] = v18;
          aBlock[0] = MEMORY[0x1E69E9820];
          aBlock[1] = 1107296256;
          aBlock[2] = sub_1B9F0B040;
          aBlock[3] = &block_descriptor_7_1;
          v20 = _Block_copy(aBlock);
          v21 = v7;

          [v19 animateWithDuration:v20 animations:0.2];

          _Block_release(v20);
        }
      }

      else
      {
        __break(1u);
      }
    }
  }
}

void sub_1BA3F8D10()
{
  v22 = sub_1BA4A3678();
  v1 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v3 = &v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA3F9DDC(0, &qword_1EDC6E200, MEMORY[0x1E69A3108]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v21 - v5;
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  v21 = sub_1BA4A1318();
  sub_1B9F1B310(0, &qword_1EDC6B410, &qword_1EDC6B3D0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1BA4B5480;
  v8 = v0;
  v9 = *(**(*&v0[OBJC_IVAR____TtC18HealthExperienceUI31ProfileCategoriesViewController_categoriesDataSource] + OBJC_IVAR____TtC18HealthExperienceUI27ProfileCategoriesDataSource_profileInformationDataSource) + 760);

  v9(v10);

  v11 = sub_1BA4A2888();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v6, 1, v11) == 1)
  {
    sub_1BA3F9E30(v6, &qword_1EDC6E200, MEMORY[0x1E69A3108]);
    v13 = 0;
    v14 = 0;
  }

  else
  {
    v13 = sub_1BA4A2AE8();
    v14 = v15;
    (*(v12 + 8))(v6, v11);
  }

  *(v7 + 56) = MEMORY[0x1E69E6158];
  *(v7 + 64) = sub_1B9F1BE20();
  if (v14)
  {
    v16 = v13;
  }

  else
  {
    v16 = 0;
  }

  v17 = 0xE000000000000000;
  if (v14)
  {
    v17 = v14;
  }

  *(v7 + 32) = v16;
  *(v7 + 40) = v17;
  sub_1BA4A67D8();

  v18 = v22;
  (*(v1 + 104))(v3, *MEMORY[0x1E69A2C20], v22);
  v19 = [*&v8[OBJC_IVAR____TtC18HealthExperienceUI31ProfileCategoriesViewController_providedHealthStore] profileIdentifier];
  v20 = sub_1BA4A35B8();

  (*(v1 + 8))(v3, v18);
  [v8 setUserActivity_];
}

id sub_1BA3F9138(void *a1)
{
  ObjectType = swift_getObjectType();
  v59 = sub_1BA4A3EA8();
  v58 = *(v59 - 8);
  MEMORY[0x1EEE9AC00](v59);
  v3 = &v51 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v55 = &v51 - v5;
  v54 = sub_1BA4A35F8();
  v53 = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v54);
  v7 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA3F9DDC(0, &qword_1EBBED070, MEMORY[0x1E69A2C78]);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v51 - v9;
  v11 = sub_1BA4A3678();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v51 - v17;
  v56 = a1;
  v19 = [a1 activityType];
  _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();

  sub_1BA4A3688();
  if ((*(v12 + 48))(v10, 1, v11) != 1)
  {
    (*(v12 + 32))(v18, v10, v11);
    (*(v12 + 16))(v14, v18, v11);
    v28 = (*(v12 + 88))(v14, v11);
    v29 = v18;
    if (v28 != *MEMORY[0x1E69A2C20])
    {
      if (v28 != *MEMORY[0x1E69A2C60] && v28 != *MEMORY[0x1E69A2C00])
      {
        v30 = *(v12 + 8);
        v30(v18, v11);
        return (v30)(v14, v11);
      }

      v31 = v53;
      v32 = v54;
      (*(v53 + 104))(v7, *MEMORY[0x1E69A2B98], v54);
      sub_1BA2FA06C(&qword_1EDC6ACD8, MEMORY[0x1E69A2BC0]);
      v33 = v56;
      sub_1BA4A70C8();
      (*(v31 + 8))(v7, v32);
      if (*(&v66 + 1))
      {
        v34 = swift_dynamicCast();
        v35 = v55;
        if (v34)
        {
          result = [objc_opt_self() categoryWithID_];
          if (!result)
          {
            __break(1u);
            return result;
          }

          v36 = result;
          static HKTypeGroup.typeGroup(for:)(v65);

          v62[0] = v65[0];
          v62[1] = v65[1];
          v63 = v66;
          v64 = v67;
          v37 = v52;
          v38 = *&v52[OBJC_IVAR____TtC18HealthExperienceUI31ProfileCategoriesViewController_providedHealthStore];
          sub_1B9F0A534(&v52[OBJC_IVAR____TtC18HealthExperienceUI31ProfileCategoriesViewController_providedHealthExperienceStore], v61);
          sub_1B9F0A534(v37 + OBJC_IVAR____TtC18HealthExperienceUI31ProfileCategoriesViewController_pinnedContentManager, v60);
          v39 = objc_allocWithZone(type metadata accessor for CategoryViewController());
          v40 = v38;
          v41 = sub_1BA2F93F4(v62, v40, v61, v60);

          v42 = [v37 navigationController];
          if (v42)
          {
            v43 = v42;
            [v42 pushViewController:v41 animated:0];
          }

          [v41 restoreUserActivityState_];

          return (*(v12 + 8))(v29, v11);
        }
      }

      else
      {
        sub_1B9F23224(v65);
        v35 = v55;
      }

      _s18HealthExperienceUI0A44ChecklistStagedFeatureStatusFeedItemProviderPAAE6logger2os6LoggerVvg_0();
      v44 = sub_1BA4A3E88();
      v45 = sub_1BA4A6FA8();
      if (os_log_type_enabled(v44, v45))
      {
        v46 = swift_slowAlloc();
        v47 = swift_slowAlloc();
        v62[0] = v47;
        *v46 = 136446210;
        v65[0] = ObjectType;
        swift_getMetatypeMetadata();
        v48 = sub_1BA4A6808();
        v50 = sub_1B9F0B82C(v48, v49, v62);

        *(v46 + 4) = v50;
        _os_log_impl(&dword_1B9F07000, v44, v45, "[%{public}s]: Category state restoration requested, but no category found!", v46, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v47);
        MEMORY[0x1BFAF43A0](v47, -1, -1);
        MEMORY[0x1BFAF43A0](v46, -1, -1);

        (*(v58 + 8))(v35, v59);
        return (*(v12 + 8))(v29, v11);
      }

      (*(v58 + 8))(v35, v59);
    }

    return (*(v12 + 8))(v29, v11);
  }

  sub_1BA3F9E30(v10, &qword_1EBBED070, MEMORY[0x1E69A2C78]);
  sub_1BA4A3E48();
  v20 = sub_1BA4A3E88();
  v21 = sub_1BA4A6FA8();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v62[0] = v23;
    *v22 = 136446210;
    v65[0] = ObjectType;
    swift_getMetatypeMetadata();
    v24 = sub_1BA4A6808();
    v26 = sub_1B9F0B82C(v24, v25, v62);

    *(v22 + 4) = v26;
    _os_log_impl(&dword_1B9F07000, v20, v21, "[%{public}s] user activity passed in does not have a valid activity type", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v23);
    MEMORY[0x1BFAF43A0](v23, -1, -1);
    MEMORY[0x1BFAF43A0](v22, -1, -1);
  }

  return (*(v58 + 8))(v3, v59);
}

id ProfileCategoriesViewController.__allocating_init(collectionViewLayout:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCollectionViewLayout_];

  return v3;
}

void sub_1BA3F9AC4()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC18HealthExperienceUI31ProfileCategoriesViewController_providedHealthExperienceStore);

  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC18HealthExperienceUI31ProfileCategoriesViewController_pinnedContentManager);
  v1 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI31ProfileCategoriesViewController_navigationBarTitleView);
}

id ProfileCategoriesViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ProfileCategoriesViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

char *sub_1BA3F9C88(void *a1, void *a2, uint64_t a3)
{
  v4 = v3;
  *(v4 + OBJC_IVAR____TtC18HealthExperienceUI31ProfileCategoriesViewController_navigationBarTitleView) = 0;
  v8 = OBJC_IVAR____TtC18HealthExperienceUI31ProfileCategoriesViewController_providedHealthStore;
  *(v4 + OBJC_IVAR____TtC18HealthExperienceUI31ProfileCategoriesViewController_providedHealthStore) = a1;
  sub_1B9F0A534(a2, v4 + OBJC_IVAR____TtC18HealthExperienceUI31ProfileCategoriesViewController_providedHealthExperienceStore);
  sub_1B9F0A534(a3, v4 + OBJC_IVAR____TtC18HealthExperienceUI31ProfileCategoriesViewController_pinnedContentManager);
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v9 = a1;
  v10 = sub_1BA4A1B68();
  v11 = *(v4 + v8);
  sub_1B9F0A534(a2, v16);
  type metadata accessor for ProfileCategoriesDataSource();
  swift_allocObject();
  v12 = sub_1BA03A58C(v10, v11, v16);

  *(v4 + OBJC_IVAR____TtC18HealthExperienceUI31ProfileCategoriesViewController_categoriesDataSource) = v12;

  v14 = CompoundDataSourceCollectionViewController.init(dataSource:)(v13);
  __swift_destroy_boxed_opaque_existential_1(a3);
  __swift_destroy_boxed_opaque_existential_1(a2);
  return v14;
}

void sub_1BA3F9DDC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t sub_1BA3F9E30(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_1BA3F9DDC(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t static DataSourceBuilder.buildExpression<A>(_:)(uint64_t a1, uint64_t a2)
{
  nullsub_1(a1, a2);

  return swift_unknownObjectRetain();
}

uint64_t static DataSourceBuilder.buildBlock<A>(_:)(uint64_t a1, uint64_t a2)
{
  nullsub_1(a1, a2);

  return swift_unknownObjectRetain();
}

uint64_t sub_1BA3FA020(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  type metadata accessor for _ConditionalDataSource();
  v9 = a1;
  LOBYTE(v10) = a6;
  swift_unknownObjectRetain();
  return _ConditionalDataSource.__allocating_init(storage:)(&v9);
}

uint64_t sub_1BA3FA08C()
{
  type metadata accessor for CompoundSectionedDataSource();
  swift_allocObject();

  return CompoundSectionedDataSource.init(_:)(v0);
}

uint64_t static DataSourceBuilder.buildBlock()()
{
  type metadata accessor for EmptyDataSource();
  swift_allocObject();
  return EmptyDataSource.init()();
}

uint64_t static DataSourceBuilder.buildBlock<each A>(_:)(uint64_t **a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v4 = a2;
    v6 = (a3 & 0xFFFFFFFFFFFFFFFELL);
    v7 = (a4 & 0xFFFFFFFFFFFFFFFELL);
    v8 = MEMORY[0x1E69E7CC0];
    do
    {
      v9 = *v6;
      v10 = *v7;
      v11 = **a1;
      swift_unknownObjectRetain();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v17 = v8;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v8 = sub_1B9F1E00C(0, *(v8 + 16) + 1, 1, v8);
        v17 = v8;
      }

      v13 = *(v8 + 16);
      v14 = *(v8 + 24);
      if (v13 >= v14 >> 1)
      {
        v15 = *(v8 + 16);
        v8 = sub_1B9F1E00C(v14 > 1, v13 + 1, 1, v8);
        v13 = v15;
        v17 = v8;
      }

      sub_1BA1BA008(v13, v11, &v17, v9, v10);
      ++a1;
      ++v7;
      ++v6;
      --v4;
    }

    while (v4);
  }

  else
  {
    v8 = MEMORY[0x1E69E7CC0];
  }

  type metadata accessor for CompoundSectionedDataSource();
  swift_allocObject();
  return CompoundSectionedDataSource.init(_:)(v8);
}

uint64_t static DataSourceBuilder.buildOptional<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v7 = type metadata accessor for EmptyDataSource();
    v8 = a3;
    v9 = &protocol witness table for EmptyDataSource;
    type metadata accessor for _ConditionalDataSource();
    v6 = a1;
    LOBYTE(v7) = 0;
    swift_unknownObjectRetain();
  }

  else
  {
    v7 = type metadata accessor for EmptyDataSource();
    v8 = a3;
    v9 = &protocol witness table for EmptyDataSource;
    type metadata accessor for _ConditionalDataSource();
    swift_allocObject();
    v6 = EmptyDataSource.init()();
    LOBYTE(v7) = 1;
  }

  return _ConditionalDataSource.__allocating_init(storage:)(&v6);
}

uint64_t sub_1BA3FA330(uint64_t a1, uint64_t a2)
{
  v116 = a1;
  v2 = *a2;
  v118 = *(a2 + 32);
  sub_1BA3FFB10(0, &qword_1EDC6B5B8, MEMORY[0x1E69E8050]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v110 = &v97 - v4;
  sub_1BA3FFCF4(0, &qword_1EBBEA760, MEMORY[0x1E69E6530], MEMORY[0x1E695C000]);
  v102 = v5;
  v100 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v98 = &v97 - v6;
  sub_1BA02DF24(0);
  v103 = v7;
  v101 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v99 = &v97 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA02E124();
  v106 = v9;
  v105 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v104 = &v97 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA02E1C8();
  v109 = v11;
  v108 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v107 = &v97 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA02E25C();
  v113 = v13;
  v112 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v111 = &v97 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1BA4A15D8();
  v115 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v97 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v97 - v19;
  v21 = sub_1BA4A3EA8();
  v22 = *(v21 - 8);
  v119 = v21;
  v120 = v22;
  MEMORY[0x1EEE9AC00](v21);
  v97 = &v97 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v117 = &v97 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v114 = &v97 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v97 - v29;
  v31 = sub_1BA4A3678();
  v32 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v34 = &v97 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  ObjectType = swift_getObjectType();
  v36 = UIViewController.resolvedHealthStore.getter();
  if (!v36)
  {
    sub_1BA4A3E28();
    v52 = v115;
    v53 = *(v115 + 16);
    v53(v20, v116, v15);
    v54 = sub_1BA4A3E88();
    v55 = sub_1BA4A6FA8();
    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      v118 = swift_slowAlloc();
      v124[0] = v118;
      *v56 = 136315394;
      *(v56 + 4) = sub_1B9F0B82C(0x6574756F524C5255, 0xE900000000000072, v124);
      *(v56 + 12) = 2082;
      v53(v17, v20, v15);
      v57 = sub_1BA4A6858();
      v59 = v58;
      (*(v52 + 8))(v20, v15);
      v60 = sub_1B9F0B82C(v57, v59, v124);

      *(v56 + 14) = v60;
      _os_log_impl(&dword_1B9F07000, v54, v55, "[%s] Could not resolve a health store for %{public}s", v56, 0x16u);
      v61 = v118;
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v61, -1, -1);
      MEMORY[0x1BFAF43A0](v56, -1, -1);
    }

    else
    {

      (*(v52 + 8))(v20, v15);
    }

    (*(v120 + 8))(v30, v119);
    return 0;
  }

  v37 = v36;
  v124[0] = v2;
  (*(v32 + 104))(v34, *MEMORY[0x1E69A2C38], v31);
  v38 = v118;
  (*(v118 + 8))(v34, ObjectType, v118);
  (*(v32 + 8))(v34, v31);
  v124[0] = v2;
  v39 = (*(v38 + 24))(ObjectType, v38);
  type metadata accessor for SharingOverviewViewController();
  v40 = swift_dynamicCastClass();
  if (!v40)
  {

    v62 = v114;
    sub_1BA4A3E28();
    v63 = v2;
    v64 = sub_1BA4A3E88();
    v65 = sub_1BA4A6FA8();

    if (os_log_type_enabled(v64, v65))
    {
      v66 = swift_slowAlloc();
      v67 = swift_slowAlloc();
      v124[0] = v67;
      *v66 = 136315394;
      *(v66 + 4) = sub_1B9F0B82C(0x6574756F524C5255, 0xE900000000000072, v124);
      *(v66 + 12) = 2082;
      *&v121[0] = v63;
      swift_getWitnessTable();
      v68 = sub_1BA02E38C();
      v70 = sub_1B9F0B82C(v68, v69, v124);

      *(v66 + 14) = v70;
      _os_log_impl(&dword_1B9F07000, v64, v65, "[%s] View controller is not SharingOverviewViewController: %{public}s", v66, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v67, -1, -1);
      MEMORY[0x1BFAF43A0](v66, -1, -1);
    }

    else
    {
    }

    (*(v120 + 8))(v62, v119);
    return 0;
  }

  v41 = v40;
  v42 = OBJC_IVAR____TtC18HealthExperienceUI42CompoundDataSourceCollectionViewController_dataSourceProvider;
  swift_beginAccess();
  sub_1BA119178(v41 + v42, v124);
  v43 = v124[3];
  sub_1BA3FFC2C(v124);
  if (!v43)
  {
    [v41 viewDidLoad];
  }

  v44 = sub_1BA0030EC();
  v45 = v117;
  if (v46)
  {
    v47 = v97;
    sub_1BA4A3E28();
    v48 = sub_1BA4A3E88();
    v49 = sub_1BA4A6FA8();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v124[0] = v51;
      *v50 = 136315138;
      *(v50 + 4) = sub_1B9F0B82C(0x6574756F524C5255, 0xE900000000000072, v124);
      _os_log_impl(&dword_1B9F07000, v48, v49, "[%s] Could not get number of outgoing relationships", v50, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v51);
      MEMORY[0x1BFAF43A0](v51, -1, -1);
      MEMORY[0x1BFAF43A0](v50, -1, -1);
    }

    else
    {
    }

    (*(v120 + 8))(v47, v119);
    return 0;
  }

  v71 = v44;
  UIViewController.resolvedHealthExperienceStore.getter(v124);
  sub_1BA4A3DD8();
  v72 = sub_1BA4A3E88();
  v73 = sub_1BA4A6FC8();
  if (os_log_type_enabled(v72, v73))
  {
    v74 = swift_slowAlloc();
    v75 = swift_slowAlloc();
    *&v121[0] = v75;
    *v74 = 136315138;
    *(v74 + 4) = sub_1B9F0B82C(0xD00000000000001DLL, 0x80000001BA4E0E60, v121);
    _os_log_impl(&dword_1B9F07000, v72, v73, "[%s]: Checking criteria for Sharing onboaring", v74, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v75);
    MEMORY[0x1BFAF43A0](v75, -1, -1);
    MEMORY[0x1BFAF43A0](v74, -1, -1);
  }

  (*(v120 + 8))(v45, v119);
  *&v121[0] = sub_1BA02E420();
  v123 = v71;
  v76 = v98;
  sub_1BA4A4E78();
  sub_1BA4A4D08();
  sub_1BA02DF60(0);
  sub_1BA02E060();
  sub_1BA3FFBE4(&qword_1EBBEA0F8, sub_1BA02DF60);
  v77 = v99;
  v78 = v102;
  sub_1BA4A5168();
  (*(v100 + 8))(v76, v78);
  sub_1BA3FFBE4(&qword_1EBBEA7B0, sub_1BA02DF24);
  v79 = v103;
  v80 = sub_1BA4A4F98();
  (*(v101 + 8))(v77, v79);
  v123 = v80;
  v81 = v37;
  v122 = sub_1BA2B1C48(v37);
  v82 = v104;
  sub_1BA4A4AB8();
  sub_1BA3FFBE4(&qword_1EBBEA798, sub_1BA02E124);
  v83 = v107;
  v84 = v106;
  sub_1BA4A5038();
  (*(v105 + 8))(v82, v84);
  sub_1B9F0ADF8(0, &qword_1EDC6B5A0);
  v85 = sub_1BA4A7308();
  *&v121[0] = v85;
  v86 = sub_1BA4A72A8();
  v87 = v110;
  (*(*(v86 - 8) + 56))(v110, 1, 1, v86);
  sub_1BA3FFBE4(&qword_1EBBEA7A8, sub_1BA02E1C8);
  sub_1B9F3DC80();
  v88 = v111;
  v89 = v109;
  sub_1BA4A50A8();
  sub_1BA3FFC98(v87, &qword_1EDC6B5B8, MEMORY[0x1E69E8050]);
  (*(v108 + 8))(v83, v89);

  v90 = swift_allocObject();
  *(v90 + 16) = v41;
  *(v90 + 24) = v41;
  sub_1B9F0A534(v124, v121);
  v91 = swift_allocObject();
  *(v91 + 16) = v41;
  *(v91 + 24) = v41;
  *(v91 + 32) = v81;
  sub_1B9F25598(v121, v91 + 40);
  *(v91 + 80) = 256;
  v92 = swift_allocObject();
  *(v92 + 16) = sub_1BA3FFE30;
  *(v92 + 24) = v91;
  sub_1BA3FFBE4(&qword_1EBBEA7B8, sub_1BA02E25C);
  v93 = v39;
  v94 = v81;
  v95 = v113;
  sub_1BA4A4F88();

  (*(v112 + 8))(v88, v95);
  __swift_destroy_boxed_opaque_existential_1(v124);
  return 1;
}

uint64_t sub_1BA3FB398(uint64_t a1, uint64_t a2)
{
  v116 = a1;
  v2 = *a2;
  v118 = *(a2 + 32);
  sub_1BA3FFB10(0, &qword_1EDC6B5B8, MEMORY[0x1E69E8050]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v110 = &v97 - v4;
  sub_1BA3FFCF4(0, &qword_1EBBEA760, MEMORY[0x1E69E6530], MEMORY[0x1E695C000]);
  v102 = v5;
  v100 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v98 = &v97 - v6;
  sub_1BA02DF24(0);
  v103 = v7;
  v101 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v99 = &v97 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA02E124();
  v106 = v9;
  v105 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v104 = &v97 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA02E1C8();
  v109 = v11;
  v108 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v107 = &v97 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA02E25C();
  v113 = v13;
  v112 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v111 = &v97 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1BA4A15D8();
  v115 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v97 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v97 - v19;
  v21 = sub_1BA4A3EA8();
  v22 = *(v21 - 8);
  v119 = v21;
  v120 = v22;
  MEMORY[0x1EEE9AC00](v21);
  v97 = &v97 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v117 = &v97 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v114 = &v97 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v97 - v29;
  v31 = sub_1BA4A3678();
  v32 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v34 = &v97 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  ObjectType = swift_getObjectType();
  v36 = UIViewController.resolvedHealthStore.getter();
  if (!v36)
  {
    sub_1BA4A3E28();
    v52 = v115;
    v53 = *(v115 + 16);
    v53(v20, v116, v15);
    v54 = sub_1BA4A3E88();
    v55 = sub_1BA4A6FA8();
    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      v118 = swift_slowAlloc();
      v124[0] = v118;
      *v56 = 136315394;
      *(v56 + 4) = sub_1B9F0B82C(0xD000000000000012, 0x80000001BA4D9DB0, v124);
      *(v56 + 12) = 2082;
      v53(v17, v20, v15);
      v57 = sub_1BA4A6858();
      v59 = v58;
      (*(v52 + 8))(v20, v15);
      v60 = sub_1B9F0B82C(v57, v59, v124);

      *(v56 + 14) = v60;
      _os_log_impl(&dword_1B9F07000, v54, v55, "[%s] Could not resolve a health store for %{public}s", v56, 0x16u);
      v61 = v118;
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v61, -1, -1);
      MEMORY[0x1BFAF43A0](v56, -1, -1);
    }

    else
    {

      (*(v52 + 8))(v20, v15);
    }

    (*(v120 + 8))(v30, v119);
    return 0;
  }

  v37 = v36;
  v124[0] = v2;
  (*(v32 + 104))(v34, *MEMORY[0x1E69A2C38], v31);
  v38 = v118;
  (*(v118 + 8))(v34, ObjectType, v118);
  (*(v32 + 8))(v34, v31);
  v124[0] = v2;
  v39 = (*(v38 + 24))(ObjectType, v38);
  type metadata accessor for SharingOverviewViewController();
  v40 = swift_dynamicCastClass();
  if (!v40)
  {

    v62 = v114;
    sub_1BA4A3E28();
    v63 = v2;
    v64 = sub_1BA4A3E88();
    v65 = sub_1BA4A6FA8();

    if (os_log_type_enabled(v64, v65))
    {
      v66 = swift_slowAlloc();
      v67 = swift_slowAlloc();
      v124[0] = v67;
      *v66 = 136315394;
      *(v66 + 4) = sub_1B9F0B82C(0xD000000000000012, 0x80000001BA4D9DB0, v124);
      *(v66 + 12) = 2082;
      *&v121[0] = v63;
      swift_getWitnessTable();
      v68 = sub_1BA02E38C();
      v70 = sub_1B9F0B82C(v68, v69, v124);

      *(v66 + 14) = v70;
      _os_log_impl(&dword_1B9F07000, v64, v65, "[%s] View controller is not SharingOverviewViewController: %{public}s", v66, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v67, -1, -1);
      MEMORY[0x1BFAF43A0](v66, -1, -1);
    }

    else
    {
    }

    (*(v120 + 8))(v62, v119);
    return 0;
  }

  v41 = v40;
  v42 = OBJC_IVAR____TtC18HealthExperienceUI42CompoundDataSourceCollectionViewController_dataSourceProvider;
  swift_beginAccess();
  sub_1BA119178(v41 + v42, v124);
  v43 = v124[3];
  sub_1BA3FFC2C(v124);
  if (!v43)
  {
    [v41 viewDidLoad];
  }

  v44 = sub_1BA0030EC();
  v45 = v117;
  if (v46)
  {
    v47 = v97;
    sub_1BA4A3E28();
    v48 = sub_1BA4A3E88();
    v49 = sub_1BA4A6FA8();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v124[0] = v51;
      *v50 = 136315138;
      *(v50 + 4) = sub_1B9F0B82C(0xD000000000000012, 0x80000001BA4D9DB0, v124);
      _os_log_impl(&dword_1B9F07000, v48, v49, "[%s] Could not get number of outgoing relationships", v50, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v51);
      MEMORY[0x1BFAF43A0](v51, -1, -1);
      MEMORY[0x1BFAF43A0](v50, -1, -1);
    }

    else
    {
    }

    (*(v120 + 8))(v47, v119);
    return 0;
  }

  v71 = v44;
  UIViewController.resolvedHealthExperienceStore.getter(v124);
  sub_1BA4A3DD8();
  v72 = sub_1BA4A3E88();
  v73 = sub_1BA4A6FC8();
  if (os_log_type_enabled(v72, v73))
  {
    v74 = swift_slowAlloc();
    v75 = swift_slowAlloc();
    *&v121[0] = v75;
    *v74 = 136315138;
    *(v74 + 4) = sub_1B9F0B82C(0xD00000000000001DLL, 0x80000001BA4E0E60, v121);
    _os_log_impl(&dword_1B9F07000, v72, v73, "[%s]: Checking criteria for Sharing onboaring", v74, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v75);
    MEMORY[0x1BFAF43A0](v75, -1, -1);
    MEMORY[0x1BFAF43A0](v74, -1, -1);
  }

  (*(v120 + 8))(v45, v119);
  *&v121[0] = sub_1BA02E420();
  v123 = v71;
  v76 = v98;
  sub_1BA4A4E78();
  sub_1BA4A4D08();
  sub_1BA02DF60(0);
  sub_1BA02E060();
  sub_1BA3FFBE4(&qword_1EBBEA0F8, sub_1BA02DF60);
  v77 = v99;
  v78 = v102;
  sub_1BA4A5168();
  (*(v100 + 8))(v76, v78);
  sub_1BA3FFBE4(&qword_1EBBEA7B0, sub_1BA02DF24);
  v79 = v103;
  v80 = sub_1BA4A4F98();
  (*(v101 + 8))(v77, v79);
  v123 = v80;
  v81 = v37;
  v122 = sub_1BA2B1C48(v37);
  v82 = v104;
  sub_1BA4A4AB8();
  sub_1BA3FFBE4(&qword_1EBBEA798, sub_1BA02E124);
  v83 = v107;
  v84 = v106;
  sub_1BA4A5038();
  (*(v105 + 8))(v82, v84);
  sub_1B9F0ADF8(0, &qword_1EDC6B5A0);
  v85 = sub_1BA4A7308();
  *&v121[0] = v85;
  v86 = sub_1BA4A72A8();
  v87 = v110;
  (*(*(v86 - 8) + 56))(v110, 1, 1, v86);
  sub_1BA3FFBE4(&qword_1EBBEA7A8, sub_1BA02E1C8);
  sub_1B9F3DC80();
  v88 = v111;
  v89 = v109;
  sub_1BA4A50A8();
  sub_1BA3FFC98(v87, &qword_1EDC6B5B8, MEMORY[0x1E69E8050]);
  (*(v108 + 8))(v83, v89);

  v90 = swift_allocObject();
  *(v90 + 16) = v41;
  *(v90 + 24) = v41;
  sub_1B9F0A534(v124, v121);
  v91 = swift_allocObject();
  *(v91 + 16) = v41;
  *(v91 + 24) = v41;
  *(v91 + 32) = v81;
  sub_1B9F25598(v121, v91 + 40);
  *(v91 + 80) = 256;
  v92 = swift_allocObject();
  *(v92 + 16) = sub_1BA3FFC94;
  *(v92 + 24) = v91;
  sub_1BA3FFBE4(&qword_1EBBEA7B8, sub_1BA02E25C);
  v93 = v39;
  v94 = v81;
  v95 = v113;
  sub_1BA4A4F88();

  (*(v112 + 8))(v88, v95);
  __swift_destroy_boxed_opaque_existential_1(v124);
  return 1;
}

id sub_1BA3FC404()
{
  v2 = sub_1BA4A3EA8();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [v0 activityType];
  _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();

  v8 = sub_1BA4A8108();

  if (v8 > 1)
  {
    v12 = v0;
    sub_1BA4A3E28();
    v13 = sub_1BA4A3E88();
    v14 = sub_1BA4A6F98();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_1B9F07000, v13, v14, "Encountered an activity type that we didn't recognize when migrating to the new NSUserActivity format, assuming it's new and passing along", v15, 2u);
      MEMORY[0x1BFAF43A0](v15, -1, -1);
    }

    (*(v3 + 8))(v6, v2);
    return v12;
  }

  else
  {
    result = sub_1BA3FC600();
    if (!v1)
    {
      v10 = sub_1BA3FC770(result);

      v11 = sub_1BA3FC8F4(v10);

      return v11;
    }
  }

  return result;
}

uint64_t sub_1BA3FC600()
{
  sub_1B9F0ADF8(0, &qword_1EDC6B618);
  v0 = sub_1BA4A36B8();
  if (!v0)
  {
    goto LABEL_8;
  }

  v1 = v0;
  sub_1BA4A7D58();
  if (!*(v1 + 16) || (v2 = sub_1B9FDA8E4(v6), (v3 & 1) == 0))
  {

    sub_1B9FDC768(v6);
LABEL_8:
    v7 = 0u;
    v8 = 0u;
    goto LABEL_9;
  }

  sub_1B9F0AD9C(*(v1 + 56) + 32 * v2, &v7);
  sub_1B9FDC768(v6);

  if (!*(&v8 + 1))
  {
LABEL_9:
    sub_1B9F23224(&v7);
    goto LABEL_10;
  }

  sub_1BA3737D0();
  if (swift_dynamicCast())
  {
    return v6[0];
  }

LABEL_10:
  sub_1BA3734D4();
  swift_allocError();
  *v5 = 0xD000000000000049;
  v5[1] = 0x80000001BA5030D0;
  return swift_willThrow();
}

char *sub_1BA3FC770(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 < 2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v2 = 0;
  v3 = v1 - 1;
  v4 = a1 + 40;
  v5 = MEMORY[0x1E69E7CC0];
  while (1)
  {

    v7 = sub_1BA3FD71C(v6);

    if (!v7)
    {
      break;
    }

    v9 = sub_1BA3FD71C(v8);

    if (!v9)
    {

      break;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v5 = sub_1BA280C6C(0, *(v5 + 2) + 1, 1, v5);
    }

    v11 = *(v5 + 2);
    v10 = *(v5 + 3);
    if (v11 >= v10 >> 1)
    {
      v5 = sub_1BA280C6C((v10 > 1), v11 + 1, 1, v5);
    }

    v2 += 2;
    *(v5 + 2) = v11 + 1;
    v12 = &v5[16 * v11];
    *(v12 + 4) = v7;
    *(v12 + 5) = v9;
    v4 += 16;
    if (v2 >= v3)
    {
      return v5;
    }
  }

  v5 = 0x80000001BA503080;
  sub_1BA3734D4();
  swift_allocError();
  *v13 = 0xD00000000000004ELL;
  v13[1] = 0x80000001BA503080;
  swift_willThrow();
  return v5;
}

uint64_t sub_1BA3FC8F4(uint64_t a1)
{
  v2 = sub_1BA4A35F8();
  v3 = *(v2 - 8);
  v128 = v2;
  v129 = v3;
  MEMORY[0x1EEE9AC00](v2);
  v127 = (&v123 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v123 - v6;
  MEMORY[0x1EEE9AC00](v8);
  v125 = (&v123 - v9);
  MEMORY[0x1EEE9AC00](v10);
  v126 = &v123 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v123 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v123 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v123 - v19;
  v21 = sub_1BA4A3678();
  v131 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v123 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v123 - v25;
  MEMORY[0x1EEE9AC00](v27);
  v132 = &v123 - v28;
  v140 = a1;

  v29 = sub_1BA372E3C();
  if (v29 == 5)
  {

    v137 = 0;
    v138 = 0xE000000000000000;
    sub_1BA4A7DF8();

    v137 = 0xD000000000000017;
    v138 = 0x80000001BA502F30;
    if (*(a1 + 16))
    {
      v31 = 0x6E676F6365726E75;
    }

    else
    {
      v31 = 0x6E756F6620746F4ELL;
    }

    if (*(a1 + 16))
    {
      v32 = 0xEC00000064657A69;
    }

    else
    {
      v32 = 0xE900000000000064;
    }

    MEMORY[0x1BFAF1350](v31, v32);

    v33 = v137;
    v34 = v138;
    sub_1BA3734D4();
    swift_allocError();
    *v35 = v33;
    v35[1] = v34;
    return swift_willThrow();
  }

  v37 = v29;
  v124 = v30;
  v38 = sub_1B9FDB524(MEMORY[0x1E69E7CC0]);
  v139 = v38;
  if (v37 <= 1u)
  {
    if (v37)
    {

      v52 = v131;
      v68 = v132;
      (*(v131 + 104))(v132, *MEMORY[0x1E69A2C60], v21);
      v69 = v128;
      v70 = v129;
      (*(v129 + 104))(v20, *MEMORY[0x1E69A2B98], v128);
      v71 = sub_1BA4A35E8();
      v73 = v72;
      (*(v70 + 8))(v20, v69);
      *&v135 = v71;
      *(&v135 + 1) = v73;
      sub_1BA4A7D58();
      v136 = MEMORY[0x1E69E6530];
      *&v135 = v124;
      sub_1B9F46920(&v135, v134);
      v74 = v139;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v133 = v74;
      sub_1B9FF1AE4(v134, &v137, isUniquelyReferenced_nonNull_native);
      sub_1B9FDC768(&v137);
      v139 = v133;
    }

    else
    {

      v51 = v130;
      sub_1BA3FDB00(v124, v26);
      v52 = v131;
      if (v51)
      {
      }

      v68 = v132;
      (*(v131 + 32))(v132, v26, v21);
    }

    goto LABEL_35;
  }

  v123 = v38;
  if (v37 == 2)
  {

    v53 = v131;
    (*(v131 + 104))(v132, *MEMORY[0x1E69A2C00], v21);
    v54 = *MEMORY[0x1E69A2B88];
    v56 = v128;
    v55 = v129;
    v127 = *(v129 + 104);
    (v127)(v17, v54, v128);
    v57 = sub_1BA4A35E8();
    v59 = v58;
    v129 = *(v55 + 8);
    (v129)(v17, v56);
    *&v135 = v57;
    *(&v135 + 1) = v59;
    sub_1BA4A7D58();
    v60 = v124;
    v61 = v130;
    sub_1BA3FD988(v124);
    if (v61)
    {
      sub_1B9FDC768(&v137);
      (*(v53 + 8))(v132, v21);
    }

    v76 = v62;
    v77 = sub_1B9F0ADF8(0, &qword_1EDC6E360);
    v136 = v77;
    *&v135 = v76;
    sub_1B9F46920(&v135, v134);
    v78 = v139;
    v79 = swift_isUniquelyReferenced_nonNull_native();
    v133 = v78;
    sub_1B9FF1AE4(v134, &v137, v79);
    sub_1B9FDC768(&v137);
    v139 = v133;
    (v127)(v7, *MEMORY[0x1E69A2B98], v56);
    v80 = sub_1BA4A35E8();
    v82 = v81;
    (v129)(v7, v56);
    *&v135 = v80;
    *(&v135 + 1) = v82;
    sub_1BA4A7D58();
    v83 = sub_1BA3736A0(v60);
    if (v83)
    {
      v136 = v77;
LABEL_31:
      *&v135 = v83;
      sub_1B9F46920(&v135, v134);
      v92 = v139;
      v93 = swift_isUniquelyReferenced_nonNull_native();
      v133 = v92;
      sub_1B9FF1AE4(v134, &v137, v93);
      sub_1B9FDC768(&v137);
      v139 = v133;
LABEL_34:
      v52 = v131;
      v68 = v132;
      goto LABEL_35;
    }

LABEL_33:
    sub_1BA0F6614(&v137, v134);
    sub_1B9F23224(v134);
    sub_1B9FDC768(&v137);
    goto LABEL_34;
  }

  v39 = v130;
  v40 = v21;
  if (v37 == 3)
  {

    v42 = v131;
    v41 = v132;
    (*(v131 + 104))(v132, *MEMORY[0x1E69A2C00], v40);
    v43 = *MEMORY[0x1E69A2B88];
    v44 = v129;
    v126 = v40;
    v45 = v128;
    v125 = *(v129 + 104);
    v125(v14, v43, v128);
    v46 = sub_1BA4A35E8();
    v48 = v47;
    v129 = *(v44 + 8);
    (v129)(v14, v45);
    *&v135 = v46;
    *(&v135 + 1) = v48;
    sub_1BA4A7D58();
    v49 = v124;
    sub_1BA3FD988(v124);
    if (v39)
    {
      sub_1B9FDC768(&v137);
      (*(v42 + 8))(v41, v126);
    }

    v21 = v126;
    v84 = v50;
    v85 = sub_1B9F0ADF8(0, &qword_1EDC6E360);
    v136 = v85;
    *&v135 = v84;
    sub_1B9F46920(&v135, v134);
    v86 = v139;
    v87 = swift_isUniquelyReferenced_nonNull_native();
    v133 = v86;
    sub_1B9FF1AE4(v134, &v137, v87);
    sub_1B9FDC768(&v137);
    v139 = v133;
    v88 = v127;
    v125(v127, *MEMORY[0x1E69A2B98], v45);
    v89 = sub_1BA4A35E8();
    v91 = v90;
    (v129)(v88, v45);
    *&v135 = v89;
    *(&v135 + 1) = v91;
    sub_1BA4A7D58();
    v83 = sub_1BA3736A0(v49);
    if (v83)
    {
      v136 = v85;
      goto LABEL_31;
    }

    goto LABEL_33;
  }

  v63 = sub_1BA372E3C();
  v65 = v64;

  v66 = v129;
  if (v63 == 5)
  {
    goto LABEL_44;
  }

  if (v63 <= 1u)
  {
    goto LABEL_40;
  }

  if (v63 == 2)
  {
    v67 = "_HealthPushCategoryActivityKey";
  }

  else
  {
    if (v63 != 3)
    {
      goto LABEL_40;
    }

    v67 = "PushDataActivityKey";
  }

  if ((v67 | 0x8000000000000000) != 0x80000001BA4E1310)
  {
LABEL_40:
    v94 = sub_1BA4A8338();

    if (v94)
    {
      goto LABEL_41;
    }

LABEL_44:

    sub_1BA3734D4();
    swift_allocError();
    *v96 = 0xD000000000000076;
    v96[1] = 0x80000001BA502F50;
    return swift_willThrow();
  }

LABEL_41:
  if (v124 == 2)
  {
    v127 = v65;
    v95 = MEMORY[0x1E69A2C10];
  }

  else
  {
    if (v124 != 1)
    {
      v137 = 0;
      v138 = 0xE000000000000000;
      v106 = v124;
      sub_1BA4A7DF8();
      MEMORY[0x1BFAF1350](0xD000000000000042, 0x80000001BA502FD0);
      *&v135 = v106;
      v107 = sub_1BA4A82D8();
      MEMORY[0x1BFAF1350](v107);

      v108 = v137;
      v109 = v138;
      sub_1BA3734D4();
      swift_allocError();
      *v110 = v108;
      v110[1] = v109;
      swift_willThrow();
    }

    v127 = v65;
    v95 = MEMORY[0x1E69A2C08];
  }

  v97 = v131;
  (*(v131 + 104))(v23, *v95, v40);
  (*(v97 + 32))(v132, v23, v40);
  v98 = *MEMORY[0x1E69A2B88];
  v99 = v126;
  v100 = v128;
  v124 = *(v66 + 104);
  v124(v126, v98, v128);
  v101 = sub_1BA4A35E8();
  v103 = v102;
  v129 = *(v66 + 8);
  (v129)(v99, v100);
  *&v135 = v101;
  *(&v135 + 1) = v103;
  sub_1BA4A7D58();
  v104 = v127;
  sub_1BA3FD988(v127);
  if (v39)
  {
    sub_1B9FDC768(&v137);
    (*(v97 + 8))(v132, v40);
  }

  v111 = v105;
  v126 = v40;
  v112 = sub_1B9F0ADF8(0, &qword_1EDC6E360);
  v136 = v112;
  *&v135 = v111;
  sub_1B9F46920(&v135, v134);
  v113 = v139;
  v114 = swift_isUniquelyReferenced_nonNull_native();
  v133 = v113;
  sub_1B9FF1AE4(v134, &v137, v114);
  sub_1B9FDC768(&v137);
  v139 = v133;
  v115 = v125;
  v116 = v128;
  v124(v125, *MEMORY[0x1E69A2B98], v128);
  v117 = sub_1BA4A35E8();
  v119 = v118;
  (v129)(v115, v116);
  *&v135 = v117;
  *(&v135 + 1) = v119;
  sub_1BA4A7D58();
  v120 = sub_1BA3736A0(v104);
  if (v120)
  {
    v136 = v112;
    *&v135 = v120;
    sub_1B9F46920(&v135, v134);
    v121 = v139;
    v122 = swift_isUniquelyReferenced_nonNull_native();
    v133 = v121;
    sub_1B9FF1AE4(v134, &v137, v122);
    sub_1B9FDC768(&v137);
    v139 = v133;
  }

  else
  {
    sub_1BA0F6614(&v137, v134);
    sub_1B9F23224(v134);
    sub_1B9FDC768(&v137);
  }

  v52 = v131;
  v68 = v132;
  v21 = v126;
LABEL_35:
  sub_1BA4A3658();
  sub_1B9F0ADF8(0, &qword_1EDC6B618);
  sub_1BA4A36C8();
  (*(v52 + 8))(v68, v21);
  return v137;
}

unint64_t sub_1BA3FD71C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1BA3FFD44(0, &qword_1EDC5DFE0, MEMORY[0x1E69E6530], MEMORY[0x1E69E6EC8]);
    v2 = sub_1BA4A8098();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v10 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v10);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v11 = __clz(__rbit64(v5)) | (v10 << 6);
        v12 = (*(a1 + 48) + 16 * v11);
        v13 = *v12;
        v14 = v12[1];
        sub_1B9F0AD9C(*(a1 + 56) + 32 * v11, v24);
        *&v23 = v13;
        *(&v23 + 1) = v14;
        v21[2] = v23;
        v22[0] = v24[0];
        v22[1] = v24[1];
        v15 = v23;
        sub_1B9F46920(v22, v21);

        if (!swift_dynamicCast())
        {
          break;
        }

        v5 &= v5 - 1;
        result = sub_1B9F24A34(v15, *(&v15 + 1));
        if (v16)
        {
          *(v2[6] + 16 * result) = v15;
          v9 = result;

          *(v2[7] + 8 * v9) = v20;
          v8 = v10;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_23;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          *(v2[6] + 16 * result) = v15;
          *(v2[7] + 8 * result) = v20;
          v17 = v2[2];
          v18 = __OFADD__(v17, 1);
          v19 = v17 + 1;
          if (v18)
          {
            goto LABEL_24;
          }

          v2[2] = v19;
          v8 = v10;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v10 = v8;
      }

      return 0;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

void sub_1BA3FD988(uint64_t a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x1E696C1C0]) init];
  v3 = [objc_opt_self() sharedInstanceForHealthStore_];
  if (v3)
  {
    v4 = v3;
    v5 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
    v6 = [v4 displayTypeWithIdentifier_];

    if (v6)
    {
      v7 = [v6 objectType];
      v8 = [v7 code];

      [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
      return;
    }
  }

  sub_1BA3734D4();
  swift_allocError();
  *v9 = 0xD000000000000014;
  v9[1] = 0x80000001BA503060;
  swift_willThrow();
}

uint64_t sub_1BA3FDB00@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  if (a1 > 1)
  {
    if (a1 == 2)
    {
      v3 = MEMORY[0x1E69A2C18];
      goto LABEL_11;
    }

    if (a1 == 3)
    {
      v3 = MEMORY[0x1E69A2C70];
      goto LABEL_11;
    }

LABEL_8:
    sub_1BA3734D4();
    swift_allocError();
    *v4 = 0xD000000000000033;
    v4[1] = 0x80000001BA503020;
    return swift_willThrow();
  }

  if (!a1)
  {
    v3 = MEMORY[0x1E69A2C58];
    goto LABEL_11;
  }

  if (a1 != 1)
  {
    goto LABEL_8;
  }

  v3 = MEMORY[0x1E69A2BF0];
LABEL_11:
  v6 = *v3;
  v7 = sub_1BA4A3678();
  return (*(*(v7 - 8) + 104))(a2, v6, v7);
}

uint64_t static UserActivityRouter.handleUserActivity(rootViewController:userActivity:)(uint64_t *a1, void *a2)
{
  v3 = a1[1];
  v42 = *a1;
  v39 = v3;
  v4 = a1[3];
  v40 = a1[2];
  v41 = v4;
  v43 = a1[4];
  sub_1BA3FFB10(0, &qword_1EBBED070, MEMORY[0x1E69A2C78]);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v38 - v9;
  v11 = sub_1BA4A3678();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v38 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v38 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v38 - v18;
  v20 = sub_1BA4A70A8();
  if (v20)
  {
    v21 = v20;
    if ([v20 type] == 3)
    {
      v22 = v42;
      ObjectType = swift_getObjectType();
      v44 = v22;
      (*(v12 + 104))(v19, *MEMORY[0x1E69A2C48], v11);
      v24 = v43;
      (*(v43 + 8))(v19, ObjectType, v43);
      (*(v12 + 8))(v19, v11);
      v44 = v22;
      v25 = (*(v24 + 24))(ObjectType, v24);
      [v25 restoreUserActivityState_];

      v26 = 1;
      return v26 & 1;
    }

    if ([v21 type] == 1)
    {
    }

    else
    {
      *&v45 = v42;
      *(&v45 + 1) = v39;
      v46 = v40;
      v47 = v41;
      v48 = v43;
      v27 = sub_1BA32FD64(a2, &v45, v21);

      if (v27)
      {
        v26 = 1;
        return v26 & 1;
      }
    }
  }

  v28 = [a2 activityType];
  _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();

  sub_1BA4A3688();
  v29 = *(v12 + 48);
  if (v29(v10, 1, v11) == 1)
  {
    sub_1BA3FFC98(v10, &qword_1EBBED070, MEMORY[0x1E69A2C78]);
    v30 = sub_1BA3FE69C();
    if (v30)
    {
      v31 = v30;
      sub_1B9F0ADF8(0, &qword_1EDC6B618);
      v32 = sub_1BA4A36D8();

      v33 = [v32 activityType];
      _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();

      sub_1BA4A3688();
      if (v29(v7, 1, v11) != 1)
      {
        v36 = v38;
        (*(v12 + 32))(v38, v7, v11);
        *&v53 = v42;
        *(&v53 + 1) = v39;
        v54 = v40;
        v55 = v41;
        v56 = v43;
        v26 = sub_1BA3FE464(&v53, v32, v36);

        (*(v12 + 8))(v36, v11);
        return v26 & 1;
      }

      sub_1BA3FFC98(v7, &qword_1EBBED070, MEMORY[0x1E69A2C78]);
    }

    sub_1B9F0ADF8(0, &qword_1EDC6B618);
    v34 = sub_1BA4A36D8();
    v57[0] = v42;
    v57[1] = v39;
    v57[2] = v40;
    v57[3] = v41;
    v57[4] = v43;
    v26 = sub_1BA3FE8A0(v57, v34);
  }

  else
  {
    (*(v12 + 32))(v16, v10, v11);
    sub_1B9F0ADF8(0, &qword_1EDC6B618);
    v35 = sub_1BA4A36D8();
    *&v49 = v42;
    *(&v49 + 1) = v39;
    v50 = v40;
    v51 = v41;
    v52 = v43;
    v26 = sub_1BA3FE464(&v49, v35, v16);

    (*(v12 + 8))(v16, v11);
  }

  return v26 & 1;
}

uint64_t sub_1BA3FE204@<X0>(uint64_t a1@<X8>)
{
  sub_1BA3FFB10(0, &qword_1EBBF2338, MEMORY[0x1E69681B8]);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v17 - v3;
  v5 = sub_1BA4A10B8();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v17 - v10;
  sub_1BA4A1028();
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_1BA3FFC98(v4, &qword_1EBBF2338, MEMORY[0x1E69681B8]);
    v12 = sub_1BA4A15D8();
    return (*(*(v12 - 8) + 56))(a1, 1, 1, v12);
  }

  else
  {
    (*(v6 + 32))(v11, v4, v5);
    sub_1BA4A10A8();
    sub_1BA4A1088();
    sub_1BA4A1098();
    v14 = sub_1BA4A1048();
    MEMORY[0x1BFAEBA90](v14);
    v15 = sub_1BA4A1068();
    MEMORY[0x1BFAEBAB0](v15);
    sub_1BA4A1038();
    v16 = *(v6 + 8);
    v16(v8, v5);
    return (v16)(v11, v5);
  }
}

uint64_t sub_1BA3FE464(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  v21 = a1[1];
  v22 = v5;
  v6 = *(a1 + 4);
  v7 = sub_1BA4A3678();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v11, a3, v7, v9);
  v12 = (*(v8 + 88))(v11, v7);
  if (v12 != *MEMORY[0x1E69A2C28] && v12 != *MEMORY[0x1E69A2C70])
  {
    if (v12 == *MEMORY[0x1E69A2C50])
    {
      type metadata accessor for PluginDeepLinkRouter();
      inited = swift_initStackObject();
      v18 = v21;
      v17 = v22;
      *(inited + 16) = v22;
      *(inited + 32) = v18;
      *(inited + 48) = v6;
      v19 = v17;
      PluginDeepLinkRouter.launchPluginFromNSUA(activity:)(a2);
      swift_setDeallocating();

      return 1;
    }

    if (v12 != *MEMORY[0x1E69A2C18])
    {
      [v22 restoreUserActivityState_];
      (*(v8 + 8))(v11, v7);
      return 1;
    }
  }

  ObjectType = swift_getObjectType();
  v23 = v22;
  (*(v6 + 8))(a3, ObjectType, v6);
  v23 = v22;
  v15 = (*(v6 + 24))(ObjectType, v6);
  _s18HealthExperienceUI21ProfileDeepLinkRouterV07restoreD8Activity04userI024presentingViewControllerySo06NSUserI0C_So06UIViewM0CtFZ_0(a2, v15);

  return 1;
}

id sub_1BA3FE69C()
{
  v0 = sub_1BA4A3EA8();
  MEMORY[0x1EEE9AC00](v0);
  return sub_1BA3FC404();
}

uint64_t sub_1BA3FE8A0(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  v136 = *a1;
  v129 = v3;
  v4 = *(a1 + 24);
  v130 = *(a1 + 16);
  v131 = v4;
  v137 = *(a1 + 32);
  v134 = sub_1BA4A3678();
  v127 = *(v134 - 1);
  MEMORY[0x1EEE9AC00](v134);
  v6 = &v118 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v125 = sub_1BA4A3878();
  v124 = *(v125 - 8);
  MEMORY[0x1EEE9AC00](v125);
  v123 = &v118 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v121 = sub_1BA4A35A8();
  v120 = *(v121 - 8);
  MEMORY[0x1EEE9AC00](v121);
  v119 = &v118 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA3FFB10(0, &qword_1EDC6ACC0, MEMORY[0x1E69A2D48]);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v138 = &v118 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v141 = &v118 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v146 = &v118 - v14;
  v139 = sub_1BA4A15D8();
  v15 = *(v139 - 8);
  MEMORY[0x1EEE9AC00](v139);
  v133 = &v118 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v118 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v128 = &v118 - v21;
  sub_1BA3FFB10(0, &qword_1EDC6AE90, MEMORY[0x1E6968FB0]);
  v135 = v22;
  MEMORY[0x1EEE9AC00](v22);
  v126 = &v118 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v118 - v25;
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v118 - v28;
  MEMORY[0x1EEE9AC00](v30);
  v132 = &v118 - v31;
  v145 = sub_1BA4A3EA8();
  v144 = *(v145 - 8);
  MEMORY[0x1EEE9AC00](v145);
  v140 = &v118 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = MEMORY[0x1EEE9AC00](v33);
  v36 = &v118 - v35;
  v37 = a2;
  v142 = [a2 activityType];
  v38 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  v40 = v39;
  v41 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  v143 = v40;
  if (v41 == v38 && v42 == v40)
  {

    goto LABEL_5;
  }

  v43 = sub_1BA4A8338();

  if ((v43 & 1) == 0)
  {

    v55 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    v57 = v143;
    if (v55 != v38 || v56 != v143)
    {
      v103 = sub_1BA4A8338();

      if (v103)
      {
        goto LABEL_29;
      }

      if (_sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0() != v38 || v114 != v57)
      {
        v115 = sub_1BA4A8338();

        v91 = 0;
        if ((v115 & 1) == 0)
        {
          return v91 & 1;
        }

        goto LABEL_30;
      }
    }

LABEL_29:

LABEL_30:
    v104 = v136;
    ObjectType = swift_getObjectType();
    v151 = v104;
    v106 = v127;
    v107 = v134;
    (*(v127 + 104))(v6, *MEMORY[0x1E69A2C48], v134);
    v108 = v137;
    (v137)[1](v6, ObjectType, v137);
    (*(v106 + 8))(v6, v107);
    v151 = v104;
    v109 = (v108[3])(ObjectType, v108);
    [v109 restoreUserActivityState_];

    goto LABEL_31;
  }

LABEL_5:
  sub_1BA4A3DD8();
  v44 = v37;
  v45 = sub_1BA4A3E88();
  v46 = sub_1BA4A6FC8();

  v47 = os_log_type_enabled(v45, v46);
  v134 = v44;
  if (v47)
  {
    v48 = swift_slowAlloc();
    v127 = swift_slowAlloc();
    v151 = v127;
    *v48 = 136315394;
    *(v48 + 4) = sub_1B9F0B82C(0xD000000000000012, 0x80000001BA4D9DB0, &v151);
    *(v48 + 12) = 2080;
    v49 = [v44 webpageURL];
    v122 = v19;
    if (v49)
    {
      v50 = v49;
      sub_1BA4A1588();

      v51 = 0;
    }

    else
    {
      v51 = 1;
    }

    v53 = v15;
    v58 = *(v15 + 56);
    v54 = v139;
    v58(v26, v51, 1, v139);
    sub_1BA12BCA4(v26, v29);
    if ((*(v53 + 48))(v29, 1, v54))
    {
      sub_1BA3FFC98(v29, &qword_1EDC6AE90, MEMORY[0x1E6968FB0]);
      v58(v132, 1, 1, v54);
    }

    else
    {
      v59 = v128;
      (*(v53 + 16))(v128, v29, v54);
      sub_1BA3FFC98(v29, &qword_1EDC6AE90, MEMORY[0x1E6968FB0]);
      sub_1BA3FE204(v132);
      (*(v53 + 8))(v59, v54);
    }

    v19 = v122;
    v60 = sub_1BA4A6808();
    v62 = sub_1B9F0B82C(v60, v61, &v151);

    *(v48 + 14) = v62;
    _os_log_impl(&dword_1B9F07000, v45, v46, "[%s] Resolving url %s", v48, 0x16u);
    v63 = v127;
    swift_arrayDestroy();
    MEMORY[0x1BFAF43A0](v63, -1, -1);
    MEMORY[0x1BFAF43A0](v48, -1, -1);

    v52 = *(v144 + 8);
    v52(v36, v145);
  }

  else
  {

    v52 = *(v144 + 8);
    v52(v36, v145);
    v53 = v15;
    v54 = v139;
  }

  v64 = v134;
  v65 = [v134 webpageURL];
  v66 = v141;
  v67 = v140;
  if (v65)
  {
    v68 = v65;

    sub_1BA4A1588();
    v69 = v146;
    sub_1BA4A3538();
    sub_1BA3FFB64(v69, v66);
    v70 = sub_1BA4A3898();
    v71 = *(v70 - 8);
    if ((*(v71 + 48))(v66, 1, v70) == 1)
    {
LABEL_19:
      sub_1BA4A3DD8();
      v72 = v133;
      (*(v53 + 16))(v133, v19, v54);
      v73 = sub_1BA4A3E88();
      v74 = v19;
      v75 = v54;
      v76 = sub_1BA4A6FC8();
      if (os_log_type_enabled(v73, v76))
      {
        v77 = swift_slowAlloc();
        v78 = swift_slowAlloc();
        v143 = v52;
        v79 = v78;
        v151 = v78;
        *v77 = 136315394;
        *(v77 + 4) = sub_1B9F0B82C(0xD000000000000012, 0x80000001BA4D9DB0, &v151);
        *(v77 + 12) = 2080;
        v122 = v74;
        sub_1BA3FE204(v126);
        v80 = sub_1BA4A6808();
        v82 = v81;
        v83 = *(v53 + 8);
        v83(v72, v75);
        v84 = sub_1B9F0B82C(v80, v82, &v151);

        *(v77 + 14) = v84;
        _os_log_impl(&dword_1B9F07000, v73, v76, "[%s] Could not resolve URL type %s", v77, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1BFAF43A0](v79, -1, -1);
        MEMORY[0x1BFAF43A0](v77, -1, -1);

        v143(v140, v145);
        sub_1BA3FFC98(v146, &qword_1EDC6ACC0, MEMORY[0x1E69A2D48]);
        v83(v122, v75);
        v66 = v141;
      }

      else
      {

        v92 = *(v53 + 8);
        v92(v72, v75);
        v52(v67, v145);
        sub_1BA3FFC98(v146, &qword_1EDC6ACC0, MEMORY[0x1E69A2D48]);
        v92(v74, v75);
      }

      sub_1BA3FFC98(v66, &qword_1EDC6ACC0, MEMORY[0x1E69A2D48]);
      v91 = 0;
      return v91 & 1;
    }

    v85 = v138;
    sub_1BA3FFB64(v66, v138);
    v86 = (*(v71 + 88))(v85, v70);
    if (v86 == *MEMORY[0x1E69A2D28])
    {
      (*(v53 + 16))(v128, v19, v54);
      v87 = v123;
      sub_1BA4A3828();
      v88 = sub_1BA4A37F8();
      v89 = v54;
      if (v88)
      {
        v90 = v88;
        v149[0] = v136;
        v149[1] = v129;
        v149[2] = v130;
        v149[3] = v131;
        v149[4] = v137;
        v91 = static SharingProfileDeepLinkRouter.handleURL(_:rootViewController:profileIdentifier:)(v19, v149, v88);
      }

      else
      {
        v150[0] = v136;
        v150[1] = v129;
        v150[2] = v130;
        v150[3] = v131;
        v150[4] = v137;
        v91 = sub_1BA3F7B90(v19, 0, v150);
      }

      (*(v124 + 8))(v87, v125);
      v111 = MEMORY[0x1E69A2D48];
      sub_1BA3FFC98(v146, &qword_1EDC6ACC0, MEMORY[0x1E69A2D48]);
      (*(v53 + 8))(v19, v89);
      (*(v71 + 8))(v138, v70);
      v112 = v66;
      v113 = v111;
LABEL_43:
      sub_1BA3FFC98(v112, &qword_1EDC6ACC0, v113);
      return v91 & 1;
    }

    if (v86 != *MEMORY[0x1E69A2D40])
    {
      if (v86 == *MEMORY[0x1E69A2CE0])
      {
        v147[0] = v136;
        v147[1] = v129;
        v147[2] = v130;
        v147[3] = v131;
        v147[4] = v137;
        v110 = sub_1BA3FB398(v19, v147);
      }

      else
      {
        if (v86 != *MEMORY[0x1E69A2CC0])
        {
          (*(v71 + 8))(v138, v70);
          goto LABEL_19;
        }

        v148[0] = v136;
        v148[1] = v129;
        v148[2] = v130;
        v148[3] = v131;
        v148[4] = v137;
        v110 = sub_1BA3F7B90(v19, 0, v148);
      }

      v91 = v110;
      v116 = MEMORY[0x1E69A2D48];
      sub_1BA3FFC98(v146, &qword_1EDC6ACC0, MEMORY[0x1E69A2D48]);
      (*(v53 + 8))(v19, v54);
      v112 = v66;
      v113 = v116;
      goto LABEL_43;
    }

    v93 = v138;
    (*(v71 + 96))(v138, v70);
    v94 = v120;
    v95 = v119;
    v96 = v121;
    (*(v120 + 32))(v119, v93, v121);
    type metadata accessor for PluginDeepLinkRouter();
    inited = swift_initStackObject();
    v98 = v136;
    v99 = v129;
    *(inited + 16) = v136;
    *(inited + 24) = v99;
    v100 = v131;
    *(inited + 32) = v130;
    *(inited + 40) = v100;
    *(inited + 48) = v137;
    v101 = v98;
    PluginDeepLinkRouter.launchPluginFromWebBrowsingActivity(activity:pluginType:)(v64, v95);
    swift_setDeallocating();

    (*(v94 + 8))(v95, v96);
    v102 = MEMORY[0x1E69A2D48];
    sub_1BA3FFC98(v146, &qword_1EDC6ACC0, MEMORY[0x1E69A2D48]);
    (*(v53 + 8))(v19, v54);
    sub_1BA3FFC98(v66, &qword_1EDC6ACC0, v102);
LABEL_31:
    v91 = 1;
    return v91 & 1;
  }

  result = sub_1BA4A8018();
  __break(1u);
  return result;
}

void sub_1BA3FFB10(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t sub_1BA3FFB64(uint64_t a1, uint64_t a2)
{
  sub_1BA3FFB10(0, &qword_1EDC6ACC0, MEMORY[0x1E69A2D48]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BA3FFBE4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1BA3FFC2C(uint64_t a1)
{
  sub_1BA02E3B8();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BA3FFC98(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_1BA3FFB10(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_1BA3FFCF4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1BA3FFD44(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, void, uint64_t, void))
{
  if (!*a2)
  {
    v5 = a4(0, MEMORY[0x1E69E6158], a3, MEMORY[0x1E69E6168]);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t objectdestroy_6Tm()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 5));

  return MEMORY[0x1EEE6BDD0](v0, 82, 7);
}

char *sub_1BA3FFE3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [objc_allocWithZone(MEMORY[0x1E69DCFD0]) init];
  *&v3[OBJC_IVAR____TtC18HealthExperienceUI19SwitchTableViewCell_toggleSwitch] = v6;
  if (a3)
  {
    v7 = sub_1BA4A6758();
  }

  else
  {
    v7 = 0;
  }

  v11.receiver = v3;
  v11.super_class = type metadata accessor for SwitchTableViewCell();
  v8 = objc_msgSendSuper2(&v11, sel_initWithStyle_reuseIdentifier_, a1, v7);

  v9 = v8;
  [v9 setSelectionStyle_];
  [v9 setAccessoryView_];

  return v9;
}

id sub_1BA3FFFCC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SwitchTableViewCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1BA400100()
{
  v1 = v0;
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  v2 = sub_1BA4A1318();
  v4 = v3;
  v5 = objc_opt_self();
  v6 = *MEMORY[0x1E69DDCF8];
  v7 = [v5 preferredFontForTextStyle_];
  [v7 pointSize];
  v9 = v8;

  v10 = [objc_opt_self() configurationWithPointSize_];
  v11 = sub_1BA4A6758();
  v12 = [objc_opt_self() systemImageNamed_];

  v61 = v10;
  if (v12)
  {
    v13 = [v12 imageWithConfiguration_];

    v14 = [objc_opt_self() systemBlueColor];
    v15 = [v13 imageWithTintColor:v14 renderingMode:1];
  }

  else
  {
    v15 = 0;
  }

  v16 = [objc_allocWithZone(MEMORY[0x1E69DB7F0]) init];
  v60 = v15;
  [v16 setImage_];
  sub_1B9F0ADF8(0, &qword_1EDC6B520);
  v59 = v16;
  v17 = [swift_getObjCClassFromMetadata() attributedStringWithAttachment_];
  MEMORY[0x1BFAF1350](v2, v4);

  v18 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
  v19 = sub_1BA4A6758();

  v20 = [v18 initWithString_];

  [v17 appendAttributedString_];
  type metadata accessor for MultilineButton();
  v21 = [swift_getObjCClassFromMetadata() buttonWithType_];
  [v21 setTranslatesAutoresizingMaskIntoConstraints_];
  v22 = v21;
  [v22 setAttributedTitle:v17 forState:0];
  v23 = [v22 titleLabel];
  if (v23)
  {
    v24 = v23;
    v25 = [v5 preferredFontForTextStyle_];
    [v24 setFont_];
  }

  v26 = [v22 titleLabel];

  if (v26)
  {
    [v26 setNumberOfLines_];
  }

  [v22 setContentHorizontalAlignment_];
  [v22 addTarget:v1 action:sel_didTapLearnMore_ forControlEvents:64];
  v27 = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  [v27 setTranslatesAutoresizingMaskIntoConstraints_];
  [v27 addSubview_];
  v28 = [v1 contentView];
  [v28 addSubview_];

  v58 = objc_opt_self();
  sub_1B9F109F8();
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_1BA4BBC90;
  v30 = [v22 topAnchor];
  v31 = [v27 topAnchor];
  v32 = [v30 constraintEqualToAnchor_];

  *(v29 + 32) = v32;
  v33 = [v27 bottomAnchor];
  v34 = [v22 bottomAnchor];
  v35 = [v33 &selRef:v34 numberWithInteger:? + 5];

  *(v29 + 40) = v35;
  v36 = [v22 leadingAnchor];
  v37 = [v27 &selRef__totalDistance + 1];
  v38 = [v36 &selRef:v37 numberWithInteger:? + 5];

  *(v29 + 48) = v38;
  v39 = [v27 trailingAnchor];
  v40 = [v22 &selRef_cloudSyncObserverSyncCompleted_ + 4];

  v41 = [v39 constraintGreaterThanOrEqualToAnchor_];
  *(v29 + 56) = v41;
  v42 = [v27 topAnchor];
  v43 = [v1 contentView];
  v44 = [v43 topAnchor];

  v45 = [v42 constraintEqualToAnchor_];
  *(v29 + 64) = v45;
  v46 = [v27 bottomAnchor];
  v47 = [v1 contentView];
  v48 = [v47 bottomAnchor];

  v49 = [v46 constraintEqualToAnchor_];
  *(v29 + 72) = v49;
  v50 = [v27 leadingAnchor];
  v51 = [v1 contentView];
  v52 = [v51 leadingAnchor];

  v53 = [v50 constraintEqualToAnchor_];
  *(v29 + 80) = v53;
  v54 = [v27 trailingAnchor];
  v55 = [v1 contentView];
  v56 = [v55 trailingAnchor];

  v57 = [v54 constraintEqualToAnchor_];
  *(v29 + 88) = v57;
  sub_1B9F0ADF8(0, &qword_1EDC6B570);
  v62 = sub_1BA4A6AE8();

  [v58 activateConstraints_];
}

id sub_1BA400A34()
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
  v15 = &v0[OBJC_IVAR____TtC18HealthExperienceUI48EmergencyAccessBuddyShareMedicalIDViewController_flow];
  v16 = v0[OBJC_IVAR____TtC18HealthExperienceUI48EmergencyAccessBuddyShareMedicalIDViewController_flow + 8];
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
    aBlock[3] = &block_descriptor_30_1;
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

void sub_1BA400E78()
{
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  sub_1BA4A1318();
  v1 = [objc_opt_self() boldButton];
  v2 = sub_1BA4A6758();

  [v1 setTitle:v2 forState:0];

  [v1 addTarget:v0 action:sel_didTapShare_ forControlEvents:64];
  sub_1BA4A1318();
  v3 = [objc_opt_self() linkButton];
  v4 = sub_1BA4A6758();

  [v3 setTitle:v4 forState:0];

  [v3 addTarget:v0 action:sel_didTapDontShare_ forControlEvents:64];
  v5 = [v0 buttonTray];
  v6 = v1;
  [v5 addButton_];

  v7 = [v0 buttonTray];
  [v7 addButton_];

  v8 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI48EmergencyAccessBuddyShareMedicalIDViewController_shareButton];
  *&v0[OBJC_IVAR____TtC18HealthExperienceUI48EmergencyAccessBuddyShareMedicalIDViewController_shareButton] = v6;

  v9 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI48EmergencyAccessBuddyShareMedicalIDViewController_dontShareButton];
  *&v0[OBJC_IVAR____TtC18HealthExperienceUI48EmergencyAccessBuddyShareMedicalIDViewController_dontShareButton] = v3;
}

uint64_t sub_1BA40110C(char a1)
{
  ObjectType = swift_getObjectType();
  v4 = *(v1 + OBJC_IVAR____TtC18HealthExperienceUI48EmergencyAccessBuddyShareMedicalIDViewController_shareButton);
  v5 = *(v1 + OBJC_IVAR____TtC18HealthExperienceUI48EmergencyAccessBuddyShareMedicalIDViewController_dontShareButton);
  if (v4)
  {
    v6 = v5;
    [v4 setEnabled_];
    if (!v5)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v13 = v5;
  if (v5)
  {
LABEL_3:
    [v5 setEnabled_];
  }

LABEL_4:
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v8 = sub_1BA4A2958();
  v9 = swift_allocObject();
  v10 = a1 & 1;
  *(v9 + 16) = a1 & 1;
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  *(v11 + 24) = sub_1BA4022E4;
  *(v11 + 32) = v7;
  *(v11 + 40) = ObjectType;

  sub_1BA2058E0(sub_1BA4022EC, v9, sub_1BA4022FC, v11);
}

uint64_t sub_1BA40129C(void *a1, uint64_t a2)
{
  v4 = sub_1BA4A6478();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1BA4A64C8();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = aBlock - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v13 = [a1 isDisabled] ^ 1;
  }

  else
  {
    v13 = 0;
  }

  sub_1B9F0ADF8(0, &qword_1EDC6B5A0);
  v14 = sub_1BA4A7308();
  v15 = swift_allocObject();
  *(v15 + 16) = a2;
  *(v15 + 24) = v13;
  aBlock[4] = sub_1BA402310;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B9F0B040;
  aBlock[3] = &block_descriptor_113;
  v16 = _Block_copy(aBlock);

  sub_1BA4A64A8();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1B9F0AF18(&qword_1EDC5E8E0, MEMORY[0x1E69E7F60]);
  sub_1B9F3F378();
  sub_1B9F0AF18(&qword_1EDC5E6A0, sub_1B9F3F378);
  sub_1BA4A7C38();
  MEMORY[0x1BFAF1D50](0, v12, v7, v16);
  _Block_release(v16);

  (*(v5 + 8))(v7, v4);
  return (*(v9 + 8))(v12, v8);
}

void sub_1BA4015B0(uint64_t a1, char a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_6;
  }

  v4 = Strong;
  v5 = *(Strong + OBJC_IVAR____TtC18HealthExperienceUI48EmergencyAccessBuddyShareMedicalIDViewController_shareButton);
  v6 = *(Strong + OBJC_IVAR____TtC18HealthExperienceUI48EmergencyAccessBuddyShareMedicalIDViewController_dontShareButton);
  if (!v5)
  {
    v10 = v6;
    if (!v6)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  v7 = v6;
  [v5 setEnabled_];
  if (v6)
  {
LABEL_4:
    [v6 setEnabled_];
  }

LABEL_5:

LABEL_6:
  swift_beginAccess();
  v8 = swift_unknownObjectWeakLoadStrong();
  if (v8)
  {
    v9 = v8;
    sub_1BA401A64(a2 & 1);
  }
}

uint64_t sub_1BA40169C(void *a1, char a2, int a3, uint64_t (*a4)(void), uint64_t a5, void *a6)
{
  v44 = a5;
  v11 = sub_1BA4A3EA8();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v41 - v16;
  if (a2)
  {
    sub_1BA4A3E28();
    v18 = a1;
    v19 = sub_1BA4A3E88();
    v20 = sub_1BA4A6FB8();
    sub_1BA336520(a1);
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v43 = v12;
      v22 = a3;
      v23 = v21;
      v24 = swift_slowAlloc();
      v45 = v24;
      v46 = a6;
      *v23 = 136446723;
      swift_getMetatypeMetadata();
      v25 = sub_1BA4A6808();
      v42 = a4;
      v27 = sub_1B9F0B82C(v25, v26, &v45);

      *(v23 + 4) = v27;
      *(v23 + 12) = 1025;
      *(v23 + 14) = v22 & 1;
      *(v23 + 18) = 2082;
      v46 = a1;
      v28 = a1;
      sub_1B9FED358();
      v29 = sub_1BA4A6808();
      v31 = sub_1B9F0B82C(v29, v30, &v45);
      a4 = v42;

      *(v23 + 20) = v31;
      _os_log_impl(&dword_1B9F07000, v19, v20, "[%{public}s]: Failed to update medical ID to share state %{BOOL,private}d: %{public}s", v23, 0x1Cu);
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v24, -1, -1);
      MEMORY[0x1BFAF43A0](v23, -1, -1);

      (*(v43 + 8))(v14, v11);
    }

    else
    {

      (*(v12 + 8))(v14, v11);
    }

    a1 = 0;
  }

  else
  {
    LODWORD(v42) = a3;
    v43 = v12;
    sub_1BA4A3E28();
    v32 = sub_1BA4A3E88();
    v33 = sub_1BA4A6FC8();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v45 = v35;
      v46 = a6;
      *v34 = 136446467;
      swift_getMetatypeMetadata();
      v36 = sub_1BA4A6808();
      v38 = a4;
      v39 = sub_1B9F0B82C(v36, v37, &v45);

      *(v34 + 4) = v39;
      a4 = v38;
      *(v34 + 12) = 1025;
      *(v34 + 14) = v42 & 1;
      _os_log_impl(&dword_1B9F07000, v32, v33, "[%{public}s]: Updated medical ID to share state: %{BOOL,private}d", v34, 0x12u);
      __swift_destroy_boxed_opaque_existential_1(v35);
      MEMORY[0x1BFAF43A0](v35, -1, -1);
      MEMORY[0x1BFAF43A0](v34, -1, -1);
    }

    (*(v43 + 8))(v17, v11);
  }

  return a4(a1);
}

void sub_1BA401A64(char a1)
{
  v2 = v1;
  swift_getObjectType();
  v4 = sub_1BA4A3EA8();
  v44 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for EmergencyAccessUserStatus();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v43 - v11;
  v13 = &v2[OBJC_IVAR____TtC18HealthExperienceUI48EmergencyAccessBuddyShareMedicalIDViewController_flow];
  v14 = v2[OBJC_IVAR____TtC18HealthExperienceUI48EmergencyAccessBuddyShareMedicalIDViewController_flow + 8];
  if (v14 == 1)
  {
LABEL_4:
    sub_1BA4A3DD8();
    v16 = sub_1BA4A3E88();
    v17 = sub_1BA4A6FA8();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v45 = v19;
      *v18 = 136315138;
      v20 = sub_1BA4A85D8();
      v22 = sub_1B9F0B82C(v20, v21, &v45);
      v43 = v4;
      v23 = v2;
      v24 = v22;

      *(v18 + 4) = v24;
      v2 = v23;
      _os_log_impl(&dword_1B9F07000, v16, v17, "[%s] User reached EmergencyAccessBuddyShareMedicalIDViewController in a review flow. This should not have happened.", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v19);
      MEMORY[0x1BFAF43A0](v19, -1, -1);
      MEMORY[0x1BFAF43A0](v18, -1, -1);

      (v44)[1](v6, v43);
    }

    else
    {

      (v44)[1](v6, v4);
    }

    v38 = *&v2[OBJC_IVAR____TtC18HealthExperienceUI48EmergencyAccessBuddyShareMedicalIDViewController_healthStore];
    v40 = v13[8];
    v45 = *v13;
    v39 = v45;
    v46 = v40;
    sub_1BA020470(&v2[OBJC_IVAR____TtC18HealthExperienceUI48EmergencyAccessBuddyShareMedicalIDViewController_emergencyStatus], v9);
    objc_allocWithZone(type metadata accessor for EmergencyAccessBuddyDoneViewController());
    v41 = v38;
    sub_1BA02040C(v39, v40);
    sub_1BA337850(v41, &v45, v9);
    v37 = v42;
LABEL_13:
    [v2 showViewController:v37 sender:{v2, v43}];

    return;
  }

  if (v14 == 2)
  {
    v15 = *v13;
    if (*v13 == 1)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v15 = *v13;
  }

  v25 = *&v2[OBJC_IVAR____TtC18HealthExperienceUI48EmergencyAccessBuddyShareMedicalIDViewController_healthStore];
  sub_1BA020470(&v2[OBJC_IVAR____TtC18HealthExperienceUI48EmergencyAccessBuddyShareMedicalIDViewController_emergencyStatus], &v43 - v11);
  v26 = type metadata accessor for EmergencyAccessBuddyLockScreenMedicalIDViewController();
  v27 = objc_allocWithZone(v26);
  *&v27[OBJC_IVAR____TtC18HealthExperienceUI53EmergencyAccessBuddyLockScreenMedicalIDViewController_switchCell] = 0;
  *&v27[OBJC_IVAR____TtC18HealthExperienceUI53EmergencyAccessBuddyLockScreenMedicalIDViewController_diffableDataSource] = 0;
  *&v27[OBJC_IVAR____TtC18HealthExperienceUI53EmergencyAccessBuddyLockScreenMedicalIDViewController_tableViewHeight] = 0;
  *&v27[OBJC_IVAR____TtC18HealthExperienceUI53EmergencyAccessBuddyLockScreenMedicalIDViewController____lazy_storage___tableViewHeightLayoutConstraint] = 0;
  v28 = &v27[OBJC_IVAR____TtC18HealthExperienceUI53EmergencyAccessBuddyLockScreenMedicalIDViewController_flow];
  *v28 = v15;
  v28[8] = v14;
  sub_1BA020470(v12, &v27[OBJC_IVAR____TtC18HealthExperienceUI53EmergencyAccessBuddyLockScreenMedicalIDViewController_emergencyStatus]);
  *&v27[OBJC_IVAR____TtC18HealthExperienceUI53EmergencyAccessBuddyLockScreenMedicalIDViewController_healthStore] = v25;
  sub_1BA4A2998();
  v29 = v25;
  sub_1BA02040C(v15, v14);
  v44 = v29;
  *&v27[OBJC_IVAR____TtC18HealthExperienceUI53EmergencyAccessBuddyLockScreenMedicalIDViewController_medicalIDCache] = MEMORY[0x1BFAED380](v29);
  v27[OBJC_IVAR____TtC18HealthExperienceUI53EmergencyAccessBuddyLockScreenMedicalIDViewController_initialShowWhenLocked] = a1 & 1;
  type metadata accessor for EmergencyAccessBuddyStartViewController();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v31 = [objc_opt_self() bundleForClass_];
  v32 = sub_1BA4A6758();
  v33 = [objc_opt_self() imageNamed:v32 inBundle:v31];

  if (v33)
  {
    v43 = v2;
    if (qword_1EDC5E100 != -1)
    {
      swift_once();
    }

    sub_1BA4A1318();
    sub_1BA4A1318();
    v34 = sub_1BA4A6758();

    v35 = sub_1BA4A6758();

    v47.receiver = v27;
    v47.super_class = v26;
    v36 = objc_msgSendSuper2(&v47, sel_initWithTitle_detailText_icon_adoptTableViewScrollView_, v34, v35, v33, 0);

    v37 = v36;
    sub_1BA44B870();

    sub_1BA0204E8(v12);
    v2 = v43;
    goto LABEL_13;
  }

  __break(1u);
}

uint64_t sub_1BA402038(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  swift_unknownObjectRetain();
  v6 = a1;
  sub_1BA4A7BF8();
  swift_unknownObjectRelease();
  sub_1BA40110C(a4);

  return __swift_destroy_boxed_opaque_existential_1(&v8);
}

id sub_1BA40210C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for EmergencyAccessBuddyShareMedicalIDViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for EmergencyAccessBuddyShareMedicalIDViewController()
{
  result = qword_1EBBF2370;
  if (!qword_1EBBF2370)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BA40222C()
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

void sub_1BA40231C(void *a1, uint64_t *a2, uint64_t a3)
{
  v4 = v3;
  v7 = *a2;
  *&v4[OBJC_IVAR____TtC18HealthExperienceUI48EmergencyAccessBuddyShareMedicalIDViewController_shareButton] = 0;
  *&v4[OBJC_IVAR____TtC18HealthExperienceUI48EmergencyAccessBuddyShareMedicalIDViewController_dontShareButton] = 0;
  v8 = *(a2 + 8);
  v9 = &v4[OBJC_IVAR____TtC18HealthExperienceUI48EmergencyAccessBuddyShareMedicalIDViewController_flow];
  *v9 = v7;
  v9[8] = v8;
  *&v4[OBJC_IVAR____TtC18HealthExperienceUI48EmergencyAccessBuddyShareMedicalIDViewController_healthStore] = a1;
  sub_1BA020470(a3, &v4[OBJC_IVAR____TtC18HealthExperienceUI48EmergencyAccessBuddyShareMedicalIDViewController_emergencyStatus]);
  sub_1BA4A2998();
  *&v4[OBJC_IVAR____TtC18HealthExperienceUI48EmergencyAccessBuddyShareMedicalIDViewController_medicalIDCache] = MEMORY[0x1BFAED380](a1);
  type metadata accessor for EmergencyAccessBuddyStartViewController();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v11 = [objc_opt_self() bundleForClass_];
  v12 = sub_1BA4A6758();
  v13 = [objc_opt_self() imageNamed:v12 inBundle:v11];

  if (v13)
  {
    if (qword_1EDC5E100 != -1)
    {
      swift_once();
    }

    sub_1BA4A1318();
    [objc_opt_self() hasPairedWatch];
    sub_1BA4A1318();
    v14 = sub_1BA4A6758();

    v15 = sub_1BA4A6758();

    v19.receiver = v4;
    v19.super_class = type metadata accessor for EmergencyAccessBuddyShareMedicalIDViewController();
    v16 = objc_msgSendSuper2(&v19, sel_initWithTitle_detailText_icon_contentLayout_, v14, v15, v13, 2, 0xE000000000000000);

    v17 = v16;
    v18 = [v17 headerView];
    [v18 setAllowFullWidthIcon_];

    sub_1BA0204E8(a3);
  }

  else
  {
    __break(1u);
  }
}

uint64_t HeaderFooterDataSourceWithLayout.__allocating_init(headerDataSource:mainDataSource:footerDataSource:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  swift_allocObject();
  v17 = sub_1B9F384A0(a1, a2, a3, a4, a5, a6, a7, a8, a9);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v17;
}

uint64_t HeaderFooterDataSourceWithLayout.__allocating_init(headerTitle:mainDataSource:footerItem:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v33 = a4;
  v34 = a5;
  v32 = a3;
  sub_1BA403554(0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for ContentConfigurationItem();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v17 = _s18HealthExperienceUI32HeaderFooterDataSourceWithLayoutC06created4ItemfG04with06customI11ConstructorAA13SupplementaryCyAA012MutableArrayfghI0CGSS_So012NSCollectionI7SectionCSgSi_So0rI11Environment_ptcSgtFZ_0(a1, a2, 0, 0);

    v18 = sub_1BA40387C(&qword_1EBBF2390, qword_1EDC693A8, type metadata accessor for Supplementary);
    v19 = &protocol witness table for Supplementary<A>;
  }

  else
  {
    v17 = 0;
    v18 = 0;
    v19 = 0;
  }

  sub_1BA403588(a6, v12, sub_1BA403554);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_1BA403984(v12, sub_1BA403554);
    v20 = 0;
    v21 = 0;
    v22 = 0;
  }

  else
  {
    sub_1BA058CEC(v12, v16);
    type metadata accessor for MutableArrayDataSourceWithLayout();
    v23 = MEMORY[0x1E69E6F90];
    sub_1B9F3558C(0, &qword_1EDC5DBF0, sub_1B9F32148, MEMORY[0x1E69E6F90]);
    inited = swift_initStackObject();
    v31 = xmmword_1BA4B5480;
    *(inited + 16) = xmmword_1BA4B5480;
    sub_1B9F3558C(0, &qword_1EDC5DCA0, sub_1B9F32244, v23);
    v25 = swift_allocObject();
    *(v25 + 16) = v31;
    *(v25 + 56) = v13;
    *(v25 + 64) = sub_1BA001B20(&qword_1EDC664A0, type metadata accessor for ContentConfigurationItem);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v25 + 32));
    sub_1BA403588(v16, boxed_opaque_existential_1, type metadata accessor for ContentConfigurationItem);
    *(inited + 32) = v25;
    v27 = MutableArrayDataSourceWithLayout.__allocating_init(_:collapseEmptySections:layoutConstructor:)(inited, 1, sub_1B9F5AEA0, 0);
    sub_1BA4038D8(0, &qword_1EDC69040, type metadata accessor for CellRegistering);
    v20 = swift_allocObject();
    v20[4] = v27;
    v20[5] = sub_1B9F405BC;
    v20[6] = 0;
    v28 = *(v27 + OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_identifier + 8);
    v20[2] = *(v27 + OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_identifier);
    v20[3] = v28;

    sub_1BA403984(v16, type metadata accessor for ContentConfigurationItem);
    v21 = sub_1BA40387C(&qword_1EBBF2388, &qword_1EDC69040, type metadata accessor for CellRegistering);
    v22 = &protocol witness table for CellRegistering<A>;
  }

  v29 = (*(v6 + 408))(v17, v18, v19, v32, v33, v34, v20, v21, v22);
  sub_1BA403984(a6, sub_1BA403554);
  return v29;
}

void *static HeaderFooterDataSourceWithLayout.createContentConfigurationItemFooterDataSource(with:)(uint64_t a1)
{
  type metadata accessor for MutableArrayDataSourceWithLayout();
  v2 = MEMORY[0x1E69E6F90];
  sub_1B9F3558C(0, &qword_1EDC5DBF0, sub_1B9F32148, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BA4B5480;
  sub_1B9F3558C(0, &qword_1EDC5DCA0, sub_1B9F32244, v2);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1BA4B5480;
  *(v4 + 56) = type metadata accessor for ContentConfigurationItem();
  *(v4 + 64) = sub_1BA001B20(&qword_1EDC664A0, type metadata accessor for ContentConfigurationItem);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v4 + 32));
  sub_1BA403588(a1, boxed_opaque_existential_1, type metadata accessor for ContentConfigurationItem);
  *(inited + 32) = v4;
  v6 = MutableArrayDataSourceWithLayout.__allocating_init(_:collapseEmptySections:layoutConstructor:)(inited, 1, sub_1B9F5AEA0, 0);
  sub_1BA4038D8(0, &qword_1EDC69040, type metadata accessor for CellRegistering);
  v7 = swift_allocObject();
  v7[4] = v6;
  v7[5] = sub_1B9F405BC;
  v7[6] = 0;
  v8 = *(v6 + OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_identifier + 8);
  v7[2] = *(v6 + OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_identifier);
  v7[3] = v8;

  return v7;
}

uint64_t HeaderFooterDataSourceWithLayout.__allocating_init(headerTitle:mainDataSource:customFooterDataSource:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2)
  {
    v15 = _s18HealthExperienceUI32HeaderFooterDataSourceWithLayoutC06created4ItemfG04with06customI11ConstructorAA13SupplementaryCyAA012MutableArrayfghI0CGSS_So012NSCollectionI7SectionCSgSi_So0rI11Environment_ptcSgtFZ_0(a1, a2, 0, 0);

    a2 = sub_1BA40387C(&qword_1EBBF2390, qword_1EDC693A8, type metadata accessor for Supplementary);
    v16 = &protocol witness table for Supplementary<A>;
  }

  else
  {
    v15 = 0;
    v16 = 0;
  }

  return (*(v8 + 408))(v15, a2, v16, a3, a4, a5, a6, a7, a8);
}

uint64_t HeaderFooterDataSourceWithLayout.__allocating_init(customHeaderDataSource:mainDataSource:footerItem:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v33 = a4;
  v34 = a5;
  sub_1BA403554(0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for ContentConfigurationItem();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v31 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA403588(a7, v15, sub_1BA403554);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    sub_1BA403984(v15, sub_1BA403554);
    v20 = 0;
    v21 = 0;
    v22 = 0;
  }

  else
  {
    sub_1BA058CEC(v15, v19);
    type metadata accessor for MutableArrayDataSourceWithLayout();
    v32 = a6;
    v23 = MEMORY[0x1E69E6F90];
    sub_1B9F3558C(0, &qword_1EDC5DBF0, sub_1B9F32148, MEMORY[0x1E69E6F90]);
    inited = swift_initStackObject();
    v31 = xmmword_1BA4B5480;
    *(inited + 16) = xmmword_1BA4B5480;
    sub_1B9F3558C(0, &qword_1EDC5DCA0, sub_1B9F32244, v23);
    v25 = swift_allocObject();
    *(v25 + 16) = v31;
    *(v25 + 56) = v16;
    *(v25 + 64) = sub_1BA001B20(&qword_1EDC664A0, type metadata accessor for ContentConfigurationItem);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v25 + 32));
    sub_1BA403588(v19, boxed_opaque_existential_1, type metadata accessor for ContentConfigurationItem);
    *(inited + 32) = v25;
    v27 = MutableArrayDataSourceWithLayout.__allocating_init(_:collapseEmptySections:layoutConstructor:)(inited, 1, sub_1B9F5AEA0, 0);
    sub_1BA4038D8(0, &qword_1EDC69040, type metadata accessor for CellRegistering);
    v20 = swift_allocObject();
    v20[4] = v27;
    v20[5] = sub_1B9F405BC;
    v20[6] = 0;
    v28 = *(v27 + OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_identifier + 8);
    v20[2] = *(v27 + OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_identifier);
    v20[3] = v28;

    sub_1BA403984(v19, type metadata accessor for ContentConfigurationItem);
    a6 = v32;
    v21 = sub_1BA40387C(&qword_1EBBF2388, &qword_1EDC69040, type metadata accessor for CellRegistering);
    v22 = &protocol witness table for CellRegistering<A>;
  }

  v29 = (*(v7 + 408))(a1, a2, a3, v33, v34, a6, v20, v21, v22);
  sub_1BA403984(a7, sub_1BA403554);
  return v29;
}

void *sub_1BA40324C(uint64_t a1, void *a2, uint64_t (*a3)(uint64_t, void *), uint64_t a4)
{
  v8 = type metadata accessor for ListLayoutConfiguration();
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {

    v12 = a3(a1, a2);
    sub_1B9F0E30C(a3, a4);
  }

  else
  {
    if (qword_1EDC6CBB0 != -1)
    {
      v15 = v9;
      swift_once();
      v9 = v15;
    }

    v13 = __swift_project_value_buffer(v9, qword_1EDC6CBB8);
    sub_1BA403588(v13, v11, type metadata accessor for ListLayoutConfiguration);
    *(v11 + 8) = 0;
    v12 = ListLayoutConfiguration.layout(for:)(a2);
    sub_1BA403984(v11, type metadata accessor for ListLayoutConfiguration);
  }

  return v12;
}

uint64_t sub_1BA4033CC()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return swift_unknownObjectRelease();
}

uint64_t HeaderFooterDataSourceWithLayout.deinit()
{

  v1 = OBJC_IVAR____TtC18HealthExperienceUI27CompoundSectionedDataSource_snapshot;
  sub_1B9F12538();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v0;
}

uint64_t HeaderFooterDataSourceWithLayout.__deallocating_deinit()
{
  HeaderFooterDataSourceWithLayout.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1BA403588(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void *_s18HealthExperienceUI32HeaderFooterDataSourceWithLayoutC06created4ItemfG04with06customI11ConstructorAA13SupplementaryCyAA012MutableArrayfghI0CGSS_So012NSCollectionI7SectionCSgSi_So0rI11Environment_ptcSgtFZ_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1BA4A4428();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);

  _s18HealthExperienceUI29CollectionViewHeaderProvidingPAAE24makeDefaultConfiguration5UIKit013UIListContentJ0VyFZ_0();
  v11 = type metadata accessor for HeaderItem();
  swift_allocObject();
  HeaderItem.init(title:buttonText:buttonWasTapped:configuration:automationIdentifier:)(a1, a2, 0, 0, 0, 0, v10, 0, 0);
  v13 = v12;
  type metadata accessor for MutableArrayDataSourceWithLayout();
  sub_1B9F3558C(0, &qword_1EDC5DBF0, sub_1B9F32148, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BA4B5480;
  *(inited + 32) = MEMORY[0x1E69E7CC0];
  v15 = swift_allocObject();
  *(v15 + 16) = a3;
  *(v15 + 24) = a4;
  sub_1B9F0F1B8(a3);
  v16 = MutableArrayDataSourceWithLayout.__allocating_init(_:collapseEmptySections:layoutConstructor:)(inited, 0, sub_1BA40397C, v15);
  v23[3] = v11;
  v23[4] = sub_1BA001B20(&qword_1EDC69800, type metadata accessor for HeaderItem);
  v23[0] = v13;
  sub_1B9F0A534(v23, v22);
  v17 = swift_allocObject();
  sub_1B9F25598(v22, v17 + 16);
  sub_1BA4038D8(0, qword_1EDC693A8, type metadata accessor for Supplementary);
  v18 = swift_allocObject();
  v18[4] = v16;
  v18[5] = sub_1B9F79BC8;
  v18[6] = v17;
  v19 = *(v16 + OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_identifier + 8);
  v18[2] = *(v16 + OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_identifier);
  v18[3] = v19;

  __swift_destroy_boxed_opaque_existential_1(v23);
  return v18;
}

uint64_t sub_1BA40387C(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, _UNKNOWN **))
{
  result = *a1;
  if (!result)
  {
    sub_1BA4038D8(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1BA4038D8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, _UNKNOWN **))
{
  if (!*a2)
  {
    v6 = type metadata accessor for MutableArrayDataSourceWithLayout();
    v7 = a3(a1, v6, &protocol witness table for MutableArrayDataSource);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1BA403984(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void *DataTypeDetailChartCell.Item.restorationUserActivity.getter()
{
  v1 = *(v0 + 8);
  v2 = v1;
  return v1;
}

void *DataTypeDetailChartCell.Item.trendModel.getter()
{
  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

void DataTypeDetailChartCell.Item.init(dataType:restorationUserActivity:)(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  sub_1B9F1C048(0, &qword_1EDC6E330);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1BA4B5460;
  v7 = [a1 identifier];
  v8 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  v10 = v9;

  *(v6 + 32) = v8;
  *(v6 + 40) = v10;
  *(v6 + 48) = 0x7472616843;
  *(v6 + 56) = 0xE500000000000000;
  v11 = sub_1BA4A6AE8();

  v12 = HKUIJoinStringsForAutomationIdentifier();

  if (v12)
  {
    v13 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    v15 = v14;
  }

  else
  {
    v13 = 0;
    v15 = 0;
  }

  *a3 = a1;
  a3[1] = a2;
  a3[2] = 0;
  a3[3] = v13;
  a3[4] = v15;
}

uint64_t DataTypeDetailChartCell.Item.baseIdentifier.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t DataTypeDetailChartCell.Item.baseIdentifier.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

uint64_t DataTypeDetailChartCell.Item.reuseIdentifier.getter()
{
  type metadata accessor for DataTypeDetailChartCell();
  sub_1BA403C4C();
  return sub_1BA4A6808();
}

unint64_t sub_1BA403C4C()
{
  result = qword_1EDC66C90;
  if (!qword_1EDC66C90)
  {
    type metadata accessor for DataTypeDetailChartCell();
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_1EDC66C90);
  }

  return result;
}

unint64_t DataTypeDetailChartCell.Item.uniqueIdentifier.getter()
{
  v1 = *v0;
  sub_1BA4A7DF8();

  v2 = [v1 identifier];
  v3 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  v5 = v4;

  MEMORY[0x1BFAF1350](v3, v5);

  return 0xD00000000000001ELL;
}

uint64_t sub_1BA403D64()
{
  type metadata accessor for DataTypeDetailChartCell();
  sub_1BA403C4C();
  return sub_1BA4A6808();
}

void *sub_1BA403D9C()
{
  v1 = *(v0 + 8);
  v2 = v1;
  return v1;
}

void *sub_1BA403DC4()
{
  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

uint64_t sub_1BA403DEC()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t sub_1BA403E1C(uint64_t a1, uint64_t a2)
{

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

uint64_t sub_1BA403E78(uint64_t a1)
{
  v2 = sub_1BA406908();

  return MEMORY[0x1EEE0DA58](a1, v2);
}

void sub_1BA403F0C(void *a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
}

void (*sub_1BA403F68(uint64_t *a1))(id **, char)
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
  v5 = OBJC_IVAR____TtC18HealthExperienceUI23DataTypeDetailChartCell_parentViewController;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_1BA0BAB9C;
}

void sub_1BA404000(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI23DataTypeDetailChartCell_chartViewController;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
}

void *sub_1BA404060()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI23DataTypeDetailChartCell_chartViewController;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1BA4040AC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI23DataTypeDetailChartCell_chartViewController;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_1BA404164(uint64_t a1, uint64_t *a2)
{
  sub_1B9F68124(a1, v7);
  v3 = *a2;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI23DataTypeDetailChartCell_item;
  swift_beginAccess();
  sub_1B9F68124(v3 + v4, v6);
  swift_beginAccess();
  sub_1B9F63E74(v7, v3 + v4);
  swift_endAccess();
  sub_1BA404238(v6);
  sub_1B9F43A50(v6, &qword_1EDC6E1A0, &qword_1EDC6E1B0);
  return sub_1B9F43A50(v7, &qword_1EDC6E1A0, &qword_1EDC6E1B0);
}

uint64_t sub_1BA404238(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI23DataTypeDetailChartCell_item;
  swift_beginAccess();
  sub_1B9F68124(v1 + v3, &v13);
  if (*(&v14 + 1))
  {
    sub_1B9F0D950(0, &qword_1EDC6E1B0);
    sub_1B9F0D950(0, &qword_1EDC6C3F0);
    if (swift_dynamicCast())
    {
      if (*(&v17 + 1))
      {
        sub_1B9F1134C(&v16, v19);
        sub_1B9F68124(a1, v11);
        if (v12)
        {
          if (swift_dynamicCast())
          {
            if (*(&v14 + 1))
            {
              v4 = v1;
              sub_1B9F1134C(&v13, &v16);
              v5 = *(&v17 + 1);
              v6 = v18;
              __swift_project_boxed_opaque_existential_1(&v16, *(&v17 + 1));
              if (DataTypeDetailChartCellItem.isDifferent(from:)(v19, v5, v6))
              {
                (*((*MEMORY[0x1E69E7D40] & *v4) + 0xB8))();
              }

              __swift_destroy_boxed_opaque_existential_1(v19);
              v7 = &v16;
              return __swift_destroy_boxed_opaque_existential_1(v7);
            }
          }

          else
          {
            v15 = 0;
            v13 = 0u;
            v14 = 0u;
          }
        }

        else
        {
          sub_1B9F43A50(v11, &qword_1EDC6E1A0, &qword_1EDC6E1B0);
          v13 = 0u;
          v14 = 0u;
          v15 = 0;
        }

        v8 = sub_1B9F43A50(&v13, &qword_1EDC6C3E8, &qword_1EDC6C3F0);
        (*((*MEMORY[0x1E69E7D40] & *v1) + 0xB8))(v8);
        v7 = v19;
        return __swift_destroy_boxed_opaque_existential_1(v7);
      }
    }

    else
    {
      v18 = 0;
      v16 = 0u;
      v17 = 0u;
    }
  }

  else
  {
    sub_1B9F43A50(&v13, &qword_1EDC6E1A0, &qword_1EDC6E1B0);
    v16 = 0u;
    v17 = 0u;
    v18 = 0;
  }

  sub_1B9F43A50(&v16, &qword_1EDC6C3E8, &qword_1EDC6C3F0);
  v19[0] = 0;
  v19[1] = 0xE000000000000000;
  sub_1BA4A7DF8();

  *&v16 = 0xD000000000000011;
  *(&v16 + 1) = 0x80000001BA4F5100;
  sub_1B9F68124(v1 + v3, v19);
  sub_1B9F0CDE8(0, &qword_1EDC6E1A0, &qword_1EDC6E1B0);
  v10 = sub_1BA4A6808();
  MEMORY[0x1BFAF1350](v10);

  result = sub_1BA4A8018();
  __break(1u);
  return result;
}

uint64_t sub_1BA404578@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI23DataTypeDetailChartCell_item;
  swift_beginAccess();
  return sub_1B9F68124(v1 + v3, a1);
}

uint64_t sub_1BA4045D0(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI23DataTypeDetailChartCell_item;
  swift_beginAccess();
  sub_1B9F68124(v1 + v3, v5);
  swift_beginAccess();
  sub_1B9F63E74(a1, v1 + v3);
  swift_endAccess();
  sub_1BA404238(v5);
  sub_1B9F43A50(a1, &qword_1EDC6E1A0, &qword_1EDC6E1B0);
  return sub_1B9F43A50(v5, &qword_1EDC6E1A0, &qword_1EDC6E1B0);
}

void (*sub_1BA404698(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = OBJC_IVAR____TtC18HealthExperienceUI23DataTypeDetailChartCell_item;
  *(v3 + 168) = v1;
  *(v3 + 176) = v5;
  swift_beginAccess();
  sub_1B9F68124(v1 + v5, v4);
  return sub_1BA404730;
}

void sub_1BA404730(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 168);
  v4 = *(*a1 + 176);
  if (a2)
  {
    sub_1B9F68124(*a1, v2 + 40);
    sub_1B9F68124(v3 + v4, v2 + 80);
    swift_beginAccess();
    sub_1B9F63E74(v2 + 40, v3 + v4);
    swift_endAccess();
    sub_1BA404238(v2 + 80);
    sub_1B9F43A50(v2 + 80, &qword_1EDC6E1A0, &qword_1EDC6E1B0);
  }

  else
  {
    sub_1B9F68124(v3 + v4, v2 + 40);
    swift_beginAccess();
    sub_1B9F63E74(v2, v3 + v4);
    swift_endAccess();
    sub_1BA404238(v2 + 40);
  }

  sub_1B9F43A50(v2 + 40, &qword_1EDC6E1A0, &qword_1EDC6E1B0);
  sub_1B9F43A50(v2, &qword_1EDC6E1A0, &qword_1EDC6E1B0);

  free(v2);
}

uint64_t sub_1BA40486C()
{
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong() && (sub_1B9F0ADF8(0, &qword_1EDC6B5D0), sub_1B9F0D950(0, &unk_1EDC6CCE0), (swift_dynamicCast() & 1) != 0))
  {
    v0 = *(&v5 + 1);
    if (*(&v5 + 1))
    {
      v1 = v6;
      __swift_project_boxed_opaque_existential_1(&v4, *(&v5 + 1));
      v2 = (*(v1 + 8))(v0, v1);
      __swift_destroy_boxed_opaque_existential_1(&v4);
      return v2;
    }
  }

  else
  {
    v6 = 0;
    v4 = 0u;
    v5 = 0u;
  }

  sub_1B9F43A50(&v4, &qword_1EBBF23B0, &unk_1EDC6CCE0);
  return 0;
}

uint64_t sub_1BA404990()
{
  v1 = v0;
  v2 = sub_1BA4A3EA8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v65 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC18HealthExperienceUI23DataTypeDetailChartCell_item;
  swift_beginAccess();
  sub_1B9F68124(&v1[v6], &v70);
  if (*(&v71 + 1))
  {
    sub_1B9F0D950(0, &qword_1EDC6E1B0);
    sub_1B9F0D950(0, &qword_1EDC6C3F0);
    if (swift_dynamicCast())
    {
      if (*(&v74 + 1))
      {
        sub_1B9F1134C(&v73, v76);
        swift_beginAccess();
        Strong = swift_unknownObjectWeakLoadStrong();
        if (!Strong)
        {
          sub_1BA4A3DD8();
          v21 = v1;
          v22 = sub_1BA4A3E88();
          v23 = sub_1BA4A6FA8();

          if (os_log_type_enabled(v22, v23))
          {
            v24 = swift_slowAlloc();
            v67 = swift_slowAlloc();
            *&v73 = v67;
            *v24 = 136446210;
            v25 = v21;
            v26 = [v25 description];
            v27 = v3;
            v28 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
            v30 = v29;

            v31 = sub_1B9F0B82C(v28, v30, &v73);

            *(v24 + 4) = v31;
            _os_log_impl(&dword_1B9F07000, v22, v23, "[%{public}s] Skipping chart creation due to no HealthToolbox", v24, 0xCu);
            v32 = v67;
            __swift_destroy_boxed_opaque_existential_1(v67);
            MEMORY[0x1BFAF43A0](v32, -1, -1);
            MEMORY[0x1BFAF43A0](v24, -1, -1);

            (*(v27 + 8))(v5, v2);
          }

          else
          {

            (*(v3 + 8))(v5, v2);
          }

          return __swift_destroy_boxed_opaque_existential_1(v76);
        }

        v8 = Strong;
        v9 = [Strong resolvedHealthToolbox];

        v10 = v77;
        v11 = v78;
        __swift_project_boxed_opaque_existential_1(v76, v77);
        v12 = OBJC_IVAR____TtC18HealthExperienceUI23DataTypeDetailChartCell_chartViewController;
        swift_beginAccess();
        v67 = v12;
        v13 = *&v1[v12];
        v14 = swift_unknownObjectWeakLoadStrong();
        if (v14)
        {
          *&v70 = v14;
          sub_1B9F0ADF8(0, &qword_1EDC6B5D0);
          sub_1B9F0D950(0, &unk_1EDC6CCE0);
          v15 = v13;
          if (swift_dynamicCast())
          {
            v16 = *(&v74 + 1);
            if (*(&v74 + 1))
            {
              v66 = v9;
              v17 = v75;
              __swift_project_boxed_opaque_existential_1(&v73, *(&v74 + 1));
              v18 = *(v17 + 8);
              v19 = v17;
              v9 = v66;
              v20 = v18(v16, v19);
              __swift_destroy_boxed_opaque_existential_1(&v73);
              goto LABEL_14;
            }
          }

          else
          {
            v75 = 0;
            v73 = 0u;
            v74 = 0u;
          }
        }

        else
        {
          v75 = 0;
          v73 = 0u;
          v74 = 0u;
          v15 = v13;
        }

        sub_1B9F43A50(&v73, &qword_1EBBF23B0, &unk_1EDC6CCE0);
        v20 = 0;
LABEL_14:
        v33 = (*(v11 + 48))(v13, v20, v10, v11);

        if (v33)
        {
          v34 = v77;
          v35 = v78;
          v36 = __swift_project_boxed_opaque_existential_1(v76, v77);
          v37 = *&v1[v67];
          v66 = v37;
          v38 = [v9 chartFactory];
          v39 = swift_unknownObjectWeakLoadStrong();
          v40 = v9;
          if (v39 && (*&v70 = v39, sub_1B9F0ADF8(0, &qword_1EDC6B5D0), sub_1B9F0D950(0, &unk_1EDC6CCE0), (swift_dynamicCast() & 1) != 0))
          {
            v41 = *(&v74 + 1);
            if (*(&v74 + 1))
            {
              v65 = v36;
              v42 = v75;
              __swift_project_boxed_opaque_existential_1(&v73, *(&v74 + 1));
              v43 = (*(v42 + 8))(v41, v42);
              __swift_destroy_boxed_opaque_existential_1(&v73);
LABEL_25:
              (*(v35 + 56))(v37, v38, v43, v34, v35);

              v9 = v40;
LABEL_29:
              v55 = swift_unknownObjectWeakLoadStrong();
              if (v55 && (*&v73 = v55, sub_1B9F0ADF8(0, &qword_1EDC6B5D0), sub_1B9F0D950(0, &qword_1EDC65130), (swift_dynamicCast() & 1) != 0))
              {
                if (*(&v71 + 1))
                {
                  sub_1B9F1134C(&v70, &v73);
                  v56 = *(&v74 + 1);
                  v57 = v75;
                  __swift_mutable_project_boxed_opaque_existential_1(&v73, *(&v74 + 1));
                  v58 = *(v57 + 16);
                  v59 = swift_unknownObjectRetain();
                  v58(v59, &protocol witness table for DataTypeDetailChartCell, v56, v57);
                  __swift_destroy_boxed_opaque_existential_1(&v73);
LABEL_35:
                  v60 = swift_unknownObjectWeakLoadStrong();
                  if (v60)
                  {
                    v69 = v60;
                    sub_1B9F0ADF8(0, &qword_1EDC6B5D0);
                    sub_1B9F0D950(0, qword_1EDC64F50);
                    if (swift_dynamicCast())
                    {
                      if (*(&v71 + 1))
                      {
                        sub_1B9F1134C(&v70, &v73);
                        if (*&v1[v67])
                        {
                          v68 = &unk_1F388B8A0;
                          if (swift_dynamicCastObjCProtocolConditional())
                          {
                            v61 = *(&v74 + 1);
                            v62 = v75;
                            __swift_project_boxed_opaque_existential_1(&v73, *(&v74 + 1));
                            (*(v62 + 8))(v1, v61, v62);
                          }
                        }

                        __swift_destroy_boxed_opaque_existential_1(&v73);
                        return __swift_destroy_boxed_opaque_existential_1(v76);
                      }
                    }

                    else
                    {
                      v72 = 0;
                      v70 = 0u;
                      v71 = 0u;
                    }
                  }

                  else
                  {

                    v72 = 0;
                    v70 = 0u;
                    v71 = 0u;
                  }

                  sub_1B9F43A50(&v70, &qword_1EBBF23B8, qword_1EDC64F50);
                  return __swift_destroy_boxed_opaque_existential_1(v76);
                }
              }

              else
              {
                v72 = 0;
                v70 = 0u;
                v71 = 0u;
              }

              sub_1B9F43A50(&v70, &qword_1EBBEA288, &qword_1EDC65130);
              goto LABEL_35;
            }
          }

          else
          {
            v75 = 0;
            v73 = 0u;
            v74 = 0u;
          }

          sub_1B9F43A50(&v73, &qword_1EBBF23B0, &unk_1EDC6CCE0);
          v43 = 0;
          goto LABEL_25;
        }

        v44 = v67;
        v45 = [*&v1[v67] view];
        [v45 removeFromSuperview];

        [*&v1[v44] removeFromParentViewController];
        v46 = v77;
        v47 = v78;
        __swift_project_boxed_opaque_existential_1(v76, v77);
        v48 = [v9 chartFactory];
        v49 = swift_unknownObjectWeakLoadStrong();
        if (v49 && (*&v70 = v49, sub_1B9F0ADF8(0, &qword_1EDC6B5D0), sub_1B9F0D950(0, &unk_1EDC6CCE0), (swift_dynamicCast() & 1) != 0))
        {
          v50 = *(&v74 + 1);
          if (*(&v74 + 1))
          {
            v51 = v75;
            __swift_project_boxed_opaque_existential_1(&v73, *(&v74 + 1));
            v52 = (*(v51 + 8))(v50, v51);
            __swift_destroy_boxed_opaque_existential_1(&v73);
LABEL_28:
            v53 = (*(v47 + 40))(v48, v52, v46, v47);

            v54 = *&v1[v67];
            *&v1[v67] = v53;

            sub_1BA40546C();
            goto LABEL_29;
          }
        }

        else
        {
          v75 = 0;
          v73 = 0u;
          v74 = 0u;
        }

        sub_1B9F43A50(&v73, &qword_1EBBF23B0, &unk_1EDC6CCE0);
        v52 = 0;
        goto LABEL_28;
      }
    }

    else
    {
      v75 = 0;
      v73 = 0u;
      v74 = 0u;
    }
  }

  else
  {
    sub_1B9F43A50(&v70, &qword_1EDC6E1A0, &qword_1EDC6E1B0);
    v73 = 0u;
    v74 = 0u;
    v75 = 0;
  }

  sub_1B9F43A50(&v73, &qword_1EDC6C3E8, &qword_1EDC6C3F0);
  v76[0] = 0;
  v76[1] = 0xE000000000000000;
  sub_1BA4A7DF8();

  *&v73 = 0xD000000000000011;
  *(&v73 + 1) = 0x80000001BA4F5100;
  sub_1B9F68124(&v1[v6], v76);
  sub_1B9F0CDE8(0, &qword_1EDC6E1A0, &qword_1EDC6E1B0);
  v64 = sub_1BA4A6808();
  MEMORY[0x1BFAF1350](v64);

  result = sub_1BA4A8018();
  __break(1u);
  return result;
}

void sub_1BA40546C()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC18HealthExperienceUI23DataTypeDetailChartCell_chartViewController;
  swift_beginAccess();
  v3 = *&v0[v2];
  if (v3)
  {
    v4 = v3;
    v5 = [v4 view];
    if (v5)
    {
      v6 = v5;
      [v5 setTranslatesAutoresizingMaskIntoConstraints_];

      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      [Strong addChildViewController_];
      v8 = [v1 contentView];
      v9 = [v4 view];
      if (v9)
      {
        v10 = v9;
        [v8 addSubview_];

        if (Strong)
        {
          [v4 didMoveToParentViewController_];
        }

        sub_1B9F1C048(0, &qword_1EDC6B400);
        v11 = swift_allocObject();
        *(v11 + 16) = xmmword_1BA4B5890;
        v12 = [v4 view];
        if (v12)
        {
          v13 = v12;
          v14 = [v12 leadingAnchor];

          v15 = [v1 contentView];
          v16 = [v15 leadingAnchor];

          v17 = [v14 constraintEqualToAnchor_];
          *(v11 + 32) = v17;
          v18 = [v4 view];
          if (v18)
          {
            v19 = v18;
            v20 = [v18 trailingAnchor];

            v21 = [v1 contentView];
            v22 = [v21 trailingAnchor];

            v23 = [v20 constraintEqualToAnchor_];
            *(v11 + 40) = v23;
            v24 = [v4 view];
            if (v24)
            {
              v25 = v24;
              v26 = [v24 topAnchor];

              v27 = [v1 contentView];
              v28 = [v27 topAnchor];

              v29 = [v26 constraintEqualToAnchor_];
              *(v11 + 48) = v29;
              v30 = [v4 view];
              if (v30)
              {
                v31 = v30;
                v32 = objc_opt_self();
                v33 = [v31 bottomAnchor];

                v34 = [v1 &selRef_fetchSources];
                v35 = [v34 bottomAnchor];

                v36 = [v33 constraintEqualToAnchor_];
                *(v11 + 56) = v36;
                sub_1B9F0ADF8(0, &qword_1EDC6B570);
                v37 = sub_1BA4A6AE8();

                [v32 activateConstraints_];

                return;
              }

LABEL_17:
              __break(1u);
              return;
            }

LABEL_16:
            __break(1u);
            goto LABEL_17;
          }

LABEL_15:
          __break(1u);
          goto LABEL_16;
        }

LABEL_14:
        __break(1u);
        goto LABEL_15;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_14;
  }
}

id DataTypeDetailChartCell.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id DataTypeDetailChartCell.init(frame:)(double a1, double a2, double a3, double a4)
{
  swift_unknownObjectWeakInit();
  *&v4[OBJC_IVAR____TtC18HealthExperienceUI23DataTypeDetailChartCell_chartViewController] = 0;
  v9 = &v4[OBJC_IVAR____TtC18HealthExperienceUI23DataTypeDetailChartCell_item];
  v10 = type metadata accessor for DataTypeDetailChartCell();
  *v9 = 0u;
  *(v9 + 1) = 0u;
  *(v9 + 4) = 0;
  v12.receiver = v4;
  v12.super_class = v10;
  return objc_msgSendSuper2(&v12, sel_initWithFrame_, a1, a2, a3, a4);
}

id DataTypeDetailChartCell.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id DataTypeDetailChartCell.init(coder:)(void *a1)
{
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____TtC18HealthExperienceUI23DataTypeDetailChartCell_chartViewController] = 0;
  v3 = &v1[OBJC_IVAR____TtC18HealthExperienceUI23DataTypeDetailChartCell_item];
  v4 = type metadata accessor for DataTypeDetailChartCell();
  *v3 = 0u;
  *(v3 + 1) = 0u;
  *(v3 + 4) = 0;
  v7.receiver = v1;
  v7.super_class = v4;
  v5 = objc_msgSendSuper2(&v7, sel_initWithCoder_, a1);

  if (v5)
  {
  }

  return v5;
}

id DataTypeDetailChartCell.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DataTypeDetailChartCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void (*sub_1BA405D64(uint64_t **a1))(void *a1)
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
  v2[4] = sub_1BA404698(v2);
  return sub_1B9FCDD98;
}

void (*sub_1BA405DD4(uint64_t *a1))(id **, char)
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
  v5 = OBJC_IVAR____TtC18HealthExperienceUI23DataTypeDetailChartCell_parentViewController;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_1BA0C36E0;
}

UIImage *DataTypeDetailChartCell.chartImage.getter()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI23DataTypeDetailChartCell_chartViewController;
  swift_beginAccess();
  result = *(v0 + v1);
  if (result)
  {
    result = [(UIImage *)result view];
    if (result)
    {
      v3 = result;
      [(UIImage *)result frame];
      v7.width = v4;
      v7.height = v5;
      UIGraphicsBeginImageContextWithOptions(v7, 1, 0.0);
      [(UIImage *)v3 bounds];
      [(UIImage *)v3 drawViewHierarchyInRect:1 afterScreenUpdates:?];
      v6 = UIGraphicsGetImageFromCurrentImageContext();
      UIGraphicsEndImageContext();

      return v6;
    }
  }

  return result;
}

uint64_t DataTypeDetailChartCell.chartDataTypeDisplayName.getter()
{
  v1 = v0;
  swift_getObjectType();
  v2 = sub_1BA4A3EA8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC18HealthExperienceUI23DataTypeDetailChartCell_item;
  swift_beginAccess();
  sub_1B9F68124(v1 + v6, v27);
  if (v28)
  {
    sub_1B9F0D950(0, &qword_1EDC6E1B0);
    sub_1B9F0D950(0, &qword_1EDC6C3F0);
    if (swift_dynamicCast())
    {
      if (*(&v30 + 1))
      {
        sub_1B9F1134C(&v29, v32);
        v7 = v33;
        v8 = v34;
        __swift_project_boxed_opaque_existential_1(v32, v33);
        v9 = (*(v8 + 8))(v7, v8);
        v10 = [v9 hk_localizedName];

        if (v10)
        {
          v11 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
        }

        else
        {
          v11 = 0;
        }

        __swift_destroy_boxed_opaque_existential_1(v32);
        return v11;
      }
    }

    else
    {
      v31 = 0;
      v29 = 0u;
      v30 = 0u;
    }
  }

  else
  {
    sub_1B9F43A50(v27, &qword_1EDC6E1A0, &qword_1EDC6E1B0);
    v29 = 0u;
    v30 = 0u;
    v31 = 0;
  }

  sub_1B9F43A50(&v29, &qword_1EDC6C3E8, &qword_1EDC6C3F0);
  sub_1BA4A3DD8();
  v12 = v1;
  v13 = sub_1BA4A3E88();
  v14 = sub_1BA4A6FA8();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v26 = v2;
    v17 = v16;
    *&v29 = v16;
    *v15 = 136315394;
    v18 = sub_1BA4A85D8();
    v20 = sub_1B9F0B82C(v18, v19, &v29);

    *(v15 + 4) = v20;
    *(v15 + 12) = 2080;
    sub_1B9F68124(v1 + v6, v32);
    sub_1B9F0CDE8(0, &qword_1EDC6E1A0, &qword_1EDC6E1B0);
    v21 = sub_1BA4A6808();
    v23 = sub_1B9F0B82C(v21, v22, &v29);

    *(v15 + 14) = v23;
    _os_log_impl(&dword_1B9F07000, v13, v14, "[%s] Item kind wrong: %s", v15, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1BFAF43A0](v17, -1, -1);
    MEMORY[0x1BFAF43A0](v15, -1, -1);

    (*(v3 + 8))(v5, v26);
  }

  else
  {

    (*(v3 + 8))(v5, v2);
  }

  return 0;
}

id DataTypeDetailChartCell.chartOverlayVersion.getter()
{
  v1 = sub_1BA4A3EA8();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = OBJC_IVAR____TtC18HealthExperienceUI23DataTypeDetailChartCell_chartViewController;
  swift_beginAccess();
  v6 = *&v0[v5];
  if (v6 && (v24[1] = &unk_1F388B8A0, (v7 = swift_dynamicCastObjCProtocolConditional()) != 0))
  {
    v8 = v7;
    v9 = v6;
    result = [v8 chartOverlayVersion];
    if (result)
    {
      v11 = result;

      return v11;
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    sub_1BA4A3DD8();
    v12 = v0;
    v13 = sub_1BA4A3E88();
    v14 = sub_1BA4A6FB8();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v24[0] = swift_slowAlloc();
      v25 = v24[0];
      *v15 = 136446466;
      v16 = v12;
      v17 = [v16 description];
      v18 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      v20 = v19;

      v21 = sub_1B9F0B82C(v18, v20, &v25);

      *(v15 + 4) = v21;
      *(v15 + 12) = 2082;
      *(v15 + 14) = sub_1B9F0B82C(0xD00000000000001ELL, 0x80000001BA507340, &v25);
      _os_log_impl(&dword_1B9F07000, v13, v14, "%{public}s: chartViewController does not conform to %{public}s, cannot provide a meaningful chart overlay version", v15, 0x16u);
      v22 = v24[0];
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v22, -1, -1);
      MEMORY[0x1BFAF43A0](v15, -1, -1);
    }

    (*(v2 + 8))(v4, v1);
    v23 = *MEMORY[0x1E69A4098];

    return v23;
  }

  return result;
}

unint64_t sub_1BA40661C()
{
  result = qword_1EDC66CA0;
  if (!qword_1EDC66CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC66CA0);
  }

  return result;
}

unint64_t sub_1BA406908()
{
  result = qword_1EDC66C98;
  if (!qword_1EDC66C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC66C98);
  }

  return result;
}

uint64_t sub_1BA40695C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

void sub_1BA4069D0(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI31CameraScannerFlowViewController_loadingView;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
}

void *sub_1BA406A30()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI31CameraScannerFlowViewController_loadingView;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1BA406A7C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI31CameraScannerFlowViewController_loadingView;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_1BA406B34()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI31CameraScannerFlowViewController_hasShownIntroduction;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1BA406B78(char a1)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI31CameraScannerFlowViewController_hasShownIntroduction;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

void sub_1BA406C28(uint64_t a1, void *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2 + OBJC_IVAR____TtC18HealthExperienceUI31CameraScannerFlowViewController_introductionView;
  swift_beginAccess();
  v5 = *v4;
  *v4 = v2;
  *(v4 + 8) = v3;
  v6 = v2;
}

id sub_1BA406C8C()
{
  v1 = (v0 + OBJC_IVAR____TtC18HealthExperienceUI31CameraScannerFlowViewController_introductionView);
  swift_beginAccess();
  v2 = *v1;
  v3 = *v1;
  return v2;
}

void sub_1BA406CE0(uint64_t a1, uint64_t a2)
{
  v5 = v2 + OBJC_IVAR____TtC18HealthExperienceUI31CameraScannerFlowViewController_introductionView;
  swift_beginAccess();
  v6 = *v5;
  *v5 = a1;
  *(v5 + 8) = a2;
}

id sub_1BA406DA0()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI31CameraScannerFlowViewController____lazy_storage___dataScannerViewController;
  v2 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI31CameraScannerFlowViewController____lazy_storage___dataScannerViewController);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI31CameraScannerFlowViewController____lazy_storage___dataScannerViewController);
  }

  else
  {
    v4 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0xE0))();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

void sub_1BA406E30(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC18HealthExperienceUI31CameraScannerFlowViewController____lazy_storage___dataScannerViewController);
  *(v1 + OBJC_IVAR____TtC18HealthExperienceUI31CameraScannerFlowViewController____lazy_storage___dataScannerViewController) = a1;
}

void (*sub_1BA406E44(id *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = sub_1BA406DA0();
  return sub_1BA406E8C;
}

void sub_1BA406E8C(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(v1 + OBJC_IVAR____TtC18HealthExperienceUI31CameraScannerFlowViewController____lazy_storage___dataScannerViewController);
  *(v1 + OBJC_IVAR____TtC18HealthExperienceUI31CameraScannerFlowViewController____lazy_storage___dataScannerViewController) = v2;
}

id sub_1BA406EA4()
{
  sub_1BA4A6608();
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

id CameraScannerFlowViewController.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id CameraScannerFlowViewController.init()()
{
  *&v0[OBJC_IVAR____TtC18HealthExperienceUI31CameraScannerFlowViewController_loadingView] = 0;
  v0[OBJC_IVAR____TtC18HealthExperienceUI31CameraScannerFlowViewController_hasShownIntroduction] = 0;
  v1 = &v0[OBJC_IVAR____TtC18HealthExperienceUI31CameraScannerFlowViewController_introductionView];
  *v1 = 0;
  v1[1] = 0;
  *&v0[OBJC_IVAR____TtC18HealthExperienceUI31CameraScannerFlowViewController____lazy_storage___dataScannerViewController] = 0;
  *&v0[OBJC_IVAR____TtC18HealthExperienceUI31CameraScannerFlowViewController____lazy_storage___closeButton] = 0;
  *&v0[OBJC_IVAR____TtC18HealthExperienceUI31CameraScannerFlowViewController____lazy_storage___tapToRadarButton] = 0;
  v4.receiver = v0;
  v4.super_class = type metadata accessor for CameraScannerFlowViewController();
  v2 = objc_msgSendSuper2(&v4, sel_initWithNibName_bundle_, 0, 0);
  [v2 setModalPresentationStyle_];
  return v2;
}

id CameraScannerFlowViewController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

uint64_t static CameraScannerFlowViewController.cameraScannerFlowDidTapScan(presentingVC:scanner:)(void *a1, void *a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  v5 = a1;
  v6 = a2;
  sub_1BA4A2FB8();
}

id sub_1BA407100(id result, id a2, uint64_t a3)
{
  if (result == 2)
  {
    return MEMORY[0x1EEE0DB08](a2);
  }

  if (result == 3)
  {
    return [a2 presentViewController:a3 animated:1 completion:0];
  }

  return result;
}

void sub_1BA407138()
{
  v45.receiver = v0;
  v45.super_class = type metadata accessor for CameraScannerFlowViewController();
  objc_msgSendSuper2(&v45, sel_viewDidLoad);
  v1 = [v0 view];
  if (!v1)
  {
    __break(1u);
    goto LABEL_13;
  }

  v2 = v1;
  v3 = [objc_opt_self() systemBlackColor];
  [v2 setBackgroundColor_];

  v4 = sub_1BA406DA0();
  [v0 addChildViewController_];

  v5 = [v0 view];
  if (!v5)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v6 = v5;
  v7 = OBJC_IVAR____TtC18HealthExperienceUI31CameraScannerFlowViewController____lazy_storage___dataScannerViewController;
  v8 = [*&v0[OBJC_IVAR____TtC18HealthExperienceUI31CameraScannerFlowViewController____lazy_storage___dataScannerViewController] view];
  if (!v8)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v9 = v8;
  [v6 addSubview_];

  v10 = [*&v0[v7] view];
  if (!v10)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v11 = v10;
  v12 = [v0 view];
  if (!v12)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v13 = v12;
  [v12 bounds];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;

  [v11 setFrame_];
  v22 = [*&v0[v7] view];
  if (!v22)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v23 = v22;
  [v22 setAutoresizingMask_];

  v24 = [*&v0[v7] view];
  if (!v24)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v25 = v24;
  [v24 setAlpha_];

  [*&v0[v7] didMoveToParentViewController_];
  v26 = [v0 view];
  if (!v26)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v27 = v26;
  v28 = sub_1BA407920();
  [v27 addSubview_];

  v29 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI31CameraScannerFlowViewController____lazy_storage___closeButton];
  v30 = [v0 view];
  if (!v30)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v31 = v30;
  [v30 bounds];
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v39 = v38;

  v46.origin.x = v33;
  v46.origin.y = v35;
  v46.size.width = v37;
  v46.size.height = v39;
  Width = CGRectGetWidth(v46);
  v41 = [v0 view];
  if (v41)
  {
    v42 = v41;
    [v41 safeAreaInsets];
    v44 = v43;

    [v29 setFrame_];
    return;
  }

LABEL_21:
  __break(1u);
}

void sub_1BA4075C0(double a1)
{
  v2 = sub_1BA406DA0();
  v3 = [v2 view];

  if (v3)
  {
    [v3 setAlpha_];
  }

  else
  {
    __break(1u);
  }
}

void sub_1BA40767C(void *a1, uint64_t a2, uint64_t a3, const char **a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v18.receiver = a1;
  v18.super_class = type metadata accessor for CameraScannerFlowViewController();
  v11 = *a4;
  v12 = v18.receiver;
  objc_msgSendSuper2(&v18, v11, a3);
  v13 = objc_opt_self();
  v14 = swift_allocObject();
  *(v14 + 16) = v12;
  v17[4] = a6;
  v17[5] = v14;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 1107296256;
  v17[2] = sub_1B9F0B040;
  v17[3] = a7;
  v15 = _Block_copy(v17);
  v16 = v12;

  [v13 animateWithDuration:v15 animations:0.45];

  _Block_release(v15);
}

void sub_1BA407798()
{
  v17.receiver = v0;
  v17.super_class = type metadata accessor for CameraScannerFlowViewController();
  objc_msgSendSuper2(&v17, sel_viewDidLayoutSubviews);
  v1 = sub_1BA407920();
  v2 = [v0 view];
  if (v2)
  {
    v3 = v2;
    [v2 bounds];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;

    v18.origin.x = v5;
    v18.origin.y = v7;
    v18.size.width = v9;
    v18.size.height = v11;
    Width = CGRectGetWidth(v18);
    v13 = [v0 view];
    if (v13)
    {
      v14 = v13;
      [v13 safeAreaInsets];
      v16 = v15;

      [v1 setFrame_];
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

id sub_1BA407920()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI31CameraScannerFlowViewController____lazy_storage___closeButton;
  v2 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI31CameraScannerFlowViewController____lazy_storage___closeButton);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI31CameraScannerFlowViewController____lazy_storage___closeButton);
  }

  else
  {
    v4 = sub_1BA407984(v0);
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_1BA407984(uint64_t a1)
{
  sub_1BA0C6900();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [objc_opt_self() buttonWithType_];
  [v5 setMaximumContentSizeCategory_];
  [v5 addTarget:a1 action:sel_onClose forControlEvents:64];
  sub_1BA4A78A8();
  v6 = sub_1BA4A6758();
  v7 = [objc_opt_self() systemImageNamed_];

  sub_1BA4A7958();
  v8 = objc_opt_self();
  v9 = [v8 whiteColor];
  v10 = [v9 colorWithAlphaComponent_];

  sub_1BA4A78E8();
  v11 = [v8 blackColor];
  sub_1BA4A78F8();
  v12 = sub_1BA4A79A8();
  (*(*(v12 - 8) + 56))(v4, 0, 1, v12);
  sub_1BA4A79D8();
  return v5;
}

void sub_1BA407B6C(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC18HealthExperienceUI31CameraScannerFlowViewController____lazy_storage___closeButton);
  *(v1 + OBJC_IVAR____TtC18HealthExperienceUI31CameraScannerFlowViewController____lazy_storage___closeButton) = a1;
}

void (*sub_1BA407B80(id *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = sub_1BA407920();
  return sub_1BA407BC8;
}

void sub_1BA407BC8(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(v1 + OBJC_IVAR____TtC18HealthExperienceUI31CameraScannerFlowViewController____lazy_storage___closeButton);
  *(v1 + OBJC_IVAR____TtC18HealthExperienceUI31CameraScannerFlowViewController____lazy_storage___closeButton) = v2;
}

void sub_1BA407BE0()
{
  v1 = [v0 view];
  if (v1)
  {
    v2 = v1;
    [v1 bounds];
    v4 = v3;
    v6 = v5;
    v8 = v7;
    v10 = v9;

    v13.origin.x = v4;
    v13.origin.y = v6;
    v13.size.width = v8;
    v13.size.height = v10;
    CGRectGetWidth(v13);
    v11 = [v0 view];
    if (v11)
    {
      v12 = v11;
      [v11 safeAreaInsets];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_1BA407CE8()
{
  v1 = v0;
  v2 = [objc_allocWithZone(type metadata accessor for CameraScannerLoadingView()) init];
  v3 = sub_1BA0DA694();
  [v3 startAnimating];

  v4 = OBJC_IVAR____TtC18HealthExperienceUI31CameraScannerFlowViewController_loadingView;
  swift_beginAccess();
  v5 = *(v1 + v4);
  *(v1 + v4) = v2;
  v6 = v2;

  (*((*MEMORY[0x1E69E7D40] & *v1) + 0x128))(v6, 1, 0, 0);
}

void sub_1BA407DDC()
{
  v1 = MEMORY[0x1E69E7D40];
  v2 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x118))();
  if (v2)
  {
    v4 = v2;
    v5 = v3;
    v6 = OBJC_IVAR____TtC18HealthExperienceUI31CameraScannerFlowViewController_hasShownIntroduction;
    swift_beginAccess();
    if ((*(v0 + v6) & 1) == 0)
    {
      *(v0 + v6) = 1;
      v7 = v0 + OBJC_IVAR____TtC18HealthExperienceUI31CameraScannerFlowViewController_introductionView;
      swift_beginAccess();
      v8 = *v7;
      *v7 = v4;
      *(v7 + 1) = v5;
      v9 = v4;

      v10 = *((*v1 & *v0) + 0x130);
      v11 = v9;
      v10();
    }
  }
}

void sub_1BA407F14(void *a1, char a2, void (*a3)(id), uint64_t a4)
{
  [a1 setAlpha_];
  v9 = [v4 view];
  if (!v9)
  {
    __break(1u);
    goto LABEL_9;
  }

  v10 = v9;
  v11 = sub_1BA407920();
  [v10 insertSubview:a1 belowSubview:v11];

  v12 = [v4 view];
  if (!v12)
  {
LABEL_9:
    __break(1u);
    return;
  }

  v13 = v12;
  [v12 bounds];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;

  [a1 setFrame_];
  [a1 setAutoresizingMask_];
  if (a2)
  {
    v22 = objc_opt_self();
    v23 = swift_allocObject();
    *(v23 + 16) = a1;
    v33 = sub_1BA4094A4;
    v34 = v23;
    v29 = MEMORY[0x1E69E9820];
    v30 = 1107296256;
    v31 = sub_1B9F0B040;
    v32 = &block_descriptor_15_0;
    v24 = _Block_copy(&v29);
    v25 = a1;

    v26 = swift_allocObject();
    *(v26 + 16) = a3;
    *(v26 + 24) = a4;
    v33 = sub_1BA215C60;
    v34 = v26;
    v29 = MEMORY[0x1E69E9820];
    v30 = 1107296256;
    v31 = sub_1BA40695C;
    v32 = &block_descriptor_21_3;
    v27 = _Block_copy(&v29);
    sub_1B9F0F1B4(a3, a4);

    [v22 animateWithDuration:v24 animations:v27 completion:0.3];
    _Block_release(v27);
    _Block_release(v24);
  }

  else
  {
    v28 = [a1 setAlpha_];
    if (a3)
    {
      a3(v28);
    }
  }
}

void sub_1BA4081C4(void *a1, char a2, void (*a3)(id), uint64_t a4)
{
  v5 = v4;
  swift_getObjectType();
  v10 = sub_1BA4A3EA8();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = [a1 view];
  if (v44)
  {
    [v5 addChildViewController_];
    [v44 setAlpha_];
    v15 = [v5 view];
    if (v15)
    {
      v16 = v15;
      v17 = sub_1BA407920();
      [v16 insertSubview:v44 belowSubview:v17];

      [a1 didMoveToParentViewController_];
      v18 = [v5 view];
      if (v18)
      {
        v19 = v18;
        [v18 bounds];
        v21 = v20;
        v23 = v22;
        v25 = v24;
        v27 = v26;

        [v44 setFrame_];
        [v44 setAutoresizingMask_];
        if (a2)
        {
          v28 = objc_opt_self();
          v29 = swift_allocObject();
          *(v29 + 16) = v44;
          v49 = sub_1BA1127FC;
          v50 = v29;
          aBlock = MEMORY[0x1E69E9820];
          v46 = 1107296256;
          v47 = sub_1B9F0B040;
          v48 = &block_descriptor_27_3;
          v30 = _Block_copy(&aBlock);
          v31 = v44;

          v32 = swift_allocObject();
          *(v32 + 16) = a3;
          *(v32 + 24) = a4;
          v49 = sub_1BA0CAC90;
          v50 = v32;
          aBlock = MEMORY[0x1E69E9820];
          v46 = 1107296256;
          v47 = sub_1BA40695C;
          v48 = &block_descriptor_33_3;
          v33 = _Block_copy(&aBlock);
          sub_1B9F0F1B4(a3, a4);

          [v28 animateWithDuration:v30 animations:v33 completion:0.3];

          _Block_release(v33);
          _Block_release(v30);
        }

        else
        {
          v41 = [v44 setAlpha_];
          if (a3)
          {
            a3(v41);
          }

          v42 = v44;
        }

        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    return;
  }

  sub_1BA4A3DF8();
  v34 = sub_1BA4A3E88();
  v35 = sub_1BA4A6FA8();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    aBlock = v37;
    *v36 = 136315394;
    v38 = sub_1BA4A85D8();
    v40 = sub_1B9F0B82C(v38, v39, &aBlock);

    *(v36 + 4) = v40;
    *(v36 + 12) = 2080;
    *(v36 + 14) = sub_1B9F0B82C(0xD00000000000003ALL, 0x80000001BA5073C0, &aBlock);
    _os_log_impl(&dword_1B9F07000, v34, v35, "%s.%s Asked to insert a controller without a view", v36, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1BFAF43A0](v37, -1, -1);
    MEMORY[0x1BFAF43A0](v36, -1, -1);
  }

  (*(v11 + 8))(v14, v10);
}

void sub_1BA4086B8(void *a1, char a2, void (*a3)(id), uint64_t a4)
{
  swift_getObjectType();
  v8 = sub_1BA4A3EA8();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [a1 view];
  if (v13)
  {
    v32 = v13;
    if (a2)
    {
      v14 = objc_opt_self();
      v15 = swift_allocObject();
      *(v15 + 16) = v32;
      v37 = sub_1BA408E48;
      v38 = v15;
      aBlock = MEMORY[0x1E69E9820];
      v34 = 1107296256;
      v35 = sub_1B9F0B040;
      v36 = &block_descriptor_39_1;
      v16 = _Block_copy(&aBlock);
      v17 = v32;

      v18 = swift_allocObject();
      v18[2] = a1;
      v18[3] = v17;
      v18[4] = a3;
      v18[5] = a4;
      v37 = sub_1BA408E5C;
      v38 = v18;
      aBlock = MEMORY[0x1E69E9820];
      v34 = 1107296256;
      v35 = sub_1BA40695C;
      v36 = &block_descriptor_45_1;
      v19 = _Block_copy(&aBlock);
      v20 = v17;
      v21 = a1;
      sub_1B9F0F1B4(a3, a4);

      [v14 animateWithDuration:v16 animations:v19 completion:0.3];

      _Block_release(v19);
      _Block_release(v16);
    }

    else
    {
      [a1 willMoveToParentViewController_];
      [v32 removeFromSuperview];
      v29 = [a1 removeFromParentViewController];
      if (a3)
      {
        a3(v29);
      }

      v30 = v32;
    }
  }

  else
  {
    sub_1BA4A3DF8();
    v22 = sub_1BA4A3E88();
    v23 = sub_1BA4A6FA8();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      aBlock = v25;
      *v24 = 136315394;
      v26 = sub_1BA4A85D8();
      v28 = sub_1B9F0B82C(v26, v27, &aBlock);

      *(v24 + 4) = v28;
      *(v24 + 12) = 2080;
      *(v24 + 14) = sub_1B9F0B82C(0xD00000000000003ALL, 0x80000001BA507400, &aBlock);
      _os_log_impl(&dword_1B9F07000, v22, v23, "%s.%s Asked to remove a controller without a view", v24, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v25, -1, -1);
      MEMORY[0x1BFAF43A0](v24, -1, -1);
    }

    (*(v9 + 8))(v12, v8);
  }
}

uint64_t sub_1BA408AD8()
{
  if (qword_1EDC648D0 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for TapToRadarVisibilityManager();
  __swift_project_value_buffer(v0, qword_1EDC648D8);
  if ([objc_opt_self() isAppleInternalInstall])
  {
    sub_1B9F140B4();
    sub_1BA4A1CA8();
    v1 = v3 ^ 1;
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

id CameraScannerFlowViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
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
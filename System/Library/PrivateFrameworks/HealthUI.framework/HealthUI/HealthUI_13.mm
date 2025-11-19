void sub_1C3CFDE4C(void *a1)
{
  v14.receiver = v1;
  v14.super_class = type metadata accessor for CalendarViewLayout();
  objc_msgSendSuper2(&v14, sel_invalidateLayoutWithContext_, a1);
  type metadata accessor for CalendarLayoutInvalidationContext();
  v3 = swift_dynamicCastClass();
  if (v3)
  {
    if (*(v3 + OBJC_IVAR____TtC8HealthUI33CalendarLayoutInvalidationContext_shouldInvalidateAllDecorationViews) == 1)
    {
      v4 = OBJC_IVAR____TtC8HealthUI18CalendarViewLayout_overlays;
      swift_beginAccess();
      v5 = *&v1[v4];
      v6 = v5[2];
      if (v6)
      {
        swift_beginAccess();
        v7 = a1;
        v8 = 0;
        while (1)
        {
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *&v1[v4] = v5;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v5 = sub_1C3CFF140(v5);
            *&v1[v4] = v5;
          }

          if (v8 >= v5[2])
          {
            break;
          }

          v10 = *(type metadata accessor for OverlayConfiguration() - 8);
          v11 = v5 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
          v12 = *(v10 + 72) * v8;
          v13 = *&v11[v12];
          *&v11[v12] = 0;

          *&v1[v4] = v5;
          if (v6 == ++v8)
          {
            swift_endAccess();

            return;
          }
        }

        __break(1u);
      }
    }
  }
}

uint64_t sub_1C3CFE0B4(double a1, double a2, double a3, double a4)
{
  v9 = type metadata accessor for OverlayConfiguration();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for CalendarViewLayout();
  v46 = v4;
  v47.receiver = v4;
  v47.super_class = v13;
  v14 = objc_msgSendSuper2(&v47, sel_layoutAttributesForElementsInRect_, a1, a2, a3, a4);
  if (v14)
  {
    v15 = v14;
    sub_1C3CFF178();
    v16 = sub_1C3D202B4();
  }

  else
  {
    v16 = MEMORY[0x1E69E7CC0];
  }

  v48 = v16;
  v45 = *&v46[OBJC_IVAR____TtC8HealthUI18CalendarViewLayout_numberOfDaysPerWeek];
  if (v16 >> 62)
  {
    type metadata accessor for CalendarViewLayoutAttributes();

    v19 = sub_1C3D20954();
    result = swift_bridgeObjectRelease_n();
  }

  else
  {
    v17 = v16 & 0xFFFFFFFFFFFFFF8;

    sub_1C3D20A64();
    type metadata accessor for CalendarViewLayoutAttributes();
    if (swift_dynamicCastMetatype() || (v28 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10)) == 0)
    {

      v19 = v16;
    }

    else
    {
      v29 = v16;
      v30 = v17 + 32;
      while (swift_dynamicCastClass())
      {
        v30 += 8;
        if (!--v28)
        {
          v16 = v29;

          v19 = v29;
          goto LABEL_7;
        }
      }

      v16 = v29;

      v19 = v17 | 1;
    }
  }

LABEL_7:
  v43 = v10;
  v44 = v16;
  v42 = v9;
  if (v19 >> 62)
  {
    result = sub_1C3D20964();
    v20 = result;
    if (!result)
    {
      goto LABEL_23;
    }
  }

  else
  {
    v20 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v20)
    {
      goto LABEL_23;
    }
  }

  if (v20 < 1)
  {
    __break(1u);
    return result;
  }

  v21 = 0;
  do
  {
    if ((v19 & 0xC000000000000001) != 0)
    {
      v22 = MEMORY[0x1C692FEB0](v21, v19);
    }

    else
    {
      v22 = *(v19 + 8 * v21 + 32);
    }

    v23 = v22;
    ++v21;
    [v46 sectionInset];
    v25 = v24;
    v26 = OBJC_IVAR____TtC8HealthUI28CalendarViewLayoutAttributes_horizontalSectionInset;
    swift_beginAccess();
    *&v23[v26] = v25;
    v27 = OBJC_IVAR____TtC8HealthUI28CalendarViewLayoutAttributes_numberOfDaysPerWeek;
    swift_beginAccess();
    *&v23[v27] = v45;
  }

  while (v20 != v21);
LABEL_23:

  v31 = OBJC_IVAR____TtC8HealthUI18CalendarViewLayout_overlays;
  v32 = v46;
  swift_beginAccess();
  v33 = *&v32[v31];
  v34 = *(v33 + 16);
  if (!v34)
  {
    return v44;
  }

  sub_1C3D20374();
  v45 = *(v42 + 28);
  v35 = v33 + ((*(v43 + 80) + 32) & ~*(v43 + 80));
  v36 = *(v43 + 72);
  v43 = v33;

  v37 = v44;
  do
  {
    sub_1C3CFD3D8(v35, v12);
    sub_1C3D20364();
    sub_1C3D20314();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    (*(*(v12 + 6) + 8))();
    v38 = sub_1C3D200C4();

    v39 = sub_1C3D1E544();
    v40 = [v46 layoutAttributesForDecorationViewOfKind:v38 atIndexPath:v39];

    if (v40)
    {
      v41 = v40;
      MEMORY[0x1C692F8F0]();
      if (*((v48 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v48 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1C3D202C4();
      }

      sub_1C3D202F4();

      sub_1C3CFD43C(v12);
      v37 = v48;
    }

    else
    {
      sub_1C3CFD43C(v12);
    }

    v35 += v36;
    --v34;
  }

  while (v34);

  return v37;
}

size_t sub_1C3CFE6B8(unint64_t a1, unint64_t a2, id a3)
{
  v4 = v3;
  v8 = type metadata accessor for OverlayConfiguration();
  v9 = *(v8 - 1);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = (&v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = [v4 collectionView];
  if (!v13)
  {
    goto LABEL_4;
  }

  v39 = v9;
  v41 = v13;
  v14 = OBJC_IVAR____TtC8HealthUI18CalendarViewLayout_overlays;
  v15 = swift_beginAccess();
  v40 = v14;
  v16 = *&v4[v14];
  MEMORY[0x1EEE9AC00](v15);
  *(&v39 - 4) = a1;
  *(&v39 - 3) = a2;
  *(&v39 - 2) = a3;

  v17 = sub_1C3CFCAE8(sub_1C3CFF1C4, (&v39 - 6), v16);
  LOBYTE(v14) = v18;

  if (v14)
  {

LABEL_4:
    v19 = sub_1C3D200C4();
    v20 = sub_1C3D1E544();
    v21 = type metadata accessor for CalendarViewLayout();
    v42.receiver = v4;
    v42.super_class = v21;
    a3 = objc_msgSendSuper2(&v42, sel_layoutAttributesForDecorationViewOfKind_atIndexPath_, v19, v20);

    return a3;
  }

  if ((v17 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v22 = v17;
  v23 = *&v4[v40];
  if (v17 >= *(v23 + 16))
  {
LABEL_14:
    __break(1u);
LABEL_15:
    result = sub_1C3CFF140(v8);
    v8 = result;
    *&v4[v40] = result;
    goto LABEL_10;
  }

  v16 = (*(v39 + 80) + 32) & ~*(v39 + 80);
  v24 = *(v39 + 72);
  v17 *= v24;
  sub_1C3CFD3D8(v23 + v16 + v24 * v22, v12);
  a3 = *v12;
  if (*v12)
  {
    v25 = a3;
    sub_1C3CFD43C(v12);

    return a3;
  }

  v39 = v22;
  type metadata accessor for CalendarViewLayoutAttributes();
  v26 = *(v12 + 6);
  (*(v26 + 8))(*(v12 + 5), v26);
  v27 = sub_1C3D200C4();

  v28 = sub_1C3D1E544();
  v29 = [swift_getObjCClassFromMetadata() layoutAttributesForDecorationViewOfKind:v27 withIndexPath:v28];

  v30 = v12[1];
  v31 = v12[2];
  v32 = v12[3];
  v33 = v12[4];
  v34 = *(v26 + 16);
  v35 = v29;
  v34(v30, v31, v32, v33);
  v36 = v40;
  swift_beginAccess();
  v8 = *&v4[v36];
  a3 = v35;
  result = swift_isUniquelyReferenced_nonNull_native();
  *&v4[v36] = v8;
  if ((result & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_10:
  if (v39 < v8[2])
  {
    v38 = *(v8 + v16 + v17);
    *(v8 + v16 + v17) = a3;
    *&v4[v40] = v8;
    swift_endAccess();

    sub_1C3CFD43C(v12);
    return a3;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C3CFEA78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1C3D20374();
  sub_1C3D20364();
  sub_1C3D20314();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if ((*(*(a1 + 48) + 8))() == a2 && v6 == a3)
  {
  }

  else
  {
    v8 = sub_1C3D20A54();

    v9 = 0;
    if ((v8 & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  type metadata accessor for OverlayConfiguration();
  v9 = sub_1C3D1E554();
LABEL_11:

  return v9 & 1;
}

uint64_t sub_1C3CFEDE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t))
{
  sub_1C3D20374();
  sub_1C3D20364();
  sub_1C3D20314();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  a5(a4);

  return swift_getObjCClassFromMetadata();
}

id CalendarViewLayout.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id sub_1C3CFF0F4(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

unint64_t sub_1C3CFF178()
{
  result = qword_1EC087B70;
  if (!qword_1EC087B70)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC087B70);
  }

  return result;
}

uint64_t sub_1C3CFF1F0()
{
  result = sub_1C3D1E3C4();
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

HealthUI::StandardDateDataEntryValidator __swiftcall StandardDateDataEntryValidator.init()()
{
  v1 = v0;
  result.validationController.super.isa = [objc_allocWithZone(HKManualEntryValidationController) init];
  v1->validationController.super.isa = result.validationController.super.isa;
  return result;
}

uint64_t StandardDateDataEntryValidator.validateDuration(dateInterval:for:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  v8 = type metadata accessor for StandardDateDataEntryValidator.ValidationResult();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v17 - v12;
  v14 = *v3;
  v18 = *v3;
  result = sub_1C3CFF588(a1, a2, &v17 - v12);
  if (!v4)
  {
    sub_1C3CBAD64(v13, v10);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    sub_1C3D00978(v10, type metadata accessor for StandardDateDataEntryValidator.ValidationResult);
    if (EnumCaseMultiPayload)
    {
      return sub_1C3CFFA34(v13, a3);
    }

    else
    {
      v18 = v14;
      sub_1C3CFFA98(a1, a2, a3);
      return sub_1C3D00978(v13, type metadata accessor for StandardDateDataEntryValidator.ValidationResult);
    }
  }

  return result;
}

uint64_t sub_1C3CFF588@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  v7 = *v3;
  sub_1C3D1DC44();
  v9 = v8;
  v10 = [a2 sampleType];
  v11 = [v7 validateMinimumAllowedDuration:v10 ofType:v9];

  if (v11 == 2)
  {
    *a3 = 0;
    type metadata accessor for StandardDateDataEntryValidator.ValidationResult();
    return swift_storeEnumTagMultiPayload();
  }

  if (v11 == 1)
  {
    sub_1C3CBAE28();
    v14 = *(v13 + 48);
    v15 = sub_1C3D1DC54();
    (*(*(v15 - 8) + 16))(a3, a1, v15);
    a3[v14] = 0;
    type metadata accessor for StandardDateDataEntryValidator.ValidationResult();
    return swift_storeEnumTagMultiPayload();
  }

  if (!v11)
  {
    v12 = sub_1C3D1DC54();
    (*(*(v12 - 8) + 16))(a3, a1, v12);
    type metadata accessor for StandardDateDataEntryValidator.ValidationResult();
    return swift_storeEnumTagMultiPayload();
  }

  sub_1C3D20834();
  MEMORY[0x1C692F800](0xD00000000000001BLL, 0x80000001C3D86530);
  v26 = v11;
  type metadata accessor for HKManualEntryValidationResult(0);
  sub_1C3D20924();
  if (qword_1EC0850A8 != -1)
  {
    swift_once();
  }

  v17 = sub_1C3D1EDA4();
  __swift_project_value_buffer(v17, qword_1EC08DCB0);

  v18 = sub_1C3D1ED84();
  v19 = sub_1C3D204F4();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v26 = v21;
    *v20 = 136315394;
    *(v20 + 4) = sub_1C3C22C28(0xD00000000000001ELL, 0x80000001C3D639C0, &v26);
    *(v20 + 12) = 2080;

    v22 = sub_1C3D20134();
    v24 = sub_1C3C22C28(v22, v23, &v26);

    *(v20 + 14) = v24;
    _os_log_impl(&dword_1C3942000, v18, v19, "[%s]: Error: %s", v20, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1C69321D0](v21, -1, -1);
    MEMORY[0x1C69321D0](v20, -1, -1);
  }

  sub_1C3D009D8();
  swift_allocError();
  *v25 = 0;
  *(v25 + 8) = 0xE000000000000000;
  *(v25 + 16) = 1;
  return swift_willThrow();
}

BOOL StandardDateDataEntryValidator.ValidationResult.isValid.getter()
{
  v1 = type metadata accessor for StandardDateDataEntryValidator.ValidationResult();
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C3CBAD64(v0, v3);
  v4 = swift_getEnumCaseMultiPayload() == 0;
  sub_1C3D00978(v3, type metadata accessor for StandardDateDataEntryValidator.ValidationResult);
  return v4;
}

uint64_t type metadata accessor for StandardDateDataEntryValidator.ValidationResult()
{
  result = qword_1EC087BA8;
  if (!qword_1EC087BA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C3CFFA34(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StandardDateDataEntryValidator.ValidationResult();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C3CFFA98@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  v4 = v3;
  v8 = sub_1C3D1E1E4();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v40 - v13;
  v15 = *v4;
  sub_1C3D1E1B4();
  sub_1C3D1DC44();
  v17 = v16;
  v18 = [a2 sampleType];
  v19 = [v15 validateMaximumAllowedDuration:v18 ofType:v17];

  sub_1C3D1DC34();
  LOBYTE(v18) = sub_1C3D1E184();
  v20 = *(v9 + 8);
  v20(v11, v8);
  if (v18 & 1) != 0 || (sub_1C3D1DC14(), v21 = sub_1C3D1E184(), v20(v11, v8), (v21) || v19 == 2)
  {
    v20(v14, v8);
    *a3 = 1;
    type metadata accessor for StandardDateDataEntryValidator.ValidationResult();
    return swift_storeEnumTagMultiPayload();
  }

  if (v19 == 1)
  {
    v20(v14, v8);
    sub_1C3CBAE28();
    v25 = *(v24 + 48);
    v26 = sub_1C3D1DC54();
    (*(*(v26 - 8) + 16))(a3, a1, v26);
    a3[v25] = 1;
    type metadata accessor for StandardDateDataEntryValidator.ValidationResult();
    return swift_storeEnumTagMultiPayload();
  }

  if (!v19)
  {
    v20(v14, v8);
    v23 = sub_1C3D1DC54();
    (*(*(v23 - 8) + 16))(a3, a1, v23);
    type metadata accessor for StandardDateDataEntryValidator.ValidationResult();
    return swift_storeEnumTagMultiPayload();
  }

  v44 = 0;
  v45 = 0xE000000000000000;
  sub_1C3D20834();
  MEMORY[0x1C692F800](0xD00000000000001BLL, 0x80000001C3D86530);
  v47 = v19;
  type metadata accessor for HKManualEntryValidationResult(0);
  sub_1C3D20924();
  v28 = v44;
  v27 = v45;
  if (qword_1EC0850A8 != -1)
  {
    swift_once();
  }

  v29 = sub_1C3D1EDA4();
  __swift_project_value_buffer(v29, qword_1EC08DCB0);

  v30 = sub_1C3D1ED84();
  v31 = sub_1C3D204F4();

  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v42 = v31;
    v33 = v32;
    v43 = swift_slowAlloc();
    v47 = v43;
    *v33 = 136315394;
    *(v33 + 4) = sub_1C3C22C28(0xD00000000000001ELL, 0x80000001C3D639C0, &v47);
    *(v33 + 12) = 2080;
    v44 = v28;
    v45 = v27;
    v46 = 1;

    v34 = sub_1C3D20134();
    v41 = v30;
    v36 = sub_1C3C22C28(v34, v35, &v47);

    *(v33 + 14) = v36;
    v37 = v41;
    _os_log_impl(&dword_1C3942000, v41, v42, "[%s]: Error: %s", v33, 0x16u);
    v38 = v43;
    swift_arrayDestroy();
    MEMORY[0x1C69321D0](v38, -1, -1);
    MEMORY[0x1C69321D0](v33, -1, -1);
  }

  else
  {
  }

  sub_1C3D009D8();
  swift_allocError();
  *v39 = v28;
  *(v39 + 8) = v27;
  *(v39 + 16) = 1;
  swift_willThrow();
  return (v20)(v14, v8);
}

uint64_t StandardDateDataEntryValidator.ValidationResult.hash(into:)()
{
  v1 = v0;
  v2 = sub_1C3D1DC54();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for StandardDateDataEntryValidator.ValidationResult();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C3CBAD64(v1, v8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    (*(v3 + 32))(v5, v8, v2);
    MEMORY[0x1C6930170](0);
    sub_1C3D00804(&qword_1EC087B88, MEMORY[0x1E6968130]);
    sub_1C3D1FF84();
    return (*(v3 + 8))(v5, v2);
  }

  if (EnumCaseMultiPayload == 1)
  {
    sub_1C3CBAE28();
    v11 = v8[*(v10 + 48)];
    (*(v3 + 32))(v5, v8, v2);
    MEMORY[0x1C6930170](1);
    sub_1C3D00804(&qword_1EC087B88, MEMORY[0x1E6968130]);
    sub_1C3D1FF84();
    MEMORY[0x1C6930170](v11);
    return (*(v3 + 8))(v5, v2);
  }

  v13 = *v8;
  MEMORY[0x1C6930170](2);
  return MEMORY[0x1C6930170](v13);
}

uint64_t StandardDateDataEntryValidator.ValidationResult.hashValue.getter()
{
  sub_1C3D20B04();
  StandardDateDataEntryValidator.ValidationResult.hash(into:)();
  return sub_1C3D20B34();
}

uint64_t sub_1C3D002B8()
{
  sub_1C3D20B04();
  StandardDateDataEntryValidator.ValidationResult.hash(into:)();
  return sub_1C3D20B34();
}

uint64_t sub_1C3D002FC()
{
  sub_1C3D20B04();
  StandardDateDataEntryValidator.ValidationResult.hash(into:)();
  return sub_1C3D20B34();
}

uint64_t _s8HealthUI30StandardDateDataEntryValidatorV16ValidationResultO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C3D1DC54();
  v41 = *(v4 - 8);
  v42 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v41 - v8;
  v10 = type metadata accessor for StandardDateDataEntryValidator.ValidationResult();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v41 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v41 - v17;
  sub_1C3D00914();
  MEMORY[0x1EEE9AC00](v19 - 8);
  v21 = &v41 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = &v21[*(v22 + 56)];
  sub_1C3CBAD64(a1, v21);
  sub_1C3CBAD64(a2, v23);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_1C3CBAD64(v21, v18);
    if (!swift_getEnumCaseMultiPayload())
    {
      v39 = v41;
      v38 = v42;
      (*(v41 + 32))(v9, v23, v42);
      v35 = sub_1C3D1DBF4();
      v40 = *(v39 + 8);
      v40(v9, v38);
      v40(v18, v38);
      sub_1C3D00978(v21, type metadata accessor for StandardDateDataEntryValidator.ValidationResult);
      return v35 & 1;
    }

    v15 = v18;
    goto LABEL_8;
  }

  if (EnumCaseMultiPayload != 1)
  {
    sub_1C3CBAD64(v21, v12);
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      v34 = *v12 ^ *v23;
      goto LABEL_11;
    }

    goto LABEL_12;
  }

  sub_1C3CBAD64(v21, v15);
  sub_1C3CBAE28();
  v26 = *(v25 + 48);
  v27 = v15[v26];
  if (swift_getEnumCaseMultiPayload() != 1)
  {
LABEL_8:
    (*(v41 + 8))(v15, v42);
LABEL_12:
    v36 = sub_1C3D00914;
LABEL_13:
    sub_1C3D00978(v21, v36);
    v35 = 0;
    return v35 & 1;
  }

  v28 = v23[v26];
  v29 = v41;
  v30 = v23;
  v31 = v42;
  (*(v41 + 32))(v6, v30, v42);
  v32 = sub_1C3D1DBF4();
  v33 = *(v29 + 8);
  v33(v6, v31);
  v33(v15, v31);
  if ((v32 & 1) == 0)
  {
    v36 = type metadata accessor for StandardDateDataEntryValidator.ValidationResult;
    goto LABEL_13;
  }

  v34 = v27 ^ v28;
LABEL_11:
  sub_1C3D00978(v21, type metadata accessor for StandardDateDataEntryValidator.ValidationResult);
  v35 = v34 ^ 1;
  return v35 & 1;
}

unint64_t sub_1C3D00710()
{
  result = qword_1EC087B90;
  if (!qword_1EC087B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC087B90);
  }

  return result;
}

unint64_t sub_1C3D00768()
{
  result = qword_1EC087B98;
  if (!qword_1EC087B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC087B98);
  }

  return result;
}

uint64_t sub_1C3D00804(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1C3D00878()
{
  sub_1C3D1DC54();
  if (v0 <= 0x3F)
  {
    sub_1C3CBAE28();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_1C3D00914()
{
  if (!qword_1EC087BB8)
  {
    type metadata accessor for StandardDateDataEntryValidator.ValidationResult();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC087BB8);
    }
  }
}

uint64_t sub_1C3D00978(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1C3D009D8()
{
  result = qword_1EC087BC0;
  if (!qword_1EC087BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC087BC0);
  }

  return result;
}

unint64_t sub_1C3D00A58()
{
  swift_getKeyPath();
  sub_1C3D01F3C();
  sub_1C3D1E5D4();

  v1 = *(v0 + 32);
  sub_1C3D01F94(v1);
  return v1;
}

unint64_t sub_1C3D00AD4@<X0>(uint64_t *a1@<X0>, unint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C3D01F3C();
  sub_1C3D1E5D4();

  v4 = *(v3 + 32);
  *a2 = v4;
  return sub_1C3D01F94(v4);
}

uint64_t sub_1C3D00B50()
{
  swift_getKeyPath();
  sub_1C3D01F3C();
  sub_1C3D1E5C4();
}

uint64_t sub_1C3D00BEC(double a1)
{
  *(v2 + 184) = v1;
  *(v2 + 176) = a1;
  *(v2 + 192) = *v1;
  sub_1C3D01FCC();
  *(v2 + 200) = v3;
  *(v2 + 208) = *(v3 - 8);
  *(v2 + 216) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C3D00CD8, 0, 0);
}

uint64_t sub_1C3D00CD8()
{
  v36 = v0;
  v1 = [*(*(v0 + 184) + 24) brand];
  *(v0 + 224) = v1;
  if (v1)
  {
    v2 = v1;
    if (qword_1EC0850C8 != -1)
    {
      swift_once();
    }

    v3 = sub_1C3D1EDA4();
    *(v0 + 232) = __swift_project_value_buffer(v3, qword_1EC08DCF8);
    v4 = v2;
    v5 = sub_1C3D1ED84();
    v6 = sub_1C3D204E4();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v35 = v8;
      *v7 = 136446466;
      v9 = sub_1C3D20CD4();
      v11 = sub_1C3C22C28(v9, v10, &v35);

      *(v7 + 4) = v11;
      *(v7 + 12) = 2080;
      v12 = [v4 externalID];
      v13 = sub_1C3D20104();
      v15 = v14;

      v16 = sub_1C3C22C28(v13, v15, &v35);

      *(v7 + 14) = v16;
      _os_log_impl(&dword_1C3942000, v5, v6, "%{public}s starting to load logo for brand %s", v7, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1C69321D0](v8, -1, -1);
      MEMORY[0x1C69321D0](v7, -1, -1);
    }

    v17 = ceil(*(v0 + 176));
    if ((*&v17 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v17 > -9.22337204e18)
    {
      if (v17 < 9.22337204e18)
      {
        v33 = v4;
        v34 = *(*(v0 + 184) + 16);
        v18 = *(v0 + 208);
        v19 = *(v0 + 216);
        v20 = *(v0 + 200);
        v21 = sub_1C3D203F4();
        *(v0 + 240) = v21;
        *(v0 + 16) = v0;
        *(v0 + 56) = v0 + 144;
        *(v0 + 24) = sub_1C3D011EC;
        swift_continuation_init();
        *(v0 + 136) = v20;
        boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 112));
        sub_1C3C4251C();
        sub_1C3D20324();
        (*(v18 + 32))(boxed_opaque_existential_0, v19, v20);
        *(v0 + 80) = MEMORY[0x1E69E9820];
        *(v0 + 88) = 1107296256;
        *(v0 + 96) = sub_1C3D01C60;
        *(v0 + 104) = &block_descriptor_23;
        [v34 fetchLogoForBrand:v33 scale:v21 completion:v0 + 80];
        (*(v18 + 8))(boxed_opaque_existential_0, v20);

        return MEMORY[0x1EEE6DEC8](v0 + 16);
      }

      goto LABEL_20;
    }

    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (qword_1EC0850C8 != -1)
  {
LABEL_21:
    swift_once();
  }

  v23 = sub_1C3D1EDA4();
  __swift_project_value_buffer(v23, qword_1EC08DCF8);
  v24 = sub_1C3D1ED84();
  v25 = sub_1C3D20514();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v35 = v27;
    *v26 = 136446210;
    v28 = sub_1C3D20CD4();
    v30 = sub_1C3C22C28(v28, v29, &v35);

    *(v26 + 4) = v30;
    _os_log_impl(&dword_1C3942000, v24, v25, "%{public}s cannot load a brand logo for an account without a brand, aborting", v26, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v27);
    MEMORY[0x1C69321D0](v27, -1, -1);
    MEMORY[0x1C69321D0](v26, -1, -1);
  }

  v31 = *(v0 + 8);

  return v31();
}

uint64_t sub_1C3D011EC()
{
  v1 = *(*v0 + 48);
  *(*v0 + 248) = v1;
  if (v1)
  {
    v2 = sub_1C3D01A68;
  }

  else
  {
    v2 = sub_1C3D012FC;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1C3D012FC()
{
  v44 = v0;
  v1 = *(v0 + 240);
  v2 = *(v0 + 144);
  v3 = *(v0 + 152);
  *(v0 + 256) = v2;
  *(v0 + 264) = v3;

  v4 = objc_allocWithZone(MEMORY[0x1E69DCAB8]);
  sub_1C3D0204C(v2, v3);
  v5 = sub_1C3D1E074();
  v6 = [v4 initWithData_];
  *(v0 + 272) = v6;

  sub_1C3C31660(v2, v3);
  if (v6)
  {
    v7 = *(v0 + 224);
    v8 = sub_1C3D1ED84();
    v9 = sub_1C3D204E4();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = *(v0 + 224);
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v43[0] = v12;
      *v11 = 136446466;
      v13 = sub_1C3D20CD4();
      v15 = sub_1C3C22C28(v13, v14, v43);

      *(v11 + 4) = v15;
      *(v11 + 12) = 2080;
      v16 = [v10 externalID];
      v17 = sub_1C3D20104();
      v19 = v18;

      v20 = sub_1C3C22C28(v17, v19, v43);

      *(v11 + 14) = v20;
      _os_log_impl(&dword_1C3942000, v8, v9, "%{public}s received logo data for brand %s", v11, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1C69321D0](v12, -1, -1);
      MEMORY[0x1C69321D0](v11, -1, -1);
    }

    v21 = v6;
    *(v0 + 280) = sub_1C3D1FB74();
    sub_1C3D20374();
    *(v0 + 288) = sub_1C3D20364();
    v22 = sub_1C3D20314();
    v24 = v23;
    v25 = sub_1C3D01750;
  }

  else
  {
    v26 = objc_opt_self();
    v27 = sub_1C3D200C4();
    v28 = [v26 hk:3 error:v27 description:?];

    swift_willThrow();
    sub_1C3C31660(v2, v3);
    *(v0 + 296) = v28;
    v29 = v28;
    v30 = sub_1C3D1ED84();
    v31 = sub_1C3D204F4();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v43[0] = v34;
      *v32 = 136446466;
      v35 = sub_1C3D20CD4();
      v37 = sub_1C3C22C28(v35, v36, v43);

      *(v32 + 4) = v37;
      *(v32 + 12) = 2112;
      v38 = v28;
      v39 = _swift_stdlib_bridgeErrorToNSError();
      *(v32 + 14) = v39;
      *v33 = v39;
      _os_log_impl(&dword_1C3942000, v30, v31, "%{public}s failed to load image: %@", v32, 0x16u);
      sub_1C3C3467C(v33);
      MEMORY[0x1C69321D0](v33, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v34);
      MEMORY[0x1C69321D0](v34, -1, -1);
      MEMORY[0x1C69321D0](v32, -1, -1);
    }

    sub_1C3D20374();
    v40 = v28;
    *(v0 + 304) = sub_1C3D20364();
    v22 = sub_1C3D20314();
    v24 = v41;
    v25 = sub_1C3D018E4;
  }

  return MEMORY[0x1EEE6DFA0](v25, v22, v24);
}

uint64_t sub_1C3D01750()
{
  v1 = v0[35];
  v2 = v0[23];

  swift_getKeyPath();
  v3 = swift_task_alloc();
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v0[21] = v2;
  sub_1C3D01F3C();
  sub_1C3D1E5C4();

  return MEMORY[0x1EEE6DFA0](sub_1C3D0185C, 0, 0);
}

uint64_t sub_1C3D0185C()
{
  v1 = *(v0 + 264);
  v2 = *(v0 + 272);
  v3 = *(v0 + 256);

  sub_1C3C31660(v3, v1);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1C3D018E4()
{
  v1 = v0[37];
  v2 = v0[23];

  swift_getKeyPath();
  v3 = swift_task_alloc();
  *(v3 + 16) = v2;
  *(v3 + 24) = v1 | 0x4000000000000000;
  v0[20] = v2;
  sub_1C3D01F3C();
  sub_1C3D1E5C4();

  return MEMORY[0x1EEE6DFA0](sub_1C3D019F4, 0, 0);
}

uint64_t sub_1C3D019F4()
{
  v1 = *(v0 + 296);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1C3D01A68()
{
  v19 = v0;
  v1 = v0[30];
  swift_willThrow();

  v2 = v0[31];
  v0[37] = v2;
  v3 = v2;
  v4 = sub_1C3D1ED84();
  v5 = sub_1C3D204F4();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v18 = v8;
    *v6 = 136446466;
    v9 = sub_1C3D20CD4();
    v11 = sub_1C3C22C28(v9, v10, &v18);

    *(v6 + 4) = v11;
    *(v6 + 12) = 2112;
    v12 = v2;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 14) = v13;
    *v7 = v13;
    _os_log_impl(&dword_1C3942000, v4, v5, "%{public}s failed to load image: %@", v6, 0x16u);
    sub_1C3C3467C(v7);
    MEMORY[0x1C69321D0](v7, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x1C69321D0](v8, -1, -1);
    MEMORY[0x1C69321D0](v6, -1, -1);
  }

  sub_1C3D20374();
  v14 = v2;
  v0[38] = sub_1C3D20364();
  v16 = sub_1C3D20314();

  return MEMORY[0x1EEE6DFA0](sub_1C3D018E4, v16, v15);
}

void sub_1C3D01C60(uint64_t a1, void *a2, void *a3)
{
  __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_1C3D01FCC();
    v5 = a3;
    sub_1C3D20334();
  }

  else
  {
    v6 = a2;
    sub_1C3D1E084();

    sub_1C3D01FCC();
    sub_1C3D20344();
  }
}

uint64_t sub_1C3D01D0C()
{
  sub_1C3C564F4(*(v0 + 32));
  v1 = OBJC_IVAR____TtC8HealthUI25ClinicalAccountLogoLoader___observationRegistrar;
  v2 = sub_1C3D1E5F4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ClinicalAccountLogoLoader()
{
  result = qword_1EC087BD0;
  if (!qword_1EC087BD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C3D01E14()
{
  result = sub_1C3D1E5F4();
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

unint64_t sub_1C3D01EC0()
{
  v1 = *v0;
  swift_getKeyPath();
  sub_1C3D01F3C();
  sub_1C3D1E5D4();

  v2 = *(v1 + 32);
  sub_1C3D01F94(v2);
  return v2;
}

unint64_t sub_1C3D01F3C()
{
  result = qword_1EC087BE0;
  if (!qword_1EC087BE0)
  {
    type metadata accessor for ClinicalAccountLogoLoader();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC087BE0);
  }

  return result;
}

unint64_t sub_1C3D01F94(unint64_t result)
{
  if (result >> 62 == 1)
  {
    return (result & 0x3FFFFFFFFFFFFFFFLL);
  }

  if (!(result >> 62))
  {
  }

  return result;
}

void sub_1C3D01FCC()
{
  if (!qword_1EC087BE8)
  {
    sub_1C3C4251C();
    v0 = sub_1C3D20354();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC087BE8);
    }
  }
}

uint64_t sub_1C3D0204C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

void sub_1C3D020A0()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = *(v2 + 32);
  *(v2 + 32) = v1;
  sub_1C3D01F94(v1);
  sub_1C3C564F4(v3);
}

uint64_t sub_1C3D020F4()
{
  v0 = sub_1C3D1E9C4();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_1C3D1EA34();
  v5 = result;
  v6 = 0;
  v7 = *(result + 16);
  while (1)
  {
    v8 = v6;
    if (v7 == v6)
    {
LABEL_5:

      return v7 != v8;
    }

    if (v6 >= *(v5 + 16))
    {
      break;
    }

    (*(v1 + 16))(v3, v5 + ((*(v1 + 80) + 32) & ~*(v1 + 80)) + *(v1 + 72) * v6++, v0);
    v9 = sub_1C3D1E9A4();
    result = (*(v1 + 8))(v3, v0);
    if (v9)
    {
      goto LABEL_5;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C3D02260()
{
  v0 = sub_1C3D1E9C4();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_1C3D1EA34();
  v5 = result;
  v6 = 0;
  v7 = *(result + 16);
  while (1)
  {
    v8 = v6;
    if (v7 == v6)
    {
LABEL_5:

      return v7 != v8;
    }

    if (v6 >= *(v5 + 16))
    {
      break;
    }

    (*(v1 + 16))(v3, v5 + ((*(v1 + 80) + 32) & ~*(v1 + 80)) + *(v1 + 72) * v6++, v0);
    sub_1C3D1E924();
    v10 = v9;
    result = (*(v1 + 8))(v3, v0);
    if ((v10 & 1) == 0)
    {
      goto LABEL_5;
    }
  }

  __break(1u);
  return result;
}

id OverlayRoomPillValueProviderBalance.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id OverlayRoomPillValueProviderBalance.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for OverlayRoomPillValueProviderBalance();
  return objc_msgSendSuper2(&v2, sel_init);
}

id OverlayRoomPillValueProviderBalance.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for OverlayRoomPillValueProviderBalance();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1C3D0255C(unint64_t a1)
{
  v2 = sub_1C3D1E294();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v46 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1C3D200B4();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1C3D20094();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1C3C81C30(a1);
  if (!v11)
  {
    v36 = sub_1C3D200C4();
    v37 = HKUILocalizedString(v36);

    if (v37)
    {
      v38 = objc_allocWithZone(HKOverlayPillValue);
      v39 = sub_1C3D200C4();
      [v38 initWithValueString:v37 unitString:v39];

      return;
    }

    goto LABEL_38;
  }

  v12 = v11;
  v49 = v10;
  v50 = v7;
  *&v51 = MEMORY[0x1E69E7CD0];
  v13 = sub_1C3C5BE18(v11, &v51);

  if (v13 >> 62)
  {
LABEL_35:
    v14 = sub_1C3D20964();
  }

  else
  {
    v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v15 = MEMORY[0x1E69E7CC0];
  if (v14)
  {
    v53 = MEMORY[0x1E69E7CC0];
    sub_1C3C23EF4(0, v14 & ~(v14 >> 63), 0);
    if (v14 < 0)
    {
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      return;
    }

    v47 = v12;
    v48 = v4;
    v16 = 0;
    v17 = v53;
    do
    {
      if ((v13 & 0xC000000000000001) != 0)
      {
        v18 = MEMORY[0x1C692FEB0](v16, v13);
      }

      else
      {
        v18 = *(v13 + 8 * v16 + 32);
      }

      v19 = v18;
      v20 = OBJC_IVAR____TtC8HealthUI17BalanceChartPoint_collection;
      swift_beginAccess();
      sub_1C3C4D7A4(v19 + v20, &v51);

      v53 = v17;
      v22 = *(v17 + 16);
      v21 = *(v17 + 24);
      if (v22 >= v21 >> 1)
      {
        sub_1C3C23EF4((v21 > 1), v22 + 1, 1);
        v17 = v53;
      }

      ++v16;
      *(v17 + 16) = v22 + 1;
      sub_1C3972F30(&v51, v17 + 40 * v22 + 32);
    }

    while (v14 != v16);

    v12 = v47;
    v4 = v48;
    v15 = MEMORY[0x1E69E7CC0];
    v23 = *(v17 + 16);
    if (v23)
    {
      goto LABEL_14;
    }

LABEL_27:

    v13 = MEMORY[0x1E69E7CC0];
    v28 = *(MEMORY[0x1E69E7CC0] + 16);
    if (v28)
    {
      goto LABEL_19;
    }

    goto LABEL_28;
  }

  v17 = MEMORY[0x1E69E7CC0];
  v23 = *(MEMORY[0x1E69E7CC0] + 16);
  if (!v23)
  {
    goto LABEL_27;
  }

LABEL_14:
  v53 = v15;
  sub_1C3C23CBC(0, v23, 0);
  v13 = v53;
  v24 = v17 + 32;
  do
  {
    sub_1C3C4D7A4(v24, &v51);
    __swift_project_boxed_opaque_existential_0(&v51, v52);
    v25 = sub_1C3D1EA44();
    __swift_destroy_boxed_opaque_existential_0(&v51);
    v53 = v13;
    v27 = *(v13 + 16);
    v26 = *(v13 + 24);
    if (v27 >= v26 >> 1)
    {
      sub_1C3C23CBC((v26 > 1), v27 + 1, 1);
      v13 = v53;
    }

    *(v13 + 16) = v27 + 1;
    *(v13 + 8 * v27 + 32) = v25;
    v24 += 40;
    --v23;
  }

  while (v23);

  v28 = *(v13 + 16);
  if (v28)
  {
LABEL_19:
    v29 = 0;
    v30 = 32;
    do
    {
      v31 = *(v13 + v30);
      v32 = __OFADD__(v29, v31);
      v29 += v31;
      if (v32)
      {
        __break(1u);
        goto LABEL_35;
      }

      v30 += 8;
      --v28;
    }

    while (v28);

    if (v29 <= 0)
    {
      goto LABEL_29;
    }

    sub_1C3C702E8();
    v33 = swift_allocObject();
    v34 = MEMORY[0x1E69E6530];
    *(v33 + 16) = xmmword_1C3D5F370;
    v35 = MEMORY[0x1E69E65A8];
    *(v33 + 56) = v34;
    *(v33 + 64) = v35;
    *(v33 + 32) = v29;
    sub_1C3D200D4();

    sub_1C3D20084();
    sub_1C3D20074();
    *&v51 = v29;
    sub_1C3D20054();
    sub_1C3D20074();
    sub_1C3D200A4();
    goto LABEL_31;
  }

LABEL_28:

LABEL_29:
  v40 = sub_1C3D200C4();
  v41 = HKUILocalizedString(v40);

  if (!v41)
  {
    goto LABEL_37;
  }

  sub_1C3D20104();

  sub_1C3D20044();
LABEL_31:
  if (qword_1EC080DC0 != -1)
  {
    swift_once();
  }

  v42 = qword_1EC08DBD8;
  sub_1C3D1E284();
  sub_1C3D20124();
  v43 = objc_allocWithZone(HKOverlayPillValue);
  v44 = sub_1C3D200C4();

  v45 = sub_1C3D200C4();

  [v43 initWithValueString:v44 unitString:v45];
}

uint64_t AudiogramLongitudinalChartData.aggregationIntervalMidpoint.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC8HealthUI30AudiogramLongitudinalChartData_aggregationIntervalMidpoint;
  v4 = sub_1C3D1E1E4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_1C3D02CD0(unint64_t a1, _BYTE *a2, uint64_t a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  sub_1C3C27AE0();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &ObjectType - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1C3D1E1E4();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &ObjectType - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = &ObjectType - v17;
  MEMORY[0x1EEE9AC00](v16);
  v20 = &ObjectType - v19;
  LOBYTE(a2) = *a2;
  *&v4[OBJC_IVAR____TtC8HealthUI30AudiogramLongitudinalChartData_aggregateSummary] = sub_1C3CE9E00(a1);
  v30 = a2;
  if (!(a1 >> 62))
  {
    result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_3;
    }

LABEL_8:

    (*(v12 + 56))(v10, 1, 1, v11);
    sub_1C3D1E1B4();
    if ((*(v12 + 48))(v10, 1, v11) != 1)
    {
      sub_1C3C27B38(v10);
    }

    goto LABEL_10;
  }

  result = sub_1C3D20964();
  if (!result)
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((a1 & 0xC000000000000001) != 0)
  {
    v22 = MEMORY[0x1C692FEB0](0, a1);
    goto LABEL_6;
  }

  if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v22 = *(a1 + 32);
LABEL_6:
    v23 = v22;

    v24 = [v23 startDate];

    sub_1C3D1E1A4();
    v25 = *(v12 + 32);
    v25(v10, v15, v11);
    (*(v12 + 56))(v10, 0, 1, v11);
    v25(v18, v10, v11);
LABEL_10:
    sub_1C3CCEB04(v18, a3, v20);
    (*(v12 + 8))(v18, v11);
    (*(v12 + 32))(&v4[OBJC_IVAR____TtC8HealthUI30AudiogramLongitudinalChartData_aggregationIntervalMidpoint], v20, v11);
    v29.receiver = v4;
    v29.super_class = ObjectType;
    v26 = objc_msgSendSuper2(&v29, sel_init);
    v27 = sub_1C3D1E3C4();
    (*(*(v27 - 8) + 8))(a3, v27);
    return v26;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C3D0304C@<X0>(void **a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = sub_1C3D1E3C4();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a1;
  sub_1C3C27C60();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C3D5EAE0;
  *(inited + 32) = v12;
  v18 = a2;
  (*(v9 + 16))(v11, a3, v8);
  v14 = objc_allocWithZone(type metadata accessor for AudiogramLongitudinalChartData());
  v15 = v12;
  result = sub_1C3D02CD0(inited, &v18, v11);
  *a4 = result;
  return result;
}

uint64_t sub_1C3D03190(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v6 = sub_1C3D1E3C4();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a3;
  (*(v9 + 16))(v8, a4);
  v10 = objc_allocWithZone(type metadata accessor for AudiogramLongitudinalChartData());

  return sub_1C3D02CD0(v11, &v14, v8);
}

id AudiogramLongitudinalChartData.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id AudiogramLongitudinalChartData.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1C3D033C8(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_1C3CA9748(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_1C3D03444(v6);
  return sub_1C3D208A4();
}

void sub_1C3D03444(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_1C3D20A04();
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
        type metadata accessor for AudiogramLongitudinalChartData();
        v6 = sub_1C3D202E4();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = ((v6 & 0xFFFFFFFFFFFFFF8) + 32);
      v8[1] = v5;
      sub_1C3D03630(v8, v9, a1, v4);
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
    sub_1C3D03548(0, v2, 1, a1);
  }
}

void sub_1C3D03548(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 8 * a3 - 8;
    v6 = a1 - a3;
LABEL_5:
    v17 = a3;
    v7 = *(v4 + 8 * a3);
    v15 = v6;
    v16 = v5;
    while (1)
    {
      v8 = *v5;
      v9 = v7;
      v10 = v8;
      v11 = sub_1C3D1E194();

      if ((v11 & 1) == 0)
      {
LABEL_4:
        a3 = v17 + 1;
        v5 = v16 + 8;
        v6 = v15 - 1;
        if (v17 + 1 == a2)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v4)
      {
        break;
      }

      v12 = *v5;
      v7 = *(v5 + 8);
      *v5 = v7;
      *(v5 + 8) = v12;
      v5 -= 8;
      if (__CFADD__(v6++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_1C3D03630(void ***a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3;
  v7 = a3[1];
  if (v7 < 1)
  {
    v9 = MEMORY[0x1E69E7CC0];
LABEL_89:
    v11 = *a1;
    if (!*a1)
    {
      goto LABEL_127;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_121:
      v9 = sub_1C3CA7838(v9);
    }

    v90 = *(v9 + 2);
    if (v90 >= 2)
    {
      do
      {
        v91 = *v6;
        if (!*v6)
        {
          goto LABEL_125;
        }

        v6 = (v90 - 1);
        v92 = *&v9[16 * v90];
        v93 = *&v9[16 * v90 + 24];
        sub_1C3D03C70((v91 + 8 * v92), (v91 + 8 * *&v9[16 * v90 + 16]), (v91 + 8 * v93), v11);
        if (v5)
        {
          break;
        }

        if (v93 < v92)
        {
          goto LABEL_114;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_1C3CA7838(v9);
        }

        if (v90 - 2 >= *(v9 + 2))
        {
          goto LABEL_115;
        }

        v94 = &v9[16 * v90];
        *v94 = v92;
        *(v94 + 1) = v93;
        sub_1C3CA77AC(v90 - 1);
        v90 = *(v9 + 2);
        v6 = a3;
      }

      while (v90 > 1);
    }

LABEL_99:

    return;
  }

  v8 = 0;
  v9 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v10 = v8;
    v11 = (v8 + 1);
    if (v8 + 1 < v7)
    {
      v103 = v7;
      v97 = v9;
      v12 = *v6;
      v13 = *(*v6 + 8 * v11);
      v6 = (8 * v10);
      v14 = v10;
      v15 = (v12 + 8 * v10);
      v17 = *v15;
      v16 = v15 + 2;
      v18 = v13;
      v19 = v17;
      v105 = sub_1C3D1E194();

      v9 = v14;
      v20 = (v14 + 2);
      while (1)
      {
        v11 = v103;
        if (v103 == v20)
        {
          break;
        }

        v21 = *(v16 - 1);
        v22 = *v16;
        v23 = v21;
        LODWORD(v21) = sub_1C3D1E194() & 1;

        v20 = (v20 + 1);
        ++v16;
        if ((v105 & 1) != v21)
        {
          v11 = (v20 - 1);
          break;
        }
      }

      v10 = v9;
      if ((v105 & 1) == 0)
      {
        goto LABEL_18;
      }

      if (v11 < v9)
      {
        goto LABEL_118;
      }

      if (v9 < v11)
      {
        v24 = 8 * v11 - 8;
        v25 = v11;
        v26 = v9;
        v9 = v97;
        do
        {
          v25 = (v25 - 1);
          if (v26 != v25)
          {
            v28 = *a3;
            if (!*a3)
            {
              goto LABEL_124;
            }

            v27 = *(v6 + v28);
            *(v6 + v28) = *(v28 + v24);
            *(v28 + v24) = v27;
          }

          ++v26;
          v24 -= 8;
          ++v6;
        }

        while (v26 < v25);
        v6 = a3;
      }

      else
      {
LABEL_18:
        v6 = a3;
        v9 = v97;
      }
    }

    v29 = v6[1];
    if (v11 < v29)
    {
      if (__OFSUB__(v11, v10))
      {
        goto LABEL_117;
      }

      if (v11 - v10 < a4)
      {
        if (__OFADD__(v10, a4))
        {
          goto LABEL_119;
        }

        if (&v10[a4] >= v29)
        {
          v30 = v6[1];
        }

        else
        {
          v30 = &v10[a4];
        }

        if (v30 < v10)
        {
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (v11 != v30)
        {
          break;
        }
      }
    }

LABEL_38:
    if (v11 < v10)
    {
      goto LABEL_116;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v9 = sub_1C3C4622C(0, *(v9 + 2) + 1, 1, v9);
    }

    v45 = *(v9 + 2);
    v44 = *(v9 + 3);
    v46 = v45 + 1;
    if (v45 >= v44 >> 1)
    {
      v9 = sub_1C3C4622C((v44 > 1), v45 + 1, 1, v9);
    }

    *(v9 + 2) = v46;
    v47 = &v9[16 * v45];
    *(v47 + 4) = v10;
    *(v47 + 5) = v11;
    v48 = *a1;
    if (!*a1)
    {
      goto LABEL_126;
    }

    v107 = v11;
    if (v45)
    {
      while (1)
      {
        v49 = v46 - 1;
        if (v46 >= 4)
        {
          break;
        }

        if (v46 == 3)
        {
          v50 = *(v9 + 4);
          v51 = *(v9 + 5);
          v60 = __OFSUB__(v51, v50);
          v52 = v51 - v50;
          v53 = v60;
LABEL_58:
          if (v53)
          {
            goto LABEL_105;
          }

          v66 = &v9[16 * v46];
          v68 = *v66;
          v67 = *(v66 + 1);
          v69 = __OFSUB__(v67, v68);
          v70 = v67 - v68;
          v71 = v69;
          if (v69)
          {
            goto LABEL_108;
          }

          v72 = &v9[16 * v49 + 32];
          v74 = *v72;
          v73 = *(v72 + 1);
          v60 = __OFSUB__(v73, v74);
          v75 = v73 - v74;
          if (v60)
          {
            goto LABEL_111;
          }

          if (__OFADD__(v70, v75))
          {
            goto LABEL_112;
          }

          if (v70 + v75 >= v52)
          {
            if (v52 < v75)
            {
              v49 = v46 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        v76 = &v9[16 * v46];
        v78 = *v76;
        v77 = *(v76 + 1);
        v60 = __OFSUB__(v77, v78);
        v70 = v77 - v78;
        v71 = v60;
LABEL_72:
        if (v71)
        {
          goto LABEL_107;
        }

        v79 = &v9[16 * v49];
        v81 = *(v79 + 4);
        v80 = *(v79 + 5);
        v60 = __OFSUB__(v80, v81);
        v82 = v80 - v81;
        if (v60)
        {
          goto LABEL_110;
        }

        if (v82 < v70)
        {
          goto LABEL_3;
        }

LABEL_79:
        v87 = v49 - 1;
        if (v49 - 1 >= v46)
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

        if (!*v6)
        {
          goto LABEL_123;
        }

        v88 = *&v9[16 * v87 + 32];
        v11 = *&v9[16 * v49 + 40];
        sub_1C3D03C70((*v6 + 8 * v88), (*v6 + 8 * *&v9[16 * v49 + 32]), (*v6 + 8 * v11), v48);
        if (v5)
        {
          goto LABEL_99;
        }

        if (v11 < v88)
        {
          goto LABEL_101;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_1C3CA7838(v9);
        }

        if (v87 >= *(v9 + 2))
        {
          goto LABEL_102;
        }

        v89 = &v9[16 * v87];
        *(v89 + 4) = v88;
        *(v89 + 5) = v11;
        sub_1C3CA77AC(v49);
        v46 = *(v9 + 2);
        if (v46 <= 1)
        {
          goto LABEL_3;
        }
      }

      v54 = &v9[16 * v46 + 32];
      v55 = *(v54 - 64);
      v56 = *(v54 - 56);
      v60 = __OFSUB__(v56, v55);
      v57 = v56 - v55;
      if (v60)
      {
        goto LABEL_103;
      }

      v59 = *(v54 - 48);
      v58 = *(v54 - 40);
      v60 = __OFSUB__(v58, v59);
      v52 = v58 - v59;
      v53 = v60;
      if (v60)
      {
        goto LABEL_104;
      }

      v61 = &v9[16 * v46];
      v63 = *v61;
      v62 = *(v61 + 1);
      v60 = __OFSUB__(v62, v63);
      v64 = v62 - v63;
      if (v60)
      {
        goto LABEL_106;
      }

      v60 = __OFADD__(v52, v64);
      v65 = v52 + v64;
      if (v60)
      {
        goto LABEL_109;
      }

      if (v65 >= v57)
      {
        v83 = &v9[16 * v49 + 32];
        v85 = *v83;
        v84 = *(v83 + 1);
        v60 = __OFSUB__(v84, v85);
        v86 = v84 - v85;
        if (v60)
        {
          goto LABEL_113;
        }

        if (v52 < v86)
        {
          v49 = v46 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_58;
    }

LABEL_3:
    v7 = v6[1];
    v8 = v107;
    if (v107 >= v7)
    {
      goto LABEL_89;
    }
  }

  v98 = v9;
  v99 = v5;
  v31 = v10;
  v32 = *v6;
  v33 = *v6 + 8 * v11 - 8;
  v95 = v31;
  v34 = v31 - v11;
  v101 = v30;
LABEL_31:
  v104 = v33;
  v106 = v11;
  v35 = *(v32 + 8 * v11);
  v36 = v34;
  v37 = v33;
  while (1)
  {
    v38 = *v37;
    v39 = v35;
    v40 = v38;
    v41 = sub_1C3D1E194();

    if ((v41 & 1) == 0)
    {
LABEL_30:
      v11 = (v106 + 1);
      v33 = v104 + 8;
      --v34;
      if ((v106 + 1) != v101)
      {
        goto LABEL_31;
      }

      v11 = v101;
      v9 = v98;
      v5 = v99;
      v6 = a3;
      v10 = v95;
      goto LABEL_38;
    }

    if (!v32)
    {
      break;
    }

    v42 = *v37;
    v35 = *(v37 + 8);
    *v37 = v35;
    *(v37 + 8) = v42;
    v37 -= 8;
    if (__CFADD__(v36++, 1))
    {
      goto LABEL_30;
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

uint64_t sub_1C3D03C70(void **__dst, id *__src, id *a3, void **a4)
{
  v4 = a3;
  v5 = __src;
  v6 = __dst;
  v7 = __src - __dst;
  v8 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v8 = __src - __dst;
  }

  v9 = v8 >> 3;
  v10 = a3 - __src;
  v11 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v11 = a3 - __src;
  }

  v12 = v11 >> 3;
  if (v9 >= v11 >> 3)
  {
    v15 = a4;
    if (a4 != __src || &__src[v12] <= a4)
    {
      memmove(a4, __src, 8 * v12);
    }

    v37 = &v15[v12];
    if (v10 >= 8 && v5 > v6)
    {
      v35 = v6;
LABEL_27:
      v24 = v5 - 1;
      v25 = v4 - 1;
      v26 = v37;
      do
      {
        v27 = v25;
        v28 = v25 + 1;
        v29 = *--v26;
        v30 = v24;
        v31 = *v24;
        v36 = v29;
        v32 = v31;
        v33 = sub_1C3D1E194();

        if (v33)
        {
          v4 = v27;
          if (v28 != v5)
          {
            *v27 = *v30;
          }

          if (v37 <= v15 || (v5 = v30, v30 <= v35))
          {
            v5 = v30;
            goto LABEL_38;
          }

          goto LABEL_27;
        }

        if (v28 != v37)
        {
          *v27 = *v26;
        }

        v25 = v27 - 1;
        v37 = v26;
        v24 = v30;
      }

      while (v26 > v15);
      v37 = v26;
    }
  }

  else
  {
    if (a4 != __dst || &__dst[v9] <= a4)
    {
      v14 = a4;
      memmove(a4, __dst, 8 * v9);
      a4 = v14;
      v5 = __src;
    }

    v37 = &a4[v9];
    v15 = a4;
    if (v7 >= 8 && v5 < v4)
    {
      while (1)
      {
        v16 = v4;
        v17 = v6;
        v18 = *v15;
        v19 = *v5;
        v20 = v18;
        LOBYTE(v18) = sub_1C3D1E194();

        if ((v18 & 1) == 0)
        {
          break;
        }

        v21 = v5;
        v22 = v17;
        v23 = v17 == v5++;
        if (!v23)
        {
          goto LABEL_16;
        }

LABEL_17:
        v6 = v22 + 1;
        if (v15 < v37)
        {
          v4 = v16;
          if (v5 < v16)
          {
            continue;
          }
        }

        goto LABEL_19;
      }

      v21 = v15;
      v22 = v17;
      v23 = v17 == v15++;
      if (v23)
      {
        goto LABEL_17;
      }

LABEL_16:
      *v22 = *v21;
      goto LABEL_17;
    }

LABEL_19:
    v5 = v6;
  }

LABEL_38:
  if (v5 != v15 || v5 >= (v15 + ((v37 - v15 + (v37 - v15 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v5, v15, 8 * ((v37 - v15) / 8));
  }

  return 1;
}

uint64_t sub_1C3D03F54(uint64_t a1, void (*a2)(uint64_t, uint64_t))
{
  v3 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    v25 = MEMORY[0x1E69E7CC0];
    v24 = a1;
    sub_1C3D208C4();
    v5 = v24;
    v6 = v24 + 64;
    result = sub_1C3D207C4();
    v7 = result;
    v8 = 0;
    v9 = *(v24 + 36);
    v22 = v3;
    while ((v7 & 0x8000000000000000) == 0 && v7 < 1 << *(v5 + 32))
    {
      v11 = v7 >> 6;
      if ((*(v6 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
      {
        goto LABEL_22;
      }

      if (v9 != *(v5 + 36))
      {
        goto LABEL_23;
      }

      v12 = v6;
      v13 = *(*(v5 + 48) + 8 * v7);
      v14 = *(*(v5 + 56) + 8 * v7);

      a2(v13, v14);

      sub_1C3D20894();
      sub_1C3D208D4();
      sub_1C3D208E4();
      result = sub_1C3D208A4();
      v5 = v24;
      v10 = 1 << *(v24 + 32);
      if (v7 >= v10)
      {
        goto LABEL_24;
      }

      v15 = *(v12 + 8 * v11);
      if ((v15 & (1 << v7)) == 0)
      {
        goto LABEL_25;
      }

      if (v9 != *(v24 + 36))
      {
        goto LABEL_26;
      }

      v6 = v12;
      v16 = v15 & (-2 << (v7 & 0x3F));
      if (v16)
      {
        v10 = __clz(__rbit64(v16)) | v7 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v17 = v11 << 6;
        v18 = v11 + 1;
        v19 = (v24 + 72 + 8 * v11);
        while (v18 < (v10 + 63) >> 6)
        {
          v21 = *v19++;
          v20 = v21;
          v17 += 64;
          ++v18;
          if (v21)
          {
            result = sub_1C3C91918(v7, v9, 0);
            v10 = __clz(__rbit64(v20)) + v17;
            goto LABEL_18;
          }
        }

        result = sub_1C3C91918(v7, v9, 0);
LABEL_18:
        v5 = v24;
      }

      ++v8;
      v7 = v10;
      if (v8 == v22)
      {
        return v25;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
  }

  return result;
}

uint64_t _s8HealthUI30AudiogramLongitudinalChartDataC013makeAggregateeF010audiograms19aggregationStrategy8calendarSayACGSaySo17HKAudiogramSampleCG_AA011AggregationK0O10Foundation8CalendarVtFZ_0(unint64_t a1, _BYTE *a2, uint64_t a3)
{
  v71 = a3;
  v70 = sub_1C3D1E3C4();
  v5 = *(v70 - 8);
  MEMORY[0x1EEE9AC00](v70);
  v69 = &v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = sub_1C3D1FE54();
  v7 = *(v68 - 8);
  MEMORY[0x1EEE9AC00](v68);
  v67 = &v62 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = sub_1C3D1E1E4();
  v9 = *(v78 - 8);
  v10 = MEMORY[0x1EEE9AC00](v78);
  v63 = &v62 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v72 = &v62 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v79 = &v62 - v14;
  LODWORD(v15) = *a2;
  if (v15 <= 2 && !*a2)
  {

    goto LABEL_49;
  }

  v16 = sub_1C3D20A54();

  if (v16)
  {
LABEL_49:
    MEMORY[0x1EEE9AC00](v17);
    *(&v62 - 16) = v15;
    *(&v62 - 1) = v71;
    sub_1C3CB716C(sub_1C3D04C84, (&v62 - 4), a1);

    v81[0] = sub_1C3CA7974(v59);
    sub_1C3D033C8(v81);
LABEL_59:

    return v81[0];
  }

  v18 = sub_1C3C74F94(MEMORY[0x1E69E7CC0]);
  v19 = a1;
  if (a1 >> 62)
  {
LABEL_57:
    v20 = sub_1C3D20964();
    v19 = a1;
    if (v20)
    {
      goto LABEL_6;
    }

    goto LABEL_58;
  }

  v20 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v20)
  {
LABEL_58:
    MEMORY[0x1EEE9AC00](v20);
    *(&v62 - 16) = v15;
    *(&v62 - 1) = v71;
    sub_1C3D03F54(v18, sub_1C3D04C78);

    v81[0] = sub_1C3CA7974(v60);
    sub_1C3D033C8(v81);

    goto LABEL_59;
  }

LABEL_6:
  v21 = 0;
  v77 = v19 & 0xC000000000000001;
  v62 = v19 & 0xFFFFFFFFFFFFFF8;
  v65 = (v5 + 16);
  v66 = (v9 + 16);
  v64 = (v7 + 8);
  v75 = v19;
  v76 = (v9 + 8);
  v74 = v15;
  v73 = v20;
  while (1)
  {
    if (v77)
    {
      v23 = MEMORY[0x1C692FEB0](v21);
    }

    else
    {
      if (v21 >= *(v62 + 16))
      {
        goto LABEL_53;
      }

      v23 = *(v19 + 8 * v21 + 32);
    }

    v9 = v23;
    a1 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      __break(1u);
LABEL_51:
      __break(1u);
LABEL_52:
      __break(1u);
LABEL_53:
      __break(1u);
LABEL_54:
      __break(1u);
LABEL_55:
      __break(1u);
LABEL_56:
      __break(1u);
      goto LABEL_57;
    }

    v24 = [v23 startDate];
    sub_1C3D1E1A4();

    if (v15 > 2)
    {
      if (v15 == 3)
      {
        v32 = v71;
        v33 = sub_1C3D1E364();
        v36 = sub_1C3D1E2E4();
        v34 = sub_1C3D1E174();
        v35 = [v33 hk:v36 startOfWeekWithFirstWeekday:v34 beforeDate:0 addingWeeks:?];
      }

      else if (v15 == 4)
      {
        v32 = v71;
        v33 = sub_1C3D1E364();
        v34 = sub_1C3D1E174();
        v35 = [v33 hk:v34 startOfMonthForDate:?];
      }

      else
      {
        v32 = v71;
        v33 = sub_1C3D1E364();
        v34 = sub_1C3D1E174();
        v35 = [v33 hk:v34 startOfYearForDate:0 addingYears:?];
      }

      v40 = v35;

      v41 = v72;
      sub_1C3D1E1A4();

      v42 = v78;
      (*v66)(v63, v41, v78);
      (*v65)(v69, v32, v70);
      v43 = v67;
      sub_1C3D1FE14();
      v5 = sub_1C3D1FE34();
      (*v64)(v43, v68);
      v44 = *v76;
      (*v76)(v41, v42);
      v44(v79, v42);
      if (!v18[2])
      {
        goto LABEL_34;
      }
    }

    else if (v15)
    {
      if (v15 == 1)
      {
        v15 = v79;
        v25 = sub_1C3D1E174();
        v26 = HKStartOfHourForDate(v25);

        v27 = v72;
        sub_1C3D1E1A4();

        sub_1C3D1E0A4();
        v29 = v28;
        v5 = *&v28;
        v7 = *v76;
        v30 = v27;
        v31 = v78;
        (*v76)(v30, v78);
        v7(v15, v31);
        if ((v5 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
        {
          goto LABEL_54;
        }

        if (v29 <= -9.22337204e18)
        {
          goto LABEL_55;
        }

        if (v29 >= 9.22337204e18)
        {
          goto LABEL_56;
        }

        v5 = v29;
        if (!v18[2])
        {
          goto LABEL_34;
        }
      }

      else
      {
        v37 = v78;
        v38 = v79;
        (*v66)(v72, v79, v78);
        (*v65)(v69, v71, v70);
        v39 = v67;
        sub_1C3D1FE14();
        v5 = sub_1C3D1FE34();
        (*v64)(v39, v68);
        (*v76)(v38, v37);
        if (!v18[2])
        {
          goto LABEL_34;
        }
      }
    }

    else
    {
      (*v76)(v79, v78);
      v5 = 0;
      if (!v18[2])
      {
        goto LABEL_34;
      }
    }

    v45 = sub_1C3CA029C(v5);
    if (v46)
    {
      v81[0] = *(v18[7] + 8 * v45);

      goto LABEL_35;
    }

LABEL_34:
    v81[0] = MEMORY[0x1E69E7CC0];
LABEL_35:
    v9 = v9;
    MEMORY[0x1C692F8F0]();
    if (*((v81[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v81[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1C3D202C4();
    }

    sub_1C3D202F4();
    v47 = v81[0];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v80 = v18;
    v7 = v18;
    v15 = sub_1C3CA029C(v5);
    v50 = v18[2];
    v51 = (v49 & 1) == 0;
    v52 = v50 + v51;
    if (__OFADD__(v50, v51))
    {
      goto LABEL_51;
    }

    v53 = v49;
    if (v18[3] < v52)
    {
      break;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      v18 = v80;
      if (v49)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v7 = &v80;
      sub_1C3CF8C8C();
      v18 = v80;
      if (v53)
      {
LABEL_7:
        v22 = v18[7];
        v5 = *(v22 + 8 * v15);
        *(v22 + 8 * v15) = v47;

        goto LABEL_8;
      }
    }

LABEL_44:
    v18[(v15 >> 6) + 8] |= 1 << v15;
    *(v18[6] + 8 * v15) = v5;
    *(v18[7] + 8 * v15) = v47;

    v56 = v18[2];
    v57 = __OFADD__(v56, 1);
    v58 = v56 + 1;
    if (v57)
    {
      goto LABEL_52;
    }

    v18[2] = v58;
LABEL_8:
    ++v21;
    v19 = v75;
    LODWORD(v15) = v74;
    if (a1 == v73)
    {
      goto LABEL_58;
    }
  }

  sub_1C3CA0938(v52, isUniquelyReferenced_nonNull_native);
  v7 = v80;
  v54 = sub_1C3CA029C(v5);
  if ((v53 & 1) == (v55 & 1))
  {
    v15 = v54;
    v18 = v80;
    if (v53)
    {
      goto LABEL_7;
    }

    goto LABEL_44;
  }

  sub_1C3D20AA4();
  __break(1u);

  __break(1u);
  return result;
}

uint64_t type metadata accessor for AudiogramLongitudinalChartData()
{
  result = qword_1EC087C00;
  if (!qword_1EC087C00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C3D04BC0()
{
  result = sub_1C3D1E1E4();
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

id DefaultPairedDeviceFeatureAttributesDataSource.__allocating_init(featureAvailabilityStore:logger:)(void *a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = sub_1C3D05B10(a1, a2);

  return v6;
}

void PairedDeviceFeatureAttributesDataSource.localDeviceName.getter()
{
  v0 = [objc_opt_self() sharedBehavior];
  if (v0)
  {
    v1 = v0;
    v2 = [v0 currentDeviceName];

    if (v2)
    {
      sub_1C3D20104();

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

BOOL PairedDeviceFeatureAttributesDataSource.hasActivePairedDevice.getter(uint64_t a1, uint64_t a2)
{
  (*(a2 + 16))();
  v3 = v2;
  if (v2)
  {
  }

  return v3 != 0;
}

id DefaultPairedDeviceFeatureAttributesDataSource.init(featureAvailabilityStore:logger:)(void *a1, uint64_t a2)
{
  v3 = sub_1C3D05B10(a1, a2);

  return v3;
}

uint64_t sub_1C3D04E28()
{
  v0 = MEMORY[0x1E695BF70];
  sub_1C3D061C4(0, &qword_1EC086970, MEMORY[0x1E695BF70]);
  sub_1C3D06230(&qword_1EC087C20, &qword_1EC086970, v0);
  return sub_1C3D1EFC4();
}

uint64_t sub_1C3D04ECC()
{
  v1 = *(*(v0 + OBJC_IVAR____TtC8HealthUI46DefaultPairedDeviceFeatureAttributesDataSource_activePairedDeviceProvider) + OBJC_IVAR____TtCC8HealthUI46DefaultPairedDeviceFeatureAttributesDataSource26ActivePairedDeviceProvider_provider + 8);
  ObjectType = swift_getObjectType();
  return (*(v1 + 16))(ObjectType, v1);
}

id sub_1C3D04F24()
{
  v6[1] = *MEMORY[0x1E69E9840];
  v1 = *(v0 + OBJC_IVAR____TtC8HealthUI46DefaultPairedDeviceFeatureAttributesDataSource_featureAvailabilityStore);
  v6[0] = 0;
  v2 = [v1 pairedFeatureAttributesWithError_];
  if (v2)
  {
    v3 = v6[0];
  }

  else
  {
    v4 = v6[0];
    sub_1C3D1DFA4();

    swift_willThrow();
  }

  return v2;
}

uint64_t sub_1C3D04FE4()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = *(v0 + OBJC_IVAR____TtC8HealthUI46DefaultPairedDeviceFeatureAttributesDataSource_featureAvailabilityStore);
  sub_1C3C42580();
  v4 = sub_1C3D205C4();
  [v3 registerObserver:v0 queue:v4];

  v5 = [v3 featureIdentifier];
  v6 = HKFeaturePropertiesChangeNotificationForFeatureIdentifier();

  sub_1C3D20104();
  sub_1C3D205C4();
  sub_1C3D1ED04();
  swift_allocObject();
  sub_1C3D1ECF4();
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = ObjectType;
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = ObjectType;
  v11 = swift_allocObject();
  *(v11 + 16) = sub_1C3D06124;
  *(v11 + 24) = v10;
  sub_1C3D06148();
  sub_1C3D1EFD4();

  swift_beginAccess();
  sub_1C3D1EEA4();
  swift_endAccess();

  v12 = *(*(v1 + OBJC_IVAR____TtC8HealthUI46DefaultPairedDeviceFeatureAttributesDataSource_activePairedDeviceProvider) + OBJC_IVAR____TtCC8HealthUI46DefaultPairedDeviceFeatureAttributesDataSource26ActivePairedDeviceProvider_provider + 8);
  v13 = swift_getObjectType();
  (*(v12 + 24))(v13, v12);
  v14 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v15 = swift_allocObject();
  *(v15 + 16) = v14;
  *(v15 + 24) = ObjectType;
  v16 = swift_allocObject();
  *(v16 + 16) = sub_1C3D061A0;
  *(v16 + 24) = v15;
  v17 = MEMORY[0x1E695BED0];
  sub_1C3D061C4(0, &qword_1EC087CD0, MEMORY[0x1E695BED0]);
  sub_1C3D06230(&qword_1EC087B10, &qword_1EC087CD0, v17);
  sub_1C3D1EFF4();

  swift_beginAccess();
  sub_1C3D1EEA4();
  swift_endAccess();
}

uint64_t sub_1C3D053A4(char *a1)
{
  v2 = sub_1C3D1EDA4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v19[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v8 = result;
    (*(v3 + 16))(v5, result + OBJC_IVAR____TtC8HealthUI46DefaultPairedDeviceFeatureAttributesDataSource_logger, v2);

    v9 = sub_1C3D1ED84();
    v10 = sub_1C3D204F4();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v20 = v12;
      *v11 = 136446466;
      v13 = sub_1C3D20CD4();
      v15 = sub_1C3C22C28(v13, v14, &v20);

      *(v11 + 4) = v15;
      *(v11 + 12) = 2080;
      v19[15] = v6;
      sub_1C3D06274();
      v16 = sub_1C3D20134();
      v18 = sub_1C3C22C28(v16, v17, &v20);

      *(v11 + 14) = v18;
      _os_log_impl(&dword_1C3942000, v9, v10, "[%{public}s] Error observing feature properties change notification: %s", v11, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1C69321D0](v12, -1, -1);
      MEMORY[0x1C69321D0](v11, -1, -1);
    }

    return (*(v3 + 8))(v5, v2);
  }

  return result;
}

uint64_t sub_1C3D055EC(uint64_t a1, uint64_t a2, const char *a3)
{
  v4 = sub_1C3D1EDA4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    (*(v5 + 16))(v7, Strong + OBJC_IVAR____TtC8HealthUI46DefaultPairedDeviceFeatureAttributesDataSource_logger, v4);

    v10 = sub_1C3D1ED84();
    v11 = sub_1C3D20514();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v22 = a3;
      v13 = v12;
      v14 = swift_slowAlloc();
      v23[0] = v14;
      *v13 = 136446210;
      v15 = sub_1C3D20CD4();
      v17 = sub_1C3C22C28(v15, v16, v23);

      *(v13 + 4) = v17;
      _os_log_impl(&dword_1C3942000, v10, v11, v22, v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v14);
      MEMORY[0x1C69321D0](v14, -1, -1);
      MEMORY[0x1C69321D0](v13, -1, -1);
    }

    (*(v5 + 8))(v7, v4);
  }

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v19 = result;

    v20 = MEMORY[0x1E695BF70];
    sub_1C3D061C4(0, &qword_1EC086970, MEMORY[0x1E695BF70]);
    sub_1C3D06230(&qword_1EC087CE0, &qword_1EC086970, v20);
    sub_1C3D1EF64();
  }

  return result;
}

id DefaultPairedDeviceFeatureAttributesDataSource.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DefaultPairedDeviceFeatureAttributesDataSource.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DefaultPairedDeviceFeatureAttributesDataSource();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1C3D05A68()
{
  v0 = [objc_opt_self() sharedBehavior];
  if (v0)
  {
    v1 = v0;
    v2 = [v0 currentDeviceName];

    if (v2)
    {
      sub_1C3D20104();

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

id sub_1C3D05B10(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1C3D1EDA4();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v3[OBJC_IVAR____TtC8HealthUI46DefaultPairedDeviceFeatureAttributesDataSource_subscribers] = MEMORY[0x1E69E7CD0];
  *&v3[OBJC_IVAR____TtC8HealthUI46DefaultPairedDeviceFeatureAttributesDataSource_featureAvailabilityStore] = a1;
  v11 = *(v7 + 16);
  v11(v10, a2, v6, v8);
  objc_allocWithZone(_s26ActivePairedDeviceProviderCMa());
  v12 = a1;
  *&v3[OBJC_IVAR____TtC8HealthUI46DefaultPairedDeviceFeatureAttributesDataSource_activePairedDeviceProvider] = sub_1C3C83FAC(v10);
  (v11)(&v3[OBJC_IVAR____TtC8HealthUI46DefaultPairedDeviceFeatureAttributesDataSource_logger], a2, v6);
  sub_1C3D061C4(0, &qword_1EC086970, MEMORY[0x1E695BF70]);
  swift_allocObject();
  *&v3[OBJC_IVAR____TtC8HealthUI46DefaultPairedDeviceFeatureAttributesDataSource_updateSignalPublisher] = sub_1C3D1EEF4();
  v13 = type metadata accessor for DefaultPairedDeviceFeatureAttributesDataSource();
  v16.receiver = v3;
  v16.super_class = v13;
  v14 = objc_msgSendSuper2(&v16, sel_init);
  sub_1C3D04FE4();

  (*(v7 + 8))(a2, v6);
  return v14;
}

uint64_t sub_1C3D05CF4()
{
  swift_getObjectType();
  v0 = sub_1C3D1ED84();
  v1 = sub_1C3D20514();
  if (os_log_type_enabled(v0, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v9 = v3;
    *v2 = 136446210;
    v4 = sub_1C3D20CD4();
    v6 = sub_1C3C22C28(v4, v5, &v9);

    *(v2 + 4) = v6;
    _os_log_impl(&dword_1C3942000, v0, v1, "[%{public}s] Observed change to onboarding completion", v2, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v3);
    MEMORY[0x1C69321D0](v3, -1, -1);
    MEMORY[0x1C69321D0](v2, -1, -1);
  }

  v7 = MEMORY[0x1E695BF70];
  sub_1C3D061C4(0, &qword_1EC086970, MEMORY[0x1E695BF70]);
  sub_1C3D06230(&qword_1EC087CE0, &qword_1EC086970, v7);
  return sub_1C3D1EF64();
}

uint64_t type metadata accessor for DefaultPairedDeviceFeatureAttributesDataSource()
{
  result = qword_1EC087CB0;
  if (!qword_1EC087CB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C3D05F50()
{
  result = sub_1C3D1EDA4();
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

unint64_t sub_1C3D06148()
{
  result = qword_1EC087CC8;
  if (!qword_1EC087CC8)
  {
    sub_1C3D1ED04();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC087CC8);
  }

  return result;
}

void sub_1C3D061C4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, uint64_t, void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7410]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1C3D06230(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(void, uint64_t, void, void))
{
  result = *a1;
  if (!result)
  {
    sub_1C3D061C4(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1C3D06274()
{
  if (!qword_1EC087CE8)
  {
    v0 = sub_1C3D1EE84();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC087CE8);
    }
  }
}

uint64_t FeatureRegulatoryAboutView.init(healthStore:featureIdentifier:featureRegulatoryInfoTransformProvider:reenableActionConfiguration:logger:)@<X0>(void *a1@<X0>, void *a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  v25 = a3;
  v26 = a4;
  v23 = a1;
  v10 = sub_1C3D1EDA4();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = [objc_allocWithZone(MEMORY[0x1E696C160]) initWithFeatureIdentifier:a2 healthStore:a1];
  v14 = [objc_allocWithZone(MEMORY[0x1E696C160]) initWithFeatureIdentifier:a2 healthStore:a1];
  v15 = *(v11 + 16);
  v15(v13, a5, v10);
  v16 = objc_allocWithZone(type metadata accessor for DefaultPairedDeviceFeatureAttributesDataSource());
  v17 = sub_1C3D05B10(v14, v13);
  v15(v13, a5, v10);
  type metadata accessor for PairedDeviceFeatureAttributesProvider();
  v18 = swift_allocObject();
  v19 = v17;
  v20 = sub_1C3CFB5F0(v19, v13, v18);

  *(a6 + 1) = v20;
  v21 = type metadata accessor for FeatureRegulatoryAboutView();
  (*(v11 + 32))(&a6[v21[7]], a5, v10);
  sub_1C3972F30(v25, &a6[v21[8]]);
  result = sub_1C3D06974(v26, &a6[v21[6]]);
  *a6 = v24;
  return result;
}

uint64_t FeatureRegulatoryAboutView.init(healthStore:featureAvailabilityStore:featureRegulatoryInfoTransformProvider:pairedDeviceFeatureAttributesProvider:reenableActionConfiguration:logger:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X8>)
{
  *(a7 + 1) = a4;
  v13 = type metadata accessor for FeatureRegulatoryAboutView();
  v14 = v13[7];
  v15 = sub_1C3D1EDA4();
  (*(*(v15 - 8) + 32))(&a7[v14], a6, v15);
  sub_1C3972F30(a3, &a7[v13[8]]);
  result = sub_1C3D06974(a5, &a7[v13[6]]);
  *a7 = a2;
  return result;
}

uint64_t FeatureRegulatoryAboutView.body.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = type metadata accessor for FeatureRegulatoryAboutView();
  v4 = v3 - 8;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1C3D1EDA4();
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v1;
  v12 = v1[1];
  (*(v14 + 16))(v11, v1 + *(v4 + 36), v9);
  sub_1C3D06A08(v1, v7);
  v15 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v16 = swift_allocObject();
  sub_1C3D06A6C(v7, v16 + v15);
  v17 = objc_allocWithZone(type metadata accessor for FeatureRegulatoryInfoProvider());
  v18 = v13;

  sub_1C3CEAFFC(v18, v12, v11, sub_1C3D06AD0, v16);

  *a1 = swift_getKeyPath();
  sub_1C3D06B58(0, &qword_1EC086370, MEMORY[0x1E697E178], MEMORY[0x1E697DCB8]);
  swift_storeEnumTagMultiPayload();
  v19 = type metadata accessor for FeatureRegulatoryInfoView(0);
  v20 = (a1 + *(v19 + 24));
  v26 = sub_1C3D20104();
  v27 = v21;
  MEMORY[0x1C692F800](0x74756F62412ELL, 0xE600000000000000);
  v22 = v27;
  *v20 = v26;
  v20[1] = v22;
  v23 = (a1 + *(v19 + 20));
  sub_1C3D06DAC(&qword_1EC086378, type metadata accessor for FeatureRegulatoryInfoProvider);
  result = sub_1C3D1F184();
  *v23 = result;
  v23[1] = v25;
  return result;
}

uint64_t sub_1C3D06888(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for FeatureRegulatoryAboutView();
  v7 = (a3 + *(v6 + 32));
  v8 = v7[3];
  v9 = v7[4];
  __swift_project_boxed_opaque_existential_0(v7, v8);
  return (*(v9 + 8))(a1, a2, a3 + *(v6 + 24), v8, v9);
}

uint64_t type metadata accessor for FeatureRegulatoryAboutView()
{
  result = qword_1EC087CF0;
  if (!qword_1EC087CF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C3D06974(uint64_t a1, uint64_t a2)
{
  sub_1C3D06B58(0, &qword_1EC086468, type metadata accessor for FeatureRegulatoryInfo.ReenableActionConfiguration, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C3D06A08(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FeatureRegulatoryAboutView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C3D06A6C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FeatureRegulatoryAboutView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C3D06AD0(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for FeatureRegulatoryAboutView() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_1C3D06888(a1, a2, v6);
}

void sub_1C3D06B58(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1C3D06C00()
{
  sub_1C3D06CFC();
  if (v0 <= 0x3F)
  {
    type metadata accessor for PairedDeviceFeatureAttributesProvider();
    if (v1 <= 0x3F)
    {
      sub_1C3D06B58(319, &qword_1EC086468, type metadata accessor for FeatureRegulatoryInfo.ReenableActionConfiguration, MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        sub_1C3D1EDA4();
        if (v3 <= 0x3F)
        {
          sub_1C3D06D48();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

unint64_t sub_1C3D06CFC()
{
  result = qword_1EC087D00;
  if (!qword_1EC087D00)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC087D00);
  }

  return result;
}

unint64_t sub_1C3D06D48()
{
  result = qword_1EC087D08;
  if (!qword_1EC087D08)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EC087D08);
  }

  return result;
}

uint64_t sub_1C3D06DAC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C3D06DF4(char a1)
{
  if (a1)
  {
    if (qword_1EC080DC0 == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_6;
  }

  if (qword_1EC080DC0 != -1)
  {
LABEL_6:
    swift_once();
  }

LABEL_5:
  v1 = qword_1EC08DBD8;
  v2 = sub_1C3D1DEC4();

  return v2;
}

uint64_t sub_1C3D06F20@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1C3D1F3B4();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1E697E178];
  v8 = MEMORY[0x1E697DCB8];
  sub_1C3D09638(0, &qword_1EC086370, MEMORY[0x1E697E178], MEMORY[0x1E697DCB8]);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v16 - v10;
  v12 = type metadata accessor for InstructionsForUseWebViewContainer(0);
  sub_1C3D0CBF4(v1 + *(v12 + 24), v11, &qword_1EC086370, v7, v8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_1C3D1F114();
    return (*(*(v13 - 8) + 32))(a1, v11, v13);
  }

  else
  {
    sub_1C3D20504();
    v15 = sub_1C3D1F6F4();
    sub_1C3D1ED54();

    sub_1C3D1F3A4();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_1C3D07154()
{
  sub_1C3D20B04();
  sub_1C3D20164();
  return sub_1C3D20B34();
}

uint64_t sub_1C3D071A8()
{
  sub_1C3D20B04();
  sub_1C3D20164();
  return sub_1C3D20B34();
}

uint64_t sub_1C3D071F0@<X0>(void *a1@<X8>)
{
  result = MEMORY[0x1C692F800](*v1, v1[1]);
  *a1 = 762668649;
  a1[1] = 0xE400000000000000;
  return result;
}

uint64_t sub_1C3D0723C(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1C3D20A54();
  }
}

uint64_t sub_1C3D0726C@<X0>(uint64_t a1@<X8>)
{
  v61 = a1;
  sub_1C3D0C5A8(0, &qword_1EC087E18, type metadata accessor for InstructionsForUseWebView);
  v60 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v4 = v53 - v3;
  sub_1C3D09638(0, &qword_1EC086470, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v59 = v53 - v6;
  sub_1C3D0C418(0, &qword_1EC087E20, MEMORY[0x1E697F948]);
  v63 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v58 = v53 - v8;
  sub_1C3D0A068(0, &qword_1EC087E30, MEMORY[0x1E697F948]);
  v53[1] = v9;
  MEMORY[0x1EEE9AC00](v9);
  v56 = v53 - v10;
  v55 = type metadata accessor for InstructionsForUseWebViewError(0);
  MEMORY[0x1EEE9AC00](v55);
  v57 = v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C3C6F29C(0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for ErrorDetails(0);
  v16 = *(v15 - 1);
  MEMORY[0x1EEE9AC00](v15);
  v53[0] = v53 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = v53 - v19;
  sub_1C3D0A068(0, &qword_1EC087E28, MEMORY[0x1E697F960]);
  v62 = v21;
  MEMORY[0x1EEE9AC00](v21);
  v54 = v53 - v22;
  v23 = *v1;
  v64 = v1;
  v24 = *(v1 + 8);
  LOBYTE(v65) = v23;
  v66 = v24;
  sub_1C3D0CAAC(0, &qword_1EC087DF8, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
  sub_1C3D1FC04();
  v25 = v68;
  v26 = type metadata accessor for InstructionsForUseWebViewContainer(0);
  v27 = v26;
  if (v25 == 1)
  {
    v28 = v58;
    sub_1C3D09638(0, &qword_1EC087DE0, sub_1C3C6F29C, MEMORY[0x1E6981790]);
    sub_1C3D1FC04();
    if ((*(v16 + 48))(v14, 1, v15) == 1)
    {
      sub_1C3D0CD7C(v14, sub_1C3C6F29C);
      v20 = v53[0];
      sub_1C3D1E4E4();
      v29 = v15[7];
      v30 = sub_1C3D1E064();
      (*(*(v30 - 8) + 56))(&v20[v29], 1, 1, v30);
      v31 = (v64 + *(v27 + 28));
      v32 = *v31;
      v33 = v31[1];
      *v20 = 3;
      v34 = &v20[v15[6]];
      *v34 = 0;
      v34[8] = 1;
      v35 = &v20[v15[8]];
      *v35 = v32;
      v35[1] = v33;
      v36 = v57;
      sub_1C3D0CD14(v20, v57, type metadata accessor for ErrorDetails);
      sub_1C3D0CD14(v36, v56, type metadata accessor for InstructionsForUseWebViewError);
      swift_storeEnumTagMultiPayload();
      sub_1C3D0CDDC(&qword_1EC087E40, type metadata accessor for InstructionsForUseWebViewError);
    }

    else
    {
      sub_1C3D0A35C(v14, v20);
      v36 = v57;
      sub_1C3D0CD14(v20, v57, type metadata accessor for ErrorDetails);
      sub_1C3D0CD14(v36, v56, type metadata accessor for InstructionsForUseWebViewError);
      swift_storeEnumTagMultiPayload();
      sub_1C3D0CDDC(&qword_1EC087E40, type metadata accessor for InstructionsForUseWebViewError);
    }

    v37 = v54;
    sub_1C3D1F564();
    sub_1C3D0CD7C(v36, type metadata accessor for InstructionsForUseWebViewError);
    sub_1C3D0CD7C(v20, type metadata accessor for ErrorDetails);
    sub_1C3D0A264(v37, v28);
    swift_storeEnumTagMultiPayload();
    sub_1C3D0A0CC();
    sub_1C3D0A190();
    sub_1C3D1F564();
    return sub_1C3D0A2E4(v37);
  }

  else
  {
    v38 = v64;
    v39 = (v64 + *(v26 + 28));
    v41 = *v39;
    v40 = v39[1];
    sub_1C3D07B78(*v39, v40);
    sub_1C3D1E054();

    v68 = v23;
    v69 = v24;
    sub_1C3D1FC14();
    v42 = v65;
    v43 = v66;
    LODWORD(v57) = v67;
    v44 = type metadata accessor for InstructionsForUseWebView(0);
    sub_1C3D09638(0, &qword_1EC087DE0, sub_1C3C6F29C, MEMORY[0x1E6981790]);
    sub_1C3D1FC14();
    sub_1C3D0CD14(v38, &v4[v44[7]], type metadata accessor for InstructionsForUseWebViewContainer);
    v45 = MEMORY[0x1E6968FB0];
    v46 = MEMORY[0x1E69E6720];
    v47 = v59;
    sub_1C3D0CBF4(v59, &v4[v44[8]], &qword_1EC086470, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
    *v4 = v42;
    *(v4 + 1) = v43;
    v4[16] = v57;
    v48 = &v4[v44[6]];
    *v48 = v41;
    v48[1] = v40;

    v49 = sub_1C3D1F1B4();
    v50 = sub_1C3D1F744();
    v51 = &v4[*(v60 + 36)];
    *v51 = v49;
    v51[8] = v50;
    sub_1C3D0CB28(v4, v58, &qword_1EC087E18, type metadata accessor for InstructionsForUseWebView);
    swift_storeEnumTagMultiPayload();
    sub_1C3D0A0CC();
    sub_1C3D0A190();
    sub_1C3D1F564();
    sub_1C3D0CB98(v4, &qword_1EC087E18, type metadata accessor for InstructionsForUseWebView);
    return sub_1C3D0CC64(v47, &qword_1EC086470, v45, v46);
  }
}

uint64_t sub_1C3D07B78(uint64_t a1, uint64_t a2)
{
  v47 = a1;
  v48 = a2;
  v49 = sub_1C3D1E264();
  v2 = *(v49 - 8);
  MEMORY[0x1EEE9AC00](v49);
  v45 = &v44 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C3D0A3C0();
  v5 = v4 - 8;
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1E6969680];
  v9 = MEMORY[0x1E69E6720];
  sub_1C3D09638(0, &unk_1EC087E58, MEMORY[0x1E6969680], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v46 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v44 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v44 - v16;
  v18 = sub_1C3D1E294();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v44 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C3D1E284();
  sub_1C3D1E274();
  v22 = v21;
  v23 = v17;
  (*(v19 + 8))(v22, v18);
  sub_1C3D1E254();
  v24 = v49;
  (*(v2 + 56))(v14, 0, 1, v49);
  v25 = *(v5 + 56);
  sub_1C3D0CBF4(v23, v7, &unk_1EC087E58, v8, v9);
  sub_1C3D0CBF4(v14, &v7[v25], &unk_1EC087E58, v8, v9);
  v26 = *(v2 + 48);
  if (v26(v7, 1, v24) == 1)
  {
    v27 = v23;
    v28 = MEMORY[0x1E6969680];
    v29 = MEMORY[0x1E69E6720];
    sub_1C3D0CC64(v14, &unk_1EC087E58, MEMORY[0x1E6969680], MEMORY[0x1E69E6720]);
    sub_1C3D0CC64(v27, &unk_1EC087E58, v28, v29);
    if (v26(&v7[v25], 1, v24) == 1)
    {
      sub_1C3D0CC64(v7, &unk_1EC087E58, MEMORY[0x1E6969680], MEMORY[0x1E69E6720]);
      goto LABEL_10;
    }

    goto LABEL_6;
  }

  v44 = v23;
  sub_1C3D0CBF4(v7, v46, &unk_1EC087E58, MEMORY[0x1E6969680], MEMORY[0x1E69E6720]);
  if (v26(&v7[v25], 1, v24) == 1)
  {
    v30 = MEMORY[0x1E6969680];
    v31 = MEMORY[0x1E69E6720];
    sub_1C3D0CC64(v14, &unk_1EC087E58, MEMORY[0x1E6969680], MEMORY[0x1E69E6720]);
    sub_1C3D0CC64(v44, &unk_1EC087E58, v30, v31);
    (*(v2 + 8))(v46, v49);
LABEL_6:
    sub_1C3D0CD7C(v7, sub_1C3D0A3C0);
    goto LABEL_7;
  }

  v32 = v45;
  v33 = v49;
  (*(v2 + 32))(v45, &v7[v25], v49);
  sub_1C3D0CDDC(&qword_1EC087E68, MEMORY[0x1E6969680]);
  v34 = v46;
  v35 = sub_1C3D20034();
  v36 = *(v2 + 8);
  v36(v32, v33);
  v37 = MEMORY[0x1E6969680];
  v38 = MEMORY[0x1E69E6720];
  sub_1C3D0CC64(v14, &unk_1EC087E58, MEMORY[0x1E6969680], MEMORY[0x1E69E6720]);
  sub_1C3D0CC64(v44, &unk_1EC087E58, v37, v38);
  v36(v34, v33);
  sub_1C3D0CC64(v7, &unk_1EC087E58, v37, v38);
  if ((v35 & 1) == 0)
  {
LABEL_7:
    if (qword_1EC080DC0 == -1)
    {
      goto LABEL_11;
    }

    goto LABEL_12;
  }

LABEL_10:
  if (qword_1EC080DC0 != -1)
  {
LABEL_12:
    swift_once();
  }

LABEL_11:
  v39 = qword_1EC08DBD8;
  sub_1C3D1DEC4();

  sub_1C3C702E8();
  v40 = swift_allocObject();
  *(v40 + 16) = xmmword_1C3D5F370;
  *(v40 + 56) = MEMORY[0x1E69E6158];
  *(v40 + 64) = sub_1C3C54B1C();
  v41 = v48;
  *(v40 + 32) = v47;
  *(v40 + 40) = v41;

  v42 = sub_1C3D20114();

  return v42;
}

uint64_t sub_1C3D082C0(void *a1)
{
  v43 = a1;
  sub_1C3C6F29C(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v44 = &v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v45 = &v39 - v5;
  v48 = sub_1C3D1E514();
  v46 = *(v48 - 8);
  MEMORY[0x1EEE9AC00](v48);
  v47 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1C3D1DBA4();
  v41 = *(v7 - 8);
  v42 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v40 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1E6968FB0];
  v10 = MEMORY[0x1E69E6720];
  sub_1C3D09638(0, &qword_1EC086470, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v39 - v12;
  v14 = sub_1C3D1E064();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v39 - v19;
  v21 = type metadata accessor for InstructionsForUseWebView(0);
  v22 = *(v21 + 32);
  v39 = v1;
  sub_1C3D0CBF4(v1 + v22, v13, &qword_1EC086470, v9, v10);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    v23 = MEMORY[0x1E6968FB0];
    v24 = MEMORY[0x1E69E6720];
    sub_1C3D0CC64(v13, &qword_1EC086470, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
    v25 = v39;
    v26 = v39 + *(v21 + 24);
    v27 = *(v26 + 8);
    v43 = *v26;
    v28 = v47;
    sub_1C3D1E4E4();
    v29 = type metadata accessor for ErrorDetails(0);
    v30 = v45;
    v31 = v46;
    (*(v46 + 16))(&v45[v29[5]], v28, v48);
    sub_1C3D0CBF4(v25 + v22, &v30[v29[7]], &qword_1EC086470, v23, v24);
    *v30 = 3;
    v32 = &v30[v29[6]];
    *v32 = 0;
    v32[8] = 0;
    v33 = &v30[v29[8]];
    *v33 = v43;
    v33[1] = v27;
    (*(*(v29 - 1) + 56))(v30, 0, 1, v29);
    sub_1C3D0CD14(v30, v44, sub_1C3C6F29C);
    sub_1C3D09638(0, &qword_1EC087DA8, sub_1C3C6F29C, MEMORY[0x1E6981948]);

    sub_1C3D1FCA4();
    sub_1C3D0CD7C(v30, sub_1C3C6F29C);
    v34 = v25[1];
    v35 = *(v25 + 16);
    v50 = *v25;
    v51 = v34;
    v52 = v35;
    v49 = 1;
    sub_1C3D0CAAC(0, &qword_1EC087DC8, MEMORY[0x1E69E6370], MEMORY[0x1E6981948]);

    sub_1C3D1FCA4();
    (*(v31 + 8))(v47, v48);
  }

  else
  {
    (*(v15 + 32))(v20, v13, v14);
    (*(v15 + 16))(v17, v20, v14);
    v37 = v40;
    sub_1C3D1DB94();
    v38 = sub_1C3D1DB84();

    (*(v41 + 8))(v37, v42);
    return (*(v15 + 8))(v20, v14);
  }
}

uint64_t sub_1C3D088C8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v7 = v6;
  v52 = a6;
  v50 = a4;
  v51 = a5;
  v55 = a3;
  v53 = a2;
  sub_1C3C6F29C(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v54 = v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v46 - v12;
  sub_1C3D09638(0, &unk_1EC087E70, MEMORY[0x1E6969C20], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = v46 - v15;
  v17 = sub_1C3D1E534();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v49 = v46 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1C3D1E514();
  v56 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v22 = v46 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = v46 - v24;
  MEMORY[0x1EEE9AC00](v26);
  v28 = v46 - v27;
  sub_1C3D1E4E4();
  if (!a1)
  {
    (*(v18 + 56))(v16, 1, 1, v17);
    goto LABEL_6;
  }

  v58 = a1;
  v29 = a1;
  sub_1C3C31974(0, &qword_1EC085890);
  v30 = swift_dynamicCast();
  (*(v18 + 56))(v16, v30 ^ 1u, 1, v17);
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
LABEL_6:
    sub_1C3D0CC64(v16, &unk_1EC087E70, MEMORY[0x1E6969C20], MEMORY[0x1E69E6720]);
    v33 = 3;
    goto LABEL_13;
  }

  v47 = v7;
  (*(v18 + 32))(v49, v16, v17);
  sub_1C3D0CDDC(&qword_1EC087E80, MEMORY[0x1E6969C20]);
  sub_1C3D1DF64();
  v31 = v56;
  v32 = *(v56 + 8);
  v32(v28, v20);
  (*(v31 + 32))(v28, v25, v20);
  (*(v31 + 16))(v22, v28, v20);
  sub_1C3D1E4C4();
  v46[1] = sub_1C3D0CDDC(&qword_1EC087E88, MEMORY[0x1E6969BF8]);
  LOBYTE(v31) = sub_1C3D20034();
  v48 = v32;
  v32(v25, v20);
  if (v31)
  {
    v48(v22, v20);
    (*(v18 + 8))(v49, v17);
    v33 = 0;
  }

  else
  {
    sub_1C3D1E4D4();
    v34 = sub_1C3D20034();
    v48(v25, v20);
    if (v34)
    {
      v48(v22, v20);
      (*(v18 + 8))(v49, v17);
      v33 = 1;
    }

    else
    {
      sub_1C3D1E4B4();
      v35 = sub_1C3D20034();
      v36 = v25;
      v37 = v48;
      v48(v36, v20);
      v37(v22, v20);
      (*(v18 + 8))(v49, v17);
      if (v35)
      {
        v33 = 2;
      }

      else
      {
        v33 = 3;
      }
    }
  }

  v7 = v47;
LABEL_13:
  v38 = type metadata accessor for ErrorDetails(0);
  v39 = v56;
  (*(v56 + 16))(&v13[v38[5]], v28, v20);
  sub_1C3D0CBF4(v50, &v13[v38[7]], &qword_1EC086470, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  *v13 = v33;
  v40 = &v13[v38[6]];
  *v40 = v51;
  v40[8] = v52 & 1;
  v41 = &v13[v38[8]];
  v42 = v55;
  *v41 = v53;
  *(v41 + 1) = v42;
  (*(*(v38 - 1) + 56))(v13, 0, 1, v38);
  type metadata accessor for InstructionsForUseWebView(0);
  sub_1C3D0CD14(v13, v54, sub_1C3C6F29C);
  sub_1C3D09638(0, &qword_1EC087DA8, sub_1C3C6F29C, MEMORY[0x1E6981948]);

  sub_1C3D1FCA4();
  sub_1C3D0CD7C(v13, sub_1C3C6F29C);
  v43 = *(v7 + 8);
  v44 = *(v7 + 16);
  v58 = *v7;
  v59 = v43;
  v60 = v44;
  v57 = 1;
  sub_1C3D0CAAC(0, &qword_1EC087DC8, MEMORY[0x1E69E6370], MEMORY[0x1E6981948]);

  sub_1C3D1FCA4();
  (*(v39 + 8))(v28, v20);
}

id sub_1C3D09450()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for InstructionsForUseWebView.Coordinator(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1C3D09518()
{
  result = type metadata accessor for InstructionsForUseWebView(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for InstructionsForUseWebViewContainer(319);
    if (v2 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

void sub_1C3D09638(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1C3D096D0()
{
  sub_1C3D0CAAC(319, &qword_1EC087DC8, MEMORY[0x1E69E6370], MEMORY[0x1E6981948]);
  if (v0 <= 0x3F)
  {
    sub_1C3D09638(319, &qword_1EC087DA8, sub_1C3C6F29C, MEMORY[0x1E6981948]);
    if (v1 <= 0x3F)
    {
      type metadata accessor for InstructionsForUseWebViewContainer(319);
      if (v2 <= 0x3F)
      {
        sub_1C3D09638(319, &qword_1EC086470, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1C3D09838()
{
  sub_1C3D1E514();
  if (v0 <= 0x3F)
  {
    sub_1C3D0CAAC(319, &qword_1EC0813B0, MEMORY[0x1E69E6530], MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      sub_1C3D09638(319, &qword_1EC086470, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1C3D09978()
{
  sub_1C3D0CAAC(319, &qword_1EC087DF8, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
  if (v0 <= 0x3F)
  {
    sub_1C3D09638(319, &qword_1EC087DE0, sub_1C3C6F29C, MEMORY[0x1E6981790]);
    if (v1 <= 0x3F)
    {
      sub_1C3D09638(319, &qword_1EC086490, MEMORY[0x1E697E178], MEMORY[0x1E697DCC0]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1C3D09AA0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_1C3D09AE8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1C3D09B38()
{
  result = qword_1EC087E00;
  if (!qword_1EC087E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC087E00);
  }

  return result;
}

unint64_t sub_1C3D09B90()
{
  result = qword_1EC087E08;
  if (!qword_1EC087E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC087E08);
  }

  return result;
}

id sub_1C3D09BF0()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E69853A0]) init];
  sub_1C3D0A454();
  sub_1C3D1F6B4();
  [v0 setNavigationDelegate_];

  return v0;
}

uint64_t sub_1C3D09C70@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = v2;
  v6 = type metadata accessor for InstructionsForUseWebViewContainer(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C3D0CD14(v4, v11, type metadata accessor for InstructionsForUseWebView);
  sub_1C3D0CD14(v4 + *(a1 + 28), v8, type metadata accessor for InstructionsForUseWebViewContainer);
  v12 = type metadata accessor for InstructionsForUseWebView.Coordinator(0);
  v13 = objc_allocWithZone(v12);
  sub_1C3D0CD14(v11, v13 + OBJC_IVAR____TtCV8HealthUIP33_9391128D22BBD0797A4FA47559946E1D25InstructionsForUseWebView11Coordinator_parent, type metadata accessor for InstructionsForUseWebView);
  sub_1C3D0CD14(v8, v13 + OBJC_IVAR____TtCV8HealthUIP33_9391128D22BBD0797A4FA47559946E1D25InstructionsForUseWebView11Coordinator_container, type metadata accessor for InstructionsForUseWebViewContainer);
  v16.receiver = v13;
  v16.super_class = v12;
  v14 = objc_msgSendSuper2(&v16, sel_init);
  sub_1C3D0CD7C(v8, type metadata accessor for InstructionsForUseWebViewContainer);
  result = sub_1C3D0CD7C(v11, type metadata accessor for InstructionsForUseWebView);
  *a2 = v14;
  return result;
}

uint64_t sub_1C3D09E64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C3D0CDDC(&unk_1EC087E98, type metadata accessor for InstructionsForUseWebView);

  return MEMORY[0x1EEDDAA28](a1, a2, a3, v6);
}

uint64_t sub_1C3D09EF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C3D0CDDC(&unk_1EC087E98, type metadata accessor for InstructionsForUseWebView);

  return MEMORY[0x1EEDDA9B8](a1, a2, a3, v6);
}

void sub_1C3D09F8C()
{
  sub_1C3D0CDDC(&unk_1EC087E98, type metadata accessor for InstructionsForUseWebView);
  sub_1C3D1F534();
  __break(1u);
}

void sub_1C3D0A068(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for InstructionsForUseWebViewError(255);
    v7 = a3(a1, v6, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1C3D0A0CC()
{
  result = qword_1EC087E38;
  if (!qword_1EC087E38)
  {
    sub_1C3D0A068(255, &qword_1EC087E28, MEMORY[0x1E697F960]);
    sub_1C3D0CDDC(&qword_1EC087E40, type metadata accessor for InstructionsForUseWebViewError);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC087E38);
  }

  return result;
}

unint64_t sub_1C3D0A190()
{
  result = qword_1EC087E48;
  if (!qword_1EC087E48)
  {
    sub_1C3D0C5A8(255, &qword_1EC087E18, type metadata accessor for InstructionsForUseWebView);
    sub_1C3D0CDDC(&qword_1EC087E10, type metadata accessor for InstructionsForUseWebView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC087E48);
  }

  return result;
}

uint64_t sub_1C3D0A264(uint64_t a1, uint64_t a2)
{
  sub_1C3D0A068(0, &qword_1EC087E28, MEMORY[0x1E697F960]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C3D0A2E4(uint64_t a1)
{
  sub_1C3D0A068(0, &qword_1EC087E28, MEMORY[0x1E697F960]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C3D0A35C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ErrorDetails(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1C3D0A3C0()
{
  if (!qword_1EC087E50)
  {
    sub_1C3D09638(255, &unk_1EC087E58, MEMORY[0x1E6969680], MEMORY[0x1E69E6720]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC087E50);
    }
  }
}

void sub_1C3D0A454()
{
  if (!qword_1EC087E90)
  {
    type metadata accessor for InstructionsForUseWebView(255);
    sub_1C3D0CDDC(&unk_1EC087E98, type metadata accessor for InstructionsForUseWebView);
    v0 = sub_1C3D1F6C4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC087E90);
    }
  }
}

id sub_1C3D0A4E8@<X0>(char *a1@<X0>, void *a2@<X8>)
{
  sub_1C3D20374();
  sub_1C3D20364();
  sub_1C3D20314();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = sub_1C3D1F424();
  sub_1C3D0AA90(a1, v38);
  *&v37[7] = v38[0];
  *&v37[23] = v38[1];
  *&v37[39] = v38[2];
  *&v37[55] = v38[3];
  KeyPath = swift_getKeyPath();
  v13 = sub_1C3D1F744();
  __dst[0] = 1;
  result = [objc_opt_self() sharedBehavior];
  if (result)
  {
    v6 = result;
    v7 = [result isAppleInternalInstall];

    if (v7)
    {
      v12 = sub_1C3D1F424();
      LOBYTE(v28) = 1;
      sub_1C3D0ADFC(a1, __dst);
      v24 = *&__dst[192];
      v25 = *&__dst[208];
      v26 = *&__dst[224];
      v20 = *&__dst[128];
      v21 = *&__dst[144];
      v22 = *&__dst[160];
      v23 = *&__dst[176];
      *&v17[48] = *&__dst[64];
      *&v17[64] = *&__dst[80];
      v18 = *&__dst[96];
      v19 = *&__dst[112];
      v16 = *__dst;
      *v17 = *&__dst[16];
      *&v17[16] = *&__dst[32];
      *&v17[32] = *&__dst[48];
      *&v34[192] = *&__dst[192];
      *&v34[208] = *&__dst[208];
      *&v34[224] = *&__dst[224];
      *&v34[128] = *&__dst[128];
      *&v34[144] = *&__dst[144];
      *&v34[160] = *&__dst[160];
      *&v34[176] = *&__dst[176];
      *&v34[64] = *&__dst[64];
      *&v34[80] = *&__dst[80];
      *&v34[96] = *&__dst[96];
      *&v34[112] = *&__dst[112];
      *v34 = *__dst;
      *&v34[16] = *&__dst[16];
      *&v34[32] = *&__dst[32];
      *&v34[48] = *&__dst[48];
      v8 = a2;
      v9 = MEMORY[0x1E6981F40];
      sub_1C3D0CBF4(&v16, __src, &qword_1EC087F28, sub_1C3D0C85C, MEMORY[0x1E6981F40]);
      v10 = v9;
      a2 = v8;
      sub_1C3D0CC64(v34, &qword_1EC087F28, sub_1C3D0C85C, v10);
      *&v15[183] = v23;
      *&v15[199] = v24;
      *&v15[215] = v25;
      *&v15[231] = v26;
      *&v15[119] = v19;
      *&v15[135] = v20;
      *&v15[151] = v21;
      *&v15[167] = v22;
      *&v15[55] = *&v17[32];
      *&v15[71] = *&v17[48];
      *&v15[87] = *&v17[64];
      *&v15[103] = v18;
      *&v15[7] = v16;
      *&v15[23] = *v17;
      *&v15[39] = *&v17[16];
      *(&__src[26] + 1) = *&v15[192];
      *(&__src[28] + 1) = *&v15[208];
      *(&__src[30] + 1) = *&v15[224];
      *(&__src[18] + 1) = *&v15[128];
      *(&__src[20] + 1) = *&v15[144];
      *(&__src[22] + 1) = *&v15[160];
      *(&__src[24] + 1) = *&v15[176];
      *(&__src[10] + 1) = *&v15[64];
      *(&__src[12] + 1) = *&v15[80];
      *(&__src[14] + 1) = *&v15[96];
      *(&__src[16] + 1) = *&v15[112];
      *(&__src[2] + 1) = *v15;
      *(&__src[4] + 1) = *&v15[16];
      *(&__src[6] + 1) = *&v15[32];
      __src[0] = v12;
      __src[1] = 0;
      LOBYTE(__src[2]) = v28;
      __src[32] = *(&v26 + 1);
      *(&__src[8] + 1) = *&v15[48];
      nullsub_1(__src);
      memcpy(__dst, __src, sizeof(__dst));
    }

    else
    {
      sub_1C3D0CAFC(__dst);
    }

    memcpy(__src, __dst, sizeof(__src));
    *&v28 = v4;
    *(&v28 + 1) = 0x4024000000000000;
    v29[0] = 0;
    *&v29[1] = *v37;
    *&v29[64] = *&v37[63];
    *&v29[49] = *&v37[48];
    *&v29[17] = *&v37[16];
    *&v29[33] = *&v37[32];
    *&v29[72] = KeyPath;
    LOBYTE(v30) = 1;
    BYTE8(v30) = v13;
    v31 = 0u;
    v32 = 0u;
    v33 = 1;
    LOBYTE(v27[9]) = 1;
    v27[6] = v30;
    memset(&v27[7], 0, 32);
    v27[2] = *&v29[16];
    v27[3] = *&v29[32];
    v27[4] = *&v29[48];
    v27[5] = *&v29[64];
    v27[0] = v28;
    v27[1] = *v29;
    memcpy(v34, __dst, sizeof(v34));
    memcpy(&v27[9] + 8, __dst, 0x108uLL);
    memcpy(a2, v27, 0x1A0uLL);
    sub_1C3D0CB28(&v28, &v16, &qword_1EC087EE0, sub_1C3D0C60C);
    v11 = MEMORY[0x1E69E6720];
    sub_1C3D0CBF4(v34, &v16, &qword_1EC087F18, sub_1C3D0C7A8, MEMORY[0x1E69E6720]);
    sub_1C3D0CC64(__src, &qword_1EC087F18, sub_1C3D0C7A8, v11);
    *&v17[17] = *&v37[16];
    *&v17[33] = *&v37[32];
    *&v17[49] = *&v37[48];
    *&v16 = v4;
    *(&v16 + 1) = 0x4024000000000000;
    v17[0] = 0;
    *&v17[1] = *v37;
    *&v17[64] = *&v37[63];
    *&v17[72] = KeyPath;
    LOBYTE(v18) = 1;
    BYTE8(v18) = v13;
    v19 = 0u;
    v20 = 0u;
    LOBYTE(v21) = 1;
    sub_1C3D0CB98(&v16, &qword_1EC087EE0, sub_1C3D0C60C);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C3D0AA90@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1C3D20374();
  sub_1C3D20364();
  sub_1C3D20314();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_1C3D06DF4(*a1);
  sub_1C3C4999C();
  v4 = sub_1C3D1F994();
  v6 = v5;
  v8 = v7;
  sub_1C3D1F864();
  v9 = sub_1C3D1F954();
  v11 = v10;
  v13 = v12;

  sub_1C3C2EE8C(v4, v6, v8 & 1);

  sub_1C3D1FB44();
  v14 = sub_1C3D1F914();
  v38 = v15;
  v39 = v14;
  v37 = v16;
  v40 = v17;

  sub_1C3C2EE8C(v9, v11, v13 & 1);

  if (qword_1EC080DC0 != -1)
  {
    swift_once();
  }

  v18 = qword_1EC08DBD8;
  sub_1C3D1DEC4();

  v19 = sub_1C3D1F994();
  v21 = v20;
  v23 = v22;
  sub_1C3D1F7C4();
  v24 = sub_1C3D1F954();
  v26 = v25;
  v28 = v27;

  sub_1C3C2EE8C(v19, v21, v23 & 1);

  sub_1C3D1FB44();
  v29 = sub_1C3D1F914();
  v31 = v30;
  v33 = v32;
  v35 = v34;

  sub_1C3C2EE8C(v24, v26, v28 & 1);

  *a2 = v39;
  *(a2 + 8) = v38;
  *(a2 + 16) = v37 & 1;
  *(a2 + 24) = v40;
  *(a2 + 32) = v29;
  *(a2 + 40) = v31;
  *(a2 + 48) = v33 & 1;
  *(a2 + 56) = v35;
  sub_1C3C4C328(v39, v38, v37 & 1);

  sub_1C3C4C328(v29, v31, v33 & 1);

  sub_1C3C2EE8C(v29, v31, v33 & 1);

  sub_1C3C2EE8C(v39, v38, v37 & 1);
}

uint64_t sub_1C3D0ADFC@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1C3D09638(0, &qword_1EC086470, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v42 - v5;
  sub_1C3D20374();
  v44 = sub_1C3D20364();
  sub_1C3D20314();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v67 = 0;
  v68 = 0xE000000000000000;
  sub_1C3D20834();
  MEMORY[0x1C692F800](0xD000000000000015, 0x80000001C3D88C30);
  v7 = type metadata accessor for ErrorDetails(0);
  MEMORY[0x1C692F800](*&a1[v7[8]], *&a1[v7[8] + 8]);
  MEMORY[0x1C692F800](0x203A4C52550ALL, 0xE600000000000000);
  sub_1C3D0CBF4(&a1[v7[7]], v6, &qword_1EC086470, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  v8 = sub_1C3D1E064();
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v6, 1, v8) == 1)
  {
    sub_1C3D0CC64(v6, &qword_1EC086470, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
    v10 = 0xE300000000000000;
    v11 = 7104878;
  }

  else
  {
    v11 = sub_1C3D1E004();
    v10 = v12;
    (*(v9 + 8))(v6, v8);
  }

  MEMORY[0x1C692F800](v11, v10);

  MEMORY[0x1C692F800](0x3A6E6F736165520ALL, 0xE900000000000020);
  LOBYTE(v55) = *a1;
  v13 = sub_1C3D20134();
  MEMORY[0x1C692F800](v13);

  MEMORY[0x1C692F800](0x4320726F7272450ALL, 0xED0000203A65646FLL);
  *&v55 = sub_1C3D1E4F4();
  sub_1C3D0CCC0();
  v14 = sub_1C3D20764();
  MEMORY[0x1C692F800](v14);

  MEMORY[0x1C692F800](0x207375746174530ALL, 0xEE00203A65646F43);
  v15 = &a1[v7[6]];
  if (v15[8])
  {
    v16 = 0xE300000000000000;
    v17 = 7104878;
  }

  else
  {
    *&v55 = *v15;
    v17 = sub_1C3D20764();
    v16 = v18;
  }

  MEMORY[0x1C692F800](v17, v16);

  v19 = v67;
  v20 = v68;
  sub_1C3D1FD24();
  sub_1C3D1F1E4();
  v90 = 0;
  v21 = sub_1C3D1F744();
  v91 = 1;
  v43 = sub_1C3D1F8A4();
  KeyPath = swift_getKeyPath();
  v23 = sub_1C3D1FB44();
  v24 = swift_getKeyPath();
  *&v55 = v19;
  *(&v55 + 1) = v20;
  LOBYTE(v56) = 0;
  *(&v56 + 1) = *v89;
  DWORD1(v56) = *&v89[3];
  v25 = MEMORY[0x1E69E7CC0];
  *(&v56 + 1) = MEMORY[0x1E69E7CC0];
  v26 = v52;
  v27 = v53;
  v61 = v52;
  v62 = v53;
  v28 = v54;
  v63 = v54;
  v29 = v48;
  v30 = v49;
  v57 = v48;
  v58 = v49;
  v31 = v51;
  v32 = v50;
  v60 = v51;
  v59 = v50;
  LOBYTE(v64[0]) = v21;
  *(v64 + 1) = *v92;
  DWORD1(v64[0]) = *&v92[3];
  *(v64 + 8) = 0u;
  *(&v64[1] + 8) = 0u;
  BYTE8(v64[2]) = 1;
  *(&v64[2] + 9) = v93[0];
  HIDWORD(v64[2]) = *(v93 + 3);
  *&v65 = KeyPath;
  v33 = v43;
  *(&v65 + 1) = v43;
  *&v66 = v24;
  *(&v66 + 1) = v23;
  *&v46[23] = v56;
  *&v46[7] = v55;
  *&v46[87] = v51;
  *&v46[71] = v50;
  *&v46[55] = v49;
  *&v46[39] = v48;
  *&v46[151] = v64[0];
  *&v46[135] = v54;
  *&v46[119] = v53;
  *&v46[103] = v52;
  *&v46[215] = v66;
  *&v46[199] = v65;
  *&v46[183] = v64[2];
  *&v46[167] = v64[1];
  v34 = *&v46[160];
  *(a2 + 185) = *&v46[176];
  v35 = *&v46[208];
  *(a2 + 201) = *&v46[192];
  *(a2 + 217) = v35;
  v36 = *&v46[96];
  *(a2 + 121) = *&v46[112];
  v37 = *&v46[144];
  *(a2 + 137) = *&v46[128];
  *(a2 + 153) = v37;
  *(a2 + 169) = v34;
  v38 = *&v46[32];
  *(a2 + 57) = *&v46[48];
  v39 = *&v46[80];
  *(a2 + 73) = *&v46[64];
  *(a2 + 89) = v39;
  *(a2 + 105) = v36;
  v40 = *&v46[16];
  *(a2 + 9) = *v46;
  *(a2 + 25) = v40;
  *(a2 + 41) = v38;
  v76 = v26;
  v77 = v27;
  v78 = v28;
  v47 = 1;
  *a2 = 0;
  *(a2 + 8) = 1;
  *(a2 + 232) = *&v46[223];
  v67 = v19;
  v68 = v20;
  v69 = 0;
  *v70 = *v89;
  *&v70[3] = *&v89[3];
  v71 = v25;
  v72 = v29;
  v73 = v30;
  v75 = v31;
  v74 = v32;
  v79 = v21;
  *v80 = *v92;
  *&v80[3] = *&v92[3];
  v81 = 0u;
  v82 = 0u;
  v83 = 1;
  *v84 = v93[0];
  *&v84[3] = *(v93 + 3);
  v85 = KeyPath;
  v86 = v33;
  v87 = v24;
  v88 = v23;
  sub_1C3D0CD14(&v55, &v45, sub_1C3D0C8C4);
  sub_1C3D0CD7C(&v67, sub_1C3D0C8C4);
}

void *sub_1C3D0B5E0@<X0>(uint64_t *a1@<X8>)
{
  v3 = sub_1C3D1FD14();
  v5 = v4;
  sub_1C3D0A4E8(v1, __src);
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v11, __src, sizeof(v11));
  v6 = MEMORY[0x1E6981F40];
  sub_1C3D0CBF4(__dst, &v8, &qword_1EC087ED0, sub_1C3D0C4E4, MEMORY[0x1E6981F40]);
  sub_1C3D0CC64(v11, &qword_1EC087ED0, sub_1C3D0C4E4, v6);
  *a1 = v3;
  a1[1] = v5;
  return memcpy(a1 + 2, __dst, 0x1A0uLL);
}

uint64_t sub_1C3D0B6C8(void *a1)
{
  v2 = v1;
  v4 = sub_1C3D1E514();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v27 - v9;
  sub_1C3D09638(0, &unk_1EC087E70, MEMORY[0x1E6969C20], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = v27 - v12;
  v14 = sub_1C3D1E534();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27[1] = a1;
  v18 = a1;
  sub_1C3C31974(0, &qword_1EC085890);
  v19 = swift_dynamicCast();
  v20 = *(v15 + 56);
  if (v19)
  {
    v20(v13, 0, 1, v14);
    (*(v15 + 32))(v17, v13, v14);
    sub_1C3D0CDDC(&qword_1EC087E80, MEMORY[0x1E6969C20]);
    sub_1C3D1DF64();
    sub_1C3D1E504();
    sub_1C3D0CDDC(&qword_1EC087E88, MEMORY[0x1E6969BF8]);
    v21 = sub_1C3D20034();
    v22 = *(v5 + 8);
    v22(v7, v4);
    v22(v10, v4);
    if ((v21 & 1) == 0)
    {
      v23 = v2 + OBJC_IVAR____TtCV8HealthUIP33_9391128D22BBD0797A4FA47559946E1D25InstructionsForUseWebView11Coordinator_parent;
      v24 = sub_1C3D1E524();
      v25 = type metadata accessor for InstructionsForUseWebView(0);
      sub_1C3D088C8(v24, *(v23 + *(v25 + 24)), *(v23 + *(v25 + 24) + 8), v23 + *(v25 + 32), 0, 0);
    }

    return (*(v15 + 8))(v17, v14);
  }

  else
  {
    v20(v13, 1, 1, v14);
    return sub_1C3D0CC64(v13, &unk_1EC087E70, MEMORY[0x1E6969C20], MEMORY[0x1E69E6720]);
  }
}

void sub_1C3D0BAA4(void *a1, void *a2, uint64_t (*a3)(uint64_t, uint64_t), uint64_t a4)
{
  v68 = a4;
  v65 = a3;
  v60 = a1;
  sub_1C3C6F29C(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v61 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v56 - v8;
  v10 = sub_1C3D1E514();
  v63 = *(v10 - 8);
  v64 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v62 = &v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1C3D1F114();
  v58 = *(v12 - 8);
  v59 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v57 = &v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for InstructionsForUseWebViewContainer(0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v56 = &v56 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = sub_1C3D1E064();
  v16 = *(v66 - 1);
  MEMORY[0x1EEE9AC00](v66);
  v18 = &v56 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v56 - v20;
  sub_1C3D09638(0, &qword_1EC086470, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v24 = &v56 - v23;
  v25 = type metadata accessor for InstructionsForUseWebView(0);
  v26 = MEMORY[0x1EEE9AC00](v25);
  v28 = &v56 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = [a2 response];
  objc_opt_self();
  v67 = v29;
  v30 = swift_dynamicCastObjCClass();
  if (v30 && (v31 = v30, [v30 statusCode] >= 400))
  {
    v40 = v65 + OBJC_IVAR____TtCV8HealthUIP33_9391128D22BBD0797A4FA47559946E1D25InstructionsForUseWebView11Coordinator_parent;
    sub_1C3D0CD14(v65 + OBJC_IVAR____TtCV8HealthUIP33_9391128D22BBD0797A4FA47559946E1D25InstructionsForUseWebView11Coordinator_parent, v28, type metadata accessor for InstructionsForUseWebView);
    v41 = &v40[*(v25 + 24)];
    v42 = *(v41 + 1);
    v59 = *v41;
    v43 = [v60 URL];
    if (v43)
    {
      v44 = v43;
      sub_1C3D1E034();

      v45 = 0;
    }

    else
    {
      v45 = 1;
    }

    (*(v16 + 56))(v24, v45, 1, v66);
    v46 = [v31 statusCode];
    v47 = v62;
    sub_1C3D1E4E4();
    v48 = type metadata accessor for ErrorDetails(0);
    v49 = v63;
    v50 = v64;
    (*(v63 + 16))(&v9[v48[5]], v47, v64);
    v51 = v48[7];
    v66 = MEMORY[0x1E6968FB0];
    v65 = MEMORY[0x1E69E6720];
    sub_1C3D0CBF4(v24, &v9[v51], &qword_1EC086470, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
    *v9 = 3;
    v52 = &v9[v48[6]];
    *v52 = v46;
    v52[8] = 0;
    v53 = &v9[v48[8]];
    *v53 = v59;
    v53[1] = v42;
    (*(*(v48 - 1) + 56))(v9, 0, 1, v48);
    sub_1C3D0CD14(v9, v61, sub_1C3C6F29C);
    sub_1C3D09638(0, &qword_1EC087DA8, sub_1C3C6F29C, MEMORY[0x1E6981948]);

    sub_1C3D1FCA4();
    sub_1C3D0CD7C(v9, sub_1C3C6F29C);
    v54 = *(v28 + 1);
    v55 = v28[16];
    v69 = *v28;
    v70 = v54;
    v71 = v55;
    LOBYTE(v72) = 1;
    sub_1C3D0CAAC(0, &qword_1EC087DC8, MEMORY[0x1E69E6370], MEMORY[0x1E6981948]);

    sub_1C3D1FCA4();
    (*(v49 + 8))(v47, v50);

    sub_1C3D0CC64(v24, &qword_1EC086470, v66, v65);
    sub_1C3D0CD7C(v28, type metadata accessor for InstructionsForUseWebView);
    (*(v68 + 16))(v68, 0);
  }

  else
  {

    v32 = [a2 response];
    v33 = [v32 URL];

    if (v33)
    {
      sub_1C3D1E034();

      v34 = v18;
      v35 = v66;
      (*(v16 + 32))(v21, v34, v66);
      v69 = sub_1C3D1E014();
      v70 = v36;
      v72 = 1885960750;
      v73 = 0xE400000000000000;
      sub_1C3C4999C();
      v37 = sub_1C3D20754();

      if (v37)
      {
        (*(v68 + 16))(v68, 0);
        v38 = v56;
        sub_1C3D0CD14(v65 + OBJC_IVAR____TtCV8HealthUIP33_9391128D22BBD0797A4FA47559946E1D25InstructionsForUseWebView11Coordinator_container, v56, type metadata accessor for InstructionsForUseWebViewContainer);
        v39 = v57;
        sub_1C3D06F20(v57);
        sub_1C3D0CD7C(v38, type metadata accessor for InstructionsForUseWebViewContainer);
        sub_1C3D1F104();
        (*(v58 + 8))(v39, v59);
        (*(v16 + 8))(v21, v35);
        return;
      }

      (*(v16 + 8))(v21, v35);
    }

    (*(v68 + 16))(v68, 1);
  }
}

uint64_t sub_1C3D0C310()
{
  result = type metadata accessor for ErrorDetails(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1C3D0C37C()
{
  result = qword_1EC087EC0;
  if (!qword_1EC087EC0)
  {
    sub_1C3D0C418(255, &qword_1EC087EC8, MEMORY[0x1E697F960]);
    sub_1C3D0A0CC();
    sub_1C3D0A190();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC087EC0);
  }

  return result;
}

void sub_1C3D0C418(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_1C3D0A068(255, &qword_1EC087E28, MEMORY[0x1E697F960]);
    v7 = v6;
    sub_1C3D0C5A8(255, &qword_1EC087E18, type metadata accessor for InstructionsForUseWebView);
    v9 = a3(a1, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1C3D0C4E4()
{
  if (!qword_1EC087ED8)
  {
    sub_1C3D0C5A8(255, &qword_1EC087EE0, sub_1C3D0C60C);
    sub_1C3D09638(255, &qword_1EC087F18, sub_1C3D0C7A8, MEMORY[0x1E69E6720]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC087ED8);
    }
  }
}

void sub_1C3D0C5A8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1C3D1F1A4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1C3D0C60C()
{
  if (!qword_1EC087EE8)
  {
    sub_1C3D0C698();
    sub_1C3D0CAAC(255, &qword_1EC081230, MEMORY[0x1E697E1E0], MEMORY[0x1E6980A08]);
    v0 = sub_1C3D1F1A4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC087EE8);
    }
  }
}

void sub_1C3D0C698()
{
  if (!qword_1EC087EF0)
  {
    sub_1C3D09638(255, &qword_1EC087EF8, sub_1C3D0C74C, MEMORY[0x1E6981F40]);
    sub_1C3D0CED8(&unk_1EC087F08, &qword_1EC087EF8, sub_1C3D0C74C);
    v0 = sub_1C3D1FC84();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC087EF0);
    }
  }
}

void sub_1C3D0C74C()
{
  if (!qword_1EC087F00)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC087F00);
    }
  }
}

void sub_1C3D0C7A8()
{
  if (!qword_1EC087F20)
  {
    sub_1C3D09638(255, &qword_1EC087F28, sub_1C3D0C85C, MEMORY[0x1E6981F40]);
    sub_1C3D0CED8(&qword_1EC087F58, &qword_1EC087F28, sub_1C3D0C85C);
    v0 = sub_1C3D1FC84();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC087F20);
    }
  }
}

void sub_1C3D0C85C()
{
  if (!qword_1EC087F30)
  {
    sub_1C3D0C8C4();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC087F30);
    }
  }
}

void sub_1C3D0C8C4()
{
  if (!qword_1EC087F38)
  {
    sub_1C3D0C944();
    sub_1C3D0CA40(255, &qword_1EC081210, &qword_1EC0811B0, MEMORY[0x1E69815C0]);
    v0 = sub_1C3D1F1A4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC087F38);
    }
  }
}

void sub_1C3D0C944()
{
  if (!qword_1EC087F40)
  {
    sub_1C3D0C5A8(255, &qword_1EC087F48, sub_1C3D0C9E8);
    sub_1C3D0CA40(255, &qword_1EC081220, &qword_1EC0811E0, MEMORY[0x1E6980F50]);
    v0 = sub_1C3D1F1A4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC087F40);
    }
  }
}

void sub_1C3D0C9E8()
{
  if (!qword_1EC087F50)
  {
    v0 = sub_1C3D1F1A4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC087F50);
    }
  }
}

void sub_1C3D0CA40(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    sub_1C3D0CAAC(255, a3, a4, MEMORY[0x1E69E6720]);
    v5 = sub_1C3D1F6D4();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1C3D0CAAC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

double sub_1C3D0CAFC(uint64_t a1)
{
  *(a1 + 256) = 0;
  result = 0.0;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t sub_1C3D0CB28(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_1C3D0C5A8(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1C3D0CB98(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_1C3D0C5A8(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1C3D0CBF4(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t))
{
  sub_1C3D09638(0, a3, a4, a5);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

uint64_t sub_1C3D0CC64(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  sub_1C3D09638(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

unint64_t sub_1C3D0CCC0()
{
  result = qword_1EC087F60;
  if (!qword_1EC087F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC087F60);
  }

  return result;
}

uint64_t sub_1C3D0CD14(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C3D0CD7C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1C3D0CDDC(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1C3D0CE24()
{
  if (!qword_1EC087F70)
  {
    sub_1C3D09638(255, &qword_1EC087ED0, sub_1C3D0C4E4, MEMORY[0x1E6981F40]);
    sub_1C3D0CED8(&qword_1EC087F78, &qword_1EC087ED0, sub_1C3D0C4E4);
    v0 = sub_1C3D1FC94();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC087F70);
    }
  }
}

uint64_t sub_1C3D0CED8(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_1C3D09638(255, a2, a3, MEMORY[0x1E6981F40]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void __getTUCallProviderManagerClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getTUCallProviderManagerClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"HKMedicalIDTelephoneUtilities.m" lineNumber:18 description:{@"Unable to find class %s", "TUCallProviderManager"}];

  __break(1u);
}

void TelephonyUtilitiesLibrary_cold_1(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *TelephonyUtilitiesLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"HKMedicalIDTelephoneUtilities.m" lineNumber:17 description:{@"%s", *a1}];

  __break(1u);
}

void __getTUDialRequestClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getTUDialRequestClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"HKMedicalIDTelephoneUtilities.m" lineNumber:20 description:{@"Unable to find class %s", "TUDialRequest"}];

  __break(1u);
}

void __getTUHandleClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getTUHandleClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"HKMedicalIDTelephoneUtilities.m" lineNumber:21 description:{@"Unable to find class %s", "TUHandle"}];

  __break(1u);
}

void __getSOSUtilitiesClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getSOSUtilitiesClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"HKMedicalIDData+SOSContactManager.m" lineNumber:20 description:{@"Unable to find class %s", "SOSUtilities"}];

  __break(1u);
}

void SOSLibrary_cold_1(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *SOSLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"HKMedicalIDData+SOSContactManager.m" lineNumber:18 description:{@"%s", *a1}];

  __break(1u);
}

void __getSOSContactsManagerClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getSOSContactsManagerClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"HKMedicalIDData+SOSContactManager.m" lineNumber:19 description:{@"Unable to find class %s", "SOSContactsManager"}];

  __break(1u);
}

void ClampedWeightLoggingOutOfBoundsValues_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_fault_impl(&dword_1C3942000, a2, OS_LOG_TYPE_FAULT, "invalid high value in HKSimpleDataEntryWeightItem %@", &v2, 0xCu);
}

void ClampedWeightLoggingOutOfBoundsValues_cold_2(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_fault_impl(&dword_1C3942000, a2, OS_LOG_TYPE_FAULT, "invalid low value in HKSimpleDataEntryWeightItem %@", &v2, 0xCu);
}

void __getSOSUtilitiesClass_block_invoke_cold_1_0()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getSOSUtilitiesClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"HKEmergencyCardContactsTableItem.m" lineNumber:48 description:{@"Unable to find class %s", "SOSUtilities"}];

  __break(1u);
}

void SOSLibrary_cold_1_0(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *SOSLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"HKEmergencyCardContactsTableItem.m" lineNumber:47 description:{@"%s", *a1}];

  __break(1u);
}

void __getSOSManagerClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getSOSManagerClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"HKEmergencyCardContactsTableItem.m" lineNumber:49 description:{@"Unable to find class %s", "SOSManager"}];

  __break(1u);
}

void CoreTelephonyLibrary_cold_1(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *CoreTelephonyLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"HKCoreTelephonyUtilities.m" lineNumber:16 description:{@"%s", *a1}];

  __break(1u);
}

void __getSTStorageAppHeaderCellClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getSTStorageAppHeaderCellClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"HKHealthManageStorageViewController.m" lineNumber:25 description:{@"Unable to find class %s", "STStorageAppHeaderCell"}];

  __break(1u);
}

void __getSTStorageAppHeaderCellClass_block_invoke_cold_2(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *StorageSettingsLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"HKHealthManageStorageViewController.m" lineNumber:24 description:{@"%s", *a1}];

  __break(1u);
}

void __getCNAvatarImageRendererClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getCNAvatarImageRendererClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"HKTitledContactBuddyHeaderView.m" lineNumber:30 description:{@"Unable to find class %s", "CNAvatarImageRenderer"}];

  __break(1u);
}

void ContactsUILibrary_cold_1(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *ContactsUILibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"HKTitledContactBuddyHeaderView.m" lineNumber:28 description:{@"%s", *a1}];

  __break(1u);
}

void __getCNAvatarImageRenderingScopeClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getCNAvatarImageRenderingScopeClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"HKTitledContactBuddyHeaderView.m" lineNumber:31 description:{@"Unable to find class %s", "CNAvatarImageRenderingScope"}];

  __break(1u);
}

void __getMKBGetDeviceLockStateSymbolLoc_block_invoke_cold_1(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *MobileKeyBagLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"HKMedicalIDViewController.m" lineNumber:97 description:{@"%s", *a1}];

  __break(1u);
}

void __getBKDeviceClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getBKDeviceClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"HKMedicalIDViewController.m" lineNumber:92 description:{@"Unable to find class %s", "BKDevice"}];

  __break(1u);
}

void BiometricKitLibrary_cold_1(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *BiometricKitLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"HKMedicalIDViewController.m" lineNumber:91 description:{@"%s", *a1}];

  __break(1u);
}

void __getBKDeviceManagerClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getBKDeviceManagerClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"HKMedicalIDViewController.m" lineNumber:93 description:{@"Unable to find class %s", "BKDeviceManager"}];

  __break(1u);
}

void HKInteractiveChartDataSourceChartStyle_cold_1(void *a1, uint64_t a2, NSObject *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v6 = [a1 displayTypeIdentifierString];
  v7 = [a1 chartingRules];
  v8 = 138412802;
  v9 = v6;
  v10 = 2048;
  v11 = a2;
  v12 = 2048;
  v13 = [v7 chartStyleForTimeScope:a2];
  _os_log_error_impl(&dword_1C3942000, a3, OS_LOG_TYPE_ERROR, "No generic data source for display type: %@, timescope %ld, style %ld", &v8, 0x20u);
}

void __getCNContactPickerViewControllerClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getCNContactPickerViewControllerClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"HKEmergencyContactPicker.m" lineNumber:19 description:{@"Unable to find class %s", "CNContactPickerViewController"}];

  __break(1u);
}

void __getCNContactPickerViewControllerClass_block_invoke_cold_2(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *ContactsUILibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"HKEmergencyContactPicker.m" lineNumber:18 description:{@"%s", *a1}];

  __break(1u);
}

void HKCircularBufferCreate_cold_1()
{
  v7 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"HKCircularBufferRef HKCircularBufferCreate(NSInteger, NSInteger)"}];
  [OUTLINED_FUNCTION_0_17(v0 v1];
}

void HKCircularBufferRelease_cold_1()
{
  v7 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void HKCircularBufferRelease(HKCircularBufferRef)"];
  [OUTLINED_FUNCTION_0_17(v0 v1];
}

void HKCircularBufferIsEmpty_cold_1()
{
  v7 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"BOOL HKCircularBufferIsEmpty(HKCircularBufferRef)"];
  [OUTLINED_FUNCTION_0_17(v0 v1];
}

void HKCircularBufferCount_cold_1()
{
  v7 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSInteger HKCircularBufferCount(HKCircularBufferRef)"];
  [OUTLINED_FUNCTION_0_17(v0 v1];
}

void HKCircularBufferClean_cold_1()
{
  v7 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void HKCircularBufferClean(HKCircularBufferRef, HKCircularBufferPredicate, void *)"}];
  [OUTLINED_FUNCTION_0_17(v0 v1];
}

void HKCircularBufferClean_cold_2()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _HKCircularBufferRemoveNItems(HKCircularBufferRef, NSInteger)"}];
  [v0 handleFailureInFunction:v1 file:@"HKCiruclarBuffer.m" lineNumber:115 description:{@"Invalid parameter not satisfying: %@", @"buffer != NULL"}];
}

void HKCircularBufferIteratorHasNext_cold_1()
{
  v7 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"BOOL HKCircularBufferIteratorHasNext(HKCircularBufferRef, HKCircularBufferIterator)"}];
  [OUTLINED_FUNCTION_0_17(v0 v1];
}

void HKCircularBufferIteratorNext_cold_1()
{
  v7 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void *HKCircularBufferIteratorNext(HKCircularBufferRef, HKCircularBufferIterator *)"}];
  [OUTLINED_FUNCTION_0_17(v0 v1];
}

void HKCircularBufferIteratorNext_cold_2()
{
  v7 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void *HKCircularBufferIteratorNext(HKCircularBufferRef, HKCircularBufferIterator *)"}];
  [OUTLINED_FUNCTION_0_17(v0 v1];
}

void HKCircularBufferAddItem_cold_1()
{
  v7 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void HKCircularBufferAddItem(HKCircularBufferRef, void *)"}];
  [OUTLINED_FUNCTION_0_17(v0 v1];
}

void __getWKWebViewConfigurationClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getWKWebViewConfigurationClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"HKCDADocumentReportViewController.m" lineNumber:22 description:{@"Unable to find class %s", "WKWebViewConfiguration"}];

  __break(1u);
}

void WebKitLibrary_cold_1(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *WebKitLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"HKCDADocumentReportViewController.m" lineNumber:21 description:{@"%s", *a1}];

  __break(1u);
}

void __getWKWebViewClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getWKWebViewClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"HKCDADocumentReportViewController.m" lineNumber:23 description:{@"Unable to find class %s", "WKWebView"}];

  __break(1u);
}

void __getCNLabeledValueClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getCNLabeledValueClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"HKEmergencyContactRelationshipPicker.m" lineNumber:21 description:{@"Unable to find class %s", "CNLabeledValue"}];

  __break(1u);
}

void __getCNLabeledValueClass_block_invoke_cold_2(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *ContactsUILibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"HKEmergencyContactRelationshipPicker.m" lineNumber:20 description:{@"%s", *a1}];

  __break(1u);
}

CGRect CGPathGetBoundingBox(CGPathRef path)
{
  MEMORY[0x1EEDBAC38](path);
  result.size.height = v4;
  result.size.width = v3;
  result.origin.y = v2;
  result.origin.x = v1;
  return result;
}

CGPoint CGPointApplyAffineTransform(CGPoint point, CGAffineTransform *t)
{
  MEMORY[0x1EEDBAD70](t, point, *&point.y);
  result.y = v3;
  result.x = v2;
  return result;
}

CGRect CGRectApplyAffineTransform(CGRect rect, CGAffineTransform *t)
{
  MEMORY[0x1EEDBAD98](t, rect.origin, *&rect.origin.y, rect.size, *&rect.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CGRect CGRectInset(CGRect rect, CGFloat dx, CGFloat dy)
{
  MEMORY[0x1EEDBAE30](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height, dx, dy);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

CGRect CGRectIntegral(CGRect rect)
{
  MEMORY[0x1EEDBAE38](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height);
  result.size.height = v4;
  result.size.width = v3;
  result.origin.y = v2;
  result.origin.x = v1;
  return result;
}

CGRect CGRectIntersection(CGRect r1, CGRect r2)
{
  MEMORY[0x1EEDBAE40](r1.origin, *&r1.origin.y, r1.size, *&r1.size.height, r2.origin, *&r2.origin.y, r2.size, *&r2.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CGRect CGRectOffset(CGRect rect, CGFloat dx, CGFloat dy)
{
  MEMORY[0x1EEDBAE78](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height, dx, dy);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

CGRect CGRectStandardize(CGRect rect)
{
  MEMORY[0x1EEDBAE80](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height);
  result.size.height = v4;
  result.size.width = v3;
  result.origin.y = v2;
  result.origin.x = v1;
  return result;
}

CGRect CGRectUnion(CGRect r1, CGRect r2)
{
  MEMORY[0x1EEDBAE88](r1.origin, *&r1.origin.y, r1.size, *&r1.size.height, r2.origin, *&r2.origin.y, r2.size, *&r2.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CLLocationCoordinate2D MKCoordinateForMapPoint(MKMapPoint mapPoint)
{
  MEMORY[0x1EEDCCB50](mapPoint, *&mapPoint.y);
  result.longitude = v2;
  result.latitude = v1;
  return result;
}

MKMapPoint MKMapPointForCoordinate(CLLocationCoordinate2D coordinate)
{
  MEMORY[0x1EEDCCB88](coordinate, *&coordinate.longitude);
  result.y = v2;
  result.x = v1;
  return result;
}

MKMapRect MKMapRectInset(MKMapRect rect, double dx, double dy)
{
  MEMORY[0x1EEDCCBB0](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height, dx, dy);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}
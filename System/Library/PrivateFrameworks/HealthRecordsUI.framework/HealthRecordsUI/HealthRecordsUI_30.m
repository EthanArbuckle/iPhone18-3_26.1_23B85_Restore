uint64_t sub_1D12F86B8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1D108077C;

  return sub_1D12F7D9C(a1, v4, v5, v6);
}

uint64_t sub_1D12F876C(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_1D12F87B4()
{
  v0 = sub_1D1390ECC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v9 - v5;
  sub_1D1390E8C();
  if (qword_1EE069F90 != -1)
  {
    swift_once();
  }

  sub_1D138D1CC();
  sub_1D1390E9C();
  sub_1D1390E1C();
  type metadata accessor for UploadNewDataCell.PassthroughButton();
  (*(v1 + 16))(v3, v6, v0);
  v7 = sub_1D1390EDC();
  (*(v1 + 8))(v6, v0);
  return v7;
}

id sub_1D12F89C0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CoverageClassificationFormatter();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_1D12F8A28(uint64_t a1)
{
  result = sub_1D12F8A50();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1D12F8A50()
{
  result = qword_1EC60F440;
  if (!qword_1EC60F440)
  {
    type metadata accessor for CoverageClassificationFormatter();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60F440);
  }

  return result;
}

id sub_1D12F8AA4(void *a1)
{
  v2 = [a1 value];
  if (v2)
  {
    v3 = v2;
    v4 = sub_1D139016C();
    v6 = v5;

    v7 = sub_1D10F7284(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v9 = *(v7 + 2);
    v8 = *(v7 + 3);
    if (v9 >= v8 >> 1)
    {
      v7 = sub_1D10F7284((v8 > 1), v9 + 1, 1, v7);
    }

    *(v7 + 2) = v9 + 1;
    v10 = &v7[16 * v9];
    *(v10 + 4) = v4;
    *(v10 + 5) = v6;
  }

  else
  {
    v7 = MEMORY[0x1E69E7CC0];
  }

  v11 = [a1 name];
  if (v11)
  {
    v12 = v11;
    v13 = sub_1D139016C();
    v15 = v14;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v7 = sub_1D10F7284(0, *(v7 + 2) + 1, 1, v7);
    }

    v17 = *(v7 + 2);
    v16 = *(v7 + 3);
    if (v17 >= v16 >> 1)
    {
      v7 = sub_1D10F7284((v16 > 1), v17 + 1, 1, v7);
    }

    *(v7 + 2) = v17 + 1;
    v18 = &v7[16 * v17];
    *(v18 + 4) = v13;
    *(v18 + 5) = v15;
  }

  v19 = Array<A>.newlineJoined.getter(v7);
  v21 = v20;

  v22 = HIBYTE(v21) & 0xF;
  if ((v21 & 0x2000000000000000) == 0)
  {
    v22 = v19 & 0xFFFFFFFFFFFFLL;
  }

  if (v22)
  {
    v23 = [objc_allocWithZone(WDMedicalRecordDisplayItem) init];
    [v23 setDisplayItemType_];
    v24 = [a1 type];
    if (v24)
    {
      v25 = v24;
      v26 = [v24 localizedPreferredName];

      if (v26)
      {
        v27 = sub_1D139016C();
        v29 = v28;

        v30 = HIBYTE(v29) & 0xF;
        if ((v29 & 0x2000000000000000) == 0)
        {
          v30 = v27 & 0xFFFFFFFFFFFFLL;
        }

        if (!v30)
        {
        }
      }
    }

    v31 = sub_1D139012C();

    [v23 setTitle_];

    v32 = sub_1D139012C();

    [v23 setSubtitle_];

    [v23 setSeparatorStyle_];
    [v23 setSeparatorHidden_];
    [v23 setExtraTopPadding_];
  }

  else
  {

    return 0;
  }

  return v23;
}

uint64_t sub_1D12F8D8C(unint64_t a1)
{
  v3 = v1;
  if (a1 >> 62)
  {
    goto LABEL_31;
  }

  v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (1)
  {
    v5 = MEMORY[0x1E69E7CC0];
    if (!v4)
    {
      return MEMORY[0x1E69E7CC0];
    }

    v20 = a1;
    v26 = MEMORY[0x1E69E7CC0];
    a1 = sub_1D10FDEAC(0, v4 & ~(v4 >> 63), 0);
    if (v4 < 0)
    {
      __break(1u);
LABEL_33:
      v25 = v2;
      result = sub_1D139169C();
      __break(1u);
      return result;
    }

    v6 = 0;
    v2 = *(v3 + OBJC_IVAR____TtC15HealthRecordsUI31CoverageClassificationFormatter_context);
    v3 = v26;
    v7 = v20;
    while (1)
    {
      v8 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      if ((v20 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x1D3886B70](v6, v7);
      }

      else
      {
        if (v6 >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_30;
        }

        v9 = *(v7 + 8 * v6 + 32);
      }

      v10 = v9;
      if (v2 == 1)
      {
        v11 = sub_1D12F8AA4(v9);
        v24 = v11;
        v25 = v5;
        if (v11)
        {
          v12 = v11;
          MEMORY[0x1D3885D90]();
          if (*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v25 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_1D13904BC();
          }

          sub_1D13904FC();
          v5 = v25;
          v7 = v20;
        }

        v13 = &v23;
      }

      else
      {
        if (v2)
        {
          goto LABEL_33;
        }

        v14 = sub_1D12F8AA4(v9);
        v22 = v14;
        v25 = v5;
        if (v14)
        {
          v15 = v14;
          MEMORY[0x1D3885D90]();
          if (*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v25 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_1D13904BC();
          }

          sub_1D13904FC();
          v5 = v25;
          v7 = v20;
        }

        v13 = &v21;
      }

      a1 = sub_1D1166490((v13 + 32));
      v26 = v3;
      v17 = *(v3 + 16);
      v16 = *(v3 + 24);
      if (v17 >= v16 >> 1)
      {
        a1 = sub_1D10FDEAC((v16 > 1), v17 + 1, 1);
        v7 = v20;
        v3 = v26;
      }

      *(v3 + 16) = v17 + 1;
      *(v3 + 8 * v17 + 32) = v5;
      ++v6;
      v5 = MEMORY[0x1E69E7CC0];
      if (v8 == v4)
      {
        return v3;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    v19 = a1;
    v4 = sub_1D13910DC();
    a1 = v19;
  }
}

uint64_t sub_1D12F9040()
{
  sub_1D139177C();
  sub_1D139027C();
  sub_1D139027C();
  sub_1D139027C();
  sub_1D139179C();
  return sub_1D13917CC();
}

uint64_t sub_1D12F90DC()
{
  sub_1D139027C();
  sub_1D139027C();
  sub_1D139027C();
  return sub_1D139179C();
}

uint64_t sub_1D12F914C()
{
  sub_1D139177C();
  sub_1D139027C();
  sub_1D139027C();
  sub_1D139027C();
  sub_1D139179C();
  return sub_1D13917CC();
}

uint64_t sub_1D12F91E4()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t sub_1D12F9214(uint64_t a1)
{
  v2 = sub_1D1116B08();

  return MEMORY[0x1EEE0DA58](a1, v2);
}

uint64_t sub_1D12F9260(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v4 = *(a1 + 40);
  v3 = *(a1 + 48);
  v5 = *(a1 + 56);
  v6 = *(a1 + 64);
  v7 = *(a2 + 32);
  v8 = *(a2 + 40);
  v9 = *(a2 + 48);
  v10 = *(a2 + 56);
  v11 = *(a2 + 64);
  if (*(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24) || (sub_1D139162C()) && (v2 == v7 && v4 == v8 || (sub_1D139162C()) && (v3 == v9 && v5 == v10 || (sub_1D139162C()))
  {
    return v6 ^ v11 ^ 1u;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_1D12F9350()
{
  result = qword_1EC60F448;
  if (!qword_1EC60F448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60F448);
  }

  return result;
}

unint64_t sub_1D12F93A8()
{
  result = qword_1EC60F450;
  if (!qword_1EC60F450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60F450);
  }

  return result;
}

id sub_1D12F95D4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PaddedView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for AccountSourceDataSource()
{
  result = qword_1EC60F468;
  if (!qword_1EC60F468)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D12F96C8(void *a1, void *a2)
{
  v4 = sub_1D138FF3C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (&v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for AccountSourceItem();
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  sub_1D108310C();
  v10 = a1;
  v11 = a2;
  *v7 = sub_1D1390A7C();
  (*(v5 + 104))(v7, *MEMORY[0x1E69E8020], v4);
  LOBYTE(a2) = sub_1D138FF5C();
  result = (*(v5 + 8))(v7, v4);
  if (a2)
  {
    sub_1D12F06F4(0, &qword_1EC60B640, sub_1D1159FC8);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_1D139E700;
    *(v13 + 56) = v8;
    *(v13 + 64) = sub_1D12F9D80(&qword_1EC60F480, type metadata accessor for AccountSourceItem);
    *(v13 + 32) = v9;

    sub_1D138E5AC();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D12F98FC()
{
  sub_1D138E5CC();

  return swift_deallocClassInstance();
}

uint64_t sub_1D12F9934()
{
  v0 = sub_1D138E6BC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D138E65C();
  v4 = sub_1D138E6AC();
  (*(v1 + 8))(v3, v0);
  return v4;
}

uint64_t sub_1D12F9AAC(void *a1, void *a2)
{
  v4 = sub_1D138D5EC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for AccountSourceItem();
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  sub_1D12F06F4(0, &qword_1EC60AA30, MEMORY[0x1E69A3690]);
  sub_1D138E52C();
  v10 = swift_allocObject();
  v19 = xmmword_1D139E700;
  *(v10 + 16) = xmmword_1D139E700;
  sub_1D12F06F4(0, &qword_1EC60B640, sub_1D1159FC8);
  v11 = swift_allocObject();
  *(v11 + 16) = v19;
  *(v11 + 56) = v8;
  *(v11 + 64) = sub_1D12F9D80(&qword_1EC60F480, type metadata accessor for AccountSourceItem);
  *(v11 + 32) = v9;
  v12 = a1;
  v13 = a2;

  sub_1D138E4DC();
  v20[0] = 0;
  v20[1] = 0xE000000000000000;
  sub_1D13911EC();

  strcpy(v20, "MutableArray<");
  HIWORD(v20[1]) = -4864;
  sub_1D138D5DC();
  v14 = sub_1D138D59C();
  v16 = v15;
  (*(v5 + 8))(v7, v4);
  MEMORY[0x1D3885C10](v14, v16);

  MEMORY[0x1D3885C10](62, 0xE100000000000000);
  v17 = sub_1D138E56C();

  return v17;
}

uint64_t sub_1D12F9D80(unint64_t *a1, void (*a2)(uint64_t))
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

BOOL sub_1D12F9DC8(unsigned __int8 a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = (a2 + 32);
  do
  {
    v4 = v2;
    if (v2-- == 0)
    {
      break;
    }

    v6 = *v3++;
  }

  while (v6 != a1);
  return v4 != 0;
}

uint64_t sub_1D12F9DF8(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for ClinicalSharingSelectableAuthorizationCategoryItem() - 8;
  MEMORY[0x1EEE9AC00](v4);
  v7 = (&v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(a2 + 16);
  if (!v8)
  {
    return 0;
  }

  v9 = a2 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
  v10 = *(v5 + 72);
  while (1)
  {
    sub_1D111EC40(v9, v7);
    v11 = v7[2] == a1[2] && v7[3] == a1[3];
    if (!v11 && (sub_1D139162C() & 1) == 0)
    {
      sub_1D111ECA4(v7);
      goto LABEL_4;
    }

    if (*v7 == *a1 && v7[1] == a1[1])
    {
      break;
    }

    v13 = sub_1D139162C();
    sub_1D111ECA4(v7);
    if (v13)
    {
      return 1;
    }

LABEL_4:
    v9 += v10;
    if (!--v8)
    {
      return 0;
    }
  }

  sub_1D111ECA4(v7);
  return 1;
}

uint64_t sub_1D12F9F44(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v3 = sub_1D138F0BC();
  v77 = *(v3 - 8);
  v4 = MEMORY[0x1EEE9AC00](v3);
  v78 = &v72 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v74 = &v72 - v6;
  v7 = sub_1D138ED5C();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v76 = &v72 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = (&v72 - v12);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v72 - v14;
  (*(v8 + 104))(&v72 - v14, *MEMORY[0x1E69A3908], v7);
  v16 = sub_1D138ED4C();
  v17 = *(v8 + 8);
  v17(v15, v7);
  if (v16)
  {
    if (qword_1EE069F90 != -1)
    {
      swift_once();
    }

    v18 = sub_1D138D1CC();
    v19 = [objc_opt_self() hk_medicationsSymbolImage];
    return v18;
  }

  v72 = v3;
  v73 = *(v8 + 16);
  v73(v13, a1, v7);
  if ((*(v8 + 88))(v13, v7) != *MEMORY[0x1E69A38E8])
  {
    v17(v13, v7);
    v24 = v78;
    sub_1D138F06C();
    v25 = v76;
    v73(v76, a1, v7);
    v26 = sub_1D138F0AC();
    v27 = sub_1D139081C();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v74 = swift_slowAlloc();
      v79 = v74;
      *v28 = 136315394;
      v29 = sub_1D139184C();
      v30 = v25;
      v32 = sub_1D11DF718(v29, v31, &v79);
      LODWORD(ObjectType) = v27;
      v33 = v32;

      *(v28 + 4) = v33;
      *(v28 + 12) = 2080;
      v73(v15, v25, v7);
      v34 = sub_1D13901EC();
      v36 = v35;
      v17(v30, v7);
      v37 = sub_1D11DF718(v34, v36, &v79);

      *(v28 + 14) = v37;
      _os_log_impl(&dword_1D101F000, v26, ObjectType, "[%s] Could not get hktype from identifier: %s", v28, 0x16u);
      v38 = v74;
      swift_arrayDestroy();
      MEMORY[0x1D38882F0](v38, -1, -1);
      MEMORY[0x1D38882F0](v28, -1, -1);

      (*(v77 + 8))(v78, v72);
    }

    else
    {

      v17(v25, v7);
      (*(v77 + 8))(v24, v72);
    }

    return 0;
  }

  (*(v8 + 96))(v13, v7);
  v20 = *v13;
  if (sub_1D12FBFE8(a1) == 3)
  {
    v21 = [objc_opt_self() categoryWithID_];
    v22 = v21;
    if (v21)
    {
      v23 = [v21 displayName];
      v18 = sub_1D139016C();
    }

    else
    {
      v18 = 0;
    }

    v44 = v22;
    if (![v44 largeListIcon])
    {
      [v44 listIcon];
    }

    [v44 color];

    return v18;
  }

  v39 = [v1 displayTypeForObjectType_];
  if (!v39)
  {
    v45 = v74;
    sub_1D138F06C();
    v46 = v20;
    v47 = sub_1D138F0AC();
    v48 = sub_1D13907FC();

    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v79 = v50;
      *v49 = 136315394;
      v51 = sub_1D139184C();
      v53 = sub_1D11DF718(v51, v52, &v79);

      *(v49 + 4) = v53;
      *(v49 + 12) = 2080;
      v54 = v46;
      v55 = [v54 description];
      v56 = sub_1D139016C();
      v58 = v57;

      v59 = sub_1D11DF718(v56, v58, &v79);

      *(v49 + 14) = v59;
      _os_log_impl(&dword_1D101F000, v47, v48, "[%s] Could not get display type from hkType: %s", v49, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1D38882F0](v50, -1, -1);
      MEMORY[0x1D38882F0](v49, -1, -1);
    }

    else
    {
    }

    (*(v77 + 8))(v45, v72);
    return 0;
  }

  v40 = v39;
  if ([v20 isClinicalType])
  {
    v41 = [objc_opt_self() categoryWithID_];
    v42 = v41;
    if (v41)
    {
      v43 = [v41 displayName];
      v18 = sub_1D139016C();
    }

    else
    {
      v18 = 0;
    }

    v69 = sub_1D139012C();
    v70 = [objc_opt_self() systemImageNamed_];

    if (v70)
    {
      v71 = [objc_opt_self() configurationPreferringMulticolor];
      [v70 imageByApplyingSymbolConfiguration_];

      return v18;
    }

    goto LABEL_39;
  }

  if (sub_1D13907BC())
  {
    if (qword_1EE069F90 != -1)
    {
      swift_once();
    }

    v18 = sub_1D138D1CC();
    v60 = sub_1D139012C();
    v61 = [objc_opt_self() systemImageNamed_];

    if (v61)
    {
      v62 = [objc_opt_self() configurationPreferringMulticolor];
      [v61 imageByApplyingSymbolConfiguration_];

      return v18;
    }

LABEL_39:
    return v18;
  }

  v64 = [v40 displayCategory];
  v65 = [v64 displayName];

  v18 = sub_1D139016C();
  v66 = [v40 displayCategory];
  v67 = [v66 largeListIcon];

  if (!v67)
  {
    [v40 listIcon];
  }

  v68 = [v40 displayCategory];
  [v68 color];

  return v18;
}

uint64_t sub_1D12FAA54(void **a1)
{
  v2 = *(type metadata accessor for ClinicalSharingSelectableAuthorizationCategoryItem() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_1D1245FF0(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_1D12FE5A0(v6);
  *a1 = v3;
  return result;
}

uint64_t sub_1D12FAAFC(uint64_t a1)
{
  v2 = v1;
  v206 = *v2;
  sub_1D1300890(0, &qword_1EC60AAA8, type metadata accessor for ClinicalSharingSelectableAuthorizationCategoryItem, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v199 = &v194 - v5;
  v209 = sub_1D138F0BC();
  v6 = *(v209 - 8);
  v7 = MEMORY[0x1EEE9AC00](v209);
  v194 = &v194 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v194 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v194 - v12;
  v14 = type metadata accessor for ClinicalSharingSelectableAuthorizationCategoryItem();
  v218 = *(v14 - 8);
  v219 = v14;
  v15 = MEMORY[0x1EEE9AC00](v14);
  v198 = &v194 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v196 = &v194 - v18;
  v19 = MEMORY[0x1EEE9AC00](v17);
  v208 = &v194 - v20;
  v21 = MEMORY[0x1EEE9AC00](v19);
  v213 = &v194 - v22;
  v23 = MEMORY[0x1EEE9AC00](v21);
  v212 = &v194 - v24;
  MEMORY[0x1EEE9AC00](v23);
  v26 = &v194 - v25;
  v216 = sub_1D138ED5C();
  v27 = *(v216 - 8);
  v28 = MEMORY[0x1EEE9AC00](v216);
  v204 = &v194 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x1EEE9AC00](v28);
  v203 = &v194 - v31;
  v32 = MEMORY[0x1EEE9AC00](v30);
  v202 = &v194 - v33;
  MEMORY[0x1EEE9AC00](v32);
  v220 = &v194 - v34;
  v35 = MEMORY[0x1E69E7CC0];
  v214 = sub_1D109BD80(MEMORY[0x1E69E7CC0]);
  v36 = sub_1D109C3BC(v35);
  v38 = *(a1 + 16);
  v223 = v2;
  v195 = v6;
  if (v38)
  {
    v211 = v26;
    v205 = v13;
    v201 = v11;
    v41 = *(v27 + 16);
    v39 = v27 + 16;
    v40 = v41;
    v42 = a1 + ((*(v39 + 64) + 32) & ~*(v39 + 64));
    v43 = v2[3];
    v222 = *(v39 + 56);
    v215 = 0x80000001D13CBEE0;
    v224 = (v39 - 8);
    v207 = (v6 + 8);
    *&v37 = 136315394;
    v200 = v37;
    v44 = v216;
    v226 = v43;
    v227 = v39;
    v45 = v220;
    v46 = v38;
    v225 = v41;
    v41(v220, v42, v216);
    while (1)
    {
      v47 = sub_1D12FBFE8(v45);
      if (v47 == 5)
      {
        v48 = sub_1D12F9F44(v45);
        if (!v49)
        {
          v217 = v50;
          v221 = v51;
          v89 = v40;
          v90 = v205;
          sub_1D138F06C();
          v91 = v202;
          v89(v202, v45, v44);
          v92 = sub_1D138F0AC();
          v93 = sub_1D139081C();
          if (os_log_type_enabled(v92, v93))
          {
            v94 = swift_slowAlloc();
            v197 = v92;
            v95 = v91;
            v96 = v94;
            v228 = swift_slowAlloc();
            v229 = v228;
            *v96 = v200;
            v97 = sub_1D139184C();
            v99 = sub_1D11DF718(v97, v98, &v229);

            *(v96 + 4) = v99;
            *(v96 + 12) = 2080;
            v225(v203, v95, v44);
            v100 = sub_1D13901EC();
            v102 = v101;
            v210 = *v224;
            v210(v95, v44);
            v103 = sub_1D11DF718(v100, v102, &v229);
            v45 = v220;

            *(v96 + 14) = v103;
            v2 = v223;
            v104 = v197;
            _os_log_impl(&dword_1D101F000, v197, v93, "[%s] Could not get either category name for identifier: %s", v96, 0x16u);
            v105 = v228;
            swift_arrayDestroy();
            MEMORY[0x1D38882F0](v105, -1, -1);
            MEMORY[0x1D38882F0](v96, -1, -1);

            (*v207)(v205, v209);
            v210(v45, v44);
          }

          else
          {

            v146 = *v224;
            (*v224)(v91, v44);
            (*v207)(v90, v209);
            v146(v45, v44);
          }

LABEL_43:
          v40 = v225;
          goto LABEL_5;
        }

        v52 = v49;
        if (v49 != 1)
        {
          v217 = v50;
          v221 = v51;
          v228 = v42;
          v106 = v40;
          v107 = v2[6];
          v210 = v48;

          v108 = sub_1D12FCB38(v45);
          v109 = v45;
          v111 = v110;
          v112 = v219;
          v113 = v44;
          v114 = v213;
          v106(v213 + *(v219 + 48), v109, v113);
          type metadata accessor for ClinicalSharingSelectableAuthorizationCategoryCell();
          sub_1D13008F4(&qword_1EC609BC8, type metadata accessor for ClinicalSharingSelectableAuthorizationCategoryCell);
          v115 = sub_1D138DECC();
          v116 = *(v112 + 52);
          *v114 = v115;
          *(v114 + 8) = v117;
          v229 = 0xD000000000000033;
          v230 = v215;
          MEMORY[0x1D3885C10](v108, v111);
          v118 = v210;
          v119 = v230;
          *(v114 + 16) = v229;
          *(v114 + 24) = v119;
          *(v114 + v116) = 0;
          *(v114 + 88) = v118;
          *(v114 + 96) = v52;
          *(v114 + 56) = v108;
          *(v114 + 64) = v111;
          *(v114 + 72) = 0;
          *(v114 + 80) = 0;
          *(v114 + 48) = 1;
          *(v114 + 32) = sub_1D1300A70;
          *(v114 + 40) = v107;
          v120 = v214;
          if (*(v214 + 16) && (v121 = sub_1D129E12C(v118, v52, v217, v221), (v122 & 1) != 0))
          {
            v123 = *(*(v120 + 56) + 8 * v121);
          }

          else
          {
            v123 = MEMORY[0x1E69E7CC0];
          }

          v44 = v216;
          v45 = v220;
          v42 = v228;
          sub_1D111EC40(v213, v208);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v123 = sub_1D10F7738(0, v123[2] + 1, 1, v123);
          }

          v140 = v123[2];
          v139 = v123[3];
          if (v140 >= v139 >> 1)
          {
            v123 = sub_1D10F7738(v139 > 1, v140 + 1, 1, v123);
          }

          v123[2] = v140 + 1;
          sub_1D10F0DFC(v208, v123 + ((*(v218 + 80) + 32) & ~*(v218 + 80)) + *(v218 + 72) * v140);
          v141 = v214;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v229 = v141;
          v143 = v217;
          v144 = v221;
          sub_1D11DA750(v123, v210, v52, v217, v221, isUniquelyReferenced_nonNull_native);

          v214 = v229;
          (*v224)(v45, v44);
          sub_1D111ECA4(v213);
          v2 = v223;
          goto LABEL_43;
        }

        v53 = v45;
        v54 = v201;
        sub_1D138F06C();
        v55 = v204;
        v40(v204, v53, v44);
        v56 = sub_1D138F0AC();
        v57 = sub_1D139081C();
        if (os_log_type_enabled(v56, v57))
        {
          v58 = swift_slowAlloc();
          v217 = v56;
          v59 = v55;
          v60 = v58;
          v228 = swift_slowAlloc();
          v229 = v228;
          *v60 = v200;
          v61 = sub_1D139184C();
          v63 = sub_1D11DF718(v61, v62, &v229);

          *(v60 + 4) = v63;
          *(v60 + 12) = 2080;
          v225(v203, v59, v44);
          v64 = sub_1D13901EC();
          v66 = v65;
          v221 = *v224;
          (v221)(v59, v44);
          v67 = sub_1D11DF718(v64, v66, &v229);
          v40 = v225;

          *(v60 + 14) = v67;
          v2 = v223;
          v68 = v217;
          _os_log_impl(&dword_1D101F000, v217, v57, "[%s] Could not get either category for identifier: %s", v60, 0x16u);
          v69 = v228;
          swift_arrayDestroy();
          MEMORY[0x1D38882F0](v69, -1, -1);
          MEMORY[0x1D38882F0](v60, -1, -1);

          (*v207)(v54, v209);
          v45 = v220;
          (v221)(v220, v44);
        }

        else
        {

          v145 = *v224;
          (*v224)(v55, v44);
          (*v207)(v54, v209);
          v45 = v220;
          v145(v220, v44);
        }
      }

      else
      {
        v228 = v42;
        v221 = v46;
        v70 = sub_1D12FFD08(v47);
        v72 = v71;
        v73 = v2[6];

        v74 = sub_1D12FCB38(v45);
        v75 = v44;
        v77 = v76;
        v78 = v219;
        v79 = v211;
        v40(&v211[*(v219 + 48)], v45, v75);
        type metadata accessor for ClinicalSharingSelectableAuthorizationCategoryCell();
        sub_1D13008F4(&qword_1EC609BC8, type metadata accessor for ClinicalSharingSelectableAuthorizationCategoryCell);
        v80 = sub_1D138DECC();
        v81 = *(v78 + 52);
        *v79 = v80;
        *(v79 + 8) = v82;
        v229 = 0xD000000000000033;
        v230 = v215;
        MEMORY[0x1D3885C10](v74, v77);
        v83 = v230;
        *(v79 + 16) = v229;
        *(v79 + 24) = v83;
        *(v79 + v81) = 0;
        *(v79 + 88) = v70;
        *(v79 + 96) = v72;
        *(v79 + 56) = v74;
        *(v79 + 64) = v77;
        *(v79 + 72) = 0;
        *(v79 + 80) = 0;
        *(v79 + 48) = 1;
        *(v79 + 32) = sub_1D1300A70;
        *(v79 + 40) = v73;
        v84 = v36[2];

        if (v84)
        {
          v85 = sub_1D11362EC(v70, v72);
          v86 = v36;
          if (v87)
          {
            v88 = *(v36[7] + 8 * v85);
          }

          else
          {
            v88 = MEMORY[0x1E69E7CC0];
          }
        }

        else
        {
          v88 = MEMORY[0x1E69E7CC0];
          v86 = v36;
        }

        v124 = v212;
        sub_1D111EC40(v79, v212);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v88 = sub_1D10F7738(0, v88[2] + 1, 1, v88);
        }

        v126 = v88[2];
        v125 = v88[3];
        if (v126 >= v125 >> 1)
        {
          v88 = sub_1D10F7738(v125 > 1, v126 + 1, 1, v88);
        }

        v88[2] = v126 + 1;
        sub_1D10F0DFC(v124, v88 + ((*(v218 + 80) + 32) & ~*(v218 + 80)) + *(v218 + 72) * v126);
        v127 = swift_isUniquelyReferenced_nonNull_native();
        v229 = v86;
        v128 = sub_1D11362EC(v70, v72);
        v130 = *(v86 + 16);
        v131 = (v129 & 1) == 0;
        v132 = __OFADD__(v130, v131);
        v133 = v130 + v131;
        if (v132)
        {
          goto LABEL_72;
        }

        v134 = v129;
        if (*(v86 + 24) >= v133)
        {
          if ((v127 & 1) == 0)
          {
            v147 = v128;
            sub_1D1181B14();
            v128 = v147;
          }
        }

        else
        {
          sub_1D117B4CC(v133, v127);
          v128 = sub_1D11362EC(v70, v72);
          if ((v134 & 1) != (v135 & 1))
          {
            goto LABEL_74;
          }
        }

        v2 = v223;
        v36 = v229;
        if (v134)
        {
          *(v229[7] + 8 * v128) = v88;
        }

        else
        {
          v229[(v128 >> 6) + 8] |= 1 << v128;
          v136 = (v36[6] + 16 * v128);
          *v136 = v70;
          v136[1] = v72;
          *(v36[7] + 8 * v128) = v88;
          v137 = v36[2];
          v132 = __OFADD__(v137, 1);
          v138 = v137 + 1;
          if (v132)
          {
            goto LABEL_73;
          }

          v36[2] = v138;
        }

        v45 = v220;
        v44 = v216;
        (*v224)(v220, v216);
        sub_1D111ECA4(v79);
        v46 = v221;
        v40 = v225;
        v42 = v228;
      }

LABEL_5:
      v42 += v222;
      if (!--v46)
      {
        break;
      }

      v40(v45, v42, v44);
    }
  }

  v228 = v36;
  v148 = [objc_opt_self() categoryWithID_];
  v149 = v148;
  if (v148)
  {
    v150 = [v148 displayName];
    v227 = sub_1D139016C();
    v152 = v151;
  }

  else
  {
    v227 = 0;
    v152 = 0;
  }

  v153 = v195;
  v154 = v194;
  v155 = v149;
  v156 = [v155 largeListIcon];
  if (!v156)
  {
    v156 = [v155 listIcon];
  }

  v157 = [v155 color];

  if (v152)
  {
    v222 = v157;
    v224 = v156;
    v225 = v155;
    v158 = v228 + 64;
    v159 = 1 << *(v228 + 32);
    v160 = -1;
    if (v159 < 64)
    {
      v160 = ~(-1 << v159);
    }

    v161 = v160 & *(v228 + 64);
    v162 = (v159 + 63) >> 6;
    v163 = (v218 + 48);
    v226 = v152;

    v164 = 0;
    v88 = 0;
    v165 = MEMORY[0x1E69E7CC0];
    while (v161)
    {
LABEL_59:
      while (1)
      {
        v167 = __clz(__rbit64(v161)) | (v164 << 6);
        v168 = (*(v228 + 48) + 16 * v167);
        v169 = *(*(v228 + 56) + 8 * v167);
        v170 = v168[1];
        v161 &= v161 - 1;
        v229 = *v168;
        v230 = v170;
        v231 = v169;

        v171 = v199;
        sub_1D12FC60C(&v229, v223, v227, v226, v199);

        if ((*v163)(v171, 1, v219) != 1)
        {
          break;
        }

        sub_1D12FFC74(v171);
        if (!v161)
        {
          goto LABEL_55;
        }
      }

      v172 = v171;
      v173 = v196;
      sub_1D10F0DFC(v172, v196);
      sub_1D10F0DFC(v173, v198);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v165 = sub_1D10F7738(0, v165[2] + 1, 1, v165);
      }

      v175 = v165[2];
      v174 = v165[3];
      if (v175 >= v174 >> 1)
      {
        v165 = sub_1D10F7738(v174 > 1, v175 + 1, 1, v165);
      }

      v165[2] = v175 + 1;
      sub_1D10F0DFC(v198, v165 + ((*(v218 + 80) + 32) & ~*(v218 + 80)) + *(v218 + 72) * v175);
    }

LABEL_55:
    while (1)
    {
      v166 = v164 + 1;
      if (__OFADD__(v164, 1))
      {
        break;
      }

      if (v166 >= v162)
      {

        v176 = v226;

        v177 = v224;
        v178 = v224;
        v179 = v222;
        v180 = v222;
        v181 = v214;
        v182 = swift_isUniquelyReferenced_nonNull_native();
        v229 = v181;
        sub_1D11DA750(v165, v227, v176, v177, v179, v182);

        sub_1D130005C(v229, sub_1D12FFD00);

        v229 = sub_1D11131C8(v183);
        sub_1D111D580(&v229);

        return v229;
      }

      v161 = *(v158 + 8 * v166);
      ++v164;
      if (v161)
      {
        v164 = v166;
        goto LABEL_59;
      }
    }

    __break(1u);
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
LABEL_74:
    sub_1D13916CC();
    __break(1u);

    __break(1u);
  }

  else
  {
    sub_1D138F06C();
    v185 = sub_1D138F0AC();
    v186 = sub_1D139081C();
    if (os_log_type_enabled(v185, v186))
    {
      v187 = swift_slowAlloc();
      v225 = v155;
      v188 = v187;
      v189 = swift_slowAlloc();
      v229 = v189;
      *v188 = 136315138;
      v190 = sub_1D139184C();
      v224 = v156;
      v192 = sub_1D11DF718(v190, v191, &v229);
      v222 = v157;
      v193 = v192;

      *(v188 + 4) = v193;
      _os_log_impl(&dword_1D101F000, v185, v186, "[%s] Could not get cycle tracking category name", v188, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v189);
      MEMORY[0x1D38882F0](v189, -1, -1);
      MEMORY[0x1D38882F0](v188, -1, -1);

      (*(v153 + 8))(v154, v209);
    }

    else
    {

      (*(v153 + 8))(v154, v209);
    }

    return MEMORY[0x1E69E7CC0];
  }

  return result;
}

uint64_t sub_1D12FBFE8(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v4 = sub_1D138F0BC();
  v58 = *(v4 - 8);
  v59 = v4;
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v53[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v53[-v8];
  v10 = sub_1D138ED5C();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v56 = &v53[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v53[-v15];
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v53[-v17];
  v19 = *(v11 + 16);
  v19(&v53[-v17], a1, v10);
  if ((*(v11 + 88))(v18, v10) != *MEMORY[0x1E69A38E8])
  {
    v25 = *(v11 + 8);
    v25(v18, v10);
    sub_1D138F06C();
    v19(v16, a1, v10);
    v26 = sub_1D138F0AC();
    v27 = sub_1D139081C();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v54 = v27;
      v29 = v28;
      v55 = swift_slowAlloc();
      v60 = v55;
      *v29 = 136315394;
      v30 = sub_1D139184C();
      ObjectType = v25;
      v32 = sub_1D11DF718(v30, v31, &v60);

      *(v29 + 4) = v32;
      *(v29 + 12) = 2080;
      v19(v56, v16, v10);
      v33 = sub_1D13901EC();
      v35 = v34;
      ObjectType(v16, v10);
      v36 = sub_1D11DF718(v33, v35, &v60);

      *(v29 + 14) = v36;
      _os_log_impl(&dword_1D101F000, v26, v54, "[%s] Could not get hktype from identifier: %s", v29, 0x16u);
      v37 = v55;
      swift_arrayDestroy();
      MEMORY[0x1D38882F0](v37, -1, -1);
      MEMORY[0x1D38882F0](v29, -1, -1);
    }

    else
    {

      v25(v16, v10);
    }

    (*(v58 + 8))(v7, v59);
    return 5;
  }

  (*(v11 + 96))(v18, v10);
  v20 = *v18;
  v21 = [v2 displayTypeForObjectType_];
  if (!v21)
  {
    sub_1D138F06C();
    v38 = v20;
    v39 = sub_1D138F0AC();
    v40 = sub_1D13907FC();

    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v60 = v42;
      *v41 = 136315394;
      v43 = sub_1D139184C();
      v45 = sub_1D11DF718(v43, v44, &v60);

      *(v41 + 4) = v45;
      *(v41 + 12) = 2080;
      v46 = v38;
      v47 = [v46 description];
      v48 = sub_1D139016C();
      v50 = v49;

      v51 = sub_1D11DF718(v48, v50, &v60);

      *(v41 + 14) = v51;
      _os_log_impl(&dword_1D101F000, v39, v40, "[%s] Could not get display type from hkType: %s", v41, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1D38882F0](v42, -1, -1);
      MEMORY[0x1D38882F0](v41, -1, -1);
    }

    else
    {
    }

    (*(v58 + 8))(v9, v59);
    return 5;
  }

  v22 = v21;
  v23 = [v21 displayTypeIdentifier];

  if (v23 > 96)
  {
    if ((v23 - 157) >= 0xF)
    {
      v52 = v23 + 65;
      if ((v23 - 191) > 0x35)
      {
LABEL_25:
        if (v23 != 97)
        {
          return 5;
        }

        return 4;
      }

      if (((1 << v52) & 0x1FC000000000) == 0)
      {
        if (((1 << v52) & 7) != 0)
        {
          return 2;
        }

        if (((1 << v52) & 0x30000000000000) != 0)
        {
          return 1;
        }

        goto LABEL_25;
      }
    }

    return 3;
  }

  if ((v23 - 90) < 3)
  {
    return 1;
  }

  if (v23 != 95)
  {
    if (v23 == 96)
    {
      return 3;
    }

    return 5;
  }

  return 0;
}

uint64_t sub_1D12FC60C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v43 = a4;
  v41 = a2;
  v42 = a3;
  v7 = sub_1D138F0BC();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ClinicalSharingSelectableAuthorizationCategoryItem();
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[2];
  v16 = *(v15 + 16);
  v46 = v12;
  if (v16)
  {
    v17 = *a1;
    v18 = a1[1];
    sub_1D111EC40(v15 + ((*(v12 + 80) + 32) & ~*(v12 + 80)), v14);

    v19 = sub_1D12FFEF8(v15);
    v39 = v20;
    v40 = v19;
    v21 = *(v11 + 48);
    v22 = sub_1D138ED5C();
    (*(*(v22 - 8) + 16))(a5 + v21, &v14[v21], v22);
    type metadata accessor for ClinicalSharingSelectableAuthorizationCategoryCell();
    sub_1D13008F4(&qword_1EC609BC8, type metadata accessor for ClinicalSharingSelectableAuthorizationCategoryCell);

    v23 = sub_1D138DECC();
    v24 = *(v41 + 48);
    v41 = *(v11 + 52);
    *a5 = v23;
    *(a5 + 8) = v25;
    v44 = 0xD000000000000033;
    v45 = 0x80000001D13CBEE0;

    MEMORY[0x1D3885C10](v17, v18);
    v26 = v44;
    v27 = v45;
    sub_1D111ECA4(v14);
    *(a5 + 16) = v26;
    *(a5 + 24) = v27;
    v28 = v42;
    *(a5 + v41) = v15;
    v29 = v43;
    *(a5 + 88) = v28;
    *(a5 + 96) = v29;
    *(a5 + 56) = v17;
    *(a5 + 64) = v18;
    v30 = v39;
    *(a5 + 72) = v40;
    *(a5 + 80) = v30;
    *(a5 + 48) = 1;
    *(a5 + 32) = sub_1D130093C;
    *(a5 + 40) = v24;
    (*(v46 + 56))(a5, 0, 1, v11);
  }

  else
  {
    v43 = v8;
    sub_1D138F06C();
    v32 = sub_1D138F0AC();
    v33 = sub_1D139081C();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v44 = v42;
      *v34 = 136315138;
      v35 = sub_1D139184C();
      v37 = sub_1D11DF718(v35, v36, &v44);

      *(v34 + 4) = v37;
      _os_log_impl(&dword_1D101F000, v32, v33, "[%s] No first identifier", v34, 0xCu);
      v38 = v42;
      __swift_destroy_boxed_opaque_existential_1Tm(v42);
      MEMORY[0x1D38882F0](v38, -1, -1);
      MEMORY[0x1D38882F0](v34, -1, -1);
    }

    (*(v43 + 8))(v10, v7);
    return (*(v46 + 56))(a5, 1, 1, v11);
  }
}

uint64_t sub_1D12FCA0C(uint64_t a1, char a2, uint64_t a3)
{
  if (a2)
  {
    return sub_1D1335A40(a1, 0);
  }

  v12 = *(a3 + 16);

  v6 = sub_1D130038C(&v12, a1);

  v7 = v12;
  v8 = v12[2];
  if (v6 > v8)
  {
    __break(1u);
    goto LABEL_16;
  }

  if (v6 < 0)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (__OFADD__(v8, v6 - v8))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || v6 > v7[3] >> 1)
  {
    if (v8 <= v6)
    {
      v10 = v6;
    }

    else
    {
      v10 = v8;
    }

    v7 = sub_1D10F7738(isUniquelyReferenced_nonNull_native, v10, 1, v7);
    v12 = v7;
  }

  sub_1D13006E4(v6, v8, 0);
  v11 = *(a3 + 16);
  *(a3 + 16) = v7;
  sub_1D133575C(v11);
}

uint64_t sub_1D12FCB38(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v4 = sub_1D138F0BC();
  v55 = *(v4 - 8);
  v5 = MEMORY[0x1EEE9AC00](v4);
  v54 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v52 = &v51 - v7;
  v8 = sub_1D138ED5C();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = (&v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v10);
  v14 = (&v51 - v13);
  (*(v9 + 104))(&v51 - v13, *MEMORY[0x1E69A3908], v8);
  v15 = sub_1D138ED4C();
  v16 = *(v9 + 8);
  (v16)(v14, v8);
  if ((v15 & 1) == 0)
  {
    v51 = v4;
    v18 = *(v9 + 16);
    v18(v12, a1, v8);
    if ((*(v9 + 88))(v12, v8) == *MEMORY[0x1E69A38E8])
    {
      v20 = *(v9 + 96);
      v19 = (v9 + 96);
      v20(v12, v8);
      v21 = *v12;
      if ([*v12 isClinicalType])
      {
        v22 = [v2 displayTypeForObjectType_];
        if (v22)
        {
          v23 = v22;
          v24 = [v22 localization];
          v25 = [v24 displayName];

          v26 = sub_1D139016C();
          return v26;
        }

        v37 = v52;
        sub_1D138F06C();
        v21 = v21;
        v38 = sub_1D138F0AC();
        v39 = sub_1D13907FC();

        if (os_log_type_enabled(v38, v39))
        {
          v40 = swift_slowAlloc();
          v41 = swift_slowAlloc();
          v56 = v41;
          *v40 = 136315394;
          v42 = sub_1D139184C();
          v44 = sub_1D11DF718(v42, v43, &v56);

          *(v40 + 4) = v44;
          *(v40 + 12) = 2080;
          v45 = [v21 identifier];
          v46 = sub_1D139016C();
          v48 = v47;

          v49 = sub_1D11DF718(v46, v48, &v56);

          *(v40 + 14) = v49;
          _os_log_impl(&dword_1D101F000, v38, v39, "[%s] Missing display type for %s", v40, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x1D38882F0](v41, -1, -1);
          MEMORY[0x1D38882F0](v40, -1, -1);
        }

        (*(v55 + 8))(v37, v51);
        v36 = [v21 identifier];
LABEL_17:
        v50 = v36;
        v26 = sub_1D139016C();

        return v26;
      }

      v36 = [v21 hk_localizedName];
      if (v36)
      {
        goto LABEL_17;
      }

      __break(1u);
    }

    else
    {
      (v16)(v12, v8);
      v18(v14, a1, v8);
      v2 = sub_1D13901EC();
      v28 = v27;
      v19 = v54;
      sub_1D138F06C();

      v16 = sub_1D138F0AC();
      v29 = sub_1D13907FC();
      v30 = v28;

      if (os_log_type_enabled(v16, v29))
      {
        v31 = swift_slowAlloc();
        v32 = swift_slowAlloc();
        v56 = v32;
        *v31 = 136315394;
        v33 = sub_1D139184C();
        v35 = sub_1D11DF718(v33, v34, &v56);

        *(v31 + 4) = v35;
        *(v31 + 12) = 2080;
        *(v31 + 14) = sub_1D11DF718(v2, v30, &v56);
        _os_log_impl(&dword_1D101F000, v16, v29, "[%s] Unsupported authorization identifier %s", v31, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1D38882F0](v32, -1, -1);
        MEMORY[0x1D38882F0](v31, -1, -1);

        (*(v55 + 8))(v19, v51);
        return v2;
      }
    }

    (*(v55 + 8))(v19, v51);
    return v2;
  }

  if (qword_1EE069F90 != -1)
  {
    swift_once();
  }

  return sub_1D138D1CC();
}

uint64_t sub_1D12FD1F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1D138D5EC();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v48 = a3;

  sub_1D12FAA54(&v48);
  v12 = v48;
  v13 = [objc_opt_self() categoryWithID_];
  if (!v13)
  {
    goto LABEL_7;
  }

  v14 = v13;
  v15 = [v13 displayName];

  v16 = sub_1D139016C();
  v18 = v17;

  if (v16 == a1 && v18 == a2)
  {
  }

  else
  {
    v20 = sub_1D139162C();

    if ((v20 & 1) == 0)
    {
LABEL_7:
      v21 = *(a4 + 40);
      type metadata accessor for ClinicalSharingSelectableDatatypesDataSource();
      v22 = swift_allocObject();
      *(v22 + qword_1EC60B2C0) = 0;
      *(v22 + qword_1EC60B2C8) = 0;
      v23 = qword_1EC60B2E8;
      *(v22 + qword_1EC60B300) = 0;
      v24 = (v22 + qword_1EC60B2D0);
      *v24 = a1;
      v24[1] = a2;
      *(v22 + qword_1EC60B2D8) = 0;
      *(v22 + qword_1EC60B2E0) = 0;
      *(v22 + v23) = v12;
      *(v22 + qword_1EC60B2F8) = 0;
      *(v22 + qword_1EC60B2F0) = v21;
      *&v48 = 0;
      *(&v48 + 1) = 0xE000000000000000;

      sub_1D13911EC();

      strcpy(&v48, "MutableArray<");
      HIWORD(v48) = -4864;
      sub_1D138D5DC();
      v25 = sub_1D138D59C();
      v27 = v26;
      v28 = *(v9 + 8);
      v28(v11, v8);
      MEMORY[0x1D3885C10](v25, v27);

      MEMORY[0x1D3885C10](62, 0xE100000000000000);
      v29 = MEMORY[0x1E69E7CC0];
      v30 = sub_1D138E56C();
      *&v48 = v29;

      v31 = sub_1D110ACE4(v12);

      sub_1D1122388(v31);
      sub_1D1300890(0, &qword_1EC60AA30, MEMORY[0x1E69A3690], MEMORY[0x1E69E6F90]);
      sub_1D138E52C();
      *(swift_allocObject() + 16) = xmmword_1D139E700;
      v32 = v48;
      goto LABEL_14;
    }
  }

  v33 = *(a4 + 40);
  type metadata accessor for ClinicalSharingSelectableDatatypesDataSource();
  v34 = swift_allocObject();
  *(v34 + qword_1EC60B2C0) = 0;
  *(v34 + qword_1EC60B2C8) = 0;
  v35 = qword_1EC60B2E8;
  *(v34 + qword_1EC60B300) = 0;
  v36 = (v34 + qword_1EC60B2D0);
  *v36 = a1;
  v36[1] = a2;
  *(v34 + qword_1EC60B2D8) = 0;
  *(v34 + qword_1EC60B2E0) = 0;
  *(v34 + v35) = v12;
  *(v34 + qword_1EC60B2F8) = a4;
  *(v34 + qword_1EC60B2F0) = v33;
  *&v48 = 0;
  *(&v48 + 1) = 0xE000000000000000;

  sub_1D13911EC();

  strcpy(&v48, "MutableArray<");
  HIWORD(v48) = -4864;
  sub_1D138D5DC();
  v37 = sub_1D138D59C();
  v39 = v38;
  v28 = *(v9 + 8);
  v28(v11, v8);
  MEMORY[0x1D3885C10](v37, v39);

  MEMORY[0x1D3885C10](62, 0xE100000000000000);
  v40 = MEMORY[0x1E69E7CC0];
  v30 = sub_1D138E56C();
  v51 = v40;

  v41 = sub_1D110ACE4(v12);

  v42 = sub_1D1122388(v41);
  v43 = sub_1D111EE6C(v42);
  v32 = v51;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v32 = sub_1D10F857C(0, v32[2] + 1, 1, v32);
  }

  v45 = v32[2];
  v44 = v32[3];
  if (v45 >= v44 >> 1)
  {
    v32 = sub_1D10F857C((v44 > 1), v45 + 1, 1, v32);
  }

  v49 = type metadata accessor for ShowAllItem();
  v50 = sub_1D13008F4(&qword_1EC60B330, type metadata accessor for ShowAllItem);
  *&v48 = v43;
  v32[2] = v45 + 1;
  sub_1D102CC18(&v48, &v32[5 * v45 + 4]);
  sub_1D1300890(0, &qword_1EC60AA30, MEMORY[0x1E69A3690], MEMORY[0x1E69E6F90]);
  sub_1D138E52C();
  *(swift_allocObject() + 16) = xmmword_1D139E700;
LABEL_14:
  sub_1D110A5C8(v32);

  sub_1D138D5DC();
  sub_1D138D59C();
  v28(v11, v8);
  sub_1D138E50C();
  sub_1D138E58C();

  return v30;
}

uint64_t sub_1D12FD984(uint64_t a1, unint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6)
{
  v60 = a4;
  v11 = sub_1D138D5EC();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v59 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v62 = a5;

  sub_1D12FAA54(&v62);
  v15 = v62;
  v16 = objc_opt_self();
  swift_bridgeObjectRetain_n();
  v17 = [v16 categoryWithID_];
  v61 = v12;
  if (!v17)
  {
    if (!a2)
    {
      a1 = 0;
      a2 = 0xE000000000000000;
      goto LABEL_19;
    }

LABEL_15:

    goto LABEL_16;
  }

  v18 = a3;
  v19 = v11;
  v20 = v17;
  v21 = [v17 displayName];

  v22 = sub_1D139016C();
  v24 = v23;

  if (!a2)
  {
    a1 = 0;
    a2 = 0xE000000000000000;
    v11 = v19;
    a3 = v18;
    if (!v24)
    {
      goto LABEL_19;
    }

    goto LABEL_15;
  }

  if (!v24)
  {
    v11 = v19;
    a3 = v18;
    goto LABEL_15;
  }

  if (v22 != a1 || v24 != a2)
  {
    v26 = sub_1D139162C();

    v11 = v19;
    a3 = v18;
    if (v26)
    {
      goto LABEL_19;
    }

LABEL_16:
    v27 = *(a6 + 40);
    type metadata accessor for ClinicalSharingSelectableDatatypesDataSource();
    v28 = swift_allocObject();
    *(v28 + qword_1EC60B2C0) = 0;
    *(v28 + qword_1EC60B2C8) = 0;
    v29 = qword_1EC60B2E8;
    *(v28 + qword_1EC60B300) = 0;
    v30 = (v28 + qword_1EC60B2D0);
    *v30 = a1;
    v30[1] = a2;
    *(v28 + qword_1EC60B2D8) = a3;
    v31 = v60;
    *(v28 + qword_1EC60B2E0) = v60;
    *(v28 + v29) = v15;
    *(v28 + qword_1EC60B2F8) = 0;
    *(v28 + qword_1EC60B2F0) = v27;
    *&v62 = 0;
    *(&v62 + 1) = 0xE000000000000000;
    v32 = v31;

    v33 = a3;
    sub_1D13911EC();

    strcpy(&v62, "MutableArray<");
    HIWORD(v62) = -4864;
    sub_1D138D5DC();
    v34 = sub_1D138D59C();
    v36 = v35;
    v37 = *(v61 + 8);
    v37(v14, v11);
    MEMORY[0x1D3885C10](v34, v36);

    MEMORY[0x1D3885C10](62, 0xE100000000000000);
    v38 = MEMORY[0x1E69E7CC0];
    v39 = sub_1D138E56C();
    *&v62 = v38;

    v40 = sub_1D110ACE4(v15);

    sub_1D1122388(v40);
    sub_1D1300890(0, &qword_1EC60AA30, MEMORY[0x1E69A3690], MEMORY[0x1E69E6F90]);
    sub_1D138E52C();
    *(swift_allocObject() + 16) = xmmword_1D139E700;
    sub_1D110A5C8(v62);

    sub_1D138D5DC();
    sub_1D138D59C();
    v37(v14, v11);
    goto LABEL_24;
  }

  v11 = v19;
  a3 = v18;
LABEL_19:
  v41 = *(a6 + 40);
  type metadata accessor for ClinicalSharingSelectableDatatypesDataSource();
  v42 = swift_allocObject();
  *(v42 + qword_1EC60B2C0) = 0;
  *(v42 + qword_1EC60B2C8) = 0;
  v43 = qword_1EC60B2E8;
  *(v42 + qword_1EC60B300) = 0;
  v44 = (v42 + qword_1EC60B2D0);
  *v44 = a1;
  v44[1] = a2;
  *(v42 + qword_1EC60B2D8) = a3;
  v45 = v60;
  *(v42 + qword_1EC60B2E0) = v60;
  *(v42 + v43) = v15;
  *(v42 + qword_1EC60B2F8) = a6;
  *(v42 + qword_1EC60B2F0) = v41;
  *&v62 = 0;
  *(&v62 + 1) = 0xE000000000000000;
  v46 = v45;

  v47 = a3;
  sub_1D13911EC();

  strcpy(&v62, "MutableArray<");
  HIWORD(v62) = -4864;
  sub_1D138D5DC();
  v48 = sub_1D138D59C();
  v50 = v49;
  v51 = *(v61 + 8);
  v61 += 8;
  v51(v14, v11);
  MEMORY[0x1D3885C10](v48, v50);

  MEMORY[0x1D3885C10](62, 0xE100000000000000);
  v52 = MEMORY[0x1E69E7CC0];
  v39 = sub_1D138E56C();
  v65 = v52;

  v53 = sub_1D110ACE4(v15);

  sub_1D1122388(v53);
  v54 = sub_1D111EE6C();
  v55 = v65;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v55 = sub_1D10F857C(0, v55[2] + 1, 1, v55);
  }

  v57 = v55[2];
  v56 = v55[3];
  if (v57 >= v56 >> 1)
  {
    v55 = sub_1D10F857C((v56 > 1), v57 + 1, 1, v55);
  }

  v63 = type metadata accessor for ShowAllItem();
  v64 = sub_1D13008F4(&qword_1EC60B330, type metadata accessor for ShowAllItem);
  *&v62 = v54;
  v55[2] = v57 + 1;
  sub_1D102CC18(&v62, &v55[5 * v57 + 4]);
  sub_1D1300890(0, &qword_1EC60AA30, MEMORY[0x1E69A3690], MEMORY[0x1E69E6F90]);
  sub_1D138E52C();
  *(swift_allocObject() + 16) = xmmword_1D139E700;
  sub_1D110A5C8(v55);

  sub_1D138D5DC();
  sub_1D138D59C();
  v51(v14, v11);
LABEL_24:
  sub_1D138E50C();
  sub_1D138E58C();

  return v39;
}

uint64_t sub_1D12FE220()
{

  return swift_deallocClassInstance();
}

void sub_1D12FE294(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  if (a3)
  {
    sub_1D139179C();
    sub_1D139027C();
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_8:
    sub_1D139179C();
    if (a5)
    {
      goto LABEL_4;
    }

LABEL_9:
    sub_1D139179C();
    return;
  }

  sub_1D139179C();
  if (!a4)
  {
    goto LABEL_8;
  }

LABEL_3:
  sub_1D139179C();
  v7 = a4;
  sub_1D1390D9C();

  if (!a5)
  {
    goto LABEL_9;
  }

LABEL_4:
  sub_1D139179C();
  v8 = a5;
  sub_1D1390D9C();
}

uint64_t sub_1D12FE3A0(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  sub_1D139177C();
  if (a2)
  {
    sub_1D139179C();
    sub_1D139027C();
    if (a3)
    {
      goto LABEL_3;
    }

LABEL_6:
    sub_1D139179C();
    if (a4)
    {
      goto LABEL_4;
    }

LABEL_7:
    sub_1D139179C();
    return sub_1D13917CC();
  }

  sub_1D139179C();
  if (!a3)
  {
    goto LABEL_6;
  }

LABEL_3:
  sub_1D139179C();
  v7 = a3;
  sub_1D1390D9C();

  if (!a4)
  {
    goto LABEL_7;
  }

LABEL_4:
  sub_1D139179C();
  v8 = a4;
  sub_1D1390D9C();

  return sub_1D13917CC();
}

uint64_t sub_1D12FE4A4()
{
  v1 = v0[1];
  v3 = v0[2];
  v2 = v0[3];
  sub_1D139177C();
  if (v1)
  {
    sub_1D139179C();
    sub_1D139027C();
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_6:
    sub_1D139179C();
    if (v2)
    {
      goto LABEL_4;
    }

LABEL_7:
    sub_1D139179C();
    return sub_1D13917CC();
  }

  sub_1D139179C();
  if (!v3)
  {
    goto LABEL_6;
  }

LABEL_3:
  sub_1D139179C();
  v4 = v3;
  sub_1D1390D9C();

  if (!v2)
  {
    goto LABEL_7;
  }

LABEL_4:
  sub_1D139179C();
  v5 = v2;
  sub_1D1390D9C();

  return sub_1D13917CC();
}

uint64_t sub_1D12FE5A0(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1D13915BC();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        type metadata accessor for ClinicalSharingSelectableAuthorizationCategoryItem();
        v6 = sub_1D13904DC();
        *(v6 + 16) = v5;
      }

      v7 = *(type metadata accessor for ClinicalSharingSelectableAuthorizationCategoryItem() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_1D12FE98C(v8, v9, a1, v4);
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
    return sub_1D12FE6CC(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1D12FE6CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v40 = type metadata accessor for ClinicalSharingSelectableAuthorizationCategoryItem();
  v8 = MEMORY[0x1EEE9AC00](v40);
  v39 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  result = MEMORY[0x1EEE9AC00](v10);
  v15 = &v30 - v14;
  v32 = a2;
  if (a3 != a2)
  {
    v16 = v13;
    v17 = *a4;
    v18 = *(v12 + 72);
    v19 = *a4 + v18 * (a3 - 1);
    v37 = -v18;
    v38 = v17;
    v20 = a1 - a3;
    v31 = v18;
    v21 = v17 + v18 * a3;
    v41 = v13;
LABEL_6:
    v35 = v19;
    v36 = a3;
    v33 = v21;
    v34 = v20;
    while (1)
    {
      sub_1D111EC40(v21, v15);
      sub_1D111EC40(v19, v16);
      if (*(v15 + 8))
      {
        v22 = *(v15 + 7);
        v23 = *(v15 + 8);
        v24 = *(v16 + 64);
        if (v24)
        {
          goto LABEL_9;
        }
      }

      else
      {
        v22 = 0;
        v23 = 0xE000000000000000;
        v24 = *(v16 + 64);
        if (v24)
        {
LABEL_9:
          v25 = *(v16 + 56);
          v26 = v24;
          if (v22 != v25)
          {
            goto LABEL_14;
          }

          goto LABEL_13;
        }
      }

      v26 = 0xE000000000000000;
      if (v22)
      {
        goto LABEL_14;
      }

LABEL_13:
      if (v23 == v26)
      {

        v16 = v41;
        sub_1D111ECA4(v41);
        result = sub_1D111ECA4(v15);
LABEL_5:
        a3 = v36 + 1;
        v19 = v35 + v31;
        v20 = v34 - 1;
        v21 = v33 + v31;
        if (v36 + 1 == v32)
        {
          return result;
        }

        goto LABEL_6;
      }

LABEL_14:
      v27 = sub_1D139162C();

      v16 = v41;
      sub_1D111ECA4(v41);
      result = sub_1D111ECA4(v15);
      if ((v27 & 1) == 0)
      {
        goto LABEL_5;
      }

      if (!v38)
      {
        __break(1u);
        return result;
      }

      v28 = v39;
      sub_1D10F0DFC(v21, v39);
      swift_arrayInitWithTakeFrontToBack();
      result = sub_1D10F0DFC(v28, v19);
      v19 += v37;
      v21 += v37;
      if (__CFADD__(v20++, 1))
      {
        goto LABEL_5;
      }
    }
  }

  return result;
}

uint64_t sub_1D12FE98C(int64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v5;
  v133 = a4;
  v131 = a1;
  v148 = type metadata accessor for ClinicalSharingSelectableAuthorizationCategoryItem();
  v141 = *(v148 - 8);
  v8 = MEMORY[0x1EEE9AC00](v148);
  v136 = &v128 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v147 = &v128 - v11;
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v128 - v13;
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v128 - v16;
  v18 = MEMORY[0x1EEE9AC00](v15);
  v19 = MEMORY[0x1EEE9AC00](v18);
  v145 = &v128 - v20;
  v21 = MEMORY[0x1EEE9AC00](v19);
  v129 = &v128 - v22;
  result = MEMORY[0x1EEE9AC00](v21);
  v128 = &v128 - v25;
  v26 = *(a3 + 8);
  v137 = a3;
  if (v26 < 1)
  {
    v28 = MEMORY[0x1E69E7CC0];
LABEL_124:
    v29 = *v131;
    if (!*v131)
    {
      goto LABEL_163;
    }

    v4 = v28;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      result = v4;
LABEL_127:
      v151 = result;
      v123 = *(result + 16);
      if (v123 >= 2)
      {
        while (1)
        {
          v124 = *a3;
          if (!*a3)
          {
            goto LABEL_161;
          }

          v4 = v123 - 1;
          v125 = *(result + 16 * v123);
          v126 = result;
          a3 = *(result + 16 * (v123 - 1) + 40);
          sub_1D12FF47C(v124 + *(v141 + 72) * v125, v124 + *(v141 + 72) * *(result + 16 * (v123 - 1) + 32), v124 + *(v141 + 72) * a3, v29);
          if (v6)
          {
          }

          if (a3 < v125)
          {
            goto LABEL_150;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v126 = sub_1D1245848(v126);
          }

          if (v123 - 2 >= *(v126 + 2))
          {
            goto LABEL_151;
          }

          v127 = &v126[16 * v123];
          *v127 = v125;
          *(v127 + 1) = a3;
          v151 = v126;
          sub_1D12457BC(v4);
          result = v151;
          v123 = *(v151 + 16);
          a3 = v137;
          if (v123 <= 1)
          {
          }
        }
      }
    }

LABEL_157:
    result = sub_1D1245848(v4);
    goto LABEL_127;
  }

  v27 = 0;
  v28 = MEMORY[0x1E69E7CC0];
  v149 = v17;
  v150 = v14;
  v139 = v24;
  while (2)
  {
    v29 = v27;
    v30 = v27 + 1;
    v142 = v28;
    if (v27 + 1 >= v26)
    {
      v41 = v133;
      goto LABEL_45;
    }

    v138 = v26;
    v31 = *a3;
    v32 = *(v141 + 72);
    v33 = v27 + 1;
    v34 = v128;
    sub_1D111EC40(*a3 + v32 * v30, v128);
    v143 = v32;
    v35 = v129;
    sub_1D111EC40(v31 + v32 * v29, v129);
    v4 = *(v34 + 64);
    v132 = v29;
    if (v4)
    {
      v36 = *(v34 + 56);
      v37 = v4;
      v38 = *(v35 + 64);
      if (v38)
      {
LABEL_7:
        v39 = *(v35 + 56);
        v40 = v38;
        goto LABEL_11;
      }
    }

    else
    {
      v36 = 0;
      v37 = 0xE000000000000000;
      v38 = *(v35 + 64);
      if (v38)
      {
        goto LABEL_7;
      }
    }

    v39 = 0;
    v40 = 0xE000000000000000;
LABEL_11:
    v130 = v6;
    if (v36 == v39 && v37 == v40)
    {
      LODWORD(v140) = 0;
    }

    else
    {
      LODWORD(v140) = sub_1D139162C();
    }

    sub_1D111ECA4(v35);
    result = sub_1D111ECA4(v34);
    v42 = v132 + 2;
    v43 = v143 * (v132 + 2);
    v44 = v31 + v43;
    v45 = v143 * v33;
    v46 = v31 + v143 * v33;
    v14 = v150;
    v47 = v139;
    do
    {
      v49 = v42;
      v50 = v33;
      a3 = v45;
      v6 = v43;
      v146 = v42;
      if (v42 >= v138)
      {
        break;
      }

      v144 = v33;
      v51 = v145;
      sub_1D111EC40(v44, v145);
      sub_1D111EC40(v46, v47);
      v4 = *(v51 + 64);
      if (v4)
      {
        v52 = *(v51 + 56);
        v53 = *(v51 + 64);
      }

      else
      {
        v52 = 0;
        v53 = 0xE000000000000000;
      }

      v54 = v47;
      v55 = *(v47 + 64);
      if (v55)
      {
        v56 = v55;
        if (v52 != *(v54 + 56))
        {
          goto LABEL_16;
        }
      }

      else
      {
        v56 = 0xE000000000000000;
        if (v52)
        {
          goto LABEL_16;
        }
      }

      if (v53 == v56)
      {
        v48 = 0;
        goto LABEL_17;
      }

LABEL_16:
      v48 = sub_1D139162C();
LABEL_17:

      v47 = v139;
      sub_1D111ECA4(v139);
      result = sub_1D111ECA4(v145);
      v49 = v146;
      v42 = v146 + 1;
      v50 = v144;
      v44 += v143;
      v46 += v143;
      v33 = v144 + 1;
      v45 = a3 + v143;
      v43 = v6 + v143;
      v14 = v150;
    }

    while (((v140 ^ v48) & 1) == 0);
    if ((v140 & 1) == 0)
    {
      v30 = v49;
      v6 = v130;
      a3 = v137;
      v41 = v133;
      v17 = v149;
      goto LABEL_44;
    }

    v29 = v132;
    v41 = v133;
    v17 = v149;
    if (v49 < v132)
    {
      goto LABEL_154;
    }

    if (v132 >= v49)
    {
      v30 = v49;
      v6 = v130;
      a3 = v137;
    }

    else
    {
      v57 = v132 * v143;
      do
      {
        if (v29 != v50)
        {
          v59 = *v137;
          if (!*v137)
          {
            goto LABEL_160;
          }

          v60 = v50;
          v4 = v59 + v57;
          sub_1D10F0DFC(v59 + v57, v136);
          if (v57 < a3 || v4 >= v59 + v6)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v57 != a3)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          result = sub_1D10F0DFC(v136, v59 + a3);
          v41 = v133;
          v50 = v60;
        }

        ++v29;
        a3 -= v143;
        v6 -= v143;
        v57 += v143;
      }

      while (v29 < v50--);
      v30 = v146;
      v6 = v130;
      a3 = v137;
LABEL_44:
      v29 = v132;
    }

LABEL_45:
    v61 = *(a3 + 8);
    if (v30 >= v61)
    {
      goto LABEL_70;
    }

    if (__OFSUB__(v30, v29))
    {
      goto LABEL_153;
    }

    if (v30 - v29 >= v41)
    {
LABEL_70:
      if (v30 < v29)
      {
        goto LABEL_152;
      }

      v76 = v30;
      result = swift_isUniquelyReferenced_nonNull_native();
      if (result)
      {
        v28 = v142;
      }

      else
      {
        result = sub_1D10F7610(0, *(v142 + 2) + 1, 1, v142);
        v28 = result;
      }

      v4 = *(v28 + 2);
      v77 = *(v28 + 3);
      v78 = v4 + 1;
      if (v4 >= v77 >> 1)
      {
        result = sub_1D10F7610((v77 > 1), v4 + 1, 1, v28);
        v27 = v76;
        v28 = result;
      }

      else
      {
        v27 = v76;
      }

      *(v28 + 2) = v78;
      v79 = &v28[16 * v4];
      *(v79 + 4) = v29;
      *(v79 + 5) = v27;
      v29 = *v131;
      if (!*v131)
      {
        goto LABEL_162;
      }

      if (!v4)
      {
LABEL_3:
        v26 = *(a3 + 8);
        v17 = v149;
        if (v27 >= v26)
        {
          goto LABEL_124;
        }

        continue;
      }

      while (1)
      {
        v80 = v78 - 1;
        if (v78 >= 4)
        {
          break;
        }

        if (v78 == 3)
        {
          v81 = *(v28 + 4);
          v82 = *(v28 + 5);
          v91 = __OFSUB__(v82, v81);
          v83 = v82 - v81;
          v84 = v91;
LABEL_90:
          if (v84)
          {
            goto LABEL_141;
          }

          v97 = &v28[16 * v78];
          v99 = *v97;
          v98 = *(v97 + 1);
          v100 = __OFSUB__(v98, v99);
          v101 = v98 - v99;
          v102 = v100;
          if (v100)
          {
            goto LABEL_144;
          }

          v103 = &v28[16 * v80 + 32];
          v105 = *v103;
          v104 = *(v103 + 1);
          v91 = __OFSUB__(v104, v105);
          v106 = v104 - v105;
          if (v91)
          {
            goto LABEL_147;
          }

          if (__OFADD__(v101, v106))
          {
            goto LABEL_148;
          }

          if (v101 + v106 >= v83)
          {
            if (v83 < v106)
            {
              v80 = v78 - 2;
            }

            goto LABEL_111;
          }

          goto LABEL_104;
        }

        v107 = &v28[16 * v78];
        v109 = *v107;
        v108 = *(v107 + 1);
        v91 = __OFSUB__(v108, v109);
        v101 = v108 - v109;
        v102 = v91;
LABEL_104:
        if (v102)
        {
          goto LABEL_143;
        }

        v110 = &v28[16 * v80];
        v112 = *(v110 + 4);
        v111 = *(v110 + 5);
        v91 = __OFSUB__(v111, v112);
        v113 = v111 - v112;
        if (v91)
        {
          goto LABEL_146;
        }

        if (v113 < v101)
        {
          goto LABEL_3;
        }

LABEL_111:
        v4 = v80 - 1;
        if (v80 - 1 >= v78)
        {
          __break(1u);
LABEL_137:
          __break(1u);
LABEL_138:
          __break(1u);
LABEL_139:
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
          goto LABEL_156;
        }

        if (!*a3)
        {
          goto LABEL_159;
        }

        v118 = v28;
        v119 = *&v28[16 * v4 + 32];
        v120 = *&v28[16 * v80 + 40];
        sub_1D12FF47C(*a3 + *(v141 + 72) * v119, *a3 + *(v141 + 72) * *&v28[16 * v80 + 32], *a3 + *(v141 + 72) * v120, v29);
        if (v6)
        {
        }

        if (v120 < v119)
        {
          goto LABEL_137;
        }

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v121 = v118;
        }

        else
        {
          v121 = sub_1D1245848(v118);
        }

        v14 = v150;
        if (v4 >= *(v121 + 2))
        {
          goto LABEL_138;
        }

        v122 = &v121[16 * v4];
        *(v122 + 4) = v119;
        *(v122 + 5) = v120;
        v151 = v121;
        result = sub_1D12457BC(v80);
        v28 = v151;
        v78 = *(v151 + 16);
        v27 = v76;
        if (v78 <= 1)
        {
          goto LABEL_3;
        }
      }

      v85 = &v28[16 * v78 + 32];
      v86 = *(v85 - 64);
      v87 = *(v85 - 56);
      v91 = __OFSUB__(v87, v86);
      v88 = v87 - v86;
      if (v91)
      {
        goto LABEL_139;
      }

      v90 = *(v85 - 48);
      v89 = *(v85 - 40);
      v91 = __OFSUB__(v89, v90);
      v83 = v89 - v90;
      v84 = v91;
      if (v91)
      {
        goto LABEL_140;
      }

      v92 = &v28[16 * v78];
      v94 = *v92;
      v93 = *(v92 + 1);
      v91 = __OFSUB__(v93, v94);
      v95 = v93 - v94;
      if (v91)
      {
        goto LABEL_142;
      }

      v91 = __OFADD__(v83, v95);
      v96 = v83 + v95;
      if (v91)
      {
        goto LABEL_145;
      }

      if (v96 >= v88)
      {
        v114 = &v28[16 * v80 + 32];
        v116 = *v114;
        v115 = *(v114 + 1);
        v91 = __OFSUB__(v115, v116);
        v117 = v115 - v116;
        if (v91)
        {
          goto LABEL_149;
        }

        if (v83 < v117)
        {
          v80 = v78 - 2;
        }

        goto LABEL_111;
      }

      goto LABEL_90;
    }

    break;
  }

  v62 = v29 + v41;
  if (__OFADD__(v29, v41))
  {
    goto LABEL_155;
  }

  if (v62 >= v61)
  {
    v62 = *(a3 + 8);
  }

  if (v62 < v29)
  {
LABEL_156:
    __break(1u);
    goto LABEL_157;
  }

  if (v30 == v62)
  {
    goto LABEL_70;
  }

  v130 = v6;
  v63 = *a3;
  v64 = *(v141 + 72);
  v65 = *a3 + v64 * (v30 - 1);
  v66 = -v64;
  v132 = v29;
  v67 = v29 - v30;
  v146 = v63;
  v134 = v64;
  v135 = v62;
  v68 = v63 + v30 * v64;
  while (2)
  {
    v143 = v65;
    v144 = v30;
    v138 = v68;
    v140 = v67;
LABEL_57:
    sub_1D111EC40(v68, v17);
    sub_1D111EC40(v65, v14);
    v4 = *(v17 + 8);
    if (v4)
    {
      v69 = *(v17 + 7);
      v70 = *(v17 + 8);
      v71 = *(v14 + 8);
      if (v71)
      {
        goto LABEL_59;
      }

LABEL_62:
      v73 = 0xE000000000000000;
      if (!v69)
      {
        goto LABEL_63;
      }
    }

    else
    {
      v69 = 0;
      v70 = 0xE000000000000000;
      v71 = *(v14 + 8);
      if (!v71)
      {
        goto LABEL_62;
      }

LABEL_59:
      v72 = *(v14 + 7);
      v73 = v71;
      if (v69 == v72)
      {
LABEL_63:
        if (v70 == v73)
        {

          v14 = v150;
          sub_1D111ECA4(v150);
          v17 = v149;
          sub_1D111ECA4(v149);
LABEL_55:
          v30 = v144 + 1;
          v65 = v143 + v134;
          v67 = v140 - 1;
          v68 = v138 + v134;
          if (v144 + 1 == v135)
          {
            v30 = v135;
            v6 = v130;
            a3 = v137;
            v29 = v132;
            goto LABEL_70;
          }

          continue;
        }
      }
    }

    break;
  }

  v74 = sub_1D139162C();

  v14 = v150;
  sub_1D111ECA4(v150);
  v17 = v149;
  result = sub_1D111ECA4(v149);
  if ((v74 & 1) == 0)
  {
    goto LABEL_55;
  }

  if (v146)
  {
    v4 = v147;
    sub_1D10F0DFC(v68, v147);
    swift_arrayInitWithTakeFrontToBack();
    sub_1D10F0DFC(v4, v65);
    v65 += v66;
    v68 += v66;
    if (__CFADD__(v67++, 1))
    {
      goto LABEL_55;
    }

    goto LABEL_57;
  }

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
  return result;
}

uint64_t sub_1D12FF47C(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v56 = type metadata accessor for ClinicalSharingSelectableAuthorizationCategoryItem();
  v8 = MEMORY[0x1EEE9AC00](v56);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v48 - v10;
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v48 - v13;
  result = MEMORY[0x1EEE9AC00](v12);
  v18 = &v48 - v17;
  v20 = *(v19 + 72);
  if (!v20)
  {
    __break(1u);
LABEL_80:
    __break(1u);
    goto LABEL_81;
  }

  if (a2 - a1 == 0x8000000000000000 && v20 == -1)
  {
    goto LABEL_80;
  }

  v21 = a3 - a2;
  if (a3 - a2 != 0x8000000000000000 || v20 != -1)
  {
    v22 = (a2 - a1) / v20;
    v61 = a1;
    v60 = a4;
    if (v22 < v21 / v20)
    {
      v57 = a3;
      v23 = v22 * v20;
      if (a4 < a1 || a1 + v23 <= a4)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else if (a4 != a1)
      {
        swift_arrayInitWithTakeBackToFront();
      }

      v55 = a4 + v23;
      v59 = a4 + v23;
      if (v23 >= 1 && a2 < v57)
      {
        v53 = v18;
        v54 = v14;
        while (1)
        {
          sub_1D111EC40(a2, v18);
          v58 = a4;
          sub_1D111EC40(a4, v14);
          if (*(v18 + 8))
          {
            v26 = *(v18 + 7);
            v27 = *(v18 + 8);
            v28 = *(v14 + 8);
            if (v28)
            {
              goto LABEL_23;
            }
          }

          else
          {
            v26 = 0;
            v27 = 0xE000000000000000;
            v28 = *(v14 + 8);
            if (v28)
            {
LABEL_23:
              v29 = v28;
              if (v26 != *(v14 + 7))
              {
                goto LABEL_29;
              }

              goto LABEL_27;
            }
          }

          v29 = 0xE000000000000000;
          if (v26)
          {
            goto LABEL_29;
          }

LABEL_27:
          if (v27 == v29)
          {

            sub_1D111ECA4(v14);
            v18 = v53;
            sub_1D111ECA4(v53);
LABEL_35:
            a4 = v58 + v20;
            if (a1 < v58 || a1 >= a4)
            {
              swift_arrayInitWithTakeFrontToBack();
              v14 = v54;
            }

            else
            {
              v14 = v54;
              if (a1 != v58)
              {
                swift_arrayInitWithTakeBackToFront();
              }
            }

            v60 = a4;
            goto LABEL_41;
          }

LABEL_29:
          v30 = sub_1D139162C();

          sub_1D111ECA4(v14);
          v18 = v53;
          sub_1D111ECA4(v53);
          if ((v30 & 1) == 0)
          {
            goto LABEL_35;
          }

          a4 = v58;
          if (a1 < a2 || a1 >= a2 + v20)
          {
            swift_arrayInitWithTakeFrontToBack();
            a2 += v20;
            v14 = v54;
          }

          else
          {
            v14 = v54;
            if (a1 != a2)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            a2 += v20;
          }

LABEL_41:
          a1 += v20;
          v61 = a1;
          if (a4 >= v55 || a2 >= v57)
          {
            goto LABEL_78;
          }
        }
      }

      goto LABEL_78;
    }

    v55 = v16;
    v24 = v21 / v20 * v20;
    if (a4 < a2 || a2 + v24 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v31 = a4 + v24;
    if (v24 < 1)
    {
LABEL_77:
      v61 = a2;
      v59 = v31;
LABEL_78:
      sub_1D124588C(&v61, &v60, &v59);
      return 1;
    }

    v32 = -v20;
    v33 = a4 + v24;
    v34 = v55;
    v51 = v11;
    v58 = a4;
    v54 = v32;
LABEL_49:
    v49 = v31;
    v35 = a2;
    v36 = a2 + v32;
    v52 = a2;
    v53 = (a2 + v32);
    while (1)
    {
      if (v35 <= a1)
      {
        v61 = v35;
        v59 = v49;
        goto LABEL_78;
      }

      v37 = a3;
      v50 = v31;
      v38 = v54;
      v57 = &v54[v33];
      sub_1D111EC40(&v54[v33], v11);
      sub_1D111EC40(v36, v34);
      if (*(v11 + 8))
      {
        v39 = *(v11 + 7);
        v40 = *(v11 + 8);
      }

      else
      {
        v39 = 0;
        v40 = 0xE000000000000000;
      }

      v41 = v34;
      v42 = *(v34 + 64);
      if (v42)
      {
        v43 = v42;
        if (v39 != *(v41 + 56))
        {
          goto LABEL_62;
        }
      }

      else
      {
        v43 = 0xE000000000000000;
        if (v39)
        {
          goto LABEL_62;
        }
      }

      if (v40 == v43)
      {
        v44 = 0;
        goto LABEL_63;
      }

LABEL_62:
      v44 = sub_1D139162C();
LABEL_63:
      a3 = &v38[v37];

      v34 = v55;
      sub_1D111ECA4(v55);
      v11 = v51;
      sub_1D111ECA4(v51);
      if (v44)
      {
        v46 = v58;
        if (v37 < v52 || a3 >= v52)
        {
          a2 = v53;
          swift_arrayInitWithTakeFrontToBack();
        }

        else
        {
          v47 = v37 == v52;
          a2 = v53;
          if (!v47)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v31 = v50;
        v32 = v54;
        if (v33 <= v46)
        {
          goto LABEL_77;
        }

        goto LABEL_49;
      }

      v31 = v57;
      v45 = v58;
      if (v37 < v33 || a3 >= v33)
      {
        swift_arrayInitWithTakeFrontToBack();
        v36 = v53;
      }

      else
      {
        v36 = v53;
        if (v37 != v33)
        {
          swift_arrayInitWithTakeBackToFront();
        }
      }

      v33 = v31;
      v35 = v52;
      if (v57 <= v45)
      {
        a2 = v52;
        goto LABEL_77;
      }
    }
  }

LABEL_81:
  __break(1u);
  return result;
}

uint64_t sub_1D12FFAC8(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_1D13910DC();
  }

  return sub_1D139122C();
}

uint64_t sub_1D12FFB40(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6, void *a7, void *a8)
{
  if (a2)
  {
    if (!a6)
    {
      return 0;
    }

    if (a1 != a5 || a2 != a6)
    {
      v10 = a3;
      v11 = a7;
      v12 = sub_1D139162C();
      a3 = v10;
      a7 = v11;
      if ((v12 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (a6)
  {
    return 0;
  }

  if (a3)
  {
    if (!a7)
    {
      return 0;
    }

    v13 = a3;
    v14 = a7;
    sub_1D106F934(0, &qword_1EE06A540);
    v15 = v14;
    v16 = v13;
    v17 = sub_1D1390D8C();

    if ((v17 & 1) == 0)
    {
      return 0;
    }
  }

  else if (a7)
  {
    return 0;
  }

  if (a4)
  {
    if (a8)
    {
      sub_1D106F934(0, &qword_1EE06B6E0);
      v18 = a8;
      v19 = a4;
      v20 = sub_1D1390D8C();

      if (v20)
      {
        return 1;
      }
    }
  }

  else if (!a8)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_1D12FFC74(uint64_t a1)
{
  sub_1D1300890(0, &qword_1EC60AAA8, type metadata accessor for ClinicalSharingSelectableAuthorizationCategoryItem, MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D12FFD08(unsigned __int8 a1)
{
  if (a1 > 1u)
  {
    if (a1 != 2)
    {
      if (a1 == 3)
      {
        if (qword_1EE069F90 == -1)
        {
          return sub_1D138D1CC();
        }
      }

      else if (qword_1EE069F90 == -1)
      {
        return sub_1D138D1CC();
      }

      goto LABEL_13;
    }

    goto LABEL_7;
  }

  if (!a1)
  {
LABEL_7:
    if (qword_1EE069F90 == -1)
    {
      return sub_1D138D1CC();
    }

    goto LABEL_13;
  }

  if (qword_1EE069F90 != -1)
  {
LABEL_13:
    swift_once();
  }

  return sub_1D138D1CC();
}

uint64_t sub_1D12FFEF8(uint64_t a1)
{
  v2 = type metadata accessor for ClinicalSharingSelectableAuthorizationCategoryItem() - 8;
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = 0;
  v14 = 0xE000000000000000;
  v6 = *(a1 + 16);
  if (!v6)
  {
    return 0;
  }

  v7 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
  v8 = *(v3 + 72);
  do
  {
    sub_1D111EC40(v7, v5);
    v10 = v13;
    v9 = v14;
    if (sub_1D139028C() >= 41)
    {
      sub_1D111ECA4(v5);
      return v10;
    }

    v11 = HIBYTE(v9) & 0xF;
    if ((v9 & 0x2000000000000000) == 0)
    {
      v11 = v10 & 0xFFFFFFFFFFFFLL;
    }

    if (v11)
    {
      MEMORY[0x1D3885C10](8236, 0xE200000000000000);
    }

    if (*(v5 + 8))
    {
      MEMORY[0x1D3885C10](*(v5 + 7));
    }

    sub_1D111ECA4(v5);
    v7 += v8;
    --v6;
  }

  while (v6);
  return v13;
}

uint64_t sub_1D130005C(uint64_t a1, void (*a2)(uint64_t, uint64_t, void *, void *, uint64_t))
{
  v2 = a1;
  v3 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    v34 = MEMORY[0x1E69E7CC0];
    sub_1D13912DC();
    v5 = v2 + 64;
    result = sub_1D139104C();
    v6 = result;
    v7 = 0;
    v28 = *(v2 + 36);
    v26 = v2 + 72;
    v27 = v3;
    v29 = v2 + 64;
    v30 = v2;
    while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(v2 + 32))
    {
      v10 = v6 >> 6;
      if ((*(v5 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
      {
        goto LABEL_19;
      }

      v32 = v7;
      v11 = *(v2 + 56);
      v12 = (*(v2 + 48) + 32 * v6);
      v13 = *v12;
      v14 = v12[1];
      v16 = v12[2];
      v15 = v12[3];
      v17 = *(v11 + 8 * v6);
      v33 = v15;

      v18 = v16;
      a2(v13, v14, v16, v15, v17);

      sub_1D13912AC();
      sub_1D13912EC();
      v2 = v30;
      sub_1D13912FC();
      result = sub_1D13912BC();
      v8 = 1 << *(v30 + 32);
      if (v6 >= v8)
      {
        goto LABEL_20;
      }

      v5 = v29;
      v19 = *(v29 + 8 * v10);
      if ((v19 & (1 << v6)) == 0)
      {
        goto LABEL_21;
      }

      if (v28 != *(v30 + 36))
      {
        goto LABEL_22;
      }

      v20 = v19 & (-2 << (v6 & 0x3F));
      if (v20)
      {
        v8 = __clz(__rbit64(v20)) | v6 & 0x7FFFFFFFFFFFFFC0;
        v9 = v27;
      }

      else
      {
        v21 = v10 << 6;
        v22 = v10 + 1;
        v9 = v27;
        v23 = (v26 + 8 * v10);
        while (v22 < (v8 + 63) >> 6)
        {
          v25 = *v23++;
          v24 = v25;
          v21 += 64;
          ++v22;
          if (v25)
          {
            v8 = __clz(__rbit64(v24)) + v21;
            break;
          }
        }
      }

      v7 = v32 + 1;
      v6 = v8;
      if (v32 + 1 == v9)
      {
        return v34;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
  }

  return result;
}

uint64_t sub_1D13002A4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    return 0;
  }

  v5 = 0;
  v6 = *(type metadata accessor for ClinicalSharingSelectableAuthorizationCategoryItem() - 8);
  v7 = (a1 + ((*(v6 + 80) + 32) & ~*(v6 + 80)));
  v8 = *(v6 + 72);
  while ((sub_1D12F9DF8(v7, a2) & 1) == 0)
  {
    ++v5;
    v7 = (v7 + v8);
    if (v2 == v5)
    {
      return 0;
    }
  }

  return v5;
}

uint64_t sub_1D130038C(uint64_t *a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for ClinicalSharingSelectableAuthorizationCategoryItem();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6 - 8);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v37 - v12;
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = (&v37 - v15);
  MEMORY[0x1EEE9AC00](v14);
  v18 = (&v37 - v17);
  v19 = *a1;
  result = sub_1D13002A4(*a1, a2);
  if (v2)
  {
    return v3;
  }

  v40 = v13;
  if (v21)
  {
    return *(v19 + 16);
  }

  v3 = result;
  v38 = a1;
  v39 = v10;
  v22 = result + 1;
  if (!__OFADD__(result, 1))
  {
    v23 = v19;
    v37 = 0;
    v43 = a2;
    v41 = v7;
    while (1)
    {
      while (1)
      {
        v25 = v23[2];
        if (v22 == v25)
        {
          return v3;
        }

        if (v22 >= v25)
        {
          __break(1u);
LABEL_43:
          __break(1u);
LABEL_44:
          __break(1u);
LABEL_45:
          __break(1u);
LABEL_46:
          __break(1u);
LABEL_47:
          __break(1u);
LABEL_48:
          __break(1u);
          goto LABEL_49;
        }

        v26 = (*(v7 + 80) + 32) & ~*(v7 + 80);
        v45 = v23;
        v44 = v26;
        v27 = v23 + v26;
        v28 = *(v7 + 72);
        v42 = v28 * v22;
        sub_1D111EC40(&v27[v28 * v22], v18);
        v29 = *(a2 + 16);
        if (v29)
        {
          break;
        }

LABEL_26:
        result = sub_1D111ECA4(v18);
        if (v3 == v22)
        {
          a2 = v43;
          v7 = v41;
          v23 = v45;
          v24 = __OFADD__(v3++, 1);
          if (v24)
          {
            goto LABEL_44;
          }
        }

        else
        {
          if ((v3 & 0x8000000000000000) != 0)
          {
            goto LABEL_45;
          }

          v34 = v45[2];
          if (v3 >= v34)
          {
            goto LABEL_46;
          }

          v35 = v28 * v3;
          result = sub_1D111EC40(&v27[v28 * v3], v40);
          if (v22 >= v34)
          {
            goto LABEL_47;
          }

          sub_1D111EC40(&v27[v42], v39);
          v23 = v45;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v23 = sub_1D12FFB2C(v23);
          }

          a2 = v43;
          v7 = v41;
          v36 = v23 + v44;
          result = sub_1D130082C(v39, v23 + v44 + v35);
          if (v22 >= v23[2])
          {
            goto LABEL_48;
          }

          result = sub_1D130082C(v40, &v36[v42]);
          *v38 = v23;
          v24 = __OFADD__(v3++, 1);
          if (v24)
          {
            goto LABEL_44;
          }
        }

        v24 = __OFADD__(v22++, 1);
        if (v24)
        {
          goto LABEL_43;
        }
      }

      v30 = v43 + v44;
      while (1)
      {
        sub_1D111EC40(v30, v16);
        v31 = v16[2] == v18[2] && v16[3] == v18[3];
        if (!v31 && (sub_1D139162C() & 1) == 0)
        {
          sub_1D111ECA4(v16);
          goto LABEL_14;
        }

        if (*v16 == *v18 && v16[1] == v18[1])
        {
          break;
        }

        v33 = sub_1D139162C();
        sub_1D111ECA4(v16);
        if (v33)
        {
          goto LABEL_38;
        }

LABEL_14:
        v30 += v28;
        if (!--v29)
        {
          goto LABEL_26;
        }
      }

      sub_1D111ECA4(v16);
LABEL_38:
      result = sub_1D111ECA4(v18);
      a2 = v43;
      v7 = v41;
      v23 = v45;
      v24 = __OFADD__(v22++, 1);
      if (v24)
      {
        goto LABEL_43;
      }
    }
  }

LABEL_49:
  __break(1u);
  return result;
}

unint64_t sub_1D13006E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  result = type metadata accessor for ClinicalSharingSelectableAuthorizationCategoryItem();
  v10 = *(*(result - 8) + 72);
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_19;
  }

  v9 = *(*(result - 8) + 80);
  v12 = v7 + ((v9 + 32) & ~v9);
  v13 = v12 + v10 * a1;
  result = swift_arrayDestroy();
  v14 = a3 - v11;
  if (__OFSUB__(a3, v11))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v15 = v10 * a3;
  if (v14)
  {
    v16 = *(v7 + 16);
    if (!__OFSUB__(v16, a2))
    {
      result = v13 + v15;
      v17 = v12 + v10 * a2;
      if (v13 + v15 < v17 || result >= v17 + (v16 - a2) * v10)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (result != v17)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v19 = *(v7 + 16);
      v20 = __OFADD__(v19, v14);
      v21 = v19 + v14;
      if (!v20)
      {
        *(v7 + 16) = v21;
        goto LABEL_15;
      }

LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
      return result;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

LABEL_15:
  if (a3 >= 1 && v15 > 0)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_1D130082C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ClinicalSharingSelectableAuthorizationCategoryItem();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_1D1300890(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1D13008F4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D1300958(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
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

uint64_t sub_1D13009B4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_1D1300A1C()
{
  result = qword_1EC60F488;
  if (!qword_1EC60F488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60F488);
  }

  return result;
}

uint64_t sub_1D1300AD4(void *a1, uint64_t a2, uint64_t a3)
{
  v101 = a2;
  v102 = a3;
  v5 = sub_1D138F0BC();
  v107 = *(v5 - 8);
  v108 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v91 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v105 = &v91 - v9;
  v10 = sub_1D138CFBC();
  v99 = *(v10 - 8);
  v100 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v98 = &v91 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D1301D10(0, &qword_1EE06B500, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v91 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v91 - v16;
  v18 = sub_1D138D57C();
  v103 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v91 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v91 - v22;
  MEMORY[0x1EEE9AC00](v24);
  v97 = &v91 - v25;
  *&v27 = MEMORY[0x1EEE9AC00](v26).n128_u64[0];
  v29 = &v91 - v28;
  v30 = [a1 primarySeries];
  if (!v30)
  {
    goto LABEL_8;
  }

  v31 = v30;
  v32 = [v30 dataSource];
  v106 = v3;
  v104 = a1;
  v33 = v32;

  v34 = v33;
  a1 = v104;
  v3 = v106;
  if (!v34)
  {
    goto LABEL_8;
  }

  type metadata accessor for MedicalRecordChartDataSource();
  v35 = swift_dynamicCastClass();
  if (!v35)
  {

LABEL_8:
    sub_1D138F07C();
    v41 = v3;
    v42 = a1;
    v43 = sub_1D138F0AC();
    v44 = sub_1D13907FC();

    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v111[0] = v46;
      *v45 = 136446466;
      v47 = v41;
      v48 = [v47 description];
      v49 = sub_1D139016C();
      v51 = v50;

      v52 = sub_1D11DF718(v49, v51, v111);

      *(v45 + 4) = v52;
      *(v45 + 12) = 2082;
      v110 = [v42 primarySeries];
      sub_1D1301C38();
      v53 = sub_1D13901EC();
      v55 = sub_1D11DF718(v53, v54, v111);

      *(v45 + 14) = v55;
      _os_log_impl(&dword_1D101F000, v43, v44, "Cannot update %{public}s with a graph view that does not have a primary series with a medical record chart data source. Primary series: %{public}s", v45, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1D38882F0](v46, -1, -1);
      MEMORY[0x1D38882F0](v45, -1, -1);
    }

    v56 = *(v107 + 8);
    v57 = v7;
    return v56(v57, v108);
  }

  v94 = v35;
  v36 = [a1 actualVisibleRange];
  v37 = [v36 minValue];
  v96 = v34;
  if (!v37)
  {
    (*(v103 + 56))(v17, 1, 1, v18);
    v14 = v17;
    goto LABEL_19;
  }

  v95 = v36;
  v111[0] = v37;
  v38 = swift_dynamicCast();
  v39 = v103;
  v93 = *(v103 + 56);
  v93(v17, v38 ^ 1u, 1, v18);
  v40 = *(v39 + 48);
  if (v40(v17, 1, v18) == 1)
  {
    v14 = v17;
LABEL_18:
    v36 = v95;
    v34 = v96;
    v3 = v106;
LABEL_19:
    sub_1D1301D74(v14, &qword_1EE06B500, MEMORY[0x1E6969530]);
    v61 = v105;
    sub_1D138F07C();
    v62 = v3;
    v63 = v36;
    v64 = sub_1D138F0AC();
    v65 = sub_1D13907FC();

    if (os_log_type_enabled(v64, v65))
    {
      v66 = swift_slowAlloc();
      v67 = swift_slowAlloc();
      v111[0] = v67;
      *v66 = 136446466;
      v68 = v62;
      v69 = [v68 description];
      v70 = sub_1D139016C();
      v72 = v71;

      v73 = sub_1D11DF718(v70, v72, v111);

      *(v66 + 4) = v73;
      *(v66 + 12) = 2082;
      v74 = v63;
      v75 = [v74 description];
      v76 = sub_1D139016C();
      v78 = v77;

      v79 = sub_1D11DF718(v76, v78, v111);

      *(v66 + 14) = v79;
      _os_log_impl(&dword_1D101F000, v64, v65, "Cannot update %{public}s without a date-bounded visible range, have: %{public}s", v66, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1D38882F0](v67, -1, -1);
      MEMORY[0x1D38882F0](v66, -1, -1);

      v56 = *(v107 + 8);
      v57 = v105;
    }

    else
    {

      v56 = *(v107 + 8);
      v57 = v61;
    }

    return v56(v57, v108);
  }

  v92 = *(v39 + 32);
  v92(v29, v17, v18);
  v59 = [v95 maxValue];
  if (!v59)
  {
    (*(v39 + 8))(v29, v18);
    v93(v14, 1, 1, v18);
    goto LABEL_18;
  }

  v111[0] = v59;
  v60 = swift_dynamicCast();
  v93(v14, v60 ^ 1u, 1, v18);
  if (v40(v14, 1, v18) == 1)
  {
    (*(v39 + 8))(v29, v18);
    goto LABEL_18;
  }

  v80 = v97;
  v92(v97, v14, v18);
  v81 = *(v39 + 16);
  v81(v23, v29, v18);
  v81(v20, v80, v18);
  v82 = v98;
  v83 = sub_1D138CF8C();
  v84 = *(v94 + OBJC_IVAR____TtC15HealthRecordsUI28MedicalRecordChartDataSource_chartableCodedQuantitySets);
  v85 = v96;
  if (v84)
  {
    MEMORY[0x1EEE9AC00](v83);
    *(&v91 - 2) = v82;

    v86 = sub_1D110A00C(sub_1D12393A8, (&v91 - 4), v84);
    if (v86 >> 62)
    {
      v84 = sub_1D13910DC();
    }

    else
    {
      v84 = *((v86 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }
  }

  v87 = v106;
  v88 = &v106[OBJC_IVAR____TtC15HealthRecordsUI37SingleValueCurrentValueViewDataSource_lastCachedNumberOfChartPoints];
  *v88 = v84;
  v88[8] = 0;
  v89 = type metadata accessor for SingleValueCurrentValueViewDataSource();
  v109.receiver = v87;
  v109.super_class = v89;
  objc_msgSendSuper2(&v109, sel_updateDataSourceWithGraphView_displayType_timeScope_, v104, v101, v102);

  v90 = *(v103 + 8);
  v90(v80, v18);
  v90(v29, v18);
  return (*(v99 + 8))(v82, v100);
}

id SingleValueCurrentValueViewDataSource.__allocating_init(dateCache:healthStore:selectedRangeFormatter:)(void *a1, void *a2, void *a3)
{
  v7 = [objc_allocWithZone(v3) initWithDateCache:a1 healthStore:a2 selectedRangeFormatter:a3];

  return v7;
}

id SingleValueCurrentValueViewDataSource.init(dateCache:healthStore:selectedRangeFormatter:)(void *a1, void *a2, void *a3)
{
  v7 = &v3[OBJC_IVAR____TtC15HealthRecordsUI37SingleValueCurrentValueViewDataSource_lastCachedNumberOfChartPoints];
  *v7 = 0;
  v7[8] = 1;
  v10.receiver = v3;
  v10.super_class = type metadata accessor for SingleValueCurrentValueViewDataSource();
  v8 = objc_msgSendSuper2(&v10, sel_initWithDateCache_healthStore_selectedRangeFormatter_, a1, a2, a3);

  return v8;
}

id SingleValueCurrentValueViewDataSource.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SingleValueCurrentValueViewDataSource.init()()
{
  v1 = &v0[OBJC_IVAR____TtC15HealthRecordsUI37SingleValueCurrentValueViewDataSource_lastCachedNumberOfChartPoints];
  *v1 = 0;
  v1[8] = 1;
  v3.receiver = v0;
  v3.super_class = type metadata accessor for SingleValueCurrentValueViewDataSource();
  return objc_msgSendSuper2(&v3, sel_init);
}

id SingleValueCurrentValueViewDataSource.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SingleValueCurrentValueViewDataSource();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1D1301818()
{
  sub_1D1301D10(0, &qword_1EC60DF40, MEMORY[0x1E6969770], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v23[-v2];
  result = 0;
  if ((v0[OBJC_IVAR____TtC15HealthRecordsUI37SingleValueCurrentValueViewDataSource_lastCachedNumberOfChartPoints + 8] & 1) == 0)
  {
    v5 = *&v0[OBJC_IVAR____TtC15HealthRecordsUI37SingleValueCurrentValueViewDataSource_lastCachedNumberOfChartPoints];
    v6 = [objc_opt_self() hk_chartCurrentValueKindFont];
    sub_1D1301D10(0, &qword_1EC60F520, sub_1D106F814, MEMORY[0x1E69E6F90]);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1D139E710;
    v8 = *MEMORY[0x1E69DB650];
    *(inited + 32) = *MEMORY[0x1E69DB650];
    v9 = v8;
    v10 = [v0 titleColor];
    v11 = sub_1D106F934(0, &qword_1EE06B6E0);
    *(inited + 40) = v10;
    v12 = *MEMORY[0x1E69DB648];
    *(inited + 64) = v11;
    *(inited + 72) = v12;
    *(inited + 104) = sub_1D106F934(0, &qword_1EC60E670);
    *(inited + 80) = v6;
    v13 = v12;
    v14 = v6;
    sub_1D109B2B4(inited);
    swift_setDeallocating();
    sub_1D106F814();
    swift_arrayDestroy();
    v15 = sub_1D138D67C();
    (*(*(v15 - 8) + 56))(v3, 1, 1, v15);
    if (qword_1EC608C98 != -1)
    {
      swift_once();
    }

    sub_1D1301D10(0, &qword_1EE06B080, sub_1D10898CC, MEMORY[0x1E69E6F90]);
    v16 = swift_allocObject();
    v17 = MEMORY[0x1E69E6530];
    *(v16 + 16) = xmmword_1D139E700;
    v18 = MEMORY[0x1E69E65A8];
    *(v16 + 56) = v17;
    *(v16 + 64) = v18;
    *(v16 + 32) = v5;
    sub_1D138D1CC();
    if (*(v16 + 16))
    {
      sub_1D139019C();
    }

    sub_1D1301D74(v3, &qword_1EC60DF40, MEMORY[0x1E6969770]);
    v19 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
    v20 = sub_1D139012C();

    type metadata accessor for Key(0);
    sub_1D106F8DC();
    v21 = sub_1D138FFEC();

    v22 = [v19 initWithString:v20 attributes:v21];

    return v22;
  }

  return result;
}

void sub_1D1301C38()
{
  if (!qword_1EC60F498)
  {
    sub_1D106F934(255, &qword_1EC60F4A0);
    v0 = sub_1D1390F3C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC60F498);
    }
  }
}

void sub_1D1301D10(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1D1301D74(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1D1301D10(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1D1301DE4(uint64_t a1, uint64_t a2, void *a3)
{
  sub_1D12E8E70(0, &qword_1EC6103F0, MEMORY[0x1E69DC0D8]);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v14 - v6;
  *(a1 + OBJC_IVAR____TtC15HealthRecordsUI40MedicalRecordTimelinePanelHeaderItemCell_item) = *a3;
  swift_retain_n();

  sub_1D138F25C();
  v8 = sub_1D138F27C();
  (*(*(v8 - 8) + 56))(v7, 0, 1, v8);
  MEMORY[0x1D38864A0](v7);
  v9 = sub_1D1302390();

  v10 = sub_1D139012C();

  [v9 setText_];

  v11 = sub_1D1302594();

  v12 = sub_1D139012C();

  [v11 setText_];

  sub_1D1302F44();
}

uint64_t sub_1D1301F88()
{

  sub_1D116DEF0(v0 + OBJC_IVAR____TtC15HealthRecordsUI36MedicalRecordTimelinePanelHeaderItem_cellResolution);

  return swift_deallocClassInstance();
}

uint64_t sub_1D1302040()
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

uint64_t sub_1D13020EC()
{
  v1 = *v0;
  sub_1D139177C();
  sub_1D139027C();
  v2 = *(v1 + 48);
  sub_1D1390D9C();

  return sub_1D13917CC();
}

void sub_1D1302158()
{
  v1 = *v0;
  sub_1D139027C();
  v2 = *(v1 + 48);
  sub_1D1390D9C();
}

uint64_t sub_1D13021C8()
{
  sub_1D139177C();
  v1 = *v0;
  sub_1D139027C();
  v2 = *(v1 + 48);
  sub_1D1390D9C();

  return sub_1D13917CC();
}

uint64_t sub_1D1302230()
{
  v1 = sub_1D138D5EC();
  v2 = *(v1 - 8);
  *&v3 = MEMORY[0x1EEE9AC00](v1).n128_u64[0];
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [*(*v0 + 48) UUID];
  sub_1D138D5CC();

  v7 = sub_1D138D59C();
  v9 = v8;
  (*(v2 + 8))(v5, v1);
  strcpy(v11, "PanelHeader.");
  BYTE5(v11[1]) = 0;
  HIWORD(v11[1]) = -5120;
  MEMORY[0x1D3885C10](v7, v9);

  return v11[0];
}

id sub_1D1302390()
{
  v1 = OBJC_IVAR____TtC15HealthRecordsUI40MedicalRecordTimelinePanelHeaderItemCell____lazy_storage___titleLabel;
  v2 = *(v0 + OBJC_IVAR____TtC15HealthRecordsUI40MedicalRecordTimelinePanelHeaderItemCell____lazy_storage___titleLabel);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC15HealthRecordsUI40MedicalRecordTimelinePanelHeaderItemCell____lazy_storage___titleLabel);
  }

  else
  {
    v4 = v0;
    v5 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
    sub_1D106F934(0, &qword_1EC60E670);
    v6 = sub_1D1390C6C();
    [v5 setFont_];

    v7 = [objc_opt_self() labelColor];
    [v5 setTextColor_];

    [v5 setNumberOfLines_];
    v8 = v5;
    [v8 setTranslatesAutoresizingMaskIntoConstraints_];
    v14 = sub_1D139016C();
    v15 = v9;

    MEMORY[0x1D3885C10](0x65486C656E61502ELL, 0xEC00000072656461);

    MEMORY[0x1D3885C10](0x656C7469542ELL, 0xE600000000000000);

    v10 = sub_1D139012C();

    [v8 setAccessibilityIdentifier_];

    v11 = *(v4 + v1);
    *(v4 + v1) = v8;
    v3 = v8;

    v2 = 0;
  }

  v12 = v2;
  return v3;
}

id sub_1D1302594()
{
  v1 = OBJC_IVAR____TtC15HealthRecordsUI40MedicalRecordTimelinePanelHeaderItemCell____lazy_storage___subtitleLabel;
  v2 = *(v0 + OBJC_IVAR____TtC15HealthRecordsUI40MedicalRecordTimelinePanelHeaderItemCell____lazy_storage___subtitleLabel);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC15HealthRecordsUI40MedicalRecordTimelinePanelHeaderItemCell____lazy_storage___subtitleLabel);
  }

  else
  {
    v4 = v0;
    v5 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
    sub_1D106F934(0, &qword_1EC60E670);
    v6 = sub_1D1390C6C();
    [v5 setFont_];

    [v5 setNumberOfLines_];
    v7 = [objc_opt_self() secondaryLabelColor];
    [v5 setTextColor_];

    v8 = v5;
    [v8 setTranslatesAutoresizingMaskIntoConstraints_];
    v14 = sub_1D139016C();
    v15 = v9;

    MEMORY[0x1D3885C10](0x65486C656E61502ELL, 0xEC00000072656461);

    MEMORY[0x1D3885C10](0x6C7469746275532ELL, 0xE900000000000065);

    v10 = sub_1D139012C();

    [v8 setAccessibilityIdentifier_];

    v11 = *(v4 + v1);
    *(v4 + v1) = v8;
    v3 = v8;

    v2 = 0;
  }

  v12 = v2;
  return v3;
}

uint64_t sub_1D13027A0()
{
  v1 = sub_1D138D82C();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D12E8E70(0, &qword_1EC60A840, MEMORY[0x1E69A3588]);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v25 - v6;
  v8 = sub_1D138DF1C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtC15HealthRecordsUI40MedicalRecordTimelinePanelHeaderItemCell_sectionContext;
  swift_beginAccess();
  sub_1D118C460(v0 + v12, v7);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1D10DCA4C(v7);
  }

  (*(v9 + 32))(v11, v7, v8);
  v26 = 0;
  v27 = 0xE000000000000000;
  sub_1D13911EC();
  v14 = sub_1D139016C();
  v16 = v15;

  v26 = v14;
  v27 = v16;
  MEMORY[0x1D3885C10](0xD000000000000011, 0x80000001D13C02A0);
  sub_1D138DF0C();
  v17 = sub_1D138D81C();
  (*(v2 + 8))(v4, v1);
  v25 = v17;
  v18 = sub_1D13915CC();
  MEMORY[0x1D3885C10](v18);

  v20 = v26;
  v19 = v27;
  v21 = sub_1D1302390();
  v26 = v20;
  v27 = v19;

  MEMORY[0x1D3885C10](0x69546C656E61502ELL, 0xEB00000000656C74);
  v22 = sub_1D139012C();

  [v21 setAccessibilityIdentifier_];

  v23 = sub_1D1302594();
  v26 = v20;
  v27 = v19;

  MEMORY[0x1D3885C10](0x75536C656E61502ELL, 0xEE00656C74697462);

  v24 = sub_1D139012C();

  [v23 setAccessibilityIdentifier_];

  return (*(v9 + 8))(v11, v8);
}

id sub_1D1302B70(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC15HealthRecordsUI40MedicalRecordTimelinePanelHeaderItemCell____lazy_storage___titleLabel] = 0;
  *&v4[OBJC_IVAR____TtC15HealthRecordsUI40MedicalRecordTimelinePanelHeaderItemCell____lazy_storage___subtitleLabel] = 0;
  *&v4[OBJC_IVAR____TtC15HealthRecordsUI40MedicalRecordTimelinePanelHeaderItemCell_customConstraints] = MEMORY[0x1E69E7CC0];
  *&v4[OBJC_IVAR____TtC15HealthRecordsUI40MedicalRecordTimelinePanelHeaderItemCell_item] = 0;
  v9 = OBJC_IVAR____TtC15HealthRecordsUI40MedicalRecordTimelinePanelHeaderItemCell_sectionContext;
  v10 = sub_1D138DF1C();
  (*(*(v10 - 8) + 56))(&v4[v9], 1, 1, v10);
  v17.receiver = v4;
  v17.super_class = type metadata accessor for MedicalRecordTimelinePanelHeaderItemCell(0);
  v11 = objc_msgSendSuper2(&v17, sel_initWithFrame_, a1, a2, a3, a4);
  v12 = [v11 contentView];
  v13 = sub_1D1302390();
  [v12 addSubview_];

  v14 = [v11 contentView];
  v15 = sub_1D1302594();
  [v14 addSubview_];

  sub_1D1302F44();
  return v11;
}

void sub_1D1302E04(void *a1)
{
  v7.receiver = v1;
  v7.super_class = type metadata accessor for MedicalRecordTimelinePanelHeaderItemCell(0);
  objc_msgSendSuper2(&v7, sel_traitCollectionDidChange_, a1);
  v3 = [v1 traitCollection];
  v4 = v3;
  if (!a1)
  {
    if (!v3)
    {
      return;
    }

    goto LABEL_7;
  }

  if (!v3 || (sub_1D106F934(0, &qword_1EE06B758), v5 = a1, v6 = sub_1D1390D8C(), v5, v4, (v6 & 1) == 0))
  {
LABEL_7:
    sub_1D1302F44();
  }
}

id sub_1D1302F44()
{
  v1 = objc_opt_self();
  v2 = OBJC_IVAR____TtC15HealthRecordsUI40MedicalRecordTimelinePanelHeaderItemCell_customConstraints;
  sub_1D106F934(0, &qword_1EC609690);

  v3 = sub_1D139044C();

  [v1 deactivateConstraints_];

  *&v0[v2] = sub_1D1303044();

  v4 = sub_1D139044C();

  [v1 activateConstraints_];

  return [v0 setNeedsLayout];
}

uint64_t sub_1D1303044()
{
  sub_1D106F424();
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1D13A0750;
  v2 = sub_1D1302390();
  v3 = [v2 topAnchor];

  v4 = [v0 contentView];
  v5 = [v4 topAnchor];

  v6 = [v3 constraintEqualToAnchor:v5 constant:4.0];
  *(v1 + 32) = v6;
  v7 = OBJC_IVAR____TtC15HealthRecordsUI40MedicalRecordTimelinePanelHeaderItemCell____lazy_storage___titleLabel;
  v8 = [*&v0[OBJC_IVAR____TtC15HealthRecordsUI40MedicalRecordTimelinePanelHeaderItemCell____lazy_storage___titleLabel] leadingAnchor];
  v9 = [v0 contentView];
  v10 = [v9 &selRef_hrui_insurance + 1];

  v11 = [v8 constraintEqualToAnchor:v10 constant:16.0];
  *(v1 + 40) = v11;
  v12 = [v0 contentView];
  v13 = [v12 trailingAnchor];

  v14 = [*&v0[v7] trailingAnchor];
  v15 = [v13 constraintEqualToAnchor:v14 constant:16.0];

  *(v1 + 48) = v15;
  v16 = sub_1D1302594();
  v17 = [v16 topAnchor];

  v18 = [*&v0[v7] bottomAnchor];
  v19 = [v17 constraintEqualToAnchor_];

  *(v1 + 56) = v19;
  v20 = OBJC_IVAR____TtC15HealthRecordsUI40MedicalRecordTimelinePanelHeaderItemCell____lazy_storage___subtitleLabel;
  v21 = [*&v0[OBJC_IVAR____TtC15HealthRecordsUI40MedicalRecordTimelinePanelHeaderItemCell____lazy_storage___subtitleLabel] leadingAnchor];
  v22 = [*&v0[v7] leadingAnchor];
  v23 = [v21 constraintEqualToAnchor_];

  *(v1 + 64) = v23;
  v24 = [*&v0[v20] trailingAnchor];
  v25 = [*&v0[v7] trailingAnchor];
  v26 = [v24 constraintEqualToAnchor_];

  *(v1 + 72) = v26;
  v27 = [v0 contentView];
  v28 = [v27 bottomAnchor];

  v29 = [*&v0[v20] bottomAnchor];
  v30 = [v28 constraintEqualToAnchor:v29 constant:8.0];

  *(v1 + 80) = v30;
  return v1;
}

id sub_1D13033CC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MedicalRecordTimelinePanelHeaderItemCell(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1D13034A8()
{
  sub_1D12E8E70(319, &qword_1EC60A840, MEMORY[0x1E69A3588]);
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1D1303570@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC15HealthRecordsUI40MedicalRecordTimelinePanelHeaderItemCell_sectionContext;
  swift_beginAccess();
  return sub_1D118C460(v1 + v3, a1);
}

uint64_t sub_1D13035C8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15HealthRecordsUI40MedicalRecordTimelinePanelHeaderItemCell_sectionContext;
  swift_beginAccess();
  sub_1D10DCAC4(a1, v1 + v3);
  swift_endAccess();
  sub_1D13027A0();
  return sub_1D10DCA4C(a1);
}

uint64_t (*sub_1D1303634(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1D1303698;
}

uint64_t sub_1D1303698(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return sub_1D13027A0();
  }

  return result;
}

unint64_t sub_1D13036D0()
{
  result = qword_1EC60F580;
  if (!qword_1EC60F580)
  {
    type metadata accessor for MedicalRecordTimelinePanelHeaderItem(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60F580);
  }

  return result;
}

uint64_t sub_1D1303728(void *a1, void *a2)
{
  v4 = a1[2] == a2[2] && a1[3] == a2[3];
  if (v4 || (v5 = sub_1D139162C(), result = 0, (v5 & 1) != 0))
  {
    if (a1[4] == a2[4] && a1[5] == a2[5])
    {
      return 1;
    }

    else
    {

      return sub_1D139162C();
    }
  }

  return result;
}

uint64_t static ClinicalSharingFeedItemIdentifierFactory.make(for:profile:)(void *a1)
{
  v2 = sub_1D138D5EC();
  v3 = *(v2 - 8);
  *&v4 = MEMORY[0x1EEE9AC00](v2).n128_u64[0];
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [a1 identifier];
  sub_1D138D5CC();

  v8 = sub_1D13038D8();
  (*(v3 + 8))(v6, v2);
  return v8;
}

uint64_t sub_1D13038D8()
{
  v0 = sub_1D138D5EC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D113F4E8(0, &qword_1EE06B560, MEMORY[0x1E69E6F90]);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D139E710;
  v5 = sub_1D138D98C();
  if (v5)
  {
    v18 = 0x656C69666F72505BLL;
    v19 = 0xE90000000000003ALL;
    v6 = v5;
    v7 = [v6 identifier];
    sub_1D138D5CC();

    v8 = sub_1D138D59C();
    v10 = v9;
    (*(v1 + 8))(v3, v0);
    MEMORY[0x1D3885C10](v8, v10);

    MEMORY[0x1D3885C10](93, 0xE100000000000000);

    v12 = v18;
    v11 = v19;
  }

  else
  {
    v6 = 0;
    v11 = 0x80000001D13BBE40;
    v12 = 0xD000000000000013;
  }

  v18 = v12;
  v19 = v11;
  MEMORY[0x1D3885C10](0xD000000000000025, 0x80000001D13CC240);

  v13 = v19;
  *(v4 + 32) = v18;
  *(v4 + 40) = v13;
  v18 = 0;
  v19 = 0xE000000000000000;
  sub_1D13911EC();

  v18 = 0xD00000000000002BLL;
  v19 = 0x80000001D13CC270;
  sub_1D10B81E8();
  v14 = sub_1D13915CC();
  MEMORY[0x1D3885C10](v14);

  MEMORY[0x1D3885C10](93, 0xE100000000000000);
  v15 = v19;
  *(v4 + 48) = v18;
  *(v4 + 56) = v15;
  v18 = v4;
  sub_1D113F4E8(0, &qword_1EE06B0F0, MEMORY[0x1E69E62F8]);
  sub_1D10F73A8();
  v16 = sub_1D139008C();

  return v16;
}

uint64_t sub_1D1303BAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((sub_1D138D5BC() & 1) == 0)
  {
    return 0;
  }

  v6 = *(a3 + 20);
  v7 = *(a1 + v6);
  v8 = *(a1 + v6 + 8);
  v9 = (a2 + v6);
  if (v7 == *v9 && v8 == v9[1])
  {
    return 1;
  }

  return sub_1D139162C();
}

id sub_1D1303C34(uint64_t a1)
{
  sub_1D13057BC(0, &qword_1EE06A650, MEMORY[0x1E69E85F0]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v61 - v4;
  v6 = type metadata accessor for AccountIconViewData(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v66 = &v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v67 = &v61 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v62 = &v61 - v12;
  sub_1D13057BC(0, &qword_1EC60A710, type metadata accessor for AccountIconViewData);
  v71 = *(v13 - 8);
  v14 = *(v71 + 64);
  v15 = MEMORY[0x1EEE9AC00](v13 - 8);
  v72 = &v61 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v73 = &v61 - v17;
  v18 = MEMORY[0x1EEE9AC00](v16);
  v70 = &v61 - v19;
  v20 = MEMORY[0x1EEE9AC00](v18);
  v69 = &v61 - v21;
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v61 - v22;
  sub_1D1305810();
  v25 = v24;
  MEMORY[0x1EEE9AC00](v24);
  v27 = &v61 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [objc_opt_self() isMainThread];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v64 = v8;
  v65 = v5;
  v29 = qword_1EC60F598;
  swift_beginAccess();
  v30 = *(v25 + 48);
  v68 = v1;
  sub_1D1305890(v1 + v29, v27);
  sub_1D1305890(a1, &v27[v30]);
  v63 = v7;
  v31 = *(v7 + 48);
  v32 = v31(v27, 1, v6);
  v74 = v6;
  if (v32 == 1)
  {
    if (v31(&v27[v30], 1, v6) == 1)
    {
LABEL_4:
      v33 = v27;
      return sub_1D13056E0(v33);
    }

    goto LABEL_7;
  }

  sub_1D1305890(v27, v23);
  if (v31(&v27[v30], 1, v6) == 1)
  {
    sub_1D1305C48(v23, type metadata accessor for AccountIconViewData);
LABEL_7:
    sub_1D1305C48(v27, sub_1D1305810);
LABEL_8:
    v34 = v69;
    sub_1D1305890(a1, v69);
    v35 = a1;
    v36 = v68;
    swift_beginAccess();
    sub_1D1305910(v34, v36 + v29);
    swift_endAccess();
    v37 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v38 = v70;
    sub_1D1305890(v35, v70);
    v39 = v73;
    sub_1D1305890(v38, v73);
    v40 = (*(v71 + 80) + 24) & ~*(v71 + 80);
    v41 = swift_allocObject();
    *(v41 + 16) = v37;
    sub_1D1305990(v38, v41 + v40);
    v42 = v36 + v29;
    v43 = v72;
    sub_1D1305890(v42, v72);
    if (v31(v43, 1, v74) == 1)
    {

      sub_1D13056E0(v43);
      memset(v75, 0, sizeof(v75));
      sub_1D13043B4(v75, v37, v39);

      v33 = v39;
      return sub_1D13056E0(v33);
    }

    sub_1D13056E0(v39);
    v44 = v67;
    sub_1D1305AA0(v43, v67);
    v45 = sub_1D13905DC();
    v46 = v65;
    (*(*(v45 - 8) + 56))(v65, 1, 1, v45);
    v47 = v66;
    sub_1D1305758(v44, v66);
    sub_1D13905AC();
    v48 = v36;

    v49 = sub_1D139059C();
    v50 = (*(v63 + 80) + 32) & ~*(v63 + 80);
    v51 = (v64 + v50 + 7) & 0xFFFFFFFFFFFFFFF8;
    v52 = swift_allocObject();
    v53 = MEMORY[0x1E69E85E0];
    *(v52 + 16) = v49;
    *(v52 + 24) = v53;
    sub_1D1305AA0(v47, v52 + v50);
    *(v52 + v51) = v48;
    v54 = (v52 + ((v51 + 15) & 0xFFFFFFFFFFFFFFF8));
    *v54 = sub_1D1305A10;
    v54[1] = v41;
    sub_1D107877C(0, 0, v46, &unk_1D13B0308, v52);

    return sub_1D1305C48(v44, type metadata accessor for AccountIconViewData);
  }

  v55 = v62;
  sub_1D1305AA0(&v27[v30], v62);
  if ((sub_1D138D5BC() & 1) == 0)
  {
    sub_1D1305C48(v55, type metadata accessor for AccountIconViewData);
    sub_1D1305C48(v23, type metadata accessor for AccountIconViewData);
    sub_1D13056E0(v27);
    goto LABEL_8;
  }

  v56 = *(v74 + 20);
  v57 = *&v23[v56];
  v58 = *&v23[v56 + 8];
  v59 = (v55 + v56);
  if (v57 == *v59 && v58 == v59[1])
  {
    sub_1D1305C48(v55, type metadata accessor for AccountIconViewData);
    sub_1D1305C48(v23, type metadata accessor for AccountIconViewData);
    goto LABEL_4;
  }

  v60 = sub_1D139162C();
  sub_1D1305C48(v55, type metadata accessor for AccountIconViewData);
  sub_1D1305C48(v23, type metadata accessor for AccountIconViewData);
  result = sub_1D13056E0(v27);
  if ((v60 & 1) == 0)
  {
    goto LABEL_8;
  }

  return result;
}

void sub_1D13043B4(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for AccountIconViewData(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D13057BC(0, &qword_1EC60A710, type metadata accessor for AccountIconViewData);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v38 - v10;
  sub_1D1305810();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *a1;
  v40 = a1[1];
  v41 = v16;
  v18 = *(a1 + 4);
  v17 = *(a1 + 5);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v20 = Strong;
    v39 = v18;
    v21 = qword_1EC60F598;
    swift_beginAccess();
    v22 = *(v13 + 48);
    sub_1D1305890(&v20[v21], v15);
    sub_1D1305890(a3, &v15[v22]);
    v23 = *(v6 + 48);
    if (v23(v15, 1, v5) == 1)
    {
      if (v23(&v15[v22], 1, v5) != 1)
      {

LABEL_7:
        sub_1D1305C48(v15, sub_1D1305810);
        return;
      }
    }

    else
    {
      sub_1D1305890(v15, v11);
      if (v23(&v15[v22], 1, v5) == 1)
      {

        sub_1D1305C48(v11, type metadata accessor for AccountIconViewData);
        goto LABEL_7;
      }

      sub_1D1305AA0(&v15[v22], v8);
      if ((sub_1D138D5BC() & 1) == 0 || ((v24 = *(v5 + 20), v25 = *&v11[v24], v26 = *&v11[v24 + 8], v27 = &v8[v24], v25 == *v27) ? (v28 = v26 == *(v27 + 1)) : (v28 = 0), !v28 && (sub_1D139162C() & 1) == 0))
      {
        sub_1D1305C48(v8, type metadata accessor for AccountIconViewData);
        sub_1D1305C48(v11, type metadata accessor for AccountIconViewData);
        sub_1D13056E0(v15);

        return;
      }

      sub_1D1305C48(v8, type metadata accessor for AccountIconViewData);
      sub_1D1305C48(v11, type metadata accessor for AccountIconViewData);
    }

    sub_1D13056E0(v15);
    v29 = &v20[qword_1EC60F5A0];
    v30 = *&v20[qword_1EC60F5A0 + 40];
    v31 = v40;
    *v29 = v41;
    *(v29 + 1) = v31;
    *(v29 + 4) = v39;
    *(v29 + 5) = v17;
    v32 = v17;

    if ([objc_opt_self() isMainThread])
    {
      v33 = *(v29 + 4);
      v34 = *(v29 + 5);
      v35 = *(v29 + 1);
      v42[0] = *v29;
      v42[1] = v35;
      v43 = v33;
      v44 = v34;
      v36 = v34;
      UIImageView.applyIcon(_:)(v42);
      v37 = v44;
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_1D130477C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[14] = a6;
  v7[15] = a7;
  v7[12] = a4;
  v7[13] = a5;
  sub_1D13905AC();
  v7[16] = sub_1D139059C();
  v9 = sub_1D139055C();
  v7[17] = v9;
  v7[18] = v8;

  return MEMORY[0x1EEE6DFA0](sub_1D1304818, v9, v8);
}

uint64_t sub_1D1304818()
{
  v27 = v0;
  if (qword_1EC608DC0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 112);
  v3 = *(v0 + 96);
  v2 = *(v0 + 104);
  os_unfair_lock_lock(&dword_1EC60E248);

  os_unfair_lock_unlock(&dword_1EC60E248);
  v4 = (v3 + *(type metadata accessor for AccountIconViewData(0) + 20));
  v5 = *v4;
  v6 = v4[1];
  v7 = (v2 + qword_1EC60F588);
  v8 = *(v7 + 2);
  v9 = *(v7 + 24);
  v20 = *v7;
  v21 = v8;
  v22 = v9;
  AccountIconProvider.placeholder(forTitle:size:)(v5, v6, &v20, &v23);

  v10 = v23;
  v11 = v24;
  v12 = v25;
  v13 = v26;
  *(v0 + 152) = v26;
  v23 = v10;
  v24 = v11;
  v25 = v12;
  v26 = v13;
  v14 = v13;
  v1(&v23);

  os_unfair_lock_lock(&dword_1EC60E248);
  *(v0 + 160) = qword_1EC60E250;

  os_unfair_lock_unlock(&dword_1EC60E248);
  v15 = *(v7 + 2);
  v16 = *(v7 + 24);
  *(v0 + 64) = *v7;
  *(v0 + 80) = v15;
  *(v0 + 88) = v16;
  v17 = swift_task_alloc();
  *(v0 + 168) = v17;
  *v17 = v0;
  v17[1] = sub_1D13049F8;
  v18 = *(v0 + 96);

  return AccountIconProvider.fetchIcon(for:size:)(v0 + 16, v18, v0 + 64);
}

uint64_t sub_1D13049F8()
{
  v1 = *v0;

  v2 = *(v1 + 144);
  v3 = *(v1 + 136);

  return MEMORY[0x1EEE6DFA0](sub_1D1304B3C, v3, v2);
}

uint64_t sub_1D1304B3C()
{
  v11 = v0;
  v1 = *(v0 + 152);
  v2 = *(v0 + 112);

  v3 = *(v0 + 48);
  v4 = *(v0 + 56);
  v5 = *(v0 + 32);
  v8[0] = *(v0 + 16);
  v8[1] = v5;
  v9 = v3;
  v10 = v4;
  v2(v8);

  v6 = *(v0 + 8);

  return v6();
}

void sub_1D1304BD8()
{
  v1 = *&v0[qword_1EC60F590];
  [v1 setTranslatesAutoresizingMaskIntoConstraints_];
  [v0 addSubview_];
  v2 = [objc_opt_self() clearColor];
  [v0 setBackgroundColor_];

  v3 = objc_opt_self();
  sub_1D106F424();
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D139F5B0;
  v5 = [v1 leadingAnchor];
  v6 = [v0 leadingAnchor];
  v7 = [v5 constraintEqualToAnchor_];

  *(v4 + 32) = v7;
  v8 = [v1 trailingAnchor];
  v9 = [v0 trailingAnchor];
  v10 = [v8 constraintEqualToAnchor_];

  *(v4 + 40) = v10;
  v11 = [v1 topAnchor];
  v12 = [v0 topAnchor];
  v13 = [v11 constraintEqualToAnchor_];

  *(v4 + 48) = v13;
  v14 = [v1 bottomAnchor];
  v15 = [v0 bottomAnchor];
  v16 = [v14 constraintEqualToAnchor_];

  *(v4 + 56) = v16;
  sub_1D1071940();
  v17 = sub_1D139044C();

  [v3 activateConstraints_];
}

void sub_1D1304E74()
{
  v1 = v0 + qword_1EC60F5A0;
  if (*(v0 + qword_1EC60F5A0 + 40) && (*v1 & 1) == 0)
  {
    v4 = *(v1 + 8);
    v5 = *(v1 + 16);
    v6 = *(v1 + 24);
    v7 = *(v1 + 32);
    v8 = v6 | v5;
    v9 = v8 | v4;
    if (v8)
    {
      v10 = 0;
    }

    else
    {
      v10 = v4 == 2;
    }

    v11 = 0x4032000000000000;
    if (v10)
    {
      v11 = 0x4028000000000000;
    }

    if (v4 == 1 && v8 == 0)
    {
      v13 = 0x4024000000000000;
    }

    else
    {
      v13 = v11;
    }

    if (!v9)
    {
      v13 = 0x401C000000000000;
    }

    if (v7)
    {
      v2 = v13;
    }

    else
    {
      v2 = v6;
    }

    v3 = 0;
  }

  else
  {
    v2 = 0;
    v3 = 2;
  }

  v16 = v2;
  v17 = v3;
  UIImageView.applyStyle(_:)(&v16);
  v14 = v16;
  v15 = v17;

  sub_1D10A4C44(v14, v15);
}

void sub_1D1304F50(void *a1)
{
  v2 = v1;
  v24.receiver = v2;
  v24.super_class = type metadata accessor for AccountIconView(0);
  objc_msgSendSuper2(&v24, sel_traitCollectionDidChange_, a1);
  if (a1)
  {
    [a1 displayScale];
    v5 = v4;
  }

  else
  {
    v5 = 0.0;
  }

  v6 = [v2 traitCollection];
  [v6 displayScale];
  v8 = v7;

  if (!a1 || v5 != v8)
  {
    v9 = &v2[qword_1EC60F5A0];
    if (*&v2[qword_1EC60F5A0 + 40] && (*v9 & 1) == 0)
    {
      v12 = *(v9 + 1);
      v13 = *(v9 + 2);
      v14 = *(v9 + 3);
      v15 = *(v9 + 8);
      v16 = v14 | v13;
      v17 = v16 | v12;
      if (v16)
      {
        v18 = 0;
      }

      else
      {
        v18 = v12 == 2;
      }

      v19 = 0x4032000000000000;
      if (v18)
      {
        v19 = 0x4028000000000000;
      }

      if (v12 == 1 && v16 == 0)
      {
        v21 = 0x4024000000000000;
      }

      else
      {
        v21 = v19;
      }

      if (!v17)
      {
        v21 = 0x401C000000000000;
      }

      if (v15)
      {
        v10 = v21;
      }

      else
      {
        v10 = v14;
      }

      v11 = 0;
    }

    else
    {
      v10 = 0;
      v11 = 2;
    }

    v22 = v10;
    v23 = v11;
    UIImageView.applyStyle(_:)(&v22);
    sub_1D10A4C44(v22, v23);
  }
}

void sub_1D13050AC(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = a1;
  sub_1D1304F50(a3);
}

id sub_1D1305118(char *a1, double a2, double a3, double a4, double a5)
{
  v10 = &a1[qword_1EC60F588];
  *(v10 + 1) = 0;
  *(v10 + 2) = 0;
  *v10 = 1;
  v10[24] = 1;
  v11 = qword_1EC60F590;
  *&a1[v11] = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) init];
  v12 = qword_1EC60F598;
  v13 = type metadata accessor for AccountIconViewData(0);
  (*(*(v13 - 8) + 56))(&a1[v12], 1, 1, v13);
  v14 = &a1[qword_1EC60F5A0];
  v15 = type metadata accessor for AccountIconView(0);
  *v14 = 0u;
  *(v14 + 1) = 0u;
  *(v14 + 2) = 0u;
  v17.receiver = a1;
  v17.super_class = v15;
  return objc_msgSendSuper2(&v17, sel_initWithFrame_, a2, a3, a4, a5);
}

id sub_1D130522C(void *a1)
{
  v3 = &v1[qword_1EC60F588];
  *(v3 + 1) = 0;
  *(v3 + 2) = 0;
  *v3 = 1;
  v3[24] = 1;
  v4 = qword_1EC60F590;
  *&v1[v4] = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) init];
  v5 = qword_1EC60F598;
  v6 = type metadata accessor for AccountIconViewData(0);
  (*(*(v6 - 8) + 56))(&v1[v5], 1, 1, v6);
  v7 = &v1[qword_1EC60F5A0];
  v8 = type metadata accessor for AccountIconView(0);
  *v7 = 0u;
  *(v7 + 1) = 0u;
  *(v7 + 2) = 0u;
  v11.receiver = v1;
  v11.super_class = v8;
  v9 = objc_msgSendSuper2(&v11, sel_initWithCoder_, a1);

  if (v9)
  {
  }

  return v9;
}

void sub_1D1305360()
{
  sub_1D13056E0(v0 + qword_1EC60F598);
  v1 = *(v0 + qword_1EC60F5A0 + 40);
}

id sub_1D13053B4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AccountIconView(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1D13053EC(uint64_t a1)
{
  sub_1D13056E0(a1 + qword_1EC60F598);
  v2 = *(a1 + qword_1EC60F5A0 + 40);
}

void sub_1D130546C()
{
  sub_1D13057BC(319, &qword_1EC60A710, type metadata accessor for AccountIconViewData);
  if (v0 <= 0x3F)
  {
    swift_initClassMetadata2();
  }
}

uint64_t sub_1D1305538(uint64_t a1)
{
  sub_1D13057BC(0, &qword_1EC60A710, type metadata accessor for AccountIconViewData);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v7 - v3;
  sub_1D1305758(a1, &v7 - v3);
  v5 = type metadata accessor for AccountIconViewData(0);
  (*(*(v5 - 8) + 56))(v4, 0, 1, v5);
  sub_1D1303C34(v4);
  return sub_1D13056E0(v4);
}

uint64_t sub_1D130566C()
{
  result = sub_1D138D5EC();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1D13056E0(uint64_t a1)
{
  sub_1D13057BC(0, &qword_1EC60A710, type metadata accessor for AccountIconViewData);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D1305758(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AccountIconViewData(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1D13057BC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

void sub_1D1305810()
{
  if (!qword_1EC60F5C8)
  {
    sub_1D13057BC(255, &qword_1EC60A710, type metadata accessor for AccountIconViewData);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC60F5C8);
    }
  }
}

uint64_t sub_1D1305890(uint64_t a1, uint64_t a2)
{
  sub_1D13057BC(0, &qword_1EC60A710, type metadata accessor for AccountIconViewData);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D1305910(uint64_t a1, uint64_t a2)
{
  sub_1D13057BC(0, &qword_1EC60A710, type metadata accessor for AccountIconViewData);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D1305990(uint64_t a1, uint64_t a2)
{
  sub_1D13057BC(0, &qword_1EC60A710, type metadata accessor for AccountIconViewData);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1D1305A10(__int128 *a1)
{
  sub_1D13057BC(0, &qword_1EC60A710, type metadata accessor for AccountIconViewData);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(*(v3 - 8) + 80) + 24) & ~*(*(v3 - 8) + 80));

  sub_1D13043B4(a1, v4, v5);
}

uint64_t sub_1D1305AA0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AccountIconViewData(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D1305B04(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for AccountIconViewData(0) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v1 + v7);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = *(v1 + v8);
  v13 = *(v1 + v8 + 8);
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_1D108077C;

  return sub_1D130477C(a1, v10, v11, v1 + v6, v9, v12, v13);
}

uint64_t sub_1D1305C48(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t static HealthRecordsViewRouter.navigateToHealthSummaryView()()
{
  v0[2] = sub_1D13905AC();
  v0[3] = sub_1D139059C();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_1D10AA380;

  return sub_1D130871C(0xD000000000000018, 0x80000001D13C8BC0);
}

HealthRecordsUI::CategoryViewReplayableSections_optional __swiftcall CategoryViewReplayableSections.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 0x2010003u >> (8 * rawValue);
  if (rawValue >= 4)
  {
    LOBYTE(v2) = 3;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_1D1305D98()
{
  v1 = *v0;
  sub_1D139177C();
  MEMORY[0x1D38870E0](v1 + 1);
  return sub_1D13917CC();
}

uint64_t sub_1D1305E10()
{
  v1 = *v0;
  sub_1D139177C();
  MEMORY[0x1D38870E0](v1 + 1);
  return sub_1D13917CC();
}

id SettingsViewController.replayWith(trace:)(uint64_t a1)
{
  if (*(a1 + 16) == 2)
  {
    return sub_1D112BACC();
  }

  else
  {
    return 0;
  }
}

id sub_1D1305E88(uint64_t a1)
{
  if (*(a1 + 16) == 2)
  {
    return sub_1D112BACC();
  }

  else
  {
    return 0;
  }
}

_BYTE *RecordCategoryViewController.replayWith(trace:)(uint64_t a1)
{
  if (*(a1 + 16) != 3)
  {
    return 0;
  }

  v1[OBJC_IVAR____TtC15HealthRecordsUI28RecordCategoryViewController_preferredSegment] = *a1;
  v2 = v1;
  return v1;
}

_BYTE *sub_1D1305EF0(uint64_t a1)
{
  if (*(a1 + 16) != 3)
  {
    return 0;
  }

  v1[OBJC_IVAR____TtC15HealthRecordsUI28RecordCategoryViewController_preferredSegment] = *a1;
  v2 = v1;
  return v1;
}

uint64_t static TabIdentifier.records(category:)@<X0>(uint64_t *a1@<X8>)
{
  v8 = sub_1D139024C();
  v9 = v2;
  MEMORY[0x1D3885C10](95, 0xE100000000000000);
  v3 = sub_1D13567F8();
  MEMORY[0x1D3885C10](v3);

  *a1 = v8;
  a1[1] = v9;
  v4 = *MEMORY[0x1E69A3580];
  v5 = sub_1D138DEEC();
  v6 = *(*(v5 - 8) + 104);

  return v6(a1, v4, v5);
}

id sub_1D1306000()
{
  if (qword_1EE069ED0 != -1)
  {
    swift_once();
  }

  v1 = qword_1EE06AA70;
  qword_1EC62FD58 = type metadata accessor for ViewControllerFactory();
  unk_1EC62FD60 = &protocol witness table for ViewControllerFactory;
  qword_1EC62FD40 = v1;

  return v1;
}

uint64_t static HealthRecordsViewRouter.showAllRecordsTimelineView(navigator:)(void *a1)
{
  v32 = a1;
  v1 = sub_1D138F0BC();
  v30 = *(v1 - 8);
  v31 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1D138DEEC();
  v34 = *(v4 - 8);
  v35 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v33 = (&v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = type metadata accessor for BrowseCategory();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC608E88 != -1)
  {
    swift_once();
  }

  v29 = v3;
  v9 = qword_1EC62FD58;
  v37 = unk_1EC62FD60;
  v36 = __swift_project_boxed_opaque_existential_1Tm(qword_1EC62FD40, qword_1EC62FD58);
  v10 = swift_storeEnumTagMultiPayload();
  if (qword_1EE06AF70 != -1)
  {
    v10 = swift_once();
  }

  v40 = *(qword_1EE06BB58 + OBJC_IVAR___HRProfileManager_lock);
  MEMORY[0x1EEE9AC00](v10);
  *(&v29 - 2) = v11;
  sub_1D138D96C();
  sub_1D106F934(0, &qword_1EE06B6B0);
  sub_1D1309750(&qword_1EE06B048, MEMORY[0x1E69A3B50]);

  sub_1D138ED0C();

  v12 = v38;
  v13 = (*(*(v37 + 16) + 8))(v8, v38, v9);

  sub_1D13097E0(v8, type metadata accessor for BrowseCategory);
  if (v13)
  {
    __swift_project_boxed_opaque_existential_1Tm(v32, v32[3]);
    swift_storeEnumTagMultiPayload();
    v38 = sub_1D139024C();
    v39 = v14;
    MEMORY[0x1D3885C10](95, 0xE100000000000000);
    v15 = sub_1D13567F8();
    MEMORY[0x1D3885C10](v15);

    v16 = v38;
    v17 = v39;
    sub_1D13097E0(v8, type metadata accessor for BrowseCategory);
    v19 = v33;
    v18 = v34;
    *v33 = v16;
    v19[1] = v17;
    v20 = v35;
    v21 = (*(v18 + 104))(v19, *MEMORY[0x1E69A3580], v35);
    MEMORY[0x1EEE9AC00](v21);
    *(&v29 - 2) = v13;
    sub_1D138E03C();
    v23 = v22;

    return (*(v18 + 8))(v19, v20);
  }

  else
  {
    v25 = v29;
    sub_1D138F07C();
    v26 = sub_1D138F0AC();
    v27 = sub_1D13907FC();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_1D101F000, v26, v27, "Unable to present all health records screen", v28, 2u);
      MEMORY[0x1D38882F0](v28, -1, -1);
    }

    return (*(v30 + 8))(v25, v31);
  }
}

uint64_t static HealthRecordsViewRouter.showTimelineView(forCategory:preferredSegment:navigator:)(uint64_t a1, unsigned __int8 *a2, void *a3)
{
  v47 = a3;
  v41 = type metadata accessor for BrowseCategory();
  MEMORY[0x1EEE9AC00](v41);
  v40 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v42 = &v39 - v7;
  v8 = sub_1D138F0BC();
  v44 = *(v8 - 8);
  v45 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v43 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1D138DEEC();
  v48 = *(v10 - 8);
  v49 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v12 = (&v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v46 = *a2;
  if (qword_1EC608E88 != -1)
  {
    swift_once();
  }

  v13 = qword_1EC62FD58;
  v50 = unk_1EC62FD60;
  v51 = a1;
  v14 = __swift_project_boxed_opaque_existential_1Tm(qword_1EC62FD40, qword_1EC62FD58);
  if (qword_1EE06AF70 != -1)
  {
    v14 = swift_once();
  }

  v54 = *(qword_1EE06BB58 + OBJC_IVAR___HRProfileManager_lock);
  MEMORY[0x1EEE9AC00](v14);
  *(&v39 - 2) = v15;
  sub_1D138D96C();
  sub_1D106F934(0, &qword_1EE06B6B0);
  sub_1D1309750(&qword_1EE06B048, MEMORY[0x1E69A3B50]);

  sub_1D138ED0C();

  v17 = v51;
  v16 = v52;
  v18 = (*(*(v50 + 16) + 8))(v51, v52, v13);

  if (v18)
  {
    type metadata accessor for RecordCategoryViewController();
    v19 = swift_dynamicCastClass();
    if (v19)
    {
      *(v19 + OBJC_IVAR____TtC15HealthRecordsUI28RecordCategoryViewController_preferredSegment) = v46;
    }

    __swift_project_boxed_opaque_existential_1Tm(v47, v47[3]);
    v52 = sub_1D139024C();
    v53 = v20;
    MEMORY[0x1D3885C10](95, 0xE100000000000000);
    v21 = sub_1D13567F8();
    MEMORY[0x1D3885C10](v21);

    v22 = v53;
    *v12 = v52;
    v12[1] = v22;
    v24 = v48;
    v23 = v49;
    v25 = (*(v48 + 104))(v12, *MEMORY[0x1E69A3580], v49);
    MEMORY[0x1EEE9AC00](v25);
    *(&v39 - 2) = v18;
    sub_1D138E03C();
    v27 = v26;

    return (*(v24 + 8))(v12, v23);
  }

  else
  {
    v29 = v43;
    sub_1D138F07C();
    v30 = v42;
    sub_1D10F3604(v17, v42);
    v31 = sub_1D138F0AC();
    v32 = sub_1D13907FC();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v52 = v34;
      *v33 = 136446210;
      sub_1D10F3604(v30, v40);
      v35 = sub_1D139020C();
      v37 = v36;
      sub_1D13097E0(v30, type metadata accessor for BrowseCategory);
      v38 = sub_1D11DF718(v35, v37, &v52);

      *(v33 + 4) = v38;
      _os_log_impl(&dword_1D101F000, v31, v32, "Unable to present Category room for kind: %{public}s", v33, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v34);
      MEMORY[0x1D38882F0](v34, -1, -1);
      MEMORY[0x1D38882F0](v33, -1, -1);
    }

    else
    {

      sub_1D13097E0(v30, type metadata accessor for BrowseCategory);
    }

    return (*(v44 + 8))(v29, v45);
  }
}

uint64_t static HealthRecordsViewRouter.showUDCLabsView(navigator:)(void *a1)
{
  v30 = a1;
  v1 = sub_1D138F0BC();
  v28 = *(v1 - 8);
  v29 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v27 = &v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1D138DEEC();
  v31 = *(v3 - 8);
  v32 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = (&v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = type metadata accessor for BrowseCategory();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v8 = 2;
  v9 = swift_storeEnumTagMultiPayload();
  if (qword_1EE069ED0 != -1)
  {
    v9 = swift_once();
  }

  if (qword_1EE06AF70 != -1)
  {
    v9 = swift_once();
  }

  v35 = *(qword_1EE06BB58 + OBJC_IVAR___HRProfileManager_lock);
  MEMORY[0x1EEE9AC00](v9);
  *(&v26 - 2) = v10;
  sub_1D138D96C();
  sub_1D106F934(0, &qword_1EE06B6B0);
  sub_1D1309750(&qword_1EE06B048, MEMORY[0x1E69A3B50]);

  sub_1D138ED0C();

  v11 = v33;
  v12 = sub_1D1297030(v8, v33);

  if (v12)
  {
    __swift_project_boxed_opaque_existential_1Tm(v30, v30[3]);
    v33 = sub_1D139024C();
    v34 = v13;
    MEMORY[0x1D3885C10](95, 0xE100000000000000);
    v14 = sub_1D13567F8();
    MEMORY[0x1D3885C10](v14);

    v15 = v34;
    *v5 = v33;
    v5[1] = v15;
    v17 = v31;
    v16 = v32;
    v18 = (*(v31 + 104))(v5, *MEMORY[0x1E69A3580], v32);
    MEMORY[0x1EEE9AC00](v18);
    *(&v26 - 2) = v12;
    sub_1D138E03C();
    v20 = v19;

    (*(v17 + 8))(v5, v16);
  }

  else
  {
    v21 = v27;
    sub_1D138F07C();
    v22 = sub_1D138F0AC();
    v23 = sub_1D13907FC();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_1D101F000, v22, v23, "Unable to present UDC Labs category room", v24, 2u);
      MEMORY[0x1D38882F0](v24, -1, -1);
    }

    (*(v28 + 8))(v21, v29);
  }

  return sub_1D13097E0(v8, type metadata accessor for BrowseCategory);
}

void static HealthRecordsViewRouter.showOnboarding(with:profile:from:)(uint64_t a1@<X0>, void *a2@<X1>, Swift::tuple_viewController_UIViewController_shouldNotDismiss_Bool *a3@<X8>)
{
  UIViewController.hrui_presentationCapableViewController()(a3);
  v6 = v5;
  v7 = [a2 onboardingManager];
  sub_1D10993A0(a1);
  v8 = sub_1D138FFEC();

  [v7 onboardWithActivity:v8 presentingViewController:v6];
}

uint64_t static HealthRecordsViewRouter.showAccountDetailViewController(navigator:for:from:profile:sourceIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[24] = a5;
  v6[25] = a6;
  v6[22] = a3;
  v6[23] = a4;
  v6[20] = a1;
  v6[21] = a2;
  v7 = sub_1D138D5EC();
  v6[26] = v7;
  v6[27] = *(v7 - 8);
  v6[28] = swift_task_alloc();
  v8 = sub_1D138F0BC();
  v6[29] = v8;
  v6[30] = *(v8 - 8);
  v6[31] = swift_task_alloc();
  v6[32] = type metadata accessor for BrowseCategory();
  v6[33] = swift_task_alloc();
  v9 = sub_1D138DEEC();
  v6[34] = v9;
  v6[35] = *(v9 - 8);
  v6[36] = swift_task_alloc();
  sub_1D13905AC();
  v6[37] = sub_1D139059C();
  v11 = sub_1D139055C();
  v6[38] = v11;
  v6[39] = v10;

  return MEMORY[0x1EEE6DFA0](sub_1D13072C4, v11, v10);
}

uint64_t sub_1D13072C4@<X0>(Swift::tuple_viewController_UIViewController_shouldNotDismiss_Bool *a1@<X8>)
{
  v2 = v1[23];
  UIViewController.hrui_presentationCapableViewController()(a1);
  v1[40] = v3;
  v4 = [v2 clinicalAccountStore];
  v1[41] = v4;
  v5 = sub_1D138D5AC();
  v1[42] = v5;
  v1[2] = v1;
  v1[7] = v1 + 18;
  v1[3] = sub_1D1307448;
  v6 = swift_continuation_init();
  sub_1D1309A90(0, &qword_1EC60E258, &qword_1EC609A00, 0x1E69A3F00, sub_1D106F934);
  v1[17] = v7;
  v1[10] = MEMORY[0x1E69E9820];
  v1[11] = 1107296256;
  v1[12] = sub_1D1121DF8;
  v1[13] = &block_descriptor_67;
  v1[14] = v6;
  [v4 fetchAccountWithIdentifier:v5 completion:v1 + 10];

  return MEMORY[0x1EEE6DEC8](v1 + 2);
}

uint64_t sub_1D1307448()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 344) = v2;
  v3 = *(v1 + 312);
  v4 = *(v1 + 304);
  if (v2)
  {
    v5 = sub_1D130784C;
  }

  else
  {
    v5 = sub_1D1307578;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1D1307578()
{
  v29 = v0;
  v1 = v0[41];
  v2 = v0[42];

  v26 = v0[18];

  if (qword_1EC608E88 != -1)
  {
    swift_once();
  }

  v3 = v0[35];
  v4 = v0[36];
  v5 = v0[33];
  v24 = v0[34];
  v25 = v0[40];
  v7 = v0[24];
  v6 = v0[25];
  v8 = v0[23];
  v9 = v0[20];
  v10 = qword_1EC62FD58;
  v11 = unk_1EC62FD60;
  __swift_project_boxed_opaque_existential_1Tm(qword_1EC62FD40, qword_1EC62FD58);
  LOBYTE(v27) = 0;
  v12 = (*(*(v11 + 8) + 32))(v26, v8, &v27, v7, v6, 1, v10);
  __swift_project_boxed_opaque_existential_1Tm(v9, v9[3]);
  sub_1D107D12C();
  v14 = (v5 + *(v13 + 48));
  v15 = [v26 identifier];
  sub_1D138D5CC();

  *v14 = 0;
  v14[1] = 0xE000000000000000;
  swift_storeEnumTagMultiPayload();
  v27 = sub_1D139024C();
  v28 = v16;
  MEMORY[0x1D3885C10](95, 0xE100000000000000);
  v17 = sub_1D13567F8();
  MEMORY[0x1D3885C10](v17);

  v18 = v27;
  v19 = v28;
  sub_1D13097E0(v5, type metadata accessor for BrowseCategory);
  *v4 = v18;
  v4[1] = v19;
  (*(v3 + 104))(v4, *MEMORY[0x1E69A3580], v24);
  *(swift_task_alloc() + 16) = v12;
  sub_1D138E03C();
  v21 = v20;

  (*(v3 + 8))(v4, v24);

  v22 = v0[1];

  return v22();
}

id sub_1D130784C()
{
  v52 = v0;
  v1 = v0;
  v4 = v0 + 42;
  v2 = v0[42];
  v3 = v4[1];
  v5 = v1[41];
  v7 = v1[27];
  v6 = v1[28];
  v8 = v1[26];
  v9 = v1[21];
  swift_willThrow();

  sub_1D138F06C();
  (*(v7 + 16))(v6, v9, v8);
  v10 = v3;
  v11 = sub_1D138F0AC();
  v12 = sub_1D13907FC();

  if (os_log_type_enabled(v11, v12))
  {
    v45 = v1[43];
    v47 = v1[30];
    v13 = v1[28];
    v48 = v1[29];
    v49 = v1[31];
    v14 = v1[26];
    v15 = v1[27];
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v50 = v46;
    *v16 = 136315650;
    v1[19] = &type metadata for HealthRecordsViewRouter;
    sub_1D1309798();
    v18 = sub_1D13901EC();
    v20 = sub_1D11DF718(v18, v19, &v50);

    *(v16 + 4) = v20;
    *(v16 + 12) = 2080;
    sub_1D1309750(&qword_1EC60D1C0, MEMORY[0x1E69695A8]);
    v21 = sub_1D13915CC();
    v23 = v22;
    (*(v15 + 8))(v13, v14);
    v24 = sub_1D11DF718(v21, v23, &v50);

    *(v16 + 14) = v24;
    *(v16 + 22) = 2112;
    v25 = v45;
    v26 = _swift_stdlib_bridgeErrorToNSError();
    *(v16 + 24) = v26;
    *v17 = v26;
    _os_log_impl(&dword_1D101F000, v11, v12, "%s failed to fetch account with ID %s: %@", v16, 0x20u);
    sub_1D13097E0(v17, sub_1D121C358);
    MEMORY[0x1D38882F0](v17, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x1D38882F0](v46, -1, -1);
    MEMORY[0x1D38882F0](v16, -1, -1);

    (*(v47 + 8))(v49, v48);
  }

  else
  {
    v28 = v1[30];
    v27 = v1[31];
    v29 = v1[28];
    v30 = v1[29];
    v31 = v1[26];
    v32 = v1[27];

    (*(v32 + 8))(v29, v31);
    (*(v28 + 8))(v27, v30);
  }

  result = [objc_opt_self() sharedBehavior];
  if (result)
  {
    v34 = result;

    v35 = [v34 isAppleInternalInstall];

    v36 = v1[43];
    v37 = v1[40];
    if (v35)
    {
      v38 = objc_opt_self();
      v39 = sub_1D139012C();
      v50 = 0;
      v51 = 0xE000000000000000;
      sub_1D13911EC();

      v50 = 0xD000000000000017;
      v51 = 0x80000001D13CC2F0;
      sub_1D1309750(&qword_1EC60D1C0, MEMORY[0x1E69695A8]);
      v40 = sub_1D13915CC();
      MEMORY[0x1D3885C10](v40);

      v41 = sub_1D139012C();

      v42 = sub_1D138D2AC();
      v43 = [v38 basicAlertControllerWithTitle:v39 message:v41 internalError:v42];

      [v37 presentViewController:v43 animated:1 completion:0];
    }

    else
    {
    }

    v44 = v1[1];

    return v44();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void static HealthRecordsViewRouter.showAPIAuthorizationSettingsView(forBundleIdentifier:from:)(uint64_t a1, uint64_t a2, void *a3)
{
  v11 = a1;
  if (qword_1EE06AF70 != -1)
  {
    a1 = swift_once();
  }

  aBlock[6] = *(qword_1EE06BB58 + OBJC_IVAR___HRProfileManager_lock);
  MEMORY[0x1EEE9AC00](a1);
  sub_1D138D96C();
  sub_1D106F934(0, &qword_1EE06B6B0);
  sub_1D1309750(&qword_1EE06B048, MEMORY[0x1E69A3B50]);

  sub_1D138ED0C();

  v5 = aBlock[0];
  v6 = [aBlock[0] clinicalAccountStore];
  v7 = swift_allocObject();
  *(v7 + 16) = aBlock[0];
  *(v7 + 24) = v11;
  *(v7 + 32) = a2;
  *(v7 + 40) = a3;
  aBlock[4] = sub_1D1309840;
  aBlock[5] = v7;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D1308160;
  aBlock[3] = &block_descriptor_7_0;
  v8 = _Block_copy(aBlock);
  v9 = v5;

  v10 = a3;

  [v6 shouldShowHealthRecordsSectionWithCompletion_];
  _Block_release(v8);
}

void sub_1D1307FB0(char a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, void *a6)
{
  if (a1)
  {
    v10 = objc_allocWithZone(type metadata accessor for SettingsViewController());
    v11 = SettingsViewController.init(with:)(a3);
    sub_1D1309998();
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_1D139E700;
    *(v12 + 32) = a4;
    *(v12 + 40) = a5;
    *(v12 + 48) = 2;
    v13 = objc_allocWithZone(MEMORY[0x1E69A4420]);

    v14 = v11;
    v15 = [v13 initWithRootViewController_];
    v16 = swift_allocObject();
    v16[2] = v12;
    v16[3] = v14;
    v16[4] = &protocol witness table for SettingsViewController;
    v19[4] = sub_1D13099E8;
    v19[5] = v16;
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 1107296256;
    v19[2] = sub_1D10CBD3C;
    v19[3] = &block_descriptor_29_0;
    v17 = _Block_copy(v19);
    v18 = v14;

    [a6 presentViewController:v15 animated:1 completion:v17];
    _Block_release(v17);
  }
}

uint64_t sub_1D1308160(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);

  v5(a2, a3);
}

uint64_t sub_1D13081C0(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *__swift_project_boxed_opaque_existential_1Tm((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_1D10922EC();
    swift_allocError();
    *v6 = a3;
    v7 = a3;

    return swift_continuation_throwingResumeWithError();
  }

  else
  {
    if (a2)
    {
      v9 = sub_1D138FFFC();
    }

    else
    {
      v9 = 0;
    }

    **(*(v5 + 64) + 40) = v9;

    return swift_continuation_throwingResume();
  }
}

void sub_1D13082B0(char a1, void *a2, ValueMetadata *a3, uint64_t a4)
{
  v8 = sub_1D138F0BC();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a1 & 1) == 0)
  {
    sub_1D138F07C();

    v12 = a2;
    v13 = sub_1D138F0AC();
    v14 = sub_1D13907FC();

    if (os_log_type_enabled(v13, v14))
    {
      v30 = v14;
      v15 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v33 = v29;
      *v15 = 136315650;
      v31 = &type metadata for HealthRecordsViewRouter;
      sub_1D1309798();
      v16 = sub_1D13901EC();
      v18 = sub_1D11DF718(v16, v17, &v33);

      *(v15 + 4) = v18;
      *(v15 + 12) = 2080;
      v31 = a3;
      v32 = a4;

      sub_1D13916AC();
      v19 = HKSensitiveLogItem();
      swift_unknownObjectRelease();
      sub_1D139101C();
      swift_unknownObjectRelease();
      v20 = sub_1D13901EC();
      v22 = sub_1D11DF718(v20, v21, &v33);

      *(v15 + 14) = v22;
      *(v15 + 22) = 2112;
      if (a2)
      {
        v23 = a2;
        v24 = _swift_stdlib_bridgeErrorToNSError();
        v25 = v24;
      }

      else
      {
        v24 = 0;
        v25 = 0;
      }

      *(v15 + 24) = v24;
      v26 = v28;
      *v28 = v25;
      _os_log_impl(&dword_1D101F000, v13, v30, "%s failed to open application with bundle ID %s: %@", v15, 0x20u);
      sub_1D13097E0(v26, sub_1D121C358);
      MEMORY[0x1D38882F0](v26, -1, -1);
      v27 = v29;
      swift_arrayDestroy();
      MEMORY[0x1D38882F0](v27, -1, -1);
      MEMORY[0x1D38882F0](v15, -1, -1);
    }

    (*(v9 + 8))(v11, v8);
  }
}

void sub_1D13085A8(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v7 = *(a1 + 32);
    v6 = *(a1 + 40);
    v5 = a1 + 32;
    v8 = *(a1 + 48);
    v9 = a2;
    v10 = v3 + 1;
    v11 = 1;
LABEL_3:
    v16 = v11;
    ObjectType = swift_getObjectType();
    v18[0] = v7;
    v18[1] = v6;
    v19 = v8;
    v13 = *(a3 + 8);
    sub_1D1309A0C(v7, v6, v8);
    v17 = v13(v18, ObjectType, a3);

    sub_1D1309A24(v7, v6, v8);
    v14 = v17;
    if (v17)
    {
      swift_getObjectType();
      a3 = swift_conformsToProtocol2();
      if (a3)
      {
        v14 = v17;
      }

      else
      {

        v14 = 0;
      }
    }

    else
    {
      a3 = 0;
    }

    v11 = v16;
    while (v10 != ++v11)
    {
      if (v14)
      {
        v15 = v5 + 24 * v16;
        v8 = *(v15 + 16);
        v7 = *v15;
        v6 = *(v15 + 8);
        v9 = v14;
        goto LABEL_3;
      }
    }
  }
}

uint64_t sub_1D130871C(uint64_t a1, uint64_t a2)
{
  v2[19] = a1;
  v2[20] = a2;
  sub_1D1309A3C(0, &qword_1EC60A5F0, MEMORY[0x1E6968FB0]);
  v2[21] = swift_task_alloc();
  v3 = sub_1D138D39C();
  v2[22] = v3;
  v2[23] = *(v3 - 8);
  v2[24] = swift_task_alloc();
  v4 = sub_1D138F0BC();
  v2[25] = v4;
  v2[26] = *(v4 - 8);
  v2[27] = swift_task_alloc();
  v2[28] = swift_task_alloc();
  sub_1D13905AC();
  v2[29] = sub_1D139059C();
  v6 = sub_1D139055C();
  v2[30] = v6;
  v2[31] = v5;

  return MEMORY[0x1EEE6DFA0](sub_1D13088C0, v6, v5);
}

uint64_t sub_1D13088C0()
{
  v47 = v0;
  sub_1D138F07C();

  v1 = sub_1D138F0AC();
  v2 = sub_1D139081C();

  v3 = os_log_type_enabled(v1, v2);
  v4 = v0[28];
  v5 = v0[25];
  v6 = v0[26];
  if (v3)
  {
    v8 = v0[19];
    v7 = v0[20];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v45 = v10;
    *v9 = 136315394;
    *(v9 + 4) = sub_1D11DF718(0xD000000000000017, 0x80000001D13B0560, &v45);
    *(v9 + 12) = 2080;
    *(v9 + 14) = sub_1D11DF718(v8, v7, &v45);
    _os_log_impl(&dword_1D101F000, v1, v2, "%s attempting to navigate user to %s", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D38882F0](v10, -1, -1);
    MEMORY[0x1D38882F0](v9, -1, -1);
  }

  v11 = *(v6 + 8);
  v11(v4, v5);
  v0[32] = v11;
  v12 = v0[22];
  v13 = v0[23];
  v14 = v0[21];
  sub_1D138D38C();
  if ((*(v13 + 48))(v14, 1, v12) == 1)
  {
    v16 = v0[20];
    v15 = v0[21];
    v17 = v0[19];

    sub_1D124CC84(v15);
    v18 = objc_opt_self();
    v45 = 0;
    v46 = 0xE000000000000000;
    sub_1D13911EC();

    v45 = 0xD00000000000001BLL;
    v46 = 0x80000001D13CC320;
    MEMORY[0x1D3885C10](v17, v16);
    MEMORY[0x1D3885C10](96, 0xE100000000000000);
    v19 = sub_1D139012C();

    v20 = [v18 hk:3 error:v19 description:?];

    swift_willThrow();
    sub_1D138F07C();

    v21 = v20;
    v22 = sub_1D138F0AC();
    v23 = sub_1D13907FC();

    v24 = os_log_type_enabled(v22, v23);
    v25 = v0[32];
    v26 = v0[27];
    v27 = v0[25];
    if (v24)
    {
      v44 = v0[32];
      v28 = v0[19];
      v29 = v0[20];
      v43 = v0[27];
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v42 = v27;
      v32 = swift_slowAlloc();
      v45 = v32;
      *v30 = 136315650;
      *(v30 + 4) = sub_1D11DF718(0xD000000000000017, 0x80000001D13B0560, &v45);
      *(v30 + 12) = 2080;
      *(v30 + 14) = sub_1D11DF718(v28, v29, &v45);
      *(v30 + 22) = 2112;
      v33 = v20;
      v34 = _swift_stdlib_bridgeErrorToNSError();
      *(v30 + 24) = v34;
      *v31 = v34;
      _os_log_impl(&dword_1D101F000, v22, v23, "[%s] error creating URL from %s: %@", v30, 0x20u);
      sub_1D13097E0(v31, sub_1D121C358);
      MEMORY[0x1D38882F0](v31, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x1D38882F0](v32, -1, -1);
      MEMORY[0x1D38882F0](v30, -1, -1);

      v44(v43, v42);
    }

    else
    {

      v25(v26, v27);
    }

    v40 = v0[1];

    return v40();
  }

  else
  {
    (*(v0[23] + 32))(v0[24], v0[21], v0[22]);
    v35 = [objc_opt_self() defaultWorkspace];
    v0[33] = v35;
    if (v35)
    {
      v36 = v35;
      v37 = sub_1D138D30C();
      v0[34] = v37;
      v0[2] = v0;
      v0[7] = v0 + 18;
      v0[3] = sub_1D1308F04;
      v38 = swift_continuation_init();
      sub_1D1309A90(0, &qword_1EC60F5E8, &unk_1EC60F5F0, sub_1D11E6B68, sub_1D1309A3C);
      v0[17] = v39;
      v0[10] = MEMORY[0x1E69E9820];
      v0[11] = 1107296256;
      v0[12] = sub_1D13081C0;
      v0[13] = &block_descriptor_32_0;
      v0[14] = v38;
      [v36 openURL:v37 configuration:0 completionHandler:v0 + 10];
      v35 = v0 + 2;
    }

    else
    {
      __break(1u);
    }

    return MEMORY[0x1EEE6DEC8](v35);
  }
}

uint64_t sub_1D1308F04()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 280) = v2;
  v3 = *(v1 + 248);
  v4 = *(v1 + 240);
  if (v2)
  {
    v5 = sub_1D1309104;
  }

  else
  {
    v5 = sub_1D1309034;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1D1309034()
{
  v2 = v0[33];
  v1 = v0[34];
  v4 = v0[23];
  v3 = v0[24];
  v5 = v0[22];

  (*(v4 + 8))(v3, v5);

  v6 = v0[1];

  return v6();
}

uint64_t sub_1D1309104()
{
  v27 = v0;
  v1 = v0[34];
  v2 = v0[33];
  v4 = v0[23];
  v3 = v0[24];
  v5 = v0[22];

  swift_willThrow();
  (*(v4 + 8))(v3, v5);

  v6 = v0[35];
  sub_1D138F07C();

  v7 = v6;
  v8 = sub_1D138F0AC();
  v9 = sub_1D13907FC();

  v10 = os_log_type_enabled(v8, v9);
  v11 = v0[32];
  v12 = v0[27];
  v13 = v0[25];
  if (v10)
  {
    v25 = v0[32];
    v14 = v0[19];
    v15 = v0[20];
    v24 = v0[27];
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v23 = v13;
    v18 = swift_slowAlloc();
    v26[0] = v18;
    *v16 = 136315650;
    *(v16 + 4) = sub_1D11DF718(0xD000000000000017, 0x80000001D13B0560, v26);
    *(v16 + 12) = 2080;
    *(v16 + 14) = sub_1D11DF718(v14, v15, v26);
    *(v16 + 22) = 2112;
    v19 = v6;
    v20 = _swift_stdlib_bridgeErrorToNSError();
    *(v16 + 24) = v20;
    *v17 = v20;
    _os_log_impl(&dword_1D101F000, v8, v9, "[%s] error creating URL from %s: %@", v16, 0x20u);
    sub_1D13097E0(v17, sub_1D121C358);
    MEMORY[0x1D38882F0](v17, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x1D38882F0](v18, -1, -1);
    MEMORY[0x1D38882F0](v16, -1, -1);

    v25(v24, v23);
  }

  else
  {

    v11(v12, v13);
  }

  v21 = v0[1];

  return v21();
}

void _s15HealthRecordsUI0aB10ViewRouterV12navigateBack2toySS_tFZ_0(ValueMetadata *a1, uint64_t a2)
{
  v4 = sub_1D138F0BC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D138F07C();

  v8 = sub_1D138F0AC();
  v9 = sub_1D139081C();

  v10 = os_log_type_enabled(v8, v9);
  v30 = a1;
  if (v10)
  {
    v11 = swift_slowAlloc();
    v29 = v4;
    v12 = a1;
    v13 = v11;
    v14 = swift_slowAlloc();
    *v13 = 136315394;
    v31 = v14;
    aBlock = &type metadata for HealthRecordsViewRouter;
    sub_1D1309798();
    v15 = sub_1D13901EC();
    v17 = sub_1D11DF718(v15, v16, &v31);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2080;
    aBlock = v12;
    v33 = a2;

    sub_1D13916AC();
    v18 = HKSensitiveLogItem();
    swift_unknownObjectRelease();
    sub_1D139101C();
    swift_unknownObjectRelease();
    v19 = sub_1D13901EC();
    v21 = sub_1D11DF718(v19, v20, &v31);

    *(v13 + 14) = v21;
    _os_log_impl(&dword_1D101F000, v8, v9, "%s will redirect back to source app %s", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D38882F0](v14, -1, -1);
    MEMORY[0x1D38882F0](v13, -1, -1);

    (*(v5 + 8))(v7, v29);
  }

  else
  {

    (*(v5 + 8))(v7, v4);
  }

  v22 = [objc_opt_self() defaultWorkspace];
  if (v22)
  {
    v23 = v22;
    v24 = v30;
    v25 = sub_1D139012C();
    v26 = swift_allocObject();
    *(v26 + 16) = v24;
    *(v26 + 24) = a2;
    v36 = sub_1D1309B0C;
    v37 = v26;
    aBlock = MEMORY[0x1E69E9820];
    v33 = 1107296256;
    v34 = sub_1D112A218;
    v35 = &block_descriptor_38_2;
    v27 = _Block_copy(&aBlock);

    [v23 openApplicationWithBundleIdentifier:v25 usingConfiguration:0 completionHandler:v27];
    _Block_release(v27);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1D1309750(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1D1309798()
{
  result = qword_1EC60F5D0;
  if (!qword_1EC60F5D0)
  {
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_1EC60F5D0);
  }

  return result;
}

uint64_t sub_1D13097E0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1D1309850()
{
  result = qword_1EC60F5D8;
  if (!qword_1EC60F5D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60F5D8);
  }

  return result;
}

uint64_t sub_1D13098EC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 17))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 16);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1D1309934(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
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

void sub_1D1309998()
{
  if (!qword_1EC60F5E0)
  {
    v0 = sub_1D13915DC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC60F5E0);
    }
  }
}

uint64_t block_copy_helper_27_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1D1309A0C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 == 2)
  {
  }

  return result;
}

uint64_t sub_1D1309A24(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 == 2)
  {
  }

  return result;
}

void sub_1D1309A3C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

void sub_1D1309A90(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    a5(255, a3, a4);
    sub_1D10922EC();
    v6 = sub_1D139061C();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_1D1309B3C(uint64_t result)
{
  v2 = *(v1 + 80);
  *(v1 + 80) = result;
  if (!result)
  {
    if (!v2)
    {
      return result;
    }

    goto LABEL_6;
  }

  if (!v2 || (v3 = , sub_1D10E3678(v3, v2), v5 = v4, , (v5 & 1) == 0))
  {
LABEL_6:
    sub_1D1309BC0();
  }
}

void sub_1D1309BC0()
{
  v1 = v0[3];
  v41 = v0[4];
  v44 = *(v0 + 40);
  v2 = v0[7];
  v45 = v0[8];
  v46 = v0[6];
  v3 = v0[10];
  v4 = v0[2];
  v48 = MEMORY[0x1E69E7CC0];
  v42 = v1;
  if (v1 >> 62)
  {
    goto LABEL_50;
  }

  v5 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:

  v6 = MEMORY[0x1E69E7CC0];
  if (v5)
  {
    v37 = v4;
    v38 = v0;
    v7 = 0;
    v4 = v42;
    v43 = v2 & 0xC000000000000001;
    v39 = v2;
    v40 = *MEMORY[0x1E696B718];
    while (1)
    {
      if ((v42 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x1D3886B70](v7, v4);
      }

      else
      {
        if (v7 >= *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_49;
        }

        v8 = *(v4 + 8 * v7 + 32);
      }

      v2 = v8;
      v9 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        __break(1u);
LABEL_49:
        __break(1u);
LABEL_50:
        v5 = sub_1D13910DC();
        goto LABEL_3;
      }

      if ((v44 & 1) == 0)
      {
        v10 = objc_opt_self();
        v11 = [objc_allocWithZone(MEMORY[0x1E696C020]) initWithRawIdentifier_];
        v12 = [v10 predicateForSamplesWithConceptIdentifier:v11 keyPath:v40];

        MEMORY[0x1D3885D90]();
        if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1D13904BC();
        }

        sub_1D13904FC();
      }

      if (v46)
      {
        v13 = objc_opt_self();
        v14 = v46;
        v15 = [v13 predicateForMedicalRecordsAssociatedWithMedicalUserDomainConcept_];
        MEMORY[0x1D3885D90]();
        if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1D13904BC();
        }

        sub_1D13904FC();

        v4 = v42;
      }

      if (v43)
      {
        v16 = v2;
        v17 = sub_1D139137C();

        if (!v17)
        {
          goto LABEL_27;
        }

        sub_1D106F934(0, &qword_1EE06B790);
        swift_dynamicCast();
        v18 = v47;
        if (!v47)
        {
          goto LABEL_27;
        }
      }

      else
      {
        if (!*(v39 + 16))
        {
          goto LABEL_27;
        }

        v19 = sub_1D129DF14(v2);
        if ((v20 & 1) == 0)
        {
          goto LABEL_27;
        }

        v18 = *(*(v39 + 56) + 8 * v19);
        if (!v18)
        {
          goto LABEL_27;
        }
      }

      v21 = v18;
      MEMORY[0x1D3885D90]();
      if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1D13904BC();
      }

      sub_1D13904FC();

LABEL_27:
      if (v45)
      {
        v22 = v45;
        MEMORY[0x1D3885D90]();
        if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1D13904BC();
        }

        sub_1D13904FC();
      }

      if (!v3)
      {
        goto LABEL_42;
      }

      if ((v3 & 0xC000000000000001) != 0)
      {
        v23 = v2;
        v24 = sub_1D139137C();

        if (v24)
        {
          sub_1D106F934(0, &qword_1EE06B790);
          swift_dynamicCast();
          v25 = v47;
          if (v47)
          {
            goto LABEL_39;
          }
        }
      }

      else if (*(v3 + 16))
      {
        v26 = sub_1D129DF14(v2);
        if (v27)
        {
          v25 = *(*(v3 + 56) + 8 * v26);
          if (v25)
          {
LABEL_39:
            v28 = v25;
            MEMORY[0x1D3885D90]();
            if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_1D13904BC();
            }

            sub_1D13904FC();
          }
        }
      }

LABEL_42:
      sub_1D106F934(0, &qword_1EE06B790);
      v29 = sub_1D139044C();

      v30 = [objc_opt_self() andPredicateWithSubpredicates_];

      [objc_allocWithZone(MEMORY[0x1E696C388]) initWithSampleType:v2 predicate:v30];
      v0 = &v48;
      MEMORY[0x1D3885D90]();
      if (*((v48 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v48 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v2 = *((v48 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_1D13904BC();
      }

      sub_1D13904FC();
      ++v7;
      if (v9 == v5)
      {
        v4 = v37;
        v0 = v38;
        break;
      }
    }
  }

  sub_1D106F424();
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_1D139E810;
  *(v31 + 32) = [objc_allocWithZone(MEMORY[0x1E696AEB0]) initWithKey:*MEMORY[0x1E696B9B8] ascending:0];
  v32 = objc_allocWithZone(MEMORY[0x1E696C2A8]);
  sub_1D106F934(0, &qword_1EE06A630);
  v33 = sub_1D139044C();

  sub_1D106F934(0, &qword_1EE06B578);
  v34 = sub_1D139044C();

  v35 = [v32 initWithQueryDescriptors:v33 sortDescriptors:v34 followingAnchor:0 upToAndIncludingAnchor:0 distinctByKeyPaths:0 bufferSize:15 limit:0 healthStore:v4];

  v36 = v0[11];
  v0[11] = v35;

  *(v0 + 96) = 0;
}

uint64_t sub_1D130A29C()
{
  v1[3] = v0;
  v2 = type metadata accessor for TimelineRecord();
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D130A35C, 0, 0);
}

uint64_t sub_1D130A35C()
{
  v1 = *(v0[3] + 72);
  if (v1)
  {
    v2 = v1 & 0xFFFFFFFFFFFFFF8;
    if (v1 >> 62)
    {
      goto LABEL_21;
    }

    for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1D13910DC())
    {
      v4 = 0;
      v20 = v0[4];
      v21 = v0[5];
      v24 = v1 & 0xC000000000000001;
      v5 = MEMORY[0x1E69E7CC0];
      v22 = v2;
      v23 = v1;
      while (1)
      {
        if (v24)
        {
          v6 = MEMORY[0x1D3886B70](v4, v1);
        }

        else
        {
          if (v4 >= *(v2 + 16))
          {
            goto LABEL_20;
          }

          v6 = *(v1 + 8 * v4 + 32);
        }

        v7 = v6;
        v8 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          break;
        }

        v9 = v0[6];
        v10 = [v6 sortDate];
        v11 = [v10 date];

        sub_1D138D52C();
        *(v9 + *(v20 + 20)) = v7;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v5 = sub_1D10F7108(0, v5[2] + 1, 1, v5);
        }

        v13 = v5[2];
        v12 = v5[3];
        if (v13 >= v12 >> 1)
        {
          v5 = sub_1D10F7108(v12 > 1, v13 + 1, 1, v5);
        }

        v14 = v0[6];
        v5[2] = v13 + 1;
        sub_1D130CF54(v14, v5 + ((*(v21 + 80) + 32) & ~*(v21 + 80)) + *(v21 + 72) * v13);
        ++v4;
        v2 = v22;
        v1 = v23;
        if (v8 == i)
        {
          goto LABEL_23;
        }
      }

      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      ;
    }

    v5 = MEMORY[0x1E69E7CC0];
LABEL_23:

    v18 = v0[1];

    return v18(v5);
  }

  else
  {
    v15 = swift_task_alloc();
    v0[7] = v15;
    sub_1D130D0E8(0, &qword_1EC60F5F8, type metadata accessor for TimelineRecord);
    *v15 = v0;
    v15[1] = sub_1D130A65C;
    v17 = v0[3];

    return MEMORY[0x1EEE6DE38](v0 + 2, 0, 0, 0xD000000000000018, 0x80000001D13CC3F0, sub_1D130CF4C, v17, v16);
  }
}

uint64_t sub_1D130A65C()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_1D130A7DC;
  }

  else
  {
    v2 = sub_1D130A770;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D130A770()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1D130A7DC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D130A840(unint64_t a1, unint64_t a2, uint64_t a3, int a4, void *a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9)
{
  v120 = a8;
  v123 = a5;
  v124 = a7;
  v117 = a6;
  v118 = a3;
  v122 = a4;
  v125 = a2;
  v116 = a1;
  v126 = sub_1D1390A6C();
  v10 = *(v126 - 1);
  MEMORY[0x1EEE9AC00](v126);
  v12 = v108 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1D1390A0C();
  MEMORY[0x1EEE9AC00](v13);
  v14 = sub_1D138FF0C();
  MEMORY[0x1EEE9AC00](v14 - 8);
  v121 = sub_1D106F934(0, &qword_1EE06B760);
  v119 = "fetchNextPageOfSamples()";
  *(v9 + 80) = 0;
  *(v9 + 88) = 0;
  *(v9 + 96) = 0;
  sub_1D138FEEC();
  aBlock = MEMORY[0x1E69E7CC0];
  sub_1D130D13C(&qword_1EE06B770, MEMORY[0x1E69E8030]);
  v15 = MEMORY[0x1E69E8030];
  sub_1D130D0E8(0, &qword_1EE06B7A8, MEMORY[0x1E69E8030]);
  sub_1D130D184(&qword_1EE06B7A0, &qword_1EE06B7A8, v15);
  sub_1D139103C();
  (*(v10 + 104))(v12, *MEMORY[0x1E69E8090], v126);
  v16 = v9;
  v17 = v125;
  *(v9 + 104) = sub_1D1390ABC();
  v18 = (v17 >> 62);
  if (v17 >> 62)
  {
    goto LABEL_112;
  }

  result = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v20 = v120;
  v22 = v117;
  v21 = v118;
  v24 = v123;
  v23 = v124;
  v25 = v122;
  if (result < 1)
  {
    __break(1u);
    return result;
  }

  v121 = v18;
  v26 = v116;
  *(v16 + 16) = v116;
  *(v16 + 24) = v17;
  *(v16 + 32) = v21;
  *(v16 + 40) = v25 & 1;
  *(v16 + 48) = v24;
  *(v16 + 56) = v22;
  *(v16 + 64) = v23;
  *(v16 + 80) = v20;
  v111 = v26;

  v27 = v24;
  v28 = v23;

  *(v16 + 72) = a9;

  v18 = HKLogHealthRecordsCategory();
  v29 = objc_allocWithZone(MEMORY[0x1E696C2F0]);
  v30 = sub_1D139012C();
  v31 = [v29 initWithName:v30 loggingCategory:v18];

  *(v16 + 120) = v31;
  if (a9)
  {

    v32 = *(v16 + 88);
    *(v16 + 88) = 0;

    v33 = 0;
    goto LABEL_107;
  }

  v126 = v27;
  aBlock = MEMORY[0x1E69E7CC0];
  v119 = v28;
  if (v121)
  {
    v34 = sub_1D13910DC();
  }

  else
  {
    v34 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v35 = v126;
  v36 = MEMORY[0x1E69E7CC0];
  v121 = v34;
  v110 = v16;
  if (v34)
  {
    v37 = 0;
    v116 = v17 & 0xC000000000000001;
    v38 = v17 & 0xFFFFFFFFFFFFFF8;
    v113 = *MEMORY[0x1E696B718];
    v16 = v117 & 0xC000000000000001;
    v39 = v117 & 0xFFFFFFFFFFFFFF8;
    if (v117 < 0)
    {
      v39 = v117;
    }

    v115 = v39;
    v114 = v20 & 0xC000000000000001;
    v40 = v20 & 0xFFFFFFFFFFFFFF8;
    if (v20 < 0)
    {
      v40 = v20;
    }

    v112 = v40;
    while (1)
    {
      if (v116)
      {
        v41 = MEMORY[0x1D3886B70](v37, v17);
      }

      else
      {
        if (v37 >= *(v38 + 16))
        {
          goto LABEL_109;
        }

        v41 = *(v17 + 8 * v37 + 32);
      }

      v17 = v41;
      v42 = v37 + 1;
      if (__OFADD__(v37, 1))
      {
        __break(1u);
LABEL_109:
        __break(1u);
LABEL_110:
        __break(1u);
LABEL_111:
        __break(1u);
LABEL_112:
        result = sub_1D13910DC();
        goto LABEL_3;
      }

      v135 = v36;
      if ((v122 & 1) == 0)
      {
        v43 = objc_opt_self();
        v44 = objc_allocWithZone(MEMORY[0x1E696C020]);
        v45 = [v44 initWithRawIdentifier_];
        v46 = [v43 predicateForSamplesWithConceptIdentifier:v45 keyPath:v113];

        MEMORY[0x1D3885D90]();
        if (*((v135 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v135 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1D13904BC();
        }

        sub_1D13904FC();
        v35 = v126;
      }

      if (v123)
      {
        v47 = objc_opt_self();
        v48 = v35;
        v49 = [v47 predicateForMedicalRecordsAssociatedWithMedicalUserDomainConcept_];
        MEMORY[0x1D3885D90]();
        if (*((v135 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v135 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1D13904BC();
        }

        sub_1D13904FC();

        v20 = v120;
      }

      if (v16)
      {
        v50 = v17;
        v51 = sub_1D139137C();

        if (!v51)
        {
          goto LABEL_37;
        }

        v133 = v51;
        sub_1D106F934(0, &qword_1EE06B790);
        swift_dynamicCast();
        v52 = v134;
        if (!v134)
        {
          goto LABEL_37;
        }
      }

      else
      {
        v53 = v117;
        if (!*(v117 + 16))
        {
          goto LABEL_37;
        }

        v54 = sub_1D129DF14(v17);
        if ((v55 & 1) == 0)
        {
          goto LABEL_37;
        }

        v52 = *(*(v53 + 56) + 8 * v54);
        if (!v52)
        {
          goto LABEL_37;
        }
      }

      v56 = v52;
      MEMORY[0x1D3885D90]();
      if (*((v135 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v135 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1D13904BC();
      }

      sub_1D13904FC();

LABEL_37:
      if (v124)
      {
        v57 = v119;
        MEMORY[0x1D3885D90]();
        if (*((v135 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v135 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1D13904BC();
        }

        sub_1D13904FC();
      }

      if (!v20)
      {
        goto LABEL_52;
      }

      if (v114)
      {
        v58 = v17;
        v59 = sub_1D139137C();

        if (v59)
        {
          v133 = v59;
          sub_1D106F934(0, &qword_1EE06B790);
          swift_dynamicCast();
          v60 = v134;
          if (v134)
          {
            goto LABEL_49;
          }
        }
      }

      else if (*(v20 + 16))
      {
        v61 = sub_1D129DF14(v17);
        if (v62)
        {
          v60 = *(*(v20 + 56) + 8 * v61);
          if (v60)
          {
LABEL_49:
            v63 = v60;
            MEMORY[0x1D3885D90]();
            if (*((v135 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v135 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_1D13904BC();
            }

            sub_1D13904FC();
          }
        }
      }

LABEL_52:
      sub_1D106F934(0, &qword_1EE06B790);
      v18 = sub_1D139044C();

      v64 = [objc_opt_self() andPredicateWithSubpredicates_];

      [objc_allocWithZone(MEMORY[0x1E696C388]) initWithSampleType:v17 predicate:v64];
      MEMORY[0x1D3885D90]();
      if (*((aBlock & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((aBlock & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v18 = *((aBlock & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_1D13904BC();
      }

      sub_1D13904FC();
      ++v37;
      v34 = v121;
      v17 = v125;
      v35 = v126;
      if (v42 == v121)
      {
        v16 = v110;
        break;
      }
    }
  }

  sub_1D106F424();
  v65 = swift_allocObject();
  *(v65 + 16) = xmmword_1D139E810;
  *(v65 + 32) = [objc_allocWithZone(MEMORY[0x1E696AEB0]) initWithKey:*MEMORY[0x1E696B9B8] ascending:0];
  v66 = objc_allocWithZone(MEMORY[0x1E696C2A8]);
  v108[1] = sub_1D106F934(0, &qword_1EE06A630);
  v67 = sub_1D139044C();

  sub_1D106F934(0, &qword_1EE06B578);
  v68 = sub_1D139044C();

  v18 = [v66 initWithQueryDescriptors:v67 sortDescriptors:v68 followingAnchor:0 upToAndIncludingAnchor:0 distinctByKeyPaths:0 bufferSize:15 limit:0 healthStore:v111];

  v69 = *(v16 + 88);
  *(v16 + 88) = v18;

  v70 = *(v16 + 120);
  aBlock = v36;
  v109 = v70;
  if (!v34)
  {
    goto LABEL_106;
  }

  v71 = 0;
  v116 = v17 & 0xC000000000000001;
  v72 = v17 & 0xFFFFFFFFFFFFFF8;
  v113 = *MEMORY[0x1E696B718];
  v16 = v117 & 0xC000000000000001;
  v73 = v117 & 0xFFFFFFFFFFFFFF8;
  if (v117 < 0)
  {
    v73 = v117;
  }

  v115 = v73;
  v114 = v20 & 0xC000000000000001;
  v74 = v20 & 0xFFFFFFFFFFFFFF8;
  if (v20 < 0)
  {
    v74 = v20;
  }

  v112 = v74;
  do
  {
    if (v116)
    {
      v17 = MEMORY[0x1D3886B70](v71, v17);
      v75 = v126;
      v76 = v71 + 1;
      if (__OFADD__(v71, 1))
      {
        goto LABEL_110;
      }
    }

    else
    {
      v75 = v126;
      if (v71 >= *(v72 + 16))
      {
        goto LABEL_111;
      }

      v17 = *(v17 + 8 * v71 + 32);
      v76 = v71 + 1;
      if (__OFADD__(v71, 1))
      {
        goto LABEL_110;
      }
    }

    v135 = v36;
    if ((v122 & 1) == 0)
    {
      v77 = objc_opt_self();
      v78 = objc_allocWithZone(MEMORY[0x1E696C020]);
      v79 = [v78 initWithRawIdentifier_];
      v80 = [v77 predicateForSamplesWithConceptIdentifier:v79 keyPath:v113];

      MEMORY[0x1D3885D90]();
      if (*((v135 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v135 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1D13904BC();
      }

      sub_1D13904FC();
      v75 = v126;
    }

    if (v123)
    {
      v81 = objc_opt_self();
      v82 = v75;
      v83 = [v81 predicateForMedicalRecordsAssociatedWithMedicalUserDomainConcept_];
      MEMORY[0x1D3885D90]();
      if (*((v135 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v135 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1D13904BC();
      }

      sub_1D13904FC();

      v20 = v120;
    }

    if (v16)
    {
      v84 = v17;
      v85 = sub_1D139137C();

      if (!v85)
      {
        goto LABEL_84;
      }

      v133 = v85;
      sub_1D106F934(0, &qword_1EE06B790);
      swift_dynamicCast();
      v86 = v134;
      if (!v134)
      {
        goto LABEL_84;
      }
    }

    else
    {
      v87 = v117;
      if (!*(v117 + 16))
      {
        goto LABEL_84;
      }

      v88 = sub_1D129DF14(v17);
      if ((v89 & 1) == 0)
      {
        goto LABEL_84;
      }

      v86 = *(*(v87 + 56) + 8 * v88);
      if (!v86)
      {
        goto LABEL_84;
      }
    }

    v90 = v86;
    MEMORY[0x1D3885D90]();
    if (*((v135 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v135 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1D13904BC();
    }

    sub_1D13904FC();

LABEL_84:
    if (v124)
    {
      v91 = v119;
      MEMORY[0x1D3885D90]();
      if (*((v135 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v135 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1D13904BC();
      }

      sub_1D13904FC();
    }

    if (v20)
    {
      if (v114)
      {
        v92 = v17;
        v93 = sub_1D139137C();

        if (!v93)
        {
          goto LABEL_99;
        }

        v133 = v93;
        sub_1D106F934(0, &qword_1EE06B790);
        swift_dynamicCast();
        v94 = v134;
        if (!v134)
        {
          goto LABEL_99;
        }
      }

      else
      {
        if (!*(v20 + 16))
        {
          goto LABEL_99;
        }

        v95 = sub_1D129DF14(v17);
        if ((v96 & 1) == 0)
        {
          goto LABEL_99;
        }

        v94 = *(*(v20 + 56) + 8 * v95);
        if (!v94)
        {
          goto LABEL_99;
        }
      }

      v97 = v94;
      MEMORY[0x1D3885D90]();
      if (*((v135 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v135 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1D13904BC();
      }

      sub_1D13904FC();
    }

LABEL_99:
    sub_1D106F934(0, &qword_1EE06B790);
    v18 = sub_1D139044C();

    v98 = [objc_opt_self() andPredicateWithSubpredicates_];

    [objc_allocWithZone(MEMORY[0x1E696C388]) initWithSampleType:v17 predicate:v98];
    MEMORY[0x1D3885D90]();
    if (*((aBlock & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((aBlock & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v18 = *((aBlock & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_1D13904BC();
    }

    sub_1D13904FC();
    ++v71;
    v17 = v125;
  }

  while (v76 != v121);
  v16 = v110;
LABEL_106:

  v99 = [objc_opt_self() latestAnchor];
  v100 = objc_allocWithZone(MEMORY[0x1E696BF08]);
  v101 = sub_1D139044C();

  v131 = nullsub_1;
  v132 = 0;
  aBlock = MEMORY[0x1E69E9820];
  v128 = 1107296256;
  v129 = sub_1D11D9E38;
  v130 = &block_descriptor_15_0;
  v102 = _Block_copy(&aBlock);
  v33 = [v100 initWithQueryDescriptors:v101 anchor:v99 limit:0 resultsHandler:v102];

  _Block_release(v102);

  v103 = swift_allocObject();
  v104 = v109;
  *(v103 + 16) = v109;
  v131 = sub_1D130D1D4;
  v132 = v103;
  aBlock = MEMORY[0x1E69E9820];
  v128 = 1107296256;
  v129 = sub_1D11D9E38;
  v130 = &block_descriptor_21_4;
  v105 = _Block_copy(&aBlock);
  v106 = v104;
  sub_1D102CE24(sub_1D130D1D4);

  [v33 setUpdateHandler_];
  _Block_release(v105);

  v107 = v111;
  [v111 executeQuery_];

LABEL_107:
  *(v16 + 112) = v33;
  return v16;
}

void sub_1D130BA74(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v34 = sub_1D138D57C();
  v32 = *(v34 - 8);
  v8 = MEMORY[0x1EEE9AC00](v34);
  v31 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v33 = &v27 - v10;
  if (a2)
  {
    if (a2 >> 62)
    {
      goto LABEL_21;
    }

    v11 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    for (i = a6; v11; i = a6)
    {
      v12 = 0;
      v30 = a2 & 0xC000000000000001;
      v13 = (v32 + 32);
      v14 = MEMORY[0x1E69E7CC0];
      v29 = v11;
      while (1)
      {
        if (v30)
        {
          v15 = MEMORY[0x1D3886B70](v12, a2);
        }

        else
        {
          if (v12 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_20;
          }

          v15 = *(a2 + 8 * v12 + 32);
        }

        a6 = v15;
        v16 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        objc_opt_self();
        v17 = swift_dynamicCastObjCClass();
        if (v17)
        {
          v18 = [v17 sortDate];
          v19 = [v18 date];

          v20 = a6;
          a6 = v19;
        }

        else
        {
          v20 = [a6 startDate];
        }

        v21 = v31;
        sub_1D138D52C();

        a6 = *v13;
        (*v13)(v33, v21, v34);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v14 = sub_1D10F90B0(0, v14[2] + 1, 1, v14);
        }

        v22 = v29;
        v24 = v14[2];
        v23 = v14[3];
        if (v24 >= v23 >> 1)
        {
          v14 = sub_1D10F90B0(v23 > 1, v24 + 1, 1, v14);
        }

        v14[2] = v24 + 1;
        (a6)(v14 + ((*(v32 + 80) + 32) & ~*(v32 + 80)) + *(v32 + 72) * v24, v33, v34);
        ++v12;
        if (v16 == v22)
        {
          goto LABEL_23;
        }
      }

      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      v11 = sub_1D13910DC();
    }

    v14 = MEMORY[0x1E69E7CC0];
LABEL_23:
    v25 = swift_allocObject();
    *(v25 + 16) = v14;
    aBlock[4] = sub_1D130D1DC;
    aBlock[5] = v25;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1D130BE54;
    aBlock[3] = &block_descriptor_27_2;
    v26 = _Block_copy(aBlock);

    [i notifyObservers_];
    _Block_release(v26);
  }
}

void sub_1D130BDE8(void *a1)
{
  sub_1D138D57C();
  v2 = sub_1D139044C();
  [a1 timelineRecordFetcherHasChangeWithDates_];
}

uint64_t sub_1D130BE54(uint64_t a1)
{
  v1 = *(a1 + 32);

  v2 = swift_unknownObjectRetain();
  v1(v2);

  return swift_unknownObjectRelease();
}

uint64_t sub_1D130BEB4(uint64_t a1)
{
  sub_1D130CFB8();
  v3 = v2;
  v4 = *(v2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v2);
  (*(v4 + 16))(&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  (*(v4 + 32))(v7 + v6, &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v3);
  sub_1D130C2EC(sub_1D130D044, v7);
}

uint64_t sub_1D130BFF0(unint64_t a1, void *a2, unint64_t a3)
{
  v6 = type metadata accessor for TimelineRecord();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v28 - v12;
  if (a2)
  {
    v35 = a2;
    v14 = a2;
    sub_1D130CFB8();
    return sub_1D139056C();
  }

  else
  {
    if (a1 >> 62)
    {
      goto LABEL_21;
    }

    v16 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v29 = a3;
    if (v16)
    {
      do
      {
        v17 = 0;
        v34 = a1 & 0xC000000000000001;
        v32 = v11;
        v33 = a1 & 0xFFFFFFFFFFFFFF8;
        v18 = MEMORY[0x1E69E7CC0];
        v30 = v10;
        v31 = v7;
        while (1)
        {
          if (v34)
          {
            v11 = MEMORY[0x1D3886B70](v17, a1);
          }

          else
          {
            if (v17 >= *(v33 + 16))
            {
              goto LABEL_20;
            }

            v11 = *(a1 + 8 * v17 + 32);
          }

          v19 = v11;
          v20 = v17 + 1;
          if (__OFADD__(v17, 1))
          {
            break;
          }

          objc_opt_self();
          v21 = swift_dynamicCastObjCClass();
          if (v21)
          {
            v22 = v21;
            v23 = [v21 sortDate];
            v24 = [v23 date];

            sub_1D138D52C();
            *&v10[v32[5]] = v22;
            sub_1D130CF54(v10, v13);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v18 = sub_1D10F7108(0, v18[2] + 1, 1, v18);
            }

            a3 = v18[2];
            v25 = v18[3];
            if (a3 >= v25 >> 1)
            {
              v18 = sub_1D10F7108(v25 > 1, a3 + 1, 1, v18);
            }

            v18[2] = a3 + 1;
            v7 = v31;
            v11 = sub_1D130CF54(v13, v18 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v31 + 72) * a3);
            v10 = v30;
          }

          else
          {
          }

          ++v17;
          if (v20 == v16)
          {
            goto LABEL_23;
          }
        }

        __break(1u);
LABEL_20:
        __break(1u);
LABEL_21:
        v26 = v11;
        v27 = sub_1D13910DC();
        v11 = v26;
        v16 = v27;
        v29 = a3;
      }

      while (v27);
    }

    v18 = MEMORY[0x1E69E7CC0];
LABEL_23:
    v35 = v18;
    sub_1D130CFB8();
    return sub_1D139057C();
  }
}

uint64_t sub_1D130C2EC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1D138FECC();
  v19 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1D138FF0C();
  v9 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(v3 + 104);
  v12 = swift_allocObject();
  swift_weakInit();
  v13 = swift_allocObject();
  v13[2] = v12;
  v13[3] = a1;
  v13[4] = a2;
  aBlock[4] = sub_1D130D0C4;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D10CBD3C;
  aBlock[3] = &block_descriptor_68;
  v14 = _Block_copy(aBlock);

  sub_1D138FEEC();
  v20 = MEMORY[0x1E69E7CC0];
  sub_1D130D13C(&qword_1EE06B7E0, MEMORY[0x1E69E7F60]);
  v15 = MEMORY[0x1E69E7F60];
  sub_1D130D0E8(0, &qword_1EE06B7C0, MEMORY[0x1E69E7F60]);
  sub_1D130D184(&qword_1EE06B7B0, &qword_1EE06B7C0, v15);
  sub_1D139103C();
  MEMORY[0x1D3886400](0, v11, v8, v14);
  _Block_release(v14);
  (*(v19 + 8))(v8, v6);
  (*(v9 + 8))(v11, v18);
}

void sub_1D130C600(uint64_t a1, void (*a2)(unint64_t, void *), uint64_t a3)
{
  v70[4] = *MEMORY[0x1E69E9840];
  v5 = sub_1D138F0BC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    goto LABEL_5;
  }

  v10 = Strong;
  v11 = *(Strong + 88);
  if (!v11 || (*(Strong + 96) & 1) != 0)
  {

LABEL_5:
    a2(MEMORY[0x1E69E7CC0], 0);
    return;
  }

  v12 = v11;
  v13 = [v12 sample];
  v68 = v12;
  if (v13)
  {
  }

  else
  {
    v70[0] = 0;
    if ([v12 advanceWithError_])
    {
      v14 = v70[0];
    }

    else
    {
      v66 = a3;
      v15 = v70[0];
      v16 = sub_1D138D2BC();

      swift_willThrow();
      sub_1D138F06C();
      v17 = v16;
      v18 = sub_1D138F0AC();
      v19 = sub_1D13907FC();

      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        *v20 = 138412290;
        v22 = v16;
        v23 = _swift_stdlib_bridgeErrorToNSError();
        *(v20 + 4) = v23;
        *v21 = v23;
        _os_log_impl(&dword_1D101F000, v18, v19, "%@", v20, 0xCu);
        sub_1D10B8240(v21);
        MEMORY[0x1D38882F0](v21, -1, -1);
        v24 = v20;
        v12 = v68;
        MEMORY[0x1D38882F0](v24, -1, -1);
      }

      else
      {
      }

      (*(v6 + 8))(v8, v5);
      a3 = v66;
    }
  }

  v25 = [v12 sample];
  if (!v25)
  {
    a2(MEMORY[0x1E69E7CC0], 0);

    return;
  }

  v26 = v25;
  objc_opt_self();
  v27 = swift_dynamicCastObjCClass();
  v66 = a3;
  if (v27)
  {
    v28 = v27;
    v29 = v26;
    v30 = [v28 meaningfulDateDisplayStringWithPreferredForm:1 showTime:0];
    v31 = sub_1D139016C();
    v33 = v32;
  }

  else
  {
    if (qword_1EE06AD00 != -1)
    {
      swift_once();
    }

    v31 = sub_1D138D1CC();
    v33 = v34;
  }

  v65 = a2;
  v70[0] = MEMORY[0x1E69E7CC0];
  v35 = v26;
  MEMORY[0x1D3885D90]();
  if (*((v70[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v70[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1D13904BC();
  }

  v64 = v35;
  sub_1D13904FC();
  v36 = v70[0];
  v37 = *(v10 + 88);
  if (!v37)
  {
LABEL_43:

    v65(MEMORY[0x1E69E7CC0], 0);

    return;
  }

  v67 = sub_1D106F934(0, &qword_1EC60F608);
  while (1)
  {
    v38 = v12;
    v39 = v37;
    v40 = sub_1D1390D8C();

    if ((v40 & 1) == 0)
    {
      goto LABEL_43;
    }

    v69[0] = 0;
    if (![v38 advanceWithError_])
    {
      v54 = v69[0];
      v55 = sub_1D138D2BC();

      swift_willThrow();
      v56 = sub_1D138D2AC();
      v57 = [v56 domain];
      v58 = sub_1D139016C();
      v60 = v59;

      if (v58 == sub_1D139016C() && v60 == v61)
      {
      }

      else
      {
        v62 = sub_1D139162C();

        if ((v62 & 1) == 0)
        {
          goto LABEL_50;
        }
      }

      if ([v56 code] == 900)
      {
        *(v10 + 96) = 1;
        v65(v36, 0);

LABEL_51:

        return;
      }

LABEL_50:

      v63 = v56;
      v65(MEMORY[0x1E69E7CC0], v56);

      goto LABEL_51;
    }

    v41 = v69[0];
    v42 = [v38 sample];
    if (!v42)
    {
      goto LABEL_53;
    }

    v43 = v42;
    objc_opt_self();
    v44 = swift_dynamicCastObjCClass();
    if (v44)
    {
      v45 = v44;
      v46 = v43;
      v47 = [v45 meaningfulDateDisplayStringWithPreferredForm:1 showTime:0];
      v48 = sub_1D139016C();
      v50 = v49;

      if (!(v36 >> 62))
      {
        goto LABEL_30;
      }
    }

    else
    {
      if (qword_1EE06AD00 != -1)
      {
        swift_once();
      }

      v48 = sub_1D138D1CC();
      v50 = v53;
      if (!(v36 >> 62))
      {
LABEL_30:
        v51 = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
        goto LABEL_31;
      }
    }

    v51 = sub_1D13910DC();
LABEL_31:
    v12 = v68;
    if (v51 >= 16 && (v48 != v31 || v50 != v33) && (sub_1D139162C() & 1) == 0)
    {
      break;
    }

    v52 = v43;
    MEMORY[0x1D3885D90]();
    if (*((v70[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v70[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1D13904BC();
      v12 = v68;
    }

    sub_1D13904FC();

    v36 = v70[0];
    v37 = *(v10 + 88);
    v33 = v50;
    v31 = v48;
    if (!v37)
    {
      goto LABEL_43;
    }
  }

LABEL_53:
  v65(v36, 0);
}

id *sub_1D130CE84()
{

  return v0;
}

uint64_t sub_1D130CEF4()
{
  sub_1D130CE84();

  return swift_deallocClassInstance();
}

uint64_t sub_1D130CF54(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TimelineRecord();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1D130CFB8()
{
  if (!qword_1EC60F600)
  {
    sub_1D130D0E8(255, &qword_1EC60F5F8, type metadata accessor for TimelineRecord);
    sub_1D10922EC();
    v0 = sub_1D139058C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC60F600);
    }
  }
}

uint64_t sub_1D130D044(unint64_t a1, void *a2)
{
  sub_1D130CFB8();
  v6 = v2 + ((*(*(v5 - 8) + 80) + 16) & ~*(*(v5 - 8) + 80));

  return sub_1D130BFF0(a1, a2, v6);
}

uint64_t block_copy_helper_69(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_1D130D0E8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D139052C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1D130D13C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D130D184(unint64_t *a1, unint64_t *a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_1D130D0E8(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id sub_1D130D1FC()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  [v0 setNumberOfLines_];
  v1 = objc_opt_self();
  v2 = [v1 labelColor];
  [v0 setTextColor_];

  v3 = v0;
  [v3 setTranslatesAutoresizingMaskIntoConstraints_];
  v4 = [v1 clearColor];
  [v3 setBackgroundColor_];

  [v3 setAdjustsFontForContentSizeCategory_];
  v5 = [objc_opt_self() preferredFontForTextStyle_];
  [v3 setFont_];

  sub_1D10A5C9C(0, &qword_1EE06B560);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1D139EAB0;
  *(v6 + 32) = sub_1D139016C();
  *(v6 + 40) = v7;
  strcpy((v6 + 48), "LabEducation");
  *(v6 + 61) = 0;
  *(v6 + 62) = -5120;
  *(v6 + 64) = 0x746E65746E6F43;
  *(v6 + 72) = 0xE700000000000000;
  v8 = sub_1D139044C();

  v9 = HKUIJoinStringsForAutomationIdentifier();

  [v3 setAccessibilityIdentifier_];
  return v3;
}

id sub_1D130D408()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  [v0 setNumberOfLines_];
  v1 = objc_opt_self();
  v2 = [v1 secondaryLabelColor];
  [v0 setTextColor_];

  v3 = v0;
  [v3 setTranslatesAutoresizingMaskIntoConstraints_];
  [v3 setAdjustsFontForContentSizeCategory_];
  v4 = [v1 clearColor];
  [v3 setBackgroundColor_];

  v5 = [objc_opt_self() preferredFontForTextStyle_];
  [v3 setFont_];

  sub_1D10A5C9C(0, &qword_1EE06B560);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1D139EAB0;
  *(v6 + 32) = sub_1D139016C();
  *(v6 + 40) = v7;
  strcpy((v6 + 48), "LabEducation");
  *(v6 + 61) = 0;
  *(v6 + 62) = -5120;
  *(v6 + 64) = 0x7475626972747441;
  *(v6 + 72) = 0xEB000000006E6F69;
  v8 = sub_1D139044C();

  v9 = HKUIJoinStringsForAutomationIdentifier();

  [v3 setAccessibilityIdentifier_];
  return v3;
}

id sub_1D130D700(void *a1)
{
  v3 = OBJC_IVAR____TtC15HealthRecordsUI13EducationCell_arrangedView;
  *&v1[v3] = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  v4 = OBJC_IVAR____TtC15HealthRecordsUI13EducationCell_educationLabel;
  *&v1[v4] = sub_1D130D1FC();
  v5 = OBJC_IVAR____TtC15HealthRecordsUI13EducationCell_attributionLabel;
  *&v1[v5] = sub_1D130D408();
  v6 = &v1[OBJC_IVAR____TtC15HealthRecordsUI13EducationCell_item];
  v7 = type metadata accessor for EducationCell();
  *v6 = 0u;
  *(v6 + 1) = 0u;
  *(v6 + 4) = 0;
  v10.receiver = v1;
  v10.super_class = v7;
  v8 = objc_msgSendSuper2(&v10, sel_initWithCoder_, a1);

  if (v8)
  {
  }

  return v8;
}

void sub_1D130D844()
{
  v1 = v0;
  v2 = sub_1D138E35C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [objc_opt_self() secondarySystemGroupedBackgroundColor];
  [v1 setBackgroundColor_];

  v7 = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  [v1 setBackgroundView_];

  v8 = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  [v1 setSelectedBackgroundView_];

  v9 = [v1 selectedBackgroundView];
  if (v9)
  {
    v10 = v9;
    sub_1D106F934(0, &qword_1EE06B6E0);
    v11 = sub_1D1390CEC();
    [v10 setBackgroundColor_];
  }

  [v1 setUserInteractionEnabled_];
  v12 = [v1 contentView];
  v13 = *&v1[OBJC_IVAR____TtC15HealthRecordsUI13EducationCell_arrangedView];
  [v12 addSubview_];

  [v13 addSubview_];
  [v13 addSubview_];
  [v13 setTranslatesAutoresizingMaskIntoConstraints_];
  v36 = objc_opt_self();
  sub_1D10A5C9C(0, &qword_1EE06A4C0);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1D139F5B0;
  v15 = [v13 leadingAnchor];
  v16 = [v1 contentView];
  v17 = [v16 leadingAnchor];

  sub_1D138E34C();
  sub_1D138E27C();
  v19 = v18;
  (*(v3 + 8))(v5, v2);
  v20 = [v15 constraintEqualToAnchor:v17 constant:v19];

  *(v14 + 32) = v20;
  v21 = [v13 topAnchor];
  v22 = [v1 contentView];
  v23 = [v22 topAnchor];

  v24 = [v21 constraintEqualToAnchor:v23 constant:0.0];
  *(v14 + 40) = v24;
  v25 = [v1 contentView];
  v26 = [v25 layoutMarginsGuide];

  v27 = [v26 trailingAnchor];
  v28 = [v13 trailingAnchor];
  v29 = [v27 constraintEqualToAnchor_];

  *(v14 + 48) = v29;
  v30 = [v1 contentView];
  v31 = [v30 bottomAnchor];

  v32 = [v13 bottomAnchor];
  v33 = [v31 constraintEqualToAnchor:v32 constant:0.0];

  *(v14 + 56) = v33;
  sub_1D106F934(0, &qword_1EC609690);
  v34 = sub_1D139044C();

  [v36 activateConstraints_];
}

uint64_t sub_1D130DD5C()
{
  v1 = v0;
  v2 = sub_1D138F0BC();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v56 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v56 - v7;
  v9 = OBJC_IVAR____TtC15HealthRecordsUI13EducationCell_item;
  swift_beginAccess();
  sub_1D10A71C0(&v1[v9], v60);
  if (v60[3])
  {
    sub_1D10A7254();
    type metadata accessor for EducationItem();
    if (swift_dynamicCast())
    {
      v10 = v59;
      v11 = v59[5];
      v12 = v59[6];
      __swift_project_boxed_opaque_existential_1Tm(v59 + 2, v11);
      (*(v12 + 16))(v11, v12);
      if (v13)
      {
        sub_1D130E848(0, &qword_1EC60F630, sub_1D130E8AC, MEMORY[0x1E69E6F90]);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1D139E710;
        *(inited + 32) = 77;
        *(inited + 40) = 0xE100000000000000;
        v15 = sub_1D106F934(0, &qword_1EE06B6C0);
        *(inited + 48) = sub_1D1390D6C();
        *(inited + 56) = 65;
        *(inited + 64) = 0xE100000000000000;
        *(inited + 72) = sub_1D1390D6C();
        v58 = sub_1D109E08C(inited);
        swift_setDeallocating();
        sub_1D130E8AC();
        swift_arrayDestroy();
        v16 = sub_1D109E0A4(MEMORY[0x1E69E7CC0]);
        v17 = *&v1[OBJC_IVAR____TtC15HealthRecordsUI13EducationCell_educationLabel];
        v18 = sub_1D139012C();

        [v17 setText_];

        v19 = v17;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v60[0] = v16;
        sub_1D11DB148(v19, 0x6F69746163756465, 0xEE006C6562614C6ELL, isUniquelyReferenced_nonNull_native);
        v21 = v60[0];
        v60[0] = 0xD000000000000016;
        v60[1] = 0x80000001D13CC510;
        v22 = *&v1[OBJC_IVAR____TtC15HealthRecordsUI13EducationCell_arrangedView];
        v23 = sub_1D139012C();
        v56[1] = v15;
        v24 = sub_1D138FFEC();
        sub_1D106F934(0, &qword_1EC609680);
        v25 = sub_1D138FFEC();
        v57 = v22;

        v26 = v10[5];
        v27 = v10[6];
        __swift_project_boxed_opaque_existential_1Tm(v10 + 2, v26);
        (*(v27 + 72))(v26, v27);
        if (v28)
        {
          v29 = *&v1[OBJC_IVAR____TtC15HealthRecordsUI13EducationCell_attributionLabel];
          [v29 setHidden_];
          v30 = sub_1D139012C();

          [v29 setText_];

          v31 = v29;
          v32 = swift_isUniquelyReferenced_nonNull_native();
          v59 = v21;
          sub_1D11DB148(v31, 0xD000000000000010, 0x80000001D13CC4F0, v32);
          MEMORY[0x1D3885C10](0xD000000000000015, 0x80000001D13CC550);
          v33 = sub_1D139012C();
          v34 = sub_1D138FFEC();
          v35 = sub_1D138FFEC();
        }

        else
        {
          [*&v1[OBJC_IVAR____TtC15HealthRecordsUI13EducationCell_attributionLabel] setHidden_];
        }

        MEMORY[0x1D3885C10](2083343661, 0xE400000000000000);
        v53 = sub_1D139012C();

        v54 = sub_1D138FFEC();

        v55 = sub_1D138FFEC();
      }

      else
      {
        sub_1D138F06C();
        v45 = v1;
        v46 = sub_1D138F0AC();
        v47 = sub_1D13907FC();

        if (os_log_type_enabled(v46, v47))
        {
          v48 = swift_slowAlloc();
          v49 = swift_slowAlloc();
          v59 = v49;
          *v48 = 136446210;
          sub_1D10A71C0(&v1[v9], v60);
          sub_1D130E848(0, &qword_1EC60B620, sub_1D10A7254, MEMORY[0x1E69E6720]);
          v50 = sub_1D139020C();
          v52 = sub_1D11DF718(v50, v51, &v59);

          *(v48 + 4) = v52;
          _os_log_impl(&dword_1D101F000, v46, v47, "No content for EducationItem: %{public}s", v48, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v49);
          MEMORY[0x1D38882F0](v49, -1, -1);
          MEMORY[0x1D38882F0](v48, -1, -1);
        }

        else
        {
        }

        return (*(v3 + 8))(v8, v2);
      }
    }
  }

  else
  {
    sub_1D10A72B8(v60);
  }

  sub_1D138F06C();
  v36 = v1;
  v37 = sub_1D138F0AC();
  v38 = sub_1D13907FC();

  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v59 = v40;
    *v39 = 136446210;
    sub_1D10A71C0(&v1[v9], v60);
    sub_1D130E848(0, &qword_1EC60B620, sub_1D10A7254, MEMORY[0x1E69E6720]);
    v41 = sub_1D139020C();
    v43 = sub_1D11DF718(v41, v42, &v59);

    *(v39 + 4) = v43;
    _os_log_impl(&dword_1D101F000, v37, v38, "Incorrect view model for EducationCell: %{public}s", v39, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v40);
    MEMORY[0x1D38882F0](v40, -1, -1);
    MEMORY[0x1D38882F0](v39, -1, -1);
  }

  return (*(v3 + 8))(v5, v2);
}

id sub_1D130E628()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for EducationCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1D130E6EC@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC15HealthRecordsUI13EducationCell_item;
  swift_beginAccess();
  return sub_1D10A71C0(v1 + v3, a1);
}

uint64_t sub_1D130E744(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15HealthRecordsUI13EducationCell_item;
  swift_beginAccess();
  sub_1D10B1300(a1, v1 + v3);
  swift_endAccess();
  sub_1D130DD5C();
  return sub_1D10A72B8(a1);
}

uint64_t (*sub_1D130E7B0(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1D130E814;
}

uint64_t sub_1D130E814(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return sub_1D130DD5C();
  }

  return result;
}

void sub_1D130E848(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1D130E8AC()
{
  if (!qword_1EC60F638)
  {
    sub_1D106F934(255, &qword_1EE06B6C0);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC60F638);
    }
  }
}

void *sub_1D130E924(uint64_t a1)
{
  *(v1 + 40) = a1;
  *(v1 + 48) = 0;

  v2 = ConceptsDataSource.init(arrangedSections:isHidden:)(MEMORY[0x1E69E7CC0], 0);
  swift_allocObject();
  swift_weakInit();
  sub_1D130F330();
  sub_1D130F3E8(&qword_1EC60F648, 255, sub_1D130F330);

  v3 = sub_1D138F90C();

  v2[6] = v3;

  return v2;
}

uint64_t sub_1D130EA48(uint64_t *a1)
{
  v2 = sub_1D138FECC();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1D138FF0C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  v11 = a1[1];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v13 = result;
    sub_1D108310C();
    v20 = sub_1D1390A7C();
    v14 = swift_allocObject();
    v14[2] = v10;
    v14[3] = v11;
    v14[4] = v13;
    aBlock[4] = sub_1D130F430;
    aBlock[5] = v14;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1D10CBD3C;
    aBlock[3] = &block_descriptor_69;
    v15 = _Block_copy(aBlock);
    v19 = v6;
    v16 = v15;
    sub_1D130F454(v10, v11);

    sub_1D138FEEC();
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_1D130F3E8(&qword_1EE06B7E0, 255, MEMORY[0x1E69E7F60]);
    sub_1D130F478(0, &qword_1EE06B7C0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
    sub_1D1080CD4();
    sub_1D139103C();
    v17 = v20;
    MEMORY[0x1D3886400](0, v9, v5, v16);
    _Block_release(v16);

    (*(v3 + 8))(v5, v2);
    return (*(v7 + 8))(v9, v19);
  }

  return result;
}

uint64_t sub_1D130ED70(uint64_t a1, uint64_t a2)
{
  if (a2 == 1 || a2 == 2)
  {
    return sub_1D1287820(1);
  }

  sub_1D1287820(0);
  return sub_1D130EDD0(a1, a2);
}

uint64_t sub_1D130EDD0(uint64_t a1, uint64_t a2)
{
  v14 = sub_1D138D5EC();
  v4 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1E69E6F90];
  sub_1D130F478(0, &qword_1EC60ABA8, sub_1D10A7254, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  v13 = xmmword_1D139E700;
  *(inited + 16) = xmmword_1D139E700;
  v9 = type metadata accessor for MedicalRecordTimelineSystemStatusItem();
  v10 = swift_allocObject();
  type metadata accessor for MedicalRecordTimelineSystemStatusItemCell();
  sub_1D130F3E8(&qword_1EC60F650, 255, type metadata accessor for MedicalRecordTimelineSystemStatusItemCell);
  v10[4] = sub_1D138DECC();
  v10[5] = v11;
  v10[2] = a1;
  v10[3] = a2;
  *(inited + 56) = v9;
  *(inited + 64) = sub_1D130F3E8(&qword_1EC60F658, 255, type metadata accessor for MedicalRecordTimelineSystemStatusItem);
  *(inited + 32) = v10;
  sub_1D130F464(a1, a2);
  sub_1D138E0FC();
  sub_1D130F478(0, &qword_1EC60AA30, MEMORY[0x1E69A3690], v7);
  sub_1D138E52C();
  *(swift_allocObject() + 16) = v13;
  sub_1D110A5C8(inited);
  swift_setDeallocating();
  __swift_destroy_boxed_opaque_existential_1Tm(inited + 32);
  sub_1D138D5DC();
  sub_1D138D59C();
  (*(v4 + 8))(v6, v14);
  sub_1D138E50C();
  sub_1D138E58C();
}

uint64_t sub_1D130F13C()
{
  v0 = sub_1D138E6BC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D138E65C();
  v4 = sub_1D138E6AC();
  (*(v1 + 8))(v3, v0);
  return v4;
}

uint64_t sub_1D130F26C()
{
  type metadata accessor for MedicalRecordTimelineSystemStatusItemCell();
  sub_1D130F3E8(&qword_1EC60F650, 255, type metadata accessor for MedicalRecordTimelineSystemStatusItemCell);
  return sub_1D13908AC();
}

void sub_1D130F330()
{
  if (!qword_1EC609A30)
  {
    sub_1D130F398();
    v0 = sub_1D138F6DC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC609A30);
    }
  }
}

void sub_1D130F398()
{
  if (!qword_1EC609A38)
  {
    v0 = sub_1D1390F3C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC609A38);
    }
  }
}

uint64_t sub_1D130F3E8(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t block_copy_helper_70(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1D130F454(uint64_t a1, uint64_t a2)
{
  if (a2 != 2)
  {
    return sub_1D130F464(a1, a2);
  }

  return a1;
}

uint64_t sub_1D130F464(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

void sub_1D130F478(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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
void sub_1D107BB4C(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  v9 = sub_1D138D5EC();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v37[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = sub_1D138F0BC();
  v41 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v37[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v17 = Strong;
    v18 = a2;
    sub_1D1071E2C(a2);
    if (a3)
    {
      v19 = a3;
      sub_1D138F06C();
      (*(v10 + 16))(v12, a4, v9);
      v20 = a3;
      v21 = sub_1D138F0AC();
      v22 = sub_1D13907FC();

      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        v40 = v13;
        v24 = v23;
        v39 = swift_slowAlloc();
        v42 = v39;
        *v24 = 136315650;
        v43 = a5;
        swift_getMetatypeMetadata();
        v25 = sub_1D13901EC();
        v38 = v22;
        v27 = sub_1D11DF718(v25, v26, &v42);

        *(v24 + 4) = v27;
        *(v24 + 12) = 2080;
        sub_1D107F580(&qword_1EC60D1C0, MEMORY[0x1E69695A8]);
        v28 = sub_1D13915CC();
        v30 = v29;
        (*(v10 + 8))(v12, v9);
        v31 = sub_1D11DF718(v28, v30, &v42);

        *(v24 + 14) = v31;
        *(v24 + 22) = 2080;
        v43 = a3;
        v32 = a3;
        sub_1D1080EA4(0, &qword_1EE06B690);
        v33 = sub_1D13901EC();
        v35 = sub_1D11DF718(v33, v34, &v42);

        *(v24 + 24) = v35;
        _os_log_impl(&dword_1D101F000, v21, v38, "%s: failed to fetch account %s: %s", v24, 0x20u);
        v36 = v39;
        swift_arrayDestroy();
        MEMORY[0x1D38882F0](v36, -1, -1);
        MEMORY[0x1D38882F0](v24, -1, -1);

        (*(v41 + 8))(v15, v40);
      }

      else
      {

        (*(v10 + 8))(v12, v9);
        (*(v41 + 8))(v15, v13);
      }
    }

    else
    {
    }
  }
}

void sub_1D107BF4C()
{
  v1 = v0;
  swift_getObjectType();
  v2 = sub_1D138F0BC();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [v0 navigationController];
  v7 = [v6 topViewController];

  if (v7)
  {
    sub_1D106F934(0, &unk_1EC6099E0);
    v8 = v1;
    v9 = sub_1D1390D8C();

    if (v9)
    {
      v10 = [v8 navigationController];
      if (!v10)
      {
        return;
      }

      v34 = v10;

      goto LABEL_17;
    }
  }

  v11 = [v1 navigationController];
  if (!v11)
  {
    return;
  }

  v12 = v11;
  v13 = [v11 viewControllers];
  sub_1D106F934(0, &unk_1EC6099E0);
  v14 = sub_1D139045C();

  v15 = sub_1D136BC54(v1, v14);
  LOBYTE(v13) = v16;

  if (v13)
  {
    v17 = 0;
  }

  else
  {
    v17 = v15;
  }

  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    v15 = v19 & ~(v19 >> 63);
    v20 = [v12 viewControllers];
    v21 = sub_1D139045C();

    if (!(v21 >> 62))
    {
      v22 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_12;
    }
  }

  v22 = sub_1D13910DC();
LABEL_12:

  if (v15 < v22)
  {
    v23 = [v12 viewControllers];
    v24 = sub_1D139045C();

    if ((v24 & 0xC000000000000001) != 0)
    {
      v25 = MEMORY[0x1D3886B70](v15, v24);
    }

    else
    {
      if (v15 >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        return;
      }

      v25 = *(v24 + 8 * v15 + 32);
    }

    v34 = v25;

LABEL_17:
    v26 = v34;

    return;
  }

  sub_1D138F06C();
  v27 = sub_1D138F0AC();
  v28 = sub_1D13907DC();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v35 = v30;
    *v29 = 136446210;
    v31 = sub_1D139184C();
    v33 = sub_1D11DF718(v31, v32, &v35);

    *(v29 + 4) = v33;
    _os_log_impl(&dword_1D101F000, v27, v28, "%{public}s tried popping myself from navigation stack but couldn't find me", v29, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v30);
    MEMORY[0x1D38882F0](v30, -1, -1);
    MEMORY[0x1D38882F0](v29, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
}

void sub_1D107C380(void *a1)
{
  ObjectType = swift_getObjectType();
  sub_1D107F4BC(0, &qword_1EE06A650, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v21 - v5;
  [a1 contentOffset];
  v8 = v7;
  [a1 contentSize];
  v10 = v9;
  [a1 frame];
  x = v22.origin.x;
  y = v22.origin.y;
  width = v22.size.width;
  height = v22.size.height;
  v15 = v10 - (v8 + CGRectGetHeight(v22));
  v23.origin.x = x;
  v23.origin.y = y;
  v23.size.width = width;
  v23.size.height = height;
  if (v15 < CGRectGetHeight(v23))
  {
    v16 = sub_1D13905DC();
    (*(*(v16 - 8) + 56))(v6, 1, 1, v16);
    sub_1D13905AC();
    v17 = v1;
    v18 = sub_1D139059C();
    v19 = swift_allocObject();
    v20 = MEMORY[0x1E69E85E0];
    v19[2] = v18;
    v19[3] = v20;
    v19[4] = v17;
    v19[5] = ObjectType;
    sub_1D107877C(0, 0, v6, &unk_1D139E858, v19);
  }
}

void sub_1D107C5D0(uint64_t a1, uint64_t a2)
{
  v5 = sub_1D138FF3C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = (&v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_1EE06A170 != -1)
  {
    swift_once();
  }

  v9 = qword_1EE06AEB8;
  v10 = *(v2 + OBJC_IVAR___HRMedicalRecordTimelineViewController_category);
  v11 = *(v2 + OBJC_IVAR___HRMedicalRecordTimelineViewController_conceptIdentifier);
  if (v10)
  {
    sub_1D123E1C4(v10, &aBlock);
    sub_1D1080D98(&aBlock);
    v12 = aBlock;
    if (v11)
    {
LABEL_5:
      v13 = *&v9[OBJC_IVAR___CHRAnalyticsManager_conceptStore];
      v14 = swift_allocObject();
      *(v14 + 16) = v9;
      *(v14 + 24) = a1;
      *(v14 + 32) = a2;
      *(v14 + 40) = 0;
      *(v14 + 48) = v12;
      v30 = sub_1D1080D88;
      v31 = v14;
      aBlock = MEMORY[0x1E69E9820];
      v27 = 1107296256;
      v28 = sub_1D1226920;
      v29 = &block_descriptor_142;
      v15 = _Block_copy(&aBlock);
      v16 = v11;
      v17 = v9;

      [v13 fetchConceptForIdentifier:v16 loadRelationships:0 completionHandler:v15];
      _Block_release(v15);

      return;
    }
  }

  else
  {
    v12 = 11;
    if (v11)
    {
      goto LABEL_5;
    }
  }

  v18 = OBJC_IVAR___CHRAnalyticsManager_managerQueue;
  v19 = *&v9[OBJC_IVAR___CHRAnalyticsManager_managerQueue];
  *v8 = v19;
  (*(v6 + 104))(v8, *MEMORY[0x1E69E8018], v5);
  v20 = v19;
  LOBYTE(v19) = sub_1D138FF5C();
  (*(v6 + 8))(v8, v5);
  if ((v19 & 1) == 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  v21 = *&v9[v18];
  v22 = swift_allocObject();
  *(v22 + 16) = a1;
  *(v22 + 24) = a2;
  *(v22 + 32) = 0;
  *(v22 + 40) = v12;
  *(v22 + 48) = 0;
  v23 = swift_allocObject();
  *(v23 + 16) = sub_1D1080D6C;
  *(v23 + 24) = v22;
  v30 = sub_1D1080D80;
  v31 = v23;
  aBlock = MEMORY[0x1E69E9820];
  v27 = 1107296256;
  v28 = sub_1D10DD3BC;
  v29 = &block_descriptor_136;
  v24 = _Block_copy(&aBlock);

  dispatch_sync(v21, v24);
  _Block_release(v24);
  LOBYTE(v24) = swift_isEscapingClosureAtFileLocation();

  if (v24)
  {
LABEL_11:
    __break(1u);
  }
}

id MedicalRecordTimelineViewController.__allocating_init(collectionViewLayout:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCollectionViewLayout_];

  return v3;
}

id MedicalRecordTimelineViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_1D139012C();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

void MedicalRecordTimelineViewController.didUpdateVisibleValueRange(_:changeContext:)(uint64_t a1, uint64_t a2)
{
  if (a2 == 1)
  {
    sub_1D107C5D0(3, 18);
  }
}

void MedicalRecordTimelineViewController.didUpdateSeries(withNewValueRange:)(uint64_t a1)
{
  if (!a1)
  {
    if (*(v1 + OBJC_IVAR___HRMedicalRecordTimelineViewController_chartLoaded) == 1)
    {
      sub_1D107C5D0(3, 18);
    }

    else
    {
      *(v1 + OBJC_IVAR___HRMedicalRecordTimelineViewController_chartLoaded) = 1;
    }
  }
}

char *sub_1D107CC74(char *result, uint64_t a2)
{
  v2 = result;
  v3 = &result[OBJC_IVAR___HRMedicalRecordTimelineViewController_ingestionState];
  v4 = *&result[OBJC_IVAR___HRMedicalRecordTimelineViewController_ingestionState];
  v5 = result[OBJC_IVAR___HRMedicalRecordTimelineViewController_ingestionState + 8];
  *v3 = a2;
  v3[8] = 0;
  if ((v5 & 1) != 0 || v4 != a2)
  {
    result = sub_1D10790F4(0);
    if ((v3[8] & 1) == 0 && *v3 == 1)
    {
      [objc_opt_self() cancelPreviousPerformRequestsWithTarget:v2 selector:sel_reloadData object:0];

      return [v2 performSelector:sel_reloadData withObject:0 afterDelay:1.25];
    }
  }

  return result;
}

uint64_t sub_1D107CDB4(_BYTE *a1, id a2)
{
  result = [a2 isFinished];
  v4 = OBJC_IVAR___HRMedicalRecordTimelineViewController_cloudSyncActive;
  v5 = a1[OBJC_IVAR___HRMedicalRecordTimelineViewController_cloudSyncActive];
  a1[OBJC_IVAR___HRMedicalRecordTimelineViewController_cloudSyncActive] = result ^ 1;
  if (result == v5)
  {
    result = sub_1D10790F4(0);
    if (a1[v4] != 1)
    {
      [objc_opt_self() cancelPreviousPerformRequestsWithTarget:a1 selector:sel_reloadData object:0];

      return [a1 performSelector:sel_reloadData withObject:0 afterDelay:1.25];
    }
  }

  return result;
}

_BYTE *sub_1D107CFF8(_BYTE *result)
{
  v1 = OBJC_IVAR___HRMedicalRecordTimelineViewController_cloudSyncActive;
  v2 = result[OBJC_IVAR___HRMedicalRecordTimelineViewController_cloudSyncActive];
  result[OBJC_IVAR___HRMedicalRecordTimelineViewController_cloudSyncActive] = 0;
  if (v2 == 1)
  {
    v3 = result;
    result = sub_1D10790F4(0);
    if (*(v3 + v1) != 1)
    {
      [objc_opt_self() cancelPreviousPerformRequestsWithTarget:v3 selector:sel_reloadData object:0];

      return [v3 performSelector:sel_reloadData withObject:0 afterDelay:1.25];
    }
  }

  return result;
}

void sub_1D107D12C()
{
  if (!qword_1EE06B060)
  {
    sub_1D138D5EC();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EE06B060);
    }
  }
}

uint64_t sub_1D107D198(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_1D107D28C;

  return v5(v2 + 32);
}

uint64_t sub_1D107D28C()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v5 = *v0;

  *v2 = *(v1 + 32);
  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_1D107D3A0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if ((*a1 ^ *a2))
  {
    return 0;
  }

  v3 = *(a1 + 1);
  v4 = *(a2 + 1);
  if (v3)
  {
    if (!v4)
    {
      goto LABEL_18;
    }

    v5 = a1;
    v6 = a2;
    sub_1D106F934(0, &qword_1EC609988);
    v7 = v4;
    v8 = v3;
    v9 = sub_1D1390D8C();

    a1 = v5;
    a2 = v6;
    if ((v9 & 1) == 0)
    {
      goto LABEL_18;
    }
  }

  else if (v4)
  {
    goto LABEL_18;
  }

  v10 = *(a1 + 2);
  v11 = *(a2 + 2);
  if (v10)
  {
    if (!v11)
    {
      goto LABEL_18;
    }

    v12 = a1;
    v13 = a2;
    sub_1D106F934(0, &qword_1EC609980);
    v14 = v11;
    v15 = v10;
    v16 = sub_1D1390D8C();

    a1 = v12;
    a2 = v13;
    if ((v16 & 1) == 0)
    {
      goto LABEL_18;
    }
  }

  else if (v11)
  {
    goto LABEL_18;
  }

  v17 = *(a1 + 3);
  v18 = *(a2 + 3);
  if (v17)
  {
    if (v18)
    {
      v19 = a1;
      v20 = a2;
      sub_1D106F934(0, &qword_1EE06B730);
      v21 = v18;
      v22 = v17;
      v23 = sub_1D1390D8C();

      a1 = v19;
      a2 = v20;
      if (v23)
      {
        goto LABEL_16;
      }
    }

LABEL_18:
    v24 = 0;
    return v24 & 1;
  }

  if (v18)
  {
    goto LABEL_18;
  }

LABEL_16:
  v24 = a1[32] ^ a2[32] ^ 1;
  return v24 & 1;
}

uint64_t sub_1D107D550(void *a1)
{
  v3 = MEMORY[0x1E69695A8];
  v4 = MEMORY[0x1E69E6720];
  sub_1D107F4BC(0, &qword_1EC60D6B0, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v21[-v6 - 8];
  v8 = OBJC_IVAR___HRMedicalRecordTimelineViewController_ontologyConcept;
  v9 = *(v1 + OBJC_IVAR___HRMedicalRecordTimelineViewController_ontologyConcept);
  *(v1 + OBJC_IVAR___HRMedicalRecordTimelineViewController_ontologyConcept) = a1;
  v10 = a1;

  sub_1D1080AD4(v1 + OBJC_IVAR___HRMedicalRecordTimelineViewController_accountId, v7, &qword_1EC60D6B0, v3, v4, sub_1D107F4BC);
  v11 = sub_1D138D5EC();
  LOBYTE(a1) = (*(*(v11 - 8) + 48))(v7, 1, v11) != 1;
  sub_1D1080B48(v7, &qword_1EC60D6B0, v3, v4, sub_1D107F4BC);
  v12 = *(v1 + OBJC_IVAR___HRMedicalRecordTimelineViewController_conceptIdentifier);
  v13 = *(v1 + v8);
  v14 = *(v1 + OBJC_IVAR___HRMedicalRecordTimelineViewController_category);
  v15 = *(v1 + OBJC_IVAR___HRMedicalRecordTimelineViewController_isDisplayingRemovedRecords);
  v21[0] = a1;
  v22 = v12;
  v23 = v13;
  v24 = v14;
  v25 = v15;
  v16 = v14;
  v17 = v12;
  v18 = v13;
  return sub_1D1071FC8(v21);
}

id sub_1D107D710(unint64_t a1, id a2)
{
  if (!a1)
  {
    goto LABEL_6;
  }

  if ((a1 & 0xC000000000000001) == 0)
  {
    v3 = *(a1 + 16);

    if (v3)
    {
      goto LABEL_4;
    }

LABEL_10:

    return MEMORY[0x1E69E7CC0];
  }

  v3 = sub_1D13910DC();
  if (!v3)
  {
    goto LABEL_10;
  }

LABEL_4:
  v4 = sub_1D12A2F80(v3, 0);

  v5 = sub_1D12A12F4(&v18, (v4 + 32), v3, a1);
  sub_1D102CC30();
  if (v5 == v3)
  {
LABEL_29:

    return v4;
  }

  __break(1u);
LABEL_6:
  if (a2)
  {
    v6 = [a2 sampleTypes];
    if (v6)
    {
      v7 = v6;
      sub_1D106F934(0, &qword_1EE06B780);
      v4 = sub_1D139045C();

      return v4;
    }
  }

  result = [objc_opt_self() allSupportedSampleTypes];
  if (result)
  {
    v9 = result;
    sub_1D106F934(0, &qword_1EE06B780);
    v10 = sub_1D139045C();

    v18 = MEMORY[0x1E69E7CC0];
    if (v10 >> 62)
    {
      goto LABEL_27;
    }

    for (i = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1D13910DC())
    {
      v12 = 0;
      while (1)
      {
        if ((v10 & 0xC000000000000001) != 0)
        {
          v13 = MEMORY[0x1D3886B70](v12, v10);
        }

        else
        {
          if (v12 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_26;
          }

          v13 = *(v10 + 8 * v12 + 32);
        }

        v14 = v13;
        v15 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        v16 = [objc_opt_self() unknownRecordType];
        v17 = sub_1D1390D8C();

        if (v17)
        {
        }

        else
        {
          sub_1D13912AC();
          sub_1D13912EC();
          sub_1D13912FC();
          sub_1D13912BC();
        }

        ++v12;
        if (v15 == i)
        {
          v4 = v18;
          goto LABEL_29;
        }
      }

      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      ;
    }

    v4 = MEMORY[0x1E69E7CC0];
    goto LABEL_29;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D107D9D8(void *a1, void *a2, void *a3, void *a4, unint64_t a5, uint64_t a6, uint64_t a7)
{
  v144 = a7;
  v145 = a5;
  v137 = a1;
  v138 = a4;
  v10 = MEMORY[0x1E69E6720];
  sub_1D107F4BC(0, &qword_1EE06A650, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v139 = &v126 - v12;
  sub_1D10817FC();
  v135 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v146 = &v126 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1E69695A8];
  sub_1D107F4BC(0, &qword_1EC60D6B0, MEMORY[0x1E69695A8], v10);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v126 - v17;
  v19 = sub_1D138D5EC();
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v126 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D1080AD4(a6, v18, &qword_1EC60D6B0, v15, v10, sub_1D107F4BC);
  v140 = *(v20 + 48);
  if (v140(v18, 1, v19) == 1)
  {
    sub_1D1080B48(v18, &qword_1EC60D6B0, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720], sub_1D107F4BC);
    v136 = 0;
    v23 = v146;
    if (!a2)
    {
      goto LABEL_7;
    }
  }

  else
  {
    (*(v20 + 32))(v22, v18, v19);
    v24 = objc_opt_self();
    v25 = sub_1D138D5AC();
    v136 = [v24 predicateForRecordsFromClinicalAccountIdentifier_];

    (*(v20 + 8))(v22, v19);
    v23 = v146;
    if (!a2)
    {
      goto LABEL_7;
    }
  }

  v26 = [a2 additionalPredicatesForCategory];
  if (v26)
  {
    v27 = v26;
    sub_1D106F934(0, &qword_1EE06B780);
    sub_1D106F934(0, &qword_1EE06B790);
    v23 = v146;
    sub_1D10809F0(&qword_1EE06B778, &qword_1EE06B780);
    v28 = sub_1D138FFFC();

    goto LABEL_8;
  }

LABEL_7:
  v28 = 0;
LABEL_8:
  v29 = v145;
  v141 = a3;
  v142 = a2;
  if (!v145)
  {
    goto LABEL_53;
  }

  v134 = v20 + 48;
  v132 = a6;
  if ((v145 & 0xC000000000000001) != 0)
  {
    v30 = 0;
    v31 = 0;
    v32 = 0;
    v33 = sub_1D139135C() | 0x8000000000000000;
  }

  else
  {
    v34 = -1 << *(v145 + 32);
    v31 = ~v34;
    v30 = v145 + 64;
    v35 = -v34;
    if (v35 < 64)
    {
      v36 = ~(-1 << v35);
    }

    else
    {
      v36 = -1;
    }

    v32 = v36 & *(v145 + 64);
    v33 = v145;
  }

  v37 = 0;
  v133 = v31;
  v38 = (v31 + 64) >> 6;
  v130 = xmmword_1D139E6E0;
  v131 = v19;
LABEL_16:
  v147 = v28 & 0xC000000000000001;
  v148 = v28;
  v39 = (v28 & 0xFFFFFFFFFFFFFF8);
  if (v28 < 0)
  {
    v39 = v28;
  }

  v143 = v39;
  while ((v33 & 0x8000000000000000) == 0)
  {
    v40 = v37;
    v41 = v32;
    if (!v32)
    {
      while (1)
      {
        v37 = v40 + 1;
        if (__OFADD__(v40, 1))
        {
          break;
        }

        if (v37 >= v38)
        {
          goto LABEL_52;
        }

        v41 = *(v30 + 8 * v37);
        ++v40;
        if (v41)
        {
          goto LABEL_26;
        }
      }

      __break(1u);
LABEL_67:
      __break(1u);
LABEL_68:
      __break(1u);
LABEL_69:
      __break(1u);
LABEL_70:
      sub_1D106F934(0, &qword_1EE06B780);
      result = sub_1D13916CC();
      __break(1u);
      return result;
    }

LABEL_26:
    v32 = (v41 - 1) & v41;
    v42 = (v37 << 9) | (8 * __clz(__rbit64(v41)));
    v43 = *(*(v33 + 56) + v42);
    v44 = *(*(v33 + 48) + v42);
    v45 = v43;
    if (!v44)
    {
      goto LABEL_52;
    }

LABEL_30:
    v49 = v148;
    if (!v148)
    {

      v28 = 0;
      goto LABEL_16;
    }

    if (v147)
    {
      v50 = v44;
      v51 = sub_1D139137C();

      if (v51)
      {
        v149 = v51;
        sub_1D106F934(0, &qword_1EE06B790);
        swift_dynamicCast();
        v52 = v150;
        goto LABEL_19;
      }
    }

    else if (*(v148 + 16))
    {
      v53 = sub_1D129DF14(v44);
      if (v54)
      {
        v52 = *(*(v49 + 56) + 8 * v53);
LABEL_19:
        if (!v52)
        {
          goto LABEL_20;
        }

        v55 = v52;
        sub_1D10817A4(0, &qword_1EE06A4C0, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
        v56 = swift_allocObject();
        *(v56 + 16) = v130;
        *(v56 + 32) = v45;
        *(v56 + 40) = v55;
        sub_1D106F934(0, &qword_1EE06B790);
        v57 = v45;
        v58 = v55;
        v59 = sub_1D139044C();

        v128 = [objc_opt_self() andPredicateWithSubpredicates_];

        v129 = v57;
        if (v147)
        {
          v60 = v143;
          v61 = sub_1D13910DC();
          if (__OFADD__(v61, 1))
          {
            goto LABEL_68;
          }

          v62 = sub_1D12F54B0(v60, v61 + 1);
        }

        else
        {
          v62 = v148;
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v150 = v62;
        v64 = sub_1D129DF14(v44);
        v66 = *(v62 + 16);
        v67 = (v65 & 1) == 0;
        v68 = __OFADD__(v66, v67);
        v69 = v66 + v67;
        if (v68)
        {
          goto LABEL_67;
        }

        v70 = v65;
        v71 = *(v62 + 24);
        v127 = v58;
        if (v71 >= v69)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v76 = v64;
            sub_1D1180B44();
            v64 = v76;
            v73 = v150;
            if (v70)
            {
LABEL_48:
              v74 = v73[7];
              v75 = *(v74 + 8 * v64);
              *(v74 + 8 * v64) = v128;

              v28 = v73;
              goto LABEL_16;
            }

            goto LABEL_50;
          }
        }

        else
        {
          sub_1D1179450(v69, isUniquelyReferenced_nonNull_native);
          v64 = sub_1D129DF14(v44);
          if ((v70 & 1) != (v72 & 1))
          {
            goto LABEL_70;
          }
        }

        v73 = v150;
        if (v70)
        {
          goto LABEL_48;
        }

LABEL_50:
        v73[(v64 >> 6) + 8] |= 1 << v64;
        *(v73[6] + 8 * v64) = v44;
        *(v73[7] + 8 * v64) = v128;

        v77 = v73[2];
        v68 = __OFADD__(v77, 1);
        v78 = v77 + 1;
        if (v68)
        {
          goto LABEL_69;
        }

        v28 = v73;
        v73[2] = v78;
        goto LABEL_16;
      }
    }

LABEL_20:
  }

  v46 = sub_1D139139C();
  if (v46)
  {
    v48 = v47;
    v149 = v46;
    sub_1D106F934(0, &qword_1EE06B780);
    swift_dynamicCast();
    v44 = v150;
    v149 = v48;
    sub_1D106F934(0, &qword_1EE06B790);
    swift_dynamicCast();
    v45 = v150;
    if (v44)
    {
      goto LABEL_30;
    }
  }

LABEL_52:
  sub_1D102CC30();
  a3 = v141;
  a2 = v142;
  v28 = v148;
  v19 = v131;
  a6 = v132;
  v29 = v145;
  v23 = v146;
LABEL_53:
  v79 = v28;
  if (!v28)
  {
    v79 = v29;
  }

  v80 = sub_1D107D710(v79, a2);
  v81 = v135[16];
  sub_1D1080AD4(a6, &v23[v81], &qword_1EC60D6B0, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720], sub_1D107F4BC);
  if (a3)
  {
    sub_1D1080B48(&v23[v81], &qword_1EC60D6B0, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720], sub_1D107F4BC);
    v135 = [a3 rawIdentifier];
    v82 = 3;
    goto LABEL_63;
  }

  if (a2)
  {
    sub_1D1080B48(&v23[v81], &qword_1EC60D6B0, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720], sub_1D107F4BC);
    v135 = 0;
    v82 = 2;
    goto LABEL_63;
  }

  if (v140(&v23[v81], 1, v19) == 1)
  {
    LODWORD(v133) = 0;
    v135 = 0;
    v147 = v80;
    v148 = v28;
    if (!v79)
    {
      goto LABEL_61;
    }

LABEL_64:
    v134 = v79;
  }

  else
  {
    sub_1D1080B48(&v23[v81], &qword_1EC60D6B0, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720], sub_1D107F4BC);
    v135 = 0;
    v82 = 1;
LABEL_63:
    LODWORD(v133) = v82;
    v147 = v80;
    v148 = v28;
    if (v79)
    {
      goto LABEL_64;
    }

LABEL_61:
    v134 = sub_1D109B2FC(MEMORY[0x1E69E7CC0]);
  }

  v83 = a3 == 0;
  LODWORD(v145) = (v140)(a6, 1, v19) != 1;
  LODWORD(v146) = v144 != 0;
  type metadata accessor for TimelinePagingDataSource();
  v84 = swift_allocObject();
  *(v84 + 2) = MEMORY[0x1E69E7CD0];
  v143 = a2;
  v140 = a3;
  v85 = MEMORY[0x1E69E7CC0];
  *(v84 + 3) = sub_1D109B408(MEMORY[0x1E69E7CC0]);
  *(v84 + 4) = 0;
  v86 = OBJC_IVAR____TtC15HealthRecordsUI24TimelinePagingDataSource_oldestSampleDate;
  v87 = sub_1D138D57C();
  (*(*(v87 - 8) + 56))(&v84[v86], 1, 1, v87);
  *&v84[OBJC_IVAR____TtC15HealthRecordsUI24TimelinePagingDataSource_removedRecords] = v85;
  v84[OBJC_IVAR____TtC15HealthRecordsUI24TimelinePagingDataSource_hasRemovedRecordsSection] = 0;
  v84[OBJC_IVAR____TtC15HealthRecordsUI24TimelinePagingDataSource_fetching] = 0;
  *&v84[OBJC_IVAR____TtC15HealthRecordsUI24TimelinePagingDataSource_reloadTrigger] = 0;
  *&v84[OBJC_IVAR____TtC15HealthRecordsUI24TimelinePagingDataSource_perTypeFilter] = 0;
  sub_1D138F48C();
  v88 = OBJC_IVAR____TtC15HealthRecordsUI24TimelinePagingDataSource_changeObservers;
  sub_1D106F934(0, &qword_1EC609AA8);
  v89 = sub_1D1390F2C();
  v90 = objc_allocWithZone(MEMORY[0x1E696C4F8]);
  v91 = sub_1D139012C();
  v92 = [v90 initWithName:v91 loggingCategory:v89];

  *&v84[v88] = v92;
  v93 = OBJC_IVAR____TtC15HealthRecordsUI24TimelinePagingDataSource_queryReturned;
  LOBYTE(v150) = 0;
  sub_1D1081080(0, &qword_1EE06A738);
  swift_allocObject();
  *&v84[v93] = sub_1D138F6EC();
  v94 = OBJC_IVAR____TtC15HealthRecordsUI24TimelinePagingDataSource_dateFormatter;
  v95 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
  [v95 setDateStyle_];
  [v95 setTimeStyle_];

  *&v84[v94] = v95;
  v96 = &v84[OBJC_IVAR____TtC15HealthRecordsUI24TimelinePagingDataSource_identifier];
  *v96 = 0xD000000000000023;
  *(v96 + 1) = 0x80000001D139E8D0;
  v98 = v137;
  v97 = v138;
  *&v84[OBJC_IVAR____TtC15HealthRecordsUI24TimelinePagingDataSource_healthStore] = v137;
  v84[OBJC_IVAR____TtC15HealthRecordsUI24TimelinePagingDataSource_timelineStyle] = v133;
  v99 = &v84[OBJC_IVAR____TtC15HealthRecordsUI24TimelinePagingDataSource_conceptIdentifier];
  v100 = v134;
  v101 = v135;
  *v99 = v135;
  v99[8] = v83;
  *&v84[OBJC_IVAR____TtC15HealthRecordsUI24TimelinePagingDataSource_userDomainConcept] = v97;
  *&v84[OBJC_IVAR____TtC15HealthRecordsUI24TimelinePagingDataSource_perTypePredicates] = v100;
  v102 = v136;
  *&v84[OBJC_IVAR____TtC15HealthRecordsUI24TimelinePagingDataSource_globalFilter] = v136;
  v103 = objc_allocWithZone(MEMORY[0x1E696C1C0]);
  v104 = v102;
  v137 = v98;
  v105 = v97;

  v106 = [v103 init];
  type metadata accessor for TimelineRecordFetcher();
  swift_allocObject();
  v107 = v105;
  v108 = v104;

  v110 = sub_1D130A840(v106, v147, v101, v83, v97, v100, v102, 0, v109);
  *&v84[OBJC_IVAR____TtC15HealthRecordsUI24TimelinePagingDataSource_repository] = v110;
  type metadata accessor for TimelineViewDataProvider();
  v111 = swift_allocObject();
  v112 = v137;
  *(v111 + 16) = v137;
  *(v111 + 24) = 0;
  *(v111 + 32) = v145;
  v113 = v142;
  *(v111 + 40) = v141;
  *(v111 + 48) = 0;
  *(v111 + 56) = v113;
  *&v84[OBJC_IVAR____TtC15HealthRecordsUI24TimelinePagingDataSource_viewDataProvider] = v111;
  v114 = v146;
  *(v111 + 64) = v146;
  v84[OBJC_IVAR____TtC15HealthRecordsUI24TimelinePagingDataSource_showRemovedRecordsOnTimeline] = v114;
  v115 = *(v110 + 120);
  v116 = v140;
  v117 = v143;
  v118 = v112;
  [v115 registerObserver_];
  v119 = sub_1D13905DC();
  v120 = v139;
  (*(*(v119 - 8) + 56))(v139, 1, 1, v119);
  v121 = swift_allocObject();
  swift_weakInit();
  sub_1D13905AC();

  v122 = sub_1D139059C();
  v123 = swift_allocObject();
  v124 = MEMORY[0x1E69E85E0];
  v123[2] = v122;
  v123[3] = v124;
  v123[4] = v121;

  sub_1D107877C(0, 0, v120, &unk_1D139EAA8, v123);

  return v84;
}

char *sub_1D107E9F4(void *a1, void *a2, uint64_t a3, void *a4, void *a5, uint64_t a6, uint64_t a7, unint64_t a8, unsigned __int8 a9)
{
  v67 = a8;
  v68 = a7;
  v77 = a6;
  v65 = a1;
  v66 = a5;
  LODWORD(v75) = a9;
  v14 = MEMORY[0x1E69695A8];
  v15 = MEMORY[0x1E69E6720];
  v72 = MEMORY[0x1E69E6720];
  v73 = MEMORY[0x1E69695A8];
  sub_1D107F4BC(0, &qword_1EC60D6B0, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v76 = &v61 - v17;
  v78 = sub_1D138D5EC();
  v18 = *(v78 - 8);
  MEMORY[0x1EEE9AC00](v78);
  v61 = &v61 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = v9 + OBJC_IVAR___HRMedicalRecordTimelineViewController_overrideTitle;
  *v20 = 0;
  v20[1] = 0;
  *(v9 + OBJC_IVAR___HRMedicalRecordTimelineViewController_displayItemProvider) = 0;
  *(v9 + OBJC_IVAR___HRMedicalRecordTimelineViewController_observer) = 0;
  *(v9 + OBJC_IVAR___HRMedicalRecordTimelineViewController_account) = 0;
  v74 = OBJC_IVAR___HRMedicalRecordTimelineViewController_ontologyConcept;
  *(v9 + OBJC_IVAR___HRMedicalRecordTimelineViewController_ontologyConcept) = 0;
  *(v9 + OBJC_IVAR___HRMedicalRecordTimelineViewController_chartLoaded) = 0;
  *(v9 + OBJC_IVAR___HRMedicalRecordTimelineViewController____lazy_storage___contentStatusView) = 0;
  *(v9 + OBJC_IVAR___HRMedicalRecordTimelineViewController____lazy_storage___clinicalAccountStore) = 0;
  *(v9 + OBJC_IVAR___HRMedicalRecordTimelineViewController____lazy_storage___dataProvider) = 0;
  *(v9 + OBJC_IVAR___HRMedicalRecordTimelineViewController____lazy_storage___accountStateProvider) = 0;
  *(v9 + OBJC_IVAR___HRMedicalRecordTimelineViewController____lazy_storage___dataSourceProvider) = 0;
  *(v9 + OBJC_IVAR___HRMedicalRecordTimelineViewController____lazy_storage___dataSource) = 0;
  *(v9 + OBJC_IVAR___HRMedicalRecordTimelineViewController_cloudSyncObserver) = 0;
  *(v9 + OBJC_IVAR___HRMedicalRecordTimelineViewController_queryReturnedCancellable) = 0;
  *(v9 + OBJC_IVAR___HRMedicalRecordTimelineViewController_accountStateCancellable) = 0;
  *(v9 + OBJC_IVAR___HRMedicalRecordTimelineViewController_ingestionStateCancellable) = 0;
  *(v9 + OBJC_IVAR___HRMedicalRecordTimelineViewController_indexManagerStateCancellable) = 0;
  v21 = v9 + OBJC_IVAR___HRMedicalRecordTimelineViewController_ingestionState;
  *v21 = 0;
  v21[8] = 1;
  v22 = v9 + OBJC_IVAR___HRMedicalRecordTimelineViewController_indexManagerState;
  *v22 = 0;
  v22[8] = 1;
  v23 = v9 + OBJC_IVAR___HRMedicalRecordTimelineViewController_gradientView;
  sub_1D138E37C();
  v24 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v25 = MEMORY[0x1E69A3658];
  *v23 = v24;
  v23[1] = v25;
  *(v9 + OBJC_IVAR___HRMedicalRecordTimelineViewController_showGradientBackgroundForAllRecordsRoom) = 0;
  *(v9 + OBJC_IVAR___HRMedicalRecordTimelineViewController_gradientSubscriber) = 0;
  *(v9 + OBJC_IVAR___HRMedicalRecordTimelineViewController_profile) = a1;
  *(v9 + OBJC_IVAR___HRMedicalRecordTimelineViewController_category) = a2;
  v71 = sub_1D107F4BC;
  v64 = a3;
  sub_1D1080AD4(a3, v9 + OBJC_IVAR___HRMedicalRecordTimelineViewController_accountId, &qword_1EC60D6B0, v14, v15, sub_1D107F4BC);
  v26 = a4;
  *(v9 + OBJC_IVAR___HRMedicalRecordTimelineViewController_conceptIdentifier) = a4;
  v28 = v66;
  v27 = v67;
  *(v9 + OBJC_IVAR___HRMedicalRecordTimelineViewController_userDomainConcept) = v66;
  *(v9 + OBJC_IVAR___HRMedicalRecordTimelineViewController_additionalPredicatesPerSampleType) = v27;
  v29 = v68;
  LOBYTE(v23) = v68 != 0;
  *(v9 + OBJC_IVAR___HRMedicalRecordTimelineViewController_isDisplayingRemovedRecords) = v68 != 0;
  *(v9 + OBJC_IVAR___HRMedicalRecordTimelineViewController_showExportButton) = v75;
  *(v9 + OBJC_IVAR___HRMedicalRecordTimelineViewController_cloudSyncActive) = 0;
  *(v9 + OBJC_IVAR___HRMedicalRecordTimelineViewController_preloadedRemovedRecords) = v29;
  v62 = v18;
  v30 = *(v18 + 48);
  v69 = v18 + 48;
  v70 = v30;
  v31 = v30(a3, 1, v78) != 1;
  v32 = *&v74[v9];
  v33 = v9 + OBJC_IVAR___HRMedicalRecordTimelineViewController_displayState;
  *v33 = v31;
  *(v33 + 1) = v26;
  *(v33 + 2) = v32;
  v34 = v26;
  *(v33 + 3) = a2;
  v33[32] = v23;
  v35 = objc_opt_self();
  v36 = v32;
  v37 = a2;
  v63 = v26;
  v75 = v37;
  v38 = v65;
  v74 = v28;

  v39 = v64;
  v40 = [v35 clearColor];
  v81 = sub_1D138E90C();
  v82 = MEMORY[0x1E69A3750];
  __swift_allocate_boxed_opaque_existential_1(&v80);
  sub_1D138E8FC();
  sub_1D102CC18(&v80, v9 + OBJC_IVAR___HRMedicalRecordTimelineViewController_gradientColorProvider);
  v41 = [v38 healthStore];
  v42 = sub_1D107D9D8(v41, a2, v34, v28, v27, v39, v29);

  *(v9 + OBJC_IVAR___HRMedicalRecordTimelineViewController_timelinePagedDataSource) = v42;
  v43 = [objc_allocWithZone(MEMORY[0x1E69DC840]) init];
  v44 = type metadata accessor for MedicalRecordTimelineViewController();
  v79.receiver = v9;
  v79.super_class = v44;
  v45 = objc_msgSendSuper2(&v79, sel_initWithCollectionViewLayout_, v43);

  v46 = v45;
  sub_1D1072338();

  sub_1D138F6CC();
  v47 = v78;

  v48 = BYTE8(v80);
  v49 = &v46[OBJC_IVAR___HRMedicalRecordTimelineViewController_ingestionState];
  *v49 = v80;
  v49[8] = v48;

  sub_1D138F6CC();
  v50 = v76;

  v51 = v80;
  v52 = BYTE8(v80);
  if (v80 <= 1)
  {
    v53 = 1;
  }

  else
  {
    v53 = v80;
  }

  if (!BYTE8(v80))
  {
    v51 = v53;
  }

  v54 = &v46[OBJC_IVAR___HRMedicalRecordTimelineViewController_indexManagerState];
  *v54 = v51;
  v54[8] = v52;
  sub_1D1080AD4(v39, v50, &qword_1EC60D6B0, v73, v72, v71);
  if (v70(v50, 1, v47) != 1)
  {
    v56 = v62;
    v57 = v61;
    (*(v62 + 32))(v61, v50, v47);
    sub_1D107B54C(v57);
    (*(v56 + 8))(v57, v47);
    if (v34)
    {
      goto LABEL_8;
    }

LABEL_10:
    sub_1D107A01C();
    v55 = v75;
    goto LABEL_11;
  }

  sub_1D1080B48(v50, &qword_1EC60D6B0, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720], sub_1D107F4BC);
  if (!v34)
  {
    goto LABEL_10;
  }

LABEL_8:
  sub_1D107AEBC();

  v55 = v63;
LABEL_11:

  v58 = MEMORY[0x1E69695A8];
  v59 = MEMORY[0x1E69E6720];
  sub_1D1080B48(v77, &qword_1EC60D6B0, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720], sub_1D107F4BC);
  sub_1D1080B48(v39, &qword_1EC60D6B0, v58, v59, sub_1D107F4BC);
  return v46;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t type metadata accessor for MedicalRecordTimelineViewController()
{
  result = qword_1EC6098A8;
  if (!qword_1EC6098A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D107F244()
{
  v1 = (v0 + OBJC_IVAR___HRMedicalRecordTimelineViewController_overrideTitle);
  *v1 = 0;
  v1[1] = 0;
  *(v0 + OBJC_IVAR___HRMedicalRecordTimelineViewController_displayItemProvider) = 0;
  *(v0 + OBJC_IVAR___HRMedicalRecordTimelineViewController_observer) = 0;
  *(v0 + OBJC_IVAR___HRMedicalRecordTimelineViewController_account) = 0;
  *(v0 + OBJC_IVAR___HRMedicalRecordTimelineViewController_ontologyConcept) = 0;
  *(v0 + OBJC_IVAR___HRMedicalRecordTimelineViewController_chartLoaded) = 0;
  *(v0 + OBJC_IVAR___HRMedicalRecordTimelineViewController____lazy_storage___contentStatusView) = 0;
  *(v0 + OBJC_IVAR___HRMedicalRecordTimelineViewController____lazy_storage___clinicalAccountStore) = 0;
  *(v0 + OBJC_IVAR___HRMedicalRecordTimelineViewController____lazy_storage___dataProvider) = 0;
  *(v0 + OBJC_IVAR___HRMedicalRecordTimelineViewController____lazy_storage___accountStateProvider) = 0;
  *(v0 + OBJC_IVAR___HRMedicalRecordTimelineViewController____lazy_storage___dataSourceProvider) = 0;
  *(v0 + OBJC_IVAR___HRMedicalRecordTimelineViewController____lazy_storage___dataSource) = 0;
  *(v0 + OBJC_IVAR___HRMedicalRecordTimelineViewController_cloudSyncObserver) = 0;
  *(v0 + OBJC_IVAR___HRMedicalRecordTimelineViewController_queryReturnedCancellable) = 0;
  *(v0 + OBJC_IVAR___HRMedicalRecordTimelineViewController_accountStateCancellable) = 0;
  *(v0 + OBJC_IVAR___HRMedicalRecordTimelineViewController_ingestionStateCancellable) = 0;
  *(v0 + OBJC_IVAR___HRMedicalRecordTimelineViewController_indexManagerStateCancellable) = 0;
  v2 = v0 + OBJC_IVAR___HRMedicalRecordTimelineViewController_ingestionState;
  *v2 = 0;
  *(v2 + 8) = 1;
  v3 = v0 + OBJC_IVAR___HRMedicalRecordTimelineViewController_indexManagerState;
  *v3 = 0;
  *(v3 + 8) = 1;
  v4 = (v0 + OBJC_IVAR___HRMedicalRecordTimelineViewController_gradientView);
  sub_1D138E37C();
  v5 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v6 = MEMORY[0x1E69A3658];
  *v4 = v5;
  v4[1] = v6;
  *(v0 + OBJC_IVAR___HRMedicalRecordTimelineViewController_showGradientBackgroundForAllRecordsRoom) = 0;
  *(v0 + OBJC_IVAR___HRMedicalRecordTimelineViewController_gradientSubscriber) = 0;
  sub_1D13913BC();
  __break(1u);
}

uint64_t sub_1D107F3EC()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 bundleIdentifier];

  if (v1)
  {
    v2 = sub_1D139016C();
    v4 = v3;

    if (v2 == 0xD000000000000015 && 0x80000001D13B83C0 == v4)
    {
      LOBYTE(v1) = 1;
    }

    else
    {
      LOBYTE(v1) = sub_1D139162C();
    }
  }

  return v1 & 1;
}

void sub_1D107F4BC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_1D107F520()
{
  result = qword_1EC609870;
  if (!qword_1EC609870)
  {
    sub_1D1080EA4(255, &qword_1EC60D0D0);
    result = swift_getExistentialMetatypeMetadata();
    atomic_store(result, &qword_1EC609870);
  }

  return result;
}

uint64_t sub_1D107F580(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1D107F5C8()
{
  if (!qword_1EC609890)
  {
    sub_1D107F4BC(255, &qword_1EC60D6B0, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC609890);
    }
  }
}

uint64_t sub_1D107F65C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D107F6BC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1D10819BC;

  return sub_1D10780EC(a1, v4, v5, v7, v6);
}

uint64_t sub_1D107F77C(uint64_t a1)
{
  v3 = sub_1D138FECC();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D138FF0C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = aBlock - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D106F934(0, &qword_1EE06B760);
  v11 = sub_1D1390A7C();
  v12 = swift_allocObject();
  *(v12 + 16) = v1;
  *(v12 + 24) = a1;
  aBlock[4] = sub_1D1080D64;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D10CBD3C;
  aBlock[3] = &block_descriptor_127;
  v13 = _Block_copy(aBlock);
  v14 = v1;

  sub_1D138FEEC();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1D107F580(&qword_1EE06B7E0, MEMORY[0x1E69E7F60]);
  sub_1D107F4BC(0, &qword_1EE06B7C0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_1D1080CD4();
  sub_1D139103C();
  MEMORY[0x1D3886400](0, v10, v6, v13);
  _Block_release(v13);

  (*(v4 + 8))(v6, v3);
  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_1D107FA68(void *a1)
{
  v3 = sub_1D138FECC();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1D138FF0C();
  v7 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D106F934(0, &qword_1EE06B760);
  v10 = sub_1D1390A7C();
  v11 = swift_allocObject();
  *(v11 + 16) = v1;
  *(v11 + 24) = a1;
  aBlock[4] = sub_1D1080D5C;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D10CBD3C;
  aBlock[3] = &block_descriptor_121;
  v12 = _Block_copy(aBlock);
  v13 = v1;
  v14 = a1;

  sub_1D138FEEC();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1D107F580(&qword_1EE06B7E0, MEMORY[0x1E69E7F60]);
  sub_1D107F4BC(0, &qword_1EE06B7C0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_1D1080CD4();
  sub_1D139103C();
  MEMORY[0x1D3886400](0, v9, v6, v12);
  _Block_release(v12);

  (*(v4 + 8))(v6, v3);
  return (*(v7 + 8))(v9, v17);
}

uint64_t sub_1D107FD58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v17 = a3;
  v5 = sub_1D138FECC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1D138FF0C();
  v9 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D106F934(0, &qword_1EE06B760);
  v12 = sub_1D1390A7C();
  v13 = swift_allocObject();
  *(v13 + 16) = v3;
  aBlock[4] = a2;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D10CBD3C;
  aBlock[3] = v17;
  v14 = _Block_copy(aBlock);
  v15 = v3;

  sub_1D138FEEC();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1D107F580(&qword_1EE06B7E0, MEMORY[0x1E69E7F60]);
  sub_1D107F4BC(0, &qword_1EE06B7C0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_1D1080CD4();
  sub_1D139103C();
  MEMORY[0x1D3886400](0, v11, v8, v14);
  _Block_release(v14);

  (*(v6 + 8))(v8, v5);
  return (*(v9 + 8))(v11, v18);
}

void sub_1D108003C()
{
  sub_1D107F4BC(319, &qword_1EC60D6B0, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1D10804F0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 33))
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

uint64_t sub_1D108054C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_1D10805B8()
{
  result = qword_1EC609978;
  if (!qword_1EC609978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC609978);
  }

  return result;
}

uint64_t sub_1D108060C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D10819BC;

  return sub_1D107D198(a1, v4);
}

uint64_t sub_1D10806C4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D108077C;

  return sub_1D107D198(a1, v4);
}

uint64_t sub_1D108077C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

void sub_1D1080870()
{
  if (!qword_1EC609998)
  {
    sub_1D10810E0(255, &qword_1EE06A760, &qword_1EE06B5D0, &type metadata for AccountStateChange, MEMORY[0x1E695BF70]);
    sub_1D106F934(255, &qword_1EE06B760);
    sub_1D108096C();
    sub_1D10809F0(&qword_1EE06A610, &qword_1EE06B760);
    v0 = sub_1D138F5FC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC609998);
    }
  }
}

unint64_t sub_1D108096C()
{
  result = qword_1EC6099A8;
  if (!qword_1EC6099A8)
  {
    sub_1D10810E0(255, &qword_1EE06A760, &qword_1EE06B5D0, &type metadata for AccountStateChange, MEMORY[0x1E695BF70]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6099A8);
  }

  return result;
}

uint64_t sub_1D10809F0(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1D106F934(255, a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1D1080A3C(void *a1, void *a2)
{
  if (a1)
  {
  }
}

void sub_1D1080A7C(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  if (!*a2)
  {
    sub_1D106F934(255, a3);
    v4 = sub_1D1390F3C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1D1080AD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = a6(0, a3, a4, a5);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

uint64_t sub_1D1080B48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5(0);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t __swift_destroy_boxed_opaque_existential_1Tm(uint64_t a1)
{
  v1 = *(*(a1 + 24) - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t objectdestroy_2Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

void sub_1D1080C34()
{
  if (!qword_1EC6099D8)
  {
    v0 = sub_1D138F49C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC6099D8);
    }
  }
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1D1080CD4()
{
  result = qword_1EE06B7B0;
  if (!qword_1EE06B7B0)
  {
    sub_1D107F4BC(255, &qword_1EE06B7C0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE06B7B0);
  }

  return result;
}

uint64_t sub_1D1080DEC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D10819BC;

  return sub_1D11E5C10(a1, v4);
}

uint64_t sub_1D1080EA4(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

void sub_1D1080F00()
{
  if (!qword_1EC6099F0)
  {
    sub_1D1080A7C(255, &qword_1EC6099F8, &qword_1EC609A00);
    v0 = sub_1D138F6DC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC6099F0);
    }
  }
}

void sub_1D1080F80()
{
  if (!qword_1EC609A08)
  {
    sub_1D1080A7C(255, &qword_1EC6099C8, &qword_1EC609980);
    v0 = sub_1D138F6DC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC609A08);
    }
  }
}

void sub_1D1081000()
{
  if (!qword_1EC609A10)
  {
    sub_1D1080A7C(255, &qword_1EC609A18, &qword_1EC609A20);
    v0 = sub_1D138F6DC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC609A10);
    }
  }
}

void sub_1D1081080(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_1D138F6DC();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_1D10810E0(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, void, void))
{
  if (!*a2)
  {
    sub_1D10817A4(255, a3, a4, MEMORY[0x1E69E6720]);
    v9 = a5(a1, v8, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7410]);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1D108116C()
{
  if (!qword_1EC609A48)
  {
    sub_1D1081288(255, &unk_1EE06A720, &qword_1EE06A5C8, type metadata accessor for HKConceptIndexManagerState);
    sub_1D106F934(255, &qword_1EE06B760);
    sub_1D1081420(&qword_1EC609A50, &unk_1EE06A720, &qword_1EE06A5C8, type metadata accessor for HKConceptIndexManagerState);
    sub_1D10809F0(&qword_1EE06A610, &qword_1EE06B760);
    v0 = sub_1D138F5FC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC609A48);
    }
  }
}

void sub_1D1081288(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    sub_1D107F4BC(255, a3, a4, MEMORY[0x1E69E6720]);
    v5 = sub_1D138F6DC();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1D1081304()
{
  if (!qword_1EC609A58)
  {
    sub_1D1081288(255, &qword_1EE06A730, &unk_1EE06A5D8, type metadata accessor for HKClinicalIngestionState);
    sub_1D106F934(255, &qword_1EE06B760);
    sub_1D1081420(&qword_1EC609A60, &qword_1EE06A730, &unk_1EE06A5D8, type metadata accessor for HKClinicalIngestionState);
    sub_1D10809F0(&qword_1EE06A610, &qword_1EE06B760);
    v0 = sub_1D138F5FC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC609A58);
    }
  }
}

uint64_t sub_1D1081420(unint64_t *a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_1D1081288(255, a2, a3, a4);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1D1081470()
{
  if (!qword_1EC609A68)
  {
    sub_1D1081080(255, &qword_1EE06A738);
    sub_1D106F934(255, &qword_1EE06B760);
    sub_1D1081550();
    sub_1D10809F0(&qword_1EE06A610, &qword_1EE06B760);
    v0 = sub_1D138F5FC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC609A68);
    }
  }
}

unint64_t sub_1D1081550()
{
  result = qword_1EC609A70;
  if (!qword_1EC609A70)
  {
    sub_1D1081080(255, &qword_1EE06A738);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC609A70);
  }

  return result;
}

void *__swift_project_boxed_opaque_existential_1Tm(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_1D108164C(void *a1, void *a2)
{
  v5 = *(sub_1D138D5EC() - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *(v2 + 16);

  return sub_1D107B75C(a1, a2, v8, v2 + v6, v7);
}

void sub_1D10816FC()
{
  v1 = *(sub_1D138D5EC() - 8);
  v2 = (*(v1 + 80) + 40) & ~*(v1 + 80);
  v3 = v0[2];
  v4 = v0[3];
  v5 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));
  v6 = v0[4];

  sub_1D107BB4C(v3, v4, v6, v0 + v2, v5);
}

void sub_1D10817A4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1D10817FC()
{
  if (!qword_1EC609AA0)
  {
    sub_1D1080A7C(255, &qword_1EC6099C0, &qword_1EC609988);
    sub_1D1080A7C(255, &qword_1EC6099D0, &qword_1EE06B730);
    sub_1D107F4BC(255, &qword_1EC60D6B0, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EC609AA0);
    }
  }
}

uint64_t sub_1D10818E4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1D108077C;

  return sub_1D10DEE54(a1, v4, v5, v6);
}

void sub_1D1081A60()
{
  v11.receiver = v0;
  v11.super_class = type metadata accessor for CategorySelectionViewController();
  objc_msgSendSuper2(&v11, sel_viewDidLoad);
  v1 = [v0 tableView];
  if (!v1)
  {
    __break(1u);
    goto LABEL_6;
  }

  v2 = v1;
  type metadata accessor for TextWithIconCell();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v4 = sub_1D139012C();
  [v2 registerClass:ObjCClassFromMetadata forCellReuseIdentifier:v4];

  v5 = [v0 tableView];
  if (!v5)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v6 = v5;
  type metadata accessor for HeaderWithRightAlignedButton();
  v7 = swift_getObjCClassFromMetadata();
  v8 = sub_1D139012C();
  [v6 registerClass:v7 forHeaderFooterViewReuseIdentifier:v8];

  v9 = [v0 tableView];
  if (v9)
  {
    v10 = v9;
    [v9 setSectionHeaderTopPadding_];

    return;
  }

LABEL_7:
  __break(1u);
}

char *sub_1D1081C24(void *a1)
{
  v3 = v1;
  v5 = sub_1D139012C();
  v6 = sub_1D138D7DC();
  v7 = [a1 dequeueReusableCellWithIdentifier:v5 forIndexPath:v6];

  type metadata accessor for TextWithIconCell();
  v8 = swift_dynamicCastClassUnconditional();
  v9 = *(v3 + OBJC_IVAR____TtC15HealthRecordsUI31CategorySelectionViewController_allCategories);
  v10 = sub_1D138D7FC();
  if ((v10 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_31;
  }

  if (v10 >= *(v9 + 16))
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v11 = v9 + 72 * v10;
  v12 = *(v11 + 80);
  v13 = *(v11 + 96);
  v14 = *(v11 + 48);
  v54 = *(v11 + 64);
  v15 = *(v11 + 32);
  v56 = v13;
  v55 = v12;
  v53[0] = v15;
  v53[1] = v14;
  v16 = v54;
  v17 = v15;
  v18 = OBJC_IVAR____TtC15HealthRecordsUI31CategorySelectionViewController_selectedCategories;
  swift_beginAccess();
  v19 = *(v3 + v18);

  sub_1D1082914(v53, &v52);
  v20 = sub_1D1347280(v53, v19);

  v21 = sub_1D121A20C();
  v22 = sub_1D139012C();
  [v21 setText_];

  v23 = sub_1D121A164();
  [v23 setAccessibilityIgnoresInvertColors_];

  LOBYTE(v52) = v17;
  v24 = DisplayCategory.Kind.hkDisplayCategory.getter();
  if (v24)
  {
    v25 = v24;
    v26 = *&v8[OBJC_IVAR____TtC15HealthRecordsUI16TextWithIconCell____lazy_storage___iconView];
    v27 = [v25 systemImageName];
    if (!v27)
    {
      sub_1D139016C();
      v27 = sub_1D139012C();
    }

    v28 = [objc_opt_self() systemImageNamed_];

    if (v28)
    {
      v29 = [v25 multiColorImageConfiguration];
      if (!v29)
      {
        v29 = [objc_opt_self() configurationPreferringMulticolor];
      }

      v30 = [v28 imageByApplyingSymbolConfiguration_];
    }

    else
    {
      v30 = 0;
    }

    [v26 setImage_];
  }

  v31 = v7;
  if (v20)
  {
    v32 = sub_1D10A508C();
  }

  else
  {
    v32 = sub_1D10A51C8();
  }

  v33 = v32;
  [v8 setAccessoryView_];

  sub_1D1082CC4(0, &qword_1EE06B560, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_1D139EAB0;
  *(v34 + 32) = 0x6F6974704F464450;
  *(v34 + 40) = 0xEA0000000000736ELL;
  strcpy((v34 + 48), "CategoryCell");
  *(v34 + 61) = 0;
  *(v34 + 62) = -5120;
  *&v52 = sub_1D138D7FC();
  sub_1D1082D14();
  *(v34 + 64) = sub_1D139100C();
  *(v34 + 72) = v35;
  v36 = sub_1D139044C();
  v37 = HKUIJoinStringsForAutomationIdentifier();

  if (v37)
  {
    v38 = sub_1D139016C();
    v40 = v39;
  }

  else
  {
    v38 = 0;
    v40 = 0;
  }

  v41 = &v8[OBJC_IVAR____TtC15HealthRecordsUI16TextWithIconCell_baseAccessibilityIdentifier];
  *v41 = v38;
  v41[1] = v40;

  sub_1D121A2F0();
  v42 = [v8 accessoryView];
  if (v42)
  {
    v43 = v42;
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1D139E700;
    v45 = 0x7463656C65736544;
    if (v20)
    {
      v45 = 0x64657463656C6553;
    }

    v46 = 0xE800000000000000;
    if ((v20 & 1) == 0)
    {
      v46 = 0xEA00000000006465;
    }

    *(inited + 32) = v45;
    *(inited + 40) = v46;
    *&v52 = v34;
    sub_1D1121FC4(inited);
    v47 = sub_1D139044C();

    v48 = HKUIJoinStringsForAutomationIdentifier();

    [v43 setAccessibilityIdentifier_];
  }

  else
  {
  }

  v52 = v16;
  v2 = v31;

  MEMORY[0x1D3885C10](8236, 0xE200000000000000);
  if (v20)
  {
    if (qword_1EE06AD00 == -1)
    {
      goto LABEL_29;
    }

    goto LABEL_32;
  }

  if (qword_1EE06AD00 != -1)
  {
LABEL_32:
    swift_once();
  }

LABEL_29:
  v49 = sub_1D138D1CC();
  MEMORY[0x1D3885C10](v49);

  v50 = sub_1D139012C();

  [v8 setAccessibilityLabel_];
  sub_1D1080D98(v53);

  return v8;
}

unint64_t sub_1D1082418(void *a1)
{
  v3 = sub_1D138D7DC();
  [a1 deselectRowAtIndexPath:v3 animated:1];

  v4 = *(v1 + OBJC_IVAR____TtC15HealthRecordsUI31CategorySelectionViewController_allCategories);
  result = sub_1D138D7FC();
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (result >= *(v4 + 16))
  {
LABEL_8:
    __break(1u);
    return result;
  }

  v6 = v4 + 72 * result;
  v14[0] = *(v6 + 32);
  v7 = *(v6 + 48);
  v8 = *(v6 + 64);
  v9 = *(v6 + 80);
  v15 = *(v6 + 96);
  v14[2] = v8;
  v14[3] = v9;
  v14[1] = v7;
  v10 = OBJC_IVAR____TtC15HealthRecordsUI31CategorySelectionViewController_selectedCategories;
  swift_beginAccess();
  v11 = *(v1 + v10);
  sub_1D1082914(v14, v13);

  v12 = sub_1D1347280(v14, v11);

  swift_beginAccess();
  if (v12)
  {
    sub_1D113641C(v14, v13);
    swift_endAccess();
    sub_1D1082970(v13);
  }

  else
  {
    sub_1D1082914(v14, v13);
    sub_1D10E3E38(v13, v14);
    swift_endAccess();
    sub_1D1080D98(v13);
  }

  sub_1D1082734();
  return sub_1D1080D98(v14);
}

char *sub_1D1082694()
{
  v1 = OBJC_IVAR____TtC15HealthRecordsUI31CategorySelectionViewController_selectedCategories;
  swift_beginAccess();
  if (*(*(v0 + v1) + 16) == *(*(v0 + OBJC_IVAR____TtC15HealthRecordsUI31CategorySelectionViewController_allCategories) + 16))
  {
    *(v0 + v1) = MEMORY[0x1E69E7CD0];
  }

  else
  {

    v3 = sub_1D12DE968(v2);

    *(v0 + v1) = v3;
  }

  return sub_1D1082734();
}

char *sub_1D1082734()
{
  result = [v0 tableView];
  if (result)
  {
    v2 = result;
    [result reloadData];

    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v3 = result;
      v4 = OBJC_IVAR____TtC15HealthRecordsUI31CategorySelectionViewController_selectedCategories;
      swift_beginAccess();
      *(*&v3[OBJC_IVAR___HRPDFConfigurationViewController_configurationDataSource] + 72) = *&v0[v4];

      sub_1D11B2198();
      return swift_unknownObjectRelease();
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1D108285C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CategorySelectionViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1D1082970(uint64_t a1)
{
  sub_1D1082CC4(0, &qword_1EC609AC8, &type metadata for DisplayCategory, MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D10829F0(void *a1)
{
  v2 = sub_1D139012C();
  v3 = [a1 dequeueReusableHeaderFooterViewWithIdentifier_];

  if (!v3)
  {
    return 0;
  }

  type metadata accessor for HeaderWithRightAlignedButton();
  v4 = swift_dynamicCastClass();
  if (v4)
  {
    if (qword_1EE06AD00 != -1)
    {
      swift_once();
    }

    v5 = sub_1D138D1CC();
    v6 = (v4 + OBJC_IVAR____TtC15HealthRecordsUI28HeaderWithRightAlignedButton_headerText);
    *v6 = v5;
    v6[1] = v7;

    v8 = *(v4 + OBJC_IVAR____TtC15HealthRecordsUI28HeaderWithRightAlignedButton_headerLabel);

    v9 = sub_1D139012C();

    [v8 setText_];

    swift_beginAccess();
    v10 = sub_1D138D1CC();
    v11 = (v4 + OBJC_IVAR____TtC15HealthRecordsUI28HeaderWithRightAlignedButton_buttonText);
    *v11 = v10;
    v11[1] = v12;

    sub_1D1390DDC();

    *(v4 + OBJC_IVAR____TtC15HealthRecordsUI28HeaderWithRightAlignedButton_baseAccessibilityIdentifier) = xmmword_1D139EAC0;

    sub_1D127854C();
    *(v4 + OBJC_IVAR____TtC15HealthRecordsUI28HeaderWithRightAlignedButton_delegate + 8) = &off_1F4D06340;
    swift_unknownObjectWeakAssign();
  }

  else
  {
  }

  return v4;
}

void sub_1D1082CC4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_1D1082D14()
{
  result = qword_1EE06B7D0;
  if (!qword_1EE06B7D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE06B7D0);
  }

  return result;
}

uint64_t Box.__allocating_init(value:)(uint64_t a1)
{
  v2 = swift_allocObject();
  Box.init(value:)(a1);
  return v2;
}

char *Box.init(value:)(uint64_t a1)
{
  v12 = *v1;
  v13 = a1;
  v11 = sub_1D1390A6C();
  v2 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D138FF0C();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = sub_1D1390A0C();
  MEMORY[0x1EEE9AC00](v6);
  v10[1] = sub_1D108310C();
  v7 = MEMORY[0x1E69E8030];
  sub_1D1083614(0, &qword_1EE06A4D0, MEMORY[0x1E69E8030], MEMORY[0x1E69E6F90]);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1D139E700;
  sub_1D13909FC();
  v14 = v8;
  sub_1D10835CC(&qword_1EE06B770, MEMORY[0x1E69E8030]);
  sub_1D1083614(0, &qword_1EE06B7A8, v7, MEMORY[0x1E69E62F8]);
  sub_1D1083158(&qword_1EE06B7A0, &qword_1EE06B7A8, v7);
  sub_1D139103C();
  sub_1D138FEEC();
  (*(v2 + 104))(v4, *MEMORY[0x1E69E8090], v11);
  *(v1 + 2) = sub_1D1390ABC();
  (*(*(*(v12 + 80) - 8) + 32))(&v1[*(*v1 + 96)], v13);
  return v1;
}

unint64_t sub_1D108310C()
{
  result = qword_1EE06B760;
  if (!qword_1EE06B760)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE06B760);
  }

  return result;
}

uint64_t sub_1D1083158(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_1D1083614(255, a2, a3, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D1083218(void (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v5 = *(*a3 + 80);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00]();
  v8 = &v12 - v7;
  v10 = *(v9 + 96);
  swift_beginAccess();
  (*(v6 + 16))(v8, a3 + v10, v5);
  a1(v8);
  return (*(v6 + 8))(v8, v5);
}

uint64_t Box.write<A>(with:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v15 = a1;
  v16 = a2;
  v17 = a4;
  v7 = sub_1D138FECC();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00]();
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1E69E7F60];
  sub_1D1083614(0, &qword_1EE06A4D8, MEMORY[0x1E69E7F60], MEMORY[0x1E69E6F90]);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1D139E700;
  sub_1D138FEBC();
  v22 = v12;
  sub_1D10835CC(&qword_1EE06B7E0, MEMORY[0x1E69E7F60]);
  sub_1D1083614(0, &qword_1EE06B7C0, v11, MEMORY[0x1E69E62F8]);
  sub_1D1083158(&qword_1EE06B7B0, &qword_1EE06B7C0, v11);
  sub_1D139103C();
  v18 = a3;
  v19 = v15;
  v20 = v16;
  v21 = v5;
  sub_1D1390A8C();
  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_1D10835CC(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1D1083614(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1D1083678()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 40);
  v3 = *(*v2 + 96);
  swift_beginAccess();
  v1(v2 + v3);
  return swift_endAccess();
}

id *Box.deinit()
{
  v1 = *v0;

  (*(*(v1[10] - 8) + 8))(v0 + *(*v0 + 12));
  return v0;
}

uint64_t Box.__deallocating_deinit()
{
  Box.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1D10837E0()
{
  result = swift_checkMetadataState();
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

uint64_t sub_1D10838F8(double a1)
{
  v2 = v1;
  v4 = sub_1D138F0BC();
  v41 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [objc_opt_self() mainScreen];
  [v7 scale];
  v9 = v8;

  [v2 extent];
  v11 = v9 * (a1 / v10);
  [v2 extent];
  CGAffineTransformMakeScale(&v42, v11, v9 * (a1 / v12));
  v13 = [v2 imageByApplyingTransform_];
  v14 = [objc_allocWithZone(MEMORY[0x1E695F620]) initWithOptions_];
  v15 = *MEMORY[0x1E695F910];
  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  sub_1D109BD38(MEMORY[0x1E69E7CC0]);
  type metadata accessor for CIImageRepresentationOption(0);
  sub_1D1083D00();
  v17 = sub_1D138FFEC();

  v18 = [v14 PNGRepresentationOfImage:v13 format:v15 colorSpace:DeviceRGB options:v17];

  if (!v18)
  {
    sub_1D138F06C();
    v26 = v2;
    v27 = sub_1D138F0AC();
    v28 = sub_1D13907FC();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v39 = COERCE_DOUBLE(swift_slowAlloc());
      v42.a = v39;
      *v29 = 136315138;
      v30 = v26;
      v31 = [v30 description];
      v40 = v4;
      v32 = v31;
      v33 = sub_1D139016C();
      v35 = v34;

      v36 = sub_1D11DF718(v33, v35, &v42);

      *(v29 + 4) = v36;
      _os_log_impl(&dword_1D101F000, v27, v28, "%s: failed to create QR code image data", v29, 0xCu);
      v37 = v39;
      __swift_destroy_boxed_opaque_existential_1Tm(*&v39);
      MEMORY[0x1D38882F0](*&v37, -1, -1);
      MEMORY[0x1D38882F0](v29, -1, -1);

      (*(v41 + 8))(v6, v40);
    }

    else
    {

      (*(v41 + 8))(v6, v4);
    }

    return 0;
  }

  v19 = sub_1D138D3DC();
  v21 = v20;

  v22 = objc_allocWithZone(MEMORY[0x1E69DCAB8]);
  sub_1D1083D58(v19, v21);
  v23 = sub_1D138D3CC();
  v24 = [v22 initWithData:v23 scale:v9];

  result = sub_1D1083DAC(v19, v21);
  if (v24)
  {
    sub_1D1083DAC(v19, v21);

    return v24;
  }

  __break(1u);
  return result;
}

unint64_t sub_1D1083D00()
{
  result = qword_1EC609578;
  if (!qword_1EC609578)
  {
    type metadata accessor for CIImageRepresentationOption(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC609578);
  }

  return result;
}

uint64_t sub_1D1083D58(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_1D1083DAC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_1D1083E00(uint64_t a1)
{
  v1[3] = a1;
  v2 = sub_1D138F0BC();
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();
  v3 = sub_1D13901DC();
  v1[7] = v3;
  v1[8] = *(v3 - 8);
  v1[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1083F48, 0, 0);
}

uint64_t sub_1D1083F48()
{
  v1 = sub_1D139012C();
  v2 = [objc_opt_self() filterWithName_];

  if (!v2)
  {
    v38 = objc_opt_self();
    v39 = sub_1D139012C();
    [v38 hk:3 error:v39 description:?];

    swift_willThrow();
LABEL_39:

    v49 = v0[1];

    return v49();
  }

  v3 = v0[3];
  v4 = sub_1D139012C();
  v5 = sub_1D139012C();
  [v2 setValue:v4 forKey:v5];

  v56 = MEMORY[0x1E69E7CC0];
  v0[2] = 0;
  v6 = [v3 orderedSegmentsWithError_];
  v7 = v0[2];
  if (!v6)
  {
    v40 = v7;
    sub_1D138D2BC();

    swift_willThrow();
    goto LABEL_39;
  }

  v8 = v6;
  sub_1D1084790();
  v9 = sub_1D139045C();
  v10 = v7;

  if (v9 >> 62)
  {
    goto LABEL_30;
  }

  v12 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  for (i = v2; v12; i = v2)
  {
    v13 = 0;
    v52 = (v0[8] + 8);
    v51 = (v0[5] + 8);
    *&v11 = 134217984;
    v50 = v11;
    v55 = v0;
    while ((v9 & 0xC000000000000001) != 0)
    {
      v14 = MEMORY[0x1D3886B70](v13, v9);
      v15 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        goto LABEL_28;
      }

LABEL_9:
      v54 = v15;
      v16 = v0[9];
      v17 = v0[7];
      v18 = v14;
      v19 = [v14 fullQRCodeValue];
      sub_1D139016C();

      sub_1D13901CC();
      v20 = sub_1D139017C();
      v22 = v21;

      (*v52)(v16, v17);
      if (v22 >> 60 == 15)
      {

        v43 = objc_opt_self();
        v44 = sub_1D139012C();
        [v43 hk:3 error:v44 description:?];

        swift_willThrow();
        v0 = v55;
        goto LABEL_39;
      }

      v23 = sub_1D138D3CC();
      v24 = sub_1D139012C();
      [i setValue:v23 forKey:v24];

      v25 = [i outputImage];
      if (!v25)
      {
        goto LABEL_26;
      }

      v26 = v25;
      [v26 extent];
      if (v27 <= 105.0)
      {
      }

      else
      {
        sub_1D138F06C();
        v28 = v26;
        v29 = sub_1D138F0AC();
        v30 = sub_1D13907EC();

        if (os_log_type_enabled(v29, v30))
        {
          v31 = swift_slowAlloc();
          *v31 = v50;
          [v28 extent];
          *(v31 + 4) = v32;
          _os_log_impl(&dword_1D101F000, v29, v30, "Generated QR code is larger than v22 (%f), re-generating with L correction level", v31, 0xCu);
          MEMORY[0x1D38882F0](v31, -1, -1);
        }

        v33 = v55[6];
        v34 = v55[4];

        (*v51)(v33, v34);
        v35 = sub_1D139012C();
        v36 = sub_1D139012C();
        [i setValue:v35 forKey:v36];

        v26 = [i outputImage];
        if (!v26)
        {
LABEL_26:

          v41 = objc_opt_self();
          v42 = sub_1D139012C();
          [v41 hk:3 error:v42 description:?];

          swift_willThrow();
          sub_1D10847DC(v20, v22);

          v0 = v55;
          goto LABEL_39;
        }
      }

      v2 = v26;
      MEMORY[0x1D3885D90]();
      if (*((v56 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v56 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1D13904BC();
      }

      sub_1D13904FC();
      sub_1D10847DC(v20, v22);

      v0 = v55;
      v37 = v56;
      ++v13;
      if (v54 == v12)
      {
        goto LABEL_32;
      }
    }

    if (v13 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_29;
    }

    v14 = *(v9 + 8 * v13 + 32);
    v15 = v13 + 1;
    if (!__OFADD__(v13, 1))
    {
      goto LABEL_9;
    }

LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    v12 = sub_1D13910DC();
  }

  v37 = MEMORY[0x1E69E7CC0];
LABEL_32:

  if (v37 >> 62)
  {
    if (sub_1D13910DC())
    {
      goto LABEL_34;
    }

    goto LABEL_38;
  }

  if (!*((v37 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_38:

    v47 = objc_opt_self();
    v48 = sub_1D139012C();
    [v47 hk:3 error:v48 description:?];

    swift_willThrow();
    goto LABEL_39;
  }

LABEL_34:

  v45 = v0[1];

  return v45(v37);
}

unint64_t sub_1D1084790()
{
  result = qword_1EC609AD0;
  if (!qword_1EC609AD0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC609AD0);
  }

  return result;
}

uint64_t sub_1D10847DC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1D1083DAC(a1, a2);
  }

  return a1;
}

void sub_1D1084888()
{
  if (qword_1EE069F90 != -1)
  {
    swift_once();
  }

  v0 = qword_1EE069F98;

  v1 = sub_1D138D1CC();
  v3 = v2;

  qword_1EC609AD8 = v1;
  unk_1EC609AE0 = v3;
}

void sub_1D1084960()
{
  if (qword_1EE069F90 != -1)
  {
    swift_once();
  }

  v0 = qword_1EE069F98;

  v1 = sub_1D138D1CC();
  v3 = v2;

  qword_1EC609AE8 = v1;
  unk_1EC609AF0 = v3;
}

void sub_1D1084A38()
{
  if (qword_1EE069F90 != -1)
  {
    swift_once();
  }

  v0 = qword_1EE069F98;

  v1 = sub_1D138D1CC();
  v3 = v2;

  qword_1EC609AF8 = v1;
  unk_1EC609B00 = v3;
}

void sub_1D1084B10()
{
  if (qword_1EE069F90 != -1)
  {
    swift_once();
  }

  v0 = qword_1EE069F98;

  v1 = sub_1D138D1CC();
  v3 = v2;

  qword_1EC609B08 = v1;
  unk_1EC609B10 = v3;
}

void sub_1D1084BE8()
{
  if (qword_1EE069F90 != -1)
  {
    swift_once();
  }

  v0 = qword_1EE069F98;

  v1 = sub_1D138D1CC();
  v3 = v2;

  qword_1EC609B18 = v1;
  unk_1EC609B20 = v3;
}

void sub_1D1084CC0()
{
  if (qword_1EE069F90 != -1)
  {
    swift_once();
  }

  v0 = qword_1EE069F98;

  v1 = sub_1D138D1CC();
  v3 = v2;

  qword_1EC609B28 = v1;
  unk_1EC609B30 = v3;
}

void sub_1D1084D98()
{
  if (qword_1EE069F90 != -1)
  {
    swift_once();
  }

  v0 = qword_1EE069F98;

  v1 = sub_1D138D1CC();
  v3 = v2;

  qword_1EC609B38 = v1;
  unk_1EC609B40 = v3;
}

void sub_1D1084E70()
{
  if (qword_1EE069F90 != -1)
  {
    swift_once();
  }

  v0 = qword_1EE069F98;

  v1 = sub_1D138D1CC();
  v3 = v2;

  qword_1EC609B48 = v1;
  unk_1EC609B50 = v3;
}

void sub_1D1084F48()
{
  if (qword_1EE069F90 != -1)
  {
    swift_once();
  }

  v0 = qword_1EE069F98;

  v1 = sub_1D138D1CC();
  v3 = v2;

  qword_1EC609B58 = v1;
  unk_1EC609B60 = v3;
}

id sub_1D1085020()
{
  v1 = qword_1EC609B90;
  v2 = *(v0 + qword_1EC609B90);
  if (v2)
  {
    v3 = *(v0 + qword_1EC609B90);
  }

  else
  {
    v4 = [objc_allocWithZone(WDBrandLogoView) initWithSize_];
    [v4 setTranslatesAutoresizingMaskIntoConstraints_];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_1D10850B4()
{
  v1 = qword_1EC609B98;
  v2 = *(v0 + qword_1EC609B98);
  if (v2)
  {
    v3 = *(v0 + qword_1EC609B98);
  }

  else
  {
    v4 = sub_1D1085118(v0);
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_1D1085118(uint64_t a1)
{
  v2 = [objc_opt_self() accessoryButton];
  v3 = objc_opt_self();
  v4 = v2;
  v5 = [v3 systemBlueColor];
  [v4 setTintColor_];

  if (qword_1EC608B90 != -1)
  {
    swift_once();
  }

  v6 = sub_1D139012C();
  [v4 setTitle:v6 forState:0];

  [v4 addTarget:a1 action:sel_learnMoreTapped_ forControlEvents:64];
  return v4;
}

uint64_t sub_1D1085238(char *a1, void *a2, uint64_t a3)
{
  v4 = v3;
  sub_1D1086E1C();
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1D139E710;
  *(v8 + 32) = sub_1D139016C();
  *(v8 + 40) = v9;
  strcpy((v8 + 48), "ChosenToShare");
  *(v8 + 62) = -4864;
  v10 = sub_1D139044C();

  v11 = HKUIJoinStringsForAutomationIdentifier();

  if (v11)
  {
    v12 = sub_1D139016C();
    v14 = v13;
  }

  else
  {
    v12 = 0;
    v14 = 0;
  }

  v15 = (v4 + qword_1EC609B80);
  *v15 = v12;
  v15[1] = v14;
  *(v4 + qword_1EC609B88) = 0;
  *(v4 + qword_1EC609B90) = 0;
  *(v4 + qword_1EC609B98) = 0;
  *(v4 + qword_1EC609B68) = a1;
  *(v4 + qword_1EC609B70) = a2;
  *(v4 + qword_1EC609B78) = a3;
  v16 = *&a1[OBJC_IVAR___WDClinicalAccountOnboardingSession_profile];
  v53 = a1;
  v17 = a2;

  v18 = [v16 healthStore];
  v19 = objc_allocWithZone(type metadata accessor for ClinicalSharingOnboardingDataTypeSelectionConfirmationViewController(0));
  type metadata accessor for ClinicalSharingOnboardingSelectedDataTypesDataSource();
  swift_allocObject();

  v20 = v18;
  *&v19[qword_1EC609BB0] = sub_1D111C6E8(v20, a3);

  v21 = sub_1D138EC4C();

  v22 = qword_1EC608B80;
  v23 = v21;
  if (v22 != -1)
  {
    swift_once();
  }

  v24 = qword_1EC608B88;

  if (v24 != -1)
  {
    swift_once();
  }

  v25 = sub_1D138EB3C();
  sub_1D1085A30();
  v26 = sub_1D1085020();
  if (qword_1EC608DC0 != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&dword_1EC60E248);
  os_unfair_lock_unlock(&dword_1EC60E248);
  v27 = [v17 title];
  v28 = sub_1D139016C();
  v30 = v29;

  if (qword_1EC608EB8 != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&dword_1EC610468);

  os_unfair_lock_unlock(&dword_1EC610468);
  swift_beginAccess();
  swift_beginAccess();
  v31 = sub_1D1378CC0(v28, v30, 48.0);
  swift_endAccess();
  swift_endAccess();

  v32 = [v31 scaledToTargetSize_];

  [v26 setImage_];
  v33 = [*(*&v25[qword_1EC609B68] + OBJC_IVAR___WDClinicalAccountOnboardingSession_profile) healthStore];
  v34 = [objc_allocWithZone(MEMORY[0x1E696C1A8]) initWithHealthStore_];

  v35 = [objc_allocWithZone(WDClinicalSourcesDataProvider) initWithHealthRecordsStore_];
  v36 = sub_1D1085020();
  [v36 fetchBrandable:v17 dataProvider:v35];

  v37 = qword_1EC608B98;
  v38 = v25;
  if (v37 != -1)
  {
    swift_once();
  }

  v39 = sub_1D139012C();
  result = swift_allocObject();
  *(result + 16) = xmmword_1D139E710;
  v41 = &v38[qword_1EC609B80];
  v42 = *&v38[qword_1EC609B80 + 8];
  if (!v42)
  {
    __break(1u);
LABEL_22:
    __break(1u);
    return result;
  }

  *(result + 32) = *v41;
  *(result + 40) = v42;
  *(result + 48) = 0x6572616853;
  *(result + 56) = 0xE500000000000000;

  v43 = sub_1D139044C();

  v44 = HKUIJoinStringsForAutomationIdentifier();

  if (qword_1EC608BA0 != -1)
  {
    swift_once();
  }

  v45 = sub_1D139012C();
  result = swift_allocObject();
  *(result + 16) = xmmword_1D139E710;
  v46 = *(v41 + 1);
  if (!v46)
  {
    goto LABEL_22;
  }

  v47 = result;
  v48 = *v41;

  v47[4] = v48;
  v47[5] = v46;
  v47[6] = 0x72616853746E6F44;
  v47[7] = 0xE900000000000065;
  v49 = sub_1D139044C();

  v50 = HKUIJoinStringsForAutomationIdentifier();

  if (*&v53[OBJC_IVAR___WDClinicalAccountOnboardingSession_context] != 2)
  {
  }

  v51 = [v38 headerView];

  v52 = sub_1D10850B4();
  [v51 addAccessoryButton_];

  return v38;
}

void sub_1D10859D4(void *a1)
{
  v2.receiver = a1;
  v2.super_class = type metadata accessor for ClinicalSharingOnboardingDataTypeSelectionViewController(0);
  v1 = v2.receiver;
  objc_msgSendSuper2(&v2, sel_viewDidLoad);
  sub_1D1085CA8();
}

void sub_1D1085A30()
{
  v1 = [v0 headerView];
  v2 = [v1 customIconContainerView];

  if (v2)
  {
    [v2 setClipsToBounds_];
    v3 = sub_1D1085020();
    [v2 addSubview_];

    v4 = qword_1EC609B90;
    v5 = [*&v0[qword_1EC609B90] widthAnchor];
    v6 = [v5 constraintEqualToConstant_];

    [v6 setActive_];
    v7 = [*&v0[v4] heightAnchor];
    v8 = [v7 constraintEqualToConstant_];

    [v8 setActive_];
    v9 = [*&v0[v4] centerXAnchor];
    v10 = [v2 centerXAnchor];
    v11 = [v9 constraintEqualToAnchor_];

    [v11 setActive_];
    v12 = [*&v0[v4] centerYAnchor];
    v13 = [v2 centerYAnchor];
    v14 = [v12 constraintEqualToAnchor_];

    [v14 setActive_];
  }
}

void sub_1D1085CA8()
{
  v1 = [v0 navigationItem];
  v2 = [v1 leftBarButtonItem];

  if (v2)
  {
    sub_1D1086E1C();
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_1D139E710;
    v4 = *&v0[qword_1EC609B80 + 8];
    if (!v4)
    {
LABEL_12:
      __break(1u);
      goto LABEL_13;
    }

    *(v3 + 32) = *&v0[qword_1EC609B80];
    *(v3 + 40) = v4;
    *(v3 + 48) = 1801675074;
    *(v3 + 56) = 0xE400000000000000;

    v5 = sub_1D139044C();

    v6 = HKUIJoinStringsForAutomationIdentifier();

    [v2 setAccessibilityIdentifier_];
  }

  v7 = [v0 navigationItem];
  v8 = [v7 rightBarButtonItem];

  if (v8)
  {
    sub_1D1086E1C();
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_1D139E710;
    v10 = *&v0[qword_1EC609B80 + 8];
    if (!v10)
    {
LABEL_13:
      __break(1u);
      return;
    }

    *(v9 + 32) = *&v0[qword_1EC609B80];
    *(v9 + 40) = v10;
    *(v9 + 48) = 0x6C65636E6143;
    *(v9 + 56) = 0xE600000000000000;

    v11 = sub_1D139044C();

    v12 = HKUIJoinStringsForAutomationIdentifier();

    [v8 setAccessibilityIdentifier_];
  }

  v13 = sub_1D10850B4();
  sub_1D1086E1C();
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1D139E710;
  v15 = *&v0[qword_1EC609B80 + 8];
  if (!v15)
  {
    __break(1u);
    goto LABEL_12;
  }

  *(v14 + 32) = *&v0[qword_1EC609B80];
  *(v14 + 40) = v15;
  *(v14 + 48) = 0x726F4D6E7261654CLL;
  *(v14 + 56) = 0xE900000000000065;

  v16 = sub_1D139044C();

  v17 = HKUIJoinStringsForAutomationIdentifier();

  [v13 setAccessibilityIdentifier_];
}

void sub_1D1085F6C()
{
  v1 = *&v0[qword_1EC609B68];
  v2 = *&v0[qword_1EC609B70];
  v3 = *&v0[qword_1EC609B78];
  v4 = objc_allocWithZone(type metadata accessor for ClinicalSharingOnboardingSharingHealthDataViewController());
  v5 = v1;
  v6 = v2;

  v7 = sub_1D12A94D8(v5, v6, v3);
  v8 = [v0 navigationController];
  if (v8)
  {
    v9 = v8;
    [v8 pushViewController:v7 animated:1];
  }

  v10 = *&v5[OBJC_IVAR___WDClinicalAccountOnboardingSession_sharingClient];
  v11 = sub_1D139012C();
  sub_1D11496D4(*&v5[OBJC_IVAR___WDClinicalAccountOnboardingSession_context]);
  v12 = sub_1D139012C();

  v14[4] = nullsub_1;
  v14[5] = 0;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 1107296256;
  v14[2] = sub_1D112A218;
  v14[3] = &block_descriptor_5;
  v13 = _Block_copy(v14);
  [v10 submitOnboardingAnalyticsForStepIdentifier:v11 context:v12 completion:v13];
  _Block_release(v13);
}

void sub_1D1086128(void *a1)
{
  v1 = a1;
  sub_1D1085F6C();
}

void sub_1D1086170()
{
  if (qword_1EC608BA8 != -1)
  {
    swift_once();
  }

  if (qword_1EC608BB0 != -1)
  {
    swift_once();
  }

  v1 = sub_1D139012C();
  v2 = sub_1D139012C();
  v3 = [objc_opt_self() alertControllerWithTitle:v1 message:v2 preferredStyle:1];

  if (qword_1EC608BB8 != -1)
  {
    swift_once();
  }

  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v5 = sub_1D139012C();
  v11[4] = sub_1D1086EC4;
  v11[5] = v4;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 1107296256;
  v11[2] = sub_1D10CB11C;
  v11[3] = &block_descriptor_0;
  v6 = _Block_copy(v11);

  v7 = objc_opt_self();
  v8 = [v7 actionWithTitle:v5 style:2 handler:v6];
  _Block_release(v6);

  if (qword_1EC608BC0 != -1)
  {
    swift_once();
  }

  v9 = sub_1D139012C();
  v10 = [v7 actionWithTitle:v9 style:0 handler:0];

  [v3 addAction_];
  [v3 addAction_];
  [v0 presentViewController:v3 animated:1 completion:0];
}

void sub_1D108646C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    [Strong dismissViewControllerAnimated:1 completion:0];
  }
}

void sub_1D10864D0(void *a1)
{
  v1 = a1;
  sub_1D1086170();
}

void sub_1D108652C()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_1D138F0BC();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D139012C();
  v17 = [objc_opt_self() presenterForPrivacySplashWithIdentifier_];

  if (v17)
  {
    [v17 setPresentingViewController_];
    [v17 present];
    v8 = v17;
  }

  else
  {
    sub_1D138F06C();
    v9 = sub_1D138F0AC();
    v10 = sub_1D13907FC();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v18[0] = v12;
      v18[1] = ObjectType;
      *v11 = 136446466;
      swift_getMetatypeMetadata();
      v13 = sub_1D13901EC();
      v15 = sub_1D11DF718(v13, v14, v18);

      *(v11 + 4) = v15;
      *(v11 + 12) = 2082;
      *(v11 + 14) = sub_1D11DF718(0xD00000000000001ELL, 0x80000001D13B8C20, v18);
      _os_log_impl(&dword_1D101F000, v9, v10, "[%{public}s]: Could not show privacy splash for %{public}s", v11, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1D38882F0](v12, -1, -1);
      MEMORY[0x1D38882F0](v11, -1, -1);
    }

    (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_1D10867C4(void *a1)
{
  swift_unknownObjectRetain();
  v2 = a1;
  sub_1D139101C();
  swift_unknownObjectRelease();
  sub_1D108652C();

  return __swift_destroy_boxed_opaque_existential_1Tm(&v4);
}

void sub_1D1086854()
{

  v1 = *(v0 + qword_1EC609B98);
}

void sub_1D1086900(uint64_t a1)
{

  v2 = *(a1 + qword_1EC609B98);
}

uint64_t sub_1D10869C8(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D1086AAC()
{
  v6.receiver = v0;
  v6.super_class = type metadata accessor for ClinicalSharingOnboardingDataTypeSelectionConfirmationViewController(0);
  objc_msgSendSuper2(&v6, sel_viewDidLoad);
  v1 = [v0 collectionView];
  if (v1)
  {
    v2 = v1;
    v3 = [objc_opt_self() systemBackgroundColor];
    [v2 setBackgroundColor_];

    v4 = [v0 collectionView];
    if (v4)
    {
      v5 = v4;
      [v4 setPreservesSuperviewLayoutMargins_];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_1D1086B8C(void *a1)
{
  v1 = a1;
  sub_1D1086AAC();
}

void sub_1D1086BD4()
{
  v1 = v0;
  sub_1D138EC6C();
  v2 = sub_1D138EC7C();
  v2();
  v3 = [v0 collectionView];
  if (!v3)
  {
    __break(1u);
    goto LABEL_9;
  }

  v4 = v3;
  sub_1D138EB6C();
  sub_1D13908CC();

  v5 = [v1 collectionView];
  if (!v5)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v6 = v5;
  type metadata accessor for ClinicalSharingSelectableAuthorizationCategoryCell();
  sub_1D1086E6C();
  sub_1D13908AC();

  v7 = [v1 collectionView];
  if (!v7)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v8 = v7;
  sub_1D138E08C();
  sub_1D13908AC();

  v9 = [v1 collectionView];
  if (!v9)
  {
LABEL_11:
    __break(1u);
    return;
  }

  sub_1D138E71C();
  sub_1D13908CC();
}

id sub_1D1086DC4(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void sub_1D1086E1C()
{
  if (!qword_1EE06B560)
  {
    v0 = sub_1D13915DC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE06B560);
    }
  }
}

unint64_t sub_1D1086E6C()
{
  result = qword_1EC609BC8;
  if (!qword_1EC609BC8)
  {
    type metadata accessor for ClinicalSharingSelectableAuthorizationCategoryCell();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC609BC8);
  }

  return result;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1D1086F48()
{
  v2 = v0;
  v53.receiver = v0;
  v53.super_class = type metadata accessor for SignedClinicalDataMultiRecordViewController();
  objc_msgSendSuper2(&v53, sel_viewDidLoad);
  if (qword_1EC608CD0 != -1)
  {
    swift_once();
  }

  sub_1D138D1CC();
  v3 = sub_1D139012C();

  [v2 setTitle_];

  v4 = [v2 tableView];
  if (!v4)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v5 = v4;
  [v4 setAllowsSelection_];

  v6 = [v2 tableView];
  if (!v6)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v7 = v6;
  type metadata accessor for RecordPrimaryTitleCell();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = sub_1D139012C();
  [v7 registerClass:ObjCClassFromMetadata forCellReuseIdentifier:v1];

  v9 = [v2 tableView];
  if (!v9)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v10 = v9;
  type metadata accessor for RecordDetailItemCell();
  v11 = swift_getObjCClassFromMetadata();
  v1 = sub_1D139012C();
  [v10 registerClass:v11 forCellReuseIdentifier:v1];

  v12 = [v2 tableView];
  if (v12)
  {
    v13 = v12;
    type metadata accessor for RecordReferenceRangeCell();
    v14 = swift_getObjCClassFromMetadata();
    v15 = sub_1D139012C();
    [v13 registerClass:v14 forCellReuseIdentifier:v15];

    aBlock[0] = sub_1D11131F4(v16);
    v1 = 0;
    sub_1D10886B4(aBlock);
    v17 = aBlock[0];
    if (aBlock[0] < 0 || (aBlock[0] & 0x4000000000000000) != 0)
    {
      v18 = sub_1D13910DC();
      if (v18)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v18 = *(aBlock[0] + 16);
      if (v18)
      {
LABEL_10:
        if (v18 >= 1)
        {
          v19 = 0;
          v48 = v17 & 0xC000000000000001;
          v49 = *&v2[OBJC_IVAR____TtC15HealthRecordsUI43SignedClinicalDataMultiRecordViewController_profile];
          v46 = v17;
          v47 = v2;
          v45 = v18;
          do
          {
            if (v48)
            {
              v20 = MEMORY[0x1D3886B70](v19, v17);
            }

            else
            {
              v20 = *(v17 + 8 * v19 + 32);
            }

            v21 = v20;
            v50 = swift_allocObject();
            *(v50 + 16) = MEMORY[0x1E69E7CC0];
            v22 = [objc_allocWithZone(WDMedicalRecordDisplayItem) init];
            v23 = [v21 meaningfulDateTitle];
            v24 = sub_1D139016C();
            v26 = v25;

            [v22 setDisplayItemType_];
            v27 = [v21 preferredDisplayName];
            [v22 setTitle_];

            v28 = HIBYTE(v26) & 0xF;
            if ((v26 & 0x2000000000000000) == 0)
            {
              v28 = v24 & 0xFFFFFFFFFFFFLL;
            }

            v51 = v21;
            if (v28)
            {
              if (qword_1EE06AD00 != -1)
              {
                swift_once();
              }

              sub_1D138D1CC();
              sub_1D1089A04(0, &qword_1EE06B080, sub_1D10898CC, MEMORY[0x1E69E6F90]);
              v29 = swift_allocObject();
              *(v29 + 16) = xmmword_1D139E710;
              v30 = MEMORY[0x1E69E6158];
              *(v29 + 56) = MEMORY[0x1E69E6158];
              v31 = sub_1D1089930();
              *(v29 + 64) = v31;
              *(v29 + 32) = v24;
              *(v29 + 40) = v26;
              v32 = [v21 meaningfulDateString];
              v33 = sub_1D139016C();
              v35 = v34;

              *(v29 + 96) = v30;
              *(v29 + 104) = v31;
              *(v29 + 72) = v33;
              *(v29 + 80) = v35;
              sub_1D13901AC();

              v17 = v46;
              v2 = v47;
              v18 = v45;
            }

            else
            {

              v36 = [v21 meaningfulDateString];
              sub_1D139016C();
            }

            v37 = sub_1D139012C();

            [v22 setSubtitle_];

            swift_beginAccess();
            v38 = v22;
            MEMORY[0x1D3885D90]();
            if (*((*(v50 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v50 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_1D13904BC();
            }

            ++v19;
            sub_1D13904FC();
            swift_endAccess();
            v39 = [v49 healthRecordsStore];
            v40 = [v49 conceptStore];
            v41 = swift_allocObject();
            *(v41 + 16) = v50;
            *(v41 + 24) = v2;
            aBlock[4] = sub_1D1089984;
            aBlock[5] = v41;
            aBlock[0] = MEMORY[0x1E69E9820];
            aBlock[1] = 1107296256;
            aBlock[2] = sub_1D10B6840;
            aBlock[3] = &block_descriptor_1;
            v42 = _Block_copy(aBlock);

            v43 = v2;

            [v51 fetchDetailItemsWithHealthRecordsStore:v39 conceptStore:v40 completion:v42];
            _Block_release(v42);
          }

          while (v18 != v19);
        }

        __break(1u);
        goto LABEL_29;
      }
    }
  }

LABEL_32:
  __break(1u);

  __break(1u);
  return result;
}

void sub_1D10876B0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1D138FECC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &aBlock[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D138FF0C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &aBlock[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();

  sub_1D11220E0(v12);
  swift_endAccess();
  swift_beginAccess();
  sub_1D106F934(0, &qword_1EC609BE8);

  v13 = sub_1D139044C();

  v14 = [objc_opt_self() displayItemGroupWithDisplayItems_];

  if (v14)
  {
    v15 = OBJC_IVAR____TtC15HealthRecordsUI43SignedClinicalDataMultiRecordViewController_displayGroups;
    v16 = swift_beginAccess();
    MEMORY[0x1D3885D90](v16);
    if (*((*(a3 + v15) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a3 + v15) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v21 = *((*(a3 + v15) & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_1D13904BC();
    }

    sub_1D13904FC();
    swift_endAccess();
    sub_1D106F934(0, &qword_1EE06B760);
    v17 = sub_1D1390A7C();
    v18 = swift_allocObject();
    *(v18 + 16) = a3;
    aBlock[4] = sub_1D10899A4;
    aBlock[5] = v18;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1D10CBD3C;
    aBlock[3] = &block_descriptor_12;
    v19 = _Block_copy(aBlock);
    v20 = a3;

    sub_1D138FEEC();
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_1D10899AC();
    sub_1D1089A04(0, &qword_1EE06B7C0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
    sub_1D1080CD4();
    sub_1D139103C();
    MEMORY[0x1D3886400](0, v11, v7, v19);
    _Block_release(v19);

    (*(v5 + 8))(v7, v4);
    (*(v9 + 8))(v11, v8);
  }

  else
  {
    __break(1u);
  }
}

void sub_1D1087A94(void *a1)
{
  v1 = [a1 tableView];
  if (v1)
  {
    v2 = v1;
    [v1 reloadData];
  }

  else
  {
    __break(1u);
  }
}

void sub_1D1087C78(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = sub_1D138F0BC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D138D81C();
  v9 = OBJC_IVAR____TtC15HealthRecordsUI43SignedClinicalDataMultiRecordViewController_displayGroups;
  v10 = swift_beginAccess();
  v11 = *(v1 + v9);
  if ((v11 & 0xC000000000000001) == 0)
  {
    if ((v8 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v8 < *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v12 = *(v11 + 8 * v8 + 32);

      v13 = v12;
      goto LABEL_5;
    }

    __break(1u);
    goto LABEL_32;
  }

  v13 = MEMORY[0x1D3886B70](v8, v11);
LABEL_5:
  v14 = v13;
  v15 = [v13 displayItems];

  if (!v15)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  sub_1D106F934(0, &qword_1EC609BE8);
  v8 = sub_1D139045C();

  v10 = sub_1D138D7FC();
  if ((v8 & 0xC000000000000001) != 0)
  {
LABEL_32:
    v16 = MEMORY[0x1D3886B70](v10, v8);
    goto LABEL_10;
  }

  if ((v10 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_34;
  }

  if (v10 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v16 = *(v8 + 8 * v10 + 32);
LABEL_10:
  v17 = v16;

  v18 = [v17 displayItemType];
  if (v18 == 15)
  {
    v42 = sub_1D139012C();
    v43 = sub_1D138D7DC();
    v44 = [a1 dequeueReusableCellWithIdentifier:v42 forIndexPath:v43];

    type metadata accessor for RecordDetailItemCell();
    v45 = swift_dynamicCastClassUnconditional();
    v46 = *(v45 + OBJC_IVAR____TtC15HealthRecordsUI20RecordDetailItemCell_titleLabel);
    v47 = [v17 title];
    [v46 setText_];

    v25 = *(v45 + OBJC_IVAR____TtC15HealthRecordsUI20RecordDetailItemCell_bodyLabel);
    v26 = [v17 subtitle];
    goto LABEL_18;
  }

  if (v18 == 6)
  {
    v27 = sub_1D139012C();
    v28 = sub_1D138D7DC();
    v29 = [a1 dequeueReusableCellWithIdentifier:v27 forIndexPath:v28];

    type metadata accessor for RecordReferenceRangeCell();
    v30 = swift_dynamicCastClassUnconditional();
    v31 = [v17 chartValueWithRange];
    v32 = *(v30 + OBJC_IVAR____TtC15HealthRecordsUI24RecordReferenceRangeCell_valueInRange);
    *(v30 + OBJC_IVAR____TtC15HealthRecordsUI24RecordReferenceRangeCell_valueInRange) = v31;
    v33 = v31;

    if (v33 && (v34 = [objc_opt_self() referenceRangeViewDataFromInspectableValueInRange_]) != 0)
    {
      v35 = v34;
      v36 = v34;
      v37 = sub_1D113AB8C();
      sub_1D106F934(0, &qword_1EC60E670);
      v38 = sub_1D1390C6C();
      v39 = sub_1D1390C6C();
      v40 = sub_1D106E7E8(v38, v39);

      [v37 setAttributedText_];
      v41 = v36;
      sub_1D1271D64(v35);
    }

    else
    {
      v41 = 0;
    }

    sub_1D113B2C0();
    v25 = v17;
    v17 = v41;
    goto LABEL_23;
  }

  if (v18 == 4)
  {
    v19 = sub_1D139012C();
    v20 = sub_1D138D7DC();
    v21 = [a1 dequeueReusableCellWithIdentifier:v19 forIndexPath:v20];

    type metadata accessor for RecordPrimaryTitleCell();
    v22 = swift_dynamicCastClassUnconditional();
    v23 = *(v22 + OBJC_IVAR____TtC15HealthRecordsUI22RecordPrimaryTitleCell_recordTitleLabel);
    v24 = [v17 title];
    [v23 setText_];

    v25 = *(v22 + OBJC_IVAR____TtC15HealthRecordsUI22RecordPrimaryTitleCell_recordDateLabel);
    v26 = [v17 subtitle];
LABEL_18:
    v33 = v26;
    [v25 setText_];
LABEL_23:

LABEL_28:
    return;
  }

  sub_1D138F06C();
  v17 = v17;
  v48 = sub_1D138F0AC();
  v49 = sub_1D13907FC();
  if (os_log_type_enabled(v48, v49))
  {
    v50 = swift_slowAlloc();
    v60[0] = swift_slowAlloc();
    v61 = v60[0];
    *v50 = 136315394;
    v51 = sub_1D139184C();
    v60[1] = ObjectType;
    v53 = v5;
    v54 = sub_1D11DF718(v51, v52, &v61);

    *(v50 + 4) = v54;
    *(v50 + 12) = 2048;
    v55 = [v17 displayItemType];

    *(v50 + 14) = v55;
    _os_log_impl(&dword_1D101F000, v48, v49, "[%s]: displayItemType %ld not supported", v50, 0x16u);
    v56 = v60[0];
    __swift_destroy_boxed_opaque_existential_1Tm(v60[0]);
    MEMORY[0x1D38882F0](v56, -1, -1);
    MEMORY[0x1D38882F0](v50, -1, -1);

    (*(v53 + 8))(v7, v4);
  }

  else
  {

    (*(v5 + 8))(v7, v4);
  }

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v58 = NSStringFromClass(ObjCClassFromMetadata);
  if (!v58)
  {
    sub_1D139016C();
    v58 = sub_1D139012C();
  }

  v59 = HKErrorTableViewCell();

  if (v59)
  {
    goto LABEL_28;
  }

LABEL_36:
  __break(1u);
}

id sub_1D1088600()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SignedClinicalDataMultiRecordViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1D10886B4(uint64_t *a1)
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
  sub_1D1088730(v6);
  return sub_1D13912BC();
}

void sub_1D1088730(uint64_t *a1)
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
        sub_1D106F934(0, &qword_1EE06B0E0);
        v6 = sub_1D13904DC();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = (v6 & 0xFFFFFFFFFFFFFF8) + 32;
      v8[1] = v5;
      sub_1D1088AAC(v8, v9, a1, v4);
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
    sub_1D1088844(0, v2, 1, a1);
  }
}

void sub_1D1088844(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v37 = sub_1D138D57C();
  v8 = MEMORY[0x1EEE9AC00](v37);
  v36 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v35 = &v29 - v11;
  v30 = a2;
  if (a3 != a2)
  {
    v38 = *a4;
    v34 = (v10 + 8);
    v12 = v38 + 8 * a3 - 8;
    v13 = a1 - a3;
LABEL_5:
    v32 = v12;
    v33 = a3;
    v14 = *(v38 + 8 * a3);
    v31 = v13;
    while (1)
    {
      v15 = *v12;
      v16 = v14;
      v17 = v15;
      v18 = [v16 sortDate];
      v19 = [v18 date];

      v20 = v35;
      sub_1D138D52C();

      v21 = [v17 sortDate];
      v22 = [v21 date];

      v23 = v36;
      sub_1D138D52C();

      LOBYTE(v21) = sub_1D138D4FC();
      v24 = *v34;
      v25 = v23;
      v26 = v37;
      (*v34)(v25, v37);
      v24(v20, v26);

      if ((v21 & 1) == 0)
      {
LABEL_4:
        a3 = v33 + 1;
        v12 = v32 + 8;
        v13 = v31 - 1;
        if (v33 + 1 == v30)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v38)
      {
        break;
      }

      v27 = *v12;
      v14 = *(v12 + 8);
      *v12 = v14;
      *(v12 + 8) = v27;
      v12 -= 8;
      if (__CFADD__(v13++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_1D1088AAC(unint64_t *a1, uint64_t a2, void *a3, unint64_t a4)
{
  v6 = v4;
  v125 = a1;
  v135 = sub_1D138D57C();
  v9 = MEMORY[0x1EEE9AC00](v135);
  v134 = &v120 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v133 = &v120 - v12;
  v13 = a3[1];
  if (v13 < 1)
  {
    v15 = MEMORY[0x1E69E7CC0];
LABEL_87:
    v5 = *v125;
    if (!*v125)
    {
      goto LABEL_126;
    }

    a4 = v15;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v115 = a4;
    }

    else
    {
LABEL_120:
      v115 = sub_1D1245848(a4);
    }

    v136 = v115;
    a4 = *(v115 + 2);
    if (a4 >= 2)
    {
      while (*a3)
      {
        v116 = *&v115[16 * a4];
        v117 = v115;
        v118 = *&v115[16 * a4 + 24];
        sub_1D10893D0((*a3 + 8 * v116), (*a3 + 8 * *&v115[16 * a4 + 16]), (*a3 + 8 * v118), v5);
        if (v6)
        {
          goto LABEL_98;
        }

        if (v118 < v116)
        {
          goto LABEL_113;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v117 = sub_1D1245848(v117);
        }

        if (a4 - 2 >= *(v117 + 2))
        {
          goto LABEL_114;
        }

        v119 = &v117[16 * a4];
        *v119 = v116;
        *(v119 + 1) = v118;
        v136 = v117;
        sub_1D12457BC(a4 - 1);
        v115 = v136;
        a4 = *(v136 + 2);
        if (a4 <= 1)
        {
          goto LABEL_98;
        }
      }

      goto LABEL_124;
    }

LABEL_98:

    return;
  }

  v14 = 0;
  v132 = (v11 + 8);
  v15 = MEMORY[0x1E69E7CC0];
  v124 = a4;
  v121 = a3;
  while (1)
  {
    v16 = v14++;
    v126 = v16;
    if (v14 < v13)
    {
      v130 = v13;
      v122 = v15;
      v123 = v6;
      v17 = *a3;
      v18 = *(*a3 + 8 * v14);
      v19 = v16;
      v128 = 8 * v16;
      v20 = (v17 + 8 * v16);
      v21 = *v20;
      v5 = (v20 + 2);
      v22 = v18;
      v23 = v21;
      v24 = [v22 sortDate];
      v25 = [v24 date];

      v26 = v133;
      sub_1D138D52C();

      v27 = [v23 sortDate];
      v28 = [v27 date];

      v29 = v134;
      sub_1D138D52C();

      LODWORD(v131) = sub_1D138D4FC();
      v30 = *v132;
      v31 = v29;
      v32 = v135;
      (*v132)(v31, v135);
      v129 = v30;
      v30(v26, v32);

      v33 = v19 + 2;
      while (1)
      {
        v14 = v130;
        if (v130 == v33)
        {
          break;
        }

        v34 = *(v5 - 8);
        v35 = *v5;
        v36 = v34;
        v37 = [v35 sortDate];
        v38 = [v37 date];

        v39 = v133;
        sub_1D138D52C();

        v40 = [v36 sortDate];
        v41 = [v40 date];

        v42 = v134;
        sub_1D138D52C();

        LODWORD(v40) = sub_1D138D4FC() & 1;
        v43 = v135;
        v44 = v129;
        v129(v42, v135);
        v44(v39, v43);

        ++v33;
        v5 += 8;
        if ((v131 & 1) != v40)
        {
          v14 = v33 - 1;
          break;
        }
      }

      v15 = v122;
      v6 = v123;
      a3 = v121;
      a4 = v124;
      v16 = v126;
      v45 = v128;
      if (v131)
      {
        if (v14 < v126)
        {
          goto LABEL_117;
        }

        if (v126 < v14)
        {
          v46 = 8 * v14 - 8;
          v47 = v14;
          v48 = v126;
          do
          {
            if (v48 != --v47)
            {
              v50 = *a3;
              if (!*a3)
              {
                goto LABEL_123;
              }

              v49 = *(v50 + v45);
              *(v50 + v45) = *(v50 + v46);
              *(v50 + v46) = v49;
            }

            ++v48;
            v46 -= 8;
            v45 += 8;
          }

          while (v48 < v47);
        }
      }
    }

    v51 = a3[1];
    if (v14 < v51)
    {
      if (__OFSUB__(v14, v16))
      {
        goto LABEL_116;
      }

      if (v14 - v16 < a4)
      {
        v52 = v16 + a4;
        if (__OFADD__(v16, a4))
        {
          goto LABEL_118;
        }

        if (v52 >= v51)
        {
          v52 = a3[1];
        }

        if (v52 < v16)
        {
LABEL_119:
          __break(1u);
          goto LABEL_120;
        }

        if (v14 != v52)
        {
          break;
        }
      }
    }

LABEL_35:
    if (v14 < v16)
    {
      goto LABEL_115;
    }

    v69 = v15;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v15 = v69;
    }

    else
    {
      v15 = sub_1D10F7610(0, *(v69 + 2) + 1, 1, v69);
    }

    v71 = *(v15 + 2);
    v70 = *(v15 + 3);
    v5 = v71 + 1;
    if (v71 >= v70 >> 1)
    {
      v15 = sub_1D10F7610((v70 > 1), v71 + 1, 1, v15);
    }

    *(v15 + 2) = v5;
    v72 = &v15[16 * v71];
    *(v72 + 4) = v126;
    *(v72 + 5) = v14;
    a4 = *v125;
    if (!*v125)
    {
      goto LABEL_125;
    }

    if (v71)
    {
      while (1)
      {
        v73 = v5 - 1;
        if (v5 >= 4)
        {
          break;
        }

        if (v5 == 3)
        {
          v74 = *(v15 + 4);
          v75 = *(v15 + 5);
          v84 = __OFSUB__(v75, v74);
          v76 = v75 - v74;
          v77 = v84;
LABEL_55:
          if (v77)
          {
            goto LABEL_104;
          }

          v90 = &v15[16 * v5];
          v92 = *v90;
          v91 = *(v90 + 1);
          v93 = __OFSUB__(v91, v92);
          v94 = v91 - v92;
          v95 = v93;
          if (v93)
          {
            goto LABEL_107;
          }

          v96 = &v15[16 * v73 + 32];
          v98 = *v96;
          v97 = *(v96 + 1);
          v84 = __OFSUB__(v97, v98);
          v99 = v97 - v98;
          if (v84)
          {
            goto LABEL_110;
          }

          if (__OFADD__(v94, v99))
          {
            goto LABEL_111;
          }

          if (v94 + v99 >= v76)
          {
            if (v76 < v99)
            {
              v73 = v5 - 2;
            }

            goto LABEL_76;
          }

          goto LABEL_69;
        }

        v100 = &v15[16 * v5];
        v102 = *v100;
        v101 = *(v100 + 1);
        v84 = __OFSUB__(v101, v102);
        v94 = v101 - v102;
        v95 = v84;
LABEL_69:
        if (v95)
        {
          goto LABEL_106;
        }

        v103 = &v15[16 * v73];
        v105 = *(v103 + 4);
        v104 = *(v103 + 5);
        v84 = __OFSUB__(v104, v105);
        v106 = v104 - v105;
        if (v84)
        {
          goto LABEL_109;
        }

        if (v106 < v94)
        {
          goto LABEL_3;
        }

LABEL_76:
        v111 = v73 - 1;
        if (v73 - 1 >= v5)
        {
          __break(1u);
LABEL_100:
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
          goto LABEL_119;
        }

        if (!*a3)
        {
          goto LABEL_122;
        }

        v112 = v15;
        v113 = *&v15[16 * v111 + 32];
        v5 = *&v15[16 * v73 + 40];
        sub_1D10893D0((*a3 + 8 * v113), (*a3 + 8 * *&v15[16 * v73 + 32]), (*a3 + 8 * v5), a4);
        if (v6)
        {
          goto LABEL_98;
        }

        if (v5 < v113)
        {
          goto LABEL_100;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v112 = sub_1D1245848(v112);
        }

        if (v111 >= *(v112 + 2))
        {
          goto LABEL_101;
        }

        v114 = &v112[16 * v111];
        *(v114 + 4) = v113;
        *(v114 + 5) = v5;
        v136 = v112;
        sub_1D12457BC(v73);
        v15 = v136;
        v5 = *(v136 + 2);
        if (v5 <= 1)
        {
          goto LABEL_3;
        }
      }

      v78 = &v15[16 * v5 + 32];
      v79 = *(v78 - 64);
      v80 = *(v78 - 56);
      v84 = __OFSUB__(v80, v79);
      v81 = v80 - v79;
      if (v84)
      {
        goto LABEL_102;
      }

      v83 = *(v78 - 48);
      v82 = *(v78 - 40);
      v84 = __OFSUB__(v82, v83);
      v76 = v82 - v83;
      v77 = v84;
      if (v84)
      {
        goto LABEL_103;
      }

      v85 = &v15[16 * v5];
      v87 = *v85;
      v86 = *(v85 + 1);
      v84 = __OFSUB__(v86, v87);
      v88 = v86 - v87;
      if (v84)
      {
        goto LABEL_105;
      }

      v84 = __OFADD__(v76, v88);
      v89 = v76 + v88;
      if (v84)
      {
        goto LABEL_108;
      }

      if (v89 >= v81)
      {
        v107 = &v15[16 * v73 + 32];
        v109 = *v107;
        v108 = *(v107 + 1);
        v84 = __OFSUB__(v108, v109);
        v110 = v108 - v109;
        if (v84)
        {
          goto LABEL_112;
        }

        if (v76 < v110)
        {
          v73 = v5 - 2;
        }

        goto LABEL_76;
      }

      goto LABEL_55;
    }

LABEL_3:
    v13 = a3[1];
    a4 = v124;
    if (v14 >= v13)
    {
      goto LABEL_87;
    }
  }

  v122 = v15;
  v123 = v6;
  v131 = *a3;
  v53 = v131 + 8 * v14 - 8;
  v54 = v16 - v14;
  v127 = v52;
LABEL_28:
  v129 = v53;
  v130 = v14;
  v55 = *(v131 + 8 * v14);
  v128 = v54;
  while (1)
  {
    v56 = *v53;
    v5 = v55;
    v57 = v56;
    v58 = [v5 sortDate];
    v59 = [v58 date];

    v60 = v133;
    sub_1D138D52C();

    v61 = [v57 sortDate];
    v62 = [v61 date];

    v63 = v134;
    sub_1D138D52C();

    a4 = sub_1D138D4FC();
    v64 = *v132;
    v65 = v63;
    v66 = v135;
    (*v132)(v65, v135);
    v64(v60, v66);

    if ((a4 & 1) == 0)
    {
LABEL_27:
      v14 = v130 + 1;
      v53 = v129 + 8;
      v54 = v128 - 1;
      if (v130 + 1 != v127)
      {
        goto LABEL_28;
      }

      v14 = v127;
      v15 = v122;
      v6 = v123;
      a3 = v121;
      v16 = v126;
      goto LABEL_35;
    }

    if (!v131)
    {
      break;
    }

    v67 = *v53;
    v55 = *(v53 + 8);
    *v53 = v55;
    *(v53 + 8) = v67;
    v53 -= 8;
    if (__CFADD__(v54++, 1))
    {
      goto LABEL_27;
    }
  }

  __break(1u);
LABEL_122:
  __break(1u);
LABEL_123:
  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
}

uint64_t sub_1D10893D0(id *a1, id *a2, char *a3, void **a4)
{
  v57 = sub_1D138D57C();
  v8 = *(v57 - 8);
  v9 = MEMORY[0x1EEE9AC00](v57);
  v56 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v55 = &v50 - v11;
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

    v59 = &a4[v15];
    if (a3 - a2 < 8)
    {
      v30 = a2;
    }

    else
    {
      v30 = a2;
      if (a2 > a1)
      {
        v52 = (v8 + 8);
        v58 = a4;
        v50 = a1;
LABEL_28:
        v51 = v30;
        v31 = v30 - 1;
        a3 -= 8;
        v32 = v59;
        v53 = v30 - 1;
        do
        {
          v33 = (a3 + 8);
          v34 = *--v32;
          v35 = *v31;
          v36 = v34;
          v54 = v36;
          v37 = v35;
          v38 = [v36 sortDate];
          v39 = [v38 date];

          v40 = v55;
          sub_1D138D52C();

          v41 = [v37 sortDate];
          v42 = [v41 date];

          v43 = v56;
          sub_1D138D52C();

          LOBYTE(v41) = sub_1D138D4FC();
          v44 = *v52;
          v45 = v43;
          v46 = v57;
          (*v52)(v45, v57);
          v44(v40, v46);

          if (v41)
          {
            v47 = v50;
            v48 = v53;
            if (v33 != v51)
            {
              *a3 = *v53;
            }

            a4 = v58;
            if (v59 <= v58 || (v30 = v48, v48 <= v47))
            {
              v30 = v48;
              goto LABEL_39;
            }

            goto LABEL_28;
          }

          if (v33 != v59)
          {
            *a3 = *v32;
          }

          a3 -= 8;
          v59 = v32;
          v31 = v53;
        }

        while (v32 > v58);
        v59 = v32;
        v30 = v51;
        a4 = v58;
      }
    }
  }

  else
  {
    if (a4 != a1 || &a1[v13] <= a4)
    {
      memmove(a4, a1, 8 * v13);
    }

    v59 = &a4[v13];
    if (a2 - a1 >= 8 && a2 < a3)
    {
      v53 = (v8 + 8);
      v54 = a3;
      while (1)
      {
        v58 = a4;
        v16 = *a4;
        v17 = *a2;
        v18 = v16;
        v19 = [v17 sortDate];
        v20 = [v19 date];

        v21 = v55;
        sub_1D138D52C();

        v22 = [v18 sortDate];
        v23 = [v22 date];

        v24 = v56;
        sub_1D138D52C();

        LOBYTE(v22) = sub_1D138D4FC();
        v25 = *v53;
        v26 = v24;
        v27 = v57;
        (*v53)(v26, v57);
        v25(v21, v27);

        if ((v22 & 1) == 0)
        {
          break;
        }

        v28 = a2;
        v29 = a1 == a2++;
        a4 = v58;
        if (!v29)
        {
          goto LABEL_17;
        }

LABEL_18:
        ++a1;
        if (a4 >= v59 || a2 >= v54)
        {
          goto LABEL_20;
        }
      }

      v28 = v58;
      a4 = v58 + 1;
      if (a1 == v58)
      {
        goto LABEL_18;
      }

LABEL_17:
      *a1 = *v28;
      goto LABEL_18;
    }

LABEL_20:
    v30 = a1;
  }

LABEL_39:
  if (v30 != a4 || v30 >= (a4 + ((v59 - a4 + (v59 - a4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v30, a4, 8 * (v59 - a4));
  }

  return 1;
}

unint64_t sub_1D10898CC()
{
  result = qword_1EE06B070;
  if (!qword_1EE06B070)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EE06B070);
  }

  return result;
}

unint64_t sub_1D1089930()
{
  result = qword_1EE06B100;
  if (!qword_1EE06B100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE06B100);
  }

  return result;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1D10899AC()
{
  result = qword_1EE06B7E0;
  if (!qword_1EE06B7E0)
  {
    sub_1D138FECC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE06B7E0);
  }

  return result;
}

void sub_1D1089A04(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1D1089AEC()
{
  if (qword_1EE069F90 != -1)
  {
    swift_once();
  }

  v0 = qword_1EE069F98;

  v1 = sub_1D138D1CC();
  v3 = v2;

  qword_1EC609BF0 = v1;
  *algn_1EC609BF8 = v3;
}

void sub_1D1089BC4()
{
  if (qword_1EE069F90 != -1)
  {
    swift_once();
  }

  v0 = qword_1EE069F98;

  v1 = sub_1D138D1CC();
  v3 = v2;

  qword_1EC609C00 = v1;
  *algn_1EC609C08 = v3;
}

char *sub_1D1089C9C(char *a1, void *a2)
{
  v3 = v2;
  sub_1D1086E1C();
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1D139E710;
  *(v6 + 32) = sub_1D139016C();
  *(v6 + 40) = v7;
  strcpy((v6 + 48), "ChooseTopics");
  *(v6 + 61) = 0;
  *(v6 + 62) = -5120;
  v8 = sub_1D139044C();

  v9 = HKUIJoinStringsForAutomationIdentifier();

  if (v9)
  {
    v10 = sub_1D139016C();
    v12 = v11;
  }

  else
  {
    v10 = 0;
    v12 = 0;
  }

  v13 = (v3 + qword_1EC609C28);
  *v13 = v10;
  v13[1] = v12;
  *(v3 + qword_1EC609C10) = a1;
  *(v3 + qword_1EC609C18) = a2;
  v14 = *&a1[OBJC_IVAR___WDClinicalAccountOnboardingSession_profile];
  v15 = a1;
  v16 = a2;
  v17 = [v14 healthStore];
  v18 = objc_allocWithZone(type metadata accessor for ClinicalSharingOnboardingSelectDataTypesViewController(0));
  *&v18[qword_1EC609C48] = MEMORY[0x1E69E7CC0];
  type metadata accessor for ClinicalSharingOnboardingSelectWhatToShareDataSource();
  swift_allocObject();
  v19 = v17;
  *&v18[qword_1EC609C40] = sub_1D112FA6C(v19, 0, 0, 0, 0);

  v20 = sub_1D138EC4C();

  *(v3 + qword_1EC609C20) = v20;
  v21 = qword_1EC608BC8;
  v22 = v20;
  if (v21 != -1)
  {
    swift_once();
  }

  v23 = qword_1EC608BD0;

  if (v23 != -1)
  {
    swift_once();
  }

  v24 = sub_1D138EB3C();
  result = [v24 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_15;
  }

  v26 = result;
  v27 = [objc_opt_self() systemBackgroundColor];
  [v26 setBackgroundColor_];

  result = swift_allocObject();
  *(result + 1) = xmmword_1D139E710;
  v28 = *&v24[qword_1EC609C28 + 8];
  if (!v28)
  {
LABEL_15:
    __break(1u);
    return result;
  }

  *(result + 4) = *&v24[qword_1EC609C28];
  *(result + 5) = v28;
  *(result + 6) = 1954047310;
  *(result + 7) = 0xE400000000000000;

  v29 = sub_1D139044C();

  v30 = HKUIJoinStringsForAutomationIdentifier();

  if (*&v15[OBJC_IVAR___WDClinicalAccountOnboardingSession_context] == 2)
  {
    v31 = v15;
    v15 = v16;
    v16 = v24;
  }

  else
  {

    v31 = v24;
  }

  return v24;
}

void sub_1D108A0AC(void *a1)
{
  v5.receiver = a1;
  v5.super_class = type metadata accessor for ClinicalSharingDataTypeSelectionViewController(0);
  v1 = v5.receiver;
  objc_msgSendSuper2(&v5, sel_viewDidLoad);
  v2 = [v1 view];
  if (v2)
  {
    v3 = v2;
    v4 = [objc_opt_self() secondarySystemBackgroundColor];
    [v3 setBackgroundColor_];

    [v1 setModalInPresentation_];
    sub_1D108A454();
  }

  else
  {
    __break(1u);
  }
}

void sub_1D108A184()
{
  v1 = v0;

  v3 = sub_1D12DEA38(v2);

  v4 = *(v3 + 16);
  if (!v4)
  {
    goto LABEL_4;
  }

  v5 = sub_1D129F8E4(*(v3 + 16), 0);
  v6 = *(type metadata accessor for ClinicalSharingSelectableAuthorizationCategoryItem() - 8);
  v7 = sub_1D12A14F0(v19, v5 + ((*(v6 + 80) + 32) & ~*(v6 + 80)), v4, v3);
  sub_1D102CC30();
  if (v7 != v4)
  {
    __break(1u);
LABEL_4:

    v5 = MEMORY[0x1E69E7CC0];
  }

  v8 = *&v1[qword_1EC609C10];
  v9 = *&v1[qword_1EC609C18];
  v10 = objc_allocWithZone(type metadata accessor for ClinicalSharingThingsToKnowViewController());
  v11 = v8;
  v12 = v9;
  sub_1D10B61DC(v11, v12, v5);
  v14 = v13;

  [v1 showViewController:v14 sender:0];
  v15 = *&v11[OBJC_IVAR___WDClinicalAccountOnboardingSession_sharingClient];
  v16 = sub_1D139012C();
  sub_1D11496D4(*&v11[OBJC_IVAR___WDClinicalAccountOnboardingSession_context]);
  v17 = sub_1D139012C();

  v19[4] = nullsub_1;
  v19[5] = 0;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 1107296256;
  v19[2] = sub_1D112A218;
  v19[3] = &block_descriptor_2;
  v18 = _Block_copy(v19);
  [v15 submitOnboardingAnalyticsForStepIdentifier:v16 context:v17 completion:v18];
  _Block_release(v18);
}

void sub_1D108A3F8(void *a1)
{
  v1 = a1;
  sub_1D108A184();
}

void sub_1D108A454()
{
  v1 = [v0 navigationItem];
  v2 = [v1 backBarButtonItem];

  if (v2)
  {
    sub_1D1086E1C();
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_1D139E710;
    v4 = *&v0[qword_1EC609C28 + 8];
    if (!v4)
    {
      __break(1u);
      goto LABEL_11;
    }

    *(v3 + 32) = *&v0[qword_1EC609C28];
    *(v3 + 40) = v4;
    *(v3 + 48) = 1801675074;
    *(v3 + 56) = 0xE400000000000000;

    v5 = sub_1D139044C();

    v6 = HKUIJoinStringsForAutomationIdentifier();

    [v2 setAccessibilityIdentifier_];
  }

  v7 = [v0 navigationItem];
  v8 = [v7 rightBarButtonItem];

  if (!v8)
  {
    return;
  }

  sub_1D1086E1C();
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1D139E710;
  v10 = *&v0[qword_1EC609C28 + 8];
  if (!v10)
  {
LABEL_11:
    __break(1u);
    return;
  }

  *(v9 + 32) = *&v0[qword_1EC609C28];
  *(v9 + 40) = v10;
  *(v9 + 48) = 0x6C65636E6143;
  *(v9 + 56) = 0xE600000000000000;

  v11 = sub_1D139044C();

  v12 = HKUIJoinStringsForAutomationIdentifier();

  [v8 setAccessibilityIdentifier_];
}

uint64_t sub_1D108A6B0()
{
}

uint64_t sub_1D108A72C(uint64_t a1)
{
}

uint64_t sub_1D108A820(char a1)
{

  sub_1D1130600((a1 & 1) == 0);
}

void sub_1D108A880(uint64_t a1)
{
  *(a1 + qword_1EC609C48) = MEMORY[0x1E69E7CC0];
  sub_1D13913BC();
  __break(1u);
}

void sub_1D108A8F0()
{
  v6.receiver = v0;
  v6.super_class = type metadata accessor for ClinicalSharingOnboardingSelectDataTypesViewController(0);
  objc_msgSendSuper2(&v6, sel_viewDidLoad);
  v1 = [v0 collectionView];
  if (v1)
  {
    v2 = v1;
    v3 = [objc_opt_self() systemBackgroundColor];
    [v2 setBackgroundColor_];

    v4 = [v0 collectionView];
    if (v4)
    {
      v5 = v4;
      [v4 setPreservesSuperviewLayoutMargins_];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_1D108A9D0(void *a1)
{
  v1 = a1;
  sub_1D108A8F0();
}

void sub_1D108AA18()
{
  v1 = v0;
  sub_1D138EC6C();
  v2 = sub_1D138EC7C();
  v2();
  v3 = [v0 collectionView];
  if (!v3)
  {
    __break(1u);
    goto LABEL_10;
  }

  v4 = v3;
  type metadata accessor for ClinicalSharingSelectableAuthorizationCategoryCell();
  sub_1D108B1D4(&qword_1EC609BC8, type metadata accessor for ClinicalSharingSelectableAuthorizationCategoryCell);
  sub_1D13908AC();

  v5 = [v1 collectionView];
  if (!v5)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v6 = v5;
  sub_1D138E71C();
  sub_1D13908CC();

  v7 = [v1 collectionView];
  if (!v7)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v8 = v7;
  type metadata accessor for TextItemCell();
  sub_1D108B1D4(&unk_1EC60F720, type metadata accessor for TextItemCell);
  sub_1D13908AC();

  v9 = [v1 collectionView];
  if (!v9)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v10 = v9;
  type metadata accessor for TurnOnAllDataTypesCell();
  sub_1D108B1D4(&qword_1EC609C68, type metadata accessor for TurnOnAllDataTypesCell);
  sub_1D13908AC();

  v11 = [v1 collectionView];
  if (!v11)
  {
LABEL_13:
    __break(1u);
    return;
  }

  sub_1D138DDCC();
  sub_1D13908BC();
}

void sub_1D108AC5C(void *a1)
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
    sub_1D108B188();
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

uint64_t sub_1D108AE48(void *a1, uint64_t a2, void *a3)
{
  v5 = sub_1D138D82C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D138D7EC();
  v9 = a3;
  v10 = a1;
  sub_1D108AC5C(v9);

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1D108AFA4()
{
}

id sub_1D108AFFC(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_1D108B03C()
{
}

uint64_t sub_1D108B0C4(uint64_t a1)
{
  sub_1D108B120();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1D108B120()
{
  if (!qword_1EC609C60)
  {
    sub_1D1080EA4(255, &unk_1EC60F6C0);
    v0 = sub_1D1390F3C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC609C60);
    }
  }
}

unint64_t sub_1D108B188()
{
  result = qword_1EC60F6D0;
  if (!qword_1EC60F6D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC60F6D0);
  }

  return result;
}

uint64_t sub_1D108B1D4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

{
  return sub_1D109F94C(a2 + 32, a1 + 32);
}

void *sub_1D108B270(void (*a1)(uint64_t *__return_ptr, char *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v5 = (a3 + 32);
  v6 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v8 = *v5++;
    v27 = v8;
    a1(&v20, &v27);
    if (v3)
    {
      break;
    }

    v9 = v21;
    if (v21)
    {
      v10 = v20;
      v11 = v23;
      v16 = v24;
      v17 = v22;
      v18 = v26;
      v19 = v25;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v6 = sub_1D10F78EC(0, v6[2] + 1, 1, v6);
      }

      v13 = v6[2];
      v12 = v6[3];
      if (v13 >= v12 >> 1)
      {
        v6 = sub_1D10F78EC((v12 > 1), v13 + 1, 1, v6);
      }

      v6[2] = v13 + 1;
      v7 = &v6[7 * v13];
      v7[4] = v10;
      v7[5] = v9;
      v7[6] = v17;
      v7[7] = v11;
      v7[8] = v16;
      *(v7 + 72) = v19;
      v7[10] = v18;
    }

    if (!--v4)
    {
      return v6;
    }
  }

  return v6;
}

uint64_t sub_1D108B3C8@<X0>(unint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_1D138F0BC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D138D21C();
  v52 = *(v8 - 8);
  v53 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a1 + 32);
  sub_1D109515C(0, &qword_1EC609C70, &_s13HealthKitDataVN, _s7PDFDataVMa);
  v13 = a1 + *(v12 + 28);
  v55 = v11;
  v56 = v13;
  v14 = sub_1D108B270(sub_1D108BE84, v54, &unk_1F4D04598);
  v15 = sub_1D10912D0(v14, sub_1D1091948);
  v17 = v16;
  v18 = v15;

  if (*(v18 + 2))
  {
    v50 = v17;
    v51 = v18;
    v19 = *a1;
    sub_1D138D20C();
    v20 = [v19 firstName];
    sub_1D139016C();

    sub_1D138D1DC();
    v21 = [v19 lastName];
    sub_1D139016C();

    sub_1D138D1EC();
    v22 = objc_opt_self();
    v23 = sub_1D138D1FC();
    v24 = [v22 localizedStringFromPersonNameComponents:v23 style:2 options:0];

    v25 = sub_1D139016C();
    v27 = v26;

    v28 = HIBYTE(v27) & 0xF;
    v29 = v13;
    if ((v27 & 0x2000000000000000) == 0)
    {
      v28 = v25 & 0xFFFFFFFFFFFFLL;
    }

    if (v28)
    {
      v30 = v57;
    }

    else
    {

      if (qword_1EE06AD00 != -1)
      {
        swift_once();
      }

      v30 = v57;
      v49 = 0xE000000000000000;
      v25 = sub_1D138D1CC();
      v27 = v36;
    }

    (*(v52 + 8))(v10, v53);
    v37 = v29;
    v53 = sub_1D109199C(v19, v29);
    v39 = v38;
    MEMORY[0x1EEE9AC00](v53);
    v49 = a1;
    v43 = sub_1D11F3A30(sub_1D1092140, (&v50 - 4), v40, v41, v42);
    v45 = v44;
    v57 = v30;
    sub_1D109515C(0, &qword_1EC609C78, &_s13FormattedDataVN, _s7PDFDataVMa);
    v47 = v46;
    sub_1D10921C4(v37, a2 + *(v46 + 28));
    *a2 = v25;
    a2[1] = v27;
    a2[2] = v53;
    a2[3] = v39;
    a2[4] = v43;
    a2[5] = v45;
    v48 = v50;
    a2[6] = v51;
    a2[7] = v48;
    return (*(*(v47 - 8) + 56))(a2, 0, 1, v47);
  }

  else
  {

    sub_1D138F06C();
    v31 = sub_1D138F0AC();
    v32 = sub_1D13907DC();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_1D101F000, v31, v32, "[PDF]: The input data either had no supported sections or all of the supported sections were empty.", v33, 2u);
      MEMORY[0x1D38882F0](v33, -1, -1);
    }

    (*(v5 + 8))(v7, v4);
    sub_1D109515C(0, &qword_1EC609C78, &_s13FormattedDataVN, _s7PDFDataVMa);
    return (*(*(v34 - 8) + 56))(a2, 1, 1, v34);
  }
}

void sub_1D108B944(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t *a4@<X8>)
{
  v9 = sub_1D138F0BC();
  v63 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v53 - v13;
  v15 = *a1;
  if (!*(a2 + 16))
  {
    goto LABEL_19;
  }

  v16 = sub_1D12A2F78(v15);
  if ((v17 & 1) == 0)
  {
    goto LABEL_19;
  }

  v18 = *(*(a2 + 56) + 8 * v16);
  if (!(v18 >> 62))
  {
    if (*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_5;
    }

LABEL_19:
    sub_1D138F06C();
    v45 = sub_1D138F0AC();
    v46 = sub_1D13907DC();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v62 = v9;
      v49 = v48;
      v64[0] = v48;
      *v47 = 136315138;
      v65 = v15;
      v50 = sub_1D13901EC();
      v52 = sub_1D11DF718(v50, v51, v64);

      *(v47 + 4) = v52;
      _os_log_impl(&dword_1D101F000, v45, v46, "[PDF]: There are no records for this category: %s", v47, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v49);
      MEMORY[0x1D38882F0](v49, -1, -1);
      MEMORY[0x1D38882F0](v47, -1, -1);

      (*(v63 + 8))(v11, v62);
    }

    else
    {

      (*(v63 + 8))(v11, v9);
    }

    goto LABEL_22;
  }

  if (!sub_1D13910DC())
  {
    goto LABEL_19;
  }

LABEL_5:
  LOBYTE(v64[0]) = v15;

  v19 = DisplayCategory.Kind.systemImageName.getter();
  if (v20)
  {
    v21 = v20;
    v62 = v19;
    if (qword_1EE069F78 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v22 = off_1EE069F80;
    if (*(off_1EE069F80 + 2))
    {
      v23 = sub_1D12A2F78(v15);
      if (v24)
      {
        v60 = v4;
        v25 = (v22[7] + 72 * v23);
        v26 = v25[1];
        v27 = v25[4];
        v61 = v25[5];
        v58 = v25[6];
        v59 = v27;
        v29 = v25[7];
        v28 = v25[8];
        v56 = v26;
        v57 = v29;
        v55 = v28;
        swift_endAccess();
        LOBYTE(v64[0]) = v15;
        v30 = sub_1D108BEA0(a3, v64);
        if (v30)
        {
          v31 = v30;

          v32 = v55;
          v55 = v56;
          v63 = v31(v18);
          v54 = v33;
          v56 = v34;
          sub_1D102CC60(v31);

          v35 = v54;
          *a4 = v62;
          a4[1] = v21;
          v36 = v61;
          a4[2] = v59;
          a4[3] = v36;
          a4[4] = v63;
          a4[5] = v35;
          a4[6] = v56;
          return;
        }

        goto LABEL_14;
      }
    }

    swift_endAccess();
  }

LABEL_14:
  sub_1D138F06C();
  v37 = sub_1D138F0AC();
  v38 = sub_1D13907DC();
  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v64[0] = v40;
    *v39 = 136315138;
    v65 = v15;
    v41 = sub_1D13901EC();
    v43 = sub_1D11DF718(v41, v42, v64);
    v62 = v9;
    v44 = v43;

    *(v39 + 4) = v44;
    _os_log_impl(&dword_1D101F000, v37, v38, "[PDF]: This kind of category is not supported: %s", v39, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v40);
    MEMORY[0x1D38882F0](v40, -1, -1);
    MEMORY[0x1D38882F0](v39, -1, -1);

    (*(v63 + 8))(v14, v62);
  }

  else
  {

    (*(v63 + 8))(v14, v9);
  }

LABEL_22:
  a4[6] = 0;
  *(a4 + 1) = 0u;
  *(a4 + 2) = 0u;
  *a4 = 0u;
}

uint64_t (*sub_1D108BEA0(uint64_t a1, unsigned __int8 *a2))(uint64_t a1)
{
  v4 = _s13ConfigurationVMa();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = 0;
  v10 = *a2;
  if (v10 > 3)
  {
    if (v10 - 4 >= 3)
    {
      if (v10 == 10)
      {
        v42 = *(a1 + *(v7 + 52));
        v43 = swift_allocObject();
        *(v43 + 16) = v42;
        v44 = swift_allocObject();
        *(v44 + 16) = sub_1D1092350;
        *(v44 + 24) = v43;
        sub_1D10921C4(a1, &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
        v45 = (*(v5 + 80) + 16) & ~*(v5 + 80);
        v46 = v45 + v6;
        v47 = swift_allocObject();
        sub_1D109238C(v8, v47 + v45);
        *(v47 + v46) = 1;
        v48 = v47 + (v46 & 0xFFFFFFFFFFFFFFF8);
        *(v48 + 8) = sub_1D1092358;
        *(v48 + 16) = v44;
        v49 = (v47 + (((v46 & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8));
        *v49 = sub_1D108C448;
        v49[1] = 0;
        v50 = v42;
        return sub_1D10923F0;
      }

      else
      {
        if (v10 != 7)
        {
          return result;
        }

        sub_1D10921C4(a1, &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
        v11 = (*(v5 + 80) + 16) & ~*(v5 + 80);
        v12 = v11 + v6;
        v13 = swift_allocObject();
        sub_1D109238C(v8, v13 + v11);
        v14 = swift_allocObject();
        *(v14 + 16) = sub_1D1092500;
        *(v14 + 24) = v13;
        sub_1D10921C4(a1, v8);
        v15 = swift_allocObject();
        sub_1D109238C(v8, v15 + v11);
        *(v15 + v12) = 0;
        v16 = v15 + (v12 & 0xFFFFFFFFFFFFFFF8);
        *(v16 + 8) = sub_1D1092580;
        *(v16 + 16) = v14;
        v17 = (v15 + (((v12 & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8));
        *v17 = sub_1D108C3F4;
        v17[1] = 0;
        return sub_1D10927B4;
      }
    }

    goto LABEL_10;
  }

  switch(v10)
  {
    case 1u:
LABEL_10:
      sub_1D10921C4(a1, &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
      v28 = (*(v5 + 80) + 16) & ~*(v5 + 80);
      v29 = v28 + v6;
      v30 = swift_allocObject();
      sub_1D109238C(v8, v30 + v28);
      *(v30 + v29) = 1;
      v31 = v30 + (v29 & 0xFFFFFFFFFFFFFFF8);
      *(v31 + 8) = sub_1D108C464;
      *(v31 + 16) = 0;
      v32 = (v30 + (((v29 & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8));
      *v32 = sub_1D108C5A0;
      v32[1] = 0;
      return sub_1D10924E8;
    case 2u:
      v33 = *(a1 + *(v7 + 44));
      v34 = swift_allocObject();
      *(v34 + 16) = v33;
      v35 = swift_allocObject();
      *(v35 + 16) = sub_1D1092408;
      *(v35 + 24) = v34;
      sub_1D10921C4(a1, &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
      v36 = (*(v5 + 80) + 16) & ~*(v5 + 80);
      v37 = v36 + v6;
      v38 = swift_allocObject();
      sub_1D109238C(v8, v38 + v36);
      *(v38 + v37) = 1;
      v39 = v38 + (v37 & 0xFFFFFFFFFFFFFFF8);
      *(v39 + 8) = sub_1D1092410;
      *(v39 + 16) = v35;
      v40 = (v38 + (((v37 & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8));
      *v40 = sub_1D108C42C;
      v40[1] = 0;
      v41 = v33;
      return sub_1D1092468;
    case 3u:
      v19 = *(a1 + *(v7 + 44));
      v20 = swift_allocObject();
      *(v20 + 16) = v19;
      v21 = swift_allocObject();
      *(v21 + 16) = sub_1D1092480;
      *(v21 + 24) = v20;
      sub_1D10921C4(a1, &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
      v22 = (*(v5 + 80) + 16) & ~*(v5 + 80);
      v23 = v22 + v6;
      v24 = swift_allocObject();
      sub_1D109238C(v8, v24 + v22);
      *(v24 + v23) = 1;
      v25 = v24 + (v23 & 0xFFFFFFFFFFFFFFF8);
      *(v25 + 8) = sub_1D1092488;
      *(v25 + 16) = v21;
      v26 = (v24 + (((v23 & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8));
      *v26 = sub_1D108C410;
      v26[1] = 0;
      v27 = v19;
      return sub_1D10924D0;
    default:
      return result;
  }
}

uint64_t sub_1D108C464@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_1D138CF3C();
  v5 = *(v4 - 8);
  *&v6 = MEMORY[0x1EEE9AC00](v4).n128_u64[0];
  v8 = v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [a1 preferredDisplayName];
  v10 = sub_1D139016C();
  v12 = v11;

  v17[0] = v10;
  v17[1] = v12;
  sub_1D138CF2C();
  sub_1D10940C8();
  v13 = sub_1D1390FAC();
  v15 = v14;
  (*(v5 + 8))(v8, v4);

  *a2 = v13;
  a2[1] = v15;
  return result;
}

void *sub_1D108C5BC(unint64_t a1, uint64_t a2, int a3, void (*a4)(uint64_t *__return_ptr, void *), uint64_t a5, uint64_t (*a6)(void), uint64_t a7)
{
  v58 = a4;
  v57 = a3;
  v12 = _s13ConfigurationVMa();
  MEMORY[0x1EEE9AC00](v12 - 8);
  v52 = v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D10921C4(a2, v52);
  if (a1 >> 62)
  {
    goto LABEL_22;
  }

  v14 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v50 = a6;
  v49[1] = a7;
  if (v14)
  {
    v15 = a1;
    v71 = MEMORY[0x1E69E7CC0];

    a1 = &v71;
    result = sub_1D10FDA04(0, v14 & ~(v14 >> 63), 0);
    if ((v14 & 0x8000000000000000) == 0)
    {
      v17 = 0;
      v18 = v71;
      v19 = v15;
      v56 = v15 & 0xC000000000000001;
      v51 = v15 & 0xFFFFFFFFFFFFFF8;
      v20 = &selRef_removeObserver_name_object_;
      v21 = &selRef_removeObserver_name_object_;
      v54 = v15;
      v55 = a5;
      v53 = v14;
      while (1)
      {
        if (v56)
        {
          v22 = MEMORY[0x1D3886B70](v17, v19);
        }

        else
        {
          if ((v17 & 0x8000000000000000) != 0)
          {
            __break(1u);
LABEL_21:
            __break(1u);
LABEL_22:
            v14 = sub_1D13910DC();
            goto LABEL_3;
          }

          if (v17 >= *(v51 + 16))
          {
            goto LABEL_21;
          }

          v22 = *(v19 + 8 * v17 + 32);
        }

        v23 = v22;
        *&v64 = objc_autoreleasePoolPush();
        v24 = [v23 v20[364]];
        v25 = [v24 v21[363]];

        v26 = [v25 bundleIdentifier];
        v27 = sub_1D139016C();
        v29 = v28;

        v65 = v29;
        v66 = v27;
        if (v57)
        {
          v63 = sub_1D1092DF8(v23, v52);
          v62 = v30;
          v61 = v31;
          v33 = v32;

          v60 = v27;
          v59 = v29;
        }

        else
        {
          v63 = 0;
          v62 = 0;
          v61 = 0;
          v60 = 0;
          v59 = 0;
          v33 = 1;
        }

        v58(&v68, v23);
        v34 = [v23 v20[364]];
        v35 = v21;
        v36 = [v34 v21[363]];

        a1 = [v36 name];
        a7 = sub_1D139016C();
        v38 = v37;

        objc_autoreleasePoolPop(v64);
        v39 = v68;
        v40 = v69;
        v41 = v33 & 1;
        v70 = v41;
        v71 = v18;
        v43 = *(v18 + 16);
        v42 = *(v18 + 24);
        a6 = (v43 + 1);
        if (v43 >= v42 >> 1)
        {
          a1 = &v71;
          v64 = v69;
          sub_1D10FDA04((v42 > 1), v43 + 1, 1);
          v40 = v64;
          v18 = v71;
        }

        ++v17;
        *(v18 + 16) = a6;
        v44 = v18 + 104 * v43;
        v45 = v62;
        *(v44 + 32) = v63;
        *(v44 + 40) = v45;
        *(v44 + 48) = v61;
        *(v44 + 56) = v41;
        LODWORD(v45) = *&v67[3];
        *(v44 + 57) = *v67;
        *(v44 + 60) = v45;
        v46 = v59;
        *(v44 + 64) = v60;
        *(v44 + 72) = v46;
        *(v44 + 80) = v39;
        *(v44 + 88) = v40;
        v47 = v65;
        *(v44 + 104) = v66;
        *(v44 + 112) = v47;
        *(v44 + 120) = a7;
        *(v44 + 128) = v38;
        a5 = v55;
        v19 = v54;
        v20 = &selRef_removeObserver_name_object_;
        v21 = v35;
        if (v53 == v17)
        {
          goto LABEL_19;
        }
      }
    }

    __break(1u);
  }

  else
  {

    v18 = MEMORY[0x1E69E7CC0];
LABEL_19:
    sub_1D1092890(v52);

    sub_1D108DCC0(v18);
    v48 = v50();

    sub_1D108F180(v18);

    return v48;
  }

  return result;
}

void *sub_1D108CA58(unint64_t a1, uint64_t a2, int a3, void (*a4)(_OWORD *__return_ptr, void *), uint64_t a5, unint64_t a6, char **a7)
{
  v56 = a4;
  v55 = a3;
  v12 = _s13ConfigurationVMa();
  MEMORY[0x1EEE9AC00](v12 - 8);
  v50 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D10921C4(a2, v50);
  if (a1 >> 62)
  {
    goto LABEL_22;
  }

  v14 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v48 = a6;
  v47 = a7;
  if (v14)
  {
    v15 = a1;
    v74 = MEMORY[0x1E69E7CC0];

    a1 = &v74;
    result = sub_1D10FDA64(0, v14 & ~(v14 >> 63), 0);
    if ((v14 & 0x8000000000000000) == 0)
    {
      v17 = 0;
      v18 = v74;
      v19 = v15;
      v54 = v15 & 0xC000000000000001;
      v49 = v15 & 0xFFFFFFFFFFFFFF8;
      a7 = &selRef_removeObserver_name_object_;
      v53 = v15;
      v52 = v14;
      v51 = a5;
      while (1)
      {
        if (v54)
        {
          v20 = MEMORY[0x1D3886B70](v17, v19);
        }

        else
        {
          if ((v17 & 0x8000000000000000) != 0)
          {
            __break(1u);
LABEL_21:
            __break(1u);
LABEL_22:
            v14 = sub_1D13910DC();
            goto LABEL_3;
          }

          if (v17 >= *(v49 + 16))
          {
            goto LABEL_21;
          }

          v20 = *(v19 + 8 * v17 + 32);
        }

        v21 = v20;
        v62 = objc_autoreleasePoolPush();
        v22 = [v21 a7[364]];
        v23 = [v22 source];

        v24 = [v23 bundleIdentifier];
        v25 = sub_1D139016C();
        v27 = v26;

        v63 = v25;
        if (v55)
        {
          v61 = sub_1D1092DF8(v21, v50);
          v60 = v28;
          v59 = v29;
          v31 = v30;

          v58 = v25;
          v57 = v27;
        }

        else
        {
          v61 = 0;
          v60 = 0;
          v59 = 0;
          v58 = 0;
          v57 = 0;
          v31 = 1;
        }

        v56(v71, v21);
        v32 = a7;
        v33 = [v21 a7[364]];
        v34 = [v33 source];

        a1 = [v34 name];
        v35 = sub_1D139016C();
        v37 = v36;

        objc_autoreleasePoolPop(v62);
        v69 = v72;
        v68 = v71[3];
        v67 = v71[2];
        v66 = v71[1];
        v65 = v71[0];
        v38 = v31 & 1;
        v73 = v38;
        v74 = v18;
        a6 = *(v18 + 16);
        v39 = *(v18 + 24);
        if (a6 >= v39 >> 1)
        {
          a1 = &v74;
          sub_1D10FDA64((v39 > 1), a6 + 1, 1);
          v18 = v74;
        }

        ++v17;
        *(v18 + 16) = a6 + 1;
        v40 = v18 + 152 * a6;
        v41 = v60;
        *(v40 + 32) = v61;
        *(v40 + 40) = v41;
        *(v40 + 48) = v59;
        *(v40 + 56) = v38;
        LODWORD(v41) = *v70;
        *(v40 + 60) = *&v70[3];
        *(v40 + 57) = v41;
        v42 = v57;
        *(v40 + 64) = v58;
        *(v40 + 72) = v42;
        *(v40 + 80) = v65;
        v43 = v66;
        v44 = v67;
        v45 = v68;
        *(v40 + 144) = v69;
        *(v40 + 112) = v44;
        *(v40 + 128) = v45;
        *(v40 + 96) = v43;
        LODWORD(v42) = *v64;
        *(v40 + 148) = *&v64[3];
        *(v40 + 145) = v42;
        *(v40 + 152) = v63;
        *(v40 + 160) = v27;
        *(v40 + 168) = v35;
        *(v40 + 176) = v37;
        a5 = v51;
        v19 = v53;
        a7 = v32;
        if (v52 == v17)
        {
          goto LABEL_19;
        }
      }
    }

    __break(1u);
  }

  else
  {

    v18 = MEMORY[0x1E69E7CC0];
LABEL_19:
    sub_1D1092890(v50);

    sub_1D108E078(v18);
    v46 = v48();

    sub_1D108F3A8(v18);

    return v46;
  }

  return result;
}

void *sub_1D108CF88(unint64_t a1, uint64_t a2, int a3, void (*a4)(void *__return_ptr, void *), uint64_t a5, uint64_t (*a6)(void), uint64_t a7)
{
  v51[1] = a7;
  v52 = a6;
  v60 = a4;
  v59 = a3;
  v10 = _s13ConfigurationVMa();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v54 = v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D10921C4(a2, v54);
  if (a1 >> 62)
  {
    goto LABEL_19;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1D13910DC())
  {
    v13 = a1;
    v76 = MEMORY[0x1E69E7CC0];

    result = sub_1D10FDAC4(0, i & ~(i >> 63), 0);
    if (i < 0)
    {
      __break(1u);
      return result;
    }

    v15 = 0;
    a1 = v76;
    v16 = v13;
    v58 = v13 & 0xC000000000000001;
    v53 = v13 & 0xFFFFFFFFFFFFFF8;
    v17 = &selRef_removeObserver_name_object_;
    v18 = &selRef_removeObserver_name_object_;
    v56 = v13;
    v55 = i;
    v57 = a5;
    while (1)
    {
      v71 = a1;
      if (v58)
      {
        v19 = MEMORY[0x1D3886B70](v15, v16);
        goto LABEL_10;
      }

      if ((v15 & 0x8000000000000000) != 0)
      {
        break;
      }

      if (v15 >= *(v53 + 16))
      {
        goto LABEL_18;
      }

      v19 = *(v16 + 8 * v15 + 32);
LABEL_10:
      v20 = v19;
      v21 = objc_autoreleasePoolPush();
      v22 = [v20 v17[364]];
      v23 = [v22 v18[363]];

      v24 = [v23 bundleIdentifier];
      v25 = sub_1D139016C();
      v27 = v26;

      v70 = v25;
      v69 = v27;
      if (v59)
      {
        v68 = sub_1D1092DF8(v20, v54);
        v67 = v28;
        v66 = v29;
        v63 = v30;

        v65 = v25;
        v64 = v27;
      }

      else
      {
        v68 = 0;
        v67 = 0;
        v66 = 0;
        v65 = 0;
        v64 = 0;
        v63 = 1;
      }

      v60(v73, v20);
      v31 = [v20 v17[364]];
      v32 = [v31 v18[363]];

      v33 = [v32 name];
      v62 = sub_1D139016C();
      v61 = v34;

      objc_autoreleasePoolPop(v21);
      v35 = v73[0];
      v36 = v73[1];
      v37 = v73[2];
      v38 = v73[3];
      v40 = v73[4];
      v39 = v74;
      v41 = v63 & 1;
      v75 = v63 & 1;
      a1 = v71;
      v76 = v71;
      v43 = *(v71 + 16);
      v42 = *(v71 + 24);
      if (v43 >= v42 >> 1)
      {
        v71 = v74;
        sub_1D10FDAC4((v42 > 1), v43 + 1, 1);
        v39 = v71;
        a1 = v76;
      }

      ++v15;
      *(a1 + 16) = v43 + 1;
      v44 = a1 + (v43 << 7);
      v45 = v67;
      *(v44 + 32) = v68;
      *(v44 + 40) = v45;
      *(v44 + 48) = v66;
      *(v44 + 56) = v41;
      LODWORD(v45) = *&v72[3];
      *(v44 + 57) = *v72;
      *(v44 + 60) = v45;
      v46 = v64;
      *(v44 + 64) = v65;
      *(v44 + 72) = v46;
      *(v44 + 80) = v35;
      *(v44 + 88) = v36;
      *(v44 + 96) = v37;
      *(v44 + 104) = v38;
      *(v44 + 112) = v40;
      *(v44 + 120) = v39;
      v47 = v69;
      *(v44 + 128) = v70;
      *(v44 + 136) = v47;
      v48 = v61;
      *(v44 + 144) = v62;
      *(v44 + 152) = v48;
      a5 = v57;
      v16 = v56;
      v17 = &selRef_removeObserver_name_object_;
      v18 = &selRef_removeObserver_name_object_;
      if (v55 == v15)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    ;
  }

  a1 = MEMORY[0x1E69E7CC0];
LABEL_21:
  sub_1D1092890(v54);

  sub_1D108E54C(a1);
  v49 = a1;
  v50 = v52();

  sub_1D108F6A8(v49);

  return v50;
}

void *sub_1D108D470(unint64_t a1, uint64_t a2, int a3, void (*a4)(void *__return_ptr, void *), uint64_t a5, uint64_t (*a6)(void), uint64_t a7)
{
  v57 = a4;
  v56 = a3;
  v12 = _s13ConfigurationVMa();
  MEMORY[0x1EEE9AC00](v12 - 8);
  v51 = &v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D10921C4(a2, v51);
  if (a1 >> 62)
  {
    goto LABEL_22;
  }

  v14 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v49 = a6;
  v48 = a7;
  if (v14)
  {
    v69 = MEMORY[0x1E69E7CC0];

    result = sub_1D10FDB24(0, v14 & ~(v14 >> 63), 0);
    if ((v14 & 0x8000000000000000) == 0)
    {
      v16 = 0;
      v17 = v69;
      v55 = a1 & 0xC000000000000001;
      v50 = a1 & 0xFFFFFFFFFFFFFF8;
      v18 = &selRef_removeObserver_name_object_;
      v19 = &selRef_removeObserver_name_object_;
      v52 = v14;
      v54 = a5;
      v53 = a1;
      while (1)
      {
        if (v55)
        {
          v20 = MEMORY[0x1D3886B70](v16, a1);
        }

        else
        {
          if ((v16 & 0x8000000000000000) != 0)
          {
            __break(1u);
LABEL_21:
            __break(1u);
LABEL_22:
            v14 = sub_1D13910DC();
            goto LABEL_3;
          }

          if (v16 >= *(v50 + 16))
          {
            goto LABEL_21;
          }

          v20 = *(a1 + 8 * v16 + 32);
        }

        v21 = v20;
        v63 = objc_autoreleasePoolPush();
        v22 = [v21 v18[364]];
        v23 = [v22 v19[363]];

        v24 = [v23 bundleIdentifier];
        v25 = sub_1D139016C();
        v27 = v26;

        v64 = v27;
        v65 = v25;
        if (v56)
        {
          v28 = sub_1D1092DF8(v21, v51);
          v61 = v29;
          v62 = v28;
          v60 = v30;
          v32 = v31;

          v59 = v25;
          v58 = v27;
        }

        else
        {
          v61 = 0;
          v62 = 0;
          v60 = 0;
          v59 = 0;
          v58 = 0;
          v32 = 1;
        }

        v57(v67, v21);
        v33 = [v21 v18[364]];
        v34 = [v33 v19[363]];

        v35 = [v34 name];
        a7 = sub_1D139016C();
        v37 = v36;

        objc_autoreleasePoolPop(v63);
        v38 = v67[0];
        v39 = v67[1];
        v40 = v32 & 1;
        v68 = v40;
        v69 = v17;
        v42 = *(v17 + 16);
        v41 = *(v17 + 24);
        a6 = (v42 + 1);
        if (v42 >= v41 >> 1)
        {
          sub_1D10FDB24((v41 > 1), v42 + 1, 1);
          v17 = v69;
        }

        ++v16;
        *(v17 + 16) = a6;
        v43 = v17 + 96 * v42;
        v44 = v61;
        *(v43 + 32) = v62;
        *(v43 + 40) = v44;
        *(v43 + 48) = v60;
        *(v43 + 56) = v40;
        LODWORD(v44) = *&v66[3];
        *(v43 + 57) = *v66;
        *(v43 + 60) = v44;
        v45 = v58;
        *(v43 + 64) = v59;
        *(v43 + 72) = v45;
        *(v43 + 80) = v38;
        *(v43 + 88) = v39;
        v46 = v64;
        *(v43 + 96) = v65;
        *(v43 + 104) = v46;
        *(v43 + 112) = a7;
        *(v43 + 120) = v37;
        a5 = v54;
        a1 = v53;
        v18 = &selRef_removeObserver_name_object_;
        v19 = &selRef_removeObserver_name_object_;
        if (v52 == v16)
        {
          goto LABEL_19;
        }
      }
    }

    __break(1u);
  }

  else
  {

    v17 = MEMORY[0x1E69E7CC0];
LABEL_19:
    sub_1D1092890(v51);

    sub_1D108E94C(v17);
    v47 = v49();

    sub_1D108F8D0(v17);

    return v47;
  }

  return result;
}

void *sub_1D108D8C4(unint64_t a1, uint64_t a2, int a3, void (*a4)(void *__return_ptr, void), uint64_t a5, unint64_t a6, uint64_t a7)
{
  v48 = a7;
  v57 = a4;
  v56 = a3;
  v11 = _s13ConfigurationVMa();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v51 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D10921C4(a2, v51);
  if (a1 >> 62)
  {
    goto LABEL_19;
  }

  v13 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  for (i = a6; v13; i = a6)
  {
    v14 = a1;
    v74 = MEMORY[0x1E69E7CC0];

    result = sub_1D10FDB84(0, v13 & ~(v13 >> 63), 0);
    if (v13 < 0)
    {
      __break(1u);
      return result;
    }

    a6 = 0;
    a1 = v74;
    v16 = v14;
    v54 = a5;
    v55 = v14 & 0xC000000000000001;
    v50 = v14 & 0xFFFFFFFFFFFFFF8;
    v17 = &selRef_removeObserver_name_object_;
    v52 = v13;
    v53 = v14;
    while (1)
    {
      if (v55)
      {
        v18 = MEMORY[0x1D3886B70](a6, v16);
        goto LABEL_10;
      }

      if ((a6 & 0x8000000000000000) != 0)
      {
        break;
      }

      if (a6 >= *(v50 + 16))
      {
        goto LABEL_18;
      }

      v18 = *(v16 + 8 * a6 + 32);
LABEL_10:
      v19 = v18;
      v63 = objc_autoreleasePoolPush();
      v20 = [v19 v17[364]];
      v21 = [v20 source];

      v22 = [v21 bundleIdentifier];
      v23 = sub_1D139016C();
      v25 = v24;

      v64 = v25;
      v65 = v23;
      if (v56)
      {
        v26 = sub_1D1092DF8(v19, v51);
        v61 = v27;
        v62 = v26;
        v60 = v28;
        v30 = v29;

        v58 = v25;
        v59 = v23;
      }

      else
      {
        v61 = 0;
        v62 = 0;
        v59 = 0;
        v60 = 0;
        v58 = 0;
        v30 = 1;
      }

      v57(v72, v19);
      v31 = [v19 v17[364]];
      v32 = [v31 source];

      v33 = [v32 name];
      v34 = sub_1D139016C();
      v36 = v35;

      objc_autoreleasePoolPop(v63);
      v69 = v72[3];
      v70 = v72[4];
      v67 = v72[1];
      v68 = v72[2];
      v66 = v72[0];
      v37 = v30 & 1;
      v73 = v37;
      v74 = a1;
      v39 = *(a1 + 16);
      v38 = *(a1 + 24);
      if (v39 >= v38 >> 1)
      {
        sub_1D10FDB84((v38 > 1), v39 + 1, 1);
        a1 = v74;
      }

      ++a6;
      *(a1 + 16) = v39 + 1;
      v40 = a1 + 160 * v39;
      v41 = v61;
      *(v40 + 32) = v62;
      *(v40 + 40) = v41;
      *(v40 + 48) = v60;
      *(v40 + 56) = v37;
      LODWORD(v41) = *(v71 + 3);
      *(v40 + 57) = v71[0];
      *(v40 + 60) = v41;
      v42 = v58;
      *(v40 + 64) = v59;
      *(v40 + 72) = v42;
      *(v40 + 80) = v66;
      v43 = v67;
      v44 = v68;
      v45 = v70;
      *(v40 + 128) = v69;
      *(v40 + 144) = v45;
      *(v40 + 96) = v43;
      *(v40 + 112) = v44;
      v46 = v64;
      *(v40 + 160) = v65;
      *(v40 + 168) = v46;
      *(v40 + 176) = v34;
      *(v40 + 184) = v36;
      v16 = v53;
      a5 = v54;
      v17 = &selRef_removeObserver_name_object_;
      if (v52 == a6)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    v13 = sub_1D13910DC();
  }

  a1 = MEMORY[0x1E69E7CC0];
LABEL_21:
  sub_1D1092890(v51);

  sub_1D108ECCC(a1);
  v47 = i();

  sub_1D108FAF8(a1);

  return v47;
}

uint64_t sub_1D108DCC0(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v59 = MEMORY[0x1E69E7CC0];
    sub_1D10FD9E4(0, v1, 0);
    v4 = v59;
    v5 = (a1 + 48);
    do
    {
      v50 = *(v5 - 1);
      v52 = *(v5 - 2);
      v48 = *v5;
      v6 = *(v5 + 8);
      v7 = v5[3];
      v8 = v5[5];
      v54 = v5[4];
      v56 = v5[2];
      v9 = v5[6];
      v10 = *(v59 + 16);
      v11 = *(v59 + 24);

      if (v10 >= v11 >> 1)
      {
        sub_1D10FD9E4((v11 > 1), v10 + 1, 1);
      }

      *(v59 + 16) = v10 + 1;
      v12 = v59 + 72 * v10;
      *(v12 + 32) = v52;
      *(v12 + 40) = v50;
      *(v12 + 48) = v48;
      *(v12 + 56) = v6;
      *(v12 + 57) = *v58;
      *(v12 + 60) = *&v58[3];
      *(v12 + 64) = v56;
      *(v12 + 72) = v7;
      *(v12 + 80) = v54;
      *(v12 + 88) = v8;
      *(v12 + 96) = v9;
      v5 += 13;
      --v1;
    }

    while (v1);
    v2 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v4 = MEMORY[0x1E69E7CC0];
  }

  v13 = sub_1D10928EC(v4);

  sub_1D1094FAC(0, &qword_1EC609D48, &qword_1EC609D50, &_s23FormattedRecordMetadataVN);
  result = sub_1D139141C();
  v15 = result;
  v16 = 0;
  v17 = *(v13 + 64);
  v42 = v13 + 64;
  v18 = 1 << *(v13 + 32);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & v17;
  v21 = (v18 + 63) >> 6;
  v45 = v13;
  v46 = result + 64;
  v43 = v21;
  v44 = result;
  if ((v19 & v17) != 0)
  {
    while (1)
    {
      v22 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
LABEL_17:
      v25 = v22 | (v16 << 6);
      v26 = *(v13 + 48) + 48 * v25;
      v57 = *v26;
      v55 = *(v26 + 16);
      v53 = *(v26 + 24);
      v51 = *(v26 + 32);
      v27 = *(*(v13 + 56) + 8 * v25);
      v28 = *(v27 + 16);
      if (v28)
      {
        v49 = v20;
        v47 = *(v26 + 40);

        v29 = v27;
        sub_1D10FD9C4(0, v28, 0);
        v30 = v2;
        v31 = (v29 + 96);
        do
        {
          v32 = *(v31 - 2);
          v33 = *(v31 - 1);
          v34 = *v31;
          v35 = *(v30 + 16);
          v36 = *(v30 + 24);

          if (v35 >= v36 >> 1)
          {
            sub_1D10FD9C4((v36 > 1), v35 + 1, 1);
          }

          *(v30 + 16) = v35 + 1;
          v37 = (v30 + 24 * v35);
          v37[4] = v32;
          v37[5] = v33;
          v37[6] = v34;
          v31 += 9;
          --v28;
        }

        while (v28);

        v2 = MEMORY[0x1E69E7CC0];
        v15 = v44;
        v13 = v45;
        v21 = v43;
        v20 = v49;
        result = v47;
      }

      else
      {

        v30 = v2;
      }

      *(v46 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
      v38 = v15[6] + 48 * v25;
      *v38 = v57;
      *(v38 + 16) = v55;
      *(v38 + 24) = v53;
      *(v38 + 32) = v51;
      *(v38 + 40) = result;
      *(v15[7] + 8 * v25) = v30;
      v39 = v15[2];
      v40 = __OFADD__(v39, 1);
      v41 = v39 + 1;
      if (v40)
      {
        break;
      }

      v15[2] = v41;
      if (!v20)
      {
        goto LABEL_12;
      }
    }
  }

  else
  {
LABEL_12:
    v23 = v16;
    while (1)
    {
      v16 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      if (v16 >= v21)
      {

        return v15;
      }

      v24 = *(v42 + 8 * v16);
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v20 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D108E078(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v97 = MEMORY[0x1E69E7CC0];
    sub_1D10FDA44(0, v1, 0);
    v4 = v97;
    v5 = (a1 + 80);
    do
    {
      v6 = v5[2];
      v7 = v5[4];
      v91 = v5[3];
      v92 = v7;
      v93 = v5[5];
      v8 = *v5;
      v87 = *(v5 - 1);
      v88 = v8;
      v9 = v5[2];
      v10 = *v5;
      v89 = v5[1];
      v90 = v9;
      v11 = *(v5 - 2);
      v85 = *(v5 - 3);
      v86 = v11;
      v81 = v6;
      v82 = v91;
      v94 = *(v5 + 12);
      v12 = v85;
      v13 = BYTE8(v11);
      v71 = v87;
      v67 = v11;
      v69 = *(&v87 + 1);
      v83 = *(v5 + 64);
      v79 = v10;
      v80 = v89;
      sub_1D1093304(&v85, &v73, &qword_1EC609D10);
      sub_1D1095034(&v88, &v73);

      v84 = v13;
      v75 = v90;
      v76 = v91;
      v77 = v92;
      v73 = v88;
      v74 = v89;
      v95[2] = v81;
      v95[3] = v82;
      v96 = v83;
      v95[0] = v79;
      v95[1] = v80;
      sub_1D1095108(v95);
      v14 = v84;
      v97 = v4;
      v16 = *(v4 + 16);
      v15 = *(v4 + 24);
      if (v16 >= v15 >> 1)
      {
        sub_1D10FDA44((v15 > 1), v16 + 1, 1);
        v4 = v97;
      }

      *(v4 + 16) = v16 + 1;
      v17 = v4 + 120 * v16;
      *(v17 + 32) = v12;
      *(v17 + 48) = v67;
      *(v17 + 56) = v14;
      v18 = *(v78 + 3);
      *(v17 + 57) = v78[0];
      *(v17 + 60) = v18;
      *(v17 + 64) = v71;
      *(v17 + 72) = v69;
      *(v17 + 80) = v73;
      v19 = v74;
      v20 = v75;
      v21 = v76;
      *(v17 + 144) = v77;
      *(v17 + 112) = v20;
      *(v17 + 128) = v21;
      *(v17 + 96) = v19;
      v5 = (v5 + 152);
      --v1;
    }

    while (v1);
    v2 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v4 = MEMORY[0x1E69E7CC0];
  }

  v22 = sub_1D10934D8(v4);

  sub_1D1094FAC(0, &qword_1EC609D18, &qword_1EC609D20, &_s27FormattedRecordValueInRangeVN);
  result = sub_1D139141C();
  v24 = result;
  v25 = 0;
  v58 = v22 + 64;
  v26 = 1 << *(v22 + 32);
  v27 = -1;
  if (v26 < 64)
  {
    v27 = ~(-1 << v26);
  }

  v28 = v27 & *(v22 + 64);
  v29 = (v26 + 63) >> 6;
  v61 = v22;
  v62 = result + 64;
  v59 = v29;
  v60 = result;
  if (v28)
  {
    while (1)
    {
      v30 = __clz(__rbit64(v28));
      v31 = (v28 - 1) & v28;
LABEL_17:
      v34 = v30 | (v25 << 6);
      v64 = v31;
      v35 = *(v22 + 48) + 48 * v34;
      v70 = *v35;
      v68 = *(v35 + 16);
      v66 = *(v35 + 24);
      v36 = *(v35 + 40);
      v65 = *(v35 + 32);
      v72 = v34;
      v37 = *(*(v22 + 56) + 8 * v34);
      v38 = *(v37 + 16);
      if (v38)
      {
        *&v73 = v2;
        v63 = v36;

        sub_1D10FDA24(0, v38, 0);
        v39 = v73;
        v40 = v38 - 1;
        for (i = 32; ; i += 120)
        {
          v42 = *(v37 + i);
          v43 = *(v37 + i + 16);
          v44 = *(v37 + i + 48);
          v87 = *(v37 + i + 32);
          v88 = v44;
          v85 = v42;
          v86 = v43;
          v45 = *(v37 + i + 64);
          v46 = *(v37 + i + 80);
          v47 = *(v37 + i + 96);
          LOBYTE(v92) = *(v37 + i + 112);
          v90 = v46;
          v91 = v47;
          v89 = v45;
          sub_1D1094054(&v85, v78, &qword_1EC609D28);

          *&v73 = v39;
          v49 = *(v39 + 16);
          v48 = *(v39 + 24);
          if (v49 >= v48 >> 1)
          {
            sub_1D10FDA24((v48 > 1), v49 + 1, 1);
            v39 = v73;
          }

          *(v39 + 16) = v49 + 1;
          v50 = v39 + 72 * v49;
          *(v50 + 32) = v88;
          v51 = v89;
          v52 = v90;
          v53 = v91;
          *(v50 + 96) = v92;
          *(v50 + 64) = v52;
          *(v50 + 80) = v53;
          *(v50 + 48) = v51;
          if (!v40)
          {
            break;
          }

          --v40;
        }

        v2 = MEMORY[0x1E69E7CC0];
        v24 = v60;
        v22 = v61;
        v29 = v59;
        result = v63;
      }

      else
      {

        v39 = v2;
      }

      *(v62 + ((v72 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v72;
      v54 = v24[6] + 48 * v72;
      *v54 = v70;
      *(v54 + 16) = v68;
      *(v54 + 24) = v66;
      *(v54 + 32) = v65;
      *(v54 + 40) = result;
      *(v24[7] + 8 * v72) = v39;
      v55 = v24[2];
      v56 = __OFADD__(v55, 1);
      v57 = v55 + 1;
      if (v56)
      {
        break;
      }

      v24[2] = v57;
      v28 = v64;
      if (!v64)
      {
        goto LABEL_12;
      }
    }
  }

  else
  {
LABEL_12:
    v32 = v25;
    while (1)
    {
      v25 = v32 + 1;
      if (__OFADD__(v32, 1))
      {
        break;
      }

      if (v25 >= v29)
      {

        return v24;
      }

      v33 = *(v58 + 8 * v25);
      ++v32;
      if (v33)
      {
        v30 = __clz(__rbit64(v33));
        v31 = (v33 - 1) & v33;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D108E54C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v68 = MEMORY[0x1E69E7CC0];
    sub_1D10FDAA4(0, v1, 0);
    v4 = v68;
    v5 = (a1 + 64);
    do
    {
      v53 = *(v5 - 3);
      v55 = *(v5 - 4);
      v51 = *(v5 - 2);
      v6 = *(v5 - 8);
      v7 = v5[1];
      v63 = *v5;
      v8 = v5[3];
      v9 = v5[5];
      v59 = v5[4];
      v61 = v5[2];
      v10 = v5[7];
      v57 = v5[6];
      v12 = *(v68 + 16);
      v11 = *(v68 + 24);
      v65 = v12 + 1;

      if (v12 >= v11 >> 1)
      {
        sub_1D10FDAA4((v11 > 1), v65, 1);
      }

      *(v68 + 16) = v65;
      v13 = v68 + 96 * v12;
      *(v13 + 32) = v55;
      *(v13 + 40) = v53;
      *(v13 + 48) = v51;
      *(v13 + 56) = v6;
      *(v13 + 57) = *v67;
      *(v13 + 60) = *&v67[3];
      *(v13 + 64) = v63;
      *(v13 + 72) = v7;
      *(v13 + 80) = v61;
      *(v13 + 88) = v8;
      *(v13 + 96) = v59;
      *(v13 + 104) = v9;
      *(v13 + 112) = v57;
      *(v13 + 120) = v10;
      v5 += 16;
      --v1;
    }

    while (v1);
    v2 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v4 = MEMORY[0x1E69E7CC0];
  }

  v14 = sub_1D10937E4(v4);

  sub_1D1094FAC(0, &qword_1EC609CF0, &qword_1EC609CF8, &_s20FormattedRecordValueVN);
  result = sub_1D139141C();
  v16 = result;
  v17 = 0;
  v18 = *(v14 + 64);
  v45 = v14 + 64;
  v19 = 1 << *(v14 + 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & v18;
  v22 = (v19 + 63) >> 6;
  v48 = v14;
  v49 = result + 64;
  v46 = v22;
  v47 = result;
  if ((v20 & v18) != 0)
  {
    while (1)
    {
      v23 = __clz(__rbit64(v21));
      v21 &= v21 - 1;
LABEL_17:
      v26 = v23 | (v17 << 6);
      v27 = *(v14 + 48) + 48 * v26;
      v62 = *v27;
      v28 = *(v27 + 16);
      v60 = *(v27 + 24);
      v58 = *(v27 + 32);
      v29 = *(*(v14 + 56) + 8 * v26);
      v30 = *(v29 + 16);
      if (v30)
      {
        v52 = v26;
        v54 = v21;
        v56 = v17;
        v50 = *(v27 + 40);

        v31 = v29;
        sub_1D10FDA84(0, v30, 0);
        v32 = v2;
        v33 = (v31 + 120);
        do
        {
          v34 = *(v33 - 4);
          v66 = *(v33 - 5);
          v35 = *(v33 - 3);
          v36 = *(v33 - 2);
          v37 = *v33;
          v64 = *(v33 - 1);
          v38 = *(v32 + 16);
          v39 = *(v32 + 24);

          if (v38 >= v39 >> 1)
          {
            sub_1D10FDA84((v39 > 1), v38 + 1, 1);
          }

          *(v32 + 16) = v38 + 1;
          v40 = (v32 + 48 * v38);
          v40[4] = v66;
          v40[5] = v34;
          v40[6] = v35;
          v40[7] = v36;
          v40[8] = v64;
          v40[9] = v37;
          v33 += 12;
          --v30;
        }

        while (v30);

        v2 = MEMORY[0x1E69E7CC0];
        v16 = v47;
        v14 = v48;
        v21 = v54;
        v17 = v56;
        v22 = v46;
        v26 = v52;
        result = v50;
      }

      else
      {

        v32 = v2;
      }

      *(v49 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
      v41 = v16[6] + 48 * v26;
      *v41 = v62;
      *(v41 + 16) = v28;
      *(v41 + 24) = v60;
      *(v41 + 32) = v58;
      *(v41 + 40) = result;
      *(v16[7] + 8 * v26) = v32;
      v42 = v16[2];
      v43 = __OFADD__(v42, 1);
      v44 = v42 + 1;
      if (v43)
      {
        break;
      }

      v16[2] = v44;
      if (!v21)
      {
        goto LABEL_12;
      }
    }
  }

  else
  {
LABEL_12:
    v24 = v17;
    while (1)
    {
      v17 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      if (v17 >= v22)
      {

        return v16;
      }

      v25 = *(v45 + 8 * v17);
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v21 = (v25 - 1) & v25;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D108E94C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v57 = MEMORY[0x1E69E7CC0];
    sub_1D10FDB04(0, v1, 0);
    v4 = v57;
    v5 = (a1 + 48);
    do
    {
      v6 = *(v5 - 2);
      v48 = *v5;
      v50 = *(v5 - 1);
      v7 = *(v5 + 8);
      v8 = v5[3];
      v9 = v5[5];
      v52 = v5[4];
      v54 = v5[2];
      v10 = *(v57 + 16);
      v11 = *(v57 + 24);

      if (v10 >= v11 >> 1)
      {
        sub_1D10FDB04((v11 > 1), v10 + 1, 1);
      }

      *(v57 + 16) = v10 + 1;
      v12 = v57 + (v10 << 6);
      *(v12 + 32) = v6;
      *(v12 + 40) = v50;
      *(v12 + 48) = v48;
      *(v12 + 56) = v7;
      *(v12 + 57) = *v56;
      *(v12 + 60) = *&v56[3];
      *(v12 + 64) = v54;
      *(v12 + 72) = v8;
      *(v12 + 80) = v52;
      *(v12 + 88) = v9;
      v5 += 12;
      --v1;
    }

    while (v1);
    v2 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v4 = MEMORY[0x1E69E7CC0];
  }

  v13 = sub_1D1093A88(v4);

  sub_1D1094FAC(0, &qword_1EC609CD0, &qword_1EC609CD8, &_s15FormattedRecordVN);
  result = sub_1D139141C();
  v15 = result;
  v16 = 0;
  v17 = *(v13 + 64);
  v41 = v13 + 64;
  v18 = 1 << *(v13 + 32);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & v17;
  v21 = (v18 + 63) >> 6;
  v44 = v13;
  v45 = result + 64;
  v42 = v21;
  v43 = result;
  if ((v19 & v17) != 0)
  {
    while (1)
    {
      v22 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
LABEL_17:
      v25 = v22 | (v16 << 6);
      v26 = *(v13 + 48) + 48 * v25;
      v55 = *v26;
      v53 = *(v26 + 16);
      v51 = *(v26 + 24);
      v49 = *(v26 + 32);
      v27 = *(*(v13 + 56) + 8 * v25);
      v28 = *(v27 + 16);
      if (v28)
      {
        v46 = *(v26 + 40);
        v47 = v20;

        v29 = v27;
        sub_1D10FDAE4(0, v28, 0);
        v30 = v2;
        v31 = (v29 + 88);
        do
        {
          v33 = *(v31 - 1);
          v32 = *v31;
          v34 = *(v30 + 16);
          v35 = *(v30 + 24);

          if (v34 >= v35 >> 1)
          {
            sub_1D10FDAE4((v35 > 1), v34 + 1, 1);
          }

          *(v30 + 16) = v34 + 1;
          v36 = v30 + 16 * v34;
          *(v36 + 32) = v33;
          *(v36 + 40) = v32;
          v31 += 8;
          --v28;
        }

        while (v28);

        v2 = MEMORY[0x1E69E7CC0];
        v15 = v43;
        v13 = v44;
        v21 = v42;
        result = v46;
        v20 = v47;
      }

      else
      {

        v30 = v2;
      }

      *(v45 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
      v37 = v15[6] + 48 * v25;
      *v37 = v55;
      *(v37 + 16) = v53;
      *(v37 + 24) = v51;
      *(v37 + 32) = v49;
      *(v37 + 40) = result;
      *(v15[7] + 8 * v25) = v30;
      v38 = v15[2];
      v39 = __OFADD__(v38, 1);
      v40 = v38 + 1;
      if (v39)
      {
        break;
      }

      v15[2] = v40;
      if (!v20)
      {
        goto LABEL_12;
      }
    }
  }

  else
  {
LABEL_12:
    v23 = v16;
    while (1)
    {
      v16 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      if (v16 >= v21)
      {

        return v15;
      }

      v24 = *(v41 + 8 * v16);
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v20 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D108ECCC(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v99 = MEMORY[0x1E69E7CC0];
    sub_1D10FDB64(0, v1, 0);
    v4 = v99;
    v5 = (a1 + 80);
    do
    {
      v6 = v5[2];
      v7 = v5[4];
      v94 = v5[3];
      v95 = v7;
      v8 = v5[6];
      v9 = v5[4];
      v96 = v5[5];
      v97 = v8;
      v10 = *v5;
      v90 = *(v5 - 1);
      v91 = v10;
      v11 = v5[2];
      v12 = *v5;
      v92 = v5[1];
      v93 = v11;
      v13 = *(v5 - 2);
      v88 = *(v5 - 3);
      v89 = v13;
      v84 = v6;
      v85 = v94;
      v86 = v9;
      v14 = v88;
      v15 = v13;
      v16 = BYTE8(v13);
      v74 = v90;
      v70 = *(&v88 + 1);
      v72 = *(&v90 + 1);
      v82 = v12;
      v83 = v92;
      sub_1D1093304(&v88, &v76, &qword_1EC609C88);
      sub_1D10932A8(&v91, &v76);

      v87 = v16;
      v78 = v93;
      v79 = v94;
      v80 = v95;
      v76 = v91;
      v77 = v92;
      v98[2] = v84;
      v98[3] = v85;
      v98[4] = v86;
      v98[0] = v82;
      v98[1] = v83;
      sub_1D1093370(v98);
      v17 = v87;
      v99 = v4;
      v19 = *(v4 + 16);
      v18 = *(v4 + 24);
      if (v19 >= v18 >> 1)
      {
        sub_1D10FDB64((v18 > 1), v19 + 1, 1);
        v4 = v99;
      }

      *(v4 + 16) = v19 + 1;
      v20 = v4 + (v19 << 7);
      *(v20 + 32) = v14;
      *(v20 + 40) = v70;
      *(v20 + 48) = v15;
      *(v20 + 56) = v17;
      v21 = *(v81 + 3);
      *(v20 + 57) = v81[0];
      *(v20 + 60) = v21;
      *(v20 + 64) = v74;
      *(v20 + 72) = v72;
      *(v20 + 80) = v76;
      v22 = v77;
      v23 = v78;
      v24 = v80;
      *(v20 + 128) = v79;
      *(v20 + 144) = v24;
      *(v20 + 96) = v22;
      *(v20 + 112) = v23;
      v5 += 10;
      --v1;
    }

    while (v1);
    v2 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v4 = MEMORY[0x1E69E7CC0];
  }

  v25 = sub_1D1093D10(v4);

  sub_1D1094FAC(0, &qword_1EC609CA8, &qword_1EC609CB0, &_s22FormattedRecord3ValuesVN);
  result = sub_1D139141C();
  v27 = result;
  v28 = 0;
  v61 = v25 + 64;
  v29 = 1 << *(v25 + 32);
  v30 = -1;
  if (v29 < 64)
  {
    v30 = ~(-1 << v29);
  }

  v31 = v30 & *(v25 + 64);
  v32 = (v29 + 63) >> 6;
  v64 = v25;
  v65 = result + 64;
  v62 = v32;
  v63 = result;
  if (v31)
  {
    while (1)
    {
      v33 = __clz(__rbit64(v31));
      v34 = (v31 - 1) & v31;
LABEL_17:
      v37 = v33 | (v28 << 6);
      v67 = v34;
      v38 = *(v25 + 48) + 48 * v37;
      v73 = *v38;
      v71 = *(v38 + 16);
      v69 = *(v38 + 24);
      v39 = *(v38 + 40);
      v68 = *(v38 + 32);
      v75 = v37;
      v40 = *(*(v25 + 56) + 8 * v37);
      v41 = *(v40 + 16);
      if (v41)
      {
        *&v76 = v2;
        v66 = v39;

        sub_1D10FDB44(0, v41, 0);
        v42 = v76;
        v43 = v41 - 1;
        for (i = 32; ; i += 128)
        {
          v45 = *(v40 + i);
          v46 = *(v40 + i + 16);
          v47 = *(v40 + i + 48);
          v90 = *(v40 + i + 32);
          v91 = v47;
          v89 = v46;
          v88 = v45;
          v48 = *(v40 + i + 64);
          v49 = *(v40 + i + 80);
          v50 = *(v40 + i + 112);
          v94 = *(v40 + i + 96);
          v95 = v50;
          v92 = v48;
          v93 = v49;
          sub_1D1094054(&v88, v81, &qword_1EC609CC0);

          *&v76 = v42;
          v52 = *(v42 + 16);
          v51 = *(v42 + 24);
          if (v52 >= v51 >> 1)
          {
            sub_1D10FDB44((v51 > 1), v52 + 1, 1);
            v42 = v76;
          }

          *(v42 + 16) = v52 + 1;
          v53 = (v42 + 80 * v52);
          v53[2] = v91;
          v54 = v92;
          v55 = v93;
          v56 = v95;
          v53[5] = v94;
          v53[6] = v56;
          v53[3] = v54;
          v53[4] = v55;
          if (!v43)
          {
            break;
          }

          --v43;
        }

        v2 = MEMORY[0x1E69E7CC0];
        v27 = v63;
        v25 = v64;
        v32 = v62;
        result = v66;
      }

      else
      {

        v42 = v2;
      }

      *(v65 + ((v75 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v75;
      v57 = v27[6] + 48 * v75;
      *v57 = v73;
      *(v57 + 16) = v71;
      *(v57 + 24) = v69;
      *(v57 + 32) = v68;
      *(v57 + 40) = result;
      *(v27[7] + 8 * v75) = v42;
      v58 = v27[2];
      v59 = __OFADD__(v58, 1);
      v60 = v58 + 1;
      if (v59)
      {
        break;
      }

      v27[2] = v60;
      v31 = v67;
      if (!v67)
      {
        goto LABEL_12;
      }
    }
  }

  else
  {
LABEL_12:
    v35 = v28;
    while (1)
    {
      v28 = v35 + 1;
      if (__OFADD__(v35, 1))
      {
        break;
      }

      if (v28 >= v32)
      {

        return v27;
      }

      v36 = *(v61 + 8 * v28);
      ++v35;
      if (v36)
      {
        v33 = __clz(__rbit64(v36));
        v34 = (v36 - 1) & v36;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D108F180(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v35 = MEMORY[0x1E69E7CC0];
    sub_1D10FD9A4(0, v1, 0);
    v2 = v35;
    v4 = (a1 + 128);
    do
    {
      v6 = *(v4 - 3);
      v5 = *(v4 - 2);
      v8 = *(v4 - 1);
      v7 = *v4;
      v9 = *(v35 + 16);
      v10 = *(v35 + 24);

      if (v9 >= v10 >> 1)
      {
        sub_1D10FD9A4((v10 > 1), v9 + 1, 1);
      }

      *(v35 + 16) = v9 + 1;
      v11 = (v35 + 32 * v9);
      v11[4] = v6;
      v11[5] = v5;
      v11[6] = v8;
      v11[7] = v7;
      v4 += 13;
      --v1;
    }

    while (v1);
  }

  v12 = sub_1D1092BA8(v2);

  sub_1D1093420();
  result = sub_1D139141C();
  v14 = result;
  v15 = 0;
  v16 = 1 << *(v12 + 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & *(v12 + 64);
  v19 = (v16 + 63) >> 6;
  v20 = result + 64;
  if (v18)
  {
    while (1)
    {
      v21 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
LABEL_15:
      v24 = v21 | (v15 << 6);
      v25 = *(*(v12 + 56) + 8 * v24);
      if (!v25[2])
      {
        break;
      }

      v26 = *(*(v12 + 48) + 16 * v24);
      result = *(*(v12 + 48) + 16 * v24 + 8);
      v27 = v25[6];
      v28 = v25[7];
      *(v20 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
      v29 = 16 * v24;
      v30 = (v14[6] + v29);
      *v30 = v26;
      v30[1] = result;
      v31 = (v14[7] + v29);
      *v31 = v27;
      v31[1] = v28;
      v32 = v14[2];
      v33 = __OFADD__(v32, 1);
      v34 = v32 + 1;
      if (v33)
      {
        goto LABEL_22;
      }

      v14[2] = v34;

      if (!v18)
      {
        goto LABEL_10;
      }
    }
  }

  else
  {
LABEL_10:
    v22 = v15;
    while (1)
    {
      v15 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v15 >= v19)
      {

        return v14;
      }

      v23 = *(v12 + 64 + 8 * v15);
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v18 = (v23 - 1) & v23;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_22:
  __break(1u);
  return result;
}

uint64_t sub_1D108F3A8(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v58 = MEMORY[0x1E69E7CC0];
    sub_1D10FD9A4(0, v1, 0);
    v2 = v58;
    v4 = (a1 + 80);
    do
    {
      v5 = v4[2];
      v6 = v4[4];
      v52 = v4[3];
      v53 = v6;
      v54 = v4[5];
      v7 = *v4;
      v48[2] = *(v4 - 1);
      v49 = v7;
      v8 = v4[2];
      v9 = *v4;
      v50 = v4[1];
      v51 = v8;
      v10 = *(v4 - 2);
      v48[0] = *(v4 - 3);
      v48[1] = v10;
      v55 = *(v4 + 12);
      v11 = v55;
      v40 = *(&v54 + 1);
      v12 = *(&v53 + 1);
      v13 = v54;
      v45 = v5;
      v46 = v52;
      v47 = *(v4 + 64);
      v43 = v9;
      v44 = v50;
      v56[2] = v5;
      v56[3] = v52;
      v57 = v47;
      v56[0] = v9;
      v56[1] = v50;
      sub_1D1095034(&v49, v41);
      sub_1D1095034(&v49, v41);
      sub_1D1093304(v48, v41, &qword_1EC609D10);
      sub_1D1095108(v56);
      v41[2] = v45;
      v41[3] = v46;
      v42 = v47;
      v41[0] = v43;
      v41[1] = v44;
      sub_1D1095108(v41);

      sub_1D10933C4(v48, &qword_1EC609D10);
      v58 = v2;
      v15 = *(v2 + 16);
      v14 = *(v2 + 24);
      if (v15 >= v14 >> 1)
      {
        sub_1D10FD9A4((v14 > 1), v15 + 1, 1);
        v2 = v58;
      }

      *(v2 + 16) = v15 + 1;
      v16 = (v2 + 32 * v15);
      v16[4] = v12;
      v16[5] = v13;
      v16[6] = v40;
      v16[7] = v11;
      v4 = (v4 + 152);
      --v1;
    }

    while (v1);
  }

  v17 = sub_1D1092BA8(v2);

  sub_1D1093420();
  result = sub_1D139141C();
  v19 = result;
  v20 = 0;
  v21 = 1 << *(v17 + 32);
  v22 = -1;
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  v23 = v22 & *(v17 + 64);
  v24 = (v21 + 63) >> 6;
  v25 = result + 64;
  if (v23)
  {
    while (1)
    {
      v26 = __clz(__rbit64(v23));
      v23 &= v23 - 1;
LABEL_15:
      v29 = v26 | (v20 << 6);
      v30 = *(*(v17 + 56) + 8 * v29);
      if (!v30[2])
      {
        break;
      }

      v31 = *(*(v17 + 48) + 16 * v29);
      result = *(*(v17 + 48) + 16 * v29 + 8);
      v32 = v30[6];
      v33 = v30[7];
      *(v25 + ((v29 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v29;
      v34 = 16 * v29;
      v35 = (v19[6] + v34);
      *v35 = v31;
      v35[1] = result;
      v36 = (v19[7] + v34);
      *v36 = v32;
      v36[1] = v33;
      v37 = v19[2];
      v38 = __OFADD__(v37, 1);
      v39 = v37 + 1;
      if (v38)
      {
        goto LABEL_22;
      }

      v19[2] = v39;

      if (!v23)
      {
        goto LABEL_10;
      }
    }
  }

  else
  {
LABEL_10:
    v27 = v20;
    while (1)
    {
      v20 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        break;
      }

      if (v20 >= v24)
      {

        return v19;
      }

      v28 = *(v17 + 64 + 8 * v20);
      ++v27;
      if (v28)
      {
        v26 = __clz(__rbit64(v28));
        v23 = (v28 - 1) & v28;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_22:
  __break(1u);
  return result;
}

uint64_t sub_1D108F6A8(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v35 = MEMORY[0x1E69E7CC0];
    sub_1D10FD9A4(0, v1, 0);
    v2 = v35;
    v4 = (a1 + 152);
    do
    {
      v6 = *(v4 - 3);
      v5 = *(v4 - 2);
      v8 = *(v4 - 1);
      v7 = *v4;
      v9 = *(v35 + 16);
      v10 = *(v35 + 24);

      if (v9 >= v10 >> 1)
      {
        sub_1D10FD9A4((v10 > 1), v9 + 1, 1);
      }

      *(v35 + 16) = v9 + 1;
      v11 = (v35 + 32 * v9);
      v11[4] = v6;
      v11[5] = v5;
      v11[6] = v8;
      v11[7] = v7;
      v4 += 16;
      --v1;
    }

    while (v1);
  }

  v12 = sub_1D1092BA8(v2);

  sub_1D1093420();
  result = sub_1D139141C();
  v14 = result;
  v15 = 0;
  v16 = 1 << *(v12 + 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & *(v12 + 64);
  v19 = (v16 + 63) >> 6;
  v20 = result + 64;
  if (v18)
  {
    while (1)
    {
      v21 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
LABEL_15:
      v24 = v21 | (v15 << 6);
      v25 = *(*(v12 + 56) + 8 * v24);
      if (!v25[2])
      {
        break;
      }

      v26 = *(*(v12 + 48) + 16 * v24);
      result = *(*(v12 + 48) + 16 * v24 + 8);
      v27 = v25[6];
      v28 = v25[7];
      *(v20 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
      v29 = 16 * v24;
      v30 = (v14[6] + v29);
      *v30 = v26;
      v30[1] = result;
      v31 = (v14[7] + v29);
      *v31 = v27;
      v31[1] = v28;
      v32 = v14[2];
      v33 = __OFADD__(v32, 1);
      v34 = v32 + 1;
      if (v33)
      {
        goto LABEL_22;
      }

      v14[2] = v34;

      if (!v18)
      {
        goto LABEL_10;
      }
    }
  }

  else
  {
LABEL_10:
    v22 = v15;
    while (1)
    {
      v15 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v15 >= v19)
      {

        return v14;
      }

      v23 = *(v12 + 64 + 8 * v15);
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v18 = (v23 - 1) & v23;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_22:
  __break(1u);
  return result;
}

uint64_t sub_1D108F8D0(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v35 = MEMORY[0x1E69E7CC0];
    sub_1D10FD9A4(0, v1, 0);
    v2 = v35;
    v4 = (a1 + 120);
    do
    {
      v6 = *(v4 - 3);
      v5 = *(v4 - 2);
      v8 = *(v4 - 1);
      v7 = *v4;
      v9 = *(v35 + 16);
      v10 = *(v35 + 24);

      if (v9 >= v10 >> 1)
      {
        sub_1D10FD9A4((v10 > 1), v9 + 1, 1);
      }

      *(v35 + 16) = v9 + 1;
      v11 = (v35 + 32 * v9);
      v11[4] = v6;
      v11[5] = v5;
      v11[6] = v8;
      v11[7] = v7;
      v4 += 12;
      --v1;
    }

    while (v1);
  }

  v12 = sub_1D1092BA8(v2);

  sub_1D1093420();
  result = sub_1D139141C();
  v14 = result;
  v15 = 0;
  v16 = 1 << *(v12 + 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & *(v12 + 64);
  v19 = (v16 + 63) >> 6;
  v20 = result + 64;
  if (v18)
  {
    while (1)
    {
      v21 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
LABEL_15:
      v24 = v21 | (v15 << 6);
      v25 = *(*(v12 + 56) + 8 * v24);
      if (!v25[2])
      {
        break;
      }

      v26 = *(*(v12 + 48) + 16 * v24);
      result = *(*(v12 + 48) + 16 * v24 + 8);
      v27 = v25[6];
      v28 = v25[7];
      *(v20 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
      v29 = 16 * v24;
      v30 = (v14[6] + v29);
      *v30 = v26;
      v30[1] = result;
      v31 = (v14[7] + v29);
      *v31 = v27;
      v31[1] = v28;
      v32 = v14[2];
      v33 = __OFADD__(v32, 1);
      v34 = v32 + 1;
      if (v33)
      {
        goto LABEL_22;
      }

      v14[2] = v34;

      if (!v18)
      {
        goto LABEL_10;
      }
    }
  }

  else
  {
LABEL_10:
    v22 = v15;
    while (1)
    {
      v15 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v15 >= v19)
      {

        return v14;
      }

      v23 = *(v12 + 64 + 8 * v15);
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v18 = (v23 - 1) & v23;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_22:
  __break(1u);
  return result;
}

uint64_t sub_1D108FAF8(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v57 = MEMORY[0x1E69E7CC0];
    sub_1D10FD9A4(0, v1, 0);
    v2 = v57;
    v4 = (a1 + 80);
    do
    {
      v5 = v4[2];
      v6 = v4[4];
      v52 = v4[3];
      v53 = v6;
      v7 = v4[6];
      v8 = v4[4];
      v54 = v4[5];
      v55 = v7;
      v9 = *v4;
      v48[2] = *(v4 - 1);
      v49 = v9;
      v10 = v4[2];
      v11 = *v4;
      v50 = v4[1];
      v51 = v10;
      v12 = *(v4 - 2);
      v48[0] = *(v4 - 3);
      v48[1] = v12;
      v13 = *(&v55 + 1);
      v41 = v55;
      v14 = v54;
      v45 = v5;
      v46 = v52;
      v47 = v8;
      v43 = v11;
      v44 = v50;
      v56[2] = v5;
      v56[3] = v52;
      v56[4] = v8;
      v56[0] = v11;
      v56[1] = v50;
      sub_1D10932A8(&v49, v42);
      sub_1D10932A8(&v49, v42);
      sub_1D1093304(v48, v42, &qword_1EC609C88);
      sub_1D1093370(v56);
      v42[2] = v45;
      v42[3] = v46;
      v42[4] = v47;
      v42[0] = v43;
      v42[1] = v44;
      sub_1D1093370(v42);

      sub_1D10933C4(v48, &qword_1EC609C88);
      v57 = v2;
      v16 = *(v2 + 16);
      v15 = *(v2 + 24);
      if (v16 >= v15 >> 1)
      {
        sub_1D10FD9A4((v15 > 1), v16 + 1, 1);
        v2 = v57;
      }

      *(v2 + 16) = v16 + 1;
      v17 = v2 + 32 * v16;
      *(v17 + 32) = v14;
      *(v17 + 48) = v41;
      *(v17 + 56) = v13;
      v4 += 10;
      --v1;
    }

    while (v1);
  }

  v18 = sub_1D1092BA8(v2);

  sub_1D1093420();
  result = sub_1D139141C();
  v20 = result;
  v21 = 0;
  v22 = 1 << *(v18 + 32);
  v23 = -1;
  if (v22 < 64)
  {
    v23 = ~(-1 << v22);
  }

  v24 = v23 & *(v18 + 64);
  v25 = (v22 + 63) >> 6;
  v26 = result + 64;
  if (v24)
  {
    while (1)
    {
      v27 = __clz(__rbit64(v24));
      v24 &= v24 - 1;
LABEL_15:
      v30 = v27 | (v21 << 6);
      v31 = *(*(v18 + 56) + 8 * v30);
      if (!v31[2])
      {
        break;
      }

      v32 = *(*(v18 + 48) + 16 * v30);
      result = *(*(v18 + 48) + 16 * v30 + 8);
      v33 = v31[6];
      v34 = v31[7];
      *(v26 + ((v30 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v30;
      v35 = 16 * v30;
      v36 = (v20[6] + v35);
      *v36 = v32;
      v36[1] = result;
      v37 = (v20[7] + v35);
      *v37 = v33;
      v37[1] = v34;
      v38 = v20[2];
      v39 = __OFADD__(v38, 1);
      v40 = v38 + 1;
      if (v39)
      {
        goto LABEL_22;
      }

      v20[2] = v40;

      if (!v24)
      {
        goto LABEL_10;
      }
    }
  }

  else
  {
LABEL_10:
    v28 = v21;
    while (1)
    {
      v21 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        break;
      }

      if (v21 >= v25)
      {

        return v20;
      }

      v29 = *(v18 + 64 + 8 * v21);
      ++v28;
      if (v29)
      {
        v27 = __clz(__rbit64(v29));
        v24 = (v29 - 1) & v29;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_22:
  __break(1u);
  return result;
}

void sub_1D108FDF0(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_1D138CF3C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  objc_opt_self();
  v8 = swift_dynamicCastObjCClass();
  if (v8 && (v9 = v8, v10 = a1, sub_1D109411C(v9, &v24), v10, (v11 = v25) != 0))
  {
    v13 = v28;
    v12 = v29;
    v14 = &v24;
    v16 = v26;
    v15 = v27;
  }

  else
  {
    v17 = [a1 preferredDisplayName];
    v18 = sub_1D139016C();
    v20 = v19;

    v30 = v18;
    v31 = v20;
    sub_1D138CF2C();
    sub_1D10940C8();
    v21 = sub_1D1390FAC();
    v23 = v22;
    (*(v5 + 8))(v7, v4);

    v14 = &v30;
    sub_1D114F448(v21, v23, 0, 0xE000000000000000, 0, 0xE000000000000000, &v30);
    v13 = v34;
    v12 = v35;
    v16 = v32;
    v15 = v33;
    v11 = v31;
  }

  *a2 = *v14;
  a2[1] = v11;
  a2[2] = v16;
  a2[3] = v15;
  a2[4] = v13;
  a2[5] = v12;
}

void sub_1D108FFB8(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v115 = *MEMORY[0x1E69E9840];
  v6 = sub_1D138CF3C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v75 = &v66 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1D138D57C();
  v74 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v66 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v13 = MEMORY[0x1EEE9AC00](v12).n128_u64[0];
  v15 = &v66 - v14;
  v16 = [a1 chartableCodedQuantitySet];
  if (v16 && (v17 = v16, sub_1D10948C0(v16, a2, &v91), v17, (v18 = v92) != 0))
  {
    v20 = v97;
    v19 = v98;
    v22 = v95;
    v21 = v96;
    v24 = v93;
    v23 = v94;
    v25 = &v91;
    v26 = v99;
  }

  else
  {
    v71 = a2;
    v72 = v9;
    v73 = v7;
    objc_opt_self();
    v27 = swift_dynamicCastObjCClass();
    if (!v27)
    {
      goto LABEL_14;
    }

    v28 = v27;
    v29 = a1;
    v30 = [v28 value];
    if (v30 && (v31 = v30, v32 = [v30 inspectableValue], v31, (v70 = v32) != 0))
    {
      v33 = [v28 diagnosticTestCodingCollection];
      v34 = [v33 codings];

      if (!v34)
      {
        sub_1D106F934(0, &qword_1EC609D38);
        sub_1D139045C();
        v34 = sub_1D139044C();
      }

      v68 = v6;
      v35 = [v28 referenceRanges];
      v69 = v29;
      if (v35)
      {
        sub_1D106F934(0, &qword_1EC609D40);
        sub_1D139045C();

        v36 = v70;
        v37 = v70;
        v38 = v36;
        v35 = sub_1D139044C();
      }

      else
      {
        v38 = v70;
        v54 = v70;
      }

      v55 = [objc_allocWithZone(MEMORY[0x1E696C008]) initWithCodings:v34 value:v38 referenceRanges:v35];

      v56 = [v69 sortDate];
      v57 = [v56 date];

      sub_1D138D52C();
      Date.medicalDateAdjustedToCurrentCalendar()(v15);
      v58 = v74 + 8;
      v59 = v72;
      v66 = *(v74 + 8);
      v66(v11, v72);
      v60 = sub_1D138D4EC();
      v76 = 0;
      v67 = v55;
      v61 = [v55 chartableCodedQuantitySetWithDate:v60 error:&v76];

      if (v61)
      {
        v62 = v76;
        sub_1D10948C0(v61, v71, v100);

        v29 = v69;
        v66(v15, v59);
        v18 = v101;
        v6 = v68;
        if (v101)
        {
          v20 = v106;
          v19 = v107;
          v22 = v104;
          v21 = v105;
          v24 = v102;
          v23 = v103;
          v25 = v100;
          v26 = v108;
          goto LABEL_16;
        }
      }

      else
      {
        v63 = v76;
        v64 = sub_1D138D2BC();
        v74 = v58;
        v65 = v64;

        swift_willThrow();
        v29 = v69;

        v66(v15, v59);
        v6 = v68;
      }
    }

    else
    {
    }

    v39 = v29;
    sub_1D109411C(v28, &v109);

    v40 = v110;
    if (v110)
    {
      v41 = v113;
      v42 = v114;
      v43 = &v109;
      v44 = v111;
      v45 = v112;
    }

    else
    {
LABEL_14:
      v46 = [a1 preferredDisplayName];
      v47 = sub_1D139016C();
      v49 = v48;

      v76 = v47;
      v77 = v49;
      v50 = v75;
      sub_1D138CF2C();
      sub_1D10940C8();
      v51 = sub_1D1390FAC();
      v53 = v52;
      (*(v73 + 8))(v50, v6);

      v43 = v85;
      sub_1D114F448(v51, v53, 0, 0xE000000000000000, 0, 0xE000000000000000, v85);
      v41 = v85[4];
      v42 = v85[5];
      v44 = v85[2];
      v45 = v85[3];
      v40 = v85[1];
    }

    *&v86 = *v43;
    *(&v86 + 1) = v40;
    v87 = v44;
    v88 = v45;
    v89 = v41;
    v90 = v42;
    v25 = &v76;
    sub_1D114F604(&v86, &v76);

    v26 = v84;
    v20 = v82;
    v19 = v83;
    v22 = v80;
    v21 = v81;
    v24 = v78;
    v23 = v79;
    v18 = v77;
  }

LABEL_16:
  *a3 = *v25;
  *(a3 + 8) = v18;
  *(a3 + 16) = v24;
  *(a3 + 24) = v23;
  *(a3 + 32) = v22;
  *(a3 + 40) = v21;
  *(a3 + 48) = v20;
  *(a3 + 56) = v19;
  *(a3 + 64) = v26 & 1;
}

__n128 sub_1D109062C@<Q0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1D138CF3C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a2 + *(_s13ConfigurationVMa() + 32));
  objc_opt_self();
  v11 = swift_dynamicCastObjCClass();
  if (v11)
  {
    v12 = v11;
    v13 = v10;
    v14 = a1;
    sub_1D1090870(v12, v13, v33);
  }

  else
  {
    v15 = [a1 preferredDisplayName];
    v16 = sub_1D139016C();
    v18 = v17;

    *&v33[0] = v16;
    *(&v33[0] + 1) = v18;
    sub_1D138CF2C();
    sub_1D10940C8();
    v19 = sub_1D1390FAC();
    v21 = v20;
    (*(v7 + 8))(v9, v6);

    v22 = [a1 sourceRevision];
    v23 = [v22 source];

    v24 = [v23 bundleIdentifier];
    v25 = sub_1D139016C();
    v27 = v26;

    sub_1D114F7F8(v19, v21, v25, v27, v33);
  }

  v28 = v34;
  v29 = v35;
  v31 = v33[1];
  v30 = v33[2];
  *a3 = v33[0];
  *(a3 + 16) = v31;
  *(a3 + 32) = v30;
  *(a3 + 48) = v28;
  *(a3 + 56) = v29;
  result = v36;
  *(a3 + 64) = v36;
  return result;
}

uint64_t sub_1D1090870@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v65 = a3;
  v5 = sub_1D138CF3C();
  v63 = *(v5 - 8);
  v64 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D138D57C();
  v9 = *(v8 - 8);
  *&v10 = MEMORY[0x1EEE9AC00](v8).n128_u64[0];
  v12 = &v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [a1 preferredDisplayName];
  v62 = sub_1D139016C();
  v57 = v14;

  v15 = [a1 onsetDate];
  v66 = a2;
  if (v15)
  {
    v16 = v15;
    v17 = [v16 underlyingDate];
    sub_1D138D52C();

    v18 = sub_1D138D4EC();
    (*(v9 + 8))(v12, v8);
    v19 = [a2 stringFromDate_];

    v60 = sub_1D139016C();
    v61 = v20;
  }

  else
  {
    v60 = 0;
    v61 = 0xE000000000000000;
  }

  v21 = [a1 lastOccurrenceDate];
  if (v21)
  {
    v22 = v21;
    v23 = [v22 underlyingDate];
    sub_1D138D52C();

    v24 = sub_1D138D4EC();
    (*(v9 + 8))(v12, v8);
    v25 = [v66 &selRef:v24 setEstimatedRowHeight:?];

    v58 = sub_1D139016C();
    v59 = v26;
  }

  else
  {
    v58 = 0;
    v59 = 0xE000000000000000;
  }

  v27 = [a1 recordedDate];
  if (v27)
  {
    v28 = v27;
    v29 = [v28 underlyingDate];
    sub_1D138D52C();

    v30 = sub_1D138D4EC();
    (*(v9 + 8))(v12, v8);
    v31 = [v66 &selRef:v30 setEstimatedRowHeight:?];

    v66 = sub_1D139016C();
    v33 = v32;
  }

  else
  {
    v66 = 0;
    v33 = 0xE000000000000000;
  }

  v34 = [a1 sourceRevision];
  v35 = [v34 source];

  v36 = [v35 bundleIdentifier];
  v55 = sub_1D139016C();
  v38 = v37;

  v67 = v62;
  v68 = v57;
  sub_1D138CF2C();
  sub_1D10940C8();
  v62 = sub_1D1390FAC();
  v56 = v39;
  v40 = v64;
  v41 = *(v63 + 8);
  v41(v7, v64);

  v67 = v60;
  v68 = v61;
  sub_1D138CF2C();
  v63 = sub_1D1390FAC();
  v60 = v42;
  v41(v7, v40);

  v67 = v58;
  v68 = v59;
  sub_1D138CF2C();
  v61 = sub_1D1390FAC();
  v58 = v43;
  v41(v7, v40);

  v67 = v66;
  v68 = v33;
  sub_1D138CF2C();
  v44 = sub_1D1390FAC();
  v46 = v45;
  v41(v7, v40);

  v67 = v55;
  v68 = v38;

  sub_1D138CF2C();
  v47 = sub_1D1390FAC();
  v49 = v48;

  v41(v7, v40);

  v51 = v65;
  v52 = v56;
  *v65 = v62;
  v51[1] = v52;
  v54 = v60;
  v53 = v61;
  v51[2] = v63;
  v51[3] = v54;
  v51[4] = v53;
  v51[5] = v58;
  v51[6] = v44;
  v51[7] = v46;
  v51[8] = v47;
  v51[9] = v49;
  return result;
}

uint64_t sub_1D1090E20(void *a1, uint64_t a2)
{
  v4 = sub_1D138CF3C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a2)
  {
    sub_1D109AD94(&unk_1F4D045C8);
    sub_1D109228C(&unk_1F4D045E8, &qword_1EC609CA0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6158], sub_1D10951AC);
    goto LABEL_28;
  }

  v8 = sub_1D128630C(a1);
  v9 = sub_1D109AD94(MEMORY[0x1E69E7CC0]);
  if (v8 >> 62)
  {
LABEL_33:
    v10 = sub_1D13910DC();
  }

  else
  {
    v10 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v44 = a1;
  v45 = v7;
  v46 = v5;
  v47 = v4;
  if (!v10)
  {
LABEL_26:

    v5 = v46;
    v4 = v47;
    a1 = v44;
    v7 = v45;
LABEL_28:
    v38 = [a1 preferredDisplayName];
    v39 = sub_1D139016C();
    v41 = v40;

    v58 = v39;
    v59 = v41;
    sub_1D138CF2C();
    sub_1D10940C8();
    v42 = sub_1D1390FAC();
    (v5)[1](v7, v4);

    return v42;
  }

  v11 = 0;
  v50 = v8 & 0xFFFFFFFFFFFFFF8;
  v51 = v8 & 0xC000000000000001;
  v48 = v10;
  v49 = v8;
  while (1)
  {
    if (v51)
    {
      v13 = MEMORY[0x1D3886B70](v11, v8);
    }

    else
    {
      if (v11 >= *(v50 + 16))
      {
        goto LABEL_30;
      }

      v13 = *(v8 + 8 * v11 + 32);
    }

    v5 = v13;
    a1 = (v11 + 1);
    if (__OFADD__(v11, 1))
    {
      __break(1u);
LABEL_30:
      __break(1u);
LABEL_31:
      __break(1u);
LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

    v14 = [v13 title];
    if (!v14)
    {
      break;
    }

    v15 = v14;
    v53 = v11 + 1;
    v16 = sub_1D139016C();
    v18 = v17;

    v58 = v16;
    v59 = v18;

    MEMORY[0x1D3885C10](58, 0xE100000000000000);

    v19 = v58;
    v4 = v59;
    v52 = v5;
    v20 = [v5 subtitle];
    if (!v20)
    {
      goto LABEL_35;
    }

    v21 = v20;
    v22 = sub_1D139016C();
    v5 = v23;

    v58 = v22;
    v59 = v5;
    v56 = 2570;
    v57 = 0xE200000000000000;
    v54 = 8236;
    v55 = 0xE200000000000000;
    sub_1D10940C8();
    v7 = sub_1D1390FBC();
    a1 = v24;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v58 = v9;
    v8 = v9;
    v27 = sub_1D11362EC(v19, v4);
    v28 = v9[2];
    v29 = (v26 & 1) == 0;
    v30 = v28 + v29;
    if (__OFADD__(v28, v29))
    {
      goto LABEL_31;
    }

    v5 = v26;
    if (v9[3] >= v30)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        v9 = v58;
        if (v26)
        {
          goto LABEL_6;
        }
      }

      else
      {
        v8 = &v58;
        sub_1D1180D10();
        v9 = v58;
        if (v5)
        {
          goto LABEL_6;
        }
      }
    }

    else
    {
      sub_1D11797AC(v30, isUniquelyReferenced_nonNull_native);
      v8 = v58;
      v31 = sub_1D11362EC(v19, v4);
      if ((v5 & 1) != (v32 & 1))
      {
        goto LABEL_36;
      }

      v27 = v31;
      v9 = v58;
      if (v5)
      {
LABEL_6:
        v12 = (v9[7] + 16 * v27);
        *v12 = v7;
        v12[1] = a1;

        goto LABEL_7;
      }
    }

    v9[(v27 >> 6) + 8] |= 1 << v27;
    v33 = (v9[6] + 16 * v27);
    *v33 = v19;
    v33[1] = v4;
    v34 = (v9[7] + 16 * v27);
    *v34 = v7;
    v34[1] = a1;
    v35 = v9[2];
    v36 = __OFADD__(v35, 1);
    v37 = v35 + 1;
    if (v36)
    {
      goto LABEL_32;
    }

    v9[2] = v37;

LABEL_7:
    ++v11;
    v8 = v49;
    if (v53 == v48)
    {
      goto LABEL_26;
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  result = sub_1D13916CC();
  __break(1u);
  return result;
}
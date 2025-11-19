id MPSearchViewController.init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  swift_unknownObjectWeakInit();
  *&v3[OBJC_IVAR___MPSearchViewController_detailsPresenter] = 0;
  v7 = OBJC_IVAR___MPSearchViewController_tableView;
  *&v4[v7] = [objc_allocWithZone(MEMORY[0x1E69DD020]) initWithFrame:0 style:{0.0, 0.0, 0.0, 0.0}];
  *&v4[OBJC_IVAR___MPSearchViewController____lazy_storage___footerView] = 0;
  swift_unknownObjectWeakInit();
  *&v4[OBJC_IVAR___MPSearchViewController____lazy_storage___contactAvatarCardController] = 0;
  *&v4[OBJC_IVAR___MPSearchViewController____lazy_storage___datasource] = 0;
  v8 = &v4[OBJC_IVAR___MPSearchViewController_searchText];
  *v8 = 0;
  *(v8 + 1) = 0;
  *&v4[OBJC_IVAR___MPSearchViewController_searchTokens] = MEMORY[0x1E69E7CC0];
  v9 = OBJC_IVAR___MPSearchViewController_throttle;
  v10 = type metadata accessor for Throttle();
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();
  *&v4[v9] = sub_1CFB5D778();
  v13 = &v4[OBJC_IVAR___MPSearchViewController_searchControllerProvider];
  *v13 = 0;
  *(v13 + 1) = 0;
  if (a2)
  {
    v14 = sub_1CFB8FA80();
  }

  else
  {
    v14 = 0;
  }

  v17.receiver = v4;
  v17.super_class = MPSearchViewController;
  v15 = objc_msgSendSuper2(&v17, sel_initWithNibName_bundle_, v14, a3);

  return v15;
}

{
  if (a2)
  {
    v4 = sub_1CFB8FA80();
  }

  else
  {
    v4 = 0;
  }

  v5 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithNibName:v4 bundle:a3];

  return v5;
}

uint64_t type metadata accessor for Throttle()
{
  result = qword_1EE04BEC8;
  if (!qword_1EE04BEC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1CFB5D2D4()
{
  result = sub_1CFB8F7C0();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1CFB5D38C(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

void _sSo17MPAnalyticsLoggerC11CallsSearchE8logEvent_27withCoreAnalyticsDictionaryySS_SDySSSo8NSObjectCGtF_0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4EC4A0, &qword_1CFB91F08);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1CFB91E80;
  *(v6 + 56) = MEMORY[0x1E69E6158];
  *(v6 + 64) = sub_1CFB5D6C0();
  *(v6 + 32) = a1;
  *(v6 + 40) = a2;
  *(v6 + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EC5C8, &qword_1CFB92060);
  *(v6 + 104) = sub_1CFB5D714();
  *(v6 + 72) = a3;
  sub_1CFB5D38C(0, &qword_1EE04C150, 0x1E69E9BF8);

  v7 = sub_1CFB8FE10();
  sub_1CFB8FCB0();
  sub_1CFB8F790();

  v8 = sub_1CFB8FA80();
  v9 = swift_allocObject();
  *(v9 + 16) = a3;
  v11[4] = sub_1CFB5DFC4;
  v11[5] = v9;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 1107296256;
  v11[2] = sub_1CFB5DF28;
  v11[3] = &block_descriptor_7_0;
  v10 = _Block_copy(v11);

  AnalyticsSendEventLazy();
  _Block_release(v10);
}

uint64_t sub_1CFB5D688()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

unint64_t sub_1CFB5D6C0()
{
  result = qword_1EE04C168;
  if (!qword_1EE04C168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE04C168);
  }

  return result;
}

unint64_t sub_1CFB5D714()
{
  result = qword_1EE04C160;
  if (!qword_1EE04C160)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4EC5C8, &qword_1CFB92060);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE04C160);
  }

  return result;
}

uint64_t sub_1CFB5D778()
{
  v1 = v0;
  v2 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EC4B8, &qword_1CFB91F30) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v4 = &v27 - v3;
  v5 = sub_1CFB8FD60();
  v29 = *(v5 - 8);
  v30 = v5;
  v6 = *(v29 + 64);
  MEMORY[0x1EEE9AC00]();
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EC4C0, &qword_1CFB91F38);
  v31 = *(v9 - 8);
  v32 = v9;
  v10 = (*(v31 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v12 = &v27 - v11;
  v13 = OBJC_IVAR____TtC11CallsSearchP33_A128077F03EEA6072F0178D28C0D48CB8Throttle_logger;
  if (qword_1EE04BDB8 != -1)
  {
    swift_once();
  }

  v14 = sub_1CFB8F7C0();
  v15 = __swift_project_value_buffer(v14, qword_1EE04C228);
  (*(*(v14 - 8) + 16))(v1 + v13, v15, v14);
  *(v1 + OBJC_IVAR____TtC11CallsSearchP33_A128077F03EEA6072F0178D28C0D48CB8Throttle_throttleTime) = 0x3FB999999999999ALL;
  v16 = OBJC_IVAR____TtC11CallsSearchP33_A128077F03EEA6072F0178D28C0D48CB8Throttle_subject;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EC4C8, &qword_1CFB91F40);
  v18 = *(v17 + 48);
  v19 = *(v17 + 52);
  swift_allocObject();
  v20 = sub_1CFB8F950();
  *(v1 + v16) = v20;
  v28 = OBJC_IVAR____TtC11CallsSearchP33_A128077F03EEA6072F0178D28C0D48CB8Throttle_inputCancellable;
  *(v1 + OBJC_IVAR____TtC11CallsSearchP33_A128077F03EEA6072F0178D28C0D48CB8Throttle_inputCancellable) = 0;
  *(v1 + OBJC_IVAR____TtC11CallsSearchP33_A128077F03EEA6072F0178D28C0D48CB8Throttle_scheduledWorkItem) = 0;
  v34 = v20;

  sub_1CFB8FD40();
  sub_1CFB5D38C(0, &unk_1EE04BD10, 0x1E69E9610);
  v21 = sub_1CFB8FD80();
  v33 = v21;
  v22 = sub_1CFB8FD30();
  (*(*(v22 - 8) + 56))(v4, 1, 1, v22);
  sub_1CFB5DD2C(&qword_1EE04BD98, &qword_1EC4EC4C8, &qword_1CFB91F40);
  sub_1CFB5DD74();
  sub_1CFB8F980();
  sub_1CFB5DDDC(v4, &qword_1EC4EC4B8, &qword_1CFB91F30);

  (*(v29 + 8))(v8, v30);

  swift_allocObject();
  swift_weakInit();
  sub_1CFB5DD2C(&qword_1EE04BDA8, &qword_1EC4EC4C0, &qword_1CFB91F38);
  v23 = v32;
  v24 = sub_1CFB8F990();

  (*(v31 + 8))(v12, v23);
  v25 = *(v1 + v28);
  *(v1 + v28) = v24;

  return v1;
}

uint64_t sub_1CFB5DBD4()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1CFB5DC0C()
{
  v0 = sub_1CFB8F7C0();
  __swift_allocate_value_buffer(v0, qword_1EE04C228);
  __swift_project_value_buffer(v0, qword_1EE04C228);
  return sub_1CFB8F7B0();
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_1CFB5DD2C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1CFB5DD74()
{
  result = qword_1EE04BD20;
  if (!qword_1EE04BD20)
  {
    sub_1CFB5D38C(255, &unk_1EE04BD10, 0x1E69E9610);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE04BD20);
  }

  return result;
}

uint64_t sub_1CFB5DDDC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_1CFB5DF28(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v4 = v1(v3);

  if (v4)
  {
    sub_1CFB5D38C(0, &qword_1EE04C158, 0x1E69E58C0);
    v5 = sub_1CFB8FA30();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

id sub_1CFB5E0B0()
{
  v1 = OBJC_IVAR___MPSearchViewController____lazy_storage___datasource;
  v2 = *&v0[OBJC_IVAR___MPSearchViewController____lazy_storage___datasource];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR___MPSearchViewController____lazy_storage___datasource];
  }

  else
  {
    v4 = [v0 tableView];
    v5 = objc_allocWithZone(type metadata accessor for SearchTableViewDiffableDataSource());
    v6 = v4;
    v7 = v0;
    v8 = sub_1CFB5E294(v6);
    swift_unknownObjectWeakAssign();
    v9 = *&v7[v1];
    *&v7[v1] = v8;
    v3 = v8;

    v2 = 0;
  }

  v10 = v2;
  return v3;
}

uint64_t type metadata accessor for SearchTableViewDiffableDataSource()
{
  result = qword_1EE04BFC0;
  if (!qword_1EE04BFC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1CFB5E1C0()
{
  result = sub_1CFB8F7C0();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

id sub_1CFB5E294(void *a1)
{
  sub_1CFB8F7B0();
  *&v1[OBJC_IVAR____TtC11CallsSearch33SearchTableViewDiffableDataSource_text] = xmmword_1CFB922E0;
  v3 = MEMORY[0x1E69E7CC0];
  *&v1[OBJC_IVAR____TtC11CallsSearch33SearchTableViewDiffableDataSource_searchTokens] = MEMORY[0x1E69E7CC0];
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____TtC11CallsSearch33SearchTableViewDiffableDataSource_lastSearchStartTime] = 0;
  *&v1[OBJC_IVAR____TtC11CallsSearch33SearchTableViewDiffableDataSource_tableViewReloadTask] = 0;
  *&v1[OBJC_IVAR____TtC11CallsSearch33SearchTableViewDiffableDataSource____lazy_storage___datasource] = 0;
  *&v1[OBJC_IVAR____TtC11CallsSearch33SearchTableViewDiffableDataSource_searchTask] = 0;
  *&v1[OBJC_IVAR____TtC11CallsSearch33SearchTableViewDiffableDataSource_searchControllers] = v3;
  *&v1[OBJC_IVAR____TtC11CallsSearch33SearchTableViewDiffableDataSource_searchControllersWithResults] = v3;
  *&v1[OBJC_IVAR____TtC11CallsSearch33SearchTableViewDiffableDataSource_searchCompleteControllerSet] = MEMORY[0x1E69E7CD0];
  *&v1[OBJC_IVAR____TtC11CallsSearch33SearchTableViewDiffableDataSource_tableView] = a1;
  v7.receiver = v1;
  v7.super_class = type metadata accessor for SearchTableViewDiffableDataSource();
  v4 = a1;
  v5 = objc_msgSendSuper2(&v7, sel_init);
  sub_1CFB5E3F4();

  return v5;
}

uint64_t sub_1CFB5E3F4()
{
  v1 = v0;
  v51 = sub_1CFB8F780();
  v2 = *(v51 - 8);
  v3 = v2[8];
  v4 = (MEMORY[0x1EEE9AC00])();
  v47 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v50 = &v41 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4EC890, &unk_1CFB92370);
  v8 = *(v7 - 8);
  v9 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v41 - v10;
  sub_1CFB5E904();
  v12 = sub_1CFB8F7A0();
  v13 = sub_1CFB8FCB0();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = v1;
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_1CFB5B000, v12, v13, "SearchTableDataSource: Reloading table view", v15, 2u);
    v16 = v15;
    v1 = v14;
    MEMORY[0x1D386E190](v16, -1, -1);
  }

  v17 = sub_1CFB5F084();
  sub_1CFB8F8C0();

  v18 = OBJC_IVAR____TtC11CallsSearch33SearchTableViewDiffableDataSource_tableView;
  v19 = [*(v1 + OBJC_IVAR____TtC11CallsSearch33SearchTableViewDiffableDataSource_tableView) window];
  if (v19)
  {

    v20 = [*(v1 + v18) visibleCells];
    sub_1CFB5D38C(0, &qword_1EE04BD38, 0x1E69DD028);
    v21 = sub_1CFB8FB30();

    v22 = v21;
    v43 = v8;
    v44 = v7;
    v42 = v11;
    if (v21 >> 62)
    {
      goto LABEL_32;
    }

    for (i = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1CFB8FFB0())
    {
      v46 = OBJC_IVAR____TtC11CallsSearch33SearchTableViewDiffableDataSource_searchControllersWithResults;
      swift_beginAccess();
      if (!i)
      {
        break;
      }

      v24 = 0;
      v48 = v22 & 0xFFFFFFFFFFFFFF8;
      v49 = v22 & 0xC000000000000001;
      v45 = (v2 + 4);
      v25 = (v2 + 1);
      while (1)
      {
        if (v49)
        {
          v26 = MEMORY[0x1D386D910](v24, v22);
        }

        else
        {
          if (v24 >= *(v48 + 16))
          {
            goto LABEL_29;
          }

          v26 = *(v22 + 8 * v24 + 32);
        }

        v2 = v26;
        v27 = v24 + 1;
        if (__OFADD__(v24, 1))
        {
          break;
        }

        v28 = [*(v1 + v18) indexPathForCell_];
        if (v28)
        {
          v29 = v22;
          v30 = v18;
          v31 = v47;
          v32 = v28;
          sub_1CFB8F750();

          v22 = v50;
          (*v45)(v50, v31, v51);
          v33 = sub_1CFB8F770();
          v18 = v1;
          v1 = *(v1 + v46);
          if ((v1 & 0xC000000000000001) != 0)
          {
            v35 = v33;

            v34 = MEMORY[0x1D386D910](v35, v1);
          }

          else
          {
            if ((v33 & 0x8000000000000000) != 0)
            {
              goto LABEL_30;
            }

            if (v33 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_31;
            }

            v34 = *(v1 + 8 * v33 + 32);
            swift_unknownObjectRetain();
          }

          [v34 highlightMatchedTextIn_];

          swift_unknownObjectRelease();
          (*v25)(v50, v51);
          v1 = v18;
          v18 = v30;
          v22 = v29;
        }

        else
        {
        }

        ++v24;
        if (v27 == i)
        {
          goto LABEL_22;
        }
      }

      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
LABEL_31:
      __break(1u);
LABEL_32:
      ;
    }

LABEL_22:

    v8 = v43;
    v7 = v44;
    v11 = v42;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    [Strong didCompleteSearch];
    swift_unknownObjectRelease();
  }

  v37 = OBJC_IVAR____TtC11CallsSearch33SearchTableViewDiffableDataSource_tableViewReloadTask;
  if (*(v1 + OBJC_IVAR____TtC11CallsSearch33SearchTableViewDiffableDataSource_tableViewReloadTask))
  {
    v38 = *(v1 + OBJC_IVAR____TtC11CallsSearch33SearchTableViewDiffableDataSource_tableViewReloadTask);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EC8C0, &qword_1CFB923F0);
    sub_1CFB8FC00();
  }

  (*(v8 + 8))(v11, v7);
  v39 = *(v1 + v37);
  *(v1 + v37) = 0;
}

uint64_t sub_1CFB5E904()
{
  v0 = sub_1CFB8F7A0();
  v1 = sub_1CFB8FCB0();
  if (os_log_type_enabled(v0, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&dword_1CFB5B000, v0, v1, "SearchTableDataSource: Creating snapshot", v2, 2u);
    MEMORY[0x1D386E190](v2, -1, -1);
  }

  v3 = *(v42 + OBJC_IVAR____TtC11CallsSearch33SearchTableViewDiffableDataSource_searchControllers);
  v43 = MEMORY[0x1E69E7CC0];
  if (v3 >> 62)
  {
    goto LABEL_56;
  }

  for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1CFB8FFB0())
  {

    if (i)
    {
      v5 = 0;
      v6 = MEMORY[0x1E69E7CC0];
      while (1)
      {
        if ((v3 & 0xC000000000000001) != 0)
        {
          v7 = MEMORY[0x1D386D910](v5, v3);
          v8 = v5 + 1;
          if (__OFADD__(v5, 1))
          {
LABEL_17:
            __break(1u);
            break;
          }
        }

        else
        {
          if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_55;
          }

          v7 = *(v3 + 8 * v5 + 32);
          swift_unknownObjectRetain();
          v8 = v5 + 1;
          if (__OFADD__(v5, 1))
          {
            goto LABEL_17;
          }
        }

        v46 = v7;
        sub_1CFB79A64(&v46, v42, &v45);
        v9 = swift_unknownObjectRelease();
        if (v45)
        {
          MEMORY[0x1D386D560](v9);
          if (*((v43 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v43 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v10 = *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10);
            sub_1CFB8FB50();
          }

          sub_1CFB8FB70();
          v6 = v43;
        }

        ++v5;
        if (v8 == i)
        {
          goto LABEL_19;
        }
      }
    }

    v6 = MEMORY[0x1E69E7CC0];
LABEL_19:

    v11 = OBJC_IVAR____TtC11CallsSearch33SearchTableViewDiffableDataSource_searchControllersWithResults;
    swift_beginAccess();
    v12 = *(v42 + v11);
    *(v42 + v11) = v6;

    sub_1CFB5EE98((v42 + v11));
    swift_endAccess();
    sub_1CFB8F8B0();
    v13 = *(v42 + v11);
    if (v13 >> 62)
    {
      if (v13 < 0)
      {
        v40 = *(v42 + v11);
      }

      v14 = sub_1CFB8FFB0();
    }

    else
    {
      v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v14)
    {
      break;
    }

LABEL_31:
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4EC890, &unk_1CFB92370);
    sub_1CFB8F8A0();

    v26 = *(v42 + v11);
    if (v26 >> 62)
    {
      result = sub_1CFB8FFB0();
      v3 = result;
      if (!result)
      {
        return result;
      }
    }

    else
    {
      v3 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v3)
      {
        return result;
      }
    }

    if (v3 < 1)
    {
      goto LABEL_63;
    }

    v27 = 0;
    while (1)
    {
      if ((v26 & 0xC000000000000001) != 0)
      {
        v30 = MEMORY[0x1D386D910](v27, v26);
      }

      else
      {
        v30 = *(v26 + 8 * v27 + 32);
        swift_unknownObjectRetain();
      }

      v31 = [v30 numberOfRowsInConsolidatedView];
      v32 = [v30 resultIDs];
      v33 = sub_1CFB8FB30();

      if ((v31 & 0x8000000000000000) != 0)
      {
        break;
      }

      v34 = *(v33 + 16);
      if (v34 >= v31)
      {
        v35 = v31;
      }

      else
      {
        v35 = *(v33 + 16);
      }

      if (v31)
      {
        v36 = v35;
      }

      else
      {
        v36 = 0;
      }

      if (v34 != v36)
      {
        if (v36)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4ECB30, &qword_1CFB91EF0);
          v37 = swift_allocObject();
          v38 = _swift_stdlib_malloc_size(v37);
          v39 = v38 - 32;
          if (v38 < 32)
          {
            v39 = v38 - 17;
          }

          v37[2] = v36;
          v37[3] = 2 * (v39 >> 4);
          swift_arrayInitWithCopy();
        }
      }

      ++v27;
      v28 = [v30 sectionTitle];
      v29 = sub_1CFB8FA90();

      v43 = v29;
      sub_1CFB8F880();

      swift_unknownObjectRelease();

      if (v3 == v27)
      {
      }
    }

LABEL_55:
    __break(1u);
LABEL_56:
    ;
  }

  v44 = MEMORY[0x1E69E7CC0];

  result = sub_1CFB8E0EC(0, v14 & ~(v14 >> 63), 0);
  if ((v14 & 0x8000000000000000) == 0)
  {
    v41 = v11;
    v16 = 0;
    v17 = v44;
    do
    {
      if ((v13 & 0xC000000000000001) != 0)
      {
        v18 = MEMORY[0x1D386D910](v16, v13);
      }

      else
      {
        v18 = *(v13 + 8 * v16 + 32);
        swift_unknownObjectRetain();
      }

      v19 = [v18 sectionTitle];
      v20 = sub_1CFB8FA90();
      v22 = v21;
      swift_unknownObjectRelease();

      v43 = v17;
      v24 = *(v17 + 16);
      v23 = *(v17 + 24);
      if (v24 >= v23 >> 1)
      {
        sub_1CFB8E0EC((v23 > 1), v24 + 1, 1);
      }

      ++v16;
      *(v17 + 16) = v24 + 1;
      v25 = v17 + 16 * v24;
      *(v25 + 32) = v20;
      *(v25 + 40) = v22;
    }

    while (v14 != v16);

    v11 = v41;
    goto LABEL_31;
  }

  __break(1u);
LABEL_63:
  __break(1u);
  return result;
}

uint64_t sub_1CFB5EE98(unint64_t *a1)
{
  v2 = *a1;
  if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v2 & 0x8000000000000000) != 0 || (v2 & 0x4000000000000000) != 0)
  {
    v2 = sub_1CFB5EF10(v2);
  }

  v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v5[0] = (v2 & 0xFFFFFFFFFFFFFF8) + 32;
  v5[1] = v3;
  result = sub_1CFB5EF74(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_1CFB5EF10(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_1CFB8FFB0();
  }

  else
  {
    v1 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return sub_1CFB8FED0();
}

uint64_t sub_1CFB5EF74(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1CFB90000();
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
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4EC8A0, &qword_1CFB92380);
        v6 = sub_1CFB8FB60();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = (v6 & 0xFFFFFFFFFFFFFF8) + 32;
      v8[1] = v5;
      sub_1CFB7A3B8(v8, v9, a1, v4);
      *(v7 + 16) = 0;
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
    return sub_1CFB7A2B8(0, v2, 1, a1);
  }

  return result;
}

id sub_1CFB5F084()
{
  v1 = OBJC_IVAR____TtC11CallsSearch33SearchTableViewDiffableDataSource____lazy_storage___datasource;
  v2 = *&v0[OBJC_IVAR____TtC11CallsSearch33SearchTableViewDiffableDataSource____lazy_storage___datasource];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC11CallsSearch33SearchTableViewDiffableDataSource____lazy_storage___datasource];
  }

  else
  {
    v4 = *&v0[OBJC_IVAR____TtC11CallsSearch33SearchTableViewDiffableDataSource_tableView];
    *(swift_allocObject() + 16) = v0;
    objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EC8B8, &qword_1CFB923E8));
    v5 = v4;
    v6 = v0;
    v7 = v0;
    v8 = sub_1CFB8F8D0();
    v9 = *&v0[v1];
    *&v7[v1] = v8;
    v3 = v8;

    v2 = 0;
  }

  v10 = v2;
  return v3;
}

uint64_t sub_1CFB5F160()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1CFB5F258(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1CFB5F268()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1CFB5F2C0()
{
  MEMORY[0x1D386E230](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1CFB5F2F8()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[5];

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1CFB5F340@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___MPSearchViewController_detailsPresenter;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_1CFB5F39C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  sub_1CFB65C34(v4);
}

uint64_t sub_1CFB5F3E0()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1CFB5F420()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

id sub_1CFB5F460@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = ContactAvatarCardController.cardController.getter();
  *a2 = result;
  return result;
}

void sub_1CFB5F48C(void **a1, void *a2)
{
  v2 = *a1;
  v4 = *(*a2 + OBJC_IVAR____TtC11CallsSearch27ContactAvatarCardController____lazy_storage___cardController);
  *(*a2 + OBJC_IVAR____TtC11CallsSearch27ContactAvatarCardController____lazy_storage___cardController) = *a1;
  v3 = v2;
}

uint64_t sub_1CFB5F4E4()
{
  MEMORY[0x1D386E230](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1CFB5F51C()
{
  v1 = sub_1CFB8F6F0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 28) & ~v3;
  v5 = (((((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_1CFB5F5FC()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

id sub_1CFB5F634@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 suggestionsDelegate];
  *a2 = result;
  return result;
}

uint64_t sub_1CFB5F684@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  *a2 = result;
  return result;
}

uint64_t sub_1CFB5F6E0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  return swift_weakAssign();
}

uint64_t sub_1CFB5F73C()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1CFB5F774()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 48);

  v3 = *(v0 + 56);

  v4 = *(v0 + 72);

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

uint64_t sub_1CFB5F7CC()
{
  MEMORY[0x1D386E230](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1CFB5F804()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1CFB5F83C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1CFB5F878()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1CFB5F8C0()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 40);

  v3 = *(v0 + 48);

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1CFB5F914@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = MPContactSearchManager.searchString.getter();
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_1CFB5F940(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;

  return MPContactSearchManager.searchString.setter(v2, v3);
}

uint64_t sub_1CFB5F980()
{
  _Block_release(*(v0 + 32));

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1CFB5F9CC()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1CFB5FA58()
{
  MEMORY[0x1D386E230](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1CFB5FA90()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1CFB5FAD0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 48);

  v3 = *(v0 + 56);

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1CFB5FB20()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];
  swift_unknownObjectRelease();
  v3 = v0[6];

  v4 = v0[7];

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1CFB5FB70()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1CFB5FBA8()
{
  MEMORY[0x1D386E230](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1CFB5FBE0()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1CFB5FC18()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 48);

  v3 = *(v0 + 56);

  v4 = *(v0 + 72);

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

uint64_t sub_1CFB5FC70()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1CFB5FCCC()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1CFB5FD04()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1CFB5FD3C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4ECB50, &qword_1CFB925E0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = sub_1CFB8F7C0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = v3 | v8;
  v11 = (*(v7 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = (v11 + 15) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  v13 = *(v0 + v12);

  return MEMORY[0x1EEE6BDD0](v0, v12 + 8, v10 | 7);
}

uint64_t sub_1CFB5FEBC()
{
  _Block_release(*(v0 + 32));

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1CFB5FF14()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

void sub_1CFB60008(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

void *sub_1CFB60054@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t MPSearchViewController.detailsPresenter.getter()
{
  v1 = OBJC_IVAR___MPSearchViewController_detailsPresenter;
  swift_beginAccess();
  v2 = *(v0 + v1);
}

uint64_t MPSearchViewController.detailsPresenter.setter(uint64_t a1)
{
  sub_1CFB65C34(a1);
}

void (*MPSearchViewController.detailsPresenter.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v4 = OBJC_IVAR___MPSearchViewController_detailsPresenter;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_1CFB601A8;
}

void sub_1CFB601A8(uint64_t *a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if (a2)
  {
LABEL_31:

    free(v3);
    return;
  }

  v4 = [*(v3 + 24) searchControllers];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4EC8A0, &qword_1CFB92380);
  v5 = sub_1CFB8FB30();

  if (!(v5 >> 62))
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
      goto LABEL_4;
    }

LABEL_25:
    v27 = MEMORY[0x1E69E7CC0];
    goto LABEL_26;
  }

LABEL_24:
  v6 = sub_1CFB8FFB0();
  if (!v6)
  {
    goto LABEL_25;
  }

LABEL_4:
  v7 = 0;
  v27 = MEMORY[0x1E69E7CC0];
  do
  {
    v8 = v7;
    while (1)
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x1D386D910](v8, v5);
        v7 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          goto LABEL_22;
        }
      }

      else
      {
        if (v8 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_23;
        }

        v9 = *(v5 + 8 * v8 + 32);
        swift_unknownObjectRetain();
        v7 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
LABEL_22:
          __break(1u);
LABEL_23:
          __break(1u);
          goto LABEL_24;
        }
      }

      swift_getObjectType();
      v10 = swift_conformsToProtocol2();
      if (v10)
      {
        if (v9)
        {
          break;
        }
      }

      swift_unknownObjectRelease();
      ++v8;
      if (v7 == v6)
      {
        goto LABEL_26;
      }
    }

    v26 = v10;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v27 = sub_1CFB657D4(0, v27[2] + 1, 1, v27);
    }

    v12 = v26;
    v14 = v27[2];
    v13 = v27[3];
    if (v14 >= v13 >> 1)
    {
      v27 = sub_1CFB657D4((v13 > 1), v14 + 1, 1, v27);
      v12 = v26;
    }

    v27[2] = v14 + 1;
    v15 = &v27[2 * v14];
    v15[4] = v9;
    v15[5] = v12;
  }

  while (v7 != v6);
LABEL_26:

  v16 = v27[2];
  if (!v16)
  {
LABEL_30:

    goto LABEL_31;
  }

  v17 = 0;
  v18 = v27 + 5;
  while (v17 < v27[2])
  {
    v20 = *(v3 + 24);
    v19 = *(v3 + 32);
    ++v17;
    v21 = *(v18 - 1);
    v22 = *v18;
    ObjectType = swift_getObjectType();
    v24 = *(v20 + v19);
    v25 = *(v22 + 16);

    swift_unknownObjectRetain();
    v25(v24, ObjectType, v22);
    swift_unknownObjectRelease();
    v18 += 2;
    if (v16 == v17)
    {
      goto LABEL_30;
    }
  }

  __break(1u);
}

id sub_1CFB60498()
{
  v1 = OBJC_IVAR___MPSearchViewController____lazy_storage___footerView;
  v2 = *(v0 + OBJC_IVAR___MPSearchViewController____lazy_storage___footerView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR___MPSearchViewController____lazy_storage___footerView);
  }

  else
  {
    v4 = objc_allocWithZone(type metadata accessor for SearchFooterCell());
    v5 = sub_1CFB8FA80();
    v6 = [v4 initWithReuseIdentifier_];

    v7 = *(v0 + v1);
    *(v0 + v1) = v6;
    v3 = v6;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

id sub_1CFB60600()
{
  v1 = OBJC_IVAR___MPSearchViewController____lazy_storage___contactAvatarCardController;
  v2 = *&v0[OBJC_IVAR___MPSearchViewController____lazy_storage___contactAvatarCardController];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR___MPSearchViewController____lazy_storage___contactAvatarCardController];
  }

  else
  {
    v4 = [v0 tableView];
    v5 = objc_allocWithZone(type metadata accessor for ContactAvatarCardController());
    v6 = sub_1CFB7E784(v0, v4, v5);
    v7 = *&v0[v1];
    *&v0[v1] = v6;
    v3 = v6;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

id sub_1CFB60958(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4EC8A0, &qword_1CFB92380);
  v4 = sub_1CFB8FB20();

  return v4;
}

uint64_t sub_1CFB609D4(uint64_t a1)
{
  v1 = (*(a1 + 16))();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4EC8A0, &qword_1CFB92380);
  v2 = sub_1CFB8FB30();

  return v2;
}

void sub_1CFB60AB0(unint64_t a1)
{
  v2 = v1;
  v3 = a1;
  if (!(a1 >> 62))
  {
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_16:
    v24 = sub_1CFB5E0B0();
    v25 = *&v24[OBJC_IVAR____TtC11CallsSearch33SearchTableViewDiffableDataSource_searchControllers];
    *&v24[OBJC_IVAR____TtC11CallsSearch33SearchTableViewDiffableDataSource_searchControllers] = v3;

    sub_1CFB77BF0();

    return;
  }

  v4 = sub_1CFB8FFB0();
  if (!v4)
  {
    goto LABEL_16;
  }

LABEL_3:
  if (v4 >= 1)
  {
    v5 = v3 & 0xC000000000000001;
    v28 = OBJC_IVAR___MPSearchViewController_detailsPresenter;
    swift_beginAccess();
    v6 = 0;
    v7 = 0x1E83C9000uLL;
    v8 = 0x1E83C9000uLL;
    v9 = 0x1E83C9000uLL;
    v26 = v3 & 0xC000000000000001;
    v27 = v4;
    do
    {
      if (v5)
      {
        v10 = MEMORY[0x1D386D910](v6, v3);
      }

      else
      {
        v10 = *(v3 + 8 * v6 + 32);
        swift_unknownObjectRetain();
      }

      v11 = [v2 *(v7 + 3096)];
      [v10 *(v8 + 3768)];

      v12 = [v2 *(v9 + 3448)];
      if (v12)
      {
        v13 = v12;
        [v10 setHostingNavigationController_];
      }

      swift_getObjectType();
      v14 = swift_conformsToProtocol2();
      if (v14 && v10)
      {
        v15 = v14;
        ObjectType = swift_getObjectType();
        v17 = v7;
        v18 = v2;
        v19 = *&v2[v28];
        v20 = v3;
        v21 = *(v15 + 16);

        swift_unknownObjectRetain();
        v22 = v19;
        v2 = v18;
        v7 = v17;
        v23 = ObjectType;
        v5 = v26;
        v4 = v27;
        v21(v22, v23, v15);
        v8 = 0x1E83C9000;
        v3 = v20;
        v9 = 0x1E83C9000;
        swift_unknownObjectRelease_n();
      }

      else
      {
        swift_unknownObjectRelease();
      }

      ++v6;
    }

    while (v4 != v6);
    goto LABEL_16;
  }

  __break(1u);
}

Swift::Void __swiftcall MPSearchViewController.viewDidLoad()()
{
  swift_getObjectType();
  v18.receiver = v0;
  v18.super_class = MPSearchViewController;
  objc_msgSendSuper2(&v18, sel_viewDidLoad);
  MPSearchViewController.loadSearchControllersIfNeeded()();
  v1 = [v0 tableView];
  [v1 setDelegate_];

  v2 = [v0 tableView];
  [v2 setRowHeight_];

  v3 = [v0 tableView];
  [v3 setTranslatesAutoresizingMaskIntoConstraints_];

  v4 = [v0 tableView];
  [v4 setSectionHeaderTopPadding_];

  v5 = [v0 tableView];
  [v5 _setUseLegacySectionHeaderFooterPinningBehavior_];

  v6 = [v0 tableView];
  [v6 _setSectionHeaderFooterPadding_];

  v7 = [v0 tableView];
  [v7 setSeparatorInsetReference_];

  v8 = [v0 tableView];
  type metadata accessor for SearchHeaderCell();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v10 = sub_1CFB8FA80();
  [v8 registerClass:ObjCClassFromMetadata forHeaderFooterViewReuseIdentifier:v10];

  v11 = [v0 tableView];
  [v11 setFillerRowHeight_];

  [v0 updateTableViewSeperatorInset];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4EC270, &qword_1CFB91EA0);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1CFB91E60;
  v13 = sub_1CFB8F930();
  v14 = MEMORY[0x1E69DC2B0];
  *(v12 + 32) = v13;
  *(v12 + 40) = v14;
  sub_1CFB8FCE0();
  swift_unknownObjectRelease();

  v15 = [v0 view];
  if (v15)
  {
    v16 = v15;
    v17 = [v0 tableView];
    [v16 addSubview_];

    [v0 loadConstraints];
  }

  else
  {
    __break(1u);
  }
}

Swift::Void __swiftcall MPSearchViewController.loadSearchControllersIfNeeded()()
{
  v1 = [v0 searchControllers];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4EC8A0, &qword_1CFB92380);
  v2 = sub_1CFB8FB30();

  if (v2 >> 62)
  {
    v3 = sub_1CFB8FFB0();
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v3)
  {
    v4 = [v0 searchControllerProvider];
    if (v4)
    {
      v5 = v4;
      v6 = (*(v4 + 2))();
      sub_1CFB8FB30();

      _Block_release(v5);
    }

    v7 = sub_1CFB8FB20();

    [v0 setSearchControllers_];
  }
}

Swift::Void __swiftcall MPSearchViewController.viewDidAppear(_:)(Swift::Bool a1)
{
  v2 = v1;
  v3 = [v1 contactAvatarCardController];
  v5 = ContactAvatarCardController.cardController.getter();

  v4 = [v2 view];
  [v5 setSourceView_];
}

Swift::Void __swiftcall MPSearchViewController.viewIsAppearing(_:)(Swift::Bool a1)
{
  v2 = v1;
  objc_msgSendSuper2(&v4, sel_viewIsAppearing_, a1);
  v3 = sub_1CFB5E0B0();
  sub_1CFB5E3F4();

  [v2 updateTableViewSeperatorInset];
}

void sub_1CFB614A0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4EC810, &qword_1CFB92180);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1CFB91E70;
  v2 = [v0 tableView];
  v3 = [v2 leadingAnchor];

  v4 = [v0 view];
  if (!v4)
  {
    __break(1u);
    goto LABEL_9;
  }

  v5 = v4;
  v6 = [v4 leadingAnchor];

  v7 = [v3 constraintEqualToAnchor_];
  *(v1 + 32) = v7;
  v8 = [v0 tableView];
  v9 = [v8 trailingAnchor];

  v10 = [v0 view];
  if (!v10)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v11 = v10;
  v12 = [v10 trailingAnchor];

  v13 = [v9 constraintEqualToAnchor_];
  *(v1 + 40) = v13;
  v14 = [v0 tableView];
  v15 = [v14 topAnchor];

  v16 = [v0 view];
  if (!v16)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v17 = v16;
  v18 = [v16 topAnchor];

  v19 = [v15 constraintEqualToAnchor_];
  *(v1 + 48) = v19;
  v20 = [v0 tableView];
  v21 = [v20 bottomAnchor];

  v22 = [v0 view];
  if (!v22)
  {
LABEL_11:
    __break(1u);
    return;
  }

  v23 = v22;
  v24 = objc_opt_self();
  v25 = [v23 bottomAnchor];

  v26 = [v21 constraintEqualToAnchor_];
  *(v1 + 56) = v26;
  sub_1CFB5D38C(0, &qword_1EE04BD00, 0x1E696ACD8);
  v27 = sub_1CFB8FB20();

  [v24 activateConstraints_];
}

void sub_1CFB6181C()
{
  v13 = [v0 tableView];
  v1 = [v0 delegate];
  if (v1)
  {
    v2 = v1;
    v3 = [v0 traitCollection];
    v4 = [v3 preferredContentSizeCategory];

    [v2 separatorInsetForContentSizeCategory:v4 isEditing:0];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = *MEMORY[0x1E69DDCE0];
    v8 = *(MEMORY[0x1E69DDCE0] + 8);
    v10 = *(MEMORY[0x1E69DDCE0] + 16);
    v12 = *(MEMORY[0x1E69DDCE0] + 24);
  }

  [v13 setSeparatorInset_];
}

uint64_t sub_1CFB61990(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 48) = a5;
  *(v5 + 40) = a1;
  v6 = sub_1CFB8FF70();
  *(v5 + 56) = v6;
  v7 = *(v6 - 8);
  *(v5 + 64) = v7;
  v8 = *(v7 + 64) + 15;
  *(v5 + 72) = swift_task_alloc();
  sub_1CFB8FBC0();
  *(v5 + 80) = sub_1CFB8FBB0();
  v10 = sub_1CFB8FB80();
  *(v5 + 88) = v10;
  *(v5 + 96) = v9;

  return MEMORY[0x1EEE6DFA0](sub_1CFB61A88, v10, v9);
}

uint64_t sub_1CFB61A88()
{
  v1 = v0[9];
  v2 = v0[5];
  sub_1CFB8FF60();
  v3 = sub_1CFB90100();
  v5 = v4;
  v6 = swift_task_alloc();
  v0[13] = v6;
  *v6 = v0;
  v6[1] = sub_1CFB61B6C;
  v7 = v0[9];

  return sub_1CFB7749C(v3, v5, 0, 0, 1);
}

uint64_t sub_1CFB61B6C()
{
  v3 = *v1;
  v2 = *v1;
  v4 = *(*v1 + 104);
  v5 = *v1;

  v6 = v2[9];
  v7 = v2[8];
  v8 = v2[7];
  if (v0)
  {

    (*(v7 + 8))(v6, v8);
    v9 = v3[11];
    v10 = v3[12];
    v11 = sub_1CFB66BF0;
  }

  else
  {
    (*(v7 + 8))(v6, v8);
    v9 = v3[11];
    v10 = v3[12];
    v11 = sub_1CFB61D00;
  }

  return MEMORY[0x1EEE6DFA0](v11, v9, v10);
}

uint64_t sub_1CFB61D00()
{
  v1 = v0[10];
  v2 = v0[6];

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    if (qword_1EE04BDB8 != -1)
    {
      swift_once();
    }

    v5 = sub_1CFB8F7C0();
    __swift_project_value_buffer(v5, qword_1EE04C228);
    v6 = sub_1CFB8F7A0();
    v7 = sub_1CFB8FCB0();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_1CFB5B000, v6, v7, "Prewarming SearchViewController", v8, 2u);
      MEMORY[0x1D386E190](v8, -1, -1);
    }

    MPSearchViewController.loadSearchControllersIfNeeded()();
  }

  v9 = v0[9];

  v10 = v0[1];

  return v10();
}

Swift::Void __swiftcall MPSearchViewController.updateSearchResults(for:)(UISearchBar *a1)
{
  v3 = sub_1CFB8F9A0();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3);
  v5 = [(UISearchBar *)a1 text];
  if (v5)
  {
    v6 = v5;
    v7 = sub_1CFB8FA90();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  v10 = [(UISearchBar *)a1 searchTextField];
  v11 = [(UISearchTextField *)v10 tokens];

  sub_1CFB5D38C(0, &unk_1EE04BD50, 0x1E69DCF30);
  v12 = sub_1CFB8FB30();

  v13 = *(v1 + OBJC_IVAR___MPSearchViewController_throttle);
  v14 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v15 = swift_allocObject();
  v15[2] = v14;
  v15[3] = v7;
  v15[4] = v9;
  v15[5] = v12;
  aBlock[4] = sub_1CFB65F2C;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1CFB623CC;
  aBlock[3] = &block_descriptor;
  _Block_copy(aBlock);
  sub_1CFB65F38();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4EC290, &qword_1CFB91EA8);
  sub_1CFB5DD2C(&unk_1EE04BD68, &unk_1EC4EC290, &qword_1CFB91EA8);
  sub_1CFB8FE50();
  v16 = sub_1CFB8FA00();
  v17 = *(v16 + 48);
  v18 = *(v16 + 52);
  swift_allocObject();
  v19 = sub_1CFB8F9F0();

  sub_1CFB655E4(v19);
}

void sub_1CFB6230C(uint64_t a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    if (a3)
    {
      a3 = sub_1CFB8FA80();
    }

    sub_1CFB5D38C(0, &unk_1EE04BD50, 0x1E69DCF30);
    v6 = sub_1CFB8FB20();
    [v5 performSearch:a3 :v6];
  }
}

uint64_t sub_1CFB623CC(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

void sub_1CFB62410(void *a1)
{
  v2 = v1;
  v4 = sub_1CFB8F610();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = [v2 navigationItem];
  v7 = [v6 searchController];

  if (v7)
  {
    v8 = [v7 searchBar];

    v9 = [v8 searchTextField];
    if (v9)
    {
      if ([a1 representedObject])
      {
        sub_1CFB8FE40();
        swift_unknownObjectRelease();
        sub_1CFB66A0C(&v21, &v22);
        sub_1CFB5D38C(0, &unk_1EC4EC490, 0x1E6964EA8);
        swift_dynamicCast();
        v10 = [v20 currentToken];
        if (v10 && (v11 = v10, v12 = [v10 tokenKind], v11, !v12))
        {
          sub_1CFB5D38C(0, &qword_1EC4EC700, 0x1E696AAB0);
          v18 = v9;
          sub_1CFB8FC80();
          v19 = sub_1CFB8FDD0();
          v17 = [v19 string];

          if (!v17)
          {
            sub_1CFB8FA90();
            v17 = sub_1CFB8FA80();
          }
        }

        else
        {
          v13 = [v9 tokens];
          sub_1CFB5D38C(0, &unk_1EE04BD50, 0x1E69DCF30);
          v14 = sub_1CFB8FB30();

          if (v14 >> 62)
          {
            v15 = sub_1CFB8FFB0();
          }

          else
          {
            v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          [v9 insertToken:a1 atIndex:v15];
          v16 = v9;
          v17 = sub_1CFB8FA80();
        }

        [v9 setText_];
      }

      else
      {
        __break(1u);
      }
    }
  }
}

void sub_1CFB62770(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (qword_1EE04BDB8 != -1)
  {
    swift_once();
  }

  v8 = sub_1CFB8F7C0();
  __swift_project_value_buffer(v8, qword_1EE04C228);

  v9 = sub_1CFB8F7A0();
  v10 = sub_1CFB8FCB0();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v23 = v12;
    *v11 = 136315394;
    if (a2)
    {
      v13 = a1;
    }

    else
    {
      v13 = 0;
    }

    if (a2)
    {
      v14 = a2;
    }

    else
    {
      v14 = 0xE000000000000000;
    }

    v15 = sub_1CFB8C3D8(v13, v14, &v23);

    *(v11 + 4) = v15;
    *(v11 + 12) = 2080;
    v16 = sub_1CFB5D38C(0, &unk_1EE04BD50, 0x1E69DCF30);
    v17 = MEMORY[0x1D386D590](a3, v16);
    v19 = sub_1CFB8C3D8(v17, v18, &v23);

    *(v11 + 14) = v19;
    _os_log_impl(&dword_1CFB5B000, v9, v10, "SearchViewController: Performing Search for searchText: %s searchTokens: %s", v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D386E190](v12, -1, -1);
    MEMORY[0x1D386E190](v11, -1, -1);
  }

  if (a2)
  {
    v20 = sub_1CFB8FA80();
  }

  else
  {
    v20 = 0;
  }

  [v4 setSearchText_];

  sub_1CFB5D38C(0, &unk_1EE04BD50, 0x1E69DCF30);
  v21 = sub_1CFB8FB20();
  [v4 setSearchTokens_];

  v22 = sub_1CFB5E0B0();
  sub_1CFB77D14(a1, a2, a3);
}

void sub_1CFB62AB4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1CFB5E0B0();
  v5 = OBJC_IVAR____TtC11CallsSearch33SearchTableViewDiffableDataSource_searchControllersWithResults;
  swift_beginAccess();
  v6 = *&v4[v5];

  v7 = sub_1CFB8F770();
  if (!(v6 >> 62))
  {
    if (v7 < *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_11:

    return;
  }

  if (v7 >= sub_1CFB8FFB0())
  {
    goto LABEL_11;
  }

LABEL_3:
  v8 = sub_1CFB8F770();
  if ((v6 & 0xC000000000000001) == 0)
  {
    if ((v8 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v8 < *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v9 = *(v6 + 8 * v8 + 32);
      swift_unknownObjectRetain();
      goto LABEL_7;
    }

    __break(1u);
    return;
  }

  v9 = MEMORY[0x1D386D910](v8, v6);
LABEL_7:

  if ([v9 respondsToSelector_])
  {
    v10 = sub_1CFB8F740();
    [v9 tableView:a1 willDisplayCell:a2 forRowAtIndexPath:v10];
    swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRelease();
  }
}

void sub_1CFB62D44(uint64_t a1)
{
  v3 = [v1 delegate];
  if (v3)
  {
    v4 = v3;
    if ([v3 respondsToSelector_])
    {
      [v4 searchControllerDidSelectRow];
    }

    swift_unknownObjectRelease();
  }

  v5 = sub_1CFB5E0B0();
  v6 = OBJC_IVAR____TtC11CallsSearch33SearchTableViewDiffableDataSource_searchControllersWithResults;
  swift_beginAccess();
  v7 = *&v5[v6];

  v8 = sub_1CFB8F770();
  if (!(v7 >> 62))
  {
    if (v8 < *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_7;
    }

LABEL_15:

    return;
  }

  if (v8 >= sub_1CFB8FFB0())
  {
    goto LABEL_15;
  }

LABEL_7:
  v9 = sub_1CFB8F770();
  if ((v7 & 0xC000000000000001) == 0)
  {
    if ((v9 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v9 < *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v10 = *(v7 + 8 * v9 + 32);
      swift_unknownObjectRetain();
      goto LABEL_11;
    }

    __break(1u);
    return;
  }

  v10 = MEMORY[0x1D386D910](v9, v7);
LABEL_11:

  if ([v10 respondsToSelector_])
  {
    v11 = sub_1CFB8F740();
    [v10 tableView:a1 didSelectRowAtIndexPath:v11];
    swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRelease();
  }
}

unint64_t sub_1CFB62F14(uint64_t a1)
{
  v2 = sub_1CFB5E0B0();
  v3 = OBJC_IVAR____TtC11CallsSearch33SearchTableViewDiffableDataSource_searchControllersWithResults;
  swift_beginAccess();
  v4 = *&v2[v3];

  v5 = sub_1CFB8F770();
  if (v4 >> 62)
  {
    if (v5 < sub_1CFB8FFB0())
    {
LABEL_3:
      result = sub_1CFB8F770();
      if ((v4 & 0xC000000000000001) == 0)
      {
        if ((result & 0x8000000000000000) != 0)
        {
          __break(1u);
        }

        else if (result < *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v7 = *(v4 + 8 * result + 32);
          swift_unknownObjectRetain();
LABEL_7:

          if ([v7 respondsToSelector_])
          {
            v8 = sub_1CFB8F740();
            v9 = [v7 tableView:a1 trailingSwipeActionsConfigurationForRowAtIndexPath:v8];
            swift_unknownObjectRelease();

            return v9;
          }

          swift_unknownObjectRelease();
          return 0;
        }

        __break(1u);
        return result;
      }

      v7 = MEMORY[0x1D386D910](result, v4);
      goto LABEL_7;
    }
  }

  else if (v5 < *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  return 0;
}

void sub_1CFB631AC(uint64_t a1)
{
  v2 = sub_1CFB5E0B0();
  v3 = OBJC_IVAR____TtC11CallsSearch33SearchTableViewDiffableDataSource_searchControllersWithResults;
  swift_beginAccess();
  v4 = *&v2[v3];

  v5 = sub_1CFB8F770();
  if (!(v4 >> 62))
  {
    if (v5 < *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_11:

    return;
  }

  if (v5 >= sub_1CFB8FFB0())
  {
    goto LABEL_11;
  }

LABEL_3:
  v6 = sub_1CFB8F770();
  if ((v4 & 0xC000000000000001) == 0)
  {
    if ((v6 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v6 < *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v7 = *(v4 + 8 * v6 + 32);
      swift_unknownObjectRetain();
      goto LABEL_7;
    }

    __break(1u);
    return;
  }

  v7 = MEMORY[0x1D386D910](v6, v4);
LABEL_7:

  if ([v7 respondsToSelector_])
  {
    v8 = sub_1CFB8F740();
    [v7 tableView:a1 accessoryButtonTappedForRowWithIndexPath:v8];
    swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRelease();
  }
}

uint64_t sub_1CFB63334(void *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(id, char *))
{
  v8 = sub_1CFB8F780();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFB8F750();
  v13 = a3;
  v14 = a1;
  a5(v13, v12);

  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_1CFB63494(void *a1, uint64_t a2)
{
  v4 = sub_1CFB5E0B0();
  v5 = OBJC_IVAR____TtC11CallsSearch33SearchTableViewDiffableDataSource_searchControllersWithResults;
  swift_beginAccess();
  v6 = *&v4[v5];

  if (!(v6 >> 62))
  {
    result = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result > a2)
    {
      goto LABEL_3;
    }

LABEL_25:
    if (qword_1EE04BDB8 != -1)
    {
      swift_once();
    }

    v32 = sub_1CFB8F7C0();
    __swift_project_value_buffer(v32, qword_1EE04C228);

    v33 = sub_1CFB8F7A0();
    v34 = sub_1CFB8FC90();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 134218240;
      *(v35 + 4) = a2;
      *(v35 + 12) = 2048;
      if (v6 >> 62)
      {
        v36 = sub_1CFB8FFB0();
      }

      else
      {
        v36 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v35 + 14) = v36;

      _os_log_impl(&dword_1CFB5B000, v33, v34, "Failed to fetch result controller for section: %ld as there are %ld result controllers", v35, 0x16u);
      MEMORY[0x1D386E190](v35, -1, -1);
    }

    else
    {

      swift_bridgeObjectRelease_n();
    }

    return 0;
  }

  result = sub_1CFB8FFB0();
  if (result <= a2)
  {
    goto LABEL_25;
  }

LABEL_3:
  v8 = v6 + 8 * a2;
  if ((v6 & 0xC000000000000001) == 0)
  {
    if (a2 < 0)
    {
      __break(1u);
    }

    else if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
    {
      v9 = *(v8 + 32);
      swift_unknownObjectRetain();
      goto LABEL_7;
    }

    __break(1u);
    return result;
  }

  v9 = MEMORY[0x1D386D910](a2, v6);
LABEL_7:
  v10 = [v9 sectionTitle];
  swift_unknownObjectRelease();
  v11 = sub_1CFB8FA90();
  v13 = v12;

  v14 = HIBYTE(v13) & 0xF;
  if ((v13 & 0x2000000000000000) == 0)
  {
    v14 = v11 & 0xFFFFFFFFFFFFLL;
  }

  if (!v14)
  {

    return 0;
  }

  if ((v6 & 0xC000000000000001) != 0)
  {
    v15 = MEMORY[0x1D386D910](a2, v6);
  }

  else
  {
    v15 = *(v8 + 32);
    swift_unknownObjectRetain();
  }

  v16 = sub_1CFB8FA80();
  v17 = [a1 dequeueReusableHeaderFooterViewWithIdentifier_];

  if (!v17)
  {
    swift_unknownObjectRelease();
    return 0;
  }

  type metadata accessor for SearchHeaderCell();
  v18 = swift_dynamicCastClass();
  if (!v18)
  {
    swift_unknownObjectRelease();

    return 0;
  }

  v19 = v18;
  v20 = *(v18 + OBJC_IVAR____TtC11CallsSearch16SearchHeaderCell_titleLabel);
  v21 = [v15 sectionTitle];
  if (!v21)
  {
    sub_1CFB8FA90();
    v21 = sub_1CFB8FA80();
  }

  [v20 setText_];

  v22 = [v15 results];
  v23 = sub_1CFB8FB30();

  v24 = *(v23 + 16);

  v25 = [v15 maximumNumberOfRowsInSection];
  v26 = *(v19 + OBJC_IVAR____TtC11CallsSearch16SearchHeaderCell_seeAllButton);
  if (v25 >= v24)
  {
    [v26 setHidden_];
    swift_unknownObjectRelease();
  }

  else
  {
    [v26 setHidden_];
    v27 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v28 = swift_allocObject();
    *(v28 + 16) = v27;
    *(v28 + 24) = v15;
    v29 = (v19 + OBJC_IVAR____TtC11CallsSearch16SearchHeaderCell_seeAllTapHandler);
    v30 = *(v19 + OBJC_IVAR____TtC11CallsSearch16SearchHeaderCell_seeAllTapHandler);
    v31 = *(v19 + OBJC_IVAR____TtC11CallsSearch16SearchHeaderCell_seeAllTapHandler + 8);
    *v29 = sub_1CFB66A04;
    v29[1] = v28;

    sub_1CFB5F258(v30);
  }

  return v19;
}

void sub_1CFB63934(uint64_t a1, void *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    if (qword_1EE04BDB8 != -1)
    {
      swift_once();
    }

    v5 = sub_1CFB8F7C0();
    __swift_project_value_buffer(v5, qword_1EE04C228);
    swift_unknownObjectRetain();
    v6 = sub_1CFB8F7A0();
    v7 = sub_1CFB8FCB0();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v20 = v9;
      *v8 = 136315138;
      v10 = [a2 sectionTitle];
      v11 = sub_1CFB8FA90();
      v13 = v12;

      v14 = sub_1CFB8C3D8(v11, v13, &v20);

      *(v8 + 4) = v14;
      _os_log_impl(&dword_1CFB5B000, v6, v7, "See all tapped for section: %s", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v9);
      MEMORY[0x1D386E190](v9, -1, -1);
      MEMORY[0x1D386E190](v8, -1, -1);
    }

    [v4 presentSeeAllViewControllerFor_];
    v15 = [objc_opt_self() shared];
    v16 = [a2 sectionType];
    v17 = [v4 searchText];
    if (v17)
    {
      v18 = v17;
      sub_1CFB8FA90();

      v19 = sub_1CFB8FAD0();
    }

    else
    {
      v19 = -1;
    }

    [v15 logSearchResultInteraction:3 cellType:v16 searchLength:v19];
  }
}

void sub_1CFB63C10(void *a1)
{
  v2 = v1;
  v4 = [v1 hostingNavigationController];
  if (v4)
  {
    v5 = v4;
    if (qword_1EE04BDB8 != -1)
    {
      swift_once();
    }

    v6 = sub_1CFB8F7C0();
    __swift_project_value_buffer(v6, qword_1EE04C228);
    swift_unknownObjectRetain();
    v7 = sub_1CFB8F7A0();
    v8 = sub_1CFB8FCB0();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v49 = v10;
      *v9 = 136315138;
      v11 = [a1 sectionTitle];
      v12 = sub_1CFB8FA90();
      v14 = v13;

      v15 = sub_1CFB8C3D8(v12, v14, &v49);

      *(v9 + 4) = v15;
      _os_log_impl(&dword_1CFB5B000, v7, v8, "Pushing result controller: %s", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v10);
      MEMORY[0x1D386E190](v10, -1, -1);
      MEMORY[0x1D386E190](v9, -1, -1);
    }

    v48 = [a1 viewForDetails];
    [v5 setNavigationBarHidden:0 animated:0];
    v16 = [v48 navigationItem];
    [v16 setTitleView_];

    v17 = [v2 compositeSearchText];
    v18 = sub_1CFB8FA90();
    v20 = v19;

    v21 = HIBYTE(v20) & 0xF;
    if ((v20 & 0x2000000000000000) == 0)
    {
      v21 = v18 & 0xFFFFFFFFFFFFLL;
    }

    if (v21)
    {
      type metadata accessor for BundleClass();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v23 = [objc_opt_self() bundleForClass_];
      sub_1CFB8F620();

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4EC4A0, &qword_1CFB91F08);
      v24 = swift_allocObject();
      *(v24 + 16) = xmmword_1CFB91E80;
      v25 = [v2 compositeSearchText];
      v26 = sub_1CFB8FA90();
      v28 = v27;

      v29 = MEMORY[0x1E69E6158];
      *(v24 + 56) = MEMORY[0x1E69E6158];
      v30 = sub_1CFB5D6C0();
      *(v24 + 64) = v30;
      *(v24 + 32) = v26;
      *(v24 + 40) = v28;
      v31 = [a1 sectionTitle];
      v32 = sub_1CFB8FA90();
      v34 = v33;

      *(v24 + 96) = v29;
      *(v24 + 104) = v30;
      *(v24 + 72) = v32;
      *(v24 + 80) = v34;
      sub_1CFB8FAA0();
    }

    else
    {
      v44 = [a1 sectionTitle];
      sub_1CFB8FA90();
    }

    v45 = [v48 navigationItem];
    v46 = sub_1CFB8FA80();

    [v45 setTitle_];

    v47 = [v48 navigationItem];
    [v47 setLargeTitleDisplayMode_];

    [v5 pushViewController:v48 animated:1];
  }

  else
  {
    if (qword_1EE04BDB8 != -1)
    {
      swift_once();
    }

    v35 = sub_1CFB8F7C0();
    __swift_project_value_buffer(v35, qword_1EE04C228);
    swift_unknownObjectRetain();
    v48 = sub_1CFB8F7A0();
    v36 = sub_1CFB8FC90();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v48, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v49 = v38;
      *v37 = 136315138;
      v39 = [a1 sectionTitle];
      v40 = sub_1CFB8FA90();
      v42 = v41;

      v43 = sub_1CFB8C3D8(v40, v42, &v49);

      *(v37 + 4) = v43;
      _os_log_impl(&dword_1CFB5B000, v48, v36, "Failed to find navigationController and push resultController: %s", v37, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v38);
      MEMORY[0x1D386E190](v38, -1, -1);
      MEMORY[0x1D386E190](v37, -1, -1);
    }
  }
}

void sub_1CFB64460()
{
  v1 = [v0 searchControllers];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4EC8A0, &qword_1CFB92380);
  v2 = sub_1CFB8FB30();

  if (!(v2 >> 62))
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_10:

    return;
  }

  v3 = sub_1CFB8FFB0();
  if (!v3)
  {
    goto LABEL_10;
  }

LABEL_3:
  if (v3 >= 1)
  {
    v4 = 0;
    v5 = 0;
    do
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x1D386D910](v5, v2);
      }

      else
      {
        v6 = *(v2 + 8 * v5 + 32);
        swift_unknownObjectRetain();
      }

      ++v5;
      v7 = [v6 sectionNeedsIndexing];
      swift_unknownObjectRelease();
      v4 |= v7;
    }

    while (v3 != v5);
    goto LABEL_10;
  }

  __break(1u);
}

void sub_1CFB645B8()
{
  v1 = sub_1CFB5E0B0();
  v2 = OBJC_IVAR____TtC11CallsSearch33SearchTableViewDiffableDataSource_searchControllersWithResults;
  swift_beginAccess();
  v3 = *&v1[v2];

  if (v3 >> 62)
  {
    v4 = sub_1CFB8FFB0();
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v4)
  {
    v8 = 0;
    v6 = 0u;
    v7 = 0u;
  }

  else
  {
    *(&v7 + 1) = sub_1CFB8F920();
    v8 = MEMORY[0x1E69DC1D0];
    __swift_allocate_boxed_opaque_existential_1(&v6);
    sub_1CFB646C4();
  }

  sub_1CFB8FCF0();
  v5 = [v0 footerView];
  [v5 setHidden_];
}

uint64_t sub_1CFB646C4()
{
  v1 = v0;
  sub_1CFB8F910();
  type metadata accessor for BundleClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = objc_opt_self();
  v4 = [v3 bundleForClass_];
  sub_1CFB8F620();

  sub_1CFB8F900();
  v23 = ObjCClassFromMetadata;
  v5 = [v3 bundleForClass_];
  v6 = sub_1CFB8F620();
  v8 = v7;

  v9 = v1;
  v10 = [v1 compositeSearchText];
  sub_1CFB8FA90();

  v11 = sub_1CFB8FAD0();

  if (v11 >= 1)
  {
    v12 = [v3 bundleForClass_];
    sub_1CFB8F620();

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4EC4A0, &qword_1CFB91F08);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_1CFB91E60;
    v14 = [v9 compositeSearchText];
    v15 = sub_1CFB8FA90();
    v17 = v16;

    *(v13 + 56) = MEMORY[0x1E69E6158];
    *(v13 + 64) = sub_1CFB5D6C0();
    *(v13 + 32) = v15;
    *(v13 + 40) = v17;
    sub_1CFB8FAA0();

    MEMORY[0x1D386D530](32, 0xE100000000000000);

    MEMORY[0x1D386D530](v6, v8);

    if ([v9 needsReindexing])
    {
      v18 = [v3 bundleForClass_];
      v19 = sub_1CFB8F620();
      v21 = v20;

      MEMORY[0x1D386D530](v19, v21);

      MEMORY[0x1D386D530](10, 0xE100000000000000);
    }
  }

  return sub_1CFB8F8F0();
}

void sub_1CFB64B88()
{
  v1 = sub_1CFB8F610();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v35 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = 0;
  v41 = 0xE000000000000000;
  v4 = [v0 searchTokens];
  sub_1CFB5D38C(0, &unk_1EE04BD50, 0x1E69DCF30);
  v5 = sub_1CFB8FB30();

  if (v5 >> 62)
  {
    v6 = sub_1CFB8FFB0();
    if (v6)
    {
      goto LABEL_3;
    }

LABEL_24:

    goto LABEL_25;
  }

  v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v6)
  {
    goto LABEL_24;
  }

LABEL_3:
  if (v6 < 1)
  {
    __break(1u);
    return;
  }

  v31 = v0;
  v7 = 0;
  v8 = v5 & 0xC000000000000001;
  v9 = 0x1E83C9000uLL;
  v10 = &unk_1EC4EC490;
  v33 = v6;
  v34 = v5;
  v32 = v5 & 0xC000000000000001;
  do
  {
    if (v8)
    {
      v11 = MEMORY[0x1D386D910](v7, v5);
    }

    else
    {
      v11 = *(v5 + 8 * v7 + 32);
    }

    v12 = v11;
    if ([v11 *(v9 + 3336)])
    {
      sub_1CFB8FE40();
      swift_unknownObjectRelease();
    }

    else
    {
      v37 = 0u;
      v38 = 0u;
    }

    v39[0] = v37;
    v39[1] = v38;
    if (*(&v38 + 1))
    {
      sub_1CFB5D38C(0, v10, 0x1E6964EA8);
      if (swift_dynamicCast())
      {
        v13 = v9;
        v14 = v36;
        v15 = v40 & 0xFFFFFFFFFFFFLL;
        if ((v41 & 0x2000000000000000) != 0)
        {
          v15 = HIBYTE(v41) & 0xF;
        }

        v16 = v10;
        if (v15)
        {
          v17 = 0xE100000000000000;
        }

        else
        {
          v17 = 0xE000000000000000;
        }

        MEMORY[0x1D386D530](32 * (v15 != 0), v17);

        sub_1CFB5D38C(0, &qword_1EC4EC700, 0x1E696AAB0);
        sub_1CFB8FC80();
        v18 = sub_1CFB8FDD0();
        v19 = [v18 string];

        v20 = sub_1CFB8FA90();
        v22 = v21;

        v10 = v16;
        MEMORY[0x1D386D530](v20, v22);

        v9 = v13;
        v8 = v32;
        v6 = v33;
        v5 = v34;
      }
    }

    else
    {

      sub_1CFB5DDDC(v39, &unk_1EC4ECA20, &qword_1CFB91F00);
    }

    ++v7;
  }

  while (v6 != v7);

  v0 = v31;
LABEL_25:
  v23 = [v0 searchText];
  if (v23)
  {
    v24 = v23;
    v25 = sub_1CFB8FA90();
    v27 = v26;

    v28 = HIBYTE(v27) & 0xF;
    if ((v27 & 0x2000000000000000) == 0)
    {
      v28 = v25 & 0xFFFFFFFFFFFFLL;
    }

    if (v28)
    {
      v29 = v40 & 0xFFFFFFFFFFFFLL;
      if ((v41 & 0x2000000000000000) != 0)
      {
        v29 = HIBYTE(v41) & 0xF;
      }

      if (v29)
      {
        v30 = 0xE100000000000000;
      }

      else
      {
        v30 = 0xE000000000000000;
      }

      MEMORY[0x1D386D530](32 * (v29 != 0), v30);

      MEMORY[0x1D386D530](v25, v27);
    }
  }
}

unint64_t sub_1CFB64F98(uint64_t a1)
{
  v2 = sub_1CFB5E0B0();
  v3 = OBJC_IVAR____TtC11CallsSearch33SearchTableViewDiffableDataSource_searchControllersWithResults;
  swift_beginAccess();
  v4 = *&v2[v3];

  v5 = sub_1CFB8F770();
  if (v4 >> 62)
  {
    if (v5 < sub_1CFB8FFB0())
    {
LABEL_3:
      result = sub_1CFB8F770();
      if ((v4 & 0xC000000000000001) == 0)
      {
        if ((result & 0x8000000000000000) != 0)
        {
          __break(1u);
        }

        else if (result < *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v7 = *(v4 + 8 * result + 32);
          swift_unknownObjectRetain();
LABEL_7:

          if ([v7 respondsToSelector_])
          {
            v8 = sub_1CFB8F740();
            v9 = [v7 configureWith:a1 presentationResultForIndex:v8];
            swift_unknownObjectRelease();

            return v9;
          }

          swift_unknownObjectRelease();
          return 1;
        }

        __break(1u);
        return result;
      }

      v7 = MEMORY[0x1D386D910](result, v4);
      goto LABEL_7;
    }
  }

  else if (v5 < *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  return 1;
}

id MPSearchViewController.init(coder:)(void *a1)
{
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithCoder_];

  return v2;
}

{
  v2 = v1;
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR___MPSearchViewController_detailsPresenter] = 0;
  v4 = OBJC_IVAR___MPSearchViewController_tableView;
  *&v2[v4] = [objc_allocWithZone(MEMORY[0x1E69DD020]) initWithFrame:0 style:{0.0, 0.0, 0.0, 0.0}];
  *&v2[OBJC_IVAR___MPSearchViewController____lazy_storage___footerView] = 0;
  swift_unknownObjectWeakInit();
  *&v2[OBJC_IVAR___MPSearchViewController____lazy_storage___contactAvatarCardController] = 0;
  *&v2[OBJC_IVAR___MPSearchViewController____lazy_storage___datasource] = 0;
  v5 = &v2[OBJC_IVAR___MPSearchViewController_searchText];
  *v5 = 0;
  *(v5 + 1) = 0;
  *&v2[OBJC_IVAR___MPSearchViewController_searchTokens] = MEMORY[0x1E69E7CC0];
  v6 = OBJC_IVAR___MPSearchViewController_throttle;
  v7 = type metadata accessor for Throttle();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  *&v2[v6] = sub_1CFB5D778();
  v10 = &v2[OBJC_IVAR___MPSearchViewController_searchControllerProvider];
  *v10 = 0;
  *(v10 + 1) = 0;
  v13.receiver = v2;
  v13.super_class = MPSearchViewController;
  v11 = objc_msgSendSuper2(&v13, sel_initWithCoder_, a1);

  if (v11)
  {
  }

  return v11;
}

uint64_t sub_1CFB65544(uint64_t *a1)
{
  v1 = *a1;
  sub_1CFB5D38C(0, &unk_1EE04BD10, 0x1E69E9610);
  v2 = sub_1CFB8FD80();
  sub_1CFB8FDB0();

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = *(result + OBJC_IVAR____TtC11CallsSearchP33_A128077F03EEA6072F0178D28C0D48CB8Throttle_scheduledWorkItem);
    *(result + OBJC_IVAR____TtC11CallsSearchP33_A128077F03EEA6072F0178D28C0D48CB8Throttle_scheduledWorkItem) = 0;
  }

  return result;
}

uint64_t sub_1CFB655E4(uint64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC11CallsSearchP33_A128077F03EEA6072F0178D28C0D48CB8Throttle_scheduledWorkItem;
  if (*(v1 + OBJC_IVAR____TtC11CallsSearchP33_A128077F03EEA6072F0178D28C0D48CB8Throttle_scheduledWorkItem))
  {
    v5 = sub_1CFB8F7A0();
    v6 = sub_1CFB8FCB0();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_1CFB5B000, v5, v6, "SearchViewController: Throttling Search", v7, 2u);
      MEMORY[0x1D386E190](v7, -1, -1);
    }
  }

  else
  {
    sub_1CFB5D38C(0, &unk_1EE04BD10, 0x1E69E9610);
    v5 = sub_1CFB8FD80();
    sub_1CFB8FDB0();
  }

  v8 = *(v2 + v4);
  *(v2 + v4) = a1;

  v9 = *(v2 + OBJC_IVAR____TtC11CallsSearchP33_A128077F03EEA6072F0178D28C0D48CB8Throttle_subject);
  return sub_1CFB8F940();
}

uint64_t sub_1CFB65708()
{
  v1 = OBJC_IVAR____TtC11CallsSearchP33_A128077F03EEA6072F0178D28C0D48CB8Throttle_logger;
  v2 = sub_1CFB8F7C0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC11CallsSearchP33_A128077F03EEA6072F0178D28C0D48CB8Throttle_subject);

  v4 = *(v0 + OBJC_IVAR____TtC11CallsSearchP33_A128077F03EEA6072F0178D28C0D48CB8Throttle_inputCancellable);

  v5 = *(v0 + OBJC_IVAR____TtC11CallsSearchP33_A128077F03EEA6072F0178D28C0D48CB8Throttle_scheduledWorkItem);

  v6 = *(*v0 + 48);
  v7 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v6, v7);
}

void *sub_1CFB657D4(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EC4D0, &qword_1CFB91F48);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EC4D8, &unk_1CFB91F50);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1CFB65908(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4EC480, &qword_1CFB91EF8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

char *sub_1CFB65A0C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4ECB30, &qword_1CFB91EF0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void (*sub_1CFB65B18(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x1D386D910](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_1CFB65B98;
  }

  __break(1u);
  return result;
}

uint64_t (*sub_1CFB65BA0(uint64_t (*result)(uint64_t *a1), unint64_t a2, uint64_t a3))(uint64_t *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v5 = MEMORY[0x1D386D910](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
    v5 = swift_unknownObjectRetain();
LABEL_5:
    *v3 = v5;
    return sub_1CFB65C20;
  }

  __break(1u);
  return result;
}

uint64_t sub_1CFB65C34(uint64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR___MPSearchViewController_detailsPresenter;
  swift_beginAccess();
  v5 = *&v2[v4];
  v29 = v4;
  *&v2[v4] = a1;

  v30 = v2;
  v6 = [v2 searchControllers];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4EC8A0, &qword_1CFB92380);
  v7 = sub_1CFB8FB30();

  if (!(v7 >> 62))
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v8)
    {
      goto LABEL_3;
    }

LABEL_24:
    v10 = MEMORY[0x1E69E7CC0];
    goto LABEL_25;
  }

LABEL_23:
  v8 = sub_1CFB8FFB0();
  if (!v8)
  {
    goto LABEL_24;
  }

LABEL_3:
  v9 = 0;
  v10 = MEMORY[0x1E69E7CC0];
  do
  {
    v11 = v9;
    while (1)
    {
      if ((v7 & 0xC000000000000001) != 0)
      {
        v12 = MEMORY[0x1D386D910](v11, v7);
        v9 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          goto LABEL_21;
        }
      }

      else
      {
        if (v11 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_22;
        }

        v12 = *(v7 + 8 * v11 + 32);
        swift_unknownObjectRetain();
        v9 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
LABEL_21:
          __break(1u);
LABEL_22:
          __break(1u);
          goto LABEL_23;
        }
      }

      swift_getObjectType();
      v13 = swift_conformsToProtocol2();
      if (v13)
      {
        if (v12)
        {
          break;
        }
      }

      swift_unknownObjectRelease();
      ++v11;
      if (v9 == v8)
      {
        goto LABEL_25;
      }
    }

    v28 = v13;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v10 = sub_1CFB657D4(0, v10[2] + 1, 1, v10);
    }

    v16 = v10[2];
    v15 = v10[3];
    v17 = v28;
    if (v16 >= v15 >> 1)
    {
      v10 = sub_1CFB657D4((v15 > 1), v16 + 1, 1, v10);
      v17 = v28;
    }

    v10[2] = v16 + 1;
    v18 = &v10[2 * v16];
    v18[4] = v12;
    v18[5] = v17;
  }

  while (v9 != v8);
LABEL_25:

  v20 = v10[2];
  if (!v20)
  {
  }

  v21 = 0;
  v22 = v10 + 5;
  while (v21 < v10[2])
  {
    ++v21;
    v23 = *(v22 - 1);
    v24 = *v22;
    ObjectType = swift_getObjectType();
    v26 = *&v30[v29];
    v27 = *(v24 + 16);

    swift_unknownObjectRetain();
    v27(v26, ObjectType, v24);
    result = swift_unknownObjectRelease();
    v22 += 2;
    if (v20 == v21)
    {
    }
  }

  __break(1u);
  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_1CFB65F38()
{
  result = qword_1EE04BD78;
  if (!qword_1EE04BD78)
  {
    sub_1CFB8F9A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE04BD78);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
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

uint64_t sub_1CFB66098()
{
  v1 = v0;
  swift_unknownObjectWeakAssign();
  v2 = [v0 searchControllers];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4EC8A0, &qword_1CFB92380);
  v3 = sub_1CFB8FB30();

  if (v3 >> 62)
  {
LABEL_18:
    v4 = sub_1CFB8FFB0();
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v22 = OBJC_IVAR___MPSearchViewController_detailsPresenter;
  swift_beginAccess();
  if (v4)
  {
    v5 = 0;
    v6 = v3 & 0xC000000000000001;
    v7 = v3 & 0xFFFFFFFFFFFFFF8;
    v20 = v3;
    v21 = v4;
    do
    {
      if (v6)
      {
        v8 = MEMORY[0x1D386D910](v5, v3);
        v9 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
LABEL_15:
          __break(1u);
        }
      }

      else
      {
        if (v5 >= *(v7 + 16))
        {
          __break(1u);
          goto LABEL_18;
        }

        v8 = *(v3 + 8 * v5 + 32);
        swift_unknownObjectRetain();
        v9 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          goto LABEL_15;
        }
      }

      v10 = [v1 hostingNavigationController];
      [v8 setHostingNavigationController_];

      swift_getObjectType();
      v11 = swift_conformsToProtocol2();
      if (v11 && v8)
      {
        v12 = v11;
        ObjectType = swift_getObjectType();
        v14 = v7;
        v15 = v6;
        v16 = v1;
        v17 = *&v1[v22];
        v23 = *(v12 + 16);
        v24 = ObjectType;

        swift_unknownObjectRetain();
        v18 = v17;
        v1 = v16;
        v6 = v15;
        v7 = v14;
        v4 = v21;
        v23(v18, v24, v12);
        v3 = v20;
        swift_unknownObjectRelease_n();
      }

      else
      {
        swift_unknownObjectRelease();
      }

      ++v5;
    }

    while (v9 != v4);
  }
}

uint64_t sub_1CFB662D0(uint64_t a1)
{
  v2 = sub_1CFB5E0B0();
  v3 = OBJC_IVAR____TtC11CallsSearch33SearchTableViewDiffableDataSource_searchControllersWithResults;
  swift_beginAccess();
  v4 = *&v2[v3];

  if (v4 >> 62)
  {
    result = sub_1CFB8FFB0();
    if (result > a1)
    {
LABEL_3:
      if ((v4 & 0xC000000000000001) == 0)
      {
        if (a1 < 0)
        {
          __break(1u);
        }

        else if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10) > a1)
        {
          v6 = *(v4 + 8 * a1 + 32);
          swift_unknownObjectRetain();
LABEL_7:

          v7 = [v6 sectionTitle];
          swift_unknownObjectRelease();
          v8 = sub_1CFB8FA90();
          v10 = v9;

          v11 = HIBYTE(v10) & 0xF;
          if ((v10 & 0x2000000000000000) == 0)
          {
            v11 = v8 & 0xFFFFFFFFFFFFLL;
          }

          return v11 == 0;
        }

        __break(1u);
        return result;
      }

      v6 = MEMORY[0x1D386D910](a1, v4);
      goto LABEL_7;
    }
  }

  else
  {
    result = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result > a1)
    {
      goto LABEL_3;
    }
  }

  if (qword_1EE04BDB8 != -1)
  {
    swift_once();
  }

  v12 = sub_1CFB8F7C0();
  __swift_project_value_buffer(v12, qword_1EE04C228);

  v13 = sub_1CFB8F7A0();
  v14 = sub_1CFB8FC90();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 134218240;
    *(v15 + 4) = a1;
    *(v15 + 12) = 2048;
    if (v4 >> 62)
    {
      v16 = sub_1CFB8FFB0();
    }

    else
    {
      v16 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v15 + 14) = v16;

    _os_log_impl(&dword_1CFB5B000, v13, v14, "Failed to fetch result controller for section: %ld as there are %ld result controllers", v15, 0x16u);
    MEMORY[0x1D386E190](v15, -1, -1);
  }

  else
  {

    swift_bridgeObjectRelease_n();
  }

  return 0;
}

void sub_1CFB66534(unint64_t a1)
{
  v2 = sub_1CFB5E0B0();
  v3 = OBJC_IVAR____TtC11CallsSearch33SearchTableViewDiffableDataSource_searchControllersWithResults;
  swift_beginAccess();
  v4 = *&v2[v3];

  if ((v4 & 0xC000000000000001) != 0)
  {
    v5 = MEMORY[0x1D386D910](a1, v4);
    goto LABEL_5;
  }

  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10) > a1)
  {
    v5 = *(v4 + 8 * a1 + 32);
    swift_unknownObjectRetain();
LABEL_5:

    v6 = [v5 sectionTitle];
    swift_unknownObjectRelease();
    sub_1CFB8FA90();

    v7 = *MEMORY[0x1E69DE3D0];
    return;
  }

  __break(1u);
}

uint64_t sub_1CFB66654(uint64_t a1)
{
  v2 = sub_1CFB5E0B0();
  v3 = OBJC_IVAR____TtC11CallsSearch33SearchTableViewDiffableDataSource_searchControllersWithResults;
  swift_beginAccess();
  v4 = *&v2[v3];

  if (!(v4 >> 62))
  {
    result = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v6 = result - 1;
    if (!__OFSUB__(result, 1))
    {
      goto LABEL_3;
    }

LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  result = sub_1CFB8FFB0();
  v6 = result - 1;
  if (__OFSUB__(result, 1))
  {
    goto LABEL_12;
  }

LABEL_3:
  if (v6 <= a1)
  {
  }

  if ((v4 & 0xC000000000000001) != 0)
  {
LABEL_13:
    v7 = MEMORY[0x1D386D910](a1, v4);
    goto LABEL_8;
  }

  if (a1 < 0)
  {
    __break(1u);
  }

  else if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10) > a1)
  {
    v7 = *(v4 + 8 * a1 + 32);
    swift_unknownObjectRetain();
LABEL_8:

    v8 = [v7 sectionTitle];
    swift_unknownObjectRelease();
    sub_1CFB8FA90();
  }

  __break(1u);
  return result;
}

uint64_t sub_1CFB667B8(uint64_t a1)
{
  v2 = sub_1CFB5E0B0();
  v3 = OBJC_IVAR____TtC11CallsSearch33SearchTableViewDiffableDataSource_searchControllersWithResults;
  swift_beginAccess();
  v4 = *&v2[v3];

  if (!(v4 >> 62))
  {
    result = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v6 = result - 1;
    if (!__OFSUB__(result, 1))
    {
      goto LABEL_3;
    }

LABEL_16:
    __break(1u);
LABEL_17:
    v7 = MEMORY[0x1D386D910](a1, v4);
LABEL_8:

    v8 = [v7 sectionTitle];
    swift_unknownObjectRelease();
    v9 = sub_1CFB8FA90();
    v11 = v10;

    v12 = HIBYTE(v11) & 0xF;
    if ((v11 & 0x2000000000000000) == 0)
    {
      v12 = v9 & 0xFFFFFFFFFFFFLL;
    }

    if (v12)
    {
      v13 = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
      v14 = [objc_opt_self() mainScreen];
      [v14 bounds];
      v16 = v15;
      v18 = v17;
      v20 = v19;
      v22 = v21;

      v23.origin.x = v16;
      v23.origin.y = v18;
      v23.size.width = v20;
      v23.size.height = v22;
      [v13 setFrame_];
      return v13;
    }

    return 0;
  }

  result = sub_1CFB8FFB0();
  v6 = result - 1;
  if (__OFSUB__(result, 1))
  {
    goto LABEL_16;
  }

LABEL_3:
  if (v6 <= a1)
  {

    return 0;
  }

  if ((v4 & 0xC000000000000001) != 0)
  {
    goto LABEL_17;
  }

  if (a1 < 0)
  {
    __break(1u);
  }

  else if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10) > a1)
  {
    v7 = *(v4 + 8 * a1 + 32);
    swift_unknownObjectRetain();
    goto LABEL_8;
  }

  __break(1u);
  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

_OWORD *sub_1CFB66A0C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_1CFB66A1C(uint64_t a1)
{
  v4 = *(v1 + 2);
  v5 = *(v1 + 3);
  v6 = v1[4];
  v7 = *(v1 + 5);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1CFB66AE0;

  return sub_1CFB61990(v6, a1, v4, v5, v7);
}

uint64_t sub_1CFB66AE0()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

id sub_1CFB66C1C(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC11CallsSearch16SearchFooterCell_footerLabel;
  v5 = [objc_opt_self() mainScreen];
  [v5 bounds];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  v23.origin.x = v7;
  v23.origin.y = v9;
  v23.size.width = v11;
  v23.size.height = v13;
  CGRectGetWidth(v23);
  v14 = CGRectMake();
  *&v2[v4] = [objc_allocWithZone(MEMORY[0x1E69DCC10]) initWithFrame_];
  *&v2[OBJC_IVAR____TtC11CallsSearch16SearchFooterCell_footerHeight] = 0;
  if (a2)
  {
    v18 = sub_1CFB8FA80();
  }

  else
  {
    v18 = 0;
  }

  v22.receiver = v2;
  v22.super_class = type metadata accessor for SearchFooterCell();
  v19 = objc_msgSendSuper2(&v22, sel_initWithReuseIdentifier_, v18);

  v20 = v19;
  sub_1CFB66DBC();
  sub_1CFB67034();

  return v20;
}

id sub_1CFB66DBC()
{
  v1 = OBJC_IVAR____TtC11CallsSearch16SearchFooterCell_footerLabel;
  v2 = *&v0[OBJC_IVAR____TtC11CallsSearch16SearchFooterCell_footerLabel];
  type metadata accessor for BundleClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v4 = objc_opt_self();
  v5 = v2;
  v6 = [v4 bundleForClass_];
  sub_1CFB8F620();

  v7 = sub_1CFB8FA80();

  [v5 setText_];

  v8 = *&v0[v1];
  v9 = objc_opt_self();
  v10 = *MEMORY[0x1E69DDD80];
  v11 = v8;
  v12 = [v9 preferredFontForTextStyle_];
  [v11 setFont_];

  v13 = *&v0[v1];
  v14 = objc_opt_self();
  v15 = v13;
  v16 = [v14 secondaryLabelColor];
  [v15 setTextColor_];

  [*&v0[v1] setTextAlignment_];
  [*&v0[v1] setNumberOfLines_];
  [*&v0[v1] setLineBreakMode_];
  [*&v0[v1] sizeToFit];
  [*&v0[v1] frame];
  *&v0[OBJC_IVAR____TtC11CallsSearch16SearchFooterCell_footerHeight] = CGRectGetHeight(v20) + 40.0;
  [*&v0[v1] setTranslatesAutoresizingMaskIntoConstraints_];
  v17 = *&v0[v1];

  return [v0 addSubview_];
}

void sub_1CFB67034()
{
  v1 = v0;
  v2 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4EC810, &qword_1CFB92180);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1CFB91E70;
  v4 = OBJC_IVAR____TtC11CallsSearch16SearchFooterCell_footerLabel;
  v5 = [*&v1[OBJC_IVAR____TtC11CallsSearch16SearchFooterCell_footerLabel] topAnchor];
  v6 = [v1 topAnchor];
  v7 = [v5 constraintEqualToAnchor:v6 constant:20.0];

  *(v3 + 32) = v7;
  v8 = [*&v1[v4] leadingAnchor];
  v9 = [v1 leadingAnchor];
  v10 = [v8 constraintEqualToAnchor:v9 constant:16.0];

  *(v3 + 40) = v10;
  v11 = [*&v1[v4] trailingAnchor];
  v12 = [v1 trailingAnchor];
  v13 = [v11 constraintEqualToAnchor:v12 constant:-16.0];

  *(v3 + 48) = v13;
  v14 = [*&v1[v4] bottomAnchor];
  v15 = [v1 bottomAnchor];
  v16 = [v14 constraintEqualToAnchor:v15 constant:-20.0];

  *(v3 + 56) = v16;
  sub_1CFB672F0();
  v17 = sub_1CFB8FB20();

  [v2 activateConstraints_];
}

id sub_1CFB67288()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SearchFooterCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_1CFB672F0()
{
  result = qword_1EE04BD00;
  if (!qword_1EE04BD00)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE04BD00);
  }

  return result;
}

void sub_1CFB67354()
{
  v1 = OBJC_IVAR____TtC11CallsSearch16SearchFooterCell_footerLabel;
  v2 = [objc_opt_self() mainScreen];
  [v2 bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v15.origin.x = v4;
  v15.origin.y = v6;
  v15.size.width = v8;
  v15.size.height = v10;
  CGRectGetWidth(v15);
  v11 = CGRectMake();
  *(v0 + v1) = [objc_allocWithZone(MEMORY[0x1E69DCC10]) initWithFrame_];
  *(v0 + OBJC_IVAR____TtC11CallsSearch16SearchFooterCell_footerHeight) = 0;
  sub_1CFB8FFA0();
  __break(1u);
}

id ContactAvatarCardController.__allocating_init(tableViewController:tableView:)(void *a1, void *a2)
{
  v5 = objc_allocWithZone(v2);
  swift_getObjectType();

  return sub_1CFB67C98(a1, a2, v5);
}

id ContactAvatarCardController.cardController.getter()
{
  v1 = OBJC_IVAR____TtC11CallsSearch27ContactAvatarCardController____lazy_storage___cardController;
  v2 = *(v0 + OBJC_IVAR____TtC11CallsSearch27ContactAvatarCardController____lazy_storage___cardController);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC11CallsSearch27ContactAvatarCardController____lazy_storage___cardController);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E695D090]) init];
    [v4 setDelegate_];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id ContactAvatarCardController.init(tableViewController:tableView:)(void *a1, void *a2)
{
  swift_getObjectType();

  return sub_1CFB67C98(a1, a2, v2);
}

uint64_t ContactAvatarCardController.cardController.setter(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC11CallsSearch27ContactAvatarCardController____lazy_storage___cardController);
  *(v1 + OBJC_IVAR____TtC11CallsSearch27ContactAvatarCardController____lazy_storage___cardController) = a1;
  return MEMORY[0x1EEE66BB8]();
}

void (*ContactAvatarCardController.cardController.modify(id *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = ContactAvatarCardController.cardController.getter();
  return sub_1CFB67650;
}

void sub_1CFB67650(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(v1 + OBJC_IVAR____TtC11CallsSearch27ContactAvatarCardController____lazy_storage___cardController);
  *(v1 + OBJC_IVAR____TtC11CallsSearch27ContactAvatarCardController____lazy_storage___cardController) = v2;
}

uint64_t ContactAvatarCardController.avatarCardController(_:presentationResultForLocation:)(void *a1, double a2, double a3)
{
  v6 = sub_1CFB8F780();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EC500, &unk_1CFB91F90);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](v11 - 8);
  v15 = &v56 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = &v56 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v56 - v19;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 1;
  }

  v22 = Strong;
  v23 = swift_unknownObjectWeakLoadStrong();
  if (!v23)
  {

    return 1;
  }

  v24 = v23;
  if ([v24 isDecelerating])
  {

LABEL_9:
    return 1;
  }

  v25 = [v24 isDragging];

  if (v25 & 1) != 0 || ([v24 isEditing])
  {

    goto LABEL_9;
  }

  result = [v22 view];
  if (result)
  {
    v27 = result;
    [result convertPoint:v24 toCoordinateSpace:{a2, a3}];
    v29 = v28;
    v31 = v30;

    v32 = [v24 indexPathForRowAtPoint_];
    if (v32)
    {
      v33 = v32;
      sub_1CFB8F750();

      (*(v7 + 56))(v18, 0, 1, v6);
    }

    else
    {
      (*(v7 + 56))(v18, 1, 1, v6);
    }

    sub_1CFB67D68(v18, v20);
    sub_1CFB67DD8(v20, v15);
    if ((*(v7 + 48))(v15, 1, v6) == 1)
    {
      sub_1CFB67E48(v20);

      sub_1CFB67E48(v15);
      return 1;
    }

    (*(v7 + 32))(v10, v15, v6);
    v34 = sub_1CFB8F740();
    v35 = [v24 cellForRowAtIndexPath_];

    if (v35)
    {
      v36 = v35;
      [a1 setHighlightView_];
      [v36 frame];
      v38 = v37;
      v40 = v39;
      v42 = v41;
      v44 = v43;

      v45 = [a1 sourceView];
      [v24 convertRect:v45 toView:{v38, v40, v42, v44}];
      v47 = v46;
      v49 = v48;
      v51 = v50;
      v53 = v52;

      [a1 setSourceRect_];
      v54 = sub_1CFB8F740();
      v55 = [v22 configureWithCardController:a1 presentationResultForIndex:v54];

      (*(v7 + 8))(v10, v6);
      sub_1CFB67E48(v20);
      return v55;
    }

    else
    {

      (*(v7 + 8))(v10, v6);
      sub_1CFB67E48(v20);
      return 2;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

id ContactAvatarCardController.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ContactAvatarCardController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1CFB67C98(void *a1, void *a2, char *a3)
{
  ObjectType = swift_getObjectType();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *&a3[OBJC_IVAR____TtC11CallsSearch27ContactAvatarCardController____lazy_storage___cardController] = 0;
  v10.receiver = a3;
  v10.super_class = ObjectType;
  v7 = objc_msgSendSuper2(&v10, sel_init);
  swift_unknownObjectWeakAssign();
  v8 = v7;

  swift_unknownObjectWeakAssign();
  return v8;
}

uint64_t sub_1CFB67D68(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EC500, &unk_1CFB91F90);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CFB67DD8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EC500, &unk_1CFB91F90);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CFB67E48(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EC500, &unk_1CFB91F90);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t getEnumTagSinglePayload for ContactSearchError(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for ContactSearchError(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

id sub_1CFB68274()
{
  result = [objc_allocWithZone(CSSearchMetrics) init];
  qword_1EE04BD48 = result;
  return result;
}

id static CSSearchMetrics.shared()()
{
  if (qword_1EE04BD40 != -1)
  {
    swift_once();
  }

  v1 = qword_1EE04BD48;

  return v1;
}

char *sub_1CFB68360()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EC4B8, &qword_1CFB91F30);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v47 = &v40 - v4;
  v5 = sub_1CFB8FD60();
  v48 = *(v5 - 8);
  v49 = v5;
  v6 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v45 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EC5D0, &qword_1CFB92068);
  v9 = *(v8 - 8);
  v50 = v8;
  v51 = v9;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v46 = &v40 - v11;
  v12 = sub_1CFB8FD70();
  v42 = *(v12 - 8);
  v43 = v12;
  v13 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1CFB8FD20();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16);
  v18 = sub_1CFB8F9E0();
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = OBJC_IVAR___CSSearchMetrics_startTimeDict;
  v21 = MEMORY[0x1E69E7CC0];
  *&v1[v20] = sub_1CFB6ACE0(MEMORY[0x1E69E7CC0]);
  v22 = OBJC_IVAR___CSSearchMetrics_searchLatencyDict;
  *&v1[v22] = sub_1CFB6ADE4(v21);
  v23 = OBJC_IVAR___CSSearchMetrics_logLatencySubject;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4EC940, &qword_1CFB92070);
  v24 = *(v44 + 48);
  v25 = *(v44 + 52);
  swift_allocObject();
  *&v1[v23] = sub_1CFB8F950();
  *&v1[OBJC_IVAR___CSSearchMetrics_logLatencyCancellable] = 0;
  v41 = OBJC_IVAR___CSSearchMetrics_searchLatencyDictQueue;
  v40 = sub_1CFB5D38C(0, &unk_1EE04BD10, 0x1E69E9610);
  sub_1CFB8F9B0();
  v54 = v21;
  sub_1CFB6B23C(&qword_1EE04BD30, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EC5D8, &qword_1CFB922D0);
  sub_1CFB5DD2C(&qword_1EE04BD60, &qword_1EC4EC5D8, &qword_1CFB922D0);
  sub_1CFB8FE50();
  (*(v42 + 104))(v15, *MEMORY[0x1E69E8090], v43);
  *&v1[v41] = sub_1CFB8FDC0();
  v26 = OBJC_IVAR___CSSearchMetrics_analyticsLogger;
  *&v1[v26] = [objc_allocWithZone(MPAnalyticsLogger) init];
  v53.receiver = v1;
  v53.super_class = CSSearchMetrics;
  v27 = objc_msgSendSuper2(&v53, sel_init);
  v54 = *&v27[OBJC_IVAR___CSSearchMetrics_logLatencySubject];
  v28 = v27;

  v29 = v45;
  sub_1CFB8FD50();
  v30 = sub_1CFB8FD80();
  v52 = v30;
  v31 = sub_1CFB8FD30();
  v32 = v47;
  (*(*(v31 - 8) + 56))(v47, 1, 1, v31);
  sub_1CFB5DD2C(&qword_1EE04BD80, &unk_1EC4EC940, &qword_1CFB92070);
  sub_1CFB5DD74();
  v33 = v46;
  sub_1CFB8F980();
  sub_1CFB5DDDC(v32, &qword_1EC4EC4B8, &qword_1CFB91F30);

  (*(v48 + 8))(v29, v49);

  v34 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v35 = swift_allocObject();
  *(v35 + 16) = sub_1CFB6B284;
  *(v35 + 24) = v34;
  sub_1CFB5DD2C(&qword_1EE04BDA0, &qword_1EC4EC5D0, &qword_1CFB92068);
  v36 = v50;
  v37 = sub_1CFB8F990();

  (*(v51 + 8))(v33, v36);
  v38 = *&v28[OBJC_IVAR___CSSearchMetrics_logLatencyCancellable];
  *&v28[OBJC_IVAR___CSSearchMetrics_logLatencyCancellable] = v37;

  return v28;
}

void *sub_1CFB689F4(uint64_t a1)
{
  v2 = sub_1CFB8F9A0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1CFB8F9E0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v17 = v7;
    v13 = result;
    v16 = [result searchLatencyDictQueue];

    aBlock[4] = sub_1CFB6B294;
    aBlock[5] = a1;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1CFB623CC;
    aBlock[3] = &block_descriptor_11;
    v14 = _Block_copy(aBlock);

    sub_1CFB8F9B0();
    v18 = MEMORY[0x1E69E7CC0];
    sub_1CFB6B23C(&qword_1EE04BD78, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4EC290, &qword_1CFB91EA8);
    sub_1CFB5DD2C(&unk_1EE04BD68, &unk_1EC4EC290, &qword_1CFB91EA8);
    sub_1CFB8FE50();
    v15 = v16;
    MEMORY[0x1D386D7F0](0, v11, v6, v14);
    _Block_release(v14);

    (*(v3 + 8))(v6, v2);
    (*(v8 + 8))(v11, v17);
  }

  return result;
}

void sub_1CFB68CEC()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    [Strong logSearchLatency];
  }

  swift_beginAccess();
  v2 = swift_unknownObjectWeakLoadStrong();
  if (v2)
  {
    v3 = v2;
    sub_1CFB6ADE4(MEMORY[0x1E69E7CC0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EC5C8, &qword_1CFB92060);
    v4 = sub_1CFB8FA30();

    [v3 setSearchLatencyDict_];
  }
}

Swift::Void __swiftcall CSSearchMetrics.logSearchBarTap()()
{
  v1 = [v0 analyticsLogger];
  v2 = sub_1CFB8FA80();
  [v1 logEvent_];
}

void CSSearchMetrics.keypadButtonInteracted(buttonType:)(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EC578, &qword_1CFB92040);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CFB91E60;
  *(inited + 32) = 0xD00000000000001DLL;
  *(inited + 40) = 0x80000001CFB92E30;
  *(inited + 48) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedInt_];
  v4 = sub_1CFB6AEF4(inited);
  swift_setDeallocating();
  sub_1CFB5DDDC(inited + 32, &qword_1EC4EC580, &qword_1CFB92048);
  v5 = [v1 analyticsLogger];
  v6 = sub_1CFB8FA80();
  sub_1CFB690A4(v4);

  sub_1CFB5D38C(0, &qword_1EE04C158, 0x1E69E58C0);
  v7 = sub_1CFB8FA30();

  [v5 logEvent:v6 withCoreAnalyticsDictionary:v7];
}

void sub_1CFB690A4(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EC5E8, &qword_1CFB92088);
    v2 = sub_1CFB8FFF0();
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

  v7 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v13 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v13 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v13);
    ++v7;
    if (v5)
    {
      while (1)
      {
        v14 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v15 = v14 | (v13 << 6);
        v16 = (*(a1 + 48) + 16 * v15);
        v18 = *v16;
        v17 = v16[1];
        v19 = *(*(a1 + 56) + 8 * v15);

        v20 = v19;
        v21 = sub_1CFB8C9DC(v18, v17);
        if (v22)
        {
          v8 = (v2[6] + 16 * v21);
          v9 = v8[1];
          *v8 = v18;
          v8[1] = v17;
          v10 = v21;

          v11 = v2[7];
          v12 = *(v11 + 8 * v10);
          *(v11 + 8 * v10) = v20;

          v7 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v21;
          v23 = (v2[6] + 16 * v21);
          *v23 = v18;
          v23[1] = v17;
          *(v2[7] + 8 * v21) = v20;
          v24 = v2[2];
          v25 = __OFADD__(v24, 1);
          v26 = v24 + 1;
          if (v25)
          {
            goto LABEL_21;
          }

          v2[2] = v26;
          v7 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v13 = v7;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
}

Swift::Void __swiftcall CSSearchMetrics.logInteractionWith(_:searchLength:)(CSSuggestion _, Swift::Int_optional searchLength)
{
  v3 = v2;
  is_nil = searchLength.is_nil;
  value = searchLength.value;
  v6 = [(objc_class *)_.super.isa currentToken];
  if (!v6)
  {
    v9 = 0;
    goto LABEL_12;
  }

  v7 = v6;
  v8 = [v6 tokenKind];

  v9 = 1;
  if (v8 > 6)
  {
    if (v8 == 7)
    {
      goto LABEL_12;
    }

    if (v8 == 16)
    {
      v9 = 2;
      goto LABEL_12;
    }

    goto LABEL_10;
  }

  if (v8)
  {
    if (v8 == 5)
    {
      goto LABEL_12;
    }

LABEL_10:
    v9 = 10;
    goto LABEL_12;
  }

  v9 = 3;
LABEL_12:
  if (is_nil)
  {
    value = -1;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EC578, &qword_1CFB92040);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CFB92020;
  *(inited + 32) = 0xD00000000000001BLL;
  *(inited + 40) = 0x80000001CFB92EC0;
  *(inited + 48) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedInt_];
  *(inited + 56) = 0xD00000000000001FLL;
  *(inited + 64) = 0x80000001CFB92EE0;
  *(inited + 72) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedInt_];
  strcpy((inited + 80), "searchLength");
  *(inited + 93) = 0;
  *(inited + 94) = -5120;
  *(inited + 96) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  v11 = sub_1CFB6AEF4(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EC580, &qword_1CFB92048);
  swift_arrayDestroy();
  sub_1CFB69AD0([objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedInt_], 0xD00000000000001ALL, 0x80000001CFB92F00);
  v12 = [v3 analyticsLogger];
  v13 = sub_1CFB8FA80();
  sub_1CFB690A4(v11);

  sub_1CFB5D38C(0, &qword_1EE04C158, 0x1E69E58C0);
  v14 = sub_1CFB8FA30();

  [v12 logEvent:v13 withCoreAnalyticsDictionary:v14];
}

void CSSearchMetrics.logSearchResultInteraction(forEvent:interactionType:cellType:suggestionKind:searchLength:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EC578, &qword_1CFB92040);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CFB92020;
  *(inited + 32) = 0xD00000000000001BLL;
  *(inited + 40) = 0x80000001CFB92EC0;
  *(inited + 48) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedInt_];
  *(inited + 56) = 0xD00000000000001FLL;
  *(inited + 64) = 0x80000001CFB92EE0;
  *(inited + 72) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedInt_];
  strcpy((inited + 80), "searchLength");
  *(inited + 93) = 0;
  *(inited + 94) = -5120;
  *(inited + 96) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  v13 = sub_1CFB6AEF4(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EC580, &qword_1CFB92048);
  swift_arrayDestroy();
  if ((a5 & 0x100000000) == 0)
  {
    sub_1CFB69AD0([objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedInt_], 0xD00000000000001ALL, 0x80000001CFB92F00);
  }

  v14 = [v7 analyticsLogger];
  v15 = sub_1CFB8FA80();
  sub_1CFB690A4(v13);

  sub_1CFB5D38C(0, &qword_1EE04C158, 0x1E69E58C0);
  v16 = sub_1CFB8FA30();

  [v14 logEvent:v15 withCoreAnalyticsDictionary:v16];
}

void CSSearchMetrics.logSearchResultInteraction(_:cellType:searchLength:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a2 - 1) < 4 || (a2 - 5) <= 3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EC578, &qword_1CFB92040);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1CFB92020;
    *(inited + 32) = 0xD00000000000001BLL;
    *(inited + 40) = 0x80000001CFB92EC0;
    *(inited + 48) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedInt_];
    *(inited + 56) = 0xD00000000000001FLL;
    *(inited + 64) = 0x80000001CFB92EE0;
    *(inited + 72) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedInt_];
    strcpy((inited + 80), "searchLength");
    *(inited + 93) = 0;
    *(inited + 94) = -5120;
    *(inited + 96) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
    v8 = sub_1CFB6AEF4(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EC580, &qword_1CFB92048);
    swift_arrayDestroy();
    v9 = [v3 analyticsLogger];
    v10 = sub_1CFB8FA80();

    sub_1CFB690A4(v8);

    sub_1CFB5D38C(0, &qword_1EE04C158, 0x1E69E58C0);
    v11 = sub_1CFB8FA30();

    [v9 logEvent:v10 withCoreAnalyticsDictionary:v11];
  }
}

uint64_t sub_1CFB69AD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    v8 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;
    sub_1CFB8D5BC(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v18;
  }

  else
  {
    v11 = *v3;
    v12 = sub_1CFB8C9DC(a2, a3);
    LOBYTE(v11) = v13;

    if (v11)
    {
      v14 = *v4;
      v15 = swift_isUniquelyReferenced_nonNull_native();
      v16 = *v4;
      v19 = *v4;
      if (!v15)
      {
        sub_1CFB8DB50();
        v16 = v19;
      }

      v17 = *(*(v16 + 48) + 16 * v12 + 8);

      result = sub_1CFB6AB30(v12, v16);
      *v4 = v16;
    }
  }

  return result;
}

uint64_t CSSearchMetrics.searchFinished(forController:startTime:searchLength:resultsCount:)(int a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v43 = a3;
  v44 = a4;
  v41 = a1;
  ObjectType = swift_getObjectType();
  v6 = sub_1CFB8F9A0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v48 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_1CFB8F9E0();
  v47 = *(v45 - 8);
  v10 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v45);
  v46 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EC588, &qword_1CFB92050);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v35 - v14;
  v16 = sub_1CFB8F6F0();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x1EEE9AC00](v16);
  v20 = &v35 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v35 - v21;
  sub_1CFB6AFF8(a2, v15);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    return sub_1CFB5DDDC(v15, &qword_1EC4EC588, &qword_1CFB92050);
  }

  v39 = v6;
  v40 = v7;
  v36 = *(v17 + 32);
  v38 = v22;
  v36(v22, v15, v16);
  v37 = [v4 searchLatencyDictQueue];
  v24 = swift_allocObject();
  swift_unknownObjectWeakInit();
  (*(v17 + 16))(v20, v22, v16);
  v25 = (*(v17 + 80) + 28) & ~*(v17 + 80);
  v26 = (v18 + v25 + 7) & 0xFFFFFFFFFFFFFFF8;
  v27 = (v26 + 15) & 0xFFFFFFFFFFFFFFF8;
  v28 = swift_allocObject();
  *(v28 + 16) = v24;
  *(v28 + 24) = v41;
  v36((v28 + v25), v20, v16);
  v29 = v44;
  *(v28 + v26) = v43;
  *(v28 + v27) = v29;
  *(v28 + ((v27 + 15) & 0xFFFFFFFFFFFFFFF8)) = ObjectType;
  aBlock[4] = sub_1CFB6B068;
  aBlock[5] = v28;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1CFB623CC;
  aBlock[3] = &block_descriptor_0;
  v30 = _Block_copy(aBlock);

  v31 = v46;
  sub_1CFB8F9B0();
  v49 = MEMORY[0x1E69E7CC0];
  sub_1CFB6B23C(&qword_1EE04BD78, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4EC290, &qword_1CFB91EA8);
  sub_1CFB5DD2C(&unk_1EE04BD68, &unk_1EC4EC290, &qword_1CFB91EA8);
  v32 = v48;
  v33 = v39;
  sub_1CFB8FE50();
  v34 = v37;
  MEMORY[0x1D386D7F0](0, v31, v32, v30);
  _Block_release(v30);

  (*(v40 + 8))(v32, v33);
  (*(v47 + 8))(v31, v45);
  (*(v17 + 8))(v38, v16);
}

void sub_1CFB6A114(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_1CFB8F6F0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v14 = Strong;
    v37 = a5;
    v15 = [Strong startTimeDict];
    sub_1CFB5D38C(0, &qword_1EE04BCE8, 0x1E695DF00);
    v16 = sub_1CFB8FA40();

    if (*(v16 + 16) && (v17 = sub_1CFB8C994(a2), (v18 & 1) != 0))
    {
      v19 = *(*(v16 + 56) + 8 * v17);

      sub_1CFB8F6C0();
      v20 = sub_1CFB8F6B0();

      (*(v9 + 8))(v12, v8);
      if (v20)
      {

        return;
      }
    }

    else
    {
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EC578, &qword_1CFB92040);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1CFB92030;
    *(inited + 32) = 0xD000000000000014;
    *(inited + 40) = 0x80000001CFB93190;
    *(inited + 48) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedInt_];
    strcpy((inited + 56), "searchLatency");
    *(inited + 70) = -4864;
    sub_1CFB8F6A0();
    *(inited + 72) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
    strcpy((inited + 80), "searchLength");
    *(inited + 93) = 0;
    *(inited + 94) = -5120;
    *(inited + 96) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
    *(inited + 104) = 0xD000000000000012;
    *(inited + 112) = 0x80000001CFB931B0;
    v23 = objc_allocWithZone(MEMORY[0x1E696AD98]);
    *(inited + 120) = [v23 initWithInteger_];
    v24 = sub_1CFB6AEF4(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EC580, &qword_1CFB92048);
    swift_arrayDestroy();
    sub_1CFB690A4(v24);
    v26 = v25;

    v27 = [v14 searchLatencyDict];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EC5C8, &qword_1CFB92060);
    v28 = sub_1CFB8FA40();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v38 = v28;
    sub_1CFB8D87C(v26, a2, isUniquelyReferenced_nonNull_native);
    v30 = sub_1CFB8FA30();

    [v14 setSearchLatencyDict_];

    v31 = sub_1CFB8F690();
    v32 = [v14 startTimeDict];
    v33 = sub_1CFB8FA40();

    v34 = swift_isUniquelyReferenced_nonNull_native();
    v38 = v33;
    sub_1CFB8D734(v31, a2, v34);
    v35 = sub_1CFB8FA30();

    [v14 setStartTimeDict_];

    v36 = *&v14[OBJC_IVAR___CSSearchMetrics_logLatencySubject];

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4EC940, &qword_1CFB92070);
    sub_1CFB5DD2C(&unk_1EE04BD88, &unk_1EC4EC940, &qword_1CFB92070);
    sub_1CFB8F960();
  }
}

void sub_1CFB6A798()
{
  v1 = v0;
  v2 = sub_1CFB8FA10();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = (&v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v6 = [v1 searchLatencyDictQueue];
  (*(v3 + 104))(v6, *MEMORY[0x1E69E8020], v2);
  v7 = sub_1CFB8FA20();
  (*(v3 + 8))(v6, v2);
  if (v7)
  {
    v22 = v1;
    v8 = [v1 searchLatencyDict];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EC5C8, &qword_1CFB92060);
    v9 = sub_1CFB8FA40();

    v10 = 0;
    v11 = 1 << *(v9 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v9 + 64);
    v14 = (v11 + 63) >> 6;
    while (v13)
    {
      v15 = v10;
LABEL_10:
      v16 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
      v17 = *(*(v9 + 56) + ((v15 << 9) | (8 * v16)));

      v18 = [v22 analyticsLogger];
      v19 = sub_1CFB8FA80();
      sub_1CFB5D38C(0, &qword_1EE04C158, 0x1E69E58C0);
      v20 = sub_1CFB8FA30();

      [v18 logEvent:v19 withCoreAnalyticsDictionary:v20];
    }

    while (1)
    {
      v15 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v15 >= v14)
      {

        return;
      }

      v13 = *(v9 + 64 + 8 * v15);
      ++v10;
      if (v13)
      {
        v10 = v15;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1CFB6AB30(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1CFB8FE60() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      sub_1CFB900D0();

      sub_1CFB8FAC0();
      v13 = sub_1CFB900F0();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        if (v14 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v14 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v14)
      {
LABEL_10:
        v15 = *(a2 + 48);
        v16 = (v15 + 16 * v3);
        v17 = (v15 + 16 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
        }

        v18 = *(a2 + 56);
        v19 = (v18 + 8 * v3);
        v20 = (v18 + 8 * v6);
        if (v3 != v6 || v19 >= v20 + 1)
        {
          *v19 = *v20;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_1CFB6ACE0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EC5E0, &qword_1CFB92080);
  v3 = sub_1CFB8FFF0();
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  result = sub_1CFB8C994(v4);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:
    v16 = v5;
    return v3;
  }

  v8 = (a1 + 56);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v3[6] + 4 * result) = v4;
    *(v3[7] + 8 * result) = v5;
    v9 = v3[2];
    v10 = __OFADD__(v9, 1);
    v11 = v9 + 1;
    if (v10)
    {
      break;
    }

    v3[2] = v11;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v12 = v8 + 2;
    v4 = *(v8 - 2);
    v13 = *v8;
    v14 = v5;
    result = sub_1CFB8C994(v4);
    v8 = v12;
    v5 = v13;
    if (v15)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

void *sub_1CFB6ADE4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4ECBC0, &qword_1CFB92078);
  v3 = sub_1CFB8FFF0();
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = sub_1CFB8C994(v4);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v8 = v6;
  result = v5;
  v10 = (a1 + 56);
  while (1)
  {
    *(v3 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v8;
    *(v3[6] + 4 * v8) = v4;
    *(v3[7] + 8 * v8) = result;
    v11 = v3[2];
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      break;
    }

    v3[2] = v13;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v14 = v10 + 2;
    v4 = *(v10 - 2);
    v15 = *v10;

    v8 = sub_1CFB8C994(v4);
    v10 = v14;
    result = v15;
    if (v16)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1CFB6AEF4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4EC5F0, &qword_1CFB92090);
    v3 = sub_1CFB8FFF0();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_1CFB8C9DC(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t sub_1CFB6AFF8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EC588, &qword_1CFB92050);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1CFB6B068()
{
  v1 = *(sub_1CFB8F6F0() - 8);
  v2 = (*(v1 + 80) + 28) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + 16);
  v6 = *(v0 + 24);
  v7 = *(v0 + v3);
  v8 = *(v0 + v4);
  v9 = *(v0 + ((v4 + 15) & 0xFFFFFFFFFFFFFFF8));

  sub_1CFB6A114(v5, v6, v0 + v2, v7, v8);
}

unint64_t sub_1CFB6B128(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ECB20, &qword_1CFB92058);
    v3 = sub_1CFB8FFF0();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_1CFB8C9DC(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t sub_1CFB6B23C(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_1CFB6B2B4()
{
  v1 = OBJC_IVAR___MPSuggestionsSearchController____lazy_storage___searchManager;
  v2 = *&v0[OBJC_IVAR___MPSuggestionsSearchController____lazy_storage___searchManager];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR___MPSuggestionsSearchController____lazy_storage___searchManager];
  }

  else
  {
    v4 = [v0 callProviderManager];
    v5 = [objc_allocWithZone(MPSearchManager) initWithItemType:2 callProviderManager:v4];

    v6 = *&v0[v1];
    *&v0[v1] = v5;
    v3 = v5;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

uint64_t sub_1CFB6B5C0(uint64_t *a1, uint64_t (*a2)(uint64_t))
{
  v4 = *a1;
  swift_beginAccess();
  return a2(v2 + v4);
}

uint64_t sub_1CFB6B648(uint64_t a1, uint64_t *a2, void (*a3)(uint64_t, uint64_t), uint64_t (*a4)(uint64_t))
{
  v8 = *a2;
  swift_beginAccess();
  a3(v4 + v8, a1);
  return a4(a1);
}

void (*MPSuggestionsSearchController.detailsPresenter.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = OBJC_IVAR___MPSuggestionsSearchController_detailsPresenter;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_weakLoadStrong();
  return sub_1CFB6B754;
}

void sub_1CFB6B754(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 24);
  v5 = *(*a1 + 32) + *(*a1 + 40);
  swift_weakAssign();
  if (a2)
  {
    v6 = v3[3];

    swift_endAccess();
  }

  else
  {
    swift_endAccess();
  }

  free(v3);
}

void sub_1CFB6B864()
{
  v1 = *(v0 + OBJC_IVAR___MPSuggestionsSearchController_results);

  v3 = sub_1CFB8480C(v2);

  if (v3)
  {
    v4 = *(v0 + OBJC_IVAR___MPSuggestionsSearchController_suggestionsTableViewController);
    sub_1CFB5D38C(0, &unk_1EC4EC490, 0x1E6964EA8);
    oslog = sub_1CFB8FB20();

    [v4 setSuggestions_];
  }

  else
  {
    v5 = *(v0 + OBJC_IVAR___MPSuggestionsSearchController_suggestionsTableViewController);
    sub_1CFB5D38C(0, &unk_1EC4EC490, 0x1E6964EA8);
    v6 = sub_1CFB8FB20();
    [v5 setSuggestions_];

    if (qword_1EE04BDB8 != -1)
    {
      swift_once();
    }

    v7 = sub_1CFB8F7C0();
    __swift_project_value_buffer(v7, qword_1EE04C228);
    oslog = sub_1CFB8F7A0();
    v8 = sub_1CFB8FC90();
    if (os_log_type_enabled(oslog, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_1CFB5B000, oslog, v8, "SuggestionsSearchController: Failed to fetch Search Suggestions", v9, 2u);
      MEMORY[0x1D386E190](v9, -1, -1);
    }
  }
}

id sub_1CFB6BA30(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(a1 + *a3);

  v4 = sub_1CFB8FB20();

  return v4;
}

id sub_1CFB6BB70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *&v3[OBJC_IVAR___MPSuggestionsSearchController____lazy_storage___searchManager] = 0;
  *&v3[OBJC_IVAR___MPSuggestionsSearchController_RecentsSupportedSuggestionTypes] = &unk_1F4C63660;
  v7 = &v3[OBJC_IVAR___MPSuggestionsSearchController_searchText];
  *v7 = 0;
  *(v7 + 1) = 0;
  swift_unknownObjectWeakInit();
  *&v3[OBJC_IVAR___MPSuggestionsSearchController_sectionIndex] = 0x7FFFFFFFFFFFFFFFLL;
  v8 = &v3[OBJC_IVAR___MPSuggestionsSearchController_sectionTitle];
  *v8 = 0;
  *(v8 + 1) = 0xE000000000000000;
  *&v3[OBJC_IVAR___MPSuggestionsSearchController_sectionType] = 1;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_weakInit();
  v9 = MEMORY[0x1E69E7CC0];
  *&v3[OBJC_IVAR___MPSuggestionsSearchController_results] = MEMORY[0x1E69E7CC0];
  *&v3[OBJC_IVAR___MPSuggestionsSearchController_resultIDs] = v9;
  *&v3[OBJC_IVAR___MPSuggestionsSearchController_featureFlags] = a2;
  *&v3[OBJC_IVAR___MPSuggestionsSearchController_suggestionsTableViewController] = a1;
  *&v3[OBJC_IVAR___MPSuggestionsSearchController_callProviderManager] = a3;
  v11.receiver = v3;
  v11.super_class = MPSuggestionsSearchController;
  return objc_msgSendSuper2(&v11, sel_init);
}

uint64_t sub_1CFB6BD14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[2] = a8;
  v8[3] = v15;
  v8[4] = sub_1CFB8FBC0();
  v8[5] = sub_1CFB8FBB0();
  v12 = swift_task_alloc();
  v8[6] = v12;
  *v12 = v8;
  v12[1] = sub_1CFB6BDF4;

  return sub_1CFB6BF9C(a5, a6, a7);
}

uint64_t sub_1CFB6BDF4()
{
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 40);
  v3 = *(*v0 + 32);
  v7 = *v0;

  v5 = sub_1CFB8FB80();

  return MEMORY[0x1EEE6DFA0](sub_1CFB6BF30, v5, v4);
}

uint64_t sub_1CFB6BF30()
{
  v1 = v0[5];
  v2 = v0[2];
  v3 = v0[3];

  v2(v4);
  v5 = v0[1];

  return v5();
}

uint64_t sub_1CFB6BF9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[21] = a3;
  v4[22] = v3;
  v4[19] = a1;
  v4[20] = a2;
  sub_1CFB8FBC0();
  v4[23] = sub_1CFB8FBB0();
  v6 = sub_1CFB8FB80();
  v4[24] = v6;
  v4[25] = v5;

  return MEMORY[0x1EEE6DFA0](sub_1CFB6C038, v6, v5);
}

uint64_t sub_1CFB6C038()
{
  if (![*(v0[22] + OBJC_IVAR___MPSuggestionsSearchController_featureFlags) callHistorySearchEnabled] || !v0[20])
  {
    v7 = v0[23];

    goto LABEL_8;
  }

  v1 = v0[21];
  if (v1 >> 62)
  {
    if (v1 < 0)
    {
      v10 = v0[21];
    }

    if (sub_1CFB8FFB0())
    {
LABEL_5:
      v3 = v0[22];
      v2 = v0[23];

      v4 = sub_1CFB8FB20();
      [v3 setResults_];

      v5 = sub_1CFB8FB20();
      [v3 setResultIDs_];

      v6 = [v3 delegate];
      if (!v6)
      {
        goto LABEL_8;
      }

      goto LABEL_29;
    }
  }

  else if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_5;
  }

  v11 = v0[22];
  v12 = &v11[OBJC_IVAR___MPSuggestionsSearchController_searchText];
  v13 = *&v11[OBJC_IVAR___MPSuggestionsSearchController_searchText + 8];
  v14 = v0[20];
  if (v13)
  {
    v15 = *v12 == v0[19] && v13 == v14;
    if (v15 || (v16 = v0[20], v17 = *&v11[OBJC_IVAR___MPSuggestionsSearchController_searchText + 8], v18 = sub_1CFB90010(), v11 = v0[22], (v18 & 1) != 0))
    {
      v19 = v0[23];

      v6 = [v11 delegate];
      if (!v6)
      {
        goto LABEL_8;
      }

      goto LABEL_29;
    }

    v20 = v0[20];
  }

  else
  {
    v20 = v0[20];
  }

  v0[26] = v14;
  *v12 = v0[19];
  *(v12 + 1) = v20;

  v21 = *&v11[OBJC_IVAR___MPSuggestionsSearchController_suggestionsTableViewController];
  v22 = sub_1CFB8FA80();
  [v21 setSearchText_];

  if (sub_1CFB8FAD0() < 1)
  {
    v29 = v0[22];
    v28 = v0[23];

    v30 = sub_1CFB8FB20();
    [v29 setResults_];

    v31 = sub_1CFB8FB20();
    [v29 setResultIDs_];

    v6 = [v29 delegate];
    if (v6)
    {
LABEL_29:
      [v6 didCompleteSearchFor_];
      swift_unknownObjectRelease();
    }

LABEL_8:
    v8 = v0[1];

    return v8();
  }

  v23 = v0[22];
  v24 = v0[19];
  v25 = sub_1CFB6B2B4();
  v0[27] = v25;
  v26 = sub_1CFB8FA80();
  v0[28] = v26;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1CFB6C428;
  v27 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EC6E8, &qword_1CFB920B8);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1CFB6CF28;
  v0[13] = &block_descriptor_1;
  v0[14] = v27;
  [v25 searchSuggestionsWithText:v26 completion:v0 + 10];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1CFB6C428()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 232) = v3;
  v4 = *(v1 + 200);
  v5 = *(v1 + 192);
  if (v3)
  {
    v6 = sub_1CFB6CB98;
  }

  else
  {
    v6 = sub_1CFB6C558;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, v4);
}

uint64_t sub_1CFB6C558()
{
  v50 = v0;
  v2 = v0;
  v4 = v0[27];
  v3 = v0[28];
  v5 = v0[23];

  v6 = v0[18];

  if (qword_1EE04BDB8 != -1)
  {
    swift_once();
  }

  v7 = v0[26];
  v8 = sub_1CFB8F7C0();
  __swift_project_value_buffer(v8, qword_1EE04C228);

  v9 = sub_1CFB8F7A0();
  LOBYTE(v10) = sub_1CFB8FCB0();

  if (!os_log_type_enabled(v9, v10))
  {

    goto LABEL_8;
  }

  v11 = v0[26];
  v12 = v0[19];
  v13 = swift_slowAlloc();
  v1 = swift_slowAlloc();
  v49 = v1;
  *v13 = 136315394;
  *(v13 + 4) = sub_1CFB8C3D8(v12, v11, &v49);
  *(v13 + 12) = 2048;
  if (v6 >> 62)
  {
    goto LABEL_37;
  }

  for (i = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1CFB8FFB0())
  {
    *(v13 + 14) = i;

    _os_log_impl(&dword_1CFB5B000, v9, v10, "SuggestionsSearchController: Completed search for %s. Got %ld raw results", v13, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v1);
    MEMORY[0x1D386E190](v1, -1, -1);
    MEMORY[0x1D386E190](v13, -1, -1);
LABEL_8:

    v15 = v2[26];
    v16 = v2[22];
    v10 = sub_1CFB6D018(v6);

    v17 = sub_1CFB8F7A0();
    v18 = sub_1CFB8FCB0();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = v2[26];
      v20 = v2[19];
      v21 = swift_slowAlloc();
      v1 = swift_slowAlloc();
      v49 = v1;
      *v21 = 136315394;
      *(v21 + 4) = sub_1CFB8C3D8(v20, v19, &v49);
      *(v21 + 12) = 2048;
      v22 = v10 >> 62 ? sub_1CFB8FFB0() : *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
      *(v21 + 14) = v22;

      _os_log_impl(&dword_1CFB5B000, v17, v18, "SuggestionsSearchController: Completed search for %s. Got %ld filtered results", v21, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v1);
      MEMORY[0x1D386E190](v1, -1, -1);
      MEMORY[0x1D386E190](v21, -1, -1);
    }

    else
    {
    }

    v13 = v2[26];
    v6 = sub_1CFB6D2D0(v10);

    v23 = sub_1CFB8F7A0();
    v24 = sub_1CFB8FCB0();

    v25 = v6 >> 62;
    v26 = v6;
    if (os_log_type_enabled(v23, v24))
    {
      v1 = v2[26];
      v27 = v2[19];
      v10 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v49 = v13;
      *v10 = 136315394;
      *(v10 + 4) = sub_1CFB8C3D8(v27, v1, &v49);
      *(v10 + 12) = 2048;
      if (v25)
      {
        v29 = sub_1CFB8FFB0();
        v28 = v6;
      }

      else
      {
        v28 = v6;
        v29 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v10 + 14) = v29;
      v6 = v28;

      _os_log_impl(&dword_1CFB5B000, v23, v24, "SuggestionsSearchController: Completed search for %s. Got %ld unique filtered", v10, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v13);
      MEMORY[0x1D386E190](v13, -1, -1);
      MEMORY[0x1D386E190](v10, -1, -1);
    }

    else
    {
    }

    v30 = v25 ? sub_1CFB8FFB0() : *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v30)
    {
      break;
    }

    v49 = MEMORY[0x1E69E7CC0];
    v9 = &v49;
    sub_1CFB8E0EC(0, v30 & ~(v30 >> 63), 0);
    if ((v30 & 0x8000000000000000) == 0)
    {
      v31 = 0;
      v32 = v49;
      v33 = v6;
      do
      {
        if ((v6 & 0xC000000000000001) != 0)
        {
          v34 = MEMORY[0x1D386D910](v31, v33);
        }

        else
        {
          v34 = *(v33 + 8 * v31 + 32);
        }

        v35 = v34;
        v36 = [v34 uniqueIdentifier];
        v37 = sub_1CFB8FA90();
        v39 = v38;

        v49 = v32;
        v41 = *(v32 + 16);
        v40 = *(v32 + 24);
        if (v41 >= v40 >> 1)
        {
          sub_1CFB8E0EC((v40 > 1), v41 + 1, 1);
          v32 = v49;
        }

        ++v31;
        *(v32 + 16) = v41 + 1;
        v42 = v32 + 16 * v41;
        *(v42 + 32) = v37;
        *(v42 + 40) = v39;
        v33 = v26;
      }

      while (v30 != v31);
      v6 = v26;
      break;
    }

    __break(1u);
LABEL_37:
    ;
  }

  v43 = v2[22];
  v44 = sub_1CFB8FB20();

  [v43 setResultIDs_];

  sub_1CFB6D584(v6);

  v45 = sub_1CFB8FB20();

  [v43 setResults_];

  v46 = [v43 delegate];
  if (v46)
  {
    [v46 didCompleteSearchFor_];
    swift_unknownObjectRelease();
  }

  v47 = v2[1];

  return v47();
}

uint64_t sub_1CFB6CB98()
{
  v1 = v0[28];
  v2 = v0[29];
  v3 = v0[27];
  v4 = v0[23];

  swift_willThrow();

  if (qword_1EE04BDB8 != -1)
  {
    swift_once();
  }

  v5 = v0[29];
  v6 = sub_1CFB8F7C0();
  __swift_project_value_buffer(v6, qword_1EE04C228);
  v7 = v5;
  v8 = sub_1CFB8F7A0();
  v9 = sub_1CFB8FC90();

  v10 = os_log_type_enabled(v8, v9);
  v11 = v0[29];
  if (v10)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v12 = 138412290;
    v14 = v11;
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 4) = v15;
    *v13 = v15;
    _os_log_impl(&dword_1CFB5B000, v8, v9, "SuggestionsSearchController: Error fetching results: %@", v12, 0xCu);
    sub_1CFB6E10C(v13);
    MEMORY[0x1D386E190](v13, -1, -1);
    MEMORY[0x1D386E190](v12, -1, -1);
  }

  else
  {
  }

  v16 = v0[1];

  return v16();
}

uint64_t sub_1CFB6CF28(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *__swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EC8C0, &qword_1CFB923F0);
    v5 = swift_allocError();
    *v6 = a3;
    v7 = a3;

    return MEMORY[0x1EEE6DEE8](v4, v5);
  }

  else
  {
    sub_1CFB5D38C(0, &unk_1EC4EC490, 0x1E6964EA8);
    **(*(v4 + 64) + 40) = sub_1CFB8FB30();

    return MEMORY[0x1EEE6DEE0](v4);
  }
}

uint64_t sub_1CFB6D018(unint64_t a1)
{
  v2 = sub_1CFB8F610();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v32 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = MEMORY[0x1E69E7CC0];
  if (a1 >> 62)
  {
    goto LABEL_31;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1CFB8FFB0())
  {
    v6 = 0;
    v30 = a1;
    v31 = (v34 + OBJC_IVAR___MPSuggestionsSearchController_searchText);
    v33 = OBJC_IVAR___MPSuggestionsSearchController_RecentsSupportedSuggestionTypes;
    v7 = a1 & 0xC000000000000001;
    v8 = a1 & 0xFFFFFFFFFFFFFF8;
    a1 += 32;
    while (1)
    {
      if (v7)
      {
        v9 = MEMORY[0x1D386D910](v6, v30);
      }

      else
      {
        if (v6 >= *(v8 + 16))
        {
          goto LABEL_30;
        }

        v9 = *(a1 + 8 * v6);
      }

      v10 = v9;
      if (__OFADD__(v6++, 1))
      {
        break;
      }

      v12 = [v9 currentToken];
      if (v12)
      {
        v13 = v12;
        v14 = [v12 tokenKind];

        v15 = *(v34 + v33);
        v16 = *(v15 + 16);
        v17 = (v15 + 32);
        do
        {
          v18 = v16;
          if (!v16)
          {
            if (v14)
            {
              goto LABEL_5;
            }

            goto LABEL_15;
          }

          v19 = *v17++;
          --v16;
        }

        while (v19 != v14);
        if (v14)
        {
          goto LABEL_25;
        }

LABEL_15:
        sub_1CFB5D38C(0, &qword_1EC4EC700, 0x1E696AAB0);
        sub_1CFB8FC80();
        v20 = sub_1CFB8FDD0();
        v21 = [v20 string];

        v22 = sub_1CFB8FA90();
        v24 = v23;

        v25 = v31[1];
        if (v25)
        {
          if (v22 == *v31 && v25 == v24)
          {

            if (!v18)
            {
              goto LABEL_5;
            }
          }

          else
          {
            v27 = sub_1CFB90010();

            if (!v18 && (v27 & 1) != 0)
            {
              goto LABEL_5;
            }
          }
        }

        else
        {
        }

LABEL_25:
        sub_1CFB8FF00();
        v28 = *(v35 + 16);
        sub_1CFB8FF30();
        sub_1CFB8FF40();
        sub_1CFB8FF10();
        if (v6 != i)
        {
          continue;
        }

        return v35;
      }

LABEL_5:

      if (v6 == i)
      {
        return v35;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    ;
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t sub_1CFB6D2D0(unint64_t a1)
{
  v33 = MEMORY[0x1E69E7CC0];
  v32 = MEMORY[0x1E69E7CD0];
  if (a1 >> 62)
  {
    goto LABEL_26;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; a1 = v25)
  {
    v2 = 0;
    v3 = a1 & 0xC000000000000001;
    v28 = a1 & 0xFFFFFFFFFFFFFF8;
    v29 = a1;
    v27 = a1 + 32;
    v30 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      if (v3)
      {
        a1 = MEMORY[0x1D386D910](v2, v29);
      }

      else
      {
        if (v2 >= *(v28 + 16))
        {
          goto LABEL_25;
        }

        a1 = *(v27 + 8 * v2);
      }

      v4 = a1;
      if (__OFADD__(v2++, 1))
      {
        break;
      }

      v6 = v32;
      v7 = [a1 uniqueIdentifier];
      v8 = sub_1CFB8FA90();
      v10 = v9;

      if (*(v6 + 16) && (v11 = *(v6 + 40), sub_1CFB900D0(), sub_1CFB8FAC0(), v12 = sub_1CFB900F0(), v13 = -1 << *(v6 + 32), v14 = v12 & ~v13, ((*(v6 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) != 0))
      {
        v15 = ~v13;
        while (1)
        {
          v16 = (*(v6 + 48) + 16 * v14);
          v17 = *v16 == v8 && v16[1] == v10;
          if (v17 || (sub_1CFB90010() & 1) != 0)
          {
            break;
          }

          v14 = (v14 + 1) & v15;
          if (((*(v6 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
          {
            goto LABEL_20;
          }
        }
      }

      else
      {
LABEL_20:

        v18 = v4;
        MEMORY[0x1D386D560]();
        if (*((v33 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v33 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v23 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_1CFB8FB50();
        }

        sub_1CFB8FB70();
        v30 = v33;
        v19 = [v18 uniqueIdentifier];
        v20 = sub_1CFB8FA90();
        v22 = v21;

        sub_1CFB7DEC0(&v31, v20, v22);
      }

      if (v2 == i)
      {
        v24 = v30;
        goto LABEL_28;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    v25 = a1;
    i = sub_1CFB8FFB0();
  }

  v24 = MEMORY[0x1E69E7CC0];
LABEL_28:

  return v24;
}

char *sub_1CFB6D584(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_1CFB8FFB0();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x1E69E7CC0];
  if (!v2)
  {
    return v3;
  }

  v13 = MEMORY[0x1E69E7CC0];
  result = sub_1CFB8E10C(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v13;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v2; ++i)
      {
        MEMORY[0x1D386D910](i, a1);
        sub_1CFB5D38C(0, &unk_1EC4EC490, 0x1E6964EA8);
        swift_dynamicCast();
        v13 = v3;
        v7 = *(v3 + 16);
        v6 = *(v3 + 24);
        if (v7 >= v6 >> 1)
        {
          sub_1CFB8E10C((v6 > 1), v7 + 1, 1);
          v3 = v13;
        }

        *(v3 + 16) = v7 + 1;
        sub_1CFB66A0C(v12, (v3 + 32 * v7 + 32));
      }
    }

    else
    {
      v8 = (a1 + 32);
      sub_1CFB5D38C(0, &unk_1EC4EC490, 0x1E6964EA8);
      do
      {
        v9 = *v8;
        swift_dynamicCast();
        v13 = v3;
        v11 = *(v3 + 16);
        v10 = *(v3 + 24);
        if (v11 >= v10 >> 1)
        {
          sub_1CFB8E10C((v10 > 1), v11 + 1, 1);
          v3 = v13;
        }

        *(v3 + 16) = v11 + 1;
        sub_1CFB66A0C(v12, (v3 + 32 * v11 + 32));
        ++v8;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

void sub_1CFB6D780()
{
  if ([*(v0 + OBJC_IVAR___MPSuggestionsSearchController_featureFlags) callHistorySearchEnabled])
  {
    if (qword_1EE04BDB8 != -1)
    {
      swift_once();
    }

    v1 = sub_1CFB8F7C0();
    __swift_project_value_buffer(v1, qword_1EE04C228);
    v2 = sub_1CFB8F7A0();
    v3 = sub_1CFB8FCB0();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_1CFB5B000, v2, v3, "SuggestionsSearchController: cancelling previous search requests", v4, 2u);
      MEMORY[0x1D386E190](v4, -1, -1);
    }

    v5 = sub_1CFB6B2B4();
    MPSearchManager.cancelPreviousSearch()();
  }
}

id MPSuggestionsSearchController.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

uint64_t sub_1CFB6DFC4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v11 = v1[8];
  v10 = v1[9];
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_1CFB66AE0;

  return sub_1CFB6BD14(a1, v4, v5, v6, v7, v8, v9, v11);
}

uint64_t sub_1CFB6E0B0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1CFB6E10C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4EC6F0, &unk_1CFB920C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *__swift_project_boxed_opaque_existential_0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

id sub_1CFB6E1E4()
{
  v1 = OBJC_IVAR____TtC11CallsSearch21ContactSearchViewCell____lazy_storage___textContainer;
  v2 = *&v0[OBJC_IVAR____TtC11CallsSearch21ContactSearchViewCell____lazy_storage___textContainer];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC11CallsSearch21ContactSearchViewCell____lazy_storage___textContainer];
  }

  else
  {
    v4 = sub_1CFB6E248(v0);
    v5 = *&v0[v1];
    *&v0[v1] = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_1CFB6E248(char *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4EC810, &qword_1CFB92180);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1CFB920D0;
  v3 = *&a1[OBJC_IVAR____TtC11CallsSearch21ContactSearchViewCell_titleLabel];
  v4 = *&a1[OBJC_IVAR____TtC11CallsSearch21ContactSearchViewCell_detailLabel];
  *(v2 + 32) = v3;
  *(v2 + 40) = v4;
  v5 = objc_allocWithZone(MEMORY[0x1E69DCF90]);
  sub_1CFB5D38C(0, &qword_1EC4EC718, 0x1E69DD250);
  v6 = v3;
  v7 = v4;
  v8 = sub_1CFB8FB20();

  v9 = [v5 initWithArrangedSubviews_];

  [v9 setAxis_];
  [v9 setSpacing_];
  [v9 setAlignment_];
  [v9 setDistribution_];
  [v9 setTranslatesAutoresizingMaskIntoConstraints_];
  v10 = [a1 contentView];
  [v10 addSubview_];

  return v9;
}

uint64_t sub_1CFB6E3E4()
{
  v1 = OBJC_IVAR____TtC11CallsSearch21ContactSearchViewCell____lazy_storage___commonConstraints;
  if (*&v0[OBJC_IVAR____TtC11CallsSearch21ContactSearchViewCell____lazy_storage___commonConstraints])
  {
    v2 = *&v0[OBJC_IVAR____TtC11CallsSearch21ContactSearchViewCell____lazy_storage___commonConstraints];
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4EC810, &qword_1CFB92180);
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_1CFB920E0;
    v3 = *&v0[OBJC_IVAR____TtC11CallsSearch21ContactSearchViewCell_avatarView];
    v4 = [v3 topAnchor];
    v5 = [v0 contentView];
    v6 = [v5 topAnchor];

    v7 = [v4 constraintGreaterThanOrEqualToAnchor:v6 constant:12.0];
    *(v2 + 32) = v7;
    v8 = [v3 heightAnchor];
    v9 = [v8 constraintEqualToConstant_];

    *(v2 + 40) = v9;
    v10 = sub_1CFB6E1E4();
    v11 = [v10 topAnchor];

    v12 = [v0 contentView];
    v13 = [v12 topAnchor];

    v14 = [v11 constraintEqualToAnchor:v13 constant:12.0];
    *(v2 + 48) = v14;
    v15 = OBJC_IVAR____TtC11CallsSearch21ContactSearchViewCell____lazy_storage___textContainer;
    v16 = [*&v0[OBJC_IVAR____TtC11CallsSearch21ContactSearchViewCell____lazy_storage___textContainer] bottomAnchor];
    v17 = [v0 contentView];
    v18 = [v17 bottomAnchor];

    v19 = [v16 constraintEqualToAnchor:v18 constant:-12.0];
    *(v2 + 56) = v19;
    v20 = [*&v0[v15] trailingAnchor];
    v21 = *&v0[OBJC_IVAR____TtC11CallsSearch21ContactSearchViewCell_callButton];
    v22 = [v21 leadingAnchor];
    v23 = [v20 constraintLessThanOrEqualToAnchor:v22 constant:-16.0];

    *(v2 + 64) = v23;
    v24 = [v21 centerYAnchor];
    v25 = [v0 contentView];
    v26 = [v25 centerYAnchor];

    v27 = [v24 constraintEqualToAnchor_];
    *(v2 + 72) = v27;
    v28 = [v21 trailingAnchor];
    v29 = [v0 contentView];
    v30 = [v29 layoutMarginsGuide];

    v31 = [v30 trailingAnchor];
    v32 = [v28 constraintEqualToAnchor_];

    *(v2 + 80) = v32;
    v33 = [*&v0[OBJC_IVAR____TtC11CallsSearch21ContactSearchViewCell_videoButton] centerYAnchor];
    v34 = [v0 contentView];
    v35 = [v34 centerYAnchor];

    v36 = [v33 constraintEqualToAnchor_];
    *(v2 + 88) = v36;
    v37 = *&v0[v1];
    *&v0[v1] = v2;
  }

  return v2;
}

uint64_t sub_1CFB6E858()
{
  v1 = OBJC_IVAR____TtC11CallsSearch21ContactSearchViewCell____lazy_storage___axConstraints;
  if (*&v0[OBJC_IVAR____TtC11CallsSearch21ContactSearchViewCell____lazy_storage___axConstraints])
  {
    v2 = *&v0[OBJC_IVAR____TtC11CallsSearch21ContactSearchViewCell____lazy_storage___axConstraints];
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4EC810, &qword_1CFB92180);
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_1CFB920F0;
    v3 = sub_1CFB6E1E4();
    v4 = [v3 leadingAnchor];

    v5 = [v0 contentView];
    v6 = [v5 layoutMarginsGuide];

    v7 = [v6 leadingAnchor];
    v8 = [v4 constraintEqualToAnchor_];

    *(v2 + 32) = v8;
    v9 = *&v0[v1];
    *&v0[v1] = v2;
  }

  return v2;
}

uint64_t sub_1CFB6E99C()
{
  v1 = OBJC_IVAR____TtC11CallsSearch21ContactSearchViewCell____lazy_storage___nonAXConstraints;
  if (*&v0[OBJC_IVAR____TtC11CallsSearch21ContactSearchViewCell____lazy_storage___nonAXConstraints])
  {
    v2 = *&v0[OBJC_IVAR____TtC11CallsSearch21ContactSearchViewCell____lazy_storage___nonAXConstraints];
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4EC810, &qword_1CFB92180);
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_1CFB91E70;
    v3 = *&v0[OBJC_IVAR____TtC11CallsSearch21ContactSearchViewCell_avatarView];
    v4 = [v3 leadingAnchor];
    v5 = [v0 contentView];
    v6 = [v5 layoutMarginsGuide];

    v7 = [v6 leadingAnchor];
    v8 = [v4 constraintEqualToAnchor_];

    *(v2 + 32) = v8;
    v9 = [v3 widthAnchor];
    v10 = [v9 constraintEqualToConstant_];

    *(v2 + 40) = v10;
    v11 = [v3 centerYAnchor];
    v12 = [v0 contentView];
    v13 = [v12 centerYAnchor];

    v14 = [v11 constraintEqualToAnchor_];
    *(v2 + 48) = v14;
    v15 = sub_1CFB6E1E4();
    v16 = [v15 leadingAnchor];

    v17 = [v3 trailingAnchor];
    v18 = [v16 constraintEqualToAnchor:v17 constant:10.0];

    *(v2 + 56) = v18;
    v19 = *&v0[v1];
    *&v0[v1] = v2;
  }

  return v2;
}

uint64_t sub_1CFB6EC14()
{
  v1 = OBJC_IVAR____TtC11CallsSearch21ContactSearchViewCell____lazy_storage___videoButtonVisibleConstraints;
  if (*(v0 + OBJC_IVAR____TtC11CallsSearch21ContactSearchViewCell____lazy_storage___videoButtonVisibleConstraints))
  {
    v2 = *(v0 + OBJC_IVAR____TtC11CallsSearch21ContactSearchViewCell____lazy_storage___videoButtonVisibleConstraints);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4EC810, &qword_1CFB92180);
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_1CFB920D0;
    v3 = sub_1CFB6E1E4();
    v4 = [v3 trailingAnchor];

    v5 = *(v0 + OBJC_IVAR____TtC11CallsSearch21ContactSearchViewCell_videoButton);
    v6 = [v5 leadingAnchor];
    v7 = [v4 constraintLessThanOrEqualToAnchor:v6 constant:-16.0];

    *(v2 + 32) = v7;
    v8 = [v5 trailingAnchor];
    v9 = [*(v0 + OBJC_IVAR____TtC11CallsSearch21ContactSearchViewCell_callButton) leadingAnchor];
    v10 = [v8 constraintEqualToAnchor:v9 constant:-16.0];

    *(v2 + 40) = v10;
    v11 = *(v0 + v1);
    *(v0 + v1) = v2;
  }

  return v2;
}

id sub_1CFB6EDA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  sub_1CFB8F7B0();
  v7 = OBJC_IVAR____TtC11CallsSearch21ContactSearchViewCell_contactSummarizer;
  *&v3[v7] = [objc_allocWithZone(MEMORY[0x1E695CDC0]) init];
  v8 = OBJC_IVAR____TtC11CallsSearch21ContactSearchViewCell_avatarViewControllerSettings;
  v9 = [objc_opt_self() sharedInstance];
  v10 = [v9 contactStore];

  v11 = [objc_opt_self() settingsWithContactStore:v10 threeDTouchEnabled:0];
  *&v3[v8] = v11;
  v12 = OBJC_IVAR____TtC11CallsSearch21ContactSearchViewCell_titleLabel;
  *&v3[v12] = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  v13 = OBJC_IVAR____TtC11CallsSearch21ContactSearchViewCell_detailLabel;
  *&v3[v13] = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  v14 = &v3[OBJC_IVAR____TtC11CallsSearch21ContactSearchViewCell_searchType];
  *v14 = 0;
  v14[8] = 1;
  v15 = &v3[OBJC_IVAR____TtC11CallsSearch21ContactSearchViewCell_searchText];
  *v15 = 0;
  *(v15 + 1) = 0;
  *&v3[OBJC_IVAR____TtC11CallsSearch21ContactSearchViewCell____lazy_storage___textContainer] = 0;
  v16 = OBJC_IVAR____TtC11CallsSearch21ContactSearchViewCell_callButton;
  *&v3[v16] = [objc_allocWithZone(MEMORY[0x1E69D8988]) init];
  v17 = OBJC_IVAR____TtC11CallsSearch21ContactSearchViewCell_videoButton;
  *&v3[v17] = [objc_allocWithZone(MEMORY[0x1E69D8988]) init];
  v18 = &v3[OBJC_IVAR____TtC11CallsSearch21ContactSearchViewCell_callProviderManager];
  *v18 = 0;
  *(v18 + 1) = 0;
  v19 = &v3[OBJC_IVAR____TtC11CallsSearch21ContactSearchViewCell_senderIdentityProvider];
  *v19 = 0;
  *(v19 + 1) = 0;
  *&v3[OBJC_IVAR____TtC11CallsSearch21ContactSearchViewCell____lazy_storage___commonConstraints] = 0;
  *&v3[OBJC_IVAR____TtC11CallsSearch21ContactSearchViewCell____lazy_storage___axConstraints] = 0;
  *&v3[OBJC_IVAR____TtC11CallsSearch21ContactSearchViewCell____lazy_storage___nonAXConstraints] = 0;
  *&v3[OBJC_IVAR____TtC11CallsSearch21ContactSearchViewCell____lazy_storage___videoButtonVisibleConstraints] = 0;
  v20 = OBJC_IVAR____TtC11CallsSearch21ContactSearchViewCell_contact;
  *&v3[v20] = [objc_allocWithZone(MEMORY[0x1E695CD58]) init];
  *&v3[OBJC_IVAR____TtC11CallsSearch21ContactSearchViewCell_matchedPhoneNumber] = 0;
  v21 = &v3[OBJC_IVAR____TtC11CallsSearch21ContactSearchViewCell_videoCapableHandle];
  *v21 = 0;
  *(v21 + 1) = 0;
  *&v3[OBJC_IVAR____TtC11CallsSearch21ContactSearchViewCell_idsStatusSubscription] = 0;
  v22 = [objc_allocWithZone(MEMORY[0x1E695D0C8]) initWithSettings_];
  *&v3[OBJC_IVAR____TtC11CallsSearch21ContactSearchViewCell_avatarViewController] = v22;
  v23 = [v22 view];
  *&v3[OBJC_IVAR____TtC11CallsSearch21ContactSearchViewCell_avatarView] = v23;
  if (a3)
  {
    v24 = sub_1CFB8FA80();
  }

  else
  {
    v24 = 0;
  }

  v32.receiver = v3;
  v32.super_class = ObjectType;
  v25 = objc_msgSendSuper2(&v32, sel_initWithStyle_reuseIdentifier_, a1, v24);

  v26 = v25;
  sub_1CFB6F1C8();
  v27 = objc_opt_self();
  sub_1CFB6E3E4();
  sub_1CFB5D38C(0, &qword_1EE04BD00, 0x1E696ACD8);
  v28 = sub_1CFB8FB20();

  [v27 activateConstraints_];

  [v26 setPreservesSuperviewLayoutMargins_];
  v29 = [v26 contentView];
  [v29 setPreservesSuperviewLayoutMargins_];

  v30 = [objc_opt_self() defaultCenter];
  [v30 addObserver:v26 selector:sel_handleContentSizeCategoryDidChange_ name:*MEMORY[0x1E69DDC48] object:0];

  return v26;
}

void sub_1CFB6F1C8()
{
  v1 = [v0 contentView];
  [v1 setClipsToBounds_];

  v2 = *&v0[OBJC_IVAR____TtC11CallsSearch21ContactSearchViewCell_avatarView];
  [v2 setTranslatesAutoresizingMaskIntoConstraints_];
  v3 = [v0 &selRef_tableView_titleForSwipeAccessoryButtonForRowAtIndexPath_];
  [v3 addSubview_];

  v4 = *&v0[OBJC_IVAR____TtC11CallsSearch21ContactSearchViewCell_titleLabel];
  v5 = objc_opt_self();
  v6 = [v5 telephonyUIBodyShortEmphasizedFont];
  [v4 setFont_];

  [v4 &off_1E83C95B8 + 2];
  [v4 setLineBreakMode_];
  v7 = [v0 &selRef_tableView_titleForSwipeAccessoryButtonForRowAtIndexPath_];
  [v7 &off_1E83C97F8];

  v8 = *&v0[OBJC_IVAR____TtC11CallsSearch21ContactSearchViewCell_detailLabel];
  v9 = [v5 telephonyUISubheadlineShortFont];
  [v8 setFont_];

  [v8 &off_1E83C95B8 + 2];
  v10 = [v0 &selRef_tableView_titleForSwipeAccessoryButtonForRowAtIndexPath_];
  [v10 &off_1E83C97F8];

  v11 = sub_1CFB8FA80();
  v12 = objc_opt_self();
  v13 = [v12 systemImageNamed_];

  v14 = *&v0[OBJC_IVAR____TtC11CallsSearch21ContactSearchViewCell_callButton];
  [v14 &off_1E83C95B8 + 2];
  [v14 configureForImage_];
  [v14 addTarget:v0 action:sel_callButtonTapped forControlEvents:64];
  LODWORD(v15) = 1148846080;
  [v14 setContentCompressionResistancePriority:0 forAxis:v15];
  v16 = [v0 &selRef_tableView_titleForSwipeAccessoryButtonForRowAtIndexPath_];
  [v16 &off_1E83C97F8];

  v17 = sub_1CFB8FA80();
  v23 = [v12 systemImageNamed_];

  v18 = *&v0[OBJC_IVAR____TtC11CallsSearch21ContactSearchViewCell_videoButton];
  [v18 setTranslatesAutoresizingMaskIntoConstraints_];
  [v18 configureForImage_];
  [v18 addTarget:v0 action:sel_videoButtonTapped forControlEvents:64];
  LODWORD(v19) = 1148846080;
  [v18 setContentCompressionResistancePriority:0 forAxis:v19];
  [v18 setHidden_];
  v20 = [v0 contentView];
  [v20 &off_1E83C97F8];

  v21 = [v0 traitCollection];
  v22 = [v21 preferredContentSizeCategory];

  LOBYTE(v21) = sub_1CFB8FDE0();
  [v2 setHidden_];
  sub_1CFB6F71C();
}

Swift::Void __swiftcall ContactSearchViewCell.prepareForReuse()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v2, sel_prepareForReuse);
  v1 = *&v0[OBJC_IVAR____TtC11CallsSearch21ContactSearchViewCell_idsStatusSubscription];
  *&v0[OBJC_IVAR____TtC11CallsSearch21ContactSearchViewCell_idsStatusSubscription] = 0;
}

void sub_1CFB6F71C()
{
  v1 = [v0 traitCollection];
  v2 = [v1 preferredContentSizeCategory];

  v3 = sub_1CFB8FDE0();
  v4 = *&v0[OBJC_IVAR____TtC11CallsSearch21ContactSearchViewCell_titleLabel];
  if (v3)
  {
    [*&v0[OBJC_IVAR____TtC11CallsSearch21ContactSearchViewCell_titleLabel] setNumberOfLines_];
    v5 = objc_opt_self();
    sub_1CFB6E858();
    sub_1CFB5D38C(0, &qword_1EE04BD00, 0x1E696ACD8);
    v6 = sub_1CFB8FB20();

    [v5 activateConstraints_];

    sub_1CFB6E99C();
  }

  else
  {
    v7 = [v0 traitCollection];
    v8 = [v7 preferredContentSizeCategoryAllowsMultilineTitleForDoubleLineCells];

    if (v8)
    {
      v9 = 0;
    }

    else
    {
      v9 = 2;
    }

    [v4 setNumberOfLines_];
    v5 = objc_opt_self();
    sub_1CFB6E99C();
    sub_1CFB5D38C(0, &qword_1EE04BD00, 0x1E696ACD8);
    v10 = sub_1CFB8FB20();

    [v5 activateConstraints_];

    sub_1CFB6E858();
  }

  v11 = sub_1CFB8FB20();

  [v5 deactivateConstraints_];
}

void sub_1CFB6F954(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v11 = [a1 contact];
  v12 = OBJC_IVAR____TtC11CallsSearch21ContactSearchViewCell_contact;
  v13 = *(v6 + OBJC_IVAR____TtC11CallsSearch21ContactSearchViewCell_contact);
  *(v6 + OBJC_IVAR____TtC11CallsSearch21ContactSearchViewCell_contact) = v11;

  v14 = OBJC_IVAR____TtC11CallsSearch21ContactSearchViewCell_matchedPhoneNumber;
  v15 = *(v6 + OBJC_IVAR____TtC11CallsSearch21ContactSearchViewCell_matchedPhoneNumber);
  *(v6 + OBJC_IVAR____TtC11CallsSearch21ContactSearchViewCell_matchedPhoneNumber) = 0;

  v16 = v6 + OBJC_IVAR____TtC11CallsSearch21ContactSearchViewCell_searchType;
  *v16 = a5;
  *(v16 + 8) = 0;
  v17 = (v6 + OBJC_IVAR____TtC11CallsSearch21ContactSearchViewCell_searchText);
  v18 = *(v6 + OBJC_IVAR____TtC11CallsSearch21ContactSearchViewCell_searchText + 8);
  *v17 = a2;
  v17[1] = a3;

  v19 = [a1 preferredPhoneNumber];
  v20 = *(v6 + v14);
  *(v6 + v14) = v19;

  v21 = *(v6 + OBJC_IVAR____TtC11CallsSearch21ContactSearchViewCell_titleLabel);
  v22 = [objc_opt_self() stringFromContact:*(v6 + v12) style:0];
  [v21 setText_];

  sub_1CFB6FC78(a1);
  if (sub_1CFB8FAD0())
  {
    v23 = *(v6 + OBJC_IVAR____TtC11CallsSearch21ContactSearchViewCell_detailLabel);
    [v23 setHidden_];
    v24 = sub_1CFB8FA80();

    [v23 setText_];
  }

  else
  {

    [*(v6 + OBJC_IVAR____TtC11CallsSearch21ContactSearchViewCell_detailLabel) setHidden_];
  }

  v25 = *(v6 + OBJC_IVAR____TtC11CallsSearch21ContactSearchViewCell_avatarViewController);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4EC810, &qword_1CFB92180);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_1CFB920F0;
  v27 = *(v6 + v12);
  *(v26 + 32) = v27;
  sub_1CFB5D38C(0, &qword_1EC4EC820, 0x1E695CD58);
  v28 = v27;
  v29 = sub_1CFB8FB20();

  [v25 setContacts_];

  sub_1CFB7002C();
  if ((v30 & 1) == 0)
  {
    v31 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v32 = swift_allocObject();
    *(v32 + 16) = sub_1CFB71A4C;
    *(v32 + 24) = v31;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EC708, &qword_1CFB92188);
    sub_1CFB71A7C();
    v33 = sub_1CFB8F990();

    v34 = *(v6 + OBJC_IVAR____TtC11CallsSearch21ContactSearchViewCell_idsStatusSubscription);
    *(v6 + OBJC_IVAR____TtC11CallsSearch21ContactSearchViewCell_idsStatusSubscription) = v33;
  }
}

uint64_t sub_1CFB6FC78(void *a1)
{
  v3 = [a1 contact];
  v4 = [a1 matchInfo];
  v5 = v4;
  if (v4 && (v6 = [v4 matchedProperties]) != 0)
  {
    v7 = v6;
    v8 = sub_1CFB8FA40();

    v9 = objc_opt_self();

    v10 = sub_1CFB8FA30();
    v11 = [v9 matchedProperties:v10 contains:*MEMORY[0x1E695C310]];

    if (v11)
    {
      swift_bridgeObjectRelease_n();
      v12 = [v3 nickname];
LABEL_20:
      v29 = v12;
      v16 = sub_1CFB8FA90();

      return v16;
    }

    v27 = sub_1CFB8FA30();

    v28 = [v9 matchedProperties:v27 contains:*MEMORY[0x1E695C328]];

    if (v28)
    {

      v12 = [v3 organizationName];
      goto LABEL_20;
    }
  }

  else
  {
    v8 = 0;
  }

  v13 = [*(v1 + OBJC_IVAR____TtC11CallsSearch21ContactSearchViewCell_contactSummarizer) summaryForContact:v3 matchInfo:v5];
  if (v13)
  {
    v14 = v13;
    v15 = [v13 string];
    v16 = sub_1CFB8FA90();
    v18 = v17;
  }

  else
  {
    v16 = 0;
    v18 = 0xE000000000000000;
  }

  v19 = HIBYTE(v18) & 0xF;
  if ((v18 & 0x2000000000000000) == 0)
  {
    v19 = v16 & 0xFFFFFFFFFFFFLL;
  }

  if (!v19)
  {
    if (v8)
    {
      v20 = objc_opt_self();
      v21 = sub_1CFB8FA30();

      v22 = [v20 matchedProperties:v21 contains:*MEMORY[0x1E695C330]];

      if (v22)
      {
        v23 = *(v1 + OBJC_IVAR____TtC11CallsSearch21ContactSearchViewCell_matchedPhoneNumber);
        if (v23)
        {
          v24 = v23;

          v25 = [v24 value];
          v26 = [v25 formattedStringValue];

          if (v26)
          {
            v16 = sub_1CFB8FA90();

            return v16;
          }

          v30 = [v24 value];
          v31 = [v30 stringValue];

          v16 = sub_1CFB8FA90();
        }
      }
    }

    return v16;
  }

  return v16;
}

void sub_1CFB7002C()
{
  v1 = v0;
  v46 = *(v0 + OBJC_IVAR____TtC11CallsSearch21ContactSearchViewCell_videoButton);
  [v46 setHidden_];
  v2 = objc_opt_self();
  sub_1CFB6EC14();
  sub_1CFB5D38C(0, &qword_1EE04BD00, 0x1E696ACD8);
  v3 = sub_1CFB8FB20();

  [v2 deactivateConstraints_];

  v4 = *(v0 + OBJC_IVAR____TtC11CallsSearch21ContactSearchViewCell_matchedPhoneNumber);
  if (v4)
  {
    v5 = v4;
    v6 = [v5 value];
    v7 = [v6 stringValue];

    if (!v7)
    {
      sub_1CFB8FA90();
      v7 = sub_1CFB8FA80();
    }

    v8 = [v7 IDSFormattedDestinationID];

    if (v8)
    {
      v9 = sub_1CFB8FA90();
      v11 = v10;
      v12 = [objc_opt_self() sharedManager];
      v13 = [v12 faceTimeVideoAvailabilityForDestination_];

      if (v13 == 1)
      {
        [v46 setHidden_];
        v14 = *(v1 + OBJC_IVAR____TtC11CallsSearch21ContactSearchViewCell____lazy_storage___videoButtonVisibleConstraints);

        v15 = sub_1CFB8FB20();

        [v2 activateConstraints_];

        v16 = (v1 + OBJC_IVAR____TtC11CallsSearch21ContactSearchViewCell_videoCapableHandle);
        v17 = *(v1 + OBJC_IVAR____TtC11CallsSearch21ContactSearchViewCell_videoCapableHandle + 8);
        *v16 = v9;
        v16[1] = v11;
        goto LABEL_22;
      }
    }

    return;
  }

  v18 = [*(v0 + OBJC_IVAR____TtC11CallsSearch21ContactSearchViewCell_contact) handles];
  v19 = sub_1CFB8FB30();

  v20 = *(v19 + 16);
  if (!v20)
  {
    goto LABEL_22;
  }

  v44 = v2;
  v21 = 0;
  v22 = OBJC_IVAR____TtC11CallsSearch21ContactSearchViewCell_logger;
  v47 = -v20;
  v23 = v19 + 40;
  v45 = v19;
  v43 = v19 + 40;
  while (2)
  {
    v24 = (v23 + 16 * v21++);
    while (1)
    {
      if ((v21 - 1) >= *(v19 + 16))
      {
        __break(1u);
        return;
      }

      v26 = *(v24 - 1);
      v25 = *v24;

      v27 = sub_1CFB8FA80();
      v28 = [v27 IDSFormattedDestinationID];

      if (v28)
      {
        v29 = [objc_opt_self() sharedManager];
        v30 = [v29 faceTimeVideoAvailabilityForDestination_];

        if (v30 != 2)
        {
          break;
        }
      }

LABEL_11:
      ++v21;
      v24 += 2;
      if (v47 + v21 == 1)
      {
        goto LABEL_22;
      }
    }

    if (v30 == 1)
    {

      [v46 setHidden_];
      v39 = *(v1 + OBJC_IVAR____TtC11CallsSearch21ContactSearchViewCell____lazy_storage___videoButtonVisibleConstraints);

      v40 = sub_1CFB8FB20();

      [v44 activateConstraints_];

      v41 = (v1 + OBJC_IVAR____TtC11CallsSearch21ContactSearchViewCell_videoCapableHandle);
      v42 = *(v1 + OBJC_IVAR____TtC11CallsSearch21ContactSearchViewCell_videoCapableHandle + 8);
      *v41 = v26;
      v41[1] = v25;
      break;
    }

    if (v30)
    {

      v31 = sub_1CFB8F7A0();
      v32 = sub_1CFB8FC90();

      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        v34 = v22;
        v35 = v1;
        v36 = swift_slowAlloc();
        v48 = v36;
        *v33 = 136315138;
        v37 = sub_1CFB8C3D8(v26, v25, &v48);

        *(v33 + 4) = v37;
        _os_log_impl(&dword_1CFB5B000, v31, v32, "Unknown status type received for destination: %s", v33, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v36);
        v38 = v36;
        v1 = v35;
        v22 = v34;
        v19 = v45;
        MEMORY[0x1D386E190](v38, -1, -1);
        MEMORY[0x1D386E190](v33, -1, -1);
      }

      else
      {
      }

      goto LABEL_11;
    }

    v23 = v43;
    if (v47 + v21)
    {
      continue;
    }

    break;
  }

LABEL_22:
}

void sub_1CFB70560()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_1CFB7002C();
    v3 = v2;

    if (v3)
    {
      swift_beginAccess();
      v4 = swift_unknownObjectWeakLoadStrong();
      if (v4)
      {
        v5 = *&v4[OBJC_IVAR____TtC11CallsSearch21ContactSearchViewCell_idsStatusSubscription];
        *&v4[OBJC_IVAR____TtC11CallsSearch21ContactSearchViewCell_idsStatusSubscription] = 0;
      }
    }
  }
}

void sub_1CFB70600(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = [objc_allocWithZone(MEMORY[0x1E69D8BE8]) init];
  v7 = [v6 phoneLargeFormatUIEnabled];

  if (!v7)
  {
    v11 = 1;
    if (a3 == 3)
    {
      goto LABEL_15;
    }

LABEL_10:
    if (a3 == 2 && (v11 & 1) != 0)
    {
      v12 = 2;
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  sub_1CFB8FAF0();
  if (v8)
  {
    do
    {
      if (sub_1CFB8FA60())
      {
      }

      else
      {
        v10 = sub_1CFB8FA70();

        if ((v10 & 1) == 0)
        {
          v11 = 0;
          goto LABEL_14;
        }
      }

      sub_1CFB8FAF0();
    }

    while (v9);
  }

  v11 = 1;
LABEL_14:

  if (a3 != 3)
  {
    goto LABEL_10;
  }

LABEL_15:
  if (v11)
  {
    v12 = 1;
    goto LABEL_18;
  }

LABEL_17:
  v12 = 0;
LABEL_18:
  v13 = *(v4 + OBJC_IVAR____TtC11CallsSearch21ContactSearchViewCell_titleLabel);
  v14 = [v13 text];
  if (v14)
  {
    if (a3 != 2)
    {
      v15 = v14;
      v16 = sub_1CFB8FA80();
      v17 = [v15 attributedStringToHighlightText:v16 style:v12];

      [v13 setAttributedText_];
      v14 = v17;
    }
  }

  v18 = *(v4 + OBJC_IVAR____TtC11CallsSearch21ContactSearchViewCell_detailLabel);
  v19 = [v18 text];
  if (v19)
  {
    v20 = v19;
    v21 = sub_1CFB8FA80();
    v22 = [v20 attributedStringToHighlightText:v21 style:v12];

    [v18 setAttributedText_];
  }
}

id sub_1CFB7088C(char a1)
{
  v2 = v1;
  v4 = sub_1CFB8F730();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v70 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *&v1[OBJC_IVAR____TtC11CallsSearch21ContactSearchViewCell_callProviderManager];
  if (!v10)
  {
    v18 = sub_1CFB8F7A0();
    v19 = sub_1CFB8FCA0();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_1CFB5B000, v18, v19, "No TUCallProviderManager found.", v20, 2u);
      MEMORY[0x1D386E190](v20, -1, -1);
    }

    return 0;
  }

  v73 = v7;
  v11 = *&v1[OBJC_IVAR____TtC11CallsSearch21ContactSearchViewCell_callProviderManager + 8];

  v13 = v10(v12);
  sub_1CFB5F258(v10);
  v14 = &selRef_telephonyProvider;
  if (a1)
  {
    v14 = &selRef_faceTimeProvider;
  }

  v15 = [v13 *v14];
  v16 = objc_opt_self();
  if ([v16 supportsTelephonyCalls])
  {
    if ([v16 isRelayCallingEnabled])
    {
      v17 = 1;
    }

    else
    {
      v17 = [v16 isThumperCallingEnabled];
    }
  }

  else
  {
    v17 = 0;
  }

  v21 = [objc_allocWithZone(MEMORY[0x1E69D8BE8]) init];
  v22 = [v21 phoneLargeFormatUIEnabled];

  if (v22)
  {
    v23 = [MEMORY[0x1E69DC938] currentDevice];
    v24 = [v23 userInterfaceIdiom];

    if (!(((v24 & 0xFFFFFFFFFFFFFFFBLL) != 1) | v17 & 1))
    {
      v25 = [v13 faceTimeProvider];

      v15 = v25;
    }
  }

  if (a1)
  {
    if (*&v2[OBJC_IVAR____TtC11CallsSearch21ContactSearchViewCell_videoCapableHandle + 8])
    {
      v26 = *&v2[OBJC_IVAR____TtC11CallsSearch21ContactSearchViewCell_videoCapableHandle];
      v27 = objc_opt_self();

      goto LABEL_24;
    }

    return 0;
  }

  v28 = *&v2[OBJC_IVAR____TtC11CallsSearch21ContactSearchViewCell_matchedPhoneNumber];
  if (v28)
  {
    v29 = [v28 value];
    v30 = [v29 stringValue];

    sub_1CFB8FA90();
  }

  else
  {
    v31 = [*&v2[OBJC_IVAR____TtC11CallsSearch21ContactSearchViewCell_contact] phoneNumberStrings];
    v32 = sub_1CFB8FB30();

    if (!v32[2])
    {

      return 0;
    }

    v33 = v32[4];
    v34 = v32[5];
  }

  v27 = objc_opt_self();
LABEL_24:
  v35 = sub_1CFB8FA80();

  v36 = [v27 normalizedHandleWithDestinationID_];

  if (!v36)
  {
    v48 = v2;
    v49 = sub_1CFB8F7A0();
    v50 = sub_1CFB8FCB0();

    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      *v51 = 138412290;
      v53 = *&v48[OBJC_IVAR____TtC11CallsSearch21ContactSearchViewCell_contact];
      *(v51 + 4) = v53;
      *v52 = v53;
      v54 = v53;
      _os_log_impl(&dword_1CFB5B000, v49, v50, "ContactSearchViewCell: Cannot able to create handle for contact %@ ", v51, 0xCu);
      sub_1CFB5DDDC(v52, &unk_1EC4EC6F0, &unk_1CFB920C0);
      MEMORY[0x1D386E190](v52, -1, -1);
      MEMORY[0x1D386E190](v51, -1, -1);
    }

    return 0;
  }

  v71 = v5;
  v72 = v13;
  v37 = objc_allocWithZone(MEMORY[0x1E69D8BD0]);
  v38 = v36;
  v39 = [v37 initWithProvider_];
  [v39 setHandle_];
  v40 = OBJC_IVAR____TtC11CallsSearch21ContactSearchViewCell_contact;
  v41 = [*&v2[OBJC_IVAR____TtC11CallsSearch21ContactSearchViewCell_contact] identifier];
  if (!v41)
  {
    sub_1CFB8FA90();
    v41 = sub_1CFB8FA80();
  }

  [v39 setContactIdentifier_];

  [v39 setVideo_];
  [v39 setOriginatingUIType_];
  v42 = *&v2[OBJC_IVAR____TtC11CallsSearch21ContactSearchViewCell_senderIdentityProvider];
  if (v42)
  {
    v70 = v15;
    v43 = *&v2[OBJC_IVAR____TtC11CallsSearch21ContactSearchViewCell_senderIdentityProvider + 8];
    v44 = *&v2[v40];
    sub_1CFB71AE0(v42);
    v45 = v42(v44);

    if (v45)
    {
      v46 = [v45 accountUUID];
      sub_1CFB8F720();

      v47 = sub_1CFB8F710();
      (*(v71 + 8))(v9, v73);
      [v39 setLocalSenderIdentityAccountUUID_];

      sub_1CFB5F258(v42);
    }

    else
    {
      v59 = v2;
      v60 = sub_1CFB8F7A0();
      v61 = sub_1CFB8FC90();

      if (os_log_type_enabled(v60, v61))
      {
        v62 = swift_slowAlloc();
        v63 = swift_slowAlloc();
        *v62 = 138412290;
        v64 = *&v2[v40];
        *(v62 + 4) = v64;
        *v63 = v64;
        v65 = v64;
        _os_log_impl(&dword_1CFB5B000, v60, v61, "ContactSearchViewCell: Failed to get sender identity for contact %@", v62, 0xCu);
        sub_1CFB5DDDC(v63, &unk_1EC4EC6F0, &unk_1CFB920C0);
        MEMORY[0x1D386E190](v63, -1, -1);
        MEMORY[0x1D386E190](v62, -1, -1);
        v66 = v70;
        v67 = v38;
      }

      else
      {
        v66 = v38;
        v67 = v70;
      }

      sub_1CFB5F258(v42);
    }
  }

  else
  {
    v55 = sub_1CFB8F7A0();
    v56 = sub_1CFB8FCA0();
    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      *v57 = 0;
      _os_log_impl(&dword_1CFB5B000, v55, v56, "Sender identity provider is nil.", v57, 2u);
      MEMORY[0x1D386E190](v57, -1, -1);
      v58 = v15;
      v15 = v38;
    }

    else
    {
      v58 = v38;
    }

    v68 = v72;
  }

  return v39;
}

void sub_1CFB710AC()
{
  if ((*(v0 + OBJC_IVAR____TtC11CallsSearch21ContactSearchViewCell_searchType + 8) & 1) != 0 || (v1 = *(v0 + OBJC_IVAR____TtC11CallsSearch21ContactSearchViewCell_searchType), v1 > 3))
  {
    v2 = 0;
  }

  else
  {
    v2 = dword_1CFB92100[v1];
  }

  v5 = [objc_opt_self() shared];
  if (*(v0 + OBJC_IVAR____TtC11CallsSearch21ContactSearchViewCell_searchText + 8))
  {
    v3 = *(v0 + OBJC_IVAR____TtC11CallsSearch21ContactSearchViewCell_searchText);

    v4 = sub_1CFB8FAD0();
  }

  else
  {
    v4 = -1;
  }

  [v5 logSearchResultInteraction:2 cellType:v2 searchLength:v4];
}

uint64_t sub_1CFB711A4(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v4(a2);
}

void sub_1CFB71260(char a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_1CFB8F670();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1CFB7088C(a1);
  if (v12)
  {
    v13 = v12;
    sub_1CFB710AC();
    v14 = [objc_opt_self() sharedApplication];
    v15 = [v13 URL];
    if (v15)
    {
      v16 = v15;
      sub_1CFB8F660();

      v17 = sub_1CFB8F650();
      (*(v8 + 8))(v11, v7);
    }

    else
    {
      v17 = 0;
    }

    aBlock[4] = a2;
    aBlock[5] = 0;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1CFB711A4;
    aBlock[3] = a3;
    v25 = _Block_copy(aBlock);
    [v14 openURL:v17 withCompletionHandler:v25];
    _Block_release(v25);
  }

  else
  {
    v18 = v3;
    v27 = sub_1CFB8F7A0();
    v19 = sub_1CFB8FCB0();

    if (os_log_type_enabled(v27, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *v20 = 138412290;
      v22 = *&v18[OBJC_IVAR____TtC11CallsSearch21ContactSearchViewCell_contact];
      *(v20 + 4) = v22;
      *v21 = v22;
      v23 = v22;
      _os_log_impl(&dword_1CFB5B000, v27, v19, "ContactSearchViewCell: Cannot able to create dial request for contact %@ ", v20, 0xCu);
      sub_1CFB5DDDC(v21, &unk_1EC4EC6F0, &unk_1CFB920C0);
      MEMORY[0x1D386E190](v21, -1, -1);
      MEMORY[0x1D386E190](v20, -1, -1);
    }

    v24 = v27;
  }
}

id ContactSearchViewCell.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for ContactSearchViewCell()
{
  result = qword_1EE04C170;
  if (!qword_1EE04C170)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1CFB71974()
{
  result = sub_1CFB8F7C0();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t sub_1CFB71A54()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

unint64_t sub_1CFB71A7C()
{
  result = qword_1EC4EC710;
  if (!qword_1EC4EC710)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4EC708, &qword_1CFB92188);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4EC710);
  }

  return result;
}

uint64_t sub_1CFB71AE0(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

void sub_1CFB71AF0()
{
  sub_1CFB8F7B0();
  v1 = OBJC_IVAR____TtC11CallsSearch21ContactSearchViewCell_contactSummarizer;
  *(v0 + v1) = [objc_allocWithZone(MEMORY[0x1E695CDC0]) init];
  v2 = OBJC_IVAR____TtC11CallsSearch21ContactSearchViewCell_avatarViewControllerSettings;
  v3 = [objc_opt_self() sharedInstance];
  v4 = [v3 contactStore];

  v5 = [objc_opt_self() settingsWithContactStore:v4 threeDTouchEnabled:0];
  *(v0 + v2) = v5;
  v6 = OBJC_IVAR____TtC11CallsSearch21ContactSearchViewCell_titleLabel;
  *(v0 + v6) = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  v7 = OBJC_IVAR____TtC11CallsSearch21ContactSearchViewCell_detailLabel;
  *(v0 + v7) = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  v8 = v0 + OBJC_IVAR____TtC11CallsSearch21ContactSearchViewCell_searchType;
  *v8 = 0;
  *(v8 + 8) = 1;
  v9 = (v0 + OBJC_IVAR____TtC11CallsSearch21ContactSearchViewCell_searchText);
  *v9 = 0;
  v9[1] = 0;
  *(v0 + OBJC_IVAR____TtC11CallsSearch21ContactSearchViewCell____lazy_storage___textContainer) = 0;
  v10 = OBJC_IVAR____TtC11CallsSearch21ContactSearchViewCell_callButton;
  *(v0 + v10) = [objc_allocWithZone(MEMORY[0x1E69D8988]) init];
  v11 = OBJC_IVAR____TtC11CallsSearch21ContactSearchViewCell_videoButton;
  *(v0 + v11) = [objc_allocWithZone(MEMORY[0x1E69D8988]) init];
  v12 = (v0 + OBJC_IVAR____TtC11CallsSearch21ContactSearchViewCell_callProviderManager);
  *v12 = 0;
  v12[1] = 0;
  v13 = (v0 + OBJC_IVAR____TtC11CallsSearch21ContactSearchViewCell_senderIdentityProvider);
  *v13 = 0;
  v13[1] = 0;
  *(v0 + OBJC_IVAR____TtC11CallsSearch21ContactSearchViewCell____lazy_storage___commonConstraints) = 0;
  *(v0 + OBJC_IVAR____TtC11CallsSearch21ContactSearchViewCell____lazy_storage___axConstraints) = 0;
  *(v0 + OBJC_IVAR____TtC11CallsSearch21ContactSearchViewCell____lazy_storage___nonAXConstraints) = 0;
  *(v0 + OBJC_IVAR____TtC11CallsSearch21ContactSearchViewCell____lazy_storage___videoButtonVisibleConstraints) = 0;
  v14 = OBJC_IVAR____TtC11CallsSearch21ContactSearchViewCell_contact;
  *(v0 + v14) = [objc_allocWithZone(MEMORY[0x1E695CD58]) init];
  *(v0 + OBJC_IVAR____TtC11CallsSearch21ContactSearchViewCell_matchedPhoneNumber) = 0;
  v15 = (v0 + OBJC_IVAR____TtC11CallsSearch21ContactSearchViewCell_videoCapableHandle);
  *v15 = 0;
  v15[1] = 0;
  *(v0 + OBJC_IVAR____TtC11CallsSearch21ContactSearchViewCell_idsStatusSubscription) = 0;
  sub_1CFB8FFA0();
  __break(1u);
}

id MPSuggestionsSearchTableViewController.tableView(_:cellForRowAt:)(void *a1)
{
  v2 = v1;
  v4 = sub_1CFB8FA80();
  v5 = sub_1CFB8F740();
  v6 = [a1 dequeueReusableCellWithIdentifier:v4 forIndexPath:v5];

  type metadata accessor for SuggestionsSearchViewCell();
  if (swift_dynamicCastClass())
  {
    v7 = v6;
    v8 = sub_1CFB8F760();
    v9 = [v2 suggestions];
    sub_1CFB5D38C(0, &unk_1EC4EC490, 0x1E6964EA8);
    v10 = sub_1CFB8FB30();

    if ((v10 & 0xC000000000000001) != 0)
    {
      v11 = MEMORY[0x1D386D910](v8, v10);
      goto LABEL_6;
    }

    if ((v8 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v8 < *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v11 = *(v10 + 8 * v8 + 32);
LABEL_6:
      v12 = v11;

      sub_1CFB7E9DC(v12);

      v13 = [v2 searchText];
      if (v13)
      {
        v14 = v13;
        v15 = sub_1CFB8FA90();
        v17 = v16;
      }

      else
      {
        v15 = 0;
        v17 = 0;
      }

      sub_1CFB7EAD8(v15, v17);

      return v6;
    }

    __break(1u);
    goto LABEL_18;
  }

  if (qword_1EE04BDB8 != -1)
  {
LABEL_18:
    swift_once();
  }

  v18 = sub_1CFB8F7C0();
  __swift_project_value_buffer(v18, qword_1EE04C228);
  v19 = sub_1CFB8F7A0();
  v20 = sub_1CFB8FC90();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&dword_1CFB5B000, v19, v20, "SuggestionsSearchTableViewController: Cell not of type suggestion", v21, 2u);
    MEMORY[0x1D386E190](v21, -1, -1);
  }

  return v6;
}

id MPSuggestionsSearchTableViewController.init(style:)(uint64_t a1)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v2 initWithStyle_];
}

{
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR___MPSuggestionsSearchTableViewController_suggestions] = MEMORY[0x1E69E7CC0];
  v3 = &v1[OBJC_IVAR___MPSuggestionsSearchTableViewController_searchText];
  *v3 = 0;
  *(v3 + 1) = 0;
  v5.receiver = v1;
  v5.super_class = MPSuggestionsSearchTableViewController;
  return objc_msgSendSuper2(&v5, sel_initWithStyle_, a1);
}

id MPSuggestionsSearchTableViewController.init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    v4 = sub_1CFB8FA80();
  }

  else
  {
    v4 = 0;
  }

  v5 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithNibName:v4 bundle:a3];

  return v5;
}

{
  swift_unknownObjectWeakInit();
  *&v3[OBJC_IVAR___MPSuggestionsSearchTableViewController_suggestions] = MEMORY[0x1E69E7CC0];
  v6 = &v3[OBJC_IVAR___MPSuggestionsSearchTableViewController_searchText];
  *v6 = 0;
  *(v6 + 1) = 0;
  if (a2)
  {
    v7 = sub_1CFB8FA80();
  }

  else
  {
    v7 = 0;
  }

  v10.receiver = v3;
  v10.super_class = MPSuggestionsSearchTableViewController;
  v8 = objc_msgSendSuper2(&v10, sel_initWithNibName_bundle_, v7, a3);

  return v8;
}

id MPSuggestionsSearchTableViewController.init(coder:)(void *a1)
{
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithCoder_];

  return v2;
}

{
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR___MPSuggestionsSearchTableViewController_suggestions] = MEMORY[0x1E69E7CC0];
  v3 = &v1[OBJC_IVAR___MPSuggestionsSearchTableViewController_searchText];
  *v3 = 0;
  *(v3 + 1) = 0;
  v6.receiver = v1;
  v6.super_class = MPSuggestionsSearchTableViewController;
  v4 = objc_msgSendSuper2(&v6, sel_initWithCoder_, a1);

  if (v4)
  {
  }

  return v4;
}

id sub_1CFB72868(void *a1)
{
  v2 = sub_1CFB8F610();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_1CFB5D38C(0, &qword_1EC4EC748, 0x1E696AD40);
  sub_1CFB8FC80();
  v4 = sub_1CFB8FDD0();
  v5 = [v4 string];

  if (!v5)
  {
    sub_1CFB8FA90();
    v5 = sub_1CFB8FA80();
  }

  v6 = sub_1CFB7F024(a1);
  v7 = [objc_opt_self() tokenWithIcon:v6 text:v5];

  [v7 setRepresentedObject_];
  return v7;
}

void sub_1CFB729A4(uint64_t a1)
{
  v2 = v1;
  v4 = [v2 suggestionsDelegate];
  if (!v4)
  {
    return;
  }

  v5 = v4;
  v6 = sub_1CFB8F760();
  v7 = [v2 suggestions];
  sub_1CFB5D38C(0, &unk_1EC4EC490, 0x1E6964EA8);
  v8 = sub_1CFB8FB30();

  if (v8 >> 62)
  {
    v9 = sub_1CFB8FFB0();
  }

  else
  {
    v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v6 >= v9)
  {
    if (qword_1EE04BDB8 != -1)
    {
      swift_once();
    }

    v20 = sub_1CFB8F7C0();
    __swift_project_value_buffer(v20, qword_1EE04C228);
    oslog = sub_1CFB8F7A0();
    v21 = sub_1CFB8FC90();
    if (os_log_type_enabled(oslog, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_1CFB5B000, oslog, v21, "SuggestionsSearchTableViewController: Suggestions in UI were not updated as per the datasource (due to the 0.5 s delay)", v22, 2u);
      MEMORY[0x1D386E190](v22, -1, -1);
    }

    swift_unknownObjectRelease();
    goto LABEL_23;
  }

  v10 = sub_1CFB8F760();
  v11 = [v2 suggestions];
  v12 = sub_1CFB8FB30();

  if ((v12 & 0xC000000000000001) != 0)
  {
    v13 = MEMORY[0x1D386D910](v10, v12);
  }

  else
  {
    if ((v10 & 0x8000000000000000) != 0)
    {
      __break(1u);
      goto LABEL_29;
    }

    if (v10 >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_31;
    }

    v13 = *(v12 + 8 * v10 + 32);
  }

  v14 = v13;

  v10 = sub_1CFB72868(v14);

  [v5 didSelectSuggestedSearchWithToken_];
  oslog = [objc_opt_self() shared];
  v12 = sub_1CFB8F760();
  v15 = [v2 suggestions];
  a1 = sub_1CFB8FB30();

  if ((a1 & 0xC000000000000001) != 0)
  {
LABEL_29:
    v16 = MEMORY[0x1D386D910](v12, a1);
    goto LABEL_13;
  }

  if ((v12 & 0x8000000000000000) != 0)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  if (v12 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_32:
    __break(1u);
    return;
  }

  v16 = *(a1 + 8 * v12 + 32);
LABEL_13:
  v17 = v16;

  v18 = [v2 searchText];
  if (v18)
  {
    sub_1CFB8FA90();

    v19 = sub_1CFB8FAD0();
  }

  else
  {
    v19 = 0;
  }

  v25.is_nil = v18 == 0;
  v25.value = v19;
  CSSearchMetrics.logInteractionWith(_:searchLength:)(v17, v25);

  swift_unknownObjectRelease();
LABEL_23:
}

uint64_t sub_1CFB72D50()
{
  v0 = sub_1CFB8F7C0();
  __swift_allocate_value_buffer(v0, qword_1EE04C210);
  __swift_project_value_buffer(v0, qword_1EE04C210);
  return sub_1CFB8F7B0();
}

uint64_t sub_1CFB72DD8()
{
  sub_1CFB900D0();
  MEMORY[0x1D386DB30](0);
  return sub_1CFB900F0();
}

uint64_t sub_1CFB72E44()
{
  sub_1CFB900D0();
  MEMORY[0x1D386DB30](0);
  return sub_1CFB900F0();
}

id sub_1CFB72F7C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  sub_1CFB5D38C(0, &unk_1EE04BCF0, 0x1E69BDCF8);
  v3 = sub_1CFB8FB30();

  v2(v3);

  v4 = sub_1CFB8FB20();

  return v4;
}

uint64_t MPContactSearchManager.searchString.getter()
{
  v10[0] = 0;
  v10[1] = 0xE000000000000000;
  v1 = [v0 accessQueue];
  v2 = swift_allocObject();
  *(v2 + 16) = v10;
  *(v2 + 24) = v0;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_1CFB73450;
  *(v3 + 24) = v2;
  v9[4] = sub_1CFB71A54;
  v9[5] = v3;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 1107296256;
  v9[2] = sub_1CFB73458;
  v9[3] = &block_descriptor_3;
  v4 = _Block_copy(v9);
  v5 = v0;

  dispatch_sync(v1, v4);

  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v8 = v10[0];

    return v8;
  }

  return result;
}

uint64_t MPContactSearchManager.searchString.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = [v2 accessQueue];
  v7 = swift_allocObject();
  v7[2] = v3;
  v7[3] = a1;
  v7[4] = a2;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_1CFB73480;
  *(v8 + 24) = v7;
  v12[4] = sub_1CFB77448;
  v12[5] = v8;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 1107296256;
  v12[2] = sub_1CFB73458;
  v12[3] = &block_descriptor_13;
  v9 = _Block_copy(v12);
  v10 = v3;

  dispatch_sync(v6, v9);

  _Block_release(v9);
  LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

  if (v6)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1CFB733E0(uint64_t *a1, id a2)
{
  v3 = [a2 _searchString];
  v4 = sub_1CFB8FA90();
  v6 = v5;

  v7 = a1[1];
  *a1 = v4;
  a1[1] = v6;
}

void (*MPContactSearchManager.searchString.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x48uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 64) = v1;
  *(v3 + 48) = MPContactSearchManager.searchString.getter();
  *(v4 + 56) = v5;
  return sub_1CFB734FC;
}

void sub_1CFB734FC(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 48);
  v5 = *(*a1 + 56);
  v4 = *(*a1 + 64);
  if ((a2 & 1) == 0)
  {
    v15 = [*(*a1 + 64) accessQueue];
    v16 = swift_allocObject();
    v16[2] = v4;
    v16[3] = v3;
    v16[4] = v5;
    v17 = swift_allocObject();
    *(v17 + 16) = sub_1CFB77440;
    *(v17 + 24) = v16;
    v2[4] = sub_1CFB77448;
    v2[5] = v17;
    *v2 = MEMORY[0x1E69E9820];
    v2[1] = 1107296256;
    v2[2] = sub_1CFB73458;
    v2[3] = &block_descriptor_35;
    v18 = _Block_copy(v2);
    v19 = v2[5];
    v20 = v4;

    dispatch_sync(v15, v18);

    _Block_release(v18);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      goto LABEL_5;
    }

LABEL_9:
    __break(1u);
    return;
  }

  v6 = *(*a1 + 56);

  v7 = [v4 accessQueue];
  v8 = swift_allocObject();
  v8[2] = v4;
  v8[3] = v3;
  v8[4] = v5;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_1CFB77440;
  *(v9 + 24) = v8;
  v2[4] = sub_1CFB77448;
  v2[5] = v9;
  *v2 = MEMORY[0x1E69E9820];
  v2[1] = 1107296256;
  v2[2] = sub_1CFB73458;
  v2[3] = &block_descriptor_24;
  v10 = _Block_copy(v2);
  v11 = v2[5];
  v12 = v4;

  dispatch_sync(v7, v10);

  _Block_release(v10);
  v13 = swift_isEscapingClosureAtFileLocation();

  if (v13)
  {
    __break(1u);
    goto LABEL_9;
  }

  v14 = v2[7];

LABEL_5:

  free(v2);
}

uint64_t sub_1CFB738B4()
{
  v1 = v0;
  v10 = MEMORY[0x1E69E7CC0];
  v2 = [v0 accessQueue];
  v3 = swift_allocObject();
  *(v3 + 16) = &v10;
  *(v3 + 24) = v1;
  v4 = swift_allocObject();
  *(v4 + 16) = sub_1CFB77314;
  *(v4 + 24) = v3;
  aBlock[4] = sub_1CFB77448;
  aBlock[5] = v4;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1CFB73458;
  aBlock[3] = &block_descriptor_126;
  v5 = _Block_copy(aBlock);
  v6 = v1;

  dispatch_sync(v2, v5);

  _Block_release(v5);
  LOBYTE(v2) = swift_isEscapingClosureAtFileLocation();

  if (v2)
  {
    __break(1u);
  }

  else
  {
    v8 = v10;

    return v8;
  }

  return result;
}

uint64_t sub_1CFB73A38(uint64_t *a1, id a2)
{
  v3 = [a2 _contactSearchResults];
  sub_1CFB5D38C(0, &unk_1EE04BCF0, 0x1E69BDCF8);
  v4 = sub_1CFB8FB30();

  v5 = *a1;
  *a1 = v4;
}

void sub_1CFB73AC4(void *a1)
{
  sub_1CFB5D38C(0, &unk_1EE04BCF0, 0x1E69BDCF8);
  v2 = sub_1CFB8FB20();
  [a1 set:v2 contactSearchResults:?];
}

uint64_t sub_1CFB73C50()
{
  v0 = sub_1CFB738B4();
  v1 = v0;
  if (!(v0 >> 62))
  {
    v2 = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_11:

    return MEMORY[0x1E69E7CC0];
  }

  v2 = sub_1CFB8FFB0();
  if (!v2)
  {
    goto LABEL_11;
  }

LABEL_3:
  v9 = MEMORY[0x1E69E7CC0];
  result = sub_1CFB8FF20();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    v4 = 0;
    do
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x1D386D910](v4, v1);
      }

      else
      {
        v5 = *(v1 + 8 * v4 + 32);
      }

      v6 = v5;
      ++v4;
      v7 = [v5 contact];

      sub_1CFB8FF00();
      v8 = *(v9 + 16);
      sub_1CFB8FF30();
      sub_1CFB8FF40();
      sub_1CFB8FF10();
    }

    while (v2 != v4);

    return v9;
  }

  return result;
}

uint64_t MPContactSearchManager.search(for:shouldRefreshResult:)(uint64_t a1, uint64_t a2, char a3)
{
  v10 = *MEMORY[0x1E69E9840];
  *(v4 + 344) = a2;
  *(v4 + 352) = v3;
  *(v4 + 408) = a3;
  *(v4 + 336) = a1;
  v5 = sub_1CFB8F6F0();
  *(v4 + 360) = v5;
  v6 = *(v5 - 8);
  *(v4 + 368) = v6;
  v7 = *(v6 + 64) + 15;
  *(v4 + 376) = swift_task_alloc();
  *(v4 + 384) = swift_task_alloc();
  *(v4 + 392) = swift_task_alloc();
  *(v4 + 400) = swift_task_alloc();
  v8 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](sub_1CFB73EA4, 0, 0);
}

uint64_t sub_1CFB73EA4()
{
  v147 = v0;
  v146[1] = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 344);
  v2 = MEMORY[0x1E69E7CC0];
  if (!v1)
  {
    goto LABEL_49;
  }

  if ((*(v0 + 408) & 1) == 0)
  {
    v41 = *(v0 + 352);
    v42 = *(v0 + 336);
    if (MPContactSearchManager.searchString.getter() == v42 && v1 == v43)
    {
    }

    else
    {
      v45 = *(v0 + 336);
      v46 = sub_1CFB90010();

      if ((v46 & 1) == 0)
      {
        goto LABEL_3;
      }
    }

    v47 = *(v0 + 352);
    v2 = sub_1CFB738B4();
    goto LABEL_49;
  }

LABEL_3:
  v3 = *(v0 + 352);
  v4 = *(v0 + 336);

  v5 = [v3 accessQueue];
  v6 = swift_allocObject();
  v6[2] = v3;
  v6[3] = v4;
  v6[4] = v1;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_1CFB77440;
  *(v7 + 24) = v6;
  *(v0 + 48) = sub_1CFB77448;
  *(v0 + 56) = v7;
  *(v0 + 16) = MEMORY[0x1E69E9820];
  *(v0 + 24) = 1107296256;
  *(v0 + 32) = sub_1CFB73458;
  *(v0 + 40) = &block_descriptor_46;
  v8 = _Block_copy((v0 + 16));
  v9 = *(v0 + 56);
  v10 = v3;

  dispatch_sync(v5, v8);

  _Block_release(v8);
  LOBYTE(v3) = swift_isEscapingClosureAtFileLocation();

  if (v3)
  {
    __break(1u);
LABEL_53:
    swift_once();
    goto LABEL_9;
  }

  v11 = *(v0 + 344);
  if ((v11 & 0x2000000000000000) != 0)
  {
    v12 = HIBYTE(v11) & 0xF;
  }

  else
  {
    v12 = *(v0 + 336) & 0xFFFFFFFFFFFFLL;
  }

  if (!v12)
  {
    v48 = *(v0 + 352);
    v49 = [v48 accessQueue];
    v33 = swift_allocObject();
    v33[2] = v48;
    v33[3] = v2;
    v50 = swift_allocObject();
    *(v50 + 16) = sub_1CFB7744C;
    *(v50 + 24) = v33;
    *(v0 + 240) = sub_1CFB77448;
    *(v0 + 248) = v50;
    *(v0 + 208) = MEMORY[0x1E69E9820];
    *(v0 + 216) = 1107296256;
    *(v0 + 224) = sub_1CFB73458;
    *(v0 + 232) = &block_descriptor_91;
    v51 = _Block_copy((v0 + 208));
    v52 = *(v0 + 248);
    v53 = v48;

    dispatch_sync(v49, v51);

    _Block_release(v51);
    LOBYTE(v49) = swift_isEscapingClosureAtFileLocation();

    if ((v49 & 1) == 0)
    {
      goto LABEL_49;
    }

    __break(1u);
LABEL_26:
    v54 = v33;
    v40 = sub_1CFB8F640();

LABEL_27:
    swift_willThrow();

    v55 = v40;
    v56 = sub_1CFB8F7A0();
    v57 = sub_1CFB8FC90();

    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      *v58 = 138412290;
      v60 = v40;
      v61 = _swift_stdlib_bridgeErrorToNSError();
      *(v58 + 4) = v61;
      *v59 = v61;
      _os_log_impl(&dword_1CFB5B000, v56, v57, "Error searching contacts %@", v58, 0xCu);
      sub_1CFB6E10C(v59);
      MEMORY[0x1D386E190](v59, -1, -1);
      MEMORY[0x1D386E190](v58, -1, -1);
    }

    v63 = *(v0 + 392);
    v62 = *(v0 + 400);
    v65 = *(v0 + 376);
    v64 = *(v0 + 384);
    v66 = *(v0 + 360);
    v67 = *(v0 + 368);

    swift_willThrow();
    (*(v67 + 8))(v62, v66);

    v68 = *(v0 + 8);
    v69 = *MEMORY[0x1E69E9840];

    return v68();
  }

  aBlock = (v0 + 64);
  if (qword_1EE04BDB0 != -1)
  {
    goto LABEL_53;
  }

LABEL_9:
  v13 = sub_1CFB8F7C0();
  __swift_project_value_buffer(v13, qword_1EE04C210);

  v14 = sub_1CFB8F7A0();
  v15 = sub_1CFB8FCB0();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = *(v0 + 336);
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v146[0] = v18;
    *v17 = 136446210;
    *(v17 + 4) = sub_1CFB8C3D8(v16, v1, v146);
    _os_log_impl(&dword_1CFB5B000, v14, v15, "Searching for %{public}s", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v18);
    MEMORY[0x1D386E190](v18, -1, -1);
    MEMORY[0x1D386E190](v17, -1, -1);
  }

  v19 = *(v0 + 400);
  v20 = *(v0 + 352);
  v21 = *(v0 + 336);
  sub_1CFB74F2C();
  v22 = objc_allocWithZone(MEMORY[0x1E695CD78]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EC7B0, &unk_1CFB921D0);
  v23 = sub_1CFB8FB20();

  v24 = [v22 initWithKeysToFetch_];

  v25 = MPContactSearchManager.fetchPredicate.getter();
  [v24 setPredicate_];

  [v24 setSortOrder_];
  sub_1CFB8F6E0();
  v26 = swift_allocObject();
  *(v26 + 16) = v2;
  v142 = (v26 + 16);
  v27 = swift_allocObject();
  *(v27 + 16) = 0;
  v28 = [v20 contactStore];
  v29 = swift_allocObject();
  v29[2] = v20;
  v29[3] = v21;
  v29[4] = v1;
  v29[5] = v27;
  v29[6] = v26;
  *(v0 + 96) = sub_1CFB769D0;
  *(v0 + 104) = v29;
  *(v0 + 64) = MEMORY[0x1E69E9820];
  *(v0 + 72) = 1107296256;
  *(v0 + 80) = sub_1CFB75554;
  *(v0 + 88) = &block_descriptor_58;
  v30 = _Block_copy(aBlock);
  v31 = *(v0 + 104);

  v32 = v20;

  *(v0 + 328) = 0;
  v143 = v24;
  LODWORD(v31) = [v28 enumerateContactsAndMatchInfoWithFetchRequest:v24 error:v0 + 328 usingBlock:v30];
  _Block_release(v30);

  v33 = *(v0 + 328);
  if (!v31)
  {
    goto LABEL_26;
  }

  swift_beginAccess();
  if (*(v27 + 16) == 1)
  {

    v34 = v33;
    v35 = sub_1CFB8F7A0();
    v36 = sub_1CFB8FCB0();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = *(v0 + 336);
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v146[0] = v39;
      *v38 = 136446210;
      *(v38 + 4) = sub_1CFB8C3D8(v37, v1, v146);
      _os_log_impl(&dword_1CFB5B000, v35, v36, "Search was cancelled for %{public}s", v38, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v39);
      MEMORY[0x1D386E190](v39, -1, -1);
      MEMORY[0x1D386E190](v38, -1, -1);
    }

    sub_1CFB769E8();
    v40 = swift_allocError();
    goto LABEL_27;
  }

  v71 = (v0 + 112);

  v72 = v33;
  isEscapingClosureAtFileLocation = sub_1CFB8F7A0();
  LOBYTE(v74) = sub_1CFB8FCB0();
  if (!os_log_type_enabled(isEscapingClosureAtFileLocation, v74))
  {

    v76 = &selRef_deselectRowAtIndexPath_animated_;
    goto LABEL_37;
  }

  v75 = swift_slowAlloc();
  *v75 = 134349056;
  swift_beginAccess();
  v76 = &selRef_deselectRowAtIndexPath_animated_;
  if (*v142 >> 62)
  {
    goto LABEL_55;
  }

  for (i = *((*v142 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1CFB8FFB0())
  {
    *(v75 + 4) = i;

    _os_log_impl(&dword_1CFB5B000, isEscapingClosureAtFileLocation, v74, "Found %{public}ld contacts", v75, 0xCu);
    MEMORY[0x1D386E190](v75, -1, -1);
LABEL_37:

    v78 = *(v0 + 352);
    swift_beginAccess();
    v79 = *(v26 + 16);

    v75 = [v78 v76[91]];
    v74 = swift_allocObject();
    *(v74 + 16) = v78;
    *(v74 + 24) = v79;
    v80 = swift_allocObject();
    *(v80 + 16) = sub_1CFB769E0;
    *(v80 + 24) = v74;
    *(v0 + 144) = sub_1CFB77448;
    *(v0 + 152) = v80;
    *(v0 + 112) = MEMORY[0x1E69E9820];
    *(v0 + 120) = 1107296256;
    *(v0 + 128) = sub_1CFB73458;
    *(v0 + 136) = &block_descriptor_69;
    v81 = _Block_copy(v71);
    v71 = *(v0 + 152);
    v82 = v78;

    dispatch_sync(v75, v81);

    _Block_release(v81);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      break;
    }

    __break(1u);
LABEL_55:
    ;
  }

  v84 = *(v0 + 392);
  v83 = *(v0 + 400);
  v85 = *(v0 + 360);
  v86 = *(v0 + 368);
  v87 = *(v0 + 352);
  sub_1CFB755E8();
  v88 = *(v86 + 16);
  v88(v84, v83, v85);
  v89 = sub_1CFB8F7A0();
  v90 = sub_1CFB8FCB0();
  v91 = os_log_type_enabled(v89, v90);
  v92 = *(v0 + 392);
  aBlocka = v88;
  if (v91)
  {
    v93 = *(v0 + 384);
    v94 = *(v0 + 360);
    v95 = *(v0 + 368);
    v96 = swift_slowAlloc();
    *v96 = 134349056;
    sub_1CFB8F6D0();
    sub_1CFB8F680();
    v98 = v97;
    v99 = *(v95 + 8);
    v99(v93, v94);
    sub_1CFB8F680();
    v101 = v100;
    v99(v92, v94);
    *(v96 + 4) = v98 - v101;
    _os_log_impl(&dword_1CFB5B000, v89, v90, "Contact search time: %{public}f", v96, 0xCu);
    MEMORY[0x1D386E190](v96, -1, -1);
  }

  else
  {
    v103 = *(v0 + 360);
    v102 = *(v0 + 368);

    v99 = *(v102 + 8);
    v99(v92, v103);
  }

  v104 = [*(v0 + 352) featureFlags];
  v105 = [v104 smartDialerRankingEnabled];

  if (v105)
  {
    v106 = *(v0 + 352);
    v107 = sub_1CFB738B4();
    if ([v106 contactSearchType])
    {
      v108 = [*(v0 + 352) ranker];
      sub_1CFB5D38C(0, &unk_1EE04BCF0, 0x1E69BDCF8);
      v109 = sub_1CFB8FB20();

      v110 = v108[2](v108, v109);

      v107 = sub_1CFB8FB30();
      _Block_release(v108);
    }

    v111 = *(v0 + 352);
    v112 = [v111 accessQueue];
    v113 = swift_allocObject();
    *(v113 + 16) = v111;
    *(v113 + 24) = v107;
    v114 = swift_allocObject();
    *(v114 + 16) = sub_1CFB7744C;
    *(v114 + 24) = v113;
    *(v0 + 192) = sub_1CFB77448;
    *(v0 + 200) = v114;
    *(v0 + 160) = MEMORY[0x1E69E9820];
    *(v0 + 168) = 1107296256;
    *(v0 + 176) = sub_1CFB73458;
    *(v0 + 184) = &block_descriptor_80;
    v115 = _Block_copy((v0 + 160));
    v116 = *(v0 + 200);
    v117 = v111;

    dispatch_sync(v112, v115);

    _Block_release(v115);
    LOBYTE(v115) = swift_isEscapingClosureAtFileLocation();

    if (v115)
    {
      __break(1u);
    }

    aBlocka(*(v0 + 376), *(v0 + 400), *(v0 + 360));
    v118 = sub_1CFB8F7A0();
    v119 = sub_1CFB8FCB0();
    if (os_log_type_enabled(v118, v119))
    {
      v120 = *(v0 + 376);
      v121 = *(v0 + 384);
      v122 = *(v0 + 360);
      v123 = *(v0 + 368);
      v124 = swift_slowAlloc();
      *v124 = 134349056;
      sub_1CFB8F6D0();
      sub_1CFB8F680();
      v126 = v125;
      v99(v121, v122);
      sub_1CFB8F680();
      v128 = v127;
      v99(v120, v122);
      *(v124 + 4) = v126 - v128;
      _os_log_impl(&dword_1CFB5B000, v118, v119, "Contact ranking time: %{public}f", v124, 0xCu);
      MEMORY[0x1D386E190](v124, -1, -1);
    }

    else
    {
      v130 = *(v0 + 368);
      v129 = *(v0 + 376);
      v131 = *(v0 + 360);

      v99(v129, v131);
    }
  }

  v132 = *(v0 + 400);
  v133 = *(v0 + 360);
  v134 = *(v0 + 368);
  v135 = *(v0 + 352);
  v2 = sub_1CFB738B4();

  v99(v132, v133);
LABEL_49:
  v137 = *(v0 + 392);
  v136 = *(v0 + 400);
  v139 = *(v0 + 376);
  v138 = *(v0 + 384);

  v140 = *(v0 + 8);
  v141 = *MEMORY[0x1E69E9840];

  return v140(v2);
}

uint64_t sub_1CFB74F2C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4EC810, &qword_1CFB92180);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1CFB921B0;
  v3 = *MEMORY[0x1E695C258];
  v4 = *MEMORY[0x1E695C330];
  *(v2 + 32) = *MEMORY[0x1E695C258];
  *(v2 + 40) = v4;
  v5 = *MEMORY[0x1E695C208];
  v6 = *MEMORY[0x1E695C310];
  v7 = MEMORY[0x1E695C328];
  *(v2 + 48) = *MEMORY[0x1E695C208];
  *(v2 + 56) = v6;
  v8 = *v7;
  *(v2 + 64) = *v7;
  v21 = v2;
  v9 = objc_opt_self();
  v10 = v3;
  v11 = v4;
  v12 = v5;
  v13 = v6;
  v14 = v8;
  v15 = [v9 descriptorForRequiredKeysForStyle_];
  MEMORY[0x1D386D560]();
  if (*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v19 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_1CFB8FB50();
  }

  sub_1CFB8FB70();
  v16 = [objc_opt_self() descriptorForRequiredKeys];
  MEMORY[0x1D386D560]();
  if (*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v20 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_1CFB8FB50();
  }

  sub_1CFB8FB70();
  if (![v1 contactSearchType])
  {
    v17 = sub_1CFB7731C();
    sub_1CFB84BDC(v17);
  }

  return v21;
}

id MPContactSearchManager.fetchPredicate.getter()
{
  v1 = v0;
  v2 = objc_opt_self();
  v3 = [v2 predicateWithValue_];
  v4 = [v0 featureFlags];
  v5 = [v4 phoneLargeFormatUIEnabled];

  if (v5)
  {
    v6 = MPContactSearchManager.searchString.getter();
    v8 = HIBYTE(v7) & 0xF;
    v20 = v6;
    v21 = v7;
    if ((v7 & 0x2000000000000000) == 0)
    {
      v8 = v6 & 0xFFFFFFFFFFFFLL;
    }

    v22 = 0;
    v23 = v8;
    sub_1CFB8FAF0();
    if (v9)
    {
      do
      {
        if (sub_1CFB8FA60())
        {
        }

        else
        {
          v11 = sub_1CFB8FA70();

          if ((v11 & 1) == 0)
          {
            v12 = 0;
            goto LABEL_13;
          }
        }

        sub_1CFB8FAF0();
      }

      while (v10);
    }

    v12 = 1;
LABEL_13:
  }

  else
  {
    v12 = 1;
  }

  v13 = [v1 contactSearchType];
  if (v13 == 3)
  {
LABEL_17:
    if (v12)
    {
      goto LABEL_18;
    }

LABEL_21:
    v17 = objc_opt_self();
    MPContactSearchManager.searchString.getter();
    v18 = sub_1CFB8FA80();

    v16 = [v17 predicateForContactsMatchingFullTextSearch:v18 containerIdentifiers:0 groupIdentifiers:0];

    goto LABEL_22;
  }

  if (v13 != 2)
  {
    if (v13 != 1)
    {
      goto LABEL_21;
    }

    goto LABEL_17;
  }

  if (!v12)
  {
    goto LABEL_21;
  }

LABEL_18:
  v14 = objc_opt_self();
  MPContactSearchManager.searchString.getter();
  v15 = sub_1CFB8FA80();

  v16 = [v14 predicateForContactsMatchingSmartDialerString_];

  if (!v16)
  {
    v16 = [v2 predicateWithValue_];
  }

LABEL_22:

  return v16;
}

id sub_1CFB75348(void *a1, uint64_t a2, _BYTE *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (MPContactSearchManager.searchString.getter() == a5 && v15 == a6)
  {
  }

  else
  {
    v16 = sub_1CFB90010();

    if ((v16 & 1) == 0)
    {
LABEL_6:
      *a3 = 1;
      result = swift_beginAccess();
      *(a7 + 16) = 1;
      return result;
    }
  }

  if (sub_1CFB8FC10())
  {
    goto LABEL_6;
  }

  if (![a4 contactSearchType] || ((v18 = objc_msgSend(a1, sel_phoneNumbers), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EC828, &qword_1CFB922D8), v19 = sub_1CFB8FB30(), v18, v19 >> 62) ? (v20 = sub_1CFB8FFB0()) : (v20 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10)), result = , v20))
  {
    result = [a4 isMatchInfoValidWithMatchInfo_];
    if (result)
    {
      [objc_allocWithZone(MEMORY[0x1E69BDCF8]) initWithContact:a1 matchInfo:a2 preferredPhoneNumber:0];
      v21 = swift_beginAccess();
      MEMORY[0x1D386D560](v21);
      if (*((*(a8 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a8 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v22 = *((*(a8 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_1CFB8FB50();
      }

      sub_1CFB8FB70();
      return swift_endAccess();
    }
  }

  return result;
}

void sub_1CFB75554(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);

  v10 = a2;
  v9 = a3;
  v8(v10, v9, a4);
}

uint64_t sub_1CFB755E8()
{
  v25 = sub_1CFB738B4();
  if (v25 >> 62)
  {
    goto LABEL_19;
  }

  for (i = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1CFB8FFB0())
  {
    v0 = 0;
    v1 = v25 & 0xFFFFFFFFFFFFFF8;
    v22 = *MEMORY[0x1E695C330];
    while (1)
    {
      if ((v25 & 0xC000000000000001) != 0)
      {
        v4 = MEMORY[0x1D386D910](v0, v25);
      }

      else
      {
        if (v0 >= *(v1 + 16))
        {
          goto LABEL_17;
        }

        v4 = *(v25 + 8 * v0 + 32);
      }

      v5 = v4;
      v6 = v0 + 1;
      if (__OFADD__(v0, 1))
      {
        break;
      }

      v7 = [v4 matchInfo];
      if (v7)
      {
        v8 = v7;
        v9 = [v7 matchedProperties];

        if (v9)
        {
          sub_1CFB8FA40();

          v10 = objc_opt_self();
          v11 = sub_1CFB8FA30();

          v23 = v10;
          v12 = [v10 matchedProperties:v11 contains:v22];

          if (v12)
          {
            v13 = [v5 contact];
            v27[0] = 0;
            v27[1] = 0xE000000000000000;
            v14 = [v21 accessQueue];
            v15 = swift_allocObject();
            *(v15 + 16) = v27;
            *(v15 + 24) = v21;
            v16 = swift_allocObject();
            *(v16 + 16) = sub_1CFB77450;
            *(v16 + 24) = v15;
            aBlock[4] = sub_1CFB77448;
            aBlock[5] = v16;
            aBlock[0] = MEMORY[0x1E69E9820];
            aBlock[1] = 1107296256;
            aBlock[2] = sub_1CFB73458;
            aBlock[3] = &block_descriptor_137;
            v17 = _Block_copy(aBlock);
            v18 = v21;

            dispatch_sync(v14, v17);

            _Block_release(v17);
            isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

            if (isEscapingClosureAtFileLocation)
            {
              goto LABEL_18;
            }

            v2 = sub_1CFB8FA80();

            v3 = [v23 matchedPhoneNumberFor:v13 searchText:v2 allowMatchingLastFour:{objc_msgSend(v18, sel_contactSearchType) != 0}];

            [v5 setPreferredPhoneNumber_];
            v1 = v25 & 0xFFFFFFFFFFFFFF8;
          }
        }
      }

      ++v0;
      if (v6 == i)
      {
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    ;
  }
}
uint64_t sub_1B9F1EB3C()
{
  result = sub_1B9F1EB5C();
  qword_1EDC69618 = result;
  return result;
}

uint64_t sub_1B9F1EB5C()
{
  v33 = objc_opt_self();
  v0 = [v33 sortedCategories];
  sub_1B9F0ADF8(0, &qword_1EDC6B5C0);
  v1 = sub_1BA4A6B08();

  v37 = v1;
  if (v1 >> 62)
  {
LABEL_42:
    v2 = sub_1BA4A7CC8();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = &selRef_createHKUnitPreferenceController;
  if (v2)
  {
    v4 = 0;
    while (1)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x1BFAF2860](v4, v1);
      }

      else
      {
        if (v4 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_41;
        }

        v5 = *(v1 + 8 * v4 + 32);
      }

      v6 = v5;
      v7 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
LABEL_40:
        __break(1u);
LABEL_41:
        __break(1u);
        goto LABEL_42;
      }

      if ([v5 categoryID] == 14)
      {
        break;
      }

      ++v4;
      if (v7 == v2)
      {
        goto LABEL_13;
      }
    }

    v29 = v6;
    v8 = sub_1B9F2A2D8(&v37);

    if (v37 >> 62)
    {
      v30 = sub_1BA4A7CC8();
      if (v30 >= v8)
      {
LABEL_33:
        sub_1B9F2A5DC(v8, v30);
        v8 = v29;
        MEMORY[0x1BFAF1510]();
        if (*((v37 & 0xFFFFFFFFFFFFFF8) + 0x10) < *((v37 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_34;
        }

        goto LABEL_45;
      }
    }

    else
    {
      v30 = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v30 >= v8)
      {
        goto LABEL_33;
      }
    }

    __break(1u);
LABEL_45:
    sub_1BA4A6B68();
LABEL_34:
    sub_1BA4A6BB8();

    v1 = v37;
    if (!(v37 >> 62))
    {
      goto LABEL_14;
    }

    goto LABEL_35;
  }

LABEL_13:

  v8 = 0;
  if (!(v1 >> 62))
  {
LABEL_14:
    v9 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v32 = v8;
    if (!v9)
    {
      goto LABEL_36;
    }

    goto LABEL_15;
  }

LABEL_35:
  v9 = sub_1BA4A7CC8();
  v32 = v8;
  if (!v9)
  {
LABEL_36:
    v11 = MEMORY[0x1E69E7CC0];
LABEL_37:

    return v11;
  }

LABEL_15:
  v10 = 0;
  v11 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    if ((v1 & 0xC000000000000001) != 0)
    {
      v12 = MEMORY[0x1BFAF2860](v10, v1);
    }

    else
    {
      if (v10 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_39;
      }

      v12 = *(v1 + 8 * v10 + 32);
    }

    v13 = v12;
    v14 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      __break(1u);
LABEL_39:
      __break(1u);
      goto LABEL_40;
    }

    [v12 v3[332]];
    v15 = HKDisplayCategoryIdentifierToString();
    if (!v15)
    {
      break;
    }

    v16 = v15;
    v17 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    v35 = v18;
    v36 = v17;

    v19 = [v13 v3[332]];
    v20 = [v13 displayName];
    v21 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    v34 = v22;

    v23 = [v33 categoryWithID_];
    if (v23)
    {
      v24 = v23;
      v25 = sub_1BA4A7258();

      v13 = v24;
    }

    else
    {
      v25 = MEMORY[0x1E69E7CC0];
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v11 = sub_1B9F2A754(0, *(v11 + 2) + 1, 1, v11);
    }

    v27 = *(v11 + 2);
    v26 = *(v11 + 3);
    if (v27 >= v26 >> 1)
    {
      v11 = sub_1B9F2A754((v26 > 1), v27 + 1, 1, v11);
    }

    *(v11 + 2) = v27 + 1;
    v28 = &v11[48 * v27];
    *(v28 + 4) = v36;
    *(v28 + 5) = v35;
    *(v28 + 6) = v19;
    *(v28 + 7) = v21;
    *(v28 + 8) = v34;
    *(v28 + 9) = v25;
    ++v10;
    v3 = &selRef_createHKUnitPreferenceController;
    if (v14 == v9)
    {
      goto LABEL_37;
    }
  }

  result = sub_1BA4A8018();
  __break(1u);
  return result;
}

unint64_t sub_1B9F1EFC4(unint64_t a1)
{
  v2 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_17:
    v3 = sub_1BA4A7CC8();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = 0;
  while (1)
  {
    if (v3 == v4)
    {
      return 0;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x1BFAF2860](v4, a1);
    }

    else
    {
      if (v4 >= *(v2 + 16))
      {
        __break(1u);
LABEL_16:
        __break(1u);
        goto LABEL_17;
      }

      v5 = *(a1 + 8 * v4 + 32);
    }

    v6 = v5;
    sub_1B9F0ADF8(0, &qword_1EDC6E350);
    v7 = sub_1BA4A7798();

    if (v7)
    {
      return v4;
    }

    if (__OFADD__(v4++, 1))
    {
      goto LABEL_16;
    }
  }
}

uint64_t sub_1B9F1F0EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v3 = a3;
  v6 = a2;
  v10 = *v4;
  v4 = (*v4 & 0xFFFFFFFFFFFFFF8);
  v7 = v4 + 4;
  v5 = &v4[a1 + 4];
  sub_1B9F0ADF8(0, &qword_1EDC6B5C0);
  result = swift_arrayDestroy();
  v12 = __OFSUB__(v3, v9);
  v9 = v3 - v9;
  if (v12)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v9)
  {
    goto LABEL_17;
  }

  v8 = v10 >> 62;
  if (!(v10 >> 62))
  {
    result = v4[2];
    v13 = result - v6;
    if (!__OFSUB__(result, v6))
    {
      goto LABEL_6;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_21:
  result = sub_1BA4A7CC8();
  v13 = result - v6;
  if (__OFSUB__(result, v6))
  {
    goto LABEL_23;
  }

LABEL_6:
  v14 = (v5 + 8 * v3);
  v15 = &v7[v6];
  if (v14 != v15 || v14 >= &v15[8 * v13])
  {
    memmove(v14, v15, 8 * v13);
  }

  if (v8)
  {
    result = sub_1BA4A7CC8();
  }

  else
  {
    result = v4[2];
  }

  if (__OFADD__(result, v9))
  {
    goto LABEL_24;
  }

  v4[2] = result + v9;
LABEL_17:
  if (v3 > 0)
  {
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_1B9F1F208(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1B9F2A8A8();
    v3 = sub_1BA4A7D98();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (1)
    {
      v10 = *(v6 + 8 * v4);
      sub_1BA4A8488();
      MEMORY[0x1BFAF2ED0](v10);
      result = sub_1BA4A84D8();
      v12 = ~(-1 << *(v3 + 32));
      v13 = result & v12;
      v14 = (result & v12) >> 6;
      v15 = *(v5 + 8 * v14);
      v16 = 1 << (result & v12);
      v17 = *(v3 + 48);
      if ((v16 & v15) != 0)
      {
        while (*(v17 + 8 * v13) != v10)
        {
          v13 = (v13 + 1) & v12;
          v14 = v13 >> 6;
          v15 = *(v5 + 8 * (v13 >> 6));
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            goto LABEL_3;
          }
        }
      }

      else
      {
LABEL_3:
        *(v5 + 8 * v14) = v16 | v15;
        *(v17 + 8 * v13) = v10;
        v7 = *(v3 + 16);
        v8 = __OFADD__(v7, 1);
        v9 = v7 + 1;
        if (v8)
        {
          __break(1u);
          return result;
        }

        *(v3 + 16) = v9;
      }

      if (++v4 == v1)
      {
        return v3;
      }
    }
  }

  return MEMORY[0x1E69E7CD0];
}

void sub_1B9F1F380()
{
  sub_1B9F2AC84(319, &qword_1EDC6B6F0, sub_1B9F2ACE8, MEMORY[0x1E695C070]);
  if (v0 <= 0x3F)
  {
    sub_1B9F2AC84(319, &qword_1EDC6B710, sub_1B9F1F4BC, MEMORY[0x1E695C070]);
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

unint64_t sub_1B9F1F4BC()
{
  result = qword_1EDC6E248;
  if (!qword_1EDC6E248)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EDC6E248);
  }

  return result;
}

uint64_t NSBundle.getPluginAppDelegateObject<A>(as:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v5 = sub_1BA4A3EA8();
  v53 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1BA4A7AA8();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v44 - v10;
  v12 = NSBundle.getPluginAppDelegateClass()();
  v13 = v9;
  v51 = v5;
  v52 = a2;
  v55 = v12;
  v56 = v14;
  v50 = v14;
  sub_1B9F1FA44();
  swift_unknownObjectRetain();
  v15 = v12;
  if (swift_dynamicCast())
  {
    swift_unknownObjectRelease();
    v16 = *(a1 - 8);
    v17 = *(v16 + 56);
    v17(v11, 0, 1, a1);
    v18 = v52;
    (*(v16 + 32))(v52, v11, a1);
    return (v17)(v18, 0, 1, a1);
  }

  else
  {
    v20 = *(a1 - 8);
    v21 = *(v20 + 56);
    v22 = a1;
    v48 = v20 + 56;
    v49 = v21;
    v21(v11, 1, 1, a1);
    (*(v13 + 8))(v11, v8);
    v23 = v7;
    sub_1BA4A3E08();
    swift_unknownObjectRetain();
    v24 = v2;
    v25 = sub_1BA4A3E88();
    v26 = sub_1BA4A6FC8();
    swift_unknownObjectRelease();

    v27 = os_log_type_enabled(v25, v26);
    v28 = v52;
    if (v27)
    {
      v47 = v25;
      v29 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v54 = v45;
      *v29 = 136446722;
      v30 = [v24 bundleIdentifier];
      v46 = v26;
      if (v30)
      {
        v31 = v30;
        v32 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
        v34 = v33;
      }

      else
      {
        v34 = 0xE500000000000000;
        v32 = 0x3E6C696E3CLL;
      }

      v35 = sub_1B9F0B82C(v32, v34, &v54);

      *(v29 + 4) = v35;
      *(v29 + 12) = 2082;
      v55 = v15;
      v56 = v50;
      swift_unknownObjectRetain();
      v36 = sub_1BA4A6808();
      v38 = sub_1B9F0B82C(v36, v37, &v54);

      *(v29 + 14) = v38;
      *(v29 + 22) = 2082;
      v55 = v22;
      swift_getMetatypeMetadata();
      v39 = sub_1BA4A6808();
      v41 = sub_1B9F0B82C(v39, v40, &v54);

      *(v29 + 24) = v41;
      v42 = v47;
      _os_log_impl(&dword_1B9F07000, v47, v46, "[%{public}s]: %{public}s cannot be cast to %{public}s", v29, 0x20u);
      v43 = v45;
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v43, -1, -1);
      MEMORY[0x1BFAF43A0](v29, -1, -1);
      swift_unknownObjectRelease();
    }

    else
    {

      swift_unknownObjectRelease();
    }

    (*(v53 + 8))(v23, v51);
    return v49(v28, 1, 1, v22);
  }
}

unint64_t sub_1B9F1FA44()
{
  result = qword_1EDC681A8[0];
  if (!qword_1EDC681A8[0])
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, qword_1EDC681A8);
  }

  return result;
}

id sub_1B9F1FB00(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v12 = v11;
  v11[OBJC_IVAR____TtC18HealthExperienceUI16CoreDataTabGroup_allowsChildrenHiding] = 0;
  __swift_project_boxed_opaque_existential_1(a3, a3[3]);
  v16 = sub_1BA4A1B68();
  sub_1B9F1C048(0, &qword_1EDC6B400);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1BA4B8B60;
  v18 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  v19 = sub_1BA4A6758();
  v20 = [v18 initWithKey:v19 ascending:1];

  *(v17 + 32) = v20;
  v21 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  v22 = sub_1BA4A6758();
  v23 = [v21 initWithKey:v22 ascending:0];

  *(v17 + 40) = v23;
  v24 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  v25 = sub_1BA4A6758();
  v26 = [v24 initWithKey:v25 ascending:1 selector:sel_localizedStandardCompare_];

  *(v17 + 48) = v26;
  v27 = a1;
  v28 = sub_1BA4A7558();

  *&v12[OBJC_IVAR____TtC18HealthExperienceUI16CoreDataTabGroup_fetchedResultsController] = v28;
  *&v12[OBJC_IVAR____TtC18HealthExperienceUI16CoreDataTabGroup_healthStore] = a2;
  sub_1B9F0A534(a3, &v12[OBJC_IVAR____TtC18HealthExperienceUI16CoreDataTabGroup_healthExperienceStore]);
  sub_1B9F0A534(a4, &v12[OBJC_IVAR____TtC18HealthExperienceUI16CoreDataTabGroup_pinnedContentManager]);
  v29 = v28;
  v39 = a2;
  v30 = sub_1BA4A6758();

  v31 = sub_1BA4A6758();

  sub_1B9F0ADF8(0, &qword_1EDC5E230);
  v32 = sub_1BA4A6AE8();
  if (a10)
  {
    aBlock[4] = a10;
    aBlock[5] = a11;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1B9F7EBBC;
    aBlock[3] = &block_descriptor_30;
    v33 = _Block_copy(aBlock);
  }

  else
  {
    v33 = 0;
  }

  v34 = type metadata accessor for CoreDataTabGroup();
  v42.receiver = v12;
  v42.super_class = v34;
  v35 = objc_msgSendSuper2(&v42, sel_initWithTitle_image_identifier_children_viewControllerProvider_, v30, a7, v31, v32, v33);
  _Block_release(v33);

  v36 = v35;
  [v29 setDelegate_];
  sub_1B9F1FF84();

  sub_1B9F0E310(a10);
  __swift_destroy_boxed_opaque_existential_1(a4);
  __swift_destroy_boxed_opaque_existential_1(a3);
  return v36;
}

id CoreDataTabGroup.init(predicate:healthStore:healthExperienceStore:pinnedContentManager:title:image:identifier:viewControllerProvider:)(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v12 = sub_1B9F1FB00(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11);

  return v12;
}

void sub_1B9F1FF2C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, uint64_t))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x1E69E7CA0] + 8);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1B9F1FF84()
{
  v8[1] = *MEMORY[0x1E69E9840];
  v1 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI16CoreDataTabGroup_fetchedResultsController);
  v8[0] = 0;
  if ([v1 performFetch_])
  {
    v2 = v8[0];
  }

  else
  {
    v3 = v8[0];
    v4 = sub_1BA4A1488();

    swift_willThrow();
  }

  v5 = MEMORY[0x1E69E7D40];
  v6 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0xC0))(v2);
  return (*((*v5 & *v0) + 0xB8))(v6);
}

void sub_1B9F20094()
{
  v1 = v0;
  v2 = sub_1BA4A1798();
  v29 = *(v2 - 8);
  v30 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v28 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = [*&v0[OBJC_IVAR____TtC18HealthExperienceUI16CoreDataTabGroup_fetchedResultsController] fetchedObjects];
  v5 = MEMORY[0x1E69E7CC0];
  if (v4)
  {
    v6 = v4;
    sub_1BA4A27B8();
    v7 = sub_1BA4A6B08();

    v33 = v5;
    if (v7 >> 62)
    {
      goto LABEL_17;
    }

    for (i = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1BA4A7CC8())
    {
      v9 = 0;
      while (1)
      {
        if ((v7 & 0xC000000000000001) != 0)
        {
          v10 = MEMORY[0x1BFAF2860](v9, v7);
        }

        else
        {
          if (v9 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_16;
          }

          v10 = *(v7 + 8 * v9 + 32);
        }

        v11 = v10;
        v12 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          break;
        }

        v32 = v10;
        sub_1BA140D1C(&v32, v1, &v31);

        if (v31)
        {
          MEMORY[0x1BFAF1510]();
          if (*((v33 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v33 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v27 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
            sub_1BA4A6B68();
          }

          sub_1BA4A6BB8();
          v5 = v33;
        }

        ++v9;
        if (v12 == i)
        {
          goto LABEL_18;
        }
      }

      __break(1u);
LABEL_16:
      __break(1u);
LABEL_17:
      ;
    }

LABEL_18:
  }

  sub_1B9F0ADF8(0, &unk_1EDC5E0B0);
  v13 = sub_1BA4A6AE8();
  [v1 setSidebarActions_];

  if (v5 >> 62)
  {
    v14 = sub_1BA4A7CC8();
  }

  else
  {
    v14 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v14)
  {
    v15 = [v1 children];
    sub_1B9F0ADF8(0, &qword_1EDC5E230);
    v16 = sub_1BA4A6B08();

    if (v16 >> 62)
    {
      v17 = sub_1BA4A7CC8();
    }

    else
    {
      v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (!v17)
    {
      v18 = v28;
      sub_1BA4A1788();
      sub_1BA4A1748();
      (*(v29 + 8))(v18, v30);
      v19 = objc_allocWithZone(MEMORY[0x1E69DCFE0]);
      v20 = sub_1BA4A6758();
      v21 = sub_1BA4A6758();

      v22 = [v19 initWithTitle:v20 image:0 identifier:v21 viewControllerProvider:0];

      sub_1B9F1C048(0, &qword_1EDC6B400);
      v23 = swift_allocObject();
      *(v23 + 16) = xmmword_1BA4B5470;
      *(v23 + 32) = v22;
      v24 = v22;
      v25 = sub_1BA4A6AE8();

      [v1 setChildren_];

      v26 = sub_1BA4A6AE8();
      [v1 setChildren_];
    }
  }
}

void sub_1B9F204F0()
{
  sub_1BA4A2BF8();
  if (v0 <= 0x3F)
  {
    sub_1B9F20584(319);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B9F205B8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1B9F2061C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1B9F20680(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t sub_1B9F206D4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

unint64_t sub_1B9F20744()
{
  result = qword_1EDC6DBF0;
  if (!qword_1EDC6DBF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC6DBF0);
  }

  return result;
}

uint64_t sub_1B9F20798()
{
  if (*v0)
  {
    return 0xD000000000000013;
  }

  else
  {
    return 0x69546E6F69746361;
  }
}

uint64_t sub_1B9F2080C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B9F20854(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B9F2089C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B9F208E4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t getEnumTagSinglePayload for SummarySharingSelectionSuggestedMedicationsCategory(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_1B9F209BC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B9F20A24(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B9F20A8C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B9F20AEC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1B9F20B4C()
{
  if (!qword_1EDC5E8B8)
  {
    sub_1B9F0ADF8(255, &unk_1EDC5E2D0);
    v0 = sub_1BA4A65E8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC5E8B8);
    }
  }
}

uint64_t sub_1B9F20BB4(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_1B9F2B074(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1B9F20C20(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_1B9F2B074(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1B9F20C7C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1B9F20CDC()
{
  v1 = v0;
  v2 = [*&v0[OBJC_IVAR____TtC18HealthExperienceUI16CoreDataTabGroup_fetchedResultsController] fetchedObjects];
  v3 = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v4 = v2;
    sub_1BA4A27B8();
    v5 = sub_1BA4A6B08();

    v14 = v3;
    if (v5 >> 62)
    {
      goto LABEL_17;
    }

    for (i = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1BA4A7CC8())
    {
      v7 = 0;
      while (1)
      {
        if ((v5 & 0xC000000000000001) != 0)
        {
          v8 = MEMORY[0x1BFAF2860](v7, v5);
        }

        else
        {
          if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_16;
          }

          v8 = *(v5 + 8 * v7 + 32);
        }

        v9 = v8;
        v10 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          break;
        }

        v13 = v8;
        sub_1B9F2C3A0(&v13, v1, &v12);

        if (v12)
        {
          MEMORY[0x1BFAF1510]();
          if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_1BA4A6B68();
          }

          sub_1BA4A6BB8();
        }

        ++v7;
        if (v10 == i)
        {
          goto LABEL_18;
        }
      }

      __break(1u);
LABEL_16:
      __break(1u);
LABEL_17:
      ;
    }

LABEL_18:
  }

  sub_1B9F0ADF8(0, &qword_1EDC5E230);
  v11 = sub_1BA4A6AE8();

  [v1 setChildren_];
}

uint64_t sub_1B9F20EEC(uint64_t a1, unint64_t a2)
{
  v5 = sub_1BA4A3EA8();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA4A0EB8();
  swift_allocObject();
  sub_1BA4A0EA8();
  v9 = type metadata accessor for TabModel(0);
  sub_1BA232990(&qword_1EDC5F938, type metadata accessor for TabModel);
  sub_1BA4A0E98();
  if (v2)
  {
    v29 = v5;

    sub_1BA4A3E28();
    v10 = v2;
    v11 = sub_1BA4A3E88();
    v12 = sub_1BA4A6FA8();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v27 = a1;
      v15 = v14;
      v31 = v14;
      *v13 = 136315394;
      v30 = v9;
      sub_1B9F2D04C(0, &qword_1EDC5F928, type metadata accessor for TabModel);
      v16 = sub_1BA4A6808();
      v18 = sub_1B9F0B82C(v16, v17, &v31);
      v28 = a2;
      v19 = v18;

      *(v13 + 4) = v19;
      *(v13 + 12) = 2082;
      v30 = v2;
      v20 = v2;
      sub_1B9FED358();
      v21 = sub_1BA4A6808();
      v23 = sub_1B9F0B82C(v21, v22, &v31);

      *(v13 + 14) = v23;
      a2 = v28;
      _os_log_impl(&dword_1B9F07000, v11, v12, "Failed to decode data for %s with error: %{public}s", v13, 0x16u);
      swift_arrayDestroy();
      v24 = v15;
      a1 = v27;
      MEMORY[0x1BFAF43A0](v24, -1, -1);
      MEMORY[0x1BFAF43A0](v13, -1, -1);
    }

    (*(v6 + 8))(v8, v29);
    sub_1B9F21374();
    swift_allocError();
    *v25 = v2 | 0x4000000000000000;
    swift_willThrow();
    return sub_1B9F2BB4C(a1, a2);
  }

  else
  {
    sub_1B9F2BB4C(a1, a2);
  }
}

uint64_t sub_1B9F21244(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v6 = sub_1B9F2D098(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_1BA4A7EB8();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_1BA4A6938();
        if (!v10)
        {
          return MEMORY[0x1E69E7CC0];
        }

        v11 = v10;
        v7 = sub_1B9F2D098(v10, 0);
        result = sub_1BA4A7DB8();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

unint64_t sub_1B9F21374()
{
  result = qword_1EDC67BE0;
  if (!qword_1EDC67BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC67BE0);
  }

  return result;
}

uint64_t sub_1B9F213C8(uint64_t *a1)
{
  v2 = v1;
  v3 = *a1;
  v4 = a1[4];
  ObjectType = swift_getObjectType();
  v18[0] = v3;
  v6 = (*(v4 + 24))(ObjectType, v4);
  v7 = *(v2 + 24);
  sub_1B9F0A534(v2 + 32, v18);
  v8 = objc_allocWithZone(MEMORY[0x1E696C0C0]);
  v9 = v7;
  v10 = v6;
  v11 = [v8 initWithHealthStore_];
  v12 = [objc_allocWithZone(MEMORY[0x1E696BEF8]) init];
  sub_1B9F0A534(v18, v17);
  type metadata accessor for HealthAppInteractionAnalyticEvent();
  v13 = swift_allocObject();
  v14 = v9;
  v15 = v10;
  sub_1BA10F194(v14, v15, 0x654868636E75616CLL, 0xEF70704168746C61, 0, 0, v17, v11, v14, v12, v15, v13);

  __swift_destroy_boxed_opaque_existential_1(v18);
  sub_1B9F21D90();
}

char *sub_1B9F21540(char *result, int64_t a2, char a3, char *a4)
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
    sub_1B9F2180C(0, &qword_1EDC5DC90, &type metadata for ArrayDataSourceSection, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_1B9F21678(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1B9F216C8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1B9F21718(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void))
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

void sub_1B9F2176C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1B9F217BC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1B9F2180C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

char *CompoundDataSourceCollectionViewController.init(dataSource:)(uint64_t a1)
{
  v3 = &v1[OBJC_IVAR____TtC18HealthExperienceUI42CompoundDataSourceCollectionViewController_dataSourceProvider];
  *v3 = 0u;
  *(v3 + 1) = 0u;
  *(v3 + 4) = 0;
  v1[OBJC_IVAR____TtC18HealthExperienceUI42CompoundDataSourceCollectionViewController_usesAdaptiveMargins] = 1;
  *&v1[OBJC_IVAR____TtC18HealthExperienceUI42CompoundDataSourceCollectionViewController_collectionViewBackgroundColor] = 0;
  *&v1[OBJC_IVAR____TtC18HealthExperienceUI42CompoundDataSourceCollectionViewController____lazy_storage___dataSource] = 0;
  *&v1[OBJC_IVAR____TtC18HealthExperienceUI42CompoundDataSourceCollectionViewController_dataSourceAdaptor] = 0;
  v4 = [objc_allocWithZone(MEMORY[0x1E69DC840]) init];
  v7.receiver = v1;
  v7.super_class = type metadata accessor for CompoundDataSourceCollectionViewController();
  v5 = objc_msgSendSuper2(&v7, sel_initWithCollectionViewLayout_, v4);

  *&v5[OBJC_IVAR____TtC18HealthExperienceUI42CompoundDataSourceCollectionViewController____lazy_storage___dataSource] = a1;

  return v5;
}

id sub_1B9F2192C()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI20SearchViewController____lazy_storage___searchController;
  v2 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI20SearchViewController____lazy_storage___searchController);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI20SearchViewController____lazy_storage___searchController);
  }

  else
  {
    v4 = sub_1B9F1E91C(v0);
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

unint64_t sub_1B9F21990()
{
  v1 = 0x656C746974;
  v2 = 0xD000000000000013;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000010;
  }

  if (*v0)
  {
    v1 = 0xD000000000000013;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

void __swiftcall UINavigationController.rootViewController()(UIViewController_optional *__return_ptr retstr)
{
  v2 = [v1 viewControllers];
  sub_1B9F21ADC();
  v3 = sub_1BA4A6B08();

  if (v3 >> 62)
  {
    if (!sub_1BA4A7CC8())
    {
      goto LABEL_7;
    }
  }

  else if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_7:

    return;
  }

  if ((v3 & 0xC000000000000001) != 0)
  {
    MEMORY[0x1BFAF2860](0, v3);
    goto LABEL_7;
  }

  if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v4 = *(v3 + 32);
    goto LABEL_7;
  }

  __break(1u);
}

unint64_t sub_1B9F21ADC()
{
  result = qword_1EDC6B5D0;
  if (!qword_1EDC6B5D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDC6B5D0);
  }

  return result;
}

unint64_t sub_1B9F21B28()
{
  result = qword_1EDC5E660;
  if (!qword_1EDC5E660)
  {
    sub_1B9F3D4EC(255, &qword_1EDC5E670, MEMORY[0x1E69E8030], MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC5E660);
  }

  return result;
}

uint64_t sub_1B9F21BB0(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

void sub_1B9F21BF8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1B9F21C5C(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
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

void sub_1B9F21CC8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    a5(255, a3, a4);
    v6 = sub_1BA4A7AA8();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1B9F21D24(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
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

uint64_t sub_1B9F21D90()
{
  v1 = v0;
  v2 = *v0;
  v3 = sub_1BA4A3EA8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  LODWORD(v7) = HKImproveHealthAndActivityAnalyticsAllowed();
  sub_1BA4A3E58();
  v8 = sub_1BA4A3E88();
  v9 = sub_1BA4A6FC8();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    aBlock[0] = v11;
    *v10 = 136315650;
    v12 = sub_1BA4A85D8();
    v27 = v2;
    v14 = sub_1B9F0B82C(v12, v13, aBlock);
    v26 = v3;
    v15 = v7;
    v16 = v14;

    *(v10 + 4) = v16;
    *(v10 + 12) = 2080;
    swift_beginAccess();
    v17 = qword_1EBBF0E80;
    v7 = off_1EBBF0E88;

    v18 = sub_1B9F0B82C(v17, v7, aBlock);
    LOBYTE(v7) = v15;

    *(v10 + 14) = v18;
    v2 = v27;
    *(v10 + 22) = 1024;
    *(v10 + 24) = v15;
    _os_log_impl(&dword_1B9F07000, v8, v9, "%s Creating analytic event %s. IHA: %{BOOL}d", v10, 0x1Cu);
    swift_arrayDestroy();
    MEMORY[0x1BFAF43A0](v11, -1, -1);
    MEMORY[0x1BFAF43A0](v10, -1, -1);

    (*(v4 + 8))(v6, v26);
  }

  else
  {

    (*(v4 + 8))(v6, v3);
  }

  v19 = swift_allocObject();
  *(v19 + 16) = v2;
  v20 = swift_allocObject();
  *(v20 + 16) = v1;
  *(v20 + 24) = v7;
  *(v20 + 32) = sub_1BA3475A0;
  *(v20 + 40) = v19;
  v21 = v1[13];
  v22 = swift_allocObject();
  v22[2] = sub_1B9F22464;
  v22[3] = v20;
  v22[4] = v2;
  aBlock[4] = sub_1B9F222B0;
  aBlock[5] = v22;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B9F3904C;
  aBlock[3] = &block_descriptor_17;
  v23 = _Block_copy(aBlock);

  [v21 numberOfDeviceContextsPerDeviceType_];
  _Block_release(v23);
}

uint64_t sub_1B9F22144()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1B9F221B0(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  v6 = sub_1BA4A1018();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA4A0FC8();
  v10 = a1;
  a4();

  return (*(v7 + 8))(v9, v6);
}

id sub_1B9F222B4(uint64_t a1, const char *a2, SEL *a3)
{
  v6 = v3;
  v7 = sub_1BA4A3EA8();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA4A3E28();
  v11 = sub_1BA4A3E88();
  v12 = sub_1BA4A6FC8();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_1B9F07000, v11, v12, a2, v13, 2u);
    MEMORY[0x1BFAF43A0](v13, -1, -1);
  }

  (*(v8 + 8))(v10, v7);
  return [v6 *a3];
}

uint64_t sub_1B9F2240C(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

void sub_1B9F22468(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1B9F224CC(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
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

void sub_1B9F22538(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t objectdestroyTm()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t objectdestroyTm_0()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t objectdestroyTm_1()
{
  v1 = type metadata accessor for HostedPromptTileView();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;

  v6 = *(type metadata accessor for PromptTileViewModel(0) + 32);
  v7 = sub_1BA4A2BF8();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(v0 + v3 + v6, 1, v7))
  {
    (*(v8 + 8))(v5 + v6, v7);
  }

  v9 = v5 + *(v1 + 36);
  if (*v9)
  {

    if (*(v9 + 32))
    {
      __swift_destroy_boxed_opaque_existential_1(v9 + 8);
    }

    v10 = *(v9 + 56);
    if (v10 >> 60 != 15)
    {
      sub_1B9F2BB4C(*(v9 + 48), v10);
    }
  }

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t objectdestroyTm_2()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t objectdestroyTm_3()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t objectdestroyTm_4()
{
  if (*(v0 + 16))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t objectdestroyTm_5()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t objectdestroyTm_6()
{

  if (*(v0 + 96))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 168, 7);
}

uint64_t objectdestroyTm_7()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t objectdestroyTm_8(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(*(v2 - 8) + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(*(v2 - 8) + 64);

  v6 = v1 + v4 + *(v2 + 20);
  v7 = sub_1BA4A2B98();
  (*(*(v7 - 8) + 8))(v6, v7);
  v8 = *(type metadata accessor for SnidgetSwiftChartViewModel.DiagramHighlight(0) + 24);
  v9 = sub_1BA4A1728();
  v10 = *(v9 - 8);
  if (!(*(v10 + 48))(v6 + v8, 1, v9))
  {
    (*(v10 + 8))(v6 + v8, v9);
  }

  v11 = *(v2 + 24);
  v12 = sub_1BA4A1898();
  (*(*(v12 - 8) + 8))(v1 + v4 + v11, v12);

  return MEMORY[0x1EEE6BDD0](v1, v4 + v5, v3 | 7);
}

uint64_t objectdestroyTm_9()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t objectdestroyTm_10()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

uint64_t objectdestroyTm_11()
{

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t objectdestroyTm_12(uint64_t a1)
{

  return MEMORY[0x1EEE6BDD0](v1, a1, 7);
}

uint64_t sub_1B9F22C7C(uint64_t a1, unint64_t a2, char a3, void (*a4)(uint64_t))
{
  v8 = sub_1B9F22E48();
  swift_beginAccess();
  *(a1 + 216) = v8;

  if (a2)
  {
    v9 = a2;
  }

  else
  {
    v9 = sub_1B9FDC028(MEMORY[0x1E69E7CC0]);
  }

  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v15 = *(a1 + 216);
  *(a1 + 216) = 0x8000000000000000;
  sub_1BA347804(v9, sub_1BA346F94, 0, isUniquelyReferenced_nonNull_native, &v15);

  *(a1 + 216) = v15;
  swift_endAccess();
  if (a3)
  {
    v11 = sub_1BA346478();
    swift_beginAccess();
    v12 = swift_isUniquelyReferenced_nonNull_native();
    v15 = *(a1 + 216);
    *(a1 + 216) = 0x8000000000000000;
    sub_1BA347804(v11, sub_1BA346F94, 0, v12, &v15);

    *(a1 + 216) = v15;
    swift_endAccess();
  }

  a4(v13);
}

void *sub_1B9F22E48()
{
  v1 = v0;
  v2 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  v4 = v3;
  v5 = v0[15];
  v6 = [v5 activePairedDeviceOSBuildNumber];
  if (v6)
  {
    v8 = v6;
    v9 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    v11 = v10;

    v12 = MEMORY[0x1E69E6158];
  }

  else
  {
    v9 = 0;
    v11 = 0;
    v12 = 0;
    v45 = 0;
  }

  v43 = v9;
  v44 = v11;
  v46 = v12;
  sub_1B9F2240C(&qword_1EDC69CD0, v7, type metadata accessor for HealthAppInteractionAnalyticEvent);
  sub_1BA4A2CC8();
  sub_1B9F23224(&v43);
  v13 = sub_1BA4A6758();

  v14 = MEMORY[0x1E69E7CC8];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v43 = v14;
  sub_1B9F36508(v13, v2, v4, isUniquelyReferenced_nonNull_native);

  v16 = v43;
  v17 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  v19 = v18;
  v20 = [v5 activePairedDeviceProductType];
  if (v20)
  {
    v21 = v20;
    v22 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    v24 = v23;

    v25 = MEMORY[0x1E69E6158];
  }

  else
  {
    v22 = 0;
    v24 = 0;
    v25 = 0;
    v45 = 0;
  }

  v43 = v22;
  v44 = v24;
  v46 = v25;
  sub_1BA4A2CC8();
  sub_1B9F23224(&v43);
  v26 = sub_1BA4A6758();

  v27 = swift_isUniquelyReferenced_nonNull_native();
  v43 = v16;
  sub_1B9F36508(v26, v17, v19, v27);

  v28 = v43;
  v29 = sub_1BA4A6758();
  v30 = swift_isUniquelyReferenced_nonNull_native();
  v43 = v28;
  sub_1B9F36508(v29, 0x6E6F69746361, 0xE600000000000000, v30);
  v31 = v43;
  v32 = v1[19];
  v33 = v1[20];
  __swift_project_boxed_opaque_existential_1(v1 + 16, v32);
  (*(v33 + 8))(v32, v33);
  v43 = v1;
  type metadata accessor for HealthAppInteractionAnalyticEvent();
  v34 = sub_1BA4A2C98();
  v35 = swift_isUniquelyReferenced_nonNull_native();
  v43 = v31;
  sub_1B9F36508(v34, 0xD000000000000013, 0x80000001BA5019F0, v35);
  v36 = v43;
  sub_1B9F235DC();
  v37 = sub_1BA4A6758();

  v38 = swift_isUniquelyReferenced_nonNull_native();
  v43 = v36;
  sub_1B9F36508(v37, 0x6265646953736168, 0xEF6E776F68537261, v38);
  v39 = v43;
  sub_1B9F8C0E8();
  v40 = sub_1BA4A6758();

  v41 = swift_isUniquelyReferenced_nonNull_native();
  v43 = v39;
  sub_1B9F36508(v40, 0x6953776F646E6977, 0xEA0000000000657ALL, v41);
  return v43;
}

uint64_t sub_1B9F23224(uint64_t a1)
{
  sub_1B9F232A8(0, &qword_1EDC6E300, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1B9F232A8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1B9F232F8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1B9F23348(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1B9F23398(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_1BA4A7AA8();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_1B9F233E4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1B9F23434(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1B9F23484(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1B9F234D4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1B9F23524(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_1B9F23574(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + 8 * result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

uint64_t sub_1B9F235DC()
{
  v1 = *v0;
  v9 = v0;
  v10 = v1;
  if ([objc_opt_self() isMainThread])
  {
    sub_1B9F89ED0(v0, aBlock);
    return aBlock[0];
  }

  sub_1B9F0ADF8(0, &qword_1EDC6B5A0);
  v12 = 0;
  v13 = 0;
  v3 = sub_1BA4A7308();
  v4 = swift_allocObject();
  v4[2] = &v12;
  v4[3] = sub_1B9F8A070;
  v4[4] = &v8;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_1B9F89D74;
  *(v5 + 24) = v4;
  aBlock[4] = sub_1B9F89DF8;
  aBlock[5] = v5;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B9F7B0FC;
  aBlock[3] = &block_descriptor_50_1;
  v6 = _Block_copy(aBlock);

  dispatch_sync(v3, v6);

  _Block_release(v6);
  LOBYTE(v3) = swift_isEscapingClosureAtFileLocation();

  if (v3)
  {
    __break(1u);
  }

  else if (v13)
  {
    v2 = v12;

    return v2;
  }

  __break(1u);
  return result;
}

void sub_1B9F23808()
{
  v1 = v0;
  swift_getObjectType();
  v2 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & *v0) + 0x110))();
  v3 = [v0 collectionView];
  if (!v3)
  {
    __break(1u);
    goto LABEL_12;
  }

  v4 = v3;
  [v3 setPreservesSuperviewLayoutMargins_];

  v5 = [v1 collectionView];
  if (!v5)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v6 = v5;
  [v5 setAlwaysBounceVertical_];

  v7 = [v1 collectionView];
  if (!v7)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v8 = v7;
  [v7 setSelfSizingInvalidation_];

  v9 = [v1 navigationItem];
  [v9 _setSupportsTwoLineLargeTitles_];

  v10 = type metadata accessor for CompoundDataSourceCollectionViewController();
  v37.receiver = v1;
  v37.super_class = v10;
  v11 = objc_msgSendSuper2(&v37, sel_viewDidLoad);
  v12 = (*((*v2 & *v1) + 0xF8))(v11);
  v13 = OBJC_IVAR____TtC18HealthExperienceUI42CompoundDataSourceCollectionViewController_dataSourceAdaptor;
  swift_beginAccess();
  *(v1 + v13) = v12;

  v15 = (*((*v2 & *v1) + 0x100))(v14);
  v16 = (*((*v2 & *v1) + 0x118))(v15);
  v33 = v10;
  v32[0] = v1;
  v17 = v1;
  MEMORY[0x1BFAF1C50](v16, v32, sel_observedTraitsDidChangeWithTraitEnvironment_previousTraitCollection_);
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1(v32);
  if (!*(v1 + v13))
  {
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  static CompoundDataSourceCollectionViewController.makeLayoutErrorHandler(diffableAdaptor:)();
  v19 = v18;
  v36 = v17;
  sub_1B9F0D950(0, &unk_1EDC60EE0);
  v20 = v17;
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_1(v32);
    v21 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v22 = swift_allocObject();
    v22[2] = v21;
    v22[3] = sub_1BA16509C;
    v22[4] = v19;
    v23 = objc_opt_self();

    v24 = [v23 defaultConfiguration];
    [v24 setContentInsetsReference_];
    v25 = objc_allocWithZone(MEMORY[0x1E69DC808]);
    v34 = sub_1BA165090;
    v35 = v22;
    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 1107296256;
    v32[2] = sub_1B9F54940;
    v33 = &block_descriptor_37;
    v26 = _Block_copy(v32);
    v27 = [v25 initWithSectionProvider:v26 configuration:v24];

    _Block_release(v26);

    goto LABEL_9;
  }

  sub_1B9F23FB0();
  if (*(v1 + v13))
  {
    static CompoundDataSourceCollectionViewController.makeLayoutErrorHandler(diffableAdaptor:)();
    v27 = sub_1B9F3C0D4(sub_1BA16509C, v28);

LABEL_9:

    v29 = v27;
    v30 = [v20 collectionView];
    if (v30)
    {
      v31 = v30;
      [v30 setCollectionViewLayout:v29 animated:0];

      return;
    }

    goto LABEL_15;
  }

LABEL_16:
  __break(1u);
}

uint64_t sub_1B9F23CF8()
{
  MEMORY[0x1BFAF44B0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B9F23D30()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

void sub_1B9F23DE0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, void (*a5)(uint64_t))
{
  v8 = v5;
  v9 = a3(0);
  v10 = swift_conformsToProtocol2();
  if (v10 && v9)
  {
    v11 = v10;
    v12 = (*(v10 + 24))(v9, v10);
    v13 = sub_1BA4A6758();
    (*(*(v11 + 16) + 8))(v9);
    v17 = sub_1BA4A6758();

    [v8 registerNib:v12 forSupplementaryViewOfKind:v13 withReuseIdentifier:v17];
  }

  else
  {
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v15 = sub_1BA4A6758();
    sub_1B9F3749C(0, a4, a5);
    sub_1BA4A6808();
    v16 = sub_1BA4A6758();

    [v8 registerClass:ObjCClassFromMetadata forSupplementaryViewOfKind:v15 withReuseIdentifier:v16];
  }
}

uint64_t sub_1B9F23FB0()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI42CompoundDataSourceCollectionViewController____lazy_storage___dataSource;
  if (*&v0[OBJC_IVAR____TtC18HealthExperienceUI42CompoundDataSourceCollectionViewController____lazy_storage___dataSource])
  {
    v2 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI42CompoundDataSourceCollectionViewController____lazy_storage___dataSource];
  }

  else
  {
    swift_getObjectType();
    v2 = sub_1B9F24024(v0);
    *&v0[v1] = v2;
  }

  return v2;
}

uint64_t sub_1B9F24024(void *a1)
{
  v2 = OBJC_IVAR____TtC18HealthExperienceUI42CompoundDataSourceCollectionViewController_dataSourceProvider;
  swift_beginAccess();
  sub_1B9F374E8(a1 + v2, &v12, &qword_1EDC6BAD0, qword_1EDC6BAE0);
  if (v13)
  {
    sub_1B9F1134C(&v12, v14);
    v3 = v15;
    v4 = v16;
    __swift_project_boxed_opaque_existential_1(v14, v15);
    v5 = (*(v4 + 16))(a1, v3, v4);
    __swift_destroy_boxed_opaque_existential_1(v14);
    return v5;
  }

  else
  {
    sub_1B9F43A50(&v12, &qword_1EDC6BAD0, qword_1EDC6BAE0);
    v14[0] = 0;
    v14[1] = 0xE000000000000000;
    sub_1BA4A7DF8();
    v7 = sub_1BA4A85D8();
    MEMORY[0x1BFAF1350](v7);

    MEMORY[0x1BFAF1350](0xD00000000000003ALL, 0x80000001BA4EE730);
    v8 = [a1 description];
    v9 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    v11 = v10;

    MEMORY[0x1BFAF1350](v9, v11);

    MEMORY[0x1BFAF1350](33, 0xE100000000000000);
    result = sub_1BA4A8018();
    __break(1u);
  }

  return result;
}

uint64_t type metadata accessor for ArrayDataSource()
{
  result = qword_1EDC69230;
  if (!qword_1EDC69230)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1B9F2424C()
{
  sub_1B9F12538();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t DefaultCloudSyncStateStore.lastKnownFirstRestoreState.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = sub_1BA4A6758();
  v5 = [v3 valueForKey_];

  if (v5)
  {
    sub_1BA4A7BF8();
    swift_unknownObjectRelease();
  }

  else
  {
    v8 = 0u;
    v9 = 0u;
  }

  v10[0] = v8;
  v10[1] = v9;
  if (*(&v9 + 1))
  {
    if (swift_dynamicCast())
    {
      return sub_1BA4A2CF8();
    }
  }

  else
  {
    sub_1B9F0DF80(v10, sub_1BA01E3E8);
  }

  v7 = sub_1BA4A2D28();
  return (*(*(v7 - 8) + 56))(a1, 1, 1, v7);
}

uint64_t sub_1B9F244F4(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 4u)
  {
  }

  return result;
}

uint64_t HostingCellReusePolicy.init(viewControllerIdentifier:userInterface:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unsigned __int8 a5@<W4>, uint64_t a6@<X8>)
{
  v9 = a2;
  v10 = a1;
  v28 = a1;
  v29 = a2;
  v27 = &v28;
  v12 = sub_1B9F13ED8(sub_1B9F13FDC, v26, &unk_1F37FBC38);
  if (v12)
  {

    if (a5 <= 2u)
    {
      goto LABEL_8;
    }

    if (a5 == 3)
    {
      v28 = type metadata accessor for ContentConfigurationHostCell();
      sub_1BA12E858(0, &qword_1EDC646E8, type metadata accessor for ContentConfigurationHostCell);
      ObjCClassMetadata = sub_1BA4A6808();
      v10 = v22;
      v15 = a3;
      v16 = a4;
      v17 = 3;
      goto LABEL_9;
    }

    if (a5 == 4)
    {
      v28 = type metadata accessor for ListContentConfigurationHostCell();
      sub_1BA12E858(0, &qword_1EDC62898, type metadata accessor for ListContentConfigurationHostCell);
      ObjCClassMetadata = sub_1BA4A6808();
      v10 = v14;
      v15 = a3;
      v16 = a4;
      v17 = 4;
    }

    else
    {
LABEL_8:
      v28 = type metadata accessor for ChromeHostViewCell(0);
      sub_1BA12E858(0, qword_1EDC6D7F8, type metadata accessor for ChromeHostViewCell);
      ObjCClassMetadata = sub_1BA4A6808();
      v10 = v21;
      v15 = a3;
      v16 = a4;
      v17 = a5;
    }

LABEL_9:
    result = sub_1B9F244F4(v15, v16, v17);
    v9 = 0;
    goto LABEL_10;
  }

  UserInterface.hostCellClassName.getter(a3, a4, a5);
  v18 = sub_1BA4A6758();

  v19 = NSClassFromString(v18);

  if (v19)
  {
    ObjCClassMetadata = swift_getObjCClassMetadata();
    result = sub_1B9F244F4(a3, a4, a5);
LABEL_10:
    *a6 = ObjCClassMetadata;
    *(a6 + 8) = v10;
    *(a6 + 16) = v9;
    *(a6 + 24) = v12 & 1;
    return result;
  }

  v28 = 0;
  v29 = 0xE000000000000000;
  sub_1BA4A7DF8();
  v23 = UserInterface.hostCellClassName.getter(a3, a4, a5);
  v25 = v24;

  v28 = v23;
  v29 = v25;
  MEMORY[0x1BFAF1350](0xD00000000000001ALL, 0x80000001BA4E3A90);
  result = sub_1BA4A8018();
  __break(1u);
  return result;
}

uint64_t sub_1B9F247C4(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1BA4A8338() & 1;
  }
}

uint64_t UserInterface.hostCellClassName.getter(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 2u)
  {
    goto LABEL_5;
  }

  if (a3 == 3)
  {
    type metadata accessor for ContentConfigurationHostCell();
    goto LABEL_6;
  }

  if (a3 == 4)
  {
    type metadata accessor for ListContentConfigurationHostCell();
  }

  else
  {
LABEL_5:
    type metadata accessor for ChromeHostViewCell(0);
  }

LABEL_6:
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v4 = NSStringFromClass(ObjCClassFromMetadata);
  v5 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();

  return v5;
}

uint64_t sub_1B9F248E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_1B9F24A34(a3, a4);
  v15 = v12[2];
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = v12[3];
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 >= v18 && (a5 & 1) == 0)
    {
      v21 = v13;
      sub_1BA0F1474();
      v13 = v21;
      goto LABEL_8;
    }

    sub_1B9F24AAC(v18, a5 & 1);
    v13 = sub_1B9F24A34(a3, a4);
    if ((v19 & 1) != (v22 & 1))
    {
LABEL_16:
      result = sub_1BA4A83B8();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v23 = *v6;
  if (v19)
  {
    v24 = (v23[7] + 16 * v13);
    *v24 = a1;
    v24[1] = a2;
  }

  else
  {
    sub_1B9F24EE0(v13, a3, a4, a1, a2, v23);
  }
}

unint64_t sub_1B9F24A34(uint64_t a1, uint64_t a2)
{
  sub_1BA4A8488();
  sub_1BA4A68C8();
  v4 = sub_1BA4A84D8();

  return sub_1B9F24E28(a1, a2, v4);
}

uint64_t sub_1B9F24AAC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1B9F24D7C(0, &qword_1EDC5E000);
  v37 = a2;
  result = sub_1BA4A8078();
  v7 = result;
  if (*(v5 + 16))
  {
    v36 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = 16 * (v19 | (v8 << 6));
      v23 = (*(v5 + 48) + v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = (*(v5 + 56) + v22);
      v27 = v26[1];
      v38 = *v26;
      if ((v37 & 1) == 0)
      {
      }

      sub_1BA4A8488();
      sub_1BA4A68C8();
      result = sub_1BA4A84D8();
      v28 = -1 << *(v7 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v14 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v14 + 8 * v30);
          if (v34 != -1)
          {
            v15 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v29) & ~*(v14 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v24;
      v17[1] = v25;
      v18 = (*(v7 + 56) + v16);
      *v18 = v38;
      v18[1] = v27;
      ++*(v7 + 16);
      v5 = v36;
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v2;
    if (v35 >= 64)
    {
      bzero(v9, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

void sub_1B9F24D7C(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_1BA4A80A8();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_1B9F24DD0(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_1BA4A80A8();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

unint64_t sub_1B9F24E28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_1BA4A8338())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_1B9F24EE0(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  a6[(result >> 6) + 8] |= 1 << result;
  v6 = (a6[6] + 16 * result);
  *v6 = a2;
  v6[1] = a3;
  v7 = (a6[7] + 16 * result);
  *v7 = a4;
  v7[1] = a5;
  v8 = a6[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v10;
  }

  return result;
}

uint64_t type metadata accessor for HeaderItem()
{
  result = qword_1EDC697F0;
  if (!qword_1EDC697F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B9F24F7C()
{
  result = sub_1BA4A4428();
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

void HeaderItem.init(title:buttonText:buttonWasTapped:configuration:automationIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = v9;
  v15 = (v9 + OBJC_IVAR____TtC18HealthExperienceUI10HeaderItem_baseIdentifier);
  *v15 = 0;
  v15[1] = 0;
  *(v9 + 32) = a1;
  *(v9 + 40) = a2;
  *(v9 + 48) = a3;
  *(v9 + 56) = a4;
  *(v9 + 72) = a5;
  *(v9 + 80) = a6;
  *(v9 + 64) = a5 != 0;
  v16 = OBJC_IVAR____TtC18HealthExperienceUI10HeaderItem_configuration;
  v17 = sub_1BA4A4428();
  v18 = *(v17 - 8);
  v33 = a7;
  v19 = a7;
  v20 = v17;
  (*(v18 + 16))(v9 + v16, v19, v17);

  sub_1B9F0F1B8(a5);
  v34 = sub_1BA4A85D8();
  v35 = v21;
  MEMORY[0x1BFAF1350](95, 0xE100000000000000);
  MEMORY[0x1BFAF1350](a1, a2);

  *(v9 + 16) = v34;
  *(v9 + 24) = v35;
  if (a9)
  {
    v22 = a9;
    v23 = a8;
  }

  else
  {
    sub_1B9F252FC();
    v23 = sub_1BA4A7B58();
    v22 = v24;
  }

  sub_1B9F25350();
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_1BA4B5480;
  *(v25 + 32) = v23;
  *(v25 + 40) = v22;

  v26 = sub_1BA4A6AE8();

  v27 = HKUIJoinStringsForAutomationIdentifier();

  if (v27)
  {

    v28 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    v30 = v29;

    sub_1B9F0E310(a5);
    (*(v18 + 8))(v33, v20);
    v31 = (v10 + OBJC_IVAR____TtC18HealthExperienceUI10HeaderItem_baseIdentifier);
    swift_beginAccess();
    *v31 = v28;
    v31[1] = v30;
  }

  else
  {
    __break(1u);
  }
}

unint64_t sub_1B9F252FC()
{
  result = qword_1EDC6E430;
  if (!qword_1EDC6E430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC6E430);
  }

  return result;
}

void sub_1B9F25350()
{
  if (!qword_1EDC6E330)
  {
    v0 = sub_1BA4A82E8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC6E330);
    }
  }
}

uint64_t sub_1B9F253A0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B9F253E8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B9F25430(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B9F25478(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B9F254C0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B9F25508(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B9F25550(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1B9F255B4()
{
  if (!qword_1EDC693A0)
  {
    sub_1B9F126E0();
    v0 = type metadata accessor for Supplementary();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC693A0);
    }
  }
}

uint64_t CompoundSectionedDataSource.init(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1BA4A1798();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F0ADF8(0, &qword_1EDC5E090);
  v8 = sub_1BA4A7A78();
  v9 = objc_allocWithZone(MEMORY[0x1E696C4F8]);
  v10 = sub_1BA4A6758();
  v11 = [v9 initWithName:v10 loggingCategory:v8];

  *(v2 + 16) = v11;
  sub_1B9F25AAC();
  v12 = swift_allocObject();
  *(v12 + 16) = 0;
  *(v2 + 24) = v12;
  sub_1BA4A45D8();
  v13 = (v2 + OBJC_IVAR____TtC18HealthExperienceUI27CompoundSectionedDataSource_identifier);
  sub_1BA4A1788();
  v14 = sub_1BA4A1748();
  v16 = v15;
  (*(v5 + 8))(v7, v4);
  *v13 = v14;
  v13[1] = v16;
  *(v2 + OBJC_IVAR____TtC18HealthExperienceUI27CompoundSectionedDataSource_collapseEmptySections) = 1;
  v37 = v2;
  *(v2 + OBJC_IVAR____TtC18HealthExperienceUI27CompoundSectionedDataSource_managedDataSources) = a1;
  v17 = *(a1 + 16);
  if (v17)
  {
    v38 = MEMORY[0x1E69E7CC0];
    swift_bridgeObjectRetain_n();
    sub_1B9F25C70(0, v17, 0);
    v18 = 0;
    v19 = v38;
    v20 = *(a1 + 16);
    v36 = a1;
    v21 = (a1 + 40);
    do
    {
      if (v20 == v18)
      {
        __break(1u);
        result = swift_unexpectedError();
        __break(1u);
        return result;
      }

      v22 = *v21;
      ObjectType = swift_getObjectType();
      v24 = *(v22 + 8);
      swift_unknownObjectRetain();
      v25 = v24(ObjectType, v22);
      v27 = v26;
      swift_unknownObjectRelease();
      v38 = v19;
      v29 = *(v19 + 16);
      v28 = *(v19 + 24);
      if (v29 >= v28 >> 1)
      {
        sub_1B9F25C70((v28 > 1), v29 + 1, 1);
        v19 = v38;
      }

      *(v19 + 16) = v29 + 1;
      v30 = (v19 + 24 * v29);
      v30[5] = v27;
      v30[6] = v18;
      v30[4] = v25;
      v21 += 2;
      ++v18;
    }

    while (v17 != v18);
    a1 = v36;

    if (!*(v19 + 16))
    {
      goto LABEL_10;
    }
  }

  else
  {

    if (!*(MEMORY[0x1E69E7CC0] + 16))
    {
LABEL_10:
      v31 = MEMORY[0x1E69E7CC8];
      goto LABEL_11;
    }
  }

  sub_1B9F25DF8();
  v31 = sub_1BA4A8098();
LABEL_11:
  v38 = v31;

  sub_1B9F25E58(v32, 1, &v38);

  v34 = v37;
  *(v37 + OBJC_IVAR____TtC18HealthExperienceUI27CompoundSectionedDataSource_managedDataSourcesIdentifierToIndexMap) = v38;
  v38 = *(v34 + 24);
  MEMORY[0x1EEE9AC00](v33);
  *(&v36 - 2) = a1;
  *(&v36 - 1) = v34;
  sub_1B9F261DC(0, &qword_1EDC5F8E0, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E93F8]);
  sub_1B9F2622C();

  sub_1BA4A3978();

  return v34;
}

void sub_1B9F25AAC()
{
  if (!qword_1EDC5E038)
  {
    type metadata accessor for os_unfair_lock_s(255);
    v0 = sub_1BA4A7EA8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC5E038);
    }
  }
}

void *sub_1B9F25B10(void *result, int64_t a2, char a3, void *a4)
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
    sub_1B9F25CF4(0, &qword_1EDC5DC00, sub_1B9F25D58, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1B9F25D58();
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1B9F25C70(void *a1, int64_t a2, char a3)
{
  result = sub_1B9F25B10(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_1B9F25C90(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1B9F25CF4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1B9F25D58()
{
  if (!qword_1EDC5E720)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDC5E720);
    }
  }
}

uint64_t sub_1B9F25DB8()
{
  v0 = sub_1B9F25DF0();

  return v0;
}

void sub_1B9F25DF8()
{
  if (!qword_1EDC5DFE0)
  {
    v0 = sub_1BA4A80A8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC5DFE0);
    }
  }
}

void sub_1B9F25E58(void *a1, char a2, void *a3)
{
  v37 = a1[2];
  if (!v37)
  {
    goto LABEL_21;
  }

  LOBYTE(v5) = a2;
  v7 = a1[4];
  v6 = a1[5];
  v8 = a1[6];
  v9 = *a3;

  v10 = sub_1B9F24A34(v7, v6);
  v12 = v9[2];
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v16 = v11;
  if (v9[3] < v15)
  {
    sub_1BA0F36C0(v15, v5 & 1);
    v10 = sub_1B9F24A34(v7, v6);
    if ((v16 & 1) == (v17 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    v10 = sub_1BA4A83B8();
    __break(1u);
  }

  if (v5)
  {
LABEL_7:
    if (v16)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  v20 = v10;
  sub_1BA0F15FC();
  v10 = v20;
  if (v16)
  {
LABEL_8:
    v18 = swift_allocError();
    swift_willThrow();
    v19 = v18;
    sub_1B9F0D9AC(0, &qword_1EDC6E310);
    if ((swift_dynamicCast() & 1) == 0)
    {

      return;
    }

    goto LABEL_26;
  }

LABEL_11:
  v21 = *a3;
  *(*a3 + 8 * (v10 >> 6) + 64) |= 1 << v10;
  v22 = (v21[6] + 16 * v10);
  *v22 = v7;
  v22[1] = v6;
  *(v21[7] + 8 * v10) = v8;
  v23 = v21[2];
  v14 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v14)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    sub_1BA4A7DF8();
    MEMORY[0x1BFAF1350](0xD00000000000001BLL, 0x80000001BA4E68E0);
    sub_1BA4A7FB8();
    MEMORY[0x1BFAF1350](39, 0xE100000000000000);
    sub_1BA4A8018();
    __break(1u);
    return;
  }

  v21[2] = v24;
  if (v37 != 1)
  {
    v5 = a1 + 9;
    v8 = 1;
    while (v8 < a1[2])
    {
      v7 = *(v5 - 2);
      v6 = *(v5 - 1);
      v25 = *v5;
      v26 = *a3;

      v27 = sub_1B9F24A34(v7, v6);
      v29 = v26[2];
      v30 = (v28 & 1) == 0;
      v14 = __OFADD__(v29, v30);
      v31 = v29 + v30;
      if (v14)
      {
        goto LABEL_23;
      }

      v16 = v28;
      if (v26[3] < v31)
      {
        sub_1BA0F36C0(v31, 1);
        v27 = sub_1B9F24A34(v7, v6);
        if ((v16 & 1) != (v32 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v16)
      {
        goto LABEL_8;
      }

      v33 = *a3;
      *(*a3 + 8 * (v27 >> 6) + 64) |= 1 << v27;
      v34 = (v33[6] + 16 * v27);
      *v34 = v7;
      v34[1] = v6;
      *(v33[7] + 8 * v27) = v25;
      v35 = v33[2];
      v14 = __OFADD__(v35, 1);
      v36 = v35 + 1;
      if (v14)
      {
        goto LABEL_24;
      }

      ++v8;
      v33[2] = v36;
      v5 += 3;
      if (v37 == v8)
      {
        goto LABEL_21;
      }
    }

    goto LABEL_25;
  }

LABEL_21:
}

void sub_1B9F261DC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_1B9F2622C()
{
  result = qword_1EDC5F8E8;
  if (!qword_1EDC5F8E8)
  {
    sub_1B9F261DC(255, &qword_1EDC5F8E0, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E93F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC5F8E8);
  }

  return result;
}

uint64_t sub_1B9F262B4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = (a1 + 40);
    do
    {
      v5 = *v4;
      ObjectType = swift_getObjectType();
      v7 = *(v5 + 40);
      swift_unknownObjectRetain();
      v8 = v7(ObjectType, v5);
      [v8 registerObserver_];
      swift_unknownObjectRelease();

      v4 += 2;
      --v3;
    }

    while (v3);
  }

  return sub_1B9F264E0();
}

uint64_t sub_1B9F26380()
{
  v1 = *v0;
  WitnessTable = swift_getWitnessTable();

  return DataSourceWrapper.changeObservers.getter(v1, WitnessTable);
}

uint64_t DataSourceWrapper.changeObservers.getter(uint64_t a1, uint64_t a2)
{
  (*(a2 + 32))();
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v3 = *(AssociatedConformanceWitness + 40);
  v4 = swift_checkMetadataState();
  v5 = v3(v4, AssociatedConformanceWitness);
  swift_unknownObjectRelease();
  return v5;
}

uint64_t sub_1B9F264A8()
{
  sub_1B9F264D0();

  return swift_unknownObjectRetain();
}

uint64_t sub_1B9F264E0()
{
  sub_1B9F117BC(0, &qword_1EDC5F8A0, MEMORY[0x1E69E6168], MEMORY[0x1E69DC168]);
  v2 = v1;
  v3 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v5 = v13 - v4;
  sub_1BA4A45D8();
  v6 = OBJC_IVAR____TtC18HealthExperienceUI27CompoundSectionedDataSource_snapshot;
  swift_beginAccess();
  (*(v3 + 40))(v0 + v6, v5, v2);
  result = swift_endAccess();
  v8 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI27CompoundSectionedDataSource_managedDataSources);
  v9 = *(v8 + 16);
  if (v9)
  {
    v10 = 0;
    while (v10 < *(v8 + 16))
    {
      v11 = v10 + 1;
      *v13 = *(v8 + 32 + 16 * v10);
      swift_unknownObjectRetain();
      sub_1B9F2667C(v13, v0);
      result = swift_unknownObjectRelease();
      v10 = v11;
      if (v9 == v11)
      {
        return result;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1B9F2667C(uint64_t *a1, uint64_t a2)
{
  sub_1B9F117BC(0, &qword_1EDC5F8A0, MEMORY[0x1E69E6168], MEMORY[0x1E69DC168]);
  v5 = v4;
  v90 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v89 - v6;
  v8 = *a1;
  v9 = a1[1];
  ObjectType = swift_getObjectType();
  v11 = *(v9 + 16);
  v106 = ObjectType;
  v107 = v8;
  v11(ObjectType, v9);
  v101 = v7;
  v12 = sub_1BA4A4578();
  v13 = *(v12 + 16);
  v14 = MEMORY[0x1E69E7CC0];
  v93 = v5;
  v92 = a2;
  v112 = v9;
  if (v13)
  {
    v108 = MEMORY[0x1E69E7CC0];
    sub_1B9F1C360(0, v13, 0);
    v15 = v108;
    v16 = *(v9 + 8);
    v104 = v12;
    v105 = v16;
    v17 = (v12 + 40);
    do
    {
      v18 = *(v17 - 1);
      v19 = *v17;

      v110 = v105(v106, v112);
      v111 = v20;
      MEMORY[0x1BFAF1350](0x2A5F5F5F2ALL, 0xE500000000000000);
      MEMORY[0x1BFAF1350](v18, v19);

      v21 = v110;
      v22 = v111;
      v108 = v15;
      v24 = *(v15 + 16);
      v23 = *(v15 + 24);
      if (v24 >= v23 >> 1)
      {
        sub_1B9F1C360((v23 > 1), v24 + 1, 1);
        v15 = v108;
      }

      *(v15 + 16) = v24 + 1;
      v25 = v15 + 16 * v24;
      *(v25 + 32) = v21;
      *(v25 + 40) = v22;
      v17 += 2;
      --v13;
    }

    while (v13);
    v98 = v15;

    v5 = v93;
    v9 = v112;
    v14 = MEMORY[0x1E69E7CC0];
  }

  else
  {

    v98 = MEMORY[0x1E69E7CC0];
  }

  v100 = sub_1BA4A4578();
  v26 = *(v100 + 16);
  v91 = OBJC_IVAR____TtC18HealthExperienceUI27CompoundSectionedDataSource_snapshot;
  result = v98;
  v97 = v26;
  if (v26)
  {
    v28 = 0;
    v95 = v98 + 32;
    v96 = v100 + 32;
    v105 = (v9 + 8);
    v94 = xmmword_1BA4B5480;
    while (v28 < *(v100 + 16))
    {
      v29 = *(result + 16);
      if (v28 == v29)
      {
        goto LABEL_21;
      }

      if (v28 >= v29)
      {
        goto LABEL_44;
      }

      v30 = (v96 + 16 * v28);
      v31 = *v30;
      v32 = v30[1];
      v104 = v28;
      v33 = (v95 + 16 * v28);
      v34 = *v33;
      v35 = v33[1];
      sub_1B9F261DC(0, &qword_1EDC6E330, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
      v36 = swift_allocObject();
      *(v36 + 16) = v94;
      *(v36 + 32) = v34;
      *(v36 + 40) = v35;
      swift_beginAccess();
      v102 = v35;
      swift_bridgeObjectRetain_n();

      sub_1BA4A44C8();
      swift_endAccess();

      v110 = v31;
      v111 = v32;
      v103 = v32;
      v37 = sub_1BA4A4528();
      v38 = *(v37 + 16);
      if (v38)
      {
        v108 = MEMORY[0x1E69E7CC0];
        sub_1B9F1C360(0, v38, 0);
        v39 = v108;
        v40 = *v105;
        v99 = v37;
        v41 = (v37 + 40);
        do
        {
          v42 = *(v41 - 1);
          v43 = *v41;

          v110 = v40(v106, v9);
          v111 = v44;
          MEMORY[0x1BFAF1350](0x2A5F5F5F2ALL, 0xE500000000000000);
          MEMORY[0x1BFAF1350](v42, v43);

          v46 = v110;
          v45 = v111;
          v108 = v39;
          v48 = *(v39 + 16);
          v47 = *(v39 + 24);
          if (v48 >= v47 >> 1)
          {
            sub_1B9F1C360((v47 > 1), v48 + 1, 1);
            v39 = v108;
          }

          *(v39 + 16) = v48 + 1;
          v49 = v39 + 16 * v48;
          *(v49 + 32) = v46;
          *(v49 + 40) = v45;
          v41 += 2;
          --v38;
          v9 = v112;
        }

        while (v38);

        v5 = v93;
        v14 = MEMORY[0x1E69E7CC0];
      }

      else
      {

        v14 = MEMORY[0x1E69E7CC0];
      }

      v28 = v104 + 1;
      v108 = 0;
      v109 = 0;
      swift_beginAccess();
      sub_1BA4A4448();
      swift_endAccess();

      result = v98;
      if (v28 == v97)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_44:
    __break(1u);
  }

  else
  {
LABEL_21:

    v50 = sub_1BA4A4598();
    v51 = *(v50 + 16);
    if (v51)
    {
      v108 = v14;
      sub_1B9F1C360(0, v51, 0);
      v52 = v108;
      v53 = *(v9 + 8);
      v104 = v50;
      v105 = v53;
      v54 = (v50 + 40);
      do
      {
        v55 = *(v54 - 1);
        v56 = *v54;

        v110 = v105(v106, v112);
        v111 = v57;
        MEMORY[0x1BFAF1350](0x2A5F5F5F2ALL, 0xE500000000000000);
        MEMORY[0x1BFAF1350](v55, v56);

        v58 = v110;
        v59 = v111;
        v108 = v52;
        v61 = *(v52 + 16);
        v60 = *(v52 + 24);
        if (v61 >= v60 >> 1)
        {
          sub_1B9F1C360((v60 > 1), v61 + 1, 1);
          v52 = v108;
        }

        *(v52 + 16) = v61 + 1;
        v62 = v52 + 16 * v61;
        *(v62 + 32) = v58;
        *(v62 + 40) = v59;
        v54 += 2;
        --v51;
      }

      while (v51);

      v5 = v93;
      v9 = v112;
      v14 = MEMORY[0x1E69E7CC0];
    }

    else
    {
    }

    swift_beginAccess();
    sub_1BA4A4498();
    swift_endAccess();

    v63 = sub_1BA4A45B8();
    v64 = *(v63 + 16);
    if (v64)
    {
      v108 = v14;
      sub_1B9F1C360(0, v64, 0);
      v65 = v108;
      v66 = *(v9 + 8);
      v104 = v63;
      v105 = v66;
      v67 = (v63 + 40);
      do
      {
        v68 = *(v67 - 1);
        v69 = *v67;

        v110 = v105(v106, v112);
        v111 = v70;
        MEMORY[0x1BFAF1350](0x2A5F5F5F2ALL, 0xE500000000000000);
        MEMORY[0x1BFAF1350](v68, v69);

        v71 = v110;
        v72 = v111;
        v108 = v65;
        v74 = *(v65 + 16);
        v73 = *(v65 + 24);
        if (v74 >= v73 >> 1)
        {
          sub_1B9F1C360((v73 > 1), v74 + 1, 1);
          v65 = v108;
        }

        *(v65 + 16) = v74 + 1;
        v75 = v65 + 16 * v74;
        *(v75 + 32) = v71;
        *(v75 + 40) = v72;
        v67 += 2;
        --v64;
      }

      while (v64);

      v5 = v93;
      v9 = v112;
      v14 = MEMORY[0x1E69E7CC0];
    }

    else
    {
    }

    swift_beginAccess();
    sub_1BA4A4558();
    swift_endAccess();

    v76 = sub_1BA4A45A8();
    v77 = *(v76 + 16);
    if (v77)
    {
      v108 = v14;
      sub_1B9F1C360(0, v77, 0);
      v78 = v108;
      v79 = *(v9 + 8);
      v104 = v76;
      v105 = v79;
      v80 = (v76 + 40);
      do
      {
        v81 = *(v80 - 1);
        v82 = *v80;

        v110 = v105(v106, v112);
        v111 = v83;
        MEMORY[0x1BFAF1350](0x2A5F5F5F2ALL, 0xE500000000000000);
        MEMORY[0x1BFAF1350](v81, v82);

        v84 = v110;
        v85 = v111;
        v108 = v78;
        v87 = *(v78 + 16);
        v86 = *(v78 + 24);
        if (v87 >= v86 >> 1)
        {
          sub_1B9F1C360((v86 > 1), v87 + 1, 1);
          v78 = v108;
        }

        *(v78 + 16) = v87 + 1;
        v88 = v78 + 16 * v87;
        *(v88 + 32) = v84;
        *(v88 + 40) = v85;
        v80 += 2;
        --v77;
      }

      while (v77);

      v5 = v93;
    }

    else
    {
    }

    swift_beginAccess();
    sub_1BA4A4518();
    swift_endAccess();

    return (*(v90 + 8))(v101, v5);
  }

  return result;
}

uint64_t AnyDataSourceWrapper.snapshot.getter(uint64_t a1, uint64_t a2)
{
  (*(a2 + 16))();
  v3 = v2;
  ObjectType = swift_getObjectType();
  (*(v3 + 16))(ObjectType, v3);

  return swift_unknownObjectRelease();
}

uint64_t sub_1B9F270B8()
{
  v1 = *v0;
  WitnessTable = swift_getWitnessTable();

  return DataSourceWrapper.resolvedDataSource.getter(v1, WitnessTable);
}

uint64_t DataSourceWrapper.resolvedDataSource.getter(uint64_t a1, uint64_t a2)
{
  v2 = (*(a2 + 32))();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  return v2;
}

uint64_t sub_1B9F271FC(void *a1, void *a2)
{
  v35 = a1;
  sub_1B9F1A9BC(0, &qword_1EDC6E2A0, MEMORY[0x1E6968130], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v33 - v4;
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v34 = sub_1BA4A1B68();
  v6 = MEMORY[0x1E69E6F90];
  sub_1B9F1C094(0, &qword_1EDC6B400, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1BA4B8B60;
  v8 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  v9 = sub_1BA4A6758();
  v10 = [v8 initWithKey:v9 ascending:1];

  *(v7 + 32) = v10;
  v11 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  v12 = sub_1BA4A6758();
  v13 = [v11 initWithKey:v12 ascending:0];

  *(v7 + 40) = v13;
  v14 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  v15 = sub_1BA4A6758();
  v16 = [v14 initWithKey:v15 ascending:1 selector:sel_localizedStandardCompare_];

  *(v7 + 48) = v16;
  sub_1BA4A27B8();
  sub_1B9F1A9BC(0, &qword_1EDC6B460, MEMORY[0x1E69A3C08], MEMORY[0x1E69E6F90]);
  v17 = sub_1BA4A1C68();
  v18 = *(v17 - 8);
  v19 = (*(v18 + 80) + 32) & ~*(v18 + 80);
  v20 = swift_allocObject();
  v33 = xmmword_1BA4B5480;
  *(v20 + 16) = xmmword_1BA4B5480;
  (*(v18 + 104))(v20 + v19, *MEMORY[0x1E69A3BE8], v17);
  v21 = sub_1BA4A0FA8();
  (*(*(v21 - 8) + 56))(v5, 1, 1, v21);
  sub_1B9F1C094(0, &qword_1EDC6B450, MEMORY[0x1E69A3C58], v6);
  v22 = swift_allocObject();
  *(v22 + 16) = v33;
  v23 = v35;
  *(v22 + 32) = sub_1BA4A6F38();
  v24 = MEMORY[0x1BFAED020](v20, 0, v5, v22);

  sub_1B9F1C1B0(v5);
  v25 = v34;
  v26 = sub_1BA4A7558();

  *(v36 + qword_1EDC84BF8) = 0;
  sub_1B9F126E0();
  v28 = objc_allocWithZone(v27);
  v29 = v26;
  v30 = _s18HealthExperienceUI33FeedItemSuggestedActionDataSourceCyACSo26NSFetchedResultsControllerCy0A8Platform0dE0CGcfc_0(v29);
  v31 = sub_1B9F17A68(v30, sub_1B9F2860C, 0, 0);

  __swift_destroy_boxed_opaque_existential_1(a2);
  return v31;
}

char *sub_1B9F27678(char *result, int64_t a2, char a3, char *a4)
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
    sub_1B9F1BFA8(0, &qword_1EDC5DC90, &type metadata for ArrayDataSourceSection, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1B9F277B0(char *a1, int64_t a2, char a3)
{
  result = sub_1B9F27678(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1B9F277D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, void *a4@<X8>)
{
  v40 = a4;
  sub_1B9F12538();
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = qword_1EDC84AC8;
  swift_beginAccess();
  v42 = *(v9 + 16);
  v42(v11, &a3[v12], v8);
  *&v48[0] = a1;
  *(&v48[0] + 1) = a2;
  v41 = a2;
  sub_1BA4A44E8();
  LOBYTE(a2) = v13;
  v14 = *(v9 + 8);
  result = v14(v11, v8);
  v43 = a3;
  v44 = a1;
  if (a2)
  {
    v16 = MEMORY[0x1E69E7CC0];
    v17 = v41;
  }

  else
  {
    v42(v11, &a3[v12], v8);
    v18 = v41;
    *&v48[0] = v44;
    *(&v48[0] + 1) = v41;
    v16 = sub_1BA4A4528();
    result = v14(v11, v8);
    v17 = v18;
  }

  v42 = *(v16 + 16);
  if (v42)
  {
    v19 = 0;
    v20 = (v16 + 40);
    v21 = MEMORY[0x1E69E7CC0];
    v22 = v43;
    while (v19 < *(v16 + 16))
    {
      v24 = *(v20 - 1);
      v25 = *v20;
      v26 = *((*MEMORY[0x1E69E7D40] & *v22) + 0x128);

      v26(&v45, v24, v25);

      if (v46)
      {
        sub_1B9F25598(&v45, v48);
        sub_1B9F25598(v48, &v45);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v49 = v21;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v21 = sub_1B9F281E8(0, v21[2] + 1, 1, v21);
          v49 = v21;
        }

        v29 = v21[2];
        v28 = v21[3];
        if (v29 >= v28 >> 1)
        {
          v21 = sub_1B9F281E8((v28 > 1), v29 + 1, 1, v21);
          v49 = v21;
        }

        v30 = v46;
        v31 = v47;
        v32 = __swift_mutable_project_boxed_opaque_existential_1(&v45, v46);
        MEMORY[0x1EEE9AC00](v32);
        v34 = &v39 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v35 + 16))(v34);
        sub_1B9F1C4F4(v29, v34, &v49, v30, v31);
        result = __swift_destroy_boxed_opaque_existential_1(&v45);
        v17 = v41;
      }

      else
      {
        result = sub_1B9F44090(&v45, &qword_1EDC6AD40, &qword_1EDC6AD50, MEMORY[0x1E69A3310]);
      }

      v19 = (v19 + 1);
      v20 += 2;
      v22 = v43;
      v23 = v44;
      if (v42 == v19)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
  }

  else
  {
    v21 = MEMORY[0x1E69E7CC0];
    v23 = v44;
LABEL_16:

    sub_1B9F1C5F0(MEMORY[0x1E69E7CC0]);
    v36 = v40;
    *v40 = 0;
    v36[1] = 0;
    v36[2] = v21;

    v38 = Array<A>.identifierToIndexDict()(v37);

    v36[3] = v38;
    v36[4] = v23;
    v36[5] = v17;
  }

  return result;
}

double sub_1B9F27BF0@<D0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v48 = a3;
  v44[1] = swift_getObjectType();
  v7 = *MEMORY[0x1E69E7D40] & *v3;
  v8 = sub_1BA4A3EA8();
  v46 = *(v8 - 8);
  v47 = v8;
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = v44 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v16 = v44 - v15;
  sub_1B9F12538();
  v18 = v17;
  v19 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v21 = v44 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = *(v7 + 80);
  *&v51[0] = a1;
  *(&v51[0] + 1) = a2;
  v50[0] = 0x616465726F632D78;
  v50[1] = 0xEA00000000006174;
  sub_1B9F252FC();
  if ((sub_1BA4A7BC8() & 1) == 0)
  {
    sub_1BA4A3DD8();

    v35 = sub_1BA4A3E88();
    v36 = sub_1BA4A6F88();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      *&v51[0] = v38;
      *v37 = 136315138;
      *(v37 + 4) = sub_1B9F0B82C(a1, a2, v51);
      _os_log_impl(&dword_1B9F07000, v35, v36, "FetchedResultsControllerDataSource cannot find the requested section with identifier %s.", v37, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v38);
      MEMORY[0x1BFAF43A0](v38, -1, -1);
      MEMORY[0x1BFAF43A0](v37, -1, -1);
    }

    (*(v46 + 8))(v11, v47);
    goto LABEL_13;
  }

  sub_1B9F13694(v21);
  *&v51[0] = a1;
  *(&v51[0] + 1) = a2;
  sub_1BA4A4468();
  v23 = v22;
  (*(v19 + 8))(v21, v18);
  if ((v23 & 1) != 0 || (v24 = qword_1EDC84AD8, swift_beginAccess(), (v25 = [*(v4 + v24) fetchedObjects]) == 0))
  {
    sub_1BA4A3D88();

    v39 = sub_1BA4A3E88();
    v40 = sub_1BA4A6FA8();

    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      *&v51[0] = v42;
      *v41 = 136315138;
      *(v41 + 4) = sub_1B9F0B82C(a1, a2, v51);
      _os_log_impl(&dword_1B9F07000, v39, v40, "Unable to create section data source item from unique identifier %s.", v41, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v42);
      MEMORY[0x1BFAF43A0](v42, -1, -1);
      MEMORY[0x1BFAF43A0](v41, -1, -1);
    }

    (*(v46 + 8))(v14, v47);
LABEL_13:
    v43 = v48;
    *(v48 + 32) = 0;
    result = 0.0;
    *v43 = 0u;
    v43[1] = 0u;
    return result;
  }

  v26 = v25;
  sub_1BA4A6B08();

  sub_1BA4A6C08();

  *&v50[3] = v45;
  v50[0] = v49;
  sub_1B9F1134C(v50, v51);
  sub_1BA4A3D88();

  v27 = sub_1BA4A3E88();
  v28 = sub_1BA4A6F88();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v50[0] = v30;
    *v29 = 136315394;
    v31 = sub_1BA4A85D8();
    v33 = sub_1B9F0B82C(v31, v32, v50);

    *(v29 + 4) = v33;
    *(v29 + 12) = 2080;
    *(v29 + 14) = sub_1B9F0B82C(a1, a2, v50);
    _os_log_impl(&dword_1B9F07000, v27, v28, "[%s] Successfully created SnapshotDataSourceItem for: %s", v29, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1BFAF43A0](v30, -1, -1);
    MEMORY[0x1BFAF43A0](v29, -1, -1);
  }

  (*(v46 + 8))(v16, v47);
  sub_1B9F1134C(v51, v48);
  return result;
}

void *sub_1B9F28210(void *result, int64_t a2, char a3, void *a4, void (*a5)(void), unint64_t *a6)
{
  v8 = result;
  if (a3)
  {
    v9 = a4[3];
    v10 = v9 >> 1;
    if ((v9 >> 1) < a2)
    {
      if (v10 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v10 = v9 & 0xFFFFFFFFFFFFFFFELL;
      if ((v9 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v10 = a2;
      }
    }
  }

  else
  {
    v10 = a2;
  }

  v11 = a4[2];
  if (v10 <= v11)
  {
    v12 = a4[2];
  }

  else
  {
    v12 = v10;
  }

  if (v12)
  {
    a5(0);
    v13 = swift_allocObject();
    v14 = _swift_stdlib_malloc_size(v13);
    v13[2] = v11;
    v13[3] = 2 * ((v14 - 32) / 40);
  }

  else
  {
    v13 = MEMORY[0x1E69E7CC0];
  }

  if (v8)
  {
    if (v13 != a4 || v13 + 4 >= &a4[5 * v11 + 4])
    {
      memmove(v13 + 4, a4 + 4, 40 * v11);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1B9F0D9AC(0, a6);
    swift_arrayInitWithCopy();
  }

  return v13;
}

void sub_1B9F28360()
{
  if (!qword_1EDC5DCA0)
  {
    sub_1B9F0D950(255, &qword_1EDC6AD50);
    v0 = sub_1BA4A82E8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC5DCA0);
    }
  }
}

uint64_t Array<A>.identifierToIndexDict()(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 16);
  if (v2)
  {
    v23 = MEMORY[0x1E69E7CC0];
    sub_1B9F25C70(0, v2, 0);
    v3 = 0;
    v16 = v1;
    v4 = v1 + 32;
    v5 = v23;
    do
    {
      v6 = v2;
      sub_1B9F0A534(v4, v22);
      v19 = v3;
      sub_1B9F25598(v22, v20);
      __swift_project_boxed_opaque_existential_1(v20, v20[3]);
      v7 = sub_1BA4A2D58();
      v9 = v8;
      sub_1B9F1C780(&v19, &v17);
      v10 = v17;
      __swift_destroy_boxed_opaque_existential_1(&v18);
      sub_1B9F285B0(&v19);
      v23 = v5;
      v12 = *(v5 + 16);
      v11 = *(v5 + 24);
      if (v12 >= v11 >> 1)
      {
        sub_1B9F25C70((v11 > 1), v12 + 1, 1);
        v5 = v23;
      }

      ++v3;
      *(v5 + 16) = v12 + 1;
      v13 = (v5 + 24 * v12);
      v13[4] = v7;
      v13[5] = v9;
      v13[6] = v10;
      v4 += 40;
      v2 = v6;
    }

    while (v6 != v3);
    v1 = v16;
  }

  else
  {
    v5 = MEMORY[0x1E69E7CC0];
    if (!*(MEMORY[0x1E69E7CC0] + 16))
    {
      v14 = MEMORY[0x1E69E7CC8];
      goto LABEL_9;
    }
  }

  sub_1B9F25DF8();
  v14 = sub_1BA4A8098();
LABEL_9:
  v21 = v14;

  sub_1B9F1C7E4(v5, 1, &v21, v1, sub_1BA065994);

  return v21;
}

{
  v1 = a1;
  v2 = *(a1 + 16);
  if (v2)
  {
    v14 = MEMORY[0x1E69E7CC0];
    sub_1B9F25C70(0, v2, 0);
    v3 = 0;
    v4 = v14;
    v13 = v1;
    v5 = (v1 + 72);
    do
    {
      v7 = *(v5 - 1);
      v6 = *v5;
      v14 = v4;
      v8 = *(v4 + 16);
      v9 = *(v4 + 24);

      if (v8 >= v9 >> 1)
      {
        sub_1B9F25C70((v9 > 1), v8 + 1, 1);
        v4 = v14;
      }

      *(v4 + 16) = v8 + 1;
      v10 = (v4 + 24 * v8);
      v10[5] = v6;
      v10[6] = v3;
      v10[4] = v7;
      v5 += 6;
      ++v3;
    }

    while (v2 != v3);
    v1 = v13;
  }

  else
  {
    v4 = MEMORY[0x1E69E7CC0];
    if (!*(MEMORY[0x1E69E7CC0] + 16))
    {
      v11 = MEMORY[0x1E69E7CC8];
      goto LABEL_9;
    }
  }

  sub_1B9F25DF8();
  v11 = sub_1BA4A8098();
LABEL_9:
  v14 = v11;

  sub_1B9F1C7E4(v4, 1, &v14, v1, sub_1BA065CAC);

  return v14;
}

uint64_t sub_1B9F285B0(uint64_t a1)
{
  sub_1B9F1C700();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B9F2860C(uint64_t a1)
{
  sub_1B9F28988();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v3 = sub_1BA4A3488();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v20[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_1B9F0A534(a1, v20);
  sub_1B9F0D9AC(0, &qword_1EDC6AD50);
  sub_1BA4A27B8();
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_5;
  }

  v7 = v19;
  sub_1BA4A2708();
  v8 = sub_1BA4A1D28();
  if (v8 != sub_1BA4A1D28())
  {

LABEL_5:
    sub_1B9F28AB0(0, &qword_1EDC5DCA0, &qword_1EDC6AD50, MEMORY[0x1E69A3310], MEMORY[0x1E69E6F90]);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_1BA4B5480;
    sub_1B9F0A534(a1, v9 + 32);
    return v9;
  }

  sub_1B9F28AB0(0, &qword_1EDC5DCA0, &qword_1EDC6AD50, MEMORY[0x1E69A3310], MEMORY[0x1E69E6F90]);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1BA4B5480;
  v10 = type metadata accessor for NoDataItem(0);
  *(v9 + 56) = v10;
  *(v9 + 64) = sub_1B9F25478(&qword_1EBBEF598, type metadata accessor for NoDataItem);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v9 + 32));
  type metadata accessor for DataTypeNoDataAvailableCell();
  v12 = v7;
  sub_1BA4A71C8();
  sub_1BA4A3468();
  (*(v4 + 16))(boxed_opaque_existential_1, v6, v3);
  sub_1BA4A3428();
  swift_storeEnumTagMultiPayload();
  v13 = [v12 uniqueIdentifier];
  v14 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  v16 = v15;

  v17 = (boxed_opaque_existential_1 + v10[5]);
  *v17 = v14;
  v17[1] = v16;
  LOBYTE(v13) = sub_1BA4A2708();
  (*(v4 + 8))(v6, v3);
  *(boxed_opaque_existential_1 + v10[6]) = v13;
  *(boxed_opaque_existential_1 + v10[7]) = v12;

  return v9;
}

void sub_1B9F28988()
{
  if (!qword_1EDC5E4F0)
  {
    type metadata accessor for DataTypeNoDataAvailableCell();
    type metadata accessor for NoDataItem(255);
    v0 = sub_1BA4A71D8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC5E4F0);
    }
  }
}

uint64_t sub_1B9F28A14()
{
  result = sub_1BA4A3428();
  if (v1 <= 0x3F)
  {
    result = sub_1BA4A27B8();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_1B9F28AB0(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
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

void sub_1B9F28B1C(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    sub_1B9F2176C(255, a3, a4, MEMORY[0x1E69E62F8]);
    v5 = sub_1BA4A80A8();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void *sub_1B9F28B98(void *result, int64_t a2, char a3, void *a4)
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
    sub_1B9F1D1BC(0, &qword_1EDC5DC08, sub_1B9F1D284, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1B9F1D284();
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_1B9F28CE4()
{
  if (!qword_1EDC5DFB0)
  {
    type metadata accessor for UIUserInterfaceSizeClass(255);
    sub_1B9F1AC28();
    sub_1B9F28EB8(&unk_1EDC5E320, type metadata accessor for UIUserInterfaceSizeClass);
    v0 = sub_1BA4A80A8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC5DFB0);
    }
  }
}

unint64_t sub_1B9F28D90(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  sub_1B9F28CE4();
  v3 = sub_1BA4A8098();
  v4 = *(a1 + 32);
  v16 = *(a1 + 40);
  v5 = *(a1 + 56);
  result = sub_1B9F1D2E0(v4);
  v7 = v16;
  if (v8)
  {
LABEL_7:
    __break(1u);
LABEL_8:
    swift_unknownObjectRetain();
    return v3;
  }

  v9 = (a1 + 88);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v3[6] + 8 * result) = v4;
    v10 = v3[7] + 24 * result;
    *v10 = v7;
    *(v10 + 16) = v5;
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

    v14 = v9 + 4;
    v4 = *(v9 - 3);
    v17 = *(v9 - 1);
    v5 = *v9;
    swift_unknownObjectRetain();
    result = sub_1B9F1D2E0(v4);
    v9 = v14;
    v7 = v17;
    if (v15)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B9F28EB8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B9F28F00(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B9F28F90(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1B9F28FD8(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

uint64_t sub_1B9F29044(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v33 = MEMORY[0x1E69E7CC0];
    sub_1B9F1C360(0, v2, 0);
    v32 = v33;
    v4 = v1 + 64;
    result = sub_1BA4A7C48();
    v5 = result;
    v6 = 0;
    v27 = v1 + 72;
    v28 = v2;
    v29 = v1 + 64;
    while ((v5 & 0x8000000000000000) == 0 && v5 < 1 << *(v1 + 32))
    {
      v8 = v5 >> 6;
      if ((*(v4 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
      {
        goto LABEL_22;
      }

      v30 = v6;
      v31 = *(v1 + 36);
      v9 = *(*(v1 + 56) + 24 * v5 + 16);
      ObjectType = swift_getObjectType();
      v11 = v1;
      v12 = *(v9 + 8);
      swift_unknownObjectRetain();
      v13 = v12(ObjectType, v9);
      v15 = v14;
      result = swift_unknownObjectRelease();
      v16 = v32;
      v18 = *(v32 + 16);
      v17 = *(v32 + 24);
      if (v18 >= v17 >> 1)
      {
        result = sub_1B9F1C360((v17 > 1), v18 + 1, 1);
        v16 = v32;
      }

      *(v16 + 16) = v18 + 1;
      v19 = v16 + 16 * v18;
      *(v19 + 32) = v13;
      *(v19 + 40) = v15;
      v7 = 1 << *(v11 + 32);
      if (v5 >= v7)
      {
        goto LABEL_23;
      }

      v1 = v11;
      v4 = v29;
      v20 = *(v29 + 8 * v8);
      if ((v20 & (1 << v5)) == 0)
      {
        goto LABEL_24;
      }

      v32 = v16;
      if (v31 != *(v1 + 36))
      {
        goto LABEL_25;
      }

      v21 = v20 & (-2 << (v5 & 0x3F));
      if (v21)
      {
        v7 = __clz(__rbit64(v21)) | v5 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v22 = v8 << 6;
        v23 = v8 + 1;
        v24 = (v27 + 8 * v8);
        while (v23 < (v7 + 63) >> 6)
        {
          v26 = *v24++;
          v25 = v26;
          v22 += 64;
          ++v23;
          if (v26)
          {
            result = sub_1BA0477A4(v5, v31, 0);
            v7 = __clz(__rbit64(v25)) + v22;
            goto LABEL_4;
          }
        }

        result = sub_1BA0477A4(v5, v31, 0);
      }

LABEL_4:
      v6 = v30 + 1;
      v5 = v7;
      if (v30 + 1 == v28)
      {
        return v32;
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
  }

  return result;
}

uint64_t sub_1B9F292B4@<X0>(uint64_t a1@<X8>)
{
  sub_1BA4A6598();
  *a1 = v2;
  v3 = objc_opt_self();
  *(a1 + 8) = [v3 estimatedDimension_];
  *(a1 + 16) = [v3 fractionalWidthDimension_];
  if (qword_1EDC6D4A0 != -1)
  {
    swift_once();
  }

  v4 = qword_1EDC6D4A8;
  v5 = qword_1EDC6D4B0;
  *(a1 + 24) = xmmword_1BA4D1E20;
  *(a1 + 40) = v4;
  *(a1 + 48) = v5;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 3;
  v6 = v4;
  v7 = v5;
  result = sub_1BA4A75C8();
  *(a1 + 96) = v9;
  *(a1 + 104) = v10;
  *(a1 + 112) = v11;
  *(a1 + 120) = v12;
  return result;
}

id sub_1B9F293A8(__int128 *a1)
{
  v1 = a1[1];
  v37 = *a1;
  v38 = v1;
  v2 = a1[4];
  v3 = a1[6];
  v4 = a1[7];
  v42 = a1[5];
  v43 = v3;
  v44 = v4;
  v5 = a1[3];
  v39 = a1[2];
  v40 = v5;
  v41 = v2;
  v6 = objc_opt_self();
  v7 = [v6 sizeWithWidthDimension:v38 heightDimension:*(&v37 + 1)];
  v8 = [objc_opt_self() itemWithLayoutSize_];

  v9 = [v8 layoutSize];
  v34 = v8;
  v10 = [objc_opt_self() horizontalGroupWithLayoutSize:v9 repeatingSubitem:v8 count:1];

  v33 = v10;
  v11 = [swift_getObjCClassFromMetadata() sectionWithGroup_];
  [v11 setContentInsets_];
  [v11 setInterGroupSpacing_];
  v28 = v11;
  [v11 setContentInsetsReference_];
  v29 = v6;
  if (*(&v39 + 1))
  {
    _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    v12 = [v6 &off_1E7EEF2C8 + 6];
    v13 = sub_1BA4A6758();
    v14 = [objc_opt_self() boundarySupplementaryItemWithLayoutSize:v12 elementKind:v13 alignment:*(&v38 + 1)];

    [v14 setPinToVisibleBounds_];
    v15 = v14;
    [v15 contentInsets];
    [v15 setContentInsets_];
    [v15 contentInsets];
    [v15 setContentInsets_];

    sub_1B9F1DA18(*(&v38 + 1), v39, *(&v39 + 1), v40);
  }

  else
  {
    v15 = 0;
  }

  v31 = *(&v39 + 1);
  v32 = v39;
  v16 = *(&v41 + 1);
  if (*(&v41 + 1))
  {
    _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    v17 = [v29 sizeWithWidthDimension:*(&v41 + 1) heightDimension:v42];
    v18 = sub_1BA4A6758();
    v19 = [objc_opt_self() boundarySupplementaryItemWithLayoutSize:v17 elementKind:v18 alignment:*(&v40 + 1)];

    [v19 setPinToVisibleBounds_];
    v20 = v19;
    [v20 contentInsets];
    [v20 setContentInsets_];
    [v20 contentInsets];
    [v20 setContentInsets_];

    v21 = v41;
    sub_1B9F1DA18(*(&v40 + 1), v41, *(&v41 + 1), v42);
  }

  else
  {
    v21 = v41;
    v20 = 0;
  }

  v36[4] = v15;
  v36[5] = v20;
  v35 = MEMORY[0x1E69E7CC0];
  v30 = v20;
  v22 = v15;
  for (i = 0; i != 2; ++i)
  {
    v24 = v36[i + 4];
    if (v24)
    {
      v25 = v24;
      MEMORY[0x1BFAF1510]();
      if (*((v35 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v35 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1BA4A6B68();
      }

      sub_1BA4A6BB8();
    }
  }

  sub_1B9F6A804(0, &qword_1EDC6B4E0, &qword_1EDC6B4E8);
  swift_arrayDestroy();
  sub_1B9F0ADF8(0, &qword_1EDC6B4E8);
  v26 = sub_1BA4A6AE8();

  [v28 setBoundarySupplementaryItems_];

  sub_1B9F1DA58(&v37);
  [v28 setSupplementariesFollowContentInsets_];

  return v28;
}

void sub_1B9F29940(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  if (a3)
  {
    v4 = a3;

    v5 = a4;
  }
}

uint64_t type metadata accessor for MutableArrayDataSourceWithLayout()
{
  result = qword_1EDC6BD10;
  if (!qword_1EDC6BD10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B9F299EC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t CompoundSectionedDataSource.__allocating_init(_:)(uint64_t result)
{
  v2 = result;
  v3 = *(result + 16);
  if (v3)
  {
    v4 = 0;
    v5 = MEMORY[0x1E69E7CC0];
    while (v4 < *(v2 + 16))
    {
      v9 = *(v2 + 32 + 16 * v4);
      swift_unknownObjectRetain();
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_1B9F1E00C(0, *(v5 + 16) + 1, 1, v5);
        v5 = result;
      }

      v7 = *(v5 + 16);
      v6 = *(v5 + 24);
      if (v7 >= v6 >> 1)
      {
        result = sub_1B9F1E00C(v6 > 1, v7 + 1, 1, v5);
        v5 = result;
      }

      ++v4;
      *(v5 + 16) = v7 + 1;
      *(v5 + 16 * v7 + 32) = v9;
      if (v3 == v4)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {
    v5 = MEMORY[0x1E69E7CC0];
LABEL_11:

    v8 = *(v1 + 208);

    return v8(v5);
  }

  return result;
}

uint64_t sub_1B9F29B74()
{
  v0 = sub_1B9F1E1B4();

  return v0;
}

id sub_1B9F29BAC()
{
  v0 = sub_1B9F1E1BC();

  return v0;
}

uint64_t sub_1B9F29C04()
{
  swift_beginAccess();
  v1 = *(v0 + 40);

  return v1;
}

uint64_t _s18HealthExperienceUI16SearchDataSourceC5StateO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v45 = type metadata accessor for SearchDataSource.State.SearchResults(0);
  v4 = MEMORY[0x1EEE9AC00](v45);
  v6 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v46 = &v45 - v7;
  v8 = type metadata accessor for SearchDataSource.State(0);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = (&v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = (&v45 - v13);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v45 - v15;
  sub_1B9F1E8AC();
  v18 = MEMORY[0x1EEE9AC00](v17 - 8);
  v20 = &v45 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = &v20[*(v18 + 56)];
  sub_1B9F12358(a1, v20, type metadata accessor for SearchDataSource.State);
  sub_1B9F12358(a2, v21, type metadata accessor for SearchDataSource.State);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      if (swift_getEnumCaseMultiPayload() != 3)
      {
LABEL_29:
        v43 = sub_1B9F1E8AC;
LABEL_36:
        sub_1B9F299EC(v20, v43);
        return 0;
      }

      goto LABEL_38;
    }

    sub_1B9F12358(v20, v11, type metadata accessor for SearchDataSource.State);
    v30 = *v11;
    v29 = v11[1];
    sub_1BA2717C8();
    v32 = *(v31 + 48);
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      sub_1B9F299EC(v11 + v32, type metadata accessor for SearchDataSource.State.SearchResults);
      goto LABEL_28;
    }

    v34 = *v21;
    v33 = *(v21 + 8);
    v35 = v11 + v32;
    v36 = v46;
    sub_1BA271DAC(v35, v46);
    sub_1BA271DAC(v21 + v32, v6);
    if (v30 == v34 && v29 == v33)
    {
    }

    else
    {
      v38 = sub_1BA4A8338();

      if ((v38 & 1) == 0)
      {
        goto LABEL_34;
      }
    }

    sub_1B9F0ADF8(0, &qword_1EDC6E350);
    if (sub_1BA4A7798() & 1) != 0 && (_s18HealthExperienceUI18DirectSearchResultV2eeoiySbAC_ACtFZ_0())
    {
      sub_1B9F299EC(v6, type metadata accessor for SearchDataSource.State.SearchResults);
      sub_1B9F299EC(v36, type metadata accessor for SearchDataSource.State.SearchResults);
      goto LABEL_38;
    }

LABEL_34:
    sub_1B9F299EC(v6, type metadata accessor for SearchDataSource.State.SearchResults);
    sub_1B9F299EC(v36, type metadata accessor for SearchDataSource.State.SearchResults);
    goto LABEL_35;
  }

  if (EnumCaseMultiPayload)
  {
    sub_1B9F12358(v20, v14, type metadata accessor for SearchDataSource.State);
    v40 = *v14;
    v39 = v14[1];
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      goto LABEL_28;
    }

    if (v40 != *v21 || v39 != *(v21 + 8))
    {
      v42 = sub_1BA4A8338();

      if (v42)
      {
        goto LABEL_38;
      }

LABEL_35:
      v43 = type metadata accessor for SearchDataSource.State;
      goto LABEL_36;
    }

LABEL_38:
    sub_1B9F299EC(v20, type metadata accessor for SearchDataSource.State);
    return 1;
  }

  sub_1B9F12358(v20, v16, type metadata accessor for SearchDataSource.State);
  v24 = *v16;
  v23 = *(v16 + 1);
  v25 = v16[16];
  if (swift_getEnumCaseMultiPayload())
  {
LABEL_28:

    goto LABEL_29;
  }

  v26 = *(v21 + 16);
  if (v24 != *v21 || v23 != *(v21 + 8))
  {
    v28 = sub_1BA4A8338();

    if (v28)
    {
      goto LABEL_40;
    }

    goto LABEL_35;
  }

LABEL_40:
  sub_1B9F299EC(v20, type metadata accessor for SearchDataSource.State);
  return v25 ^ v26 ^ 1u;
}

uint64_t sub_1B9F2A1AC()
{
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  result = sub_1BA4A1318();
  qword_1EDC5E820 = result;
  unk_1EDC5E828 = v1;
  return result;
}

uint64_t sub_1B9F2A278(void *a1)
{
  if (*a1 == -1)
  {
  }

  else
  {
    swift_once();
  }
}

unint64_t sub_1B9F2A2D8(unint64_t *a1)
{
  v3 = *a1;
  result = sub_1B9F1EFC4(*a1);
  v6 = result;
  if (v1)
  {
    return v6;
  }

  if (v5)
  {
    if (v3 >> 62)
    {
      return sub_1BA4A7CC8();
    }

    return *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v7 = result + 1;
  if (__OFADD__(result, 1))
  {
    __break(1u);
    return result;
  }

  v8 = &qword_1EDC6E350;
  v24 = a1;
  while (1)
  {
    if (v3 >> 62)
    {
      if (v7 == sub_1BA4A7CC8())
      {
        return v6;
      }
    }

    else if (v7 == *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return v6;
    }

    if ((v3 & 0xC000000000000001) != 0)
    {
      v10 = MEMORY[0x1BFAF2860](v7, v3);
      goto LABEL_15;
    }

    if ((v7 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v7 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_40;
    }

    v10 = *(v3 + 8 * v7 + 32);
LABEL_15:
    v11 = v10;
    sub_1B9F0ADF8(0, v8);
    v12 = sub_1BA4A7798();

    if ((v12 & 1) == 0)
    {
      if (v6 != v7)
      {
        if ((v3 & 0xC000000000000001) != 0)
        {
          v13 = MEMORY[0x1BFAF2860](v6, v3);
          v14 = MEMORY[0x1BFAF2860](v7, v3);
        }

        else
        {
          if ((v6 & 0x8000000000000000) != 0)
          {
            goto LABEL_44;
          }

          v15 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v6 >= v15)
          {
            goto LABEL_45;
          }

          if (v7 >= v15)
          {
            goto LABEL_46;
          }

          v16 = *(v3 + 32 + 8 * v7);
          v13 = *(v3 + 32 + 8 * v6);
          v14 = v16;
        }

        v17 = v14;
        v18 = v8;
        if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v3 & 0x8000000000000000) != 0 || (v3 & 0x4000000000000000) != 0)
        {
          v3 = sub_1B9F2A568(v3);
          v19 = (v3 >> 62) & 1;
        }

        else
        {
          LODWORD(v19) = 0;
        }

        v20 = v3 & 0xFFFFFFFFFFFFFF8;
        v21 = *((v3 & 0xFFFFFFFFFFFFFF8) + 8 * v6 + 0x20);
        *((v3 & 0xFFFFFFFFFFFFFF8) + 8 * v6 + 0x20) = v17;

        if ((v3 & 0x8000000000000000) != 0 || v19)
        {
          v3 = sub_1B9F2A568(v3);
          v20 = v3 & 0xFFFFFFFFFFFFFF8;
          if ((v7 & 0x8000000000000000) != 0)
          {
LABEL_37:
            __break(1u);
            return v6;
          }
        }

        else if ((v7 & 0x8000000000000000) != 0)
        {
          goto LABEL_37;
        }

        if (v7 >= *(v20 + 16))
        {
          goto LABEL_43;
        }

        v8 = v18;
        v22 = v20 + 8 * v7;
        v23 = *(v22 + 32);
        *(v22 + 32) = v13;

        *v24 = v3;
      }

      v9 = __OFADD__(v6++, 1);
      if (v9)
      {
        goto LABEL_42;
      }
    }

    v9 = __OFADD__(v7++, 1);
    if (v9)
    {
      goto LABEL_41;
    }
  }

  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
  return sub_1BA4A7CC8();
}

uint64_t sub_1B9F2A570(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_1BA4A7CC8();
  }

  return sub_1BA4A7E38();
}

uint64_t sub_1B9F2A5DC(uint64_t a1, uint64_t a2)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = a2;
    v4 = a1;
    v5 = *v3;
    v6 = *v3 >> 62;
    if (!v6)
    {
      result = *((*v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  result = sub_1BA4A7CC8();
  if (result < v2)
  {
    goto LABEL_15;
  }

LABEL_4:
  if (__OFSUB__(v2, v4))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v4 - v2;
  if (__OFSUB__(0, v2 - v4))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v6)
  {
    v9 = sub_1BA4A7CC8();
  }

  else
  {
    v9 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v10 = __OFADD__(v9, v8);
  result = v9 + v8;
  if (v10)
  {
    goto LABEL_18;
  }

  sub_1B9F2A5D4(result, 1);

  return sub_1B9F1F0EC(v4, v2, 0);
}

uint64_t sub_1B9F2A6B4(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  sub_1BA4A7CC8();
LABEL_9:
  result = sub_1BA4A7E38();
  *v1 = result;
  return result;
}

char *sub_1B9F2A754(char *result, int64_t a2, char a3, char *a4)
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
    sub_1B9F2180C(0, &qword_1EDC6E908, &type metadata for HKTypeGroup, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_1B9F2A8A8()
{
  if (!qword_1EDC6E630)
  {
    type metadata accessor for HKDisplayCategoryIdentifier(255);
    sub_1B9F2A93C(&qword_1EDC6E650, type metadata accessor for HKDisplayCategoryIdentifier);
    v0 = sub_1BA4A7DA8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC6E630);
    }
  }
}

uint64_t sub_1B9F2A93C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B9F2A984(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B9F2A9CC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B9F2AA14(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B9F2AA5C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B9F2AAA4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B9F2AAEC(unint64_t *a1, void (*a2)(uint64_t))
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

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

id HKTypeGroup.displayCategory.getter()
{
  v1 = v0[3];
  v2 = v0[4];
  result = [objc_opt_self() categoryWithID_];
  if (!result)
  {
    sub_1BA4A7DF8();
    MEMORY[0x1BFAF1350](0xD000000000000029, 0x80000001BA4F2650);
    type metadata accessor for HKDisplayCategoryIdentifier(0);
    sub_1BA4A7FB8();
    MEMORY[0x1BFAF1350](8236, 0xE200000000000000);
    MEMORY[0x1BFAF1350](v1, v2);
    result = sub_1BA4A8018();
    __break(1u);
  }

  return result;
}

void sub_1B9F2AC84(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_1B9F2ACE8()
{
  result = qword_1EDC6B620;
  if (!qword_1EDC6B620)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDC6B620);
  }

  return result;
}

uint64_t ProvidedViewContext.init(healthStore:pinnedContentManagerProvider:pinnedContentManager:healthExperienceStore:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  v11 = a1;
  sub_1B9F2ACE8();
  v9 = a1;
  sub_1BA4A4EE8();
  swift_endAccess();
  *(v4 + OBJC_IVAR____TtC18HealthExperienceUI19ProvidedViewContext_pinnedContentManagerProvider) = a2;
  sub_1B9F0A534(a3, v4 + OBJC_IVAR____TtC18HealthExperienceUI19ProvidedViewContext_pinnedContentManager);
  sub_1B9F0A534(a4, v12);
  swift_beginAccess();
  sub_1B9F0A534(v12, &v11);
  sub_1B9F1F4BC();

  sub_1BA4A4EE8();
  __swift_destroy_boxed_opaque_existential_1(v12);
  swift_endAccess();

  __swift_destroy_boxed_opaque_existential_1(a4);
  __swift_destroy_boxed_opaque_existential_1(a3);
  return v4;
}

uint64_t sub_1B9F2AE74()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BA4A4F28();

  return v1;
}

uint64_t sub_1B9F2AF0C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BA4A4F28();
}

void sub_1B9F2B074(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t sub_1B9F2B0C8(uint64_t a1, unint64_t a2)
{
  v5 = sub_1BA4A3EA8();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA4A0EB8();
  swift_allocObject();
  sub_1BA4A0EA8();
  v9 = type metadata accessor for TabActionModel(0);
  sub_1BA232990(&qword_1EDC69260, type metadata accessor for TabActionModel);
  sub_1BA4A0E98();
  if (v2)
  {
    v29 = v5;

    sub_1BA4A3E28();
    v10 = v2;
    v11 = sub_1BA4A3E88();
    v12 = sub_1BA4A6FA8();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v27 = a1;
      v15 = v14;
      v31 = v14;
      *v13 = 136315394;
      v30 = v9;
      sub_1B9F2D04C(0, &qword_1EBBEECC8, type metadata accessor for TabActionModel);
      v16 = sub_1BA4A6808();
      v18 = sub_1B9F0B82C(v16, v17, &v31);
      v28 = a2;
      v19 = v18;

      *(v13 + 4) = v19;
      *(v13 + 12) = 2082;
      v30 = v2;
      v20 = v2;
      sub_1B9FED358();
      v21 = sub_1BA4A6808();
      v23 = sub_1B9F0B82C(v21, v22, &v31);

      *(v13 + 14) = v23;
      a2 = v28;
      _os_log_impl(&dword_1B9F07000, v11, v12, "Failed to decode data for %s with error: %{public}s", v13, 0x16u);
      swift_arrayDestroy();
      v24 = v15;
      a1 = v27;
      MEMORY[0x1BFAF43A0](v24, -1, -1);
      MEMORY[0x1BFAF43A0](v13, -1, -1);
    }

    (*(v6 + 8))(v8, v29);
    sub_1B9F21374();
    swift_allocError();
    *v25 = v2 | 0x4000000000000000;
    swift_willThrow();
    return sub_1B9F2BB4C(a1, a2);
  }

  else
  {
    sub_1B9F2BB4C(a1, a2);
  }
}

uint64_t TabActionModel.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  sub_1B9F20584(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v30 = v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1BA4A2BF8();
  v32 = *(v5 - 8);
  v33 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F2B900(0, &qword_1EDC5DF20, sub_1B9F2B968, &type metadata for TabActionModel.CodingKeys, MEMORY[0x1E69E6F48]);
  v35 = v8;
  v31 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v27 - v9;
  v11 = type metadata accessor for TabActionModel(0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = (v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = *(v12 + 24);
  v16 = sub_1BA4A2B98();
  v17 = *(*(v16 - 8) + 56);
  v37 = v15;
  v17(v14 + v15, 1, 1, v16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B9F2B968();
  v34 = v10;
  v18 = v36;
  sub_1BA4A8528();
  if (v18)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    v25 = sub_1B9F20584;
    v26 = v14 + v37;
  }

  else
  {
    v28 = v11;
    v20 = v31;
    v19 = v32;
    v36 = a1;
    v21 = v33;
    v40 = 0;
    *v14 = sub_1BA4A8188();
    v14[1] = v23;
    v27[1] = v23;
    v39 = 1;
    sub_1B9F2089C(&qword_1EDC6AD58, MEMORY[0x1E69A32A0]);
    sub_1BA4A81C8();
    (*(v19 + 32))(v14 + *(v28 + 20), v7, v21);
    v38 = 2;
    sub_1B9F2089C(&qword_1EDC6E1D8, MEMORY[0x1E69A3260]);
    v24 = v30;
    sub_1BA4A8178();
    (*(v20 + 8))(v34, v35);
    sub_1B9F2BAE8(v24, v37);
    sub_1B9F20A24(0, v29, type metadata accessor for TabActionModel);
    __swift_destroy_boxed_opaque_existential_1(v36);
    v25 = type metadata accessor for TabActionModel;
    v26 = 0;
  }

  return sub_1B9F20AEC(v26, v25);
}

void sub_1B9F2B900(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

unint64_t sub_1B9F2B968()
{
  result = qword_1EDC6DBF8;
  if (!qword_1EDC6DBF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC6DBF8);
  }

  return result;
}

unint64_t sub_1B9F2B9C0()
{
  result = qword_1EDC6DBE8;
  if (!qword_1EDC6DBE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC6DBE8);
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for SummarySharingSelectionSuggestedMedicationsCategory(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1B9F2BAE8(uint64_t a1, uint64_t a2)
{
  sub_1B9F20584(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B9F2BB4C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_1B9F2BBA0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_1B9F2BC34(uint64_t a1, void *a2)
{
  v36 = a2;
  sub_1B9F2B074(0, &qword_1EDC6E1D0, MEMORY[0x1E69A3260]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v34 - v5;
  v7 = sub_1BA4A2C58();
  v35 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1BA4A2BF8();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = (v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1B9F2B074(0, &qword_1EDC5E8B0, sub_1B9F20B4C);
  v15 = MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = v34 - v18;
  (*(v11 + 16))(v13, v2, v10);
  if ((*(v11 + 88))(v13, v10) != *MEMORY[0x1E69A3288])
  {
    (*(v11 + 8))(v13, v10);
    sub_1BA4A2BB8();
    return;
  }

  (*(v11 + 96))(v13, v10);
  v34[1] = *v13;
  sub_1B9F2C258();
  sub_1B9F2C2E0(v13 + *(v20 + 48), v19);
  sub_1B9F20BB4(v19, v17, &qword_1EDC5E8B0, sub_1B9F20B4C);
  sub_1B9F20B4C();
  v22 = v21;
  v23 = *(v21 - 8);
  if ((*(v23 + 48))(v17, 1, v21) != 1)
  {
    v26 = sub_1BA4A65C8();
    (*(v23 + 8))(v17, v22);
LABEL_8:
    v26 = v26;
    goto LABEL_9;
  }

  sub_1B9F20C20(v17, &qword_1EDC5E8B0, sub_1B9F20B4C);
  sub_1B9F20BB4(a1, v6, &qword_1EDC6E1D0, MEMORY[0x1E69A3260]);
  v24 = sub_1BA4A2B98();
  v25 = *(v24 - 8);
  if ((*(v25 + 48))(v6, 1, v24) == 1)
  {
    sub_1B9F20C20(v6, &qword_1EDC6E1D0, MEMORY[0x1E69A3260]);
    v26 = 0;
    goto LABEL_9;
  }

  v27 = v36;
  sub_1BA4A2C48();
  v28 = sub_1BA4A2B68();
  (*(v35 + 8))(v9, v7);
  (*(v25 + 8))(v6, v24);
  sub_1B9F1C048(0, &qword_1EDC6B400);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_1BA4B5470;
  *(v29 + 32) = v28;
  sub_1B9F0ADF8(0, &qword_1EDC6E380);
  v30 = v28;
  v31 = sub_1BA4A6AE8();

  v26 = [objc_opt_self() configurationWithPaletteColors_];

  if (v26)
  {
    goto LABEL_8;
  }

LABEL_9:
  v32 = sub_1BA4A6758();
  v33 = [objc_opt_self() _systemImageNamed_withConfiguration_];

  if (v33)
  {

    if (qword_1EDC5E2E0 != -1)
    {
      swift_once();
    }

    [v33 imageByApplyingSymbolConfiguration_];

    sub_1B9F20C20(v19, &qword_1EDC5E8B0, sub_1B9F20B4C);
  }

  else
  {
    __break(1u);
  }
}

void sub_1B9F2C258()
{
  if (!qword_1EDC5E748)
  {
    sub_1B9F2B074(255, &qword_1EDC5E8B0, sub_1B9F20B4C);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDC5E748);
    }
  }
}

uint64_t sub_1B9F2C2E0(uint64_t a1, uint64_t a2)
{
  sub_1B9F2B074(0, &qword_1EDC5E8B0, sub_1B9F20B4C);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id sub_1B9F2C360()
{
  result = [objc_opt_self() configurationWithWeight_];
  qword_1EDC5E2E8 = result;
  return result;
}

id sub_1B9F2C3A0@<X0>(void **a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  sub_1B9F2B074(0, &qword_1EDC5F930, type metadata accessor for TabModel);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v43 - v8;
  v10 = type metadata accessor for TabModel(0);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = (&v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = *a1;
  result = [v14 userData];
  if (result)
  {
    v50 = a2;
    v52 = a3;
    v16 = result;
    v17 = sub_1BA4A1608();
    v19 = v18;

    sub_1B9F206D4(v17, v19);
    sub_1B9F20EEC(v17, v19);
    if (v3)
    {

      sub_1B9F2BB4C(v17, v19);
      (*(v11 + 56))(v9, 1, 1, v10);
      result = sub_1B9F20C20(v9, &qword_1EDC5F930, type metadata accessor for TabModel);
      v20 = 0;
LABEL_10:
      a3 = v52;
      goto LABEL_11;
    }

    v47 = v17;
    v48 = v19;
    (*(v11 + 56))(v9, 0, 1, v10);
    sub_1B9F2BBA0(v9, v13, type metadata accessor for TabModel);
    v21 = swift_allocObject();
    v22 = v50;
    swift_unknownObjectWeakInit();
    v23 = swift_allocObject();
    *(v23 + 16) = v21;
    *(v23 + 24) = v14;
    v24 = *(v10 + 24);
    v25 = *(v22 + OBJC_IVAR____TtC18HealthExperienceUI16CoreDataTabGroup_healthStore);
    v26 = v14;
    v46 = v26;

    sub_1B9F2BC34(v13 + v24, v25);
    v28 = v27;
    v30 = *v13;
    v29 = v13[1];
    v31 = [v26 uniqueIdentifier];
    v32 = objc_allocWithZone(MEMORY[0x1E69DCFE0]);
    v33 = v28;
    v44 = v30;
    v45 = v29;
    v34 = sub_1BA4A6758();
    aBlock[4] = sub_1BA141A08;
    aBlock[5] = v23;
    v49 = v23;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1B9F7EBBC;
    aBlock[3] = &block_descriptor_27_0;
    v35 = _Block_copy(aBlock);

    v20 = [v32 initWithTitle:v34 image:v33 identifier:v31 viewControllerProvider:v35];
    _Block_release(v35);

    v36 = [v46 baseAutomationIdentifier];
    if (v36)
    {
      v37 = v36;
    }

    else
    {
      sub_1B9F1C048(0, &qword_1EDC6E330);
      v38 = swift_allocObject();
      *(v38 + 16) = xmmword_1BA4B5460;
      *(v38 + 32) = 6447444;
      *(v38 + 40) = 0xE300000000000000;
      *(v38 + 48) = v44;
      *(v38 + 56) = v45;

      v39 = sub_1BA4A6AE8();

      v37 = HKUIJoinStringsForAutomationIdentifier();

      if (!v37)
      {
        v40 = v48;
        goto LABEL_9;
      }
    }

    v40 = v48;
    _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();

    v37 = sub_1BA4A6758();

LABEL_9:
    [v20 setAccessibilityIdentifier_];

    v41 = OBJC_IVAR____TtC18HealthExperienceUI16CoreDataTabGroup_allowsChildrenHiding;
    v42 = v50;
    swift_beginAccess();
    [v20 setAllowsHiding_];

    sub_1B9F2BB4C(v47, v40);
    result = sub_1B9F20C7C(v13, type metadata accessor for TabModel);
    goto LABEL_10;
  }

  v20 = 0;
LABEL_11:
  *a3 = v20;
  return result;
}

uint64_t sub_1B9F2C8C0()
{
  MEMORY[0x1BFAF44B0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B9F2C920(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  result = sub_1BA4A2BF8();
  if (v6 <= 0x3F)
  {
    result = a4(319);
    if (v7 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t TabModel.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a2;
  sub_1B9F20584(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v35 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1BA4A2BF8();
  v36 = *(v5 - 8);
  v37 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F2B900(0, &qword_1EDC5DE68, sub_1B9F2CF00, &type metadata for TabModel.CodingKeys, MEMORY[0x1E69E6F48]);
  v40 = v8;
  v38 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v31 - v9;
  v11 = type metadata accessor for TabModel(0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = (&v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = *(v12 + 24);
  v16 = sub_1BA4A2B98();
  v17 = *(*(v16 - 8) + 56);
  v18 = v14;
  v42 = v15;
  v17(v14 + v15, 1, 1, v16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B9F2CF00();
  v39 = v10;
  v19 = v41;
  sub_1BA4A8528();
  if (v19)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    v29 = sub_1B9F20584;
    v30 = v14 + v42;
  }

  else
  {
    v20 = v7;
    v21 = v11;
    v23 = v36;
    v22 = v37;
    v46 = 0;
    *v14 = sub_1BA4A8188();
    v14[1] = v25;
    v41 = v25;
    v45 = 1;
    sub_1B9F2089C(&qword_1EDC6AD58, MEMORY[0x1E69A32A0]);
    sub_1BA4A81C8();
    v33 = v21;
    (*(v23 + 32))(v14 + *(v21 + 20), v20, v22);
    v44 = 2;
    sub_1B9F2089C(&qword_1EDC6E1D8, MEMORY[0x1E69A3260]);
    v26 = v35;
    v31 = 0;
    sub_1BA4A8178();
    v32 = a1;
    sub_1B9F2BAE8(v26, v42);
    v43 = 3;
    v27 = sub_1BA4A81B8();
    (*(v38 + 8))(v39, v40);
    v28 = v34;
    *(v18 + *(v33 + 28)) = v27;
    sub_1B9F20A24(v18, v28, type metadata accessor for TabModel);
    __swift_destroy_boxed_opaque_existential_1(v32);
    v29 = type metadata accessor for TabModel;
    v30 = v18;
  }

  return sub_1B9F20AEC(v30, v29);
}

unint64_t sub_1B9F2CF00()
{
  result = qword_1EDC6B870;
  if (!qword_1EDC6B870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC6B870);
  }

  return result;
}

unint64_t sub_1B9F2CF58()
{
  result = qword_1EDC6B860;
  if (!qword_1EDC6B860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC6B860);
  }

  return result;
}

unint64_t sub_1B9F2CFB0()
{
  result = qword_1EDC6B868;
  if (!qword_1EDC6B868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC6B868);
  }

  return result;
}

uint64_t sub_1B9F2D004(uint64_t a1)
{
  v2 = sub_1B9F2CF00();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B9F2D04C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

void *sub_1B9F2D098(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  sub_1B9F2D14C();
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

uint64_t sub_1B9F2D100(uint64_t a1, unint64_t a2)
{
  v3 = sub_1B9F21244(a1, a2);
  sub_1B9F2D19C(&unk_1F37FBC10);
  return v3;
}

void sub_1B9F2D14C()
{
  if (!qword_1EDC6E318)
  {
    v0 = sub_1BA4A82E8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC6E318);
    }
  }
}

uint64_t sub_1B9F2D19C(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_1B9FD6964(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1B9F2D288(uint64_t a1)
{
  v2 = sub_1B9F2CF00();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t objectdestroy_8Tm()
{
  v1 = *(sub_1BA4A2918() - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    v5 = sub_1BA4A1728();
    (*(*(v5 - 8) + 8))(v0 + v3, v5);
  }

  if (*(v0 + v4))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, v4 + 16, v2 | 7);
}

uint64_t objectdestroy_8Tm_0()
{

  return MEMORY[0x1EEE6BDD0](v0, 41, 7);
}

uint64_t sub_1B9F2D450(void *a1)
{
  v1 = a1;
  v2 = [v1 visibleViewController];
  if (v2)
  {
    v3 = v2;
    v4 = swift_dynamicCastObjCProtocolConditional();
    if (v4)
    {
      v5 = [v4 overrideMask];

      return v5;
    }
  }

  else
  {
  }

  return 2;
}

uint64_t HealthAppAnalyticsManager.init(healthStore:pinnedContentManager:)(uint64_t a1, __int128 *a2)
{
  *(v2 + 16) = 0;
  *(v2 + 24) = a1;
  sub_1B9F25598(a2, v2 + 32);
  return v2;
}

uint64_t dispatch thunk of HealthAppAnalyticsManager.submitLaunchInteraction(using:)(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(*v1 + 136);
  v4 = *(a1 + 16);
  v6[0] = *a1;
  v6[1] = v4;
  v7 = v2;
  return v3(v6);
}

unint64_t sub_1B9F2D594()
{
  result = qword_1EDC5E0E0;
  if (!qword_1EDC5E0E0)
  {
    sub_1B9F0ADF8(255, &qword_1EDC6E360);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC5E0E0);
  }

  return result;
}

uint64_t sub_1B9F2D5FC(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_1BA4A6478();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1BA4A64C8();
  v14 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v16 = v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21[1] = *(a2 + 208);
  v17 = swift_allocObject();
  *(v17 + 16) = a2;
  *(v17 + 24) = a1;
  *(v17 + 32) = a3;
  *(v17 + 40) = a4;
  *(v17 + 48) = a5;
  aBlock[4] = sub_1B9F22E38;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B9F0B040;
  aBlock[3] = &block_descriptor_56_2;
  v18 = _Block_copy(aBlock);

  sub_1BA4A64A8();
  v23 = MEMORY[0x1E69E7CC0];
  sub_1B9F2240C(&qword_1EDC5E8E0, 255, MEMORY[0x1E69E7F60]);
  v19 = MEMORY[0x1E69E7F60];
  sub_1B9F22538(0, &qword_1EDC5E6B0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_1B9F0B8F8(&qword_1EDC5E6A0, &qword_1EDC5E6B0, v19);
  sub_1BA4A7C38();
  MEMORY[0x1BFAF1D50](0, v16, v13, v18);
  _Block_release(v18);
  (*(v11 + 8))(v13, v10);
  (*(v14 + 8))(v16, v22);
}

uint64_t sub_1B9F2D908()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

void sub_1B9F2D960(uint64_t (*a1)(void), unint64_t *a2, void (*a3)(uint64_t))
{
  v6 = v3;
  v7 = a1(0);
  v8 = swift_conformsToProtocol2();
  if (v8 && v7)
  {
    v9 = v8;
    v10 = (*(v8 + 24))(v7, v8);
    (*(*(v9 + 16) + 8))(v7);
    v13 = sub_1BA4A6758();

    [v6 registerNib:v10 forCellWithReuseIdentifier:v13];
  }

  else
  {
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    sub_1B9F2DACC(0, a2, a3);
    sub_1BA4A6808();
    v12 = sub_1BA4A6758();

    [v6 registerClass:ObjCClassFromMetadata forCellWithReuseIdentifier:v12];
  }
}

uint64_t sub_1B9F2DACC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t sub_1B9F2DB30()
{
  type metadata accessor for DelayedDataSource.DataSourceState();
  result = sub_1BA4A4F58();
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

uint64_t sub_1B9F2DBE8()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t type metadata accessor for NoticesDataSource()
{
  result = qword_1EDC68330;
  if (!qword_1EDC68330)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

char *NoticesDataSource.init(healthExperienceStore:associatedProfileIdentifier:)(void *a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v4 = sub_1BA4A1B68();
  v5 = sub_1BA4A7578();

  v6 = _s18HealthExperienceUI33FeedItemSuggestedActionDataSourceCyACSo26NSFetchedResultsControllerCy0A8Platform0dE0CGcfc_0(v5);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v6;
}

void *HideableDataSource.init(source:visibility:)(uint64_t a1, char *a2)
{
  v2 = sub_1B9F37820(a1, a2);
  swift_unknownObjectRelease();
  return v2;
}

uint64_t type metadata accessor for ListLayoutConfiguration()
{
  result = qword_1EDC66BB0;
  if (!qword_1EDC66BB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1B9F2DDA4()
{
  sub_1B9F6A804(319, &qword_1EDC5E2A8, &unk_1EDC5E2B0);
  if (v0 <= 0x3F)
  {
    sub_1B9F0ADF8(319, &qword_1EDC6E380);
    if (v1 <= 0x3F)
    {
      type metadata accessor for NSDirectionalEdgeInsets(319);
      if (v2 <= 0x3F)
      {
        sub_1B9F37B64(319, &qword_1EDC5E348, type metadata accessor for NSDirectionalEdgeInsets);
        if (v3 <= 0x3F)
        {
          sub_1B9F37B64(319, &qword_1EDC5DB48, sub_1B9F37BB8);
          if (v4 <= 0x3F)
          {
            type metadata accessor for UIContentInsetsReference(319);
            if (v5 <= 0x3F)
            {
              sub_1BA4A47D8();
              if (v6 <= 0x3F)
              {
                sub_1BA4A47C8();
                if (v7 <= 0x3F)
                {
                  swift_cvw_initStructMetadataWithLayoutString();
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1B9F2DF68()
{
  v0 = type metadata accessor for ListLayoutConfiguration();
  __swift_allocate_value_buffer(v0, qword_1EDC6CBB8);
  v1 = __swift_project_value_buffer(v0, qword_1EDC6CBB8);
  return _s18HealthExperienceUI23ListLayoutConfigurationV16withLeadingInset5insetAC12CoreGraphics7CGFloatV_tFZ_0(v1);
}

uint64_t sub_1B9F2DFF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  swift_allocObject();
  v10 = a5(a1, a2, a3, a4);

  return v10;
}

uint64_t sub_1B9F2E074(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = sub_1BA4A1798();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = (v5 + OBJC_IVAR____TtC18HealthExperienceUI32MutableArrayDataSourceWithLayout_layoutSectionProvider);
  *v14 = a3;
  v14[1] = a4;
  *(v5 + OBJC_IVAR____TtC18HealthExperienceUI32MutableArrayDataSourceWithLayout_collapseEmptySections) = a2;
  v19[0] = 0;
  v19[1] = 0xE000000000000000;

  sub_1BA4A7DF8();

  strcpy(v19, "MutableArray<");
  HIWORD(v19[1]) = -4864;
  sub_1BA4A1788();
  v15 = sub_1BA4A1748();
  v17 = v16;
  (*(v11 + 8))(v13, v10);
  MEMORY[0x1BFAF1350](v15, v17);

  MEMORY[0x1BFAF1350](62, 0xE100000000000000);
  return MutableArrayDataSource.init(arrangedSections:identifier:)(a1, v19[0], v19[1]);
}

uint64_t *SnapshotDataSource.withSupplementaryItem(_:)(uint64_t a1)
{
  type metadata accessor for Supplementary();
  sub_1B9F0A534(a1, v6);
  v2 = swift_allocObject();
  sub_1B9F25598(v6, v2 + 16);
  swift_allocObject();
  v3 = swift_unknownObjectRetain();
  v4 = sub_1B9F2E2FC(v3, sub_1B9F79BBC, v2);
  swift_unknownObjectRelease();

  return v4;
}

uint64_t sub_1B9F2E2C4()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t *sub_1B9F2E2FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *v3;
  v3[4] = a1;
  v3[5] = a2;
  v3[6] = a3;
  v5 = *(v4 + 88);
  v6 = *(v5 + 8);
  v7 = *(v4 + 80);
  swift_unknownObjectRetain();

  v3[2] = v6(v7, v5);
  v3[3] = v8;
  return v3;
}

uint64_t DownloadingPinningDataSource.init(title:showDownloadingDataItem:)(uint64_t a1, uint64_t a2, char a3)
{
  type metadata accessor for EmptyStateCollectionViewCell();
  sub_1B9F2E628(0, &qword_1EDC6C3D0, type metadata accessor for EmptyStateCollectionViewCell);
  v7 = sub_1BA4A6808();
  v8 = v3 + OBJC_IVAR____TtC18HealthExperienceUI28DownloadingPinningDataSource_downloadingDataItem;
  *v8 = v7;
  *(v8 + 8) = v9;
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  *(v8 + 32) = 1;
  v10 = sub_1B9F2E074(MEMORY[0x1E69E7CC0], 1, sub_1BA1DF920, 0);
  if (a3)
  {
    sub_1BA3DAE94(0, &qword_1EDC5DCA0, &qword_1EDC6AD50, MEMORY[0x1E69A3310], MEMORY[0x1E69E6F90]);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_1BA4B5480;
    v13 = *(v10 + OBJC_IVAR____TtC18HealthExperienceUI28DownloadingPinningDataSource_downloadingDataItem);
    v12 = *(v10 + OBJC_IVAR____TtC18HealthExperienceUI28DownloadingPinningDataSource_downloadingDataItem + 8);
    v15 = *(v10 + OBJC_IVAR____TtC18HealthExperienceUI28DownloadingPinningDataSource_downloadingDataItem + 16);
    v14 = *(v10 + OBJC_IVAR____TtC18HealthExperienceUI28DownloadingPinningDataSource_downloadingDataItem + 24);
    v16 = *(v10 + OBJC_IVAR____TtC18HealthExperienceUI28DownloadingPinningDataSource_downloadingDataItem + 32);
    *(v11 + 56) = &type metadata for EmptyStateCollectionViewCellItem;
    *(v11 + 64) = sub_1BA02090C();
    v17 = swift_allocObject();
    *(v11 + 32) = v17;
    *(v17 + 16) = v13;
    *(v17 + 24) = v12;
    *(v17 + 32) = v15;
    *(v17 + 40) = v14;
    *(v17 + 48) = v16;

    sub_1BA0EB668(0, v11, 1);
  }

  return v10;
}

uint64_t sub_1B9F2E5DC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t sub_1B9F2E628(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t type metadata accessor for PinnedContentDataSource()
{
  result = qword_1EDC66AC8;
  if (!qword_1EDC66AC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

char *PinnedContentDataSource.init(pinnedContentManager:context:)(uint64_t a1, void *a2)
{
  v3 = v2;
  sub_1BA4A27B8();
  v4 = sub_1BA4A26E8();
  sub_1B9F0ADF8(0, &qword_1EDC6B630);
  sub_1B9F2EAC0();
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1BA4B5460;
  v6 = MEMORY[0x1E69E6158];
  *(v5 + 56) = MEMORY[0x1E69E6158];
  v7 = sub_1B9F1BE20();
  *(v5 + 64) = v7;
  *(v5 + 32) = 0xD000000000000016;
  *(v5 + 40) = 0x80000001BA4F41D0;
  v8 = sub_1BA4A2738();
  *(v5 + 96) = v6;
  *(v5 + 104) = v7;
  *(v5 + 72) = v8;
  *(v5 + 80) = v9;
  v10 = sub_1BA4A6EE8();
  sub_1B9F1C048(0, &qword_1EDC6B450);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1BA4B5460;
  *(v11 + 32) = sub_1BA4A1D78();
  *(v11 + 40) = 0;
  v12 = MEMORY[0x1BFAED1E0](v11);

  v14 = MEMORY[0x1BFAED110](v13);
  sub_1B9F1C048(0, &qword_1EDC6B400);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1BA4B8B60;
  *(v15 + 32) = v4;
  *(v15 + 40) = v10;
  *(v15 + 48) = v12;
  v16 = v4;
  v17 = v10;
  v18 = v12;
  v19 = sub_1BA4A6AE8();

  v20 = [objc_opt_self() andPredicateWithSubpredicates_];

  [v14 setPredicate_];
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1BA4B7510;
  v22 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  v23 = sub_1BA4A6758();
  v24 = [v22 initWithKey:v23 ascending:1];

  *(v21 + 32) = v24;
  v25 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  v26 = sub_1BA4A6758();
  v27 = [v25 initWithKey:v26 ascending:1 selector:sel_localizedStandardCompare_];

  *(v21 + 40) = v27;
  sub_1B9F0ADF8(0, &qword_1EDC6E3E0);
  v28 = sub_1BA4A6AE8();

  [v14 setSortDescriptors_];

  v29 = [objc_allocWithZone(MEMORY[0x1E695D600]) initWithFetchRequest:v14 managedObjectContext:a2 sectionNameKeyPath:0 cacheName:0];
  sub_1B9F0A534(a1, v3 + qword_1EBC09290);
  v30 = _s18HealthExperienceUI33FeedItemSuggestedActionDataSourceCyACSo26NSFetchedResultsControllerCy0A8Platform0dE0CGcfc_0(v29);

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v30;
}

void sub_1B9F2EAC0()
{
  if (!qword_1EDC6B410)
  {
    sub_1B9F0D950(255, &qword_1EDC6B3D0);
    v0 = sub_1BA4A82E8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC6B410);
    }
  }
}

void *sub_1B9F2EB64(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  sub_1B9F15B38();
  v7 = sub_1BA4A7A78();
  v8 = objc_allocWithZone(MEMORY[0x1E696C4F8]);
  v9 = sub_1BA4A6758();
  v10 = [v8 initWithName:v9 loggingCategory:v7];

  v3[2] = v10;
  v11 = swift_allocObject();
  v12 = v6[10];
  v11[2] = v12;
  v13 = v6[11];
  v11[3] = v13;
  v14 = v6[12];
  v11[4] = v14;
  v15 = v6[13];
  v11[5] = v15;
  v3[5] = sub_1B9F2FCE8;
  v3[6] = v11;
  sub_1BA4A7DF8();

  v16 = (*(v14 + 8))(v12, v14);
  MEMORY[0x1BFAF1350](v16);

  MEMORY[0x1BFAF1350](95, 0xE100000000000000);
  v17 = (*(v15 + 8))(v13, v15);
  MEMORY[0x1BFAF1350](v17);

  v3[3] = 0xD000000000000011;
  v3[4] = 0x80000001BA4E6710;
  v3[7] = a1;
  v3[8] = a2;
  v18 = *(v14 + 40);
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v19 = v18(v12, v14);
  [v19 registerObserver_];

  swift_beginAccess();
  v20 = *(v15 + 40);
  swift_unknownObjectRetain();
  v21 = v20(v13, v15);
  swift_unknownObjectRelease();
  [v21 registerObserver_];

  return v3;
}

uint64_t sub_1B9F2EE28(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v3 = a3();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v3;
}

uint64_t static LayoutConfiguration.shared.getter@<X0>(_OWORD *a1@<X8>)
{
  if (qword_1EDC6D268 != -1)
  {
    v9 = a1;
    swift_once();
    a1 = v9;
  }

  v1 = xmmword_1EDC6D2B0;
  v2 = unk_1EDC6D2C0;
  v11[4] = xmmword_1EDC6D2B0;
  v11[5] = unk_1EDC6D2C0;
  v3 = xmmword_1EDC6D2D0;
  v4 = unk_1EDC6D2E0;
  v11[6] = xmmword_1EDC6D2D0;
  v11[7] = unk_1EDC6D2E0;
  v5 = *&qword_1EDC6D280;
  v11[0] = xmmword_1EDC6D270;
  v11[1] = *&qword_1EDC6D280;
  v6 = xmmword_1EDC6D290;
  v7 = *&qword_1EDC6D2A0;
  v11[2] = xmmword_1EDC6D290;
  v11[3] = *&qword_1EDC6D2A0;
  *a1 = xmmword_1EDC6D270;
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v7;
  a1[4] = v1;
  a1[5] = v2;
  a1[6] = v3;
  a1[7] = v4;
  return sub_1B9F1D9A4(v11, &v10);
}

HealthExperienceUI::TitleEmptyStateCollectionViewCellItem __swiftcall TitleEmptyStateCollectionViewCellItem.init(title:)(Swift::String title)
{
  object = title._object;
  countAndFlagsBits = title._countAndFlagsBits;
  v4 = v1;
  type metadata accessor for TitleEmptyStateCollectionViewCell();
  sub_1B9F2EFEC();
  v5 = sub_1BA4A6808();
  *v4 = v5;
  v4[1] = v6;
  v4[2] = countAndFlagsBits;
  v4[3] = object;
  result.title._object = v8;
  result.title._countAndFlagsBits = v7;
  result.reuseIdentifier._object = v6;
  result.reuseIdentifier._countAndFlagsBits = v5;
  return result;
}

unint64_t sub_1B9F2EFEC()
{
  result = qword_1EDC6BBE0[0];
  if (!qword_1EDC6BBE0[0])
  {
    type metadata accessor for TitleEmptyStateCollectionViewCell();
    result = swift_getMetatypeMetadata();
    atomic_store(result, qword_1EDC6BBE0);
  }

  return result;
}

uint64_t sub_1B9F2F034()
{
  v1 = *(v0 + 16);

  return v1;
}

unint64_t sub_1B9F2F068()
{
  result = qword_1EDC60CF8;
  if (!qword_1EDC60CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC60CF8);
  }

  return result;
}

uint64_t sub_1B9F2F0BC()
{
  v1 = *v0;

  return v1;
}

uint64_t type metadata accessor for ContentConfigurationItem()
{
  result = qword_1EDC66480;
  if (!qword_1EDC66480)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1B9F2F138()
{
  sub_1B9F2F31C();
  if (v0 <= 0x3F)
  {
    sub_1B9F2F388();
    if (v1 <= 0x3F)
    {
      sub_1B9F0D950(319, &unk_1EDC5F8B0);
      if (v2 <= 0x3F)
      {
        sub_1B9F2F3D8(319, &qword_1EDC5E6C8, MEMORY[0x1E69DBF68], MEMORY[0x1E69E62F8]);
        if (v3 <= 0x3F)
        {
          sub_1B9F2F3D8(319, &qword_1EDC6B770, MEMORY[0x1E69DC0D8], MEMORY[0x1E69E6720]);
          if (v4 <= 0x3F)
          {
            sub_1B9F2F3D8(319, &qword_1EDC5DB48, sub_1B9F37BB8, MEMORY[0x1E69E6720]);
            if (v5 <= 0x3F)
            {
              sub_1B9F2F3D8(319, &qword_1EDC5E290, sub_1B9F2F43C, MEMORY[0x1E69E6720]);
              if (v6 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

void sub_1B9F2F31C()
{
  if (!qword_1EDC67B40[0])
  {
    sub_1B9F0D9AC(255, &qword_1EDC6CCF0);
    v0 = sub_1BA4A7AA8();
    if (!v1)
    {
      atomic_store(v0, qword_1EDC67B40);
    }
  }
}

void sub_1B9F2F388()
{
  if (!qword_1EDC6E410)
  {
    v0 = sub_1BA4A7AA8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC6E410);
    }
  }
}

void sub_1B9F2F3D8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_1B9F2F43C()
{
  result = qword_1EDC5E298;
  if (!qword_1EDC5E298)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDC5E298);
  }

  return result;
}

_BYTE *sub_1B9F2F4CC(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 1;
  }

  return result;
}

uint64_t ContentConfigurationItem.init(uniqueIdentifier:contentConfiguration:cellAccessories:cellSelectionHandler:deselectionBehavior:backgroundConfiguration:updateContentConfigurationHandler:container:automationIdentifier:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, char *a12, uint64_t a13, uint64_t a14)
{
  v19 = *a7;
  v20 = *a12;
  v29 = 0;
  v27 = 0u;
  v28 = 0u;
  if (a5)
  {
    sub_1B9F2F610(&v27);
    *(&v28 + 1) = &type metadata for BasicCellSelectionHandler;
    v29 = &off_1F381BCC8;
    *&v27 = a5;
    *(&v27 + 1) = a6;
    LOBYTE(v28) = v19;
  }

  sub_1B9F2F698(&v27, a9 + 16);
  v23 = type metadata accessor for ContentConfigurationItem();
  *(a9 + v23[12]) = 0;
  *(a9 + v23[13]) = 0;
  *a9 = a1;
  *(a9 + 8) = a2;
  sub_1B9F25598(a3, a9 + 72);
  *(a9 + 112) = v20;
  *(a9 + 120) = a4;
  sub_1B9F2F728(a8, a9 + v23[10]);
  *(a9 + 56) = a13;
  *(a9 + 64) = a14;
  v24 = (a9 + v23[11]);
  *v24 = a10;
  v24[1] = a11;
  return sub_1B9F2F610(&v27);
}

uint64_t sub_1B9F2F610(uint64_t a1)
{
  sub_1B9F1B310(0, qword_1EDC67B40, &qword_1EDC6CCF0, &protocol descriptor for CellSelectionHandling, MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B9F2F698(uint64_t a1, uint64_t a2)
{
  sub_1B9F1B310(0, qword_1EDC67B40, &qword_1EDC6CCF0, &protocol descriptor for CellSelectionHandling, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B9F2F728(uint64_t a1, uint64_t a2)
{
  sub_1B9F2F7BC(0, &qword_1EDC6B770, MEMORY[0x1E69DC0D8], MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1B9F2F7BC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1B9F2F820(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B9F2F868(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B9F2F8B0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ContentConfigurationItem();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1B9F2F928()
{
  if (*(v0 + 112))
  {
    type metadata accessor for ContentConfigurationTableViewCell();
    v1 = &unk_1EBBF1DC0;
    v2 = type metadata accessor for ContentConfigurationTableViewCell;
  }

  else
  {
    type metadata accessor for ContentConfigurationCollectionViewListCell();
    v1 = &qword_1EDC601D0;
    v2 = type metadata accessor for ContentConfigurationCollectionViewListCell;
  }

  sub_1B9F2F9B0(0, v1, v2);
  return sub_1BA4A6808();
}

uint64_t sub_1B9F2F9B0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t *SnapshotDataSource.withCellRegistration(_:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  type metadata accessor for CellRegistering();
  swift_allocObject();
  swift_unknownObjectRetain();

  v6 = sub_1B9F2E2FC(v3, a1, a2);
  swift_unknownObjectRelease();

  return v6;
}

uint64_t sub_1B9F2FB14(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  sub_1B9F117BC(0, &qword_1EDC5F8A0, MEMORY[0x1E69E6168], MEMORY[0x1E69DC168]);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v13 - v9;
  (*(a2 + 16))(a1, a2);
  v11 = a3(v7);
  (*(v8 + 8))(v10, v7);
  return v11;
}

uint64_t sub_1B9F2FC40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = SnapshotDataSource.numberOfSections.getter(a3, a5);
  if ((result & 0x8000000000000000) == 0)
  {
    v6 = result;
    v7 = 0;
    while (1)
    {
      v8 = v7;
      if (v6 == v7)
      {
        return v6 != v8;
      }

      if (__OFADD__(v7, 1))
      {
        break;
      }

      result = SnapshotDataSource.numberOfItems(in:)(v7);
      v7 = v8 + 1;
      if (result >= 1)
      {
        return v6 != v8;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

Swift::Int __swiftcall SnapshotDataSource.numberOfItems(in:)(Swift::Int in)
{
  v4 = v2;
  v5 = v1;
  sub_1B9F117BC(0, &qword_1EDC5F8A0, MEMORY[0x1E69E6168], MEMORY[0x1E69DC168]);
  v8 = v7;
  v9 = *(v7 - 8);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v25 - v13;
  v15 = *(v4 + 16);
  v26 = v5;
  v27 = v3;
  v15(v5, v4);
  v16 = sub_1BA4A4548();
  v17 = *(v9 + 8);
  v17(v14, v8);
  result = 0;
  v28 = in;
  if (v16 > in)
  {
    v19 = v26;
    v15(v26, v4);
    v15(v19, v4);
    v20 = sub_1BA4A4578();
    result = (v17)(v12, v8);
    if ((v28 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*(v20 + 16) > v28)
    {
      v21 = v20 + 16 * v28;
      v23 = *(v21 + 32);
      v22 = *(v21 + 40);

      v29 = v23;
      v30 = v22;
      v24 = sub_1BA4A44A8();

      v17(v14, v8);
      return v24;
    }

    __break(1u);
  }

  return result;
}

uint64_t SnapshotDataSource.contentsAsArray()(uint64_t a1, uint64_t a2)
{
  v2 = SnapshotDataSource.sectionIdentifiers.getter(a1, a2);
  v3 = *(v2 + 16);
  if (v3)
  {
    v25 = MEMORY[0x1E69E7CC0];
    result = sub_1B9F277B0(0, v3, 0);
    v5 = 0;
    v6 = v25;
    v7 = (v2 + 40);
    while (v5 < *(v2 + 16))
    {
      v8 = *v7;
      v20[0] = *(v7 - 1);
      v20[1] = v8;

      sub_1B9F302D8(v20, a1, a2, &v21);

      v9 = v21;
      v10 = v22;
      v11 = v23;
      v12 = v24;
      v25 = v6;
      v14 = *(v6 + 16);
      v13 = *(v6 + 24);
      if (v14 >= v13 >> 1)
      {
        v16 = v22;
        v17 = v21;
        result = sub_1B9F277B0((v13 > 1), v14 + 1, 1);
        v10 = v16;
        v9 = v17;
        v6 = v25;
      }

      ++v5;
      *(v6 + 16) = v14 + 1;
      v15 = v6 + 48 * v14;
      *(v15 + 32) = v9;
      *(v15 + 48) = v10;
      *(v15 + 64) = v11;
      *(v15 + 72) = v12;
      v7 += 2;
      if (v3 == v5)
      {

        return v6;
      }
    }

    __break(1u);
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return result;
}

uint64_t SnapshotDataSource.itemIdentifiers(in:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1B9F117BC(0, &qword_1EDC5F8A0, MEMORY[0x1E69E6168], MEMORY[0x1E69DC168]);
  v10 = v9;
  v11 = *(v9 - 8);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v23 - v13;
  v15 = *(a4 + 16);
  v23 = a3;
  v24 = v4;
  v15(a3, a4, v12);
  v16 = a1;
  v25 = a1;
  v26 = a2;
  v17 = a2;
  sub_1BA4A44E8();
  v19 = v18;
  v20 = *(v11 + 8);
  v20(v14, v10);
  if (v19)
  {
    return MEMORY[0x1E69E7CC0];
  }

  (v15)(v23, a4);
  v25 = v16;
  v26 = v17;
  v22 = sub_1BA4A4528();
  v20(v14, v10);
  return v22;
}

uint64_t sub_1B9F302D8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, void *a4@<X8>)
{
  v32 = a4;
  v4 = a3;
  v5 = *a1;
  v30 = a1[1];
  v31 = v5;
  v37 = a2;
  result = SnapshotDataSource.itemIdentifiers(in:)(v5, v30, a2, a3);
  v7 = result;
  v36 = *(result + 16);
  if (v36)
  {
    v8 = 0;
    v35 = v4 + 24;
    v9 = (result + 40);
    v10 = MEMORY[0x1E69E7CC0];
    v33 = result;
    v34 = v4;
    while (v8 < *(v7 + 16))
    {
      v12 = *(v9 - 1);
      v11 = *v9;
      v13 = *(v4 + 24);

      v13(&v38, v12, v11, v37, v4);

      if (v39)
      {
        sub_1B9F25598(&v38, v41);
        sub_1B9F25598(v41, &v38);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v42 = v10;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v10 = sub_1B9F281E8(0, v10[2] + 1, 1, v10);
          v42 = v10;
        }

        v16 = v10[2];
        v15 = v10[3];
        if (v16 >= v15 >> 1)
        {
          v10 = sub_1B9F281E8((v15 > 1), v16 + 1, 1, v10);
          v42 = v10;
        }

        v17 = v39;
        v18 = v40;
        v19 = __swift_mutable_project_boxed_opaque_existential_1(&v38, v39);
        v20 = MEMORY[0x1EEE9AC00](v19);
        v22 = &v29 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v23 + 16))(v22, v20);
        sub_1B9F1C4F4(v16, v22, &v42, v17, v18);
        result = __swift_destroy_boxed_opaque_existential_1(&v38);
        v7 = v33;
        v4 = v34;
      }

      else
      {
        result = sub_1B9FCD638(&v38);
      }

      ++v8;
      v9 += 2;
      if (v36 == v8)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
LABEL_13:

    v24 = v30;

    sub_1B9F1C5F0(MEMORY[0x1E69E7CC0]);
    v25 = v32;
    *v32 = 0;
    v25[1] = 0;
    v25[2] = v10;

    v27 = Array<A>.identifierToIndexDict()(v26);

    v28 = v31;
    v25[3] = v27;
    v25[4] = v28;
    v25[5] = v24;
  }

  return result;
}

uint64_t AnyDataSourceWrapper.item(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  (*(a4 + 16))(a3, a4);
  v7 = v6;
  ObjectType = swift_getObjectType();
  (*(v7 + 24))(a1, a2, ObjectType, v7);

  return swift_unknownObjectRelease();
}

char *FetchedResultsControllerDataSource.init(_:)(void *a1)
{
  v2 = v1;
  v35 = a1;
  v33 = *v1;
  v3 = v33;
  v4 = *MEMORY[0x1E69E7D40];
  sub_1B9F12538();
  v36 = *(v5 - 8);
  v37 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v34 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1BA4A1798();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = qword_1EBBEA528;
  sub_1B9F0ADF8(0, &qword_1EDC5E090);
  v12 = sub_1BA4A7A78();
  v13 = objc_allocWithZone(MEMORY[0x1E696C4F8]);
  v14 = sub_1BA4A6758();
  v15 = [v13 initWithName:v14 loggingCategory:v12];

  *&v2[v11] = v15;
  v16 = qword_1EDC61B88;
  *&v2[v16] = sub_1B9F12744(MEMORY[0x1E69E7CC0]);
  v17 = &v2[qword_1EDC84AD0];
  v38 = 675500614;
  v39 = 0xE400000000000000;
  v41 = *((v4 & v3) + 0x50);
  swift_getMetatypeMetadata();
  v18 = sub_1BA4A6808();
  MEMORY[0x1BFAF1350](v18);

  MEMORY[0x1BFAF1350](15401, 0xE200000000000000);
  sub_1BA4A1788();
  v19 = sub_1BA4A1748();
  v21 = v20;
  (*(v8 + 8))(v10, v7);
  MEMORY[0x1BFAF1350](v19, v21);

  MEMORY[0x1BFAF1350](62, 0xE100000000000000);
  v22 = v39;
  *v17 = v38;
  v17[1] = v22;
  v23 = v35;
  *&v2[qword_1EDC84AD8] = v35;
  v24 = v23;
  v25 = v34;
  sub_1BA4A45D8();
  (*(v36 + 32))(&v2[qword_1EDC84AC8], v25, v37);
  v26 = type metadata accessor for FetchedResultsControllerDataSource();
  v40.receiver = v2;
  v40.super_class = v26;
  v27 = objc_msgSendSuper2(&v40, sel_init);
  v28 = [v24 fetchRequest];
  [v28 setIncludesPendingChanges_];

  v29 = qword_1EDC84AD8;
  swift_beginAccess();
  v30 = *&v27[v29];
  [v30 setDelegate_];

  sub_1B9F30A48();
  return v27;
}

id sub_1B9F30A48()
{
  v1 = v0;
  v26[4] = *MEMORY[0x1E69E9840];
  swift_getObjectType();
  v2 = sub_1BA4A3EA8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = qword_1EDC84AD8;
  swift_beginAccess();
  v7 = *(v1 + v6);
  v26[0] = 0;
  v8 = [v7 performFetch_];
  v9 = v26[0];
  if (v8)
  {

    return v9;
  }

  else
  {
    v25[0] = v26[0];
    v11 = v26[0];
    v12 = sub_1BA4A1488();

    swift_willThrow();
    sub_1BA4A3D88();
    v13 = v12;
    v14 = sub_1BA4A3E88();
    v15 = sub_1BA4A6FB8();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v26[0] = v17;
      *v16 = 136446466;
      v18 = sub_1BA4A85D8();
      v20 = sub_1B9F0B82C(v18, v19, v26);

      *(v16 + 4) = v20;
      *(v16 + 12) = 2082;
      v25[1] = v12;
      v21 = v12;
      sub_1B9F0D950(0, &qword_1EDC6E310);
      v22 = sub_1BA4A6808();
      v24 = sub_1B9F0B82C(v22, v23, v26);

      *(v16 + 14) = v24;
      _os_log_impl(&dword_1B9F07000, v14, v15, "[%{public}s] Failed to perform CoreData fetch: %{public}s", v16, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v17, -1, -1);
      MEMORY[0x1BFAF43A0](v16, -1, -1);
    }

    else
    {
    }

    return (*(v3 + 8))(v5, v2);
  }
}

void *DelayedDataSource.__allocating_init(delay:dataSource:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BA4A64E8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v9, a1, v6);
  swift_allocObject();
  v10 = sub_1B9F30E88(v9, a2, a3);

  (*(v7 + 8))(a1, v6);
  return v10;
}

void *sub_1B9F30E88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v38 = a2;
  v42 = a1;
  v6 = *v3;
  v41 = sub_1BA4A6478();
  v45 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v40 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1BA4A64C8();
  v43 = *(v8 - 8);
  v44 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v39 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1BA4A1798();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F0ADF8(0, &qword_1EDC5E090);
  v14 = sub_1BA4A7A78();
  v15 = objc_allocWithZone(MEMORY[0x1E696C4F8]);
  v16 = sub_1BA4A6758();
  v17 = [v15 initWithName:v16 loggingCategory:v14];

  v4[2] = v17;
  v18 = (v4 + *(*v4 + 112));
  aBlock = 0x44646579616C6544;
  v47 = 0xEA00000000003C53;
  sub_1BA4A1788();
  v19 = sub_1BA4A1748();
  v21 = v20;
  (*(v11 + 8))(v13, v10);
  MEMORY[0x1BFAF1350](v19, v21);

  MEMORY[0x1BFAF1350](62, 0xE100000000000000);
  v22 = v47;
  *v18 = aBlock;
  v18[1] = v22;
  swift_beginAccess();
  v23 = *(v6 + 80);
  v24 = *(v6 + 88);

  v25 = v38;
  v52[0] = v38;
  v52[1] = a3;
  v53 = 0;
  v26 = type metadata accessor for DelayedDataSource.DataSourceState();
  sub_1B9F37A14(v52, v26);
  swift_endAccess();
  sub_1B9F0ADF8(0, &qword_1EDC6B5A0);
  v27 = sub_1BA4A7308();
  v28 = swift_allocObject();
  swift_weakInit();
  v29 = swift_allocObject();
  v29[2] = v23;
  v29[3] = v24;
  v29[4] = v28;
  v29[5] = v25;
  v29[6] = a3;
  v50 = sub_1B9F8A078;
  v51 = v29;
  aBlock = MEMORY[0x1E69E9820];
  v47 = 1107296256;
  v48 = sub_1B9F0B040;
  v49 = &block_descriptor_71;
  v30 = _Block_copy(&aBlock);

  v31 = v39;
  sub_1BA4A64A8();
  aBlock = MEMORY[0x1E69E7CC0];
  sub_1B9F31478();
  sub_1B9F314D0(0, &qword_1EDC5E6B0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_1B9F31534();
  v33 = v40;
  v32 = v41;
  sub_1BA4A7C38();
  v34 = v42;
  MEMORY[0x1BFAF1CD0](v42, v31, v33, v30);
  _Block_release(v30);

  v35 = sub_1BA4A64E8();
  (*(*(v35 - 8) + 8))(v34, v35);
  (*(v45 + 8))(v33, v32);
  (*(v43 + 8))(v31, v44);
  return v4;
}

uint64_t sub_1B9F313E0()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B9F31418()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

unint64_t sub_1B9F31478()
{
  result = qword_1EDC5E8E0;
  if (!qword_1EDC5E8E0)
  {
    sub_1BA4A6478();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC5E8E0);
  }

  return result;
}

void sub_1B9F314D0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_1B9F31534()
{
  result = qword_1EDC5E6A0;
  if (!qword_1EDC5E6A0)
  {
    sub_1B9F22468(255, &qword_1EDC5E6B0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC5E6A0);
  }

  return result;
}

uint64_t sub_1B9F315BC()
{
  v0 = sub_1B9F315F4();

  return v0;
}

void *SummaryFeedTrendsSectionDataSource.init(context:sourceProfile:additionalPredicates:significantTrendsDataSourceLoadingCompletion:)(void *a1, void *a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v71 = a5;
  v72 = a4;
  v68 = a1;
  v65 = *v5;
  sub_1B9F0CB68(0, &qword_1EDC6E2A0, MEMORY[0x1E6968130], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v70 = &v64 - v9;
  v10 = sub_1BA4A64E8();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v66 = &v64 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1BA4A4428();
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v64 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  v15 = sub_1BA4A1318();
  v17 = v16;
  _s18HealthExperienceUI29CollectionViewHeaderProvidingPAAE24makeDefaultConfiguration5UIKit013UIListContentJ0VyFZ_0();
  v18 = type metadata accessor for HeaderItem();
  swift_allocObject();
  HeaderItem.init(title:buttonText:buttonWasTapped:configuration:automationIdentifier:)(v15, v17, 0, 0, 0, 0, v14, 0, 0);
  v20 = v19;
  v21 = type metadata accessor for ListLayoutConfiguration();
  v22 = swift_allocBox();
  v24 = v23;
  if (qword_1EDC6CBB0 != -1)
  {
    swift_once();
  }

  v25 = __swift_project_value_buffer(v21, qword_1EDC6CBB8);
  sub_1B9F37E38(v25, v24);
  *(v24 + 152) = 0;
  *(v24 + 64) = 0;
  type metadata accessor for MutableArrayDataSourceWithLayout();
  sub_1B9F320F0();
  inited = swift_initStackObject();
  v73 = xmmword_1BA4B5480;
  *(inited + 16) = xmmword_1BA4B5480;
  *(inited + 32) = MEMORY[0x1E69E7CC0];

  v27 = MutableArrayDataSourceWithLayout.__allocating_init(_:collapseEmptySections:layoutConstructor:)(inited, 0, sub_1B9F5AB78, v22);
  v75[3] = v18;
  v75[4] = sub_1B9F3240C(&qword_1EDC69800, type metadata accessor for HeaderItem);
  v75[0] = v20;
  sub_1B9F0A534(v75, v74);
  v28 = swift_allocObject();
  v69 = v22;
  v29 = v28;
  sub_1B9F25598(v74, v28 + 16);
  sub_1B9F325DC(0, qword_1EDC693A8, type metadata accessor for MutableArrayDataSourceWithLayout, &protocol witness table for MutableArrayDataSource, type metadata accessor for Supplementary);
  v30 = swift_allocObject();
  v30[4] = v27;
  v30[5] = sub_1B9F79BC8;
  v30[6] = v29;
  v67 = v20;
  v31 = *(v27 + OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_identifier);
  v32 = *(v27 + OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_identifier + 8);
  v30[2] = v31;
  v30[3] = v32;

  __swift_destroy_boxed_opaque_existential_1(v75);
  v33 = swift_initStackObject();
  *(v33 + 16) = v73;
  sub_1B9F32648(0, &qword_1EDC5DCA0, &qword_1EDC6AD50, MEMORY[0x1E69A3310], MEMORY[0x1E69E6F90]);
  v34 = swift_allocObject();
  *(v34 + 16) = v73;
  *(v34 + 56) = type metadata accessor for ContentConfigurationItem();
  *(v34 + 64) = sub_1B9F3240C(&qword_1EDC664A0, type metadata accessor for ContentConfigurationItem);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v34 + 32));
  sub_1B9F326B4(a2, a3, boxed_opaque_existential_1);
  *(v33 + 32) = v34;
  v36 = MutableArrayDataSourceWithLayout.__allocating_init(_:collapseEmptySections:layoutConstructor:)(v33, 1, sub_1B9F5AEA0, 0);
  sub_1B9F325DC(0, &qword_1EDC69040, type metadata accessor for MutableArrayDataSourceWithLayout, &protocol witness table for MutableArrayDataSource, type metadata accessor for CellRegistering);
  v37 = swift_allocObject();
  v37[4] = v36;
  v37[5] = sub_1B9F405BC;
  v37[6] = 0;
  v38 = (v36 + OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_identifier);
  v39 = *(v36 + OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_identifier + 8);
  v37[2] = *v38;
  v37[3] = v39;
  sub_1B9F1DEA0();
  v40 = swift_allocObject();
  *(v40 + 16) = xmmword_1BA4B9FD0;
  *(v40 + 32) = v30;
  *(v40 + 40) = &protocol witness table for Supplementary<A>;
  v41 = swift_allocObject();
  v42 = v72;
  v43 = a2;
  v44 = v71;
  v41[2] = v72;
  v41[3] = v44;
  v45 = v68;
  v41[4] = v68;
  v41[5] = v43;
  v41[6] = a3;
  swift_retain_n();

  sub_1B9F0F1B4(v42, v44);
  v65 = v43;

  v68 = v45;
  v46 = v66;
  sub_1BA4A64D8();
  sub_1B9F325DC(0, qword_1EDC68340, sub_1B9F32D84, &protocol witness table for HideableDataSource<A>, type metadata accessor for DelayedDataSource);
  swift_allocObject();
  v47 = sub_1B9F32E9C(v46, sub_1B9F8AA4C, v41);

  *(v40 + 48) = v47;
  *(v40 + 56) = &protocol witness table for DelayedDataSource<A>;
  *(v40 + 64) = v37;
  *(v40 + 72) = &protocol witness table for CellRegistering<A>;
  type metadata accessor for CompoundSectionedDataSource();
  swift_allocObject();
  v66 = CompoundSectionedDataSource.init(_:)(v40);
  sub_1BA4A27B8();
  sub_1B9F0CB68(0, &qword_1EDC6B460, MEMORY[0x1E69A3C08], MEMORY[0x1E69E6F90]);
  v48 = sub_1BA4A1C68();
  v49 = *(v48 - 8);
  v50 = (*(v49 + 80) + 32) & ~*(v49 + 80);
  v51 = swift_allocObject();
  *(v51 + 16) = v73;
  (*(v49 + 104))(v51 + v50, *MEMORY[0x1E69A3BA0], v48);
  v52 = sub_1BA4A0FA8();
  v53 = v70;
  (*(*(v52 - 8) + 56))(v70, 1, 1, v52);
  sub_1B9F1C048(0, &qword_1EDC6B450);
  v54 = swift_allocObject();
  *(v54 + 16) = v73;
  *(v54 + 32) = v43;
  v55 = v65;
  v56 = MEMORY[0x1BFAED020](v51, 0, v53, v54);

  sub_1B9F1C1B0(v53);
  sub_1B9F1C048(0, &qword_1EDC6B400);
  v57 = swift_allocObject();
  *(v57 + 16) = xmmword_1BA4B5470;
  *(v57 + 32) = v56;
  v75[0] = v57;
  v58 = v56;
  sub_1B9F33948(a3);
  sub_1B9F0ADF8(0, &qword_1EDC6B630);
  v59 = sub_1BA4A6AE8();

  v60 = [objc_opt_self() andPredicateWithSubpredicates_];

  v61 = v60;
  v62 = sub_1B9F33B28(v66, v68, v61);

  sub_1B9F0E310(v72);

  return v62;
}

uint64_t sub_1B9F32060()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1B9F32098()
{
  if (*(v0 + 16))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

void sub_1B9F320F0()
{
  if (!qword_1EDC5DBF0)
  {
    sub_1B9F32148(255);
    v0 = sub_1BA4A82E8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC5DBF0);
    }
  }
}

void sub_1B9F3217C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1B9F321E0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_1B9F32244()
{
  result = qword_1EDC6AD50;
  if (!qword_1EDC6AD50)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EDC6AD50);
  }

  return result;
}

uint64_t sub_1B9F322A8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B9F322F0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B9F32338(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for HeaderItem();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1B9F3237C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B9F323C4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B9F3240C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B9F32454(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B9F3249C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B9F324E4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B9F3252C(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1B9F32574(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, _UNKNOWN **))
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

void sub_1B9F325DC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

void sub_1B9F32648(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
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

uint64_t sub_1B9F326B4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v47 = a1;
  v48 = a2;
  sub_1B9F0CB68(0, &qword_1EDC6B780, MEMORY[0x1E69DBF38], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v45 = &v37 - v5;
  v46 = sub_1BA4A3FB8();
  v44 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46);
  v43 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_1BA4A3F18();
  v7 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v41 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1BA4A4428();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA4A43A8();
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  sub_1BA4A1318();
  v13 = v12;
  sub_1BA4A43B8();
  v14 = [objc_opt_self() configurationPreferringMulticolor];
  v40 = v14;
  v15 = sub_1BA4A6758();
  v16 = [objc_opt_self() _systemImageNamed_withConfiguration_];

  v37 = v13;
  sub_1BA4A43D8();
  *&v49 = 0;
  *(&v49 + 1) = 0xE000000000000000;
  sub_1BA4A7DF8();
  v17 = sub_1BA4A85D8();
  v19 = v18;

  *&v49 = v17;
  *(&v49 + 1) = v19;
  MEMORY[0x1BFAF1350](0xD000000000000011, 0x80000001BA4FAA70);
  v38 = *(&v49 + 1);
  v39 = v49;
  v20 = MEMORY[0x1E69DC110];
  *(a3 + 96) = v9;
  *(a3 + 104) = v20;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((a3 + 72));
  (*(v10 + 16))(boxed_opaque_existential_1, v13, v9);
  sub_1B9F0CB68(0, &qword_1EDC6B430, MEMORY[0x1E69DBF68], MEMORY[0x1E69E6F90]);
  sub_1BA4A3FE8();
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_1BA4B5480;
  v23 = v41;
  v24 = v42;
  (*(v7 + 104))(v41, *MEMORY[0x1E69DBF28], v42);
  v25 = sub_1BA4A3F48();
  (*(*(v25 - 8) + 56))(v45, 1, 1, v25);
  v26 = v43;
  sub_1BA4A3FA8();
  sub_1BA4A3F78();
  (*(v44 + 8))(v26, v46);
  (*(v7 + 8))(v23, v24);
  v27 = swift_allocObject();
  v28 = v47;
  v29 = v48;
  *(v27 + 16) = v47;
  *(v27 + 24) = v29;
  v30 = type metadata accessor for ContentConfigurationItem();
  v31 = v30[10];
  v32 = sub_1BA4A4168();
  (*(*(v32 - 8) + 56))(a3 + v31, 1, 1, v32);
  v51 = 0;
  v49 = 0u;
  v50 = 0u;
  v33 = v28;

  sub_1B9F2F610(&v49);
  *(&v50 + 1) = &type metadata for BasicCellSelectionHandler;
  v51 = &off_1F381BCC8;

  *&v49 = sub_1BA2AEB7C;
  *(&v49 + 1) = v27;
  LOBYTE(v50) = 2;
  (*(v10 + 8))(v37, v9);
  sub_1B9F2F698(&v49, a3 + 16);
  *(a3 + v30[12]) = 0;
  *(a3 + v30[13]) = 0;
  v34 = v38;
  *a3 = v39;
  *(a3 + 8) = v34;
  *(a3 + 112) = 0;
  *(a3 + 120) = v22;
  *(a3 + 56) = xmmword_1BA4CD380;
  v35 = (a3 + v30[11]);
  *v35 = 0;
  v35[1] = 0;
  return sub_1B9F2F610(&v49);
}

uint64_t sub_1B9F32D44()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

void sub_1B9F32D84()
{
  if (!qword_1EDC67F28)
  {
    type metadata accessor for SignificantTrendsDataSource(255);
    v0 = type metadata accessor for HideableDataSource();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC67F28);
    }
  }
}

void *sub_1B9F32E9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v33 = a2;
  v36 = a1;
  v35 = sub_1BA4A6478();
  v39 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v34 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1BA4A64C8();
  v37 = *(v7 - 8);
  v38 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1BA4A1798();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F0ADF8(0, &qword_1EDC5E090);
  v14 = sub_1BA4A7A78();
  v15 = objc_allocWithZone(MEMORY[0x1E696C4F8]);
  v16 = sub_1BA4A6758();
  v17 = [v15 initWithName:v16 loggingCategory:v14];

  v4[2] = v17;
  v18 = (v4 + *(*v4 + 112));
  aBlock = 0x44646579616C6544;
  v41 = 0xEA00000000003C53;
  sub_1BA4A1788();
  v19 = sub_1BA4A1748();
  v21 = v20;
  (*(v11 + 8))(v13, v10);
  MEMORY[0x1BFAF1350](v19, v21);

  MEMORY[0x1BFAF1350](62, 0xE100000000000000);
  v22 = v41;
  *v18 = aBlock;
  v18[1] = v22;
  swift_beginAccess();
  v23 = v33;
  v46 = v33;
  v47 = a3;
  v48 = 0;
  sub_1B9F325DC(0, qword_1EDC683C8, sub_1B9F32D84, &protocol witness table for HideableDataSource<A>, type metadata accessor for DelayedDataSource.DataSourceState);

  sub_1BA4A4EE8();
  swift_endAccess();
  sub_1B9F0ADF8(0, &qword_1EDC6B5A0);
  v24 = sub_1BA4A7308();
  v25 = swift_allocObject();
  swift_weakInit();
  v26 = swift_allocObject();
  v26[2] = v25;
  v26[3] = v23;
  v26[4] = a3;
  v44 = sub_1B9F8A5F4;
  v45 = v26;
  aBlock = MEMORY[0x1E69E9820];
  v41 = 1107296256;
  v42 = sub_1B9F0B040;
  v43 = &block_descriptor_73;
  v27 = _Block_copy(&aBlock);

  sub_1BA4A64A8();
  aBlock = MEMORY[0x1E69E7CC0];
  sub_1B9F3240C(&qword_1EDC5E8E0, MEMORY[0x1E69E7F60]);
  sub_1B9F0CB68(0, &qword_1EDC5E6B0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_1B9F31534();
  v29 = v34;
  v28 = v35;
  sub_1BA4A7C38();
  v30 = v36;
  MEMORY[0x1BFAF1CD0](v36, v9, v29, v27);
  _Block_release(v27);

  v31 = sub_1BA4A64E8();
  (*(*(v31 - 8) + 8))(v30, v31);
  (*(v39 + 8))(v29, v28);
  (*(v37 + 8))(v9, v38);
  return v4;
}

uint64_t sub_1B9F33420()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B9F33458()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t DelayedDataSource.snapshot.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  sub_1B9F314D0(0, &qword_1EDC5F898, sub_1B9F12538, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v14 - v5;
  if (DelayedDataSource.wrappedDataSource.getter())
  {
    (*(*(v3 + 88) + 16))(*(v3 + 80));
    swift_unknownObjectRelease();
    sub_1B9F12538();
    v8 = v7;
    v9 = *(v7 - 8);
    (*(v9 + 56))(v6, 0, 1, v7);
    return (*(v9 + 32))(a1, v6, v8);
  }

  else
  {
    sub_1B9F12538();
    v12 = v11;
    v13 = *(v11 - 8);
    (*(v13 + 56))(v6, 1, 1, v11);
    sub_1BA4A45D8();
    result = (*(v13 + 48))(v6, 1, v12);
    if (result != 1)
    {
      return sub_1BA0FC704(v6);
    }
  }

  return result;
}

uint64_t DelayedDataSource.wrappedDataSource.getter()
{
  DelayedDataSource.dataSourceState.getter();
  v0 = v3;
  if (v5 == 1)
  {
    v0 = swift_unknownObjectRetain();
    v1 = v0;
  }

  else
  {
    v1 = 0;
  }

  sub_1B9F33840(v0, v4, v5);
  return v1;
}

uint64_t DelayedDataSource.dataSourceState.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BA4A4F28();
}

double sub_1B9F337E0@<D0>(uint64_t a1@<X8>)
{
  DelayedDataSource.dataSourceState.getter();
  result = *&v3;
  *a1 = v3;
  *(a1 + 16) = v4;
  return result;
}

__n128 sub_1B9F33834(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_1B9F33840(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    return swift_unknownObjectRelease();
  }

  else
  {
  }
}

uint64_t sub_1B9F33850(unint64_t a1, void (*a2)(uint64_t, void, unint64_t))
{
  if (a1 >> 62)
  {
    v5 = sub_1BA4A7CC8();
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v2 >> 62))
  {
    v6 = *((*v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v7 = __OFADD__(v6, v5);
    result = v6 + v5;
    if (!v7)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v15 = sub_1BA4A7CC8();
  v7 = __OFADD__(v15, v5);
  result = v15 + v5;
  if (v7)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_1B9F2A6B4(result);
  v9 = *v2;
  v10 = *v2 & 0xFFFFFFFFFFFFFF8;
  a2(v10 + 8 * *(v10 + 0x10) + 32, (*(v10 + 0x18) >> 1) - *(v10 + 0x10), a1);
  v12 = v11;

  if (v12 < v5)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v12 < 1)
  {
LABEL_9:
    *v2 = v9;
    return result;
  }

  v13 = *(v10 + 16);
  v7 = __OFADD__(v13, v12);
  v14 = v13 + v12;
  if (!v7)
  {
    *(v10 + 16) = v14;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_1B9F33960(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1BA4A7CC8();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_1BA4A7CC8();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1B9FE4218(0, &qword_1EBBE9A68, &qword_1EDC6B630, 0x1E696AE18, MEMORY[0x1E69E62F8]);
          sub_1B9FE43C8(&unk_1EBBE9A70, &qword_1EBBE9A68, &qword_1EDC6B630, 0x1E696AE18);
          for (i = 0; i != v6; ++i)
          {
            v9 = sub_1BA0CA818(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_1B9F0ADF8(0, &qword_1EDC6B630);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_1B9F33B28(uint64_t a1, void *a2, void *a3)
{
  v4 = v3;
  *(v3 + *(*v3 + 304)) = 0;
  sub_1BA4A27B8();
  v7 = sub_1BA4A26C8();
  sub_1B9F1C048(0, &qword_1EDC6B400);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1BA4B5470;
  sub_1B9F0ADF8(0, &qword_1EDC6E3E0);
  swift_getKeyPath();
  *(v8 + 32) = sub_1BA4A71B8();
  v9 = sub_1BA4A6AE8();

  [v7 setSortDescriptors_];

  [v7 setFetchLimit_];
  v10 = [objc_allocWithZone(MEMORY[0x1E695D600]) initWithFetchRequest:v7 managedObjectContext:a2 sectionNameKeyPath:0 cacheName:0];
  sub_1B9F126E0();
  v12 = objc_allocWithZone(v11);
  v13 = v10;
  v14 = v4;
  v15 = _s18HealthExperienceUI33FeedItemSuggestedActionDataSourceCyACSo26NSFetchedResultsControllerCy0A8Platform0dE0CGcfc_0(v13);
  *(v14 + *(*v14 + 296)) = v15;
  v16 = qword_1EDC84AD8;
  swift_beginAccess();
  v17 = *&v15[v16];
  v18 = v15;
  v19 = [v17 fetchedObjects];
  if (!v19)
  {

LABEL_7:
    v23 = 0;
    goto LABEL_8;
  }

  v20 = v19;
  v21 = sub_1BA4A6B08();

  if (v21 >> 62)
  {
    v22 = sub_1BA4A7CC8();
  }

  else
  {
    v22 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v22 <= 0)
  {
    goto LABEL_7;
  }

  v23 = 1;
LABEL_8:

  v25 = sub_1B9F33E2C(v24, v23);

  v26 = *(v25 + *(*v25 + 296));
  v27 = qword_1EBBEA528;
  swift_beginAccess();
  v28 = *(v26 + v27);

  [v28 registerObserver_];

  return v25;
}

void *sub_1B9F33E2C(uint64_t a1, char a2)
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
  sub_1BA2AE4D8(0);

  sub_1BA4A4EE8();
  swift_endAccess();
  v11 = *(a1 + OBJC_IVAR____TtC18HealthExperienceUI27CompoundSectionedDataSource_identifier + 8);
  v12 = (v3 + *(*v3 + 120));
  *v12 = *(a1 + OBJC_IVAR____TtC18HealthExperienceUI27CompoundSectionedDataSource_identifier);
  v12[1] = v11;
  swift_beginAccess();
  v13 = *(v3 + v10);
  swift_beginAccess();
  v14 = *(v13 + 16);

  [v14 registerObserver_];
  return v3;
}

void sub_1B9F33FDC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for HideableDataSource();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1B9F34040()
{
  v0 = sub_1B9F34078();

  return v0;
}

uint64_t sub_1B9F34078()
{
  v1 = v0 + *(*v0 + 120);
  swift_beginAccess();
  return *v1;
}

id JustObservingFetchedResultsControllerDataSource.init(frc:)(void *a1)
{
  v2 = v1;
  v22[1] = *v1;
  v4 = sub_1BA4A1798();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = &v1[qword_1EBBEDD88];
  v24 = 0;
  v25 = 0xE000000000000000;
  sub_1BA4A7DF8();
  MEMORY[0x1BFAF1350](0xD000000000000030, 0x80000001BA4F3190);
  sub_1BA4A1788();
  v9 = sub_1BA4A1748();
  v11 = v10;
  (*(v5 + 8))(v7, v4);
  MEMORY[0x1BFAF1350](v9, v11);

  MEMORY[0x1BFAF1350](62, 0xE100000000000000);
  v12 = v25;
  *v8 = v24;
  *(v8 + 1) = v12;
  sub_1BA4A45D8();
  v13 = qword_1EDC84A70;
  sub_1B9F0ADF8(0, &qword_1EDC5E090);
  v14 = sub_1BA4A7A78();
  v15 = objc_allocWithZone(MEMORY[0x1E696C4F8]);
  v16 = sub_1BA4A6758();
  v17 = [v15 initWithName:v16 loggingCategory:v14];

  *&v2[v13] = v17;
  *&v2[qword_1EDC84A68] = a1;
  v18 = type metadata accessor for JustObservingFetchedResultsControllerDataSource();
  v23.receiver = v2;
  v23.super_class = v18;
  v19 = a1;
  v20 = objc_msgSendSuper2(&v23, sel_init);
  [v19 setDelegate_];
  sub_1B9F34370();

  return v20;
}

id sub_1B9F34370()
{
  v6[3] = *MEMORY[0x1E69E9840];
  v1 = *(v0 + qword_1EDC84A68);
  v6[0] = 0;
  v2 = [v1 performFetch_];
  v3 = v6[0];
  if (v2)
  {

    return v3;
  }

  else
  {
    v5 = v6[0];
    sub_1BA4A1488();

    swift_willThrow();
    v6[0] = 0;
    v6[1] = 0xE000000000000000;
    sub_1BA4A7DF8();
    type metadata accessor for JustObservingFetchedResultsControllerDataSource();
    swift_getWitnessTable();
    sub_1BA4A8318();
    MEMORY[0x1BFAF1350](0xD00000000000001BLL, 0x80000001BA4F3390);
    sub_1B9F0D950(0, &qword_1EDC6E310);
    sub_1BA4A7FB8();
    result = sub_1BA4A8018();
    __break(1u);
  }

  return result;
}

void sub_1B9F34564(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = a1;
  sub_1B9F345D4();
}

void sub_1B9F345D4()
{
  type metadata accessor for JustObservingFetchedResultsControllerDataSource();

  SnapshotDataSource.notifyObserversSnapshotDidChange(animated:)(1);
}

id sub_1B9F34634()
{
  v0 = sub_1B9F34660();

  return v0;
}

uint64_t sub_1B9F34660()
{
  v1 = qword_1EDC84A70;
  swift_beginAccess();
  return *(v0 + v1);
}

void __swiftcall EmptyStateCollectionViewCellItem.init(title:showSpinner:)(HealthExperienceUI::EmptyStateCollectionViewCellItem *__return_ptr retstr, Swift::String title, Swift::Bool showSpinner)
{
  object = title._object;
  countAndFlagsBits = title._countAndFlagsBits;
  type metadata accessor for EmptyStateCollectionViewCell();
  sub_1B9F34708();
  retstr->reuseIdentifier._countAndFlagsBits = sub_1BA4A6808();
  retstr->reuseIdentifier._object = v7;
  retstr->title.value._countAndFlagsBits = countAndFlagsBits;
  retstr->title.value._object = object;
  retstr->showSpinner = showSpinner;
}

unint64_t sub_1B9F34708()
{
  result = qword_1EDC6C3D0;
  if (!qword_1EDC6C3D0)
  {
    type metadata accessor for EmptyStateCollectionViewCell();
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_1EDC6C3D0);
  }

  return result;
}

uint64_t ArrayDataSourceSection.init(arrayLiteral:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = sub_1BA4A1798();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA4A1788();
  v8 = sub_1BA4A1748();
  v10 = v9;
  (*(v5 + 8))(v7, v4);
  sub_1B9F1C5F0(MEMORY[0x1E69E7CC0]);

  v12 = Array<A>.identifierToIndexDict()(v11);

  *a2 = 0;
  a2[1] = 0;
  a2[2] = a1;
  a2[3] = v12;
  a2[4] = v8;
  a2[5] = v10;
  return result;
}
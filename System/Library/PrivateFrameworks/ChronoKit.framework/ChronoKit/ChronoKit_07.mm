void *sub_1BF432900(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v18 = v17 - 32;
    if (v17 < 32)
    {
      v18 = v17 - 25;
    }

    v16[2] = v14;
    v16[3] = 2 * (v18 >> 3);
  }

  else
  {
    v16 = MEMORY[0x1E69E7CC0];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 8 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

char *sub_1BF432A34(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9078, &qword_1BF4F0660);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1BF432C1C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8A40, &qword_1BF4EC018);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_1BF432D54(size_t result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8A58, &qword_1BF4EC028);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD91A0, &unk_1BF4EC4E0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD91A0, &unk_1BF4EC4E0) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t sub_1BF432F44(uint64_t a1)
{
  result = MEMORY[0x1BFB58FA0](*(a1 + 16), MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
  v3 = 0;
  v14 = result;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  for (i = (v4 + 63) >> 6; v6; result = )
  {
    v8 = v3;
LABEL_9:
    v9 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v10 = (*(a1 + 48) + ((v8 << 10) | (16 * v9)));
    v11 = *v10;
    v12 = v10[1];

    sub_1BF4ACBA8(&v13, v11, v12);
  }

  while (1)
  {
    v8 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v8 >= i)
    {

      return v14;
    }

    v6 = *(a1 + 64 + 8 * v8);
    ++v3;
    if (v6)
    {
      v3 = v8;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

char *sub_1BF433060(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_1BF4E9204();
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
  result = sub_1BF3E14FC(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v13;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v2; ++i)
      {
        MEMORY[0x1BFB59570](i, a1);
        sub_1BF3901C0(0, &qword_1EDC96340, 0x1E6966CB0);
        swift_dynamicCast();
        v13 = v3;
        v7 = *(v3 + 16);
        v6 = *(v3 + 24);
        if (v7 >= v6 >> 1)
        {
          sub_1BF3E14FC((v6 > 1), v7 + 1, 1);
          v3 = v13;
        }

        *(v3 + 16) = v7 + 1;
        sub_1BF38EB2C(v12, (v3 + 32 * v7 + 32));
      }
    }

    else
    {
      v8 = (a1 + 32);
      sub_1BF3901C0(0, &qword_1EDC96340, 0x1E6966CB0);
      do
      {
        v9 = *v8;
        swift_dynamicCast();
        v13 = v3;
        v11 = *(v3 + 16);
        v10 = *(v3 + 24);
        if (v11 >= v10 >> 1)
        {
          sub_1BF3E14FC((v10 > 1), v11 + 1, 1);
          v3 = v13;
        }

        *(v3 + 16) = v11 + 1;
        sub_1BF38EB2C(v12, (v3 + 32 * v11 + 32));
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

uint64_t sub_1BF43326C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = type metadata accessor for WidgetExtension();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  result = sub_1BF4B42C0(a1);
  if (!v2)
  {
    v9 = result;
    a2[3] = v5;
    result = sub_1BF43A1BC(&qword_1EDC9AD68, type metadata accessor for WidgetExtension);
    a2[4] = result;
    *a2 = v9;
  }

  return result;
}

unint64_t sub_1BF4333A8()
{
  v1 = objc_opt_self();
  sub_1BF4E8104();
  sub_1BF3901C0(0, &unk_1EDC962D8, 0x1E6966CE0);
  v2 = sub_1BF4E8B84();

  v3 = [v1 executeQueries_];

  sub_1BF3901C0(0, &qword_1EDC96340, 0x1E6966CB0);
  v4 = sub_1BF4E8BA4();

  v5 = sub_1BF433060(v4);
  sub_1BF43351C(v5);

  sub_1BF4E8104();
  v6 = objc_allocWithZone(MEMORY[0x1E6966CF8]);
  v7 = sub_1BF4E8B84();

  v8 = [v6 initWithQueries_];

  v9 = OBJC_IVAR____SystemEXExtensionIdentityDiscoverer_queryController;
  v10 = *(v0 + OBJC_IVAR____SystemEXExtensionIdentityDiscoverer_queryController);
  *(v0 + OBJC_IVAR____SystemEXExtensionIdentityDiscoverer_queryController) = v8;
  v11 = v8;

  if (v11)
  {
    [v11 setDelegate_];
  }

  [*(v0 + v9) resume];
  return v4;
}

uint64_t sub_1BF43351C(uint64_t result)
{
  if (result)
  {
    v2 = v1;
    result = sub_1BF4C41BC(result);
    if (result)
    {
      if (qword_1EDC9D500 != -1)
      {
        swift_once();
      }

      v3 = sub_1BF4E7B54();
      __swift_project_value_buffer(v3, qword_1EDCA69A0);
      v4 = sub_1BF4E7B34();
      v5 = sub_1BF4E8E84();
      if (os_log_type_enabled(v4, v5))
      {
        v6 = swift_slowAlloc();
        *v6 = 0;
        _os_log_impl(&dword_1BF389000, v4, v5, "Received new extension list.", v6, 2u);
        MEMORY[0x1BFB5A5D0](v6, -1, -1);
      }

      v7 = *(v2 + OBJC_IVAR____SystemEXExtensionIdentityDiscoverer__publisher);

      sub_1BF4E7C14();
    }
  }

  return result;
}

uint64_t sub_1BF433648(void *a1)
{
  if (qword_1EDC9D500 != -1)
  {
    swift_once();
  }

  v2 = sub_1BF4E7B54();
  __swift_project_value_buffer(v2, qword_1EDCA69A0);
  v3 = a1;
  v4 = sub_1BF4E7B34();
  v5 = sub_1BF4E8E84();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138543362;
    *(v6 + 4) = v3;
    *v7 = v3;
    v8 = v3;
    _os_log_impl(&dword_1BF389000, v4, v5, "Query Controller did update: %{public}@", v6, 0xCu);
    sub_1BF38C9B4(v7, &unk_1EBDD9260, &qword_1BF4EC380);
    MEMORY[0x1BFB5A5D0](v7, -1, -1);
    MEMORY[0x1BFB5A5D0](v6, -1, -1);
  }

  v9 = [v3 extensionIdentities];
  sub_1BF3901C0(0, &qword_1EDC96340, 0x1E6966CB0);
  v10 = sub_1BF4E8BA4();

  v11 = sub_1BF433060(v10);

  sub_1BF43351C(v11);
}

void *sub_1BF433934()
{
  v1 = *(v0 + OBJC_IVAR____TtC9ChronoKit16ExtensionManager_extensionsByIdentifier);

  os_unfair_lock_lock((v1 + 24));
  v2 = *(v1 + 16);
  v3 = *(v2 + 16);
  if (!v3)
  {
    goto LABEL_4;
  }

  v4 = sub_1BF4389EC(*(v2 + 16), 0);
  v5 = sub_1BF438E38(&v7, (v4 + 4), v3, v2);

  sub_1BF39A9CC();
  if (v5 != v3)
  {
    __break(1u);
LABEL_4:
    v4 = MEMORY[0x1E69E7CC0];
  }

  os_unfair_lock_unlock((v1 + 24));

  return v4;
}

uint64_t sub_1BF433A1C()
{
  v1 = OBJC_IVAR____TtC9ChronoKit16ExtensionManager_requireValidExtensions;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1BF433A60(char a1)
{
  v3 = OBJC_IVAR____TtC9ChronoKit16ExtensionManager_requireValidExtensions;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1BF433B58(void *a1, uint64_t *a2, uint64_t *a3, unint64_t *a4)
{
  v9 = *(v4 + *a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  sub_1BF38C8B4(a4, a2, a3);
  return sub_1BF4E7C84();
}

id ExtensionManager.__allocating_init(queue:remoteWidgetExtensionProvider:)(uint64_t a1, uint64_t *a2)
{
  type metadata accessor for _WidgetExtensionFactory();
  v4 = swift_allocObject();
  v5 = objc_allocWithZone(type metadata accessor for _SystemEXExtensionIdentityDiscoverer());

  v6 = [v5 init];
  sub_1BF38E49C(a2, v9);
  v7 = sub_1BF439298(a1, v4, v6, v9);

  __swift_destroy_boxed_opaque_existential_1Tm(a2);
  return v7;
}

id ExtensionManager.__allocating_init(queue:extensionFactory:exExtensionIdentityDiscoverer:remoteWidgetExtensionProvider:)(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v9 = a2[3];
  v8 = a2[4];
  v10 = __swift_mutable_project_boxed_opaque_existential_1(a2, v9);
  v11 = *(*(v9 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v14, v12);
  v17 = a3[3];
  v16 = a3[4];
  v18 = __swift_mutable_project_boxed_opaque_existential_1(a3, v17);
  v19 = *(*(v17 - 8) + 64);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v22 = v26 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v23 + 16))(v22, v20);
  v24 = sub_1BF4394E8(a1, v14, v22, a4, v26[1], v9, v17, v8, v16);
  __swift_destroy_boxed_opaque_existential_1Tm(a3);
  __swift_destroy_boxed_opaque_existential_1Tm(a2);
  return v24;
}

id ExtensionManager.init(queue:extensionFactory:exExtensionIdentityDiscoverer:remoteWidgetExtensionProvider:)(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v4[OBJC_IVAR____TtC9ChronoKit16ExtensionManager_requireValidExtensions] = 1;
  v10 = OBJC_IVAR____TtC9ChronoKit16ExtensionManager__extensionsPublisher;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD9110, &qword_1BF4EEFA0);
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  *&v4[v10] = sub_1BF4E7C34();
  v14 = OBJC_IVAR____TtC9ChronoKit16ExtensionManager__addedPublisher;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD9128, &qword_1BF4F06F8);
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  swift_allocObject();
  *&v4[v14] = sub_1BF4E7C34();
  v18 = OBJC_IVAR____TtC9ChronoKit16ExtensionManager__updatedPublisher;
  v19 = *(v15 + 48);
  v20 = *(v15 + 52);
  swift_allocObject();
  *&v4[v18] = sub_1BF4E7C34();
  v21 = OBJC_IVAR____TtC9ChronoKit16ExtensionManager__removedPublisher;
  v22 = *(v15 + 48);
  v23 = *(v15 + 52);
  swift_allocObject();
  *&v4[v21] = sub_1BF4E7C34();
  v24 = OBJC_IVAR____TtC9ChronoKit16ExtensionManager_extensionsByIdentifier;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9148, &qword_1BF4F0700);
  v25 = swift_allocObject();
  v26 = MEMORY[0x1E69E7CC8];
  *(v25 + 24) = 0;
  *(v25 + 16) = v26;
  *&v5[v24] = v25;
  v27 = OBJC_IVAR____TtC9ChronoKit16ExtensionManager_lookupLock;
  type metadata accessor for UnfairLock();
  v28 = swift_allocObject();
  v29 = swift_slowAlloc();
  *v29 = 0;
  *(v28 + 16) = v29;
  *&v5[v27] = v28;
  *&v5[OBJC_IVAR____TtC9ChronoKit16ExtensionManager_exExtensionIdentityDiscovererSubscription] = 0;
  *&v5[OBJC_IVAR____TtC9ChronoKit16ExtensionManager_remoteWidgetExtensionSubscription] = 0;
  *&v5[OBJC_IVAR____TtC9ChronoKit16ExtensionManager_queue] = a1;
  sub_1BF38E49C(a2, &v5[OBJC_IVAR____TtC9ChronoKit16ExtensionManager_extensionFactory]);
  sub_1BF38E49C(a3, &v5[OBJC_IVAR____TtC9ChronoKit16ExtensionManager_exExtensionIdentityDiscoverer]);
  sub_1BF38E49C(a4, &v5[OBJC_IVAR____TtC9ChronoKit16ExtensionManager_remoteWidgetExtensionProvider]);
  v32.receiver = v5;
  v32.super_class = type metadata accessor for ExtensionManager();
  v30 = objc_msgSendSuper2(&v32, sel_init);
  __swift_destroy_boxed_opaque_existential_1Tm(a4);
  __swift_destroy_boxed_opaque_existential_1Tm(a3);
  __swift_destroy_boxed_opaque_existential_1Tm(a2);
  return v30;
}

uint64_t sub_1BF4340C4()
{
  v1 = v0;
  if (qword_1EDC9D500 != -1)
  {
    swift_once();
  }

  v2 = sub_1BF4E7B54();
  __swift_project_value_buffer(v2, qword_1EDCA69A0);
  v3 = sub_1BF4E7B34();
  v4 = sub_1BF4E8E84();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1BF389000, v3, v4, "Start", v5, 2u);
    MEMORY[0x1BFB5A5D0](v5, -1, -1);
  }

  v6 = OBJC_IVAR____TtC9ChronoKit16ExtensionManager_exExtensionIdentityDiscoverer;
  sub_1BF38E49C(&v1[OBJC_IVAR____TtC9ChronoKit16ExtensionManager_exExtensionIdentityDiscoverer], v28);
  v7 = v29;
  v8 = v30;
  __swift_project_boxed_opaque_existential_1(v28, v29);
  (*(v8 + 8))(v7, v8);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD9188, &qword_1BF4F0708);
  sub_1BF38C8B4(&qword_1EDC9D3E0, &unk_1EBDD9188, &qword_1BF4F0708);
  v9 = sub_1BF4E7D14();

  __swift_destroy_boxed_opaque_existential_1Tm(v28);
  v10 = *&v1[OBJC_IVAR____TtC9ChronoKit16ExtensionManager_exExtensionIdentityDiscovererSubscription];
  *&v1[OBJC_IVAR____TtC9ChronoKit16ExtensionManager_exExtensionIdentityDiscovererSubscription] = v9;

  sub_1BF38E49C(&v1[v6], v28);
  v11 = v29;
  v12 = v30;
  __swift_project_boxed_opaque_existential_1(v28, v29);
  v13 = (*(v12 + 24))(v11, v12);
  __swift_destroy_boxed_opaque_existential_1Tm(v28);
  v14 = *&v1[OBJC_IVAR____TtC9ChronoKit16ExtensionManager_extensionsByIdentifier];

  os_unfair_lock_lock((v14 + 24));
  sub_1BF434BF8((v14 + 16), v28);
  os_unfair_lock_unlock((v14 + 24));
  v15 = v28[0];

  v16 = sub_1BF439A9C(v15);

  v28[0] = v16;
  v17 = v1;
  v18 = sub_1BF439C40(v13, v17, v28);

  sub_1BF435654(v28[0]);
  sub_1BF43698C(v18);

  v19 = &v17[OBJC_IVAR____TtC9ChronoKit16ExtensionManager_remoteWidgetExtensionProvider];
  v20 = *&v17[OBJC_IVAR____TtC9ChronoKit16ExtensionManager_remoteWidgetExtensionProvider + 24];
  v21 = *&v17[OBJC_IVAR____TtC9ChronoKit16ExtensionManager_remoteWidgetExtensionProvider + 32];
  __swift_project_boxed_opaque_existential_1(&v17[OBJC_IVAR____TtC9ChronoKit16ExtensionManager_remoteWidgetExtensionProvider], v20);
  v28[0] = (*(v21 + 8))(v20, v21);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9198, &unk_1BF4F0710);
  sub_1BF38C8B4(&qword_1EDC9D400, &qword_1EBDD9198, &unk_1BF4F0710);
  v22 = sub_1BF4E7D14();

  v23 = *&v17[OBJC_IVAR____TtC9ChronoKit16ExtensionManager_remoteWidgetExtensionSubscription];
  *&v17[OBJC_IVAR____TtC9ChronoKit16ExtensionManager_remoteWidgetExtensionSubscription] = v22;

  v24 = *(v19 + 3);
  v25 = *(v19 + 4);
  __swift_project_boxed_opaque_existential_1(v19, v24);
  v26 = (*(v25 + 16))(v24, v25);
  sub_1BF4345F8(v26, v17);
}

uint64_t sub_1BF4344F8(unint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = *(result + OBJC_IVAR____TtC9ChronoKit16ExtensionManager_extensionsByIdentifier);
    v4 = result;

    os_unfair_lock_lock((v3 + 24));
    sub_1BF434BF8((v3 + 16), &v9);
    os_unfair_lock_unlock((v3 + 24));
    v5 = v9;

    v6 = sub_1BF439A9C(v5);

    v9 = v6;
    v7 = v4;
    v8 = sub_1BF439C40(v1, v7, &v9);

    sub_1BF435654(v9);
    sub_1BF43698C(v8);
  }

  return result;
}

uint64_t sub_1BF4345F8(uint64_t a1, uint64_t a2)
{
  v29 = type metadata accessor for RemoteWidgetExtension();
  v4 = *(*(v29 - 8) + 64);
  MEMORY[0x1EEE9AC00](v29);
  v28 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD92A8, &unk_1BF4F08B0);
  v6 = *(v27 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v27);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v25 - v11;
  v13 = *(a1 + 16);
  v14 = MEMORY[0x1E69E7CC0];
  if (v13)
  {
    v25 = a2;
    v32 = MEMORY[0x1E69E7CC0];
    sub_1BF3E151C(0, v13, 0);
    v14 = v32;
    v15 = a1 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    v26 = *(v6 + 72);
    do
    {
      sub_1BF38C94C(v15, v12, &qword_1EBDD92A8, &unk_1BF4F08B0);
      sub_1BF38C94C(v12, v9, &qword_1EBDD92A8, &unk_1BF4F08B0);
      v16 = swift_getEnumCaseMultiPayload() == 1;
      v17 = v28;
      sub_1BF43A204(v9, v28);
      *&v31[8] = v29;
      *&v31[16] = sub_1BF43A1BC(&unk_1EBDD92B0, type metadata accessor for RemoteWidgetExtension);
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v30);
      sub_1BF43A204(v17, boxed_opaque_existential_0);
      sub_1BF38C9B4(v12, &qword_1EBDD92A8, &unk_1BF4F08B0);
      v31[24] = v16;
      v32 = v14;
      v20 = *(v14 + 16);
      v19 = *(v14 + 24);
      if (v20 >= v19 >> 1)
      {
        sub_1BF3E151C((v19 > 1), v20 + 1, 1);
        v14 = v32;
      }

      *(v14 + 16) = v20 + 1;
      v21 = (v14 + 48 * v20);
      v22 = v30;
      v23 = *v31;
      *(v21 + 57) = *&v31[9];
      v21[2] = v22;
      v21[3] = v23;
      v15 += v26;
      --v13;
    }

    while (v13);
  }

  sub_1BF43698C(v14);
}

void sub_1BF4348C0(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_1BF4345F8(v1, Strong);
  }
}

uint64_t sub_1BF434938@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8B48, &unk_1BF4EC990);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v8 - v5;

  sub_1BF4E7694();
  sub_1BF38B8B8(v6, a1);
  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_1BF434A40()
{
  v1 = *(v0 + OBJC_IVAR____TtC9ChronoKit16ExtensionManager_extensionsByIdentifier);

  os_unfair_lock_lock((v1 + 24));
  sub_1BF38DBC8((v1 + 16), &v4);
  os_unfair_lock_unlock((v1 + 24));
  v2 = v4;

  return v2;
}

uint64_t sub_1BF434AB8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8A38, &unk_1BF4EC4D0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v9[-v4];

  sub_1BF4E7694();
  v6 = *(v0 + OBJC_IVAR____TtC9ChronoKit16ExtensionManager_extensionsByIdentifier);
  v10 = v5;

  os_unfair_lock_lock((v6 + 24));
  sub_1BF38DC60((v6 + 16), &v11);
  os_unfair_lock_unlock((v6 + 24));
  v7 = v11;

  (*(v2 + 8))(v5, v1);
  return v7;
}

uint64_t sub_1BF434BF8@<X0>(uint64_t *a1@<X0>, unint64_t *a2@<X8>)
{
  v33 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD91A0, &unk_1BF4EC4E0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3);
  v32 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v30 - v8;
  v10 = *a1;
  v11 = *a1 + 64;
  v12 = 1 << *(*a1 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(*a1 + 64);
  v15 = (v12 + 63) >> 6;
  v36 = v7 + 16;
  v37 = v7;
  v31 = (v7 + 32);
  v35 = (v7 + 8);
  v38 = v10;

  v17 = 0;
  v34 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v18 = v17;
    if (!v14)
    {
      break;
    }

LABEL_8:
    v19 = __clz(__rbit64(v14));
    v14 &= v14 - 1;
    v20 = *(v37 + 72);
    (*(v37 + 16))(v9, *(v38 + 48) + v20 * (v19 | (v17 << 6)), v3);
    sub_1BF4E7774();
    v21 = sub_1BF4E76E4();

    if (v21)
    {
      result = (*v35)(v9, v3);
    }

    else
    {
      v22 = *v31;
      (*v31)(v32, v9, v3);
      v23 = v34;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v25 = v23;
      v39 = v23;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1BF3E153C(0, *(v23 + 16) + 1, 1);
        v25 = v39;
      }

      v27 = *(v25 + 16);
      v26 = *(v25 + 24);
      v28 = v27 + 1;
      if (v27 >= v26 >> 1)
      {
        v30 = v22;
        v34 = v27 + 1;
        sub_1BF3E153C(v26 > 1, v27 + 1, 1);
        v28 = v34;
        v22 = v30;
        v25 = v39;
      }

      *(v25 + 16) = v28;
      v29 = *(v37 + 80);
      v34 = v25;
      result = (v22)(v25 + ((v29 + 32) & ~v29) + v27 * v20, v32, v3);
    }
  }

  while (1)
  {
    v17 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v17 >= v15)
    {

      *v33 = v34;
      return result;
    }

    v14 = *(v11 + 8 * v17);
    ++v18;
    if (v14)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
  return result;
}

void sub_1BF434EE8(id *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v67 = a4;
  v63 = a3;
  v72 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD92E0, &unk_1BF4F08D0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v62 = &v61 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD91A0, &unk_1BF4EC4E0);
  v64 = *(v8 - 8);
  v65 = v8;
  v9 = *(v64 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v61 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8B48, &unk_1BF4EC990);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v61 - v16;
  v18 = *a1;
  v19 = [*a1 bundleIdentifier];
  sub_1BF4E8914();

  v20 = v72;
  sub_1BF4E7694();
  v21 = OBJC_IVAR____TtC9ChronoKit16ExtensionManager_requireValidExtensions;
  swift_beginAccess();
  LOBYTE(v21) = sub_1BF38CBB8(v17, 0, 0, *(v20 + v21));
  (*(v13 + 8))(v17, v12);
  if (v21)
  {
    if (qword_1EDC9D500 != -1)
    {
      swift_once();
    }

    v22 = sub_1BF4E7B54();
    __swift_project_value_buffer(v22, qword_1EDCA69A0);
    v23 = v18;
    v24 = sub_1BF4E7B34();
    v25 = sub_1BF4E8E84();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v71[0] = v27;
      *v26 = 136446210;
      v28 = [v23 0x1E80BD978];
      v29 = sub_1BF4E8914();
      v31 = v30;

      v32 = sub_1BF38D65C(v29, v31, v71);

      *(v26 + 4) = v32;
      _os_log_impl(&dword_1BF389000, v24, v25, "Ignoring restricted or unknown extension %{public}s", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v27);
      MEMORY[0x1BFB5A5D0](v27, -1, -1);
      MEMORY[0x1BFB5A5D0](v26, -1, -1);
    }

    v33 = v67;
    *(v67 + 32) = 0;
    *v33 = 0u;
    *(v33 + 16) = 0u;
    *(v33 + 40) = -1;
  }

  else
  {
    v34 = [v18 bundleIdentifier];
    sub_1BF4E8914();

    sub_1BF4E7694();
    sub_1BF4E77B4();
    v35 = v62;
    sub_1BF4DADD8(v11, v62);
    sub_1BF38C9B4(v35, &unk_1EBDD92E0, &unk_1BF4F08D0);
    sub_1BF38E49C(v20 + OBJC_IVAR____TtC9ChronoKit16ExtensionManager_extensionFactory, v68);
    v36 = v69;
    v37 = v70;
    __swift_project_boxed_opaque_existential_1(v68, v69);
    v38 = v66;
    (*(v37 + 8))(v71, v18, v36, v37);
    if (v38)
    {
      __swift_destroy_boxed_opaque_existential_1Tm(v68);
      if (qword_1EDC9D500 != -1)
      {
        swift_once();
      }

      v39 = sub_1BF4E7B54();
      __swift_project_value_buffer(v39, qword_1EDCA69A0);
      v40 = v18;
      v41 = v38;
      v42 = sub_1BF4E7B34();
      v43 = sub_1BF4E8E64();

      if (os_log_type_enabled(v42, v43))
      {
        v44 = swift_slowAlloc();
        v45 = swift_slowAlloc();
        v71[0] = v45;
        *v44 = 136446466;
        v46 = [v40 bundleIdentifier];
        v47 = sub_1BF4E8914();
        v49 = v48;

        v50 = sub_1BF38D65C(v47, v49, v71);

        *(v44 + 4) = v50;
        *(v44 + 12) = 2080;
        v68[0] = v38;
        v51 = v38;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD91C0, &unk_1BF4ED510);
        v52 = sub_1BF4E8994();
        v54 = sub_1BF38D65C(v52, v53, v71);

        *(v44 + 14) = v54;
        _os_log_impl(&dword_1BF389000, v42, v43, "Failed to handle new extension of %{public}s due to %s, removing existing version as a safeguard", v44, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1BFB5A5D0](v45, -1, -1);
        MEMORY[0x1BFB5A5D0](v44, -1, -1);
      }

      v55 = *(v72 + OBJC_IVAR____TtC9ChronoKit16ExtensionManager_extensionsByIdentifier);
      MEMORY[0x1EEE9AC00](v56);
      *(&v61 - 2) = v11;

      os_unfair_lock_lock((v55 + 24));
      sub_1BF38B740((v55 + 16), v68);
      os_unfair_lock_unlock((v55 + 24));

      v57 = (v64 + 8);
      if (v69)
      {
        sub_1BF38E60C(v68, v71);
        v58 = v67;
        sub_1BF38E60C(v71, v67);
        *(v58 + 40) = 1;
      }

      else
      {
        sub_1BF38C9B4(v68, &unk_1EBDD91B0, &unk_1BF4F0720);
        v60 = v67;
        *(v67 + 32) = 0;
        *v60 = 0u;
        *(v60 + 16) = 0u;
        *(v60 + 40) = -1;
      }

      (*v57)(v11, v65);
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1Tm(v68);
      v59 = v67;
      sub_1BF38E60C(v71, v67);
      *(v59 + 40) = 0;
      (*(v64 + 8))(v11, v65);
    }
  }
}

void sub_1BF435654(uint64_t a1)
{
  v78 = sub_1BF4E7FF4();
  v77 = *(v78 - 8);
  v3 = *(v77 + 64);
  MEMORY[0x1EEE9AC00](v78);
  v76 = &v72 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = sub_1BF4E8064();
  v74 = *(v75 - 8);
  v5 = *(v74 + 64);
  MEMORY[0x1EEE9AC00](v75);
  v73 = &v72 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8B48, &unk_1BF4EC990);
  v7 = *(v82 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v82);
  v94 = &v72 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD91A0, &unk_1BF4EC4E0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v90 = &v72 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v97 = &v72 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v92 = &v72 - v17;
  v91 = swift_allocObject();
  *(v91 + 16) = MEMORY[0x1E69E7CC0];
  v86 = v1;
  v79 = OBJC_IVAR____TtC9ChronoKit16ExtensionManager_extensionsByIdentifier;
  v18 = *&v1[OBJC_IVAR____TtC9ChronoKit16ExtensionManager_extensionsByIdentifier];

  os_unfair_lock_lock((v18 + 24));
  v95 = *(v18 + 16);

  os_unfair_lock_unlock((v18 + 24));

  v19 = a1 + 56;
  v20 = 1 << *(a1 + 32);
  v21 = -1;
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  v22 = v21 & *(a1 + 56);
  v23 = (v20 + 63) >> 6;
  v96 = v11 + 16;
  v93 = v11;
  v24 = v11 + 8;
  v81 = (v7 + 8);

  v25 = 0;
  v87 = 0;
  *&v26 = 136446210;
  v80 = v26;
  v88 = a1;
  v99 = v24;
  v89 = v10;
  while (v22)
  {
LABEL_12:
    v31 = v92;
    v32 = v93;
    v33 = *(v93 + 16);
    v33(v92, *(a1 + 48) + *(v93 + 72) * (__clz(__rbit64(v22)) | (v25 << 6)), v10);
    sub_1BF4E77C4();
    v98 = *(v32 + 8);
    v98(v31, v10);
    v29 = v97;
    sub_1BF4E77B4();
    v34 = v95;
    if (*(v95 + 16) && (v35 = sub_1BF38C890(v29), (v36 & 1) != 0))
    {
      sub_1BF38E49C(*(v34 + 56) + 40 * v35, aBlock);
      sub_1BF38E49C(aBlock, &v101);
      v37 = v91;
      v38 = *(v91 + 16);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v37 + 16) = v38;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v38 = sub_1BF38E628(0, v38[2] + 1, 1, v38);
        *(v91 + 16) = v38;
      }

      v41 = v38[2];
      v40 = v38[3];
      if (v41 >= v40 >> 1)
      {
        v38 = sub_1BF38E628((v40 > 1), v41 + 1, 1, v38);
      }

      v38[2] = v41 + 1;
      v42 = sub_1BF38E60C(&v101, &v38[5 * v41 + 4]);
      *(v91 + 16) = v38;
      v43 = *&v86[v79];
      MEMORY[0x1EEE9AC00](v42);
      *(&v72 - 2) = v29;

      os_unfair_lock_lock(v43 + 6);
      v44 = v87;
      sub_1BF43A2B0(&v43[4]);
      os_unfair_lock_unlock(v43 + 6);
      v30 = &v102;
      v87 = v44;
      if (v44)
      {
        goto LABEL_26;
      }

      __swift_destroy_boxed_opaque_existential_1Tm(aBlock);

      a1 = v88;
      v28 = v98;
    }

    else
    {
      v45 = v90;
      if (qword_1EDC9D500 != -1)
      {
        swift_once();
      }

      v46 = sub_1BF4E7B54();
      __swift_project_value_buffer(v46, qword_1EDCA69A0);
      v33(v45, v29, v10);
      v47 = sub_1BF4E7B34();
      v48 = sub_1BF4E8E84();
      if (os_log_type_enabled(v47, v48))
      {
        v49 = swift_slowAlloc();
        v83 = v49;
        v85 = swift_slowAlloc();
        aBlock[0] = v85;
        *v49 = v80;
        v50 = v45;
        v51 = v94;
        v84 = v48;
        sub_1BF4E77C4();
        sub_1BF38C8B4(&qword_1EDC9D568, &qword_1EBDD8B48, &unk_1BF4EC990);
        v52 = v82;
        v53 = sub_1BF4E96A4();
        v55 = v54;
        (*v81)(v51, v52);
        v28 = v98;
        v98(v50, v89);
        v56 = sub_1BF38D65C(v53, v55, aBlock);
        v57 = v88;

        v58 = v83;
        *(v83 + 1) = v56;
        v59 = v58;
        _os_log_impl(&dword_1BF389000, v47, v84, "Pending removal of extension %{public}s without existing widget extension", v58, 0xCu);
        v60 = v85;
        __swift_destroy_boxed_opaque_existential_1Tm(v85);
        v61 = v60;
        a1 = v57;
        MEMORY[0x1BFB5A5D0](v61, -1, -1);
        MEMORY[0x1BFB5A5D0](v59, -1, -1);

        v10 = v89;
      }

      else
      {

        v27 = v45;
        v28 = v98;
        v98(v27, v10);
      }

      v29 = v97;
    }

    v22 &= v22 - 1;
    v28(v29, v10);
  }

  while (1)
  {
    v30 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      break;
    }

    if (v30 >= v23)
    {

      v62 = swift_allocObject();
      *(v62 + 16) = 0;
      v63 = v86;
      v64 = *&v86[OBJC_IVAR____TtC9ChronoKit16ExtensionManager_queue];
      v65 = swift_allocObject();
      v65[2] = v91;
      v65[3] = v62;
      v65[4] = v63;
      aBlock[4] = sub_1BF43A2CC;
      aBlock[5] = v65;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1BF38E868;
      aBlock[3] = &block_descriptor_67;
      v66 = _Block_copy(aBlock);
      v67 = v64;

      v68 = v63;
      v69 = v73;
      sub_1BF4E8014();
      v101 = MEMORY[0x1E69E7CC0];
      sub_1BF43A1BC(&qword_1EDC9F980, MEMORY[0x1E69E7F60]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8EB8, &unk_1BF4F0890);
      sub_1BF38C8B4(&qword_1EDC9F190, &qword_1EBDD8EB8, &unk_1BF4F0890);
      v70 = v76;
      v71 = v78;
      sub_1BF4E91A4();
      MEMORY[0x1BFB591B0](0, v69, v70, v66);
      _Block_release(v66);

      (*(v77 + 8))(v70, v71);
      (*(v74 + 8))(v69, v75);

      return;
    }

    v22 = *(v19 + 8 * v30);
    ++v25;
    if (v22)
    {
      v25 = v30;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_26:

  __break(1u);
}

uint64_t sub_1BF436088(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD91A0, &unk_1BF4EC4E0);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = v10 - v6;
  (*(v8 + 16))(v10 - v6, a2, v5);
  v11 = 0;
  memset(v10, 0, sizeof(v10));
  return sub_1BF43A7F8(v10, v7);
}

uint64_t sub_1BF436178(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  if (*(*(a1 + 16) + 16))
  {
    swift_beginAccess();
    *(a2 + 16) = 1;
    if (qword_1EDC9D500 != -1)
    {
      swift_once();
    }

    v6 = sub_1BF4E7B54();
    __swift_project_value_buffer(v6, qword_1EDCA69A0);

    v7 = sub_1BF4E7B34();
    v8 = sub_1BF4E8E84();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v21 = v10;
      *v9 = 136446210;
      swift_beginAccess();
      v11 = *(a1 + 16);

      v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD92D0, &qword_1BF4F08C0);
      v13 = MEMORY[0x1BFB58E10](v11, v12);
      v15 = v14;

      v16 = sub_1BF38D65C(v13, v15, &v21);

      *(v9 + 4) = v16;
      _os_log_impl(&dword_1BF389000, v7, v8, "Removed extensions [LS]: %{public}s", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v10);
      MEMORY[0x1BFB5A5D0](v10, -1, -1);
      MEMORY[0x1BFB5A5D0](v9, -1, -1);
    }

    v17 = *(a3 + OBJC_IVAR____TtC9ChronoKit16ExtensionManager__removedPublisher);
    swift_beginAccess();
    v20 = *(a1 + 16);

    sub_1BF4E7C14();
  }

  result = swift_beginAccess();
  if (*(a2 + 16) == 1)
  {
    v19 = *(a3 + OBJC_IVAR____TtC9ChronoKit16ExtensionManager__extensionsPublisher);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD9110, &qword_1BF4EEFA0);
    sub_1BF38C8B4(&qword_1EDC9FD90, &unk_1EBDD9110, &qword_1BF4EEFA0);
    return sub_1BF4E7C74();
  }

  return result;
}

uint64_t sub_1BF43642C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1BF4E7FF4();
  v20 = *(v4 - 8);
  v5 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1BF4E8064();
  v8 = *(v19 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *&v1[OBJC_IVAR____TtC9ChronoKit16ExtensionManager_extensionsByIdentifier];
  v21 = a1;

  os_unfair_lock_lock(v12 + 6);
  sub_1BF43A194(&v12[4]);
  os_unfair_lock_unlock(v12 + 6);

  v13 = *&v1[OBJC_IVAR____TtC9ChronoKit16ExtensionManager_queue];
  sub_1BF38E49C(a1, v24);
  v14 = swift_allocObject();
  *(v14 + 16) = v2;
  sub_1BF38E60C(v24, v14 + 24);
  aBlock[4] = sub_1BF43A1B0;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BF38E868;
  aBlock[3] = &block_descriptor_4;
  v15 = _Block_copy(aBlock);
  v16 = v13;
  v17 = v2;
  sub_1BF4E8014();
  v22 = MEMORY[0x1E69E7CC0];
  sub_1BF43A1BC(&qword_1EDC9F980, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8EB8, &unk_1BF4F0890);
  sub_1BF38C8B4(&qword_1EDC9F190, &qword_1EBDD8EB8, &unk_1BF4F0890);
  sub_1BF4E91A4();
  MEMORY[0x1BFB591B0](0, v11, v7, v15);
  _Block_release(v15);

  (*(v20 + 8))(v7, v4);
  (*(v8 + 8))(v11, v19);
}

uint64_t sub_1BF43676C(uint64_t a1, void *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD91A0, &unk_1BF4EC4E0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v11[-v5 - 8];
  v7 = a2[3];
  v8 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v7);
  sub_1BF436840(v7, v8);
  sub_1BF38E49C(a2, v11);
  return sub_1BF43A7F8(v11, v6);
}

void sub_1BF436840(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WidgetExtensionInfo();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = (&v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(a2 + 32))(a1, a2);
  v8 = *v7;
  sub_1BF38DB44(v7);
  sub_1BF4E9024();
}

uint64_t sub_1BF436900(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + OBJC_IVAR____TtC9ChronoKit16ExtensionManager__addedPublisher);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8A50, &qword_1BF4EC020);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1BF4EBEF0;
  sub_1BF38E49C(a2, v4 + 32);
  sub_1BF4E7C14();
}

void sub_1BF43698C(uint64_t a1)
{
  v2 = v1;
  v119 = 0;
  v4 = sub_1BF4E7FF4();
  v102 = *(v4 - 8);
  v103 = v4;
  v5 = *(v102 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v100 = &v98 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = sub_1BF4E8064();
  v99 = *(v101 - 8);
  v7 = *(v99 + 64);
  MEMORY[0x1EEE9AC00](v101);
  v98 = &v98 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = sub_1BF4E7394();
  v9 = *(v108 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v108);
  v107 = &v98 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = swift_allocObject();
  v13 = MEMORY[0x1E69E7CC0];
  *(v12 + 16) = MEMORY[0x1E69E7CC0];
  v14 = swift_allocObject();
  *(v14 + 16) = v13;
  v120 = swift_allocObject();
  *(v120 + 16) = v13;
  v16 = *(a1 + 16);
  v116 = v14;
  v117 = v2;
  v115 = v12;
  if (v16)
  {
    v17 = a1 + 32;
    v106 = (v9 + 8);
    v118 = OBJC_IVAR____TtC9ChronoKit16ExtensionManager_extensionsByIdentifier;
    *&v15 = 136446210;
    v105 = v15;
    *&v15 = 136446722;
    v104 = v15;
    while (1)
    {
      sub_1BF38C94C(v17, aBlock, &qword_1EBDD8A98, &qword_1BF4EC068);
      if (v132)
      {
        sub_1BF38E60C(aBlock, v134);
        sub_1BF38E49C(v134, v133);
        v19 = v120;
        v20 = *(v120 + 16);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v19 + 16) = v20;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v20 = sub_1BF38E628(0, v20[2] + 1, 1, v20);
          *(v120 + 16) = v20;
        }

        v23 = v20[2];
        v22 = v20[3];
        if (v23 >= v22 >> 1)
        {
          v20 = sub_1BF38E628((v22 > 1), v23 + 1, 1, v20);
          *(v120 + 16) = v20;
        }

        __swift_destroy_boxed_opaque_existential_1Tm(v134);
        v20[2] = v23 + 1;
        sub_1BF38E60C(v133, &v20[5 * v23 + 4]);
        *(v120 + 16) = v20;
      }

      else
      {
        v24 = sub_1BF38E60C(aBlock, v134);
        v25 = *&v2[v118];
        MEMORY[0x1EEE9AC00](v24);
        *(&v98 - 2) = v134;

        os_unfair_lock_lock((v25 + 24));
        v26 = v119;
        sub_1BF43A294((v25 + 16), v128);
        os_unfair_lock_unlock((v25 + 24));
        v119 = v26;
        if (v26)
        {

          __break(1u);
          goto LABEL_40;
        }

        if (v129)
        {
          sub_1BF38E60C(v128, v133);
          v27 = v135;
          v28 = v136;
          __swift_project_boxed_opaque_existential_1(v134, v135);
          if ((*(v28 + 312))(v133, v27, v28))
          {
            if (qword_1EDC9D500 != -1)
            {
              swift_once();
            }

            v29 = sub_1BF4E7B54();
            __swift_project_value_buffer(v29, qword_1EDCA69A0);
            sub_1BF38E49C(v134, v128);
            v30 = sub_1BF4E7B34();
            v31 = sub_1BF4E8E84();
            if (os_log_type_enabled(v30, v31))
            {
              v32 = swift_slowAlloc();
              v33 = swift_slowAlloc();
              v125[0] = v33;
              *v32 = v105;
              v34 = v130;
              __swift_project_boxed_opaque_existential_1(v128, v129);
              v35 = *(v34 + 8);
              v36 = sub_1BF4E96A4();
              v38 = v37;
              __swift_destroy_boxed_opaque_existential_1Tm(v128);
              v39 = sub_1BF38D65C(v36, v38, v125);
              v14 = v116;

              *(v32 + 4) = v39;
              _os_log_impl(&dword_1BF389000, v30, v31, "Unchanged extension: %{public}s", v32, 0xCu);
              __swift_destroy_boxed_opaque_existential_1Tm(v33);
              v40 = v33;
              v12 = v115;
              MEMORY[0x1BFB5A5D0](v40, -1, -1);
              MEMORY[0x1BFB5A5D0](v32, -1, -1);

              v18 = v133;
            }

            else
            {

              __swift_destroy_boxed_opaque_existential_1Tm(v133);
              v18 = v128;
            }

            __swift_destroy_boxed_opaque_existential_1Tm(v18);
            v2 = v117;
          }

          else
          {
            if (qword_1EDC9D500 != -1)
            {
              swift_once();
            }

            v45 = sub_1BF4E7B54();
            __swift_project_value_buffer(v45, qword_1EDCA69A0);
            sub_1BF38E49C(v134, v128);
            sub_1BF38E49C(v134, v125);
            sub_1BF38E49C(v133, v122);
            v46 = sub_1BF4E7B34();
            v47 = sub_1BF4E8E84();
            if (os_log_type_enabled(v46, v47))
            {
              v48 = swift_slowAlloc();
              v49 = swift_slowAlloc();
              v113 = v46;
              v114 = v49;
              v121 = v49;
              *v48 = v104;
              v50 = v130;
              __swift_project_boxed_opaque_existential_1(v128, v129);
              v51 = *(v50 + 8);
              v52 = sub_1BF4E96A4();
              v54 = v53;
              __swift_destroy_boxed_opaque_existential_1Tm(v128);
              v55 = sub_1BF38D65C(v52, v54, &v121);

              *(v48 + 4) = v55;
              *(v48 + 12) = 2082;
              v57 = v126;
              v56 = v127;
              __swift_project_boxed_opaque_existential_1(v125, v126);
              v58 = v107;
              (*(v56 + 64))(v57, v56);
              v111 = sub_1BF43A1BC(&unk_1EBDD92C0, MEMORY[0x1E69695A8]);
              v59 = v108;
              v60 = sub_1BF4E96A4();
              v62 = v61;
              v112 = v47;
              v110 = *v106;
              v110(v58, v59);
              __swift_destroy_boxed_opaque_existential_1Tm(v125);
              v63 = sub_1BF38D65C(v60, v62, &v121);

              v109 = v48;
              *(v48 + 14) = v63;
              *(v48 + 22) = 2082;
              v64 = v123;
              v65 = v124;
              __swift_project_boxed_opaque_existential_1(v122, v123);
              v66 = *(v65 + 64);
              v67 = v64;
              v68 = v65;
              v12 = v115;
              v14 = v116;
              v66(v67, v68);
              v69 = sub_1BF4E96A4();
              v71 = v70;
              v110(v58, v59);
              __swift_destroy_boxed_opaque_existential_1Tm(v122);
              v72 = sub_1BF38D65C(v69, v71, &v121);

              v73 = v109;
              *(v109 + 24) = v72;
              v74 = v113;
              _os_log_impl(&dword_1BF389000, v113, v112, "Updated extension: %{public}s, now with pluginUUID %{public}s, (was %{public}s)", v73, 0x20u);
              v75 = v114;
              swift_arrayDestroy();
              MEMORY[0x1BFB5A5D0](v75, -1, -1);
              MEMORY[0x1BFB5A5D0](v73, -1, -1);
            }

            else
            {

              __swift_destroy_boxed_opaque_existential_1Tm(v122);
              __swift_destroy_boxed_opaque_existential_1Tm(v125);
              __swift_destroy_boxed_opaque_existential_1Tm(v128);
            }

            v2 = v117;
            sub_1BF38E49C(v134, v128);
            v76 = *(v14 + 16);
            v77 = swift_isUniquelyReferenced_nonNull_native();
            *(v14 + 16) = v76;
            if ((v77 & 1) == 0)
            {
              v76 = sub_1BF38E628(0, v76[2] + 1, 1, v76);
              *(v14 + 16) = v76;
            }

            v79 = v76[2];
            v78 = v76[3];
            if (v79 >= v78 >> 1)
            {
              v76 = sub_1BF38E628((v78 > 1), v79 + 1, 1, v76);
              *(v14 + 16) = v76;
            }

            __swift_destroy_boxed_opaque_existential_1Tm(v133);
            v76[2] = v79 + 1;
            sub_1BF38E60C(v128, &v76[5 * v79 + 4]);
            *(v14 + 16) = v76;
          }
        }

        else
        {
          sub_1BF38C9B4(v128, &unk_1EBDD91B0, &unk_1BF4F0720);
          sub_1BF38E49C(v134, v133);
          v41 = *(v12 + 16);
          v42 = swift_isUniquelyReferenced_nonNull_native();
          *(v12 + 16) = v41;
          if ((v42 & 1) == 0)
          {
            v41 = sub_1BF38E628(0, v41[2] + 1, 1, v41);
            *(v12 + 16) = v41;
          }

          v44 = v41[2];
          v43 = v41[3];
          if (v44 >= v43 >> 1)
          {
            v41 = sub_1BF38E628((v43 > 1), v44 + 1, 1, v41);
          }

          v41[2] = v44 + 1;
          sub_1BF38E60C(v133, &v41[5 * v44 + 4]);
          *(v12 + 16) = v41;
        }

        __swift_destroy_boxed_opaque_existential_1Tm(v134);
      }

      v17 += 48;
      if (!--v16)
      {
        v80 = *(v120 + 16);
        v81 = *(v12 + 16);
        v82 = *(v14 + 16);
        goto LABEL_37;
      }
    }
  }

  v81 = v13;
  v80 = v13;
LABEL_37:
  aBlock[0] = v81;

  v84 = sub_1BF44BA70(v83);
  v85 = aBlock[0];
  v86 = v117;
  v87 = *&v117[OBJC_IVAR____TtC9ChronoKit16ExtensionManager_extensionsByIdentifier];
  MEMORY[0x1EEE9AC00](v84);
  *(&v98 - 2) = v80;
  *(&v98 - 1) = v85;

  os_unfair_lock_lock((v87 + 24));
  v26 = v119;
  sub_1BF43A268((v87 + 16));
  os_unfair_lock_unlock((v87 + 24));
  if (v26)
  {
LABEL_40:

    __break(1u);
  }

  else
  {

    v88 = swift_allocObject();
    *(v88 + 16) = 0;
    v89 = *&v86[OBJC_IVAR____TtC9ChronoKit16ExtensionManager_queue];
    v90 = swift_allocObject();
    v90[2] = v12;
    v90[3] = v88;
    v91 = v116;
    v90[4] = v86;
    v90[5] = v91;
    v90[6] = v120;
    aBlock[4] = sub_1BF43A284;
    v132 = v90;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1BF38E868;
    aBlock[3] = &block_descriptor_59;
    v92 = _Block_copy(aBlock);
    v93 = v89;

    v94 = v86;

    v95 = v98;
    sub_1BF4E8014();
    v134[0] = MEMORY[0x1E69E7CC0];
    sub_1BF43A1BC(&qword_1EDC9F980, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8EB8, &unk_1BF4F0890);
    sub_1BF38C8B4(&qword_1EDC9F190, &qword_1EBDD8EB8, &unk_1BF4F0890);
    v96 = v100;
    v97 = v103;
    sub_1BF4E91A4();
    MEMORY[0x1BFB591B0](0, v95, v96, v92);
    _Block_release(v92);

    (*(v102 + 8))(v96, v97);
    (*(v99 + 8))(v95, v101);
  }
}

double sub_1BF43766C@<D0>(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD91A0, &unk_1BF4EC4E0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v17 - v9;
  v11 = a2[3];
  v12 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v11);
  sub_1BF436840(v11, v12);
  v13 = *a1;
  if (*(*a1 + 16) && (v14 = sub_1BF38C890(v10), (v15 & 1) != 0))
  {
    sub_1BF38E49C(*(v13 + 56) + 40 * v14, a3);
    (*(v7 + 8))(v10, v6);
  }

  else
  {
    (*(v7 + 8))(v10, v6);
    *(a3 + 32) = 0;
    result = 0.0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

void sub_1BF4377D0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v51 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD91A0, &unk_1BF4EC4E0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v54 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v50 - v10;
  v12 = *(a2 + 16);
  if (v12)
  {
    v13 = (a2 + 32);
    v52 = &v50 - v10;
    v53 = (v6 + 8);
    do
    {
      v14 = v13[3];
      v15 = v13[4];
      __swift_project_boxed_opaque_existential_1(v13, v14);
      sub_1BF436840(v14, v15);
      v16 = *a1;
      v17 = sub_1BF38C890(v11);
      if (v18)
      {
        v19 = v17;
        v20 = *a1;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v22 = *a1;
        v57 = *a1;
        if (!isUniquelyReferenced_nonNull_native)
        {
          sub_1BF4A3A84();
          v22 = v57;
        }

        v23 = *(v22 + 48) + *(v6 + 72) * v19;
        v24 = v6;
        v25 = *(v6 + 8);
        v25(v23, v5);
        sub_1BF38E60C(*(v22 + 56) + 40 * v19, v55);
        sub_1BF47C320(v19, v22);
        v26 = v52;
        v25(v52, v5);
        v6 = v24;
        v11 = v26;
        *a1 = v22;
      }

      else
      {
        (*v53)(v11, v5);
        v56 = 0;
        memset(v55, 0, sizeof(v55));
      }

      sub_1BF38C9B4(v55, &unk_1EBDD91B0, &unk_1BF4F0720);
      v13 += 5;
      --v12;
    }

    while (v12);
  }

  v27 = *(v51 + 16);
  if (!v27)
  {
    return;
  }

  v28 = (v51 + 32);
  v52 = (v6 + 16);
  v53 = (v6 + 8);
  while (1)
  {
    v30 = v28[3];
    v31 = v28[4];
    __swift_project_boxed_opaque_existential_1(v28, v30);
    v32 = v54;
    sub_1BF436840(v30, v31);
    sub_1BF38E49C(v28, v55);
    v33 = *a1;
    v34 = swift_isUniquelyReferenced_nonNull_native();
    v57 = *a1;
    v35 = v57;
    v36 = sub_1BF38C890(v32);
    v38 = v35[2];
    v39 = (v37 & 1) == 0;
    v40 = __OFADD__(v38, v39);
    v41 = v38 + v39;
    if (v40)
    {
      break;
    }

    v42 = v37;
    if (v35[3] < v41)
    {
      sub_1BF49F724(v41, v34);
      v36 = sub_1BF38C890(v54);
      if ((v42 & 1) != (v43 & 1))
      {
        goto LABEL_26;
      }

LABEL_18:
      v44 = v57;
      if (v42)
      {
        goto LABEL_11;
      }

      goto LABEL_19;
    }

    if (v34)
    {
      goto LABEL_18;
    }

    v49 = v36;
    sub_1BF4A3A84();
    v36 = v49;
    v44 = v57;
    if (v42)
    {
LABEL_11:
      v29 = (v44[7] + 40 * v36);
      __swift_destroy_boxed_opaque_existential_1Tm(v29);
      sub_1BF38E60C(v55, v29);
      (*v53)(v54, v5);
      goto LABEL_12;
    }

LABEL_19:
    v44[(v36 >> 6) + 8] |= 1 << v36;
    v45 = v36;
    v46 = v54;
    (*(v6 + 16))(v44[6] + *(v6 + 72) * v36, v54, v5);
    sub_1BF38E60C(v55, v44[7] + 40 * v45);
    (*(v6 + 8))(v46, v5);
    v47 = v44[2];
    v40 = __OFADD__(v47, 1);
    v48 = v47 + 1;
    if (v40)
    {
      goto LABEL_25;
    }

    v44[2] = v48;
LABEL_12:
    *a1 = v44;
    v28 += 5;
    if (!--v27)
    {
      return;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  sub_1BF4E9794();
  __break(1u);
}

uint64_t sub_1BF437BF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  if (*(*(a1 + 16) + 16))
  {
    swift_beginAccess();
    *(a2 + 16) = 1;
    if (qword_1EDC9D498 != -1)
    {
      swift_once();
    }

    v8 = sub_1BF4E7B54();
    __swift_project_value_buffer(v8, qword_1EDCA68F8);

    v9 = sub_1BF4E7B34();
    v10 = sub_1BF4E8E84();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v52 = v12;
      *v11 = 136446210;
      swift_beginAccess();
      v46 = a5;
      v13 = *(a1 + 16);

      v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD92D0, &qword_1BF4F08C0);
      v15 = MEMORY[0x1BFB58E10](v13, v14);
      v17 = v16;
      a5 = v46;

      v18 = sub_1BF38D65C(v15, v17, &v52);

      *(v11 + 4) = v18;
      _os_log_impl(&dword_1BF389000, v9, v10, "Added extensions: %{public}s", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v12);
      MEMORY[0x1BFB5A5D0](v12, -1, -1);
      MEMORY[0x1BFB5A5D0](v11, -1, -1);
    }

    v19 = *(a3 + OBJC_IVAR____TtC9ChronoKit16ExtensionManager__addedPublisher);
    swift_beginAccess();
    v51[6] = *(a1 + 16);

    sub_1BF4E7C14();
  }

  swift_beginAccess();
  if (*(*(a4 + 16) + 16))
  {
    swift_beginAccess();
    *(a2 + 16) = 1;
    if (qword_1EDC9D498 != -1)
    {
      swift_once();
    }

    v20 = sub_1BF4E7B54();
    __swift_project_value_buffer(v20, qword_1EDCA68F8);

    v21 = sub_1BF4E7B34();
    v22 = sub_1BF4E8E84();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v51[0] = v24;
      *v23 = 136446210;
      swift_beginAccess();
      v25 = *(a4 + 16);

      v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD92D0, &qword_1BF4F08C0);
      v27 = MEMORY[0x1BFB58E10](v25, v26);
      v29 = v28;

      v30 = sub_1BF38D65C(v27, v29, v51);

      *(v23 + 4) = v30;
      _os_log_impl(&dword_1BF389000, v21, v22, "Updated extensions: %{public}s", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v24);
      MEMORY[0x1BFB5A5D0](v24, -1, -1);
      MEMORY[0x1BFB5A5D0](v23, -1, -1);
    }

    v31 = *(a3 + OBJC_IVAR____TtC9ChronoKit16ExtensionManager__updatedPublisher);
    swift_beginAccess();
    v50[6] = *(a4 + 16);

    sub_1BF4E7C14();
  }

  swift_beginAccess();
  if (*(*(a5 + 16) + 16))
  {
    swift_beginAccess();
    *(a2 + 16) = 1;
    if (qword_1EDC9D498 != -1)
    {
      swift_once();
    }

    v32 = sub_1BF4E7B54();
    __swift_project_value_buffer(v32, qword_1EDCA68F8);

    v33 = sub_1BF4E7B34();
    v34 = sub_1BF4E8E84();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v50[0] = v36;
      *v35 = 136446210;
      swift_beginAccess();
      v37 = *(a5 + 16);

      v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD92D0, &qword_1BF4F08C0);
      v39 = MEMORY[0x1BFB58E10](v37, v38);
      v41 = v40;

      v42 = sub_1BF38D65C(v39, v41, v50);

      *(v35 + 4) = v42;
      _os_log_impl(&dword_1BF389000, v33, v34, "Removed extensions: %{public}s", v35, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v36);
      MEMORY[0x1BFB5A5D0](v36, -1, -1);
      MEMORY[0x1BFB5A5D0](v35, -1, -1);
    }

    v43 = *(a3 + OBJC_IVAR____TtC9ChronoKit16ExtensionManager__removedPublisher);
    swift_beginAccess();
    v49 = *(a5 + 16);

    sub_1BF4E7C14();
  }

  result = swift_beginAccess();
  if (*(a2 + 16) == 1)
  {
    v45 = *(a3 + OBJC_IVAR____TtC9ChronoKit16ExtensionManager__extensionsPublisher);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD9110, &qword_1BF4EEFA0);
    sub_1BF38C8B4(&qword_1EDC9FD90, &unk_1EBDD9110, &qword_1BF4EEFA0);
    return sub_1BF4E7C74();
  }

  return result;
}

uint64_t sub_1BF4382A0()
{
  result = sub_1BF4382C4();
  byte_1EDC9AA30 = result & 1;
  return result;
}

uint64_t sub_1BF4382C4()
{
  v0 = sub_1BF4E88E4();
  v1 = MGCopyAnswer();

  if (v1 && (swift_dynamicCast() & 1) != 0)
  {
    if (v4 == 18499 && v5 == 0xE200000000000000)
    {

      v2 = 1;
    }

    else
    {
      v2 = sub_1BF4E9734();
    }
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

id ExtensionManager.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id sub_1BF43844C(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_1BF438588(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t *a5, unint64_t *a6)
{
  v11 = *(*v6 + *a3);
  __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  sub_1BF38C8B4(a6, a4, a5);
  return sub_1BF4E7C84();
}

uint64_t sub_1BF438640@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8B48, &unk_1BF4EC990);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v10 - v6;
  v8 = *v1;

  sub_1BF4E7694();
  sub_1BF38B8B8(v7, a1);
  return (*(v4 + 8))(v7, v3);
}

void *sub_1BF4387DC(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9258, &unk_1BF4F0870);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v7 = ((v5 - 32) * 0x2AAAAAAAAAAAAAABLL) >> 64;
  v4[2] = a1;
  v4[3] = 2 * ((v7 >> 2) + (v7 >> 63));
  return result;
}

void *sub_1BF43886C(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8A68, &qword_1BF4EC038);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

size_t sub_1BF4388F0(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD92F0, &qword_1BF4EC070);
  v4 = *(sub_1BF4E8454() - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v7);
  if (v5)
  {
    if (result - v6 != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_1BF4389EC(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8A50, &qword_1BF4EC020);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v7 = ((v5 - 32) * 0x6666666666666667) >> 64;
  v4[2] = a1;
  v4[3] = 2 * ((v7 >> 4) + (v7 >> 63));
  return result;
}

void *sub_1BF438A7C(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a2)
  {
    a3 = 0;
    goto LABEL_13;
  }

  if (!a3)
  {
LABEL_13:
    *result = a4;
    result[1] = a3;
    return a3;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v5 = *(a4 + 16);
    if (v5)
    {
      v6 = a2;
      v14 = a3;
      v15 = result;
      v7 = 0;
      v8 = (a4 + 64);
      v9 = a3 - 1;
      while (v7 < *(a4 + 16))
      {
        v10 = *(v8 - 3);
        v11 = *(v8 - 2);
        v12 = *(v8 - 1);
        v13 = *v8;

        sub_1BF3D8840(v11, v12, v13);

        *v6 = v11;
        *(v6 + 8) = v12;
        *(v6 + 16) = v13;
        if (v9 == v7)
        {
          a3 = v14;
          result = v15;
          goto LABEL_13;
        }

        v6 += 24;
        ++v7;
        v8 += 40;
        if (v5 == v7)
        {
          a3 = v5;
          result = v15;
          goto LABEL_13;
        }
      }

      __break(1u);
      goto LABEL_15;
    }

    a3 = 0;
    goto LABEL_13;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_1BF438B78(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v41 = sub_1BF4E8454();
  v43 = *(v41 - 8);
  v8 = *(v43 + 64);
  v9 = MEMORY[0x1EEE9AC00](v41);
  v42 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v9);
  v40 = &v34 - v12;
  v13 = a4 + 56;
  v14 = -1 << *(a4 + 32);
  if (-v14 < 64)
  {
    v15 = ~(-1 << -v14);
  }

  else
  {
    v15 = -1;
  }

  v16 = v15 & *(a4 + 56);
  if (!a2)
  {
LABEL_19:
    v32 = 0;
    a3 = 0;
LABEL_25:
    *a1 = a4;
    *(a1 + 8) = v13;
    *(a1 + 16) = ~v14;
    *(a1 + 24) = v32;
    *(a1 + 32) = v16;
    return a3;
  }

  if (!a3)
  {
    v32 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v34 = -1 << *(a4 + 32);
    v35 = a1;
    result = 0;
    v17 = 0;
    v18 = (63 - v14) >> 6;
    v36 = v43 + 32;
    v37 = v43 + 16;
    a1 = 1;
    v38 = a4 + 56;
    v39 = a3;
    v19 = v40;
    while (v16)
    {
      v45 = a2;
LABEL_15:
      v22 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
      v44 = v17;
      v23 = a4;
      v24 = *(a4 + 48);
      v25 = v42;
      v26 = v43;
      v27 = *(v43 + 72);
      v28 = v41;
      (*(v43 + 16))(v42, v24 + v27 * (v22 | (v17 << 6)), v41);
      v29 = *(v26 + 32);
      v29(v19, v25, v28);
      v30 = v45;
      v29(v45, v19, v28);
      a3 = v39;
      if (a1 == v39)
      {
        v14 = v34;
        a1 = v35;
        a4 = v23;
        v32 = v44;
        v13 = v38;
        goto LABEL_25;
      }

      a2 = &v30[v27];
      result = a1;
      v31 = __OFADD__(a1++, 1);
      a4 = v23;
      v17 = v44;
      v13 = v38;
      if (v31)
      {
        __break(1u);
        goto LABEL_19;
      }
    }

    v20 = v17;
    while (1)
    {
      v21 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v21 >= v18)
      {
        break;
      }

      v16 = *(v13 + 8 * v21);
      ++v20;
      if (v16)
      {
        v45 = a2;
        v17 = v21;
        goto LABEL_15;
      }
    }

    v16 = 0;
    if (v18 <= v17 + 1)
    {
      v33 = v17 + 1;
    }

    else
    {
      v33 = v18;
    }

    v32 = v33 - 1;
    a3 = result;
    v14 = v34;
    a1 = v35;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

void *sub_1BF438E38(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      sub_1BF38E49C(*(a4 + 56) + 40 * (v17 | (v12 << 6)), v20);
      sub_1BF38E60C(v20, v21);
      sub_1BF38E60C(v21, v11);
      if (v14 == v10)
      {
        goto LABEL_24;
      }

      v11 += 40;
      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_26;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v19 = v12 + 1;
    }

    else
    {
      v19 = (63 - v7) >> 6;
    }

    v12 = v19 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_26:
  __break(1u);
  return result;
}

void *sub_1BF438FEC(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_1BF439144(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = *(*(a4 + 48) + ((v12 << 9) | (8 * v17)));
      *v11 = v18;
      if (v14 == v10)
      {
        v22 = v18;
        goto LABEL_24;
      }

      ++v11;
      v19 = v18;
      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v21 = v12 + 1;
    }

    else
    {
      v21 = (63 - v7) >> 6;
    }

    v12 = v21 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

id sub_1BF439298(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v34[3] = type metadata accessor for _WidgetExtensionFactory();
  v34[4] = &off_1F3DF0578;
  v34[0] = a2;
  v33[3] = type metadata accessor for _SystemEXExtensionIdentityDiscoverer();
  v33[4] = &off_1F3DF0558;
  v33[0] = a3;
  v8 = type metadata accessor for ExtensionManager();
  v9 = objc_allocWithZone(v8);
  v9[OBJC_IVAR____TtC9ChronoKit16ExtensionManager_requireValidExtensions] = 1;
  v10 = OBJC_IVAR____TtC9ChronoKit16ExtensionManager__extensionsPublisher;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD9110, &qword_1BF4EEFA0);
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  *&v9[v10] = sub_1BF4E7C34();
  v14 = OBJC_IVAR____TtC9ChronoKit16ExtensionManager__addedPublisher;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD9128, &qword_1BF4F06F8);
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  swift_allocObject();
  *&v9[v14] = sub_1BF4E7C34();
  v18 = OBJC_IVAR____TtC9ChronoKit16ExtensionManager__updatedPublisher;
  v19 = *(v15 + 48);
  v20 = *(v15 + 52);
  swift_allocObject();
  *&v9[v18] = sub_1BF4E7C34();
  v21 = OBJC_IVAR____TtC9ChronoKit16ExtensionManager__removedPublisher;
  v22 = *(v15 + 48);
  v23 = *(v15 + 52);
  swift_allocObject();
  *&v9[v21] = sub_1BF4E7C34();
  v24 = OBJC_IVAR____TtC9ChronoKit16ExtensionManager_extensionsByIdentifier;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9148, &qword_1BF4F0700);
  v25 = swift_allocObject();
  v26 = MEMORY[0x1E69E7CC8];
  *(v25 + 24) = 0;
  *(v25 + 16) = v26;
  *&v9[v24] = v25;
  v27 = OBJC_IVAR____TtC9ChronoKit16ExtensionManager_lookupLock;
  type metadata accessor for UnfairLock();
  v28 = swift_allocObject();
  v29 = swift_slowAlloc();
  *v29 = 0;
  *(v28 + 16) = v29;
  *&v9[v27] = v28;
  *&v9[OBJC_IVAR____TtC9ChronoKit16ExtensionManager_exExtensionIdentityDiscovererSubscription] = 0;
  *&v9[OBJC_IVAR____TtC9ChronoKit16ExtensionManager_remoteWidgetExtensionSubscription] = 0;
  *&v9[OBJC_IVAR____TtC9ChronoKit16ExtensionManager_queue] = a1;
  sub_1BF38E49C(v34, &v9[OBJC_IVAR____TtC9ChronoKit16ExtensionManager_extensionFactory]);
  sub_1BF38E49C(v33, &v9[OBJC_IVAR____TtC9ChronoKit16ExtensionManager_exExtensionIdentityDiscoverer]);
  sub_1BF38E49C(a4, &v9[OBJC_IVAR____TtC9ChronoKit16ExtensionManager_remoteWidgetExtensionProvider]);
  v32.receiver = v9;
  v32.super_class = v8;
  v30 = objc_msgSendSuper2(&v32, sel_init);
  __swift_destroy_boxed_opaque_existential_1Tm(a4);
  __swift_destroy_boxed_opaque_existential_1Tm(v33);
  __swift_destroy_boxed_opaque_existential_1Tm(v34);
  return v30;
}

id sub_1BF4394E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v43[3] = a6;
  v43[4] = a8;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v43);
  (*(*(a6 - 8) + 32))(boxed_opaque_existential_0, a2, a6);
  v42[3] = a7;
  v42[4] = a9;
  v16 = __swift_allocate_boxed_opaque_existential_0(v42);
  (*(*(a7 - 8) + 32))(v16, a3, a7);
  v17 = type metadata accessor for ExtensionManager();
  v18 = objc_allocWithZone(v17);
  v18[OBJC_IVAR____TtC9ChronoKit16ExtensionManager_requireValidExtensions] = 1;
  v19 = OBJC_IVAR____TtC9ChronoKit16ExtensionManager__extensionsPublisher;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD9110, &qword_1BF4EEFA0);
  v21 = *(v20 + 48);
  v22 = *(v20 + 52);
  swift_allocObject();
  *&v18[v19] = sub_1BF4E7C34();
  v23 = OBJC_IVAR____TtC9ChronoKit16ExtensionManager__addedPublisher;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD9128, &qword_1BF4F06F8);
  v25 = *(v24 + 48);
  v26 = *(v24 + 52);
  swift_allocObject();
  *&v18[v23] = sub_1BF4E7C34();
  v27 = OBJC_IVAR____TtC9ChronoKit16ExtensionManager__updatedPublisher;
  v28 = *(v24 + 48);
  v29 = *(v24 + 52);
  swift_allocObject();
  *&v18[v27] = sub_1BF4E7C34();
  v30 = OBJC_IVAR____TtC9ChronoKit16ExtensionManager__removedPublisher;
  v31 = *(v24 + 48);
  v32 = *(v24 + 52);
  swift_allocObject();
  *&v18[v30] = sub_1BF4E7C34();
  v33 = OBJC_IVAR____TtC9ChronoKit16ExtensionManager_extensionsByIdentifier;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9148, &qword_1BF4F0700);
  v34 = swift_allocObject();
  v35 = MEMORY[0x1E69E7CC8];
  *(v34 + 24) = 0;
  *(v34 + 16) = v35;
  *&v18[v33] = v34;
  v36 = OBJC_IVAR____TtC9ChronoKit16ExtensionManager_lookupLock;
  type metadata accessor for UnfairLock();
  v37 = swift_allocObject();
  v38 = swift_slowAlloc();
  *v38 = 0;
  *(v37 + 16) = v38;
  *&v18[v36] = v37;
  *&v18[OBJC_IVAR____TtC9ChronoKit16ExtensionManager_exExtensionIdentityDiscovererSubscription] = 0;
  *&v18[OBJC_IVAR____TtC9ChronoKit16ExtensionManager_remoteWidgetExtensionSubscription] = 0;
  *&v18[OBJC_IVAR____TtC9ChronoKit16ExtensionManager_queue] = a1;
  sub_1BF38E49C(v43, &v18[OBJC_IVAR____TtC9ChronoKit16ExtensionManager_extensionFactory]);
  sub_1BF38E49C(v42, &v18[OBJC_IVAR____TtC9ChronoKit16ExtensionManager_exExtensionIdentityDiscoverer]);
  sub_1BF38E49C(a4, &v18[OBJC_IVAR____TtC9ChronoKit16ExtensionManager_remoteWidgetExtensionProvider]);
  v41.receiver = v18;
  v41.super_class = v17;
  v39 = objc_msgSendSuper2(&v41, sel_init);
  __swift_destroy_boxed_opaque_existential_1Tm(a4);
  __swift_destroy_boxed_opaque_existential_1Tm(v42);
  __swift_destroy_boxed_opaque_existential_1Tm(v43);
  return v39;
}

void sub_1BF4397C0(uint64_t a1)
{
  v30 = *(a1 + 16);
  if (!v30)
  {
    return;
  }

  v2 = objc_opt_self();
  v3 = 0;
  v4 = a1 + 32;
  v5 = 0x1E6966000;
  v6 = &off_1E80BD000;
  v7 = &off_1E80BD000;
  v28 = a1 + 32;
  v29 = v2;
  while (1)
  {
    v31 = v3;
    v8 = (v4 + 16 * v3);
    v10 = *v8;
    v9 = v8[1];
    v11 = objc_allocWithZone(*(v5 + 3296));

    v12 = sub_1BF4E88E4();

    v13 = [v11 v6[87]];

    v32 = v13;
    v14 = [v2 v7[88]];
    sub_1BF3901C0(0, &qword_1EDC96340, 0x1E6966CB0);
    v15 = sub_1BF4E8BA4();

    if (v15 >> 62)
    {
      break;
    }

    v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v16)
    {
      goto LABEL_6;
    }

LABEL_3:
    v3 = v31 + 1;

    v2 = v29;
    v4 = v28;
    v5 = 0x1E6966000uLL;
    v6 = &off_1E80BD000;
    v7 = &off_1E80BD000;
    if (v31 + 1 == v30)
    {
      return;
    }
  }

  v16 = sub_1BF4E9204();
  if (!v16)
  {
    goto LABEL_3;
  }

LABEL_6:
  v17 = 0;
  while (1)
  {
    if ((v15 & 0xC000000000000001) != 0)
    {
      v18 = MEMORY[0x1BFB59570](v17, v15);
    }

    else
    {
      if (v17 >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_26;
      }

      v18 = *(v15 + 8 * v17 + 32);
    }

    v19 = v18;
    v20 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    v21 = [v18 bundleIdentifier];
    v22 = sub_1BF4E8914();
    v24 = v23;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8B48, &unk_1BF4EC990);
    if (v22 == sub_1BF4E76B4() && v24 == v25)
    {

      return;
    }

    v27 = sub_1BF4E9734();

    if (v27)
    {

      return;
    }

    ++v17;
    if (v20 == v16)
    {
      goto LABEL_3;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
}

uint64_t sub_1BF439A9C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD91A0, &unk_1BF4EC4E0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v18 - v8;
  v10 = *(a1 + 16);
  v11 = sub_1BF38C8B4(&qword_1EDC9D540, &unk_1EBDD91A0, &unk_1BF4EC4E0);
  result = MEMORY[0x1BFB58FA0](v10, v2, v11);
  v19 = result;
  if (v10)
  {
    v15 = *(v3 + 16);
    v14 = v3 + 16;
    v13 = v15;
    v16 = a1 + ((*(v14 + 64) + 32) & ~*(v14 + 64));
    v17 = *(v14 + 56);
    do
    {
      v13(v6, v16, v2);
      sub_1BF4ACCF8(v9, v6);
      (*(v14 - 8))(v9, v2);
      v16 += v17;
      --v10;
    }

    while (v10);
    return v19;
  }

  return result;
}

void *sub_1BF439C40(unint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 >> 62)
  {
    goto LABEL_21;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1BF4E9204())
  {
    v6 = 0;
    v7 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x1BFB59570](v6, a1);
      }

      else
      {
        if (v6 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_20;
        }

        v8 = *(a1 + 8 * v6 + 32);
      }

      v9 = v8;
      v10 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      v21 = v8;
      sub_1BF434EE8(&v21, a2, a3, &v19);
      if (v3)
      {

        return v7;
      }

      if (v20[24] == 255)
      {
        sub_1BF38C9B4(&v19, &qword_1EBDD92D8, &qword_1BF4F08C8);
      }

      else
      {
        v17 = v19;
        *v18 = *v20;
        *&v18[9] = *&v20[9];
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v7 = sub_1BF432528(0, v7[2] + 1, 1, v7);
        }

        v12 = v7[2];
        v11 = v7[3];
        if (v12 >= v11 >> 1)
        {
          v7 = sub_1BF432528((v11 > 1), v12 + 1, 1, v7);
        }

        v7[2] = v12 + 1;
        v13 = &v7[6 * v12];
        *(v13 + 57) = *&v18[9];
        v13[2] = v17;
        v13[3] = *v18;
      }

      ++v6;
      if (v10 == i)
      {
        return v7;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    ;
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t dispatch thunk of ExtensionManager.extensions(for:)()
{
  return (*((*MEMORY[0x1E69E7D40] & *v0) + 0x1A8))();
}

{
  return (*((*MEMORY[0x1E69E7D40] & *v0) + 0x1B0))();
}

uint64_t sub_1BF43A1BC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1BF43A204(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RemoteWidgetExtension();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BF43A2F0(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1BF43A354(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(*(a3 + 16) - 8) + 64);
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_23;
  }

  v4 = v3 + 1;
  v5 = 8 * (v3 + 1);
  if ((v3 + 1) <= 3)
  {
    v8 = ((a2 + ~(-1 << v5) - 254) >> v5) + 1;
    if (HIWORD(v8))
    {
      v6 = *(a1 + v4);
      if (!v6)
      {
        goto LABEL_23;
      }

      goto LABEL_12;
    }

    if (v8 > 0xFF)
    {
      v6 = *(a1 + v4);
      if (!*(a1 + v4))
      {
        goto LABEL_23;
      }

      goto LABEL_12;
    }

    if (v8 < 2)
    {
LABEL_23:
      v10 = *(a1 + v3);
      if (v10 >= 2)
      {
        return (v10 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v6 = *(a1 + v4);
  if (!*(a1 + v4))
  {
    goto LABEL_23;
  }

LABEL_12:
  v9 = (v6 - 1) << v5;
  if (v4 > 3)
  {
    v9 = 0;
  }

  if (v4)
  {
    if (v4 > 3)
    {
      LODWORD(v4) = 4;
    }

    if (v4 > 2)
    {
      if (v4 == 3)
      {
        LODWORD(v4) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v4) = *a1;
      }
    }

    else if (v4 == 1)
    {
      LODWORD(v4) = *a1;
    }

    else
    {
      LODWORD(v4) = *a1;
    }
  }

  return (v4 | v9) + 255;
}

void sub_1BF43A460(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  v6 = v5 + 1;
  if (a3 < 0xFF)
  {
    v7 = 0;
  }

  else if (v6 <= 3)
  {
    v10 = ((a3 + ~(-1 << (8 * v6)) - 254) >> (8 * v6)) + 1;
    if (HIWORD(v10))
    {
      v7 = 4;
    }

    else
    {
      if (v10 < 0x100)
      {
        v11 = 1;
      }

      else
      {
        v11 = 2;
      }

      if (v10 >= 2)
      {
        v7 = v11;
      }

      else
      {
        v7 = 0;
      }
    }
  }

  else
  {
    v7 = 1;
  }

  if (a2 > 0xFE)
  {
    v8 = a2 - 255;
    if (v6 >= 4)
    {
      bzero(a1, v5 + 1);
      *a1 = v8;
      v9 = 1;
      if (v7 > 1)
      {
        goto LABEL_37;
      }

      goto LABEL_34;
    }

    v9 = (v8 >> (8 * v6)) + 1;
    if (v5 != -1)
    {
      v12 = v8 & ~(-1 << (8 * v6));
      bzero(a1, v6);
      if (v6 != 3)
      {
        if (v6 == 2)
        {
          *a1 = v12;
          if (v7 > 1)
          {
LABEL_37:
            if (v7 == 2)
            {
              *&a1[v6] = v9;
            }

            else
            {
              *&a1[v6] = v9;
            }

            return;
          }
        }

        else
        {
          *a1 = v8;
          if (v7 > 1)
          {
            goto LABEL_37;
          }
        }

LABEL_34:
        if (v7)
        {
          a1[v6] = v9;
        }

        return;
      }

      *a1 = v12;
      a1[2] = BYTE2(v12);
    }

    if (v7 > 1)
    {
      goto LABEL_37;
    }

    goto LABEL_34;
  }

  if (v7 <= 1)
  {
    if (v7)
    {
      a1[v6] = 0;
      if (!a2)
      {
        return;
      }

LABEL_23:
      a1[v5] = -a2;
      return;
    }

LABEL_22:
    if (!a2)
    {
      return;
    }

    goto LABEL_23;
  }

  if (v7 == 2)
  {
    *&a1[v6] = 0;
    goto LABEL_22;
  }

  *&a1[v6] = 0;
  if (a2)
  {
    goto LABEL_23;
  }
}

uint64_t sub_1BF43A624(uint64_t a1, uint64_t *a2)
{
  if (*(a1 + 24))
  {
    sub_1BF38E610(a1, v8);
    v4 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *v2;
    sub_1BF3D6C04(v8, a2, isUniquelyReferenced_nonNull_native);
    result = sub_1BF38C9B4(a2, &qword_1EBDD87A8, &unk_1BF4EB2C0);
    *v2 = v7;
  }

  else
  {
    sub_1BF38C9B4(a1, &qword_1EBDD9330, qword_1BF4F09C0);
    sub_1BF47AEE4(a2, v8);
    sub_1BF38C9B4(a2, &qword_1EBDD87A8, &unk_1BF4EB2C0);
    return sub_1BF38C9B4(v8, &qword_1EBDD9330, qword_1BF4F09C0);
  }

  return result;
}

uint64_t sub_1BF43A700(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    v8 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *v3;
    sub_1BF3D6DBC(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v19;
  }

  else
  {
    v11 = *v3;
    v12 = sub_1BF3CD5D0(a2, a3);
    LOBYTE(v11) = v13;

    if (v11)
    {
      v14 = *v4;
      v15 = swift_isUniquelyReferenced_nonNull_native();
      v16 = *v4;
      v20 = *v4;
      if (!v15)
      {
        sub_1BF4A3058();
        v16 = v20;
      }

      v17 = *(*(v16 + 48) + 16 * v12 + 8);

      v18 = *(*(v16 + 56) + 8 * v12);

      result = sub_1BF47C170(v12, v16);
      *v4 = v16;
    }
  }

  return result;
}

uint64_t sub_1BF43A7F8(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24))
  {
    sub_1BF38E610(a1, v10);
    v4 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    sub_1BF3D7110(v10, a2, isUniquelyReferenced_nonNull_native);
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD91A0, &unk_1BF4EC4E0);
    result = (*(*(v6 - 8) + 8))(a2, v6);
    *v2 = v9;
  }

  else
  {
    sub_1BF38C9B4(a1, &unk_1EBDD91B0, &unk_1BF4F0720);
    sub_1BF47B158(a2, v10);
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD91A0, &unk_1BF4EC4E0);
    (*(*(v8 - 8) + 8))(a2, v8);
    return sub_1BF38C9B4(v10, &unk_1EBDD91B0, &unk_1BF4F0720);
  }

  return result;
}

uint64_t sub_1BF43A92C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9308, &unk_1BF4F0918);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v20 - v9;
  v11 = type metadata accessor for RemoteActivityArchiveBudget();
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v16 + 48))(a1, 1, v13) == 1)
  {
    sub_1BF38C9B4(a1, &qword_1EBDD9308, &unk_1BF4F0918);
    sub_1BF47B248(a2, a3, v10);

    return sub_1BF38C9B4(v10, &qword_1EBDD9308, &unk_1BF4F0918);
  }

  else
  {
    sub_1BF43C744(a1, v15, type metadata accessor for RemoteActivityArchiveBudget);
    v18 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21 = *v3;
    sub_1BF3D72F4(v15, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v21;
  }

  return result;
}

void sub_1BF43AB00(uint64_t a1, void *a2)
{
  if (*(a1 + 24))
  {
    sub_1BF38E610(a1, v7);
    v4 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *v2;
    sub_1BF3D7460(v7, a2, isUniquelyReferenced_nonNull_native);

    *v2 = v6;
  }

  else
  {
    sub_1BF38C9B4(a1, &qword_1EBDD9320, &qword_1BF4F09B0);
    sub_1BF47B3C8(a2, v7);

    sub_1BF38C9B4(v7, &qword_1EBDD9320, &qword_1BF4F09B0);
  }
}

void sub_1BF43ABB4(uint64_t a1, void *a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9318, &qword_1BF4F09A8);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v16 - v7;
  v9 = type metadata accessor for ExtensionMetadata();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v13 + 48))(a1, 1) == 1)
  {
    sub_1BF38C9B4(a1, &qword_1EBDD9318, &qword_1BF4F09A8);
    sub_1BF47B470(a2, v8);

    sub_1BF38C9B4(v8, &qword_1EBDD9318, &qword_1BF4F09A8);
  }

  else
  {
    sub_1BF43C744(a1, v12, type metadata accessor for ExtensionMetadata);
    v14 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v2;
    sub_1BF3D7C70(v12, a2, isUniquelyReferenced_nonNull_native);

    *v2 = v17;
  }
}

uint64_t RemoteActivityArchiveBudgetStore.__allocating_init(backingStore:)(uint64_t a1)
{
  v2 = swift_allocObject();
  RemoteActivityArchiveBudgetStore.init(backingStore:)(a1);
  return v2;
}

uint64_t RemoteActivityArchiveBudgetStore.init(backingStore:)(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9300, &qword_1BF4F0910);
  v3 = swift_allocObject();
  *(v3 + 24) = 0;
  v4 = (v3 + 24);
  *(v3 + 16) = MEMORY[0x1E69E7CC8];
  v5 = (v3 + 16);
  *(v1 + 16) = a1;
  *(v1 + 24) = v3;

  os_unfair_lock_lock(v4);
  sub_1BF43BDC4(v5);
  os_unfair_lock_unlock(v4);

  v6 = *(v1 + 24);

  os_unfair_lock_lock(v6 + 6);
  sub_1BF43C284(&v6[4]);
  os_unfair_lock_unlock(v6 + 6);

  return v1;
}

uint64_t sub_1BF43AE90()
{
  v1 = *(v0 + 24);

  os_unfair_lock_lock((v1 + 24));
  v2 = *(v1 + 16);

  os_unfair_lock_unlock((v1 + 24));

  return v2;
}

uint64_t sub_1BF43AEE0@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 24);

  os_unfair_lock_lock((v3 + 24));
  sub_1BF43C2A0((v3 + 16), a1);
  os_unfair_lock_unlock((v3 + 24));
}

uint64_t sub_1BF43AF4C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *a1;
  if (*(*a1 + 16) && (v6 = sub_1BF3CD5D0(a2, a3), (v7 & 1) != 0))
  {
    v8 = v6;
    v9 = *(v5 + 56);
    v10 = type metadata accessor for RemoteActivityArchiveBudget();
    v11 = *(v10 - 8);
    sub_1BF3DF4F4(v9 + *(v11 + 72) * v8, a4);
    return (*(v11 + 56))(a4, 0, 1, v10);
  }

  else
  {
    v13 = type metadata accessor for RemoteActivityArchiveBudget();
    return (*(*(v13 - 8) + 56))(a4, 1, 1, v13);
  }
}

uint64_t sub_1BF43B068()
{
  v1 = *(v0 + 24);

  os_unfair_lock_lock(v1 + 6);
  sub_1BF43C2BC(&v1[4]);
  os_unfair_lock_unlock(v1 + 6);
}

uint64_t sub_1BF43B0CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9308, &unk_1BF4F0918);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v43[-v10];
  v12 = type metadata accessor for RemoteActivityArchiveBudget();
  v50 = *(v12 - 8);
  v13 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v43[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = *(a2 + 16);
  if (v17)
  {
    v47 = v43;
    v48 = a1;
    MEMORY[0x1EEE9AC00](v14);
    v49 = v18;
    *&v43[-16] = v18;
    v19 = *(v17 + 16);
    type metadata accessor for ChronoMetadataStore.MutableStore();
    swift_allocObject();
    v20 = sub_1BF4A4E98();
    v21 = *(v17 + 136);
    v22 = *(v21 + 16);

    os_unfair_lock_lock(v22);
    v23 = *(v17 + 16);

    sub_1BF3E7904(0xD000000000000021, 0x80000001BF4FB350, v23, sub_1BF43C7AC, &v43[-32], v20);
    if (v4)
    {

      os_unfair_lock_unlock(*(v21 + 16));
      sub_1BF48EBD0();

      if (qword_1EDC9D4E0 != -1)
      {
        swift_once();
      }

      v24 = sub_1BF4E7B54();
      __swift_project_value_buffer(v24, qword_1EDCA6970);
      a3 = v49;
      sub_1BF3DF4F4(v49, v16);
      v25 = v4;
      v26 = sub_1BF4E7B34();
      v27 = sub_1BF4E8E64();

      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        v46 = swift_slowAlloc();
        v47 = swift_slowAlloc();
        v51 = v47;
        *v28 = 136446466;
        v29 = &v16[*(v12 + 24)];
        v44 = v27;
        v45 = v26;
        v31 = *v29;
        v30 = v29[1];

        sub_1BF3DF558(v16);
        v32 = sub_1BF38D65C(v31, v30, &v51);

        *(v28 + 4) = v32;
        *(v28 + 12) = 2114;
        v33 = v4;
        v34 = _swift_stdlib_bridgeErrorToNSError();
        *(v28 + 14) = v34;
        v35 = v45;
        v36 = v46;
        *v46 = v34;
        _os_log_impl(&dword_1BF389000, v35, v44, "Failed to update activity archive budget in store: %{public}s; %{public}@", v28, 0x16u);
        sub_1BF38C9B4(v36, &unk_1EBDD9260, &qword_1BF4EC380);
        MEMORY[0x1BFB5A5D0](v36, -1, -1);
        v37 = v47;
        __swift_destroy_boxed_opaque_existential_1Tm(v47);
        MEMORY[0x1BFB5A5D0](v37, -1, -1);
        v38 = v28;
        a3 = v49;
        MEMORY[0x1BFB5A5D0](v38, -1, -1);
      }

      else
      {

        sub_1BF3DF558(v16);
      }
    }

    else
    {

      os_unfair_lock_unlock(*(v21 + 16));
      sub_1BF48EBD0();

      a3 = v49;
    }
  }

  v39 = (a3 + *(v12 + 24));
  v40 = *v39;
  v41 = v39[1];
  sub_1BF3DF4F4(a3, v11);
  (*(v50 + 56))(v11, 0, 1, v12);

  return sub_1BF43A92C(v11, v40, v41);
}

uint64_t sub_1BF43B554(uint64_t a1)
{
  v2 = (a1 + *(type metadata accessor for RemoteActivityArchiveBudget() + 24));
  v3 = *(v1 + 24);
  v5 = *v2;
  v6 = v2[1];

  os_unfair_lock_lock(v3 + 6);
  sub_1BF43C2D8(&v3[4]);
  os_unfair_lock_unlock(v3 + 6);
}

uint64_t sub_1BF43B5D4()
{
  v1 = *(v0 + 24);

  os_unfair_lock_lock(v1 + 6);
  sub_1BF43C7D8(&v1[4]);
  os_unfair_lock_unlock(v1 + 6);
}

uint64_t sub_1BF43B63C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9308, &unk_1BF4F0918);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v11 = v20 - v10;
  v12 = *(v3 + 16);
  if (v12)
  {
    v20[1] = a3;
    MEMORY[0x1EEE9AC00](v9);
    v20[-2] = a1;
    v20[-1] = a2;
    v13 = *(v12 + 16);
    type metadata accessor for ChronoMetadataStore.MutableStore();
    swift_allocObject();
    v14 = sub_1BF4A4E98();
    v15 = *(v12 + 136);
    v16 = *(v15 + 16);

    os_unfair_lock_lock(v16);
    v17 = *(v12 + 16);

    sub_1BF3E7904(0xD000000000000021, 0x80000001BF4FB2D0, v17, sub_1BF43C310, &v20[-4], v14);

    os_unfair_lock_unlock(*(v15 + 16));
    sub_1BF48EBD0();
  }

  v18 = type metadata accessor for RemoteActivityArchiveBudget();
  (*(*(v18 - 8) + 56))(v11, 1, 1, v18);

  return sub_1BF43A92C(v11, a1, a2);
}

void sub_1BF43B9E4(unint64_t *a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  if (!v3)
  {
    if (qword_1EDC9D4E0 != -1)
    {
      swift_once();
    }

    v16 = sub_1BF4E7B54();
    __swift_project_value_buffer(v16, qword_1EDCA6970);
    v17 = sub_1BF4E7B34();
    v18 = sub_1BF4E8E64();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_1BF389000, v17, v18, "Failed to load existing activity archive budgets from store as store is missing", v19, 2u);
      MEMORY[0x1BFB5A5D0](v19, -1, -1);
    }

    goto LABEL_18;
  }

  v5 = *(v3 + 104);
  v6 = *(a2 + 16);

  v7 = sub_1BF4CB8F4();
  if (!v2)
  {
    v20 = v7;

    v21 = *a1;

    *a1 = v20;
    if (qword_1EDC9D4E0 != -1)
    {
      swift_once();
    }

    v22 = sub_1BF4E7B54();
    __swift_project_value_buffer(v22, qword_1EDCA6970);

    v17 = sub_1BF4E7B34();
    v23 = sub_1BF4E8E84();
    if (os_log_type_enabled(v17, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v30 = v25;
      *v24 = 136446210;
      type metadata accessor for RemoteActivityArchiveBudget();
      v26 = sub_1BF4E8774();
      v28 = v27;

      v29 = sub_1BF38D65C(v26, v28, &v30);

      *(v24 + 4) = v29;
      _os_log_impl(&dword_1BF389000, v17, v23, "Fetched activity archive budgets from backing store: %{public}s", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v25);
      MEMORY[0x1BFB5A5D0](v25, -1, -1);
      MEMORY[0x1BFB5A5D0](v24, -1, -1);
    }

    else
    {
    }

LABEL_18:

    return;
  }

  if (qword_1EDC9D4E0 != -1)
  {
    swift_once();
  }

  v8 = sub_1BF4E7B54();
  __swift_project_value_buffer(v8, qword_1EDCA6970);
  v9 = v2;
  v10 = sub_1BF4E7B34();
  v11 = sub_1BF4E8E64();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v12 = 138543362;
    v14 = v2;
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 4) = v15;
    *v13 = v15;
    _os_log_impl(&dword_1BF389000, v10, v11, "Failed to load existing activity archive budgets from store: %{public}@", v12, 0xCu);
    sub_1BF38C9B4(v13, &unk_1EBDD9260, &qword_1BF4EC380);
    MEMORY[0x1BFB5A5D0](v13, -1, -1);
    MEMORY[0x1BFB5A5D0](v12, -1, -1);
  }

  else
  {
  }
}

uint64_t sub_1BF43BDE0(uint64_t a1, uint64_t a2)
{
  v49 = a2;
  v3 = type metadata accessor for RemoteActivityArchiveBudget();
  v59 = *(v3 - 8);
  v4 = *(v59 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v61 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = sub_1BF4E7334();
  v6 = *(v58 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v58);
  v57 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v56 = &v46 - v10;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9328, &qword_1BF4F09B8);
  v11 = *(*(v55 - 8) + 64);
  MEMORY[0x1EEE9AC00](v55);
  v13 = (&v46 - v12);
  v48 = a1;
  v14 = *a1;
  v15 = *a1 + 64;
  v16 = 1 << *(*a1 + 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & *(*a1 + 64);
  v19 = (v16 + 63) >> 6;
  v53 = (v6 + 8);
  v60 = v14;
  result = swift_bridgeObjectRetain_n();
  v21 = 0;
  *&v22 = 136446210;
  v47 = v22;
  v51 = v19;
  v52 = v15;
  v50 = v3;
  v54 = v13;
  while (v18)
  {
LABEL_12:
    v24 = __clz(__rbit64(v18)) | (v21 << 6);
    v25 = (*(v60 + 48) + 16 * v24);
    v26 = *v25;
    v27 = v25[1];
    v28 = v13 + *(v55 + 48);
    sub_1BF3DF4F4(*(v60 + 56) + *(v59 + 72) * v24, v28);
    v62 = v27;
    v63 = v26;
    *v13 = v26;
    v13[1] = v27;

    v29 = v56;
    _s9ChronoKit24WidgetDiagnosticTriggersV19errorStateTriggered11timelineKey13succinctTitle0K11Description04fullM011timeOfIssue15remoteDeviceIDsyAA08TimelineJ0V_S3S10Foundation4DateVSaySSGSgtFfA3__0();
    v30 = *(v28 + *(v3 + 40));
    v31 = v28 + *(v3 + 28);
    v32 = v57;
    sub_1BF4E7284();
    LOBYTE(v27) = sub_1BF4E7264();
    v33 = *v53;
    v34 = v32;
    v35 = v58;
    (*v53)(v34, v58);
    v33(v29, v35);
    v36 = v61;
    v15 = v52;
    if (v27)
    {
      if (qword_1EDC9D4E0 != -1)
      {
        swift_once();
      }

      v37 = sub_1BF4E7B54();
      __swift_project_value_buffer(v37, qword_1EDCA6970);
      sub_1BF3DF4F4(v28, v36);
      v38 = sub_1BF4E7B34();
      v39 = sub_1BF4E8E64();
      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        v41 = swift_slowAlloc();
        v64 = v41;
        *v40 = v47;
        v42 = sub_1BF3DF058();
        v44 = v43;
        sub_1BF3DF558(v61);
        v45 = sub_1BF38D65C(v42, v44, &v64);

        *(v40 + 4) = v45;
        _os_log_impl(&dword_1BF389000, v38, v39, "Removing expired activity archive budget from store: %{public}s", v40, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v41);
        MEMORY[0x1BFB5A5D0](v41, -1, -1);
        MEMORY[0x1BFB5A5D0](v40, -1, -1);
      }

      else
      {

        sub_1BF3DF558(v36);
      }

      v3 = v50;
      sub_1BF43B63C(v63, v62, v48);
    }

    v18 &= v18 - 1;
    v13 = v54;
    result = sub_1BF38C9B4(v54, &qword_1EBDD9328, &qword_1BF4F09B8);
    v19 = v51;
  }

  while (1)
  {
    v23 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v23 >= v19)
    {
    }

    v18 = *(v15 + 8 * v23);
    ++v21;
    if (v18)
    {
      v21 = v23;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1BF43C2D8(uint64_t a1)
{
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[2];
  return sub_1BF43B63C(v3, v4, a1);
}

uint64_t sub_1BF43C310(uint64_t a1)
{
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
  v4 = *(a1 + 96);
  return sub_1BF4CC390(v3, v2);
}

uint64_t RemoteActivityArchiveBudgetStore.deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return v0;
}

uint64_t RemoteActivityArchiveBudgetStore.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t sub_1BF43C3A4()
{
  v1 = *(*v0 + 24);

  os_unfair_lock_lock((v1 + 24));
  v2 = *(v1 + 16);

  os_unfair_lock_unlock((v1 + 24));

  return v2;
}

uint64_t sub_1BF43C3F8@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 24);

  os_unfair_lock_lock((v3 + 24));
  sub_1BF43C808((v3 + 16), a1);
  os_unfair_lock_unlock((v3 + 24));
}

uint64_t sub_1BF43C468()
{
  v1 = *(*v0 + 24);

  os_unfair_lock_lock(v1 + 6);
  sub_1BF43C7F0(&v1[4]);
  os_unfair_lock_unlock(v1 + 6);
}

uint64_t sub_1BF43C4D0(uint64_t a1)
{
  v2 = *v1;
  v3 = (a1 + *(type metadata accessor for RemoteActivityArchiveBudget() + 24));
  v4 = *(v2 + 24);
  v6 = *v3;
  v7 = v3[1];

  os_unfair_lock_lock(v4 + 6);
  sub_1BF43C7D8(&v4[4]);
  os_unfair_lock_unlock(v4 + 6);
}

uint64_t sub_1BF43C554()
{
  v1 = *(*v0 + 24);

  os_unfair_lock_lock(v1 + 6);
  sub_1BF43C7D8(&v1[4]);
  os_unfair_lock_unlock(v1 + 6);
}

unint64_t sub_1BF43C5C4()
{
  result = qword_1EBDD9310;
  if (!qword_1EBDD9310)
  {
    type metadata accessor for RemoteActivityArchiveBudget();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDD9310);
  }

  return result;
}

uint64_t sub_1BF43C744(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BF43C7AC(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(a1 + 96);
  return sub_1BF4CBE80(v2);
}

uint64_t sub_1BF43C820(uint64_t a1)
{
  v1 = *(a1 + 80);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1BF43C8F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char *a6, char *a7, uint64_t a8, double a9, char *a10)
{
  v20 = *(v10 + 48);
  v21 = *(v10 + 52);
  v22 = swift_allocObject();
  sub_1BF43C9B0(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10);
  return v22;
}

char *sub_1BF43C9B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char *a6, char *a7, uint64_t a8, double a9, char *a10)
{
  v15 = *v10;
  v16 = *a6;
  v17 = *a7;
  v18 = *a10;
  *(v10 + 2) = a1;
  *(v10 + 3) = a2;
  (*(*(*(v15 + 80) - 8) + 32))(&v10[*(v15 + 104)], a3);
  v19 = &v10[*(*v10 + 112)];
  *v19 = a4;
  *(v19 + 1) = a5;
  v10[*(*v10 + 120)] = v16;
  v10[*(*v10 + 128)] = v17;
  *&v10[*(*v10 + 136)] = a8;
  *&v10[*(*v10 + 144)] = a9;
  v10[*(*v10 + 152)] = v18;
  return v10;
}

uint64_t sub_1BF43CB08()
{
  v1 = v0;
  v2 = *v0;
  sub_1BF4E92E4();
  MEMORY[0x1BFB58C90](0xD000000000000024, 0x80000001BF4FB3E0);
  MEMORY[0x1BFB58C90](v1[2], v1[3]);
  MEMORY[0x1BFB58C90](0x7469746E65646920, 0xEA00000000003D79);
  v3 = *(*v0 + 104);
  v4 = *(v2 + 80);
  sub_1BF4E96E4();
  MEMORY[0x1BFB58C90](0x3D74736F6320, 0xE600000000000000);
  v8 = *(v1 + *(*v1 + 120));
  sub_1BF4E9404();
  MEMORY[0x1BFB58C90](0x3D6E6F7361657220, 0xE800000000000000);
  v9 = *(v1 + *(*v1 + 128));
  sub_1BF4E9404();
  MEMORY[0x1BFB58C90](0xD000000000000011, 0x80000001BF4FB410);
  v10 = *(v1 + *(*v1 + 136));
  v5 = sub_1BF4E96A4();
  MEMORY[0x1BFB58C90](v5);

  MEMORY[0x1BFB58C90](0x6974756365786520, 0xEF3D656D69546E6FLL);
  v6 = *(v1 + *(*v1 + 144));
  sub_1BF4E8D14();
  MEMORY[0x1BFB58C90](62, 0xE100000000000000);
  return 0;
}

uint64_t sub_1BF43CD64@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *v2;
  v5 = *(*v2 + 80);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v24 - v8;
  v10 = *(v4 + 88);
  updated = type metadata accessor for PowerlogUpdateEntry();
  v13 = *(v2 + 2);
  v12 = *(v2 + 3);
  (*(v6 + 16))(v9, &v2[*(v4 + 104)], v5);
  v14 = *v2;
  v15 = &v2[*(*v2 + 112)];
  v16 = *v15;
  v17 = v15[1];
  v27 = v2[*(*v2 + 120)];
  v26 = v2[v14[16]];
  v18 = *&v2[v14[17]];
  v19 = *&v2[v14[18]];
  v25 = v2[v14[19]];
  v20 = *(updated + 48);
  v21 = *(updated + 52);
  v22 = swift_allocObject();
  sub_1BF43C9B0(v13, v12, v9, v16, v17, &v27, &v26, v18, v19, &v25);
  a2[3] = updated;
  *a2 = v22;
}

uint64_t sub_1BF43CF90(uint64_t a1)
{
  sub_1BF43CD64(a1, v3);
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  v1 = sub_1BF4E9714();
  __swift_destroy_boxed_opaque_existential_1Tm(v3);
  return v1;
}

uint64_t sub_1BF43CFE8()
{
  v1 = v0;
  v2 = *v0;
  v3 = v1[2];
  v4 = v1[3];
  sub_1BF4E89F4();
  v5 = *(v2 + 80);
  v6 = *(*(v2 + 88) + 8);
  v7 = v1 + *(*v1 + 104);
  sub_1BF4E8884();
  v8 = (v1 + *(*v1 + 112));
  if (v8[1])
  {
    v9 = *v8;
    sub_1BF4E9824();
    sub_1BF4E89F4();
  }

  else
  {
    sub_1BF4E9824();
  }

  *(v1 + *(*v1 + 120));
  *(v1 + *(*v1 + 120));
  sub_1BF4E89F4();

  v12 = *(v1 + *(*v1 + 128));
  PowerlogWakeReason.rawValue.getter();
  sub_1BF4E89F4();

  MEMORY[0x1BFB59A70](*(v1 + *(*v1 + 136)));
  v10 = *(v1 + *(*v1 + 144));
  if (v10 == 0.0)
  {
    v10 = 0.0;
  }

  return MEMORY[0x1BFB59A90](*&v10);
}

BOOL sub_1BF43D1B4(void *a1, void *a2)
{
  v5 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v5 && (sub_1BF4E9734() & 1) == 0)
  {
    return 0;
  }

  v6 = *(*a1 + 104);
  v7 = *(*a2 + 104);
  v8 = *(*(*(v2 + 88) + 8) + 8);
  v9 = *(v2 + 80);
  if ((sub_1BF4E88C4() & 1) == 0)
  {
    return 0;
  }

  v10 = *a1;
  v11 = (a1 + *(*a1 + 112));
  v12 = *v11;
  v13 = v11[1];
  v14 = (a2 + *(*a2 + 112));
  v15 = v14[1];
  if (v13)
  {
    if (!v15)
    {
      return 0;
    }

    if (v12 != *v14 || v13 != v15)
    {
      if ((sub_1BF4E9734() & 1) == 0)
      {
        return 0;
      }

      v10 = *a1;
    }
  }

  else if (v15)
  {
    return 0;
  }

  v17 = *(a2 + *(*a2 + 120));
  if (*(a1 + *(v10 + 120)))
  {
    v18 = 1701147238;
  }

  else
  {
    v18 = 0x6465746567647562;
  }

  if (*(a1 + *(v10 + 120)))
  {
    v19 = 0xE400000000000000;
  }

  else
  {
    v19 = 0xE800000000000000;
  }

  if (*(a2 + *(*a2 + 120)))
  {
    v20 = 1701147238;
  }

  else
  {
    v20 = 0x6465746567647562;
  }

  if (*(a2 + *(*a2 + 120)))
  {
    v21 = 0xE400000000000000;
  }

  else
  {
    v21 = 0xE800000000000000;
  }

  if (v18 == v20 && v19 == v21)
  {
  }

  else
  {
    v23 = sub_1BF4E9734();

    if ((v23 & 1) == 0)
    {
      return 0;
    }
  }

  v31 = *(a1 + *(*a1 + 128));
  v30 = *(a2 + *(*a2 + 128));
  v24 = PowerlogWakeReason.rawValue.getter();
  v26 = v25;
  if (v24 == PowerlogWakeReason.rawValue.getter() && v26 == v27)
  {
  }

  else
  {
    v28 = sub_1BF4E9734();

    if ((v28 & 1) == 0)
    {
      return 0;
    }
  }

  if (*(a1 + *(*a1 + 136)) == *(a2 + *(*a2 + 136)))
  {
    return *(a1 + *(*a1 + 144)) == *(a2 + *(*a2 + 144));
  }

  return 0;
}

char *sub_1BF43D4D0()
{
  v1 = *v0;
  v2 = *(v0 + 3);

  (*(*(*(v1 + 80) - 8) + 8))(&v0[*(*v0 + 104)]);
  v3 = *&v0[*(*v0 + 112) + 8];

  return v0;
}

uint64_t sub_1BF43D570()
{
  sub_1BF43D4D0();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1BF43D5E0()
{
  sub_1BF4E9804();
  sub_1BF43CFE8();
  return sub_1BF4E9844();
}

uint64_t sub_1BF43D668()
{
  sub_1BF4E9804();
  v1 = *v0;
  sub_1BF43CFE8();
  return sub_1BF4E9844();
}

void sub_1BF43D6F4(unint64_t a1)
{
  v3 = sub_1BF4E7FF4();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1BF4E8064();
  isa = v8[-1].isa;
  v10 = *(isa + 8);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1BF43E83C(a1);
  if (v13)
  {
    v14 = v13;
    v24[0] = v8;
    v15 = *(v1 + 24);
    v16 = swift_allocObject();
    v16[2] = v14;
    v16[3] = v1;
    v16[4] = a1;
    aBlock[4] = sub_1BF43EBF0;
    aBlock[5] = v16;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1BF38E868;
    aBlock[3] = &block_descriptor_24;
    v17 = _Block_copy(aBlock);
    v18 = v15;
    v19 = v14;

    sub_1BF4E8014();
    v24[1] = MEMORY[0x1E69E7CC0];
    sub_1BF43E42C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8EB8, &unk_1BF4F0890);
    sub_1BF43E484();
    sub_1BF4E91A4();
    MEMORY[0x1BFB591B0](0, v12, v7, v17);
    _Block_release(v17);

    (*(v4 + 8))(v7, v3);
    (*(isa + 1))(v12, v24[0]);
  }

  else
  {
    if (qword_1EDC9D4A8 != -1)
    {
      swift_once();
    }

    v20 = sub_1BF4E7B54();
    __swift_project_value_buffer(v20, qword_1EDCA6910);
    v24[0] = sub_1BF4E7B34();
    v21 = sub_1BF4E8E84();
    if (os_log_type_enabled(v24[0], v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_1BF389000, v24[0], v21, "No powerlog update entries to flush.", v22, 2u);
      MEMORY[0x1BFB5A5D0](v22, -1, -1);
    }

    v23 = v24[0];
  }
}

void sub_1BF43DA80(void *a1, uint64_t a2, unint64_t a3)
{
  if (qword_1EDC9D4A8 != -1)
  {
    swift_once();
  }

  v6 = sub_1BF4E7B54();
  __swift_project_value_buffer(v6, qword_1EDCA6910);
  v7 = a1;
  v8 = sub_1BF4E7B34();
  v9 = sub_1BF4E8E54();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138543362;
    *(v10 + 4) = v7;
    *v11 = v7;
    v12 = v7;
    _os_log_impl(&dword_1BF389000, v8, v9, "Flushing updates to powerlog: %{public}@", v10, 0xCu);
    sub_1BF43E4E8(v11);
    MEMORY[0x1BFB5A5D0](v11, -1, -1);
    MEMORY[0x1BFB5A5D0](v10, -1, -1);
  }

  v13 = *(a2 + 16);
  v14 = sub_1BF4E88E4();
  PLLogRegisteredEvent();

  oslog = sub_1BF4E7B34();
  v15 = sub_1BF4E8E84();
  if (os_log_type_enabled(oslog, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 134349056;
    if (a3 >> 62)
    {
      v17 = sub_1BF4E9204();
    }

    else
    {
      v17 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v16 + 4) = v17;

    _os_log_impl(&dword_1BF389000, oslog, v15, "Flushed %{public}ld powerlog update entries.", v16, 0xCu);
    MEMORY[0x1BFB5A5D0](v16, -1, -1);
  }

  else
  {
  }
}

void sub_1BF43DD00(void *a1, uint64_t a2, unint64_t a3)
{
  if (qword_1EDC9D4A8 != -1)
  {
    swift_once();
  }

  v6 = sub_1BF4E7B54();
  __swift_project_value_buffer(v6, qword_1EDCA6910);
  v7 = a1;
  v8 = sub_1BF4E7B34();
  v9 = sub_1BF4E8E54();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138543362;
    *(v10 + 4) = v7;
    *v11 = v7;
    v12 = v7;
    _os_log_impl(&dword_1BF389000, v8, v9, "Flushing views to powerlog: %{public}@", v10, 0xCu);
    sub_1BF43E4E8(v11);
    MEMORY[0x1BFB5A5D0](v11, -1, -1);
    MEMORY[0x1BFB5A5D0](v10, -1, -1);
  }

  v13 = *(a2 + 16);
  v14 = sub_1BF4E88E4();
  PLLogRegisteredEvent();

  oslog = sub_1BF4E7B34();
  v15 = sub_1BF4E8E84();
  if (os_log_type_enabled(oslog, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 134349056;
    if (a3 >> 62)
    {
      v17 = sub_1BF4E9204();
    }

    else
    {
      v17 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v16 + 4) = v17;

    _os_log_impl(&dword_1BF389000, oslog, v15, "Flushed %{public}ld powerlog view entries.", v16, 0xCu);
    MEMORY[0x1BFB5A5D0](v16, -1, -1);
  }

  else
  {
  }
}

uint64_t sub_1BF43DF80()
{

  return swift_deallocClassInstance();
}

unint64_t sub_1BF43DFE0()
{
  result = qword_1EBDD9338;
  if (!qword_1EBDD9338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDD9338);
  }

  return result;
}

unint64_t sub_1BF43E038()
{
  result = qword_1EBDD9340;
  if (!qword_1EBDD9340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDD9340);
  }

  return result;
}

uint64_t sub_1BF43E0B0(uint64_t a1)
{
  v2 = [*(a1 + 16) extensionIdentity];
  v3 = *MEMORY[0x1E69941B8];
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8B48, &unk_1BF4EC990);
  v4 = sub_1BF4E76B4();
  v5 = MEMORY[0x1E69E6158];
  v34 = MEMORY[0x1E69E6158];
  *&v33 = v4;
  *(&v33 + 1) = v6;
  swift_endAccess();

  sub_1BF38EB2C(&v33, v32);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1BF3D67F0(v32, 0x4449656C646E7562, 0xE800000000000000, isUniquelyReferenced_nonNull_native);
  v8 = [*(a1 + 16) kind];
  v9 = sub_1BF4E8914();
  v11 = v10;

  v34 = MEMORY[0x1E69E67B0];
  v12 = swift_allocObject();
  *&v33 = v12;
  v13 = sub_1BF39DC9C(6uLL, v9, v11);
  v15 = v14;
  v17 = v16;
  v19 = v18;

  v12[2] = v13;
  v12[3] = v15;
  v12[4] = v17;
  v12[5] = v19;
  sub_1BF38EB2C(&v33, v32);
  v20 = swift_isUniquelyReferenced_nonNull_native();
  sub_1BF3D67F0(v32, 1684957547, 0xE400000000000000, v20);
  if (*(a1 + 48) == 1)
  {
    v21 = qword_1BF4F0C10[*(a1 + 40)];
  }

  else
  {
    v21 = 3;
  }

  v34 = MEMORY[0x1E69E6530];
  *&v33 = v21;
  sub_1BF38EB2C(&v33, v32);
  v22 = swift_isUniquelyReferenced_nonNull_native();
  sub_1BF3D67F0(v32, 0x6E6F697461636F6CLL, 0xE800000000000000, v22);
  v23 = *(a1 + 24);
  v24 = *(a1 + 32);
  v34 = v5;
  *&v33 = v23;
  *(&v33 + 1) = v24;
  sub_1BF38EB2C(&v33, v32);

  v25 = swift_isUniquelyReferenced_nonNull_native();
  sub_1BF3D67F0(v32, 0x696669746E656469, 0xEA00000000007265, v25);
  v26 = *(a1 + 88);
  v34 = MEMORY[0x1E69E63B0];
  *&v33 = v26;
  sub_1BF38EB2C(&v33, v32);
  v27 = swift_isUniquelyReferenced_nonNull_native();
  sub_1BF3D67F0(v32, 0xD000000000000016, 0x80000001BF4FB490, v27);
  v28 = *(a1 + 49);
  v34 = MEMORY[0x1E69E6370];
  LOBYTE(v33) = v28;
  sub_1BF38EB2C(&v33, v32);
  v29 = swift_isUniquelyReferenced_nonNull_native();
  sub_1BF3D67F0(v32, 0x7361426574617473, 0xEA00000000006465, v29);
  v30 = sub_1BF4E8744();

  return v30;
}

unint64_t sub_1BF43E42C()
{
  result = qword_1EDC9F980;
  if (!qword_1EDC9F980)
  {
    sub_1BF4E7FF4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC9F980);
  }

  return result;
}

unint64_t sub_1BF43E484()
{
  result = qword_1EDC9F190;
  if (!qword_1EDC9F190)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBDD8EB8, &unk_1BF4F0890);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC9F190);
  }

  return result;
}

uint64_t sub_1BF43E4E8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD9260, &qword_1BF4EC380);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1BF43E550()
{
  result = qword_1EDC9D730;
  if (!qword_1EDC9D730)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDC9D730);
  }

  return result;
}

uint64_t sub_1BF43E59C(uint64_t a1)
{
  v2 = [*(a1 + 32) extensionIdentity];
  v3 = *MEMORY[0x1E69941B8];
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8B48, &unk_1BF4EC990);
  v4 = sub_1BF4E76B4();
  v5 = MEMORY[0x1E69E6158];
  v22 = MEMORY[0x1E69E6158];
  *&v21 = v4;
  *(&v21 + 1) = v6;
  swift_endAccess();

  sub_1BF38EB2C(&v21, v20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1BF3D67F0(v20, 0x4449656C646E7562, 0xE800000000000000, isUniquelyReferenced_nonNull_native);
  v8 = *(a1 + 40);
  v9 = *(a1 + 48);
  v22 = v5;
  *&v21 = v8;
  *(&v21 + 1) = v9;
  sub_1BF38EB2C(&v21, v20);

  v10 = swift_isUniquelyReferenced_nonNull_native();
  sub_1BF3D67F0(v20, 0x696669746E656469, 0xEA00000000007265, v10);
  v11 = qword_1BF4F0BA0[*(a1 + 89)];
  v12 = MEMORY[0x1E69E6530];
  v22 = MEMORY[0x1E69E6530];
  *&v21 = v11;
  sub_1BF38EB2C(&v21, v20);
  v13 = swift_isUniquelyReferenced_nonNull_native();
  sub_1BF3D67F0(v20, 0x6E6F73616572, 0xE600000000000000, v13);
  if (*(a1 + 64) == 1)
  {
    v14 = qword_1BF4F0C10[*(a1 + 56)];
  }

  else
  {
    v14 = 3;
  }

  v22 = v12;
  *&v21 = v14;
  sub_1BF38EB2C(&v21, v20);
  v15 = swift_isUniquelyReferenced_nonNull_native();
  sub_1BF3D67F0(v20, 0x6E6F697461636F6CLL, 0xE800000000000000, v15);
  v16 = *(a1 + 104);
  v22 = MEMORY[0x1E69E63B0];
  *&v21 = v16;
  sub_1BF38EB2C(&v21, v20);
  v17 = swift_isUniquelyReferenced_nonNull_native();
  sub_1BF3D67F0(v20, 0x6F69747563657865, 0xED0000656D69546ELL, v17);
  v18 = sub_1BF4E8744();

  return v18;
}

id sub_1BF43E83C(unint64_t a1)
{
  result = [objc_allocWithZone(MEMORY[0x1E695DF70]) init];
  v4 = result;
  if (a1 >> 62)
  {
    result = sub_1BF4E9204();
    v5 = result;
    if (!result)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v5)
    {
      goto LABEL_14;
    }
  }

  if (v5 < 1)
  {
    __break(1u);
    return result;
  }

  v6 = 0;
  v7 = a1 & 0xC000000000000001;
  v8 = &off_1E80BD000;
  *&v3 = 136446210;
  v29 = v3;
  v30 = v4;
  v31 = v5;
  do
  {
    if (v7)
    {
      v9 = MEMORY[0x1BFB59570](v6, a1);
    }

    else
    {
      v9 = *(a1 + 8 * v6 + 32);
    }

    v10 = sub_1BF43E59C(v9);
    [v4 v8[99]];

    if (qword_1EDC9D4A8 != -1)
    {
      swift_once();
    }

    v11 = sub_1BF4E7B54();
    __swift_project_value_buffer(v11, qword_1EDCA6910);

    v12 = sub_1BF4E7B34();
    v13 = sub_1BF4E8E54();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v32 = v15;
      *v14 = v29;
      v16 = sub_1BF479270();
      v18 = v7;
      v19 = a1;
      v20 = sub_1BF38D65C(v16, v17, &v32);

      *(v14 + 4) = v20;
      a1 = v19;
      v7 = v18;
      _os_log_impl(&dword_1BF389000, v12, v13, "Flushing powerlog update entry: %{public}s", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v15);
      v21 = v15;
      v4 = v30;
      v5 = v31;
      MEMORY[0x1BFB5A5D0](v21, -1, -1);
      v22 = v14;
      v8 = &off_1E80BD000;
      MEMORY[0x1BFB5A5D0](v22, -1, -1);
    }

    ++v6;
  }

  while (v5 != v6);
LABEL_14:
  if ([v4 count])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9348, &qword_1BF4F0B98);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_1BF4ECFE0;
    v24 = MEMORY[0x1E69E6158];
    *(v23 + 56) = MEMORY[0x1E69E6158];
    *(v23 + 32) = 0x7374617473;
    *(v23 + 40) = 0xE500000000000000;
    [v4 copy];
    sub_1BF4E9164();
    swift_unknownObjectRelease();
    *(v23 + 120) = v24;
    *(v23 + 96) = 0x6D617473656D6974;
    *(v23 + 104) = 0xE900000000000070;
    v25 = [objc_allocWithZone(MEMORY[0x1E695DF00]) init];
    [v25 timeIntervalSince1970];
    v27 = v26;

    *(v23 + 152) = MEMORY[0x1E69E63B0];
    *(v23 + 128) = v27;
    sub_1BF43E550();
    v28 = sub_1BF4E8E14();
  }

  else
  {

    return 0;
  }

  return v28;
}

uint64_t objectdestroyTm_0()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1BF43EC04(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xD000000000000010;
  v3 = "skips-local-sysdiagnose-only";
  v4 = a1;
  if (a1 > 3u)
  {
    v11 = "supportedDisplayProperties";
    v12 = 0xD000000000000014;
    if (a1 != 6)
    {
      v12 = 0xD000000000000017;
      v11 = "supportedProximities";
    }

    v13 = "wantsLowLuminanceContent";
    v14 = 0xD00000000000001ALL;
    if (a1 == 4)
    {
      v14 = 0xD000000000000010;
    }

    else
    {
      v13 = "showsWidgetLabel";
    }

    if (a1 <= 5u)
    {
      v9 = v14;
    }

    else
    {
      v9 = v12;
    }

    if (v4 <= 5)
    {
      v10 = v13;
    }

    else
    {
      v10 = v11;
    }
  }

  else
  {
    v5 = 0xD00000000000001CLL;
    v6 = "supportedColorSchemes";
    v7 = 0xD000000000000016;
    if (a1 != 2)
    {
      v7 = 0xD000000000000018;
      v6 = "supportedRenderSchemes";
    }

    v8 = "canAppearInSecureEnvironment";
    if (a1)
    {
      v5 = 0xD000000000000015;
    }

    else
    {
      v8 = "skips-local-sysdiagnose-only";
    }

    if (a1 <= 1u)
    {
      v9 = v5;
    }

    else
    {
      v9 = v7;
    }

    if (v4 <= 1)
    {
      v10 = v8;
    }

    else
    {
      v10 = v6;
    }
  }

  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v3 = "supportedDisplayProperties";
        v2 = 0xD000000000000014;
      }

      else
      {
        v3 = "supportedProximities";
        v2 = 0xD000000000000017;
      }
    }

    else if (a2 == 4)
    {
      v3 = "wantsLowLuminanceContent";
    }

    else
    {
      v3 = "showsWidgetLabel";
      v2 = 0xD00000000000001ALL;
    }
  }

  else if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v3 = "supportedColorSchemes";
      v2 = 0xD000000000000016;
    }

    else
    {
      v3 = "supportedRenderSchemes";
      v2 = 0xD000000000000018;
    }
  }

  else if (a2)
  {
    v3 = "canAppearInSecureEnvironment";
    v2 = 0xD000000000000015;
  }

  else
  {
    v2 = 0xD00000000000001CLL;
  }

  if (v9 == v2 && (v10 | 0x8000000000000000) == (v3 | 0x8000000000000000))
  {
    v15 = 1;
  }

  else
  {
    v15 = sub_1BF4E9734();
  }

  return v15 & 1;
}

uint64_t sub_1BF43EE10(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE600000000000000;
  v4 = 0xE600000000000000;
  v5 = 0x656C62616E55;
  v6 = 0x74276E6469442049;
  v7 = 0xEC00000079725420;
  if (a1 != 4)
  {
    v6 = 0x6C70704120746F4ELL;
    v7 = 0xEE00656C62616369;
  }

  if (a1 != 3)
  {
    v5 = v6;
    v4 = v7;
  }

  v8 = 0x656D6974656D6F53;
  v9 = 0xE900000000000073;
  if (a1 != 1)
  {
    v8 = 0x796C65726152;
    v9 = 0xE600000000000000;
  }

  if (a1)
  {
    v3 = v9;
  }

  else
  {
    v8 = 0x737961776C41;
  }

  if (a1 <= 2u)
  {
    v10 = v8;
  }

  else
  {
    v10 = v5;
  }

  if (v2 <= 2)
  {
    v11 = v3;
  }

  else
  {
    v11 = v4;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v12 = 0xE600000000000000;
      if (v10 != 0x656C62616E55)
      {
        goto LABEL_34;
      }
    }

    else if (a2 == 4)
    {
      v12 = 0xEC00000079725420;
      if (v10 != 0x74276E6469442049)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xEE00656C62616369;
      if (v10 != 0x6C70704120746F4ELL)
      {
LABEL_34:
        v13 = sub_1BF4E9734();
        goto LABEL_35;
      }
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v12 = 0xE900000000000073;
      if (v10 != 0x656D6974656D6F53)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xE600000000000000;
      if (v10 != 0x796C65726152)
      {
        goto LABEL_34;
      }
    }
  }

  else
  {
    v12 = 0xE600000000000000;
    if (v10 != 0x737961776C41)
    {
      goto LABEL_34;
    }
  }

  if (v11 != v12)
  {
    goto LABEL_34;
  }

  v13 = 1;
LABEL_35:

  return v13 & 1;
}

uint64_t sub_1BF43F014(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 2u)
  {
    v8 = 0xE100000000000000;
    v9 = 48;
    if (a1 != 1)
    {
      v9 = 12589;
      v8 = 0xE200000000000000;
    }

    if (a1)
    {
      v6 = v9;
    }

    else
    {
      v6 = 7105633;
    }

    if (v2)
    {
      v7 = v8;
    }

    else
    {
      v7 = 0xE300000000000000;
    }
  }

  else
  {
    v3 = 0x80000001BF4F83B0;
    v4 = 0xD00000000000001CLL;
    if (a1 == 5)
    {
      v4 = 0xD000000000000010;
    }

    else
    {
      v3 = 0x80000001BF4F83D0;
    }

    v5 = 0x80000001BF4F8370;
    if (a1 != 3)
    {
      v5 = 0x80000001BF4F8390;
    }

    if (a1 <= 4u)
    {
      v6 = 0xD000000000000010;
    }

    else
    {
      v6 = v4;
    }

    if (v2 <= 4)
    {
      v7 = v5;
    }

    else
    {
      v7 = v3;
    }
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v10 = 0xE100000000000000;
        if (v6 != 48)
        {
          goto LABEL_45;
        }
      }

      else
      {
        v10 = 0xE200000000000000;
        if (v6 != 12589)
        {
LABEL_45:
          v12 = sub_1BF4E9734();
          goto LABEL_46;
        }
      }
    }

    else
    {
      v10 = 0xE300000000000000;
      if (v6 != 7105633)
      {
        goto LABEL_45;
      }
    }
  }

  else if (a2 > 4u)
  {
    if (a2 == 5)
    {
      v11 = 0xD000000000000010;
    }

    else
    {
      v11 = 0xD00000000000001CLL;
    }

    if (a2 == 5)
    {
      v10 = 0x80000001BF4F83B0;
    }

    else
    {
      v10 = 0x80000001BF4F83D0;
    }

    if (v6 != v11)
    {
      goto LABEL_45;
    }
  }

  else
  {
    if (a2 == 3)
    {
      v10 = 0x80000001BF4F8370;
    }

    else
    {
      v10 = 0x80000001BF4F8390;
    }

    if (v6 != 0xD000000000000010)
    {
      goto LABEL_45;
    }
  }

  if (v7 != v10)
  {
    goto LABEL_45;
  }

  v12 = 1;
LABEL_46:

  return v12 & 1;
}

uint64_t sub_1BF43F1EC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 > 4u)
  {
    v11 = 0x2065727574616546;
    v12 = 0xED00002977654E28;
    v13 = 0x6D65636E61686E45;
    v14 = 0xEB00000000746E65;
    if (a1 != 8)
    {
      v13 = 1802723668;
      v14 = 0xE400000000000000;
    }

    if (a1 != 7)
    {
      v11 = v13;
      v12 = v14;
    }

    v15 = 0x2073756F69726553;
    v16 = 0xEB00000000677542;
    if (a1 != 5)
    {
      v15 = 0x754220726568744FLL;
      v16 = 0xE900000000000067;
    }

    if (a1 <= 6u)
    {
      v9 = v15;
    }

    else
    {
      v9 = v11;
    }

    if (v2 <= 6)
    {
      v10 = v16;
    }

    else
    {
      v10 = v12;
    }
  }

  else
  {
    v3 = 0xE800000000000000;
    v4 = 0xE500000000000000;
    v5 = 0x7265776F50;
    v6 = 0x616D726F66726550;
    v7 = 0xEB0000000065636ELL;
    if (a1 != 3)
    {
      v6 = 0x69626173552F4955;
      v7 = 0xEC0000007974696CLL;
    }

    if (a1 != 2)
    {
      v5 = v6;
      v4 = v7;
    }

    v8 = 0xD000000000000014;
    if (a1)
    {
      v3 = 0x80000001BF4F8290;
    }

    else
    {
      v8 = 0x7974697275636553;
    }

    if (a1 <= 1u)
    {
      v9 = v8;
    }

    else
    {
      v9 = v5;
    }

    if (v2 <= 1)
    {
      v10 = v3;
    }

    else
    {
      v10 = v4;
    }
  }

  if (a2 > 4u)
  {
    if (a2 <= 6u)
    {
      if (a2 != 5)
      {
        v19 = 0xE900000000000067;
        if (v9 != 0x754220726568744FLL)
        {
LABEL_56:
          v20 = sub_1BF4E9734();
          goto LABEL_57;
        }

        goto LABEL_54;
      }

      v17 = 0x2073756F69726553;
      v18 = 6780226;
    }

    else
    {
      if (a2 == 7)
      {
        v19 = 0xED00002977654E28;
        if (v9 != 0x2065727574616546)
        {
          goto LABEL_56;
        }

        goto LABEL_54;
      }

      if (a2 != 8)
      {
        v19 = 0xE400000000000000;
        if (v9 != 1802723668)
        {
          goto LABEL_56;
        }

        goto LABEL_54;
      }

      v17 = 0x6D65636E61686E45;
      v18 = 7630437;
    }

LABEL_41:
    v19 = v18 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
    if (v9 != v17)
    {
      goto LABEL_56;
    }

    goto LABEL_54;
  }

  if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v19 = 0xE500000000000000;
      if (v9 != 0x7265776F50)
      {
        goto LABEL_56;
      }

      goto LABEL_54;
    }

    if (a2 != 3)
    {
      v19 = 0xEC0000007974696CLL;
      if (v9 != 0x69626173552F4955)
      {
        goto LABEL_56;
      }

      goto LABEL_54;
    }

    v17 = 0x616D726F66726550;
    v18 = 6644590;
    goto LABEL_41;
  }

  if (a2)
  {
    v19 = 0x80000001BF4F8290;
    if (v9 != 0xD000000000000014)
    {
      goto LABEL_56;
    }
  }

  else
  {
    v19 = 0xE800000000000000;
    if (v9 != 0x7974697275636553)
    {
      goto LABEL_56;
    }
  }

LABEL_54:
  if (v10 != v19)
  {
    goto LABEL_56;
  }

  v20 = 1;
LABEL_57:

  return v20 & 1;
}

uint64_t sub_1BF43F52C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE600000000000000;
  v4 = 0xE700000000000000;
  v5 = 0x5654656C707041;
  v6 = 0xE700000000000000;
  v7 = 0x646F50656D6F48;
  if (a1 != 4)
  {
    v7 = 6512973;
    v6 = 0xE300000000000000;
  }

  if (a1 != 3)
  {
    v5 = v7;
    v4 = v6;
  }

  v8 = 0xE400000000000000;
  v9 = 1684099177;
  if (a1 != 1)
  {
    v9 = 0x6863746157;
    v8 = 0xE500000000000000;
  }

  if (a1)
  {
    v3 = v8;
  }

  else
  {
    v9 = 0x656E6F685069;
  }

  if (a1 <= 2u)
  {
    v10 = v9;
  }

  else
  {
    v10 = v5;
  }

  if (v2 <= 2)
  {
    v11 = v3;
  }

  else
  {
    v11 = v4;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v12 = 0xE700000000000000;
      if (v10 != 0x5654656C707041)
      {
        goto LABEL_34;
      }
    }

    else if (a2 == 4)
    {
      v12 = 0xE700000000000000;
      if (v10 != 0x646F50656D6F48)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xE300000000000000;
      if (v10 != 6512973)
      {
LABEL_34:
        v13 = sub_1BF4E9734();
        goto LABEL_35;
      }
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v12 = 0xE400000000000000;
      if (v10 != 1684099177)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xE500000000000000;
      if (v10 != 0x6863746157)
      {
        goto LABEL_34;
      }
    }
  }

  else
  {
    v12 = 0xE600000000000000;
    if (v10 != 0x656E6F685069)
    {
      goto LABEL_34;
    }
  }

  if (v11 != v12)
  {
    goto LABEL_34;
  }

  v13 = 1;
LABEL_35:

  return v13 & 1;
}

uint64_t sub_1BF43F6E8()
{
  sub_1BF4E9804();
  sub_1BF4E89F4();

  return sub_1BF4E9844();
}

uint64_t sub_1BF43F7FC()
{
  sub_1BF4E9804();
  sub_1BF4E89F4();

  return sub_1BF4E9844();
}

uint64_t TapToRadarDraft.bundleID.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t TapToRadarDraft.bundleID.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t TapToRadarDraft.$bundleID.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  v4 = v1[2];
  v3 = v1[3];
  *a1 = *v1;
  a1[1] = v2;
  a1[2] = v4;
  a1[3] = v3;
}

uint64_t TapToRadarDraft.$classification.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 80);
  v3 = *(v1 + 88);
  *a1 = *(v1 + 72);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
}

uint64_t TapToRadarDraft.$reproducibility.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 104);
  v3 = *(v1 + 112);
  *a1 = *(v1 + 96);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
}

uint64_t TapToRadarDraft.title.getter()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 144);

  return v1;
}

uint64_t TapToRadarDraft.title.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 144);

  *(v2 + 136) = a1;
  *(v2 + 144) = a2;
  return result;
}

uint64_t TapToRadarDraft.$title.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[16];
  v4 = v1[17];
  v3 = v1[18];
  *a1 = v1[15];
  a1[1] = v2;
  a1[2] = v4;
  a1[3] = v3;
}

uint64_t TapToRadarDraft.problemDescription.getter()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 176);

  return v1;
}

uint64_t TapToRadarDraft.problemDescription.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 176);

  *(v2 + 168) = a1;
  *(v2 + 176) = a2;
  return result;
}

uint64_t TapToRadarDraft.$problemDescription.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[20];
  v4 = v1[21];
  v3 = v1[22];
  *a1 = v1[19];
  a1[1] = v2;
  a1[2] = v4;
  a1[3] = v3;
}

uint64_t TapToRadarDraft.keywords.setter(uint64_t a1)
{
  v3 = *(v1 + 200);

  *(v1 + 200) = a1;
  return result;
}

uint64_t TapToRadarDraft.$keywords.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[24];
  v3 = v1[25];
  *a1 = v1[23];
  a1[1] = v2;
  a1[2] = v3;
}

uint64_t TapToRadarDraft.timeOfIssue.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for TapToRadarDraft() + 44);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9350, &qword_1BF4F0C80);
  return sub_1BF38C94C(v3 + *(v4 + 36), a1, &qword_1EBDD9B00, &qword_1BF4F1E50);
}

uint64_t type metadata accessor for TapToRadarDraft()
{
  result = qword_1EBDD93B8;
  if (!qword_1EBDD93B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BF43FD64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1 + *(type metadata accessor for TapToRadarDraft() + 44);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9350, &qword_1BF4F0C80);
  return sub_1BF38C94C(v3 + *(v4 + 36), a2, &qword_1EBDD9B00, &qword_1BF4F1E50);
}

uint64_t sub_1BF43FDCC(uint64_t a1, uint64_t a2)
{
  v3 = a2 + *(type metadata accessor for TapToRadarDraft() + 44);
  v4 = v3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9350, &qword_1BF4F0C80) + 36);

  return sub_1BF448728(a1, v4);
}

uint64_t TapToRadarDraft.timeOfIssue.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for TapToRadarDraft() + 44);
  v4 = v3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9350, &qword_1BF4F0C80) + 36);

  return sub_1BF3AC398(a1, v4);
}

uint64_t (*TapToRadarDraft.timeOfIssue.modify())(void, void, void, void)
{
  v1 = v0 + *(type metadata accessor for TapToRadarDraft() + 44);
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9350, &qword_1BF4F0C80) + 36);
  return nullsub_1;
}

uint64_t TapToRadarDraft.attachments.getter()
{
  v1 = *(v0 + *(type metadata accessor for TapToRadarDraft() + 48) + 16);
}

uint64_t sub_1BF43FF74(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a2 + *(type metadata accessor for TapToRadarDraft() + 48);
  v4 = *(v3 + 16);

  *(v3 + 16) = v2;
  return result;
}

uint64_t TapToRadarDraft.attachments.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for TapToRadarDraft() + 48);
  v4 = *(v3 + 16);

  *(v3 + 16) = a1;
  return result;
}

uint64_t TapToRadarDraft.$attachments.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for TapToRadarDraft() + 48));
  v4 = v3[1];
  v5 = v3[2];
  *a1 = *v3;
  a1[1] = v4;
  a1[2] = v5;
}

uint64_t TapToRadarDraft.remoteAttachments.getter()
{
  v1 = *(v0 + *(type metadata accessor for TapToRadarDraft() + 52) + 16);
}

uint64_t sub_1BF4400E0(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a2 + *(type metadata accessor for TapToRadarDraft() + 52);
  v4 = *(v3 + 16);

  *(v3 + 16) = v2;
  return result;
}

uint64_t TapToRadarDraft.remoteAttachments.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for TapToRadarDraft() + 52);
  v4 = *(v3 + 16);

  *(v3 + 16) = a1;
  return result;
}

uint64_t TapToRadarDraft.$remoteAttachments.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for TapToRadarDraft() + 52));
  v4 = v3[1];
  v5 = v3[2];
  *a1 = *v3;
  a1[1] = v4;
  a1[2] = v5;
}

uint64_t TapToRadarDraft.extensionIdentifiers.getter()
{
  v1 = *(v0 + *(type metadata accessor for TapToRadarDraft() + 56) + 16);
}

uint64_t sub_1BF44024C(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a2 + *(type metadata accessor for TapToRadarDraft() + 56);
  v4 = *(v3 + 16);

  *(v3 + 16) = v2;
  return result;
}

uint64_t TapToRadarDraft.extensionIdentifiers.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for TapToRadarDraft() + 56);
  v4 = *(v3 + 16);

  *(v3 + 16) = a1;
  return result;
}

uint64_t TapToRadarDraft.$extensionIdentifiers.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for TapToRadarDraft() + 56));
  v4 = v3[1];
  v5 = v3[2];
  *a1 = *v3;
  a1[1] = v4;
  a1[2] = v5;
}

uint64_t TapToRadarDraft.deleteOnAttach.setter(char a1)
{
  result = type metadata accessor for TapToRadarDraft();
  *(v1 + *(result + 60) + 16) = a1;
  return result;
}

uint64_t TapToRadarDraft.$deleteOnAttach.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for TapToRadarDraft() + 60));
  v5 = *v3;
  v4 = v3[1];
  LOBYTE(v3) = *(v3 + 16);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v3;
}

uint64_t TapToRadarDraft.deviceIDs.getter()
{
  v1 = *(v0 + *(type metadata accessor for TapToRadarDraft() + 64) + 16);
}

uint64_t sub_1BF4404B0(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a2 + *(type metadata accessor for TapToRadarDraft() + 64);
  v4 = *(v3 + 16);

  *(v3 + 16) = v2;
  return result;
}

uint64_t TapToRadarDraft.deviceIDs.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for TapToRadarDraft() + 64);
  v4 = *(v3 + 16);

  *(v3 + 16) = a1;
  return result;
}

uint64_t TapToRadarDraft.$deviceIDs.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for TapToRadarDraft() + 64));
  v4 = v3[1];
  v5 = v3[2];
  *a1 = *v3;
  a1[1] = v4;
  a1[2] = v5;
}

uint64_t TapToRadarDraft.deviceClasses.getter()
{
  v1 = *(v0 + *(type metadata accessor for TapToRadarDraft() + 68) + 16);
}

uint64_t sub_1BF44061C(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a2 + *(type metadata accessor for TapToRadarDraft() + 68);
  v4 = *(v3 + 16);

  *(v3 + 16) = v2;
  return result;
}

uint64_t TapToRadarDraft.deviceClasses.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for TapToRadarDraft() + 68);
  v4 = *(v3 + 16);

  *(v3 + 16) = a1;
  return result;
}

uint64_t TapToRadarDraft.$deviceClasses.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for TapToRadarDraft() + 68));
  v4 = v3[1];
  v5 = v3[2];
  *a1 = *v3;
  a1[1] = v4;
  a1[2] = v5;
}

uint64_t TapToRadarDraft.deviceModels.getter()
{
  v1 = *(v0 + *(type metadata accessor for TapToRadarDraft() + 72) + 16);
}

uint64_t sub_1BF440788(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a2 + *(type metadata accessor for TapToRadarDraft() + 72);
  v4 = *(v3 + 16);

  *(v3 + 16) = v2;
  return result;
}

uint64_t TapToRadarDraft.deviceModels.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for TapToRadarDraft() + 72);
  v4 = *(v3 + 16);

  *(v3 + 16) = a1;
  return result;
}

uint64_t TapToRadarDraft.$deviceModels.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for TapToRadarDraft() + 72));
  v4 = v3[1];
  v5 = v3[2];
  *a1 = *v3;
  a1[1] = v4;
  a1[2] = v5;
}

uint64_t TapToRadarDraft.remoteDeviceSelections.getter@<X0>(void *a1@<X8>)
{
  result = type metadata accessor for TapToRadarDraft();
  *a1 = *(v1 + *(result + 76) + 16);
  return result;
}

uint64_t TapToRadarDraft.remoteDeviceSelections.setter(uint64_t *a1)
{
  v2 = *a1;
  result = type metadata accessor for TapToRadarDraft();
  *(v1 + *(result + 76) + 16) = v2;
  return result;
}

uint64_t TapToRadarDraft.$remoteDeviceSelections.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for TapToRadarDraft() + 76));
  v5 = *v3;
  v4 = v3[1];
  v6 = v3[2];
  *a1 = v5;
  a1[1] = v4;
  a1[2] = v6;
}

uint64_t TapToRadarDraft.includeDevicePrefixInTitle.setter(char a1)
{
  result = type metadata accessor for TapToRadarDraft();
  *(v1 + *(result + 80) + 16) = a1;
  return result;
}

uint64_t TapToRadarDraft.$includeDevicePrefixInTitle.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for TapToRadarDraft() + 80));
  v5 = *v3;
  v4 = v3[1];
  LOBYTE(v3) = *(v3 + 16);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v3;
}

uint64_t TapToRadarDraft.autoDiagnostics.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for TapToRadarDraft();
  *a1 = *(v1 + *(result + 84) + 16);
  return result;
}

uint64_t TapToRadarDraft.autoDiagnostics.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for TapToRadarDraft();
  *(v1 + *(result + 84) + 16) = v2;
  return result;
}

uint64_t TapToRadarDraft.$autoDiagnostics.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for TapToRadarDraft() + 84));
  v5 = *v3;
  v4 = v3[1];
  LOBYTE(v3) = *(v3 + 16);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v3;
}

uint64_t TapToRadarDraft.collaborationContactHandles.getter()
{
  v1 = *(v0 + *(type metadata accessor for TapToRadarDraft() + 88) + 16);
}

uint64_t sub_1BF440BFC(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a2 + *(type metadata accessor for TapToRadarDraft() + 88);
  v4 = *(v3 + 16);

  *(v3 + 16) = v2;
  return result;
}

uint64_t TapToRadarDraft.collaborationContactHandles.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for TapToRadarDraft() + 88);
  v4 = *(v3 + 16);

  *(v3 + 16) = a1;
  return result;
}

uint64_t TapToRadarDraft.$collaborationContactHandles.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for TapToRadarDraft() + 88));
  v4 = v3[1];
  v5 = v3[2];
  *a1 = *v3;
  a1[1] = v4;
  a1[2] = v5;
}

uint64_t TapToRadarDraft.collaborationGroupChatID.getter()
{
  v1 = v0 + *(type metadata accessor for TapToRadarDraft() + 92);
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);

  return v2;
}

uint64_t sub_1BF440D70(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a2 + *(type metadata accessor for TapToRadarDraft() + 92);
  v5 = *(v4 + 24);

  *(v4 + 16) = v3;
  *(v4 + 24) = v2;
  return result;
}

uint64_t TapToRadarDraft.collaborationGroupChatID.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2 + *(type metadata accessor for TapToRadarDraft() + 92);
  v6 = *(v5 + 24);

  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  return result;
}

uint64_t TapToRadarDraft.$collaborationGroupChatID.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for TapToRadarDraft() + 92));
  v4 = v3[1];
  v6 = v3[2];
  v5 = v3[3];
  *a1 = *v3;
  a1[1] = v4;
  a1[2] = v6;
  a1[3] = v5;
}

uint64_t TapToRadarDraft.url.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8AD8, &unk_1BF4ED6C0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v15 - v4;
  v6 = sub_1BF4E6EB4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BF4E6EA4();
  sub_1BF4E6E94();
  MEMORY[0x1BFB570E0](7824750, 0xE300000000000000);
  sub_1BF441100();
  sub_1BF4E6E64();
  sub_1BF4E6E74();
  v11 = sub_1BF4E7194();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v5, 1, v11) == 1)
  {
    sub_1BF38C9B4(v5, &qword_1EBDD8AD8, &unk_1BF4ED6C0);
    sub_1BF443994();
    swift_allocError();
    *v13 = 0;
    swift_willThrow();
    return (*(v7 + 8))(v10, v6);
  }

  else
  {
    (*(v7 + 8))(v10, v6);
    return (*(v12 + 32))(a1, v5, v11);
  }
}

char *sub_1BF441100()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9510, &unk_1BF4F1540);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v380 = &v346 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v379 = &v346 - v6;
  MEMORY[0x1EEE9AC00](v7);
  v376 = &v346 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v373 = &v346 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v370 = &v346 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v397 = &v346 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v365 = &v346 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v364 = &v346 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v346 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v401 = &v346 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v346 - v25;
  v27 = sub_1BF4E6E54();
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v27);
  v347 = &v346 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v346 = &v346 - v32;
  MEMORY[0x1EEE9AC00](v33);
  v396 = &v346 - v34;
  MEMORY[0x1EEE9AC00](v35);
  v359 = &v346 - v36;
  MEMORY[0x1EEE9AC00](v37);
  v395 = &v346 - v38;
  MEMORY[0x1EEE9AC00](v39);
  v378 = &v346 - v40;
  MEMORY[0x1EEE9AC00](v41);
  v377 = &v346 - v42;
  MEMORY[0x1EEE9AC00](v43);
  v375 = &v346 - v44;
  MEMORY[0x1EEE9AC00](v45);
  v374 = &v346 - v46;
  MEMORY[0x1EEE9AC00](v47);
  v372 = &v346 - v48;
  MEMORY[0x1EEE9AC00](v49);
  v371 = &v346 - v50;
  MEMORY[0x1EEE9AC00](v51);
  v394 = &v346 - v52;
  MEMORY[0x1EEE9AC00](v53);
  v358 = &v346 - v54;
  MEMORY[0x1EEE9AC00](v55);
  v393 = &v346 - v56;
  MEMORY[0x1EEE9AC00](v57);
  v392 = &v346 - v58;
  MEMORY[0x1EEE9AC00](v59);
  v357 = &v346 - v60;
  MEMORY[0x1EEE9AC00](v61);
  v391 = &v346 - v62;
  MEMORY[0x1EEE9AC00](v63);
  v390 = &v346 - v64;
  MEMORY[0x1EEE9AC00](v65);
  v356 = &v346 - v66;
  MEMORY[0x1EEE9AC00](v67);
  v389 = &v346 - v68;
  MEMORY[0x1EEE9AC00](v69);
  v369 = &v346 - v70;
  MEMORY[0x1EEE9AC00](v71);
  v368 = &v346 - v72;
  MEMORY[0x1EEE9AC00](v73);
  v388 = &v346 - v74;
  MEMORY[0x1EEE9AC00](v75);
  v355 = &v346 - v76;
  MEMORY[0x1EEE9AC00](v77);
  v387 = &v346 - v78;
  MEMORY[0x1EEE9AC00](v79);
  v386 = &v346 - v80;
  MEMORY[0x1EEE9AC00](v81);
  v354 = &v346 - v82;
  MEMORY[0x1EEE9AC00](v83);
  v385 = &v346 - v84;
  MEMORY[0x1EEE9AC00](v85);
  v384 = &v346 - v86;
  MEMORY[0x1EEE9AC00](v87);
  v353 = &v346 - v88;
  MEMORY[0x1EEE9AC00](v89);
  v383 = &v346 - v90;
  MEMORY[0x1EEE9AC00](v91);
  v367 = &v346 - v92;
  MEMORY[0x1EEE9AC00](v93);
  v366 = &v346 - v94;
  MEMORY[0x1EEE9AC00](v95);
  v382 = &v346 - v96;
  MEMORY[0x1EEE9AC00](v97);
  v352 = &v346 - v98;
  MEMORY[0x1EEE9AC00](v99);
  v381 = &v346 - v100;
  MEMORY[0x1EEE9AC00](v101);
  v351 = &v346 - v102;
  MEMORY[0x1EEE9AC00](v103);
  v350 = &v346 - v104;
  MEMORY[0x1EEE9AC00](v105);
  v349 = &v346 - v106;
  MEMORY[0x1EEE9AC00](v107);
  v348 = &v346 - v108;
  MEMORY[0x1EEE9AC00](v109);
  v363 = &v346 - v110;
  MEMORY[0x1EEE9AC00](v111);
  v362 = &v346 - v112;
  MEMORY[0x1EEE9AC00](v113);
  v361 = &v346 - v114;
  MEMORY[0x1EEE9AC00](v115);
  v360 = &v346 - v116;
  MEMORY[0x1EEE9AC00](v117);
  v119 = &v346 - v118;
  v121 = MEMORY[0x1EEE9AC00](v120);
  v123 = &v346 - v122;
  v406 = MEMORY[0x1E69E7CC0];
  v124 = v1[3];
  v398 = v28;
  if (!v124)
  {
    v399 = *(v28 + 56);
    v399(v26, 1, 1, v27, v121);
    goto LABEL_5;
  }

  v400 = v21;
  v126 = v1[1];
  v125 = v1[2];
  v127 = *v1;
  swift_bridgeObjectRetain_n();

  sub_1BF4E6E44();

  v399 = *(v28 + 56);
  (v399)(v26, 0, 1, v27);

  if ((*(v28 + 48))(v26, 1, v27) == 1)
  {
    v21 = v400;
LABEL_5:
    sub_1BF38C9B4(v26, &qword_1EBDD9510, &unk_1BF4F1540);
    v128 = v397;
    goto LABEL_9;
  }

  v129 = *(v28 + 32);
  v129(v123, v26, v27);
  (*(v28 + 16))(v119, v123, v27);
  v130 = sub_1BF43266C(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v132 = v130[2];
  v131 = v130[3];
  if (v132 >= v131 >> 1)
  {
    v130 = sub_1BF43266C(v131 > 1, v132 + 1, 1, v130);
  }

  v133 = v398 + 8;
  (*(v398 + 8))(v123, v27);
  v130[2] = v132 + 1;
  v134 = v130 + ((*(v133 + 72) + 32) & ~*(v133 + 72));
  v135 = *(v133 + 64);
  v28 = v398;
  v129(&v134[v135 * v132], v119, v27);
  v406 = v130;
  v128 = v397;
  v21 = v400;
LABEL_9:
  v136 = v401;
  v137 = v1[6];
  if (v137)
  {
    v139 = v1[7];
    v138 = v1[8];
    v402 = *(v1 + 2);
    v403 = v137;
    v404 = v139;
    v405 = v138;
    v140 = TapToRadarDraft.Component.queryItems.getter();
    sub_1BF44BB78(v140);
  }

  v141 = v1[9];
  v142 = v1[10];
  v143 = *(v1 + 88);

  sub_1BF445D98(v143, v136);

  v400 = *(v28 + 48);
  v401 = (v28 + 48);
  if ((v400)(v136, 1, v27) == 1)
  {
    sub_1BF38C9B4(v136, &qword_1EBDD9510, &unk_1BF4F1540);
  }

  else
  {
    v144 = *(v28 + 32);
    v145 = v360;
    v144(v360, v136, v27);
    (*(v28 + 16))(v361, v145, v27);
    v146 = v406;
    v147 = v21;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v146 = sub_1BF43266C(0, *(v146 + 2) + 1, 1, v146);
    }

    v149 = *(v146 + 2);
    v148 = *(v146 + 3);
    if (v149 >= v148 >> 1)
    {
      v146 = sub_1BF43266C(v148 > 1, v149 + 1, 1, v146);
    }

    (*(v28 + 8))(v360, v27);
    *(v146 + 2) = v149 + 1;
    v144(&v146[((*(v28 + 80) + 32) & ~*(v28 + 80)) + *(v28 + 72) * v149], v361, v27);
    v406 = v146;
    v21 = v147;
    v128 = v397;
  }

  v150 = v1[12];
  v151 = v1[13];
  v152 = *(v1 + 112);

  sub_1BF445F8C(v152, v21);

  if ((v400)(v21, 1, v27) == 1)
  {
    sub_1BF38C9B4(v21, &qword_1EBDD9510, &unk_1BF4F1540);
    if (v1[18])
    {
      goto LABEL_20;
    }

LABEL_32:
    v156 = v364;
    (v399)(v364, 1, 1, v27);
    goto LABEL_33;
  }

  v163 = *(v28 + 32);
  v164 = v362;
  v163(v362, v21, v27);
  (*(v28 + 16))(v363, v164, v27);
  v165 = v406;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v165 = sub_1BF43266C(0, *(v165 + 2) + 1, 1, v165);
  }

  v167 = *(v165 + 2);
  v166 = *(v165 + 3);
  if (v167 >= v166 >> 1)
  {
    v165 = sub_1BF43266C(v166 > 1, v167 + 1, 1, v165);
  }

  (*(v28 + 8))(v362, v27);
  *(v165 + 2) = v167 + 1;
  v163(&v165[((*(v28 + 80) + 32) & ~*(v28 + 80)) + *(v28 + 72) * v167], v363, v27);
  v406 = v165;
  if (!v1[18])
  {
    goto LABEL_32;
  }

LABEL_20:
  v154 = v1[16];
  v153 = v1[17];
  v155 = v1[15];
  swift_bridgeObjectRetain_n();

  v156 = v364;
  sub_1BF4E6E44();

  (v399)(v156, 0, 1, v27);

  if ((v400)(v156, 1, v27) != 1)
  {
    v157 = *(v28 + 32);
    v158 = v348;
    v157(v348, v156, v27);
    (*(v28 + 16))(v349, v158, v27);
    v159 = v406;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v159 = sub_1BF43266C(0, *(v159 + 2) + 1, 1, v159);
    }

    v161 = *(v159 + 2);
    v160 = *(v159 + 3);
    if (v161 >= v160 >> 1)
    {
      v159 = sub_1BF43266C(v160 > 1, v161 + 1, 1, v159);
    }

    (*(v28 + 8))(v348, v27);
    *(v159 + 2) = v161 + 1;
    v157(&v159[((*(v28 + 80) + 32) & ~*(v28 + 80)) + *(v28 + 72) * v161], v349, v27);
    v406 = v159;
    if (!v1[22])
    {
      goto LABEL_26;
    }

    goto LABEL_34;
  }

LABEL_33:
  sub_1BF38C9B4(v156, &qword_1EBDD9510, &unk_1BF4F1540);
  if (!v1[22])
  {
LABEL_26:
    v162 = v365;
    (v399)(v365, 1, 1, v27);
LABEL_35:
    sub_1BF38C9B4(v162, &qword_1EBDD9510, &unk_1BF4F1540);
    goto LABEL_41;
  }

LABEL_34:
  v169 = v1[20];
  v168 = v1[21];
  v170 = v1[19];
  swift_bridgeObjectRetain_n();

  v162 = v365;
  sub_1BF4E6E44();

  (v399)(v162, 0, 1, v27);

  if ((v400)(v162, 1, v27) == 1)
  {
    goto LABEL_35;
  }

  v171 = *(v28 + 32);
  v172 = v350;
  v171(v350, v162, v27);
  (*(v28 + 16))(v351, v172, v27);
  v173 = v406;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v173 = sub_1BF43266C(0, *(v173 + 2) + 1, 1, v173);
  }

  v175 = *(v173 + 2);
  v174 = *(v173 + 3);
  if (v175 >= v174 >> 1)
  {
    v173 = sub_1BF43266C(v174 > 1, v175 + 1, 1, v173);
  }

  (*(v28 + 8))(v350, v27);
  *(v173 + 2) = v175 + 1;
  v171(&v173[((*(v28 + 80) + 32) & ~*(v28 + 80)) + *(v28 + 72) * v175], v351, v27);
  v406 = v173;
LABEL_41:
  v177 = v1[23];
  v176 = v1[24];
  v178 = v1[25];

  sub_1BF446B44(v179);
  if (v180)
  {
    v181 = v352;
    sub_1BF4E6E44();

    v182 = *(v28 + 32);
    v183 = v381;
    v182(v381, v181, v27);
    (*(v28 + 16))(v382, v183, v27);
    v184 = v406;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v184 = sub_1BF43266C(0, *(v184 + 2) + 1, 1, v184);
    }

    v186 = *(v184 + 2);
    v185 = *(v184 + 3);
    if (v186 >= v185 >> 1)
    {
      v184 = sub_1BF43266C(v185 > 1, v186 + 1, 1, v184);
    }

    (*(v28 + 8))(v381, v27);
    *(v184 + 2) = v186 + 1;
    v182(&v184[((*(v28 + 80) + 32) & ~*(v28 + 80)) + *(v28 + 72) * v186], v382, v27);
    v406 = v184;
  }

  else
  {
  }

  v187 = type metadata accessor for TapToRadarDraft();
  v188 = v1 + v187[11];
  sub_1BF4460E4(v128);
  if ((v400)(v128, 1, v27) == 1)
  {
    sub_1BF38C9B4(v128, &qword_1EBDD9510, &unk_1BF4F1540);
  }

  else
  {
    v189 = *(v28 + 32);
    v190 = v366;
    v189(v366, v128, v27);
    (*(v28 + 16))(v367, v190, v27);
    v191 = v406;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v191 = sub_1BF43266C(0, *(v191 + 2) + 1, 1, v191);
    }

    v193 = *(v191 + 2);
    v192 = *(v191 + 3);
    if (v193 >= v192 >> 1)
    {
      v191 = sub_1BF43266C(v192 > 1, v193 + 1, 1, v191);
    }

    (*(v28 + 8))(v366, v27);
    *(v191 + 2) = v193 + 1;
    v189(&v191[((*(v28 + 80) + 32) & ~*(v28 + 80)) + *(v28 + 72) * v193], v367, v27);
    v406 = v191;
  }

  v194 = (v1 + v187[12]);
  v196 = *v194;
  v195 = v194[1];
  v197 = v194[2];

  sub_1BF446930(v198);
  if (v199)
  {
    v200 = v353;
    sub_1BF4E6E44();

    v201 = *(v28 + 32);
    v202 = v383;
    v201(v383, v200, v27);
    (*(v28 + 16))(v384, v202, v27);
    v203 = v406;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v203 = sub_1BF43266C(0, *(v203 + 2) + 1, 1, v203);
    }

    v205 = *(v203 + 2);
    v204 = *(v203 + 3);
    if (v205 >= v204 >> 1)
    {
      v203 = sub_1BF43266C(v204 > 1, v205 + 1, 1, v203);
    }

    (*(v28 + 8))(v383, v27);
    *(v203 + 2) = v205 + 1;
    v201(&v203[((*(v28 + 80) + 32) & ~*(v28 + 80)) + *(v28 + 72) * v205], v384, v27);
    v406 = v203;
  }

  else
  {
  }

  v206 = (v1 + v187[13]);
  v208 = *v206;
  v207 = v206[1];
  v209 = v206[2];

  sub_1BF446930(v210);
  if (v211)
  {
    v212 = v354;
    sub_1BF4E6E44();

    v213 = *(v28 + 32);
    v214 = v385;
    v213(v385, v212, v27);
    (*(v28 + 16))(v386, v214, v27);
    v215 = v406;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v215 = sub_1BF43266C(0, *(v215 + 2) + 1, 1, v215);
    }

    v217 = *(v215 + 2);
    v216 = *(v215 + 3);
    if (v217 >= v216 >> 1)
    {
      v215 = sub_1BF43266C(v216 > 1, v217 + 1, 1, v215);
    }

    (*(v28 + 8))(v385, v27);
    *(v215 + 2) = v217 + 1;
    v213(&v215[((*(v28 + 80) + 32) & ~*(v28 + 80)) + *(v28 + 72) * v217], v386, v27);
    v406 = v215;
  }

  else
  {
  }

  v218 = (v1 + v187[14]);
  v220 = *v218;
  v219 = v218[1];
  v221 = v218[2];

  sub_1BF446800(v222);
  if (v223)
  {
    v224 = v355;
    sub_1BF4E6E44();

    v225 = *(v28 + 32);
    v226 = v387;
    v225(v387, v224, v27);
    (*(v28 + 16))(v388, v226, v27);
    v227 = v406;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v227 = sub_1BF43266C(0, *(v227 + 2) + 1, 1, v227);
    }

    v229 = *(v227 + 2);
    v228 = *(v227 + 3);
    if (v229 >= v228 >> 1)
    {
      v227 = sub_1BF43266C(v228 > 1, v229 + 1, 1, v227);
    }

    (*(v28 + 8))(v387, v27);
    *(v227 + 2) = v229 + 1;
    v225(&v227[((*(v28 + 80) + 32) & ~*(v28 + 80)) + *(v28 + 72) * v229], v388, v27);
    v406 = v227;
  }

  else
  {
  }

  v230 = (v1 + v187[15]);
  v231 = *v230;
  v232 = v230[1];
  *(v230 + 16);

  v233 = v370;
  sub_1BF4E6E44();

  (v399)(v233, 0, 1, v27);
  v234 = v233;

  if ((v400)(v233, 1, v27) == 1)
  {
    sub_1BF38C9B4(v233, &qword_1EBDD9510, &unk_1BF4F1540);
  }

  else
  {
    v235 = *(v28 + 32);
    v236 = v368;
    v235(v368, v234, v27);
    (*(v28 + 16))(v369, v236, v27);
    v237 = v406;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v237 = sub_1BF43266C(0, *(v237 + 2) + 1, 1, v237);
    }

    v239 = *(v237 + 2);
    v238 = *(v237 + 3);
    if (v239 >= v238 >> 1)
    {
      v237 = sub_1BF43266C(v238 > 1, v239 + 1, 1, v237);
    }

    (*(v28 + 8))(v368, v27);
    *(v237 + 2) = v239 + 1;
    v235(&v237[((*(v28 + 80) + 32) & ~*(v28 + 80)) + *(v28 + 72) * v239], v369, v27);
    v406 = v237;
  }

  v240 = (v1 + v187[16]);
  v242 = *v240;
  v241 = v240[1];
  v243 = v240[2];

  sub_1BF446800(v244);
  if (v245)
  {
    v246 = v356;
    sub_1BF4E6E44();

    v247 = v398;
    v248 = *(v398 + 32);
    v249 = v389;
    v248(v389, v246, v27);
    (*(v247 + 16))(v390, v249, v27);
    v250 = v406;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v250 = sub_1BF43266C(0, *(v250 + 2) + 1, 1, v250);
    }

    v252 = *(v250 + 2);
    v251 = *(v250 + 3);
    if (v252 >= v251 >> 1)
    {
      v250 = sub_1BF43266C(v251 > 1, v252 + 1, 1, v250);
    }

    (*(v247 + 8))(v389, v27);
    *(v250 + 2) = v252 + 1;
    v248(&v250[((*(v247 + 80) + 32) & ~*(v247 + 80)) + *(v247 + 72) * v252], v390, v27);
    v406 = v250;
  }

  else
  {
  }

  v253 = (v1 + v187[17]);
  v255 = *v253;
  v254 = v253[1];
  v256 = v253[2];

  sub_1BF446640(v257);
  if (v258)
  {
    v259 = v357;
    sub_1BF4E6E44();

    v260 = v398;
    v261 = *(v398 + 32);
    v262 = v391;
    v261(v391, v259, v27);
    (*(v260 + 16))(v392, v262, v27);
    v263 = v406;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v263 = sub_1BF43266C(0, *(v263 + 2) + 1, 1, v263);
    }

    v265 = *(v263 + 2);
    v264 = *(v263 + 3);
    if (v265 >= v264 >> 1)
    {
      v263 = sub_1BF43266C(v264 > 1, v265 + 1, 1, v263);
    }

    (*(v260 + 8))(v391, v27);
    *(v263 + 2) = v265 + 1;
    v261(&v263[((*(v260 + 80) + 32) & ~*(v260 + 80)) + *(v260 + 72) * v265], v392, v27);
    v406 = v263;
  }

  else
  {
  }

  v266 = (v1 + v187[18]);
  v268 = *v266;
  v267 = v266[1];
  v269 = v266[2];

  sub_1BF446800(v270);
  if (v271)
  {
    v272 = v358;
    sub_1BF4E6E44();

    v273 = v398;
    v274 = *(v398 + 32);
    v275 = v393;
    v274(v393, v272, v27);
    (*(v273 + 16))(v394, v275, v27);
    v276 = v406;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v276 = sub_1BF43266C(0, *(v276 + 2) + 1, 1, v276);
    }

    v278 = *(v276 + 2);
    v277 = *(v276 + 3);
    if (v278 >= v277 >> 1)
    {
      v276 = sub_1BF43266C(v277 > 1, v278 + 1, 1, v276);
    }

    (*(v273 + 8))(v393, v27);
    *(v276 + 2) = v278 + 1;
    v274(&v276[((*(v273 + 80) + 32) & ~*(v273 + 80)) + *(v273 + 72) * v278], v394, v27);
    v406 = v276;
  }

  else
  {
  }

  v279 = (v1 + v187[19]);
  v281 = *v279;
  v280 = v279[1];
  v282 = v279[2];
  *&v402 = v281;
  *(&v402 + 1) = v280;
  v403 = v282;

  TapToRadarDraft.RemoteDeviceSelections.urlParameterValue.getter();
  if (v283)
  {
    v284 = v373;
    sub_1BF4E6E44();

    v285 = 0;
    v286 = v398;
  }

  else
  {

    v285 = 1;
    v286 = v398;
    v284 = v373;
  }

  (v399)(v284, v285, 1, v27);
  v287 = (v400)(v284, 1, v27);
  v288 = v284;
  if (v287 == 1)
  {
    sub_1BF38C9B4(v284, &qword_1EBDD9510, &unk_1BF4F1540);
  }

  else
  {
    v289 = *(v286 + 32);
    v290 = v371;
    v289(v371, v288, v27);
    (*(v286 + 16))(v372, v290, v27);
    v291 = v406;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v291 = sub_1BF43266C(0, *(v291 + 2) + 1, 1, v291);
    }

    v293 = *(v291 + 2);
    v292 = *(v291 + 3);
    if (v293 >= v292 >> 1)
    {
      v291 = sub_1BF43266C(v292 > 1, v293 + 1, 1, v291);
    }

    (*(v286 + 8))(v371, v27);
    *(v291 + 2) = v293 + 1;
    v289(&v291[((*(v286 + 80) + 32) & ~*(v286 + 80)) + *(v286 + 72) * v293], v372, v27);
    v406 = v291;
  }

  v294 = (v1 + v187[20]);
  v295 = *v294;
  v296 = v294[1];
  *(v294 + 16);

  v297 = v376;
  sub_1BF4E6E44();

  (v399)(v297, 0, 1, v27);
  v298 = v297;

  if ((v400)(v297, 1, v27) == 1)
  {
    sub_1BF38C9B4(v297, &qword_1EBDD9510, &unk_1BF4F1540);
  }

  else
  {
    v299 = v398;
    v300 = *(v398 + 32);
    v301 = v374;
    v300(v374, v298, v27);
    (*(v299 + 16))(v375, v301, v27);
    v302 = v406;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v302 = sub_1BF43266C(0, *(v302 + 2) + 1, 1, v302);
    }

    v304 = *(v302 + 2);
    v303 = *(v302 + 3);
    if (v304 >= v303 >> 1)
    {
      v302 = sub_1BF43266C(v303 > 1, v304 + 1, 1, v302);
    }

    (*(v299 + 8))(v374, v27);
    *(v302 + 2) = v304 + 1;
    v300(&v302[((*(v299 + 80) + 32) & ~*(v299 + 80)) + *(v299 + 72) * v304], v375, v27);
    v406 = v302;
  }

  v305 = (v1 + v187[21]);
  v307 = *v305;
  v306 = v305[1];
  LOBYTE(v305) = *(v305 + 16);
  *&v402 = v307;
  *(&v402 + 1) = v306;
  LOBYTE(v403) = v305;

  TapToRadarDraft.AutoDiagnostics.urlParameterValue.getter();
  if (v308)
  {
    v309 = v379;
    sub_1BF4E6E44();

    v310 = 0;
    v311 = v398;
  }

  else
  {

    v310 = 1;
    v311 = v398;
    v309 = v379;
  }

  (v399)(v309, v310, 1, v27);
  v312 = (v400)(v309, 1, v27);
  v313 = v309;
  if (v312 == 1)
  {
    sub_1BF38C9B4(v309, &qword_1EBDD9510, &unk_1BF4F1540);
  }

  else
  {
    v314 = *(v311 + 32);
    v315 = v377;
    v314(v377, v313, v27);
    (*(v311 + 16))(v378, v315, v27);
    v316 = v406;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v316 = sub_1BF43266C(0, *(v316 + 2) + 1, 1, v316);
    }

    v318 = *(v316 + 2);
    v317 = *(v316 + 3);
    if (v318 >= v317 >> 1)
    {
      v316 = sub_1BF43266C(v317 > 1, v318 + 1, 1, v316);
    }

    (*(v311 + 8))(v377, v27);
    *(v316 + 2) = v318 + 1;
    v314(&v316[((*(v311 + 80) + 32) & ~*(v311 + 80)) + *(v311 + 72) * v318], v378, v27);
    v406 = v316;
  }

  v319 = (v1 + v187[22]);
  v321 = *v319;
  v320 = v319[1];
  v322 = v319[2];

  sub_1BF446800(v323);
  if (v324)
  {
    v325 = v359;
    sub_1BF4E6E44();

    v326 = v398;
    v327 = *(v398 + 32);
    v328 = v395;
    v327(v395, v325, v27);
    (*(v326 + 16))(v396, v328, v27);
    v329 = v406;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v329 = sub_1BF43266C(0, *(v329 + 2) + 1, 1, v329);
    }

    v331 = *(v329 + 2);
    v330 = *(v329 + 3);
    if (v331 >= v330 >> 1)
    {
      v329 = sub_1BF43266C(v330 > 1, v331 + 1, 1, v329);
    }

    (*(v326 + 8))(v395, v27);
    *(v329 + 2) = v331 + 1;
    v327(&v329[((*(v326 + 80) + 32) & ~*(v326 + 80)) + *(v326 + 72) * v331], v396, v27);
    v406 = v329;
  }

  else
  {
  }

  v332 = (v1 + v187[23]);
  if (!v332[3])
  {
    v337 = v380;
    (v399)(v380, 1, 1, v27);
    goto LABEL_146;
  }

  v334 = v332[1];
  v333 = v332[2];
  v335 = *v332;
  v336 = v332[3];
  swift_bridgeObjectRetain_n();

  v337 = v380;
  sub_1BF4E6E44();

  (v399)(v337, 0, 1, v27);

  if ((v400)(v337, 1, v27) == 1)
  {
LABEL_146:
    sub_1BF38C9B4(v337, &qword_1EBDD9510, &unk_1BF4F1540);
    return v406;
  }

  v338 = v398;
  v339 = *(v398 + 32);
  v340 = v346;
  v339(v346, v337, v27);
  v341 = v347;
  (*(v338 + 16))(v347, v340, v27);
  v342 = v406;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v342 = sub_1BF43266C(0, *(v342 + 2) + 1, 1, v342);
  }

  v344 = *(v342 + 2);
  v343 = *(v342 + 3);
  if (v344 >= v343 >> 1)
  {
    v342 = sub_1BF43266C(v343 > 1, v344 + 1, 1, v342);
  }

  (*(v338 + 8))(v340, v27);
  *(v342 + 2) = v344 + 1;
  v339(&v342[((*(v338 + 80) + 32) & ~*(v338 + 80)) + *(v338 + 72) * v344], v341, v27);
  return v342;
}

unint64_t sub_1BF443994()
{
  result = qword_1EBDD9358;
  if (!qword_1EBDD9358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDD9358);
  }

  return result;
}

uint64_t TapToRadarDraft.open()()
{
  v1[19] = v0;
  v2 = sub_1BF4E7194();
  v1[20] = v2;
  v3 = *(v2 - 8);
  v1[21] = v3;
  v4 = *(v3 + 64) + 15;
  v1[22] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BF443AA8, 0, 0);
}

uint64_t sub_1BF443AA8()
{
  v1 = v0[19];
  TapToRadarDraft.url.getter(v0[22]);
  v2 = [objc_opt_self() defaultWorkspace];
  v0[23] = v2;
  if (v2)
  {
    v3 = v2;
    v4 = v0[22];
    v5 = sub_1BF4E7094();
    v0[24] = v5;
    v0[2] = v0;
    v0[7] = v0 + 18;
    v0[3] = sub_1BF443C64;
    v6 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9360, &qword_1BF4F0C90);
    v0[10] = MEMORY[0x1E69E9820];
    v0[11] = 1107296256;
    v0[12] = sub_1BF443EC0;
    v0[13] = &block_descriptor_6;
    v0[14] = v6;
    [v3 openURL:v5 configuration:0 completionHandler:v0 + 10];
    v2 = v0 + 2;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x1EEE6DEC8](v2);
}

uint64_t sub_1BF443C64()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 200) = v2;
  if (v2)
  {
    v3 = sub_1BF443E14;
  }

  else
  {
    v3 = sub_1BF443D74;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1BF443D74()
{
  v2 = v0[23];
  v1 = v0[24];
  (*(v0[21] + 8))(v0[22], v0[20]);
  v3 = v0[18];

  v4 = v0[1];

  return v4();
}

uint64_t sub_1BF443E14()
{
  v2 = v0[24];
  v1 = v0[25];
  v3 = v0[22];
  v4 = v0[23];
  v5 = v0[20];
  v6 = v0[21];
  swift_willThrow();
  (*(v6 + 8))(v3, v5);

  v7 = v0[25];
  v8 = v0[22];

  v9 = v0[1];

  return v9();
}

uint64_t sub_1BF443EC0(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD91C0, &unk_1BF4ED510);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return MEMORY[0x1EEE6DEE8](v5, v6);
  }

  else
  {
    if (a2)
    {
      v9 = sub_1BF4E8764();
    }

    else
    {
      v9 = 0;
    }

    **(*(v5 + 64) + 40) = v9;

    return MEMORY[0x1EEE6DEE0](v5);
  }
}

uint64_t sub_1BF443FBC@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = 0x4449656C646E7542;
  *(a1 + 8) = 0xE800000000000000;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 88) = 10;
  *(a1 + 64) = 0;
  strcpy((a1 + 72), "Classification");
  *(a1 + 87) = -18;
  *(a1 + 112) = 6;
  *(a1 + 96) = 0x6375646F72706552;
  *(a1 + 104) = 0xEF7974696C696269;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  *(a1 + 120) = 0x656C746954;
  *(a1 + 128) = 0xE500000000000000;
  *(a1 + 168) = 0;
  *(a1 + 176) = 0;
  *(a1 + 152) = 0x7470697263736544;
  *(a1 + 160) = 0xEB000000006E6F69;
  v2 = MEMORY[0x1E69E7CC0];
  *(a1 + 192) = 0xE800000000000000;
  *(a1 + 200) = v2;
  *(a1 + 184) = 0x7364726F7779654BLL;
  v3 = type metadata accessor for TapToRadarDraft();
  v4 = (a1 + v3[11]);
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9350, &qword_1BF4F0C80) + 36);
  v6 = sub_1BF4E7334();
  result = (*(*(v6 - 8) + 56))(&v4[v5], 1, 1, v6);
  *v4 = 0x7349664F656D6954;
  *(v4 + 1) = 0xEB00000000657573;
  v8 = (a1 + v3[12]);
  *v8 = 0x656D686361747441;
  v8[1] = 0xEB0000000073746ELL;
  v8[2] = v2;
  v9 = (a1 + v3[13]);
  v9[1] = 0x80000001BF4FB5C0;
  v9[2] = v2;
  *v9 = 0xD000000000000011;
  v10 = (a1 + v3[14]);
  v10[1] = 0x80000001BF4FB5E0;
  v10[2] = v2;
  *v10 = 0xD000000000000014;
  v11 = (a1 + v3[15]);
  v11[16] = 0;
  strcpy(v11, "DeleteOnAttach");
  v11[15] = -18;
  v12 = (a1 + v3[16]);
  *v12 = 0x4449656369766544;
  v12[1] = 0xE900000000000073;
  v12[2] = v2;
  v13 = a1 + v3[17];
  strcpy(v13, "DeviceClasses");
  *(v13 + 14) = -4864;
  *(v13 + 16) = v2;
  v14 = a1 + v3[18];
  strcpy(v14, "DeviceModels");
  *(v14 + 13) = 0;
  *(v14 + 14) = -5120;
  *(v14 + 16) = v2;
  v15 = (a1 + v3[19]);
  v15[1] = 0x80000001BF4F1480;
  v15[2] = 0;
  *v15 = 0xD000000000000016;
  v16 = a1 + v3[20];
  *(v16 + 16) = 0;
  *v16 = 0xD00000000000001ALL;
  *(v16 + 8) = 0x80000001BF4FB600;
  v17 = a1 + v3[21];
  *(v17 + 16) = 0;
  *v17 = 0x676169446F747541;
  *(v17 + 8) = 0xEF73636974736F6ELL;
  v18 = (a1 + v3[22]);
  v18[1] = 0x80000001BF4FB620;
  v18[2] = v2;
  *v18 = 0xD00000000000001BLL;
  v19 = (a1 + v3[23]);
  v19[2] = 0;
  v19[3] = 0;
  *v19 = 0xD000000000000018;
  v19[1] = 0x80000001BF4FB640;
  return result;
}

uint64_t TapToRadarDraft.Component.componentName.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t TapToRadarDraft.Component.componentVersion.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

uint64_t TapToRadarDraft.Component.queryItems.getter()
{
  v2 = *v0;
  v1 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD90C0, &qword_1BF4F0698);
  v6 = *(sub_1BF4E6E54() - 8);
  v7 = *(v6 + 72);
  v8 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1BF4F0C60;
  sub_1BF4E96A4();
  sub_1BF4E6E44();

  sub_1BF4E6E44();
  sub_1BF4E6E44();
  return v9;
}

uint64_t static TapToRadarDraft.Component.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = a1[3];
  v3 = a1[4];
  v4 = a2[3];
  v5 = a2[4];
  v6 = a1[1] == a2[1] && a1[2] == a2[2];
  if (!v6 && (sub_1BF4E9734() & 1) == 0)
  {
    return 0;
  }

  if (v2 == v4 && v3 == v5)
  {
    return 1;
  }

  return sub_1BF4E9734();
}

uint64_t TapToRadarDraft.Component.hash(into:)()
{
  v1 = v0[1];
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  MEMORY[0x1BFB59A70](*v0);
  sub_1BF4E89F4();

  return sub_1BF4E89F4();
}

uint64_t TapToRadarDraft.Component.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  sub_1BF4E9804();
  MEMORY[0x1BFB59A70](v1);
  sub_1BF4E89F4();
  sub_1BF4E89F4();
  return sub_1BF4E9844();
}

uint64_t sub_1BF4446DC()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  sub_1BF4E9804();
  MEMORY[0x1BFB59A70](v1);
  sub_1BF4E89F4();
  sub_1BF4E89F4();
  return sub_1BF4E9844();
}

uint64_t sub_1BF44475C()
{
  v1 = v0[1];
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  MEMORY[0x1BFB59A70](*v0);
  sub_1BF4E89F4();

  return sub_1BF4E89F4();
}

uint64_t sub_1BF4447CC()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  sub_1BF4E9804();
  MEMORY[0x1BFB59A70](v1);
  sub_1BF4E89F4();
  sub_1BF4E89F4();
  return sub_1BF4E9844();
}

uint64_t sub_1BF444848(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = a1[3];
  v3 = a1[4];
  v4 = a2[3];
  v5 = a2[4];
  v6 = a1[1] == a2[1] && a1[2] == a2[2];
  if (!v6 && (sub_1BF4E9734() & 1) == 0)
  {
    return 0;
  }

  if (v2 == v4 && v3 == v5)
  {
    return 1;
  }

  return sub_1BF4E9734();
}

unint64_t TapToRadarDraft.Classification.urlParameterValue.getter()
{
  v1 = *v0;
  if (v1 > 4)
  {
    v6 = 0x2065727574616546;
    v7 = 0x6D65636E61686E45;
    if (v1 != 8)
    {
      v7 = 1802723668;
    }

    if (v1 != 7)
    {
      v6 = v7;
    }

    v8 = 0x2073756F69726553;
    if (v1 != 5)
    {
      v8 = 0x754220726568744FLL;
    }

    if (*v0 <= 6u)
    {
      return v8;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v2 = 0x7974697275636553;
    v3 = 0x7265776F50;
    v4 = 0x616D726F66726550;
    if (v1 != 3)
    {
      v4 = 0x69626173552F4955;
    }

    if (v1 != 2)
    {
      v3 = v4;
    }

    if (*v0)
    {
      v2 = 0xD000000000000014;
    }

    if (*v0 <= 1u)
    {
      return v2;
    }

    else
    {
      return v3;
    }
  }
}

unint64_t TapToRadarDraft.Classification.rawValue.getter()
{
  v1 = *v0;
  if (v1 > 4)
  {
    v6 = 0x2065727574616546;
    v7 = 0x6D65636E61686E45;
    if (v1 != 8)
    {
      v7 = 1802723668;
    }

    if (v1 != 7)
    {
      v6 = v7;
    }

    v8 = 0x2073756F69726553;
    if (v1 != 5)
    {
      v8 = 0x754220726568744FLL;
    }

    if (*v0 <= 6u)
    {
      return v8;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v2 = 0x7974697275636553;
    v3 = 0x7265776F50;
    v4 = 0x616D726F66726550;
    if (v1 != 3)
    {
      v4 = 0x69626173552F4955;
    }

    if (v1 != 2)
    {
      v3 = v4;
    }

    if (*v0)
    {
      v2 = 0xD000000000000014;
    }

    if (*v0 <= 1u)
    {
      return v2;
    }

    else
    {
      return v3;
    }
  }
}

ChronoKit::TapToRadarDraft::Classification_optional __swiftcall TapToRadarDraft.Classification.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1BF4E9514();

  v5 = 10;
  if (v3 < 0xA)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1BF444C2C()
{
  v1 = *v0;
  sub_1BF4E9804();
  sub_1BF4490F0();
  return sub_1BF4E9844();
}

uint64_t sub_1BF444C7C()
{
  v1 = *v0;
  sub_1BF4E9804();
  sub_1BF4490F0();
  return sub_1BF4E9844();
}

unint64_t sub_1BF444CCC@<X0>(unint64_t *a1@<X8>)
{
  result = TapToRadarDraft.Classification.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t TapToRadarDraft.Reproducibility.urlParameterValue.getter()
{
  v1 = *v0;
  result = *&aAlways_1[8 * v1];
  v3 = *&aIDidnTnotAppl[8 * v1 + 16];
  return result;
}

uint64_t TapToRadarDraft.Reproducibility.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x737961776C41;
  v3 = 0x656C62616E55;
  v4 = 0x74276E6469442049;
  if (v1 != 4)
  {
    v4 = 0x6C70704120746F4ELL;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x656D6974656D6F53;
  if (v1 != 1)
  {
    v5 = 0x796C65726152;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

ChronoKit::TapToRadarDraft::Reproducibility_optional __swiftcall TapToRadarDraft.Reproducibility.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1BF4E9514();

  v5 = 6;
  if (v3 < 6)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1BF444E50()
{
  *v0;
  *v0;
  *v0;
  sub_1BF4E89F4();
}

void sub_1BF444F60(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0x737961776C41;
  v5 = 0xE600000000000000;
  v6 = 0x656C62616E55;
  v7 = 0xEC00000079725420;
  v8 = 0x74276E6469442049;
  if (v2 != 4)
  {
    v8 = 0x6C70704120746F4ELL;
    v7 = 0xEE00656C62616369;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE900000000000073;
  v10 = 0x656D6974656D6F53;
  if (v2 != 1)
  {
    v10 = 0x796C65726152;
    v9 = 0xE600000000000000;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v11;
  a1[1] = v3;
}

uint64_t sub_1BF44502C()
{
  v1 = *v0;
  result = *&aAlways_1[8 * v1];
  v3 = *&aIDidnTnotAppl[8 * v1 + 16];
  return result;
}

uint64_t TapToRadarDraft.DeviceClass.urlParameterValue.getter()
{
  v1 = *v0;
  result = *&aIphone_1[8 * v1];
  v3 = qword_1BF4F15E0[v1];
  return result;
}

uint64_t TapToRadarDraft.DeviceClass.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x656E6F685069;
  v3 = 0x5654656C707041;
  v4 = 0x646F50656D6F48;
  if (v1 != 4)
  {
    v4 = 6512973;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 1684099177;
  if (v1 != 1)
  {
    v5 = 0x6863746157;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

ChronoKit::TapToRadarDraft::DeviceClass_optional __swiftcall TapToRadarDraft.DeviceClass.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1BF4E9514();

  v5 = 6;
  if (v3 < 6)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1BF445180()
{
  *v0;
  *v0;
  *v0;
  sub_1BF4E89F4();
}

void sub_1BF44526C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0x656E6F685069;
  v5 = 0xE700000000000000;
  v6 = 0x5654656C707041;
  v7 = 0xE700000000000000;
  v8 = 0x646F50656D6F48;
  if (v2 != 4)
  {
    v8 = 6512973;
    v7 = 0xE300000000000000;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE400000000000000;
  v10 = 1684099177;
  if (v2 != 1)
  {
    v10 = 0x6863746157;
    v9 = 0xE500000000000000;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v11;
  a1[1] = v3;
}

uint64_t sub_1BF445314()
{
  v1 = *v0;
  result = *&aIphone_1[8 * v1];
  v3 = qword_1BF4F15E0[v1];
  return result;
}

uint64_t TapToRadarDraft.RemoteDeviceSelections.urlParameterValue.getter()
{
  v1 = *v0;
  if (*v0)
  {
    if (v1)
    {
      v2 = sub_1BF431F90(0, 1, 1, MEMORY[0x1E69E7CC0]);
      v5 = *(v2 + 2);
      v4 = *(v2 + 3);
      if (v5 >= v4 >> 1)
      {
        v2 = sub_1BF431F90((v4 > 1), v5 + 1, 1, v2);
      }

      *(v2 + 2) = v5 + 1;
      v6 = &v2[16 * v5];
      *(v6 + 4) = 0x79616C50726941;
      *(v6 + 5) = 0xE700000000000000;
      if ((v1 & 2) == 0)
      {
LABEL_14:
        if ((v1 & 4) != 0)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v2 = sub_1BF431F90(0, *(v2 + 2) + 1, 1, v2);
          }

          v11 = *(v2 + 2);
          v10 = *(v2 + 3);
          if (v11 >= v10 >> 1)
          {
            v2 = sub_1BF431F90((v10 > 1), v11 + 1, 1, v2);
          }

          *(v2 + 2) = v11 + 1;
          v12 = &v2[16 * v11];
          strcpy(v12 + 32, "MediaSystems");
          v12[45] = 0;
          *(v12 + 23) = -5120;
          if ((v1 & 8) == 0)
          {
LABEL_16:
            if ((v1 & 0x10) == 0)
            {
LABEL_33:
              __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD9BB0, &qword_1BF4EC140);
              sub_1BF3E4AF0();
              v3 = sub_1BF4E8894();

              return v3;
            }

LABEL_28:
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v2 = sub_1BF431F90(0, *(v2 + 2) + 1, 1, v2);
            }

            v17 = *(v2 + 2);
            v16 = *(v2 + 3);
            if (v17 >= v16 >> 1)
            {
              v2 = sub_1BF431F90((v16 > 1), v17 + 1, 1, v2);
            }

            *(v2 + 2) = v17 + 1;
            v18 = &v2[16 * v17];
            *(v18 + 4) = 0x79627261654ELL;
            *(v18 + 5) = 0xE600000000000000;
            goto LABEL_33;
          }
        }

        else if ((v1 & 8) == 0)
        {
          goto LABEL_16;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v2 = sub_1BF431F90(0, *(v2 + 2) + 1, 1, v2);
        }

        v14 = *(v2 + 2);
        v13 = *(v2 + 3);
        if (v14 >= v13 >> 1)
        {
          v2 = sub_1BF431F90((v13 > 1), v14 + 1, 1, v2);
        }

        *(v2 + 2) = v14 + 1;
        v15 = &v2[16 * v14];
        *(v15 + 4) = 0x616C506572616853;
        *(v15 + 5) = 0xE900000000000079;
        if ((v1 & 0x10) == 0)
        {
          goto LABEL_33;
        }

        goto LABEL_28;
      }
    }

    else
    {
      v2 = MEMORY[0x1E69E7CC0];
      if ((v1 & 2) == 0)
      {
        goto LABEL_14;
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_1BF431F90(0, *(v2 + 2) + 1, 1, v2);
    }

    v8 = *(v2 + 2);
    v7 = *(v2 + 3);
    if (v8 >= v7 >> 1)
    {
      v2 = sub_1BF431F90((v7 > 1), v8 + 1, 1, v2);
    }

    *(v2 + 2) = v8 + 1;
    v9 = &v2[16 * v8];
    *(v9 + 4) = 0x4874694B656D6F48;
    *(v9 + 5) = 0xEB00000000656D6FLL;
    goto LABEL_14;
  }

  return 0;
}

uint64_t sub_1BF4456D4()
{
  v1 = *v0;
  sub_1BF4E9804();
  MEMORY[0x1BFB59A70](v1);
  return sub_1BF4E9844();
}

uint64_t sub_1BF445748()
{
  v1 = *v0;
  sub_1BF4E9804();
  MEMORY[0x1BFB59A70](v1);
  return sub_1BF4E9844();
}

uint64_t TapToRadarDraft.AutoDiagnostics.urlParameterValue.getter()
{
  v1 = *v0;
  if (v1 <= 2 && !*v0)
  {

    return 0;
  }

  v2 = sub_1BF4E9734();

  if (v2)
  {
    return 0;
  }

  if (v1 > 3)
  {
    if (v1 == 4)
    {
      return 0xD000000000000010;
    }

    else if (v1 == 5)
    {
      return 0xD000000000000010;
    }

    else
    {
      return 0xD00000000000001CLL;
    }
  }

  else if (v1 == 1)
  {
    return 48;
  }

  else if (v1 == 2)
  {
    return 12589;
  }

  else
  {
    return 0xD000000000000010;
  }
}

uint64_t TapToRadarDraft.AutoDiagnostics.rawValue.getter()
{
  v1 = *v0;
  if (v1 <= 2)
  {
    v4 = 48;
    if (v1 != 1)
    {
      v4 = 12589;
    }

    if (*v0)
    {
      return v4;
    }

    else
    {
      return 7105633;
    }
  }

  else
  {
    v2 = 0xD000000000000010;
    if (v1 != 5)
    {
      v2 = 0xD00000000000001CLL;
    }

    if (*v0 <= 4u)
    {
      return 0xD000000000000010;
    }

    else
    {
      return v2;
    }
  }
}

ChronoKit::TapToRadarDraft::AutoDiagnostics_optional __swiftcall TapToRadarDraft.AutoDiagnostics.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1BF4E9514();

  v5 = 7;
  if (v3 < 7)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1BF445A7C()
{
  *v0;
  sub_1BF4E89F4();
}

void sub_1BF445B8C(void *a1@<X8>)
{
  v2 = *v1;
  if (v2 <= 2)
  {
    v8 = 0xE300000000000000;
    v9 = 0xE100000000000000;
    v10 = 48;
    if (v2 != 1)
    {
      v10 = 12589;
      v9 = 0xE200000000000000;
    }

    v11 = v2 == 0;
    if (*v1)
    {
      v12 = v10;
    }

    else
    {
      v12 = 7105633;
    }

    if (!v11)
    {
      v8 = v9;
    }

    *a1 = v12;
    a1[1] = v8;
  }

  else
  {
    v3 = 0xD000000000000010;
    v4 = 0x80000001BF4F83B0;
    if (v2 != 5)
    {
      v3 = 0xD00000000000001CLL;
      v4 = 0x80000001BF4F83D0;
    }

    v5 = 0x80000001BF4F8370;
    if (v2 != 3)
    {
      v5 = 0x80000001BF4F8390;
    }

    if (*v1 <= 4u)
    {
      v6 = 0xD000000000000010;
    }

    else
    {
      v6 = v3;
    }

    if (*v1 <= 4u)
    {
      v7 = v5;
    }

    else
    {
      v7 = v4;
    }

    *a1 = v6;
    a1[1] = v7;
  }
}

unint64_t TapToRadarDraft.TapToRadarError.errorDescription.getter()
{
  v1 = 0xD00000000000001DLL;
  if (*v0 != 1)
  {
    v1 = 0xD00000000000002DLL;
  }

  if (*v0)
  {
    result = v1;
  }

  else
  {
    result = 0xD000000000000028;
  }

  *v0;
  return result;
}

uint64_t TapToRadarDraft.TapToRadarError.hashValue.getter()
{
  v1 = *v0;
  sub_1BF4E9804();
  MEMORY[0x1BFB59A70](v1);
  return sub_1BF4E9844();
}

unint64_t sub_1BF445D40()
{
  v1 = 0xD00000000000001DLL;
  if (*v0 != 1)
  {
    v1 = 0xD00000000000002DLL;
  }

  if (*v0)
  {
    result = v1;
  }

  else
  {
    result = 0xD000000000000028;
  }

  *v0;
  return result;
}

uint64_t sub_1BF445D98@<X0>(unsigned __int8 a1@<W2>, uint64_t a2@<X8>)
{
  if (a1 > 9u)
  {
    v3 = 1;
  }

  else
  {
    sub_1BF4E6E44();

    v3 = 0;
  }

  v4 = sub_1BF4E6E54();
  v5 = *(*(v4 - 8) + 56);

  return v5(a2, v3, 1, v4);
}

uint64_t sub_1BF445F8C@<X0>(unsigned __int8 a1@<W2>, uint64_t a2@<X8>)
{
  if (a1 > 5u)
  {
    v3 = 1;
  }

  else
  {
    sub_1BF4E6E44();

    v3 = 0;
  }

  v4 = sub_1BF4E6E54();
  v5 = *(*(v4 - 8) + 56);

  return v5(a2, v3, 1, v4);
}

uint64_t sub_1BF4460E4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9B00, &qword_1BF4F1E50);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v23 - v6;
  v8 = sub_1BF4E7334();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9350, &qword_1BF4F0C80);
  sub_1BF38C94C(v2 + *(v13 + 36), v7, &qword_1EBDD9B00, &qword_1BF4F1E50);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_1BF38C9B4(v7, &qword_1EBDD9B00, &qword_1BF4F1E50);
    v14 = 1;
  }

  else
  {
    (*(v9 + 32))(v12, v7, v8);
    v15 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
    v16 = sub_1BF4E88E4();
    [v15 setDateFormat_];

    [v15 setDoesRelativeDateFormatting_];
    v17 = sub_1BF4E7254();
    v18 = [v15 stringFromDate_];

    sub_1BF4E8914();
    (*(v9 + 8))(v12, v8);
    v19 = *v2;
    v20 = v2[1];
    sub_1BF4E6E44();

    v14 = 0;
  }

  v21 = sub_1BF4E6E54();
  return (*(*(v21 - 8) + 56))(a1, v14, 1, v21);
}

uint64_t URLParameter.queryItem.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 36);
  (*(*(a1 + 24) + 8))(*(a1 + 16));
  if (v5)
  {
    v6 = *v2;
    v7 = v2[1];
    sub_1BF4E6E44();

    v8 = 0;
  }

  else
  {
    v8 = 1;
  }

  v9 = sub_1BF4E6E54();
  v10 = *(*(v9 - 8) + 56);

  return v10(a2, v8, 1, v9);
}

uint64_t Bool.urlParameterValue.getter(char a1)
{
  if (a1)
  {
    return 49;
  }

  else
  {
    return 48;
  }
}

uint64_t sub_1BF44653C()
{
  if (*v0)
  {
    return 49;
  }

  else
  {
    return 48;
  }
}

uint64_t Date.urlParameterValue.getter()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
  v1 = sub_1BF4E88E4();
  [v0 setDateFormat_];

  [v0 setDoesRelativeDateFormatting_];
  v2 = sub_1BF4E7254();
  v3 = [v0 stringFromDate_];

  v4 = sub_1BF4E8914();
  return v4;
}

uint64_t sub_1BF446640(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = MEMORY[0x1E69E7CC0];
  v3 = (a1 + 32);
  do
  {
    v5 = *v3++;
    v4 = v5;
    v6 = v5 == 4;
    v7 = 0x646F50656D6F48;
    if (v5 != 4)
    {
      v7 = 6512973;
    }

    v8 = 0xE300000000000000;
    if (v6)
    {
      v8 = 0xE700000000000000;
    }

    if (v4 == 3)
    {
      v7 = 0x5654656C707041;
      v8 = 0xE700000000000000;
    }

    v9 = 1684099177;
    if (v4 != 1)
    {
      v9 = 0x6863746157;
    }

    v10 = 0xE400000000000000;
    if (v4 != 1)
    {
      v10 = 0xE500000000000000;
    }

    if (!v4)
    {
      v9 = 0x656E6F685069;
      v10 = 0xE600000000000000;
    }

    if (v4 <= 2)
    {
      v11 = v9;
    }

    else
    {
      v11 = v7;
    }

    if (v4 <= 2)
    {
      v12 = v10;
    }

    else
    {
      v12 = v8;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_1BF431F90(0, *(v2 + 2) + 1, 1, v2);
    }

    v14 = *(v2 + 2);
    v13 = *(v2 + 3);
    if (v14 >= v13 >> 1)
    {
      v2 = sub_1BF431F90((v13 > 1), v14 + 1, 1, v2);
    }

    *(v2 + 2) = v14 + 1;
    v15 = &v2[16 * v14];
    *(v15 + 4) = v11;
    *(v15 + 5) = v12;
    --v1;
  }

  while (v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD9BB0, &qword_1BF4EC140);
  sub_1BF3E4AF0();
  v16 = sub_1BF4E8894();

  return v16;
}

uint64_t sub_1BF446800(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = (a1 + 40);
  v3 = MEMORY[0x1E69E7CC0];
  do
  {
    v5 = *(v2 - 1);
    v4 = *v2;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v3 = sub_1BF431F90(0, *(v3 + 2) + 1, 1, v3);
    }

    v7 = *(v3 + 2);
    v6 = *(v3 + 3);
    if (v7 >= v6 >> 1)
    {
      v3 = sub_1BF431F90((v6 > 1), v7 + 1, 1, v3);
    }

    *(v3 + 2) = v7 + 1;
    v8 = &v3[16 * v7];
    *(v8 + 4) = v5;
    *(v8 + 5) = v4;
    v2 += 2;
    --v1;
  }

  while (v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD9BB0, &qword_1BF4EC140);
  sub_1BF3E4AF0();
  v9 = sub_1BF4E8894();

  return v9;
}

uint64_t sub_1BF446930(uint64_t a1)
{
  v25 = sub_1BF4E7194();
  v2 = *(*(v25 - 8) + 64);
  v4.n128_f64[0] = MEMORY[0x1EEE9AC00](v25);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  if (!v7)
  {
    return 0;
  }

  v9 = *(v3 + 16);
  v8 = v3 + 16;
  v10 = a1 + ((*(v8 + 64) + 32) & ~*(v8 + 64));
  v23 = *(v8 + 56);
  v24 = v9;
  v11 = (v8 - 8);
  v12 = MEMORY[0x1E69E7CC0];
  do
  {
    v13 = v25;
    v14 = v8;
    v24(v6, v10, v25, v4);
    v15 = sub_1BF4E7164();
    v17 = v16;
    (*v11)(v6, v13);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v12 = sub_1BF431F90(0, *(v12 + 2) + 1, 1, v12);
    }

    v19 = *(v12 + 2);
    v18 = *(v12 + 3);
    if (v19 >= v18 >> 1)
    {
      v12 = sub_1BF431F90((v18 > 1), v19 + 1, 1, v12);
    }

    *(v12 + 2) = v19 + 1;
    v20 = &v12[16 * v19];
    *(v20 + 4) = v15;
    *(v20 + 5) = v17;
    v10 += v23;
    --v7;
    v8 = v14;
  }

  while (v7);
  v26 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD9BB0, &qword_1BF4EC140);
  sub_1BF3E4AF0();
  v21 = sub_1BF4E8894();

  return v21;
}

uint64_t sub_1BF446B44(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = (a1 + 32);
  v3 = MEMORY[0x1E69E7CC0];
  do
  {
    v4 = *v2++;
    v5 = sub_1BF4E96A4();
    v7 = v6;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v3 = sub_1BF431F90(0, *(v3 + 2) + 1, 1, v3);
    }

    v9 = *(v3 + 2);
    v8 = *(v3 + 3);
    if (v9 >= v8 >> 1)
    {
      v3 = sub_1BF431F90((v8 > 1), v9 + 1, 1, v3);
    }

    *(v3 + 2) = v9 + 1;
    v10 = &v3[16 * v9];
    *(v10 + 4) = v5;
    *(v10 + 5) = v7;
    --v1;
  }

  while (v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD9BB0, &qword_1BF4EC140);
  sub_1BF3E4AF0();
  v11 = sub_1BF4E8894();

  return v11;
}

uint64_t Array<A>.urlParameterValue.getter()
{
  sub_1BF4E8CA4();
  swift_getWitnessTable();
  v0 = sub_1BF4E8DE4();
  result = 0;
  if ((v0 & 1) == 0)
  {
    MEMORY[0x1EEE9AC00](0);
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    swift_getWitnessTable();
    sub_1BF4E8AD4();

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD9BB0, &qword_1BF4EC140);
    sub_1BF3E4AF0();
    v3 = sub_1BF4E8894();

    return v3;
  }

  return result;
}

uint64_t sub_1BF446E3C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 - 8);
  v4 = *v2;
  v5 = *(a1 + 16);
  return Array<A>.urlParameterValue.getter();
}

uint64_t Optional<A>.urlParameterValue.getter(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00]();
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v6 + 16);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00]();
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v8, v14, a1);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    (*(v4 + 8))(v8, a1);
    return 0;
  }

  else
  {
    (*(v10 + 32))(v13, v8, v9);
    v16 = (*(a2 + 8))(v9, a2);
    (*(v10 + 8))(v13, v9);
    return v16;
  }
}

uint64_t URLParameter.parameter.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t (*URLParameter.wrappedValue.modify(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 36);
  return result;
}

uint64_t URLParameter.init(_:defaultValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = a1;
  a5[1] = a2;
  v8 = type metadata accessor for URLParameter();
  v9 = *(*(a4 - 8) + 32);
  v10 = a5 + *(v8 + 36);

  return v9(v10, a3, a4);
}

uint64_t URLParameter<>.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v8 = *(a3 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BF4E96B4();
  *a4 = a1;
  *(a4 + 1) = a2;
  v12 = type metadata accessor for URLParameter();
  return (*(v8 + 32))(&a4[*(v12 + 36)], v11, a3);
}

double sub_1BF447298()
{
  *&result = 1495804;
  xmmword_1EBDE1E60 = xmmword_1BF4F0C70;
  qword_1EBDE1E70 = 0xE600000000000000;
  unk_1EBDE1E78 = 0x65746F6D6552;
  qword_1EBDE1E80 = 0xE600000000000000;
  return result;
}

unint64_t sub_1BF447310()
{
  result = qword_1EBDD9368;
  if (!qword_1EBDD9368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDD9368);
  }

  return result;
}

unint64_t sub_1BF447368()
{
  result = qword_1EBDD9370;
  if (!qword_1EBDD9370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDD9370);
  }

  return result;
}

unint64_t sub_1BF4473C0()
{
  result = qword_1EBDD9378;
  if (!qword_1EBDD9378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDD9378);
  }

  return result;
}

unint64_t sub_1BF447418()
{
  result = qword_1EBDD9380;
  if (!qword_1EBDD9380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDD9380);
  }

  return result;
}

unint64_t sub_1BF447470()
{
  result = qword_1EBDD9388;
  if (!qword_1EBDD9388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDD9388);
  }

  return result;
}

unint64_t sub_1BF4474C8()
{
  result = qword_1EBDD9390;
  if (!qword_1EBDD9390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDD9390);
  }

  return result;
}

unint64_t sub_1BF44751C()
{
  result = qword_1EBDD9398;
  if (!qword_1EBDD9398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDD9398);
  }

  return result;
}

unint64_t sub_1BF447574()
{
  result = qword_1EBDD93A0;
  if (!qword_1EBDD93A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDD93A0);
  }

  return result;
}

unint64_t sub_1BF4475CC()
{
  result = qword_1EBDD93A8;
  if (!qword_1EBDD93A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDD93A8);
  }

  return result;
}

unint64_t sub_1BF447624()
{
  result = qword_1EBDD93B0;
  if (!qword_1EBDD93B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDD93B0);
  }

  return result;
}

void sub_1BF4476A4()
{
  sub_1BF447ACC(319, &qword_1EBDD93C8, &qword_1EBDD8F68, &unk_1BF4EF420, sub_1BF447A00);
  if (v0 <= 0x3F)
  {
    sub_1BF447A7C();
    if (v1 <= 0x3F)
    {
      sub_1BF447ACC(319, &qword_1EBDD93E0, &qword_1EBDD93E8, &qword_1BF4F13A8, sub_1BF447B3C);
      if (v2 <= 0x3F)
      {
        sub_1BF447ACC(319, &qword_1EBDD93F8, &qword_1EBDD9400, &qword_1BF4F13B0, sub_1BF447BB8);
        if (v3 <= 0x3F)
        {
          sub_1BF447ACC(319, &qword_1EBDD9410, &qword_1EBDD9418, &qword_1BF4F13B8, sub_1BF447C34);
          if (v4 <= 0x3F)
          {
            sub_1BF447ACC(319, &qword_1EBDD9428, &qword_1EBDD9B00, &qword_1BF4F1E50, sub_1BF447CB0);
            if (v5 <= 0x3F)
            {
              sub_1BF447ACC(319, &qword_1EBDD9438, &qword_1EBDD9440, &qword_1BF4F13C0, sub_1BF447D2C);
              if (v6 <= 0x3F)
              {
                sub_1BF447ACC(319, &qword_1EBDD9450, &unk_1EBDD9BB0, &qword_1BF4EC140, sub_1BF447DA8);
                if (v7 <= 0x3F)
                {
                  sub_1BF447EA0(319, &qword_1EBDD9460);
                  if (v8 <= 0x3F)
                  {
                    sub_1BF447ACC(319, &qword_1EBDD9468, &qword_1EBDD9470, &qword_1BF4F13C8, sub_1BF447E24);
                    if (v9 <= 0x3F)
                    {
                      sub_1BF447EA0(319, &qword_1EBDD9480);
                      if (v10 <= 0x3F)
                      {
                        sub_1BF447EA0(319, qword_1EBDD9488);
                        if (v11 <= 0x3F)
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
      }
    }
  }
}

unint64_t sub_1BF447A00()
{
  result = qword_1EBDD93D0;
  if (!qword_1EBDD93D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBDD8F68, &unk_1BF4EF420);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDD93D0);
  }

  return result;
}

void sub_1BF447A7C()
{
  if (!qword_1EBDD93D8)
  {
    v0 = sub_1BF4E90F4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBDD93D8);
    }
  }
}

void sub_1BF447ACC(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, void (*a5)(void))
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    a5();
    v7 = type metadata accessor for URLParameter();
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1BF447B3C()
{
  result = qword_1EBDD93F0;
  if (!qword_1EBDD93F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBDD93E8, &qword_1BF4F13A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDD93F0);
  }

  return result;
}

unint64_t sub_1BF447BB8()
{
  result = qword_1EBDD9408;
  if (!qword_1EBDD9408)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBDD9400, &qword_1BF4F13B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDD9408);
  }

  return result;
}

unint64_t sub_1BF447C34()
{
  result = qword_1EBDD9420;
  if (!qword_1EBDD9420)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBDD9418, &qword_1BF4F13B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDD9420);
  }

  return result;
}

unint64_t sub_1BF447CB0()
{
  result = qword_1EBDD9430;
  if (!qword_1EBDD9430)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBDD9B00, &qword_1BF4F1E50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDD9430);
  }

  return result;
}

unint64_t sub_1BF447D2C()
{
  result = qword_1EBDD9448;
  if (!qword_1EBDD9448)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBDD9440, &qword_1BF4F13C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDD9448);
  }

  return result;
}

unint64_t sub_1BF447DA8()
{
  result = qword_1EBDD9458;
  if (!qword_1EBDD9458)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBDD9BB0, &qword_1BF4EC140);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDD9458);
  }

  return result;
}

unint64_t sub_1BF447E24()
{
  result = qword_1EBDD9478;
  if (!qword_1EBDD9478)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBDD9470, &qword_1BF4F13C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDD9478);
  }

  return result;
}

void sub_1BF447EA0(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = type metadata accessor for URLParameter();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t sub_1BF447EF0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_1BF447F38(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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
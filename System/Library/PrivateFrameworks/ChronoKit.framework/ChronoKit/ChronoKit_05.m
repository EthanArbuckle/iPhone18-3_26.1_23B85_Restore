uint64_t FixedDataProtectionMonitor.__allocating_init(_:)(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8CF8, &qword_1BF4EDA20);
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  *(v5 + 16) = sub_1BF4E7C34();
  v9 = OBJC_IVAR____TtC9ChronoKit26FixedDataProtectionMonitor_maxUnlockedProtectionLevel;
  v10 = sub_1BF4E8424();
  (*(*(v10 - 8) + 32))(v5 + v9, a1, v10);
  return v5;
}

uint64_t FixedDataProtectionMonitor.init(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8CF8, &qword_1BF4EDA20);
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  *(v1 + 16) = sub_1BF4E7C34();
  v7 = OBJC_IVAR____TtC9ChronoKit26FixedDataProtectionMonitor_maxUnlockedProtectionLevel;
  v8 = sub_1BF4E8424();
  (*(*(v8 - 8) + 32))(v2 + v7, a1, v8);
  return v2;
}

uint64_t sub_1BF400874@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9ChronoKit26FixedDataProtectionMonitor_maxUnlockedProtectionLevel;
  swift_beginAccess();
  v4 = sub_1BF4E8424();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t FixedDataProtectionMonitor.deinit()
{
  v1 = *(v0 + 16);

  v2 = OBJC_IVAR____TtC9ChronoKit26FixedDataProtectionMonitor_maxUnlockedProtectionLevel;
  v3 = sub_1BF4E8424();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  return v0;
}

uint64_t FixedDataProtectionMonitor.__deallocating_deinit()
{
  v1 = *(v0 + 2);

  v2 = OBJC_IVAR____TtC9ChronoKit26FixedDataProtectionMonitor_maxUnlockedProtectionLevel;
  v3 = sub_1BF4E8424();
  (*(*(v3 - 8) + 8))(&v0[v2], v3);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1BF400A44@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC9ChronoKit26FixedDataProtectionMonitor_maxUnlockedProtectionLevel;
  swift_beginAccess();
  v5 = sub_1BF4E8424();
  return (*(*(v5 - 8) + 16))(a1, v3 + v4, v5);
}

uint64_t sub_1BF400B00(uint64_t *a1, uint64_t *a2, unint64_t *a3)
{
  v8 = *(v3 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  sub_1BF38C8B4(a3, a1, a2);
  return sub_1BF4E7C84();
}

uint64_t sub_1BF400B78@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, uint64_t a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  swift_beginAccess();
  v6 = sub_1BF4E8424();
  return (*(*(v6 - 8) + 16))(a3, v4 + v5, v6);
}

uint64_t sub_1BF400C00(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5, void (*a6)(char *))
{
  v10 = sub_1BF4E8424();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v25 - v17;
  v19 = *(v11 + 16);
  v19(&v25 - v17, a1, v10, v16);
  v20 = *a2;
  v21 = *a5;
  swift_beginAccess();
  (*(v11 + 24))(v20 + v21, v18, v10);
  swift_endAccess();
  v22 = *(v20 + 16);
  (v19)(v14, v20 + v21, v10);
  a6(v14);
  v23 = *(v11 + 8);
  v23(v14, v10);
  return (v23)(v18, v10);
}

uint64_t sub_1BF400DB0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  swift_beginAccess();
  v5 = sub_1BF4E8424();
  return (*(*(v5 - 8) + 16))(a2, v2 + v4, v5);
}

uint64_t sub_1BF400E54(uint64_t a1, uint64_t *a2, void (*a3)(char *))
{
  v7 = sub_1BF4E8424();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a2;
  swift_beginAccess();
  (*(v8 + 24))(v3 + v12, a1, v7);
  swift_endAccess();
  v13 = *(v3 + 16);
  (*(v8 + 16))(v11, v3 + v12, v7);
  a3(v11);
  v14 = *(v8 + 8);
  v14(a1, v7);
  return (v14)(v11, v7);
}

void (*sub_1BF400FB4(uint64_t *a1))(void **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x40uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 24) = v1;
  v6 = sub_1BF4E8424();
  v5[4] = v6;
  v7 = *(v6 - 8);
  v5[5] = v7;
  if (v3)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(*(v7 + 64));
  }

  v9 = OBJC_IVAR____TtC9ChronoKit21DataProtectionMonitor_maxUnlockedProtectionLevel;
  v5[6] = v8;
  v5[7] = v9;
  swift_beginAccess();
  return sub_1BF4010A4;
}

void sub_1BF4010BC(void **a1, char a2, void (*a3)(void *))
{
  v5 = *a1;
  swift_endAccess();
  v6 = v5[6];
  if ((a2 & 1) == 0)
  {
    v7 = v5[4];
    v8 = v5[5];
    v9 = v5[3];
    v10 = *(v9 + 16);
    (*(v8 + 16))(v5[6], v9 + v5[7], v7);
    a3(v6);
    (*(v8 + 8))(v6, v7);
  }

  free(v6);

  free(v5);
}

uint64_t DataProtectionMonitor.deinit()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC9ChronoKit21DataProtectionMonitor_token;
  if (*(v0 + OBJC_IVAR____TtC9ChronoKit21DataProtectionMonitor_token))
  {

    sub_1BF4E7BD4();
  }

  v3 = *(v0 + 16);

  v4 = OBJC_IVAR____TtC9ChronoKit21DataProtectionMonitor_maxUnlockedProtectionLevel;
  v5 = sub_1BF4E8424();
  (*(*(v5 - 8) + 8))(v1 + v4, v5);
  __swift_destroy_boxed_opaque_existential_1Tm((v1 + OBJC_IVAR____TtC9ChronoKit21DataProtectionMonitor_keybagStateProvider));
  v6 = *(v1 + v2);

  return v1;
}

uint64_t DataProtectionMonitor.__deallocating_deinit()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC9ChronoKit21DataProtectionMonitor_token;
  if (*(v0 + OBJC_IVAR____TtC9ChronoKit21DataProtectionMonitor_token))
  {

    sub_1BF4E7BD4();
  }

  v3 = *(v0 + 16);

  v4 = OBJC_IVAR____TtC9ChronoKit21DataProtectionMonitor_maxUnlockedProtectionLevel;
  v5 = sub_1BF4E8424();
  (*(*(v5 - 8) + 8))(v1 + v4, v5);
  __swift_destroy_boxed_opaque_existential_1Tm((v1 + OBJC_IVAR____TtC9ChronoKit21DataProtectionMonitor_keybagStateProvider));
  v6 = *(v1 + v2);

  v7 = *(*v1 + 48);
  v8 = *(*v1 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1BF401350()
{
  result = sub_1BF4E8424();
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

uint64_t Topic.suffixed.getter()
{
  v1 = *v0;
  if (*(v0 + 16))
  {
    v2 = 0xD000000000000012;
  }

  else
  {
    v2 = 0xD000000000000013;
  }

  if (*(v0 + 16))
  {
    v3 = "extensionIdentity: ";
  }

  else
  {
    v3 = "; subscriptionType: ";
  }

  v5 = *v0;
  v6 = v0[1];

  MEMORY[0x1BFB58C90](v2, v3 | 0x8000000000000000);

  return v5;
}

uint64_t static Topic.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a2 + 16);
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8))
  {
    return v2 ^ v3 ^ 1u;
  }

  v5 = sub_1BF4E9734();
  result = 0;
  if (v5)
  {
    return v2 ^ v3 ^ 1u;
  }

  return result;
}

uint64_t Topic.PushType.hashValue.getter()
{
  v1 = *v0;
  sub_1BF4E9804();
  MEMORY[0x1BFB59A70](v1);
  return sub_1BF4E9844();
}

uint64_t Topic.unsuffixed.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

ChronoKit::Topic_optional __swiftcall Topic.init(suffixed:)(Swift::String suffixed)
{
  v2 = v1;
  v3 = sub_1BF4E8A74();
  if (v3 & 1) != 0 || (sub_1BF4E8A74())
  {
    v4 = sub_1BF4E8A04();
    v5 = sub_1BF401A8C(v4);
    v7 = v6;
    v9 = v8;
    v11 = v10;

    v12 = MEMORY[0x1BFB58C30](v5, v7, v9, v11);
    v14 = v13;

    *v2 = v12;
    *(v2 + 8) = v14;
    *(v2 + 16) = (v3 & 1) == 0;
  }

  else
  {

    *v2 = 0;
    *(v2 + 8) = 0;
    *(v2 + 16) = 0;
  }

  result.value.unsuffixed._object = v16;
  result.value.unsuffixed._countAndFlagsBits = v15;
  result.is_nil = v18;
  result.value.pushType = v17;
  return result;
}

uint64_t Topic.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  sub_1BF4E89F4();
  return MEMORY[0x1BFB59A70](v3);
}

uint64_t Topic.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  sub_1BF4E9804();
  sub_1BF4E89F4();
  MEMORY[0x1BFB59A70](v3);
  return sub_1BF4E9844();
}

uint64_t sub_1BF401930(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a2 + 16);
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8))
  {
    return v2 ^ v3 ^ 1u;
  }

  v5 = sub_1BF4E9734();
  result = 0;
  if (v5)
  {
    return v2 ^ v3 ^ 1u;
  }

  return result;
}

uint64_t sub_1BF401990()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  sub_1BF4E9804();
  sub_1BF4E89F4();
  MEMORY[0x1BFB59A70](v3);
  return sub_1BF4E9844();
}

uint64_t sub_1BF4019F4()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  sub_1BF4E89F4();
  return MEMORY[0x1BFB59A70](v3);
}

uint64_t sub_1BF401A2C()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  sub_1BF4E9804();
  sub_1BF4E89F4();
  MEMORY[0x1BFB59A70](v3);
  return sub_1BF4E9844();
}

uint64_t sub_1BF401A8C(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    sub_1BF4E8A24();

    return sub_1BF4E8AA4();
  }

  return result;
}

unint64_t sub_1BF401B2C()
{
  result = qword_1EBDD8D58;
  if (!qword_1EBDD8D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDD8D58);
  }

  return result;
}

unint64_t sub_1BF401B84()
{
  result = qword_1EDC96688[0];
  if (!qword_1EDC96688[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDC96688);
  }

  return result;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_1BF401BEC(uint64_t a1, int a2)
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

uint64_t sub_1BF401C34(uint64_t result, int a2, int a3)
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

uint64_t ConfiguredWidgetMetadataCache.__allocating_init(backingStore:)(uint64_t a1)
{
  v2 = swift_allocObject();
  ConfiguredWidgetMetadataCache.init(backingStore:)(a1);
  return v2;
}

void *ConfiguredWidgetMetadataCache.init(backingStore:)(uint64_t a1)
{
  type metadata accessor for UnfairLock();
  v3 = swift_allocObject();
  v4 = swift_slowAlloc();
  *v4 = 0;
  *(v3 + 16) = v4;
  v1[2] = v3;
  v5 = sub_1BF3DA6BC(MEMORY[0x1E69E7CC0]);
  v1[3] = a1;
  v1[4] = v5;
  v6 = v1[2];
  v7 = *(v6 + 16);

  os_unfair_lock_lock(v7);
  sub_1BF401DA4(v1);
  os_unfair_lock_unlock(*(v6 + 16));

  return v1;
}

void sub_1BF401DA4(void *a1)
{
  v2 = v1;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8D60, &qword_1BF4EDC70);
  v4 = *(*(v75 - 8) + 64);
  MEMORY[0x1EEE9AC00](v75);
  v6 = (v71 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v7);
  v74 = v71 - v8;
  v9 = a1[3];
  if (v9)
  {
    v10 = *(v9 + 40);

    v11 = sub_1BF494854();
    if (v1)
    {

      if (qword_1EDC9D460 != -1)
      {
        swift_once();
      }

      v12 = sub_1BF4E7B54();
      __swift_project_value_buffer(v12, qword_1EDCA6898);
      v13 = v1;
      v14 = sub_1BF4E7B34();
      v15 = sub_1BF4E8E64();

      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        *v16 = 138543362;
        v18 = sub_1BF4E6FE4();
        *(v16 + 4) = v18;
        *v17 = v18;
        _os_log_impl(&dword_1BF389000, v14, v15, "Failed to load cached widget metadata: %{public}@", v16, 0xCu);
        sub_1BF38C9B4(v17, &unk_1EBDD9260, &qword_1BF4EC380);
        MEMORY[0x1BFB5A5D0](v17, -1, -1);
        MEMORY[0x1BFB5A5D0](v16, -1, -1);
      }

      v19 = sub_1BF3DA6BC(MEMORY[0x1E69E7CC0]);
      v20 = a1[4];
      a1[4] = v19;

      os_unfair_lock_assert_owner(*(a1[2] + 16));

      return;
    }

    v22 = v11;

    v21 = v22;
  }

  else
  {
    v21 = sub_1BF3DA6BC(MEMORY[0x1E69E7CC0]);
  }

  v23 = a1[4];
  a1[4] = v21;

  os_unfair_lock_assert_owner(*(a1[2] + 16));
  if (qword_1EDC9D460 != -1)
  {
    goto LABEL_36;
  }

  while (1)
  {
    v24 = sub_1BF4E7B54();
    v25 = __swift_project_value_buffer(v24, qword_1EDCA6898);

    v71[0] = v25;
    v26 = sub_1BF4E7B34();
    v27 = sub_1BF4E8E84();

    v28 = os_log_type_enabled(v26, v27);
    v71[1] = v2;
    if (v28)
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v82 = v30;
      *v29 = 136446210;
      v31 = a1[4];
      sub_1BF4E7334();

      v32 = v6;
      v33 = sub_1BF4E8774();
      v35 = v34;

      v36 = v33;
      v6 = v32;
      v37 = sub_1BF38D65C(v36, v35, &v82);

      *(v29 + 4) = v37;
      _os_log_impl(&dword_1BF389000, v26, v27, "Start dates for widget ids: %{public}s", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v30);
      MEMORY[0x1BFB5A5D0](v30, -1, -1);
      MEMORY[0x1BFB5A5D0](v29, -1, -1);
    }

    v38 = a1[4];
    v39 = *(v38 + 16);
    a1 = MEMORY[0x1E69E7CC0];
    if (!v39)
    {
      break;
    }

    v84 = MEMORY[0x1E69E7CC0];

    sub_1BF3A31DC(0, v39, 0);
    a1 = v84;
    v40 = v38 + 64;
    v41 = -1 << *(v38 + 32);
    v2 = sub_1BF4E91B4();
    v72 = v38 + 64;
    v73 = v38;
    while ((v2 & 0x8000000000000000) == 0 && v2 < 1 << *(v38 + 32))
    {
      if ((*(v40 + 8 * (v2 >> 6)) & (1 << v2)) == 0)
      {
        goto LABEL_32;
      }

      v78 = 1 << v2;
      v79 = v2 >> 6;
      v76 = v39;
      v81 = a1;
      v77 = *(v38 + 36);
      v42 = v75;
      v43 = *(v75 + 48);
      v44 = *(v38 + 56);
      v45 = (*(v38 + 48) + 16 * v2);
      v47 = *v45;
      v46 = v45[1];
      v48 = sub_1BF4E7334();
      v49 = *(v48 - 8);
      v50 = *(v49 + 72);
      v80 = v2;
      v51 = v44 + v50 * v2;
      v2 = v74;
      (*(v49 + 16))(&v74[v43], v51, v48);
      *v6 = v47;
      v6[1] = v46;
      (*(v49 + 32))(v6 + *(v42 + 48), v2 + v43, v48);
      v82 = v47;
      v83 = v46;
      swift_bridgeObjectRetain_n();
      MEMORY[0x1BFB58C90](2108704, 0xE300000000000000);
      if (qword_1EDC9F0F0 != -1)
      {
        swift_once();
      }

      v52 = qword_1EDC9F0F8;
      v53 = sub_1BF4E7254();
      v54 = [v52 stringFromDate_];

      v55 = sub_1BF4E8914();
      v57 = v56;

      MEMORY[0x1BFB58C90](v55, v57);

      v58 = v82;
      v59 = v83;
      sub_1BF38C9B4(v6, &qword_1EBDD8D60, &qword_1BF4EDC70);
      a1 = v81;
      v84 = v81;
      v61 = v81[2];
      v60 = v81[3];
      if (v61 >= v60 >> 1)
      {
        sub_1BF3A31DC((v60 > 1), v61 + 1, 1);
        a1 = v84;
      }

      a1[2] = v61 + 1;
      v62 = &a1[2 * v61];
      v62[4] = v58;
      v62[5] = v59;
      v38 = v73;
      if (v80 >= -(-1 << *(v73 + 32)))
      {
        goto LABEL_33;
      }

      v40 = v72;
      if ((*(v72 + 8 * v79) & v78) == 0)
      {
        goto LABEL_34;
      }

      if (v77 != *(v73 + 36))
      {
        goto LABEL_35;
      }

      v2 = sub_1BF4E91D4();
      v39 = v76 - 1;
      if (v76 == 1)
      {

        goto LABEL_27;
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    swift_once();
  }

LABEL_27:

  v63 = sub_1BF4E7B34();
  v64 = sub_1BF4E8E84();

  if (os_log_type_enabled(v63, v64))
  {
    v65 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    v82 = v66;
    *v65 = 136446210;
    v67 = MEMORY[0x1BFB58E10](a1, MEMORY[0x1E69E6158]);
    v69 = v68;

    v70 = sub_1BF38D65C(v67, v69, &v82);

    *(v65 + 4) = v70;
    _os_log_impl(&dword_1BF389000, v63, v64, "Loaded cached widget metadata: %{public}s", v65, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v66);
    MEMORY[0x1BFB5A5D0](v66, -1, -1);
    MEMORY[0x1BFB5A5D0](v65, -1, -1);
  }

  else
  {
  }
}

void sub_1BF402580(unint64_t a1)
{
  v3 = *(v1 + 16);
  os_unfair_lock_lock(*(v3 + 16));
  sub_1BF4025F8(v1, a1);
  v4 = *(v3 + 16);

  os_unfair_lock_unlock(v4);
}

uint64_t sub_1BF4025F8(uint64_t a1, unint64_t a2)
{
  isUniquelyReferenced_nonNull_native = sub_1BF4E7334();
  v86 = *(isUniquelyReferenced_nonNull_native - 8);
  v6 = *(v86 + 64);
  MEMORY[0x1EEE9AC00](isUniquelyReferenced_nonNull_native);
  v90 = &v78 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v85 = &v78 - v9;
  v10 = *(a1 + 32);

  v94 = sub_1BF432F44(v11);
  v93 = MEMORY[0x1E69E7CC0];

  sub_1BF404EAC(a2, &v94, a1, &v93);
  v78 = a1;
  v79 = v2;

  v12 = &unk_1EDC9D000;
  if (*(v94 + 16))
  {
    if (qword_1EDC9D460 != -1)
    {
      swift_once();
    }

    v13 = sub_1BF4E7B54();
    __swift_project_value_buffer(v13, qword_1EDCA6898);
    v14 = sub_1BF4E7B34();
    v15 = sub_1BF4E8E84();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *v16 = 138543362;

      v18 = sub_1BF4E8D24();

      *(v16 + 4) = v18;
      *v17 = v18;
      _os_log_impl(&dword_1BF389000, v14, v15, "Removing widget metadata entries: %{public}@", v16, 0xCu);
      sub_1BF38C9B4(v17, &unk_1EBDD9260, &qword_1BF4EC380);
      MEMORY[0x1BFB5A5D0](v17, -1, -1);
      MEMORY[0x1BFB5A5D0](v16, -1, -1);
    }
  }

  v19 = v93;
  v20 = (v93 >> 62);
  if (v93 >> 62)
  {
    goto LABEL_58;
  }

  v21 = *((v93 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v21)
  {
    goto LABEL_9;
  }

LABEL_27:
  v40 = *(v78 + 24);
  if (v40)
  {
    MEMORY[0x1EEE9AC00](v21);
    *(&v78 - 2) = &v94;
    *(&v78 - 1) = &v93;
    v41 = *(v40 + 16);
    type metadata accessor for ChronoMetadataStore.MutableStore();
    swift_allocObject();
    v42 = sub_1BF4A4E98();
    v43 = *(v40 + 136);
    os_unfair_lock_lock(*(v43 + 16));
    v44 = *(v40 + 16);

    v45 = v44;
    v46 = v79;
    sub_1BF3E7904(0x6957657461647075, 0xEF74655374656764, v45, sub_1BF405338, (&v78 - 4), v42);
    v20 = v46;

    if (v46)
    {

      v20 = 0;
    }

    os_unfair_lock_unlock(*(v43 + 16));
    sub_1BF48EBD0();
  }

  else
  {
    v20 = v79;
  }

  swift_beginAccess();
  v47 = v93;

  v48 = sub_1BF3DA6BC(MEMORY[0x1E69E7CC0]);
  if (v47 >> 62)
  {
    v49 = sub_1BF4E9204();
    v79 = v20;
    if (v49)
    {
      goto LABEL_34;
    }
  }

  else
  {
    v49 = *((v47 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v79 = v20;
    if (v49)
    {
LABEL_34:
      v12 = 0;
      v83 = v47 & 0xFFFFFFFFFFFFFF8;
      v84 = v47 & 0xC000000000000001;
      v87 = (v86 + 32);
      v80 = v86 + 40;
      v81 = v49;
      v82 = v47;
      do
      {
        if (v84)
        {
          v50 = MEMORY[0x1BFB59570](v12, v47);
          v51 = (v12 + 1);
          if (__OFADD__(v12, 1))
          {
            goto LABEL_54;
          }
        }

        else
        {
          if (v12 >= *(v83 + 16))
          {
            goto LABEL_55;
          }

          v50 = *(v47 + 8 * v12 + 32);
          v51 = (v12 + 1);
          if (__OFADD__(v12, 1))
          {
LABEL_54:
            __break(1u);
LABEL_55:
            __break(1u);
LABEL_56:
            __break(1u);
LABEL_57:
            __break(1u);
LABEL_58:
            v21 = sub_1BF4E9204();
            if (!v21)
            {
              goto LABEL_27;
            }

LABEL_9:
            if (*(v12 + 1120) != -1)
            {
              swift_once();
            }

            v22 = sub_1BF4E7B54();
            __swift_project_value_buffer(v22, qword_1EDCA6898);
            v23 = sub_1BF4E7B34();
            v24 = sub_1BF4E8E84();
            if (!os_log_type_enabled(v23, v24))
            {
              goto LABEL_26;
            }

            v25 = swift_slowAlloc();
            v26 = swift_slowAlloc();
            *v25 = 138543362;
            if (v20)
            {
              v27 = sub_1BF4E9204();
            }

            else
            {
              v27 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            if (!v27)
            {
              goto LABEL_25;
            }

            v83 = v26;
            LODWORD(v84) = v24;
            v87 = v25;
            v88 = v23;
            v89 = isUniquelyReferenced_nonNull_native;
            v92 = MEMORY[0x1E69E7CC0];

            sub_1BF3A31DC(0, v27 & ~(v27 >> 63), 0);
            if ((v27 & 0x8000000000000000) == 0)
            {
              v28 = 0;
              v29 = v92;
              do
              {
                if ((v19 & 0xC000000000000001) != 0)
                {
                  v30 = MEMORY[0x1BFB59570](v28, v19);
                }

                else
                {
                  v30 = *(v19 + 8 * v28 + 32);
                }

                v31 = v30;
                v32 = [v30 uniqueIdentifier];
                v33 = sub_1BF4E8914();
                v35 = v34;

                v92 = v29;
                v37 = *(v29 + 16);
                v36 = *(v29 + 24);
                if (v37 >= v36 >> 1)
                {
                  sub_1BF3A31DC((v36 > 1), v37 + 1, 1);
                  v29 = v92;
                }

                ++v28;
                *(v29 + 16) = v37 + 1;
                v38 = v29 + 16 * v37;
                *(v38 + 32) = v33;
                *(v38 + 40) = v35;
              }

              while (v27 != v28);

              v23 = v88;
              isUniquelyReferenced_nonNull_native = v89;
              v25 = v87;
              LOBYTE(v24) = v84;
              v26 = v83;
LABEL_25:
              v39 = sub_1BF4E8B84();

              *(v25 + 4) = v39;
              *v26 = v39;
              _os_log_impl(&dword_1BF389000, v23, v24, "Added widget metadata entries: %{public}@", v25, 0xCu);
              sub_1BF38C9B4(v26, &unk_1EBDD9260, &qword_1BF4EC380);
              MEMORY[0x1BFB5A5D0](v26, -1, -1);
              MEMORY[0x1BFB5A5D0](v25, -1, -1);
LABEL_26:

              goto LABEL_27;
            }

            __break(1u);
LABEL_64:
            sub_1BF4E9794();
            __break(1u);
LABEL_65:

            __break(1u);
            return result;
          }
        }

        v88 = v51;
        v89 = v50;
        v52 = [v50 uniqueIdentifier];
        v53 = sub_1BF4E8914();
        v55 = v54;

        v56 = v85;
        sub_1BF4E7324();
        v20 = *v87;
        v19 = isUniquelyReferenced_nonNull_native;
        (*v87)(v90, v56, isUniquelyReferenced_nonNull_native);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v91 = v48;
        v58 = sub_1BF3CD5D0(v53, v55);
        v59 = v48[2];
        v60 = (v57 & 1) == 0;
        v61 = v59 + v60;
        if (__OFADD__(v59, v60))
        {
          goto LABEL_56;
        }

        v62 = v57;
        if (v48[3] >= v61)
        {
          if (isUniquelyReferenced_nonNull_native)
          {
            isUniquelyReferenced_nonNull_native = v19;
            if (v57)
            {
              goto LABEL_35;
            }
          }

          else
          {
            sub_1BF4A2AB4();
            isUniquelyReferenced_nonNull_native = v19;
            if (v62)
            {
              goto LABEL_35;
            }
          }
        }

        else
        {
          sub_1BF49E664(v61, isUniquelyReferenced_nonNull_native);
          v63 = sub_1BF3CD5D0(v53, v55);
          if ((v62 & 1) != (v64 & 1))
          {
            goto LABEL_64;
          }

          v58 = v63;
          isUniquelyReferenced_nonNull_native = v19;
          if (v62)
          {
LABEL_35:

            v48 = v91;
            (*(v86 + 40))(v91[7] + *(v86 + 72) * v58, v90, isUniquelyReferenced_nonNull_native);

            goto LABEL_36;
          }
        }

        v65 = v90;
        v48 = v91;
        v91[(v58 >> 6) + 8] |= 1 << v58;
        v66 = (v48[6] + 16 * v58);
        *v66 = v53;
        v66[1] = v55;
        v20((v48[7] + *(v86 + 72) * v58), v65, isUniquelyReferenced_nonNull_native);

        v67 = v48[2];
        v68 = __OFADD__(v67, 1);
        v69 = v67 + 1;
        if (v68)
        {
          goto LABEL_57;
        }

        v48[2] = v69;
LABEL_36:
        ++v12;
        v47 = v82;
      }

      while (v88 != v81);
    }
  }

  v70 = v78;
  v71 = *(v78 + 32);

  v73 = v79;
  v74 = sub_1BF403F44(v72, &v94);

  v75 = swift_isUniquelyReferenced_nonNull_native();
  v91 = v74;
  sub_1BF404FB0(v48, sub_1BF404230, 0, v75, &v91);
  if (v73)
  {
    goto LABEL_65;
  }

  v76 = *(v70 + 32);
  *(v70 + 32) = v91;

  os_unfair_lock_assert_owner(*(*(v70 + 16) + 16));
}

uint64_t sub_1BF402F44(void **a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9B00, &qword_1BF4F1E50);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v7 - 8);
  v11 = &v33 - v10;
  v12 = *a1;
  v13 = [v12 uniqueIdentifier];
  v14 = sub_1BF4E8914();
  v16 = v15;

  sub_1BF4DAC9C(v14, v16);

  v17 = [v12 uniqueIdentifier];
  v18 = sub_1BF4E8914();
  v20 = v19;

  v21 = *(a3 + 32);
  if (*(v21 + 16) && (v22 = *(a3 + 32), , v23 = sub_1BF3CD5D0(v18, v20), v25 = v24, , (v25 & 1) != 0))
  {
    v26 = *(v21 + 56);
    v27 = sub_1BF4E7334();
    v28 = *(v27 - 8);
    (*(v28 + 16))(v11, v26 + *(v28 + 72) * v23, v27);

    (*(v28 + 56))(v11, 0, 1, v27);
    return sub_1BF38C9B4(v11, &qword_1EBDD9B00, &qword_1BF4F1E50);
  }

  else
  {

    v30 = sub_1BF4E7334();
    (*(*(v30 - 8) + 56))(v11, 1, 1, v30);
    sub_1BF38C9B4(v11, &qword_1EBDD9B00, &qword_1BF4F1E50);
    v31 = v12;
    MEMORY[0x1BFB58DD0]();
    if (*((*a4 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v32 = *((*a4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_1BF4E8BE4();
    }

    return sub_1BF4E8C24();
  }
}

uint64_t sub_1BF40321C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v45 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9B00, &qword_1BF4F1E50);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v47 = &v40 - v9;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD91A0, &unk_1BF4EC4E0);
  v41 = *(v44 - 8);
  v10 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v44);
  v46 = &v40 - v11;
  swift_beginAccess();
  v12 = *a2;
  v13 = *a2 + 56;
  v14 = 1 << *(*a2 + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & *(*a2 + 56);
  v17 = (v14 + 63) >> 6;

  v18 = 0;
  if (v16)
  {
    while (1)
    {
      v19 = v18;
LABEL_8:
      v20 = (*(v12 + 48) + ((v19 << 10) | (16 * __clz(__rbit64(v16)))));
      v21 = *v20;
      v22 = v20[1];
      v23 = *(v45 + 32);

      sub_1BF4956D4(v21, v22);
      if (v4)
      {
        break;
      }

      v16 &= v16 - 1;

      v18 = v19;
      if (!v16)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
    while (1)
    {
LABEL_5:
      v19 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v19 >= v17)
      {
        break;
      }

      v16 = *(v13 + 8 * v19);
      ++v18;
      if (v16)
      {
        goto LABEL_8;
      }
    }

    v48 = v4;

    swift_beginAccess();
    v4 = *a3;
    if (*a3 >> 62)
    {
      goto LABEL_29;
    }

    for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1BF4E9204())
    {
      v25 = v46;

      if (!i)
      {
        break;
      }

      v26 = 0;
      v42 = v4 & 0xFFFFFFFFFFFFFF8;
      v43 = v4 & 0xC000000000000001;
      v41 += 8;
      while (1)
      {
        if (v43)
        {
          v27 = MEMORY[0x1BFB59570](v26, v4);
        }

        else
        {
          if (v26 >= *(v42 + 16))
          {
            goto LABEL_28;
          }

          v27 = *(v4 + 8 * v26 + 32);
        }

        v28 = v27;
        v29 = v26 + 1;
        if (__OFADD__(v26, 1))
        {
          break;
        }

        v46 = *(v45 + 32);
        v30 = [v27 extensionIdentity];
        sub_1BF4E9024();

        v31 = [v28 uniqueIdentifier];
        v32 = sub_1BF4E8914();
        v34 = v33;

        v35 = sub_1BF4E7334();
        (*(*(v35 - 8) + 56))(v47, 1, 1, v35);
        v36 = v32;
        v37 = v47;
        v38 = v48;
        sub_1BF494D14(v25, v36, v34, v47);
        v48 = v38;
        if (v38)
        {

          sub_1BF38C9B4(v37, &qword_1EBDD9B00, &qword_1BF4F1E50);
          return (*v41)(v25, v44);
        }

        sub_1BF38C9B4(v37, &qword_1EBDD9B00, &qword_1BF4F1E50);
        (*v41)(v25, v44);
        ++v26;
        if (v29 == i)
        {
        }
      }

LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      ;
    }
  }
}

uint64_t sub_1BF403668()
{
  v0 = sub_1BF4E7334();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BF4E7294();
  v5 = sub_1BF403748(v4);
  (*(v1 + 8))(v4, v0);
  return v5;
}

uint64_t sub_1BF403748(uint64_t a1)
{
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8D60, &qword_1BF4EDC70);
  v3 = *(*(v57 - 8) + 64);
  MEMORY[0x1EEE9AC00](v57);
  v56 = (&v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v5);
  v55 = (&v48 - v6);
  MEMORY[0x1EEE9AC00](v7);
  v54 = &v48 - v8;
  v9 = *(v1 + 16);
  os_unfair_lock_lock(*(v9 + 16));
  v10 = *(v1 + 32);
  v63 = a1;

  sub_1BF4040B0(sub_1BF404D88, v62, v10);
  v12 = v11;

  v13 = *(v12 + 16);
  if (v13)
  {
    v49 = v9;
    v64 = MEMORY[0x1E69E7CC0];
    sub_1BF3A31DC(0, v13, 0);
    v14 = v64;
    v15 = v12 + 64;
    v16 = -1 << *(v12 + 32);
    result = sub_1BF4E91B4();
    v18 = result;
    v19 = 0;
    v50 = v12 + 72;
    v51 = v13;
    v52 = v12 + 64;
    v53 = v12;
    while ((v18 & 0x8000000000000000) == 0 && v18 < 1 << *(v12 + 32))
    {
      v21 = v18 >> 6;
      if ((*(v15 + 8 * (v18 >> 6)) & (1 << v18)) == 0)
      {
        goto LABEL_23;
      }

      v58 = v19;
      v59 = *(v12 + 36);
      v60 = 1 << v18;
      v22 = v57;
      v23 = *(v57 + 48);
      v24 = *(v12 + 56);
      v25 = (*(v12 + 48) + 16 * v18);
      v61 = v14;
      v26 = *v25;
      v27 = v25[1];
      v28 = sub_1BF4E7334();
      v29 = *(v28 - 8);
      v30 = v54;
      (*(v29 + 16))(&v54[v23], v24 + *(v29 + 72) * v18, v28);
      v31 = v55;
      *v55 = v26;
      *(v31 + 8) = v27;
      (*(v29 + 32))(v31 + *(v22 + 48), &v30[v23], v28);
      v32 = v56;
      sub_1BF405354(v31, v56, &qword_1EBDD8D60, &qword_1BF4EDC70);
      v33 = *v32;
      v34 = v32[1];
      v35 = *(v22 + 48);
      v36 = *(v29 + 8);

      v37 = v32 + v35;
      v14 = v61;
      result = v36(v37, v28);
      v64 = v14;
      v39 = *(v14 + 16);
      v38 = *(v14 + 24);
      if (v39 >= v38 >> 1)
      {
        result = sub_1BF3A31DC((v38 > 1), v39 + 1, 1);
        v14 = v64;
      }

      *(v14 + 16) = v39 + 1;
      v40 = v14 + 16 * v39;
      *(v40 + 32) = v33;
      *(v40 + 40) = v34;
      v12 = v53;
      v20 = 1 << *(v53 + 32);
      if (v18 >= v20)
      {
        goto LABEL_24;
      }

      v15 = v52;
      v41 = *(v52 + 8 * v21);
      if ((v41 & v60) == 0)
      {
        goto LABEL_25;
      }

      if (v59 != *(v53 + 36))
      {
        goto LABEL_26;
      }

      v42 = v41 & (-2 << (v18 & 0x3F));
      if (v42)
      {
        v20 = __clz(__rbit64(v42)) | v18 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v43 = v21 << 6;
        v44 = v21 + 1;
        v45 = (v50 + 8 * v21);
        while (v44 < (v20 + 63) >> 6)
        {
          v47 = *v45++;
          v46 = v47;
          v43 += 64;
          ++v44;
          if (v47)
          {
            result = sub_1BF404DA8(v18, v59, 0);
            v20 = __clz(__rbit64(v46)) + v43;
            goto LABEL_4;
          }
        }

        result = sub_1BF404DA8(v18, v59, 0);
      }

LABEL_4:
      v19 = v58 + 1;
      v18 = v20;
      if (v58 + 1 == v51)
      {

        v9 = v49;
        goto LABEL_21;
      }
    }

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

  else
  {

    v14 = MEMORY[0x1E69E7CC0];
LABEL_21:
    os_unfair_lock_unlock(*(v9 + 16));
    return v14;
  }

  return result;
}

uint64_t sub_1BF403B74(uint64_t *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8D60, &qword_1BF4EDC70);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v15 - v6;
  v8 = *a1;
  v9 = a1[1];
  *v7 = v8;
  *(v7 + 1) = v9;
  v11 = *(v10 + 56);
  v12 = sub_1BF4E7334();
  (*(*(v12 - 8) + 16))(&v7[v11], a2, v12);

  v13 = sub_1BF4E7264();
  sub_1BF38C9B4(v7, &qword_1EBDD8D60, &qword_1BF4EDC70);
  return v13 & 1;
}

void *ConfiguredWidgetMetadataCache.deinit()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  return v0;
}

uint64_t ConfiguredWidgetMetadataCache.__deallocating_deinit()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  return swift_deallocClassInstance();
}

uint64_t sub_1BF403D24()
{
  v1 = sub_1BF4E7334();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v0;
  sub_1BF4E7294();
  v7 = sub_1BF403748(v5);
  (*(v2 + 8))(v5, v1);
  return v7;
}

void *sub_1BF403E2C(void *result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    v8 = sub_1BF4042EC(result, a2, a3, a4);

    return v8;
  }

  return result;
}

void *sub_1BF403EB4(void *result, uint64_t a2, void *a3, uint64_t (*a4)(void *, char *))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    sub_1BF404730(result, a2, a3, a4);
    v9 = v8;

    return v9;
  }

  return result;
}

uint64_t sub_1BF403F44(uint64_t a1, uint64_t *a2)
{
  v4 = a1;
  v13[1] = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 32);
  v6 = ((1 << v5) + 63) >> 6;
  if ((v5 & 0x3Fu) <= 0xD)
  {
LABEL_2:
    MEMORY[0x1EEE9AC00](a1);
    v8 = v13 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v8, v7);
    result = sub_1BF4042EC(v8, v6, v4, a2);
    if (v2)
    {
      result = swift_willThrow();
    }

    goto LABEL_4;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

    goto LABEL_2;
  }

  v11 = swift_slowAlloc();
  v12 = sub_1BF403E2C(v11, v6, v4, a2);
  result = MEMORY[0x1BFB5A5D0](v11, -1, -1);
  if (!v2)
  {
    result = v12;
  }

LABEL_4:
  v10 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1BF4040B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v12[1] = *MEMORY[0x1E69E9840];
  v6 = *(a3 + 32);
  v7 = ((1 << v6) + 63) >> 6;
  if ((v6 & 0x3Fu) > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v11 = swift_slowAlloc();
      sub_1BF403EB4(v11, v7, a3, v5);
      MEMORY[0x1BFB5A5D0](v11, -1, -1);
      goto LABEL_4;
    }
  }

  MEMORY[0x1EEE9AC00](a1);
  v9 = v12 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0);
  bzero(v9, v8);
  sub_1BF404730(v9, v7, a3, v5);
  if (v3)
  {
    swift_willThrow();
  }

LABEL_4:
  v10 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1BF404230@<X0>(char *a1@<X0>, char *a2@<X8>)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8D60, &qword_1BF4EDC70) + 48);
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD87B0, &qword_1BF4EDD20) + 48);
  v7 = *a1;
  v6 = *(a1 + 1);
  v8 = sub_1BF4E7334();
  (*(*(v8 - 8) + 16))(&a2[v5], &a1[v4], v8);
  *a2 = v7;
  *(a2 + 1) = v6;
}

uint64_t sub_1BF4042EC(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v42 = a2;
  v44 = a1;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8D60, &qword_1BF4EDC70);
  v6 = *(*(v50 - 8) + 64);
  MEMORY[0x1EEE9AC00](v50);
  v8 = &v41 - v7;
  v9 = sub_1BF4E7334();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v55 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = a3;
  v13 = *(a3 + 64);
  v43 = a3 + 64;
  v14 = 1 << *(a3 + 32);
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  else
  {
    v15 = -1;
  }

  v16 = v15 & v13;
  v51 = a4;
  result = swift_beginAccess();
  v18 = 0;
  v19 = 0;
  v20 = (v14 + 63) >> 6;
  v47 = v10 + 16;
  v48 = v10;
  v46 = (v10 + 8);
  v49 = v9;
LABEL_5:
  v45 = v18;
  while (v16)
  {
    v21 = __clz(__rbit64(v16));
    v54 = (v16 - 1) & v16;
LABEL_14:
    v24 = v21 | (v19 << 6);
    v25 = v53[7];
    v26 = (v53[6] + 16 * v24);
    v28 = *v26;
    v27 = v26[1];
    v29 = *(v48 + 72);
    v52 = v24;
    v30 = *(v48 + 16);
    v31 = v55;
    v30(v55, v25 + v29 * v24, v9);
    *v8 = v28;
    *(v8 + 1) = v27;
    v30(&v8[*(v50 + 48)], v31, v9);
    v32 = *v51;
    if (!*(*v51 + 16))
    {
      swift_bridgeObjectRetain_n();
LABEL_24:
      sub_1BF38C9B4(v8, &qword_1EBDD8D60, &qword_1BF4EDC70);
      v9 = v49;
      (*v46)(v55, v49);

      *(v44 + ((v52 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v52;
      v18 = v45 + 1;
      v16 = v54;
      if (__OFADD__(v45, 1))
      {
        goto LABEL_30;
      }

      goto LABEL_5;
    }

    v33 = v8;
    v34 = *(v32 + 40);
    sub_1BF4E9804();
    swift_bridgeObjectRetain_n();

    sub_1BF4E89F4();
    v35 = sub_1BF4E9844();
    v36 = -1 << *(v32 + 32);
    v37 = v35 & ~v36;
    if (((*(v32 + 56 + ((v37 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v37) & 1) == 0)
    {
LABEL_23:

      v8 = v33;
      goto LABEL_24;
    }

    v38 = ~v36;
    while (1)
    {
      v39 = (*(v32 + 48) + 16 * v37);
      v40 = *v39 == v28 && v39[1] == v27;
      if (v40 || (sub_1BF4E9734() & 1) != 0)
      {
        break;
      }

      v37 = (v37 + 1) & v38;
      if (((*(v32 + 56 + ((v37 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v37) & 1) == 0)
      {
        goto LABEL_23;
      }
    }

    v8 = v33;
    sub_1BF38C9B4(v33, &qword_1EBDD8D60, &qword_1BF4EDC70);
    v9 = v49;
    (*v46)(v55, v49);

    v16 = v54;
  }

  v22 = v19;
  while (1)
  {
    v19 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v19 >= v20)
    {
      return sub_1BF4DA624(v44, v42, v45, v53);
    }

    v23 = *(v43 + 8 * v19);
    ++v22;
    if (v23)
    {
      v21 = __clz(__rbit64(v23));
      v54 = (v23 - 1) & v23;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
  return result;
}

void sub_1BF404730(unint64_t *a1, uint64_t a2, void *a3, uint64_t (*a4)(void *, char *))
{
  v37 = a4;
  v31 = a2;
  v32 = a1;
  v40 = sub_1BF4E7334();
  v5 = *(*(v40 - 8) + 64);
  v7.n128_f64[0] = MEMORY[0x1EEE9AC00](v40);
  v38 = a3;
  v39 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = 0;
  v12 = a3[8];
  v11 = a3 + 8;
  v10 = v12;
  v13 = 1 << *(v11 - 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & v10;
  v16 = (v13 + 63) >> 6;
  v35 = v6 + 16;
  v36 = v6;
  v33 = 0;
  v34 = (v6 + 8);
  while (v15)
  {
    v17 = __clz(__rbit64(v15));
    v15 &= v15 - 1;
    v18 = v17 | (v9 << 6);
    v20 = v39;
    v19 = v40;
LABEL_11:
    v23 = v38[7];
    v24 = (v38[6] + 16 * v18);
    v25 = v24[1];
    v41[0] = *v24;
    v41[1] = v25;
    (*(v36 + 16))(v20, v23 + *(v36 + 72) * v18, v19, v7);

    v26 = v42;
    v27 = v37(v41, v20);
    v28 = v20;
    v42 = v26;
    if (v26)
    {
      (*v34)(v20, v19);

      return;
    }

    v29 = v27;
    (*v34)(v28, v19);

    if (v29)
    {
      *(v32 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      if (__OFADD__(v33++, 1))
      {
        __break(1u);
LABEL_16:
        sub_1BF4DA624(v32, v31, v33, v38);
        return;
      }
    }
  }

  v21 = v9;
  v20 = v39;
  v19 = v40;
  while (1)
  {
    v9 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v9 >= v16)
    {
      goto LABEL_16;
    }

    v22 = v11[v9];
    ++v21;
    if (v22)
    {
      v15 = (v22 - 1) & v22;
      v18 = __clz(__rbit64(v22)) | (v9 << 6);
      goto LABEL_11;
    }
  }

  __break(1u);
}

void sub_1BF4049A4(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8D60, &qword_1BF4EDC70);
  v50 = *(v3 - 8);
  v51 = v3;
  v4 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v46 - v5;
  v49 = sub_1BF4E7334();
  v7 = *(v49 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v49);
  v10 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8D70, &unk_1BF4EDD28);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v53 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16.n128_f64[0] = MEMORY[0x1EEE9AC00](v14);
  v17 = &v46 - v15;
  v18 = *v1;
  v19 = v1[1];
  v21 = v1[2];
  v20 = v1[3];
  v22 = v1[4];
  v46 = v6;
  v52 = v21;
  if (v22)
  {
    v48 = a1;
    v23 = v20;
LABEL_11:
    v47 = (v22 - 1) & v22;
    v27 = __clz(__rbit64(v22)) | (v23 << 6);
    v28 = (*(v18 + 48) + 16 * v27);
    v29 = *v28;
    v30 = v28[1];
    v31 = v49;
    (*(v7 + 16))(v10, *(v18 + 56) + *(v7 + 72) * v27, v49, v16);
    v32 = v51;
    v33 = *(v51 + 48);
    *v17 = v29;
    *(v17 + 1) = v30;
    v34 = v10;
    v35 = v32;
    (*(v7 + 32))(&v17[v33], v34, v31);
    v36 = v50;
    (*(v50 + 56))(v17, 0, 1, v35);

    v37 = v47;
    a1 = v48;
    v26 = v23;
    v38 = v36;
LABEL_12:
    *v1 = v18;
    v1[1] = v19;
    v39 = v53;
    v1[2] = v52;
    v1[3] = v26;
    v1[4] = v37;
    v40 = v1[5];
    v41 = v1[6];
    sub_1BF405354(v17, v39, &qword_1EBDD8D70, &unk_1BF4EDD28);
    v42 = 1;
    if ((*(v38 + 48))(v39, 1, v35) != 1)
    {
      v43 = v39;
      v44 = v46;
      sub_1BF405354(v43, v46, &qword_1EBDD8D60, &qword_1BF4EDC70);
      v40(v44);
      sub_1BF38C9B4(v44, &qword_1EBDD8D60, &qword_1BF4EDC70);
      v42 = 0;
    }

    v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD87B0, &qword_1BF4EDD20);
    (*(*(v45 - 8) + 56))(a1, v42, 1, v45);
  }

  else
  {
    v24 = (v21 + 64) >> 6;
    if (v24 <= v20 + 1)
    {
      v25 = v20 + 1;
    }

    else
    {
      v25 = (v21 + 64) >> 6;
    }

    v26 = v25 - 1;
    while (1)
    {
      v23 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v23 >= v24)
      {
        v38 = v50;
        v35 = v51;
        (*(v50 + 56))(&v46 - v15, 1, 1, v51, v16);
        v37 = 0;
        goto LABEL_12;
      }

      v22 = *(v19 + 8 * v23);
      ++v20;
      if (v22)
      {
        v48 = a1;
        goto LABEL_11;
      }
    }

    __break(1u);
  }
}

uint64_t sub_1BF404DA8(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

void sub_1BF404EAC(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a1 >> 62)
  {
    goto LABEL_14;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1BF4E9204())
  {
    v8 = 0;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x1BFB59570](v8, a1);
      }

      else
      {
        if (v8 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_13;
        }

        v9 = *(a1 + 8 * v8 + 32);
      }

      v10 = v9;
      v11 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      v14 = v9;
      sub_1BF402F44(&v14, a2, a3, a4);

      if (!v4)
      {
        ++v8;
        if (v11 != i)
        {
          continue;
        }
      }

      return;
    }

    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    ;
  }
}

uint64_t sub_1BF404FB0(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5)
{
  v60 = a5;
  v9 = sub_1BF4E7334();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8D68, &qword_1BF4EDD18);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = (&v49 - v16);
  v18 = -1 << *(a1 + 32);
  v19 = ~v18;
  v20 = *(a1 + 64);
  v21 = -v18;
  v53 = a1;
  v54 = a1 + 64;
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  else
  {
    v22 = -1;
  }

  v55 = v19;
  v56 = 0;
  v57 = v22 & v20;
  v58 = a2;
  v59 = a3;
  v51 = v10;
  v52 = (v10 + 32);

  v49 = a3;

  for (i = v17; ; v17 = i)
  {
    sub_1BF4049A4(v17);
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD87B0, &qword_1BF4EDD20);
    if ((*(*(v23 - 8) + 48))(v17, 1, v23) == 1)
    {
      goto LABEL_17;
    }

    v24 = *(v23 + 48);
    v25 = *v17;
    v26 = v17[1];
    v27 = *v52;
    v28 = v17 + v24;
    v29 = v13;
    v30 = v9;
    (*v52)(v13, v28, v9);
    v31 = *v60;
    v33 = sub_1BF3CD5D0(v25, v26);
    v34 = *(v31 + 16);
    v35 = (v32 & 1) == 0;
    v36 = v34 + v35;
    if (__OFADD__(v34, v35))
    {
      break;
    }

    v37 = v32;
    if (*(v31 + 24) >= v36)
    {
      if (a4)
      {
        if (v32)
        {
          goto LABEL_16;
        }
      }

      else
      {
        sub_1BF4A2AB4();
        if (v37)
        {
          goto LABEL_16;
        }
      }
    }

    else
    {
      v38 = v60;
      sub_1BF49E664(v36, a4 & 1);
      v39 = *v38;
      v40 = sub_1BF3CD5D0(v25, v26);
      if ((v37 & 1) != (v41 & 1))
      {
        goto LABEL_20;
      }

      v33 = v40;
      if (v37)
      {
LABEL_16:
        sub_1BF4E9464();
        __break(1u);
LABEL_17:
        sub_1BF39A9CC();
      }
    }

    v42 = *v60;
    *(*v60 + 8 * (v33 >> 6) + 64) |= 1 << v33;
    v43 = (v42[6] + 16 * v33);
    *v43 = v25;
    v43[1] = v26;
    v44 = v42[7] + *(v51 + 72) * v33;
    v13 = v29;
    v9 = v30;
    v27(v44, v29, v30);
    v45 = v42[2];
    v46 = __OFADD__(v45, 1);
    v47 = v45 + 1;
    if (v46)
    {
      goto LABEL_19;
    }

    v42[2] = v47;
    a4 = 1;
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  result = sub_1BF4E9794();
  __break(1u);
  return result;
}

uint64_t sub_1BF405354(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t PowerlogWidgetViewIdentity.init(widget:identifier:inStack:location:suggestionIdentifier:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v8 = *a5;
  v9 = *(a5 + 8);
  *a8 = result;
  *(a8 + 8) = a2;
  *(a8 + 40) = a4;
  *(a8 + 48) = v8;
  *(a8 + 56) = v9;
  *(a8 + 16) = a3;
  *(a8 + 24) = a6;
  *(a8 + 32) = a7;
  return result;
}

uint64_t PowerlogWidgetLocation.logValue.getter()
{
  if (*(v0 + 8) == 1)
  {
    return qword_1BF4EE160[*v0];
  }

  else
  {
    return 3;
  }
}

unint64_t PowerlogWidgetLocation.description.getter()
{
  v1 = *v0;
  if (*(v0 + 8) == 1)
  {
    if (v1 <= 3)
    {
      v7 = 0x6E776F6E6B6E75;
      if (v1 == 2)
      {
        v8 = 0xD000000000000012;
      }

      else
      {
        v8 = 0x657263536B636F6CLL;
      }

      if (v1)
      {
        v7 = 0x6569567961646F74;
      }

      if (v1 <= 1)
      {
        return v7;
      }

      else
      {
        return v8;
      }
    }

    else
    {
      v2 = 1769105779;
      v3 = 0x436C6F72746E6F63;
      if (v1 != 7)
      {
        v3 = 0xD000000000000011;
      }

      if (v1 != 6)
      {
        v2 = v3;
      }

      v4 = 0x746E6569626D61;
      if (v1 != 4)
      {
        v4 = 0x75426E6F69746361;
      }

      if (v1 <= 5)
      {
        return v4;
      }

      else
      {
        return v2;
      }
    }
  }

  else
  {
    sub_1BF4E92E4();

    strcpy(v9, "homescreenPage");
    HIBYTE(v9[1]) = -18;
    v6 = sub_1BF4E96A4();
    MEMORY[0x1BFB58C90](v6);

    return v9[0];
  }
}

uint64_t PowerlogWidgetLocation.hash(into:)()
{
  v1 = *v0;
  if (v0[1])
  {
    v1 = qword_1BF4EE160[v1];
  }

  else
  {
    MEMORY[0x1BFB59A70](3);
  }

  return MEMORY[0x1BFB59A70](v1);
}

BOOL static PowerlogWidgetLocation.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*(a1 + 8))
  {
    v2 = qword_1BF4EE160[v2];
    if (!*(a2 + 8))
    {
      v3 = 3;
      return v2 == v3;
    }
  }

  else
  {
    if ((*(a2 + 8) & 1) == 0)
    {
      return v2 == v3;
    }

    v2 = 3;
  }

  v4 = 7;
  v5 = 8;
  if (v3 != 7)
  {
    v5 = 9;
  }

  if (v3 != 6)
  {
    v4 = v5;
  }

  v6 = 5;
  if (v3 != 4)
  {
    v6 = 6;
  }

  if (v3 <= 5)
  {
    v4 = v6;
  }

  v7 = v3 <= 3;
  if (v3 >= 3)
  {
    v3 = 4;
  }

  if (!v7)
  {
    v3 = v4;
  }

  return v2 == v3;
}

uint64_t PowerlogWidgetLocation.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_1BF4E9804();
  if (v2)
  {
    v1 = qword_1BF4EE160[v1];
  }

  else
  {
    MEMORY[0x1BFB59A70](3);
  }

  MEMORY[0x1BFB59A70](v1);
  return sub_1BF4E9844();
}

uint64_t sub_1BF405724()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_1BF4E9804();
  if (v2)
  {
    v1 = qword_1BF4EE160[v1];
  }

  else
  {
    MEMORY[0x1BFB59A70](3);
  }

  MEMORY[0x1BFB59A70](v1);
  return sub_1BF4E9844();
}

uint64_t sub_1BF405790()
{
  v1 = *v0;
  if (v0[1])
  {
    v1 = qword_1BF4EE160[v1];
  }

  else
  {
    MEMORY[0x1BFB59A70](3);
  }

  return MEMORY[0x1BFB59A70](v1);
}

uint64_t sub_1BF4057E0()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_1BF4E9804();
  if (v2)
  {
    v1 = qword_1BF4EE160[v1];
  }

  else
  {
    MEMORY[0x1BFB59A70](3);
  }

  MEMORY[0x1BFB59A70](v1);
  return sub_1BF4E9844();
}

BOOL sub_1BF405848(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*(a1 + 8))
  {
    v2 = qword_1BF4EE160[v2];
    if (!*(a2 + 8))
    {
      v3 = 3;
      return v2 == v3;
    }
  }

  else
  {
    if ((*(a2 + 8) & 1) == 0)
    {
      return v2 == v3;
    }

    v2 = 3;
  }

  v4 = 7;
  v5 = 8;
  if (v3 != 7)
  {
    v5 = 9;
  }

  if (v3 != 6)
  {
    v4 = v5;
  }

  v6 = 5;
  if (v3 != 4)
  {
    v6 = 6;
  }

  if (v3 <= 5)
  {
    v4 = v6;
  }

  v7 = v3 <= 3;
  if (v3 >= 3)
  {
    v3 = 4;
  }

  if (!v7)
  {
    v3 = v4;
  }

  return v2 == v3;
}

uint64_t PowerlogControlViewIdentity.identifier.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

void PowerlogControlViewIdentity.location.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  *a1 = *(v1 + 24);
  *(a1 + 8) = v2;
}

uint64_t PowerlogControlViewIdentity.description.getter()
{
  v2 = *v0;
  v1 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = *(v0 + 32);
  sub_1BF4E92E4();
  MEMORY[0x1BFB58C90](0xD000000000000024, 0x80000001BF4F9D10);
  v6 = [v2 description];
  v7 = sub_1BF4E8914();
  v9 = v8;

  MEMORY[0x1BFB58C90](v7, v9);

  MEMORY[0x1BFB58C90](0x6669746E65646920, 0xEB000000003D7265);
  MEMORY[0x1BFB58C90](v1, v3);
  MEMORY[0x1BFB58C90](0x6F697461636F6C20, 0xEA00000000003D6ELL);
  v10 = PowerlogWidgetLocation.description.getter();
  MEMORY[0x1BFB58C90](v10);

  MEMORY[0x1BFB58C90](62, 0xE100000000000000);
  return 0;
}

uint64_t PowerlogControlViewIdentity.hash(into:)()
{
  v1 = v0[1];
  v3 = v0[2];
  v2 = v0[3];
  v4 = *(v0 + 32);
  v5 = *(v0 + 33);
  v6 = *v0;
  sub_1BF4E90B4();
  sub_1BF4E89F4();
  if (v4)
  {
    v2 = qword_1BF4EE160[v2];
  }

  else
  {
    MEMORY[0x1BFB59A70](3);
  }

  MEMORY[0x1BFB59A70](v2);
  return sub_1BF4E9824();
}

uint64_t PowerlogControlViewIdentity.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  v5 = *(v0 + 32);
  v6 = *(v0 + 33);
  sub_1BF4E9804();
  sub_1BF4E90B4();
  sub_1BF4E89F4();
  if (v5)
  {
    v3 = qword_1BF4EE160[v3];
  }

  else
  {
    MEMORY[0x1BFB59A70](3);
  }

  MEMORY[0x1BFB59A70](v3);
  sub_1BF4E9824();
  return sub_1BF4E9844();
}

uint64_t sub_1BF405BC4()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

void sub_1BF405BF4(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  *a1 = *(v1 + 24);
  *(a1 + 8) = v2;
}

uint64_t sub_1BF405C0C()
{
  v2 = *v0;
  v3 = *(v0 + 2);
  v4 = *(v0 + 3);
  v5 = *(v0 + 32);
  v6 = *(v0 + 33);
  sub_1BF4E9804();
  PowerlogControlViewIdentity.hash(into:)();
  return sub_1BF4E9844();
}

uint64_t sub_1BF405C74()
{
  v2 = *v0;
  v3 = *(v0 + 2);
  v4 = *(v0 + 3);
  v5 = *(v0 + 32);
  v6 = *(v0 + 33);
  sub_1BF4E9804();
  PowerlogControlViewIdentity.hash(into:)();
  return sub_1BF4E9844();
}

uint64_t PowerlogWidgetViewIdentity.identifier.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t PowerlogWidgetViewIdentity.suggestionIdentifier.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

void PowerlogWidgetViewIdentity.location.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 56);
  *a1 = *(v1 + 48);
  *(a1 + 8) = v2;
}

uint64_t PowerlogWidgetViewIdentity.init(widget:identifier:inStack:location:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t *a5@<X4>, uint64_t a6@<X8>)
{
  v6 = *a5;
  v7 = *(a5 + 8);
  *a6 = result;
  *(a6 + 8) = a2;
  *(a6 + 24) = 0;
  *(a6 + 32) = 0;
  *(a6 + 16) = a3;
  *(a6 + 40) = a4;
  *(a6 + 48) = v6;
  *(a6 + 56) = v7;
  return result;
}

uint64_t PowerlogWidgetViewIdentity.description.getter()
{
  v2 = *v0;
  v1 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = *(v0 + 32);
  v6 = *(v0 + 40);
  v7 = *(v0 + 48);
  v8 = *(v0 + 56);

  sub_1BF4E92E4();
  MEMORY[0x1BFB58C90](0xD000000000000023, 0x80000001BF4F9D40);
  v9 = [v2 description];
  v10 = sub_1BF4E8914();
  v12 = v11;

  MEMORY[0x1BFB58C90](v10, v12);

  MEMORY[0x1BFB58C90](0x6669746E65646920, 0xEB000000003D7265);
  MEMORY[0x1BFB58C90](v1, v3);
  MEMORY[0x1BFB58C90](0xD000000000000016, 0x80000001BF4F9D70);
  if (v5)
  {
    v13 = v4;
  }

  else
  {
    v13 = 7104878;
  }

  if (!v5)
  {
    v5 = 0xE300000000000000;
  }

  MEMORY[0x1BFB58C90](v13, v5);

  MEMORY[0x1BFB58C90](0x6B636174536E6920, 0xE90000000000003DLL);
  if (v6)
  {
    v14 = 1702195828;
  }

  else
  {
    v14 = 0x65736C6166;
  }

  if (v6)
  {
    v15 = 0xE400000000000000;
  }

  else
  {
    v15 = 0xE500000000000000;
  }

  MEMORY[0x1BFB58C90](v14, v15);

  MEMORY[0x1BFB58C90](0x6F697461636F6C20, 0xEA00000000003D6ELL);
  v16 = PowerlogWidgetLocation.description.getter();
  MEMORY[0x1BFB58C90](v16);

  MEMORY[0x1BFB58C90](62, 0xE100000000000000);
  return 0;
}

uint64_t PowerlogWidgetViewIdentity.hashValue.getter()
{
  sub_1BF4E9804();
  PowerlogWidgetViewIdentity.hash(into:)();
  return sub_1BF4E9844();
}

void sub_1BF405FEC(uint64_t a1@<X8>)
{
  v2 = *(v1 + 56);
  *a1 = *(v1 + 48);
  *(a1 + 8) = v2;
}

uint64_t sub_1BF406004()
{
  sub_1BF4E9804();
  PowerlogWidgetViewIdentity.hash(into:)();
  return sub_1BF4E9844();
}

uint64_t sub_1BF406078(double a1, uint64_t a2, void (*a3)(double))
{
  sub_1BF3AB664();
  a3(a1);
}

uint64_t sub_1BF4060FC(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  sub_1BF3AB664();
  a3(a1);
}

uint64_t sub_1BF40615C(char a1)
{
  v2 = v1;
  v4 = *(v1 + 72);
  v5 = swift_allocObject();
  *(v5 + 16) = v2;
  *(v5 + 24) = a1;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_1BF407D04;
  *(v6 + 24) = v5;
  v9[4] = sub_1BF3A2C88;
  v9[5] = v6;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 1107296256;
  v9[2] = sub_1BF3A2C38;
  v9[3] = &block_descriptor_68;
  v7 = _Block_copy(v9);

  dispatch_sync(v4, v7);
  _Block_release(v7);
  LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

  if (v4)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BF4062B8(char a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = sub_1BF4E80E4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = (v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = v2[9];
  *v10 = v11;
  (*(v6 + 104))(v10, *MEMORY[0x1E69E8020], v5, v8);
  v12 = v11;
  LOBYTE(v11) = sub_1BF4E80F4();
  result = (*(v6 + 8))(v10, v5);
  if (v11)
  {
    v14 = swift_beginAccess();
    v27[2] = v2[7];
    MEMORY[0x1EEE9AC00](v14);
    v27[-2] = v2;
    LOBYTE(v27[-1]) = a1 & 1;
    MEMORY[0x1EEE9AC00](v15);
    v16 = *(v4 + 96);
    *&v27[-6] = *(v4 + 80);
    *&v27[-4] = v16;
    v27[-2] = sub_1BF407B04;
    v27[-1] = v17;
    v18 = v16;
    v19 = type metadata accessor for PowerlogViewEntry();
    v20 = *(v18 + 8);
    v21 = sub_1BF4E8834();

    WitnessTable = swift_getWitnessTable();
    v24 = sub_1BF3AF390(sub_1BF407B10, &v27[-8], v21, v19, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v23);

    v25 = v2[5];
    v26 = v2[6];
    __swift_project_boxed_opaque_existential_1(v2 + 2, v25);
    (*(v26 + 48))(v24, v25, v26);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BF406568(__int128 *a1, uint64_t a2, uint64_t a3, char a4)
{
  sub_1BF406E8C();
  sub_1BF406CDC(v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8D90, &unk_1BF4EE150);
  swift_dynamicCast();
  *(a2 + 112) = 0;
  *(a2 + 80) = 0u;
  *(a2 + 96) = 0u;
  if ((*(a2 + 129) & 1) == 0)
  {
    swift_beginAccess();
    sub_1BF47AD90(a1);
    swift_endAccess();
  }

  if (a4)
  {
    v7 = *(v9 + 129);
    *(v9 + 129) = 0;
    if (v7 == 1)
    {
      sub_1BF406E8C();
      *(v9 + 120) = 0;
      *(v9 + 128) = 1;
    }
  }

  return v9;
}

uint64_t sub_1BF406668(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  sub_1BF406ED8();
  sub_1BF406DB4(v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8D80, &qword_1BF4EE140);
  swift_dynamicCast();
  *(a2 + 88) = 0;
  *(a2 + 72) = 0u;
  *(a2 + 56) = 0u;
  if ((*(a2 + 105) & 1) == 0)
  {
    swift_beginAccess();
    sub_1BF47AE40(a1);
    swift_endAccess();
  }

  if (a4)
  {
    v7 = *(v9 + 105);
    *(v9 + 105) = 0;
    if (v7 == 1)
    {
      sub_1BF406ED8();
      *(v9 + 96) = 0;
      *(v9 + 104) = 1;
    }
  }

  return v9;
}

uint64_t sub_1BF40676C(uint64_t a1, uint64_t *a2, uint64_t a3, char a4)
{
  v6 = *a2;
  sub_1BF408B6C();
  sub_1BF408B98(0, v12);
  v7 = *(v6 + 80);
  v8 = *(v6 + 88);
  type metadata accessor for PowerlogViewEntry();
  swift_dynamicCast();
  sub_1BF408B70();
  if ((*(a2 + *(*a2 + 120)) & 1) == 0)
  {
    swift_beginAccess();
    v9 = *(v8 + 8);
    sub_1BF4E8834();
    sub_1BF4E8784();
    swift_endAccess();
  }

  if (a4)
  {
    sub_1BF3AB5E0(0);
  }

  return v11;
}

uint64_t BasePowerlogViewService.__deallocating_deinit()
{
  BasePowerlogViewService.deinit();

  return swift_deallocClassInstance();
}

uint64_t PowerlogControlsViewService.init(owner:)(char *a1)
{
  v14 = sub_1BF4E8F24();
  v2 = *(v14 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1BF4E8ED4();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v8 = sub_1BF4E8064();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = *a1;
  type metadata accessor for ControlsPowerlogProvider();
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  sub_1BF3901C0(0, &qword_1EDC9F140, 0x1E69E9610);
  sub_1BF4E8044();
  v16 = MEMORY[0x1E69E7CC0];
  sub_1BF3A10B4(&qword_1EDC9F148, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD85C0, &qword_1BF4EC090);
  sub_1BF3A2804();
  sub_1BF4E91A4();
  (*(v2 + 104))(v5, *MEMORY[0x1E69E8098], v14);
  *(v11 + 24) = sub_1BF4E8F64();
  return sub_1BF406F24(v11, v15);
}

uint64_t _s9ChronoKit23BasePowerlogViewServiceCfd_0()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  v1 = *(v0 + 56);

  return v0;
}

uint64_t _s9ChronoKit25PowerlogWidgetViewServiceCfD_0()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  v1 = *(v0 + 56);

  return swift_deallocClassInstance();
}

uint64_t sub_1BF406CDC@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 32);
  v13[0] = *(v1 + 16);
  v13[1] = v3;
  v14[0] = *(v1 + 48);
  *(v14 + 9) = *(v1 + 57);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8D90, &unk_1BF4EE150);
  v5 = swift_allocObject();
  *(v5 + 120) = 0;
  *(v5 + 128) = 1;
  v6 = *(v1 + 32);
  *(v5 + 16) = *(v1 + 16);
  *(v5 + 32) = v6;
  *(v5 + 48) = *(v1 + 48);
  *(v5 + 57) = *(v1 + 57);
  v7 = *(v1 + 112);
  v8 = *(v1 + 96);
  *(v5 + 80) = *(v1 + 80);
  *(v5 + 96) = v8;
  *(v5 + 112) = v7;
  v9 = *(v1 + 129);
  *(v5 + 129) = v9;
  if (v9)
  {
    sub_1BF3EE1EC(v13, v12);
    result = BSContinuousMachTimeNow();
    *(v5 + 120) = v11;
    *(v5 + 128) = 0;
  }

  else
  {
    result = sub_1BF3EE1EC(v13, v12);
  }

  a1[3] = v4;
  *a1 = v5;
  return result;
}

uint64_t sub_1BF406DB4@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  v6 = *(v1 + 40);
  v7 = *(v1 + 48);
  v8 = *(v1 + 49);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8D80, &qword_1BF4EE140);
  v10 = swift_allocObject();
  *(v10 + 96) = 0;
  *(v10 + 104) = 1;
  *(v10 + 16) = v3;
  *(v10 + 24) = v4;
  *(v10 + 32) = v5;
  *(v10 + 40) = v6;
  *(v10 + 48) = v7;
  *(v10 + 49) = v8;
  v11 = *(v1 + 88);
  *(v10 + 56) = *(v1 + 56);
  *(v10 + 72) = *(v1 + 72);
  *(v10 + 88) = v11;
  v12 = *(v1 + 105);
  *(v10 + 105) = v12;
  v13 = v3;

  if (v12)
  {
    result = BSContinuousMachTimeNow();
    *(v10 + 96) = v15;
    *(v10 + 104) = 0;
  }

  a1[3] = v9;
  *a1 = v10;
  return result;
}

uint64_t sub_1BF406E8C()
{
  result = BSContinuousMachTimeNow();
  if ((*(v0 + 128) & 1) == 0)
  {
    *(v0 + 112) = *(v0 + 112) + v2 - *(v0 + 120);
  }

  v3 = *(v0 + 129);
  v4 = v2;
  if (!v3)
  {
    v4 = 0.0;
  }

  *(v0 + 120) = v4;
  *(v0 + 128) = v3 ^ 1;
  return result;
}

uint64_t sub_1BF406ED8()
{
  result = BSContinuousMachTimeNow();
  if ((*(v0 + 104) & 1) == 0)
  {
    *(v0 + 88) = *(v0 + 88) + v2 - *(v0 + 96);
  }

  v3 = *(v0 + 105);
  v4 = v2;
  if (!v3)
  {
    v4 = 0.0;
  }

  *(v0 + 96) = v4;
  *(v0 + 104) = v3 ^ 1;
  return result;
}

uint64_t sub_1BF406F24(uint64_t a1, void *a2)
{
  v16 = sub_1BF4E8F24();
  v4 = *(v16 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v7 = &aBlock[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1BF4E8ED4();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v10 = sub_1BF4E8064();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v18[3] = type metadata accessor for ControlsPowerlogProvider();
  v18[4] = sub_1BF3A10B4(qword_1EDC99168, type metadata accessor for ControlsPowerlogProvider);
  v18[0] = a1;
  a2[7] = MEMORY[0x1E69E7CC8];
  a2[8] = 0;
  sub_1BF3901C0(0, &qword_1EDC9F140, 0x1E69E9610);
  sub_1BF4E8014();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1BF3A10B4(&qword_1EDC9F148, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD85C0, &qword_1BF4EC090);
  sub_1BF3A2804();
  sub_1BF4E91A4();
  (*(v4 + 104))(v7, *MEMORY[0x1E69E8090], v16);
  v12 = sub_1BF4E8F64();
  a2[9] = v12;
  sub_1BF38E49C(v18, (a2 + 2));
  v13 = swift_allocObject();
  *(v13 + 16) = sub_1BF407B98;
  *(v13 + 24) = a2;
  aBlock[4] = sub_1BF3A2C60;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BF3A2C38;
  aBlock[3] = &block_descriptor_2;
  v14 = _Block_copy(aBlock);

  dispatch_sync(v12, v14);
  _Block_release(v14);
  LOBYTE(v12) = swift_isEscapingClosureAtFileLocation();

  if (v12)
  {
    __break(1u);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v18);
    return a2;
  }

  return result;
}

uint64_t _s9ChronoKit27PowerlogControlViewIdentityV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = *(a1 + 32);
  v8 = *a2;
  v7 = a2[1];
  v9 = a2[2];
  v10 = a2[3];
  v11 = *(a2 + 32);
  v20 = *(a2 + 33);
  v21 = *(a1 + 33);
  sub_1BF3901C0(0, &qword_1EDC9FDA8, 0x1E69E58C0);
  if ((sub_1BF4E90A4() & 1) == 0 || (v2 != v7 || v4 != v9) && (sub_1BF4E9734() & 1) == 0)
  {
    return 0;
  }

  if ((v6 & 1) == 0)
  {
    if ((v11 & 1) == 0)
    {
      v18 = v5 == v10;
      goto LABEL_25;
    }

    v12 = 3;
    goto LABEL_11;
  }

  v12 = qword_1BF4EE160[v5];
  if (v11)
  {
LABEL_11:
    v13 = 7;
    v15 = 8;
    if (v10 != 7)
    {
      v15 = 9;
    }

    if (v10 != 6)
    {
      v13 = v15;
    }

    v16 = 5;
    if (v10 != 4)
    {
      v16 = 6;
    }

    if (v10 <= 5)
    {
      v13 = v16;
    }

    v17 = 4;
    if (v10 < 3)
    {
      v17 = v10;
    }

    if (v10 <= 3)
    {
      v13 = v17;
    }

    goto LABEL_23;
  }

  v13 = 3;
LABEL_23:
  v18 = v12 == v13;
LABEL_25:
  v19 = v18;
  return v19 & (v21 ^ v20 ^ 1u);
}

unint64_t sub_1BF407434()
{
  result = qword_1EBDD8D78;
  if (!qword_1EBDD8D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDD8D78);
  }

  return result;
}

unint64_t sub_1BF407488(uint64_t a1)
{
  result = sub_1BF4074B0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1BF4074B0()
{
  result = qword_1EDC98000[0];
  if (!qword_1EDC98000[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDC98000);
  }

  return result;
}

unint64_t sub_1BF407508()
{
  result = qword_1EDC97FF8;
  if (!qword_1EDC97FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC97FF8);
  }

  return result;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for PowerlogWidgetLocation(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for PowerlogWidgetLocation(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 9) = v3;
  return result;
}

uint64_t sub_1BF4075C0(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1BF4075DC(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

__n128 __swift_memcpy34_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1BF407648(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 34))
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

uint64_t sub_1BF407690(uint64_t result, int a2, int a3)
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
      *(result + 34) = 1;
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

    *(result + 34) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1BF40784C(uint64_t a1, void (*a2)(_OWORD *, uint64_t), uint64_t a3)
{
  v47 = a3;
  v4 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v4)
  {
    v46 = MEMORY[0x1E69E7CC0];
    sub_1BF4E93A4();
    v6 = a1 + 64;
    v7 = -1 << *(a1 + 32);
    result = sub_1BF4E91B4();
    if (result < 0 || (v8 = result, result >= 1 << *(a1 + 32)))
    {
LABEL_19:
      __break(1u);
      return v46;
    }

    else
    {
      v29 = *(a1 + 36);
      v28 = v4;
      v9 = 1;
      while (1)
      {
        v10 = v8 >> 6;
        if ((*(v6 + 8 * (v8 >> 6)) & (1 << v8)) == 0)
        {
          break;
        }

        v11 = *(a1 + 56);
        v12 = (*(a1 + 48) + (v8 << 6));
        v14 = v12[1];
        v13 = v12[2];
        v15 = *v12;
        *(v37 + 9) = *(v12 + 41);
        v36[1] = v14;
        v37[0] = v13;
        v36[0] = v15;
        v16 = v12[1];
        v33 = *v12;
        v34 = v16;
        *v35 = v12[2];
        *&v35[9] = *(v12 + 41);
        v17 = *(v11 + 8 * v8);
        memmove(&__dst, v12, 0x39uLL);
        v41[0] = v33;
        v41[1] = v34;
        v41[2] = *v35;
        v41[3] = *&v35[16];
        v42 = v17;
        swift_retain_n();
        sub_1BF3EE1EC(v36, v31);
        sub_1BF3EE1EC(&__dst, v31);
        sub_1BF407C9C(v41);
        *&v44[9] = *(v40 + 9);
        *v44 = v40[0];
        v31[2] = v40[0];
        v31[3] = *&v44[16];
        v43[0] = __dst;
        v43[1] = v39;
        v45 = v17;
        v32 = v17;
        v31[0] = __dst;
        v31[1] = v39;
        a2(v31, v17);
        sub_1BF407C9C(v43);
        sub_1BF4E9374();
        v18 = *(v46 + 16);
        sub_1BF4E93B4();
        sub_1BF4E93C4();
        result = sub_1BF4E9384();
        v19 = 1 << *(a1 + 32);
        if (v8 >= v19)
        {
          goto LABEL_23;
        }

        v20 = *(v6 + 8 * v10);
        if ((v20 & (1 << v8)) == 0)
        {
          goto LABEL_24;
        }

        if (v29 != *(a1 + 36))
        {
          goto LABEL_25;
        }

        v21 = v20 & (-2 << (v8 & 0x3F));
        if (v21)
        {
          v8 = __clz(__rbit64(v21)) | v8 & 0x7FFFFFFFFFFFFFC0;
          v22 = v28;
        }

        else
        {
          v23 = v10 << 6;
          v24 = v10 + 1;
          v22 = v28;
          v25 = (a1 + 72 + 8 * v10);
          while (v24 < (v19 + 63) >> 6)
          {
            v27 = *v25++;
            v26 = v27;
            v23 += 64;
            ++v24;
            if (v27)
            {
              v8 = __clz(__rbit64(v26)) + v23;
              goto LABEL_16;
            }
          }

          v8 = 1 << *(a1 + 32);
        }

LABEL_16:
        if (v9 == v22)
        {
          return v46;
        }

        if ((v8 & 0x8000000000000000) == 0)
        {
          ++v9;
          if (v8 < 1 << *(a1 + 32))
          {
            continue;
          }
        }

        goto LABEL_19;
      }

      __break(1u);
LABEL_23:
      __break(1u);
LABEL_24:
      __break(1u);
LABEL_25:
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1BF407B10@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = v2[2];
  v6 = v2[4];
  v8 = v2[6];
  v7 = v2[7];
  type metadata accessor for PowerlogViewEntry();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  result = v8(a1, *(a1 + *(TupleTypeMetadata2 + 48)));
  *a2 = result;
  return result;
}

uint64_t sub_1BF407BD8(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v5 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v5;
  v8 = *(a1 + 32);
  return sub_1BF406668(v7, a2, v3, v4);
}

uint64_t sub_1BF407C58(__int128 *a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v5 = a1[1];
  v7[0] = *a1;
  v7[1] = v5;
  v8[0] = a1[2];
  *(v8 + 9) = *(a1 + 41);
  return sub_1BF406568(v7, a2, v3, v4);
}

uint64_t sub_1BF407C9C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8D88, &qword_1BF4EE148);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BF407D04()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 16);
  return sub_1BF4062B8(v1);
}

uint64_t sub_1BF407D50(uint64_t a1, unint64_t a2)
{
  v48 = *MEMORY[0x1E69E9840];
  v4 = a2 >> 62;
  v32 = HIDWORD(a1);
  if ((a2 >> 62) <= 1)
  {
    if (!v4)
    {
      v5 = BYTE6(a2);
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  if (v4 != 2)
  {
    v8 = MEMORY[0x1E69E7CC0];
    goto LABEL_39;
  }

  v7 = *(a1 + 16);
  v6 = *(a1 + 24);
  v5 = v6 - v7;
  if (__OFSUB__(v6, v7))
  {
    __break(1u);
LABEL_8:
    if (__OFSUB__(HIDWORD(a1), a1))
    {
      goto LABEL_49;
    }

    v5 = HIDWORD(a1) - a1;
  }

LABEL_10:
  v8 = MEMORY[0x1E69E7CC0];
  if (v5)
  {
    v47 = MEMORY[0x1E69E7CC0];
    v33 = a2 >> 62;
    sub_1BF3A31DC(0, v5 & ~(v5 >> 63), 0);
    v9 = v33;
    if (v33)
    {
      if (v33 == 2)
      {
        v10 = *(a1 + 16);
      }

      else
      {
        v10 = a1;
      }
    }

    else
    {
      v10 = 0;
    }

    v34 = v10;
    if (v5 < 0)
    {
      goto LABEL_48;
    }

    v11 = 0;
    v8 = v47;
    v31 = &v35 + v10;
    do
    {
      if (v11 >= v5)
      {
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
LABEL_47:
        __break(1u);
LABEL_48:
        __break(1u);
LABEL_49:
        __break(1u);
LABEL_50:
        __break(1u);
LABEL_51:
        __break(1u);
      }

      v12 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        goto LABEL_41;
      }

      v13 = v34 + v11;
      if (v9 == 2)
      {
        if (v13 < *(a1 + 16))
        {
          goto LABEL_43;
        }

        if (v13 >= *(a1 + 24))
        {
          goto LABEL_45;
        }

        v18 = sub_1BF4E6EC4();
        if (!v18)
        {
          goto LABEL_51;
        }

        v15 = v18;
        v19 = sub_1BF4E6EE4();
        v17 = v13 - v19;
        if (__OFSUB__(v13, v19))
        {
          goto LABEL_47;
        }
      }

      else
      {
        if (v9 != 1)
        {
          if (v13 >= BYTE6(a2))
          {
            goto LABEL_42;
          }

          v35 = a1;
          v36 = BYTE2(a1);
          v37 = BYTE3(a1);
          v38 = v32;
          v39 = BYTE5(a1);
          v40 = BYTE6(a1);
          v41 = HIBYTE(a1);
          v42 = a2;
          v43 = BYTE2(a2);
          v44 = BYTE3(a2);
          v45 = BYTE4(a2);
          v46 = BYTE5(a2);
          v20 = v31[v11];
          goto LABEL_36;
        }

        if (v13 < a1 || v13 >= a1 >> 32)
        {
          goto LABEL_44;
        }

        v14 = sub_1BF4E6EC4();
        if (!v14)
        {
          goto LABEL_50;
        }

        v15 = v14;
        v16 = sub_1BF4E6EE4();
        v17 = v13 - v16;
        if (__OFSUB__(v13, v16))
        {
          goto LABEL_46;
        }
      }

      v20 = *(v15 + v17);
      v9 = v33;
LABEL_36:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8B28, &unk_1BF4EC500);
      v21 = swift_allocObject();
      *(v21 + 16) = xmmword_1BF4EBEF0;
      *(v21 + 56) = MEMORY[0x1E69E7508];
      *(v21 + 64) = MEMORY[0x1E69E7558];
      *(v21 + 32) = v20;
      v22 = sub_1BF4E8924();
      v47 = v8;
      v25 = *(v8 + 16);
      v24 = *(v8 + 24);
      if (v25 >= v24 >> 1)
      {
        v30 = v22;
        v27 = v23;
        sub_1BF3A31DC((v24 > 1), v25 + 1, 1);
        v9 = v33;
        v23 = v27;
        v22 = v30;
        v8 = v47;
      }

      *(v8 + 16) = v25 + 1;
      v26 = v8 + 16 * v25;
      *(v26 + 32) = v22;
      *(v26 + 40) = v23;
      ++v11;
    }

    while (v12 != v5);
  }

LABEL_39:
  v28 = *MEMORY[0x1E69E9840];
  return v8;
}

uint64_t PublicToken.environmentName.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t PublicToken.token.getter()
{
  v1 = *(v0 + 16);
  sub_1BF3D8864(v1, *(v0 + 24));
  return v1;
}

uint64_t PublicToken.init(environmentName:token:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = result;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  return result;
}

unint64_t PublicToken.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1BF407D50(v0[2], v0[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD9BB0, &qword_1BF4EC140);
  sub_1BF3E4AF0();
  v3 = sub_1BF4E8894();
  v5 = v4;

  sub_1BF4E92E4();

  MEMORY[0x1BFB58C90](v1, v2);
  MEMORY[0x1BFB58C90](0x3A6E656B6F74203BLL, 0xE900000000000020);
  MEMORY[0x1BFB58C90](v3, v5);

  return 0xD000000000000011;
}

uint64_t static PublicToken.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (!v6 && (sub_1BF4E9734() & 1) == 0)
  {
    return 0;
  }

  return sub_1BF408374(v2, v3, v4, v5);
}

uint64_t sub_1BF4082E8(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (!v6 && (sub_1BF4E9734() & 1) == 0)
  {
    return 0;
  }

  return sub_1BF408374(v2, v3, v4, v5);
}

uint64_t sub_1BF408374(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a2 >> 62;
  v5 = a4 >> 62;
  if (a2 >> 62 == 3)
  {
    v6 = 0;
    if (!result && a2 == 0xC000000000000000 && a4 >> 62 == 3)
    {
      v6 = 0;
      if (!a3 && a4 == 0xC000000000000000)
      {
        return 1;
      }
    }

    goto LABEL_14;
  }

  if (!v4)
  {
    v6 = BYTE6(a2);
    goto LABEL_14;
  }

  if (v4 == 1)
  {
    LODWORD(v6) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v6 = v6;
LABEL_14:
    if (v5 > 1)
    {
      if (v5 != 2)
      {
        return v6 == 0;
      }

      v11 = *(a3 + 16);
      v10 = *(a3 + 24);
      v9 = __OFSUB__(v10, v11);
      v12 = v10 - v11;
      if (!v9)
      {
        if (v6 != v12)
        {
          return 0;
        }

        goto LABEL_21;
      }

      __break(1u);
    }

    else
    {
      if (!v5)
      {
        if (v6 != BYTE6(a4))
        {
          return 0;
        }

LABEL_21:
        if (v6 >= 1)
        {
          v13 = result;
          sub_1BF3D8864(a3, a4);
          return sub_1BF4D9E34(v13, a2, a3, a4) & 1;
        }

        return 1;
      }

      if (!__OFSUB__(HIDWORD(a3), a3))
      {
        if (v6 != HIDWORD(a3) - a3)
        {
          return 0;
        }

        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  v8 = *(result + 16);
  v7 = *(result + 24);
  v9 = __OFSUB__(v7, v8);
  v6 = v7 - v8;
  if (!v9)
  {
    goto LABEL_14;
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1BF4084F8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_1BF408540(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1BF408590()
{
  sub_1BF4E92E4();
  MEMORY[0x1BFB58C90](0xD000000000000020, 0x80000001BF4F9F40);
  v1 = v0[4];
  sub_1BF4E8D14();
  MEMORY[0x1BFB58C90](0xD000000000000010, 0x80000001BF4F9F70);
  v7 = v0[2];
  v2 = sub_1BF4E96A4();
  MEMORY[0x1BFB58C90](v2);

  MEMORY[0x1BFB58C90](0x547265646E657220, 0xEC0000003D656D69);
  v3 = *v0;
  sub_1BF4E8D14();
  MEMORY[0x1BFB58C90](0xD000000000000012, 0x80000001BF4F9F90);
  v8 = v0[3];
  v4 = sub_1BF4E96A4();
  MEMORY[0x1BFB58C90](v4);

  MEMORY[0x1BFB58C90](0x5474696D62757320, 0xEC0000003D656D69);
  v5 = v0[1];
  sub_1BF4E8D14();
  MEMORY[0x1BFB58C90](62, 0xE100000000000000);
  return 0;
}

uint64_t sub_1BF408758()
{
  v1 = *v0;
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  MEMORY[0x1BFB59A90](*&v1);
  v2 = *(v0 + 8);
  if (v2 == 0.0)
  {
    v2 = 0.0;
  }

  MEMORY[0x1BFB59A90](*&v2);
  MEMORY[0x1BFB59A70](*(v0 + 16));
  MEMORY[0x1BFB59A70](*(v0 + 24));
  v3 = *(v0 + 32);
  if (v3 == 0.0)
  {
    v3 = 0.0;
  }

  return MEMORY[0x1BFB59A90](*&v3);
}

uint64_t sub_1BF4087D4()
{
  sub_1BF4E9804();
  sub_1BF408758();
  return sub_1BF4E9844();
}

uint64_t sub_1BF408818()
{
  sub_1BF4E9804();
  sub_1BF408758();
  return sub_1BF4E9844();
}

double sub_1BF408898@<D0>(uint64_t a1@<X8>)
{
  v2 = v1 + *(*v1 + 104);
  result = *(v2 + 32);
  v4 = *(v2 + 16);
  *a1 = *v2;
  *(a1 + 16) = v4;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_1BF4088C4(uint64_t a1)
{
  v2 = v1;
  v3 = *(*v1 + 80);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v13 - v6;
  *&v14 = 0;
  *(&v14 + 1) = 0xE000000000000000;
  sub_1BF4E92E4();
  v13 = v14;
  MEMORY[0x1BFB58C90](0xD00000000000001CLL, 0x80000001BF4F9FB0);
  (*(v4 + 16))(v7, v2 + *(*v2 + 96), v3);
  sub_1BF4E96E4();
  (*(v4 + 8))(v7, v3);
  MEMORY[0x1BFB58C90](0x7363697274656D20, 0xE90000000000003DLL);
  v8 = (v2 + *(*v2 + 104));
  v9 = *(v8 + 4);
  v10 = v8[1];
  v14 = *v8;
  v15 = v10;
  v16 = v9;
  v11 = sub_1BF408590();
  MEMORY[0x1BFB58C90](v11);

  MEMORY[0x1BFB58C90](62, 0xE100000000000000);
  return v13;
}

double sub_1BF408B70()
{
  v1 = v0 + *(*v0 + 104);
  result = 0.0;
  *v1 = 0u;
  *(v1 + 16) = 0u;
  *(v1 + 32) = 0;
  return result;
}

void sub_1BF408B98(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2;
  v5 = *v2;
  v6 = v5[10];
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v23 - v9;
  v11 = v5[11];
  v12 = type metadata accessor for PowerlogViewEntry();
  (*(v7 + 16))(v10, &v3[v5[12]], v6);
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  v15 = swift_allocObject();
  sub_1BF3B19C0(v10);
  v16 = *v3;
  v17 = &v3[*(*v3 + 104)];
  v18 = *(v17 + 4);
  v19 = v15 + *(*v15 + 104);
  v20 = *(v17 + 1);
  *v19 = *v17;
  *(v19 + 16) = v20;
  *(v19 + 32) = v18;
  v21 = *(*v15 + 120);
  v22 = *(v15 + v21);
  *(v15 + v21) = v3[*(v16 + 120)];
  sub_1BF3AB734(v22);
  a2[3] = v12;
  *a2 = v15;
}

uint64_t sub_1BF408D4C()
{

  sub_1BF408B98(v0, v3);

  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  v1 = sub_1BF4E9714();
  __swift_destroy_boxed_opaque_existential_1Tm(v3);
  return v1;
}

uint64_t sub_1BF408DB0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  v4 = v3[10];
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](a1);
  v9 = v16 - v8;
  (*(v5 + 16))(v16 - v8, &v2[v3[12]], v4, v7);
  v10 = *(v3[11] + 8);
  sub_1BF4E8884();
  (*(v5 + 8))(v9, v4);
  v11 = &v2[*(*v2 + 104)];
  v12 = *(v11 + 4);
  v13 = *(v11 + 1);
  v16[0] = *v11;
  v16[1] = v13;
  v17 = v12;
  sub_1BF408758();
  v14 = v2[*(*v2 + 120)];
  return sub_1BF4E9824();
}

uint64_t sub_1BF408F34(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 80);
  v6 = *(v5 - 8);
  v7 = v6[8];
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v27 - v12;
  v14 = v6[2];
  v14(&v27 - v12, v15 + *(*v15 + 96), v5, v11);
  (v14)(v9, a2 + *(*a2 + 96), v5);
  v16 = *(*(*(v2 + 88) + 8) + 8);
  v17 = sub_1BF4E88C4();
  v18 = v6[1];
  v18(v9, v5);
  v18(v13, v5);
  if ((v17 & 1) != 0 && ((v19 = a1 + *(*a1 + 104), v20 = a2 + *(*a2 + 104), *v19 == *v20) ? (v21 = *(v19 + 8) == *(v20 + 8)) : (v21 = 0), v21 ? (v22 = *(v19 + 16) == *(v20 + 16)) : (v22 = 0), v22 ? (v23 = *(v19 + 24) == *(v20 + 24)) : (v23 = 0), v23 ? (v24 = *(v19 + 32) == *(v20 + 32)) : (v24 = 0), v24))
  {
    v25 = *(a1 + *(*a1 + 120)) ^ *(a2 + *(*a2 + 120)) ^ 1;
  }

  else
  {
    v25 = 0;
  }

  return v25 & 1;
}

double sub_1BF40919C(uint64_t a1, double a2, double a3)
{
  result = a2 - a3 + *(a1 + 32);
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_1BF409220()
{
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 96));
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1BF4092CC()
{
  sub_1BF4E9804();
  sub_1BF408DB0(v1);
  return sub_1BF4E9844();
}

uint64_t sub_1BF40930C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 40))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1BF40932C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 40) = v3;
  return result;
}

unint64_t sub_1BF409374()
{
  result = qword_1EBDD8DF8;
  if (!qword_1EBDD8DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDD8DF8);
  }

  return result;
}

uint64_t sub_1BF409410()
{
  sub_1BF4E9804();
  v1 = *v0;
  sub_1BF408DB0(v3);
  return sub_1BF4E9844();
}

uint64_t sub_1BF40949C(uint64_t result)
{
  v2 = *(v1 + 16);
  v3 = *(result + 16);
  v4 = __OFADD__(v3, v2);
  v5 = v3 + v2;
  if (v4)
  {
    __break(1u);
  }

  else
  {
    *(result + 16) = v5;
  }

  return result;
}

uint64_t sub_1BF4094B8(uint64_t result)
{
  v2 = *(v1 + 16);
  v3 = *(result + 24);
  v4 = __OFADD__(v3, v2);
  v5 = v3 + v2;
  if (v4)
  {
    __break(1u);
  }

  else
  {
    *(result + 24) = v5;
  }

  return result;
}

double sub_1BF4094D4(uint64_t a1)
{
  result = *(v1 + 16) + *(a1 + 8);
  *(a1 + 8) = result;
  return result;
}

double sub_1BF4094E8(double *a1)
{
  result = *(v1 + 16) + *a1;
  *a1 = result;
  return result;
}

uint64_t sub_1BF409508(uint64_t a1)
{
  v2 = sub_1BF4095C4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BF409544(uint64_t a1)
{
  v2 = sub_1BF4095C4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1BF4095C4()
{
  result = qword_1EBDD8E08;
  if (!qword_1EBDD8E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDD8E08);
  }

  return result;
}

uint64_t sub_1BF409730(uint64_t a1)
{
  v2 = sub_1BF40990C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BF40976C(uint64_t a1)
{
  v2 = sub_1BF40990C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BF4097EC(void *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v13 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a4();
  sub_1BF4E9864();
  return (*(v7 + 8))(v10, v6);
}

unint64_t sub_1BF40990C()
{
  result = qword_1EBDD8E18;
  if (!qword_1EBDD8E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDD8E18);
  }

  return result;
}

uint64_t sub_1BF4099A4(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, void (*a6)(void))
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v15 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a6();
  sub_1BF4E9864();
  return (*(v9 + 8))(v12, v8);
}

uint64_t static ActivityAttributesType.mock()()
{
  sub_1BF409B0C();

  return sub_1BF4E7444();
}

unint64_t sub_1BF409B0C()
{
  result = qword_1EBDD8E20;
  if (!qword_1EBDD8E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDD8E20);
  }

  return result;
}

uint64_t static ActivityKey.mock(activityID:extensionBundleIdentifier:containerBundleIdentifier:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v36 = a2;
  v34 = a1;
  v35 = sub_1BF4E7454();
  v8 = *(v35 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v35);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9290, &qword_1BF4EE4B0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v33 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8B48, &unk_1BF4EC990);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x1EEE9AC00](v19);
  (*(v23 + 16))(&v33 - v22, a3, v21);
  sub_1BF40A05C(a4, v15);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8A38, &unk_1BF4EC4D0);
  v25 = *(v24 - 8);
  v26 = *(v25 + 48);
  if (v26(v15, 1, v24) == 1)
  {
    sub_1BF4E7694();
    if (v26(v15, 1, v24) != 1)
    {
      sub_1BF40A0CC(v15);
    }
  }

  else
  {
    (*(v25 + 32))(v18, v15, v24);
  }

  sub_1BF4E9034();
  (*(v25 + 56))(v18, 0, 1, v24);
  v27 = sub_1BF4E9014();
  sub_1BF409B0C();
  sub_1BF4E7444();
  if (v36)
  {
    v28 = v34;
  }

  else
  {
    v28 = 0x7974697669746361;
  }

  if (v36)
  {
    v29 = v36;
  }

  else
  {
    v29 = 0xEB00000000314449;
  }

  *a5 = v27;
  v30 = type metadata accessor for ActivityKey();
  (*(v8 + 32))(a5 + *(v30 + 20), v11, v35);
  v31 = (a5 + *(v30 + 24));
  *v31 = v28;
  v31[1] = v29;
}

id static ActivityKey.mock(activityID:extensionIdentity:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X2>, char *a4@<X8>)
{
  v19 = a3;
  v7 = sub_1BF4E7454();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BF409B0C();
  sub_1BF4E7444();
  if (a2)
  {
    v12 = a1;
  }

  else
  {
    v12 = 0x7974697669746361;
  }

  if (a2)
  {
    v13 = a2;
  }

  else
  {
    v13 = 0xEB00000000314449;
  }

  *a4 = v19;
  v14 = type metadata accessor for ActivityKey();
  (*(v8 + 32))(&a4[*(v14 + 20)], v11, v7);
  v15 = &a4[*(v14 + 24)];
  *v15 = v12;
  v15[1] = v13;

  v16 = v19;

  return v16;
}

uint64_t sub_1BF40A05C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9290, &qword_1BF4EE4B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BF40A0CC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9290, &qword_1BF4EE4B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1BF40A138()
{
  result = qword_1EBDD8E28;
  if (!qword_1EBDD8E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDD8E28);
  }

  return result;
}

unint64_t sub_1BF40A190()
{
  result = qword_1EBDD8E30;
  if (!qword_1EBDD8E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDD8E30);
  }

  return result;
}

unint64_t sub_1BF40A1E8()
{
  result = qword_1EBDD8E38;
  if (!qword_1EBDD8E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDD8E38);
  }

  return result;
}

unint64_t sub_1BF40A240()
{
  result = qword_1EBDD8E40;
  if (!qword_1EBDD8E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDD8E40);
  }

  return result;
}

unint64_t sub_1BF40A298()
{
  result = qword_1EBDD8E48;
  if (!qword_1EBDD8E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDD8E48);
  }

  return result;
}

unint64_t sub_1BF40A2F0()
{
  result = qword_1EBDD8E50;
  if (!qword_1EBDD8E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDD8E50);
  }

  return result;
}

unint64_t sub_1BF40A388()
{
  result = qword_1EBDD8E58;
  if (!qword_1EBDD8E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDD8E58);
  }

  return result;
}

unint64_t sub_1BF40A3E0()
{
  result = qword_1EBDD8E60;
  if (!qword_1EBDD8E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDD8E60);
  }

  return result;
}

unint64_t sub_1BF40A438()
{
  result = qword_1EBDD8E68;
  if (!qword_1EBDD8E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDD8E68);
  }

  return result;
}

unint64_t sub_1BF40A490()
{
  result = qword_1EBDD8E70;
  if (!qword_1EBDD8E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDD8E70);
  }

  return result;
}

id WidgetEntryKey.extensionIdentity.getter()
{
  v1 = [*v0 extensionIdentity];

  return v1;
}

uint64_t WidgetEntryKey.hashValue.getter()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD85B0, &unk_1BF4EA9E0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v15 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8E78, &unk_1BF4EE790);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v15 - v9;
  sub_1BF4E9804();
  v11 = *v0;
  sub_1BF4E90B4();
  v12 = v1[1];
  sub_1BF4E90B4();
  v13 = type metadata accessor for WidgetEntryKey();
  sub_1BF3988F8(v1 + *(v13 + 24), v10);
  if ((*(v3 + 48))(v10, 1, v2) == 1)
  {
    sub_1BF4E9824();
  }

  else
  {
    (*(v3 + 32))(v6, v10, v2);
    sub_1BF4E9824();
    sub_1BF38C8FC(&unk_1EDC9F018);
    sub_1BF4E8884();
    (*(v3 + 8))(v6, v2);
  }

  return sub_1BF4E9844();
}

uint64_t sub_1BF40A760()
{
  sub_1BF4E9804();
  WidgetEntryKey.hash(into:)();
  return sub_1BF4E9844();
}

uint64_t sub_1BF40A7A4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE700000000000000;
  v4 = 0x7363697274656DLL;
  if (v2 != 1)
  {
    v4 = 1953722216;
    v3 = 0xE400000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x746567646977;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE600000000000000;
  }

  v7 = 0xE700000000000000;
  v8 = 0x7363697274656DLL;
  if (*a2 != 1)
  {
    v8 = 1953722216;
    v7 = 0xE400000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x746567646977;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE600000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1BF4E9734();
  }

  return v11 & 1;
}

uint64_t sub_1BF40A894()
{
  v1 = *v0;
  sub_1BF4E9804();
  sub_1BF4E89F4();

  return sub_1BF4E9844();
}

uint64_t sub_1BF40A92C()
{
  *v0;
  *v0;
  sub_1BF4E89F4();
}

uint64_t sub_1BF40A9B0()
{
  v1 = *v0;
  sub_1BF4E9804();
  sub_1BF4E89F4();

  return sub_1BF4E9844();
}

uint64_t sub_1BF40AA44@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1BF40B750();
  *a2 = result;
  return result;
}

void sub_1BF40AA74(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0xE700000000000000;
  v5 = 0x7363697274656DLL;
  if (v2 != 1)
  {
    v5 = 1953722216;
    v4 = 0xE400000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x746567646977;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_1BF40AAC8()
{
  v1 = 0x7363697274656DLL;
  if (*v0 != 1)
  {
    v1 = 1953722216;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x746567646977;
  }
}

uint64_t sub_1BF40AB18@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1BF40B750();
  *a1 = result;
  return result;
}

uint64_t sub_1BF40AB4C(uint64_t a1)
{
  v2 = sub_1BF40B5D0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BF40AB88(uint64_t a1)
{
  v2 = sub_1BF40B5D0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void WidgetEntryKey.init(from:)(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v40 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8E78, &unk_1BF4EE790);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v32 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8E80, &qword_1BF4EE7A0);
  v41 = *(v8 - 8);
  v9 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v32 - v10;
  v12 = type metadata accessor for WidgetEntryKey();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = (v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = a1[3];
  v17 = a1[4];
  v42 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_1BF40B5D0();
  sub_1BF4E9854();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v42);
    return;
  }

  v37 = v12;
  v38 = v7;
  v39 = v15;
  v18 = v41;
  v45 = 0;
  sub_1BF3BCF88();
  sub_1BF4E95B4();
  v19 = v11;
  v20 = v43;
  v21 = v44;
  v22 = sub_1BF3901C0(0, &qword_1EDC96370, 0x1E696ACD0);
  sub_1BF3901C0(0, &qword_1EDC9F120, 0x1E6994370);
  v23 = sub_1BF4E8EB4();
  v24 = v18;
  v35 = v22;
  v36 = v20;
  if (v23)
  {
    v25 = v39;
    *v39 = v23;
    v45 = 1;
    sub_1BF4E95B4();
    v34 = v19;
    v27 = v43;
    v26 = v44;
    sub_1BF3901C0(0, &unk_1EDC9F150, 0x1E69943F0);
    v28 = sub_1BF4E8EB4();
    v33 = v26;
    v35 = v27;
    if (v28)
    {
      v32[1] = v28;
      v25[1] = v28;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD85B0, &unk_1BF4EA9E0);
      LOBYTE(v43) = 2;
      sub_1BF38C8FC(&qword_1EDC9D548);
      v29 = v25;
      v30 = v38;
      v31 = v34;
      sub_1BF4E9554();
      (*(v24 + 8))(v31, v8);
      sub_1BF3B03C0(v35, v33);
      sub_1BF3B03C0(v36, v21);
      sub_1BF3C0870(v30, v29 + *(v37 + 24));
      sub_1BF3A3470(v29, v40);
      __swift_destroy_boxed_opaque_existential_1Tm(v42);
      sub_1BF393884(v29);
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t WidgetEntryKey.encode(to:)(void *a1)
{
  v3 = v1;
  v55 = *MEMORY[0x1E69E9840];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8E78, &unk_1BF4EE790);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v48 = &v42 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD85B0, &unk_1BF4EA9E0);
  v49 = *(v8 - 8);
  v50 = v8;
  v9 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v47 = &v42 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8E90, &qword_1BF4EE7A8);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v42 - v14;
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BF40B5D0();
  sub_1BF4E9864();
  v17 = objc_opt_self();
  v18 = *v3;
  v53 = 0;
  v19 = [v17 archivedDataWithRootObject:v18 requiringSecureCoding:1 error:&v53];
  v20 = v53;
  if (!v19)
  {
    v26 = v20;
    sub_1BF4E6FF4();

    swift_willThrow();
LABEL_5:
    result = (*(v12 + 8))(v15, v11);
    goto LABEL_6;
  }

  v51 = v12;
  v21 = v3;
  v22 = sub_1BF4E71C4();
  v24 = v23;

  v53 = v22;
  v54 = v24;
  v52 = 0;
  sub_1BF3B01D8();
  sub_1BF4E9674();
  if (!v2)
  {
    v44 = v22;
    v45 = v11;
    v46 = v24;
    v28 = v21;
    v29 = v21[1];
    v53 = 0;
    v30 = [v17 archivedDataWithRootObject:v29 requiringSecureCoding:1 error:&v53];
    v31 = v53;
    if (!v30)
    {
      v36 = v31;
      sub_1BF4E6FF4();

      swift_willThrow();
      sub_1BF3B03C0(v44, v46);
      result = (*(v51 + 8))(v15, v45);
      goto LABEL_6;
    }

    v32 = sub_1BF4E71C4();
    v34 = v33;

    v53 = v32;
    v54 = v34;
    v52 = 1;
    v11 = v45;
    sub_1BF4E9674();
    v35 = v46;
    v12 = v51;
    v42 = v32;
    v43 = v34;
    v37 = type metadata accessor for WidgetEntryKey();
    v38 = v48;
    sub_1BF3988F8(v28 + *(v37 + 24), v48);
    v40 = v49;
    v39 = v50;
    if ((*(v49 + 48))(v38, 1, v50) == 1)
    {
      (*(v12 + 8))(v15, v11);
      sub_1BF3B03C0(v42, v43);
      sub_1BF3B03C0(v44, v35);
      result = sub_1BF38C9B4(v38, &qword_1EBDD8E78, &unk_1BF4EE790);
      goto LABEL_6;
    }

    v41 = v47;
    (*(v40 + 32))(v47, v38, v39);
    LOBYTE(v53) = 2;
    sub_1BF38C8FC(&unk_1EDC9D558);
    sub_1BF4E9674();
    sub_1BF3B03C0(v42, v43);
    sub_1BF3B03C0(v44, v35);
    (*(v40 + 8))(v41, v39);
    goto LABEL_5;
  }

  (*(v51 + 8))(v15, v11);
  result = sub_1BF3B03C0(v22, v24);
LABEL_6:
  v27 = *MEMORY[0x1E69E9840];
  return result;
}

unint64_t sub_1BF40B5D0()
{
  result = qword_1EBDD8E88;
  if (!qword_1EBDD8E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDD8E88);
  }

  return result;
}

unint64_t sub_1BF40B64C()
{
  result = qword_1EBDD8E98;
  if (!qword_1EBDD8E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDD8E98);
  }

  return result;
}

unint64_t sub_1BF40B6A4()
{
  result = qword_1EBDD8EA0;
  if (!qword_1EBDD8EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDD8EA0);
  }

  return result;
}

unint64_t sub_1BF40B6FC()
{
  result = qword_1EBDD8EA8;
  if (!qword_1EBDD8EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDD8EA8);
  }

  return result;
}

uint64_t sub_1BF40B750()
{
  v0 = sub_1BF4E9514();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1BF40B79C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v91 = a5;
  v92 = a1;
  v84 = a4;
  v94 = a3;
  v8 = sub_1BF4E7514();
  v87 = *(v8 - 8);
  v88 = v8;
  v9 = *(v87 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v86 = &v79 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1BF4E7414();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v89 = &v79 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8ED0, &qword_1BF4EEB08);
  v83 = *(v85 - 8);
  v15 = *(v83 + 64);
  MEMORY[0x1EEE9AC00](v85);
  v82 = &v79 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8EC8, &qword_1BF4EEA58);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v20 = &v79 - v19;
  v21 = OBJC_IVAR____TtCC9ChronoKit18ActivitySubscriberP33_8C3AD9B104C09CAB6FDDA07A581A3E2420ActivitySubscription_payload;
  v22 = sub_1BF4E73E4();
  v23 = *(*(v22 - 8) + 56);
  v23(v6 + v21, 1, 1, v22);
  v24 = OBJC_IVAR____TtCC9ChronoKit18ActivitySubscriberP33_8C3AD9B104C09CAB6FDDA07A581A3E2420ActivitySubscription__payloadPublisher;
  v81 = v22;
  v23(v20, 1, 1, v22);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8ED8, &unk_1BF4EEB10);
  v26 = *(v25 + 48);
  v27 = *(v25 + 52);
  swift_allocObject();
  *(v6 + v24) = sub_1BF4E7C64();
  *(v6 + OBJC_IVAR____TtCC9ChronoKit18ActivitySubscriberP33_8C3AD9B104C09CAB6FDDA07A581A3E2420ActivitySubscription_payloadSubscription) = 0;
  *(v6 + OBJC_IVAR____TtCC9ChronoKit18ActivitySubscriberP33_8C3AD9B104C09CAB6FDDA07A581A3E2420ActivitySubscription_descriptorSubscription) = 0;
  v28 = OBJC_IVAR____TtCC9ChronoKit18ActivitySubscriberP33_8C3AD9B104C09CAB6FDDA07A581A3E2420ActivitySubscription_lock;
  type metadata accessor for UnfairLock();
  v29 = swift_allocObject();
  v30 = swift_slowAlloc();
  *v30 = 0;
  *(v6 + v28) = v29;
  *(v6 + OBJC_IVAR____TtCC9ChronoKit18ActivitySubscriberP33_8C3AD9B104C09CAB6FDDA07A581A3E2420ActivitySubscription__lock_contentAssertions) = MEMORY[0x1E69E7CC8];
  *(v29 + 16) = v30;
  v31 = OBJC_IVAR____TtCC9ChronoKit18ActivitySubscriberP33_8C3AD9B104C09CAB6FDDA07A581A3E2420ActivitySubscription_state;
  v32 = *MEMORY[0x1E6959C40];
  v33 = sub_1BF4E74A4();
  v34 = v6 + v31;
  v35 = v92;
  (*(*(v33 - 8) + 104))(v34, v32, v33);
  v95 = *(v6 + v24);
  sub_1BF38C8B4(&unk_1EDC9D3A0, &qword_1EBDD8ED8, &unk_1BF4EEB10);
  *(v6 + OBJC_IVAR____TtCC9ChronoKit18ActivitySubscriberP33_8C3AD9B104C09CAB6FDDA07A581A3E2420ActivitySubscription_payloadPublisher) = sub_1BF4E7C84();
  v36 = (v6 + OBJC_IVAR____TtCC9ChronoKit18ActivitySubscriberP33_8C3AD9B104C09CAB6FDDA07A581A3E2420ActivitySubscription_activityIdentifier);
  *v36 = v35;
  v36[1] = a2;
  sub_1BF38E49C(v94, v6 + OBJC_IVAR____TtCC9ChronoKit18ActivitySubscriberP33_8C3AD9B104C09CAB6FDDA07A581A3E2420ActivitySubscription_activityCenter);
  v37 = qword_1EDC9D470;
  v93 = a2;

  if (v37 != -1)
  {
    swift_once();
  }

  v38 = sub_1BF4E7B54();
  v39 = __swift_project_value_buffer(v38, qword_1EDCA68B0);

  v90 = v39;
  v40 = sub_1BF4E7B34();
  v41 = sub_1BF4E8E84();

  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v95 = v43;
    *v42 = 136446210;
    v80 = v6;
    v44 = v35;
    v45 = *(v6 + OBJC_IVAR____TtCC9ChronoKit18ActivitySubscriberP33_8C3AD9B104C09CAB6FDDA07A581A3E2420ActivitySubscription_activityIdentifier);
    v46 = *(v6 + OBJC_IVAR____TtCC9ChronoKit18ActivitySubscriberP33_8C3AD9B104C09CAB6FDDA07A581A3E2420ActivitySubscription_activityIdentifier + 8);

    v47 = sub_1BF38D65C(v45, v46, &v95);
    v35 = v44;
    v6 = v80;

    *(v42 + 4) = v47;
    _os_log_impl(&dword_1BF389000, v40, v41, "Registering for payload...: %{public}s", v42, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v43);
    MEMORY[0x1BFB5A5D0](v43, -1, -1);
    MEMORY[0x1BFB5A5D0](v42, -1, -1);
  }

  v48 = (v6 + OBJC_IVAR____TtCC9ChronoKit18ActivitySubscriberP33_8C3AD9B104C09CAB6FDDA07A581A3E2420ActivitySubscription_activityCenter);
  v49 = *(v6 + OBJC_IVAR____TtCC9ChronoKit18ActivitySubscriberP33_8C3AD9B104C09CAB6FDDA07A581A3E2420ActivitySubscription_activityCenter + 24);
  v50 = *(v6 + OBJC_IVAR____TtCC9ChronoKit18ActivitySubscriberP33_8C3AD9B104C09CAB6FDDA07A581A3E2420ActivitySubscription_activityCenter + 32);
  __swift_project_boxed_opaque_existential_1((v6 + OBJC_IVAR____TtCC9ChronoKit18ActivitySubscriberP33_8C3AD9B104C09CAB6FDDA07A581A3E2420ActivitySubscription_activityCenter), v49);
  v51 = v89;
  (*(v12 + 104))(v89, *MEMORY[0x1E6959BB8], v11);
  v52 = (*(v50 + 40))(v35, v93, v51, v49, v50);
  (*(v12 + 8))(v51, v11);
  v95 = v52;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8EE0, &qword_1BF4EEB20);
  sub_1BF38C8B4(&qword_1EDC9D418, &qword_1EBDD8EE0, &qword_1BF4EEB20);
  v53 = v82;
  sub_1BF4E7C94();

  v54 = swift_allocObject();
  swift_weakInit();
  v55 = swift_allocObject();
  v56 = v84;
  v55[2] = v54;
  v55[3] = v56;
  v55[4] = v91;
  swift_allocObject();
  swift_weakInit();
  sub_1BF38C8B4(&unk_1EDC9D448, &qword_1EBDD8ED0, &qword_1BF4EEB08);

  v57 = v85;
  v58 = sub_1BF4E7CC4();

  (*(v83 + 8))(v53, v57);
  v59 = *(v6 + OBJC_IVAR____TtCC9ChronoKit18ActivitySubscriberP33_8C3AD9B104C09CAB6FDDA07A581A3E2420ActivitySubscription_payloadSubscription);
  *(v6 + OBJC_IVAR____TtCC9ChronoKit18ActivitySubscriberP33_8C3AD9B104C09CAB6FDDA07A581A3E2420ActivitySubscription_payloadSubscription) = v58;

  v60 = v48[3];
  v61 = v48[4];
  __swift_project_boxed_opaque_existential_1(v48, v60);
  v62 = v86;
  sub_1BF4E7504();
  v64 = (*(v61 + 32))(v62, v60, v61);
  (*(v87 + 8))(v62, v88);
  v95 = v64;
  v65 = swift_allocObject();
  swift_weakInit();

  v66 = swift_allocObject();
  v68 = v92;
  v67 = v93;
  v66[2] = v65;
  v66[3] = v68;
  v66[4] = v67;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8EE8, &qword_1BF4EEB28);
  sub_1BF38C8B4(&qword_1EDC9D408, &qword_1EBDD8EE8, &qword_1BF4EEB28);
  v69 = sub_1BF4E7CC4();

  v70 = *(v6 + OBJC_IVAR____TtCC9ChronoKit18ActivitySubscriberP33_8C3AD9B104C09CAB6FDDA07A581A3E2420ActivitySubscription_descriptorSubscription);
  *(v6 + OBJC_IVAR____TtCC9ChronoKit18ActivitySubscriberP33_8C3AD9B104C09CAB6FDDA07A581A3E2420ActivitySubscription_descriptorSubscription) = v69;

  v71 = sub_1BF4E7B34();
  v72 = sub_1BF4E8E84();

  if (os_log_type_enabled(v71, v72))
  {
    v74 = swift_slowAlloc();
    v75 = swift_slowAlloc();
    v95 = v75;
    *v74 = 136446210;
    v76 = *(v6 + OBJC_IVAR____TtCC9ChronoKit18ActivitySubscriberP33_8C3AD9B104C09CAB6FDDA07A581A3E2420ActivitySubscription_activityIdentifier);
    v77 = *(v6 + OBJC_IVAR____TtCC9ChronoKit18ActivitySubscriberP33_8C3AD9B104C09CAB6FDDA07A581A3E2420ActivitySubscription_activityIdentifier + 8);

    v78 = sub_1BF38D65C(v76, v77, &v95);

    *(v74 + 4) = v78;
    _os_log_impl(&dword_1BF389000, v71, v72, "Subscribed to activity payloads for: %{public}s", v74, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v75);
    MEMORY[0x1BFB5A5D0](v75, -1, -1);
    MEMORY[0x1BFB5A5D0](v74, -1, -1);
  }

  else
  {
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v94);
  return v6;
}

uint64_t sub_1BF40C2F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (qword_1EDC9D470 != -1)
  {
    swift_once();
  }

  v4 = sub_1BF4E7B54();
  __swift_project_value_buffer(v4, qword_1EDCA68B0);
  sub_1BF38E49C(a1, v18);
  v5 = sub_1BF4E7B34();
  v6 = sub_1BF4E8E84();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v17 = v8;
    *v7 = 136446210;
    sub_1BF38E49C(v18, v16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8EF8, &qword_1BF4EEB38);
    v9 = sub_1BF4E8994();
    v11 = v10;
    __swift_destroy_boxed_opaque_existential_1Tm(v18);
    v12 = sub_1BF38D65C(v9, v11, &v17);

    *(v7 + 4) = v12;
    _os_log_impl(&dword_1BF389000, v5, v6, "Received payload: %{public}s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    MEMORY[0x1BFB5A5D0](v8, -1, -1);
    MEMORY[0x1BFB5A5D0](v7, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1Tm(v18);
  }

  sub_1BF38E49C(a1, v18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8EF8, &qword_1BF4EEB38);
  v13 = sub_1BF4E73E4();
  v14 = swift_dynamicCast();
  return (*(*(v13 - 8) + 56))(a2, v14 ^ 1u, 1, v13);
}

uint64_t sub_1BF40C514(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v5 = result;
    if (qword_1EDC9D470 != -1)
    {
      swift_once();
    }

    v6 = sub_1BF4E7B54();
    __swift_project_value_buffer(v6, qword_1EDCA68B0);

    v7 = sub_1BF4E7B34();
    v8 = sub_1BF4E8E84();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v15 = v10;
      *v9 = 136446210;
      v11 = *(v5 + OBJC_IVAR____TtCC9ChronoKit18ActivitySubscriberP33_8C3AD9B104C09CAB6FDDA07A581A3E2420ActivitySubscription_activityIdentifier);
      v12 = *(v5 + OBJC_IVAR____TtCC9ChronoKit18ActivitySubscriberP33_8C3AD9B104C09CAB6FDDA07A581A3E2420ActivitySubscription_activityIdentifier + 8);

      v13 = sub_1BF38D65C(v11, v12, &v15);

      *(v9 + 4) = v13;
      _os_log_impl(&dword_1BF389000, v7, v8, "Activity ended: %{public}s", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v10);
      MEMORY[0x1BFB5A5D0](v10, -1, -1);
      MEMORY[0x1BFB5A5D0](v9, -1, -1);
    }

    sub_1BF40DA40();
    a3(v14);
  }

  return result;
}

uint64_t sub_1BF40C6D4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8EC8, &qword_1BF4EEA58);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = v24 - v4;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v7 = result;
    if (qword_1EDC9D470 != -1)
    {
      swift_once();
    }

    v8 = sub_1BF4E7B54();
    __swift_project_value_buffer(v8, qword_1EDCA68B0);

    v9 = sub_1BF4E7B34();
    v10 = sub_1BF4E8E84();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v24[0] = v12;
      *v11 = 136446210;
      v13 = *(v7 + OBJC_IVAR____TtCC9ChronoKit18ActivitySubscriberP33_8C3AD9B104C09CAB6FDDA07A581A3E2420ActivitySubscription_activityIdentifier);
      v14 = *(v7 + OBJC_IVAR____TtCC9ChronoKit18ActivitySubscriberP33_8C3AD9B104C09CAB6FDDA07A581A3E2420ActivitySubscription_activityIdentifier + 8);

      v15 = sub_1BF38D65C(v13, v14, v24);

      *(v11 + 4) = v15;
      _os_log_impl(&dword_1BF389000, v9, v10, "Activity payload updated: %{public}s", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v12);
      MEMORY[0x1BFB5A5D0](v12, -1, -1);
      MEMORY[0x1BFB5A5D0](v11, -1, -1);
    }

    v16 = *(v7 + OBJC_IVAR____TtCC9ChronoKit18ActivitySubscriberP33_8C3AD9B104C09CAB6FDDA07A581A3E2420ActivitySubscription_lock);
    v17 = *(v16 + 16);

    os_unfair_lock_lock(v17);
    v18 = sub_1BF4E73E4();
    v19 = *(v18 - 8);
    v20 = *(v19 + 16);
    v20(v5, a1, v18);
    v21 = *(v19 + 56);
    v21(v5, 0, 1, v18);
    v22 = OBJC_IVAR____TtCC9ChronoKit18ActivitySubscriberP33_8C3AD9B104C09CAB6FDDA07A581A3E2420ActivitySubscription_payload;
    swift_beginAccess();
    sub_1BF40FF30(v5, v7 + v22);
    swift_endAccess();
    os_unfair_lock_unlock(*(v16 + 16));

    v23 = *(v7 + OBJC_IVAR____TtCC9ChronoKit18ActivitySubscriberP33_8C3AD9B104C09CAB6FDDA07A581A3E2420ActivitySubscription__payloadPublisher);
    v20(v5, a1, v18);
    v21(v5, 0, 1, v18);

    sub_1BF4E7C54();

    return sub_1BF38C9B4(v5, &qword_1EBDD8EC8, &qword_1BF4EEA58);
  }

  return result;
}

void sub_1BF40CA10(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v77 = a4;
  v78 = a3;
  v5 = sub_1BF4E73E4();
  v73 = *(v5 - 8);
  v6 = *(v73 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8EC8, &qword_1BF4EEA58);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v67 = &v63 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v68 = &v63 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v63 - v15;
  v75 = sub_1BF4E7404();
  v69 = *(v75 - 8);
  v17 = *(v69 + 64);
  MEMORY[0x1EEE9AC00](v75);
  v19 = &v63 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = sub_1BF4E7484();
  v20 = *(v76 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v76);
  v23 = &v63 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v63 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8EF0, &qword_1BF4EEB30);
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x1EEE9AC00](v27 - 8);
  v71 = &v63 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v70 = &v63 - v31;
  v32 = *a1;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v72 = Strong;
    v63 = v8;
    v34 = *(v32 + 16);
    if (v34)
    {
      v64 = v23;
      v65 = v16;
      v66 = v5;
      v35 = 0;
      v74 = v20 + 16;
      v36 = (v69 + 8);
      v37 = v20;
      v38 = (v20 + 8);
      v39 = v76;
      while (v35 < *(v32 + 16))
      {
        (*(v37 + 16))(v26, v32 + ((*(v37 + 80) + 32) & ~*(v37 + 80)) + *(v37 + 72) * v35, v39);
        sub_1BF4E7464();
        v40 = sub_1BF4E73F4();
        v42 = v41;
        (*v36)(v19, v75);
        if (v40 == v78 && v42 == v77)
        {

LABEL_12:
          v20 = v37;
          v46 = v70;
          v39 = v76;
          (*(v37 + 32))(v70, v26, v76);
          v44 = 0;
          v16 = v65;
          v5 = v66;
          v45 = v73;
          v23 = v64;
          goto LABEL_13;
        }

        v43 = sub_1BF4E9734();

        if (v43)
        {
          goto LABEL_12;
        }

        ++v35;
        v39 = v76;
        (*v38)(v26, v76);
        if (v34 == v35)
        {
          v44 = 1;
          v16 = v65;
          v5 = v66;
          v45 = v73;
          v20 = v37;
          v23 = v64;
          v46 = v70;
          goto LABEL_13;
        }
      }

      __break(1u);

      os_unfair_lock_unlock(*(v32 + 16));
      __break(1u);
    }

    else
    {
      v44 = 1;
      v39 = v76;
      v46 = v70;
      v45 = v73;
LABEL_13:
      (*(v20 + 56))(v46, v44, 1, v39);
      v47 = v71;
      sub_1BF38C94C(v46, v71, &qword_1EBDD8EF0, &qword_1BF4EEB30);
      v48 = v46;
      if ((*(v20 + 48))(v47, 1, v39) == 1)
      {
        sub_1BF38C9B4(v46, &qword_1EBDD8EF0, &qword_1BF4EEB30);

        sub_1BF38C9B4(v47, &qword_1EBDD8EF0, &qword_1BF4EEB30);
      }

      else
      {
        (*(v20 + 32))(v23, v47, v39);
        v79 = 0;
        v49 = *(v45 + 56);
        v49(v16, 1, 1, v5);
        v50 = v72;
        v51 = *(v72 + OBJC_IVAR____TtCC9ChronoKit18ActivitySubscriberP33_8C3AD9B104C09CAB6FDDA07A581A3E2420ActivitySubscription_lock);
        v52 = *(v51 + 16);

        os_unfair_lock_lock(v52);
        sub_1BF40D1BC(v50, v23, v16, &v79);
        os_unfair_lock_unlock(*(v51 + 16));

        if (v79)
        {
          v53 = v68;
          sub_1BF38C94C(v16, v68, &qword_1EBDD8EC8, &qword_1BF4EEA58);
          v54 = v73;
          if ((*(v73 + 48))(v53, 1, v5) == 1)
          {
            sub_1BF38C9B4(v48, &qword_1EBDD8EF0, &qword_1BF4EEB30);

            v55 = &qword_1EBDD8EC8;
            v56 = &qword_1BF4EEA58;
            v57 = v53;
          }

          else
          {
            v58 = v63;
            (*(v54 + 32))(v63, v53, v5);
            v59 = *(v72 + OBJC_IVAR____TtCC9ChronoKit18ActivitySubscriberP33_8C3AD9B104C09CAB6FDDA07A581A3E2420ActivitySubscription__payloadPublisher);
            v60 = *(v54 + 16);
            v61 = v67;
            v60(v67, v58, v5);
            v49(v61, 0, 1, v5);

            sub_1BF4E7C54();

            sub_1BF38C9B4(v61, &qword_1EBDD8EC8, &qword_1BF4EEA58);
            (*(v73 + 8))(v58, v5);
            v55 = &qword_1EBDD8EF0;
            v56 = &qword_1BF4EEB30;
            v57 = v48;
          }

          sub_1BF38C9B4(v57, v55, v56);
        }

        else
        {
          sub_1BF38C9B4(v48, &qword_1EBDD8EF0, &qword_1BF4EEB30);
        }

        v62 = v76;
        sub_1BF38C9B4(v16, &qword_1EBDD8EC8, &qword_1BF4EEA58);
        (*(v20 + 8))(v23, v62);
      }
    }
  }
}

uint64_t sub_1BF40D1BC(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  v38 = a3;
  v39 = a4;
  v41[7] = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8EC8, &qword_1BF4EEA58);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v36 = &v35 - v7;
  v8 = sub_1BF4E74A4();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v35 - v14;
  v16 = OBJC_IVAR____TtCC9ChronoKit18ActivitySubscriberP33_8C3AD9B104C09CAB6FDDA07A581A3E2420ActivitySubscription_state;
  swift_beginAccess();
  v17 = *(v9 + 16);
  v40 = a1;
  v37 = v16;
  v17(v15, a1 + v16, v8);
  v18 = *(v9 + 104);
  v18(v12, *MEMORY[0x1E6959C40], v8);
  LOBYTE(a1) = sub_1BF4E7494();
  v19 = *(v9 + 8);
  v19(v12, v8);
  v19(v15, v8);
  if (a1 & 1) != 0 && (sub_1BF4E7474(), v18(v12, *MEMORY[0x1E6959C38], v8), v20 = sub_1BF4E7494(), v19(v12, v8), v19(v15, v8), (v20))
  {
    if (qword_1EDC9D470 != -1)
    {
      swift_once();
    }

    v21 = sub_1BF4E7B54();
    __swift_project_value_buffer(v21, qword_1EDCA68B0);
    v22 = v40;

    v23 = sub_1BF4E7B34();
    v24 = sub_1BF4E8E84();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v41[0] = v26;
      *v25 = 136446210;
      *(v25 + 4) = sub_1BF38D65C(*(v22 + OBJC_IVAR____TtCC9ChronoKit18ActivitySubscriberP33_8C3AD9B104C09CAB6FDDA07A581A3E2420ActivitySubscription_activityIdentifier), *(v22 + OBJC_IVAR____TtCC9ChronoKit18ActivitySubscriberP33_8C3AD9B104C09CAB6FDDA07A581A3E2420ActivitySubscription_activityIdentifier + 8), v41);
      _os_log_impl(&dword_1BF389000, v23, v24, "Activity became stale changed: %{public}s", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v26);
      MEMORY[0x1BFB5A5D0](v26, -1, -1);
      MEMORY[0x1BFB5A5D0](v25, -1, -1);
    }

    v27 = OBJC_IVAR____TtCC9ChronoKit18ActivitySubscriberP33_8C3AD9B104C09CAB6FDDA07A581A3E2420ActivitySubscription_payload;
    swift_beginAccess();
    v28 = v22 + v27;
    v29 = v36;
    sub_1BF38C94C(v28, v36, &qword_1EBDD8EC8, &qword_1BF4EEA58);
    sub_1BF40FF30(v29, v38);
    v30 = 1;
  }

  else
  {
    v31 = v38;
    sub_1BF38C9B4(v38, &qword_1EBDD8EC8, &qword_1BF4EEA58);
    v32 = sub_1BF4E73E4();
    (*(*(v32 - 8) + 56))(v31, 1, 1, v32);
    v30 = 0;
    v22 = v40;
  }

  *v39 = v30;
  sub_1BF4E7474();
  v33 = v37;
  swift_beginAccess();
  (*(v9 + 40))(v22 + v33, v15, v8);
  return swift_endAccess();
}

uint64_t sub_1BF40D630(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v43 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD87A8, &unk_1BF4EB2C0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = (&v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v34 - v11;
  if (qword_1EDC9D470 != -1)
  {
    swift_once();
  }

  v13 = sub_1BF4E7B54();
  __swift_project_value_buffer(v13, qword_1EDCA68B0);
  sub_1BF38C94C(a1, v12, &qword_1EBDD87A8, &unk_1BF4EB2C0);
  v14 = sub_1BF4E7B34();
  v15 = sub_1BF4E8E84();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v38 = a2;
    v17 = v16;
    v37 = swift_slowAlloc();
    v40 = v37;
    *v17 = 136446210;
    sub_1BF38C94C(v12, v9, &qword_1EBDD87A8, &unk_1BF4EB2C0);
    v41 = 91;
    v42 = 0xE100000000000000;
    v18 = [*v9 description];
    v36 = v15;
    v19 = v18;
    v20 = sub_1BF4E8914();
    v35 = v6;
    v21 = v20;
    v39 = v3;
    v23 = v22;

    MEMORY[0x1BFB58C90](v21, v23);

    MEMORY[0x1BFB58C90](58, 0xE100000000000000);
    v24 = type metadata accessor for ActivityKey();
    v25 = *(v24 + 20);
    sub_1BF4E7454();
    sub_1BF3A10FC(&qword_1EDC9F098, MEMORY[0x1E6959BC8]);
    v26 = sub_1BF4E96A4();
    MEMORY[0x1BFB58C90](v26);

    MEMORY[0x1BFB58C90](58, 0xE100000000000000);
    MEMORY[0x1BFB58C90](*(v9 + *(v24 + 24)), *(v9 + *(v24 + 24) + 8));
    MEMORY[0x1BFB58C90](93, 0xE100000000000000);
    MEMORY[0x1BFB58C90](58, 0xE100000000000000);
    v27 = v9 + *(v35 + 68);
    v28 = ActivityVariantKey.description.getter();
    MEMORY[0x1BFB58C90](v28);

    v29 = v41;
    v30 = v42;
    sub_1BF38C9B4(v9, &qword_1EBDD87A8, &unk_1BF4EB2C0);
    sub_1BF38C9B4(v12, &qword_1EBDD87A8, &unk_1BF4EB2C0);
    v31 = sub_1BF38D65C(v29, v30, &v40);

    *(v17 + 4) = v31;
    _os_log_impl(&dword_1BF389000, v14, v36, "Adding assertion for variant: %{public}s", v17, 0xCu);
    v32 = v37;
    __swift_destroy_boxed_opaque_existential_1Tm(v37);
    MEMORY[0x1BFB5A5D0](v32, -1, -1);
    MEMORY[0x1BFB5A5D0](v17, -1, -1);
  }

  else
  {

    sub_1BF38C9B4(v12, &qword_1EBDD87A8, &unk_1BF4EB2C0);
  }

  sub_1BF38C94C(a1, v9, &qword_1EBDD87A8, &unk_1BF4EB2C0);
  sub_1BF38E49C(v43, &v41);
  swift_beginAccess();
  sub_1BF43A624(&v41, v9);
  return swift_endAccess();
}

void sub_1BF40DA40()
{
  v1 = v0;
  if (*(v0 + OBJC_IVAR____TtCC9ChronoKit18ActivitySubscriberP33_8C3AD9B104C09CAB6FDDA07A581A3E2420ActivitySubscription_payloadSubscription))
  {

    sub_1BF4E7BD4();
  }

  if (*(v0 + OBJC_IVAR____TtCC9ChronoKit18ActivitySubscriberP33_8C3AD9B104C09CAB6FDDA07A581A3E2420ActivitySubscription_descriptorSubscription))
  {
    v2 = *(v0 + OBJC_IVAR____TtCC9ChronoKit18ActivitySubscriberP33_8C3AD9B104C09CAB6FDDA07A581A3E2420ActivitySubscription_descriptorSubscription);

    sub_1BF4E7BD4();
  }

  v3 = *(v0 + OBJC_IVAR____TtCC9ChronoKit18ActivitySubscriberP33_8C3AD9B104C09CAB6FDDA07A581A3E2420ActivitySubscription_lock);
  os_unfair_lock_lock(*(v3 + 16));
  sub_1BF40DB04(v1);
  v4 = *(v3 + 16);

  os_unfair_lock_unlock(v4);
}

uint64_t sub_1BF40DB04(uint64_t a1)
{
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8F00, qword_1BF4EEB40);
  v2 = *(*(v30 - 8) + 64);
  MEMORY[0x1EEE9AC00](v30);
  v29 = &v27 - v3;
  if (qword_1EDC9D470 != -1)
  {
LABEL_16:
    swift_once();
  }

  v4 = sub_1BF4E7B54();
  __swift_project_value_buffer(v4, qword_1EDCA68B0);

  v5 = sub_1BF4E7B34();
  v6 = sub_1BF4E8E84();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v31 = v8;
    *v7 = 136446210;
    *(v7 + 4) = sub_1BF38D65C(*(a1 + OBJC_IVAR____TtCC9ChronoKit18ActivitySubscriberP33_8C3AD9B104C09CAB6FDDA07A581A3E2420ActivitySubscription_activityIdentifier), *(a1 + OBJC_IVAR____TtCC9ChronoKit18ActivitySubscriberP33_8C3AD9B104C09CAB6FDDA07A581A3E2420ActivitySubscription_activityIdentifier + 8), &v31);
    _os_log_impl(&dword_1BF389000, v5, v6, "Invalidating activity subscription: %{public}s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    MEMORY[0x1BFB5A5D0](v8, -1, -1);
    MEMORY[0x1BFB5A5D0](v7, -1, -1);
  }

  v9 = OBJC_IVAR____TtCC9ChronoKit18ActivitySubscriberP33_8C3AD9B104C09CAB6FDDA07A581A3E2420ActivitySubscription__lock_contentAssertions;
  swift_beginAccess();
  v10 = *(a1 + v9);
  v11 = *(v10 + 64);
  v28 = v10 + 64;
  v12 = 1 << *(v10 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & v11;
  v15 = (v12 + 63) >> 6;
  v32 = v10;
  swift_bridgeObjectRetain_n();
  v16 = 0;
  if (v14)
  {
    while (1)
    {
      v17 = v16;
LABEL_12:
      v18 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
      v19 = v18 | (v17 << 6);
      a1 = v32;
      v20 = *(v32 + 48);
      v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD87A8, &unk_1BF4EB2C0);
      v22 = v29;
      sub_1BF38C94C(v20 + *(*(v21 - 8) + 72) * v19, v29, &qword_1EBDD87A8, &unk_1BF4EB2C0);
      v23 = (v22 + *(v30 + 48));
      sub_1BF38E49C(*(a1 + 56) + 40 * v19, v23);
      v24 = v23[3];
      v25 = v23[4];
      __swift_project_boxed_opaque_existential_1(v23, v24);
      (*(v25 + 8))(v24, v25);
      sub_1BF38C9B4(v22, &qword_1EBDD8F00, qword_1BF4EEB40);
      if (!v14)
      {
        goto LABEL_8;
      }
    }
  }

  while (1)
  {
LABEL_8:
    v17 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      __break(1u);
      goto LABEL_16;
    }

    if (v17 >= v15)
    {
      break;
    }

    v14 = *(v28 + 8 * v17);
    ++v16;
    if (v14)
    {
      v16 = v17;
      goto LABEL_12;
    }
  }
}

uint64_t sub_1BF40DE40()
{
  sub_1BF40DA40();
  sub_1BF38C9B4(v0 + OBJC_IVAR____TtCC9ChronoKit18ActivitySubscriberP33_8C3AD9B104C09CAB6FDDA07A581A3E2420ActivitySubscription_payload, &qword_1EBDD8EC8, &qword_1BF4EEA58);
  v1 = *(v0 + OBJC_IVAR____TtCC9ChronoKit18ActivitySubscriberP33_8C3AD9B104C09CAB6FDDA07A581A3E2420ActivitySubscription_payloadPublisher);

  v2 = *(v0 + OBJC_IVAR____TtCC9ChronoKit18ActivitySubscriberP33_8C3AD9B104C09CAB6FDDA07A581A3E2420ActivitySubscription__payloadPublisher);

  v3 = *(v0 + OBJC_IVAR____TtCC9ChronoKit18ActivitySubscriberP33_8C3AD9B104C09CAB6FDDA07A581A3E2420ActivitySubscription_activityIdentifier + 8);

  v4 = *(v0 + OBJC_IVAR____TtCC9ChronoKit18ActivitySubscriberP33_8C3AD9B104C09CAB6FDDA07A581A3E2420ActivitySubscription_payloadSubscription);

  v5 = *(v0 + OBJC_IVAR____TtCC9ChronoKit18ActivitySubscriberP33_8C3AD9B104C09CAB6FDDA07A581A3E2420ActivitySubscription_descriptorSubscription);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtCC9ChronoKit18ActivitySubscriberP33_8C3AD9B104C09CAB6FDDA07A581A3E2420ActivitySubscription_activityCenter));
  v6 = *(v0 + OBJC_IVAR____TtCC9ChronoKit18ActivitySubscriberP33_8C3AD9B104C09CAB6FDDA07A581A3E2420ActivitySubscription_lock);

  v7 = *(v0 + OBJC_IVAR____TtCC9ChronoKit18ActivitySubscriberP33_8C3AD9B104C09CAB6FDDA07A581A3E2420ActivitySubscription__lock_contentAssertions);

  v8 = OBJC_IVAR____TtCC9ChronoKit18ActivitySubscriberP33_8C3AD9B104C09CAB6FDDA07A581A3E2420ActivitySubscription_state;
  v9 = sub_1BF4E74A4();
  (*(*(v9 - 8) + 8))(v0 + v8, v9);
  return v0;
}

uint64_t sub_1BF40DF48()
{
  v0 = *sub_1BF40DE40();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t ActivitySubscriber.__allocating_init(logger:activityCenter:)(uint64_t a1, uint64_t *a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  v7 = swift_allocObject();
  ActivitySubscriber.init(logger:activityCenter:)(a1, a2);
  return v7;
}

uint64_t ActivitySubscriber.init(logger:activityCenter:)(uint64_t a1, uint64_t *a2)
{
  v30 = a2;
  v34 = a1;
  v5 = sub_1BF4E7FF4();
  v6 = *(v5 - 8);
  v39 = v5;
  v40 = v6;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v38 = v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_1BF4E8F24();
  v32 = *(v35 - 8);
  v9 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v35);
  v31 = v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1BF4E8ED4();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v29[2] = v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1BF4E8064();
  v36 = *(v14 - 8);
  v37 = v14;
  v15 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1E69E7CC8];
  *(v2 + OBJC_IVAR____TtC9ChronoKit18ActivitySubscriber__locked_subscriptions) = MEMORY[0x1E69E7CC8];
  *(v2 + OBJC_IVAR____TtC9ChronoKit18ActivitySubscriber__locked_descriptors) = v18;
  v19 = OBJC_IVAR____TtC9ChronoKit18ActivitySubscriber_lock;
  type metadata accessor for UnfairLock();
  v20 = swift_allocObject();
  v21 = swift_slowAlloc();
  *v21 = 0;
  *(v20 + 16) = v21;
  *(v2 + v19) = v20;
  *(v2 + OBJC_IVAR____TtC9ChronoKit18ActivitySubscriber_announcementSubscription) = 0;
  v22 = OBJC_IVAR____TtC9ChronoKit18ActivitySubscriber_logger;
  v33 = sub_1BF4E7B54();
  v23 = *(v33 - 8);
  (*(v23 + 16))(v2 + v22, a1, v33);
  sub_1BF38E49C(a2, v2 + OBJC_IVAR____TtC9ChronoKit18ActivitySubscriber_activityCenter);
  v29[1] = sub_1BF3DC720();
  sub_1BF4E8024();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1BF3A10FC(&qword_1EDC9F148, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD85C0, &qword_1BF4EC090);
  sub_1BF38C8B4(&qword_1EDC9F178, &qword_1EBDD85C0, &qword_1BF4EC090);
  sub_1BF4E91A4();
  (*(v32 + 104))(v31, *MEMORY[0x1E69E8098], v35);
  v24 = sub_1BF4E8F64();
  aBlock[4] = sub_1BF40E99C;
  v43 = v2;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BF38E868;
  aBlock[3] = &block_descriptor_3;
  v25 = _Block_copy(aBlock);

  sub_1BF4E8014();
  v41 = MEMORY[0x1E69E7CC0];
  sub_1BF3A10FC(&qword_1EDC9F980, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8EB8, &unk_1BF4F0890);
  sub_1BF38C8B4(&qword_1EDC9F190, &qword_1EBDD8EB8, &unk_1BF4F0890);
  v27 = v38;
  v26 = v39;
  sub_1BF4E91A4();
  MEMORY[0x1BFB591B0](0, v17, v27, v25);
  _Block_release(v25);

  __swift_destroy_boxed_opaque_existential_1Tm(v30);
  (*(v23 + 8))(v34, v33);
  (*(v40 + 8))(v27, v26);
  (*(v36 + 8))(v17, v37);

  return v2;
}

void sub_1BF40E584(uint64_t a1)
{
  v2 = sub_1BF4E7514();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + OBJC_IVAR____TtC9ChronoKit18ActivitySubscriber_activityCenter + 24);
  v8 = *(a1 + OBJC_IVAR____TtC9ChronoKit18ActivitySubscriber_activityCenter + 32);
  __swift_project_boxed_opaque_existential_1((a1 + OBJC_IVAR____TtC9ChronoKit18ActivitySubscriber_activityCenter), v7);
  sub_1BF4E7504();
  v9 = (*(v8 + 32))(v6, v7, v8);
  (*(v3 + 8))(v6, v2);
  v16[2] = v9;
  swift_allocObject();
  swift_weakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8EE8, &qword_1BF4EEB28);
  sub_1BF38C8B4(&qword_1EDC9D408, &qword_1EBDD8EE8, &qword_1BF4EEB28);
  v10 = sub_1BF4E7CC4();

  v11 = *(a1 + OBJC_IVAR____TtC9ChronoKit18ActivitySubscriber_announcementSubscription);
  *(a1 + OBJC_IVAR____TtC9ChronoKit18ActivitySubscriber_announcementSubscription) = v10;

  if (qword_1EDC9D470 != -1)
  {
    swift_once();
  }

  v12 = sub_1BF4E7B54();
  __swift_project_value_buffer(v12, qword_1EDCA68B0);
  v13 = sub_1BF4E7B34();
  v14 = sub_1BF4E8E84();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_1BF389000, v13, v14, "Subscribed to announcement feed", v15, 2u);
    MEMORY[0x1BFB5A5D0](v15, -1, -1);
  }
}

void ActivitySubscriber.deinit()
{
  v1 = v0;
  v20 = OBJC_IVAR____TtC9ChronoKit18ActivitySubscriber_announcementSubscription;
  v2 = *(v0 + OBJC_IVAR____TtC9ChronoKit18ActivitySubscriber_announcementSubscription);
  if (v2)
  {

    sub_1BF4E7BD4();
  }

  v3 = OBJC_IVAR____TtC9ChronoKit18ActivitySubscriber__locked_subscriptions;
  swift_beginAccess();
  v4 = *(v1 + v3);
  v5 = 1 << *(v4 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(v4 + 64);
  v8 = (v5 + 63) >> 6;
  v9 = *(v1 + v3);

  for (i = 0; v7; i = v11)
  {
    v11 = i;
LABEL_10:
    v12 = *(*(v4 + 56) + ((v11 << 9) | (8 * __clz(__rbit64(v7)))));
    if (*(v12 + OBJC_IVAR____TtCC9ChronoKit18ActivitySubscriberP33_8C3AD9B104C09CAB6FDDA07A581A3E2420ActivitySubscription_payloadSubscription))
    {

      sub_1BF4E7BD4();
    }

    else
    {
    }

    if (*(v12 + OBJC_IVAR____TtCC9ChronoKit18ActivitySubscriberP33_8C3AD9B104C09CAB6FDDA07A581A3E2420ActivitySubscription_descriptorSubscription))
    {
      v13 = *(v12 + OBJC_IVAR____TtCC9ChronoKit18ActivitySubscriberP33_8C3AD9B104C09CAB6FDDA07A581A3E2420ActivitySubscription_descriptorSubscription);

      sub_1BF4E7BD4();
    }

    v2 = *(v12 + OBJC_IVAR____TtCC9ChronoKit18ActivitySubscriberP33_8C3AD9B104C09CAB6FDDA07A581A3E2420ActivitySubscription_lock);
    os_unfair_lock_lock(*(v2 + 16));
    sub_1BF40DB04(v12);
    v7 &= v7 - 1;
    os_unfair_lock_unlock(*(v2 + 16));
  }

  while (1)
  {
    v11 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v11 >= v8)
    {

      v14 = OBJC_IVAR____TtC9ChronoKit18ActivitySubscriber_logger;
      v15 = sub_1BF4E7B54();
      (*(*(v15 - 8) + 8))(v1 + v14, v15);
      __swift_destroy_boxed_opaque_existential_1Tm((v1 + OBJC_IVAR____TtC9ChronoKit18ActivitySubscriber_activityCenter));
      v16 = *(v1 + v3);

      v17 = *(v1 + OBJC_IVAR____TtC9ChronoKit18ActivitySubscriber__locked_descriptors);

      v18 = *(v1 + OBJC_IVAR____TtC9ChronoKit18ActivitySubscriber_lock);

      v19 = *(v1 + v20);

      return;
    }

    v7 = *(v4 + 64 + 8 * v11);
    ++i;
    if (v7)
    {
      goto LABEL_10;
    }
  }

  __break(1u);

  os_unfair_lock_unlock(*(v2 + 16));
  __break(1u);
}

uint64_t ActivitySubscriber.__deallocating_deinit()
{
  ActivitySubscriber.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

void sub_1BF40EC54(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + OBJC_IVAR____TtC9ChronoKit18ActivitySubscriber_lock);
  os_unfair_lock_lock(*(v5 + 16));
  sub_1BF40ECDC(a1, v2, a2);
  v6 = *(v5 + 16);

  os_unfair_lock_unlock(v6);
}

void sub_1BF40ECDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v56 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD87A8, &unk_1BF4EB2C0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = (&v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v51 - v12;
  if (qword_1EDC9D470 != -1)
  {
    swift_once();
  }

  v14 = sub_1BF4E7B54();
  __swift_project_value_buffer(v14, qword_1EDCA68B0);
  v55 = a1;
  sub_1BF38C94C(a1, v13, &qword_1EBDD87A8, &unk_1BF4EB2C0);
  v15 = sub_1BF4E7B34();
  v16 = sub_1BF4E8E84();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v52 = v7;
    v18 = v17;
    v54 = swift_slowAlloc();
    v59 = v54;
    *v18 = 136446210;
    sub_1BF38C94C(v13, v10, &qword_1EBDD87A8, &unk_1BF4EB2C0);
    v57 = 91;
    v58 = 0xE100000000000000;
    v19 = [*v10 description];
    v20 = sub_1BF4E8914();
    v53 = v16;
    v22 = v21;

    MEMORY[0x1BFB58C90](v20, v22);

    MEMORY[0x1BFB58C90](58, 0xE100000000000000);
    v23 = type metadata accessor for ActivityKey();
    v24 = *(v23 + 20);
    sub_1BF4E7454();
    sub_1BF3A10FC(&qword_1EDC9F098, MEMORY[0x1E6959BC8]);
    v25 = sub_1BF4E96A4();
    MEMORY[0x1BFB58C90](v25);
    v4 = v3;

    MEMORY[0x1BFB58C90](58, 0xE100000000000000);
    MEMORY[0x1BFB58C90](*(v10 + *(v23 + 24)), *(v10 + *(v23 + 24) + 8));
    MEMORY[0x1BFB58C90](93, 0xE100000000000000);
    MEMORY[0x1BFB58C90](58, 0xE100000000000000);
    v26 = v10 + *(v52 + 68);
    v27 = ActivityVariantKey.description.getter();
    MEMORY[0x1BFB58C90](v27);

    v28 = v57;
    v29 = v58;
    sub_1BF38C9B4(v10, &qword_1EBDD87A8, &unk_1BF4EB2C0);
    sub_1BF38C9B4(v13, &qword_1EBDD87A8, &unk_1BF4EB2C0);
    v30 = sub_1BF38D65C(v28, v29, &v59);

    *(v18 + 4) = v30;
    _os_log_impl(&dword_1BF389000, v15, v53, "Subscribing to activity: %{public}s", v18, 0xCu);
    v31 = v54;
    __swift_destroy_boxed_opaque_existential_1Tm(v54);
    MEMORY[0x1BFB5A5D0](v31, -1, -1);
    MEMORY[0x1BFB5A5D0](v18, -1, -1);
  }

  else
  {

    sub_1BF38C9B4(v13, &qword_1EBDD87A8, &unk_1BF4EB2C0);
  }

  v32 = type metadata accessor for ActivityKey();
  v33 = v55;
  v34 = (v55 + *(v32 + 24));
  v36 = *v34;
  v35 = v34[1];
  v37 = OBJC_IVAR____TtC9ChronoKit18ActivitySubscriber__locked_subscriptions;
  swift_beginAccess();
  v38 = *(a2 + v37);
  if (*(v38 + 16))
  {
    v39 = *(a2 + v37);

    v40 = sub_1BF3CD5D0(v36, v35);
    if (v41)
    {
      v42 = *(*(v38 + 56) + 8 * v40);

      goto LABEL_11;
    }
  }

  sub_1BF38E49C(a2 + OBJC_IVAR____TtC9ChronoKit18ActivitySubscriber_activityCenter, &v57);
  v43 = swift_allocObject();
  swift_weakInit();
  v44 = swift_allocObject();
  v44[2] = v43;
  v44[3] = v36;
  v44[4] = v35;
  v45 = type metadata accessor for ActivitySubscriber.ActivitySubscription(0);
  v46 = *(v45 + 48);
  v47 = *(v45 + 52);
  swift_allocObject();
  swift_bridgeObjectRetain_n();
  v42 = sub_1BF40B79C(v36, v35, &v57, sub_1BF40FEB4, v44);
  swift_beginAccess();

  v48 = *(a2 + v37);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v60 = *(a2 + v37);
  *(a2 + v37) = 0x8000000000000000;
  sub_1BF3D6DBC(v42, v36, v35, isUniquelyReferenced_nonNull_native);

  *(a2 + v37) = v60;
  swift_endAccess();
LABEL_11:
  v50 = *(v42 + OBJC_IVAR____TtCC9ChronoKit18ActivitySubscriberP33_8C3AD9B104C09CAB6FDDA07A581A3E2420ActivitySubscription_lock);
  os_unfair_lock_lock(*(v50 + 16));
  sub_1BF40D630(v33, v42, v56);
  if (v4)
  {

    os_unfair_lock_unlock(*(v50 + 16));
    __break(1u);
  }

  else
  {
    os_unfair_lock_unlock(*(v50 + 16));
  }
}

uint64_t sub_1BF40F270(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v6 = *(result + OBJC_IVAR____TtC9ChronoKit18ActivitySubscriber_lock);
    v7 = *(v6 + 16);

    os_unfair_lock_lock(v7);
    swift_beginAccess();

    sub_1BF43A700(0, a2, a3);
    swift_endAccess();
    os_unfair_lock_unlock(*(v6 + 16));
  }

  return result;
}

uint64_t sub_1BF40F34C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v4 = v3;
  v52 = a3;
  v7 = sub_1BF4E7514();
  v50 = *(v7 - 8);
  v51 = v7;
  v8 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v49 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1BF4E7404();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v48 = (&v47 - v16);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8EC0, &qword_1BF4EEA50);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v20 = &v47 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v47 - v22;
  v24 = *(v3 + OBJC_IVAR____TtC9ChronoKit18ActivitySubscriber_lock);
  os_unfair_lock_lock(*(v24 + 16));
  v25 = OBJC_IVAR____TtC9ChronoKit18ActivitySubscriber__locked_descriptors;
  swift_beginAccess();
  v26 = *(v4 + v25);
  v27 = *(v26 + 16);
  v53 = a1;
  v54 = a2;
  if (v27)
  {

    v28 = sub_1BF3CD5D0(a1, a2);
    if (v29)
    {
      (*(v11 + 16))(v23, *(v26 + 56) + *(v11 + 72) * v28, v10);
      v30 = 0;
    }

    else
    {
      v30 = 1;
    }
  }

  else
  {
    v30 = 1;
  }

  v31 = v30;
  v32 = *(v11 + 56);
  v32(v23, v31, 1, v10);
  os_unfair_lock_unlock(*(v24 + 16));
  sub_1BF38C94C(v23, v20, &qword_1EBDD8EC0, &qword_1BF4EEA50);
  if ((*(v11 + 48))(v20, 1, v10) == 1)
  {
    v48 = v32;
    sub_1BF38C9B4(v20, &qword_1EBDD8EC0, &qword_1BF4EEA50);
    v33 = *(v4 + OBJC_IVAR____TtC9ChronoKit18ActivitySubscriber_activityCenter + 24);
    v34 = *(v4 + OBJC_IVAR____TtC9ChronoKit18ActivitySubscriber_activityCenter + 32);
    __swift_project_boxed_opaque_existential_1((v4 + OBJC_IVAR____TtC9ChronoKit18ActivitySubscriber_activityCenter), v33);
    v35 = v49;
    sub_1BF4E7504();
    v39 = (*(v34 + 16))(v35, v33, v34);
    result = (*(v50 + 8))(v35, v51);
    v50 = *(v39 + 16);
    if (v50)
    {
      v41 = 0;
      v51 = v11 + 16;
      while (v41 < *(v39 + 16))
      {
        (*(v11 + 16))(v14, v39 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v41, v10);
        if (sub_1BF4E73F4() == v53 && v42 == v54)
        {

LABEL_21:
          sub_1BF38C9B4(v23, &qword_1EBDD8EC0, &qword_1BF4EEA50);

          v46 = v52;
          (*(v11 + 32))(v52, v14, v10);
          v44 = v46;
          v45 = 0;
          return v48(v44, v45, 1, v10);
        }

        v43 = sub_1BF4E9734();

        if (v43)
        {
          goto LABEL_21;
        }

        ++v41;
        result = (*(v11 + 8))(v14, v10);
        if (v50 == v41)
        {
          goto LABEL_17;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_17:
      sub_1BF38C9B4(v23, &qword_1EBDD8EC0, &qword_1BF4EEA50);

      v44 = v52;
      v45 = 1;
      return v48(v44, v45, 1, v10);
    }
  }

  else
  {
    sub_1BF38C9B4(v23, &qword_1EBDD8EC0, &qword_1BF4EEA50);
    v36 = *(v11 + 32);
    v37 = v48;
    v36(v48, v20, v10);
    v38 = v52;
    v36(v52, v37, v10);
    return (v32)(v38, 0, 1, v10);
  }

  return result;
}

uint64_t sub_1BF40F8C4()
{
  v1 = *(v0 + OBJC_IVAR____TtC9ChronoKit18ActivitySubscriber_lock);
  os_unfair_lock_lock(*(v1 + 16));
  v2 = OBJC_IVAR____TtC9ChronoKit18ActivitySubscriber__locked_descriptors;
  swift_beginAccess();
  v3 = *(v0 + v2);
  v4 = *(v1 + 16);

  os_unfair_lock_unlock(v4);
  return v3;
}

void sub_1BF40F93C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *(v3 + OBJC_IVAR____TtC9ChronoKit18ActivitySubscriber_lock);
  os_unfair_lock_lock(*(v7 + 16));
  v8 = OBJC_IVAR____TtC9ChronoKit18ActivitySubscriber__locked_subscriptions;
  swift_beginAccess();
  v9 = *(v3 + v8);
  if (!*(v9 + 16))
  {
    goto LABEL_5;
  }

  v10 = sub_1BF3CD5D0(a1, a2);
  if ((v11 & 1) == 0)
  {

LABEL_5:
    v14 = sub_1BF4E73E4();
    (*(*(v14 - 8) + 56))(a3, 1, 1, v14);
    goto LABEL_6;
  }

  v12 = *(*(v9 + 56) + 8 * v10);

  v13 = OBJC_IVAR____TtCC9ChronoKit18ActivitySubscriberP33_8C3AD9B104C09CAB6FDDA07A581A3E2420ActivitySubscription_payload;
  swift_beginAccess();
  sub_1BF38C94C(v12 + v13, a3, &qword_1EBDD8EC8, &qword_1BF4EEA58);

LABEL_6:
  os_unfair_lock_unlock(*(v7 + 16));
}

uint64_t sub_1BF40FA80(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + OBJC_IVAR____TtC9ChronoKit18ActivitySubscriber_lock);
  os_unfair_lock_lock(*(v5 + 16));
  v6 = OBJC_IVAR____TtC9ChronoKit18ActivitySubscriber__locked_subscriptions;
  swift_beginAccess();
  v7 = *(v2 + v6);
  if (!*(v7 + 16))
  {
    goto LABEL_5;
  }

  v8 = sub_1BF3CD5D0(a1, a2);
  if ((v9 & 1) == 0)
  {

LABEL_5:
    v11 = 0;
    goto LABEL_6;
  }

  v10 = *(*(v7 + 56) + 8 * v8);

  v11 = *(v10 + OBJC_IVAR____TtCC9ChronoKit18ActivitySubscriberP33_8C3AD9B104C09CAB6FDDA07A581A3E2420ActivitySubscription_payloadPublisher);

LABEL_6:
  os_unfair_lock_unlock(*(v5 + 16));
  return v11;
}

uint64_t sub_1BF40FB8C()
{
  result = sub_1BF4E7B54();
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

void sub_1BF40FD54()
{
  sub_1BF40FE5C();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    v2 = sub_1BF4E74A4();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_1BF40FE5C()
{
  if (!qword_1EDC9D5D0)
  {
    sub_1BF4E73E4();
    v0 = sub_1BF4E90F4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC9D5D0);
    }
  }
}

uint64_t objectdestroy_40Tm(void (*a1)(void))
{
  v3 = *(v1 + 16);

  a1(*(v1 + 32));

  return MEMORY[0x1EEE6BDD0](v1, 40, 7);
}

uint64_t sub_1BF40FF30(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8EC8, &qword_1BF4EEA58);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BF410180()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 24);
  }

  else
  {
    v5 = *(v0 + 16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8F08, &qword_1BF4EEBE8);
    sub_1BF38C8B4(&unk_1EDC9EF68, &qword_1EBDD8F08, &qword_1BF4EEBE8);
    v2 = v0;
    v1 = sub_1BF4E7C84();
    v3 = *(v0 + 24);
    *(v2 + 24) = v1;
  }

  return v1;
}

uint64_t sub_1BF410244(uint64_t a1)
{
  v2 = *(v1 + 24);
  *(v1 + 24) = a1;
}

uint64_t (*sub_1BF410254(uint64_t *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = sub_1BF410180();
  return sub_1BF41029C;
}

uint64_t sub_1BF41029C(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(v1 + 24);
  *(v1 + 24) = v2;
}

uint64_t sub_1BF4102C8(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8F10, &qword_1BF4EEBF0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v12 - v5;
  v7 = *(v1 + 32);
  v8 = *(v7 + 16);

  os_unfair_lock_lock(v8);
  sub_1BF38C94C(a1, v6, &qword_1EBDD8F10, &qword_1BF4EEBF0);
  v9 = OBJC_IVAR____TtC9ChronoKit13ActivityEntry__lock_content;
  swift_beginAccess();
  sub_1BF3A3A54(v6, v1 + v9, &qword_1EBDD8F10, &qword_1BF4EEBF0);
  swift_endAccess();
  os_unfair_lock_unlock(*(v7 + 16));

  v10 = *(v1 + 16);
  sub_1BF4E7C14();
  return sub_1BF38C9B4(a1, &qword_1EBDD8F10, &qword_1BF4EEBF0);
}

void (*sub_1BF4103EC(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 24) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8F10, &qword_1BF4EEBF0) - 8) + 64);
  if (v3)
  {
    *(v5 + 32) = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 32) = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  *(v5 + 40) = v7;
  v9 = *(v1 + 32);
  v10 = *(v9 + 16);

  os_unfair_lock_lock(v10);
  v11 = OBJC_IVAR____TtC9ChronoKit13ActivityEntry__lock_content;
  swift_beginAccess();
  sub_1BF38C94C(v1 + v11, v8, &qword_1EBDD8F10, &qword_1BF4EEBF0);
  os_unfair_lock_unlock(*(v9 + 16));

  return sub_1BF410528;
}

void sub_1BF410528(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 32);
  v4 = *(*a1 + 40);
  v5 = *(*a1 + 24);
  if (a2)
  {
    sub_1BF38C94C(*(*a1 + 40), v3, &qword_1EBDD8F10, &qword_1BF4EEBF0);
    sub_1BF4102C8(v3);
    sub_1BF38C9B4(v4, &qword_1EBDD8F10, &qword_1BF4EEBF0);
  }

  else
  {
    sub_1BF4102C8(*(*a1 + 40));
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t sub_1BF4105D0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = *(*a1 + 32);
  v5 = *(v4 + 16);

  os_unfair_lock_lock(v5);
  v7 = *(v3 + OBJC_IVAR____TtC9ChronoKit13ActivityEntry__lock_contentLoadError);
  v6 = *(v3 + OBJC_IVAR____TtC9ChronoKit13ActivityEntry__lock_contentLoadError + 8);
  v8 = *(v4 + 16);

  os_unfair_lock_unlock(v8);

  *a2 = v7;
  a2[1] = v6;
  return result;
}

uint64_t sub_1BF41064C(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  v5 = *(*a2 + 32);
  v6 = *(v5 + 16);

  os_unfair_lock_lock(v6);
  v7 = (v4 + OBJC_IVAR____TtC9ChronoKit13ActivityEntry__lock_contentLoadError);
  v8 = *(v4 + OBJC_IVAR____TtC9ChronoKit13ActivityEntry__lock_contentLoadError + 8);
  *v7 = v3;
  v7[1] = v2;

  os_unfair_lock_unlock(*(v5 + 16));
}

uint64_t sub_1BF4106D4()
{
  v1 = *(v0 + 32);
  v2 = *(v1 + 16);

  os_unfair_lock_lock(v2);
  v3 = v0 + OBJC_IVAR____TtC9ChronoKit13ActivityEntry__lock_contentLoadError;
  v4 = *(v0 + OBJC_IVAR____TtC9ChronoKit13ActivityEntry__lock_contentLoadError);
  v5 = *(v3 + 8);
  v6 = *(v1 + 16);

  os_unfair_lock_unlock(v6);

  return v4;
}

uint64_t sub_1BF410744(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 32);
  v6 = *(v5 + 16);

  os_unfair_lock_lock(v6);
  v7 = (v2 + OBJC_IVAR____TtC9ChronoKit13ActivityEntry__lock_contentLoadError);
  v8 = *(v2 + OBJC_IVAR____TtC9ChronoKit13ActivityEntry__lock_contentLoadError + 8);
  *v7 = a1;
  v7[1] = a2;

  os_unfair_lock_unlock(*(v5 + 16));
}

uint64_t (*sub_1BF4107C4(void *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  v3 = *(v1 + 32);
  v4 = *(v3 + 16);

  os_unfair_lock_lock(v4);
  v5 = OBJC_IVAR____TtC9ChronoKit13ActivityEntry__lock_contentLoadError;
  a1[3] = OBJC_IVAR____TtC9ChronoKit13ActivityEntry__lock_contentLoadError;
  v6 = (v1 + v5);
  v8 = *v6;
  v7 = v6[1];
  v9 = *(v3 + 16);

  os_unfair_lock_unlock(v9);

  *a1 = v8;
  a1[1] = v7;
  return sub_1BF410860;
}

uint64_t sub_1BF410860(uint64_t *a1, char a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v5 = *(v4 + 32);
  v6 = *(v5 + 16);
  v7 = (v4 + a1[3]);
  if (a2)
  {
    v8 = a1[1];

    os_unfair_lock_lock(v6);
    v9 = v7[1];
    *v7 = v3;
    v7[1] = v2;

    os_unfair_lock_unlock(*(v5 + 16));
  }

  else
  {
    v10 = *(v4 + 32);

    os_unfair_lock_lock(v6);
    v11 = v7[1];
    *v7 = v3;
    v7[1] = v2;

    os_unfair_lock_unlock(*(v5 + 16));
  }
}

uint64_t sub_1BF410914@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, uint64_t *a3@<X4>, uint64_t *a4@<X5>, uint64_t a5@<X8>)
{
  v9 = *a1;
  v10 = *(*a1 + 32);
  v11 = *(v10 + 16);

  os_unfair_lock_lock(v11);
  v12 = *a2;
  swift_beginAccess();
  sub_1BF38C94C(v9 + v12, a5, a3, a4);
  os_unfair_lock_unlock(*(v10 + 16));
}

uint64_t sub_1BF4109B8(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(char *))
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v18 - v14;
  sub_1BF38C94C(a1, &v18 - v14, a5, a6);
  v16 = *a2;
  return a7(v15);
}

uint64_t sub_1BF410A80@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v9 = *(v4 + 32);
  v10 = *(v9 + 16);

  os_unfair_lock_lock(v10);
  v11 = *a1;
  swift_beginAccess();
  sub_1BF38C94C(v4 + v11, a4, a2, a3);
  os_unfair_lock_unlock(*(v9 + 16));
}

uint64_t sub_1BF410B20(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9B00, &qword_1BF4F1E50);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v11 - v5;
  v7 = *(v1 + 32);
  v8 = *(v7 + 16);

  os_unfair_lock_lock(v8);
  sub_1BF38C94C(a1, v6, &qword_1EBDD9B00, &qword_1BF4F1E50);
  v9 = OBJC_IVAR____TtC9ChronoKit13ActivityEntry__lock_contentLoadErrorDate;
  swift_beginAccess();
  sub_1BF3A3A54(v6, v1 + v9, &qword_1EBDD9B00, &qword_1BF4F1E50);
  swift_endAccess();
  os_unfair_lock_unlock(*(v7 + 16));

  return sub_1BF38C9B4(a1, &qword_1EBDD9B00, &qword_1BF4F1E50);
}

void (*sub_1BF410C38(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 24) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9B00, &qword_1BF4F1E50) - 8) + 64);
  if (v3)
  {
    *(v5 + 32) = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 32) = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  *(v5 + 40) = v7;
  v9 = *(v1 + 32);
  v10 = *(v9 + 16);

  os_unfair_lock_lock(v10);
  v11 = OBJC_IVAR____TtC9ChronoKit13ActivityEntry__lock_contentLoadErrorDate;
  swift_beginAccess();
  sub_1BF38C94C(v1 + v11, v8, &qword_1EBDD9B00, &qword_1BF4F1E50);
  os_unfair_lock_unlock(*(v9 + 16));

  return sub_1BF410D74;
}

void sub_1BF410D74(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 32);
  v4 = *(*a1 + 40);
  v5 = *(*a1 + 24);
  if (a2)
  {
    sub_1BF38C94C(*(*a1 + 40), v3, &qword_1EBDD9B00, &qword_1BF4F1E50);
    sub_1BF410B20(v3);
    sub_1BF38C9B4(v4, &qword_1EBDD9B00, &qword_1BF4F1E50);
  }

  else
  {
    sub_1BF410B20(*(*a1 + 40));
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t sub_1BF410E1C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = *(*a1 + 32);
  v5 = *(v4 + 16);

  os_unfair_lock_lock(v5);
  LOBYTE(v5) = *(v3 + OBJC_IVAR____TtC9ChronoKit13ActivityEntry__lock_isFailed);
  os_unfair_lock_unlock(*(v4 + 16));

  *a2 = v5;
  return result;
}

uint64_t sub_1BF410E80()
{
  v1 = *(v0 + 32);
  v2 = *(v1 + 16);

  os_unfair_lock_lock(v2);
  v3 = *(v0 + OBJC_IVAR____TtC9ChronoKit13ActivityEntry__lock_isFailed);
  os_unfair_lock_unlock(*(v1 + 16));

  return v3;
}

uint64_t sub_1BF410EDC(char a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8F10, &qword_1BF4EEBF0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v14 - v5;
  v7 = *(v1 + 32);
  v8 = *(v7 + 16);

  os_unfair_lock_lock(v8);
  *(v1 + OBJC_IVAR____TtC9ChronoKit13ActivityEntry__lock_isFailed) = a1;
  os_unfair_lock_unlock(*(v7 + 16));

  v9 = *(v1 + 16);
  v10 = *(v1 + 32);
  v11 = *(v10 + 16);

  os_unfair_lock_lock(v11);
  v12 = OBJC_IVAR____TtC9ChronoKit13ActivityEntry__lock_content;
  swift_beginAccess();
  sub_1BF38C94C(v1 + v12, v6, &qword_1EBDD8F10, &qword_1BF4EEBF0);
  os_unfair_lock_unlock(*(v10 + 16));

  sub_1BF4E7C14();
  return sub_1BF38C9B4(v6, &qword_1EBDD8F10, &qword_1BF4EEBF0);
}

uint64_t (*sub_1BF41101C(uint64_t a1))(uint64_t *a1)
{
  *a1 = v1;
  v3 = *(v1 + 32);
  v4 = *(v3 + 16);

  os_unfair_lock_lock(v4);
  v5 = *(v1 + OBJC_IVAR____TtC9ChronoKit13ActivityEntry__lock_isFailed);
  os_unfair_lock_unlock(*(v3 + 16));

  *(a1 + 8) = v5;
  return sub_1BF41109C;
}

uint64_t sub_1BF4110C4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = *(*a1 + 32);
  v5 = *(v4 + 16);

  os_unfair_lock_lock(v5);
  v6 = OBJC_IVAR____TtC9ChronoKit13ActivityEntry__lock_protectionType;
  swift_beginAccess();
  v7 = sub_1BF4E8424();
  (*(*(v7 - 8) + 16))(a2, v3 + v6, v7);
  os_unfair_lock_unlock(*(v4 + 16));
}

uint64_t sub_1BF411178(uint64_t a1, uint64_t *a2)
{
  v4 = sub_1BF4E8424();
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v8, a1, v6);
  v10 = *a2;
  return sub_1BF4112F4(v8);
}

uint64_t sub_1BF411244@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 32);
  v4 = *(v3 + 16);

  os_unfair_lock_lock(v4);
  v5 = OBJC_IVAR____TtC9ChronoKit13ActivityEntry__lock_protectionType;
  swift_beginAccess();
  v6 = sub_1BF4E8424();
  (*(*(v6 - 8) + 16))(a1, v1 + v5, v6);
  os_unfair_lock_unlock(*(v3 + 16));
}

uint64_t sub_1BF4112F4(uint64_t a1)
{
  v3 = sub_1BF4E8424();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v1 + 32);
  v9 = *(v8 + 16);

  os_unfair_lock_lock(v9);
  (*(v4 + 16))(v7, a1, v3);
  v10 = OBJC_IVAR____TtC9ChronoKit13ActivityEntry__lock_protectionType;
  swift_beginAccess();
  (*(v4 + 40))(v1 + v10, v7, v3);
  swift_endAccess();
  os_unfair_lock_unlock(*(v8 + 16));

  return (*(v4 + 8))(a1, v3);
}

void (*sub_1BF411450(uint64_t *a1))(uint64_t *a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x50uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 24) = v1;
  v6 = sub_1BF4E8424();
  v5[4] = v6;
  v7 = *(v6 - 8);
  v8 = v7;
  v5[5] = v7;
  v9 = *(v7 + 64);
  if (v3)
  {
    v5[6] = swift_coroFrameAlloc();
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v5[6] = malloc(*(v7 + 64));
    v10 = malloc(v9);
  }

  v11 = v10;
  v5[7] = v10;
  v12 = *(v1 + 32);
  v13 = *(v12 + 16);

  os_unfair_lock_lock(v13);
  v14 = OBJC_IVAR____TtC9ChronoKit13ActivityEntry__lock_protectionType;
  swift_beginAccess();
  v15 = *(v8 + 16);
  v5[8] = v15;
  v5[9] = (v8 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v15(v11, v1 + v14, v6);
  os_unfair_lock_unlock(*(v12 + 16));

  return sub_1BF4115D0;
}

void sub_1BF4115D0(uint64_t *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = *(v2 + 72);
    v5 = *(v2 + 48);
    v4 = *(v2 + 56);
    v6 = *(v2 + 32);
    v7 = *(v2 + 40);
    v8 = *(v2 + 24);
    (*(v2 + 64))(v5, v4, v6);
    sub_1BF4112F4(v5);
    (*(v7 + 8))(v4, v6);
  }

  else
  {
    v5 = *(v2 + 48);
    v4 = *(v2 + 56);
    v9 = *(v2 + 24);
    sub_1BF4112F4(v4);
  }

  free(v4);
  free(v5);

  free(v2);
}

char *ActivityEntry.__allocating_init(id:content:protectionType:targetEnvironmentProvider:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(v4 + 48);
  v10 = *(v4 + 52);
  v11 = swift_allocObject();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8F08, &qword_1BF4EEBE8);
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  *(v11 + 2) = sub_1BF4E7C34();
  *(v11 + 3) = 0;
  type metadata accessor for UnfairLock();
  v15 = swift_allocObject();
  v16 = swift_slowAlloc();
  *v16 = 0;
  *(v15 + 16) = v16;
  *(v11 + 4) = v15;
  v17 = OBJC_IVAR____TtC9ChronoKit13ActivityEntry__lock_content;
  v18 = sub_1BF4E86B4();
  (*(*(v18 - 8) + 56))(&v11[v17], 1, 1, v18);
  v19 = &v11[OBJC_IVAR____TtC9ChronoKit13ActivityEntry__lock_contentLoadError];
  *v19 = 0;
  *(v19 + 1) = 0;
  v20 = OBJC_IVAR____TtC9ChronoKit13ActivityEntry__lock_contentLoadErrorDate;
  v21 = sub_1BF4E7334();
  (*(*(v21 - 8) + 56))(&v11[v20], 1, 1, v21);
  sub_1BF411AF0(a1, &v11[OBJC_IVAR____TtC9ChronoKit13ActivityEntry_id]);
  sub_1BF38E60C(a4, &v11[OBJC_IVAR____TtC9ChronoKit13ActivityEntry_targetEnvironmentProvider]);
  v22 = OBJC_IVAR____TtC9ChronoKit13ActivityEntry__lock_protectionType;
  v23 = sub_1BF4E8424();
  (*(*(v23 - 8) + 32))(&v11[v22], a3, v23);
  v24 = OBJC_IVAR____TtC9ChronoKit13ActivityEntry__lock_content;
  swift_beginAccess();
  sub_1BF411B60(a2, &v11[v24]);
  swift_endAccess();
  sub_1BF38C9B4(a2, &qword_1EBDD8F10, &qword_1BF4EEBF0);
  v11[OBJC_IVAR____TtC9ChronoKit13ActivityEntry__lock_isFailed] = 0;
  return v11;
}

uint64_t ActivityEntry.init(id:content:protectionType:targetEnvironmentProvider:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8F08, &qword_1BF4EEBE8);
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();
  *(v4 + 16) = sub_1BF4E7C34();
  *(v4 + 24) = 0;
  type metadata accessor for UnfairLock();
  v13 = swift_allocObject();
  v14 = swift_slowAlloc();
  *v14 = 0;
  *(v13 + 16) = v14;
  *(v5 + 32) = v13;
  v15 = OBJC_IVAR____TtC9ChronoKit13ActivityEntry__lock_content;
  v16 = sub_1BF4E86B4();
  (*(*(v16 - 8) + 56))(v5 + v15, 1, 1, v16);
  v17 = (v5 + OBJC_IVAR____TtC9ChronoKit13ActivityEntry__lock_contentLoadError);
  *v17 = 0;
  v17[1] = 0;
  v18 = OBJC_IVAR____TtC9ChronoKit13ActivityEntry__lock_contentLoadErrorDate;
  v19 = sub_1BF4E7334();
  (*(*(v19 - 8) + 56))(v5 + v18, 1, 1, v19);
  sub_1BF411AF0(a1, v5 + OBJC_IVAR____TtC9ChronoKit13ActivityEntry_id);
  sub_1BF38E60C(a4, v5 + OBJC_IVAR____TtC9ChronoKit13ActivityEntry_targetEnvironmentProvider);
  v20 = OBJC_IVAR____TtC9ChronoKit13ActivityEntry__lock_protectionType;
  v21 = sub_1BF4E8424();
  (*(*(v21 - 8) + 32))(v5 + v20, a3, v21);
  v22 = OBJC_IVAR____TtC9ChronoKit13ActivityEntry__lock_content;
  swift_beginAccess();
  sub_1BF411B60(a2, v5 + v22);
  swift_endAccess();
  sub_1BF38C9B4(a2, &qword_1EBDD8F10, &qword_1BF4EEBF0);
  *(v5 + OBJC_IVAR____TtC9ChronoKit13ActivityEntry__lock_isFailed) = 0;
  return v5;
}

uint64_t sub_1BF411AF0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD87A8, &unk_1BF4EB2C0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BF411B60(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8F10, &qword_1BF4EEBF0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BF411BD0()
{
  v1 = v0;
  v2 = sub_1BF4E8164();
  v33 = *(v2 - 8);
  v34 = v2;
  v3 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v31 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_1BF4E7F64();
  v30 = *(v32 - 8);
  v5 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v32);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8F10, &qword_1BF4EEBF0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v29 - v10;
  v12 = sub_1BF4E86B4();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(v1 + 32);
  v18 = *(v17 + 16);

  os_unfair_lock_lock(v18);
  v19 = OBJC_IVAR____TtC9ChronoKit13ActivityEntry__lock_content;
  swift_beginAccess();
  sub_1BF38C94C(v1 + v19, v11, &qword_1EBDD8F10, &qword_1BF4EEBF0);
  os_unfair_lock_unlock(*(v17 + 16));

  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_1BF38C9B4(v11, &qword_1EBDD8F10, &qword_1BF4EEBF0);
    v20 = 1;
  }

  else
  {
    (*(v13 + 32))(v16, v11, v12);
    v35 = MEMORY[0x1E69E7CC0];
    swift_getKeyPath();
    MEMORY[0x1BFB58DD0]();
    if (*((v35 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v35 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v26 = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_1BF4E8BE4();
    }

    sub_1BF4E8C24();
    swift_getKeyPath();
    MEMORY[0x1BFB58DD0]();
    if (*((v35 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v35 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v27 = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_1BF4E8BE4();
    }

    sub_1BF4E8C24();
    swift_getKeyPath();
    MEMORY[0x1BFB58DD0]();
    if (*((v35 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v35 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v28 = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_1BF4E8BE4();
    }

    sub_1BF4E8C24();
    v21 = v35;
    v22 = *(v1 + OBJC_IVAR____TtC9ChronoKit13ActivityEntry_targetEnvironmentProvider + 24);
    v23 = *(v1 + OBJC_IVAR____TtC9ChronoKit13ActivityEntry_targetEnvironmentProvider + 32);
    __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC9ChronoKit13ActivityEntry_targetEnvironmentProvider), v22);
    (*(v23 + 8))(v22, v23);
    v24 = v31;
    sub_1BF4E86A4();
    if (v21 >> 62)
    {
      sub_1BF4E9174();

      sub_1BF4E9474();
    }

    else
    {

      sub_1BF4E9754();
      sub_1BF4E9174();
    }

    v20 = sub_1BF4E8154();

    (*(v33 + 8))(v24, v34);
    (*(v30 + 8))(v7, v32);
    (*(v13 + 8))(v16, v12);
  }

  return v20 & 1;
}

uint64_t sub_1BF4120C4(uint64_t a1)
{
  v2 = sub_1BF4E8364();
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x1EEE9AC00](v2);
  (*(v6 + 16))(&v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v4);
  return sub_1BF4E7ED4();
}

char *ActivityEntry.deinit()
{
  v1 = *(v0 + 2);

  v2 = *(v0 + 3);

  v3 = *(v0 + 4);

  sub_1BF38C9B4(&v0[OBJC_IVAR____TtC9ChronoKit13ActivityEntry__lock_content], &qword_1EBDD8F10, &qword_1BF4EEBF0);
  v4 = *&v0[OBJC_IVAR____TtC9ChronoKit13ActivityEntry__lock_contentLoadError + 8];

  sub_1BF38C9B4(&v0[OBJC_IVAR____TtC9ChronoKit13ActivityEntry__lock_contentLoadErrorDate], &qword_1EBDD9B00, &qword_1BF4F1E50);
  v5 = OBJC_IVAR____TtC9ChronoKit13ActivityEntry__lock_protectionType;
  v6 = sub_1BF4E8424();
  (*(*(v6 - 8) + 8))(&v0[v5], v6);
  sub_1BF38C9B4(&v0[OBJC_IVAR____TtC9ChronoKit13ActivityEntry_id], &qword_1EBDD87A8, &unk_1BF4EB2C0);
  __swift_destroy_boxed_opaque_existential_1Tm(&v0[OBJC_IVAR____TtC9ChronoKit13ActivityEntry_targetEnvironmentProvider]);
  return v0;
}

uint64_t ActivityEntry.__deallocating_deinit()
{
  ActivityEntry.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t (*sub_1BF412320(uint64_t **a1))()
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
  v4 = *v1;
  v3[4] = sub_1BF4103EC(v3);
  return sub_1BF413050;
}

uint64_t sub_1BF4123B0@<X0>(uint64_t *a1@<X2>, uint64_t *a2@<X3>, uint64_t *a3@<X4>, uint64_t a4@<X8>)
{
  v9 = *v4;
  v10 = *(*v4 + 32);
  v11 = *(v10 + 16);

  os_unfair_lock_lock(v11);
  v12 = *a1;
  swift_beginAccess();
  sub_1BF38C94C(v9 + v12, a4, a2, a3);
  os_unfair_lock_unlock(*(v10 + 16));
}

uint64_t (*sub_1BF412478(uint64_t **a1))()
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
  v4 = *v1;
  v3[4] = sub_1BF410C38(v3);
  return sub_1BF413050;
}

uint64_t sub_1BF4124EC()
{
  v1 = *v0;
  v2 = *(*v0 + 32);
  v3 = *(v2 + 16);

  os_unfair_lock_lock(v3);
  v4 = *(v1 + OBJC_IVAR____TtC9ChronoKit13ActivityEntry__lock_contentLoadError);
  v5 = *(v1 + OBJC_IVAR____TtC9ChronoKit13ActivityEntry__lock_contentLoadError + 8);
  v6 = *(v2 + 16);

  os_unfair_lock_unlock(v6);

  return v4;
}

uint64_t sub_1BF412560(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 32);
  v7 = *(v6 + 16);

  os_unfair_lock_lock(v7);
  v8 = (v5 + OBJC_IVAR____TtC9ChronoKit13ActivityEntry__lock_contentLoadError);
  v9 = *(v5 + OBJC_IVAR____TtC9ChronoKit13ActivityEntry__lock_contentLoadError + 8);
  *v8 = a1;
  v8[1] = a2;

  os_unfair_lock_unlock(*(v6 + 16));
}

uint64_t (*sub_1BF4125E4(void *a1))()
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
  v4 = *v1;
  v3[4] = sub_1BF4107C4(v3);
  return sub_1BF412658;
}

uint64_t sub_1BF41265C@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(*v1 + 32);
  v5 = *(v4 + 16);

  os_unfair_lock_lock(v5);
  v6 = OBJC_IVAR____TtC9ChronoKit13ActivityEntry__lock_protectionType;
  swift_beginAccess();
  v7 = sub_1BF4E8424();
  (*(*(v7 - 8) + 16))(a1, v3 + v6, v7);
  os_unfair_lock_unlock(*(v4 + 16));
}

uint64_t sub_1BF412710()
{
  v1 = *v0;
  v2 = *(*v0 + 32);
  v3 = *(v2 + 16);

  os_unfair_lock_lock(v3);
  v4 = *(v1 + OBJC_IVAR____TtC9ChronoKit13ActivityEntry__lock_isFailed);
  os_unfair_lock_unlock(*(v2 + 16));

  return v4;
}

uint64_t (*sub_1BF412794(uint64_t *a1))()
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
  v4 = *v1;
  *(v3 + 32) = sub_1BF41101C(v3);
  return sub_1BF413050;
}

void sub_1BF412808(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t sub_1BF4128DC@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for ActivityEntry();
  result = sub_1BF4E7C04();
  *a1 = result;
  return result;
}

uint64_t type metadata accessor for ActivityEntry()
{
  result = qword_1EDC9EB70;
  if (!qword_1EDC9EB70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BF412970()
{
  sub_1BF412E5C(319, &qword_1EDC9D758, MEMORY[0x1E6985B08]);
  if (v1 <= 0x3F)
  {
    v8 = *(v0 - 8) + 64;
    sub_1BF412E5C(319, &qword_1EDC9FFA8, MEMORY[0x1E6969530]);
    if (v3 <= 0x3F)
    {
      v9 = *(v2 - 8) + 64;
      v4 = sub_1BF4E8424();
      if (v5 <= 0x3F)
      {
        v10 = *(v4 - 8) + 64;
        sub_1BF412EB0();
        if (v7 <= 0x3F)
        {
          v11 = *(v6 - 8) + 64;
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_1BF412E5C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1BF4E90F4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1BF412EB0()
{
  if (!qword_1EDC9E678)
  {
    type metadata accessor for ActivityKey();
    type metadata accessor for ActivityVariantKey();
    sub_1BF413008(&qword_1EDC9EF38, type metadata accessor for ActivityKey);
    sub_1BF413008(&qword_1EDC9EF48, type metadata accessor for ActivityKey);
    sub_1BF413008(&qword_1EDC9E560, type metadata accessor for ActivityVariantKey);
    sub_1BF413008(&qword_1EDC9E570, type metadata accessor for ActivityVariantKey);
    v0 = type metadata accessor for VariantIdentifier();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC9E678);
    }
  }
}

uint64_t sub_1BF413008(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t static ControlCacheKey.allControls(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1BF4E7194();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  result = type metadata accessor for ControlCacheKey();
  *(a2 + *(result + 20)) = 0;
  return result;
}

uint64_t ControlCacheKey.init(baseURL:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(type metadata accessor for ControlCacheKey() + 20);
  v5 = sub_1BF4E7194();
  result = (*(*(v5 - 8) + 32))(a2, a1, v5);
  *(a2 + v4) = 0;
  return result;
}

void *ControlCacheKey.control.getter()
{
  v1 = *(v0 + *(type metadata accessor for ControlCacheKey() + 20));
  v2 = v1;
  return v1;
}

uint64_t ControlCacheKey.init(baseURL:entryKey:)@<X0>(uint64_t a1@<X0>, id *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(type metadata accessor for ControlCacheKey() + 20);
  v7 = sub_1BF4E7194();
  (*(*(v7 - 8) + 32))(a3, a1, v7);
  v8 = *a2;
  result = sub_1BF39ABC8(a2);
  *(a3 + v6) = v8;
  return result;
}

uint64_t ControlCacheKey.init(baseURL:control:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(type metadata accessor for ControlCacheKey() + 20);
  v7 = sub_1BF4E7194();
  result = (*(*(v7 - 8) + 32))(a3, a1, v7);
  *(a3 + v6) = a2;
  return result;
}

uint64_t ControlCacheKey.description.getter()
{
  v1 = *(v0 + *(type metadata accessor for ControlCacheKey() + 20));
  if (!v1)
  {
    return sub_1BF4E7074();
  }

  v2 = v1;
  sub_1BF4E92E4();

  sub_1BF4E7194();
  sub_1BF4138FC(&qword_1EDC9F100, MEMORY[0x1E6968FB0]);
  v3 = sub_1BF4E96A4();
  MEMORY[0x1BFB58C90](v3);

  MEMORY[0x1BFB58C90](0x6C6F72746E6F6320, 0xEA0000000000203ALL);
  v4 = [v2 description];
  v5 = sub_1BF4E8914();
  v7 = v6;

  MEMORY[0x1BFB58C90](v5, v7);

  return 0x3A4C525565736162;
}

void ControlCacheKey.hash(into:)()
{
  sub_1BF4E7194();
  sub_1BF4138FC(&qword_1EDC9D610, MEMORY[0x1E6968FB0]);
  sub_1BF4E8884();
  v1 = *(v0 + *(type metadata accessor for ControlCacheKey() + 20));
  if (v1)
  {
    sub_1BF4E9824();
    v2 = v1;
    sub_1BF4E90B4();
  }

  else
  {
    sub_1BF4E9824();
  }
}

uint64_t ControlCacheKey.hashValue.getter()
{
  sub_1BF4E9804();
  sub_1BF4E7194();
  sub_1BF4138FC(&qword_1EDC9D610, MEMORY[0x1E6968FB0]);
  sub_1BF4E8884();
  v1 = *(v0 + *(type metadata accessor for ControlCacheKey() + 20));
  sub_1BF4E9824();
  if (v1)
  {
    v2 = v1;
    sub_1BF4E90B4();
  }

  return sub_1BF4E9844();
}

uint64_t sub_1BF413594(uint64_t a1)
{
  sub_1BF4E9804();
  sub_1BF4E7194();
  sub_1BF4138FC(&qword_1EDC9D610, MEMORY[0x1E6968FB0]);
  sub_1BF4E8884();
  v3 = *(v1 + *(a1 + 20));
  sub_1BF4E9824();
  if (v3)
  {
    v4 = v3;
    sub_1BF4E90B4();
  }

  return sub_1BF4E9844();
}

void sub_1BF413664(uint64_t a1, uint64_t a2)
{
  sub_1BF4E7194();
  sub_1BF4138FC(&qword_1EDC9D610, MEMORY[0x1E6968FB0]);
  sub_1BF4E8884();
  v4 = *(v2 + *(a2 + 20));
  if (v4)
  {
    sub_1BF4E9824();
    v5 = v4;
    sub_1BF4E90B4();
  }

  else
  {
    sub_1BF4E9824();
  }
}

uint64_t sub_1BF41374C(uint64_t a1, uint64_t a2)
{
  sub_1BF4E9804();
  sub_1BF4E7194();
  sub_1BF4138FC(&qword_1EDC9D610, MEMORY[0x1E6968FB0]);
  sub_1BF4E8884();
  v4 = *(v2 + *(a2 + 20));
  sub_1BF4E9824();
  if (v4)
  {
    v5 = v4;
    sub_1BF4E90B4();
  }

  return sub_1BF4E9844();
}

uint64_t _s9ChronoKit15ControlCacheKeyV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if (sub_1BF4E7144())
  {
    v4 = *(type metadata accessor for ControlCacheKey() + 20);
    v5 = *(a1 + v4);
    v6 = *(a2 + v4);
    if (v5)
    {
      if (v6)
      {
        sub_1BF413A20();
        v7 = v6;
        v8 = v5;
        v9 = sub_1BF4E90A4();

        if (v9)
        {
          return 1;
        }
      }
    }

    else if (!v6)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_1BF4138FC(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1BF413944()
{
  sub_1BF4E7194();
  if (v0 <= 0x3F)
  {
    sub_1BF4139C8();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1BF4139C8()
{
  if (!qword_1EDC9F130)
  {
    sub_1BF413A20();
    v0 = sub_1BF4E90F4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC9F130);
    }
  }
}

unint64_t sub_1BF413A20()
{
  result = qword_1EDC9F138;
  if (!qword_1EDC9F138)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDC9F138);
  }

  return result;
}

uint64_t sub_1BF413A6C()
{
  v1 = sub_1BF3D871C(MEMORY[0x1E69E7CC0]);
  MEMORY[0x1BFB58C40](28);
  MEMORY[0x1BFB58C90](0x200A5443454C4553, 0xEB00000000202020);
  v2 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v2);

  MEMORY[0x1BFB58C90](0x202020200A2CLL, 0xE600000000000000);
  v3 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v3);

  MEMORY[0x1BFB58C90](0x20200A4D4F52460ALL, 0xEA00000000002020);
  v4 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v4);

  MEMORY[0x1BFB58C90](59, 0xE100000000000000);
  if (swift_weakLoadStrong())
  {
    v5 = sub_1BF3E4F48(v1);
    if (v0)
    {
    }

    else
    {
      v7 = v5;

      v8 = sub_1BF41461C(v7);

      return v8;
    }
  }

  else
  {
    result = sub_1BF4E9464();
    __break(1u);
  }

  return result;
}

uint64_t ChronoMetadataStore.PublicTokenStore.__deallocating_deinit()
{
  swift_weakDestroy();

  return swift_deallocClassInstance();
}

uint64_t sub_1BF413CE4(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    goto LABEL_8;
  }

  v7 = *(Strong + 24);
  v8 = Strong;
  os_unfair_lock_lock(*(v7 + 16));
  v9 = *(v8 + 64);
  os_unfair_lock_unlock(*(v7 + 16));

  if (!v9)
  {
    __break(1u);
    goto LABEL_8;
  }

  v30 = v4;
  v10 = sub_1BF3D871C(MEMORY[0x1E69E7CC0]);
  MEMORY[0x1BFB58C40](51);
  MEMORY[0x1BFB58C90](0x204543414C504552, 0xED0000204F544E49);
  v11 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v11);

  MEMORY[0x1BFB58C90](0x202020200A2820, 0xE700000000000000);
  v12 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v12);

  MEMORY[0x1BFB58C90](0x202020200A2CLL, 0xE600000000000000);
  v13 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v13);

  MEMORY[0x1BFB58C90](0xD000000000000010, 0x80000001BF4FA310);

  v14 = sub_1BF3D8148(v2, v3);
  v16 = v15;
  v17 = v5;
  v19 = v18;
  v31 = *(v10 + 16) + 1;
  v20 = sub_1BF4E96A4();
  MEMORY[0x1BFB58C90](v20);

  MEMORY[0x1BFB58C90](0x676E69646E696240, 0xE800000000000000);
  sub_1BF3D8840(v14, v16, v19);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1BF3D6680(v14, v16, v19, 0x676E69646E696240, 0xE800000000000000, isUniquelyReferenced_nonNull_native);

  sub_1BF3D88B8(v14, v16, v19);
  MEMORY[0x1BFB58C90](0x202020200A2CLL, 0xE600000000000000);
  sub_1BF3D8864(v30, v17);
  v22 = sub_1BF3D8134(v30, v17);
  v24 = v23;
  v26 = v25;
  v32 = *(v10 + 16) + 1;
  v27 = sub_1BF4E96A4();
  MEMORY[0x1BFB58C90](v27);

  MEMORY[0x1BFB58C90](0x676E69646E696240, 0xE800000000000000);
  sub_1BF3D8840(v22, v24, v26);
  v28 = swift_isUniquelyReferenced_nonNull_native();
  sub_1BF3D6680(v22, v24, v26, 0x676E69646E696240, 0xE800000000000000, v28);

  sub_1BF3D88B8(v22, v24, v26);
  MEMORY[0x1BFB58C90](3877130, 0xE300000000000000);
  if (!swift_weakLoadStrong())
  {
LABEL_8:
    result = sub_1BF4E9464();
    __break(1u);
    return result;
  }

  sub_1BF3E4F48(v10);

  if (!v1)
  {
  }

  return result;
}

uint64_t sub_1BF414140(uint64_t a1, uint64_t a2)
{
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    goto LABEL_8;
  }

  v6 = *(Strong + 24);
  v7 = Strong;
  os_unfair_lock_lock(*(v6 + 16));
  v8 = *(v7 + 64);
  os_unfair_lock_unlock(*(v6 + 16));

  if (!v8)
  {
    __break(1u);
    goto LABEL_8;
  }

  v9 = sub_1BF3D871C(MEMORY[0x1E69E7CC0]);
  MEMORY[0x1BFB58C40](24);
  MEMORY[0x1BFB58C90](0x46204554454C4544, 0xEC000000204D4F52);
  v10 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v10);

  MEMORY[0x1BFB58C90](0x2045524548570ALL, 0xE700000000000000);
  v11 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v11);

  MEMORY[0x1BFB58C90](542329120, 0xE400000000000000);

  v12 = sub_1BF3D8148(a1, a2);
  v14 = v13;
  v16 = v15;
  v20 = *(v9 + 16) + 1;
  v17 = sub_1BF4E96A4();
  MEMORY[0x1BFB58C90](v17);

  MEMORY[0x1BFB58C90](0x676E69646E696240, 0xE800000000000000);
  sub_1BF3D8840(v12, v14, v16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1BF3D6680(v12, v14, v16, 0x676E69646E696240, 0xE800000000000000, isUniquelyReferenced_nonNull_native);

  sub_1BF3D88B8(v12, v14, v16);
  MEMORY[0x1BFB58C90](59, 0xE100000000000000);
  if (!swift_weakLoadStrong())
  {
LABEL_8:
    result = sub_1BF4E9464();
    __break(1u);
    return result;
  }

  sub_1BF3E4F48(v9);

  if (!v2)
  {
  }

  return result;
}

uint64_t sub_1BF414430()
{
  v1 = sub_1BF3D871C(MEMORY[0x1E69E7CC0]);
  MEMORY[0x1BFB58C40](77);
  MEMORY[0x1BFB58C90](0x5420455441455243, 0xED000020454C4241);
  v2 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v2);

  MEMORY[0x1BFB58C90](0x202020200A2820, 0xE700000000000000);
  v3 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v3);

  MEMORY[0x1BFB58C90](0xD000000000000014, 0x80000001BF4FA3B0);
  v4 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v4);

  MEMORY[0x1BFB58C90](0xD000000000000021, 0x80000001BF4FA3D0);
  v5 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v5);

  MEMORY[0x1BFB58C90](992545321, 0xE400000000000000);
  sub_1BF3E4F48(v1);

  if (!v0)
  {
  }

  return result;
}

uint64_t sub_1BF41461C(uint64_t result)
{
  v1 = *(result + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v2 = 0;
  v30 = MEMORY[0x1E69E7CC0];
  v31 = result + 32;
  v32 = *(result + 16);
  while (2)
  {
    if (v2 >= v1)
    {
      __break(1u);
    }

    else
    {
      v3 = v2 + 1;
      if (!__OFADD__(v2, 1))
      {
        v4 = *(v31 + 8 * v2);
        v33 = v2 + 1;

        v5 = sub_1BF4E92F4();
        v7 = v6;
        v8 = (v4 + 64);
        v9 = *(v4 + 16) + 1;
        do
        {
          if (!--v9)
          {
            goto LABEL_3;
          }

          v10 = *(v8 - 2);
          v11 = *(v8 - 1);
          v12 = *v8;
          if (*(v8 - 4) == v5 && *(v8 - 3) == v7)
          {
            break;
          }

          v8 += 40;
        }

        while ((sub_1BF4E9734() & 1) == 0);

        sub_1BF3D8840(v10, v11, v12);

        v14 = sub_1BF4244EC(v10, v11, v12);
        v16 = v15;
        sub_1BF3D88B8(v10, v11, v12);
        if (v16)
        {
          v17 = sub_1BF4E92F4();
          v19 = sub_1BF48063C(v17, v18, v4);
          v21 = v20;
          v23 = v22;
          v24 = ~v22;

          if (v24)
          {
            sub_1BF424370(v19, v21, v23, &v34);

            sub_1BF3DB1FC(v19, v21, v23);
            v25 = *(&v34 + 1);
            if (*(&v34 + 1) >> 60 != 15)
            {
              v26 = v34;
              result = swift_isUniquelyReferenced_nonNull_native();
              if ((result & 1) == 0)
              {
                result = sub_1BF43241C(0, *(v30 + 16) + 1, 1, v30);
                v30 = result;
              }

              v28 = *(v30 + 16);
              v27 = *(v30 + 24);
              if (v28 >= v27 >> 1)
              {
                result = sub_1BF43241C((v27 > 1), v28 + 1, 1, v30);
                v30 = result;
              }

              *(v30 + 16) = v28 + 1;
              v29 = (v30 + 32 * v28);
              v29[4] = v14;
              v29[5] = v16;
              v29[6] = v26;
              v29[7] = v25;
              v1 = v32;
              v2 = v33;
              if (v3 != v32)
              {
                continue;
              }

              return v30;
            }
          }

          else
          {
LABEL_3:
          }
        }

        v1 = v32;
        v2 = v33;
        if (v3 == v32)
        {
          return v30;
        }

        continue;
      }
    }

    break;
  }

  __break(1u);
  return result;
}

uint64_t RemoteWidgetExtensionSession.identifier.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9ChronoKit28RemoteWidgetExtensionSession_identifier;
  v4 = sub_1BF4E7394();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_1BF414A5C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8AF8, &qword_1BF4EC370);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t RemoteWidgetExtensionSession.boostToForegroundPriority.getter()
{
  v1 = OBJC_IVAR____TtC9ChronoKit28RemoteWidgetExtensionSession_boostToForegroundPriority;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t RemoteWidgetExtensionSession.boostToForegroundPriority.setter(char a1)
{
  v3 = OBJC_IVAR____TtC9ChronoKit28RemoteWidgetExtensionSession_boostToForegroundPriority;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1BF414C5C()
{
  v1 = *v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8B48, &unk_1BF4EC990);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v18[-v5];
  v7 = (v0 + OBJC_IVAR____TtC9ChronoKit28RemoteWidgetExtensionSession____lazy_storage___loggingIdentifier);
  if (*(v0 + OBJC_IVAR____TtC9ChronoKit28RemoteWidgetExtensionSession____lazy_storage___loggingIdentifier + 8))
  {
    v8 = *v7;
  }

  else
  {
    v9 = v0[2];
    v10 = *MEMORY[0x1E69941B8];
    swift_beginAccess();
    (*(v3 + 16))(v6, v9 + v10, v2);
    v11 = (v9 + *MEMORY[0x1E69941A8]);
    swift_beginAccess();
    v13 = *v11;
    v12 = v11[1];

    v8 = sub_1BF4E81F4();
    v15 = v14;

    (*(v3 + 8))(v6, v2);
    v16 = v7[1];
    *v7 = v8;
    v7[1] = v15;
  }

  return v8;
}

uint64_t RemoteWidgetExtensionSession.__allocating_init(identifier:extensionIdentity:dataProtectionLevel:)(uint64_t a1, void *a2, uint64_t a3)
{
  v7 = *(v3 + 48);
  v8 = *(v3 + 52);
  v9 = swift_allocObject();
  RemoteWidgetExtensionSession.init(identifier:extensionIdentity:dataProtectionLevel:)(a1, a2, a3);
  return v9;
}

uint64_t RemoteWidgetExtensionSession.init(identifier:extensionIdentity:dataProtectionLevel:)(uint64_t a1, id a2, uint64_t a3)
{
  v6 = v3;
  *(v3 + OBJC_IVAR____TtC9ChronoKit28RemoteWidgetExtensionSession_boostToForegroundPriority) = 0;
  v10 = OBJC_IVAR____TtC9ChronoKit28RemoteWidgetExtensionSession_protectedDescriptors;
  sub_1BF4E8584();
  v11 = sub_1BF4E8534();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8F20, &qword_1BF4EEED8);
  v12 = swift_allocObject();
  *(v12 + 24) = 0;
  *(v12 + 16) = v11;
  *(v6 + v10) = v12;
  v13 = (v6 + OBJC_IVAR____TtC9ChronoKit28RemoteWidgetExtensionSession____lazy_storage___loggingIdentifier);
  *v13 = 0;
  v13[1] = 0;
  if ([a2 isRemote])
  {
    v14 = OBJC_IVAR____TtC9ChronoKit28RemoteWidgetExtensionSession_identifier;
    v5 = sub_1BF4E7394();
    v4 = *(v5 - 8);
    (*(v4 + 16))(v6 + v14, a1, v5);
    *(v6 + 16) = a2;
    sub_1BF414A5C(a3, v6 + OBJC_IVAR____TtC9ChronoKit28RemoteWidgetExtensionSession_dataProtectionLevel);
    v15 = qword_1EBDD8568;
    a2 = a2;
    if (v15 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v16 = sub_1BF4E7B54();
  __swift_project_value_buffer(v16, qword_1EBDE1EC0);

  v17 = sub_1BF4E7B34();
  v18 = sub_1BF4E8E84();

  if (os_log_type_enabled(v17, v18))
  {
    v26 = a1;
    v19 = swift_slowAlloc();
    v25 = a3;
    v20 = swift_slowAlloc();
    v27 = v20;
    *v19 = 136446210;
    v21 = sub_1BF414C5C();
    v23 = sub_1BF38D65C(v21, v22, &v27);

    *(v19 + 4) = v23;
    _os_log_impl(&dword_1BF389000, v17, v18, "%{public}s Session initialized", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v20);
    MEMORY[0x1BFB5A5D0](v20, -1, -1);
    MEMORY[0x1BFB5A5D0](v19, -1, -1);

    sub_1BF38C9B4(v25, &qword_1EBDD8AF8, &qword_1BF4EC370);
    (*(v4 + 8))(v26, v5);
  }

  else
  {

    sub_1BF38C9B4(a3, &qword_1EBDD8AF8, &qword_1BF4EC370);
    (*(v4 + 8))(a1, v5);
  }

  return v6;
}

uint64_t RemoteWidgetExtensionSession.setDescriptors(_:)(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC9ChronoKit28RemoteWidgetExtensionSession_protectedDescriptors);

  os_unfair_lock_lock((v3 + 24));
  sub_1BF41521C((v3 + 16), v1, a1);
  os_unfair_lock_unlock((v3 + 24));
}

id sub_1BF41521C(id *a1, uint64_t a2, void *a3)
{
  if (qword_1EBDD8568 != -1)
  {
    swift_once();
  }

  v5 = sub_1BF4E7B54();
  __swift_project_value_buffer(v5, qword_1EBDE1EC0);

  v6 = a3;
  v7 = sub_1BF4E7B34();
  v8 = sub_1BF4E8E84();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v17 = v11;
    *v9 = 136446466;
    v12 = sub_1BF414C5C();
    v14 = sub_1BF38D65C(v12, v13, &v17);

    *(v9 + 4) = v14;
    *(v9 + 12) = 2114;
    *(v9 + 14) = v6;
    *v10 = v6;
    v15 = v6;
    _os_log_impl(&dword_1BF389000, v7, v8, "%{public}s Updating descriptors: %{public}@", v9, 0x16u);
    sub_1BF38C9B4(v10, &unk_1EBDD9260, &qword_1BF4EC380);
    MEMORY[0x1BFB5A5D0](v10, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v11);
    MEMORY[0x1BFB5A5D0](v11, -1, -1);
    MEMORY[0x1BFB5A5D0](v9, -1, -1);
  }

  *a1 = v6;
  return v6;
}

uint64_t RemoteWidgetExtensionSession.deinit()
{
  v1 = OBJC_IVAR____TtC9ChronoKit28RemoteWidgetExtensionSession_identifier;
  v2 = sub_1BF4E7394();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1BF38C9B4(v0 + OBJC_IVAR____TtC9ChronoKit28RemoteWidgetExtensionSession_dataProtectionLevel, &qword_1EBDD8AF8, &qword_1BF4EC370);
  v3 = *(v0 + OBJC_IVAR____TtC9ChronoKit28RemoteWidgetExtensionSession_protectedDescriptors);

  v4 = *(v0 + OBJC_IVAR____TtC9ChronoKit28RemoteWidgetExtensionSession____lazy_storage___loggingIdentifier + 8);

  return v0;
}

uint64_t RemoteWidgetExtensionSession.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC9ChronoKit28RemoteWidgetExtensionSession_identifier;
  v2 = sub_1BF4E7394();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1BF38C9B4(v0 + OBJC_IVAR____TtC9ChronoKit28RemoteWidgetExtensionSession_dataProtectionLevel, &qword_1EBDD8AF8, &qword_1BF4EC370);
  v3 = *(v0 + OBJC_IVAR____TtC9ChronoKit28RemoteWidgetExtensionSession_protectedDescriptors);

  v4 = *(v0 + OBJC_IVAR____TtC9ChronoKit28RemoteWidgetExtensionSession____lazy_storage___loggingIdentifier + 8);

  v5 = *(*v0 + 12);
  v6 = *(*v0 + 26);

  return swift_deallocClassInstance();
}

uint64_t RemoteWidgetExtensionSession.getCurrentDescriptors(completion:)(void (*a1)(uint64_t, void))
{
  v3 = *(v1 + OBJC_IVAR____TtC9ChronoKit28RemoteWidgetExtensionSession_protectedDescriptors);

  os_unfair_lock_lock((v3 + 24));
  sub_1BF4E8584();
  v4 = *(v3 + 16);
  sub_1BF4E8554();
  v5 = *(v3 + 16);
  sub_1BF4E8574();
  v6 = *(v3 + 16);
  sub_1BF4E8564();
  v7 = sub_1BF4E8544();
  os_unfair_lock_unlock((v3 + 24));

  v8 = sub_1BF4E8554();

  a1(v8, 0);
}

void RemoteWidgetExtensionSession.getAllCurrentDescriptors(completion:)(void (*a1)(id, void))
{
  v3 = *(v1 + OBJC_IVAR____TtC9ChronoKit28RemoteWidgetExtensionSession_protectedDescriptors);

  os_unfair_lock_lock((v3 + 24));
  sub_1BF4E8584();
  v4 = *(v3 + 16);
  sub_1BF4E8554();
  v5 = *(v3 + 16);
  sub_1BF4E8574();
  v6 = *(v3 + 16);
  sub_1BF4E8564();
  v7 = sub_1BF4E8544();
  os_unfair_lock_unlock((v3 + 24));

  sub_1BF4E8554();
  sub_1BF4E8564();
  v8 = sub_1BF4E8534();
  a1(v8, 0);
}

uint64_t sub_1BF415834(int a1, int a2, void *aBlock, void (*a4)(uint64_t, void *))
{
  v5 = _Block_copy(aBlock);
  _Block_copy(v5);

  a4(v6, v5);
  _Block_release(v5);
  _Block_release(v5);
}

Swift::Void __swiftcall RemoteWidgetExtensionSession.invalidate()()
{
  if (qword_1EBDD8568 != -1)
  {
    swift_once();
  }

  v0 = sub_1BF4E7B54();
  __swift_project_value_buffer(v0, qword_1EBDE1EC0);

  oslog = sub_1BF4E7B34();
  v1 = sub_1BF4E8E84();

  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v8 = v3;
    *v2 = 136446210;
    v4 = sub_1BF414C5C();
    v6 = sub_1BF38D65C(v4, v5, &v8);

    *(v2 + 4) = v6;
    _os_log_impl(&dword_1BF389000, oslog, v1, "%{public}s Session invalidated", v2, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v3);
    MEMORY[0x1BFB5A5D0](v3, -1, -1);
    MEMORY[0x1BFB5A5D0](v2, -1, -1);
  }
}

void sub_1BF415C54(int a1, int a2, int a3, int a4, void *aBlock)
{
  v5 = _Block_copy(aBlock);
  v5[2](v5, 0);

  _Block_release(v5);
}

void sub_1BF415D44(int a1, int a2, int a3, void *aBlock)
{
  v4 = _Block_copy(aBlock);
  v4[2](v4, 0);

  _Block_release(v4);
}

uint64_t type metadata accessor for RemoteWidgetExtensionSession()
{
  result = qword_1EDC97828;
  if (!qword_1EDC97828)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BF415DE4()
{
  v0 = sub_1BF4E7394();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_1BF415F08();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_1BF415F08()
{
  if (!qword_1EDC96458)
  {
    sub_1BF4E8424();
    v0 = sub_1BF4E90F4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC96458);
    }
  }
}

void sub_1BF415F60(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + OBJC_IVAR____TtC9ChronoKit28RemoteWidgetExtensionSession_protectedDescriptors);

  os_unfair_lock_lock((v3 + 24));
  sub_1BF4E8584();
  v4 = *(v3 + 16);
  sub_1BF4E8554();
  v5 = *(v3 + 16);
  sub_1BF4E8574();
  v6 = *(v3 + 16);
  sub_1BF4E8564();
  v7 = sub_1BF4E8544();
  os_unfair_lock_unlock((v3 + 24));

  sub_1BF4E8554();

  sub_1BF3901C0(0, &unk_1EDC9D6D8, 0x1E6994388);
  v8 = sub_1BF4E8B84();
  (*(a2 + 16))(a2, v8, 0);
}

void sub_1BF416070(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + OBJC_IVAR____TtC9ChronoKit28RemoteWidgetExtensionSession_protectedDescriptors);

  os_unfair_lock_lock((v3 + 24));
  sub_1BF4E8584();
  v4 = *(v3 + 16);
  sub_1BF4E8554();
  v5 = *(v3 + 16);
  sub_1BF4E8574();
  v6 = *(v3 + 16);
  sub_1BF4E8564();
  v7 = sub_1BF4E8544();
  os_unfair_lock_unlock((v3 + 24));

  sub_1BF4E8554();
  sub_1BF4E8564();
  v8 = sub_1BF4E8534();
  (*(a2 + 16))(a2, v8, 0);
}

uint64_t ExtensionManaging.extensions(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8A38, &unk_1BF4EC4D0);
  v4 = sub_1BF4E76B4();
  v5 = (*(a3 + 48))(v4);

  return v5;
}

void sub_1BF416408(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v3 + 24);
  os_unfair_lock_lock(*(v4 + 16));
  v5 = OBJC_IVAR____TtC9ChronoKit19EnvironmentProvider__lock_environmentValues;
  swift_beginAccess();
  v6 = sub_1BF4E7F64();
  (*(*(v6 - 8) + 16))(a1, v3 + v5, v6);
  os_unfair_lock_unlock(*(v4 + 16));
}

uint64_t sub_1BF4164A8()
{
  v2 = *(*(v0 + 16) + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD9110, &qword_1BF4EEFA0);
  sub_1BF38C8B4(&unk_1EDC9FD80, &unk_1EBDD9110, &qword_1BF4EEFA0);
  return sub_1BF4E7C84();
}

uint64_t PlaceholderEnvironmentProviderAdapter.__allocating_init(sourceEnvironmentProvider:)(uint64_t *a1)
{
  v2 = swift_allocObject();
  sub_1BF38E49C(a1, v8);
  v3 = type metadata accessor for _PlaceholderEnvironmentProviderAdapter();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  v6 = swift_allocObject();
  sub_1BF4167B4(v8);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  *(v2 + 16) = v6;
  return v2;
}

uint64_t PlaceholderEnvironmentProviderAdapter.init(sourceEnvironmentProvider:)(uint64_t *a1)
{
  v2 = v1;
  sub_1BF38E49C(a1, v9);
  v4 = type metadata accessor for _PlaceholderEnvironmentProviderAdapter();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  v7 = swift_allocObject();
  sub_1BF4167B4(v9);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  *(v2 + 16) = v7;
  return v2;
}

uint64_t PlaceholderEnvironmentProviderAdapter.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t PlaceholderEnvironmentProviderAdapter.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

void sub_1BF41667C(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 16);
  v4 = *(v3 + 24);
  os_unfair_lock_lock(*(v4 + 16));
  v5 = OBJC_IVAR____TtC9ChronoKit19EnvironmentProvider__lock_environmentValues;
  swift_beginAccess();
  v6 = sub_1BF4E7F64();
  (*(*(v6 - 8) + 16))(a1, v3 + v5, v6);
  os_unfair_lock_unlock(*(v4 + 16));
}

uint64_t sub_1BF416720()
{
  v2 = *(*(*v0 + 16) + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD9110, &qword_1BF4EEFA0);
  sub_1BF38C8B4(&unk_1EDC9FD80, &unk_1EBDD9110, &qword_1BF4EEFA0);
  return sub_1BF4E7C84();
}

uint64_t sub_1BF4167B4(uint64_t *a1)
{
  v2 = v1;
  *(v1 + OBJC_IVAR____TtC9ChronoKit38_PlaceholderEnvironmentProviderAdapter__cancellable) = 0;
  sub_1BF38E49C(a1, v1 + OBJC_IVAR____TtC9ChronoKit38_PlaceholderEnvironmentProviderAdapter__sourceEnvironmentProvider);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD9110, &qword_1BF4EEFA0);
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  *(v1 + 16) = sub_1BF4E7C34();
  type metadata accessor for UnfairLock();
  v7 = swift_allocObject();
  v8 = swift_slowAlloc();
  *v8 = 0;
  *(v7 + 16) = v8;
  *(v2 + 24) = v7;
  sub_1BF4E7F54();

  sub_1BF417108();
  sub_1BF38E49C(v2 + OBJC_IVAR____TtC9ChronoKit38_PlaceholderEnvironmentProviderAdapter__sourceEnvironmentProvider, v16);
  v9 = v17;
  v10 = v18;
  __swift_project_boxed_opaque_existential_1(v16, v17);
  (*(v10 + 16))(v9, v10);
  v11 = swift_allocObject();
  swift_weakInit();
  v12 = swift_allocObject();
  *(v12 + 16) = sub_1BF417530;
  *(v12 + 24) = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8F30, &unk_1BF4EF080);
  sub_1BF38C8B4(&qword_1EDC9EF90, &qword_1EBDD8F30, &unk_1BF4EF080);
  v13 = sub_1BF4E7D14();

  __swift_destroy_boxed_opaque_existential_1Tm(a1);

  __swift_destroy_boxed_opaque_existential_1Tm(v16);
  v14 = *(v2 + OBJC_IVAR____TtC9ChronoKit38_PlaceholderEnvironmentProviderAdapter__cancellable);
  *(v2 + OBJC_IVAR____TtC9ChronoKit38_PlaceholderEnvironmentProviderAdapter__cancellable) = v13;

  return v2;
}

uint64_t sub_1BF4169DC()
{
  v0 = sub_1BF4E8164();
  v46 = *(v0 - 8);
  v1 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v45 = &v43 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v44 = &v43 - v4;
  v5 = sub_1BF4E7D44();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v43 - v11;
  v13 = sub_1BF4E7F64();
  v47 = *(v13 - 8);
  v14 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v43 - v18;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v21 = result;
    v43 = v0;
    v48 = v13;
    v22 = (result + OBJC_IVAR____TtC9ChronoKit38_PlaceholderEnvironmentProviderAdapter__sourceEnvironmentProvider);
    v23 = v22[3];
    v24 = v22[4];
    __swift_project_boxed_opaque_existential_1(v22, v23);
    (*(v24 + 8))(v23, v24);
    sub_1BF4E7D94();
    v25 = MEMORY[0x1E697EA58];
    sub_1BF417540(&unk_1EDC9F988, MEMORY[0x1E697EA58]);
    sub_1BF4E9194();
    sub_1BF417540(&qword_1EDC9D390, v25);
    v26 = sub_1BF4E88C4();
    v27 = *(v6 + 8);
    v27(v9, v5);
    v27(v12, v5);
    if ((v26 & 1) == 0)
    {
      v49 = MEMORY[0x1E69E7CC0];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8F28, &qword_1BF4EF078);
      sub_1BF38C8B4(&qword_1EDC9F198, &qword_1EBDD8F28, &qword_1BF4EF078);
      sub_1BF4E91A4();
      sub_1BF4E7DA4();
    }

    v28 = v47;
    v29 = v48;
    v30 = *(v47 + 16);
    v30(v16, v19, v48);
    v31 = v44;
    sub_1BF4E8144();
    v32 = *(v21 + 24);
    v33 = *(v32 + 16);

    os_unfair_lock_lock(v33);
    v34 = OBJC_IVAR____TtC9ChronoKit19EnvironmentProvider__lock_environmentValues;
    swift_beginAccess();
    v30(v16, (v21 + v34), v29);
    os_unfair_lock_unlock(*(v32 + 16));

    v35 = v45;
    sub_1BF4E8144();
    sub_1BF417540(qword_1EDC964A0, MEMORY[0x1E6985700]);
    v36 = v43;
    LOBYTE(v34) = sub_1BF4E88C4();
    v37 = *(v46 + 8);
    v37(v35, v36);
    v37(v31, v36);
    v38 = v19;
    if (v34)
    {
      if (qword_1EDC9D4F0 != -1)
      {
        swift_once();
      }

      v39 = sub_1BF4E7B54();
      __swift_project_value_buffer(v39, qword_1EDCA6988);
      v40 = sub_1BF4E7B34();
      v41 = sub_1BF4E8E84();
      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        *v42 = 0;
        _os_log_impl(&dword_1BF389000, v40, v41, "Placeholder environment ignoring redaction reason change.", v42, 2u);
        MEMORY[0x1BFB5A5D0](v42, -1, -1);

        return (*(v28 + 8))(v38, v48);
      }
    }

    else
    {
      sub_1BF417108();
    }

    return (*(v28 + 8))(v38, v48);
  }

  return result;
}

uint64_t sub_1BF416FC0()
{
  v1 = *(v0 + OBJC_IVAR____TtC9ChronoKit38_PlaceholderEnvironmentProviderAdapter__cancellable);

  v2 = (v0 + OBJC_IVAR____TtC9ChronoKit38_PlaceholderEnvironmentProviderAdapter__sourceEnvironmentProvider);

  return __swift_destroy_boxed_opaque_existential_1Tm(v2);
}

uint64_t sub_1BF417000()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC9ChronoKit38_PlaceholderEnvironmentProviderAdapter__cancellable;
  if (*(v0 + OBJC_IVAR____TtC9ChronoKit38_PlaceholderEnvironmentProviderAdapter__cancellable))
  {

    sub_1BF4E7BD4();
  }

  v3 = *(v0 + 16);

  v4 = *(v0 + 24);

  v5 = OBJC_IVAR____TtC9ChronoKit19EnvironmentProvider__lock_environmentValues;
  v6 = sub_1BF4E7F64();
  (*(*(v6 - 8) + 8))(v1 + v5, v6);
  v7 = *(v1 + v2);

  __swift_destroy_boxed_opaque_existential_1Tm((v1 + OBJC_IVAR____TtC9ChronoKit38_PlaceholderEnvironmentProviderAdapter__sourceEnvironmentProvider));

  v8 = *(*v1 + 48);
  v9 = *(*v1 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1BF417108()
{
  v1 = sub_1BF4E7D44();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1);
  v14 = sub_1BF4E7F64();
  v3 = *(v14 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v0 + 24);
  os_unfair_lock_lock(*(v13 + 16));
  v7 = OBJC_IVAR____TtC9ChronoKit19EnvironmentProvider__lock_environmentValues;
  v8 = *(v0 + OBJC_IVAR____TtC9ChronoKit38_PlaceholderEnvironmentProviderAdapter__sourceEnvironmentProvider + 24);
  v9 = *(v0 + OBJC_IVAR____TtC9ChronoKit38_PlaceholderEnvironmentProviderAdapter__sourceEnvironmentProvider + 32);
  __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC9ChronoKit38_PlaceholderEnvironmentProviderAdapter__sourceEnvironmentProvider), v8);
  (*(v9 + 8))(v8, v9);
  v15 = MEMORY[0x1E69E7CC0];
  sub_1BF417540(&unk_1EDC9F988, MEMORY[0x1E697EA58]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8F28, &qword_1BF4EF078);
  sub_1BF38C8B4(&qword_1EDC9F198, &qword_1EBDD8F28, &qword_1BF4EF078);
  sub_1BF4E91A4();
  sub_1BF4E7DA4();
  swift_beginAccess();
  (*(v3 + 40))(v0 + v7, v6, v14);
  swift_endAccess();
  os_unfair_lock_unlock(*(v13 + 16));
  v10 = *(v0 + 16);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD9110, &qword_1BF4EEFA0);
  sub_1BF38C8B4(&qword_1EDC9FD90, &unk_1EBDD9110, &qword_1BF4EEFA0);
  sub_1BF4E7C74();
}

uint64_t type metadata accessor for _PlaceholderEnvironmentProviderAdapter()
{
  result = qword_1EDC967C8;
  if (!qword_1EDC967C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BF417514()
{
}

uint64_t sub_1BF417540(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1BF417588(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8AD8, &unk_1BF4ED6C0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v12[-v4];
  v6 = sub_1BF4E7194();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v12[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1BF3985D8(a1, v5);
  (*(v7 + 56))(v5, 0, 1, v6);
  (*(v7 + 32))(v10, v5, v6);
  LOBYTE(v5) = URL.hasRequiresReloadExtendedAttribute.getter();
  (*(v7 + 8))(v10, v6);
  return v5 & 1;
}

uint64_t URL.hasRemovedFromStoreExtendedAttribute.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8F38, &qword_1BF4F7A30);
  v1 = *(*(v0 - 8) + 64);
  v2 = MEMORY[0x1EEE9AC00](v0 - 8);
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v11[-v5];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8F40, &qword_1BF4EF090);
  sub_1BF38C8B4(&qword_1EDC9FD98, &qword_1EBDD8F40, &qword_1BF4EF090);
  sub_1BF4E7034();
  v8 = *(v7 - 8);
  (*(v8 + 56))(v6, 0, 1, v7);
  sub_1BF38C94C(v6, v4, &qword_1EBDD8F38, &qword_1BF4F7A30);
  if ((*(v8 + 48))(v4, 1, v7) == 1)
  {
    sub_1BF38C9B4(v6, &qword_1EBDD8F38, &qword_1BF4F7A30);
    sub_1BF38C9B4(v4, &qword_1EBDD8F38, &qword_1BF4F7A30);
    return 0;
  }

  else
  {
    sub_1BF4E7614();
    sub_1BF38C9B4(v6, &qword_1EBDD8F38, &qword_1BF4F7A30);
    v9 = v11[7];
    (*(v8 + 8))(v4, v7);
  }

  return v9;
}

uint64_t BaseCacheManager.init(identifier:cacheKeyProvider:cacheURLProvider:protectionLevelProvider:fileManager:forReading:)(uint64_t a1, uint64_t a2, __int128 *a3, __int128 *a4, __int128 *a5, uint64_t a6, char a7)
{
  *(v7 + 160) = a7 ^ 1;
  *(v7 + 24) = a1;
  *(v7 + 32) = a2;
  sub_1BF38E610(a3, v7 + 40);
  sub_1BF38E610(a4, v7 + 80);
  sub_1BF38E610(a5, v7 + 120);
  *(v7 + 16) = a6;
  return v7;
}

uint64_t BaseCacheManager.deinit()
{
  v1 = *(v0 + 32);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 40));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 80));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 120));
  return v0;
}

uint64_t sub_1BF417ADC(__int128 *a1)
{
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1Tm((v1 + 120));
  sub_1BF38E610(a1, v1 + 120);
  return swift_endAccess();
}

uint64_t sub_1BF417B8C(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v35[1] = *MEMORY[0x1E69E9840];
  v6 = sub_1BF4E7194();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v33 - v13;
  if (*(v4 + 160) == 1)
  {
    v34 = v12;
    result = sub_1BF3985D8(a2, &v33 - v13);
    if (!v3)
    {
      sub_1BF4E7134();
      v16 = *(v4 + 16);
      v17 = sub_1BF4E7094();
      v35[0] = 0;
      v18 = [v16 createDirectoryAtURL:v17 withIntermediateDirectories:1 attributes:0 error:v35];

      v19 = v35[0];
      if (v18)
      {
        v20 = *(v4 + 16);
        v21 = v19;
        sub_1BF4C6BFC();

        v27 = *(v4 + 16);
        v28 = sub_1BF4E7094();
        v29 = sub_1BF4E7094();
        v35[0] = 0;
        v30 = [v27 moveItemAtURL:v28 toURL:v29 error:v35];

        if (v30)
        {
          v24 = *(v7 + 8);
          v31 = v35[0];
          goto LABEL_8;
        }

        v32 = v35[0];
        sub_1BF4E6FF4();
      }

      else
      {
        v23 = v35[0];
        sub_1BF4E6FF4();
      }

      swift_willThrow();
      v24 = *(v7 + 8);
LABEL_8:
      v25 = v34;
      v24(v10, v34);
      result = (v24)(v14, v25);
    }
  }

  else
  {
    sub_1BF3F79D0();
    swift_allocError();
    *v22 = 1;
    result = swift_willThrow();
  }

  v26 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1BF417E64(uint64_t a1)
{
  v20[1] = *MEMORY[0x1E69E9840];
  v4 = sub_1BF4E7194();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v9 = v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v1 + 160) == 1)
  {
    v10 = v7;
    result = sub_1BF3985D8(a1, v9);
    if (!v2)
    {
      v12 = *(v1 + 16);
      v13 = sub_1BF4E7094();
      v20[0] = 0;
      v14 = [v12 removeItemAtURL:v13 error:v20];

      if (v14)
      {
        v15 = *(v5 + 8);
        v16 = v20[0];
        result = v15(v9, v10);
      }

      else
      {
        v19 = v20[0];
        sub_1BF4E6FF4();

        swift_willThrow();
        result = (*(v5 + 8))(v9, v10);
      }
    }
  }

  else
  {
    sub_1BF3F79D0();
    swift_allocError();
    *v17 = 1;
    result = swift_willThrow();
  }

  v18 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1BF418048(uint64_t a1, uint64_t a2)
{
  v72 = a2;
  v66 = *v2;
  v5 = v66;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8F48, &qword_1BF4EFDA0);
  v69 = *(v6 - 8);
  v7 = *(v69 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v68 = &v55 - v8;
  v9 = sub_1BF4E7394();
  v70 = *(v9 - 8);
  v71 = v9;
  v10 = *(v70 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v67 = &v55 - v14;
  isa = v5[10].isa;
  v16 = *(isa - 1);
  v17 = v16[8];
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v55 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v55 - v22;
  v24 = sub_1BF4E7194();
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x1EEE9AC00](v24);
  v29 = &v55 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v2 + 160) == 1)
  {
    v63 = v12;
    v64 = v27;
    v65 = v26;
    v30 = v29;
    result = sub_1BF3985D8(a1, v29);
    if (!v3)
    {
      v61 = v30;
      v62 = v6;
      if (qword_1EDC9EFD8 != -1)
      {
        swift_once();
      }

      v32 = sub_1BF4E7B54();
      __swift_project_value_buffer(v32, qword_1EDCA6A48);
      v57 = v16[2];
      v57(v23, a1, isa);
      v33 = v70;
      v34 = v67;
      v59 = *(v70 + 16);
      v60 = v70 + 16;
      v59(v67, v72, v71);
      v35 = sub_1BF4E7B34();
      v58 = sub_1BF4E8E84();
      if (os_log_type_enabled(v35, v58))
      {
        v36 = swift_slowAlloc();
        v56 = swift_slowAlloc();
        v73 = v56;
        *v36 = 136446466;
        v57(v20, v23, isa);
        v37 = v16[1];
        v37(v23, isa);
        v38 = *(v66[13].isa + 1);
        v66 = v35;
        v39 = sub_1BF4E96A4();
        v41 = v40;
        v37(v20, isa);
        v42 = sub_1BF38D65C(v39, v41, &v73);

        *(v36 + 4) = v42;
        *(v36 + 12) = 2082;
        sub_1BF41C66C(&unk_1EBDD92C0, MEMORY[0x1E69695A8]);
        v43 = v71;
        v44 = sub_1BF4E96A4();
        v46 = v45;
        (*(v70 + 8))(v34, v43);
        v47 = sub_1BF38D65C(v44, v46, &v73);

        *(v36 + 14) = v47;
        v48 = v66;
        _os_log_impl(&dword_1BF389000, v66, v58, "%{public}s marking with version %{public}s", v36, 0x16u);
        v49 = v56;
        swift_arrayDestroy();
        MEMORY[0x1BFB5A5D0](v49, -1, -1);
        MEMORY[0x1BFB5A5D0](v36, -1, -1);
      }

      else
      {
        (v16[1])(v23, isa);

        v43 = v71;
        (*(v33 + 8))(v34, v71);
      }

      v59(v63, v72, v43);
      v51 = MEMORY[0x1E69695A8];
      sub_1BF41C66C(&qword_1EBDD8958, MEMORY[0x1E69695A8]);
      sub_1BF41C66C(&qword_1EDC9D5E0, v51);
      v52 = v68;
      sub_1BF4E7604();
      sub_1BF38C8B4(&qword_1EBDD8F50, &qword_1EBDD8F48, &qword_1BF4EFDA0);
      v54 = v61;
      v53 = v62;
      sub_1BF4E7044();
      (*(v69 + 8))(v52, v53);
      return (*(v64 + 8))(v54, v65);
    }
  }

  else
  {
    sub_1BF3F79D0();
    swift_allocError();
    *v50 = 1;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1BF41873C(uint64_t a1)
{
  v44 = *v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8F40, &qword_1BF4EF090);
  v46 = *(v4 - 8);
  v5 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v45 = &v38 - v6;
  isa = v44[10].isa;
  v8 = *(isa - 1);
  v9 = v8[8];
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v38 - v14;
  v16 = sub_1BF4E7194();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16);
  v21 = &v38 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v1 + 160) == 1)
  {
    v42 = v19;
    v43 = v18;
    result = sub_1BF3985D8(a1, v21);
    if (!v2)
    {
      v41 = v4;
      if (qword_1EDC9EFD8 != -1)
      {
        swift_once();
      }

      v23 = sub_1BF4E7B54();
      __swift_project_value_buffer(v23, qword_1EDCA6A48);
      v40 = v8[2];
      v40(v15, a1, isa);
      v24 = sub_1BF4E7B34();
      v25 = sub_1BF4E8E84();
      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        v48 = v25;
        v27 = v26;
        v39 = swift_slowAlloc();
        v47 = v39;
        *v27 = 136446210;
        v40(v12, v15, isa);
        v28 = v8[1];
        v28(v15, isa);
        v29 = *(v44[13].isa + 1);
        v44 = v24;
        v30 = sub_1BF4E96A4();
        v32 = v31;
        v28(v12, isa);
        v33 = sub_1BF38D65C(v30, v32, &v47);

        *(v27 + 4) = v33;
        v24 = v44;
        _os_log_impl(&dword_1BF389000, v44, v48, "%{public}s marked with having developer error", v27, 0xCu);
        v34 = v39;
        __swift_destroy_boxed_opaque_existential_1Tm(v39);
        MEMORY[0x1BFB5A5D0](v34, -1, -1);
        MEMORY[0x1BFB5A5D0](v27, -1, -1);
      }

      else
      {
        (v8[1])(v15, isa);
      }

      v49 = 1;
      v36 = v45;
      sub_1BF4E7604();
      sub_1BF38C8B4(&qword_1EDC9D5B8, &qword_1EBDD8F40, &qword_1BF4EF090);
      v37 = v41;
      sub_1BF4E7044();
      (*(v46 + 8))(v36, v37);
      return (*(v42 + 8))(v21, v43);
    }
  }

  else
  {
    sub_1BF3F79D0();
    swift_allocError();
    *v35 = 1;
    return swift_willThrow();
  }

  return result;
}
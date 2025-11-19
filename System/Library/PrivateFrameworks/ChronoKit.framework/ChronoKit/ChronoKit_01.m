char *sub_1BF3A31DC(char *a1, int64_t a2, char a3)
{
  result = sub_1BF3A30D0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_1BF3A3254(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v9 = *(v4 + OBJC_IVAR____TtC9ChronoKit11WidgetEntry__lock);
  os_unfair_lock_lock(*(v9 + 16));
  v10 = *a1;
  swift_beginAccess();
  sub_1BF38C94C(v4 + v10, a4, a2, a3);
  os_unfair_lock_unlock(*(v9 + 16));
}

uint64_t sub_1BF3A331C()
{
  v1 = *(v0 + OBJC_IVAR____TtC9ChronoKit11WidgetEntry__lock);
  os_unfair_lock_lock(*(v1 + 16));
  v2 = OBJC_IVAR____TtC9ChronoKit11WidgetEntry__lock_content;
  swift_beginAccess();
  sub_1BF38C94C(v0 + v2, v7, &qword_1EBDD9AF8, &qword_1BF4F5E00);
  v3 = v8;
  sub_1BF38C9B4(v7, &qword_1EBDD9AF8, &qword_1BF4F5E00);
  v4 = 0;
  if (!v3)
  {
    v4 = *(v0 + OBJC_IVAR____TtC9ChronoKit11WidgetEntry__lock_contentLoadError);
    v5 = *(v0 + OBJC_IVAR____TtC9ChronoKit11WidgetEntry__lock_contentLoadError + 8);
  }

  os_unfair_lock_unlock(*(v1 + 16));
  return v4;
}

uint64_t ColorScheme.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1BF4E7D24();
  v5 = *(*(v4 - 8) + 104);
  v6 = MEMORY[0x1E697DBA8];
  if (a1 != 2)
  {
    v6 = MEMORY[0x1E697DBB8];
  }

  v7 = *v6;

  return v5(a2, v7, v4);
}

uint64_t sub_1BF3A3470(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WidgetEntryKey();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void DescriptorCollection.isEmpty.getter()
{
  v1 = *v0;
  v2 = v0[2];
  sub_1BF4E9034();
  v3 = *(v1 + 80);
  sub_1BF4E8CA4();
  sub_1BF391F90(&qword_1EDC9F128, MEMORY[0x1E69941C0]);

  JUMPOUT(0x1BFB58A40);
}

uint64_t sub_1BF3A35AC@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC9ChronoKit27FixedDataProtectionProvider_protectionType;
  swift_beginAccess();
  v5 = sub_1BF4E8424();
  return (*(*(v5 - 8) + 16))(a1, v3 + v4, v5);
}

void *sub_1BF3A367C()
{
  v1 = *(v0 + OBJC_IVAR____TtC9ChronoKit11WidgetEntry__lock);
  os_unfair_lock_lock(*(v1 + 16));
  v2 = *(v0 + OBJC_IVAR____TtC9ChronoKit11WidgetEntry__lock_descriptor);
  v3 = *(v1 + 16);
  v4 = v2;
  os_unfair_lock_unlock(v3);
  return v2;
}

void *sub_1BF3A36E8(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8E78, &unk_1BF4EE790);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1BF3A37AC(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8E78, &unk_1BF4EE790);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t WidgetEntryKey.hash(into:)()
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
  v11 = *v0;
  sub_1BF4E90B4();
  v12 = v1[1];
  sub_1BF4E90B4();
  v13 = type metadata accessor for WidgetEntryKey();
  sub_1BF3988F8(v1 + *(v13 + 24), v10);
  if ((*(v3 + 48))(v10, 1, v2) == 1)
  {
    return sub_1BF4E9824();
  }

  (*(v3 + 32))(v6, v10, v2);
  sub_1BF4E9824();
  sub_1BF38C8FC(&unk_1EDC9F018);
  sub_1BF4E8884();
  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_1BF3A3A54(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_1BF3A3ABC()
{
  sub_1BF4E9804();
  WidgetEntryKey.hash(into:)();
  return sub_1BF4E9844();
}

BOOL _s9ChronoKit14WidgetEntryKeyV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD85B0, &unk_1BF4EA9E0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v27 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8E78, &unk_1BF4EE790);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v27 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8EB0, &unk_1BF4EEA40);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v27 - v15;
  sub_1BF3901C0(0, &qword_1EDC9FDA8, 0x1E69E58C0);
  v17 = *a1;
  v18 = *a2;
  if ((sub_1BF4E90A4() & 1) == 0)
  {
    return 0;
  }

  v19 = a1[1];
  v20 = a2[1];
  if ((sub_1BF4E90A4() & 1) == 0)
  {
    return 0;
  }

  v21 = *(type metadata accessor for WidgetEntryKey() + 24);
  v22 = *(v13 + 48);
  sub_1BF3988F8(a1 + v21, v16);
  sub_1BF3988F8(a2 + v21, &v16[v22]);
  v23 = *(v5 + 48);
  if (v23(v16, 1, v4) == 1)
  {
    if (v23(&v16[v22], 1, v4) == 1)
    {
      sub_1BF38C9B4(v16, &qword_1EBDD8E78, &unk_1BF4EE790);
      return 1;
    }

    goto LABEL_8;
  }

  sub_1BF3988F8(v16, v12);
  if (v23(&v16[v22], 1, v4) == 1)
  {
    (*(v5 + 8))(v12, v4);
LABEL_8:
    sub_1BF38C9B4(v16, &qword_1EBDD8EB0, &unk_1BF4EEA40);
    return 0;
  }

  (*(v5 + 32))(v8, &v16[v22], v4);
  sub_1BF38C8FC(&qword_1EDC9D550);
  v25 = sub_1BF4E88C4();
  v26 = *(v5 + 8);
  v26(v8, v4);
  v26(v12, v4);
  sub_1BF38C9B4(v16, &qword_1EBDD8E78, &unk_1BF4EE790);
  return (v25 & 1) != 0;
}

uint64_t WidgetEntryKey.init(widget:metrics:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  *a3 = a1;
  *(a3 + 1) = a2;
  v4 = *(type metadata accessor for WidgetEntryKey() + 24);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD85B0, &unk_1BF4EA9E0);
  v6 = *(*(v5 - 8) + 56);

  return v6(&a3[v4], 1, 1, v5);
}

void *BlockAssertion.__allocating_init(_:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  type metadata accessor for UnfairLock();
  v5 = swift_allocObject();
  v6 = swift_slowAlloc();
  *v6 = 0;
  *(v5 + 16) = v6;
  v4[2] = v5;
  v4[3] = a1;
  v4[4] = a2;
  return v4;
}

uint64_t sub_1BF3A3F34@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC9ChronoKit11WidgetEntry__environmentProvider);
  a1[3] = type metadata accessor for DescriptorMixedEnvironmentProviderAdapter();
  a1[4] = &protocol witness table for EnvironmentProvider;
  *a1 = v3;
}

uint64_t EnvironmentModifiers.description.getter()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9518, &qword_1BF4F1660);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v24 - v4;
  v26 = 0;
  v27 = 0xE000000000000000;
  sub_1BF4E92E4();
  MEMORY[0x1BFB58C90](0xD000000000000034, 0x80000001BF4FB6C0);
  if (*v0)
  {
    v6 = 1702195828;
  }

  else
  {
    v6 = 0x65736C6166;
  }

  if (*v0)
  {
    v7 = 0xE400000000000000;
  }

  else
  {
    v7 = 0xE500000000000000;
  }

  MEMORY[0x1BFB58C90](v6, v7);

  MEMORY[0x1BFB58C90](0xD000000000000018, 0x80000001BF4FB700);
  v25 = *(v0 + 8);
  type metadata accessor for CHSColorSchemes(0);
  sub_1BF4E9404();
  MEMORY[0x1BFB58C90](0xD000000000000019, 0x80000001BF4FB720);
  v8 = *(v0 + 16);
  sub_1BF4E8174();
  sub_1BF3A43F4(qword_1EDC9FA00, MEMORY[0x1E6985750]);
  v9 = sub_1BF4E8D34();
  MEMORY[0x1BFB58C90](v9);

  MEMORY[0x1BFB58C90](0xD00000000000001BLL, 0x80000001BF4FB740);
  if (*(v1 + 24))
  {
    v10 = 1702195828;
  }

  else
  {
    v10 = 0x65736C6166;
  }

  if (*(v1 + 24))
  {
    v11 = 0xE400000000000000;
  }

  else
  {
    v11 = 0xE500000000000000;
  }

  MEMORY[0x1BFB58C90](v10, v11);

  MEMORY[0x1BFB58C90](0xD000000000000013, 0x80000001BF4FB760);
  v12 = type metadata accessor for EnvironmentModifiers();
  if (*(v1 + v12[9]))
  {
    v13 = 1702195828;
  }

  else
  {
    v13 = 0x65736C6166;
  }

  if (*(v1 + v12[9]))
  {
    v14 = 0xE400000000000000;
  }

  else
  {
    v14 = 0xE500000000000000;
  }

  MEMORY[0x1BFB58C90](v13, v14);

  MEMORY[0x1BFB58C90](0xD00000000000001DLL, 0x80000001BF4FB780);
  v15 = *(v1 + v12[10]);
  sub_1BF3901C0(0, &qword_1EDC9F9C0, 0x1E69943A0);
  sub_1BF3A443C();
  v16 = sub_1BF4E8D34();
  MEMORY[0x1BFB58C90](v16);

  MEMORY[0x1BFB58C90](0xD000000000000017, 0x80000001BF4FB7A0);
  v25 = *(v1 + v12[11]);
  type metadata accessor for CHSWidgetProximities(0);
  sub_1BF4E9404();
  MEMORY[0x1BFB58C90](0xD00000000000001ALL, 0x80000001BF4FB7C0);
  sub_1BF38C94C(v1 + v12[8], v5, &qword_1EBDD9518, &qword_1BF4F1660);
  v17 = sub_1BF4E6F14();
  v18 = *(v17 - 8);
  if ((*(v18 + 48))(v5, 1, v17) == 1)
  {
    sub_1BF38C9B4(v5, &qword_1EBDD9518, &qword_1BF4F1660);
    v19 = 0xE500000000000000;
    v20 = 0x3E6C696E3CLL;
  }

  else
  {
    v21 = MEMORY[0x1BFB57150]();
    v19 = v22;
    (*(v18 + 8))(v5, v17);
    v20 = v21;
  }

  MEMORY[0x1BFB58C90](v20, v19);

  MEMORY[0x1BFB58C90](62, 0xE100000000000000);
  return v26;
}

uint64_t sub_1BF3A43F4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1BF3A443C()
{
  result = qword_1EDC9F9B8;
  if (!qword_1EDC9F9B8)
  {
    sub_1BF3901C0(255, &qword_1EDC9F9C0, 0x1E69943A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC9F9B8);
  }

  return result;
}

uint64_t sub_1BF3A44B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v45 = a1;
  v49 = a3;
  v4 = sub_1BF4E81E4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v44 = &v42 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v42 - v12;
  v14 = sub_1BF4E7F64();
  v47 = *(v14 - 8);
  v48 = v14;
  v15 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(a2 + OBJC_IVAR____TtC9ChronoKit41DescriptorMixedEnvironmentProviderAdapter__sourceEnvironmentProvider + 24);
  v19 = *(a2 + OBJC_IVAR____TtC9ChronoKit41DescriptorMixedEnvironmentProviderAdapter__sourceEnvironmentProvider + 32);
  __swift_project_boxed_opaque_existential_1((a2 + OBJC_IVAR____TtC9ChronoKit41DescriptorMixedEnvironmentProviderAdapter__sourceEnvironmentProvider), v18);
  v20 = *(v19 + 8);
  v46 = v17;
  v20(v18, v19);
  v21 = *MEMORY[0x1E69857A0];
  v43 = *(v5 + 104);
  v43(v13, v21, v4);
  v22 = *(a2 + OBJC_IVAR____TtC9ChronoKit41DescriptorMixedEnvironmentProviderAdapter__lock);
  v23 = *(v22 + 16);

  os_unfair_lock_lock(v23);
  v42 = a2;
  v24 = *(a2 + OBJC_IVAR____TtC9ChronoKit41DescriptorMixedEnvironmentProviderAdapter__lock_descriptor);
  v25 = *(v22 + 16);
  v26 = v24;
  os_unfair_lock_unlock(v25);

  if (v24)
  {
    v27 = [v26 preferredBackgroundStyle];

    if (v27 == 1)
    {
      v28 = MEMORY[0x1E6985790];
    }

    else
    {
      if (v27 != 2)
      {
LABEL_7:
        v29 = v44;
        v43(v44, v21, v4);
        (*(v5 + 40))(v13, v29, v4);
        goto LABEL_8;
      }

      v28 = MEMORY[0x1E6985798];
    }

    v21 = *v28;
    goto LABEL_7;
  }

LABEL_8:
  (*(v5 + 16))(v9, v13, v4);
  v30 = v46;
  sub_1BF4E7E54();
  sub_1BF4E7E44();
  sub_1BF3A0690();
  v31 = sub_1BF4E88C4();
  v32 = *(v5 + 8);
  v32(v9, v4);
  if ((v31 & 1) == 0)
  {
    if (qword_1EDC9EFF8 != -1)
    {
      swift_once();
    }

    v33 = sub_1BF4E7B54();
    __swift_project_value_buffer(v33, qword_1EDCA6AA8);
    v34 = v42;

    v35 = sub_1BF4E7B34();
    v36 = sub_1BF4E8E84();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = v13;
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v50 = v39;
      *v38 = 136446466;
      *(v38 + 4) = sub_1BF38D65C(*(v34 + OBJC_IVAR____TtC9ChronoKit41DescriptorMixedEnvironmentProviderAdapter__logIdentifier), *(v34 + OBJC_IVAR____TtC9ChronoKit41DescriptorMixedEnvironmentProviderAdapter__logIdentifier + 8), &v50);
      *(v38 + 12) = 2050;
      swift_beginAccess();
      *(v38 + 14) = sub_1BF4E81D4();
      _os_log_impl(&dword_1BF389000, v35, v36, "[%{public}s] Setting _preferredSystemWidgetBackgroundStyle to: %{public}ld", v38, 0x16u);
      __swift_destroy_boxed_opaque_existential_1Tm(v39);
      MEMORY[0x1BFB5A5D0](v39, -1, -1);
      v40 = v38;
      v13 = v37;
      MEMORY[0x1BFB5A5D0](v40, -1, -1);
    }
  }

  (*(v47 + 32))(v49, v30, v48);
  return (v32)(v13, v4);
}

uint64_t type metadata accessor for DescriptorMixedEnvironmentProviderAdapter()
{
  result = qword_1EDC9DA58;
  if (!qword_1EDC9DA58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BF3A49B4@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9ChronoKit11WidgetEntry_protectionType;
  swift_beginAccess();
  v4 = sub_1BF4E8424();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

void sub_1BF3A4A84(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(v3 + 24);
  os_unfair_lock_lock(*(v4 + 16));
  v5 = OBJC_IVAR____TtC9ChronoKit19EnvironmentProvider__lock_environmentValues;
  swift_beginAccess();
  v6 = sub_1BF4E7F64();
  (*(*(v6 - 8) + 16))(a1, v3 + v5, v6);
  os_unfair_lock_unlock(*(v4 + 16));
}

uint64_t sub_1BF3A4B24()
{
  v2 = *(*v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD9110, &qword_1BF4EEFA0);
  sub_1BF3A4BB0(&unk_1EDC9FD80);
  return sub_1BF4E7C84();
}

uint64_t sub_1BF3A4BB0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBDD9110, &qword_1BF4EEFA0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1BF3A4C14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8D10, &qword_1BF4EDA30);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v33 - v6;
  v8 = sub_1BF4E7684();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = (v2 + OBJC_IVAR____TtC9ChronoKit21DataProtectionMonitor_keybagStateProvider);
  v14 = *(v2 + OBJC_IVAR____TtC9ChronoKit21DataProtectionMonitor_keybagStateProvider + 32);
  __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC9ChronoKit21DataProtectionMonitor_keybagStateProvider), *(v2 + OBJC_IVAR____TtC9ChronoKit21DataProtectionMonitor_keybagStateProvider + 24));
  sub_1BF4E7704();
  v15 = v13[4];
  __swift_project_boxed_opaque_existential_1(v13, v13[3]);
  v16 = sub_1BF4E7724();
  v17 = *(v4 + 48);
  (*(v9 + 16))(v7, v12, v8);
  v18 = sub_1BF4E7674();
  v19 = *(v18 - 8);
  (*(v19 + 16))(&v7[v17], a1, v18);
  v20 = (*(v9 + 88))(v7, v8);
  if (v20 == *MEMORY[0x1E6994090])
  {
    (*(v9 + 8))(v12, v8);
    v21 = *MEMORY[0x1E69859A0];
    v22 = sub_1BF4E8424();
    v23 = *(*(v22 - 8) + 104);
    v24 = v34;
    v25 = v21;
LABEL_3:
    v23(v24, v25, v22);
    return (*(v19 + 8))(&v7[v17], v18);
  }

  v27 = v34;
  if (v20 == *MEMORY[0x1E69940A0])
  {
    goto LABEL_5;
  }

  if (v20 == *MEMORY[0x1E6994080])
  {
    (*(v9 + 8))(v12, v8);
    v22 = sub_1BF4E8424();
    v23 = *(*(v22 - 8) + 104);
    v31 = MEMORY[0x1E6985998];
    if ((v16 & 1) == 0)
    {
      v31 = MEMORY[0x1E69859A0];
    }

    v25 = *v31;
    v24 = v27;
    goto LABEL_3;
  }

  if (v20 == *MEMORY[0x1E6994088])
  {
    (*(v9 + 8))(v12, v8);
    (*(v19 + 8))(&v7[v17], v18);
LABEL_15:
    v28 = MEMORY[0x1E6985990];
    goto LABEL_7;
  }

  if (v20 != *MEMORY[0x1E6994098] && v20 != *MEMORY[0x1E6994078] && v20 != *MEMORY[0x1E6994070])
  {
    if (v20 == *MEMORY[0x1E6994068])
    {
      v32 = (*(v19 + 88))(&v7[v17], v18);
      if (v32 == *MEMORY[0x1E6994040])
      {
        (*(v9 + 8))(v12, v8);
        goto LABEL_15;
      }

      if (v32 == *MEMORY[0x1E6994048])
      {
        (*(v9 + 8))(v12, v8);
        goto LABEL_6;
      }

LABEL_26:
      result = sub_1BF4E9724();
      __break(1u);
      return result;
    }

    if (v20 != *MEMORY[0x1E6994060])
    {
      goto LABEL_26;
    }
  }

LABEL_5:
  (*(v9 + 8))(v12, v8);
  (*(v19 + 8))(&v7[v17], v18);
LABEL_6:
  v28 = MEMORY[0x1E6985988];
LABEL_7:
  v29 = *v28;
  v30 = sub_1BF4E8424();
  return (*(*(v30 - 8) + 104))(v27, v29, v30);
}

void sub_1BF3A5110(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9B00, &qword_1BF4F1E50);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v17 - v7;
  v9 = sub_1BF4E7334();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v2 + OBJC_IVAR____TtC9ChronoKit11WidgetEntry__lock);
  os_unfair_lock_lock(*(v14 + 16));
  sub_1BF38C94C(a1, v8, &qword_1EBDD9B00, &qword_1BF4F1E50);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_1BF38C9B4(v8, &qword_1EBDD9B00, &qword_1BF4F1E50);
    v15 = OBJC_IVAR____TtC9ChronoKit11WidgetEntry__lock_currentEntry;
    swift_beginAccess();
    sub_1BF38C94C(v2 + v15, a2, &qword_1EBDD9AF0, &qword_1BF4F5DF8);
  }

  else
  {
    (*(v10 + 32))(v13, v8, v9);
    sub_1BF3AEB90(&v17);
    (*(v10 + 8))(v13, v9);
    if (*(&v18 + 1) == 1)
    {
      sub_1BF38C9B4(&v17, &qword_1EBDD9B30, &qword_1BF4F5E20);
      *(a2 + 32) = 0;
      *a2 = 0u;
      *(a2 + 16) = 0u;
    }

    else
    {
      v16 = v18;
      *a2 = v17;
      *(a2 + 16) = v16;
      *(a2 + 32) = v19;
      sub_1BF38C9B4(&v20, &qword_1EBDD9AF0, &qword_1BF4F5DF8);
    }
  }

  os_unfair_lock_unlock(*(v14 + 16));
}

uint64_t sub_1BF3A53D4(id *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8BB8, &unk_1BF4ED400);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v3 - 8);
  v48 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v49 = &v47 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8AD8, &unk_1BF4ED6C0);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v8 - 8);
  v12 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v47 - v13;
  v15 = sub_1BF4E7194();
  v16 = *(v15 - 1);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v50 = &v47 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v51 = &v47 - v21;
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v47 - v22;
  v52 = a1;
  v53 = v1;
  sub_1BF3F4FF4(a1, v14);
  v24 = *(v16 + 56);
  v25 = 1;
  v24(v14, 0, 1, v15);
  (*(v16 + 32))(v23, v14, v15);
  LOBYTE(v14) = URL.hasRequiresReloadExtendedAttribute.getter();
  (*(v16 + 8))(v23, v15);
  if ((v14 & 1) == 0)
  {
    sub_1BF3F4FF4(v52, v12);
    v24(v12, 0, 1, v15);
    v26 = v51;
    (*(v16 + 32))(v51, v12, v15);
    sub_1BF4E7074();
    v27 = v50;
    sub_1BF4E76F4();
    sub_1BF4E7074();
    v30 = *(v16 + 8);
    v28 = v16 + 8;
    v29 = v30;
    v30(v27, v15);
    v31 = sub_1BF4E8A64();

    if ((v31 & 1) != 0 || (v32 = [objc_allocWithZone(MEMORY[0x1E698E638]) init]) == 0)
    {
      v29(v26, v15);
      v25 = 0;
    }

    else
    {
      v52 = v15;
      v53 = v28;
      v33 = v32;
      v34 = [v32 stringRepresentation];

      v35 = sub_1BF4E8914();
      v37 = v36;

      v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8BC0, qword_1BF4ED410);
      sub_1BF38C8B4(&qword_1EDC9F088, &qword_1EBDD8BC0, qword_1BF4ED410);
      v39 = v49;
      sub_1BF4E7034();
      v41 = v48;
      v42 = *(v38 - 8);
      (*(v42 + 56))(v39, 0, 1, v38);
      sub_1BF38C94C(v39, v41, &qword_1EBDD8BB8, &unk_1BF4ED400);
      v43 = (*(v42 + 48))(v41, 1, v38);
      if (v43 == 1)
      {
        sub_1BF38C9B4(v41, &qword_1EBDD8BB8, &unk_1BF4ED400);

        v25 = 1;
      }

      else
      {
        sub_1BF4E7614();
        v45 = v54;
        v44 = v55;
        (*(v42 + 8))(v41, v38);
        if (v35 == v45 && v37 == v44)
        {

          v25 = 0;
        }

        else
        {
          v46 = sub_1BF4E9734();

          v25 = v46 ^ 1;
        }
      }

      sub_1BF38C9B4(v39, &qword_1EBDD8BB8, &unk_1BF4ED400);
      v29(v51, v52);
    }
  }

  return v25 & 1;
}

uint64_t sub_1BF3A5A3C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BF3A5AA4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1BF3A5B24(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC9ChronoKit11WidgetEntry__lock);
  os_unfair_lock_lock(*(v3 + 16));
  sub_1BF3A672C(v1, a1);
  os_unfair_lock_unlock(*(v3 + 16));
  v4 = *(v1 + OBJC_IVAR____TtC9ChronoKit11WidgetEntry__contentDidChangePublisher);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD9110, &qword_1BF4EEFA0);
  sub_1BF38C8B4(&qword_1EDC9FD90, &unk_1EBDD9110, &qword_1BF4EEFA0);
  sub_1BF4E7C74();
  return sub_1BF38C9B4(a1, &qword_1EBDD9AF8, &qword_1BF4F5E00);
}

uint64_t sub_1BF3A5C18(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 24))(a2, a1, v6);
  return a2;
}

uint64_t sub_1BF3A5C80(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9ChronoKit11WidgetEntry__lock_content;
  swift_beginAccess();
  sub_1BF3A5C18(a1, v1 + v3, &qword_1EBDD9AF8, &qword_1BF4F5E00);
  swift_endAccess();
  sub_1BF38C9B4(a1, &qword_1EBDD9AF8, &qword_1BF4F5E00);
  sub_1BF38C94C(v1 + v3, v8, &qword_1EBDD9AF8, &qword_1BF4F5E00);
  v4 = v9;
  result = sub_1BF38C9B4(v8, &qword_1EBDD9AF8, &qword_1BF4F5E00);
  if (v4)
  {
    v6 = (v1 + OBJC_IVAR____TtC9ChronoKit11WidgetEntry__lock_contentLoadError);
    v7 = *(v1 + OBJC_IVAR____TtC9ChronoKit11WidgetEntry__lock_contentLoadError + 8);
    *v6 = 0;
    v6[1] = 0;
  }

  return result;
}

uint64_t sub_1BF3A5D68()
{
  v1 = *(v0 + *(*v0 + 200));

  os_unfair_lock_lock(v1 + 4);
  sub_1BF3A5E00();
  os_unfair_lock_unlock(v1 + 4);
}

uint64_t sub_1BF3A5E00()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_1BF3A5E28()
{
  v1 = *(v0 + 16);
  v2 = *(*v1 + 216);
  v3 = *(v1 + v2);
  *(v1 + v2) = *(v0 + 24);
}

uint64_t sub_1BF3A5E78(char *a1, void *a2, char a3)
{
  v7 = sub_1BF4E7FF4();
  v35 = *(v7 - 8);
  v36 = v7;
  v8 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v32 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1BF4E8064();
  v33 = *(v10 - 8);
  v34 = v10;
  v11 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD95C8, &qword_1BF4F1AB0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v31 - v16;
  v18 = type metadata accessor for ReloadConfiguration(0);
  (*(*(v18 - 8) + 56))(v17, 1, 1, v18);
  if (a3)
  {
    v19 = a2;
    v20 = 2;
    v21 = a2;
  }

  else
  {
    v21 = 0;
    v20 = -1;
  }

  v22 = swift_allocObject();
  *(v22 + 16) = v21;
  *(v22 + 24) = 0;
  *(v22 + 32) = v20;
  v23 = *(v3 + qword_1EDC9AF58);
  os_unfair_lock_lock(*(v23 + 16));
  v24 = a3 & 1;
  sub_1BF3A73D4(v3, a1, v22 + 16, v17, a2, a3 & 1);
  os_unfair_lock_unlock(*(v23 + 16));
  v25 = *(v3 + qword_1EDC9AFD0);
  v26 = swift_allocObject();
  *(v26 + 16) = a1;
  *(v26 + 24) = v22;
  *(v26 + 32) = v3;
  *(v26 + 40) = a2;
  *(v26 + 48) = v24;
  aBlock[4] = sub_1BF3B78A4;
  aBlock[5] = v26;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BF38E868;
  aBlock[3] = &block_descriptor_7;
  v27 = _Block_copy(aBlock);
  sub_1BF3A66F0(a2, v24);

  sub_1BF4E8014();
  v37 = MEMORY[0x1E69E7CC0];
  sub_1BF3983D4(&qword_1EDC9F980, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8EB8, &unk_1BF4F0890);
  sub_1BF38C8B4(&qword_1EDC9F190, &qword_1EBDD8EB8, &unk_1BF4F0890);
  v28 = v32;
  v29 = v36;
  sub_1BF4E91A4();
  MEMORY[0x1BFB591B0](0, v13, v28, v27);
  _Block_release(v27);
  (*(v35 + 8))(v28, v29);
  (*(v33 + 8))(v13, v34);

  return sub_1BF38C9B4(v17, &qword_1EBDD95C8, &qword_1BF4F1AB0);
}

uint64_t sub_1BF3A62D0()
{
  v1 = *(v0 + 32);
  if (v1 != 255)
  {
    sub_1BF45E734(*(v0 + 16), *(v0 + 24), v1);
  }

  return MEMORY[0x1EEE6BDD0](v0, 33, 7);
}

uint64_t sub_1BF3A6314()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = *(v0 + 32);

  sub_1BF3B7D9C(*(v0 + 40), *(v0 + 48));

  return MEMORY[0x1EEE6BDD0](v0, 49, 7);
}

uint64_t sub_1BF3A6368(void *a1, char a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_1BF4E7FF4();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1BF4E8064();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v25 = *(result + qword_1EDC9AFD8);
    v18 = result;
    v19 = swift_allocObject();
    *(v19 + 16) = v18;
    *(v19 + 24) = a4;
    *(v19 + 32) = a1;
    v24 = v13;
    v20 = a2 & 1;
    *(v19 + 40) = a2 & 1;
    aBlock[4] = sub_1BF3A66FC;
    aBlock[5] = v19;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1BF38E868;
    aBlock[3] = &block_descriptor_82;
    v21 = _Block_copy(aBlock);

    sub_1BF3A66F0(a1, v20);
    sub_1BF4E8014();
    v26 = MEMORY[0x1E69E7CC0];
    sub_1BF3983D4(&qword_1EDC9F980, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8EB8, &unk_1BF4F0890);
    v23 = v12;
    sub_1BF38C8B4(&qword_1EDC9F190, &qword_1EBDD8EB8, &unk_1BF4F0890);
    sub_1BF4E91A4();
    MEMORY[0x1BFB591B0](0, v16, v11, v21);
    _Block_release(v21);
    (*(v8 + 8))(v11, v7);
    (*(v24 + 8))(v16, v23);
  }

  return result;
}

uint64_t sub_1BF3A66A4()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  sub_1BF3B7D9C(*(v0 + 32), *(v0 + 40));

  return MEMORY[0x1EEE6BDD0](v0, 41, 7);
}

id sub_1BF3A66F0(id a1, char a2)
{
  if (a2)
  {
    return a1;
  }

  else
  {
  }
}

uint64_t sub_1BF3A66FC()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = *(v0 + 16);
  return sub_1BF3A5E78(v1, v2, v3);
}

uint64_t sub_1BF3A672C(uint64_t a1, uint64_t a2)
{
  v5 = sub_1BF4E7334();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD9AE0, &qword_1BF4F5DF0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v26 - v12;
  if (*(a1 + OBJC_IVAR____TtC9ChronoKit11WidgetEntry_entrySupportsRendering) == 1)
  {
    v33 = v2;
    v14 = OBJC_IVAR____TtC9ChronoKit11WidgetEntry__lock_content;
    swift_beginAccess();
    sub_1BF38C94C(a1 + v14, &v30, &qword_1EBDD9AF8, &qword_1BF4F5E00);
    v27 = *(&v31 + 1);
    sub_1BF38C9B4(&v30, &qword_1EBDD9AF8, &qword_1BF4F5E00);
    os_unfair_lock_assert_owner(*(*(a1 + OBJC_IVAR____TtC9ChronoKit11WidgetEntry__lock) + 16));
    v15 = OBJC_IVAR____TtC9ChronoKit11WidgetEntry__lock_shouldSilencePublisher;
    if (*(a1 + OBJC_IVAR____TtC9ChronoKit11WidgetEntry__lock_shouldSilencePublisher) == 1)
    {
      sub_1BF38C94C(a2, &v30, &qword_1EBDD9AF8, &qword_1BF4F5E00);
      sub_1BF3A5C80(&v30);
      v16 = sub_1BF4E8594();
      (*(*(v16 - 8) + 56))(v13, 1, 1, v16);
      v17 = OBJC_IVAR____TtC9ChronoKit11WidgetEntry__lock_cachedViewableEntry;
      swift_beginAccess();
      sub_1BF3A3A54(v13, a1 + v17, &unk_1EBDD9AE0, &qword_1BF4F5DF0);
      swift_endAccess();
      v32 = 0;
      v30 = 0u;
      v31 = 0u;
      v18 = OBJC_IVAR____TtC9ChronoKit11WidgetEntry__lock_currentEntry;
      swift_beginAccess();
      sub_1BF38C94C(a1 + v18, v28, &qword_1EBDD9AF0, &qword_1BF4F5DF8);
      swift_beginAccess();
      sub_1BF3A5C18(&v30, a1 + v18, &qword_1EBDD9AF0, &qword_1BF4F5DF8);
      swift_endAccess();
      sub_1BF3ADC00(v28);
      sub_1BF38C9B4(v28, &qword_1EBDD9AF0, &qword_1BF4F5DF8);
      sub_1BF38C9B4(&v30, &qword_1EBDD9AF0, &qword_1BF4F5DF8);
    }

    else
    {
      *(a1 + OBJC_IVAR____TtC9ChronoKit11WidgetEntry__lock_shouldSilencePublisher) = 1;
      sub_1BF38C94C(a2, &v30, &qword_1EBDD9AF8, &qword_1BF4F5E00);
      sub_1BF3A5C80(&v30);
      v19 = sub_1BF4E8594();
      (*(*(v19 - 8) + 56))(v13, 1, 1, v19);
      v20 = OBJC_IVAR____TtC9ChronoKit11WidgetEntry__lock_cachedViewableEntry;
      swift_beginAccess();
      sub_1BF3A3A54(v13, a1 + v20, &unk_1EBDD9AE0, &qword_1BF4F5DF0);
      swift_endAccess();
      v32 = 0;
      v30 = 0u;
      v31 = 0u;
      v21 = OBJC_IVAR____TtC9ChronoKit11WidgetEntry__lock_currentEntry;
      swift_beginAccess();
      sub_1BF38C94C(a1 + v21, v28, &qword_1EBDD9AF0, &qword_1BF4F5DF8);
      swift_beginAccess();
      sub_1BF3A5C18(&v30, a1 + v21, &qword_1EBDD9AF0, &qword_1BF4F5DF8);
      swift_endAccess();
      sub_1BF3ADC00(v28);
      sub_1BF38C9B4(v28, &qword_1EBDD9AF0, &qword_1BF4F5DF8);
      sub_1BF38C9B4(&v30, &qword_1EBDD9AF0, &qword_1BF4F5DF8);
      *(a1 + v15) = 0;
    }

    v22 = *(a2 + 24);
    sub_1BF4E7324();
    v23 = sub_1BF3AE26C(v9, &v30);
    (*(v6 + 8))(v9, v5, v23);
    result = sub_1BF38C9B4(&v30, &qword_1EBDD9AF0, &qword_1BF4F5DF8);
    if (v27)
    {
      if (!v22)
      {
        v25 = *(a1 + OBJC_IVAR____TtC9ChronoKit11WidgetEntry__objectWillChangePublisher);
        v32 = 0;
        v30 = 0u;
        v31 = 0u;
        sub_1BF4E7C14();
        return sub_1BF38C9B4(&v30, &qword_1EBDD9AF0, &qword_1BF4F5DF8);
      }
    }
  }

  else
  {
    sub_1BF38C94C(a2, v28, &qword_1EBDD9AF8, &qword_1BF4F5E00);
    if (v29)
    {
      __swift_project_boxed_opaque_existential_1(v28, v29);
      sub_1BF4E85E4();
      __swift_destroy_boxed_opaque_existential_1Tm(v28);
    }

    else
    {
      sub_1BF38C9B4(v28, &qword_1EBDD9AF8, &qword_1BF4F5E00);
      v30 = 0u;
      v31 = 0u;
      v32 = 0;
    }

    return sub_1BF3A5C80(&v30);
  }

  return result;
}

uint64_t sub_1BF3A6CA4(uint64_t a1, void *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8FB0, &qword_1BF4EF798);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v34 - v5;
  v7 = sub_1BF4E8314();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a2[3];
  v13 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v12);
  v14 = sub_1BF4E82E4();
  ExtensionManaging.extension(for:)(v14, v12, v13);

  v15 = v37;
  if (!v37)
  {
    sub_1BF38C9B4(&v35, &unk_1EBDD91B0, &unk_1BF4F0720);
    (*(v8 + 56))(v6, 1, 1, v7);
    goto LABEL_10;
  }

  v16 = v38;
  __swift_project_boxed_opaque_existential_1(&v35, v37);
  Extension.bundleStub.getter(v15, v16);
  (*(v8 + 56))(v6, 0, 1, v7);
  __swift_destroy_boxed_opaque_existential_1Tm(&v35);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
LABEL_10:
    sub_1BF38C9B4(v6, &qword_1EBDD8FB0, &qword_1BF4EF798);
    v35 = 0;
    v36 = 0xE000000000000000;
    sub_1BF4E92E4();

    v35 = 0xD000000000000012;
    v36 = 0x80000001BF4FAC30;
    v26 = sub_1BF4E82E4();
    v27 = [v26 description];
    v28 = sub_1BF4E8914();
    v30 = v29;

    MEMORY[0x1BFB58C90](v28, v30);

    MEMORY[0x1BFB58C90](0x756F6620746F6E20, 0xEA0000000000646ELL);
    v31 = v35;
    v32 = v36;
    sub_1BF4225D4();
    result = swift_allocError();
    *v33 = v31;
    v33[1] = v32;
    return result;
  }

  (*(v8 + 32))(v11, v6, v7);
  v17 = sub_1BF4E8304();
  v19 = v18;
  if (v17 == sub_1BF4E8304() && v19 == v20)
  {
  }

  else
  {
    v22 = sub_1BF4E9734();

    if ((v22 & 1) == 0)
    {
      sub_1BF4225D4();
      v23 = swift_allocError();
      *v24 = 0xD000000000000046;
      v24[1] = 0x80000001BF4FAC50;
      (*(v8 + 8))(v11, v7);
      return v23;
    }
  }

  (*(v8 + 8))(v11, v7);
  return 0;
}

uint64_t Extension.bundleStub.getter(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8AD8, &unk_1BF4ED6C0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v16 - v6;
  v8 = type metadata accessor for WidgetExtensionInfo();
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v8 - 8);
  v12 = (&v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(a2 + 32))(a1, a2, v10);
  v13 = *v12;
  sub_1BF38DB44(v12);
  (*(a2 + 56))(a1, a2);
  (*(a2 + 88))(a1, a2);
  v14 = sub_1BF4E7194();
  (*(*(v14 - 8) + 56))(v7, 0, 1, v14);
  return sub_1BF4E82D4();
}

uint64_t sub_1BF3A7244@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1 + OBJC_IVAR____TtC9ChronoKit15WidgetExtension_info;
  v4 = *(type metadata accessor for WidgetExtensionInfo() + 40);
  v5 = sub_1BF4E7194();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_1BF3A72D0(uint64_t a1, char a2)
{
  v3 = *(v2 + 80);
  v4 = *(v2 + 88);
  return v3(a1, a2 & 1);
}

uint64_t sub_1BF3A731C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for ReloadConfiguration.ReloadType(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }

  return result;
}

void sub_1BF3A73D4(void *a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v199 = a6;
  v200 = a5;
  v202 = a4;
  v209 = a3;
  v8 = *a1;
  v9 = *a1;
  v203 = type metadata accessor for ReloadConfiguration(0);
  v201 = *(v203 - 8);
  v10 = *(v201 + 64);
  MEMORY[0x1EEE9AC00](v203);
  v193 = &v189 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v190 = &v189 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v189 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v192 = &v189 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v195 = &v189 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v197 = &v189 - v22;
  v23 = v8[10];
  v204 = *(v23 - 8);
  v24 = *(v204 + 64);
  MEMORY[0x1EEE9AC00](v25);
  v205 = &v189 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD95C8, &qword_1BF4F1AB0);
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x1EEE9AC00](v27 - 8);
  v194 = &v189 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v196 = &v189 - v31;
  MEMORY[0x1EEE9AC00](v32);
  v198 = &v189 - v33;
  v34 = qword_1EDC9AF50;

  v211 = a1;
  v210 = v34;
  v35 = sub_1BF4E7B34();
  v36 = sub_1BF4E8E84();

  v37 = os_log_type_enabled(v35, v36);
  v191 = v16;
  if (v37)
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v213 = v39;
    *v38 = 136446210;
    v40 = sub_1BF39B444();
    v42 = v23;
    v43 = sub_1BF38D65C(v40, v41, &v213);

    *(v38 + 4) = v43;
    v23 = v42;
    _os_log_impl(&dword_1BF389000, v35, v36, "%{public}s Completed", v38, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v39);
    MEMORY[0x1BFB5A5D0](v39, -1, -1);
    MEMORY[0x1BFB5A5D0](v38, -1, -1);
  }

  v44 = *(*a2 + 144);
  v45 = qword_1EDC9AF48;
  v46 = v211;
  swift_beginAccess();
  v47 = *(v46 + v45);
  v48 = v9[14];

  sub_1BF4E8854();

  if (v213 == 3)
  {

    v49 = sub_1BF4E7B34();
    v50 = sub_1BF4E8E84();

    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v213 = v52;
      *v51 = 136446210;
      v53 = sub_1BF39B444();
      v55 = sub_1BF38D65C(v53, v54, &v213);

      *(v51 + 4) = v55;
      _os_log_impl(&dword_1BF389000, v49, v50, "%{public}s Abandoning completed reload for blocked entry", v51, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v52);
      MEMORY[0x1BFB5A5D0](v52, -1, -1);
      MEMORY[0x1BFB5A5D0](v51, -1, -1);
    }

    v56 = v209;
    v57 = *v209;
    v58 = *(v209 + 8);
    *v209 = 0;
    *(v56 + 8) = 0;
    goto LABEL_35;
  }

  v59 = qword_1EDCA6870;
  swift_beginAccess();
  v60 = *(v46 + v59);
  v61 = v9[11];
  v62 = v9[12];
  v206 = v9[16];
  sub_1BF4E8834();

  v207 = a2;
  v208 = v44;
  sub_1BF4E8854();

  if (!v213)
  {
    v202 = v9;
    v200 = v61;
    v110 = v206;
    v203 = v48;
    v201 = v23;
    v111 = v207;

    v112 = sub_1BF4E7B34();
    v113 = sub_1BF4E8E64();

    v114 = v111;
    if (os_log_type_enabled(v112, v113))
    {
      v115 = swift_slowAlloc();
      v116 = swift_slowAlloc();
      v213 = v116;
      *v115 = 136446210;
      v117 = sub_1BF39B444();
      v119 = sub_1BF38D65C(v117, v118, &v213);

      *(v115 + 4) = v119;
      _os_log_impl(&dword_1BF389000, v112, v113, "%{public}s Encountered missing entry", v115, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v116);
      MEMORY[0x1BFB5A5D0](v116, -1, -1);
      v120 = v115;
      v46 = v211;
      MEMORY[0x1BFB5A5D0](v120, -1, -1);
    }

    v121 = v200;
    v122 = v202;
    v123 = qword_1EDC9AF88;
    swift_beginAccess();
    v124 = *(v46 + v123);
    v125 = v122[13];
    v126 = v122[15];
    v127 = v122[17];

    v128 = v201;
    v213 = v201;
    v214 = v121;
    v215 = v62;
    v216 = v125;
    v217 = v203;
    v218 = v126;
    v219 = v110;
    v220 = v127;
    type metadata accessor for ReloadTaskPair();
    v129 = v208;
    sub_1BF4E8854();

    if (v213)
    {
      sub_1BF4B4014();
    }

    (*(v204 + 16))(v205, &v114[v129], v128);
    v221 = 0;
    swift_beginAccess();
    sub_1BF4E8834();
    sub_1BF4E8864();
    swift_endAccess();
    v56 = v209;
    v57 = *v209;
    v58 = *(v209 + 8);
    v130 = xmmword_1BF4F1AA0;
LABEL_34:
    *v56 = v130;
LABEL_35:
    v108 = *(v56 + 16);
    v109 = 3;
LABEL_36:
    *(v56 + 16) = v109;
LABEL_37:
    sub_1BF45E7A8(v57, v58, v108);
    return;
  }

  v63 = qword_1EDC9AF88;
  swift_beginAccess();
  v64 = *(v46 + v63);
  v65 = v9[13];
  v66 = v9[15];
  v67 = v9[17];

  v213 = v23;
  v214 = v61;
  v215 = v62;
  v216 = v65;
  v217 = v48;
  v218 = v66;
  v219 = v206;
  v220 = v67;
  type metadata accessor for ReloadTaskPair();
  v68 = v207;
  v69 = v208;
  sub_1BF4E8854();

  if (!v222 || (v70 = v23, v71 = sub_1BF39B43C(), , , !v71) || (v72 = *(v71 + *(*v71 + 160)), , v72 != *&v68[*(*v68 + 160)]))
  {
    v95 = sub_1BF3C4E94();
    if ((v96 & 1) == 0)
    {
      v131 = v95;

      v132 = sub_1BF4E7B34();
      v133 = sub_1BF4E8E84();

      if (os_log_type_enabled(v132, v133))
      {
        v134 = swift_slowAlloc();
        v135 = swift_slowAlloc();
        v213 = v135;
        *v134 = 136446466;
        v136 = sub_1BF39B444();
        v138 = sub_1BF38D65C(v136, v137, &v213);

        *(v134 + 4) = v138;
        *(v134 + 12) = 2050;
        *(v134 + 14) = v131;
        _os_log_impl(&dword_1BF389000, v132, v133, "%{public}s Ignored as it was replaced by task [%{public}llu]", v134, 0x16u);
        __swift_destroy_boxed_opaque_existential_1Tm(v135);
        MEMORY[0x1BFB5A5D0](v135, -1, -1);
        MEMORY[0x1BFB5A5D0](v134, -1, -1);
      }

      v139 = v209;
      v57 = *v209;
      v58 = *(v209 + 8);
      *v209 = v131;
      *(v139 + 8) = 0;
      v108 = *(v139 + 16);
      *(v139 + 16) = 0;
      goto LABEL_37;
    }

    v97 = sub_1BF39BBFC();
    if (v98)
    {
      v99 = v97;
      v100 = v98;

      v101 = sub_1BF4E7B34();
      v102 = sub_1BF4E8E84();

      if (os_log_type_enabled(v101, v102))
      {
        v103 = swift_slowAlloc();
        v104 = swift_slowAlloc();
        v213 = v104;
        *v103 = 136446466;
        v105 = sub_1BF39B444();
        v107 = sub_1BF38D65C(v105, v106, &v213);

        *(v103 + 4) = v107;
        *(v103 + 12) = 2082;
        *(v103 + 14) = sub_1BF38D65C(v99, v100, &v213);
        _os_log_impl(&dword_1BF389000, v101, v102, "%{public}s Ignored as it was cancelled for reason: [%{public}s]", v103, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1BFB5A5D0](v104, -1, -1);
        MEMORY[0x1BFB5A5D0](v103, -1, -1);
      }

      v56 = v209;
      v57 = *v209;
      v58 = *(v209 + 8);
      *v209 = v99;
      *(v56 + 8) = v100;
      v108 = *(v56 + 16);
      v109 = 1;
      goto LABEL_36;
    }

    v140 = sub_1BF4E7B34();
    v141 = sub_1BF4E8E64();

    if (os_log_type_enabled(v140, v141))
    {
      v142 = swift_slowAlloc();
      v143 = swift_slowAlloc();
      v213 = v143;
      *v142 = 136446210;
      v144 = sub_1BF39B444();
      v146 = sub_1BF38D65C(v144, v145, &v213);

      *(v142 + 4) = v146;
      _os_log_impl(&dword_1BF389000, v140, v141, "%{public}s Ignored but it had no replacing identifier or cancellation reason", v142, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v143);
      MEMORY[0x1BFB5A5D0](v143, -1, -1);
      MEMORY[0x1BFB5A5D0](v142, -1, -1);
    }

    v56 = v209;
    v57 = *v209;
    v58 = *(v209 + 8);
    v130 = xmmword_1BF4F1A90;
    goto LABEL_34;
  }

  v73 = v198;
  v74 = v211;
  sub_1BF3A9410(v68, v200, v199 & 1, v198);
  v75 = v73;
  v76 = v202;
  sub_1BF3AB378(v75, v202);
  v77 = qword_1EDC9AF88;
  swift_beginAccess();
  v78 = *(v74 + v77);

  sub_1BF4E8854();

  if (v213)
  {
    sub_1BF3A8AF8(0);
  }

  v79 = qword_1EDC9AF88;
  swift_beginAccess();
  v80 = *(v74 + v79);

  sub_1BF4E8854();

  if (v212[0] && (v81 = sub_1BF3AB3E8(), , , v81))
  {
    (*(v204 + 16))(v205, &v68[v69], v70);
    v223 = 0;
    swift_beginAccess();
    sub_1BF4E8834();
    sub_1BF4E8864();
    swift_endAccess();
    v82 = v194;
    sub_1BF3AB308(v76, v194);
    if ((*(v201 + 48))(v82, 1, v203) == 1)
    {
      sub_1BF38C9B4(v82, &qword_1EBDD95C8, &qword_1BF4F1AB0);
      swift_retain_n();

      v83 = sub_1BF4E7B34();
      v84 = sub_1BF4E8E84();

      if (os_log_type_enabled(v83, v84))
      {
        v85 = swift_slowAlloc();
        v210 = swift_slowAlloc();
        v212[0] = v210;
        *v85 = 136446466;
        v86 = sub_1BF39B444();
        v88 = sub_1BF38D65C(v86, v87, v212);

        *(v85 + 4) = v88;
        *(v85 + 12) = 2082;
        v89 = v190;
        sub_1BF39B31C(v81 + *(*v81 + 168), v190, type metadata accessor for ReloadConfiguration);

        v90 = ReloadConfiguration.description.getter();
        v92 = v91;

        v74 = v211;
        sub_1BF45EABC(v89, type metadata accessor for ReloadConfiguration);
        v93 = sub_1BF38D65C(v90, v92, v212);

        *(v85 + 14) = v93;
        _os_log_impl(&dword_1BF389000, v83, v84, "%{public}s Performing queued reload with configuration [%{public}s]", v85, 0x16u);
        v94 = v210;
        swift_arrayDestroy();
        MEMORY[0x1BFB5A5D0](v94, -1, -1);
        MEMORY[0x1BFB5A5D0](v85, -1, -1);
      }

      else
      {
      }

      sub_1BF3B3A74(v81 + *(*v81 + 144), v81 + *(*v81 + 168));
    }

    else
    {
      v172 = v195;
      sub_1BF3B4C44(v82, v195, type metadata accessor for ReloadConfiguration);
      v173 = v81 + *(*v81 + 168);
      v174 = v192;
      sub_1BF3B4CAC(v172, v192);
      v175 = v191;
      sub_1BF39B31C(v174, v191, type metadata accessor for ReloadConfiguration);

      v176 = sub_1BF4E7B34();
      v177 = sub_1BF4E8E84();

      if (os_log_type_enabled(v176, v177))
      {
        v178 = swift_slowAlloc();
        v179 = swift_slowAlloc();
        v212[0] = v179;
        *v178 = 136446466;
        v180 = sub_1BF39B444();
        v182 = sub_1BF38D65C(v180, v181, v212);

        *(v178 + 4) = v182;
        *(v178 + 12) = 2082;
        v183 = ReloadConfiguration.description.getter();
        v185 = v184;
        sub_1BF45EABC(v175, type metadata accessor for ReloadConfiguration);
        v186 = sub_1BF38D65C(v183, v185, v212);

        *(v178 + 14) = v186;
        _os_log_impl(&dword_1BF389000, v176, v177, "%{public}s Merging queued reload with configuration [%{public}s]", v178, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1BFB5A5D0](v179, -1, -1);
        v187 = v178;
        v74 = v211;
        MEMORY[0x1BFB5A5D0](v187, -1, -1);
      }

      else
      {

        sub_1BF45EABC(v175, type metadata accessor for ReloadConfiguration);
      }

      sub_1BF3B3A74(v81 + *(*v81 + 144), v174);
      sub_1BF45EABC(v174, type metadata accessor for ReloadConfiguration);
      sub_1BF45EABC(v195, type metadata accessor for ReloadConfiguration);
    }

    sub_1BF3B61AC(*(v74 + qword_1EDC9AFA0));
  }

  else
  {
    (*(v204 + 16))(v205, &v68[v69], v70);
    v223 = 0;
    swift_beginAccess();
    sub_1BF4E8834();
    sub_1BF4E8864();
    swift_endAccess();
    v147 = v196;
    sub_1BF3AB308(v76, v196);
    if ((*(v201 + 48))(v147, 1, v203) == 1)
    {
      sub_1BF38C9B4(v147, &qword_1EBDD95C8, &qword_1BF4F1AB0);

      v148 = sub_1BF4E7B34();
      v149 = sub_1BF4E8E84();

      if (os_log_type_enabled(v148, v149))
      {
        v150 = swift_slowAlloc();
        v151 = swift_slowAlloc();
        v212[0] = v151;
        *v150 = 136446210;
        v152 = sub_1BF39B444();
        v154 = sub_1BF38D65C(v152, v153, v212);

        *(v150 + 4) = v154;
        _os_log_impl(&dword_1BF389000, v148, v149, "%{public}s No remaining tasks", v150, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v151);
        MEMORY[0x1BFB5A5D0](v151, -1, -1);
        MEMORY[0x1BFB5A5D0](v150, -1, -1);
      }
    }

    else
    {
      v155 = v147;
      v156 = v197;
      sub_1BF3B4C44(v155, v197, type metadata accessor for ReloadConfiguration);
      v157 = v193;
      sub_1BF39B31C(v156, v193, type metadata accessor for ReloadConfiguration);

      v158 = sub_1BF4E7B34();
      v159 = sub_1BF4E8E84();

      if (os_log_type_enabled(v158, v159))
      {
        v160 = swift_slowAlloc();
        v161 = v68;
        v162 = v69;
        v163 = swift_slowAlloc();
        v212[0] = v163;
        *v160 = 136446466;
        v164 = sub_1BF39B444();
        v166 = sub_1BF38D65C(v164, v165, v212);

        *(v160 + 4) = v166;
        *(v160 + 12) = 2082;
        v167 = ReloadConfiguration.description.getter();
        v169 = v168;
        sub_1BF45EABC(v157, type metadata accessor for ReloadConfiguration);
        v170 = sub_1BF38D65C(v167, v169, v212);

        *(v160 + 14) = v170;
        _os_log_impl(&dword_1BF389000, v158, v159, "%{public}s Follow-on reload from completion needed: [%{public}s]", v160, 0x16u);
        swift_arrayDestroy();
        v171 = v163;
        v69 = v162;
        v68 = v161;
        MEMORY[0x1BFB5A5D0](v171, -1, -1);
        MEMORY[0x1BFB5A5D0](v160, -1, -1);
      }

      else
      {

        sub_1BF45EABC(v157, type metadata accessor for ReloadConfiguration);
      }

      v188 = v197;
      sub_1BF3B3A74(&v68[v69], v197);
      sub_1BF45EABC(v188, type metadata accessor for ReloadConfiguration);
    }
  }
}

uint64_t sub_1BF3A8AF8(uint64_t a1)
{
  v2 = *(v1 + 16);
  *(v1 + 16) = a1;
}

uint64_t ControlEntryKey.description.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8E78, &unk_1BF4EE790);
  v2 = *(*(v1 - 8) + 64);
  v3 = MEMORY[0x1EEE9AC00](v1 - 8);
  v5 = &v20 - v4;
  v6 = [*v0 description];
  v7 = sub_1BF4E8914();
  v9 = v8;

  v20 = 544108320;
  v21 = 0xE400000000000000;
  v10 = type metadata accessor for ControlEntryKey();
  sub_1BF3988F8(v0 + *(v10 + 20), v5);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD85B0, &unk_1BF4EA9E0);
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v5, 1, v11) == 1)
  {
    sub_1BF38C9B4(v5, &qword_1EBDD8E78, &unk_1BF4EE790);
    v13 = 0xEA00000000007473;
    v14 = 0x6F68206C61636F6CLL;
  }

  else
  {
    v15 = sub_1BF4E7754();
    v13 = v16;
    (*(v12 + 8))(v5, v11);
    v14 = v15;
  }

  MEMORY[0x1BFB58C90](v14, v13);

  v17 = v20;
  v18 = v21;
  v20 = v7;
  v21 = v9;

  MEMORY[0x1BFB58C90](v17, v18);

  return v20;
}

uint64_t sub_1BF3A8D4C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8AF8, &qword_1BF4EC370);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v28 - v8;
  swift_beginAccess();
  sub_1BF38E49C(v2 + 16, v30);
  v10 = v31;
  v11 = v32;
  __swift_project_boxed_opaque_existential_1(v30, v31);
  ExtensionManaging.extension(for:)(a1, v10, v11);
  if (v29)
  {
    sub_1BF38E610(&v28, v33);
    __swift_destroy_boxed_opaque_existential_1Tm(v30);
    v12 = v34;
    v13 = v35;
    __swift_project_boxed_opaque_existential_1(v33, v34);
    (*(v13 + 112))(v12, v13);
    v14 = sub_1BF4E8424();
    v15 = *(v14 - 8);
    if ((*(v15 + 48))(v9, 1, v14) == 1)
    {
      sub_1BF38C9B4(v9, &qword_1EBDD8AF8, &qword_1BF4EC370);
      v16 = OBJC_IVAR____TtC9ChronoKit36ExtensionDataProtectionLevelProvider_defaultLevel;
      swift_beginAccess();
      (*(v15 + 16))(a2, v3 + v16, v14);
    }

    else
    {
      (*(v15 + 32))(a2, v9, v14);
    }

    return __swift_destroy_boxed_opaque_existential_1Tm(v33);
  }

  else
  {
    sub_1BF38C9B4(&v28, &unk_1EBDD91B0, &unk_1BF4F0720);
    __swift_destroy_boxed_opaque_existential_1Tm(v30);
    if ([a1 isRemote])
    {
      v17 = OBJC_IVAR____TtC9ChronoKit36ExtensionDataProtectionLevelProvider_defaultLevel;
      swift_beginAccess();
      v18 = sub_1BF4E8424();
      return (*(*(v18 - 8) + 16))(a2, v3 + v17, v18);
    }

    else
    {
      if (qword_1EDC9D500 != -1)
      {
        swift_once();
      }

      v20 = sub_1BF4E7B54();
      __swift_project_value_buffer(v20, qword_1EDCA69A0);
      v21 = a1;
      v22 = sub_1BF4E7B34();
      v23 = sub_1BF4E8E64();

      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        *v24 = 138543362;
        *(v24 + 4) = v21;
        *v25 = v21;
        v26 = v21;
        _os_log_impl(&dword_1BF389000, v22, v23, "Extension not found for %{public}@", v24, 0xCu);
        sub_1BF38C9B4(v25, &unk_1EBDD9260, &qword_1BF4EC380);
        MEMORY[0x1BFB5A5D0](v25, -1, -1);
        MEMORY[0x1BFB5A5D0](v24, -1, -1);
      }

      sub_1BF4B86EC();
      swift_allocError();
      *v27 = 6;
      return swift_willThrow();
    }
  }
}

uint64_t sub_1BF3A914C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *(*v3 + 160);
  v9 = *(v8 - 8);
  v10 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v12 = &v14 - v11;
  (*(v9 + 16))(&v14 - v11, v3 + *(v7 + 176), v8);
  (*(*(v7 + 168) + 56))(a1, a2, a3, v8);
  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_1BF3A92BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ReloadConfiguration.ReloadType(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 2)
    {
      return v10 - 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t ReloadTaskPair.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t sub_1BF3A93B4(uint64_t a1)
{
  v2 = type metadata accessor for ReloadConfiguration(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1BF3A9410(char *a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v242 = a1;
  v9 = *v4;
  v251 = sub_1BF4E6D54();
  v245 = *(v251 - 1);
  v10 = *(v245 + 64);
  MEMORY[0x1EEE9AC00](v251);
  v244 = &v192 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD95C8, &qword_1BF4F1AB0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v252 = (&v192 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v15);
  v207 = &v192 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v212 = &v192 - v18;
  v203 = sub_1BF4E8424();
  v202 = *(v203 - 8);
  v19 = *(v202 + 64);
  MEMORY[0x1EEE9AC00](v203);
  v201 = &v192 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v200 = &v192 - v22;
  v23 = *(v9 + 11);
  v24 = *(v9 + 12);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v199 = sub_1BF4E90F4();
  v198 = *(v199 - 8);
  v26 = *(v198 + 64);
  MEMORY[0x1EEE9AC00](v199);
  v204 = &v192 - v27;
  v206 = *(TupleTypeMetadata2 - 8);
  v28 = *(v206 + 64);
  MEMORY[0x1EEE9AC00](v29);
  v205 = &v192 - v30;
  v31 = *(v9 + 10);
  v214 = *(v31 - 8);
  v32 = *(v214 + 64);
  MEMORY[0x1EEE9AC00](v33);
  v209 = &v192 - v34;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9B00, &qword_1BF4F1E50);
  v36 = *(*(v35 - 8) + 64);
  MEMORY[0x1EEE9AC00](v35 - 8);
  v197 = &v192 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v38);
  v233 = &v192 - v39;
  v243 = *(v9 + 17);
  v249 = v24;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v247 = sub_1BF4E90F4();
  v40 = *(v247 - 8);
  v41 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v247);
  v235 = &v192 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v43);
  v248 = &v192 - v44;
  v220 = *(v23 - 1);
  v45 = *(v220 + 64);
  MEMORY[0x1EEE9AC00](v46);
  v218 = &v192 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v48);
  v232 = &v192 - v49;
  MEMORY[0x1EEE9AC00](v50);
  v234 = &v192 - v51;
  MEMORY[0x1EEE9AC00](v52);
  v253 = &v192 - v53;
  v54 = sub_1BF4E90F4();
  v55 = *(*(v54 - 8) + 64);
  MEMORY[0x1EEE9AC00](v54 - 8);
  v237 = &v192 - v56;
  os_unfair_lock_assert_owner(*(*(v5 + qword_1EDC9AF58) + 16));
  v57 = type metadata accessor for ReloadConfiguration(0);
  v211 = *(v57 - 8);
  v58 = *(v211 + 56);
  v213 = a4;
  v217 = v57;
  v58(a4, 1, 1);
  v258 = 5;
  v219 = v5;
  v238 = a2;
  v210 = v31;
  if ((a3 & 1) == 0)
  {
    v252 = v40;
    v193 = TupleTypeMetadata2;
    v68 = *(*v242 + 144);
    v69 = qword_1EDCA6870;
    swift_beginAccess();
    v70 = *(v5 + v69);
    v71 = *(v9 + 16);
    v72 = sub_1BF4E8834();
    v73 = *(v9 + 14);

    v196 = v68;
    v195 = v72;
    v208 = v73;
    sub_1BF4E8854();
    v74 = v254;
    if (v254)
    {

      v257 = v74;
      v75 = v23;
      v228 = v71;
      v76 = nullsub_1(v74, v23, v249, v71);
      v77 = v243;
      if ((v76 & 0xC000000000000001) != 0)
      {
        v78 = sub_1BF4E9414();
        v231 = 0;
        v79 = 0;
        v80 = 0;
        v236 = v78 | 0x8000000000000000;
      }

      else
      {
        v96 = -1 << *(v76 + 32);
        v79 = ~v96;
        v97 = *(v76 + 64);
        v231 = v76 + 64;
        v98 = -v96;
        if (v98 < 64)
        {
          v99 = ~(-1 << v98);
        }

        else
        {
          v99 = -1;
        }

        v80 = v99 & v97;
        v236 = v76;
      }

      v60 = v242;
      v100 = v252;
      v101 = v253;
      v229 = (v220 + 56);
      v194 = v79;
      v230 = (v79 + 64) >> 6;
      v252 = (v220 + 16);
      v227 = (v220 + 32);
      v240 = AssociatedTypeWitness - 8;
      v226 = (v100 + 16);
      v225 = v249 - 8;
      v224 = v77 + 24;
      v223 = (v220 + 8);
      v222 = v77 + 48;
      v216 = " retries remaining";
      v215 = v77 + 72;
      v221 = (v100 + 8);

      v241 = 0;
      v102 = v248;
      v103 = v231;
      v246 = v75;
      while (1)
      {
        if ((v236 & 0x8000000000000000) != 0)
        {
          if (!sub_1BF4E9454())
          {
            goto LABEL_36;
          }

          v107 = v237;
          sub_1BF4E9704();
          swift_unknownObjectRelease();
          v102 = v248;
          v108 = v252;
        }

        else
        {
          v104 = v241;
          if (!v80)
          {
            while (1)
            {
              v105 = v104 + 1;
              if (__OFADD__(v104, 1))
              {
                break;
              }

              if (v105 >= v230)
              {
                goto LABEL_36;
              }

              v80 = *(v103 + 8 * v105);
              ++v104;
              if (v80)
              {
                v241 = v105;
                goto LABEL_25;
              }
            }

            __break(1u);
            goto LABEL_74;
          }

          v105 = v241;
LABEL_25:
          v106 = __clz(__rbit64(v80));
          v80 &= v80 - 1;
          v107 = v237;
          v108 = v252;
          (*(v220 + 16))(v237, *(v236 + 48) + *(v220 + 72) * (v106 | (v105 << 6)), v75);
        }

        (*v229)(v107, 0, 1, v75);
        (*v227)(v101, v107, v75);
        v245 = v80;
        v109 = v77;
        if (a2)
        {
          sub_1BF4E8854();
        }

        else
        {
          (*(*(AssociatedTypeWitness - 8) + 56))(v102, 1, 1);
        }

        v110 = v235;
        (*v226)(v235, v102, v247);
        v111 = v234;
        v251 = *v108;
        (v251)(v234, v101, v75);
        v112 = v249;
        v113 = sub_1BF4E87F4();
        v114 = sub_1BF4E8804();
        v115 = *(*(v112 - 8) + 48);
        if (v115(v116, 1, v112) == 1)
        {
          goto LABEL_75;
        }

        (*(v109 + 24))(v110, v112, v109);
        v114(&v254, 0);
        v117 = v246;
        v244 = *v223;
        (v244)(v111, v246);
        v118 = sub_1BF4E7334();
        v119 = v233;
        (*(*(v118 - 8) + 56))(v233, 1, 1, v118);
        v120 = v232;
        (v251)(v232, v253, v117);
        v239 = v113;
        v121 = sub_1BF4E8804();
        if (v115(v122, 1, v112) == 1)
        {
          goto LABEL_76;
        }

        (*(v109 + 48))(v119, v112, v109);
        v121(&v254, 0);
        v123 = v120;
        v75 = v246;
        v60 = v244;
        (v244)(v123, v246);
        v102 = v248;
        v124 = (*(*(AssociatedTypeWitness - 8) + 48))(v248, 1);
        v103 = v231;
        v80 = v245;
        if (v124 == 1)
        {
          v125 = v218;
          (v251)(v218, v253, v75);
          v126 = v75;
          v75 = sub_1BF4E8804();
          v127 = v249;
          if (v115(v128, 1, v249) == 1)
          {
            __break(1u);
LABEL_36:
            (*v229)(v237, 1, 1, v75);
            sub_1BF39A9CC();
            v129 = *(v214 + 16);
            v130 = v196;
            v131 = v210;
            v214 += 16;
            v253 = v129;
            (v129)(v209, &v60[v196], v210);
            v255 = v257;
            v132 = v219;
            swift_beginAccess();
            sub_1BF4E8834();

            sub_1BF4E8864();
            swift_endAccess();
            v133 = &v60[*(*v60 + 168)];
            v254 = *(v133 + *(v217 + 24));
            v255 = 0xA000000000000030;
            sub_1BF39C510(v254);
            v134 = static ReloadConfiguration.ReloadReason.== infix(_:_:)(&v254, &v255);
            sub_1BF39C9A4(v254);
            v135 = v249;
            if ((v134 & 1) == 0)
            {
              v252 = v133;
              v254 = v257;

              swift_getWitnessTable();
              v136 = v204;
              sub_1BF4E8DD4();
              v137 = v206;
              v138 = v193;
              if ((*(v206 + 48))(v136, 1, v193) == 1)
              {
                (*(v198 + 8))(v136, v199);
              }

              else
              {
                v156 = v205;
                (*(v137 + 32))(v205, v136, v138);

                v157 = &v156[*(v138 + 48)];
                v158 = v135;
                v159 = v200;
                (*(v243 + 88))(v158);
                v160 = v202;
                v161 = v201;
                v162 = v203;
                (*(v202 + 104))(v201, *MEMORY[0x1E6985988], v203);
                sub_1BF3983D4(&qword_1EDC96460, MEMORY[0x1E69859A8]);
                sub_1BF4E8B54();
                sub_1BF4E8B54();
                v163 = *(v160 + 8);
                v163(v161, v162);
                v163(v159, v162);
                if (v254 == v255)
                {
                  (v253)(v209, &v60[v130], v131);
                  v164 = v197;
                  _s9ChronoKit24WidgetDiagnosticTriggersV19errorStateTriggered11timelineKey13succinctTitle0K11Description04fullM011timeOfIssue15remoteDeviceIDsyAA08TimelineJ0V_S3S10Foundation4DateVSaySSGSgtFfA3__0();
                  v165 = sub_1BF4E7334();
                  (*(*(v165 - 8) + 56))(v164, 0, 1, v165);
                  swift_beginAccess();
                  sub_1BF4E8834();
                  sub_1BF4E8864();
                  swift_endAccess();
                }

                (*(v206 + 8))(v205, v193);
              }
            }

            v166 = sub_1BF4E7B34();
            v167 = sub_1BF4E8E84();

            if (os_log_type_enabled(v166, v167))
            {
              v168 = swift_slowAlloc();
              v169 = swift_slowAlloc();
              v254 = v169;
              *v168 = 136446210;
              v170 = sub_1BF39B444();
              v172 = sub_1BF38D65C(v170, v171, &v254);

              *(v168 + 4) = v172;
              _os_log_impl(&dword_1BF389000, v166, v167, "%{public}s Reload success", v168, 0xCu);
              __swift_destroy_boxed_opaque_existential_1Tm(v169);
              MEMORY[0x1BFB5A5D0](v169, -1, -1);
              v173 = v168;
              v132 = v219;
              MEMORY[0x1BFB5A5D0](v173, -1, -1);
            }

            v174 = v212;
            os_unfair_lock_assert_owner(*(*(v132 + qword_1EDC9AF58) + 16));
            v175 = *(v132 + qword_1EDC9AF70);
            sub_1BF3AB254();

            v176 = v213;
            sub_1BF38C9B4(v213, &qword_1EBDD95C8, &qword_1BF4F1AB0);
            sub_1BF3AB298(v174, v176);
            v177 = qword_1EDC9AF48;
            swift_beginAccess();
            v178 = *(v132 + v177);

            sub_1BF4E8854();

            if (v255 == 4)
            {
              v258 = 4;
            }

            else
            {
              LOBYTE(v255) = 1;
              sub_1BF399684(&v255, &v60[v130]);
              v179 = v207;
              sub_1BF3AB308(v176, v207);
              v180 = (*(v211 + 48))(v179, 1, v217);
              sub_1BF38C9B4(v179, &qword_1EBDD95C8, &qword_1BF4F1AB0);
              v258 = v180 == 1;
            }

            goto LABEL_56;
          }

          (*(v243 + 72))(0xD000000000000013, v216 | 0x8000000000000000, v127);
          v75(&v254, 0);
          (v60)(v125, v126);
          v75 = v126;
          v102 = v248;
        }

        v101 = v253;
        (v60)(v253, v75);
        (*v221)(v102, v247);
        v60 = v242;
        a2 = v238;
        v77 = v243;
      }
    }

    goto LABEL_78;
  }

  v253 = v9;
  v59 = qword_1EDC9AF50;
  v60 = v242;

  v61 = sub_1BF4E7B34();
  v62 = sub_1BF4E8E84();

  if (os_log_type_enabled(v61, v62))
  {
    v63 = swift_slowAlloc();
    v64 = swift_slowAlloc();
    v254 = v64;
    *v63 = 136446210;
    v65 = sub_1BF39B444();
    v67 = sub_1BF38D65C(v65, v66, &v254);

    *(v63 + 4) = v67;
    _os_log_impl(&dword_1BF389000, v61, v62, "%{public}s Reload failure", v63, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v64);
    MEMORY[0x1BFB5A5D0](v64, -1, -1);
    MEMORY[0x1BFB5A5D0](v63, -1, -1);
  }

  v81 = v213;
  v82 = v212;
  LOBYTE(v254) = 2;
  sub_1BF399684(&v254, &v60[*(*v60 + 144)]);
  v83 = sub_1BF4E6FE4();
  sub_1BF455A54(v82, &v254, v60, v83);

  sub_1BF38C9B4(v81, &qword_1EBDD95C8, &qword_1BF4F1AB0);
  v84 = v254;
  sub_1BF3AB298(v82, v81);
  v258 = v84;
  v85 = v81;
  v86 = v252;
  sub_1BF3AB308(v85, v252);
  v87 = (*(v211 + 48))(v86, 1, v217);
  sub_1BF38C9B4(v86, &qword_1EBDD95C8, &qword_1BF4F1AB0);
  if (v87 == 1)
  {
    v88 = sub_1BF4E6FE4();
    v89 = [v88 domain];
    v90 = sub_1BF4E8914();
    v92 = v91;

    if (v90 == sub_1BF4E6CE4() && v92 == v93)
    {

      v94 = v251;
      v95 = v245;
    }

    else
    {
      v139 = sub_1BF4E9734();

      v94 = v251;
      v95 = v245;
      if ((v139 & 1) == 0)
      {

        goto LABEL_56;
      }
    }

    v252 = v59;
    v140 = v88;
    v141 = [v88 code];
    v142 = v244;
    sub_1BF4E6CF4();
    v143 = sub_1BF4E6D44();
    v144 = *(v95 + 8);
    v144(v142, v94);
    if (v141 == v143 || (v145 = [v140 code], sub_1BF4E6D04(), v146 = sub_1BF4E6D44(), v144(v142, v94), v145 == v146))
    {

      v147 = sub_1BF4E7B34();
      v148 = sub_1BF4E8E84();
      if (os_log_type_enabled(v147, v148))
      {
        v149 = swift_slowAlloc();
        v150 = swift_slowAlloc();
        v254 = v150;
        *v149 = 136446210;
        v151 = *(v253 + 13);
        v152 = sub_1BF4E96A4();
        v154 = v153;

        v155 = sub_1BF38D65C(v152, v154, &v254);

        *(v149 + 4) = v155;
        _os_log_impl(&dword_1BF389000, v147, v148, "%{public}s Blocked because of keybag", v149, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v150);
        MEMORY[0x1BFB5A5D0](v150, -1, -1);
        MEMORY[0x1BFB5A5D0](v149, -1, -1);
      }

      else
      {
      }

      v258 = 3;
      goto LABEL_57;
    }
  }

LABEL_56:
  if (v258 == 5)
  {
LABEL_74:
    __break(1u);
LABEL_75:
    __break(1u);
LABEL_76:
    __break(1u);
LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
    goto LABEL_79;
  }

LABEL_57:

  v181 = sub_1BF4E7B34();
  v182 = sub_1BF4E8E84();

  if (!os_log_type_enabled(v181, v182))
  {

    goto LABEL_71;
  }

  v183 = swift_slowAlloc();
  v184 = swift_slowAlloc();
  v257 = v184;
  *v183 = 136446466;
  v185 = sub_1BF39B444();
  v187 = sub_1BF38D65C(v185, v186, &v257);

  *(v183 + 4) = v187;
  *(v183 + 12) = 2082;
  swift_beginAccess();
  if (v258 <= 2u)
  {
    if (!v258)
    {
      v188 = 0xE600000000000000;
      v189 = 0x64616F6C6572;
      goto LABEL_70;
    }

    if (v258 == 1)
    {
      v188 = 0xE500000000000000;
      v189 = 0x6E61656C63;
LABEL_70:
      v191 = sub_1BF38D65C(v189, v188, &v257);

      *(v183 + 14) = v191;
      _os_log_impl(&dword_1BF389000, v181, v182, "%{public}s New state: %{public}s", v183, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1BFB5A5D0](v184, -1, -1);
      MEMORY[0x1BFB5A5D0](v183, -1, -1);

LABEL_71:
      swift_beginAccess();
      if (v258 != 5)
      {
        v256 = v258;
        sub_1BF399684(&v256, &v60[*(*v60 + 144)]);
        return;
      }

      goto LABEL_77;
    }

    v188 = 0xE600000000000000;
    v190 = 1818845542;
LABEL_69:
    v189 = v190 & 0xFFFF0000FFFFFFFFLL | 0x646500000000;
    goto LABEL_70;
  }

  if (v258 == 3)
  {
    v188 = 0xE700000000000000;
    v189 = 0x64656B636F6C62;
    goto LABEL_70;
  }

  if (v258 == 4)
  {
    v188 = 0xE600000000000000;
    v190 = 1937072496;
    goto LABEL_69;
  }

LABEL_79:
  __break(1u);
}

uint64_t sub_1BF3AB0B4(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9B00, &qword_1BF4F1E50);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v10 - v5;
  v7 = *(v1 + OBJC_IVAR____TtC9ChronoKit11WidgetEntry__lock);
  os_unfair_lock_lock(*(v7 + 16));
  sub_1BF38C94C(a1, v6, &qword_1EBDD9B00, &qword_1BF4F1E50);
  v8 = OBJC_IVAR____TtC9ChronoKit11WidgetEntry__lock_contentLoadErrorDate;
  swift_beginAccess();
  sub_1BF3A3A54(v6, v1 + v8, &qword_1EBDD9B00, &qword_1BF4F1E50);
  swift_endAccess();
  os_unfair_lock_unlock(*(v7 + 16));
  return sub_1BF38C9B4(a1, &qword_1EBDD9B00, &qword_1BF4F1E50);
}

uint64_t sub_1BF3AB1E4()
{
  os_unfair_lock_assert_owner(*(*(v0 + qword_1EDC9AF58) + 16));
  v1 = *(v0 + qword_1EDC9AF70);
  return sub_1BF3AB254();
}

uint64_t sub_1BF3AB298(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD95C8, &qword_1BF4F1AB0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BF3AB308(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD95C8, &qword_1BF4F1AB0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BF3AB378(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD95C8, &qword_1BF4F1AB0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

BOOL _s9ChronoKit26PowerlogWidgetViewIdentityV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v4 = a1[3];
  v6 = a1[4];
  v16 = a1[6];
  v8 = *a2;
  v7 = a2[1];
  v10 = a2[2];
  v9 = a2[3];
  v11 = a2[4];
  v20 = *(a2 + 40);
  v21 = *(a1 + 40);
  v19 = a2[6];
  v17 = *(a1 + 56);
  v18 = *(a2 + 56);
  sub_1BF3901C0(0, &qword_1EDC9FDA8, 0x1E69E58C0);
  if ((sub_1BF4E90A4() & 1) == 0 || (v3 != v7 || v5 != v10) && (sub_1BF4E9734() & 1) == 0)
  {
    return 0;
  }

  if (!v6)
  {
    result = 0;
    if (v11)
    {
      return result;
    }

    goto LABEL_15;
  }

  if (!v11)
  {
    return 0;
  }

  if (v4 == v9 && v6 == v11)
  {
    if (v21 != v20)
    {
      return 0;
    }

LABEL_16:
    if (v17)
    {
      v14 = qword_1BF4EE160[v16];
      v15 = v19;
      if (!v18)
      {
        v15 = 3;
        return v14 == v15;
      }
    }

    else
    {
      v15 = v19;
      if ((v18 & 1) == 0)
      {
        v14 = v16;
        return v14 == v15;
      }

      v14 = 3;
    }

    if (v15 <= 3)
    {
      if (v15 >= 3)
      {
        v15 = 4;
      }
    }

    else if (v15 <= 5)
    {
      if (v15 == 4)
      {
        v15 = 5;
      }

      else
      {
        v15 = 6;
      }
    }

    else if (v15 == 6)
    {
      v15 = 7;
    }

    else if (v15 == 7)
    {
      v15 = 8;
    }

    else
    {
      v15 = 9;
    }

    return v14 == v15;
  }

  v13 = sub_1BF4E9734();
  result = 0;
  if (v13)
  {
LABEL_15:
    if (((v21 ^ v20) & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  return result;
}

void sub_1BF3AB5E0(char a1)
{
  v2 = *(*v1 + 120);
  v3 = *(v1 + v2);
  *(v1 + v2) = a1;
  sub_1BF3AB734(v3);
}

uint64_t sub_1BF3AB604(char a1)
{
  sub_1BF3AB664();
  sub_1BF3AB5E0(a1);
}

uint64_t sub_1BF3AB664()
{
  v1 = v0[9];
  v2 = *(*v0 + 80);
  v3 = *(*v0 + 96);
  type metadata accessor for PowerlogViewEntry();
  sub_1BF4E8F44();
  return v5;
}

void sub_1BF3AB734(char a1)
{
  v2 = *(v1 + *(*v1 + 120));
  if (v2 != (a1 & 1))
  {
    if (*(v1 + *(*v1 + 120)))
    {
      BSContinuousMachTimeNow();
      v3 = *(*v1 + 112);
      *(v1 + v3) = v4;
    }

    else
    {
      sub_1BF3ABB78();
      v3 = *(*v1 + 112);
      *(v1 + v3) = 0;
    }

    *(v1 + v3 + 8) = v2 ^ 1;
  }
}

uint64_t sub_1BF3AB7C0()
{
  sub_1BF4E9804();
  PowerlogWidgetViewIdentity.hash(into:)();
  return sub_1BF4E9844();
}

uint64_t sub_1BF3AB7FC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v19 = a3;
  v6 = *a1;
  v7 = *(*a1 + 80);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v11 = v18 - v10;
  swift_beginAccess();
  v12 = a1[7];
  v13 = *(v6 + 96);
  type metadata accessor for PowerlogViewEntry();
  v14 = *(v13 + 8);

  sub_1BF4E8854();

  v16 = v21;
  if (!v21)
  {
    v18[1] = v3;
    v17 = *(v8 + 16);
    v17(v11, a2, v7);
    v16 = sub_1BF3B1980(v11);
    v17(v11, a2, v7);
    v20 = v16;
    swift_beginAccess();
    sub_1BF4E8834();

    sub_1BF4E8864();
    result = swift_endAccess();
  }

  *v19 = v16;
  return result;
}

uint64_t sub_1BF3ABA0C(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_1BF3ABA54(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_1BF3ABAA4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 57))
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

__n128 __swift_memcpy57_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

double sub_1BF3ABB08(void (*a1)(__int128 *))
{
  v2 = (v1 + *(*v1 + 104));
  v3 = v2[4];
  v4 = *(v2 + 1);
  v7 = *v2;
  v8 = v4;
  v9 = v3;
  a1(&v7);
  result = v9;
  v6 = v8;
  *v2 = v7;
  *(v2 + 1) = v6;
  v2[4] = result;
  return result;
}

void sub_1BF3ABB78()
{
  v1 = BSContinuousMachTimeNow();
  v3 = v2;
  v4 = *v0;
  v5 = (v0 + *(*v0 + 112));
  if ((v5[1] & 1) == 0)
  {
    v6 = *v5;
    MEMORY[0x1EEE9AC00](v1);
    sub_1BF3ABB08(sub_1BF3AC408);
    v4 = *v0;
  }

  v7 = *(v0 + *(v4 + 120));
  v8 = v3;
  if (!v7)
  {
    v8 = 0;
  }

  *v5 = v8;
  *(v5 + 8) = v7 ^ 1;
}

uint64_t sub_1BF3ABC50(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9B00, &qword_1BF4F1E50);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v20 - v6;
  BSDispatchQueueAssertMain();
  v8 = OBJC_IVAR____TtC9ChronoKit19DuetWidgetViewEntry_endViewDate;
  swift_beginAccess();
  sub_1BF3ABF74(a1 + v8, v7);
  v9 = sub_1BF4E7334();
  LODWORD(v8) = (*(*(v9 - 8) + 48))(v7, 1, v9);
  result = sub_1BF38C9B4(v7, &qword_1EBDD9B00, &qword_1BF4F1E50);
  if (v8 == 1)
  {
    sub_1BF3ABFF8();
    swift_beginAccess();

    MEMORY[0x1BFB58DD0](v11);
    if (*((*(v1 + 80) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + 80) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v18 = *((*(v1 + 80) & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_1BF4E8BE4();
    }

    sub_1BF4E8C24();
    swift_endAccess();
    if (qword_1EDC9D480 != -1)
    {
      swift_once();
    }

    v12 = sub_1BF4E7B54();
    __swift_project_value_buffer(v12, qword_1EDCA68C8);

    v13 = sub_1BF4E7B34();
    v14 = sub_1BF4E8E84();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v20[0] = v16;
      *v15 = 136446210;
      *(v15 + 4) = sub_1BF38D65C(*(a1 + 40), *(a1 + 48), v20);
      _os_log_impl(&dword_1BF389000, v13, v14, "Recorded duet widget view for: %{public}s", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v16);
      MEMORY[0x1BFB5A5D0](v16, -1, -1);
      MEMORY[0x1BFB5A5D0](v15, -1, -1);
    }

    if (!*(v2 + 88))
    {
      sub_1BF3C36CC();
    }

    v17 = *(v2 + 80);
    if (!(v17 >> 62))
    {
      result = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result < 24)
      {
        return result;
      }

      return sub_1BF4C5258(0xD000000000000012, 0x80000001BF4FEAE0);
    }

    if (v17 < 0)
    {
      v19 = *(v2 + 80);
    }

    result = sub_1BF4E9204();
    if (result >= 24)
    {
      return sub_1BF4C5258(0xD000000000000012, 0x80000001BF4FEAE0);
    }
  }

  return result;
}

uint64_t sub_1BF3ABF74(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9B00, &qword_1BF4F1E50);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BF3ABFF8()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9B00, &qword_1BF4F1E50);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v27 - v4;
  v6 = sub_1BF4E7334();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v27 - v12;
  BSDispatchQueueAssertMain();
  sub_1BF4E7324();
  v14 = OBJC_IVAR____TtC9ChronoKit19DuetWidgetViewEntry_startViewDate;
  swift_beginAccess();
  v31 = *(v7 + 16);
  v31(v10, v0 + v14, v6);
  v15 = sub_1BF4E7264();
  v32 = *(v7 + 8);
  v32(v10, v6);
  if (v15)
  {
    (*(v7 + 32))(v5, v13, v6);
  }

  else
  {
    v30 = v14;
    if (qword_1EDC9D480 != -1)
    {
      swift_once();
    }

    v16 = sub_1BF4E7B54();
    __swift_project_value_buffer(v16, qword_1EDCA68C8);

    v17 = sub_1BF4E7B34();
    v18 = sub_1BF4E8E44();

    v29 = v18;
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v28 = v5;
      v20 = v19;
      v21 = v17;
      v22 = swift_slowAlloc();
      v33 = v22;
      *v20 = 136446210;
      *(v20 + 4) = sub_1BF38D65C(*(v1 + 40), *(v1 + 48), &v33);
      _os_log_impl(&dword_1BF389000, v21, v29, "End view date < start view date for: %{public}s", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v22);
      MEMORY[0x1BFB5A5D0](v22, -1, -1);
      v23 = v20;
      v5 = v28;
      MEMORY[0x1BFB5A5D0](v23, -1, -1);
    }

    else
    {
    }

    v31(v10, v1 + v30, v6);
    sub_1BF4E7244();
    v24 = v32;
    v32(v10, v6);
    v24(v13, v6);
  }

  (*(v7 + 56))(v5, 0, 1, v6);
  v25 = OBJC_IVAR____TtC9ChronoKit19DuetWidgetViewEntry_endViewDate;
  swift_beginAccess();
  sub_1BF3AC398(v5, v1 + v25);
  return swift_endAccess();
}

uint64_t sub_1BF3AC398(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9B00, &qword_1BF4F1E50);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

double sub_1BF3AC408(uint64_t a1)
{
  result = *(v1 + 16) - *(v1 + 24) + *(a1 + 32);
  *(a1 + 32) = result;
  return result;
}

Swift::Void __swiftcall BlockAssertion.invalidate()()
{
  v1 = v0[2];
  os_unfair_lock_lock(*(v1 + 16));
  v2 = v0[3];
  v3 = v0[4];
  v0[3] = 0;
  v0[4] = 0;
  os_unfair_lock_unlock(*(v1 + 16));
  if (v2)
  {

    v2(v4);
    sub_1BF3B0E64(v2);

    sub_1BF3B0E64(v2);
  }
}

uint64_t BlockAssertion.__deallocating_deinit()
{
  v1 = v0;
  v2 = v0[3];
  if (v2)
  {
    v3 = v0[4];
    v4 = v1[4];

    v2(v5);
    sub_1BF3B0E64(v2);
  }

  v6 = v1[2];

  v7 = v1[4];
  sub_1BF3B0E64(v1[3]);

  return swift_deallocClassInstance();
}

uint64_t PowerlogWidgetViewIdentity.hash(into:)()
{
  v1 = v0[1];
  v3 = v0[2];
  v2 = v0[3];
  v4 = v0[4];
  v5 = *(v0 + 40);
  v6 = v0[6];
  v7 = *(v0 + 56);
  v8 = *v0;
  sub_1BF4E90B4();
  sub_1BF4E89F4();
  sub_1BF4E9824();
  if (v4)
  {
    sub_1BF4E89F4();
  }

  sub_1BF4E9824();
  if (v7)
  {
    v6 = qword_1BF4EE160[v6];
  }

  else
  {
    MEMORY[0x1BFB59A70](3);
  }

  return MEMORY[0x1BFB59A70](v6);
}

uint64_t sub_1BF3AC63C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1BF3AC6EC()
{
  MEMORY[0x1BFB5A5D0](*(v0 + 16), -1, -1);

  return swift_deallocClassInstance();
}

void sub_1BF3AC72C()
{
  v0 = MEMORY[0x1BFB59CC0]();
  if (qword_1EDC9F730 != -1)
  {
    goto LABEL_8;
  }

  while (1)
  {
    swift_beginAccess();
    v1 = off_1EDC9F738;
    v2 = *(off_1EDC9F738 + 2);

    if (!v2)
    {
      break;
    }

    v3 = 0;
    v4 = v1 + 5;
    while (v3 < v1[2])
    {
      ++v3;
      v6 = *(v4 - 1);
      v5 = *v4;

      v6(v7);

      v4 += 2;
      if (v2 == v3)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
LABEL_8:
    swift_once();
  }

LABEL_6:

  off_1EDC9F738 = MEMORY[0x1E69E7CC0];

  objc_autoreleasePoolPop(v0);
}

uint64_t sub_1BF3AC83C(uint64_t a1, uint64_t *a2, void *a3, id *a4)
{
  v7 = sub_1BF4E7B54();
  __swift_allocate_value_buffer(v7, a2);
  __swift_project_value_buffer(v7, a2);
  if (*a3 != -1)
  {
    swift_once();
  }

  v8 = *a4;
  return sub_1BF4E7B64();
}

void sub_1BF3AC91C(void *a1, void *a2)
{
  v3 = v2;
  if (qword_1EDC9EFE0 != -1)
  {
    swift_once();
  }

  v6 = sub_1BF4E7B54();
  __swift_project_value_buffer(v6, qword_1EDCA6A60);

  v7 = a2;
  v8 = a1;
  v9 = sub_1BF4E7B34();
  v10 = sub_1BF4E8E84();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v26 = v12;
    *v11 = 136446722;
    v14 = *(v3 + 16);
    v13 = *(v3 + 24);

    v15 = sub_1BF38D65C(v14, v13, &v26);

    *(v11 + 4) = v15;
    *(v11 + 12) = 2082;
    v16 = [*&v7[OBJC_IVAR____TtC9ChronoKit11WidgetEntry_key] _loggingIdentifierWithoutMetrics];
    v17 = sub_1BF4E8914();
    v19 = v18;

    v20 = sub_1BF38D65C(v17, v19, &v26);

    *(v11 + 14) = v20;
    *(v11 + 22) = 2082;
    v21 = [v8 description];
    v22 = sub_1BF4E8914();
    v24 = v23;

    v25 = sub_1BF38D65C(v22, v24, &v26);

    *(v11 + 24) = v25;
    _os_log_impl(&dword_1BF389000, v9, v10, "[%{public}s] Updating descriptor: %{public}s with: %{public}s", v11, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1BFB5A5D0](v12, -1, -1);
    MEMORY[0x1BFB5A5D0](v11, -1, -1);
  }

  sub_1BF3ACB78(v8);
}

void sub_1BF3ACB78(void *a1)
{
  v2 = v1;
  v4 = *(v1 + OBJC_IVAR____TtC9ChronoKit11WidgetEntry__lock);
  os_unfair_lock_lock(*(v4 + 16));
  v5 = OBJC_IVAR____TtC9ChronoKit11WidgetEntry__lock_descriptor;
  v6 = *(v1 + OBJC_IVAR____TtC9ChronoKit11WidgetEntry__lock_descriptor);
  if (a1)
  {
    if (!v6)
    {
LABEL_6:
      *(v2 + v5) = a1;
      v10 = a1;

      os_unfair_lock_unlock(*(v4 + 16));
      v11 = *(v2 + OBJC_IVAR____TtC9ChronoKit11WidgetEntry__environmentProvider);
      v12 = v10;
      sub_1BF42DC14(a1);

      v13 = *(v2 + OBJC_IVAR____TtC9ChronoKit11WidgetEntry__descriptorDidChangePublisher);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD9110, &qword_1BF4EEFA0);
      sub_1BF38C8B4(&qword_1EDC9FD90, &unk_1EBDD9110, &qword_1BF4EEFA0);
      sub_1BF4E7C74();
      return;
    }

    sub_1BF3901C0(0, &unk_1EDC9D6D8, 0x1E6994388);
    v7 = v6;
    v8 = a1;
    v9 = sub_1BF4E90A4();

    if ((v9 & 1) == 0)
    {
      v6 = *(v2 + v5);
      goto LABEL_6;
    }
  }

  else if (v6)
  {
    goto LABEL_6;
  }

  v14 = *(v4 + 16);

  os_unfair_lock_unlock(v14);
}

uint64_t sub_1BF3ACCF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  sub_1BF3ACD5C();
  result = sub_1BF4E90E4();
  *a4 = result;
  return result;
}

unint64_t sub_1BF3ACD5C()
{
  result = qword_1EDC9D660[0];
  if (!qword_1EDC9D660[0])
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, qword_1EDC9D660);
  }

  return result;
}

void sub_1BF3ACDA8(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v9 = *(v4 + OBJC_IVAR____TtC9ChronoKit11WidgetEntry__lock);
  os_unfair_lock_lock(*(v9 + 16));
  sub_1BF3ACE84(v4, a2, a1, a3, a4);
  v10 = *(v9 + 16);

  os_unfair_lock_unlock(v10);
}

uint64_t sub_1BF3ACE84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v80 = a4;
  v78 = a3;
  v73 = sub_1BF4E8134();
  v72 = *(v73 - 8);
  v8 = *(v72 + 64);
  MEMORY[0x1EEE9AC00](v73);
  v70 = &v65 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = sub_1BF4E8164();
  v69 = *(v71 - 8);
  v10 = *(v69 + 64);
  MEMORY[0x1EEE9AC00](v71);
  v68 = &v65 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD9AE0, &qword_1BF4F5DF0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v67 = &v65 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v77 = &v65 - v16;
  v76 = sub_1BF4E8594();
  v75 = *(v76 - 8);
  v17 = *(v75 + 64);
  MEMORY[0x1EEE9AC00](v76);
  v66 = &v65 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9B00, &qword_1BF4F1E50);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v74 = (&v65 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v65 - v23;
  v25 = sub_1BF4E7334();
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v25);
  v29 = &v65 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v65 - v31;
  v33 = OBJC_IVAR____TtC9ChronoKit11WidgetEntry__lock_content;
  swift_beginAccess();
  sub_1BF38C94C(a1 + v33, &v81, &qword_1EBDD9AF8, &qword_1BF4F5E00);
  if (!*(&v82 + 1))
  {
    sub_1BF38C9B4(&v81, &qword_1EBDD9AF8, &qword_1BF4F5E00);
    v37 = *(a1 + OBJC_IVAR____TtC9ChronoKit11WidgetEntry__lock_contentLoadError + 8);
    *a5 = *(a1 + OBJC_IVAR____TtC9ChronoKit11WidgetEntry__lock_contentLoadError);
    a5[1] = v37;
    type metadata accessor for WidgetEntry.WidgetEntryError(0);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9BA8, &qword_1BF4F5FA8);
    swift_storeEnumTagMultiPayload();
  }

  v79 = a1;
  sub_1BF38E610(&v81, &v89);
  v65 = a2;
  sub_1BF38C94C(a2, v24, &qword_1EBDD9B00, &qword_1BF4F1E50);
  v34 = *(v26 + 48);
  if (v34(v24, 1, v25) == 1)
  {
    sub_1BF38C9B4(v24, &qword_1EBDD9B00, &qword_1BF4F1E50);
    v35 = OBJC_IVAR____TtC9ChronoKit11WidgetEntry__lock_currentEntry;
    v36 = v79;
    swift_beginAccess();
    sub_1BF38C94C(v36 + v35, &v85, &qword_1EBDD9AF0, &qword_1BF4F5DF8);
    if (!*(&v86 + 1))
    {
      goto LABEL_11;
    }

LABEL_8:
    v65 = v26;
    v74 = a5;
    sub_1BF38E610(&v85, v88);
    __swift_project_boxed_opaque_existential_1(&v89, v90);
    __swift_project_boxed_opaque_existential_1(v88, v88[3]);
    sub_1BF4E8334();
    v39 = v77;
    v40 = v91;
    sub_1BF4E85C4();
    if (v40)
    {
      (*(v65 + 8))(v29, v25);
      v41 = v74;
      sub_1BF38E49C(v88, v74);
      *(v41 + 40) = v40;
      type metadata accessor for WidgetEntry.WidgetEntryError(0);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9BA8, &qword_1BF4F5FA8);
      swift_storeEnumTagMultiPayload();
      __swift_destroy_boxed_opaque_existential_1Tm(v88);
      return __swift_destroy_boxed_opaque_existential_1Tm(&v89);
    }

    (*(v65 + 8))(v29, v25);
    v45 = v75;
    v46 = v76;
    v47 = (*(v75 + 48))(v39, 1, v76);
    v48 = v74;
    v49 = v39;
    if (v47 == 1)
    {
      sub_1BF38C9B4(v39, &unk_1EBDD9AE0, &qword_1BF4F5DF0);
      sub_1BF38E49C(v88, v48);
      __swift_project_boxed_opaque_existential_1(&v89, v90);
      v50 = v68;
      sub_1BF4E85A4();
      v51 = v72;
      v52 = v70;
      v53 = v73;
      (*(v72 + 104))(v70, *MEMORY[0x1E69856F8], v73);
      v54 = sub_1BF4E8124();
      (*(v51 + 8))(v52, v53);
      (*(v69 + 8))(v50, v71);
      *&v85 = v54;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD9BB0, &qword_1BF4EC140);
      sub_1BF38C8B4(&qword_1EDC9F180, &unk_1EBDD9BB0, &qword_1BF4EC140);
      v55 = sub_1BF4E8894();
      v57 = v56;

      *(v48 + 40) = v55;
      *(v48 + 48) = v57;
      type metadata accessor for WidgetEntry.WidgetEntryError(0);
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      v60 = *(v45 + 32);
      v61 = v66;
      v60(v66, v49, v46);
      v62 = v67;
      (*(v45 + 16))(v67, v61, v46);
      (*(v45 + 56))(v62, 0, 1, v46);
      v63 = OBJC_IVAR____TtC9ChronoKit11WidgetEntry__lock_cachedViewableEntry;
      v64 = v79;
      swift_beginAccess();
      sub_1BF3A3A54(v62, v64 + v63, &unk_1EBDD9AE0, &qword_1BF4F5DF0);
      swift_endAccess();
      v60(v48, v61, v46);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9BA8, &qword_1BF4F5FA8);
    swift_storeEnumTagMultiPayload();
    __swift_destroy_boxed_opaque_existential_1Tm(v88);
    return __swift_destroy_boxed_opaque_existential_1Tm(&v89);
  }

  (*(v26 + 32))(v32, v24, v25);
  sub_1BF3AEB90(&v81);
  (*(v26 + 8))(v32, v25);
  if (*(&v82 + 1) == 1)
  {
    sub_1BF38C9B4(&v81, &qword_1EBDD9B30, &qword_1BF4F5E20);
    v85 = 0u;
    v86 = 0u;
    v87 = 0;
    goto LABEL_11;
  }

  v85 = v81;
  v86 = v82;
  v87 = v83;
  sub_1BF38C9B4(&v84, &qword_1EBDD9AF0, &qword_1BF4F5DF8);
  if (*(&v86 + 1))
  {
    goto LABEL_8;
  }

LABEL_11:
  sub_1BF38C9B4(&v85, &qword_1EBDD9AF0, &qword_1BF4F5DF8);
  v42 = v65;
  if (v34(v65, 1, v25) == 1)
  {
    v43 = OBJC_IVAR____TtC9ChronoKit11WidgetEntry__lock_configuredDate;
    v44 = v79;
    swift_beginAccess();
    (*(v26 + 16))(a5, v44 + v43, v25);
LABEL_17:
    type metadata accessor for WidgetEntry.WidgetEntryError(0);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9BA8, &qword_1BF4F5FA8);
    swift_storeEnumTagMultiPayload();
    return __swift_destroy_boxed_opaque_existential_1Tm(&v89);
  }

  v58 = v42;
  v59 = v74;
  sub_1BF38C94C(v58, v74, &qword_1EBDD9B00, &qword_1BF4F1E50);
  result = (v34)(v59, 1, v25);
  if (result != 1)
  {
    (*(v26 + 32))(a5, v59, v25);
    goto LABEL_17;
  }

  __break(1u);
  return result;
}

uint64_t CHSConfiguredWidgetDescriptor.duetWidgetViewIdentity.getter@<X0>(uint64_t *a1@<X8>)
{
  a1[2] = v1;
  v3 = v1;
  v4 = sub_1BF3B253C(v3);
  v6 = v5;
  *a1 = v4;
  a1[1] = v5;

  v7 = [v3 uniqueIdentifier];
  sub_1BF4E8914();

  sub_1BF399080();
  v8 = sub_1BF4E9134();
  v10 = v9;

  MEMORY[0x1BFB58C90](14906, 0xE200000000000000);
  MEMORY[0x1BFB58C90](v4, v6);

  a1[3] = v8;
  a1[4] = v10;
  return result;
}

uint64_t sub_1BF3ADADC(uint64_t a1, void *a2)
{
  v2 = a2[3];
  v3 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v2);
  v4 = sub_1BF4E82E4();
  v5 = (*(v3 + 8))(v4, v2, v3);

  if (v5)
  {

    return 0;
  }

  else
  {
    sub_1BF4225D4();
    v6 = swift_allocError();
    *v8 = 0xD00000000000001DLL;
    v8[1] = 0x80000001BF4FACA0;
  }

  return v6;
}

void sub_1BF3ADC00(uint64_t a1)
{
  v3 = sub_1BF4E7334();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD97C8, &qword_1BF4F5FA0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = (&v44 - v10);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9B00, &qword_1BF4F1E50);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](v12 - 8);
  v16 = &v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = &v44 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v44 - v20;
  os_unfair_lock_assert_owner(*(*(v1 + OBJC_IVAR____TtC9ChronoKit11WidgetEntry__lock) + 16));
  if ((*(v1 + OBJC_IVAR____TtC9ChronoKit11WidgetEntry__lock_shouldSilencePublisher) & 1) == 0)
  {
    v46 = v7;
    v47 = v16;
    v49 = v1;
    v22 = (v1 + OBJC_IVAR____TtC9ChronoKit11WidgetEntry__lock_currentEntry);
    swift_beginAccess();
    v23 = v22[3];
    v48 = v22;
    if (v23)
    {
      v45 = v4;
      v24 = a1;
      v25 = v22[4];
      v26 = __swift_project_boxed_opaque_existential_1(v22, v23);
      v44 = &v44;
      v27 = *(v23 - 8);
      v28 = *(v27 + 64);
      MEMORY[0x1EEE9AC00](v26);
      v30 = &v44 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v27 + 16))(v30);
      a1 = v24;
      v4 = v45;
      sub_1BF4E8334();
      (*(v27 + 8))(v30, v23);
      v31 = *(v4 + 56);
      v31(v21, 0, 1, v3);
    }

    else
    {
      v31 = *(v4 + 56);
      v31(v21, 1, 1, v3);
    }

    sub_1BF38C94C(a1, v50, &qword_1EBDD9AF0, &qword_1BF4F5DF8);
    if (v51)
    {
      __swift_project_boxed_opaque_existential_1(v50, v51);
      sub_1BF4E8334();
      v31(v19, 0, 1, v3);
      __swift_destroy_boxed_opaque_existential_1Tm(v50);
    }

    else
    {
      sub_1BF38C9B4(v50, &qword_1EBDD9AF0, &qword_1BF4F5DF8);
      v31(v19, 1, 1, v3);
    }

    v32 = *(v8 + 48);
    sub_1BF38C94C(v21, v11, &qword_1EBDD9B00, &qword_1BF4F1E50);
    sub_1BF38C94C(v19, v11 + v32, &qword_1EBDD9B00, &qword_1BF4F1E50);
    v33 = *(v4 + 48);
    if (v33(v11, 1, v3) == 1)
    {
      sub_1BF38C9B4(v19, &qword_1EBDD9B00, &qword_1BF4F1E50);
      sub_1BF38C9B4(v21, &qword_1EBDD9B00, &qword_1BF4F1E50);
      if (v33(v11 + v32, 1, v3) == 1)
      {
        v34 = &qword_1EBDD9B00;
        v35 = &qword_1BF4F1E50;
        v36 = v11;
LABEL_15:
        sub_1BF38C9B4(v36, v34, v35);
        return;
      }
    }

    else
    {
      v37 = v47;
      sub_1BF38C94C(v11, v47, &qword_1EBDD9B00, &qword_1BF4F1E50);
      if (v33(v11 + v32, 1, v3) != 1)
      {
        v40 = v46;
        (*(v4 + 32))(v46, v11 + v32, v3);
        sub_1BF3BB364(&qword_1EDC9F0C0, MEMORY[0x1E6969530]);
        v41 = v37;
        v42 = sub_1BF4E88C4();
        v43 = *(v4 + 8);
        v43(v40, v3);
        sub_1BF38C9B4(v19, &qword_1EBDD9B00, &qword_1BF4F1E50);
        sub_1BF38C9B4(v21, &qword_1EBDD9B00, &qword_1BF4F1E50);
        v43(v41, v3);
        sub_1BF38C9B4(v11, &qword_1EBDD9B00, &qword_1BF4F1E50);
        v38 = v49;
        if (v42)
        {
          return;
        }

        goto LABEL_14;
      }

      sub_1BF38C9B4(v19, &qword_1EBDD9B00, &qword_1BF4F1E50);
      sub_1BF38C9B4(v21, &qword_1EBDD9B00, &qword_1BF4F1E50);
      (*(v4 + 8))(v37, v3);
    }

    sub_1BF38C9B4(v11, &qword_1EBDD97C8, &qword_1BF4F5FA0);
    v38 = v49;
LABEL_14:
    v39 = *(v38 + OBJC_IVAR____TtC9ChronoKit11WidgetEntry__objectWillChangePublisher);
    sub_1BF38C94C(v48, v50, &qword_1EBDD9AF0, &qword_1BF4F5DF8);
    sub_1BF4E7C14();
    v36 = v50;
    v34 = &qword_1EBDD9AF0;
    v35 = &qword_1BF4F5DF8;
    goto LABEL_15;
  }
}

double sub_1BF3AE26C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = sub_1BF4E7B24();
  v60 = *(v6 - 8);
  v61 = v6;
  v7 = *(v60 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v59 = v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1BF4E7334();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v63 = v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD97C8, &qword_1BF4F5FA0);
  v13 = *(*(v64 - 8) + 64);
  MEMORY[0x1EEE9AC00](v64);
  v15 = v54 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9B00, &qword_1BF4F1E50);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16 - 8);
  v62 = v54 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v22 = v54 - v21;
  MEMORY[0x1EEE9AC00](v20);
  v24 = v54 - v23;
  os_unfair_lock_assert_owner(*(*(v2 + OBJC_IVAR____TtC9ChronoKit11WidgetEntry__lock) + 16));
  sub_1BF3AEB90(&v67);
  if (*(&v68 + 1) == 1)
  {
    sub_1BF38C9B4(&v67, &qword_1EBDD9B30, &qword_1BF4F5E20);
    *(a2 + 32) = 0;
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
    return result;
  }

  v57 = a1;
  v58 = a2;
  v76[0] = v67;
  v76[1] = v68;
  v77 = v69;
  v73 = v70;
  v74 = v71;
  v75 = v72;
  sub_1BF38C94C(v76, &v67, &qword_1EBDD9AF0, &qword_1BF4F5DF8);
  v65 = v10;
  if (*(&v68 + 1))
  {
    __swift_project_boxed_opaque_existential_1(&v67, *(&v68 + 1));
    sub_1BF4E8334();
    v26 = *(v10 + 56);
    v26(v24, 0, 1, v9);
    __swift_destroy_boxed_opaque_existential_1Tm(&v67);
  }

  else
  {
    sub_1BF38C9B4(&v67, &qword_1EBDD9AF0, &qword_1BF4F5DF8);
    v26 = *(v10 + 56);
    v26(v24, 1, 1, v9);
  }

  v27 = OBJC_IVAR____TtC9ChronoKit11WidgetEntry__lock_currentEntry;
  swift_beginAccess();
  v55 = v27;
  v56 = v3;
  sub_1BF38C94C(v3 + v27, &v67, &qword_1EBDD9AF0, &qword_1BF4F5DF8);
  v28 = *(&v68 + 1);
  if (*(&v68 + 1))
  {
    v29 = __swift_project_boxed_opaque_existential_1(&v67, *(&v68 + 1));
    v54[1] = v54;
    v30 = v9;
    v31 = *(v28 - 8);
    v32 = *(v31 + 64);
    MEMORY[0x1EEE9AC00](v29);
    v34 = v54 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v31 + 16))(v34);
    sub_1BF38C9B4(&v67, &qword_1EBDD9AF0, &qword_1BF4F5DF8);
    sub_1BF4E8334();
    (*(v31 + 8))(v34, v28);
    v35 = v65;
    v26(v22, 0, 1, v30);
  }

  else
  {
    sub_1BF38C9B4(&v67, &qword_1EBDD9AF0, &qword_1BF4F5DF8);
    v35 = v65;
    v26(v22, 1, 1, v9);
    v30 = v9;
  }

  v36 = *(v64 + 48);
  sub_1BF38C94C(v24, v15, &qword_1EBDD9B00, &qword_1BF4F1E50);
  sub_1BF38C94C(v22, &v15[v36], &qword_1EBDD9B00, &qword_1BF4F1E50);
  v37 = *(v35 + 48);
  if (v37(v15, 1, v30) == 1)
  {
    sub_1BF38C9B4(v22, &qword_1EBDD9B00, &qword_1BF4F1E50);
    sub_1BF38C9B4(v24, &qword_1EBDD9B00, &qword_1BF4F1E50);
    v38 = v30;
    v39 = v37(&v15[v36], 1, v30);
    v40 = v65;
    if (v39 == 1)
    {
      sub_1BF38C9B4(v15, &qword_1EBDD9B00, &qword_1BF4F1E50);
LABEL_17:
      sub_1BF38C9B4(v76, &qword_1EBDD9AF0, &qword_1BF4F5DF8);
      goto LABEL_18;
    }

    goto LABEL_14;
  }

  v41 = v62;
  sub_1BF38C94C(v15, v62, &qword_1EBDD9B00, &qword_1BF4F1E50);
  if (v37(&v15[v36], 1, v30) == 1)
  {
    sub_1BF38C9B4(v22, &qword_1EBDD9B00, &qword_1BF4F1E50);
    sub_1BF38C9B4(v24, &qword_1EBDD9B00, &qword_1BF4F1E50);
    v40 = v65;
    v38 = v30;
    (*(v65 + 8))(v41, v30);
LABEL_14:
    sub_1BF38C9B4(v15, &qword_1EBDD97C8, &qword_1BF4F5FA0);
    goto LABEL_15;
  }

  v48 = v65;
  v49 = &v15[v36];
  v50 = v63;
  (*(v65 + 32))(v63, v49, v30);
  sub_1BF3BB364(&qword_1EDC9F0C0, MEMORY[0x1E6969530]);
  LODWORD(v64) = sub_1BF4E88C4();
  v51 = *(v48 + 8);
  v51(v50, v30);
  sub_1BF38C9B4(v22, &qword_1EBDD9B00, &qword_1BF4F1E50);
  sub_1BF38C9B4(v24, &qword_1EBDD9B00, &qword_1BF4F1E50);
  v38 = v30;
  v51(v62, v30);
  v40 = v48;
  sub_1BF38C9B4(v15, &qword_1EBDD9B00, &qword_1BF4F1E50);
  if (v64)
  {
    goto LABEL_17;
  }

LABEL_15:
  sub_1BF4E8FF4();
  sub_1BF3901C0(0, qword_1EDC9D660, 0x1E69E9BF8);
  v42 = sub_1BF4E90D4();
  v43 = v59;
  sub_1BF4E7B14();
  sub_1BF4E7AF4();

  (*(v60 + 8))(v43, v61);
  sub_1BF38C94C(v76, &v67, &qword_1EBDD9AF0, &qword_1BF4F5DF8);
  v45 = v55;
  v44 = v56;
  sub_1BF38C94C(v56 + v55, v66, &qword_1EBDD9AF0, &qword_1BF4F5DF8);
  swift_beginAccess();
  sub_1BF3A5C18(&v67, v44 + v45, &qword_1EBDD9AF0, &qword_1BF4F5DF8);
  swift_endAccess();
  sub_1BF3ADC00(v66);
  sub_1BF38C9B4(v66, &qword_1EBDD9AF0, &qword_1BF4F5DF8);
  sub_1BF38C9B4(&v67, &qword_1EBDD9AF0, &qword_1BF4F5DF8);
  sub_1BF38C9B4(v76, &qword_1EBDD9AF0, &qword_1BF4F5DF8);
  v46 = v63;
  (*(v40 + 16))(v63, v57, v38);
  v47 = OBJC_IVAR____TtC9ChronoKit11WidgetEntry__lock_configuredDate;
  swift_beginAccess();
  (*(v40 + 40))(v44 + v47, v46, v38);
  swift_endAccess();
LABEL_18:
  result = *&v73;
  v52 = v74;
  v53 = v58;
  *v58 = v73;
  v53[1] = v52;
  *(v53 + 4) = v75;
  return result;
}

uint64_t sub_1BF3AEB90@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1BF4E7334();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  os_unfair_lock_assert_owner(*(*(v1 + OBJC_IVAR____TtC9ChronoKit11WidgetEntry__lock) + 16));
  v8 = OBJC_IVAR____TtC9ChronoKit11WidgetEntry__lock_content;
  swift_beginAccess();
  sub_1BF38C94C(v1 + v8, &v26, &qword_1EBDD9AF8, &qword_1BF4F5E00);
  if (*(&v27 + 1))
  {
    sub_1BF38E610(&v26, v29);
    __swift_project_boxed_opaque_existential_1(v29, v30);
    sub_1BF4E85D4();
    sub_1BF38C94C(&v26, &v21, &qword_1EBDD9AF0, &qword_1BF4F5DF8);
    v9 = *(&v22 + 1);
    sub_1BF38C9B4(&v21, &qword_1EBDD9AF0, &qword_1BF4F5DF8);
    if (v9)
    {
      goto LABEL_6;
    }

    sub_1BF38C94C(v24, &v21, &qword_1EBDD9AF0, &qword_1BF4F5DF8);
    v10 = *(&v22 + 1);
    sub_1BF38C9B4(&v21, &qword_1EBDD9AF0, &qword_1BF4F5DF8);
    if (!v10)
    {
      goto LABEL_6;
    }

    v19[1] = v31;
    result = __swift_project_boxed_opaque_existential_1(v29, v30);
    v12 = v25;
    if (v25)
    {
      v13 = __swift_project_boxed_opaque_existential_1(v24, v25);
      v19[0] = v19;
      v14 = *(v12 - 8);
      v15 = *(v14 + 64);
      MEMORY[0x1EEE9AC00](v13);
      v17 = v19 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v14 + 16))(v17);
      sub_1BF4E8334();
      (*(v14 + 8))(v17, v12);
      sub_1BF4E85D4();
      (*(v4 + 8))(v7, v3);
      sub_1BF38C9B4(&v26, &qword_1EBDD9AF0, &qword_1BF4F5DF8);
      v26 = v21;
      v27 = v22;
      v28 = v23;
      sub_1BF3A3A54(v20, v24, &qword_1EBDD9AF0, &qword_1BF4F5DF8);
LABEL_6:
      v18 = v27;
      *a1 = v26;
      *(a1 + 16) = v18;
      *(a1 + 32) = v28;
      sub_1BF38C94C(v24, a1 + 40, &qword_1EBDD9AF0, &qword_1BF4F5DF8);
      sub_1BF38C9B4(v24, &qword_1EBDD9AF0, &qword_1BF4F5DF8);
      return __swift_destroy_boxed_opaque_existential_1Tm(v29);
    }

    __break(1u);
  }

  else
  {
    result = sub_1BF38C9B4(&v26, &qword_1EBDD9AF8, &qword_1BF4F5E00);
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *(a1 + 24) = 1;
    *(a1 + 32) = 0u;
    *(a1 + 48) = 0u;
    *(a1 + 64) = 0u;
  }

  return result;
}

void sub_1BF3AEF88(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + OBJC_IVAR____TtC9ChronoKit11WidgetEntry__lock);
  os_unfair_lock_lock(*(v5 + 16));
  v6 = (v2 + OBJC_IVAR____TtC9ChronoKit11WidgetEntry__lock_contentLoadError);
  v7 = *(v2 + OBJC_IVAR____TtC9ChronoKit11WidgetEntry__lock_contentLoadError + 8);
  *v6 = a1;
  v6[1] = a2;

  v8 = *(v5 + 16);

  os_unfair_lock_unlock(v8);
}

uint64_t sub_1BF3AEFFC@<X0>(uint64_t *a1@<X8>)
{
  result = WidgetDescriptorPredicate.evaluate(with:)();
  *a1 = result;
  return result;
}

void *_s9ChronoKit25WidgetDescriptorPredicateV8evaluate4withSo09CHSWidgetD0CSgSDySo20CHSExtensionIdentityCSayAGGG_tF_0(uint64_t a1)
{
  v24 = *v1;
  v3 = [*v1 extensionIdentity];
  v4 = v3;
  if (*(a1 + 16) && (v5 = sub_1BF3916CC(v3), (v6 & 1) != 0))
  {
    v7 = *(*(a1 + 56) + 8 * v5);

    if (v7 >> 62)
    {
      goto LABEL_23;
    }

    for (i = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1BF4E9204())
    {
      v9 = 0;
      while (1)
      {
        if ((v7 & 0xC000000000000001) != 0)
        {
          v10 = MEMORY[0x1BFB59570](v9, v7);
        }

        else
        {
          if (v9 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_22;
          }

          v10 = *(v7 + 8 * v9 + 32);
        }

        v11 = v10;
        v12 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          break;
        }

        v13 = [v10 kind];
        v14 = sub_1BF4E8914();
        v16 = v15;

        v17 = [v24 kind];
        v18 = sub_1BF4E8914();
        v20 = v19;

        if (v14 == v18 && v16 == v20)
        {

          return v11;
        }

        v22 = sub_1BF4E9734();

        if (v22)
        {

          return v11;
        }

        ++v9;
        if (v12 == i)
        {
          goto LABEL_24;
        }
      }

      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      ;
    }

LABEL_24:
  }

  else
  {
  }

  return 0;
}

uint64_t sub_1BF3AF240()
{
  v1 = v0;
  v2 = *v0;
  v11 = *(v1 + qword_1EDC9AF58);
  v3 = type metadata accessor for UnfairLock();
  v4 = v2[10];
  v5 = v2[11];
  v6 = v2[12];
  v7 = v2[16];
  sub_1BF4E8834();
  v8 = v2[14];
  v9 = sub_1BF4E8834();

  sub_1BF38D774(sub_1BF3AF220, v1, v3, v9, &off_1F3DEE010);

  return v12;
}

uint64_t sub_1BF3AF390(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v36 = a8;
  v45 = a1;
  v46 = a2;
  v11 = *(a5 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v47 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v14 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v49 = *(AssociatedTypeWitness - 8);
  v16 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v18 = &v34 - v17;
  v19 = *(*(a4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20);
  v43 = &v34 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = swift_getAssociatedTypeWitness();
  v37 = *(v22 - 8);
  v38 = v22;
  v23 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v34 - v24;
  v26 = sub_1BF4E8DB4();
  if (!v26)
  {
    return sub_1BF4E8BF4();
  }

  v48 = v26;
  v52 = sub_1BF4E93E4();
  v39 = sub_1BF4E93F4();
  sub_1BF4E9394();
  result = sub_1BF4E8DA4();
  if ((v48 & 0x8000000000000000) == 0)
  {
    v34 = v11;
    v35 = a5;
    v28 = 0;
    v40 = (v49 + 16);
    v41 = (v49 + 8);
    v42 = v8;
    while (!__OFADD__(v28, 1))
    {
      v49 = v28 + 1;
      v29 = sub_1BF4E8DF4();
      v30 = v18;
      v31 = v18;
      v32 = AssociatedTypeWitness;
      (*v40)(v30);
      v29(v51, 0);
      v33 = v50;
      v45(v31, v47);
      if (v33)
      {
        (*v41)(v31, v32);
        (*(v37 + 8))(v25, v38);

        return (*(v34 + 32))(v36, v47, v35);
      }

      v50 = 0;
      (*v41)(v31, v32);
      sub_1BF4E93D4();
      result = sub_1BF4E8DC4();
      ++v28;
      v18 = v31;
      if (v49 == v48)
      {
        (*(v37 + 8))(v25, v38);
        return v52;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1BF3AF7B0(void *a1, void *a2)
{
  v5 = *(v2 + 32);
  v6 = *(v2 + 40);
  result = v5(*a1);
  if (v3)
  {
    *a2 = v3;
  }

  return result;
}

uint64_t sub_1BF3AF830@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_beginAccess();
  *a2 = *(v2 + v4);
}

uint64_t sub_1BF3AF8B8@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t)@<X3>, uint64_t *a3@<X4>, uint64_t *a4@<X5>, void *a5@<X8>)
{
  v11 = *v5;
  v12 = sub_1BF3AF970(a1, v11, a2);

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v13 = swift_allocObject();
  v14 = type metadata accessor for DefaultFeatureFlagEvaluator();
  result = swift_allocObject();
  v13[6] = v14;
  v13[7] = &off_1F3DF42A8;
  v13[2] = v12;
  v13[3] = result;
  *a5 = v13;
  return result;
}

uint64_t sub_1BF3AF970(uint64_t a1, void *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v18[1] = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 32);
  v7 = v6 & 0x3F;
  v8 = ((1 << v6) + 63) >> 6;
  v9 = 8 * v8;
  v10 = a2;
  v11 = v10;
  if (v7 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v16 = swift_slowAlloc();
      v17 = v11;
      v13 = sub_1BF4B0BF0(v16, v8, a1, v17, a3);
      MEMORY[0x1BFB5A5D0](v16, -1, -1);

      goto LABEL_6;
    }
  }

  MEMORY[0x1EEE9AC00](v10);
  bzero(v18 - ((v9 + 15) & 0x3FFFFFFFFFFFFFF0), 8 * v8);
  v12 = v11;
  v13 = sub_1BF3AFB28(v18 - ((v9 + 15) & 0x3FFFFFFFFFFFFFF0), v8, a1, v12, a3);

  if (v3)
  {
    swift_willThrow();
  }

LABEL_6:
  v14 = *MEMORY[0x1E69E9840];
  return v13;
}

uint64_t sub_1BF3AFB28(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v23 = result;
  v24 = 0;
  v6 = 0;
  v7 = a3 + 64;
  v8 = 1 << *(a3 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a3 + 64);
  v11 = (v8 + 63) >> 6;
  while (v10)
  {
    v12 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_11:
    v15 = v12 | (v6 << 6);
    v16 = *(*(a3 + 48) + 8 * v15);
    v17 = *(*(a3 + 56) + 8 * v15);
    sub_1BF3901C0(0, &qword_1EDC9FDA8, 0x1E69E58C0);
    v18 = v16;

    v19 = sub_1BF4E90A4();

    if (v19)
    {
      *(v23 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      if (__OFADD__(v24++, 1))
      {
        __break(1u);
        return a5(v23, a2, v24, a3);
      }
    }
  }

  v13 = v6;
  while (1)
  {
    v6 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v6 >= v11)
    {
      return a5(v23, a2, v24, a3);
    }

    v14 = *(v7 + 8 * v6);
    ++v13;
    if (v14)
    {
      v12 = __clz(__rbit64(v14));
      v10 = (v14 - 1) & v14;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1BF3AFCA4(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  if (!a3)
  {
    return MEMORY[0x1E69E7CC8];
  }

  v6 = a4;
  v7 = a3;
  if (*(a4 + 16) == a3)
  {

    return v6;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  result = sub_1BF4E94C4();
  v11 = result;
  if (a2 < 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = *a1;
  }

  v13 = 0;
  v14 = result + 64;
  v32 = v6;
  while (v12)
  {
    v15 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_16:
    v18 = v15 | (v13 << 6);
    v19 = *(*(v6 + 48) + 8 * v18);
    v20 = *(*(v6 + 56) + 8 * v18);
    v21 = *(v11 + 40);
    v22 = v19;

    result = sub_1BF4E9094();
    v23 = -1 << *(v11 + 32);
    v24 = result & ~v23;
    v25 = v24 >> 6;
    if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
    {
      v27 = 0;
      v28 = (63 - v23) >> 6;
      while (++v25 != v28 || (v27 & 1) == 0)
      {
        v29 = v25 == v28;
        if (v25 == v28)
        {
          v25 = 0;
        }

        v27 |= v29;
        v30 = *(v14 + 8 * v25);
        if (v30 != -1)
        {
          v26 = __clz(__rbit64(~v30)) + (v25 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v26 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v14 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
    *(*(v11 + 48) + 8 * v26) = v22;
    *(*(v11 + 56) + 8 * v26) = v20;
    ++*(v11 + 16);
    if (__OFSUB__(v7--, 1))
    {
      goto LABEL_32;
    }

    v6 = v32;
    if (!v7)
    {
      return v11;
    }
  }

  v16 = v13;
  while (1)
  {
    v13 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v13 >= a2)
    {
      return v11;
    }

    v17 = a1[v13];
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v12 = (v17 - 1) & v17;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t DescriptorCollection.mapDescriptors<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v14[2] = DescriptorCollection.descriptors.getter();
  v13[2] = *(v7 + 80);
  v13[3] = a3;
  v13[4] = a1;
  v13[5] = a2;
  v8 = sub_1BF4E8CA4();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD91C0, &unk_1BF4ED510);
  WitnessTable = swift_getWitnessTable();
  v11 = sub_1BF3AF390(sub_1BF3AF7B0, v13, v8, a3, v9, WitnessTable, MEMORY[0x1E69E7288], v14);

  return v11;
}

uint64_t DescriptorCollection.descriptors.getter()
{
  v4 = v0[2];
  v3 = *(*v0 + 80);
  swift_getKeyPath();
  sub_1BF4E9034();
  sub_1BF4E8CA4();
  sub_1BF391F90(&qword_1EDC9F128, MEMORY[0x1E69941C0]);
  sub_1BF4E8834();

  swift_getWitnessTable();
  swift_getWitnessTable();
  v1 = sub_1BF4E8B34();

  return v1;
}

void sub_1BF3B0160(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *a1;

  swift_getAtKeyPath();
}

unint64_t sub_1BF3B01D8()
{
  result = qword_1EDC9FFB0;
  if (!qword_1EDC9FFB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC9FFB0);
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for TapToRadarDraft.AutoDiagnostics(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1BF3B02DC()
{
  v1 = *v0;
  v2 = 0xD000000000000014;
  if (v1 != 6)
  {
    v2 = 0xD000000000000017;
  }

  v3 = 0xD00000000000001ALL;
  if (v1 == 4)
  {
    v3 = 0xD000000000000010;
  }

  if (*v0 <= 5u)
  {
    v2 = v3;
  }

  v4 = 0xD000000000000016;
  if (v1 != 2)
  {
    v4 = 0xD000000000000018;
  }

  v5 = 0xD000000000000015;
  if (!*v0)
  {
    v5 = 0xD00000000000001CLL;
  }

  if (*v0 > 1u)
  {
    v5 = v4;
  }

  if (*v0 <= 3u)
  {
    result = v5;
  }

  else
  {
    result = v2;
  }

  *v0;
  return result;
}

uint64_t sub_1BF3B03C0(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_1BF3B0414@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v102 = a3;
  v105 = *v3;
  v6 = v105;
  v7 = v105[197];
  v113 = *(v7 - 8);
  v8 = *(v113 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v98 = &v92 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = v9;
  MEMORY[0x1EEE9AC00](v10);
  v114 = &v92 - v11;
  v12 = v6[198];
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v99 = &v92 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = v16;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v92 - v18;
  v20 = qword_1EDC99B78;
  swift_beginAccess();
  v21 = *(v3 + v20);
  v22 = v6[203];
  v115 = v12;
  sub_1BF4E8834();
  v109 = v3;
  v23 = v6[201];

  v112 = v7;
  v110 = v23;
  sub_1BF4E8854();

  v24 = v119;
  if (!v119)
  {
    v25 = MEMORY[0x1E69E6530];
    v26 = v115;
    swift_getTupleTypeMetadata2();
    v27 = sub_1BF4E8BF4();
    v24 = sub_1BF3B0FE8(v27, v26, v25, v22);
  }

  v122 = v24;
  result = sub_1BF4E8854();
  v29 = v119;
  if (BYTE8(v119))
  {
    v29 = 0;
  }

  v30 = v29 + 1;
  if (__OFADD__(v29, 1))
  {
    __break(1u);
    goto LABEL_18;
  }

  if (v30 < 1)
  {
LABEL_18:
    __break(1u);
    return result;
  }

  v96 = v22;
  v31 = v13 + 16;
  v107 = *(v13 + 16);
  v107(v19, a2, v115);
  v94 = v30;
  *&v119 = v30;
  BYTE8(v119) = 0;
  v103 = v13;
  v106 = v19;
  sub_1BF4E8864();
  v111 = a2;
  v33 = v113 + 16;
  v32 = *(v113 + 16);
  v34 = v112;
  v32(v114, a1, v112);
  v35 = v122;
  *&v116 = v122;
  swift_beginAccess();
  sub_1BF4E8834();
  v97 = v35;

  sub_1BF4E8864();
  swift_endAccess();
  v36 = v98;
  v108 = a1;
  v37 = v34;
  v38 = v32;
  v39 = v31;
  v40 = v107;
  v32(v98, a1, v37);
  v41 = v99;
  v104 = v39;
  v40(v99, v111, v115);
  v42 = sub_1BF4E7B34();
  v43 = sub_1BF4E8E84();
  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    v95 = v33;
    v45 = v44;
    v93 = swift_slowAlloc();
    *&v119 = v93;
    *v45 = 136446722;
    v46 = v112;
    v32(v114, v36, v112);
    v47 = *(v113 + 8);
    v47(v36, v46);
    v48 = v105;
    v49 = v105[200];
    LODWORD(v98) = v43;
    v50 = sub_1BF4E96A4();
    v92 = v42;
    v52 = v51;
    v47(v114, v46);
    v53 = sub_1BF38D65C(v50, v52, &v119);

    *(v45 + 4) = v53;
    *(v45 + 12) = 2082;
    v54 = v106;
    v55 = v115;
    v107(v106, v41, v115);
    v56 = *(v103 + 8);
    v56(v41, v55);
    v57 = v48[202];
    v58 = sub_1BF4E96A4();
    v60 = v59;
    v61 = v55;
    v38 = v32;
    v56(v54, v61);
    v40 = v107;
    v62 = v114;
    v63 = sub_1BF38D65C(v58, v60, &v119);

    *(v45 + 14) = v63;
    *(v45 + 22) = 2050;
    *(v45 + 24) = v94;
    v64 = v92;
    _os_log_impl(&dword_1BF389000, v92, v98, "%{public}s:%{public}s assertion: acquired (%{public}ld)", v45, 0x20u);
    v65 = v93;
    swift_arrayDestroy();
    MEMORY[0x1BFB5A5D0](v65, -1, -1);
    MEMORY[0x1BFB5A5D0](v45, -1, -1);

    v66 = v103;
  }

  else
  {
    v66 = v103;
    (*(v103 + 8))(v41, v115);
    (*(v113 + 8))(v36, v112);

    v54 = v106;
    v62 = v114;
  }

  v67 = swift_allocObject();
  v68 = v109;
  swift_weakInit();
  v69 = v112;
  v38(v62, v108, v112);
  v70 = v54;
  v71 = v115;
  v40(v70, v111, v115);
  v72 = v69;
  v73 = v113;
  v74 = (*(v113 + 80) + 88) & ~*(v113 + 80);
  v75 = (v101 + *(v66 + 80) + v74) & ~*(v66 + 80);
  v76 = v66;
  v77 = swift_allocObject();
  *(v77 + 2) = v72;
  *(v77 + 3) = v71;
  v78 = v105;
  *(v77 + 4) = v105[199];
  v79 = v110;
  *(v77 + 5) = v78[200];
  *(v77 + 6) = v79;
  v80 = v96;
  *(v77 + 7) = v78[202];
  *(v77 + 8) = v80;
  *(v77 + 9) = v78[204];
  *(v77 + 10) = v67;
  (*(v73 + 32))(&v77[v74], v62, v72);
  (*(v76 + 32))(&v77[v75], v106, v71);
  v81 = type metadata accessor for BlockAssertion();
  v82 = swift_allocObject();
  type metadata accessor for UnfairLock();
  v83 = swift_allocObject();
  v84 = swift_slowAlloc();
  *v84 = 0;
  *(v83 + 16) = v84;
  v82[2] = v83;
  v82[3] = sub_1BF3E4B98;
  v82[4] = v77;
  v85 = v68 + qword_1EDCA6808;
  swift_beginAccess();
  v86 = *v85;
  if (*v85)
  {
    v87 = *(v85 + 8);
    v120 = v81;
    v121 = &protocol witness table for BlockAssertion;
    *&v119 = v82;
    sub_1BF391990(v86);

    v88 = v108;
    v86(&v116, &v119, v108, v111);
    sub_1BF3B0E64(v86);
    __swift_destroy_boxed_opaque_existential_1Tm(&v119);
  }

  else
  {
    v117 = v81;
    v118 = &protocol witness table for BlockAssertion;
    *&v116 = v82;

    v88 = v108;
  }

  sub_1BF38E610(&v116, &v119);
  v89 = v68 + qword_1EDCA6810;
  swift_beginAccess();
  v90 = *v89;
  if (*v89)
  {
    v91 = *(v89 + 8);
    sub_1BF391990(v90);
    v90(&v119, v88);
    sub_1BF3B0E64(v90);

    __swift_destroy_boxed_opaque_existential_1Tm(&v119);
  }

  else
  {

    sub_1BF38E610(&v119, v102);
  }
}

uint64_t sub_1BF3B0E64(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1BF3B0E74()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1BF3B0EAC()
{
  v1 = *(v0 + 2);
  v2 = *(v0 + 3);
  v3 = *(v1 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 88) & ~v4;
  v6 = *(v2 - 8);
  v7 = *(v6 + 80);
  v8 = (v5 + *(v3 + 64) + v7) & ~v7;
  v9 = *(v6 + 64);
  v10 = v4 | v7;
  v11 = *(v0 + 10);

  (*(v3 + 8))(&v0[v5], v1);
  (*(v6 + 8))(&v0[v8], v2);

  return MEMORY[0x1EEE6BDD0](v0, v8 + v9, v10 | 7);
}

uint64_t sub_1BF3B0FE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v9 = *(TupleTypeMetadata2 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v12 = v23 - v11;
  if (sub_1BF4E8C34())
  {
    sub_1BF4E94D4();
    v13 = sub_1BF4E94C4();
  }

  else
  {
    v13 = MEMORY[0x1E69E7CC8];
  }

  result = sub_1BF4E8C34();
  if (result)
  {
    if (result >= 1)
    {
      v23[0] = v10;
      v27 = a4;
      v15 = 0;
      v16 = *(TupleTypeMetadata2 + 48);
      v25 = a3;
      v26 = (v9 + 16);
      v23[2] = a2 - 8;
      v24 = v16;
      v23[1] = a3 - 8;
      while (1)
      {
        v17 = result;
        if (sub_1BF4E8C14())
        {
          (*(v9 + 16))(v12, a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v15, TupleTypeMetadata2);
        }

        else
        {
          result = sub_1BF4E9304();
          if (v23[0] != 8)
          {
            goto LABEL_19;
          }

          v28 = result;
          (*v26)(v12, &v28, TupleTypeMetadata2);
          swift_unknownObjectRelease();
        }

        result = sub_1BF3B794C(v12, a2, v27);
        if (v18)
        {
          break;
        }

        v19 = result;
        *(v13 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
        (*(*(a2 - 8) + 32))(v13[6] + *(*(a2 - 8) + 72) * result, v12, a2);
        result = (*(*(v25 - 8) + 32))(v13[7] + *(*(v25 - 8) + 72) * v19, &v12[v24]);
        v20 = v13[2];
        v21 = __OFADD__(v20, 1);
        v22 = v20 + 1;
        if (v21)
        {
          goto LABEL_17;
        }

        ++v15;
        v13[2] = v22;
        result = v17;
        if (v17 == v15)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
    }

    __break(1u);
LABEL_19:
    __break(1u);
  }

  else
  {
LABEL_15:

    return v13;
  }

  return result;
}

uint64_t sub_1BF3B1310()
{
  v1 = [*(v0 + OBJC_IVAR____TtC9ChronoKit11WidgetEntry_key) family];

  return MEMORY[0x1EEDE7DF8](v1);
}

uint64_t EnvironmentModifiers.encode(to:)(void *a1)
{
  v2 = v1;
  v51[2] = *MEMORY[0x1E69E9840];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9518, &qword_1BF4F1660);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v48 = &v42 - v6;
  v7 = sub_1BF4E6F14();
  v46 = *(v7 - 8);
  v47 = v7;
  v8 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9548, &qword_1BF4F1688);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v42 - v14;
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BF3BC35C();
  sub_1BF4E9864();
  v17 = v2;
  v18 = *v2;
  LOBYTE(v51[0]) = 0;
  v19 = v49;
  sub_1BF4E9634();
  if (v19)
  {
    result = (*(v12 + 8))(v15, v11);
  }

  else
  {
    v22 = v47;
    v21 = v48;
    v49 = v10;
    v23 = *(v17 + 1);
    LOBYTE(v51[0]) = 1;
    sub_1BF4E9664();
    v51[0] = *(v17 + 2);
    v50 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9528, &qword_1BF4F1670);
    sub_1BF3BC3B0(&unk_1EDC9F168, qword_1EDC9F1A8);
    sub_1BF4E9674();
    v24 = v12;
    v25 = v17[24];
    LOBYTE(v51[0]) = 3;
    sub_1BF4E9634();
    v27 = type metadata accessor for EnvironmentModifiers();
    v28 = v17[v27[9]];
    LOBYTE(v51[0]) = 4;
    sub_1BF4E9634();
    v29 = *&v17[v27[11]];
    LOBYTE(v51[0]) = 6;
    sub_1BF4E9664();
    v45 = objc_opt_self();
    v30 = v27[10];
    v43 = v17;
    sub_1BF3BC63C(*&v17[v30]);
    sub_1BF3901C0(0, &qword_1EDC9F9C0, 0x1E69943A0);
    v31 = sub_1BF4E8B84();

    v51[0] = 0;
    v32 = [v45 archivedDataWithRootObject:v31 requiringSecureCoding:1 error:v51];

    v33 = v51[0];
    if (v32)
    {
      v45 = sub_1BF4E71C4();
      v35 = v34;

      v51[0] = v45;
      v51[1] = v35;
      v44 = v35;
      v50 = 5;
      sub_1BF3B01D8();
      sub_1BF4E9674();
      v37 = v21;
      sub_1BF38C94C(&v43[v27[8]], v21, &qword_1EBDD9518, &qword_1BF4F1660);
      v38 = v46;
      v39 = v21;
      v40 = v22;
      if ((*(v46 + 48))(v39, 1, v22) == 1)
      {
        (*(v24 + 8))(v15, v11);
        sub_1BF3B03C0(v45, v44);
        result = sub_1BF38C9B4(v37, &qword_1EBDD9518, &qword_1BF4F1660);
        goto LABEL_5;
      }

      v41 = v49;
      (*(v38 + 32))(v49, v37, v40);
      LOBYTE(v51[0]) = 7;
      sub_1BF3A43F4(&qword_1EBDD9550, MEMORY[0x1E6968278]);
      sub_1BF4E9674();
      sub_1BF3B03C0(v45, v44);
      (*(v38 + 8))(v41, v40);
    }

    else
    {
      v36 = v33;
      sub_1BF4E6FF4();

      swift_willThrow();
    }

    result = (*(v24 + 8))(v15, v11);
  }

LABEL_5:
  v26 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1BF3B1980(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  sub_1BF3B19C0(a1);
  return v5;
}

uint64_t *sub_1BF3B19C0(uint64_t a1)
{
  v2 = *v1;
  v3 = v1 + *(*v1 + 104);
  *v3 = 0u;
  *(v3 + 16) = 0u;
  *(v3 + 32) = 0;
  v4 = v1 + *(*v1 + 112);
  *v4 = 0;
  *(v4 + 8) = 1;
  *(v1 + *(*v1 + 120)) = 0;
  (*(*(*(v2 + 80) - 8) + 32))(v1 + *(*v1 + 96), a1);
  return v1;
}

void *sub_1BF3B1A94(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD90C8, &qword_1BF4F06A0);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD90D0, &qword_1BF4F06A8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void static NSRunLoop.performAfterSwiftUILayout(_:)(uint64_t a1, uint64_t a2)
{
  BSDispatchQueueAssertMain();
  v4 = CFRunLoopGetCurrent();
  if (!qword_1EDC9F978)
  {
    v5 = CFRunLoopObserverCreate(0, 0xA0uLL, 1u, 0, sub_1BF3AC560, 0);
    v6 = qword_1EDC9F978;
    qword_1EDC9F978 = v5;
    v7 = v5;

    if (!v7)
    {
      goto LABEL_18;
    }

    CFRunLoopAddObserver(v4, v7, *MEMORY[0x1E695E8D0]);
  }

  v8 = CFRunLoopCopyCurrentMode(v4);
  if (v8)
  {
    if (qword_1EDC9F978)
    {
      v9 = v8;
      if (CFRunLoopContainsObserver(v4, qword_1EDC9F978, v8))
      {
LABEL_9:

        goto LABEL_10;
      }

      if (qword_1EDC9F978)
      {
        CFRunLoopAddObserver(v4, qword_1EDC9F978, v9);
        goto LABEL_9;
      }

LABEL_19:
      __break(1u);
      return;
    }

    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_10:
  if (qword_1EDC9F730 != -1)
  {
    swift_once();
  }

  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  swift_beginAccess();
  v11 = off_1EDC9F738;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  off_1EDC9F738 = v11;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v11 = sub_1BF3B1A94(0, v11[2] + 1, 1, v11);
    off_1EDC9F738 = v11;
  }

  v14 = v11[2];
  v13 = v11[3];
  if (v14 >= v13 >> 1)
  {
    v11 = sub_1BF3B1A94((v13 > 1), v14 + 1, 1, v11);
  }

  v11[2] = v14 + 1;
  v15 = &v11[2 * v14];
  v15[4] = sub_1BF3A2C60;
  v15[5] = v10;
  off_1EDC9F738 = v11;
  swift_endAccess();
}

uint64_t sub_1BF3B1DD4()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1BF3B1E44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v3;
  v6 = *v3;
  v18 = *(v3 + qword_1EDC9AF58);
  v10[1] = v6[5];
  v11 = *(v5 + 12);
  v12 = a3;
  v7 = *(v6 + 120);
  v13 = *(v6 + 104);
  v14 = v7;
  v15 = *(v5 + 17);
  v16 = a1;
  v17 = a2;
  v8 = type metadata accessor for UnfairLock();

  sub_1BF38D774(sub_1BF3B1F84, v10, v8, a3, &off_1F3DEE010);
}

uint64_t sub_1BF3B1F84()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 96);
  return v1();
}

uint64_t sub_1BF3B1FAC(uint64_t *a1, void (*a2)(__int128 *))
{
  v4 = *a1;
  v5 = *(*a1 + 96);
  v10 = *(*a1 + 80);
  v11 = v5;
  v6 = *(v4 + 128);
  v12 = *(v4 + 112);
  v13 = v6;
  v7 = type metadata accessor for StatefulStoreMutator();
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(&v11 + 1) = v7;
  *&v12 = swift_getWitnessTable();
  *&v10 = v8;

  a2(&v10);

  return __swift_destroy_boxed_opaque_existential_1Tm(&v10);
}

uint64_t sub_1BF3B20F8@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[2];
  v5 = qword_1EDCA6870;
  swift_beginAccess();
  v6 = *(v4 + v5);
  v7 = v3[10];
  v8 = v3[11];
  v9 = v3[12];
  v10 = v3[16];
  sub_1BF4E8834();
  v11 = v3[14];

  sub_1BF4E8854();

  if (!v13)
  {
    return (*(*(v9 - 8) + 56))(a1, 1, 1, v9);
  }

  sub_1BF4E8854();
}

uint64_t StatefulStoreMutator.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

_DWORD *Assertion.mergingLifetimes(with:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = *(a2 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](a1);
  v11 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v11, v12, a2, v10);
  v13 = (*(v8 + 80) + 40) & ~*(v8 + 80);
  v14 = swift_allocObject();
  *(v14 + 2) = a2;
  *(v14 + 3) = a3;
  *(v14 + 4) = a1;
  (*(v8 + 32))(&v14[v13], v11, a2);
  v15 = type metadata accessor for BlockAssertion();
  v16 = swift_allocObject();
  type metadata accessor for UnfairLock();
  v17 = swift_allocObject();

  result = swift_slowAlloc();
  *result = 0;
  *(v17 + 16) = result;
  v16[2] = v17;
  v16[3] = sub_1BF4A68BC;
  v16[4] = v14;
  a4[3] = v15;
  a4[4] = &protocol witness table for BlockAssertion;
  *a4 = v16;
  return result;
}

uint64_t sub_1BF3B244C()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 32);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1BF3B253C(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8B48, &unk_1BF4EC990);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = v36 - v6;
  if ([a1 isSuggestion])
  {
    v8 = [a1 container];
    if (v8)
    {
      v9 = v8;
      if ([v8 isStack])
      {
        v10 = [v9 uniqueIdentifier];
        v11 = sub_1BF4E8914();
        v13 = v12;

        v41[0] = v11;
        v41[1] = v13;
        v39 = 14906;
        v40 = 0xE200000000000000;
        v37 = 0x413325413325;
        v38 = 0xE600000000000000;
        sub_1BF399080();
        v14 = sub_1BF4E9134();
        v16 = v15;

        strcpy(v41, "suggestion::");
        BYTE5(v41[1]) = 0;
        HIWORD(v41[1]) = -5120;
        MEMORY[0x1BFB58C90](v14, v16);

        return v41[0];
      }
    }
  }

  v18 = [a1 widget];
  v19 = [v18 extensionIdentity];
  v20 = [v18 kind];
  v21 = sub_1BF4E8914();
  v23 = v22;

  v24 = [v18 intentReference];
  v25 = *MEMORY[0x1E69941B8];
  swift_beginAccess();
  v26 = *(v3 + 16);
  v36[0] = v19;
  v26(v7, &v19[v25], v2);
  if (v24)
  {
    v27 = [v24 stableHash];
    v39 = 14906;
    v40 = 0xE200000000000000;
    v37 = v27;
    v28 = sub_1BF4E96A4();
    MEMORY[0x1BFB58C90](v28);

    v30 = v39;
    v29 = v40;
  }

  else
  {
    v30 = 0;
    v29 = 0xE000000000000000;
  }

  v39 = v21;
  v40 = v23;
  v37 = 14906;
  v38 = 0xE200000000000000;
  v36[1] = 0x413325413325;
  v36[2] = 0xE600000000000000;
  sub_1BF399080();
  v31 = sub_1BF4E9134();
  v33 = v32;
  v39 = sub_1BF4E76B4();
  v40 = v34;
  MEMORY[0x1BFB58C90](14906, 0xE200000000000000);
  MEMORY[0x1BFB58C90](v31, v33);

  MEMORY[0x1BFB58C90](v30, v29);

  v17 = v39;
  (*(v3 + 8))(v7, v2);

  return v17;
}

uint64_t WidgetEntryKey.host.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for WidgetEntryKey() + 24);

  return sub_1BF3988F8(v3, a1);
}

uint64_t ReloadTaskPair.__allocating_init()()
{
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = 0;
  return result;
}

uint64_t sub_1BF3B29A4()
{
  os_unfair_lock_assert_owner(*(*(v0 + qword_1EDC9AF58) + 16));
  result = *(v0 + qword_1EDC9AFA0);
  if (result == -1)
  {
    __break(1u);
  }

  else
  {
    *(v0 + qword_1EDC9AFA0) = result + 1;
  }

  return result;
}

uint64_t sub_1BF3B29E8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v80 = a3;
  v92 = a2;
  v8 = *v4;
  v91 = sub_1BF4E7B54();
  v89 = *(v91 - 8);
  v9 = *(v89 + 64);
  MEMORY[0x1EEE9AC00](v91);
  v90 = &v75 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v8 + 80);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v81 = &v75 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v75 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v75 - v20;
  v22 = type metadata accessor for ReloadConfiguration(0);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v88 = &v75 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v75 - v26;
  v28 = *(v8 + 88);
  v29 = *(v8 + 96);
  v30 = *(v8 + 112);
  v31 = *(v8 + 120);
  v32 = *(v8 + 128);
  v33 = *(v8 + 136);
  *&v99 = v11;
  *(&v99 + 1) = v28;
  v86 = v28;
  v95 = v29;
  v100 = v29;
  v85 = v30;
  v101 = v30;
  v102 = v31;
  v84 = v31;
  v83 = v32;
  v103 = v32;
  v104 = v33;
  v82 = v33;
  type metadata accessor for ReloadTaskPair();
  v87 = ReloadTaskPair.__allocating_init()();
  v34 = *(v4 + qword_1EDC994A8);
  v35 = sub_1BF39B43C();
  v96 = v18;
  v93 = a1;
  v94 = v27;
  if (v35)
  {
    v36 = v35;
    v79 = a4;
    v37 = *(v12 + 16);
    v97 = (v12 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v37(v21, a1, v11);

    v38 = sub_1BF4E7B34();
    v39 = sub_1BF4E8E84();
    v40 = os_log_type_enabled(v38, v39);
    v41 = v12;
    v98 = v37;
    if (v40)
    {
      v42 = swift_slowAlloc();
      v77 = swift_slowAlloc();
      *&v99 = v77;
      *v42 = 134349314;
      *(v42 + 4) = v79;
      *(v42 + 12) = 2082;
      v76 = v38;
      v43 = v96;
      v37(v96, v21, v11);
      v78 = v41;
      v44 = *(v41 + 8);
      v44(v21, v11);
      v45 = v39;
      v46 = sub_1BF4E96A4();
      v48 = v47;
      v44(v43, v11);
      v41 = v78;
      v49 = sub_1BF38D65C(v46, v48, &v99);

      *(v42 + 14) = v49;
      v38 = v76;
      _os_log_impl(&dword_1BF389000, v76, v45, "Task [%{public}llu] %{public}s Replacing all tasks", v42, 0x16u);
      v50 = v77;
      __swift_destroy_boxed_opaque_existential_1Tm(v77);
      MEMORY[0x1BFB5A5D0](v50, -1, -1);
      MEMORY[0x1BFB5A5D0](v42, -1, -1);
    }

    else
    {
      (*(v12 + 8))(v21, v11);
    }

    v53 = v81;
    v54 = v36 + *(*v36 + 168);
    sub_1BF3B4CAC(v80, v94);

    a4 = v79;
    a1 = v93;
    v18 = v96;
    v52 = v97;
    v51 = v98;
  }

  else
  {
    sub_1BF3B31BC(v80, v27);
    v51 = *(v12 + 16);
    v52 = (v12 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v41 = v12;
    v53 = v81;
  }

  v55 = qword_1EDC99498;
  v97 = v52;
  v98 = v51;
  v51(v53, a1, v11);
  v81 = v55;
  v56 = sub_1BF4E7B34();
  v57 = sub_1BF4E8E84();
  if (os_log_type_enabled(v56, v57))
  {
    v58 = swift_slowAlloc();
    v80 = swift_slowAlloc();
    *&v99 = v80;
    *v58 = 134349314;
    *(v58 + 4) = a4;
    *(v58 + 12) = 2082;
    v98(v18, v53, v11);
    v59 = *(v41 + 8);
    v59(v53, v11);
    v60 = sub_1BF4E96A4();
    v61 = a4;
    v63 = v62;
    v59(v96, v11);
    v18 = v96;
    v64 = sub_1BF38D65C(v60, v63, &v99);
    a4 = v61;

    *(v58 + 14) = v64;
    _os_log_impl(&dword_1BF389000, v56, v57, "Task [%{public}llu] %{public}s Dispatching new task", v58, 0x16u);
    v65 = v80;
    __swift_destroy_boxed_opaque_existential_1Tm(v80);
    MEMORY[0x1BFB5A5D0](v65, -1, -1);
    v66 = v58;
    a1 = v93;
    MEMORY[0x1BFB5A5D0](v66, -1, -1);
  }

  else
  {
    (*(v41 + 8))(v53, v11);
  }

  *&v67 = v11;
  *(&v67 + 1) = v86;
  v100 = v95;
  v99 = v67;
  v101 = v85;
  v102 = v84;
  v103 = v83;
  v104 = v82;
  type metadata accessor for ReloadTask();
  v98(v18, a1, v11);
  v68 = v94;
  v69 = v88;
  sub_1BF3B31BC(v94, v88);
  v70 = v90;
  (*(v89 + 16))(v90, &v81[v5], v91);
  v71 = v92;

  ReloadTask.__allocating_init(identifier:key:variantKeys:configuration:logger:)(a4, v18, v71, v69, v70);

  v73 = v87;
  sub_1BF3A8AF8(v72);

  sub_1BF3A93B4(v68);
  return v73;
}

uint64_t sub_1BF3B31BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ReloadConfiguration(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t ReloadTask.__allocating_init(identifier:key:variantKeys:configuration:logger:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(v5 + 48);
  v12 = *(v5 + 52);
  v13 = swift_allocObject();
  ReloadTask.init(identifier:key:variantKeys:configuration:logger:)(a1, a2, a3, a4, a5);
  return v13;
}

uint64_t sub_1BF3B32A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *&v25 = a1;
  v5 = *v3;
  v6 = *(*v3 + 80);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v23 - v9;
  os_unfair_lock_assert_owner(*(*(v3 + qword_1EDC9AF58) + 16));
  v11 = sub_1BF39B43C();
  if (v11)
  {
    v12 = v11;
    v13 = sub_1BF39B43C();
    if (v13)
    {
      v24 = v10;
      v14 = *(*v12 + 160);
      v15 = *(v12 + v14);
      if (v15 == *(v13 + *(*v13 + 160)))
      {
        v16 = sub_1BF3AB3E8();
        if (v16)
        {
          v23 = v16;
          v17 = sub_1BF3AB3E8();
          v10 = v24;
          if (v17 && (v18 = *(v23 + *(*v23 + 160)), v18 != *(v17 + *(*v17 + 160))))
          {

            sub_1BF3B61AC(v18);

            v12 = 0;
          }

          else
          {
            v12 = 0;
          }

          goto LABEL_15;
        }

        v12 = 0;
      }

      else
      {

        sub_1BF3B61AC(v15);
        if (sub_1BF3AB3E8())
        {
          v19 = *(v12 + v14);

          sub_1BF3B61AC(v19);
        }
      }

      v10 = v24;
      goto LABEL_15;
    }
  }

  v12 = sub_1BF39B43C();
  if (v12)
  {
  }

LABEL_15:
  (*(v7 + 16))(v10, v25, v6);
  v31 = a3;
  swift_beginAccess();
  v20 = *(v5 + 104);

  v26 = v6;
  v27 = *(v5 + 88);
  v28 = v20;
  v21 = *(v5 + 128);
  v25 = *(v5 + 112);
  v29 = v25;
  v30 = v21;
  type metadata accessor for ReloadTaskPair();
  sub_1BF4E8834();
  sub_1BF4E8864();
  swift_endAccess();
  return v12;
}

uint64_t ReloadTaskPairResolver.deinit()
{
  v1 = qword_1EDC99498;
  v2 = sub_1BF4E7B54();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + qword_1EDC994A8);

  return v0;
}

uint64_t sub_1BF3B3664(uint64_t a1, uint64_t a2)
{
  v3[3] = a1;
  v3[4] = a2;
  return sub_1BF3B1E44(sub_1BF3B1F64, v3, MEMORY[0x1E69E7CA8] + 8);
}

uint64_t sub_1BF3B36F0(uint64_t a1, uint64_t a2)
{
  v26 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8BF8, &qword_1BF4ED520);
  v27 = *(v3 - 8);
  v4 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v23 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8AF8, &qword_1BF4EC370);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v7 - 8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v23 - v12;
  v14 = sub_1BF4E8424();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v23 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BF38C8B4(&qword_1EDC9D5C0, &qword_1EBDD8BF8, &qword_1BF4ED520);
  sub_1BF4E7034();
  v24 = v18;
  v25 = a1;
  sub_1BF4E7614();
  (*(v27 + 8))(v6, v3);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    return sub_1BF38C9B4(v13, &qword_1EBDD8AF8, &qword_1BF4EC370);
  }

  v20 = v24;
  (*(v15 + 32))(v24, v13, v14);
  v21 = sub_1BF4E8404();
  v22 = v25;
  sub_1BF4C6D38(v21);

  (*(v15 + 56))(v11, 1, 1, v14);
  sub_1BF3F7A24(v22, 0xD00000000000002DLL, 0x80000001BF4F9630, v11);
  sub_1BF38C9B4(v11, &qword_1EBDD8AF8, &qword_1BF4EC370);
  return (*(v15 + 8))(v20, v14);
}

uint64_t sub_1BF3B3A74(uint64_t a1, uint64_t a2)
{
  os_unfair_lock_assert_owner(*(*(v2 + qword_1EDC9AF58) + 16));
  result = (*(*v2 + 1544))(a1, a2);
  if (result)
  {
    result = sub_1BF3B3B34(a1, a2);
    if (result)
    {
      sub_1BF397638(result);
    }
  }

  return result;
}

uint64_t sub_1BF3B3B34(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v79 = a2;
  v5 = *v2;
  v82 = sub_1BF4E7B54();
  v81 = *(v82 - 8);
  v6 = *(v81 + 64);
  MEMORY[0x1EEE9AC00](v82);
  v80 = &v62[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = type metadata accessor for ReloadConfiguration(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v62[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = *(v5 + 80);
  v75 = *(v12 - 8);
  v13 = *(v75 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v67 = &v62[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v16);
  v73 = &v62[-v17];
  os_unfair_lock_assert_owner(*(*(v3 + qword_1EDC9AF58) + 16));
  v18 = qword_1EDC9AF88;
  swift_beginAccess();
  v19 = *(v3 + v18);
  v20 = *(v5 + 88);
  v85 = *(v5 + 96);
  v21 = *(v5 + 112);
  v22 = *(v5 + 120);
  v23 = *(v5 + 128);
  v24 = *(v5 + 136);

  *&v87 = v12;
  *(&v87 + 1) = v20;
  v84 = v20;
  v88 = v85;
  v89 = v21;
  v90 = v22;
  v77 = v22;
  v91 = v23;
  v92 = v24;
  v76 = v24;
  type metadata accessor for ReloadTaskPair();
  sub_1BF4E8854();

  if (v87)
  {
    v78 = v87;
  }

  else
  {
    v78 = ReloadTaskPair.__allocating_init()();
  }

  v83 = sub_1BF3B29A4();
  v25 = qword_1EDC9AF48;
  swift_beginAccess();
  v26 = *(v3 + v25);

  sub_1BF4E8854();

  v74 = v87;
  v27 = qword_1EDCA6870;
  swift_beginAccess();
  v28 = v21;
  v29 = *(v3 + v27);
  v30 = v85;
  sub_1BF4E8834();

  result = sub_1BF4E8854();
  v72 = v87;
  if (!v87)
  {
    __break(1u);
    goto LABEL_11;
  }

  v71 = v11;

  v32 = qword_1EDCA6870;
  swift_beginAccess();
  v33 = *(v3 + v32);

  v70 = v28;
  result = sub_1BF4E8854();
  v34 = v87;
  if (!v87)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  v35 = nullsub_1(v34, v84, v30, v23);

  v86 = v35;
  sub_1BF4E87B4();
  swift_getWitnessTable();
  v69 = sub_1BF4E8D94();
  v36 = qword_1EDC9AF50;
  v37 = v75;
  v38 = *(v75 + 16);
  v39 = v73;
  v38(v73, a1, v12);
  v68 = v36;
  v40 = sub_1BF4E7B34();
  v41 = sub_1BF4E8E84();
  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    v66 = a1;
    v43 = v42;
    v44 = swift_slowAlloc();
    v65 = v23;
    v64 = v44;
    *&v87 = v44;
    *v43 = 134349314;
    *(v43 + 4) = v83;
    *(v43 + 12) = 2082;
    v63 = v41;
    v45 = v67;
    v38(v67, v39, v12);
    v46 = *(v37 + 8);
    v46(v39, v12);
    v47 = sub_1BF4E96A4();
    v49 = v48;
    v46(v45, v12);
    v50 = sub_1BF38D65C(v47, v49, &v87);
    v51 = v83;

    *(v43 + 14) = v50;
    _os_log_impl(&dword_1BF389000, v40, v63, "Task [%{public}llu] %{public}s Preparing reload", v43, 0x16u);
    v52 = v64;
    __swift_destroy_boxed_opaque_existential_1Tm(v64);
    v23 = v65;
    MEMORY[0x1BFB5A5D0](v52, -1, -1);
    v53 = v43;
    a1 = v66;
    MEMORY[0x1BFB5A5D0](v53, -1, -1);
  }

  else
  {
    (*(v37 + 8))(v39, v12);

    v51 = v83;
  }

  v54 = *(v3 + qword_1EDC9AF70);
  v55 = v71;
  sub_1BF3B43B0();

  *&v56 = v12;
  *(&v56 + 1) = v84;
  v88 = v85;
  v87 = v56;
  v89 = v70;
  v90 = v77;
  v91 = v23;
  v92 = v76;
  type metadata accessor for ReloadTaskPairResolver();
  v57 = *(v3 + qword_1EDC9AFC0);
  v58 = v80;
  (*(v81 + 16))(v80, v3 + v68, v82);
  v59 = v78;
  ReloadTaskPairResolver.__allocating_init(taskPair:allowDebounce:logger:)(v78, v57, v58);
  LOBYTE(v87) = v74;

  v60 = sub_1BF3B460C(a1, v69, v55, v51, &v87);

  v61 = sub_1BF3B32A8(a1, v59, v60);

  sub_1BF45EABC(v55, type metadata accessor for ReloadConfiguration);
  return v61;
}

uint64_t sub_1BF3B43F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *(*v3 + 160);
  v9 = *(v8 - 8);
  v10 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v12 = &v14 - v11;
  (*(v9 + 16))(&v14 - v11, v3 + *(v7 + 176), v8);
  (*(*(v7 + 168) + 48))(a1, a2, a3, v8);
  return (*(v9 + 8))(v12, v8);
}

uint64_t ReloadTaskPairResolver.__allocating_init(taskPair:allowDebounce:logger:)(uint64_t a1, char a2, uint64_t a3)
{
  v7 = *(v3 + 48);
  v8 = *(v3 + 52);
  v9 = swift_allocObject();
  *(v9 + qword_1EDC994A8) = a1;
  *(v9 + qword_1EDC994A0) = a2;
  v10 = qword_1EDC99498;
  v11 = sub_1BF4E7B54();
  (*(*(v11 - 8) + 32))(v9 + v10, a3, v11);
  return v9;
}

uint64_t sub_1BF3B460C(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4, char *a5)
{
  v10 = *a5;
  if (sub_1BF3B4708(a3, a2, &v10))
  {

    return sub_1BF3B29E8(a1, a2, a3, a4);
  }

  else if (sub_1BF4CA89C())
  {

    return sub_1BF4C9D84(a1, a2, a3, a4);
  }

  else
  {
    sub_1BF4CAA08(a1, a3, a4);
  }
}

uint64_t sub_1BF3B4708(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v6 = *v3;
  v7 = type metadata accessor for ReloadConfiguration(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a3 == 3)
  {
    v11 = 0;
    return v11 & 1;
  }

  v12 = *(v3 + qword_1EDC994A8);
  v13 = sub_1BF39B43C();
  if (v13 && (v14 = *(v7 + 24), *(v13 + *(*v13 + 168) + v14) >> 61 == 3) && *(a1 + v14) >> 61 == 3 || !sub_1BF39B43C())
  {
LABEL_9:
    v11 = 1;
    return v11 & 1;
  }

  result = sub_1BF39B43C();
  if (result)
  {
    sub_1BF3B31BC(result + *(*result + 168), v10);
    v16 = sub_1BF3C4704(v10);
    sub_1BF3A93B4(v10);
    if (v16)
    {
      goto LABEL_9;
    }

    result = sub_1BF39B43C();
    if (result)
    {
      v17 = *(result + *(*result + 152));
      v18 = *(v6 + 88);
      v19 = *(v6 + 128);

      v20 = sub_1BF4E8D54();

      v11 = v20 ^ 1;
      return v11 & 1;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

char *ReloadTask.init(identifier:key:variantKeys:configuration:logger:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v25 = a4;
  v26 = a5;
  v10 = *v5;
  v11 = sub_1BF4E80A4();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = &v6[*(v10 + 176)];
  *v16 = 0;
  v16[8] = 1;
  v17 = *(*v6 + 184);
  sub_1BF4E8084();
  v18 = sub_1BF4E8074();
  (*(v12 + 8))(v15, v11);
  *&v6[v17] = v18;
  v19 = *(*v6 + 200);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9010, &qword_1BF4F0108);
  v20 = swift_allocObject();
  *&v6[v19] = v20;
  *(v20 + 16) = 0;
  v21 = &v6[*(*v6 + 208)];
  *v21 = 0;
  *(v21 + 1) = 0;
  *&v6[*(*v6 + 216)] = 0;
  (*(*(*(v10 + 80) - 8) + 32))(&v6[*(*v6 + 144)], a2);
  *&v6[*(*v6 + 152)] = a3;
  *&v6[*(*v6 + 160)] = a1;
  sub_1BF3B4B88(v25, &v6[*(*v6 + 168)]);
  v22 = *(*v6 + 192);
  v23 = sub_1BF4E7B54();
  (*(*(v23 - 8) + 32))(&v6[v22], v26, v23);
  return v6;
}

uint64_t sub_1BF3B4B88(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ReloadConfiguration(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t ReloadTaskPairResolver.__deallocating_deinit()
{
  ReloadTaskPairResolver.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1BF3B4C44(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BF3B4CAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v56 = a2;
  v5 = sub_1BF4E7334();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v52 = &v47 - v11;
  v12 = type metadata accessor for ReloadConfiguration.ReloadType(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v50 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v47 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v47 - v19;
  v21 = type metadata accessor for ReloadConfiguration(0);
  v22 = v21[6];
  v23 = *(v3 + v22);
  v57 = *(a1 + v22);
  v24 = v57;
  v58 = v23;
  sub_1BF39C510(v23);
  sub_1BF39C510(v24);
  sub_1BF3B514C(&v58, &v57, &v59);
  sub_1BF39C9A4(v57);
  sub_1BF39C9A4(v58);
  v25 = v21[5];
  if (*(v3 + v25))
  {
    v26 = 1;
  }

  else
  {
    v26 = *(a1 + v25);
  }

  v55 = v26;
  v51 = v9;
  v27 = v21[8];
  if (*(v3 + v27))
  {
    v28 = 1;
  }

  else
  {
    v28 = *(a1 + v27);
  }

  v54 = v28;
  v53 = v59;
  sub_1BF39B31C(v3, v20, type metadata accessor for ReloadConfiguration.ReloadType);
  v29 = *(v6 + 48);
  if (v29(v20, 1, v5) == 1)
  {
    v30 = v56;
    result = (*(v6 + 56))(v56, 1, 1, v5);
    v32 = *(a1 + v21[7]);
    v33 = v21[9];
    v34 = *(a1 + v33);
    v35 = (v30 + v33);
    goto LABEL_21;
  }

  v48 = v22;
  v36 = v52;
  v49 = *(v6 + 32);
  v49(v52, v20, v5);
  v37 = a1;
  sub_1BF39B31C(a1, v17, type metadata accessor for ReloadConfiguration.ReloadType);
  if (v29(v17, 1, v5) == 1)
  {
    (*(v6 + 8))(v36, v5);
    v30 = v56;
    result = (*(v6 + 56))(v56, 1, 1, v5);
LABEL_13:
    v32 = *(a1 + v21[7]);
    v39 = v21[9];
    v34 = *(a1 + v39);
    v35 = (v30 + v39);
    goto LABEL_21;
  }

  v38 = v51;
  v49(v51, v17, v5);
  v30 = v56;
  if (*(a1 + v48) >> 61 == 3)
  {
    (*(v6 + 8))(v52, v5);
    v49(v30, v38, v5);
    result = (*(v6 + 56))(v30, 0, 1, v5);
    goto LABEL_13;
  }

  sub_1BF3B5254();
  v40 = v52;
  v41 = sub_1BF4E88A4();
  v42 = (v41 & 1) == 0;
  if (v41)
  {
    v43 = v40;
  }

  else
  {
    v43 = v38;
  }

  if (v42)
  {
    v44 = v40;
  }

  else
  {
    v44 = v38;
  }

  (*(v6 + 8))(v43, v5);
  v45 = v50;
  v49(v50, v44, v5);
  (*(v6 + 56))(v45, 0, 1, v5);
  v32 = *(v37 + v21[7]);
  v46 = v21[9];
  v34 = *(v37 + v46);
  v35 = (v30 + v46);
  result = sub_1BF38DAD0(v45, v30);
LABEL_21:
  *(v30 + v21[5]) = v55;
  *(v30 + v21[7]) = v32;
  *(v30 + v21[6]) = v53;
  *(v30 + v21[8]) = v54;
  *v35 = v34;
  return result;
}

unint64_t sub_1BF3B514C@<X0>(unint64_t *a1@<X0>, unint64_t *a2@<X1>, unint64_t *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  v13 = 0xA000000000000030;
  v14 = v5;
  result = static ReloadConfiguration.ReloadReason.== infix(_:_:)(&v14, &v13);
  if (result & 1) != 0 || (v13 = 0xA000000000000030, v14 = v4, result = static ReloadConfiguration.ReloadReason.== infix(_:_:)(&v14, &v13), (result))
  {
    *a3 = 0xA000000000000030;
  }

  else
  {
    v7 = __ROR8__(v5 + 0x6000000000000000, 3);
    v8 = v5 >> 61 != 5 || v7 > 0xB;
    v9 = (1 << v7) & 0x84F;
    v10 = v8 || v9 == 0;
    if (v10 && v4 >> 61 == 5 && (v11 = __ROR8__(v4 + 0x6000000000000000, 3), v11 <= 0xB) && ((1 << v11) & 0x84F) != 0)
    {
      *a3 = v4;
      v12 = v4;
    }

    else
    {
      *a3 = v5;
      v12 = v5;
    }

    return sub_1BF39C510(v12);
  }

  return result;
}

unint64_t sub_1BF3B5254()
{
  result = qword_1EDC9F0C8;
  if (!qword_1EDC9F0C8)
  {
    sub_1BF4E7334();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC9F0C8);
  }

  return result;
}

uint64_t sub_1BF3B52AC(uint64_t a1, uint64_t a2)
{
  if (!sub_1BF3B530C())
  {
    return 0;
  }

  return sub_1BF3B5410(a1, a2);
}

BOOL sub_1BF3B530C()
{
  v1 = *v0;
  v2 = qword_1EDC99B78;
  swift_beginAccess();
  v3 = *(v0 + v2);
  v4 = v1[197];
  v5 = v1[198];
  v6 = v1[203];
  sub_1BF4E8834();
  v7 = v1[201];

  sub_1BF4E8854();

  if (v9)
  {
  }

  return v9 != 0;
}

uint64_t sub_1BF3B5410(uint64_t a1, uint64_t a2)
{
  v96 = a2;
  v99 = *v2;
  v4 = v99;
  v5 = v99[10];
  v95 = *(v5 - 8);
  v6 = *(v95 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v91 = &v87[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v8);
  v94 = &v87[-v9];
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v87[-v11];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD95C8, &qword_1BF4F1AB0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v93 = &v87[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v87[-v17];
  v19 = type metadata accessor for ReloadConfiguration(0);
  v97 = *(v19 - 8);
  v98 = v19;
  v20 = *(v97 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v87[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v87[-v24];
  MEMORY[0x1EEE9AC00](v26);
  v92 = &v87[-v27];
  os_unfair_lock_assert_owner(*(*&v2[qword_1EDC9AF58] + 16));
  v28 = qword_1EDC9AF48;
  swift_beginAccess();
  v29 = *&v2[v28];
  v30 = v4[14];

  sub_1BF4E8854();

  if (v101 == 5)
  {
    return 0;
  }

  v32 = qword_1EDC9AF48;
  swift_beginAccess();
  v33 = *&v2[v32];

  sub_1BF4E8854();

  if (v101 == 4)
  {
    v90 = a1;
    v34 = qword_1EDC9AF90;
    swift_beginAccess();
    v35 = *&v2[v34];
    v36 = v90;

    v37 = v98;
    sub_1BF4E8854();

    if ((*(v97 + 48))(v18, 1, v37) == 1)
    {
      sub_1BF38C9B4(v18, &qword_1EBDD95C8, &qword_1BF4F1AB0);
      v38 = v96;
    }

    else
    {
      v47 = v18;
      v48 = v92;
      sub_1BF3B4C44(v47, v92, type metadata accessor for ReloadConfiguration);
      v38 = v96;
      if ((sub_1BF3C4704(v48) & 1) == 0)
      {
        v70 = v95;
        v71 = *(v95 + 16);
        v71(v12, v36, v5);
        sub_1BF39B31C(v38, v25, type metadata accessor for ReloadConfiguration);
        v72 = sub_1BF4E7B34();
        v73 = sub_1BF4E8E84();
        if (os_log_type_enabled(v72, v73))
        {
          v74 = swift_slowAlloc();
          v98 = swift_slowAlloc();
          v100[0] = v98;
          *v74 = 136446466;
          v75 = v94;
          v71(v94, v12, v5);
          v76 = *(v70 + 8);
          v76(v12, v5);
          v77 = v99[13];
          v78 = sub_1BF4E96A4();
          v80 = v79;
          v76(v75, v5);
          v81 = sub_1BF38D65C(v78, v80, v100);

          *(v74 + 4) = v81;
          *(v74 + 12) = 2082;
          v82 = ReloadConfiguration.description.getter();
          v84 = v83;
          sub_1BF45EABC(v25, type metadata accessor for ReloadConfiguration);
          v85 = sub_1BF38D65C(v82, v84, v100);

          *(v74 + 14) = v85;
          _os_log_impl(&dword_1BF389000, v72, v73, "%{public}s Skipping reload with configuration: %{public}s because entry is paused, and prior task has higher priority.", v74, 0x16u);
          v86 = v98;
          swift_arrayDestroy();
          MEMORY[0x1BFB5A5D0](v86, -1, -1);
          MEMORY[0x1BFB5A5D0](v74, -1, -1);
        }

        else
        {
          (*(v70 + 8))(v12, v5);

          sub_1BF45EABC(v25, type metadata accessor for ReloadConfiguration);
        }

        sub_1BF45EABC(v92, type metadata accessor for ReloadConfiguration);
        return 0;
      }

      sub_1BF45EABC(v48, type metadata accessor for ReloadConfiguration);
    }

    v49 = v95;
    v50 = v91;
    v95 = *(v95 + 16);
    (v95)(v91, v90, v5);
    sub_1BF39B31C(v38, v22, type metadata accessor for ReloadConfiguration);
    v92 = v2;
    v51 = sub_1BF4E7B34();
    v52 = sub_1BF4E8E84();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = v50;
      v54 = swift_slowAlloc();
      v89 = swift_slowAlloc();
      v100[0] = v89;
      *v54 = 136446466;
      v88 = v52;
      v55 = v94;
      (v95)(v94, v53, v5);
      v56 = *(v49 + 8);
      v56(v53, v5);
      v57 = v99[13];
      v58 = sub_1BF4E96A4();
      v60 = v59;
      v56(v55, v5);
      v61 = v55;
      v62 = sub_1BF38D65C(v58, v60, v100);

      *(v54 + 4) = v62;
      *(v54 + 12) = 2082;
      v63 = ReloadConfiguration.description.getter();
      v65 = v64;
      sub_1BF45EABC(v22, type metadata accessor for ReloadConfiguration);
      v66 = sub_1BF38D65C(v63, v65, v100);
      v38 = v96;

      *(v54 + 14) = v66;
      _os_log_impl(&dword_1BF389000, v51, v88, "%{public}s Delaying reload with configuration: %{public}s because entry is paused.", v54, 0x16u);
      v67 = v89;
      swift_arrayDestroy();
      MEMORY[0x1BFB5A5D0](v67, -1, -1);
      MEMORY[0x1BFB5A5D0](v54, -1, -1);
    }

    else
    {
      (*(v49 + 8))(v50, v5);

      sub_1BF45EABC(v22, type metadata accessor for ReloadConfiguration);
      v61 = v94;
    }

    (v95)(v61, v90, v5);
    v68 = v38;
    v69 = v93;
    sub_1BF39B31C(v68, v93, type metadata accessor for ReloadConfiguration);
    (*(v97 + 56))(v69, 0, 1, v98);
    swift_beginAccess();
    sub_1BF4E8834();
    sub_1BF4E8864();
    swift_endAccess();
    return 0;
  }

  v39 = qword_1EDCA6870;
  swift_beginAccess();
  v40 = *&v2[v39];
  v41 = v99[11];
  v42 = v99[12];
  v43 = v99[16];
  sub_1BF4E8834();

  sub_1BF4E8854();

  result = v101;
  if (v101)
  {

    swift_beginAccess();
    if (v2[176])
    {
      return 1;
    }

    v44 = sub_1BF4E7B34();
    v45 = sub_1BF4E8E84();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      *v46 = 0;
      _os_log_impl(&dword_1BF389000, v44, v45, "StatefulStore is disabled", v46, 2u);
      MEMORY[0x1BFB5A5D0](v46, -1, -1);
    }

    return 0;
  }

  return result;
}

uint64_t sub_1BF3B5EEC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BF4E7334();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ReloadConfiguration.ReloadType(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8B30, &qword_1BF4EC590);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v23 - v15;
  v18 = *(v17 + 56);
  sub_1BF39B31C(a1, &v23 - v15, type metadata accessor for ReloadConfiguration.ReloadType);
  sub_1BF39B31C(a2, &v16[v18], type metadata accessor for ReloadConfiguration.ReloadType);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) != 1)
  {
    sub_1BF39B31C(v16, v12, type metadata accessor for ReloadConfiguration.ReloadType);
    if (v19(&v16[v18], 1, v4) != 1)
    {
      (*(v5 + 32))(v8, &v16[v18], v4);
      v20 = sub_1BF4E72D4();
      v21 = *(v5 + 8);
      v21(v8, v4);
      v21(v12, v4);
      sub_1BF3B8DEC(v16);
      return v20 & 1;
    }

    (*(v5 + 8))(v12, v4);
    goto LABEL_6;
  }

  if (v19(&v16[v18], 1, v4) != 1)
  {
LABEL_6:
    sub_1BF38C9B4(v16, &qword_1EBDD8B30, &qword_1BF4EC590);
    v20 = 0;
    return v20 & 1;
  }

  sub_1BF3B8DEC(v16);
  v20 = 1;
  return v20 & 1;
}

uint64_t sub_1BF3B61AC(uint64_t a1)
{
  v2 = v1 + *(*v1 + 176);
  *v2 = a1;
  *(v2 + 8) = 0;
  return sub_1BF3B7C08();
}

uint64_t sub_1BF3B61EC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8FD8, &qword_1BF4EFAC8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BF3B6254@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC9ChronoKit12ControlEntry_protectionType;
  swift_beginAccess();
  v5 = sub_1BF4E8424();
  return (*(*(v5 - 8) + 16))(a1, v3 + v4, v5);
}

uint64_t ReloadConfiguration.cost.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for ReloadConfiguration(0);
  *a1 = *(v1 + *(result + 20));
  return result;
}

uint64_t TimelineKey.matches(widget:)(void *a1)
{
  v4 = *v1;
  v3 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  sub_1BF3901C0(0, &qword_1EDC9FDA8, 0x1E69E58C0);
  v7 = [a1 extensionIdentity];
  v8 = sub_1BF4E90A4();

  if ((v8 & 1) == 0)
  {
    goto LABEL_7;
  }

  v9 = [a1 kind];
  v10 = sub_1BF4E8914();
  v12 = v11;

  if (v3 == v10 && v5 == v12)
  {
  }

  else
  {
    v14 = sub_1BF4E9734();

    if ((v14 & 1) == 0)
    {
LABEL_7:
      v15 = 0;
      return v15 & 1;
    }
  }

  v16 = v6;
  v17 = [a1 intentReference];
  v18 = v17;
  if (v6)
  {
    if (v17)
    {
      sub_1BF3901C0(0, &unk_1EDC96360, 0x1E69942D0);
      v15 = sub_1BF4E90A4();
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    if (!v17)
    {
      v15 = 1;
      return v15 & 1;
    }

    v15 = 0;
    v16 = v17;
  }

  return v15 & 1;
}

void sub_1BF3B64C4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, int a5)
{
  v142 = a5;
  v136 = a4;
  v8 = *a1;
  v9 = *a1;
  v10 = *(*a1 + 128);
  v173 = *(*a1 + 120);
  v174 = v10;
  v11 = v10;
  v137 = v10;
  v168 = *(v9 + 80);
  v150 = v9;
  v167 = *(v9 + 104);
  aBlock = v168;
  v172 = v167;
  v164 = type metadata accessor for VariantReloadResult();
  v148 = *(v164 - 8);
  v12 = *(v148 + 64);
  MEMORY[0x1EEE9AC00](v164);
  v141 = &v127 - v13;
  aBlock = v168;
  v172 = v167;
  v135 = v173;
  v174 = v11;
  v163 = type metadata accessor for VariantIdentifier();
  v145 = *(v163 - 8);
  v14 = *(v145 + 64);
  MEMORY[0x1EEE9AC00](v163);
  v140 = &v127 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v170 = &v127 - v17;
  v18 = *(&v168 + 1);
  v143 = *(*(&v168 + 1) - 8);
  v19 = *(v143 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v152 = &v127 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v169 = &v127 - v23;
  v24 = sub_1BF4E90F4();
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v159 = &v127 - v26;
  v147 = sub_1BF4E7FF4();
  v146 = *(v147 - 8);
  v27 = *(v146 + 64);
  MEMORY[0x1EEE9AC00](v147);
  v139 = (&v127 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  v144 = sub_1BF4E8064();
  v138 = *(v144 - 1);
  v29 = *(v138 + 64);
  MEMORY[0x1EEE9AC00](v144);
  v128 = &v127 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = v168;
  v166 = *(&v167 + 1);
  v32 = v167;
  v132 = type metadata accessor for StatefulStoreReloadEvent();
  v131 = *(v132 - 8);
  v33 = *(v131 + 64);
  MEMORY[0x1EEE9AC00](v132);
  v134 = &v127 - v34;
  v35 = type metadata accessor for ReloadConfiguration(0);
  v36 = *(*(v35 - 8) + 64);
  MEMORY[0x1EEE9AC00](v35 - 8);
  v155 = (&v127 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v38);
  v40 = &v127 - v39;
  v41 = *(v31 - 8);
  v42 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v43);
  v151 = &v127 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v45);
  v154 = &v127 - v46;
  MEMORY[0x1EEE9AC00](v47);
  v49 = &v127 - v48;
  v130 = type metadata accessor for StatefulStoreReloadVariantsEvent();
  v129 = *(v130 - 8);
  v50 = *(v129 + 64);
  v51 = MEMORY[0x1EEE9AC00](v130);
  v133 = &v127 - v52;
  v53 = *(v41 + 16);
  v157 = *(v8 + 144);
  v165 = v49;
  v54 = v49;
  v55 = v137;
  v158 = v41 + 16;
  v156 = v53;
  (v53)(v54, a1 + v157, v31, v51);
  *&aBlock = *(a1 + *(*a1 + 152));
  v56 = aBlock;
  sub_1BF4E8D84();
  v162 = v56;
  swift_bridgeObjectRetain_n();
  swift_getWitnessTable();
  v57 = v40;
  v149 = sub_1BF4E8CB4();
  v58 = *(*a1 + 168);
  v161 = a1;
  sub_1BF39B31C(a1 + v58, v40, type metadata accessor for ReloadConfiguration);
  swift_beginAccess();
  v60 = *(a2 + 16);
  v59 = *(a2 + 24);
  *&v168 = a2;
  v61 = *(a2 + 32);
  v160 = v18;
  *&v167 = v32;
  if (v61 == 255)
  {
    v65 = 0;
    v64 = v166;
  }

  else
  {
    v62 = *(v150 + 96);
    v63 = *(v150 + 136);
    *&aBlock = v31;
    *(&aBlock + 1) = v18;
    *&v172 = v62;
    *(&v172 + 1) = v32;
    v64 = v166;
    v173 = v166;
    v174 = v135;
    v175 = v55;
    v176 = v63;
    type metadata accessor for StatefulStore.StatefulStoreReloadError();
    swift_getWitnessTable();
    v18 = v160;
    v65 = swift_allocError();
    *v66 = v60;
    *(v66 + 8) = v59;
    *(v66 + 16) = v61;
  }

  StatefulStoreReloadVariantsEvent.init(key:variantKeys:configuration:error:)(v165, v149, v57, v65, v31, v133);
  v67 = a3[5];
  sub_1BF45E758(v60, v59, v61);
  sub_1BF4E7C14();
  v68 = v161;
  v156(v154, v161 + v157, v31);
  sub_1BF39B31C(v68 + v58, v155, type metadata accessor for ReloadConfiguration);
  v69 = v168;
  swift_beginAccess();
  v70 = *(v69 + 16);
  v71 = *(v69 + 24);
  v72 = *(v69 + 32);
  v165 = v31;
  if (v72 == 255)
  {
    v76 = 0;
    v75 = v135;
  }

  else
  {
    v73 = *(v150 + 96);
    v74 = *(v150 + 136);
    *&aBlock = v31;
    *(&aBlock + 1) = v18;
    *&v172 = v73;
    *(&v172 + 1) = v167;
    v75 = v135;
    v173 = v64;
    v174 = v135;
    v175 = v137;
    v176 = v74;
    type metadata accessor for StatefulStore.StatefulStoreReloadError();
    swift_getWitnessTable();
    v31 = v165;
    v76 = swift_allocError();
    *v77 = v70;
    *(v77 + 8) = v71;
    *(v77 + 16) = v72;
  }

  StatefulStoreReloadEvent.init(key:configuration:error:)(v154, v155, v76, v31, v134);
  v78 = a3[3];

  sub_1BF45E758(v70, v71, v72);
  sub_1BF4E7C14();

  v79 = v168;
  swift_beginAccess();
  if (*(v79 + 32) == 255)
  {
    v82 = swift_allocObject();
    *(v82 + 16) = 0;
    v83 = *(a3 + qword_1EDC9AF58);
    os_unfair_lock_lock(*(v83 + 16));
    v84 = v161;
    sub_1BF3B8E48(v82 + 16, a3, v161);
    *&v168 = 0;
    os_unfair_lock_unlock(*(v83 + 16));
    v155 = *(a3 + qword_1EDC9AFD0);
    v85 = swift_allocObject();
    *(v85 + 2) = v82;
    *(v85 + 3) = a3;
    *(v85 + 4) = v84;
    v173 = sub_1BF3B7F80;
    v174 = v85;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    *&v172 = sub_1BF38E868;
    *(&v172 + 1) = &block_descriptor_64;
    v86 = _Block_copy(&aBlock);

    v87 = v128;
    sub_1BF4E8014();
    v178 = MEMORY[0x1E69E7CC0];
    sub_1BF3983D4(&qword_1EDC9F980, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8EB8, &unk_1BF4F0890);
    sub_1BF38C8B4(&qword_1EDC9F190, &qword_1EBDD8EB8, &unk_1BF4F0890);
    v88 = v139;
    v89 = v147;
    sub_1BF4E91A4();
    MEMORY[0x1BFB591B0](0, v87, v88, v86);
    _Block_release(v86);
    (*(v146 + 8))(v88, v89);
    (*(v138 + 8))(v87, v144);

    v75 = v135;
    v81 = v137;
    v18 = v160;
    v80 = v168;
  }

  else
  {
    v80 = 0;
    v81 = v137;
  }

  v90 = v162;
  v91 = v159;
  if ((v162 & 0xC000000000000001) != 0)
  {
    sub_1BF4E91F4();
    sub_1BF4E8D64();
    v92 = *(&aBlock + 1);
    v90 = aBlock;
    v154 = *(&v172 + 1);
    v93 = v172;
    v94 = v173;
  }

  else
  {
    v154 = 0;
    v95 = -1 << *(v162 + 32);
    v92 = v162 + 56;
    v96 = ~v95;
    v97 = -v95;
    if (v97 < 64)
    {
      v98 = ~(-1 << v97);
    }

    else
    {
      v98 = -1;
    }

    v94 = v98 & *(v162 + 56);
    v93 = v96;
  }

  v149 = qword_1EDC9AF58;
  v155 = (v143 + 56);
  v128 = v93;
  v99 = (v93 + 64) >> 6;
  v100 = (v143 + 16);
  v146 = v143 + 32;
  v139 = (v145 + 16);
  v138 = v148 + 8;
  v145 += 8;
  v144 = (v143 + 8);
  v162 = v90;
  v150 = v92;
  v148 = v99;
  v153 = a3;
  v147 = v143 + 16;
  while (v90 < 0)
  {
    if (!sub_1BF4E9234())
    {
LABEL_34:
      (*v155)(v91, 1, 1, v18);
      sub_1BF39A9CC();
      (*(v131 + 8))(v134, v132);
      (*(v129 + 8))(v133, v130);
      return;
    }

    *&v168 = v80;
    v102 = v81;
    v104 = v75;
    v105 = a3;
    sub_1BF4E9704();
    swift_unknownObjectRelease();
LABEL_31:
    (*v155)(v91, 0, 1, v18);
    v108 = v169;
    (*v146)(v169, v91, v18);
    v109 = v161;
    v110 = v151;
    v111 = v165;
    v156(v151, v161 + v157, v165);
    v112 = *v100;
    v113 = v152;
    v112(v152, v108, v18);
    v114 = v113;
    v115 = v111;
    v116 = v104;
    v117 = v102;
    v118 = VariantIdentifier.init(storedKey:variantKey:)(v110, v114, v115, v18, v170);
    v177 = *(v105 + v149);
    MEMORY[0x1EEE9AC00](v118);
    *(&v127 - 4) = v119;
    *(&v127 - 3) = v109;
    *(&v127 - 2) = v108;
    v120 = type metadata accessor for UnfairLock();
    sub_1BF4E7C44();
    v121 = sub_1BF4E90F4();

    v101 = v170;
    v80 = v168;
    sub_1BF38D774(sub_1BF3B92CC, (&v127 - 6), v120, v121, &off_1F3DEE010);
    v18 = v160;

    v92 = v150;
    if (v178)
    {
      v122 = v140;
      (*v139)(v140, v101, v163);
      v123 = v141;
      if (v142)
      {
        v124 = v122;
        v125 = v136;
        sub_1BF485984(v124, v136, v141);
        v126 = v125;
      }

      else
      {
        sub_1BF485984(v122, 0, v141);
      }

      sub_1BF4E7C14();

      (*v138)(v123, v164);
      v101 = v170;
    }

    (*v145)(v101, v163);
    (*v144)(v169, v18);
    a3 = v153;
    v75 = v116;
    v81 = v117;
    v91 = v159;
    v90 = v162;
    v99 = v148;
    v100 = v147;
  }

  if (v94)
  {
    *&v168 = v80;
    v102 = v81;
    v103 = v154;
LABEL_30:
    v104 = v75;
    v105 = a3;
    v107 = __clz(__rbit64(v94));
    v94 &= v94 - 1;
    (*(v143 + 16))(v91, *(v90 + 48) + *(v143 + 72) * (v107 | (v103 << 6)), v18);
    goto LABEL_31;
  }

  v106 = v154;
  while (1)
  {
    v103 = v106 + 1;
    if (__OFADD__(v106, 1))
    {
      break;
    }

    if (v103 >= v99)
    {
      goto LABEL_34;
    }

    v94 = *(v92 + 8 * v103);
    ++v106;
    if (v94)
    {
      *&v168 = v80;
      v102 = v81;
      v154 = v103;
      goto LABEL_30;
    }
  }

  __break(1u);

  os_unfair_lock_unlock(*(v75 + 2));
  __break(1u);
}

uint64_t sub_1BF3B7824()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1BF3B785C()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1BF3B78FC()
{
  v1 = qword_1EDCA6870;
  swift_beginAccess();
  return *(v0 + v1);
}

unint64_t sub_1BF3B794C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(v4 + 40);
  v9 = sub_1BF4E8874();

  return sub_1BF3B79A8(a1, v9, a2, a3);
}

unint64_t sub_1BF3B79A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v24[1] = a1;
  v25 = a4;
  v6 = *(*(a3 - 8) + 64);
  v8.n128_f64[0] = MEMORY[0x1EEE9AC00](a1);
  v10 = v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = v4;
  v11 = -1 << *(v4 + 32);
  v13 = v12 & ~v11;
  v24[0] = v4 + 64;
  if ((*(v4 + 64 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v14 = ~v11;
    v17 = *(v7 + 16);
    v15 = v7 + 16;
    v16 = v17;
    v18 = *(v15 + 56);
    v19 = (v15 - 8);
    do
    {
      v20 = v15;
      v16(v10, *(v26 + 48) + v18 * v13, a3, v8);
      v21 = *(v25 + 8);
      v22 = sub_1BF4E88C4();
      (*v19)(v10, a3);
      if (v22)
      {
        break;
      }

      v13 = (v13 + 1) & v14;
      v15 = v20;
    }

    while (((*(v24[0] + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) != 0);
  }

  return v13;
}

uint64_t _CHDMonotonicNSEC(uint64_t a1)
{
  result = -1;
  if (a1 != -1)
  {
    if ((dispatch_time_to_nsec() & 1) == 0)
    {
      _CHDMonotonicNSEC_cold_1();
    }

    return -1;
  }

  return result;
}

uint64_t dispatch thunk of StatefulStore.subscript.getter()
{
  return (*(*v0 + 1376))();
}

{
  return (*(*v0 + 1384))();
}

{
  return (*(*v0 + 1392))();
}

uint64_t sub_1BF3B7C08()
{
  v1 = *(v0 + *(*v0 + 200));

  os_unfair_lock_lock(v1 + 4);
  sub_1BF3B7DA8();
  os_unfair_lock_unlock(v1 + 4);
}

uint64_t sub_1BF3B7CB8(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = (result + *(*result + 208));
  if (!v3[1])
  {
    v4 = result;
    *v3 = a2;
    v3[1] = a3;

    v5 = *v4;
    v6 = *(v4 + *(*v4 + 216));
    if (v6)
    {
      v7 = v6[6];
      __swift_project_boxed_opaque_existential_1(v6 + 2, v6[5]);

      sub_1BF4E7BA4();

      v5 = *v4;
    }

    v8 = *(v5 + 216);
    v9 = *(v4 + v8);
    *(v4 + v8) = 0;
  }

  return result;
}

void sub_1BF3B7D9C(id a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t *ReloadTask.deinit()
{
  v1 = *v0;
  sub_1BF3B7C08();
  (*(*(*(v1 + 80) - 8) + 8))(v0 + *(*v0 + 144));
  v2 = *(v0 + *(*v0 + 152));

  sub_1BF3A93B4(v0 + *(*v0 + 168));
  v3 = *(*v0 + 192);
  v4 = sub_1BF4E7B54();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = *(v0 + *(*v0 + 200));

  v6 = *(v0 + *(*v0 + 208) + 8);

  v7 = *(v0 + *(*v0 + 216));

  return v0;
}

uint64_t ReloadTask.__deallocating_deinit()
{
  ReloadTask.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1BF3B7F8C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v30 = *a2;
  swift_beginAccess();
  result = *(a1 + 16);
  if (result)
  {
    v6 = result + 64;
    v7 = 1 << *(result + 32);
    v8 = -1;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    v9 = v8 & *(result + 64);
    v29 = *(*a3 + 144);
    v10 = (v7 + 63) >> 6;

    v11 = 0;
    v32 = result;
    while (v9)
    {
LABEL_12:
      v13 = (v11 << 10) | (16 * __clz(__rbit64(v9)));
      v14 = (*(result + 48) + v13);
      v15 = *v14;
      v16 = v14[1];
      v17 = *(result + 56) + v13;
      v18 = *(v17 + 8);
      v33 = *v17;

      v19 = sub_1BF4E7B34();
      v20 = sub_1BF4E8E84();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        v31 = swift_slowAlloc();
        v34 = v31;
        *v21 = 136446466;
        v22 = sub_1BF38D65C(v15, v16, &v34);

        *(v21 + 4) = v22;
        *(v21 + 12) = 2082;
        v23 = *(v30 + 80);
        v24 = *(v30 + 104);
        v25 = sub_1BF4E96A4();
        v27 = v26;

        v28 = sub_1BF38D65C(v25, v27, &v34);

        *(v21 + 14) = v28;
        _os_log_impl(&dword_1BF389000, v19, v20, "Executing event: %{public}s for successful reload of %{public}s", v21, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1BFB5A5D0](v31, -1, -1);
        MEMORY[0x1BFB5A5D0](v21, -1, -1);
      }

      else
      {
      }

      v9 &= v9 - 1;
      v33();

      result = v32;
    }

    while (1)
    {
      v12 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v12 >= v10)
      {
      }

      v9 = *(v6 + 8 * v12);
      ++v11;
      if (v9)
      {
        v11 = v12;
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1BF3B8268(uint64_t a1)
{
  v2 = *v1;
  v9[6] = *(v1 + qword_1EDC9AF58);
  v9[3] = a1;
  v3 = type metadata accessor for UnfairLock();
  v4 = v2[11];
  v5 = v2[12];
  v6 = v2[16];
  sub_1BF4E8834();
  v7 = sub_1BF4E90F4();

  sub_1BF38D774(sub_1BF3B8358, v9, v3, v7, &off_1F3DEE010);

  return v9[7];
}

uint64_t sub_1BF3B8374(void *a1)
{
  v2 = *a1;
  v3 = qword_1EDCA6870;
  swift_beginAccess();
  v4 = *(a1 + v3);
  v5 = v2[10];
  v6 = v2[11];
  v7 = v2[12];
  v8 = v2[16];
  sub_1BF4E8834();
  v9 = v2[14];

  sub_1BF4E8854();
}

uint64_t sub_1BF3B8484(int *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v8 = sub_1BF4E7334();
  v9 = *(v8 - 8);
  v10 = v9;
  v11 = *(v9 + 84);
  if (v11)
  {
    v12 = v11 - 1;
  }

  else
  {
    v12 = 0;
  }

  if (v12 <= v7)
  {
    v13 = v7;
  }

  else
  {
    v13 = v12;
  }

  if (v13 <= 0x7FFFFFFE)
  {
    v13 = 2147483646;
  }

  v14 = *(*(v8 - 8) + 64);
  if (!v11)
  {
    ++v14;
  }

  if (!a2)
  {
    return 0;
  }

  v15 = *(v9 + 80) & 0xF8 | 7;
  v16 = *(v6 + 64) + v15;
  v17 = ((v14 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  if (v13 >= a2)
  {
    goto LABEL_34;
  }

  v18 = ((v17 + (v16 & ~v15) + 17) & 0xFFFFFFFFFFFFFFF8) + 8;
  v19 = v18 & 0xFFFFFFF8;
  if ((v18 & 0xFFFFFFF8) != 0)
  {
    v20 = 2;
  }

  else
  {
    v20 = a2 - v13 + 1;
  }

  if (v20 >= 0x10000)
  {
    v21 = 4;
  }

  else
  {
    v21 = 2;
  }

  if (v20 < 0x100)
  {
    v21 = 1;
  }

  if (v20 >= 2)
  {
    v22 = v21;
  }

  else
  {
    v22 = 0;
  }

  if (v22 > 1)
  {
    if (v22 == 2)
    {
      v23 = *(a1 + v18);
      if (!v23)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v23 = *(a1 + v18);
      if (!v23)
      {
        goto LABEL_34;
      }
    }

LABEL_31:
    v25 = v23 - 1;
    if (v19)
    {
      v25 = 0;
      v26 = *a1;
    }

    else
    {
      v26 = 0;
    }

    return v13 + (v26 | v25) + 1;
  }

  if (v22)
  {
    v23 = *(a1 + v18);
    if (v23)
    {
      goto LABEL_31;
    }
  }

LABEL_34:
  if (v7 == v13)
  {
    v27 = *(v6 + 48);

    return v27(a1, v7, v5);
  }

  else
  {
    v28 = (a1 + v16) & ~v15;
    if (v12 == v13)
    {
      v29 = (*(v10 + 48))(v28);
      if (v29 >= 2)
      {
        return v29 - 1;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      v30 = *((v17 + 10 + v28 + 6) & 0xFFFFFFFFFFFFFFF8);
      if (v30 >= 0xFFFFFFFF)
      {
        LODWORD(v30) = -1;
      }

      if ((v30 + 1) >= 2)
      {
        return v30;
      }

      else
      {
        return 0;
      }
    }
  }
}

void sub_1BF3B86FC(_DWORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v29 = *(v7 - 8);
  v8 = *(v29 + 84);
  v9 = 0;
  v10 = *(sub_1BF4E7334() - 8);
  v11 = *(v10 + 84);
  v12 = *(v29 + 64);
  v13 = v11 - 1;
  if (!v11)
  {
    v13 = 0;
  }

  if (v13 <= v8)
  {
    v14 = v8;
  }

  else
  {
    v14 = v13;
  }

  if (v14 <= 0x7FFFFFFE)
  {
    v14 = 2147483646;
  }

  v15 = *(v10 + 80) & 0xF8 | 7;
  v16 = v12 + v15;
  v17 = (v12 + v15) & ~v15;
  if (v11)
  {
    v18 = *(v10 + 64);
  }

  else
  {
    v18 = *(v10 + 64) + 1;
  }

  v19 = ((v18 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  v20 = ((v19 + v17 + 17) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v14 < a3)
  {
    if (((v19 + v17 + 17) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v21 = a3 - v14 + 1;
    }

    else
    {
      v21 = 2;
    }

    if (v21 >= 0x10000)
    {
      v22 = 4;
    }

    else
    {
      v22 = 2;
    }

    if (v21 < 0x100)
    {
      v22 = 1;
    }

    if (v21 >= 2)
    {
      v9 = v22;
    }

    else
    {
      v9 = 0;
    }
  }

  if (a2 > v14)
  {
    if (v20)
    {
      v23 = 1;
    }

    else
    {
      v23 = a2 - v14;
    }

    if (v20)
    {
      v24 = ~v14 + a2;
      bzero(a1, v20);
      *a1 = v24;
    }

    if (v9 > 1)
    {
      if (v9 == 2)
      {
        *(a1 + v20) = v23;
      }

      else
      {
        *(a1 + v20) = v23;
      }
    }

    else if (v9)
    {
      *(a1 + v20) = v23;
    }

    return;
  }

  if (v9 > 1)
  {
    if (v9 != 2)
    {
      *(a1 + v20) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_41;
    }

    *(a1 + v20) = 0;
  }

  else if (v9)
  {
    *(a1 + v20) = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_41;
  }

  if (!a2)
  {
    return;
  }

LABEL_41:
  if (v8 == v14)
  {
    v25 = *(v29 + 56);

    v25(a1, a2, v8, v7);
  }

  else
  {
    v26 = (a1 + v16) & ~v15;
    if (v13 == v14)
    {
      v27 = *(v10 + 56);

      v27(v26, (a2 + 1));
    }

    else
    {
      v28 = ((v19 + 10 + v26 + 6) & 0xFFFFFFFFFFFFFFF8);
      if (a2 > 0x7FFFFFFE)
      {
        *v28 = 0;
        *v28 = a2 - 0x7FFFFFFF;
      }

      else
      {
        *v28 = a2;
      }
    }
  }
}

uint64_t static StatefulStoreReloadEvent.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *(a5 + 8);
  if (sub_1BF4E88C4() & 1) != 0 && (v8 = type metadata accessor for StatefulStoreReloadEvent(), (_s9ChronoKit19ReloadConfigurationV2eeoiySbAC_ACtFZ_0(a1 + *(v8 + 44), a2 + *(v8 + 44))))
  {
    return (*(a1 + *(v8 + 48)) != 0) ^ (*(a2 + *(v8 + 48)) == 0);
  }

  else
  {
    return 0;
  }
}

uint64_t _s9ChronoKit19ReloadConfigurationV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BF4E7334();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ReloadConfiguration.ReloadType(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8B30, &qword_1BF4EC590);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v30 - v15;
  v18 = *(v17 + 56);
  sub_1BF39B31C(a1, &v30 - v15, type metadata accessor for ReloadConfiguration.ReloadType);
  sub_1BF39B31C(a2, &v16[v18], type metadata accessor for ReloadConfiguration.ReloadType);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) == 1)
  {
    if (v19(&v16[v18], 1, v4) == 1)
    {
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  sub_1BF39B31C(v16, v12, type metadata accessor for ReloadConfiguration.ReloadType);
  if (v19(&v16[v18], 1, v4) == 1)
  {
    (*(v5 + 8))(v12, v4);
LABEL_6:
    sub_1BF38C9B4(v16, &qword_1EBDD8B30, &qword_1BF4EC590);
LABEL_14:
    v28 = 0;
    return v28 & 1;
  }

  (*(v5 + 32))(v8, &v16[v18], v4);
  v20 = sub_1BF4E72D4();
  v21 = *(v5 + 8);
  v21(v8, v4);
  v21(v12, v4);
  if ((v20 & 1) == 0)
  {
    sub_1BF3B8DEC(v16);
    goto LABEL_14;
  }

LABEL_8:
  sub_1BF3B8DEC(v16);
  v22 = type metadata accessor for ReloadConfiguration(0);
  if (*(a1 + *(v22 + 20)) != *(a2 + *(v22 + 20)))
  {
    goto LABEL_14;
  }

  v23 = v22;
  v24 = *(v22 + 24);
  v25 = *(a1 + v24);
  v30 = *(a2 + v24);
  v26 = v30;
  v31 = v25;
  sub_1BF39C510(v25);
  sub_1BF39C510(v26);
  v27 = static ReloadConfiguration.ReloadReason.== infix(_:_:)(&v31, &v30);
  sub_1BF39C9A4(v26);
  sub_1BF39C9A4(v25);
  if ((v27 & 1) == 0 || *(a1 + v23[7]) != *(a2 + v23[7]) || *(a1 + v23[8]) != *(a2 + v23[8]))
  {
    goto LABEL_14;
  }

  v28 = *(a1 + v23[9]) ^ *(a2 + v23[9]) ^ 1;
  return v28 & 1;
}

uint64_t sub_1BF3B8DEC(uint64_t a1)
{
  v2 = type metadata accessor for ReloadConfiguration.ReloadType(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BF3B8E48(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v18[0] = a1;
  v5 = *a2;
  v6 = *(*a2 + 80);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v10 = v18 - v9;
  v12 = *(*v11 + 144);
  v13 = qword_1EDCA6860;
  swift_beginAccess();
  v14 = *(a2 + v13);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD95D0, &qword_1BF4F1C88);
  v15 = *(v5 + 112);
  sub_1BF4E8854();

  v16 = *v18[0];
  *v18[0] = v18[2];

  (*(v7 + 16))(v10, a3 + v12, v6);
  v18[9] = 0;
  swift_beginAccess();
  sub_1BF4E8834();
  sub_1BF4E8864();
  return swift_endAccess();
}

uint64_t VariantIdentifier.init(storedKey:variantKey:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  (*(*(a3 - 8) + 32))(a5, a1);
  v8 = type metadata accessor for VariantIdentifier();
  return (*(*(a4 - 8) + 32))(a5 + *(v8 + 68), a2, a4);
}

uint64_t sub_1BF3B9104@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *a1;
  v6 = *a1;
  v7 = *(*a2 + 144);
  v8 = qword_1EDC9AF60;
  swift_beginAccess();
  v9 = *(a1 + v8);
  v10 = v5[10];
  v11 = v5[11];
  v12 = v5[13];
  v13 = v5[16];

  v15 = *(v6 + 7);
  type metadata accessor for VariantReloadResult();
  sub_1BF4E7C44();
  sub_1BF4E8834();
  sub_1BF4E8854();

  if (v16)
  {
    sub_1BF4E8854();
  }

  else
  {
    *a3 = 0;
  }

  return result;
}

ChronoKit::DuetWidgetBudgetIdentity __swiftcall DuetWidgetBudgetIdentity.init(forUpdateConfigurations:)(Swift::OpaquePointer forUpdateConfigurations)
{
  rawValue = forUpdateConfigurations._rawValue;
  v4 = v1;
  if (!(forUpdateConfigurations._rawValue >> 62))
  {
    v5 = *((forUpdateConfigurations._rawValue & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
      goto LABEL_3;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  forUpdateConfigurations._rawValue = sub_1BF4E9204();
  v5 = forUpdateConfigurations._rawValue;
  if (!forUpdateConfigurations._rawValue)
  {
    goto LABEL_13;
  }

LABEL_3:
  v2 = rawValue & 0xC000000000000001;
  if ((rawValue & 0xC000000000000001) != 0)
  {
LABEL_14:
    forUpdateConfigurations._rawValue = MEMORY[0x1BFB59570](0, rawValue);
    goto LABEL_6;
  }

  if (!*((rawValue & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  forUpdateConfigurations._rawValue = *(rawValue + 32);
LABEL_6:
  v7 = forUpdateConfigurations._rawValue;
  if (v5 < 1)
  {
    __break(1u);
    goto LABEL_16;
  }

  for (i = 0; i != v5; ++i)
  {
    if (v2)
    {
      MEMORY[0x1BFB59570](i, rawValue);
      swift_unknownObjectRelease();
    }
  }

  sub_1BF3B93EC(rawValue);
  v10 = v9;
  v12 = v11;

  *v4 = v10;
  v4[1] = v12;
LABEL_17:
  result.identifier._object = v6;
  result.identifier._countAndFlagsBits = forUpdateConfigurations._rawValue;
  return result;
}

void sub_1BF3B93EC(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_20:
    __break(1u);
LABEL_21:
    v8 = MEMORY[0x1BFB59570](0, a1);
LABEL_15:
    v6 = v8;
LABEL_16:
    sub_1BF3B253C(v6);

    return;
  }

LABEL_19:
  v2 = sub_1BF4E9204();
  if (!v2)
  {
    goto LABEL_20;
  }

LABEL_3:
  v3 = 0;
  v4 = a1 & 0xC000000000000001;
  do
  {
    if (v4)
    {
      v5 = MEMORY[0x1BFB59570](v3, a1);
    }

    else
    {
      if (v3 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_18;
      }

      v5 = *(a1 + 8 * v3 + 32);
    }

    v6 = v5;
    v7 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      __break(1u);
LABEL_18:
      __break(1u);
      goto LABEL_19;
    }

    if ([v5 isSuggestion])
    {
      goto LABEL_16;
    }

    ++v3;
  }

  while (v7 != v2);
  if (v4)
  {
    goto LABEL_21;
  }

  if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v8 = *(a1 + 32);
    goto LABEL_15;
  }

  __break(1u);
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

uint64_t ReloadTaskCancellable.__allocating_init(_:description:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = a1[3];
  v8 = a1[4];
  v9 = __swift_mutable_project_boxed_opaque_existential_1(a1, v7);
  v10 = *(*(v7 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v13, v11);
  v15 = sub_1BF3B9664(v13, a2, a3, v3, v7, v8);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v15;
}

uint64_t sub_1BF3B9664(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v14 = a5;
  v15 = a6;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v13);
  (*(*(a5 - 8) + 32))(boxed_opaque_existential_0, a1, a5);
  type metadata accessor for ReloadTaskCancellable();
  v11 = swift_allocObject();
  sub_1BF38E610(&v13, v11 + 16);
  *(v11 + 56) = a2;
  *(v11 + 64) = a3;
  return v11;
}

uint64_t *__swift_allocate_boxed_opaque_existential_0(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_1BF3B978C()
{
  if (*(v0 + 64))
  {
    v1 = *(v0 + 56);
  }

  else
  {
    sub_1BF38E49C(v0 + 16, v5);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9950, &qword_1BF4F46B0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9958, &qword_1BF4F46B8);
    if (swift_dynamicCast())
    {
      sub_1BF38E610(v3, v6);
      __swift_project_boxed_opaque_existential_1(v6, v6[3]);
      v1 = sub_1BF4E96A4();
      __swift_destroy_boxed_opaque_existential_1Tm(v6);
    }

    else
    {
      v4 = 0;
      memset(v3, 0, sizeof(v3));
      sub_1BF4874A8(v3);
      v6[0] = 0;
      v6[1] = 0xE000000000000000;
      sub_1BF4E92E4();
      MEMORY[0x1BFB58C90](0xD000000000000018, 0x80000001BF4FCBA0);
      v5[0] = v0;
      sub_1BF4E9404();
      MEMORY[0x1BFB58C90](62, 0xE100000000000000);
      v1 = v6[0];
    }
  }

  return v1;
}

uint64_t sub_1BF3B990C()
{
  v1 = *(*v0 + OBJC_IVAR____TtC9ChronoKit15WidgetExtension_info);
  v2 = *MEMORY[0x1E69941B0];
  swift_beginAccess();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8A38, &unk_1BF4EC4D0);
  result = (*(*(v3 - 8) + 48))(v1 + v2, 1, v3);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v5 = sub_1BF4E76B4();
    swift_endAccess();
    return v5;
  }

  return result;
}

void sub_1BF3B99E4()
{
  sub_1BF3B9AB8(319, &qword_1EDC96420, sub_1BF3B9B04);
  if (v0 <= 0x3F)
  {
    sub_1BF3BAE30();
    if (v1 <= 0x3F)
    {
      sub_1BF3B9AB8(319, &qword_1EDC9D600, MEMORY[0x1E6969530]);
      if (v2 <= 0x3F)
      {
        sub_1BF3BAEBC();
        if (v3 <= 0x3F)
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        }
      }
    }
  }
}

void sub_1BF3B9AB8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void))
{
  if (!*a2)
  {
    v4 = a3(0);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1BF3B9B04()
{
  if (!qword_1EDC9D750)
  {
    v0 = sub_1BF4E90F4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC9D750);
    }
  }
}

dispatch_time_t CHDMonotonicTimePlusInterval(dispatch_time_t a1, int64_t a2)
{
  _CHDMonotonicNSEC(a1);

  return dispatch_time(a1, a2);
}

void sub_1BF3B9C50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 16))
  {
    goto LABEL_6;
  }

  if (*(a1 + 32))
  {
    __break(1u);
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v6 = [objc_allocWithZone(CHDMonotonicTimer) init];
  v7 = *(a1 + 16);
  *(a1 + 16) = v6;
  v8 = v6;

  if (v8)
  {
    v9 = *(a1 + 40);
    v10 = *(a1 + 48);
    v11 = swift_allocObject();
    swift_weakInit();
    v12 = swift_allocObject();
    v12[2] = v11;
    v12[3] = a2;
    v12[4] = a3;
    v14[4] = sub_1BF3CAE98;
    v14[5] = v12;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 1107296256;
    v14[2] = sub_1BF38E868;
    v14[3] = &block_descriptor_13;
    v13 = _Block_copy(v14);

    [v8 activateWithTime:v9 repeat:v10 block:v13];
    _Block_release(v13);

    return;
  }

LABEL_7:
  __break(1u);
}

uint64_t sub_1BF3B9DD0()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1BF3B9E08()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t CHDMonotonicTimer.__deallocating_deinit()
{
  if (*(v0 + 32) == 1)
  {

    v1 = *(v0 + 24);

    return swift_deallocClassInstance();
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1BF3B9F70()
{
  result = qword_1EDC9FCE0;
  if (!qword_1EDC9FCE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC9FCE0);
  }

  return result;
}

unint64_t sub_1BF3B9FC4()
{
  result = qword_1EDC9FCE8;
  if (!qword_1EDC9FCE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC9FCE8);
  }

  return result;
}

uint64_t sub_1BF3BA028()
{
  v0 = type metadata accessor for _DuetWidgetViewProvider();
  v11[3] = v0;
  v11[4] = &off_1F3DF3CE0;
  v11[0] = swift_allocObject();
  type metadata accessor for DuetWidgetViewRecorder();
  v1 = swift_allocObject();
  v2 = __swift_mutable_project_boxed_opaque_existential_1(v11, v0);
  v3 = *(*(v0 - 8) + 64);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = (&v11[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v7 + 16))(v6, v4);
  v8 = sub_1BF3BA188(*v6, v1);
  result = __swift_destroy_boxed_opaque_existential_1Tm(v11);
  qword_1EDC99660 = v8;
  return result;
}

uint64_t sub_1BF3BA188(uint64_t a1, uint64_t a2)
{
  v9 = type metadata accessor for _DuetWidgetViewProvider();
  v10 = &off_1F3DF3CE0;
  *&v8 = a1;
  *(a2 + 16) = xmmword_1BF4F6AB0;
  v4 = MEMORY[0x1E69E7CC0];
  *(a2 + 72) = MEMORY[0x1E69E7CC0];
  *(a2 + 80) = v4;
  *(a2 + 96) = 0;
  *(a2 + 104) = 0;
  *(a2 + 88) = 0;
  v5 = [objc_opt_self() currentProcess];
  v6 = [v5 pid];

  *(a2 + 112) = [objc_opt_self() targetWithPid_];
  sub_1BF38E610(&v8, a2 + 32);
  return a2;
}

uint64_t sub_1BF3BA274@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  swift_beginAccess();
  return sub_1BF38E49C(v3 + 120, a1);
}

uint64_t sub_1BF3BA2D4()
{
  v1 = *(sub_1BF4E7334() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return sub_1BF3BA338(v2, v3);
}

uint64_t sub_1BF3BA338(uint64_t a1, uint64_t a2)
{
  v3 = sub_1BF4E7334();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BF3BA414(a2, v7);
  sub_1BF3BA63C(v7);
  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_1BF3BA414@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1BF4E7334();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1BF4E80E4();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = (&v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = *(v2 + 32);
  *v15 = v16;
  (*(v11 + 104))(v15, *MEMORY[0x1E69E8020], v10, v13);
  v17 = v16;
  LOBYTE(v16) = sub_1BF4E80F4();
  result = (*(v11 + 8))(v15, v10);
  if (v16)
  {
    v19 = *(v2 + 24);
    if (v19 > 0.0 && (sub_1BF4E7224(), v20 = sub_1BF4E7274(), (*(v6 + 8))(v9, v5), (v20 & 1) != 0))
    {
      sub_1BF4E71F4();
      fmod(v21, v19);
      return sub_1BF4E71E4();
    }

    else
    {
      return (*(v6 + 16))(a2, a1, v5);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BF3BA63C(uint64_t a1)
{
  v2 = v1;
  v67 = *v1;
  v4 = sub_1BF4E7FE4();
  v71 = *(v4 - 8);
  v72 = v4;
  v5 = *(v71 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v69 = (&v63 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v70 = sub_1BF4E80D4();
  v68 = *(v70 - 8);
  v7 = *(v68 + 64);
  MEMORY[0x1EEE9AC00](v70);
  v73 = &v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1BF4E7334();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v63 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v63 - v15;
  v17 = sub_1BF4E80E4();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x1EEE9AC00](v17);
  v22 = (&v63 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = *(v2 + 4);
  *v22 = v23;
  (*(v18 + 104))(v22, *MEMORY[0x1E69E8020], v17, v20);
  v24 = v23;
  v25 = sub_1BF4E80F4();
  (*(v18 + 8))(v22, v17);
  if ((v25 & 1) == 0)
  {
    __break(1u);
LABEL_23:
    swift_once();
LABEL_4:
    v28 = sub_1BF4E7B54();
    __swift_project_value_buffer(v28, qword_1EDCA6AD8);
    (*(v10 + 16))(v13, a1, v9);

    v29 = sub_1BF4E7B34();
    v30 = sub_1BF4E8E54();

    if (os_log_type_enabled(v29, v30))
    {
      v65 = v30;
      v66 = v29;
      v31 = swift_slowAlloc();
      v64 = swift_slowAlloc();
      v74[0] = v64;
      *v31 = 136446466;
      v32 = sub_1BF4E9894();
      v34 = sub_1BF38D65C(v32, v33, v74);

      *(v31 + 4) = v34;
      *(v31 + 12) = 2082;
      if (qword_1EDC9F0F0 != -1)
      {
        swift_once();
      }

      v35 = qword_1EDC9F0F8;
      v36 = sub_1BF4E7254();
      v37 = [v35 stringFromDate_];

      v38 = sub_1BF4E8914();
      v40 = v39;

      (v25)(v13, v9);
      v41 = sub_1BF38D65C(v38, v40, v74);

      *(v31 + 14) = v41;
      v42 = v66;
      _os_log_impl(&dword_1BF389000, v66, v65, "%{public}s next update: %{public}s, privacy: .public)", v31, 0x16u);
      v43 = v64;
      swift_arrayDestroy();
      MEMORY[0x1BFB5A5D0](v43, -1, -1);
      MEMORY[0x1BFB5A5D0](v31, -1, -1);
    }

    else
    {

      (v25)(v13, v9);
    }

    v56 = v73;
    sub_1BF3C2920();
    result = sub_1BF3C2A38();
    v57 = v2[3];
    if (v57 < 9.22337204e18)
    {
      if ((*&v57 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        __break(1u);
      }

      else if (v57 > -9.22337204e18)
      {
        v58 = v57;
LABEL_20:
        ObjectType = swift_getObjectType();
        v60 = v69;
        *v69 = v58;
        v62 = v71;
        v61 = v72;
        (*(v71 + 104))(v60, *MEMORY[0x1E69E7F48], v72);
        MEMORY[0x1BFB592C0](v56, v60, ObjectType, INFINITY);
        swift_unknownObjectRelease();
        (*(v62 + 8))(v60, v61);
        return (*(v68 + 8))(v56, v70);
      }

      __break(1u);
      return result;
    }

    v58 = 0x7FFFFFFFFFFFFFFFLL;
    goto LABEL_20;
  }

  v26 = OBJC_IVAR____TtC9ChronoKit17WidgetUpdateTimer_scheduledDate;
  swift_beginAccess();
  (*(v10 + 24))(v2 + v26, a1, v9);
  swift_endAccess();
  sub_1BF4E7224();
  LOBYTE(v26) = sub_1BF4E7274();
  v25 = *(v10 + 8);
  result = (v25)(v16, v9);
  if (v26)
  {
    if (qword_1EDC9F998 == -1)
    {
      goto LABEL_4;
    }

    goto LABEL_23;
  }

  v44 = OBJC_IVAR____TtC9ChronoKit17WidgetUpdateTimer__timer;
  if (*(v2 + OBJC_IVAR____TtC9ChronoKit17WidgetUpdateTimer__timer))
  {
    v45 = qword_1EDC9F998;
    v46 = *(v2 + OBJC_IVAR____TtC9ChronoKit17WidgetUpdateTimer__timer);
    swift_unknownObjectRetain();
    if (v45 != -1)
    {
      swift_once();
    }

    v47 = sub_1BF4E7B54();
    __swift_project_value_buffer(v47, qword_1EDCA6AD8);

    v48 = sub_1BF4E7B34();
    v49 = sub_1BF4E8E54();

    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v74[0] = v51;
      *v50 = 136446210;
      v52 = sub_1BF4E9894();
      v54 = sub_1BF38D65C(v52, v53, v74);

      *(v50 + 4) = v54;
      _os_log_impl(&dword_1BF389000, v48, v49, "%{public}s canceled", v50, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v51);
      MEMORY[0x1BFB5A5D0](v51, -1, -1);
      MEMORY[0x1BFB5A5D0](v50, -1, -1);
    }

    swift_getObjectType();
    sub_1BF4E8FB4();
    swift_unknownObjectRelease();
    v55 = *(v2 + v44);
    *(v2 + v44) = 0.0;
    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_1BF3BAE30()
{
  if (!qword_1EDC96480)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBDD9AF0, &qword_1BF4F5DF8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBDD91C0, &unk_1BF4ED510);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDC96480);
    }
  }
}

void sub_1BF3BAEBC()
{
  if (!qword_1EDC96488)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBDD9AF0, &qword_1BF4F5DF8);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDC96488);
    }
  }
}

uint64_t sub_1BF3BAF38(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v34 = a4;
  v35 = a3;
  v5 = a1;
  v6 = *(*a2 + 88);
  v33 = *(v6 - 8);
  v7 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v30 - v8;
  v11 = *(v10 + 80);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v30 - v15;
  v19 = *(v18 + 120);
  *&v20 = v11;
  *(&v20 + 1) = v6;
  v21 = *(v18 + 128);
  v30 = *(v17 + 104);
  v36 = v20;
  v37 = v30;
  v32 = v19;
  v38 = v19;
  v39 = v21;
  v31 = type metadata accessor for VariantIdentifier();
  v22 = *(v31 - 8);
  v23 = *(v22 + 64);
  v24.n128_f64[0] = MEMORY[0x1EEE9AC00](v31);
  v26 = &v30 - v25;
  if (v5)
  {
    v27 = a2[9];

    sub_1BF4E7C14();
  }

  (*(v12 + 16))(v16, v35, v11, v24);
  (*(v33 + 16))(v9, v34, v6);
  VariantIdentifier.init(storedKey:variantKey:)(v16, v9, v11, v6, v26);
  v28 = a2[13];

  sub_1BF4E7C14();

  return (*(v22 + 8))(v26, v31);
}

void sub_1BF3BB304(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + OBJC_IVAR____TtC9ChronoKit11WidgetEntry__lock);
  os_unfair_lock_lock(*(v5 + 16));
  sub_1BF3AE26C(a1, a2);
  v6 = *(v5 + 16);

  os_unfair_lock_unlock(v6);
}

uint64_t sub_1BF3BB364(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t WidgetUpdateTimer.scheduleUpdate(on:)(uint64_t a1)
{
  v3 = sub_1BF4E7FF4();
  v22 = *(v3 - 8);
  v4 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1BF4E8064();
  v20 = *(v7 - 8);
  v21 = v7;
  v8 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1BF4E7334();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v19[1] = *(v1 + 32);
  (*(v12 + 16))(v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v11, v14);
  v15 = (*(v12 + 80) + 24) & ~*(v12 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = v1;
  (*(v12 + 32))(v16 + v15, v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v11);
  aBlock[4] = sub_1BF3BA2D4;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BF38E868;
  aBlock[3] = &block_descriptor_14;
  v17 = _Block_copy(aBlock);

  sub_1BF4E8014();
  v23 = MEMORY[0x1E69E7CC0];
  sub_1BF3A1144(&qword_1EDC9F980, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8EB8, &unk_1BF4F0890);
  sub_1BF38C8B4(&qword_1EDC9F190, &qword_1EBDD8EB8, &unk_1BF4F0890);
  sub_1BF4E91A4();
  MEMORY[0x1BFB591B0](0, v10, v6, v17);
  _Block_release(v17);
  (*(v22 + 8))(v6, v3);
  (*(v20 + 8))(v10, v21);
}

uint64_t sub_1BF3BB778()
{
  v1 = sub_1BF4E7334();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1BF3BB844()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1BF39FDFC();
  }

  return result;
}

unint64_t sub_1BF3BB8B0()
{
  result = qword_1EDC9F350[0];
  if (!qword_1EDC9F350[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDC9F350);
  }

  return result;
}

uint64_t sub_1BF3BB904()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1BF4E9804();
  if (v2 > 2)
  {
    switch(v2)
    {
      case 3:
        v3 = 3;
        goto LABEL_15;
      case 4:
        v3 = 4;
        goto LABEL_15;
      case 5:
        v3 = 6;
        goto LABEL_15;
    }
  }

  else
  {
    switch(v2)
    {
      case 0:
        v3 = 0;
        goto LABEL_15;
      case 1:
        v3 = 1;
        goto LABEL_15;
      case 2:
        v3 = 2;
LABEL_15:
        MEMORY[0x1BFB59A70](v3);
        return sub_1BF4E9844();
    }
  }

  MEMORY[0x1BFB59A70](5);
  sub_1BF4E89F4();
  return sub_1BF4E9844();
}

uint64_t sub_1BF3BB9E8(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = result;
    if (qword_1EDC9EFE8 != -1)
    {
      swift_once();
    }

    v5 = sub_1BF4E7B54();
    __swift_project_value_buffer(v5, qword_1EDCA6A78);

    v6 = sub_1BF4E7B34();
    v7 = sub_1BF4E8E54();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v19 = v18;
      *v8 = 136446466;
      v9 = v4[2];
      v10 = v4[3];

      v11 = sub_1BF38D65C(v9, v10, &v19);

      *(v8 + 4) = v11;
      *(v8 + 12) = 2050;
      v13 = *(v1 + 16);
      MEMORY[0x1EEE9AC00](v12);
      sub_1BF3901C0(0, &unk_1EDC9D6D8, 0x1E6994388);
      swift_getKeyPath();

      v14 = sub_1BF3FEE8C(v13);

      if (v14 >> 62)
      {
        v15 = sub_1BF4E9204();
      }

      else
      {
        v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v8 + 14) = v15;

      _os_log_impl(&dword_1BF389000, v6, v7, "[%{public}s] Descriptors did change: %{public}ld", v8, 0x16u);
      __swift_destroy_boxed_opaque_existential_1Tm(v18);
      MEMORY[0x1BFB5A5D0](v18, -1, -1);
      MEMORY[0x1BFB5A5D0](v8, -1, -1);
    }

    else
    {
    }

    v16 = v4[10];
    v17 = *(v16 + 16);

    os_unfair_lock_lock(v17);
    sub_1BF3BBCCC(v4, v1);
    os_unfair_lock_unlock(*(v16 + 16));
  }

  return result;
}

uint64_t sub_1BF3BBCCC(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 88) allObjects];
  type metadata accessor for WidgetEntry(0);
  v4 = sub_1BF4E8BA4();

  if (v4 >> 62)
  {
    goto LABEL_51;
  }

  v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5)
  {
LABEL_3:
    v6 = 0;
    v55 = *(a2 + 16);
    v56 = v4 & 0xC000000000000001;
    v52 = v4 + 32;
    v53 = v4 & 0xFFFFFFFFFFFFFF8;
    v50 = v5;
    v51 = v4;
    while (1)
    {
      if (v56)
      {
        v7 = MEMORY[0x1BFB59570](v6, v4);
        v8 = __OFADD__(v6++, 1);
        if (v8)
        {
          goto LABEL_49;
        }
      }

      else
      {
        if (v6 >= *(v53 + 16))
        {
          goto LABEL_50;
        }

        v7 = *(v52 + 8 * v6);
        v8 = __OFADD__(v6++, 1);
        if (v8)
        {
          goto LABEL_49;
        }
      }

      v57 = v7;
      v9 = *&v7[OBJC_IVAR____TtC9ChronoKit11WidgetEntry_key];
      v10 = [v9 extensionIdentity];
      a2 = v10;
      if (*(v55 + 16))
      {
        v11 = sub_1BF3916CC(v10);
        if (v12)
        {
          break;
        }
      }

LABEL_5:
      if (v6 == v5)
      {
      }
    }

    v54 = v6;
    v13 = *(*(v55 + 56) + 8 * v11);

    if (v13 >> 62)
    {
      v14 = sub_1BF4E9204();
      if (v14)
      {
LABEL_16:
        v4 = 0;
        do
        {
          if ((v13 & 0xC000000000000001) != 0)
          {
            v15 = MEMORY[0x1BFB59570](v4, v13);
            v16 = v4 + 1;
            if (__OFADD__(v4, 1))
            {
              goto LABEL_47;
            }
          }

          else
          {
            if (v4 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_48;
            }

            v15 = *(v13 + 8 * v4 + 32);
            v16 = v4 + 1;
            if (__OFADD__(v4, 1))
            {
LABEL_47:
              __break(1u);
LABEL_48:
              __break(1u);
LABEL_49:
              __break(1u);
LABEL_50:
              __break(1u);
LABEL_51:
              v5 = sub_1BF4E9204();
              if (!v5)
              {
              }

              goto LABEL_3;
            }
          }

          v58 = v16;
          v59 = v15;
          v17 = [v15 kind];
          v18 = sub_1BF4E8914();
          v20 = v19;

          v21 = v9;
          v22 = [v9 kind];
          v23 = sub_1BF4E8914();
          v25 = v24;

          if (v18 == v23 && v20 == v25)
          {

            goto LABEL_32;
          }

          a2 = sub_1BF4E9734();

          if (a2)
          {

LABEL_32:

            v27 = *&v57[OBJC_IVAR____TtC9ChronoKit11WidgetEntry__lock];
            v28 = *(v27 + 16);
            v29 = v59;
            os_unfair_lock_lock(v28);
            v30 = OBJC_IVAR____TtC9ChronoKit11WidgetEntry__lock_descriptor;
            v31 = *&v57[OBJC_IVAR____TtC9ChronoKit11WidgetEntry__lock_descriptor];
            if (v31)
            {
              sub_1BF3901C0(0, &unk_1EDC9D6D8, 0x1E6994388);
              a2 = v29;
              v32 = v31;
              v33 = sub_1BF4E90A4();

              if (v33)
              {
                os_unfair_lock_unlock(*(v27 + 16));

                goto LABEL_46;
              }

              v34 = v57;
              v35 = *&v57[v30];
            }

            else
            {
              v34 = v57;
              v35 = 0;
            }

            *&v34[v30] = v59;
            v36 = v34;
            v37 = v29;

            os_unfair_lock_unlock(*(v27 + 16));
            v38 = *&v36[OBJC_IVAR____TtC9ChronoKit11WidgetEntry__environmentProvider];
            v39 = *(v38 + OBJC_IVAR____TtC9ChronoKit41DescriptorMixedEnvironmentProviderAdapter__lock);
            v40 = *(v39 + 16);
            v9 = v37;

            os_unfair_lock_lock(v40);
            v41 = OBJC_IVAR____TtC9ChronoKit41DescriptorMixedEnvironmentProviderAdapter__lock_descriptor;
            v42 = *(v38 + OBJC_IVAR____TtC9ChronoKit41DescriptorMixedEnvironmentProviderAdapter__lock_descriptor);
            if (v42)
            {
              sub_1BF3901C0(0, &qword_1EDC9D720, 0x1E6994220);
              v43 = v9;
              v44 = v42;
              v45 = sub_1BF4E90A4();

              v5 = v50;
              v6 = v54;
              if (v45)
              {
                os_unfair_lock_unlock(*(v39 + 16));

LABEL_43:
                v48 = *&v57[OBJC_IVAR____TtC9ChronoKit11WidgetEntry__descriptorDidChangePublisher];
                a2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD9110, &qword_1BF4EEFA0);
                sub_1BF38C8B4(&qword_1EDC9FD90, &unk_1EBDD9110, &qword_1BF4EEFA0);
                sub_1BF4E7C74();

                v4 = v51;
                goto LABEL_5;
              }

              v46 = *(v38 + v41);
            }

            else
            {
              v46 = 0;
              v5 = v50;
              v6 = v54;
            }

            *(v38 + v41) = v59;
            v47 = v9;

            os_unfair_lock_unlock(*(v39 + 16));

            sub_1BF39FDFC();

            goto LABEL_43;
          }

          ++v4;
          v9 = v21;
        }

        while (v58 != v14);
      }
    }

    else
    {
      v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v14)
      {
        goto LABEL_16;
      }
    }

LABEL_46:
    v9 = v57;
    v5 = v50;
    v4 = v51;
    v6 = v54;
    goto LABEL_5;
  }
}

uint64_t sub_1BF3BC234()
{
  v0 = sub_1BF4E7B54();
  __swift_allocate_value_buffer(v0, qword_1EDCA6A60);
  __swift_project_value_buffer(v0, qword_1EDCA6A60);
  return sub_1BF4E7B44();
}

unint64_t sub_1BF3BC35C()
{
  result = qword_1EDC9FCF0[0];
  if (!qword_1EDC9FCF0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDC9FCF0);
  }

  return result;
}

uint64_t sub_1BF3BC3B0(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBDD9528, &qword_1BF4F1670);
    sub_1BF3A43F4(a2, MEMORY[0x1E6985750]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void *sub_1BF3BC44C(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD9270, &unk_1BF4F0880);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

uint64_t getEnumTagSinglePayload for TapToRadarDraft.AutoDiagnostics(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}
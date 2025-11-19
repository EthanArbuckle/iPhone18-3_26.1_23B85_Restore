uint64_t sub_25AF0E480(uint64_t a1, uint64_t a2)
{
  v3 = sub_25B004864();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v7);
  v10 = v15 - v9;
  MEMORY[0x25F85D150](v8);
  v11 = sub_25AF0F160();
  v15[0] = a2;
  v15[1] = v11;
  WitnessTable = swift_getWitnessTable();
  sub_25AFB4FC4(v6, v3, WitnessTable);
  v13 = *(v4 + 8);
  v13(v6, v3);
  sub_25AFB4FC4(v10, v3, WitnessTable);
  return (v13)(v10, v3);
}

uint64_t sub_25AF0E60C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_25B005B34();
  sub_25B005B24();
  sub_25B005AE4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA238F8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
}

uint64_t sub_25AF0E718()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA238F8);
  sub_25AF0F274(&qword_27FA23900, &qword_27FA238F8);
  return sub_25B004D04();
}

uint64_t sub_25AF0E7C4()
{
  if (__isPlatformVersionAtLeast(2, 26, 4, 0))
  {
    sub_25B004824();
  }

  else
  {
    sub_25B004754();
  }

  return sub_25B004864();
}

uint64_t sub_25AF0E82C()
{
  if (__isPlatformVersionAtLeast(2, 26, 4, 0))
  {
    sub_25B004824();
    sub_25B004864();
    sub_25AF0E920();
  }

  else
  {
    sub_25B004754();
    sub_25B004864();
    sub_25AF0EF50(&qword_27FA23818, MEMORY[0x277CDD8B0]);
  }

  return swift_getWitnessTable();
}

unint64_t sub_25AF0E920()
{
  result = qword_27FA23810;
  if (!qword_27FA23810)
  {
    sub_25B004824();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA23810);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
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

uint64_t sub_25AF0EA00(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 48))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_25AF0EA20(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
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

  *(result + 48) = v3;
  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_25AF0EB54(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_25AF0EB74(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 32) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for MonitoredScrollViewEffect.ScrollGeometryHelperEffect.ScrollState(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for MonitoredScrollViewEffect.ScrollGeometryHelperEffect.ScrollState(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
}

uint64_t sub_25AF0EC44()
{
  v1 = *v0;
  sub_25B006294();
  MEMORY[0x25F85E0A0](v1);
  return sub_25B0062D4();
}

uint64_t sub_25AF0EC8C()
{
  v1 = *v0;
  sub_25B006294();
  MEMORY[0x25F85E0A0](v1);
  return sub_25B0062D4();
}

void *sub_25AF0ED04@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

BOOL sub_25AF0ED58(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *sub_25AF0ED88@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_25AF0EDB4@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

_DWORD *sub_25AF0EEA0@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

uint64_t sub_25AF0EEBC@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_25AFA8370();

  *a1 = v2;
  return result;
}

uint64_t sub_25AF0EF50(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_25AF0F114(uint64_t a1, unint64_t *a2)
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

unint64_t sub_25AF0F160()
{
  result = qword_27FA238F0;
  if (!qword_27FA238F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA238F0);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_25AF0F274(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_25AF0F2E8()
{
  result = sub_25AF18C30(&unk_286C4BC10, &qword_27FA23B10);
  qword_27FA30AF0 = result;
  return result;
}

uint64_t sub_25AF0F320()
{
  swift_getKeyPath();
  sub_25AF1829C(&unk_27FA256B0, type metadata accessor for ControlsModel);
  sub_25B004234();

  swift_beginAccess();
}

uint64_t sub_25AF0F3E0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_25AF1829C(&unk_27FA256B0, type metadata accessor for ControlsModel);
  sub_25B004234();

  v4 = OBJC_IVAR____TtC17NanoControlCenter13ControlsModel__knownControls;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_25AF0F4A8()
{
  swift_getKeyPath();
  sub_25AF1829C(&unk_27FA256B0, type metadata accessor for ControlsModel);
  sub_25B004224();
}

uint64_t sub_25AF0F574(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC17NanoControlCenter13ControlsModel__knownControls;
  swift_beginAccess();
  *(a1 + v4) = a2;
}

uint64_t sub_25AF0F5E4(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA24790);
  MEMORY[0x28223BE20]();
  v3 = &v10 - v2;
  v4 = sub_25B005B64();
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  sub_25B005B34();
  v5 = a1;
  v6 = sub_25B005B24();
  v7 = swift_allocObject();
  v8 = MEMORY[0x277D85700];
  v7[2] = v6;
  v7[3] = v8;
  v7[4] = v5;
  sub_25AF6C7F8(0, 0, v3, &unk_25B0090F0, v7);
}

uint64_t sub_25AF0F70C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  sub_25B005B34();
  *(v4 + 24) = sub_25B005B24();
  v6 = sub_25B005AE4();

  return MEMORY[0x2822009F8](sub_25AF0F7A4, v6, v5);
}

uint64_t sub_25AF0F7A4()
{
  v1 = *(v0 + 16);

  [v1 invalidate];
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_25AF0F814(void *a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC17NanoControlCenter13ControlsModel_controlHost);
  *(v1 + OBJC_IVAR____TtC17NanoControlCenter13ControlsModel_controlHost) = a1;
  if (a1 && v2 != a1)
  {
    v6 = v2;
    *(swift_allocObject() + 16) = a1;
    sub_25B0044E4();
    swift_allocObject();
    v4 = a1;
    *(v1 + OBJC_IVAR____TtC17NanoControlCenter13ControlsModel_controlHostDeinitCancellable) = sub_25B0044F4();
  }

  else
  {

    return MEMORY[0x2821F96F8]();
  }
}

void sub_25AF0F914()
{
  v1 = v0;
  if (qword_27FA23800 != -1)
  {
LABEL_35:
    swift_once();
  }

  v2 = sub_25B0044C4();
  __swift_project_value_buffer(v2, qword_27FA30C28);
  v3 = sub_25B0044B4();
  v4 = sub_25B005C94();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v54[0] = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_25AF8E7DC(0xD000000000000013, 0x800000025B016330, v54);
    _os_log_impl(&dword_25AF0B000, v3, v4, "%s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v6);
    MEMORY[0x25F85EC30](v6, -1, -1);
    MEMORY[0x25F85EC30](v5, -1, -1);
  }

  v7 = OBJC_IVAR____TtC17NanoControlCenter13ControlsModel_controlHost;
  v8 = *(v1 + OBJC_IVAR____TtC17NanoControlCenter13ControlsModel_controlHost);
  swift_getKeyPath();
  v54[0] = v1;
  sub_25AF1829C(&unk_27FA256B0, type metadata accessor for ControlsModel);
  v9 = v8;
  sub_25B004234();

  v10 = OBJC_IVAR____TtC17NanoControlCenter13ControlsModel__knownControls;
  swift_beginAccess();
  if (!*(*(v1 + v10) + 16))
  {
    sub_25AF122C8(v8);
    v41 = *(v1 + v7);
    *(v1 + v7) = 0;

    goto LABEL_38;
  }

  v47 = v7;
  v48 = v1;
  v49 = v8;
  v50 = v9;
  v11 = *(v1 + OBJC_IVAR____TtC17NanoControlCenter13ControlsModel_userDisplayedControls);
  v51 = MEMORY[0x277D84F90];
  v52 = v11;
  v53 = MEMORY[0x277D84F90];
  v12 = v11 + 56;
  v13 = 1 << *(v11 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v1 = v14 & *(v11 + 56);
  v15 = (v13 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v16 = 0;
  while (1)
  {
    v17 = v16;
    if (!v1)
    {
      break;
    }

LABEL_12:
    v18 = *(v52 + 48) + ((v16 << 11) | (32 * __clz(__rbit64(v1))));
    v19 = *v18;
    v20 = *(v18 + 24);
    sub_25B005B34();

    v21 = v19;
    sub_25B005B24();
    sub_25B005AE4();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    v1 &= v1 - 1;
    if (v20)
    {
      v22 = objc_allocWithZone(MEMORY[0x277CFA298]);
      v23 = sub_25B005924();
      v24 = [v22 initWithUniqueIdentifier:v23 controlIdentity:v21 location:8];

      [v24 setPushPolicy_];

      MEMORY[0x25F85D820](v25);
      if (*((v53 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v53 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_25B005A64();
      }

      sub_25B005A94();
      v51 = v53;
    }

    else
    {
    }
  }

  while (1)
  {
    v16 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      __break(1u);
      goto LABEL_35;
    }

    if (v16 >= v15)
    {
      break;
    }

    v1 = *(v12 + 8 * v16);
    ++v17;
    if (v1)
    {
      goto LABEL_12;
    }
  }

  if (v51 >> 62)
  {
    v27 = v47;
    v26 = v48;
    v28 = v49;
    v29 = v50;
    if (sub_25B005EA4())
    {
      goto LABEL_21;
    }

LABEL_37:

    sub_25AF122C8(v28);
    v41 = *(v26 + v27);
    *(v26 + v27) = 0;

    goto LABEL_38;
  }

  v27 = v47;
  v26 = v48;
  v28 = v49;
  v29 = v50;
  if (!*((v51 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_37;
  }

LABEL_21:

  v30 = sub_25B0044B4();
  v31 = sub_25B005C94();

  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v53 = v33;
    *v32 = 136315394;
    *(v32 + 4) = sub_25AF8E7DC(0xD000000000000013, 0x800000025B016330, &v53);
    *(v32 + 12) = 2080;
    v34 = sub_25B005DB4();
    v35 = MEMORY[0x25F85D850](v51, v34);
    v37 = sub_25AF8E7DC(v35, v36, &v53);

    *(v32 + 14) = v37;
    _os_log_impl(&dword_25AF0B000, v30, v31, "%s items: %s", v32, 0x16u);
    swift_arrayDestroy();
    v29 = v50;
    v28 = v49;
    MEMORY[0x25F85EC30](v33, -1, -1);
    MEMORY[0x25F85EC30](v32, -1, -1);
  }

  v38 = objc_allocWithZone(MEMORY[0x277CFA1F0]);
  sub_25B005DB4();
  v39 = sub_25B005A34();

  v40 = [v38 initWithControlItems:v39 automaticallyOrphaned:0];

  if (v28)
  {
    [v29 setConfiguration_];
  }

  else
  {
    v42 = objc_allocWithZone(MEMORY[0x277CFA220]);
    v43 = v40;
    v44 = sub_25B005924();
    v28 = [v42 initWithIdentifier:v44 configuration:v43];

    if (v28)
    {
      v45 = v28;
    }

    else
    {
      sub_25AF122C8(0);
    }
  }

  v41 = v28;
  v46 = v29;
  sub_25AF0F814(v28);
  if (v28)
  {
    if (*(v26 + OBJC_IVAR____TtC17NanoControlCenter13ControlsModel_shouldBeActive) == 1)
    {
      sub_25AF120D4();
    }
  }

  else
  {
    v41 = v46;
  }

LABEL_38:
}

char *sub_25AF10014()
{
  ObjectType = swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA24790);
  MEMORY[0x28223BE20]();
  v3 = &v32[-v2 - 8];
  v4 = OBJC_IVAR____TtC17NanoControlCenter13ControlsModel_extensionProviderVisible;
  v5 = [objc_opt_self() visible];
  [v5 setIncludeRemote_];
  [v5 setIncludeOnlyRemoteEligible_];
  v6 = [objc_allocWithZone(MEMORY[0x277CFA3C0]) initWithWidgetsPredicate:0 controlsPredicate:v5];
  v7 = [objc_allocWithZone(MEMORY[0x277CFA3B8]) initWithOptions_];

  *&v0[v4] = v7;
  v8 = OBJC_IVAR____TtC17NanoControlCenter13ControlsModel_canBeConfiguredControls;
  v9 = MEMORY[0x277D84F90];
  *&v0[v8] = sub_25AF6B6D0(MEMORY[0x277D84F90]);
  v10 = OBJC_IVAR____TtC17NanoControlCenter13ControlsModel_promptsForConfigurationControls;
  *&v0[v10] = sub_25AF6B6D0(v9);
  *&v0[OBJC_IVAR____TtC17NanoControlCenter13ControlsModel__knownControls] = sub_25AF6B7EC(v9);
  v0[OBJC_IVAR____TtC17NanoControlCenter13ControlsModel_hasStartedLoadingAllControls] = 0;
  v0[OBJC_IVAR____TtC17NanoControlCenter13ControlsModel_hasLoadedAllControls] = 0;
  *&v0[OBJC_IVAR____TtC17NanoControlCenter13ControlsModel_loadingControlsTask] = 0;
  *&v0[OBJC_IVAR____TtC17NanoControlCenter13ControlsModel_controlHost] = 0;
  *&v0[OBJC_IVAR____TtC17NanoControlCenter13ControlsModel_controlHostDeinitCancellable] = 0;
  v0[OBJC_IVAR____TtC17NanoControlCenter13ControlsModel_shouldBeActive] = 0;
  *&v0[OBJC_IVAR____TtC17NanoControlCenter13ControlsModel_userDisplayedControls] = MEMORY[0x277D84FA0];
  v11 = OBJC_IVAR____TtC17NanoControlCenter13ControlsModel_pendingToControlsCache;
  *&v0[v11] = sub_25AF6B800(v9);
  v12 = OBJC_IVAR____TtC17NanoControlCenter13ControlsModel_checkedBundleIDsWithoutKnownExtensionsCache;
  *&v0[v12] = sub_25AF6B95C(v9);
  sub_25B004264();
  v35.receiver = v0;
  v35.super_class = ObjectType;
  v13 = objc_msgSendSuper2(&v35, sel_init);
  v33 = &type metadata for ControlCenterFlags;
  v34 = sub_25AF1935C();
  v32[0] = 1;
  v14 = sub_25B004284();
  __swift_destroy_boxed_opaque_existential_0Tm(v32);
  if (v14)
  {
    if (qword_27FA23800 != -1)
    {
      swift_once();
    }

    v15 = sub_25B0044C4();
    __swift_project_value_buffer(v15, qword_27FA30C28);
    v16 = sub_25B0044B4();
    v17 = sub_25B005CD4();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_25AF0B000, v16, v17, "Feature flag enabled. Setting up monitoring for controls extensions.", v18, 2u);
      MEMORY[0x25F85EC30](v18, -1, -1);
    }

    v19 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v20 = *&v13[OBJC_IVAR____TtC17NanoControlCenter13ControlsModel_extensionProviderVisible];
    v21 = sub_25B005B64();
    (*(*(v21 - 8) + 56))(v3, 1, 1, v21);
    sub_25B005B34();
    v22 = v20;

    v23 = sub_25B005B24();
    v24 = swift_allocObject();
    v25 = MEMORY[0x277D85700];
    v24[2] = v23;
    v24[3] = v25;
    v24[4] = v19;
    v24[5] = v22;
    sub_25AF6C7F8(0, 0, v3, &unk_25B009188, v24);
  }

  else
  {
    if (qword_27FA23800 != -1)
    {
      swift_once();
    }

    v26 = sub_25B0044C4();
    __swift_project_value_buffer(v26, qword_27FA30C28);
    v27 = sub_25B0044B4();
    v28 = sub_25B005CD4();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&dword_25AF0B000, v27, v28, "Feature flag disabled. not monitoring for controls extensions.", v29, 2u);
      MEMORY[0x25F85EC30](v29, -1, -1);
    }
  }

  return v13;
}

uint64_t sub_25AF104C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[91] = a5;
  v5[90] = a4;
  sub_25B005B34();
  v5[92] = sub_25B005B24();
  v7 = sub_25B005AE4();
  v5[93] = v7;
  v5[94] = v6;

  return MEMORY[0x2822009F8](sub_25AF10568, v7, v6);
}

uint64_t sub_25AF10568()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[95] = Strong;
  if (Strong)
  {
    v2 = Strong;
    v3 = v0[91];
    v4 = swift_allocObject();
    v0[96] = v4;
    *(v4 + 16) = v3;
    *(v4 + 24) = v2;
    v5 = swift_task_alloc();
    v0[97] = v5;
    *(v5 + 16) = &unk_25B009198;
    *(v5 + 24) = v4;
    v6 = v3;
    v7 = v2;
    swift_asyncLet_begin();

    return MEMORY[0x282200928](v0 + 2);
  }

  else
  {

    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_25AF106F0()
{
  v1 = *(v0 + 760);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_25AF10778(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_25AF10798, 0, 0);
}

uint64_t sub_25AF10798()
{
  [*(v0 + 16) registerObserver_];
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_25AF10800(uint64_t a1, int *a2)
{
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 16) = v3;
  *v3 = v2;
  v3[1] = sub_25AF108E8;

  return v5();
}

uint64_t sub_25AF108E8()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

id sub_25AF10A7C()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for ControlsModel()
{
  result = qword_27FA239F8;
  if (!qword_27FA239F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_25AF10C14()
{
  result = sub_25B004274();
  if (v1 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

void sub_25AF10CE4(void *a1, char a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA24790);
  MEMORY[0x28223BE20]();
  v7 = &v21 - v6;
  if (qword_27FA23800 != -1)
  {
    swift_once();
  }

  v8 = sub_25B0044C4();
  __swift_project_value_buffer(v8, qword_27FA30C28);
  v9 = sub_25B0044B4();
  v10 = sub_25B005C94();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v22 = v12;
    *v11 = 136315138;
    *(v11 + 4) = sub_25AF8E7DC(0xD00000000000002ALL, 0x800000025B016380, &v22);
    _os_log_impl(&dword_25AF0B000, v9, v10, "%s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v12);
    MEMORY[0x25F85EC30](v12, -1, -1);
    MEMORY[0x25F85EC30](v11, -1, -1);
  }

  if ((a2 & 1) == 0 || (v3[OBJC_IVAR____TtC17NanoControlCenter13ControlsModel_hasStartedLoadingAllControls] & 1) == 0)
  {
    v3[OBJC_IVAR____TtC17NanoControlCenter13ControlsModel_hasStartedLoadingAllControls] = 1;
    v13 = sub_25B005B64();
    (*(*(v13 - 8) + 56))(v7, 1, 1, v13);
    sub_25B005B34();
    v14 = a1;
    v15 = v3;
    v16 = sub_25B005B24();
    v17 = swift_allocObject();
    v18 = MEMORY[0x277D85700];
    v17[2] = v16;
    v17[3] = v18;
    v17[4] = v14;
    v17[5] = v15;
    v19 = sub_25AF6C7F8(0, 0, v7, &unk_25B009150, v17);
    v20 = *&v15[OBJC_IVAR____TtC17NanoControlCenter13ControlsModel_loadingControlsTask];
    *&v15[OBJC_IVAR____TtC17NanoControlCenter13ControlsModel_loadingControlsTask] = v19;
    if (v20)
    {

      sub_25B005BF4();
    }
  }
}

uint64_t sub_25AF10FA0(uint64_t a1)
{
  v2[23] = a1;
  v2[24] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA23A70);
  v2[25] = v3;
  v2[26] = *(v3 - 8);
  v2[27] = swift_task_alloc();
  sub_25B005B34();
  v2[28] = sub_25B005B24();
  v5 = sub_25B005AE4();
  v2[29] = v5;
  v2[30] = v4;

  return MEMORY[0x2822009F8](sub_25AF110A0, v5, v4);
}

uint64_t sub_25AF110A0()
{
  v91 = v0;
  if (qword_27FA23800 == -1)
  {
    goto LABEL_2;
  }

  while (2)
  {
    swift_once();
LABEL_2:
    v1 = sub_25B0044C4();
    __swift_project_value_buffer(v1, qword_27FA30C28);
    v2 = sub_25B0044B4();
    v3 = sub_25B005C94();
    v81 = v0;
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      v90 = v5;
      *v4 = 136315138;
      *(v4 + 4) = sub_25AF8E7DC(0xD000000000000010, 0x800000025B0162C0, &v90);
      _os_log_impl(&dword_25AF0B000, v2, v3, "%s", v4, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v5);
      MEMORY[0x25F85EC30](v5, -1, -1);
      MEMORY[0x25F85EC30](v4, -1, -1);
    }

    v6 = MEMORY[0x277D84FA0];
    v7 = MEMORY[0x277D84F90];
    v8 = MEMORY[0x277D84FA0];
    if (MEMORY[0x277D84F90] >> 62)
    {
      if (sub_25B005EA4())
      {
        sub_25AF17774(MEMORY[0x277D84F90]);
      }

      else
      {
        v8 = MEMORY[0x277D84FA0];
      }
    }

    v9 = *(v0 + 184);
    *(v0 + 128) = v8;
    *(v0 + 136) = v6;
    v10 = *(v9 + 16);
    if (!v10)
    {
      goto LABEL_23;
    }

    v85 = *(v0 + 192);
    v82 = OBJC_IVAR____TtC17NanoControlCenter13ControlsModel__knownControls;
    swift_beginAccess();
    v11 = (v9 + 64);
    do
    {
      v13 = *(v11 - 4);
      v12 = *(v11 - 3);
      v15 = *(v11 - 2);
      v14 = *(v11 - 1);
      v16 = *v11;
      if (!(v16 >> 6))
      {
        sub_25AF18128(*(v11 - 4), *(v11 - 3), *(v11 - 2), *(v11 - 1), *v11);
        goto LABEL_8;
      }

      if (v16 >> 6 != 1)
      {
        sub_25AF181DC(*(v11 - 4), *(v11 - 3), *(v11 - 2), *(v11 - 1), *v11);
        sub_25AF181DC(v13, v12, v15, v14, v16);
        sub_25AF181DC(v13, v12, v15, v14, v16);
        v88 = v14;
        if (v16)
        {
          v17 = *(v0 + 192);

          swift_getKeyPath();
          *(v0 + 168) = v17;
          sub_25AF1829C(&unk_27FA256B0, type metadata accessor for ControlsModel);
          sub_25B004234();

          if (*(*(v85 + v82) + 16))
          {

            sub_25AF8EE80(v13, v12);
            if (v18)
            {

              sub_25AF18128(v13, v12, v15, v14, v16);

              sub_25AF18128(v13, v12, v15, v14, v16);

              goto LABEL_8;
            }
          }

          sub_25AF8FEC4(&v90, v13, v12);
          sub_25AF18128(v13, v12, v15, v14, v16);
          sub_25AF18128(v13, v12, v15, v14, v16);
        }

        else
        {
          v79 = *(v0 + 192);

          v19 = [v13 extensionIdentity];
          swift_beginAccess();
          v78 = sub_25B004294();
          v21 = v20;
          swift_endAccess();

          swift_getKeyPath();
          *(v0 + 176) = v79;
          sub_25AF1829C(&unk_27FA256B0, type metadata accessor for ControlsModel);
          sub_25B004234();

          if (*(*(v85 + v82) + 16) && (, sub_25AF8EE80(v78, v21), v23 = v22, , (v23 & 1) != 0))
          {

            sub_25AF18128(v13, v12, v15, v88, v16);

            sub_25AF18128(v13, v12, v15, v88, v16);

            v0 = v81;
          }

          else
          {

            v0 = v81;
            sub_25AF90014(&v90, v13);
            sub_25AF18128(v13, v12, v15, v88, v16);
            sub_25AF18128(v13, v12, v15, v88, v16);
          }
        }
      }

LABEL_8:
      v11 += 40;
      --v10;
    }

    while (v10);
    v8 = *(v0 + 128);
    v7 = MEMORY[0x277D84F90];
LABEL_23:
    *(v0 + 144) = v7;
    if ((v8 & 0xC000000000000001) != 0)
    {
      sub_25B005E94();
      sub_25AF18BD4(0, &qword_27FA23A78);
      sub_25AF1890C(&unk_27FA23A80, &qword_27FA23A78);
      v0 = v81;
      sub_25B005C64();
      v8 = v81[2];
      v24 = v81[3];
      v25 = v81[4];
      v26 = v81[5];
      v27 = v81[6];
    }

    else
    {
      v26 = 0;
      v28 = -1 << *(v8 + 32);
      v24 = v8 + 56;
      v25 = ~v28;
      v29 = -v28;
      if (v29 < 64)
      {
        v30 = ~(-1 << v29);
      }

      else
      {
        v30 = -1;
      }

      v27 = v30 & *(v8 + 56);
    }

    v31 = *(v0 + 208);
    v32 = (v25 + 64) >> 6;
    v84 = (v31 + 8);
    v86 = (v31 + 16);
    v80 = MEMORY[0x277D84F90];
    v89 = v8;
    v83 = v24;
LABEL_30:
    v33 = v26;
    if (v8 < 0)
    {
      while (1)
      {
        v38 = sub_25B005EC4();
        if (!v38)
        {
          break;
        }

        *(v0 + 160) = v38;
        sub_25AF18BD4(0, &qword_27FA23A78);
        swift_dynamicCast();
        v37 = *(v0 + 152);
        v26 = v33;
        v36 = v27;
        if (!v37)
        {
          break;
        }

LABEL_39:
        v39 = *(v0 + 216);
        v40 = *(v0 + 192);
        v41 = *(v0 + 200);
        v42 = [v37 extensionIdentity];
        v43 = *MEMORY[0x277CFA138];
        swift_beginAccess();
        (*v86)(v39, &v42[v43], v41);

        v44 = *(v40 + OBJC_IVAR____TtC17NanoControlCenter13ControlsModel_extensionProviderVisible);
        sub_25B004294();
        v45 = sub_25B005924();

        v46 = [v44 widgetExtensionContainerForExtensionBundleIdentifier_];

        if (v46)
        {
          v47 = v46;
          MEMORY[0x25F85D820]();
          if (*((*(v0 + 144) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 144) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_25B005A64();
          }

          v48 = *(v0 + 216);
          v49 = *(v0 + 200);
          sub_25B005A94();

          (*v84)(v48, v49);
          v80 = *(v0 + 144);
          v8 = v89;
          v27 = v36;
          v24 = v83;
          goto LABEL_30;
        }

        (*v84)(*(v0 + 216), *(v0 + 200));

        v33 = v26;
        v27 = v36;
        v8 = v89;
        v24 = v83;
        if ((v89 & 0x8000000000000000) == 0)
        {
          goto LABEL_31;
        }
      }
    }

    else
    {
LABEL_31:
      v34 = v33;
      v35 = v27;
      v26 = v33;
      if (!v27)
      {
        while (1)
        {
          v26 = v34 + 1;
          if (__OFADD__(v34, 1))
          {
            break;
          }

          if (v26 >= v32)
          {
            goto LABEL_45;
          }

          v35 = *(v24 + 8 * v26);
          ++v34;
          if (v35)
          {
            goto LABEL_35;
          }
        }

LABEL_66:
        __break(1u);
        continue;
      }

LABEL_35:
      v36 = (v35 - 1) & v35;
      v37 = *(*(v8 + 48) + ((v26 << 9) | (8 * __clz(__rbit64(v35)))));
      if (v37)
      {
        goto LABEL_39;
      }
    }

    break;
  }

LABEL_45:
  v87 = *(v0 + 192);
  sub_25AF18700();
  v50 = 0;
  v51 = v0;
  v52 = *(v0 + 136);
  v55 = *(v52 + 56);
  v54 = v52 + 56;
  v53 = v55;
  v56 = -1;
  v57 = -1 << *(*(v0 + 136) + 32);
  if (-v57 < 64)
  {
    v56 = ~(-1 << -v57);
  }

  v0 = v56 & v53;
  v58 = OBJC_IVAR____TtC17NanoControlCenter13ControlsModel_extensionProviderVisible;
  v59 = (63 - v57) >> 6;
LABEL_48:
  v51[31] = v80;
  while (v0)
  {
LABEL_49:
    v0 &= v0 - 1;
    v60 = *(v87 + v58);

    v61 = sub_25B005924();

    v62 = [v60 widgetExtensionContainerForContainerBundleIdentifier_];

    if (v62)
    {
      v64 = v62;
      v51 = v81;
      MEMORY[0x25F85D820]();
      if (*((v51[18] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v51[18] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_25B005A64();
      }

      sub_25B005A94();

      v80 = v81[18];
      goto LABEL_48;
    }
  }

  while (1)
  {
    v63 = v50 + 1;
    if (__OFADD__(v50, 1))
    {
      __break(1u);
      goto LABEL_66;
    }

    if (v63 >= v59)
    {
      break;
    }

    v0 = *(v54 + 8 * v63);
    ++v50;
    if (v0)
    {
      v50 = v63;
      goto LABEL_49;
    }
  }

  if (v80 >> 62)
  {
    if (!sub_25B005EA4())
    {
      goto LABEL_71;
    }

LABEL_60:
    v65 = sub_25B0044B4();
    v66 = sub_25B005C94();
    if (os_log_type_enabled(v65, v66))
    {
      v67 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      v90 = v68;
      *v67 = 136315394;
      *(v67 + 4) = sub_25AF8E7DC(0xD000000000000010, 0x800000025B0162C0, &v90);
      *(v67 + 12) = 2080;
      v69 = sub_25B005DC4();

      v71 = MEMORY[0x25F85D850](v70, v69);
      v73 = v72;

      v74 = sub_25AF8E7DC(v71, v73, &v90);

      *(v67 + 14) = v74;
      _os_log_impl(&dword_25AF0B000, v65, v66, "%s loading from containers: %s", v67, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x25F85EC30](v68, -1, -1);
      MEMORY[0x25F85EC30](v67, -1, -1);
    }

    v75 = swift_task_alloc();
    v81[32] = v75;
    *v75 = v81;
    v75[1] = sub_25AF11D3C;

    return sub_25AF17A64(v80);
  }

  else
  {
    if (*((v80 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_60;
    }

LABEL_71:

    v77 = v81[1];

    return v77();
  }
}

uint64_t sub_25AF11D3C(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 264) = a1;

  v3 = *(v2 + 240);
  v4 = *(v2 + 232);

  return MEMORY[0x2822009F8](sub_25AF11E88, v4, v3);
}

uint64_t sub_25AF11E88()
{
  v1 = *(v0 + 264);

  sub_25AF11F20(v1);

  sub_25AF0F914();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_25AF11F20(uint64_t a1)
{
  v2 = v1;
  swift_getKeyPath();
  sub_25AF1829C(&unk_27FA256B0, type metadata accessor for ControlsModel);

  sub_25B004234();

  v8 = v1;
  swift_getKeyPath();
  sub_25B004254();

  v4 = OBJC_IVAR____TtC17NanoControlCenter13ControlsModel__knownControls;
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v8 + v4);
  *(v8 + v4) = 0x8000000000000000;
  sub_25AF183F8(a1, sub_25AF16BCC, 0, isUniquelyReferenced_nonNull_native, &v7);

  *(v2 + v4) = v7;
  swift_endAccess();
  v8 = v2;
  swift_getKeyPath();
  sub_25B004244();
}

void sub_25AF120D4()
{
  *(v0 + OBJC_IVAR____TtC17NanoControlCenter13ControlsModel_shouldBeActive) = 1;
  v1 = *(v0 + OBJC_IVAR____TtC17NanoControlCenter13ControlsModel_controlHost);
  if (v1)
  {
    v2 = qword_27FA23800;
    v3 = v1;
    if (v2 != -1)
    {
      swift_once();
    }

    v4 = sub_25B0044C4();
    __swift_project_value_buffer(v4, qword_27FA30C28);
    v11 = v3;
    v5 = sub_25B0044B4();
    v6 = sub_25B005CD4();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v12 = v9;
      *v7 = 136315394;
      *(v7 + 4) = sub_25AF8E7DC(0xD000000000000015, 0x800000025B0163F0, &v12);
      *(v7 + 12) = 2112;
      *(v7 + 14) = v11;
      *v8 = v1;
      v10 = v11;
      _os_log_impl(&dword_25AF0B000, v5, v6, "%s activating control host: %@", v7, 0x16u);
      sub_25AF1896C(v8);
      MEMORY[0x25F85EC30](v8, -1, -1);
      __swift_destroy_boxed_opaque_existential_0Tm(v9);
      MEMORY[0x25F85EC30](v9, -1, -1);
      MEMORY[0x25F85EC30](v7, -1, -1);
    }

    [v11 activate];
  }
}

void sub_25AF122C8(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC17NanoControlCenter13ControlsModel_controlHost);
  if (a1)
  {
    v4 = v3 == a1;
    v3 = a1;
    if (v4)
    {
      *(v1 + OBJC_IVAR____TtC17NanoControlCenter13ControlsModel_shouldBeActive) = 0;
      v3 = a1;
    }
  }

  else
  {
    *(v1 + OBJC_IVAR____TtC17NanoControlCenter13ControlsModel_shouldBeActive) = 0;
    v5 = v3;
    if (!v3)
    {
      return;
    }
  }

  v6 = qword_27FA23800;
  v7 = a1;
  if (v6 != -1)
  {
    swift_once();
  }

  v8 = sub_25B0044C4();
  __swift_project_value_buffer(v8, qword_27FA30C28);
  v15 = v3;
  v9 = sub_25B0044B4();
  v10 = sub_25B005CD4();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v16 = v13;
    *v11 = 136315394;
    *(v11 + 4) = sub_25AF8E7DC(0xD000000000000019, 0x800000025B016410, &v16);
    *(v11 + 12) = 2112;
    *(v11 + 14) = v15;
    *v12 = v3;
    v14 = v15;
    _os_log_impl(&dword_25AF0B000, v9, v10, "%s deactivating control host: %@", v11, 0x16u);
    sub_25AF1896C(v12);
    MEMORY[0x25F85EC30](v12, -1, -1);
    __swift_destroy_boxed_opaque_existential_0Tm(v13);
    MEMORY[0x25F85EC30](v13, -1, -1);
    MEMORY[0x25F85EC30](v11, -1, -1);
  }

  [v15 deactivate];
}

uint64_t sub_25AF124E0@<X0>(char a1@<W1>, uint64_t (*a2)(void *)@<X2>, void *a3@<X8>)
{
  sub_25B005B34();
  sub_25B005B24();
  sub_25B005AE4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_25AF34F34(a1, a2, a3);
}

void sub_25AF125B0(id *a1, char a2)
{
  v3 = v2;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA23A70);
  v6 = *(v49 - 8);
  v7 = MEMORY[0x28223BE20](v49);
  v48 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v47 = &v40 - v9;
  v50 = *a1;
  swift_getKeyPath();
  v56 = v3;
  sub_25AF1829C(&unk_27FA256B0, type metadata accessor for ControlsModel);
  sub_25B004234();

  swift_beginAccess();
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  *(v10 + 24) = 0;
  *(v10 + 32) = 0;

  v12 = sub_25AF16C14(v11, sub_25AF1972C);

  v44 = *(v12 + 2);
  if (!v44)
  {
LABEL_16:

    return;
  }

  v13 = 0;
  v41 = (v6 + 16);
  v42 = (v6 + 8);
  v14 = (v12 + 56);
  v43 = v12;
  while (v13 < *(v12 + 2))
  {
    v18 = *(v14 - 3);
    v19 = *v14;
    sub_25B005B34();

    v20 = v18;
    v21 = sub_25B005B24();
    sub_25B005AE4();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    v51 = v20;
    v22 = [v20 kind];
    v23 = sub_25B005934();
    v25 = v24;

    v26 = [v50 kind];
    v27 = sub_25B005934();
    v29 = v28;

    if (v23 == v27 && v25 == v29)
    {
    }

    else
    {
      v30 = sub_25B006174();

      if ((v30 & 1) == 0)
      {

        goto LABEL_4;
      }
    }

    v45 = v19;
    v46 = v21;
    v31 = [v51 extensionIdentity];
    v32 = MEMORY[0x277CFA138];
    v33 = *MEMORY[0x277CFA138];
    swift_beginAccess();
    v34 = *v41;
    v35 = v49;
    (*v41)(v47, &v31[v33], v49);

    v36 = [v50 extensionIdentity];
    v37 = *v32;
    swift_beginAccess();
    v34(v48, &v36[v37], v35);

    sub_25AF19738();
    sub_25B0059F4();
    sub_25B0059F4();
    if (v54 == v52 && v55 == v53)
    {

      v38 = *v42;
      v39 = v49;
      (*v42)(v48, v49);
      v38(v47, v39);

      goto LABEL_16;
    }

    v15 = sub_25B006174();

    v16 = *v42;
    v17 = v49;
    (*v42)(v48, v49);
    v16(v47, v17);

    v12 = v43;
    if (v15)
    {
      goto LABEL_16;
    }

LABEL_4:
    ++v13;
    v14 += 4;
    if (v44 == v13)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
}

void sub_25AF12B3C(uint64_t a1)
{
  swift_getKeyPath();
  sub_25AF1829C(&unk_27FA256B0, type metadata accessor for ControlsModel);
  sub_25B004234();

  swift_beginAccess();
  v2 = swift_allocObject();
  *(v2 + 16) = 2;
  *(v2 + 24) = 0;
  *(v2 + 32) = 0;

  v4 = sub_25AF16C14(v3, sub_25AF19A28);

  v30 = *(v4 + 2);
  if (v30)
  {
    v5 = 0;
    v6 = v4 + 56;
    v26 = v4;
    v27 = a1;
    while (v5 < *(v4 + 2))
    {
      v9 = *(v6 - 3);
      sub_25B005B34();

      v10 = v9;
      sub_25B005B24();
      sub_25B005AE4();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      v11 = *a1;
      if (*(a1 + 32))
      {
        v12 = *(a1 + 8);
        v28 = *(a1 + 16);
        v13 = *(a1 + 24);

        v29 = v13;

        v14 = [v10 extensionIdentity];
        v15 = *MEMORY[0x277CFA130];
        swift_beginAccess();
        v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA23B28);
        if ((*(*(v16 - 8) + 48))(&v14[v15], 1, v16))
        {
          swift_endAccess();

          v17 = 0;
        }

        else
        {
          v18 = sub_25B004294();
          v20 = v19;
          swift_endAccess();

          if (v11 == v18 && v12 == v20)
          {

            v17 = 1;
          }

          else
          {
            v17 = sub_25B006174();
          }
        }

        v21 = [v10 kind];
        v22 = sub_25B005934();
        v24 = v23;

        v4 = v26;
        if (v28 == v22 && v29 == v24)
        {

          a1 = v27;
          if (v17)
          {
            goto LABEL_20;
          }
        }

        else
        {
          v25 = sub_25B006174();

          a1 = v27;
          if (v17 & v25)
          {
            goto LABEL_20;
          }
        }
      }

      else
      {
        v7 = v11;
        sub_25AF18BD4(0, &qword_27FA27200);
        v8 = sub_25B005DE4();

        if (v8)
        {
          goto LABEL_20;
        }
      }

      ++v5;
      v6 += 32;
      if (v30 == v5)
      {
        goto LABEL_20;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_20:
  }
}

void sub_25AF12F90(uint64_t a1@<X0>, unint64_t a2@<X8>)
{
  v3 = v2;
  v112 = *a1;
  v6 = *(a1 + 24);
  *&v113 = *(a1 + 16);
  v111 = *(a1 + 32);
  if (qword_27FA23800 != -1)
  {
    goto LABEL_57;
  }

  while (1)
  {
    v7 = sub_25B0044C4();
    __swift_project_value_buffer(v7, qword_27FA30C28);
    v8 = *(a1 + 8);
    v9 = *(a1 + 16);
    v10 = *(a1 + 32);
    v116 = *a1;
    v120 = *(a1 + 24);
    sub_25AF18244(*a1, v8, v9, v120, v10);
    v11 = sub_25B0044B4();
    v12 = sub_25B005C94();
    sub_25AF197DC(a1);
    *(&v113 + 1) = v6;
    if (os_log_type_enabled(v11, v12))
    {
      v109 = v8;
      v13 = swift_slowAlloc();
      v117 = v9;
      v14 = a2;
      v15 = swift_slowAlloc();
      *&v124 = v15;
      *v13 = 136315394;
      *(v13 + 4) = sub_25AF8E7DC(0xD000000000000015, 0x800000025B0163D0, &v124);
      *(v13 + 12) = 2080;
      v16 = sub_25AF5B294();
      v18 = sub_25AF8E7DC(v16, v17, &v124);

      *(v13 + 14) = v18;
      _os_log_impl(&dword_25AF0B000, v11, v12, "%s pendingControl: %s", v13, 0x16u);
      swift_arrayDestroy();
      v19 = v15;
      a2 = v14;
      v9 = v117;
      MEMORY[0x25F85EC30](v19, -1, -1);
      v20 = v13;
      v8 = v109;
      MEMORY[0x25F85EC30](v20, -1, -1);
    }

    v21 = OBJC_IVAR____TtC17NanoControlCenter13ControlsModel_pendingToControlsCache;
    swift_beginAccess();
    v22 = *(v3 + v21);
    if (*(v22 + 16))
    {
      v23 = sub_25AF8EEF8(a1);
      if (v24)
      {
        v25 = *(v22 + 56) + 40 * v23;
        v26 = *v25;
        v27 = *(v25 + 8);
        v28 = *(v25 + 16);
        v29 = *(v25 + 24);
        v30 = *(v25 + 32);
        swift_endAccess();
        *a2 = v26;
        *(a2 + 8) = v27;
        *(a2 + 16) = v28;
        *(a2 + 24) = v29;
        *(a2 + 32) = v30;
        sub_25AF1988C(v26, v27, v28, v29, v30);
        return;
      }
    }

    swift_endAccess();
    if ((v10 & 1) == 0)
    {
      break;
    }

    v118 = v9;
    swift_getKeyPath();
    *&v124 = v3;
    sub_25AF1829C(&unk_27FA256B0, type metadata accessor for ControlsModel);

    sub_25B004234();

    v31 = OBJC_IVAR____TtC17NanoControlCenter13ControlsModel__knownControls;
    swift_beginAccess();
    v32 = *(v3 + v31);
    if (!*(v32 + 16) || (, v33 = sub_25AF8EE80(v116, v8), v35 = v34, , (v35 & 1) == 0))
    {

      v124 = v112;
      v125 = v113;
      v126 = v111 & 1 | 0x80;
      *(a2 + 32) = v126;
      v75 = v125;
      *a2 = v124;
      *(a2 + 16) = v75;
      swift_beginAccess();
      sub_25AF19830(a1, v122);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v122[0] = *(v3 + v21);
      *(v3 + v21) = 0x8000000000000000;
      sub_25AF15C10(&v124, a1, isUniquelyReferenced_nonNull_native);
      *(v3 + v21) = v122[0];
LABEL_32:
      swift_endAccess();
      return;
    }

    v107 = v3;
    v110 = v8;
    v105 = a2;
    v6 = *(*(v32 + 56) + 8 * v33);

    *&v113 = v6;
    sub_25AF35688(&v124);
    v36 = sub_25AF3535C(v124);
    a2 = v36;
    *(&v113 + 1) = v36 >> 62;
    v103 = v21;
    v3 = v36 & 0xFFFFFFFFFFFFFF8;
    if (v36 >> 62)
    {
      v37 = sub_25B005EA4();
    }

    else
    {
      v37 = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v38 = a2 & 0xC000000000000001;
    *(&v112 + 1) = a2 + 32;

    v39 = 0;
    while (1)
    {
      if (v37 == v39)
      {
        goto LABEL_37;
      }

      if (!v38)
      {
        break;
      }

      v40 = MEMORY[0x25F85DD30](v39, a2);
LABEL_17:
      v11 = v40;
      sub_25B005B34();
      sub_25B005B24();
      sub_25B005AE4();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      v6 = sub_25B005924();
      v41 = [v11 controlDescriptorForKind:v6];

      if (v41)
      {
        v37 = v39;
LABEL_37:
        if (!*(&v113 + 1))
        {
          if (v37 != *(v3 + 16))
          {
            goto LABEL_39;
          }

LABEL_51:

          swift_bridgeObjectRelease_n();
          v124 = 0u;
          v125 = 0u;
          v126 = -2;
          *(v105 + 32) = -2;
          v91 = v125;
          *v105 = v124;
          *(v105 + 16) = v91;
          swift_beginAccess();
          sub_25AF18244(v116, v110, v118, v120, 1);
          v92 = swift_isUniquelyReferenced_nonNull_native();
          v123 = *(v107 + v103);
          *(v107 + v103) = 0x8000000000000000;
          sub_25AF15C10(&v124, a1, v92);
          sub_25AF197DC(a1);
          *(v107 + v103) = v123;
          goto LABEL_32;
        }

        if (v37 == sub_25B005EA4())
        {
          goto LABEL_51;
        }

LABEL_39:
        if (v38)
        {
          v81 = MEMORY[0x25F85DD30](v37, a2);
          v3 = v107;
          v38 = v103;
LABEL_42:
          sub_25B005B34();
          sub_25B005B24();
          sub_25B005AE4();
          if ((swift_task_isCurrentExecutor() & 1) == 0)
          {
            swift_task_reportUnexpectedExecutor();
          }

          v82 = sub_25B005924();
          v83 = [v81 controlDescriptorForKind_];

          swift_bridgeObjectRelease_n();
          if (!v83)
          {
            __break(1u);
            return;
          }

          a2 = v83;
          v84 = [a2 extensionIdentity];
          v85 = [a2 kind];
          if (!v85)
          {
            sub_25B005934();
            v85 = sub_25B005924();
          }

          v86 = objc_allocWithZone(MEMORY[0x277CFA228]);
          v87 = [a2 defaultIntentReference];
          v6 = [v86 initWithExtensionIdentity:v84 kind:v85 intentReference:v87];

          v11 = [a2 controlType];
          if (qword_27FA23700 != -1)
          {
            goto LABEL_61;
          }
        }

        else
        {
          if (v37 < *(v3 + 16))
          {
            v81 = *(*(&v112 + 1) + 8 * v37);
            v3 = v107;
            v38 = v103;
            goto LABEL_42;
          }

          __break(1u);
LABEL_61:
          swift_once();
        }

        if (sub_25AFA0C7C(v11, qword_27FA30AF0))
        {

          *&v124 = v6;
          *(&v124 + 1) = v11;
          v125 = 0uLL;
          v126 = 0;
          *(v105 + 32) = 0;
          v88 = v125;
          *v105 = v124;
          *(v105 + 16) = v88;
          swift_beginAccess();
          v89 = v6;
          sub_25AF19830(a1, v122);
          v79 = v89;
          v90 = swift_isUniquelyReferenced_nonNull_native();
          v122[0] = *(v3 + v38);
          *(v3 + v38) = 0x8000000000000000;
          sub_25AF15C10(&v124, a1, v90);
          sub_25AF197DC(a1);
          *(v3 + v38) = v122[0];
          swift_endAccess();
          goto LABEL_35;
        }

        v93 = sub_25B0044B4();
        v94 = sub_25B005CB4();
        if (os_log_type_enabled(v93, v94))
        {
          v95 = swift_slowAlloc();
          v96 = swift_slowAlloc();
          *&v124 = v96;
          *v95 = 136315394;
          *(v95 + 4) = sub_25AF8E7DC(0xD000000000000015, 0x800000025B0163D0, &v124);
          *(v95 + 12) = 2080;
          v97 = sub_25B005CE4();
          v99 = sub_25AF8E7DC(v97, v98, &v124);

          *(v95 + 14) = v99;
          _os_log_impl(&dword_25AF0B000, v93, v94, "%s pendingControl is of unsupported type: %s. Not providing GlanceControlID.", v95, 0x16u);
          swift_arrayDestroy();
          v100 = v96;
          v38 = v103;
          MEMORY[0x25F85EC30](v100, -1, -1);
          MEMORY[0x25F85EC30](v95, -1, -1);
        }

        v124 = 0u;
        v125 = 0u;
        v126 = -2;
        *(v105 + 32) = -2;
        v101 = v125;
        *v105 = v124;
        *(v105 + 16) = v101;
        swift_beginAccess();
        sub_25AF18244(v116, v110, v118, v120, 1);
        v102 = swift_isUniquelyReferenced_nonNull_native();
        v123 = *(v3 + v38);
        *(v3 + v38) = 0x8000000000000000;
        sub_25AF15C10(&v124, a1, v102);
        sub_25AF197DC(a1);
        *(v3 + v38) = v123;
        goto LABEL_32;
      }

      if (__OFADD__(v39++, 1))
      {
        goto LABEL_56;
      }
    }

    if (v39 < *(v3 + 16))
    {
      v40 = *(a2 + 8 * v39 + 32);
      goto LABEL_17;
    }

    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    swift_once();
  }

  v106 = a2;
  v108 = v3;
  v43 = *(v3 + OBJC_IVAR____TtC17NanoControlCenter13ControlsModel_extensionProviderVisible);
  v44 = v116;

  v45 = [v43 controlDescriptorForControl_];
  if (!v45)
  {

    v62 = v44;

    v63 = sub_25B0044B4();
    v64 = sub_25B005CA4();
    sub_25AF197DC(a1);
    if (os_log_type_enabled(v63, v64))
    {
      v65 = swift_slowAlloc();
      v66 = v21;
      v67 = swift_slowAlloc();
      *&v124 = v67;
      *v65 = 136315394;
      *(v65 + 4) = sub_25AF8E7DC(0xD000000000000015, 0x800000025B0163D0, &v124);
      *(v65 + 12) = 2080;
      v68 = sub_25AF5B294();
      v70 = sub_25AF8E7DC(v68, v69, &v124);

      *(v65 + 14) = v70;
      _os_log_impl(&dword_25AF0B000, v63, v64, "%s couldn't match pendingControl: %s. Keeping as pending.", v65, 0x16u);
      swift_arrayDestroy();
      v71 = v67;
      v21 = v66;
      MEMORY[0x25F85EC30](v71, -1, -1);
      MEMORY[0x25F85EC30](v65, -1, -1);
    }

    v124 = v112;
    v125 = v113;
    v126 = v111 & 1 | 0x80;
    *(a2 + 32) = v126;
    v72 = v125;
    *a2 = v124;
    *(a2 + 16) = v72;
    swift_beginAccess();
    sub_25AF19830(a1, v122);
    v73 = v62;

    v74 = swift_isUniquelyReferenced_nonNull_native();
    v122[0] = *(v108 + v21);
    *(v108 + v21) = 0x8000000000000000;
    sub_25AF15C10(&v124, a1, v74);
    *(v108 + v21) = v122[0];
    goto LABEL_32;
  }

  v46 = v45;
  v47 = v8;
  v48 = v44;
  v49 = [v46 controlType];
  sub_25AF19830(a1, &v124);
  v50 = v48;

  v51 = sub_25B0044B4();
  v52 = sub_25B005CA4();

  sub_25AF197DC(a1);
  if (os_log_type_enabled(v51, v52))
  {
    v104 = v21;
    v53 = swift_slowAlloc();
    v121 = swift_slowAlloc();
    v122[0] = v121;
    *v53 = 136315650;
    *(v53 + 4) = sub_25AF8E7DC(0xD000000000000015, 0x800000025B0163D0, v122);
    *(v53 + 12) = 2080;
    *&v124 = v50;
    *(&v124 + 1) = v49;
    *&v125 = v8;
    *(&v125 + 1) = v9;
    v119 = v50;

    log = v51;
    v114 = v52;
    v54 = GlanceControlID.description.getter();
    v56 = v55;

    v47 = v8;

    v57 = sub_25AF8E7DC(v54, v56, v122);

    *(v53 + 14) = v57;
    *(v53 + 22) = 2080;
    v58 = sub_25AF5B294();
    v60 = sub_25AF8E7DC(v58, v59, v122);

    *(v53 + 24) = v60;
    _os_log_impl(&dword_25AF0B000, log, v114, "%s matched control: %s; for pendingControl: %s.", v53, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x25F85EC30](v121, -1, -1);
    v61 = v53;
    v21 = v104;
    MEMORY[0x25F85EC30](v61, -1, -1);
  }

  else
  {
  }

  *&v124 = v116;
  *(&v124 + 1) = v49;
  *&v125 = v47;
  *(&v125 + 1) = v9;
  v126 = 0;
  *(v106 + 32) = 0;
  v77 = v125;
  *v106 = v124;
  *(v106 + 16) = v77;
  swift_beginAccess();
  v78 = v50;

  sub_25AF19830(a1, v122);
  v79 = v78;

  v80 = swift_isUniquelyReferenced_nonNull_native();
  v122[0] = *(v108 + v21);
  *(v108 + v21) = 0x8000000000000000;
  sub_25AF15C10(&v124, a1, v80);
  sub_25AF197DC(a1);
  *(v108 + v21) = v122[0];
  swift_endAccess();
LABEL_35:
}

uint64_t sub_25AF13F64(id *a1, uint64_t *a2, SEL *a3)
{
  v6 = v3;
  v7 = *a1;
  v8 = [*a1 extensionIdentity];
  v9 = [v7 kind];
  v10 = sub_25B005934();
  v12 = v11;

  v13 = *a2;
  swift_beginAccess();
  v14 = *(v6 + v13);
  if (!*(v14 + 16) || (v15 = sub_25AF8EFD0(v8, v10, v12), (v16 & 1) == 0))
  {
    swift_endAccess();
    v18 = [*(v6 + OBJC_IVAR____TtC17NanoControlCenter13ControlsModel_extensionProviderVisible) controlDescriptorForControl_];
    if (v18)
    {
      v19 = v18;
      if ([v18 *a3])
      {
        swift_beginAccess();
        v20 = v8;

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v25 = *(v6 + v13);
        *(v6 + v13) = 0x8000000000000000;
        v17 = 1;
        sub_25AF15DAC(1, v20, v10, v12, isUniquelyReferenced_nonNull_native);

        *(v6 + v13) = v25;
        swift_endAccess();

        goto LABEL_9;
      }
    }

    swift_beginAccess();
    v22 = v8;

    v23 = swift_isUniquelyReferenced_nonNull_native();
    v26 = *(v6 + v13);
    *(v6 + v13) = 0x8000000000000000;
    sub_25AF15DAC(0, v22, v10, v12, v23);

    *(v6 + v13) = v26;
    swift_endAccess();
    v17 = 0;
    goto LABEL_9;
  }

  v17 = *(*(v14 + 56) + v15);
  swift_endAccess();
LABEL_9:

  return v17;
}

uint64_t sub_25AF14198(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a4;
  sub_25B005B34();
  *(v4 + 48) = sub_25B005B24();
  v6 = sub_25B005AE4();

  return MEMORY[0x2822009F8](sub_25AF14230, v6, v5);
}

uint64_t sub_25AF14230()
{
  v20 = v0;

  if (qword_27FA23800 != -1)
  {
    swift_once();
  }

  v1 = sub_25B0044C4();
  __swift_project_value_buffer(v1, qword_27FA30C28);
  v2 = sub_25B0044B4();
  v3 = sub_25B005C94();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v19 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_25AF8E7DC(0xD00000000000001ELL, 0x800000025B0163B0, &v19);
    _os_log_impl(&dword_25AF0B000, v2, v3, "%s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v5);
    MEMORY[0x25F85EC30](v5, -1, -1);
    MEMORY[0x25F85EC30](v4, -1, -1);
  }

  v6 = *(v0 + 40);
  if (*(v6 + OBJC_IVAR____TtC17NanoControlCenter13ControlsModel_hasStartedLoadingAllControls) == 1)
  {
    v7 = OBJC_IVAR____TtC17NanoControlCenter13ControlsModel_pendingToControlsCache;
    swift_beginAccess();
    v8 = MEMORY[0x277D84F98];
    *(v6 + v7) = MEMORY[0x277D84F98];

    *(v6 + OBJC_IVAR____TtC17NanoControlCenter13ControlsModel_checkedBundleIDsWithoutKnownExtensionsCache) = v8;

    v9 = sub_25B0044B4();
    v10 = sub_25B005C94();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v19 = v12;
      *v11 = 136315138;
      *(v11 + 4) = sub_25AF8E7DC(0xD00000000000001ELL, 0x800000025B0163B0, &v19);
      _os_log_impl(&dword_25AF0B000, v9, v10, "%s controls loaded previously. Re-checking from Chrono.", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v12);
      MEMORY[0x25F85EC30](v12, -1, -1);
      MEMORY[0x25F85EC30](v11, -1, -1);
    }

    sub_25AF10CE4(*(*(v0 + 40) + OBJC_IVAR____TtC17NanoControlCenter13ControlsModel_extensionProviderVisible), 0);
  }

  else
  {
    v13 = sub_25B0044B4();
    v14 = sub_25B005C94();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v19 = v16;
      *v15 = 136315138;
      *(v15 + 4) = sub_25AF8E7DC(0xD00000000000001ELL, 0x800000025B0163B0, &v19);
      _os_log_impl(&dword_25AF0B000, v13, v14, "%s controls not yet needed. Not re-checking from Chrono.", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v16);
      MEMORY[0x25F85EC30](v16, -1, -1);
      MEMORY[0x25F85EC30](v15, -1, -1);
    }
  }

  v17 = *(v0 + 8);

  return v17();
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

uint64_t sub_25AF14708(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7F && *(a1 + 33))
  {
    return (*a1 + 127);
  }

  v3 = (*(a1 + 32) & 0x7E | (*(a1 + 32) >> 7)) ^ 0x7F;
  if (v3 >= 0x7E)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_25AF14758(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7E)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 127;
    *(result + 8) = 0;
    if (a3 >= 0x7F)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7F)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *result = 0u;
      *(result + 16) = 0u;
      *(result + 32) = 2 * (((-a2 >> 1) & 0x3F) - (a2 << 6));
    }
  }

  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_25AF147FC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_25AF14844(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_25AF14894(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  sub_25B005B34();
  v5[5] = sub_25B005B24();
  v7 = sub_25B005AE4();
  v5[6] = v7;
  v5[7] = v6;

  return MEMORY[0x2822009F8](sub_25AF1492C, v7, v6);
}

uint64_t sub_25AF1492C()
{
  v13 = v0;
  v1 = [*(v0 + 24) containers];
  sub_25B005DC4();
  sub_25AF1829C(&qword_27FA23AC8, MEMORY[0x277CFA168]);
  v2 = sub_25B005C34();

  v3 = sub_25AF15A70(v2);
  *(v0 + 64) = v3;

  if (qword_27FA23800 != -1)
  {
    swift_once();
  }

  v4 = sub_25B0044C4();
  __swift_project_value_buffer(v4, qword_27FA30C28);

  v5 = sub_25B0044B4();
  v6 = sub_25B005C94();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v12 = v8;
    *v7 = 136315394;
    *(v7 + 4) = sub_25AF8E7DC(0xD00000000000002ALL, 0x800000025B016380, &v12);
    *(v7 + 12) = 2048;
    if (v3 < 0 || (v3 & 0x4000000000000000) != 0)
    {
      v9 = sub_25B005EA4();
    }

    else
    {
      v9 = *(v3 + 16);
    }

    *(v7 + 14) = v9;

    _os_log_impl(&dword_25AF0B000, v5, v6, "%s found containers count: %ld", v7, 0x16u);
    __swift_destroy_boxed_opaque_existential_0Tm(v8);
    MEMORY[0x25F85EC30](v8, -1, -1);
    MEMORY[0x25F85EC30](v7, -1, -1);
  }

  else
  {
  }

  v10 = swift_task_alloc();
  *(v0 + 72) = v10;
  *v10 = v0;
  v10[1] = sub_25AF14BA4;

  return sub_25AF17A64(v3);
}

uint64_t sub_25AF14BA4(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 80) = a1;

  v3 = *(v2 + 56);
  v4 = *(v2 + 48);

  return MEMORY[0x2822009F8](sub_25AF14CF0, v4, v3);
}

uint64_t sub_25AF14CF0()
{
  v1 = v0[10];
  v2 = v0[4];

  swift_getKeyPath();
  v3 = swift_task_alloc();
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v0[2] = v2;
  sub_25AF1829C(&unk_27FA256B0, type metadata accessor for ControlsModel);
  sub_25B004224();

  *(v2 + OBJC_IVAR____TtC17NanoControlCenter13ControlsModel_hasLoadedAllControls) = 1;
  sub_25AF0F914();
  if ((sub_25B005C14() & 1) == 0)
  {
    v4 = v0[4];
    v5 = *(v4 + OBJC_IVAR____TtC17NanoControlCenter13ControlsModel_loadingControlsTask);
    *(v4 + OBJC_IVAR____TtC17NanoControlCenter13ControlsModel_loadingControlsTask) = 0;
    if (v5)
    {
      sub_25B005BF4();
    }
  }

  v6 = v0[1];

  return v6();
}

uint64_t sub_25AF14E80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_25AF14EA4, 0, 0);
}

uint64_t sub_25AF14EA4()
{
  sub_25AF14F10(v0[2], v0[3] + 16, (v0[4] + 16));
  v1 = v0[1];

  return v1();
}

void sub_25AF14F10(unint64_t a1, uint64_t a2, void *a3)
{
  v6 = sub_25B005894();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20]();
  v9 = (&v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_25AF18BD4(0, &qword_27FA271F0);
  *v9 = sub_25B005D34();
  (*(v7 + 104))(v9, *MEMORY[0x277D851F0], v6);
  v10 = sub_25B0058A4();
  (*(v7 + 8))(v9, v6);
  if ((v10 & 1) == 0)
  {
    goto LABEL_39;
  }

  if (a1 >> 62)
  {
    goto LABEL_40;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_25B005EA4())
  {
    v13 = 0;
    v14 = 0;
    v65 = a1 & 0xC000000000000001;
    v58 = a1 & 0xFFFFFFFFFFFFFF8;
    v60 = "updateControlHost()";
    *&v11 = 136315650;
    v59 = v11;
    v61 = a2;
    v62 = a3;
    v63 = i;
    v64 = a1;
    while (1)
    {
      if (v65)
      {
        v15 = MEMORY[0x25F85DD30](v13, a1);
      }

      else
      {
        if (v13 >= *(v58 + 16))
        {
          goto LABEL_38;
        }

        v15 = *(a1 + 8 * v13 + 32);
      }

      v16 = v15;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      v66 = v13 + 1;
      v67 = v14;
      v17 = [v15 containerBundleIdentifier];
      v68 = sub_25B005934();
      v19 = v18;

      v20 = [v16 allExtensions];
      sub_25AF18BD4(0, &qword_27FA23AB0);
      sub_25AF1890C(&qword_27FA23AB8, &qword_27FA23AB0);
      v21 = sub_25B005C34();

      if (qword_27FA23800 != -1)
      {
        swift_once();
      }

      v22 = sub_25B0044C4();
      __swift_project_value_buffer(v22, qword_27FA30C28);
      v23 = v16;

      v24 = sub_25B0044B4();
      v25 = sub_25B005C94();

      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        v27 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        v70[0] = v28;
        *v26 = v59;
        *(v26 + 4) = sub_25AF8E7DC(0xD000000000000024, v60 | 0x8000000000000000, v70);
        *(v26 + 12) = 2112;
        *(v26 + 14) = v23;
        *v27 = v23;
        *(v26 + 22) = 2048;
        if ((v21 & 0xC000000000000001) != 0)
        {
          v29 = v23;
          v30 = sub_25B005EA4();
        }

        else
        {
          v30 = *(v21 + 16);
          v31 = v23;
        }

        *(v26 + 24) = v30;

        _os_log_impl(&dword_25AF0B000, v24, v25, "%s from container: %@; extensions count: %ld", v26, 0x20u);
        sub_25AF1896C(v27);
        MEMORY[0x25F85EC30](v27, -1, -1);
        __swift_destroy_boxed_opaque_existential_0Tm(v28);
        MEMORY[0x25F85EC30](v28, -1, -1);
        MEMORY[0x25F85EC30](v26, -1, -1);

        a2 = v61;
        a3 = v62;
      }

      else
      {

        swift_bridgeObjectRelease_n();
      }

      swift_beginAccess();
      if (*(*a2 + 16) && (sub_25AF8EE80(v68, v19), (v32 & 1) != 0))
      {
        swift_endAccess();
        a1 = v68;
      }

      else
      {
        swift_endAccess();
        swift_bridgeObjectRetain_n();
        v33 = [v23 localizedContainerDisplayName];
        v34 = sub_25B005934();
        v36 = v35;

        type metadata accessor for _ControlsSourceModel();
        v37 = swift_allocObject();
        v37[8] = 0;
        v37[6] = MEMORY[0x277D84F90];
        v37[7] = 0;
        sub_25B004264();
        a1 = v68;
        v37[2] = v68;
        v37[3] = v19;
        v37[4] = v34;
        v37[5] = v36;
        swift_beginAccess();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v69 = *a2;
        *a2 = 0x8000000000000000;
        sub_25AF160D4(v37, a1, v19, isUniquelyReferenced_nonNull_native, sub_25AF97C6C, sub_25AF96148);

        *a2 = v69;
        swift_endAccess();
      }

      swift_beginAccess();
      sub_25AF1895C(v67);
      v39 = swift_isUniquelyReferenced_nonNull_native();
      v69 = *a3;
      v40 = v69;
      *a3 = 0x8000000000000000;
      v41 = sub_25AF8EE80(a1, v19);
      v43 = v40[2];
      v44 = (v42 & 1) == 0;
      v45 = __OFADD__(v43, v44);
      v46 = v43 + v44;
      if (v45)
      {
        goto LABEL_36;
      }

      v47 = v42;
      if (v40[3] >= v46)
      {
        if ((v39 & 1) == 0)
        {
          v56 = v41;
          sub_25AF97FCC();
          v41 = v56;
        }
      }

      else
      {
        sub_25AF96790(v46, v39);
        v41 = sub_25AF8EE80(a1, v19);
        if ((v47 & 1) != (v48 & 1))
        {
          sub_25B006204();
          __break(1u);
          return;
        }
      }

      v49 = v69;
      *a3 = v69;
      if ((v47 & 1) == 0)
      {
        v49[(v41 >> 6) + 8] |= 1 << v41;
        v50 = (v49[6] + 16 * v41);
        *v50 = a1;
        v50[1] = v19;
        *(v49[7] + 8 * v41) = MEMORY[0x277D84F90];
        v51 = v49[2];
        v45 = __OFADD__(v51, 1);
        v52 = v51 + 1;
        if (v45)
        {
          goto LABEL_37;
        }

        v49[2] = v52;
        v53 = v41;

        v41 = v53;
      }

      v54 = (v49[7] + 8 * v41);
      v55 = v23;
      MEMORY[0x25F85D820]();
      if (*((*v54 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v54 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_25B005A64();
      }

      sub_25B005A94();
      swift_endAccess();

      ++v13;
      v14 = sub_25AF1565C;
      a1 = v64;
      if (v66 == v63)
      {
        return;
      }
    }

    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    ;
  }
}

uint64_t sub_25AF1566C()
{
  sub_25B006294();
  sub_25B005DF4();
  sub_25B005994();
  return sub_25B0062D4();
}

uint64_t sub_25AF156D0()
{
  sub_25B005DF4();

  return sub_25B005994();
}

uint64_t sub_25AF15724()
{
  sub_25B006294();
  sub_25B005DF4();
  sub_25B005994();
  return sub_25B0062D4();
}

uint64_t sub_25AF15784(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  sub_25AF18BD4(0, &qword_27FA27200);
  if ((sub_25B005DE4() & 1) == 0)
  {
    return 0;
  }

  if (v2 == v4 && v3 == v5)
  {
    return 1;
  }

  return sub_25B006174();
}

unint64_t sub_25AF15844()
{
  result = qword_27FA23A68;
  if (!qword_27FA23A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA23A68);
  }

  return result;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

void *sub_25AF158D4(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA23AD0);
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

void *sub_25AF1595C(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA23AE0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v7 = ((v5 - 32) * 0x6666666666666667) >> 64;
  v4[2] = a1;
  v4[3] = 2 * ((v7 >> 4) + (v7 >> 63));
  return result;
}

void *sub_25AF159EC(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA23B00);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 1;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 5);
  return result;
}

void *sub_25AF15A70(unint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) == 0)
  {
    goto LABEL_5;
  }

  v2 = sub_25B005EA4();
  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  while (1)
  {
    v3 = sub_25AF158D4(v2, 0);

    v1 = sub_25AF166B8(&v5, v3 + 4, v2, v1);
    sub_25AF18700();
    if (v1 == v2)
    {
      break;
    }

    __break(1u);
LABEL_5:
    v2 = v1[2];
    if (!v2)
    {
      return MEMORY[0x277D84F90];
    }
  }

  return v3;
}

void sub_25AF15B20(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_9:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
        goto LABEL_5;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA23B30);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v7[2] = v5;
      v7[3] = 2 * ((v8 - 32) / 56);
      if (v4 != a3)
      {
LABEL_5:
        swift_arrayInitWithCopy();
        return;
      }
    }

    __break(1u);
    goto LABEL_9;
  }
}

uint64_t sub_25AF15C10(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_25AF8EEF8(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      sub_25AF9615C(v14, a3 & 1);
      v9 = sub_25AF8EEF8(a2);
      if ((v15 & 1) != (v18 & 1))
      {
LABEL_16:
        result = sub_25B006204();
        __break(1u);
        return result;
      }
    }

    else
    {
      v17 = v9;
      sub_25AF97C80();
      v9 = v17;
    }
  }

  v19 = *v4;
  if ((v15 & 1) == 0)
  {
    v19[(v9 >> 6) + 8] |= 1 << v9;
    v22 = v19[6] + 40 * v9;
    v23 = *(a2 + 16);
    *v22 = *a2;
    *(v22 + 16) = v23;
    *(v22 + 32) = *(a2 + 32);
    v24 = v19[7] + 40 * v9;
    v26 = *a1;
    v25 = *(a1 + 16);
    *(v24 + 32) = *(a1 + 32);
    *v24 = v26;
    *(v24 + 16) = v25;
    v27 = v19[2];
    v13 = __OFADD__(v27, 1);
    v28 = v27 + 1;
    if (!v13)
    {
      v19[2] = v28;
      v29 = *(a2 + 16);
      v31[0] = *a2;
      v31[1] = v29;
      v32 = *(a2 + 32);
      return sub_25AF198F4(v31, v30);
    }

    goto LABEL_15;
  }

  v20 = v19[7] + 40 * v9;

  return sub_25AF19950(a1, v20);
}

unint64_t sub_25AF15DAC(char a1, void *a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  result = sub_25AF8EFD0(a2, a3, a4);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 < v18 || (a5 & 1) != 0)
    {
      sub_25AF964C8(v18, a5 & 1);
      result = sub_25AF8EFD0(a2, a3, a4);
      if ((v19 & 1) != (v22 & 1))
      {
LABEL_16:
        result = sub_25B006204();
        __break(1u);
        return result;
      }
    }

    else
    {
      v21 = result;
      sub_25AF97E50();
      result = v21;
    }
  }

  v23 = *v6;
  if (v19)
  {
    *(v23[7] + result) = a1 & 1;
    return result;
  }

  v23[(result >> 6) + 8] |= 1 << result;
  v24 = (v23[6] + 24 * result);
  *v24 = a2;
  v24[1] = a3;
  v24[2] = a4;
  *(v23[7] + result) = a1 & 1;
  v25 = v23[2];
  v17 = __OFADD__(v25, 1);
  v26 = v25 + 1;
  if (v17)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v23[2] = v26;
  v27 = a2;
}

uint64_t sub_25AF15F30(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_25AF8F064(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      sub_25AF96DD4(v14, a3 & 1);
      v9 = sub_25AF8F064(a2);
      if ((v15 & 1) != (v18 & 1))
      {
LABEL_16:
        result = sub_25B006204();
        __break(1u);
        return result;
      }
    }

    else
    {
      v17 = v9;
      sub_25AF982CC();
      v9 = v17;
    }
  }

  v19 = *v4;
  if ((v15 & 1) == 0)
  {
    v19[(v9 >> 6) + 8] |= 1 << v9;
    v21 = v19[6] + 40 * v9;
    v22 = *a2;
    v23 = *(a2 + 16);
    *(v21 + 32) = *(a2 + 32);
    *v21 = v22;
    *(v21 + 16) = v23;
    *(v19[7] + 8 * v9) = a1;
    v24 = v19[2];
    v13 = __OFADD__(v24, 1);
    v25 = v24 + 1;
    if (!v13)
    {
      v19[2] = v25;
      return sub_25AF196CC(a2, v26);
    }

    goto LABEL_15;
  }

  *(v19[7] + 8 * v9) = a1;
}

uint64_t sub_25AF160D4(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void (*a5)(void), void (*a6)(uint64_t, void))
{
  v9 = v6;
  v14 = *v6;
  v15 = sub_25AF8EE80(a2, a3);
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_17;
  }

  v21 = v16;
  v22 = *(v14 + 24);
  if (v22 < v20 || (a4 & 1) == 0)
  {
    if (v22 < v20 || (a4 & 1) != 0)
    {
      a6(v20, a4 & 1);
      v15 = sub_25AF8EE80(a2, a3);
      if ((v21 & 1) != (v24 & 1))
      {
LABEL_18:
        result = sub_25B006204();
        __break(1u);
        return result;
      }
    }

    else
    {
      v23 = v15;
      a5();
      v15 = v23;
    }
  }

  v25 = *v9;
  if (v21)
  {
    *(v25[7] + 8 * v15) = a1;
  }

  v25[(v15 >> 6) + 8] |= 1 << v15;
  v27 = (v25[6] + 16 * v15);
  *v27 = a2;
  v27[1] = a3;
  *(v25[7] + 8 * v15) = a1;
  v28 = v25[2];
  v19 = __OFADD__(v28, 1);
  v29 = v28 + 1;
  if (v19)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v25[2] = v29;
}

unint64_t sub_25AF1626C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_25AF8F278(a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_25AF97710(v16, a4 & 1);
      result = sub_25AF8F278(a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_16:
        type metadata accessor for LegacyButtonIdentifier(0);
        result = sub_25B006204();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = result;
      sub_25AF98750();
      result = v19;
    }
  }

  v21 = *v5;
  if ((v17 & 1) == 0)
  {
    v21[(result >> 6) + 8] |= 1 << result;
    *(v21[6] + 8 * result) = a3;
    v23 = (v21[7] + 16 * result);
    *v23 = a1;
    v23[1] = a2;
    v24 = v21[2];
    v15 = __OFADD__(v24, 1);
    v25 = v24 + 1;
    if (!v15)
    {
      v21[2] = v25;
      return result;
    }

    goto LABEL_15;
  }

  v22 = (v21[7] + 16 * result);
  *v22 = a1;
  v22[1] = a2;
}

unint64_t sub_25AF163CC(unint64_t result, uint64_t a2, __int16 a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  v4 = a4[6] + 40 * result;
  v5 = *(a2 + 16);
  *v4 = *a2;
  *(v4 + 16) = v5;
  *(v4 + 32) = *(a2 + 32);
  v6 = (a4[7] + 2 * result);
  *v6 = a3;
  v6[1] = HIBYTE(a3) & 1;
  v7 = a4[2];
  v8 = __OFADD__(v7, 1);
  v9 = v7 + 1;
  if (v8)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v9;
  }

  return result;
}

unint64_t sub_25AF16430(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  a7[(result >> 6) + 8] |= 1 << result;
  v7 = (a7[6] + 32 * result);
  *v7 = a2;
  v7[1] = a3;
  v7[2] = a4;
  v7[3] = a5;
  *(a7[7] + 8 * result) = a6;
  v8 = a7[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a7[2] = v10;
  }

  return result;
}

void *sub_25AF1647C(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1;
  v8 = -1 << *(a4 + 32);
  v9 = ~v8;
  if (-v8 < 64)
  {
    v7 = ~(-1 << -v8);
  }

  v10 = v7 & *(a4 + 64);
  if (!a2)
  {
    a3 = 0;
    *result = a4;
    result[1] = v6;
    result[2] = v9;
    result[3] = 0;
    result[5] = 0;
    result[6] = 0;
    result[4] = v10;
    return a3;
  }

  if (!a3)
  {
    v11 = 0;
    v12 = 0;
    v13 = 0;
LABEL_37:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = v9;
    v5[3] = v13;
    v5[4] = v10;
    v5[5] = v12;
LABEL_38:
    v5[6] = v11;
    return a3;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v25 = a2;
    v26 = ~v8;
    v23 = a3;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = (63 - v8) >> 6;
    v17 = 1;
    while (1)
    {
      v27 = v14;
      v24 = v17;
      if (!v12)
      {
        goto LABEL_12;
      }

LABEL_8:
      if (v12 >> 62)
      {
        result = sub_25B005EA4();
        if (v11 == result)
        {
LABEL_12:
          while (v10)
          {
            v13 = v15;
LABEL_19:
            v19 = __clz(__rbit64(v10));
            v10 &= v10 - 1;
            v20 = *(*(a4 + 56) + ((v13 << 9) | (8 * v19)));

            v11 = 0;
            v12 = v20;
            if (v20)
            {
              goto LABEL_8;
            }
          }

          v18 = v15;
          while (1)
          {
            v13 = v18 + 1;
            if (__OFADD__(v18, 1))
            {
              __break(1u);
              goto LABEL_41;
            }

            if (v13 >= v16)
            {
              break;
            }

            v10 = *(v6 + 8 * v13);
            ++v18;
            if (v10)
            {
              v15 = v13;
              goto LABEL_19;
            }
          }

          if (v16 <= v15 + 1)
          {
            v22 = v15 + 1;
          }

          else
          {
            v22 = v16;
          }

          *v5 = a4;
          v5[1] = v6;
          a3 = v27;
          v5[2] = v26;
          v5[3] = v22 - 1;
          v5[4] = 0;
          v5[5] = v12;
          goto LABEL_38;
        }
      }

      else
      {
        result = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v11 == result)
        {
          goto LABEL_12;
        }
      }

      if ((v12 & 0xC000000000000001) != 0)
      {
        result = MEMORY[0x25F85DD30](v11, v12);
      }

      else
      {
        if ((v11 & 0x8000000000000000) != 0)
        {
          goto LABEL_43;
        }

        if (v11 >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_44;
        }

        result = *(v12 + 8 * v11 + 32);
      }

      a3 = v23;
      v14 = v24;
      if (__OFADD__(v11++, 1))
      {
        goto LABEL_45;
      }

      *v25 = result;
      if (v24 == v23)
      {
LABEL_41:
        v9 = v26;
        goto LABEL_37;
      }

      ++v25;
      v17 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        goto LABEL_46;
      }
    }
  }

  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
  return result;
}

id sub_25AF166B8(id result, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v7 = result;
  if ((a4 & 0xC000000000000001) == 0)
  {
LABEL_21:
    v10 = 0;
    v18 = -1 << *(v4 + 32);
    v8 = v4 + 56;
    v9 = ~v18;
    v19 = -v18;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    else
    {
      v20 = -1;
    }

    v11 = v20 & *(v4 + 56);
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_25:
    v12 = 0;
    goto LABEL_32;
  }

  sub_25B005E94();
  sub_25B005DC4();
  sub_25AF1829C(&qword_27FA23AC8, MEMORY[0x277CFA168]);
  result = sub_25B005C64();
  v4 = v25;
  v8 = v26;
  v9 = v27;
  v10 = v28;
  v11 = v29;
  if (!a2)
  {
    goto LABEL_25;
  }

LABEL_3:
  if (!a3)
  {
    v12 = 0;
    goto LABEL_32;
  }

  if (a3 < 0)
  {
LABEL_35:
    __break(1u);
    return result;
  }

  v22 = v9;
  v23 = v7;
  v12 = 0;
  v13 = (v9 + 64) >> 6;
  v7 = 1;
  while (1)
  {
    if (v4 < 0)
    {
      if (!sub_25B005EC4())
      {
        goto LABEL_30;
      }

      sub_25B005DC4();
      swift_dynamicCast();
      result = v24;
      if (!v24)
      {
        goto LABEL_30;
      }

      goto LABEL_17;
    }

    v14 = v10;
    if (!v11)
    {
      break;
    }

    v15 = v10;
LABEL_13:
    v16 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    result = *(*(v4 + 48) + ((v15 << 9) | (8 * v16)));
    if (!result)
    {
      goto LABEL_30;
    }

LABEL_17:
    *a2 = result;
    if (v7 == a3)
    {
      v12 = a3;
      goto LABEL_30;
    }

    ++a2;
    v12 = v7;
    if (__OFADD__(v7++, 1))
    {
      __break(1u);
      goto LABEL_21;
    }
  }

  while (1)
  {
    v15 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
      goto LABEL_35;
    }

    if (v15 >= v13)
    {
      break;
    }

    v11 = *(v8 + 8 * v15);
    ++v14;
    if (v11)
    {
      v10 = v15;
      goto LABEL_13;
    }
  }

  v11 = 0;
  if (v13 <= v10 + 1)
  {
    v21 = v10 + 1;
  }

  else
  {
    v21 = v13;
  }

  v10 = v21 - 1;
LABEL_30:
  v9 = v22;
  v7 = v23;
LABEL_32:
  *v7 = v4;
  *(v7 + 8) = v8;
  *(v7 + 16) = v9;
  *(v7 + 24) = v10;
  *(v7 + 32) = v11;
  return v12;
}

void *sub_25AF168E4(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
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
LABEL_25:
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
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v25 = -1 << *(a4 + 32);
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = *(a4 + 48) + ((v12 << 11) | (32 * __clz(__rbit64(v9))));
      v18 = *v17;
      v19 = *(v17 + 8);
      v20 = *(v17 + 24);
      v9 &= v9 - 1;
      *v11 = *v17;
      *(v11 + 8) = v19;
      *(v11 + 24) = v20;
      if (v14 == v10)
      {

        v24 = v18;
        goto LABEL_23;
      }

      v11 += 32;

      v21 = v18;
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
        goto LABEL_28;
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
    if (v13 <= v12 + 1)
    {
      v23 = v12 + 1;
    }

    else
    {
      v23 = v13;
    }

    v12 = v23 - 1;
    v10 = result;
LABEL_23:
    v7 = v25;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

void *sub_25AF16A64(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
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
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = *(a4 + 48) + 40 * (v17 | (v12 << 6));
      v19 = *v18;
      v20 = *(v18 + 8);
      v21 = *(v18 + 16);
      v22 = *(v18 + 24);
      v23 = *(v18 + 32);
      *v11 = *v18;
      *(v11 + 8) = v20;
      *(v11 + 16) = v21;
      *(v11 + 24) = v22;
      *(v11 + 32) = v23;
      if (v14 == v10)
      {
        sub_25AF181DC(v19, v20, v21, v22, v23);
        goto LABEL_24;
      }

      v11 += 40;
      sub_25AF181DC(v19, v20, v21, v22, v23);
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
      v25 = v12 + 1;
    }

    else
    {
      v25 = (63 - v7) >> 6;
    }

    v12 = v25 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_25AF16BCC@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v2 = a1[1];
  v3 = a1[2];
  *a2 = *a1;
  a2[1] = v2;
  a2[2] = v3;
}

char *sub_25AF16C14(uint64_t a1, void (*a2)(uint64_t *__return_ptr, uint64_t *))
{
  v3 = a1 + 64;
  v4 = -1 << *(a1 + 32);
  if (-v4 < 64)
  {
    v5 = ~(-1 << -v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(a1 + 64);
  v7 = (63 - v4) >> 6;

  v9 = 0;
  v10 = 0;
  v45 = 0;
  v11 = 0;
  v12 = MEMORY[0x277D84F90];
  for (i = MEMORY[0x277D84F90] + 32; ; i = v44 + 32)
  {
    v44 = i;
    if (!v9)
    {
      break;
    }

LABEL_6:
    v14 = *(v9 + 16);
    if (v10 == v14)
    {
      break;
    }

    if (v10 >= v14)
    {
      goto LABEL_43;
    }

    v19 = v9 + 32 * v10;
    v20 = *(v19 + 32);
    v42 = *(v19 + 40);
    result = *(v19 + 56);
    v43 = result;
    if (v45)
    {

      result = v20;
    }

    else
    {
      v41 = *(v19 + 32);
      v21 = *(v12 + 3);
      if (((v21 >> 1) + 0x4000000000000000) < 0)
      {
        goto LABEL_45;
      }

      v22 = v21 & 0xFFFFFFFFFFFFFFFELL;
      if (v22 <= 1)
      {
        v23 = 1;
      }

      else
      {
        v23 = v22;
      }

      v46 = v23;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA23B00);
      v24 = swift_allocObject();
      v25 = _swift_stdlib_malloc_size(v24);
      v26 = v25 - 32;
      if (v25 < 32)
      {
        v26 = v25 - 1;
      }

      v27 = v26 >> 5;
      *(v24 + 2) = v46;
      *(v24 + 3) = 2 * (v26 >> 5);
      v28 = v24 + 32;
      v29 = *(v12 + 3) >> 1;
      v44 = &v24[32 * v29 + 32];
      v45 = (v27 & 0x7FFFFFFFFFFFFFFFLL) - v29;
      v40 = v24;
      if (*(v12 + 2))
      {
        v30 = v24;
        v31 = v12 + 32;
        v32 = v24 >= v12;
        v20 = v41;
        if (v32 && v28 < &v31[32 * v29] && v30 == v12)
        {

          v36 = v41;
        }

        else
        {
          memmove(v28, v31, 32 * v29);
          v33 = v41;
        }

        *(v12 + 2) = 0;
      }

      else
      {

        v20 = v41;
        v34 = v41;
      }

      v12 = v40;
    }

    v35 = __OFSUB__(v45--, 1);
    if (v35)
    {
      goto LABEL_44;
    }

    ++v10;
    *v44 = v20;
    *(v44 + 8) = v42;
    *(v44 + 24) = v43;
  }

  while (v6)
  {
    v15 = v11;
LABEL_14:
    v17 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v49 = *(*(a1 + 56) + ((v15 << 9) | (8 * v17)));

    a2(&v48, &v49);

    v18 = v48;

    v10 = 0;
    v9 = v18;
    if (v18)
    {
      goto LABEL_6;
    }
  }

  v16 = v11;
  while (1)
  {
    v15 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      __break(1u);
      goto LABEL_42;
    }

    if (v15 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v15);
    ++v16;
    if (v6)
    {
      v11 = v15;
      goto LABEL_14;
    }
  }

  sub_25AF18700();

  v37 = *(v12 + 3);
  if (v37 < 2)
  {
    return v12;
  }

  v38 = v37 >> 1;
  v35 = __OFSUB__(v38, v45);
  v39 = v38 - v45;
  if (!v35)
  {
    *(v12 + 2) = v39;
    return v12;
  }

LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
  return result;
}

id sub_25AF16F38(unint64_t *a1)
{
  v1 = a1[1];
  v40 = a1[5];
  v41 = a1[3];
  v2 = *a1 & 0xFFFFFFFFFFFFFF8;
  v32 = a1[7];
  v3 = *a1 & 0xC000000000000001;
  v4 = *a1 + 32;
  v42 = *a1;

  v5 = 0;
  v6 = 0;
  v35 = 0;
  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  v39 = MEMORY[0x277D84F90];
  while (1)
  {
    v33 = v8 + 4;
    if (!v5)
    {
      break;
    }

    while (1)
    {
      if (v5 >> 62)
      {
        result = sub_25B005EA4();
        if (v6 == result)
        {
          goto LABEL_9;
        }
      }

      else
      {
        result = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v6 == result)
        {
          goto LABEL_9;
        }
      }

      if ((v5 & 0xC000000000000001) == 0)
      {
        if ((v6 & 0x8000000000000000) == 0)
        {
          goto LABEL_30;
        }

        goto LABEL_60;
      }

LABEL_35:
      result = MEMORY[0x25F85DD30](v6, v5);
LABEL_32:
      v12 = result;
      v11 = __OFADD__(v6++, 1);
      if (v11)
      {
LABEL_58:
        __break(1u);
        goto LABEL_59;
      }

      v45 = result;
      v41(&v43, &v45);

      v46[0] = v43;
      v46[1] = v44;
      if (v40(v46))
      {
        break;
      }

      sub_25AF1979C(*&v46[0]);
    }

    v32(&v43, v46);
    v14 = *(&v43 + 1);
    v13 = v43;
    v30 = *(&v44 + 1);
    v31 = v44;
    result = sub_25AF1979C(*&v46[0]);
    v15 = v35;
    if (!v35)
    {
      v29 = v13;
      v16 = v39[3];
      if (((v16 >> 1) + 0x4000000000000000) < 0)
      {
        goto LABEL_63;
      }

      v17 = v16 & 0xFFFFFFFFFFFFFFFELL;
      if (v17 <= 1)
      {
        v18 = 1;
      }

      else
      {
        v18 = v17;
      }

      v36 = v18;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA23B00);
      v19 = swift_allocObject();
      v20 = _swift_stdlib_malloc_size(v19);
      v21 = v20 - 32;
      if (v20 < 32)
      {
        v21 = v20 - 1;
      }

      v22 = v21 >> 5;
      v19[2] = v36;
      v19[3] = 2 * (v21 >> 5);
      v23 = (v19 + 4);
      v24 = v39[3] >> 1;
      if (v39[2])
      {
        v25 = v39 + 4;
        if (v19 != v39 || v23 >= v25 + 32 * v24)
        {
          v34 = v39[3] >> 1;
          v37 = v21 >> 5;
          memmove(v19 + 4, v25, 32 * v24);
          v24 = v34;
          v22 = v37;
          v23 = (v19 + 4);
        }

        v39[2] = 0;
      }

      v33 = (v23 + 32 * v24);
      v38 = (v22 & 0x7FFFFFFFFFFFFFFFLL) - v24;

      v15 = v38;
      v39 = v19;
      v13 = v29;
    }

    v35 = v15 - 1;
    if (__OFSUB__(v15, 1))
    {
      goto LABEL_62;
    }

    v8 = v33;
    *v33 = v13;
    v33[1] = v14;
    v33[2] = v31;
    v33[3] = v30;
  }

LABEL_9:
  if (!(v42 >> 62))
  {
    result = *(v2 + 16);
    if (v7 != result)
    {
      goto LABEL_11;
    }

LABEL_51:

    result = v39;
    v26 = v39[3];
    if (v26 >= 2)
    {
      v27 = v26 >> 1;
      v11 = __OFSUB__(v27, v35);
      v28 = v27 - v35;
      if (v11)
      {
        goto LABEL_61;
      }

      v39[2] = v28;
    }

    return result;
  }

  result = sub_25B005EA4();
  if (v7 == result)
  {
    goto LABEL_51;
  }

LABEL_11:
  if (v3)
  {
LABEL_12:
    result = MEMORY[0x25F85DD30](v7, v42);
    goto LABEL_18;
  }

  while (1)
  {
    if ((v7 & 0x8000000000000000) != 0)
    {
      __break(1u);
LABEL_56:
      __break(1u);
LABEL_57:
      __break(1u);
      goto LABEL_58;
    }

    if (v7 >= *(v2 + 16))
    {
      goto LABEL_57;
    }

    result = *(v4 + 8 * v7);
LABEL_18:
    v10 = result;
    v11 = __OFADD__(v7++, 1);
    if (v11)
    {
      goto LABEL_56;
    }

    *&v43 = result;
    v1(&v45, &v43);

    v5 = v45;

    if (v5)
    {
      break;
    }

LABEL_22:
    if (v42 >> 62)
    {
      result = sub_25B005EA4();
      if (v7 == result)
      {
        goto LABEL_51;
      }
    }

    else
    {
      result = *(v2 + 16);
      if (v7 == result)
      {
        goto LABEL_51;
      }
    }

    if (v3)
    {
      goto LABEL_12;
    }
  }

  if (!(v5 >> 62))
  {
    if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_29;
    }

    goto LABEL_22;
  }

  result = sub_25B005EA4();
  if (!result)
  {
    goto LABEL_22;
  }

LABEL_29:
  v6 = 0;
  if ((v5 & 0xC000000000000001) != 0)
  {
    goto LABEL_35;
  }

LABEL_30:
  if (v6 < *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    result = *(v5 + 8 * v6 + 32);
    goto LABEL_32;
  }

LABEL_59:
  __break(1u);
LABEL_60:
  __break(1u);
LABEL_61:
  __break(1u);
LABEL_62:
  __break(1u);
LABEL_63:
  __break(1u);
  return result;
}

uint64_t sub_25AF1737C(uint64_t result, void (*a2)(_OWORD *__return_ptr, id *))
{
  v2 = *(result + 16);
  if (v2)
  {
    v4 = result;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA23AE0);
    v5 = swift_allocObject();
    v6 = (_swift_stdlib_malloc_size(v5) - 32) / 40;
    v5[2] = v2;
    v5[3] = 2 * v6;
    v7 = (v4 + 56);
    v8 = (v6 & 0x7FFFFFFFFFFFFFFFLL) - v2;
    v9 = 4;
    do
    {
      v10 = &v5[v9];
      v11 = *v7;
      v23 = *(v7 - 3);
      v12 = v23;
      v24 = *(v7 - 1);
      v25 = v11;

      v13 = v12;
      a2(v21, &v23);
      v14 = v22;
      v19 = v21[1];
      v20 = v21[0];

      *v10 = v20;
      *(v10 + 1) = v19;
      v9 += 5;
      v7 += 4;
      *(v10 + 32) = v14;
      --v2;
    }

    while (v2);
  }

  else
  {
    v8 = 0;
    v5 = MEMORY[0x277D84F90];
  }

  v15 = v5[3];
  if (v15 < 2)
  {
    return v5;
  }

  v16 = v15 >> 1;
  v17 = __OFSUB__(v16, v8);
  v18 = v16 - v8;
  if (!v17)
  {
    v5[2] = v18;
    return v5;
  }

  __break(1u);
  return result;
}

uint64_t sub_25AF174DC(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = 0;
  v4 = result + 32;
  v5 = MEMORY[0x277D84F90];
  v6 = MEMORY[0x277D84F90] + 32;
LABEL_3:
  v8 = *(v1 + 16);
  if (v3 != v8)
  {
    if (v3 < v8)
    {
      while (1)
      {
        v9 = *(v4 + 8 * v3);

        if (v9)
        {
          v7 = *(v9 + 16);
          if (v7)
          {
            break;
          }
        }

        ++v3;
        v10 = *(v1 + 16);
        if (v3 == v10)
        {
          goto LABEL_31;
        }

        if (v3 >= v10)
        {
          goto LABEL_35;
        }
      }

      v11 = 0;
      ++v3;
      while (1)
      {
        if (v11 >= v7)
        {
          goto LABEL_36;
        }

        v12 = v9 + 40 * v11;
        v13 = *(v12 + 32);
        v29 = *(v12 + 48);
        v30 = *(v12 + 40);
        v28 = *(v12 + 56);
        v27 = *(v12 + 64);
        if (v2)
        {
          result = sub_25AF181DC(v13, *(v12 + 40), *(v12 + 48), *(v12 + 56), *(v12 + 64));
          v14 = v5;
        }

        else
        {
          v15 = v5[3];
          if (((v15 >> 1) + 0x4000000000000000) < 0)
          {
            goto LABEL_38;
          }

          v26 = v13;
          v16 = v15 & 0xFFFFFFFFFFFFFFFELL;
          if (v16 <= 1)
          {
            v17 = 1;
          }

          else
          {
            v17 = v16;
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA23AE0);
          v14 = swift_allocObject();
          v18 = (_swift_stdlib_malloc_size(v14) - 32) / 40;
          v14[2] = v17;
          v14[3] = 2 * v18;
          v19 = v5[3] >> 1;
          v20 = 5 * v19;
          v2 = (v18 & 0x7FFFFFFFFFFFFFFFLL) - v19;
          v6 = &v14[5 * v19 + 4];
          if (v5[2])
          {
            if (v14 >= v5 && v14 + 4 < &v5[v20 + 4])
            {
              sub_25AF181DC(v26, v30, v29, v28, v27);
              if (v14 != v5)
              {
LABEL_27:
                memmove(v14 + 4, v5 + 4, v20 * 8);
              }

              v5[2] = 0;

              v13 = v26;
              goto LABEL_29;
            }

            sub_25AF181DC(v26, v30, v29, v28, v27);
            goto LABEL_27;
          }

          v13 = v26;
          sub_25AF181DC(v26, v30, v29, v28, v27);
        }

LABEL_29:
        v22 = __OFSUB__(v2--, 1);
        if (v22)
        {
          goto LABEL_37;
        }

        ++v11;
        *v6 = v13;
        *(v6 + 8) = v30;
        *(v6 + 16) = v29;
        *(v6 + 24) = v28;
        *(v6 + 32) = v27;
        v6 += 40;
        v5 = v14;
        v7 = *(v9 + 16);
        if (v11 == v7)
        {
          goto LABEL_3;
        }
      }
    }

LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

LABEL_31:

  v23 = v5[3];
  if (v23 < 2)
  {
    return v5;
  }

  v24 = v23 >> 1;
  v22 = __OFSUB__(v24, v2);
  v25 = v24 - v2;
  if (!v22)
  {
    v5[2] = v25;
    return v5;
  }

LABEL_39:
  __break(1u);
  return result;
}

void sub_25AF17774(unint64_t a1)
{
  v1 = a1;
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    if (sub_25B005EA4())
    {
LABEL_3:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA23A90);
      v3 = sub_25B005F04();
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      v5 = sub_25B005EA4();
      if (!v5)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = MEMORY[0x277D84FA0];
  v4 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return;
  }

LABEL_9:
  v6 = v3 + 56;
  v38 = v5;
  if ((v1 & 0xC000000000000001) != 0)
  {
    v7 = 0;
    v36 = v1;
    while (1)
    {
      v8 = MEMORY[0x25F85DD30](v7, v1);
      v9 = __OFADD__(v7++, 1);
      if (v9)
      {
        break;
      }

      v10 = v8;
      v11 = sub_25B005DD4();
      v12 = -1 << *(v3 + 32);
      v13 = v11 & ~v12;
      v14 = v13 >> 6;
      v15 = *(v6 + 8 * (v13 >> 6));
      v16 = 1 << v13;
      if (((1 << v13) & v15) != 0)
      {
        v17 = ~v12;
        sub_25AF18BD4(0, &qword_27FA23A78);
        while (1)
        {
          v18 = *(*(v3 + 48) + 8 * v13);
          v19 = sub_25B005DE4();

          if (v19)
          {
            break;
          }

          v13 = (v13 + 1) & v17;
          v14 = v13 >> 6;
          v15 = *(v6 + 8 * (v13 >> 6));
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            v1 = v36;
            v5 = v38;
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        v1 = v36;
        v5 = v38;
        if (v7 == v38)
        {
          return;
        }
      }

      else
      {
LABEL_18:
        *(v6 + 8 * v14) = v16 | v15;
        *(*(v3 + 48) + 8 * v13) = v10;
        v20 = *(v3 + 16);
        v9 = __OFADD__(v20, 1);
        v21 = v20 + 1;
        if (v9)
        {
          goto LABEL_33;
        }

        *(v3 + 16) = v21;
        if (v7 == v5)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
  }

  else
  {
    v22 = 0;
    v35 = v1 + 32;
    v37 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v22 != v37)
    {
      v23 = *(v35 + 8 * v22);
      v24 = sub_25B005DD4();
      v25 = -1 << *(v3 + 32);
      v26 = v24 & ~v25;
      v27 = v26 >> 6;
      v28 = *(v6 + 8 * (v26 >> 6));
      v29 = 1 << v26;
      if (((1 << v26) & v28) != 0)
      {
        v30 = ~v25;
        sub_25AF18BD4(0, &qword_27FA23A78);
        do
        {
          v31 = *(*(v3 + 48) + 8 * v26);
          v32 = sub_25B005DE4();

          if (v32)
          {

            v5 = v38;
            goto LABEL_23;
          }

          v26 = (v26 + 1) & v30;
          v27 = v26 >> 6;
          v28 = *(v6 + 8 * (v26 >> 6));
          v29 = 1 << v26;
        }

        while (((1 << v26) & v28) != 0);
        v5 = v38;
      }

      *(v6 + 8 * v27) = v29 | v28;
      *(*(v3 + 48) + 8 * v26) = v23;
      v33 = *(v3 + 16);
      v9 = __OFADD__(v33, 1);
      v34 = v33 + 1;
      if (v9)
      {
        goto LABEL_35;
      }

      *(v3 + 16) = v34;
LABEL_23:
      if (++v22 == v5)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
}

uint64_t sub_25AF17A64(uint64_t a1)
{
  v1[93] = a1;
  sub_25B005B34();
  v1[94] = sub_25B005B24();
  v3 = sub_25B005AE4();
  v1[95] = v3;
  v1[96] = v2;

  return MEMORY[0x2822009F8](sub_25AF17B00, v3, v2);
}

uint64_t sub_25AF17B00()
{
  v14 = v0;
  if (qword_27FA23800 != -1)
  {
    swift_once();
  }

  v1 = sub_25B0044C4();
  __swift_project_value_buffer(v1, qword_27FA30C28);
  v2 = sub_25B0044B4();
  v3 = sub_25B005C94();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v13 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_25AF8E7DC(0xD000000000000024, 0x800000025B016350, &v13);
    _os_log_impl(&dword_25AF0B000, v2, v3, "%s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v5);
    MEMORY[0x25F85EC30](v5, -1, -1);
    MEMORY[0x25F85EC30](v4, -1, -1);
  }

  v6 = v0[93];
  v7 = swift_allocObject();
  v0[97] = v7;
  v8 = MEMORY[0x277D84F90];
  *(v7 + 16) = sub_25AF6B7EC(MEMORY[0x277D84F90]);
  v9 = swift_allocObject();
  v0[98] = v9;
  *(v9 + 16) = sub_25AF6BA58(v8);
  v10 = swift_allocObject();
  v0[99] = v10;
  v10[2] = v6;
  v10[3] = v7;
  v10[4] = v9;
  v11 = swift_task_alloc();
  v0[100] = v11;
  *(v11 + 16) = &unk_25B009100;
  *(v11 + 24) = v10;

  swift_asyncLet_begin();

  return MEMORY[0x282200928](v0 + 2);
}

uint64_t sub_25AF17D84()
{
  v1 = v0 + 82;
  v2 = v0[97];
  swift_beginAccess();
  v3 = *(v2 + 16);
  v4 = v3 + 64;
  v5 = -1;
  v6 = -1 << *(v3 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(v3 + 64);
  v8 = (63 - v6) >> 6;
  v29 = v3;

  v28 = v4;
  v10 = 0;
LABEL_4:
  v11 = v10;
  if (!v7)
  {
    goto LABEL_6;
  }

  do
  {
    v10 = v11;
LABEL_9:
    v12 = v0;
    v13 = v0[98];
    v14 = *(*(v29 + 56) + ((v10 << 9) | (8 * __clz(__rbit64(v7)))));
    v15 = v14[2];
    v16 = v14[3];
    v17 = v1;
    swift_beginAccess();
    v18 = *(v13 + 16);
    v19 = *(v18 + 16);

    if (v19 && (v20 = sub_25AF8EE80(v15, v16), (v21 & 1) != 0))
    {
      v22 = *(*(v18 + 56) + 8 * v20);
    }

    else
    {
      v22 = MEMORY[0x277D84F90];
    }

    v1 = v17;
    v7 &= v7 - 1;
    swift_endAccess();
    v0 = v12;
    swift_beginAccess();

    v24 = sub_25AF37DC0(v23, v22);

    if ((v24 & 1) == 0)
    {
      swift_getKeyPath();
      v25 = swift_task_alloc();
      *(v25 + 16) = v14;
      *(v25 + 24) = v22;
      *v1 = v14;
      sub_25AF1829C(&qword_27FA23AA0, type metadata accessor for _ControlsSourceModel);
      sub_25B004224();

      v4 = v28;
      goto LABEL_4;
    }

    v14[6] = v22;

    v11 = v10;
    v4 = v28;
  }

  while (v7);
  while (1)
  {
LABEL_6:
    v10 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      __break(1u);
      return MEMORY[0x282200920](v9);
    }

    if (v10 >= v8)
    {
      break;
    }

    v7 = *(v4 + 8 * v10);
    ++v11;
    if (v7)
    {
      goto LABEL_9;
    }
  }

  v26 = v0[97];

  v0[101] = *(v26 + 16);

  v9 = (v0 + 2);

  return MEMORY[0x282200920](v9);
}

uint64_t sub_25AF1808C()
{

  v1 = *(v0 + 8);
  v2 = *(v0 + 808);

  return v1(v2);
}

void *sub_25AF18128(void *result, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  v6 = a5 >> 6;
  if (v6 == 2)
  {
    v7 = a5 & 1;

    return sub_25AF1818C(result, a2, a3, a4, v7);
  }

  else if (v6 == 1)
  {
  }

  return result;
}

uint64_t sub_25AF1818C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5)
  {
  }

  else
  {
  }
}

id sub_25AF181DC(id result, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  v6 = a5 >> 6;
  if (v6 == 2)
  {
    v7 = a5 & 1;

    return sub_25AF18244(result, a2, a3, a4, v7);
  }

  else if (v6 == 1)
  {
    v8 = result;

    return v8;
  }

  return result;
}

uint64_t sub_25AF18244(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5)
  {
  }

  else
  {
    v5 = a1;
  }
}

uint64_t sub_25AF1829C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_25AF18300()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_25AF18344(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_25AF19A24;

  return sub_25AF0F70C(a1, v4, v5, v6);
}

uint64_t sub_25AF183F8(uint64_t a1, void (*a2)(uint64_t *__return_ptr, void *), uint64_t a3, char a4, void *a5)
{
  v7 = a1 + 64;
  v8 = -1 << *(a1 + 32);
  if (-v8 < 64)
  {
    v9 = ~(-1 << -v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & *(a1 + 64);
  v11 = (63 - v8) >> 6;

  v12 = 0;
  v39 = a5;
  v40 = v7;
  v38 = v11;
  while (v10)
  {
LABEL_13:
    v47 = v12;
    v15 = __clz(__rbit64(v10)) | (v12 << 6);
    v16 = (*(a1 + 48) + 16 * v15);
    v17 = v16[1];
    v18 = *(*(a1 + 56) + 8 * v15);
    v46[0] = *v16;
    v46[1] = v17;
    v46[2] = v18;

    a2(&v43, v46);

    v20 = v43;
    v19 = v44;
    v21 = v45;
    v22 = *a5;
    v24 = sub_25AF8EE80(v43, v44);
    v25 = v22[2];
    v26 = (v23 & 1) == 0;
    v27 = v25 + v26;
    if (__OFADD__(v25, v26))
    {
      goto LABEL_26;
    }

    v28 = v23;
    if (v22[3] >= v27)
    {
      if ((a4 & 1) == 0)
      {
        sub_25AF97C6C();
      }
    }

    else
    {
      sub_25AF96148(v27, a4 & 1);
      v29 = sub_25AF8EE80(v20, v19);
      if ((v28 & 1) != (v30 & 1))
      {
        goto LABEL_28;
      }

      v24 = v29;
    }

    v10 &= v10 - 1;
    v31 = *a5;
    if (v28)
    {
      v32 = *(v31[7] + 8 * v24);
      sub_25B005B34();

      sub_25B005B24();
      sub_25B005AE4();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      sub_25AF358AC(v21);

      *(v31[7] + 8 * v24) = v32;
    }

    else
    {
      v31[(v24 >> 6) + 8] |= 1 << v24;
      v33 = (v31[6] + 16 * v24);
      *v33 = v20;
      v33[1] = v19;
      *(v31[7] + 8 * v24) = v21;
      v34 = v31[2];
      v35 = __OFADD__(v34, 1);
      v36 = v34 + 1;
      if (v35)
      {
        goto LABEL_27;
      }

      v31[2] = v36;
    }

    a4 = 1;
    a5 = v39;
    v7 = v40;
    v11 = v38;
    v12 = v47;
  }

  v13 = v12;
  while (1)
  {
    v14 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v14 >= v11)
    {
      sub_25AF18700();
    }

    v10 = *(v7 + 8 * v14);
    ++v13;
    if (v10)
    {
      v12 = v14;
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  result = sub_25B006204();
  __break(1u);
  return result;
}

uint64_t sub_25AF18708()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_25AF18740()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_25AF18788()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_25AF19A24;

  return sub_25AF14E80(v2, v3, v4);
}

uint64_t sub_25AF18830(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_25AF19A24;

  return sub_25AF10800(a1, v4);
}

uint64_t sub_25AF1890C(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_25AF18BD4(255, a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_25AF1895C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_25AF1896C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA23AC0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25AF189D4()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_25AF18A1C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_25AF18ADC;

  return sub_25AF14894(a1, v4, v5, v7, v6);
}

uint64_t sub_25AF18ADC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_25AF18BD4(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_25AF18C30(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2);
    v4 = sub_25B005F04();
    v5 = 0;
    v6 = v4 + 56;
    v7 = a1 + 32;
    while (1)
    {
      v11 = *(v7 + 8 * v5);
      sub_25B006294();
      MEMORY[0x25F85E0A0](v11);
      result = sub_25B0062D4();
      v13 = ~(-1 << *(v4 + 32));
      v14 = result & v13;
      v15 = (result & v13) >> 6;
      v16 = *(v6 + 8 * v15);
      v17 = 1 << (result & v13);
      v18 = *(v4 + 48);
      if ((v17 & v16) != 0)
      {
        while (*(v18 + 8 * v14) != v11)
        {
          v14 = (v14 + 1) & v13;
          v15 = v14 >> 6;
          v16 = *(v6 + 8 * (v14 >> 6));
          v17 = 1 << v14;
          if (((1 << v14) & v16) == 0)
          {
            goto LABEL_3;
          }
        }
      }

      else
      {
LABEL_3:
        *(v6 + 8 * v15) = v17 | v16;
        *(v18 + 8 * v14) = v11;
        v8 = *(v4 + 16);
        v9 = __OFADD__(v8, 1);
        v10 = v8 + 1;
        if (v9)
        {
          __break(1u);
          return result;
        }

        *(v4 + 16) = v10;
      }

      if (++v5 == v2)
      {
        return v4;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

uint64_t sub_25AF18D64(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA23B20);
    v3 = sub_25B005F04();
    v4 = 0;
    v5 = v3 + 56;
    v38 = v1;
    v39 = a1 + 32;
    while (1)
    {
      v6 = v39 + 40 * v4;
      v8 = *v6;
      v7 = *(v6 + 8);
      v10 = *(v6 + 16);
      v9 = *(v6 + 24);
      v11 = *(v6 + 32);
      sub_25B006294();
      v41 = v9;
      v42 = v10;
      v43 = v7;
      v45 = v11;
      if (v11)
      {
        MEMORY[0x25F85E0A0](1);

        sub_25B005994();
      }

      else
      {
        MEMORY[0x25F85E0A0](0);
        v12 = v8;

        sub_25B005DF4();
      }

      sub_25B005994();
      result = sub_25B0062D4();
      v14 = ~(-1 << *(v3 + 32));
      v15 = result & v14;
      v16 = (result & v14) >> 6;
      v17 = *(v5 + 8 * v16);
      v18 = 1 << (result & v14);
      if ((v18 & v17) == 0)
      {
LABEL_34:
        *(v5 + 8 * v16) = v17 | v18;
        v32 = *(v3 + 48) + 40 * v15;
        *v32 = v8;
        *(v32 + 8) = v43;
        *(v32 + 16) = v42;
        *(v32 + 24) = v41;
        *(v32 + 32) = v45;
        v33 = *(v3 + 16);
        v34 = __OFADD__(v33, 1);
        v35 = v33 + 1;
        if (!v34)
        {
          *(v3 + 16) = v35;
          goto LABEL_4;
        }

        __break(1u);
        return result;
      }

      v44 = v8;
      v40 = v4;
      while (1)
      {
        v19 = *(v3 + 48) + 40 * v15;
        v20 = *v19;
        v21 = *(v19 + 8);
        v22 = *(v19 + 16);
        v23 = *(v19 + 24);
        if ((*(v19 + 32) & 1) == 0)
        {
          if ((v45 & 1) == 0)
          {
            sub_25AF18BD4(0, &qword_27FA27200);
            v28 = v20;

            if (sub_25B005DE4())
            {
              if (v21 == v43 && v22 == v42)
              {
                sub_25AF1818C(v20, v43, v42, v23, 0);
                sub_25AF1818C(v44, v43, v42, v41, 0);
                v1 = v38;
                v4 = v40;
                goto LABEL_4;
              }

              v30 = sub_25B006174();
              result = sub_25AF1818C(v20, v21, v22, v23, 0);
              if (v30)
              {
                v37 = v43;
                v36 = v44;
                v26 = v41;
                v25 = v42;
                v31 = 0;
                goto LABEL_38;
              }
            }

            else
            {
              result = sub_25AF1818C(v20, v21, v22, v23, 0);
            }
          }

          goto LABEL_11;
        }

        if ((v45 & 1) == 0)
        {
          goto LABEL_11;
        }

        if (v20 != v44 || v21 != v43)
        {
          result = sub_25B006174();
          if ((result & 1) == 0)
          {
            goto LABEL_11;
          }
        }

        v26 = v41;
        v25 = v42;
        if (v22 == v42 && v23 == v41)
        {
          break;
        }

        result = sub_25B006174();
        if (result)
        {
          v37 = v43;
          v36 = v44;
          v26 = v41;
          v25 = v42;
          goto LABEL_37;
        }

LABEL_11:
        v15 = (v15 + 1) & v14;
        v16 = v15 >> 6;
        v17 = *(v5 + 8 * (v15 >> 6));
        v18 = 1 << v15;
        if ((v17 & (1 << v15)) == 0)
        {
          v1 = v38;
          v4 = v40;
          v8 = v44;
          goto LABEL_34;
        }
      }

      v37 = v43;
      v36 = v44;
LABEL_37:
      v31 = 1;
LABEL_38:
      sub_25AF1818C(v36, v37, v25, v26, v31);
      v1 = v38;
      v4 = v40;
LABEL_4:
      if (++v4 == v1)
      {
        return v3;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

uint64_t sub_25AF19100(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA23AE8);
    v3 = sub_25B005F04();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      sub_25B006294();

      sub_25B005994();
      result = sub_25B0062D4();
      v11 = ~(-1 << *(v3 + 32));
      for (i = result & v11; ; i = (i + 1) & v11)
      {
        v13 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v13) == 0)
        {
          break;
        }

        v14 = (*(v3 + 48) + 16 * i);
        if (*v14 != v9 || v14[1] != v8)
        {
          result = sub_25B006174();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_4;
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v13;
      v16 = (*(v3 + 48) + 16 * i);
      *v16 = v9;
      v16[1] = v8;
      v17 = *(v3 + 16);
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (!v18)
      {
        *(v3 + 16) = v19;
LABEL_4:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84FA0];
  }

  return result;
}

uint64_t objectdestroy_11Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_25AF192A8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_25AF19A24;

  return sub_25AF14198(a1, v4, v5, v6);
}

unint64_t sub_25AF1935C()
{
  result = qword_27FA23AF0;
  if (!qword_27FA23AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA23AF0);
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_0Tm(uint64_t a1)
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

uint64_t sub_25AF193FC()
{
  MEMORY[0x25F85ED10](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_25AF19434()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_25AF1947C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_25AF19A24;

  return sub_25AF104C8(a1, v4, v5, v7, v6);
}

uint64_t sub_25AF1953C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_25AF1957C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_25AF19A24;

  return sub_25AF10778(v2, v3);
}

uint64_t sub_25AF19614(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_25AF18ADC;

  return sub_25AF10800(a1, v4);
}

unint64_t sub_25AF19738()
{
  result = qword_27FA23B08;
  if (!qword_27FA23B08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA23A70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA23B08);
  }

  return result;
}

void *sub_25AF1979C(void *result)
{
  if (result)
  {
  }

  return result;
}

void *sub_25AF1988C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5 <= 0xFDu)
  {
    return sub_25AF198A0(a1, a2, a3, a4, a5);
  }

  return a1;
}

id sub_25AF198A0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5 < 0)
  {
    v7 = a5 & 1;

    return sub_25AF18244(a1, a2, a3, a4, v7);
  }

  else
  {

    return a1;
  }
}

uint64_t sub_25AF19950(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA23B18);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroy_58Tm()
{
  if (*(v0 + 24))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

const char *ControlCenterFlags.feature.getter()
{
  v1 = *v0;
  v2 = "bridge_configure_controls";
  v3 = "full_transition_animations";
  v4 = "settings_controls_below_suggested";
  if (v1 != 4)
  {
    v4 = "unhide_top_controls";
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = "controls_api";
  if (v1 != 1)
  {
    v5 = "full_scrolling_animations";
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

uint64_t ControlCenterFlags.hashValue.getter()
{
  v1 = *v0;
  sub_25B006294();
  MEMORY[0x25F85E0A0](v1);
  return sub_25B0062D4();
}

uint64_t sub_25AF19B6C()
{
  v1 = *v0;
  sub_25B006294();
  MEMORY[0x25F85E0A0](v1);
  return sub_25B0062D4();
}

uint64_t sub_25AF19BE0()
{
  v1 = *v0;
  sub_25B006294();
  MEMORY[0x25F85E0A0](v1);
  return sub_25B0062D4();
}

unint64_t sub_25AF19C28()
{
  result = qword_27FA23B40;
  if (!qword_27FA23B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA23B40);
  }

  return result;
}

const char *sub_25AF19C90()
{
  v1 = *v0;
  v2 = "bridge_configure_controls";
  v3 = "full_transition_animations";
  v4 = "settings_controls_below_suggested";
  if (v1 != 4)
  {
    v4 = "unhide_top_controls";
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = "controls_api";
  if (v1 != 1)
  {
    v5 = "full_scrolling_animations";
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

uint64_t getEnumTagSinglePayload for ControlCenterFlags(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ControlCenterFlags(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_25AF19E90()
{
  swift_getKeyPath();
  sub_25AF1C470(&unk_27FA27210, type metadata accessor for ButtonsAvailableModel);
  sub_25B004234();

  swift_beginAccess();
}

uint64_t sub_25AF19F50@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_25AF1C470(&unk_27FA27210, type metadata accessor for ButtonsAvailableModel);
  sub_25B004234();

  v4 = OBJC_IVAR____TtC17NanoControlCenter21ButtonsAvailableModel__availabilities;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_25AF1A044(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC17NanoControlCenter21ButtonsAvailableModel__availabilities;
  swift_beginAccess();

  v5 = sub_25AF1C214(v4, a1);

  if (v5)
  {
    *(v1 + v3) = a1;
  }

  else
  {
    swift_getKeyPath();
    MEMORY[0x28223BE20]();
    sub_25AF1C470(&unk_27FA27210, type metadata accessor for ButtonsAvailableModel);
    sub_25B004224();
  }
}

uint64_t sub_25AF1A194(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC17NanoControlCenter21ButtonsAvailableModel__availabilities;
  swift_beginAccess();
  *(a1 + v4) = a2;
}

uint64_t sub_25AF1A204(uint64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC17NanoControlCenter21ButtonsAvailableModel_allowedButtonsForConfiguration;
  v5 = *(v2 + OBJC_IVAR____TtC17NanoControlCenter21ButtonsAvailableModel_allowedButtonsForConfiguration);
  if (*(v5 + 16) <= *(a1 + 16) >> 3)
  {
    v23 = a1;

    sub_25AFFAA54(v5);

    v6 = v23;
  }

  else
  {

    v6 = sub_25AFFAC70(v5, a1);
  }

  v8 = 0;
  v9 = 1 << *(v6 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(v6 + 56);
  v12 = (v9 + 63) >> 6;
  if (v11)
  {
    while (1)
    {
      v13 = v8;
LABEL_12:
      v14 = *(*(v6 + 48) + ((v13 << 9) | (8 * __clz(__rbit64(v11)))));
      v23 = v14;
      v25 = 0;
      v26 = 0;
      v11 &= v11 - 1;
      v24 = 0;
      v27 = 0;
      sub_25AF1A47C(&v23, 0);
      result = sub_25AF18128(v14, 0, 0, 0, 0);
      if (!v11)
      {
        goto LABEL_8;
      }
    }
  }

  while (1)
  {
LABEL_8:
    v13 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
      goto LABEL_28;
    }

    if (v13 >= v12)
    {
      break;
    }

    v11 = *(v6 + 56 + 8 * v13);
    ++v8;
    if (v11)
    {
      v8 = v13;
      goto LABEL_12;
    }
  }

  v15 = *(v2 + v4);
  v16 = 1 << *(v15 + 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & *(v15 + 56);
  v19 = (v16 + 63) >> 6;

  for (i = 0; v18; result = sub_25AF18128(v22, 0, 0, 0, 0))
  {
    v21 = i;
LABEL_22:
    v22 = *(*(v15 + 48) + ((v21 << 9) | (8 * __clz(__rbit64(v18)))));
    v23 = v22;
    v25 = 0;
    v26 = 0;
    v18 &= v18 - 1;
    v24 = 0;
    v27 = 0;
    sub_25AF1A47C(&v23, 1);
  }

  while (1)
  {
    v21 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v21 >= v19)
    {
    }

    v18 = *(v15 + 56 + 8 * v21);
    ++i;
    if (v18)
    {
      i = v21;
      goto LABEL_22;
    }
  }

LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_25AF1A47C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *(a1 + 16);
  v22[0] = *a1;
  v22[1] = v5;
  v23 = *(a1 + 32);
  swift_getKeyPath();
  sub_25AF196CC(v22, v21);
  sub_25AF1C470(&unk_27FA27210, type metadata accessor for ButtonsAvailableModel);
  sub_25B004234();

  v21[0] = v2;
  KeyPath = swift_getKeyPath();
  sub_25B004254();

  v7 = OBJC_IVAR____TtC17NanoControlCenter21ButtonsAvailableModel__availabilities;
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v2 + v7);
  v21[0] = v9;
  *(v3 + v7) = 0x8000000000000000;
  v10 = sub_25AF8F064(v22);
  v12 = v9[2];
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    KeyPath = v11;
    if (v9[3] < v15)
    {
      sub_25AF96A38(v15, isUniquelyReferenced_nonNull_native);
      v9 = v21[0];
      v10 = sub_25AF8F064(v22);
      if ((KeyPath & 1) == (v16 & 1))
      {
        goto LABEL_6;
      }

      sub_25AF1C414(v22);
      v10 = sub_25B006204();
      __break(1u);
    }

    if (isUniquelyReferenced_nonNull_native)
    {
LABEL_6:
      *(v3 + v7) = v9;
      if (KeyPath)
      {
        goto LABEL_11;
      }

      goto LABEL_7;
    }
  }

  v20 = v10;
  sub_25AF9813C();
  v10 = v20;
  v9 = v21[0];
  *(v3 + v7) = v21[0];
  if (KeyPath)
  {
    goto LABEL_11;
  }

LABEL_7:
  if (v23 >= 0x40u)
  {
    v17 = 257;
  }

  else
  {
    v17 = 258;
  }

  v18 = v10;
  sub_25AF163CC(v10, v22, v17, v9);
  sub_25AF196CC(v22, v21);
  v10 = v18;
LABEL_11:
  *(v9[7] + 2 * v10) = a2 & 1;
  swift_endAccess();
  v21[0] = v3;
  swift_getKeyPath();
  sub_25B004244();

  return sub_25AF1C414(v22);
}

id sub_25AF1A7C4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ButtonsAvailableModel();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for ButtonsAvailableModel()
{
  result = qword_27FA23B60;
  if (!qword_27FA23B60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_25AF1A8DC()
{
  result = sub_25B004274();
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

uint64_t getEnumTagSinglePayload for ButtonsAvailableModel.Availability(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 65281 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65281 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65281;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

LABEL_17:
  v6 = *(a1 + 1);
  v7 = v6 >= 2;
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ButtonsAvailableModel.Availability(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65281 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65281 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 16) + 1;
    *result = a2 - 255;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 2) = v5;
      }

      else
      {
        *(result + 2) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 2) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 2) = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *(result + 1) = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_25AF1AAEC(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  if (v2 == 2)
  {
    if (v4 != 2)
    {
      return 0;
    }

    return v3 ^ a2[1] ^ 1u;
  }

  result = 0;
  if (v4 != 2 && ((v4 ^ v2) & 1) == 0)
  {
    return v3 ^ a2[1] ^ 1u;
  }

  return result;
}

uint64_t sub_25AF1AB34()
{
  v1[102] = v0;
  sub_25B005B34();
  v1[103] = sub_25B005B24();
  v3 = sub_25B005AE4();
  v1[104] = v3;
  v1[105] = v2;

  return MEMORY[0x2822009F8](sub_25AF1ABD0, v3, v2);
}

uint64_t sub_25AF1ABD0()
{
  v24 = v0;
  v1 = qword_27FA30B10;
  v0[106] = qword_27FA30B10;
  if (v1)
  {
    v2 = qword_27FA23800;
    v3 = v1;
    if (v2 != -1)
    {
      swift_once();
    }

    v4 = sub_25B0044C4();
    v0[107] = __swift_project_value_buffer(v4, qword_27FA30C28);
    v5 = sub_25B0044B4();
    v6 = sub_25B005CD4();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v22[0] = v8;
      *v7 = 136315138;
      *(v7 + 4) = sub_25AF8E7DC(0xD000000000000019, 0x800000025B016580, v22);
      _os_log_impl(&dword_25AF0B000, v5, v6, "%s", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v8);
      MEMORY[0x25F85EC30](v8, -1, -1);
      MEMORY[0x25F85EC30](v7, -1, -1);
    }

    v21 = sub_25AF18C1C(&unk_286C4BC68);
    sub_25AF9024C(v22, 51);
    v0[108] = v21;
    v0[98] = sub_25AF18C1C(&unk_286C4BD58);
    v0[99] = sub_25AF18C1C(&unk_286C4BDC8);
    result = sub_25AF9024C(v22, 51);
    v10 = qword_27FA30B10;
    if (qword_27FA30B10)
    {
      swift_getKeyPath();
      v0[100] = v10;
      sub_25AF1C470(&qword_27FA25250, type metadata accessor for GlanceModel);
      v11 = v10;
      sub_25B004234();

      v12 = OBJC_IVAR____TtC17NanoControlCenter11GlanceModel__hasBaseband;
      swift_beginAccess();
      LODWORD(v12) = v11[v12];

      if (v12 == 1)
      {
        sub_25AF99604(1);
      }

      swift_getKeyPath();
      v0[101] = v3;
      sub_25B004234();

      v13 = OBJC_IVAR____TtC17NanoControlCenter11GlanceModel__isTinkerWatch;
      swift_beginAccess();
      if (v3[v13])
      {
        sub_25AF99604(100);
        v22[0] = 100;
        memset(&v22[1], 0, 24);
        v23 = 0;
        sub_25AF1BADC(v22, 1);
        sub_25AF18128(0x64, 0, 0, 0, 0);
      }

      else
      {
        sub_25AF99604(10);
        sub_25AF99604(6);
      }

      v20 = swift_task_alloc();
      v0[109] = v20;
      *v20 = v0;
      v20[1] = sub_25AF1B0D4;

      return sub_25AF1BD34();
    }

    else
    {
      __break(1u);
    }
  }

  else
  {

    if (qword_27FA23800 != -1)
    {
      swift_once();
    }

    v14 = sub_25B0044C4();
    __swift_project_value_buffer(v14, qword_27FA30C28);
    v15 = sub_25B0044B4();
    v16 = sub_25B005CB4();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v22[0] = v18;
      *v17 = 136315138;
      *(v17 + 4) = sub_25AF8E7DC(0xD000000000000019, 0x800000025B016580, v22);
      __swift_destroy_boxed_opaque_existential_0Tm(v18);
      MEMORY[0x25F85EC30](v18, -1, -1);
      MEMORY[0x25F85EC30](v17, -1, -1);
    }

    v19 = v0[1];

    return v19();
  }

  return result;
}

uint64_t sub_25AF1B0D4(char a1)
{
  v2 = *v1;
  *(*v1 + 881) = a1;

  v3 = *(v2 + 840);
  v4 = *(v2 + 832);

  return MEMORY[0x2822009F8](sub_25AF1B1FC, v4, v3);
}

uint64_t sub_25AF1B1FC()
{
  if (*(v0 + 881) == 1)
  {
    sub_25AF99604(16);
  }

  swift_asyncLet_begin();

  return MEMORY[0x282200928](v0 + 16);
}

uint64_t sub_25AF1B2C4()
{
  v24 = v0;
  if (*(v0 + 880) != 1)
  {
    v6 = sub_25B0044B4();
    v7 = sub_25B005CD4();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v23 = v9;
      *v8 = 136315138;
      *(v8 + 4) = sub_25AF8E7DC(0xD000000000000019, 0x800000025B016580, &v23);
      _os_log_impl(&dword_25AF0B000, v6, v7, "%s not including internal install buttons", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v9);
      MEMORY[0x25F85EC30](v9, -1, -1);
      MEMORY[0x25F85EC30](v8, -1, -1);
    }

    goto LABEL_20;
  }

  v22 = MEMORY[0x277D84FA0];
  v1 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v2 = sub_25B005924();
  v3 = [v1 initWithSuiteName_];

  if (v3)
  {
    v4 = sub_25B005924();
    v5 = [v3 BOOLForKey_];
  }

  else
  {
    v5 = 0;
  }

  v10 = sub_25B0044B4();
  v11 = sub_25B005CD4();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v23 = v13;
    *v12 = 136315394;
    *(v12 + 4) = sub_25AF8E7DC(0xD000000000000019, 0x800000025B016580, &v23);
    *(v12 + 12) = 1024;
    *(v12 + 14) = v5;
    _os_log_impl(&dword_25AF0B000, v10, v11, "%s may show internal buttons. Hide internal UI set? %{BOOL}d", v12, 0x12u);
    __swift_destroy_boxed_opaque_existential_0Tm(v13);
    MEMORY[0x25F85EC30](v13, -1, -1);
    MEMORY[0x25F85EC30](v12, -1, -1);
  }

  if ((v5 & 1) == 0)
  {
    sub_25AF9024C(&v23, 13);
    sub_25AF9024C(&v23, 19);
    sub_25AF9024C(&v23, 23);
  }

  sub_25AF9024C(&v23, 14);
  v14 = MobileGestalt_get_current_device();
  if (!v14)
  {
    __break(1u);
    return MEMORY[0x282200920](v14);
  }

  v15 = v14;
  v16 = MobileGestalt_copy_releaseType_obj();

  if (!v16)
  {
    if (v5)
    {
      goto LABEL_19;
    }

LABEL_18:
    sub_25AF9024C(&v23, 15);
    goto LABEL_19;
  }

  v17 = sub_25B005934();
  v19 = v18;

  if (v17 != 0x726F646E6556 || v19 != 0xE600000000000000)
  {
    v20 = sub_25B006174();

    if ((v20 | v5))
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

LABEL_19:
  sub_25AFFAA54(v22);

LABEL_20:
  v14 = (v0 + 16);

  return MEMORY[0x282200920](v14);
}

uint64_t sub_25AF1B6B4()
{
  v1 = v0[108];
  v2 = v0[106];
  v3 = v0[102];

  sub_25AF1B758(v1, v0 + 98, v3, v0 + 99);

  v4 = v0[1];

  return v4();
}

uint64_t sub_25AF1B758(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4)
{
  v7 = *a2;
  if (*(*a2 + 16) <= *(a1 + 16) >> 3)
  {
    v36 = a1;

    sub_25AFFAA54(v7);

    v8 = v36;
  }

  else
  {

    v8 = sub_25AFFAC70(v7, a1);
  }

  v9 = *a2;
  v10 = 1 << *(v9 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(v9 + 56);
  v13 = (v10 + 63) >> 6;

  v15 = 0;
  if (v12)
  {
    while (1)
    {
      v16 = v15;
LABEL_12:
      v17 = *(*(v9 + 48) + ((v16 << 9) | (8 * __clz(__rbit64(v12)))));
      v36 = v17;
      v38 = 0;
      v39 = 0;
      v12 &= v12 - 1;
      v37 = 0;
      v40 = 0;
      sub_25AF1A47C(&v36, 0);
      result = sub_25AF18128(v17, 0, 0, 0, 0);
      if (!v12)
      {
        goto LABEL_8;
      }
    }
  }

  while (1)
  {
LABEL_8:
    v16 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      __break(1u);
      goto LABEL_38;
    }

    if (v16 >= v13)
    {
      break;
    }

    v12 = *(v9 + 56 + 8 * v16);
    ++v15;
    if (v12)
    {
      v15 = v16;
      goto LABEL_12;
    }
  }

  v18 = 1 << *(v8 + 32);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & *(v8 + 56);
  v21 = (v18 + 63) >> 6;

  for (i = 0; v20; result = sub_25AF18128(v24, 0, 0, 0, 0))
  {
    v23 = i;
LABEL_22:
    v24 = *(*(v8 + 48) + ((v23 << 9) | (8 * __clz(__rbit64(v20)))));
    v36 = v24;
    v38 = 0;
    v39 = 0;
    v20 &= v20 - 1;
    v37 = 0;
    v40 = 0;
    sub_25AF1A47C(&v36, 1);
  }

  while (1)
  {
    v23 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v23 >= v21)
    {

      v25 = *a4;
      v26 = *a4 + 56;
      v27 = 1 << *(*a4 + 32);
      v28 = -1;
      if (v27 < 64)
      {
        v28 = ~(-1 << v27);
      }

      v29 = v28 & *(*a4 + 56);
      v30 = (v27 + 63) >> 6;

      for (j = 0; v29; result = sub_25AF18128(v33, 0, 0, 0, 0))
      {
        v32 = j;
LABEL_32:
        v33 = *(*(v25 + 48) + ((v32 << 9) | (8 * __clz(__rbit64(v29)))));
        v36 = v33;
        v38 = 0;
        v39 = 0;
        v29 &= v29 - 1;
        v37 = 0;
        v40 = 0;
        sub_25AF1BADC(&v36, 0);
      }

      while (1)
      {
        v32 = j + 1;
        if (__OFADD__(j, 1))
        {
          goto LABEL_39;
        }

        if (v32 >= v30)
        {

          v34 = *(a3 + OBJC_IVAR____TtC17NanoControlCenter21ButtonsAvailableModel_allowedButtonsForConfiguration);
          *(a3 + OBJC_IVAR____TtC17NanoControlCenter21ButtonsAvailableModel_allowedButtonsForConfiguration) = v8;
          sub_25AF1A204(v34);
        }

        v29 = *(v26 + 8 * v32);
        ++j;
        if (v29)
        {
          j = v32;
          goto LABEL_32;
        }
      }
    }

    v20 = *(v8 + 56 + 8 * v23);
    ++i;
    if (v20)
    {
      i = v23;
      goto LABEL_22;
    }
  }

LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
  return result;
}

uint64_t sub_25AF1BADC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *(a1 + 16);
  v22[0] = *a1;
  v22[1] = v5;
  v23 = *(a1 + 32);
  swift_getKeyPath();
  sub_25AF196CC(v22, v21);
  sub_25AF1C470(&unk_27FA27210, type metadata accessor for ButtonsAvailableModel);
  sub_25B004234();

  v21[0] = v2;
  KeyPath = swift_getKeyPath();
  sub_25B004254();

  v7 = OBJC_IVAR____TtC17NanoControlCenter21ButtonsAvailableModel__availabilities;
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v2 + v7);
  v21[0] = v9;
  *(v3 + v7) = 0x8000000000000000;
  v10 = sub_25AF8F064(v22);
  v12 = v9[2];
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    KeyPath = v11;
    if (v9[3] < v15)
    {
      sub_25AF96A38(v15, isUniquelyReferenced_nonNull_native);
      v9 = v21[0];
      v10 = sub_25AF8F064(v22);
      if ((KeyPath & 1) == (v16 & 1))
      {
        goto LABEL_6;
      }

      sub_25AF1C414(v22);
      v10 = sub_25B006204();
      __break(1u);
    }

    if (isUniquelyReferenced_nonNull_native)
    {
LABEL_6:
      *(v3 + v7) = v9;
      if (KeyPath)
      {
        goto LABEL_11;
      }

      goto LABEL_7;
    }
  }

  v20 = v10;
  sub_25AF9813C();
  v10 = v20;
  v9 = v21[0];
  *(v3 + v7) = v21[0];
  if (KeyPath)
  {
    goto LABEL_11;
  }

LABEL_7:
  if (v23 >= 0x40u)
  {
    v17 = 257;
  }

  else
  {
    v17 = 258;
  }

  v18 = v10;
  sub_25AF163CC(v10, v22, v17, v9);
  sub_25AF196CC(v22, v21);
  v10 = v18;
LABEL_11:
  *(v9[7] + 2 * v10 + 1) = a2 & 1;
  swift_endAccess();
  v21[0] = v3;
  swift_getKeyPath();
  sub_25B004244();

  return sub_25AF1C414(v22);
}

uint64_t sub_25AF1BD34()
{
  v1[87] = v0;
  sub_25B005B34();
  v1[88] = sub_25B005B24();
  v3 = sub_25B005AE4();
  v1[89] = v3;
  v1[90] = v2;

  return MEMORY[0x2822009F8](sub_25AF1BDD0, v3, v2);
}

uint64_t sub_25AF1BDD0()
{
  swift_asyncLet_begin();

  return MEMORY[0x282200928](v0 + 16);
}

uint64_t sub_25AF1BEA8()
{
  v7 = v0;
  v1 = *(v0 + 729);

  v5[0] = 16;
  memset(&v5[1], 0, 24);
  v6 = 0;
  sub_25AF1A47C(v5, v1);
  sub_25AF18128(0x10, 0, 0, 0, 0);
  v2 = *(v0 + 8);
  v3 = *(v0 + 729);

  return v2(v3);
}

uint64_t sub_25AF1BF70()
{
  v1 = *(v0 + 16);
  *v1 = BPSIsWalkieTalkieAppInstalled();
  v2 = *(v0 + 8);

  return v2();
}

id sub_25AF1BFF8()
{
  v1 = *MEMORY[0x277CF33D0];
  v2 = objc_opt_self();
  v3 = v1;
  result = [v2 sharedInstance];
  if (result)
  {
    v5 = result;
    v6 = *(v0 + 16);
    v7 = [result getActivePairedDeviceIncludingAltAccount];

    LOBYTE(v5) = BPSDeviceHasCapabilityForString();
    *v6 = v5;
    v8 = *(v0 + 8);

    return v8();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_25AF1C0E0(uint64_t a1)
{
  v2 = *(a1 + 16);
  v15[0] = *a1;
  v15[1] = v2;
  v16 = *(a1 + 32);
  swift_getKeyPath();
  v14 = v1;
  sub_25AF1C470(&unk_27FA27210, type metadata accessor for ButtonsAvailableModel);
  sub_25B004234();

  v3 = OBJC_IVAR____TtC17NanoControlCenter21ButtonsAvailableModel__availabilities;
  swift_beginAccess();
  v4 = *(v14 + v3);
  v5 = *(v4 + 16);

  if (v5 && (v6 = sub_25AF8F064(v15), (v7 & 1) != 0))
  {
    v8 = (*(v4 + 56) + 2 * v6);
    v9 = *v8;
    v10 = v8[1];

    if (v10)
    {
      v11 = 256;
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v12 = v16;

    if (v12 >= 0x40)
    {
      v9 = 1;
    }

    else
    {
      v9 = 2;
    }

    v11 = 256;
  }

  return v11 | v9;
}

uint64_t sub_25AF1C214(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = result + 64;
  v6 = 1 << *(result + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(result + 64);
  v27 = (v6 + 63) >> 6;
  v28 = result;
  while (v8)
  {
    v9 = __clz(__rbit64(v8));
    v29 = (v8 - 1) & v8;
LABEL_15:
    v12 = v9 | (v4 << 6);
    v13 = *(v3 + 48) + 40 * v12;
    v14 = *v13;
    v15 = *(v13 + 8);
    v16 = *(v13 + 16);
    v17 = *(v13 + 24);
    v18 = (*(v3 + 56) + 2 * v12);
    v19 = *v18;
    v20 = v18[1];
    v21 = *(v13 + 32);
    sub_25AF181DC(*v13, v15, v16, v17, v21);
    v30[0] = v14;
    v30[1] = v15;
    v30[2] = v16;
    v30[3] = v17;
    v31 = v21;
    v22 = sub_25AF8F064(v30);
    LOBYTE(v15) = v23;
    sub_25AF1C414(v30);
    if ((v15 & 1) == 0)
    {
      return 0;
    }

    v24 = (*(a2 + 56) + 2 * v22);
    v25 = *v24;
    v26 = v24[1];
    if (v25 == 2)
    {
      result = 0;
      if (v19 != 2)
      {
        return result;
      }
    }

    else
    {
      result = 0;
      if (v19 == 2 || ((v25 ^ v19) & 1) != 0)
      {
        return result;
      }
    }

    v3 = v28;
    v8 = v29;
    if ((v20 ^ v26))
    {
      return result;
    }
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v27)
    {
      return 1;
    }

    v11 = *(v5 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v29 = (v11 - 1) & v11;
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_25AF1C470(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_25AF1C4D4(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *a1;
    v5 = v4 >= 2;
    v6 = (v4 + 2147483646) & 0x7FFFFFFF;
    if (v5)
    {
      return (v6 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v10 = sub_25B004844();
    v11 = *(*(v10 - 8) + 48);
    v12 = &a1[*(a3 + 20)];

    return v11(v12, a2, v10);
  }
}

_BYTE *sub_25AF1C594(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *result = a2 + 1;
  }

  else
  {
    v7 = sub_25B004844();
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 20)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_25AF1C654()
{
  result = sub_25B004844();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_25AF1C6D0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 == *a2)
  {
    return sub_25B004834();
  }

  else
  {
    return 0;
  }
}

uint64_t sub_25AF1C70C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 73);
    v5 = v4 >= 2;
    v6 = (v4 + 2147483646) & 0x7FFFFFFF;
    if (v5)
    {
      return (v6 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v10 = type metadata accessor for ButtonAndLabel.ParentState(0);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 36);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_25AF1C7CC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 73) = a2 + 1;
  }

  else
  {
    v7 = type metadata accessor for ButtonAndLabel.ParentState(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_25AF1C88C()
{
  sub_25AF1C95C(319, &qword_27FA23B90);
  if (v0 <= 0x3F)
  {
    sub_25AF1C95C(319, &qword_27FA23B98);
    if (v1 <= 0x3F)
    {
      type metadata accessor for ButtonAndLabel.ParentState(319);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_25AF1C95C(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_25B005E04();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t sub_25AF1C9A8@<X0>(uint64_t *a1@<X8>)
{
  v24 = a1;
  v2 = sub_25B004844();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ButtonAndLabel.ParentState(0);
  v7 = v6 - 8;
  MEMORY[0x28223BE20](v6);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(type metadata accessor for ButtonAndLabel(0) + 36);
  sub_25AF24204(v1 + v10, v9, type metadata accessor for ButtonAndLabel.ParentState);
  v11 = *(v7 + 28);
  (*(v3 + 104))(v5, *MEMORY[0x277CDFA88], v2);
  LOBYTE(v7) = sub_25B004834();
  v12 = *(v3 + 8);
  v12(v5, v2);
  v12(&v9[v11], v2);
  v13 = *v1;
  v14 = *(v1 + 8);
  v15 = *(v1 + 16);
  v16 = *(v1 + 24);
  LOBYTE(v10) = *(v1 + v10);
  LOBYTE(v11) = *(v1 + 73);
  v17 = *(v1 + 80);
  v18 = v7 & 1;
  LOBYTE(v7) = *(v1 + 32);
  sub_25AF1D7EC(*v1, v14, v15, v16, v7);
  v19 = sub_25B004C24();
  *&v25 = v13;
  *(&v25 + 1) = v14;
  *&v26 = v15;
  *(&v26 + 1) = v16;
  LOBYTE(v27) = v7;
  BYTE1(v27) = v10;
  BYTE2(v27) = v11;
  *(&v27 + 1) = v17;
  v28 = v18;
  v20 = v24;
  *v24 = v19;
  v20[1] = 0;
  *(v20 + 16) = 0;
  v21 = v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA23BA0);
  sub_25AF1CC04(v1, &v25, v21 + *(v22 + 44));
  v29[0] = v25;
  v29[1] = v26;
  v29[2] = v27;
  v30 = v28;
  return sub_25AF2602C(v29, &qword_27FA23BA8);
}

uint64_t sub_25AF1CC04@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  v67 = a3;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA23BB0);
  MEMORY[0x28223BE20](v63);
  v62 = &v55 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA23BB8);
  v68 = *(v6 - 8);
  v69 = v6;
  MEMORY[0x28223BE20](v6);
  v61 = &v55 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA23BC0);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v71 = &v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v55 - v11;
  sub_25B005B34();
  v72 = sub_25B005B24();
  sub_25B005AE4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v13 = *a1;
  v14 = *(a1 + 8);
  v15 = *(a1 + 16);
  v16 = *(a1 + 24);
  LODWORD(v17) = *(a1 + 32);
  v70 = v12;
  v60 = v14;
  v65 = v15;
  v66 = a1;
  v64 = v13;
  if (v17 < 0xFE)
  {
    v22 = a2[1];
    v82[0] = *a2;
    v82[1] = v22;
    v83 = a2[2];
    v84 = *(a2 + 48);
    v85 = v82[0];
    v86 = v22;
    v87 = v83;
    LOBYTE(v88) = v84;
    *(&v88 + 1) = 0x3FF0000000000000;
    v23 = *(a1 + 88);
    v58 = v17;
    if (v23)
    {
      v111 = v85;
      v112 = v86;
      v113 = v87;
      v114 = v88;
      LOBYTE(v89) = 1;
      LOBYTE(v118) = 1;
      sub_25AF1D7EC(v13, v14, v15, v16, v17);
      sub_25AF25FC4(v82, &v104, &qword_27FA23BA8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA23BE0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA23BF0);
      sub_25AF1D88C();
      sub_25AF1D918();
      sub_25B004C74();
    }

    else
    {
      v24 = *(a1 + 80);
      v104 = v85;
      v105 = v86;
      v106 = v87;
      v107[0] = v88;
      v89 = v85;
      v90 = v86;
      v91 = v87;
      v92[0] = v88;
      *&v92[1] = v13;
      *(&v92[1] + 1) = v14;
      *&v93 = v15;
      *(&v93 + 1) = v16;
      LOBYTE(v94) = v17;
      *(&v94 + 1) = v24;
      *&v107[1] = v13;
      *(&v107[1] + 1) = v14;
      *&v108 = v15;
      *(&v108 + 1) = v16;
      LOBYTE(v109) = v17;
      *(&v109 + 1) = v24;
      sub_25AF1D7EC(v13, v14, v15, v16, v17);
      sub_25AF1D7EC(v13, v14, v15, v16, v17);
      sub_25AF25FC4(v82, &v111, &qword_27FA23BA8);
      sub_25AF25FC4(&v85, &v111, &qword_27FA23BF0);
      sub_25AF25FC4(&v89, &v111, &qword_27FA23BE0);
      sub_25AF2602C(&v104, &qword_27FA23BE0);
      v115 = v92[1];
      v116 = v93;
      v117 = v94;
      v111 = v89;
      v112 = v90;
      v113 = v91;
      v114 = v92[0];
      LOBYTE(v73) = 0;
      LOBYTE(v118) = 0;
      sub_25AF25FC4(&v89, &v96, &qword_27FA23BE0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA23BE0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA23BF0);
      sub_25AF1D88C();
      sub_25AF1D918();
      sub_25B004C74();
      sub_25AF2602C(&v85, &qword_27FA23BF0);
      sub_25AF2602C(&v89, &qword_27FA23BE0);
    }

    v77 = v100;
    v78 = v101;
    v79 = v102;
    v73 = v96;
    v74 = v97;
    v75 = v98;
    v76 = v99;
    v91 = v98;
    v92[0] = v99;
    v80 = v103;
    v89 = v96;
    v90 = v97;
    LOBYTE(v95) = v103;
    v93 = v101;
    v94 = v102;
    v92[1] = v100;
    sub_25AF25FC4(&v73, &v111, &qword_27FA23BC8);
    sub_25AF2602C(&v89, &qword_27FA23BC8);
    v115 = v77;
    v116 = v78;
    v117 = v79;
    v118 = v80;
    v111 = v73;
    v112 = v74;
    v113 = v75;
    v114 = v76;
    v81 = 0;
    sub_25AF25FC4(&v73, &v104, &qword_27FA23BC8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA23BC8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA23BA8);
    sub_25AF1D800();
    sub_25AF0F274(&qword_27FA23BF8, &qword_27FA23BA8);
    sub_25B004C74();
    LODWORD(v17) = v58;
    sub_25AF231D0(v64, v14, v65, v16, v58);
    sub_25AF2602C(&v73, &qword_27FA23BC8);
    v115 = v107[1];
    v116 = v108;
    v117 = v109;
    v118 = v110;
    v111 = v104;
    v112 = v105;
    v113 = v106;
    v114 = v107[0];
    v12 = v70;
    a1 = v66;
    v21 = v16;
  }

  else
  {
    v18 = a2[1];
    v96 = *a2;
    v97 = v18;
    v20 = *a2;
    v19 = a2[1];
    v98 = a2[2];
    LOBYTE(v99) = *(a2 + 48);
    v104 = v20;
    v105 = v19;
    v106 = a2[2];
    LOBYTE(v107[0]) = *(a2 + 48);
    LOBYTE(v89) = 1;
    HIBYTE(v110) = 1;
    sub_25AF25FC4(&v96, &v111, &qword_27FA23BA8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA23BC8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA23BA8);
    v21 = v16;
    sub_25AF1D800();
    sub_25AF0F274(&qword_27FA23BF8, &qword_27FA23BA8);
    sub_25B004C74();
  }

  result = type metadata accessor for ButtonAndLabel(0);
  if (*(a1 + *(result + 40)) != 1)
  {
    (*(v68 + 56))(v12, 1, 1, v69);
LABEL_16:
    v92[1] = v115;
    v93 = v116;
    v94 = v117;
    v95 = v118;
    v89 = v111;
    v90 = v112;
    v91 = v113;
    v92[0] = v114;
    v45 = v71;
    sub_25AF25FC4(v12, v71, &qword_27FA23BC0);
    v46 = v92[1];
    v47 = v93;
    v100 = v92[1];
    v101 = v93;
    v48 = v94;
    v102 = v94;
    v103 = v95;
    v49 = v89;
    v50 = v90;
    v96 = v89;
    v97 = v90;
    v51 = v91;
    v52 = v92[0];
    v98 = v91;
    v99 = v92[0];
    v53 = v67;
    *(v67 + 112) = v95;
    v53[5] = v47;
    v53[6] = v48;
    v53[3] = v52;
    v53[4] = v46;
    v53[1] = v50;
    v53[2] = v51;
    *v53 = v49;
    v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA23C18);
    sub_25AF25FC4(v45, v53 + *(v54 + 48), &qword_27FA23BC0);
    sub_25AF25FC4(&v96, &v104, &qword_27FA23C20);
    sub_25AF2602C(v12, &qword_27FA23BC0);
    sub_25AF2602C(v45, &qword_27FA23BC0);
    v107[1] = v92[1];
    v108 = v93;
    v109 = v94;
    v110 = v95;
    v104 = v89;
    v105 = v90;
    v106 = v91;
    v107[0] = v92[0];
    sub_25AF2602C(&v104, &qword_27FA23C20);
  }

  v26 = qword_27FA30B10;
  if (qword_27FA30B10)
  {
    v27 = *(result + 36);
    LODWORD(v28) = *(a1 + v27);
    v59 = v28 ^ 1;
    v29 = OBJC_IVAR____TtC17NanoControlCenter11GlanceModel_buttonLayout;
    swift_beginAccess();
    v30 = *&v26[v29];
    v57 = *(a1 + 88);
    if (v17 <= 0xFD)
    {
      v32 = v64;
      v33 = v65;
      *&v104 = v64;
      v34 = v60;
      *(&v104 + 1) = v60;
      *&v105 = v65;
      *(&v105 + 1) = v21;
      LOBYTE(v106) = v17;
      sub_25AF1D7EC(v64, v60, v65, v21, v17);

      sub_25AF1D7EC(v32, v34, v33, v21, v17);
      v35 = v26;
      v56 = v28;
      v28 = v27;
      v36 = v17;
      v17 = v35;
      v31 = sub_25AF730A0(&v104, v59);

      LOBYTE(v17) = v36;
      v27 = v28;
      LOBYTE(v28) = v56;
      sub_25AF231D0(v32, v34, v33, v21, v17);
    }

    else
    {
      v31 = *&v26[OBJC_IVAR____TtC17NanoControlCenter11GlanceModel_editDoneButtonModel];
      v32 = v64;
      v33 = v65;
      v34 = v60;
      sub_25AF1D7EC(v64, v60, v65, v21, v17);
    }

    KeyPath = swift_getKeyPath();
    LOBYTE(v85) = 0;
    *&v89 = v32;
    *(&v89 + 1) = v34;
    *&v90 = v33;
    *(&v90 + 1) = v21;
    LOBYTE(v91) = v17;
    BYTE1(v91) = v59;
    *(&v91 + 1) = v30;
    LOBYTE(v92[0]) = 0;
    BYTE1(v92[0]) = v57;
    BYTE2(v92[0]) = v28;
    *(&v92[0] + 1) = v31;
    *&v92[1] = KeyPath;
    BYTE8(v92[1]) = 0;
    *&v96 = v32;
    *(&v96 + 1) = v34;
    *&v97 = v33;
    *(&v97 + 1) = v21;
    LOBYTE(v98) = v17;
    BYTE1(v98) = v59;
    *(&v98 + 1) = v30;
    LOBYTE(v99) = 0;
    BYTE1(v99) = v57;
    BYTE2(v99) = v28;
    *(&v99 + 1) = v31;
    *&v100 = KeyPath;
    BYTE8(v100) = 0;
    sub_25AF25FC4(&v89, &v104, &qword_27FA23C28);
    sub_25AF2602C(&v96, &qword_27FA23C28);
    v106 = v91;
    v107[0] = v92[0];
    *(v107 + 9) = *(v92 + 9);
    v104 = v89;
    v105 = v90;
    v38 = v17;
    v39 = v62;
    v40 = &v62[*(v63 + 36)];
    v41 = type metadata accessor for LabelOpacityEffect(0);
    sub_25AF24204(v66 + v27, &v40[*(v41 + 20)], type metadata accessor for ButtonAndLabel.ParentState);
    *v40 = v32;
    *(v40 + 1) = v34;
    *(v40 + 2) = v33;
    *(v40 + 3) = v21;
    v40[32] = v38;
    v42 = v107[1];
    *(v39 + 48) = v107[0];
    *(v39 + 64) = v42;
    v43 = v106;
    *(v39 + 16) = v105;
    *(v39 + 32) = v43;
    *v39 = v104;
    *(v39 + 80) = 0;
    sub_25AF1D7EC(v32, v34, v33, v21, v38);
    sub_25AF21254();
    v44 = v61;
    sub_25B005294();
    sub_25AF2602C(v39, &qword_27FA23BB0);
    v12 = v70;
    sub_25AF25B0C(v44, v70, &qword_27FA23BB8);
    (*(v68 + 56))(v12, 0, 1, v69);
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

id sub_25AF1D7EC(id result, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  if (a5 <= 0xFDu)
  {
    return sub_25AF181DC(result, a2, a3, a4, a5);
  }

  return result;
}

unint64_t sub_25AF1D800()
{
  result = qword_27FA23BD0;
  if (!qword_27FA23BD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA23BC8);
    sub_25AF1D88C();
    sub_25AF1D918();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA23BD0);
  }

  return result;
}

unint64_t sub_25AF1D88C()
{
  result = qword_27FA23BD8;
  if (!qword_27FA23BD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA23BE0);
    sub_25AF1D918();
    sub_25AF1D9FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA23BD8);
  }

  return result;
}

unint64_t sub_25AF1D918()
{
  result = qword_27FA23BE8;
  if (!qword_27FA23BE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA23BF0);
    sub_25AF0F274(&qword_27FA23BF8, &qword_27FA23BA8);
    sub_25AF0F274(&qword_27FA23C00, &qword_27FA23C08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA23BE8);
  }

  return result;
}

unint64_t sub_25AF1D9FC()
{
  result = qword_27FA23C10;
  if (!qword_27FA23C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA23C10);
  }

  return result;
}

double sub_25AF1DA50@<D0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v17[0] = *v1;
  v17[1] = v3;
  *v18 = *(v1 + 32);
  *&v18[15] = *(v1 + 47);
  v4 = sub_25B004C24();
  v16 = 0;
  sub_25AF1DCC4(v17, &v34);
  v25 = *&v35[80];
  v26 = *&v35[96];
  v21 = *&v35[16];
  v22 = *&v35[32];
  v23 = *&v35[48];
  v24 = *&v35[64];
  v19 = v34;
  v20 = *v35;
  v28[6] = *&v35[80];
  v28[7] = *&v35[96];
  v28[2] = *&v35[16];
  v28[3] = *&v35[32];
  v28[4] = *&v35[48];
  v28[5] = *&v35[64];
  v27 = v35[112];
  v29 = v35[112];
  v28[0] = v34;
  v28[1] = *v35;
  sub_25AF25FC4(&v19, &v30, &qword_27FA23D68);
  sub_25AF2602C(v28, &qword_27FA23D68);
  *&v15[87] = v24;
  *&v15[103] = v25;
  *&v15[119] = v26;
  *&v15[23] = v20;
  *&v15[39] = v21;
  *&v15[55] = v22;
  *&v15[71] = v23;
  v15[135] = v27;
  *&v15[7] = v19;
  v5 = v18[16];
  v6 = v18[18];
  KeyPath = swift_getKeyPath();
  *&v31[81] = *&v15[80];
  *&v31[97] = *&v15[96];
  *&v31[113] = *&v15[112];
  *&v31[17] = *&v15[16];
  *&v31[33] = *&v15[32];
  *&v31[49] = *&v15[48];
  *&v31[65] = *&v15[64];
  *&v31[1] = *v15;
  *&v35[81] = *&v15[80];
  *&v35[97] = *&v15[96];
  v36 = *&v15[112];
  *&v35[17] = *&v15[16];
  *&v35[33] = *&v15[32];
  *&v35[49] = *&v15[48];
  *&v35[65] = *&v15[64];
  *&v31[129] = *&v15[128];
  v14[184] = 0;
  v30 = v4;
  v31[0] = 0;
  LOBYTE(v32) = v5;
  BYTE1(v32) = v6;
  *(&v32 + 1) = KeyPath;
  v33 = 0;
  v34 = v4;
  v35[0] = 0;
  v37 = *&v15[128];
  *&v35[1] = *v15;
  v38 = v5;
  v39 = v6;
  v40 = KeyPath;
  v41 = 0;
  sub_25AF25FC4(&v30, v14, &qword_27FA23D70);
  sub_25AF2602C(&v34, &qword_27FA23D70);
  v8 = *&v31[128];
  *(a1 + 128) = *&v31[112];
  *(a1 + 144) = v8;
  *(a1 + 160) = v32;
  *(a1 + 176) = v33;
  v9 = *&v31[64];
  *(a1 + 64) = *&v31[48];
  *(a1 + 80) = v9;
  v10 = *&v31[96];
  *(a1 + 96) = *&v31[80];
  *(a1 + 112) = v10;
  v11 = *v31;
  *a1 = v30;
  *(a1 + 16) = v11;
  result = *&v31[16];
  v13 = *&v31[32];
  *(a1 + 32) = *&v31[16];
  *(a1 + 48) = v13;
  return result;
}

uint64_t sub_25AF1DCC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_25B005B34();
  sub_25B005B24();
  sub_25B005AE4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = *(a1 + 16);
  v36[0] = *a1;
  v36[1] = v4;
  v37 = *(a1 + 32);
  v5 = *(a1 + 33);
  v6 = *(a1 + 48);
  v7 = *(a1 + 49);
  KeyPath = swift_getKeyPath();
  sub_25AF25FC4(v36, v23, &qword_27FA23D78);
  sub_25AF31974();
  sub_25B0056B4();
  sub_25B0046D4();
  *&v19[7] = v33;
  *&v19[23] = v34;
  *&v19[39] = v35;
  v18 = 0;
  LOBYTE(v21) = *(a1 + 32);
  v9 = *(a1 + 16);
  v20[0] = *a1;
  v10 = v20[0];
  v20[1] = v9;
  BYTE1(v21) = v5;
  BYTE2(v21) = v6;
  BYTE3(v21) = v7;
  *(&v21 + 1) = KeyPath;
  v22[0] = 1;
  *&v22[48] = *(&v35 + 1);
  *&v22[33] = *&v19[32];
  *&v22[17] = *&v19[16];
  *&v22[1] = *v19;
  *&v17[37] = v21;
  *&v17[21] = v9;
  *&v17[5] = v20[0];
  *&v17[101] = *&v22[48];
  *&v17[85] = *&v22[32];
  *&v17[69] = *&v22[16];
  *&v17[53] = *v22;
  v16[104] = 0;
  *a2 = 0x3FF8000000000000;
  *(a2 + 8) = 0;
  *(a2 + 9) = 257;
  v11 = *&v17[48];
  *(a2 + 43) = *&v17[32];
  v12 = *v17;
  *(a2 + 27) = *&v17[16];
  *(a2 + 11) = v12;
  *(a2 + 104) = *&v17[93];
  v13 = *&v17[64];
  *(a2 + 91) = *&v17[80];
  *(a2 + 75) = v13;
  *(a2 + 59) = v11;
  *(a2 + 120) = 0x3FF8000000000000;
  *(a2 + 128) = 0;
  v14 = *(a1 + 16);
  v24 = *(a1 + 32);
  v23[0] = v10;
  v23[1] = v14;
  v25 = v5;
  v26 = v6;
  v27 = v7;
  v28 = KeyPath;
  v29 = 1;
  *&v32[15] = *&v19[47];
  *v32 = *&v19[32];
  v31 = *&v19[16];
  v30 = *v19;
  sub_25AF25FC4(v20, v16, &qword_27FA23D80);
  sub_25AF2602C(v23, &qword_27FA23D80);
}

uint64_t sub_25AF1DF54@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_25B004FF4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA23E68);
  v8 = v7 - 8;
  MEMORY[0x28223BE20](v7);
  v10 = v30 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA23E70);
  MEMORY[0x28223BE20](v11);
  v13 = v30 - v12;
  v14 = v1[1];
  v34 = *v1;
  v35 = v14;
  v36 = *(v1 + 8);
  v15 = v1[1];
  v32[0] = *v1;
  v32[1] = v15;
  v33 = *(v1 + 8);
  sub_25AF1E2A0(v10);
  sub_25B005014();
  (*(v4 + 104))(v6, *MEMORY[0x277CE0A10], v3);
  v16 = sub_25B005004();

  (*(v4 + 8))(v6, v3);
  KeyPath = swift_getKeyPath();
  v18 = &v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA23E78) + 36)];
  *v18 = KeyPath;
  v18[1] = v16;
  result = swift_getKeyPath();
  v20 = &v10[*(v8 + 44)];
  *v20 = result;
  *(v20 + 1) = 5;
  v20[16] = 0;
  v21 = qword_27FA30B10;
  if (v36 <= 0xFDu)
  {
    if (qword_27FA30B10)
    {
      v30[0] = v34;
      v30[1] = v35;
      v31 = v36;
      v23 = BYTE1(v36);
      sub_25AF25B74(&v34, v32);
      v24 = v21;
      v22 = sub_25AF730A0(v30, v23);

      sub_25AF25BAC(&v34);
      goto LABEL_6;
    }
  }

  else
  {
    if (qword_27FA30B10)
    {
      v22 = *(qword_27FA30B10 + OBJC_IVAR____TtC17NanoControlCenter11GlanceModel_editDoneButtonModel);

LABEL_6:
      v25 = BYTE2(v36);
      v26 = HIBYTE(v36);
      sub_25AF25B0C(v10, v13, &qword_27FA23E68);
      v27 = &v13[*(v11 + 36)];
      *v27 = v22;
      v27[8] = v25;
      v27[9] = v26;
      v28 = swift_getKeyPath();
      sub_25AF25B0C(v13, a1, &qword_27FA23E70);
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA23E80);
      v29 = a1 + *(result + 36);
      *v29 = v25;
      *(v29 + 8) = v28;
      *(v29 + 16) = 0;
      return result;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_25AF1E2A0@<X0>(uint64_t a1@<X8>)
{
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA23E88);
  MEMORY[0x28223BE20](v106);
  v108 = (v94 - v3);
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA23E90);
  MEMORY[0x28223BE20](v107);
  v101 = v94 - v4;
  v5 = sub_25B004BB4();
  MEMORY[0x28223BE20](v5 - 8);
  v102 = v94 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA23E98);
  MEMORY[0x28223BE20](v114);
  v109 = v94 - v7;
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA23EA0);
  MEMORY[0x28223BE20](v117);
  v119 = (v94 - v8);
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA23EA8);
  MEMORY[0x28223BE20](v112);
  v113 = v94 - v9;
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA23EB0);
  MEMORY[0x28223BE20](v118);
  v115 = v94 - v10;
  v104 = sub_25B0048E4();
  v103 = *(v104 - 8);
  MEMORY[0x28223BE20](v104);
  v12 = v94 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA23EB8);
  result = MEMORY[0x28223BE20](v111);
  v105 = v94 - v14;
  v15 = *v1;
  v16 = *(v1 + 8);
  v17 = *(v1 + 16);
  v18 = *(v1 + 24);
  LODWORD(v14) = *(v1 + 32);
  v19 = *(v1 + 33);
  v20 = &unk_27FA30000;
  v21 = qword_27FA30B10;
  v120 = v14;
  v116 = v17;
  LODWORD(v110) = v19;
  if (v14 > 0xFD)
  {
    if (qword_27FA30B10)
    {
      v27 = v18;
      v25 = *(qword_27FA30B10 + OBJC_IVAR____TtC17NanoControlCenter11GlanceModel_editDoneButtonModel);

      goto LABEL_6;
    }

LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  if (!qword_27FA30B10)
  {
    __break(1u);
    goto LABEL_38;
  }

  v22 = a1;
  *&v125 = v15;
  *(&v125 + 1) = v16;
  *&v126 = v17;
  *(&v126 + 1) = v18;
  v23 = v120;
  LOBYTE(v127) = v120;
  sub_25AF1D7EC(v15, v16, v17, v18, v120);
  v24 = v21;
  v25 = sub_25AF730A0(&v125, v19);

  v26 = v17;
  v27 = v18;
  sub_25AF231D0(v15, v16, v26, v18, v23);
  a1 = v22;
  v20 = &unk_27FA30000;
LABEL_6:
  v28 = *(v25 + 48);
  if (v28 <= 0xFD && (v29 = v28 >> 6) != 0)
  {
    if (v29 != 1)
    {

LABEL_33:
      *&v125 = 0xD000000000000013;
      *(&v125 + 1) = 0x800000025B016750;
      LOBYTE(v126) = 0;
      *(&v126 + 1) = MEMORY[0x277D84F90];
      sub_25B0048D4();
      v88 = v105;
      sub_25B005384();
      (v103)[1](v12, v104);
      KeyPath = swift_getKeyPath();
      v90 = v88 + *(v111 + 36);
      *v90 = KeyPath;
      *(v90 + 8) = 2;
      *(v90 + 16) = 0;
      sub_25AF25FC4(v88, v113, &qword_27FA23EB8);
      swift_storeEnumTagMultiPayload();
      sub_25AF25C70();
      sub_25AF25D58();
      v91 = v115;
      sub_25B004C74();
      sub_25AF25FC4(v91, v119, &qword_27FA23EB0);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA23EC0);
      sub_25AF25BE4();
      sub_25AF25E9C();
      sub_25B004C74();
      sub_25AF2602C(v91, &qword_27FA23EB0);
      return sub_25AF2602C(v88, &qword_27FA23EB8);
    }

    swift_getKeyPath();
    v100 = a1;
    *&v125 = v25;
    sub_25AF23F7C(&qword_27FA25270, type metadata accessor for GlanceButtonModel);
    sub_25B004234();

    v30 = OBJC_IVAR____TtC17NanoControlCenter17GlanceButtonModel__controlViewModel;
    swift_beginAccess();
    sub_25AF25FC4(v25 + v30, &v125, &qword_27FA25780);

    v31 = *(&v126 + 1);
    a1 = v100;
    result = sub_25AF2602C(&v125, &qword_27FA25780);
    if (!v31)
    {
      goto LABEL_33;
    }
  }

  else
  {
  }

  v32 = v20;
  v33 = v20[354];
  v34 = v120;
  if (v120 <= 0xFD)
  {
    if (v33)
    {
      v35 = v15;
      v36 = v27;
      *&v122 = v35;
      *(&v122 + 1) = v16;
      v37 = v116;
      *&v123 = v116;
      *(&v123 + 1) = v36;
      v124 = v120;
      sub_25AF1D7EC(v35, v16, v116, v36, v120);
      v38 = v33;
      v39 = sub_25AF730A0(&v122, v110);

      sub_25AF231D0(v35, v16, v37, v36, v34);
      goto LABEL_17;
    }

    goto LABEL_39;
  }

  if (!v33)
  {
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
    return result;
  }

  v35 = v15;
  v36 = v27;
  v39 = *&v33[OBJC_IVAR____TtC17NanoControlCenter11GlanceModel_editDoneButtonModel];

LABEL_17:
  swift_getKeyPath();
  v121 = v39;
  sub_25AF23F7C(&qword_27FA25270, type metadata accessor for GlanceButtonModel);
  sub_25B004234();

  v40 = OBJC_IVAR____TtC17NanoControlCenter17GlanceButtonModel__controlViewModel;
  swift_beginAccess();
  sub_25AF25FC4(v39 + v40, &v122, &qword_27FA25780);

  if (*(&v123 + 1))
  {
    sub_25AF25F40(&v122, &v125);
    __swift_project_boxed_opaque_existential_1(&v125, *(&v126 + 1));
    result = sub_25B004444();
    if (v41)
    {
      v100 = a1;
      if (v34 > 0xFD || (v34 & 0xC0) != 0x40)
      {
        goto LABEL_35;
      }

      v110 = v16;
      v105 = result;
      v104 = v41;
      v42 = v32[354];
      if (v42)
      {
        v43 = *(v42 + OBJC_IVAR____TtC17NanoControlCenter11GlanceModel_controlsModel);
        v44 = v110;
        *&v122 = v35;
        *(&v122 + 1) = v110;
        v45 = v116;
        *&v123 = v116;
        *(&v123 + 1) = v36;
        sub_25AF1D7EC(v35, v110, v116, v36, v34);
        v46 = v43;
        LOBYTE(v43) = sub_25AF13F3C(&v122);

        if (v43)
        {
          v99 = v36;
          v103 = v35;
          sub_25B004BA4();
          sub_25B004B94();
          sub_25B005464();
          sub_25B004B74();

          sub_25B004B94();
          sub_25B004BD4();
          if (qword_27FA23728 != -1)
          {
            swift_once();
          }

          v47 = qword_27FA30B00;
          v48 = qword_27FA30B00;
          v94[1] = v47;
          v49 = v48;
          v50 = sub_25B005094();
          v52 = v51;
          LOBYTE(v47) = v53;
          sub_25B005014();
          v54 = sub_25B005074();
          v56 = v55;
          v58 = v57;

          sub_25AF25F30(v50, v52, v47 & 1);

          sub_25B004FB4();
          v97 = sub_25B005054();
          v96 = v59;
          v95 = v60;
          v98 = v61;
          sub_25AF25F30(v54, v56, v58 & 1);

          sub_25B004BA4();
          sub_25B004B94();
          sub_25B004B84();

          sub_25B004B94();
          sub_25B004B64();
          sub_25B004B94();
          sub_25B004BD4();
          v62 = sub_25B005094();
          v64 = v63;
          v66 = v65;
          v68 = v67;
          v69 = v101;
          v70 = &v101[*(v107 + 36)];
          v71 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA23F00) + 28);
          v72 = *MEMORY[0x277CE0B30];
          v73 = sub_25B005064();
          (*(*(v73 - 8) + 104))(v70 + v71, v72, v73);
          *v70 = swift_getKeyPath();
          *v69 = v62;
          *(v69 + 8) = v64;
          *(v69 + 16) = v66 & 1;
          *(v69 + 24) = v68;
          sub_25AF25FC4(v69, v108, &qword_27FA23E90);
          swift_storeEnumTagMultiPayload();
          sub_25AF25DE4();
          v74 = v109;
          sub_25B004C74();
          sub_25AF25F30(v97, v96, v95 & 1);

          sub_25AF231D0(v103, v110, v116, v99, v120);
          sub_25AF2602C(v69, &qword_27FA23E90);
          goto LABEL_36;
        }

        sub_25AF231D0(v35, v44, v45, v36, v34);
        v41 = v104;
        result = v105;
LABEL_35:
        v92 = v108;
        *v108 = result;
        v92[1] = v41;
        *(v92 + 16) = 0;
        v92[3] = MEMORY[0x277D84F90];
        swift_storeEnumTagMultiPayload();
        sub_25AF25DE4();
        v74 = v109;
        sub_25B004C74();
LABEL_36:
        sub_25AF25FC4(v74, v113, &qword_27FA23E98);
        swift_storeEnumTagMultiPayload();
        sub_25AF25C70();
        sub_25AF25D58();
        v93 = v115;
        sub_25B004C74();
        sub_25AF25FC4(v93, v119, &qword_27FA23EB0);
        swift_storeEnumTagMultiPayload();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA23EC0);
        sub_25AF25BE4();
        sub_25AF25E9C();
        sub_25B004C74();
        sub_25AF2602C(v93, &qword_27FA23EB0);
        sub_25AF2602C(v74, &qword_27FA23E98);
        return __swift_destroy_boxed_opaque_existential_0Tm(&v125);
      }

      goto LABEL_41;
    }

    __swift_destroy_boxed_opaque_existential_0Tm(&v125);
    if (v34 > 0x3F)
    {
LABEL_31:
      v122 = 0u;
      v123 = 0u;
      v124 = 1;
      sub_25B004C74();
      v85 = v127;
      v86 = v126;
      v87 = v119;
      *v119 = v125;
      v87[1] = v86;
      *(v87 + 32) = v85;
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA23EC0);
      sub_25AF25BE4();
      sub_25AF25E9C();
      return sub_25B004C74();
    }
  }

  else
  {
    sub_25AF2602C(&v122, &qword_27FA25780);
    if (v34 > 0x3F)
    {
      goto LABEL_31;
    }
  }

  sub_25AFA7234(v35);
  sub_25B004BC4();
  if (qword_27FA23728 != -1)
  {
    swift_once();
  }

  v75 = qword_27FA30B00;
  v76 = sub_25B005094();
  v78 = v77;
  *&v122 = v76;
  *(&v122 + 1) = v77;
  v80 = v79 & 1;
  *&v123 = v79 & 1;
  *(&v123 + 1) = v81;
  v124 = 0;
  sub_25AF25F20(v76, v77, v79 & 1);

  sub_25B004C74();
  v82 = v127;
  v83 = v126;
  v84 = v119;
  *v119 = v125;
  v84[1] = v83;
  *(v84 + 32) = v82;
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA23EC0);
  sub_25AF25BE4();
  sub_25AF25E9C();
  sub_25B004C74();
  sub_25AF25F30(v76, v78, v80);
}

id sub_25AF1F450@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  *a1 = *v1;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  v6 = *(v1 + 32);
  *(a1 + 32) = v6;
  return sub_25AF1D7EC(v2, v3, v4, v5, v6);
}

void sub_25AF1F474(void *a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 33);
  v8 = *(v1 + 34);
  v23 = *(v1 + 40);
  v25 = v8;
  if (v6 <= 0xFD)
  {
    sub_25AF1D7EC(v2, v3, v4, v5, v6);
    sub_25AF1D7EC(v2, v3, v4, v5, v6);
    v11 = qword_27FA30B10;
    if (!qword_27FA30B10)
    {
LABEL_28:
      __break(1u);
      goto LABEL_29;
    }

    *&v35 = v2;
    *(&v35 + 1) = v3;
    *&v36 = v4;
    *(&v36 + 1) = v5;
    LOBYTE(v37) = v6;
    sub_25AF1D7EC(v2, v3, v4, v5, v6);
    sub_25AF1D7EC(v2, v3, v4, v5, v6);
    sub_25AF1D7EC(v2, v3, v4, v5, v6);
    sub_25AF1D7EC(v2, v3, v4, v5, v6);
    v12 = v11;
    v9 = sub_25AF730A0(&v35, v7 ^ 1u);

    sub_25AF231D0(v2, v3, v4, v5, v6);
    if (!qword_27FA30B10)
    {
LABEL_29:
      __break(1u);
      goto LABEL_30;
    }

    *&v35 = v2;
    *(&v35 + 1) = v3;
    *&v36 = v4;
    *(&v36 + 1) = v5;
    LOBYTE(v37) = v6;
    v13 = qword_27FA30B10;
    v10 = sub_25AF730A0(&v35, v7 ^ 1u);

    sub_25AF231D0(v2, v3, v4, v5, v6);
    v8 = v25;
  }

  else
  {
    if (!qword_27FA30B10)
    {
LABEL_27:
      __break(1u);
      goto LABEL_28;
    }

    v9 = *(qword_27FA30B10 + OBJC_IVAR____TtC17NanoControlCenter11GlanceModel_editDoneButtonModel);
    swift_retain_n();
    v10 = v9;
  }

  KeyPath = swift_getKeyPath();
  LOBYTE(__src[0]) = 0;
  *&v124 = v2;
  *(&v124 + 1) = v3;
  *&v125 = v4;
  *(&v125 + 1) = v5;
  LOBYTE(v126) = v6;
  *(&v126 + 1) = v9;
  LOBYTE(v127) = v7;
  BYTE1(v127) = v8;
  *(&v127 + 1) = v10;
  LOBYTE(v128) = 2;
  *(&v128 + 1) = KeyPath;
  v129 = 0;
  v130[0] = v2;
  v130[1] = v3;
  v130[2] = v4;
  v130[3] = v5;
  v131 = v6;
  v132 = v9;
  v133 = v7;
  v134 = v8;
  v135 = v10;
  v136 = 2;
  v137 = KeyPath;
  v138 = 0;
  sub_25AF25FC4(&v124, &v35, &qword_27FA23D88);
  sub_25AF2602C(v130, &qword_27FA23D88);
  if (v6 <= 0xFD)
  {
    if (!qword_27FA30B10)
    {
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }

    *&v35 = v2;
    *(&v35 + 1) = v3;
    *&v36 = v4;
    *(&v36 + 1) = v5;
    LOBYTE(v37) = v6;
    v16 = qword_27FA30B10;
    v15 = sub_25AF730A0(&v35, v7 ^ 1u);

    sub_25AF231D0(v2, v3, v4, v5, v6);
  }

  else
  {
    if (!qword_27FA30B10)
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v15 = *(qword_27FA30B10 + OBJC_IVAR____TtC17NanoControlCenter11GlanceModel_editDoneButtonModel);
  }

  v17 = swift_getKeyPath();
  LOBYTE(__src[5]) = v129;
  __src[3] = v127;
  __src[4] = v128;
  __src[1] = v125;
  __src[2] = v126;
  __src[0] = v124;
  LOBYTE(v26[0]) = 0;
  v112 = v126;
  v113 = v127;
  v114 = v128;
  v110 = v124;
  v111 = v125;
  *&v115 = *&__src[5];
  *(&v115 + 1) = v15;
  LOBYTE(v116) = 2;
  *(&v116 + 1) = v17;
  v117 = 0;
  v118[1] = v125;
  v118[0] = v124;
  v118[4] = v128;
  v118[3] = v127;
  v118[2] = v126;
  v119 = *&__src[5];
  v120 = v15;
  v121 = 2;
  v122 = v17;
  v123 = 0;
  sub_25AF25FC4(&v110, &v35, &qword_27FA23D90);
  sub_25AF2602C(v118, &qword_27FA23D90);
  if (v6 <= 0xFD)
  {
    if (!qword_27FA30B10)
    {
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

    *&v35 = v2;
    *(&v35 + 1) = v3;
    *&v36 = v4;
    *(&v36 + 1) = v5;
    LOBYTE(v37) = v6;
    v19 = qword_27FA30B10;
    v18 = sub_25AF730A0(&v35, v7 ^ 1u);

    sub_25AF231D0(v2, v3, v4, v5, v6);
  }

  else
  {
    if (!qword_27FA30B10)
    {
LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

    v18 = *(qword_27FA30B10 + OBJC_IVAR____TtC17NanoControlCenter11GlanceModel_editDoneButtonModel);
  }

  v20 = swift_getKeyPath();
  __src[4] = v114;
  __src[5] = v115;
  __src[6] = v116;
  LOBYTE(__src[7]) = v117;
  __src[0] = v110;
  __src[1] = v111;
  __src[2] = v112;
  __src[3] = v113;
  LOBYTE(v26[0]) = 0;
  v101 = v114;
  v102 = v115;
  v103 = v116;
  v100 = v113;
  v99 = v112;
  v98 = v111;
  v97 = v110;
  *v104 = *&__src[7];
  *&v104[8] = v18;
  *&v104[16] = v20;
  v104[24] = 0;
  v105[3] = v113;
  v105[2] = v112;
  v105[1] = v111;
  v105[0] = v110;
  v105[6] = v116;
  v105[5] = v115;
  v105[4] = v114;
  v106 = *&__src[7];
  v107 = v18;
  v108 = v20;
  v109 = 0;
  sub_25AF25FC4(&v97, &v35, &qword_27FA23D98);
  sub_25AF2602C(v105, &qword_27FA23D98);
  if (v6 > 0xFD)
  {
    if (!qword_27FA30B10)
    {
LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

    v41 = v103;
    *v42 = *v104;
    *&v42[9] = *&v104[9];
    v37 = v99;
    v38 = v100;
    v39 = v101;
    v40 = v102;
    v35 = v97;
    v36 = v98;
    sub_25AF24898(&v35);
    __src[10] = v44;
    __src[11] = v45;
    LOWORD(__src[12]) = v46;
    __src[6] = v41;
    __src[7] = *v42;
    __src[8] = *&v42[16];
    __src[9] = v43;
    __src[2] = v37;
    __src[3] = v38;
    __src[4] = v39;
    __src[5] = v40;
    __src[0] = v35;
    __src[1] = v36;
    sub_25AF25FC4(&v97, v26, &qword_27FA23D98);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA23DA0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA23D98);
    sub_25AF248A4();
    sub_25AF24930();
    sub_25B004C74();

    sub_25AF2602C(&v97, &qword_27FA23D98);
    goto LABEL_22;
  }

  if (qword_27FA30B10)
  {
    *&v35 = v2;
    *(&v35 + 1) = v3;
    *&v36 = v4;
    *(&v36 + 1) = v5;
    LOBYTE(v37) = v6;
    v21 = qword_27FA30B10;
    v22 = sub_25AF730A0(&v35, v7 ^ 1u);

    sub_25AF231D0(v2, v3, v4, v5, v6);
    *(&__src[7] + 9) = *&v104[9];
    __src[6] = v103;
    __src[7] = *v104;
    __src[2] = v99;
    __src[3] = v100;
    __src[4] = v101;
    __src[5] = v102;
    __src[0] = v97;
    __src[1] = v98;
    v73 = v99;
    v74 = v100;
    v76 = v102;
    v75 = v101;
    v72 = v98;
    v71 = v97;
    v77 = v103;
    v78 = *v104;
    v79 = __src[8];
    *&v80 = v2;
    *(&v80 + 1) = v3;
    *&v81 = v4;
    *(&v81 + 1) = v5;
    LOBYTE(v82) = v6;
    *(&v82 + 1) = v22;
    LOBYTE(v83) = v7;
    v26[2] = v99;
    v26[3] = v100;
    v26[0] = v97;
    v26[1] = v98;
    v26[7] = *v104;
    v26[8] = __src[8];
    v26[4] = v101;
    v26[5] = v102;
    v26[6] = v103;
    v27 = v2;
    v28 = v3;
    v29 = v4;
    v30 = v5;
    v31 = v6;
    v32 = v22;
    v33 = v7;
    sub_25AF1D7EC(v2, v3, v4, v5, v6);
    sub_25AF1D7EC(v2, v3, v4, v5, v6);
    sub_25AF25FC4(&v97, &v35, &qword_27FA23D98);

    sub_25AF25FC4(&v71, &v35, &qword_27FA23DA0);
    sub_25AF2602C(v26, &qword_27FA23DA0);
    v44 = v81;
    v45 = v82;
    LOBYTE(v46) = v83;
    v41 = v77;
    *v42 = v78;
    *&v42[16] = v79;
    v43 = v80;
    v37 = v73;
    v38 = v74;
    v39 = v75;
    v40 = v76;
    v35 = v71;
    v36 = v72;
    sub_25AF24BFC(&v35);
    __src[10] = v44;
    __src[11] = v45;
    LOWORD(__src[12]) = v46;
    __src[6] = v41;
    __src[7] = *v42;
    __src[8] = *&v42[16];
    __src[9] = v43;
    __src[2] = v37;
    __src[3] = v38;
    __src[4] = v39;
    __src[5] = v40;
    __src[0] = v35;
    __src[1] = v36;
    sub_25AF25FC4(&v71, &v58, &qword_27FA23DA0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA23DA0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA23D98);
    sub_25AF248A4();
    sub_25AF24930();
    sub_25B004C74();

    sub_25AF2602C(&v97, &qword_27FA23D98);
    sub_25AF2602C(&v71, &qword_27FA23DA0);
    sub_25AF231D0(v2, v3, v4, v5, v6);
LABEL_22:
    v68 = v94;
    v69 = v95;
    v64 = v90;
    v65 = v91;
    v67 = v93;
    v66 = v92;
    v60 = v86;
    v61 = v87;
    v63 = v89;
    v62 = v88;
    v59 = v85;
    v58 = v84;
    v81 = v94;
    v82 = v95;
    v77 = v90;
    v78 = v91;
    v80 = v93;
    v79 = v92;
    v73 = v86;
    v74 = v87;
    v76 = v89;
    v75 = v88;
    v70 = v96;
    v83 = v96;
    v72 = v85;
    v71 = v84;
    sub_25AF25FC4(&v58, &v35, &qword_27FA23DF0);
    sub_25AF2602C(&v71, &qword_27FA23DF0);
    if (qword_27FA30B10)
    {
      swift_beginAccess();

      sub_25AF31974();

      if (qword_27FA30B10)
      {
        swift_beginAccess();
        sub_25B0056B4();
        sub_25B0046D4();
        v149 = v68;
        v150 = v69;
        LOWORD(v151) = v70;
        v145 = v64;
        v146 = v65;
        v148 = v67;
        v147 = v66;
        v141 = v60;
        v142 = v61;
        v144 = v63;
        v143 = v62;
        v140 = v59;
        v139 = v58;
        __src[12] = v151;
        __src[13] = v152;
        __src[14] = v153;
        __src[8] = v66;
        __src[9] = v67;
        __src[10] = v68;
        __src[11] = v69;
        __src[4] = v62;
        __src[5] = v63;
        __src[6] = v64;
        __src[7] = v65;
        __src[0] = v58;
        __src[1] = v59;
        __src[2] = v60;
        __src[3] = v61;
        v46 = v151;
        v47 = v152;
        v48 = v153;
        *&v42[16] = v66;
        v43 = v67;
        v44 = v68;
        v45 = v69;
        v39 = v62;
        v40 = v63;
        v41 = v64;
        *v42 = v65;
        v35 = v58;
        v36 = v59;
        *&__src[15] = v154;
        *(&__src[15] + 1) = v2;
        *&__src[16] = v3;
        *(&__src[16] + 1) = v4;
        *&__src[17] = v5;
        BYTE8(__src[17]) = v6;
        *&__src[18] = v23;
        BYTE8(__src[18]) = v25;
        BYTE9(__src[18]) = v7;
        v37 = v60;
        v38 = v61;
        v49 = v154;
        v50 = v2;
        v51 = v3;
        v52 = v4;
        v53 = v5;
        v54 = v6;
        v55 = v23;
        v56 = v25;
        v57 = v7;
        sub_25AF1D7EC(v2, v3, v4, v5, v6);
        sub_25AF25FC4(__src, v26, &qword_27FA23DF8);
        sub_25AF2602C(&v35, &qword_27FA23DF8);
        memcpy(a1, __src, 0x12AuLL);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_27;
  }

LABEL_35:
  __break(1u);
}

uint64_t sub_25AF20148(uint64_t a1, uint64_t a2, __int16 a3)
{
  v3 = a3;
  v5 = HIBYTE(a3);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA23FB8);
  MEMORY[0x28223BE20](v6);
  v8 = v25 - v7;
  KeyPath = swift_getKeyPath();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA23FC0);
  (*(*(v10 - 8) + 16))(v8, a1, v10);
  v11 = &v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA23FC8) + 36)];
  *v11 = KeyPath;
  *(v11 + 1) = 5;
  v11[16] = 0;
  v12 = swift_getKeyPath();
  v13 = &v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA23FD0) + 36)];
  *v13 = v12;
  v13[1] = 0x3FE3333333333333;
  sub_25AF255CC(v3 & 1);
  v14 = &v8[*(v6 + 36)];
  *v14 = 0;
  v14[8] = v15 & 1;
  sub_25AF25740(v3 & 1, v5);
  v17 = v16;
  v18 = swift_allocObject();
  *(v18 + 16) = (v17 & 1) == 0;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA23FD8);
  v20 = sub_25AF2690C();
  v21 = sub_25B004954();
  v22 = sub_25AF23F7C(&qword_27FA24020, MEMORY[0x277CDFCB0]);
  v25[0] = v21;
  v25[1] = v22;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  MEMORY[0x25F85CF70](sub_25AF26904, v18, v6, v19, v20, OpaqueTypeConformance2);

  return sub_25AF2602C(v8, &qword_27FA23FB8);
}

uint64_t sub_25AF203D0()
{
  sub_25B004954();
  sub_25AF23F7C(&qword_27FA24020, MEMORY[0x277CDFCB0]);
  return sub_25B0046B4();
}

void sub_25AF2047C()
{
  v1 = *(v0 + 32);
  v2 = qword_27FA30B10;
  if (v1 <= 0xFD)
  {
    if (qword_27FA30B10)
    {
      v5 = *(v0 + 8);
      v6 = *(v0 + 16);
      v7 = *(v0 + 24);
      v10[0] = *v0;
      v4 = v10[0];
      v10[1] = v5;
      v10[2] = v6;
      v10[3] = v7;
      v11 = v1;
      v8 = *(v0 + *(type metadata accessor for LabelOpacityEffect(0) + 20));
      sub_25AF1D7EC(v10[0], v5, v6, v7, v1);
      v9 = v2;
      v3 = sub_25AF730A0(v10, (v8 & 1) == 0);

      sub_25AF231D0(v4, v5, v6, v7, v1);
      goto LABEL_6;
    }
  }

  else
  {
    if (qword_27FA30B10)
    {
      v3 = *(qword_27FA30B10 + OBJC_IVAR____TtC17NanoControlCenter11GlanceModel_editDoneButtonModel);

LABEL_6:
      swift_getKeyPath();
      v10[0] = v3;
      sub_25AF23F7C(&qword_27FA25270, type metadata accessor for GlanceButtonModel);
      sub_25B004234();

      return;
    }

    __break(1u);
  }

  __break(1u);
}

void sub_25AF205EC()
{
  v1 = *(v0 + 32);
  if (v1 <= 0xFD)
  {
    if (qword_27FA30B10)
    {
      v3 = *v0;
      v2 = *(v0 + 8);
      v4 = *(v0 + 16);
      v11 = *(v0 + 24);
      v5 = *(qword_27FA30B10 + OBJC_IVAR____TtC17NanoControlCenter11GlanceModel_editingModel);
      swift_getKeyPath();
      v17 = v5;
      sub_25AF23F7C(&qword_27FA23D60, type metadata accessor for EditingModel);

      sub_25B004234();

      v6 = *(v5 + 24);
      v7 = *(v5 + 32);
      v8 = *(v5 + 40);
      v9 = *(v5 + 48);
      v10 = *(v5 + 56);
      sub_25AF1D7EC(v6, v7, v8, v9, *(v5 + 56));

      if (v10 <= 0xFD)
      {
        v17 = v3;
        v18 = v2;
        v19 = v4;
        v20 = v11;
        v21 = v1;
        v12 = v6;
        v13 = v7;
        v14 = v8;
        v15 = v9;
        v16 = v10;
        sub_25AF1D7EC(v3, v2, v4, v11, v1);
        sub_25AF1D7EC(v3, v2, v4, v11, v1);
        sub_25AF181DC(v3, v2, v4, v11, v1);
        sub_25AFD33F0(&v17, &v12);
        sub_25AF18128(v12, v13, v14, v15, v16);
        sub_25AF18128(v17, v18, v19, v20, v21);
        sub_25AF18128(v3, v2, v4, v11, v1);
        sub_25AF231D0(v3, v2, v4, v11, v1);
      }

      else
      {
        sub_25AF1D7EC(v3, v2, v4, v11, v1);
        sub_25AF1D7EC(v3, v2, v4, v11, v1);
        sub_25AF18128(v3, v2, v4, v11, v1);
        sub_25AF231D0(v3, v2, v4, v11, v1);
        sub_25AF231D0(v6, v7, v8, v9, v10);
      }
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_25AF20860(uint64_t a1)
{
  v3 = type metadata accessor for LabelOpacityEffect(0);
  v4 = v3 - 8;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA23D38);
  MEMORY[0x28223BE20](v7);
  v9 = &v18[-v8];
  v10 = 1.0;
  if (*(v1 + *(v4 + 28)) == 1)
  {
    sub_25AF205EC();
    v10 = 0.0;
    if ((v11 & 1) == 0)
    {
      sub_25AF2047C();
      if (v12)
      {
        v10 = 0.0;
      }

      else
      {
        v10 = 1.0;
      }
    }
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA23D40);
  (*(*(v13 - 8) + 16))(v9, a1, v13);
  *&v9[*(v7 + 36)] = v10;
  sub_25AF205EC();
  v18[15] = v14 & 1;
  sub_25AF24204(v1, &v18[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for LabelOpacityEffect);
  v15 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v16 = swift_allocObject();
  sub_25AF24378(&v18[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], v16 + v15);
  sub_25AF2443C();
  sub_25B005374();

  return sub_25AF2602C(v9, &qword_27FA23D38);
}

uint64_t sub_25AF20AC4(uint64_t a1)
{
  sub_25B005B34();
  sub_25B005B24();
  sub_25B005AE4();
  result = swift_task_isCurrentExecutor();
  if ((result & 1) == 0)
  {
    result = swift_task_reportUnexpectedExecutor();
  }

  v3 = *(a1 + 32);
  v4 = qword_27FA30B10;
  if (v3 > 0xFD)
  {
    if (qword_27FA30B10)
    {
      v5 = *(qword_27FA30B10 + OBJC_IVAR____TtC17NanoControlCenter11GlanceModel_editDoneButtonModel);

      goto LABEL_8;
    }

    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  if (!qword_27FA30B10)
  {
    goto LABEL_14;
  }

  v7 = *(a1 + 8);
  v8 = *(a1 + 16);
  v9 = *(a1 + 24);
  v15[0] = *a1;
  v6 = v15[0];
  v15[1] = v7;
  v15[2] = v8;
  v15[3] = v9;
  v16 = v3;
  v10 = *(a1 + *(type metadata accessor for LabelOpacityEffect(0) + 20));
  sub_25AF1D7EC(v15[0], v7, v8, v9, v3);
  v11 = v4;
  v5 = sub_25AF730A0(v15, (v10 & 1) == 0);

  sub_25AF231D0(v6, v7, v8, v9, v3);
LABEL_8:
  v12 = *(v5 + OBJC_IVAR____TtC17NanoControlCenter17GlanceButtonModel_visualsModel);

  sub_25AF205EC();
  if ((v13 & 1) == v12[202])
  {
    v12[202] = v13 & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    v15[0] = v12;
    sub_25AF23F7C(&qword_27FA23D58, type metadata accessor for ControlCenterStyle.VisualsModel);
    sub_25B004224();
  }
}
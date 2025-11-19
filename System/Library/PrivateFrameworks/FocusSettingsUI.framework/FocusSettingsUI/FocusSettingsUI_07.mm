uint64_t sub_24B981674(uint64_t result, uint64_t a2)
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
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  while (v7)
  {
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_14:
    v13 = *(*(v3 + 48) + (v10 | (v4 << 6)));
    sub_24BAAA7FC();
    MEMORY[0x24C2508C0](v13);
    result = sub_24BAAA84C();
    v14 = -1 << *(a2 + 32);
    v15 = result & ~v14;
    if (((*(v9 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
    {
      return 0;
    }

    v16 = ~v14;
    while (*(*(a2 + 48) + v15) != v13)
    {
      v15 = (v15 + 1) & v16;
      if (((*(v9 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
      {
        return 0;
      }
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v12 = *(v3 + 56 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v7 = (v12 - 1) & v12;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_24B9817E4(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v3 = a2 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    if (a1 < 0)
    {
      a2 = a1;
    }

    else
    {
      a2 = a1 & 0xFFFFFFFFFFFFFF8;
    }

    if (v3)
    {
      if (v2 < 0)
      {
        a1 = v2;
      }

      else
      {
        a1 = v2 & 0xFFFFFFFFFFFFFF8;
      }

      return MEMORY[0x2821FCF40](a1, a2);
    }

    v6 = a2;
    v5 = v2;
  }

  else
  {
    if (!v3)
    {
      if (a1 == a2)
      {
        return 1;
      }

      if (*(a1 + 16) == *(a2 + 16))
      {
        v8 = 0;
        v9 = a1 + 56;
        v10 = 1 << *(a1 + 32);
        if (v10 < 64)
        {
          v11 = ~(-1 << v10);
        }

        else
        {
          v11 = -1;
        }

        v12 = v11 & *(a1 + 56);
        v13 = (v10 + 63) >> 6;
        v14 = a2 + 56;
        v24 = a1;
        if (!v12)
        {
LABEL_27:
          v16 = v8;
          while (1)
          {
            v8 = v16 + 1;
            if (__OFADD__(v16, 1))
            {
              break;
            }

            if (v8 >= v13)
            {
              return 1;
            }

            v17 = *(v9 + 8 * v8);
            ++v16;
            if (v17)
            {
              v15 = __clz(__rbit64(v17));
              v25 = (v17 - 1) & v17;
              goto LABEL_32;
            }
          }

          __break(1u);
          return MEMORY[0x2821FCF40](a1, a2);
        }

        while (1)
        {
          v15 = __clz(__rbit64(v12));
          v25 = (v12 - 1) & v12;
LABEL_32:
          v18 = *(*(a1 + 48) + 8 * (v15 | (v8 << 6)));
          sub_24BAAA7FC();
          v19 = sub_24BAAA84C();
          v20 = -1 << *(v2 + 32);
          v21 = v19 & ~v20;
          v22 = *(v14 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8));

          if (((v22 >> v21) & 1) == 0)
          {
            break;
          }

          v23 = ~v20;
          while (![*(*(*(v2 + 48) + 8 * v21) + 16) isEqual_])
          {
            v21 = (v21 + 1) & v23;
            if (((*(v14 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
            {
              goto LABEL_40;
            }
          }

          a1 = v24;
          v12 = v25;
          if (!v25)
          {
            goto LABEL_27;
          }
        }

LABEL_40:
      }

      return 0;
    }

    v4 = a2 & 0xFFFFFFFFFFFFFF8;
    if (a2 < 0)
    {
      v4 = a2;
    }

    v5 = a1;
    v6 = v4;
  }

  return sub_24B999D6C(v6, v5);
}

void sub_24B981A38(uint64_t a1, uint64_t a2)
{
  v3 = a2 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    if (a1 < 0)
    {
      v4 = a1;
    }

    else
    {
      v4 = a1 & 0xFFFFFFFFFFFFFF8;
    }

    if (v3)
    {
      if (a2 < 0)
      {
        v5 = a2;
      }

      else
      {
        v5 = a2 & 0xFFFFFFFFFFFFFF8;
      }

LABEL_43:
      MEMORY[0x2821FCF40](v5, v4);
      return;
    }

    v8 = v4;
    v7 = a2;
    goto LABEL_17;
  }

  if (v3)
  {
    v6 = a2 & 0xFFFFFFFFFFFFFF8;
    if (a2 < 0)
    {
      v6 = a2;
    }

    v7 = a1;
    v8 = v6;
LABEL_17:

    sub_24B999E70(v8, v7);
    return;
  }

  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v9 = a1 + 56;
    v10 = 1 << *(a1 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(a1 + 56);
    v5 = sub_24B8F37E8(0, &qword_27F0631A0);
    v13 = 0;
    v14 = (v10 + 63) >> 6;
    v15 = a2 + 56;
    v27 = v14;
    v16 = a1;
    if (!v12)
    {
LABEL_27:
      v18 = v13;
      while (1)
      {
        v13 = v18 + 1;
        if (__OFADD__(v18, 1))
        {
          break;
        }

        if (v13 >= v14)
        {
          return;
        }

        v19 = *(v9 + 8 * v13);
        ++v18;
        if (v19)
        {
          v17 = __clz(__rbit64(v19));
          v28 = (v19 - 1) & v19;
          goto LABEL_32;
        }
      }

      __break(1u);
      goto LABEL_43;
    }

    while (1)
    {
      v17 = __clz(__rbit64(v12));
      v28 = (v12 - 1) & v12;
LABEL_32:
      v20 = *(*(v16 + 48) + 8 * (v17 | (v13 << 6)));
      v21 = sub_24BAAA3BC();
      v22 = -1 << *(a2 + 32);
      v23 = v21 & ~v22;
      if (((*(v15 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23) & 1) == 0)
      {
        break;
      }

      v24 = ~v22;
      while (1)
      {
        v25 = *(*(a2 + 48) + 8 * v23);
        v26 = sub_24BAAA3CC();

        if (v26)
        {
          break;
        }

        v23 = (v23 + 1) & v24;
        if (((*(v15 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23) & 1) == 0)
        {
          goto LABEL_40;
        }
      }

      v14 = v27;
      v12 = v28;
      v16 = a1;
      if (!v28)
      {
        goto LABEL_27;
      }
    }

LABEL_40:
  }
}

uint64_t sub_24B981CBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_24B9A2EA4();

  return MEMORY[0x282130D40](a1, a2, a3, a4, v8);
}

uint64_t ActivityConfigurationContext.hashValue.getter()
{
  v1 = *v0;
  sub_24BAAA7FC();
  MEMORY[0x24C2508C0](v1);
  return sub_24BAAA84C();
}

uint64_t sub_24B981DB4()
{
  sub_24B9A2E30();

  return sub_24BAA8A0C();
}

uint64_t (*sub_24B981DFC())()
{
  sub_24B9A2DD4();
  sub_24BAA8A0C();
  if (!v2)
  {
    return 0;
  }

  v0 = swift_allocObject();
  *(v0 + 16) = v2;
  *(v0 + 24) = v3;
  return sub_24B9A2FB8;
}

uint64_t View.activityConfigurationContext(_:)()
{
  swift_getKeyPath();
  sub_24BAA946C();
}

uint64_t sub_24B981EF8@<X0>(_BYTE *a1@<X8>)
{
  sub_24B9A2E30();
  result = sub_24BAA8A0C();
  *a1 = v3;
  return result;
}

uint64_t sub_24B981F48@<X0>(_BYTE *a1@<X8>)
{
  sub_24B9A2E30();
  result = sub_24BAA8A0C();
  *a1 = v3;
  return result;
}

uint64_t View.onDeleteActivity(_:)(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;

  sub_24BAA946C();
}

double sub_24B9820F0@<D0>(_OWORD *a1@<X8>)
{
  sub_24B9A2DD4();
  sub_24BAA8A0C();
  result = *&v3;
  *a1 = v3;
  return result;
}

double sub_24B982140@<D0>(_OWORD *a1@<X8>)
{
  sub_24B9A2DD4();
  sub_24BAA8A0C();
  result = *&v3;
  *a1 = v3;
  return result;
}

uint64_t sub_24B982190(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = swift_allocObject();
    *(v4 + 16) = sub_24B9A2E28;
    *(v4 + 24) = v3;
  }

  sub_24B9A1C7C(v1);
  sub_24B9A2DD4();
  return sub_24BAA8A1C();
}

uint64_t sub_24B982258()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

unint64_t sub_24B9822BC()
{
  result = qword_27F066830;
  if (!qword_27F066830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F066830);
  }

  return result;
}

uint64_t sub_24B982320(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0646E8);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v26 - v7;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24BAA81BC();

  if (v26 == a1 && v27 == a2)
  {
  }

  v10 = sub_24BAAA78C();

  if ((v10 & 1) == 0)
  {
    *(v3 + 24) = 0;

    *(v3 + 32) = 2;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_24BAA81BC();

    v11 = v26;
    v12 = v27;
    type metadata accessor for ActivityConfigViewModel.FocusConfigurationActionActor();
    v13 = swift_allocObject();
    swift_defaultActor_initialize();
    v13[16] = [objc_allocWithZone(MEMORY[0x277D23C38]) init];
    v14 = sub_24BAA9FDC();
    v15 = objc_opt_self();
    v16 = [v15 serviceForClientIdentifier_];

    v13[17] = v16;
    v13[14] = v11;
    v13[15] = v12;
    *(v3 + OBJC_IVAR____TtC15FocusSettingsUI23ActivityConfigViewModel_focusConfigurationActionActor) = v13;

    swift_getKeyPath();
    swift_getKeyPath();
    sub_24BAA81BC();

    v17 = v26;
    v18 = v27;
    type metadata accessor for ActivityConfigViewModel.FocusSystemConfigurationActionActor();
    v19 = swift_allocObject();
    swift_defaultActor_initialize();
    v19[16] = [objc_allocWithZone(MEMORY[0x277D79EA0]) initWithSurface_];
    v20 = sub_24BAA9FDC();
    v21 = [v15 serviceForClientIdentifier_];

    v19[17] = v21;
    v19[14] = v17;
    v19[15] = v18;
    *(v3 + OBJC_IVAR____TtC15FocusSettingsUI23ActivityConfigViewModel_focusSystemConfigurationActionActor) = v19;

    v22 = sub_24BAAA1DC();
    (*(*(v22 - 8) + 56))(v8, 1, 1, v22);
    sub_24BAAA1BC();

    v23 = sub_24BAAA1AC();
    v24 = swift_allocObject();
    v25 = MEMORY[0x277D85700];
    v24[2] = v23;
    v24[3] = v25;
    v24[4] = v3;
    sub_24B981384(0, 0, v8, &unk_24BAB4E60, v24);
  }

  return result;
}

uint64_t sub_24B9826BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v4[3] = sub_24BAAA1BC();
  v4[4] = sub_24BAAA1AC();
  v5 = swift_task_alloc();
  v4[5] = v5;
  *v5 = v4;
  v5[1] = sub_24B98276C;

  return sub_24B984BF0();
}

uint64_t sub_24B98276C()
{
  v1 = *v0;
  v2 = *v0;

  v3 = swift_task_alloc();
  *(v1 + 48) = v3;
  *v3 = v2;
  v3[1] = sub_24B9828AC;

  return sub_24B98D350();
}

uint64_t sub_24B9828AC()
{

  v1 = sub_24BAAA17C();

  return MEMORY[0x2822009F8](sub_24B9829E8, v1, v0);
}

uint64_t sub_24B9829E8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24B982A48()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24BAA81BC();

  return v1;
}

uint64_t sub_24B982ABC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v64 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0646E8);
  MEMORY[0x28223BE20](v5 - 8);
  v65 = &v63 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F066B38);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v63 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F066B30);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v63 - v13;
  *(v3 + 16) = [objc_opt_self() sharedInstance];
  *(v3 + 24) = 0;
  *(v3 + 32) = 2;
  *(v3 + 40) = [objc_allocWithZone(type metadata accessor for ActivityConfigViewModel.FocusAssertionListener()) init];
  *(v3 + 48) = [objc_allocWithZone(MEMORY[0x277CEB8B0]) init];
  v15 = v3 + OBJC_IVAR____TtC15FocusSettingsUI23ActivityConfigViewModel_meDevice;
  *v15 = 0;
  *(v15 + 8) = 0;
  *(v15 + 16) = 0;
  v16 = OBJC_IVAR____TtC15FocusSettingsUI23ActivityConfigViewModel__focusConfigurationActions;
  v17 = MEMORY[0x277D84F90];
  v68 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0668B0);
  sub_24BAA817C();
  (*(v12 + 32))(v3 + v16, v14, v11);
  v18 = OBJC_IVAR____TtC15FocusSettingsUI23ActivityConfigViewModel__focusSystemConfigurationActions;
  v68 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0668C0);
  sub_24BAA817C();
  (*(v8 + 32))(v3 + v18, v10, v7);
  *(v3 + OBJC_IVAR____TtC15FocusSettingsUI23ActivityConfigViewModel_sortedPeopleWithExceptions) = v17;
  if (v17 >> 62)
  {
    v61 = MEMORY[0x277D84F90];
    if (sub_24BAAA52C())
    {
      sub_24B8F1EEC(MEMORY[0x277D84F90]);
    }

    else
    {
      v62 = MEMORY[0x277D84FA0];
    }

    v20 = &off_279018000;
    *(v3 + OBJC_IVAR____TtC15FocusSettingsUI23ActivityConfigViewModel__peopleWithExceptions) = v62;
    *(v3 + OBJC_IVAR____TtC15FocusSettingsUI23ActivityConfigViewModel_sortedAppsWithExceptions) = v61;
    if (sub_24BAAA52C())
    {
      v19 = sub_24B8F2E1C(MEMORY[0x277D84F90]);
    }

    else
    {
      v19 = MEMORY[0x277D84FA0];
    }
  }

  else
  {
    v19 = MEMORY[0x277D84FA0];
    *(v3 + OBJC_IVAR____TtC15FocusSettingsUI23ActivityConfigViewModel__peopleWithExceptions) = MEMORY[0x277D84FA0];
    *(v3 + OBJC_IVAR____TtC15FocusSettingsUI23ActivityConfigViewModel_sortedAppsWithExceptions) = v17;
    v20 = &off_279018000;
  }

  *(v3 + OBJC_IVAR____TtC15FocusSettingsUI23ActivityConfigViewModel__appsWithExceptions) = v19;
  *(v3 + OBJC_IVAR____TtC15FocusSettingsUI23ActivityConfigViewModel_showSilenceListMessage) = 0;
  *(v3 + OBJC_IVAR____TtC15FocusSettingsUI23ActivityConfigViewModel__customizedHomeScreenPagesEnabled) = 0;
  *(v3 + OBJC_IVAR____TtC15FocusSettingsUI23ActivityConfigViewModel_homeScreenSnapshotsForSuggestedPages) = 0;
  *(v3 + OBJC_IVAR____TtC15FocusSettingsUI23ActivityConfigViewModel_postersController) = 0;
  v21 = OBJC_IVAR____TtC15FocusSettingsUI23ActivityConfigViewModel_postersDelegateHandler;
  *(v3 + v21) = [objc_allocWithZone(type metadata accessor for ActivityConfigViewModel.PostersDelegateHandler()) v20[207]];
  v22 = OBJC_IVAR____TtC15FocusSettingsUI23ActivityConfigViewModel_postersService;
  *(v3 + v22) = [objc_allocWithZone(MEMORY[0x277D3EA00]) v20[207]];
  *(v3 + OBJC_IVAR____TtC15FocusSettingsUI23ActivityConfigViewModel_homeScreenWallpaperSnapshot) = 0;
  *(v3 + OBJC_IVAR____TtC15FocusSettingsUI23ActivityConfigViewModel_selectedWatchFace) = 0;
  *(v3 + OBJC_IVAR____TtC15FocusSettingsUI23ActivityConfigViewModel_watchFacesToList) = v17;
  v23 = (v3 + OBJC_IVAR____TtC15FocusSettingsUI23ActivityConfigViewModel_notificationsHeaderAccessibilityIdentifier);
  *v23 = 0xD000000000000014;
  v23[1] = 0x800000024BAC28C0;
  v24 = (v3 + OBJC_IVAR____TtC15FocusSettingsUI23ActivityConfigViewModel_notificationsFooterAccessibilityIdentifier);
  *v24 = 0xD000000000000014;
  v24[1] = 0x800000024BAC28E0;
  v25 = OBJC_IVAR____TtC15FocusSettingsUI23ActivityConfigViewModel_suggestionTitle;
  if (qword_27F063110 != -1)
  {
    swift_once();
  }

  v26 = (v3 + v25);
  *v26 = sub_24BAA7C2C();
  v26[1] = v27;
  v28 = (v3 + OBJC_IVAR____TtC15FocusSettingsUI23ActivityConfigViewModel_customizationHeader);
  *v28 = sub_24BAA7C2C();
  v28[1] = v29;
  v30 = (v3 + OBJC_IVAR____TtC15FocusSettingsUI23ActivityConfigViewModel_homeScreenHeader);
  *v30 = sub_24BAA7C2C();
  v30[1] = v31;
  v32 = (v3 + OBJC_IVAR____TtC15FocusSettingsUI23ActivityConfigViewModel_allContactsTitle);
  *v32 = sub_24BAA7C2C();
  v32[1] = v33;
  v34 = (v3 + OBJC_IVAR____TtC15FocusSettingsUI23ActivityConfigViewModel_deleteActivityButtonTitle);
  *v34 = sub_24BAA7C2C();
  v34[1] = v35;
  v36 = (v3 + OBJC_IVAR____TtC15FocusSettingsUI23ActivityConfigViewModel_deleteActivityConfirmation);
  *v36 = sub_24BAA7C2C();
  v36[1] = v37;
  v38 = (v3 + OBJC_IVAR____TtC15FocusSettingsUI23ActivityConfigViewModel_allowAvailabilityStatusPrompt);
  *v38 = sub_24BAA7C2C();
  v38[1] = v39;
  v40 = (v3 + OBJC_IVAR____TtC15FocusSettingsUI23ActivityConfigViewModel_availabilityStatusFooter);
  *v40 = sub_24BAA7C2C();
  v40[1] = v41;
  swift_beginAccess();
  v42 = v64;
  v66 = v64;
  v67 = a2;

  sub_24BAA817C();
  swift_endAccess();
  *(v3 + OBJC_IVAR____TtC15FocusSettingsUI23ActivityConfigViewModel_lockScreenSnapshots) = v17;
  *(v3 + OBJC_IVAR____TtC15FocusSettingsUI23ActivityConfigViewModel_homeScreenSnapshots) = v17;
  *(v3 + OBJC_IVAR____TtC15FocusSettingsUI23ActivityConfigViewModel_homeScreenSnapshotsLoaded) = 0;
  type metadata accessor for ActivityConfigViewModel.FocusConfigurationActionActor();
  v43 = swift_allocObject();

  swift_defaultActor_initialize();
  v43[16] = [objc_allocWithZone(MEMORY[0x277D23C38]) v20[207]];
  v44 = sub_24BAA9FDC();
  v45 = objc_opt_self();
  v46 = [v45 serviceForClientIdentifier_];

  v43[17] = v46;
  v43[14] = v42;
  v43[15] = a2;
  *(v3 + OBJC_IVAR____TtC15FocusSettingsUI23ActivityConfigViewModel_focusConfigurationActionActor) = v43;
  type metadata accessor for ActivityConfigViewModel.FocusSystemConfigurationActionActor();
  v47 = swift_allocObject();
  swift_defaultActor_initialize();
  v47[16] = [objc_allocWithZone(MEMORY[0x277D79EA0]) initWithSurface_];
  v48 = sub_24BAA9FDC();
  v49 = [v45 serviceForClientIdentifier_];

  v47[17] = v49;
  v47[14] = v42;
  v47[15] = a2;
  *(v3 + OBJC_IVAR____TtC15FocusSettingsUI23ActivityConfigViewModel_focusSystemConfigurationActionActor) = v47;
  v50 = sub_24BAAA1DC();
  v51 = v65;
  (*(*(v50 - 8) + 56))(v65, 1, 1, v50);
  sub_24BAAA1BC();

  v52 = sub_24BAAA1AC();
  v53 = swift_allocObject();
  v54 = MEMORY[0x277D85700];
  v53[2] = v52;
  v53[3] = v54;
  v53[4] = v3;
  sub_24B981384(0, 0, v51, &unk_24BAB50A8, v53);

  v55 = [objc_opt_self() standardUserDefaults];
  v56 = sub_24BAA9FDC();
  LOBYTE(v40) = [v55 BOOLForKey_];

  *(v3 + OBJC_IVAR____TtC15FocusSettingsUI23ActivityConfigViewModel_showSilenceListMessage) = v40 ^ 1;
  v57 = *(v3 + 40);
  v58 = swift_allocObject();
  swift_weakInit();
  v59 = (v57 + OBJC_IVAR____TtCC15FocusSettingsUI23ActivityConfigViewModelP33_69469D27B0511CD91350E3DC9D01628B22FocusAssertionListener_modeActivationDidChange);
  *v59 = sub_24B9A2DBC;
  v59[1] = v58;

  [*(v3 + 16) addListenerForFocusActivationChanges_];
  return v3;
}

uint64_t sub_24B9834AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v4[3] = sub_24BAAA1BC();
  v4[4] = sub_24BAAA1AC();
  v5 = swift_task_alloc();
  v4[5] = v5;
  *v5 = v4;
  v5[1] = sub_24B98355C;

  return sub_24B984BF0();
}

uint64_t sub_24B98355C()
{
  v1 = *v0;
  v2 = *v0;

  v3 = swift_task_alloc();
  *(v1 + 48) = v3;
  *v3 = v2;
  v3[1] = sub_24B98369C;

  return sub_24B98D350();
}

uint64_t sub_24B98369C()
{

  v1 = sub_24BAAA17C();

  return MEMORY[0x2822009F8](sub_24B9A3008, v1, v0);
}

void sub_24B9837D8(void *a1)
{
  v2 = sub_24BAA9E2C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_24BAA9E5C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    v27 = v7;
    v28 = v6;
    if (a1)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      v12 = a1;
      sub_24BAA81BC();

      v14 = aBlock;
      v13 = v31;
      v26 = v12;
      v15 = [v12 details];
      v16 = [v15 modeIdentifier];

      if (!v16)
      {
        __break(1u);
        return;
      }

      v25 = v3;
      v17 = sub_24BAAA01C();
      v19 = v18;

      if (v14 == v17 && v13 == v19)
      {
      }

      else
      {
        v22 = sub_24BAAA78C();

        if ((v22 & 1) == 0)
        {

          return;
        }
      }

      sub_24B8F37E8(0, &qword_27F0644F0);
      v23 = sub_24BAAA33C();
      v34 = sub_24B9A2DCC;
      v35 = v11;
      aBlock = MEMORY[0x277D85DD0];
      v31 = 1107296256;
      v32 = sub_24B97ACC4;
      v33 = &block_descriptor_389;
      v24 = _Block_copy(&aBlock);

      sub_24BAA9E4C();
      v29 = MEMORY[0x277D84F90];
      sub_24B9A1DBC(&qword_27F063470, MEMORY[0x277D85198]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F064500);
      sub_24B8F384C(&qword_27F063480, &unk_27F064500);
      sub_24BAAA48C();
      MEMORY[0x24C250400](0, v9, v5, v24);
      _Block_release(v24);

      (*(v25 + 8))(v5, v2);
    }

    else
    {
      sub_24B8F37E8(0, &qword_27F0644F0);
      v26 = sub_24BAAA33C();
      v34 = sub_24B9A2DC4;
      v35 = v11;
      aBlock = MEMORY[0x277D85DD0];
      v31 = 1107296256;
      v32 = sub_24B97ACC4;
      v33 = &block_descriptor_386;
      v20 = _Block_copy(&aBlock);

      sub_24BAA9E4C();
      v29 = MEMORY[0x277D84F90];
      sub_24B9A1DBC(&qword_27F063470, MEMORY[0x277D85198]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F064500);
      sub_24B8F384C(&qword_27F063480, &unk_27F064500);
      sub_24BAAA48C();
      v21 = v26;
      MEMORY[0x24C250400](0, v9, v5, v20);
      _Block_release(v20);

      (*(v3 + 8))(v5, v2);
    }

    (*(v27 + 8))(v9, v28);
  }
}

uint64_t sub_24B983D94(uint64_t result)
{
  v1 = result;
  v2 = *(result + 32);
  if (v2 == 2 || (v2 & 1) != 0)
  {
    type metadata accessor for ActivityConfigViewModel();
    sub_24B9A1DBC(&qword_27F066AA0, type metadata accessor for ActivityConfigViewModel);
    sub_24BAA814C();
    sub_24BAA816C();

    *(v1 + 32) = 0;
  }

  return result;
}

uint64_t sub_24B983E28(uint64_t result)
{
  v1 = result;
  v2 = *(result + 32);
  if (v2 == 2 || (v2 & 1) == 0)
  {
    type metadata accessor for ActivityConfigViewModel();
    sub_24B9A1DBC(&qword_27F066AA0, type metadata accessor for ActivityConfigViewModel);
    sub_24BAA814C();
    sub_24BAA816C();

    *(v1 + 32) = 1;
  }

  return result;
}

id *sub_24B983EC0()
{
  [v0[2] removeListenerForFocusActivationChanges_];

  v1 = OBJC_IVAR____TtC15FocusSettingsUI23ActivityConfigViewModel__identifier;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0644E0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = OBJC_IVAR____TtC15FocusSettingsUI23ActivityConfigViewModel__focusConfigurationActions;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F066B30);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  v5 = OBJC_IVAR____TtC15FocusSettingsUI23ActivityConfigViewModel__focusSystemConfigurationActions;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F066B38);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);

  return v0;
}

uint64_t sub_24B9841C4()
{
  sub_24B983EC0();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ActivityConfigViewModel()
{
  result = qword_27F066890;
  if (!qword_27F066890)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24B984270()
{
  sub_24B99989C();
  if (v0 <= 0x3F)
  {
    sub_24B913088(319, &qword_27F0668A8, &qword_27F0668B0);
    if (v1 <= 0x3F)
    {
      sub_24B913088(319, &qword_27F0668B8, &qword_27F0668C0);
      if (v2 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

uint64_t sub_24B984444()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 24);
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_24BAA81BC();

    v2 = swift_allocObject();
    swift_weakInit();
    type metadata accessor for ActivityConfigurationManager();
    swift_allocObject();
    v1 = sub_24B8F0DEC(v4, v5, sub_24B9A2F9C, v2);

    *(v0 + 24) = v1;
  }

  return v1;
}

uint64_t sub_24B984560(uint64_t a1)
{
  v2 = sub_24BAA9E2C();
  v13 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_24BAA9E5C();
  v5 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24B8F37E8(0, &qword_27F0644F0);
  v8 = sub_24BAAA33C();
  aBlock[4] = sub_24B9A1E44;
  aBlock[5] = a1;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24B97ACC4;
  aBlock[3] = &block_descriptor_4;
  v9 = _Block_copy(aBlock);

  sub_24BAA9E4C();
  v14 = MEMORY[0x277D84F90];
  sub_24B9A1DBC(&qword_27F063470, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F064500);
  sub_24B8F384C(&qword_27F063480, &unk_27F064500);
  sub_24BAAA48C();
  MEMORY[0x24C250400](0, v7, v4, v9);
  _Block_release(v9);

  (*(v13 + 8))(v4, v2);
  (*(v5 + 8))(v7, v12);
}

uint64_t sub_24B98483C()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    type metadata accessor for ActivityConfigViewModel();
    sub_24B9A1DBC(&qword_27F066AA0, type metadata accessor for ActivityConfigViewModel);
    sub_24BAA814C();
    sub_24BAA816C();
  }

  return result;
}

uint64_t sub_24B9848F0()
{
  v1 = v0;
  if (!*(v0 + 24))
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_24BAA81BC();

    v2 = swift_allocObject();
    swift_weakInit();
    type metadata accessor for ActivityConfigurationManager();
    swift_allocObject();
    v3 = sub_24B8F0DEC(v5, v6, sub_24B9A2F9C, v2);

    *(v1 + 24) = v3;
  }

  sub_24B8D9070(sub_24B9A2C78, v1);
}

uint64_t sub_24B984AC0(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  if (!*(v2 + 24))
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_24BAA81BC();

    v5 = swift_allocObject();
    swift_weakInit();
    type metadata accessor for ActivityConfigurationManager();
    swift_allocObject();
    v6 = v2;
    v7 = sub_24B8F0DEC(v11, v12, a1, v5);

    *(v6 + 24) = v7;
  }

  v9 = a2(v8);

  return v9;
}

uint64_t sub_24B984BF0()
{
  v1[11] = v0;
  v2 = sub_24BAA9E2C();
  v1[12] = v2;
  v1[13] = *(v2 - 8);
  v1[14] = swift_task_alloc();
  v3 = sub_24BAA9E5C();
  v1[15] = v3;
  v1[16] = *(v3 - 8);
  v1[17] = swift_task_alloc();
  v1[18] = sub_24BAAA1BC();
  v1[19] = sub_24BAAA1AC();
  v5 = sub_24BAAA17C();
  v1[20] = v5;
  v1[21] = v4;

  return MEMORY[0x2822009F8](sub_24B984D44, v5, v4);
}

uint64_t sub_24B984D44()
{
  v1 = v0[11];
  v2 = OBJC_IVAR____TtC15FocusSettingsUI23ActivityConfigViewModel_focusConfigurationActionActor;
  v0[22] = OBJC_IVAR____TtC15FocusSettingsUI23ActivityConfigViewModel_focusConfigurationActionActor;
  v3 = *(v1 + v2);
  v0[23] = v3;

  return MEMORY[0x2822009F8](sub_24B984DC8, v3, 0);
}

uint64_t sub_24B984DC8()
{
  v0[24] = sub_24B98A71C();

  v1 = v0[20];
  v2 = v0[21];

  return MEMORY[0x2822009F8](sub_24B984E38, v1, v2);
}

uint64_t sub_24B984E38()
{
  v1 = *(v0[11] + v0[22]);
  v0[25] = v1;

  return MEMORY[0x2822009F8](sub_24B984EB4, v1, 0);
}

uint64_t sub_24B984EB4()
{
  v0[26] = sub_24B98AE34();

  v1 = v0[20];
  v2 = v0[21];

  return MEMORY[0x2822009F8](sub_24B984F24, v1, v2);
}

uint64_t sub_24B984F24()
{
  v16 = v0;
  v1 = swift_allocObject();
  v2 = MEMORY[0x277D84F90];
  v0[27] = v1;
  *(v1 + 16) = v2;
  v3 = v1 + 16;
  if (qword_27F0630F8 != -1)
  {
    swift_once();
  }

  v4 = sub_24BAA812C();
  __swift_project_value_buffer(v4, qword_27F077050);

  v5 = sub_24BAA810C();
  v6 = sub_24BAAA2CC();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v15 = v8;
    *v7 = 136446210;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_24BAA81BC();

    v9 = sub_24B8E49D4(v0[8], v0[9], &v15);

    *(v7 + 4) = v9;
    _os_log_impl(&dword_24B8D3000, v5, v6, "refresh begin %{public}s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x24C251390](v8, -1, -1);
    MEMORY[0x24C251390](v7, -1, -1);
  }

  v10 = v0[26];
  v11 = v0[24];
  type metadata accessor for FocusConfigurationAction(0);
  v0[28] = sub_24BAAA1AC();
  v12 = swift_task_alloc();
  v0[29] = v12;
  v12[2] = v11;
  v12[3] = v10;
  v12[4] = v3;
  v13 = swift_task_alloc();
  v0[30] = v13;
  *v13 = v0;
  v13[1] = sub_24B9851DC;
  v18 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x282200600]();
}

uint64_t sub_24B9851DC()
{
  v1 = *v0;

  v2 = *(v1 + 168);
  v3 = *(v1 + 160);

  return MEMORY[0x2822009F8](sub_24B98537C, v3, v2);
}

uint64_t sub_24B98537C()
{
  v1 = v0[27];
  v2 = v0[17];
  v3 = v0[14];
  v12 = v0[16];
  v13 = v0[15];
  v4 = v0[12];
  v11 = v0[13];
  v5 = v0[11];

  sub_24B8F37E8(0, &qword_27F0644F0);
  v10 = sub_24BAAA33C();
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = v1;
  v0[6] = sub_24B9A2910;
  v0[7] = v6;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_24B97ACC4;
  v0[5] = &block_descriptor_354;
  v7 = _Block_copy(v0 + 2);

  sub_24BAA9E4C();
  v0[10] = MEMORY[0x277D84F90];
  sub_24B9A1DBC(&qword_27F063470, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F064500);
  sub_24B8F384C(&qword_27F063480, &unk_27F064500);
  sub_24BAAA48C();
  MEMORY[0x24C250400](0, v2, v3, v7);
  _Block_release(v7);

  (*(v11 + 8))(v3, v4);
  (*(v12 + 8))(v2, v13);

  v8 = v0[1];

  return v8();
}

uint64_t sub_24B9855FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[4] = a4;
  v5[5] = a5;
  v5[2] = a2;
  v5[3] = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0646E8);
  v5[6] = swift_task_alloc();
  v6 = type metadata accessor for FocusConfigurationAction(0);
  v5[7] = v6;
  v7 = *(v6 - 8);
  v5[8] = v7;
  v5[9] = *(v7 + 64);
  v5[10] = swift_task_alloc();
  v5[11] = swift_task_alloc();
  v5[12] = swift_task_alloc();
  v5[13] = swift_task_alloc();
  v5[14] = swift_task_alloc();
  v5[15] = swift_task_alloc();
  v5[16] = swift_task_alloc();
  v5[17] = swift_task_alloc();
  v5[18] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063420);
  v5[19] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F066B08);
  v5[20] = v8;
  v5[21] = *(v8 - 8);
  v5[22] = swift_task_alloc();
  v5[23] = sub_24BAAA1BC();
  v5[24] = sub_24BAAA1AC();
  v10 = sub_24BAAA17C();
  v5[25] = v10;
  v5[26] = v9;

  return MEMORY[0x2822009F8](sub_24B985838, v10, v9);
}

uint64_t sub_24B985838()
{
  v98 = v0;
  v1 = v0[3];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[8];
    v96 = v0[7];
    v4 = *(v3 + 80);
    v91 = (v4 + 32) & ~v4;
    v5 = v1 + v91;
    v88 = (v4 + 40) & ~v4;
    v87 = (v0[9] + v88 + 7) & 0xFFFFFFFFFFFFFFF8;
    v93 = v0[4];
    v92 = *(v3 + 72);
    while (1)
    {
      sub_24B9A1C8C(v5, v0[18], type metadata accessor for FocusConfigurationAction);
      v13 = objc_allocWithZone(MEMORY[0x277D058C8]);
      v14 = sub_24BAA9FDC();
      v15 = [v13 initWithBundleID_];

      if (!*(v93 + 16))
      {
        break;
      }

      v16 = sub_24BA1586C(v15);
      if ((v17 & 1) == 0)
      {
        break;
      }

      v94 = v5;
      v18 = v0[18];
      v19 = *(*(v93 + 56) + 8 * v16);

      v20 = swift_task_alloc();
      *(v20 + 16) = v18;
      sub_24BA59804(sub_24B9A2918, v20, v19);
      v22 = v21;

      if (!v22)
      {
        v5 = v94;
        goto LABEL_14;
      }

      v23 = [v22 action];
      if (v23)
      {
        v6 = v23;
        v8 = v0[17];
        v7 = v0[18];
        v9 = v0[6];
        v10 = sub_24BAAA1DC();
        (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
        sub_24B9A1C8C(v7, v8, type metadata accessor for FocusConfigurationAction);
        v11 = swift_allocObject();
        v11[2] = 0;
        v11[3] = 0;
        v11[4] = v22;
        v0 = v89;
        sub_24B9A1D54(v8, v11 + v88, type metadata accessor for FocusConfigurationAction);
        *(v11 + v87) = v6;
        sub_24B987A7C(v9, &unk_24BAB5068, v11);
        sub_24B8F35E4(v9, &qword_27F0646E8);
        v5 = v94;
        v12 = v92;
      }

      else
      {
        if (qword_27F0630F8 != -1)
        {
          swift_once();
        }

        v24 = v0[18];
        v26 = v0[15];
        v25 = v0[16];
        v27 = sub_24BAA812C();
        __swift_project_value_buffer(v27, qword_27F077050);
        sub_24B9A1C8C(v24, v25, type metadata accessor for FocusConfigurationAction);
        sub_24B9A1C8C(v24, v26, type metadata accessor for FocusConfigurationAction);
        v28 = sub_24BAA810C();
        v29 = sub_24BAAA2AC();
        v30 = os_log_type_enabled(v28, v29);
        v32 = v0[15];
        v31 = v0[16];
        if (v30)
        {
          v33 = swift_slowAlloc();
          v86 = swift_slowAlloc();
          v97[0] = v86;
          *v33 = 136446466;
          v34 = (v31 + *(v96 + 32));
          v36 = *v34;
          v35 = v34[1];

          sub_24B9A1CF4(v31, type metadata accessor for FocusConfigurationAction);
          v37 = sub_24B8E49D4(v36, v35, v97);

          *(v33 + 4) = v37;
          *(v33 + 12) = 2082;
          v38 = (v32 + *(v96 + 28));
          v39 = *v38;
          v40 = v38[1];

          sub_24B9A1CF4(v32, type metadata accessor for FocusConfigurationAction);
          v41 = sub_24B8E49D4(v39, v40, v97);

          *(v33 + 14) = v41;
          _os_log_impl(&dword_24B8D3000, v28, v29, "Persisted action found for app; with nil Link action bundleIdentifier=%{public}s identifier=%{public}s", v33, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x24C251390](v86, -1, -1);
          MEMORY[0x24C251390](v33, -1, -1);
        }

        else
        {

          sub_24B9A1CF4(v32, type metadata accessor for FocusConfigurationAction);
          sub_24B9A1CF4(v31, type metadata accessor for FocusConfigurationAction);
        }

        v68 = v0[5];
        sub_24B9A1C8C(v0[18], v0[14], type metadata accessor for FocusConfigurationAction);
        v69 = *v68;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *v68 = v69;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v78 = v0[5];
          v69 = sub_24B99ABF8(0, v69[2] + 1, 1, v69, &qword_27F0645D0, &unk_24BAAEEF8, type metadata accessor for FocusConfigurationAction);
          *v78 = v69;
        }

        v72 = v69[2];
        v71 = v69[3];
        if (v72 >= v71 >> 1)
        {
          v79 = v0[5];
          *v79 = sub_24B99ABF8(v71 > 1, v72 + 1, 1, v69, &qword_27F0645D0, &unk_24BAAEEF8, type metadata accessor for FocusConfigurationAction);
        }

        v73 = v0[14];
        v74 = v0[5];

        v75 = *v74;
        *(v75 + 16) = v72 + 1;
        v12 = v92;
        sub_24B9A1D54(v73, v75 + v91 + v72 * v92, type metadata accessor for FocusConfigurationAction);
        v5 = v94;
      }

LABEL_4:
      sub_24B9A1CF4(v0[18], type metadata accessor for FocusConfigurationAction);
      v5 += v12;
      if (!--v2)
      {
        goto LABEL_31;
      }
    }

LABEL_14:
    if (qword_27F0630F8 != -1)
    {
      swift_once();
    }

    v42 = v0[18];
    v44 = v0[12];
    v43 = v0[13];
    v45 = sub_24BAA812C();
    __swift_project_value_buffer(v45, qword_27F077050);
    sub_24B9A1C8C(v42, v43, type metadata accessor for FocusConfigurationAction);
    sub_24B9A1C8C(v42, v44, type metadata accessor for FocusConfigurationAction);
    v46 = sub_24BAA810C();
    v47 = sub_24BAAA2CC();
    v48 = os_log_type_enabled(v46, v47);
    v50 = v0[12];
    v49 = v0[13];
    if (v48)
    {
      v95 = v5;
      v51 = swift_slowAlloc();
      v90 = swift_slowAlloc();
      v97[0] = v90;
      *v51 = 136446466;
      v52 = (v49 + *(v96 + 32));
      v53 = v2;
      v54 = *v52;
      v55 = v52[1];

      sub_24B9A1CF4(v49, type metadata accessor for FocusConfigurationAction);
      v56 = sub_24B8E49D4(v54, v55, v97);
      v2 = v53;
      v0 = v89;

      *(v51 + 4) = v56;
      *(v51 + 12) = 2082;
      v57 = (v50 + *(v96 + 28));
      v58 = *v57;
      v59 = v57[1];

      sub_24B9A1CF4(v50, type metadata accessor for FocusConfigurationAction);
      v60 = sub_24B8E49D4(v58, v59, v97);

      *(v51 + 14) = v60;
      _os_log_impl(&dword_24B8D3000, v46, v47, "No persisted action found for app; bundleIdentifier=%{public}s identifier=%{public}s", v51, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C251390](v90, -1, -1);
      v61 = v51;
      v5 = v95;
      MEMORY[0x24C251390](v61, -1, -1);
    }

    else
    {

      sub_24B9A1CF4(v50, type metadata accessor for FocusConfigurationAction);
      sub_24B9A1CF4(v49, type metadata accessor for FocusConfigurationAction);
    }

    v62 = v0[5];
    sub_24B9A1C8C(v0[18], v0[11], type metadata accessor for FocusConfigurationAction);
    v63 = *v62;
    v64 = swift_isUniquelyReferenced_nonNull_native();
    *v62 = v63;
    if ((v64 & 1) == 0)
    {
      v76 = v0[5];
      v63 = sub_24B99ABF8(0, v63[2] + 1, 1, v63, &qword_27F0645D0, &unk_24BAAEEF8, type metadata accessor for FocusConfigurationAction);
      *v76 = v63;
    }

    v66 = v63[2];
    v65 = v63[3];
    if (v66 >= v65 >> 1)
    {
      v77 = v0[5];
      v63 = sub_24B99ABF8(v65 > 1, v66 + 1, 1, v63, &qword_27F0645D0, &unk_24BAAEEF8, type metadata accessor for FocusConfigurationAction);
      *v77 = v63;
    }

    v67 = v0[11];
    v63[2] = v66 + 1;
    v12 = v92;
    sub_24B9A1D54(v67, v63 + v91 + v66 * v92, type metadata accessor for FocusConfigurationAction);
    goto LABEL_4;
  }

LABEL_31:
  sub_24BAAA18C();
  v80 = sub_24BAAA1AC();
  v0[27] = v80;
  v81 = swift_task_alloc();
  v0[28] = v81;
  *v81 = v0;
  v81[1] = sub_24B986254;
  v82 = v0[19];
  v83 = v0[20];
  v84 = MEMORY[0x277D85700];

  return MEMORY[0x2822002E8](v82, v80, v84, v83);
}

uint64_t sub_24B986254()
{
  v1 = *v0;

  v2 = *(v1 + 208);
  v3 = *(v1 + 200);

  return MEMORY[0x2822009F8](sub_24B986398, v3, v2);
}

uint64_t sub_24B986398()
{
  v1 = v0[19];
  if ((*(v0[8] + 48))(v1, 1, v0[7]) == 1)
  {
    (*(v0[21] + 8))(v0[22], v0[20]);

    v2 = v0[1];

    return v2();
  }

  else
  {
    v4 = v0[5];
    sub_24B9A1D54(v1, v0[10], type metadata accessor for FocusConfigurationAction);
    v5 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v4 = v5;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v16 = v0[5];
      v5 = sub_24B99ABF8(0, v5[2] + 1, 1, v5, &qword_27F0645D0, &unk_24BAAEEF8, type metadata accessor for FocusConfigurationAction);
      *v16 = v5;
    }

    v8 = v5[2];
    v7 = v5[3];
    if (v8 >= v7 >> 1)
    {
      v17 = v0[5];
      v5 = sub_24B99ABF8(v7 > 1, v8 + 1, 1, v5, &qword_27F0645D0, &unk_24BAAEEF8, type metadata accessor for FocusConfigurationAction);
      *v17 = v5;
    }

    v9 = v0[10];
    v10 = v0[8];
    v5[2] = v8 + 1;
    sub_24B9A1D54(v9, v5 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v8, type metadata accessor for FocusConfigurationAction);
    v11 = sub_24BAAA1AC();
    v0[27] = v11;
    v12 = swift_task_alloc();
    v0[28] = v12;
    *v12 = v0;
    v12[1] = sub_24B986254;
    v13 = v0[19];
    v14 = v0[20];
    v15 = MEMORY[0x277D85700];

    return MEMORY[0x2822002E8](v13, v11, v15, v14);
  }
}

uint64_t sub_24B98669C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[22] = a5;
  v6[23] = a6;
  v6[20] = a1;
  v6[21] = a4;
  v6[24] = type metadata accessor for FocusConfigurationAction(0);
  v6[25] = swift_task_alloc();
  v6[26] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24B98676C, 0, 0);
}

uint64_t sub_24B98676C()
{
  v74 = v0;
  v73[1] = *MEMORY[0x277D85DE8];
  if (qword_27F0630F8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 168);
  v2 = sub_24BAA812C();
  *(v0 + 216) = __swift_project_value_buffer(v2, qword_27F077050);
  v3 = v1;
  v4 = sub_24BAA810C();
  v5 = sub_24BAAA2CC();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 168);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v73[0] = v8;
    *v7 = 136446210;
    v9 = [v6 identifier];
    v10 = sub_24BAAA01C();
    v12 = v11;

    v13 = sub_24B8E49D4(v10, v12, v73);

    *(v7 + 4) = v13;
    _os_log_impl(&dword_24B8D3000, v4, v5, "task begin id=%{public}s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x24C251390](v8, -1, -1);
    MEMORY[0x24C251390](v7, -1, -1);
  }

  v14 = *(*(v0 + 176) + *(*(v0 + 192) + 40));
  *(v0 + 224) = v14;
  if (v14)
  {
    v15 = [objc_opt_self() policyWithActionMetadata_];
    *(v0 + 232) = v15;
    *(v0 + 144) = 0;
    v16 = [v15 connectionWithError_];
    *(v0 + 240) = v16;
    v17 = *(v0 + 144);
    if (v16)
    {
      v18 = v16;
      v19 = *(v0 + 184);
      v20 = v17;
      v21 = [v19 parameters];
      if (!v21)
      {
        sub_24B8F37E8(0, &qword_27F066A90);
        sub_24BAAA12C();
        v21 = sub_24BAAA11C();
      }

      v22 = [v15 actionWithParameters_];
      *(v0 + 248) = v22;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F064710);
      v23 = swift_allocObject();
      *(v23 + 16) = xmmword_24BAAE690;
      *(v23 + 32) = v22;
      sub_24B8F37E8(0, &qword_27F066B10);
      v24 = v22;
      v25 = sub_24BAAA11C();
      *(v0 + 256) = v25;

      *(v0 + 16) = v0;
      *(v0 + 56) = v0 + 152;
      *(v0 + 24) = sub_24B986F30;
      v26 = swift_continuation_init();
      *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F066B18);
      *(v0 + 80) = MEMORY[0x277D85DD0];
      *(v0 + 88) = 1107296256;
      *(v0 + 96) = sub_24B98798C;
      *(v0 + 104) = &block_descriptor_368;
      *(v0 + 112) = v26;
      [v18 fetchDisplayRepresentationForActions:v25 completionHandler:v0 + 80];

      return MEMORY[0x282200938](v0 + 16);
    }

    v27 = v17;
    v28 = sub_24BAA7CCC();

    swift_willThrow();
    v29 = *(v0 + 200);
    v30 = *(v0 + 176);
    v31 = sub_24BAAA2AC();
    sub_24B9A1C8C(v30, v29, type metadata accessor for FocusConfigurationAction);
    v32 = sub_24BAA810C();
    v33 = os_log_type_enabled(v32, v31);
    v34 = *(v0 + 224);
    v35 = *(v0 + 200);
    if (v33)
    {
      v36 = *(v0 + 192);
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v73[0] = v38;
      *v37 = 136446210;
      v39 = (v35 + *(v36 + 32));
      v40 = *v39;
      v41 = v39[1];

      sub_24B9A1CF4(v35, type metadata accessor for FocusConfigurationAction);
      v42 = sub_24B8E49D4(v40, v41, v73);

      *(v37 + 4) = v42;
      _os_log_impl(&dword_24B8D3000, v32, v31, "Failed to fetch displayRepresentation for action; bundleIdentifier=%{public}s", v37, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v38);
      MEMORY[0x24C251390](v38, -1, -1);
      MEMORY[0x24C251390](v37, -1, -1);
    }

    else
    {

      sub_24B9A1CF4(v35, type metadata accessor for FocusConfigurationAction);
    }
  }

  v43 = *(v0 + 168);
  v44 = sub_24BAA810C();
  v45 = sub_24BAAA2CC();

  if (os_log_type_enabled(v44, v45))
  {
    v46 = *(v0 + 168);
    v47 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    v73[0] = v48;
    *v47 = 136446466;
    v49 = [v46 identifier];
    v50 = sub_24BAAA01C();
    v52 = v51;

    v53 = sub_24B8E49D4(v50, v52, v73);

    *(v47 + 4) = v53;
    *(v47 + 12) = 1026;
    *(v47 + 14) = 0;
    _os_log_impl(&dword_24B8D3000, v44, v45, "task end id=%{public}s configured=true displayRepresentation=%{BOOL,public}d", v47, 0x12u);
    __swift_destroy_boxed_opaque_existential_0(v48);
    MEMORY[0x24C251390](v48, -1, -1);
    MEMORY[0x24C251390](v47, -1, -1);
  }

  v54 = *(v0 + 224);
  v55 = *(v0 + 184);
  v56 = *(v0 + 192);
  v57 = *(v0 + 176);
  v58 = *(v0 + 160);
  v59 = [*(v0 + 168) isEnabled];
  v60 = v56[8];
  v61 = (v57 + v56[7]);
  v62 = *v61;
  v63 = v61[1];
  v64 = *(v57 + v60);
  v65 = *(v57 + v60 + 8);

  sub_24BAA7E3C();
  v66 = v56[6];
  *(v58 + v56[11]) = 0;
  *(v58 + v56[5]) = 1;
  *(v58 + v66) = v59;
  v67 = (v58 + v56[7]);
  *v67 = v62;
  v67[1] = v63;
  v68 = (v58 + v56[8]);
  *v68 = v64;
  v68[1] = v65;
  *(v58 + v56[9]) = v55;
  *(v58 + v56[10]) = v54;
  v69 = v54;
  v70 = v55;
  sub_24B9B14A4(0);

  v71 = *(v0 + 8);

  return v71();
}

uint64_t sub_24B986F30()
{
  v1 = *(*v0 + 48);
  *(*v0 + 264) = v1;
  if (v1)
  {
    v2 = sub_24B98759C;
  }

  else
  {
    v2 = sub_24B98706C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24B98706C()
{
  v63 = v0;
  v62[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 152);

  if (v1 >> 62)
  {
    if (sub_24BAAA52C())
    {
      goto LABEL_3;
    }

LABEL_8:
    v3 = 0;
    goto LABEL_9;
  }

  if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((v1 & 0xC000000000000001) != 0)
  {
    v2 = MEMORY[0x24C2506E0](0, v1);
  }

  else
  {
    if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
    }

    v2 = *(v1 + 32);
  }

  v3 = v2;
LABEL_9:
  v4 = *(v0 + 208);
  v5 = *(v0 + 176);

  v6 = [v3 displayRepresentation];

  sub_24B9A1C8C(v5, v4, type metadata accessor for FocusConfigurationAction);
  v7 = sub_24BAA810C();
  v8 = sub_24BAAA2CC();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v62[0] = v10;
    *v9 = 136446466;
    v56 = v6;
    if (v6)
    {
      v11 = [v6 description];
      v12 = sub_24BAAA01C();
      v14 = v13;
    }

    else
    {
      v14 = 0xE300000000000000;
      v12 = 7104878;
    }

    v19 = *(v0 + 248);
    v58 = *(v0 + 240);
    v60 = *(v0 + 232);
    v61 = *(v0 + 224);
    v20 = *(v0 + 208);
    v21 = *(v0 + 192);
    v22 = sub_24B8E49D4(v12, v14, v62);

    *(v9 + 4) = v22;
    *(v9 + 12) = 2082;
    v23 = (v20 + *(v21 + 32));
    v24 = *v23;
    v25 = v23[1];

    sub_24B9A1CF4(v20, type metadata accessor for FocusConfigurationAction);
    v26 = sub_24B8E49D4(v24, v25, v62);

    *(v9 + 14) = v26;
    _os_log_impl(&dword_24B8D3000, v7, v8, "Found displayRepresentation for action; displayRepresentation=%{public}s bundleIdentifier=%{public}s", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C251390](v10, -1, -1);
    MEMORY[0x24C251390](v9, -1, -1);

    v6 = v56;
  }

  else
  {
    v15 = *(v0 + 240);
    v17 = *(v0 + 224);
    v16 = *(v0 + 232);
    v18 = *(v0 + 208);

    sub_24B9A1CF4(v18, type metadata accessor for FocusConfigurationAction);
  }

  v27 = *(v0 + 168);
  v28 = sub_24BAA810C();
  v29 = sub_24BAAA2CC();

  if (os_log_type_enabled(v28, v29))
  {
    v30 = *(v0 + 168);
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v62[0] = v32;
    *v31 = 136446466;
    v33 = [v30 identifier];
    v34 = sub_24BAAA01C();
    v36 = v35;

    v37 = sub_24B8E49D4(v34, v36, v62);

    *(v31 + 4) = v37;
    *(v31 + 12) = 1026;
    *(v31 + 14) = v6 != 0;
    _os_log_impl(&dword_24B8D3000, v28, v29, "task end id=%{public}s configured=true displayRepresentation=%{BOOL,public}d", v31, 0x12u);
    __swift_destroy_boxed_opaque_existential_0(v32);
    MEMORY[0x24C251390](v32, -1, -1);
    MEMORY[0x24C251390](v31, -1, -1);
  }

  v59 = *(v0 + 224);
  v38 = *(v0 + 184);
  v39 = *(v0 + 192);
  v40 = *(v0 + 176);
  v41 = *(v0 + 160);
  v42 = [*(v0 + 168) isEnabled];
  v43 = (v40 + v39[7]);
  v44 = *v43;
  v45 = v43[1];
  v46 = (v40 + v39[8]);
  v48 = *v46;
  v47 = v46[1];
  v57 = v6;

  sub_24BAA7E3C();
  v49 = v39[6];
  *(v41 + v39[11]) = 0;
  *(v41 + v39[5]) = 1;
  *(v41 + v49) = v42;
  v50 = (v41 + v39[7]);
  *v50 = v44;
  v50[1] = v45;
  v51 = (v41 + v39[8]);
  *v51 = v48;
  v51[1] = v47;
  *(v41 + v39[9]) = v38;
  *(v41 + v39[10]) = v59;
  v52 = v59;
  v53 = v38;
  sub_24B9B14A4(v6);

  v54 = *(v0 + 8);

  return v54();
}

uint64_t sub_24B98759C()
{
  v51 = v0;
  v50[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 256);
  v3 = *(v0 + 240);
  v2 = *(v0 + 248);
  v4 = *(v0 + 232);
  swift_willThrow();

  v5 = *(v0 + 264);
  v6 = *(v0 + 200);
  v7 = *(v0 + 176);
  v8 = sub_24BAAA2AC();
  sub_24B9A1C8C(v7, v6, type metadata accessor for FocusConfigurationAction);
  v9 = sub_24BAA810C();
  v10 = os_log_type_enabled(v9, v8);
  v11 = *(v0 + 224);
  v12 = *(v0 + 200);
  if (v10)
  {
    v13 = *(v0 + 192);
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v50[0] = v15;
    *v14 = 136446210;
    v16 = (v12 + *(v13 + 32));
    v17 = *v16;
    v18 = v16[1];

    sub_24B9A1CF4(v12, type metadata accessor for FocusConfigurationAction);
    v19 = sub_24B8E49D4(v17, v18, v50);

    *(v14 + 4) = v19;
    _os_log_impl(&dword_24B8D3000, v9, v8, "Failed to fetch displayRepresentation for action; bundleIdentifier=%{public}s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v15);
    MEMORY[0x24C251390](v15, -1, -1);
    MEMORY[0x24C251390](v14, -1, -1);
  }

  else
  {

    sub_24B9A1CF4(v12, type metadata accessor for FocusConfigurationAction);
  }

  v20 = *(v0 + 168);
  v21 = sub_24BAA810C();
  v22 = sub_24BAAA2CC();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = *(v0 + 168);
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v50[0] = v25;
    *v24 = 136446466;
    v26 = [v23 identifier];
    v27 = sub_24BAAA01C();
    v29 = v28;

    v30 = sub_24B8E49D4(v27, v29, v50);

    *(v24 + 4) = v30;
    *(v24 + 12) = 1026;
    *(v24 + 14) = 0;
    _os_log_impl(&dword_24B8D3000, v21, v22, "task end id=%{public}s configured=true displayRepresentation=%{BOOL,public}d", v24, 0x12u);
    __swift_destroy_boxed_opaque_existential_0(v25);
    MEMORY[0x24C251390](v25, -1, -1);
    MEMORY[0x24C251390](v24, -1, -1);
  }

  v31 = *(v0 + 224);
  v32 = *(v0 + 184);
  v33 = *(v0 + 192);
  v34 = *(v0 + 176);
  v35 = *(v0 + 160);
  v36 = [*(v0 + 168) isEnabled];
  v37 = v33[8];
  v38 = (v34 + v33[7]);
  v39 = *v38;
  v40 = v38[1];
  v41 = *(v34 + v37);
  v42 = *(v34 + v37 + 8);

  sub_24BAA7E3C();
  v43 = v33[6];
  *(v35 + v33[11]) = 0;
  *(v35 + v33[5]) = 1;
  *(v35 + v43) = v36;
  v44 = (v35 + v33[7]);
  *v44 = v39;
  v44[1] = v40;
  v45 = (v35 + v33[8]);
  *v45 = v41;
  v45[1] = v42;
  *(v35 + v33[9]) = v32;
  *(v35 + v33[10]) = v31;
  v46 = v31;
  v47 = v32;
  sub_24B9B14A4(0);

  v48 = *(v0 + 8);

  return v48();
}

uint64_t sub_24B98798C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *__swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063458);
    v5 = swift_allocError();
    *v6 = a3;
    v7 = a3;

    return MEMORY[0x282200958](v4, v5);
  }

  else
  {
    sub_24B8F37E8(0, &unk_27F066B20);
    **(*(v4 + 64) + 40) = sub_24BAAA12C();

    return MEMORY[0x282200950](v4);
  }
}

uint64_t sub_24B987A7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0646E8);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v20 - v9;
  sub_24B9A1B54(a1, v20 - v9);
  v11 = sub_24BAAA1DC();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_24B8F35E4(v10, &qword_27F0646E8);
    if (*(a3 + 16))
    {
LABEL_3:
      swift_getObjectType();
      swift_unknownObjectRetain();
      v13 = sub_24BAAA17C();
      v15 = v14;
      swift_unknownObjectRelease();
      goto LABEL_6;
    }
  }

  else
  {
    sub_24BAAA1CC();
    (*(v12 + 8))(v10, v11);
    if (*(a3 + 16))
    {
      goto LABEL_3;
    }
  }

  v13 = 0;
  v15 = 0;
LABEL_6:
  v16 = *v4;
  v17 = swift_allocObject();
  *(v17 + 16) = a2;
  *(v17 + 24) = a3;
  type metadata accessor for FocusConfigurationAction(0);
  v18 = (v15 | v13);
  if (v15 | v13)
  {
    v21[0] = 0;
    v21[1] = 0;
    v18 = v21;
    v21[2] = v13;
    v21[3] = v15;
  }

  v20[1] = 1;
  v20[2] = v18;
  v20[3] = v16;
  swift_task_create();
}

void sub_24B987C88(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v9[0] = *(a2 + 16);
  swift_bridgeObjectRetain_n();
  sub_24B99AFA0(v9);

  sub_24B98A6EC(v9[0]);
  if (qword_27F0630F8 != -1)
  {
    swift_once();
  }

  v3 = sub_24BAA812C();
  __swift_project_value_buffer(v3, qword_27F077050);

  v4 = sub_24BAA810C();
  v5 = sub_24BAAA2CC();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v10 = v7;
    *v6 = 136446210;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_24BAA81BC();

    v8 = sub_24B8E49D4(v9[0], v9[1], &v10);

    *(v6 + 4) = v8;
    _os_log_impl(&dword_24B8D3000, v4, v5, "refresh end %{public}s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x24C251390](v7, -1, -1);
    MEMORY[0x24C251390](v6, -1, -1);
  }
}

uint64_t sub_24B987E88(uint64_t a1)
{
  v2[32] = a1;
  v2[33] = v1;
  v2[34] = type metadata accessor for FocusConfigurationAction(0);
  v2[35] = swift_task_alloc();
  v2[36] = swift_task_alloc();
  v2[37] = swift_task_alloc();
  v2[38] = swift_task_alloc();
  v2[39] = swift_task_alloc();
  sub_24BAAA1BC();
  v2[40] = sub_24BAAA1AC();
  v3 = sub_24BAAA17C();
  v2[41] = v3;
  v2[42] = v4;

  return MEMORY[0x2822009F8](sub_24B987FB4, v3, v4);
}

uint64_t sub_24B987FB4()
{
  v54 = v0;
  v53[1] = *MEMORY[0x277D85DE8];
  v1 = *(*(v0 + 256) + *(*(v0 + 272) + 40));
  *(v0 + 344) = v1;
  if (v1)
  {
    v2 = [objc_opt_self() policyWithActionMetadata_];
    *(v0 + 192) = 0;
    *(v0 + 352) = v2;
    v3 = [v2 connectionWithError_];
    *(v0 + 360) = v3;
    v4 = *(v0 + 192);
    if (v3)
    {
      v5 = v3;
      v6 = *(*(v0 + 256) + *(*(v0 + 272) + 36));
      v7 = v4;
      v8 = [v6 parameters];
      if (!v8)
      {
        sub_24B8F37E8(0, &qword_27F066A90);
        sub_24BAAA12C();
        v8 = sub_24BAAA11C();
      }

      v9 = [v2 actionWithParameters_];
      *(v0 + 368) = v9;

      *(v0 + 16) = v0;
      *(v0 + 56) = v0 + 216;
      *(v0 + 24) = sub_24B988728;
      v10 = swift_continuation_init();
      *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F066AF8);
      *(v0 + 80) = MEMORY[0x277D85DD0];
      *(v0 + 88) = 1107296256;
      *(v0 + 96) = sub_24B98A3BC;
      *(v0 + 104) = &block_descriptor_344;
      *(v0 + 112) = v10;
      [v5 fetchActionAppContextForAction:v9 completionHandler:v0 + 80];

      return MEMORY[0x282200938](v0 + 16);
    }

    v12 = v4;

    v13 = sub_24BAA7CCC();

    swift_willThrow();
    *(v0 + 200) = v13;
    v14 = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063458);
    sub_24B8F37E8(0, &unk_27F063460);
    if (swift_dynamicCast())
    {

      v15 = *(v0 + 208);
      if (qword_27F0630F8 != -1)
      {
        swift_once();
      }

      v16 = *(v0 + 288);
      v17 = *(v0 + 256);
      v18 = sub_24BAA812C();
      __swift_project_value_buffer(v18, qword_27F077050);
      v19 = sub_24BAAA2AC();
      sub_24B9A1C8C(v17, v16, type metadata accessor for FocusConfigurationAction);
      v20 = v15;
      v21 = sub_24BAA810C();

      v22 = os_log_type_enabled(v21, v19);
      v23 = *(v0 + 344);
      v24 = *(v0 + 288);
      if (v22)
      {
        v25 = *(v0 + 272);
        v26 = swift_slowAlloc();
        v27 = swift_slowAlloc();
        v53[0] = v27;
        *v26 = 136446466;
        v28 = (v24 + *(v25 + 32));
        v29 = *v28;
        v30 = v28[1];

        sub_24B9A1CF4(v24, type metadata accessor for FocusConfigurationAction);
        v31 = sub_24B8E49D4(v29, v30, v53);

        *(v26 + 4) = v31;
        *(v26 + 12) = 2082;
        v32 = [v20 debugDescription];
        v33 = sub_24BAAA01C();
        v35 = v34;

        v36 = sub_24B8E49D4(v33, v35, v53);

        *(v26 + 14) = v36;
        _os_log_impl(&dword_24B8D3000, v21, v19, "Failed to fetch appContext for action; bundleIdentifier=%{public}s error=%{public}s", v26, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x24C251390](v27, -1, -1);
        MEMORY[0x24C251390](v26, -1, -1);
      }

      else
      {

        sub_24B9A1CF4(v24, type metadata accessor for FocusConfigurationAction);
      }
    }

    else
    {

      if (qword_27F0630F8 != -1)
      {
        swift_once();
      }

      v37 = *(v0 + 280);
      v38 = *(v0 + 256);
      v39 = sub_24BAA812C();
      __swift_project_value_buffer(v39, qword_27F077050);
      v40 = sub_24BAAA2AC();
      sub_24B9A1C8C(v38, v37, type metadata accessor for FocusConfigurationAction);
      v41 = sub_24BAA810C();
      v42 = os_log_type_enabled(v41, v40);
      v43 = *(v0 + 344);
      v44 = *(v0 + 280);
      if (v42)
      {
        v45 = *(v0 + 272);
        v46 = swift_slowAlloc();
        v47 = swift_slowAlloc();
        v53[0] = v47;
        *v46 = 136446210;
        v48 = (v44 + *(v45 + 32));
        v49 = *v48;
        v50 = v48[1];

        sub_24B9A1CF4(v44, type metadata accessor for FocusConfigurationAction);
        v51 = sub_24B8E49D4(v49, v50, v53);

        *(v46 + 4) = v51;
        _os_log_impl(&dword_24B8D3000, v41, v40, "Failed to fetch appContext for action; bundleIdentifier=%{public}s", v46, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v47);
        MEMORY[0x24C251390](v47, -1, -1);
        MEMORY[0x24C251390](v46, -1, -1);
      }

      else
      {

        sub_24B9A1CF4(v44, type metadata accessor for FocusConfigurationAction);
      }
    }
  }

  else
  {
  }

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_24B988728()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 376) = v2;
  v3 = *(v1 + 336);
  v4 = *(v1 + 328);
  if (v2)
  {
    v5 = sub_24B989E88;
  }

  else
  {
    v5 = sub_24B988884;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_24B988884()
{
  v62 = v0;
  v61[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 216);
  *(v0 + 384) = v1;
  v2 = [v1 notificationFilterPredicate];
  if (!v2)
  {
    v5 = 0;
    goto LABEL_15;
  }

  v3 = v2;
  v4 = objc_allocWithZone(MEMORY[0x277D05A78]);
  v5 = v3;
  v6 = [v4 init];
  *(v0 + 240) = 0;
  *(v0 + 248) = 0;
  if ([v6 validatePredicate:v5 compileTimeIssues:v0 + 240 runTimeIssues:v0 + 248])
  {

    goto LABEL_15;
  }

  v7 = *(v0 + 240);
  v8 = qword_27F0630F8;
  v59 = *(v0 + 248);
  v60 = v7;
  if (v8 != -1)
  {
    swift_once();
  }

  v10 = *(v0 + 304);
  v9 = *(v0 + 312);
  v11 = *(v0 + 256);
  v12 = sub_24BAA812C();
  __swift_project_value_buffer(v12, qword_27F077050);
  sub_24B9A1C8C(v11, v9, type metadata accessor for FocusConfigurationAction);
  sub_24B9A1C8C(v11, v10, type metadata accessor for FocusConfigurationAction);

  v13 = sub_24BAA810C();
  v14 = sub_24BAAA2CC();

  if (!os_log_type_enabled(v13, v14))
  {
    v32 = *(v0 + 304);
    v31 = *(v0 + 312);

    sub_24B9A1CF4(v32, type metadata accessor for FocusConfigurationAction);
    sub_24B9A1CF4(v31, type metadata accessor for FocusConfigurationAction);
    goto LABEL_14;
  }

  v56 = v14;
  log = v13;
  v15 = swift_slowAlloc();
  v16 = swift_slowAlloc();
  v55 = swift_slowAlloc();
  v61[0] = v55;
  *v15 = 138544130;
  v17 = v60;
  v58 = v6;
  if (!v60)
  {
    if (!v59)
    {
      v17 = 0;
      *(v15 + 4) = 0;
      goto LABEL_12;
    }

    v17 = v59;
  }

  *(v15 + 4) = v17;
  v18 = v60;
LABEL_12:
  v20 = *(v0 + 304);
  v19 = *(v0 + 312);
  v21 = *(v0 + 272);
  v54 = v16;
  *v16 = v17;
  *(v15 + 12) = 2082;
  v22 = (v19 + *(v21 + 32));
  v24 = *v22;
  v23 = v22[1];

  sub_24B9A1CF4(v19, type metadata accessor for FocusConfigurationAction);
  v25 = sub_24B8E49D4(v24, v23, v61);

  *(v15 + 14) = v25;
  *(v15 + 22) = 2082;
  v26 = (v20 + *(v21 + 28));
  v27 = *v26;
  v28 = v26[1];

  sub_24B9A1CF4(v20, type metadata accessor for FocusConfigurationAction);
  v29 = sub_24B8E49D4(v27, v28, v61);

  *(v15 + 24) = v29;
  *(v15 + 32) = 2082;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24BAA81BC();

  v30 = sub_24B8E49D4(*(v0 + 176), *(v0 + 184), v61);

  *(v15 + 34) = v30;
  _os_log_impl(&dword_24B8D3000, log, v56, "Notification filter predicate from App Context did not validate, issues=%{public}@ bundleIdentifier=%{public}s actionIdentifier=%{public}s modeIdentifier=%{public}s", v15, 0x2Au);
  sub_24B8F35E4(v54, &qword_27F064510);
  MEMORY[0x24C251390](v54, -1, -1);
  swift_arrayDestroy();
  MEMORY[0x24C251390](v55, -1, -1);
  MEMORY[0x24C251390](v15, -1, -1);

LABEL_14:
  v5 = 0;
LABEL_15:
  *(v0 + 392) = v5;
  if (qword_27F0630F8 != -1)
  {
    swift_once();
  }

  v33 = *(v0 + 296);
  v34 = *(v0 + 256);
  v35 = sub_24BAA812C();
  __swift_project_value_buffer(v35, qword_27F077050);
  sub_24B9A1C8C(v34, v33, type metadata accessor for FocusConfigurationAction);
  v36 = v1;
  v37 = sub_24BAA810C();
  v38 = sub_24BAAA2CC();

  v39 = os_log_type_enabled(v37, v38);
  v40 = *(v0 + 296);
  if (v39)
  {
    v41 = *(v0 + 272);
    v42 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v61[0] = v44;
    *v42 = 138412802;
    *(v42 + 4) = v36;
    *v43 = v36;
    *(v42 + 12) = 2112;
    v45 = [v36 notificationFilterPredicate];
    *(v42 + 14) = v45;
    v43[1] = v45;
    *(v42 + 22) = 2082;
    v46 = (v40 + *(v41 + 32));
    v47 = *v46;
    v48 = v46[1];

    sub_24B9A1CF4(v40, type metadata accessor for FocusConfigurationAction);
    v49 = sub_24B8E49D4(v47, v48, v61);

    *(v42 + 24) = v49;
    _os_log_impl(&dword_24B8D3000, v37, v38, "Found appContext for action; appContext=%@ filterPredicate=%@ bundleIdentifier=%{public}s", v42, 0x20u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F064510);
    swift_arrayDestroy();
    MEMORY[0x24C251390](v43, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v44);
    MEMORY[0x24C251390](v44, -1, -1);
    MEMORY[0x24C251390](v42, -1, -1);
  }

  else
  {

    sub_24B9A1CF4(v40, type metadata accessor for FocusConfigurationAction);
  }

  v50 = *(v0 + 264);
  v51 = OBJC_IVAR____TtC15FocusSettingsUI23ActivityConfigViewModel_focusConfigurationActionActor;
  *(v0 + 400) = OBJC_IVAR____TtC15FocusSettingsUI23ActivityConfigViewModel_focusConfigurationActionActor;
  v52 = *(v50 + v51);
  *(v0 + 408) = v52;

  return MEMORY[0x2822009F8](sub_24B988F70, v52, 0);
}

uint64_t sub_24B988F70()
{
  v1 = *(v0[51] + 136);
  v0[52] = v1;
  v2 = v1;

  v3 = v0[41];
  v4 = v0[42];

  return MEMORY[0x2822009F8](sub_24B989010, v3, v4);
}

uint64_t sub_24B989010()
{
  v66 = v0;
  v65[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 416);
  v2 = *(v0 + 272);
  v3 = *(v0 + 256);
  v4 = [*(v0 + 384) notificationFilterPredicate];
  v5 = (v3 + *(v2 + 28));
  *(v0 + 424) = *v5;
  *(v0 + 432) = v5[1];
  v6 = sub_24BAA9FDC();
  v7 = (v3 + *(v2 + 32));
  *(v0 + 440) = *v7;
  *(v0 + 448) = v7[1];
  v8 = objc_allocWithZone(MEMORY[0x277D058C8]);
  v9 = sub_24BAA9FDC();
  v10 = [v8 initWithBundleID_];

  swift_getKeyPath();
  swift_getKeyPath();
  sub_24BAA81BC();

  v11 = sub_24BAA9FDC();

  *(v0 + 224) = 0;
  v12 = [v1 setAppConfigurationPredicate:v4 forActionIdentifier:v6 forApplicationIdentifier:v10 modeIdentifier:v11 error:v0 + 224];

  v13 = *(v0 + 224);
  if (v12)
  {
    v14 = *(*(v0 + 264) + *(v0 + 400));
    *(v0 + 456) = v14;
    v15 = v13;

    return MEMORY[0x2822009F8](sub_24B98973C, v14, 0);
  }

  else
  {
    v17 = *(v0 + 384);
    v16 = *(v0 + 392);
    v19 = *(v0 + 360);
    v18 = *(v0 + 368);
    v20 = *(v0 + 352);
    v21 = v13;

    v22 = sub_24BAA7CCC();

    swift_willThrow();
    v23 = (v0 + 200);
    *(v0 + 200) = v22;
    v24 = v22;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063458);
    sub_24B8F37E8(0, &unk_27F063460);
    if (swift_dynamicCast())
    {

      v25 = *(v0 + 208);
      if (qword_27F0630F8 != -1)
      {
        swift_once();
      }

      v26 = *(v0 + 288);
      v27 = *(v0 + 256);
      v28 = sub_24BAA812C();
      __swift_project_value_buffer(v28, qword_27F077050);
      v29 = sub_24BAAA2AC();
      sub_24B9A1C8C(v27, v26, type metadata accessor for FocusConfigurationAction);
      v30 = v25;
      v31 = sub_24BAA810C();

      v32 = os_log_type_enabled(v31, v29);
      v33 = *(v0 + 344);
      v34 = *(v0 + 288);
      if (v32)
      {
        v35 = *(v0 + 272);
        v36 = swift_slowAlloc();
        v37 = swift_slowAlloc();
        v65[0] = v37;
        *v36 = 136446466;
        v38 = (v34 + *(v35 + 32));
        v39 = *v38;
        v40 = v38[1];

        sub_24B9A1CF4(v34, type metadata accessor for FocusConfigurationAction);
        v41 = sub_24B8E49D4(v39, v40, v65);

        *(v36 + 4) = v41;
        *(v36 + 12) = 2082;
        v42 = [v30 debugDescription];
        v43 = sub_24BAAA01C();
        v45 = v44;

        v46 = sub_24B8E49D4(v43, v45, v65);

        *(v36 + 14) = v46;
        _os_log_impl(&dword_24B8D3000, v31, v29, "Failed to fetch appContext for action; bundleIdentifier=%{public}s error=%{public}s", v36, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x24C251390](v37, -1, -1);
        MEMORY[0x24C251390](v36, -1, -1);

        v47 = *(v0 + 200);
      }

      else
      {

        sub_24B9A1CF4(v34, type metadata accessor for FocusConfigurationAction);
        v47 = *v23;
      }
    }

    else
    {

      if (qword_27F0630F8 != -1)
      {
        swift_once();
      }

      v48 = *(v0 + 280);
      v49 = *(v0 + 256);
      v50 = sub_24BAA812C();
      __swift_project_value_buffer(v50, qword_27F077050);
      v51 = sub_24BAAA2AC();
      sub_24B9A1C8C(v49, v48, type metadata accessor for FocusConfigurationAction);
      v52 = sub_24BAA810C();
      v53 = os_log_type_enabled(v52, v51);
      v54 = *(v0 + 344);
      v55 = *(v0 + 280);
      if (v53)
      {
        v56 = *(v0 + 272);
        v57 = swift_slowAlloc();
        v58 = swift_slowAlloc();
        v65[0] = v58;
        *v57 = 136446210;
        v59 = (v55 + *(v56 + 32));
        v60 = *v59;
        v61 = v59[1];

        sub_24B9A1CF4(v55, type metadata accessor for FocusConfigurationAction);
        v62 = sub_24B8E49D4(v60, v61, v65);

        *(v57 + 4) = v62;
        _os_log_impl(&dword_24B8D3000, v52, v51, "Failed to fetch appContext for action; bundleIdentifier=%{public}s", v57, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v58);
        MEMORY[0x24C251390](v58, -1, -1);
        MEMORY[0x24C251390](v57, -1, -1);
      }

      else
      {

        sub_24B9A1CF4(v55, type metadata accessor for FocusConfigurationAction);
      }
    }

    v63 = *(v0 + 8);

    return v63();
  }
}

uint64_t sub_24B98973C()
{
  v1 = *(v0[57] + 136);
  v0[58] = v1;
  v2 = v1;

  v3 = v0[41];
  v4 = v0[42];

  return MEMORY[0x2822009F8](sub_24B9897DC, v3, v4);
}

uint64_t sub_24B9897DC()
{
  v61 = v0;
  v60[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 464);
  v2 = *(v0 + 384);

  v3 = [v2 targetContentIdentifierPrefix];
  v4 = sub_24BAA9FDC();
  v5 = objc_allocWithZone(MEMORY[0x277D058C8]);
  v6 = sub_24BAA9FDC();
  v7 = [v5 initWithBundleID_];

  swift_getKeyPath();
  swift_getKeyPath();
  sub_24BAA81BC();

  v8 = sub_24BAA9FDC();

  *(v0 + 232) = 0;
  LODWORD(v5) = [v1 setAppConfigurationTargetContentIdentifierPrefix:v3 forActionIdentifier:v4 forApplicationIdentifier:v7 modeIdentifier:v8 error:v0 + 232];

  v9 = *(v0 + 232);
  v10 = *(v0 + 392);
  v11 = *(v0 + 384);
  v12 = *(v0 + 360);
  v13 = *(v0 + 368);
  v14 = *(v0 + 352);
  if (v5)
  {
    v15 = *(v0 + 344);
    v16 = v9;
  }

  else
  {
    v19 = (v0 + 200);
    v20 = v9;
    v21 = sub_24BAA7CCC();

    swift_willThrow();
    *(v0 + 200) = v21;
    v22 = v21;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063458);
    sub_24B8F37E8(0, &unk_27F063460);
    if (swift_dynamicCast())
    {

      v23 = *(v0 + 208);
      if (qword_27F0630F8 != -1)
      {
        swift_once();
      }

      v24 = *(v0 + 288);
      v25 = *(v0 + 256);
      v26 = sub_24BAA812C();
      __swift_project_value_buffer(v26, qword_27F077050);
      v27 = sub_24BAAA2AC();
      sub_24B9A1C8C(v25, v24, type metadata accessor for FocusConfigurationAction);
      v28 = v23;
      v29 = sub_24BAA810C();

      v30 = os_log_type_enabled(v29, v27);
      v31 = *(v0 + 344);
      v32 = *(v0 + 288);
      if (v30)
      {
        v33 = *(v0 + 272);
        v34 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        v60[0] = v35;
        *v34 = 136446466;
        v36 = (v32 + *(v33 + 32));
        v37 = *v36;
        v38 = v36[1];

        sub_24B9A1CF4(v32, type metadata accessor for FocusConfigurationAction);
        v39 = sub_24B8E49D4(v37, v38, v60);

        *(v34 + 4) = v39;
        *(v34 + 12) = 2082;
        v40 = [v28 debugDescription];
        v41 = sub_24BAAA01C();
        v43 = v42;

        v44 = sub_24B8E49D4(v41, v43, v60);

        *(v34 + 14) = v44;
        _os_log_impl(&dword_24B8D3000, v29, v27, "Failed to fetch appContext for action; bundleIdentifier=%{public}s error=%{public}s", v34, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x24C251390](v35, -1, -1);
        MEMORY[0x24C251390](v34, -1, -1);
      }

      else
      {

        sub_24B9A1CF4(v32, type metadata accessor for FocusConfigurationAction);
      }
    }

    else
    {

      if (qword_27F0630F8 != -1)
      {
        swift_once();
      }

      v45 = *(v0 + 280);
      v46 = *(v0 + 256);
      v47 = sub_24BAA812C();
      __swift_project_value_buffer(v47, qword_27F077050);
      v48 = sub_24BAAA2AC();
      sub_24B9A1C8C(v46, v45, type metadata accessor for FocusConfigurationAction);
      v49 = sub_24BAA810C();
      v50 = os_log_type_enabled(v49, v48);
      v51 = *(v0 + 344);
      v52 = *(v0 + 280);
      if (v50)
      {
        v53 = *(v0 + 272);
        v54 = swift_slowAlloc();
        v55 = swift_slowAlloc();
        v60[0] = v55;
        *v54 = 136446210;
        v56 = (v52 + *(v53 + 32));
        v57 = *v56;
        v58 = v56[1];

        sub_24B9A1CF4(v52, type metadata accessor for FocusConfigurationAction);
        v59 = sub_24B8E49D4(v57, v58, v60);

        *(v54 + 4) = v59;
        _os_log_impl(&dword_24B8D3000, v49, v48, "Failed to fetch appContext for action; bundleIdentifier=%{public}s", v54, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v55);
        MEMORY[0x24C251390](v55, -1, -1);
        MEMORY[0x24C251390](v54, -1, -1);
      }

      else
      {

        sub_24B9A1CF4(v52, type metadata accessor for FocusConfigurationAction);
      }
    }
  }

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_24B989E88()
{
  v48 = v0;
  v47[1] = *MEMORY[0x277D85DE8];
  v1 = v0[46];
  v3 = v0[44];
  v2 = v0[45];

  swift_willThrow();

  v4 = v0[47];
  v0[25] = v4;
  v5 = (v0 + 25);
  v6 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063458);
  sub_24B8F37E8(0, &unk_27F063460);
  if (swift_dynamicCast())
  {

    v7 = v0[26];
    if (qword_27F0630F8 != -1)
    {
      swift_once();
    }

    v8 = v0[36];
    v9 = v0[32];
    v10 = sub_24BAA812C();
    __swift_project_value_buffer(v10, qword_27F077050);
    v11 = sub_24BAAA2AC();
    sub_24B9A1C8C(v9, v8, type metadata accessor for FocusConfigurationAction);
    v12 = v7;
    v13 = sub_24BAA810C();

    v14 = os_log_type_enabled(v13, v11);
    v15 = v0[43];
    v16 = v0[36];
    if (v14)
    {
      v17 = v0[34];
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v47[0] = v19;
      *v18 = 136446466;
      v20 = (v16 + *(v17 + 32));
      v21 = *v20;
      v22 = v20[1];

      sub_24B9A1CF4(v16, type metadata accessor for FocusConfigurationAction);
      v23 = sub_24B8E49D4(v21, v22, v47);

      *(v18 + 4) = v23;
      *(v18 + 12) = 2082;
      v24 = [v12 debugDescription];
      v25 = sub_24BAAA01C();
      v27 = v26;

      v28 = sub_24B8E49D4(v25, v27, v47);

      *(v18 + 14) = v28;
      _os_log_impl(&dword_24B8D3000, v13, v11, "Failed to fetch appContext for action; bundleIdentifier=%{public}s error=%{public}s", v18, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C251390](v19, -1, -1);
      MEMORY[0x24C251390](v18, -1, -1);

      v29 = v0[25];
    }

    else
    {

      sub_24B9A1CF4(v16, type metadata accessor for FocusConfigurationAction);
      v29 = *v5;
    }
  }

  else
  {

    if (qword_27F0630F8 != -1)
    {
      swift_once();
    }

    v30 = v0[35];
    v31 = v0[32];
    v32 = sub_24BAA812C();
    __swift_project_value_buffer(v32, qword_27F077050);
    v33 = sub_24BAAA2AC();
    sub_24B9A1C8C(v31, v30, type metadata accessor for FocusConfigurationAction);
    v34 = sub_24BAA810C();
    v35 = os_log_type_enabled(v34, v33);
    v36 = v0[43];
    v37 = v0[35];
    if (v35)
    {
      v38 = v0[34];
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v47[0] = v40;
      *v39 = 136446210;
      v41 = (v37 + *(v38 + 32));
      v42 = *v41;
      v43 = v41[1];

      sub_24B9A1CF4(v37, type metadata accessor for FocusConfigurationAction);
      v44 = sub_24B8E49D4(v42, v43, v47);

      *(v39 + 4) = v44;
      _os_log_impl(&dword_24B8D3000, v34, v33, "Failed to fetch appContext for action; bundleIdentifier=%{public}s", v39, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v40);
      MEMORY[0x24C251390](v40, -1, -1);
      MEMORY[0x24C251390](v39, -1, -1);
    }

    else
    {

      sub_24B9A1CF4(v37, type metadata accessor for FocusConfigurationAction);
    }
  }

  v45 = v0[1];

  return v45();
}

uint64_t sub_24B98A3BC(uint64_t a1, void *a2, void *a3)
{
  v5 = __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  v6 = *v5;
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063458);
    v7 = swift_allocError();
    *v8 = a3;
    v9 = a3;

    return MEMORY[0x282200958](v6, v7);
  }

  else
  {
    if (a2)
    {
      **(v6[8] + 40) = a2;
      v10 = a2;
      v5 = v6;
    }

    else
    {
      __break(1u);
    }

    return MEMORY[0x282200950](v5);
  }
}

uint64_t sub_24B98A494(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  sub_24BAAA1BC();
  v5[5] = sub_24BAAA1AC();
  v7 = sub_24BAAA17C();
  v5[6] = v7;
  v5[7] = v6;

  return MEMORY[0x2822009F8](sub_24B98A52C, v7, v6);
}

uint64_t sub_24B98A52C()
{
  v1 = *(v0[3] + OBJC_IVAR____TtC15FocusSettingsUI23ActivityConfigViewModel_focusConfigurationActionActor);
  v0[8] = v1;
  swift_getKeyPath();
  swift_getKeyPath();

  sub_24BAA81BC();

  v0[9] = v0[2];

  return MEMORY[0x2822009F8](sub_24B98A5FC, v1, 0);
}

uint64_t sub_24B98A5FC()
{
  sub_24B98B1A0(v0[4], v0[9]);

  v1 = v0[6];
  v2 = v0[7];

  return MEMORY[0x2822009F8](sub_24B98A678, v1, v2);
}

uint64_t sub_24B98A678()
{

  v1 = *(v0 + 8);

  return v1();
}

void *sub_24B98A71C()
{
  v72[6] = *MEMORY[0x277D85DE8];
  v1 = type metadata accessor for FocusConfigurationAction(0);
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = &v61 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v61 - v6;
  v8 = *(v0 + 128);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F064710);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24BAAE690;
  *(inited + 32) = [objc_opt_self() focusConfigurationProtocol];
  sub_24B8F3010(inited);
  swift_setDeallocating();
  swift_arrayDestroy();
  v10 = sub_24B8F37E8(0, &qword_27F063450);
  sub_24B8F1128(&qword_27F066A80, &qword_27F063450);
  v11 = sub_24BAAA1FC();

  v72[0] = 0;
  v12 = [v8 actionsConformingToSystemProtocols:v11 logicalType:2 bundleIdentifier:0 error:v72];

  v13 = v72[0];
  if (!v12)
  {
    v58 = v72[0];
    v59 = sub_24BAA7CCC();

    swift_willThrow();
    v22 = MEMORY[0x277D84F90];
    goto LABEL_31;
  }

  v69 = v10;
  v70 = v2;
  v71 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F066A88);
  v14 = sub_24BAA9EEC();
  v15 = v13;

  v16 = 0;
  v17 = v14 + 64;
  v18 = 1 << *(v14 + 32);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & *(v14 + 64);
  v21 = (v18 + 63) >> 6;
  v22 = MEMORY[0x277D84F90];
LABEL_6:
  while (v20)
  {
LABEL_11:
    v25 = 0;
    v26 = __clz(__rbit64(v20));
    v20 &= v20 - 1;
    v27 = v26 | (v16 << 6);
    v28 = *(*(v14 + 56) + 8 * v27);
    v29 = 1 << *(v28 + 32);
    v30 = (v29 + 63) >> 6;
    v31 = (v28 + 64);
    while (1)
    {
      v33 = *v31++;
      v32 = v33;
      if (v33)
      {
        break;
      }

      v25 -= 64;
      if (!--v30)
      {
        goto LABEL_6;
      }
    }

    v23 = __clz(__rbit64(v32)) - v25;
    if (v23 != v29)
    {
      if (v23 < 0 || v23 >= v29)
      {
        goto LABEL_33;
      }

      if (((*(v28 + 64 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v23) & 1) == 0)
      {
        goto LABEL_34;
      }

      v64 = v14;
      v34 = (*(v14 + 48) + 16 * v27);
      v35 = v34[1];
      v66 = *v34;
      v36 = *(*(v28 + 56) + 8 * v23);

      v68 = v36;
      v65 = [v36 identifier];
      if (!v65)
      {
        sub_24BAAA01C();
        v65 = sub_24BAA9FDC();
      }

      v62 = v7;
      v63 = v35;
      v37 = sub_24BAA9FDC();
      v38 = v68;
      v39 = [v68 mangledTypeNameForBundleIdentifier_];

      v40 = v38;
      if (!v39)
      {
        sub_24BAAA01C();
        v39 = sub_24BAA9FDC();

        v40 = v38;
      }

      v41 = v39;
      v67 = v1;
      v42 = [v40 systemProtocols];
      if (!v42)
      {
        sub_24BAAA12C();
        v42 = sub_24BAAA11C();
      }

      v43 = objc_allocWithZone(MEMORY[0x277D23720]);
      sub_24B8F37E8(0, &qword_27F066A90);
      v44 = sub_24BAAA11C();
      v45 = v43;
      v46 = v65;
      v61 = [v45 initWithIdentifier:v65 mangledTypeName:v41 openAppWhenRun:0 outputFlags:0 outputType:0 systemProtocols:v42 parameters:v44];

      v47 = [v68 identifier];
      v48 = sub_24BAAA01C();
      v50 = v49;

      v7 = v62;
      sub_24BAA7E3C();
      v51 = v67;
      v52 = v67[6];
      *&v7[v67[11]] = 0;
      v7[v51[5]] = 0;
      v7[v52] = 1;
      v53 = &v7[v51[7]];
      *v53 = v48;
      v53[1] = v50;
      v54 = &v7[v51[8]];
      v55 = v63;
      *v54 = v66;
      *(v54 + 1) = v55;
      *&v7[v51[9]] = v61;
      *&v7[v51[10]] = v68;
      sub_24B9A1C8C(v7, v71, type metadata accessor for FocusConfigurationAction);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v22 = sub_24B99ABF8(0, v22[2] + 1, 1, v22, &qword_27F0645D0, &unk_24BAAEEF8, type metadata accessor for FocusConfigurationAction);
      }

      v57 = v22[2];
      v56 = v22[3];
      if (v57 >= v56 >> 1)
      {
        v22 = sub_24B99ABF8(v56 > 1, v57 + 1, 1, v22, &qword_27F0645D0, &unk_24BAAEEF8, type metadata accessor for FocusConfigurationAction);
      }

      sub_24B9A1CF4(v7, type metadata accessor for FocusConfigurationAction);
      v22[2] = v57 + 1;
      sub_24B9A1D54(v71, v22 + ((*(v70 + 80) + 32) & ~*(v70 + 80)) + *(v70 + 72) * v57, type metadata accessor for FocusConfigurationAction);
      v14 = v64;
      v1 = v67;
    }
  }

  while (1)
  {
    v24 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
    }

    if (v24 >= v21)
    {
      break;
    }

    v20 = *(v17 + 8 * v24);
    ++v16;
    if (v20)
    {
      v16 = v24;
      goto LABEL_11;
    }
  }

LABEL_31:
  v72[0] = v22;

  sub_24B99AFA0(v72);

  return v72[0];
}

uint64_t sub_24B98AE34()
{
  v1 = v0;
  v27[1] = *MEMORY[0x277D85DE8];
  v2 = *(v0 + 136);

  v3 = sub_24BAA9FDC();

  v26 = 0;
  v4 = [v2 getAppActionsForModeIdentifier:v3 error:&v26];

  v5 = v26;
  if (v4)
  {
    sub_24B8F37E8(0, &qword_27F063160);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F066A70);
    sub_24B8F1128(&qword_27F063168, &qword_27F063160);
    v6 = sub_24BAA9EEC();
    v7 = v5;
  }

  else
  {
    v8 = v26;
    v9 = sub_24BAA7CCC();

    swift_willThrow();
    v26 = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063458);
    sub_24B8F37E8(0, &unk_27F063460);
    swift_dynamicCast();
    if (qword_27F0630F8 != -1)
    {
      swift_once();
    }

    v10 = sub_24BAA812C();
    __swift_project_value_buffer(v10, qword_27F077050);
    v11 = sub_24BAAA2AC();
    v12 = v25;

    v13 = sub_24BAA810C();

    if (os_log_type_enabled(v13, v11))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v27[0] = v15;
      *v14 = 136446466;
      v16 = [v12 localizedDescription];
      v17 = sub_24BAAA01C();
      v19 = v18;

      v20 = sub_24B8E49D4(v17, v19, v27);

      *(v14 + 4) = v20;
      *(v14 + 12) = 2082;
      v22 = *(v1 + 112);
      v21 = *(v1 + 120);

      v23 = sub_24B8E49D4(v22, v21, v27);

      *(v14 + 14) = v23;
      _os_log_impl(&dword_24B8D3000, v13, v11, "Unable to get configuration actions; error=%{public}s mode=%{public}s", v14, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C251390](v15, -1, -1);
      MEMORY[0x24C251390](v14, -1, -1);
    }

    else
    {
    }

    return MEMORY[0x277D84F98];
  }

  return v6;
}

void sub_24B98B1A0(uint64_t a1, int64_t a2)
{
  v237[9] = *MEMORY[0x277D85DE8];
  v234 = type metadata accessor for FocusConfigurationAction(0);
  v232 = *(v234 - 1);
  v5 = MEMORY[0x28223BE20](v234);
  v7 = v215 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = v215 - v9;
  v11 = MEMORY[0x28223BE20](v8);
  v227 = v215 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v220 = v215 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v17 = v215 - v16;
  v18 = MEMORY[0x28223BE20](v15);
  *&v222 = v215 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v22 = v215 - v21;
  v23 = MEMORY[0x28223BE20](v20);
  v225 = v215 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v233 = (v215 - v26);
  v27 = MEMORY[0x28223BE20](v25);
  v29 = v215 - v28;
  v30 = MEMORY[0x28223BE20](v27);
  v224 = v215 - v31;
  MEMORY[0x28223BE20](v30);
  v33 = v215 - v32;
  if (sub_24B98CD2C(a1, MEMORY[0x277D84F90]))
  {
    if (qword_27F0630F8 != -1)
    {
      goto LABEL_120;
    }

    goto LABEL_3;
  }

  v223 = a2;
  v231 = v22;
  v221 = v17;
  v226 = v10;
  v218 = v7;
  v229 = v2;
  v41 = *(a1 + 16);
  v42 = MEMORY[0x277D84F90];
  v230 = v41;
  v216 = a1;
  if (v41)
  {
    v43 = a1;
    v44 = v233;
    v45 = *(v232 + 72);
    v228 = (*(v232 + 80) + 32) & ~*(v232 + 80);
    v46 = v43 + v228;
    v47 = v224;
    do
    {
      sub_24B9A1C8C(v46, v33, type metadata accessor for FocusConfigurationAction);
      if (v33[v234[5]] == 1)
      {
        sub_24B9A1D54(v33, v47, type metadata accessor for FocusConfigurationAction);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v237[0] = v42;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_24B914E10(0, v42[2] + 1, 1);
          v47 = v224;
          v42 = v237[0];
        }

        v50 = v42[2];
        v49 = v42[3];
        if (v50 >= v49 >> 1)
        {
          sub_24B914E10(v49 > 1, v50 + 1, 1);
          v47 = v224;
          v42 = v237[0];
        }

        v42[2] = v50 + 1;
        sub_24B9A1D54(v47, v42 + v228 + v50 * v45, type metadata accessor for FocusConfigurationAction);
      }

      else
      {
        sub_24B9A1CF4(v33, type metadata accessor for FocusConfigurationAction);
      }

      v46 += v45;
      --v41;
    }

    while (v41);
  }

  else
  {
    v44 = v233;
  }

  v52 = v42[2];
  if (v52)
  {
    v237[0] = MEMORY[0x277D84F90];
    sub_24B914D68(0, v52, 0);
    v53 = v237[0];
    v54 = v42 + ((*(v232 + 80) + 32) & ~*(v232 + 80));
    v55 = *(v232 + 72);
    do
    {
      sub_24B9A1C8C(v54, v29, type metadata accessor for FocusConfigurationAction);
      v56 = &v29[v234[8]];
      v57 = *v56;
      v58 = *(v56 + 1);

      sub_24B9A1CF4(v29, type metadata accessor for FocusConfigurationAction);
      v237[0] = v53;
      v60 = v53[2];
      v59 = v53[3];
      if (v60 >= v59 >> 1)
      {
        sub_24B914D68((v59 > 1), v60 + 1, 1);
        v53 = v237[0];
      }

      v53[2] = v60 + 1;
      v61 = &v53[2 * v60];
      v61[4] = v57;
      v61[5] = v58;
      v54 += v55;
      --v52;
    }

    while (v52);

    v44 = v233;
  }

  else
  {

    v53 = MEMORY[0x277D84F90];
  }

  v217 = sub_24B8F0F04(v53);

  v62 = v223[2];
  v63 = MEMORY[0x277D84F90];
  if (v62)
  {
    v64 = (*(v232 + 80) + 32) & ~*(v232 + 80);
    v65 = *(v232 + 72);
    v66 = v223 + v64;
    v67 = MEMORY[0x277D84F90];
    v68 = v225;
    do
    {
      sub_24B9A1C8C(v66, v44, type metadata accessor for FocusConfigurationAction);
      if (*(&v44->isa + v234[5]) == 1)
      {
        sub_24B9A1D54(v44, v68, type metadata accessor for FocusConfigurationAction);
        v69 = swift_isUniquelyReferenced_nonNull_native();
        v237[0] = v67;
        if ((v69 & 1) == 0)
        {
          sub_24B914E10(0, v67[2] + 1, 1);
          v68 = v225;
          v67 = v237[0];
        }

        v71 = v67[2];
        v70 = v67[3];
        if (v71 >= v70 >> 1)
        {
          sub_24B914E10(v70 > 1, v71 + 1, 1);
          v68 = v225;
          v67 = v237[0];
        }

        v67[2] = v71 + 1;
        sub_24B9A1D54(v68, v67 + v64 + v71 * v65, type metadata accessor for FocusConfigurationAction);
        v44 = v233;
      }

      else
      {
        sub_24B9A1CF4(v44, type metadata accessor for FocusConfigurationAction);
      }

      v66 += v65;
      --v62;
    }

    while (v62);
  }

  else
  {
    v67 = MEMORY[0x277D84F90];
  }

  v72 = v67[2];
  if (v72)
  {
    v237[0] = v63;
    sub_24B914D68(0, v72, 0);
    v73 = v237[0];
    v74 = v67 + ((*(v232 + 80) + 32) & ~*(v232 + 80));
    v75 = *(v232 + 72);
    do
    {
      sub_24B9A1C8C(v74, v29, type metadata accessor for FocusConfigurationAction);
      v76 = &v29[v234[8]];
      v78 = *v76;
      v77 = *(v76 + 1);

      sub_24B9A1CF4(v29, type metadata accessor for FocusConfigurationAction);
      v237[0] = v73;
      v80 = v73[2];
      v79 = v73[3];
      if (v80 >= v79 >> 1)
      {
        sub_24B914D68((v79 > 1), v80 + 1, 1);
        v73 = v237[0];
      }

      v73[2] = v80 + 1;
      v81 = &v73[2 * v80];
      v81[4] = v78;
      v81[5] = v77;
      v74 += v75;
      --v72;
    }

    while (v72);
  }

  else
  {

    v73 = MEMORY[0x277D84F90];
  }

  v82 = sub_24B8F0F04(v73);

  v83 = v217;
  v84 = v231;
  if (*(v82 + 16) > v217[2] >> 3)
  {

    v233 = sub_24B8ECB7C(v82, v83);
  }

  else
  {
    v237[0] = v217;

    sub_24B8EA8FC(v82);
    v233 = v237[0];
  }

  v86 = sub_24B8F1710(v85);

  v88 = sub_24B8F1710(v87);

  if (*(v88 + 16) <= v86[2] >> 3)
  {
    v237[0] = v86;
    sub_24B8EAA28(v88);

    v89 = v237[0];
  }

  else
  {
    v89 = sub_24B8EBAD8(v88, v86);
  }

  v91 = v89[32];
  v92 = ((1 << v91) + 63) >> 6;
  v215[1] = v82;
  if ((v91 & 0x3Fu) <= 0xD)
  {
LABEL_51:
    v225 = v92;
    v224 = v215;
    MEMORY[0x28223BE20](v90);
    v94 = v215 - ((v93 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v94, v93);
    v228 = 0;
    a2 = 0;
    v95 = 1 << v89[32];
    v96 = -1;
    if (v95 < 64)
    {
      v96 = ~(-1 << v95);
    }

    v97 = v96 & *(v89 + 7);
    v98 = (v95 + 63) >> 6;
    while (v97)
    {
      v99 = __clz(__rbit64(v97));
      v97 &= v97 - 1;
LABEL_61:
      v102 = v99 | (a2 << 6);
      sub_24B9A1C8C(*(v89 + 6) + *(v232 + 72) * v102, v29, type metadata accessor for FocusConfigurationAction);
      v103 = v29[v234[5]];
      sub_24B9A1CF4(v29, type metadata accessor for FocusConfigurationAction);
      if (v103 == 1)
      {
        *&v94[(v102 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v102;
        if (__OFADD__(v228++, 1))
        {
          __break(1u);
          goto LABEL_65;
        }
      }
    }

    v100 = a2;
    while (1)
    {
      a2 = v100 + 1;
      if (__OFADD__(v100, 1))
      {
        __break(1u);
        goto LABEL_118;
      }

      if (a2 >= v98)
      {
        break;
      }

      v101 = *&v89[8 * a2 + 56];
      ++v100;
      if (v101)
      {
        v99 = __clz(__rbit64(v101));
        v97 = (v101 - 1) & v101;
        goto LABEL_61;
      }
    }

LABEL_65:
    v105 = sub_24BA2944C(v94, v225, v228, v89);
    v224 = 0;
    v84 = v231;
    goto LABEL_66;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

    goto LABEL_51;
  }

  v214 = swift_slowAlloc();
  v105 = sub_24B99FFB0(v214, v92, v89, sub_24B98D308, 0, sub_24BA2B664);
  v224 = 0;

  MEMORY[0x24C251390](v214, -1, -1);
LABEL_66:
  if (qword_27F0630F8 != -1)
  {
    swift_once();
  }

  v106 = sub_24BAA812C();
  v107 = __swift_project_value_buffer(v106, qword_27F077050);
  v108 = sub_24BAAA28C();

  v225 = v107;
  v109 = sub_24BAA810C();

  v110 = os_log_type_enabled(v109, v108);
  v219 = v105;
  if (v110)
  {
    v111 = swift_slowAlloc();
    v112 = swift_slowAlloc();
    v237[0] = v112;
    *v111 = 136315138;
    sub_24B9A1DBC(&qword_27F063440, type metadata accessor for FocusConfigurationAction);
    v113 = sub_24BAAA21C();
    v115 = sub_24B8E49D4(v113, v114, v237);

    *(v111 + 4) = v115;
    _os_log_impl(&dword_24B8D3000, v109, v108, "Modified or new app actions: %s", v111, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v112);
    MEMORY[0x24C251390](v112, -1, -1);
    MEMORY[0x24C251390](v111, -1, -1);
  }

  if (v230)
  {
    v117 = 0;
    v118 = (*(v232 + 80) + 32) & ~*(v232 + 80);
    v119 = *(v232 + 72);
    v120 = v216 + v118;
    v121 = v233 + 7;
    v223 = MEMORY[0x277D84F90];
    do
    {
      sub_24B9A1C8C(v120 + v119 * v117, v84, type metadata accessor for FocusConfigurationAction);
      if (*(v84 + v234[5]) == 1 && v233[2].isa && (v122 = (v84 + v234[8]), v123 = *v122, v124 = v122[1], v125 = v233, sub_24BAAA7FC(), sub_24BAAA07C(), v126 = sub_24BAAA84C(), v127 = -1 << LOBYTE(v125[4].isa), v128 = v126 & ~v127, ((*(&v121->isa + ((v128 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v128) & 1) != 0))
      {
        v129 = ~v127;
        while (1)
        {
          v130 = (v233[6].isa + 16 * v128);
          v131 = *v130 == v123 && v130[1] == v124;
          if (v131 || (sub_24BAAA78C() & 1) != 0)
          {
            break;
          }

          v128 = (v128 + 1) & v129;
          if (((*(&v121->isa + ((v128 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v128) & 1) == 0)
          {
            goto LABEL_72;
          }
        }

        v84 = v231;
        sub_24B9A1D54(v231, v222, type metadata accessor for FocusConfigurationAction);
        v132 = v223;
        v133 = swift_isUniquelyReferenced_nonNull_native();
        v235 = v132;
        if ((v133 & 1) == 0)
        {
          sub_24B914E10(0, v132[2] + 1, 1);
          v132 = v235;
        }

        v135 = v132[2];
        v134 = v132[3];
        if (v135 >= v134 >> 1)
        {
          sub_24B914E10(v134 > 1, v135 + 1, 1);
          v132 = v235;
        }

        v132[2] = v135 + 1;
        v223 = v132;
        sub_24B9A1D54(v222, v132 + v118 + v135 * v119, type metadata accessor for FocusConfigurationAction);
      }

      else
      {
LABEL_72:
        v84 = v231;
        sub_24B9A1CF4(v231, type metadata accessor for FocusConfigurationAction);
      }

      v117 = v117 + 1;
    }

    while (v117 != v230);
  }

  else
  {
    v223 = MEMORY[0x277D84F90];
  }

  v136 = v223;
  v231 = v223[2];
  if (v231)
  {
    v137 = 0;
    v230 = v229[17];
    v228 = v223 + ((*(v232 + 80) + 32) & ~*(v232 + 80));
    *&v116 = 136446722;
    v222 = v116;
    v138 = v226;
    a2 = v221;
    do
    {
      if (v137 >= v136[2])
      {
        goto LABEL_119;
      }

      sub_24B9A1C8C(v228 + *(v232 + 72) * v137, a2, type metadata accessor for FocusConfigurationAction);
      v140 = sub_24BAA9FDC();
      v141 = objc_allocWithZone(MEMORY[0x277D058C8]);
      v142 = sub_24BAA9FDC();
      v143 = [v141 initWithBundleID_];

      v144 = sub_24BAA9FDC();

      v237[0] = 0;
      LODWORD(v141) = [v230 clearAppActionWithIdentifier:v140 forApplicationIdentifier:v143 modeIdentifier:v144 error:v237];

      if (v141)
      {
        v139 = v237[0];
        sub_24B9A1CF4(a2, type metadata accessor for FocusConfigurationAction);
      }

      else
      {
        v145 = v237[0];
        v146 = sub_24BAA7CCC();

        swift_willThrow();
        v224 = 0;
        v237[0] = v146;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063458);
        sub_24B8F37E8(0, &unk_27F063460);
        swift_dynamicCast();
        v147 = v235;
        v148 = sub_24BAAA2AC();
        sub_24B9A1C8C(a2, v138, type metadata accessor for FocusConfigurationAction);
        v149 = v147;

        v150 = sub_24BAA810C();

        if (os_log_type_enabled(v150, v148))
        {
          v151 = swift_slowAlloc();
          v152 = swift_slowAlloc();
          v236 = v152;
          *v151 = v222;
          v153 = [v149 localizedDescription];
          v154 = sub_24BAAA01C();
          v156 = v155;

          v157 = sub_24B8E49D4(v154, v156, &v236);

          *(v151 + 4) = v157;
          *(v151 + 12) = 2082;
          v158 = v229[14];
          v159 = v229[15];

          v160 = sub_24B8E49D4(v158, v159, &v236);

          *(v151 + 14) = v160;
          *(v151 + 22) = 2082;
          v161 = &v226[v234[8]];
          v162 = *v161;
          v163 = v161[1];

          sub_24B9A1CF4(v226, type metadata accessor for FocusConfigurationAction);
          v164 = sub_24B8E49D4(v162, v163, &v236);

          *(v151 + 24) = v164;
          _os_log_impl(&dword_24B8D3000, v150, v148, "Unable to clear app configuration action; error=%{public}s mode=%{public}s bundleID=%{public}s action=nil", v151, 0x20u);
          swift_arrayDestroy();
          v165 = v152;
          v136 = v223;
          MEMORY[0x24C251390](v165, -1, -1);
          v166 = v151;
          a2 = v221;
          v138 = v226;
          MEMORY[0x24C251390](v166, -1, -1);
        }

        else
        {

          sub_24B9A1CF4(v138, type metadata accessor for FocusConfigurationAction);
        }

        sub_24B9A1CF4(a2, type metadata accessor for FocusConfigurationAction);
      }

      ++v137;
    }

    while (v231 != v137);
  }

  v167 = v219;
  v168 = v219 + 56;
  v169 = 1 << *(v219 + 32);
  v170 = -1;
  if (v169 < 64)
  {
    v170 = ~(-1 << v169);
  }

  a2 = v170 & *(v219 + 56);
  v171 = ((v169 + 63) >> 6);

  v172 = 0;
  *&v173 = 136446978;
  v222 = v173;
  v174 = v227;
  v230 = v171;
  v231 = v168;
  while (a2)
  {
    v176 = v172;
LABEL_112:
    v177 = __clz(__rbit64(a2));
    a2 &= a2 - 1;
    v178 = v220;
    sub_24B9A1C8C(*(v167 + 48) + *(v232 + 72) * (v177 | (v176 << 6)), v220, type metadata accessor for FocusConfigurationAction);
    sub_24B9A1D54(v178, v174, type metadata accessor for FocusConfigurationAction);
    v179 = [objc_allocWithZone(MEMORY[0x277D05898]) initWithAction:*(v227 + v234[9]) enabled:*(v227 + v234[6])];
    v180 = v229;
    v181 = v229[17];
    v174 = v227;
    v182 = objc_allocWithZone(MEMORY[0x277D058C8]);
    v183 = sub_24BAA9FDC();
    v184 = [v182 initWithBundleID_];

    v185 = sub_24BAA9FDC();

    v237[0] = 0;
    LODWORD(v182) = [v181 setAppAction:v179 forApplicationIdentifier:v184 modeIdentifier:v185 error:v237];

    if (v182)
    {
      v175 = v237[0];
      sub_24B9A1CF4(v174, type metadata accessor for FocusConfigurationAction);

LABEL_105:
      v172 = v176;
      goto LABEL_106;
    }

    v186 = v237[0];
    v187 = sub_24BAA7CCC();

    swift_willThrow();
    v237[0] = v187;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063458);
    sub_24B8F37E8(0, &unk_27F063460);
    swift_dynamicCast();
    v188 = v174;
    v189 = v235;
    v190 = sub_24BAAA2AC();
    v191 = v218;
    sub_24B9A1C8C(v188, v218, type metadata accessor for FocusConfigurationAction);

    v192 = v189;
    v193 = v179;
    v194 = sub_24BAA810C();

    if (os_log_type_enabled(v194, v190))
    {
      v195 = swift_slowAlloc();
      LODWORD(v224) = v190;
      v196 = v195;
      v223 = swift_slowAlloc();
      v228 = swift_slowAlloc();
      v236 = v228;
      *v196 = v222;
      v197 = [v192 localizedDescription];
      v198 = sub_24BAAA01C();
      v226 = v192;
      v199 = v198;
      v200 = v191;
      v202 = v201;

      v203 = sub_24B8E49D4(v199, v202, &v236);

      *(v196 + 4) = v203;
      *(v196 + 12) = 2082;
      v204 = v180[14];
      v205 = v180[15];

      v206 = sub_24B8E49D4(v204, v205, &v236);

      *(v196 + 14) = v206;
      *(v196 + 22) = 2082;
      v207 = (v200 + v234[8]);
      v208 = *v207;
      v209 = v207[1];

      sub_24B9A1CF4(v200, type metadata accessor for FocusConfigurationAction);
      v210 = sub_24B8E49D4(v208, v209, &v236);

      *(v196 + 24) = v210;
      *(v196 + 32) = 2114;
      *(v196 + 34) = v193;
      v211 = v223;
      *v223 = v193;
      v212 = v193;
      _os_log_impl(&dword_24B8D3000, v194, v224, "Unable to set app configuration action; error=%{public}s mode=%{public}s bundleID=%{public}s action=%{public}@", v196, 0x2Au);
      sub_24B8F35E4(v211, &qword_27F064510);
      MEMORY[0x24C251390](v211, -1, -1);
      v213 = v228;
      swift_arrayDestroy();
      MEMORY[0x24C251390](v213, -1, -1);
      MEMORY[0x24C251390](v196, -1, -1);

      v174 = v227;
      sub_24B9A1CF4(v227, type metadata accessor for FocusConfigurationAction);

      v224 = 0;
      goto LABEL_105;
    }

    sub_24B9A1CF4(v191, type metadata accessor for FocusConfigurationAction);
    sub_24B9A1CF4(v188, type metadata accessor for FocusConfigurationAction);

    v224 = 0;
    v172 = v176;
    v174 = v188;
LABEL_106:
    v167 = v219;
    v171 = v230;
    v168 = v231;
  }

  while (1)
  {
    v176 = v172 + 1;
    if (__OFADD__(v172, 1))
    {
      break;
    }

    if (v176 >= v171)
    {

      return;
    }

    a2 = *(v168 + 8 * v176);
    ++v172;
    if (a2)
    {
      goto LABEL_112;
    }
  }

LABEL_118:
  __break(1u);
LABEL_119:
  __break(1u);
LABEL_120:
  swift_once();
LABEL_3:
  v34 = sub_24BAA812C();
  __swift_project_value_buffer(v34, qword_27F077050);
  v35 = sub_24BAAA2CC();

  v233 = sub_24BAA810C();

  if (os_log_type_enabled(v233, v35))
  {
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v237[0] = v37;
    *v36 = 136446210;
    v38 = MEMORY[0x24C2501F0](a2, v234);
    v40 = sub_24B8E49D4(v38, v39, v237);

    *(v36 + 4) = v40;
    _os_log_impl(&dword_24B8D3000, v233, v35, "Initialized app actions: %{public}s", v36, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v37);
    MEMORY[0x24C251390](v37, -1, -1);
    MEMORY[0x24C251390](v36, -1, -1);
  }

  else
  {
    v51 = v233;
  }
}

uint64_t sub_24B98CB6C(uint64_t a1, uint64_t a2)
{
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_32;
  }

  v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  if (a2 >> 62)
  {
    result = sub_24BAAA52C();
    if (v5 == result)
    {
      goto LABEL_5;
    }

    return 0;
  }

  result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5 != result)
  {
    return 0;
  }

LABEL_5:
  if (!v5)
  {
    return 1;
  }

  v7 = a1 & 0xFFFFFFFFFFFFFF8;
  v8 = (a1 & 0xFFFFFFFFFFFFFF8) + 32;
  if (a1 < 0)
  {
    v7 = a1;
  }

  if (v4)
  {
    v8 = v7;
  }

  v9 = a2 & 0xFFFFFFFFFFFFFF8;
  v10 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
  v17 = a2 & 0xFFFFFFFFFFFFFF8;
  if (a2 < 0)
  {
    v9 = a2;
  }

  if (a2 >> 62)
  {
    v10 = v9;
  }

  if (v8 == v10)
  {
    return 1;
  }

  if ((v5 & 0x8000000000000000) == 0)
  {
    v11 = a2 & 0xC000000000000001;
    v12 = 4;
    while (1)
    {
      v13 = v12 - 4;
      v14 = v12 - 3;
      if (__OFADD__(v12 - 4, 1))
      {
        __break(1u);
LABEL_30:
        __break(1u);
LABEL_31:
        __break(1u);
LABEL_32:
        v5 = sub_24BAAA52C();
        goto LABEL_3;
      }

      if ((a1 & 0xC000000000000001) != 0)
      {
        v4 = MEMORY[0x24C2506E0](v12 - 4, a1);
        if (v11)
        {
          goto LABEL_20;
        }
      }

      else
      {
        if (v13 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_30;
        }

        v4 = *(a1 + 8 * v12);

        if (v11)
        {
LABEL_20:
          v15 = MEMORY[0x24C2506E0](v12 - 4, a2);
          goto LABEL_25;
        }
      }

      if (v13 >= *(v17 + 16))
      {
        goto LABEL_31;
      }

      v15 = *(a2 + 8 * v12);

LABEL_25:
      v16 = [*(v4 + 16) isEqual_];

      if (v16)
      {
        ++v12;
        if (v14 != v5)
        {
          continue;
        }
      }

      return v16;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_24B98CD2C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FocusConfigurationAction(0);
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v10 = &v39 - v9;
  v11 = *(a1 + 16);
  if (v11 != *(a2 + 16))
  {
LABEL_32:
    v35 = 0;
    return v35 & 1;
  }

  if (v11 && a1 != a2)
  {
    v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v13 = a1 + v12;
    v14 = a2 + v12;
    v15 = *(v8 + 72);
    while (1)
    {
      sub_24B9A1C8C(v13, v10, type metadata accessor for FocusConfigurationAction);
      sub_24B9A1C8C(v14, v7, type metadata accessor for FocusConfigurationAction);
      if ((sub_24BAA7E0C() & 1) == 0 || v10[v4[5]] != v7[v4[5]] || v10[v4[6]] != v7[v4[6]])
      {
        break;
      }

      v16 = v4[7];
      v17 = *&v10[v16];
      v18 = *&v10[v16 + 8];
      v19 = &v7[v16];
      v20 = v17 == *v19 && v18 == *(v19 + 1);
      if (!v20 && (sub_24BAAA78C() & 1) == 0)
      {
        break;
      }

      v21 = v4[8];
      v22 = *&v10[v21];
      v23 = *&v10[v21 + 8];
      v24 = &v7[v21];
      v25 = v22 == *v24 && v23 == *(v24 + 1);
      if (!v25 && (sub_24BAAA78C() & 1) == 0)
      {
        break;
      }

      sub_24B8F37E8(0, &unk_27F067FA0);
      if ((sub_24BAAA3CC() & 1) == 0)
      {
        break;
      }

      v26 = v4[10];
      v27 = *&v10[v26];
      v28 = *&v7[v26];
      if (v27)
      {
        if (!v28)
        {
          break;
        }

        sub_24B8F37E8(0, &qword_27F063430);
        v29 = v28;
        v30 = v27;
        v31 = sub_24BAAA3CC();

        if ((v31 & 1) == 0)
        {
          break;
        }
      }

      else if (v28)
      {
        break;
      }

      v32 = v4[11];
      v33 = *&v10[v32];
      v34 = *&v7[v32];
      v35 = v34 == 0;
      if (v33)
      {
        if (!v34)
        {
          break;
        }

        sub_24B8F37E8(0, &qword_27F063428);
        v36 = v34;
        v37 = v33;
        v35 = sub_24BAAA3CC();
      }

      sub_24B9A1CF4(v7, type metadata accessor for FocusConfigurationAction);
      sub_24B9A1CF4(v10, type metadata accessor for FocusConfigurationAction);
      if (v35)
      {
        v14 += v15;
        v13 += v15;
        if (--v11)
        {
          continue;
        }
      }

      return v35 & 1;
    }

    sub_24B9A1CF4(v7, type metadata accessor for FocusConfigurationAction);
    sub_24B9A1CF4(v10, type metadata accessor for FocusConfigurationAction);
    goto LABEL_32;
  }

  v35 = 1;
  return v35 & 1;
}

uint64_t sub_24B98D08C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FocusSystemConfigurationAction(0);
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v10 = &v23 - v9;
  v11 = *(a1 + 16);
  if (v11 != *(a2 + 16))
  {
LABEL_18:
    v21 = 0;
    return v21 & 1;
  }

  if (v11 && a1 != a2)
  {
    v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v13 = a1 + v12;
    v14 = a2 + v12;
    v15 = *(v8 + 72);
    while (1)
    {
      sub_24B9A1C8C(v13, v10, type metadata accessor for FocusSystemConfigurationAction);
      sub_24B9A1C8C(v14, v7, type metadata accessor for FocusSystemConfigurationAction);
      if ((sub_24BAA7E0C() & 1) == 0 || v10[v4[5]] != v7[v4[5]] || v10[v4[6]] != v7[v4[6]])
      {
        break;
      }

      v16 = v4[7];
      v17 = *&v10[v16];
      v18 = *&v10[v16 + 8];
      v19 = &v7[v16];
      v20 = v17 == *v19 && v18 == *(v19 + 1);
      if (!v20 && (sub_24BAAA78C() & 1) == 0)
      {
        break;
      }

      sub_24B8F37E8(0, &unk_27F067FA0);
      v21 = sub_24BAAA3CC();
      sub_24B9A1CF4(v7, type metadata accessor for FocusSystemConfigurationAction);
      sub_24B9A1CF4(v10, type metadata accessor for FocusSystemConfigurationAction);
      if (v21)
      {
        v14 += v15;
        v13 += v15;
        if (--v11)
        {
          continue;
        }
      }

      return v21 & 1;
    }

    sub_24B9A1CF4(v7, type metadata accessor for FocusSystemConfigurationAction);
    sub_24B9A1CF4(v10, type metadata accessor for FocusSystemConfigurationAction);
    goto LABEL_18;
  }

  v21 = 1;
  return v21 & 1;
}

uint64_t sub_24B98D350()
{
  v1[3] = v0;
  v1[4] = sub_24BAAA1BC();
  v1[5] = sub_24BAAA1AC();
  v3 = sub_24BAAA17C();
  v1[6] = v3;
  v1[7] = v2;

  return MEMORY[0x2822009F8](sub_24B98D3EC, v3, v2);
}

uint64_t sub_24B98D3EC()
{
  v1 = v0[3];
  v2 = OBJC_IVAR____TtC15FocusSettingsUI23ActivityConfigViewModel_focusSystemConfigurationActionActor;
  v0[8] = OBJC_IVAR____TtC15FocusSettingsUI23ActivityConfigViewModel_focusSystemConfigurationActionActor;
  v3 = *(v1 + v2);
  v0[9] = v3;

  return MEMORY[0x2822009F8](sub_24B98D470, v3, 0);
}

uint64_t sub_24B98D470()
{
  v0[10] = sub_24B98E950();

  v1 = v0[6];
  v2 = v0[7];

  return MEMORY[0x2822009F8](sub_24B98D4E0, v1, v2);
}

uint64_t sub_24B98D4E0()
{
  v1 = *(v0[3] + v0[8]);
  v0[11] = v1;

  return MEMORY[0x2822009F8](sub_24B98D55C, v1, 0);
}

uint64_t sub_24B98D55C()
{
  v0[12] = sub_24B98EF94();

  v1 = v0[6];
  v2 = v0[7];

  return MEMORY[0x2822009F8](sub_24B98D5CC, v1, v2);
}

uint64_t sub_24B98D5CC()
{
  v1 = v0[12];
  v2 = v0[10];
  v0[2] = MEMORY[0x277D84F90];
  type metadata accessor for FocusSystemConfigurationAction(0);
  v0[13] = sub_24BAAA1AC();
  v3 = swift_task_alloc();
  v0[14] = v3;
  v3[2] = v2;
  v3[3] = v1;
  v3[4] = v0 + 2;
  v4 = swift_task_alloc();
  v0[15] = v4;
  *v4 = v0;
  v4[1] = sub_24B98D6F8;

  return MEMORY[0x282200600]();
}

uint64_t sub_24B98D6F8()
{
  v1 = *v0;

  v2 = *(v1 + 56);
  v3 = *(v1 + 48);

  return MEMORY[0x2822009F8](sub_24B98D898, v3, v2);
}

uint64_t sub_24B98D898()
{
  v4 = v0;

  v3 = *(v0 + 16);

  sub_24B99B048(&v3, sub_24B99DE4C, sub_24B99BFE0);
  sub_24B98E768(v3);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24B98D990(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[11] = a4;
  v5[12] = a5;
  v5[9] = a2;
  v5[10] = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0633F8);
  v5[13] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F066AF0);
  v5[14] = v6;
  v5[15] = *(v6 - 8);
  v5[16] = swift_task_alloc();
  v7 = type metadata accessor for FocusSystemConfigurationAction(0);
  v5[17] = v7;
  v8 = *(v7 - 8);
  v5[18] = v8;
  v5[19] = *(v8 + 64);
  v5[20] = swift_task_alloc();
  v5[21] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0646E8);
  v5[22] = swift_task_alloc();
  v5[23] = swift_task_alloc();
  v5[24] = sub_24BAAA1BC();
  v5[25] = sub_24BAAA1AC();
  v10 = sub_24BAAA17C();
  v5[26] = v10;
  v5[27] = v9;

  return MEMORY[0x2822009F8](sub_24B98DB84, v10, v9);
}

uint64_t sub_24B98DB84()
{
  v1 = *(v0 + 80);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *(v0 + 144);
    v31 = **(v0 + 72);
    v4 = *(v3 + 80);
    v5 = v1 + ((v4 + 32) & ~v4);
    v30 = *(v3 + 72);
    v29 = (v4 + 40) & ~v4;
    v6 = sub_24BAAA1DC();
    v7 = *(v6 - 8);
    v28 = *(v7 + 56);
    v27 = (v7 + 48);
    v26 = (v7 + 8);
    do
    {
      v32 = v2;
      v11 = *(v0 + 176);
      v10 = *(v0 + 184);
      v12 = *(v0 + 168);
      v13 = *(v0 + 88);
      v28(v10, 1, 1, v6);
      sub_24B9A1C8C(v5, v12, type metadata accessor for FocusSystemConfigurationAction);
      v14 = swift_allocObject();
      v14[2] = 0;
      v14[3] = 0;
      v14[4] = v13;
      sub_24B9A1D54(v12, v14 + v29, type metadata accessor for FocusSystemConfigurationAction);
      sub_24B9A1B54(v10, v11);
      LODWORD(v11) = (*v27)(v11, 1, v6);

      v15 = *(v0 + 176);
      if (v11 == 1)
      {
        sub_24B8F35E4(*(v0 + 176), &qword_27F0646E8);
      }

      else
      {
        sub_24BAAA1CC();
        (*v26)(v15, v6);
      }

      if (v14[2])
      {
        swift_getObjectType();
        swift_unknownObjectRetain();
        v16 = sub_24BAAA17C();
        v18 = v17;
        swift_unknownObjectRelease();
      }

      else
      {
        v16 = 0;
        v18 = 0;
      }

      v19 = swift_allocObject();
      *(v19 + 16) = &unk_24BAB4FD0;
      *(v19 + 24) = v14;

      if (v18 | v16)
      {
        v8 = v0 + 16;
        *(v0 + 16) = 0;
        *(v0 + 24) = 0;
        *(v0 + 32) = v16;
        *(v0 + 40) = v18;
      }

      else
      {
        v8 = 0;
      }

      v9 = *(v0 + 184);
      *(v0 + 48) = 1;
      *(v0 + 56) = v8;
      *(v0 + 64) = v31;
      swift_task_create();

      sub_24B8F35E4(v9, &qword_27F0646E8);
      v5 += v30;
      v2 = v32 - 1;
    }

    while (v32 != 1);
  }

  sub_24BAAA18C();
  v20 = sub_24BAAA1AC();
  *(v0 + 224) = v20;
  v21 = swift_task_alloc();
  *(v0 + 232) = v21;
  *v21 = v0;
  v21[1] = sub_24B98DF3C;
  v22 = *(v0 + 104);
  v23 = *(v0 + 112);
  v24 = MEMORY[0x277D85700];

  return MEMORY[0x2822002E8](v22, v20, v24, v23);
}

uint64_t sub_24B98DF3C()
{
  v1 = *v0;

  v2 = *(v1 + 216);
  v3 = *(v1 + 208);

  return MEMORY[0x2822009F8](sub_24B98E080, v3, v2);
}

uint64_t sub_24B98E080()
{
  v1 = v0[13];
  if ((*(v0[18] + 48))(v1, 1, v0[17]) == 1)
  {
    (*(v0[15] + 8))(v0[16], v0[14]);

    v2 = v0[1];

    return v2();
  }

  else
  {
    v4 = v0[12];
    sub_24B9A1D54(v1, v0[20], type metadata accessor for FocusSystemConfigurationAction);
    v5 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v4 = v5;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v16 = v0[12];
      v5 = sub_24B99ABF8(0, v5[2] + 1, 1, v5, &qword_27F0645C8, &unk_24BAAEEF0, type metadata accessor for FocusSystemConfigurationAction);
      *v16 = v5;
    }

    v8 = v5[2];
    v7 = v5[3];
    if (v8 >= v7 >> 1)
    {
      v17 = v0[12];
      v5 = sub_24B99ABF8(v7 > 1, v8 + 1, 1, v5, &qword_27F0645C8, &unk_24BAAEEF0, type metadata accessor for FocusSystemConfigurationAction);
      *v17 = v5;
    }

    v9 = v0[20];
    v10 = v0[18];
    v5[2] = v8 + 1;
    sub_24B9A1D54(v9, v5 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v8, type metadata accessor for FocusSystemConfigurationAction);
    v11 = sub_24BAAA1AC();
    v0[28] = v11;
    v12 = swift_task_alloc();
    v0[29] = v12;
    *v12 = v0;
    v12[1] = sub_24B98DF3C;
    v13 = v0[13];
    v14 = v0[14];
    v15 = MEMORY[0x277D85700];

    return MEMORY[0x2822002E8](v13, v11, v15, v14);
  }
}

uint64_t sub_24B98E330(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  return MEMORY[0x2822009F8](sub_24B98E354, 0, 0);
}

uint64_t sub_24B98E354()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = swift_task_alloc();
  *(v3 + 16) = v1;
  sub_24BA59834(sub_24B9A25F0, v3, v2);
  v5 = v4;

  v6 = v0[4];
  v7 = v0[2];
  if (v5)
  {
    v8 = [v5 isEnabled];
    v9 = type metadata accessor for FocusSystemConfigurationAction(0);
    v10 = (v6 + v9[7]);
    v12 = *v10;
    v11 = v10[1];

    v13 = [v5 action];
    sub_24BAA7E3C();

    *(v7 + v9[5]) = 1;
    *(v7 + v9[6]) = v8;
    v14 = (v7 + v9[7]);
    *v14 = v12;
    v14[1] = v11;
    *(v7 + v9[8]) = v13;
  }

  else
  {
    sub_24B9A1C8C(v0[4], v0[2], type metadata accessor for FocusSystemConfigurationAction);
  }

  v15 = v0[1];

  return v15();
}

uint64_t sub_24B98E4BC(id *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = [*a1 identifier];
  v6 = sub_24BAAA01C();
  v8 = v7;

  v9 = (a2 + *(a3(0) + 28));
  if (v6 == *v9 && v8 == v9[1])
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_24BAAA78C();
  }

  return v11 & 1;
}

uint64_t sub_24B98E570(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  sub_24BAAA1BC();
  v5[5] = sub_24BAAA1AC();
  v7 = sub_24BAAA17C();
  v5[6] = v7;
  v5[7] = v6;

  return MEMORY[0x2822009F8](sub_24B98E608, v7, v6);
}

uint64_t sub_24B98E608()
{
  v1 = *(v0[3] + OBJC_IVAR____TtC15FocusSettingsUI23ActivityConfigViewModel_focusSystemConfigurationActionActor);
  v0[8] = v1;
  swift_getKeyPath();
  swift_getKeyPath();

  sub_24BAA81BC();

  v0[9] = v0[2];

  return MEMORY[0x2822009F8](sub_24B98E6D8, v1, 0);
}

uint64_t sub_24B98E6D8()
{
  sub_24B98F2E4(v0[4], v0[9]);

  v1 = v0[6];
  v2 = v0[7];

  return MEMORY[0x2822009F8](sub_24B9A300C, v1, v2);
}

uint64_t sub_24B98E798(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = v5;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0646E8);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v18 - v10;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24BAA81BC();

  v12 = v19;
  swift_getKeyPath();
  swift_getKeyPath();
  v19 = a1;

  sub_24BAA81CC();
  v13 = sub_24BAAA1DC();
  (*(*(v13 - 8) + 56))(v11, 1, 1, v13);
  sub_24BAAA1BC();

  v14 = sub_24BAAA1AC();
  v15 = swift_allocObject();
  v16 = MEMORY[0x277D85700];
  v15[2] = v14;
  v15[3] = v16;
  v15[4] = v7;
  v15[5] = v12;
  sub_24B981384(0, 0, v11, a5, v15);
}

void *sub_24B98E950()
{
  v1 = v0;
  v56[1] = *MEMORY[0x277D85DE8];
  v2 = type metadata accessor for FocusSystemConfigurationAction(0);
  v3 = *(v2 - 1);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v49 - v7;
  v9 = [objc_opt_self() standardClient];
  v10 = v1[16];
  v56[0] = 0;
  v11 = [v9 contextualActionsForContext:v10 error:v56];

  v12 = v56[0];
  if (!v11)
  {
    v46 = v56[0];
    v47 = sub_24BAA7CCC();

    swift_willThrow();
LABEL_31:
    v45 = MEMORY[0x277D84F90];
    goto LABEL_32;
  }

  sub_24B8F37E8(0, &unk_27F066A60);
  v13 = sub_24BAAA12C();
  v14 = v12;

  if (v13 >> 62)
  {
    v16 = sub_24BAAA52C();
    if (v16)
    {
      goto LABEL_4;
    }

    goto LABEL_30;
  }

  v16 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v16)
  {
LABEL_30:

    goto LABEL_31;
  }

LABEL_4:
  if (v16 < 1)
  {
    __break(1u);
  }

  v17 = 0;
  v54 = v13 & 0xC000000000000001;
  v55 = MEMORY[0x277D84F90];
  v51 = 0x800000024BAC1A30;
  *&v15 = 138412290;
  v49 = v15;
  v52 = v13;
  v53 = v16;
  v50 = v8;
  do
  {
    if (v54)
    {
      v27 = MEMORY[0x24C2506E0](v17, v13);
    }

    else
    {
      v27 = *(v13 + 8 * v17 + 32);
    }

    v28 = v27;
    objc_opt_self();
    v29 = swift_dynamicCastObjCClass();
    if (!v29)
    {
      if (qword_27F0630F8 != -1)
      {
        swift_once();
      }

      v41 = sub_24BAA812C();
      __swift_project_value_buffer(v41, qword_27F077050);
      v42 = sub_24BAAA2BC();
      v43 = v28;
      v44 = sub_24BAA810C();

      if (os_log_type_enabled(v44, v42))
      {
        v18 = swift_slowAlloc();
        v19 = v6;
        v20 = v2;
        v21 = v3;
        v22 = v1;
        v23 = swift_slowAlloc();
        *v18 = v49;
        *(v18 + 4) = v43;
        *v23 = v43;
        v24 = v43;
        _os_log_impl(&dword_24B8D3000, v44, v42, "Unable to cast action: %@", v18, 0xCu);
        sub_24B8F35E4(v23, &qword_27F064510);
        v25 = v23;
        v1 = v22;
        v3 = v21;
        v2 = v20;
        v6 = v19;
        v8 = v50;
        MEMORY[0x24C251390](v25, -1, -1);
        v26 = v18;
        v13 = v52;
        MEMORY[0x24C251390](v26, -1, -1);
      }

      else
      {
      }

      goto LABEL_7;
    }

    v30 = v29;
    v31 = v28;
    if ([v30 setting] != 3 || (v1[14] != 0xD00000000000001ALL || v51 != v1[15]) && (sub_24BAAA78C() & 1) == 0)
    {
      v32 = [v31 identifier];

      v33 = sub_24BAAA01C();
      v35 = v34;

      sub_24BAA7E3C();
      v8[v2[5]] = 0;
      v8[v2[6]] = 1;
      v36 = &v8[v2[7]];
      *v36 = v33;
      v36[1] = v35;
      *&v8[v2[8]] = v30;
      sub_24B9A1C8C(v8, v6, type metadata accessor for FocusSystemConfigurationAction);
      v37 = v55;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v37 = sub_24B99ABF8(0, v37[2] + 1, 1, v37, &qword_27F0645C8, &unk_24BAAEEF0, type metadata accessor for FocusSystemConfigurationAction);
      }

      v39 = v37[2];
      v38 = v37[3];
      v55 = v37;
      v13 = v52;
      if (v39 >= v38 >> 1)
      {
        v55 = sub_24B99ABF8(v38 > 1, v39 + 1, 1, v55, &qword_27F0645C8, &unk_24BAAEEF0, type metadata accessor for FocusSystemConfigurationAction);
      }

      sub_24B9A1CF4(v8, type metadata accessor for FocusSystemConfigurationAction);
      v40 = v55;
      v55[2] = v39 + 1;
      sub_24B9A1D54(v6, v40 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v39, type metadata accessor for FocusSystemConfigurationAction);
LABEL_7:
      v16 = v53;
      goto LABEL_8;
    }

LABEL_8:
    ++v17;
  }

  while (v16 != v17);

  v45 = v55;
LABEL_32:
  v56[0] = v45;

  sub_24B99B048(v56, sub_24B99D47C, sub_24B99BD5C);

  return v56[0];
}

uint64_t sub_24B98EF94()
{
  v1 = v0;
  v27[1] = *MEMORY[0x277D85DE8];
  v2 = *(v0 + 136);

  v3 = sub_24BAA9FDC();

  v26 = 0;
  v4 = [v2 getSystemActionsForModeIdentifier:v3 error:&v26];

  v5 = v26;
  if (v4)
  {
    sub_24B8F37E8(0, &qword_27F066A50);
    sub_24B8F1128(&qword_27F066A58, &qword_27F066A50);
    v6 = sub_24BAAA20C();
    v7 = v5;
  }

  else
  {
    v8 = v26;
    v9 = sub_24BAA7CCC();

    swift_willThrow();
    v26 = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063458);
    sub_24B8F37E8(0, &unk_27F063460);
    swift_dynamicCast();
    if (qword_27F0630F8 != -1)
    {
      swift_once();
    }

    v10 = sub_24BAA812C();
    __swift_project_value_buffer(v10, qword_27F077050);
    v11 = sub_24BAAA2AC();
    v12 = v25;

    v13 = sub_24BAA810C();

    if (os_log_type_enabled(v13, v11))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v27[0] = v15;
      *v14 = 136315394;
      v16 = [v12 localizedDescription];
      v17 = sub_24BAAA01C();
      v19 = v18;

      v20 = sub_24B8E49D4(v17, v19, v27);

      *(v14 + 4) = v20;
      *(v14 + 12) = 2080;
      v22 = *(v1 + 112);
      v21 = *(v1 + 120);

      v23 = sub_24B8E49D4(v22, v21, v27);

      *(v14 + 14) = v23;
      _os_log_impl(&dword_24B8D3000, v13, v11, "Unable to get system configuration actions; error=%s mode=%s", v14, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C251390](v15, -1, -1);
      MEMORY[0x24C251390](v14, -1, -1);
    }

    else
    {
    }

    return MEMORY[0x277D84FA0];
  }

  return v6;
}

void sub_24B98F2E4(uint64_t a1, uint64_t a2)
{
  v230[9] = *MEMORY[0x277D85DE8];
  v227 = type metadata accessor for FocusSystemConfigurationAction(0);
  v225 = *(v227 - 1);
  v4 = MEMORY[0x28223BE20](v227);
  v6 = v209 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = v209 - v8;
  v10 = MEMORY[0x28223BE20](v7);
  v12 = v209 - v11;
  v13 = MEMORY[0x28223BE20](v10);
  v213 = v209 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v17 = v209 - v16;
  v18 = MEMORY[0x28223BE20](v15);
  *&v217 = v209 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v224 = v209 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v221 = v209 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v226 = (v209 - v25);
  v26 = MEMORY[0x28223BE20](v24);
  v28 = v209 - v27;
  v29 = MEMORY[0x28223BE20](v26);
  v218 = v209 - v30;
  MEMORY[0x28223BE20](v29);
  v32 = v209 - v31;
  if (sub_24B98D08C(a1, MEMORY[0x277D84F90]))
  {
    if (qword_27F0630F8 == -1)
    {
      goto LABEL_3;
    }

    goto LABEL_120;
  }

  v215 = a2;
  v214 = v17;
  v220 = v9;
  v216 = v12;
  v211 = v6;
  v40 = *(a1 + 16);
  v41 = MEMORY[0x277D84F90];
  v223 = v40;
  *&v212 = a1;
  if (v40)
  {
    v42 = *(v225 + 72);
    v222 = ((*(v225 + 80) + 32) & ~*(v225 + 80));
    v43 = v222 + a1;
    v44 = v226;
    v45 = v218;
    do
    {
      sub_24B9A1C8C(v43, v32, type metadata accessor for FocusSystemConfigurationAction);
      if (v32[v227[5]] == 1)
      {
        sub_24B9A1D54(v32, v45, type metadata accessor for FocusSystemConfigurationAction);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v230[0] = v41;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_24B914DCC(0, v41[2] + 1, 1);
          v45 = v218;
          v41 = v230[0];
        }

        v48 = v41[2];
        v47 = v41[3];
        if (v48 >= v47 >> 1)
        {
          sub_24B914DCC(v47 > 1, v48 + 1, 1);
          v45 = v218;
          v41 = v230[0];
        }

        v41[2] = v48 + 1;
        sub_24B9A1D54(v45, v222 + v41 + v48 * v42, type metadata accessor for FocusSystemConfigurationAction);
      }

      else
      {
        sub_24B9A1CF4(v32, type metadata accessor for FocusSystemConfigurationAction);
      }

      v43 += v42;
      --v40;
    }

    while (v40);
  }

  else
  {
    v44 = v226;
  }

  v50 = v41[2];
  if (v50)
  {
    v230[0] = MEMORY[0x277D84F90];
    sub_24B914D68(0, v50, 0);
    v51 = v230[0];
    v52 = v41 + ((*(v225 + 80) + 32) & ~*(v225 + 80));
    v53 = *(v225 + 72);
    do
    {
      sub_24B9A1C8C(v52, v28, type metadata accessor for FocusSystemConfigurationAction);
      v54 = &v28[v227[7]];
      v55 = *v54;
      v56 = *(v54 + 1);

      sub_24B9A1CF4(v28, type metadata accessor for FocusSystemConfigurationAction);
      v230[0] = v51;
      v58 = v51[2];
      v57 = v51[3];
      if (v58 >= v57 >> 1)
      {
        sub_24B914D68((v57 > 1), v58 + 1, 1);
        v51 = v230[0];
      }

      v51[2] = v58 + 1;
      v59 = &v51[2 * v58];
      v59[4] = v55;
      v59[5] = v56;
      v52 += v53;
      --v50;
    }

    while (v50);

    v44 = v226;
  }

  else
  {

    v51 = MEMORY[0x277D84F90];
  }

  v210 = sub_24B8F0F04(v51);

  v60 = *(v215 + 16);
  v61 = MEMORY[0x277D84F90];
  if (v60)
  {
    v62 = (*(v225 + 80) + 32) & ~*(v225 + 80);
    v63 = *(v225 + 72);
    v64 = v215 + v62;
    v65 = MEMORY[0x277D84F90];
    v66 = v221;
    do
    {
      sub_24B9A1C8C(v64, v44, type metadata accessor for FocusSystemConfigurationAction);
      if (*(&v44->isa + v227[5]) == 1)
      {
        sub_24B9A1D54(v44, v66, type metadata accessor for FocusSystemConfigurationAction);
        v67 = swift_isUniquelyReferenced_nonNull_native();
        v230[0] = v65;
        if ((v67 & 1) == 0)
        {
          sub_24B914DCC(0, v65[2] + 1, 1);
          v66 = v221;
          v65 = v230[0];
        }

        v69 = v65[2];
        v68 = v65[3];
        if (v69 >= v68 >> 1)
        {
          sub_24B914DCC(v68 > 1, v69 + 1, 1);
          v66 = v221;
          v65 = v230[0];
        }

        v65[2] = v69 + 1;
        sub_24B9A1D54(v66, v65 + v62 + v69 * v63, type metadata accessor for FocusSystemConfigurationAction);
        v44 = v226;
      }

      else
      {
        sub_24B9A1CF4(v44, type metadata accessor for FocusSystemConfigurationAction);
      }

      v64 += v63;
      --v60;
    }

    while (v60);
  }

  else
  {
    v65 = MEMORY[0x277D84F90];
  }

  v70 = v65[2];
  if (v70)
  {
    v230[0] = v61;
    sub_24B914D68(0, v70, 0);
    v71 = v230[0];
    v72 = v65 + ((*(v225 + 80) + 32) & ~*(v225 + 80));
    v73 = *(v225 + 72);
    do
    {
      sub_24B9A1C8C(v72, v28, type metadata accessor for FocusSystemConfigurationAction);
      v74 = &v28[v227[7]];
      v76 = *v74;
      v75 = *(v74 + 1);

      sub_24B9A1CF4(v28, type metadata accessor for FocusSystemConfigurationAction);
      v230[0] = v71;
      v78 = v71[2];
      v77 = v71[3];
      if (v78 >= v77 >> 1)
      {
        sub_24B914D68((v77 > 1), v78 + 1, 1);
        v71 = v230[0];
      }

      v71[2] = v78 + 1;
      v79 = &v71[2 * v78];
      v79[4] = v76;
      v79[5] = v75;
      v72 += v73;
      --v70;
    }

    while (v70);
  }

  else
  {

    v71 = MEMORY[0x277D84F90];
  }

  v80 = sub_24B8F0F04(v71);

  v81 = v210;
  v82 = v212;
  if (*(v80 + 16) > v210[2] >> 3)
  {

    v226 = sub_24B8ECB7C(v80, v81);
  }

  else
  {
    v230[0] = v210;

    sub_24B8EA8FC(v80);
    v226 = v230[0];
  }

  v84 = sub_24B8F1B88(v83);

  v86 = sub_24B8F1B88(v85);

  if (*(v86 + 16) <= v84[2] >> 3)
  {
    v230[0] = v84;
    sub_24B8EAFC8(v86);

    v87 = v230[0];
  }

  else
  {
    v87 = sub_24B8ED0EC(v86, v84);
  }

  v89 = v87[32];
  v90 = ((1 << v89) + 63) >> 6;
  v209[1] = v80;
  if ((v89 & 0x3Fu) <= 0xD)
  {
    goto LABEL_51;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_51:
    v221 = v90;
    v218 = v209;
    MEMORY[0x28223BE20](v88);
    v92 = v209 - ((v91 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v92, v91);
    v222 = 0;
    a2 = 0;
    v93 = 1 << v87[32];
    v94 = -1;
    if (v93 < 64)
    {
      v94 = ~(-1 << v93);
    }

    v95 = v94 & *(v87 + 7);
    v96 = (v93 + 63) >> 6;
    while (v95)
    {
      v97 = __clz(__rbit64(v95));
      v95 &= v95 - 1;
LABEL_61:
      v100 = v97 | (a2 << 6);
      sub_24B9A1C8C(*(v87 + 6) + *(v225 + 72) * v100, v28, type metadata accessor for FocusSystemConfigurationAction);
      v101 = v28[v227[5]];
      sub_24B9A1CF4(v28, type metadata accessor for FocusSystemConfigurationAction);
      if (v101 == 1)
      {
        *&v92[(v100 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v100;
        v102 = __OFADD__(v222, 1);
        v222 = (v222 + 1);
        if (v102)
        {
          __break(1u);
LABEL_65:
          v103 = sub_24BA299F0(v92, v221, v222, v87);
          v82 = v212;
          goto LABEL_66;
        }
      }
    }

    v98 = a2;
    while (1)
    {
      a2 = v98 + 1;
      if (__OFADD__(v98, 1))
      {
        break;
      }

      if (a2 >= v96)
      {
        goto LABEL_65;
      }

      v99 = *&v87[8 * a2 + 56];
      ++v98;
      if (v99)
      {
        v97 = __clz(__rbit64(v99));
        v95 = (v99 - 1) & v99;
        goto LABEL_61;
      }
    }

    __break(1u);
    goto LABEL_118;
  }

  v208 = swift_slowAlloc();
  v103 = sub_24B99FFB0(v208, v90, v87, sub_24B990B94, 0, sub_24BA2B6D4);

  MEMORY[0x24C251390](v208, -1, -1);
LABEL_66:
  if (qword_27F0630F8 != -1)
  {
    swift_once();
  }

  v104 = sub_24BAA812C();
  v105 = __swift_project_value_buffer(v104, qword_27F077050);
  v106 = sub_24BAAA28C();

  v218 = v105;
  v107 = sub_24BAA810C();

  v108 = os_log_type_enabled(v107, v106);
  v215 = v103;
  v222 = 0;
  if (v108)
  {
    v109 = swift_slowAlloc();
    v110 = swift_slowAlloc();
    v230[0] = v110;
    *v109 = 136315138;
    sub_24B9A1DBC(&unk_27F066A40, type metadata accessor for FocusSystemConfigurationAction);
    v111 = sub_24BAAA21C();
    v113 = sub_24B8E49D4(v111, v112, v230);

    *(v109 + 4) = v113;
    _os_log_impl(&dword_24B8D3000, v107, v106, "Modified or new system actions: %s", v109, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v110);
    MEMORY[0x24C251390](v110, -1, -1);
    MEMORY[0x24C251390](v109, -1, -1);
  }

  v115 = v224;
  if (v223)
  {
    v116 = 0;
    v117 = (*(v225 + 80) + 32) & ~*(v225 + 80);
    v118 = *(v225 + 72);
    v119 = v82 + v117;
    v120 = v226 + 7;
    v221 = MEMORY[0x277D84F90];
    do
    {
      sub_24B9A1C8C(v119 + v118 * v116, v115, type metadata accessor for FocusSystemConfigurationAction);
      if (v115[v227[5]] == 1 && v226[2].isa && (v121 = &v115[v227[7]], v122 = *v121, v123 = v121[1], v124 = v226, sub_24BAAA7FC(), sub_24BAAA07C(), v125 = sub_24BAAA84C(), v126 = -1 << LOBYTE(v124[4].isa), v127 = v125 & ~v126, ((*(&v120->isa + ((v127 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v127) & 1) != 0))
      {
        v128 = ~v126;
        while (1)
        {
          v129 = (v226[6].isa + 16 * v127);
          v130 = *v129 == v122 && v129[1] == v123;
          if (v130 || (sub_24BAAA78C() & 1) != 0)
          {
            break;
          }

          v127 = (v127 + 1) & v128;
          if (((*(&v120->isa + ((v127 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v127) & 1) == 0)
          {
            goto LABEL_72;
          }
        }

        v115 = v224;
        sub_24B9A1D54(v224, v217, type metadata accessor for FocusSystemConfigurationAction);
        v131 = v221;
        v132 = swift_isUniquelyReferenced_nonNull_native();
        v228 = v131;
        if ((v132 & 1) == 0)
        {
          sub_24B914DCC(0, *(v131 + 16) + 1, 1);
          v131 = v228;
        }

        v134 = *(v131 + 16);
        v133 = *(v131 + 24);
        if (v134 >= v133 >> 1)
        {
          sub_24B914DCC(v133 > 1, v134 + 1, 1);
          v131 = v228;
        }

        *(v131 + 16) = v134 + 1;
        v221 = v131;
        sub_24B9A1D54(v217, v131 + v117 + v134 * v118, type metadata accessor for FocusSystemConfigurationAction);
      }

      else
      {
LABEL_72:
        v115 = v224;
        sub_24B9A1CF4(v224, type metadata accessor for FocusSystemConfigurationAction);
      }

      ++v116;
    }

    while (v116 != v223);
  }

  else
  {
    v221 = MEMORY[0x277D84F90];
  }

  v135 = v221;
  v136 = *(v221 + 16);
  if (v136)
  {
    v137 = 0;
    v138 = v219;
    v139 = v219[17];
    v223 = v221 + ((*(v225 + 80) + 32) & ~*(v225 + 80));
    v224 = v139;
    *&v114 = 136315650;
    v212 = v114;
    a2 = v220;
    v140 = v214;
    v141 = v222;
    *&v217 = v136;
    while (v137 < *(v135 + 16))
    {
      sub_24B9A1C8C(v223 + *(v225 + 72) * v137, v140, type metadata accessor for FocusSystemConfigurationAction);
      v143 = sub_24BAA9FDC();

      v144 = sub_24BAA9FDC();

      v230[0] = 0;
      v145 = [v224 clearSystemActionWithIdentifier:v143 forModeIdentifier:v144 error:v230];

      if (v145)
      {
        v142 = v230[0];
        sub_24B9A1CF4(v140, type metadata accessor for FocusSystemConfigurationAction);
      }

      else
      {
        v146 = v230[0];
        v147 = sub_24BAA7CCC();

        swift_willThrow();
        v138 = v219;
        v141 = 0;
        v230[0] = v147;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063458);
        sub_24B8F37E8(0, &unk_27F063460);
        swift_dynamicCast();
        v148 = v228;
        v149 = sub_24BAAA2AC();
        sub_24B9A1C8C(v140, a2, type metadata accessor for FocusSystemConfigurationAction);
        v150 = v148;

        v151 = sub_24BAA810C();

        if (os_log_type_enabled(v151, v149))
        {
          v152 = swift_slowAlloc();
          v153 = swift_slowAlloc();
          v229 = v153;
          *v152 = v212;
          v154 = [v150 localizedDescription];
          v222 = 0;
          v155 = v154;
          v156 = sub_24BAAA01C();
          v158 = v157;

          v159 = sub_24B8E49D4(v156, v158, &v229);

          *(v152 + 4) = v159;
          *(v152 + 12) = 2080;
          v160 = v138[14];
          v161 = v138[15];

          v162 = sub_24B8E49D4(v160, v161, &v229);

          *(v152 + 14) = v162;
          *(v152 + 22) = 2080;
          v163 = &v220[v227[7]];
          v164 = *v163;
          v165 = v163[1];

          sub_24B9A1CF4(v220, type metadata accessor for FocusSystemConfigurationAction);
          v166 = sub_24B8E49D4(v164, v165, &v229);

          *(v152 + 24) = v166;
          _os_log_impl(&dword_24B8D3000, v151, v149, "Unable to clear system configuration action; error=%s mode=%s identifier=%s action=nil", v152, 0x20u);
          swift_arrayDestroy();
          v167 = v153;
          v140 = v214;
          a2 = v220;
          MEMORY[0x24C251390](v167, -1, -1);
          MEMORY[0x24C251390](v152, -1, -1);

          v168 = v140;
          v141 = v222;
        }

        else
        {

          sub_24B9A1CF4(a2, type metadata accessor for FocusSystemConfigurationAction);
          v168 = v140;
        }

        sub_24B9A1CF4(v168, type metadata accessor for FocusSystemConfigurationAction);

        v135 = v221;
        v136 = v217;
      }

      if (v136 == ++v137)
      {
        goto LABEL_102;
      }
    }

    goto LABEL_119;
  }

  v138 = v219;
  v141 = v222;
LABEL_102:

  a2 = v215 + 56;
  v169 = 1 << *(v215 + 32);
  v170 = -1;
  if (v169 < 64)
  {
    v170 = ~(-1 << v169);
  }

  v171 = v170 & *(v215 + 56);
  v172 = (v169 + 63) >> 6;

  v173 = 0;
  *&v174 = 136315650;
  v217 = v174;
  v220 = v172;
  while (v171)
  {
    v222 = v141;
    v176 = v173;
LABEL_112:
    v177 = __clz(__rbit64(v171));
    v171 &= v171 - 1;
    v178 = v213;
    sub_24B9A1C8C(*(v215 + 48) + *(v225 + 72) * (v177 | (v176 << 6)), v213, type metadata accessor for FocusSystemConfigurationAction);
    v179 = v178;
    v180 = v216;
    sub_24B9A1D54(v179, v216, type metadata accessor for FocusSystemConfigurationAction);
    v181 = [objc_allocWithZone(MEMORY[0x277D05AC0]) initWithAction:*(v180 + v227[8]) enabled:*(v180 + v227[6])];
    v182 = v138[17];

    v183 = sub_24BAA9FDC();

    v230[0] = 0;
    v184 = [v182 setSystemAction:v181 forModeIdentifier:v183 error:v230];

    if (v184)
    {
      v175 = v230[0];
      sub_24B9A1CF4(v180, type metadata accessor for FocusSystemConfigurationAction);

      v173 = v176;
      v141 = v222;
    }

    else
    {
      v224 = v181;
      v185 = v180;
      v186 = v230[0];
      v187 = sub_24BAA7CCC();

      v188 = v138;
      swift_willThrow();
      v230[0] = v187;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063458);
      sub_24B8F37E8(0, &unk_27F063460);
      swift_dynamicCast();
      v189 = v228;
      v190 = sub_24BAAA2AC();
      v191 = v185;
      v192 = v211;
      sub_24B9A1C8C(v191, v211, type metadata accessor for FocusSystemConfigurationAction);

      v193 = v189;
      v194 = sub_24BAA810C();

      if (os_log_type_enabled(v194, v190))
      {
        v195 = swift_slowAlloc();
        v222 = swift_slowAlloc();
        v223 = swift_slowAlloc();
        v229 = v223;
        *v195 = v217;
        v196 = [v193 localizedDescription];
        v197 = sub_24BAAA01C();
        LODWORD(v221) = v190;
        v198 = v197;
        v200 = v199;

        v201 = sub_24B8E49D4(v198, v200, &v229);

        *(v195 + 4) = v201;
        *(v195 + 12) = 2080;
        v202 = v219[14];
        v203 = v219[15];

        v204 = sub_24B8E49D4(v202, v203, &v229);

        *(v195 + 14) = v204;
        *(v195 + 22) = 2112;
        v205 = *(v192 + v227[8]);
        sub_24B9A1CF4(v192, type metadata accessor for FocusSystemConfigurationAction);
        *(v195 + 24) = v205;
        v206 = v222;
        *v222 = v205;
        _os_log_impl(&dword_24B8D3000, v194, v221, "Unable to set system configuration action; error=%s mode=%s action=%@", v195, 0x20u);
        sub_24B8F35E4(v206, &qword_27F064510);
        MEMORY[0x24C251390](v206, -1, -1);
        v207 = v223;
        swift_arrayDestroy();
        MEMORY[0x24C251390](v207, -1, -1);
        MEMORY[0x24C251390](v195, -1, -1);

        v172 = v220;
        sub_24B9A1CF4(v216, type metadata accessor for FocusSystemConfigurationAction);

        v141 = 0;
        v173 = v176;
        v138 = v219;
      }

      else
      {

        sub_24B9A1CF4(v192, type metadata accessor for FocusSystemConfigurationAction);
        sub_24B9A1CF4(v216, type metadata accessor for FocusSystemConfigurationAction);

        v141 = 0;
        v173 = v176;
        v138 = v188;
      }
    }
  }

  while (1)
  {
    v176 = v173 + 1;
    if (__OFADD__(v173, 1))
    {
      break;
    }

    if (v176 >= v172)
    {

      return;
    }

    v171 = *(a2 + 8 * v176);
    ++v173;
    if (v171)
    {
      v222 = v141;
      goto LABEL_112;
    }
  }

LABEL_118:
  __break(1u);
LABEL_119:
  __break(1u);
LABEL_120:
  swift_once();
LABEL_3:
  v33 = sub_24BAA812C();
  __swift_project_value_buffer(v33, qword_27F077050);
  v34 = sub_24BAAA2CC();

  v226 = sub_24BAA810C();

  if (os_log_type_enabled(v226, v34))
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v230[0] = v36;
    *v35 = 136315138;
    v37 = MEMORY[0x24C2501F0](a2, v227);
    v39 = sub_24B8E49D4(v37, v38, v230);

    *(v35 + 4) = v39;
    _os_log_impl(&dword_24B8D3000, v226, v34, "Initialized system actions: %s", v35, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v36);
    MEMORY[0x24C251390](v36, -1, -1);
    MEMORY[0x24C251390](v35, -1, -1);
  }

  else
  {
    v49 = v226;
  }
}

uint64_t sub_24B990BCC()
{

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_24B990C20()
{
  sub_24B9A179C();
}

uint64_t sub_24B990C48(unint64_t a1)
{
  if (a1 >> 62)
  {
    if (sub_24BAAA52C() > 500)
    {
      goto LABEL_4;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10) > 500)
  {
LABEL_4:
  }

  v3 = *(v1 + OBJC_IVAR____TtC15FocusSettingsUI23ActivityConfigViewModel__peopleWithExceptions);

  v4 = sub_24B8F1304(a1);
  sub_24B981A38(v3, v4);
  v6 = v5;

  if (v6)
  {
    goto LABEL_4;
  }

  type metadata accessor for ActivityConfigViewModel();
  sub_24B9A1DBC(&qword_27F066AA0, type metadata accessor for ActivityConfigViewModel);
  sub_24BAA814C();
  sub_24BAA816C();

  sub_24B984444();
  v8 = sub_24B8F1304(a1);

  sub_24B8DF160(v8);
}

uint64_t sub_24B990DC0(SEL *a1)
{
  sub_24B984444();
  v2 = sub_24B8D7188();
  if (v2)
  {
    v3 = v2;
    v4 = [v2 configuration];
    v5 = [v4 *a1];
  }

  else
  {
    v5 = 2;
  }

  return v5;
}

uint64_t sub_24B990E3C()
{
  sub_24B9A1610();
}

uint64_t sub_24B990E64(unint64_t a1)
{
  if (a1 >> 62)
  {
    if (sub_24BAAA52C() > 500)
    {
      goto LABEL_4;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10) > 500)
  {
LABEL_4:
  }

  v3 = *(v1 + OBJC_IVAR____TtC15FocusSettingsUI23ActivityConfigViewModel__appsWithExceptions);

  v5 = sub_24B8F154C(v4);

  v6 = sub_24B9817E4(v3, v5);

  if (v6)
  {
    goto LABEL_4;
  }

  type metadata accessor for ActivityConfigViewModel();
  sub_24B9A1DBC(&qword_27F066AA0, type metadata accessor for ActivityConfigViewModel);
  sub_24BAA814C();
  sub_24BAA816C();

  sub_24B984444();
  sub_24B8DD9E0(a1);
}

size_t sub_24B990FC8()
{
  sub_24B984444();
  v0 = sub_24B8DF718();

  return v0;
}

void sub_24B991000(uint64_t a1)
{
  if (qword_27F0630F0 != -1)
  {
    swift_once();
  }

  v2 = sub_24BAA812C();
  __swift_project_value_buffer(v2, qword_27F077038);

  v3 = sub_24BAA810C();
  v4 = sub_24BAAA2CC();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v26 = v6;
    *v5 = 136315138;
    sub_24B984444();
    v7 = sub_24B8DF718();

    v8 = type metadata accessor for Trigger(0);
    v9 = MEMORY[0x24C2501F0](v7, v8);
    v11 = v10;

    v12 = sub_24B8E49D4(v9, v11, &v26);

    *(v5 + 4) = v12;
    _os_log_impl(&dword_24B8D3000, v3, v4, "updateTrigger %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x24C251390](v6, -1, -1);
    MEMORY[0x24C251390](v5, -1, -1);
  }

  sub_24B984444();
  v13 = sub_24B8DF718();

  MEMORY[0x28223BE20](v14);
  v25[2] = a1;
  v15 = sub_24B991438(sub_24B9A20DC, v25, v13);
  v17 = v16;

  v18 = sub_24BAA810C();
  if ((v17 & 1) == 0)
  {
    v21 = sub_24BAAA2CC();
    if (os_log_type_enabled(v18, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 134217984;
      *(v22 + 4) = v15;
      _os_log_impl(&dword_24B8D3000, v18, v21, "updateTrigger %ld", v22, 0xCu);
      MEMORY[0x24C251390](v22, -1, -1);
    }

    sub_24B984444();
    v23 = sub_24B8DF718();

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      if ((v15 & 0x8000000000000000) == 0)
      {
        goto LABEL_13;
      }
    }

    else
    {
      v23 = sub_24B9AEC30(v23);
      if ((v15 & 0x8000000000000000) == 0)
      {
LABEL_13:
        if (v15 < v23[2])
        {
          v24 = *(type metadata accessor for Trigger(0) - 8);
          sub_24B9A210C(a1, v23 + ((*(v24 + 80) + 32) & ~*(v24 + 80)) + *(v24 + 72) * v15);
          type metadata accessor for ActivityConfigViewModel();
          sub_24B9A1DBC(&qword_27F066AA0, type metadata accessor for ActivityConfigViewModel);
          sub_24BAA814C();
          sub_24BAA816C();

          sub_24B984444();
          sub_24B8DFC94(v23);

          return;
        }

        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
    return;
  }

  v19 = sub_24BAAA2AC();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&dword_24B8D3000, v18, v19, "updateTrigger found no trigger to update", v20, 2u);
    MEMORY[0x24C251390](v20, -1, -1);
  }
}

uint64_t sub_24B991438(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return 0;
  }

  v7 = 0;
  v8 = *(type metadata accessor for Trigger(0) - 8);
  v9 = a3 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
  v10 = *(v8 + 72);
  while (1)
  {
    v11 = a1(v9);
    if (v3 || (v11 & 1) != 0)
    {
      break;
    }

    ++v7;
    v9 += v10;
    if (v4 == v7)
    {
      return 0;
    }
  }

  return v7;
}

uint64_t sub_24B991524()
{
  sub_24B984444();
  v0 = sub_24B8D7188();
  if (v0)
  {
    v1 = v0;
    v2 = [v0 mode];

    v3 = [v2 name];
    v4 = sub_24BAAA01C();
  }

  else
  {

    return 0;
  }

  return v4;
}

unint64_t sub_24B9915D0()
{
  sub_24B984444();
  v0 = sub_24B8D7188();
  if (v0 && (v1 = v0, v2 = [v0 mode], v1, v3 = objc_msgSend(v2, sel_symbolImageName), v2, v3))
  {
    v4 = sub_24BAAA01C();

    return v4;
  }

  else
  {

    return 0xD000000000000012;
  }
}

uint64_t sub_24B9916D0()
{
  sub_24B984444();
  v0 = sub_24B8D7188();
  if (v0 && (v1 = v0, v2 = [v0 mode], v1, v3 = objc_msgSend(v2, sel_tintColorName), v2, v3))
  {
    v4 = sub_24BAAA01C();

    return v4;
  }

  else
  {

    return 0;
  }
}

uint64_t sub_24B9917C0(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t), uint64_t a4, uint64_t (*a5)(id))
{
  v7 = v5;
  if (a2)
  {
    type metadata accessor for ActivityConfigViewModel();
    sub_24B9A1DBC(&qword_27F066AA0, type metadata accessor for ActivityConfigViewModel);
    sub_24BAA814C();
    sub_24BAA816C();

    sub_24B984444();
    a3(a1, a2);
  }

  else
  {
    if (!*(v5 + 24))
    {
      swift_getKeyPath();
      swift_getKeyPath();
      sub_24BAA81BC();

      v13 = swift_allocObject();
      swift_weakInit();
      type metadata accessor for ActivityConfigurationManager();
      swift_allocObject();
      v14 = sub_24B8F0DEC(v22, v23, a4, v13);

      *(v7 + 24) = v14;
    }

    v15 = sub_24B8D7188();

    if (v15)
    {
      v16 = [v15 mode];

      v17 = [v16 semanticType];
      v18 = a5(v17);
      v19 = sub_24BAAA01C();
      v21 = v20;

      type metadata accessor for ActivityConfigViewModel();
      sub_24B9A1DBC(&qword_27F066AA0, type metadata accessor for ActivityConfigViewModel);
      sub_24BAA814C();
      sub_24BAA816C();

      sub_24B984444();
      a3(v19, v21);
    }
  }

  return result;
}

id sub_24B991A94()
{
  sub_24B984444();
  v0 = sub_24B8D7188();
  if (v0 && (v1 = v0, v2 = [v0 mode], v1, v3 = objc_msgSend(v2, sel_tintColorName), v2, v3))
  {
    sub_24BAAA01C();
  }

  else
  {
  }

  sub_24B8F37E8(0, &qword_27F066150);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();

  if (([ObjCClassFromMetadata respondsToSelector_] & 1) == 0)
  {

    return 0;
  }

  v5 = [ObjCClassFromMetadata performSelector_];
  result = ObjCClassFromMetadata;
  if (v5)
  {

    swift_unknownObjectRetain_n();
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      v7 = sub_24BAA973C();
      swift_unknownObjectRelease();
      return v7;
    }

    swift_unknownObjectRelease_n();
    return 0;
  }

  __break(1u);
  return result;
}

BOOL sub_24B991C2C()
{
  if (!*(v0 + 24))
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_24BAA81BC();

    v1 = swift_allocObject();
    swift_weakInit();
    type metadata accessor for ActivityConfigurationManager();
    swift_allocObject();
    v2 = v0;
    v3 = sub_24B8F0DEC(v9, v10, sub_24B9A2F9C, v1);

    *(v2 + 24) = v3;
  }

  v4 = sub_24B8D7188();
  if (v4)
  {
    v5 = v4;
    v6 = [v4 configuration];
    v7 = [v6 minimumBreakthroughUrgency];

    return v7 == 1;
  }

  else
  {

    return 0;
  }
}

BOOL sub_24B991DAC()
{
  if (!*(v0 + 24))
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_24BAA81BC();

    v1 = swift_allocObject();
    swift_weakInit();
    type metadata accessor for ActivityConfigurationManager();
    swift_allocObject();
    v2 = v0;
    v3 = sub_24B8F0DEC(v8, v9, sub_24B9A2F9C, v1);

    *(v2 + 24) = v3;
  }

  v4 = sub_24B8D7188();
  if (v4)
  {
    v5 = v4;
    [v4 impactsAvailability];
    v6 = DNDResolvedImpactsAvailabilitySetting();

    return v6 == 2;
  }

  else
  {

    return 0;
  }
}

uint64_t sub_24B991F20(SEL *a1)
{
  if (*(v1 + OBJC_IVAR____TtC15FocusSettingsUI23ActivityConfigViewModel_showSilenceListMessage) != 1)
  {
    goto LABEL_7;
  }

  sub_24B984444();
  v3 = sub_24B8D7188();
  if (!v3)
  {

    goto LABEL_7;
  }

  v4 = v3;
  v5 = [v3 configuration];
  v6 = [v5 *a1];

  if (v6 != 1)
  {
LABEL_7:
    v7 = 0;
    return v7 & 1;
  }

  if (sub_24B992134())
  {
    v7 = sub_24B992160() ^ 1;
  }

  else
  {
    v7 = 1;
  }

  return v7 & 1;
}

void sub_24B991FF0(char a1)
{
  v2 = a1 & 1;
  v3 = OBJC_IVAR____TtC15FocusSettingsUI23ActivityConfigViewModel_showSilenceListMessage;
  if (*(v1 + OBJC_IVAR____TtC15FocusSettingsUI23ActivityConfigViewModel_showSilenceListMessage) != (a1 & 1))
  {
    type metadata accessor for ActivityConfigViewModel();
    sub_24B9A1DBC(&qword_27F066AA0, type metadata accessor for ActivityConfigViewModel);
    sub_24BAA814C();
    sub_24BAA816C();

    *(v1 + v3) = v2;
    v5 = [objc_opt_self() standardUserDefaults];
    v6 = sub_24BAA9FDC();
    [v5 setBool:(a1 & 1) == 0 forKey:v6];
  }
}

uint64_t sub_24B99218C(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  if (!*(v2 + 24))
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_24BAA81BC();

    v5 = swift_allocObject();
    swift_weakInit();
    type metadata accessor for ActivityConfigurationManager();
    swift_allocObject();
    v6 = v2;
    v7 = sub_24B8F0DEC(v11, v12, a1, v5);

    *(v6 + 24) = v7;
  }

  v9 = a2(v8);

  return v9 & 1;
}

BOOL sub_24B9922C8(SEL *a1)
{
  sub_24B984444();
  v2 = sub_24B8D7188();
  if (v2 && (v3 = v2, v4 = [v2 configuration], v3, v4))
  {
    v5 = [v4 *a1];

    return v5 == 2;
  }

  else
  {

    return 0;
  }
}

unint64_t sub_24B992358()
{
  v1 = *(v0 + OBJC_IVAR____TtC15FocusSettingsUI23ActivityConfigViewModel_homeScreenSnapshotsForSuggestedPages);
  if (!v1)
  {
    return 0;
  }

  if (v1 >> 62)
  {
LABEL_20:
    v2 = sub_24BAAA52C();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = 0;
  while (v2 != v3)
  {
    if ((v1 & 0xC000000000000001) != 0)
    {
      MEMORY[0x24C2506E0](v3, v1);
    }

    else
    {
      if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_19:
        __break(1u);
        goto LABEL_20;
      }
    }

    swift_getKeyPath();
    swift_getKeyPath();
    sub_24BAA81BC();

    if (v6)
    {
      goto LABEL_16;
    }

    if (__OFADD__(v3++, 1))
    {
      goto LABEL_19;
    }
  }

  v3 = 0;
LABEL_16:

  return v3;
}

void sub_24B9924B0()
{
  v1 = v0;
  v2 = sub_24BAA7E4C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24B984444();
  v6 = sub_24B8D7188();
  if (v6)
  {
    v7 = v6;
    v8 = [v6 mode];

    v9 = [v8 identifier];
    sub_24BAA7E1C();

    sub_24BAA7DEC();
    (*(v3 + 8))(v5, v2);
    v10 = objc_allocWithZone(MEMORY[0x277D66A70]);
    v11 = sub_24BAA9FDC();

    v12 = [v10 initWithFocusModeIdentifier_];

    [v12 setExcludeWallpaper_];
    v13 = objc_opt_self();
    aBlock[4] = sub_24B9A20D4;
    aBlock[5] = v1;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24B9A3000;
    aBlock[3] = &block_descriptor_297;
    v14 = _Block_copy(aBlock);

    [v13 homeScreenSnapshotsWithRequest:v12 completion:v14];
    _Block_release(v14);
  }

  else
  {
  }
}

id sub_24B992730(id result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
    result = [result snapshots];
    if (result)
    {
      v4 = result;
      sub_24B8F37E8(0, &unk_27F066AD0);
      v5 = sub_24BAAA12C();

      v6 = *(a3 + OBJC_IVAR____TtC15FocusSettingsUI23ActivityConfigViewModel_homeScreenSnapshots);
      if (v6 >> 62)
      {
        goto LABEL_38;
      }

      for (i = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10); i; v6 = v23)
      {
        if (v5 >> 62)
        {
          v24 = v6;
          v31 = v5 & 0xFFFFFFFFFFFFFF8;
          v8 = sub_24BAAA52C();
          v6 = v24;
        }

        else
        {
          v31 = v5 & 0xFFFFFFFFFFFFFF8;
          v8 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v29 = v6 & 0xC000000000000001;
        v25 = v6 + 32;
        v26 = v6 & 0xFFFFFFFFFFFFFF8;
        v27 = v6;

        v9 = 0;
        v28 = i;
        while (1)
        {
          if (v29)
          {
            v6 = MEMORY[0x24C2506E0](v9, v27);
            v10 = v6;
            v11 = __OFADD__(v9, 1);
            v12 = v9 + 1;
            if (v11)
            {
              goto LABEL_36;
            }
          }

          else
          {
            if (v9 >= *(v26 + 16))
            {
              goto LABEL_37;
            }

            v10 = *(v25 + 8 * v9);

            v11 = __OFADD__(v9, 1);
            v12 = v9 + 1;
            if (v11)
            {
              goto LABEL_36;
            }
          }

          v30 = v12;
          if (v8)
          {
            break;
          }

LABEL_10:

          v9 = v30;
          if (v30 == v28)
          {

            goto LABEL_39;
          }
        }

        v13 = 0;
        while (1)
        {
          if ((v5 & 0xC000000000000001) != 0)
          {
            v6 = MEMORY[0x24C2506E0](v13, v5);
          }

          else
          {
            if (v13 >= *(v31 + 16))
            {
              goto LABEL_35;
            }

            v6 = *(v5 + 8 * v13 + 32);
          }

          v14 = v6;
          v15 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            break;
          }

          v16 = [v6 listIdentifier];
          if (v16)
          {
            v17 = v16;
            v18 = sub_24BAAA01C();
            v20 = v19;

            if (v18 == *(v10 + 16) && v20 == *(v10 + 24))
            {

LABEL_9:
              sub_24BA61C40(v14);

              goto LABEL_10;
            }

            v22 = sub_24BAAA78C();

            if (v22)
            {
              goto LABEL_9;
            }
          }

          ++v13;
          if (v15 == v8)
          {
            goto LABEL_10;
          }
        }

        __break(1u);
LABEL_35:
        __break(1u);
LABEL_36:
        __break(1u);
LABEL_37:
        __break(1u);
LABEL_38:
        v23 = v6;
        i = sub_24BAAA52C();
      }

LABEL_39:
    }
  }

  return result;
}

uint64_t sub_24B9929F4()
{
  sub_24B984444();
  v0 = sub_24B8D7188();

  if (!v0)
  {
    return 0;
  }

  v1 = [v0 mode];

  v2 = [v1 semanticType];
  if (v2 <= 3)
  {
    if (v2 > 0)
    {
      if (v2 == 1)
      {
        return 4;
      }

      if (v2 == 2)
      {
        return 5;
      }

      return 6;
    }

    if (v2 == -1)
    {
      return 2;
    }

    if (!v2)
    {
      return 3;
    }

    goto LABEL_23;
  }

  if (v2 > 5)
  {
    switch(v2)
    {
      case 6:
        return 9;
      case 7:
        return 10;
      case 8:
        return 11;
    }

LABEL_23:
    if (qword_27F0630F0 != -1)
    {
      swift_once();
    }

    v4 = sub_24BAA812C();
    __swift_project_value_buffer(v4, qword_27F077038);
    v5 = sub_24BAAA2AC();
    v6 = sub_24BAA810C();
    if (os_log_type_enabled(v6, v5))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v14 = v8;
      *v7 = 136315138;
      v9 = DNDModeSemanticTypeToString();
      v10 = sub_24BAAA01C();
      v12 = v11;

      v13 = sub_24B8E49D4(v10, v12, &v14);

      *(v7 + 4) = v13;
      _os_log_impl(&dword_24B8D3000, v6, v5, "No mapping from %s to ATXSuggestedPageType", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v8);
      MEMORY[0x24C251390](v8, -1, -1);
      MEMORY[0x24C251390](v7, -1, -1);
    }

    return 0;
  }

  if (v2 == 4)
  {
    return 7;
  }

  else
  {
    return 8;
  }
}

void sub_24B992C90(unint64_t a1, double a2)
{
  v4 = sub_24BAA7E4C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24B984444();
  v8 = sub_24B8D7188();
  if (v8)
  {
    v9 = v8;
    v10 = [v8 mode];

    v11 = [v10 identifier];
    sub_24BAA7E1C();

    v32 = sub_24BAA7DEC();
    v33 = v12;
    (*(v5 + 8))(v7, v4);
    aBlock[0] = MEMORY[0x277D84F90];
    if (a1 >> 62)
    {
LABEL_28:
      v13 = sub_24BAAA52C();
    }

    else
    {
      v13 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v14 = 0;
    v15 = MEMORY[0x277D84F90];
    while (v13 != v14)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v16 = MEMORY[0x24C2506E0](v14, a1);
        v17 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          goto LABEL_26;
        }
      }

      else
      {
        if (v14 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_27;
        }

        v16 = *(a1 + 8 * v14 + 32);

        v17 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
LABEL_26:
          __break(1u);
LABEL_27:
          __break(1u);
          goto LABEL_28;
        }
      }

      v18 = *(v16 + 56);
      v19 = v18;

      ++v14;
      if (v18)
      {
        MEMORY[0x24C2501C0](v20);
        if (*((aBlock[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((aBlock[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_24BAAA14C();
        }

        sub_24BAAA16C();
        v15 = aBlock[0];
        v14 = v17;
      }
    }

    if (v15 >> 62)
    {
      if (sub_24BAAA52C())
      {
        goto LABEL_18;
      }
    }

    else if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_18:
      v21 = objc_allocWithZone(MEMORY[0x277D66A70]);
      v22 = sub_24BAA9FDC();

      v23 = [v21 initWithFocusModeIdentifier_];

      [v23 setExcludeWallpaper_];
      sub_24B8F37E8(0, &qword_27F066AC8);
      v24 = sub_24BAAA11C();

      [v23 setProactivePages_];

      [v23 setSnapshotDelay_];
      [v23 setSnapshotScale_];
      v25 = objc_opt_self();
      v26 = swift_allocObject();
      *(v26 + 16) = a1;
      aBlock[4] = sub_24B9A20CC;
      aBlock[5] = v26;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_24B9A3000;
      aBlock[3] = &block_descriptor_294;
      v27 = _Block_copy(aBlock);

      [v25 homeScreenSnapshotsForSuggestedPagesWithRequest:v23 completion:v27];
      _Block_release(v27);

      return;
    }
  }

  else
  {

    if (qword_27F0630F0 != -1)
    {
      swift_once();
    }

    v28 = sub_24BAA812C();
    __swift_project_value_buffer(v28, qword_27F077038);
    v29 = sub_24BAAA2AC();
    v33 = sub_24BAA810C();
    if (os_log_type_enabled(v33, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_24B8D3000, v33, v29, "No Focus mode UUID when updating suggested Home Screen snapshots.", v30, 2u);
      MEMORY[0x24C251390](v30, -1, -1);
    }

    v31 = v33;
  }
}

void sub_24B9931AC(void *a1, uint64_t a2, unint64_t a3)
{
  if (!a1)
  {
    return;
  }

  v4 = [a1 snapshots];
  if (!v4)
  {
    return;
  }

  v5 = v4;
  sub_24B8F37E8(0, &unk_27F066AD0);
  v6 = sub_24BAAA12C();

  if (v6 >> 62)
  {
    goto LABEL_25;
  }

  v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!(a3 >> 62))
  {
    goto LABEL_5;
  }

  while (2)
  {
    if (v7 != sub_24BAAA52C())
    {
      goto LABEL_31;
    }

    v7 = sub_24BAAA52C();
    if (!v7)
    {
      goto LABEL_28;
    }

LABEL_7:
    log = (a3 & 0xC000000000000001);
    v8 = a3 & 0xFFFFFFFFFFFFFF8;
    v9 = 4;
    while (1)
    {
      v10 = v9 - 4;
      if (!log)
      {
        break;
      }

      v11 = a3;
      MEMORY[0x24C2506E0](v9 - 4, a3);
      a3 = v9 - 3;
      if (__OFADD__(v10, 1))
      {
        goto LABEL_22;
      }

LABEL_11:
      if ((v6 & 0xC000000000000001) != 0)
      {
        v12 = MEMORY[0x24C2506E0](v9 - 4, v6);
      }

      else
      {
        if (v10 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_24;
        }

        v12 = *(v6 + 8 * v9);
      }

      v13 = v12;
      sub_24BA61C40(v12);

      ++v9;
      v14 = a3 == v7;
      a3 = v11;
      if (v14)
      {
        goto LABEL_28;
      }
    }

    if (v10 >= *(v8 + 16))
    {
      goto LABEL_23;
    }

    v11 = a3;

    a3 = v9 - 3;
    if (!__OFADD__(v10, 1))
    {
      goto LABEL_11;
    }

LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    v7 = sub_24BAAA52C();
    if (a3 >> 62)
    {
      continue;
    }

    break;
  }

LABEL_5:
  if (v7 != *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_31:

    if (qword_27F0630F0 != -1)
    {
      swift_once();
    }

    v15 = sub_24BAA812C();
    __swift_project_value_buffer(v15, qword_27F077038);
    v16 = sub_24BAAA2AC();
    loga = sub_24BAA810C();
    if (os_log_type_enabled(loga, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_24B8D3000, loga, v16, "The number of available snapshots for suggested pages has changed.", v17, 2u);
      MEMORY[0x24C251390](v17, -1, -1);
    }

    return;
  }

  if (v7)
  {
    goto LABEL_7;
  }

LABEL_28:
}

void sub_24B993494()
{
  v1 = v0;
  v2 = sub_24BAA7E4C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24B984444();
  v6 = sub_24B8D7188();
  if (v6)
  {
    v7 = v6;
    v8 = [v6 mode];

    v9 = [v8 identifier];
    sub_24BAA7E1C();

    sub_24BAA7DEC();
    (*(v3 + 8))(v5, v2);
    if (qword_27F0630F0 != -1)
    {
      swift_once();
    }

    v10 = sub_24BAA812C();
    __swift_project_value_buffer(v10, qword_27F077038);
    v11 = sub_24BAAA2CC();
    v12 = sub_24BAA810C();
    if (os_log_type_enabled(v12, v11))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_24B8D3000, v12, v11, "Updating Home Screen snapshots", v13, 2u);
      MEMORY[0x24C251390](v13, -1, -1);
    }

    v14 = objc_allocWithZone(MEMORY[0x277D66A70]);
    v15 = sub_24BAA9FDC();

    v16 = [v14 initWithFocusModeIdentifier_];

    [v16 setExcludeWallpaper_];
    v17 = objc_opt_self();
    aBlock[4] = sub_24B9A208C;
    aBlock[5] = v1;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24B9A3000;
    aBlock[3] = &block_descriptor_288;
    v18 = _Block_copy(aBlock);

    [v17 homeScreenSnapshotsWithRequest:v16 completion:v18];
    _Block_release(v18);
  }

  else
  {

    if (qword_27F0630F0 != -1)
    {
      swift_once();
    }

    v19 = sub_24BAA812C();
    __swift_project_value_buffer(v19, qword_27F077038);
    v20 = sub_24BAAA2AC();
    v24 = sub_24BAA810C();
    if (os_log_type_enabled(v24, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_24B8D3000, v24, v20, "Unable to update Home Screen snapshots because focus mode UUID is nil", v21, 2u);
      MEMORY[0x24C251390](v21, -1, -1);
    }

    v22 = v24;
  }
}

void sub_24B993878(void *a1, NSObject *a2, uint64_t a3)
{
  if (!a1 || (v5 = [a1 snapshots]) == 0)
  {
    if (a2)
    {
      v13 = a2;
      if (qword_27F0630F0 != -1)
      {
        swift_once();
      }

      v14 = sub_24BAA812C();
      __swift_project_value_buffer(v14, qword_27F077038);
      v15 = sub_24BAAA2AC();
      v16 = a2;
      oslog = sub_24BAA810C();

      if (!os_log_type_enabled(oslog, v15))
      {

        v25 = a2;

        goto LABEL_23;
      }

      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *v17 = 138412290;
      v19 = a2;
      v20 = _swift_stdlib_bridgeErrorToNSError();
      *(v17 + 4) = v20;
      *v18 = v20;
      _os_log_impl(&dword_24B8D3000, oslog, v15, "Unable to update Home Screen snapshots with error: %@", v17, 0xCu);
      sub_24B8F35E4(v18, &qword_27F064510);
      MEMORY[0x24C251390](v18, -1, -1);
      MEMORY[0x24C251390](v17, -1, -1);

LABEL_21:
      v25 = oslog;

LABEL_23:

      return;
    }

    if (qword_27F0630F0 == -1)
    {
LABEL_19:
      v22 = sub_24BAA812C();
      __swift_project_value_buffer(v22, qword_27F077038);
      v23 = sub_24BAAA2AC();
      oslog = sub_24BAA810C();
      if (os_log_type_enabled(oslog, v23))
      {
        v24 = swift_slowAlloc();
        *v24 = 0;
        _os_log_impl(&dword_24B8D3000, oslog, v23, "Unable to update Home Screen snapshots with unknown error", v24, 2u);
        MEMORY[0x24C251390](v24, -1, -1);
      }

      goto LABEL_21;
    }

LABEL_57:
    swift_once();
    goto LABEL_19;
  }

  v6 = v5;
  sub_24B8F37E8(0, &unk_27F066AD0);
  v7 = sub_24BAAA12C();

  if (v7 >> 62)
  {
    goto LABEL_53;
  }

  v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_5:
  v9 = MEMORY[0x277D84F90];
  if (v8)
  {
    v37 = MEMORY[0x277D84F90];
    sub_24BAAA68C();
    if ((v8 & 0x8000000000000000) == 0)
    {
      v10 = 0;
      do
      {
        if ((v7 & 0xC000000000000001) != 0)
        {
          v11 = MEMORY[0x24C2506E0](v10, v7);
        }

        else
        {
          v11 = *(v7 + 8 * v10 + 32);
        }

        v12 = v11;
        ++v10;
        type metadata accessor for HomeScreenSnapshot();
        swift_allocObject();
        sub_24BA61834(v12, 0);
        sub_24BAAA66C();
        sub_24BAAA69C();
        sub_24BAAA6AC();
        sub_24BAAA67C();
      }

      while (v8 != v10);

      v21 = v37;
      goto LABEL_28;
    }

    __break(1u);
    goto LABEL_57;
  }

  v21 = MEMORY[0x277D84F90];
LABEL_28:
  type metadata accessor for ActivityConfigViewModel();
  sub_24B9A1DBC(&qword_27F066AA0, type metadata accessor for ActivityConfigViewModel);
  sub_24BAA814C();
  sub_24BAA816C();

  v26 = OBJC_IVAR____TtC15FocusSettingsUI23ActivityConfigViewModel_homeScreenSnapshots;
  *(a3 + OBJC_IVAR____TtC15FocusSettingsUI23ActivityConfigViewModel_homeScreenSnapshots) = v21;

  v27 = *(a3 + v26);
  v38 = v9;
  if (v27 >> 62)
  {
    v28 = sub_24BAAA52C();
  }

  else
  {
    v28 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v28)
  {
    v29 = 0;
    v7 = v27 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if ((v27 & 0xC000000000000001) != 0)
      {
        v30 = MEMORY[0x24C2506E0](v29, v27);
        v31 = v29 + 1;
        if (__OFADD__(v29, 1))
        {
LABEL_41:
          __break(1u);
LABEL_42:
          v32 = v38;
          goto LABEL_44;
        }
      }

      else
      {
        if (v29 >= *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_53:
          v8 = sub_24BAAA52C();
          goto LABEL_5;
        }

        v30 = *(v27 + 8 * v29 + 32);

        v31 = v29 + 1;
        if (__OFADD__(v29, 1))
        {
          goto LABEL_41;
        }
      }

      if (*(v30 + 49))
      {
        sub_24BAAA66C();
        sub_24BAAA69C();
        sub_24BAAA6AC();
        sub_24BAAA67C();
      }

      else
      {
      }

      ++v29;
      if (v31 == v28)
      {
        goto LABEL_42;
      }
    }
  }

  v32 = MEMORY[0x277D84F90];
LABEL_44:

  if (v32 < 0 || (v32 & 0x4000000000000000) != 0)
  {
    v33 = sub_24BAAA52C();
  }

  else
  {
    v33 = *(v32 + 16);
  }

  v34 = v33 > 0;
  v35 = OBJC_IVAR____TtC15FocusSettingsUI23ActivityConfigViewModel__customizedHomeScreenPagesEnabled;
  *(a3 + OBJC_IVAR____TtC15FocusSettingsUI23ActivityConfigViewModel__customizedHomeScreenPagesEnabled) = v34;
  sub_24BAA814C();
  sub_24BAA816C();

  if ((v34 ^ *(a3 + v35)))
  {
    if (v33 <= 0)
    {
      sub_24B995E08();
    }

    *(a3 + v35) = v34;
  }

  *(a3 + OBJC_IVAR____TtC15FocusSettingsUI23ActivityConfigViewModel_homeScreenSnapshotsLoaded) = 1;
}

void sub_24B993E6C(char a1)
{
  v2 = v1;
  v4 = sub_24BAA7E4C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24B984444();
  v8 = sub_24B8D7188();
  if (v8)
  {
    v9 = v8;
    v10 = [v8 mode];

    v11 = [v10 identifier];
    sub_24BAA7E1C();

    v12 = sub_24BAA7DEC();
    v14 = v13;
    (*(v5 + 8))(v7, v4);
    if ((a1 & 1) != 0 || (v15 = *(v1 + 48), v16 = sub_24BAA9FDC(), LODWORD(v15) = [v15 allowsSuggestionsForModeUUID_], v16, v15))
    {
      v17 = [objc_allocWithZone(MEMORY[0x277CEB8B8]) init];
      v18 = sub_24BAA9FDC();
      [v17 setModeUUID_];

      v19 = sub_24B9929F4();
      if ((v20 & 1) == 0)
      {
        [v17 setPageType_];
      }

      v21 = sub_24B9A1468();
      v22 = [objc_allocWithZone(MEMORY[0x277CEB8C8]) init];
      v23 = *(v2 + 48);
      v24 = swift_allocObject();
      *(v24 + 16) = v12;
      *(v24 + 24) = v14;
      *(v24 + 32) = v21;
      *(v24 + 40) = v2;
      aBlock[4] = sub_24B9A205C;
      aBlock[5] = v24;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_24B994BB4;
      aBlock[3] = &block_descriptor_279;
      v25 = _Block_copy(aBlock);

      [v23 suggestedPagesWithFilter:v17 layoutOptions:v22 completionHandler:v25];
      _Block_release(v25);
    }

    else
    {

      if (qword_27F0630F0 != -1)
      {
        swift_once();
      }

      v30 = sub_24BAA812C();
      __swift_project_value_buffer(v30, qword_27F077038);
      v31 = sub_24BAAA2CC();
      v32 = sub_24BAA810C();
      if (os_log_type_enabled(v32, v31))
      {
        v33 = swift_slowAlloc();
        *v33 = 0;
        _os_log_impl(&dword_24B8D3000, v32, v31, "Proactive indicated Home Screen page suggestions should not be made", v33, 2u);
        MEMORY[0x24C251390](v33, -1, -1);
      }
    }
  }

  else
  {

    if (qword_27F0630F0 != -1)
    {
      swift_once();
    }

    v26 = sub_24BAA812C();
    __swift_project_value_buffer(v26, qword_27F077038);
    v27 = sub_24BAAA2AC();
    v35 = sub_24BAA810C();
    if (os_log_type_enabled(v35, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_24B8D3000, v35, v27, "Unable to update Home Screen page suggestion snapshots because focus mode UUID is nil", v28, 2u);
      MEMORY[0x24C251390](v28, -1, -1);
    }

    v29 = v35;
  }
}

void sub_24B9942E0(unint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  if (a1)
  {
    v11 = a1 >> 62;
    if (a1 >> 62)
    {
      if (sub_24BAAA52C() >= 1)
      {
LABEL_4:
        v12 = objc_allocWithZone(MEMORY[0x277D66A70]);

        v13 = sub_24BAA9FDC();
        a2 = [v12 initWithFocusModeIdentifier_];

        [a2 setExcludeWallpaper:a5 & 1];
        if (v11)
        {
          v16 = sub_24BAAA52C();
          if (sub_24BAAA52C() < 0)
          {
            __break(1u);
LABEL_49:
            __break(1u);
LABEL_50:
            swift_once();
LABEL_40:
            v33 = sub_24BAA812C();
            __swift_project_value_buffer(v33, qword_27F077038);
            v34 = sub_24BAAA2AC();
            v35 = a2;
            v36 = sub_24BAA810C();

            if (os_log_type_enabled(v36, v34))
            {
              v37 = swift_slowAlloc();
              v38 = swift_slowAlloc();
              v45[0] = v38;
              *v37 = 136315138;
              swift_getErrorValue();
              v39 = sub_24BAAA7DC();
              v41 = sub_24B8E49D4(v39, v40, v45);

              *(v37 + 4) = v41;
              _os_log_impl(&dword_24B8D3000, v36, v34, "Unable to retrieve Home Screen page suggestions from Proactive: %s", v37, 0xCu);
              __swift_destroy_boxed_opaque_existential_0(v38);
              MEMORY[0x24C251390](v38, -1, -1);
              MEMORY[0x24C251390](v37, -1, -1);
            }

            else
            {
            }

            goto LABEL_43;
          }

          if (v16 >= 3)
          {
            v17 = 3;
          }

          else
          {
            v17 = v16;
          }

          if (v16 >= 0)
          {
            v15 = v17;
          }

          else
          {
            v15 = 3;
          }

          v14 = sub_24BAAA52C();
        }

        else
        {
          v14 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v14 >= 3)
          {
            v15 = 3;
          }

          else
          {
            v15 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }
        }

        if (v14 >= v15)
        {
          if ((a1 & 0xC000000000000001) != 0)
          {
            if (v15)
            {
              sub_24B8F37E8(0, &qword_27F066AC8);

              sub_24BAAA61C();
              if (v15 != 1)
              {
                sub_24BAAA61C();
                if (v15 != 2)
                {
                  sub_24BAAA61C();
                }
              }

              if (v11)
              {
LABEL_28:

                v19 = sub_24BAAA6FC();
                v18 = v22;
                v21 = v23;
                if ((v23 & 1) == 0)
                {
                  goto LABEL_29;
                }

LABEL_30:
                v24 = v20;
                sub_24BAAA7AC();
                swift_unknownObjectRetain_n();
                v25 = swift_dynamicCastClass();
                if (!v25)
                {
                  swift_unknownObjectRelease();
                  v25 = MEMORY[0x277D84F90];
                }

                v26 = *(v25 + 16);

                if (__OFSUB__(v21 >> 1, v18))
                {
                  __break(1u);
                }

                else if (v26 == (v21 >> 1) - v18)
                {
                  v27 = swift_dynamicCastClass();
                  swift_unknownObjectRelease();
                  if (v27)
                  {
LABEL_36:
                    sub_24B8F37E8(0, &qword_27F066AC8);
                    v28 = sub_24BAAA11C();

                    [a2 setProactivePages:v28];

                    [a2 setSnapshotDelay:0.5];
                    v29 = objc_opt_self();
                    v30 = swift_allocObject();
                    *(v30 + 16) = a6;
                    *(v30 + 24) = a1;
                    v45[4] = sub_24B9A2084;
                    v45[5] = v30;
                    v45[0] = MEMORY[0x277D85DD0];
                    v45[1] = 1107296256;
                    v45[2] = sub_24B9A3000;
                    v45[3] = &block_descriptor_285;
                    v31 = _Block_copy(v45);

                    [v29 homeScreenSnapshotsForSuggestedPagesWithRequest:a2 completion:v31];
                    _Block_release(v31);
                    goto LABEL_47;
                  }

LABEL_35:
                  swift_unknownObjectRelease();
                  goto LABEL_36;
                }

                swift_unknownObjectRelease();
                v20 = v24;
LABEL_29:
                sub_24B99B30C(v19, v20, v18, v21, &qword_27F066AC8);
                goto LABEL_35;
              }
            }

            else
            {

              if (v11)
              {
                goto LABEL_28;
              }
            }
          }

          else
          {
          }

          v18 = 0;
          v19 = a1 & 0xFFFFFFFFFFFFFF8;
          v20 = (a1 & 0xFFFFFFFFFFFFFF8) + 32;
          v21 = (2 * v15) | 1;
          if ((v21 & 1) == 0)
          {
            goto LABEL_29;
          }

          goto LABEL_30;
        }

        goto LABEL_49;
      }
    }

    else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 1)
    {
      goto LABEL_4;
    }
  }

  v6 = 0x27F063000uLL;
  if (a2)
  {
    v32 = a2;
    if (qword_27F0630F0 == -1)
    {
      goto LABEL_40;
    }

    goto LABEL_50;
  }

LABEL_43:
  if (*(v6 + 240) != -1)
  {
    swift_once();
  }

  v42 = sub_24BAA812C();
  __swift_project_value_buffer(v42, qword_27F077038);
  v43 = sub_24BAAA2CC();
  a2 = sub_24BAA810C();
  if (os_log_type_enabled(a2, v43))
  {
    v44 = swift_slowAlloc();
    *v44 = 0;
    _os_log_impl(&dword_24B8D3000, a2, v43, "Proactive returned no Home Screen page suggestions", v44, 2u);
    MEMORY[0x24C251390](v44, -1, -1);
  }

LABEL_47:
}

uint64_t sub_24B9948E0(void *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  if (a1)
  {
    v5 = [a1 snapshots];
    v6 = MEMORY[0x277D84F90];
    if (v5)
    {
      v7 = v5;
      sub_24B8F37E8(0, &unk_27F066AD0);
      v8 = sub_24BAAA12C();

      v9 = v8 >> 62;
      if (v8 >> 62)
      {
        goto LABEL_25;
      }

      for (i = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_24BAAA52C())
      {
        v22 = v6;
        result = sub_24BAAA68C();
        if (i < 0)
        {
          __break(1u);
          return result;
        }

        v20 = a3;
        if (v9)
        {
          v12 = sub_24BAAA52C();
        }

        else
        {
          v12 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v6 = a4 & 0xC000000000000001;
        v13 = 4;
        v9 = v12 & ~(v12 >> 63);
        while (v9)
        {
          a3 = v13 - 4;
          if ((v8 & 0xC000000000000001) != 0)
          {
            v19 = MEMORY[0x24C2506E0](v13 - 4, v8);
            if (v6)
            {
              goto LABEL_11;
            }
          }

          else
          {
            if (a3 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_23;
            }

            v19 = *(v8 + 8 * v13);
            if (v6)
            {
LABEL_11:
              v14 = MEMORY[0x24C2506E0](v13 - 4, a4);
              goto LABEL_12;
            }
          }

          if (a3 >= *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_24;
          }

          v14 = *(a4 + 8 * v13);
LABEL_12:
          v15 = v14;
          type metadata accessor for HomeScreenSnapshot();
          swift_allocObject();
          v16 = v19;
          v17 = sub_24BA61834(v16, 1);
          v18 = *(v17 + 56);
          *(v17 + 56) = v15;

          sub_24BAAA66C();
          a3 = *(v22 + 16);
          sub_24BAAA69C();
          sub_24BAAA6AC();
          sub_24BAAA67C();
          --v9;
          ++v13;
          if (!--i)
          {

            v6 = v22;
            a3 = v20;
            goto LABEL_27;
          }
        }

        __break(1u);
LABEL_23:
        __break(1u);
LABEL_24:
        __break(1u);
LABEL_25:
        ;
      }
    }
  }

  else
  {
    v6 = MEMORY[0x277D84F90];
  }

LABEL_27:
  type metadata accessor for ActivityConfigViewModel();
  sub_24B9A1DBC(&qword_27F066AA0, type metadata accessor for ActivityConfigViewModel);
  sub_24BAA814C();
  sub_24BAA816C();

  *(a3 + OBJC_IVAR____TtC15FocusSettingsUI23ActivityConfigViewModel_homeScreenSnapshotsForSuggestedPages) = v6;
}

uint64_t sub_24B994BB4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {
    sub_24B8F37E8(0, &qword_27F066AC8);
    v4 = sub_24BAAA12C();
  }

  v6 = a3;
  v5(v4, a3);
}

void sub_24B994C58(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24BAA7E4C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24B984444();
  v10 = sub_24B8D7188();
  if (v10)
  {
    v11 = v10;
    v12 = [v10 mode];

    v13 = [v12 identifier];
    sub_24BAA7E1C();

    sub_24BAA7DEC();
    (*(v7 + 8))(v9, v6);
    v14 = objc_allocWithZone(MEMORY[0x277D66A70]);
    v15 = sub_24BAA9FDC();

    v16 = [v14 initWithFocusModeIdentifier_];

    [v16 setExcludeWallpaper_];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F064710);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_24BAAE690;
    *(v17 + 32) = a1;
    sub_24B8F37E8(0, &qword_27F066AC8);
    v18 = a1;
    v19 = sub_24BAAA11C();

    [v16 setProactivePages_];

    v20 = objc_opt_self();
    v21 = swift_allocObject();
    v21[2] = a2;
    v21[3] = a3;
    v21[4] = v18;
    aBlock[4] = sub_24B9A2010;
    aBlock[5] = v21;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24B9A3000;
    aBlock[3] = &block_descriptor_273;
    v22 = _Block_copy(aBlock);
    v23 = v18;

    [v20 homeScreenSnapshotsForSuggestedPagesWithRequest:v16 completion:v22];
    _Block_release(v22);
  }

  else
  {

    if (qword_27F0630F0 != -1)
    {
      swift_once();
    }

    v24 = sub_24BAA812C();
    __swift_project_value_buffer(v24, qword_27F077038);
    v25 = sub_24BAAA2AC();
    v29 = sub_24BAA810C();
    if (os_log_type_enabled(v29, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_24B8D3000, v29, v25, "Unable to update Home Screen page suggestion snapshots because focus mode UUID is nil", v26, 2u);
      MEMORY[0x24C251390](v26, -1, -1);
    }

    v27 = v29;
  }
}

uint64_t sub_24B995048(void *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4, void *a5)
{
  if (!a1)
  {
    return a3(0);
  }

  v7 = [a1 snapshots];
  if (!v7)
  {
    return a3(0);
  }

  v8 = v7;
  sub_24B8F37E8(0, &unk_27F066AD0);
  v9 = sub_24BAAA12C();

  if (v9 >> 62)
  {
    result = sub_24BAAA52C();
    if (result)
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  result = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
LABEL_10:

    return a3(0);
  }

LABEL_5:
  if ((v9 & 0xC000000000000001) != 0)
  {
    v11 = MEMORY[0x24C2506E0](0, v9);
    goto LABEL_8;
  }

  if (*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v11 = *(v9 + 32);
LABEL_8:
    v12 = v11;

    type metadata accessor for HomeScreenSnapshot();
    swift_allocObject();
    v13 = v12;
    v14 = sub_24BA61834(v13, 1);
    v15 = *(v14 + 56);
    *(v14 + 56) = a5;
    v16 = a5;

    a3(v17);
  }

  __break(1u);
  return result;
}

void sub_24B9951AC(unint64_t a1)
{
  v2 = v1;
  v4 = sub_24BAA7E4C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v70 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24B984444();
  v8 = sub_24B8D7188();
  if (!v8)
  {
    goto LABEL_69;
  }

  v9 = v8;
  v10 = [v8 mode];

  v11 = [v10 identifier];
  sub_24BAA7E1C();

  v12 = sub_24BAA7DEC();
  v14 = v13;
  (*(v5 + 8))(v7, v4);
  v15 = objc_allocWithZone(MEMORY[0x277D66A70]);
  v71 = v12;
  v72 = v14;
  v16 = sub_24BAA9FDC();
  v77 = [v15 initWithFocusModeIdentifier_];

  v78 = OBJC_IVAR____TtC15FocusSettingsUI23ActivityConfigViewModel_homeScreenSnapshots;
  v17 = *(v2 + OBJC_IVAR____TtC15FocusSettingsUI23ActivityConfigViewModel_homeScreenSnapshots);
  v73 = a1;
  if (v17 >> 62)
  {
    goto LABEL_109;
  }

  for (i = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_24BAAA52C())
  {

    if (!i)
    {
      break;
    }

    v75 = v17 & 0xFFFFFFFFFFFFFF8;
    v76 = v17 & 0xC000000000000001;
    v19 = 4;
    v74 = v17;
    while (1)
    {
      v23 = v19 - 4;
      if (v76)
      {
        v24 = MEMORY[0x24C2506E0](v19 - 4, v17);
      }

      else
      {
        if (v23 >= *(v75 + 16))
        {
          goto LABEL_103;
        }

        v24 = *(v17 + 8 * v19);
      }

      swift_getKeyPath();
      swift_getKeyPath();
      sub_24BAA81BC();

      *(v24 + 49) = v79;
      v17 = *(&v78->isa + v2);

      if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v17 & 0x8000000000000000) != 0 || (v17 & 0x4000000000000000) != 0)
      {
        v17 = sub_24B9B0DEC(v17);
      }

      if (v23 >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        break;
      }

      *((v17 & 0xFFFFFFFFFFFFFF8) + 8 * v19) = v24;

      type metadata accessor for ActivityConfigViewModel();
      sub_24B9A1DBC(&qword_27F066AA0, type metadata accessor for ActivityConfigViewModel);
      sub_24BAA814C();
      sub_24BAA816C();

      *(&v78->isa + v2) = v17;

      swift_getKeyPath();
      swift_getKeyPath();
      sub_24BAA81BC();

      v25 = v79;
      v27 = *(v24 + 16);
      v26 = *(v24 + 24);

      if (v25 == 1)
      {
        v28 = [v77 listsToAdd];
        v29 = sub_24BAAA12C();

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v29 = sub_24B99A290(0, *(v29 + 16) + 1, 1, v29);
        }

        v31 = *(v29 + 16);
        v30 = *(v29 + 24);
        v32 = v31 + 1;
        if (v31 >= v30 >> 1)
        {
          v29 = sub_24B99A290((v30 > 1), v31 + 1, 1, v29);
        }

        v20 = &selRef_setListsToAdd_;
      }

      else
      {
        v33 = [v77 listsToRemove];
        v29 = sub_24BAAA12C();

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v29 = sub_24B99A290(0, *(v29 + 16) + 1, 1, v29);
        }

        v31 = *(v29 + 16);
        v34 = *(v29 + 24);
        v32 = v31 + 1;
        if (v31 >= v34 >> 1)
        {
          v29 = sub_24B99A290((v34 > 1), v31 + 1, 1, v29);
        }

        v20 = &selRef_setListsToRemove_;
      }

      *(v29 + 16) = v32;
      v21 = v29 + 16 * v31;
      *(v21 + 32) = v27;
      *(v21 + 40) = v26;
      v22 = sub_24BAAA11C();

      [v77 *v20];

      ++v19;
      --i;
      v17 = v74;
      if (!i)
      {
        goto LABEL_27;
      }
    }

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
    ;
  }

LABEL_27:

  v35 = objc_opt_self();
  [v35 updateFocusModeHomeScreenSettingsWithRequest_];
  v79 = MEMORY[0x277D84F90];
  v36 = v73;
  v75 = v73 & 0xFFFFFFFFFFFFFF8;
  if (v73 >> 62)
  {
    v37 = sub_24BAAA52C();
  }

  else
  {
    v37 = *((v73 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v17 = 0;
  v76 = v36 & 0xC000000000000001;
  v38 = MEMORY[0x277D84F90];
  while (v37 != v17)
  {
    if (v76)
    {
      v39 = MEMORY[0x24C2506E0](v17, v36);
      v40 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        goto LABEL_100;
      }
    }

    else
    {
      if (v17 >= *(v75 + 16))
      {
        goto LABEL_101;
      }

      v39 = *(v36 + 8 * v17 + 32);

      v40 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
LABEL_100:
        __break(1u);
LABEL_101:
        __break(1u);
        goto LABEL_102;
      }
    }

    v41 = *(v39 + 56);
    v42 = v41;

    ++v17;
    if (v41)
    {
      MEMORY[0x24C2501C0](v43);
      if (*((v79 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v79 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_24BAAA14C();
      }

      sub_24BAAA16C();
      v38 = v79;
      v17 = v40;
    }
  }

  v44 = MEMORY[0x277D84F90];
  if (v38 >> 62)
  {
    if (sub_24BAAA52C())
    {
      goto LABEL_43;
    }

LABEL_112:

    goto LABEL_113;
  }

  if (!*((v38 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_112;
  }

LABEL_43:
  v45 = objc_allocWithZone(MEMORY[0x277D66A70]);
  v46 = sub_24BAA9FDC();

  v47 = [v45 initWithFocusModeIdentifier_];

  sub_24B8F37E8(0, &qword_27F066AC8);
  v17 = sub_24BAAA11C();

  [v47 setProactivePages_];

  v71 = v47;
  [v35 addSuggestedHomeScreenPageWithRequest_];
  v48 = type metadata accessor for ActivityConfigViewModel();
  v49 = sub_24B9A1DBC(&qword_27F066AA0, type metadata accessor for ActivityConfigViewModel);
  v74 = v48;
  v72 = v49;
  sub_24BAA814C();
  sub_24BAA816C();

  *(v2 + OBJC_IVAR____TtC15FocusSettingsUI23ActivityConfigViewModel_homeScreenSnapshotsForSuggestedPages) = v44;

  if (!v37)
  {
LABEL_76:
    v17 = *(&v78->isa + v2);
    v79 = v44;
    if (v17 >> 62)
    {
      v62 = sub_24BAAA52C();
    }

    else
    {
      v62 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (!v62)
    {
      v66 = MEMORY[0x277D84F90];
      goto LABEL_92;
    }

    v63 = 0;
    while (1)
    {
      if ((v17 & 0xC000000000000001) != 0)
      {
        v64 = MEMORY[0x24C2506E0](v63, v17);
        v65 = v63 + 1;
        if (__OFADD__(v63, 1))
        {
          goto LABEL_89;
        }
      }

      else
      {
        if (v63 >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_108;
        }

        v64 = *(v17 + 8 * v63 + 32);

        v65 = v63 + 1;
        if (__OFADD__(v63, 1))
        {
LABEL_89:
          __break(1u);
LABEL_90:
          v66 = v79;
LABEL_92:

          if ((v66 & 0x8000000000000000) != 0 || (v66 & 0x4000000000000000) != 0)
          {
            v67 = sub_24BAAA52C();
          }

          else
          {
            v67 = *(v66 + 16);
          }

          v68 = v67 > 0;
          v69 = OBJC_IVAR____TtC15FocusSettingsUI23ActivityConfigViewModel__customizedHomeScreenPagesEnabled;
          *(v2 + OBJC_IVAR____TtC15FocusSettingsUI23ActivityConfigViewModel__customizedHomeScreenPagesEnabled) = v68;
          sub_24BAA814C();
          sub_24BAA816C();

          if ((v68 ^ *(v2 + v69)))
          {
            if (v67 <= 0)
            {
              sub_24B995E08();
            }

            *(v2 + v69) = v68;
            return;
          }

LABEL_113:
          return;
        }
      }

      if (*(v64 + 49))
      {
        sub_24BAAA66C();
        sub_24BAAA69C();
        sub_24BAAA6AC();
        sub_24BAAA67C();
      }

      else
      {
      }

      ++v63;
      if (v65 == v62)
      {
        goto LABEL_90;
      }
    }
  }

  v50 = 0;
  while (1)
  {
    if (v76)
    {
      v52 = MEMORY[0x24C2506E0](v50, v36);
      v53 = v50 + 1;
      if (__OFADD__(v50, 1))
      {
        goto LABEL_104;
      }
    }

    else
    {
      if (v50 >= *(v75 + 16))
      {
        goto LABEL_105;
      }

      v52 = *(v36 + 8 * v50 + 32);

      v53 = v50 + 1;
      if (__OFADD__(v50, 1))
      {
        goto LABEL_104;
      }
    }

    *(v52 + 48) = 256;
    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(v79) = 1;

    sub_24BAA81CC();
    v51 = *(&v78->isa + v2);
    v17 = v51 >> 62;
    if (v51 >> 62)
    {
      break;
    }

    v54 = *((v51 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v54 < v50)
    {
      goto LABEL_106;
    }

    if (v54 < v50)
    {
      goto LABEL_107;
    }

    v55 = v54 + 1;
    if (__OFADD__(v54, 1))
    {
      goto LABEL_68;
    }

LABEL_55:

    isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
    v79 = v51;
    if (isUniquelyReferenced_nonNull_bridgeObject)
    {
      if (!v17)
      {
        if (v55 <= *((v51 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_47;
        }

        goto LABEL_46;
      }
    }

    else if (!v17)
    {
      goto LABEL_46;
    }

    sub_24BAAA52C();
LABEL_46:
    v51 = sub_24BAAA63C();
    v79 = v51;
LABEL_47:
    sub_24B9AEFB0(v50, v50, 1, v52);

    sub_24BAA814C();
    sub_24BAA816C();

    *(&v78->isa + v2) = v51;

    ++v50;
    v36 = v73;
    if (v53 == v37)
    {
      goto LABEL_76;
    }
  }

  if (sub_24BAAA52C() < v50)
  {
    goto LABEL_106;
  }

  if (sub_24BAAA52C() < v50)
  {
    __break(1u);
    return;
  }

  v57 = sub_24BAAA52C();
  v55 = v57 + 1;
  if (!__OFADD__(v57, 1))
  {
    goto LABEL_55;
  }

LABEL_68:
  __break(1u);
LABEL_69:

  if (qword_27F0630F0 != -1)
  {
    swift_once();
  }

  v58 = sub_24BAA812C();
  __swift_project_value_buffer(v58, qword_27F077038);
  v59 = sub_24BAAA2AC();
  v78 = sub_24BAA810C();
  if (os_log_type_enabled(v78, v59))
  {
    v60 = swift_slowAlloc();
    *v60 = 0;
    _os_log_impl(&dword_24B8D3000, v78, v59, "Unable to commit Home Screen page settings changes because focus mode UUID is nil", v60, 2u);
    MEMORY[0x24C251390](v60, -1, -1);
  }

  v61 = v78;
}

void sub_24B995E08()
{
  v1 = v0;
  v2 = sub_24BAA7E4C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24B984444();
  v6 = sub_24B8D7188();
  if (!v6)
  {

    if (qword_27F0630F0 != -1)
    {
      swift_once();
    }

    v31 = sub_24BAA812C();
    __swift_project_value_buffer(v31, qword_27F077038);
    v32 = sub_24BAAA2AC();
    v37 = sub_24BAA810C();
    if (os_log_type_enabled(v37, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_24B8D3000, v37, v32, "Unable to remove all customized home screen because focus mode UUID is nil", v33, 2u);
      MEMORY[0x24C251390](v33, -1, -1);
    }

    v34 = v37;

    return;
  }

  v7 = v6;
  v8 = [v6 mode];

  v9 = [v8 identifier];
  sub_24BAA7E1C();

  sub_24BAA7DEC();
  (*(v3 + 8))(v5, v2);
  v10 = objc_allocWithZone(MEMORY[0x277D66A70]);
  v11 = sub_24BAA9FDC();

  v12 = [v10 initWithFocusModeIdentifier_];

  v13 = OBJC_IVAR____TtC15FocusSettingsUI23ActivityConfigViewModel_homeScreenSnapshots;
  v14 = *(v1 + OBJC_IVAR____TtC15FocusSettingsUI23ActivityConfigViewModel_homeScreenSnapshots);
  if (v14 >> 62)
  {
    v15 = sub_24BAAA52C();
  }

  else
  {
    v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v15)
  {
    v41 = MEMORY[0x277D84F90];

    v16 = &v41;
    sub_24B914D68(0, v15 & ~(v15 >> 63), 0);
    if (v15 < 0)
    {
      __break(1u);
      goto LABEL_46;
    }

    v36 = v1;
    v37 = v12;
    v17 = 0;
    v18 = v41;
    do
    {
      if ((v14 & 0xC000000000000001) != 0)
      {
        v19 = MEMORY[0x24C2506E0](v17, v14);
      }

      else
      {
        v19 = *(v14 + 8 * v17 + 32);
      }

      v20 = *(v19 + 16);
      v21 = *(v19 + 24);

      v41 = v18;
      v23 = *(v18 + 16);
      v22 = *(v18 + 24);
      if (v23 >= v22 >> 1)
      {
        sub_24B914D68((v22 > 1), v23 + 1, 1);
        v18 = v41;
      }

      ++v17;
      *(v18 + 16) = v23 + 1;
      v24 = v18 + 16 * v23;
      *(v24 + 32) = v20;
      *(v24 + 40) = v21;
    }

    while (v15 != v17);

    v1 = v36;
    v12 = v37;
  }

  v25 = sub_24BAAA11C();

  [v12 setListsToRemove:v25];

  [objc_opt_self() updateFocusModeHomeScreenSettingsWithRequest_];
  v16 = *(v1 + v13);
  if (v16 >> 62)
  {
    v26 = sub_24BAAA52C();
    if (!v26)
    {
      goto LABEL_23;
    }
  }

  else
  {
    v26 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v26)
    {
      goto LABEL_23;
    }
  }

  if (v26 < 1)
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  v27 = 0;
  do
  {
    if ((v16 & 0xC000000000000001) != 0)
    {
      v28 = MEMORY[0x24C2506E0](v27, v16);
    }

    else
    {
      v28 = *(v16 + 8 * v27 + 32);
    }

    ++v27;
    *(v28 + 49) = 0;
    swift_getKeyPath();
    swift_getKeyPath();
    v40 = 0;
    sub_24BAA81CC();
  }

  while (v26 != v27);

LABEL_23:
  v16 = *(v1 + OBJC_IVAR____TtC15FocusSettingsUI23ActivityConfigViewModel_homeScreenSnapshotsForSuggestedPages);
  if (!v16)
  {
    goto LABEL_41;
  }

  if (v16 >> 62)
  {
LABEL_47:
    v29 = sub_24BAAA52C();
    if (v29)
    {
      goto LABEL_26;
    }

LABEL_41:

    return;
  }

  v29 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v29)
  {
    goto LABEL_41;
  }

LABEL_26:
  if (v29 >= 1)
  {
    if ((v16 & 0xC000000000000001) != 0)
    {

      v30 = 0;
      do
      {
        MEMORY[0x24C2506E0](v30++, v16);
        swift_getKeyPath();
        swift_getKeyPath();
        v39 = 0;
        sub_24BAA81CC();
      }

      while (v29 != v30);
    }

    else
    {

      v35 = 32;
      do
      {
        swift_getKeyPath();
        swift_getKeyPath();
        v38 = 0;

        sub_24BAA81CC();
        v35 += 8;
        --v29;
      }

      while (v29);
    }

    goto LABEL_41;
  }

  __break(1u);
}

void sub_24B9963DC(uint64_t a1)
{
  v2 = v1;
  v4 = sub_24BAA7E4C();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v42 - v9;
  sub_24B984444();
  v11 = sub_24B8D7188();
  if (v11)
  {
    v12 = v11;
    v13 = [v11 mode];

    v14 = [v13 identifier];
    sub_24BAA7E1C();

    (*(v5 + 32))(v10, v8, v4);
    if (sub_24B9A1468())
    {
      swift_getKeyPath();
      swift_getKeyPath();
      sub_24BAA81BC();

      v15 = objc_allocWithZone(MEMORY[0x277D3EAC8]);
      v16 = sub_24BAA7DFC();
      v17 = sub_24BAA9FDC();

      v18 = [v15 initWithActivityUUID:v16 activityIdentifier:v17];

      v19 = OBJC_IVAR____TtC15FocusSettingsUI23ActivityConfigViewModel_postersController;
      v20 = *(v2 + OBJC_IVAR____TtC15FocusSettingsUI23ActivityConfigViewModel_postersController);
      if (!v20)
      {
        v21 = objc_allocWithZone(MEMORY[0x277D3EAA0]);
        v43 = v18;
        v22 = [v21 initWithEntryPoint_];
        v23 = *(v2 + v19);
        *(v2 + v19) = v22;
        v24 = v22;

        if (v24)
        {
          [v24 setDelegate_];
        }

        v42 = *(v2 + OBJC_IVAR____TtC15FocusSettingsUI23ActivityConfigViewModel_postersDelegateHandler);
        v25 = v42;
        v26 = swift_allocObject();
        swift_weakInit();
        v27 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v28 = swift_allocObject();
        *(v28 + 16) = v26;
        *(v28 + 24) = v27;
        v29 = (v25 + OBJC_IVAR____TtCC15FocusSettingsUI23ActivityConfigViewModelP33_69469D27B0511CD91350E3DC9D01628B22PostersDelegateHandler_modalControllerWillDismissHandler);
        v30 = *(v25 + OBJC_IVAR____TtCC15FocusSettingsUI23ActivityConfigViewModelP33_69469D27B0511CD91350E3DC9D01628B22PostersDelegateHandler_modalControllerWillDismissHandler);
        *v29 = sub_24B9A1FB8;
        v29[1] = v28;

        sub_24B926B78(v30);

        v31 = swift_allocObject();
        swift_weakInit();
        v32 = (v42 + OBJC_IVAR____TtCC15FocusSettingsUI23ActivityConfigViewModelP33_69469D27B0511CD91350E3DC9D01628B22PostersDelegateHandler_modalControllerDidDismissHandler);
        v33 = *(v42 + OBJC_IVAR____TtCC15FocusSettingsUI23ActivityConfigViewModelP33_69469D27B0511CD91350E3DC9D01628B22PostersDelegateHandler_modalControllerDidDismissHandler);
        *v32 = sub_24B9A1FC0;
        v32[1] = v31;

        sub_24B926B78(v33);

        v20 = *(v2 + v19);
        v18 = v43;
      }

      [v20 presentFromWindowScene_];
    }

    else
    {
      if (qword_27F0630F0 != -1)
      {
        swift_once();
      }

      v38 = sub_24BAA812C();
      __swift_project_value_buffer(v38, qword_27F077038);
      v39 = sub_24BAAA2AC();
      v40 = sub_24BAA810C();
      if (os_log_type_enabled(v40, v39))
      {
        v41 = swift_slowAlloc();
        *v41 = 0;
        _os_log_impl(&dword_24B8D3000, v40, v39, "Posters Controller should not be reachable but was launched somehow", v41, 2u);
        MEMORY[0x24C251390](v41, -1, -1);
      }
    }

    (*(v5 + 8))(v10, v4);
  }

  else
  {

    if (qword_27F0630F0 != -1)
    {
      swift_once();
    }

    v34 = sub_24BAA812C();
    __swift_project_value_buffer(v34, qword_27F077038);
    v35 = sub_24BAAA2AC();
    v43 = sub_24BAA810C();
    if (os_log_type_enabled(v43, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&dword_24B8D3000, v43, v35, "Unable to present lock screen controller because focus mode UUID is nil", v36, 2u);
      MEMORY[0x24C251390](v36, -1, -1);
    }

    v37 = v43;
  }
}

void sub_24B99694C()
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v1 = Strong;
      v2 = [Strong interfaceOrientation];
      sub_24B997350(v2);
      sub_24B996B7C(v2);
    }

    else
    {
    }
  }
}

void sub_24B9969FC()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v1 = *(Strong + OBJC_IVAR____TtC15FocusSettingsUI23ActivityConfigViewModel_postersController);
    *(Strong + OBJC_IVAR____TtC15FocusSettingsUI23ActivityConfigViewModel_postersController) = 0;
  }
}

void sub_24B996A5C()
{
  v1 = *(v0 + OBJC_IVAR____TtC15FocusSettingsUI23ActivityConfigViewModel_postersController);
  if (v1)
  {

    [v1 handleHostSceneTransitionedFromActiveState];
  }

  else
  {
    if (qword_27F0630F0 != -1)
    {
      swift_once();
    }

    v2 = sub_24BAA812C();
    __swift_project_value_buffer(v2, qword_27F077038);
    oslog = sub_24BAA810C();
    v3 = sub_24BAAA2CC();
    if (os_log_type_enabled(oslog, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_24B8D3000, oslog, v3, "PRUIModalController does not exist when transitioning from active state", v4, 2u);
      MEMORY[0x24C251390](v4, -1, -1);
    }
  }
}

void sub_24B996B7C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_24BAA7E4C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24B984444();
  v8 = sub_24B8D7188();
  if (v8)
  {
    v9 = v8;
    v10 = [v8 mode];

    v11 = [v10 identifier];
    sub_24BAA7E1C();

    sub_24BAA7DEC();
    (*(v5 + 8))(v7, v4);
    v12 = *MEMORY[0x277D3EA58];
    v13 = objc_allocWithZone(MEMORY[0x277D3E948]);
    v14 = sub_24BAA9FDC();

    v15 = [v13 initWithFocusModeUUID:v14 configurationType:1 variant:0 options:0 imageScaleRelativeToScreen:a1 orientation:2 maxCount:v12];

    v16 = *(v2 + OBJC_IVAR____TtC15FocusSettingsUI23ActivityConfigViewModel_postersService);
    aBlock[4] = sub_24B9A1ED4;
    aBlock[5] = v2;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24B9A3000;
    aBlock[3] = &block_descriptor_247;
    v17 = _Block_copy(aBlock);
    v18 = v15;

    [v16 fetchPosterFocusSnapshotsWithRequest:v18 completion:v17];

    _Block_release(v17);
  }

  else
  {

    if (qword_27F0630F0 != -1)
    {
      swift_once();
    }

    v19 = sub_24BAA812C();
    __swift_project_value_buffer(v19, qword_27F077038);
    v20 = sub_24BAAA2AC();
    v24 = sub_24BAA810C();
    if (os_log_type_enabled(v24, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_24B8D3000, v24, v20, "Unable to update lock screen snapshots because focus mode UUID is nil", v21, 2u);
      MEMORY[0x24C251390](v21, -1, -1);
    }

    v22 = v24;
  }
}

uint64_t sub_24B996ED4(void *a1, id a2, uint64_t a3)
{
  if (a1)
  {
    v26 = a1;
    v4 = [v26 snapshots];
    sub_24B8F37E8(0, &qword_27F066AC0);
    v5 = sub_24BAAA12C();

    v29 = MEMORY[0x277D84F90];
    if (v5 >> 62)
    {
LABEL_27:
      v6 = sub_24BAAA52C();
    }

    else
    {
      v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v7 = 0;
    v28 = MEMORY[0x277D84F90];
    while (v6 != v7)
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x24C2506E0](v7, v5);
      }

      else
      {
        if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_26;
        }

        v8 = *(v5 + 8 * v7 + 32);
      }

      v9 = v8;
      v10 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        __break(1u);
LABEL_26:
        __break(1u);
        goto LABEL_27;
      }

      v11 = [v8 image];
      v12 = [v9 imageOrientation];
      v13 = [objc_allocWithZone(MEMORY[0x277D755B8]) initWithCGImage:v11 imageOrientation:v12];

      ++v7;
      if (v13)
      {
        MEMORY[0x24C2501C0]();
        if (*((v29 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v29 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_24BAAA14C();
        }

        sub_24BAAA16C();
        v28 = v29;
        v7 = v10;
      }
    }

    type metadata accessor for ActivityConfigViewModel();
    sub_24B9A1DBC(&qword_27F066AA0, type metadata accessor for ActivityConfigViewModel);
    sub_24BAA814C();
    sub_24BAA816C();

    *(a3 + OBJC_IVAR____TtC15FocusSettingsUI23ActivityConfigViewModel_lockScreenSnapshots) = v28;
  }

  else
  {
    if (a2)
    {
      v16 = a2;
      if (qword_27F0630F0 != -1)
      {
        swift_once();
      }

      v17 = sub_24BAA812C();
      __swift_project_value_buffer(v17, qword_27F077038);
      v18 = sub_24BAAA2AC();
      v19 = a2;
      v20 = sub_24BAA810C();

      if (os_log_type_enabled(v20, v18))
      {
        v21 = swift_slowAlloc();
        v22 = swift_slowAlloc();
        v29 = v22;
        *v21 = 136315138;
        swift_getErrorValue();
        v23 = sub_24BAAA7DC();
        v25 = sub_24B8E49D4(v23, v24, &v29);

        *(v21 + 4) = v25;
        _os_log_impl(&dword_24B8D3000, v20, v18, "Unable to get lock screen snapshots: %s", v21, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v22);
        MEMORY[0x24C251390](v22, -1, -1);
        MEMORY[0x24C251390](v21, -1, -1);
      }

      else
      {
      }
    }

    type metadata accessor for ActivityConfigViewModel();
    sub_24B9A1DBC(&qword_27F066AA0, type metadata accessor for ActivityConfigViewModel);
    sub_24BAA814C();
    sub_24BAA816C();

    *(a3 + OBJC_IVAR____TtC15FocusSettingsUI23ActivityConfigViewModel_lockScreenSnapshots) = MEMORY[0x277D84F90];
  }
}

void sub_24B997350(uint64_t a1)
{
  v2 = v1;
  v4 = sub_24BAA7E4C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_24B9A1468())
  {
    sub_24B984444();
    v8 = sub_24B8D7188();
    if (v8)
    {
      v9 = v8;
      v10 = [v8 mode];

      v11 = [v10 identifier];
      sub_24BAA7E1C();

      sub_24BAA7DEC();
      (*(v5 + 8))(v7, v4);
      v12 = objc_allocWithZone(MEMORY[0x277D3E948]);
      v13 = sub_24BAA9FDC();

      v14 = [v12 initWithFocusModeUUID:v13 configurationType:1 variant:1 options:3 imageScaleRelativeToScreen:a1 orientation:1 maxCount:0.7];

      v15 = *(v2 + OBJC_IVAR____TtC15FocusSettingsUI23ActivityConfigViewModel_postersService);
      aBlock[4] = sub_24B9A1E84;
      aBlock[5] = v2;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_24B9A3000;
      aBlock[3] = &block_descriptor_238;
      v16 = _Block_copy(aBlock);
      v17 = v14;

      [v15 fetchPosterFocusSnapshotsWithRequest:v17 completion:v16];

      _Block_release(v16);
    }

    else
    {

      if (qword_27F0630F0 != -1)
      {
        swift_once();
      }

      v18 = sub_24BAA812C();
      __swift_project_value_buffer(v18, qword_27F077038);
      v19 = sub_24BAAA2AC();
      v23 = sub_24BAA810C();
      if (os_log_type_enabled(v23, v19))
      {
        v20 = swift_slowAlloc();
        *v20 = 0;
        _os_log_impl(&dword_24B8D3000, v23, v19, "Unable to update home screen wallpaper snapshot because focus mode UUID is nil", v20, 2u);
        MEMORY[0x24C251390](v20, -1, -1);
      }

      v21 = v23;
    }
  }
}

uint64_t sub_24B9976A4(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v21 = a5;
  v22 = a6;
  v9 = sub_24BAA9E2C();
  v24 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_24BAA9E5C();
  v12 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24B8F37E8(0, &qword_27F0644F0);
  v15 = sub_24BAAA33C();
  v16 = swift_allocObject();
  v16[2] = a1;
  v16[3] = a2;
  v16[4] = a3;
  aBlock[4] = v21;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24B97ACC4;
  aBlock[3] = v22;
  v17 = _Block_copy(aBlock);
  v18 = a1;
  v19 = a2;

  sub_24BAA9E4C();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_24B9A1DBC(&qword_27F063470, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F064500);
  sub_24B8F384C(&qword_27F063480, &unk_27F064500);
  sub_24BAAA48C();
  MEMORY[0x24C250400](0, v14, v11, v17);
  _Block_release(v17);

  (*(v24 + 8))(v11, v9);
  return (*(v12 + 8))(v14, v23);
}

void sub_24B9979A8(void *a1, NSObject *a2, uint64_t a3)
{
  if (a1)
  {
    v29 = a1;
    v4 = [v29 snapshots];
    sub_24B8F37E8(0, &qword_27F066AC0);
    v5 = sub_24BAAA12C();

    if (v5 >> 62)
    {
      if (sub_24BAAA52C())
      {
        goto LABEL_4;
      }
    }

    else if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_4:
      if ((v5 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x24C2506E0](0, v5);
        goto LABEL_7;
      }

      if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v6 = *(v5 + 32);
LABEL_7:
        v7 = v6;

        v8 = [v7 image];
        v9 = [v7 imageOrientation];
        v10 = [objc_allocWithZone(MEMORY[0x277D755B8]) initWithCGImage:v8 imageOrientation:v9];

        type metadata accessor for ActivityConfigViewModel();
        sub_24B9A1DBC(&qword_27F066AA0, type metadata accessor for ActivityConfigViewModel);
        sub_24BAA814C();
        sub_24BAA816C();

        v11 = *(a3 + OBJC_IVAR____TtC15FocusSettingsUI23ActivityConfigViewModel_homeScreenWallpaperSnapshot);
        *(a3 + OBJC_IVAR____TtC15FocusSettingsUI23ActivityConfigViewModel_homeScreenWallpaperSnapshot) = v10;
        goto LABEL_26;
      }

      __break(1u);
      goto LABEL_31;
    }

    if (qword_27F0630F0 != -1)
    {
      swift_once();
    }

    v25 = sub_24BAA812C();
    __swift_project_value_buffer(v25, qword_27F077038);
    v26 = sub_24BAAA2AC();
    v27 = sub_24BAA810C();
    if (os_log_type_enabled(v27, v26))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_24B8D3000, v27, v26, "Unable to get home screen wallpaper snapshot due to empty response", v28, 2u);
      MEMORY[0x24C251390](v28, -1, -1);
    }

LABEL_25:
    v11 = v29;
LABEL_26:

    goto LABEL_18;
  }

  v4 = a2;
  if (!a2)
  {
    if (qword_27F0630F0 != -1)
    {
      swift_once();
    }

    v22 = sub_24BAA812C();
    __swift_project_value_buffer(v22, qword_27F077038);
    v23 = sub_24BAAA2AC();
    v29 = sub_24BAA810C();
    if (os_log_type_enabled(v29, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_24B8D3000, v29, v23, "Unable to get home screen wallpaper snapshot", v24, 2u);
      MEMORY[0x24C251390](v24, -1, -1);
    }

    goto LABEL_25;
  }

  v12 = a2;
  if (qword_27F0630F0 != -1)
  {
LABEL_31:
    swift_once();
  }

  v13 = sub_24BAA812C();
  __swift_project_value_buffer(v13, qword_27F077038);
  v14 = sub_24BAAA2AC();
  v15 = v4;
  v16 = sub_24BAA810C();

  if (os_log_type_enabled(v16, v14))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v30 = v18;
    *v17 = 136315138;
    swift_getErrorValue();
    v19 = sub_24BAAA7DC();
    v21 = sub_24B8E49D4(v19, v20, &v30);

    *(v17 + 4) = v21;
    _os_log_impl(&dword_24B8D3000, v16, v14, "Unable to get home screen wallpaper snapshot: %s", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v18);
    MEMORY[0x24C251390](v18, -1, -1);
    MEMORY[0x24C251390](v17, -1, -1);

    return;
  }

  v11 = v4;

LABEL_18:
}

void sub_24B997E88()
{
  v1 = v0;
  v2 = sub_24BAA7E4C();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v21 - v7;
  sub_24B984444();
  v9 = sub_24B8D7188();
  if (v9)
  {
    v10 = v9;
    v11 = [v9 mode];

    v12 = [v11 identifier];
    sub_24BAA7E1C();

    (*(v3 + 32))(v8, v6, v2);
    v13 = *(v0 + OBJC_IVAR____TtC15FocusSettingsUI23ActivityConfigViewModel_postersService);
    v14 = sub_24BAA7DFC();
    v15 = swift_allocObject();
    swift_weakInit();
    aBlock[4] = sub_24B9A1E74;
    aBlock[5] = v15;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24B9987F8;
    aBlock[3] = &block_descriptor_232;
    v16 = _Block_copy(aBlock);

    [v13 removeAllFocusConfigurationsMatchingFocusUUID:v14 completion:v16];
    _Block_release(v16);

    type metadata accessor for ActivityConfigViewModel();
    sub_24B9A1DBC(&qword_27F066AA0, type metadata accessor for ActivityConfigViewModel);
    sub_24BAA814C();
    sub_24BAA816C();

    (*(v3 + 8))(v8, v2);
    *(v1 + OBJC_IVAR____TtC15FocusSettingsUI23ActivityConfigViewModel_lockScreenSnapshots) = MEMORY[0x277D84F90];
  }

  else
  {

    if (qword_27F0630F0 != -1)
    {
      swift_once();
    }

    v17 = sub_24BAA812C();
    __swift_project_value_buffer(v17, qword_27F077038);
    v18 = sub_24BAAA2AC();
    v22 = sub_24BAA810C();
    if (os_log_type_enabled(v22, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_24B8D3000, v22, v18, "Unable to remove lock screen snapshots because focus mode UUID is nil", v19, 2u);
      MEMORY[0x24C251390](v19, -1, -1);
    }

    v20 = v22;
  }
}

void sub_24B99822C(void *a1, uint64_t a2)
{
  v4 = sub_24BAA9E2C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24BAA9E5C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v12 = a1;
    if (qword_27F0630F0 != -1)
    {
      swift_once();
    }

    v13 = sub_24BAA812C();
    __swift_project_value_buffer(v13, qword_27F077038);
    v14 = sub_24BAAA2AC();
    v15 = a1;
    v16 = sub_24BAA810C();

    if (os_log_type_enabled(v16, v14))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      aBlock[0] = v18;
      *v17 = 136315138;
      swift_getErrorValue();
      v19 = sub_24BAAA7DC();
      v21 = sub_24B8E49D4(v19, v20, aBlock);

      *(v17 + 4) = v21;
      _os_log_impl(&dword_24B8D3000, v16, v14, "Unable to remove lock screen snapshots: %s", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v18);
      MEMORY[0x24C251390](v18, -1, -1);
      MEMORY[0x24C251390](v17, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    sub_24B8F37E8(0, &qword_27F0644F0);
    v25 = v5;
    v24 = sub_24BAAA33C();
    aBlock[4] = sub_24B9A1E7C;
    aBlock[5] = a2;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24B97ACC4;
    aBlock[3] = &block_descriptor_235;
    v22 = _Block_copy(aBlock);

    sub_24BAA9E4C();
    aBlock[0] = MEMORY[0x277D84F90];
    sub_24B9A1DBC(&qword_27F063470, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F064500);
    sub_24B8F384C(&qword_27F063480, &unk_27F064500);
    sub_24BAAA48C();
    v23 = v24;
    MEMORY[0x24C250400](0, v11, v7, v22);
    _Block_release(v22);

    (*(v25 + 8))(v7, v4);
    (*(v9 + 8))(v11, v8);
  }
}
uint64_t sub_1BA30A858(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BA30A8C0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t objectdestroy_48Tm_0()
{

  return MEMORY[0x1EEE6BDD0](v0, 88, 7);
}

void sub_1BA30A978(void *a1, void *a2)
{
  if (a1 != 1)
  {
  }
}

void sub_1BA30AAC0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(void), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a4();
    v11 = a5(a1, v9, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

uint64_t sub_1BA30AB74(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  sub_1BA309A30(0, a2, a3, a4, a5);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

void sub_1BA30ABD0(uint64_t a1, unint64_t *a2, void (*a3)(void))
{
  if (!*a2)
  {
    a3();
    v4 = sub_1BA4A7DA8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1BA30AC30()
{
  result = qword_1EBBF0638;
  if (!qword_1EBBF0638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBF0638);
  }

  return result;
}

void (*sub_1BA30ACC0(uint64_t *a1))(uint64_t, char)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC18HealthExperienceUI42ThresholdSpecifierViewControllerDataSource_eventHandler;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_1BA30AD60;
}

uint64_t sub_1BA30ADC8(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = v3 + *a3;
  swift_beginAccess();
  *(v5 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_1BA30AE30(uint64_t *a1))(uint64_t, char)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC18HealthExperienceUI42ThresholdSpecifierViewControllerDataSource_presentationContext;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_1BA30D77C;
}

uint64_t sub_1BA30AED0(uint64_t a1, uint64_t *a2)
{
  sub_1B9F0A534(a1, v6);
  v3 = *a2;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI42ThresholdSpecifierViewControllerDataSource_configuration;
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1(v3 + v4);
  sub_1B9F1134C(v6, v3 + v4);
  return swift_endAccess();
}

uint64_t sub_1BA30AF3C@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI42ThresholdSpecifierViewControllerDataSource_configuration;
  swift_beginAccess();
  return sub_1B9F0A534(v1 + v3, a1);
}

uint64_t sub_1BA30AF94(__int128 *a1)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI42ThresholdSpecifierViewControllerDataSource_configuration;
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1(v1 + v3);
  sub_1B9F1134C(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_1BA30B05C()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI42ThresholdSpecifierViewControllerDataSource_configuration;
  swift_beginAccess();
  sub_1B9F0A534(v0 + v1, v5);
  v2 = v6;
  v3 = v7;
  __swift_project_boxed_opaque_existential_1(v5, v6);
  (*(v3 + 8))(v2, v3);
  return __swift_destroy_boxed_opaque_existential_1(v5);
}

void *ThresholdSpecifierViewControllerDataSource.__allocating_init(featureName:source:configuration:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v9 = objc_allocWithZone(v4);
  v11 = *a3;
  v10 = a3[1];
  *&v9[OBJC_IVAR____TtC18HealthExperienceUI42ThresholdSpecifierViewControllerDataSource_eventHandler + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v9[OBJC_IVAR____TtC18HealthExperienceUI42ThresholdSpecifierViewControllerDataSource_presentationContext + 8] = 0;
  swift_unknownObjectWeakInit();
  sub_1B9F0A534(a4, &v9[OBJC_IVAR____TtC18HealthExperienceUI42ThresholdSpecifierViewControllerDataSource_configuration]);
  v14[0] = v11;
  v14[1] = v10;
  v12 = HealthChecklistDataSource.init(featureName:source:sendAnalyticsEvent:)(a1, a2, v14, 1);
  __swift_destroy_boxed_opaque_existential_1(a4);
  return v12;
}

void *ThresholdSpecifierViewControllerDataSource.init(featureName:source:configuration:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v8 = *a3;
  v9 = a3[1];
  *(v4 + OBJC_IVAR____TtC18HealthExperienceUI42ThresholdSpecifierViewControllerDataSource_eventHandler + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v4 + OBJC_IVAR____TtC18HealthExperienceUI42ThresholdSpecifierViewControllerDataSource_presentationContext + 8) = 0;
  swift_unknownObjectWeakInit();
  sub_1B9F0A534(a4, v4 + OBJC_IVAR____TtC18HealthExperienceUI42ThresholdSpecifierViewControllerDataSource_configuration);
  v12[0] = v8;
  v12[1] = v9;
  v10 = HealthChecklistDataSource.init(featureName:source:sendAnalyticsEvent:)(a1, a2, v12, 1);
  __swift_destroy_boxed_opaque_existential_1(a4);
  return v10;
}

uint64_t sub_1BA30B260()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI42ThresholdSpecifierViewControllerDataSource_configuration;
  swift_beginAccess();
  sub_1B9F0A534(v0 + v1, v5);
  v2 = v6;
  v3 = v7;
  __swift_project_boxed_opaque_existential_1(v5, v6);
  (*(v3 + 16))(v2, v3);
  return __swift_destroy_boxed_opaque_existential_1(v5);
}

uint64_t sub_1BA30B2F4()
{
  v1 = v0;
  v2 = MEMORY[0x1E69E7CC0];
  v76 = MEMORY[0x1E69E7CC0];
  v3 = objc_opt_self();
  v4 = sub_1BA4A6758();
  v72 = v3;
  v5 = [v3 groupSpecifierWithID_];

  if (v5)
  {
    v6 = OBJC_IVAR____TtC18HealthExperienceUI42ThresholdSpecifierViewControllerDataSource_configuration;
    swift_beginAccess();
    sub_1B9F0A534(v1 + v6, v73);
    v7 = v74;
    v8 = v75;
    __swift_project_boxed_opaque_existential_1(v73, v74);
    (*(v8 + 24))(v7, v8);
    if (v9)
    {
      v10 = sub_1BA4A6758();
    }

    else
    {
      v10 = 0;
    }

    __swift_destroy_boxed_opaque_existential_1(v73);
    [v5 setName_];

    v12 = sub_1BA4A6C18();
    [v5 setProperty:v12 forKey:*MEMORY[0x1E69C5938]];

    v13 = v5;
    MEMORY[0x1BFAF1510]();
    if (*((v76 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v76 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1BA4A6B68();
    }

    sub_1BA4A6BB8();
    v11 = v76;
    sub_1B9F0A534(v1 + v6, v73);
    v14 = v74;
    v15 = v75;
    __swift_project_boxed_opaque_existential_1(v73, v74);
    (*(v15 + 32))(v14, v15);
    v16 = sub_1BA4A6758();

    __swift_destroy_boxed_opaque_existential_1(v73);
    v17 = [v72 preferenceSpecifierNamed:v16 target:0 set:0 get:0 detail:0 cell:3 edit:0];

    if (v17)
    {
      v18 = sub_1BA4A6758();
      [v17 setIdentifier_];

      v19 = v17;
      MEMORY[0x1BFAF1510]();
      if (*((v76 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v76 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1BA4A6B68();
      }

      sub_1BA4A6BB8();
      v20 = v76;
      sub_1B9F0A534(v1 + v6, v73);
      v21 = v74;
      v22 = v75;
      __swift_project_boxed_opaque_existential_1(v73, v74);
      v23 = (*(v22 + 48))(v21, v22);
      __swift_destroy_boxed_opaque_existential_1(v73);
      v69 = v23;
      if (v23 >> 62)
      {
        v24 = sub_1BA4A7CC8();
        v66 = v19;
        v67 = v13;
        if (!v24)
        {
          goto LABEL_38;
        }
      }

      else
      {
        v24 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v66 = v19;
        v67 = v13;
        if (!v24)
        {
          goto LABEL_38;
        }
      }

      if (v24 >= 1)
      {
        v25 = 0;
        v26 = v23;
        v70 = v23 & 0xC000000000000001;
        v68 = *MEMORY[0x1E69C5860];
        v71 = v24;
        do
        {
          if (v70)
          {
            v27 = MEMORY[0x1BFAF2860](v25, v26);
          }

          else
          {
            v27 = *(v26 + 8 * v25 + 32);
          }

          v28 = v27;
          sub_1B9F0A534(v1 + v6, v73);
          v29 = v74;
          v30 = v75;
          __swift_project_boxed_opaque_existential_1(v73, v74);
          (*(v30 + 72))(v28, v29, v30);
          __swift_destroy_boxed_opaque_existential_1(v73);
          v31 = sub_1BA4A6758();
          v32 = [v72 preferenceSpecifierNamed:v31 target:0 set:0 get:0 detail:0 cell:3 edit:{0, v66}];

          if (v32)
          {
            sub_1B9F0A534(v1 + v6, v73);
            v33 = v74;
            v34 = v75;
            __swift_project_boxed_opaque_existential_1(v73, v74);
            (*(v34 + 64))(v28, v33, v34);
            v35 = sub_1BA4A6758();

            __swift_destroy_boxed_opaque_existential_1(v73);
            [v32 setIdentifier_];

            v73[0] = type metadata accessor for ThresholdSpecifierViewControllerCell();
            sub_1BA30BE6C();
            [v32 setProperty:sub_1BA4A8398() forKey:v68];
            swift_unknownObjectRelease();
            v36 = sub_1BA4A6758();

            v37 = sub_1BA4A6758();
            [v32 setProperty:v36 forKey:v37];

            sub_1B9F0A534(v1 + v6, v73);
            v38 = v74;
            v39 = v75;
            __swift_project_boxed_opaque_existential_1(v73, v74);
            (*(v39 + 80))(v28, v38, v39);
            if (v40)
            {
              __swift_destroy_boxed_opaque_existential_1(v73);
              v41 = sub_1BA4A6758();

              v42 = sub_1BA4A6758();
              [v32 setProperty:v41 forKey:v42];
            }

            else
            {
              __swift_destroy_boxed_opaque_existential_1(v73);
            }

            v43 = v32;
            MEMORY[0x1BFAF1510]();
            v26 = v69;
            if (*((v76 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v76 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_1BA4A6B68();
            }

            sub_1BA4A6BB8();

            v20 = v76;
          }

          else
          {
          }

          ++v25;
        }

        while (v71 != v25);
LABEL_38:

        sub_1B9F0A534(v1 + v6, v73);
        v47 = v74;
        v48 = v75;
        __swift_project_boxed_opaque_existential_1(v73, v74);
        v49 = *(v48 + 56);
        v50 = v66;
        v51 = v49(v47, v48);
        if (v51)
        {
          v52 = v51;
          __swift_destroy_boxed_opaque_existential_1(v73);
          sub_1B9F0A534(v1 + v6, v73);
          v53 = v74;
          v54 = v75;
          __swift_project_boxed_opaque_existential_1(v73, v74);
          v55 = (*(v54 + 64))(v52, v53, v54);
          v13 = sub_1BA30BD08(v55, v56, v20);

          __swift_destroy_boxed_opaque_existential_1(v73);
          v57 = v67;
          if (v13)
          {
          }

          else
          {
            v13 = v50;
          }
        }

        else
        {
          __swift_destroy_boxed_opaque_existential_1(v73);
          v13 = v50;
          v57 = v67;
        }

        [v57 setProperty:v13 forKey:*MEMORY[0x1E69C5958]];
        sub_1B9F0A534(v1 + v6, v73);
        v58 = v74;
        v59 = v75;
        __swift_project_boxed_opaque_existential_1(v73, v74);
        (*(v59 + 40))(v58, v59);
        v60 = sub_1BA4A6758();

        __swift_destroy_boxed_opaque_existential_1(v73);
        [v57 setProperty:v60 forKey:*MEMORY[0x1E69C5900]];

        if (v20 >> 62)
        {

          v11 = sub_1BA4A8028();
        }

        else
        {
          v61 = v20 & 0xFFFFFFFFFFFFFF8;

          sub_1BA4A8358();
          if (swift_dynamicCastMetatype() || (v63 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10)) == 0)
          {
LABEL_45:

            v11 = v20;
          }

          else
          {
            v64 = (v61 + 32);
            while (*v64)
            {
              ++v64;
              if (!--v63)
              {
                goto LABEL_45;
              }
            }

            v11 = v61 | 1;
          }
        }

LABEL_46:

        return v11;
      }

      __break(1u);
    }

    else if (!(v11 >> 62))
    {
      v44 = v11 & 0xFFFFFFFFFFFFFF8;

      sub_1BA4A8358();
      if (!swift_dynamicCastMetatype())
      {
        v45 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v45)
        {
          v46 = (v44 + 32);
          while (*v46)
          {
            ++v46;
            if (!--v45)
            {
              goto LABEL_46;
            }
          }

          return v44 | 1;
        }
      }

      goto LABEL_46;
    }

    v65 = sub_1BA4A8028();

    swift_bridgeObjectRelease_n();
    return v65;
  }

  if (!(v2 >> 62))
  {
    v11 = MEMORY[0x1E69E7CC0];
    sub_1BA4A80B8();
    return v11;
  }

  return sub_1BA4A8028();
}

void *sub_1BA30BD08(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_20;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1BA4A7CC8())
  {
    for (j = 0; ; ++j)
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x1BFAF2860](j, a3);
      }

      else
      {
        if (j >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_19;
        }

        v8 = *(a3 + 8 * j + 32);
      }

      v9 = v8;
      v10 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      v11 = [v8 identifier];
      if (v11)
      {
        v12 = v11;
        v13 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
        v15 = v14;

        if (v13 == a1 && v15 == a2)
        {

          return v9;
        }

        v17 = sub_1BA4A8338();

        if (v17)
        {
          return v9;
        }
      }

      if (v10 == i)
      {
        return 0;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    ;
  }

  return 0;
}

unint64_t sub_1BA30BE6C()
{
  result = qword_1EBBF0658;
  if (!qword_1EBBF0658)
  {
    type metadata accessor for ThresholdSpecifierViewControllerCell();
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_1EBBF0658);
  }

  return result;
}

uint64_t sub_1BA30BEE4()
{
  sub_1B9FAB600(v0 + OBJC_IVAR____TtC18HealthExperienceUI42ThresholdSpecifierViewControllerDataSource_eventHandler);
  sub_1B9FAB600(v0 + OBJC_IVAR____TtC18HealthExperienceUI42ThresholdSpecifierViewControllerDataSource_presentationContext);
  v1 = v0 + OBJC_IVAR____TtC18HealthExperienceUI42ThresholdSpecifierViewControllerDataSource_configuration;

  return __swift_destroy_boxed_opaque_existential_1(v1);
}

void (*sub_1BA30BFE4(uint64_t *a1))(uint64_t, char)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC18HealthExperienceUI42ThresholdSpecifierViewControllerDataSource_eventHandler;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_1BA30D77C;
}

uint64_t sub_1BA30C0E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v7 = v5 + *a5;
  swift_beginAccess();
  *(v7 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_1BA30C150(uint64_t *a1))(uint64_t, char)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC18HealthExperienceUI42ThresholdSpecifierViewControllerDataSource_presentationContext;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_1BA30D77C;
}

uint64_t ThresholdSpecifierViewControllerDelegate.__allocating_init(configuration:)(__int128 *a1)
{
  v2 = swift_allocObject();
  *(v2 + 64) = 0;
  swift_unknownObjectWeakInit();
  sub_1B9F1134C(a1, v2 + 16);
  return v2;
}

uint64_t ThresholdSpecifierViewControllerDelegate.init(configuration:)(__int128 *a1)
{
  *(v1 + 64) = 0;
  swift_unknownObjectWeakInit();
  sub_1B9F1134C(a1, v1 + 16);
  return v1;
}

uint64_t ThresholdSpecifierViewControllerDelegate.deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  sub_1B9FAB600(v0 + 56);
  return v0;
}

uint64_t ThresholdSpecifierViewControllerDelegate.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  sub_1B9FAB600(v0 + 56);

  return swift_deallocClassInstance();
}

char *ThresholdSpecifierViewController.__allocating_init(featureName:configuration:source:shouldHaveDoneButton:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, char a5)
{
  v6 = v5;
  v12 = objc_allocWithZone(v6);
  v13 = *a4;
  v14 = a4[1];
  sub_1B9F0A534(a3, v26);
  v15 = objc_allocWithZone(type metadata accessor for ThresholdSpecifierViewControllerDataSource());
  *&v15[OBJC_IVAR____TtC18HealthExperienceUI42ThresholdSpecifierViewControllerDataSource_eventHandler + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v15[OBJC_IVAR____TtC18HealthExperienceUI42ThresholdSpecifierViewControllerDataSource_presentationContext + 8] = 0;
  swift_unknownObjectWeakInit();
  sub_1B9F0A534(v26, &v15[OBJC_IVAR____TtC18HealthExperienceUI42ThresholdSpecifierViewControllerDataSource_configuration]);
  v25[0] = v13;
  v25[1] = v14;
  v16 = HealthChecklistDataSource.init(featureName:source:sendAnalyticsEvent:)(a1, a2, v25, 1);
  __swift_destroy_boxed_opaque_existential_1(v26);
  v17 = OBJC_IVAR____TtC18HealthExperienceUI32ThresholdSpecifierViewController_thresholdDataSource;
  *&v12[OBJC_IVAR____TtC18HealthExperienceUI32ThresholdSpecifierViewController_thresholdDataSource] = v16;
  sub_1B9F0A534(a3, v26);
  type metadata accessor for ThresholdSpecifierViewControllerDelegate();
  v18 = swift_allocObject();
  *(v18 + 64) = 0;
  swift_unknownObjectWeakInit();
  sub_1B9F1134C(v26, v18 + 16);
  *&v12[OBJC_IVAR____TtC18HealthExperienceUI32ThresholdSpecifierViewController_thresholdDelegate] = v18;
  v19 = *&v12[v17];

  v20 = sub_1BA30C928(v19, v18, &protocol witness table for ThresholdSpecifierViewControllerDelegate, a5, v12);
  *(*&v20[OBJC_IVAR____TtC18HealthExperienceUI29HostedSpecifierViewController_specifierViewController] + OBJC_IVAR____TtC18HealthExperienceUI23SpecifierViewController_shouldReloadSpecifiersAfterSelection) = 1;
  v21 = *&v20[OBJC_IVAR____TtC18HealthExperienceUI32ThresholdSpecifierViewController_thresholdDelegate];
  v22 = *&v20[OBJC_IVAR____TtC18HealthExperienceUI32ThresholdSpecifierViewController_thresholdDataSource] + OBJC_IVAR____TtC18HealthExperienceUI42ThresholdSpecifierViewControllerDataSource_eventHandler;
  swift_beginAccess();
  swift_unknownObjectWeakLoadStrong();
  v23 = *(v22 + 8);

  __swift_destroy_boxed_opaque_existential_1(a3);
  *(v21 + 64) = v23;
  swift_unknownObjectWeakAssign();

  swift_unknownObjectRelease();
  return v20;
}

char *ThresholdSpecifierViewController.init(featureName:configuration:source:shouldHaveDoneButton:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, char a5)
{
  v6 = v5;
  v11 = *a4;
  v12 = a4[1];
  sub_1B9F0A534(a3, v24);
  v13 = objc_allocWithZone(type metadata accessor for ThresholdSpecifierViewControllerDataSource());
  *&v13[OBJC_IVAR____TtC18HealthExperienceUI42ThresholdSpecifierViewControllerDataSource_eventHandler + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v13[OBJC_IVAR____TtC18HealthExperienceUI42ThresholdSpecifierViewControllerDataSource_presentationContext + 8] = 0;
  swift_unknownObjectWeakInit();
  sub_1B9F0A534(v24, &v13[OBJC_IVAR____TtC18HealthExperienceUI42ThresholdSpecifierViewControllerDataSource_configuration]);
  v23[0] = v11;
  v23[1] = v12;
  v14 = HealthChecklistDataSource.init(featureName:source:sendAnalyticsEvent:)(a1, a2, v23, 1);
  __swift_destroy_boxed_opaque_existential_1(v24);
  v15 = OBJC_IVAR____TtC18HealthExperienceUI32ThresholdSpecifierViewController_thresholdDataSource;
  *&v6[OBJC_IVAR____TtC18HealthExperienceUI32ThresholdSpecifierViewController_thresholdDataSource] = v14;
  sub_1B9F0A534(a3, v24);
  type metadata accessor for ThresholdSpecifierViewControllerDelegate();
  v16 = swift_allocObject();
  *(v16 + 64) = 0;
  swift_unknownObjectWeakInit();
  sub_1B9F1134C(v24, v16 + 16);
  *&v6[OBJC_IVAR____TtC18HealthExperienceUI32ThresholdSpecifierViewController_thresholdDelegate] = v16;
  v17 = *&v6[v15];

  v18 = sub_1BA30C928(v17, v16, &protocol witness table for ThresholdSpecifierViewControllerDelegate, a5, v6);
  *(*&v18[OBJC_IVAR____TtC18HealthExperienceUI29HostedSpecifierViewController_specifierViewController] + OBJC_IVAR____TtC18HealthExperienceUI23SpecifierViewController_shouldReloadSpecifiersAfterSelection) = 1;
  v19 = *&v18[OBJC_IVAR____TtC18HealthExperienceUI32ThresholdSpecifierViewController_thresholdDelegate];
  v20 = *&v18[OBJC_IVAR____TtC18HealthExperienceUI32ThresholdSpecifierViewController_thresholdDataSource] + OBJC_IVAR____TtC18HealthExperienceUI42ThresholdSpecifierViewControllerDataSource_eventHandler;
  swift_beginAccess();
  swift_unknownObjectWeakLoadStrong();
  v21 = *(v20 + 8);

  __swift_destroy_boxed_opaque_existential_1(a3);
  *(v19 + 64) = v21;
  swift_unknownObjectWeakAssign();

  swift_unknownObjectRelease();
  return v18;
}

id ThresholdSpecifierViewController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

uint64_t sub_1BA30C84C()
{
}

id sub_1BA30C8A4(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

char *sub_1BA30C928(void *a1, uint64_t a2, uint64_t a3, char a4, char *a5)
{
  v10 = objc_allocWithZone(type metadata accessor for SpecifierViewController());
  *&a5[OBJC_IVAR____TtC18HealthExperienceUI29HostedSpecifierViewController_specifierViewController] = sub_1BA30D5C8(a1, a2, a3, a4, v10);
  v35.receiver = a5;
  v35.super_class = type metadata accessor for HostedSpecifierViewController();
  v11 = objc_msgSendSuper2(&v35, sel_initWithNibName_bundle_, 0, 0);
  v12 = OBJC_IVAR____TtC18HealthExperienceUI29HostedSpecifierViewController_specifierViewController;
  v13 = *&v11[OBJC_IVAR____TtC18HealthExperienceUI29HostedSpecifierViewController_specifierViewController];
  v14 = v11;
  v15 = v13;
  [v14 addChildViewController_];
  result = [v14 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_10;
  }

  v17 = result;
  result = [v15 view];
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v18 = result;
  [v17 addSubview_];

  result = [v15 view];
  if (!result)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v19 = result;
  result = [v14 view];
  if (!result)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v20 = result;
  [result bounds];
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;

  [v19 setFrame_];
  result = [v15 view];
  if (!result)
  {
LABEL_13:
    __break(1u);
    return result;
  }

  v29 = result;

  [v29 setAutoresizingMask_];
  [v15 didMoveToParentViewController_];
  v30 = [v14 title];
  if (!v30)
  {
    v31 = [*&v11[v12] title];
    [v14 setTitle_];
    v30 = v31;
  }

  v32 = [v14 navigationItem];
  v33 = [*&v11[v12] navigationItem];
  v34 = [v33 rightBarButtonItem];

  [v32 setRightBarButtonItem_];
  swift_unknownObjectRelease();
  return v14;
}

void sub_1BA30CC18()
{
  v1 = v0;
  swift_unknownObjectRetain();
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (!v2)
  {
    swift_unknownObjectRelease();
    sub_1BA4A7DF8();

    swift_unknownObjectRetain();
    v40 = sub_1BA4A6808();
    MEMORY[0x1BFAF1350](v40);

    sub_1BA4A8018();
    __break(1u);
    return;
  }

  v3 = v2;
  v4 = [v2 identifier];
  if (v4)
  {
    v5 = v4;
    v6 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    v8 = v7;

    if (v6 == 4605519 && v8 == 0xE300000000000000)
    {
    }

    else
    {
      v10 = sub_1BA4A8338();

      if ((v10 & 1) == 0)
      {
        goto LABEL_8;
      }
    }

    sub_1B9F0A534(v1 + 16, &v43);
    v31 = v44;
    v32 = v45;
    __swift_project_boxed_opaque_existential_1(&v43, v44);
    (*(v32 + 96))(v31, v32);
    __swift_destroy_boxed_opaque_existential_1(&v43);
    if (swift_unknownObjectWeakLoadStrong())
    {
      v33 = *(v1 + 64);
      ObjectType = swift_getObjectType();
      (*(v33 + 8))(ObjectType, v33);
      swift_unknownObjectRelease();
    }

    goto LABEL_41;
  }

LABEL_8:
  sub_1B9F0A534(v1 + 16, &v43);
  v11 = v44;
  v12 = v45;
  __swift_project_boxed_opaque_existential_1(&v43, v44);
  v13 = (*(v12 + 48))(v11, v12);
  __swift_destroy_boxed_opaque_existential_1(&v43);
  if (v13 >> 62)
  {
LABEL_39:
    v14 = sub_1BA4A7CC8();
    if (v14)
    {
      goto LABEL_10;
    }

    goto LABEL_40;
  }

  v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v14)
  {
LABEL_40:

LABEL_41:
    swift_unknownObjectRelease();
    return;
  }

LABEL_10:
  v15 = 0;
  v42 = v3;
  v41 = v14;
  while (1)
  {
    if ((v13 & 0xC000000000000001) != 0)
    {
      v16 = MEMORY[0x1BFAF2860](v15, v13);
    }

    else
    {
      if (v15 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_38;
      }

      v16 = *(v13 + 8 * v15 + 32);
    }

    v17 = v16;
    v18 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v19 = [v3 identifier];
    if (v19)
    {
      v20 = v19;
      v21 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      v23 = v22;
    }

    else
    {
      v21 = 0;
      v23 = 0;
    }

    v24 = v1;
    sub_1B9F0A534(v1 + 16, &v43);
    v25 = v44;
    v26 = v45;
    __swift_project_boxed_opaque_existential_1(&v43, v44);
    v27 = (*(v26 + 64))(v17, v25, v26);
    if (v23)
    {
      break;
    }

    __swift_destroy_boxed_opaque_existential_1(&v43);
    v1 = v24;
LABEL_12:
    ++v15;
    v3 = v42;
    if (v18 == v41)
    {
      goto LABEL_40;
    }
  }

  if (v21 == v27 && v23 == v28)
  {

    __swift_destroy_boxed_opaque_existential_1(&v43);

    v1 = v24;
    goto LABEL_34;
  }

  v30 = sub_1BA4A8338();

  __swift_destroy_boxed_opaque_existential_1(&v43);
  v1 = v24;
  if ((v30 & 1) == 0)
  {

    goto LABEL_12;
  }

LABEL_34:
  sub_1B9F0A534(v1 + 16, &v43);
  v35 = v1;
  v36 = v44;
  v37 = v45;
  __swift_project_boxed_opaque_existential_1(&v43, v44);
  (*(v37 + 88))(v17, v36, v37);
  __swift_destroy_boxed_opaque_existential_1(&v43);
  if (swift_unknownObjectWeakLoadStrong())
  {
    v38 = *(v35 + 64);
    v39 = swift_getObjectType();
    (*(v38 + 8))(v39, v38);
    swift_unknownObjectRelease();

    goto LABEL_41;
  }

  swift_unknownObjectRelease();
}

uint64_t keypath_getTm_2@<X0>(void *a1@<X0>, void *a2@<X3>, uint64_t *a3@<X8>)
{
  v4 = *a1 + *a2;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v6 = *(v4 + 8);
  *a3 = result;
  a3[1] = v6;
  return result;
}

uint64_t keypath_setTm(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v5 = *(a1 + 8);
  v6 = *a2 + *a5;
  swift_beginAccess();
  *(v6 + 8) = v5;
  return swift_unknownObjectWeakAssign();
}

char *sub_1BA30D5C8(void *a1, uint64_t a2, uint64_t a3, char a4, _BYTE *a5)
{
  *&a5[OBJC_IVAR____TtC18HealthExperienceUI23SpecifierViewController_delegate + 8] = 0;
  v9 = swift_unknownObjectWeakInit();
  a5[OBJC_IVAR____TtC18HealthExperienceUI23SpecifierViewController_shouldReloadSpecifiersAfterSelection] = 0;
  a5[OBJC_IVAR____TtC18HealthExperienceUI23SpecifierViewController_shouldReloadSpecifiersOnViewWillAppear] = 1;
  v10 = &a5[OBJC_IVAR____TtC18HealthExperienceUI23SpecifierViewController_dataSource];
  *v10 = a1;
  v10[1] = &protocol witness table for ThresholdSpecifierViewControllerDataSource;
  *(v9 + 8) = a3;
  swift_unknownObjectWeakAssign();
  v26.receiver = a5;
  v26.super_class = type metadata accessor for SpecifierViewController();
  v11 = a1;
  v12 = objc_msgSendSuper2(&v26, sel_initWithNibName_bundle_, 0, 0);
  v13 = &v12[OBJC_IVAR____TtC18HealthExperienceUI23SpecifierViewController_dataSource];
  v14 = *&v12[OBJC_IVAR____TtC18HealthExperienceUI23SpecifierViewController_dataSource];
  v15 = *&v12[OBJC_IVAR____TtC18HealthExperienceUI23SpecifierViewController_dataSource + 8];
  ObjectType = swift_getObjectType();
  v17 = *(v15 + 16);
  v18 = v12;
  v19 = v14;
  v17(v12, &off_1F37FEA68, ObjectType, v15);

  v20 = *v13;
  v21 = *(v13 + 1);
  v22 = swift_getObjectType();
  v23 = *(v21 + 40);
  v24 = v20;
  v23(v12, &off_1F37FEA58, v22, v21);

  if (a4)
  {
    sub_1B9FCE184();
  }

  return v18;
}

uint64_t sub_1BA30D790()
{
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  result = sub_1BA4A1318();
  qword_1EBBF0670 = result;
  *algn_1EBBF0678 = v1;
  return result;
}

uint64_t sub_1BA30D83C()
{
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  result = sub_1BA4A1318();
  qword_1EBBF0680 = result;
  *algn_1EBBF0688 = v1;
  return result;
}

uint64_t sub_1BA30D8E8()
{
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  result = sub_1BA4A1318();
  qword_1EBBF0690 = result;
  *algn_1EBBF0698 = v1;
  return result;
}

uint64_t sub_1BA30D994()
{
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  result = sub_1BA4A1318();
  qword_1EBBF06A0 = result;
  *algn_1EBBF06A8 = v1;
  return result;
}

uint64_t sub_1BA30DA40()
{
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  result = sub_1BA4A1318();
  qword_1EBBF06B0 = result;
  *algn_1EBBF06B8 = v1;
  return result;
}

uint64_t sub_1BA30DAEC()
{
  sub_1BA312914(0, &qword_1EBBE9CB0, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v39 - v2;
  v4 = sub_1BA4A1C68();
  v55 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v57 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v42 = &v39 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v39 - v9;
  v52 = type metadata accessor for SummarySharingSelectableDataTypeItem(0);
  v11 = *(v52 - 8);
  MEMORY[0x1EEE9AC00](v52);
  v53 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v56 = &v39 - v14;
  v15 = OBJC_IVAR____TtC18HealthExperienceUI60SummarySharingOnboardingKitSharingConfirmationViewController_selectedDataTypesContext;
  swift_beginAccess();
  v16 = *(v0 + v15);
  result = swift_beginAccess();
  v18 = *(v16 + 24);
  v19 = v18[2];
  if (v19)
  {
    v20 = sub_1BA0219CC(v18[2], 0);
    sub_1BA023688(v61, v20 + ((*(v11 + 80) + 32) & ~*(v11 + 80)), v19, v18);
    v22 = v21;
    v54 = v61[2];
    v51 = v61[3];
    v50 = v61[4];

    result = sub_1B9F52E48();
    if (v22 == v19)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v20 = MEMORY[0x1E69E7CC0];
LABEL_5:
  v51 = *(v20 + 16);
  if (v51)
  {
    v23 = 0;
    v41 = (v55 + 16);
    v40 = (v55 + 32);
    v24 = *MEMORY[0x1E69A3B68];
    v46 = (v55 + 8);
    v25 = MEMORY[0x1E69E7CC0];
    v47 = (v55 + 104);
    v43 = (v55 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
    v50 = v10;
    v49 = v20;
    v48 = v24;
    v45 = v11;
    v44 = v3;
    while (1)
    {
      if (v23 >= *(v20 + 16))
      {
        __break(1u);
        return result;
      }

      v55 = (*(v11 + 80) + 32) & ~*(v11 + 80);
      v26 = v20 + v55;
      v27 = *(v11 + 72);
      v28 = v56;
      sub_1BA312978(v26 + v27 * v23, v56, type metadata accessor for SummarySharingSelectableDataTypeItem);
      sub_1BA3147F8(v28 + *(v52 + 40), v3, &qword_1EBBE9CB0, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent, MEMORY[0x1E69E6720], sub_1BA312914);
      v29 = type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent(0);
      if ((*(*(v29 - 8) + 48))(v3, 1, v29) == 1)
      {
        sub_1B9F0DEC0(v3, &qword_1EBBE9CB0, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent, MEMORY[0x1E69E6720], sub_1BA312914);
        v30 = *v47;
        (*v47)(v10, v24, v4);
      }

      else
      {
        v31 = &v3[*(v29 + 40)];
        v32 = v42;
        (*v41)(v42, v31, v4);
        sub_1BA3129E0(v3, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
        (*v40)(v10, v32, v4);
        v30 = *v47;
      }

      v30(v57, v24, v4);
      sub_1BA312C8C(&qword_1EBBEF0B8, MEMORY[0x1E69A3C08]);
      sub_1BA4A6A58();
      sub_1BA4A6A58();
      v54 = v27;
      if (v61[0] == v58 && v61[1] == v59)
      {
        break;
      }

      v34 = sub_1BA4A8338();
      v35 = *v46;
      (*v46)(v57, v4);
      v35(v10, v4);

      if (v34)
      {
        goto LABEL_17;
      }

      result = sub_1BA3129E0(v56, type metadata accessor for SummarySharingSelectableDataTypeItem);
      v3 = v44;
      v11 = v45;
      v20 = v49;
LABEL_8:
      v24 = v48;
      ++v23;
      v10 = v50;
      if (v51 == v23)
      {
        goto LABEL_23;
      }
    }

    v33 = *v46;
    (*v46)(v57, v4);
    v33(v10, v4);

LABEL_17:
    sub_1BA025350(v56, v53);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v60 = v25;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1BA066E50(0, *(v25 + 16) + 1, 1);
      v25 = v60;
    }

    v3 = v44;
    v11 = v45;
    v38 = *(v25 + 16);
    v37 = *(v25 + 24);
    v20 = v49;
    if (v38 >= v37 >> 1)
    {
      sub_1BA066E50(v37 > 1, v38 + 1, 1);
      v25 = v60;
    }

    *(v25 + 16) = v38 + 1;
    result = sub_1BA025350(v53, v25 + v55 + v38 * v54);
    goto LABEL_8;
  }

  v25 = MEMORY[0x1E69E7CC0];
LABEL_23:

  return v25;
}

uint64_t sub_1BA30E280()
{
  sub_1BA312914(0, &qword_1EBBE9CB0, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v38[-v2];
  v4 = sub_1BA4A1C68();
  v55 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v57 = &v38[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6);
  v42 = &v38[-v7];
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v38[-v9];
  v52 = type metadata accessor for SummarySharingSelectableDataTypeItem(0);
  v11 = *(v52 - 8);
  MEMORY[0x1EEE9AC00](v52);
  v53 = &v38[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v13);
  v56 = &v38[-v14];
  v15 = OBJC_IVAR____TtC18HealthExperienceUI60SummarySharingOnboardingKitSharingConfirmationViewController_selectedDataTypesContext;
  swift_beginAccess();
  v16 = *(v0 + v15);
  result = swift_beginAccess();
  v18 = *(v16 + 24);
  v19 = v18[2];
  if (v19)
  {
    v20 = sub_1BA0219CC(v18[2], 0);
    sub_1BA023688(v61, v20 + ((*(v11 + 80) + 32) & ~*(v11 + 80)), v19, v18);
    v22 = v21;
    v54 = v61[2];
    v51 = v61[3];
    v50 = v61[4];

    result = sub_1B9F52E48();
    if (v22 == v19)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v20 = MEMORY[0x1E69E7CC0];
LABEL_5:
  v51 = *(v20 + 16);
  if (v51)
  {
    v23 = 0;
    v41 = (v55 + 16);
    v40 = (v55 + 32);
    v39 = *MEMORY[0x1E69A3B68];
    v47 = *MEMORY[0x1E69A3B90];
    v46 = (v55 + 8);
    v24 = MEMORY[0x1E69E7CC0];
    v48 = (v55 + 104);
    v43 = (v55 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
    v50 = v10;
    v49 = v20;
    v45 = v11;
    v44 = v3;
    while (1)
    {
      if (v23 >= *(v20 + 16))
      {
        __break(1u);
        return result;
      }

      v55 = (*(v11 + 80) + 32) & ~*(v11 + 80);
      v25 = v20 + v55;
      v26 = *(v11 + 72);
      v27 = v56;
      sub_1BA312978(v25 + v26 * v23, v56, type metadata accessor for SummarySharingSelectableDataTypeItem);
      sub_1BA3147F8(&v27[*(v52 + 40)], v3, &qword_1EBBE9CB0, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent, MEMORY[0x1E69E6720], sub_1BA312914);
      v28 = type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent(0);
      if ((*(*(v28 - 8) + 48))(v3, 1, v28) == 1)
      {
        sub_1B9F0DEC0(v3, &qword_1EBBE9CB0, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent, MEMORY[0x1E69E6720], sub_1BA312914);
        v29 = *v48;
        (*v48)(v10, v39, v4);
      }

      else
      {
        v30 = &v3[*(v28 + 40)];
        v31 = v42;
        (*v41)(v42, v30, v4);
        sub_1BA3129E0(v3, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
        (*v40)(v10, v31, v4);
        v29 = *v48;
      }

      v29(v57, v47, v4);
      sub_1BA312C8C(&qword_1EBBEF0B8, MEMORY[0x1E69A3C08]);
      sub_1BA4A6A58();
      sub_1BA4A6A58();
      v54 = v26;
      if (v61[0] == v58 && v61[1] == v59)
      {
        break;
      }

      v33 = sub_1BA4A8338();
      v34 = *v46;
      (*v46)(v57, v4);
      v34(v10, v4);

      if (v33)
      {
        goto LABEL_17;
      }

      result = sub_1BA3129E0(v56, type metadata accessor for SummarySharingSelectableDataTypeItem);
      v3 = v44;
      v11 = v45;
      v20 = v49;
LABEL_8:
      ++v23;
      v10 = v50;
      if (v51 == v23)
      {
        goto LABEL_23;
      }
    }

    v32 = *v46;
    (*v46)(v57, v4);
    v32(v10, v4);

LABEL_17:
    sub_1BA025350(v56, v53);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v60 = v24;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1BA066E50(0, *(v24 + 16) + 1, 1);
      v24 = v60;
    }

    v3 = v44;
    v11 = v45;
    v37 = *(v24 + 16);
    v36 = *(v24 + 24);
    v20 = v49;
    if (v37 >= v36 >> 1)
    {
      sub_1BA066E50(v36 > 1, v37 + 1, 1);
      v24 = v60;
    }

    *(v24 + 16) = v37 + 1;
    result = sub_1BA025350(v53, v24 + v55 + v37 * v54);
    goto LABEL_8;
  }

  v24 = MEMORY[0x1E69E7CC0];
LABEL_23:

  return v24;
}

uint64_t sub_1BA30EA28()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;

    sub_1BA146CA4();

    sub_1BA146CA4();
  }

  return result;
}

void sub_1BA30EAD0()
{
  ObjectType = swift_getObjectType();
  v1 = type metadata accessor for SummarySharingOnboardingError();
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v159 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA312914(0, &qword_1EDC6B5B8, MEMORY[0x1E69E8050], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v182 = &v159 - v5;
  sub_1BA312A40();
  v177 = *(v6 - 8);
  v178 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v176 = &v159 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA312D54();
  v180 = *(v8 - 8);
  v181 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v179 = &v159 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA312F34();
  v184 = *(v10 - 8);
  v185 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v183 = &v159 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA3130FC(0, &qword_1EBBED7D8, &qword_1EBBEA640, type metadata accessor for SummarySharingSelectableDataTypeItem, sub_1BA1B466C);
  v172 = v12;
  v170 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v167 = &v159 - v13;
  sub_1BA313000();
  v174 = v14;
  v171 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v168 = &v159 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA313230();
  v175 = v16;
  v173 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v169 = &v159 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1BA4A3EA8();
  v19 = *(v18 - 8);
  v188 = v18;
  v189 = v19;
  MEMORY[0x1EEE9AC00](v18);
  v165 = &v159 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v166 = &v159 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v187 = &v159 - v24;
  v25 = type metadata accessor for SummarySharingSelectableDataTypeItem(0);
  v186 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v27 = &v159 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v159 - v29;
  sub_1BA3132F0(0, &qword_1EBBEB8F0, MEMORY[0x1E69E6530], MEMORY[0x1E69A3C40]);
  v32 = v31;
  v33 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v35 = &v159 - v34;
  v36 = sub_1BA30E280();
  v37 = sub_1BA30DAEC();
  *&v193 = v36;
  sub_1B9FE23E8(v37);
  v38 = *(v193 + 16);

  v191 = v0;
  v39 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI60SummarySharingOnboardingKitSharingConfirmationViewController_selectionFlowContext];
  if (v38)
  {
    v164 = OBJC_IVAR____TtC18HealthExperienceUI60SummarySharingOnboardingKitSharingConfirmationViewController_selectionFlowContext;
    swift_beginAccess();
    v40 = *(*(v39 + 32) + 80);
    v41 = qword_1EBBE8328;
    v42 = v40;
    if (v41 != -1)
    {
      swift_once();
    }

    v43 = __swift_project_value_buffer(v32, qword_1EBBEB818);
    (*(v33 + 16))(v35, v43, v32);
    sub_1BA4A1CA8();
    (*(v33 + 8))(v35, v32);
    v44 = v192;
    v45 = [v42 integerValue];
    v46 = ObjectType;
    if (v45 >= v44)
    {
      v70 = v191;

      sub_1B9FF0EE8();

      static SummarySharingOnboardingErrorHandling.displayMaxNumberRelationshipsError(on:for:completion:)(v70, 0, 0, 0, v46);
    }

    else
    {
      v47 = v191;
      if (!*&v191[OBJC_IVAR____TtC18HealthExperienceUI60SummarySharingOnboardingKitSharingConfirmationViewController_sendInviteCancellable])
      {
        v163 = OBJC_IVAR____TtC18HealthExperienceUI60SummarySharingOnboardingKitSharingConfirmationViewController_sendInviteCancellable;
        sub_1BA311504();
        v48 = *&v47[OBJC_IVAR____TtC18HealthExperienceUI60SummarySharingOnboardingKitSharingConfirmationViewController_selectedContactICloudIdentifier + 8];
        if (v48)
        {
          v165 = *&v47[OBJC_IVAR____TtC18HealthExperienceUI60SummarySharingOnboardingKitSharingConfirmationViewController_selectedContactICloudIdentifier];
          v161 = v48;

          v49 = sub_1BA30DAEC();
          v50 = *(v49 + 16);
          v51 = MEMORY[0x1E69E7CC0];
          v162 = v42;
          if (v50)
          {
            v192 = MEMORY[0x1E69E7CC0];
            sub_1B9F1C360(0, v50, 0);
            v52 = v192;
            v53 = (*(v186 + 80) + 32) & ~*(v186 + 80);
            v160 = v49;
            v54 = v49 + v53;
            v55 = *(v186 + 72);
            do
            {
              sub_1BA312978(v54, v30, type metadata accessor for SummarySharingSelectableDataTypeItem);
              if (*(v30 + 8))
              {
                v56 = *(v30 + 7);
                v57 = *(v30 + 8);
              }

              else
              {
                v57 = 0xE300000000000000;
                v56 = 6369134;
              }

              sub_1BA3129E0(v30, type metadata accessor for SummarySharingSelectableDataTypeItem);
              v192 = v52;
              v59 = *(v52 + 16);
              v58 = *(v52 + 24);
              if (v59 >= v58 >> 1)
              {
                sub_1B9F1C360((v58 > 1), v59 + 1, 1);
                v52 = v192;
              }

              *(v52 + 16) = v59 + 1;
              v60 = v52 + 16 * v59;
              *(v60 + 32) = v56;
              *(v60 + 40) = v57;
              v54 += v55;
              --v50;
            }

            while (v50);

            v47 = v191;
            v51 = MEMORY[0x1E69E7CC0];
          }

          else
          {

            v52 = MEMORY[0x1E69E7CC0];
          }

          v160 = MEMORY[0x1BFAF15B0](v52, MEMORY[0x1E69E6158]);
          v80 = v79;

          v81 = sub_1BA30E280();
          v82 = *(v81 + 16);
          if (v82)
          {
            v159 = v80;
            v192 = v51;
            sub_1B9F1C360(0, v82, 0);
            v83 = v192;
            v84 = v81 + ((*(v186 + 80) + 32) & ~*(v186 + 80));
            v85 = *(v186 + 72);
            do
            {
              sub_1BA312978(v84, v27, type metadata accessor for SummarySharingSelectableDataTypeItem);
              if (*(v27 + 8))
              {
                v86 = *(v27 + 7);
                v87 = *(v27 + 8);
              }

              else
              {
                v87 = 0xE300000000000000;
                v86 = 6369134;
              }

              sub_1BA3129E0(v27, type metadata accessor for SummarySharingSelectableDataTypeItem);
              v192 = v83;
              v89 = *(v83 + 16);
              v88 = *(v83 + 24);
              if (v89 >= v88 >> 1)
              {
                sub_1B9F1C360((v88 > 1), v89 + 1, 1);
                v83 = v192;
              }

              *(v83 + 16) = v89 + 1;
              v90 = v83 + 16 * v89;
              *(v90 + 32) = v86;
              *(v90 + 40) = v87;
              v84 += v85;
              --v82;
            }

            while (v82);

            v47 = v191;
            v80 = v159;
          }

          else
          {

            v83 = MEMORY[0x1E69E7CC0];
          }

          v91 = MEMORY[0x1BFAF15B0](v83, MEMORY[0x1E69E6158]);
          v93 = v92;

          v94 = v187;
          sub_1BA4A3DD8();
          v95 = v47;

          v96 = sub_1BA4A3E88();
          v97 = sub_1BA4A6F98();

          v98 = os_log_type_enabled(v96, v97);
          v186 = v91;
          if (v98)
          {
            v99 = swift_slowAlloc();
            v100 = swift_slowAlloc();
            v192 = v100;
            *v99 = 136315650;
            v101 = sub_1BA4A85D8();
            v103 = sub_1B9F0B82C(v101, v102, &v192);

            *(v99 + 4) = v103;
            *(v99 + 12) = 2048;
            v104 = *(sub_1BA30DAEC() + 16);

            *(v99 + 14) = v104;

            *(v99 + 22) = 2080;
            v105 = sub_1B9F0B82C(v160, v80, &v192);

            *(v99 + 24) = v105;
            _os_log_impl(&dword_1B9F07000, v96, v97, "[%s] Fetching authorization identifiers for %ld topics: %s", v99, 0x20u);
            swift_arrayDestroy();
            MEMORY[0x1BFAF43A0](v100, -1, -1);
            MEMORY[0x1BFAF43A0](v99, -1, -1);

            v106 = *(v189 + 8);
            v107 = v187;
          }

          else
          {

            v106 = *(v189 + 8);
            v107 = v94;
          }

          v108 = v188;
          v106(v107, v188);
          v109 = v166;
          sub_1BA4A3DD8();
          v110 = v95;

          v111 = sub_1BA4A3E88();
          v112 = sub_1BA4A6F98();

          if (os_log_type_enabled(v111, v112))
          {
            v113 = swift_slowAlloc();
            v188 = v106;
            v114 = v113;
            v115 = swift_slowAlloc();
            v192 = v115;
            *v114 = 136315650;
            v116 = sub_1BA4A85D8();
            v118 = sub_1B9F0B82C(v116, v117, &v192);

            *(v114 + 4) = v118;
            *(v114 + 12) = 2048;
            v119 = v109;
            v120 = *(sub_1BA30E280() + 16);

            *(v114 + 14) = v120;

            *(v114 + 22) = 2080;
            v121 = sub_1B9F0B82C(v186, v93, &v192);

            *(v114 + 24) = v121;
            _os_log_impl(&dword_1B9F07000, v111, v112, "[%s] Fetching authorization identifiers for %ld alerts: %s", v114, 0x20u);
            swift_arrayDestroy();
            MEMORY[0x1BFAF43A0](v115, -1, -1);
            MEMORY[0x1BFAF43A0](v114, -1, -1);

            v188(v119, v108);
          }

          else
          {

            v106(v109, v108);
          }

          v122 = v175;
          v123 = v174;
          v124 = v173;
          v125 = v172;
          v126 = v171;
          v127 = sub_1BA30DAEC();
          v187 = v110;
          v128 = v127;
          v129 = sub_1BA30E280();
          v192 = v128;
          sub_1B9FE23E8(v129);
          sub_1BA312914(0, &qword_1EBBEA640, type metadata accessor for SummarySharingSelectableDataTypeItem, MEMORY[0x1E69E62F8]);
          sub_1BA1B466C();
          v130 = v167;
          sub_1BA4A6A18();

          sub_1BA4A4D08();
          sub_1BA3130FC(0, &qword_1EBBEB0B0, &qword_1EBBEA900, MEMORY[0x1E69A3910], sub_1BA090BD8);
          sub_1BA3131A0();
          sub_1BA090C60();
          v131 = v168;
          sub_1BA4A5178();
          (*(v170 + 8))(v130, v125);
          v189 = MEMORY[0x1E695BE40];
          sub_1BA312C8C(&qword_1EBBF0798, sub_1BA313000);
          v132 = v169;
          sub_1BA4A5068();
          (*(v126 + 8))(v131, v123);
          sub_1BA312C8C(&qword_1EBBF07A0, sub_1BA313230);
          v133 = sub_1BA4A4F98();
          (*(v124 + 8))(v132, v122);

          v134 = sub_1B9FF07A8();

          v192 = v134;
          v135 = swift_allocObject();
          v188 = v133;
          v136 = ObjectType;
          *(v135 + 16) = v133;
          *(v135 + 24) = v136;

          sub_1BA4A4D08();
          v137 = MEMORY[0x1E695BED0];
          sub_1BA312E34(0, &qword_1EBBEA138, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E695BED0]);
          sub_1BA312BF4();
          sub_1BA312CD4();
          sub_1BA312C8C(&qword_1EBBF0750, sub_1BA312BF4);
          v138 = v176;
          sub_1BA4A5078();

          v139 = swift_allocObject();
          v140 = v187;
          v141 = v165;
          v139[2] = v187;
          v139[3] = v141;
          v142 = v161;
          v139[4] = v161;
          v139[5] = v136;

          v143 = v140;
          sub_1BA4A4D08();
          sub_1BA312E34(0, &qword_1EDC5F4B0, MEMORY[0x1E69E6370], v137);
          sub_1BA312C8C(&qword_1EBBF0768, sub_1BA312A40);
          sub_1BA312EB8();
          v144 = v178;
          v145 = v179;
          sub_1BA4A5088();

          (*(v177 + 8))(v138, v144);
          sub_1B9F0ADF8(0, &qword_1EDC6B5A0);
          v146 = sub_1BA4A7308();
          v192 = v146;
          v147 = sub_1BA4A72A8();
          v148 = v182;
          (*(*(v147 - 8) + 56))(v182, 1, 1, v147);
          sub_1BA312C8C(&qword_1EBBF0778, sub_1BA312D54);
          sub_1B9F3DC80();
          v149 = v183;
          v150 = v181;
          sub_1BA4A50A8();
          sub_1B9F0DEC0(v148, &qword_1EDC6B5B8, MEMORY[0x1E69E8050], MEMORY[0x1E69E6720], sub_1BA312914);

          (*(v180 + 8))(v145, v150);
          v151 = swift_allocObject();
          v152 = v165;
          v151[2] = v143;
          v151[3] = v152;
          v153 = ObjectType;
          v151[4] = v142;
          v151[5] = v153;
          v154 = swift_allocObject();
          v154[2] = v143;
          v154[3] = v152;
          v154[4] = v142;
          v154[5] = v153;
          sub_1BA312C8C(&qword_1EBBF07A8, sub_1BA312F34);
          v155 = v143;

          v156 = v155;
          v157 = v185;
          v158 = sub_1BA4A5008();

          (*(v184 + 8))(v149, v157);
          *&v191[v163] = v158;

          return;
        }

        v71 = v165;
        sub_1BA4A3DD8();
        v72 = sub_1BA4A3E88();
        v73 = sub_1BA4A6FA8();
        if (os_log_type_enabled(v72, v73))
        {
          v74 = swift_slowAlloc();
          v75 = swift_slowAlloc();
          v192 = v75;
          *v74 = 136315138;
          v76 = sub_1BA4A85D8();
          v78 = sub_1B9F0B82C(v76, v77, &v192);

          *(v74 + 4) = v78;
          _os_log_impl(&dword_1B9F07000, v72, v73, "[%s] Could not find iCloud identifier for user", v74, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v75);
          MEMORY[0x1BFAF43A0](v75, -1, -1);
          MEMORY[0x1BFAF43A0](v74, -1, -1);
        }

        (*(v189 + 8))(v71, v188);
        sub_1BA31151C();
      }
    }

    return;
  }

  sub_1B9FF0EE8();

  if (qword_1EBBE8800 != -1)
  {
    swift_once();
  }

  sub_1B9F1B4AC(0, &qword_1EDC6B410, &qword_1EDC6B3D0);
  v61 = swift_allocObject();
  *(v61 + 16) = xmmword_1BA4B5480;
  v62 = v191;
  v63 = *&v191[OBJC_IVAR____TtC18HealthExperienceUI60SummarySharingOnboardingKitSharingConfirmationViewController_selectedContact + 16];
  v193 = *&v191[OBJC_IVAR____TtC18HealthExperienceUI60SummarySharingOnboardingKitSharingConfirmationViewController_selectedContact];
  v194 = v63;
  v195 = *&v191[OBJC_IVAR____TtC18HealthExperienceUI60SummarySharingOnboardingKitSharingConfirmationViewController_selectedContact + 32];
  v64 = sub_1BA1FAFCC();
  v66 = v65;
  *(v61 + 56) = MEMORY[0x1E69E6158];
  *(v61 + 64) = sub_1B9F1BE20();
  *(v61 + 32) = v64;
  *(v61 + 40) = v66;
  v67 = sub_1BA4A6768();
  v69 = v68;

  *v3 = 0;
  swift_storeEnumTagMultiPayload();
  if (qword_1EBBE8808 != -1)
  {
    swift_once();
  }

  sub_1BA0C6BA4(v62, v67, v69, qword_1EBBF06B0, *algn_1EBBF06B8, MEMORY[0x1E69E7CC0], 0, 0);

  sub_1BA3129E0(v3, type metadata accessor for SummarySharingOnboardingError);
}

uint64_t sub_1BA310218(uint64_t a1)
{
  v2 = MEMORY[0x1E69E6720];
  sub_1BA312914(0, &qword_1EBBE9CB0, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v10 - v4;
  v6 = type metadata accessor for SummarySharingSelectableDataTypeItem(0);
  sub_1BA3147F8(a1 + *(v6 + 40), v5, &qword_1EBBE9CB0, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent, v2, sub_1BA312914);
  v7 = type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent(0);
  if ((*(*(v7 - 8) + 48))(v5, 1, v7) == 1)
  {
    sub_1B9F0DEC0(v5, &qword_1EBBE9CB0, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent, MEMORY[0x1E69E6720], sub_1BA312914);
    v8 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v8 = *&v5[*(v7 + 44)];

    sub_1BA3129E0(v5, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
  }

  v10[1] = v8;
  sub_1BA312914(0, &qword_1EBBEA900, MEMORY[0x1E69A3910], MEMORY[0x1E69E62F8]);
  sub_1BA090BD8();
  sub_1BA4A6A18();
}

uint64_t sub_1BA310434@<X0>(uint64_t a1@<X1>, void *a2@<X8>)
{
  v4 = sub_1BA4A3EA8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA4A3DD8();
  v8 = sub_1BA4A3E88();
  v9 = sub_1BA4A6FC8();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v18 = a2;
    v11 = v10;
    v12 = swift_slowAlloc();
    v19 = v12;
    *v11 = 136446210;
    v13 = sub_1BA4A85D8();
    v15 = sub_1B9F0B82C(v13, v14, &v19);

    *(v11 + 4) = v15;
    _os_log_impl(&dword_1B9F07000, v8, v9, "[%{public}s] Background generation completed. Fetching authorization identifiers.", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v12);
    MEMORY[0x1BFAF43A0](v12, -1, -1);
    v16 = v11;
    a2 = v18;
    MEMORY[0x1BFAF43A0](v16, -1, -1);
  }

  (*(v5 + 8))(v7, v4);
  *a2 = a1;
}

uint64_t sub_1BA3105F8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v46 = a3;
  v47 = a4;
  v8 = sub_1BA4A3EA8();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a1;
  sub_1BA4A3DD8();

  v13 = sub_1BA4A3E88();
  v14 = sub_1BA4A6FC8();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v45 = a5;
    v16 = v15;
    v17 = swift_slowAlloc();
    v48 = v17;
    *v16 = 136315394;
    v18 = sub_1BA4A85D8();
    v20 = sub_1B9F0B82C(v18, v19, &v48);
    v44 = v8;
    v21 = v20;

    *(v16 + 4) = v21;
    *(v16 + 12) = 2080;
    v22 = sub_1BA4A3A28();
    v23 = MEMORY[0x1BFAF1560](v12, v22);
    v25 = sub_1B9F0B82C(v23, v24, &v48);

    *(v16 + 14) = v25;
    _os_log_impl(&dword_1B9F07000, v13, v14, "[%s] Received authorization identifiers: %s", v16, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1BFAF43A0](v17, -1, -1);
    v26 = v16;
    a5 = v45;
    MEMORY[0x1BFAF43A0](v26, -1, -1);

    (*(v9 + 8))(v11, v44);
  }

  else
  {

    (*(v9 + 8))(v11, v8);
  }

  v27 = sub_1BA311180();
  v28 = *(a2 + OBJC_IVAR____TtC18HealthExperienceUI60SummarySharingOnboardingKitSharingConfirmationViewController_sharingEntryStore);
  v29 = *(a2 + OBJC_IVAR____TtC18HealthExperienceUI60SummarySharingOnboardingKitSharingConfirmationViewController_selectedContact);
  v30 = [v29 givenName];
  v31 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  v33 = v32;

  v34 = [v29 familyName];
  v35 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  v37 = v36;

  v38 = swift_allocObject();
  v38[2] = v12;
  v38[3] = v28;
  v39 = v47;
  v38[4] = v46;
  v38[5] = v39;
  v38[6] = v31;
  v38[7] = v33;
  v38[8] = v35;
  v38[9] = v37;
  v38[10] = v27;
  sub_1BA312E34(0, &qword_1EBBEB028, MEMORY[0x1E69E6370], MEMORY[0x1E695C028]);
  swift_allocObject();

  v40 = v28;

  v48 = sub_1BA4A4EA8();
  sub_1BA31337C();
  v41 = sub_1BA4A4F98();

  *a5 = v41;
  return result;
}

uint64_t sub_1BA310978(id *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v51 = a3;
  v52 = a4;
  v54 = type metadata accessor for SummarySharingOnboardingError();
  MEMORY[0x1EEE9AC00](v54);
  v55 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v50 = (&v49 - v8);
  v9 = sub_1BA4A3EA8();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v49 - v14;
  v56 = *a1;
  sub_1BA4A3DD8();
  v16 = sub_1BA4A3E88();
  v17 = sub_1BA4A6FC8();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v58 = v49;
    *v18 = 136315138;
    v19 = sub_1BA4A85D8();
    v53 = a2;
    v21 = v12;
    v22 = v10;
    v23 = v9;
    v24 = sub_1B9F0B82C(v19, v20, &v58);
    a2 = v53;

    *(v18 + 4) = v24;
    v9 = v23;
    v10 = v22;
    v12 = v21;
    _os_log_impl(&dword_1B9F07000, v16, v17, "[%s] Send invitation stream completed", v18, 0xCu);
    v25 = v49;
    __swift_destroy_boxed_opaque_existential_1(v49);
    MEMORY[0x1BFAF43A0](v25, -1, -1);
    MEMORY[0x1BFAF43A0](v18, -1, -1);
  }

  v26 = *(v10 + 8);
  v26(v15, v9);
  if (v56)
  {
    v27 = v56;
    v28 = v56;
    sub_1BA4A3DD8();
    v29 = v27;
    v30 = sub_1BA4A3E88();
    v31 = sub_1BA4A6FA8();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v58 = v33;
      *v32 = 136446466;
      v34 = sub_1BA4A85D8();
      v53 = a2;
      v36 = v9;
      v37 = sub_1B9F0B82C(v34, v35, &v58);

      *(v32 + 4) = v37;
      *(v32 + 12) = 2080;
      v57 = v56;
      v38 = v56;
      sub_1B9F0D9AC(0, &qword_1EDC6E310);
      v39 = sub_1BA4A6828();
      v41 = sub_1B9F0B82C(v39, v40, &v58);
      a2 = v53;

      *(v32 + 14) = v41;
      _os_log_impl(&dword_1B9F07000, v30, v31, "[%{public}s] Failed to send invite: %s", v32, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v33, -1, -1);
      MEMORY[0x1BFAF43A0](v32, -1, -1);

      v42 = v12;
      v43 = v36;
    }

    else
    {

      v42 = v12;
      v43 = v9;
    }

    v26(v42, v43);
    v44 = v56;
    v45 = v56;
    v46 = v50;
    SummarySharingOnboardingError.init(error:)(v44, v50);
    sub_1BA311674(v46, v51, v52);
    sub_1BA3129E0(v46, type metadata accessor for SummarySharingOnboardingError);
    v58 = v44;
    v47 = v44;
    sub_1B9F0D9AC(0, &qword_1EDC6E310);
    if (swift_dynamicCast())
    {
      if (swift_getEnumCaseMultiPayload() - 5 <= 1)
      {

        sub_1B9FEFF28(1);

        goto LABEL_13;
      }

      sub_1BA3129E0(v55, type metadata accessor for SummarySharingOnboardingError);
    }

    else
    {
    }
  }

LABEL_13:
  sub_1BA31151C();
  *(a2 + OBJC_IVAR____TtC18HealthExperienceUI60SummarySharingOnboardingKitSharingConfirmationViewController_sendInviteCancellable) = 0;
}

void sub_1BA310EB8(_BYTE *a1, char *a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v10 = type metadata accessor for SummarySharingOnboardingError();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v22[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (*a1 == 1)
  {
    v13 = OBJC_IVAR____TtC18HealthExperienceUI60SummarySharingOnboardingKitSharingConfirmationViewController_selectionFlowContext;
    memset(v23, 0, sizeof(v23));
    v24 = 0uLL;
    *&v25 = 0;
    *(&v25 + 1) = 10;
    LOBYTE(v26) = 7;

    sub_1B9FEEC64(a5, v23, 0, &v24);

    sub_1B9FF3BFC(v24, *(&v24 + 1), v25, *(&v25 + 1));
    v14 = MEMORY[0x1E69E6720];
    sub_1B9F0DEC0(v23, &qword_1EDC6E300, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720], sub_1BA3132F0);
    v15 = *&a2[OBJC_IVAR____TtC18HealthExperienceUI60SummarySharingOnboardingKitSharingConfirmationViewController_selectedContact + 16];
    v24 = *&a2[OBJC_IVAR____TtC18HealthExperienceUI60SummarySharingOnboardingKitSharingConfirmationViewController_selectedContact];
    v25 = v15;
    v26 = *&a2[OBJC_IVAR____TtC18HealthExperienceUI60SummarySharingOnboardingKitSharingConfirmationViewController_selectedContact + 32];
    v16 = v24;
    v27 = *&a2[OBJC_IVAR____TtC18HealthExperienceUI60SummarySharingOnboardingKitSharingConfirmationViewController_selectedContact + 8];
    v23[0] = *&a2[OBJC_IVAR____TtC18HealthExperienceUI60SummarySharingOnboardingKitSharingConfirmationViewController_selectedContact + 24];
    v17 = *&a2[OBJC_IVAR____TtC18HealthExperienceUI60SummarySharingOnboardingKitSharingConfirmationViewController_selectedContactPhotoPublisher];
    v18 = *&a2[v13];
    objc_allocWithZone(type metadata accessor for SummarySharingOnboardingInvitationSentViewController());
    v19 = v16;
    v20 = MEMORY[0x1E69E6158];
    sub_1BA3147F8(&v27, v22, &qword_1EDC6E410, MEMORY[0x1E69E6158], v14, sub_1BA3132F0);
    sub_1BA3147F8(v23, v22, &qword_1EDC6E410, v20, v14, sub_1BA3132F0);

    v21 = sub_1BA10F908(&v24, v17, v18);
    [a2 showViewController:v21 sender:0];
  }

  else
  {
    swift_storeEnumTagMultiPayload();
    sub_1BA311674(v12, a3, a4);
    sub_1BA3129E0(v12, type metadata accessor for SummarySharingOnboardingError);
  }
}

uint64_t sub_1BA311180()
{
  v1 = v0;
  v28[1] = *MEMORY[0x1E69E9840];
  swift_getObjectType();
  v2 = sub_1BA4A3EA8();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v1 + OBJC_IVAR____TtC18HealthExperienceUI60SummarySharingOnboardingKitSharingConfirmationViewController_healthStore);
  v28[0] = 0;
  v8 = [v7 wheelchairUseWithError_];
  if (v8)
  {
    v9 = v8;
    v10 = v28[0];
    v11 = [v9 wheelchairUse] == 2;

    return 2 * v11;
  }

  else
  {
    v13 = v28[0];
    v14 = sub_1BA4A1488();

    swift_willThrow();
    sub_1BA4A3DD8();
    v15 = v14;
    v16 = sub_1BA4A3E88();
    v17 = sub_1BA4A6FA8();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v28[0] = v19;
      *v18 = 136315394;
      v20 = sub_1BA4A85D8();
      v22 = sub_1B9F0B82C(v20, v21, v28);

      *(v18 + 4) = v22;
      *(v18 + 12) = 2082;
      v27 = v14;
      v23 = v14;
      sub_1B9F0D9AC(0, &qword_1EDC6E310);
      v24 = sub_1BA4A6808();
      v26 = sub_1B9F0B82C(v24, v25, v28);

      *(v18 + 14) = v26;
      _os_log_impl(&dword_1B9F07000, v16, v17, "[%s] Failed to get wheelchair use: %{public}s", v18, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v19, -1, -1);
      MEMORY[0x1BFAF43A0](v18, -1, -1);
    }

    else
    {
    }

    (*(v3 + 8))(v6, v2);
    return 0;
  }
}

uint64_t sub_1BA311534(SEL *a1, char a2, SEL *a3)
{
  v7 = [v3 buttonTray];
  [v7 *a1];

  v8 = [v3 navigationController];
  if (v8)
  {
    v9 = v8;
    v10 = [v8 navigationBar];

    [v10 setUserInteractionEnabled_];
  }

  v11 = [v3 navigationController];
  if (v11)
  {
    v12 = v11;
    v13 = [v11 navigationBar];

    v14 = [objc_opt_self() *a3];
    [v13 setTintColor_];
  }

  return sub_1BA312588(a2 & 1);
}

uint64_t sub_1BA311674(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v4 = v3;
  v54 = a2;
  v58 = a1;
  ObjectType = swift_getObjectType();
  v7 = type metadata accessor for SummarySharingOnboardingError();
  MEMORY[0x1EEE9AC00](v7);
  v9 = (&v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v51 - v11;
  v13 = sub_1BA4A3EA8();
  *&v57 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA4A3DD8();

  v16 = sub_1BA4A3E88();
  v17 = sub_1BA4A6FA8();
  v55 = a3;

  v18 = os_log_type_enabled(v16, v17);
  v53 = ObjectType;
  if (v18)
  {
    v19 = swift_slowAlloc();
    v56 = v4;
    v20 = v19;
    v21 = swift_slowAlloc();
    v52 = v9;
    v22 = v21;
    *&v59[0] = v21;
    *v20 = 136315394;
    v23 = sub_1BA4A85D8();
    v25 = sub_1B9F0B82C(v23, v24, v59);
    v51 = v13;
    v26 = v25;

    *(v20 + 4) = v26;
    *(v20 + 12) = 2080;
    *(v20 + 14) = sub_1B9F0B82C(v54, v55, v59);
    _os_log_impl(&dword_1B9F07000, v16, v17, "[%s] Received an error when sending invite to user with identifier %s", v20, 0x16u);
    swift_arrayDestroy();
    v27 = v22;
    v9 = v52;
    MEMORY[0x1BFAF43A0](v27, -1, -1);
    v28 = v20;
    v4 = v56;
    MEMORY[0x1BFAF43A0](v28, -1, -1);

    (*(v57 + 8))(v15, v51);
  }

  else
  {

    (*(v57 + 8))(v15, v13);
  }

  sub_1B9FF0EE8();

  sub_1BA312978(v58, v12, type metadata accessor for SummarySharingOnboardingError);
  if (swift_getEnumCaseMultiPayload() != 1 || ((sub_1BA312978(v12, v9, type metadata accessor for SummarySharingOnboardingError), (*v9 - 727) <= 6) ? (v29 = ((1 << (*v9 + 41)) & 0x51) == 0) : (v29 = 1), v29))
  {
    if (qword_1EBBE87F8 != -1)
    {
      swift_once();
    }

    v47 = qword_1EBBF0690;
    v48 = *algn_1EBBF0698;
    v49 = swift_allocObject();
    *(v49 + 16) = v4;
    v50 = v4;
    sub_1BA0C6BA4(v50, v47, v48, 0, 0, MEMORY[0x1E69E7CC0], sub_1BA3128F0, v49);

    return sub_1BA3129E0(v12, type metadata accessor for SummarySharingOnboardingError);
  }

  else
  {
    sub_1BA3129E0(v12, type metadata accessor for SummarySharingOnboardingError);
    v30 = *&v4[OBJC_IVAR____TtC18HealthExperienceUI60SummarySharingOnboardingKitSharingConfirmationViewController_selectedContact + 16];
    v59[0] = *&v4[OBJC_IVAR____TtC18HealthExperienceUI60SummarySharingOnboardingKitSharingConfirmationViewController_selectedContact];
    v59[1] = v30;
    v60 = *&v4[OBJC_IVAR____TtC18HealthExperienceUI60SummarySharingOnboardingKitSharingConfirmationViewController_selectedContact + 32];
    v31 = sub_1BA1FAFCC();
    v56 = v4;
    v33 = v32;
    if (qword_1EDC5E100 != -1)
    {
      swift_once();
    }

    sub_1BA4A1318();
    sub_1B9F1B4AC(0, &qword_1EDC6B410, &qword_1EDC6B3D0);
    v34 = swift_allocObject();
    v57 = xmmword_1BA4B5480;
    *(v34 + 16) = xmmword_1BA4B5480;
    v35 = MEMORY[0x1E69E6158];
    *(v34 + 56) = MEMORY[0x1E69E6158];
    v36 = sub_1B9F1BE20();
    *(v34 + 64) = v36;
    *(v34 + 32) = v31;
    *(v34 + 40) = v33;

    v58 = sub_1BA4A6768();
    v38 = v37;

    sub_1BA4A1318();
    v39 = swift_allocObject();
    *(v39 + 16) = v57;
    *(v39 + 56) = v35;
    *(v39 + 64) = v36;
    *(v39 + 32) = v31;
    *(v39 + 40) = v33;
    v40 = sub_1BA4A6768();
    v42 = v41;

    v43 = swift_allocObject();
    v44 = v56;
    *(v43 + 16) = v56;
    v45 = v44;
    static SummarySharingOnboardingErrorHandling.displayError(on:title:message:customActions:completion:)(v45, v58, v38, v40, v42, MEMORY[0x1E69E7CC0], sub_1BA31486C, v43);
  }
}

uint64_t sub_1BA311D3C()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC18HealthExperienceUI60SummarySharingOnboardingKitSharingConfirmationViewController_healthExperienceStore);
}

uint64_t sub_1BA311FC4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI60SummarySharingOnboardingKitSharingConfirmationViewController_selectedDataTypesContext;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

size_t sub_1BA31207C()
{
  swift_beginAccess();
  swift_beginAccess();

  return sub_1BA0DF61C(v0);
}

void sub_1BA3120E0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v37 = a6;
  v38 = a8;
  v35 = a7;
  v36 = a5;
  v15 = a11;
  v16 = sub_1BA4A3A28();
  v39 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v18 = v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = swift_allocObject();
  v20 = v19;
  *(v19 + 16) = a1;
  *(v19 + 24) = a2;
  v21 = *(a3 + 16);
  if (v21)
  {
    v31[0] = a9;
    v31[1] = a10;
    v32 = v19;
    v33 = a4;
    v34 = a11;
    aBlock[0] = MEMORY[0x1E69E7CC0];

    sub_1BA4A7F08();
    v22 = v39 + 16;
    v39 = *(v39 + 16);
    v23 = a3 + ((*(v22 + 64) + 32) & ~*(v22 + 64));
    v24 = *(v22 + 56);
    do
    {
      (v39)(v18, v23, v16);
      sub_1BA4A3A18();
      (*(v22 - 8))(v18, v16);
      sub_1BA4A7ED8();
      sub_1BA4A7F18();
      sub_1BA4A7F28();
      sub_1BA4A7EE8();
      v23 += v24;
      --v21;
    }

    while (v21);
    a4 = v33;
    v15 = v34;
    v20 = v32;
  }

  else
  {
  }

  v25 = sub_1BA4A6758();
  if (v38)
  {
    v26 = sub_1BA4A6758();
  }

  else
  {
    v26 = 0;
  }

  v27 = sub_1BA4A6758();
  sub_1B9F0ADF8(0, &qword_1EBBEB060);
  v28 = sub_1BA4A6AE8();

  v29 = swift_allocObject();
  *(v29 + 16) = sub_1BA00CD30;
  *(v29 + 24) = v20;
  aBlock[4] = sub_1BA08FD48;
  aBlock[5] = v29;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BA454240;
  aBlock[3] = &block_descriptor_85;
  v30 = _Block_copy(aBlock);

  [a4 inviteSharingDataWithIdentifier:v25 firstName:v26 lastName:v27 sharingAuthorizations:v28 userWheelchairMode:v15 completion:v30];
  _Block_release(v30);
}

void sub_1BA312464()
{
  v6.receiver = v0;
  v6.super_class = type metadata accessor for SummarySharingOnboardingSharingConfirmationViewController();
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

uint64_t sub_1BA312588(char a1)
{
  sub_1B9F12538();
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(*(*(v1 + OBJC_IVAR____TtC18HealthExperienceUI57SummarySharingOnboardingSharingConfirmationViewController_previewDataSource) + OBJC_IVAR____TtC18HealthExperienceUI37SummarySharingPreviewButtonDataSource_previewItem) + 136) = a1;
  *(*(v1 + OBJC_IVAR____TtC18HealthExperienceUI57SummarySharingOnboardingSharingConfirmationViewController_alertsDataSource) + OBJC_IVAR____TtC18HealthExperienceUI41SummarySharingSelectedDataTypesDataSource_isHeaderLinkEnabled) = a1;
  *(*(v1 + OBJC_IVAR____TtC18HealthExperienceUI57SummarySharingOnboardingSharingConfirmationViewController_topicsDataSource) + OBJC_IVAR____TtC18HealthExperienceUI41SummarySharingSelectedDataTypesDataSource_isHeaderLinkEnabled) = a1;
  v8 = OBJC_IVAR____TtC18HealthExperienceUI42CompoundDataSourceCollectionViewController_dataSourceAdaptor;
  result = swift_beginAccess();
  v10 = *(v1 + v8);
  if (v10)
  {
    v11 = *(v10 + OBJC_IVAR____TtC18HealthExperienceUI29DiffableCollectionViewAdaptor_diffableDataSource);

    v12 = v11;
    sub_1BA4A4738();

    (*(*v10 + 296))(v7, 1, 1, 0, 0);

    return (*(v5 + 8))(v7, v4);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BA3127B0()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC18HealthExperienceUI57SummarySharingOnboardingSharingConfirmationViewController_healthExperienceStore);
}

id sub_1BA312828(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void sub_1BA312914(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1BA312978(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BA3129E0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1BA312A40()
{
  if (!qword_1EBBF0738)
  {
    sub_1BA312B24();
    sub_1BA312E34(255, &qword_1EBBEA138, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E695BED0]);
    sub_1BA312C8C(&qword_1EBBF0758, sub_1BA312B24);
    sub_1BA312CD4();
    v0 = sub_1BA4A4C28();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBBF0738);
    }
  }
}

void sub_1BA312B24()
{
  if (!qword_1EBBF0740)
  {
    sub_1BA312BF4();
    sub_1B9F0D9AC(255, &qword_1EDC6E310);
    sub_1BA312C8C(&qword_1EBBF0750, sub_1BA312BF4);
    v0 = sub_1BA4A4B38();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBBF0740);
    }
  }
}

void sub_1BA312BF4()
{
  if (!qword_1EBBF0748)
  {
    sub_1BA312914(255, &qword_1EBBEA900, MEMORY[0x1E69A3910], MEMORY[0x1E69E62F8]);
    v0 = sub_1BA4A4D18();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBBF0748);
    }
  }
}

uint64_t sub_1BA312C8C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1BA312CD4()
{
  result = qword_1EBBEA140;
  if (!qword_1EBBEA140)
  {
    sub_1BA312E34(255, &qword_1EBBEA138, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E695BED0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEA140);
  }

  return result;
}

void sub_1BA312D54()
{
  if (!qword_1EBBF0760)
  {
    sub_1BA312E34(255, &qword_1EDC5F4B0, MEMORY[0x1E69E6370], MEMORY[0x1E695BED0]);
    sub_1BA312A40();
    sub_1BA312EB8();
    sub_1BA312C8C(&qword_1EBBF0768, sub_1BA312A40);
    v0 = sub_1BA4A4C28();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBBF0760);
    }
  }
}

void sub_1BA312E34(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, void))
{
  if (!*a2)
  {
    v8 = sub_1B9F0D9AC(255, &qword_1EDC6E310);
    v9 = a4(a1, a3, v8, MEMORY[0x1E69E7288]);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

unint64_t sub_1BA312EB8()
{
  result = qword_1EDC5F4B8;
  if (!qword_1EDC5F4B8)
  {
    sub_1BA312E34(255, &qword_1EDC5F4B0, MEMORY[0x1E69E6370], MEMORY[0x1E695BED0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC5F4B8);
  }

  return result;
}

void sub_1BA312F34()
{
  if (!qword_1EBBF0770)
  {
    sub_1BA312D54();
    sub_1B9F0ADF8(255, &qword_1EDC6B5A0);
    sub_1BA312C8C(&qword_1EBBF0778, sub_1BA312D54);
    sub_1B9F3DC80();
    v0 = sub_1BA4A4CC8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBBF0770);
    }
  }
}

void sub_1BA313000()
{
  if (!qword_1EBBF0780)
  {
    sub_1BA3130FC(255, &qword_1EBBEB0B0, &qword_1EBBEA900, MEMORY[0x1E69A3910], sub_1BA090BD8);
    sub_1BA3130FC(255, &qword_1EBBED7D8, &qword_1EBBEA640, type metadata accessor for SummarySharingSelectableDataTypeItem, sub_1BA1B466C);
    sub_1BA090C60();
    sub_1BA3131A0();
    v0 = sub_1BA4A4C28();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBBF0780);
    }
  }
}

void sub_1BA3130FC(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t), void (*a5)(void))
{
  if (!*a2)
  {
    sub_1BA312914(255, a3, a4, MEMORY[0x1E69E62F8]);
    a5();
    v7 = sub_1BA4A4C98();
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1BA3131A0()
{
  result = qword_1EBBF0788;
  if (!qword_1EBBF0788)
  {
    sub_1BA3130FC(255, &qword_1EBBED7D8, &qword_1EBBEA640, type metadata accessor for SummarySharingSelectableDataTypeItem, sub_1BA1B466C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBF0788);
  }

  return result;
}

void sub_1BA313230()
{
  if (!qword_1EBBF0790)
  {
    sub_1BA313000();
    sub_1BA312C8C(&qword_1EBBF0798, sub_1BA313000);
    v0 = sub_1BA4A4C18();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBBF0790);
    }
  }
}

void sub_1BA3132F0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_1BA31337C()
{
  result = qword_1EBBEB030;
  if (!qword_1EBBEB030)
  {
    sub_1BA312E34(255, &qword_1EBBEB028, MEMORY[0x1E69E6370], MEMORY[0x1E695C028]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEB030);
  }

  return result;
}

uint64_t sub_1BA3133F8(uint64_t a1)
{
  v2 = type metadata accessor for SummarySharingSelectableDataTypeItem(0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v21 - v7;
  v9 = *(a1 + 16);
  v10 = MEMORY[0x1E69E7CC0];
  if (v9)
  {
    v22 = MEMORY[0x1E69E7CC0];
    sub_1BA066E50(0, v9, 0);
    v11 = type metadata accessor for SummarySharingSelectableDataTypeCell();
    v10 = v22;
    v12 = (*(v3 + 80) + 32) & ~*(v3 + 80);
    v13 = a1 + v12;
    v14 = *(v3 + 72);
    do
    {
      sub_1BA312978(v13, v5, type metadata accessor for SummarySharingSelectableDataTypeItem);
      sub_1BA312978(v5, v8, type metadata accessor for SummarySharingSelectableDataTypeItem);
      v21 = v11;
      sub_1BA091918();
      v15 = sub_1BA4A6808();
      v17 = v16;
      sub_1BA3129E0(v5, type metadata accessor for SummarySharingSelectableDataTypeItem);

      *v8 = v15;
      *(v8 + 1) = v17;
      v8[48] = 0;
      v22 = v10;
      v19 = *(v10 + 16);
      v18 = *(v10 + 24);
      if (v19 >= v18 >> 1)
      {
        sub_1BA066E50(v18 > 1, v19 + 1, 1);
        v10 = v22;
      }

      *(v10 + 16) = v19 + 1;
      sub_1BA025350(v8, v10 + v12 + v19 * v14);
      v13 += v14;
      --v9;
    }

    while (v9);
  }

  return v10;
}

char *sub_1BA3135F8(uint64_t a1, uint64_t a2, void *a3)
{
  sub_1BA312914(0, &qword_1EBBEB190, type metadata accessor for SummarySharingSelectionFlow, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v50 - v11;
  sub_1B9F0A534(a2, v3 + OBJC_IVAR____TtC18HealthExperienceUI57SummarySharingOnboardingSharingConfirmationViewController_healthExperienceStore);
  sub_1B9F0A534(a2, v67);
  type metadata accessor for SummarySharingPreviewButtonDataSource();
  swift_allocObject();
  v13 = sub_1BA093594(v67, a3);
  v65 = v3;
  v62 = a1;
  v63 = OBJC_IVAR____TtC18HealthExperienceUI57SummarySharingOnboardingSharingConfirmationViewController_previewDataSource;
  *(v3 + OBJC_IVAR____TtC18HealthExperienceUI57SummarySharingOnboardingSharingConfirmationViewController_previewDataSource) = v13;
  sub_1BA3133F8(a1);

  v14 = type metadata accessor for SummarySharingSelectionFlow(0);
  swift_storeEnumTagMultiPayload();
  v15 = *(v14 - 8);
  v16 = *(v15 + 56);
  v51 = v14;
  v59 = v15 + 56;
  v60 = v16;
  v16(v12, 0, 1, v14);
  v66 = a2;
  sub_1B9F0A534(a2, v67);
  if (qword_1EBBE83D8 != -1)
  {
    swift_once();
  }

  v17 = unk_1EBBECA00;
  v61 = qword_1EBBEC9F8;
  v18 = MEMORY[0x1E69E6720];
  v56 = sub_1BA312914;
  sub_1BA3147F8(v12, v9, &qword_1EBBEB190, type metadata accessor for SummarySharingSelectionFlow, MEMORY[0x1E69E6720], sub_1BA312914);
  sub_1BA312914(0, &qword_1EDC6B460, MEMORY[0x1E69A3C08], MEMORY[0x1E69E6F90]);
  v20 = v19;
  v21 = sub_1BA4A1C68();
  v22 = *(v21 - 8);
  v23 = *(v22 + 72);
  v64 = v12;
  v24 = (*(v22 + 80) + 32) & ~*(v22 + 80);
  v50 = *(v22 + 80);
  v57 = v20;
  v54 = v24 + v23;
  v25 = swift_allocObject();
  v52 = xmmword_1BA4B5480;
  *(v25 + 16) = xmmword_1BA4B5480;
  v26 = *MEMORY[0x1E69A3B68];
  v27 = *(v22 + 104);
  v55 = v24;
  v58 = v21;
  v53 = v27;
  v27(v25 + v24, v26, v21);
  type metadata accessor for SummarySharingSelectedDataTypesDataSource();
  v28 = swift_allocObject();
  *(v28 + OBJC_IVAR____TtC18HealthExperienceUI41SummarySharingSelectedDataTypesDataSource_isHeaderLinkEnabled) = 1;
  *(v28 + OBJC_IVAR____TtC18HealthExperienceUI41SummarySharingSelectedDataTypesDataSource_selectedDataTypesDelegate + 8) = 0;
  swift_unknownObjectWeakInit();
  sub_1B9F0A534(v67, v28 + OBJC_IVAR____TtC18HealthExperienceUI41SummarySharingSelectedDataTypesDataSource_healthExperienceStore);
  *(v28 + OBJC_IVAR____TtC18HealthExperienceUI41SummarySharingSelectedDataTypesDataSource_isEditable) = 0;
  v29 = (v28 + OBJC_IVAR____TtC18HealthExperienceUI41SummarySharingSelectedDataTypesDataSource_headerTitle);
  *v29 = v61;
  v29[1] = v17;
  sub_1BA3147F8(v9, v28 + OBJC_IVAR____TtC18HealthExperienceUI41SummarySharingSelectedDataTypesDataSource_selectionFlow, &qword_1EBBEB190, type metadata accessor for SummarySharingSelectionFlow, v18, v56);
  *(v28 + OBJC_IVAR____TtC18HealthExperienceUI41SummarySharingSelectedDataTypesDataSource_contentKinds) = v25;
  *(v28 + OBJC_IVAR____TtC18HealthExperienceUI41SummarySharingSelectedDataTypesDataSource_canEditSelection) = 1;
  v30 = (v28 + OBJC_IVAR____TtC18HealthExperienceUI41SummarySharingSelectedDataTypesDataSource_additionalItemFilter);
  *v30 = 0;
  v30[1] = 0;

  v31 = sub_1B9F1DAFC(MEMORY[0x1E69E7CC0], 1, sub_1BA146B8C, 0);
  v61 = v9;
  sub_1B9F0DEC0(v9, &qword_1EBBEB190, type metadata accessor for SummarySharingSelectionFlow, v18, sub_1BA312914);
  __swift_destroy_boxed_opaque_existential_1(v67);
  v32 = v18;
  v33 = v64;
  sub_1B9F0DEC0(v64, &qword_1EBBEB190, type metadata accessor for SummarySharingSelectionFlow, v32, sub_1BA312914);
  v56 = OBJC_IVAR____TtC18HealthExperienceUI57SummarySharingOnboardingSharingConfirmationViewController_topicsDataSource;
  *(v65 + OBJC_IVAR____TtC18HealthExperienceUI57SummarySharingOnboardingSharingConfirmationViewController_topicsDataSource) = v31;
  sub_1BA3133F8(v62);

  v34 = v51;
  swift_storeEnumTagMultiPayload();
  v60(v33, 0, 1, v34);
  sub_1B9F0A534(v66, v67);
  if (qword_1EBBE83E0 != -1)
  {
    swift_once();
  }

  v36 = qword_1EBBECA08;
  v35 = unk_1EBBECA10;
  v37 = MEMORY[0x1E69E6720];
  v38 = v33;
  v39 = v61;
  sub_1BA3147F8(v38, v61, &qword_1EBBEB190, type metadata accessor for SummarySharingSelectionFlow, MEMORY[0x1E69E6720], sub_1BA312914);
  v40 = swift_allocObject();
  *(v40 + 16) = v52;
  v53(v40 + v55, *MEMORY[0x1E69A3B90], v58);
  v41 = swift_allocObject();
  *(v41 + OBJC_IVAR____TtC18HealthExperienceUI41SummarySharingSelectedDataTypesDataSource_isHeaderLinkEnabled) = 1;
  *(v41 + OBJC_IVAR____TtC18HealthExperienceUI41SummarySharingSelectedDataTypesDataSource_selectedDataTypesDelegate + 8) = 0;
  swift_unknownObjectWeakInit();
  sub_1B9F0A534(v67, v41 + OBJC_IVAR____TtC18HealthExperienceUI41SummarySharingSelectedDataTypesDataSource_healthExperienceStore);
  *(v41 + OBJC_IVAR____TtC18HealthExperienceUI41SummarySharingSelectedDataTypesDataSource_isEditable) = 0;
  v42 = (v41 + OBJC_IVAR____TtC18HealthExperienceUI41SummarySharingSelectedDataTypesDataSource_headerTitle);
  *v42 = v36;
  v42[1] = v35;
  sub_1BA3147F8(v39, v41 + OBJC_IVAR____TtC18HealthExperienceUI41SummarySharingSelectedDataTypesDataSource_selectionFlow, &qword_1EBBEB190, type metadata accessor for SummarySharingSelectionFlow, v37, sub_1BA312914);
  *(v41 + OBJC_IVAR____TtC18HealthExperienceUI41SummarySharingSelectedDataTypesDataSource_contentKinds) = v40;
  *(v41 + OBJC_IVAR____TtC18HealthExperienceUI41SummarySharingSelectedDataTypesDataSource_canEditSelection) = 1;
  v43 = (v41 + OBJC_IVAR____TtC18HealthExperienceUI41SummarySharingSelectedDataTypesDataSource_additionalItemFilter);
  *v43 = 0;
  v43[1] = 0;

  v44 = sub_1B9F1DAFC(MEMORY[0x1E69E7CC0], 1, sub_1BA146B8C, 0);
  sub_1B9F0DEC0(v39, &qword_1EBBEB190, type metadata accessor for SummarySharingSelectionFlow, v37, sub_1BA312914);
  __swift_destroy_boxed_opaque_existential_1(v67);
  sub_1B9F0DEC0(v64, &qword_1EBBEB190, type metadata accessor for SummarySharingSelectionFlow, v37, sub_1BA312914);
  v45 = v65;
  *(v65 + OBJC_IVAR____TtC18HealthExperienceUI57SummarySharingOnboardingSharingConfirmationViewController_alertsDataSource) = v44;
  sub_1B9F1B4AC(0, &qword_1EDC5DC70, &qword_1EDC67F10);
  v46 = swift_allocObject();
  *(v46 + 16) = xmmword_1BA4B9FD0;
  *(v46 + 32) = *(v45 + v63);
  *(v46 + 40) = &protocol witness table for MutableArrayDataSource;
  *(v46 + 48) = v44;
  *(v46 + 56) = &protocol witness table for MutableArrayDataSource;
  *(v46 + 64) = *(v56 + v45);
  *(v46 + 72) = &protocol witness table for MutableArrayDataSource;
  type metadata accessor for CompoundSectionedDataSource();
  swift_allocObject();

  v47 = CompoundSectionedDataSource.init(_:)(v46);
  v48 = CompoundDataSourceCollectionViewController.init(dataSource:)(v47);
  __swift_destroy_boxed_opaque_existential_1(v66);
  return v48;
}

uint64_t sub_1BA313E58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v7 = v6;
  v75 = sub_1BA4A11C8();
  v14 = *(v75 - 8);
  MEMORY[0x1EEE9AC00](v75);
  v74 = &v69 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v7[OBJC_IVAR____TtC18HealthExperienceUI60SummarySharingOnboardingKitSharingConfirmationViewController_sendInviteCancellable] = 0;
  *&v7[OBJC_IVAR____TtC18HealthExperienceUI60SummarySharingOnboardingKitSharingConfirmationViewController_cancellables] = MEMORY[0x1E69E7CC0];
  v80 = a4;
  sub_1B9F0A534(a4, &v7[OBJC_IVAR____TtC18HealthExperienceUI60SummarySharingOnboardingKitSharingConfirmationViewController_healthExperienceStore]);
  v16 = *a1;
  v83[0] = *(a1 + 8);
  v17 = *(a1 + 32);
  v76 = *(a1 + 24);
  v18 = &v7[OBJC_IVAR____TtC18HealthExperienceUI60SummarySharingOnboardingKitSharingConfirmationViewController_selectedContact];
  v19 = *(a1 + 16);
  *v18 = *a1;
  *(v18 + 1) = v19;
  *(v18 + 4) = v17;
  *&v7[OBJC_IVAR____TtC18HealthExperienceUI60SummarySharingOnboardingKitSharingConfirmationViewController_selectedContactPhotoPublisher] = a2;
  v20 = objc_allocWithZone(MEMORY[0x1E696C4F0]);
  v73 = v16;
  sub_1BA3147F8(v83, &v82, &qword_1EDC6E410, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720], sub_1BA3132F0);
  v77 = v17;

  v21 = a5;

  v22 = [v20 initWithHealthStore_];
  *&v7[OBJC_IVAR____TtC18HealthExperienceUI60SummarySharingOnboardingKitSharingConfirmationViewController_sharingEntryStore] = v22;
  *&v7[OBJC_IVAR____TtC18HealthExperienceUI60SummarySharingOnboardingKitSharingConfirmationViewController_healthStore] = a5;
  v78 = a6;
  *&v7[OBJC_IVAR____TtC18HealthExperienceUI60SummarySharingOnboardingKitSharingConfirmationViewController_selectionFlowContext] = a6;
  swift_beginAccess();
  v79 = a3;
  v23 = *(a3 + 24);
  v24 = v23[2];
  if (v24)
  {
    v71 = v14;
    v72 = a1;
    v25 = sub_1BA0219CC(v24, 0);
    v26 = *(type metadata accessor for SummarySharingSelectableDataTypeItem(0) - 8);
    v27 = (*(v26 + 80) + 32) & ~*(v26 + 80);
    v70 = v25;
    sub_1BA023688(&v82, v25 + v27, v24, v23);
    v29 = v28;
    v30 = v21;

    result = sub_1B9F52E48();
    if (v29 != v24)
    {
      __break(1u);
      return result;
    }

    v14 = v71;
    v32 = v70;
  }

  else
  {
    v33 = v21;

    v32 = MEMORY[0x1E69E7CC0];
  }

  sub_1B9F0A534(v80, &v82);
  v34 = objc_allocWithZone(type metadata accessor for SummarySharingOnboardingSharingConfirmationViewController());
  v35 = v21;
  v36 = sub_1BA3135F8(v32, &v82, v35);

  v37 = OBJC_IVAR____TtC18HealthExperienceUI60SummarySharingOnboardingKitSharingConfirmationViewController_confirmationVC;
  *&v7[OBJC_IVAR____TtC18HealthExperienceUI60SummarySharingOnboardingKitSharingConfirmationViewController_confirmationVC] = v36;
  *&v7[OBJC_IVAR____TtC18HealthExperienceUI60SummarySharingOnboardingKitSharingConfirmationViewController_selectedDataTypesContext] = v79;
  *&v7[OBJC_IVAR____TtC18HealthExperienceUI60SummarySharingOnboardingKitSharingConfirmationViewController_selectedContactICloudIdentifier] = v83[0];
  sub_1BA3147F8(v83, &v82, &qword_1EDC6E410, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720], sub_1BA3132F0);

  v38 = v74;
  sub_1BA4A7A18();
  LocalizedGeminiString(_:defaultValue:comment:options:)("SHARING_INVITATION_CONFIRMATION_SUBTITLE_%1$@_%2$@", 50, 2, 0, 0xE000000000000000, "", 0, 2, v38);
  (*(v14 + 8))(v38, v75);
  v39 = qword_1EBBE87E8;
  v40 = *&v7[v37];
  if (v39 != -1)
  {
    swift_once();
  }

  sub_1B9F1B4AC(0, &qword_1EDC6B410, &qword_1EDC6B3D0);
  v41 = swift_allocObject();
  *(v41 + 16) = xmmword_1BA4B5460;
  v42 = sub_1BA1FAFCC();
  v44 = v43;
  v45 = MEMORY[0x1E69E6158];
  *(v41 + 56) = MEMORY[0x1E69E6158];
  v46 = sub_1B9F1BE20();
  *(v41 + 32) = v42;
  *(v41 + 40) = v44;
  *(v41 + 96) = v45;
  *(v41 + 104) = v46;
  v47 = v76;
  if (!v77)
  {
    v47 = 0;
  }

  v48 = 0xE000000000000000;
  if (v77)
  {
    v48 = v77;
  }

  *(v41 + 64) = v46;
  *(v41 + 72) = v47;
  *(v41 + 80) = v48;

  sub_1BA4A6768();

  *&v7[OBJC_IVAR____TtC18HealthExperienceUI34OnboardingCollectionViewController_contentViewHeightConstraint] = 0;
  v49 = &v7[OBJC_IVAR____TtC18HealthExperienceUI34OnboardingCollectionViewController_lastWidthUseForCollectionViewLayout];
  *v49 = 0;
  v49[8] = 1;
  v50 = &v7[OBJC_IVAR____TtC18HealthExperienceUI34OnboardingCollectionViewController_lastAvailableContentViewHeight];
  *v50 = 0;
  v50[8] = 1;
  *&v7[OBJC_IVAR____TtC18HealthExperienceUI34OnboardingCollectionViewController_contentSizeObserver] = 0;
  *&v7[OBJC_IVAR____TtC18HealthExperienceUI34OnboardingCollectionViewController_collectionViewController_] = v40;
  v51 = v40;
  v52 = sub_1BA4A6758();
  v53 = sub_1BA4A6758();

  v54 = type metadata accessor for OnboardingCollectionViewController();
  v81.receiver = v7;
  v81.super_class = v54;
  v55 = objc_msgSendSuper2(&v81, sel_initWithTitle_detailText_icon_contentLayout_, v52, v53, 0, 3);

  v56 = qword_1EBBE87F0;
  v57 = v55;
  if (v56 != -1)
  {
    swift_once();
  }

  v58 = sub_1BA4A6758();
  v59 = sub_1BA4A6758();

  sub_1BA200CB8();
  v82 = *(v79 + 48);
  v60 = MEMORY[0x1E695BF70];
  sub_1BA10E0E4(0, &qword_1EBBEB1A0, MEMORY[0x1E695BF70]);
  sub_1BA10E150(&qword_1EBBEB1A8, &qword_1EBBEB1A0, v60);
  v82 = sub_1BA4A4F98();
  v61 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v62 = swift_allocObject();
  *(v62 + 16) = sub_1BA3147F0;
  *(v62 + 24) = v61;
  v63 = MEMORY[0x1E695BED0];
  sub_1BA10E0E4(0, &qword_1EBBEB1B0, MEMORY[0x1E695BED0]);
  sub_1BA10E150(&qword_1EBBEB1B8, &qword_1EBBEB1B0, v63);
  sub_1BA4A5148();

  swift_beginAccess();
  sub_1BA312914(0, &qword_1EDC5E6C0, MEMORY[0x1E695BF10], MEMORY[0x1E69E62F8]);
  sub_1BA091D04();
  sub_1BA4A4D38();
  swift_endAccess();

  v64 = OBJC_IVAR____TtC18HealthExperienceUI60SummarySharingOnboardingKitSharingConfirmationViewController_confirmationVC;
  *(*(*&v57[OBJC_IVAR____TtC18HealthExperienceUI60SummarySharingOnboardingKitSharingConfirmationViewController_confirmationVC] + OBJC_IVAR____TtC18HealthExperienceUI57SummarySharingOnboardingSharingConfirmationViewController_topicsDataSource) + OBJC_IVAR____TtC18HealthExperienceUI41SummarySharingSelectedDataTypesDataSource_selectedDataTypesDelegate + 8) = &off_1F3816500;
  swift_unknownObjectWeakAssign();
  v65 = v57;

  sub_1BA146CA4();

  *(*(*&v57[v64] + OBJC_IVAR____TtC18HealthExperienceUI57SummarySharingOnboardingSharingConfirmationViewController_alertsDataSource) + OBJC_IVAR____TtC18HealthExperienceUI41SummarySharingSelectedDataTypesDataSource_selectedDataTypesDelegate + 8) = &off_1F3816500;
  swift_unknownObjectWeakAssign();
  v66 = v65;

  sub_1BA146CA4();

  *(*(*(*&v57[v64] + OBJC_IVAR____TtC18HealthExperienceUI57SummarySharingOnboardingSharingConfirmationViewController_previewDataSource) + OBJC_IVAR____TtC18HealthExperienceUI37SummarySharingPreviewButtonDataSource_previewItem) + 152) = &off_1F38164F0;
  swift_unknownObjectWeakAssign();
  v67 = [v66 navigationItem];

  v68 = sub_1BA35FD3C();
  [v67 setTitleView_];

  __swift_destroy_boxed_opaque_existential_1(v80);
  return v66;
}

uint64_t sub_1BA3147F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = a6(0, a3, a4, a5);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

uint64_t PlatformFeedItemActionContext.init(view:viewController:feedItemContext:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, void *a4@<X8>)
{
  *a4 = a1;
  a4[1] = a2;
  return sub_1B9F1134C(a3, (a4 + 2));
}

uint64_t static PluginFeedItem.platformFeedItem<A, B>(viewType:actionHandlerType:actionHandlerUserData:uniqueIdentifier:userDataObject:contentKind:sourceProfile:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9)
{
  v26 = a7;
  v27 = a8;
  v28 = a6;
  v29 = a5;
  v30 = a3;
  v31 = a4;
  v32 = a2;
  v9 = sub_1BA4A1C68();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v14 = NSStringFromClass(ObjCClassFromMetadata);
  v15 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  v25[1] = v16;
  v25[2] = v15;

  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  v18 = sub_1BA314FE4(v26, AssociatedTypeWitness);
  v20 = v19;
  (*(v10 + 16))(v12, v27, v9);

  sub_1B9F6AD84(v18, v20);
  v21 = a9;
  sub_1BA4A1E28();
  sub_1BA4A1DA8();
  sub_1B9F6AD84(v30, v31);
  sub_1BA4A1E78();
  v22 = swift_getObjCClassFromMetadata();
  v23 = NSStringFromClass(v22);
  _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();

  sub_1BA4A1EB8();
  return sub_1B9F6AC8C(v18, v20);
}

uint64_t PlatformFeedItemActionContext.feedItemContext.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 16);

  return sub_1B9F1134C(a1, v1 + 16);
}

uint64_t PlatformFeedItemActionContext.actionHandlerUserDataObject<A>(_:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v5 = sub_1BA4A3EA8();
  MEMORY[0x1EEE9AC00](v5);
  v6 = v2[5];
  v7 = v2[6];
  __swift_project_boxed_opaque_existential_1(v2 + 2, v6);
  v8 = (*(v7 + 16))(v6, v7);
  if (v9 >> 60 == 15)
  {
    v10 = *(*(a1 - 8) + 56);
    v11 = a2;
    v12 = 1;
  }

  else
  {
    v13 = v8;
    v14 = v9;
    sub_1BA4A0EB8();
    swift_allocObject();
    sub_1BA4A0EA8();
    sub_1BA4A0E98();
    sub_1B9F6AC8C(v13, v14);

    v10 = *(*(a1 - 8) + 56);
    v11 = a2;
    v12 = 0;
  }

  return v10(v11, v12, 1, a1);
}

uint64_t sub_1BA314FE4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BA4A7AA8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v15 - v6;
  v8 = *(a2 - 8);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7, a1, v4, v10);
  if ((*(v8 + 48))(v7, 1, a2) == 1)
  {
    (*(v5 + 8))(v7, v4);
    return 0;
  }

  else
  {
    (*(v8 + 32))(v12, v7, a2);
    sub_1BA4A0EE8();
    swift_allocObject();
    sub_1BA4A0ED8();
    v14 = sub_1BA4A0EC8();
    (*(v8 + 8))(v12, a2);

    return v14;
  }
}

uint64_t sub_1BA3152D4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_1BA31531C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void *sub_1BA3153B0(uint64_t a1, void *a2)
{
  if (qword_1EDC6CBB0 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for ListLayoutConfiguration();
  __swift_project_value_buffer(v3, qword_1EDC6CBB8);
  return ListLayoutConfiguration.layout(for:)(a2);
}

uint64_t sub_1BA315420@<X0>(void *a1@<X8>)
{
  v2 = sub_1BA4A4428();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  v5 = sub_1BA4A1318();
  v7 = v6;
  _s18HealthExperienceUI29CollectionViewHeaderProvidingPAAE24makeDefaultConfiguration5UIKit013UIListContentJ0VyFZ_0();
  v8 = type metadata accessor for HeaderItem();
  swift_allocObject();
  HeaderItem.init(title:buttonText:buttonWasTapped:configuration:automationIdentifier:)(v5, v7, 0, 0, 0, 0, v4, 0, 0);
  v10 = v9;
  a1[3] = v8;
  result = sub_1B9F0AF60(&qword_1EDC69800, type metadata accessor for HeaderItem);
  a1[4] = result;
  *a1 = v10;
  return result;
}

uint64_t sub_1BA3155E0()
{
  v1 = v0;
  v2 = *v0;
  v3 = sub_1BA4A3EA8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA4A3E48();

  v7 = sub_1BA4A3E88();
  v8 = sub_1BA4A6FC8();

  v9 = &OBJC_IVAR____TtC18HealthExperienceUI43EmergencyAccessBuddyMedicalIDViewController_healthStore;
  if (os_log_type_enabled(v7, v8))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v25 = v11;
    v26 = v2;
    *v10 = 136446467;
    swift_getMetatypeMetadata();
    v12 = sub_1BA4A6808();
    v14 = sub_1B9F0B82C(v12, v13, &v25);

    *(v10 + 4) = v14;
    *(v10 + 12) = 2081;
    v15 = (v1 + OBJC_IVAR____TtC18HealthExperienceUI28SharingParticipantDataSource_resultsCache);
    swift_beginAccess();
    v26 = *(*__swift_project_boxed_opaque_existential_1(v15, v15[3]) + 16);
    sub_1BA31738C();

    v16 = sub_1BA4A6808();
    v18 = sub_1B9F0B82C(v16, v17, &v25);

    *(v10 + 14) = v18;
    _os_log_impl(&dword_1B9F07000, v7, v8, "[%{public}s]: Cached participants: %{private}s", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1BFAF43A0](v11, -1, -1);
    v19 = v10;
    v9 = &OBJC_IVAR____TtC18HealthExperienceUI43EmergencyAccessBuddyMedicalIDViewController_healthStore;
    MEMORY[0x1BFAF43A0](v19, -1, -1);
  }

  (*(v4 + 8))(v6, v3);
  v20 = (v1 + v9[250]);
  swift_beginAccess();
  result = __swift_project_boxed_opaque_existential_1(v20, v20[3]);
  if (*(*result + 16))
  {

    v23 = sub_1BA3158C8(v22);

    if (v23)
    {
      sub_1BA0E7F10(v23, 1);
    }
  }

  return result;
}

uint64_t sub_1BA3158C8(uint64_t a1)
{
  v42 = sub_1BA4A1798();
  v3 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v41 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(a1 + 16);
  if (!v5)
  {
    return 0;
  }

  v36 = v1;
  v39 = 0x80000001BA4FD730;
  v38 = type metadata accessor for ProfileCollectionViewListCell();
  v6 = type metadata accessor for SharingParticipantDataSourceItem();
  v40 = (v3 + 8);
  v7 = (a1 + 40);
  v8 = MEMORY[0x1E69E7CC0];
  v37 = v6;
  do
  {
    v10 = *(v7 - 1);
    v9 = *v7;
    v11 = swift_allocObject();
    *&v43 = 0xD000000000000021;
    *(&v43 + 1) = v39;

    v12 = v41;
    sub_1BA4A1788();
    sub_1B9F0AF60(&qword_1EDC6AE60, MEMORY[0x1E69695A8]);
    v13 = v42;
    v14 = sub_1BA4A82D8();
    MEMORY[0x1BFAF1350](v14);

    v15 = *v40;
    (*v40)(v12, v13);
    v16 = *(&v43 + 1);
    *(v11 + 16) = v43;
    *(v11 + 24) = v16;
    *(v11 + 48) = 0u;
    *(v11 + 32) = 0u;
    *&v43 = v38;
    sub_1B9F2E5DC(0, &qword_1EBBE9DA0, type metadata accessor for ProfileCollectionViewListCell);
    *(v11 + 64) = sub_1BA4A6808();
    *(v11 + 72) = v17;
    swift_beginAccess();
    *(v11 + 32) = v10;
    *(v11 + 40) = v9;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_1BA27EFB4(0, v8[2] + 1, 1, v8);
    }

    v19 = v8[2];
    v18 = v8[3];
    v20 = v37;
    if (v19 >= v18 >> 1)
    {
      v8 = sub_1BA27EFB4((v18 > 1), v19 + 1, 1, v8);
    }

    v44 = v20;
    v45 = sub_1B9F0AF60(&qword_1EBBEFED8, type metadata accessor for SharingParticipantDataSourceItem);
    *&v43 = v11;
    v8[2] = v19 + 1;
    sub_1B9F25598(&v43, &v8[5 * v19 + 4]);
    v7 += 2;
    --v5;
  }

  while (v5);
  v21 = type metadata accessor for RevokeSharingDataSourceItem();
  swift_allocObject();
  v22 = sub_1BA2AB780(0);
  swift_beginAccess();
  v23 = *(v22 + 96);
  v24 = v36;
  *(v22 + 96) = sub_1BA3170B8;
  *(v22 + 104) = v24;

  sub_1B9F0E310(v23);

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v8 = sub_1BA27EFB4(0, v8[2] + 1, 1, v8);
  }

  v26 = v8[2];
  v25 = v8[3];
  if (v26 >= v25 >> 1)
  {
    v8 = sub_1BA27EFB4((v25 > 1), v26 + 1, 1, v8);
  }

  v44 = v21;
  v45 = sub_1B9F0AF60(&qword_1EBBEFEF0, type metadata accessor for RevokeSharingDataSourceItem);
  *&v43 = v22;
  v8[2] = v26 + 1;
  sub_1B9F25598(&v43, &v8[5 * v26 + 4]);
  sub_1BA0CF80C(0, &qword_1EDC5DC90, &type metadata for ArrayDataSourceSection, MEMORY[0x1E69E6F90]);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_1BA4B5480;
  v28 = sub_1B9FE4F98(v8);

  v29 = v41;
  sub_1BA4A1788();
  v30 = sub_1BA4A1748();
  v32 = v31;
  v15(v29, v42);
  sub_1B9F1C5F0(MEMORY[0x1E69E7CC0]);
  *(v27 + 32) = 0;
  *(v27 + 40) = 0;
  *(v27 + 48) = v28;

  v34 = Array<A>.identifierToIndexDict()(v33);

  *(v27 + 56) = v34;
  *(v27 + 64) = v30;
  *(v27 + 72) = v32;

  return v27;
}

void sub_1BA315DDC(void *a1, uint64_t a2)
{
  v3 = *(a2 + OBJC_IVAR____TtC18HealthExperienceUI28SharingParticipantDataSource_cloudShareSyncManager);
  v4 = swift_allocObject();
  swift_weakInit();
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = a1;
  v8[4] = sub_1BA3170C0;
  v8[5] = v5;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 1107296256;
  v8[2] = sub_1BA454240;
  v8[3] = &block_descriptor_42_0;
  v6 = _Block_copy(v8);
  v7 = a1;

  [v3 revokeAccessForAllShareParticipantsForSharingType:1 completion:v6];
  _Block_release(v6);
}

uint64_t sub_1BA315EEC(uint64_t a1, void *a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    *(Strong + OBJC_IVAR____TtC18HealthExperienceUI28SharingParticipantDataSource_sharingParticipants) = a1;
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1BA315FB4(a1, a2);
  }

  return result;
}

uint64_t sub_1BA315FB4(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = sub_1BA4A6478();
  v46 = *(v6 - 8);
  v47 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1BA4A64C8();
  v44 = *(v9 - 8);
  v45 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1BA4A1798();
  v42 = *(v12 - 8);
  v43 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v41 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = v2 + OBJC_IVAR____TtC18HealthExperienceUI28SharingParticipantDataSource_resultsCache;
  swift_beginAccess();
  v15 = *(v14 + 24);
  v16 = *(v14 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v14, v15);
  v17 = *(v16 + 16);

  v17(v18, v15, v16);
  swift_endAccess();
  if (a1 && (v19 = sub_1BA3158C8(a1)) != 0)
  {
    v20 = v19;
  }

  else if (*(v3 + OBJC_IVAR____TtC18HealthExperienceUI28SharingParticipantDataSource_lastKnownSharingState) != 1 || a2 == 0)
  {
    v20 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    if (sub_1BA316FCC(a2))
    {
      if (qword_1EDC5E100 != -1)
      {
        swift_once();
      }

      v40 = sub_1BA4A1318();
      v23 = v22;
    }

    else
    {
      [objc_opt_self() wapiCapability];
      if (qword_1EDC5E100 != -1)
      {
        swift_once();
      }

      sub_1BA4A1318();
      v40 = sub_1BA4A6768();
      v23 = v24;
    }

    sub_1BA0CF80C(0, &qword_1EDC5DC90, &type metadata for ArrayDataSourceSection, MEMORY[0x1E69E6F90]);
    v20 = swift_allocObject();
    v39 = xmmword_1BA4B5480;
    *(v20 + 16) = xmmword_1BA4B5480;
    sub_1B9F28360();
    v25 = swift_allocObject();
    *(v25 + 16) = v39;
    *(v25 + 56) = &type metadata for EmptyStateCollectionViewCellItem;
    *(v25 + 64) = sub_1BA02090C();
    v26 = swift_allocObject();
    *(v25 + 32) = v26;
    aBlock[0] = type metadata accessor for EmptyStateCollectionViewCell();
    sub_1B9F2E5DC(0, &qword_1EDC6C3D0, type metadata accessor for EmptyStateCollectionViewCell);
    *(v26 + 16) = sub_1BA4A6808();
    *(v26 + 24) = v27;
    v28 = v41;
    *(v26 + 32) = v40;
    *(v26 + 40) = v23;
    *(v26 + 48) = 0;
    sub_1BA4A1788();
    v29 = sub_1BA4A1748();
    v31 = v30;
    (*(v42 + 8))(v28, v43);
    sub_1B9F1C5F0(MEMORY[0x1E69E7CC0]);

    v33 = Array<A>.identifierToIndexDict()(v32);

    *(v20 + 32) = 0;
    *(v20 + 40) = 0;
    *(v20 + 48) = v25;
    *(v20 + 56) = v33;
    *(v20 + 64) = v29;
    *(v20 + 72) = v31;
  }

  sub_1B9F38BF4();
  v34 = sub_1BA4A7308();
  v35 = swift_allocObject();
  *(v35 + 16) = v3;
  *(v35 + 24) = v20;
  aBlock[4] = sub_1BA316FC4;
  aBlock[5] = v35;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B9F0B040;
  aBlock[3] = &block_descriptor_86;
  v36 = _Block_copy(aBlock);

  sub_1BA4A64A8();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1B9F0AF60(&qword_1EDC5E8E0, MEMORY[0x1E69E7F60]);
  sub_1B9F3F378();
  sub_1B9F0AF60(&qword_1EDC5E6A0, sub_1B9F3F378);
  v37 = v47;
  sub_1BA4A7C38();
  MEMORY[0x1BFAF1D50](0, v11, v8, v36);
  _Block_release(v36);

  (*(v46 + 8))(v8, v37);
  return (*(v44 + 8))(v11, v45);
}

uint64_t sub_1BA316698(uint64_t a1, uint64_t a2)
{
  result = sub_1BA0E7F10(a2, 1);
  v4 = *(a1 + OBJC_IVAR____TtC18HealthExperienceUI28SharingParticipantDataSource_updateHandler);
  if (v4)
  {

    v4(v5);

    return sub_1B9F0E310(v4);
  }

  return result;
}

uint64_t sub_1BA316710(char a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = sub_1BA4A6478();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1BA4A64C8();
  v38 = *(v10 - 8);
  v39 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1BA4A1798();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v18 = result;
    v37 = v7;
    if (a1)
    {
      sub_1BA0CF80C(0, &qword_1EDC5DC90, &type metadata for ArrayDataSourceSection, MEMORY[0x1E69E6F90]);
      v19 = swift_allocObject();
      v35 = xmmword_1BA4B5480;
      *(v19 + 16) = xmmword_1BA4B5480;
      sub_1B9F28360();
      v20 = swift_allocObject();
      v36 = v6;
      v21 = v20;
      *(v20 + 16) = v35;
      v22 = type metadata accessor for RevokeSharingDataSourceItem();
      swift_allocObject();
      v23 = sub_1BA2AB780(1);
      v21[7] = v22;
      v21[8] = sub_1B9F0AF60(&qword_1EBBEFEE0, type metadata accessor for RevokeSharingDataSourceItem);
      v21[4] = v23;
      sub_1BA4A1788();
      v24 = sub_1BA4A1748();
      v26 = v25;
      (*(v14 + 8))(v16, v13);
      v27 = MEMORY[0x1E69E7CC0];
      sub_1B9F1C5F0(MEMORY[0x1E69E7CC0]);

      v29 = Array<A>.identifierToIndexDict()(v28);

      *(v19 + 32) = 0;
      *(v19 + 40) = 0;
      *(v19 + 48) = v21;
      *(v19 + 56) = v29;
      v6 = v36;
      *(v19 + 64) = v24;
      *(v19 + 72) = v26;
      sub_1B9F38BF4();
      v30 = sub_1BA4A7308();
      v31 = swift_allocObject();
      *(v31 + 16) = v18;
      *(v31 + 24) = v19;
      v44 = sub_1BA3170D0;
      v45 = v31;
      aBlock = MEMORY[0x1E69E9820];
      v41 = 1107296256;
      v42 = sub_1B9F0B040;
      v43 = &block_descriptor_54;
      v32 = _Block_copy(&aBlock);

      sub_1BA4A64A8();
      aBlock = v27;
    }

    else
    {
      sub_1B9F38BF4();
      v30 = sub_1BA4A7308();
      v33 = swift_allocObject();
      *(v33 + 16) = v18;
      *(v33 + 24) = a4;
      v44 = sub_1BA3170C8;
      v45 = v33;
      aBlock = MEMORY[0x1E69E9820];
      v41 = 1107296256;
      v42 = sub_1B9F0B040;
      v43 = &block_descriptor_48;
      v32 = _Block_copy(&aBlock);

      v34 = a4;

      sub_1BA4A64A8();
      aBlock = MEMORY[0x1E69E7CC0];
    }

    sub_1B9F0AF60(&qword_1EDC5E8E0, MEMORY[0x1E69E7F60]);
    sub_1B9F3F378();
    sub_1B9F0AF60(&qword_1EDC5E6A0, sub_1B9F3F378);
    sub_1BA4A7C38();
    MEMORY[0x1BFAF1D50](0, v12, v9, v32);
    _Block_release(v32);

    (*(v37 + 8))(v9, v6);
    return (*(v38 + 8))(v12, v39);
  }

  return result;
}

uint64_t sub_1BA316D04()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC18HealthExperienceUI28SharingParticipantDataSource_resultsCache);
  v1 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI28SharingParticipantDataSource_updateHandler);

  return sub_1B9F0E310(v1);
}

uint64_t sub_1BA316D78()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_snapshot;
  sub_1B9F12538();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC18HealthExperienceUI28SharingParticipantDataSource_resultsCache);
  sub_1B9F0E310(*(v0 + OBJC_IVAR____TtC18HealthExperienceUI28SharingParticipantDataSource_updateHandler));
  return v0;
}

uint64_t sub_1BA316E8C()
{
  sub_1BA316D78();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SharingParticipantDataSource()
{
  result = qword_1EBBF07D8;
  if (!qword_1EBBF07D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

BOOL sub_1BA316FCC(void *a1)
{
  if (!a1)
  {
    return 1;
  }

  v1 = a1;
  sub_1B9F0D950(0, &qword_1EDC6E310);
  type metadata accessor for HKError(0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 1;
  }

  sub_1B9F0AF60(&qword_1EBBE9090, type metadata accessor for HKError);
  v2 = sub_1BA4A1468();

  return v2 != 704;
}

void sub_1BA3170FC(void *a1)
{
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  sub_1BA4A1318();
  sub_1BA4A1318();
  sub_1BA4A1318();
  v2 = sub_1BA4A6758();

  v3 = [objc_opt_self() actionWithTitle:v2 style:0 handler:{0, 0x80000001BA4FD8F0}];

  v4 = sub_1BA4A6758();

  v5 = sub_1BA4A6758();

  v6 = [objc_opt_self() alertControllerWithTitle:v4 message:v5 preferredStyle:1];

  [v6 addAction_];
  [a1 presentViewController:v6 animated:1 completion:0];
}

void sub_1BA31738C()
{
  if (!qword_1EBBF07E8)
  {
    sub_1BA0CF80C(255, &qword_1EDC6B670, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    v0 = sub_1BA4A7AA8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBBF07E8);
    }
  }
}

uint64_t PDFHorizontalSeparator.init(lineWidth:topMargin:bottomMargin:color:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>)
{
  *a2 = a3;
  *(a2 + 8) = a4;
  *(a2 + 16) = a5;
  *(a2 + 24) = result;
  return result;
}

double PDFHorizontalSeparator.render(context:document:)(void *a1, uint64_t a2)
{
  v4 = *(v2 + 8);
  v27 = *v2;
  v28 = *(v2 + 16);
  v5 = *(v2 + 24);
  v6 = [a1 CGContext];
  CGContextSaveGState(v6);
  v29.origin.x = PDFBuilder.Document.drawingContext.getter();
  x = v29.origin.x;
  y = v29.origin.y;
  width = v29.size.width;
  height = v29.size.height;
  v11 = CGRectGetMinX(v29) + 0.0;
  v30.origin.x = x;
  v30.origin.y = y;
  v30.size.width = width;
  v30.size.height = height;
  v12 = v4 + CGRectGetMinY(v30);
  v31.origin.x = x;
  v31.origin.y = y;
  v31.size.width = width;
  v31.size.height = height;
  v13 = CGRectGetWidth(v31);
  v32.origin.x = x;
  v32.origin.y = y;
  v32.size.width = width;
  v32.size.height = height;
  v14 = CGRectGetHeight(v32);
  *(a2 + 168) = v11;
  *(a2 + 176) = v12;
  *(a2 + 184) = v13;
  *(a2 + 192) = v14 - v4;
  *(a2 + 200) = 0;
  CGContextSetLineWidth(v6, v27);
  sub_1BA069EC4();
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1BA4B5460;
  v33 = *(a2 + 168);
  *(v15 + 32) = v33.origin.x;
  *(v15 + 40) = v33.origin.y;
  MaxX = CGRectGetMaxX(v33);
  v17 = *(a2 + 176);
  *(v15 + 48) = MaxX;
  *(v15 + 56) = v17;
  sub_1BA4A6F08();

  CGContextSetStrokeColorWithColor(v6, v5);
  CGContextStrokePath(v6);
  CGContextRestoreGState(v6);
  v18 = *(a2 + 168);
  v19 = *(a2 + 176);
  v20 = *(a2 + 184);
  v21 = *(a2 + 192);
  v34.origin.x = v18;
  v34.origin.y = v19;
  v34.size.width = v20;
  v34.size.height = v21;
  v22 = CGRectGetMinX(v34) + 0.0;
  v35.origin.x = v18;
  v35.origin.y = v19;
  v35.size.width = v20;
  v35.size.height = v21;
  v23 = v27 + v28 + CGRectGetMinY(v35);
  v36.origin.x = v18;
  v36.origin.y = v19;
  v36.size.width = v20;
  v36.size.height = v21;
  v24 = CGRectGetWidth(v36);
  v37.origin.x = v18;
  v37.origin.y = v19;
  v37.size.width = v20;
  v37.size.height = v21;
  v25 = CGRectGetHeight(v37);

  result = v25 - (v27 + v28);
  *(a2 + 168) = v22;
  *(a2 + 176) = v23;
  *(a2 + 184) = v24;
  *(a2 + 192) = result;
  *(a2 + 200) = 0;
  return result;
}

uint64_t sub_1BA3176B8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1BA317700(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t UIViewController.containsViewController<A>(ofType:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = [v2 presentedViewController];
  if (v6)
  {
    v7 = v6;
    v8 = sub_1BA317998(a1, a2);

    if (v8)
    {
      return 1;
    }
  }

  objc_opt_self();
  v10 = swift_dynamicCastObjCClass();
  if (v10)
  {
    v11 = v10;
    v12 = v3;
    v13 = [v11 viewControllers];
    if (v13)
    {
      v14 = v13;
      sub_1B9F21ADC();
      v15 = sub_1BA4A6B08();

      v12 = v14;
    }

    else
    {
      v15 = MEMORY[0x1E69E7CC0];
    }
  }

  else
  {
    objc_opt_self();
    v16 = swift_dynamicCastObjCClass();
    if (v16)
    {
      v17 = v16;
      v18 = v3;
      v12 = [v17 viewControllers];
      sub_1B9F21ADC();
      v15 = sub_1BA4A6B08();
    }

    else
    {
      v12 = [v3 childViewControllers];
      sub_1B9F21ADC();
      v15 = sub_1BA4A6B08();
    }
  }

  if (v15 >> 62)
  {
LABEL_26:
    v19 = sub_1BA4A7CC8();
  }

  else
  {
    v19 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v20 = 0;
  do
  {
    v9 = v19 != v20;
    if (v19 == v20)
    {
      break;
    }

    if ((v15 & 0xC000000000000001) != 0)
    {
      v21 = MEMORY[0x1BFAF2860](v20, v15);
    }

    else
    {
      if (v20 >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_25;
      }

      v21 = *(v15 + 8 * v20 + 32);
    }

    v22 = v21;
    if (__OFADD__(v20, 1))
    {
      __break(1u);
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

    v23 = sub_1BA317998(a1, a2);

    ++v20;
  }

  while ((v23 & 1) == 0);

  return v9;
}

uint64_t sub_1BA317998(uint64_t a1, uint64_t a2)
{
  v5 = sub_1BA4A7AA8();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v14 - v7;
  v15 = v2;
  sub_1B9F21ADC();
  v2;
  v9 = swift_dynamicCast();
  v10 = *(*(a2 - 8) + 56);
  v11 = (v6 + 8);
  if (v9)
  {
    v12 = 1;
    v10(v8, 0, 1, a2);
    (*v11)(v8, v5);
  }

  else
  {
    v10(v8, 1, 1, a2);
    (*v11)(v8, v5);
    v12 = UIViewController.containsViewController<A>(ofType:)(a1, a2);
  }

  return v12 & 1;
}

UIImage *sub_1BA317B2C(void *a1, void *a2, double a3, double a4, CGFloat a5)
{
  if (!a2)
  {
    return 0;
  }

  v9 = a3 + a4;
  v10 = a3 + a4 + a5;
  v11 = a2;
  [v11 scale];
  v13 = v12;
  v16.width = v10;
  v16.height = a5;
  UIGraphicsBeginImageContextWithOptions(v16, 0, v13);
  if (HKUILocaleIsRightToLeft())
  {
    [a1 drawInRect_];
    [v11 drawInRect:0 blendMode:a4 + a5 alpha:{0.0, a3, a5, 1.0}];
  }

  else
  {
    [v11 drawInRect_];
    [a1 drawInRect:0 blendMode:v9 alpha:{0.0, a5, a5, 1.0}];
  }

  v14 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v14;
}

uint64_t sub_1BA317C48()
{
  v1 = *(v0 + 32);
  MEMORY[0x1BFAF1350](1835365449, 0xE400000000000000);
  MEMORY[0x1BFAF1350](95, 0xE100000000000000);
  [v1 displayTypeIdentifier];
  type metadata accessor for HKDisplayTypeIdentifier(0);
  sub_1BA4A7FB8();
  return 0;
}

uint64_t sub_1BA317CDC(uint64_t a1)
{
  v2 = sub_1BA1B71E8();

  return MEMORY[0x1EEE0DA58](a1, v2);
}

void sub_1BA317D70(void *a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
}

void (*sub_1BA317DCC(uint64_t *a1))(id **a1, char a2)
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
  v5 = OBJC_IVAR____TtC18HealthExperienceUI22DataTypeDetailUnitCell_parentViewController;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_1BA095C04;
}

uint64_t sub_1BA317E64(uint64_t a1, void **a2)
{
  sub_1BA0CBC80(a1, v7, &qword_1EDC6E1A0, sub_1B9FCD918);
  v3 = *a2;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI22DataTypeDetailUnitCell_item;
  swift_beginAccess();
  sub_1B9F63E74(v7, v3 + v4);
  v5 = swift_endAccess();
  (*((*MEMORY[0x1E69E7D40] & *v3) + 0xA8))(v5);
  return sub_1B9F443A8(v7, &qword_1EDC6E1A0, sub_1B9FCD918, MEMORY[0x1E69E6720], sub_1B9F0D08C);
}

uint64_t sub_1BA317F60@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI22DataTypeDetailUnitCell_item;
  swift_beginAccess();
  return sub_1BA0CBC80(v1 + v3, a1, &qword_1EDC6E1A0, sub_1B9FCD918);
}

uint64_t sub_1BA317FD4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI22DataTypeDetailUnitCell_item;
  swift_beginAccess();
  sub_1B9F63E74(a1, v1 + v3);
  v4 = swift_endAccess();
  (*((*MEMORY[0x1E69E7D40] & *v1) + 0xA8))(v4);
  return sub_1B9F443A8(a1, &qword_1EDC6E1A0, sub_1B9FCD918, MEMORY[0x1E69E6720], sub_1B9F0D08C);
}

uint64_t (*sub_1BA3180B4(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1BA318118;
}

uint64_t sub_1BA318118(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return (*((*MEMORY[0x1E69E7D40] & **(a1 + 24)) + 0xA8))(result);
  }

  return result;
}

BOOL sub_1BA31817C()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI22DataTypeDetailUnitCell_item;
  swift_beginAccess();
  sub_1BA0CBC80(v0 + v1, v7, &qword_1EDC6E1A0, sub_1B9FCD918);
  if (!v8)
  {
    sub_1B9F443A8(v7, &qword_1EDC6E1A0, sub_1B9FCD918, MEMORY[0x1E69E6720], sub_1B9F0D08C);
    return 0;
  }

  sub_1B9FCD918();
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  v2 = HKUnitPreferenceControllerAvailableUnitsForDisplayType();
  sub_1BA1B75A0();
  sub_1BA319C2C(&qword_1EDC6B4C8, sub_1BA1B75A0);
  v3 = sub_1BA4A6D78();

  if ((v3 & 0xC000000000000001) != 0)
  {
    v4 = sub_1BA4A7CC8();
  }

  else
  {

    v4 = *(v3 + 16);
  }

  return v4 > 1;
}

id DataTypeDetailUnitCell.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id DataTypeDetailUnitCell.init(frame:)(double a1, double a2, double a3, double a4)
{
  swift_unknownObjectWeakInit();
  v9 = &v4[OBJC_IVAR____TtC18HealthExperienceUI22DataTypeDetailUnitCell_item];
  v10 = type metadata accessor for DataTypeDetailUnitCell();
  *v9 = 0u;
  *(v9 + 1) = 0u;
  *(v9 + 4) = 0;
  v16.receiver = v4;
  v16.super_class = v10;
  v11 = objc_msgSendSuper2(&v16, sel_initWithFrame_, a1, a2, a3, a4);
  v12 = objc_opt_self();
  v13 = v11;
  v14 = [v12 defaultCenter];
  [v14 addObserver:v13 selector:sel_configureCell name:*MEMORY[0x1E696BE70] object:0];

  return v13;
}

id DataTypeDetailUnitCell.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void DataTypeDetailUnitCell.init(coder:)()
{
  swift_unknownObjectWeakInit();
  v1 = v0 + OBJC_IVAR____TtC18HealthExperienceUI22DataTypeDetailUnitCell_item;
  *v1 = 0u;
  *(v1 + 16) = 0u;
  *(v1 + 32) = 0;
  sub_1BA4A8018();
  __break(1u);
}

uint64_t sub_1BA318658()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v2 = sub_1BA4A3EA8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v69 = &v55 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x1E69E6720];
  sub_1B9F0D08C(0, &qword_1EDC6B780, MEMORY[0x1E69DBF38], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v66 = &v55 - v7;
  v8 = sub_1BA4A3FB8();
  v67 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1BA4A3F18();
  v64 = *(v11 - 8);
  v65 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F0D08C(0, &qword_1EDC6B770, MEMORY[0x1E69DC0D8], v5);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v55 - v15;
  v17 = sub_1BA4A4428();
  v70 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v55 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = OBJC_IVAR____TtC18HealthExperienceUI22DataTypeDetailUnitCell_item;
  swift_beginAccess();
  sub_1BA0CBC80(v1 + v20, v72, &qword_1EDC6E1A0, sub_1B9FCD918);
  if (!v73)
  {
    return sub_1B9F443A8(v72, &qword_1EDC6E1A0, sub_1B9FCD918, MEMORY[0x1E69E6720], sub_1B9F0D08C);
  }

  sub_1B9FCD918();
  result = swift_dynamicCast();
  if (result)
  {
    v59 = v10;
    v57 = v8;
    v60 = v3;
    v61 = v2;
    v22 = v71[2];
    v58 = v71[1];
    v23 = v71[3];
    v62 = v71[4];
    sub_1BA4A4418();
    if (v23)
    {
      sub_1B9F216C8(0, &qword_1EDC6E330, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
      v24 = swift_allocObject();
      *(v24 + 16) = xmmword_1BA4B5480;
      *(v24 + 32) = v22;
      *(v24 + 40) = v23;

      v25 = sub_1BA4A6AE8();

      v26 = HKUIJoinStringsForAutomationIdentifier();

      [v1 setAccessibilityIdentifier_];
    }

    else
    {
      v27 = [v1 setAccessibilityIdentifier_];
    }

    v28 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x60))(v27);
    v63 = v17;
    if (v28)
    {
      v29 = v28;
      v30 = [v28 resolvedHealthToolbox];
    }

    else
    {
      v30 = 0;
    }

    v31 = v59;
    if (qword_1EDC5E100 != -1)
    {
      swift_once();
    }

    v59 = v23;
    sub_1BA4A1318();
    sub_1BA4A43B8();
    v56 = v30;
    if (v30)
    {
      v32 = [v30 localizedUnitDisplayNameForDisplayType:v62 nameContext:2];
      _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    }

    v33 = v57;
    sub_1BA4A41A8();
    v34 = v63;
    v73 = v63;
    v74 = MEMORY[0x1E69DC110];
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v72);
    (*(v70 + 16))(boxed_opaque_existential_1, v19, v34);
    MEMORY[0x1BFAF1EF0](v72);
    sub_1BA4A4158();
    v36 = [objc_opt_self() tertiarySystemBackgroundColor];
    sub_1BA4A4118();
    v37 = sub_1BA4A4168();
    (*(*(v37 - 8) + 56))(v16, 0, 1, v37);
    MEMORY[0x1BFAF1F10](v16);
    if (sub_1BA31817C())
    {
      sub_1B9F0D08C(0, &qword_1EDC6B430, MEMORY[0x1E69DBF68], MEMORY[0x1E69E6F90]);
      sub_1BA4A3FE8();
      *(swift_allocObject() + 16) = xmmword_1BA4B5480;
      v39 = v64;
      v38 = v65;
      (*(v64 + 104))(v13, *MEMORY[0x1E69DBF28], v65);
      v40 = sub_1BA4A3F48();
      (*(*(v40 - 8) + 56))(v66, 1, 1, v40);
      sub_1BA4A3FA8();
      sub_1BA4A3F78();
      (*(v67 + 8))(v31, v33);
      (*(v39 + 8))(v13, v38);
    }

    sub_1BA4A75F8();
    v41 = v61;
    v42 = v69;
    v43 = v56;
    sub_1BA4A3DD8();
    v44 = sub_1BA4A3E88();
    v45 = sub_1BA4A6FC8();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v71[0] = v47;
      *v46 = 136315394;
      v48 = sub_1BA4A85D8();
      v50 = sub_1B9F0B82C(v48, v49, v71);

      *(v46 + 4) = v50;
      *(v46 + 12) = 2080;
      swift_beginAccess();
      sub_1BA319C2C(&qword_1EDC5F8A8, MEMORY[0x1E69DC118]);
      v51 = v63;
      v52 = sub_1BA4A82D8();
      v54 = sub_1B9F0B82C(v52, v53, v71);

      *(v46 + 14) = v54;
      _os_log_impl(&dword_1B9F07000, v44, v45, "[%s]: itemUpdated() to text %s", v46, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v47, -1, -1);
      MEMORY[0x1BFAF43A0](v46, -1, -1);

      (*(v60 + 8))(v69, v41);
      return (*(v70 + 8))(v19, v51);
    }

    else
    {

      (*(v60 + 8))(v42, v41);
      return (*(v70 + 8))(v19, v63);
    }
  }

  return result;
}

uint64_t sub_1BA31917C()
{
  v1 = v0;
  sub_1B9F0D08C(0, &qword_1EDC6B770, MEMORY[0x1E69DC0D8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v14[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v14[-v6];
  v8 = sub_1BA4A40A8();
  v9 = type metadata accessor for DataTypeDetailUnitCell();
  v15.receiver = v1;
  v15.super_class = v9;
  objc_msgSendSuper2(&v15, sel__bridgedUpdateConfigurationUsingState_, v8);

  MEMORY[0x1BFAF1F00]();
  v10 = sub_1BA4A4168();
  if ((*(*(v10 - 8) + 48))(v7, 1, v10))
  {
    v11 = MEMORY[0x1E69DC0D8];
    sub_1BA0CBC80(v7, v4, &qword_1EDC6B770, MEMORY[0x1E69DC0D8]);
    MEMORY[0x1BFAF1F10](v4);
    return sub_1B9F443A8(v7, &qword_1EDC6B770, v11, MEMORY[0x1E69E6720], sub_1B9F0D08C);
  }

  else
  {
    v13 = [v1 traitCollection];
    sub_1B9F3AEE8();
    sub_1BA4A7358();

    v14[14] = v14[15];
    Presentation.cellBackgroundColor(for:)();
    sub_1BA4A4118();
    return MEMORY[0x1BFAF1F10](v7);
  }
}

id DataTypeDetailUnitCell.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DataTypeDetailUnitCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void (*sub_1BA3195A8(uint64_t *a1))(void *a1)
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
  *(v3 + 32) = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x70))();
  return sub_1B9FCDD98;
}

uint64_t sub_1BA319698(void *a1)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI22DataTypeDetailUnitCell_item;
  swift_beginAccess();
  sub_1BA0CBC80(v1 + v3, &v16, &qword_1EDC6E1A0, sub_1B9FCD918);
  if (!*(&v17 + 1))
  {
    goto LABEL_10;
  }

  sub_1B9FCD918();
  result = swift_dynamicCast();
  if (result)
  {
    v5 = HKUnitPreferenceControllerAvailableUnitsForDisplayType();
    sub_1BA1B75A0();
    sub_1BA319C2C(&qword_1EDC6B4C8, sub_1BA1B75A0);
    v6 = sub_1BA4A6D78();

    if ((v6 & 0xC000000000000001) != 0)
    {
      v7 = sub_1BA4A7CC8();
    }

    else
    {

      v7 = *(v6 + 16);
    }

    if (v7 > 1)
    {
      sub_1BA0CBC80(v1 + v3, &v16, &qword_1EDC6E1A0, sub_1B9FCD918);
      if (*(&v17 + 1))
      {
        result = swift_dynamicCast();
        if ((result & 1) == 0)
        {
          return result;
        }

        v8 = [a1 resolvedHealthToolbox];
        v9 = [v15 objectType];
        v10 = [v8 createUnitPreferencesController_];

        v16 = 0u;
        v17 = 0u;
        sub_1BA4A7238();

        v11 = &qword_1EDC6E300;
        v12 = MEMORY[0x1E69E6720];
        v13 = sub_1B9F216C8;
        v14 = (MEMORY[0x1E69E7CA0] + 8);
        return sub_1B9F443A8(&v16, v11, v14, v12, v13);
      }

LABEL_10:
      v11 = &qword_1EDC6E1A0;
      v14 = sub_1B9FCD918;
      v12 = MEMORY[0x1E69E6720];
      v13 = sub_1B9F0D08C;
      return sub_1B9F443A8(&v16, v11, v14, v12, v13);
    }
  }

  return result;
}

unint64_t sub_1BA319BD8()
{
  result = qword_1EDC67260;
  if (!qword_1EDC67260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC67260);
  }

  return result;
}

uint64_t sub_1BA319C2C(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_1BA319C74()
{
  v1 = sub_1BA4A3EA8();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x1EEE9AC00](v1);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v28 - v6;
  sub_1BA4A3DD8();
  v8 = v0;
  v9 = sub_1BA4A3E88();
  v10 = sub_1BA4A6FA8();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v28 = v1;
    v12 = v5;
    v13 = v2;
    v14 = v11;
    v15 = swift_slowAlloc();
    v29 = v15;
    *v14 = 136446210;
    v16 = UIViewController.resolutionDebugDescription.getter();
    v18 = sub_1B9F0B82C(v16, v17, &v29);

    *(v14 + 4) = v18;
    _os_log_impl(&dword_1B9F07000, v9, v10, "View Controller is NOT in a hierarchy, sourcing from the window's root view controller, %{public}s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v15);
    MEMORY[0x1BFAF43A0](v15, -1, -1);
    v19 = v14;
    v2 = v13;
    v5 = v12;
    v1 = v28;
    MEMORY[0x1BFAF43A0](v19, -1, -1);
  }

  v20 = *(v2 + 8);
  v20(v7, v1);
  result = [v8 tabBarController];
  if (!result)
  {
    result = [v8 view];
    if (result)
    {
      v22 = result;
      v23 = [result window];

      v24 = [v23 rootViewController];
      if (v24)
      {
        return v24;
      }

      else
      {
        sub_1BA4A3DD8();
        v25 = sub_1BA4A3E88();
        v26 = sub_1BA4A6FA8();
        if (os_log_type_enabled(v25, v26))
        {
          v27 = swift_slowAlloc();
          *v27 = 0;
          _os_log_impl(&dword_1B9F07000, v25, v26, "No Root View Controller could be found, view is not in window", v27, 2u);
          MEMORY[0x1BFAF43A0](v27, -1, -1);
        }

        v20(v5, v1);
        return 0;
      }
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1BA319F7C()
{
  v1 = sub_1BA4A3EA8();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x1EEE9AC00](v1);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_1B9F600B4(v3);
  if (!result)
  {
    sub_1BA4A3DD8();
    v7 = v0;
    v8 = sub_1BA4A3E88();
    v9 = sub_1BA4A6FC8();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v16 = v11;
      *v10 = 136446210;
      v12 = UIViewController.resolutionDebugDescription.getter();
      v14 = sub_1B9F0B82C(v12, v13, &v16);

      *(v10 + 4) = v14;
      _os_log_impl(&dword_1B9F07000, v8, v9, "resolvedHealthStore requested, but none found in hierarchy: %{public}s", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v11);
      MEMORY[0x1BFAF43A0](v11, -1, -1);
      MEMORY[0x1BFAF43A0](v10, -1, -1);
    }

    (*(v2 + 8))(v5, v1);
    return 0;
  }

  return result;
}

double sub_1BA31A13C@<D0>(uint64_t a1@<X8>)
{
  v3 = sub_1BA4A3EA8();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F60C24(&v18, v5);
  if (v19)
  {
    sub_1B9F25598(&v18, a1);
  }

  else
  {
    sub_1B9F43A50(&v18, &unk_1EDC6ADB0, &qword_1EDC6ADC0);
    sub_1BA4A3DD8();
    v9 = v1;
    v10 = sub_1BA4A3E88();
    v11 = sub_1BA4A6FC8();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      *&v18 = v13;
      *v12 = 136446210;
      v14 = UIViewController.resolutionDebugDescription.getter();
      v16 = sub_1B9F0B82C(v14, v15, &v18);

      *(v12 + 4) = v16;
      _os_log_impl(&dword_1B9F07000, v10, v11, "resolvedPinnedContentManager requested, but none found in hierarchy: %{public}s", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v13);
      MEMORY[0x1BFAF43A0](v13, -1, -1);
      MEMORY[0x1BFAF43A0](v12, -1, -1);
    }

    (*(v4 + 8))(v7, v3);
    *(a1 + 32) = 0;
    result = 0.0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  return result;
}

uint64_t DeviceSourcesDataSourceItem.uniqueIdentifier.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

void *sub_1BA31A394(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1BA4A1798();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = 0xD00000000000001CLL;
  v21 = 0x80000001BA4FDAE0;
  sub_1BA4A1788();
  sub_1BA31AC10(&qword_1EDC6AE60, 255, MEMORY[0x1E69695A8]);
  v8 = sub_1BA4A82D8();
  MEMORY[0x1BFAF1350](v8);

  (*(v5 + 8))(v7, v4);
  v9 = v21;
  *(v1 + 16) = v20;
  *(v1 + 24) = v9;
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  *(v1 + 32) = sub_1BA4A1318();
  *(v1 + 40) = v10;
  *(v1 + 48) = 0;
  *(v1 + 56) = 0;
  *(v1 + 64) = 1;
  v20 = type metadata accessor for CollectionViewListDisclosureCell();
  sub_1BA16A6B4();
  *(v1 + 80) = sub_1BA4A6808();
  *(v1 + 88) = v11;
  sub_1B9F25350();
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1BA4B5460;
  *(v12 + 32) = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  *(v12 + 40) = v13;
  *(v12 + 48) = 0xD000000000000011;
  *(v12 + 56) = 0x80000001BA4FDB60;
  v14 = sub_1BA4A6AE8();

  v15 = HKUIJoinStringsForAutomationIdentifier();

  if (v15)
  {
    v16 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    v18 = v17;
  }

  else
  {
    v16 = 0;
    v18 = 0;
  }

  v2[12] = v16;
  v2[13] = v18;
  v2[9] = a1;
  return v2;
}

uint64_t DeviceSourcesDataSourceItem.deinit()
{

  return v0;
}

uint64_t DeviceSourcesDataSourceItem.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1BA31A710(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE0DA58](a1, WitnessTable);
}

void sub_1BA31A774(void *a1)
{
  type metadata accessor for ProfileViewController();
  v2 = swift_dynamicCastClass();
  if (!v2)
  {
    v11 = [a1 navigationController];
    if (!v11)
    {
      return;
    }

    v10 = v11;
    v15 = 2;
    v12 = objc_allocWithZone(type metadata accessor for SourcesViewController());
    v13 = SourcesViewController.init(sourceType:profileName:)(&v15, 0, 0);
    [v10 pushViewController_animated_];
    goto LABEL_6;
  }

  v3 = v2;
  v13 = a1;
  v4 = [v3 navigationController];
  if (v4)
  {
    v5 = v4;
    v14 = 2;
    v6 = sub_1BA388464();
    v8 = v7;
    v9 = objc_allocWithZone(type metadata accessor for SourcesViewController());
    v10 = SourcesViewController.init(sourceType:profileName:)(&v14, v6, v8);
    [v5 pushViewController:v10 animated:1];

LABEL_6:
  }
}

uint64_t sub_1BA31A940(uint64_t a1, uint64_t a2)
{
  result = sub_1BA31AC10(&qword_1EBBEAF50, a2, type metadata accessor for DeviceSourcesDataSourceItem);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1BA31AC10(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

char *TitleWithSubHeadingView.__allocating_init(frame:headingLabelText:subHeadingLabelText:textColor:)(double a1, double a2, double a3, double a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9)
{
  v10 = v9;
  v14 = [objc_allocWithZone(v10) initWithFrame_];
  v15 = OBJC_IVAR____TtC18HealthExperienceUI23TitleWithSubHeadingView_headingLabel;
  v16 = *&v14[OBJC_IVAR____TtC18HealthExperienceUI23TitleWithSubHeadingView_headingLabel];
  v17 = v14;
  v18 = v16;
  if (a6)
  {
    v19 = sub_1BA4A6758();
  }

  else
  {
    v19 = 0;
  }

  [v16 setText_];

  v20 = OBJC_IVAR____TtC18HealthExperienceUI23TitleWithSubHeadingView_subHeadingLabel;
  v21 = *&v14[OBJC_IVAR____TtC18HealthExperienceUI23TitleWithSubHeadingView_subHeadingLabel];
  v22 = v21;
  if (a8)
  {
    v23 = sub_1BA4A6758();
  }

  else
  {
    v23 = 0;
  }

  [v21 setText_];

  v24 = *&v14[v15];
  v25 = a9;
  [v24 setTextColor_];
  v26 = *&v14[v20];

  [v26 setTextColor_];
  return v14;
}

id TitleWithSubHeadingView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id TitleWithSubHeadingView.init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC18HealthExperienceUI23TitleWithSubHeadingView_headingLabel;
  *&v4[v9] = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  v10 = OBJC_IVAR____TtC18HealthExperienceUI23TitleWithSubHeadingView_subHeadingLabel;
  *&v4[v10] = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  v13.receiver = v4;
  v13.super_class = type metadata accessor for TitleWithSubHeadingView();
  v11 = objc_msgSendSuper2(&v13, sel_initWithFrame_, a1, a2, a3, a4);
  sub_1BA31B1C4();

  return v11;
}

id TitleWithSubHeadingView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void TitleWithSubHeadingView.init(coder:)()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI23TitleWithSubHeadingView_headingLabel;
  *(v0 + v1) = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  v2 = OBJC_IVAR____TtC18HealthExperienceUI23TitleWithSubHeadingView_subHeadingLabel;
  *(v0 + v2) = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  sub_1BA4A8018();
  __break(1u);
}

id sub_1BA31B1C4()
{
  v1 = v0;
  v2 = sub_1BA4A3EA8();
  v98 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v97 = &v91[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v91[-v5];
  v7 = [objc_opt_self() clearColor];
  [v1 setBackgroundColor_];

  v8 = *&v1[OBJC_IVAR____TtC18HealthExperienceUI23TitleWithSubHeadingView_headingLabel];
  v9 = *MEMORY[0x1E69DDD80];
  v10 = *MEMORY[0x1E69DDC70];
  v11 = objc_opt_self();
  v12 = [v11 traitCollectionWithPreferredContentSizeCategory_];
  v99 = objc_opt_self();
  v13 = [v99 preferredFontDescriptorWithTextStyle:v9 compatibleWithTraitCollection:v12];
  v14 = [v13 fontDescriptorWithSymbolicTraits_];

  if (v14)
  {
    v15 = [objc_opt_self() fontWithDescriptor:v14 size:0.0];

    v16 = v99;
  }

  else
  {
    sub_1BA4A3DD8();
    v17 = v9;
    v18 = sub_1BA4A3E88();
    v19 = sub_1BA4A6FB8();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v96 = v17;
      v21 = v20;
      v93 = swift_slowAlloc();
      v94 = swift_slowAlloc();
      v102 = v94;
      *v21 = 136315906;
      v22 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      v92 = v19;
      v24 = sub_1B9F0B82C(v22, v23, &v102);
      v95 = v2;
      v25 = v24;

      *(v21 + 4) = v25;
      *(v21 + 12) = 2080;
      v100 = 0;
      v101 = 1;
      sub_1BA1508E8();
      v26 = sub_1BA4A6808();
      v28 = sub_1B9F0B82C(v26, v27, &v102);

      *(v21 + 14) = v28;
      *(v21 + 22) = 2080;
      LODWORD(v100) = 2;
      type metadata accessor for SymbolicTraits(0);
      v29 = sub_1BA4A6808();
      v31 = sub_1B9F0B82C(v29, v30, &v102);
      v2 = v95;

      *(v21 + 24) = v31;
      *(v21 + 32) = 2112;
      v32 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
      *(v21 + 34) = v32;
      v33 = v93;
      *v93 = v32;
      _os_log_impl(&dword_1B9F07000, v18, v92, "Unable to create descriptor with textStyle %s, weight %s, traits %s and rounded %@. Using only the text style", v21, 0x2Au);
      sub_1B9F8C6C8(v33);
      MEMORY[0x1BFAF43A0](v33, -1, -1);
      v34 = v94;
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v34, -1, -1);
      v35 = v21;
      v17 = v96;
      MEMORY[0x1BFAF43A0](v35, -1, -1);
    }

    (*(v98 + 8))(v6, v2);
    v16 = v99;
    v36 = [v99 preferredFontDescriptorWithTextStyle_];
    v15 = [objc_opt_self() fontWithDescriptor:v36 size:0.0];
  }

  [v8 setFont_];

  [v8 setTextAlignment_];
  [v8 setTranslatesAutoresizingMaskIntoConstraints_];
  [v1 addSubview_];
  v37 = *&v1[OBJC_IVAR____TtC18HealthExperienceUI23TitleWithSubHeadingView_subHeadingLabel];
  v38 = *MEMORY[0x1E69DDD28];
  v39 = [v11 traitCollectionWithPreferredContentSizeCategory_];
  v40 = [v16 preferredFontDescriptorWithTextStyle:v38 compatibleWithTraitCollection:v39];
  if (v40)
  {
    v41 = v40;
    v42 = v8;
    v43 = [objc_opt_self() fontWithDescriptor:v40 size:0.0];
  }

  else
  {
    v44 = v97;
    sub_1BA4A3DD8();
    v45 = v38;
    v46 = sub_1BA4A3E88();
    v47 = sub_1BA4A6FB8();
    v96 = v45;

    v42 = v8;
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v93 = swift_slowAlloc();
      v94 = swift_slowAlloc();
      v102 = v94;
      *v48 = 136315906;
      v49 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      v95 = v2;
      v51 = sub_1B9F0B82C(v49, v50, &v102);

      *(v48 + 4) = v51;
      *(v48 + 12) = 2080;
      v100 = 0;
      v101 = 1;
      sub_1BA1508E8();
      v52 = sub_1BA4A6808();
      v54 = sub_1B9F0B82C(v52, v53, &v102);

      *(v48 + 14) = v54;
      *(v48 + 22) = 2080;
      LODWORD(v100) = 0;
      type metadata accessor for SymbolicTraits(0);
      v55 = sub_1BA4A6808();
      v57 = sub_1B9F0B82C(v55, v56, &v102);

      *(v48 + 24) = v57;
      v16 = v99;
      *(v48 + 32) = 2112;
      v58 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
      *(v48 + 34) = v58;
      v59 = v93;
      *v93 = v58;
      _os_log_impl(&dword_1B9F07000, v46, v47, "Unable to create descriptor with textStyle %s, weight %s, traits %s and rounded %@. Using only the text style", v48, 0x2Au);
      sub_1B9F8C6C8(v59);
      MEMORY[0x1BFAF43A0](v59, -1, -1);
      v60 = v94;
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v60, -1, -1);
      MEMORY[0x1BFAF43A0](v48, -1, -1);

      (*(v98 + 8))(v97, v95);
    }

    else
    {

      (*(v98 + 8))(v44, v2);
    }

    v61 = [v16 preferredFontDescriptorWithTextStyle_];
    v43 = [objc_opt_self() fontWithDescriptor:v61 size:0.0];
    v41 = v39;
    v39 = v61;
  }

  v62 = v43;

  [v37 setFont_];
  [v37 setTextAlignment_];
  [v37 setTranslatesAutoresizingMaskIntoConstraints_];
  [v1 addSubview_];
  sub_1B9F109F8();
  v63 = swift_allocObject();
  *(v63 + 16) = xmmword_1BA4B8B60;
  v64 = [v42 topAnchor];
  v65 = [v1 topAnchor];
  v66 = [v64 constraintEqualToAnchor_];

  *(v63 + 32) = v66;
  v67 = [v42 leadingAnchor];
  v68 = [v1 &selRef__totalDistance + 1];
  v69 = [v67 &selRef:v68 numberWithInteger:? + 5];

  *(v63 + 40) = v69;
  v70 = [v42 trailingAnchor];
  v71 = [v1 &selRef_cloudSyncObserverSyncCompleted_ + 4];
  v72 = [v70 &selRef:v71 numberWithInteger:? + 5];

  *(v63 + 48) = v72;
  v73 = objc_opt_self();
  sub_1B9F0ADF8(0, &qword_1EDC6B570);
  v74 = sub_1BA4A6AE8();

  [v73 activateConstraints_];

  v75 = swift_allocObject();
  *(v75 + 16) = xmmword_1BA4B5890;
  v76 = [v37 topAnchor];
  v77 = [v42 bottomAnchor];
  v78 = [v76 constraintEqualToAnchor:v77 constant:2.0];

  *(v75 + 32) = v78;
  v79 = [v1 bottomAnchor];
  v80 = [v37 bottomAnchor];
  v81 = [v79 constraintEqualToAnchor:v80 constant:2.0];

  *(v75 + 40) = v81;
  v82 = [v37 leadingAnchor];
  v83 = [v1 leadingAnchor];
  v84 = [v82 constraintEqualToAnchor_];

  *(v75 + 48) = v84;
  v85 = [v37 trailingAnchor];
  v86 = [v1 trailingAnchor];
  v87 = [v85 constraintEqualToAnchor_];

  *(v75 + 56) = v87;
  v88 = sub_1BA4A6AE8();

  [v73 activateConstraints_];

  LODWORD(v89) = 1144750080;
  return [v1 setContentHuggingPriority:0 forAxis:v89];
}

void sub_1BA31BD44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(v4 + OBJC_IVAR____TtC18HealthExperienceUI23TitleWithSubHeadingView_headingLabel);
  if (a2)
  {
    v7 = sub_1BA4A6758();
  }

  else
  {
    v7 = 0;
  }

  [v6 setText_];

  v8 = *(v4 + OBJC_IVAR____TtC18HealthExperienceUI23TitleWithSubHeadingView_subHeadingLabel);
  if (a4)
  {
    v9 = sub_1BA4A6758();
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;
  [v8 setText_];
}

id TitleWithSubHeadingView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TitleWithSubHeadingView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1BA31BF2C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return DataSourceWrapper.resolvedDataSource.getter(a1, WitnessTable);
}

BOOL sub_1BA31BF80()
{
  swift_getWitnessTable();

  return DataSourceWrapper.isReorderable()();
}

uint64_t sub_1BA31BFD4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return DataSourceWrapper.changeObservers.getter(a1, WitnessTable);
}

uint64_t sub_1BA31C040(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return DataSourceWrapper.resolvedDataSource.getter(a1, WitnessTable);
}

BOOL sub_1BA31C0A0()
{
  swift_getWitnessTable();

  return DataSourceWrapper.isReorderable()();
}

uint64_t sub_1BA31C0F4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return DataSourceWrapper.resolvedDataSource.getter(a1, WitnessTable);
}

BOOL sub_1BA31C160()
{
  swift_getWitnessTable();

  return DataSourceWrapper.isReorderable()();
}

uint64_t sub_1BA31C1B4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return DataSourceWrapper.changeObservers.getter(a1, WitnessTable);
}

uint64_t sub_1BA31C22C()
{
  ObjectType = swift_getObjectType();
  v2 = sub_1BA4A2888();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1BA4A2FF8();
  v36 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v37 = &v33 - v10;
  v11 = UIViewController.resolvedHealthStore.getter();
  if (v11)
  {
    v12 = v11;
    v13 = v37;
    sub_1BA4A2FE8();
    UIViewController.resolvedHealthExperienceStore.getter(&v39);
    v14 = *(v3 + 16);
    v14(v5, &v0[OBJC_IVAR____TtC18HealthExperienceUI41ProfileSharingYouShouldKnowViewController_profileBeingShared], v2);
    v35 = v0;
    v33 = v3;
    v15 = *(v36 + 16);
    v16 = v13;
    v17 = v2;
    v15(v8, v16, v6);
    v18 = objc_allocWithZone(type metadata accessor for ProfileSharingInvitationSentViewController());
    v34 = v5;
    v14(&v18[OBJC_IVAR____TtC18HealthExperienceUI42ProfileSharingInvitationSentViewController_profileBeingShared], v5, v2);
    v15(&v18[OBJC_IVAR____TtC18HealthExperienceUI42ProfileSharingInvitationSentViewController_profileReceivingSharedProfile], v8, v6);
    v19 = qword_1EBBE8238;
    v20 = v12;
    if (v19 != -1)
    {
      swift_once();
    }

    *&v18[OBJC_IVAR____TtC18HealthExperienceUI38OnboardingViewControllerWithNextButton_nextButton] = 0;
    *&v18[OBJC_IVAR____TtC18HealthExperienceUI38OnboardingViewControllerWithNextButton_doneButton] = 0;
    *&v18[OBJC_IVAR____TtC18HealthExperienceUI38OnboardingViewControllerWithNextButton_cancelButton] = 0;
    v21 = sub_1BA4A6758();
    v22 = sub_1BA4A6758();
    Button = type metadata accessor for OnboardingViewControllerWithNextButton();
    v38.receiver = v18;
    v38.super_class = Button;
    v24 = objc_msgSendSuper2(&v38, sel_initWithTitle_detailText_icon_contentLayout_, v21, v22, 0, 3);

    v25 = v24;
    v26 = [v25 headerView];
    LODWORD(v27) = 1036831949;
    [v26 setTitleHyphenationFactor_];

    (*((*MEMORY[0x1E69E7D40] & *v25) + 0xB8))(1);
    v28 = *(v36 + 8);
    v28(v8, v6);
    (*(v33 + 8))(v34, v17);
    __swift_destroy_boxed_opaque_existential_1(&v39);
    [v35 showViewController:v25 sender:0];

    return (v28)(v37, v6);
  }

  else
  {
    v39 = 0;
    v40 = 0xE000000000000000;
    sub_1BA4A7DF8();
    v39 = ObjectType;
    swift_getMetatypeMetadata();
    v30 = sub_1BA4A6808();
    v32 = v31;

    v39 = v30;
    v40 = v32;
    MEMORY[0x1BFAF1350](0xD000000000000020, 0x80000001BA4EC310);
    result = sub_1BA4A8018();
    __break(1u);
  }

  return result;
}

uint64_t sub_1BA31C734()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI41ProfileSharingYouShouldKnowViewController_profileBeingShared;
  v2 = sub_1BA4A2888();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
}

id sub_1BA31C7AC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ProfileSharingYouShouldKnowViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for ProfileSharingYouShouldKnowViewController()
{
  result = qword_1EBBF0818;
  if (!qword_1EBBF0818)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BA31C8B4()
{
  result = sub_1BA4A2888();
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

void *sub_1BA31C950(uint64_t a1, uint64_t a2)
{
  sub_1BA31CEB0();
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1BA4B9FD0;
  if (qword_1EBBE8208 != -1)
  {
    swift_once();
  }

  v6 = qword_1EBC09300;
  v5 = *algn_1EBC09308;
  v7 = qword_1EBBE8210;

  if (v7 != -1)
  {
    swift_once();
  }

  v8 = qword_1EBC09310;
  v9 = *algn_1EBC09318;

  v10 = sub_1BA4A6AE8();
  v11 = HKUIJoinStringsForAutomationIdentifier();

  if (v11)
  {
    v12 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    v14 = v13;
  }

  else
  {
    v12 = 0;
    v14 = 0;
  }

  *(v4 + 32) = v6;
  *(v4 + 40) = v5;
  *(v4 + 48) = v8;
  *(v4 + 56) = v9;
  *(v4 + 64) = v12;
  *(v4 + 72) = v14;
  if (qword_1EBBE8218 != -1)
  {
    swift_once();
  }

  v16 = qword_1EBC09320;
  v15 = *algn_1EBC09328;
  v17 = qword_1EBBE8220;

  if (v17 != -1)
  {
    swift_once();
  }

  v18 = qword_1EBC09330;
  v19 = *algn_1EBC09338;

  v20 = sub_1BA4A6AE8();
  v21 = HKUIJoinStringsForAutomationIdentifier();

  if (v21)
  {
    v22 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    v24 = v23;
  }

  else
  {
    v22 = 0;
    v24 = 0;
  }

  *(v4 + 80) = v16;
  *(v4 + 88) = v15;
  *(v4 + 96) = v18;
  *(v4 + 104) = v19;
  *(v4 + 112) = v22;
  *(v4 + 120) = v24;
  if (qword_1EBBE8228 != -1)
  {
    swift_once();
  }

  v26 = qword_1EBC09340;
  v25 = *algn_1EBC09348;
  v27 = qword_1EBBE8230;

  if (v27 != -1)
  {
    swift_once();
  }

  v28 = qword_1EBC09350;
  v29 = *algn_1EBC09358;

  v30 = sub_1BA4A6AE8();
  v31 = HKUIJoinStringsForAutomationIdentifier();

  if (v31)
  {
    v32 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    v34 = v33;
  }

  else
  {
    v32 = 0;
    v34 = 0;
  }

  v35 = OBJC_IVAR____TtC18HealthExperienceUI41ProfileSharingYouShouldKnowViewController_profileSharingStackedItems;
  *(v4 + 128) = v26;
  *(v4 + 136) = v25;
  *(v4 + 144) = v28;
  *(v4 + 152) = v29;
  *(v4 + 160) = v32;
  *(v4 + 168) = v34;
  *&v2[v35] = v4;
  v36 = OBJC_IVAR____TtC18HealthExperienceUI41ProfileSharingYouShouldKnowViewController_profileBeingShared;
  v37 = sub_1BA4A2888();
  v38 = *(v37 - 8);
  (*(v38 + 16))(&v2[v36], a2, v37);
  if (qword_1EBBE8200 != -1)
  {
    swift_once();
  }

  v39 = *&v2[v35];
  v40 = OBJC_IVAR____TtC18HealthExperienceUI35OnboardingStackedItemViewController_nextIndexToAnimate;
  *&v2[OBJC_IVAR____TtC18HealthExperienceUI35OnboardingStackedItemViewController_nextIndexToAnimate] = 1;
  v2[OBJC_IVAR____TtC18HealthExperienceUI35OnboardingStackedItemViewController_isAnimating] = 0;
  v41 = MEMORY[0x1E69E7CC0];
  *&v2[OBJC_IVAR____TtC18HealthExperienceUI35OnboardingStackedItemViewController_backgroundViews] = MEMORY[0x1E69E7CC0];
  *&v2[OBJC_IVAR____TtC18HealthExperienceUI35OnboardingStackedItemViewController_contentViewBottomConstraint] = 0;
  *&v2[OBJC_IVAR____TtC18HealthExperienceUI35OnboardingStackedItemViewController_titleToItemsTopConstraint] = 0;
  *&v2[OBJC_IVAR____TtC18HealthExperienceUI35OnboardingStackedItemViewController_horizontalConstraints] = v41;
  *&v2[OBJC_IVAR____TtC18HealthExperienceUI35OnboardingStackedItemViewController_stackedItems] = v39;
  v2[OBJC_IVAR____TtC18HealthExperienceUI35OnboardingStackedItemViewController_shouldNextButtonDisplayContinueOnLastItem] = 0;
  v2[OBJC_IVAR____TtC18HealthExperienceUI35OnboardingStackedItemViewController_shouldUseDynamicHorizontalMargins] = 0;
  *&v2[v40] = *(v39 + 16) != 0;
  *&v2[OBJC_IVAR____TtC18HealthExperienceUI38OnboardingViewControllerWithNextButton_nextButton] = 0;
  *&v2[OBJC_IVAR____TtC18HealthExperienceUI38OnboardingViewControllerWithNextButton_doneButton] = 0;
  *&v2[OBJC_IVAR____TtC18HealthExperienceUI38OnboardingViewControllerWithNextButton_cancelButton] = 0;

  v42 = sub_1BA4A6758();
  v49.receiver = v2;
  v49.super_class = type metadata accessor for OnboardingViewControllerWithNextButton();
  v43 = objc_msgSendSuper2(&v49, sel_initWithTitle_detailText_icon_contentLayout_, v42, 0, 0, 3);

  v44 = v43;
  v45 = [v44 headerView];
  LODWORD(v46) = 1036831949;
  [v45 setTitleHyphenationFactor_];

  (*((*MEMORY[0x1E69E7D40] & *v44) + 0xB8))(0);
  (*(v38 + 8))(a2, v37);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v44;
}

void sub_1BA31CEB0()
{
  if (!qword_1EBBF0828)
  {
    v0 = sub_1BA4A82E8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBBF0828);
    }
  }
}

uint64_t PluginFeedItem.ContentConfigurationCellType.hashValue.getter()
{
  v1 = *v0;
  sub_1BA4A8488();
  MEMORY[0x1BFAF2ED0](v1);
  return sub_1BA4A84D8();
}

uint64_t static PluginFeedItem.makeContentConfigurationFeedItem<A, B>(cellType:configurationProvider:viewModel:actionHandlerType:actionHandlerUserData:uniqueIdentifier:contentKind:sourceProfile:baseAutomationIdentifier:)@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X4>, unint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X7>, uint64_t a7@<X8>, uint64_t a8, void *a9, uint64_t a10)
{
  v31 = a5;
  v32 = a6;
  v34 = a3;
  v35 = a4;
  v33 = a2;
  v36 = a7;
  v12 = sub_1BA4A1C68();
  v29 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = *a1;
  type metadata accessor for PlatformConfigurationProvider();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v16 = NSStringFromClass(ObjCClassFromMetadata);
  v28[2] = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();

  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v18 = *(AssociatedConformanceWitness + 16);
  v19 = swift_checkMetadataState();
  v20 = v18(v19, AssociatedConformanceWitness);
  if (v10)
  {
  }

  v23 = v20;
  v24 = v21;
  v28[1] = a10;
  (*(v29 + 16))(v14, a8, v12);
  sub_1B9F206D4(v23, v24);
  v25 = a9;

  sub_1BA4A1E28();
  v26 = swift_getObjCClassFromMetadata();
  v27 = NSStringFromClass(v26);
  _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();

  sub_1BA4A1EB8();
  sub_1B9F6AD84(v34, v35);
  sub_1BA4A1E78();

  sub_1BA4A1ED8();
  return sub_1B9F2BB4C(v23, v24);
}

uint64_t static PluginFeedItem.makePlatformHostingConfigurationFeedItem<A>(cellType:pluginView:viewModel:actionHandlerUserData:uniqueIdentifier:contentKind:sourceProfile:baseAutomationIdentifier:)@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X3>, unint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X7>, uint64_t a7@<X8>, void *a8, uint64_t a9)
{
  v30 = a6;
  v31 = a4;
  v32 = a5;
  v33 = a2;
  v34 = a3;
  v35 = a7;
  v29 = sub_1BA4A1C68();
  v27 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = *a1;
  type metadata accessor for PlatformCellHostingConfiguration();
  swift_getWitnessTable();
  type metadata accessor for PlatformConfigurationProvider();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v13 = NSStringFromClass(ObjCClassFromMetadata);
  v26 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();

  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v15 = *(AssociatedConformanceWitness + 16);
  v16 = swift_checkMetadataState();
  v17 = v36;
  v18 = v15(v16, AssociatedConformanceWitness);
  if (v17)
  {
  }

  v21 = v18;
  v22 = v19;
  v36 = a9;
  (*(v27 + 16))(v11, v30, v29);
  sub_1B9F206D4(v21, v22);
  v23 = a8;

  sub_1BA4A1E28();
  swift_getAssociatedTypeWitness();
  v24 = swift_getObjCClassFromMetadata();
  v25 = NSStringFromClass(v24);
  _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();

  sub_1BA4A1EB8();
  sub_1B9F6AD84(v33, v34);
  sub_1BA4A1E78();

  sub_1BA4A1ED8();
  return sub_1B9F2BB4C(v21, v22);
}

unint64_t sub_1BA31D550()
{
  result = qword_1EBBF0830;
  if (!qword_1EBBF0830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBF0830);
  }

  return result;
}

uint64_t sub_1BA31D5B4()
{
  sub_1B9F65DE4();
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v13[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v13[-1] - v6;
  MEMORY[0x1BFAF1F00](v5);
  v8 = sub_1BA4A4168();
  if ((*(*(v8 - 8) + 48))(v7, 1, v8))
  {
    sub_1B9F66128(v7, v3);
    MEMORY[0x1BFAF1F10](v3);
    sub_1B9F66560(v7);
  }

  else
  {
    v9 = [objc_opt_self() secondarySystemGroupedBackgroundColor];
    sub_1BA4A4118();
    MEMORY[0x1BFAF1F10](v7);
  }

  v10 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x78);
  v13[3] = sub_1BA4A4428();
  v13[4] = MEMORY[0x1E69DC110];
  __swift_allocate_boxed_opaque_existential_1(v13);
  v10();
  return MEMORY[0x1BFAF1EF0](v13);
}

uint64_t sub_1BA31D748@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI16IconWithNameCell_item;
  swift_beginAccess();
  return sub_1B9F68124(v1 + v3, a1);
}

uint64_t sub_1BA31D7A0(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI16IconWithNameCell_item;
  swift_beginAccess();
  sub_1B9F63E74(a1, v1 + v3);
  v4 = swift_endAccess();
  (*((*MEMORY[0x1E69E7D40] & *v1) + 0x80))(v4);
  return sub_1B9F43A50(a1, &qword_1EDC6E1A0, &qword_1EDC6E1B0);
}

uint64_t (*sub_1BA31D854(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1BA31D8B8;
}

uint64_t sub_1BA31D8B8(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return (*((*MEMORY[0x1E69E7D40] & **(a1 + 24)) + 0x80))(result);
  }

  return result;
}

uint64_t sub_1BA31D91C()
{
  MEMORY[0x1BFAF2040]();
  sub_1BA4A43B8();
  [objc_allocWithZone(MEMORY[0x1E69DCAB8]) init];
  return sub_1BA4A43D8();
}

uint64_t sub_1BA31D96C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1BA4A4428();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v14[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1BFAF2040](v6);

  sub_1BA4A43B8();
  v9 = a3;
  sub_1BA4A43D8();
  v10 = sub_1BA4A42D8();
  sub_1BA4A4268();
  v10(v14, 0);
  sub_1BA4A4348();
  v14[3] = v4;
  v14[4] = MEMORY[0x1E69DC110];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v14);
  (*(v5 + 16))(boxed_opaque_existential_1, v8, v4);
  MEMORY[0x1BFAF1EF0](v14);
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_1BA31DB1C(uint64_t a1, void **a2)
{
  sub_1B9F68124(a1, v7);
  v3 = *a2;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI16IconWithNameCell_item;
  swift_beginAccess();
  sub_1B9F63E74(v7, v3 + v4);
  v5 = swift_endAccess();
  (*((*MEMORY[0x1E69E7D40] & *v3) + 0x80))(v5);
  return sub_1B9F43A50(v7, &qword_1EDC6E1A0, &qword_1EDC6E1B0);
}

id IconWithNameCell.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

void *IconWithNameCell.init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = &v4[OBJC_IVAR____TtC18HealthExperienceUI16IconWithNameCell_item];
  v10 = type metadata accessor for IconWithNameCell();
  *v9 = 0u;
  *(v9 + 1) = 0u;
  *(v9 + 4) = 0;
  v15.receiver = v4;
  v15.super_class = v10;
  v11 = objc_msgSendSuper2(&v15, sel_initWithFrame_, a1, a2, a3, a4);
  v12 = *((*MEMORY[0x1E69E7D40] & *v11) + 0x70);
  v13 = v11;
  v12();

  return v13;
}

id IconWithNameCell.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void IconWithNameCell.init(coder:)()
{
  v1 = v0 + OBJC_IVAR____TtC18HealthExperienceUI16IconWithNameCell_item;
  *v1 = 0u;
  *(v1 + 16) = 0u;
  *(v1 + 32) = 0;
  sub_1BA4A8018();
  __break(1u);
}

uint64_t sub_1BA31DFC0()
{
  v1 = v0;
  sub_1B9F65DE4();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = v23 - v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = v23 - v9;
  v11 = sub_1BA4A40A8();
  v12 = type metadata accessor for IconWithNameCell();
  v29.receiver = v1;
  v29.super_class = v12;
  objc_msgSendSuper2(&v29, sel__bridgedUpdateConfigurationUsingState_, v11);

  v25 = v1;
  sub_1B9F0D950(0, &qword_1EBBED448);
  v13 = v1;
  if ((swift_dynamicCast() & 1) == 0)
  {
    v24 = 0;
    memset(v23, 0, sizeof(v23));
    return sub_1B9F43A50(v23, &qword_1EBBED450, &qword_1EBBED448);
  }

  sub_1B9F25598(v23, v26);
  if (![v13 isHighlighted])
  {
    MEMORY[0x1BFAF1F00]();
    v17 = sub_1BA4A4168();
    if ((*(*(v17 - 8) + 48))(v4, 1, v17))
    {
      sub_1B9F66128(v4, v7);
      MEMORY[0x1BFAF1F10](v7);
      v15 = v4;
      goto LABEL_8;
    }

    v21 = v27;
    v22 = v28;
    __swift_project_boxed_opaque_existential_1(v26, v27);
    (*(v22 + 16))(v21, v22);
    sub_1BA4A4118();
    v20 = v4;
LABEL_11:
    MEMORY[0x1BFAF1F10](v20);
    return __swift_destroy_boxed_opaque_existential_1(v26);
  }

  MEMORY[0x1BFAF1F00]();
  v14 = sub_1BA4A4168();
  if (!(*(*(v14 - 8) + 48))(v10, 1, v14))
  {
    v18 = v27;
    v19 = v28;
    __swift_project_boxed_opaque_existential_1(v26, v27);
    (*(v19 + 8))(v18, v19);
    sub_1BA4A4118();
    v20 = v10;
    goto LABEL_11;
  }

  sub_1B9F66128(v10, v7);
  MEMORY[0x1BFAF1F10](v7);
  v15 = v10;
LABEL_8:
  sub_1B9F66560(v15);
  return __swift_destroy_boxed_opaque_existential_1(v26);
}

id IconWithNameCell.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for IconWithNameCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id BiologicalSexPickerItem.__allocating_init(initialValue:)(uint64_t a1, char a2)
{
  v5 = objc_allocWithZone(v2);
  *&v5[OBJC_IVAR____TtC18HealthExperienceUI23BiologicalSexPickerItem_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v6 = &v5[OBJC_IVAR____TtC18HealthExperienceUI23BiologicalSexPickerItem_currentValue];
  *v6 = a1;
  v6[8] = a2 & 1;
  v8.receiver = v5;
  v8.super_class = v2;
  return objc_msgSendSuper2(&v8, sel_init);
}

uint64_t sub_1BA31E608(unint64_t a1)
{
  v2 = sub_1BA4A3EA8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 < 4)
  {
    return qword_1BA4D1690[a1];
  }

  sub_1BA4A3DD8();
  v7 = sub_1BA4A3E88();
  v8 = sub_1BA4A6FB8();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_1B9F07000, v7, v8, "Unhandled case of HKBiologicalSex", v9, 2u);
    MEMORY[0x1BFAF43A0](v9, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  return 2;
}

uint64_t sub_1BA31E75C()
{
  type metadata accessor for PickerTableViewCell();
  sub_1BA31E9E8(0, &qword_1EBBF0850, 255, type metadata accessor for PickerTableViewCell);
  return sub_1BA4A6808();
}

uint64_t sub_1BA31E7B8()
{
  swift_getObjectType();
  sub_1BA31E9E8(0, &qword_1EBBF0858, v0, type metadata accessor for BiologicalSexPickerItem);
  return sub_1BA4A6808();
}

uint64_t sub_1BA31E860(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC18HealthExperienceUI23BiologicalSexPickerItem_delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_1BA31E8CC(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC18HealthExperienceUI23BiologicalSexPickerItem_delegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_1BA001DB4;
}

id BiologicalSexPickerItem.init(initialValue:)(uint64_t a1, char a2)
{
  *&v2[OBJC_IVAR____TtC18HealthExperienceUI23BiologicalSexPickerItem_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v5 = &v2[OBJC_IVAR____TtC18HealthExperienceUI23BiologicalSexPickerItem_currentValue];
  *v5 = a1;
  v5[8] = a2 & 1;
  v7.receiver = v2;
  v7.super_class = type metadata accessor for BiologicalSexPickerItem();
  return objc_msgSendSuper2(&v7, sel_init);
}

uint64_t sub_1BA31E9E8(uint64_t a1, unint64_t *a2, uint64_t a3, void (*a4)(uint64_t))
{
  result = *a2;
  if (!*a2)
  {
    a4(a3);
    result = swift_getMetatypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

id BiologicalSexPickerItem.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id BiologicalSexPickerItem.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BiologicalSexPickerItem();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1BA31EB30()
{
  swift_getObjectType();
  sub_1BA31E9E8(0, &qword_1EBBF0858, v0, type metadata accessor for BiologicalSexPickerItem);
  return sub_1BA4A6808();
}

uint64_t sub_1BA31EB88(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE0DA58](a1, WitnessTable);
}

uint64_t BiologicalSexPickerItem.initialSelections.getter()
{
  sub_1BA31EC5C();
  result = swift_allocObject();
  v2 = 0;
  *(result + 16) = xmmword_1BA4B5480;
  if ((*(v0 + OBJC_IVAR____TtC18HealthExperienceUI23BiologicalSexPickerItem_currentValue + 8) & 1) == 0)
  {
    v3 = result;
    v2 = sub_1BA31E608(*(v0 + OBJC_IVAR____TtC18HealthExperienceUI23BiologicalSexPickerItem_currentValue));
    result = v3;
  }

  *(result + 32) = v2;
  *(result + 40) = 0;
  return result;
}

void sub_1BA31EC5C()
{
  if (!qword_1EBBF0860)
  {
    sub_1BA31ECB4();
    v0 = sub_1BA4A82E8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBBF0860);
    }
  }
}

void sub_1BA31ECB4()
{
  if (!qword_1EBBF1F60)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EBBF1F60);
    }
  }
}

Swift::Int __swiftcall BiologicalSexPickerItem.pickerView(_:numberOfRowsInComponent:)(UIPickerView *_, Swift::Int numberOfRowsInComponent)
{
  if (numberOfRowsInComponent)
  {
    return 0;
  }

  else
  {
    return 3;
  }
}

Swift::String_optional __swiftcall BiologicalSexPickerItem.pickerView(_:titleForRow:forComponent:)(UIPickerView *_, Swift::Int titleForRow, Swift::Int forComponent)
{
  v3 = sub_1BA31EE9C(titleForRow, forComponent);
  result.value._object = v4;
  result.value._countAndFlagsBits = v3;
  return result;
}

uint64_t sub_1BA31EE2C()
{
  sub_1BA31EC5C();
  result = swift_allocObject();
  v2 = 0;
  *(result + 16) = xmmword_1BA4B5480;
  if ((*(v0 + OBJC_IVAR____TtC18HealthExperienceUI23BiologicalSexPickerItem_currentValue + 8) & 1) == 0)
  {
    v3 = result;
    v2 = sub_1BA31E608(*(v0 + OBJC_IVAR____TtC18HealthExperienceUI23BiologicalSexPickerItem_currentValue));
    result = v3;
  }

  *(result + 32) = v2;
  *(result + 40) = 0;
  return result;
}

uint64_t sub_1BA31EE9C(unint64_t a1, uint64_t a2)
{
  if (a2)
  {
    return 0;
  }

  if (a1 > 2)
  {
    return 0;
  }

  v3 = sub_1BA4A6758();
  v4 = HKUILocalizedString();

  if (!v4)
  {
    return 0;
  }

  v5 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();

  return v5;
}

uint64_t sub_1BA31EF90(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  swift_getObjectType();
  v6 = sub_1BA4A3EA8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v24[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 == 2)
  {
    if (a2)
    {
      goto LABEL_9;
    }

    v10 = 3;
    goto LABEL_14;
  }

  if (a1 == 1)
  {
    if (a2)
    {
      goto LABEL_9;
    }

    v10 = 2;
LABEL_14:
    v19 = v3 + OBJC_IVAR____TtC18HealthExperienceUI23BiologicalSexPickerItem_currentValue;
    *v19 = v10;
    *(v19 + 8) = 0;
    v20 = v3 + OBJC_IVAR____TtC18HealthExperienceUI23BiologicalSexPickerItem_delegate;
    swift_beginAccess();
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v21 = *(v20 + 8);
      ObjectType = swift_getObjectType();
      (*(v21 + 8))(v3, v10, ObjectType, v21);
      return swift_unknownObjectRelease();
    }

    return result;
  }

  if (!a1 && !a2)
  {
    v10 = 1;
    goto LABEL_14;
  }

LABEL_9:
  sub_1BA4A3DE8();
  v11 = sub_1BA4A3E88();
  v12 = sub_1BA4A6FA8();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v24[0] = v14;
    *v13 = 136446723;
    v15 = sub_1BA4A85D8();
    v17 = sub_1B9F0B82C(v15, v16, v24);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2082;
    *(v13 + 14) = sub_1B9F0B82C(0xD000000000000027, 0x80000001BA4FDF40, v24);
    *(v13 + 22) = 2049;
    *(v13 + 24) = a1;
    _os_log_impl(&dword_1B9F07000, v11, v12, "[%{public}s.%{public}s]: Unable to construct biological sex from row: : %{private}ld", v13, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1BFAF43A0](v14, -1, -1);
    MEMORY[0x1BFAF43A0](v13, -1, -1);
  }

  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_1BA31F248()
{
  result = qword_1EBBF0870;
  if (!qword_1EBBF0870)
  {
    type metadata accessor for BiologicalSexPickerItem();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBF0870);
  }

  return result;
}

uint64_t BiologicalSexItem.init(biologicalSex:)@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  *a3 = result;
  *(a3 + 8) = a2 & 1;
  return result;
}

uint64_t BiologicalSexItem.reuseIdentifier.getter()
{
  type metadata accessor for TitleValueTableViewCell();
  sub_1BA2253B4();
  return sub_1BA4A6808();
}

uint64_t BiologicalSexItem.uniqueIdentifier.getter()
{
  sub_1BA31F4F0();
  v0 = sub_1BA4A6808();
  sub_1BA23F070();
  v1 = sub_1BA4A6808();
  v3 = v2;

  MEMORY[0x1BFAF1350](v1, v3);

  return v0;
}

unint64_t sub_1BA31F4F0()
{
  result = qword_1EBBF0940;
  if (!qword_1EBBF0940)
  {
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_1EBBF0940);
  }

  return result;
}

uint64_t sub_1BA31F538()
{
  sub_1BA31F4F0();
  v0 = sub_1BA4A6808();
  sub_1BA23F070();
  v1 = sub_1BA4A6808();
  v3 = v2;

  MEMORY[0x1BFAF1350](v1, v3);

  return v0;
}

uint64_t sub_1BA31F5F0(uint64_t a1)
{
  v2 = sub_1BA120BB4();

  return MEMORY[0x1EEE0DA58](a1, v2);
}

uint64_t BiologicalSexItem.title.getter()
{
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  return sub_1BA4A1318();
}

void BiologicalSexItem.value.getter()
{
  v1 = sub_1BA4A3EA8();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v0 + 8) & 1) == 0)
  {
    v6 = *v0;
    if (*v0 <= 1)
    {
      if (!v6)
      {
        goto LABEL_2;
      }

      if (v6 != 1)
      {
        goto LABEL_14;
      }

      v7 = sub_1BA4A6758();
      v8 = HKUILocalizedString();

      if (v8)
      {
        goto LABEL_19;
      }

      __break(1u);
    }

    if (v6 == 2)
    {
LABEL_18:
      v16 = sub_1BA4A6758();
      v8 = HKUILocalizedString();

      if (!v8)
      {
        __break(1u);
        return;
      }

LABEL_19:
      _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();

      return;
    }

    if (v6 == 3)
    {
      v9 = sub_1BA4A6758();
      v8 = HKUILocalizedString();

      if (v8)
      {
        goto LABEL_19;
      }

      __break(1u);
    }

LABEL_14:
    v10 = v3;
    sub_1BA4A3DD8();
    v11 = sub_1BA4A3E88();
    v12 = sub_1BA4A6FB8();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v18 = v14;
      *v13 = 136315138;
      *(v13 + 4) = sub_1B9F0B82C(0xD000000000000011, 0x80000001BA4D1690, &v18);
      _os_log_impl(&dword_1B9F07000, v11, v12, "[%s] Unhandled case of HKBiologicalSex", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v14);
      MEMORY[0x1BFAF43A0](v14, -1, -1);
      MEMORY[0x1BFAF43A0](v13, -1, -1);
    }

    (*(v2 + 8))(v5, v10);
    v15 = sub_1BA4A6758();
    v8 = HKUILocalizedString();

    if (v8)
    {
      goto LABEL_19;
    }

    __break(1u);
    goto LABEL_18;
  }

LABEL_2:
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  sub_1BA4A1318();
}

uint64_t sub_1BA31FA20()
{
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  return sub_1BA4A1318();
}

unint64_t sub_1BA31FAB4()
{
  result = qword_1EBBF0948;
  if (!qword_1EBBF0948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBF0948);
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for BiologicalSexItem(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
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

  *(result + 9) = v3;
  return result;
}

id PDFBox.fillColor.getter()
{
  v1 = *v0;
  v2 = *v0;
  return v1;
}

void *PDFBox.borderColor.getter()
{
  v1 = *(v0 + 24);
  v2 = v1;
  return v1;
}

uint64_t PDFBox.init(fillColor:cornerRadius:roundingCorners:borderWidth:borderColor:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>, double a6@<D1>)
{
  *a4 = result;
  *(a4 + 8) = a5;
  *(a4 + 32) = a6;
  *(a4 + 16) = a2;
  *(a4 + 24) = a3;
  return result;
}

void PDFBox.render(context:document:)(void *a1)
{
  v3 = sub_1BA4A19F8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  v8 = *(v1 + 8);
  v9 = *(v1 + 16);
  v10 = *(v1 + 24);
  v11 = *(v1 + 32);
  v12 = v10;
  v13 = [a1 CGContext];
  CGContextSaveGState(v13);
  v14 = PDFBuilder.Document.drawingContext.getter();
  v18 = [objc_opt_self() bezierPathWithRoundedRect:v9 byRoundingCorners:v14 cornerRadii:{v15, v16, v17, v8, v8}];
  v19 = [v18 CGPath];
  CGContextAddPath(v13, v19);

  if (v10)
  {
    CGContextSetLineWidth(v13, v11);
    v20 = [v12 CGColor];
    CGContextSetStrokeColorWithColor(v13, v20);

    CGContextStrokePath(v13);
  }

  if (v7)
  {
    v21 = v7;
    v22 = [v21 CGColor];
    CGContextSetFillColorWithColor(v13, v22);

    (*(v4 + 104))(v6, *MEMORY[0x1E695EEB8], v3);
    sub_1BA4A6F18();

    (*(v4 + 8))(v6, v3);
  }

  CGContextRestoreGState(v13);
}

uint64_t sub_1BA31FE50(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 40))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_1BA31FEAC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

void sub_1BA31FF20()
{
  v0 = sub_1BA4A6758();
  v1 = [objc_opt_self() systemImageNamed_];

  if (v1)
  {
    qword_1EBC098A8 = v1;
  }

  else
  {
    __break(1u);
  }
}

uint64_t *sub_1BA31FFA0(uint64_t a1)
{
  v2 = v1;
  v61 = *v2;
  v4 = MEMORY[0x1E69E6720];
  sub_1B9F3D724(0, &qword_1EDC6B5B8, MEMORY[0x1E69E8050], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v57 = &v49 - v6;
  v53 = sub_1BA4A6488();
  v7 = *(v53 - 8);
  MEMORY[0x1EEE9AC00](v53);
  v9 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA243558();
  v55 = *(v10 - 8);
  v56 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v54 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA320A08();
  v59 = *(v12 - 8);
  v60 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v58 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F3D724(0, &qword_1EDC6E440, MEMORY[0x1E6969530], v4);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v49 - v15;
  *(v2 + 7) = 0u;
  *(v2 + 5) = 0u;
  v2[2] = sub_1BA4A3328();
  v2[3] = v17;
  if (sub_1BA4A33B8())
  {
    sub_1BA4A33C8();
    v18 = sub_1BA4A2AE8();
    v20 = v19;

    v22 = HIBYTE(v20) & 0xF;
    if ((v20 & 0x2000000000000000) == 0)
    {
      v22 = v18 & 0xFFFFFFFFFFFFLL;
    }

    if (v22)
    {
      v2[5] = MEMORY[0x1BFAEDD10](v21);
      v2[6] = v23;
    }
  }

  v24 = sub_1BA4A3368();
  if (!v24)
  {
    if (qword_1EBBE8810 != -1)
    {
      swift_once();
    }

    v24 = qword_1EBC098A8;
  }

  v2[4] = v24;
  v25 = sub_1BA4A32B8();
  v27 = v26;
  v28 = a1;
  v52 = a1;
  sub_1BA4A32F8();
  v29 = sub_1BA3216A8(v25, v27 & 1, v16);
  v31 = v30;
  v50 = MEMORY[0x1E69E6720];
  v49 = sub_1B9F3D724;
  sub_1BA3221D0(v16, &qword_1EDC6E440, MEMORY[0x1E6969530], MEMORY[0x1E69E6720], sub_1B9F3D724);
  v2[7] = v29;
  v2[8] = v31;

  sub_1B9F0ADF8(0, &qword_1EDC5E540);
  v32 = sub_1BA4A7068();
  v63 = sub_1BA4A33C8();
  v64 = MEMORY[0x1E69A3410];
  v33 = v63;
  v65 = MEMORY[0x1E69A3418];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v62);
  v51 = v33;
  v35 = *(v33 - 8);
  (*(v35 + 16))(boxed_opaque_existential_1, v28, v33);
  sub_1BA4A6FF8();
  sub_1B9F0ADF8(0, &qword_1EDC6B5A0);
  v36 = v9;
  v37 = v9;
  v38 = v53;
  (*(v7 + 104))(v37, *MEMORY[0x1E69E7F88], v53);
  v39 = sub_1BA4A7338();
  (*(v7 + 8))(v36, v38);
  v40 = sub_1BA4A7048();

  __swift_destroy_boxed_opaque_existential_1(v62);
  v62[0] = v40;
  sub_1BA320990();
  sub_1B9F0ADF8(0, &qword_1EDC6E370);
  sub_1BA322390(&qword_1EBBEF0A8, sub_1BA320990);
  v41 = v54;
  sub_1BA4A4FE8();

  v42 = sub_1BA4A7308();
  v62[0] = v42;
  v43 = sub_1BA4A72A8();
  v44 = v57;
  (*(*(v43 - 8) + 56))(v57, 1, 1, v43);
  sub_1BA322390(&qword_1EBBEF0B0, sub_1BA243558);
  sub_1B9F3DC80();
  v45 = v58;
  v46 = v56;
  sub_1BA4A50A8();
  sub_1BA3221D0(v44, &qword_1EDC6B5B8, MEMORY[0x1E69E8050], v50, v49);

  (*(v55 + 8))(v41, v46);
  *(swift_allocObject() + 16) = v61;
  sub_1BA322390(&qword_1EBBF0958, sub_1BA320A08);

  v47 = v60;
  sub_1BA4A4F88();

  (*(v35 + 8))(v52, v51);
  (*(v59 + 8))(v45, v47);
  return v2;
}

uint64_t sub_1BA320774()
{
  v0 = sub_1BA4A3EA8();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA4A3DD8();
  v4 = sub_1BA4A3E88();
  v5 = sub_1BA4A6FC8();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v13 = v7;
    *v6 = 136315138;
    v8 = sub_1BA4A85D8();
    v10 = sub_1B9F0B82C(v8, v9, &v13);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_1B9F07000, v4, v5, "[%s] New photo publisher completed", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x1BFAF43A0](v7, -1, -1);
    MEMORY[0x1BFAF43A0](v6, -1, -1);
  }

  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_1BA32091C()
{

  return swift_deallocClassInstance();
}

void sub_1BA320990()
{
  if (!qword_1EBBEF0A0)
  {
    sub_1B9F0ADF8(255, &qword_1EBBEE5C8);
    v0 = sub_1BA4A4D18();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBBEF0A0);
    }
  }
}

void sub_1BA320A08()
{
  if (!qword_1EBBF0950)
  {
    sub_1BA243558();
    sub_1B9F0ADF8(255, &qword_1EDC6B5A0);
    sub_1BA322390(&qword_1EBBEF0B0, sub_1BA243558);
    sub_1B9F3DC80();
    v0 = sub_1BA4A4CC8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBBF0950);
    }
  }
}

uint64_t sub_1BA320AD4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v14 = a2;
  v3 = sub_1BA4A6138();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 32);
  sub_1BA4A6118();
  (*(v4 + 104))(v6, *MEMORY[0x1E6981630], v3);
  v13 = sub_1BA4A6198();

  (*(v4 + 8))(v6, v3);
  sub_1BA4A63C8();
  sub_1BA4A5278();
  LOBYTE(v39) = 1;
  *&v22[3] = *&v22[27];
  *&v22[11] = *&v22[35];
  *&v22[19] = *&v22[43];
  v8 = sub_1BA4A5878();
  LOBYTE(v15[0]) = 0;
  sub_1BA320FF8(a1, &v39);
  v31 = v40[7];
  v32[0] = v40[8];
  v27 = v40[3];
  v28 = v40[4];
  v29 = v40[5];
  v30 = v40[6];
  v23 = v39;
  v24 = v40[0];
  v25 = v40[1];
  v26 = v40[2];
  v33[8] = v40[7];
  *v34 = v40[8];
  v33[4] = v40[3];
  v33[5] = v40[4];
  v33[7] = v40[6];
  v33[6] = v40[5];
  v33[0] = v39;
  v33[1] = v40[0];
  *(v32 + 15) = *(&v40[8] + 15);
  *&v34[15] = *(&v40[8] + 15);
  v33[2] = v40[1];
  v33[3] = v40[2];
  v9 = MEMORY[0x1E6981F40];
  sub_1BA32215C(&v23, &v37, &qword_1EBBF0978, sub_1BA321FC4, MEMORY[0x1E6981F40], sub_1B9F3D724);
  sub_1BA3221D0(v33, &qword_1EBBF0978, sub_1BA321FC4, v9, sub_1B9F3D724);
  *&v21[119] = v30;
  *&v21[135] = v31;
  *&v21[151] = v32[0];
  *&v21[166] = *(v32 + 15);
  *&v21[55] = v26;
  *&v21[71] = v27;
  *&v21[87] = v28;
  *&v21[103] = v29;
  *&v21[7] = v23;
  *&v21[23] = v24;
  *&v21[39] = v25;
  LOBYTE(a1) = v15[0];
  v10 = v13;
  v35[0] = v13;
  v35[1] = 0;
  *v36 = 1;
  *&v36[2] = *v22;
  *&v36[18] = *&v22[8];
  *&v36[34] = *&v22[16];
  *&v36[48] = *&v22[23];
  *&v20[4] = *&v22[23];
  v20[2] = *&v36[16];
  v20[3] = *&v36[32];
  v20[0] = v13;
  v20[1] = *v36;
  *&v37 = v8;
  *(&v37 + 1) = 0x4008000000000000;
  LOBYTE(v38[0]) = v15[0];
  *(&v38[2] + 1) = *&v21[32];
  *(&v38[1] + 1) = *&v21[16];
  *(v38 + 1) = *v21;
  *(&v38[6] + 1) = *&v21[96];
  *(&v38[5] + 1) = *&v21[80];
  *(&v38[4] + 1) = *&v21[64];
  *(&v38[3] + 1) = *&v21[48];
  *(&v38[9] + 11) = *&v21[154];
  *(&v38[9] + 1) = *&v21[144];
  *(&v38[8] + 1) = *&v21[128];
  *(&v38[7] + 1) = *&v21[112];
  *(&v20[12] + 8) = v38[7];
  *(&v20[13] + 8) = v38[8];
  *(&v20[14] + 8) = v38[9];
  *(&v20[15] + 3) = *(&v38[9] + 11);
  *(&v20[8] + 8) = v38[3];
  *(&v20[9] + 8) = v38[4];
  *(&v20[10] + 8) = v38[5];
  *(&v20[11] + 8) = v38[6];
  *(&v20[4] + 8) = v37;
  *(&v20[5] + 8) = v38[0];
  *(&v20[6] + 8) = v38[1];
  *(&v20[7] + 8) = v38[2];
  memcpy(v14, v20, 0x103uLL);
  *(&v40[7] + 1) = *&v21[112];
  *(&v40[8] + 1) = *&v21[128];
  *(&v40[9] + 1) = *&v21[144];
  *(&v40[9] + 11) = *&v21[154];
  *(&v40[3] + 1) = *&v21[48];
  *(&v40[4] + 1) = *&v21[64];
  *(&v40[5] + 1) = *&v21[80];
  *(&v40[6] + 1) = *&v21[96];
  *(v40 + 1) = *v21;
  *(&v40[1] + 1) = *&v21[16];
  *&v39 = v8;
  *(&v39 + 1) = 0x4008000000000000;
  LOBYTE(v40[0]) = a1;
  *(&v40[2] + 1) = *&v21[32];
  v11 = MEMORY[0x1E697E048];
  sub_1BA32215C(v35, v15, &qword_1EDC5F018, sub_1BA321EB8, MEMORY[0x1E697E048], sub_1BA3220F8);
  sub_1BA322230(&v37, v15);
  sub_1BA322294(&v39);
  v15[0] = v10;
  v15[1] = 0;
  v16 = 1;
  v17 = *v22;
  v18 = *&v22[8];
  v19[0] = *&v22[16];
  *(v19 + 14) = *&v22[23];
  return sub_1BA3221D0(v15, &qword_1EDC5F018, sub_1BA321EB8, v11, sub_1BA3220F8);
}

uint64_t sub_1BA320FF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1B9F252FC();

  v2 = sub_1BA4A5E18();
  v4 = v3;
  v6 = v5;
  v7 = sub_1BA4A5DD8();
  v9 = v8;
  v11 = v10;
  sub_1BA102AF4(v2, v4, v6 & 1);

  sub_1BA4A5C18();
  v12 = sub_1BA4A5DE8();
  v14 = v13;
  v16 = v15;

  sub_1BA102AF4(v7, v9, v11 & 1);

  v17 = objc_opt_self();
  v18 = [v17 labelColor];
  sub_1BA4A6048();
  v19 = sub_1BA4A5DB8();
  v74 = v20;
  v75 = v19;
  v65 = v21;
  v76 = v22;

  sub_1BA102AF4(v12, v14, v16 & 1);

  KeyPath = swift_getKeyPath();
  v61 = v17;
  if (!*(a1 + 48))
  {
    v71 = 0;
    v72 = 0;
    v63 = 0;
    v64 = 0;
    v68 = 0;
    v67 = 0;
    if (*(a1 + 64))
    {
      goto LABEL_3;
    }

LABEL_5:
    v70 = 0;
    v66 = 0;
    v56 = 0;
    v60 = 0;
    v62 = 0;
    v57 = 0;
    goto LABEL_6;
  }

  v23 = sub_1BA4A5E18();
  v25 = v24;
  v27 = v26;
  sub_1BA4A5C08();
  v28 = sub_1BA4A5DE8();
  v30 = v29;
  v32 = v31;

  sub_1BA102AF4(v23, v25, v27 & 1);

  v33 = [v17 labelColor];
  sub_1BA4A6048();
  v34 = sub_1BA4A5DB8();
  v36 = v35;
  LOBYTE(v23) = v37;
  v39 = v38;

  sub_1BA102AF4(v28, v30, v32 & 1);

  v40 = swift_getKeyPath();
  v71 = v36;
  v72 = v34;
  v63 = v23 & 1;
  sub_1BA1465C0(v34, v36, v23 & 1);
  v64 = v39;

  v68 = v40;

  v67 = 1;
  if (!*(a1 + 64))
  {
    goto LABEL_5;
  }

LABEL_3:

  v41 = sub_1BA4A5E18();
  v43 = v42;
  v45 = v44;
  sub_1BA4A5C08();
  v46 = sub_1BA4A5DE8();
  v48 = v47;
  v50 = v49;

  sub_1BA102AF4(v41, v43, v45 & 1);

  v51 = [v61 labelColor];
  sub_1BA4A6048();
  v70 = sub_1BA4A5DB8();
  v66 = v52;
  v54 = v53;
  v62 = v55;

  sub_1BA102AF4(v46, v48, v50 & 1);

  v60 = swift_getKeyPath();
  v56 = v54 & 1;
  v57 = 65537;
LABEL_6:
  sub_1BA1465C0(v75, v74, v65 & 1);

  sub_1BA3222F0(v72, v71, v63, v64);
  sub_1BA3222F0(v70, v66, v56, v62);
  sub_1BA322340(v72, v71, v63, v64);
  *a2 = v75;
  *(a2 + 8) = v74;
  *(a2 + 16) = v65 & 1;
  *(a2 + 24) = v76;
  *(a2 + 32) = KeyPath;
  *(a2 + 40) = 0;
  *(a2 + 48) = 1;
  *(a2 + 56) = v72;
  *(a2 + 64) = v71;
  *(a2 + 72) = v63;
  *(a2 + 80) = v64;
  *(a2 + 88) = v68;
  *(a2 + 96) = 0;
  *(a2 + 104) = v67;
  *(a2 + 112) = v70;
  *(a2 + 120) = v66;
  *(a2 + 128) = v56;
  *(a2 + 136) = v62;
  *(a2 + 144) = v60;
  *(a2 + 152) = 0;
  *(a2 + 162) = BYTE2(v57);
  *(a2 + 160) = v57;
  sub_1BA322340(v70, v66, v56, v62);
  sub_1BA322340(v72, v71, v63, v64);
  sub_1BA102AF4(v75, v74, v65 & 1);
}

void *sub_1BA32157C@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = sub_1BA4A5798();
  v11 = 0;
  sub_1BA320AD4(v3, __src);
  memcpy(__dst, __src, 0x103uLL);
  memcpy(v13, __src, 0x103uLL);
  v5 = MEMORY[0x1E6981F40];
  sub_1BA32215C(__dst, v8, &qword_1EBBF0960, sub_1BA321E24, MEMORY[0x1E6981F40], sub_1B9F3D724);
  sub_1BA3221D0(v13, &qword_1EBBF0960, sub_1BA321E24, v5, sub_1B9F3D724);
  memcpy(&v10[7], __dst, 0x103uLL);
  v6 = v11;
  *a1 = v4;
  *(a1 + 8) = 0x4034000000000000;
  *(a1 + 16) = v6;
  return memcpy((a1 + 17), v10, 0x10AuLL);
}

uint64_t sub_1BA3216A8(uint64_t a1, char a2, uint64_t a3)
{
  v6 = sub_1BA4A18A8();
  v42 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1BA4A1148();
  v40 = *(v9 - 8);
  v41 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F3D724(0, &qword_1EDC6E440, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v37 - v13;
  v15 = sub_1BA4A1728();
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v37 - v20;
  if (a2)
  {
    return 0;
  }

  if (a1 != 1)
  {
    if (!a1)
    {
      if (qword_1EDC5E100 != -1)
      {
        swift_once();
      }

      return sub_1BA4A1318();
    }

    return 0;
  }

  v23 = v19;
  sub_1BA32215C(a3, v14, &qword_1EDC6E440, MEMORY[0x1E6969530], MEMORY[0x1E69E6720], sub_1B9F3D724);
  if ((*(v23 + 48))(v14, 1, v15) == 1)
  {
    sub_1BA3221D0(v14, &qword_1EDC6E440, MEMORY[0x1E6969530], MEMORY[0x1E69E6720], sub_1B9F3D724);
    return 0;
  }

  (*(v23 + 32))(v21, v14, v15);
  sub_1BA4A1878();
  sub_1B9F3D724(0, &qword_1EBBEC248, MEMORY[0x1E6969AD0], MEMORY[0x1E69E6F90]);
  v24 = sub_1BA4A1898();
  v25 = *(v24 - 8);
  v26 = *(v25 + 80);
  v39 = v23;
  v27 = (v26 + 32) & ~v26;
  v28 = swift_allocObject();
  v37 = xmmword_1BA4B5480;
  *(v28 + 16) = xmmword_1BA4B5480;
  (*(v25 + 104))(v28 + v27, *MEMORY[0x1E6969A48], v24);
  v38 = sub_1B9FF6D00(v28);
  swift_setDeallocating();
  (*(v25 + 8))(v28 + v27, v24);
  swift_deallocClassInstance();
  sub_1BA4A1718();
  sub_1BA4A17F8();

  v29 = *(v39 + 8);
  v29(v17, v15);
  (*(v42 + 8))(v8, v6);
  v30 = sub_1BA4A1118();
  if ((v31 & 1) != 0 || (v32 = v30, v30 < 1))
  {
    (*(v40 + 8))(v11, v41);
    v29(v21, v15);
    return 0;
  }

  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  sub_1BA4A1318();
  sub_1B9F3D724(0, &qword_1EDC6B410, sub_1BA06FAE4, MEMORY[0x1E69E6F90]);
  v33 = swift_allocObject();
  v34 = MEMORY[0x1E69E6530];
  *(v33 + 16) = v37;
  v35 = MEMORY[0x1E69E65A8];
  *(v33 + 56) = v34;
  *(v33 + 64) = v35;
  *(v33 + 32) = v32;
  v36 = sub_1BA4A6768();

  (*(v40 + 8))(v11, v41);
  v29(v21, v15);
  return v36;
}

void sub_1BA321DB4(void **a1)
{
  v2 = *a1;
  v4 = *(v1 + 32);
  *(v1 + 32) = *a1;
  v3 = v2;
}

void sub_1BA321E24()
{
  if (!qword_1EBBF0968)
  {
    sub_1BA3220F8(255, &qword_1EDC5F018, sub_1BA321EB8);
    sub_1BA321F10();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EBBF0968);
    }
  }
}

void sub_1BA321EB8()
{
  if (!qword_1EDC5F170)
  {
    v0 = sub_1BA4A5418();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC5F170);
    }
  }
}

void sub_1BA321F10()
{
  if (!qword_1EBBF0970)
  {
    sub_1B9F3D724(255, &qword_1EBBF0978, sub_1BA321FC4, MEMORY[0x1E6981F40]);
    sub_1BA32248C(&qword_1EBBF09A0, &qword_1EBBF0978, sub_1BA321FC4);
    v0 = sub_1BA4A6268();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBBF0970);
    }
  }
}

void sub_1BA321FC4()
{
  if (!qword_1EBBF0980)
  {
    sub_1B9F88B28();
    sub_1B9F3D724(255, &qword_1EBBF0988, sub_1B9F88B28, MEMORY[0x1E69E6720]);
    sub_1BA32207C();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EBBF0980);
    }
  }
}

void sub_1BA32207C()
{
  if (!qword_1EBBF0990)
  {
    sub_1BA3220F8(255, &qword_1EBBF0998, sub_1B9F88B28);
    v0 = sub_1BA4A7AA8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBBF0990);
    }
  }
}

void sub_1BA3220F8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1BA4A5418();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1BA32215C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = a6(0, a3, a4, a5);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

uint64_t sub_1BA3221D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5(0);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_1BA322230(uint64_t a1, uint64_t a2)
{
  sub_1BA321F10();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BA322294(uint64_t a1)
{
  sub_1BA321F10();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BA3222F0(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_1BA1465C0(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_1BA322340(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_1BA102AF4(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_1BA322390(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1BA3223D8()
{
  if (!qword_1EBBF09B0)
  {
    sub_1B9F3D724(255, &qword_1EBBF0960, sub_1BA321E24, MEMORY[0x1E6981F40]);
    sub_1BA32248C(&qword_1EBBF09B8, &qword_1EBBF0960, sub_1BA321E24);
    v0 = sub_1BA4A6218();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBBF09B0);
    }
  }
}

uint64_t sub_1BA32248C(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_1B9F3D724(255, a2, a3, MEMORY[0x1E6981F40]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t HKTDataTypeDetailFactory.makeViewController(hkType:context:)(void *a1, uint64_t a2)
{
  v5 = [a1 identifier];
  v6 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  v8 = v7;

  v9 = v6 == 0xD000000000000017 && 0x80000001BA4FE070 == v8;
  if (v9 || (sub_1BA4A8338() & 1) != 0 || (v6 == 0xD00000000000001FLL ? (v10 = 0x80000001BA4FE090 == v8) : (v10 = 0), v10 || (sub_1BA4A8338() & 1) != 0))
  {

    return HKTDataTypeDetailFactory.createViewController(hkType:pluginName:context:)(a1, 0xD000000000000016, 0x80000001BA500370, a2);
  }

  if (v6 == 0xD000000000000025 && 0x80000001BA4FE0B0 == v8)
  {
    goto LABEL_612;
  }

  if ((sub_1BA4A8338() & 1) != 0 || v6 == 0xD000000000000029 && 0x80000001BA4FE0E0 == v8)
  {
    goto LABEL_612;
  }

  if (sub_1BA4A8338())
  {
    goto LABEL_612;
  }

  v22 = 0xD00000000000001ELL;
  if (v6 == 0xD00000000000001ELL && 0x80000001BA4FE110 == v8)
  {
    goto LABEL_612;
  }

  if ((sub_1BA4A8338() & 1) != 0
    || v6 == 0xD000000000000020 && 0x80000001BA4FE130 == v8
    || (sub_1BA4A8338() & 1) != 0
    || v6 == 0xD000000000000024 && 0x80000001BA4FE160 == v8
    || (sub_1BA4A8338() & 1) != 0
    || v6 == 0xD000000000000021 && 0x80000001BA4FE190 == v8
    || (sub_1BA4A8338() & 1) != 0
    || v6 == 0xD00000000000002ELL && 0x80000001BA4FE1C0 == v8
    || (sub_1BA4A8338() & 1) != 0
    || v6 == 0xD000000000000029 && 0x80000001BA4FE1F0 == v8
    || (sub_1BA4A8338() & 1) != 0
    || v6 == 0xD00000000000002ALL && 0x80000001BA4FE220 == v8
    || (sub_1BA4A8338() & 1) != 0
    || v6 == 0xD000000000000026 && 0x80000001BA4FE250 == v8
    || (sub_1BA4A8338() & 1) != 0
    || v6 == 0xD000000000000020 && 0x80000001BA4FE280 == v8
    || (sub_1BA4A8338() & 1) != 0
    || v6 == 0xD000000000000024 && 0x80000001BA4FE2B0 == v8
    || (sub_1BA4A8338() & 1) != 0
    || v6 == 0xD00000000000002BLL && 0x80000001BA4FE2E0 == v8
    || (sub_1BA4A8338() & 1) != 0
    || v6 == 0xD000000000000030 && 0x80000001BA4FE310 == v8
    || (sub_1BA4A8338() & 1) != 0
    || v6 == 0xD000000000000027 && 0x80000001BA4FE350 == v8
    || (sub_1BA4A8338() & 1) != 0
    || v6 == 0xD000000000000031 && 0x80000001BA4FE380 == v8
    || (sub_1BA4A8338() & 1) != 0
    || v6 == 0xD000000000000031 && 0x80000001BA4FE3C0 == v8
    || (sub_1BA4A8338() & 1) != 0
    || v6 == 0xD00000000000002BLL && 0x80000001BA4FE400 == v8
    || (sub_1BA4A8338() & 1) != 0
    || v6 == 0xD00000000000002ALL && 0x80000001BA4FE430 == v8
    || (sub_1BA4A8338() & 1) != 0
    || v6 == 0xD000000000000025 && 0x80000001BA4FE460 == v8
    || (sub_1BA4A8338() & 1) != 0
    || v6 == 0xD00000000000002CLL && 0x80000001BA4FE490 == v8
    || (sub_1BA4A8338() & 1) != 0
    || v6 == 0xD000000000000024 && 0x80000001BA4FE4C0 == v8
    || (sub_1BA4A8338() & 1) != 0
    || v6 == 0xD000000000000024 && 0x80000001BA4FE4F0 == v8
    || (sub_1BA4A8338() & 1) != 0
    || v6 == 0xD00000000000002DLL && 0x80000001BA4FE520 == v8
    || (sub_1BA4A8338() & 1) != 0
    || v6 == 0xD000000000000026 && 0x80000001BA4FE550 == v8
    || (sub_1BA4A8338() & 1) != 0
    || v6 == 0xD000000000000027 && 0x80000001BA4FE580 == v8
    || (sub_1BA4A8338() & 1) != 0
    || v6 == 0xD000000000000028 && 0x80000001BA4FE5B0 == v8
    || (sub_1BA4A8338() & 1) != 0
    || v6 == 0xD000000000000029 && 0x80000001BA4FE5E0 == v8
    || (sub_1BA4A8338() & 1) != 0
    || v6 == 0xD000000000000027 && 0x80000001BA4FE610 == v8
    || (sub_1BA4A8338() & 1) != 0
    || v6 == 0xD000000000000027 && 0x80000001BA4FE640 == v8
    || (sub_1BA4A8338() & 1) != 0
    || v6 == 0xD000000000000027 && 0x80000001BA4FE670 == v8
    || (sub_1BA4A8338() & 1) != 0
    || v6 == 0xD000000000000027 && 0x80000001BA4FE6A0 == v8
    || (sub_1BA4A8338() & 1) != 0
    || v6 == 0xD000000000000026 && 0x80000001BA4FE6D0 == v8
    || (sub_1BA4A8338() & 1) != 0
    || v6 == 0xD000000000000023 && 0x80000001BA4FE700 == v8
    || (sub_1BA4A8338() & 1) != 0
    || v6 == 0xD000000000000026 && 0x80000001BA4FE730 == v8
    || (sub_1BA4A8338() & 1) != 0
    || v6 == 0xD000000000000029 && 0x80000001BA4FE760 == v8
    || (sub_1BA4A8338() & 1) != 0
    || v6 == 0xD000000000000025 && 0x80000001BA4FE790 == v8
    || (sub_1BA4A8338() & 1) != 0
    || v6 == 0xD000000000000025 && 0x80000001BA4FE7C0 == v8
    || (sub_1BA4A8338() & 1) != 0
    || v6 == 0xD000000000000025 && 0x80000001BA4FE7F0 == v8
    || (sub_1BA4A8338() & 1) != 0
    || v6 == 0xD00000000000002ELL && 0x80000001BA4FE820 == v8
    || (sub_1BA4A8338() & 1) != 0
    || v6 == 0xD000000000000029 && 0x80000001BA4FE850 == v8
    || (sub_1BA4A8338() & 1) != 0
    || v6 == 0xD000000000000025 && 0x80000001BA4FE880 == v8
    || (sub_1BA4A8338() & 1) != 0
    || v6 == 0xD000000000000028 && 0x80000001BA4FE8B0 == v8
    || (sub_1BA4A8338() & 1) != 0
    || v6 == 0xD000000000000023 && 0x80000001BA4FE8E0 == v8
    || (sub_1BA4A8338() & 1) != 0
    || v6 == 0xD000000000000027 && 0x80000001BA4FE910 == v8
    || (sub_1BA4A8338() & 1) != 0
    || v6 == 0xD000000000000025 && 0x80000001BA4FE940 == v8
    || (sub_1BA4A8338() & 1) != 0
    || v6 == 0xD000000000000028 && 0x80000001BA4FE970 == v8
    || (sub_1BA4A8338() & 1) != 0
    || v6 == 0xD000000000000027 && 0x80000001BA4FE9A0 == v8
    || (sub_1BA4A8338() & 1) != 0
    || v6 == 0xD000000000000029 && 0x80000001BA4FE9D0 == v8
    || (sub_1BA4A8338() & 1) != 0
    || v6 == 0xD000000000000027 && 0x80000001BA4FEA00 == v8
    || (sub_1BA4A8338() & 1) != 0
    || v6 == 0xD000000000000028 && 0x80000001BA4FEA30 == v8
    || (sub_1BA4A8338() & 1) != 0
    || v6 == 0xD00000000000002BLL && 0x80000001BA4FEA60 == v8
    || (sub_1BA4A8338() & 1) != 0
    || v6 == 0xD00000000000002DLL && 0x80000001BA4FEA90 == v8
    || (sub_1BA4A8338() & 1) != 0
    || v6 == 0xD000000000000024 && 0x80000001BA4FEAC0 == v8
    || (sub_1BA4A8338() & 1) != 0
    || v6 == 0xD000000000000027 && 0x80000001BA4FEAF0 == v8
    || (sub_1BA4A8338() & 1) != 0
    || v6 == 0xD000000000000027 && 0x80000001BA4FEB20 == v8
    || (sub_1BA4A8338() & 1) != 0
    || v6 == 0xD000000000000026 && 0x80000001BA4FEB50 == v8
    || (sub_1BA4A8338() & 1) != 0
    || v6 == 0xD00000000000002BLL && 0x80000001BA4FEB80 == v8
    || (sub_1BA4A8338() & 1) != 0
    || v6 == 0xD00000000000002FLL && 0x80000001BA4FEBB0 == v8
    || (sub_1BA4A8338() & 1) != 0
    || v6 == 0xD00000000000002ELL && 0x80000001BA4FEBE0 == v8
    || (sub_1BA4A8338() & 1) != 0
    || v6 == 0xD000000000000029 && 0x80000001BA4FEC10 == v8
    || (sub_1BA4A8338() & 1) != 0
    || v6 == 0xD000000000000027 && 0x80000001BA4FEC40 == v8
    || (sub_1BA4A8338() & 1) != 0
    || v6 == 0xD000000000000027 && 0x80000001BA4FEC70 == v8
    || (sub_1BA4A8338() & 1) != 0
    || v6 == 0xD000000000000024 && 0x80000001BA4FECA0 == v8
    || (sub_1BA4A8338() & 1) != 0
    || v6 == 0xD000000000000022 && 0x80000001BA4FECD0 == v8
    || (sub_1BA4A8338() & 1) != 0
    || v6 == 0xD00000000000002CLL && 0x80000001BA4FED00 == v8
    || (sub_1BA4A8338() & 1) != 0
    || v6 == 0xD00000000000002CLL && 0x80000001BA4FED30 == v8
    || (sub_1BA4A8338() & 1) != 0
    || v6 == 0xD00000000000002BLL && 0x80000001BA4FED60 == v8
    || (sub_1BA4A8338() & 1) != 0
    || v6 == 0xD000000000000025 && 0x80000001BA4FED90 == v8
    || (sub_1BA4A8338() & 1) != 0
    || v6 == 0xD00000000000002ELL && 0x80000001BA4FEDC0 == v8
    || (sub_1BA4A8338() & 1) != 0
    || v6 == 0xD000000000000026 && 0x80000001BA4FEDF0 == v8
    || (sub_1BA4A8338() & 1) != 0
    || v6 == 0xD000000000000026 && 0x80000001BA4FEE20 == v8
    || (sub_1BA4A8338() & 1) != 0
    || v6 == 0xD000000000000021 && 0x80000001BA4FEE50 == v8
    || (sub_1BA4A8338() & 1) != 0
    || v6 == 0xD000000000000028 && 0x80000001BA4FEE80 == v8
    || (sub_1BA4A8338() & 1) != 0
    || v6 == 0xD00000000000002BLL && 0x80000001BA4FEEB0 == v8
    || (sub_1BA4A8338() & 1) != 0
    || v6 == 0xD00000000000002ALL && 0x80000001BA4FEEE0 == v8
    || (sub_1BA4A8338() & 1) != 0
    || v6 == 0xD00000000000002ALL && 0x80000001BA4FEF10 == v8
    || (sub_1BA4A8338() & 1) != 0
    || v6 == 0xD000000000000028 && 0x80000001BA4FEF40 == v8
    || (sub_1BA4A8338() & 1) != 0
    || v6 == 0xD000000000000027 && 0x80000001BA4FEF70 == v8
    || (sub_1BA4A8338() & 1) != 0
    || v6 == 0xD00000000000002FLL && 0x80000001BA4FEFA0 == v8
    || (sub_1BA4A8338() & 1) != 0
    || v6 == 0xD000000000000032 && 0x80000001BA4FEFD0 == v8
    || (sub_1BA4A8338() & 1) != 0
    || v6 == 0xD000000000000027 && 0x80000001BA4FF010 == v8
    || (sub_1BA4A8338() & 1) != 0
    || v6 == 0xD000000000000022 && 0x80000001BA4FF040 == v8
    || (sub_1BA4A8338() & 1) != 0
    || v6 == 0xD000000000000020 && 0x80000001BA4FF070 == v8
    || (sub_1BA4A8338() & 1) != 0
    || v6 == 0xD000000000000020 && 0x80000001BA4FF0A0 == v8
    || (sub_1BA4A8338() & 1) != 0
    || v6 == 0xD00000000000001CLL && 0x80000001BA4FF0D0 == v8
    || (sub_1BA4A8338() & 1) != 0
    || v6 == 0xD000000000000025 && 0x80000001BA4FF0F0 == v8
    || (sub_1BA4A8338() & 1) != 0
    || v6 == 0xD000000000000022 && 0x80000001BA4FF120 == v8
    || (sub_1BA4A8338() & 1) != 0
    || v6 == 0xD000000000000023 && 0x80000001BA4FF150 == v8
    || (sub_1BA4A8338() & 1) != 0
    || v6 == 0xD000000000000024 && 0x80000001BA4FF180 == v8
    || (sub_1BA4A8338() & 1) != 0
    || v6 == 0xD000000000000020 && 0x80000001BA4FF1B0 == v8
    || (sub_1BA4A8338() & 1) != 0
    || v6 == 0xD00000000000001FLL && 0x80000001BA4FF1E0 == v8
    || (sub_1BA4A8338() & 1) != 0
    || v6 == v22 && 0x80000001BA4FF200 == v8
    || (sub_1BA4A8338() & 1) != 0
    || v6 == 0xD000000000000024 && 0x80000001BA4FF220 == v8
    || (sub_1BA4A8338() & 1) != 0
    || v6 == 0xD000000000000027 && 0x80000001BA4FF250 == v8
    || (sub_1BA4A8338() & 1) != 0
    || v6 == 0xD000000000000022 && 0x80000001BA4FF280 == v8
    || (sub_1BA4A8338() & 1) != 0
    || v6 == 0xD000000000000025 && 0x80000001BA4FF2B0 == v8
    || (sub_1BA4A8338() & 1) != 0
    || v6 == 0xD000000000000036 && 0x80000001BA4FF2E0 == v8
    || (sub_1BA4A8338() & 1) != 0
    || v6 == 0xD000000000000031 && 0x80000001BA4FF320 == v8
    || (sub_1BA4A8338() & 1) != 0
    || v6 == 0xD000000000000026 && 0x80000001BA4FF360 == v8
    || (sub_1BA4A8338() & 1) != 0
    || v6 == 0xD000000000000024 && 0x80000001BA4FF390 == v8
    || (sub_1BA4A8338() & 1) != 0
    || v6 == 0xD000000000000029 && 0x80000001BA4FF3C0 == v8
    || (sub_1BA4A8338() & 1) != 0
    || v6 == 0xD00000000000002ALL && 0x80000001BA4FF3F0 == v8
    || (sub_1BA4A8338() & 1) != 0
    || v6 == 0xD000000000000021 && 0x80000001BA4FF420 == v8
    || (sub_1BA4A8338() & 1) != 0
    || v6 == 0xD000000000000025 && 0x80000001BA4FF450 == v8
    || (sub_1BA4A8338() & 1) != 0
    || v6 == 0xD000000000000032 && 0x80000001BA4FF480 == v8
    || (sub_1BA4A8338() & 1) != 0
    || v6 == 0xD000000000000028 && 0x80000001BA4FF4C0 == v8
    || (sub_1BA4A8338() & 1) != 0
    || v6 == 0xD000000000000029 && 0x80000001BA4FF4F0 == v8
    || (sub_1BA4A8338() & 1) != 0
    || v6 == 0xD00000000000003ALL && 0x80000001BA4FF520 == v8
    || (sub_1BA4A8338() & 1) != 0
    || v6 == 0xD000000000000028 && 0x80000001BA4FF560 == v8
    || (sub_1BA4A8338() & 1) != 0
    || v6 == 0xD00000000000001DLL && 0x80000001BA4FF590 == v8
    || (sub_1BA4A8338() & 1) != 0
    || v6 == 0xD000000000000029 && 0x80000001BA4FF5B0 == v8
    || (sub_1BA4A8338() & 1) != 0
    || v6 == 0xD00000000000002CLL && 0x80000001BA4FF5E0 == v8
    || (sub_1BA4A8338() & 1) != 0
    || v6 == 0xD000000000000020 && 0x80000001BA4FF610 == v8
    || (sub_1BA4A8338() & 1) != 0
    || v6 == 0xD000000000000021 && 0x80000001BA4FF640 == v8
    || (sub_1BA4A8338() & 1) != 0
    || v6 == 0xD000000000000020 && 0x80000001BA4FF670 == v8
    || (sub_1BA4A8338() & 1) != 0
    || v6 == 0xD000000000000021 && 0x80000001BA4FF6A0 == v8
    || (sub_1BA4A8338() & 1) != 0
    || v6 == 0xD000000000000020 && 0x80000001BA4FF6D0 == v8
    || (sub_1BA4A8338() & 1) != 0
    || v6 == 0xD000000000000020 && 0x80000001BA4FF700 == v8
    || (sub_1BA4A8338() & 1) != 0
    || v6 == 0xD000000000000022 && 0x80000001BA4FF730 == v8
    || (sub_1BA4A8338() & 1) != 0
    || v6 == 0xD000000000000027 && 0x80000001BA4FF760 == v8
    || (sub_1BA4A8338() & 1) != 0
    || v6 == 0xD000000000000021 && 0x80000001BA4FF790 == v8
    || (sub_1BA4A8338() & 1) != 0
    || v6 == 0xD000000000000026 && 0x80000001BA4FF7C0 == v8
    || (sub_1BA4A8338() & 1) != 0
    || v6 == 0xD000000000000023 && 0x80000001BA4FF7F0 == v8
    || (sub_1BA4A8338() & 1) != 0
    || v6 == v22 && 0x80000001BA4FF820 == v8
    || (sub_1BA4A8338() & 1) != 0
    || v6 == 0xD000000000000020 && 0x80000001BA4FF840 == v8
    || (sub_1BA4A8338() & 1) != 0
    || v6 == 0xD00000000000001FLL && 0x80000001BA4FF870 == v8
    || (sub_1BA4A8338() & 1) != 0
    || v6 == 0xD00000000000002BLL && 0x80000001BA4FF890 == v8
    || (sub_1BA4A8338() & 1) != 0
    || v6 == 0xD000000000000023 && 0x80000001BA4FF8C0 == v8
    || (sub_1BA4A8338() & 1) != 0
    || v6 == 0xD000000000000028 && 0x80000001BA4F7330 == v8
    || (sub_1BA4A8338() & 1) != 0
    || v6 == 0xD00000000000002BLL && 0x80000001BA4FF8F0 == v8
    || (sub_1BA4A8338() & 1) != 0
    || v6 == 0xD000000000000023 && 0x80000001BA4FF920 == v8
    || (sub_1BA4A8338() & 1) != 0
    || v6 == 0xD000000000000023 && 0x80000001BA4FF950 == v8
    || (sub_1BA4A8338() & 1) != 0
    || v6 == 0xD00000000000002BLL && 0x80000001BA4FF980 == v8
    || (sub_1BA4A8338() & 1) != 0
    || v6 == 0xD00000000000002ELL && 0x80000001BA4FF9B0 == v8
    || (sub_1BA4A8338() & 1) != 0
    || v6 == 0xD000000000000032 && 0x80000001BA4FF9E0 == v8
    || (sub_1BA4A8338() & 1) != 0
    || v6 == 0xD00000000000002BLL && 0x80000001BA4FFA20 == v8
    || (sub_1BA4A8338() & 1) != 0
    || v6 == 0xD000000000000032 && 0x80000001BA4FFA50 == v8
    || (sub_1BA4A8338() & 1) != 0
    || v6 == 0xD000000000000030 && 0x80000001BA4FFA90 == v8
    || (sub_1BA4A8338() & 1) != 0
    || v6 == 0xD000000000000032 && 0x80000001BA4FFAD0 == v8
    || (sub_1BA4A8338() & 1) != 0
    || v6 == 0xD000000000000027 && 0x80000001BA4FFB10 == v8
    || (sub_1BA4A8338() & 1) != 0
    || v6 == 0xD000000000000024 && 0x80000001BA4FFB40 == v8
    || (sub_1BA4A8338() & 1) != 0
    || v6 == 0xD000000000000033 && 0x80000001BA4FFB70 == v8
    || (sub_1BA4A8338() & 1) != 0
    || v6 == 0xD000000000000024 && 0x80000001BA4FFBB0 == v8
    || (sub_1BA4A8338() & 1) != 0
    || v6 == 0xD000000000000028 && 0x80000001BA4FFBE0 == v8
    || (sub_1BA4A8338() & 1) != 0
    || v6 == 0xD000000000000026 && 0x80000001BA4FFC10 == v8
    || (sub_1BA4A8338() & 1) != 0
    || v6 == 0xD000000000000024 && 0x80000001BA4FFC40 == v8
    || (sub_1BA4A8338() & 1) != 0
    || v6 == 0xD000000000000024 && 0x80000001BA4FFC70 == v8
    || (sub_1BA4A8338() & 1) != 0
    || v6 == 0xD000000000000026 && 0x80000001BA4FFCA0 == v8
    || (sub_1BA4A8338() & 1) != 0
    || v6 == 0xD000000000000037 && 0x80000001BA4FFCD0 == v8
    || (sub_1BA4A8338() & 1) != 0
    || v6 == 0xD000000000000026 && 0x80000001BA4FFD10 == v8
    || (sub_1BA4A8338() & 1) != 0
    || v6 == 0xD00000000000002CLL && 0x80000001BA4FFD40 == v8
    || (sub_1BA4A8338() & 1) != 0
    || v6 == 0xD00000000000002CLL && 0x80000001BA4FFD70 == v8
    || (sub_1BA4A8338() & 1) != 0
    || v6 == 0xD000000000000026 && 0x80000001BA4FFDA0 == v8
    || (sub_1BA4A8338() & 1) != 0
    || v6 == 0xD000000000000032 && 0x80000001BA4FFDD0 == v8
    || (sub_1BA4A8338() & 1) != 0
    || v6 == 0xD00000000000002DLL && 0x80000001BA4FFE10 == v8
    || (sub_1BA4A8338() & 1) != 0
    || v6 == 0xD000000000000023 && 0x80000001BA4FFE40 == v8
    || (sub_1BA4A8338() & 1) != 0
    || v6 == 0xD00000000000002FLL && 0x80000001BA4FFE70 == v8
    || (sub_1BA4A8338() & 1) != 0
    || v6 == 0xD000000000000029 && 0x80000001BA4FFEA0 == v8
    || (sub_1BA4A8338() & 1) != 0
    || v6 == 0xD00000000000002FLL && 0x80000001BA4FFED0 == v8
    || (sub_1BA4A8338() & 1) != 0
    || v6 == 0xD00000000000002ELL && 0x80000001BA4FFF00 == v8
    || (sub_1BA4A8338() & 1) != 0)
  {
    goto LABEL_612;
  }

  if (v6 == 0xD00000000000002ELL && 0x80000001BA4F73E0 == v8 || (sub_1BA4A8338() & 1) != 0 || v6 == 0xD000000000000033 && 0x80000001BA4E9340 == v8 || (sub_1BA4A8338() & 1) != 0)
  {

    v12 = 0x80000001BA4F7490;
    v13 = a1;
    v14 = v22;
    return HKTDataTypeDetailFactory.createViewController(hkType:pluginName:context:)(v13, v14, v12, a2);
  }

  if (v6 == 0xD00000000000001DLL && 0x80000001BA4FFF30 == v8 || (sub_1BA4A8338() & 1) != 0 || v6 == 0xD000000000000032 && 0x80000001BA4FFF50 == v8 || (sub_1BA4A8338() & 1) != 0 || v6 == 0xD00000000000002ELL && 0x80000001BA4FFF90 == v8 || (sub_1BA4A8338() & 1) != 0 || v6 == 0xD00000000000002ALL && 0x80000001BA4E92A0 == v8 || (sub_1BA4A8338() & 1) != 0 || v6 == 0xD000000000000033 && 0x80000001BA4E92D0 == v8 || (sub_1BA4A8338() & 1) != 0)
  {

    v12 = 0x80000001BA4F74D0;
    v13 = a1;
    v14 = 0xD00000000000001DLL;
    return HKTDataTypeDetailFactory.createViewController(hkType:pluginName:context:)(v13, v14, v12, a2);
  }

  if (v6 == 0xD000000000000021 && 0x80000001BA4FFFC0 == v8 || (sub_1BA4A8338() & 1) != 0 || v6 == 0xD000000000000028 && 0x80000001BA4FFFF0 == v8 || (sub_1BA4A8338() & 1) != 0 || v6 == v22 && 0x80000001BA4F7410 == v8 || (sub_1BA4A8338() & 1) != 0 || v6 == 0xD000000000000030 && 0x80000001BA500020 == v8 || (sub_1BA4A8338() & 1) != 0 || v6 == 0xD00000000000002ALL && 0x80000001BA4E9200 == v8 || (sub_1BA4A8338() & 1) != 0 || v6 == 0xD000000000000025 && 0x80000001BA500060 == v8 || (sub_1BA4A8338() & 1) != 0 || v6 == 0xD000000000000029 && 0x80000001BA4E9230 == v8 || (sub_1BA4A8338() & 1) != 0 || v6 == 0xD000000000000031 && 0x80000001BA4E9260 == v8 || (sub_1BA4A8338() & 1) != 0 || v6 == 0xD00000000000002DLL && 0x80000001BA4E9310 == v8 || (sub_1BA4A8338() & 1) != 0 || v6 == 0xD000000000000030 && 0x80000001BA4F7430 == v8 || (sub_1BA4A8338() & 1) != 0)
  {
    goto LABEL_616;
  }

  if (v6 == 0xD000000000000021 && 0x80000001BA500090 == v8 || (sub_1BA4A8338() & 1) != 0 || v6 == 0xD000000000000035 && 0x80000001BA4F73A0 == v8 || (sub_1BA4A8338() & 1) != 0 || v6 == 0xD000000000000038 && 0x80000001BA4E9380 == v8 || (sub_1BA4A8338() & 1) != 0 || v6 == 0xD000000000000031 && 0x80000001BA4E93C0 == v8 || (sub_1BA4A8338() & 1) != 0 || v6 == 0xD000000000000030 && 0x80000001BA4E9400 == v8 || (sub_1BA4A8338() & 1) != 0 || v6 == 0xD000000000000031 && 0x80000001BA4E9440 == v8 || (sub_1BA4A8338() & 1) != 0)
  {

    v12 = 0x80000001BA4E9510;
    v13 = a1;
    v14 = 0xD000000000000025;
    return HKTDataTypeDetailFactory.createViewController(hkType:pluginName:context:)(v13, v14, v12, a2);
  }

  if (v6 == 0xD000000000000025 && 0x80000001BA5000C0 == v8 || (sub_1BA4A8338() & 1) != 0 || v6 == 0xD00000000000003ALL && 0x80000001BA4F7360 == v8 || (sub_1BA4A8338() & 1) != 0 || v6 == 0xD000000000000027 && 0x80000001BA4E9480 == v8 || (sub_1BA4A8338() & 1) != 0 || v6 == 0xD000000000000019 && 0x80000001BA5000F0 == v8 || (sub_1BA4A8338() & 1) != 0)
  {

    v12 = 0x80000001BA4E94E0;
    v13 = a1;
    v14 = 0xD000000000000021;
    return HKTDataTypeDetailFactory.createViewController(hkType:pluginName:context:)(v13, v14, v12, a2);
  }

  if (v6 == 0xD00000000000001DLL && 0x80000001BA500110 == v8 || (sub_1BA4A8338() & 1) != 0)
  {

    v15 = "lugin.healthplugin";
    v14 = 0xD000000000000029;
LABEL_619:
    v12 = v15 | 0x8000000000000000;
    v13 = a1;
    return HKTDataTypeDetailFactory.createViewController(hkType:pluginName:context:)(v13, v14, v12, a2);
  }

  if (v6 == 0xD000000000000015 && 0x80000001BA500130 == v8 || (sub_1BA4A8338() & 1) != 0 || v6 == 0xD000000000000024 && 0x80000001BA500150 == v8 || (sub_1BA4A8338() & 1) != 0 || v6 == 0xD000000000000024 && 0x80000001BA500180 == v8 || (sub_1BA4A8338() & 1) != 0)
  {

    v16 = "MentalHealthAppPlugin.healthplugin";
LABEL_608:
    v12 = (v16 - 32) | 0x8000000000000000;
    v13 = a1;
    v14 = 0xD000000000000022;
    return HKTDataTypeDetailFactory.createViewController(hkType:pluginName:context:)(v13, v14, v12, a2);
  }

  if (v6 == 0xD000000000000036 && 0x80000001BA5001B0 == v8 || (sub_1BA4A8338() & 1) != 0)
  {

    v17 = "MedicationsHealthAppPlugin.healthplugin";
LABEL_603:
    v12 = (v17 - 32) | 0x8000000000000000;
    v13 = a1;
    v14 = 0xD000000000000027;
    return HKTDataTypeDetailFactory.createViewController(hkType:pluginName:context:)(v13, v14, v12, a2);
  }

  if (v6 == 0xD000000000000028 && 0x80000001BA5001F0 == v8 || (sub_1BA4A8338() & 1) != 0)
  {

    v17 = "RespiratoryHealthAppPlugin.healthplugin";
    goto LABEL_603;
  }

  if (v6 == 0xD000000000000022 && 0x80000001BA500220 == v8 || (sub_1BA4A8338() & 1) != 0)
  {

    v16 = "VisionHealthAppPlugin.healthplugin";
    goto LABEL_608;
  }

  if ((v6 != 0xD000000000000028 || 0x80000001BA500250 != v8) && (sub_1BA4A8338() & 1) == 0)
  {
    if (v6 != 0xD000000000000029 || 0x80000001BA4E94B0 != v8)
    {
      v19 = sub_1BA4A8338();

      if ((v19 & 1) == 0)
      {
        sub_1B9FCB51C();
        swift_allocError();
        *v20 = 0;
        *(v20 + 8) = 0;
        *(v20 + 16) = 3;
        return swift_willThrow();
      }

      goto LABEL_618;
    }

LABEL_616:

LABEL_618:
    v15 = "brillationBurden";
    v14 = 0xD000000000000012;
    goto LABEL_619;
  }

LABEL_612:

  v21[3] = &type metadata for StandardWithChartDataTypeDetailConfigurationProvider;
  v21[4] = &protocol witness table for StandardWithChartDataTypeDetailConfigurationProvider;
  v18 = HKTDataTypeDetailFactory.createViewController(hkType:configurationProvider:context:)(a1, v21, a2);
  result = __swift_destroy_boxed_opaque_existential_1(v21);
  if (!v2)
  {
    return v18;
  }

  return result;
}

uint64_t HKTDataTypeDetailFactory.makeViewController(measure:context:)(void *a1)
{
  v2 = sub_1BA4A1A48();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BA4A1A88();
  (*(v3 + 8))(v5, v2);
  sub_1B9FCB51C();
  swift_allocError();
  *v6 = 0;
  *(v6 + 8) = 0;
  *(v6 + 16) = 3;
  return swift_willThrow();
}

id PDFImage.caption.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v3;
  return v2;
}

void *PDFImage.tintColor.getter()
{
  v1 = *(v0 + 80);
  v2 = v1;
  return v1;
}

void PDFImage.init(image:caption:isRounded:cornerRadius:maxWidth:padding:tintColor:)(uint64_t a1@<X0>, void *a2@<X2>, char a3@<W3>, uint64_t a4@<X4>, char a5@<W5>, uint64_t a6@<X6>, uint64_t a7@<X8>, double a8@<D0>, double a9@<D1>, double a10@<D2>, double a11@<D3>, double a12@<D4>)
{
  v20 = a2;
  if (a2)
  {
    v26 = a6;
    _s18HealthExperienceUI11PDFDefaultsO4TextO17captionAttributesSDySo21NSAttributedStringKeyaypGvgZ_0();
    v23 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
    v24 = sub_1BA4A6758();

    type metadata accessor for Key(0);
    sub_1BA0262E4();
    v25 = sub_1BA4A6618();

    v20 = [v23 initWithString:v24 attributes:v25];

    a6 = v26;
  }

  *a7 = v20;
  *(a7 + 8) = 0;
  *(a7 + 16) = a1;
  *(a7 + 24) = a4;
  *(a7 + 32) = a5 & 1;
  *(a7 + 33) = a3 & 1;
  *(a7 + 40) = a8;
  *(a7 + 48) = a9;
  *(a7 + 56) = a10;
  *(a7 + 64) = a11;
  *(a7 + 72) = a12;
  *(a7 + 80) = a6;
}

void PDFImage.render(context:document:)(objc_class *a1, uint64_t a2)
{
  v3 = v2;
  v6 = v2[4];
  v85 = v2[3];
  v86 = v6;
  v7 = v2[2];
  v83 = v2[1];
  v84 = v7;
  v87 = *(v2 + 10);
  v82 = *v2;
  v75 = v6;
  v77 = *(&v85 + 1);
  v88.origin.x = PDFBuilder.Document.drawingContext.getter();
  x = v88.origin.x;
  y = v88.origin.y;
  width = v88.size.width;
  height = v88.size.height;
  v12 = CGRectGetMinX(v88) + 0.0;
  v89.origin.x = x;
  v89.origin.y = y;
  v89.size.width = width;
  v89.size.height = height;
  v13 = *&v85 + CGRectGetMinY(v89);
  v90.origin.x = x;
  v90.origin.y = y;
  v90.size.width = width;
  v90.size.height = height;
  v14 = CGRectGetWidth(v90);
  v91.origin.x = x;
  v15 = v12;
  v91.origin.y = y;
  v91.size.width = width;
  v91.size.height = height;
  v16 = CGRectGetHeight(v91) - *&v85;
  *(a2 + 168) = v12;
  *(a2 + 176) = v13;
  *(a2 + 184) = v14;
  *(a2 + 192) = v16;
  *(a2 + 200) = 0;
  if (v84)
  {
    v17 = v12;
    v18 = v13;
    v19 = v14;
    v20 = CGRectGetWidth(*(&v16 - 3));
  }

  else
  {
    v20 = *(&v83 + 1);
  }

  v21 = v77 + v13;
  v22 = v83;
  v23 = v20 - v77 - *(&v75 + 1);
  [v83 size];
  v25 = v23 / v24;
  [v83 size];
  v27 = v25 * v26;
  v28 = BYTE1(v84);
  v29 = v87;
  if ((BYTE1(v84) & 1) != 0 || v87)
  {
    v31 = [objc_allocWithZone(MEMORY[0x1E69DCA78]) initWithSize_];
    v32 = swift_allocObject();
    v33 = v3[3];
    *(v32 + 88) = v3[2];
    *(v32 + 104) = v33;
    *(v32 + 120) = v3[4];
    v34 = v3[1];
    *(v32 + 56) = *v3;
    *(v32 + 16) = v28;
    *(v32 + 24) = v15;
    *(v32 + 32) = v21;
    *(v32 + 40) = v23;
    *(v32 + 48) = v27;
    v35 = *(v3 + 10);
    *(v32 + 72) = v34;
    *(v32 + 136) = v35;
    *(v32 + 144) = v29;
    *(v32 + 152) = v22;
    v36 = swift_allocObject();
    *(v36 + 16) = sub_1BA3264F0;
    *(v36 + 24) = v32;
    aBlock[4] = sub_1BA1419A0;
    aBlock[5] = v36;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1BA20E308;
    aBlock[3] = &block_descriptor_87;
    v37 = _Block_copy(aBlock);
    sub_1BA326508(&v82, v80);
    v38 = v29;
    v39 = v22;

    v30 = [v31 imageWithActions_];

    _Block_release(v37);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
      return;
    }
  }

  else
  {
    v30 = v83;
  }

  [v30 drawInRect_];
  v92.origin.x = v15;
  v92.origin.y = v21;
  v92.size.width = v23;
  v92.size.height = v27;
  v41 = CGRectGetHeight(v92);
  v76 = v27;
  v78 = v21;
  v73 = v23;
  v74 = v15;
  v42 = *(a2 + 168);
  v43 = *(a2 + 176);
  v44 = *(a2 + 184);
  v45 = *(a2 + 192);
  v93.origin.x = v42;
  v93.origin.y = v43;
  v93.size.width = v44;
  v93.size.height = v45;
  v46 = CGRectGetMinX(v93) + 0.0;
  v94.origin.x = v42;
  v94.origin.y = v43;
  v94.size.width = v44;
  v94.size.height = v45;
  v47 = v41 + CGRectGetMinY(v94);
  v95.origin.x = v42;
  v95.origin.y = v43;
  v95.size.width = v44;
  v95.size.height = v45;
  v48 = CGRectGetWidth(v95);
  v96.origin.x = v42;
  v96.origin.y = v43;
  v96.size.width = v44;
  v96.size.height = v45;
  v49 = CGRectGetHeight(v96) - v41;
  *(a2 + 168) = v46;
  *(a2 + 176) = v47;
  *(a2 + 184) = v48;
  *(a2 + 192) = v49;
  *(a2 + 200) = 0;
  if (v82)
  {
    v50 = WORD4(v82);
    v51 = v82;
    v97.origin.x = v46;
    v97.origin.y = v47;
    v97.size.width = v48;
    v97.size.height = v49;
    v52 = CGRectGetMinX(v97) + 0.0;
    v98.origin.x = v46;
    v98.origin.y = v47;
    v98.size.width = v48;
    v98.size.height = v49;
    v53 = CGRectGetMinY(v98) + 3.0;
    v99.origin.x = v46;
    v99.origin.y = v47;
    v99.size.width = v48;
    v99.size.height = v49;
    v54 = CGRectGetWidth(v99);
    v100.origin.x = v46;
    v100.origin.y = v47;
    v100.size.width = v48;
    v100.size.height = v49;
    v55 = CGRectGetHeight(v100);
    *(a2 + 168) = v52;
    *(a2 + 176) = v53;
    *(a2 + 184) = v54;
    *(a2 + 192) = v55 + -3.0;
    *(a2 + 200) = 0;
    v101.size.width = v73;
    v101.origin.x = v74;
    v101.size.height = v76;
    v101.origin.y = v78;
    v56 = CGRectGetWidth(v101);
    type metadata accessor for PDFBuilder.Document();
    swift_allocObject();
    v57 = sub_1BA20F244(a2);
    PDFBuilder.Document.constrainDrawingContext(height:width:)(0, 1, v56, 0);
    v58.super.super.isa = a1;
    sub_1BA325FCC(v58, v57, v51, v50 & 0x101);
    v102.origin.x = PDFBuilder.Document.drawingContext.getter();
    [v51 boundingRectWithSize:1 options:0 context:{CGRectGetWidth(v102), INFINITY}];
    v59 = v103.origin.x;
    v60 = v103.origin.y;
    v61 = v103.size.width;
    v62 = v103.size.height;
    v63 = CGRectGetWidth(v103);
    v104.origin.x = v59;
    v104.origin.y = v60;
    v104.size.width = v61;
    v104.size.height = v62;
    v105.size.height = ceil(CGRectGetHeight(v104));
    v105.origin.x = *(v57 + 168);
    v105.origin.y = *(v57 + 176);
    v105.size.width = v63;
    v64 = CGRectGetHeight(v105);
    v65 = *(a2 + 168);
    v66 = *(a2 + 176);
    v67 = *(a2 + 184);
    v68 = *(a2 + 192);
    v106.origin.x = v65;
    v106.origin.y = v66;
    v106.size.width = v67;
    v106.size.height = v68;
    v46 = CGRectGetMinX(v106) + 0.0;
    v107.origin.x = v65;
    v107.origin.y = v66;
    v107.size.width = v67;
    v107.size.height = v68;
    v47 = v64 + CGRectGetMinY(v107);
    v108.origin.x = v65;
    v108.origin.y = v66;
    v108.size.width = v67;
    v108.size.height = v68;
    v48 = CGRectGetWidth(v108);
    v109.origin.x = v65;
    v109.origin.y = v66;
    v109.size.width = v67;
    v109.size.height = v68;
    v69 = CGRectGetHeight(v109);

    v49 = v69 - v64;
    *(a2 + 168) = v46;
    *(a2 + 176) = v47;
    *(a2 + 184) = v48;
    *(a2 + 192) = v69 - v64;
    *(a2 + 200) = 0;
  }

  v110.origin.x = v46;
  v110.origin.y = v47;
  v110.size.width = v48;
  v110.size.height = v49;
  v79 = CGRectGetMinX(v110) + 0.0;
  v111.origin.x = v46;
  v111.origin.y = v47;
  v111.size.width = v48;
  v111.size.height = v49;
  v70 = *&v75 + CGRectGetMinY(v111);
  v112.origin.x = v46;
  v112.origin.y = v47;
  v112.size.width = v48;
  v112.size.height = v49;
  v71 = CGRectGetWidth(v112);
  v113.origin.x = v46;
  v113.origin.y = v47;
  v113.size.width = v48;
  v113.size.height = v49;
  v72 = CGRectGetHeight(v113);

  *(a2 + 168) = v79;
  *(a2 + 176) = v70;
  *(a2 + 184) = v71;
  *(a2 + 192) = v72 - *&v75;
  *(a2 + 200) = 0;
}

double PDFImage.imageSize(for:)()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 56);
  v3 = *(v0 + 72);
  if (*(v0 + 32))
  {
    v7.origin.x = PDFBuilder.Document.drawingContext.getter();
    Width = CGRectGetWidth(v7);
  }

  else
  {
    Width = *(v0 + 24);
  }

  v5 = Width - v2 - v3;
  [v1 size];
  [v1 size];
  return v5;
}

void sub_1BA325FCC(UIGraphicsPDFRendererContext a1, uint64_t a2, void *a3, __int16 a4)
{
  v5 = HIBYTE(a4) & 1;
  if (*(a2 + 96) == (a4 & 1))
  {
    v25 = HIBYTE(a4) & 1;
    sub_1BA49C858(a1, a2, 0, &v25);
  }

  else
  {
    type metadata accessor for PDFBuilder.Document();
    swift_initStackObject();
    v8 = sub_1BA20F244(a2);
    v26.origin.x = PDFBuilder.Document.drawingContext.getter();
    Width = CGRectGetWidth(v26);
    [a3 boundingRectWithSize:1 options:0 context:{CGRectGetWidth(*(v8 + 168)), INFINITY}];
    x = v27.origin.x;
    y = v27.origin.y;
    v12 = v27.size.width;
    height = v27.size.height;
    v14 = CGRectGetWidth(v27);
    v28.origin.x = x;
    v28.origin.y = y;
    v28.size.width = v12;
    v28.size.height = height;
    v29.size.height = ceil(CGRectGetHeight(v28));
    v29.origin.x = *(v8 + 168);
    v29.origin.y = *(v8 + 176);
    v29.size.width = v14;
    v15 = Width - CGRectGetWidth(v29) + -1.0;
    v16 = *(v8 + 168);
    v17 = *(v8 + 176);
    v18 = *(v8 + 184);
    v19 = *(v8 + 192);
    v30.origin.x = v16;
    v30.origin.y = v17;
    v30.size.width = v18;
    v30.size.height = v19;
    v20 = v15 + CGRectGetMinX(v30);
    v31.origin.x = v16;
    v31.origin.y = v17;
    v31.size.width = v18;
    v31.size.height = v19;
    v21 = CGRectGetMinY(v31) + 0.0;
    v32.origin.x = v16;
    v32.origin.y = v17;
    v32.size.width = v18;
    v32.size.height = v19;
    v22 = CGRectGetWidth(v32) - v15;
    v33.origin.x = v16;
    v33.origin.y = v17;
    v33.size.width = v18;
    v33.size.height = v19;
    v23 = CGRectGetHeight(v33);
    *(v8 + 168) = v20;
    *(v8 + 176) = v21;
    *(v8 + 184) = v22;
    *(v8 + 192) = v23;
    *(v8 + 200) = 0;
    v25 = v5;
    v24.super.super.isa = a1.super.super.isa;
    sub_1BA49C858(v24, v8, a2, &v25);
  }
}

void sub_1BA3261A4(void *a1, char a2, uint64_t a3, void *a4, id a5, double a6, double a7, CGFloat a8, CGFloat a9)
{
  if (a2)
  {
    v14 = [objc_opt_self() bezierPathWithRoundedRect:0.0 cornerRadius:{0.0, a8, a9, *(a3 + 40)}];
    [v14 addClip];
  }

  if (a4)
  {
    v15 = a4;
    [v15 setFill];
    [a5 drawInRect_];
    v16 = [a1 CGContext];
    CGContextSetBlendMode(v16, kCGBlendModeSourceIn);

    v17 = [a1 CGContext];
    v19.origin.x = 0.0;
    v19.origin.y = 0.0;
    v19.size.width = a8;
    v19.size.height = a9;
    CGContextFillRect(v17, v19);
  }

  else
  {

    [a5 drawInRect_];
  }
}

void PDFImage.boundingRectForContent(in:)(uint64_t a1)
{
  v3 = *v1;
  v4 = *(v1 + 16);
  v5 = *(v1 + 56);
  v6 = *(v1 + 72);
  if (*(v1 + 32))
  {
    v19.origin.x = PDFBuilder.Document.drawingContext.getter();
    Width = CGRectGetWidth(v19);
  }

  else
  {
    Width = *(v1 + 24);
  }

  v8 = Width - v5 - v6;
  [v4 size];
  [v4 size];
  if (v3)
  {
    type metadata accessor for PDFBuilder.Document();
    swift_initStackObject();
    v9 = sub_1BA20F244(a1);
    v10 = v3;
    PDFBuilder.Document.constrainDrawingContext(height:width:)(0, 1, *&v8, 0);
    v20.origin.x = PDFBuilder.Document.drawingContext.getter();
    [v10 boundingRectWithSize:1 options:0 context:{CGRectGetWidth(v20), INFINITY}];
    x = v21.origin.x;
    y = v21.origin.y;
    v13 = v21.size.width;
    height = v21.size.height;
    v15 = CGRectGetWidth(v21);
    v22.origin.x = x;
    v22.origin.y = y;
    v22.size.width = v13;
    v22.size.height = height;
    v16 = ceil(CGRectGetHeight(v22));
    v17 = *(v9 + 168);
    v18 = *(v9 + 176);

    v23.origin.x = v17;
    v23.origin.y = v18;
    v23.size.width = v15;
    v23.size.height = v16;
    CGRectGetHeight(v23);
  }

  PDFBuilder.Document.drawingContext.getter();
}

uint64_t sub_1BA326540(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
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

uint64_t sub_1BA326588(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1BA326634(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  if (v2 < 2)
  {
    return v1;
  }

  v3 = 0;
  v4 = v2 >> 1;
  v5 = v2 - 1;
  v6 = 40 * v2 - 8;
  for (i = 4; ; i += 5)
  {
    if (v3 == v5)
    {
      goto LABEL_5;
    }

    v8 = v1[2];
    if (v3 >= v8)
    {
      break;
    }

    result = sub_1B9F0A534(&v1[i], v10);
    if (v5 >= v8)
    {
      goto LABEL_14;
    }

    sub_1B9F0A534(v1 + v6, v9);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v1 = sub_1BA2F67FC(v1);
    }

    __swift_destroy_boxed_opaque_existential_1(&v1[i]);
    result = sub_1B9F25598(v9, &v1[i]);
    if (v5 >= v1[2])
    {
      goto LABEL_15;
    }

    __swift_destroy_boxed_opaque_existential_1(v1 + v6);
    result = sub_1B9F25598(v10, v1 + v6);
LABEL_5:
    ++v3;
    --v5;
    v6 -= 40;
    if (v4 == v3)
    {
      return v1;
    }
  }

  __break(1u);
LABEL_14:
  __break(1u);
LABEL_15:
  __break(1u);
  return result;
}

unint64_t sub_1BA3267D0(uint64_t a1, uint64_t (*a2)(uint64_t, void), void (*a3)(unint64_t, uint64_t, uint64_t), uint64_t (*a4)(unint64_t))
{
  if (!(a1 >> 62))
  {
    v5 = a1 & 0xFFFFFFFFFFFFFF8;
    goto LABEL_3;
  }

  while (1)
  {
    v22 = a2;
    v23 = a3;
    v24 = a1;
    v25 = sub_1BA4A7CC8();
    if (v25)
    {
      v26 = v25;
      v5 = v22(v25, 0);
      v23(v5 + 32, v26, v24);
      v28 = v27;

      if (v28 != v26)
      {
        __break(1u);
        goto LABEL_38;
      }

      goto LABEL_3;
    }

    while (1)
    {

      v5 = MEMORY[0x1E69E7CC0];
LABEL_3:
      if ((v5 & 0x8000000000000000) == 0 && (v5 & 0x4000000000000000) == 0)
      {
        v6 = *(v5 + 16);
        v7 = v6 >> 1;
        goto LABEL_6;
      }

LABEL_38:
      a1 = sub_1BA4A7CC8();
      if (a1 >= -1)
      {
        break;
      }

      __break(1u);
    }

    v6 = a1;
    v7 = a1 / 2;
LABEL_6:
    if (v6 + 1 < 3)
    {
      return v5;
    }

    v9 = -v7;
    v10 = 4;
    while (1)
    {
      v11 = v6 - (v10 - 3);
      if (__OFSUB__(v6, v10 - 3))
      {
        break;
      }

      a1 = v10 - 4;
      if (v10 - 4 != v11)
      {
        if ((v5 & 0xC000000000000001) != 0)
        {
          v14 = MEMORY[0x1BFAF2860]();
          v15 = MEMORY[0x1BFAF2860](v6 - (v10 - 3), v5);
        }

        else
        {
          if (a1 < 0)
          {
            goto LABEL_31;
          }

          v12 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (a1 >= v12)
          {
            goto LABEL_32;
          }

          if (v11 >= v12)
          {
            goto LABEL_33;
          }

          v13 = *(v5 + 8 * v11 + 32);
          v14 = *(v5 + 8 * v10);
          v15 = v13;
        }

        v16 = v15;
        if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v5 & 0x8000000000000000) != 0 || (v5 & 0x4000000000000000) != 0)
        {
          v5 = a4(v5);
          v17 = (v5 >> 62) & 1;
        }

        else
        {
          LODWORD(v17) = 0;
        }

        v18 = v5 & 0xFFFFFFFFFFFFFF8;
        v19 = *((v5 & 0xFFFFFFFFFFFFFF8) + 8 * v10);
        *((v5 & 0xFFFFFFFFFFFFFF8) + 8 * v10) = v16;

        if ((v5 & 0x8000000000000000) != 0 || v17)
        {
          a1 = a4(v5);
          v5 = a1;
          v18 = a1 & 0xFFFFFFFFFFFFFF8;
          if ((v11 & 0x8000000000000000) != 0)
          {
LABEL_29:
            __break(1u);
            break;
          }
        }

        else if ((v11 & 0x8000000000000000) != 0)
        {
          goto LABEL_29;
        }

        if (v11 >= *(v18 + 16))
        {
          goto LABEL_34;
        }

        v20 = v18 + 8 * v11;
        v21 = *(v20 + 32);
        *(v20 + 32) = v14;
      }

      ++v10;
      if (v9 + v10 == 4)
      {
        return v5;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
  }
}

uint64_t sub_1BA3269FC(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  if (v2 < 2)
  {
    return v1;
  }

  v3 = v2 >> 1;
  v4 = v2 + 3;
  for (i = 4; ; ++i)
  {
    if (i == v4)
    {
      goto LABEL_5;
    }

    v6 = *(v1 + 16);
    if (i - 4 >= v6)
    {
      break;
    }

    if (v4 - 4 >= v6)
    {
      goto LABEL_12;
    }

    v7 = *(v1 + 8 * i);
    v8 = *(v1 + 8 * v4);
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1BA2F684C(v1);
      v1 = result;
    }

    *(v1 + 8 * i) = v8;
    *(v1 + 8 * v4) = v7;
LABEL_5:
    --v4;
    if (!--v3)
    {
      return v1;
    }
  }

  __break(1u);
LABEL_12:
  __break(1u);
  return result;
}

__n128 PDFHStack.init(config:content:)@<Q0>(uint64_t a1@<X0>, unint64_t a2@<X1>, __n128 *a3@<X8>)
{
  v3 = *a1;
  a3->n128_u64[0] = a2;
  a3->n128_u64[1] = v3;
  result = *(a1 + 8);
  a3[1] = result;
  return result;
}

id PDFHStack.Config.separator.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = *(v1 + 8);
  *a1 = v2;
  return v2;
}

uint64_t PDFHStack.Config.SeparatorConfig.init(color:lineWidth:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  *a2 = result;
  *(a2 + 8) = a3;
  return result;
}

__n128 PDFHStack.Config.init(columnSpacing:separator:)@<Q0>(__n128 *a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  *a2 = a3;
  result = *a1;
  *(a2 + 8) = *a1;
  return result;
}

id PDFHStack.config.getter@<X0>(uint64_t a1@<X8>)
{
  *a1 = *(v1 + 8);
  v2 = *(v1 + 16);
  *(a1 + 8) = v2;
  return v2;
}

uint64_t PDFHStack.init(config:_:)@<X0>(uint64_t *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t *a3@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  result = a2();
  *a3 = result;
  a3[1] = v4;
  a3[2] = v5;
  a3[3] = v6;
  return result;
}

void PDFHStack.render(context:document:)(void *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(v2 + 8);
  v7 = *(v2 + 16);
  v8 = *(v2 + 24);
  v9 = *(a2 + 96);

  v46 = v5;
  if (v9 == 1)
  {
    v46 = sub_1BA326634(v5);
  }

  *&v51 = v5;
  *(&v51 + 1) = v6;
  v44 = v8;
  v45 = v7;
  *&v52 = v7;
  *(&v52 + 1) = v8;
  PDFHStack.boundingRectForContent(in:)(a2);
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v54.origin.x = PDFBuilder.Document.drawingContext.getter();
  v61.origin.x = v11;
  v61.origin.y = v13;
  v61.size.width = v15;
  v61.size.height = v17;
  if (!CGRectContainsRect(v54, v61))
  {
    PDFBuilder.Document.moveToNextDrawableRegion(in:)(a1);
  }

  v18 = 0;
  v19 = *(v46 + 16);
  v20 = 0.0;
  while (1)
  {
    v21 = 0uLL;
    v22 = v19;
    v23 = 0uLL;
    v24 = 0uLL;
    if (v18 != v19)
    {
      if (v18 >= *(v46 + 16))
      {
        __break(1u);
        return;
      }

      v22 = v18 + 1;
      *&v48 = v18;
      sub_1B9F0A534(v46 + 32 + 40 * v18, &v48 + 8);
      v21 = v48;
      v23 = v49;
      v24 = v50;
    }

    v51 = v21;
    v52 = v23;
    v53 = v24;
    if (!v24)
    {
      break;
    }

    v47 = v21;
    sub_1B9F25598((&v51 + 8), &v48);
    type metadata accessor for PDFBuilder.Document();
    swift_allocObject();
    v25 = sub_1BA20F244(a2);
    v26 = (CGRectGetWidth(*(a2 + 168)) - v6 * (*(v5 + 16) + -1.0)) / *(v5 + 16);
    v55.origin.x = PDFBuilder.Document.drawingContext.getter();
    v27 = CGRectGetMinX(v55) + v6 * v47 + v26 * v47;
    MinY = CGRectGetMinY(*(v25 + 168));
    Height = CGRectGetHeight(*(v25 + 168));
    *(v25 + 168) = v27;
    *(v25 + 176) = MinY;
    *(v25 + 184) = v26;
    *(v25 + 192) = Height;
    *(v25 + 200) = 0;
    v30 = *(&v49 + 1);
    v31 = v50;
    __swift_project_boxed_opaque_existential_1(&v48, *(&v49 + 1));
    (*(v31 + 16))(a1, v25, v30, v31);
    v32 = *(&v49 + 1);
    v33 = v50;
    __swift_project_boxed_opaque_existential_1(&v48, *(&v49 + 1));
    v56.origin.x = (*(v33 + 24))(v25, v32, v33);
    v34 = CGRectGetHeight(v56);

    if (v20 < v34)
    {
      v20 = v34;
    }

    __swift_destroy_boxed_opaque_existential_1(&v48);
    v18 = v22;
  }

  if (v45)
  {
    *&v51 = v5;
    *(&v51 + 1) = v6;
    *&v52 = v45;
    *(&v52 + 1) = v44;
    *&v48 = v45;
    *(&v48 + 1) = v44;
    v35 = v45;
    sub_1BA327210(&v48, a1, a2, v20);
  }

  v36 = *(a2 + 168);
  v37 = *(a2 + 176);
  v38 = *(a2 + 184);
  v39 = *(a2 + 192);
  v57.origin.x = v36;
  v57.origin.y = v37;
  v57.size.width = v38;
  v57.size.height = v39;
  v40 = CGRectGetMinX(v57) + 0.0;
  v58.origin.x = v36;
  v58.origin.y = v37;
  v58.size.width = v38;
  v58.size.height = v39;
  v41 = v20 + CGRectGetMinY(v58);
  v59.origin.x = v36;
  v59.origin.y = v37;
  v59.size.width = v38;
  v59.size.height = v39;
  Width = CGRectGetWidth(v59);
  v60.origin.x = v36;
  v60.origin.y = v37;
  v60.size.width = v38;
  v60.size.height = v39;
  v43 = CGRectGetHeight(v60);
  *(a2 + 168) = v40;
  *(a2 + 176) = v41;
  *(a2 + 184) = Width;
  *(a2 + 192) = v43 - v20;
  *(a2 + 200) = 0;
}

void PDFHStack.boundingRectForContent(in:)(uint64_t a1)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = *(a1 + 96);

  v6 = v3;
  if (v5 == 1)
  {
    v6 = sub_1BA326634(v3);
  }

  v7 = 0;
  v8 = *(v6 + 16);
  v9 = 0.0;
  while (1)
  {
    v10 = 0uLL;
    v11 = v8;
    v12 = 0uLL;
    v13 = 0uLL;
    if (v7 == v8)
    {
      goto LABEL_7;
    }

    if (v7 >= *(v6 + 16))
    {
      break;
    }

    v11 = v7 + 1;
    *&v23 = v7;
    sub_1B9F0A534(v6 + 32 + 40 * v7, &v23 + 8);
    v10 = v23;
    v12 = v24;
    v13 = v25;
LABEL_7:
    v26[0] = v10;
    v26[1] = v12;
    v26[2] = v13;
    if (!v13)
    {

      PDFBuilder.Document.drawingContext.getter();
      CGRectGetWidth(*(a1 + 168));
      return;
    }

    v22 = v10;
    sub_1B9F25598((v26 + 8), &v23);
    type metadata accessor for PDFBuilder.Document();
    swift_allocObject();
    v14 = sub_1BA20F244(a1);
    v27.origin.x = PDFBuilder.Document.drawingContext.getter();
    v15 = (CGRectGetWidth(v27) - v4 * (*(v3 + 16) + -1.0)) / *(v3 + 16);
    v28.origin.x = PDFBuilder.Document.drawingContext.getter();
    v16 = CGRectGetMinX(v28) + v4 * v22 + v15 * v22;
    MinY = CGRectGetMinY(*(v14 + 168));
    Height = CGRectGetHeight(*(v14 + 168));
    *(v14 + 168) = v16;
    *(v14 + 176) = MinY;
    *(v14 + 184) = v15;
    *(v14 + 192) = Height;
    *(v14 + 200) = 0;
    v19 = *(&v24 + 1);
    v20 = v25;
    __swift_project_boxed_opaque_existential_1(&v23, *(&v24 + 1));
    v29.origin.x = (*(v20 + 24))(v14, v19, v20);
    v21 = CGRectGetHeight(v29);

    if (v9 < v21)
    {
      v9 = v21;
    }

    __swift_destroy_boxed_opaque_existential_1(&v23);
    v7 = v11;
  }

  __break(1u);
}

uint64_t PDFHStack.documentForColumn(_:in:)(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = v2[1];
  type metadata accessor for PDFBuilder.Document();
  swift_allocObject();
  v7 = sub_1BA20F244(a2);
  v13.origin.x = PDFBuilder.Document.drawingContext.getter();
  v8 = (CGRectGetWidth(v13) - v6 * (*(*&v5 + 16) + -1.0)) / *(*&v5 + 16);
  v14.origin.x = PDFBuilder.Document.drawingContext.getter();
  v9 = CGRectGetMinX(v14) + v6 * a1 + v8 * a1;
  MinY = CGRectGetMinY(*(v7 + 168));
  Height = CGRectGetHeight(*(v7 + 168));
  *(v7 + 168) = v9;
  *(v7 + 176) = MinY;
  *(v7 + 184) = v8;
  *(v7 + 192) = Height;
  *(v7 + 200) = 0;
  return v7;
}

uint64_t sub_1BA327210(uint64_t a1, void *a2, uint64_t a3, double a4)
{
  color = *a1;
  v7 = *v4;
  v46 = *(v4 + 8);
  width = *(a1 + 8);
  v8 = *(a3 + 96);

  v9 = v7;
  if (v8 == 1)
  {
    v9 = sub_1BA326634(v7);
  }

  if (*(v9 + 16) < 2uLL)
  {
  }

  v10 = [a2 CGContext];
  result = sub_1BA1F36C0(1uLL, v9);
  v44 = v12;
  v14 = v13;
  v15 = 0;
  v17 = v16 >> 1;
  v45 = v13;
  while (1)
  {
    v18 = 0uLL;
    if (v14 == v17)
    {
      v14 = v17;
      v19 = 0uLL;
      v20 = 0uLL;
      goto LABEL_11;
    }

    if (v14 < v45 || v14 >= v17)
    {
      break;
    }

    *&v51 = v15;
    result = sub_1B9F0A534(v44 + 40 * v14, &v51 + 8);
    if (__OFADD__(v15++, 1))
    {
      goto LABEL_20;
    }

    ++v14;
    v18 = v51;
    v19 = v52;
    v20 = v53;
LABEL_11:
    v54[0] = v18;
    v54[1] = v19;
    v54[2] = v20;
    if (!v20)
    {

      return swift_unknownObjectRelease();
    }

    v50 = v18;
    sub_1B9F25598((v54 + 8), &v51);
    type metadata accessor for PDFBuilder.Document();
    swift_allocObject();
    v22 = sub_1BA20F244(a3);
    v56.origin.x = PDFBuilder.Document.drawingContext.getter();
    v23 = (CGRectGetWidth(v56) - v46 * (*(v7 + 16) + -1.0)) / *(v7 + 16);
    v57.origin.x = PDFBuilder.Document.drawingContext.getter();
    v24 = CGRectGetMinX(v57) + v46 * v50 + v23 * v50;
    MinY = CGRectGetMinY(*(v22 + 168));
    Height = CGRectGetHeight(*(v22 + 168));
    *(v22 + 168) = v24;
    *(v22 + 176) = MinY;
    *(v22 + 184) = v23;
    *(v22 + 192) = Height;
    *(v22 + 200) = 0;
    v27 = (CGRectGetWidth(*(a3 + 168)) - v46 * (*(v7 + 16) + -1.0)) / *(v7 + 16);
    v29 = *(&v52 + 1);
    v28 = v53;
    __swift_project_boxed_opaque_existential_1(&v51, *(&v52 + 1));
    v58.origin.x = (*(v28 + 24))(v22, v29, v28);
    v30 = CGRectGetWidth(v58);
    v31 = v27 - v30;
    if (v27 - v30 <= 0.0)
    {
      v31 = 0.0;
    }

    v32 = v30 + (v46 + v31) * 0.5;
    CGContextSaveGState(v10);
    v33 = *(v22 + 168);
    v34 = *(v22 + 176);
    v35 = *(v22 + 184);
    v36 = *(v22 + 192);
    v59.origin.x = v33;
    v59.origin.y = v34;
    v59.size.width = v35;
    v59.size.height = v36;
    v37 = CGRectGetMinX(v59) + 0.0;
    v60.origin.x = v33;
    v60.origin.y = v34;
    v60.size.width = v35;
    v60.size.height = v36;
    v38 = CGRectGetMinY(v60) + 0.0;
    v61.origin.x = v33;
    v61.origin.y = v34;
    v61.size.width = v35;
    v61.size.height = v36;
    v39 = CGRectGetWidth(v61);
    v62.origin.x = v33;
    v62.origin.y = v34;
    v62.size.width = v35;
    v62.size.height = v36;
    v40 = CGRectGetHeight(v62);
    *(v22 + 168) = v37;
    *(v22 + 176) = v38;
    *(v22 + 184) = v39;
    *(v22 + 192) = v40;
    *(v22 + 200) = 0;
    CGContextSetLineWidth(v10, width);
    sub_1BA069EC4();
    v41 = swift_allocObject();
    *(v41 + 16) = xmmword_1BA4B5460;
    v42 = *(v22 + 176);
    v43 = v32 + *(v22 + 168);
    *(v41 + 32) = v43;
    *(v41 + 40) = v42;
    *(v41 + 48) = v43;
    *(v41 + 56) = v42 + a4;
    sub_1BA4A6F08();

    CGContextSetStrokeColorWithColor(v10, color);
    CGContextStrokePath(v10);
    CGContextRestoreGState(v10);

    result = __swift_destroy_boxed_opaque_existential_1(&v51);
  }

  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

CGFloat PDFHStack.columnWidth(in:)()
{
  v1 = *v0;
  v2 = v0[1];
  v4.origin.x = PDFBuilder.Document.drawingContext.getter();
  return (CGRectGetWidth(v4) - v2 * (*(*&v1 + 16) + -1.0)) / *(*&v1 + 16);
}

uint64_t sub_1BA3276F4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
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

uint64_t sub_1BA327750(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

char *DataTypeDetailViewController.init(dataSource:context:viewModel:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_1BA32AC20(a1, a2, a3);

  return v3;
}

uint64_t DataTypeDetailViewController.init(dataSource:context:hkType:)(uint64_t a1, uint64_t a2, void *a3)
{
  sub_1BA32A8A0(a1, a2, a3);
  v5 = v4;

  return v5;
}

uint64_t sub_1BA32786C()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC18HealthExperienceUI28DataTypeDetailViewController_viewModel;
  swift_beginAccess();
  sub_1B9F0A534(v1 + v2, v7);
  v3 = v8;
  v4 = v9;
  __swift_project_boxed_opaque_existential_1(v7, v8);
  v5 = (*(v4 + 56))(v3, v4);
  [v1 setUserActivity_];

  return __swift_destroy_boxed_opaque_existential_1(v7);
}

void sub_1BA327918()
{
  v1 = v0;
  sub_1B9F36938();
  v2 = [v0 collectionView];
  if (!v2)
  {
    __break(1u);
    goto LABEL_11;
  }

  v3 = v2;
  sub_1B9FF57C0();

  v4 = [v1 collectionView];
  if (!v4)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v5 = v4;
  sub_1B9F437FC();

  v6 = [v1 collectionView];
  if (!v6)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v7 = v6;
  sub_1B9FF5688();

  v8 = [v1 collectionView];
  if (!v8)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v9 = v8;
  sub_1B9FF5CD4();

  v10 = [v1 collectionView];
  if (!v10)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v11 = v10;
  sub_1B9FF56F0();

  v12 = [v1 collectionView];
  if (!v12)
  {
LABEL_15:
    __break(1u);
    return;
  }

  v13 = v12;
  sub_1B9FF5654();
}

uint64_t sub_1BA327A54@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI28DataTypeDetailViewController_context;
  swift_beginAccess();
  return sub_1BA114D9C(v1 + v3, a1);
}

id sub_1BA327AAC()
{
  v1 = objc_opt_self();
  v2 = v0 + OBJC_IVAR____TtC18HealthExperienceUI28DataTypeDetailViewController_context;
  swift_beginAccess();
  v3 = [v1 sharedInstanceForHealthStore_];

  return v3;
}

id sub_1BA327B28()
{
  v1 = v0 + OBJC_IVAR____TtC18HealthExperienceUI28DataTypeDetailViewController_context;
  swift_beginAccess();
  v2 = *(v1 + 40);

  return v2;
}

uint64_t sub_1BA327B80@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + OBJC_IVAR____TtC18HealthExperienceUI28DataTypeDetailViewController_context;
  swift_beginAccess();
  return sub_1B9F0A534(v3 + 64, a1);
}

void *sub_1BA327BD4()
{
  v1 = v0 + OBJC_IVAR____TtC18HealthExperienceUI28DataTypeDetailViewController_context;
  swift_beginAccess();
  v2 = *(v1 + 104);
  v3 = v2;
  return v2;
}

void sub_1BA327C24(uint64_t a1)
{
  v3 = v1 + OBJC_IVAR____TtC18HealthExperienceUI28DataTypeDetailViewController_context;
  swift_beginAccess();
  v4 = *(v3 + 104);
  *(v3 + 104) = a1;
}

uint64_t (*sub_1BA327C78(uint64_t *a1))()
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
  v5 = OBJC_IVAR____TtC18HealthExperienceUI28DataTypeDetailViewController_context;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  v7 = *(v6 + 104);
  *(v4 + 24) = v7;
  v8 = v7;
  return sub_1BA327D18;
}
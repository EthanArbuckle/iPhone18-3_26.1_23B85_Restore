id AppDelegate.init()()
{
  *&v0[OBJC_IVAR___TSAppDelegate____lazy_storage___containerManager] = 0;
  *&v0[OBJC_IVAR___TSAppDelegate____lazy_storage___container] = 0;
  v1 = &v0[OBJC_IVAR___TSAppDelegate____lazy_storage___resolver];
  *v1 = 0u;
  *(v1 + 1) = 0u;
  *(v1 + 4) = 0;
  *&v0[OBJC_IVAR___TSAppDelegate_window] = 0;
  v2 = &v0[OBJC_IVAR___TSAppDelegate____lazy_storage___menuManager];
  *v2 = 0;
  *(v2 + 1) = 0;
  v3 = &v0[OBJC_IVAR___TSAppDelegate____lazy_storage___commandCenter];
  *v3 = 0;
  *(v3 + 1) = 0;
  *&v0[OBJC_IVAR___TSAppDelegate____lazy_storage___tracker] = 0;
  v4 = OBJC_IVAR___TSAppDelegate_backgroundFetchSignal;
  sub_2186C5500(0, &qword_280EE7B20, MEMORY[0x277D839B0], MEMORY[0x277D6CB60]);
  swift_allocObject();
  *&v0[v4] = sub_219BE20D4();
  v5 = OBJC_IVAR___TSAppDelegate_remoteNotificationSignal;
  v8 = 0;
  swift_allocObject();
  *&v0[v5] = sub_219BE20D4();
  v7.receiver = v0;
  v7.super_class = type metadata accessor for AppDelegate();
  return objc_msgSendSuper2(&v7, sel_init);
}

void sub_2186C5500(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

id _s7NewsUI219TodayPrewarmManagerC07prewarmC07contextySo14FCCloudContextC_tFZ_0(void *a1)
{
  if (qword_280ECFB08 != -1)
  {
    swift_once();
  }

  sub_219BE1AA4();

  sub_219BE1AB4();

  sub_2186C574C(a1);
  sub_2186C675C(a1);
  if (!qword_280ECFAD8)
  {
    result = [a1 bundleSubscriptionManager];
    if (!result)
    {
      __break(1u);
      return result;
    }

    [result prepareForUseWithCompletion_];
    swift_unknownObjectRelease();
  }

  sub_219BE1AC4();
}

uint64_t sub_2186C56B8()
{
  v0 = sub_219BE1AE4();
  MEMORY[0x28223BE20](v0 - 8);
  sub_219BE1AD4();
  sub_219BE1B04();
  swift_allocObject();
  result = sub_219BE1AF4();
  qword_280ECFB10 = result;
  return result;
}

void sub_2186C574C(void *a1)
{
  sub_2186C5F60(0, &qword_280EE9C40, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v32 - v3;
  v5 = sub_219BDBD34();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280ECFB08 != -1)
  {
    swift_once();
  }

  sub_219BE1A94();

  v9 = sub_2186C5FC4();
  if (v9)
  {
    v10 = v9;
    v11 = [a1 appConfigurationManager];
    if ([v11 respondsToSelector_])
    {
      v12 = [v11 fetchedAppConfiguration];
      swift_unknownObjectRelease();
      v33 = v12;
      sub_2186C5F60(0, &unk_280E8E070, sub_2186C61E4, MEMORY[0x277D83D88]);
      sub_219BF6F84();
      swift_unknownObjectRelease();
      v13 = v32;
      if (v32)
      {
        sub_2186C6148(0, &unk_280E8DE30);
        sub_2186C6248(v4);
        if ((*(v6 + 48))(v4, 1, v5) == 1)
        {
          sub_2187B960C(v4, &qword_280EE9C40, MEMORY[0x277CC9578]);
        }

        else
        {
          (*(v6 + 32))(v8, v4, v5);
          sub_219BDC8D4();
          sub_219BDC8B4();
          if (qword_280EE9450 != -1)
          {
            swift_once();
          }

          sub_219BDC8A4();

          if ((v33 & 1) == 0)
          {
            sub_219BDBC64();
            v15 = v14;
            if ([v13 respondsToSelector_])
            {
              v16 = fabs(v15);
              if (v16 < [v13 todayFeedLoadToCacheTimeWindow])
              {
                if (qword_280E8D7A0 != -1)
                {
                  swift_once();
                }

                sub_2186C5F60(0, &qword_280E8B5B0, sub_2186C66F8, MEMORY[0x277D84560]);
                v17 = swift_allocObject();
                *(v17 + 16) = xmmword_219C09BA0;
                if ((*&v15 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
                {
                  __break(1u);
                }

                else if (v16 < 9.22337204e18)
                {
                  v18 = MEMORY[0x277D84A90];
                  *(v17 + 56) = MEMORY[0x277D84A28];
                  *(v17 + 64) = v18;
                  *(v17 + 32) = v16;
                  sub_219BF6214();
                  sub_219BE5314();
                  swift_unknownObjectRelease();

                  (*(v6 + 8))(v8, v5);
                  return;
                }

                __break(1u);
LABEL_34:
                __break(1u);
                return;
              }
            }
          }

          (*(v6 + 8))(v8, v5);
        }

        v19 = [objc_allocWithZone(MEMORY[0x277D31378]) initWithContext:a1 appConfig:v13 request:v10];
        v20 = [objc_opt_self() ignoreCacheCachePolicy];
        [v19 setCachePolicy_];

        [v19 setQualityOfService_];
        v21 = v19;
        [v21 setRelativePriority_];
        v22 = [objc_allocWithZone(MEMORY[0x277D31128]) initWithLabel_];
        [v22 startActivity];
        [v21 setParentNetworkActivity_];
        v23 = qword_280ECFAD8;
        qword_280ECFAD8 = v21;
        v24 = v21;

        if (qword_280E8D7A0 != -1)
        {
          swift_once();
        }

        sub_2186C5F60(0, &qword_280E8B5B0, sub_2186C66F8, MEMORY[0x277D84560]);
        v25 = swift_allocObject();
        *(v25 + 16) = xmmword_219C09BA0;
        v26 = [v24 operationID];

        v27 = sub_219BF5414();
        v29 = v28;

        *(v25 + 56) = MEMORY[0x277D837D0];
        *(v25 + 64) = sub_2186FC3BC();
        *(v25 + 32) = v27;
        *(v25 + 40) = v29;
        sub_219BF6214();
        sub_219BE5314();

        v30 = [objc_opt_self() fc_prewarmQueue];
        if (v30)
        {
          v31 = v30;
          [v30 addOperation_];

          swift_unknownObjectRelease();
          return;
        }

        goto LABEL_34;
      }
    }

    else
    {
      swift_unknownObjectRelease();
    }

    if (qword_280E8D7A0 != -1)
    {
      swift_once();
    }

    sub_219BF6214();
    sub_219BE5314();
  }

  else
  {
    if (qword_280E8D7A0 != -1)
    {
      swift_once();
    }

    sub_219BF6214();

    sub_219BE5314();
  }
}

void sub_2186C5F60(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_2186C5FC4()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = sub_219BF53D4();
  v2 = [v0 objectForKey_];

  if (v2)
  {
    sub_219BF70B4();
    swift_unknownObjectRelease();
  }

  else
  {
    v7 = 0u;
    v8 = 0u;
  }

  v9[0] = v7;
  v9[1] = v8;
  if (!*(&v8 + 1))
  {
    sub_218806FD0(v9);
    return 0;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  sub_2186C6148(0, &qword_280E8E3E8);
  sub_2186C6148(0, &unk_280E8DE30);
  v4 = sub_219BF6644();
  sub_2186C6190(v5, v6);
  result = v4;
  if (!v4)
  {
    return 0;
  }

  return result;
}

uint64_t sub_2186C6148(uint64_t a1, unint64_t *a2)
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

uint64_t sub_2186C6190(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

unint64_t sub_2186C61E4()
{
  result = qword_280E8E080;
  if (!qword_280E8E080)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_280E8E080);
  }

  return result;
}

uint64_t sub_2186C6248@<X0>(uint64_t a1@<X8>)
{
  v2 = [objc_opt_self() standardUserDefaults];
  v3 = sub_219BF53D4();
  v4 = [v2 objectForKey_];

  if (v4)
  {
    sub_219BF70B4();
    swift_unknownObjectRelease();
  }

  else
  {
    v9 = 0u;
    v10 = 0u;
  }

  v11[0] = v9;
  v11[1] = v10;
  if (*(&v10 + 1))
  {
    v5 = sub_219BDBD34();
    v6 = swift_dynamicCast();
    return (*(*(v5 - 8) + 56))(a1, v6 ^ 1u, 1, v5);
  }

  else
  {
    sub_218806FD0(v11);
    v8 = sub_219BDBD34();
    return (*(*(v8 - 8) + 56))(a1, 1, 1, v8);
  }
}

uint64_t sub_2186C63BC()
{
  v0 = sub_219BDC944();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v8[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_219BDC934();
  MEMORY[0x28223BE20](v4);
  (*(v6 + 104))(&v8[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x277D6D098]);
  (*(v1 + 104))(v3, *MEMORY[0x277D6D0A8], v0);
  v8[15] = 0;
  sub_2186C6588(0, &qword_280EE9078);
  swift_allocObject();
  result = sub_219BDC9F4();
  qword_280EE9458 = result;
  return result;
}

void sub_2186C6588(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_219BDC9E4();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t sub_2186C65D8()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 bundleIdentifier];

  if (v1)
  {
    sub_219BF5414();
  }

  sub_2186C66AC();
  result = sub_219BF6F54();
  qword_280F616D8 = result;
  return result;
}

unint64_t sub_2186C66AC()
{
  result = qword_280E8D790;
  if (!qword_280E8D790)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280E8D790);
  }

  return result;
}

unint64_t sub_2186C66F8()
{
  result = qword_280E8B560;
  if (!qword_280E8B560)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_280E8B560);
  }

  return result;
}

uint64_t sub_2186C675C(void *a1)
{
  sub_2186C5F60(0, &qword_280E90C58, MEMORY[0x277D32FE8], MEMORY[0x277D83D88]);
  v29 = v2;
  MEMORY[0x28223BE20](v2);
  v30 = &v29 - v3;
  v4 = sub_219BDBD34();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_219BEE3D4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_219BF0C04();
  v12 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280ECFB08 != -1)
  {
    swift_once();
  }

  sub_219BE1A94();

  if (qword_280ECFAD8)
  {
    v15 = [a1 appConfigurationManager];
    swift_getObjectType();
    sub_219BF6A84();
    swift_unknownObjectRelease();
    sub_219BDBD24();
    sub_219BEE3C4();
    (*(v5 + 8))(v7, v4);
    (*(v9 + 8))(v11, v8);
    v16 = objc_opt_self();
    v17 = sub_219BF0BF4();
    v18 = [v16 prewarmDateRange:v17 context:a1];

    if (v18)
    {
      if (qword_280E8D7A0 != -1)
      {
        swift_once();
      }

      sub_2186C5F60(0, &qword_280E8B5B0, sub_2186C66F8, MEMORY[0x277D84560]);
      v19 = swift_allocObject();
      *(v19 + 16) = xmmword_219C09BA0;
      v20 = sub_219BF0BF4();
      v21 = [v20 description];
      v22 = sub_219BF5414();
      v24 = v23;

      *(v19 + 56) = MEMORY[0x277D837D0];
      *(v19 + 64) = sub_2186FC3BC();
      *(v19 + 32) = v22;
      *(v19 + 40) = v24;
      sub_219BF6214();
      sub_219BE5314();

      if (qword_280ECFAE0 != -1)
      {
        swift_once();
      }

      v25 = __swift_project_value_buffer(v29, qword_280ECFAF0);
      v26 = v30;
      v27 = v31;
      (*(v12 + 16))(v30, v14, v31);
      (*(v12 + 56))(v26, 0, 1, v27);
      swift_beginAccess();
      sub_219248EE0(v26, v25);
      swift_endAccess();
      return (*(v12 + 8))(v14, v27);
    }

    else
    {
      return (*(v12 + 8))(v14, v31);
    }
  }

  else
  {
    if (qword_280E8D7A0 != -1)
    {
      swift_once();
    }

    sub_219BF6214();

    return sub_219BE5314();
  }
}

uint64_t sub_2186C6E00@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR___TSAppDelegate____lazy_storage___resolver;
  swift_beginAccess();
  sub_2186C6EE0(v1 + v3, &v5);
  if (v6)
  {
    return sub_2186CB1F0(&v5, a1);
  }

  sub_2186C70F8(&v5, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
  sub_2186C7168();
  sub_219BE3334();

  sub_218718690(a1, &v5);
  swift_beginAccess();
  sub_2187186F4(&v5, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_2186C6EE0(uint64_t a1, uint64_t a2)
{
  sub_2186C7030(0, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_2186C6F70(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  if (!*a2)
  {
    sub_2186CFDE4(255, a3);
    v4 = sub_219BF6FB4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_2186C6FC8(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_2186CFDE4(255, a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_2186C7030(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_2186C709C(255, a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_2186C709C(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_2186C70F8(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  sub_2186C7030(0, a2, a3, a4, MEMORY[0x277D83D88]);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t sub_2186C7168()
{
  v1 = sub_219BE6224();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = OBJC_IVAR___TSAppDelegate____lazy_storage___container;
  if (*(v0 + OBJC_IVAR___TSAppDelegate____lazy_storage___container))
  {
    v6 = *(v0 + OBJC_IVAR___TSAppDelegate____lazy_storage___container);
  }

  else
  {
    v7 = v0;
    sub_2186C72B8();
    (*(v2 + 104))(v4, *MEMORY[0x277D6D548], v1);
    v6 = sub_219BE6B24();

    (*(v2 + 8))(v4, v1);
    *(v7 + v5) = v6;
  }

  return v6;
}

void sub_2186C72B8()
{
  v1 = OBJC_IVAR___TSAppDelegate____lazy_storage___containerManager;
  if (*(v0 + OBJC_IVAR___TSAppDelegate____lazy_storage___containerManager))
  {
    goto LABEL_5;
  }

  v2 = [objc_opt_self() sharedApplication];
  v3 = [v2 delegate];

  if (v3)
  {
    v4 = v0;
    ObjectType = swift_getObjectType();
    v6 = swift_conformsToProtocol2();
    if (v6)
    {
      v7 = v6;
      (*(v6 + 24))(ObjectType, v6);
      (*(v7 + 32))(ObjectType, v7);
      sub_219BE1F14();
      swift_allocObject();
      sub_219BE1F04();
      sub_219BE6B34();
      swift_allocObject();
      v8 = sub_219BE6B14();
      swift_unknownObjectRelease();
      *(v4 + v1) = v8;

LABEL_5:

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_2186C74F0(void *a1)
{
  v2 = [objc_opt_self() currentDevice];
  v3 = [v2 userInterfaceIdiom];

  v4 = v3 + 1;
  if (v3 + 1 <= 7)
  {
    if (((1 << v4) & 0xC9) != 0)
    {
      v5 = 0;
      return v5 & 1;
    }

    if (((1 << v4) & 0x12) != 0)
    {
      sub_219BDC8D4();
      sub_219BDC8B4();
      if (qword_280EE9198 != -1)
      {
        swift_once();
      }

      if ([a1 respondsToSelector_])
      {
        v6 = [a1 paidBundleConfig];
        [v6 isNarrativeAudioEnabled];
      }

LABEL_12:
      v5 = sub_219BDC8C4();

      return v5 & 1;
    }

    if (v3 == 1)
    {
      sub_219BDC8D4();
      sub_219BDC8B4();
      if (qword_280EE9198 != -1)
      {
        swift_once();
      }

      goto LABEL_12;
    }
  }

  result = sub_219BF7514();
  __break(1u);
  return result;
}

unint64_t sub_2186C76F4()
{
  result = qword_280EE90F8;
  if (!qword_280EE90F8)
  {
    sub_219BDC7F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EE90F8);
  }

  return result;
}

void *Assembly.assemblies.getter()
{
  v200 = *MEMORY[0x277D85DE8];
  sub_2186CA420();
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_219C470D0;
  v2 = type metadata accessor for ActivityAssembly();
  v3 = swift_allocObject();
  *(v1 + 56) = v2;
  *(v1 + 64) = sub_2186C9AD4(qword_280ED8D90, type metadata accessor for ActivityAssembly);
  *(v1 + 32) = v3;
  v4 = type metadata accessor for AdsAssembly();
  v5 = swift_allocObject();
  *(v1 + 96) = v4;
  *(v1 + 104) = sub_2186C9AD4(&qword_280EDF908, type metadata accessor for AdsAssembly);
  *(v1 + 72) = v5;
  v6 = type metadata accessor for AnalyticsAssembly();
  v7 = swift_allocObject();
  *(v1 + 136) = v6;
  *(v1 + 144) = sub_2186C9AD4(&qword_280ED6F88, type metadata accessor for AnalyticsAssembly);
  *(v1 + 112) = v7;
  v8 = *(v0 + OBJC_IVAR___TSFrameworkAssembly_featureAvailabilityProvider);
  v9 = type metadata accessor for AppAssembly();
  v10 = swift_allocObject();
  *(v10 + 16) = v8;
  *(v1 + 176) = v9;
  *(v1 + 184) = sub_2186C9AD4(qword_280EDF858, type metadata accessor for AppAssembly);
  *(v1 + 152) = v10;
  v11 = type metadata accessor for ArticleAssembly();
  v12 = swift_allocObject();
  *(v1 + 216) = v11;
  *(v1 + 224) = sub_2186C9AD4(&unk_280EDB4D8, type metadata accessor for ArticleAssembly);
  *(v1 + 192) = v12;
  v13 = type metadata accessor for ArticleViewerAssembly();
  v14 = swift_allocObject();
  *(v1 + 256) = v13;
  *(v1 + 264) = sub_2186C9AD4(qword_280ECBF68, type metadata accessor for ArticleViewerAssembly);
  *(v1 + 232) = v14;
  v15 = type metadata accessor for BootstrapAssembly();
  v16 = swift_allocObject();
  *(v1 + 296) = v15;
  *(v1 + 304) = sub_2186C9AD4(qword_280ED6BD0, type metadata accessor for BootstrapAssembly);
  *(v1 + 272) = v16;
  v17 = type metadata accessor for CoordinatorAssembly();
  v18 = swift_allocObject();
  *(v1 + 336) = v17;
  *(v1 + 344) = sub_2186C9AD4(qword_280ED1A48, type metadata accessor for CoordinatorAssembly);
  *(v1 + 312) = v18;
  v19 = type metadata accessor for CommandAssembly();
  v20 = swift_allocObject();
  *(v1 + 376) = v19;
  *(v1 + 384) = sub_2186C9AD4(qword_280EDB088, type metadata accessor for CommandAssembly);
  *(v1 + 352) = v20;
  v21 = type metadata accessor for ChannelPickerAssembly();
  v22 = swift_allocObject();
  *(v1 + 416) = v21;
  *(v1 + 424) = sub_2186C9AD4(qword_280ECBA90, type metadata accessor for ChannelPickerAssembly);
  *(v1 + 392) = v22;
  v23 = type metadata accessor for ChannelPickerDetailAssembly();
  v24 = swift_allocObject();
  *(v1 + 456) = v23;
  *(v1 + 464) = sub_2186C9AD4(&unk_280EB9010, type metadata accessor for ChannelPickerDetailAssembly);
  *(v1 + 432) = v24;
  v25 = type metadata accessor for DatabaseAssembly();
  v26 = swift_allocObject();
  *(v1 + 496) = v25;
  *(v1 + 504) = sub_2186C9AD4(qword_280ED8AA8, type metadata accessor for DatabaseAssembly);
  *(v1 + 472) = v26;
  v27 = type metadata accessor for DiagnosticAssembly();
  v28 = swift_allocObject();
  *(v1 + 536) = v27;
  *(v1 + 544) = sub_2186C9AD4(qword_280ED3D68, type metadata accessor for DiagnosticAssembly);
  *(v1 + 512) = v28;
  v29 = type metadata accessor for FactoryAssembly();
  v30 = swift_allocObject();
  *(v1 + 576) = v29;
  *(v1 + 584) = sub_2186C9AD4(&qword_280EDA868, type metadata accessor for FactoryAssembly);
  *(v1 + 552) = v30;
  v31 = type metadata accessor for IssueAssembly();
  v32 = swift_allocObject();
  *(v1 + 616) = v31;
  *(v1 + 624) = sub_2186C9AD4(&unk_280EDE210, type metadata accessor for IssueAssembly);
  *(v1 + 592) = v32;
  v33 = type metadata accessor for LiveActivityAssembly();
  v34 = swift_allocObject();
  *(v1 + 656) = v33;
  *(v1 + 664) = sub_2186C9AD4(&qword_280ECE7F8, type metadata accessor for LiveActivityAssembly);
  *(v1 + 632) = v34;
  v35 = type metadata accessor for ManagerAssembly();
  v36 = swift_allocObject();
  *(v1 + 696) = v35;
  *(v1 + 704) = sub_2186C9AD4(&unk_280EDA278, type metadata accessor for ManagerAssembly);
  *(v1 + 672) = v36;
  v37 = type metadata accessor for MenuAssembly();
  v38 = swift_allocObject();
  *(v1 + 736) = v37;
  *(v1 + 744) = sub_2186C9AD4(&qword_280EDEE18, type metadata accessor for MenuAssembly);
  *(v1 + 712) = v38;
  v39 = type metadata accessor for OfflineAssembly();
  v40 = swift_allocObject();
  *(v1 + 776) = v39;
  *(v1 + 784) = sub_2186C9AD4(qword_280EDA128, type metadata accessor for OfflineAssembly);
  *(v1 + 752) = v40;
  v41 = type metadata accessor for PersonalizationAssembly();
  v42 = swift_allocObject();
  *(v1 + 816) = v41;
  *(v1 + 824) = sub_2186C9AD4(qword_280EC40F0, type metadata accessor for PersonalizationAssembly);
  *(v1 + 792) = v42;
  v43 = type metadata accessor for PPTAssembly();
  v44 = swift_allocObject();
  *(v1 + 856) = v43;
  *(v1 + 864) = sub_2186C9AD4(qword_280EDF608, type metadata accessor for PPTAssembly);
  *(v1 + 832) = v44;
  v45 = type metadata accessor for RecipeAssembly();
  v46 = swift_allocObject();
  *(v1 + 896) = v45;
  *(v1 + 904) = sub_2186C9AD4(qword_280EDBF88, type metadata accessor for RecipeAssembly);
  *(v1 + 872) = v46;
  v47 = type metadata accessor for RendererAssembly();
  v48 = swift_allocObject();
  *(v1 + 936) = v47;
  *(v1 + 944) = sub_2186C9AD4(qword_280ED7FE8, type metadata accessor for RendererAssembly);
  *(v1 + 912) = v48;
  v49 = type metadata accessor for RouterAssembly();
  v50 = swift_allocObject();
  *(v1 + 976) = v49;
  *(v1 + 984) = sub_2186C9AD4(qword_280EDBE08, type metadata accessor for RouterAssembly);
  *(v1 + 952) = v50;
  v51 = type metadata accessor for SharingAssembly();
  v52 = swift_allocObject();
  *(v1 + 1016) = v51;
  *(v1 + 1024) = sub_2186C9AD4(qword_280ED99F8, type metadata accessor for SharingAssembly);
  *(v1 + 992) = v52;
  v53 = type metadata accessor for ShortcutItemHandlerAssembly();
  v54 = swift_allocObject();
  *(v1 + 1056) = v53;
  *(v1 + 1064) = sub_2186C9AD4(qword_280EB7000, type metadata accessor for ShortcutItemHandlerAssembly);
  *(v1 + 1032) = v54;
  v55 = type metadata accessor for ServiceAssembly();
  v56 = swift_allocObject();
  *(v1 + 1096) = v55;
  *(v1 + 1104) = sub_2186C9AD4(&qword_280ED9AA8, type metadata accessor for ServiceAssembly);
  *(v1 + 1072) = v56;
  v57 = type metadata accessor for SportsTrackerAssembly();
  v58 = swift_allocObject();
  *(v1 + 1136) = v57;
  *(v1 + 1144) = sub_2186C9AD4(&unk_280EC9988, type metadata accessor for SportsTrackerAssembly);
  *(v1 + 1112) = v58;
  v59 = type metadata accessor for StylerAssembly();
  v60 = swift_allocObject();
  *(v1 + 1176) = v59;
  *(v1 + 1184) = sub_2186C9AD4(&qword_280EDBAA0, type metadata accessor for StylerAssembly);
  *(v1 + 1152) = v60;
  v61 = type metadata accessor for TelemetryAssembly();
  v62 = swift_allocObject();
  *(v1 + 1216) = v61;
  *(v1 + 1224) = sub_2186C9AD4(&unk_280ED4998, type metadata accessor for TelemetryAssembly);
  *(v1 + 1192) = v62;
  v63 = type metadata accessor for TrackerAssembly();
  v64 = swift_allocObject();
  *(v1 + 1256) = v63;
  *(v1 + 1264) = sub_2186C9AD4(qword_280ED8ED8, type metadata accessor for TrackerAssembly);
  *(v1 + 1232) = v64;
  v65 = type metadata accessor for URLHandlerAssembly();
  v66 = swift_allocObject();
  *(v1 + 1296) = v65;
  *(v1 + 1304) = sub_2186C9AD4(&unk_280ED2188, type metadata accessor for URLHandlerAssembly);
  *(v1 + 1272) = v66;
  v67 = type metadata accessor for UserActivityHandlerAssembly();
  v68 = swift_allocObject();
  *(v1 + 1336) = v67;
  *(v1 + 1344) = sub_2186C9AD4(qword_280EB5D68, type metadata accessor for UserActivityHandlerAssembly);
  *(v1 + 1312) = v68;
  v69 = type metadata accessor for UserNotificationsAssembly();
  v70 = swift_allocObject();
  *(v1 + 1376) = v69;
  *(v1 + 1384) = sub_2186C9AD4(qword_280EBC8F8, type metadata accessor for UserNotificationsAssembly);
  *(v1 + 1352) = v70;
  v71 = type metadata accessor for ExternalAnalyticsAssembly();
  v72 = swift_allocObject();
  *(v1 + 1416) = v71;
  *(v1 + 1424) = sub_2186C9AD4(qword_280EBED30, type metadata accessor for ExternalAnalyticsAssembly);
  *(v1 + 1392) = v72;
  v73 = type metadata accessor for MediaAssembly();
  v74 = swift_allocObject();
  *(v1 + 1456) = v73;
  *(v1 + 1464) = sub_2186C9AD4(qword_280EDE0A8, type metadata accessor for MediaAssembly);
  *(v1 + 1432) = v74;
  v75 = type metadata accessor for BundleHardPaywallAssembly();
  v76 = swift_allocObject();
  *(v1 + 1496) = v75;
  *(v1 + 1504) = sub_2186C9AD4(&qword_280EBF668, type metadata accessor for BundleHardPaywallAssembly);
  *(v1 + 1472) = v76;
  v77 = type metadata accessor for BundleSoftPaywallAssembly();
  v78 = swift_allocObject();
  *(v1 + 1536) = v77;
  *(v1 + 1544) = sub_2186C9AD4(qword_280EBF5B8, type metadata accessor for BundleSoftPaywallAssembly);
  *(v1 + 1512) = v78;
  v79 = type metadata accessor for ChannelIssuesAssembly();
  v80 = swift_allocObject();
  *(v1 + 1576) = v79;
  *(v1 + 1584) = sub_2186C9AD4(&qword_280ECBB30, type metadata accessor for ChannelIssuesAssembly);
  *(v1 + 1552) = v80;
  v81 = type metadata accessor for ContinueReadingAssembly();
  v82 = swift_allocObject();
  *(v1 + 1616) = v81;
  *(v1 + 1624) = sub_2186C9AD4(qword_280EC57B8, type metadata accessor for ContinueReadingAssembly);
  *(v1 + 1592) = v82;
  v83 = type metadata accessor for EmailSignupAssembly();
  v84 = swift_allocObject();
  *(v1 + 1656) = v83;
  *(v1 + 1664) = sub_2186C9AD4(&qword_280ED1758, type metadata accessor for EmailSignupAssembly);
  *(v1 + 1632) = v84;
  v85 = type metadata accessor for EngagementAssembly();
  v86 = swift_allocObject();
  *(v1 + 1696) = v85;
  *(v1 + 1704) = sub_2186C9AD4(qword_280ED3CC8, type metadata accessor for EngagementAssembly);
  *(v1 + 1672) = v86;
  v87 = type metadata accessor for FollowingAssembly();
  v88 = swift_allocObject();
  *(v1 + 1736) = v87;
  *(v1 + 1744) = sub_2186C9AD4(&unk_280ED66F8, type metadata accessor for FollowingAssembly);
  *(v1 + 1712) = v88;
  v89 = type metadata accessor for FollowingDislikedAssembly();
  v90 = swift_allocObject();
  *(v1 + 1776) = v89;
  *(v1 + 1784) = sub_2186C9AD4(qword_280EBEBD8, type metadata accessor for FollowingDislikedAssembly);
  *(v1 + 1752) = v90;
  v91 = type metadata accessor for FollowingNotificationsAssembly();
  v92 = swift_allocObject();
  *(v1 + 1816) = v91;
  *(v1 + 1824) = sub_2186C9AD4(qword_280EACBC8, type metadata accessor for FollowingNotificationsAssembly);
  *(v1 + 1792) = v92;
  v93 = type metadata accessor for HistoryFeedAssembly();
  v94 = swift_allocObject();
  *(v1 + 1856) = v93;
  *(v1 + 1864) = sub_2186C9AD4(&unk_280ED1228, type metadata accessor for HistoryFeedAssembly);
  *(v1 + 1832) = v94;
  v95 = type metadata accessor for InterludeAssembly();
  v96 = swift_allocObject();
  *(v1 + 1896) = v95;
  *(v1 + 1904) = sub_2186C9AD4(qword_280ED6138, type metadata accessor for InterludeAssembly);
  *(v1 + 1872) = v96;
  v97 = type metadata accessor for WebViewerAssembly();
  v98 = swift_allocObject();
  *(v1 + 1936) = v97;
  *(v1 + 1944) = sub_2186C9AD4(qword_280ED43D8, type metadata accessor for WebViewerAssembly);
  *(v1 + 1912) = v98;
  v99 = type metadata accessor for MagazineCatalogAssembly();
  v100 = swift_allocObject();
  *(v1 + 1976) = v99;
  *(v1 + 1984) = sub_2186C9AD4(qword_280EC4AD8, type metadata accessor for MagazineCatalogAssembly);
  *(v1 + 1952) = v100;
  v101 = type metadata accessor for MagazineSectionBarAssembly();
  v102 = swift_allocObject();
  *(v1 + 2016) = v101;
  *(v1 + 2024) = sub_2186C9AD4(qword_280EBB1D0, type metadata accessor for MagazineSectionBarAssembly);
  *(v1 + 1992) = v102;
  v103 = type metadata accessor for MagazineCategoriesPickerAssembly();
  v104 = swift_allocObject();
  *(v1 + 2056) = v103;
  *(v1 + 2064) = sub_2186C9AD4(qword_280EA62F0, type metadata accessor for MagazineCategoriesPickerAssembly);
  *(v1 + 2032) = v104;
  v105 = type metadata accessor for MagazineFeedAssembly();
  v106 = swift_allocObject();
  *(v1 + 2096) = v105;
  *(v1 + 2104) = sub_2186C9AD4(qword_280ECE748, type metadata accessor for MagazineFeedAssembly);
  *(v1 + 2072) = v106;
  v107 = type metadata accessor for MagazineGridAssembly();
  v108 = swift_allocObject();
  *(v1 + 2136) = v107;
  *(v1 + 2144) = sub_2186C9AD4(qword_280ECE698, type metadata accessor for MagazineGridAssembly);
  *(v1 + 2112) = v108;
  v109 = type metadata accessor for MagazineMoreActionsAssembly();
  v110 = swift_allocObject();
  *(v1 + 2176) = v109;
  *(v1 + 2184) = sub_2186C9AD4(&qword_280EB8490, type metadata accessor for MagazineMoreActionsAssembly);
  *(v1 + 2152) = v110;
  v111 = type metadata accessor for MagazineSectionsAssembly();
  v112 = swift_allocObject();
  *(v1 + 2216) = v111;
  *(v1 + 2224) = sub_2186C9AD4(qword_280EC1158, type metadata accessor for MagazineSectionsAssembly);
  *(v1 + 2192) = v112;
  v113 = type metadata accessor for MainAssembly();
  v114 = swift_allocObject();
  *(v1 + 2256) = v113;
  *(v1 + 2264) = sub_2186C9AD4(qword_280EDEF48, type metadata accessor for MainAssembly);
  *(v1 + 2232) = v114;
  v115 = type metadata accessor for MyMagazinesAssembly();
  v116 = swift_allocObject();
  *(v1 + 2296) = v115;
  *(v1 + 2304) = sub_2186C9AD4(&qword_280ED0F88, type metadata accessor for MyMagazinesAssembly);
  *(v1 + 2272) = v116;
  v117 = type metadata accessor for OfflineStatusBannerAssembly();
  v118 = swift_allocObject();
  *(v1 + 2336) = v117;
  *(v1 + 2344) = sub_2186C9AD4(qword_280EB7D08, type metadata accessor for OfflineStatusBannerAssembly);
  *(v1 + 2312) = v118;
  v119 = type metadata accessor for OnboardingAssembly();
  v120 = swift_allocObject();
  *(v1 + 2376) = v119;
  *(v1 + 2384) = sub_2186C9AD4(qword_280ED3130, type metadata accessor for OnboardingAssembly);
  *(v1 + 2352) = v120;
  v121 = type metadata accessor for PuzzleAssembly();
  v122 = swift_allocObject();
  *(v1 + 2416) = v121;
  *(v1 + 2424) = sub_2186C9AD4(qword_280EDC038, type metadata accessor for PuzzleAssembly);
  *(v1 + 2392) = v122;
  v123 = type metadata accessor for PuzzleContinuePlayingAssembly();
  v124 = swift_allocObject();
  *(v1 + 2456) = v123;
  *(v1 + 2464) = sub_2186C9AD4(&qword_280EAF5D8, type metadata accessor for PuzzleContinuePlayingAssembly);
  *(v1 + 2432) = v124;
  v125 = type metadata accessor for PuzzleModuleAssembly();
  v126 = swift_allocObject();
  *(v1 + 2496) = v125;
  *(v1 + 2504) = sub_2186C9AD4(&qword_280ECE038, type metadata accessor for PuzzleModuleAssembly);
  *(v1 + 2472) = v126;
  v127 = type metadata accessor for PuzzleSettingsAssembly();
  v128 = swift_allocObject();
  *(v1 + 2536) = v127;
  *(v1 + 2544) = sub_2186C9AD4(qword_280EC7138, type metadata accessor for PuzzleSettingsAssembly);
  *(v1 + 2512) = v128;
  v129 = type metadata accessor for RecipeBoxAssembly();
  v130 = swift_allocObject();
  *(v1 + 2576) = v129;
  *(v1 + 2584) = sub_2186C9AD4(&unk_280ED57F8, type metadata accessor for RecipeBoxAssembly);
  *(v1 + 2552) = v130;
  v131 = type metadata accessor for RecipeCatalogSearchAssembly();
  v132 = swift_allocObject();
  *(v1 + 2616) = v131;
  *(v1 + 2624) = sub_2186C9AD4(&qword_280EB75C8, type metadata accessor for RecipeCatalogSearchAssembly);
  *(v1 + 2592) = v132;
  v133 = type metadata accessor for RecipeFilterAssembly();
  v134 = swift_allocObject();
  *(v1 + 2656) = v133;
  *(v1 + 2664) = sub_2186C9AD4(&qword_280ECD998, type metadata accessor for RecipeFilterAssembly);
  *(v1 + 2632) = v134;
  v135 = type metadata accessor for MyRecipesAssembly();
  v136 = swift_allocObject();
  *(v1 + 2696) = v135;
  *(v1 + 2704) = sub_2186C9AD4(qword_280ED5A90, type metadata accessor for MyRecipesAssembly);
  *(v1 + 2672) = v136;
  v137 = type metadata accessor for SavedFeedAssembly();
  v138 = swift_allocObject();
  *(v1 + 2736) = v137;
  *(v1 + 2744) = sub_2186C9AD4(qword_280ED55B8, type metadata accessor for SavedFeedAssembly);
  *(v1 + 2712) = v138;
  v139 = type metadata accessor for SearchAssembly();
  v140 = swift_allocObject();
  *(v1 + 2776) = v139;
  *(v1 + 2784) = sub_2186C9AD4(&qword_280EDBB48, type metadata accessor for SearchAssembly);
  *(v1 + 2752) = v140;
  v141 = type metadata accessor for SearchHomeAssembly();
  v142 = swift_allocObject();
  *(v1 + 2816) = v141;
  *(v1 + 2824) = sub_2186C9AD4(qword_280ED2DA8, type metadata accessor for SearchHomeAssembly);
  *(v1 + 2792) = v142;
  v143 = type metadata accessor for SearchMoreAssembly();
  v144 = swift_allocObject();
  *(v1 + 2856) = v143;
  *(v1 + 2864) = sub_2186C9AD4(qword_280ED2C60, type metadata accessor for SearchMoreAssembly);
  *(v1 + 2832) = v144;
  v145 = type metadata accessor for SharedWithYouFeedAssembly();
  v146 = swift_allocObject();
  *(v1 + 2896) = v145;
  *(v1 + 2904) = sub_2186C9AD4(&qword_280EBD0C8, type metadata accessor for SharedWithYouFeedAssembly);
  *(v1 + 2872) = v146;
  v147 = type metadata accessor for ShortcutsAssembly();
  v148 = swift_allocObject();
  *(v1 + 2936) = v147;
  *(v1 + 2944) = sub_2186C9AD4(&qword_280ED5238, type metadata accessor for ShortcutsAssembly);
  *(v1 + 2912) = v148;
  v149 = type metadata accessor for SportsFavoritesAssembly();
  v150 = swift_allocObject();
  *(v1 + 2976) = v149;
  *(v1 + 2984) = sub_2186C9AD4(qword_280EC3340, type metadata accessor for SportsFavoritesAssembly);
  *(v1 + 2952) = v150;
  v151 = type metadata accessor for SportsFavoritesSyncAssembly();
  v152 = swift_allocObject();
  *(v1 + 3016) = v151;
  *(v1 + 3024) = sub_2186C9AD4(&qword_280EB6DA8, type metadata accessor for SportsFavoritesSyncAssembly);
  *(v1 + 2992) = v152;
  v153 = type metadata accessor for SportsManagementAssembly();
  v154 = swift_allocObject();
  *(v1 + 3056) = v153;
  *(v1 + 3064) = sub_2186C9AD4(&qword_280EC0428, type metadata accessor for SportsManagementAssembly);
  *(v1 + 3032) = v154;
  v155 = type metadata accessor for SportsManagementDetailAssembly();
  v156 = swift_allocObject();
  *(v1 + 3096) = v155;
  *(v1 + 3104) = sub_2186C9AD4(qword_280EAB0A8, type metadata accessor for SportsManagementDetailAssembly);
  *(v1 + 3072) = v156;
  v157 = type metadata accessor for SportsNavigationAssembly();
  v158 = swift_allocObject();
  *(v1 + 3136) = v157;
  *(v1 + 3144) = sub_2186C9AD4(qword_280EC0378, type metadata accessor for SportsNavigationAssembly);
  *(v1 + 3112) = v158;
  v159 = type metadata accessor for SubscriptionsAssembly();
  v160 = swift_allocObject();
  *(v1 + 3176) = v159;
  *(v1 + 3184) = sub_2186C9AD4(qword_280EC98D8, type metadata accessor for SubscriptionsAssembly);
  *(v1 + 3152) = v160;
  v161 = type metadata accessor for TagFeedAssembly();
  v162 = swift_allocObject();
  *(v1 + 3216) = v161;
  *(v1 + 3224) = sub_2186C9AD4(&unk_280ED98A8, type metadata accessor for TagFeedAssembly);
  *(v1 + 3192) = v162;
  v163 = type metadata accessor for TagFeedAsyncAssembly();
  v164 = swift_allocObject();
  *(v1 + 3256) = v163;
  *(v1 + 3264) = sub_2186C9AD4(&qword_280ECCE70, type metadata accessor for TagFeedAsyncAssembly);
  *(v1 + 3232) = v164;
  v165 = type metadata accessor for TagFeedViewerAssembly();
  v166 = swift_allocObject();
  *(v1 + 3296) = v165;
  *(v1 + 3304) = sub_2186C9AD4(&qword_280EC95F8, type metadata accessor for TagFeedViewerAssembly);
  *(v1 + 3272) = v166;
  v167 = type metadata accessor for TipsAssembly();
  v168 = swift_allocObject();
  *(v1 + 3336) = v167;
  *(v1 + 3344) = sub_2186C9AD4(&qword_280EDE748, type metadata accessor for TipsAssembly);
  *(v1 + 3312) = v168;
  v169 = type metadata accessor for TodayAssembly();
  v170 = swift_allocObject();
  *(v1 + 3376) = v169;
  *(v1 + 3384) = sub_2186C9AD4(qword_280EDD228, type metadata accessor for TodayAssembly);
  *(v1 + 3352) = v170;
  v171 = type metadata accessor for ToolbarAssembly();
  v172 = swift_allocObject();
  *(v1 + 3416) = v171;
  *(v1 + 3424) = sub_2186C9AD4(&unk_280ED8F78, type metadata accessor for ToolbarAssembly);
  *(v1 + 3392) = v172;
  v173 = type metadata accessor for WebEmbedAssembly();
  v174 = swift_allocObject();
  *(v1 + 3456) = v173;
  *(v1 + 3464) = sub_2186C9AD4(&qword_280ED70D8, type metadata accessor for WebEmbedAssembly);
  *(v1 + 3432) = v174;
  v175 = type metadata accessor for WelcomeAssembly();
  v176 = swift_allocObject();
  *(v1 + 3496) = v175;
  *(v1 + 3504) = sub_2186C9AD4(qword_280ED8E38, type metadata accessor for WelcomeAssembly);
  *(v1 + 3472) = v176;
  v177 = v8;
  if (sub_2186D62B8())
  {
    v178 = type metadata accessor for AudioAssembly();
    v179 = swift_allocObject();
    v180 = sub_2186D62FC(1, 88, 1, v1);
    v198 = v178;
    v199 = sub_2186C9AD4(qword_280EDE428, type metadata accessor for AudioAssembly);
    *&v197 = v179;
    v180[2] = 88;
    sub_2186CB1F0(&v197, (v180 + 439));
    v181 = type metadata accessor for AudioFeedAssembly();
    v182 = swift_allocObject();
    v183 = v180[3];
    if (v183 <= 0xB1)
    {
      v180 = sub_2186D62FC((v183 > 1), 89, 1, v180);
    }

    v198 = v181;
    v199 = sub_2186C9AD4(qword_280ED6C78, type metadata accessor for AudioFeedAssembly);
    *&v197 = v182;
    v180[2] = 89;
    sub_2186CB1F0(&v197, (v180 + 444));
    v184 = type metadata accessor for AudioHistoryFeedAssembly();
    v185 = swift_allocObject();
    v186 = v180[3];
    if (v186 <= 0xB3)
    {
      v180 = sub_2186D62FC((v186 > 1), 90, 1, v180);
    }

    v198 = v184;
    v199 = sub_2186C9AD4(&unk_280EC2938, type metadata accessor for AudioHistoryFeedAssembly);
    *&v197 = v185;
    v180[2] = 90;
    sub_2186CB1F0(&v197, (v180 + 449));
    v187 = type metadata accessor for AudioPlaylistFeedAssembly();
    v188 = swift_allocObject();
    v189 = v180[3];
    if (v189 <= 0xB5)
    {
      v180 = sub_2186D62FC((v189 > 1), 91, 1, v180);
    }

    v198 = v187;
    v199 = sub_2186C9AD4(&qword_280EBF7B8, type metadata accessor for AudioPlaylistFeedAssembly);
    *&v197 = v188;
    v180[2] = 91;
    sub_2186CB1F0(&v197, (v180 + 454));
    v190 = type metadata accessor for AudioTrackDetailsAssembly();
    v191 = swift_allocObject();
    v192 = v180[3];
    if (v192 <= 0xB7)
    {
      v180 = sub_2186D62FC((v192 > 1), 92, 1, v180);
    }

    v198 = v190;
    v199 = sub_2186C9AD4(&qword_280EBF710, type metadata accessor for AudioTrackDetailsAssembly);
    *&v197 = v191;
    v180[2] = 92;
    v193 = (v180 + 459);
  }

  else
  {
    v194 = type metadata accessor for NoopAudioAssembly();
    v195 = swift_allocObject();
    v180 = sub_2186D62FC(1, 88, 1, v1);
    v198 = v194;
    v199 = sub_2186C9AD4(qword_280ED59F0, type metadata accessor for NoopAudioAssembly);
    *&v197 = v195;
    v180[2] = 88;
    v193 = (v180 + 439);
  }

  sub_2186CB1F0(&v197, v193);
  return v180;
}

uint64_t sub_2186C9AD4(unint64_t *a1, void (*a2)(uint64_t))
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

id FeatureAvailabilityProvider.init(appConfigurationManager:)(void *a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC7NewsUI227FeatureAvailabilityProvider_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v1[OBJC_IVAR____TtC7NewsUI227FeatureAvailabilityProvider____lazy_storage___interstellarEnabled] = 2;
  v1[OBJC_IVAR____TtC7NewsUI227FeatureAvailabilityProvider____lazy_storage___appleMagazineContent] = 2;
  v1[OBJC_IVAR____TtC7NewsUI227FeatureAvailabilityProvider____lazy_storage___narrativeAudio] = 2;
  v1[OBJC_IVAR____TtC7NewsUI227FeatureAvailabilityProvider____lazy_storage___useNewsArticleSearch] = 2;
  v1[OBJC_IVAR____TtC7NewsUI227FeatureAvailabilityProvider____lazy_storage___useContinueReading] = 2;
  v1[OBJC_IVAR____TtC7NewsUI227FeatureAvailabilityProvider____lazy_storage___useNotificationsV2] = 2;
  v1[OBJC_IVAR____TtC7NewsUI227FeatureAvailabilityProvider____lazy_storage___allowInAppMessages] = 2;
  v1[OBJC_IVAR____TtC7NewsUI227FeatureAvailabilityProvider____lazy_storage___improvedBlockingBehavior] = 2;
  v1[OBJC_IVAR____TtC7NewsUI227FeatureAvailabilityProvider____lazy_storage___allowSharingAlways] = 2;
  v1[OBJC_IVAR____TtC7NewsUI227FeatureAvailabilityProvider____lazy_storage___useNewReportConcern] = 2;
  v1[OBJC_IVAR____TtC7NewsUI227FeatureAvailabilityProvider____lazy_storage___useMoreToReadEOA] = 2;
  v1[OBJC_IVAR____TtC7NewsUI227FeatureAvailabilityProvider____lazy_storage___useMoreFromIssueEOA] = 2;
  v1[OBJC_IVAR____TtC7NewsUI227FeatureAvailabilityProvider____lazy_storage___useMultipleNativeAds] = 2;
  v1[OBJC_IVAR____TtC7NewsUI227FeatureAvailabilityProvider____lazy_storage___videoInFeed] = 2;
  v1[OBJC_IVAR____TtC7NewsUI227FeatureAvailabilityProvider____lazy_storage___sportsNativeAdsEnabled] = 2;
  v1[OBJC_IVAR____TtC7NewsUI227FeatureAvailabilityProvider____lazy_storage___inFeedDebugging] = 2;
  v1[OBJC_IVAR____TtC7NewsUI227FeatureAvailabilityProvider____lazy_storage___puzzlesEnabled] = 2;
  v1[OBJC_IVAR____TtC7NewsUI227FeatureAvailabilityProvider____lazy_storage___puzzlesGameCenterEnabled] = 2;
  v1[OBJC_IVAR____TtC7NewsUI227FeatureAvailabilityProvider____lazy_storage___allowCIPBestOffer] = 2;
  v1[OBJC_IVAR____TtC7NewsUI227FeatureAvailabilityProvider____lazy_storage___allowPaidBundleViaOffer] = 2;
  v1[OBJC_IVAR____TtC7NewsUI227FeatureAvailabilityProvider____lazy_storage___allowSIWAOnMac] = 2;
  v1[OBJC_IVAR____TtC7NewsUI227FeatureAvailabilityProvider____lazy_storage___configurableOffersEnabled] = 2;
  v1[OBJC_IVAR____TtC7NewsUI227FeatureAvailabilityProvider____lazy_storage___useFineGrainedNewsletterManagement] = 2;
  v1[OBJC_IVAR____TtC7NewsUI227FeatureAvailabilityProvider____lazy_storage___paidBundleViaOfferAllowPaywalls] = 2;
  v1[OBJC_IVAR____TtC7NewsUI227FeatureAvailabilityProvider____lazy_storage___paidBundleViaOfferAllowSubscriptionsDeeplink] = 2;
  v1[OBJC_IVAR____TtC7NewsUI227FeatureAvailabilityProvider____lazy_storage___paidBundleViaOfferAllowMastheadBanner] = 2;
  v1[OBJC_IVAR____TtC7NewsUI227FeatureAvailabilityProvider____lazy_storage___paidBundleViaOfferAllowIconBadgeMercury] = 2;
  v1[OBJC_IVAR____TtC7NewsUI227FeatureAvailabilityProvider____lazy_storage___paidBundleViaOfferAllowLocalNotification] = 2;
  v1[OBJC_IVAR____TtC7NewsUI227FeatureAvailabilityProvider____lazy_storage___paidBundleViaOfferAllowUpsellEnabled] = 2;
  v1[OBJC_IVAR____TtC7NewsUI227FeatureAvailabilityProvider____lazy_storage___paidBundleViaOfferAllowAppLaunchUpsellEnabled] = 2;
  v1[OBJC_IVAR____TtC7NewsUI227FeatureAvailabilityProvider____lazy_storage___articleLinkBehaviorImprovementsEnabled] = 2;
  v1[OBJC_IVAR____TtC7NewsUI227FeatureAvailabilityProvider____lazy_storage___navigationImprovementsEnabled] = 2;
  v1[OBJC_IVAR____TtC7NewsUI227FeatureAvailabilityProvider____lazy_storage___liveActivitiesEnabled] = 2;
  v1[OBJC_IVAR____TtC7NewsUI227FeatureAvailabilityProvider____lazy_storage___enableAIAttribution] = 2;
  v1[OBJC_IVAR____TtC7NewsUI227FeatureAvailabilityProvider____lazy_storage___useOfflineMode] = 2;
  v1[OBJC_IVAR____TtC7NewsUI227FeatureAvailabilityProvider____lazy_storage___enableSponsoredSuperfeeds] = 2;
  v1[OBJC_IVAR____TtC7NewsUI227FeatureAvailabilityProvider____lazy_storage___dimNonSubscriberContentOffline] = 2;
  v1[OBJC_IVAR____TtC7NewsUI227FeatureAvailabilityProvider____lazy_storage___useFeedDifferentiationMode] = 2;
  v1[OBJC_IVAR____TtC7NewsUI227FeatureAvailabilityProvider____lazy_storage___foodEnabled] = 2;
  v1[OBJC_IVAR____TtC7NewsUI227FeatureAvailabilityProvider____lazy_storage___exportToGroceryListEnabled] = 2;
  v1[OBJC_IVAR____TtC7NewsUI227FeatureAvailabilityProvider____lazy_storage___widgetUpsellFeaturesEnabled] = 2;
  v1[OBJC_IVAR____TtC7NewsUI227FeatureAvailabilityProvider____lazy_storage___useWelcomeSeries] = 2;
  v1[OBJC_IVAR____TtC7NewsUI227FeatureAvailabilityProvider____lazy_storage___adSponsorshipsEnabled] = 2;
  v1[OBJC_IVAR____TtC7NewsUI227FeatureAvailabilityProvider____lazy_storage___modernLocalNewspaperEnabled] = 2;
  v1[OBJC_IVAR____TtC7NewsUI227FeatureAvailabilityProvider____lazy_storage___useSearchInArticle] = 2;
  v4 = [a1 possiblyUnfetchedAppConfiguration];
  *&v1[OBJC_IVAR____TtC7NewsUI227FeatureAvailabilityProvider_appConfiguration] = v4;
  v14.receiver = v1;
  v14.super_class = ObjectType;
  v5 = objc_msgSendSuper2(&v14, sel_init);
  [a1 addAppConfigObserver_];
  LOBYTE(ObjectType) = sub_2186CA038(&OBJC_IVAR____TtC7NewsUI227FeatureAvailabilityProvider____lazy_storage___useOfflineMode, sub_2186CA084);
  v6 = NewsCoreUserDefaults();
  [v6 setBool:ObjectType & 1 forKey:*MEMORY[0x277D30B18]];

  v7 = sub_2186CA038(&OBJC_IVAR____TtC7NewsUI227FeatureAvailabilityProvider____lazy_storage___narrativeAudio, sub_2186C74F0);
  v8 = NewsCoreUserDefaults();
  [v8 setBool:v7 & 1 forKey:*MEMORY[0x277D30508]];

  v9 = sub_2186CA620(&OBJC_IVAR____TtC7NewsUI227FeatureAvailabilityProvider____lazy_storage___puzzlesEnabled, MEMORY[0x277D31978], &selRef_puzzlesEnabled);
  v10 = NewsCoreUserDefaults();
  [v10 setBool:v9 & 1 forKey:*MEMORY[0x277D30C50]];

  v11 = sub_218C96494(&OBJC_IVAR____TtC7NewsUI227FeatureAvailabilityProvider____lazy_storage___foodEnabled, MEMORY[0x277D319C8], &selRef_foodEnabled);
  v12 = NewsCoreUserDefaults();
  [v12 setBool:v11 & 1 forKey:*MEMORY[0x277D309E0]];

  swift_unknownObjectRelease();
  return v5;
}

uint64_t sub_2186CA038(uint64_t *a1, uint64_t (*a2)(void))
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4 == 2)
  {
    LOBYTE(v4) = a2(*(v2 + OBJC_IVAR____TtC7NewsUI227FeatureAvailabilityProvider_appConfiguration));
    *(v2 + v3) = v4 & 1;
  }

  return v4 & 1;
}

uint64_t sub_2186CA084(void *a1)
{
  v2 = [objc_opt_self() currentDevice];
  v3 = [v2 userInterfaceIdiom];

  v4 = v3 + 1;
  if (v3 + 1 <= 7)
  {
    if (((1 << v4) & 0x19) != 0)
    {
      v5 = 0;
      return v5 & 1;
    }

    if (((1 << v4) & 0x86) != 0)
    {
      sub_219BDC8D4();
      sub_219BDC8B4();
      sub_219BDC624();
      if ([a1 respondsToSelector_])
      {
        [a1 offlineModeEnabled];
      }

      goto LABEL_10;
    }

    if (v3 == 5)
    {
      sub_219BDC8D4();
      sub_219BDC8B4();
      sub_219BDC624();
LABEL_10:
      v5 = sub_219BDC8C4();

      return v5 & 1;
    }
  }

  result = sub_219BF7514();
  __break(1u);
  return result;
}

uint64_t sub_2186CA210()
{
  v0 = sub_219BDC934();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_219BDC7F4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186CA3BC();
  (*(v5 + 104))(v7, *MEMORY[0x277D6D040], v4);
  (*(v1 + 104))(v3, *MEMORY[0x277D6D098], v0);
  result = sub_219BDC9C4();
  qword_280EE91A0 = result;
  return result;
}

void sub_2186CA3BC()
{
  if (!qword_280EE9090)
  {
    sub_219BDC7F4();
    sub_2186C76F4();
    v0 = sub_219BDC9E4();
    if (!v1)
    {
      atomic_store(v0, &qword_280EE9090);
    }
  }
}

void sub_2186CA420()
{
  if (!qword_280E8C0B8)
  {
    sub_2186CA49C();
    v0 = sub_219BF78A4();
    if (!v1)
    {
      atomic_store(v0, &qword_280E8C0B8);
    }
  }
}

unint64_t sub_2186CA49C()
{
  result = qword_280EE7E40;
  if (!qword_280EE7E40)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_280EE7E40);
  }

  return result;
}

uint64_t sub_2186CA620(uint64_t *a1, void (*a2)(void), SEL *a3)
{
  v4 = v3;
  v5 = *a1;
  LODWORD(v3) = v3[*a1];
  if (v3 == 2)
  {
    sub_219BDC8D4();
    sub_219BDC8B4();
    a2();
    v3 = [*&v4[OBJC_IVAR____TtC7NewsUI227FeatureAvailabilityProvider_appConfiguration] puzzlesConfig];
    [v3 *a3];

    LOBYTE(v3) = sub_219BDC8C4();

    v4[v5] = v3 & 1;
  }

  return v3 & 1;
}

void *sub_2186CB07C(void *result, int64_t a2, char a3, void *a4, unint64_t *a5, unint64_t *a6, uint64_t a7)
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    sub_2186CF8E0(0, a5, a6, a7, MEMORY[0x277D84560]);
    v14 = swift_allocObject();
    v15 = _swift_stdlib_malloc_size_0(v14);
    v14[2] = v12;
    v14[3] = 2 * ((v15 - 32) / 40);
  }

  else
  {
    v14 = MEMORY[0x277D84F90];
  }

  if (v9)
  {
    if (v14 != a4 || v14 + 4 >= &a4[5 * v12 + 4])
    {
      memmove(v14 + 4, a4 + 4, 40 * v12);
    }

    a4[2] = 0;
  }

  else
  {
    sub_2186C709C(0, a6);
    swift_arrayInitWithCopy();
  }

  return v14;
}

uint64_t sub_2186CB1F0(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_2186CB278(uint64_t a1)
{
  v2 = sub_219BE1ED4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BE2044();
  sub_2186C709C(0, &qword_280EE8BE8);
  sub_219BE2914();

  sub_219BE2044();
  sub_2186C709C(0, &qword_280EE33E0);
  sub_219BE2914();

  sub_219BE2044();
  sub_2186C709C(0, &qword_280EE33D8);
  sub_219BE2914();

  sub_219BE2044();
  sub_2186C709C(0, &unk_280EE3350);
  sub_219BE2914();

  sub_219BE2044();
  sub_2186CF9FC();
  sub_219BE2904();

  sub_219BE2044();
  sub_2186CBD14();
  sub_219BE2904();

  sub_219BE2044();
  sub_2186CBDD0();
  sub_219BE2904();

  sub_219BE2044();
  sub_2186CBE8C();
  sub_219BE2904();

  sub_219BE2044();
  sub_2186CFABC();
  sub_219BE2904();

  sub_219BE2044();
  sub_2186CBF48();
  sub_219BE2904();

  sub_219BE2044();
  sub_2186C709C(0, &qword_280E91038);
  sub_219BE2914();

  v24 = a1;
  sub_219BE2064();
  __swift_project_boxed_opaque_existential_1(v25, v26);
  sub_2186C709C(0, &unk_280EE3390);
  v23 = *MEMORY[0x277D6CB30];
  v6 = *(v3 + 104);
  v21 = v3 + 104;
  v6(v5);
  v20 = v6;
  sub_219BE2B74();
  v7 = *(v3 + 8);
  v22 = v3 + 8;
  v8 = v5;
  v7(v5, v2);
  __swift_destroy_boxed_opaque_existential_1(v25);
  sub_219BE2064();
  __swift_project_boxed_opaque_existential_1(v25, v26);
  sub_2186C709C(0, &qword_280EE3348);
  v9 = v23;
  (v6)(v5, v23, v2);
  sub_219BE2B74();
  v7(v5, v2);
  __swift_destroy_boxed_opaque_existential_1(v25);
  sub_219BE2064();
  v18 = v27;
  __swift_project_boxed_opaque_existential_1(v25, v26);
  sub_2186CC048();
  v10 = v9;
  v11 = v20;
  (v20)(v5, v10, v2);
  sub_219BE2B64();
  v7(v5, v2);
  __swift_destroy_boxed_opaque_existential_1(v25);
  sub_219BE2064();
  __swift_project_boxed_opaque_existential_1(v25, v26);
  sub_2186CFB78();
  v12 = v23;
  (v11)(v8, v23, v2);
  sub_219BE2B64();
  v7(v8, v2);
  v19 = v7;
  __swift_destroy_boxed_opaque_existential_1(v25);
  sub_219BE2064();
  v18 = v27;
  __swift_project_boxed_opaque_existential_1(v25, v26);
  sub_2186CC53C();
  v13 = v12;
  v14 = v20;
  (v20)(v8, v13, v2);
  sub_219BE2B64();
  v7(v8, v2);
  __swift_destroy_boxed_opaque_existential_1(v25);
  sub_219BE2064();
  __swift_project_boxed_opaque_existential_1(v25, v26);
  sub_2186D6598();
  v15 = v23;
  (v14)(v8, v23, v2);
  sub_219BE2B64();
  v16 = v19;
  v19(v8, v2);
  __swift_destroy_boxed_opaque_existential_1(v25);
  sub_219BE2064();
  v18 = v27;
  __swift_project_boxed_opaque_existential_1(v25, v26);
  sub_2186D6654();
  (v14)(v8, v15, v2);
  sub_219BE2B64();
  v16(v8, v2);
  __swift_destroy_boxed_opaque_existential_1(v25);
  sub_219BE2064();
  __swift_project_boxed_opaque_existential_1(v25, v26);
  sub_2186CC5F8();
  (v14)(v8, v23, v2);
  sub_219BE2B64();
  v16(v8, v2);
  __swift_destroy_boxed_opaque_existential_1(v25);
  sub_219BE2054();
  sub_219BE28F4();
}

uint64_t sub_2186CBC0C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2186CBC6C()
{
  result = sub_219BDF604();
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

void sub_2186CBD14()
{
  if (!qword_280EA73D8)
  {
    sub_219BEC0C4();
    sub_219BEC234();
    sub_2186CBC0C(&unk_280EE33C0, MEMORY[0x277D2D560]);
    v0 = type metadata accessor for AdAnalyticsJournalEntryProcessor();
    if (!v1)
    {
      atomic_store(v0, &qword_280EA73D8);
    }
  }
}

void sub_2186CBDD0()
{
  if (!qword_280EA7388)
  {
    sub_219BEC424();
    sub_219BEC324();
    sub_2186CBC0C(&qword_280EE3340, MEMORY[0x277D2D660]);
    v0 = type metadata accessor for AdAnalyticsJournalEntryProcessor();
    if (!v1)
    {
      atomic_store(v0, &qword_280EA7388);
    }
  }
}

void sub_2186CBE8C()
{
  if (!qword_280EA7368)
  {
    sub_219BEBEA4();
    sub_219BEBF84();
    sub_2186CBC0C(&unk_280EE3440, MEMORY[0x277D2D440]);
    v0 = type metadata accessor for AdAnalyticsJournalEntryProcessor();
    if (!v1)
    {
      atomic_store(v0, &qword_280EA7368);
    }
  }
}

void sub_2186CBF48()
{
  if (!qword_280EA7398)
  {
    sub_219BEC304();
    sub_219BEC084();
    sub_2186CBC0C(&unk_280EE3360, MEMORY[0x277D2D618]);
    v0 = type metadata accessor for AdAnalyticsJournalEntryProcessor();
    if (!v1)
    {
      atomic_store(v0, &qword_280EA7398);
    }
  }
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

void sub_2186CC048()
{
  if (!qword_280EE3300)
  {
    sub_219BEC2C4();
    sub_219BEC394();
    sub_2186CBC0C(&unk_280EE3370, MEMORY[0x277D2D600]);
    v0 = sub_219BEC454();
    if (!v1)
    {
      atomic_store(v0, &qword_280EE3300);
    }
  }
}

uint64_t sub_2186CC104(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2186CC14C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2186CC194(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2186CC1DC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2186CC224(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2186CC26C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2186CC2B4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2186CC2FC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2186CC344(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2186CC38C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2186CC3D4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2186CC41C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2186CC464(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2186CC4AC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2186CC4F4(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_2186CC53C()
{
  if (!qword_280EE32F0)
  {
    sub_219BEC424();
    sub_219BEC324();
    sub_2186CBC0C(&qword_280EE3340, MEMORY[0x277D2D660]);
    v0 = sub_219BEC454();
    if (!v1)
    {
      atomic_store(v0, &qword_280EE32F0);
    }
  }
}

void sub_2186CC5F8()
{
  if (!qword_280EE32F8)
  {
    sub_219BEC304();
    sub_219BEC084();
    sub_2186CBC0C(&unk_280EE3360, MEMORY[0x277D2D618]);
    v0 = sub_219BEC454();
    if (!v1)
    {
      atomic_store(v0, &qword_280EE32F8);
    }
  }
}

uint64_t sub_2186CC6B4(uint64_t a1)
{
  v39 = sub_219BE1ED4();
  v2 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v4 = v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_219BE2DF4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BE2044();
  sub_2186D6710(0, &qword_280EC5430);
  sub_219BE2904();

  sub_219BE2044();
  sub_2186CFDE4(0, &qword_280E901C0);
  sub_219BE2914();

  v24[1] = a1;
  sub_219BE2044();
  sub_2186CFDE4(0, &qword_280EE5700);
  sub_219BE2914();

  v36 = *MEMORY[0x277D6CF10];
  v35 = *(v6 + 104);
  v37 = v6 + 104;
  v27 = v5;
  v35(v8);
  v26 = v8;
  sub_219BE19F4();

  v33 = *(v6 + 8);
  v34 = v6 + 8;
  v33(v8, v5);
  sub_219BE2064();
  __swift_project_boxed_opaque_existential_1(v41, v42);
  sub_2186D6710(0, &qword_280EE5AF8);
  v9 = *MEMORY[0x277D6CB30];
  v10 = *(v2 + 104);
  v40 = v2 + 104;
  v32 = v9;
  v11 = v39;
  v10(v4, v9, v39);
  v30 = v10;
  sub_219BE2B64();
  v12 = *(v2 + 8);
  v12(v4, v11);
  v29 = v12;
  v31 = v2 + 8;
  __swift_destroy_boxed_opaque_existential_1(v41);
  sub_219BE2064();
  v24[0] = v43;
  __swift_project_boxed_opaque_existential_1(v41, v42);
  v13 = sub_219BE27C4();
  v10(v4, v9, v11);
  v28 = v13;
  v25 = v4;
  sub_219BE2B64();
  v12(v4, v11);
  __swift_destroy_boxed_opaque_existential_1(v41);
  sub_219BE2054();
  type metadata accessor for FeatureAvailability();
  v14 = *(v38 + 16);
  *(swift_allocObject() + 16) = v14;
  v15 = v14;
  sub_219BE2904();

  v17 = v26;
  v16 = v27;
  v18 = v36;
  v19 = v35;
  (v35)(v26, v36, v27);
  sub_219BE19F4();

  v20 = v33;
  v33(v17, v16);
  sub_219BE2044();
  sub_2186D6710(0, &unk_280EE7310);
  sub_219BE2904();

  v19(v17, v18, v16);
  sub_219BE19F4();

  v20(v17, v16);
  sub_219BE2064();
  __swift_project_boxed_opaque_existential_1(v41, v42);
  v21 = v25;
  v22 = v39;
  v30(v25, v32, v39);
  sub_219BE2B64();
  v29(v21, v22);
  return __swift_destroy_boxed_opaque_existential_1(v41);
}

uint64_t sub_2186CCD0C()
{

  return swift_deallocObject();
}

uint64_t sub_2186CCD8C()
{
  sub_219BE2044();
  sub_2186C709C(0, &unk_280E92740);
  sub_219BE2914();

  sub_219BE2044();
  sub_2186C709C(0, &unk_280EE8B60);
  sub_219BE2914();

  sub_219BE2044();
  sub_219BE28F4();

  sub_219BE2044();
  sub_219BE2914();

  sub_219BE2044();
  sub_219BE2914();

  sub_219BE2044();
  sub_219BE2914();

  sub_219BE2044();
  sub_219BE2914();

  sub_219BE2044();
  sub_2186C709C(0, &unk_280E91330);
  sub_219BE2914();

  sub_219BE2044();
  sub_2186C709C(0, &unk_280E8FE80);
  sub_219BE2914();

  sub_219BE2044();
  sub_2186C709C(0, &unk_280E92648);
  sub_219BE2914();

  sub_219BE2044();
  sub_2186C709C(0, &unk_280E8FE70);
  sub_219BE2914();

  sub_219BE2044();
  sub_2186C709C(0, &unk_280E8FF50);
  sub_219BE2914();

  sub_219BE2044();
  sub_2186D6710(0, &unk_280E8E7C0);
  sub_219BE2904();

  sub_219BE2044();
  sub_2186D6710(0, &unk_280E8DB78);
  sub_219BE2904();

  sub_219BE2044();
  sub_2186C6148(0, &qword_280E8DEB0);

  sub_219BE2904();

  sub_219BE2044();
  sub_2186C6148(0, &unk_280E8E608);
  sub_219BE2904();
}

uint64_t sub_2186CD320()
{
  v0 = sub_219BE2DF4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BE2044();
  sub_219BE5D84();
  sub_219BE2904();

  v4 = *MEMORY[0x277D6CF00];
  v5 = *(v1 + 104);
  v5(v3, v4, v0);
  sub_219BE19F4();

  v6 = *(v1 + 8);
  v6(v3, v0);
  sub_219BE2044();
  sub_2186C709C(0, qword_280EBF670);
  sub_219BE2914();

  sub_219BE2044();
  sub_2186C709C(0, &qword_280EE8080);
  sub_219BE2914();

  sub_219BE2044();
  sub_2186C709C(0, qword_280E9BF00);
  sub_219BE2914();

  sub_219BE2044();
  sub_2186CD650();
  sub_219BE2904();

  v5(v3, v4, v0);
  sub_219BE19F4();

  v6(v3, v0);
  sub_219BE2054();
  sub_219BE28F4();
}

void sub_2186CD650()
{
  if (!qword_280EE7CE0)
  {
    sub_2186D679C();
    v0 = sub_219BE1EC4();
    if (!v1)
    {
      atomic_store(v0, &qword_280EE7CE0);
    }
  }
}

uint64_t sub_2186CD6B4(uint64_t a1)
{
  v2 = sub_219BE1ED4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v65 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BE2054();
  sub_219BE28F4();

  sub_219BE2064();
  __swift_project_boxed_opaque_existential_1(v74, v75);
  v6 = sub_2186C709C(0, &qword_280EE53A0);
  v7 = *MEMORY[0x277D6CB30];
  v8 = *(v3 + 104);
  v70 = v3 + 104;
  v8(v5, v7, v2);
  sub_219BE2B74();
  v72 = *(v3 + 8);
  v72(v5, v2);
  v71 = v3 + 8;
  __swift_destroy_boxed_opaque_existential_1(v74);
  v69 = a1;
  sub_219BE2054();
  sub_219BE28F4();

  sub_219BE2064();
  __swift_project_boxed_opaque_existential_1(v74, v75);
  v67 = v7;
  v8(v5, v7, v2);
  sub_219BE2B74();
  v72(v5, v2);
  __swift_destroy_boxed_opaque_existential_1(v74);
  sub_219BE2054();
  sub_219BE28F4();

  sub_219BE2064();
  __swift_project_boxed_opaque_existential_1(v74, v75);
  v8(v5, v7, v2);
  v9 = v8;
  v68 = v8;
  sub_219BE2B74();
  v10 = v72;
  v72(v5, v2);
  __swift_destroy_boxed_opaque_existential_1(v74);
  sub_219BE2054();
  sub_219BE28F4();

  sub_219BE2064();
  __swift_project_boxed_opaque_existential_1(v74, v75);
  v9(v5, v67, v2);
  sub_219BE2B74();
  v10(v5, v2);
  __swift_destroy_boxed_opaque_existential_1(v74);
  sub_219BE2054();
  sub_219BE28F4();

  sub_219BE2064();
  __swift_project_boxed_opaque_existential_1(v74, v75);
  v11 = v67;
  v66 = v2;
  v12 = v68;
  v68(v5, v67, v2);
  sub_219BE2B74();
  v72(v5, v2);
  __swift_destroy_boxed_opaque_existential_1(v74);
  sub_219BE2054();
  sub_219BE28F4();

  sub_219BE2064();
  __swift_project_boxed_opaque_existential_1(v74, v75);
  v13 = v11;
  v14 = v11;
  v15 = v66;
  v12(v5, v13, v66);
  sub_219BE2B74();
  v16 = v72;
  v72(v5, v15);
  __swift_destroy_boxed_opaque_existential_1(v74);
  sub_219BE2054();
  sub_219BE28F4();

  sub_219BE2064();
  __swift_project_boxed_opaque_existential_1(v74, v75);
  v17 = v14;
  v18 = v15;
  v19 = v68;
  v68(v5, v17, v15);
  sub_219BE2B74();
  v16(v5, v15);
  __swift_destroy_boxed_opaque_existential_1(v74);
  sub_219BE2054();
  sub_219BE28F4();

  sub_219BE2064();
  __swift_project_boxed_opaque_existential_1(v74, v75);
  v20 = v67;
  v19(v5, v67, v15);
  v73 = v6;
  sub_219BE2B74();
  v72(v5, v15);
  __swift_destroy_boxed_opaque_existential_1(v74);
  sub_219BE2054();
  sub_219BE28F4();

  sub_219BE2064();
  __swift_project_boxed_opaque_existential_1(v74, v75);
  v19(v5, v20, v15);
  sub_219BE2B74();
  v21 = v72;
  v72(v5, v15);
  __swift_destroy_boxed_opaque_existential_1(v74);
  sub_219BE2054();
  sub_219BE28F4();

  sub_219BE2064();
  __swift_project_boxed_opaque_existential_1(v74, v75);
  v68(v5, v20, v15);
  sub_219BE2B74();
  v21(v5, v15);
  v22 = v21;
  __swift_destroy_boxed_opaque_existential_1(v74);
  sub_219BE2054();
  sub_219BE28F4();

  sub_219BE2064();
  __swift_project_boxed_opaque_existential_1(v74, v75);
  v23 = v68;
  v68(v5, v20, v18);
  sub_219BE2B74();
  v21(v5, v18);
  __swift_destroy_boxed_opaque_existential_1(v74);
  sub_219BE2054();
  sub_219BE28F4();

  sub_219BE2064();
  __swift_project_boxed_opaque_existential_1(v74, v75);
  v23(v5, v20, v18);
  v24 = v23;
  sub_219BE2B74();
  v22(v5, v18);
  __swift_destroy_boxed_opaque_existential_1(v74);
  sub_219BE2054();
  sub_219BE28F4();

  sub_219BE2064();
  __swift_project_boxed_opaque_existential_1(v74, v75);
  v23(v5, v20, v18);
  sub_219BE2B74();
  v22(v5, v18);
  __swift_destroy_boxed_opaque_existential_1(v74);
  sub_219BE2054();
  sub_219BE28F4();

  sub_219BE2064();
  __swift_project_boxed_opaque_existential_1(v74, v75);
  v23(v5, v20, v18);
  sub_219BE2B74();
  v72(v5, v18);
  __swift_destroy_boxed_opaque_existential_1(v74);
  sub_219BE2054();
  sub_219BE28F4();

  sub_219BE2054();
  sub_219BE28F4();

  sub_219BE2054();
  sub_219BE28F4();

  sub_219BE2054();
  sub_219BE28F4();

  sub_219BE2054();
  sub_219BE28F4();

  sub_219BE2054();
  sub_219BE28F4();

  sub_219BE2054();
  sub_219BE28F4();

  sub_219BE2064();
  __swift_project_boxed_opaque_existential_1(v74, v75);
  v23(v5, v20, v18);
  sub_219BE2B74();
  v72(v5, v18);
  __swift_destroy_boxed_opaque_existential_1(v74);
  sub_219BE2054();
  sub_219BE28F4();

  sub_219BE2064();
  __swift_project_boxed_opaque_existential_1(v74, v75);
  v25 = v20;
  v26 = v20;
  v27 = v18;
  v24(v5, v25, v18);
  v28 = v24;
  sub_219BE2B74();
  v29 = v72;
  v72(v5, v27);
  __swift_destroy_boxed_opaque_existential_1(v74);
  sub_219BE2064();
  __swift_project_boxed_opaque_existential_1(v74, v75);
  v28(v5, v26, v27);
  sub_219BE2B74();
  v29(v5, v27);
  __swift_destroy_boxed_opaque_existential_1(v74);
  sub_219BE2054();
  sub_219BE28F4();

  sub_219BE2064();
  __swift_project_boxed_opaque_existential_1(v74, v75);
  v30 = v67;
  v28(v5, v67, v27);
  sub_219BE2B74();
  v29(v5, v27);
  __swift_destroy_boxed_opaque_existential_1(v74);
  sub_219BE2054();
  sub_219BE28F4();

  sub_219BE2064();
  __swift_project_boxed_opaque_existential_1(v74, v75);
  v28(v5, v30, v27);
  sub_219BE2B74();
  v31 = v27;
  v32 = v72;
  v72(v5, v27);
  __swift_destroy_boxed_opaque_existential_1(v74);
  sub_219BE2054();
  sub_219BE28F4();

  sub_219BE2064();
  __swift_project_boxed_opaque_existential_1(v74, v75);
  v33 = v27;
  v34 = v68;
  v68(v5, v67, v33);
  sub_219BE2B74();
  v32(v5, v31);
  __swift_destroy_boxed_opaque_existential_1(v74);
  sub_219BE2054();
  sub_219BE28F4();

  sub_219BE2064();
  __swift_project_boxed_opaque_existential_1(v74, v75);
  v35 = v67;
  v34(v5, v67, v31);
  sub_219BE2B74();
  v72(v5, v31);
  __swift_destroy_boxed_opaque_existential_1(v74);
  sub_219BE2054();
  sub_219BE28F4();

  sub_219BE2064();
  __swift_project_boxed_opaque_existential_1(v74, v75);
  v34(v5, v35, v31);
  sub_219BE2B74();
  v36 = v72;
  v72(v5, v31);
  __swift_destroy_boxed_opaque_existential_1(v74);
  sub_219BE2054();
  sub_219BE28F4();

  sub_219BE2064();
  __swift_project_boxed_opaque_existential_1(v74, v75);
  v37 = v35;
  v38 = v35;
  v39 = v66;
  v68(v5, v38, v66);
  sub_219BE2B74();
  v36(v5, v39);
  __swift_destroy_boxed_opaque_existential_1(v74);
  sub_219BE2054();
  sub_219BE28F4();

  sub_219BE2064();
  __swift_project_boxed_opaque_existential_1(v74, v75);
  v40 = v37;
  v41 = v68;
  v68(v5, v37, v39);
  sub_219BE2B74();
  v42 = v72;
  v72(v5, v39);
  __swift_destroy_boxed_opaque_existential_1(v74);
  sub_219BE2054();
  sub_219BE28F4();

  sub_219BE2064();
  __swift_project_boxed_opaque_existential_1(v74, v75);
  v43 = v40;
  v44 = v66;
  v41(v5, v43, v66);
  sub_219BE2B74();
  v45 = v42;
  v42(v5, v44);
  __swift_destroy_boxed_opaque_existential_1(v74);
  sub_219BE2054();
  sub_219BE28F4();

  sub_219BE2064();
  __swift_project_boxed_opaque_existential_1(v74, v75);
  v46 = v67;
  v41(v5, v67, v44);
  sub_219BE2B74();
  v45(v5, v44);
  __swift_destroy_boxed_opaque_existential_1(v74);
  sub_219BE2054();
  sub_219BE28F4();

  sub_219BE2064();
  __swift_project_boxed_opaque_existential_1(v74, v75);
  v47 = v46;
  v48 = v46;
  v49 = v66;
  v41(v5, v48, v66);
  sub_219BE2B74();
  v50 = v72;
  v72(v5, v49);
  __swift_destroy_boxed_opaque_existential_1(v74);
  sub_219BE2054();
  sub_219BE28F4();

  sub_219BE2064();
  __swift_project_boxed_opaque_existential_1(v74, v75);
  v51 = v47;
  v52 = v41;
  v41(v5, v51, v49);
  sub_219BE2B74();
  v50(v5, v49);
  __swift_destroy_boxed_opaque_existential_1(v74);
  sub_219BE2054();
  sub_219BE28F4();

  sub_219BE2064();
  __swift_project_boxed_opaque_existential_1(v74, v75);
  v53 = v67;
  v52(v5, v67, v49);
  sub_219BE2B74();
  v50(v5, v49);
  __swift_destroy_boxed_opaque_existential_1(v74);
  sub_219BE2054();
  sub_219BE28F4();

  sub_219BE2064();
  __swift_project_boxed_opaque_existential_1(v74, v75);
  v68(v5, v53, v49);
  sub_219BE2B74();
  v54 = v49;
  v50(v5, v49);
  __swift_destroy_boxed_opaque_existential_1(v74);
  sub_219BE1CC4();
  if (sub_219BE1CB4())
  {
    sub_219BE2054();
    sub_219BE28F4();

    sub_219BE2064();
    __swift_project_boxed_opaque_existential_1(v74, v75);
    v68(v5, v67, v49);
    sub_219BE2B74();
    v72(v5, v49);
    __swift_destroy_boxed_opaque_existential_1(v74);
  }

  sub_219BE2054();
  sub_219BE28F4();

  sub_219BE2054();
  sub_219BE28F4();

  sub_219BE2064();
  __swift_project_boxed_opaque_existential_1(v74, v75);
  v55 = v67;
  v56 = v68;
  v68(v5, v67, v49);
  sub_219BE2B74();
  v72(v5, v49);
  __swift_destroy_boxed_opaque_existential_1(v74);
  sub_219BE2054();
  sub_219BE28F4();

  sub_219BE2064();
  __swift_project_boxed_opaque_existential_1(v74, v75);
  v56(v5, v55, v49);
  sub_219BE2B74();
  v57 = v72;
  v72(v5, v49);
  __swift_destroy_boxed_opaque_existential_1(v74);
  sub_219BE2054();
  sub_219BE28F4();

  sub_219BE2064();
  __swift_project_boxed_opaque_existential_1(v74, v75);
  v58 = v67;
  v68(v5, v67, v49);
  sub_219BE2B74();
  v57(v5, v49);
  __swift_destroy_boxed_opaque_existential_1(v74);
  sub_219BE2054();
  sub_219BE28F4();

  sub_219BE2064();
  __swift_project_boxed_opaque_existential_1(v74, v75);
  v59 = v68;
  v68(v5, v58, v49);
  sub_219BE2B74();
  v72(v5, v49);
  __swift_destroy_boxed_opaque_existential_1(v74);
  sub_219BE2054();
  sub_219BE28F4();

  sub_219BE2064();
  __swift_project_boxed_opaque_existential_1(v74, v75);
  v59(v5, v58, v49);
  sub_219BE2B74();
  v60 = v72;
  v72(v5, v49);
  __swift_destroy_boxed_opaque_existential_1(v74);
  sub_219BE2054();
  sub_219BE28F4();

  sub_219BE2064();
  __swift_project_boxed_opaque_existential_1(v74, v75);
  v61 = v67;
  v59(v5, v67, v54);
  sub_219BE2B74();
  v60(v5, v54);
  __swift_destroy_boxed_opaque_existential_1(v74);
  sub_219BE2054();
  sub_219BE28F4();

  sub_219BE2064();
  __swift_project_boxed_opaque_existential_1(v74, v75);
  v62 = v61;
  v63 = v68;
  v68(v5, v62, v54);
  sub_219BE2B74();
  v60(v5, v54);
  __swift_destroy_boxed_opaque_existential_1(v74);
  sub_219BE2054();
  sub_219BE28F4();

  sub_219BE2064();
  __swift_project_boxed_opaque_existential_1(v74, v75);
  v63(v5, v67, v54);
  sub_219BE2B74();
  v60(v5, v54);
  return __swift_destroy_boxed_opaque_existential_1(v74);
}

uint64_t sub_2186CF678()
{
  sub_219BE2044();
  sub_2186C709C(0, qword_280EB8F70);
  sub_219BE2914();

  sub_219BE2044();
  sub_2186C709C(0, qword_280EB5058);
  sub_219BE2914();

  sub_2186C709C(0, qword_280EB66D0);
  sub_219BE19C4();

  sub_219BE2054();
  sub_219BE28F4();
}

uint64_t sub_2186CF7E0()
{
  sub_219BE2044();
  sub_2186C709C(0, &qword_280EB1170);
  sub_219BE2914();

  sub_219BE2054();
  sub_219BE28F4();
}

void sub_2186CF8E0(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_2186C709C(255, a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_2186CF94C()
{
  if (!qword_280EE5A80)
  {
    sub_2186CF9A8();
    v0 = sub_219BE6484();
    if (!v1)
    {
      atomic_store(v0, &qword_280EE5A80);
    }
  }
}

unint64_t sub_2186CF9A8()
{
  result = qword_280EE00F0;
  if (!qword_280EE00F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EE00F0);
  }

  return result;
}

void sub_2186CF9FC()
{
  if (!qword_280EA73B8)
  {
    sub_219BEC2C4();
    sub_219BEC394();
    sub_2186CBC0C(&unk_280EE3370, MEMORY[0x277D2D600]);
    v0 = type metadata accessor for AdAnalyticsJournalEntryProcessor();
    if (!v1)
    {
      atomic_store(v0, &qword_280EA73B8);
    }
  }
}

void sub_2186CFABC()
{
  if (!qword_280EA73C8)
  {
    sub_219BEC174();
    sub_219BEC084();
    sub_2186CBC0C(&unk_280EE3380, MEMORY[0x277D2D5A0]);
    v0 = type metadata accessor for AdAnalyticsJournalEntryProcessor();
    if (!v1)
    {
      atomic_store(v0, &qword_280EA73C8);
    }
  }
}

void sub_2186CFB78()
{
  if (!qword_280EE3318)
  {
    sub_219BEC0C4();
    sub_219BEC234();
    sub_2186CC26C(&unk_280EE33C0, MEMORY[0x277D2D560]);
    v0 = sub_219BEC454();
    if (!v1)
    {
      atomic_store(v0, &qword_280EE3318);
    }
  }
}

uint64_t sub_2186CFC34()
{
  v0 = sub_219BE1ED4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v6[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BE2064();
  __swift_project_boxed_opaque_existential_1(v6, v6[3]);
  sub_219BE27C4();
  (*(v1 + 104))(v3, *MEMORY[0x277D6CB30], v0);
  sub_219BE2B64();
  (*(v1 + 8))(v3, v0);
  __swift_destroy_boxed_opaque_existential_1(v6);
  sub_219BE2054();
  sub_219BE28F4();
}

uint64_t sub_2186CFDE4(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_2186CFE40()
{
  v0 = sub_219BE1ED4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v10[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_219BE2DF4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BE2044();
  sub_2186C709C(0, &qword_280EE8E98);
  sub_219BE2914();

  (*(v5 + 104))(v7, *MEMORY[0x277D6CF00], v4);
  sub_219BE19F4();

  (*(v5 + 8))(v7, v4);
  sub_219BE2044();
  type metadata accessor for LinkActionActivityProvider();
  sub_219BE2904();

  sub_219BE2044();
  sub_2186D6710(0, &unk_280E8DE20);
  sub_219BE2904();

  sub_219BE2064();
  __swift_project_boxed_opaque_existential_1(v10, v10[3]);
  sub_2186D6710(0, &qword_280E8DEB8);
  (*(v1 + 104))(v3, *MEMORY[0x277D6CB30], v0);
  sub_219BE2B64();
  (*(v1 + 8))(v3, v0);
  return __swift_destroy_boxed_opaque_existential_1(v10);
}

uint64_t sub_2186D0184()
{
  sub_219BE2044();
  sub_2186C709C(0, &unk_280EE8CE8);
  sub_219BE2914();

  sub_219BE19D4();

  sub_219BE2044();
  sub_2186C709C(0, &unk_280EE8B50);
  sub_219BE2914();

  sub_219BE2044();
  sub_2186C709C(0, &qword_280EE8B98);
  sub_219BE2914();

  sub_219BE2044();
  sub_2186C709C(0, &qword_280EE8BB0);
  sub_219BE2914();

  sub_219BE2044();
  sub_2186C709C(0, &qword_280EE8B78);
  sub_219BE2914();

  sub_219BE2044();
  sub_2186C709C(0, &unk_280EE89C0);
  sub_219BE2914();

  sub_219BE2044();
  sub_2186C709C(0, &qword_280EE8BD8);
  sub_219BE2914();

  sub_219BE2044();
  sub_2186C709C(0, &qword_280EE8AC0);
  sub_219BE2914();

  sub_219BE2044();
  sub_2186C709C(0, &unk_280EE8CF8);
  sub_219BE2914();

  sub_219BE2044();
  sub_2186C709C(0, &qword_280EE8BA0);
  sub_219BE2914();

  sub_219BE2044();
  sub_2186C709C(0, &qword_280EE8AC8);
  sub_219BE2914();

  sub_219BE2044();
  sub_2186C709C(0, &qword_280EE8990);
  sub_219BE2914();

  sub_219BE2044();
  sub_2186C709C(0, &qword_280E8FDB8);
  sub_219BE2914();

  sub_219BE2044();
  sub_2186C709C(0, &qword_280E90170);
  sub_219BE2914();

  sub_219BE2054();
  sub_219BE28F4();
}

void sub_2186D0720(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void *sub_2186D0784()
{
  type metadata accessor for PuzzleTypeOfflineDatabaseSelector();
  v0 = swift_allocObject();
  result = sub_2186D07E4();
  off_280EA25A8 = v0;
  return result;
}

void *sub_2186D07E4()
{
  v1 = v0;
  v0[3] = 0xD000000000000025;
  v0[4] = 0x8000000219D2B0A0;
  *&v21[0] = 0;
  sub_2186D0B50();
  swift_allocObject();
  v0[5] = sub_219BE2E64();
  v2 = [objc_opt_self() standardUserDefaults];
  v0[2] = v2;
  v3 = v2;

  v4 = sub_219BF53D4();

  v5 = [v3 objectForKey_];

  if (v5)
  {
    sub_219BF70B4();
    swift_unknownObjectRelease();
  }

  else
  {
    v19 = 0u;
    v20 = 0u;
  }

  v21[0] = v19;
  v21[1] = v20;
  if (*(&v20 + 1))
  {
    sub_2186D0C48(0, &qword_280E8EE20, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
    if (swift_dynamicCast())
    {
      v6 = v18;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    sub_218806FD0(v21);
    v6 = 0;
  }

  if (qword_280EE6070 != -1)
  {
    swift_once();
  }

  v7 = sub_219BE5434();
  __swift_project_value_buffer(v7, qword_280F62790);

  v8 = sub_219BE5414();
  v9 = sub_219BF6214();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *&v21[0] = v11;
    *v10 = 136315138;
    if (v6)
    {
      v12 = v6;
    }

    else
    {
      v12 = MEMORY[0x277D84F90];
    }

    v13 = MEMORY[0x21CECC6D0](v12, MEMORY[0x277D837D0]);
    v15 = v14;

    v16 = sub_2186D1058(v13, v15, v21);

    *(v10 + 4) = v16;
    _os_log_impl(&dword_2186C1000, v8, v9, "PuzzleTypeOfflineDatabaseSelector: initializing with supportedPuzzleTypes [%s]", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v11);
    MEMORY[0x21CECF960](v11, -1, -1);
    MEMORY[0x21CECF960](v10, -1, -1);
  }

  *&v21[0] = v6;

  sub_219BE2E94();

  return v1;
}

void sub_2186D0AF8()
{
  if (!qword_280E8EDB0)
  {
    sub_2186D0BA8();
    v0 = sub_219BF6FB4();
    if (!v1)
    {
      atomic_store(v0, &qword_280E8EDB0);
    }
  }
}

void sub_2186D0B50()
{
  if (!qword_280EE7058)
  {
    sub_2186D0AF8();
    v0 = sub_219BE2EA4();
    if (!v1)
    {
      atomic_store(v0, &qword_280EE7058);
    }
  }
}

void sub_2186D0BA8()
{
  if (!qword_280E8EE20)
  {
    v0 = sub_219BF5B14();
    if (!v1)
    {
      atomic_store(v0, &qword_280E8EE20);
    }
  }
}

void sub_2186D0BF8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_2186D0C48(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_2186D0C98(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x277D837D0]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_2186D0CEC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_2186D0D3C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_2186D0D8C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_2186D0DDC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_2186D0E2C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_2186D0E7C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_2186D0ECC()
{
  v0 = sub_219BE5434();
  __swift_allocate_value_buffer(v0, qword_280F62790);
  __swift_project_value_buffer(v0, qword_280F62790);
  v1 = [objc_opt_self() mainBundle];
  v2 = [v1 bundleIdentifier];

  if (v2)
  {
    sub_219BF5414();
  }

  return sub_219BE5424();
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
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

unint64_t sub_2186D1058(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_2186D1124(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_2186D1230(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_2186D1124(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_218824A44(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_219BF73B4();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_2186D1230(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_2186D128C(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_2186D1358(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_219BF78F4() & 1;
  }
}

uint64_t sub_2186D13B0()
{
  v0 = sub_219BE1ED4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v6[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BE2044();
  type metadata accessor for DiagnosticFileProvider();
  sub_219BE2904();

  sub_219BE2064();
  __swift_project_boxed_opaque_existential_1(v6, v6[3]);
  sub_219BE2AF4();
  (*(v1 + 104))(v3, *MEMORY[0x277D6CB30], v0);
  sub_219BE2B64();
  (*(v1 + 8))(v3, v0);
  return __swift_destroy_boxed_opaque_existential_1(v6);
}

uint64_t sub_2186D157C()
{
  sub_219BE2044();
  sub_2186C709C(0, &qword_280EE8B18);
  sub_219BE2914();

  sub_219BE2044();
  sub_2186D6710(0, &qword_280E8DC60);
  sub_219BE2904();

  sub_219BE2044();
  sub_2186C709C(0, qword_280ECA990);
  sub_219BE2914();

  sub_219BE2044();
  sub_2186C709C(0, &unk_280E8FDA0);
  sub_219BE2914();

  sub_219BE2044();
  type metadata accessor for AnalyticsReferralFactory();
  sub_219BE2904();

  sub_219BE2044();
  type metadata accessor for AdContextFactory();
  sub_219BE2904();

  sub_219BE2044();
  sub_2186C709C(0, &unk_280EBF930);
  sub_219BE2914();

  sub_219BE2044();
  type metadata accessor for FeedViewContextFactory();
  sub_219BE2904();

  sub_219BE2044();
  sub_2186C709C(0, qword_280E9A080);
  sub_219BE2914();

  sub_219BE2044();
  sub_2186C709C(0, &qword_280E9D658);
  sub_219BE2914();

  sub_219BE2044();
  sub_2186C709C(0, qword_280EB4590);
  sub_219BE2914();

  sub_219BE2044();
  sub_2186C709C(0, &qword_280EA6010);
  sub_219BE2914();

  sub_219BE2044();
  type metadata accessor for TagFeedViewerViewControllerFactory();
  sub_219BE2904();

  sub_219BE2054();
  sub_219BE28F4();
}

uint64_t sub_2186D1AC4()
{
  v0 = sub_219BE2DF4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BE2044();
  sub_2186CFDE4(0, &qword_280EE8BA8);
  sub_219BE2914();

  sub_219BE2044();
  sub_2186CFDE4(0, &unk_280ECA980);
  sub_219BE2914();

  sub_219BE2044();
  sub_2186C6148(0, &unk_280E8E608);
  sub_219BE2904();

  v4 = *MEMORY[0x277D6CF10];
  v5 = *(v1 + 104);
  v5(v3, v4, v0);
  sub_219BE19F4();

  v6 = *(v1 + 8);
  v6(v3, v0);
  sub_219BE2044();
  sub_2186D6710(0, &qword_280EE8F20);
  sub_219BE2904();

  v5(v3, v4, v0);
  sub_219BE19F4();

  return (v6)(v3, v0);
}

uint64_t sub_2186D1D98(uint64_t a1)
{
  v2 = sub_219BE1ED4();
  v19 = *(v2 - 8);
  v20 = v2;
  MEMORY[0x28223BE20](v2);
  v18 = v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_219BE2DF4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BE2044();
  sub_2186D231C();
  sub_219BE2904();

  sub_219BE2044();
  type metadata accessor for NewsLiveActivityAlertDisplayer();
  sub_219BE2904();

  v8 = *MEMORY[0x277D6CF10];
  v9 = *(v5 + 104);
  v9(v7, v8, v4);
  sub_219BE19F4();

  v10 = *(v5 + 8);
  v10(v7, v4);
  sub_219BE2044();
  sub_2186C709C(0, &qword_280EE05D0);
  sub_219BE2914();

  v9(v7, v8, v4);
  sub_219BE19F4();

  v10(v7, v4);
  sub_219BE2044();
  sub_2186C709C(0, &qword_280EE80A8);
  sub_219BE2914();

  sub_219BE2044();
  sub_2186C709C(0, qword_280E94D90);
  sub_219BE2914();

  v17[1] = a1;
  sub_219BE2044();
  sub_2186D6710(0, &qword_280E8DBF8);
  sub_219BE2904();

  sub_219BE2054();
  sub_219BE28F4();

  sub_219BE2064();
  __swift_project_boxed_opaque_existential_1(v21, v22);
  sub_2186D6710(0, &unk_280E8DEC0);
  v11 = *MEMORY[0x277D6CB30];
  v13 = v18;
  v12 = v19;
  v17[0] = *(v19 + 104);
  v14 = v20;
  (v17[0])(v18, v11, v20);
  sub_219BE2B64();
  v15 = *(v12 + 8);
  v15(v13, v14);
  __swift_destroy_boxed_opaque_existential_1(v21);
  sub_219BE2064();
  __swift_project_boxed_opaque_existential_1(v21, v22);
  sub_2186C709C(0, &qword_280EE60E0);
  (v17[0])(v13, v11, v14);
  sub_219BE2B74();
  v15(v13, v14);
  return __swift_destroy_boxed_opaque_existential_1(v21);
}

void sub_2186D231C()
{
  if (!qword_280EE68C8)
  {
    v0 = sub_219BE3224();
    if (!v1)
    {
      atomic_store(v0, &qword_280EE68C8);
    }
  }
}

uint64_t sub_2186D2390(uint64_t a1)
{
  v58 = sub_219BE1ED4();
  v69 = *(v58 - 8);
  MEMORY[0x28223BE20](v58);
  v57 = v54 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_219BE2DF4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BE2044();
  v54[3] = sub_2186D6710(0, qword_280EC2540);
  sub_219BE2904();

  v7 = *MEMORY[0x277D6CF10];
  v8 = *(v4 + 104);
  v66 = v4 + 104;
  v8(v6, v7, v3);
  sub_219BE19F4();

  v9 = *(v4 + 8);
  v9(v6, v3);
  sub_219BE2044();
  sub_2186C709C(0, &qword_280EBC240);
  sub_219BE2914();

  sub_219BE2044();
  v54[2] = sub_219BE2A24();
  sub_219BE2904();

  v10 = v3;
  v8(v6, v7, v3);
  sub_219BE19F4();

  v9(v6, v3);
  sub_219BE2044();
  sub_2186C709C(0, &qword_280E935B8);
  sub_219BE2914();

  sub_219BE2044();
  sub_2186C709C(0, qword_280E96C20);
  sub_219BE2914();

  sub_219BE2044();
  type metadata accessor for PaidBundleBackgroundWorkerManager();
  sub_219BE2904();

  v8(v6, v7, v3);
  sub_219BE19F4();

  v9(v6, v3);
  sub_219BE2044();
  type metadata accessor for PuzzleStreakBackgroundWorkerManager();
  sub_219BE2904();

  v8(v6, v7, v3);
  sub_219BE19F4();

  v9(v6, v3);
  sub_219BE2044();
  sub_2186D5438(0, &qword_280E91E10, type metadata accessor for MagazineFeedPoolService, sub_2186D54CC);
  sub_219BE2904();

  sub_219BE2044();
  sub_2186D5438(0, &qword_280E91E60, type metadata accessor for TodayFeedPoolService, sub_2186D5548);
  sub_219BE2904();

  sub_219BE2044();
  sub_2186D5438(0, &qword_280E91EB0, type metadata accessor for TagFeedPoolService, sub_2186D5AF8);
  sub_219BE2904();

  sub_219BE2044();
  sub_2186D5438(0, &qword_280E91E50, type metadata accessor for SearchFeedPoolService, sub_2186D75DC);
  sub_219BE2904();

  sub_219BE2044();
  sub_2186D5438(0, &qword_280E91ED0, type metadata accessor for SharedWithYouFeedPoolService, sub_2186D5B50);
  sub_219BE2904();

  sub_219BE2044();
  sub_2186D5438(0, &qword_280E91E80, type metadata accessor for SavedFeedPoolService, sub_2186D7994);
  sub_219BE2904();

  sub_219BE2044();
  sub_2186D5438(0, &qword_280E91E30, type metadata accessor for HistoryFeedPoolService, sub_2186D79EC);
  sub_219BE2904();

  sub_219BE2044();
  sub_2186D5438(0, &qword_280E91F20, type metadata accessor for SearchMoreFeedPoolService, sub_2186D7A20);
  sub_219BE2904();

  sub_219BE2044();
  sub_2186D5438(0, &qword_280E91E90, type metadata accessor for AudioFeedPoolService, sub_2186D5CC8);
  sub_219BE2904();

  sub_219BE2044();
  sub_2186D5438(0, &qword_280E91F00, type metadata accessor for AudioHistoryFeedPoolService, sub_2186D7A54);
  sub_219BE2904();

  sub_219BE2044();
  sub_2186D5438(0, &qword_280E91EE8, type metadata accessor for AudioPlaylistFeedPoolService, sub_2186D7AAC);
  sub_219BE2904();

  sub_219BE2044();
  sub_2186D5438(0, &qword_280E91DF0, type metadata accessor for RecipeBoxFeedPoolService, sub_2186D9398);
  sub_219BE2904();

  sub_219BE2044();
  sub_2186C709C(0, &unk_280EBE300);
  sub_219BE2914();

  sub_219BE2044();
  sub_2186D6710(0, &qword_280E8E240);
  sub_219BE2904();

  sub_2186C6148(0, &qword_280E8E248);
  sub_219BE19C4();

  sub_219BE2044();
  sub_2186C709C(0, &unk_280E90160);
  sub_219BE2914();

  sub_219BE2044();
  sub_2186C709C(0, &unk_280E8FD10);
  sub_219BE2914();

  sub_219BE2044();
  sub_2186C709C(0, qword_280ED8A00);
  sub_219BE2914();

  sub_219BE2044();
  sub_2186C709C(0, &unk_280E9F9E8);
  sub_219BE2914();

  sub_219BE2044();
  sub_2186C709C(0, &unk_280EE62A0);
  sub_219BE2914();

  v11 = v7;
  v8(v6, v7, v10);
  sub_219BE19F4();

  v59 = v4 + 8;
  v9(v6, v10);
  sub_219BE2044();
  sub_2186C709C(0, &qword_280E9D588);
  sub_219BE2914();

  v8(v6, v7, v10);
  sub_219BE19F4();

  v9(v6, v10);
  v63 = a1;
  sub_219BE2044();
  sub_2186C709C(0, &unk_280EE3F60);
  sub_219BE2914();

  sub_219BE19C4();

  v64 = v8;
  v8(v6, v7, v10);
  sub_219BE19F4();

  v9(v6, v10);
  sub_219BE2044();
  sub_2186C709C(0, &qword_280EE6310);
  sub_219BE2914();

  v61 = *MEMORY[0x277D6CF00];
  (v8)(v6);
  sub_219BE19F4();

  v12 = v10;
  v9(v6, v10);
  sub_219BE2044();
  sub_2186C709C(0, &unk_280EE62F0);
  sub_219BE2914();

  v13 = v64;
  v64(v6, v7, v10);
  sub_219BE19F4();

  v55 = v9;
  v9(v6, v10);
  sub_219BE2044();
  sub_219BE4724();
  sub_219BE2904();

  v13(v6, v7, v10);
  sub_219BE19F4();

  v9(v6, v10);
  sub_219BE2044();
  sub_2186C709C(0, &unk_280EE63E8);
  sub_219BE2914();

  sub_219BE2044();
  sub_2186C709C(0, &unk_280EC2530);
  sub_219BE2914();

  sub_219BE2044();
  sub_2186C709C(0, qword_280EB9F18);
  sub_219BE2914();

  v14 = v64;
  v64(v6, v11, v10);
  sub_219BE19F4();

  v15 = v55;
  v55(v6, v12);
  sub_219BE2044();
  sub_2186C709C(0, &qword_280ED4520);
  sub_219BE2914();

  v14(v6, v11, v12);
  sub_219BE19F4();

  v15(v6, v12);
  sub_219BE2044();
  sub_2186D6710(0, &unk_280E90120);
  sub_219BE2904();

  v14(v6, v11, v12);
  sub_219BE19F4();

  v15(v6, v12);
  sub_219BE2044();
  sub_2186C709C(0, &unk_280EB9620);
  sub_219BE2914();

  v60 = v11;
  v14(v6, v11, v12);
  sub_219BE19F4();

  v15(v6, v12);
  sub_219BE2044();
  sub_2186D6710(0, &unk_280E8E1D0);
  sub_219BE2904();

  v14(v6, v11, v12);
  sub_219BE19F4();

  v15(v6, v12);
  sub_219BE2044();
  sub_2186C709C(0, &unk_280EE3F50);
  sub_219BE2914();

  sub_219BE2044();
  sub_2186C709C(0, qword_280E936B0);
  sub_219BE2914();

  sub_219BE2044();
  v54[1] = sub_2186C709C(0, &qword_280EE4800);
  sub_219BE2914();

  v16 = v60;
  v14(v6, v60, v12);
  sub_219BE19F4();

  v15(v6, v12);
  sub_219BE2044();
  type metadata accessor for MastheadPremiumSealAnimationManager();
  sub_219BE2904();

  v14(v6, v16, v12);
  sub_219BE19F4();

  v15(v6, v12);
  sub_219BE2044();
  sub_2186C709C(0, qword_280EB3110);
  sub_219BE2914();

  v14(v6, v16, v12);
  sub_219BE19F4();

  v15(v6, v12);
  sub_219BE2044();
  sub_2186C709C(0, &qword_280EB90E0);
  sub_219BE2914();

  sub_219BE2054();
  type metadata accessor for AppIntentsAppDependencyStartupTask();
  sub_219BE2904();

  sub_219BE2064();
  __swift_project_boxed_opaque_existential_1(v70, v71);
  v17 = sub_219BE27C4();
  v65 = *MEMORY[0x277D6CB30];
  v18 = v69;
  v19 = *(v69 + 104);
  v56 = v69 + 104;
  v62 = v19;
  v20 = v57;
  v21 = v58;
  (v19)(v57);
  v68 = v17;
  sub_219BE2B64();
  v67 = *(v18 + 8);
  v69 = v18 + 8;
  v67(v20, v21);
  __swift_destroy_boxed_opaque_existential_1(v70);
  sub_219BE2044();
  type metadata accessor for FollowingEngagementViewManager();
  sub_219BE2904();

  v22 = v64;
  v64(v6, v61, v12);
  sub_219BE19F4();

  v23 = v55;
  v55(v6, v12);
  sub_219BE2044();
  sub_2186C709C(0, qword_280EAB320);
  sub_219BE2914();

  v24 = v60;
  v22(v6, v60, v12);
  sub_219BE19F4();

  v23(v6, v12);
  sub_219BE2044();
  sub_2186C709C(0, &qword_280EC99B0);
  sub_219BE2914();

  v25 = v64;
  v64(v6, v24, v12);
  sub_219BE19F4();

  v23(v6, v12);
  sub_219BE2044();
  sub_2186C709C(0, qword_280EB6AF0);
  sub_219BE2914();

  v25(v6, v24, v12);
  sub_219BE19F4();

  v23(v6, v12);
  sub_219BE2044();
  sub_2186C709C(0, &qword_280EA8020);
  sub_219BE2914();

  v25(v6, v24, v12);
  sub_219BE19F4();

  v23(v6, v12);
  sub_219BE2044();
  sub_2186C709C(0, &unk_280EA8010);
  sub_219BE2914();

  sub_219BE2044();
  sub_2186C709C(0, qword_280E99080);
  sub_219BE2914();

  sub_219BE19D4();

  sub_219BE2054();
  type metadata accessor for PuzzleAnyFilterOptionPredicate();
  sub_219BE2904();

  sub_219BE2054();
  type metadata accessor for PuzzlePlayStateFilterOptionPredicate();
  sub_219BE2904();

  sub_219BE2054();
  sub_219BE2904();

  sub_219BE2054();
  sub_219BE2904();

  sub_219BE2054();
  type metadata accessor for PuzzleDifficultyFilterOptionPredicate();
  sub_219BE2904();

  sub_219BE2054();
  type metadata accessor for PuzzleArchiveFilterOptionsManager();
  sub_219BE2904();

  v26 = v61;
  v27 = v64;
  v64(v6, v61, v12);
  sub_219BE19F4();

  v23(v6, v12);
  sub_219BE2054();
  sub_2186C709C(0, &unk_280EE3AE8);
  sub_219BE2914();

  sub_219BE2054();
  type metadata accessor for LaunchConditionProvider();
  sub_219BE2904();

  v27(v6, v26, v12);
  v28 = v27;
  sub_219BE19F4();

  v23(v6, v12);
  sub_219BE2054();
  sub_2186C709C(0, &qword_280EE3C30);
  sub_219BE2914();

  sub_219BE2054();
  sub_2186C709C(0, &qword_280EE62B8);
  sub_219BE2914();

  sub_219BE2054();
  sub_2186C709C(0, &unk_280EE7330);
  sub_219BE2914();

  v29 = v60;
  v28(v6, v60, v12);
  sub_219BE19F4();

  v23(v6, v12);
  sub_219BE2044();
  sub_219BE42D4();
  sub_219BE2904();

  v28(v6, v61, v12);
  sub_219BE19F4();

  v23(v6, v12);
  sub_219BE2044();
  type metadata accessor for SceneStateManagerBridge();
  sub_219BE2904();

  v28(v6, v29, v12);
  sub_219BE19F4();

  v23(v6, v12);
  sub_219BE2044();
  sub_2186C709C(0, &qword_280EE5390);
  sub_219BE2914();

  v30 = v61;
  v28(v6, v61, v12);
  sub_219BE19F4();

  v23(v6, v12);
  sub_219BE2044();
  sub_2186D6710(0, &unk_280E8E230);
  sub_219BE2904();

  v28(v6, v30, v12);
  sub_219BE19F4();

  v23(v6, v12);
  sub_219BE2044();
  type metadata accessor for ANFSceneActivityBridge();
  sub_219BE2904();

  sub_219BE19C4();

  v31 = v64;
  v64(v6, v30, v12);
  sub_219BE19F4();

  v23(v6, v12);
  sub_219BE2044();
  sub_2186D6710(0, &unk_280EE4530);
  sub_219BE2904();

  v31(v6, v30, v12);
  sub_219BE19F4();

  v23(v6, v12);
  sub_219BE2044();
  sub_219BE2914();

  v32 = v60;
  v31(v6, v60, v12);
  sub_219BE19F4();

  v23(v6, v12);
  sub_219BE2044();
  sub_219BE7994();
  sub_219BE2904();

  v31(v6, v32, v12);
  sub_219BE19F4();

  v23(v6, v12);
  sub_219BE2044();
  sub_2186C709C(0, &qword_280EBB6B0);
  sub_219BE2914();

  v31(v6, v32, v12);
  sub_219BE19F4();

  v23(v6, v12);
  sub_219BE2044();
  sub_2186C709C(0, qword_280EA87C0);
  sub_219BE2914();

  v31(v6, v32, v12);
  sub_219BE19F4();

  v23(v6, v12);
  sub_219BE2044();
  sub_2186C709C(0, &unk_280EC2520);
  sub_219BE2914();

  sub_219BE2064();
  __swift_project_boxed_opaque_existential_1(v70, v71);
  sub_2186C709C(0, &unk_280EE7300);
  v33 = v57;
  v34 = v58;
  v35 = v65;
  v36 = v62;
  v62(v57, v65, v58);
  sub_219BE2B74();
  v37 = v67;
  v67(v33, v34);
  __swift_destroy_boxed_opaque_existential_1(v70);
  sub_219BE2064();
  v64 = v72;
  __swift_project_boxed_opaque_existential_1(v70, v71);
  v38 = sub_2186C709C(0, &unk_280EE73A0);
  v36(v33, v35, v34);
  v66 = v38;
  sub_219BE2B74();
  v37(v33, v34);
  __swift_destroy_boxed_opaque_existential_1(v70);
  sub_219BE2064();
  __swift_project_boxed_opaque_existential_1(v70, v71);
  sub_2186D95F8(0, &unk_280EE7420, MEMORY[0x277D6D3E0], MEMORY[0x277D6CC78]);
  v39 = v65;
  v40 = v62;
  v62(v33, v65, v34);
  sub_219BE2B64();
  v41 = v67;
  v67(v33, v34);
  __swift_destroy_boxed_opaque_existential_1(v70);
  sub_219BE2064();
  __swift_project_boxed_opaque_existential_1(v70, v71);
  v40(v33, v39, v34);
  sub_219BE2B64();
  v41(v33, v34);
  __swift_destroy_boxed_opaque_existential_1(v70);
  sub_219BE2064();
  __swift_project_boxed_opaque_existential_1(v70, v71);
  v40(v33, v39, v34);
  sub_219BE2B74();
  v42 = v67;
  v67(v33, v34);
  __swift_destroy_boxed_opaque_existential_1(v70);
  sub_219BE2064();
  v66 = v72;
  __swift_project_boxed_opaque_existential_1(v70, v71);
  v43 = v65;
  v44 = v62;
  v62(v33, v65, v34);
  sub_219BE2B64();
  v42(v33, v34);
  __swift_destroy_boxed_opaque_existential_1(v70);
  sub_219BE2064();
  __swift_project_boxed_opaque_existential_1(v70, v71);
  v44(v33, v43, v34);
  sub_219BE2B64();
  v45 = v67;
  v67(v33, v34);
  __swift_destroy_boxed_opaque_existential_1(v70);
  sub_219BE2064();
  __swift_project_boxed_opaque_existential_1(v70, v71);
  v46 = v62;
  v62(v33, v43, v34);
  sub_219BE2B64();
  v45(v33, v34);
  __swift_destroy_boxed_opaque_existential_1(v70);
  sub_219BE2064();
  __swift_project_boxed_opaque_existential_1(v70, v71);
  v46(v33, v43, v34);
  sub_219BE2B64();
  v47 = v67;
  v67(v33, v34);
  __swift_destroy_boxed_opaque_existential_1(v70);
  sub_219BE2064();
  v66 = v72;
  __swift_project_boxed_opaque_existential_1(v70, v71);
  v48 = v65;
  v46(v33, v65, v34);
  sub_219BE2B64();
  v47(v33, v34);
  __swift_destroy_boxed_opaque_existential_1(v70);
  sub_219BE2064();
  __swift_project_boxed_opaque_existential_1(v70, v71);
  v46(v33, v48, v34);
  sub_219BE2B64();
  v49 = v67;
  v67(v33, v34);
  __swift_destroy_boxed_opaque_existential_1(v70);
  sub_219BE2064();
  v66 = v72;
  __swift_project_boxed_opaque_existential_1(v70, v71);
  v50 = v65;
  v46(v33, v65, v34);
  sub_219BE2B64();
  v49(v33, v34);
  __swift_destroy_boxed_opaque_existential_1(v70);
  sub_219BE2064();
  __swift_project_boxed_opaque_existential_1(v70, v71);
  v51 = v62;
  v62(v33, v50, v34);
  sub_219BE2B64();
  v52 = v67;
  v67(v33, v34);
  __swift_destroy_boxed_opaque_existential_1(v70);
  sub_219BE2064();
  __swift_project_boxed_opaque_existential_1(v70, v71);
  v51(v33, v65, v34);
  sub_219BE2B64();
  v52(v33, v34);
  return __swift_destroy_boxed_opaque_existential_1(v70);
}

void sub_2186D5438(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(void))
{
  if (!*a2)
  {
    a3(255);
    a4();
    v6 = sub_219BEDEA4();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_2186D5500(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2186D557C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2186D55C4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2186D560C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2186D5654(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2186D569C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2186D56E4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2186D572C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2186D5774(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2186D57BC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2186D5804(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2186D584C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2186D5894(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2186D58DC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2186D5924(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2186D596C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2186D59B4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2186D59FC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2186D5A44(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2186D5A8C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2186D5BCC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2186D5C14(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2186D5C5C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for AppIntentsAppDependencyStartupTask()
{
  result = qword_280EE3278;
  if (!qword_280EE3278)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2186D5D90()
{
  v0 = sub_219BE2DF4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BE2044();
  sub_219BEA5C4();
  sub_219BE2914();

  sub_219BE2044();
  sub_2186C709C(0, &qword_280EE59F0);
  sub_219BE2914();

  (*(v1 + 104))(v3, *MEMORY[0x277D6CF10], v0);
  sub_219BE19F4();

  return (*(v1 + 8))(v3, v0);
}

unint64_t sub_2186D5F64()
{
  result = qword_280E91EC0;
  if (!qword_280E91EC0)
  {
    sub_2186DB874(255, &qword_280E91EB0, type metadata accessor for TagFeedPoolService, sub_2186D5AF8, MEMORY[0x277D31EB0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E91EC0);
  }

  return result;
}

void sub_2186D6034()
{
  if (!qword_280E90AB0)
  {
    sub_2186DB8F4();
    type metadata accessor for TagFeedDatabaseGroupProcessor();
    sub_2186D6000();
    sub_2186D560C(qword_280EAE5C0, type metadata accessor for TagFeedDatabaseGroupProcessor);
    sub_2186D560C(&unk_280ECCB70, type metadata accessor for TagFeedServiceConfig);
    sub_2186D560C(&unk_280ECCB80, type metadata accessor for TagFeedServiceConfig);
    sub_2186D560C(&unk_280EDE970, type metadata accessor for TagFeedGroup);
    sub_2186D560C(&qword_280EDE990, type metadata accessor for TagFeedGroup);
    v0 = sub_219BF0E14();
    if (!v1)
    {
      atomic_store(v0, &qword_280E90AB0);
    }
  }
}

uint64_t type metadata accessor for TagFeedServiceConfig()
{
  result = qword_280ECCB58;
  if (!qword_280ECCB58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata accessor for TagFeedGroup()
{
  result = qword_280EDE948;
  if (!qword_280EDE948)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2186D6360()
{
  v0 = sub_219BE2DF4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BE2044();
  sub_2186CF94C();
  sub_219BE2904();

  v4 = *MEMORY[0x277D6CF00];
  v5 = *(v1 + 104);
  v5(v3, v4, v0);
  sub_219BE19F4();

  v6 = *(v1 + 8);
  v6(v3, v0);
  sub_219BE2044();
  type metadata accessor for BridgedNewsActivityNavigator();
  sub_219BE2904();

  v5(v3, v4, v0);
  sub_219BE19F4();

  return (v6)(v3, v0);
}

uint64_t __swift_destroy_boxed_opaque_existential_1(uint64_t a1)
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

void sub_2186D6598()
{
  if (!qword_280EE3328)
  {
    sub_219BEBEA4();
    sub_219BEBF84();
    sub_2186CBC0C(&unk_280EE3440, MEMORY[0x277D2D440]);
    v0 = sub_219BEC454();
    if (!v1)
    {
      atomic_store(v0, &qword_280EE3328);
    }
  }
}

void sub_2186D6654()
{
  if (!qword_280EE3310)
  {
    sub_219BEC174();
    sub_219BEC084();
    sub_2186CBC0C(&unk_280EE3380, MEMORY[0x277D2D5A0]);
    v0 = sub_219BEC454();
    if (!v1)
    {
      atomic_store(v0, &qword_280EE3310);
    }
  }
}

uint64_t sub_2186D6710(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

unint64_t sub_2186D679C()
{
  result = qword_280ED7F40;
  if (!qword_280ED7F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280ED7F40);
  }

  return result;
}

uint64_t sub_2186D67F4(uint64_t a1)
{
  v2 = sub_219BE2DF4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BE2044();
  sub_2186D0720(0, &unk_280EE7268, MEMORY[0x277D6C980], MEMORY[0x277D6CEE8]);
  v7 = v6;
  sub_219BE2904();

  v8 = *MEMORY[0x277D6CF10];
  v9 = v3 + 104;
  v53 = *(v3 + 104);
  v53(v5, v8, v2);
  sub_219BE19F4();

  v51 = *(v3 + 8);
  v51(v5, v2);
  sub_219BE2044();
  sub_219BE2904();

  v10 = v53;
  v53(v5, v8, v2);
  sub_219BE19F4();

  v51(v5, v2);
  sub_219BE2044();
  sub_219BE2904();

  v10(v5, v8, v2);
  sub_219BE19F4();

  v11 = v51;
  v51(v5, v2);
  v52 = a1;
  sub_219BE2044();
  sub_219BE2904();

  v53(v5, v8, v2);
  sub_219BE19F4();

  v12 = v3 + 8;
  v11(v5, v2);
  if (qword_280EA25A0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v13 = off_280EA25A8;

  sub_219BE2044();
  v54 = v7;
  sub_219BE2904();

  v53(v5, v8, v2);
  sub_219BE19F4();

  v50 = v5;
  v11(v5, v2);

  sub_219BE19D4();

  v56 = v13;

  sub_219BE2E84();

  v15 = v59;
  if (!v59)
  {
    v15 = MEMORY[0x277D84F90];
  }

  v46 = v15;
  v16 = *(v15 + 16);
  v57 = v8;
  if (v16)
  {
    v58 = 0;
    v48 = "puzzle-hub-feed-offline-db";
    v17 = (v46 + 40);
    *&v14 = 136315138;
    v49 = v14;
    v55 = v9;
    while (1)
    {
      v25 = *(v17 - 1);
      v26 = *v17;

      sub_219BE2E84();

      v28 = v59;
      if (!v59)
      {
        goto LABEL_14;
      }

      v59 = v25;
      v60 = v26;
      MEMORY[0x28223BE20](v27);
      *(&v45 - 2) = &v59;
      v29 = v58;
      v30 = sub_2186D128C(sub_2186D1358, (&v45 - 4), v28);
      v58 = v29;

      if ((v30 & 1) == 0)
      {
        break;
      }

      v59 = 0;
      v60 = 0xE000000000000000;
      sub_219BF7314();

      v59 = v25;
      v60 = v26;
      MEMORY[0x21CECC330](0xD000000000000010, v48 | 0x8000000000000000);
      v31 = v59;
      v32 = v60;
      sub_219BE2044();
      v33 = swift_allocObject();
      *(v33 + 16) = v31;
      *(v33 + 24) = v32;

      sub_219BE2904();

      v34 = v50;
      v8 = v57;
      v53(v50, v57, v2);
      sub_219BE19F4();

      v51(v34, v2);
LABEL_9:
      v17 += 2;
      if (!--v16)
      {
        goto LABEL_18;
      }
    }

    v8 = v57;
LABEL_14:
    if (qword_280EE5FE0 != -1)
    {
      swift_once();
    }

    v35 = sub_219BE5434();
    __swift_project_value_buffer(v35, qword_280F626A0);

    v36 = sub_219BE5414();
    v37 = sub_219BF6214();

    if (os_log_type_enabled(v36, v37))
    {
      v18 = v12;
      v19 = v2;
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v59 = v21;
      *v20 = v49;
      v22 = sub_2186D1058(v25, v26, &v59);

      *(v20 + 4) = v22;
      _os_log_impl(&dword_2186C1000, v36, v37, "Skipped offline database registration for unsupported puzzle type [%s]", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v21);
      v23 = v21;
      v8 = v57;
      MEMORY[0x21CECF960](v23, -1, -1);
      v24 = v20;
      v2 = v19;
      v12 = v18;
      MEMORY[0x21CECF960](v24, -1, -1);
    }

    else
    {
    }

    goto LABEL_9;
  }

LABEL_18:

  sub_219BE2044();
  sub_219BE2904();

  v38 = v50;
  v39 = v53;
  v53(v50, v8, v2);
  sub_219BE19F4();

  v47 = v12;
  v51(v38, v2);
  sub_219BE2044();
  sub_219BE2904();

  v39(v38, v8, v2);
  sub_219BE19F4();

  v40 = v51;
  v51(v38, v2);
  sub_219BE2044();
  sub_219BE2904();

  v39(v38, v8, v2);
  sub_219BE19F4();

  v40(v38, v2);
  sub_219BE2044();
  sub_219BE2904();

  v39(v38, v8, v2);
  sub_219BE19F4();

  v40(v38, v2);
  sub_219BE2044();
  sub_219BE2904();

  v39(v38, v8, v2);
  sub_219BE19F4();

  v40(v38, v2);
  sub_219BE2044();
  sub_219BE2904();

  v41 = v57;
  v39(v38, v57, v2);
  sub_219BE19F4();

  v40(v38, v2);
  sub_219BE2044();
  sub_219BE2904();

  v42 = v41;
  v43 = v53;
  v53(v38, v42, v2);
  sub_219BE19F4();

  v40(v38, v2);
  sub_219BE2044();
  sub_219BE2904();

  v43(v38, v57, v2);
  sub_219BE19F4();

  return (v40)(v38, v2);
}

uint64_t sub_2186D757C()
{

  return swift_deallocObject();
}

uint64_t sub_2186D7610(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2186D7658(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2186D76A0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2186D76E8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2186D7730(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2186D7778(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2186D77C0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2186D7808(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2186D7850(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2186D7898(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2186D78E0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2186D7928(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2186D7B04()
{
  result = type metadata accessor for ArticleListTagFeedGroup();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for PromotedArticleListTagFeedGroup();
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for IssueListTagFeedGroup();
      if (v3 <= 0x3F)
      {
        result = type metadata accessor for ChannelSectionTagFeedGroup();
        if (v4 <= 0x3F)
        {
          result = type metadata accessor for ChannelSectionDirectoryTagFeedGroup();
          if (v5 <= 0x3F)
          {
            result = type metadata accessor for WeatherTagFeedGroup();
            if (v6 <= 0x3F)
            {
              result = type metadata accessor for PaywallTagFeedGroup();
              if (v7 <= 0x3F)
              {
                result = sub_219BED544();
                if (v8 <= 0x3F)
                {
                  result = type metadata accessor for CuratedTagFeedGroup();
                  if (v9 <= 0x3F)
                  {
                    result = type metadata accessor for SportsRecordTagFeedGroup();
                    if (v10 <= 0x3F)
                    {
                      result = type metadata accessor for SportsNavigationTagFeedGroup();
                      if (v11 <= 0x3F)
                      {
                        result = type metadata accessor for SportsScheduleTagFeedGroup();
                        if (v12 <= 0x3F)
                        {
                          result = type metadata accessor for SportsTopStoriesTagFeedGroup();
                          if (v13 <= 0x3F)
                          {
                            result = type metadata accessor for SportsFavoritesTagFeedGroup();
                            if (v14 <= 0x3F)
                            {
                              result = type metadata accessor for SportsScoresTagFeedGroup();
                              if (v15 <= 0x3F)
                              {
                                result = type metadata accessor for SportsLinksTagFeedGroup();
                                if (v16 <= 0x3F)
                                {
                                  result = type metadata accessor for MySportsTopicTagFeedGroup();
                                  if (v17 <= 0x3F)
                                  {
                                    result = type metadata accessor for SportsStandingsTagFeedGroup();
                                    if (v18 <= 0x3F)
                                    {
                                      result = type metadata accessor for SportsBracketTagFeedGroup();
                                      if (v19 <= 0x3F)
                                      {
                                        result = type metadata accessor for SportsBoxScoresTagFeedGroup();
                                        if (v20 <= 0x3F)
                                        {
                                          result = type metadata accessor for SportsEventInfoTagFeedGroup();
                                          if (v21 <= 0x3F)
                                          {
                                            result = type metadata accessor for SportsInjuryReportsTagFeedGroup();
                                            if (v22 <= 0x3F)
                                            {
                                              result = type metadata accessor for SportsKeyPlayersTagFeedGroup();
                                              if (v23 <= 0x3F)
                                              {
                                                result = type metadata accessor for SportsEventArticlesTagFeedGroup();
                                                if (v24 <= 0x3F)
                                                {
                                                  result = type metadata accessor for HighlightsTagFeedGroup();
                                                  if (v25 <= 0x3F)
                                                  {
                                                    result = type metadata accessor for ForYouTagFeedGroup();
                                                    if (v26 <= 0x3F)
                                                    {
                                                      result = type metadata accessor for ChannelRecipesTagFeedGroup();
                                                      if (v27 <= 0x3F)
                                                      {
                                                        result = type metadata accessor for ForYouRecipesTagFeedGroup();
                                                        if (v28 <= 0x3F)
                                                        {
                                                          result = type metadata accessor for RecentStoriesTagFeedGroup();
                                                          if (v29 <= 0x3F)
                                                          {
                                                            result = type metadata accessor for RecentlyViewedRecipesTagFeedGroup();
                                                            if (v30 <= 0x3F)
                                                            {
                                                              result = type metadata accessor for DateRangeTagFeedGroup();
                                                              if (v31 <= 0x3F)
                                                              {
                                                                result = type metadata accessor for SportsOnboardingTagFeedGroup();
                                                                if (v32 <= 0x3F)
                                                                {
                                                                  result = type metadata accessor for SportsMastheadTagFeedGroup();
                                                                  if (v33 <= 0x3F)
                                                                  {
                                                                    result = type metadata accessor for SportsEventTopicTagFeedGroup();
                                                                    if (v34 <= 0x3F)
                                                                    {
                                                                      result = type metadata accessor for PuzzleListTagFeedGroup();
                                                                      if (v35 <= 0x3F)
                                                                      {
                                                                        result = type metadata accessor for PuzzleArchiveTagFeedGroup();
                                                                        if (v36 <= 0x3F)
                                                                        {
                                                                          result = type metadata accessor for PuzzleContinuePlayingTagFeedGroup();
                                                                          if (v37 <= 0x3F)
                                                                          {
                                                                            result = type metadata accessor for PuzzleFeaturedTagFeedGroup();
                                                                            if (v38 <= 0x3F)
                                                                            {
                                                                              result = type metadata accessor for PuzzleFullArchiveTagFeedGroup();
                                                                              if (v39 <= 0x3F)
                                                                              {
                                                                                result = type metadata accessor for PuzzleScoreboardTagFeedGroup();
                                                                                if (v40 <= 0x3F)
                                                                                {
                                                                                  result = type metadata accessor for AffinityTagFeedGroup();
                                                                                  if (v41 <= 0x3F)
                                                                                  {
                                                                                    result = type metadata accessor for SponsoredBannerTagFeedGroup();
                                                                                    if (v42 <= 0x3F)
                                                                                    {
                                                                                      result = type metadata accessor for LatestRecipesTagFeedGroup();
                                                                                      if (v43 <= 0x3F)
                                                                                      {
                                                                                        result = type metadata accessor for SavedRecipesTagFeedGroup();
                                                                                        if (v44 <= 0x3F)
                                                                                        {
                                                                                          result = type metadata accessor for TrendingRecipesTagFeedGroup();
                                                                                          if (v45 <= 0x3F)
                                                                                          {
                                                                                            result = type metadata accessor for TopicRecipesTagFeedGroup();
                                                                                            if (v46 <= 0x3F)
                                                                                            {
                                                                                              swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
                                                                                              return 0;
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
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t type metadata accessor for ArticleListTagFeedGroup()
{
  result = qword_280EC5F98;
  if (!qword_280EC5F98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2186D7F34()
{
  result = sub_219BED8D4();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t type metadata accessor for IssueListTagFeedGroup()
{
  result = qword_280ECAA30;
  if (!qword_280ECAA30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2186D7FEC()
{
  sub_2186E330C();
  if (v0 <= 0x3F)
  {
    sub_2186E3374();
    if (v1 <= 0x3F)
    {
      sub_219BEF554();
      if (v2 <= 0x3F)
      {
        sub_2186D80B0();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_2186D80B0()
{
  result = qword_280E8E390;
  if (!qword_280E8E390)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_280E8E390);
  }

  return result;
}

uint64_t type metadata accessor for ChannelSectionTagFeedGroup()
{
  result = qword_280EBBF90;
  if (!qword_280EBBF90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2186D8160()
{
  result = sub_219BED8D4();
  if (v1 <= 0x3F)
  {
    result = sub_219BEE6F4();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t type metadata accessor for ChannelSectionDirectoryTagFeedGroup()
{
  result = qword_280E9E028;
  if (!qword_280E9E028)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata accessor for WeatherTagFeedGroup()
{
  result = qword_280ECF968;
  if (!qword_280ECF968)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2186D827C()
{
  result = sub_219BF0D34();
  if (v1 <= 0x3F)
  {
    result = sub_219BED8D4();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t type metadata accessor for PaywallTagFeedGroup()
{
  result = qword_280ED0AF8;
  if (!qword_280ED0AF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_2186D834C()
{
  result = sub_2186D83E8();
  if (v1 <= 0x3F)
  {
    result = sub_219BEF554();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_2186D83E8()
{
  result = qword_280EE6460;
  if (!qword_280EE6460)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_280EE6460);
  }

  return result;
}

uint64_t type metadata accessor for CuratedTagFeedGroup()
{
  result = qword_280ED1940;
  if (!qword_280ED1940)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2186D8498()
{
  result = sub_219BED8D4();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t type metadata accessor for SportsNavigationTagFeedGroup()
{
  result = qword_280EB2908;
  if (!qword_280EB2908)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_2186D8558()
{
  result = sub_2186D85DC();
  if (v1 <= 0x3F)
  {
    result = sub_219BED8D4();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_2186D85DC()
{
  result = qword_280E8E420;
  if (!qword_280E8E420)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_280E8E420);
  }

  return result;
}

uint64_t type metadata accessor for SportsScheduleTagFeedGroup()
{
  result = qword_280EBA1D8;
  if (!qword_280EBA1D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2186D868C()
{
  if (!qword_280E92080)
  {
    type metadata accessor for SportsTopStoriesTagFeedGroupConfigData();
    sub_2186D87DC(&unk_280E97AB0, type metadata accessor for SportsTopStoriesTagFeedGroupConfigData);
    sub_2186D87DC(&qword_280E97AC0, type metadata accessor for SportsTopStoriesTagFeedGroupConfigData);
    v0 = sub_219BEDD94();
    if (!v1)
    {
      atomic_store(v0, &qword_280E92080);
    }
  }
}

void sub_2186D8758()
{
  sub_2186D868C();
  if (v0 <= 0x3F)
  {
    sub_219BED8D4();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_2186D87DC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for SportsScoresTagFeedGroup()
{
  result = qword_280EC0138;
  if (!qword_280EC0138)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_2186D8870()
{
  result = qword_280E8E680;
  if (!qword_280E8E680)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_280E8E680);
  }

  return result;
}

uint64_t type metadata accessor for SportsLinksTagFeedGroup()
{
  result = qword_280EC3270;
  if (!qword_280EC3270)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2186D8920()
{
  if (!qword_280E92260)
  {
    type metadata accessor for MySportsTopicTagFeedGroupConfigData();
    sub_2186D87DC(&unk_280E9CFA0, type metadata accessor for MySportsTopicTagFeedGroupConfigData);
    sub_2186D87DC(&qword_280E9CFB0, type metadata accessor for MySportsTopicTagFeedGroupConfigData);
    v0 = sub_219BEDD94();
    if (!v1)
    {
      atomic_store(v0, &qword_280E92260);
    }
  }
}

void sub_2186D89EC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_2186D8A50(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_2186D8AB4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_2186D8B18(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_2186D8B7C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_2186D8BE0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_2186D8C44(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_2186D8CA8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_2186D8D0C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_219BF6FB4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_2186D8D60(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_2186D8DC4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_2186D8E28(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_219BF6FB4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_2186D8E7C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_2186D8EE0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_2186D8F44(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t type metadata accessor for SportsStandingsTagFeedGroup()
{
  result = qword_280EB67F0;
  if (!qword_280EB67F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata accessor for SportsBoxScoresTagFeedGroup()
{
  result = qword_280EB6E98;
  if (!qword_280EB6E98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata accessor for SportsEventArticlesTagFeedGroup()
{
  result = qword_280EA81C8;
  if (!qword_280EA81C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata accessor for HighlightsTagFeedGroup()
{
  result = qword_280EC8418;
  if (!qword_280EC8418)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata accessor for ForYouTagFeedGroup()
{
  result = qword_280ED3A80;
  if (!qword_280ED3A80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata accessor for ChannelRecipesTagFeedGroup()
{
  result = qword_280EBBFF8;
  if (!qword_280EBBFF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata accessor for ForYouRecipesTagFeedGroup()
{
  result = qword_280EBE6D8;
  if (!qword_280EBE6D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata accessor for RecentStoriesTagFeedGroup()
{
  result = qword_280EBD590;
  if (!qword_280EBD590)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata accessor for RecentlyViewedRecipesTagFeedGroup()
{
  result = qword_280EA24E0;
  if (!qword_280EA24E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2186D9288()
{
  result = sub_219BED8D4();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_2186D930C()
{
  sub_219BED8D4();
  if (v0 <= 0x3F)
  {
    sub_2186DC224(319);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_2186D93F0()
{
  result = sub_219BE2C14();
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

void sub_2186D9594(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_2186D95F8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_2186D9660(uint64_t a1)
{
  v44 = sub_219BE1ED4();
  v46 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v43 = v33 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_219BE2DF4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_219BE3344();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BE2044();
  v42 = sub_2186C709C(0, &unk_280EBDA70);
  sub_219BE2914();

  v40 = *MEMORY[0x277D6CF70];
  v11 = *(v8 + 104);
  v35 = v7;
  v36 = v8 + 104;
  v39 = v11;
  v11(v10);
  sub_219BE19A4();

  v12 = *(v8 + 8);
  v37 = v8 + 8;
  v38 = v12;
  v12(v10, v7);
  v13 = *MEMORY[0x277D6CF10];
  v14 = *(v4 + 104);
  v33[0] = v3;
  v14(v6, v13, v3);
  v34 = v14;
  sub_219BE19F4();

  v15 = *(v4 + 8);
  v15(v6, v3);
  v45 = v15;
  v33[1] = v4 + 8;
  v47 = a1;
  sub_219BE2044();
  sub_2186D6710(0, &qword_280E8DD20);
  sub_219BE2904();

  v16 = v33[0];
  v14(v6, v13, v33[0]);
  sub_219BE19F4();

  v15(v6, v16);
  sub_219BE2044();
  sub_2186C709C(0, qword_280EC41D0);
  sub_219BE2914();

  v17 = v35;
  v39(v10, v40, v35);
  sub_219BE19A4();

  v38(v10, v17);
  v18 = v34;
  v34(v6, v13, v16);
  sub_219BE19F4();

  v19 = v45;
  v45(v6, v16);
  sub_219BE2044();
  sub_2186C709C(0, &unk_280E91110);
  sub_219BE2914();

  LODWORD(v41) = v13;
  v18(v6, v13, v16);
  sub_219BE19F4();

  v19(v6, v16);
  sub_219BE2044();
  sub_2186C709C(0, qword_280EBADD0);
  sub_219BE2914();

  sub_219BE19D4();

  v18(v6, v13, v16);
  sub_219BE19F4();

  v19(v6, v16);
  sub_219BE2044();
  sub_2186C709C(0, qword_280ED0D40);
  sub_219BE2914();

  sub_219BE2044();
  sub_2186DB6BC();
  sub_219BE2904();

  sub_219BE2044();
  sub_2186DC92C();
  sub_219BE2904();

  sub_219BE2044();
  sub_2186F9F20();
  sub_219BE2904();

  sub_219BE2044();
  type metadata accessor for PuzzleHubOfflineFeedBuilder();
  sub_219BE2904();

  sub_219BE2044();
  type metadata accessor for PuzzleTypeOfflineFeedBuilder();
  sub_219BE2904();

  v40 = *MEMORY[0x277D6CF08];
  v20 = v40;
  v18(v6, v40, v16);
  sub_219BE19F4();

  v45(v6, v16);
  sub_219BE2044();
  type metadata accessor for SportsFeedOfflineFeedBuilder();
  sub_219BE2904();

  sub_219BE2044();
  sub_2186F6930();
  sub_219BE2904();

  sub_219BE2044();
  type metadata accessor for AudioFeedOfflineFeedUpdater();
  sub_219BE2904();

  sub_219BE2044();
  sub_2186E879C();
  sub_219BE2904();

  sub_219BE2044();
  sub_2186E9710();
  sub_219BE2904();

  sub_219BE2044();
  sub_2186E9E4C();
  sub_219BE2904();

  sub_219BE2044();
  type metadata accessor for RecipeBoxFeedOfflineFeedBuilder();
  sub_219BE2904();

  sub_219BE2044();
  type metadata accessor for FoodHubOfflineFeedBuilder();
  sub_219BE2904();

  sub_219BE2044();
  type metadata accessor for RecipeCatalogOfflineFeedBuilder();
  sub_219BE2904();

  sub_219BE2044();
  type metadata accessor for TodayFeedOfflineFeedUpdater();
  sub_219BE2904();

  v18(v6, v20, v16);
  sub_219BE19F4();

  v21 = v45;
  v45(v6, v16);
  sub_219BE2044();
  type metadata accessor for OfflineFeedGroupRootItemsProcessor();
  sub_219BE2904();

  v22 = v41;
  v18(v6, v41, v16);
  sub_219BE19F4();

  v21(v6, v16);
  sub_219BE2044();
  type metadata accessor for OfflineFeedGroupPackagesProcessor();
  sub_219BE2904();

  v18(v6, v22, v16);
  sub_219BE19F4();

  v21(v6, v16);
  sub_219BE2044();
  type metadata accessor for OfflineFeedGroupReferencesProcessor();
  sub_219BE2904();

  v18(v6, v22, v16);
  sub_219BE19F4();

  v21(v6, v16);
  sub_219BE2044();
  type metadata accessor for OfflineFeedGroupThumbnailsProcessor();
  sub_219BE2904();

  v18(v6, v22, v16);
  sub_219BE19F4();

  v21(v6, v16);
  sub_219BE2044();
  type metadata accessor for OfflineFeedGroupTagImagesProcessor();
  sub_219BE2904();

  v18(v6, v22, v16);
  sub_219BE19F4();

  v21(v6, v16);
  sub_219BE2044();
  type metadata accessor for OfflineFeedGroupContentsProcessor();
  sub_219BE2904();

  v18(v6, v22, v16);
  sub_219BE19F4();

  v21(v6, v16);
  sub_219BE2044();
  sub_2186EF32C(0, &unk_280E8F028, &qword_280EAFA40, &protocol descriptor for OfflineFeedGroupProcessorType, MEMORY[0x277D83940]);
  sub_219BE2914();

  v18(v6, v22, v16);
  sub_219BE19F4();

  v21(v6, v16);
  sub_219BE2044();
  sub_2186C709C(0, qword_280ECA4B0);
  sub_219BE2914();

  sub_219BE2044();
  sub_2186EA774();
  sub_219BE2904();

  sub_219BE2044();
  sub_2186EFEF0();
  sub_219BE2904();

  sub_219BE2044();
  sub_2186F096C();
  sub_219BE2904();

  sub_219BE2044();
  sub_2186F12DC();
  sub_219BE2904();

  sub_219BE2044();
  sub_2186FB4BC(0, &unk_280E906F0, sub_2186FB5EC);
  sub_219BE2904();

  v23 = v40;
  v18(v6, v40, v16);
  sub_219BE19F4();

  v21(v6, v16);
  sub_219BE2044();
  sub_2186FB640();
  sub_219BE2904();

  v18(v6, v23, v16);
  sub_219BE19F4();

  v21(v6, v16);
  sub_219BE2044();
  sub_2186FB4BC(0, &qword_280E90690, sub_2186F1660);
  sub_219BE2904();

  v18(v6, v23, v16);
  sub_219BE19F4();

  v21(v6, v16);
  sub_219BE2044();
  sub_2186FB4BC(0, &unk_280E906A0, sub_2186F16B4);
  sub_219BE2904();

  v18(v6, v23, v16);
  sub_219BE19F4();

  v21(v6, v16);
  sub_219BE2044();
  sub_2186FB4BC(0, &unk_280E906E0, sub_2186F76CC);
  sub_219BE2904();

  v18(v6, v23, v16);
  sub_219BE19F4();

  v21(v6, v16);
  sub_219BE2044();
  sub_2186FB4BC(0, &unk_280E90670, sub_2186F1708);
  sub_219BE2904();

  v18(v6, v23, v16);
  sub_219BE19F4();

  v21(v6, v16);
  sub_219BE2044();
  sub_2186FB4BC(0, &qword_280E90730, sub_2186F175C);
  sub_219BE2904();

  v18(v6, v23, v16);
  sub_219BE19F4();

  v21(v6, v16);
  sub_219BE2044();
  sub_2186FB4BC(0, &unk_280E906B0, sub_2186FB6D4);
  sub_219BE2904();

  v18(v6, v23, v16);
  sub_219BE19F4();

  v21(v6, v16);
  sub_219BE2044();
  sub_2186FB4BC(0, &qword_280E90710, sub_2186F7720);
  sub_219BE2904();

  v18(v6, v23, v16);
  sub_219BE19F4();

  v21(v6, v16);
  sub_219BE2044();
  sub_2186FB4BC(0, &unk_280E906D0, sub_2186FB728);
  sub_219BE2904();

  v18(v6, v23, v16);
  sub_219BE19F4();

  v21(v6, v16);
  sub_219BE2044();
  sub_2186FB4BC(0, &unk_280E90700, sub_2186F17B0);
  sub_219BE2904();

  v18(v6, v23, v16);
  sub_219BE19F4();

  v21(v6, v16);
  sub_219BE2044();
  sub_2186FB4BC(0, &unk_280E906C0, sub_2186F1804);
  sub_219BE2904();

  v18(v6, v23, v16);
  sub_219BE19F4();

  v21(v6, v16);
  sub_219BE2044();
  sub_2186FB4BC(0, &qword_280E90660, sub_2186F1858);
  sub_219BE2904();

  v18(v6, v23, v16);
  sub_219BE19F4();

  v21(v6, v16);
  sub_219BE2044();
  sub_2186FB4BC(0, &unk_280E90680, sub_2186F7774);
  sub_219BE2904();

  v18(v6, v23, v16);
  sub_219BE19F4();

  v21(v6, v16);
  sub_219BE2044();
  sub_2186FB4BC(0, &unk_280E90720, sub_2186FB77C);
  sub_219BE2904();

  v18(v6, v23, v16);
  sub_219BE19F4();

  v21(v6, v16);
  sub_219BE2044();
  sub_2186F18AC(0);
  sub_219BE2904();

  v18(v6, v23, v16);
  sub_219BE19F4();

  v21(v6, v16);
  sub_219BE2044();
  sub_2186FB804(0);
  sub_219BE2904();

  v18(v6, v23, v16);
  sub_219BE19F4();

  v21(v6, v16);
  sub_219BE2054();
  sub_219BE28F4();

  sub_219BE2064();
  __swift_project_boxed_opaque_existential_1(v48, v49);
  v24 = *MEMORY[0x277D6CB30];
  v25 = v46;
  v26 = *(v46 + 104);
  v45 = (v46 + 104);
  v27 = v43;
  v28 = v44;
  v26(v43, v24, v44);
  sub_219BE2B74();
  v29 = *(v25 + 8);
  v46 = v25 + 8;
  v29(v27, v28);
  __swift_destroy_boxed_opaque_existential_1(v48);
  sub_219BE2064();
  __swift_project_boxed_opaque_existential_1(v48, v49);
  sub_2186C709C(0, &unk_280EE73A0);
  v26(v27, v24, v28);
  sub_219BE2B74();
  v42 = v29;
  v29(v27, v28);
  __swift_destroy_boxed_opaque_existential_1(v48);
  sub_219BE2064();
  v39 = v50;
  __swift_project_boxed_opaque_existential_1(v48, v49);
  sub_219BE2A24();
  v26(v27, v24, v28);
  v41 = v26;
  sub_219BE2B64();
  v29(v27, v28);
  __swift_destroy_boxed_opaque_existential_1(v48);
  sub_219BE2064();
  v39 = v50;
  __swift_project_boxed_opaque_existential_1(v48, v49);
  sub_2186C6148(0, &qword_280E8DE40);
  v40 = v24;
  v26(v27, v24, v28);
  sub_219BE2B64();
  v30 = v42;
  v42(v27, v28);
  __swift_destroy_boxed_opaque_existential_1(v48);
  sub_219BE2064();
  __swift_project_boxed_opaque_existential_1(v48, v49);
  sub_2186D6710(0, qword_280EC2540);
  v31 = v41;
  v41(v27, v24, v28);
  sub_219BE2B64();
  v30(v27, v28);
  __swift_destroy_boxed_opaque_existential_1(v48);
  sub_219BE2064();
  __swift_project_boxed_opaque_existential_1(v48, v49);
  sub_219BE27C4();
  v31(v27, v40, v28);
  sub_219BE2B64();
  v30(v27, v28);
  return __swift_destroy_boxed_opaque_existential_1(v48);
}

void sub_2186DB6BC()
{
  if (!qword_280ED3230[0])
  {
    type metadata accessor for TagFeedServiceContextFactory();
    type metadata accessor for TagFeedServiceConfigFetcher();
    sub_2186DB874(255, &qword_280E90B90, sub_2186DB8F4, sub_2186D6000, MEMORY[0x277D33010]);
    sub_2186D6034();
    sub_2186D560C(qword_280EB2240, type metadata accessor for TagFeedServiceContextFactory);
    sub_2186D560C(&qword_280EB6620, type metadata accessor for TagFeedServiceConfigFetcher);
    sub_2186DC6E8();
    sub_2186DC784();
    v0 = type metadata accessor for OfflineFeedBuilder();
    if (!v1)
    {
      atomic_store(v0, qword_280ED3230);
    }
  }
}

void sub_2186DB874(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(void), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

void sub_2186DB8F4()
{
  if (!qword_280E91D00)
  {
    type metadata accessor for TagFeedGroupEmitterFactory();
    sub_2186DB874(255, &qword_280E91EB0, type metadata accessor for TagFeedPoolService, sub_2186D5AF8, MEMORY[0x277D31EB0]);
    sub_2186D560C(qword_280EB9D90, type metadata accessor for TagFeedGroupEmitterFactory);
    sub_2186D5F64();
    v0 = sub_219BEE344();
    if (!v1)
    {
      atomic_store(v0, &qword_280E91D00);
    }
  }
}

uint64_t sub_2186DBA18()
{
  result = sub_219BEEA84();
  if (v1 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t type metadata accessor for SportsRecordTagFeedGroup()
{
  result = qword_280EC02C0;
  if (!qword_280EC02C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2186DBB94(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_2186DBBF8()
{
  result = sub_219BF1934();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t type metadata accessor for SportsFavoritesTagFeedGroup()
{
  result = qword_280EB6CD0;
  if (!qword_280EB6CD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_2186DBCC0()
{
  result = sub_2186D8870();
  if (v1 <= 0x3F)
  {
    result = sub_219BED8D4();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t type metadata accessor for MySportsTopicTagFeedGroup()
{
  result = qword_280EBDD38;
  if (!qword_280EBDD38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2186DBD90()
{
  sub_2186D8920();
  if (v0 <= 0x3F)
  {
    sub_219BED8D4();
    if (v1 <= 0x3F)
    {
      sub_219BF02C4();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t type metadata accessor for MySportsTopicTagFeedGroupConfigData()
{
  result = qword_280E9CF90;
  if (!qword_280E9CF90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2186DBE78()
{
  sub_219BF1934();
  if (v0 <= 0x3F)
  {
    sub_2186D8FA8(319);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t type metadata accessor for SportsBracketTagFeedGroup()
{
  result = qword_280EBCFF8;
  if (!qword_280EBCFF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata accessor for SportsEventInfoTagFeedGroup()
{
  result = qword_280EB6E08;
  if (!qword_280EB6E08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata accessor for SportsInjuryReportsTagFeedGroup()
{
  result = qword_280EA8138;
  if (!qword_280EA8138)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata accessor for SportsKeyPlayersTagFeedGroup()
{
  result = qword_280EB2A28;
  if (!qword_280EB2A28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2186DC02C()
{
  result = sub_219BED8D4();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t type metadata accessor for DateRangeTagFeedGroup()
{
  result = qword_280ECB678;
  if (!qword_280ECB678)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata accessor for SportsOnboardingTagFeedGroup()
{
  result = qword_280EB2820;
  if (!qword_280EB2820)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata accessor for SportsMastheadTagFeedGroup()
{
  result = qword_280EBA270;
  if (!qword_280EBA270)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata accessor for SportsEventTopicTagFeedGroup()
{
  result = qword_280EB2AB8;
  if (!qword_280EB2AB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata accessor for PuzzleListTagFeedGroup()
{
  result = qword_280EC71C8;
  if (!qword_280EC71C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2186DC258(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t type metadata accessor for PuzzleArchiveTagFeedGroup()
{
  result = qword_280EBD698;
  if (!qword_280EBD698)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata accessor for PuzzleContinuePlayingTagFeedGroup()
{
  result = qword_280EA2890;
  if (!qword_280EA2890)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2186DC354()
{
  result = sub_219BED8D4();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t type metadata accessor for PuzzleFeaturedTagFeedGroup()
{
  result = qword_280EBAA60;
  if (!qword_280EBAA60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata accessor for PuzzleFullArchiveTagFeedGroup()
{
  result = qword_280EAF500;
  if (!qword_280EAF500)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata accessor for PuzzleScoreboardTagFeedGroup()
{
  result = qword_280EB33A0;
  if (!qword_280EB33A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata accessor for AffinityTagFeedGroup()
{
  result = qword_280ECF7A0;
  if (!qword_280ECF7A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata accessor for SponsoredBannerTagFeedGroup()
{
  result = qword_280EB6F28;
  if (!qword_280EB6F28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata accessor for LatestRecipesTagFeedGroup()
{
  result = qword_280EBE2C8;
  if (!qword_280EBE2C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata accessor for SavedRecipesTagFeedGroup()
{
  result = qword_280EC0780;
  if (!qword_280EC0780)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2186DC5DC()
{
  result = sub_219BED8D4();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t type metadata accessor for TrendingRecipesTagFeedGroup()
{
  result = qword_280EB6130;
  if (!qword_280EB6130)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata accessor for TopicRecipesTagFeedGroup()
{
  result = qword_280EBFD40;
  if (!qword_280EBFD40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_2186DC6E8()
{
  result = qword_280E90BA0;
  if (!qword_280E90BA0)
  {
    sub_2186DB874(255, &qword_280E90B90, sub_2186DB8F4, sub_2186D6000, MEMORY[0x277D33010]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E90BA0);
  }

  return result;
}

uint64_t sub_2186DC7D0()
{
  result = sub_219BEDA24();
  if (v1 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      result = sub_219BEE544();
      if (v3 <= 0x3F)
      {
        result = sub_219BE5434();
        if (v4 <= 0x3F)
        {
          return swift_initClassMetadata2();
        }
      }
    }
  }

  return result;
}

void sub_2186DC92C()
{
  if (!qword_280ED3218)
  {
    type metadata accessor for TodayFeedServiceContextFactory();
    type metadata accessor for TodayFeedServiceConfigFetcher();
    sub_2186DB874(255, &qword_280E90B50, sub_2186E1CDC, sub_2186E1E80, MEMORY[0x277D33010]);
    sub_2186E1EB4();
    sub_2186D560C(qword_280EAA320, type metadata accessor for TodayFeedServiceContextFactory);
    sub_2186D560C(&qword_280EAE380, type metadata accessor for TodayFeedServiceConfigFetcher);
    sub_2186E64AC();
    sub_2186E6548();
    v0 = type metadata accessor for OfflineFeedBuilder();
    if (!v1)
    {
      atomic_store(v0, &qword_280ED3218);
    }
  }
}

uint64_t type metadata accessor for TodayFeedServiceConfigFetcher()
{
  result = qword_280EAE368;
  if (!qword_280EAE368)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2186DCB0C()
{
  sub_2186DCC04(319, qword_280EC6638, type metadata accessor for TodayConfigFetchResult, MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_2186DCC04(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t type metadata accessor for TodayConfigFetchResult()
{
  result = qword_280EC6678;
  if (!qword_280EC6678)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_2186DCCB4()
{
  result = type metadata accessor for TodayConfig();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for TodayConfigData();
    if (v2 <= 0x3F)
    {
      result = sub_2186C61E4();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t type metadata accessor for TodayConfig()
{
  result = qword_280EDF340;
  if (!qword_280EDF340)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2186DCD9C()
{
  result = type metadata accessor for TodayFeedConfig();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t type metadata accessor for TodayFeedConfig()
{
  result = qword_280ED91B8;
  if (!qword_280ED91B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2186DCE5C()
{
  sub_2186DCF58();
  if (v0 <= 0x3F)
  {
    sub_2186DD750(319, &unk_280E8F230, type metadata accessor for TodayFeedGroupConfig, MEMORY[0x277D83940]);
    if (v1 <= 0x3F)
    {
      sub_2186DD750(319, &qword_280E91B80, MEMORY[0x277D32028], MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_2186DCF58()
{
  if (!qword_280EE9C40)
  {
    sub_219BDBD34();
    v0 = sub_219BF6FB4();
    if (!v1)
    {
      atomic_store(v0, &qword_280EE9C40);
    }
  }
}

void sub_2186DCFB0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_219BF6FB4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_2186DD004(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_219BF6FB4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_2186DD058(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_2186DD0BC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_2186DD120(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_2186DD184(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_2186DD1E8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_219BF6FB4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_2186DD23C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_2186DD2A0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_2186DD304(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_2186DD368(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_2186DD3CC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_2186DD430(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_2186DD494(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_2186DD4F8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_2186DD55C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_2186DD5C0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_2186DD624(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_2186DD688(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_2186DD6EC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_2186DD750(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_2186DD7B4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_2186DD818(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_2186DD87C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_219BF6FB4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_2186DD8D0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_2186DD934(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_2186DD998(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_2186DD9FC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_2186DDA60(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_2186DDAC4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_219BF6FB4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_2186DDB18(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_2186DDB7C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_2186DDBE0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_219BF6FB4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_2186DDC34(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_219BF6FB4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_2186DDC88(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_2186DDCEC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_2186DDD50(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_2186DDDB4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_2186DDE18(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_2186DDE7C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_219BF6FB4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_2186DDED0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_2186DDF34(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_2186DDF98(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_219BF6FB4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_2186DDFEC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_2186DE050(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_2186DE0B4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_2186DE118(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_2186DE17C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_2186DE1E0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_2186DE244(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_2186DE2A8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_2186DE30C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t type metadata accessor for TodayFeedGroupConfig()
{
  result = qword_280ECC6A0;
  if (!qword_280ECC6A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2186DE3BC()
{
  sub_2186DE644();
  if (v0 <= 0x3F)
  {
    sub_2186DE858();
    if (v1 <= 0x3F)
    {
      sub_2186DF3DC();
      if (v2 <= 0x3F)
      {
        sub_2186DF784();
        if (v3 <= 0x3F)
        {
          sub_2186E0010();
          if (v4 <= 0x3F)
          {
            sub_2186E0170();
            if (v5 <= 0x3F)
            {
              sub_2186E0288();
              if (v6 <= 0x3F)
              {
                sub_2186E03A0();
                if (v7 <= 0x3F)
                {
                  sub_2186E05B8(319, &qword_280E923C0, sub_2186E0634, sub_2186E0688);
                  if (v8 <= 0x3F)
                  {
                    sub_2186E06DC();
                    if (v9 <= 0x3F)
                    {
                      sub_2186E0878();
                      if (v10 <= 0x3F)
                      {
                        sub_2186E0990();
                        if (v11 <= 0x3F)
                        {
                          sub_2186E0AA8();
                          if (v12 <= 0x3F)
                          {
                            sub_2186E0BC0();
                            if (v13 <= 0x3F)
                            {
                              sub_2186E0CD8();
                              if (v14 <= 0x3F)
                              {
                                sub_2186E05B8(319, &qword_280E922F0, sub_2186E0DF0, sub_2186E0E44);
                                if (v15 <= 0x3F)
                                {
                                  sub_2186E0E98();
                                  if (v16 <= 0x3F)
                                  {
                                    sub_2186E104C();
                                    if (v17 <= 0x3F)
                                    {
                                      sub_2186E1164();
                                      if (v18 <= 0x3F)
                                      {
                                        sub_2186E12C4();
                                        if (v19 <= 0x3F)
                                        {
                                          sub_2186E13DC();
                                          if (v20 <= 0x3F)
                                          {
                                            sub_2186E14F4();
                                            if (v21 <= 0x3F)
                                            {
                                              sub_2186E16D0();
                                              if (v22 <= 0x3F)
                                              {
                                                swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
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

void sub_2186DE644()
{
  if (!qword_280E92400)
  {
    type metadata accessor for CuratedTodayFeedGroupConfigData();
    sub_2186DE810(&unk_280EA9810, type metadata accessor for CuratedTodayFeedGroupConfigData);
    sub_2186DE810(&qword_280EA9820, type metadata accessor for CuratedTodayFeedGroupConfigData);
    v0 = sub_219BEDD94();
    if (!v1)
    {
      atomic_store(v0, &qword_280E92400);
    }
  }
}

uint64_t type metadata accessor for CuratedTodayFeedGroupConfigData()
{
  result = qword_280EA97F8;
  if (!qword_280EA97F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2186DE75C()
{
  sub_219BF1934();
  if (v0 <= 0x3F)
  {
    sub_2186D0AF8();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_2186DE810(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_2186DE858()
{
  if (!qword_280E92340)
  {
    type metadata accessor for NewspaperTodayFeedGroupConfigData();
    sub_2186DF304(&unk_280EA2E10, type metadata accessor for NewspaperTodayFeedGroupConfigData);
    sub_2186DF304(&qword_280EA2E20, type metadata accessor for NewspaperTodayFeedGroupConfigData);
    v0 = sub_219BEDD94();
    if (!v1)
    {
      atomic_store(v0, &qword_280E92340);
    }
  }
}

uint64_t type metadata accessor for NewspaperTodayFeedGroupConfigData()
{
  result = qword_280EA2E00;
  if (!qword_280EA2E00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2186DE970()
{
  sub_2186DEB60(319, &qword_280E90800, MEMORY[0x277D33478]);
  if (v0 <= 0x3F)
  {
    sub_2186DEB60(319, &unk_280E8FD50, sub_2186DEE0C);
    if (v1 <= 0x3F)
    {
      sub_2186DF080(319, &qword_280E8F860, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        sub_2186DF080(319, &unk_280E8F000, &type metadata for NewspaperTodayFeedGroupConfigData.Channel, MEMORY[0x277D83940]);
        if (v3 <= 0x3F)
        {
          sub_2186DEB60(319, &qword_280E903B0, MEMORY[0x277D339D0]);
          if (v4 <= 0x3F)
          {
            sub_2186DF080(319, &qword_280E8E900, MEMORY[0x277D83B88], MEMORY[0x277D83D88]);
            if (v5 <= 0x3F)
            {
              sub_2186D0AF8();
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

void sub_2186DEB60(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_219BF6FB4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_2186DEBB4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_219BF6FB4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_2186DEC08(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_219BF6FB4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_2186DEC5C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2186DECA4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2186DECEC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2186DED34(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2186DED7C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2186DEDC4(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_2186DEE0C()
{
  if (!qword_280E8FD60)
  {
    sub_219BF1944();
    sub_2186DEC5C(&unk_280E907F0, MEMORY[0x277D33498]);
    v0 = sub_219BF4B84();
    if (!v1)
    {
      atomic_store(v0, &qword_280E8FD60);
    }
  }
}

void sub_2186DEEA0(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_219BF6FB4();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_2186DEEEC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x277D837D0]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_2186DEF40(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_2186DEF90(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_2186DEFE0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_2186DF030(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_2186DF080(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_2186DF0D0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_2186DF120(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_2186DF170(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_2186DF1C0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_2186DF210(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_2186DF260(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x277D837D0]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_2186DF2B4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_2186DF304(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2186DF34C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2186DF394(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_2186DF3DC()
{
  if (!qword_280E91F70)
  {
    type metadata accessor for LocalNewsTodayFeedGroupConfigData();
    sub_2186DF6AC(&unk_280EE1580, type metadata accessor for LocalNewsTodayFeedGroupConfigData);
    sub_2186DF6AC(&qword_280EE1590, type metadata accessor for LocalNewsTodayFeedGroupConfigData);
    v0 = sub_219BEDD94();
    if (!v1)
    {
      atomic_store(v0, &qword_280E91F70);
    }
  }
}

uint64_t type metadata accessor for LocalNewsTodayFeedGroupConfigData()
{
  result = qword_280EE1568;
  if (!qword_280EE1568)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2186DF4F4()
{
  sub_2186DEC08(319, &qword_280E90800, MEMORY[0x277D33478]);
  if (v0 <= 0x3F)
  {
    sub_2186DEC08(319, &unk_280E8FD50, sub_2186DEE0C);
    if (v1 <= 0x3F)
    {
      sub_2186DF080(319, &qword_280E8F860, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        sub_2186DF080(319, &qword_280E8F400, &type metadata for LocalNewsTodayFeedGroupConfigData.Channel, MEMORY[0x277D83940]);
        if (v3 <= 0x3F)
        {
          sub_2186DF080(319, &qword_280E8E900, MEMORY[0x277D83B88], MEMORY[0x277D83D88]);
          if (v4 <= 0x3F)
          {
            sub_2186D0AF8();
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

uint64_t sub_2186DF6AC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2186DF6F4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2186DF73C(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_2186DF784()
{
  if (!qword_280E92380)
  {
    type metadata accessor for TrendingTodayFeedGroupConfigData();
    sub_2186DFCB0(&qword_280EA4018, type metadata accessor for TrendingTodayFeedGroupConfigData);
    sub_2186DFCB0(&qword_280EA4020, type metadata accessor for TrendingTodayFeedGroupConfigData);
    v0 = sub_219BEDD94();
    if (!v1)
    {
      atomic_store(v0, &qword_280E92380);
    }
  }
}

uint64_t type metadata accessor for TrendingTodayFeedGroupConfigData()
{
  result = qword_280EA3FD8;
  if (!qword_280EA3FD8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2186DF89C()
{
  result = sub_219BF1934();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_2186DF908(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2186DF950(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2186DF998(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2186DF9E0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2186DFA28(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2186DFA70(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2186DFAB8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2186DFB00(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2186DFB48(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2186DFB90(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2186DFBD8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2186DFC20(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2186DFC68(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2186DFCB0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2186DFCF8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2186DFD40(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2186DFD88(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2186DFDD0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2186DFE18(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2186DFE60(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2186DFEA8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2186DFEF0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2186DFF38(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2186DFF80(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2186DFFC8(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_2186E0010()
{
  if (!qword_280E92448)
  {
    type metadata accessor for ForYouTodayFeedGroupConfigData();
    sub_2186E0128(&qword_280EAC970, type metadata accessor for ForYouTodayFeedGroupConfigData);
    sub_2186E0128(&qword_280EAC978, type metadata accessor for ForYouTodayFeedGroupConfigData);
    v0 = sub_219BEDD94();
    if (!v1)
    {
      atomic_store(v0, &qword_280E92448);
    }
  }
}

uint64_t type metadata accessor for ForYouTodayFeedGroupConfigData()
{
  result = qword_280EAC930;
  if (!qword_280EAC930)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2186E0128(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_2186E0170()
{
  if (!qword_280E92140)
  {
    type metadata accessor for MissedStoriesTodayFeedGroupConfigData();
    sub_2186E0128(&unk_280E99420, type metadata accessor for MissedStoriesTodayFeedGroupConfigData);
    sub_2186E0128(&qword_280E99430, type metadata accessor for MissedStoriesTodayFeedGroupConfigData);
    v0 = sub_219BEDD94();
    if (!v1)
    {
      atomic_store(v0, &qword_280E92140);
    }
  }
}

uint64_t type metadata accessor for MissedStoriesTodayFeedGroupConfigData()
{
  result = qword_280E993E0;
  if (!qword_280E993E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2186E0288()
{
  if (!qword_280E92150)
  {
    type metadata accessor for LatestStoriesTodayFeedGroupConfigData();
    sub_2186DFCB0(&unk_280E996F0, type metadata accessor for LatestStoriesTodayFeedGroupConfigData);
    sub_2186DFCB0(&qword_280E99700, type metadata accessor for LatestStoriesTodayFeedGroupConfigData);
    v0 = sub_219BEDD94();
    if (!v1)
    {
      atomic_store(v0, &qword_280E92150);
    }
  }
}

uint64_t type metadata accessor for LatestStoriesTodayFeedGroupConfigData()
{
  result = qword_280E996B8;
  if (!qword_280E996B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2186E03A0()
{
  if (!qword_280E92470)
  {
    type metadata accessor for TopicTodayFeedGroupConfigData();
    sub_2186E0570(&qword_280EADEB8, type metadata accessor for TopicTodayFeedGroupConfigData);
    sub_2186E0570(&qword_280EADEC0, type metadata accessor for TopicTodayFeedGroupConfigData);
    v0 = sub_219BEDD94();
    if (!v1)
    {
      atomic_store(v0, &qword_280E92470);
    }
  }
}

uint64_t type metadata accessor for TopicTodayFeedGroupConfigData()
{
  result = qword_280EADEA8;
  if (!qword_280EADEA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2186E04B8()
{
  sub_219BF1934();
  if (v0 <= 0x3F)
  {
    sub_2186DEBB4(319, &qword_280E90800, MEMORY[0x277D33478]);
    if (v1 <= 0x3F)
    {
      sub_219BF1214();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_2186E0570(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_2186E05B8(uint64_t a1, unint64_t *a2, void (*a3)(void), void (*a4)(void))
{
  if (!*a2)
  {
    a3();
    a4();
    v6 = sub_219BEDD94();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

unint64_t sub_2186E0634()
{
  result = qword_280EA5FB0;
  if (!qword_280EA5FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EA5FB0);
  }

  return result;
}

unint64_t sub_2186E0688()
{
  result = qword_280EA5FB8;
  if (!qword_280EA5FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EA5FB8);
  }

  return result;
}

void sub_2186E06DC()
{
  if (!qword_280E92350)
  {
    type metadata accessor for NewFollowTodayFeedGroupConfigData();
    sub_2186DFCB0(&qword_280EA2FE8, type metadata accessor for NewFollowTodayFeedGroupConfigData);
    sub_2186DFCB0(&qword_280EA2FF0, type metadata accessor for NewFollowTodayFeedGroupConfigData);
    v0 = sub_219BEDD94();
    if (!v1)
    {
      atomic_store(v0, &qword_280E92350);
    }
  }
}

uint64_t type metadata accessor for NewFollowTodayFeedGroupConfigData()
{
  result = qword_280EA2FD8;
  if (!qword_280EA2FD8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2186E07F4()
{
  result = sub_219BF1934();
  if (v1 <= 0x3F)
  {
    result = sub_219BF1214();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_2186E0878()
{
  if (!qword_280E92328)
  {
    type metadata accessor for SpotlightTodayFeedGroupConfigData();
    sub_2186DFCB0(&qword_280EA1820, type metadata accessor for SpotlightTodayFeedGroupConfigData);
    sub_2186DFCB0(&qword_280EA1828, type metadata accessor for SpotlightTodayFeedGroupConfigData);
    v0 = sub_219BEDD94();
    if (!v1)
    {
      atomic_store(v0, &qword_280E92328);
    }
  }
}

uint64_t type metadata accessor for SpotlightTodayFeedGroupConfigData()
{
  result = qword_280EA17E8;
  if (!qword_280EA17E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2186E0990()
{
  if (!qword_280E921A0)
  {
    type metadata accessor for SubscriptionTodayFeedGroupConfigData();
    sub_2186DFCB0(&qword_280E9A398, type metadata accessor for SubscriptionTodayFeedGroupConfigData);
    sub_2186DFCB0(&qword_280E9A3A0, type metadata accessor for SubscriptionTodayFeedGroupConfigData);
    v0 = sub_219BEDD94();
    if (!v1)
    {
      atomic_store(v0, &qword_280E921A0);
    }
  }
}

uint64_t type metadata accessor for SubscriptionTodayFeedGroupConfigData()
{
  result = qword_280E9A358;
  if (!qword_280E9A358)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2186E0AA8()
{
  if (!qword_280E922A8)
  {
    type metadata accessor for SuggestionTodayFeedGroupConfigData();
    sub_2186DFCB0(&qword_280E9E710, type metadata accessor for SuggestionTodayFeedGroupConfigData);
    sub_2186DFCB0(&qword_280E9E718, type metadata accessor for SuggestionTodayFeedGroupConfigData);
    v0 = sub_219BEDD94();
    if (!v1)
    {
      atomic_store(v0, &qword_280E922A8);
    }
  }
}

uint64_t type metadata accessor for SuggestionTodayFeedGroupConfigData()
{
  result = qword_280E9E700;
  if (!qword_280E9E700)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2186E0BC0()
{
  if (!qword_280E92050)
  {
    type metadata accessor for SeenContentMarkTodayFeedGroupConfigData();
    sub_2186DFCB0(&qword_280E96A58, type metadata accessor for SeenContentMarkTodayFeedGroupConfigData);
    sub_2186DFCB0(&qword_280E96A60, type metadata accessor for SeenContentMarkTodayFeedGroupConfigData);
    v0 = sub_219BEDD94();
    if (!v1)
    {
      atomic_store(v0, &qword_280E92050);
    }
  }
}

uint64_t type metadata accessor for SeenContentMarkTodayFeedGroupConfigData()
{
  result = qword_280E96A20;
  if (!qword_280E96A20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2186E0CD8()
{
  if (!qword_280E92120)
  {
    type metadata accessor for SharedWithYouTodayFeedGroupConfigData();
    sub_2186DFB00(&unk_280E98E20, type metadata accessor for SharedWithYouTodayFeedGroupConfigData);
    sub_2186DFB00(&qword_280E98E30, type metadata accessor for SharedWithYouTodayFeedGroupConfigData);
    v0 = sub_219BEDD94();
    if (!v1)
    {
      atomic_store(v0, &qword_280E92120);
    }
  }
}

uint64_t type metadata accessor for SharedWithYouTodayFeedGroupConfigData()
{
  result = qword_280E98DE8;
  if (!qword_280E98DE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_2186E0DF0()
{
  result = qword_280EA0A00;
  if (!qword_280EA0A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EA0A00);
  }

  return result;
}

unint64_t sub_2186E0E44()
{
  result = qword_280EA0A10;
  if (!qword_280EA0A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EA0A10);
  }

  return result;
}

void sub_2186E0E98()
{
  if (!qword_280E923B8)
  {
    type metadata accessor for MySportsTodayFeedGroupConfigData();
    sub_2186DFCB0(&qword_280EA5E90, type metadata accessor for MySportsTodayFeedGroupConfigData);
    sub_2186DFCB0(&qword_280EA5E98, type metadata accessor for MySportsTodayFeedGroupConfigData);
    v0 = sub_219BEDD94();
    if (!v1)
    {
      atomic_store(v0, &qword_280E923B8);
    }
  }
}

uint64_t type metadata accessor for MySportsTodayFeedGroupConfigData()
{
  result = qword_280EA5E80;
  if (!qword_280EA5E80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2186E0FB0()
{
  result = sub_219BF1934();
  if (v1 <= 0x3F)
  {
    result = sub_219BF1214();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_2186E104C()
{
  if (!qword_280E92160)
  {
    type metadata accessor for IntroToSportsTodayFeedGroupConfigData();
    sub_2186DFCB0(&qword_280E997B8, type metadata accessor for IntroToSportsTodayFeedGroupConfigData);
    sub_2186DFCB0(&qword_280E997C0, type metadata accessor for IntroToSportsTodayFeedGroupConfigData);
    v0 = sub_219BEDD94();
    if (!v1)
    {
      atomic_store(v0, &qword_280E92160);
    }
  }
}

uint64_t type metadata accessor for IntroToSportsTodayFeedGroupConfigData()
{
  result = qword_280E997A8;
  if (!qword_280E997A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2186E1164()
{
  if (!qword_280E92338)
  {
    type metadata accessor for ShortcutsTodayFeedGroupConfigData();
    sub_2186E127C(&qword_280EA1ED0, type metadata accessor for ShortcutsTodayFeedGroupConfigData);
    sub_2186E127C(&qword_280EA1ED8, type metadata accessor for ShortcutsTodayFeedGroupConfigData);
    v0 = sub_219BEDD94();
    if (!v1)
    {
      atomic_store(v0, &qword_280E92338);
    }
  }
}

uint64_t type metadata accessor for ShortcutsTodayFeedGroupConfigData()
{
  result = qword_280EA1E98;
  if (!qword_280EA1E98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2186E127C(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_2186E12C4()
{
  if (!qword_280E92420)
  {
    type metadata accessor for ChannelTodayFeedGroupConfigData();
    sub_2186DFCB0(&qword_280EA9A98, type metadata accessor for ChannelTodayFeedGroupConfigData);
    sub_2186DFCB0(&qword_280EA9AA0, type metadata accessor for ChannelTodayFeedGroupConfigData);
    v0 = sub_219BEDD94();
    if (!v1)
    {
      atomic_store(v0, &qword_280E92420);
    }
  }
}

uint64_t type metadata accessor for ChannelTodayFeedGroupConfigData()
{
  result = qword_280EA9A88;
  if (!qword_280EA9A88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2186E13DC()
{
  if (!qword_280E921C8)
  {
    type metadata accessor for SavedStoriesTodayFeedGroupConfigData();
    sub_2186DFCB0(&qword_280E9A9C0, type metadata accessor for SavedStoriesTodayFeedGroupConfigData);
    sub_2186DFCB0(&qword_280E9A9C8, type metadata accessor for SavedStoriesTodayFeedGroupConfigData);
    v0 = sub_219BEDD94();
    if (!v1)
    {
      atomic_store(v0, &qword_280E921C8);
    }
  }
}

uint64_t type metadata accessor for SavedStoriesTodayFeedGroupConfigData()
{
  result = qword_280E9A980;
  if (!qword_280E9A980)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2186E14F4()
{
  if (!qword_280E92170)
  {
    type metadata accessor for ChannelPickerTodayFeedGroupConfigData();
    sub_2186E1688(&qword_280E99D98, type metadata accessor for ChannelPickerTodayFeedGroupConfigData);
    sub_2186E1688(&qword_280E99DA0, type metadata accessor for ChannelPickerTodayFeedGroupConfigData);
    v0 = sub_219BEDD94();
    if (!v1)
    {
      atomic_store(v0, &qword_280E92170);
    }
  }
}

uint64_t type metadata accessor for ChannelPickerTodayFeedGroupConfigData()
{
  result = qword_280E99D80;
  if (!qword_280E99D80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2186E160C()
{
  result = sub_219BF1934();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_2186E1688(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_2186E16D0()
{
  if (!qword_280E91F60)
  {
    type metadata accessor for FoodTodayFeedGroupConfigData();
    sub_2186DFCB0(&qword_280EB4418, type metadata accessor for FoodTodayFeedGroupConfigData);
    sub_2186DFCB0(&qword_280EB4420, type metadata accessor for FoodTodayFeedGroupConfigData);
    v0 = sub_219BEDD94();
    if (!v1)
    {
      atomic_store(v0, &qword_280E91F60);
    }
  }
}

uint64_t type metadata accessor for FoodTodayFeedGroupConfigData()
{
  result = qword_280EB4400;
  if (!qword_280EB4400)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2186E17E8()
{
  sub_219BF1934();
  if (v0 <= 0x3F)
  {
    sub_2186E18F4(319, &qword_280E8EEB0, &qword_280E90530, MEMORY[0x277D33708]);
    if (v1 <= 0x3F)
    {
      sub_2186E18F4(319, &qword_280E8EEA0, &qword_280E90098, MEMORY[0x277D33F70]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_2186E18F4(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_2186E1968(255, a3, sub_2186E19D0, &type metadata for FoodTodayFeedGroupArrangementDataSource, a4);
    v5 = sub_219BF5B14();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_2186E1968(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

unint64_t sub_2186E19D0()
{
  result = qword_280E97430;
  if (!qword_280E97430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E97430);
  }

  return result;
}

unint64_t sub_2186E1A28()
{
  result = qword_280E973F8;
  if (!qword_280E973F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E973F8);
  }

  return result;
}

unint64_t sub_2186E1A80()
{
  result = qword_280E97400;
  if (!qword_280E97400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E97400);
  }

  return result;
}

unint64_t sub_2186E1AD8()
{
  result = qword_280E97420;
  if (!qword_280E97420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E97420);
  }

  return result;
}

unint64_t sub_2186E1B30()
{
  result = qword_280E97418;
  if (!qword_280E97418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E97418);
  }

  return result;
}

unint64_t sub_2186E1B88()
{
  result = qword_280E97410;
  if (!qword_280E97410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E97410);
  }

  return result;
}

uint64_t type metadata accessor for TodayConfigData()
{
  result = qword_280ED9358;
  if (!qword_280ED9358)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}
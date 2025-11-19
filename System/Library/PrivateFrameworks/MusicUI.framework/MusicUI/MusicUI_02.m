uint64_t sub_2166ADA2C()
{
  v0 = sub_217007CA4();
  __swift_allocate_value_buffer(v0, qword_280E397E8);
  __swift_project_value_buffer(v0, qword_280E397E8);
  return sub_217007C94();
}

uint64_t sub_2166ADAAC()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_69_0();
  v1 = *v0;
  OUTLINED_FUNCTION_28();
  *v2 = v1;

  OUTLINED_FUNCTION_23();

  return v3();
}

uint64_t sub_2166ADB8C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF880);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_2166ADC48()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8F00);
  swift_allocObject();
  v0[2] = sub_21700CC44();
  swift_allocObject();
  v0[3] = sub_21700CC44();
  swift_allocObject();
  v0[4] = sub_21700CC44();
  v2 = objc_opt_self();
  v3 = [v2 defaultCenter];
  v4 = qword_280E38808;

  if (v4 != -1)
  {
    swift_once();
  }

  if (qword_280E3CB20 != -1)
  {
    swift_once();
  }

  v5 = qword_280E3CB28;
  v6 = OUTLINED_FUNCTION_0_172();
  [v6 v7];

  v8 = [v2 defaultCenter];
  v9 = qword_280E38800;

  if (v9 != -1)
  {
    swift_once();
  }

  v10 = OUTLINED_FUNCTION_0_172();
  [v10 v11];

  v12 = [v2 defaultCenter];
  v13 = qword_280E387F8;

  if (v13 != -1)
  {
    swift_once();
  }

  [v12 addObserver:v1 selector:sel_didFinishLaunching name:qword_280E73C60 object:v5];

  return v1;
}

id sub_2166ADEC8()
{
  result = [objc_opt_self() sharedApplication];
  qword_280E3CB28 = result;
  return result;
}

uint64_t sub_2166ADF54()
{
  result = sub_21700DFD4();
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

uint64_t _s18HighlightsProviderCMa()
{
  result = qword_280E439F0;
  if (!qword_280E439F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2166AE054()
{
  if (!qword_280E483B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC5618);
    v0 = sub_217007E14();
    if (!v1)
    {
      atomic_store(v0, &qword_280E483B0);
    }
  }
}

void sub_2166AE0B8()
{
  sub_2166AE054();
  if (v0 <= 0x3F)
  {
    sub_21700DFD4();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t type metadata accessor for SwiftMusicRequestPerformer()
{
  result = qword_280E47800;
  if (!qword_280E47800)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2166AE20C()
{
  result = sub_21700DFD4();
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

uint64_t type metadata accessor for ExplicitBadgingPresenter()
{
  result = qword_280E36A10;
  if (!qword_280E36A10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2166AE304()
{
  if (!qword_280E48370)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB9DA8);
    v0 = sub_217007E14();
    if (!v1)
    {
      atomic_store(v0, &qword_280E48370);
    }
  }
}

void sub_2166AE368()
{
  sub_2166AE304();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t type metadata accessor for SocialGraphController()
{
  result = qword_280E39AB8;
  if (!qword_280E39AB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2166AE450()
{
  if (!qword_280E483D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC1D10);
    v0 = sub_217007E14();
    if (!v1)
    {
      atomic_store(v0, &qword_280E483D0);
    }
  }
}

void sub_2166AE4B4()
{
  sub_2166AE450();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

char *sub_2166AE570()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6340);
  OUTLINED_FUNCTION_1();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  v7 = v13 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB790);
  swift_allocObject();
  *(v0 + 2) = sub_21700CC44();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA4D0);
  swift_allocObject();
  *(v0 + 3) = sub_21700CC44();
  type metadata accessor for UnfairLock();
  v8 = swift_allocObject();
  v9 = swift_slowAlloc();
  *(v8 + 16) = v9;
  *v9 = 0;
  *(v1 + 4) = v8;
  *(v1 + 5) = 25965;
  *(v1 + 6) = 0xE200000000000000;
  v10 = OBJC_IVAR____TtC7MusicUI21SocialGraphController__followStateMap;
  v13[1] = sub_21700E384();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1D10);
  sub_217007DA4();
  (*(v4 + 32))(&v1[v10], v7, v2);
  v11 = MEMORY[0x277D84FA0];
  *&v1[OBJC_IVAR____TtC7MusicUI21SocialGraphController_requestedToFollowProfileIDs] = MEMORY[0x277D84FA0];
  *&v1[OBJC_IVAR____TtC7MusicUI21SocialGraphController_followersProfileIDs] = v11;
  *&v1[OBJC_IVAR____TtC7MusicUI21SocialGraphController_removedFollowersProfileIDs] = v11;
  return v1;
}

uint64_t type metadata accessor for CloudLibraryStatusController()
{
  result = qword_280E32550;
  if (!qword_280E32550)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2166AE79C()
{
  if (!qword_280E2A1C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB8EF0);
    v0 = sub_21700F164();
    if (!v1)
    {
      atomic_store(v0, &qword_280E2A1C0);
    }
  }
}

void sub_2166AE800()
{
  sub_2166AE79C();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t type metadata accessor for UserSocialProfileCoordinator()
{
  result = qword_280E31BF0;
  if (!qword_280E31BF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2166AE930()
{
  sub_2166AEABC(319, qword_280E32B18, type metadata accessor for UserSocialProfileDescriptor);
  if (v0 <= 0x3F)
  {
    sub_2166AEABC(319, &qword_280E2BF20, type metadata accessor for Artwork);
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_2166AEABC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_21700F164();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_2166AEB30()
{
  type metadata accessor for ContentDescriptor();
  if (v0 <= 0x3F)
  {
    sub_216690CDC(319, &qword_280E2BF20, type metadata accessor for Artwork, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t type metadata accessor for AppLifeCycleIntentDispatcher()
{
  result = qword_280E32880;
  if (!qword_280E32880)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2166AEC70()
{
  sub_2166AE79C();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t type metadata accessor for SocialBadgingMapRequestCoordinator()
{
  result = qword_280E2EA88;
  if (!qword_280E2EA88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2166AED9C()
{
  sub_2166AEE60();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_2166AEE60()
{
  if (!qword_280E40850)
  {
    type metadata accessor for SocialBadgingMap();
    v0 = sub_21700F164();
    if (!v1)
    {
      atomic_store(v0, &qword_280E40850);
    }
  }
}

uint64_t type metadata accessor for SocialBadgingMap()
{
  result = qword_280E40888;
  if (!qword_280E40888)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2166AEF04()
{
  if (!qword_280E2A0B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB74F8);
    v0 = sub_21700E3F4();
    if (!v1)
    {
      atomic_store(v0, &qword_280E2A0B0);
    }
  }
}

void sub_2166AEF78()
{
  sub_2170061E4();
  if (v0 <= 0x3F)
  {
    sub_2166AEF04();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t type metadata accessor for SocialBadgingRequestCoordinator()
{
  result = qword_280E2FFB0;
  if (!qword_280E2FFB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2166AF058()
{
  sub_2166AF164();
  if (v0 <= 0x3F)
  {
    sub_2166AEE60();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_2166AF164()
{
  if (!qword_280E48378)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC1838);
    v0 = sub_217007E14();
    if (!v1)
    {
      atomic_store(v0, &qword_280E48378);
    }
  }
}

uint64_t type metadata accessor for SourceBundleLoader()
{
  result = qword_280E3E748;
  if (!qword_280E3E748)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_2166AF224()
{
  result = sub_2166AF2A8();
  if (v1 <= 0x3F)
  {
    result = sub_21700CB44();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_2166AF2A8()
{
  result = qword_280E29D38;
  if (!qword_280E29D38)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280E29D38);
  }

  return result;
}

unint64_t sub_2166AF2EC()
{
  result = qword_280E29CD0;
  if (!qword_280E29CD0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280E29CD0);
  }

  return result;
}

unint64_t sub_2166AF330()
{
  result = qword_280E29CE0;
  if (!qword_280E29CE0)
  {
    sub_21700EE44();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E29CE0);
  }

  return result;
}

unint64_t sub_2166AF388()
{
  result = qword_280E29E10;
  if (!qword_280E29E10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABA810);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E29E10);
  }

  return result;
}

uint64_t sub_2166AF3EC()
{
  OUTLINED_FUNCTION_9_14();
  v0 = sub_21700E4D4();
  v1 = OUTLINED_FUNCTION_5_9();
  v3 = [v1 v2];

  if (v3)
  {
    sub_21700E514();
    OUTLINED_FUNCTION_12_10();
  }

  else
  {
    OUTLINED_FUNCTION_13_7();
  }

  return OUTLINED_FUNCTION_7_4();
}

unint64_t sub_2166AF488()
{
  result = qword_280E2FFD8;
  if (!qword_280E2FFD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2FFD8);
  }

  return result;
}

uint64_t sub_2166AF4DC(char a1)
{
  v2 = [objc_opt_self() processInfo];
  v3 = [v2 environment];

  v4 = sub_21700E354();
  sub_2166AF628(0xD000000000000010, 0x800000021707F380, v4);
  v6 = v5;

  if (v6)
  {
    v7 = sub_21700E4D4();

    v8 = [v7 BOOLValue];

    v9 = v8 & 1;
  }

  else
  {
    v9 = 2;
  }

  v10 = [objc_opt_self() standardUserDefaults];
  v11 = sub_2166AF790();

  if (v11 == 2)
  {
    v12 = a1;
  }

  else
  {
    v12 = v11;
  }

  if (v9 != 2)
  {
    v12 = v9;
  }

  return v12 & 1;
}

uint64_t sub_2166AF628(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 16) && (v3 = sub_2166AF66C(a1, a2), (v4 & 1) != 0))
  {
    OUTLINED_FUNCTION_40_12(v3);
    sub_21700DF14();
  }

  else
  {
    OUTLINED_FUNCTION_78_8();
  }

  return OUTLINED_FUNCTION_8();
}

unint64_t sub_2166AF66C(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_42_32();
  sub_21700E614();
  v4 = sub_21700F944();

  return sub_2166AF6DC(a1, a2, v4);
}

unint64_t sub_2166AF6DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (sub_21700F7D4() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

uint64_t sub_2166AF790()
{
  v0 = sub_21700E4D4();
  v1 = OUTLINED_FUNCTION_5_9();
  v3 = [v1 v2];

  if (v3)
  {
    sub_21700F1E4();
    swift_unknownObjectRelease();
    sub_216697CFC(v9);
    v4 = sub_21700E4D4();
    v5 = OUTLINED_FUNCTION_5_9();
    v7 = [v5 v6];
  }

  else
  {
    memset(v9, 0, sizeof(v9));
    sub_216697CFC(v9);
    return 2;
  }

  return v7;
}

uint64_t sub_2166AF884()
{
  result = sub_21700E4D4();
  qword_27CAC0FD8 = result;
  return result;
}

uint64_t sub_2166AF8BC()
{
  v0 = sub_21700C384();
  if (v1 <= 0x3F)
  {
    v0 = sub_21700C084();
    if (v2 <= 0x3F)
    {
      sub_2166AFAF0(319, &qword_280E2A3C8, MEMORY[0x277CD82C8]);
      if (v4 > 0x3F)
      {
        return v3;
      }

      sub_216781FA0();
      if (v5 > 0x3F)
      {
        return v3;
      }

      sub_2166AFAF0(319, &qword_280E2A358, MEMORY[0x277CD8608]);
      if (v6 > 0x3F)
      {
        return v3;
      }

      sub_216782020();
      if (v7 > 0x3F)
      {
        return v3;
      }

      else
      {
        v0 = sub_21700BEA4();
        if (v8 <= 0x3F)
        {
          v0 = sub_217007264();
          if (v9 <= 0x3F)
          {
            v0 = sub_217007324();
            if (v10 <= 0x3F)
            {
              v0 = sub_21700C554();
              if (v11 <= 0x3F)
              {
                v0 = sub_21700C924();
                if (v12 <= 0x3F)
                {
                  v0 = sub_21700C994();
                  if (v13 <= 0x3F)
                  {
                    v0 = sub_21700C254();
                    if (v14 <= 0x3F)
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

  return v0;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = a1;
  if ((*(*(a1[3] - 8) + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v2;
  }

  return v1;
}

void sub_2166AFAF0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB6AE0);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t type metadata accessor for MusicStackAuthority()
{
  result = qword_280E46CF8;
  if (!qword_280E46CF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2166AFBC0()
{
  OUTLINED_FUNCTION_31();
  v1 = v0;
  v3 = v2;
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_20_0(v4);
  *v5 = v6;
  v5[1] = sub_2166AB4A0;

  return sub_2166AFD50(v3, v1);
}

void sub_2166AFC64()
{
  sub_2166AFFB4();
  if (v0 <= 0x3F)
  {
    sub_217007CA4();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_2166AFD50(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v2[4] = sub_21700DCB4();
  v2[5] = swift_task_alloc();
  v3 = sub_21700DFD4();
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2166AFE40, 0, 0);
}

uint64_t sub_2166AFE40()
{
  sub_216685F4C(0, &qword_280E29D78);
  if (qword_280E2B740 != -1)
  {
    OUTLINED_FUNCTION_20_16();
  }

  v1 = v0[7];
  v2 = v0[8];
  v3 = v0[6];
  v4 = qword_280E73A78;
  sub_21700D4D4();
  v5 = v4;
  sub_21700E094();
  v6 = sub_21700DF34();
  (*(v1 + 8))(v2, v3);
  sub_21700E094();
  v7 = swift_task_alloc();
  v0[9] = v7;
  *v7 = v0;
  v7[1] = sub_2166B0EA0;
  v8 = v0[5];

  return MEMORY[0x2821809B0](v5, v6, v8);
}

void sub_2166AFFB4()
{
  if (!qword_280E48400)
  {
    sub_217008674();
    v0 = sub_217007E14();
    if (!v1)
    {
      atomic_store(v0, &qword_280E48400);
    }
  }
}

void MusicStackAuthority.init(navigationPathProvider:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_49();
  a19 = v22;
  a20 = v23;
  v25 = v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD0E0);
  OUTLINED_FUNCTION_1();
  v28 = v27;
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_119_1();
  v30 = sub_217008674();
  OUTLINED_FUNCTION_1();
  v32 = v31;
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_77();
  v36 = v34 - v35;
  MEMORY[0x28223BE20](v37);
  v39 = &a9 - v38;
  v40 = OBJC_IVAR____TtC7MusicUI19MusicStackAuthority__path;
  sub_217008664();
  (*(v32 + 16))(v36, v39, v30);
  sub_217007DA4();
  (*(v32 + 8))(v39, v30);
  (*(v28 + 32))(v20 + v40, v21, v26);
  *(v20 + OBJC_IVAR____TtC7MusicUI19MusicStackAuthority_navigationControllerDelegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v41 = OBJC_IVAR____TtC7MusicUI19MusicStackAuthority_bindings;
  sub_21700D404();
  type metadata accessor for AbstractBindingBox();
  OUTLINED_FUNCTION_33_19();
  sub_2166B0DF0(v42, v43);
  *(v20 + v41) = sub_21700E384();
  OUTLINED_FUNCTION_53_11();
  sub_2166A0F18(v25, v20 + OBJC_IVAR____TtC7MusicUI19MusicStackAuthority_navigationType);
  OUTLINED_FUNCTION_26();
}

id sub_2166B0258@<X0>(void *a1@<X8>)
{
  v2 = sub_21700DFD4();
  MEMORY[0x28223BE20](v2);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21700D4D4();
  sub_21700E094();
  v5 = objc_allocWithZone(type metadata accessor for PushNotifications(0));
  result = sub_2166B0518(v4);
  *a1 = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_78_3()
{
  v2 = *(v0 + 56);
  *(v1 - 368) = v0;
  __swift_project_boxed_opaque_existential_1((v0 + 32), v2);
  return 0;
}

uint64_t OUTLINED_FUNCTION_78_4()
{
  type metadata accessor for ContextMenuPreview.ContextPreviewArtwork(0);

  return sub_21700C404();
}

uint64_t OUTLINED_FUNCTION_78_7(uint64_t a1, uint64_t a2)
{
  v4 = *(v2 - 168);
  *v4 = a1;
  v4[1] = a2;

  return type metadata accessor for MappedSection.Content(0);
}

uint64_t OUTLINED_FUNCTION_78_9()
{

  return sub_2169BBAE8();
}

uint64_t OUTLINED_FUNCTION_78_10()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_78_11()
{

  return sub_216697664(v0, v1);
}

uint64_t OUTLINED_FUNCTION_78_14()
{
}

void OUTLINED_FUNCTION_78_15()
{
  v2 = (v0 + *(v1 + 24));
  *v2 = 0;
  v2[1] = 0;
}

uint64_t OUTLINED_FUNCTION_78_16()
{

  return sub_216F3DB18();
}

uint64_t OUTLINED_FUNCTION_78_17()
{

  return sub_216F5BCEC();
}

uint64_t OUTLINED_FUNCTION_78_19(uint64_t a1)
{
  v5 = v1 + *(a1 + 20);

  return sub_216683A80(v5, v3, v2);
}

id sub_2166B0518(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v4 = OBJC_IVAR____TtC7MusicUI17PushNotifications_lock;
  type metadata accessor for UnfairLock();
  v5 = swift_allocObject();
  v6 = swift_slowAlloc();
  *(v5 + 16) = v6;
  *v6 = 0;
  *&v1[v4] = v5;
  v7 = OBJC_IVAR____TtC7MusicUI17PushNotifications_subscriptionsByTopic;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CACD140);
  *&v1[v7] = sub_21700E384();
  v8 = &v1[OBJC_IVAR____TtC7MusicUI17PushNotifications_connection];
  *(v8 + 1) = 0;
  *(v8 + 2) = 0;
  *v8 = 0;
  v9 = OBJC_IVAR____TtC7MusicUI17PushNotifications_bag;
  v10 = sub_21700DFD4();
  v11 = *(v10 - 8);
  (*(v11 + 16))(&v1[v9], a1, v10);
  v14.receiver = v1;
  v14.super_class = ObjectType;
  v12 = objc_msgSendSuper2(&v14, sel_init);
  (*(v11 + 8))(a1, v10);
  return v12;
}

uint64_t OUTLINED_FUNCTION_60_1()
{

  return swift_getOpaqueTypeMetadata2();
}

uint64_t OUTLINED_FUNCTION_60_2()
{
  v2 = *(v0 + 104);

  return sub_2167ADEA8(v2, type metadata accessor for PushNowPlayingAction);
}

uint64_t OUTLINED_FUNCTION_60_3()
{

  return sub_217009554();
}

uint64_t OUTLINED_FUNCTION_60_6()
{

  return sub_2168CBA5C();
}

uint64_t *OUTLINED_FUNCTION_60_12(uint64_t a1)
{
  *(v2 - 344) = a1;
  v1[4] = a1;

  return __swift_allocate_boxed_opaque_existential_1(v1);
}

unint64_t sub_2166B0868()
{
  result = sub_2166B0B84();
  if (v1 <= 0x3F)
  {
    result = sub_217006224();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_61()
{

  return swift_getOpaqueTypeMetadata2();
}

uint64_t OUTLINED_FUNCTION_61_0(uint64_t a1, char a2, uint64_t a3)
{

  return sub_2167A902C(v4, a2, a3, 0, v3);
}

uint64_t OUTLINED_FUNCTION_61_2()
{

  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_61_6()
{

  return sub_216697664(v0, v1);
}

uint64_t OUTLINED_FUNCTION_61_8()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_61_12()
{

  return sub_21700A6B4();
}

uint64_t OUTLINED_FUNCTION_61_14()
{

  return sub_21700D4B4();
}

uint64_t OUTLINED_FUNCTION_61_17@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a2 - 256);

  return sub_216E25750(a1, v3);
}

uint64_t OUTLINED_FUNCTION_61_21@<X0>(uint64_t a1@<X8>)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t OUTLINED_FUNCTION_61_22()
{

  return swift_getEnumCaseMultiPayload();
}

unint64_t sub_2166B0B84()
{
  result = qword_280E29AB0;
  if (!qword_280E29AB0)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_280E29AB0);
  }

  return result;
}

uint64_t sub_2166B0BCC@<X0>(uint64_t *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA800);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v14 - v4;
  v6 = sub_21700DFD4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21700D4D4();
  sub_21700E094();
  v10 = sub_21700E4D4();
  sub_21700DFB4();

  sub_21700DFA4();
  (*(v3 + 8))(v5, v2);
  sub_21700DC34();
  v11 = sub_21700DC24();
  result = (*(v7 + 8))(v9, v6);
  v13 = MEMORY[0x277D221C0];
  *a1 = v11;
  a1[1] = v13;
  return result;
}

uint64_t sub_2166B0DF0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t MusicStackAuthority.navigationControllerDelegate.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC7MusicUI19MusicStackAuthority_navigationControllerDelegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  OUTLINED_FUNCTION_7_4();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

uint64_t sub_2166B0EA0()
{
  OUTLINED_FUNCTION_31();
  v3 = v2;
  OUTLINED_FUNCTION_69_0();
  v5 = v4;
  OUTLINED_FUNCTION_11();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_28();
  *v8 = v7;
  *(v5 + 80) = v0;

  if (!v0)
  {
    *(v5 + 88) = v3;
  }

  OUTLINED_FUNCTION_58();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

void MusicPageProvider.page(for:stackAuthority:motionCacheBucketID:)()
{
  OUTLINED_FUNCTION_49();
  v142 = v2;
  v141 = v3;
  OUTLINED_FUNCTION_80_1(v4, v5);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB6A68);
  v150 = v1;
  OUTLINED_FUNCTION_103_1();
  OUTLINED_FUNCTION_103_1();
  v7 = *(v6 + 96);
  v8 = *(v0 + 104);
  v146 = v9;
  v145 = v10;
  v144 = v7;
  v166 = v7;
  v167 = v8;
  v143 = v8;
  OUTLINED_FUNCTION_22_11();
  type metadata accessor for SearchPageView();
  type metadata accessor for FlowActionPageView();
  OUTLINED_FUNCTION_19_0();
  sub_217009564();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB6A70);
  OUTLINED_FUNCTION_19_0();
  sub_217009564();
  sub_217009564();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB6A78);
  OUTLINED_FUNCTION_19_0();
  sub_217009564();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB6A80);
  OUTLINED_FUNCTION_19_0();
  sub_217009564();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB6A88);
  OUTLINED_FUNCTION_19_0();
  sub_2170089F4();
  OUTLINED_FUNCTION_11_8();
  v13 = sub_2166B5148(v11, &qword_27CAB6A68, &unk_21701D690, v12);
  OUTLINED_FUNCTION_10_1();
  WitnessTable = swift_getWitnessTable();
  OUTLINED_FUNCTION_9_13();
  v162 = WitnessTable;
  v163 = sub_2166B52EC(v15, v16);
  OUTLINED_FUNCTION_43_5();
  v160 = swift_getWitnessTable();
  v161 = sub_2166B53E0();
  v158 = v13;
  v159 = swift_getWitnessTable();
  v17 = swift_getWitnessTable();
  OUTLINED_FUNCTION_8_4();
  v156 = v17;
  v157 = sub_2166B5148(v18, &qword_27CAB6A78, &unk_217013DD8, v19);
  v154 = swift_getWitnessTable();
  v155 = sub_2166B58AC();
  v149 = swift_getWitnessTable();
  OUTLINED_FUNCTION_7_5();
  v152 = v149;
  v153 = sub_21669E098(v20, &qword_27CAB6A88);
  OUTLINED_FUNCTION_0_9();
  v148 = swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_22_11();
  OUTLINED_FUNCTION_61();
  v21 = OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_0_15(v21);
  OUTLINED_FUNCTION_61();
  v22 = OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_5_8(v22);
  v23 = OUTLINED_FUNCTION_13_6();
  OUTLINED_FUNCTION_0_15(v23);
  OUTLINED_FUNCTION_61();
  v24 = OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_5_8(v24);
  v25 = OUTLINED_FUNCTION_13_6();
  OUTLINED_FUNCTION_0_15(v25);
  OUTLINED_FUNCTION_61();
  v26 = OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_5_8(v26);
  v27 = OUTLINED_FUNCTION_13_6();
  OUTLINED_FUNCTION_0_15(v27);
  OUTLINED_FUNCTION_61();
  v28 = OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_5_8(v28);
  v29 = OUTLINED_FUNCTION_13_6();
  OUTLINED_FUNCTION_0_15(v29);
  OUTLINED_FUNCTION_61();
  v30 = OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_5_8(v30);
  v31 = OUTLINED_FUNCTION_13_6();
  OUTLINED_FUNCTION_0_15(v31);
  OUTLINED_FUNCTION_61();
  v32 = OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_5_8(v32);
  v33 = OUTLINED_FUNCTION_13_6();
  OUTLINED_FUNCTION_0_15(v33);
  OUTLINED_FUNCTION_61();
  v34 = OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_5_8(v34);
  v35 = OUTLINED_FUNCTION_13_6();
  OUTLINED_FUNCTION_0_15(v35);
  OUTLINED_FUNCTION_61();
  v36 = OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_5_8(v36);
  v37 = OUTLINED_FUNCTION_13_6();
  OUTLINED_FUNCTION_0_15(v37);
  OUTLINED_FUNCTION_61();
  v38 = OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_5_8(v38);
  v39 = OUTLINED_FUNCTION_13_6();
  OUTLINED_FUNCTION_0_15(v39);
  OUTLINED_FUNCTION_61();
  v40 = OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_5_8(v40);
  v41 = OUTLINED_FUNCTION_13_6();
  OUTLINED_FUNCTION_0_15(v41);
  OUTLINED_FUNCTION_61();
  v42 = OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_5_8(v42);
  v43 = OUTLINED_FUNCTION_13_6();
  OUTLINED_FUNCTION_0_15(v43);
  OUTLINED_FUNCTION_61();
  v44 = OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_5_8(v44);
  v45 = OUTLINED_FUNCTION_13_6();
  OUTLINED_FUNCTION_0_15(v45);
  OUTLINED_FUNCTION_61();
  v46 = OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_5_8(v46);
  v47 = OUTLINED_FUNCTION_13_6();
  OUTLINED_FUNCTION_0_15(v47);
  OUTLINED_FUNCTION_61();
  v48 = OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_5_8(v48);
  v49 = OUTLINED_FUNCTION_13_6();
  OUTLINED_FUNCTION_0_15(v49);
  OUTLINED_FUNCTION_61();
  v50 = OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_5_8(v50);
  v51 = OUTLINED_FUNCTION_13_6();
  OUTLINED_FUNCTION_0_15(v51);
  OUTLINED_FUNCTION_61();
  v52 = OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_5_8(v52);
  v53 = OUTLINED_FUNCTION_13_6();
  OUTLINED_FUNCTION_0_15(v53);
  OUTLINED_FUNCTION_61();
  v54 = OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_5_8(v54);
  v55 = OUTLINED_FUNCTION_13_6();
  OUTLINED_FUNCTION_0_15(v55);
  OUTLINED_FUNCTION_61();
  v56 = OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_5_8(v56);
  v57 = OUTLINED_FUNCTION_13_6();
  OUTLINED_FUNCTION_0_15(v57);
  OUTLINED_FUNCTION_61();
  v58 = OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_2_16(v58);
  v59 = OUTLINED_FUNCTION_61();
  v60 = OUTLINED_FUNCTION_25_0();
  v164 = v59;
  v165 = v60;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v139 = sub_2170064D4();
  OUTLINED_FUNCTION_1();
  v138 = v62;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v63);
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_70(v64);
  v147 = swift_checkMetadataState();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v65);
  swift_checkMetadataState();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v66);
  swift_checkMetadataState();
  OUTLINED_FUNCTION_1();
  v131 = v67;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v68);
  v70 = &v126 - v69;
  OUTLINED_FUNCTION_16();
  v130 = v71;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v72);
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_70(v73);
  v132 = v74;
  v164 = v74;
  v165 = v60;
  v136 = v60;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v140 = OpaqueTypeMetadata2;
  v164 = OpaqueTypeMetadata2;
  v165 = OpaqueTypeConformance2;
  v129 = OpaqueTypeConformance2;
  v135 = OUTLINED_FUNCTION_112_0();
  OUTLINED_FUNCTION_1();
  v134 = v76;
  MEMORY[0x28223BE20](v77);
  OUTLINED_FUNCTION_77();
  v133 = v78 - v79;
  MEMORY[0x28223BE20](v80);
  OUTLINED_FUNCTION_70(&v126 - v81);
  sub_21700D584();
  sub_2166B6328(v151);
  sub_2166BA08C();
  type metadata accessor for MusicStackAuthority();
  OUTLINED_FUNCTION_17_8();
  sub_2166B52EC(v82, v83);
  sub_21700A654();
  v84 = OUTLINED_FUNCTION_109_0();
  v85(v84);
  v147 = v70;
  sub_2166C3314();
  v86 = OUTLINED_FUNCTION_98();
  v87(v86);
  v88 = [objc_opt_self() sharedApplication];
  v89 = [v88 connectedScenes];

  v90 = sub_216685F4C(0, &qword_280E29B30);
  v91 = sub_2166CB5AC();
  v92 = sub_21700EB84();

  v127 = v92;
  v148 = v90;
  if ((v92 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_21700F264();
    sub_21700EBC4();
    v92 = v164;
    v93 = v165;
    v91 = v166;
    v94 = v167;
    v95 = v168;
  }

  else
  {
    v93 = v92 + 56;
    OUTLINED_FUNCTION_81();
    v95 = v96 & v97;
    sub_21700DF14();
    v94 = 0;
  }

  v126 = v91;
  v98 = (v91 + 64) >> 6;
  v151 = *MEMORY[0x277D772C8];
  if (v92 < 0)
  {
    goto LABEL_11;
  }

LABEL_5:
  v99 = v94;
  v100 = v95;
  v101 = v94;
  if (v95)
  {
LABEL_9:
    v102 = (v100 - 1) & v100;
    v103 = *(*(v92 + 48) + ((v101 << 9) | (8 * __clz(__rbit64(v100)))));
    if (v103)
    {
      while (1)
      {
        v150 = v94;
        v149 = v95;
        v105 = [v103 session];
        v106 = [v105 role];

        v107 = sub_21700E514();
        v109 = v108;
        if (v107 == sub_21700E514() && v109 == v110)
        {
          break;
        }

        v112 = sub_21700F7D4();

        if (v112)
        {
          goto LABEL_22;
        }

        v94 = v101;
        v95 = v102;
        if ((v92 & 0x8000000000000000) == 0)
        {
          goto LABEL_5;
        }

LABEL_11:
        v104 = sub_21700F2E4();
        if (!v104)
        {
          goto LABEL_20;
        }

        OUTLINED_FUNCTION_102_2(v104);
        OUTLINED_FUNCTION_117_1();
        v103 = v169;
        v101 = v94;
        v102 = v95;
        if (!v169)
        {
          goto LABEL_22;
        }
      }
    }

LABEL_22:
    sub_216687978();

    v113 = v128;
    sub_21700A1D4();

    OUTLINED_FUNCTION_67();
    v114 = OUTLINED_FUNCTION_38();
    v115(v114);
    v116 = v137;
    v117 = v140;
    v118 = v129;
    sub_21700A2A4();
    OUTLINED_FUNCTION_67();
    v119(v113, v117);
    v120 = v139;
    sub_2170064A4();
    OUTLINED_FUNCTION_67();
    v121(v116, v120);
    v169 = v117;
    v170 = v118;
    swift_getOpaqueTypeConformance2();
    OUTLINED_FUNCTION_72_0();
    type metadata accessor for PageHostingController();
    v122 = OUTLINED_FUNCTION_92_1();
    v123(v122);
    v169 = v146;
    v170 = v145;
    OUTLINED_FUNCTION_89_1(&v171);
    sub_2166CBBF4(v118);
    v124 = OUTLINED_FUNCTION_98();
    v125(v124);
    OUTLINED_FUNCTION_63();
    OUTLINED_FUNCTION_26();
  }

  else
  {
    while (1)
    {
      v101 = v99 + 1;
      if (__OFADD__(v99, 1))
      {
        break;
      }

      if (v101 >= v98)
      {
LABEL_20:
        v103 = 0;
        goto LABEL_22;
      }

      v100 = *(v93 + 8 * v101);
      ++v99;
      if (v100)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
  }
}

uint64_t sub_2166B1CC0()
{
  OUTLINED_FUNCTION_33();
  **(v0 + 16) = *(v0 + 88);

  OUTLINED_FUNCTION_3();

  return v1();
}

uint64_t OUTLINED_FUNCTION_64_4(uint64_t a1)
{
  v4 = *(a1 + 20);
  v5 = *(v2 - 352);
  v6 = (v5 + v4);
  *v6 = *(v2 - 360);
  v6[1] = v1;
  __swift_storeEnumTagSinglePayload(v5, 0, 1, a1);
}

uint64_t OUTLINED_FUNCTION_64_10()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_64_14()
{
}

uint64_t OUTLINED_FUNCTION_64_15(uint64_t a1)
{
  *(v1 + 752) = a1;

  return sub_21700E984();
}

uint64_t OUTLINED_FUNCTION_98_1(uint64_t a1, uint64_t a2)
{

  return sub_2168282D4(a1, a2, v2);
}

uint64_t sub_2166B1ED4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SourceBundleLoader();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2166B1F48(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SourceBundleLoader();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2166B1FC4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAC0);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v10);
  v12 = &v17 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  sub_21700E244();
  OUTLINED_FUNCTION_110();
  v14 = sub_21700EA74();
  __swift_storeEnumTagSinglePayload(v12, 1, 1, v14);
  OUTLINED_FUNCTION_68_1();
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = a1;
  v15[5] = a2;
  v15[6] = v13;

  sub_216ED06BC(0, 0, v12, a6, v15);

  return v13;
}

uint64_t OUTLINED_FUNCTION_77_3(unint64_t *a1)
{

  return sub_2167E68E4(a1, v1);
}

double OUTLINED_FUNCTION_31_8()
{
  *(v0 - 96) = 0;
  result = 0.0;
  *(v0 - 128) = 0u;
  *(v0 - 112) = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_77_7(uint64_t a1)
{

  return sub_2168AEDA8(v1, a1, type metadata accessor for RecentSearchLockup);
}

uint64_t *OUTLINED_FUNCTION_77_9(uint64_t a1)
{

  return sub_216F76E04(a1, v3 - 120, v1, v2);
}

uint64_t OUTLINED_FUNCTION_77_10()
{

  return sub_21700F5C4();
}

uint64_t OUTLINED_FUNCTION_77_13()
{
  v4 = *(v2 - 88) + v1;
  v5 = *(v2 - 96);

  return sub_216683A80(v4, v5, v0);
}

uint64_t OUTLINED_FUNCTION_77_14()
{

  return sub_216FCEA94();
}

void sub_2166B22FC()
{
  type metadata accessor for InternalBootstrap();
  if (v0 <= 0x3F)
  {
    sub_216C1BE18(319, &qword_280E2A4B0, type metadata accessor for FacetBarState, MEMORY[0x277CE1438]);
    if (v1 <= 0x3F)
    {
      sub_2166B2754();
      if (v2 <= 0x3F)
      {
        sub_216C1BDB8(319, &qword_280E2B4E8, MEMORY[0x277CDD6A0]);
        if (v3 <= 0x3F)
        {
          sub_216C1BD40(319, &qword_280E2A590, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
          if (v4 <= 0x3F)
          {
            sub_2166B39CC();
            if (v5 <= 0x3F)
            {
              sub_2166B3A60();
              if (v6 <= 0x3F)
              {
                sub_216C1BE18(319, &qword_280E2A5D8, type metadata accessor for SearchScopeBar.Manager, MEMORY[0x277CE10B8]);
                if (v7 <= 0x3F)
                {
                  sub_216C1BE7C(319, &qword_280E2B440, &qword_27CAB8600, &unk_217020AD0, MEMORY[0x277CDF468]);
                  if (v8 <= 0x3F)
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

uint64_t sub_2166B2500(uint64_t a1)
{
  v2 = type metadata accessor for SourceBundleLoader();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2166B255C()
{
  OUTLINED_FUNCTION_31();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_20_0(v0);
  *v1 = v2;
  v1[1] = sub_2166AB4A0;
  v3 = OUTLINED_FUNCTION_19_10();

  return v4(v3);
}

uint64_t sub_2166B2620(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_95_3();
  OUTLINED_FUNCTION_82_0();
  OUTLINED_FUNCTION_2_181();
  v10 = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_20_0(v10);
  *v11 = v12;
  OUTLINED_FUNCTION_1_215(v11);
  OUTLINED_FUNCTION_91_0();

  return v19(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10);
}

uint64_t sub_2166B26B0()
{
  result = sub_217006714();
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

void sub_2166B2754()
{
  if (!qword_280E2B3F8)
  {
    type metadata accessor for SearchPagePresenter();
    sub_2166B2EC4(&qword_280E3D248, type metadata accessor for SearchPagePresenter);
    v0 = sub_2170081D4();
    if (!v1)
    {
      atomic_store(v0, &qword_280E2B3F8);
    }
  }
}

uint64_t sub_2166B27E8(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_2166E8800;

  return v6(a1);
}

uint64_t OUTLINED_FUNCTION_96_2@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X2>, uint64_t a3@<X8>)
{
  v5 = a1 + a3;

  return sub_2166A6F60(v5, v3 - 208, a2);
}

uint64_t OUTLINED_FUNCTION_96_3()
{

  return sub_2168CBAB0(v0, type metadata accessor for PlaylistTrackLockup);
}

uint64_t *OUTLINED_FUNCTION_96_4(uint64_t a1)
{
  *(v1 + 64) = a1;

  return __swift_allocate_boxed_opaque_existential_1((v1 + 32));
}

uint64_t OUTLINED_FUNCTION_96_9@<X0>(int a1@<W8>)
{
  v1 = a1 - 1;
  if (v1 < 0)
  {
    v1 = -1;
  }

  return (v1 + 1);
}

uint64_t type metadata accessor for SearchPagePresenter()
{
  result = qword_280E3D238;
  if (!qword_280E3D238)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2166B2A10()
{
  sub_2166B2E20(319, &qword_280E483C8);
  if (v0 <= 0x3F)
  {
    sub_2166B2E20(319, &qword_280E48468);
    if (v1 <= 0x3F)
    {
      sub_2166B2E20(319, &qword_280E48458);
      if (v2 <= 0x3F)
      {
        sub_2166B2E6C();
        if (v3 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

uint64_t OUTLINED_FUNCTION_93_7()
{

  return sub_2168CBAB0(v0, type metadata accessor for HorizontalLockup);
}

void OUTLINED_FUNCTION_93_8()
{

  JUMPOUT(0x21CEA0160);
}

uint64_t OUTLINED_FUNCTION_93_9()
{

  return swift_storeEnumTagMultiPayload();
}

uint64_t OUTLINED_FUNCTION_93_10()
{
}

uint64_t sub_2166B2CC0(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a6;
  v8 = sub_21700CAC4();
  v6[3] = v8;
  v6[4] = *(v8 - 8);
  v9 = swift_task_alloc();
  v6[5] = v9;
  v12 = (a4 + *a4);
  v10 = swift_task_alloc();
  v6[6] = v10;
  *v10 = v6;
  v10[1] = sub_2166E8680;

  return v12(v9);
}

void sub_2166B2E20(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_217007E14();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_2166B2E6C()
{
  if (!qword_280E2A850)
  {
    sub_2170098A4();
    v0 = sub_21700F164();
    if (!v1)
    {
      atomic_store(v0, &qword_280E2A850);
    }
  }
}

uint64_t sub_2166B2EC4(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    OUTLINED_FUNCTION_42_0();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2166B2F08()
{
  OUTLINED_FUNCTION_33();
  v0[12] = v1;
  v0[13] = v2;
  v3 = sub_21700CB94();
  v0[14] = v3;
  OUTLINED_FUNCTION_2(v3);
  v0[15] = v4;
  v0[16] = OUTLINED_FUNCTION_80();
  v5 = sub_21700CA94();
  v0[17] = v5;
  OUTLINED_FUNCTION_2(v5);
  v0[18] = v6;
  v0[19] = OUTLINED_FUNCTION_80();
  v7 = sub_21700CBB4();
  v0[20] = v7;
  OUTLINED_FUNCTION_2(v7);
  v0[21] = v8;
  v0[22] = OUTLINED_FUNCTION_80();
  v9 = sub_217007C24();
  v0[23] = v9;
  OUTLINED_FUNCTION_2(v9);
  v0[24] = v10;
  v0[25] = OUTLINED_FUNCTION_80();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB94C8);
  OUTLINED_FUNCTION_36(v11);
  v0[26] = OUTLINED_FUNCTION_80();
  v12 = sub_21700E064();
  v0[27] = v12;
  OUTLINED_FUNCTION_2(v12);
  v0[28] = v13;
  v0[29] = OUTLINED_FUNCTION_80();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820);
  OUTLINED_FUNCTION_36(v14);
  v0[30] = OUTLINED_FUNCTION_80();
  v15 = sub_217005EF4();
  v0[31] = v15;
  OUTLINED_FUNCTION_2(v15);
  v0[32] = v16;
  v0[33] = swift_task_alloc();
  v0[34] = swift_task_alloc();
  OUTLINED_FUNCTION_58();

  return MEMORY[0x2822009F8](v17, v18, v19);
}

uint64_t sub_2166B3198()
{
  v54 = v0;
  v2 = v0[30];
  v1 = v0[31];
  v4 = v0[28];
  v3 = v0[29];
  v5 = v0[27];
  sub_21700E054();
  v6 = sub_21700E044();
  v8 = v7;
  (*(v4 + 8))(v3, v5);
  sub_216A7486C(v6, v8, v2);

  if (__swift_getEnumTagSinglePayload(v2, 1, v1) == 1)
  {
    sub_21669987C(v0[30], &qword_27CABA820);
LABEL_12:
    v26 = swift_task_alloc();
    v0[40] = v26;
    *v26 = v0;
    v26[1] = sub_2166E8470;
    OUTLINED_FUNCTION_120();

    return sub_2166B386C(v27);
  }

  (*(v0[32] + 32))(v0[34], v0[30], v0[31]);
  if ((sub_217005DA4() & 1) == 0)
  {
    goto LABEL_11;
  }

  if (qword_280E2B920 != -1)
  {
    swift_once();
  }

  if (byte_280E73A84 != 1)
  {
LABEL_11:
    (*(v0[32] + 8))(v0[34], v0[31]);
    goto LABEL_12;
  }

  if (qword_27CAB5C78 != -1)
  {
    swift_once();
  }

  v9 = v0[33];
  v10 = v0[34];
  v11 = v0[31];
  v12 = v0[32];
  v13 = sub_217007CA4();
  __swift_project_value_buffer(v13, qword_27CAC0FC0);
  (*(v12 + 16))(v9, v10, v11);
  v14 = sub_217007C84();
  v15 = sub_21700EDA4();
  v16 = os_log_type_enabled(v14, v15);
  v18 = v0[32];
  v17 = v0[33];
  v19 = v0[31];
  if (v16)
  {
    v20 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    v53 = v52;
    *v20 = 136315138;
    sub_216A75710(&qword_27CAB82A0, MEMORY[0x277CC9260]);
    v21 = sub_21700F784();
    v23 = v22;
    v24 = *(v18 + 8);
    v24(v17, v19);
    v25 = sub_2166A85FC(v21, v23, &v53);

    *(v20 + 4) = v25;
    _os_log_impl(&dword_216679000, v14, v15, "Using local jetpack at %s", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v52);
    MEMORY[0x21CEA1440](v52, -1, -1);
    MEMORY[0x21CEA1440](v20, -1, -1);
  }

  else
  {

    v24 = *(v18 + 8);
    v24(v17, v19);
  }

  v0[35] = v24;
  if (qword_280E485B8 != -1)
  {
    OUTLINED_FUNCTION_122();
  }

  v31 = v0[25];
  v30 = v0[26];
  v32 = v0[23];
  v33 = v0[24];
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB94D0);
  v35 = __swift_project_value_buffer(v34, qword_280E73E20);
  (*(v33 + 16))(v31, v35, v32);
  sub_21669E79C(v31, "FetchLocalJetpack", 17, 2, v30);
  v36 = sub_217005F34();
  v0[36] = v36;
  v0[37] = v37;
  sub_21677A404(v36, v37);
  sub_21700CBA4();
  if (qword_280E3E770 != -1)
  {
    OUTLINED_FUNCTION_3_87();
  }

  v39 = v0[21];
  v38 = v0[22];
  v40 = v0[20];
  v42 = v0[15];
  v41 = v0[16];
  v43 = v0[14];
  v44 = __swift_project_value_buffer(v43, qword_280E73CF0);
  (*(v42 + 16))(v41, v44, v43);
  v45 = sub_21700CBD4();
  v46 = MEMORY[0x277D21A60];
  v0[5] = v45;
  v0[6] = v46;
  __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  sub_21700CBC4();
  sub_21700CA74();
  v47 = MEMORY[0x277D21A50];
  v0[10] = v40;
  v0[11] = v47;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 7);
  (*(v39 + 16))(boxed_opaque_existential_1, v38, v40);
  v49 = swift_task_alloc();
  v0[38] = v49;
  *v49 = v0;
  OUTLINED_FUNCTION_8_53(v49);
  OUTLINED_FUNCTION_120();

  return MEMORY[0x28217E6F8](v50);
}

void sub_2166B37C8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_2166B3818(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x277D839B0]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_2166B386C(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0FE8);
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v4 = sub_217007C24();
  v2[7] = v4;
  v2[8] = *(v4 - 8);
  v2[9] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB94C8);
  v2[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2166B3AF4, 0, 0);
}

void sub_2166B39CC()
{
  if (!qword_280E2B3B8)
  {
    sub_217006A14();
    sub_2166B2EC4(&unk_280E4A430, MEMORY[0x277D2A6E8]);
    v0 = sub_2170081D4();
    if (!v1)
    {
      atomic_store(v0, &qword_280E2B3B8);
    }
  }
}

void sub_2166B3A60()
{
  if (!qword_280E2B418)
  {
    type metadata accessor for MusicPageMetricsProvider();
    sub_2166B2EC4(qword_280E46A08, type metadata accessor for MusicPageMetricsProvider);
    v0 = sub_2170081D4();
    if (!v1)
    {
      atomic_store(v0, &qword_280E2B418);
    }
  }
}

uint64_t sub_2166B3AF4()
{
  if (qword_280E485B8 != -1)
  {
    OUTLINED_FUNCTION_122();
  }

  v1 = v0[9];
  v2 = v0[10];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB94D0);
  __swift_project_value_buffer(v3, qword_280E73E20);
  v4 = OUTLINED_FUNCTION_13_38();
  v5(v4);
  sub_21669E79C(v1, "FetchRemoteJetpack", 18, 2, v2);
  type metadata accessor for SourceBundleLoader();
  v6 = swift_task_alloc();
  v0[11] = v6;
  v7 = sub_21700CAC4();
  *v6 = v0;
  v6[1] = sub_2166E8298;
  v8 = v0[6];
  v9 = MEMORY[0x277D21998];

  return MEMORY[0x28217E758](v8, &unk_21703C650, 0, v7, v9);
}

uint64_t type metadata accessor for MusicPageMetricsProvider()
{
  result = qword_280E469F8;
  if (!qword_280E469F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

char *sub_2166B3C9C@<X0>(char **a1@<X8>)
{
  v2 = sub_21700DFD4();
  MEMORY[0x28223BE20](v2);
  v4 = v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21700D4D4();
  sub_21700E094();
  type metadata accessor for SubscriptionStatusCoordinator();
  sub_21700E094();
  v5 = v8[1];
  v6 = objc_allocWithZone(_s18HighlightsProviderCMa());
  result = sub_2166B3E24(v4, v5);
  *a1 = result;
  return result;
}

void sub_2166B3D94()
{
  sub_2166B41F4();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

char *sub_2166B3E24(char *a1, uint64_t a2)
{
  v33 = a2;
  ObjectType = swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC2C98);
  OUTLINED_FUNCTION_1();
  v35 = v4;
  v36 = v5;
  MEMORY[0x28223BE20](v4);
  v7 = &v33 - v6;
  v8 = sub_21700DFD4();
  OUTLINED_FUNCTION_1();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC5640);
  OUTLINED_FUNCTION_1();
  v16 = v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v33 - v18;
  v20 = OBJC_IVAR____TtCO7MusicUI13SharedWithYou18HighlightsProvider__onHighlightsChanged;
  v39 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC5618);
  sub_217007DA4();
  v21 = v19;
  v22 = v33;
  (*(v16 + 32))(&v2[v20], v21, v14);
  *&v2[OBJC_IVAR____TtCO7MusicUI13SharedWithYou18HighlightsProvider____lazy_storage___highlightCenter] = 0;
  v2[OBJC_IVAR____TtCO7MusicUI13SharedWithYou18HighlightsProvider_hasStarted] = 0;
  v23 = OBJC_IVAR____TtCO7MusicUI13SharedWithYou18HighlightsProvider_lock;
  type metadata accessor for UnfairLock();
  v24 = swift_allocObject();
  v25 = swift_slowAlloc();
  *(v24 + 16) = v25;
  *&v2[v23] = v24;
  *&v2[OBJC_IVAR____TtCO7MusicUI13SharedWithYou18HighlightsProvider__highlights] = 0;
  *&v2[OBJC_IVAR____TtCO7MusicUI13SharedWithYou18HighlightsProvider__highlightByID] = 0;
  *v25 = 0;
  v26 = *(v10 + 16);
  v37 = a1;
  v26(&v2[OBJC_IVAR____TtCO7MusicUI13SharedWithYou18HighlightsProvider_bag], a1, v8);
  *&v2[OBJC_IVAR____TtCO7MusicUI13SharedWithYou18HighlightsProvider_subscriptionStatusCoordinator] = v22;
  v38.receiver = v2;
  v38.super_class = ObjectType;

  v27 = objc_msgSendSuper2(&v38, sel_init);
  v26(v13, &v27[OBJC_IVAR____TtCO7MusicUI13SharedWithYou18HighlightsProvider_bag], v8);
  v28 = v27;
  v29 = sub_21700E4D4();
  sub_21700DF64();

  v30 = *(v10 + 8);
  v30(v13, v8);
  v31 = v35;
  sub_21700DFA4();
  (*(v36 + 8))(v7, v31);
  if (v39 == 1)
  {
    sub_216BE5DB0();

    v30(v37, v8);
  }

  else
  {
    v30(v37, v8);
  }

  return v28;
}

void sub_2166B41F4()
{
  if (!qword_280E2A228)
  {
    sub_21700D194();
    v0 = sub_21700F164();
    if (!v1)
    {
      atomic_store(v0, &qword_280E2A228);
    }
  }
}

uint64_t sub_2166B424C@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  v4 = sub_21700DFD4();
  MEMORY[0x28223BE20](v4);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21700D4D4();
  sub_21700E094();
  v7 = *(a1 + 72);
  v8 = *(a1 + 80);
  type metadata accessor for SwiftMusicRequestPerformer();
  swift_allocObject();
  *a2 = sub_216C481B4(v6, v7, v8);
  v9 = v7;
}

uint64_t sub_2166B4374()
{
  result = sub_217006714();
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

uint64_t sub_2166B443C@<X0>(void (*a1)(void)@<X1>, void (*a2)(void)@<X2>, uint64_t (*a3)()@<X3>, uint64_t *a4@<X8>)
{
  a1(0);
  sub_21700D4D4();
  sub_21700E094();
  a2(0);
  swift_allocObject();
  result = a3();
  *a4 = result;
  return result;
}

void sub_2166B44E8(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3);
    v4 = sub_2170080E4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_2166B453C(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t type metadata accessor for FlowActionPageView()
{
  result = qword_280E3F008;
  if (!qword_280E3F008)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2166B4640(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9DB8);
  OUTLINED_FUNCTION_1();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  v9 = &v23 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9DB0);
  OUTLINED_FUNCTION_1();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v23 - v14;
  v16 = OBJC_IVAR____TtC7MusicUI24ExplicitBadgingPresenter__verificationState;
  v24 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9DA8);
  sub_217007DA4();
  (*(v12 + 32))(v2 + v16, v15, v10);
  *(v2 + OBJC_IVAR____TtC7MusicUI24ExplicitBadgingPresenter_ageVerificationManager) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9DC0);
  sub_2166B4A40();

  sub_21700D1D4();
  sub_21700D1E4();
  __swift_destroy_boxed_opaque_existential_1Tm(&v24);
  (*(v6 + 8))(v9, v4);
  v17 = *(a1 + 24);
  v18 = *(v17 + 16);

  os_unfair_lock_lock(v18);
  v19 = *(a1 + 32);
  v20 = *(v17 + 16);
  v21 = v19;
  os_unfair_lock_unlock(v20);

  swift_getKeyPath();
  swift_getKeyPath();
  v24 = v19;

  sub_217007DF4();

  return v2;
}

void sub_2166B4910()
{
  type metadata accessor for FlowAction(319);
  if (v0 <= 0x3F)
  {
    type metadata accessor for BootstrapState();
    if (v1 <= 0x3F)
    {
      sub_2166B49AC();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_2166B49AC()
{
  if (!qword_280E2ACD0)
  {
    type metadata accessor for MusicStackAuthority();
    sub_2166B4AF8(&qword_280E46D08, type metadata accessor for MusicStackAuthority);
    v0 = sub_217008D04();
    if (!v1)
    {
      atomic_store(v0, &qword_280E2ACD0);
    }
  }
}

unint64_t sub_2166B4A40()
{
  result = qword_280E2A2D0;
  if (!qword_280E2A2D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB9DC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2A2D0);
  }

  return result;
}

uint64_t sub_2166B4AF8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2166B4B40(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2166B4B88(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2166B4BD0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2166B4C18(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2166B4C60(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2166B4CA8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2166B4CF0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2166B4D38(uint64_t a1)
{
  result = OUTLINED_FUNCTION_8_10(a1);
  if (!result)
  {
    v3(255);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t sub_2166B4D7C(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_2166B4DC4(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAC0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v26 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8EF8);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v26 - v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8F00);
  swift_allocObject();
  *(v1 + 16) = sub_21700CC44();
  *(v1 + 32) = [objc_opt_self() defaultCenter];
  result = [objc_opt_self() sharedCloudController];
  if (result)
  {
    v11 = result;
    *(v2 + 40) = result;
    v12 = OBJC_IVAR____TtC7MusicUI28CloudLibraryStatusController_onApplicationDidBecomeActiveEventSubscription;
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8EF0);
    __swift_storeEnumTagSinglePayload(v2 + v12, 1, 1, v13);
    __swift_storeEnumTagSinglePayload(v2 + OBJC_IVAR____TtC7MusicUI28CloudLibraryStatusController_onApplicationWillResignActiveEventSubscription, 1, 1, v13);
    *(v2 + OBJC_IVAR____TtC7MusicUI28CloudLibraryStatusController_appLifeCycleObserver) = a1;
    v14 = v11;

    LOBYTE(v12) = sub_2166B5258();

    *(v2 + 24) = (v12 & 1) == 0;
    *(v2 + 25) = [*(v2 + 40) isCloudLibraryEnabled];
    [*(v2 + 32) addObserver:v2 selector:sel_cloudLibraryIsLoadedDidChange_ name:*MEMORY[0x277CD5678] object:0];
    [*(v2 + 32) addObserver:v2 selector:sel_cloudLibraryEnabledDidChange_ name:*MEMORY[0x277CD5670] object:0];
    sub_2166B5334(v2, v15, v16, v17, v18, v19, v20, v21, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, vars0, vars8);
    OUTLINED_FUNCTION_1_130();
    v22 = OBJC_IVAR____TtC7MusicUI28CloudLibraryStatusController_onApplicationDidBecomeActiveEventSubscription;
    OUTLINED_FUNCTION_0_151();
    sub_2166B5938(v9, v2 + v22);
    swift_endAccess();
    sub_2166B5A34();
    OUTLINED_FUNCTION_1_130();
    v23 = OBJC_IVAR____TtC7MusicUI28CloudLibraryStatusController_onApplicationWillResignActiveEventSubscription;
    OUTLINED_FUNCTION_0_151();
    sub_2166B5938(v9, v2 + v23);
    swift_endAccess();
    v24 = sub_21700EA74();
    __swift_storeEnumTagSinglePayload(v6, 1, 1, v24);
    v25 = swift_allocObject();
    v25[2] = 0;
    v25[3] = 0;
    v25[4] = a1;
    v25[5] = v2;

    sub_21677BBA0();

    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2166B5100()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_2166B5148(unint64_t *a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    v7 = OUTLINED_FUNCTION_100(0, a2);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v7);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2166B51C0(uint64_t a1)
{
  result = OUTLINED_FUNCTION_8_10(a1);
  if (!result)
  {
    v5 = v4;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v3);
    v5();
    OUTLINED_FUNCTION_6_1();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t sub_2166B5258()
{
  if ([v0 isUpdateInProgress])
  {
    return 1;
  }

  else
  {
    return [v0 isInitialImport];
  }
}

unint64_t sub_2166B5298()
{
  result = qword_280E35B48[0];
  if (!qword_280E35B48[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280E35B48);
  }

  return result;
}

uint64_t sub_2166B52EC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2166B5370()
{
  swift_weakDestroy();
  OUTLINED_FUNCTION_143();

  return swift_deallocObject();
}

uint64_t sub_2166B53A4()
{

  OUTLINED_FUNCTION_65_0();

  return swift_deallocObject();
}

unint64_t sub_2166B53E0()
{
  result = qword_280E2ABA8;
  if (!qword_280E2ABA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB6A70);
    sub_2166B52EC(qword_280E3F018, type metadata accessor for FlowActionPageView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2ABA8);
  }

  return result;
}

void sub_2166B5494(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_1172();
  a23 = v24;
  a24 = v25;
  v27 = v26;
  OUTLINED_FUNCTION_143();
  v28 = swift_allocObject();
  swift_weakInit();
  OUTLINED_FUNCTION_65_0();
  v29 = swift_allocObject();
  *(v29 + 16) = v27;
  *(v29 + 24) = v28;
  v30 = OUTLINED_FUNCTION_39_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(v30);
  sub_2166D9530(&qword_280E2A2C8, &qword_27CAB8F00);
  OUTLINED_FUNCTION_25_7();
  sub_21700D1D4();
  sub_21700D1F4();

  __swift_destroy_boxed_opaque_existential_1Tm(&a10);
  OUTLINED_FUNCTION_1171();
}

double OUTLINED_FUNCTION_52_4@<D0>(char a1@<W8>)
{
  *v1 = a1;
  result = 0.0;
  *(v1 + 8) = 0u;
  *(v1 + 24) = 0u;
  *(v1 + 40) = 0u;
  *(v1 + 56) = 0u;
  *(v1 + 72) = 0u;
  return result;
}

__n128 OUTLINED_FUNCTION_52_5(uint64_t a1)
{
  result = *(v1 + 1360);
  v4 = *(v1 + 1376);
  *(a1 + 16) = result;
  *(a1 + 32) = v4;
  *(a1 + 48) = *(v1 + 1392);
  *(v1 + 1272) = v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_52_8(uint64_t a1)
{
  v4 = *(v1 - 304);

  return __swift_storeEnumTagSinglePayload(v4, 1, 1, a1);
}

uint64_t OUTLINED_FUNCTION_52_11()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_52_12()
{

  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_52_18()
{

  return sub_216F2EB2C();
}

uint64_t OUTLINED_FUNCTION_52_19()
{

  return sub_216683A80(v1 + v3, v2, v0);
}

uint64_t OUTLINED_FUNCTION_52_20()
{

  return sub_216FD9C9C(v1, v0);
}

uint64_t OUTLINED_FUNCTION_398()
{

  return sub_216D04E68();
}

unint64_t sub_2166B57F0()
{
  result = qword_280E2A938;
  if (!qword_280E2A938)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB6AA0);
    sub_2166B59A8();
    sub_2166B52EC(qword_280E3F018, type metadata accessor for FlowActionPageView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2A938);
  }

  return result;
}

unint64_t sub_2166B58AC()
{
  result = qword_280E2A910;
  if (!qword_280E2A910)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB6A80);
    sub_2166B57F0();
    sub_2166B53E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2A910);
  }

  return result;
}

uint64_t sub_2166B5938(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8EF8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_2166B59A8()
{
  result = qword_280E2A9E8;
  if (!qword_280E2A9E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB6AA8);
    sub_2166B53E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2A9E8);
  }

  return result;
}

uint64_t sub_2166B5A34()
{
  v0 = swift_allocObject();
  swift_weakInit();
  v1 = swift_allocObject();
  *(v1 + 16) = sub_2166EFB0C;
  *(v1 + 24) = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8F00);
  sub_2166B5BA8();
  sub_21700D1D4();
  sub_21700D1F4();

  return __swift_destroy_boxed_opaque_existential_1Tm(v3);
}

uint64_t sub_2166B5B38()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_2166B5B70()
{

  return swift_deallocObject();
}

unint64_t sub_2166B5BA8()
{
  result = qword_280E2A2C8;
  if (!qword_280E2A2C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB8F00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2A2C8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_44_4()
{

  return sub_216782700(v0, type metadata accessor for ContentDescriptor);
}

uint64_t OUTLINED_FUNCTION_44_5()
{

  return sub_2166997CC(v1, v0);
}

uint64_t OUTLINED_FUNCTION_44_7@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(v3 - 120) = v2;
  *(v3 - 112) = a2;
  *(v3 - 136) = a1;

  return type metadata accessor for MusicUIPPT.Test();
}

uint64_t OUTLINED_FUNCTION_44_10()
{

  return sub_21700E734();
}

uint64_t OUTLINED_FUNCTION_44_13(uint64_t a1)
{

  return sub_2168AEDA8(v1, a1, v2);
}

_OWORD *OUTLINED_FUNCTION_44_15()
{

  return sub_2166EF9C4((v0 - 248), (v0 - 280));
}

uint64_t OUTLINED_FUNCTION_44_16()
{

  return swift_storeEnumTagMultiPayload();
}

uint64_t OUTLINED_FUNCTION_44_17()
{

  return sub_21678C1C4();
}

uint64_t OUTLINED_FUNCTION_44_18()
{
  *(v0 + 144) = *(*(v0 + 32) + 40);
}

_OWORD *OUTLINED_FUNCTION_44_19()
{

  return sub_2166EF9D4();
}

uint64_t *OUTLINED_FUNCTION_44_20@<X0>(void *a1@<X8>)
{
  *(v1 + 80) = *a1;

  return __swift_allocate_boxed_opaque_existential_1((v1 + 56));
}

uint64_t OUTLINED_FUNCTION_44_22()
{

  return __swift_storeEnumTagSinglePayload(v1, 1, 1, v0);
}

uint64_t OUTLINED_FUNCTION_44_23()
{

  return sub_217007BC4();
}

uint64_t OUTLINED_FUNCTION_44_24()
{
  result = *(v1 - 200);
  *(v1 - 296) = v0;
  return result;
}

uint64_t OUTLINED_FUNCTION_44_30()
{

  return __swift_storeEnumTagSinglePayload(v1, 0, 1, v0);
}

uint64_t OUTLINED_FUNCTION_44_34()
{

  return sub_216683A80(v0 + v1, v2, v3);
}

uint64_t OUTLINED_FUNCTION_44_35()
{

  return sub_217007884();
}

uint64_t OUTLINED_FUNCTION_50_11()
{

  return sub_2167B7D58(v0 - 168, v0 - 208);
}

void OUTLINED_FUNCTION_50_12()
{

  JUMPOUT(0x21CE9F490);
}

uint64_t OUTLINED_FUNCTION_50_14()
{

  return swift_storeEnumTagMultiPayload();
}

_OWORD *OUTLINED_FUNCTION_50_17()
{

  return sub_2166EF9D4();
}

uint64_t OUTLINED_FUNCTION_50_18(uint64_t a1)
{
  *(a1 + 16) = v2;

  return sub_216B914F8(v4, a1 + v3, v1);
}

uint64_t OUTLINED_FUNCTION_50_20()
{

  return swift_getEnumCaseMultiPayload();
}

uint64_t OUTLINED_FUNCTION_50_21()
{
}

uint64_t OUTLINED_FUNCTION_50_22()
{

  return sub_21700AB94();
}

void OUTLINED_FUNCTION_50_23()
{
}

uint64_t OUTLINED_FUNCTION_50_24()
{

  return sub_21700E424();
}

void OUTLINED_FUNCTION_50_26(uint64_t a1@<X8>)
{
  v2 = v1 + a1;
  *v2 = 0;
  *(v2 + 8) = 256;
}

uint64_t sub_2166B6248(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_2166DFAC0;

  return sub_2166B6308(a1, v4, v5, v7, v6);
}

uint64_t sub_2166B6328(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 88);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](a1);
  v6 = &v10 - v5;
  v7 = v1[5];

  sub_2166B6484(v8);

  (*(v4 + 16))(v6, v7 + *(*v7 + 200), v3);
  sub_2166B7AE4(v6, v3, *(v2 + 104));
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_2166B6484(uint64_t a1)
{
  v2 = swift_allocObject();
  swift_weakInit();
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v3 + 24) = a1;

  sub_2166B664C(sub_216B803C4, v3);
}

uint64_t sub_2166B6524()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_2166B655C()
{

  return swift_deallocObject();
}

uint64_t sub_2166B659C()
{
  sub_21700EA34();
  *(v0 + 24) = sub_21700EA24();
  v2 = sub_21700E9B4();

  return MEMORY[0x2822009F8](sub_2166E7360, v2, v1);
}

uint64_t sub_2166B664C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_21700D404();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for FlowAction(0);
  sub_21700D414();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC4158);
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  v11 = OBJC_IVAR____TtC7MusicUI19MusicStackAuthority_bindings;
  swift_beginAccess();

  swift_isUniquelyReferenced_nonNull_native();
  v13 = *(v3 + v11);
  sub_2166B71A0();
  *(v3 + v11) = v13;
  swift_endAccess();
  return (*(v7 + 8))(v9, v6);
}

void *sub_2166B67B4@<X0>(uint64_t a1@<X1>, void *a2@<X8>)
{
  v4 = sub_21700DFD4();
  MEMORY[0x28223BE20](v4);
  v6 = v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 80);
  type metadata accessor for SwiftMusicRequestPerformer();
  sub_21700D4D4();

  sub_21700E094();
  v8 = v10[1];
  sub_21700E094();
  type metadata accessor for JSIntentDispatcher();
  swift_allocObject();
  result = sub_2166B6978(v7, v8, v6);
  *a2 = result;
  return result;
}

uint64_t sub_2166B68D8(uint64_t a1)
{
  result = sub_216692380(&qword_280E45BA8, type metadata accessor for FlowAction);
  *(a1 + 8) = result;
  return result;
}

void *sub_2166B6978(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBB18);
  v3[5] = sub_21700E244();
  v3[2] = a1;
  v3[3] = a2;
  v8 = sub_2166B6A28();
  v9 = sub_21700DFD4();
  (*(*(v9 - 8) + 8))(a3, v9);
  *(v4 + 32) = v8 & 1;
  return v4;
}

uint64_t sub_2166B6A28()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC2C98);
  OUTLINED_FUNCTION_1();
  v2 = v1;
  MEMORY[0x28223BE20](v3);
  v5 = &v8[-v4];
  v6 = sub_21700E4D4();
  sub_21700DF64();

  sub_21700DFA4();
  (*(v2 + 8))(v5, v0);
  return v8[15];
}

void sub_2166B6BA0(void *a1@<X8>)
{
  v2 = objc_allocWithZone(type metadata accessor for UserSocialProfileCoordinator());

  sub_2166B6BFC();
  *a1 = v3;
}

void sub_2166B6BFC()
{
  OUTLINED_FUNCTION_49();
  v2 = v0;
  v4 = v3;
  v6 = v5;
  ObjectType = swift_getObjectType();
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC5620);
  OUTLINED_FUNCTION_1();
  v9 = v8;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_67_0();
  v11 = OBJC_IVAR____TtC7MusicUI28UserSocialProfileCoordinator_socialOnboardingUserAttributes;
  v12 = MEMORY[0x277D84F90];
  *&v2[v11] = sub_21700E384();
  *&v2[OBJC_IVAR____TtC7MusicUI28UserSocialProfileCoordinator_pendingUserSelectedPhotoData] = xmmword_217029BA0;
  *&v2[OBJC_IVAR____TtC7MusicUI28UserSocialProfileCoordinator_socialOnboardingFriendIDsToRequest] = MEMORY[0x277D84FA0];
  *&v2[OBJC_IVAR____TtC7MusicUI28UserSocialProfileCoordinator_socialProfileSharedPlaylistIDs] = v12;
  *&v2[OBJC_IVAR____TtC7MusicUI28UserSocialProfileCoordinator_userNotificationSettings] = 0;
  v13 = &v2[OBJC_IVAR____TtC7MusicUI28UserSocialProfileCoordinator_publicSocialProfileID];
  *v13 = 0;
  v13[1] = 0;
  *&v2[OBJC_IVAR____TtC7MusicUI28UserSocialProfileCoordinator_pendingStatePromises] = v12;
  v2[OBJC_IVAR____TtC7MusicUI28UserSocialProfileCoordinator_state] = 0;
  v14 = OBJC_IVAR____TtC7MusicUI28UserSocialProfileCoordinator_onUserProfileDidChange;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA4C0);
  OUTLINED_FUNCTION_91_1();
  *&v2[v14] = sub_21700CC44();
  v15 = OBJC_IVAR____TtC7MusicUI28UserSocialProfileCoordinator_onUserProfileCoordinatorFetchStateChange;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CAC39C8);
  OUTLINED_FUNCTION_91_1();
  *&v2[v15] = sub_21700CC44();
  v16 = OBJC_IVAR____TtC7MusicUI28UserSocialProfileCoordinator_onUserOnboardedStatusHasChanged;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABCD68);
  OUTLINED_FUNCTION_91_1();
  *&v2[v16] = sub_21700CC44();
  v17 = OBJC_IVAR____TtC7MusicUI28UserSocialProfileCoordinator_onUserSharedPlaylistsDidChange;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB790);
  OUTLINED_FUNCTION_91_1();
  *&v2[v17] = sub_21700CC44();
  v18 = OBJC_IVAR____TtC7MusicUI28UserSocialProfileCoordinator_onUserDidHideListeningHistoryContent;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8F00);
  OUTLINED_FUNCTION_91_1();
  *&v2[v18] = sub_21700CC44();
  v19 = OBJC_IVAR____TtC7MusicUI28UserSocialProfileCoordinator_onListeningToShelfVisibilityDidChange;
  swift_allocObject();
  *&v2[v19] = sub_21700CC44();
  v20 = OBJC_IVAR____TtC7MusicUI28UserSocialProfileCoordinator_onSocialOnboardingSharedPlaylistsHidden;
  swift_allocObject();
  *&v2[v20] = sub_21700CC44();
  *&v2[OBJC_IVAR____TtC7MusicUI28UserSocialProfileCoordinator__userSocialProfile] = 0;
  type metadata accessor for UserSocialProfileDescriptor(0);
  OUTLINED_FUNCTION_38_2();
  __swift_storeEnumTagSinglePayload(v21, v22, v23, v24);
  v25 = &v2[OBJC_IVAR____TtC7MusicUI28UserSocialProfileCoordinator_cachedFallbackFullname];
  *v25 = 0;
  v25[1] = 0;
  v2[OBJC_IVAR____TtC7MusicUI28UserSocialProfileCoordinator_isUserOnboarded] = 0;
  v2[OBJC_IVAR____TtC7MusicUI28UserSocialProfileCoordinator_isCollaborationAllowed] = 0;
  type metadata accessor for Artwork();
  OUTLINED_FUNCTION_38_2();
  __swift_storeEnumTagSinglePayload(v26, v27, v28, v29);
  v2[OBJC_IVAR____TtC7MusicUI28UserSocialProfileCoordinator_isContactCheckAllowed] = 0;
  v2[OBJC_IVAR____TtC7MusicUI28UserSocialProfileCoordinator_isDiscoverableByContact] = 0;
  v30 = OBJC_IVAR____TtC7MusicUI28UserSocialProfileCoordinator_lock;
  type metadata accessor for UnfairLock();
  OUTLINED_FUNCTION_143();
  v31 = swift_allocObject();
  v32 = swift_slowAlloc();
  *(v31 + 16) = v32;
  *v32 = 0;
  *&v2[v30] = v31;
  *&v2[OBJC_IVAR____TtC7MusicUI28UserSocialProfileCoordinator_accountDidChangeObserver] = 0;
  *&v2[OBJC_IVAR____TtC7MusicUI28UserSocialProfileCoordinator_objectGraph] = v6;
  v2[OBJC_IVAR____TtC7MusicUI28UserSocialProfileCoordinator_isOfflineObjectGraph] = v4;
  v42.receiver = v2;
  v42.super_class = ObjectType;

  v33 = objc_msgSendSuper2(&v42, sel_init);
  sub_2166B8854(0);

  type metadata accessor for SubscriptionStatusCoordinator();
  sub_21700D4D4();
  OUTLINED_FUNCTION_38();
  sub_21700E094();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA4C8);
  sub_2166D9530(&qword_280E2A310, &qword_27CABA4C8);
  sub_21700D1D4();
  sub_21700D1E4();
  __swift_destroy_boxed_opaque_existential_1Tm(&v41);
  (*(v9 + 8))(v1, v40);
  v34 = *MEMORY[0x277D7F8C8];
  v35 = objc_opt_self();
  v36 = v34;
  v37 = [v35 defaultIdentityStore];
  OUTLINED_FUNCTION_143();
  v38 = swift_allocObject();
  swift_unknownObjectWeakInit();

  type metadata accessor for NotificationObserver();
  OUTLINED_FUNCTION_8_97();
  v39 = swift_allocObject();

  sub_2166B9AD0(v36, v37, 1, 1, sub_216CB5EA4, v38);
  OUTLINED_FUNCTION_10_87();

  *&v33[OBJC_IVAR____TtC7MusicUI28UserSocialProfileCoordinator_accountDidChangeObserver] = v39;

  OUTLINED_FUNCTION_26();
}

uint64_t sub_2166B716C()
{
  MEMORY[0x21CEA1520](v0 + 16);
  OUTLINED_FUNCTION_143();

  return swift_deallocObject();
}

void sub_2166B71A0()
{
  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_16_29();
  sub_21700D404();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_24_21();
  sub_2166B75C8();
  OUTLINED_FUNCTION_1_63();
  if (v2)
  {
    __break(1u);
LABEL_11:
    sub_21700F824();
    __break(1u);
    return;
  }

  OUTLINED_FUNCTION_82_8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD250);
  OUTLINED_FUNCTION_10_33();
  if (sub_21700F554())
  {
    OUTLINED_FUNCTION_58_11();
    sub_2166B75C8();
    OUTLINED_FUNCTION_43_17();
    if (!v3)
    {
      goto LABEL_11;
    }
  }

  if (v0)
  {
    OUTLINED_FUNCTION_81_5();
    OUTLINED_FUNCTION_26();
  }

  else
  {
    v5 = OUTLINED_FUNCTION_23_22();
    v6(v5);
    v7 = OUTLINED_FUNCTION_25_21();
    sub_2166B7A4C(v7, v8, v9, v10);
    OUTLINED_FUNCTION_26();
  }
}

uint64_t OUTLINED_FUNCTION_72_1()
{
  *(v2 - 376) = v0;
  *(v2 - 392) = v1;

  return __swift_instantiateConcreteTypeFromMangledNameV2(v0);
}

uint64_t OUTLINED_FUNCTION_72_13()
{

  return sub_216A4B754();
}

uint64_t OUTLINED_FUNCTION_72_14()
{
}

uint64_t OUTLINED_FUNCTION_72_15()
{
  sub_2166EF9C4((v0 - 256), (v0 - 320));

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_72_16(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(v2 + v1, 1, 1, a1);
}

uint64_t OUTLINED_FUNCTION_70_1()
{

  return sub_216F535D8();
}

uint64_t OUTLINED_FUNCTION_72_21()
{

  return swift_beginAccess();
}

uint64_t sub_2166B7504@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for JSIntentDispatcher();
  sub_21700D4D4();
  sub_21700E094();
  type metadata accessor for AppLifeCycleObserver();
  sub_21700E094();
  type metadata accessor for AppLifeCycleIntentDispatcher();
  swift_allocObject();
  result = sub_2166B7678(v4, v3);
  *a1 = result;
  return result;
}

unint64_t sub_2166B75C8()
{
  OUTLINED_FUNCTION_17_70();
  sub_21700D404();
  sub_21667E974(&qword_280E2A200, MEMORY[0x277D21D58]);
  v0 = OUTLINED_FUNCTION_37_43();
  return OUTLINED_FUNCTION_36_40(v0, v0, MEMORY[0x277D21D58], &qword_280E2A1F8, v1, MEMORY[0x277D21D68]);
}

uint64_t sub_2166B7678(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8EF8);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v21[-v7 - 8];
  v9 = OBJC_IVAR____TtC7MusicUI28AppLifeCycleIntentDispatcher_onApplicationDidBecomeActiveSubscription;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8EF0);
  OUTLINED_FUNCTION_13_1(v3 + v9);
  OUTLINED_FUNCTION_13_1(v3 + OBJC_IVAR____TtC7MusicUI28AppLifeCycleIntentDispatcher_onApplicationWillResignActiveSubscription);
  OUTLINED_FUNCTION_13_1(v3 + OBJC_IVAR____TtC7MusicUI28AppLifeCycleIntentDispatcher_onApplicationDidFinishLaunchingSubscription);
  v10 = OBJC_IVAR____TtC7MusicUI28AppLifeCycleIntentDispatcher_lock;
  type metadata accessor for UnfairLock();
  OUTLINED_FUNCTION_143();
  v11 = swift_allocObject();
  v12 = swift_slowAlloc();
  *(v11 + 16) = v12;
  *(v3 + v10) = v11;
  *(v3 + OBJC_IVAR____TtC7MusicUI28AppLifeCycleIntentDispatcher_objectGraph) = 0;
  *(v3 + OBJC_IVAR____TtC7MusicUI28AppLifeCycleIntentDispatcher_queuedIntents) = MEMORY[0x277D84F90];
  *(v3 + OBJC_IVAR____TtC7MusicUI28AppLifeCycleIntentDispatcher_intentDispatcher) = a1;
  *v12 = 0;
  *(v3 + OBJC_IVAR____TtC7MusicUI28AppLifeCycleIntentDispatcher_observer) = a2;
  OUTLINED_FUNCTION_143();
  swift_allocObject();
  OUTLINED_FUNCTION_11_4();
  OUTLINED_FUNCTION_65_0();
  v13 = swift_allocObject();
  *(v13 + 16) = sub_216A75C7C;
  *(v13 + 24) = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8F00);
  sub_2166B5BA8();

  OUTLINED_FUNCTION_4_72();
  OUTLINED_FUNCTION_0_127();
  sub_21700D1F4();

  __swift_destroy_boxed_opaque_existential_1Tm(v21);
  OUTLINED_FUNCTION_3_88();
  v14 = OBJC_IVAR____TtC7MusicUI28AppLifeCycleIntentDispatcher_onApplicationDidBecomeActiveSubscription;
  OUTLINED_FUNCTION_0_59();
  sub_2166B5938(v8, v3 + v14);
  swift_endAccess();
  OUTLINED_FUNCTION_143();
  swift_allocObject();
  OUTLINED_FUNCTION_11_4();
  OUTLINED_FUNCTION_65_0();
  v15 = swift_allocObject();
  *(v15 + 16) = sub_2166F0104;
  *(v15 + 24) = v14;
  OUTLINED_FUNCTION_4_72();
  OUTLINED_FUNCTION_0_127();
  OUTLINED_FUNCTION_16_37();

  __swift_destroy_boxed_opaque_existential_1Tm(v21);
  OUTLINED_FUNCTION_3_88();
  v16 = OBJC_IVAR____TtC7MusicUI28AppLifeCycleIntentDispatcher_onApplicationWillResignActiveSubscription;
  OUTLINED_FUNCTION_0_59();
  sub_2166B5938(v8, v3 + v16);
  swift_endAccess();
  OUTLINED_FUNCTION_143();
  swift_allocObject();
  OUTLINED_FUNCTION_11_4();

  OUTLINED_FUNCTION_65_0();
  v17 = swift_allocObject();
  *(v17 + 16) = sub_216A75CB4;
  *(v17 + 24) = v16;
  OUTLINED_FUNCTION_4_72();
  OUTLINED_FUNCTION_0_127();
  OUTLINED_FUNCTION_16_37();

  __swift_destroy_boxed_opaque_existential_1Tm(v21);

  OUTLINED_FUNCTION_3_88();
  v18 = OBJC_IVAR____TtC7MusicUI28AppLifeCycleIntentDispatcher_onApplicationDidFinishLaunchingSubscription;
  OUTLINED_FUNCTION_0_59();
  sub_2166B5938(v8, v3 + v18);
  swift_endAccess();
  return v3;
}

uint64_t sub_2166B79DC()
{
  swift_weakDestroy();
  OUTLINED_FUNCTION_143();

  return swift_deallocObject();
}

uint64_t sub_2166B7A10()
{

  OUTLINED_FUNCTION_65_0();

  return swift_deallocObject();
}

void sub_2166B7A4C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_5_40(a1, a2, a3, a4);
  v9 = *(v8 + 48);
  v10(0);
  OUTLINED_FUNCTION_34();
  (*(v11 + 32))(v9 + *(v11 + 72) * a1, a2);
  *(*(a4 + 56) + 8 * a1) = a3;
  OUTLINED_FUNCTION_52_10();
  if (v13)
  {
    __break(1u);
  }

  else
  {
    *(a4 + 16) = v12;
  }
}

uint64_t sub_2166B7AE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](a1);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for WrappedAppPageDestination();
  v8 = swift_allocObject();
  swift_weakInit();
  (*(v6 + 16))(&v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a2);
  v9 = (*(v6 + 80) + 40) & ~*(v6 + 80);
  v10 = swift_allocObject();
  *(v10 + 2) = a2;
  *(v10 + 3) = a3;
  *(v10 + 4) = v8;
  (*(v6 + 32))(&v10[v9], &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a2);
  swift_getWitnessTable();
  MusicStackAuthority.destination<A>(_:binding:)();
}

uint64_t sub_2166B7CCC()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_2166B7D88@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v27 = a2;
  v30 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA7F8);
  MEMORY[0x28223BE20](v4 - 8);
  v28 = &v24 - v5;
  v29 = sub_21700DC84();
  v6 = *(v29 - 8);
  v7 = MEMORY[0x28223BE20](v29);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v24 - v10;
  v12 = sub_21700DFD4();
  MEMORY[0x28223BE20](v12);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_21700DBB4();
  sub_21700D4D4();
  sub_21700E094();
  v25 = v15;
  v26 = MEMORY[0x21CE9E9C0](v14, 0xD000000000000011, 0x8000000217082740);
  sub_21700E094();
  v16 = [objc_opt_self() ams_sharedAccountStore];
  v38 = sub_216685F4C(0, &qword_280E29D68);
  v39 = MEMORY[0x277D225B8];
  v37[0] = v16;
  v17 = [objc_opt_self() mainBundle];
  sub_21700DC74();
  type metadata accessor for SubscriptionStatusCoordinator();
  sub_21700E094();
  v38 = &type metadata for AccountMetricsFieldsProvider;
  v39 = sub_2166B9CF8();
  if (qword_280E2A188 != -1)
  {
    swift_once();
  }

  v18 = sub_21700DEA4();
  __swift_project_value_buffer(v18, qword_280E73A50);
  sub_21700DC64();
  __swift_destroy_boxed_opaque_existential_1Tm(v37);
  v38 = &unk_28293C2E8;
  v19 = sub_2166B9F04();
  v37[0] = a1;
  v20 = *(v27 + 80);
  v39 = v19;
  v40 = v20;
  v27 = sub_2166BA038();
  v21 = v29;
  (*(v6 + 16))(v9, v11, v29);
  v35 = &unk_28293C388;
  v36 = sub_2166BE144();
  v34 = swift_allocObject();
  sub_2166BE198(v37, v34 + 16);
  v32 = v25;
  v33 = MEMORY[0x277D221A8];
  v31 = v26;

  v22 = v28;
  sub_21700E094();
  __swift_storeEnumTagSinglePayload(v22, 0, 1, v12);
  sub_21700D544();

  sub_2166BE3C4(v37);
  return (*(v6 + 8))(v11, v21);
}

uint64_t sub_2166B81D0()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);

  return swift_deallocObject();
}

uint64_t OUTLINED_FUNCTION_42_7@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  *(v5 - 256) = a4;
  *(v6 - 560) = a3;
  *(v6 - 416) = a2;
  *(v6 - 344) = a1;
  *(v6 - 352) = a5;
  *(v6 - 360) = *(v6 + 32);

  return sub_2170075A4();
}

uint64_t *OUTLINED_FUNCTION_42_10@<X0>(uint64_t a1@<X8>)
{
  v2[5] = v1;
  v2[6] = a1;

  return __swift_allocate_boxed_opaque_existential_1(v2 + 2);
}

uint64_t OUTLINED_FUNCTION_42_14()
{
  sub_216684F5C(*(v1 + *(v0 + 100)), *(v1 + *(v0 + 100) + 8));
  sub_2166B8588();

  return swift_unknownObjectRelease();
}

uint64_t OUTLINED_FUNCTION_42_16()
{
  v3 = *(v1 - 488);

  return sub_2167DE934(v0, v3);
}

uint64_t OUTLINED_FUNCTION_42_18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *(a5 + 56);
  result = *(v7 + 8 * v6);
  *(v7 + 8 * v6) = v5;
  return result;
}

uint64_t OUTLINED_FUNCTION_42_19(char a1)
{
  if (a1)
  {
    return v2;
  }

  else
  {
    return v1;
  }
}

uint64_t OUTLINED_FUNCTION_42_23(uint64_t a1)
{
  v4 = v1 + *(a1 + 20);

  return __swift_getEnumTagSinglePayload(v4, 1, v2);
}

uint64_t OUTLINED_FUNCTION_42_27@<X0>(uint64_t a1@<X8>, uint64_t a2)
{

  return sub_216B9143C(v3, &a2 - a1, v2);
}

uint64_t OUTLINED_FUNCTION_42_28()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_42_29()
{

  return type metadata accessor for SearchPageView();
}

uint64_t OUTLINED_FUNCTION_42_32()
{

  return sub_21700F8F4();
}

uint64_t OUTLINED_FUNCTION_42_33(uint64_t a1)
{

  return sub_216697664(a1, v1);
}

void OUTLINED_FUNCTION_42_34()
{
}

uint64_t OUTLINED_FUNCTION_42_38()
{

  return sub_217007AB4();
}

uint64_t sub_2166B8590()
{
  result = sub_21700C1E4();
  if (v1 <= 0x3F)
  {
    result = sub_21700C084();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_2166B8640(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  OUTLINED_FUNCTION_102();
  type metadata accessor for ContentDescriptor();
  OUTLINED_FUNCTION_17();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = v5;
  }

  else
  {
    if (a3 == 0x7FFFFFFF)
    {
      *(v5 + *(a4 + 20) + 8) = (v4 - 1);
      return;
    }

    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60);
    v11 = v5 + *(a4 + 24);
  }

  __swift_storeEnumTagSinglePayload(v11, v4, v4, v10);
}

uint64_t sub_2166B871C()
{
  result = sub_21700C924();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_2166B87B0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_21700C4B4();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = a1;
  }

  else
  {
    v9 = sub_21700C444();
    v10 = a1 + *(a4 + 20);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

uint64_t sub_2166B8854(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = v1[OBJC_IVAR____TtC7MusicUI28UserSocialProfileCoordinator_isOfflineObjectGraph];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8538);
  if (v5)
  {
    LOBYTE(v62) = 4;
    return sub_21700E1F4();
  }

  else
  {
    v59 = a1;
    v6 = sub_21700E244();
    v7 = *&v1[OBJC_IVAR____TtC7MusicUI28UserSocialProfileCoordinator_lock];
    v8 = *(v7 + 16);
    v9 = v2;
    os_unfair_lock_lock(v8);
    v60 = v9[OBJC_IVAR____TtC7MusicUI28UserSocialProfileCoordinator_state];
    os_unfair_lock_unlock(*(v7 + 16));

    type metadata accessor for SubscriptionStatusCoordinator();
    v10 = *&v9[OBJC_IVAR____TtC7MusicUI28UserSocialProfileCoordinator_objectGraph];
    sub_21700D4D4();
    v58 = v10;
    sub_21700E094();
    sub_2166C0578(&v62);
    v11 = *(&v62 + 1);

    if (v64)
    {
      OUTLINED_FUNCTION_23_46();
      sub_2166C0DB4(v63);
      OUTLINED_FUNCTION_34_33();
      v13 = v13 && v12 == a1;
      if (v13)
      {

        v14 = 1;
      }

      else
      {
        OUTLINED_FUNCTION_42();
        OUTLINED_FUNCTION_40_28();
        OUTLINED_FUNCTION_41_2();

        v14 = v10 & 1;
      }

      v15 = v11 == 0;
      sub_216697664(&v62, &qword_27CAC5980);
    }

    else
    {
      v14 = 0;
      v15 = 1;
    }

    sub_2166B90EC();
    v17 = v16;
    if (qword_280E31C10 != -1)
    {
      OUTLINED_FUNCTION_0_221();
      swift_once();
    }

    v18 = sub_217007CA4();
    __swift_project_value_buffer(v18, qword_280E73BC0);
    v19 = sub_217007C84();
    v20 = sub_21700EDA4();
    v21 = OUTLINED_FUNCTION_22_6();
    if (os_log_type_enabled(v21, v22))
    {
      v56 = v15;
      v23 = swift_slowAlloc();
      v57 = v7;
      v24 = ObjectType;
      v25 = v6;
      v26 = swift_slowAlloc();
      v61[0] = v26;
      *v23 = 67240962;
      *(v23 + 4) = v59 & 1;
      *(v23 + 8) = 1026;
      *(v23 + 10) = v14;
      *(v23 + 14) = 1026;
      *(v23 + 16) = v17 & 1;
      *(v23 + 20) = 2082;
      v27 = sub_2166C1BB8(v60);
      v14 = v28;
      v29 = sub_2166A85FC(v27, v28, v61);

      *(v23 + 22) = v29;
      _os_log_impl(&dword_216679000, v19, v20, "Fetching user social profile, shouldForceUpdate: %{BOOL,public}d, isSubscribed: %{BOOL,public}d, isSocialEnabled: %{BOOL,public}d, currentState: %{public}s", v23, 0x1Eu);
      __swift_destroy_boxed_opaque_existential_1Tm(v26);
      v6 = v25;
      ObjectType = v24;
      v7 = v57;
      OUTLINED_FUNCTION_2_8();
      MEMORY[0x21CEA1440]();
      v15 = v56;
      OUTLINED_FUNCTION_2_8();
      MEMORY[0x21CEA1440]();
    }

    if (!v15 && (v17 & 1) != 0)
    {
      OUTLINED_FUNCTION_48_24();
      sub_2166C1BB8(v60);
      OUTLINED_FUNCTION_34_33();
      if (v13 && v30 == 0xE800000000000000)
      {
      }

      else
      {
        OUTLINED_FUNCTION_42();
        sub_21700F7D4();
        OUTLINED_FUNCTION_41_2();

        if (!v15)
        {
          v32 = *(v7 + 16);
          v33 = v9;
          os_unfair_lock_lock(v32);
          v34 = *&v33[OBJC_IVAR____TtC7MusicUI28UserSocialProfileCoordinator__userSocialProfile];
          v14 = *(v7 + 16);
          v35 = v34;
          v36 = OUTLINED_FUNCTION_10_87();
          os_unfair_lock_unlock(v36);

          if (!v34 || (v32, (v59 & 1) != 0))
          {
            os_unfair_lock_assert_not_owner(*(v7 + 16));
            type metadata accessor for JSIntentDispatcher();
            sub_21700E094();
            v37 = v61[0];
            sub_216ECDC54(v58);
            v38 = v33;
            v39 = OUTLINED_FUNCTION_52_16();
            os_unfair_lock_lock(v39);
            sub_2166C1D2C(1);
            os_unfair_lock_unlock(*(v7 + 16));

            OUTLINED_FUNCTION_65_0();
            v40 = swift_allocObject();
            *(v40 + 16) = v37;
            *(v40 + 24) = v6;
            OUTLINED_FUNCTION_181();
            v41 = swift_allocObject();
            v41[2] = v37;
            v41[3] = v6;
            v41[4] = ObjectType;
            v42 = v6;
            v43 = sub_216685F4C(0, &qword_280E29CD0);
            v44 = v37;
            OUTLINED_FUNCTION_47();
            swift_retain_n();
            v45 = v37;
            v46 = sub_21700EE84();
            v61[3] = v43;
            v61[4] = MEMORY[0x277D225C0];
            v6 = v42;
            v61[0] = v46;
            sub_21700E1C4();

            __swift_destroy_boxed_opaque_existential_1Tm(v61);
            return v6;
          }
        }
      }
    }

    if (v17)
    {
      v47 = v60;
    }

    else
    {
      v47 = 4;
    }

    v48 = v9;
    v49 = OUTLINED_FUNCTION_47_18();
    os_unfair_lock_lock(v49);
    sub_2166C1D2C(v47);
    os_unfair_lock_unlock(*(v7 + 16));

    LOBYTE(v61[0]) = v47;
    sub_21700E224();
    v50 = sub_217007C84();
    sub_21700EDA4();
    v51 = OUTLINED_FUNCTION_22_6();
    if (os_log_type_enabled(v51, v52))
    {
      OUTLINED_FUNCTION_1_157();
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_2_13(&dword_216679000, v53, v54, "Skipped fetching user social profile, fetch was not needed.");
      OUTLINED_FUNCTION_2_8();
      MEMORY[0x21CEA1440]();
    }
  }

  return v6;
}

uint64_t sub_2166B8DD0()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for MusicAppDestinationContext(319);
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for MusicAppDestination(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_2166B8EB0()
{
  v0 = sub_21700C384();
  if (v1 <= 0x3F)
  {
    v0 = sub_2170072A4();
    if (v2 <= 0x3F)
    {
      v0 = type metadata accessor for MusicAppDestination.AlbumDescriptor(319);
      if (v3 <= 0x3F)
      {
        v0 = sub_21700C924();
        if (v4 <= 0x3F)
        {
          v5 = sub_21700C734();
          if (v6 > 0x3F)
          {
            return v5;
          }

          sub_2166B9390(319, qword_280E47000, type metadata accessor for MusicAppDestination.AlbumDescriptor);
          if (v7 > 0x3F)
          {
            return v5;
          }

          sub_2166B9390(319, qword_280E46F40, type metadata accessor for MusicAppDestination.PlaylistDescriptor);
          if (v8 > 0x3F)
          {
            return v5;
          }

          sub_2166B9410();
          if (v9 > 0x3F)
          {
            return v5;
          }

          sub_216692530();
          if (v10 > 0x3F)
          {
            return v5;
          }

          sub_216E260F4(319, &qword_280E29F10, type metadata accessor for PlaylistAddableItem, MEMORY[0x277D83940]);
          if (v11 > 0x3F)
          {
            return v5;
          }

          v5 = sub_21700C084();
          if (v12 > 0x3F)
          {
            return v5;
          }

          v5 = type metadata accessor for ReportableMusicItem();
          if (v13 > 0x3F)
          {
            return v5;
          }

          v5 = type metadata accessor for ShareableMusicItem(319);
          if (v14 > 0x3F)
          {
            return v5;
          }

          else
          {
            v0 = sub_217005EF4();
            if (v15 <= 0x3F)
            {
              sub_216692760();
              v0 = v16;
              if (v17 <= 0x3F)
              {
                v0 = type metadata accessor for MusicAppDestination.SharePageDescriptor(319);
                if (v18 <= 0x3F)
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

  return v0;
}

void sub_2166B90EC()
{
  OUTLINED_FUNCTION_49();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CACD130);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_67_0();
  v2 = sub_21700DFD4();
  OUTLINED_FUNCTION_1();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_7();
  v8 = v7 - v6;
  if ((*(v0 + OBJC_IVAR____TtC7MusicUI28UserSocialProfileCoordinator_isOfflineObjectGraph) & 1) == 0)
  {
    OUTLINED_FUNCTION_54_22();
    sub_21700D4D4();
    OUTLINED_FUNCTION_8();
    sub_21700E094();
    type metadata accessor for RestrictionsController();
    sub_21700E094();
    v9 = sub_21700E4D4();
    sub_21700DF44();

    sub_21700DF84();
    v10 = OUTLINED_FUNCTION_98();
    v11(v10);
    if (v12)
    {

      sub_2166C1A3C();
    }

    else
    {
    }

    (*(v4 + 8))(v8, v2);
  }

  OUTLINED_FUNCTION_26();
}

uint64_t sub_2166B92EC()
{
  v0 = sub_217007CA4();
  __swift_allocate_value_buffer(v0, qword_280E73BC0);
  __swift_project_value_buffer(v0, qword_280E73BC0);
  type metadata accessor for UserSocialProfileCoordinator();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8558);
  sub_21700E5B4();
  return sub_217007C94();
}

void sub_2166B9390(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB6AE0);
    OUTLINED_FUNCTION_82();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_2166B9410()
{
  if (!qword_280E46F38)
  {
    type metadata accessor for MusicAppDestination.PlaylistDescriptor(255);
    sub_217005EF4();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_280E46F38);
    }
  }
}

void *sub_2166B9480(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6BC0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size_1(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

uint64_t OUTLINED_FUNCTION_34_7()
{

  return sub_21700D234();
}

uint64_t OUTLINED_FUNCTION_34_8()
{
  *(v2 - 96) = v1;
  *(v2 - 88) = v0;

  return swift_getOpaqueTypeConformance2();
}

uint64_t OUTLINED_FUNCTION_34_9()
{

  return sub_216683A80(v1, v0, v2);
}

uint64_t OUTLINED_FUNCTION_34_10()
{

  return swift_storeEnumTagMultiPayload();
}

uint64_t OUTLINED_FUNCTION_34_11()
{
}

uint64_t OUTLINED_FUNCTION_34_14@<X0>(uint64_t a1@<X8>)
{
  v3 = *(a1 - 256);

  return __swift_storeEnumTagSinglePayload(v3, 1, 1, v1);
}

uint64_t OUTLINED_FUNCTION_34_19()
{
  v4 = *(v2 - 1160);

  return sub_216681B04(v1, v4, v0);
}

uint64_t OUTLINED_FUNCTION_34_20()
{

  return swift_getEnumCaseMultiPayload();
}

uint64_t OUTLINED_FUNCTION_34_23()
{
  *(v0 + 152) = *(*(v0 + 40) + 40);
}

uint64_t OUTLINED_FUNCTION_34_24()
{

  return swift_allocObject();
}

unint64_t OUTLINED_FUNCTION_34_27()
{

  return sub_2166AF66C(0x6E6F73616572, 0xE600000000000000);
}

uint64_t OUTLINED_FUNCTION_34_28()
{
}

uint64_t OUTLINED_FUNCTION_34_29()
{
  *(v2 + 16) = v0;
  *(v2 + 24) = v1;
}

uint64_t OUTLINED_FUNCTION_34_35()
{

  return sub_21700D1D4();
}

uint64_t OUTLINED_FUNCTION_34_37(uint64_t result)
{
  v7 = v2 + *(result + 36);
  *v7 = v1;
  *(v7 + 8) = v3;
  *(v7 + 16) = v4;
  *(v7 + 24) = v5;
  *(v7 + 32) = v6;
  *(v7 + 40) = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_34_38@<X0>(__n128 *a1@<X8>, __n128 a2@<Q0>, __n128 a3@<Q1>)
{
  *a1 = a2;
  a1[1] = a3;
  return 255;
}

uint64_t OUTLINED_FUNCTION_67_2()
{

  return sub_21700E494();
}

uint64_t OUTLINED_FUNCTION_34_42()
{
  type metadata accessor for AlbumTrackLockup(0);

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t sub_2166B9918(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

void MusicStackAuthority.destination<A>(_:binding:)()
{
  OUTLINED_FUNCTION_75_6();
  v2 = v1;
  v4 = v3;
  sub_21700D404();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_119_1();
  sub_21700D414();
  type metadata accessor for ConcreteBindingBox();
  sub_2166B9F58(v4, v2);
  v6 = OBJC_IVAR____TtC7MusicUI19MusicStackAuthority_bindings;
  OUTLINED_FUNCTION_120_0();

  swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v0 + v6);
  sub_2166B71A0();
  *(v0 + v6) = v9;
  swift_endAccess();
  v7 = OUTLINED_FUNCTION_45_0();
  v8(v7);
  OUTLINED_FUNCTION_65_2();
}

uint64_t sub_2166B9AD0(void *a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_unknownObjectWeakInit();
  *(v6 + 16) = a1;
  swift_unknownObjectWeakAssign();
  *(v6 + 32) = a3;
  *(v6 + 48) = a5;
  *(v6 + 56) = a6;
  v11 = objc_opt_self();
  v12 = a1;

  v13 = [v11 defaultCenter];
  *(v6 + 40) = v13;
  v14 = *(v6 + 16);
  Strong = swift_unknownObjectWeakLoadStrong();
  v16 = v13;

  v17 = v14;
  [v16 addObserver:v6 selector:sel_handleNotification_ name:v17 object:Strong];

  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  return v6;
}

double OUTLINED_FUNCTION_105_1@<D0>(char a1@<W8>)
{
  *v2 = a1;
  result = 0.0;
  *(v2 + 8) = 0u;
  *(v2 + 24) = 0u;
  *(v2 + 40) = 0u;
  *(v2 + 56) = 0u;
  *(v2 + 72) = 0u;
  *(v2 + 88) = v4;
  *(v2 + 96) = v3;
  *(v2 + 104) = 0;
  *(v2 + 112) = v1;
  return result;
}

uint64_t OUTLINED_FUNCTION_105_4(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  v6 = *(v4 - 224);

  return sub_2168AEDA8(v6, v3, a3);
}

BOOL OUTLINED_FUNCTION_105_7()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t OUTLINED_FUNCTION_105_10()
{

  return __swift_storeEnumTagSinglePayload(v2 + v1, 0, 1, v0);
}

unint64_t sub_2166B9CF8()
{
  result = qword_280E32990[0];
  if (!qword_280E32990[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280E32990);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_91_6()
{
}

uint64_t OUTLINED_FUNCTION_91_8(uint64_t a1, uint64_t a2)
{

  return sub_2168AEDA8(v3, a2, v2);
}

uint64_t OUTLINED_FUNCTION_91_9()
{

  return sub_2168CBAB0(v0, type metadata accessor for SquareLockup);
}

uint64_t OUTLINED_FUNCTION_91_10()
{

  return swift_storeEnumTagMultiPayload();
}

uint64_t OUTLINED_FUNCTION_91_13()
{
  type metadata accessor for VideoArtwork.Dictionary._StorageClass(0);

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_91_15()
{

  return sub_216683A80(v4 + v2, v3 + v1, v0);
}

uint64_t sub_2166B9EA0()
{
  v0 = sub_21700DEA4();
  __swift_allocate_value_buffer(v0, qword_280E73A50);
  __swift_project_value_buffer(v0, qword_280E73A50);
  return sub_21700DE94();
}

unint64_t sub_2166B9F04()
{
  result = qword_280E45DB8[0];
  if (!qword_280E45DB8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280E45DB8);
  }

  return result;
}

uint64_t sub_2166B9F58(uint64_t a1, uint64_t a2)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  return result;
}

uint64_t OUTLINED_FUNCTION_104_4(uint64_t a1, uint64_t a2)
{

  return sub_2166A6F60(a1, a2, v2);
}

uint64_t OUTLINED_FUNCTION_104_8@<X0>(int a1@<W8>)
{
  *(v1 + 40) = a1;

  return sub_2166A6EA4();
}

unint64_t sub_2166BA038()
{
  result = qword_280E45E48;
  if (!qword_280E45E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E45E48);
  }

  return result;
}

void sub_2166BA08C()
{
  OUTLINED_FUNCTION_49();
  v779 = v1;
  v778 = v2;
  v3 = *v0;
  sub_21700C254();
  OUTLINED_FUNCTION_1();
  v723 = v5;
  v724 = v4;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_6_0();
  v722 = v6;
  OUTLINED_FUNCTION_4_1();
  sub_21700C994();
  OUTLINED_FUNCTION_1();
  v720 = v8;
  v721 = v7;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_6_0();
  v719 = v9;
  v738 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9470);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_105();
  v741 = v11;
  v707 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9478);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_105();
  v709 = v13;
  v739 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6AA0);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_105();
  v718 = v15;
  v785 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A80);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_105();
  v748 = v17;
  v706 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6AA8);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_105();
  v716 = v19;
  OUTLINED_FUNCTION_4_1();
  v717 = sub_21700C554();
  OUTLINED_FUNCTION_1();
  v689 = v20;
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_6_0();
  v713 = v22;
  OUTLINED_FUNCTION_4_1();
  sub_217007324();
  OUTLINED_FUNCTION_1();
  v732 = v24;
  v733 = v23;
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_6_0();
  v731 = v25;
  OUTLINED_FUNCTION_4_1();
  sub_217007264();
  OUTLINED_FUNCTION_1();
  v714 = v27;
  v715 = v26;
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_6_0();
  v711 = v28;
  OUTLINED_FUNCTION_4_1();
  v712 = sub_21700BEA4();
  OUTLINED_FUNCTION_1();
  v710 = v29;
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_6_0();
  v708 = v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CAB6AF0);
  OUTLINED_FUNCTION_36(v32);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_105();
  v730 = v34;
  OUTLINED_FUNCTION_4_1();
  v754 = sub_21700C924();
  OUTLINED_FUNCTION_1();
  v753 = v35;
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_1_0();
  v729 = v37;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_47_1();
  v737 = v39;
  v760 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9480);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_105();
  v762 = v41;
  v758 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9488);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_105();
  v759 = v43;
  v761 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A98);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_105();
  v763 = v45;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A78);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_105();
  v764 = v48;
  OUTLINED_FUNCTION_4_1();
  v747 = sub_217006224();
  OUTLINED_FUNCTION_1();
  v746 = v49;
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_6_0();
  v743 = v51;
  v52 = OUTLINED_FUNCTION_4_1();
  v736 = type metadata accessor for FlowAction.Destination(v52);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_6_0();
  v745 = v54;
  OUTLINED_FUNCTION_4_1();
  sub_21700D704();
  OUTLINED_FUNCTION_1();
  v704 = v56;
  v705 = v55;
  MEMORY[0x28223BE20](v55);
  OUTLINED_FUNCTION_1_0();
  v702 = v57;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v58);
  OUTLINED_FUNCTION_47_1();
  v703 = v59;
  OUTLINED_FUNCTION_4_1();
  v744 = sub_21700D284();
  OUTLINED_FUNCTION_1();
  v742 = v60;
  MEMORY[0x28223BE20](v61);
  OUTLINED_FUNCTION_1_0();
  v687 = v62;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v63);
  OUTLINED_FUNCTION_6_4();
  v688 = v64;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v65);
  OUTLINED_FUNCTION_6_4();
  v697 = v66;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v67);
  OUTLINED_FUNCTION_47_1();
  v696 = v68;
  v69 = OUTLINED_FUNCTION_4_1();
  v740 = type metadata accessor for FlowAction(v69);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v70);
  OUTLINED_FUNCTION_1_0();
  v685 = v71;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v72);
  OUTLINED_FUNCTION_6_4();
  v682 = v73;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v74);
  OUTLINED_FUNCTION_6_4();
  v683 = v75;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v76);
  OUTLINED_FUNCTION_6_4();
  v686 = v77;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v78);
  OUTLINED_FUNCTION_47_1();
  v684 = v79;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6AE8);
  OUTLINED_FUNCTION_36(v80);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v81);
  OUTLINED_FUNCTION_105();
  v728 = v82;
  OUTLINED_FUNCTION_4_1();
  v752 = sub_21700C1E4();
  OUTLINED_FUNCTION_1();
  v751 = v83;
  MEMORY[0x28223BE20](v84);
  OUTLINED_FUNCTION_1_0();
  v727 = v85;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v86);
  OUTLINED_FUNCTION_47_1();
  v695 = v87;
  v765 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9460);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v88);
  OUTLINED_FUNCTION_105();
  v766 = v89;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A70);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v91);
  OUTLINED_FUNCTION_105();
  v767 = v92;
  OUTLINED_FUNCTION_4_1();
  v750 = sub_21700C084();
  OUTLINED_FUNCTION_1();
  v749 = v93;
  MEMORY[0x28223BE20](v94);
  OUTLINED_FUNCTION_1_0();
  v726 = v95;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v96);
  OUTLINED_FUNCTION_47_1();
  v694 = v97;
  OUTLINED_FUNCTION_4_1();
  v98 = type metadata accessor for FlowActionPageView();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v99);
  OUTLINED_FUNCTION_1_0();
  v698 = v100;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v101);
  OUTLINED_FUNCTION_6_4();
  v699 = v102;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v103);
  OUTLINED_FUNCTION_6_4();
  v701 = v104;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v105);
  OUTLINED_FUNCTION_6_4();
  v700 = v106;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v107);
  OUTLINED_FUNCTION_47_1();
  v774 = v108;
  OUTLINED_FUNCTION_4_1();
  sub_21700C384();
  OUTLINED_FUNCTION_1();
  v692 = v110;
  v693 = v109;
  MEMORY[0x28223BE20](v109);
  OUTLINED_FUNCTION_6_0();
  v691 = v111;
  v112 = *(v3 + 80);
  v773 = v0;
  OUTLINED_FUNCTION_188();
  type metadata accessor for SearchPageView();
  OUTLINED_FUNCTION_110();
  v768 = v98;
  sub_217009564();
  OUTLINED_FUNCTION_1();
  v690 = v113;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v114);
  v116 = &v681 - v115;
  v784 = v117;
  v769 = v90;
  v118 = sub_217009564();
  OUTLINED_FUNCTION_1();
  v735 = v119;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v120);
  OUTLINED_FUNCTION_105();
  v734 = v121;
  v782 = v0;
  v725 = *(v0 - 1);
  MEMORY[0x28223BE20](v122);
  OUTLINED_FUNCTION_77();
  v125 = (v123 - v124);
  MEMORY[0x28223BE20](v126);
  v128 = &v681 - v127;
  v755 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB6A68);
  v783 = v118;
  sub_217009564();
  OUTLINED_FUNCTION_1();
  v757 = v129;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v130);
  OUTLINED_FUNCTION_105();
  v756 = v131;
  OUTLINED_FUNCTION_4_1();
  v777 = v132;
  v770 = v46;
  v133 = sub_217009564();
  OUTLINED_FUNCTION_1();
  v772 = v134;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v135);
  OUTLINED_FUNCTION_105();
  v771 = v136;
  OUTLINED_FUNCTION_188();
  v137 = type metadata accessor for MusicPageProvider.Destination();
  OUTLINED_FUNCTION_1();
  v139 = v138;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v140);
  OUTLINED_FUNCTION_75_2();
  v776 = v133;
  v141 = sub_217009564();
  OUTLINED_FUNCTION_1();
  v143 = v142;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v144);
  OUTLINED_FUNCTION_105();
  v775 = v145;
  v147 = *(v139 + 16);
  v146 = v139 + 16;
  v148 = v779;
  v147(v112);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v781 = v141;
  v780 = v143;
  switch(EnumCaseMultiPayload)
  {
    case 1:
      v326 = OUTLINED_FUNCTION_90();
      v327(v326);
      OUTLINED_FUNCTION_35_10();
      sub_21683E188();
      OUTLINED_FUNCTION_8_19();
      OUTLINED_FUNCTION_163();
      OUTLINED_FUNCTION_182();
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_1_34();
      v329 = sub_2166C2594(v328);
      v330 = v767;
      sub_217009554();
      OUTLINED_FUNCTION_10_1();
      v846 = OUTLINED_FUNCTION_208();
      v847 = v329;
      OUTLINED_FUNCTION_42_3();
      v116 = v784;
      WitnessTable = swift_getWitnessTable();
      v332 = sub_2166B53E0();
      OUTLINED_FUNCTION_72_5();
      sub_2166C2CB0();
      sub_216697664(v330, &qword_27CAB6A70);
      OUTLINED_FUNCTION_3_38();
      v334 = sub_2166B51C0(v333);
      v844 = WitnessTable;
      v845 = v332;
      OUTLINED_FUNCTION_83_5();
      OUTLINED_FUNCTION_148();
      OUTLINED_FUNCTION_222();
      v335 = OUTLINED_FUNCTION_194();
      v336(v335);
      v842 = v334;
      v843 = WitnessTable;
      v337 = OUTLINED_FUNCTION_62_2();
      OUTLINED_FUNCTION_2_33();
      v339 = sub_2166B51C0(v338);
      OUTLINED_FUNCTION_41_9();
      sub_2166C2718();
      v340 = OUTLINED_FUNCTION_119();
      v341(v340);
      v840 = v337;
      v841 = v339;
      OUTLINED_FUNCTION_61_2();
      sub_2166B58AC();
      OUTLINED_FUNCTION_19_17();
      sub_2166C2718();
      v342 = OUTLINED_FUNCTION_32_12();
      v343(v342);
      OUTLINED_FUNCTION_9_28();
      sub_216845208(v774, v344);
      v261 = *(v749 + 8);
      v262 = v694;
      goto LABEL_38;
    case 2:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB80D0);
      v264 = OUTLINED_FUNCTION_109_0();
      v265(v264);
      OUTLINED_FUNCTION_154();
      sub_21683E560();

      OUTLINED_FUNCTION_8_19();
      sub_2168451B0(v146, v766);
      OUTLINED_FUNCTION_141_0();
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_1_34();
      v267 = sub_2166C2594(v266);
      v268 = v767;
      OUTLINED_FUNCTION_39_7();
      OUTLINED_FUNCTION_10_1();
      v854 = OUTLINED_FUNCTION_208();
      v855 = v267;
      OUTLINED_FUNCTION_42_3();
      v116 = v784;
      v269 = swift_getWitnessTable();
      v270 = sub_2166B53E0();
      OUTLINED_FUNCTION_72_5();
      sub_2166C2CB0();
      sub_216697664(v268, &qword_27CAB6A70);
      OUTLINED_FUNCTION_3_38();
      v272 = sub_2166B51C0(v271);
      v852 = v269;
      v853 = v270;
      OUTLINED_FUNCTION_83_5();
      OUTLINED_FUNCTION_148();
      OUTLINED_FUNCTION_222();
      v273 = OUTLINED_FUNCTION_194();
      v274(v273);
      v850 = v272;
      v851 = v269;
      v275 = OUTLINED_FUNCTION_62_2();
      OUTLINED_FUNCTION_2_33();
      v277 = sub_2166B51C0(v276);
      OUTLINED_FUNCTION_41_9();
      sub_2166C2718();
      v278 = OUTLINED_FUNCTION_119();
      v279(v278);
      v848 = v275;
      v849 = v277;
      OUTLINED_FUNCTION_61_2();
      sub_2166B58AC();
      OUTLINED_FUNCTION_19_17();
      sub_2166C2718();
      v280 = OUTLINED_FUNCTION_32_12();
      v281(v280);
      OUTLINED_FUNCTION_9_28();
      sub_216845208(v774, v282);
      v261 = *(v751 + 8);
      v262 = v695;
      goto LABEL_32;
    case 3:
      v304 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB80C0);
      v305 = *(v304 + 48);
      (*(v751 + 32))(v727, v112, v752);
      sub_2167C5834(v112 + v305, v728, &qword_27CAB6AE8);
      if (sub_21688D828(0, 48))
      {
        v306 = v696;
        sub_21700D234();
      }

      else
      {
        sub_21700D6F4();
        OUTLINED_FUNCTION_16_20();
        sub_21700D6D4();
        v527 = OUTLINED_FUNCTION_104_0();
        v528(v527);
        v306 = v696;
        sub_21700D244();
        v529 = OUTLINED_FUNCTION_158();
        v530(v529);
      }

      v531 = *(v304 + 48);
      v532 = v745;
      (*(v751 + 16))(v745, v727, v752);
      sub_216683A80(v728, v532 + v531, &qword_27CAB6AE8);
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_175();
      v533 = v684;
      OUTLINED_FUNCTION_38_2();
      __swift_storeEnumTagSinglePayload(v534, v535, v536, v537);
      type metadata accessor for Page.Header(0);
      OUTLINED_FUNCTION_38_2();
      __swift_storeEnumTagSinglePayload(v538, v539, v540, v541);
      type metadata accessor for ReferrerInfo();
      OUTLINED_FUNCTION_38_2();
      __swift_storeEnumTagSinglePayload(v542, v543, v544, v545);
      v546 = OUTLINED_FUNCTION_87_3();
      v547(v546);
      OUTLINED_FUNCTION_7_25();
      sub_2168451B0(v532, v533 + v548);
      OUTLINED_FUNCTION_252();
      sub_2170061F4();
      v549 = OUTLINED_FUNCTION_57_7();
      v550(v549);
      OUTLINED_FUNCTION_6_27();
      sub_216845208(v532, v551);
      (*(v141 + 8))(v696, v306);
      OUTLINED_FUNCTION_183();
      sub_2166861C8(v821, v821, &qword_27CABF7B0);
      v552 = OUTLINED_FUNCTION_164();
      sub_21683E974(v552, v553);
      OUTLINED_FUNCTION_5_23();
      sub_216845208(v533, v554);
      OUTLINED_FUNCTION_8_19();
      OUTLINED_FUNCTION_162();
      OUTLINED_FUNCTION_141_0();
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_1_34();
      v556 = sub_2166C2594(v555);
      v557 = v767;
      OUTLINED_FUNCTION_39_7();
      OUTLINED_FUNCTION_201();
      swift_storeEnumTagMultiPayload();
      sub_2166B53E0();
      OUTLINED_FUNCTION_147_1();
      sub_216697664(v557, &qword_27CAB6A70);
      OUTLINED_FUNCTION_204();
      swift_storeEnumTagMultiPayload();
      sub_2166B5778();
      v116 = v764;
      OUTLINED_FUNCTION_149_1();
      v558 = OUTLINED_FUNCTION_226();
      sub_216697664(v558, v559);
      OUTLINED_FUNCTION_3_38();
      v561 = sub_2166B51C0(v560);
      OUTLINED_FUNCTION_10_1();
      v862 = swift_getWitnessTable();
      v863 = v556;
      OUTLINED_FUNCTION_42_3();
      v860 = swift_getWitnessTable();
      v861 = v821;
      v562 = OUTLINED_FUNCTION_180();
      v858 = v561;
      v859 = v562;
      v563 = OUTLINED_FUNCTION_62_2();
      OUTLINED_FUNCTION_2_33();
      OUTLINED_FUNCTION_165();
      v565 = sub_2166B51C0(v564);
      OUTLINED_FUNCTION_24_13();
      sub_2166C2CB0();
      OUTLINED_FUNCTION_165();
      sub_216697664(v566, v567);
      v856 = v563;
      v857 = v565;
      OUTLINED_FUNCTION_61_2();
      sub_2166B58AC();
      OUTLINED_FUNCTION_19_17();
      sub_2166C2718();
      v568 = OUTLINED_FUNCTION_32_12();
      v569(v568);
      OUTLINED_FUNCTION_9_28();
      sub_216845208(v700, v570);
      sub_216697664(v728, &qword_27CAB6AE8);
      v261 = *(v751 + 8);
      v262 = v727;
LABEL_32:
      v413 = v752;
      goto LABEL_39;
    case 4:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB80C8);
      v229 = OUTLINED_FUNCTION_109_0();
      v230(v229);
      OUTLINED_FUNCTION_154();
      sub_21683EA2C();

      OUTLINED_FUNCTION_8_19();
      v231 = v766;
      sub_2168451B0(v146, v766);
      OUTLINED_FUNCTION_141_0();
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_1_34();
      v233 = sub_2166C2594(v232);
      OUTLINED_FUNCTION_39_7();
      OUTLINED_FUNCTION_63_3();
      OUTLINED_FUNCTION_202();
      sub_2166B53E0();
      OUTLINED_FUNCTION_37_9();
      OUTLINED_FUNCTION_82_2();
      sub_216697664(v234, v235);
      OUTLINED_FUNCTION_58_4(v112);
      OUTLINED_FUNCTION_155();
      swift_storeEnumTagMultiPayload();
      sub_2166B5778();
      OUTLINED_FUNCTION_40_7();
      OUTLINED_FUNCTION_82_2();
      sub_216697664(v236, v237);
      OUTLINED_FUNCTION_3_38();
      v239 = sub_2166B51C0(v238);
      OUTLINED_FUNCTION_10_1();
      v870 = OUTLINED_FUNCTION_212();
      v871 = v233;
      OUTLINED_FUNCTION_42_3();
      v868 = OUTLINED_FUNCTION_170();
      v869 = v231;
      v240 = OUTLINED_FUNCTION_180();
      v866 = v239;
      v867 = v240;
      v241 = OUTLINED_FUNCTION_62_2();
      OUTLINED_FUNCTION_2_33();
      sub_2166B51C0(v242);
      OUTLINED_FUNCTION_53_7();
      OUTLINED_FUNCTION_41_9();
      sub_2166C2CB0();
      sub_216697664(v116, &qword_27CAB6A78);
      v864 = v241;
      v865 = v112;
      OUTLINED_FUNCTION_61_2();
      sub_2166B58AC();
      OUTLINED_FUNCTION_27_12();
      v243 = OUTLINED_FUNCTION_28_15();
      v244(v243);
      goto LABEL_8;
    case 5:
      v369 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB80B8);
      v370 = *(v369 + 48);
      (*(v753 + 32))(v729, v112, v754);
      sub_2167C5834(v112 + v370, v730, qword_27CAB6AF0);
      if (sub_21688D828(26, 48))
      {
        v371 = v697;
        sub_21700D234();
      }

      else
      {
        sub_21700D6F4();
        OUTLINED_FUNCTION_16_20();
        sub_21700D6D4();
        v571 = OUTLINED_FUNCTION_104_0();
        v572(v571);
        v371 = v697;
        sub_21700D244();
        v573 = OUTLINED_FUNCTION_158();
        v574(v573);
      }

      v575 = *(v369 + 48);
      v576 = v745;
      (*(v753 + 16))(v745, v729, v754);
      sub_216683A80(v730, v576 + v575, qword_27CAB6AF0);
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_175();
      v577 = v686;
      OUTLINED_FUNCTION_38_2();
      __swift_storeEnumTagSinglePayload(v578, v579, v580, v581);
      type metadata accessor for Page.Header(0);
      OUTLINED_FUNCTION_38_2();
      __swift_storeEnumTagSinglePayload(v582, v583, v584, v585);
      type metadata accessor for ReferrerInfo();
      OUTLINED_FUNCTION_38_2();
      __swift_storeEnumTagSinglePayload(v586, v587, v588, v589);
      v590 = OUTLINED_FUNCTION_87_3();
      v591(v590);
      OUTLINED_FUNCTION_7_25();
      sub_2168451B0(v576, v577 + v592);
      OUTLINED_FUNCTION_252();
      sub_2170061F4();
      v593 = OUTLINED_FUNCTION_57_7();
      v594(v593);
      OUTLINED_FUNCTION_6_27();
      sub_216845208(v576, v595);
      (*(v141 + 8))(v697, v371);
      OUTLINED_FUNCTION_183();
      sub_2166861C8(v821, v821, &qword_27CABF7B0);
      v596 = OUTLINED_FUNCTION_164();
      sub_21683E974(v596, v597);
      OUTLINED_FUNCTION_5_23();
      sub_216845208(v577, v598);
      OUTLINED_FUNCTION_8_19();
      OUTLINED_FUNCTION_162();
      OUTLINED_FUNCTION_141_0();
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_1_34();
      v600 = sub_2166C2594(v599);
      v601 = v767;
      OUTLINED_FUNCTION_39_7();
      OUTLINED_FUNCTION_201();
      OUTLINED_FUNCTION_251();
      sub_2166B53E0();
      OUTLINED_FUNCTION_147_1();
      sub_216697664(v601, &qword_27CAB6A70);
      OUTLINED_FUNCTION_204();
      swift_storeEnumTagMultiPayload();
      sub_2166B5778();
      v116 = v764;
      OUTLINED_FUNCTION_149_1();
      v602 = OUTLINED_FUNCTION_226();
      sub_216697664(v602, v603);
      OUTLINED_FUNCTION_3_38();
      v605 = sub_2166B51C0(v604);
      OUTLINED_FUNCTION_10_1();
      v878 = swift_getWitnessTable();
      v879 = v600;
      OUTLINED_FUNCTION_42_3();
      v876 = swift_getWitnessTable();
      v877 = v821;
      v606 = OUTLINED_FUNCTION_180();
      v874 = v605;
      v875 = v606;
      v607 = OUTLINED_FUNCTION_62_2();
      OUTLINED_FUNCTION_2_33();
      OUTLINED_FUNCTION_165();
      v609 = sub_2166B51C0(v608);
      OUTLINED_FUNCTION_24_13();
      sub_2166C2CB0();
      OUTLINED_FUNCTION_165();
      sub_216697664(v610, v611);
      v872 = v607;
      v873 = v609;
      OUTLINED_FUNCTION_61_2();
      sub_2166B58AC();
      OUTLINED_FUNCTION_19_17();
      sub_2166C2718();
      v612 = OUTLINED_FUNCTION_32_12();
      v613(v612);
      OUTLINED_FUNCTION_9_28();
      sub_216845208(v701, v614);
      sub_216697664(v730, qword_27CAB6AF0);
      v261 = *(v753 + 8);
      v262 = v729;
      goto LABEL_35;
    case 6:
      (*(v749 + 32))(v726, v112, v750);
      if (sub_21688D828(0, 48))
      {
        v388 = v688;
        sub_21700D234();
      }

      else
      {
        v615 = v703;
        sub_21700D6F4();
        OUTLINED_FUNCTION_16_20();
        sub_21700D6D4();
        v617 = v704;
        v616 = v705;
        OUTLINED_FUNCTION_29_9();
        OUTLINED_FUNCTION_28_6();
        v618();
        v388 = v688;
        sub_21700D244();
        (*(v617 + 8))(v615, v616);
      }

      v619 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB80E8) + 48);
      v620 = v745;
      (*(v749 + 16))(v745, v726, v750);
      *(v620 + v619) = 2;
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_161();
      v621 = v683;
      OUTLINED_FUNCTION_38_2();
      OUTLINED_FUNCTION_221_0(v622, v623, v624, v625);
      OUTLINED_FUNCTION_38_2();
      OUTLINED_FUNCTION_220(v626, v627, v628, v629);
      OUTLINED_FUNCTION_38_2();
      __swift_storeEnumTagSinglePayload(v630, v631, v632, v633);
      v634 = v621 + *(v116 + 10);
      OUTLINED_FUNCTION_45_8();
      v635 = v742;
      v636 = OUTLINED_FUNCTION_73_5();
      v637 = v744;
      v638(v636);
      OUTLINED_FUNCTION_7_25();
      sub_2168451B0(v620, v621 + v639);
      OUTLINED_FUNCTION_252();
      sub_2170061F4();
      v779 = v640;
      v641 = OUTLINED_FUNCTION_57_7();
      v642(v641);
      OUTLINED_FUNCTION_6_27();
      sub_216845208(v620, v643);
      (*(v635 + 8))(v388, v637);
      OUTLINED_FUNCTION_159();
      sub_2166861C8(v821, v634, &qword_27CABF7B0);
      sub_21683E974(v621, v699);
      OUTLINED_FUNCTION_5_23();
      sub_216845208(v621, v644);
      OUTLINED_FUNCTION_8_19();
      OUTLINED_FUNCTION_162();
      OUTLINED_FUNCTION_141_0();
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_1_34();
      v646 = sub_2166C2594(v645);
      OUTLINED_FUNCTION_39_7();
      v647 = v759;
      OUTLINED_FUNCTION_165();
      sub_216683A80(v648, v649, v650);
      OUTLINED_FUNCTION_251();
      v651 = sub_2166B53E0();
      v652 = v763;
      OUTLINED_FUNCTION_59_4();
      OUTLINED_FUNCTION_82_2();
      sub_216697664(v653, v654);
      OUTLINED_FUNCTION_58_4(v652);
      OUTLINED_FUNCTION_155();
      swift_storeEnumTagMultiPayload();
      sub_2166B5778();
      v655 = v764;
      OUTLINED_FUNCTION_60_3();
      OUTLINED_FUNCTION_82_2();
      sub_216697664(v656, v657);
      OUTLINED_FUNCTION_3_38();
      v659 = sub_2166B51C0(v658);
      OUTLINED_FUNCTION_10_1();
      v116 = v782;
      v886 = swift_getWitnessTable();
      v887 = v646;
      OUTLINED_FUNCTION_42_3();
      v884 = OUTLINED_FUNCTION_170();
      v885 = v651;
      v660 = OUTLINED_FUNCTION_180();
      v882 = v659;
      v883 = v660;
      v661 = OUTLINED_FUNCTION_62_2();
      OUTLINED_FUNCTION_2_33();
      sub_2166B51C0(v662);
      OUTLINED_FUNCTION_53_7();
      OUTLINED_FUNCTION_41_9();
      sub_2166C2CB0();
      sub_216697664(v655, &qword_27CAB6A78);
      v880 = v661;
      v881 = v647;
      OUTLINED_FUNCTION_61_2();
      sub_2166B58AC();
      OUTLINED_FUNCTION_27_12();
      v663 = OUTLINED_FUNCTION_28_15();
      v664(v663);
      OUTLINED_FUNCTION_9_28();
      sub_216845208(v699, v665);
      v261 = *(v749 + 8);
      v262 = v726;
LABEL_38:
      v413 = v750;
      goto LABEL_39;
    case 7:
      v307 = OUTLINED_FUNCTION_90();
      v308(v307);
      v309 = v682;
      sub_216F05B18(v682);
      v310 = v774;
      v311 = v773;
      sub_21683E974(v309, v774);
      OUTLINED_FUNCTION_5_23();
      sub_216845208(v309, v312);
      OUTLINED_FUNCTION_8_19();
      sub_2168451B0(v310, v766);
      OUTLINED_FUNCTION_182();
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_1_34();
      sub_2166C2594(v313);
      OUTLINED_FUNCTION_38_7();
      OUTLINED_FUNCTION_63_3();
      OUTLINED_FUNCTION_202();
      sub_2166B53E0();
      OUTLINED_FUNCTION_37_9();
      OUTLINED_FUNCTION_82_2();
      sub_216697664(v314, v315);
      OUTLINED_FUNCTION_58_4(v112);
      OUTLINED_FUNCTION_155();
      swift_storeEnumTagMultiPayload();
      sub_2166B5778();
      OUTLINED_FUNCTION_40_7();
      OUTLINED_FUNCTION_82_2();
      sub_216697664(v316, v317);
      OUTLINED_FUNCTION_3_38();
      v319 = sub_2166B51C0(v318);
      OUTLINED_FUNCTION_10_1();
      v894 = OUTLINED_FUNCTION_208();
      v895 = v311;
      OUTLINED_FUNCTION_42_3();
      v892 = OUTLINED_FUNCTION_170();
      v893 = v309;
      v320 = OUTLINED_FUNCTION_180();
      v890 = v319;
      v891 = v320;
      v321 = OUTLINED_FUNCTION_210();
      OUTLINED_FUNCTION_2_33();
      sub_2166B51C0(v322);
      OUTLINED_FUNCTION_53_7();
      OUTLINED_FUNCTION_186();
      OUTLINED_FUNCTION_90_2();
      sub_2166C2CB0();
      OUTLINED_FUNCTION_199(v116, &qword_27CAB6A78);
      v888 = v321;
      v889 = v112;
      OUTLINED_FUNCTION_61_2();
      sub_2166B58AC();
      OUTLINED_FUNCTION_27_12();
      v323 = OUTLINED_FUNCTION_28_15();
      v324(v323);
      OUTLINED_FUNCTION_9_28();
      sub_216845208(v774, v325);
      (*(v710 + 8))(v708, v712);
      break;
    case 8:
      v430 = v711;
      v431 = OUTLINED_FUNCTION_90();
      v432(v431);
      OUTLINED_FUNCTION_35_10();
      sub_21683EE44();
      OUTLINED_FUNCTION_8_19();
      OUTLINED_FUNCTION_163();
      OUTLINED_FUNCTION_182();
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_1_34();
      sub_2166C2594(v433);
      OUTLINED_FUNCTION_38_7();
      OUTLINED_FUNCTION_63_3();
      OUTLINED_FUNCTION_202();
      sub_2166B53E0();
      OUTLINED_FUNCTION_37_9();
      OUTLINED_FUNCTION_82_2();
      sub_216697664(v434, v435);
      OUTLINED_FUNCTION_58_4(v112);
      OUTLINED_FUNCTION_155();
      swift_storeEnumTagMultiPayload();
      sub_2166B5778();
      OUTLINED_FUNCTION_40_7();
      OUTLINED_FUNCTION_82_2();
      sub_216697664(v436, v437);
      OUTLINED_FUNCTION_3_38();
      v439 = sub_2166B51C0(v438);
      OUTLINED_FUNCTION_10_1();
      v902 = OUTLINED_FUNCTION_208();
      v903 = v430;
      OUTLINED_FUNCTION_42_3();
      v900 = OUTLINED_FUNCTION_170();
      v901 = v148;
      v440 = OUTLINED_FUNCTION_180();
      v898 = v439;
      v899 = v440;
      v441 = OUTLINED_FUNCTION_210();
      OUTLINED_FUNCTION_2_33();
      sub_2166B51C0(v442);
      OUTLINED_FUNCTION_53_7();
      OUTLINED_FUNCTION_186();
      OUTLINED_FUNCTION_90_2();
      sub_2166C2CB0();
      OUTLINED_FUNCTION_199(v116, &qword_27CAB6A78);
      v896 = v441;
      v897 = v112;
      OUTLINED_FUNCTION_61_2();
      sub_2166B58AC();
      OUTLINED_FUNCTION_27_12();
      v443 = OUTLINED_FUNCTION_28_15();
      v444(v443);
      OUTLINED_FUNCTION_9_28();
      sub_216845208(v774, v445);
      (*(v714 + 8))(v711, v715);
      break;
    case 9:
      (*(v732 + 32))(v731, v112, v733);
      if (sub_21688D828(47, 48))
      {
        v263 = v687;
        sub_21700D234();
      }

      else
      {
        v477 = v703;
        sub_21700D6F4();
        OUTLINED_FUNCTION_16_20();
        sub_21700D6D4();
        v479 = v704;
        v478 = v705;
        OUTLINED_FUNCTION_29_9();
        OUTLINED_FUNCTION_28_6();
        v480();
        v263 = v687;
        sub_21700D244();
        (*(v479 + 8))(v477, v478);
      }

      v481 = v745;
      (*(v732 + 16))(v745, v731, v733);
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_161();
      v482 = v685;
      OUTLINED_FUNCTION_38_2();
      OUTLINED_FUNCTION_221_0(v483, v484, v485, v486);
      OUTLINED_FUNCTION_38_2();
      OUTLINED_FUNCTION_220(v487, v488, v489, v490);
      OUTLINED_FUNCTION_38_2();
      __swift_storeEnumTagSinglePayload(v491, v492, v493, v494);
      v495 = v482 + *(v116 + 10);
      OUTLINED_FUNCTION_45_8();
      v496 = v742;
      v497 = OUTLINED_FUNCTION_73_5();
      v498 = v744;
      v499(v497);
      OUTLINED_FUNCTION_7_25();
      sub_2168451B0(v481, v482 + v500);
      OUTLINED_FUNCTION_252();
      sub_2170061F4();
      v779 = v501;
      v502 = OUTLINED_FUNCTION_57_7();
      v503(v502);
      OUTLINED_FUNCTION_6_27();
      sub_216845208(v481, v504);
      (*(v496 + 8))(v263, v498);
      OUTLINED_FUNCTION_159();
      sub_2166861C8(v821, v495, &qword_27CABF7B0);
      sub_21683E974(v482, v698);
      OUTLINED_FUNCTION_5_23();
      sub_216845208(v482, v505);
      OUTLINED_FUNCTION_8_19();
      OUTLINED_FUNCTION_162();
      OUTLINED_FUNCTION_141_0();
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_1_34();
      v507 = sub_2166C2594(v506);
      OUTLINED_FUNCTION_39_7();
      v508 = v759;
      OUTLINED_FUNCTION_165();
      sub_216683A80(v509, v510, v511);
      OUTLINED_FUNCTION_251();
      v512 = sub_2166B53E0();
      v513 = v763;
      OUTLINED_FUNCTION_59_4();
      OUTLINED_FUNCTION_82_2();
      sub_216697664(v514, v515);
      OUTLINED_FUNCTION_58_4(v513);
      OUTLINED_FUNCTION_155();
      swift_storeEnumTagMultiPayload();
      sub_2166B5778();
      v516 = v764;
      OUTLINED_FUNCTION_60_3();
      OUTLINED_FUNCTION_82_2();
      sub_216697664(v517, v518);
      OUTLINED_FUNCTION_3_38();
      v520 = sub_2166B51C0(v519);
      OUTLINED_FUNCTION_10_1();
      v910 = OUTLINED_FUNCTION_208();
      v911 = v507;
      OUTLINED_FUNCTION_42_3();
      v908 = OUTLINED_FUNCTION_170();
      v909 = v512;
      v521 = OUTLINED_FUNCTION_180();
      v906 = v520;
      v907 = v521;
      v116 = v777;
      v522 = swift_getWitnessTable();
      OUTLINED_FUNCTION_2_33();
      sub_2166B51C0(v523);
      OUTLINED_FUNCTION_53_7();
      OUTLINED_FUNCTION_90_2();
      sub_2166C2CB0();
      sub_216697664(v516, &qword_27CAB6A78);
      v904 = v522;
      v905 = v508;
      OUTLINED_FUNCTION_61_2();
      sub_2166B58AC();
      OUTLINED_FUNCTION_27_12();
      v524 = OUTLINED_FUNCTION_28_15();
      v525(v524);
      OUTLINED_FUNCTION_9_28();
      sub_216845208(v698, v526);
      (*(v732 + 8))(v731, v733);
      break;
    case 10:
      v414 = v774;
      sub_21683F284();

      OUTLINED_FUNCTION_8_19();
      v415 = v766;
      sub_2168451B0(v414, v766);
      OUTLINED_FUNCTION_141_0();
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_1_34();
      v417 = sub_2166C2594(v416);
      OUTLINED_FUNCTION_39_7();
      OUTLINED_FUNCTION_63_3();
      OUTLINED_FUNCTION_251();
      sub_2166B53E0();
      OUTLINED_FUNCTION_37_9();
      OUTLINED_FUNCTION_82_2();
      sub_216697664(v418, v419);
      OUTLINED_FUNCTION_58_4(v112);
      OUTLINED_FUNCTION_155();
      swift_storeEnumTagMultiPayload();
      sub_2166B5778();
      OUTLINED_FUNCTION_40_7();
      OUTLINED_FUNCTION_82_2();
      sub_216697664(v420, v421);
      OUTLINED_FUNCTION_3_38();
      v423 = sub_2166B51C0(v422);
      OUTLINED_FUNCTION_10_1();
      v918 = OUTLINED_FUNCTION_208();
      v919 = v417;
      OUTLINED_FUNCTION_42_3();
      v916 = OUTLINED_FUNCTION_170();
      v917 = v415;
      v424 = OUTLINED_FUNCTION_180();
      v914 = v423;
      v915 = v424;
      v425 = OUTLINED_FUNCTION_210();
      OUTLINED_FUNCTION_2_33();
      sub_2166B51C0(v426);
      OUTLINED_FUNCTION_53_7();
      OUTLINED_FUNCTION_186();
      OUTLINED_FUNCTION_90_2();
      sub_2166C2CB0();
      OUTLINED_FUNCTION_199(v116, &qword_27CAB6A78);
      v912 = v425;
      v913 = v112;
      OUTLINED_FUNCTION_61_2();
      sub_2166B58AC();
      OUTLINED_FUNCTION_27_12();
      v427 = OUTLINED_FUNCTION_28_15();
      v428(v427);
      OUTLINED_FUNCTION_9_28();
      sub_216845208(v774, v429);
      break;
    case 11:
      v212 = v689;
      v213 = OUTLINED_FUNCTION_90();
      v214(v213);
      v215 = v716;
      sub_21683F7F8();
      sub_216683A80(v215, v709, &qword_27CAB6AA8);
      swift_storeEnumTagMultiPayload();
      sub_2166B59A8();
      OUTLINED_FUNCTION_1_34();
      v217 = sub_2166C2594(v216);
      v218 = v718;
      sub_217009554();
      sub_216683A80(v218, v741, &qword_27CAB6AA0);
      swift_storeEnumTagMultiPayload();
      sub_2166B57F0();
      v219 = sub_2166B53E0();
      v220 = v748;
      OUTLINED_FUNCTION_215();
      sub_217009554();
      OUTLINED_FUNCTION_103_4();
      sub_216697664(v221, v222);
      OUTLINED_FUNCTION_3_38();
      v224 = sub_2166B51C0(v223);
      OUTLINED_FUNCTION_10_1();
      v926 = swift_getWitnessTable();
      v927 = v217;
      OUTLINED_FUNCTION_95_5();
      v924 = swift_getWitnessTable();
      v925 = v219;
      v225 = swift_getWitnessTable();
      v922 = v224;
      v923 = v225;
      v226 = swift_getWitnessTable();
      OUTLINED_FUNCTION_2_33();
      v228 = sub_2166B51C0(v227);
      v920 = v226;
      v921 = v228;
      swift_getWitnessTable();
      sub_2166B58AC();
      v116 = v775;
      OUTLINED_FUNCTION_226();
      sub_2166C2CB0();
      sub_216697664(v220, &qword_27CAB6A80);
      sub_216697664(v716, &qword_27CAB6AA8);
      (*(v212 + 8))(v713, v717);
      break;
    case 12:
      v245 = OUTLINED_FUNCTION_90();
      v246(v245);
      OUTLINED_FUNCTION_35_10();
      sub_216840520();
      OUTLINED_FUNCTION_8_19();
      sub_2168451B0(v148, v709);
      swift_storeEnumTagMultiPayload();
      sub_2166B59A8();
      OUTLINED_FUNCTION_1_34();
      v248 = sub_2166C2594(v247);
      sub_217009554();
      OUTLINED_FUNCTION_60_0();
      sub_216683A80(v249, v250, v251);
      swift_storeEnumTagMultiPayload();
      sub_2166B57F0();
      sub_2166B53E0();
      OUTLINED_FUNCTION_171();
      OUTLINED_FUNCTION_215();
      OUTLINED_FUNCTION_110_1();
      sub_217009554();
      OUTLINED_FUNCTION_51();
      sub_216697664(v252, v253);
      OUTLINED_FUNCTION_3_38();
      v255 = sub_2166B51C0(v254);
      OUTLINED_FUNCTION_10_1();
      v934 = OUTLINED_FUNCTION_253();
      v935 = v248;
      OUTLINED_FUNCTION_42_3();
      v932 = OUTLINED_FUNCTION_170();
      v933 = v112;
      v256 = OUTLINED_FUNCTION_83_5();
      v930 = v255;
      v931 = v256;
      v257 = OUTLINED_FUNCTION_62_2();
      OUTLINED_FUNCTION_2_33();
      v259 = sub_2166B51C0(v258);
      v928 = v257;
      v929 = v259;
      OUTLINED_FUNCTION_61_2();
      sub_2166B58AC();
      OUTLINED_FUNCTION_19_17();
      sub_2166C2CB0();
      sub_216697664(v137, &qword_27CAB6A80);
LABEL_8:
      OUTLINED_FUNCTION_9_28();
      sub_216845208(v774, v260);
      v261 = *(v753 + 8);
      v262 = v737;
LABEL_35:
      v413 = v754;
      goto LABEL_39;
    case 13:
      v372 = v719;
      v373 = OUTLINED_FUNCTION_90();
      v374(v373);
      OUTLINED_FUNCTION_35_10();
      sub_216840A94();
      OUTLINED_FUNCTION_8_19();
      OUTLINED_FUNCTION_163();
      OUTLINED_FUNCTION_182();
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_1_34();
      sub_2166C2594(v375);
      OUTLINED_FUNCTION_38_7();
      OUTLINED_FUNCTION_60_0();
      sub_216683A80(v376, v377, v378);
      swift_storeEnumTagMultiPayload();
      sub_2166B57F0();
      sub_2166B53E0();
      OUTLINED_FUNCTION_171();
      OUTLINED_FUNCTION_215();
      OUTLINED_FUNCTION_110_1();
      sub_217009554();
      OUTLINED_FUNCTION_51();
      sub_216697664(v379, v380);
      OUTLINED_FUNCTION_3_38();
      v382 = sub_2166B51C0(v381);
      OUTLINED_FUNCTION_10_1();
      v942 = OUTLINED_FUNCTION_253();
      v943 = v372;
      OUTLINED_FUNCTION_42_3();
      v940 = OUTLINED_FUNCTION_170();
      v941 = v112;
      v383 = OUTLINED_FUNCTION_83_5();
      v938 = v382;
      v939 = v383;
      v384 = OUTLINED_FUNCTION_62_2();
      OUTLINED_FUNCTION_2_33();
      v386 = sub_2166B51C0(v385);
      v936 = v384;
      v937 = v386;
      OUTLINED_FUNCTION_61_2();
      sub_2166B58AC();
      OUTLINED_FUNCTION_19_17();
      sub_2166C2CB0();
      sub_216697664(v137, &qword_27CAB6A80);
      OUTLINED_FUNCTION_9_28();
      sub_216845208(v774, v387);
      (*(v720 + 8))(v719, v721);
      break;
    case 14:
      v196 = v722;
      v197 = OUTLINED_FUNCTION_90();
      v198(v197);
      OUTLINED_FUNCTION_35_10();
      sub_216840E74();
      OUTLINED_FUNCTION_8_19();
      OUTLINED_FUNCTION_163();
      OUTLINED_FUNCTION_182();
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_1_34();
      sub_2166C2594(v199);
      OUTLINED_FUNCTION_38_7();
      OUTLINED_FUNCTION_60_0();
      sub_216683A80(v200, v201, v202);
      swift_storeEnumTagMultiPayload();
      sub_2166B57F0();
      sub_2166B53E0();
      OUTLINED_FUNCTION_171();
      OUTLINED_FUNCTION_215();
      OUTLINED_FUNCTION_110_1();
      sub_217009554();
      OUTLINED_FUNCTION_51();
      sub_216697664(v203, v204);
      OUTLINED_FUNCTION_3_38();
      v206 = sub_2166B51C0(v205);
      OUTLINED_FUNCTION_10_1();
      v960 = OUTLINED_FUNCTION_253();
      v961 = v196;
      OUTLINED_FUNCTION_42_3();
      v958 = OUTLINED_FUNCTION_170();
      v959 = v112;
      v207 = OUTLINED_FUNCTION_83_5();
      v956 = v206;
      v957 = v207;
      v208 = OUTLINED_FUNCTION_62_2();
      OUTLINED_FUNCTION_2_33();
      v210 = sub_2166B51C0(v209);
      v954 = v208;
      v955 = v210;
      OUTLINED_FUNCTION_61_2();
      sub_2166B58AC();
      OUTLINED_FUNCTION_19_17();
      sub_2166C2CB0();
      sub_216697664(v137, &qword_27CAB6A80);
      OUTLINED_FUNCTION_9_28();
      sub_216845208(v774, v211);
      (*(v723 + 8))(v722, v724);
      break;
    case 15:
      OUTLINED_FUNCTION_112_1();
      v285 = *(v284 + *(v283 + 208));

      OUTLINED_FUNCTION_102_4();
      v818[0] = v285;
      OUTLINED_FUNCTION_218(xmmword_21701D480);
      v818[8] = sub_21683DBC4;
      v818[9] = 0;
      memcpy(v821, v818, sizeof(v821));
      v819 = 0;
      v822 = 0;
      OUTLINED_FUNCTION_178();
      OUTLINED_FUNCTION_178();
      sub_2166B5298();
      OUTLINED_FUNCTION_101_2();
      v286 = OUTLINED_FUNCTION_130();
      memcpy(v286, v287, 0x51uLL);
      v820 = 0;
      v823 = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A90);
      OUTLINED_FUNCTION_48_7();
      OUTLINED_FUNCTION_157();
      OUTLINED_FUNCTION_3_38();
      OUTLINED_FUNCTION_51();
      v289 = sub_2166B51C0(v288);
      OUTLINED_FUNCTION_10_1();
      v290 = OUTLINED_FUNCTION_212();
      OUTLINED_FUNCTION_1_34();
      v292 = sub_2166C2594(v291);
      v792 = v290;
      v793 = v292;
      OUTLINED_FUNCTION_42_3();
      v293 = swift_getWitnessTable();
      v294 = sub_2166B53E0();
      v790 = v293;
      v791 = v294;
      OUTLINED_FUNCTION_83_5();
      OUTLINED_FUNCTION_36_8();
      v295 = OUTLINED_FUNCTION_130();
      memcpy(v295, v296, 0x52uLL);
      OUTLINED_FUNCTION_51();
      sub_216697664(v297, v298);
      v788 = v289;
      v789 = v293;
      v299 = OUTLINED_FUNCTION_62_2();
      OUTLINED_FUNCTION_2_33();
      v301 = sub_2166B51C0(v300);
      OUTLINED_FUNCTION_24_13();
      OUTLINED_FUNCTION_72_5();
      sub_2166C2718();
      v302 = OUTLINED_FUNCTION_34_13();
      v303(v302);
      v786 = v299;
      v787 = v301;
      goto LABEL_24;
    case 16:
      OUTLINED_FUNCTION_112_1();
      v821[3] = type metadata accessor for BrowsePageIntent();
      v821[4] = sub_2166C2594(&unk_27CAB9498);
      __swift_allocate_boxed_opaque_existential_1(v821);
      OUTLINED_FUNCTION_110();
      type metadata accessor for ReferrerInfo();
      OUTLINED_FUNCTION_38_2();
      __swift_storeEnumTagSinglePayload(v172, v173, v174, v175);

      OUTLINED_FUNCTION_102_4();
      OUTLINED_FUNCTION_68_1();
      v176 = swift_allocObject();
      OUTLINED_FUNCTION_52_5(v176);
      OUTLINED_FUNCTION_218(xmmword_21701D470);
      v818[8] = sub_2167E7308;
      OUTLINED_FUNCTION_151(v177);
      v819 = 1;
      v822 = 1;
      OUTLINED_FUNCTION_178();
      OUTLINED_FUNCTION_178();
      sub_2166B5298();
      OUTLINED_FUNCTION_101_2();
      v178 = OUTLINED_FUNCTION_130();
      memcpy(v178, v179, 0x51uLL);
      v820 = 0;
      v823 = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A90);
      OUTLINED_FUNCTION_48_7();
      OUTLINED_FUNCTION_157();
      OUTLINED_FUNCTION_3_38();
      OUTLINED_FUNCTION_51();
      v181 = sub_2166B51C0(v180);
      OUTLINED_FUNCTION_10_1();
      v182 = OUTLINED_FUNCTION_212();
      OUTLINED_FUNCTION_1_34();
      v184 = sub_2166C2594(v183);
      v800 = v182;
      v801 = v184;
      OUTLINED_FUNCTION_42_3();
      v185 = swift_getWitnessTable();
      v186 = sub_2166B53E0();
      v798 = v185;
      v799 = v186;
      OUTLINED_FUNCTION_83_5();
      OUTLINED_FUNCTION_36_8();
      v187 = OUTLINED_FUNCTION_130();
      memcpy(v187, v188, 0x52uLL);
      OUTLINED_FUNCTION_51();
      sub_216697664(v189, v190);
      v796 = v181;
      v797 = v185;
      v191 = OUTLINED_FUNCTION_62_2();
      OUTLINED_FUNCTION_2_33();
      v193 = sub_2166B51C0(v192);
      OUTLINED_FUNCTION_24_13();
      OUTLINED_FUNCTION_72_5();
      sub_2166C2718();
      v194 = OUTLINED_FUNCTION_34_13();
      v195(v194);
      v794 = v191;
      v795 = v193;
      goto LABEL_24;
    case 17:
      OUTLINED_FUNCTION_112_1();
      v821[3] = type metadata accessor for VideosPageIntent();
      v821[4] = sub_2166C2594(&unk_27CAB9490);
      __swift_allocate_boxed_opaque_existential_1(v821);
      OUTLINED_FUNCTION_110();
      type metadata accessor for ReferrerInfo();
      OUTLINED_FUNCTION_38_2();
      __swift_storeEnumTagSinglePayload(v345, v346, v347, v348);

      OUTLINED_FUNCTION_102_4();
      OUTLINED_FUNCTION_68_1();
      v349 = swift_allocObject();
      OUTLINED_FUNCTION_52_5(v349);
      OUTLINED_FUNCTION_218(xmmword_21701D460);
      v818[8] = sub_2167E7308;
      OUTLINED_FUNCTION_151(v350);
      v819 = 0;
      v822 = 0;
      OUTLINED_FUNCTION_178();
      OUTLINED_FUNCTION_178();
      sub_2166B5298();
      OUTLINED_FUNCTION_101_2();
      v351 = OUTLINED_FUNCTION_130();
      memcpy(v351, v352, 0x51uLL);
      v820 = 1;
      v823 = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A90);
      OUTLINED_FUNCTION_48_7();
      OUTLINED_FUNCTION_157();
      OUTLINED_FUNCTION_3_38();
      OUTLINED_FUNCTION_51();
      v354 = sub_2166B51C0(v353);
      OUTLINED_FUNCTION_10_1();
      v355 = OUTLINED_FUNCTION_212();
      OUTLINED_FUNCTION_1_34();
      v357 = sub_2166C2594(v356);
      v808 = v355;
      v809 = v357;
      OUTLINED_FUNCTION_42_3();
      v358 = swift_getWitnessTable();
      v359 = sub_2166B53E0();
      v806 = v358;
      v807 = v359;
      OUTLINED_FUNCTION_83_5();
      OUTLINED_FUNCTION_36_8();
      v360 = OUTLINED_FUNCTION_130();
      memcpy(v360, v361, 0x52uLL);
      OUTLINED_FUNCTION_51();
      sub_216697664(v362, v363);
      v804 = v354;
      v805 = v358;
      v364 = OUTLINED_FUNCTION_62_2();
      OUTLINED_FUNCTION_2_33();
      v366 = sub_2166B51C0(v365);
      OUTLINED_FUNCTION_24_13();
      OUTLINED_FUNCTION_72_5();
      sub_2166C2718();
      v367 = OUTLINED_FUNCTION_34_13();
      v368(v367);
      v802 = v364;
      v803 = v366;
      goto LABEL_24;
    case 18:
      OUTLINED_FUNCTION_112_1();
      v821[3] = type metadata accessor for RadioPageIntent();
      v821[4] = sub_2166C2594(&unk_280E420F8);
      __swift_allocate_boxed_opaque_existential_1(v821);
      OUTLINED_FUNCTION_110();
      type metadata accessor for ReferrerInfo();
      OUTLINED_FUNCTION_38_2();
      __swift_storeEnumTagSinglePayload(v389, v390, v391, v392);

      OUTLINED_FUNCTION_102_4();
      OUTLINED_FUNCTION_68_1();
      v393 = swift_allocObject();
      OUTLINED_FUNCTION_52_5(v393);
      OUTLINED_FUNCTION_218(xmmword_21701D450);
      v818[8] = sub_2167E6BC8;
      OUTLINED_FUNCTION_151(v394);
      v819 = 1;
      v822 = 1;
      OUTLINED_FUNCTION_178();
      OUTLINED_FUNCTION_178();
      sub_2166B5298();
      OUTLINED_FUNCTION_101_2();
      v395 = OUTLINED_FUNCTION_130();
      memcpy(v395, v396, 0x51uLL);
      v820 = 1;
      v823 = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A90);
      OUTLINED_FUNCTION_48_7();
      OUTLINED_FUNCTION_157();
      OUTLINED_FUNCTION_3_38();
      OUTLINED_FUNCTION_51();
      v398 = sub_2166B51C0(v397);
      OUTLINED_FUNCTION_10_1();
      v399 = OUTLINED_FUNCTION_212();
      OUTLINED_FUNCTION_1_34();
      v401 = sub_2166C2594(v400);
      v816 = v399;
      v817 = v401;
      OUTLINED_FUNCTION_42_3();
      v402 = swift_getWitnessTable();
      v403 = sub_2166B53E0();
      v814 = v402;
      v815 = v403;
      OUTLINED_FUNCTION_83_5();
      OUTLINED_FUNCTION_36_8();
      v404 = OUTLINED_FUNCTION_130();
      memcpy(v404, v405, 0x52uLL);
      OUTLINED_FUNCTION_51();
      sub_216697664(v406, v407);
      v812 = v398;
      v813 = v402;
      v408 = OUTLINED_FUNCTION_62_2();
      OUTLINED_FUNCTION_2_33();
      v410 = sub_2166B51C0(v409);
      OUTLINED_FUNCTION_24_13();
      OUTLINED_FUNCTION_72_5();
      sub_2166C2718();
      v411 = OUTLINED_FUNCTION_34_13();
      v412(v411);
      v810 = v408;
      v811 = v410;
LABEL_24:
      OUTLINED_FUNCTION_61_2();
      sub_2166B58AC();
      OUTLINED_FUNCTION_19_17();
      sub_2166C2718();
      sub_2166CE064(v818);
      sub_2166CE064(v818);
      v262 = OUTLINED_FUNCTION_32_12();
LABEL_39:
      v261(v262, v413);
      break;
    case 19:

      sub_2166BE1F4(v446, v125);
      OUTLINED_FUNCTION_10_1();
      v447 = swift_getWitnessTable();
      v448 = OUTLINED_FUNCTION_90();
      sub_2166C24DC(v448, v449, v447);
      v450 = *(v725 + 8);
      v725 += 8;
      v779 = v450;
      v451 = OUTLINED_FUNCTION_90();
      v452(v451);
      v453 = OUTLINED_FUNCTION_109_0();
      sub_2166C24DC(v453, v454, v447);
      OUTLINED_FUNCTION_1_34();
      v456 = sub_2166C2594(v455);
      OUTLINED_FUNCTION_90();
      OUTLINED_FUNCTION_217();
      sub_2166C2718();
      v830 = v447;
      v831 = v456;
      OUTLINED_FUNCTION_6_1();
      v457 = swift_getWitnessTable();
      v458 = sub_2166B53E0();
      v459 = v734;
      OUTLINED_FUNCTION_164();
      OUTLINED_FUNCTION_110_1();
      sub_2166C2718();
      v460 = OUTLINED_FUNCTION_186();
      v461(v460);
      OUTLINED_FUNCTION_3_38();
      v463 = sub_2166B51C0(v462);
      v828 = v457;
      v829 = v458;
      v464 = v783;
      v465 = swift_getWitnessTable();
      OUTLINED_FUNCTION_223();
      sub_2166C2CB0();
      OUTLINED_FUNCTION_222();
      v466(v459, v464);
      v826 = v463;
      v827 = v465;
      v467 = swift_getWitnessTable();
      OUTLINED_FUNCTION_2_33();
      v469 = sub_2166B51C0(v468);
      OUTLINED_FUNCTION_24_13();
      OUTLINED_FUNCTION_110_1();
      sub_2166C2718();
      v470 = OUTLINED_FUNCTION_34_13();
      v471(v470);
      v824 = v467;
      v472 = v782;
      v825 = v469;
      swift_getWitnessTable();
      sub_2166B58AC();
      OUTLINED_FUNCTION_19_17();
      sub_2166C2718();
      v473 = OUTLINED_FUNCTION_32_12();
      v474(v473);
      v475 = v125;
      v476 = v779;
      v779(v475, v472);
      v476(v128, v472);
      break;
    default:
      v150 = OUTLINED_FUNCTION_90();
      v151(v150);
      OUTLINED_FUNCTION_35_10();
      sub_21683DD48();
      OUTLINED_FUNCTION_10_1();
      v152 = OUTLINED_FUNCTION_253();
      OUTLINED_FUNCTION_1_34();
      v154 = sub_2166C2594(v153);
      OUTLINED_FUNCTION_115();
      sub_2166C2CB0();
      v838 = v152;
      v839 = v154;
      OUTLINED_FUNCTION_42_3();
      v155 = v784;
      v156 = swift_getWitnessTable();
      v157 = sub_2166B53E0();
      v158 = v734;
      OUTLINED_FUNCTION_164();
      sub_2166C2718();
      (*(v690 + 8))(v116, v155);
      OUTLINED_FUNCTION_3_38();
      v160 = sub_2166B51C0(v159);
      v836 = v156;
      v837 = v157;
      v161 = v783;
      v162 = swift_getWitnessTable();
      OUTLINED_FUNCTION_223();
      sub_2166C2CB0();
      OUTLINED_FUNCTION_222();
      v163(v158, v161);
      v834 = v160;
      v835 = v162;
      v164 = OUTLINED_FUNCTION_62_2();
      OUTLINED_FUNCTION_2_33();
      v166 = sub_2166B51C0(v165);
      sub_2166C2718();
      v167 = OUTLINED_FUNCTION_34_13();
      v168(v167);
      v832 = v164;
      v833 = v166;
      OUTLINED_FUNCTION_61_2();
      sub_2166B58AC();
      OUTLINED_FUNCTION_27_12();
      v169 = OUTLINED_FUNCTION_42_11();
      v170(v169, v160);
      OUTLINED_FUNCTION_9_28();
      sub_216845208(v774, v171);
      (*(v692 + 8))(v691, v693);
      break;
  }

  OUTLINED_FUNCTION_3_38();
  v667 = sub_2166B51C0(v666);
  OUTLINED_FUNCTION_10_1();
  v668 = swift_getWitnessTable();
  OUTLINED_FUNCTION_1_34();
  v670 = sub_2166C2594(v669);
  v952 = v668;
  v953 = v670;
  OUTLINED_FUNCTION_42_3();
  v671 = swift_getWitnessTable();
  v672 = sub_2166B53E0();
  v950 = v671;
  v951 = v672;
  v673 = swift_getWitnessTable();
  v948 = v667;
  v949 = v673;
  v674 = swift_getWitnessTable();
  OUTLINED_FUNCTION_2_33();
  v676 = sub_2166B51C0(v675);
  v946 = v674;
  v947 = v676;
  OUTLINED_FUNCTION_90();
  v677 = swift_getWitnessTable();
  v678 = sub_2166B58AC();
  v944 = v677;
  v945 = v678;
  v679 = v781;
  v680 = swift_getWitnessTable();
  sub_2166C24DC(v116, v679, v680);
  (*(v780 + 8))(v116, v679);
  OUTLINED_FUNCTION_26();
}

uint64_t sub_2166BE108()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);
  OUTLINED_FUNCTION_68_1();

  return swift_deallocObject();
}

unint64_t sub_2166BE144()
{
  result = qword_280E45D68;
  if (!qword_280E45D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E45D68);
  }

  return result;
}

uint64_t sub_2166BE1F4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = a1;
  v3 = OUTLINED_FUNCTION_42_29();
  sub_2166BE418(sub_216C15BF8, 0);
  v4 = a2 + v3[14];
  *v4 = sub_216C15E14;
  *(v4 + 1) = 0;
  v4[16] = 0;
  v5 = a2 + v3[15];
  *v5 = sub_217007F94() & 1;
  *(v5 + 1) = v6;
  v5[16] = v7 & 1;
  v8 = a2 + v3[16];
  *v8 = sub_2166BE4D4() & 1;
  *(v8 + 1) = v9;
  v10 = a2 + v3[17];
  *v10 = sub_216C15E40;
  *(v10 + 1) = 0;
  v10[16] = 0;
  v11 = a2 + v3[18];
  *v11 = sub_216C15EB4;
  *(v11 + 1) = 0;
  v11[16] = 0;
  v12 = v3[19];
  if (qword_280E42D18 != -1)
  {
    swift_once();
  }

  v13 = (a2 + v12);

  *v13 = sub_2166C1B60();
  v13[1] = v14;
  v15 = v3[20];
  *(a2 + v15) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7240);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_2166BE418(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  type metadata accessor for FacetBarState(0);

  return sub_217007FF4();
}

uint64_t sub_2166BE49C()
{

  return swift_deallocObject();
}

void *sub_2166BE510(uint64_t a1)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABFBA8);
  swift_allocObject();
  *(v1 + 16) = sub_21700CC44();
  *(v1 + 32) = 0;
  type metadata accessor for UnfairLock();
  v4 = swift_allocObject();
  v5 = swift_slowAlloc();
  *(v4 + 16) = v5;
  *v5 = 0;
  v2[5] = v4;

  v6 = sub_2166BF94C(0, a1);

  v2[6] = v6;
  v2[3] = a1;
  return v2;
}

id sub_2166BE5C8@<X0>(void *a1@<X8>)
{
  v2 = objc_allocWithZone(type metadata accessor for SocialBadgingMapRequestCoordinator());

  result = sub_2166BE660(v3);
  *a1 = result;
  return result;
}

void *sub_2166BE620()
{
  type metadata accessor for SearchScopeBar.Manager(0);
  swift_allocObject();
  result = sub_2166BEDBC();
  qword_280E73D58 = result;
  return result;
}

id sub_2166BE660(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB770);
  OUTLINED_FUNCTION_1();
  v45 = v4;
  v46 = v3;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v5);
  v44 = &v33 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABCD60);
  OUTLINED_FUNCTION_1();
  v42 = v8;
  v43 = v7;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v9);
  v41 = &v33 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC5620);
  OUTLINED_FUNCTION_1();
  v38 = v12;
  v39 = v11;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v13);
  v37 = &v33 - v14;
  sub_21700EE74();
  OUTLINED_FUNCTION_1();
  v34 = v16;
  v35 = v15;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_7();
  v33 = v18 - v17;
  sub_21700EE44();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_7();
  v20 = sub_21700B5E4();
  MEMORY[0x28223BE20](v20 - 8);
  OUTLINED_FUNCTION_7();
  v21 = OBJC_IVAR____TtC7MusicUI34SocialBadgingMapRequestCoordinator_badgingMap;
  v22 = type metadata accessor for SocialBadgingMap();
  __swift_storeEnumTagSinglePayload(&v1[v21], 1, 1, v22);
  v23 = OBJC_IVAR____TtC7MusicUI34SocialBadgingMapRequestCoordinator_lock;
  type metadata accessor for UnfairLock();
  OUTLINED_FUNCTION_143();
  v24 = swift_allocObject();
  v25 = swift_slowAlloc();
  *(v24 + 16) = v25;
  *v25 = 0;
  *&v1[v23] = v24;
  *&v1[OBJC_IVAR____TtC7MusicUI34SocialBadgingMapRequestCoordinator_pendingBadgingRequest] = 0;
  v26 = MEMORY[0x277D84F90];
  *&v1[OBJC_IVAR____TtC7MusicUI34SocialBadgingMapRequestCoordinator_pendingUserSocialProfileFetchRequests] = MEMORY[0x277D84F90];
  v40 = a1;
  *&v1[OBJC_IVAR____TtC7MusicUI34SocialBadgingMapRequestCoordinator_objectGraph] = a1;
  sub_2166AF2EC();

  sub_21700B5C4();
  v47[0] = v26;
  sub_2166AF330();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA810);
  sub_2166D9530(&qword_280E29E10, &qword_27CABA810);
  sub_21700F214();
  (*(v34 + 104))(v33, *MEMORY[0x277D85260], v35);
  *&v1[OBJC_IVAR____TtC7MusicUI34SocialBadgingMapRequestCoordinator_workQueue] = sub_21700EEA4();
  v48.receiver = v1;
  v48.super_class = ObjectType;
  v27 = objc_msgSendSuper2(&v48, sel_init);
  sub_2166BF4A4(0);

  sub_2166C0514(type metadata accessor for SubscriptionStatusCoordinator);

  OUTLINED_FUNCTION_143();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA4C8);
  sub_2166D9530(&qword_280E2A310, &qword_27CABA4C8);
  OUTLINED_FUNCTION_34_35();
  v28 = v37;
  OUTLINED_FUNCTION_28_46();

  __swift_destroy_boxed_opaque_existential_1Tm(v47);
  (*(v38 + 8))(v28, v39);
  v29 = sub_2166C0514(type metadata accessor for UserSocialProfileCoordinator);

  OUTLINED_FUNCTION_143();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABCD68);
  sub_2166D9530(&qword_280E2A2F0, &qword_27CABCD68);
  OUTLINED_FUNCTION_34_35();
  v30 = v41;
  OUTLINED_FUNCTION_28_46();

  __swift_destroy_boxed_opaque_existential_1Tm(v47);
  (*(v42 + 8))(v30, v43);
  sub_2166C0514(type metadata accessor for SocialGraphController);

  OUTLINED_FUNCTION_143();
  swift_allocObject();
  swift_unknownObjectWeakInit();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB790);
  sub_2166D9530(&qword_280E2A2F8, &qword_27CABB790);
  sub_21700D1D4();
  v31 = v44;
  sub_21700D1F4();

  __swift_destroy_boxed_opaque_existential_1Tm(v47);
  (*(v45 + 8))(v31, v46);
  return v27;
}

uint64_t sub_2166BED88()
{
  MEMORY[0x21CEA1520](v0 + 16);
  OUTLINED_FUNCTION_143();

  return swift_deallocObject();
}

void *sub_2166BEDBC()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABE1F0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v26 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9E80);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v26 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACD4F8);
  v27 = *(v9 - 8);
  v28 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v26 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACD500);
  v29 = *(v12 - 8);
  v30 = v12;
  MEMORY[0x28223BE20](v12);
  v14 = &v26 - v13;
  v15 = MEMORY[0x277D84F90];
  v0[2] = MEMORY[0x277D84F90];
  if (sub_2166BF3C8(v15))
  {
    sub_216F0EAF8(MEMORY[0x277D84F90]);
  }

  else
  {
    v16 = MEMORY[0x277D84FA0];
  }

  v0[3] = v16;
  v0[4] = 0;
  if (qword_280E464C0 != -1)
  {
    swift_once();
  }

  v0[5] = qword_280E73DD8;
  v17 = objc_opt_self();

  v0[6] = [v17 sharedRestrictionsMonitor];
  sub_217006704();
  sub_2166C0A20();
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC3BD0);
  sub_217007DB4();
  swift_endAccess();

  sub_2166D9530(&qword_280E484A0, &qword_27CAB9E80);
  sub_217007E74();
  (*(v6 + 8))(v8, v5);
  sub_216685F4C(0, &qword_280E29CD0);
  v18 = sub_21700EE84();
  v31 = v18;
  v19 = sub_21700EE64();
  __swift_storeEnumTagSinglePayload(v4, 1, 1, v19);
  sub_2166D9530(&qword_280E48598, &qword_27CACD4F8);
  sub_2166C0E74();
  v20 = v28;
  sub_217007E54();
  sub_216697664(v4, &qword_27CABE1F0);

  (*(v27 + 8))(v11, v20);
  swift_allocObject();
  swift_weakInit();
  sub_2166D9530(&qword_280E48538, &qword_27CACD500);
  v21 = v30;
  sub_217007E84();

  (*(v29 + 8))(v14, v21);
  swift_beginAccess();
  sub_217007D24();
  swift_endAccess();

  v22 = [objc_opt_self() defaultCenter];
  v23 = *MEMORY[0x277CD5CF0];

  v24 = sub_2166C1150();
  [v22 addObserver:v1 selector:sel_allowMusicSubscriptionDidChange name:v23 object:v24];

  sub_2166C0A20();
  LOBYTE(v22) = sub_2166C129C();

  sub_2166C1368(v22 & 1);
  return v1;
}

uint64_t sub_2166BF390()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_2166BF3E4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_2170061E4();
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2166BF480(unint64_t a1)
{
  if (a1 >> 62)
  {
    return sub_21700F2B4();
  }

  else
  {
    return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }
}

uint64_t sub_2166BF4A4(char a1)
{
  sub_2166BF634(a1);
  v2 = *&v1[OBJC_IVAR____TtC7MusicUI34SocialBadgingMapRequestCoordinator_workQueue];
  v8[3] = sub_2166AF2EC();
  v8[4] = MEMORY[0x277D225C0];
  v8[0] = v2;
  OUTLINED_FUNCTION_143();
  v3 = swift_allocObject();
  OUTLINED_FUNCTION_38_40(v3);
  v4 = v2;
  v5 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1228);
  v6 = sub_21700E1B4();

  __swift_destroy_boxed_opaque_existential_1Tm(v8);
  return v6;
}

uint64_t sub_2166BF574()
{
  OUTLINED_FUNCTION_143();

  return swift_deallocObject();
}

void *sub_2166BF5A8()
{
  type metadata accessor for MusicUINetworkConnectivityMonitor();
  swift_allocObject();
  result = sub_2166BFEAC();
  qword_280E73DD8 = result;
  return result;
}

uint64_t type metadata accessor for MusicUINetworkConnectivityMonitor()
{
  result = qword_280E46498;
  if (!qword_280E46498)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2166BF634(char a1)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1850);
  v4 = sub_21700E244();
  v5 = *&v1[OBJC_IVAR____TtC7MusicUI34SocialBadgingMapRequestCoordinator_lock];
  v6 = *(v5 + 16);
  v7 = v2;

  os_unfair_lock_lock(v6);
  sub_2166C00F8(v7);
  os_unfair_lock_unlock(*(v5 + 16));

  v8 = sub_2166C0514(type metadata accessor for UserSocialProfileCoordinator);
  sub_2166B8854(0);

  v9 = swift_allocObject();
  *(v9 + 16) = v7;
  *(v9 + 24) = a1;
  *(swift_allocObject() + 16) = v7;
  v10 = sub_2166AF2EC();
  v11 = v7;
  v12 = sub_21700EE84();
  v14[3] = v10;
  v14[4] = MEMORY[0x277D225C0];
  v14[0] = v12;
  sub_21700E1C4();

  __swift_destroy_boxed_opaque_existential_1Tm(v14);
  return v4;
}

uint64_t sub_2166BF7D0()
{

  return swift_deallocObject();
}

void sub_2166BF80C()
{
  sub_2166BF8FC();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_2166BF8B4(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_2166BF8FC()
{
  if (!qword_280E48380)
  {
    v0 = sub_217007E14();
    if (!v1)
    {
      atomic_store(v0, &qword_280E48380);
    }
  }
}

uint64_t sub_2166BF94C(char a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAC0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v34 - v5;
  v7 = sub_217007C24();
  OUTLINED_FUNCTION_1();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_7();
  v13 = v12 - v11;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB94C8);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14 - 8);
  v18 = &v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v20 = &v34 - v19;
  if (qword_280E485B8 != -1)
  {
    OUTLINED_FUNCTION_122();
  }

  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB94D0);
  v22 = __swift_project_value_buffer(v21, qword_280E73E20);
  (*(v9 + 16))(v13, v22, v7);
  sub_21669E79C(v13, "BootstrapJSStack", 16, 2, v20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA7F0);
  sub_21700D4D4();
  sub_21700E094();
  v23 = v35;
  if (v35)
  {
    if (a1)
    {
      if (qword_280E40F40 != -1)
      {
        OUTLINED_FUNCTION_1_164();
      }

      v24 = sub_217007CA4();
      __swift_project_value_buffer(v24, qword_280E40F48);
      v25 = sub_217007C84();
      v26 = sub_21700EDA4();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = OUTLINED_FUNCTION_43();
        *v27 = 0;
        _os_log_impl(&dword_216679000, v25, v26, "Forcing reload of JavaScript bundle.", v27, 2u);
        OUTLINED_FUNCTION_6();
      }

      sub_216B88994();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1870);
    v28 = sub_21700E244();
    sub_21700EA44();
    v29 = sub_21700EA74();
    __swift_storeEnumTagSinglePayload(v6, 0, 1, v29);
    sub_216681B04(v20, v18, &qword_27CAB94C8);
    v30 = (*(v15 + 80) + 48) & ~*(v15 + 80);
    v31 = (v16 + v30 + 7) & 0xFFFFFFFFFFFFFFF8;
    v32 = swift_allocObject();
    v32[2] = 0;
    v32[3] = 0;
    v32[4] = v23;
    v32[5] = a2;
    sub_2166C122C(v18, v32 + v30);
    *(v32 + v31) = v28;

    sub_21677BBA0();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1870);
    sub_216BE16E8();
    swift_allocError();
    v28 = sub_21700E1E4();
  }

  sub_216697664(v20, &qword_27CAB94C8);
  return v28;
}

uint64_t sub_2166BFD94()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB94C8) - 8);
  v2 = (*(v1 + 80) + 48) & ~*(v1 + 80);
  swift_unknownObjectRelease();

  sub_217007C24();
  OUTLINED_FUNCTION_34();
  (*(v3 + 8))(v0 + v2);

  return swift_deallocObject();
}

void *sub_2166BFEAC()
{
  v1 = v0;
  v2 = *v0;
  *(v1 + OBJC_IVAR____TtC7MusicUI33MusicUINetworkConnectivityMonitor_kvoToken) = 0;
  result = [objc_opt_self() sharedDefaultEvaluator];
  if (result)
  {
    *(v1 + OBJC_IVAR____TtC7MusicUI33MusicUINetworkConnectivityMonitor_networkPathEvaluator) = result;
    v4 = OBJC_IVAR____TtC7MusicUI33MusicUINetworkConnectivityMonitor_networkPathEvaluator;
    v5 = [result path];
    [v5 status];

    swift_beginAccess();
    sub_217007DA4();
    swift_endAccess();
    v6 = *(v1 + v4);
    swift_getKeyPath();
    v7 = swift_allocObject();
    swift_weakInit();
    v8 = swift_allocObject();
    *(v8 + 16) = v7;
    *(v8 + 24) = v2;
    v9 = v6;
    v10 = sub_217005D64();

    v11 = *(v1 + OBJC_IVAR____TtC7MusicUI33MusicUINetworkConnectivityMonitor_kvoToken);
    *(v1 + OBJC_IVAR____TtC7MusicUI33MusicUINetworkConnectivityMonitor_kvoToken) = v10;

    return v1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2166C0088()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_2166C00C0()
{

  return swift_deallocObject();
}

uint64_t sub_2166C00F8(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC7MusicUI34SocialBadgingMapRequestCoordinator_pendingUserSocialProfileFetchRequests;
  swift_beginAccess();

  MEMORY[0x21CE9F610](v3);
  sub_2166C0198(*((*(a1 + v2) & 0xFFFFFFFFFFFFFF8) + 0x10));
  sub_21700E8C4();
  return swift_endAccess();
}

uint64_t sub_2166C01AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA2F0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v22 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAC0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v22 - v12;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v15 = result;
    v16 = sub_21700EA74();
    __swift_storeEnumTagSinglePayload(v13, 1, 1, v16);
    (*(v7 + 16))(v10, a2, v6);
    sub_21700EA34();

    v17 = sub_21700EA24();
    v18 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    v19 = (v8 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
    v22 = a4;
    v20 = swift_allocObject();
    v21 = MEMORY[0x277D85700];
    *(v20 + 16) = v17;
    *(v20 + 24) = v21;
    (*(v7 + 32))(v20 + v18, v10, v6);
    *(v20 + v19) = v15;
    *(v20 + ((v19 + 15) & 0xFFFFFFFFFFFFFFF8)) = v22;
    sub_21677BBA0();
  }

  return result;
}

uint64_t sub_2166C03EC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA2F0);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_2166C04E0(uint64_t result)
{
  if (result + 1 > *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    return sub_21700E874();
  }

  return result;
}

uint64_t sub_2166C0514(void (*a1)(void))
{
  a1(0);
  sub_21700D4D4();
  OUTLINED_FUNCTION_8();
  sub_21700E094();
  return v2;
}

double sub_2166C0578@<D0>(_OWORD *a1@<X8>)
{
  v3 = *(v1 + 56);
  v4 = *(v3 + 16);

  os_unfair_lock_lock(v4);
  v5 = *(v1 + 112);
  v14 = *(v1 + 96);
  v15 = v5;
  v6 = *(v1 + 80);
  v12 = *(v1 + 64);
  v13 = v6;
  v7 = *(v3 + 16);
  sub_216681B64(&v12, &v11, &qword_27CAC5980);
  os_unfair_lock_unlock(v7);

  v8 = v13;
  *a1 = v12;
  a1[1] = v8;
  result = *&v14;
  v10 = v15;
  a1[2] = v14;
  a1[3] = v10;
  return result;
}

_OWORD *OUTLINED_FUNCTION_39_4(uint64_t a1, uint64_t a2)
{
  *(v2 - 296) = a1;
  *(v2 - 288) = a2;

  return sub_2166EF9C4((v2 - 296), (v2 - 328));
}

uint64_t OUTLINED_FUNCTION_39_7()
{

  return sub_217009554();
}

uint64_t OUTLINED_FUNCTION_39_11(uint64_t a1)
{
  v4 = v2 + *(a1 + 36);

  return sub_2168EB090(v1, v4);
}

uint64_t OUTLINED_FUNCTION_39_12(uint64_t a1)
{
  v4 = (v2 + *(a1 + 20));
  *v4 = *(v3 - 312);
  v4[1] = v1;
  __swift_storeEnumTagSinglePayload(v2, 0, 1, a1);
}

uint64_t OUTLINED_FUNCTION_176_0(uint64_t a1)
{

  return __swift_getEnumTagSinglePayload(a1, 1, v1);
}

uint64_t OUTLINED_FUNCTION_39_19(uint64_t a1)
{
  *(v1 - 384) = a1;

  return swift_storeEnumTagMultiPayload();
}

uint64_t OUTLINED_FUNCTION_39_20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  __swift_storeEnumTagSinglePayload(a1, 1, 1, a4);
}

uint64_t OUTLINED_FUNCTION_39_21(char a1)
{
  *(v2 - 208) = v1;
  *(v2 - 232) = a1 & 1;
  sub_2166EF9C4((v2 - 232), (v2 - 184));

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_39_26()
{

  return swift_arrayInitWithCopy();
}

uint64_t OUTLINED_FUNCTION_39_27()
{

  return swift_getOpaqueTypeConformance2();
}

uint64_t OUTLINED_FUNCTION_39_28(unint64_t *a1)
{

  return sub_216C2BFE0(a1, v1);
}

_OWORD *OUTLINED_FUNCTION_39_31()
{

  return sub_2166EF9C4((v0 - 96), (v0 - 144));
}

uint64_t OUTLINED_FUNCTION_39_33()
{
  type metadata accessor for PosterLockup._StorageClass(0);

  return swift_allocObject();
}

void OUTLINED_FUNCTION_39_37(uint64_t a1@<X8>)
{
  v3 = v2 + a1;
  *v3 = v1;
  *(v3 + 8) = 0;
}

uint64_t OUTLINED_FUNCTION_691()
{
}

uint64_t sub_2166C0A20()
{
  swift_getKeyPath();
  sub_2166C0AF0(&unk_280E42D08, type metadata accessor for SearchScopeBar.Manager);
  sub_2170066D4();
}

uint64_t sub_2166C0AC4()
{
  OUTLINED_FUNCTION_0_0();
  result = sub_2166C0A20();
  *v0 = result;
  return result;
}

uint64_t sub_2166C0AF0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t OUTLINED_FUNCTION_57_4()
{
  sub_2166EF9C4((v0 - 296), (v0 - 328));

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_57_5()
{
  *(v1 + 744) = *(v6 + *(v5 + 28));
  *(v1 + 176) = v7;
  *(v1 + 184) = v4;
  *(v1 + 192) = v3;
  *(v1 + 200) = v2;
  return v0 + 48;
}

uint64_t OUTLINED_FUNCTION_57_6()
{

  return swift_storeEnumTagMultiPayload();
}

uint64_t OUTLINED_FUNCTION_57_8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 - 96) = a5;

  return sub_21700D574();
}

uint64_t OUTLINED_FUNCTION_57_13()
{

  return sub_216697664(v1, v0);
}

uint64_t OUTLINED_FUNCTION_57_14()
{

  return sub_2166A6EA4();
}

uint64_t *OUTLINED_FUNCTION_57_19()
{
  *(v1 - 88) = v0;

  return __swift_allocate_boxed_opaque_existential_1Tm((v1 - 112));
}

uint64_t OUTLINED_FUNCTION_57_20()
{

  return swift_arrayDestroy();
}

unint64_t sub_2166C0DB4(char a1)
{
  result = 0x6564696C67;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000013;
      break;
    case 2:
      result = 0x6373627553746F6ELL;
      break;
    case 3:
      result = 0x6269726373627573;
      break;
    case 4:
      result = 0x6E776F6E6B6E75;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_2166C0E74()
{
  result = qword_280E29CD8;
  if (!qword_280E29CD8)
  {
    sub_2166AF2EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E29CD8);
  }

  return result;
}

void OUTLINED_FUNCTION_51_0()
{
  *(v2 - 112) = 0;
  *(v2 - 104) = 0;
  *(v2 - 96) = v0;
  *(v2 - 88) = v1;
}

uint64_t OUTLINED_FUNCTION_51_2()
{
  *(v0 + 56) = *(v1 - 88);

  return sub_21700E094();
}

uint64_t OUTLINED_FUNCTION_51_4()
{

  return sub_21700D244();
}

uint64_t OUTLINED_FUNCTION_51_5()
{

  return sub_2167B7D58(v0, v1 - 168);
}

uint64_t OUTLINED_FUNCTION_51_6()
{

  return sub_2166C2CB0();
}

void OUTLINED_FUNCTION_51_9(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_51_12()
{

  return swift_getOpaqueTypeConformance2();
}

uint64_t OUTLINED_FUNCTION_51_13(uint64_t a1, uint64_t a2)
{

  return sub_216DDA0F4(v2, a2);
}

_OWORD *OUTLINED_FUNCTION_51_15()
{

  return sub_2166EF9C4((v0 - 144), (v0 - 96));
}

uint64_t OUTLINED_FUNCTION_51_16()
{
  type metadata accessor for PosterLockup(0);

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_66_0()
{
  v3 = (v0 + *(v1 + 20));
  *v3 = 0;
  v3[1] = 0;
  v4 = (v0 + *(v1 + 24));
  *v4 = 0;
  v4[1] = 0;

  return type metadata accessor for AnyAction(0);
}

uint64_t OUTLINED_FUNCTION_51_18()
{

  return sub_216FC320C();
}

uint64_t sub_2166C10E8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABE1F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_2166C1150()
{
  swift_getKeyPath();
  sub_2166C0AF0(&unk_280E42D08, type metadata accessor for SearchScopeBar.Manager);
  sub_2170066D4();

  v1 = *(v0 + 48);

  return v1;
}

id sub_2166C1200()
{
  OUTLINED_FUNCTION_0_0();
  result = sub_2166C1150();
  *v0 = result;
  return result;
}

uint64_t sub_2166C122C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB94C8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2166C129C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_217007DE4();

  return v1;
}

uint64_t sub_2166C1310@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2166C129C();
  *a1 = result & 1;
  return result;
}

void sub_2166C1368(char a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD188);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_217013D90;
  *(v2 + 32) = 256;
  v3 = v2 + 32;
  v16 = v2;
  if (a1)
  {
    v4 = sub_2166C1150();
    v5 = [v4 allowsMusicSubscription];

    if (v5)
    {
LABEL_27:

      sub_2166C174C(v2);
      return;
    }

    v6 = *(v2 + 16);
    if (!v6)
    {
      v7 = 0;
LABEL_26:
      sub_216DD3AC8(v7);
      v2 = v16;
      goto LABEL_27;
    }
  }

  else
  {
    v6 = 2;
  }

  v7 = 0;
  while (1)
  {
    if (v7 >= *(v2 + 16))
    {
      __break(1u);
      goto LABEL_31;
    }

    if ((*(v3 + v7) & 1) == 0)
    {
      break;
    }

    v8 = sub_21700F7D4();

    if (v8)
    {
      goto LABEL_13;
    }

    if (v6 == ++v7)
    {
      v7 = *(v2 + 16);
      goto LABEL_26;
    }
  }

LABEL_13:
  v9 = *(v2 + 16);
  if (v9 - 1 == v7)
  {
    goto LABEL_26;
  }

  v10 = v7 + 33;
  while (1)
  {
    v11 = v10 - 32;
    if (v10 - 32 >= v9)
    {
      break;
    }

    if (*(v2 + v10) == 1 && (sub_21700F7D4() & 1) == 0)
    {
      if (v11 != v7)
      {
        if ((v7 & 0x8000000000000000) != 0)
        {
          goto LABEL_32;
        }

        v12 = *(v2 + 16);
        if (v7 >= v12)
        {
          goto LABEL_33;
        }

        if (v11 >= v12)
        {
          goto LABEL_34;
        }

        v13 = *(v3 + v7);
        *(v3 + v7) = *(v2 + v10);
        *(v2 + v10) = v13;
      }

      ++v7;
    }

    v9 = *(v2 + 16);
    v14 = v10 + 1;
    v15 = v10 - 31;
    ++v10;
    if (v15 == v9)
    {
      v16 = v2;
      if ((v14 - 32) < v7)
      {
        goto LABEL_35;
      }

      goto LABEL_26;
    }
  }

LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
}

uint64_t sub_2166C1594()
{

  sub_21700E224();
}

uint64_t sub_2166C15D8@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_21700D574();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = v11 - v7;
  sub_21700D4D4();
  sub_21700E094();
  (*(v3 + 16))(v6, v8, v2);
  sub_21700D844();
  swift_allocObject();
  v9 = sub_21700D834();
  sub_2166C25D8();
  result = (*(v3 + 8))(v8, v2);
  *a1 = v9;
  return result;
}

uint64_t sub_2166C174C(uint64_t a1)
{
  v3 = sub_21700DF14();
  v4 = sub_2166C18AC(v3, a1);

  if (v4)
  {
    *(v1 + 16) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_2166C1994();
  }
}

uint64_t sub_2166C1840()
{
  OUTLINED_FUNCTION_0_0();
  result = sub_216F0FE50();
  *v0 = result;
  return result;
}

BOOL sub_2166C186C()
{
  v0 = sub_21700E514();
  v2 = sub_2166C1A64(v0, v1);

  return (v2 & 1) == 0;
}

uint64_t sub_2166C18AC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 32);
    v4 = (a2 + 32);
    do
    {
      if (*v3)
      {
        v5 = 0x7972617262696CLL;
      }

      else
      {
        v5 = 0x676F6C61746163;
      }

      if (*v4)
      {
        v6 = 0x7972617262696CLL;
      }

      else
      {
        v6 = 0x676F6C61746163;
      }

      if (v5 == v6)
      {
        swift_bridgeObjectRelease_n();
      }

      else
      {
        v7 = sub_21700F7D4();
        swift_bridgeObjectRelease_n();
        if ((v7 & 1) == 0)
        {
          return 0;
        }
      }

      ++v3;
      ++v4;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t sub_2166C1994()
{
  OUTLINED_FUNCTION_3_180();
  sub_2166C0AF0(v0, v1);
  return sub_2170066C4();
}

id sub_2166C1A64(uint64_t a1, uint64_t a2)
{
  result = [objc_opt_self() sharedConnection];
  if (result)
  {
    v5 = result;
    v6 = sub_2166C1ADC(a1, a2, result);

    return (v6 != 2);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_2166C1ADC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_21700E4D4();
  v5 = [a3 effectiveBoolValueForSetting_];

  return v5;
}

uint64_t sub_2166C1B24(uint64_t a1, uint64_t a2)
{
  *(a1 + 16) = a2;
  sub_21700DF14();
}

uint64_t sub_2166C1BB8(char a1)
{
  result = 0x616974696E696E75;
  switch(a1)
  {
    case 1:
      result = 0x676E697461647075;
      break;
    case 2:
      result = 0x6F5464656C696166;
      break;
    case 3:
      result = 0x7964616572;
      break;
    case 4:
      result = 0x69446C6169636F73;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_164_0()
{
}

uint64_t OUTLINED_FUNCTION_164_1()
{
  *(v1 - 136) = *(v0 + 152);
}

uint64_t sub_2166C1D2C(char a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC7MusicUI28UserSocialProfileCoordinator_state);
  *(v1 + OBJC_IVAR____TtC7MusicUI28UserSocialProfileCoordinator_state) = a1;
  return sub_2166C1D44(v2);
}

uint64_t sub_2166C1D44(char a1)
{
  v2 = v1;
  v4 = sub_21700B5A4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v67 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_21700B5E4();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v66 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  os_unfair_lock_assert_owner(*(*&v2[OBJC_IVAR____TtC7MusicUI28UserSocialProfileCoordinator_lock] + 16));
  v10 = OBJC_IVAR____TtC7MusicUI28UserSocialProfileCoordinator_state;
  v11 = v2[OBJC_IVAR____TtC7MusicUI28UserSocialProfileCoordinator_state];
  v12 = sub_2166C1BB8(a1);
  v14 = v13;
  if (v12 != sub_2166C1BB8(v11) || v14 != v15)
  {
    v17 = sub_21700F7D4();

    if (v17)
    {
      return result;
    }

    v61 = v8;
    v56 = v10;
    if (qword_280E31C10 != -1)
    {
      swift_once();
    }

    v19 = sub_217007CA4();
    __swift_project_value_buffer(v19, qword_280E73BC0);
    v20 = v2;
    v21 = sub_217007C84();
    v22 = sub_21700EDA4();
    v55 = v20;

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v65 = v5;
      v24 = v23;
      v25 = swift_slowAlloc();
      aBlock = v25;
      *v24 = 136446466;
      v26 = sub_2166A85FC(v12, v14, &aBlock);

      *(v24 + 4) = v26;
      *(v24 + 12) = 2082;
      v27 = v56;
      v28 = sub_2166C1BB8(v2[v56]);
      v30 = sub_2166A85FC(v28, v29, &aBlock);

      *(v24 + 14) = v30;
      _os_log_impl(&dword_216679000, v21, v22, "State changed from: %{public}s to %{public}s", v24, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x21CEA1440](v25, -1, -1);
      v31 = v24;
      v5 = v65;
      MEMORY[0x21CEA1440](v31, -1, -1);
    }

    else
    {

      v27 = v56;
    }

    v33 = sub_2166C1BB8(v2[v27]) == 0x6F5464656C696166 && v32 == 0xEC00000064616F4CLL;
    v34 = v61;
    if (v33)
    {

      v36 = v55;
    }

    else
    {
      v35 = sub_21700F7D4();

      v36 = v55;
      if ((v35 & 1) == 0)
      {
LABEL_22:
        v37 = OBJC_IVAR____TtC7MusicUI28UserSocialProfileCoordinator_pendingStatePromises;
        swift_beginAccess();
        if (sub_2166BF3C8(*&v36[v37]))
        {
          if (sub_2166C1BB8(v2[v27]) == 0x676E697461647075 && v38 == 0xE800000000000000)
          {
LABEL_37:

            goto LABEL_38;
          }

          v40 = sub_21700F7D4();

          if ((v40 & 1) == 0)
          {
            v64 = v2[v27];
            v65 = *&v36[v37];
            v41 = sub_2166BF3C8(v65);
            if (v41)
            {
              v42 = v41;
              v53 = v37;
              v63 = v4;
              v54 = v2;
              result = sub_216685F4C(0, &qword_280E29CD0);
              v62 = result;
              if (v42 < 1)
              {
                __break(1u);
                return result;
              }

              v58 = v70;
              v59 = v65 & 0xC000000000000001;
              v57 = (v5 + 8);
              sub_21700DF14();
              v43 = 0;
              v60 = v42;
              v61 = v7;
              do
              {
                if (v59)
                {
                  v44 = MEMORY[0x21CEA0220](v43, v65);
                }

                else
                {
                  v44 = *(v65 + 8 * v43 + 32);
                }

                ++v43;
                v45 = sub_21700EE84();
                v46 = swift_allocObject();
                *(v46 + 16) = v44;
                *(v46 + 24) = v64;
                v70[2] = sub_216CB5E04;
                v70[3] = v46;
                aBlock = MEMORY[0x277D85DD0];
                v69 = 1107296256;
                v70[0] = sub_2169F0990;
                v70[1] = &block_descriptor_35;
                v47 = _Block_copy(&aBlock);

                v48 = v66;
                sub_21700B5C4();
                aBlock = MEMORY[0x277D84F90];
                sub_216CB5E10();
                __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABC970);
                sub_2166D9530(&qword_280E29E50, &unk_27CABC970);
                v49 = v67;
                v50 = v63;
                sub_21700F214();
                MEMORY[0x21CE9FCB0](0, v48, v49, v47);
                _Block_release(v47);

                (*v57)(v49, v50);
                (*(v34 + 8))(v48, v61);
              }

              while (v60 != v43);

              v2 = v54;
              v27 = v56;
              v36 = v55;
              v37 = v53;
            }

            *&v36[v37] = MEMORY[0x277D84F90];
            goto LABEL_37;
          }
        }

LABEL_38:
        aBlock = sub_2166C1BB8(v2[v27]);
        v69 = v51;
        sub_21700CC34();
      }
    }

    sub_216CB040C();
    sub_216F07EC8();

    goto LABEL_22;
  }
}

uint64_t sub_2166C24A4()
{

  return swift_deallocObject();
}

uint64_t storeEnumTagSinglePayload for GridItemSpacing(uint64_t result, int a2, int a3)
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

void sub_2166C2530(__n128 *a1@<X8>)
{
  a1[1].n128_u64[1] = &unk_28291DCE8;
  a1[2].n128_u64[0] = &off_28291DD90;
  OUTLINED_FUNCTION_3_62(a1, xmmword_21702B1C0);
}

unint64_t sub_2166C2594(uint64_t a1)
{
  result = OUTLINED_FUNCTION_8_10(a1);
  if (!result)
  {
    v3(255);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

void sub_2166C25D8()
{
  v1 = objc_opt_self();
  v2 = [v1 defaultCenter];
  if (qword_280E38808 != -1)
  {
    swift_once();
  }

  [v2 addObserver:v0 selector:sel_reportBecameActive name:qword_280E73C70 object:0];

  v3 = [v1 defaultCenter];
  v4 = v3;
  if (qword_280E38800 != -1)
  {
    swift_once();
    v3 = v4;
  }

  [v3 addObserver:v0 selector:sel_reportResignedActive name:qword_280E73C68 object:0];
}

uint64_t sub_2166C2718()
{
  OUTLINED_FUNCTION_29_40();
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v0);
  OUTLINED_FUNCTION_25_1();
  OUTLINED_FUNCTION_50();
  OUTLINED_FUNCTION_47_2();
  v1();
  swift_storeEnumTagMultiPayload();
  return OUTLINED_FUNCTION_32_29();
}

char *sub_2166C27C0@<X0>(char **a1@<X8>)
{
  type metadata accessor for SocialBadgingRequestCoordinator();
  swift_allocObject();

  result = sub_2166C291C(v2);
  *a1 = result;
  return result;
}

double OUTLINED_FUNCTION_102_4()
{

  return sub_2166CBA00(v1, v0 + 1280);
}

uint64_t OUTLINED_FUNCTION_102_5()
{

  return sub_216697664(v0, v1);
}

uint64_t OUTLINED_FUNCTION_102_6(unint64_t *a1, uint64_t *a2)
{

  return sub_2166D9530(a1, a2);
}

uint64_t OUTLINED_FUNCTION_102_8()
{
  v4 = *(v2 - 360);

  return sub_216681B04(v1, v4, v0);
}

__n128 *OUTLINED_FUNCTION_102_11(__n128 *result, __n128 a2)
{
  result[1] = a2;
  *(result->n128_u64 + v2) = 1;
  return result;
}

char *sub_2166C291C(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAC0);
  OUTLINED_FUNCTION_36(v4);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_12_2();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1A78);
  OUTLINED_FUNCTION_1();
  v8 = v7;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v9);
  v11 = &v25 - v10;
  if (qword_280E29C60 != -1)
  {
    OUTLINED_FUNCTION_147_3();
  }

  v12 = qword_280E739E8;
  *(v2 + 2) = qword_280E739E8;
  *(v2 + 5) = 0;
  type metadata accessor for UnfairLock();
  v13 = swift_allocObject();
  v14 = v12;
  v15 = swift_slowAlloc();
  *(v13 + 16) = v15;
  *v15 = 0;
  *(v2 + 6) = v13;
  v16 = OBJC_IVAR____TtC7MusicUI31SocialBadgingRequestCoordinator__updatedRequestDescriptors;
  v17 = MEMORY[0x277D84FA0];
  v26 = MEMORY[0x277D84FA0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1838);
  sub_217007DA4();
  (*(v8 + 32))(&v2[v16], v11, v6);
  v18 = OBJC_IVAR____TtC7MusicUI31SocialBadgingRequestCoordinator_catalogMusicItemProvider;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1A98);
  swift_allocObject();
  *&v2[v18] = sub_2166C3224(0);
  *&v2[OBJC_IVAR____TtC7MusicUI31SocialBadgingRequestCoordinator__pendingIdentifiers] = v17;
  v19 = OBJC_IVAR____TtC7MusicUI31SocialBadgingRequestCoordinator__badgingMap;
  v20 = type metadata accessor for SocialBadgingMap();
  __swift_storeEnumTagSinglePayload(&v2[v19], 1, 1, v20);
  *(v2 + 3) = a1;
  type metadata accessor for SocialBadgingMapRequestCoordinator();
  sub_21700D4D4();

  sub_21700E094();
  *(v2 + 4) = v26;
  v21 = sub_21700EA74();
  OUTLINED_FUNCTION_184_0(v21);
  v22 = swift_allocObject();
  swift_weakInit();
  v23 = swift_allocObject();
  v23[2] = 0;
  v23[3] = 0;
  v23[4] = v22;
  OUTLINED_FUNCTION_9_46();
  sub_21677BBA0();
  OUTLINED_FUNCTION_70_0();

  *(v2 + 5) = v22;

  return v2;
}

uint64_t sub_2166C2BF4()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t OUTLINED_FUNCTION_142_1()
{
}

uint64_t OUTLINED_FUNCTION_142_2()
{

  return sub_2166A6EA4();
}

uint64_t sub_2166C2CB0()
{
  OUTLINED_FUNCTION_29_40();
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_25_1();
  OUTLINED_FUNCTION_50();
  (*(v4 + 16))(v2, v1, v0);
  swift_storeEnumTagMultiPayload();
  return OUTLINED_FUNCTION_32_29();
}

uint64_t OUTLINED_FUNCTION_111_1()
{

  return sub_21700D194();
}

uint64_t OUTLINED_FUNCTION_111_3(uint64_t a1, uint64_t a2)
{

  return sub_2166A6F60(a1, a2, v2);
}

uint64_t OUTLINED_FUNCTION_111_5()
{

  return sub_2169BBB3C(v1, v0);
}

uint64_t OUTLINED_FUNCTION_111_6@<X0>(void (*a1)(void)@<X2>, uint64_t a2@<X8>)
{

  return sub_2169C3618(v2, v3 + a2, a1);
}

uint64_t OUTLINED_FUNCTION_111_7()
{
}

uint64_t sub_2166C2E44()
{
  result = sub_21700E4D4();
  qword_280E739E8 = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_76_4()
{

  return sub_217009554();
}

uint64_t OUTLINED_FUNCTION_76_5()
{
  v1 = v0[4];
  v0[8] = v1[7];
  result = v1[6];
  v0[2] = v1[5];
  v0[3] = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_76_6(uint64_t a1)
{

  return sub_2168AEDA8(v1, a1, type metadata accessor for TopSearchLockup);
}

uint64_t OUTLINED_FUNCTION_76_7()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_76_8()
{
}

void OUTLINED_FUNCTION_76_10(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 0xCu);
}

uint64_t OUTLINED_FUNCTION_76_11()
{
}

void OUTLINED_FUNCTION_76_12(uint64_t a1@<X8>)
{
  v2 = (v1 + a1);
  *v2 = 0;
  v2[1] = 0;
}

uint64_t OUTLINED_FUNCTION_76_13()
{
}

uint64_t OUTLINED_FUNCTION_76_14()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_84_6()
{

  return swift_beginAccess();
}

void OUTLINED_FUNCTION_84_8()
{
  v4 = (v0 + *(v2 + 24));
  *v4 = *(v3 - 232);
  v4[1] = v1;
  *(v0 + *(v2 + 28)) = *(v3 - 216);
}

uint64_t OUTLINED_FUNCTION_84_9()
{

  return sub_2168CBAB0(v0, type metadata accessor for RecentSearchLockup);
}

uint64_t OUTLINED_FUNCTION_84_15()
{

  return sub_2166A6EA4();
}

uint64_t sub_2166C3224(char a1)
{
  swift_defaultActor_initialize();
  sub_217006FE4();
  sub_2166C32C0();
  *(v1 + 112) = sub_21700E384();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1AC0);
  swift_allocObject();
  *(v1 + 120) = sub_2166C4458(1000);
  *(v1 + 128) = a1;
  return v1;
}

unint64_t sub_2166C32C0()
{
  result = qword_280E2A408;
  if (!qword_280E2A408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2A408);
  }

  return result;
}

void sub_2166C3314()
{
  OUTLINED_FUNCTION_49();
  v75 = v1;
  v76 = v0;
  v77 = v2;
  v74 = v3;
  swift_getOpaqueTypeMetadata2();
  v4 = OUTLINED_FUNCTION_38_3();
  OUTLINED_FUNCTION_21_12();
  v5 = OUTLINED_FUNCTION_38_3();
  OUTLINED_FUNCTION_8_8(v5);
  OUTLINED_FUNCTION_19_12();
  OUTLINED_FUNCTION_21_12();
  v6 = OUTLINED_FUNCTION_34_8();
  OUTLINED_FUNCTION_8_8(v6);
  v78 = v4;
  v79 = OUTLINED_FUNCTION_19_12();
  OUTLINED_FUNCTION_21_12();
  v7 = OUTLINED_FUNCTION_34_8();
  OUTLINED_FUNCTION_8_8(v7);
  v8 = OUTLINED_FUNCTION_19_12();
  OUTLINED_FUNCTION_27_5(v8);
  v9 = OUTLINED_FUNCTION_45_4();
  OUTLINED_FUNCTION_1();
  v73 = v10;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v11);
  v13 = &v64 - v12;
  v14 = OUTLINED_FUNCTION_36_2();
  v78 = v9;
  v79 = v14;
  v15 = v14;
  v72 = v14;
  v16 = OUTLINED_FUNCTION_21_12();
  v78 = v9;
  v79 = v15;
  v17 = OUTLINED_FUNCTION_38_3();
  v78 = v16;
  v79 = v17;
  OUTLINED_FUNCTION_21_12();
  v78 = v16;
  v79 = v17;
  v18 = OUTLINED_FUNCTION_38_3();
  OUTLINED_FUNCTION_8_8(v18);
  v19 = OUTLINED_FUNCTION_19_12();
  v78 = v17;
  v79 = v19;
  OUTLINED_FUNCTION_21_12();
  v20 = OUTLINED_FUNCTION_34_8();
  OUTLINED_FUNCTION_8_8(v20);
  v21 = OUTLINED_FUNCTION_19_12();
  v78 = v17;
  v79 = v21;
  OUTLINED_FUNCTION_21_12();
  v22 = OUTLINED_FUNCTION_34_8();
  OUTLINED_FUNCTION_8_8(v22);
  v23 = OUTLINED_FUNCTION_19_12();
  OUTLINED_FUNCTION_27_5(v23);
  v24 = OUTLINED_FUNCTION_45_4();
  v69 = v24;
  v71 = *(v24 - 8);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v25);
  v27 = &v64 - v26;
  v28 = OUTLINED_FUNCTION_36_2();
  v78 = v24;
  v79 = v28;
  v29 = v28;
  v70 = v28;
  v30 = OUTLINED_FUNCTION_21_12();
  v78 = v24;
  v79 = v29;
  v31 = OUTLINED_FUNCTION_38_3();
  v78 = v30;
  v79 = v31;
  OUTLINED_FUNCTION_21_12();
  v78 = v30;
  v79 = v31;
  v32 = OUTLINED_FUNCTION_38_3();
  OUTLINED_FUNCTION_8_8(v32);
  v33 = OUTLINED_FUNCTION_19_12();
  v78 = v31;
  v79 = v33;
  OUTLINED_FUNCTION_21_12();
  v34 = OUTLINED_FUNCTION_34_8();
  OUTLINED_FUNCTION_8_8(v34);
  v35 = OUTLINED_FUNCTION_19_12();
  v78 = v31;
  v79 = v35;
  OUTLINED_FUNCTION_21_12();
  v36 = OUTLINED_FUNCTION_34_8();
  OUTLINED_FUNCTION_8_8(v36);
  v37 = OUTLINED_FUNCTION_19_12();
  OUTLINED_FUNCTION_27_5(v37);
  v38 = OUTLINED_FUNCTION_45_4();
  v65 = v38;
  v68 = *(v38 - 8);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_105();
  v67 = v40;
  v41 = OUTLINED_FUNCTION_36_2();
  v78 = v38;
  v79 = v41;
  v66 = v41;
  OUTLINED_FUNCTION_21_12();
  v42 = OUTLINED_FUNCTION_19_12();
  v78 = v31;
  v79 = v42;
  v43 = OUTLINED_FUNCTION_21_12();
  v78 = v31;
  v79 = v42;
  v44 = OUTLINED_FUNCTION_38_3();
  v78 = v43;
  v79 = v44;
  v45 = OUTLINED_FUNCTION_21_12();
  v78 = v43;
  v79 = v44;
  v46 = OUTLINED_FUNCTION_38_3();
  v47 = OUTLINED_FUNCTION_18_5(v46);
  v78 = v45;
  v79 = v46;
  v48 = OUTLINED_FUNCTION_38_3();
  v78 = v47;
  v79 = v48;
  v49 = OUTLINED_FUNCTION_21_12();
  v78 = v47;
  v79 = v48;
  v50 = OUTLINED_FUNCTION_38_3();
  v51 = OUTLINED_FUNCTION_18_5(v50);
  v78 = v49;
  v79 = v50;
  v52 = OUTLINED_FUNCTION_38_3();
  v78 = v51;
  v79 = v52;
  v53 = OUTLINED_FUNCTION_21_12();
  v64 = v53;
  v78 = v51;
  v79 = v52;
  v54 = OUTLINED_FUNCTION_38_3();
  v78 = v53;
  v79 = v54;
  v55 = OUTLINED_FUNCTION_45_4();
  OUTLINED_FUNCTION_1();
  v57 = v56;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v58);
  v60 = &v64 - v59;
  View.registerHomePPTs<A, B>(pageProvider:)();
  View.registerBrowsePPTs<A, B>(pageProvider:)();
  (*(v73 + 8))(v13, v9);
  v61 = v67;
  v62 = v69;
  View.registerRadioPPTs<A, B>(pageProvider:)();
  (*(v71 + 8))(v27, v62);
  v63 = v65;
  View.registerArtistDetailPPTs<A, B>(pageProvider:)();
  (*(v68 + 8))(v61, v63);
  v78 = v64;
  v79 = v54;
  OUTLINED_FUNCTION_38_3();
  View.registerReplayPPTs<A, B>(pageProvider:)();
  (*(v57 + 8))(v60, v55);
  OUTLINED_FUNCTION_26();
}

uint64_t OUTLINED_FUNCTION_22_14()
{
  *(v3 - 128) = v2;
  *(v3 - 120) = v1;
  *(v3 - 112) = v0;

  return sub_2170087B4();
}

uint64_t OUTLINED_FUNCTION_22_15()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);
}

uint64_t OUTLINED_FUNCTION_22_16(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(v1, 1, 1, a1);
}

uint64_t OUTLINED_FUNCTION_22_17()
{

  return sub_217009554();
}

uint64_t OUTLINED_FUNCTION_22_18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a2 - 256);

  return sub_2166A6E54(a1, v4, v2);
}

uint64_t OUTLINED_FUNCTION_22_19()
{
  v2 = *(v0 + 168);

  return sub_216816338(v2, type metadata accessor for NoticeAction);
}

uint64_t OUTLINED_FUNCTION_22_33()
{

  return sub_2166997CC(v1, v0);
}

void OUTLINED_FUNCTION_22_34()
{

  sub_216938A64();
}

uint64_t OUTLINED_FUNCTION_22_36@<X0>(uint64_t a1@<X8>)
{
  *(v2 - 192) = v1 - a1;

  return sub_21700CF34();
}

uint64_t OUTLINED_FUNCTION_22_40()
{
}

uint64_t OUTLINED_FUNCTION_22_41()
{

  return sub_21700F7D4();
}

uint64_t OUTLINED_FUNCTION_22_42(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(v1, 1, 1, a1);
}

uint64_t OUTLINED_FUNCTION_22_43()
{
  v3 = *(v0 + v1);
  v4 = *(v0 + v1 + 8);
  v5 = *(v0 + v1 + 16);
  v6 = *(v0 + v1 + 24);
  v7 = *(v0 + v1 + 32);

  return sub_216838830(v3, v4, v5, v6, v7);
}

void OUTLINED_FUNCTION_22_46(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0x16u);
}

uint64_t OUTLINED_FUNCTION_22_47()
{

  return sub_216EF0D64((v0 + 16));
}

uint64_t OUTLINED_FUNCTION_22_51(uint64_t a1, ...)
{
  va_start(va, a1);

  return sub_21698F234(va, v1 + 16);
}

__n128 OUTLINED_FUNCTION_22_53@<Q0>(uint64_t a1@<X8>)
{
  v3 = v1 + a1;
  result = *(v2 - 128);
  v5 = *(v2 - 112);
  *v3 = result;
  *(v3 + 16) = v5;
  *(v3 + 32) = *(v2 - 96);
  return result;
}

void OUTLINED_FUNCTION_22_54()
{

  sub_216DF0D70();
}

uint64_t OUTLINED_FUNCTION_22_55(uint64_t a1)
{

  return sub_216697664(a1, v1);
}

uint64_t OUTLINED_FUNCTION_22_56()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_22_57@<X0>(int a1@<W1>, uint64_t a2@<X8>)
{
  *(v3 - 144) = v2;
  *(v3 - 116) = a1;
  *(v3 - 128) = a2;

  return sub_2170067A4();
}

uint64_t OUTLINED_FUNCTION_22_58(uint64_t result)
{
  *(v1 + 136) = result;
  *(v1 + 80) = MEMORY[0x277D85DD0];
  return result;
}

uint64_t OUTLINED_FUNCTION_22_59()
{
}

uint64_t OUTLINED_FUNCTION_22_63()
{

  return sub_21700F554();
}

uint64_t OUTLINED_FUNCTION_22_67()
{
  type metadata accessor for SuperHeroLockup(0);

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t sub_2166C3E80()
{
  result = sub_217007CA4();
  if (v1 <= 0x3F)
  {
    result = sub_21700EF04();
    if (v2 <= 0x3F)
    {
      return swift_initClassMetadata2();
    }
  }

  return result;
}

void View.registerHomePPTs<A, B>(pageProvider:)()
{
  OUTLINED_FUNCTION_49();
  v4 = OUTLINED_FUNCTION_44_7(v2, v3);
  v5 = OUTLINED_FUNCTION_36(v4);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_2_21();
  swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_42_2();
  v71 = OUTLINED_FUNCTION_37_3();
  OUTLINED_FUNCTION_20_9();
  OUTLINED_FUNCTION_0_22();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v7);
  v8 = OUTLINED_FUNCTION_37_3();
  OUTLINED_FUNCTION_16_11(v8);
  OUTLINED_FUNCTION_0_22();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_105();
  v10 = OUTLINED_FUNCTION_13_9();
  OUTLINED_FUNCTION_17_11(v10);
  OUTLINED_FUNCTION_0_22();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_105();
  v12 = OUTLINED_FUNCTION_13_9();
  OUTLINED_FUNCTION_5_14(v12);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v13);
  v15 = OUTLINED_FUNCTION_9_16(v14, v68);
  OUTLINED_FUNCTION_15_4(v15);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_10_7(v17, v69);
  OUTLINED_FUNCTION_20_9();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v18);
  v20 = OUTLINED_FUNCTION_3_25(v19, v70);
  sub_2166C74D4(v20, v21, v22, v23, v24);
  v25 = OUTLINED_FUNCTION_14_6();
  sub_2166C64F0(v25, v26, v27, v1, v28);
  sub_2166C6ED4(v0);
  sub_2166C74D4(0x4031000000000000, 4, 0, 0, v0);
  v29 = OUTLINED_FUNCTION_26_9();
  sub_2166C64F0(v29, v30, v31, v71, v32);
  sub_2166C6ED4(v0);
  v33 = OUTLINED_FUNCTION_31_11();
  v34(v33);
  OUTLINED_FUNCTION_47_4();
  sub_2166C74D4(v35, v36, v37, 0, v38);
  OUTLINED_FUNCTION_23_3();
  sub_2166C6ED4(v0);
  v39 = OUTLINED_FUNCTION_28_11();
  v40(v39);
  v41 = OUTLINED_FUNCTION_6_17();
  sub_2166C74D4(v41, v42, v43, 0, v44);
  OUTLINED_FUNCTION_25_3();
  sub_2166C6ED4(v0);
  v45 = OUTLINED_FUNCTION_33_8();
  v46(v45);
  v47 = OUTLINED_FUNCTION_7_10();
  sub_2166C74D4(v47, v48, v49, 1, v50);
  OUTLINED_FUNCTION_4_14();
  sub_2166C6ED4(v0);
  v51 = OUTLINED_FUNCTION_32_6();
  v52(v51);
  sub_2166C74D4(0x4030000000000000, 5, 0, 1, v0);
  OUTLINED_FUNCTION_12_12();
  sub_2166C6ED4(v0);
  v53 = OUTLINED_FUNCTION_29_6();
  v54(v53);
  OUTLINED_FUNCTION_47_4();
  sub_2166C74D4(v55, v56, v57, 1, v58);
  OUTLINED_FUNCTION_11_11();
  sub_2166C6ED4(v0);
  v59 = OUTLINED_FUNCTION_30_2();
  v60(v59);
  v61 = OUTLINED_FUNCTION_6_17();
  sub_2166C74D4(v61, v62, v63, 1, v64);
  v65 = OUTLINED_FUNCTION_37_3();
  OUTLINED_FUNCTION_24_8(v65);
  sub_2166C6ED4(v0);
  v66 = OUTLINED_FUNCTION_35_6();
  v67(v66);
  OUTLINED_FUNCTION_26();
}

uint64_t type metadata accessor for MusicUIPPT.Test()
{
  result = qword_280E46198;
  if (!qword_280E46198)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2166C4458(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1880);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v12 - v5;
  sub_217007C94();
  v7 = qword_280E2BC18;
  type metadata accessor for UnfairLock();
  v8 = swift_allocObject();
  v9 = swift_slowAlloc();
  *(v8 + 16) = v9;
  *(v2 + v7) = v8;
  *v9 = 0;
  *(v2 + qword_280E2BBF8) = 1;
  *(v2 + qword_280E2BCA0) = 0;
  sub_21700EED4();
  *(v2 + 16) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC18A0);
  sub_2166C32C0();
  *(v2 + qword_280E2BC00) = sub_21700E384();
  v10 = sub_217006FE4();
  __swift_storeEnumTagSinglePayload(v6, 1, 1, v10);
  swift_allocObject();
  *(v2 + 24) = sub_2166C4CEC(0, 0, v6);
  swift_weakAssign();
  swift_weakAssign();
  sub_2166C4E68();
  return v2;
}

void sub_2166C4658()
{
  sub_2166CE230();
  if (v0 <= 0x3F)
  {
    sub_217005EF4();
    if (v1 <= 0x3F)
    {
      sub_217008144();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t OUTLINED_FUNCTION_31_18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 232) = *(a1 + a2);

  return sub_21700DF14();
}

void OUTLINED_FUNCTION_31_19()
{
  v2 = *(v0 - 120);
  v3 = *(v2 + 16) + 1;

  sub_2169375D4(0, v3, 1, v2);
}

uint64_t OUTLINED_FUNCTION_31_21()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_31_25()
{
  v4 = *(v2 - 216);

  return sub_21695BCCC(v1, v4, v0);
}

uint64_t OUTLINED_FUNCTION_31_26(uint64_t a1)
{
  v4 = *(v2 - 824);

  return sub_216681B04(a1, v4, v1);
}

uint64_t OUTLINED_FUNCTION_31_27()
{

  return sub_2166997CC(v0, v1);
}

uint64_t OUTLINED_FUNCTION_31_30@<X0>(uint64_t a1@<X8>, uint64_t a2)
{
  *(v2 - 200) = &a2 - a1;

  return type metadata accessor for StartSocialOnboardingAction();
}

uint64_t OUTLINED_FUNCTION_31_35(uint64_t result)
{
  *v1 = result;
  *(v1 + 40) = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_31_50()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_31_51@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a2 - 256);

  return sub_216683A80(a1, v4, v2);
}

uint64_t OUTLINED_FUNCTION_31_56()
{
  type metadata accessor for HorizontalLockup(0);

  return swift_isUniquelyReferenced_nonNull_native();
}

void OUTLINED_FUNCTION_31_58(uint64_t a1@<X8>)
{
  v2 = v1 + a1;
  *v2 = 0;
  *(v2 + 4) = 1;
}

uint64_t sub_2166C4C0C()
{
  result = sub_21700F164();
  if (v1 <= 0x3F)
  {
    result = sub_21700F164();
    if (v2 <= 0x3F)
    {
      result = swift_initClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

void *sub_2166C4CEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = 0;
  v3[3] = 0;
  v7 = *(*v3 + 136);
  v8 = sub_217006FE4();
  __swift_storeEnumTagSinglePayload(v3 + v7, 1, 1, v8);
  swift_weakInit();
  swift_weakInit();
  v3[2] = a1;
  v3[3] = a2;

  swift_beginAccess();
  sub_2166C4DF8(a3, v3 + v7);
  swift_endAccess();
  swift_weakAssign();
  swift_weakAssign();
  return v3;
}

uint64_t sub_2166C4DF8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1880);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_2166C4E68()
{
  v1 = v0;
  v2 = sub_21700B5A4();
  v21 = *(v2 - 8);
  v22 = v2;
  MEMORY[0x28223BE20](v2);
  v19 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_21700B5E4();
  v18 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_21700EF04();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_216685F4C(0, &qword_280E29C08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1AC8);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_217015230;
  sub_21700EED4();
  sub_21700EEE4();
  sub_21700EEF4();
  aBlock[0] = v10;
  sub_2166C53B4(&qword_280E29C10, MEMORY[0x277D85298]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1AD0);
  sub_2166D9530(&unk_280E29E00, &qword_27CAC1AD0);
  sub_21700F214();
  v11 = sub_21700EF14();
  (*(v7 + 8))(v9, v6);
  v12 = qword_280E2BCA0;
  *(v1 + qword_280E2BCA0) = v11;
  result = swift_unknownObjectRelease();
  if (*(v1 + v12))
  {
    swift_getObjectType();
    v14 = swift_allocObject();
    swift_weakInit();
    aBlock[4] = sub_216ABE8E0;
    aBlock[5] = v14;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2169F0990;
    aBlock[3] = &block_descriptor_18;
    v15 = _Block_copy(aBlock);
    swift_unknownObjectRetain();

    sub_21700B5C4();
    v16 = v19;
    sub_2166C5440();
    sub_21700EF34();
    _Block_release(v15);
    swift_unknownObjectRelease();
    (*(v21 + 8))(v16, v22);
    (*(v18 + 8))(v5, v20);

    if (*(v1 + v12))
    {
      swift_getObjectType();
      swift_unknownObjectRetain();
      sub_21700EF54();
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_2166C52E8(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    if (a3 == 1)
    {
      v3 = 0xEA00000000006C6CLL;
      v4 = 0x6F72635374736146;
    }

    else
    {
      v5 = (a1 | a2) == 0;
      if (a1 | a2)
      {
        v4 = 0xD000000000000013;
      }

      else
      {
        v4 = 0x697473696C616552;
      }

      if (v5)
      {
        v3 = 0xEF6C6C6F72635363;
      }

      else
      {
        v3 = 0x8000000217081D00;
      }
    }
  }

  else
  {
    v3 = 0xEC0000006C6C6F72;
    v4 = 0x63537261656E694CLL;
  }

  MEMORY[0x21CE9F490](v4, v3);
}

uint64_t sub_2166C53B4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2166C53FC()
{
  type metadata accessor for MusicUIPPT.Test();
  result = sub_21700E384();
  qword_280E73DC8 = result;
  return result;
}

uint64_t sub_2166C5440()
{
  sub_21700B5A4();
  sub_2166C53B4(&qword_280E2A480, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABC970);
  sub_2166D9530(&qword_280E29E50, &unk_27CABC970);
  return sub_21700F214();
}

uint64_t sub_2166C552C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MusicUIPPT.Test();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void *sub_2166C55A4(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = sub_217005EF4();
    if (*(*(v8 - 8) + 84) == a3)
    {
      v9 = v8;
      v10 = *(a4 + 20);
    }

    else
    {
      v9 = sub_217008144();
      v10 = *(a4 + 28);
    }

    return __swift_storeEnumTagSinglePayload(v5 + v10, a2, a2, v9);
  }

  return result;
}

uint64_t sub_2166C566C()
{
  OUTLINED_FUNCTION_31();
  v1 = *(v0 + 32);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_20_0(v2);
  *v3 = v4;
  v3[1] = sub_2166AB4A0;
  v5 = OUTLINED_FUNCTION_4_25();

  return sub_2166C583C(v5, v6, v7, v1);
}

void sub_2166C5708()
{
  OUTLINED_FUNCTION_75_6();
  OUTLINED_FUNCTION_8_54();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB70B8);
  OUTLINED_FUNCTION_36(v0);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_67_0();
  type metadata accessor for MusicUIPPT.Test();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_15_42(v3, v4, v5);
  if (v6)
  {
    v7 = OUTLINED_FUNCTION_90();
    sub_2166997CC(v7, v8);
    v9 = OUTLINED_FUNCTION_7_64();
    sub_216A515D0(v9, v10, v11, v12, v13, v14, v15, v16, v19, v20);

    v17 = OUTLINED_FUNCTION_108();
    sub_2166997CC(v17, v18);
  }

  else
  {
    OUTLINED_FUNCTION_90();
    sub_2166C5C78();
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_2_93();
    sub_2166C5F48();

    OUTLINED_FUNCTION_39_17();
  }

  OUTLINED_FUNCTION_65_2();
}

uint64_t sub_2166C583C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a4;
  v5 = sub_217005974();
  v4[7] = v5;
  v4[8] = *(v5 - 8);
  v4[9] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1AA0);
  v4[10] = swift_task_alloc();
  v6 = sub_21700EFA4();
  v4[11] = v6;
  v4[12] = *(v6 - 8);
  v4[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2166C59A8, 0, 0);
}

uint64_t sub_2166C59A8()
{
  OUTLINED_FUNCTION_31();
  v1 = [objc_opt_self() defaultCenter];
  if (qword_280E29C60 != -1)
  {
    OUTLINED_FUNCTION_147_3();
  }

  sub_21700EFB4();

  sub_21700EF94();
  swift_beginAccess();
  OUTLINED_FUNCTION_136_1();
  sub_2166C53B4(v2, v3);
  swift_task_alloc();
  OUTLINED_FUNCTION_52();
  *(v0 + 112) = v4;
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_120_5(v4);

  return MEMORY[0x282200308](v6);
}

uint64_t sub_2166C5AE0(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_217005EF4();
    if (*(*(v8 - 8) + 84) == a2)
    {
      v9 = v8;
      v10 = *(a3 + 20);
    }

    else
    {
      v9 = sub_217008144();
      v10 = *(a3 + 28);
    }

    return __swift_getEnumTagSinglePayload(a1 + v10, a2, v9);
  }
}

uint64_t OUTLINED_FUNCTION_132_0()
{

  return sub_21700DF14();
}

uint64_t OUTLINED_FUNCTION_132_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = *(v5 + 320);
  *(a4 + 16) = v4;
  return result;
}

uint64_t sub_2166C5C18(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_34();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_2166C5C78()
{
  OUTLINED_FUNCTION_92();
  v2(0);
  OUTLINED_FUNCTION_34();
  (*(v3 + 32))(v0, v1);
  return v0;
}

uint64_t sub_2166C5CD4()
{
  v1 = OUTLINED_FUNCTION_102();
  v2(v1);
  OUTLINED_FUNCTION_34();
  v3 = OUTLINED_FUNCTION_8();
  v4(v3);
  return v0;
}

uint64_t sub_2166C5D28(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_9();
  v4 = OUTLINED_FUNCTION_8();
  v5(v4);
  return a2;
}

uint64_t OUTLINED_FUNCTION_119_2()
{

  return sub_21700E9B4();
}

uint64_t OUTLINED_FUNCTION_119_5()
{
}

uint64_t sub_2166C5E40()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_69_0();
  OUTLINED_FUNCTION_11();
  *v3 = v2;
  v2[232] = v1;
  v2[233] = v4;
  v2[234] = v0;
  v5 = *v1;
  OUTLINED_FUNCTION_28();
  *v6 = v5;
  *(v7 + 2136) = v0;

  OUTLINED_FUNCTION_58();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

void sub_2166C5F48()
{
  OUTLINED_FUNCTION_75_6();
  v3 = OUTLINED_FUNCTION_4_38(v1, v2);
  sub_2166AF66C(v3, v4);
  OUTLINED_FUNCTION_1_63();
  if (v5)
  {
    __break(1u);
LABEL_11:
    sub_21700F824();
    __break(1u);
    return;
  }

  OUTLINED_FUNCTION_84_10();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD268);
  OUTLINED_FUNCTION_10_33();
  if (sub_21700F554())
  {
    v6 = OUTLINED_FUNCTION_45_0();
    sub_2166AF66C(v6, v7);
    OUTLINED_FUNCTION_20_22();
    if (!v8)
    {
      goto LABEL_11;
    }
  }

  if (v0)
  {
    OUTLINED_FUNCTION_67_7();
    v9 = type metadata accessor for MusicUIPPT.Test();
    OUTLINED_FUNCTION_36(v9);
    OUTLINED_FUNCTION_74_9();
    OUTLINED_FUNCTION_65_2();
  }

  else
  {
    OUTLINED_FUNCTION_19_26();
    sub_2166C6400(v10, v11, v12, v13, v14);
    OUTLINED_FUNCTION_65_2();

    sub_21700DF14();
  }
}

uint64_t sub_2166C6070()
{
  OUTLINED_FUNCTION_8_22();
  v1 = sub_217007C84();
  v2 = sub_21700EDA4();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    OUTLINED_FUNCTION_121(&dword_216679000, v4, v5, "Non-UI Bootstrap complete.");
    MEMORY[0x21CEA1440](v3, -1, -1);
  }

  v6 = v0[233];
  v7 = v0[264];

  sub_2166A8544();
  sub_2166997CC(v7, &qword_27CAB94C8);

  v8 = v0[1];

  return v8(v6);
}

uint64_t sub_2166C61E8()
{
  OUTLINED_FUNCTION_31();
  v3 = v2;
  OUTLINED_FUNCTION_69_0();
  v5 = v4;
  OUTLINED_FUNCTION_11();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_28();
  *v8 = v7;
  *(v5 + 40) = v0;

  if (!v0)
  {
    *(v5 + 48) = v3;
  }

  OUTLINED_FUNCTION_58();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_2166C62F8(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_34();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_2166C6358()
{
  v1 = OUTLINED_FUNCTION_102();
  v2(v1);
  OUTLINED_FUNCTION_34();
  v3 = OUTLINED_FUNCTION_8();
  v4(v3);
  return v0;
}

uint64_t sub_2166C63AC()
{
  v1 = OUTLINED_FUNCTION_102();
  v2(v1);
  OUTLINED_FUNCTION_34();
  v3 = OUTLINED_FUNCTION_8();
  v4(v3);
  return v0;
}

void sub_2166C6400(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_8_34(a1, a2, a3, a4, a5);
  v7 = v6(0);
  OUTLINED_FUNCTION_36(v7);
  sub_2166C6358();
  OUTLINED_FUNCTION_52_10();
  if (v9)
  {
    __break(1u);
  }

  else
  {
    *(a5 + 16) = v8;
  }
}

uint64_t sub_2166C6480()
{
  OUTLINED_FUNCTION_33();
  *(v0 + 16) = *(v0 + 48);
  sub_21700E224();

  OUTLINED_FUNCTION_3();

  return v1();
}

uint64_t sub_2166C64F0@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v49 = a5;
  v41 = a3;
  v42 = a4;
  v47 = *a2;
  v9 = type metadata accessor for MusicUIPPT.Test();
  v10 = v9 - 8;
  v44 = *(v9 - 8);
  v11 = *(v44 + 64);
  MEMORY[0x28223BE20](v9);
  v40 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_217008144();
  v37 = v12;
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v36 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = a3;
  v51 = a4;
  v46 = MEMORY[0x277CDEEA8];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_1();
  v48 = v16;
  v18 = MEMORY[0x28223BE20](v17);
  v43 = &v35 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v45 = &v35 - v20;
  v21 = *(v10 + 36);
  v38 = a1;
  v39 = v21;
  (*(v13 + 16))(&v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), a1 + v21, v12);
  OUTLINED_FUNCTION_2_173();
  v22 = v40;
  sub_2166C6A54(a1, v40, v23);
  v24 = (*(v13 + 80) + 64) & ~*(v13 + 80);
  v25 = (v14 + *(v44 + 80) + v24) & ~*(v44 + 80);
  v26 = swift_allocObject();
  v27 = v47;
  v28 = v41;
  v29 = v42;
  *(v26 + 2) = v41;
  *(v26 + 3) = v27[10];
  *(v26 + 4) = v27[11];
  *(v26 + 5) = v29;
  *(v26 + 6) = v27[12];
  *(v26 + 7) = v27[13];
  (*(v13 + 32))(&v26[v24], v36, v37);
  sub_2166C6CFC(v22, &v26[v25]);
  *&v26[(v11 + v25 + 7) & 0xFFFFFFFFFFFFFFF8] = a2;

  v30 = v43;
  sub_21700AA44();

  v50 = v28;
  v51 = v29;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v32 = v45;
  sub_2166C24DC(v30, OpaqueTypeMetadata2, OpaqueTypeConformance2);
  v33 = *(v48 + 8);
  v33(v30, OpaqueTypeMetadata2);
  sub_2166C24DC(v32, OpaqueTypeMetadata2, OpaqueTypeConformance2);
  return (v33)(v32, OpaqueTypeMetadata2);
}

uint64_t sub_2166C68D8()
{
  v2 = sub_217008144();
  OUTLINED_FUNCTION_1();
  v4 = v3;
  v5 = (*(v3 + 80) + 64) & ~*(v3 + 80);
  v7 = *(v6 + 64);
  type metadata accessor for MusicUIPPT.Test();
  OUTLINED_FUNCTION_43_3();
  v9 = (v5 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v4 + 8);
  v10(v0 + v5, v2);
  v11 = v0 + v9;

  v12 = *(v1 + 28);
  sub_217005EF4();
  OUTLINED_FUNCTION_9_0();
  (*(v13 + 8))(v11 + v12);
  v10(v11 + *(v1 + 36), v2);

  return swift_deallocObject();
}

uint64_t sub_2166C6A54(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2166C6ABC()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_69_0();
  v3 = v2;
  OUTLINED_FUNCTION_26_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_28();
  *v6 = v5;

  if (v0)
  {
    OUTLINED_FUNCTION_202_0();

    return v7();
  }

  else
  {
    v9 = *(v3 + 16);
    v10 = *(v5 + 8);

    return v10(v9);
  }
}

uint64_t sub_2166C6BDC()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_69_0();
  OUTLINED_FUNCTION_11();
  *v3 = v2;
  v2[5] = v1;
  v2[6] = v4;
  v2[7] = v0;
  v5 = *v1;
  OUTLINED_FUNCTION_28();
  *v6 = v5;
  *(v7 + 296) = v0;

  OUTLINED_FUNCTION_58();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_2166C6CFC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MusicUIPPT.Test();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2166C6D60()
{
  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_247();

  v1 = sub_217007C84();
  v2 = sub_21700EDA4();
  if (os_log_type_enabled(v1, v2))
  {
    *OUTLINED_FUNCTION_43() = 0;
    OUTLINED_FUNCTION_123_0();
    _os_log_impl(v3, v4, v5, v6, v7, 2u);
    OUTLINED_FUNCTION_56_1();
  }

  v8 = v0[19];

  v10 = *(v8 + 8);
  v9 = v8 + 8;
  v0[39] = v10;
  v11 = OUTLINED_FUNCTION_115();
  v12(v11);
  if (qword_280E485B8 != -1)
  {
    OUTLINED_FUNCTION_122();
  }

  OUTLINED_FUNCTION_232();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB94D0);
  v14 = __swift_project_value_buffer(v13, qword_280E73E20);
  v15 = OUTLINED_FUNCTION_131(v14);
  v17 = v16(v15);
  OUTLINED_FUNCTION_244(v17, "UIBootstrap");
  v18 = *(v9 + 72);
  v0[43] = v18;
  v19 = v18;
  v20 = swift_task_alloc();
  v0[44] = v20;
  *v20 = v0;
  v21 = OUTLINED_FUNCTION_66_6(v20);

  return sub_216843200(v21, v22, v23, v24);
}
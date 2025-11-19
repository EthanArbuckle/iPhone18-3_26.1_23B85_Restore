uint64_t NSFileManager.deepSequence(at:includingPropertiesForKeys:options:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_1DF6322FC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = (*(v5 + 16))(v8, a1, v4);
  v10 = MEMORY[0x1E12D9570](v9);
  v11 = [objc_opt_self() defaultManager];
  v12 = sub_1DF63313C();

  objc_autoreleasePoolPop(v10);
  result = (*(v5 + 8))(v8, v4);
  *a2 = v12;
  return result;
}

uint64_t DirectorySequence.next()@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42D50, &qword_1DF63AAE0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v12 - v5;
  if (*v1)
  {
    v7 = *v1;
    v8 = MEMORY[0x1E12D9570]();
    sub_1DF59BE48(v7, v1, v6);
    objc_autoreleasePoolPop(v8);

    return sub_1DF5A3C48(v6, a1);
  }

  else
  {
    v10 = sub_1DF6322FC();
    v11 = *(*(v10 - 8) + 56);

    return v11(a1, 1, 1, v10);
  }
}

uint64_t sub_1DF59B960(uint64_t a1, void *a2)
{
  v4 = sub_1DF6322FC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getErrorValue();
  v9 = Error.domain.getter(v30[2]);
  v11 = v10;
  v12 = *MEMORY[0x1E696A250];
  if (v9 == sub_1DF63298C() && v11 == v13)
  {

LABEL_8:
    swift_getErrorValue();
    if (Error.code.getter(v29[2]) == 260)
    {
      return 1;
    }

    goto LABEL_9;
  }

  v15 = sub_1DF63394C();

  if (v15)
  {
    goto LABEL_8;
  }

LABEL_9:
  if (qword_1ED8E5958 != -1)
  {
    swift_once();
  }

  v16 = sub_1DF6326AC();
  __swift_project_value_buffer(v16, qword_1ED8E69A0);
  (*(v5 + 16))(v8, a1, v4);
  v17 = a2;
  v18 = sub_1DF63268C();
  v19 = sub_1DF63316C();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v29[0] = swift_slowAlloc();
    v30[0] = v29[0];
    *v20 = 141558531;
    *(v20 + 4) = 1752392040;
    *(v20 + 12) = 2081;
    sub_1DF5F9E38();
    v22 = sub_1DF6338DC();
    v24 = v23;
    (*(v5 + 8))(v8, v4);
    v25 = sub_1DF59EEC8(v22, v24, v30);

    *(v20 + 14) = v25;
    *(v20 + 22) = 2112;
    v26 = sub_1DF63227C();
    *(v20 + 24) = v26;
    *v21 = v26;
    _os_log_impl(&dword_1DF59A000, v18, v19, "ERROR: URL: %{private,mask.hash}s error: %@", v20, 0x20u);
    sub_1DF59CB50(v21, &qword_1ECE42AF0, &qword_1DF63ABC0);
    MEMORY[0x1E12D9D80](v21, -1, -1);
    v27 = v29[0];
    __swift_destroy_boxed_opaque_existential_1(v29[0]);
    MEMORY[0x1E12D9D80](v27, -1, -1);
    MEMORY[0x1E12D9D80](v20, -1, -1);
  }

  else
  {

    (*(v5 + 8))(v8, v4);
  }

  return 1;
}

uint64_t Error.domain.getter(uint64_t a1)
{
  v2 = *(a1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v5, v6, a1);
  v7 = sub_1DF6338FC();
  if (v7)
  {
    v8 = v7;
    (*(v2 + 8))(v5, a1);
  }

  else
  {
    v8 = swift_allocError();
    (*(v2 + 32))(v9, v5, a1);
  }

  v10 = sub_1DF63227C();

  v11 = [v10 domain];
  v12 = sub_1DF63298C();

  return v12;
}

uint64_t sub_1DF59BE48@<X0>(void *a1@<X0>, void **a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42D50, &qword_1DF63AAE0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v17[-v8];
  if ([a1 nextObject])
  {
    sub_1DF63339C();
    swift_unknownObjectRelease();
    sub_1DF5A27C4(v17, v18);
    sub_1DF5A27C4(v18, v17);
    v10 = sub_1DF6322FC();
    v11 = swift_dynamicCast();
    v12 = *(*(v10 - 8) + 56);
    if (v11)
    {
      v13 = *(v10 - 8);
      v12(v9, 0, 1, v10);
      (*(v13 + 32))(a3, v9, v10);
      return v12(a3, 0, 1, v10);
    }

    v12(v9, 1, 1, v10);
    sub_1DF59CB50(v9, &qword_1ECE42D50, &qword_1DF63AAE0);
  }

  v15 = *a2;
  *a2 = 0;

  v16 = sub_1DF6322FC();
  return (*(*(v16 - 8) + 56))(a3, 1, 1, v16);
}

const char *Feature.FindMy.feature.getter()
{
  result = "AirlineTravelV2";
  switch(*v0)
  {
    case 1:
      result = "AirPods_Pairing_With_FindMyBluetooth";
      break;
    case 2:
      result = "AlphaWasp";
      break;
    case 3:
      result = "AOP2";
      break;
    case 4:
      result = "BA_AirPods";
      break;
    case 5:
      result = "BA_AirPods_Multipart_UI";
      break;
    case 6:
      result = "BA_LPEM";
      break;
    case 7:
      result = "BA_Power_Off";
      break;
    case 8:
      result = "Beep_On_Move";
      break;
    case 9:
      result = "CowardlyCarrot";
      break;
    case 0xA:
      result = "BT_RSSI_Finding";
      break;
    case 0xB:
      result = "Item_Sharing";
      break;
    case 0xC:
      result = "Fences_Migration";
      break;
    case 0xD:
      result = "FernFlower";
      break;
    case 0xE:
      result = "FM_NiftyCurve";
      break;
    case 0xF:
      result = "MagneticCow";
      break;
    case 0x10:
      result = "ManagedCBPeripheral";
      break;
    case 0x11:
      result = "Network_Scaling_Improvements";
      break;
    case 0x12:
      result = "FM_Beacons_Optimizations";
      break;
    case 0x13:
      result = "FM_OwnerProactive";
      break;
    case 0x14:
      result = "RedStripe";
      break;
    case 0x15:
      result = "Separation_Alerts";
      break;
    case 0x16:
      result = "SPPlaySound";
      break;
    case 0x17:
      result = "SPPlaySoundAll";
      break;
    case 0x18:
      result = "SPPlaySoundNonOwner";
      break;
    case 0x19:
      result = "SmilingWheel";
      break;
    case 0x1A:
      result = "Springfield_Integration";
      break;
    case 0x1B:
      result = "Tribeca";
      break;
    case 0x1C:
      result = "TrustedNowUsesReferenceClock";
      break;
    case 0x1D:
      result = "UT_Precision_Finding";
      break;
    case 0x1E:
      result = "Secure_Locations_Migration";
      break;
    case 0x1F:
      result = "FlyingUnicorn";
      break;
    case 0x20:
      result = "LineUp";
      break;
    case 0x21:
      result = "Woof";
      break;
    case 0x22:
      result = "EmotionalKiwi";
      break;
    case 0x23:
      result = "SquaredPear";
      break;
    case 0x24:
      result = "GorgeousCherry";
      break;
    case 0x25:
      result = "ModernRose";
      break;
    case 0x26:
      result = "RobustBird";
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DF59C3C8()
{
  result = sub_1DF6325AC();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1DF59C434(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
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

    *(result + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1DF59C4AC(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1DF59C4E4()
{
  if (!qword_1ED8E5CC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECE42AC8, &qword_1DF638F38);
    v0 = sub_1DF63327C();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED8E5CC0);
    }
  }
}

void sub_1DF59C548()
{
  v0 = sub_1DF6325AC();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_1DF59C4E4();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

uint64_t WorkItemQueue.__allocating_init(identifier:)(uint64_t a1)
{
  v2 = sub_1DF6325AC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1DF63255C();
  v9 = v8;
  (*(v3 + 16))(v6, a1, v2);
  v15 = 2;
  v10 = type metadata accessor for WorkItemQueue(0);
  v16 = 0u;
  v17 = 0u;
  v18 = 0;
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  v13 = swift_allocObject();
  WorkItemQueue.init(name:identifier:warningOptions:)(v7, v9, v6, &v15);
  (*(v3 + 8))(a1, v2);
  return v13;
}

void sub_1DF59C7B4(uint64_t a1, unint64_t *a2)
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

uint64_t sub_1DF59C800(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_1DF59C868()
{
  v0 = sub_1DF6326AC();
  __swift_allocate_value_buffer(v0, qword_1ED8E6A30);
  v1 = __swift_project_value_buffer(v0, qword_1ED8E6A30);
  if (qword_1ED8E5CD8 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_1ED8E69F0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t type metadata accessor for WorkItemQueue.WorkItem()
{
  result = qword_1ED8E5E60;
  if (!qword_1ED8E5E60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1DF59C9B4()
{
  v0 = sub_1DF6325AC();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_1DF59CAEC();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_1DF59CAEC()
{
  if (!qword_1ED8E5CC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECE42B10, &qword_1DF639268);
    v0 = sub_1DF63327C();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED8E5CC8);
    }
  }
}

uint64_t sub_1DF59CB50(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
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

uint64_t sub_1DF59CC14()
{
  v0 = sub_1DF6326AC();
  __swift_allocate_value_buffer(v0, qword_1ED8E69F0);
  __swift_project_value_buffer(v0, qword_1ED8E69F0);
  return sub_1DF63269C();
}

uint64_t sub_1DF59CC98(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1DF59CD00(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1DF59CD48(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = *v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42AA8, &qword_1DF638F18) - 8) + 64) + 15;
  v2[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DF59D6D0, v1, 0);
}

uint64_t sub_1DF59CE0C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42AA8, &qword_1DF638F18);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v9 - v2;
  v4 = sub_1DF6325AC();
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42B48, &qword_1DF6393A8);
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  result = sub_1DF633C4C();
  qword_1ED8E6070 = result;
  return result;
}

uint64_t sub_1DF59CEEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[45] = a2;
  v3[46] = a3;
  v5 = sub_1DF6325AC();
  v3[47] = v5;
  v6 = *(v5 - 8);
  v3[48] = v6;
  v7 = *(v6 + 64) + 15;
  v3[49] = swift_task_alloc();
  v8 = sub_1DF6335AC();
  v3[50] = v8;
  v9 = *(v8 - 8);
  v3[51] = v9;
  v10 = *(v9 + 64) + 15;
  v3[52] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42B38, &qword_1DF639350);
  v3[53] = v11;
  v12 = *(v11 - 8);
  v3[54] = v12;
  v13 = *(v12 + 64) + 15;
  v3[55] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DF59D98C, a3, 0);
}

uint64_t sub_1DF59D0A0()
{
  result = sub_1DF6325AC();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void *sub_1DF59D160()
{
  type metadata accessor for DarwinNotificationHandler();
  v0 = swift_allocObject();
  result = DarwinNotificationHandler.init()();
  qword_1ED8E5C10 = v0;
  return result;
}

uint64_t sub_1DF59D1C0(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1DF5DA28C;

  return v7(a1);
}

uint64_t sub_1DF59D2C8()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1DF59D3BC(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1DF59D2C4;

  return sub_1DF59D1C0(a1, v5);
}

uint64_t objectdestroyTm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t objectdestroyTm_0(uint64_t a1)
{
  v3 = *(v1 + 16);
  swift_unknownObjectRelease();
  v4 = *(v1 + 32);

  return MEMORY[0x1EEE6BDD0](v1, a1, 7);
}

uint64_t sub_1DF59D530(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42AC8, &qword_1DF638F38) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1DF59D2C4;

  return sub_1DF59D634(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_1DF59D634(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = swift_task_alloc();
  *(v5 + 16) = v7;
  *v7 = v5;
  v7[1] = sub_1DF59D2C4;

  return sub_1DF59CD48(a5);
}

uint64_t sub_1DF59D6D0()
{
  if (qword_1ED8E6078 != -1)
  {
    swift_once();
  }

  v2 = v0[4];
  v1 = v0[5];
  v4 = v0[2];
  v3 = v0[3];
  v5 = OBJC_IVAR____TtC10FindMyBase13WorkItemQueue_id;
  v6 = sub_1DF6325AC();
  v7 = *(v6 - 8);
  (*(v7 + 16))(v1, v3 + v5, v6);
  (*(v7 + 56))(v1, 0, 1, v6);
  v8 = swift_task_alloc();
  v0[6] = v8;
  v8[2] = v4;
  v8[3] = v3;
  v8[4] = v2;
  sub_1DF59CD00(&qword_1ED8E5E20, type metadata accessor for WorkItemQueue);
  v9 = *(MEMORY[0x1E69E8950] + 4);
  v10 = swift_task_alloc();
  v0[7] = v10;
  *v10 = v0;
  v10[1] = sub_1DF5D6F08;
  v11 = v0[5];

  return MEMORY[0x1EEE6DE98]();
}

uint64_t sub_1DF59D8D8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1DF59D2C4;

  return sub_1DF59CEEC(a1, v4, v5);
}

uint64_t sub_1DF59D98C()
{
  v1 = v0[55];
  v2 = v0[45];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42AC8, &qword_1DF638F38);
  sub_1DF632F1C();
  v3 = sub_1DF59CD00(&qword_1ED8E5E20, type metadata accessor for WorkItemQueue);
  v4 = OBJC_IVAR____TtC10FindMyBase13WorkItemQueue_queueDepth;
  v0[56] = v3;
  v0[57] = v4;
  v5 = OBJC_IVAR____TtC10FindMyBase13WorkItemQueue_currentWorkItem;
  v0[58] = OBJC_IVAR____TtC10FindMyBase13WorkItemQueue_warningOptions;
  v0[59] = v5;
  v6 = OBJC_IVAR____TtC10FindMyBase13WorkItemQueue_name;
  v0[60] = OBJC_IVAR____TtC10FindMyBase13WorkItemQueue_flushing;
  v0[61] = v6;
  v0[62] = 0;
  v7 = v0[46];
  v8 = *(MEMORY[0x1E69E8678] + 4);
  v9 = swift_task_alloc();
  v0[63] = v9;
  *v9 = v0;
  v9[1] = sub_1DF5ACBAC;
  v10 = v0[55];
  v11 = v0[53];

  return MEMORY[0x1EEE6D9C8](v0 + 37, v7, v3, v11);
}

uint64_t sub_1DF59DAF8(uint64_t a1, int a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  v9 = v6;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v12 = *(v55 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v55);
  v54 = &v47 - v14;
  v15 = *v9;
  if (*(*v9 + 24) > a1)
  {
    v16 = *(*v9 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v52 = a2;
  result = sub_1DF63372C();
  v18 = result;
  if (*(v15 + 16))
  {
    v19 = 0;
    v20 = (v15 + 64);
    v21 = 1 << *(v15 + 32);
    if (v21 < 64)
    {
      v22 = ~(-1 << v21);
    }

    else
    {
      v22 = -1;
    }

    v23 = v22 & *(v15 + 64);
    v24 = (v21 + 63) >> 6;
    v48 = v9;
    v49 = (v12 + 16);
    v50 = v15;
    v51 = v12;
    v53 = (v12 + 32);
    v25 = result + 64;
    while (v23)
    {
      v28 = __clz(__rbit64(v23));
      v23 &= v23 - 1;
LABEL_17:
      v31 = v28 | (v19 << 6);
      v32 = *(v15 + 56);
      v33 = (*(v15 + 48) + 16 * v31);
      v35 = *v33;
      v34 = v33[1];
      v36 = *(v51 + 72);
      v37 = v32 + v36 * v31;
      if (v52)
      {
        (*v53)(v54, v37, v55);
      }

      else
      {
        (*v49)(v54, v37, v55);
      }

      v38 = *(v18 + 40);
      sub_1DF633A6C();
      sub_1DF632ACC();
      result = sub_1DF633AAC();
      v39 = -1 << *(v18 + 32);
      v40 = result & ~v39;
      v41 = v40 >> 6;
      if (((-1 << v40) & ~*(v25 + 8 * (v40 >> 6))) == 0)
      {
        v42 = 0;
        v43 = (63 - v39) >> 6;
        while (++v41 != v43 || (v42 & 1) == 0)
        {
          v44 = v41 == v43;
          if (v41 == v43)
          {
            v41 = 0;
          }

          v42 |= v44;
          v45 = *(v25 + 8 * v41);
          if (v45 != -1)
          {
            v26 = __clz(__rbit64(~v45)) + (v41 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v26 = __clz(__rbit64((-1 << v40) & ~*(v25 + 8 * (v40 >> 6)))) | v40 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v25 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
      v27 = (*(v18 + 48) + 16 * v26);
      *v27 = v35;
      v27[1] = v34;
      result = (*v53)(*(v18 + 56) + v36 * v26, v54, v55);
      ++*(v18 + 16);
      v15 = v50;
    }

    v29 = v19;
    while (1)
    {
      v19 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v19 >= v24)
      {
        break;
      }

      v30 = v20[v19];
      ++v29;
      if (v30)
      {
        v28 = __clz(__rbit64(v30));
        v23 = (v30 - 1) & v30;
        goto LABEL_17;
      }
    }

    if ((v52 & 1) == 0)
    {

      v9 = v48;
      goto LABEL_36;
    }

    v46 = 1 << *(v15 + 32);
    v9 = v48;
    if (v46 >= 64)
    {
      bzero(v20, ((v46 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v20 = -1 << v46;
    }

    *(v15 + 16) = 0;
  }

LABEL_36:
  *v9 = v18;
  return result;
}

uint64_t sub_1DF59DE7C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t *a6, uint64_t *a7)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v10 = (a5[6] + 16 * a1);
  *v10 = a2;
  v10[1] = a3;
  v11 = a5[7];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(a6, a7);
  result = (*(*(v12 - 8) + 32))(v11 + *(*(v12 - 8) + 72) * a1, a4, v12);
  v14 = a5[2];
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v16;
  }

  return result;
}

uint64_t type metadata accessor for Keychain.Item()
{
  result = qword_1ED8E4C00;
  if (!qword_1ED8E4C00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1DF59DFB8()
{
  v0 = SecTaskCreateFromSelf(0);
  if (!v0)
  {
    v19 = 0u;
    v20 = 0u;
LABEL_8:
    sub_1DF59CB50(&v19, &qword_1ECE436C0, &qword_1DF6393D0);
    v4 = 0;
    goto LABEL_9;
  }

  v1 = v0;
  v2 = sub_1DF63295C();
  v3 = SecTaskCopyValueForEntitlement(v1, v2, 0);

  if (!v3)
  {
    v19 = 0u;
    v20 = 0u;

    goto LABEL_8;
  }

  *(&v20 + 1) = swift_getObjectType();

  *&v19 = v3;
  if (swift_dynamicCast())
  {
    v4 = v18;
  }

  else
  {
    v4 = 0;
  }

LABEL_9:
  v5 = SecTaskCreateFromSelf(0);
  if (v5)
  {
    v6 = v5;
    v7 = sub_1DF63295C();
    v8 = SecTaskCopyValueForEntitlement(v6, v7, 0);

    if (v8)
    {
      *(&v20 + 1) = swift_getObjectType();

      *&v19 = v8;
LABEL_16:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECE425C0, &qword_1DF637D10);
      if (swift_dynamicCast())
      {
        v9 = v17;
      }

      else
      {
        v9 = 0;
      }

      if (v4)
      {
        goto LABEL_20;
      }

      if (v9)
      {
      }

      goto LABEL_23;
    }

    v19 = 0u;
    v20 = 0u;

    if (*(&v20 + 1))
    {
      goto LABEL_16;
    }
  }

  else
  {
    v19 = 0u;
    v20 = 0u;
  }

  sub_1DF59CB50(&v19, &qword_1ECE436C0, &qword_1DF6393D0);
  if (v4)
  {
LABEL_20:
  }

LABEL_23:
  if (qword_1ED8E4A68 != -1)
  {
    swift_once();
  }

  v11 = sub_1DF6326AC();
  __swift_project_value_buffer(v11, qword_1ED8E6928);
  v12 = sub_1DF63268C();
  v13 = sub_1DF63317C();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *&v19 = v15;
    *v14 = 136315138;
    *(v14 + 4) = sub_1DF59EEC8(0xD000000000000016, 0x80000001DF636290, &v19);
    _os_log_impl(&dword_1DF59A000, v12, v13, "Must have %s or keychain-access-groups entitlement.", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v15);
    MEMORY[0x1E12D9D80](v15, -1, -1);
    MEMORY[0x1E12D9D80](v14, -1, -1);
  }

  sub_1DF63085C();
  swift_allocError();
  *v16 = 0;
  *(v16 + 4) = 1;
  return swift_willThrow();
}

void *DarwinNotificationHandler.init()()
{
  v1 = v0;
  swift_defaultActor_initialize();
  v2 = MEMORY[0x1E69E7CC0];
  v1[14] = sub_1DF5C87A0(MEMORY[0x1E69E7CC0]);
  v1[15] = sub_1DF5C89AC(v2);
  v1[16] = sub_1DF59E49C(v2);
  if (qword_1ED8E5C20 != -1)
  {
    swift_once();
  }

  v3 = sub_1DF6326AC();
  __swift_project_value_buffer(v3, qword_1ED8E5C28);

  v4 = sub_1DF63268C();
  v5 = sub_1DF63315C();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v13 = v7;
    *v6 = 136315138;

    v8 = sub_1DF5C54E0();
    v10 = v9;

    v11 = sub_1DF59EEC8(v8, v10, &v13);

    *(v6 + 4) = v11;
    _os_log_impl(&dword_1DF59A000, v4, v5, "Instantiated %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x1E12D9D80](v7, -1, -1);
    MEMORY[0x1E12D9D80](v6, -1, -1);
  }

  return v1;
}

unint64_t sub_1DF59E49C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42A50, &qword_1DF638CC8);
    v3 = sub_1DF63373C();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_1DF59F358(v5, v6, sub_1DF5A3D44);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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

uint64_t sub_1DF59E5B4(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1DF6326AC();
  __swift_allocate_value_buffer(v3, a2);
  v4 = __swift_project_value_buffer(v3, a2);
  if (qword_1ED8E5BE8 != -1)
  {
    swift_once();
  }

  v5 = __swift_project_value_buffer(v3, qword_1ED8E5BF0);
  v6 = *(*(v3 - 8) + 16);

  return v6(v4, v5, v3);
}

uint64_t sub_1DF59E678()
{
  v0 = sub_1DF6326AC();
  __swift_allocate_value_buffer(v0, qword_1ED8E5BF0);
  __swift_project_value_buffer(v0, qword_1ED8E5BF0);
  return sub_1DF63269C();
}

uint64_t sub_1DF59E6F8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42990, &qword_1DF6389A8);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v72 = &v67 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42998, &unk_1DF6389B0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v74 = &v67 - v11;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE429A0, &qword_1DF63E290);
  v78 = *(v75 - 8);
  v12 = *(v78 + 64);
  v13 = MEMORY[0x1EEE9AC00](v75);
  v71 = &v67 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v77 = &v67 - v15;
  v16 = sub_1DF63298C();
  v18 = v17;
  swift_beginAccess();
  v19 = v2;
  v20 = v2[14];
  v21 = *(v20 + 16);
  v73 = a1;
  if (v21)
  {

    v22 = sub_1DF59F358(v16, v18, sub_1DF5A3D44);
    if (v23)
    {
      v24 = v22;

      v25 = v75;
      (*(v78 + 16))(v77, *(v20 + 56) + *(v78 + 72) * v24, v75);

      v27 = *MEMORY[0x1E69E8650];
      v28 = *(v9 + 104);
      v29 = v25;
      v30 = v74;
      goto LABEL_10;
    }
  }

  if (qword_1ED8E5C20 != -1)
  {
    swift_once();
  }

  v76 = v8;
  v31 = sub_1DF6326AC();
  __swift_project_value_buffer(v31, qword_1ED8E5C28);

  v32 = sub_1DF63268C();
  v33 = sub_1DF63318C();

  v34 = os_log_type_enabled(v32, v33);
  v70 = a2;
  if (v34)
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v80 = v36;
    *v35 = 136315138;
    *(v35 + 4) = sub_1DF59EEC8(v16, v18, &v80);
    _os_log_impl(&dword_1DF59A000, v32, v33, "Creating base AsyncStream for DarwinNotification name: %s", v35, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v36);
    MEMORY[0x1E12D9D80](v36, -1, -1);
    MEMORY[0x1E12D9D80](v35, -1, -1);
  }

  v30 = v74;
  v67 = v18;
  MEMORY[0x1EEE9AC00](v37);
  v38 = v19;
  *(&v67 - 4) = v19;
  *(&v67 - 3) = v16;
  v39 = MEMORY[0x1E69E8650];
  *(&v67 - 2) = v40;
  v69 = *v39;
  v68 = *(v9 + 104);
  v74 = ((v9 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000);
  v68(v30);
  v41 = v71;
  sub_1DF632F4C();
  v42 = v78;
  v43 = *(v78 + 16);
  v44 = v16;
  v45 = v77;
  v29 = v75;
  v43(v77, v41, v75);
  v46 = v72;
  v47 = v45;
  v16 = v44;
  v43(v72, v47, v29);
  (*(v42 + 56))(v46, 0, 1, v29);
  swift_beginAccess();
  v48 = v67;

  v49 = v46;
  v19 = v38;
  v18 = v48;
  sub_1DF5C5644(v49, v44, v48);
  swift_endAccess();

  v50 = CFNotificationCenterGetDarwinNotifyCenter();
  v51 = v73;
  CFNotificationCenterAddObserver(v50, v19, sub_1DF5C74CC, v73, 0, CFNotificationSuspensionBehaviorDeliverImmediately);

  v26 = (*(v42 + 8))(v41, v29);
LABEL_10:
  MEMORY[0x1EEE9AC00](v26);
  *(&v67 - 4) = v19;
  *(&v67 - 3) = v16;
  *(&v67 - 2) = v18;
  v52(v30);
  sub_1DF632F4C();
  swift_beginAccess();
  v53 = v19[16];
  if (*(v53 + 16))
  {
    v54 = v19[16];

    v55 = sub_1DF59F358(v16, v18, sub_1DF5A3D44);
    v56 = &unk_1ED8E5000;
    if (v57)
    {
      v58 = *(*(v53 + 56) + 8 * v55);

      v59 = *(v58 + 16);
    }

    else
    {

      v59 = 0;
    }
  }

  else
  {
    v59 = 0;
    v56 = &unk_1ED8E5000;
  }

  if (v56[388] != -1)
  {
    swift_once();
  }

  v60 = sub_1DF6326AC();
  __swift_project_value_buffer(v60, qword_1ED8E5C28);

  v61 = sub_1DF63268C();
  v62 = sub_1DF63318C();

  if (os_log_type_enabled(v61, v62))
  {
    v63 = swift_slowAlloc();
    v64 = swift_slowAlloc();
    v79 = v64;
    *v63 = 136315394;
    v65 = sub_1DF59EEC8(v16, v18, &v79);

    *(v63 + 4) = v65;
    *(v63 + 12) = 2048;
    *(v63 + 14) = v59;
    _os_log_impl(&dword_1DF59A000, v61, v62, "Creating sub AsyncStream for DarwinNotification name: [%s], count: %ld", v63, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v64);
    MEMORY[0x1E12D9D80](v64, -1, -1);
    MEMORY[0x1E12D9D80](v63, -1, -1);
  }

  else
  {
  }

  return (*(v78 + 8))(v77, v29);
}

uint64_t sub_1DF59EEC8(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1DF5A0C8C(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x1E69E6A18];
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
    sub_1DF5A0B98(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

uint64_t __swift_destroy_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_1DF59EFE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42A48, &qword_1DF638CC0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v14 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42940, &qword_1DF638930);
  v12 = *(v11 - 8);
  (*(v12 + 16))(v10, a1, v11);
  (*(v12 + 56))(v10, 0, 1, v11);
  swift_beginAccess();

  sub_1DF5C5824(v10, a3, a4);
  return swift_endAccess();
}

uint64_t sub_1DF59F19C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void (*a5)(void), void (*a6)(void), uint64_t *a7, uint64_t *a8)
{
  v11 = v8;
  v16 = *v8;
  v18 = sub_1DF59F184(a2, a3);
  v19 = *(v16 + 16);
  v20 = (v17 & 1) == 0;
  v21 = v19 + v20;
  if (__OFADD__(v19, v20))
  {
    __break(1u);
    goto LABEL_17;
  }

  v22 = v17;
  v23 = *(v16 + 24);
  if (v23 < v21 || (a4 & 1) == 0)
  {
    if (v23 >= v21 && (a4 & 1) == 0)
    {
      a5();
      goto LABEL_9;
    }

    a6();
    v24 = *v11;
    v25 = sub_1DF59F184(a2, a3);
    if ((v22 & 1) == (v26 & 1))
    {
      v18 = v25;
      goto LABEL_9;
    }

LABEL_17:
    result = sub_1DF6339EC();
    __break(1u);
    return result;
  }

LABEL_9:
  v27 = a7;
  v28 = *v11;
  if (v22)
  {
    v29 = v28[7];
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(v27, a8);
    v31 = *(v30 - 8);
    v32 = *(v31 + 40);
    v33 = v30;
    v34 = v29 + *(v31 + 72) * v18;

    return v32(v34, a1, v33);
  }

  else
  {
    sub_1DF59DE7C(v18, a2, a3, a1, v28, a7, a8);
  }
}

uint64_t sub_1DF59F358(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  v6 = *(v3 + 40);
  sub_1DF633A6C();
  sub_1DF632ACC();
  v7 = sub_1DF633AAC();

  return a3(a1, a2, v7);
}

uint64_t sub_1DF59F3DC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1DF59F184(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_1DF5A1F40(v16, a4 & 1);
      v20 = *v5;
      v11 = sub_1DF59F184(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        result = sub_1DF6339EC();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_1DF5DE6A8();
      v11 = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    v23 = v22[7];
    v24 = *(v23 + 8 * v11);
    *(v23 + 8 * v11) = a1;
  }

  v22[(v11 >> 6) + 8] |= 1 << v11;
  v26 = (v22[6] + 16 * v11);
  *v26 = a2;
  v26[1] = a3;
  *(v22[7] + 8 * v11) = a1;
  v27 = v22[2];
  v15 = __OFADD__(v27, 1);
  v28 = v27 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22[2] = v28;
}

void sub_1DF59F558()
{
  sub_1DF63252C();
  if (v0 <= 0x3F)
  {
    sub_1DF59F604();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1DF59F604()
{
  if (!qword_1ED8E4BF8)
  {
    v0 = sub_1DF63327C();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED8E4BF8);
    }
  }
}

id sub_1DF59F654(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_1DF59F794(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_16;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      v16 = v8;
      sub_1DF5A2AA8();
      v8 = v16;
      goto LABEL_8;
    }

    sub_1DF59F8AC(v13, a3 & 1);
    v17 = *v4;
    v8 = sub_1DF59F794(a2);
    if ((v14 & 1) != (v18 & 1))
    {
LABEL_16:
      type metadata accessor for CFString(0);
      result = sub_1DF6339EC();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v19 = *v4;
  if (v14)
  {
    v20 = (v19[7] + 32 * v8);
    __swift_destroy_boxed_opaque_existential_1(v20);

    return sub_1DF5A27C4(a1, v20);
  }

  else
  {
    sub_1DF5A29F8(v8, a2, a1, v19);

    return a2;
  }
}

unint64_t sub_1DF59F794(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_1DF633A6C();
  type metadata accessor for CFString(0);
  sub_1DF5A27C8(&unk_1ED8E4BB0, 255, type metadata accessor for CFString);
  sub_1DF63265C();
  v4 = sub_1DF633AAC();

  return sub_1DF5A28E8(a1, v4);
}

uint64_t sub_1DF59F860()
{
  v1 = *v0;
  swift_getWitnessTable();
  return sub_1DF63266C();
}

uint64_t sub_1DF59F8AC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE429E0, &qword_1DF638C10);
  result = sub_1DF63372C();
  v8 = result;
  if (*(v5 + 16))
  {
    v33 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = (*(v5 + 56) + 32 * v20);
      if (a2)
      {
        sub_1DF5A5660(v22, v34);
      }

      else
      {
        sub_1DF5A0B98(v22, v34);
        v23 = v21;
      }

      v24 = *(v8 + 40);
      sub_1DF633A6C();
      type metadata accessor for CFString(0);
      sub_1DF5A2A60(&unk_1ED8E4BB0, type metadata accessor for CFString);
      sub_1DF63265C();
      result = sub_1DF633AAC();
      v25 = -1 << *(v8 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v15 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v15 + 8 * v27);
          if (v31 != -1)
          {
            v16 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v26) & ~*(v15 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v21;
      result = sub_1DF5A5660(v34, (*(v8 + 56) + 32 * v16));
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if ((a2 & 1) == 0)
    {

      v3 = v33;
      goto LABEL_36;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v33;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

double sub_1DF59FBA0@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = v2;
  v5 = *v2;
  v6 = sub_1DF59F794(a1);
  if (v7)
  {
    v8 = v6;
    v9 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v3;
    v13 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1DF5A2AA8();
      v11 = v13;
    }

    sub_1DF5A27C4(*(v11 + 56) + 32 * v8, a2);
    sub_1DF62EA64(v8, v11);
    *v3 = v11;
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

uint64_t sub_1DF59FC40(uint64_t a1, int a2)
{
  result[1] = *MEMORY[0x1E69E9840];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE437F0, &qword_1DF63E0F0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5 - 8);
  v9 = &v108 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = (&v108 - v10);
  v119 = type metadata accessor for Keychain.Item();
  v117 = *(v119 - 8);
  v12 = *(v117 + 64);
  v13 = MEMORY[0x1EEE9AC00](v119);
  v15 = (&v108 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v13);
  v118 = &v108 - v16;
  v121 = a1;
  result[0] = 0;
  v17 = *(a1 + 16);
  v113 = v2;
  v110 = a2;
  if (v17)
  {
    v18 = *MEMORY[0x1E697B260];

    v19 = sub_1DF59F794(v18);
    if (v20)
    {
      sub_1DF5A0B98(*(a1 + 56) + 32 * v19, &v124);
      if (swift_dynamicCast())
      {
        v22 = v123[0];
        v21 = v123[1];
        v23 = *MEMORY[0x1E697B268];
        if (v22 == sub_1DF632A2C() && v21 == v24)
        {

LABEL_68:
          v114 = 1;
          goto LABEL_9;
        }

        v105 = sub_1DF63394C();

        if (v105)
        {
          goto LABEL_68;
        }
      }
    }
  }

  else
  {
  }

  v114 = 0;
LABEL_9:
  v25 = *MEMORY[0x1E697AFF8];
  if (*(a1 + 16) && (v26 = sub_1DF59F794(*MEMORY[0x1E697AFF8]), (v27 & 1) != 0))
  {
    sub_1DF5A0B98(*(a1 + 56) + 32 * v26, &v124);
    sub_1DF59CB50(&v124, &qword_1ECE436C0, &qword_1DF6393D0);
  }

  else
  {
    v124 = 0u;
    v125 = 0u;
    sub_1DF59CB50(&v124, &qword_1ECE436C0, &qword_1DF6393D0);
    v28 = *MEMORY[0x1E697B008];
    type metadata accessor for CFString(0);
    *(&v125 + 1) = v29;
    *&v124 = v28;
    sub_1DF5A27C4(&v124, v123);
    v30 = v25;
    v31 = v28;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v122 = v121;
    sub_1DF59F654(v123, v30, isUniquelyReferenced_nonNull_native);

    a1 = v122;
    v121 = v122;
  }

  v33 = *MEMORY[0x1E697B310];
  if (*(a1 + 16) && (v34 = sub_1DF59F794(*MEMORY[0x1E697B310]), (v35 & 1) != 0))
  {
    sub_1DF5A0B98(*(a1 + 56) + 32 * v34, &v124);
  }

  else
  {
    v124 = 0u;
    v125 = 0u;
    sub_1DF59CB50(&v124, &qword_1ECE436C0, &qword_1DF6393D0);
    v36 = *MEMORY[0x1E695E4D0];
    if (*MEMORY[0x1E695E4D0])
    {
      type metadata accessor for CFBoolean(0);
      *(&v125 + 1) = v37;
      *&v124 = v36;
      sub_1DF5A27C4(&v124, v123);
      v38 = v33;
      v39 = v36;
      v40 = swift_isUniquelyReferenced_nonNull_native();
      v122 = v121;
      sub_1DF59F654(v123, v38, v40);

      v121 = v122;
      goto LABEL_20;
    }

    v41 = v33;
    sub_1DF59FBA0(v41, &v124);
  }

  sub_1DF59CB50(&v124, &qword_1ECE436C0, &qword_1DF6393D0);
LABEL_20:
  if (qword_1ED8E4C60 != -1)
  {
    goto LABEL_73;
  }

  while (1)
  {
    v42 = sub_1DF6326AC();
    v116 = __swift_project_value_buffer(v42, qword_1ED8E4C68);
    v43 = sub_1DF63268C();
    v44 = sub_1DF63318C();
    v45 = os_log_type_enabled(v43, v44);
    v112 = v15;
    v111 = v9;
    v115 = v42;
    if (v45)
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      *&v124 = v47;
      *v46 = 136315138;
      swift_beginAccess();
      type metadata accessor for CFString(0);
      sub_1DF5A2C28(&qword_1ED8E4BA8, type metadata accessor for CFString);

      v48 = sub_1DF63284C();
      v50 = v49;

      v51 = sub_1DF59EEC8(v48, v50, &v124);

      *(v46 + 4) = v51;
      _os_log_impl(&dword_1DF59A000, v43, v44, "SecItemCopyMatching() query: %s", v46, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v47);
      MEMORY[0x1E12D9D80](v47, -1, -1);
      MEMORY[0x1E12D9D80](v46, -1, -1);
    }

    swift_beginAccess();
    v52 = v121;
    type metadata accessor for CFString(0);
    sub_1DF5A2C28(&qword_1ED8E4BA8, type metadata accessor for CFString);

    v53 = sub_1DF63282C();

    v54 = SecItemCopyMatching(v53, result);

    v55 = sub_1DF63268C();
    v15 = sub_1DF63318C();
    if (os_log_type_enabled(v55, v15))
    {
      v56 = swift_slowAlloc();
      *v56 = 67109120;
      *(v56 + 4) = v54;
      _os_log_impl(&dword_1DF59A000, v55, v15, "SecItemCopyMatching() status: %d", v56, 8u);
      MEMORY[0x1E12D9D80](v56, -1, -1);
    }

    if (v54)
    {
      if (qword_1ED8E4A68 != -1)
      {
        swift_once();
      }

      v57 = __swift_project_value_buffer(v115, qword_1ED8E6928);
      v58 = sub_1DF63268C();
      v59 = sub_1DF63316C();
      if (os_log_type_enabled(v58, v59))
      {
        v57 = swift_slowAlloc();
        v60 = swift_slowAlloc();
        *&v124 = v60;
        *v57 = 67109378;
        *(v57 + 4) = v54;
        *(v57 + 8) = 2082;
        v61 = SecCopyErrorMessageString(v54, 0);
        if (v61)
        {
          v62 = v61;
          v63 = sub_1DF63298C();
          v65 = v64;
        }

        else
        {
          v65 = 0xE90000000000003ELL;
          v63 = 0x6E776F6E6B6E753CLL;
        }

        v101 = sub_1DF59EEC8(v63, v65, &v124);

        *(v57 + 10) = v101;
        _os_log_impl(&dword_1DF59A000, v58, v59, "SecItemCopyMatching error: %d [%{public}s]", v57, 0x12u);
        __swift_destroy_boxed_opaque_existential_1(v60);
        MEMORY[0x1E12D9D80](v60, -1, -1);
        MEMORY[0x1E12D9D80](v57, -1, -1);
      }

      sub_1DF63085C();
      swift_allocError();
      *v102 = v54;
      *(v102 + 4) = 0;
      swift_willThrow();
      goto LABEL_71;
    }

    if (!v114)
    {
      if (result[0] && (*&v124 = result[0], swift_unknownObjectRetain(), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE43810, &qword_1DF63E260), (swift_dynamicCast() & 1) != 0))
      {
        v67 = v123[0];
      }

      else
      {
        v67 = sub_1DF5C9488(MEMORY[0x1E69E7CC0]);
      }

      v82 = *(v67 + 16);

      if (v82 && (v83 = *MEMORY[0x1E697B3C0], v84 = sub_1DF59F794(*MEMORY[0x1E697B3C0]), (v85 & 1) != 0))
      {
        sub_1DF5A0B98(*(v67 + 56) + 32 * v84, &v124);
        sub_1DF59CB50(&v124, &qword_1ECE436C0, &qword_1DF6393D0);
        *(&v125 + 1) = MEMORY[0x1E69E6158];
        *&v124 = 0x455443414445523CLL;
        *(&v124 + 1) = 0xEA00000000003E44;
        sub_1DF5A27C4(&v124, v123);
        v86 = v83;
        v87 = swift_isUniquelyReferenced_nonNull_native();
        v120 = v67;
        sub_1DF59F654(v123, v86, v87);
      }

      else
      {
        v124 = 0u;
        v125 = 0u;
        sub_1DF59CB50(&v124, &qword_1ECE436C0, &qword_1DF6393D0);
      }

      v88 = sub_1DF63268C();
      v89 = sub_1DF63318C();
      if (os_log_type_enabled(v88, v89))
      {
        v90 = swift_slowAlloc();
        v91 = swift_slowAlloc();
        v109 = v52;
        v92 = v91;
        *&v124 = v91;
        *v90 = 136315138;

        v93 = sub_1DF63284C();
        v95 = v94;

        v96 = sub_1DF59EEC8(v93, v95, &v124);

        *(v90 + 4) = v96;
        _os_log_impl(&dword_1DF59A000, v88, v89, "SecItemCopyMatching() result: %s", v90, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v92);
        v97 = v92;
        v52 = v109;
        MEMORY[0x1E12D9D80](v97, -1, -1);
        MEMORY[0x1E12D9D80](v90, -1, -1);
      }

      v98 = v112;
      v57 = v111;

      sub_1DF5A0D98(v99, v57);
      if ((*(v117 + 48))(v57, 1, v119) == 1)
      {

        sub_1DF59CB50(v57, &qword_1ECE437F0, &qword_1DF63E0F0);
        sub_1DF63085C();
        swift_allocError();
        *v100 = 1;
        *(v100 + 4) = 1;
        swift_willThrow();
      }

      else
      {
        sub_1DF5A325C(v57, v98);
        if ((v110 & 1) == 0)
        {

          sub_1DF5A32D0(v67, v52);
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE428F0, &unk_1DF6388D8);
        v103 = *(v117 + 72);
        v104 = (*(v117 + 80) + 32) & ~*(v117 + 80);
        v57 = swift_allocObject();
        *(v57 + 16) = xmmword_1DF638990;
        sub_1DF5A325C(v98, v57 + v104);
      }

      goto LABEL_71;
    }

    if (result[0] && (*&v124 = result[0], swift_unknownObjectRetain(), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE43820, &qword_1DF63E270), (swift_dynamicCast() & 1) != 0))
    {
      v66 = v123[0];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE43818, &qword_1DF63E268);
      v66 = swift_allocObject();
      *(v66 + 16) = xmmword_1DF638990;
      *(v66 + 32) = sub_1DF5C9488(MEMORY[0x1E69E7CC0]);
    }

    v68 = sub_1DF63268C();
    v69 = sub_1DF63318C();

    v70 = os_log_type_enabled(v68, v69);
    v109 = v52;
    if (v70)
    {
      v71 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      *&v124 = v15;
      *v71 = 136315138;
      v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE43810, &qword_1DF63E260);
      v73 = MEMORY[0x1E12D8510](v66, v72);
      v75 = sub_1DF59EEC8(v73, v74, &v124);

      *(v71 + 4) = v75;
      _os_log_impl(&dword_1DF59A000, v68, v69, "SecItemCopyMatching() result: %s", v71, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v15);
      MEMORY[0x1E12D9D80](v15, -1, -1);
      MEMORY[0x1E12D9D80](v71, -1, -1);
    }

    v9 = *(v66 + 16);
    if (!v9)
    {
      break;
    }

    v76 = 0;
    v77 = (v117 + 48);
    v57 = MEMORY[0x1E69E7CC0];
    while (v76 < *(v66 + 16))
    {
      v78 = *(v66 + 32 + 8 * v76);

      sub_1DF5A0D98(v79, v11);
      if ((*v77)(v11, 1, v119) == 1)
      {
        sub_1DF59CB50(v11, &qword_1ECE437F0, &qword_1DF63E0F0);
      }

      else
      {
        sub_1DF5A325C(v11, v118);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v57 = sub_1DF5C16F8(0, *(v57 + 16) + 1, 1, v57);
        }

        v81 = *(v57 + 16);
        v80 = *(v57 + 24);
        v15 = (v81 + 1);
        if (v81 >= v80 >> 1)
        {
          v57 = sub_1DF5C16F8(v80 > 1, v81 + 1, 1, v57);
        }

        *(v57 + 16) = v15;
        sub_1DF5A325C(v118, v57 + ((*(v117 + 80) + 32) & ~*(v117 + 80)) + *(v117 + 72) * v81);
      }

      if (v9 == ++v76)
      {
        goto LABEL_70;
      }
    }

    __break(1u);
LABEL_73:
    swift_once();
  }

  v57 = MEMORY[0x1E69E7CC0];
LABEL_70:

LABEL_71:

  swift_unknownObjectRelease();
  v106 = *MEMORY[0x1E69E9840];
  return v57;
}

uint64_t sub_1DF5A0B98(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1DF5A0BF4(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1DF6326AC();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  return sub_1DF63269C();
}

unint64_t sub_1DF5A0C8C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_1DF5A819C(a5, a6);
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
    result = sub_1DF63350C();
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

uint64_t sub_1DF5A0D98@<X0>(char *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42D00, &qword_1DF63B250);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8);
  v107 = v94 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v109 = v94 - v8;
  v9 = sub_1DF63252C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v106 = v94 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v108 = v94 - v14;
  v15 = *MEMORY[0x1E697B3C0];
  v16 = *(a1 + 2);

  if (v16 && (v17 = sub_1DF59F794(v15), (v18 & 1) != 0))
  {
    sub_1DF5A0B98(*(a1 + 7) + 32 * v17, &v113);
    sub_1DF59CB50(&v113, &qword_1ECE436C0, &qword_1DF6393D0);
    *(&v114 + 1) = MEMORY[0x1E69E6158];
    *&v113 = 0x455443414445523CLL;
    *(&v113 + 1) = 0xEA00000000003E44;
    sub_1DF5A27C4(&v113, &v111);
    v19 = v15;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v110 = a1;
    sub_1DF59F654(&v111, v19, isUniquelyReferenced_nonNull_native);

    v21 = v110;
  }

  else
  {
    v113 = 0u;
    v114 = 0u;
    sub_1DF59CB50(&v113, &qword_1ECE436C0, &qword_1DF6393D0);
    v21 = a1;
  }

  if (qword_1ED8E4C60 != -1)
  {
    swift_once();
  }

  v103 = sub_1DF6326AC();
  __swift_project_value_buffer(v103, qword_1ED8E4C68);
  v22 = sub_1DF63268C();
  v23 = sub_1DF63318C();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v104 = v9;
    v105 = v10;
    v26 = a2;
    v27 = v25;
    *&v113 = v25;
    *v24 = 136315138;
    type metadata accessor for CFString(0);
    v28 = v15;
    sub_1DF5A2C28(&qword_1ED8E4BA8, type metadata accessor for CFString);

    v29 = sub_1DF63284C();
    v31 = v30;

    v32 = sub_1DF59EEC8(v29, v31, &v113);
    v15 = v28;

    *(v24 + 4) = v32;
    _os_log_impl(&dword_1DF59A000, v22, v23, "Creating Keychain.Item from cfDictionary: %s", v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v27);
    v33 = v27;
    a2 = v26;
    v9 = v104;
    v10 = v105;
    MEMORY[0x1E12D9D80](v33, -1, -1);
    MEMORY[0x1E12D9D80](v24, -1, -1);
  }

  if (*(a1 + 2))
  {
    v34 = sub_1DF59F794(*MEMORY[0x1E697ACF0]);
    if (v35)
    {
      sub_1DF5A0B98(*(a1 + 7) + 32 * v34, &v113);
      if (swift_dynamicCast())
      {
        v37 = v111;
        v36 = v112;
        v38 = v112 >> 62;
        if (v112 >> 62 == 3)
        {
          if (!v111 && v112 == 0xC000000000000000)
          {
            v39 = 0;
            v40 = 0xC000000000000000;
LABEL_24:
            sub_1DF5B33C0(v39, v40);
            goto LABEL_25;
          }

LABEL_23:
          v39 = v111;
          v40 = v112;
          goto LABEL_24;
        }

        if (v38)
        {
          if (v38 == 1)
          {
            LODWORD(v41) = HIDWORD(v111) - v111;
            if (!__OFSUB__(HIDWORD(v111), v111))
            {
              v41 = v41;
              goto LABEL_22;
            }

            __break(1u);
LABEL_79:
            __break(1u);
            goto LABEL_80;
          }

          v43 = *(v111 + 16);
          v42 = *(v111 + 24);
          v44 = __OFSUB__(v42, v43);
          v41 = v42 - v43;
          if (v44)
          {
            goto LABEL_79;
          }
        }

        else
        {
          v41 = BYTE6(v112);
        }

LABEL_22:
        if (v41)
        {
          goto LABEL_29;
        }

        goto LABEL_23;
      }
    }
  }

LABEL_25:
  if (*(a1 + 2))
  {
    v45 = sub_1DF59F794(v15);
    if (v46)
    {
      sub_1DF5A0B98(*(a1 + 7) + 32 * v45, &v113);
      if (swift_dynamicCast())
      {
        v37 = v111;
        v36 = v112;
LABEL_29:
        if (!*(a1 + 2))
        {
          goto LABEL_41;
        }

        goto LABEL_32;
      }
    }
  }

  v37 = 0;
  v36 = 0xF000000000000000;
  if (!*(a1 + 2))
  {
LABEL_41:
    sub_1DF5C3890(v37, v36);

LABEL_45:

    v57 = type metadata accessor for Keychain.Item();
    return (*(*(v57 - 8) + 56))(a2, 1, 1, v57);
  }

LABEL_32:
  v47 = sub_1DF59F794(*MEMORY[0x1E697AC30]);
  if ((v48 & 1) == 0)
  {
    goto LABEL_41;
  }

  sub_1DF5A0B98(*(a1 + 7) + 32 * v47, &v113);
  if ((swift_dynamicCast() & 1) == 0)
  {
    sub_1DF5C3890(v37, v36);
LABEL_44:

    goto LABEL_45;
  }

  if (!*(a1 + 2) || (v101 = v111, v49 = *MEMORY[0x1E697AE88], v102 = v112, v50 = sub_1DF59F794(v49), (v51 & 1) == 0))
  {
    sub_1DF5C3890(v37, v36);

    goto LABEL_44;
  }

  sub_1DF5A0B98(*(a1 + 7) + 32 * v50, &v113);
  if ((swift_dynamicCast() & 1) == 0)
  {
    sub_1DF5C3890(v37, v36);

    goto LABEL_45;
  }

  v100 = v112;
  if (!*(a1 + 2) || (v99 = v111, v52 = sub_1DF59F794(*MEMORY[0x1E697ACD0]), (v53 & 1) == 0))
  {
    sub_1DF5C3890(v37, v36);

    v54 = v109;
    (*(v10 + 56))(v109, 1, 1, v9);
    goto LABEL_48;
  }

  v95 = v15;
  v98 = a2;
  sub_1DF5A0B98(*(a1 + 7) + 32 * v52, &v113);
  v54 = v109;
  v55 = swift_dynamicCast();
  v56 = *(v10 + 56);
  v104 = v10 + 56;
  v97 = v56;
  (v56)(v54, v55 ^ 1u, 1, v9);
  v96 = *(v10 + 48);
  if (v96(v54, 1, v9) == 1)
  {
    sub_1DF5C3890(v37, v36);

    a2 = v98;
LABEL_48:
    v59 = v54;
LABEL_49:
    sub_1DF59CB50(v59, &qword_1ECE42D00, &qword_1DF63B250);
    goto LABEL_45;
  }

  v60 = *(v10 + 32);
  v94[1] = v10 + 32;
  v109 = v60;
  (v60)(v108, v54, v9);
  if (!*(a1 + 2) || (v61 = sub_1DF59F794(*MEMORY[0x1E697ADD0]), (v62 & 1) == 0))
  {
    sub_1DF5C3890(v37, v36);

    (*(v10 + 8))(v108, v9);
    v63 = v107;
    (v97)(v107, 1, 1, v9);
    goto LABEL_55;
  }

  sub_1DF5A0B98(*(a1 + 7) + 32 * v61, &v113);
  v63 = v107;
  v64 = swift_dynamicCast();
  (v97)(v63, v64 ^ 1u, 1, v9);
  if (v96(v63, 1, v9) == 1)
  {
    (*(v10 + 8))(v108, v9);
    sub_1DF5C3890(v37, v36);

LABEL_55:
    a2 = v98;
    v59 = v63;
    goto LABEL_49;
  }

  (v109)(v106, v63, v9);
  v65 = *(a1 + 2);
  a2 = v98;
  v94[0] = v21;
  v105 = v10;
  if (!v65)
  {
    goto LABEL_63;
  }

  v66 = sub_1DF59F794(*MEMORY[0x1E697ABD0]);
  v67 = v95;
  if (v68)
  {
    sub_1DF5A0B98(*(a1 + 7) + 32 * v66, &v113);
    if (swift_dynamicCast())
    {
      v70 = v111;
      v69 = v112;
      goto LABEL_70;
    }
  }

  if (*(a1 + 2))
  {

    v71 = sub_1DF59F794(v67);
    if (v72)
    {
      sub_1DF5A0B98(*(a1 + 7) + 32 * v71, &v113);
      sub_1DF59CB50(&v113, &qword_1ECE436C0, &qword_1DF6393D0);
      *(&v114 + 1) = MEMORY[0x1E69E6158];
      *&v113 = 0x455443414445523CLL;
      *(&v113 + 1) = 0xEA00000000003E44;
      sub_1DF5A27C4(&v113, &v111);
      v73 = v67;
      v74 = swift_isUniquelyReferenced_nonNull_native();
      v110 = a1;
      sub_1DF59F654(&v111, v73, v74);

      v107 = v110;
      goto LABEL_65;
    }
  }

  else
  {
LABEL_63:
  }

  v113 = 0u;
  v114 = 0u;
  sub_1DF59CB50(&v113, &qword_1ECE436C0, &qword_1DF6393D0);
  v107 = a1;
LABEL_65:
  v104 = v9;
  if (qword_1ECE425B0 != -1)
  {
LABEL_80:
    swift_once();
  }

  __swift_project_value_buffer(v103, qword_1ECE437D8);
  v75 = sub_1DF63268C();
  v76 = sub_1DF63316C();
  if (os_log_type_enabled(v75, v76))
  {
    v77 = swift_slowAlloc();
    v97 = v77;
    v103 = swift_slowAlloc();
    *&v113 = v103;
    *v77 = 136315138;
    type metadata accessor for CFString(0);
    sub_1DF5A2C28(&qword_1ED8E4BA8, type metadata accessor for CFString);

    v78 = sub_1DF63284C();
    v80 = v79;

    v81 = sub_1DF59EEC8(v78, v80, &v113);

    v82 = v97;
    *(v97 + 1) = v81;
    v83 = v82;
    _os_log_impl(&dword_1DF59A000, v75, v76, "Missing kSecAttrAccessGroup from %s", v82, 0xCu);
    v84 = v103;
    __swift_destroy_boxed_opaque_existential_1(v103);
    MEMORY[0x1E12D9D80](v84, -1, -1);
    MEMORY[0x1E12D9D80](v83, -1, -1);
  }

  else
  {
  }

  v70 = 0;
  v69 = 0xE000000000000000;
  v9 = v104;
LABEL_70:
  if (!*(a1 + 2) || (v85 = sub_1DF59F794(*MEMORY[0x1E697ABD8]), (v86 & 1) == 0))
  {
    sub_1DF5C3890(v37, v36);

    goto LABEL_76;
  }

  sub_1DF5A0B98(*(a1 + 7) + 32 * v85, &v113);

  if ((swift_dynamicCast() & 1) == 0 || (sub_1DF5A2D44(v111, v112, &v113), v87 = v113, v113 == 3))
  {
    sub_1DF5C3890(v37, v36);
LABEL_76:

    v88 = *(v105 + 8);
    v88(v106, v9);
    v88(v108, v9);
    goto LABEL_45;
  }

  *a2 = v70;
  a2[1] = v69;
  v89 = v100;
  a2[2] = v99;
  a2[3] = v89;
  v90 = v102;
  a2[4] = v101;
  a2[5] = v90;
  v91 = type metadata accessor for Keychain.Item();
  v92 = v109;
  (v109)(a2 + v91[7], v108, v9);
  (v92)(a2 + v91[8], v106, v9);

  *(a2 + v91[9]) = v87;
  v93 = (a2 + v91[10]);
  *v93 = v37;
  v93[1] = v36;
  return (*(*(v91 - 1) + 56))(a2, 0, 1, v91);
}

uint64_t sub_1DF5A1BF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42940, &qword_1DF638930);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v31[-1] - v11;
  swift_beginAccess();
  if (*(*(a2 + 128) + 16) && (v13 = *(a2 + 128), , sub_1DF59F358(a3, a4, sub_1DF5A3D44), v15 = v14, , (v15 & 1) != 0))
  {
    v16 = sub_1DF5A4B04();
    v18 = sub_1DF5A4BCC(v31, a3, a4);
    if (*v17)
    {
      v19 = v17;
      (*(v9 + 16))(v12, a1, v8);
      v20 = *v19;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v19 = v20;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v20 = sub_1DF5A501C(0, v20[2] + 1, 1, v20);
        *v19 = v20;
      }

      v23 = v20[2];
      v22 = v20[3];
      if (v23 >= v22 >> 1)
      {
        v20 = sub_1DF5A501C(v22 > 1, v23 + 1, 1, v20);
        *v19 = v20;
      }

      v20[2] = v23 + 1;
      (*(v9 + 32))(v20 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v23, v12, v8);
      (v18)(v31, 0);
      return (v16)(v32, 0);
    }

    else
    {
      (v18)(v31, 0);
      return (v16)(v32, 0);
    }
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42938, &qword_1DF638C80);
    v25 = *(v9 + 72);
    v26 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v27 = swift_allocObject();
    *(v27 + 16) = xmmword_1DF638990;
    (*(v9 + 16))(v27 + v26, a1, v8);
    swift_beginAccess();

    v28 = *(a2 + 128);
    v29 = swift_isUniquelyReferenced_nonNull_native();
    v31[0] = *(a2 + 128);
    *(a2 + 128) = 0x8000000000000000;
    sub_1DF59F3DC(v27, a3, a4, v29);

    *(a2 + 128) = v31[0];
    return swift_endAccess();
  }
}

uint64_t sub_1DF5A1F40(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42A50, &qword_1DF638CC8);
  v38 = a2;
  result = sub_1DF63372C();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v37 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v38 & 1) == 0)
      {
        v26 = v22[1];
      }

      v27 = *(v8 + 40);
      sub_1DF633A6C();
      sub_1DF632ACC();
      result = sub_1DF633AAC();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
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
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v37;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v10, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t static Keychain.data(account:service:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE437F0, &qword_1DF63E0F0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v52 - v11;
  v13 = type metadata accessor for Keychain.Item();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v52 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DF59DFB8();
  if (v4)
  {
    return a4;
  }

  v53 = v14;
  v54 = v17;
  v18 = *MEMORY[0x1E697AE88];
  v19 = MEMORY[0x1E69E6158];
  v58 = MEMORY[0x1E69E6158];
  *&v57 = a3;
  *(&v57 + 1) = a4;
  sub_1DF5A27C4(&v57, v56);

  v20 = MEMORY[0x1E69E7CC8];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v55 = v20;
  sub_1DF59F654(v56, v18, isUniquelyReferenced_nonNull_native);
  v22 = v55;
  v23 = *MEMORY[0x1E697AC30];
  v58 = v19;
  *&v57 = a1;
  *(&v57 + 1) = a2;
  sub_1DF5A27C4(&v57, v56);

  v24 = swift_isUniquelyReferenced_nonNull_native();
  v55 = v22;
  sub_1DF59F654(v56, v23, v24);
  v25 = v55;
  v26 = *MEMORY[0x1E697B260];
  v27 = *MEMORY[0x1E697B270];
  type metadata accessor for CFString(0);
  v58 = v28;
  *&v57 = v27;
  sub_1DF5A27C4(&v57, v56);
  v29 = v27;
  v30 = swift_isUniquelyReferenced_nonNull_native();
  v55 = v25;
  sub_1DF59F654(v56, v26, v30);
  v31 = v55;
  v59 = v55;
  v32 = *MEMORY[0x1E697B318];
  v33 = *MEMORY[0x1E695E4D0];
  if (*MEMORY[0x1E695E4D0])
  {
    type metadata accessor for CFBoolean(0);
    v35 = v34;
    v58 = v34;
    *&v57 = v33;
    sub_1DF5A27C4(&v57, v56);
    v36 = v33;
    v37 = v32;
    v38 = swift_isUniquelyReferenced_nonNull_native();
    v55 = v31;
    sub_1DF59F654(v56, v37, v38);

    v39 = v55;
    v40 = *MEMORY[0x1E697B390];
    v58 = v35;
    *&v57 = v36;
    sub_1DF5A27C4(&v57, v56);
    v41 = v40;
    v42 = swift_isUniquelyReferenced_nonNull_native();
    v55 = v39;
    sub_1DF59F654(v56, v41, v42);

    v59 = v55;
  }

  else
  {
    v43 = v32;
    sub_1DF59FBA0(v43, v56);

    sub_1DF59CB50(v56, &qword_1ECE436C0, &qword_1DF6393D0);
    v44 = *MEMORY[0x1E697B390];
    sub_1DF59FBA0(v44, v56);

    sub_1DF59CB50(v56, &qword_1ECE436C0, &qword_1DF6393D0);
  }

  v45 = *MEMORY[0x1E697AEB0];
  sub_1DF59FBA0(v45, &v57);

  result = sub_1DF59CB50(&v57, &qword_1ECE436C0, &qword_1DF6393D0);
  v48 = v53;
  v47 = v54;
  if (*MEMORY[0x1E697AEA8])
  {
    v49 = *MEMORY[0x1E697AEA8];
    sub_1DF59FBA0(v49, &v57);

    sub_1DF59CB50(&v57, &qword_1ECE436C0, &qword_1DF6393D0);
    v50 = sub_1DF59FC40(v59, 0);

    if (*(v50 + 16))
    {
      sub_1DF5A39C0(v50 + ((*(v48 + 80) + 32) & ~*(v48 + 80)), v12);

      (*(v48 + 56))(v12, 0, 1, v13);
    }

    else
    {

      (*(v48 + 56))(v12, 1, 1, v13);
    }

    if ((*(v48 + 48))(v12, 1, v13) == 1)
    {
      sub_1DF59CB50(v12, &qword_1ECE437F0, &qword_1DF63E0F0);
      return 0;
    }

    else
    {
      sub_1DF5A325C(v12, v47);
      v51 = v47 + *(v13 + 40);
      a4 = *v51;
      sub_1DF5A3A80(*v51, *(v51 + 8));
      sub_1DF5A3A24(v47);
    }

    return a4;
  }

  __break(1u);
  return result;
}

uint64_t sub_1DF5A27C8(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_1DF5A2858(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1DF5A28E8(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    type metadata accessor for CFString(0);
    sub_1DF5A27C8(&unk_1ED8E4BB0, 255, type metadata accessor for CFString);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_1DF63264C();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

uint64_t sub_1DF5A29F8(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  result = sub_1DF5A27C4(a3, a4[7] + 32 * a1);
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

uint64_t sub_1DF5A2A60(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_1DF5A2AA8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE429E0, &qword_1DF638C10);
  v2 = *v0;
  v3 = sub_1DF63371C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        sub_1DF5A0B98(*(v2 + 56) + 32 * v17, v19);
        *(*(v4 + 48) + 8 * v17) = v18;
        sub_1DF5A5660(v19, (*(v4 + 56) + 32 * v17));
        result = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_1DF5A2C28(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1DF5A2C70()
{
  sub_1DF633A6C();
  v1 = *v0;
  swift_getWitnessTable();
  sub_1DF63265C();
  return sub_1DF633AAC();
}

uint64_t sub_1DF5A2CD8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getWitnessTable();

  return sub_1DF63264C();
}

void sub_1DF5A2D44(uint64_t a1@<X0>, unint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = *MEMORY[0x1E697AC20];
  if (sub_1DF632A2C() == a1 && v7 == a2)
  {
    goto LABEL_18;
  }

  v9 = sub_1DF63394C();

  if (v9)
  {
    goto LABEL_19;
  }

  v10 = *MEMORY[0x1E697AC28];
  if (sub_1DF632A2C() == a1 && v11 == a2)
  {
LABEL_18:

LABEL_19:

    v18 = 0;
LABEL_20:
    *a3 = v18;
    return;
  }

  v13 = sub_1DF63394C();

  if (v13)
  {
    goto LABEL_19;
  }

  v14 = *MEMORY[0x1E697ABE0];
  if (sub_1DF632A2C() == a1 && v15 == a2)
  {
    goto LABEL_23;
  }

  v17 = sub_1DF63394C();

  if (v17)
  {
    goto LABEL_24;
  }

  v19 = *MEMORY[0x1E697ABE8];
  if (sub_1DF632A2C() == a1 && v20 == a2)
  {
LABEL_23:

LABEL_24:

    v18 = 1;
    goto LABEL_20;
  }

  v21 = sub_1DF63394C();

  if (v21)
  {
    goto LABEL_24;
  }

  if (*MEMORY[0x1E697ABF8])
  {
    v22 = *MEMORY[0x1E697ABF8];
    if (sub_1DF632A2C() == a1 && v23 == a2)
    {
LABEL_29:

LABEL_31:

      v18 = 2;
      goto LABEL_20;
    }

    v24 = sub_1DF63394C();

    if (v24)
    {
      goto LABEL_31;
    }

    if (*MEMORY[0x1E697AC08])
    {
      v25 = *MEMORY[0x1E697AC08];
      if (sub_1DF632A2C() != a1 || v26 != a2)
      {
        v27 = sub_1DF63394C();

        if ((v27 & 1) == 0)
        {
          if (qword_1ED8E4A88 != -1)
          {
            swift_once();
          }

          v28 = sub_1DF6326AC();
          __swift_project_value_buffer(v28, qword_1ED8E4A90);

          v29 = sub_1DF63268C();
          v30 = sub_1DF63316C();

          if (os_log_type_enabled(v29, v30))
          {
            v31 = swift_slowAlloc();
            v32 = swift_slowAlloc();
            v34 = v32;
            *v31 = 136315138;
            v33 = sub_1DF59EEC8(a1, a2, &v34);

            *(v31 + 4) = v33;
            _os_log_impl(&dword_1DF59A000, v29, v30, "Unexpected raw DataProtectionClass: %s", v31, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v32);
            MEMORY[0x1E12D9D80](v32, -1, -1);
            MEMORY[0x1E12D9D80](v31, -1, -1);
          }

          else
          {
          }

          v18 = 3;
          goto LABEL_20;
        }

        goto LABEL_31;
      }

      goto LABEL_29;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1DF5A30F8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1DF63252C();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1DF5A31B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1DF63252C();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1DF5A325C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Keychain.Item();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DF5A32C0(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

void sub_1DF5A32D0(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16))
  {
    v5 = *MEMORY[0x1E697ACF0];
    v6 = sub_1DF59F794(*MEMORY[0x1E697ACF0]);
    if (v7)
    {
      sub_1DF5A0B98(*(a1 + 56) + 32 * v6, &v55);
      v8 = MEMORY[0x1E6969080];
      if (swift_dynamicCast())
      {
        v9 = v54[0];
        v10 = *(&v54[0] + 1) >> 62;
        if (*(&v54[0] + 1) >> 62 == 3)
        {
          if (v54[0] == __PAIR128__(0xC000000000000000, 0))
          {
            sub_1DF5B33C0(0, 0xC000000000000000);
            return;
          }

          goto LABEL_25;
        }

        if (v10)
        {
          if (v10 == 1)
          {
            LODWORD(v11) = DWORD1(v54[0]) - LODWORD(v54[0]);
            if (!__OFSUB__(DWORD1(v54[0]), v54[0]))
            {
              v11 = v11;
              goto LABEL_13;
            }

            __break(1u);
LABEL_44:
            __break(1u);
            goto LABEL_45;
          }

          v13 = *(*&v54[0] + 16);
          v12 = *(*&v54[0] + 24);
          v14 = __OFSUB__(v12, v13);
          v11 = v12 - v13;
          if (v14)
          {
            goto LABEL_44;
          }
        }

        else
        {
          v11 = BYTE14(v54[0]);
        }

LABEL_13:
        if (!v11)
        {
LABEL_25:
          sub_1DF5B33C0(*&v54[0], *(&v54[0] + 1));
          return;
        }

        v15 = *MEMORY[0x1E697B3C0];
        v56 = v8;
        v55 = v54[0];
        sub_1DF5A27C4(&v55, v54);
        sub_1DF5A3A94(v9, *(&v9 + 1));
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        sub_1DF59F654(v54, v15, isUniquelyReferenced_nonNull_native);
        v56 = v8;
        v55 = xmmword_1DF6385D0;
        sub_1DF5A27C4(&v55, v54);
        v17 = swift_isUniquelyReferenced_nonNull_native();
        sub_1DF59F654(v54, v5, v17);
        if (*(a2 + 16) && (v18 = *MEMORY[0x1E697AE88], v19 = sub_1DF59F794(*MEMORY[0x1E697AE88]), (v20 & 1) != 0) && (sub_1DF5A0B98(*(a2 + 56) + 32 * v19, &v55), (swift_dynamicCast() & 1) != 0))
        {
          v21 = *(&v54[0] + 1);
          if (*(a2 + 16))
          {
            v22 = *&v54[0];
            v23 = *MEMORY[0x1E697AC30];
            v24 = sub_1DF59F794(*MEMORY[0x1E697AC30]);
            if (v25)
            {
              sub_1DF5A0B98(*(a2 + 56) + 32 * v24, &v55);
              if (swift_dynamicCast())
              {
                v26 = v54[0];
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE43828, &qword_1DF63E278);
                inited = swift_initStackObject();
                *(inited + 32) = v18;
                *(inited + 16) = xmmword_1DF63E0E0;
                v53 = v22;
                *(inited + 40) = v22;
                *(inited + 48) = v21;
                *(inited + 56) = v23;
                *(inited + 64) = v26;
                v28 = v18;

                v29 = v23;

                v30 = sub_1DF5C9388(inited);
                swift_setDeallocating();
                __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECE43830, &unk_1DF63E280);
                swift_arrayDestroy();
                v31 = sub_1DF62CC3C(v30);

                v2 = sub_1DF62F940(v31);

                if (!v2)
                {
                  if (qword_1ED8E4A68 != -1)
                  {
                    swift_once();
                  }

                  v46 = sub_1DF6326AC();
                  __swift_project_value_buffer(v46, qword_1ED8E6928);

                  v33 = sub_1DF63268C();
                  v47 = sub_1DF63318C();

                  if (!os_log_type_enabled(v33, v47))
                  {
                    sub_1DF5B33C0(v9, *(&v9 + 1));

                    goto LABEL_33;
                  }

                  v48 = swift_slowAlloc();
                  v49 = swift_slowAlloc();
                  *&v55 = v49;
                  *v48 = 136315394;
                  v50 = sub_1DF59EEC8(v53, v21, &v55);

                  *(v48 + 4) = v50;
                  *(v48 + 12) = 2080;
                  v51 = sub_1DF59EEC8(v26, *(&v26 + 1), &v55);

                  *(v48 + 14) = v51;
                  _os_log_impl(&dword_1DF59A000, v33, v47, "SecItemCopyMatching item migration success. s:%s, a: %s.", v48, 0x16u);
                  swift_arrayDestroy();
                  MEMORY[0x1E12D9D80](v49, -1, -1);
                  v45 = v48;
                  goto LABEL_31;
                }

                if (qword_1ED8E4A68 == -1)
                {
LABEL_22:
                  v32 = sub_1DF6326AC();
                  __swift_project_value_buffer(v32, qword_1ED8E6928);
                  v33 = sub_1DF63268C();
                  v34 = sub_1DF63316C();
                  if (!os_log_type_enabled(v33, v34))
                  {
LABEL_32:
                    sub_1DF5B33C0(v9, *(&v9 + 1));
LABEL_33:

                    return;
                  }

                  v35 = swift_slowAlloc();
                  v36 = swift_slowAlloc();
                  *&v55 = v36;
                  *v35 = 67109378;
                  *(v35 + 4) = v2;
                  *(v35 + 8) = 2082;
                  v37 = SecCopyErrorMessageString(v2, 0);
                  if (v37)
                  {
                    v38 = v37;
                    v39 = sub_1DF63298C();
                    v41 = v40;
                  }

                  else
                  {
                    v41 = 0xE90000000000003ELL;
                    v39 = 0x6E776F6E6B6E753CLL;
                  }

                  v52 = sub_1DF59EEC8(v39, v41, &v55);

                  *(v35 + 10) = v52;
                  _os_log_impl(&dword_1DF59A000, v33, v34, "SecItemCopyMatching item migration error: %d [%{public}s]", v35, 0x12u);
                  __swift_destroy_boxed_opaque_existential_1(v36);
                  MEMORY[0x1E12D9D80](v36, -1, -1);
                  v45 = v35;
LABEL_31:
                  MEMORY[0x1E12D9D80](v45, -1, -1);
                  goto LABEL_32;
                }

LABEL_45:
                swift_once();
                goto LABEL_22;
              }
            }
          }
        }

        else
        {
        }

        if (qword_1ED8E4A68 != -1)
        {
          swift_once();
        }

        v42 = sub_1DF6326AC();
        __swift_project_value_buffer(v42, qword_1ED8E6928);
        v33 = sub_1DF63268C();
        v43 = sub_1DF63316C();
        if (!os_log_type_enabled(v33, v43))
        {
          goto LABEL_32;
        }

        v44 = swift_slowAlloc();
        *v44 = 0;
        _os_log_impl(&dword_1DF59A000, v33, v43, "SecItemCopyMatching item migration error: missing account and service.", v44, 2u);
        v45 = v44;
        goto LABEL_31;
      }
    }
  }
}

uint64_t sub_1DF5A39C0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Keychain.Item();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DF5A3A24(uint64_t a1)
{
  v2 = type metadata accessor for Keychain.Item();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1DF5A3A80(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1DF5A3A94(a1, a2);
  }

  return a1;
}

uint64_t sub_1DF5A3A94(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

id Error.code.getter(uint64_t a1)
{
  v2 = *(a1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v5, v6, a1);
  v7 = sub_1DF6338FC();
  if (v7)
  {
    v8 = v7;
    (*(v2 + 8))(v5, a1);
  }

  else
  {
    v8 = swift_allocError();
    (*(v2 + 32))(v9, v5, a1);
  }

  v10 = sub_1DF63227C();

  v11 = [v10 code];
  return v11;
}

uint64_t sub_1DF5A3C48(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42D50, &qword_1DF63AAE0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

Swift::UInt64 __swiftcall convertToNanoseconds(_:)(Swift::UInt64 result)
{
  if (qword_1ECE42378 != -1)
  {
    v1 = result;
    swift_once();
    result = v1;
  }

  if (is_mul_ok(result, qword_1ECE42380))
  {
    if (HIDWORD(qword_1ECE42380))
    {
      return result * qword_1ECE42380 / HIDWORD(qword_1ECE42380);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_1DF5A3D44(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_1DF63394C())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_1DF5A3DFC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 104))
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

__n128 __swift_memcpy104_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 12);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t get_enum_tag_for_layout_string_10FindMyBase11Entitlement_pSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t get_enum_tag_for_layout_string_So15NSXPCConnectionCSbIeghHgd_Sg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t FM.XPCSession.init(service:)(uint64_t a1)
{
  v3 = sub_1DF6325AC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_defaultActor_initialize();
  *(v1 + qword_1ED8E5D70) = 0;
  sub_1DF63259C();
  (*(v4 + 32))(v1 + qword_1ED8E6A28, v7, v3);
  v8 = v1 + qword_1ED8E6A20;
  v9 = *(a1 + 80);
  *(v8 + 64) = *(a1 + 64);
  *(v8 + 80) = v9;
  *(v8 + 96) = *(a1 + 96);
  v10 = *(a1 + 16);
  *v8 = *a1;
  *(v8 + 16) = v10;
  v11 = *(a1 + 48);
  *(v8 + 32) = *(a1 + 32);
  *(v8 + 48) = v11;
  return v1;
}

uint64_t FM.XPCSession.__allocating_init(service:)(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  FM.XPCSession.init(service:)(a1);
  return v5;
}

uint64_t dispatch thunk of FM.XPCSession.resume()()
{
  v2 = *(*v0 + 184);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1DF59D2C4;

  return v6();
}

uint64_t sub_1DF5A410C()
{
  *(v1 + 16) = v0;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_1DF5A4304;

  return sub_1DF5A419C();
}

uint64_t sub_1DF5A41BC()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + qword_1ED8E5D70);
  if (v2)
  {
    v3 = *(v1 + qword_1ED8E5D70);
  }

  else
  {
    v4 = (v1 + qword_1ED8E6A20);
    v6 = *(v1 + qword_1ED8E6A20);
    v5 = *(v1 + qword_1ED8E6A20 + 8);
    v7 = *(v1 + qword_1ED8E6A20 + 16);
    v8 = objc_allocWithZone(MEMORY[0x1E696B0B8]);
    v9 = sub_1DF63295C();
    v10 = [v8 initWithMachServiceName:v9 options:v7];

    [v10 setExportedInterface_];
    [v10 setExportedObject_];
    [v10 setRemoteObjectInterface_];
    v11 = *(v1 + qword_1ED8E5D70);
    *(v1 + qword_1ED8E5D70) = v10;
    v3 = v10;

    v2 = 0;
  }

  v14 = *(v0 + 8);
  v12 = v2;

  return v14(v3);
}

uint64_t sub_1DF5A4304(uint64_t a1)
{
  v2 = *(*v1 + 24);
  v3 = *(*v1 + 16);
  v5 = *v1;
  *(*v1 + 32) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1DF5A441C, v3, 0);
}

uint64_t sub_1DF5A441C()
{
  v1 = *(v0 + 32);
  [v1 resume];

  v2 = *(v0 + 8);

  return v2();
}

uint64_t dispatch thunk of FM.XPCSession.connection.getter()
{
  v2 = *(*v0 + 144);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1DF5A459C;

  return v6();
}

uint64_t sub_1DF5A459C(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t sub_1DF5A4698()
{
  if (qword_1ED8E5C08 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED8E5C10;
  *(v0 + 40) = qword_1ED8E5C10;

  return MEMORY[0x1EEE6DFA0](sub_1DF5A4998, v1, 0);
}

uint64_t sub_1DF5A4734(uint64_t a1)
{
  if (qword_1ED8E60C0 != -1)
  {
    a1 = swift_once();
  }

  v1 = off_1ED8E60C8;
  v16 = 0x7365547265646E75;
  v17 = 0xE900000000000074;
  v2 = *(off_1ED8E60C8 + 2);
  v3 = MEMORY[0x1EEE9AC00](a1);
  MEMORY[0x1EEE9AC00](v3);
  os_unfair_lock_lock(v2 + 4);
  sub_1DF5A4B88(&v15);
  os_unfair_lock_unlock(v2 + 4);
  v4 = v15;
  if (v15 == 2)
  {
    has_internal_content = os_variant_has_internal_content();
    if (has_internal_content)
    {
      v6 = [objc_opt_self() processInfo];
      v7 = [v6 environment];

      v8 = sub_1DF63283C();
      if (*(v8 + 16))
      {
        sub_1DF59F184(0xD00000000000001BLL, 0x80000001DF635420);
        v10 = v9;
      }

      else
      {
        v10 = 0;
      }
    }

    else
    {
      v10 = 0;
    }

    v15 = v10 & 1;
    v11 = *(v1 + 2);
    v12 = MEMORY[0x1EEE9AC00](has_internal_content);
    MEMORY[0x1EEE9AC00](v12);
    os_unfair_lock_lock(v11 + 4);
    sub_1DF5A5000(v14);
    os_unfair_lock_unlock(v11 + 4);
    v4 = v14[0];
  }

  return v4 & 1;
}

uint64_t sub_1DF5A4998()
{
  v1 = v0[4];
  v2 = v0[5];
  v4 = v0[2];
  v3 = v0[3];
  v5 = sub_1DF63295C();
  sub_1DF59E6F8(v5, v4);

  v6 = v0[1];

  return v6();
}

uint64_t sub_1DF5A4A14()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE43090, &unk_1DF63AF20);
  v0 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42A80, qword_1DF638E00);
  result = swift_allocObject();
  *(result + 16) = 0;
  v2 = MEMORY[0x1E69E7CC8];
  *(v0 + 16) = result;
  *(v0 + 24) = v2;
  off_1ED8E60C8 = v0;
  return result;
}

uint64_t sub_1DF5A4B54@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1DF5A4C54(*(v1 + 16), **(v1 + 24), *(*(v1 + 24) + 8));
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

void *sub_1DF5A4B88@<X0>(_BYTE *a1@<X8>)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  result = v4(&v7);
  if (!v2)
  {
    *a1 = v7;
  }

  return result;
}

void (*sub_1DF5A4BCC(uint64_t **a1, uint64_t a2, uint64_t a3))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = sub_1DF5A4D28(v6, a2, a3);
  return sub_1DF5A5544;
}

uint64_t sub_1DF5A4C54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  v6 = *(a1 + 24);
  if (*(v6 + 16) && (v7 = sub_1DF59F184(a2, a3), (v8 & 1) != 0))
  {
    sub_1DF5A0B98(*(v6 + 56) + 32 * v7, v10);
  }

  else
  {
    memset(v10, 0, sizeof(v10));
  }

  swift_endAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE436C0, &qword_1DF6393D0);
  if (swift_dynamicCast())
  {
    return v11;
  }

  else
  {
    return 2;
  }
}

void (*sub_1DF5A4D28(uint64_t *a1, uint64_t a2, uint64_t a3))(uint64_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x50uLL);
  }

  v8 = v7;
  *a1 = v7;
  v9 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8[8] = sub_1DF5A4FD8(v8);
  v8[9] = sub_1DF5A4E14(v8 + 4, a2, a3, isUniquelyReferenced_nonNull_native);
  return sub_1DF5A5670;
}

uint64_t sub_1DF5A4DD4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1DF5A5210(*(v1 + 16), **(v1 + 24), *(*(v1 + 24) + 8), **(v1 + 32));
  if (!v2)
  {
    *a1 = result & 1;
  }

  return result;
}

void (*sub_1DF5A4E14(void *a1, uint64_t a2, uint64_t a3, char a4))(uint64_t **a1)
{
  v5 = v4;
  if (MEMORY[0x1E69E7D08])
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x30uLL);
  }

  v11 = v10;
  *a1 = v10;
  v10[2] = a3;
  v10[3] = v4;
  v10[1] = a2;
  v12 = *v4;
  v13 = sub_1DF59F358(a2, a3, sub_1DF5A3D44);
  *(v11 + 40) = v14 & 1;
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a4 & 1) == 0)
  {
    if (v20 >= v18 && (a4 & 1) == 0)
    {
      v21 = v13;
      sub_1DF5DE6A8();
      v13 = v21;
      goto LABEL_11;
    }

    sub_1DF5A1F40(v18, a4 & 1);
    v22 = *v5;
    v13 = sub_1DF59F358(a2, a3, sub_1DF5A3D44);
    if ((v19 & 1) == (v23 & 1))
    {
      goto LABEL_11;
    }

LABEL_16:
    result = sub_1DF6339EC();
    __break(1u);
    return result;
  }

LABEL_11:
  v11[4] = v13;
  if (v19)
  {
    v24 = *(*(*v5 + 56) + 8 * v13);
  }

  else
  {
    v24 = 0;
  }

  *v11 = v24;
  return sub_1DF5A5AE4;
}

void *sub_1DF5A4F94@<X0>(void *(*a1)(uint64_t *__return_ptr)@<X1>, _BYTE *a2@<X8>)
{
  result = a1(&v5);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

uint64_t (*sub_1DF5A4FD8(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_1DF5A5B98;
}

size_t sub_1DF5A501C(size_t result, int64_t a2, char a3, void *a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42938, &qword_1DF638C80);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42940, &qword_1DF638930) - 8);
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
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42940, &qword_1DF638930) - 8);
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

uint64_t sub_1DF5A5210(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  swift_beginAccess();
  v9 = *(a1 + 24);
  if (*(v9 + 16) && (v10 = sub_1DF59F184(a2, a3), (v11 & 1) != 0))
  {
    sub_1DF5A0B98(*(v9 + 56) + 32 * v10, &v30);
  }

  else
  {
    v30 = 0u;
    v31 = 0u;
  }

  swift_endAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE436C0, &qword_1DF6393D0);
  v12 = MEMORY[0x1E69E6370];
  if (swift_dynamicCast())
  {
    v13 = v32[0];
    if (qword_1ED8E5958 != -1)
    {
      swift_once();
    }

    v14 = sub_1DF6326AC();
    __swift_project_value_buffer(v14, qword_1ED8E69A0);

    v15 = sub_1DF63268C();
    v16 = sub_1DF63314C();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v32[0] = v18;
      *v17 = 141559043;
      *(v17 + 4) = 1752392040;
      *(v17 + 12) = 2081;
      LOBYTE(v30) = v13 & 1;
      v19 = sub_1DF632A3C();
      v21 = sub_1DF59EEC8(v19, v20, v32);
      v32[4] = v4;
      v22 = v21;

      *(v17 + 14) = v22;
      *(v17 + 22) = 2082;
      *&v30 = a2;
      *(&v30 + 1) = a3;

      v23 = sub_1DF632A3C();
      v25 = sub_1DF59EEC8(v23, v24, v32);

      *(v17 + 24) = v25;
      *(v17 + 32) = 2160;
      *(v17 + 34) = 1752392040;
      *(v17 + 42) = 2081;
      LOBYTE(v30) = a4 & 1;
      v26 = sub_1DF632A3C();
      v28 = sub_1DF59EEC8(v26, v27, v32);

      *(v17 + 44) = v28;
      _os_log_impl(&dword_1DF59A000, v15, v16, "Some other thread already stored value %{private,mask.hash}s for '%{public}s' -- ignoring computed value: %{private,mask.hash}s", v17, 0x34u);
      swift_arrayDestroy();
      MEMORY[0x1E12D9D80](v18, -1, -1);
      MEMORY[0x1E12D9D80](v17, -1, -1);
    }

    a4 = v13;
  }

  else
  {
    *(&v31 + 1) = v12;
    LOBYTE(v30) = a4 & 1;
    swift_beginAccess();

    sub_1DF5A5590(&v30, a2, a3);
    swift_endAccess();
  }

  return a4 & 1;
}

void sub_1DF5A5544(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

uint64_t sub_1DF5A5590(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 24))
  {
    sub_1DF5A5660(a1, v10);
    v6 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v3;
    sub_1DF5A56D0(v10, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v9;
  }

  else
  {
    sub_1DF59CB50(a1, &qword_1ECE436C0, &qword_1DF6393D0);
    sub_1DF62DCA8(a2, a3, v10);

    return sub_1DF59CB50(v10, &qword_1ECE436C0, &qword_1DF6393D0);
  }

  return result;
}

_OWORD *sub_1DF5A5660(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

void sub_1DF5A5670(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  (*(*a1 + 72))();
  v2(v1, 0);

  free(v1);
}

uint64_t sub_1DF5A56D0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1DF59F184(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_1DF5DEF94();
      v11 = v19;
      goto LABEL_8;
    }

    sub_1DF5A5BA4(v16, a4 & 1);
    v20 = *v5;
    v11 = sub_1DF59F184(a2, a3);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_16:
      result = sub_1DF6339EC();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v22 = *v5;
  if (v17)
  {
    v23 = (v22[7] + 32 * v11);
    __swift_destroy_boxed_opaque_existential_1(v23);

    return sub_1DF5A27C4(a1, v23);
  }

  else
  {
    sub_1DF5A5BCC(v11, a2, a3, a1, v22);
  }
}

uint64_t sub_1DF5A5820(uint64_t a1, char a2, uint64_t *a3, uint64_t *a4, void (*a5)(uint64_t, _BYTE *))
{
  v6 = v5;
  v8 = *v5;
  if (*(*v5 + 24) > a1)
  {
    v9 = *(*v5 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v39 = a2;
  result = sub_1DF63372C();
  v11 = result;
  if (*(v8 + 16))
  {
    v38 = v6;
    v12 = 0;
    v13 = (v8 + 64);
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 64);
    v17 = (v14 + 63) >> 6;
    v18 = result + 64;
    while (v16)
    {
      v21 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v24 = v21 | (v12 << 6);
      v25 = (*(v8 + 48) + 16 * v24);
      v26 = *v25;
      v27 = v25[1];
      v28 = *(v8 + 56) + 32 * v24;
      if (v39)
      {
        a5(v28, v41);
      }

      else
      {
        sub_1DF5A0B98(v28, v41);
      }

      v29 = *(v11 + 40);
      sub_1DF633A6C();
      sub_1DF632ACC();
      result = sub_1DF633AAC();
      v30 = -1 << *(v11 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v18 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v18 + 8 * v32);
          if (v36 != -1)
          {
            v19 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v31) & ~*(v18 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      v20 = (*(v11 + 48) + 16 * v19);
      *v20 = v26;
      v20[1] = v27;
      result = (a5)(v41, *(v11 + 56) + 32 * v19);
      ++*(v11 + 16);
    }

    v22 = v12;
    while (1)
    {
      v12 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v12 >= v17)
      {
        break;
      }

      v23 = v13[v12];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v16 = (v23 - 1) & v23;
        goto LABEL_17;
      }
    }

    if ((v39 & 1) == 0)
    {

      v6 = v38;
      goto LABEL_36;
    }

    v37 = 1 << *(v8 + 32);
    v6 = v38;
    if (v37 >= 64)
    {
      bzero((v8 + 64), ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v37;
    }

    *(v8 + 16) = 0;
  }

LABEL_36:
  *v6 = v11;
  return result;
}

void sub_1DF5A5AE4(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  v3 = *(*a1 + 40);
  if (v2)
  {
    v4 = v1[4];
    v5 = *v1[3];
    if (v3)
    {
      *(v5[7] + 8 * v4) = v2;
    }

    else
    {
      sub_1DF62F18C(v4, v1[1], v1[2], v2, v5);
    }
  }

  else if ((*a1)[5])
  {
    v6 = v1[4];
    v7 = *v1[3];
    sub_1DF5C9A54(*(v7 + 48) + 16 * v6);
    sub_1DF62E014(v6, v7);
  }

  v8 = *v1;

  free(v1);
}

uint64_t sub_1DF5A5BCC(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_1DF5A27C4(a4, a5[7] + 32 * a1);
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

uint64_t sub_1DF5A5C3C()
{
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v0 + 64) = v4;
  v5 = *(v0 + 32);
  *(v4 + 16) = v1;
  *(v4 + 24) = v3;
  *(v4 + 32) = v5;
  *(v4 + 48) = v2;
  v6 = *(MEMORY[0x1E69E8920] + 4);
  v7 = swift_task_alloc();
  *(v0 + 72) = v7;
  *v7 = v0;
  v7[1] = sub_1DF5AC10C;
  v8 = *(v0 + 56);
  v9 = *(v0 + 24);
  v10 = *(v0 + 32);
  v11 = *(v0 + 16);

  return MEMORY[0x1EEE6DE38](v11, 0, 0, v9, v10, sub_1DF5A5DEC, v4, v8);
}

uint64_t sub_1DF5A5D2C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECE42B18, &qword_1DF63B240);
  type metadata accessor for OnceCheckedContinuation();
  swift_allocObject();

  sub_1DF5A5E64(a1, a2, a3);
  a4();
}

uint64_t sub_1DF5A5DEC(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 48);
  return sub_1DF5A5D2C(a1, *(v1 + 24), *(v1 + 32), *(v1 + 40));
}

void *sub_1DF5A5E64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v18 = *v3;
  v19 = a3;
  v6 = v18[10];
  v7 = v18[11];
  v8 = v18[12];
  v9 = sub_1DF632E4C();
  v10 = sub_1DF63327C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v18 - v13;
  (*(*(v9 - 8) + 56))(&v18 - v13, 1, 1, v9);
  v15 = sub_1DF5A610C(v14, v10);
  (*(v11 + 8))(v14, v10);
  v3[2] = v15;
  v21 = v6;
  v22 = v7;
  v23 = v8;
  v24 = a1;

  sub_1DF5A61A8(sub_1DF5A6260, v20, v15);

  v16 = v19;
  v3[3] = a2;
  v3[4] = v16;
  return v3;
}

uint64_t sub_1DF5A6090()
{
  type metadata accessor for os_unfair_lock_s(255);
  sub_1DF6334FC();
  return sub_1DF6334EC();
}

uint64_t sub_1DF5A6110@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *a1;
  *(a1 + ((*(v4 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
  return (*(*(*(v4 + *MEMORY[0x1E69E6B68]) - 8) + 16))(a2, v3);
}

void sub_1DF5A61A8(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v5 = *(*a3 + *MEMORY[0x1E69E6B68] + 16);
  v6 = (*(*a3 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((a3 + v6));
  a1(a3 + v5);
  os_unfair_lock_unlock((a3 + v6));
}

uint64_t sub_1DF5A6260(uint64_t a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  return sub_1DF5A6280(a1, v1[5]);
}

uint64_t sub_1DF5A6280(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DF632E4C();
  v5 = sub_1DF63327C();
  (*(*(v5 - 8) + 8))(a1, v5);
  v6 = *(v4 - 8);
  (*(v6 + 16))(a1, a2, v4);
  return (*(v6 + 56))(a1, 0, 1, v4);
}

uint64_t XPCClient.proxy(errorHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v8 = *(a5 + 16);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  v5[5] = v10;
  *v10 = v5;
  v10[1] = sub_1DF5A6498;

  return v12(a4, a5);
}

uint64_t sub_1DF5A6498(uint64_t a1)
{
  v2 = *(*v1 + 40);
  v4 = *v1;
  *(*v1 + 48) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1DF5A6598, 0, 0);
}

void sub_1DF5A6598()
{
  if (v0[6])
  {
    v1 = swift_task_alloc();
    v0[7] = v1;
    *v1 = v0;
    v1[1] = sub_1DF5A663C;
    v2 = v0[3];
    v3 = v0[4];
    v4 = v0[2];

    sub_1DF5A6778(v4, v2, v3);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1DF5A663C()
{
  v2 = *(*v1 + 56);
  v3 = *v1;
  v3[8] = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1DF5BDFB4, 0, 0);
  }

  else
  {
    v4 = v3[6];

    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_1DF5A6778(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[14] = a3;
  v4[15] = v3;
  v4[12] = a1;
  v4[13] = a2;
  v4[16] = *(*v3 + 80);
  v5 = sub_1DF63327C();
  v4[17] = v5;
  v6 = *(v5 - 8);
  v4[18] = v6;
  v7 = *(v6 + 64) + 15;
  v4[19] = swift_task_alloc();
  v8 = swift_task_alloc();
  v4[20] = v8;
  *v8 = v4;
  v8[1] = sub_1DF5A6CFC;

  return sub_1DF5A419C();
}

uint64_t sub_1DF5A6910(uint64_t a1, void *a2)
{
  v4 = *v2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42C10, &qword_1DF63B260);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v13 - v7;
  v9 = sub_1DF632E9C();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = v2;
  v10[5] = a2;
  v10[6] = v4;

  v11 = a2;
  sub_1DF623C34(0, 0, v8, &unk_1DF63DAC8, v10);

  return 1;
}

uint64_t sub_1DF5A6A60()
{
  v1 = [*(v0 + 168) remoteObjectInterface];
  if (v1)
  {
    v2 = *(v0 + 168);
    v3 = *(v0 + 152);
    v4 = *(v0 + 128);
    v6 = *(v0 + 104);
    v5 = *(v0 + 112);

    *(v0 + 48) = v6;
    *(v0 + 56) = v5;
    *(v0 + 16) = MEMORY[0x1E69E9820];
    *(v0 + 24) = 1107296256;
    *(v0 + 32) = sub_1DF614148;
    *(v0 + 40) = &block_descriptor_0;
    v7 = _Block_copy((v0 + 16));
    v8 = *(v0 + 56);

    v9 = [v2 remoteObjectProxyWithErrorHandler_];
    _Block_release(v7);
    sub_1DF63339C();
    swift_unknownObjectRelease();
    if (swift_dynamicCast())
    {
      v10 = *(v0 + 152);
      v11 = *(v0 + 128);
      v12 = *(v0 + 96);

      v13 = *(v11 - 8);
      (*(v13 + 56))(v10, 0, 1, v11);
      (*(v13 + 32))(v12, v10, v11);

      v14 = *(v0 + 8);
      goto LABEL_7;
    }

    v17 = *(v0 + 144);
    v16 = *(v0 + 152);
    v18 = *(v0 + 136);
    v15 = 1;
    (*(*(*(v0 + 128) - 8) + 56))(v16, 1, 1);
    (*(v17 + 8))(v16, v18);
  }

  else
  {
    v15 = 0;
  }

  sub_1DF6149F4();
  swift_allocError();
  v19 = *(v0 + 168);
  v20 = *(v0 + 152);
  *v21 = v15;
  swift_willThrow();

  v14 = *(v0 + 8);
LABEL_7:

  return v14();
}

uint64_t sub_1DF5A6CFC(uint64_t a1)
{
  v2 = *(*v1 + 160);
  v3 = *(*v1 + 120);
  v5 = *v1;
  *(*v1 + 168) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1DF5A6A60, v3, 0);
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

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
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

uint64_t sub_1DF5A6E54(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1DF59D2C8;

  return sub_1DF5A6F1C(a1, v4, v5, v6, v7);
}

uint64_t sub_1DF5A6F1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *MEMORY[0x1E69E9840];
  *(v5 + 648) = a5;
  *(v5 + 640) = a4;
  v6 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](sub_1DF5A6FB0, a4, 0);
}

uint64_t sub_1DF5A6FB0()
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 640);
  swift_beginAccess();
  *(v0 + 656) = *(v1 + 136);

  v2 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](sub_1DF5A7064, 0, 0);
}

uint64_t sub_1DF5A7064()
{
  v91 = v0;
  v90[1] = *MEMORY[0x1E69E9840];
  v1 = [*(v0 + 648) serviceName];
  v2 = *(v0 + 656);
  if (!v1)
  {
    goto LABEL_9;
  }

  v3 = v1;
  v4 = sub_1DF63298C();
  v6 = v5;

  v7 = *(v2 + 16);
  v8 = *(v0 + 656);
  if (!v7)
  {

    goto LABEL_9;
  }

  v9 = sub_1DF59F184(v4, v6);
  v11 = v10;

  if ((v11 & 1) == 0)
  {
LABEL_9:

    if (qword_1ED8E4D08 != -1)
    {
      swift_once();
    }

    v25 = *(v0 + 640);
    v26 = sub_1DF6326AC();
    __swift_project_value_buffer(v26, qword_1ED8E6988);

    v27 = sub_1DF63268C();
    v28 = sub_1DF63316C();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = *(v0 + 640);
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v90[0] = v31;
      *v30 = 136446210;
      *(v30 + 4) = sub_1DF59EEC8(*(v29 + 112), *(v29 + 120), v90);
      _os_log_impl(&dword_1DF59A000, v27, v28, "XPCSessionManager(%{public}s: Not accepting connection since a service description is not registered", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v31);
      MEMORY[0x1E12D9D80](v31, -1, -1);
      MEMORY[0x1E12D9D80](v30, -1, -1);
    }

    [*(v0 + 648) invalidate];
    goto LABEL_14;
  }

  v12 = *(v0 + 648);
  sub_1DF5A7C1C(*(*(v0 + 656) + 56) + 112 * v9, v0 + 128);

  v13 = *(v0 + 208);
  *(v0 + 80) = *(v0 + 192);
  *(v0 + 96) = v13;
  *(v0 + 112) = *(v0 + 224);
  v14 = *(v0 + 144);
  *(v0 + 16) = *(v0 + 128);
  *(v0 + 32) = v14;
  v15 = *(v0 + 176);
  *(v0 + 48) = *(v0 + 160);
  *(v0 + 64) = v15;
  sub_1DF5A7C78(v0 + 16, v0 + 240);
  sub_1DF59CC98(v0 + 64, v0 + 440, &unk_1ECE43730, &qword_1DF63DAD0);
  [v12 auditToken];
  v16 = xpc_copy_code_signing_identity_for_token();
  if (!v16)
  {
    sub_1DF624F50();
    swift_allocError();
    swift_willThrow();
    sub_1DF59CB50(v0 + 440, &unk_1ECE43730, &qword_1DF63DAD0);
    sub_1DF5A84F8(v0 + 16);
    sub_1DF5A8528(v0 + 240);
    v32 = *(v0 + 8);
    v35 = *MEMORY[0x1E69E9840];
    goto LABEL_15;
  }

  v17 = v16;
  v18 = sub_1DF632B2C();
  v20 = v19;
  MEMORY[0x1E12D9D80](v17, -1, -1);
  sub_1DF59CC98(v0 + 440, v0 + 520, &unk_1ECE43730, &qword_1DF63DAD0);
  if (!*(v0 + 544))
  {
    sub_1DF59CB50(v0 + 520, &unk_1ECE43730, &qword_1DF63DAD0);
    goto LABEL_20;
  }

  v21 = *(v0 + 648);
  sub_1DF5A7D18((v0 + 520), v0 + 480);
  v22 = *(v0 + 504);
  v23 = *(v0 + 512);
  v24 = __swift_project_boxed_opaque_existential_1((v0 + 480), v22);
  if (NSXPCConnection.hasEntitlement<A>(_:)(v24, v22, v23))
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 480));
LABEL_20:
    v36 = (v0 + 344);
    v37 = (v0 + 392);
    if (qword_1ED8E4D08 != -1)
    {
      swift_once();
    }

    v38 = *(v0 + 648);
    v39 = *(v0 + 640);
    v40 = sub_1DF6326AC();
    __swift_project_value_buffer(v40, qword_1ED8E6988);

    v41 = v38;

    v42 = sub_1DF63268C();
    v43 = sub_1DF63318C();

    if (os_log_type_enabled(v42, v43))
    {
      v44 = *(v0 + 648);
      v45 = *(v0 + 640);
      v46 = swift_slowAlloc();
      v88 = v18;
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v90[0] = v48;
      *v46 = 136446722;
      v49 = *(v45 + 112);
      v50 = *(v45 + 120);
      v37 = (v0 + 392);
      v36 = (v0 + 344);
      *(v46 + 4) = sub_1DF59EEC8(v49, v50, v90);
      *(v46 + 12) = 2114;
      *(v46 + 14) = v44;
      *v47 = v44;
      *(v46 + 22) = 2080;
      v51 = v44;
      v52 = sub_1DF59EEC8(v88, v20, v90);

      *(v46 + 24) = v52;
      _os_log_impl(&dword_1DF59A000, v42, v43, "XPCSessionManager(%{public}s: New XPC connection: %{public}@ from %s", v46, 0x20u);
      sub_1DF59CB50(v47, &qword_1ECE42AF0, &qword_1DF63ABC0);
      MEMORY[0x1E12D9D80](v47, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x1E12D9D80](v48, -1, -1);
      MEMORY[0x1E12D9D80](v46, -1, -1);
    }

    else
    {
    }

    v53 = *(v0 + 648);
    v54 = *(v0 + 640);
    [v53 setExportedInterface_];
    [v53 setExportedObject_];
    [v53 setRemoteObjectInterface_];
    v55 = swift_allocObject();
    swift_weakInit();
    v56 = swift_allocObject();
    *(v56 + 16) = v55;
    *(v56 + 24) = v53;
    *(v0 + 376) = sub_1DF6252D8;
    *(v0 + 384) = v56;
    *(v0 + 344) = MEMORY[0x1E69E9820];
    *(v0 + 352) = 1107296256;
    *(v0 + 360) = sub_1DF6126B8;
    *(v0 + 368) = &block_descriptor_2;
    v57 = _Block_copy(v36);
    v58 = *(v0 + 384);
    v59 = v53;

    [v59 setInterruptionHandler_];
    _Block_release(v57);
    v60 = swift_allocObject();
    swift_weakInit();
    v61 = swift_allocObject();
    *(v61 + 16) = v60;
    *(v61 + 24) = v59;
    *(v0 + 424) = sub_1DF625350;
    *(v0 + 432) = v61;
    *(v0 + 392) = MEMORY[0x1E69E9820];
    *(v0 + 400) = 1107296256;
    *(v0 + 408) = sub_1DF6126B8;
    *(v0 + 416) = &block_descriptor_33;
    v62 = _Block_copy(v37);
    v63 = *(v0 + 432);
    v64 = v59;

    [v64 setInvalidationHandler_];
    _Block_release(v62);
    v65 = *(v0 + 328);
    *(v0 + 664) = v65;
    if (v65)
    {
      *(v0 + 672) = *(v0 + 336);

      v89 = (v65 + *v65);
      v66 = v65[1];
      v67 = swift_task_alloc();
      *(v0 + 680) = v67;
      *v67 = v0;
      v67[1] = sub_1DF5A83CC;
      v68 = *(v0 + 648);
      v69 = *MEMORY[0x1E69E9840];

      return v89(v68);
    }

    [*(v0 + 648) resume];
    sub_1DF59CB50(v0 + 440, &unk_1ECE43730, &qword_1DF63DAD0);
    sub_1DF5A84F8(v0 + 16);
    sub_1DF5A8528(v0 + 240);
    goto LABEL_14;
  }

  [*(v0 + 648) invalidate];
  if (qword_1ED8E4D08 != -1)
  {
    swift_once();
  }

  v70 = *(v0 + 648);
  v71 = *(v0 + 640);
  v72 = sub_1DF6326AC();
  __swift_project_value_buffer(v72, qword_1ED8E6988);
  sub_1DF625388(v0 + 480, v0 + 560);

  v73 = v70;

  v74 = sub_1DF63268C();
  v75 = sub_1DF63318C();

  if (os_log_type_enabled(v74, v75))
  {
    v76 = *(v0 + 648);
    v77 = *(v0 + 640);
    v78 = swift_slowAlloc();
    v79 = swift_slowAlloc();
    v80 = swift_slowAlloc();
    v90[0] = v80;
    *v78 = 136446978;
    *(v78 + 4) = sub_1DF59EEC8(*(v77 + 112), *(v77 + 120), v90);
    *(v78 + 12) = 2114;
    *(v78 + 14) = v76;
    *v79 = v76;
    *(v78 + 22) = 2080;
    v81 = v76;
    v82 = sub_1DF59EEC8(v18, v20, v90);

    *(v78 + 24) = v82;
    *(v78 + 32) = 2080;
    v83 = *(v0 + 592);
    __swift_project_boxed_opaque_existential_1((v0 + 560), *(v0 + 584));
    v84 = *(v83 + 8);
    sub_1DF632CAC();
    v85 = *(v0 + 624);
    v86 = *(v0 + 632);
    __swift_destroy_boxed_opaque_existential_1((v0 + 560));
    v87 = sub_1DF59EEC8(v85, v86, v90);

    *(v78 + 34) = v87;
    _os_log_impl(&dword_1DF59A000, v74, v75, "XPCSessionManager(%{public}s: Ignoring unentitled XPC connection: %{public}@ from %s [Missing %s entitlement]", v78, 0x2Au);
    sub_1DF59CB50(v79, &qword_1ECE42AF0, &qword_1DF63ABC0);
    MEMORY[0x1E12D9D80](v79, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x1E12D9D80](v80, -1, -1);
    MEMORY[0x1E12D9D80](v78, -1, -1);

    sub_1DF59CB50(v0 + 440, &unk_1ECE43730, &qword_1DF63DAD0);
    sub_1DF5A84F8(v0 + 16);
  }

  else
  {

    sub_1DF59CB50(v0 + 440, &unk_1ECE43730, &qword_1DF63DAD0);
    sub_1DF5A84F8(v0 + 16);
    __swift_destroy_boxed_opaque_existential_1((v0 + 560));
  }

  sub_1DF5A8528(v0 + 240);
  __swift_destroy_boxed_opaque_existential_1((v0 + 480));
LABEL_14:
  v32 = *(v0 + 8);
  v33 = *MEMORY[0x1E69E9840];
LABEL_15:

  return v32();
}

uint64_t sub_1DF5A7BDC()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_1DF5A7D18(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

BOOL NSXPCConnection.hasEntitlement<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 8);
  sub_1DF632CAC();
  v4 = NSXPCConnection.hasEntitlement(_:)(v6);

  return v4;
}

Swift::Bool __swiftcall NSXPCConnection.hasEntitlement(_:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  v4 = sub_1DF63295C();
  v5 = [v1 valueForEntitlement_];

  if (v5)
  {
    sub_1DF63339C();
    swift_unknownObjectRelease();
  }

  else
  {
    v16 = 0u;
    v17 = 0u;
  }

  v18[0] = v16;
  v18[1] = v17;
  if (*(&v17 + 1))
  {
    if (swift_dynamicCast() & 1) != 0 && (v15)
    {
      return 1;
    }
  }

  else
  {
    sub_1DF59CB50(v18, &qword_1ECE436C0, &qword_1DF6393D0);
  }

  if (qword_1ED8E5990 != -1)
  {
    swift_once();
  }

  v7 = sub_1DF6326AC();
  __swift_project_value_buffer(v7, qword_1ED8E69B8);
  v8 = v1;

  v9 = sub_1DF63268C();
  v10 = sub_1DF63316C();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *&v18[0] = v13;
    *v11 = 138543618;
    *(v11 + 4) = v8;
    *v12 = v8;
    *(v11 + 12) = 2082;
    v14 = v8;
    *(v11 + 14) = sub_1DF59EEC8(countAndFlagsBits, object, v18);
    _os_log_impl(&dword_1DF59A000, v9, v10, "Connection %{public}@ does not have entitlement: [%{public}s]", v11, 0x16u);
    sub_1DF59CB50(v12, &qword_1ECE42AF0, &qword_1DF63ABC0);
    MEMORY[0x1E12D9D80](v12, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v13);
    MEMORY[0x1E12D9D80](v13, -1, -1);
    MEMORY[0x1E12D9D80](v11, -1, -1);
  }

  return 0;
}

uint64_t sub_1DF5A7FF8(uint64_t a1, unint64_t a2)
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

  v6 = sub_1DF5A8128(v5, 0);
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

  result = sub_1DF63350C();
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
        v10 = sub_1DF632B3C();
        if (!v10)
        {
          return MEMORY[0x1E69E7CC0];
        }

        v11 = v10;
        v7 = sub_1DF5A8128(v10, 0);
        result = sub_1DF63343C();
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

void *sub_1DF5A8128(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42980, &qword_1DF638970);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

uint64_t sub_1DF5A819C(uint64_t a1, unint64_t a2)
{
  v4 = sub_1DF5A7FF8(a1, a2);
  sub_1DF5A81E8(&unk_1F5A93AE8);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_1DF5A81E8(uint64_t result)
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
  v7 = *v1;
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
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_1DF5C48C8(result, v12, 1, v3);
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
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1DF5A82D8()
{
  v7 = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 720);
  v2 = *(v0 + 672);
  sub_1DF5A83BC(*(v0 + 664));
  v3 = &selRef_resume;
  if (!v1)
  {
    v3 = &selRef_invalidate;
  }

  [*(v0 + 648) *v3];
  sub_1DF59CB50(v0 + 440, &unk_1ECE43730, &qword_1DF63DAD0);
  sub_1DF5A84F8(v0 + 16);
  sub_1DF5A8528(v0 + 240);
  v4 = *(v0 + 8);
  v5 = *MEMORY[0x1E69E9840];

  return v4();
}

uint64_t sub_1DF5A83BC(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1DF5A83CC(char a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = *(*v1 + 680);
  v6 = *v1;
  *(*v1 + 720) = a1;

  v3 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](sub_1DF5A82D8, 0, 0);
}

uint64_t sub_1DF5A857C()
{
  v1 = v0[16];
  v2 = v0[6];
  (*(v0[12] + 16))(v0[13], v0[7], v0[5]);
  sub_1DF632C1C();
  v3 = v0[16];
  v4 = v0[14];
  v5 = v0[11];
  v6 = v0[8];
  v7 = v0[9];
  v9 = v0[5];
  v8 = v0[6];
  swift_getAssociatedConformanceWitness();
  sub_1DF63329C();
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    (*(v0[15] + 8))(v0[16], v0[14]);
    v10 = v0[16];
    v11 = v0[13];
    v13 = v0[10];
    v12 = v0[11];
    (*(v0[9] + 56))(v0[2], 1, 1, v0[8]);

    v14 = v0[1];

    return v14();
  }

  else
  {
    v16 = v0[10];
    v17 = v0[11];
    v18 = v0[8];
    v19 = v0[9];
    v20 = v0[3];
    v21 = *(v19 + 32);
    v0[17] = v21;
    v0[18] = (v19 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v21(v16, v17, v18);
    v26 = (v20 + *v20);
    v22 = v20[1];
    v23 = swift_task_alloc();
    v0[19] = v23;
    *v23 = v0;
    v23[1] = sub_1DF5A8A7C;
    v24 = v0[10];
    v25 = v0[4];

    return v26(v24);
  }
}

uint64_t sub_1DF5A87F4()
{
  if (*(v0 + 168))
  {
    v2 = *(v0 + 136);
    v1 = *(v0 + 144);
    v3 = *(v0 + 80);
    v4 = *(v0 + 64);
    v5 = *(v0 + 16);
    (*(*(v0 + 120) + 8))(*(v0 + 128), *(v0 + 112));
    v2(v5, v3, v4);
    v6 = 0;
LABEL_5:
    v14 = *(v0 + 128);
    v15 = *(v0 + 104);
    v17 = *(v0 + 80);
    v16 = *(v0 + 88);
    (*(*(v0 + 72) + 56))(*(v0 + 16), v6, 1, *(v0 + 64));

    v18 = *(v0 + 8);

    return v18();
  }

  (*(*(v0 + 72) + 8))(*(v0 + 80), *(v0 + 64));
  v7 = *(v0 + 128);
  v8 = *(v0 + 112);
  v9 = *(v0 + 88);
  v10 = *(v0 + 64);
  v11 = *(v0 + 72);
  v13 = *(v0 + 40);
  v12 = *(v0 + 48);
  swift_getAssociatedConformanceWitness();
  sub_1DF63329C();
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    (*(*(v0 + 120) + 8))(*(v0 + 128), *(v0 + 112));
    v6 = 1;
    goto LABEL_5;
  }

  v20 = *(v0 + 80);
  v21 = *(v0 + 88);
  v22 = *(v0 + 64);
  v23 = *(v0 + 72);
  v24 = *(v0 + 24);
  v25 = *(v23 + 32);
  *(v0 + 136) = v25;
  *(v0 + 144) = (v23 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v25(v20, v21, v22);
  v30 = (v24 + *v24);
  v26 = v24[1];
  v27 = swift_task_alloc();
  *(v0 + 152) = v27;
  *v27 = v0;
  v27[1] = sub_1DF5A8A7C;
  v28 = *(v0 + 80);
  v29 = *(v0 + 32);

  return v30(v28);
}

uint64_t sub_1DF5A8A7C(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 152);
  v6 = *v2;
  *(*v2 + 160) = v1;

  if (v1)
  {
    v7 = sub_1DF5CB184;
  }

  else
  {
    *(v4 + 168) = a1 & 1;
    v7 = sub_1DF5A87F4;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t *FM.XPCSession.init(connection:)(void *a1)
{
  v3 = *v1;
  v4 = sub_1DF6325AC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_defaultActor_initialize();
  *(v1 + qword_1ED8E5D70) = 0;
  v9 = a1;
  v10 = [v9 serviceName];
  if (v10)
  {
    v11 = v10;
    v12 = sub_1DF63298C();
    v14 = v13;

    if ([v9 exportedObject])
    {
      sub_1DF63339C();
      swift_unknownObjectRelease();
    }

    else
    {
      v25 = 0u;
      v26 = 0u;
    }

    v27[0] = v25;
    v27[1] = v26;
    if (*(&v26 + 1))
    {
      sub_1DF5A8EB8();
      if (swift_dynamicCast())
      {
        v18 = v24[1];
      }

      else
      {
        v18 = 0;
      }
    }

    else
    {
      sub_1DF60EC44(v27);
      v18 = 0;
    }

    v19 = [v9 exportedInterface];
    v20 = [v9 remoteObjectInterface];

    sub_1DF63259C();
    (*(v5 + 32))(v1 + qword_1ED8E6A28, v8, v4);
    v21 = v1 + qword_1ED8E6A20;
    *v21 = v12;
    *(v21 + 8) = v14;
    *(v21 + 16) = 0;
    *(v21 + 24) = v18;
    *(v21 + 32) = v19;
    *(v21 + 40) = v20;
    *(v21 + 48) = 0u;
    *(v21 + 64) = 0u;
    *(v21 + 80) = 0u;
    *(v21 + 96) = 0;
    v22 = *(v1 + qword_1ED8E5D70);
    *(v1 + qword_1ED8E5D70) = v9;
  }

  else
  {

    v15 = *(v3 + 80);
    type metadata accessor for FM.XPCSession();
    swift_defaultActor_destroy();

    v16 = *(*v1 + 48);
    v17 = *(*v1 + 52);
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v1;
}

uint64_t *FM.XPCSession.__allocating_init(connection:)(void *a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  swift_allocObject();
  return FM.XPCSession.init(connection:)(a1);
}

unint64_t sub_1DF5A8EB8()
{
  result = qword_1ED8E49E0;
  if (!qword_1ED8E49E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED8E49E0);
  }

  return result;
}

uint64_t dispatch thunk of XPCAcceptedClient.init(session:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 32);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_1DF5A902C;

  return v11(a1, a2, a3);
}

uint64_t sub_1DF5A902C(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t XPCAcceptedClient.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  (*(a3 + 24))(a2, a3);
  FM.XPCSession.hash(into:)();
}

uint64_t FM.XPCSession.hash(into:)()
{
  sub_1DF6325AC();
  sub_1DF5A924C(&qword_1ED8E6150, MEMORY[0x1E69695A8]);
  return sub_1DF6328CC();
}

uint64_t sub_1DF5A9208(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1DF6325AC();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1DF5A924C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t static XPCAcceptedClient.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getAssociatedTypeWitness();
  type metadata accessor for FM.XPCSession();
  v6 = *(a4 + 24);
  v6(a3, a4);
  v6(a3, a4);
  v7 = static FM.XPCSession.== infix(_:_:)();

  return v7 & 1;
}

uint64_t WorkItemQueue.WorkItem.__allocating_init(identifier:block:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_1DF6325AC();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v14, a1, v10);
  v15 = swift_allocObject();
  *(v15 + 16) = a2;
  *(v15 + 24) = a3;
  v16 = type metadata accessor for WorkItemQueue.WorkItem();
  v17 = *(v16 + 48);
  v18 = *(v16 + 52);
  swift_allocObject();
  v19 = sub_1DF60D5E8(0, v14, &unk_1DF63B4E8, v15, a4, a5);

  (*(v11 + 8))(a1, v10);
  return v19;
}

{
  v10 = sub_1DF6325AC();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v14, a1, v10);
  v15 = type metadata accessor for WorkItemQueue.WorkItem();
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  swift_allocObject();
  v18 = sub_1DF60D5E8(0, v14, a2, a3, a4, a5);

  (*(v11 + 8))(a1, v10);
  return v18;
}

uint64_t sub_1DF5A9508()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1DF5A9544()
{
  if (qword_1ED8E6080 != -1)
  {
    swift_once();
  }

  result = sub_1DF633C5C();
  if (v3)
  {
    v2 = *(v0 + OBJC_IVAR____TtCC10FindMyBase13WorkItemQueue8WorkItem_visitedQueueIdentifiers);
    MEMORY[0x1EEE9AC00](result);
    os_unfair_lock_lock((v2 + 24));
    sub_1DF5B387C((v2 + 16));
    os_unfair_lock_unlock((v2 + 24));
  }

  return result;
}

uint64_t sub_1DF5A9620(uint64_t a1)
{
  v2 = v1;
  v34 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42C10, &qword_1DF63B260);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v33 = &v33 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42AD0, &qword_1DF638F40);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v33 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42AC0, &qword_1DF638F30);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v33 - v13;
  v15 = *(v2 + OBJC_IVAR____TtC10FindMyBase13WorkItemQueue_continuation);
  v16 = *(*v15 + *MEMORY[0x1E69E6B68] + 16);
  v17 = (*(*v15 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v15 + v17));
  sub_1DF59CC98(v15 + v16, v9, &qword_1ECE42AD0, &qword_1DF638F40);
  os_unfair_lock_unlock((v15 + v17));
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    v18 = v34;
    sub_1DF59CB50(v9, &qword_1ECE42AD0, &qword_1DF638F40);
    if (qword_1ED8E5E40 != -1)
    {
      swift_once();
    }

    v19 = sub_1DF6326AC();
    __swift_project_value_buffer(v19, qword_1ED8E6A30);

    v20 = sub_1DF63268C();
    v21 = sub_1DF63317C();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *v22 = 136446466;
      v37 = 0xE100000000000000;
      v38 = v23;
      v35 = *v2;
      v36 = 91;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42AE8, &unk_1DF638F68);
      v24 = sub_1DF632A3C();
      MEMORY[0x1E12D82E0](v24);

      MEMORY[0x1E12D82E0](32, 0xE100000000000000);
      MEMORY[0x1E12D82E0](*(v2 + OBJC_IVAR____TtC10FindMyBase13WorkItemQueue_name), *(v2 + OBJC_IVAR____TtC10FindMyBase13WorkItemQueue_name + 8));
      MEMORY[0x1E12D82E0](93, 0xE100000000000000);
      v25 = sub_1DF59EEC8(v36, v37, &v38);

      *(v22 + 4) = v25;
      *(v22 + 12) = 2082;
      sub_1DF6325AC();
      sub_1DF59CD00(&unk_1ED8E4A10, MEMORY[0x1E69695A8]);
      v26 = sub_1DF6338DC();
      v28 = sub_1DF59EEC8(v26, v27, &v38);

      *(v22 + 14) = v28;
      _os_log_impl(&dword_1DF59A000, v20, v21, "%{public}s Attempted to enqueue workItem %{public}s after invalidation!", v22, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E12D9D80](v23, -1, -1);
      MEMORY[0x1E12D9D80](v22, -1, -1);
    }

    v29 = sub_1DF632E9C();
    v30 = v33;
    (*(*(v29 - 8) + 56))(v33, 1, 1, v29);
    v31 = swift_allocObject();
    v31[2] = 0;
    v31[3] = 0;
    v31[4] = v18;
    v31[5] = v2;

    sub_1DF5CE7F8(0, 0, v30, &unk_1DF638F80, v31);
  }

  else
  {
    (*(v11 + 32))(v14, v9, v10);
    sub_1DF5A9F2C(v34, v14);
    return (*(v11 + 8))(v14, v10);
  }
}

uint64_t dispatch thunk of WorkItemQueue.enqueue(_:)()
{
  return (*(*v0 + 320))();
}

{
  return (*(*v0 + 328))();
}

{
  return (*(*v0 + 336))();
}

uint64_t sub_1DF5A9BB0(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1DF59D2C8;

  return v6();
}

void OnceCheckedContinuation.resume(returning:)(uint64_t a1)
{
  v22 = a1;
  v2 = *(*v1 + 80);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v21 - v5;
  v8 = *(v7 + 88);
  v9 = *(v7 + 96);
  v10 = sub_1DF632E4C();
  v11 = sub_1DF63327C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v21 - v15;
  v17 = *(v10 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v20 = &v21 - v19;
  sub_1DF5AB778();
  if ((*(v17 + 48))(v16, 1, v10) == 1)
  {
    (*(v12 + 8))(v16, v11);
    sub_1DF5FDAC4();
  }

  else
  {
    (*(v17 + 32))(v20, v16, v10);
    (*(v3 + 16))(v6, v22, v2);
    sub_1DF632E3C();
    (*(v17 + 8))(v20, v10);
  }
}

uint64_t sub_1DF5A9F2C(uint64_t a1, uint64_t a2)
{
  v99 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42B20, &qword_1DF6392F0);
  v97 = *(v4 - 8);
  v98 = v4;
  v5 = *(v97 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v95 = v91 - v6;
  v96 = sub_1DF6335AC();
  v94 = *(v96 - 8);
  v7 = *(v94 + 64);
  MEMORY[0x1EEE9AC00](v96);
  v9 = v91 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1DF6325AC();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = v91 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = v91 - v16;
  if (qword_1ED8E6080 != -1)
  {
    swift_once();
  }

  sub_1DF633C5C();
  v18 = v102;
  if (!v102)
  {
    v18 = MEMORY[0x1E69E7CD0];
  }

  v104 = v18;
  v19 = v2 + OBJC_IVAR____TtC10FindMyBase13WorkItemQueue_id;
  (*(v11 + 16))(v15, v2 + OBJC_IVAR____TtC10FindMyBase13WorkItemQueue_id, v10);
  sub_1DF5AB4C0(v17, v15);
  v20 = (*(v11 + 8))(v17, v10);
  v21 = *(a1 + OBJC_IVAR____TtCC10FindMyBase13WorkItemQueue8WorkItem_visitedQueueIdentifiers);
  MEMORY[0x1EEE9AC00](v20);
  v91[-2] = v19;
  os_unfair_lock_lock((v21 + 24));
  sub_1DF5AC0F0((v21 + 16), &v102);
  v93 = v10;
  os_unfair_lock_unlock((v21 + 24));

  v23 = *(a1 + OBJC_IVAR____TtCC10FindMyBase13WorkItemQueue8WorkItem_assocatedQueueIdentifier);
  MEMORY[0x1EEE9AC00](v22);
  v91[-2] = v19;
  v24 = MEMORY[0x1E69E6B68];
  v25 = *(*v23 + *MEMORY[0x1E69E6B68] + 16);
  v26 = (*(*v23 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v23 + v26));
  sub_1DF5AC89C(v23 + v25);
  os_unfair_lock_unlock((v23 + v26));
  v27 = *(a1 + OBJC_IVAR____TtCC10FindMyBase13WorkItemQueue8WorkItem_cancellationBlock);
  MEMORY[0x1EEE9AC00](v28);
  v91[-2] = &unk_1DF639300;
  v91[-1] = a1;

  os_unfair_lock_lock((v27 + 32));
  sub_1DF5AC8B8((v27 + 16));
  v92 = 0;
  os_unfair_lock_unlock((v27 + 32));

  v29 = &unk_1ED8E5000;
  if (*(a1 + OBJC_IVAR____TtCC10FindMyBase13WorkItemQueue8WorkItem_itemType) > 1u)
  {
    if (*(a1 + OBJC_IVAR____TtCC10FindMyBase13WorkItemQueue8WorkItem_itemType) == 2)
    {
      if (qword_1ED8E5E40 != -1)
      {
        swift_once();
      }

      v41 = sub_1DF6326AC();
      __swift_project_value_buffer(v41, qword_1ED8E6A30);

      v31 = sub_1DF63268C();
      v32 = sub_1DF63315C();

      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        v34 = swift_slowAlloc();
        *v33 = 136446722;
        v101 = v34;
        v102 = 91;
        v103 = 0xE100000000000000;
        v100 = *v2;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42AE8, &unk_1DF638F68);
        v42 = sub_1DF632A3C();
        MEMORY[0x1E12D82E0](v42);

        MEMORY[0x1E12D82E0](32, 0xE100000000000000);
        MEMORY[0x1E12D82E0](*(v2 + OBJC_IVAR____TtC10FindMyBase13WorkItemQueue_name), *(v2 + OBJC_IVAR____TtC10FindMyBase13WorkItemQueue_name + 8));
        MEMORY[0x1E12D82E0](93, 0xE100000000000000);
        v43 = sub_1DF59EEC8(v102, v103, &v101);

        *(v33 + 4) = v43;
        *(v33 + 12) = 2080;
        *(v33 + 14) = sub_1DF59EEC8(0xD000000000000018, 0x80000001DF634DC0, &v101);
        *(v33 + 22) = 2082;
        sub_1DF59CD00(&unk_1ED8E4A10, MEMORY[0x1E69695A8]);
        v44 = sub_1DF6338DC();
        v46 = sub_1DF59EEC8(v44, v45, &v101);

        *(v33 + 24) = v46;
        v29 = &unk_1ED8E5000;
        v40 = "%{public}s %s will insert item %{public}s [FLUSH BARRIER]";
        goto LABEL_24;
      }
    }

    else
    {
      if (qword_1ED8E5E40 != -1)
      {
        swift_once();
      }

      v53 = sub_1DF6326AC();
      __swift_project_value_buffer(v53, qword_1ED8E6A30);

      v31 = sub_1DF63268C();
      v32 = sub_1DF63315C();

      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        v34 = swift_slowAlloc();
        *v33 = 136446722;
        v101 = v34;
        v102 = 91;
        v103 = 0xE100000000000000;
        v100 = *v2;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42AE8, &unk_1DF638F68);
        v54 = sub_1DF632A3C();
        MEMORY[0x1E12D82E0](v54);

        MEMORY[0x1E12D82E0](32, 0xE100000000000000);
        MEMORY[0x1E12D82E0](*(v2 + OBJC_IVAR____TtC10FindMyBase13WorkItemQueue_name), *(v2 + OBJC_IVAR____TtC10FindMyBase13WorkItemQueue_name + 8));
        MEMORY[0x1E12D82E0](93, 0xE100000000000000);
        v55 = sub_1DF59EEC8(v102, v103, &v101);

        *(v33 + 4) = v55;
        *(v33 + 12) = 2080;
        *(v33 + 14) = sub_1DF59EEC8(0xD000000000000018, 0x80000001DF634DC0, &v101);
        *(v33 + 22) = 2082;
        sub_1DF59CD00(&unk_1ED8E4A10, MEMORY[0x1E69695A8]);
        v56 = sub_1DF6338DC();
        v58 = sub_1DF59EEC8(v56, v57, &v101);

        *(v33 + 24) = v58;
        v29 = &unk_1ED8E5000;
        v40 = "%{public}s %s will insert item %{public}s [TERMINATOR]";
        goto LABEL_24;
      }
    }
  }

  else if (*(a1 + OBJC_IVAR____TtCC10FindMyBase13WorkItemQueue8WorkItem_itemType))
  {
    if (qword_1ED8E5E40 != -1)
    {
      swift_once();
    }

    v47 = sub_1DF6326AC();
    __swift_project_value_buffer(v47, qword_1ED8E6A30);

    v31 = sub_1DF63268C();
    v32 = sub_1DF63315C();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      *v33 = 136446722;
      v101 = v34;
      v102 = 91;
      v103 = 0xE100000000000000;
      v100 = *v2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42AE8, &unk_1DF638F68);
      v48 = sub_1DF632A3C();
      MEMORY[0x1E12D82E0](v48);

      MEMORY[0x1E12D82E0](32, 0xE100000000000000);
      MEMORY[0x1E12D82E0](*(v2 + OBJC_IVAR____TtC10FindMyBase13WorkItemQueue_name), *(v2 + OBJC_IVAR____TtC10FindMyBase13WorkItemQueue_name + 8));
      MEMORY[0x1E12D82E0](93, 0xE100000000000000);
      v49 = sub_1DF59EEC8(v102, v103, &v101);

      *(v33 + 4) = v49;
      *(v33 + 12) = 2080;
      *(v33 + 14) = sub_1DF59EEC8(0xD000000000000018, 0x80000001DF634DC0, &v101);
      *(v33 + 22) = 2082;
      sub_1DF59CD00(&unk_1ED8E4A10, MEMORY[0x1E69695A8]);
      v50 = sub_1DF6338DC();
      v52 = sub_1DF59EEC8(v50, v51, &v101);

      *(v33 + 24) = v52;
      v29 = &unk_1ED8E5000;
      v40 = "%{public}s %s will insert item %{public}s [BARRIER]";
      goto LABEL_24;
    }
  }

  else
  {
    if (qword_1ED8E5E40 != -1)
    {
      swift_once();
    }

    v30 = sub_1DF6326AC();
    __swift_project_value_buffer(v30, qword_1ED8E6A30);

    v31 = sub_1DF63268C();
    v32 = sub_1DF63315C();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      *v33 = 136446722;
      v101 = v34;
      v102 = 91;
      v103 = 0xE100000000000000;
      v100 = *v2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42AE8, &unk_1DF638F68);
      v35 = sub_1DF632A3C();
      MEMORY[0x1E12D82E0](v35);

      MEMORY[0x1E12D82E0](32, 0xE100000000000000);
      MEMORY[0x1E12D82E0](*(v2 + OBJC_IVAR____TtC10FindMyBase13WorkItemQueue_name), *(v2 + OBJC_IVAR____TtC10FindMyBase13WorkItemQueue_name + 8));
      MEMORY[0x1E12D82E0](93, 0xE100000000000000);
      v36 = sub_1DF59EEC8(v102, v103, &v101);

      *(v33 + 4) = v36;
      *(v33 + 12) = 2080;
      *(v33 + 14) = sub_1DF59EEC8(0xD000000000000018, 0x80000001DF634DC0, &v101);
      *(v33 + 22) = 2082;
      sub_1DF59CD00(&unk_1ED8E4A10, MEMORY[0x1E69695A8]);
      v37 = sub_1DF6338DC();
      v39 = sub_1DF59EEC8(v37, v38, &v101);

      *(v33 + 24) = v39;
      v29 = &unk_1ED8E5000;
      v40 = "%{public}s %s will insert item %{public}s";
LABEL_24:
      _os_log_impl(&dword_1DF59A000, v31, v32, v40, v33, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1E12D9D80](v34, -1, -1);
      MEMORY[0x1E12D9D80](v33, -1, -1);
    }
  }

  v59 = sub_1DF63357C();
  v60 = *(a1 + OBJC_IVAR____TtCC10FindMyBase13WorkItemQueue8WorkItem_enqueued);
  MEMORY[0x1EEE9AC00](v59);
  v93 = v9;
  v91[-2] = v9;
  v61 = *(*v60 + *v24 + 16);
  v62 = (*(*v60 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v60 + v62));
  v63 = v60 + v61;
  v64 = v92;
  sub_1DF5DA024(v63);
  os_unfair_lock_unlock((v60 + v62));
  v65 = *(v2 + OBJC_IVAR____TtC10FindMyBase13WorkItemQueue_queueDepth);
  os_unfair_lock_lock(v65 + 8);
  sub_1DF5DA040(&v65[4], &v102);
  os_unfair_lock_unlock(v65 + 8);
  v66 = v102;
  v67 = v103;
  v68 = v2 + OBJC_IVAR____TtC10FindMyBase13WorkItemQueue_warningOptions;
  if (*(v2 + OBJC_IVAR____TtC10FindMyBase13WorkItemQueue_warningOptions) == 1)
  {
    if (v29[456] != -1)
    {
      swift_once();
    }

    v69 = sub_1DF6326AC();
    __swift_project_value_buffer(v69, qword_1ED8E6A30);

    v70 = sub_1DF63268C();
    v71 = sub_1DF63315C();

    if (os_log_type_enabled(v70, v71))
    {
      v72 = swift_slowAlloc();
      v92 = v67;
      v73 = v72;
      v74 = swift_slowAlloc();
      v91[1] = v64;
      v75 = v74;
      *v73 = 136446466;
      v101 = v74;
      v102 = 91;
      v103 = 0xE100000000000000;
      v100 = *v2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42AE8, &unk_1DF638F68);
      v76 = sub_1DF632A3C();
      MEMORY[0x1E12D82E0](v76);

      MEMORY[0x1E12D82E0](32, 0xE100000000000000);
      MEMORY[0x1E12D82E0](*(v2 + OBJC_IVAR____TtC10FindMyBase13WorkItemQueue_name), *(v2 + OBJC_IVAR____TtC10FindMyBase13WorkItemQueue_name + 8));
      MEMORY[0x1E12D82E0](93, 0xE100000000000000);
      v77 = sub_1DF59EEC8(v102, v103, &v101);

      *(v73 + 4) = v77;
      v29 = &unk_1ED8E5000;
      *(v73 + 12) = 2048;
      *(v73 + 14) = v92;
      _os_log_impl(&dword_1DF59A000, v70, v71, "%{public}s enqueue queueDepth: %ld", v73, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v75);
      MEMORY[0x1E12D9D80](v75, -1, -1);
      v78 = v73;
      v67 = v92;
      MEMORY[0x1E12D9D80](v78, -1, -1);
    }
  }

  if ((v66 & 1) == 0 && *(v68 + 1) < v67)
  {
    if (v29[456] != -1)
    {
      swift_once();
    }

    v79 = sub_1DF6326AC();
    __swift_project_value_buffer(v79, qword_1ED8E6A30);

    v80 = sub_1DF63268C();
    v81 = sub_1DF63316C();

    if (os_log_type_enabled(v80, v81))
    {
      v82 = v67;
      v83 = swift_slowAlloc();
      v84 = swift_slowAlloc();
      *v83 = 136446466;
      v101 = v84;
      v102 = 91;
      v103 = 0xE100000000000000;
      v100 = *v2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42AE8, &unk_1DF638F68);
      v85 = sub_1DF632A3C();
      MEMORY[0x1E12D82E0](v85);

      MEMORY[0x1E12D82E0](32, 0xE100000000000000);
      MEMORY[0x1E12D82E0](*(v2 + OBJC_IVAR____TtC10FindMyBase13WorkItemQueue_name), *(v2 + OBJC_IVAR____TtC10FindMyBase13WorkItemQueue_name + 8));
      MEMORY[0x1E12D82E0](93, 0xE100000000000000);
      v86 = sub_1DF59EEC8(v102, v103, &v101);

      *(v83 + 4) = v86;
      *(v83 + 12) = 2048;
      *(v83 + 14) = v82;
      _os_log_impl(&dword_1DF59A000, v80, v81, "%{public}s Excessive enqueue queueDepth: %ld", v83, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v84);
      MEMORY[0x1E12D9D80](v84, -1, -1);
      MEMORY[0x1E12D9D80](v83, -1, -1);
    }
  }

  v87 = backtrace(maxiumFrameCount:)(0x20uLL);
  v88 = *(a1 + OBJC_IVAR____TtCC10FindMyBase13WorkItemQueue8WorkItem_callStack);
  v91[-2] = MEMORY[0x1EEE9AC00](v87);
  os_unfair_lock_lock((v88 + 24));
  sub_1DF5B387C((v88 + 16));
  os_unfair_lock_unlock((v88 + 24));

  v102 = a1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42AC0, &qword_1DF638F30);
  v89 = v95;
  sub_1DF632EEC();
  (*(v97 + 8))(v89, v98);
  return (*(v94 + 8))(v93, v96);
}

uint64_t sub_1DF5AB4C0(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_1DF6325AC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_1DF5A9208(&qword_1ED8E6150);
  v36 = a2;
  v13 = sub_1DF6328BC();
  v14 = v11 + 56;
  v34 = v11 + 56;
  v35 = v11;
  v15 = -1 << *(v11 + 32);
  v16 = v13 & ~v15;
  if ((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v31 = v3;
    v32 = a1;
    v33 = ~v15;
    v30 = v7;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    v21 = (v18 - 8);
    v29[1] = v18 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v22 = v17;
      v17(v10, *(v35 + 48) + v20 * v16, v6);
      sub_1DF5A9208(&qword_1ED8E4BF0);
      v23 = sub_1DF63292C();
      v24 = *v21;
      (*v21)(v10, v6);
      if (v23)
      {
        break;
      }

      v16 = (v16 + 1) & v33;
      v17 = v22;
      if (((*(v34 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        v3 = v31;
        a1 = v32;
        v7 = v30;
        goto LABEL_7;
      }
    }

    v24(v36, v6);
    v22(v32, *(v35 + 48) + v20 * v16, v6);
    return 0;
  }

  else
  {
    v17 = *(v7 + 16);
LABEL_7:
    v25 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = v36;
    v17(v10, v36, v6);
    v37 = *v3;
    sub_1DF5AB83C(v10, v16, isUniquelyReferenced_nonNull_native);
    *v3 = v37;
    (*(v7 + 32))(a1, v27, v6);
    return 1;
  }
}

void sub_1DF5AB778()
{
  v1 = *v0;
  v2 = v0[2];
  v3[2] = *(*v0 + 80);
  v3[3] = *(v1 + 88);
  v3[4] = *(v1 + 96);
  sub_1DF632E4C();
  sub_1DF63327C();
  sub_1DF5A61A8(sub_1DF5ABAB8, v3, v2);
}

uint64_t sub_1DF5AB83C(uint64_t a1, unint64_t a2, char a3)
{
  v33 = a1;
  v6 = sub_1DF6325AC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v30 = v3;
  v31 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1DF5FBF10(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_1DF5FC638();
      goto LABEL_12;
    }

    sub_1DF5ABAD8(v11 + 1);
  }

  v13 = *v3;
  v14 = *(*v3 + 40);
  sub_1DF5A9208(&qword_1ED8E6150);
  v15 = sub_1DF6328BC();
  v16 = v13 + 56;
  v32 = v13;
  v17 = -1 << *(v13 + 32);
  a2 = v15 & ~v17;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v18 = ~v17;
    v21 = *(v7 + 16);
    v20 = v7 + 16;
    v19 = v21;
    v22 = *(v20 + 56);
    do
    {
      v19(v10, *(v32 + 48) + v22 * a2, v6);
      sub_1DF5A9208(&qword_1ED8E4BF0);
      v23 = sub_1DF63292C();
      (*(v20 - 8))(v10, v6);
      if (v23)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v18;
    }

    while (((*(v16 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v24 = v31;
  v25 = *v30;
  *(v25 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v24 + 32))(*(v25 + 48) + *(v24 + 72) * a2, v33, v6);
  v27 = *(v25 + 16);
  v28 = __OFADD__(v27, 1);
  v29 = v27 + 1;
  if (!v28)
  {
    *(v25 + 16) = v29;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1DF6339DC();
  __break(1u);
  return result;
}

uint64_t sub_1DF5ABAB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2[2];
  v4 = v2[3];
  v5 = v2[4];
  return sub_1DF5ABDE0(a1, a2);
}

uint64_t sub_1DF5ABAD8(uint64_t a1)
{
  v2 = v1;
  v37 = sub_1DF6325AC();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v37);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE43098, &unk_1DF63AF30);
  v10 = sub_1DF63341C();
  result = v8;
  if (*(v8 + 16))
  {
    v32 = v2;
    v12 = 0;
    v13 = v8 + 56;
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 56);
    v17 = (v14 + 63) >> 6;
    v35 = v4 + 16;
    v36 = v4;
    v18 = v10 + 56;
    v33 = (v4 + 32);
    v34 = result;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v23 = *(v36 + 72);
      (*(v36 + 16))(v7, *(result + 48) + v23 * (v20 | (v12 << 6)), v37);
      v24 = *(v10 + 40);
      sub_1DF5A9208(&qword_1ED8E6150);
      result = sub_1DF6328BC();
      v25 = -1 << *(v10 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v18 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v18 + 8 * v27);
          if (v31 != -1)
          {
            v19 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v19 = __clz(__rbit64((-1 << v26) & ~*(v18 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v33)(*(v10 + 48) + v19 * v23, v7, v37);
      ++*(v10 + 16);
      result = v34;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v2 = v32;
        goto LABEL_28;
      }

      v22 = *(v13 + 8 * v12);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v10;
  }

  return result;
}

uint64_t sub_1DF5ABDE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1DF632E4C();
  v5 = sub_1DF63327C();
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return (*(*(v4 - 8) + 56))(a1, 1, 1, v4);
}

uint64_t sub_1DF5ABEB8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_1DF6325AC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v18 - v12;
  if (sub_1DF5AC248(a2, *a1))
  {
    type metadata accessor for WorkItemQueue.Error(0);
    sub_1DF60E5CC(&qword_1ECE42500, type metadata accessor for WorkItemQueue.Error);
    swift_allocError();
    v15 = v14;
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42B00, &qword_1DF6391B0);
    (*(*(v16 - 8) + 56))(v15, 1, 2, v16);
    return swift_willThrow();
  }

  else
  {
    (*(v7 + 16))(v11, a2, v6);
    sub_1DF5AB4C0(v13, v11);
    (*(v7 + 8))(v13, v6);
    *a3 = *a1;
  }
}

uint64_t OnceCheckedContinuation.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return swift_deallocClassInstance();
}

uint64_t sub_1DF5AC10C()
{
  v2 = *(*v1 + 72);
  v3 = *v1;
  v3[10] = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1DF5D32F0, 0, 0);
  }

  else
  {
    v4 = v3[8];

    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_1DF5AC248(uint64_t a1, uint64_t a2)
{
  v3 = sub_1DF6325AC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (v8 = *(a2 + 40), sub_1DF5A9208(&qword_1ED8E6150), v9 = sub_1DF6328BC(), v10 = -1 << *(a2 + 32), v11 = v9 & ~v10, v20 = a2 + 56, ((*(a2 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0))
  {
    v19 = a2;
    v12 = ~v10;
    v13 = v4 + 16;
    v14 = *(v4 + 16);
    v15 = *(v13 + 56);
    v16 = (v13 - 8);
    do
    {
      v14(v7, *(v19 + 48) + v15 * v11, v3);
      sub_1DF5A9208(&qword_1ED8E4BF0);
      v17 = sub_1DF63292C();
      (*v16)(v7, v3);
      if (v17)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
    }

    while (((*(v20 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  else
  {
    v17 = 0;
  }

  return v17 & 1;
}

uint64_t sub_1DF5AC438(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42AA8, &qword_1DF638F18);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v17 - v6;
  v8 = sub_1DF6325AC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DF59CC98(a1, v7, &qword_1ECE42AA8, &qword_1DF638F18);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_1DF59CB50(a1, &qword_1ECE42AA8, &qword_1DF638F18);
    sub_1DF59CB50(v7, &qword_1ECE42AA8, &qword_1DF638F18);
    (*(v9 + 16))(a1, a2, v8);
    return (*(v9 + 56))(a1, 0, 1, v8);
  }

  else
  {
    (*(v9 + 32))(v12, v7, v8);
    type metadata accessor for WorkItemQueue.Error(0);
    sub_1DF60E5CC(&qword_1ECE42500, type metadata accessor for WorkItemQueue.Error);
    swift_allocError();
    v15 = v14;
    (*(v9 + 16))(v14, v12, v8);
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42B00, &qword_1DF6391B0);
    (*(*(v16 - 8) + 56))(v15, 0, 2, v16);
    swift_willThrow();
    return (*(v9 + 8))(v12, v8);
  }
}

uint64_t sub_1DF5AC70C()
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v4 = *v1;
  *(*v1 + 112) = v0;

  v5 = *(v2 + 64);
  if (v0)
  {
    v6 = sub_1DF5D80A8;
  }

  else
  {
    v6 = sub_1DF5AC838;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

uint64_t sub_1DF5AC838()
{
  v1 = *(v0 + 96);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1DF5AC8D4()
{
  v2 = *v1;
  v3 = *(*v1 + 128);
  v4 = *v1;
  *(*v1 + 136) = v0;

  v5 = *(v2 + 96);
  if (v0)
  {
    v6 = sub_1DF5D795C;
  }

  else
  {
    v6 = sub_1DF5ACA94;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

uint64_t sub_1DF5ACA00(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  if (v6)
  {
    v7 = a1[1];
    sub_1DF5A83BC(v6);
  }

  if (a2)
  {
    v8 = swift_allocObject();
    *(v8 + 16) = a2;
    *(v8 + 24) = a3;
    v9 = &unk_1DF63B748;
  }

  else
  {
    v9 = 0;
    v8 = 0;
  }

  *a1 = v9;
  a1[1] = v8;
  return sub_1DF5A32C0(a2);
}

uint64_t sub_1DF5ACA94()
{
  if (*(v0 + 168) == 1)
  {
    v1 = *(v0 + 112);

    v2 = *(v0 + 8);

    return v2();
  }

  else
  {
    v4 = *(v0 + 120);
    v5 = *(v0 + 96);
    v6 = *(MEMORY[0x1E69E8708] + 4);
    v7 = swift_task_alloc();
    *(v0 + 128) = v7;
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42B40, &qword_1DF6393A0);
    *v7 = v0;
    v7[1] = sub_1DF5AC8D4;
    v9 = *(v0 + 80);

    return MEMORY[0x1EEE6DAC8](v0 + 168, v5, v4, v8);
  }
}

uint64_t sub_1DF5ACBAC()
{
  v1 = *(*v0 + 504);
  v2 = *(*v0 + 368);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1DF5ACCBC, v2, 0);
}

void sub_1DF5ACCBC()
{
  v25 = v0;
  v1 = v0[37];
  v0[64] = v1;
  if (v1)
  {
    v2 = v0[62];
    v3 = *(v0[46] + v0[57]);
    os_unfair_lock_lock(v3 + 8);
    sub_1DF5DA150(&v3[4], v0 + 38);
    if (v2)
    {

      os_unfair_lock_unlock(v3 + 8);
    }

    else
    {
      v7 = v0[58];
      v8 = v0[46];
      os_unfair_lock_unlock(v3 + 8);
      if (*(v8 + v7))
      {
        v9 = v0[38];
        if (qword_1ED8E5E40 != -1)
        {
          swift_once();
        }

        v10 = v0[46];
        v11 = sub_1DF6326AC();
        __swift_project_value_buffer(v11, qword_1ED8E6A30);

        v12 = sub_1DF63268C();
        v13 = sub_1DF63315C();

        if (os_log_type_enabled(v12, v13))
        {
          v14 = v0[46];
          v15 = (v14 + v0[61]);
          v16 = swift_slowAlloc();
          v17 = swift_slowAlloc();
          v24 = v17;
          *v16 = 136446466;
          v0[35] = 91;
          v0[36] = 0xE100000000000000;
          v0[44] = *v14;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42AE8, &unk_1DF638F68);
          v18 = sub_1DF632A3C();
          MEMORY[0x1E12D82E0](v18);

          MEMORY[0x1E12D82E0](32, 0xE100000000000000);
          MEMORY[0x1E12D82E0](*v15, v15[1]);
          MEMORY[0x1E12D82E0](93, 0xE100000000000000);
          v19 = sub_1DF59EEC8(v0[35], v0[36], &v24);

          *(v16 + 4) = v19;
          *(v16 + 12) = 2048;
          *(v16 + 14) = v9;
          _os_log_impl(&dword_1DF59A000, v12, v13, "%{public}s dequeue queueDepth: %ld", v16, 0x16u);
          __swift_destroy_boxed_opaque_existential_1(v17);
          MEMORY[0x1E12D9D80](v17, -1, -1);
          MEMORY[0x1E12D9D80](v16, -1, -1);
        }
      }

      v20 = v0[52];
      sub_1DF63357C();
      v21 = *(v1 + OBJC_IVAR____TtCC10FindMyBase13WorkItemQueue8WorkItem_started);
      *(swift_task_alloc() + 16) = v20;
      v22 = *(*v21 + *MEMORY[0x1E69E6B68] + 16);
      v23 = (*(*v21 + 48) + 3) & 0x1FFFFFFFCLL;

      os_unfair_lock_lock((v21 + v23));
      sub_1DF5DA290(v21 + v22);
      v0[65] = 0;
      os_unfair_lock_unlock((v21 + v23));

      MEMORY[0x1EEE6DFA0](sub_1DF5AD210, v1, 0);
    }
  }

  else
  {
    v4 = v0[52];
    v5 = v0[49];
    (*(v0[54] + 8))(v0[55], v0[53]);

    v6 = v0[1];

    v6();
  }
}

void sub_1DF5AD0D0()
{
  v2 = *v1;
  v3 = *(*v1 + 120);
  v4 = *v1;

  if (v0)
  {
  }

  else
  {
    v5 = *(v2 + 112);
    v6 = *(v2 + 80);

    MEMORY[0x1EEE6DFA0](sub_1DF5AD2A8, v6, 0);
  }
}

uint64_t sub_1DF5AD210()
{
  v1 = *(v0 + 512);
  v2 = *(v0 + 368);
  v3 = OBJC_IVAR____TtCC10FindMyBase13WorkItemQueue8WorkItem_isCancelled;
  swift_beginAccess();
  *(v0 + 608) = *(v1 + v3);

  return MEMORY[0x1EEE6DFA0](sub_1DF5AD2BC, v2, 0);
}

uint64_t sub_1DF5AD2BC()
{
  v131 = v0;
  if (*(v0 + 608))
  {
    if (qword_1ED8E5E40 != -1)
    {
      swift_once();
    }

    v1 = *(v0 + 512);
    v2 = *(v0 + 368);
    v3 = sub_1DF6326AC();
    __swift_project_value_buffer(v3, qword_1ED8E6A30);

    v4 = sub_1DF63268C();
    v5 = sub_1DF63318C();

    if (os_log_type_enabled(v4, v5))
    {
      v120 = *(v0 + 512);
      v7 = *(v0 + 384);
      v6 = *(v0 + 392);
      v8 = *(v0 + 368);
      v9 = *(v0 + 376);
      v10 = (v8 + *(v0 + 488));
      v11 = swift_slowAlloc();
      v124 = swift_slowAlloc();
      v129 = v124;
      *v11 = 136446466;
      *(v0 + 264) = 91;
      *(v0 + 272) = 0xE100000000000000;
      *(v0 + 344) = *v8;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42AE8, &unk_1DF638F68);
      v12 = sub_1DF632A3C();
      MEMORY[0x1E12D82E0](v12);

      MEMORY[0x1E12D82E0](32, 0xE100000000000000);
      MEMORY[0x1E12D82E0](*v10, v10[1]);
      MEMORY[0x1E12D82E0](93, 0xE100000000000000);
      v13 = sub_1DF59EEC8(*(v0 + 264), *(v0 + 272), &v129);

      *(v11 + 4) = v13;
      *(v11 + 12) = 2082;
      (*(v7 + 16))(v6, v120 + OBJC_IVAR____TtCC10FindMyBase13WorkItemQueue8WorkItem_id, v9);
      sub_1DF59CD00(&unk_1ED8E4A10, MEMORY[0x1E69695A8]);
      v14 = sub_1DF6338DC();
      v16 = v15;
      (*(v7 + 8))(v6, v9);
      v17 = sub_1DF59EEC8(v14, v16, &v129);

      *(v11 + 14) = v17;
      _os_log_impl(&dword_1DF59A000, v4, v5, "%{public}s workItem %{public}s is already cancelled -- skipping", v11, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E12D9D80](v124, -1, -1);
      MEMORY[0x1E12D9D80](v11, -1, -1);
    }

    v18 = *(v0 + 512);
    v19 = *(v0 + 368);
    v20 = v19 + *(v0 + 464);
    v21 = (v19 + *(v0 + 488));
    sub_1DF632E5C();
    sub_1DF59CD00(&qword_1ED8E56F0, MEMORY[0x1E69E8550]);
    v22 = swift_allocError();
    *(v0 + 592) = v22;
    sub_1DF6327FC();
    v23 = *v21;
    v24 = v21[1];
    v25 = *(v20 + 40);
    v26 = *(v20 + 8);
    v27 = *(v20 + 24);
    *(v0 + 160) = *v20;
    *(v0 + 168) = v26;
    *(v0 + 184) = v27;
    *(v0 + 200) = v25;
    v28 = swift_task_alloc();
    *(v0 + 600) = v28;
    *v28 = v0;
    v28[1] = sub_1DF5D74C8;
    v29 = v22;
    v30 = 1;
    v31 = v23;
    v32 = v24;
    v33 = v0 + 160;
    goto LABEL_31;
  }

  v34 = *(v0 + 512);
  v35 = *(v0 + 472);
  v36 = *(v0 + 368);
  v37 = *(v36 + v35);
  *(v36 + v35) = v34;

  if (*(v34 + OBJC_IVAR____TtCC10FindMyBase13WorkItemQueue8WorkItem_itemType) > 1u)
  {
    if (*(v34 + OBJC_IVAR____TtCC10FindMyBase13WorkItemQueue8WorkItem_itemType) == 2)
    {
      if (qword_1ED8E5E40 != -1)
      {
        swift_once();
      }

      v39 = *(v0 + 512);
      v40 = *(v0 + 368);
      v41 = sub_1DF6326AC();
      __swift_project_value_buffer(v41, qword_1ED8E6A30);

      v42 = sub_1DF63268C();
      v43 = sub_1DF63315C();

      if (os_log_type_enabled(v42, v43))
      {
        v121 = *(v0 + 512);
        v45 = *(v0 + 384);
        v44 = *(v0 + 392);
        v46 = *(v0 + 368);
        v47 = *(v0 + 376);
        v48 = (v46 + *(v0 + 488));
        v49 = swift_slowAlloc();
        v125 = swift_slowAlloc();
        v129 = v125;
        *v49 = 136446466;
        *(v0 + 232) = 91;
        *(v0 + 240) = 0xE100000000000000;
        *(v0 + 320) = *v46;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42AE8, &unk_1DF638F68);
        v50 = sub_1DF632A3C();
        MEMORY[0x1E12D82E0](v50);

        MEMORY[0x1E12D82E0](32, 0xE100000000000000);
        MEMORY[0x1E12D82E0](*v48, v48[1]);
        MEMORY[0x1E12D82E0](93, 0xE100000000000000);
        v51 = sub_1DF59EEC8(*(v0 + 232), *(v0 + 240), &v129);

        *(v49 + 4) = v51;
        *(v49 + 12) = 2082;
        (*(v45 + 16))(v44, v121 + OBJC_IVAR____TtCC10FindMyBase13WorkItemQueue8WorkItem_id, v47);
        sub_1DF59CD00(&unk_1ED8E4A10, MEMORY[0x1E69695A8]);
        v52 = sub_1DF6338DC();
        v54 = v53;
        (*(v45 + 8))(v44, v47);
        v55 = sub_1DF59EEC8(v52, v54, &v129);

        *(v49 + 14) = v55;
        _os_log_impl(&dword_1DF59A000, v42, v43, "%{public}s Consuming flush barrier %{public}s", v49, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1E12D9D80](v125, -1, -1);
        MEMORY[0x1E12D9D80](v49, -1, -1);
      }

      v56 = *(v0 + 512);
      v57 = *(v0 + 368);
      v58 = v57 + *(v0 + 464);
      v59 = (v57 + *(v0 + 488));
      *(v57 + *(v0 + 480)) = 0;
      v60 = *v59;
      v61 = v59[1];
      v62 = *(v58 + 40);
      v63 = *(v58 + 8);
      v64 = *(v58 + 24);
      *(v0 + 64) = *v58;
      *(v0 + 72) = v63;
      *(v0 + 88) = v64;
      *(v0 + 104) = v62;
      v65 = swift_task_alloc();
      *(v0 + 576) = v65;
      *v65 = v0;
      v65[1] = sub_1DF5D71D0;
      v29 = 0;
      v30 = 0;
      v31 = v60;
      v32 = v61;
      v33 = v0 + 64;
      goto LABEL_31;
    }

    if (qword_1ED8E5E40 != -1)
    {
      swift_once();
    }

    v95 = *(v0 + 512);
    v96 = *(v0 + 368);
    v97 = sub_1DF6326AC();
    __swift_project_value_buffer(v97, qword_1ED8E6A30);

    v98 = sub_1DF63268C();
    v99 = sub_1DF63315C();

    if (os_log_type_enabled(v98, v99))
    {
      v123 = *(v0 + 512);
      v101 = *(v0 + 384);
      v100 = *(v0 + 392);
      v102 = *(v0 + 368);
      v103 = *(v0 + 376);
      v104 = (v102 + *(v0 + 488));
      v105 = swift_slowAlloc();
      v127 = swift_slowAlloc();
      v128 = v127;
      *v105 = 136446466;
      v129 = 91;
      v130 = 0xE100000000000000;
      *(v0 + 312) = *v102;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42AE8, &unk_1DF638F68);
      v106 = sub_1DF632A3C();
      MEMORY[0x1E12D82E0](v106);

      MEMORY[0x1E12D82E0](32, 0xE100000000000000);
      MEMORY[0x1E12D82E0](*v104, v104[1]);
      MEMORY[0x1E12D82E0](93, 0xE100000000000000);
      v107 = sub_1DF59EEC8(v129, v130, &v128);

      *(v105 + 4) = v107;
      *(v105 + 12) = 2082;
      (*(v101 + 16))(v100, v123 + OBJC_IVAR____TtCC10FindMyBase13WorkItemQueue8WorkItem_id, v103);
      sub_1DF59CD00(&unk_1ED8E4A10, MEMORY[0x1E69695A8]);
      v108 = sub_1DF6338DC();
      v110 = v109;
      (*(v101 + 8))(v100, v103);
      v111 = sub_1DF59EEC8(v108, v110, &v128);

      *(v105 + 14) = v111;
      _os_log_impl(&dword_1DF59A000, v98, v99, "%{public}s Consuming terminator %{public}s", v105, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E12D9D80](v127, -1, -1);
      MEMORY[0x1E12D9D80](v105, -1, -1);
    }

    v112 = *(v0 + 368);
    v113 = v112 + *(v0 + 464);
    v114 = (v112 + *(v0 + 488));
    v87 = *v114;
    v86 = v114[1];
    v115 = *(v113 + 40);
    v116 = *(v113 + 8);
    v117 = *(v113 + 24);
    *(v0 + 16) = *v113;
    v91 = v0 + 16;
    v118 = *(v0 + 512);
    *(v0 + 24) = v116;
    *(v0 + 40) = v117;
    *(v0 + 56) = v115;
    v93 = swift_task_alloc();
    *(v0 + 584) = v93;
    *v93 = v0;
    v94 = sub_1DF5D72E0;
    goto LABEL_30;
  }

  if (*(v34 + OBJC_IVAR____TtCC10FindMyBase13WorkItemQueue8WorkItem_itemType))
  {
    if (qword_1ED8E5E40 != -1)
    {
      swift_once();
    }

    v66 = *(v0 + 512);
    v67 = *(v0 + 368);
    v68 = sub_1DF6326AC();
    __swift_project_value_buffer(v68, qword_1ED8E6A30);

    v69 = sub_1DF63268C();
    v70 = sub_1DF63315C();

    if (os_log_type_enabled(v69, v70))
    {
      v122 = *(v0 + 512);
      v72 = *(v0 + 384);
      v71 = *(v0 + 392);
      v73 = *(v0 + 368);
      v74 = *(v0 + 376);
      v75 = (v73 + *(v0 + 488));
      v76 = swift_slowAlloc();
      v126 = swift_slowAlloc();
      v129 = v126;
      *v76 = 136446466;
      *(v0 + 248) = 91;
      *(v0 + 256) = 0xE100000000000000;
      *(v0 + 328) = *v73;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42AE8, &unk_1DF638F68);
      v77 = sub_1DF632A3C();
      MEMORY[0x1E12D82E0](v77);

      MEMORY[0x1E12D82E0](32, 0xE100000000000000);
      MEMORY[0x1E12D82E0](*v75, v75[1]);
      MEMORY[0x1E12D82E0](93, 0xE100000000000000);
      v78 = sub_1DF59EEC8(*(v0 + 248), *(v0 + 256), &v129);

      *(v76 + 4) = v78;
      *(v76 + 12) = 2082;
      (*(v72 + 16))(v71, v122 + OBJC_IVAR____TtCC10FindMyBase13WorkItemQueue8WorkItem_id, v74);
      sub_1DF59CD00(&unk_1ED8E4A10, MEMORY[0x1E69695A8]);
      v79 = sub_1DF6338DC();
      v81 = v80;
      (*(v72 + 8))(v71, v74);
      v82 = sub_1DF59EEC8(v79, v81, &v129);

      *(v76 + 14) = v82;
      _os_log_impl(&dword_1DF59A000, v69, v70, "%{public}s Consuming barrier %{public}s", v76, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E12D9D80](v126, -1, -1);
      MEMORY[0x1E12D9D80](v76, -1, -1);
    }

    v83 = *(v0 + 368);
    v84 = v83 + *(v0 + 464);
    v85 = (v83 + *(v0 + 488));
    v87 = *v85;
    v86 = v85[1];
    v88 = *(v84 + 40);
    v89 = *(v84 + 8);
    v90 = *(v84 + 24);
    *(v0 + 112) = *v84;
    v91 = v0 + 112;
    v92 = *(v0 + 512);
    *(v0 + 120) = v89;
    *(v0 + 136) = v90;
    *(v0 + 152) = v88;
    v93 = swift_task_alloc();
    *(v0 + 568) = v93;
    *v93 = v0;
    v94 = sub_1DF5D70C0;
LABEL_30:
    v93[1] = v94;
    v29 = 0;
    v30 = 0;
    v31 = v87;
    v32 = v86;
    v33 = v91;
LABEL_31:

    return sub_1DF6070F4(v29, v30, v31, v32, v33);
  }

  if (qword_1ED8E6080 != -1)
  {
    swift_once();
  }

  *(v0 + 528) = qword_1ED8E6A80;
  v38 = *(v0 + 512);

  return MEMORY[0x1EEE6DFA0](sub_1DF5AE9FC, v38, 0);
}

void sub_1DF5AE15C()
{
  v2 = *v1;
  v3 = *(*v1 + 552);
  v4 = *v1;
  *(*v1 + 560) = v0;

  if (v0)
  {
  }

  else
  {
    v5 = v2[68];
    v6 = v2[67];
    v7 = v2[46];

    MEMORY[0x1EEE6DFA0](sub_1DF5AE7DC, v7, 0);
  }
}

uint64_t WorkItemQueue.WorkItem.deinit()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42AA8, &qword_1DF638F18);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v42 - v4;
  v6 = sub_1DF6325AC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v43 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = *(v7 + 16);
  v44 = OBJC_IVAR____TtCC10FindMyBase13WorkItemQueue8WorkItem_id;
  v46 = &v42 - v12;
  v42 = v11;
  (v11)();
  v45 = OBJC_IVAR____TtCC10FindMyBase13WorkItemQueue8WorkItem_assocatedQueueIdentifier;
  v13 = *(v0 + OBJC_IVAR____TtCC10FindMyBase13WorkItemQueue8WorkItem_assocatedQueueIdentifier);
  v14 = *(*v13 + *MEMORY[0x1E69E6B68] + 16);
  v15 = (*(*v13 + 48) + 3) & 0x1FFFFFFFCLL;

  os_unfair_lock_lock((v13 + v15));
  sub_1DF59CC98(v13 + v14, v5, &qword_1ECE42AA8, &qword_1DF638F18);
  v16 = (*(v7 + 48))(v5, 1, v6);
  sub_1DF59CB50(v5, &qword_1ECE42AA8, &qword_1DF638F18);
  os_unfair_lock_unlock((v13 + v15));

  if ((*(v1 + OBJC_IVAR____TtCC10FindMyBase13WorkItemQueue8WorkItem_completionAlreadyCalled) & 1) != 0 || v16 == 1)
  {
    v26 = *(v7 + 8);
  }

  else
  {
    if (qword_1ECE42508 != -1)
    {
      swift_once();
    }

    v17 = sub_1DF6326AC();
    __swift_project_value_buffer(v17, qword_1ECE4BD58);
    v18 = v43;
    v19 = v46;
    v42(v43, v46, v6);
    v20 = sub_1DF63268C();
    v21 = sub_1DF63317C();
    if (!os_log_type_enabled(v20, v21))
    {

      v26 = *(v7 + 8);
      v26(v18, v6);
      v29 = v19;
      goto LABEL_10;
    }

    v22 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v47 = v42;
    *v22 = 136446210;
    sub_1DF60E5CC(&unk_1ED8E4A10, MEMORY[0x1E69695A8]);
    v23 = sub_1DF6338DC();
    v25 = v24;
    v26 = *(v7 + 8);
    v26(v18, v6);
    v27 = sub_1DF59EEC8(v23, v25, &v47);

    *(v22 + 4) = v27;
    _os_log_impl(&dword_1DF59A000, v20, v21, "completion block never called for WorkItem: %{public}s!", v22, 0xCu);
    v28 = v42;
    __swift_destroy_boxed_opaque_existential_1(v42);
    MEMORY[0x1E12D9D80](v28, -1, -1);
    MEMORY[0x1E12D9D80](v22, -1, -1);
  }

  v29 = v46;
LABEL_10:
  v26(v29, v6);
  v26((v1 + v44), v6);
  v30 = *(v1 + OBJC_IVAR____TtCC10FindMyBase13WorkItemQueue8WorkItem_block + 8);

  v31 = *(v1 + v45);

  v32 = *(v1 + OBJC_IVAR____TtCC10FindMyBase13WorkItemQueue8WorkItem_completion + 8);
  sub_1DF5A83BC(*(v1 + OBJC_IVAR____TtCC10FindMyBase13WorkItemQueue8WorkItem_completion));
  v33 = *(v1 + OBJC_IVAR____TtCC10FindMyBase13WorkItemQueue8WorkItem_cancellationBlock);

  sub_1DF59CB50(v1 + OBJC_IVAR____TtCC10FindMyBase13WorkItemQueue8WorkItem_cancelContinuation, &qword_1ECE42B28, &qword_1DF639308);
  sub_1DF5AE9D8(*(v1 + OBJC_IVAR____TtCC10FindMyBase13WorkItemQueue8WorkItem_storedResult), *(v1 + OBJC_IVAR____TtCC10FindMyBase13WorkItemQueue8WorkItem_storedResult + 8));
  v34 = *(v1 + OBJC_IVAR____TtCC10FindMyBase13WorkItemQueue8WorkItem_waiterContinuations);

  v35 = *(v1 + OBJC_IVAR____TtCC10FindMyBase13WorkItemQueue8WorkItem_visitedQueueIdentifiers);

  v36 = *(v1 + OBJC_IVAR____TtCC10FindMyBase13WorkItemQueue8WorkItem_callStack);

  v37 = *(v1 + OBJC_IVAR____TtCC10FindMyBase13WorkItemQueue8WorkItem_enqueued);

  v38 = *(v1 + OBJC_IVAR____TtCC10FindMyBase13WorkItemQueue8WorkItem_started);

  v39 = *(v1 + OBJC_IVAR____TtCC10FindMyBase13WorkItemQueue8WorkItem_completed);

  v40 = *(v1 + OBJC_IVAR____TtCC10FindMyBase13WorkItemQueue8WorkItem_willDeadlock);

  swift_defaultActor_destroy();
  return v1;
}

uint64_t sub_1DF5AE7DC()
{
  v1 = v0[70];
  v2 = v0[64];
  v4 = v0[51];
  v3 = v0[52];
  v5 = v0[50];

  (*(v4 + 8))(v3, v5);
  v0[62] = v1;
  v6 = v0[56];
  v7 = v0[46];
  v8 = *(MEMORY[0x1E69E8678] + 4);
  v9 = swift_task_alloc();
  v0[63] = v9;
  *v9 = v0;
  v9[1] = sub_1DF5ACBAC;
  v10 = v0[55];
  v11 = v0[53];

  return MEMORY[0x1EEE6D9C8](v0 + 37, v7, v6, v11);
}

uint64_t sub_1DF5AE8C4()
{
  v1 = v0[65];
  v2 = v0[64];
  v4 = v0[51];
  v3 = v0[52];
  v5 = v0[50];

  (*(v4 + 8))(v3, v5);
  v0[62] = v1;
  v6 = v0[56];
  v7 = v0[46];
  v8 = *(MEMORY[0x1E69E8678] + 4);
  v9 = swift_task_alloc();
  v0[63] = v9;
  *v9 = v0;
  v9[1] = sub_1DF5ACBAC;
  v10 = v0[55];
  v11 = v0[53];

  return MEMORY[0x1EEE6D9C8](v0 + 37, v7, v6, v11);
}

uint64_t WorkItemQueue.WorkItem.__deallocating_deinit()
{
  WorkItemQueue.WorkItem.deinit();

  return MEMORY[0x1EEE6DEF0](v0);
}

void sub_1DF5AE9D8(void *a1, char a2)
{
  if (a2 != -1)
  {
    sub_1DF5AE9F0(a1, a2 & 1);
  }
}

void sub_1DF5AE9F0(id a1, char a2)
{
  if (a2)
  {
  }
}

uint64_t sub_1DF5AE9FC()
{
  v1 = v0[46];
  v2 = *(v0[64] + OBJC_IVAR____TtCC10FindMyBase13WorkItemQueue8WorkItem_visitedQueueIdentifiers);
  os_unfair_lock_lock((v2 + 24));
  v0[67] = *(v2 + 16);

  os_unfair_lock_unlock((v2 + 24));

  return MEMORY[0x1EEE6DFA0](sub_1DF5AEA8C, v1, 0);
}

uint64_t sub_1DF5AEA8C()
{
  v1 = v0[64];
  v2 = v0[56];
  v3 = v0[46];
  v0[42] = v0[67];
  v4 = swift_task_alloc();
  v0[68] = v4;
  *(v4 + 16) = v3;
  *(v4 + 24) = v1;
  v5 = *(MEMORY[0x1E69E8950] + 4);
  v6 = swift_task_alloc();
  v0[69] = v6;
  *v6 = v0;
  v6[1] = sub_1DF5AE15C;
  v7 = v0[66];

  return MEMORY[0x1EEE6DE98]();
}

uint64_t sub_1DF5AEBA4()
{
  v1 = *(v0 + 80);
  if (*(v1 + OBJC_IVAR____TtC10FindMyBase13WorkItemQueue_flushing) == 1)
  {
    if (qword_1ED8E5E40 != -1)
    {
      swift_once();
      v30 = *(v0 + 80);
    }

    v2 = *(v0 + 72);
    v3 = sub_1DF6326AC();
    __swift_project_value_buffer(v3, qword_1ED8E6A30);

    v4 = sub_1DF63268C();
    v5 = sub_1DF63318C();

    if (os_log_type_enabled(v4, v5))
    {
      v7 = *(v0 + 72);
      v6 = *(v0 + 80);
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v32 = v9;
      *v8 = 136446466;
      *(v0 + 64) = *v6;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42AE8, &unk_1DF638F68);
      v10 = sub_1DF632A3C();
      MEMORY[0x1E12D82E0](v10);

      MEMORY[0x1E12D82E0](32, 0xE100000000000000);
      MEMORY[0x1E12D82E0](*(v6 + OBJC_IVAR____TtC10FindMyBase13WorkItemQueue_name), *(v6 + OBJC_IVAR____TtC10FindMyBase13WorkItemQueue_name + 8));
      MEMORY[0x1E12D82E0](93, 0xE100000000000000);
      v11 = sub_1DF59EEC8(91, 0xE100000000000000, &v32);

      *(v8 + 4) = v11;
      *(v8 + 12) = 2082;
      sub_1DF6325AC();
      sub_1DF59CD00(&unk_1ED8E4A10, MEMORY[0x1E69695A8]);
      v12 = sub_1DF6338DC();
      v14 = sub_1DF59EEC8(v12, v13, &v32);

      *(v8 + 14) = v14;
      _os_log_impl(&dword_1DF59A000, v4, v5, "%{public}s flushing workItem %{public}s", v8, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E12D9D80](v9, -1, -1);
      MEMORY[0x1E12D9D80](v8, -1, -1);
    }

    v15 = *(v0 + 80);
    sub_1DF632E5C();
    sub_1DF59CD00(&qword_1ED8E56F0, MEMORY[0x1E69E8550]);
    v16 = swift_allocError();
    *(v0 + 96) = v16;
    sub_1DF6327FC();
    v17 = *(v15 + OBJC_IVAR____TtC10FindMyBase13WorkItemQueue_name);
    v18 = *(v15 + OBJC_IVAR____TtC10FindMyBase13WorkItemQueue_name + 8);
    v19 = *(v15 + OBJC_IVAR____TtC10FindMyBase13WorkItemQueue_warningOptions + 40);
    v20 = *(v15 + OBJC_IVAR____TtC10FindMyBase13WorkItemQueue_warningOptions + 8);
    v21 = *(v15 + OBJC_IVAR____TtC10FindMyBase13WorkItemQueue_warningOptions + 24);
    *(v0 + 16) = *(v15 + OBJC_IVAR____TtC10FindMyBase13WorkItemQueue_warningOptions);
    *(v0 + 24) = v20;
    *(v0 + 40) = v21;
    *(v0 + 56) = v19;
    v22 = swift_task_alloc();
    *(v0 + 104) = v22;
    *v22 = v0;
    v22[1] = sub_1DF5D784C;
    v23 = *(v0 + 72);

    return sub_1DF6070F4(v16, 1, v17, v18, v0 + 16);
  }

  else
  {
    v25 = *(v0 + 88);
    v26 = *(v0 + 72);
    sub_1DF59CD00(&qword_1ED8E5E20, type metadata accessor for WorkItemQueue);
    v27 = swift_task_alloc();
    *(v0 + 112) = v27;
    v27[2] = v26;
    v27[3] = v1;
    v27[4] = v25;
    v28 = *(MEMORY[0x1E69E88A0] + 4);
    v29 = swift_task_alloc();
    *(v0 + 120) = v29;
    *v29 = v0;
    v29[1] = sub_1DF5AD0D0;

    return MEMORY[0x1EEE6DD58](v29);
  }
}

uint64_t sub_1DF5AF094(uint64_t a1)
{
  v2[9] = a1;
  v2[10] = v1;
  v2[11] = *v1;
  return MEMORY[0x1EEE6DFA0](sub_1DF5AEBA4, v1, 0);
}

uint64_t sub_1DF5AF0DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[12] = a4;
  v5[13] = a5;
  v5[10] = a2;
  v5[11] = a3;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42C10, &qword_1DF63B260) - 8) + 64) + 15;
  v5[14] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DF5AF244, a4, 0);
}

uint64_t sub_1DF5AF180(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_1DF59D2C4;

  return sub_1DF5AF0DC(a1, a2, v6, v7, v8);
}

uint64_t sub_1DF5AF244()
{
  v2 = v0[13];
  v1 = v0[14];
  v4 = v0[11];
  v3 = v0[12];
  v5 = v0[10];
  v6 = sub_1DF632E9C();
  v7 = *(*(v6 - 8) + 56);
  v7(v1, 1, 1, v6);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = v4;
  v8[5] = v3;
  v8[6] = v2;

  sub_1DF5AF4B0(v1, &unk_1DF639388, v8);
  sub_1DF59CB50(v1, &qword_1ECE42C10, &qword_1DF63B260);
  v7(v1, 1, 1, v6);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = v3;
  v9[5] = v4;
  v9[6] = v2;

  sub_1DF5AF4B0(v1, &unk_1DF639398, v9);
  sub_1DF59CB50(v1, &qword_1ECE42C10, &qword_1DF63B260);
  v10 = sub_1DF59CD00(&qword_1ED8E5E20, type metadata accessor for WorkItemQueue);
  v0[15] = v10;
  v11 = v0[12];
  v12 = *(MEMORY[0x1E69E8708] + 4);
  v13 = swift_task_alloc();
  v0[16] = v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42B40, &qword_1DF6393A0);
  *v13 = v0;
  v13[1] = sub_1DF5AC8D4;
  v15 = v0[10];

  return MEMORY[0x1EEE6DAC8](v0 + 21, v11, v10, v14);
}

uint64_t sub_1DF5AF4B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42C10, &qword_1DF63B260);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = v20 - v9;
  sub_1DF59CC98(a1, v20 - v9, &qword_1ECE42C10, &qword_1DF63B260);
  v11 = sub_1DF632E9C();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_1DF59CB50(v10, &qword_1ECE42C10, &qword_1DF63B260);
    if (*(a3 + 16))
    {
LABEL_3:
      v13 = *(a3 + 24);
      swift_getObjectType();
      swift_unknownObjectRetain();
      v14 = sub_1DF632E1C();
      v16 = v15;
      swift_unknownObjectRelease();
      goto LABEL_6;
    }
  }

  else
  {
    sub_1DF632E8C();
    (*(v12 + 8))(v10, v11);
    if (*(a3 + 16))
    {
      goto LABEL_3;
    }
  }

  v14 = 0;
  v16 = 0;
LABEL_6:
  v17 = *v4;
  v18 = (v16 | v14);
  if (v16 | v14)
  {
    v21[0] = 0;
    v21[1] = 0;
    v18 = v21;
    v21[2] = v14;
    v21[3] = v16;
  }

  v20[1] = 1;
  v20[2] = v18;
  v20[3] = v17;
  swift_task_create();
}

uint64_t sub_1DF5AF6A0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1DF59D2C4;

  return sub_1DF5AF768(a1, v4, v5, v6, v7);
}

uint64_t sub_1DF5AF768(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a4;
  v5[9] = a5;
  v7 = sub_1DF632E5C();
  v5[10] = v7;
  v8 = *(v7 - 8);
  v5[11] = v8;
  v9 = *(v8 + 64) + 15;
  v5[12] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DF5AF82C, a4, 0);
}

uint64_t sub_1DF5AF82C()
{
  v1 = *(v0 + 64);
  v2 = OBJC_IVAR____TtCC10FindMyBase13WorkItemQueue8WorkItem_isCancelled;
  swift_beginAccess();
  *(v0 + 120) = *(v1 + v2);

  return MEMORY[0x1EEE6DFA0](sub_1DF5AF8B8, 0, 0);
}

uint64_t sub_1DF5AF8B8()
{
  v23 = v0;
  if (*(v0 + 120) == 1)
  {
    if (qword_1ED8E5E40 != -1)
    {
      swift_once();
    }

    v2 = *(v0 + 64);
    v1 = *(v0 + 72);
    v3 = sub_1DF6326AC();
    __swift_project_value_buffer(v3, qword_1ED8E6A30);

    v4 = sub_1DF63268C();
    v5 = sub_1DF63315C();

    if (os_log_type_enabled(v4, v5))
    {
      v7 = *(v0 + 64);
      v6 = *(v0 + 72);
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      *v8 = 136446466;
      v20 = v9;
      v21 = 91;
      v22 = 0xE100000000000000;
      *(v0 + 56) = *v6;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42AE8, &unk_1DF638F68);
      v10 = sub_1DF632A3C();
      MEMORY[0x1E12D82E0](v10);

      MEMORY[0x1E12D82E0](32, 0xE100000000000000);
      MEMORY[0x1E12D82E0](*(v6 + OBJC_IVAR____TtC10FindMyBase13WorkItemQueue_name), *(v6 + OBJC_IVAR____TtC10FindMyBase13WorkItemQueue_name + 8));
      MEMORY[0x1E12D82E0](93, 0xE100000000000000);
      v11 = sub_1DF59EEC8(v21, v22, &v20);

      *(v8 + 4) = v11;
      *(v8 + 12) = 2082;
      sub_1DF6325AC();
      sub_1DF59CD00(&unk_1ED8E4A10, MEMORY[0x1E69695A8]);
      v12 = sub_1DF6338DC();
      v14 = sub_1DF59EEC8(v12, v13, &v20);

      *(v8 + 14) = v14;
      _os_log_impl(&dword_1DF59A000, v4, v5, "%{public}s is cancelled: %{public}s", v8, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E12D9D80](v9, -1, -1);
      MEMORY[0x1E12D9D80](v8, -1, -1);
    }

    v15 = *(v0 + 80);
    sub_1DF59CD00(&qword_1ED8E56F0, MEMORY[0x1E69E8550]);
    swift_allocError();
    sub_1DF6327FC();
    swift_willThrow();
    v16 = *(v0 + 96);

    v17 = *(v0 + 8);

    return v17();
  }

  else
  {
    v19 = *(v0 + 64);

    return MEMORY[0x1EEE6DFA0](sub_1DF5AFC4C, v19, 0);
  }
}

uint64_t sub_1DF5AFC4C()
{
  v1 = *(v0 + 64);
  sub_1DF59CD00(&qword_1ED8E6020, type metadata accessor for WorkItemQueue.WorkItem);
  v2 = *(MEMORY[0x1E69E8920] + 4);
  v3 = swift_task_alloc();
  *(v0 + 104) = v3;
  *v3 = v0;
  v3[1] = sub_1DF5AC70C;
  v4 = *(v0 + 64);

  return MEMORY[0x1EEE6DE38]();
}

uint64_t sub_1DF5AFD64(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42B28, &qword_1DF639308);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v14 - v6;
  v8 = *(a2 + OBJC_IVAR____TtCC10FindMyBase13WorkItemQueue8WorkItem_cancellationBlockNeeded);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42B10, &qword_1DF639268);
  if (v8 != 1)
  {
    return sub_1DF632E3C();
  }

  v10 = *(v9 - 8);
  v11 = v9;
  (*(v10 + 16))(v7, a1, v9);
  (*(v10 + 56))(v7, 0, 1, v11);
  v12 = OBJC_IVAR____TtCC10FindMyBase13WorkItemQueue8WorkItem_cancelContinuation;
  swift_beginAccess();
  sub_1DF5AFEE0(v7, a2 + v12);
  return swift_endAccess();
}

uint64_t sub_1DF5AFEE0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42B28, &qword_1DF639308);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DF5AFF50(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1DF59D2C4;

  return sub_1DF5B0018(a1, v4, v5, v6, v7);
}

uint64_t sub_1DF5B0018(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 112) = a4;
  *(v5 + 120) = a5;
  return MEMORY[0x1EEE6DFA0](sub_1DF5B0038, 0, 0);
}

uint64_t sub_1DF5B0038()
{
  v25 = v0;
  if (qword_1ED8E5E40 != -1)
  {
    swift_once();
  }

  v2 = v0[14];
  v1 = v0[15];
  v3 = sub_1DF6326AC();
  v0[16] = __swift_project_value_buffer(v3, qword_1ED8E6A30);

  v4 = sub_1DF63268C();
  v5 = sub_1DF63315C();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[14];
    v7 = v0[15];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 136446466;
    v22 = v9;
    v23 = 91;
    v24 = 0xE100000000000000;
    v0[13] = *v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42AE8, &unk_1DF638F68);
    v10 = sub_1DF632A3C();
    MEMORY[0x1E12D82E0](v10);

    MEMORY[0x1E12D82E0](32, 0xE100000000000000);
    MEMORY[0x1E12D82E0](*(v6 + OBJC_IVAR____TtC10FindMyBase13WorkItemQueue_name), *(v6 + OBJC_IVAR____TtC10FindMyBase13WorkItemQueue_name + 8));
    MEMORY[0x1E12D82E0](93, 0xE100000000000000);
    v11 = sub_1DF59EEC8(v23, v24, &v22);

    *(v8 + 4) = v11;
    *(v8 + 12) = 2082;
    sub_1DF6325AC();
    sub_1DF59CD00(&unk_1ED8E4A10, MEMORY[0x1E69695A8]);
    v12 = sub_1DF6338DC();
    v14 = sub_1DF59EEC8(v12, v13, &v22);

    *(v8 + 14) = v14;
    _os_log_impl(&dword_1DF59A000, v4, v5, "%{public}s Start processing workItem: %{public}s", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12D9D80](v9, -1, -1);
    MEMORY[0x1E12D9D80](v8, -1, -1);
  }

  v15 = (v0[15] + OBJC_IVAR____TtCC10FindMyBase13WorkItemQueue8WorkItem_block);
  v16 = v15[1];
  v21 = (*v15 + **v15);
  v17 = (*v15)[1];
  v18 = swift_task_alloc();
  v0[17] = v18;
  *v18 = v0;
  v18[1] = sub_1DF5B0468;
  v19 = v0[15];

  return v21(v19);
}

uint64_t sub_1DF5B03C0(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1DF59D2C8;

  return sub_1DF5A9BB0(a1, v5);
}

uint64_t sub_1DF5B0468()
{
  v2 = *(*v1 + 136);
  v3 = *v1;

  if (v0)
  {
    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return MEMORY[0x1EEE6DFA0](sub_1DF5B0598, 0, 0);
  }
}

uint64_t sub_1DF5B0598()
{
  v21 = v0;
  v2 = v0[15];
  v1 = v0[16];
  v3 = v0[14];

  v4 = sub_1DF63268C();
  v5 = sub_1DF63315C();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[14];
    v7 = v0[15];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 136446466;
    v18 = v9;
    v19 = 91;
    v20 = 0xE100000000000000;
    v0[12] = *v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42AE8, &unk_1DF638F68);
    v10 = sub_1DF632A3C();
    MEMORY[0x1E12D82E0](v10);

    MEMORY[0x1E12D82E0](32, 0xE100000000000000);
    MEMORY[0x1E12D82E0](*(v6 + OBJC_IVAR____TtC10FindMyBase13WorkItemQueue_name), *(v6 + OBJC_IVAR____TtC10FindMyBase13WorkItemQueue_name + 8));
    MEMORY[0x1E12D82E0](93, 0xE100000000000000);
    v11 = sub_1DF59EEC8(v19, v20, &v18);

    *(v8 + 4) = v11;
    *(v8 + 12) = 2082;
    sub_1DF6325AC();
    sub_1DF59CD00(&unk_1ED8E4A10, MEMORY[0x1E69695A8]);
    v12 = sub_1DF6338DC();
    v14 = sub_1DF59EEC8(v12, v13, &v18);

    *(v8 + 14) = v14;
    _os_log_impl(&dword_1DF59A000, v4, v5, "%{public}s Done processing workItem: %{public}s", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12D9D80](v9, -1, -1);
    MEMORY[0x1E12D9D80](v8, -1, -1);
  }

  v15 = swift_task_alloc();
  v0[18] = v15;
  *v15 = v0;
  v15[1] = sub_1DF5B0B98;
  v16 = v0[15];

  return sub_1DF5B0868();
}

uint64_t sub_1DF5B0868()
{
  v1[8] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42B10, &qword_1DF639268);
  v1[9] = v2;
  v3 = *(v2 - 8);
  v1[10] = v3;
  v4 = *(v3 + 64) + 15;
  v1[11] = swift_task_alloc();
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42B28, &qword_1DF639308) - 8) + 64) + 15;
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DF5B09D4, v0, 0);
}

void OSAllocatedUnfairLock.callAsFunction<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1DF5B09A4(a1, a2, a3, a4, a5, sub_1DF5B0CA8);
}

{
  sub_1DF5B09A4(a1, a2, a3, a4, a5, sub_1DF61B2B8);
}

void sub_1DF5B09A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t))
{
  v6[2] = a4;
  v6[3] = a5;
  v6[4] = a1;
  v6[5] = a2;
  sub_1DF5A61A8(a6, v6, a3);
}

uint64_t sub_1DF5B09D4()
{
  v1 = v0[13];
  v2 = v0[9];
  v3 = v0[10];
  v4 = v0[8];
  *(v4 + OBJC_IVAR____TtCC10FindMyBase13WorkItemQueue8WorkItem_cancellationBlockNeeded) = 0;
  v5 = OBJC_IVAR____TtCC10FindMyBase13WorkItemQueue8WorkItem_cancelContinuation;
  swift_beginAccess();
  sub_1DF59CC98(v4 + v5, v1, &qword_1ECE42B28, &qword_1DF639308);
  v6 = (*(v3 + 48))(v1, 1, v2);
  v7 = v0[13];
  if (v6)
  {
    sub_1DF59CB50(v0[13], &qword_1ECE42B28, &qword_1DF639308);
  }

  else
  {
    v9 = v0[10];
    v8 = v0[11];
    v10 = v0[9];
    (*(v9 + 16))(v8, v0[13], v10);
    sub_1DF59CB50(v7, &qword_1ECE42B28, &qword_1DF639308);
    sub_1DF632E3C();
    (*(v9 + 8))(v8, v10);
  }

  v11 = v0[12];
  v12 = v0[11];
  (*(v0[10] + 56))(v11, 1, 1, v0[9]);
  swift_beginAccess();
  sub_1DF5AFEE0(v11, v4 + v5);
  swift_endAccess();

  v13 = v0[1];

  return v13();
}

uint64_t sub_1DF5B0B98()
{
  v1 = *(*v0 + 144);
  v2 = *(*v0 + 120);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1DF5B0CD0, v2, 0);
}

uint64_t sub_1DF5B0CA8()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  return v1();
}

uint64_t sub_1DF5B0CD0()
{
  v1 = *(v0 + 120);
  v2 = OBJC_IVAR____TtCC10FindMyBase13WorkItemQueue8WorkItem_isCancelled;
  swift_beginAccess();
  *(v0 + 160) = *(v1 + v2);

  return MEMORY[0x1EEE6DFA0](sub_1DF5B0D5C, 0, 0);
}

uint64_t sub_1DF5B0D5C()
{
  v29 = v0;
  if (*(v0 + 160) & 1) != 0 || (sub_1DF632F6C())
  {
    v1 = *(v0 + 8);

    return v1();
  }

  else
  {
    v4 = *(v0 + 120);
    v3 = *(v0 + 128);
    v5 = *(v0 + 112);

    v6 = sub_1DF63268C();
    v7 = sub_1DF63315C();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = *(v0 + 112);
      v9 = *(v0 + 120);
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      *v10 = 136446466;
      v26 = v11;
      v27 = 91;
      v28 = 0xE100000000000000;
      *(v0 + 88) = *v8;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42AE8, &unk_1DF638F68);
      v12 = sub_1DF632A3C();
      MEMORY[0x1E12D82E0](v12);

      MEMORY[0x1E12D82E0](32, 0xE100000000000000);
      MEMORY[0x1E12D82E0](*(v8 + OBJC_IVAR____TtC10FindMyBase13WorkItemQueue_name), *(v8 + OBJC_IVAR____TtC10FindMyBase13WorkItemQueue_name + 8));
      MEMORY[0x1E12D82E0](93, 0xE100000000000000);
      v13 = sub_1DF59EEC8(v27, v28, &v26);

      *(v10 + 4) = v13;
      *(v10 + 12) = 2082;
      sub_1DF6325AC();
      sub_1DF59CD00(&unk_1ED8E4A10, MEMORY[0x1E69695A8]);
      v14 = sub_1DF6338DC();
      v16 = sub_1DF59EEC8(v14, v15, &v26);

      *(v10 + 14) = v16;
      _os_log_impl(&dword_1DF59A000, v6, v7, "%{public}s Completing workItem (.success): %{public}s", v10, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E12D9D80](v11, -1, -1);
      MEMORY[0x1E12D9D80](v10, -1, -1);
    }

    v17 = *(v0 + 112);
    v19 = *(v17 + OBJC_IVAR____TtC10FindMyBase13WorkItemQueue_name);
    v18 = *(v17 + OBJC_IVAR____TtC10FindMyBase13WorkItemQueue_name + 8);
    v20 = v17 + OBJC_IVAR____TtC10FindMyBase13WorkItemQueue_warningOptions;
    v21 = *(v20 + 40);
    v22 = *(v20 + 8);
    v23 = *(v20 + 24);
    *(v0 + 16) = *v20;
    *(v0 + 24) = v22;
    *(v0 + 40) = v23;
    *(v0 + 56) = v21;
    v24 = swift_task_alloc();
    *(v0 + 152) = v24;
    *v24 = v0;
    v24[1] = sub_1DF5B1664;
    v25 = *(v0 + 120);

    return sub_1DF6070F4(0, 0, v19, v18, v0 + 16);
  }
}

id sub_1DF5B10E8(id result, char a2)
{
  if (a2)
  {
    return result;
  }

  return result;
}

uint64_t sub_1DF5B1124()
{
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42A00, &qword_1DF638C30);
  v1 = *(v63 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v63);
  v62 = &v45 - v3;
  v64 = sub_1DF6325AC();
  v4 = *(v64 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v64);
  v56 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE43270, &qword_1DF63B758);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v7 - 8);
  v11 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v45 - v12;
  v14 = OBJC_IVAR____TtCC10FindMyBase13WorkItemQueue8WorkItem_waiterContinuations;
  swift_beginAccess();
  v47 = v0;
  v46 = v14;
  v15 = *(v0 + v14);
  v16 = *(v15 + 64);
  v49 = v15 + 64;
  v17 = 1 << *(v15 + 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & v16;
  v48 = (v17 + 63) >> 6;
  v52 = v1 + 16;
  v53 = v4 + 16;
  v51 = v4 + 32;
  v20 = (v1 + 32);
  v57 = v4;
  v58 = v1;
  v60 = (v4 + 8);
  v61 = (v1 + 8);
  v59 = v15;

  v22 = 0;
  v54 = v13;
  v55 = v11;
  v50 = (v1 + 32);
  if (v19)
  {
    while (1)
    {
      v23 = v22;
LABEL_12:
      v26 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
      v27 = v26 | (v23 << 6);
      v28 = v59;
      v29 = v56;
      v30 = v57;
      v31 = v64;
      (*(v57 + 16))(v56, *(v59 + 48) + *(v57 + 72) * v27, v64);
      v32 = v58;
      v33 = *(v28 + 56) + *(v58 + 72) * v27;
      v34 = v62;
      v35 = v63;
      (*(v58 + 16))(v62, v33, v63);
      v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE43278, &qword_1DF63B760);
      v37 = *(v36 + 48);
      v38 = *(v30 + 32);
      v11 = v55;
      v38(v55, v29, v31);
      v39 = v35;
      v20 = v50;
      (*(v32 + 32))(&v11[v37], v34, v39);
      (*(*(v36 - 8) + 56))(v11, 0, 1, v36);
      v25 = v23;
      v13 = v54;
LABEL_13:
      sub_1DF5F2268(v11, v13, &qword_1ECE43270, &qword_1DF63B758);
      v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE43278, &qword_1DF63B760);
      if ((*(*(v40 - 8) + 48))(v13, 1, v40) == 1)
      {
        break;
      }

      v41 = v62;
      v42 = v63;
      (*v20)(v62, &v13[*(v40 + 48)], v63);
      sub_1DF632E3C();
      (*v61)(v41, v42);
      result = (*v60)(v13, v64);
      v22 = v25;
      if (!v19)
      {
        goto LABEL_5;
      }
    }

    v44 = *(v47 + v46);
    *(v47 + v46) = MEMORY[0x1E69E7CC8];
  }

  else
  {
LABEL_5:
    if (v48 <= v22 + 1)
    {
      v24 = v22 + 1;
    }

    else
    {
      v24 = v48;
    }

    v25 = v24 - 1;
    while (1)
    {
      v23 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v23 >= v48)
      {
        v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE43278, &qword_1DF63B760);
        (*(*(v43 - 8) + 56))(v11, 1, 1, v43);
        v19 = 0;
        goto LABEL_13;
      }

      v19 = *(v49 + 8 * v23);
      ++v22;
      if (v19)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1DF5B1664()
{
  v1 = *(*v0 + 152);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t withOnceCheckedThrowingContinuation<A>(function:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1DF5A5C3C, 0, 0);
}

uint64_t XPCAcceptedClient.proxy(errorHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1DF5B17AC, 0, 0);
}

uint64_t sub_1DF5B17AC()
{
  v1 = v0[7];
  v0[8] = (*(v0[6] + 24))(v0[5]);
  v2 = swift_task_alloc();
  v0[9] = v2;
  *v2 = v0;
  v2[1] = sub_1DF5B1868;
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[2];

  return sub_1DF5A6778(v5, v3, v4);
}

uint64_t sub_1DF5B1868()
{
  v2 = *(*v1 + 72);
  v3 = *v1;
  v3[10] = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1DF5BE018, 0, 0);
  }

  else
  {
    v4 = v3[8];

    v5 = v3[1];

    return v5();
  }
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_1DF5B19B0()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1DF633A6C();
  sub_1DF632ACC();
  return sub_1DF633AAC();
}

uint64_t sub_1DF5B19F8(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1DF63394C();
  }
}

uint64_t os_activity(name:block:)(char *a1, int a2, char a3, void (*a4)(void))
{
  v9 = *MEMORY[0x1E69E9840];
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v5 = hackyCreateActivity(_:dso:)(a1, a2, a3, &dword_1DF59A000);
  os_activity_scope_enter(v5, &state);
  a4();
  os_activity_scope_leave(&state);
  result = swift_unknownObjectRelease();
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

os_activity_t hackyCreateActivity(_:dso:)(char *description, int a2, char a3, void *dso)
{
  if ((a3 & 1) == 0)
  {
    if (description)
    {
      if (dso)
      {
        if (qword_1ED8E5D80 == -1)
        {
LABEL_5:
          v5 = qword_1ED8E5D88;

          return _os_activity_create(dso, description, v5, OS_ACTIVITY_FLAG_DEFAULT);
        }

LABEL_19:
        v14 = dso;
        swift_once();
        dso = v14;
        goto LABEL_5;
      }

LABEL_28:
      result = sub_1DF6336EC();
      __break(1u);
      return result;
    }

    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (description >> 32)
  {
    goto LABEL_18;
  }

  if ((description & 0xFFFFF800) == 0xD800)
  {
    __break(1u);
    goto LABEL_28;
  }

  if (description >> 16 > 0x10)
  {
    __break(1u);
  }

  else if (description <= 0x7F)
  {
    v7 = description + 1;
    goto LABEL_13;
  }

  v8 = (description & 0x3F) << 8;
  v9 = (description >> 6) + v8 + 33217;
  v10 = (v8 | (description >> 6) & 0x3F) << 8;
  v11 = (description >> 18) + ((v10 | (description >> 12) & 0x3F) << 8) - 2122219023;
  v12 = (description >> 12) + v10 + 8487393;
  if (description >> 16)
  {
    v7 = v11;
  }

  else
  {
    v7 = v12;
  }

  if (description < 0x800)
  {
    v7 = v9;
  }

LABEL_13:
  *descriptiona = (v7 + 0xFEFEFEFEFEFEFFLL) & ~(-1 << (32 - (__clz(v7) & 0x18)));
  if (!dso)
  {
    goto LABEL_28;
  }

  if (qword_1ED8E5D80 != -1)
  {
    v13 = dso;
    swift_once();
    dso = v13;
  }

  return _os_activity_create(dso, descriptiona, qword_1ED8E5D88, OS_ACTIVITY_FLAG_DEFAULT);
}

uint64_t sub_1DF5B1CE8@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v23 = a3;
  v5 = sub_1DF6327CC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1DF63277C();
  v22 = *(v10 - 8);
  v11 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DF5A924C(&qword_1ED8E4D98, MEMORY[0x1E6966620]);
  sub_1DF63276C();
  sub_1DF5A3A94(a1, a2);
  sub_1DF5B2A90(a1, a2);
  sub_1DF5B33C0(a1, a2);
  sub_1DF63274C();
  (*(v6 + 8))(v9, v5);
  v28 = v10;
  v29 = sub_1DF5A924C(qword_1ED8E4DA0, MEMORY[0x1E69663E0]);
  v14 = __swift_allocate_boxed_opaque_existential_1(&v26);
  v15 = v22;
  (*(v22 + 16))(v14, v13, v10);
  __swift_project_boxed_opaque_existential_1(&v26, v28);
  sub_1DF63222C();
  (*(v15 + 8))(v13, v10);
  v16 = v24;
  v17 = v25;
  __swift_destroy_boxed_opaque_existential_1(&v26);
  v26 = v16;
  v27 = v17;
  sub_1DF63238C();
  sub_1DF63239C();
  sub_1DF63238C();
  sub_1DF63239C();
  v18 = v26;
  v19 = v27;
  LODWORD(v22) = sub_1DF63238C();
  v21[7] = sub_1DF63238C();
  v21[6] = sub_1DF63238C();
  v21[5] = sub_1DF63238C();
  v21[4] = sub_1DF63238C();
  v21[3] = sub_1DF63238C();
  v21[2] = sub_1DF63238C();
  sub_1DF63238C();
  sub_1DF63238C();
  sub_1DF63238C();
  sub_1DF63238C();
  sub_1DF63238C();
  sub_1DF63238C();
  sub_1DF63238C();
  sub_1DF63238C();
  sub_1DF63238C();
  sub_1DF63257C();
  return sub_1DF5B33C0(v18, v19);
}

uint64_t sub_1DF5B2178(unint64_t a1, uint64_t a2, int a3)
{
  v4 = v3;
  v8 = sub_1DF6325AC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  result = MEMORY[0x1EEE9AC00](v8);
  v13 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  v14 = &v38 - v13;
  v4[3].opaque[0] = 0;
  v4[3].opaque[1] = 0;
  v40 = a3;
  v38 = a1;
  v39 = a2;
  v41 = result;
  if (a3)
  {
    v13 = HIDWORD(a1);
    if (!HIDWORD(a1))
    {
      if ((a1 & 0xFFFFF800) == 0xD800)
      {
        __break(1u);
        goto LABEL_26;
      }

      v13 = a1 >> 16;
      if (a1 >> 16 <= 0x10)
      {
        if (a1 <= 0x7F)
        {
          v15 = a1 + 1;
LABEL_9:
          v43 = (v15 + 0xFEFEFEFEFEFEFFLL) & ~(-1 << (8 * (4 - (__clz(v15) >> 3))));
          goto LABEL_10;
        }

LABEL_19:
        v33 = (a1 & 0x3F) << 8;
        v34 = (a1 >> 6) + v33 + 33217;
        v35 = (v33 | (a1 >> 6) & 0x3F) << 8;
        v36 = (a1 >> 18) + ((v35 | (a1 >> 12) & 0x3F) << 8) - 2122219023;
        v37 = (a1 >> 12) + v35 + 8487393;
        if (v13)
        {
          v15 = v36;
        }

        else
        {
          v15 = v37;
        }

        if (a1 < 0x800)
        {
          v15 = v34;
        }

        goto LABEL_9;
      }

LABEL_18:
      __break(1u);
      goto LABEL_19;
    }

LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (!a1)
  {
    __break(1u);
    goto LABEL_17;
  }

LABEL_10:
  v43 = sub_1DF632AAC();
  v44 = v16;

  MEMORY[0x1E12D82E0](46, 0xE100000000000000);
  v17 = v43;
  v18 = v44;
  sub_1DF63259C();
  v19 = sub_1DF63255C();
  v21 = v20;
  (*(v9 + 8))(v14, v41);
  v43 = v17;
  v44 = v18;

  MEMORY[0x1E12D82E0](v19, v21);

  v22 = v44;
  v4[1].opaque[0] = v43;
  v4[1].opaque[1] = v22;
  sub_1DF632A7C();

  v23 = os_transaction_create();

  if (!v23)
  {
LABEL_26:
    __break(1u);
    return result;
  }

  v4[2].opaque[0] = v23;
  v4[2].opaque[1] = hackyCreateActivity(_:dso:)(v38, v39, v40, &dword_1DF59A000);
  swift_beginAccess();
  v24 = swift_unknownObjectRetain();
  os_activity_scope_enter(v24, v4 + 3);
  swift_endAccess();
  swift_unknownObjectRelease();
  if (qword_1ED8E5CE8 != -1)
  {
    swift_once();
  }

  v25 = sub_1DF6326AC();
  __swift_project_value_buffer(v25, qword_1ED8E6A08);

  v26 = sub_1DF63268C();
  v27 = sub_1DF63314C();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    *v28 = 136446210;
    v42 = v29;
    v43 = 0x3A4E58545BLL;
    v44 = 0xE500000000000000;
    v30 = v4[1].opaque[0];
    v31 = v4[1].opaque[1];

    MEMORY[0x1E12D82E0](v30, v31);
    MEMORY[0x1E12D82E0](93, 0xE100000000000000);

    v32 = sub_1DF59EEC8(v43, v44, &v42);

    *(v28 + 4) = v32;
    _os_log_impl(&dword_1DF59A000, v26, v27, "Opened %{public}s", v28, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v29);
    MEMORY[0x1E12D9D80](v29, -1, -1);
    MEMORY[0x1E12D9D80](v28, -1, -1);
  }

  return v4;
}

uint64_t NSXPCConnection.id.getter@<X0>(uint64_t a1@<X8>)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = sub_1DF5B2644(&v7, &v8);
  v4 = v3;
  sub_1DF5B1CE8(v2, v3, a1);
  result = sub_1DF5B33C0(v2, v4);
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

unint64_t sub_1DF5B2644(uint64_t a1, uint64_t a2)
{
  v10[3] = MEMORY[0x1E69E6888];
  v10[4] = MEMORY[0x1E696A050];
  v10[0] = a1;
  v10[1] = a2;
  v2 = __swift_project_boxed_opaque_existential_1(v10, MEMORY[0x1E69E6888]);
  v3 = *v2;
  if (*v2)
  {
    v4 = v2[1];
    v5 = &v4[-v3];
    if (v4 == v3)
    {
      v3 = 0;
    }

    else if (v5 <= 14)
    {
      v3 = sub_1DF5B2744(*v2, v4);
    }

    else
    {
      v7 = sub_1DF63215C();
      v8 = *(v7 + 48);
      v9 = *(v7 + 52);
      swift_allocObject();
      sub_1DF63210C();
      if (v5 >= 0x7FFFFFFF)
      {
        sub_1DF63233C();
        v3 = swift_allocObject();
        *(v3 + 16) = 0;
        *(v3 + 24) = v5;
      }

      else
      {
        v3 = v5 << 32;
      }
    }
  }

  __swift_destroy_boxed_opaque_existential_1(v10);
  return v3;
}

unint64_t sub_1DF5B2744(_BYTE *a1, _BYTE *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a2 - a1;
  if (a1)
  {
    v5 = a2 - a1;
  }

  else
  {
    v5 = 0;
  }

  result = sub_1DF5B32E8(v5);
  __dst = result;
  v12 = v7;
  v14 = v8;
  v13 = v9;
  if (a1 && a2 != a1)
  {
    memcpy(&__dst, a1, v4);
    result = __dst;
  }

  v10 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1DF5B2828(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1DF5D7754;

  return v6();
}

uint64_t sub_1DF5B2910(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1DF59D2C4;

  return sub_1DF5B2828(a1, v5);
}

uint64_t sub_1DF5B29BC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1DF59D2C8;

  return sub_1DF5B329C(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_1DF5B2A90(uint64_t a1, unint64_t a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v2 != 2)
    {
LABEL_8:
      sub_1DF6327CC();
      sub_1DF5B3254(&qword_1ED8E4D98, MEMORY[0x1E6966620]);
      result = sub_1DF63273C();
      goto LABEL_9;
    }

    v3 = *(a1 + 16);
    v4 = *(a1 + 24);
  }

  else
  {
    if (!v2)
    {
      goto LABEL_8;
    }

    v3 = a1;
    v4 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }
  }

  result = sub_1DF626EA8(v3, v4);
LABEL_9:
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t _s10FindMyBase11TransactionC9asyncTask4name5blockys12StaticStringV_yyYaYbctFZ_0(unint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42C10, &qword_1DF63B260);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v37 - v12;
  if (qword_1ED8E6098 != -1)
  {
    swift_once();
  }

  sub_1DF633C5C();
  v14 = v38;
  if (v38)
  {
    if (qword_1ED8E5CE8 != -1)
    {
      swift_once();
    }

    v15 = sub_1DF6326AC();
    __swift_project_value_buffer(v15, qword_1ED8E6A08);

    v16 = sub_1DF63268C();
    v17 = sub_1DF63316C();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v37 = a4;
      v19 = v18;
      v20 = swift_slowAlloc();
      v38 = v20;
      *v19 = 136446466;
      v21 = sub_1DF6334AC();
      v23 = sub_1DF59EEC8(v21, v22, &v38);

      *(v19 + 4) = v23;
      *(v19 + 12) = 2082;
      v24 = *(v14 + 16);
      v25 = *(v14 + 24);

      v26 = sub_1DF59EEC8(v24, v25, &v38);

      *(v19 + 14) = v26;
      _os_log_impl(&dword_1DF59A000, v16, v17, "Transaction.asyncTask(name:) called with [%{public}s] when transaction [%{public}s] already exists!", v19, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E12D9D80](v20, -1, -1);
      v27 = v19;
      a4 = v37;
      MEMORY[0x1E12D9D80](v27, -1, -1);
    }

    v28 = sub_1DF632E9C();
    (*(*(v28 - 8) + 56))(v13, 1, 1, v28);
    v29 = swift_allocObject();
    v29[2] = 0;
    v29[3] = 0;
    v29[4] = a4;
    v29[5] = a5;

    sub_1DF5CE7F8(0, 0, v13, &unk_1DF639B28, v29);
  }

  else
  {
    type metadata accessor for Transaction();
    swift_allocObject();
    v30 = sub_1DF5B2178(a1, a2, a3);
    v31 = objc_opt_self();

    v32 = [v31 currentConnection];
    v33 = sub_1DF632E9C();
    (*(*(v33 - 8) + 56))(v13, 1, 1, v33);
    v34 = swift_allocObject();
    v34[2] = 0;
    v34[3] = 0;
    v34[4] = v30;
    v34[5] = v32;
    v34[6] = a4;
    v34[7] = a5;

    v35 = v32;
    sub_1DF5CE7F8(0, 0, v13, &unk_1DF639B18, v34);
  }
}

uint64_t sub_1DF5B3070()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  v3 = *(v0 + 56);

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1DF5B30C0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1DF5B3104(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1DF59D2C4;

  return sub_1DF5B339C(a1, v4, v5, v6);
}

uint64_t sub_1DF5B31B8(void *a1, void *a2)
{
  if (*a1 != -1)
  {
    v4 = a2;
    swift_once();
    a2 = v4;
  }

  v2 = *a2;
  sub_1DF633C5C();
  return v5;
}

uint64_t sub_1DF5B320C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1DF5B3254(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1DF5B329C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[6] = a6;
  v7[7] = a7;
  v7[4] = a4;
  v7[5] = a5;
  v7[3] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1DF5B3414, 0, 0);
}

unint64_t sub_1DF5B32E8(unint64_t result)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result <= 0xFF)
  {
    return 0;
  }

  __break(1u);
  return result;
}

_BYTE *sub_1DF5B3308@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v3 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    *a3 = result;
    a3[1] = 0xC000000000000000;
    return result;
  }

  if (v3 <= 14)
  {
    result = sub_1DF5B2744(result, a2);
    v8 = a3;
    v6 = v9 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v3 >= 0x7FFFFFFF)
    {
      result = sub_1DF5C3068(result, a2);
      v6 = v10 | 0x8000000000000000;
    }

    else
    {
      result = sub_1DF5B357C(result, a2);
      v6 = v5 | 0x4000000000000000;
    }

    v8 = a3;
  }

  *v8 = result;
  v8[1] = v6;
  return result;
}

uint64_t sub_1DF5B339C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a3;
  v4[6] = a4;
  v4[3] = a1;
  v4[4] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1DF5B3664, 0, 0);
}

uint64_t sub_1DF5B33C0(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_1DF5B3414()
{
  if (qword_1ED8E6098 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 40);
  *(v0 + 16) = *(v0 + 32);
  v2 = swift_task_alloc();
  *(v0 + 64) = v2;
  v3 = *(v0 + 48);
  *(v2 + 16) = v1;
  *(v2 + 24) = v3;
  v4 = *(MEMORY[0x1E69E8950] + 4);

  v5 = swift_task_alloc();
  *(v0 + 72) = v5;
  *v5 = v0;
  v5[1] = sub_1DF5B5E48;
  v6 = *(v0 + 24);

  return MEMORY[0x1EEE6DE98](v6, v0 + 16, &unk_1DF639B38, v2, 0, 0, 0xD00000000000001CLL, 0x80000001DF634F90);
}

uint64_t sub_1DF5B357C(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  v3 = sub_1DF63215C();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  result = sub_1DF63210C();
  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v2 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    return v2 << 32;
  }

LABEL_10:
  __break(1u);
  return result;
}
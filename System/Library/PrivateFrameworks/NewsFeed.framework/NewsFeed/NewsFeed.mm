id Assembly.init()()
{
  ObjectType = swift_getObjectType();
  v2 = OBJC_IVAR___NEAssembly_assemblies;
  sub_1D5B45E9C();
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1D727C500;
  v4 = type metadata accessor for AdsAssembly();
  v5 = swift_allocObject();
  *(v3 + 56) = v4;
  *(v3 + 64) = sub_1D5B45F7C(qword_1EDF41C38, type metadata accessor for AdsAssembly);
  *(v3 + 32) = v5;
  v6 = type metadata accessor for CommandAssembly();
  v7 = swift_allocObject();
  *(v3 + 96) = v6;
  *(v3 + 104) = sub_1D5B45F7C(&qword_1EDF412A8, type metadata accessor for CommandAssembly);
  *(v3 + 72) = v7;
  v8 = type metadata accessor for DatabaseAssembly();
  v9 = swift_allocObject();
  *(v3 + 136) = v8;
  *(v3 + 144) = sub_1D5B45F7C(qword_1EDF40C38, type metadata accessor for DatabaseAssembly);
  *(v3 + 112) = v9;
  v10 = type metadata accessor for DiagnosticAssembly();
  v11 = swift_allocObject();
  *(v3 + 176) = v10;
  *(v3 + 184) = sub_1D5B45F7C(&unk_1EDF40578, type metadata accessor for DiagnosticAssembly);
  *(v3 + 152) = v11;
  v12 = type metadata accessor for EngagementAssembly();
  v13 = swift_allocObject();
  *(v3 + 216) = v12;
  *(v3 + 224) = sub_1D5B45F7C(qword_1EDF404D0, type metadata accessor for EngagementAssembly);
  *(v3 + 192) = v13;
  v14 = type metadata accessor for FactoryAssembly();
  v15 = swift_allocObject();
  *(v3 + 256) = v14;
  *(v3 + 264) = sub_1D5B45F7C(qword_1EDF411F8, type metadata accessor for FactoryAssembly);
  *(v3 + 232) = v15;
  v16 = type metadata accessor for FormatAssembly();
  v17 = swift_allocObject();
  *(v3 + 296) = v16;
  *(v3 + 304) = sub_1D5B45F7C(qword_1EDF416B8, type metadata accessor for FormatAssembly);
  *(v3 + 272) = v17;
  v18 = type metadata accessor for LayoutAssembly();
  v19 = swift_allocObject();
  *(v3 + 336) = v18;
  *(v3 + 344) = sub_1D5B45F7C(qword_1EDF413E8, type metadata accessor for LayoutAssembly);
  *(v3 + 312) = v19;
  v20 = type metadata accessor for ManagerAssembly();
  v21 = swift_allocObject();
  *(v3 + 376) = v20;
  *(v3 + 384) = sub_1D5B45F7C(qword_1EDF41078, type metadata accessor for ManagerAssembly);
  *(v3 + 352) = v21;
  v22 = type metadata accessor for OfflineAssembly();
  v23 = swift_allocObject();
  *(v3 + 416) = v22;
  *(v3 + 424) = sub_1D5B45F7C(qword_1EDF40FD0, type metadata accessor for OfflineAssembly);
  *(v3 + 392) = v23;
  v24 = type metadata accessor for ServiceAssembly();
  v25 = swift_allocObject();
  *(v3 + 456) = v24;
  *(v3 + 464) = sub_1D5B45F7C(qword_1EDF40DD8, type metadata accessor for ServiceAssembly);
  *(v3 + 432) = v25;
  v26 = type metadata accessor for RendererAssembly();
  v27 = swift_allocObject();
  *(v3 + 496) = v26;
  *(v3 + 504) = sub_1D5B45F7C(&qword_1EDF40838, type metadata accessor for RendererAssembly);
  *(v3 + 472) = v27;
  v28 = sub_1D725C2BC();
  v29 = [objc_allocWithZone(v28) init];
  *(v3 + 536) = v28;
  *(v3 + 544) = sub_1D5B45F7C(&unk_1EDF43A00, MEMORY[0x1E69B69E8]);
  *(v3 + 512) = v29;
  *&v0[v2] = v3;
  v31.receiver = v0;
  v31.super_class = ObjectType;
  return objc_msgSendSuper2(&v31, sel_init);
}

void sub_1D5B45E9C()
{
  if (!qword_1EDF3C608)
  {
    sub_1D5B45EF4();
    v0 = sub_1D72644CC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF3C608);
    }
  }
}

unint64_t sub_1D5B45EF4()
{
  result = qword_1EDF43AE0;
  if (!qword_1EDF43AE0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EDF43AE0);
  }

  return result;
}

uint64_t sub_1D5B45F7C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for FeedEdition()
{
  result = qword_1EDF12DE0;
  if (!qword_1EDF12DE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1D5B46178()
{
  result = sub_1D725891C();
  if (v1 <= 0x3F)
  {
    result = sub_1D5B461FC();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_1D5B461FC()
{
  result = qword_1EDF04688;
  if (!qword_1EDF04688)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDF04688);
  }

  return result;
}

uint64_t sub_1D5B46248(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D5B46370(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D5B463CC()
{
  v0 = sub_1D72597EC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00]();
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1D725967C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00]();
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B46578();
  (*(v5 + 104))(v7, *MEMORY[0x1E69D6D00], v4);
  (*(v1 + 104))(v3, *MEMORY[0x1E69D6E90], v0);
  result = sub_1D725983C();
  qword_1EDF18700 = result;
  return result;
}

void sub_1D5B46578()
{
  if (!qword_1EDF43AF0)
  {
    sub_1D725967C();
    sub_1D5B46248(&unk_1EDF43B10, MEMORY[0x1E69D6D20]);
    v0 = sub_1D725986C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF43AF0);
    }
  }
}

uint64_t sub_1D5B46630()
{
  v0 = sub_1D72597EC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00]();
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1D725967C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00]();
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B46578();
  (*(v5 + 104))(v7, *MEMORY[0x1E69D6D00], v4);
  (*(v1 + 104))(v3, *MEMORY[0x1E69D6E90], v0);
  result = sub_1D725983C();
  qword_1EDF18710 = result;
  return result;
}

uint64_t sub_1D5B467DC()
{
  v0 = sub_1D72597EC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00]();
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1D725967C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00]();
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B46578();
  (*(v5 + 104))(v7, *MEMORY[0x1E69D6D00], v4);
  (*(v1 + 104))(v3, *MEMORY[0x1E69D6E90], v0);
  result = sub_1D725983C();
  qword_1EDF3C258 = result;
  return result;
}

uint64_t sub_1D5B469AC(void *a1)
{
  if (*a1 == -1)
  {
  }

  else
  {
    swift_once();
  }
}

uint64_t sub_1D5B46A20()
{
  v0 = sub_1D725B88C();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00]();
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D725AD4C();
  type metadata accessor for FeedAdPipelineProcessor();
  sub_1D725B52C();

  sub_1D725A70C();

  sub_1D725AD4C();
  sub_1D5B483C4(0, &qword_1EDF43908);
  sub_1D725B53C();

  sub_1D725A70C();

  sub_1D725AD4C();
  sub_1D5B483C4(0, &qword_1EDF43900);
  sub_1D725B53C();

  sub_1D725AD4C();
  sub_1D5B48420();
  sub_1D725B52C();

  sub_1D725AD4C();
  sub_1D5B483C4(0, &qword_1EDF42900);
  sub_1D725B53C();

  sub_1D725AD4C();
  sub_1D5B483C4(0, qword_1EDF42B98);
  sub_1D725B53C();

  sub_1D725AD4C();
  sub_1D5B48C54();
  sub_1D725B52C();

  v4 = *MEMORY[0x1E69D6AD0];
  v5 = *(v1 + 104);
  v5(v3, v4, v0);
  sub_1D725A71C();

  v6 = *(v1 + 8);
  v6(v3, v0);
  sub_1D725AD4C();
  sub_1D5B483C4(0, qword_1EDF429C0);
  sub_1D725B53C();

  sub_1D725AD4C();
  sub_1D5B47230();
  sub_1D725B52C();

  sub_1D725AD4C();
  sub_1D5B485E4();
  sub_1D725B52C();

  sub_1D725AD4C();
  sub_1D5B486A4();
  sub_1D725B52C();

  sub_1D725AD4C();
  sub_1D5B48D14();
  sub_1D725B52C();

  sub_1D725AD4C();
  sub_1D5B47308();
  sub_1D725B52C();

  v5(v3, v4, v0);
  sub_1D725A71C();

  v6(v3, v0);
  sub_1D725AD4C();
  type metadata accessor for FeedPrerollAdRequester();
  sub_1D725B52C();

  sub_1D725AD4C();
  sub_1D5B48DD4();
  sub_1D725B52C();

  sub_1D725AD4C();
  sub_1D5B48EAC();
  sub_1D725B52C();

  v5(v3, v4, v0);
  sub_1D725A71C();

  v6(v3, v0);
  sub_1D725AD4C();
  sub_1D5B48F68();
  sub_1D725B52C();

  sub_1D725AD5C();

  sub_1D725B51C();
}

uint64_t sub_1D5B471E8(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

void sub_1D5B47230()
{
  if (!qword_1EDF43940)
  {
    sub_1D726067C();
    sub_1D726073C();
    sub_1D72607CC();
    sub_1D5B48988(&qword_1EDF43968, 255, MEMORY[0x1E69B3FF0]);
    v0 = sub_1D72606FC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF43940);
    }
  }
}

void sub_1D5B47308()
{
  if (!qword_1EDF438E0)
  {
    sub_1D7260A3C();
    sub_1D7260B1C();
    sub_1D5B48988(&qword_1EDF43910, 255, MEMORY[0x1E69B41F0]);
    v0 = sub_1D7260D2C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF438E0);
    }
  }
}

uint64_t sub_1D5B473C8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D5B47410(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D5B47458(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D5B474A4(uint64_t a1)
{
  v2 = sub_1D725AB9C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D725AD5C();
  sub_1D725B51C();

  sub_1D725AD6C();
  __swift_project_boxed_opaque_existential_1(v35, v36);
  v7 = sub_1D5B483C4(0, &qword_1EDF439E0);
  v33 = *MEMORY[0x1E69D6500];
  v8 = *(v3 + 104);
  v8(v6);
  v29 = v8;
  sub_1D725B6BC();
  v9 = *(v3 + 8);
  v31 = v3 + 8;
  v9(v6, v2);
  __swift_destroy_boxed_opaque_existential_1(v35);
  v28 = a1;
  sub_1D725AD5C();
  sub_1D725B51C();

  sub_1D725AD6C();
  __swift_project_boxed_opaque_existential_1(v35, v36);
  v10 = v33;
  (v8)(v6, v33, v2);
  sub_1D725B6BC();
  v30 = v9;
  v9(v6, v2);
  __swift_destroy_boxed_opaque_existential_1(v35);
  sub_1D725AD5C();
  sub_1D725B51C();

  sub_1D725AD6C();
  __swift_project_boxed_opaque_existential_1(v35, v36);
  v32 = v3 + 104;
  v29(v6, v10, v2);
  sub_1D725B6BC();
  v9(v6, v2);
  __swift_destroy_boxed_opaque_existential_1(v35);
  sub_1D725AD5C();
  sub_1D725B51C();

  sub_1D725AD6C();
  __swift_project_boxed_opaque_existential_1(v35, v36);
  v11 = v29;
  v29(v6, v33, v2);
  v34 = v7;
  sub_1D725B6BC();
  v12 = v30;
  v30(v6, v2);
  __swift_destroy_boxed_opaque_existential_1(v35);
  sub_1D725AD5C();
  sub_1D725B51C();

  sub_1D725AD6C();
  __swift_project_boxed_opaque_existential_1(v35, v36);
  v13 = v33;
  v11(v6, v33, v2);
  sub_1D725B6BC();
  v12(v6, v2);
  __swift_destroy_boxed_opaque_existential_1(v35);
  sub_1D725AD6C();
  __swift_project_boxed_opaque_existential_1(v35, v36);
  type metadata accessor for LiveActivityCommandHandler();
  v11(v6, v13, v2);
  sub_1D725B6AC();
  v14 = v30;
  v30(v6, v2);
  __swift_destroy_boxed_opaque_existential_1(v35);
  sub_1D725AD5C();
  sub_1D725B51C();

  sub_1D725AD6C();
  __swift_project_boxed_opaque_existential_1(v35, v36);
  v15 = v33;
  v16 = v29;
  v29(v6, v33, v2);
  sub_1D725B6BC();
  v14(v6, v2);
  __swift_destroy_boxed_opaque_existential_1(v35);
  sub_1D725AD5C();
  sub_1D725B51C();

  sub_1D725AD6C();
  __swift_project_boxed_opaque_existential_1(v35, v36);
  v16(v6, v15, v2);
  sub_1D725B6BC();
  v14(v6, v2);
  __swift_destroy_boxed_opaque_existential_1(v35);
  sub_1D725AD5C();
  sub_1D725B51C();

  sub_1D725AD6C();
  __swift_project_boxed_opaque_existential_1(v35, v36);
  v16(v6, v33, v2);
  sub_1D725B6BC();
  v14(v6, v2);
  __swift_destroy_boxed_opaque_existential_1(v35);
  sub_1D725AD5C();
  sub_1D725B51C();

  sub_1D725AD6C();
  __swift_project_boxed_opaque_existential_1(v35, v36);
  v17 = v33;
  v16(v6, v33, v2);
  sub_1D725B6BC();
  v14(v6, v2);
  __swift_destroy_boxed_opaque_existential_1(v35);
  sub_1D725AD5C();
  sub_1D725B51C();

  sub_1D725AD6C();
  __swift_project_boxed_opaque_existential_1(v35, v36);
  v16(v6, v17, v2);
  sub_1D725B6BC();
  v14(v6, v2);
  __swift_destroy_boxed_opaque_existential_1(v35);
  sub_1D725AD5C();
  sub_1D725B51C();

  sub_1D725AD6C();
  __swift_project_boxed_opaque_existential_1(v35, v36);
  v16(v6, v33, v2);
  sub_1D725B6BC();
  v18 = v2;
  v14(v6, v2);
  __swift_destroy_boxed_opaque_existential_1(v35);
  sub_1D725AD5C();
  sub_1D725B51C();

  sub_1D725AD6C();
  __swift_project_boxed_opaque_existential_1(v35, v36);
  v19 = v33;
  v16(v6, v33, v2);
  sub_1D725B6BC();
  v20 = v30;
  v30(v6, v2);
  __swift_destroy_boxed_opaque_existential_1(v35);
  sub_1D725AD5C();
  sub_1D725B51C();

  sub_1D725AD6C();
  __swift_project_boxed_opaque_existential_1(v35, v36);
  v21 = v29;
  v29(v6, v19, v2);
  sub_1D725B6BC();
  v20(v6, v2);
  __swift_destroy_boxed_opaque_existential_1(v35);
  sub_1D725AD5C();
  sub_1D725B51C();

  sub_1D725AD6C();
  __swift_project_boxed_opaque_existential_1(v35, v36);
  v22 = v33;
  v23 = v21;
  v21(v6, v33, v2);
  sub_1D725B6BC();
  v24 = v30;
  v30(v6, v2);
  __swift_destroy_boxed_opaque_existential_1(v35);
  sub_1D725AD5C();
  sub_1D725B51C();

  sub_1D725AD6C();
  __swift_project_boxed_opaque_existential_1(v35, v36);
  v23(v6, v22, v2);
  sub_1D725B6BC();
  v24(v6, v2);
  __swift_destroy_boxed_opaque_existential_1(v35);
  sub_1D725AD5C();
  sub_1D725B51C();

  sub_1D725AD6C();
  __swift_project_boxed_opaque_existential_1(v35, v36);
  v25 = v33;
  v23(v6, v33, v18);
  sub_1D725B6BC();
  v24(v6, v18);
  __swift_destroy_boxed_opaque_existential_1(v35);
  sub_1D725AD5C();
  sub_1D725B51C();

  sub_1D725AD6C();
  __swift_project_boxed_opaque_existential_1(v35, v36);
  v26 = v29;
  v29(v6, v25, v18);
  sub_1D725B6BC();
  v30(v6, v18);
  __swift_destroy_boxed_opaque_existential_1(v35);
  sub_1D725AD5C();
  sub_1D725B51C();

  sub_1D725AD6C();
  __swift_project_boxed_opaque_existential_1(v35, v36);
  v26(v6, v25, v18);
  sub_1D725B6BC();
  v30(v6, v18);
  return __swift_destroy_boxed_opaque_existential_1(v35);
}

uint64_t sub_1D5B483C4(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

void sub_1D5B48420()
{
  if (!qword_1EDF43938)
  {
    sub_1D72609CC();
    sub_1D7260A0C();
    sub_1D7260A9C();
    type metadata accessor for FeedBannerAd();
    sub_1D5B471E8(&qword_1EDF43930, 255, MEMORY[0x1E69B41B0]);
    sub_1D5B471E8(qword_1EDF42200, 255, type metadata accessor for FeedBannerAd);
    v0 = sub_1D72609BC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF43938);
    }
  }
}

uint64_t sub_1D5B4854C()
{
  result = sub_1D7260DDC();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1D5B485E4()
{
  if (!qword_1EDF43970)
  {
    sub_1D726067C();
    sub_1D72607CC();
    sub_1D5B48988(&qword_1EDF43968, 255, MEMORY[0x1E69B3FF0]);
    v0 = sub_1D726050C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF43970);
    }
  }
}

void sub_1D5B486A4()
{
  if (!qword_1EDF43948)
  {
    sub_1D7260A3C();
    sub_1D7260ADC();
    sub_1D7260B1C();
    sub_1D5B48988(&qword_1EDF43910, 255, MEMORY[0x1E69B41F0]);
    v0 = sub_1D72606FC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF43948);
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

void sub_1D5B48830(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1D5B48894(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1D5B48940(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D5B48988(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_1D5B489F4()
{
  sub_1D725AD4C();
  sub_1D5B48894(0, &qword_1EDF43A88, MEMORY[0x1E69D62B0], MEMORY[0x1E69D6A80]);
  sub_1D725B52C();

  sub_1D725AD4C();
  sub_1D725B52C();
}

uint64_t sub_1D5B48B0C()
{
  sub_1D725AD4C();
  type metadata accessor for EngagementBannerViewLayoutAttributesFactory();
  sub_1D725B52C();

  sub_1D725AD4C();
  sub_1D5B49474(0, &qword_1EDF3D810);
  sub_1D725B53C();

  sub_1D725AD5C();
  sub_1D725B51C();
}

uint64_t type metadata accessor for FeedBannerAd()
{
  result = qword_1EDF421E8;
  if (!qword_1EDF421E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D5B48C54()
{
  if (!qword_1EDF438F0)
  {
    sub_1D72609CC();
    sub_1D7260A9C();
    sub_1D5B48988(&qword_1EDF43930, 255, MEMORY[0x1E69B41B0]);
    v0 = sub_1D7260D2C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF438F0);
    }
  }
}

void sub_1D5B48D14()
{
  if (!qword_1EDF43978)
  {
    sub_1D7260A3C();
    sub_1D7260B1C();
    sub_1D5B48988(&qword_1EDF43910, 255, MEMORY[0x1E69B41F0]);
    v0 = sub_1D726050C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF43978);
    }
  }
}

void sub_1D5B48DD4()
{
  if (!qword_1EDF43958)
  {
    sub_1D7260A1C();
    sub_1D72607DC();
    sub_1D726094C();
    sub_1D5B48988(&unk_1EDF43920, 255, MEMORY[0x1E69B41D8]);
    v0 = sub_1D72606FC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF43958);
    }
  }
}

void sub_1D5B48EAC()
{
  if (!qword_1EDF438E8)
  {
    sub_1D7260A1C();
    sub_1D726094C();
    sub_1D5B47458(&unk_1EDF43920, MEMORY[0x1E69B41D8]);
    v0 = sub_1D7260D2C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF438E8);
    }
  }
}

void sub_1D5B48F68()
{
  if (!qword_1EDF43980)
  {
    sub_1D7260A1C();
    sub_1D726094C();
    sub_1D5B48988(&unk_1EDF43920, 255, MEMORY[0x1E69B41D8]);
    v0 = sub_1D726050C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF43980);
    }
  }
}

uint64_t sub_1D5B49028()
{
  v0 = sub_1D725AB9C();
  v16 = *(v0 - 8);
  v17 = v0;
  MEMORY[0x1EEE9AC00](v0, v1);
  v15 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1D725B88C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D725AD4C();
  type metadata accessor for DiagnosticFileProvider();
  sub_1D725B52C();

  sub_1D725AD4C();
  type metadata accessor for WebEmbedDiagnosticAttachmentProvider();
  sub_1D725B52C();

  sub_1D725AD4C();
  type metadata accessor for FeedDatabaseExporter();
  sub_1D725B52C();

  sub_1D725AD4C();
  sub_1D5B49474(0, qword_1EDF1BFE8);
  sub_1D725B53C();

  v8 = *MEMORY[0x1E69D6AD0];
  v9 = *(v4 + 104);
  v9(v7, v8, v3);
  sub_1D725A71C();

  v10 = *(v4 + 8);
  v10(v7, v3);
  sub_1D725AD5C();
  type metadata accessor for DebugPersonalizationInspectionGroupProvider();
  sub_1D725B52C();

  v9(v7, v8, v3);
  sub_1D725A71C();

  v10(v7, v3);
  sub_1D725AD6C();
  __swift_project_boxed_opaque_existential_1(v18, v18[3]);
  sub_1D725B62C();
  v12 = v15;
  v11 = v16;
  v13 = v17;
  (*(v16 + 104))(v15, *MEMORY[0x1E69D6500], v17);
  sub_1D725B6AC();
  (*(v11 + 8))(v12, v13);
  return __swift_destroy_boxed_opaque_existential_1(v18);
}

uint64_t sub_1D5B49474(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

unint64_t sub_1D5B494D0()
{
  result = qword_1EDF44178;
  if (!qword_1EDF44178)
  {
    sub_1D5B49A6C(255, &qword_1EDF44170, MEMORY[0x1E69E6190], MEMORY[0x1E69E6160], type metadata accessor for FormatCodingEmptyArrayStrategy);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF44178);
  }

  return result;
}

void sub_1D5B4958C()
{
  sub_1D725891C();
  if (v0 <= 0x3F)
  {
    sub_1D5B58388(319, &qword_1EDF43BE0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      sub_1D5B49800(319);
      if (v2 <= 0x3F)
      {
        sub_1D5B499C4();
        if (v3 <= 0x3F)
        {
          sub_1D5B4A5A0(319);
          if (v4 <= 0x3F)
          {
            sub_1D5B595F0(319, &qword_1EDF43BC0, type metadata accessor for FormatContentSubgroup, MEMORY[0x1E69E62F8]);
            if (v5 <= 0x3F)
            {
              sub_1D5B59C3C();
              if (v6 <= 0x3F)
              {
                sub_1D5B559F8();
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

void sub_1D5B49714(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_1D72627FC();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_1D5B49760(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1D5B497B0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1D5B49834(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1D5B49898(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1D5B498FC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1D5B49960(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1D5B499C4()
{
  if (!qword_1EDF450E8)
  {
    sub_1D5B49A6C(255, &qword_1EDF44170, MEMORY[0x1E69E6190], MEMORY[0x1E69E6160], type metadata accessor for FormatCodingEmptyArrayStrategy);
    sub_1D5B494D0();
    v0 = type metadata accessor for FormatCodingDefault();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF450E8);
    }
  }
}

void sub_1D5B49A6C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, void))
{
  if (!*a2)
  {
    v6 = a5(0, MEMORY[0x1E69E6158]);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1D5B49AC0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void, void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6190], MEMORY[0x1E69E6160]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1D5B49B34()
{
  result = swift_getAssociatedTypeWitness();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1D5B49BB4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for FormatPackage();
    v7 = sub_1D5B4A1A4(&qword_1EDF456B0, 255, type metadata accessor for FormatPackage);
    v8 = a3(a1, v6, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_1D5B49C54(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

void sub_1D5B49CBC(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_1D726393C();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_1D5B49D08(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1D5B49D58(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1D5B49DA8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1D5B49DF8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1D5B49E48(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1D5B49E98(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1D5B49EE8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1D5B49F38(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1D5B49F88(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void))
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

void sub_1D5B49FDC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1D5B4A02C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1D5B4A07C()
{
  if (!qword_1EC88D478)
  {
    sub_1D5B4A110();
    sub_1D5B4A1EC(&qword_1EDF43BF8, sub_1D5B4A110);
    v0 = type metadata accessor for FormatCodingDefault();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC88D478);
    }
  }
}

void sub_1D5B4A110()
{
  if (!qword_1EDF1BF48[0])
  {
    type metadata accessor for FormatPackage();
    sub_1D5B4A1EC(&qword_1EDF456B0, type metadata accessor for FormatPackage);
    v0 = type metadata accessor for FormatCodingEmptyFileReferenceCollectionStrategy();
    if (!v1)
    {
      atomic_store(v0, qword_1EDF1BF48);
    }
  }
}

uint64_t sub_1D5B4A1A4(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_1D5B4A1EC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D5B4A234(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D5B4A27C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D5B4A2C4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D5B4A30C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D5B4A354(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D5B4A39C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D5B4A3E4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D5B4A42C(void *a1)
{
  a1[1] = sub_1D5B4A1EC(&qword_1EDF456B8, type metadata accessor for FormatPackage);
  a1[2] = sub_1D5B4A1EC(qword_1EDF456C8, type metadata accessor for FormatPackage);
  result = sub_1D5B4A1EC(&qword_1EDF456C0, type metadata accessor for FormatPackage);
  a1[3] = result;
  return result;
}

uint64_t sub_1D5B4A510()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

unint64_t sub_1D5B4A54C()
{
  result = qword_1EDF45970;
  if (!qword_1EDF45970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF45970);
  }

  return result;
}

uint64_t type metadata accessor for FormatPackage()
{
  result = qword_1EDF45698;
  if (!qword_1EDF45698)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D5B4A60C()
{
  sub_1D5B49C54(319, &qword_1EDF450E0, sub_1D5B4A9B4, &type metadata for FormatCodingDescriptiveStrategy, type metadata accessor for FormatCodingDefault);
  if (v0 <= 0x3F)
  {
    sub_1D5B49D58(319, &qword_1EDF43BE0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      sub_1D5B49C54(319, &qword_1EDF450C0, sub_1D5B4AA08, &type metadata for FormatCodingVerticalDirectionStrategy, type metadata accessor for FormatCodingDefault);
      if (v2 <= 0x3F)
      {
        sub_1D5B4A07C();
        if (v3 <= 0x3F)
        {
          sub_1D5B4AA78();
          if (v4 <= 0x3F)
          {
            sub_1D5B4ACD8();
            if (v5 <= 0x3F)
            {
              sub_1D5B4AE24();
              if (v6 <= 0x3F)
              {
                sub_1D5B4C560();
                if (v7 <= 0x3F)
                {
                  sub_1D5B4BA40();
                  if (v8 <= 0x3F)
                  {
                    sub_1D5B4AFF4();
                    if (v9 <= 0x3F)
                    {
                      sub_1D5B4BCA0();
                      if (v10 <= 0x3F)
                      {
                        sub_1D5B4BE38(319, &qword_1EDF43BD0, type metadata accessor for FormatSlotDefinition, MEMORY[0x1E69E62F8]);
                        if (v11 <= 0x3F)
                        {
                          sub_1D5B4BE38(319, &unk_1EDF43BB0, type metadata accessor for FormatPropertyDefinition, MEMORY[0x1E69E62F8]);
                          if (v12 <= 0x3F)
                          {
                            sub_1D5B57ED0();
                            if (v13 <= 0x3F)
                            {
                              sub_1D5B559F8();
                              if (v14 <= 0x3F)
                              {
                                sub_1D5B55B2C();
                                if (v15 <= 0x3F)
                                {
                                  sub_1D5B49D58(319, &qword_1EDF44A60, &type metadata for FormatGroupColumnSystem, MEMORY[0x1E69E6720]);
                                  if (v16 <= 0x3F)
                                  {
                                    type metadata accessor for FormatCompilerOptions(319);
                                    if (v17 <= 0x3F)
                                    {
                                      sub_1D725BD1C();
                                      if (v18 <= 0x3F)
                                      {
                                        sub_1D5B4BE38(319, &qword_1EDF45AD0, MEMORY[0x1E69D6A58], MEMORY[0x1E69E6720]);
                                        if (v19 <= 0x3F)
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
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_1D5B4A9B4()
{
  result = qword_1EDF44168;
  if (!qword_1EDF44168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF44168);
  }

  return result;
}

unint64_t sub_1D5B4AA08()
{
  result = qword_1EDF43D90;
  if (!qword_1EDF43D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF43D90);
  }

  return result;
}

void sub_1D5B4AA78()
{
  if (!qword_1EDF45090)
  {
    sub_1D5B49C54(255, &qword_1EDF43C10, sub_1D5B4A54C, &type metadata for FormatGroup, type metadata accessor for FormatCodingEmptyFileReferenceCollectionStrategy);
    sub_1D5B4AC48();
    v0 = type metadata accessor for FormatCodingDefault();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF45090);
    }
  }
}

unint64_t sub_1D5B4AB14(void *a1)
{
  a1[1] = sub_1D5B4AB4C();
  a1[2] = sub_1D5B4ABA0();
  result = sub_1D5B4ABF4();
  a1[3] = result;
  return result;
}

unint64_t sub_1D5B4AB4C()
{
  result = qword_1EDF45978;
  if (!qword_1EDF45978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF45978);
  }

  return result;
}

unint64_t sub_1D5B4ABA0()
{
  result = qword_1EDF45988;
  if (!qword_1EDF45988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF45988);
  }

  return result;
}

unint64_t sub_1D5B4ABF4()
{
  result = qword_1EDF45980;
  if (!qword_1EDF45980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF45980);
  }

  return result;
}

unint64_t sub_1D5B4AC48()
{
  result = qword_1EDF43C18;
  if (!qword_1EDF43C18)
  {
    sub_1D5B49C54(255, &qword_1EDF43C10, sub_1D5B4A54C, &type metadata for FormatGroup, type metadata accessor for FormatCodingEmptyFileReferenceCollectionStrategy);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF43C18);
  }

  return result;
}

void sub_1D5B4ACD8()
{
  if (!qword_1EDF450A0)
  {
    sub_1D5B49C54(255, &qword_1EDF43C30, sub_1D5B4AD74, &type metadata for FormatItem, type metadata accessor for FormatCodingEmptyFileReferenceCollectionStrategy);
    sub_1D5B4B850();
    v0 = type metadata accessor for FormatCodingDefault();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF450A0);
    }
  }
}

unint64_t sub_1D5B4AD74()
{
  result = qword_1EDF459D0;
  if (!qword_1EDF459D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF459D0);
  }

  return result;
}

unint64_t sub_1D5B4ADC8(void *a1)
{
  a1[1] = sub_1D5B4B754();
  a1[2] = sub_1D5B4B7A8();
  result = sub_1D5B4B7FC();
  a1[3] = result;
  return result;
}

void sub_1D5B4AE24()
{
  if (!qword_1EDF45088)
  {
    sub_1D5B49C54(255, &qword_1EDF43C00, sub_1D5B4CBD8, &type metadata for FormatStyle, type metadata accessor for FormatCodingEmptyFileReferenceCollectionStrategy);
    sub_1D5B4B8E0();
    v0 = type metadata accessor for FormatCodingDefault();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF45088);
    }
  }
}

unint64_t sub_1D5B4AEC0()
{
  result = qword_1EDF45950;
  if (!qword_1EDF45950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF45950);
  }

  return result;
}

unint64_t sub_1D5B4AF14()
{
  result = qword_1EDF45960;
  if (!qword_1EDF45960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF45960);
  }

  return result;
}

uint64_t sub_1D5B4AF68(void *a1)
{
  a1[1] = sub_1D5B4B970(&qword_1EDF455A8);
  a1[2] = sub_1D5B4B970(qword_1EDF455B8);
  result = sub_1D5B4B970(&qword_1EDF455B0);
  a1[3] = result;
  return result;
}

void sub_1D5B4AFF4()
{
  if (!qword_1EDF45098)
  {
    sub_1D5B49C54(255, &qword_1EDF43C20, sub_1D5B4C700, &type metadata for FormatType, type metadata accessor for FormatCodingEmptyFileReferenceCollectionStrategy);
    sub_1D5B4C850();
    v0 = type metadata accessor for FormatCodingDefault();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF45098);
    }
  }
}

unint64_t sub_1D5B4B090()
{
  result = qword_1EDF454C0;
  if (!qword_1EDF454C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF454C0);
  }

  return result;
}

void sub_1D5B4B0E4()
{
  if (!qword_1EDF441D0)
  {
    type metadata accessor for FormatPropertyDefinition(255);
    sub_1D5B4C464(&qword_1EDF449F0, type metadata accessor for FormatPropertyDefinition);
    sub_1D5B4C464(&qword_1EDF449F8, type metadata accessor for FormatPropertyDefinition);
    v0 = type metadata accessor for FormatCodingEmptyArrayStrategy();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF441D0);
    }
  }
}

void sub_1D5B4B1B0()
{
  if (!qword_1EDF45118)
  {
    sub_1D5B4B0E4();
    sub_1D5B4C464(&qword_1EDF441D8, sub_1D5B4B0E4);
    v0 = type metadata accessor for FormatCodingDefault();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF45118);
    }
  }
}

void sub_1D5B4B244()
{
  sub_1D5B4B5A8(319, &qword_1EDF43F30, MEMORY[0x1E69E6370], &protocol witness table for Bool, type metadata accessor for FormatPrimitivePropertyDefinition);
  if (v0 <= 0x3F)
  {
    sub_1D5B57004(319, &qword_1EDF43F40, sub_1D5B5706C, &type metadata for FormatColor, type metadata accessor for FormatPrimitivePropertyDefinition);
    if (v1 <= 0x3F)
    {
      sub_1D5B5714C();
      if (v2 <= 0x3F)
      {
        type metadata accessor for FormatEnumPropertyDefinition(319);
        if (v3 <= 0x3F)
        {
          sub_1D5B57004(319, &qword_1EDF43F68, sub_1D5B577E4, MEMORY[0x1E69E7DE0], type metadata accessor for FormatPrimitivePropertyDefinition);
          if (v4 <= 0x3F)
          {
            sub_1D5B4B5A8(319, &qword_1EDF43F28, MEMORY[0x1E69E6530], &protocol witness table for Int, type metadata accessor for FormatPrimitivePropertyDefinition);
            if (v5 <= 0x3F)
            {
              sub_1D5B4B5A8(319, &qword_1EDF43F38, MEMORY[0x1E69E6158], &protocol witness table for String, type metadata accessor for FormatPrimitivePropertyDefinition);
              if (v6 <= 0x3F)
              {
                sub_1D5B5796C();
                if (v7 <= 0x3F)
                {
                  sub_1D5B57004(319, &qword_1EDF43F58, sub_1D5B57A00, &type metadata for FormatAsyncImageContent, type metadata accessor for FormatPrimitivePropertyDefinition);
                  if (v8 <= 0x3F)
                  {
                    sub_1D5B57004(319, &qword_1EDF43F60, sub_1D5B57AA8, &type metadata for FormatVideoNodeContent, type metadata accessor for FormatPrimitivePropertyDefinition);
                    if (v9 <= 0x3F)
                    {
                      sub_1D5B57004(319, &qword_1EDF43F48, sub_1D5B55668, &type metadata for FormatFont, type metadata accessor for FormatPrimitivePropertyDefinition);
                      if (v10 <= 0x3F)
                      {
                        sub_1D5B57004(319, &qword_1EDF43F50, sub_1D5B55F44, &type metadata for FormatVideoPlayerContent, type metadata accessor for FormatPrimitivePropertyDefinition);
                        if (v11 <= 0x3F)
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

void sub_1D5B4B554(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1D5B4B5A8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1D5B4B61C()
{
  sub_1D726393C();
  if (v0 <= 0x3F)
  {
    sub_1D5B4B5A8(319, &qword_1EDF45160, &type metadata for FormatCodingFalseStrategy, &protocol witness table for FormatCodingFalseStrategy, type metadata accessor for FormatCodingDefault);
    if (v1 <= 0x3F)
    {
      sub_1D5B56D30();
      if (v2 <= 0x3F)
      {
        sub_1D5B4BE9C(319, &qword_1EDF45AD0, MEMORY[0x1E69D6A58], MEMORY[0x1E69E6720]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_1D5B4B754()
{
  result = qword_1EDF459D8;
  if (!qword_1EDF459D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF459D8);
  }

  return result;
}

unint64_t sub_1D5B4B7A8()
{
  result = qword_1EDF459E8;
  if (!qword_1EDF459E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF459E8);
  }

  return result;
}

unint64_t sub_1D5B4B7FC()
{
  result = qword_1EDF459E0;
  if (!qword_1EDF459E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF459E0);
  }

  return result;
}

unint64_t sub_1D5B4B850()
{
  result = qword_1EDF43C38;
  if (!qword_1EDF43C38)
  {
    sub_1D5B49C54(255, &qword_1EDF43C30, sub_1D5B4AD74, &type metadata for FormatItem, type metadata accessor for FormatCodingEmptyFileReferenceCollectionStrategy);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF43C38);
  }

  return result;
}

unint64_t sub_1D5B4B8E0()
{
  result = qword_1EDF43C08;
  if (!qword_1EDF43C08)
  {
    sub_1D5B49C54(255, &qword_1EDF43C00, sub_1D5B4CBD8, &type metadata for FormatStyle, type metadata accessor for FormatCodingEmptyFileReferenceCollectionStrategy);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF43C08);
  }

  return result;
}

uint64_t sub_1D5B4B970(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for FormatSnippet();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D5B4B9B0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D5B4B9F8(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1D5B4BA40()
{
  if (!qword_1EDF450A8)
  {
    sub_1D5B49C54(255, &qword_1EDF43C40, sub_1D5B4BADC, &type metadata for FormatSupplementary, type metadata accessor for FormatCodingEmptyFileReferenceCollectionStrategy);
    sub_1D5B4BBD8();
    v0 = type metadata accessor for FormatCodingDefault();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF450A8);
    }
  }
}

unint64_t sub_1D5B4BADC()
{
  result = qword_1EDF44FD0;
  if (!qword_1EDF44FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF44FD0);
  }

  return result;
}

uint64_t sub_1D5B4BB30(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  a1[1] = a4();
  a1[2] = a5();
  result = a6();
  a1[3] = result;
  return result;
}

unint64_t sub_1D5B4BB84()
{
  result = qword_1EDF44FE0;
  if (!qword_1EDF44FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF44FE0);
  }

  return result;
}

unint64_t sub_1D5B4BBD8()
{
  result = qword_1EDF43C48;
  if (!qword_1EDF43C48)
  {
    sub_1D5B49C54(255, &qword_1EDF43C40, sub_1D5B4BADC, &type metadata for FormatSupplementary, type metadata accessor for FormatCodingEmptyFileReferenceCollectionStrategy);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF43C48);
  }

  return result;
}

unint64_t sub_1D5B4BC68(void *a1)
{
  a1[1] = sub_1D5B4C754();
  a1[2] = sub_1D5B4C7A8();
  result = sub_1D5B4C7FC();
  a1[3] = result;
  return result;
}

void sub_1D5B4BCA0()
{
  if (!qword_1EDF450B8)
  {
    sub_1D5B49C54(255, &qword_1EDF43C60, sub_1D5B4C8E0, &type metadata for FormatDecoration, type metadata accessor for FormatCodingEmptyFileReferenceCollectionStrategy);
    sub_1D5B4C9C0();
    v0 = type metadata accessor for FormatCodingDefault();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF450B8);
    }
  }
}

unint64_t sub_1D5B4BD3C()
{
  result = qword_1EDF45268;
  if (!qword_1EDF45268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF45268);
  }

  return result;
}

unint64_t sub_1D5B4BD90()
{
  result = qword_1EDF45270;
  if (!qword_1EDF45270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF45270);
  }

  return result;
}

void sub_1D5B4BDE4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D726393C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1D5B4BE38(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1D5B4BE9C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1D5B4BF00(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1D5B4BF64(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1D5B4BFC8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1D5B4C02C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D726393C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1D5B4C080()
{
  sub_1D5B4BF64(319, &qword_1EDF43BA8, type metadata accessor for FormatSlotDefinitionItemSet, MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_1D5B57CD4();
    if (v1 <= 0x3F)
    {
      sub_1D5B4BF64(319, &unk_1EDF43BB0, type metadata accessor for FormatPropertyDefinition, MEMORY[0x1E69E62F8]);
      if (v2 <= 0x3F)
      {
        sub_1D5B4BF64(319, &qword_1EDF45AD0, MEMORY[0x1E69D6A58], MEMORY[0x1E69E6720]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t type metadata accessor for FormatSlotDefinitionItemSet()
{
  result = qword_1EDF446B8;
  if (!qword_1EDF446B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D5B4C228()
{
  sub_1D5B4C328();
  if (v0 <= 0x3F)
  {
    sub_1D5B4CA9C();
    if (v1 <= 0x3F)
    {
      sub_1D5B4B1B0();
      if (v2 <= 0x3F)
      {
        sub_1D5B49DA8(319, &qword_1EDF43D98, &type metadata for FormatSlotDefinitionItemSetAuxiliary, MEMORY[0x1E69E6720]);
        if (v3 <= 0x3F)
        {
          sub_1D5B57CA0(319);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1D5B4C328()
{
  if (!qword_1EDF45150)
  {
    v0 = type metadata accessor for FormatCodingDefault();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF45150);
    }
  }
}

void sub_1D5B4C380()
{
  if (!qword_1EDF440D8)
  {
    sub_1D5B4CB30();
    sub_1D5B4CCC0();
    sub_1D5B4C410();
    sub_1D5B4B090();
    v0 = type metadata accessor for FormatCodingNotEmptySetStrategy();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF440D8);
    }
  }
}

unint64_t sub_1D5B4C410()
{
  result = qword_1EDF454C8[0];
  if (!qword_1EDF454C8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDF454C8);
  }

  return result;
}

uint64_t sub_1D5B4C464(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1D5B4C4CC()
{
  if (!qword_1EDF43BE8)
  {
    type metadata accessor for FormatSnippet();
    sub_1D5B4A1EC(&qword_1EDF455A0, type metadata accessor for FormatSnippet);
    v0 = type metadata accessor for FormatCodingEmptyFileReferenceCollectionStrategy();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF43BE8);
    }
  }
}

void sub_1D5B4C560()
{
  if (!qword_1EDF45080)
  {
    sub_1D5B4C4CC();
    sub_1D5B4A1EC(&qword_1EDF43BF0, sub_1D5B4C4CC);
    v0 = type metadata accessor for FormatCodingDefault();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF45080);
    }
  }
}

unint64_t sub_1D5B4C658()
{
  result = qword_1EDF44FD8;
  if (!qword_1EDF44FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF44FD8);
  }

  return result;
}

unint64_t sub_1D5B4C6AC()
{
  result = qword_1EDF44FE8;
  if (!qword_1EDF44FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF44FE8);
  }

  return result;
}

unint64_t sub_1D5B4C700()
{
  result = qword_1EDF459B0;
  if (!qword_1EDF459B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF459B0);
  }

  return result;
}

unint64_t sub_1D5B4C754()
{
  result = qword_1EDF459B8;
  if (!qword_1EDF459B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF459B8);
  }

  return result;
}

unint64_t sub_1D5B4C7A8()
{
  result = qword_1EDF459C8;
  if (!qword_1EDF459C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF459C8);
  }

  return result;
}

unint64_t sub_1D5B4C7FC()
{
  result = qword_1EDF459C0;
  if (!qword_1EDF459C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF459C0);
  }

  return result;
}

unint64_t sub_1D5B4C850()
{
  result = qword_1EDF43C28;
  if (!qword_1EDF43C28)
  {
    sub_1D5B49C54(255, &qword_1EDF43C20, sub_1D5B4C700, &type metadata for FormatType, type metadata accessor for FormatCodingEmptyFileReferenceCollectionStrategy);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF43C28);
  }

  return result;
}

unint64_t sub_1D5B4C8E0()
{
  result = qword_1EDF45260;
  if (!qword_1EDF45260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF45260);
  }

  return result;
}

unint64_t sub_1D5B4C934(void *a1)
{
  a1[1] = sub_1D5B4BD3C();
  a1[2] = sub_1D5B4C96C();
  result = sub_1D5B4BD90();
  a1[3] = result;
  return result;
}

unint64_t sub_1D5B4C96C()
{
  result = qword_1EDF45278;
  if (!qword_1EDF45278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF45278);
  }

  return result;
}

unint64_t sub_1D5B4C9C0()
{
  result = qword_1EDF43C68[0];
  if (!qword_1EDF43C68[0])
  {
    sub_1D5B49C54(255, &qword_1EDF43C60, sub_1D5B4C8E0, &type metadata for FormatDecoration, type metadata accessor for FormatCodingEmptyFileReferenceCollectionStrategy);
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDF43C68);
  }

  return result;
}

uint64_t type metadata accessor for FormatSlotDefinition()
{
  result = qword_1EDF44FC0;
  if (!qword_1EDF44FC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D5B4CA9C()
{
  if (!qword_1EDF450D8)
  {
    sub_1D5B4C380();
    sub_1D5B4C464(qword_1EDF440E0, sub_1D5B4C380);
    v0 = type metadata accessor for FormatCodingDefault();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF450D8);
    }
  }
}

unint64_t sub_1D5B4CB30()
{
  result = qword_1EDF454B8;
  if (!qword_1EDF454B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF454B8);
  }

  return result;
}

unint64_t sub_1D5B4CB84()
{
  result = qword_1EDF454B0;
  if (!qword_1EDF454B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF454B0);
  }

  return result;
}

unint64_t sub_1D5B4CBD8()
{
  result = qword_1EDF45948;
  if (!qword_1EDF45948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF45948);
  }

  return result;
}

unint64_t sub_1D5B4CC2C(void *a1)
{
  a1[1] = sub_1D5B4AEC0();
  a1[2] = sub_1D5B4AF14();
  result = sub_1D5B4CC64();
  a1[3] = result;
  return result;
}

unint64_t sub_1D5B4CC64()
{
  result = qword_1EDF45958;
  if (!qword_1EDF45958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF45958);
  }

  return result;
}

unint64_t sub_1D5B4CCC0()
{
  result = qword_1EDF454A8;
  if (!qword_1EDF454A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF454A8);
  }

  return result;
}

uint64_t sub_1D5B4CD14(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D5B4CD5C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D5B4CDA4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D5B4CDEC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D5B4CE34(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D5B4CE7C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D5B4CEC4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for PuzzleEmbedViewController()
{
  result = qword_1EDF3EB58;
  if (!qword_1EDF3EB58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D5B4CFC4()
{
  sub_1D5B4D194(319, qword_1EDF41DF0, type metadata accessor for PuzzleData, MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    sub_1D5B4D194(319, &qword_1EDF2A1E8, type metadata accessor for PuzzleResourceSource, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1D5B4D194(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1D5B4D1F8()
{
  result = sub_1D5B5534C(319, &qword_1EDF3C750);
  if (v1 <= 0x3F)
  {
    result = sub_1D72585BC();
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for PuzzleDatastore();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

void sub_1D5B4D2A4()
{
  sub_1D5B5534C(319, &qword_1EDF3C750);
  if (v0 <= 0x3F)
  {
    sub_1D5B4D334();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_1D5B4D334()
{
  if (!qword_1EDF1B690)
  {
    sub_1D72585BC();
    sub_1D5B5446C(255, &qword_1EDF45B40, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EDF1B690);
    }
  }
}

void sub_1D5B4D3E0()
{
  if (!qword_1EDF45B40)
  {
    sub_1D72585BC();
    v0 = sub_1D726393C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF45B40);
    }
  }
}

uint64_t sub_1D5B4D438()
{
  result = sub_1D72585BC();
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

uint64_t type metadata accessor for TagMastheadViewProvider()
{
  result = qword_1EDF26AA0;
  if (!qword_1EDF26AA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata accessor for PuzzleData()
{
  result = qword_1EDF41E38;
  if (!qword_1EDF41E38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata accessor for PuzzleResourceSource()
{
  result = qword_1EDF2A228;
  if (!qword_1EDF2A228)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata accessor for WebEmbedViewController()
{
  result = qword_1EDF3F6E0;
  if (!qword_1EDF3F6E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D5B4D760()
{
  sub_1D5B4D3E0();
  if (v0 <= 0x3F)
  {
    sub_1D5B4D72C(319);
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t type metadata accessor for WebEmbedDataVisualization()
{
  result = qword_1EDF3EB30;
  if (!qword_1EDF3EB30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D5B4D944()
{
  result = type metadata accessor for GenericDataVisualization();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t type metadata accessor for GenericDataVisualization()
{
  result = qword_1EDF3F030;
  if (!qword_1EDF3F030)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D5B4D9FC()
{
  sub_1D72585BC();
  if (v0 <= 0x3F)
  {
    sub_1D5B4DA90();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1D5B4DA90()
{
  if (!qword_1EDF3C850)
  {
    type metadata accessor for WebEmbedDataVisualizationURLDataSource();
    v0 = sub_1D72627FC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF3C850);
    }
  }
}

uint64_t type metadata accessor for WebEmbedDataVisualizationURLDataSource()
{
  result = qword_1EDF3CF98;
  if (!qword_1EDF3CF98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D5B4DB7C()
{
  sub_1D6071054(319, qword_1EDF2F9B8, type metadata accessor for TagMastheadModel);
  if (v0 <= 0x3F)
  {
    sub_1D725E11C();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t _s8NewsFeed15FactoryAssemblyC4load2iny13TeaFoundation14ProxyContainerC_tF_0()
{
  sub_1D725AD4C();
  sub_1D5B483C4(0, &unk_1EDF3FCE8);
  sub_1D725B53C();

  sub_1D725AD4C();
  sub_1D5B483C4(0, &qword_1EDF3D210);
  sub_1D725B53C();

  sub_1D725AD4C();
  sub_1D5B483C4(0, qword_1EDF3DBC8);
  sub_1D725B53C();

  sub_1D725AD4C();
  sub_1D5B483C4(0, &unk_1EDF42D70);
  sub_1D725B53C();

  sub_1D725AD4C();
  type metadata accessor for FormatLayoutViewFactory();
  sub_1D725B52C();

  sub_1D725AD5C();
  sub_1D725B51C();

  sub_1D725AD4C();
  type metadata accessor for FeedModelFactory();
  sub_1D725B52C();

  sub_1D725AD5C();
  sub_1D725B51C();
}

uint64_t sub_1D5B4DF60()
{
  sub_1D725AD4C();
  sub_1D5B483C4(0, qword_1EDF40A18);
  sub_1D725B53C();

  sub_1D725AD4C();
  sub_1D5B483C4(0, qword_1EDF3F600);
  sub_1D725B53C();

  sub_1D725AD4C();
  sub_1D5B552B0(0, &qword_1EDF439B0, sub_1D5B4E1A4, sub_1D5B53E88, MEMORY[0x1E69D7EA0]);
  sub_1D725B52C();

  sub_1D725AD4C();
  sub_1D5B483C4(0, &unk_1EDF405A0);
  sub_1D725B53C();

  sub_1D725AD4C();
  type metadata accessor for FormatLayoutResizingProvider();
  sub_1D725B52C();

  sub_1D725AD5C();
  sub_1D725B51C();
}

unint64_t sub_1D5B4E1A4()
{
  result = qword_1EDF3DF90[0];
  if (!qword_1EDF3DF90[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDF3DF90);
  }

  return result;
}

uint64_t sub_1D5B4E220()
{
  v0 = sub_1D725B88C();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D725AD4C();
  sub_1D5B53EDC(0, qword_1EDF43358, &type metadata for GroupLayoutInventory, &protocol witness table for GroupLayoutInventory, type metadata accessor for FeedLayoutSolver);
  sub_1D725B52C();

  sub_1D725AD4C();
  sub_1D725B53C();

  sub_1D725AD4C();
  sub_1D5B483C4(0, qword_1EDF42D80);
  sub_1D725B53C();

  sub_1D725AD4C();
  type metadata accessor for FormatSystemFactory();
  sub_1D725B52C();

  sub_1D725AD4C();
  type metadata accessor for FormatDecorationProviderFactory();
  sub_1D725B52C();

  sub_1D725AD4C();
  sub_1D5B5534C(0, &qword_1EDF1A7B8);
  sub_1D725B52C();

  sub_1D725AD4C();
  sub_1D5B483C4(0, &qword_1EDF42830);
  sub_1D725B53C();

  sub_1D725AD4C();
  sub_1D5B483C4(0, qword_1EDF3FEB8);
  sub_1D725B53C();

  sub_1D725AD4C();
  sub_1D5B483C4(0, qword_1EDF402D0);
  sub_1D725B53C();

  sub_1D725AD4C();
  sub_1D5B483C4(0, &qword_1EDF35958);
  sub_1D725B53C();

  (*(v1 + 104))(v4, *MEMORY[0x1E69D6AD0], v0);
  sub_1D725A71C();

  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_1D5B4E6AC()
{
  result = swift_checkMetadataState();
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

uint64_t type metadata accessor for FormatSystemFactory()
{
  result = qword_1EDF3FFC8;
  if (!qword_1EDF3FFC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D5B4E7CC()
{
  v35 = sub_1D725AB9C();
  v37 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35, v0);
  v34 = &v26 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_1D725B88C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D725AD4C();
  type metadata accessor for FeedFontManager();
  sub_1D725B52C();

  v7 = *MEMORY[0x1E69D6AD0];
  v8 = *(v3 + 104);
  v8(v6, v7, v2);
  sub_1D725A71C();

  v9 = *(v3 + 8);
  v9(v6, v2);
  sub_1D725AD4C();
  sub_1D5B483C4(0, qword_1EDF42928);
  sub_1D725B53C();

  v8(v6, v7, v2);
  sub_1D725A71C();

  v38 = v3 + 8;
  v9(v6, v2);
  sub_1D725AD4C();
  sub_1D5B483C4(0, qword_1EDF3E820);
  sub_1D725B53C();

  sub_1D725AD4C();
  sub_1D5B483C4(0, qword_1EDF3FF80);
  sub_1D725B53C();

  v8(v6, *MEMORY[0x1E69D6AB8], v2);
  sub_1D725A71C();

  v9(v6, v2);
  sub_1D725AD4C();
  sub_1D5B483C4(0, &qword_1EDF3FD10);
  sub_1D725B53C();

  sub_1D725AD4C();
  sub_1D5B483C4(0, &qword_1EDF3FF98);
  sub_1D725B53C();

  sub_1D725AD4C();
  sub_1D5B483C4(0, &qword_1EDF3DB30);
  sub_1D725B53C();

  v8(v6, v7, v2);
  sub_1D725A71C();

  v9(v6, v2);
  sub_1D725AD4C();
  sub_1D5B483C4(0, &qword_1EDF3D4F8);
  sub_1D725B53C();

  sub_1D725AD4C();
  sub_1D5B483C4(0, &qword_1EDF3DE20);
  sub_1D725B53C();

  v36 = v7;
  v8(v6, v7, v2);
  sub_1D725A71C();

  v9(v6, v2);
  sub_1D725AD4C();
  sub_1D5B483C4(0, &qword_1EDF3D238);
  sub_1D725B53C();

  v8(v6, v7, v2);
  v31 = v3 + 104;
  v32 = v8;
  sub_1D725A71C();

  v9(v6, v2);
  sub_1D725AD4C();
  sub_1D5B483C4(0, &unk_1EDF43AA0);
  sub_1D725B53C();

  v8(v6, v36, v2);
  sub_1D725A71C();

  v9(v6, v2);
  sub_1D725AD4C();
  sub_1D725B53C();

  v10 = v36;
  v11 = v32;
  v32(v6, v36, v2);
  sub_1D725A71C();

  v9(v6, v2);
  v33 = v9;
  sub_1D725AD4C();
  sub_1D5B483C4(0, qword_1EDF42758);
  sub_1D725B53C();

  v11(v6, v10, v2);
  sub_1D725A71C();

  v9(v6, v2);
  sub_1D725AD6C();
  __swift_project_boxed_opaque_existential_1(v39, v40);
  v12 = sub_1D725B38C();
  v30 = *MEMORY[0x1E69D6500];
  v13 = v37;
  v28 = *(v37 + 104);
  v29 = v37 + 104;
  v14 = v34;
  v15 = v35;
  v28(v34);
  v26 = v12;
  sub_1D725B6AC();
  v27 = *(v13 + 8);
  v37 = v13 + 8;
  v27(v14, v15);
  __swift_destroy_boxed_opaque_existential_1(v39);
  sub_1D725AD4C();
  sub_1D5B5534C(0, qword_1EDF3E460);
  sub_1D725B52C();

  type metadata accessor for LocationDetectionManager();
  sub_1D725A6FC();

  v16 = v36;
  v17 = v32;
  v32(v6, v36, v2);
  sub_1D725A71C();

  v33(v6, v2);
  sub_1D725AD4C();
  sub_1D5B483C4(0, &unk_1EDF3F3D0);
  sub_1D725B53C();

  sub_1D725AD4C();
  sub_1D5B483C4(0, &qword_1EDF43830);
  sub_1D725B53C();

  v17(v6, v16, v2);
  sub_1D725A71C();

  v18 = v33;
  v33(v6, v2);
  sub_1D725AD4C();
  sub_1D5B483C4(0, &qword_1EDF3CDB8);
  sub_1D725B53C();

  v17(v6, v16, v2);
  sub_1D725A71C();

  v18(v6, v2);
  sub_1D725AD6C();
  __swift_project_boxed_opaque_existential_1(v39, v40);
  v20 = v34;
  v19 = v35;
  (v28)(v34, v30, v35);
  sub_1D725B6AC();
  v27(v20, v19);
  __swift_destroy_boxed_opaque_existential_1(v39);
  sub_1D725AD4C();
  sub_1D5B483C4(0, &qword_1EDF3D220);
  sub_1D725B53C();

  sub_1D725AD4C();
  sub_1D5B483C4(0, &unk_1EDF3D228);
  sub_1D725B53C();

  sub_1D725AD4C();
  sub_1D5B483C4(0, qword_1EDF3F8A0);
  sub_1D725B53C();

  v21 = v32;
  v32(v6, v16, v2);
  sub_1D725A71C();

  v22 = v33;
  v33(v6, v2);
  sub_1D725AD4C();
  sub_1D5B483C4(0, qword_1EDF36190);
  sub_1D725B53C();

  v21(v6, v16, v2);
  sub_1D725A71C();

  v22(v6, v2);
  sub_1D725AD6C();
  __swift_project_boxed_opaque_existential_1(v39, v40);
  v24 = v34;
  v23 = v35;
  (v28)(v34, v30, v35);
  sub_1D725B6AC();
  v27(v24, v23);
  __swift_destroy_boxed_opaque_existential_1(v39);
  sub_1D725AD5C();
  type metadata accessor for UserActionObservationManager();
  sub_1D725B52C();

  v21(v6, v36, v2);
  sub_1D725A71C();

  v22(v6, v2);
  sub_1D725AD4C();
  sub_1D5B483C4(0, qword_1EDF3D5C0);
  sub_1D725B53C();

  sub_1D725AD4C();
  sub_1D5B483C4(0, qword_1EDF3DE28);
  sub_1D725B53C();
}

uint64_t sub_1D5B4F828()
{
  v0 = sub_1D725B88C();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D725AD4C();
  sub_1D5B4F970();
  sub_1D725B52C();

  (*(v1 + 104))(v4, *MEMORY[0x1E69D6AC0], v0);
  sub_1D725A71C();

  return (*(v1 + 8))(v4, v0);
}

void sub_1D5B4F970()
{
  if (!qword_1EDF412B8[0])
  {
    v0 = type metadata accessor for OfflineManager();
    if (!v1)
    {
      atomic_store(v0, qword_1EDF412B8);
    }
  }
}

uint64_t sub_1D5B4F9C8()
{
  v47 = sub_1D725AB9C();
  v50 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47, v0);
  v46 = &v38 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_1D725BF3C();
  v49 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45, v2);
  v44 = (&v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = sub_1D725B88C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D725AD4C();
  sub_1D5B483C4(0, &unk_1EDF3F6D0);
  sub_1D725B53C();

  v10 = *(v5 + 104);
  v53 = *MEMORY[0x1E69D6AD0];
  v9 = v53;
  v10(v8, v53, v4);
  v51 = v10;
  v48 = v5 + 104;
  sub_1D725A71C();

  v11 = *(v5 + 8);
  v11(v8, v4);
  sub_1D725AD4C();
  sub_1D5B5534C(0, &unk_1EDF3C6F0);
  sub_1D725B52C();

  v10(v8, v9, v4);
  sub_1D725A71C();

  v11(v8, v4);
  v52 = v5 + 8;
  sub_1D725AD4C();
  sub_1D5B483C4(0, &unk_1EDF3FFB0);
  sub_1D725B53C();

  sub_1D725AD4C();
  sub_1D5B483C4(0, qword_1EDF40850);
  sub_1D725B53C();

  LODWORD(v42) = *MEMORY[0x1E69D6BF0];
  v12 = v49;
  v13 = *(v49 + 104);
  v40 = v49 + 104;
  v41 = v13;
  v14 = v44;
  v15 = v45;
  v13(v44);
  sub_1D725A6EC();

  v16 = *(v12 + 8);
  v49 = v12 + 8;
  v39 = v16;
  v16(v14, v15);
  v17 = v53;
  v18 = v51;
  v51(v8, v53, v4);
  sub_1D725A71C();

  v11(v8, v4);
  sub_1D725AD5C();
  sub_1D5B483C4(0, &unk_1EDF3D828);
  sub_1D725B53C();

  sub_1D725AD4C();
  sub_1D5B483C4(0, &qword_1EDF412B0);
  sub_1D725B53C();

  sub_1D725AD4C();
  sub_1D5B483C4(0, &qword_1EDF405B0);
  sub_1D725B53C();

  sub_1D725AD4C();
  sub_1D5B483C4(0, &qword_1EDF25C80);
  sub_1D725B53C();

  sub_1D725AD4C();
  sub_1D5B5534C(0, &qword_1EDF1A948);
  sub_1D725B52C();

  v18(v8, v17, v4);
  sub_1D725A71C();

  v11(v8, v4);
  sub_1D725AD4C();
  sub_1D5B483C4(0, &unk_1EDF42820);
  sub_1D725B53C();

  sub_1D725AD4C();
  sub_1D5B483C4(0, &qword_1EDF3FFA8);
  sub_1D725B53C();

  sub_1D725AD4C();
  sub_1D5B483C4(0, &qword_1EDF3FFA0);
  sub_1D725B53C();

  v18(v8, v17, v4);
  sub_1D725A71C();

  v11(v8, v4);
  sub_1D725AD4C();
  sub_1D5B483C4(0, &qword_1EDF3FCF8);
  sub_1D725B53C();

  v18(v8, v17, v4);
  sub_1D725A71C();

  v11(v8, v4);
  v43 = v11;
  sub_1D725AD4C();
  sub_1D5B483C4(0, &unk_1EDF3DE10);
  sub_1D725B53C();

  v18(v8, v17, v4);
  sub_1D725A71C();

  v11(v8, v4);
  sub_1D725AD4C();
  sub_1D5B483C4(0, qword_1EDF42C90);
  sub_1D725B53C();

  v19 = v53;
  v18(v8, v53, v4);
  sub_1D725A71C();

  v20 = v43;
  v43(v8, v4);
  sub_1D725AD4C();
  sub_1D7258ECC();
  sub_1D725B52C();

  v18(v8, v19, v4);
  sub_1D725A71C();

  v20(v8, v4);
  v21 = v20;
  sub_1D725AD4C();
  sub_1D5B483C4(0, &qword_1EDF40840);
  sub_1D725B53C();

  v23 = v44;
  v22 = v45;
  v41(v44, v42, v45);
  sub_1D725A6EC();

  v39(v23, v22);
  v24 = v53;
  v25 = v51;
  v51(v8, v53, v4);
  sub_1D725A71C();

  v21(v8, v4);
  sub_1D725AD4C();
  sub_1D5B483C4(0, &unk_1EDF3FD00);
  sub_1D725B53C();

  v25(v8, v24, v4);
  sub_1D725A71C();

  v21(v8, v4);
  sub_1D725AD5C();
  sub_1D5B483C4(0, qword_1EDF3D240);
  sub_1D725B53C();

  sub_1D725AD4C();
  sub_1D5B483C4(0, &qword_1EDF43708);
  sub_1D725B53C();

  sub_1D725AD4C();
  sub_1D5B483C4(0, &qword_1EDF3D4F0);
  sub_1D725B53C();

  sub_1D725AD4C();
  sub_1D5B483C4(0, &qword_1EDF3EB48);
  sub_1D725B53C();

  sub_1D725AD4C();
  sub_1D5B483C4(0, &unk_1EDF43A90);
  sub_1D725B53C();

  sub_1D725AD4C();
  sub_1D5B510A8(0, &qword_1EDF43AC0, type metadata accessor for FormatPictureInPictureModel, MEMORY[0x1E69D6538]);
  sub_1D725B52C();

  v25(v8, v24, v4);
  sub_1D725A71C();

  v21(v8, v4);
  sub_1D725AD4C();
  sub_1D5B483C4(0, &unk_1EDF40590);
  sub_1D725B53C();

  v25(v8, v24, v4);
  sub_1D725A71C();

  v21(v8, v4);
  sub_1D725AD4C();
  sub_1D5B483C4(0, &unk_1EDF3EF88);
  sub_1D725B53C();

  sub_1D725AD4C();
  sub_1D5B483C4(0, &unk_1EDF3EE20);
  sub_1D725B53C();

  v26 = v53;
  v27 = v51;
  v51(v8, v53, v4);
  sub_1D725A71C();

  v21(v8, v4);
  sub_1D725AD4C();
  sub_1D5B483C4(0, &unk_1EDF3E810);
  sub_1D725B53C();

  sub_1D725A70C();

  v27(v8, v26, v4);
  sub_1D725A71C();

  v21(v8, v4);
  sub_1D725AD6C();
  __swift_project_boxed_opaque_existential_1(v54, v55);
  sub_1D5B483C4(0, &qword_1EDF3BAB0);
  LODWORD(v49) = *MEMORY[0x1E69D6500];
  v28 = v50;
  v44 = *(v50 + 104);
  v45 = v50 + 104;
  v30 = v46;
  v29 = v47;
  v44(v46);
  sub_1D725B6BC();
  v31 = *(v28 + 8);
  v50 = v28 + 8;
  v42 = v31;
  v31(v30, v29);
  __swift_destroy_boxed_opaque_existential_1(v54);
  sub_1D725AD5C();
  sub_1D5B483C4(0, &qword_1EDF3EE18);
  sub_1D725B53C();

  sub_1D725AD4C();
  sub_1D5B483C4(0, &qword_1EDF3EB50);
  sub_1D725B53C();

  v32 = v53;
  v33 = v51;
  v51(v8, v53, v4);
  sub_1D725A71C();

  v34 = v43;
  v43(v8, v4);
  sub_1D725AD4C();
  sub_1D5B483C4(0, &qword_1EDF3F7E8);
  sub_1D725B53C();

  v33(v8, v32, v4);
  sub_1D725A71C();

  v34(v8, v4);
  sub_1D725AD4C();
  sub_1D5B483C4(0, &qword_1EDF3CFD0);
  sub_1D725B53C();

  sub_1D725AD4C();
  sub_1D5B483C4(0, &qword_1EDF40588);
  sub_1D725B53C();

  sub_1D725AD4C();
  type metadata accessor for FeedRecipeClusteringService();
  sub_1D725B52C();

  sub_1D725AD4C();
  sub_1D5B483C4(0, &qword_1EDF3CFC0);
  sub_1D725B53C();

  sub_1D725AD4C();
  sub_1D5B483C4(0, &qword_1EDF3A088);
  sub_1D725B53C();

  sub_1D725AD4C();
  sub_1D5B483C4(0, qword_1EDF43260);
  sub_1D725B53C();

  sub_1D725AD6C();
  __swift_project_boxed_opaque_existential_1(v54, v55);
  sub_1D725B09C();
  v36 = v46;
  v35 = v47;
  (v44)(v46, v49, v47);
  sub_1D725B6AC();
  v42(v36, v35);
  __swift_destroy_boxed_opaque_existential_1(v54);
  sub_1D725AD5C();
  sub_1D725B51C();
}

void sub_1D5B510A8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t type metadata accessor for FormatPictureInPictureModel()
{
  result = qword_1EDF438A8;
  if (!qword_1EDF438A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D5B5117C(uint64_t a1)
{
  v66 = sub_1D725AB9C();
  v69 = *(v66 - 8);
  MEMORY[0x1EEE9AC00](v66, v2);
  v65 = &v54[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v60 = sub_1D725B88C();
  v4 = *(v60 - 8);
  MEMORY[0x1EEE9AC00](v60, v5);
  v7 = &v54[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_1D725BF3C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v54[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1D725AD4C();
  sub_1D5B483C4(0, qword_1EDF42E50);
  sub_1D725B53C();

  sub_1D725AD4C();
  sub_1D5B483C4(0, qword_1EDF425C0);
  sub_1D725B53C();

  sub_1D725AD4C();
  type metadata accessor for FeedItemRendererPipelineProcessor(0);
  sub_1D725B52C();

  sub_1D725AD4C();
  type metadata accessor for FeedItemPrefetcher();
  sub_1D725B52C();

  sub_1D725AD4C();
  sub_1D5B483C4(0, qword_1EDF42838);
  sub_1D725B53C();

  sub_1D725AD4C();
  sub_1D5B483C4(0, &unk_1EDF3F3C0);
  sub_1D725B53C();

  sub_1D725AD4C();
  sub_1D725B53C();

  sub_1D725AD4C();
  sub_1D5B483C4(0, &unk_1EDF3FCD8);
  sub_1D725B53C();

  sub_1D725AD4C();
  sub_1D725B53C();

  sub_1D725AD4C();
  type metadata accessor for CategoryViewLayoutAttributesFactory();
  sub_1D725B52C();

  sub_1D725AD4C();
  sub_1D725B52C();

  sub_1D725AD4C();
  sub_1D5B53C80(0, &qword_1EDF439F0, &qword_1EDF439F8, MEMORY[0x1E69D77B8], MEMORY[0x1E69E6720]);
  sub_1D725B53C();

  sub_1D725AD4C();
  v13 = sub_1D5B483C4(0, &qword_1EDF439F8);
  sub_1D725B53C();

  v75 = *MEMORY[0x1E69D6BF0];
  v73 = *(v9 + 104);
  v74 = v9 + 104;
  v14 = v8;
  v73(v12);
  sub_1D725A6EC();

  v68 = *(v9 + 8);
  v68(v12, v8);
  v64 = v9 + 8;
  v72 = *MEMORY[0x1E69D6AD0];
  v15 = *(v4 + 104);
  v70 = v4 + 104;
  v71 = v15;
  v16 = v7;
  v17 = v7;
  v18 = v60;
  v15(v17);
  sub_1D725A71C();

  v76 = *(v4 + 8);
  v76(v16, v18);
  sub_1D725AD4C();
  sub_1D5B483C4(0, qword_1EDF3EA80);
  sub_1D725B53C();

  sub_1D725AD4C();
  sub_1D5B483C4(0, qword_1EDF3E738);
  sub_1D725B53C();

  sub_1D725AD5C();
  v77 = v13;
  sub_1D725B53C();

  v63 = v14;
  (v73)(v12, v75, v14);
  v62 = v12;
  sub_1D725A6EC();

  v68(v12, v14);
  v19 = v72;
  v20 = v71;
  v71(v16, v72, v18);
  sub_1D725A71C();

  v76(v16, v18);
  sub_1D725AD4C();
  sub_1D5B483C4(0, qword_1EDF3EFA0);
  sub_1D725B53C();

  sub_1D725AD4C();
  type metadata accessor for HeadlineViewRendererPipelineProcessor();
  sub_1D725B52C();

  sub_1D725AD4C();
  sub_1D5B483C4(0, qword_1EDF3DED8);

  sub_1D725B53C();

  sub_1D725AD4C();
  sub_1D5B483C4(0, &qword_1EDF3EA70);
  sub_1D725B53C();

  type metadata accessor for IssueCoverViewRenderer();
  sub_1D725A6FC();

  sub_1D725AD4C();
  sub_1D5B483C4(0, &qword_1EDF3EF98);
  sub_1D725B53C();

  sub_1D725AD4C();
  sub_1D5B483C4(0, &unk_1EDF3CDA0);
  sub_1D725B53C();

  sub_1D725AD4C();
  type metadata accessor for IssueCoverViewLayoutAttributesFactory();
  sub_1D725B52C();

  sub_1D725AD4C();
  sub_1D5B483C4(0, &qword_1EDF3D818);
  sub_1D725B53C();

  type metadata accessor for ArticleThumbnailViewRenderer();
  sub_1D725A6FC();

  sub_1D725AD4C();
  sub_1D5B483C4(0, &unk_1EDF3DE00);
  sub_1D725B53C();

  sub_1D725AD4C();
  sub_1D5B483C4(0, qword_1EDF3CAC8);
  sub_1D725B53C();

  sub_1D725AD4C();
  type metadata accessor for ArticleThumbnailViewLayoutAttributesFactory();
  sub_1D725B52C();

  sub_1D725AD5C();
  type metadata accessor for FormatLayeredMediaNodeRenderer();
  sub_1D725B52C();

  sub_1D725A70C();

  sub_1D725AD4C();
  sub_1D5B483C4(0, &unk_1EDF3D200);
  sub_1D725B53C();

  sub_1D725AD4C();
  sub_1D5B483C4(0, &qword_1EDF3D820);
  sub_1D725B53C();

  sub_1D725AD5C();
  type metadata accessor for LayeredMediaViewProvider();
  sub_1D725B52C();

  sub_1D725AD5C();
  type metadata accessor for LayeredMediaViewRenderer();
  sub_1D725B52C();

  sub_1D725AD5C();
  type metadata accessor for LayeredMediaLayerRenderer();
  sub_1D725B52C();

  sub_1D725AD5C();
  type metadata accessor for LayeredMediaLayerRenderableProvider();
  sub_1D725B52C();

  sub_1D725AD5C();
  sub_1D5B483C4(0, &unk_1EDF3D500);
  sub_1D725B53C();

  sub_1D725AD4C();
  sub_1D5B483C4(0, &qword_1EDF3D1F8);
  sub_1D725B53C();

  sub_1D725AD4C();
  type metadata accessor for LayeredMediaRenderedViewModelFactory();
  sub_1D725B52C();

  sub_1D725AD5C();
  type metadata accessor for LayeredMediaViewModelFactory();
  sub_1D725B52C();

  sub_1D725AD5C();
  type metadata accessor for LayeredMediaViewModelRenderer();
  sub_1D725B52C();

  sub_1D725AD5C();
  sub_1D5B541F8();
  sub_1D725B52C();

  v20(v16, v19, v18);
  sub_1D725A71C();

  v21 = v76;
  v76(v16, v18);
  sub_1D725AD5C();
  sub_1D725B53C();

  v22 = v19;
  v23 = v18;
  v20(v16, v22, v18);
  sub_1D725A71C();

  v21(v16, v18);
  v24 = v21;
  sub_1D725AD4C();
  sub_1D5B483C4(0, &qword_1EDF3FFC0);
  sub_1D725B53C();

  sub_1D725AD4C();
  sub_1D5B483C4(0, &qword_1EDF3EA78);
  sub_1D725B53C();

  sub_1D725AD4C();
  sub_1D5B483C4(0, &unk_1EDF3D120);
  sub_1D725B53C();

  sub_1D725AD4C();
  sub_1D5B483C4(0, qword_1EDF3E5E0);
  sub_1D725B53C();

  type metadata accessor for FormatLayoutViewRenderer();
  sub_1D725A6FC();

  sub_1D725AD5C();
  type metadata accessor for FormatLayoutViewRouter();
  sub_1D725B52C();

  sub_1D725AD5C();
  type metadata accessor for FormatRunModeRunner();
  sub_1D725B52C();

  sub_1D725AD5C();
  type metadata accessor for FormatIssueCoverNodeRenderer();
  sub_1D725B52C();

  sub_1D725AD5C();
  type metadata accessor for FormatVideoNodeRenderer();
  sub_1D725B52C();

  sub_1D725AD5C();
  sub_1D5B483C4(0, &qword_1EDF3F6B0);
  sub_1D725B53C();

  sub_1D725AD5C();
  sub_1D5B483C4(0, qword_1EDF3FBE8);
  sub_1D725B53C();

  sub_1D725AD5C();
  type metadata accessor for FormatVideoPlayerNodeRenderer();
  sub_1D725B52C();

  sub_1D725AD5C();
  type metadata accessor for FormatProgressViewNodeRenderer();
  sub_1D725B52C();

  sub_1D725AD5C();
  type metadata accessor for FormatAdMetricsNodeRenderer();
  sub_1D725B52C();

  sub_1D725A70C();

  sub_1D725AD5C();
  type metadata accessor for FormatSponsoredBannerNodeRenderer();
  sub_1D725B52C();

  sub_1D725AD4C();
  sub_1D5B5534C(0, &unk_1EDF3C6E0);
  sub_1D725B52C();

  sub_1D725AD4C();
  type metadata accessor for FormatPuzzleEmbedViewController();
  sub_1D725B52C();

  sub_1D725A70C();

  sub_1D725AD4C();
  type metadata accessor for PuzzleEmbedViewController();
  sub_1D725B52C();

  sub_1D725A70C();

  sub_1D725AD4C();
  swift_beginAccess();

  sub_1D725B52C();

  sub_1D725A70C();

  sub_1D725AD4C();
  sub_1D5B483C4(0, qword_1EDF3EE30);
  sub_1D725B53C();

  sub_1D725AD4C();
  sub_1D5B483C4(0, qword_1EDF3D670);
  sub_1D725B53C();

  sub_1D725AD4C();
  sub_1D5B483C4(0, qword_1EDF3E9B8);
  sub_1D725B53C();

  sub_1D725AD4C();
  sub_1D5B483C4(0, &qword_1EDF3F490);
  sub_1D725B53C();

  sub_1D725AD4C();
  sub_1D5B483C4(0, &unk_1EDF439D0);
  sub_1D725B53C();

  LODWORD(v58) = *MEMORY[0x1E69D6AB8];
  v25 = v71;
  (v71)(v16);
  sub_1D725A71C();

  v24(v16, v23);
  sub_1D725AD5C();
  sub_1D725B51C();

  sub_1D725AD4C();
  sub_1D5B483C4(0, &qword_1EDF3CDB0);
  sub_1D725B53C();

  v25(v16, v72, v23);
  sub_1D725A71C();

  v59 = v4 + 8;
  v24(v16, v23);
  sub_1D725AD4C();
  type metadata accessor for WebEmbedImageGenerator();
  sub_1D725B52C();

  v25(v16, v58, v23);
  sub_1D725A71C();

  v24(v16, v23);
  sub_1D725AD4C();
  type metadata accessor for WebEmbedViewController();
  sub_1D725B52C();

  sub_1D725A70C();

  sub_1D725AD4C();
  type metadata accessor for WebEmbedManager();
  sub_1D725B52C();

  v26 = a1;
  sub_1D725AD5C();

  sub_1D725B51C();

  sub_1D725AD6C();
  __swift_project_boxed_opaque_existential_1(v78, v79);
  sub_1D5B5534C(0, &qword_1EDF1A7C8);
  v61 = *MEMORY[0x1E69D6500];
  v27 = v69;
  v28 = *(v69 + 104);
  v57 = v69 + 104;
  v58 = v28;
  v30 = v65;
  v29 = v66;
  v28(v65);
  sub_1D725B6AC();
  v31 = *(v27 + 8);
  v69 = v27 + 8;
  v56 = v31;
  v31(v30, v29);
  __swift_destroy_boxed_opaque_existential_1(v78);
  v32 = v26;
  sub_1D725AD4C();
  type metadata accessor for ShareAttributionViewReuseFactory();
  sub_1D725B52C();

  sub_1D725AD5C();
  sub_1D725B51C();

  sub_1D725AD5C();
  sub_1D725B53C();

  v33 = v72;
  v34 = v60;
  v35 = v71;
  v71(v16, v72, v60);
  v36 = v16;
  sub_1D725A71C();

  v37 = v16;
  v38 = v34;
  v39 = v34;
  v40 = v76;
  v76(v37, v38);
  v67 = v32;
  sub_1D725AD5C();
  sub_1D725B53C();

  v35(v36, v33, v39);
  sub_1D725A71C();

  v41 = v39;
  v40(v36, v39);
  sub_1D725AD4C();
  sub_1D725B53C();

  v42 = v62;
  v43 = v63;
  (v73)(v62, v75, v63);
  sub_1D725A6EC();

  v68(v42, v43);
  v55 = *MEMORY[0x1E69D6AC8];
  v44 = v55;
  v35(v36, v55, v41);
  sub_1D725A71C();

  v45 = v76;
  v76(v36, v41);
  sub_1D725AD4C();
  sub_1D725B53C();

  v35(v36, v44, v41);
  sub_1D725A71C();

  v46 = v41;
  v45(v36, v41);
  sub_1D725AD4C();
  sub_1D725B53C();

  v47 = v62;
  v48 = v63;
  (v73)(v62, v75, v63);
  sub_1D725A6EC();

  v49 = v68;
  v68(v47, v48);
  v50 = v71;
  v71(v36, v55, v46);
  sub_1D725A71C();

  v76(v36, v46);
  sub_1D725AD4C();
  sub_1D725B53C();

  (v73)(v47, v75, v48);
  sub_1D725A6EC();

  v49(v47, v48);
  v50(v36, v72, v46);
  sub_1D725A71C();

  v76(v36, v46);
  sub_1D725AD4C();
  sub_1D5B5534C(0, &qword_1EDF439C0);
  sub_1D725B52C();

  sub_1D725AD4C();
  sub_1D5B483C4(0, &qword_1EDF439C8);
  sub_1D725B53C();

  sub_1D725AD5C();
  type metadata accessor for FeedItemRendererTool();
  sub_1D725B52C();

  sub_1D725AD4C();
  sub_1D5B483C4(0, &qword_1EDF3CAC0);
  sub_1D725B53C();

  sub_1D725AD4C();
  sub_1D5B483C4(0, qword_1EDF3D838);
  sub_1D725B53C();

  sub_1D725AD4C();
  sub_1D5B483C4(0, &qword_1EDF3D510);
  sub_1D725B53C();

  sub_1D725AD4C();
  sub_1D5B483C4(0, qword_1EDF3D518);
  sub_1D725B53C();

  sub_1D725AD5C();
  sub_1D725B51C();

  sub_1D725AD5C();
  sub_1D725B51C();

  sub_1D725AD5C();
  sub_1D725B51C();

  sub_1D725AD5C();
  sub_1D725B51C();

  sub_1D725AD4C();
  sub_1D5B483C4(0, qword_1EDF3F7F0);
  sub_1D725B53C();

  sub_1D725AD4C();
  sub_1D5B483C4(0, &qword_1EDF3CDC0);
  sub_1D725B53C();

  sub_1D725AD4C();
  sub_1D5B483C4(0, qword_1EDF3D130);
  sub_1D725B53C();

  sub_1D725AD4C();
  sub_1D5B483C4(0, &unk_1EDF3EE08);
  sub_1D725B53C();

  sub_1D725AD5C();
  sub_1D725B51C();

  sub_1D725AD6C();
  __swift_project_boxed_opaque_existential_1(v78, v79);
  sub_1D5B483C4(0, &qword_1EDF439E0);
  v52 = v65;
  v51 = v66;
  v58(v65, v61, v66);
  sub_1D725B6BC();
  v56(v52, v51);
  __swift_destroy_boxed_opaque_existential_1(v78);
  sub_1D725AD4C();
  type metadata accessor for TagMastheadViewProvider();
  sub_1D725B52C();

  sub_1D725AD5C();
  sub_1D725B51C();
}

void sub_1D5B53BE4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D726393C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1D5B53C80(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_1D5B483C4(255, a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1D5B53DE8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1D5B53E38(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_1D5B53E88()
{
  result = qword_1EDF40600;
  if (!qword_1EDF40600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF40600);
  }

  return result;
}

void sub_1D5B53EDC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_1D5B53F30()
{
  result = sub_1D725BD1C();
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

uint64_t sub_1D5B54030()
{
  v0 = sub_1D72585BC();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v0;
}

void sub_1D5B540CC()
{
  sub_1D5B53BE4(319, &qword_1EDF439E8, MEMORY[0x1E69D7978]);
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1D5B541F8()
{
  if (!qword_1EDF43A80)
  {
    sub_1D5B53DE8(255, &qword_1EDF3C8E8, &type metadata for LayeredMediaLayer, MEMORY[0x1E69E62F8]);
    v0 = sub_1D725B84C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF43A80);
    }
  }
}

void sub_1D5B542A8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D726393C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1D5B542FC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D726393C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1D5B54350(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D726393C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1D5B543A4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1D5B54408(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1D5B5446C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1D5B544D0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D726393C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1D5B54524(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D726393C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1D5B54578(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1D5B545DC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D726393C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1D5B54630(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D726393C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1D5B54684(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D726393C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1D5B546D8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D726393C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1D5B5472C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1D5B54790(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1D5B547F4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1D5B54858(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1D5B548BC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D726393C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1D5B54910(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1D5B54974(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1D5B549D8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D726393C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1D5B54A2C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D726393C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1D5B54A80(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D726393C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1D5B54AD4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1D5B54B38(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D726393C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1D5B54B8C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1D5B54BF0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1D5B54C54(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1D5B54CB8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D726393C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1D5B54D0C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1D5B54D70(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D726393C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1D5B54DC4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D726393C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1D5B54E18(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D726393C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1D5B54E6C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D726393C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1D5B54EC0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D726393C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1D5B54F14(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D726393C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1D5B54F68(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D726393C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1D5B54FBC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D726393C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1D5B55010(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D726393C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1D5B55064(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1D5B550C8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D726393C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1D5B5511C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1D5B55180(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1D5B551E4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D726393C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1D5B55238(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D726393C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1D5B552B0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t (*a5)(uint64_t, void *))
{
  if (!*a2)
  {
    v11[0] = &type metadata for FormatLayoutSectionDescriptor;
    v11[1] = &type metadata for FormatLayoutModel;
    v11[2] = a3();
    v11[3] = a4();
    v9 = a5(a1, v11);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_1D5B5534C(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

unint64_t sub_1D5B5543C(void *a1)
{
  a1[1] = sub_1D5B57AFC();
  a1[2] = sub_1D5B57B50();
  result = sub_1D5B55614();
  a1[3] = result;
  return result;
}

void sub_1D5B55474()
{
  sub_1D5B55504();
  if (v0 <= 0x3F)
  {
    type metadata accessor for FormatMetadata();
    swift_getTupleTypeMetadata2();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_1D5B55504()
{
  if (!qword_1EDF45B30)
  {
    sub_1D72585BC();
    type metadata accessor for FormatMetadata();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDF45B30);
    }
  }
}

uint64_t type metadata accessor for FormatFeedGroup()
{
  result = qword_1EDF39FB0;
  if (!qword_1EDF39FB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1D5B555C0()
{
  result = qword_1EDF45238;
  if (!qword_1EDF45238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF45238);
  }

  return result;
}

unint64_t sub_1D5B55614()
{
  result = qword_1EDF44B30;
  if (!qword_1EDF44B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF44B30);
  }

  return result;
}

unint64_t sub_1D5B55668()
{
  result = qword_1EDF459F0;
  if (!qword_1EDF459F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF459F0);
  }

  return result;
}

unint64_t sub_1D5B556BC(void *a1)
{
  a1[1] = sub_1D5B556F4();
  a1[2] = sub_1D5B57BA4();
  result = sub_1D5B55EF0();
  a1[3] = result;
  return result;
}

unint64_t sub_1D5B556F4()
{
  result = qword_1EDF459F8;
  if (!qword_1EDF459F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF459F8);
  }

  return result;
}

void sub_1D5B55748()
{
  if (!qword_1EDF44190)
  {
    type metadata accessor for FormatOption();
    sub_1D5B4A1EC(&unk_1EDF45930, type metadata accessor for FormatOption);
    sub_1D5B4A1EC(&qword_1EDF45940, type metadata accessor for FormatOption);
    v0 = type metadata accessor for FormatCodingEmptyArrayStrategy();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF44190);
    }
  }
}

uint64_t type metadata accessor for FormatOption()
{
  result = qword_1EDF45918;
  if (!qword_1EDF45918)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D5B55860(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1D5B558C4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1D5B55960()
{
  sub_1D725BD1C();
  if (v0 <= 0x3F)
  {
    sub_1D5B580C0(319, &qword_1EDF45AB8);
    if (v1 <= 0x3F)
    {
      sub_1D5B58478();
      if (v2 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void sub_1D5B559F8()
{
  if (!qword_1EDF45158)
  {
    sub_1D5B55A8C();
    sub_1D5B4A1EC(qword_1EDF445A0, sub_1D5B55A8C);
    v0 = type metadata accessor for FormatCodingDefault();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF45158);
    }
  }
}

void sub_1D5B55A8C()
{
  if (!qword_1EDF44598)
  {
    v0 = type metadata accessor for FormatCodingEmptySetStrategy();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF44598);
    }
  }
}

void sub_1D5B55B2C()
{
  if (!qword_1EDF450B0)
  {
    sub_1D5B49C54(255, &qword_1EDF43C50, sub_1D5B55BC8, &type metadata for FormatLocalization, type metadata accessor for FormatCodingEmptyFileReferenceCollectionStrategy);
    sub_1D5B55C1C();
    v0 = type metadata accessor for FormatCodingDefault();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF450B0);
    }
  }
}

unint64_t sub_1D5B55BC8()
{
  result = qword_1EDF451F8;
  if (!qword_1EDF451F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF451F8);
  }

  return result;
}

unint64_t sub_1D5B55C1C()
{
  result = qword_1EDF43C58;
  if (!qword_1EDF43C58)
  {
    sub_1D5B49C54(255, &qword_1EDF43C50, sub_1D5B55BC8, &type metadata for FormatLocalization, type metadata accessor for FormatCodingEmptyFileReferenceCollectionStrategy);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF43C58);
  }

  return result;
}

unint64_t sub_1D5B55CBC()
{
  result = qword_1EDF459A8;
  if (!qword_1EDF459A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF459A8);
  }

  return result;
}

unint64_t sub_1D5B55D10()
{
  result = qword_1EDF459A0;
  if (!qword_1EDF459A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF459A0);
  }

  return result;
}

uint64_t sub_1D5B55D64(void *a1)
{
  v2 = MEMORY[0x1E6968FB0];
  a1[1] = sub_1D5B4CD5C(&unk_1EDF45B50, MEMORY[0x1E6968FB0]);
  a1[2] = sub_1D5B4CD5C(&unk_1EDF45B70, v2);
  result = sub_1D5B4CD5C(&unk_1EDF45B60, v2);
  a1[3] = result;
  return result;
}

unint64_t sub_1D5B55E10(void *a1)
{
  a1[1] = sub_1D5B57A54();
  a1[2] = sub_1D5B55E48();
  result = sub_1D5B55E9C();
  a1[3] = result;
  return result;
}

unint64_t sub_1D5B55E48()
{
  result = qword_1EDF44B18;
  if (!qword_1EDF44B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF44B18);
  }

  return result;
}

unint64_t sub_1D5B55E9C()
{
  result = qword_1EDF44B10;
  if (!qword_1EDF44B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF44B10);
  }

  return result;
}

unint64_t sub_1D5B55EF0()
{
  result = qword_1EDF45A00;
  if (!qword_1EDF45A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF45A00);
  }

  return result;
}

unint64_t sub_1D5B55F44()
{
  result = qword_1EDF447E8;
  if (!qword_1EDF447E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF447E8);
  }

  return result;
}

unint64_t sub_1D5B55F98(void *a1)
{
  a1[1] = sub_1D5B55FD0();
  a1[2] = sub_1D5B57BF8();
  result = sub_1D5B57C4C();
  a1[3] = result;
  return result;
}

unint64_t sub_1D5B55FD0()
{
  result = qword_1EDF447F0;
  if (!qword_1EDF447F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF447F0);
  }

  return result;
}

void sub_1D5B56024(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1D5B56088(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1D5B560EC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1D5B56150(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1D5B561B4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1D5B56218(uint64_t a1, unint64_t *a2, unint64_t *a3, unint64_t *a4)
{
  if (!*a2)
  {
    sub_1D5BFB8A8(255, a3, a4);
    v5 = sub_1D72644CC();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1D5B56274(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1D5B562D8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1D5B5633C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1D5B563A0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_1D5B56404()
{
  result = qword_1EDF44FF8[0];
  if (!qword_1EDF44FF8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDF44FF8);
  }

  return result;
}

void sub_1D5B56458()
{
  if (!qword_1EDF44B40[0])
  {
    v0 = sub_1D726393C();
    if (!v1)
    {
      atomic_store(v0, qword_1EDF44B40);
    }
  }
}

unint64_t sub_1D5B564A8()
{
  result = qword_1EDF45200;
  if (!qword_1EDF45200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF45200);
  }

  return result;
}

void sub_1D5B56534()
{
  sub_1D5B5681C(319, &qword_1EDF44018, MEMORY[0x1E69E6370], &protocol witness table for Bool, type metadata accessor for FormatCompilerPrimitiveProperty);
  if (v0 <= 0x3F)
  {
    sub_1D5B568D8(319, &qword_1EDF44028, sub_1D5B5706C, &type metadata for FormatColor, type metadata accessor for FormatCompilerPrimitiveProperty);
    if (v1 <= 0x3F)
    {
      sub_1D5B58AF0();
      if (v2 <= 0x3F)
      {
        type metadata accessor for FormatCompilerEnumProperty(319);
        if (v3 <= 0x3F)
        {
          sub_1D5B568D8(319, &qword_1EDF44040, sub_1D5B577E4, MEMORY[0x1E69E7DE0], type metadata accessor for FormatCompilerPrimitiveProperty);
          if (v4 <= 0x3F)
          {
            sub_1D5B5681C(319, &qword_1EDF44010, MEMORY[0x1E69E6530], &protocol witness table for Int, type metadata accessor for FormatCompilerPrimitiveProperty);
            if (v5 <= 0x3F)
            {
              sub_1D5B5681C(319, &qword_1EDF44020, MEMORY[0x1E69E6158], &protocol witness table for String, type metadata accessor for FormatCompilerPrimitiveProperty);
              if (v6 <= 0x3F)
              {
                sub_1D5B58DD8(319, qword_1EDF44050, type metadata accessor for FormatCompilerPrimitiveProperty);
                if (v7 <= 0x3F)
                {
                  sub_1D5B568D8(319, &qword_1EDF44030, sub_1D5B55668, &type metadata for FormatFont, type metadata accessor for FormatCompilerPrimitiveProperty);
                  if (v8 <= 0x3F)
                  {
                    sub_1D5B568D8(319, &qword_1EDF44038, sub_1D5B57A00, &type metadata for FormatAsyncImageContent, type metadata accessor for FormatCompilerPrimitiveProperty);
                    if (v9 <= 0x3F)
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

void sub_1D5B567C8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1D5B5681C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1D5B56870(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

void sub_1D5B568D8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

void sub_1D5B56940()
{
  if (!qword_1EDF441B0)
  {
    type metadata accessor for FormatCompilerSlotDefinition(255);
    sub_1D5B56FBC(&qword_1EDF44520, type metadata accessor for FormatCompilerSlotDefinition);
    sub_1D5B56FBC(&qword_1EDF44528, type metadata accessor for FormatCompilerSlotDefinition);
    v0 = type metadata accessor for FormatCodingEmptyArrayStrategy();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF441B0);
    }
  }
}

void sub_1D5B56A2C()
{
  sub_1D5B58E74();
  if (v0 <= 0x3F)
  {
    sub_1D5B587F8(319, &qword_1EDF45120, sub_1D5B5888C, &qword_1EDF441E8, sub_1D5B5888C);
    if (v1 <= 0x3F)
    {
      sub_1D5B587F8(319, &qword_1EDF45128, sub_1D601C2E4, &qword_1EDF441F8, sub_1D601C2E4);
      if (v2 <= 0x3F)
      {
        sub_1D5B56BC8();
        if (v3 <= 0x3F)
        {
          sub_1D5B58F2C(319, qword_1EDF43EE0, type metadata accessor for FormatCompilerSlotDefinitionItemSet);
          if (v4 <= 0x3F)
          {
            sub_1D5B58F2C(319, &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
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

void sub_1D5B56BC8()
{
  if (!qword_1EDF45170[0])
  {
    sub_1D5B56C5C();
    sub_1D5B58EE4(qword_1EDF44A70, sub_1D5B56C5C);
    v0 = type metadata accessor for FormatCodingDefault();
    if (!v1)
    {
      atomic_store(v0, qword_1EDF45170);
    }
  }
}

void sub_1D5B56C5C()
{
  if (!qword_1EDF44A68)
  {
    v0 = type metadata accessor for FormatCodingOneStrategy();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF44A68);
    }
  }
}

uint64_t type metadata accessor for FormatContentSubgroup()
{
  result = qword_1EDF44D48;
  if (!qword_1EDF44D48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D5B56D30()
{
  if (!qword_1EDF45140)
  {
    sub_1D5B56DC4();
    sub_1D5B56FBC(qword_1EDF44328, sub_1D5B56DC4);
    v0 = type metadata accessor for FormatCodingDefault();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF45140);
    }
  }
}

void sub_1D5B56DC4()
{
  if (!qword_1EDF44320)
  {
    sub_1D5B56E54();
    sub_1D5B56EFC();
    sub_1D5B555C0();
    sub_1D5B56F50();
    v0 = type metadata accessor for FormatCodingIgnoreSetStrategy();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF44320);
    }
  }
}

unint64_t sub_1D5B56E54()
{
  result = qword_1EDF45228;
  if (!qword_1EDF45228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF45228);
  }

  return result;
}

unint64_t sub_1D5B56EA8()
{
  result = qword_1EDF45220;
  if (!qword_1EDF45220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF45220);
  }

  return result;
}

unint64_t sub_1D5B56EFC()
{
  result = qword_1EDF45218;
  if (!qword_1EDF45218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF45218);
  }

  return result;
}

unint64_t sub_1D5B56F50()
{
  result = qword_1EDF45230;
  if (!qword_1EDF45230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF45230);
  }

  return result;
}

uint64_t sub_1D5B56FBC(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1D5B57004(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

unint64_t sub_1D5B5706C()
{
  result = qword_1EDF45990;
  if (!qword_1EDF45990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF45990);
  }

  return result;
}

unint64_t sub_1D5B570C0(void *a1)
{
  a1[1] = sub_1D5B570F8();
  a1[2] = sub_1D5B55CBC();
  result = sub_1D5B55D10();
  a1[3] = result;
  return result;
}

unint64_t sub_1D5B570F8()
{
  result = qword_1EDF45998;
  if (!qword_1EDF45998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF45998);
  }

  return result;
}

void sub_1D5B5714C()
{
  if (!qword_1EDF43F70)
  {
    sub_1D725891C();
    sub_1D5B57348(&qword_1EDF45B20, MEMORY[0x1E6969530]);
    v0 = type metadata accessor for FormatPrimitivePropertyDefinition();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF43F70);
    }
  }
}

uint64_t sub_1D5B571E0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D5B57228(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D5B57270(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D5B572B8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D5B57300(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D5B57348(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D5B57390(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D5B573D8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D5B57420(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D5B57468(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_1D5B574B0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D5B574F8(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_1D5B57540(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_1D5B57588(void *a1)
{
  v2 = MEMORY[0x1E6969530];
  a1[1] = sub_1D5B4CD5C(&qword_1EDF45B08, MEMORY[0x1E6969530]);
  a1[2] = sub_1D5B4CD5C(&qword_1EDF45B18, v2);
  result = sub_1D5B4CD5C(&qword_1EDF45B10, v2);
  a1[3] = result;
  return result;
}

void sub_1D5B57654()
{
  sub_1D5B49DA8(319, &qword_1EDF43BE0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    sub_1D5B49DA8(319, &qword_1EDF43BC8, &type metadata for FormatTypeDefinition.Case, MEMORY[0x1E69E62F8]);
    if (v1 <= 0x3F)
    {
      sub_1D5B4B5A8(319, &qword_1EDF45160, &type metadata for FormatCodingFalseStrategy, &protocol witness table for FormatCodingFalseStrategy, type metadata accessor for FormatCodingDefault);
      if (v2 <= 0x3F)
      {
        sub_1D5B56D30();
        if (v3 <= 0x3F)
        {
          sub_1D5B4BE9C(319, &qword_1EDF45AD0, MEMORY[0x1E69D6A58], MEMORY[0x1E69E6720]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

unint64_t sub_1D5B577E4()
{
  result = qword_1EDF45AF0;
  if (!qword_1EDF45AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF45AF0);
  }

  return result;
}

unint64_t sub_1D5B57838(void *a1)
{
  a1[1] = sub_1D5B57870();
  a1[2] = sub_1D5B578C4();
  result = sub_1D5B57918();
  a1[3] = result;
  return result;
}

unint64_t sub_1D5B57870()
{
  result = qword_1EDF45AD8;
  if (!qword_1EDF45AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF45AD8);
  }

  return result;
}

unint64_t sub_1D5B578C4()
{
  result = qword_1EDF45AE8;
  if (!qword_1EDF45AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF45AE8);
  }

  return result;
}

unint64_t sub_1D5B57918()
{
  result = qword_1EDF45AE0;
  if (!qword_1EDF45AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF45AE0);
  }

  return result;
}

void sub_1D5B5796C()
{
  if (!qword_1EDF43F78)
  {
    sub_1D72585BC();
    sub_1D5B4CDEC(&qword_1EDF45B80, MEMORY[0x1E6968FB0]);
    v0 = type metadata accessor for FormatPrimitivePropertyDefinition();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF43F78);
    }
  }
}

unint64_t sub_1D5B57A00()
{
  result = qword_1EDF44B00;
  if (!qword_1EDF44B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF44B00);
  }

  return result;
}

unint64_t sub_1D5B57A54()
{
  result = qword_1EDF44B08;
  if (!qword_1EDF44B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF44B08);
  }

  return result;
}

unint64_t sub_1D5B57AA8()
{
  result = qword_1EDF44B20;
  if (!qword_1EDF44B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF44B20);
  }

  return result;
}

unint64_t sub_1D5B57AFC()
{
  result = qword_1EDF44B28;
  if (!qword_1EDF44B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF44B28);
  }

  return result;
}

unint64_t sub_1D5B57B50()
{
  result = qword_1EDF44B38;
  if (!qword_1EDF44B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF44B38);
  }

  return result;
}

unint64_t sub_1D5B57BA4()
{
  result = qword_1EDF45A08;
  if (!qword_1EDF45A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF45A08);
  }

  return result;
}

unint64_t sub_1D5B57BF8()
{
  result = qword_1EDF44800[0];
  if (!qword_1EDF44800[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDF44800);
  }

  return result;
}

unint64_t sub_1D5B57C4C()
{
  result = qword_1EDF447F8;
  if (!qword_1EDF447F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF447F8);
  }

  return result;
}

void sub_1D5B57CD4()
{
  if (!qword_1EDF45128)
  {
    sub_1D5B57D70(255, &qword_1EDF441F0, sub_1D5B57DEC, sub_1D5B56404);
    sub_1D5B57E40();
    v0 = type metadata accessor for FormatCodingDefault();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF45128);
    }
  }
}

void sub_1D5B57D70(uint64_t a1, unint64_t *a2, void (*a3)(void), void (*a4)(void))
{
  if (!*a2)
  {
    a3();
    a4();
    v6 = type metadata accessor for FormatCodingEmptyArrayStrategy();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

unint64_t sub_1D5B57DEC()
{
  result = qword_1EDF44FF0;
  if (!qword_1EDF44FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF44FF0);
  }

  return result;
}

unint64_t sub_1D5B57E40()
{
  result = qword_1EDF441F8;
  if (!qword_1EDF441F8)
  {
    sub_1D5B57D70(255, &qword_1EDF441F0, sub_1D5B57DEC, sub_1D5B56404);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF441F8);
  }

  return result;
}

void sub_1D5B57ED0()
{
  if (!qword_1EDF450F8)
  {
    sub_1D5B55748();
    sub_1D5B4A1EC(&qword_1EDF44198, sub_1D5B55748);
    v0 = type metadata accessor for FormatCodingDefault();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF450F8);
    }
  }
}

void sub_1D5B57F64()
{
  sub_1D5B56458();
  if (v0 <= 0x3F)
  {
    sub_1D5B558C4(319, &qword_1EDF44860, type metadata accessor for FormatVersionRequirement, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1D5B58050(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  result = a4(319);
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1D5B580C0(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    sub_1D725BD1C();
    sub_1D5B58244(255, &qword_1EDF43BE0, MEMORY[0x1E69E6720]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v4)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_1D5B58150(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1D5B581A0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1D5B581F0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void))
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

void sub_1D5B58244(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void))
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

void sub_1D5B58298(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1D5B582E8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1D5B58338(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1D5B58388(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1D5B583D8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1D5B58428(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1D5B58478()
{
  if (!qword_1EDF45AC8)
  {
    sub_1D725BD1C();
    sub_1D5B58244(255, &qword_1EDF43BE0, MEMORY[0x1E69E6720]);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EDF45AC8);
    }
  }
}

unint64_t sub_1D5B5850C(void *a1)
{
  a1[1] = sub_1D5B564A8();
  a1[2] = sub_1D5B58544();
  result = sub_1D5B58598();
  a1[3] = result;
  return result;
}

unint64_t sub_1D5B58544()
{
  result = qword_1EDF45210;
  if (!qword_1EDF45210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF45210);
  }

  return result;
}

unint64_t sub_1D5B58598()
{
  result = qword_1EDF45208;
  if (!qword_1EDF45208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF45208);
  }

  return result;
}

void sub_1D5B5860C()
{
  sub_1D5B58764(319, &qword_1EDF45120, sub_1D5B5888C, &qword_1EDF441E8, sub_1D5B5888C);
  if (v0 <= 0x3F)
  {
    sub_1D5B58764(319, &qword_1EDF45108, sub_1D5B56940, &qword_1EDF441B8, sub_1D5B56940);
    if (v1 <= 0x3F)
    {
      sub_1D5B592C0();
      if (v2 <= 0x3F)
      {
        sub_1D5B4BDE4(319, &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
        if (v3 <= 0x3F)
        {
          sub_1D5B56D30();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1D5B58764(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), unint64_t *a4, void (*a5)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_1D5B56FBC(a4, a5);
    v8 = type metadata accessor for FormatCodingDefault();
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_1D5B587F8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), unint64_t *a4, void (*a5)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_1D5B58EE4(a4, a5);
    v8 = type metadata accessor for FormatCodingDefault();
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_1D5B5888C()
{
  if (!qword_1EDF441E0)
  {
    type metadata accessor for FormatCompilerProperty(255);
    sub_1D5B56FBC(&qword_1EDF44BF0, type metadata accessor for FormatCompilerProperty);
    sub_1D5B56FBC(&qword_1EDF44BF8, type metadata accessor for FormatCompilerProperty);
    v0 = type metadata accessor for FormatCodingEmptyArrayStrategy();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF441E0);
    }
  }
}

void sub_1D5B58958()
{
  sub_1D5B5681C(319, &qword_1EDF450C8, &type metadata for FormatCodingEmptyDescriptiveStrategy, &protocol witness table for FormatCodingEmptyDescriptiveStrategy, type metadata accessor for FormatCodingDefault);
  if (v0 <= 0x3F)
  {
    sub_1D5B5681C(319, &qword_1EDF45168, &type metadata for FormatCodingTrueStrategy, &protocol witness table for FormatCodingTrueStrategy, type metadata accessor for FormatCodingDefault);
    if (v1 <= 0x3F)
    {
      sub_1D726393C();
      if (v2 <= 0x3F)
      {
        sub_1D5B5681C(319, &qword_1EDF45160, &type metadata for FormatCodingFalseStrategy, &protocol witness table for FormatCodingFalseStrategy, type metadata accessor for FormatCodingDefault);
        if (v3 <= 0x3F)
        {
          sub_1D5B56D30();
          if (v4 <= 0x3F)
          {
            sub_1D5B4C02C(319, &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
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

void sub_1D5B58AF0()
{
  if (!qword_1EDF44048)
  {
    sub_1D725891C();
    sub_1D5B58B84(&qword_1EDF45B20, MEMORY[0x1E6969530]);
    v0 = type metadata accessor for FormatCompilerPrimitiveProperty();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF44048);
    }
  }
}

uint64_t sub_1D5B58B84(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1D5B58BEC()
{
  sub_1D5B5681C(319, &qword_1EDF450C8, &type metadata for FormatCodingEmptyDescriptiveStrategy, &protocol witness table for FormatCodingEmptyDescriptiveStrategy, type metadata accessor for FormatCodingDefault);
  if (v0 <= 0x3F)
  {
    sub_1D5B5681C(319, &qword_1EDF45168, &type metadata for FormatCodingTrueStrategy, &protocol witness table for FormatCodingTrueStrategy, type metadata accessor for FormatCodingDefault);
    if (v1 <= 0x3F)
    {
      sub_1D5B58D88();
      if (v2 <= 0x3F)
      {
        sub_1D5B5681C(319, &qword_1EDF45160, &type metadata for FormatCodingFalseStrategy, &protocol witness table for FormatCodingFalseStrategy, type metadata accessor for FormatCodingDefault);
        if (v3 <= 0x3F)
        {
          sub_1D5B56D30();
          if (v4 <= 0x3F)
          {
            sub_1D5B4C02C(319, &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
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

void sub_1D5B58D88()
{
  if (!qword_1EDF43BE0)
  {
    v0 = sub_1D726393C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF43BE0);
    }
  }
}

void sub_1D5B58DD8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D72585BC();
    v7 = sub_1D5B4CEC4(&qword_1EDF45B80, MEMORY[0x1E6968FB0]);
    v8 = a3(a1, v6, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_1D5B58E74()
{
  if (!qword_1EDF450C8)
  {
    v0 = type metadata accessor for FormatCodingDefault();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF450C8);
    }
  }
}

uint64_t sub_1D5B58EE4(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1D5B58F2C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D726393C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t type metadata accessor for FormatCompilerSlotDefinitionItemSet()
{
  result = qword_1EDF43F18;
  if (!qword_1EDF43F18)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D5B58FCC()
{
  sub_1D5B590F4();
  if (v0 <= 0x3F)
  {
    sub_1D5B590A0(319, qword_1EDF43D48, type metadata accessor for FormatCompilerSlotDefinitionItemSetAuxiliary);
    if (v1 <= 0x3F)
    {
      sub_1D5B590A0(319, &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1D5B590A0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D726393C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1D5B590F4()
{
  if (!qword_1EDF45120)
  {
    sub_1D5B5888C();
    sub_1D6CB267C(&qword_1EDF441E8, sub_1D5B5888C);
    v0 = type metadata accessor for FormatCodingDefault();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF45120);
    }
  }
}

uint64_t type metadata accessor for FormatCompilerSlotDefinitionItemSetAuxiliary()
{
  result = qword_1EDF43D80;
  if (!qword_1EDF43D80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D5B591D4()
{
  sub_1D5B590F4();
  if (v0 <= 0x3F)
  {
    sub_1D5B59270();
    if (v1 <= 0x3F)
    {
      sub_1D5B57CA0(319);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1D5B59270()
{
  if (!qword_1EDF45AA0)
  {
    v0 = sub_1D726393C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF45AA0);
    }
  }
}

void sub_1D5B592C0()
{
  if (!qword_1EDF450D0)
  {
    sub_1D5B5931C();
    v0 = type metadata accessor for FormatCodingDefault();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF450D0);
    }
  }
}

unint64_t sub_1D5B5931C()
{
  result = qword_1EDF44000;
  if (!qword_1EDF44000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF44000);
  }

  return result;
}

void sub_1D5B59390()
{
  sub_1D5B59430();
  if (v0 <= 0x3F)
  {
    sub_1D5B4BDE4(319, &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1D5B59430()
{
  if (!qword_1EDF44E88[0])
  {
    v0 = sub_1D726393C();
    if (!v1)
    {
      atomic_store(v0, qword_1EDF44E88);
    }
  }
}

void sub_1D5B59480(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1D5B594E4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D726393C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1D5B59538(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1D5B5959C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D726393C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1D5B595F0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1D5B59654(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1D5B596B8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1D5B5971C()
{
  if (!qword_1EDF43E00[0])
  {
    type metadata accessor for FormatPackage();
    sub_1D5B5990C(&qword_1EDF456B0, type metadata accessor for FormatPackage);
    v0 = type metadata accessor for FormatLatestCompatibleFileReference();
    if (!v1)
    {
      atomic_store(v0, qword_1EDF43E00);
    }
  }
}

void sub_1D5B597B0()
{
  sub_1D5B5971C();
  if (v0 <= 0x3F)
  {
    sub_1D5B59C3C();
    if (v1 <= 0x3F)
    {
      sub_1D5B559F8();
      if (v2 <= 0x3F)
      {
        sub_1D5B5C370();
        if (v3 <= 0x3F)
        {
          sub_1D5B5C544();
          if (v4 <= 0x3F)
          {
            sub_1D5B5C6F0(319, &qword_1EDF45148, sub_1D5B5C758, &type metadata for FormatCodingMetadataStrategy, type metadata accessor for FormatCodingDefault);
            if (v5 <= 0x3F)
            {
              sub_1D5B5C7AC();
              if (v6 <= 0x3F)
              {
                sub_1D5B5C848();
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

uint64_t sub_1D5B5990C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D5B59984()
{
  result = type metadata accessor for FormatFileReference();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for FormatFileReferenceCollection();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_1D5B59A24()
{
  sub_1D5B58D88();
  if (v0 <= 0x3F)
  {
    sub_1D725BD1C();
    if (v1 <= 0x3F)
    {
      sub_1D5B5C268(319);
      if (v2 <= 0x3F)
      {
        sub_1D5B59B28();
        if (v3 <= 0x3F)
        {
          sub_1D5B59B80(319, &qword_1EDF43B98, sub_1D5B5C29C, &type metadata for FeedPlatform, MEMORY[0x1E69E64E8]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1D5B59B28()
{
  if (!qword_1EDF43B80)
  {
    v0 = sub_1D7262BAC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF43B80);
    }
  }
}

void sub_1D5B59B80(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

unint64_t sub_1D5B59BE8()
{
  result = qword_1EDF45A10;
  if (!qword_1EDF45A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF45A10);
  }

  return result;
}

void sub_1D5B59C3C()
{
  if (!qword_1EDF450F0)
  {
    sub_1D5B5C2F4(255, &qword_1EDF44180, sub_1D5B59CD8, sub_1D5B59D2C);
    sub_1D5B59D80();
    v0 = type metadata accessor for FormatCodingDefault();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF450F0);
    }
  }
}

unint64_t sub_1D5B59CD8()
{
  result = qword_1EDF453F0;
  if (!qword_1EDF453F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF453F0);
  }

  return result;
}

unint64_t sub_1D5B59D2C()
{
  result = qword_1EDF453F8[0];
  if (!qword_1EDF453F8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDF453F8);
  }

  return result;
}

unint64_t sub_1D5B59D80()
{
  result = qword_1EDF44188;
  if (!qword_1EDF44188)
  {
    sub_1D5B5C2F4(255, &qword_1EDF44180, sub_1D5B59CD8, sub_1D5B59D2C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF44188);
  }

  return result;
}

unint64_t sub_1D5B59E10()
{
  result = qword_1EDF44208;
  if (!qword_1EDF44208)
  {
    sub_1D5B5C2F4(255, &qword_1EDF44200, sub_1D5B5C5E0, sub_1D5B5C634);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF44208);
  }

  return result;
}

unint64_t sub_1D5B59EA0()
{
  result = qword_1EDF446C8;
  if (!qword_1EDF446C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF446C8);
  }

  return result;
}

unint64_t sub_1D5B59EF4()
{
  result = qword_1EDF446D0[0];
  if (!qword_1EDF446D0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDF446D0);
  }

  return result;
}

unint64_t sub_1D5B59F48()
{
  result = qword_1EDF441C8;
  if (!qword_1EDF441C8)
  {
    sub_1D5B5C2F4(255, &qword_1EDF441C0, sub_1D5B59EA0, sub_1D5B59EF4);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF441C8);
  }

  return result;
}

unint64_t sub_1D5B59FD8()
{
  result = qword_1EDF44470[0];
  if (!qword_1EDF44470[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDF44470);
  }

  return result;
}

unint64_t sub_1D5B5A02C()
{
  result = qword_1EDF441A8;
  if (!qword_1EDF441A8)
  {
    sub_1D5B5C2F4(255, &qword_1EDF441A0, sub_1D5B5C8E4, sub_1D5B59FD8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF441A8);
  }

  return result;
}

void sub_1D5B5A0D4()
{
  if (!qword_1EDF43B98)
  {
    sub_1D5B5C29C();
    v0 = sub_1D7262BAC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF43B98);
    }
  }
}

uint64_t sub_1D5B5A140()
{
  result = swift_checkMetadataState();
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

uint64_t sub_1D5B5A250()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      return swift_initClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_1D5B5A3E4()
{
  result = sub_1D725891C();
  if (v1 <= 0x3F)
  {
    result = sub_1D5B5A498(319, &qword_1EDF3C798);
    if (v2 <= 0x3F)
    {
      result = sub_1D72585BC();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1D5B5A498(uint64_t a1, unint64_t *a2)
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

void sub_1D5B5A4F8()
{
  swift_checkMetadataState();
  if (v0 <= 0x3F)
  {
    sub_1D5B5A664(319, &qword_1EDF43B70, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1D5B5A5C4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1D5B5A614(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1D5B5A664(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1D5B5A6B4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1D5B5A704(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t type metadata accessor for FormatContent.Resolved()
{
  result = qword_1EDF41790;
  if (!qword_1EDF41790)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D5B5A7A0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1D5B5A7F0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1D5B5A840(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1D5B5A890()
{
  sub_1D725891C();
  if (v0 <= 0x3F)
  {
    sub_1D5B5A7F0(319, &qword_1EDF43BA0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    if (v1 <= 0x3F)
    {
      sub_1D5B5ABEC(319);
      if (v2 <= 0x3F)
      {
        sub_1D5B5A7F0(319, &qword_1EDF3C8C0, &type metadata for FormatContentSubgroup.ResolvedContainer, MEMORY[0x1E69E62F8]);
        if (v3 <= 0x3F)
        {
          sub_1D5B5AD98();
          if (v4 <= 0x3F)
          {
            sub_1D5B5AE40(319, &qword_1EDF43B90, MEMORY[0x1E69E6158], MEMORY[0x1E69E6168], MEMORY[0x1E69E64E8]);
            if (v5 <= 0x3F)
            {
              sub_1D5B5AE94();
              if (v6 <= 0x3F)
              {
                sub_1D5B5AEFC();
                if (v7 <= 0x3F)
                {
                  sub_1D5B5AF64();
                  if (v8 <= 0x3F)
                  {
                    sub_1D5B5AFCC(319);
                    if (v9 <= 0x3F)
                    {
                      sub_1D5B5B528();
                      if (v10 <= 0x3F)
                      {
                        sub_1D5B5B590();
                        if (v11 <= 0x3F)
                        {
                          sub_1D5B5A7F0(319, &qword_1EDF428F8, &type metadata for FeedSubscriptionPaidAccess, MEMORY[0x1E69E6720]);
                          if (v12 <= 0x3F)
                          {
                            sub_1D5B5AB24(319, &qword_1EDF45AB0, MEMORY[0x1E69B40B8], MEMORY[0x1E69E6720]);
                            if (v13 <= 0x3F)
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
  }
}

void sub_1D5B5AB24(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1D5B5AB88(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t type metadata accessor for FormatPackageInventory()
{
  result = qword_1EDF3FB58;
  if (!qword_1EDF3FB58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D5B5AC6C()
{
  result = sub_1D725BD1C();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for FormatCompilerOptions(319);
    if (v2 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

void sub_1D5B5AD98()
{
  if (!qword_1EDF3C920)
  {
    type metadata accessor for FormatOption();
    v0 = sub_1D72627FC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF3C920);
    }
  }
}

void sub_1D5B5ADF0(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_1D7262BAC();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_1D5B5AE40(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1D5B5AE94()
{
  if (!qword_1EDF3C760)
  {
    sub_1D5B5534C(255, &qword_1EDF3C770);
    v0 = sub_1D726393C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF3C760);
    }
  }
}

void sub_1D5B5AEFC()
{
  if (!qword_1EDF3C6B8)
  {
    sub_1D5B5A498(255, &qword_1EDF3C6C0);
    v0 = sub_1D726393C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF3C6B8);
    }
  }
}

void sub_1D5B5AF64()
{
  if (!qword_1EDF3C710)
  {
    sub_1D5B5534C(255, &qword_1EDF3C720);
    v0 = sub_1D726393C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF3C710);
    }
  }
}

uint64_t type metadata accessor for FormatWebEmbed()
{
  result = qword_1EDF453E0;
  if (!qword_1EDF453E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D5B5B04C()
{
  sub_1D72585BC();
  if (v0 <= 0x3F)
  {
    sub_1D5B54F14(319, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
    if (v1 <= 0x3F)
    {
      sub_1D5B54F14(319, qword_1EDF45798, type metadata accessor for FormatArticle);
      if (v2 <= 0x3F)
      {
        sub_1D5B5CFF8(319, &qword_1EDF43BE0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
        if (v3 <= 0x3F)
        {
          sub_1D5B559F8();
          if (v4 <= 0x3F)
          {
            sub_1D5B59C3C();
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

void sub_1D5B5B1B0()
{
  sub_1D5B49CBC(319, &qword_1EDF43BE0);
  if (v0 <= 0x3F)
  {
    sub_1D5B5B2A0();
    if (v1 <= 0x3F)
    {
      sub_1D5B49CBC(319, qword_1EDF44C00);
      if (v2 <= 0x3F)
      {
        sub_1D5B5CFA0();
        if (v3 <= 0x3F)
        {
          sub_1D5B4D3E0();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1D5B5B2A0()
{
  if (!qword_1EDF45B00)
  {
    sub_1D725891C();
    v0 = sub_1D726393C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF45B00);
    }
  }
}

uint64_t type metadata accessor for FormatThumbnail()
{
  result = qword_1EDF45330;
  if (!qword_1EDF45330)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D5B5B344()
{
  sub_1D5B49CBC(319, &qword_1EDF43B78);
  if (v0 <= 0x3F)
  {
    sub_1D5B49CBC(319, &qword_1EDF43BE0);
    if (v1 <= 0x3F)
    {
      sub_1D5B5B410();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1D5B5B410()
{
  if (!qword_1EDF44EE8[0])
  {
    type metadata accessor for FormatThumbnailImage();
    v0 = sub_1D726393C();
    if (!v1)
    {
      atomic_store(v0, qword_1EDF44EE8);
    }
  }
}

uint64_t type metadata accessor for FormatThumbnailImage()
{
  result = qword_1EDF44F18;
  if (!qword_1EDF44F18)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D5B5B4B4()
{
  result = sub_1D72585BC();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1D5B5B528()
{
  if (!qword_1EDF3C6A8)
  {
    sub_1D5B5A498(255, &qword_1EDF3C6B0);
    v0 = sub_1D726393C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF3C6A8);
    }
  }
}

void sub_1D5B5B590()
{
  if (!qword_1EDF3C780)
  {
    sub_1D5B5A498(255, &qword_1EDF3C790);
    v0 = sub_1D726393C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF3C780);
    }
  }
}

unint64_t sub_1D5B5B5F8()
{
  result = qword_1EDF1A860;
  if (!qword_1EDF1A860)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EDF1A860);
  }

  return result;
}

void sub_1D5B5B65C()
{
  if (!qword_1EDF1B7B8)
  {
    sub_1D5B5B6C4();
    v0 = sub_1D7261E1C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF1B7B8);
    }
  }
}

unint64_t sub_1D5B5B6C4()
{
  result = qword_1EDF1A760;
  if (!qword_1EDF1A760)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDF1A760);
  }

  return result;
}

void sub_1D5B5B754()
{
  sub_1D5B5D6A0();
  if (v0 <= 0x3F)
  {
    sub_1D5B5D308(319, &unk_1EDF3C5B0, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      type metadata accessor for FeedHeadline.State(319);
      if (v2 <= 0x3F)
      {
        sub_1D5B49834(319, &qword_1EDF43990, MEMORY[0x1E69B3E58], MEMORY[0x1E69E6720]);
        if (v3 <= 0x3F)
        {
          sub_1D5B5D308(319, &qword_1EDF43198, &type metadata for FeedHeadlineTrack, MEMORY[0x1E69E6720]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_1D5B5B8E4()
{
  result = type metadata accessor for FeedItem.SharedState(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t type metadata accessor for SharedItem()
{
  result = qword_1EDF41D80;
  if (!qword_1EDF41D80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata accessor for FeedContext()
{
  result = qword_1EDF34CF8;
  if (!qword_1EDF34CF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D5B5BA2C()
{
  sub_1D5B5A498(319, &qword_1EDF1A958);
  if (v0 <= 0x3F)
  {
    sub_1D5B5D924(319, &qword_1EDF33290, type metadata accessor for BundleSession);
    if (v1 <= 0x3F)
    {
      sub_1D5B5ADF0(319, &qword_1EDF43B90);
      if (v2 <= 0x3F)
      {
        sub_1D5B5ADF0(319, &qword_1EDF43B80);
        if (v3 <= 0x3F)
        {
          sub_1D5B5BCE0();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t type metadata accessor for BundleSession()
{
  result = qword_1EDF332E0;
  if (!qword_1EDF332E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D5B5BBCC()
{
  sub_1D725891C();
  if (v0 <= 0x3F)
  {
    sub_1D5B5D978();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1D5B5BC8C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1D5B5BCE0()
{
  if (!qword_1EDF1A7E8)
  {
    sub_1D5B5A498(255, &unk_1EDF1A7F0);
    v0 = sub_1D726393C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF1A7E8);
    }
  }
}

uint64_t type metadata accessor for FormatMetadata()
{
  result = qword_1EDF45498;
  if (!qword_1EDF45498)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D5B5BD94(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1D5B5BDF8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1D5B5BE5C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1D5B5BEC0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1D5B5BF24(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D726393C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1D5B5BF78(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1D5B5BFDC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1D5B5C040(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1D5B5C0A4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1D5B5C108(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1D5B5C16C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D726393C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1D5B5C1C0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D726393C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1D5B5C214(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D726393C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1D5B5C29C()
{
  result = qword_1EDF45A18[0];
  if (!qword_1EDF45A18[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDF45A18);
  }

  return result;
}

void sub_1D5B5C2F4(uint64_t a1, unint64_t *a2, void (*a3)(void), void (*a4)(void))
{
  if (!*a2)
  {
    a3();
    a4();
    v6 = type metadata accessor for FormatCodingEmptyArrayStrategy();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1D5B5C370()
{
  if (!qword_1EDF45138)
  {
    sub_1D5B5C2F4(255, &qword_1EDF44210, sub_1D5B5C40C, sub_1D5B5C460);
    sub_1D5B5C4B4();
    v0 = type metadata accessor for FormatCodingDefault();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF45138);
    }
  }
}

unint64_t sub_1D5B5C40C()
{
  result = qword_1EDF45250;
  if (!qword_1EDF45250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF45250);
  }

  return result;
}

unint64_t sub_1D5B5C460()
{
  result = qword_1EDF45258;
  if (!qword_1EDF45258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF45258);
  }

  return result;
}

unint64_t sub_1D5B5C4B4()
{
  result = qword_1EDF44218[0];
  if (!qword_1EDF44218[0])
  {
    sub_1D5B5C2F4(255, &qword_1EDF44210, sub_1D5B5C40C, sub_1D5B5C460);
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDF44218);
  }

  return result;
}

void sub_1D5B5C544()
{
  if (!qword_1EDF45130)
  {
    sub_1D5B5C2F4(255, &qword_1EDF44200, sub_1D5B5C5E0, sub_1D5B5C634);
    sub_1D5B59E10();
    v0 = type metadata accessor for FormatCodingDefault();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF45130);
    }
  }
}

unint64_t sub_1D5B5C5E0()
{
  result = qword_1EDF45240;
  if (!qword_1EDF45240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF45240);
  }

  return result;
}

unint64_t sub_1D5B5C634()
{
  result = qword_1EDF45248;
  if (!qword_1EDF45248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF45248);
  }

  return result;
}

void sub_1D5B5C688(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

void sub_1D5B5C6F0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

unint64_t sub_1D5B5C758()
{
  result = qword_1EDF44530;
  if (!qword_1EDF44530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF44530);
  }

  return result;
}

void sub_1D5B5C7AC()
{
  if (!qword_1EDF45110)
  {
    sub_1D5B5C2F4(255, &qword_1EDF441C0, sub_1D5B59EA0, sub_1D5B59EF4);
    sub_1D5B59F48();
    v0 = type metadata accessor for FormatCodingDefault();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF45110);
    }
  }
}

void sub_1D5B5C848()
{
  if (!qword_1EDF45100)
  {
    sub_1D5B5C2F4(255, &qword_1EDF441A0, sub_1D5B5C8E4, sub_1D5B59FD8);
    sub_1D5B5A02C();
    v0 = type metadata accessor for FormatCodingDefault();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF45100);
    }
  }
}

unint64_t sub_1D5B5C8E4()
{
  result = qword_1EDF44468;
  if (!qword_1EDF44468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF44468);
  }

  return result;
}

void sub_1D5B5C940()
{
  sub_1D5B58D88();
  if (v0 <= 0x3F)
  {
    sub_1D5B5C268(319);
    if (v1 <= 0x3F)
    {
      sub_1D5B59B28();
      if (v2 <= 0x3F)
      {
        sub_1D5B5A0D4();
        if (v3 <= 0x3F)
        {
          swift_checkMetadataState();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_1D5B5CA60()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1D5B5CA9C()
{
  result = swift_checkMetadataState();
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

void sub_1D5B5CB58()
{
  type metadata accessor for FormatContent.Resolved();
  if (v0 <= 0x3F)
  {
    sub_1D5B49CBC(319, &qword_1EDF43BE0);
    if (v1 <= 0x3F)
    {
      sub_1D5B49CBC(319, &qword_1EDF3C7C0);
      if (v2 <= 0x3F)
      {
        sub_1D5B49CBC(319, qword_1EDF387B0);
        if (v3 <= 0x3F)
        {
          sub_1D5B5D1FC(319, &qword_1EDF1AE50, sub_1D5B5B5F8, MEMORY[0x1E69E62F8]);
          if (v4 <= 0x3F)
          {
            sub_1D5B5B65C();
            if (v5 <= 0x3F)
            {
              sub_1D5B5D1FC(319, qword_1EDF363C8, type metadata accessor for FeedGroupDebugCandidates, MEMORY[0x1E69E6720]);
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

uint64_t type metadata accessor for FormatWebEmbed.Resolved()
{
  result = qword_1EDF41588;
  if (!qword_1EDF41588)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D5B5CD60()
{
  type metadata accessor for FormatWebEmbed();
  if (v0 <= 0x3F)
  {
    sub_1D5B5D098(319, &unk_1EDF43A70, sub_1D5B4D3E0, MEMORY[0x1E69D6B18]);
    if (v1 <= 0x3F)
    {
      sub_1D5B4D72C(319);
      if (v2 <= 0x3F)
      {
        sub_1D5B5D160(319);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t type metadata accessor for FormatArticle()
{
  result = qword_1EDF45868;
  if (!qword_1EDF45868)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D5B5CEA0()
{
  result = type metadata accessor for FormatArticleOverrides();
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

uint64_t type metadata accessor for FormatArticleOverrides()
{
  result = qword_1EDF44C98;
  if (!qword_1EDF44C98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D5B5CFA0()
{
  if (!qword_1EDF452E0)
  {
    type metadata accessor for FormatThumbnail();
    v0 = sub_1D726393C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF452E0);
    }
  }
}

void sub_1D5B5CFF8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1D5B5D048(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1D5B5D098(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1D5B5D0FC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1D5B5D194()
{
  if (!qword_1EDF43A20)
  {
    sub_1D5B5534C(255, &qword_1EDF3C720);
    v0 = sub_1D725BFAC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF43A20);
    }
  }
}

void sub_1D5B5D1FC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1D5B5D260(uint64_t a1, unint64_t *a2, uint64_t a3, void (*a4)(uint64_t))
{
  if (!*a2)
  {
    a4(a3);
    v5 = sub_1D72627FC();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1D5B5D2B4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void))
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

void sub_1D5B5D308(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1D5B5D358(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_1D72644CC();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_1D5B5D3A4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1D5B5D3F4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1D5B5D444(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1D5B5D494(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void))
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

void sub_1D5B5D4E8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void))
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

void sub_1D5B5D53C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1D5B5D58C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void))
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

void sub_1D5B5D5E0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1D5B5D630(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_1D5B5D6A0()
{
  result = qword_1EDF3C720;
  if (!qword_1EDF3C720)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EDF3C720);
  }

  return result;
}

uint64_t sub_1D5B5D724()
{
  v0 = type metadata accessor for SharedItem();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v0;
}

void sub_1D5B5D77C()
{
  swift_checkMetadataState();
  if (v0 <= 0x3F)
  {
    type metadata accessor for FeedContext();
    if (v1 <= 0x3F)
    {
      sub_1D5B5D58C(319, &qword_1EDF43BE0, MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        swift_checkMetadataState();
        if (v3 <= 0x3F)
        {
          sub_1D5B5D9E0();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1D5B5D86C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1D5B5D8D0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D726393C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1D5B5D924(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D726393C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1D5B5D978()
{
  if (!qword_1EDF1AEC8)
  {
    sub_1D5B5A498(255, &qword_1EDF1AC18);
    v0 = sub_1D72627FC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF1AEC8);
    }
  }
}

unint64_t sub_1D5B5D9E0()
{
  result = qword_1EDF19490;
  if (!qword_1EDF19490)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_1EDF19490);
  }

  return result;
}

uint64_t type metadata accessor for FormatCustomItem.Resolved()
{
  result = qword_1EDF30720;
  if (!qword_1EDF30720)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1D5B5DA7C()
{
  result = qword_1EDF1AA30;
  if (!qword_1EDF1AA30)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDF1AA30);
  }

  return result;
}

uint64_t sub_1D5B5DAC8@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for PerformanceIssueService();
  result = swift_allocObject();
  a1[3] = v2;
  a1[4] = &off_1F51AA9B0;
  *a1 = result;
  return result;
}

void sub_1D5B5DB10()
{
  sub_1D5B5A498(319, &qword_1EDF3C6B0);
  if (v0 <= 0x3F)
  {
    type metadata accessor for FeedRecipe.State();
    if (v1 <= 0x3F)
    {
      sub_1D6C9E36C(319, &unk_1EDF3CFB0, &qword_1EDF3CFC0, &protocol descriptor for RecipeImageShareAttributeProviderType, MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        sub_1D6C9E36C(319, &unk_1EDF25860, qword_1EDF25870, &protocol descriptor for ExternalRecipeFactoryType, MEMORY[0x1E69E6720]);
        if (v3 <= 0x3F)
        {
          sub_1D6C9E36C(319, qword_1EDF27890, &unk_1EDF3F6D0, &protocol descriptor for FeatureAvailabilityType, MEMORY[0x1E69E6720]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t type metadata accessor for FeedRecipe.State()
{
  result = qword_1EDF42510;
  if (!qword_1EDF42510)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D5B5DCF0()
{
  result = type metadata accessor for FeedItem.SharedState(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1D5B5DD74(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_1D5B49474(255, a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t type metadata accessor for FeedRecipe()
{
  result = qword_1EDF42478;
  if (!qword_1EDF42478)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D5B5DE38()
{
  sub_1D5B5DF98(319, &qword_1EDF40B30, type metadata accessor for FormatCustomItem.Action, MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    sub_1D5B5DF98(319, &qword_1EDF3C920, type metadata accessor for FormatOption, MEMORY[0x1E69E62F8]);
    if (v1 <= 0x3F)
    {
      sub_1D5B58D88();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1D5B5DF44(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D726393C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1D5B5DF98(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t type metadata accessor for FormatCustomItem.Action()
{
  result = qword_1EDF40B38;
  if (!qword_1EDF40B38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D5B5E048(uint64_t a1)
{
  result = sub_1D72585BC();
  if (v3 <= 0x3F)
  {
    v4 = result;
    swift_cvw_initEnumMetadataSingleCaseWithLayoutString();
    *(*(a1 - 8) + 84) = *(*(v4 - 8) + 84);
    return 0;
  }

  return result;
}

uint64_t sub_1D5B5E110(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1D5B5E158(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1D5B5E1BC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1D5B5E220(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1D5B5E284(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

char *LocationDetectionManager.init()()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  *&v0[OBJC_IVAR____TtC8NewsFeed24LocationDetectionManager_observers] = MEMORY[0x1E69E7CC0];
  v3 = OBJC_IVAR____TtC8NewsFeed24LocationDetectionManager_locationManager;
  *&v1[v3] = [objc_allocWithZone(MEMORY[0x1E695FBE8]) init];
  v4 = OBJC_IVAR____TtC8NewsFeed24LocationDetectionManager_observableMostFrequentLocation;
  v5 = [objc_opt_self() standardUserDefaults];
  v6._object = 0x80000001D73E44A0;
  v6._countAndFlagsBits = 0xD00000000000001ELL;
  v7 = NSUserDefaults.location(forKey:)(v6);

  v8 = [objc_allocWithZone(MEMORY[0x1E69B5408]) initWithValue_];
  *&v1[v4] = v8;
  v9 = OBJC_IVAR____TtC8NewsFeed24LocationDetectionManager__mostFrequentLocation;
  aBlock[0] = 0;
  sub_1D5B5E61C(0, &qword_1EDF3B9D8, sub_1D5B5E5B4, MEMORY[0x1E69D6AF0]);
  swift_allocObject();
  *&v1[v9] = sub_1D725B94C();
  v10 = &v1[OBJC_IVAR____TtC8NewsFeed24LocationDetectionManager_onUserInteractedWithLocationAuthorizationTCC];
  *v10 = 0;
  *(v10 + 1) = 0;
  v22.receiver = v1;
  v22.super_class = ObjectType;
  v11 = objc_msgSendSuper2(&v22, sel_init);
  v12 = *&v11[OBJC_IVAR____TtC8NewsFeed24LocationDetectionManager_locationManager];
  v13 = v11;
  [v12 setDelegate_];
  v14 = OBJC_IVAR____TtC8NewsFeed24LocationDetectionManager_observableMostFrequentLocation;
  swift_beginAccess();
  v15 = *&v13[v14];
  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_1D5C41E0C;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D5C3BF64;
  aBlock[3] = &block_descriptor_72;
  v17 = _Block_copy(aBlock);
  v18 = v15;

  v19 = [v18 observe_];
  _Block_release(v17);

  swift_unknownObjectRelease();
  return v13;
}

uint64_t sub_1D5B5E57C()
{
  MEMORY[0x1DA6FD660](v0 + 16);

  return swift_deallocObject();
}

void sub_1D5B5E5B4()
{
  if (!qword_1EDF1AC50)
  {
    sub_1D5B5A498(255, &qword_1EDF1AC58);
    v0 = sub_1D726393C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF1AC50);
    }
  }
}

void sub_1D5B5E61C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_9(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_11(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_12(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_13(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_14(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_15(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_16(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_17(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_18(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_19(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}
uint64_t sub_225C9232C(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73FD10) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = (v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_225A02E94;

  return sub_225C81914(a1, v7, v8, v9, v1 + v6, v11, v12);
}

uint64_t objectdestroy_29Tm(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(a1);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 40) & ~v4;
  v6 = (*(v3 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v3 + 8))(v1 + v5, v2);

  return MEMORY[0x2821FE8E8](v1, v6 + 16, v4 | 7);
}

uint64_t sub_225C925B4(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D742808) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = (v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_225A02E94;

  return sub_225C821D0(a1, v7, v8, v9, v1 + v6, v11, v12);
}

uint64_t objectdestroy_33Tm(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(a1);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 16) & ~v4;
  v6 = *(v3 + 64);
  (*(v3 + 8))(v1 + v5, v2);

  return MEMORY[0x2821FE8E8](v1, v5 + v6, v4 | 7);
}

uint64_t sub_225C9282C(uint64_t a1)
{
  v2 = type metadata accessor for WebPresentmentRequest(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t objectdestroy_18Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_225C928D0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_225A02E94;

  return sub_225C7C304(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_225C92998(uint64_t a1, void *a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_225A02E94;

  return sub_225C8D168(a1, a2, v6);
}

uint64_t static WebPresentmentRemoteAlertEntitlementChecker.checkInternalEntitlement(connection:)(void *a1)
{
  if (!a1)
  {
    sub_225C74D50(&v8);
    if (*(&v9 + 1))
    {
      if (swift_dynamicCast())
      {
        return v6;
      }

      return 0;
    }

    goto LABEL_11;
  }

  v1 = a1;
  v2 = sub_225CCE444();
  v3 = [v1 valueForEntitlement_];

  if (v3)
  {
    sub_225CCF0A4();

    swift_unknownObjectRelease();
  }

  else
  {

    v6 = 0u;
    v7 = 0u;
  }

  v8 = v6;
  v9 = v7;
  if (!*(&v7 + 1))
  {
LABEL_11:
    sub_225B5445C(&v8);
    return 0;
  }

  if (swift_dynamicCast())
  {
    return v5;
  }

  return 0;
}

id XPCWebPresentmentRequest.__allocating_init(value:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  sub_225C8D63C(a1, v3 + OBJC_IVAR____TtC13CoreIDVShared24XPCWebPresentmentRequest_value);
  v6.receiver = v3;
  v6.super_class = v1;
  v4 = objc_msgSendSuper2(&v6, sel_init);
  sub_225C9282C(a1);
  return v4;
}

uint64_t sub_225C92D80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000019 && 0x8000000225D2A850 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_225CCF934();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_225C92E14(uint64_t a1)
{
  v2 = sub_225C94388();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_225C92E50(uint64_t a1)
{
  v2 = sub_225C94388();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_225C92E8C(uint64_t a1)
{
  v2 = sub_225C943DC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_225C92EC8(uint64_t a1)
{
  v2 = sub_225C943DC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t WebPresentmentRequest.PresentmentProtocol.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D742820);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v13 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D742828);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v13 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_225C94388();
  sub_225CCFCE4();
  sub_225C943DC();
  sub_225CCF724();
  (*(v3 + 8))(v6, v2);
  return (*(v8 + 8))(v11, v7);
}

uint64_t WebPresentmentRequest.PresentmentProtocol.hashValue.getter()
{
  sub_225CCFBD4();
  MEMORY[0x22AA6E420](0);
  return sub_225CCFC24();
}

uint64_t WebPresentmentRequest.PresentmentProtocol.init(from:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D742840);
  v27 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v4);
  v6 = &v21 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D742848);
  v22 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v8);
  v10 = &v21 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_225C94388();
  sub_225CCFCA4();
  if (v1)
  {
    goto LABEL_6;
  }

  v21 = a1;
  v11 = v27;
  v12 = v22;
  v13 = sub_225CCF6F4();
  v14 = (2 * *(v13 + 16)) | 1;
  v23 = v13;
  v24 = v13 + 32;
  v25 = 0;
  v26 = v14;
  if ((sub_225B76F4C() & 1) != 0 || v25 != v26 >> 1)
  {
    v15 = v7;
    v16 = sub_225CCF2D4();
    swift_allocError();
    v18 = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D741FA0);
    *v18 = &type metadata for WebPresentmentRequest.PresentmentProtocol;
    sub_225CCF614();
    sub_225CCF294();
    (*(*(v16 - 8) + 104))(v18, *MEMORY[0x277D84160], v16);
    swift_willThrow();
    (*(v12 + 8))(v10, v15);
    swift_unknownObjectRelease();
    a1 = v21;
LABEL_6:
    v20 = a1;
    return __swift_destroy_boxed_opaque_existential_0(v20);
  }

  sub_225C943DC();
  sub_225CCF604();
  (*(v11 + 8))(v6, v3);
  (*(v12 + 8))(v10, v7);
  swift_unknownObjectRelease();
  v20 = v21;
  return __swift_destroy_boxed_opaque_existential_0(v20);
}

uint64_t sub_225C934AC(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D742820);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v13 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D742828);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v13 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_225C94388();
  sub_225CCFCE4();
  sub_225C943DC();
  sub_225CCF724();
  (*(v3 + 8))(v6, v2);
  return (*(v8 + 8))(v11, v7);
}

uint64_t WebPresentmentRequest.requestData.getter()
{
  v1 = *v0;
  sub_2259CB710(*v0, *(v0 + 8));
  return v1;
}

uint64_t WebPresentmentRequest.originatingURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for WebPresentmentRequest(0) + 24);
  v4 = sub_225CCCEA4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t WebPresentmentRequest.init(presentmentProtocol:requestData:originatingURL:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, char *a4@<X8>)
{
  *a4 = a1;
  *(a4 + 1) = a2;
  v6 = *(type metadata accessor for WebPresentmentRequest(0) + 24);
  v7 = sub_225CCCEA4();
  v8 = *(*(v7 - 8) + 32);

  return v8(&a4[v6], a3, v7);
}

uint64_t static WebPresentmentRequest.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((sub_2259D8228(*a1, *(a1 + 8), *a2, *(a2 + 8)) & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for WebPresentmentRequest(0);

  return sub_225CCCE24();
}

unint64_t sub_225C93828()
{
  v1 = 0x4474736575716572;
  if (*v0 != 1)
  {
    v1 = 0x74616E696769726FLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000013;
  }
}

uint64_t sub_225C9389C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_225C94EB0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_225C938C4(uint64_t a1)
{
  v2 = sub_225C947AC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_225C93900(uint64_t a1)
{
  v2 = sub_225C947AC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t WebPresentmentRequest.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D742858);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v12[-v8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_225C947AC();
  sub_225CCFCE4();
  LOBYTE(v13) = 0;
  sub_225C94800();
  sub_225CCF7E4();
  if (!v2)
  {
    v10 = v3[1];
    v13 = *v3;
    v14 = v10;
    v12[15] = 1;
    sub_2259CB710(v13, v10);
    sub_2259D9454();
    sub_225CCF7E4();
    sub_2259BEF00(v13, v14);
    type metadata accessor for WebPresentmentRequest(0);
    LOBYTE(v13) = 2;
    sub_225CCCEA4();
    sub_225C94854(&qword_27D7426C0, MEMORY[0x277CC9260]);
    sub_225CCF7E4();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t WebPresentmentRequest.hash(into:)()
{
  MEMORY[0x22AA6E420](0);
  sub_225CCCFB4();
  type metadata accessor for WebPresentmentRequest(0);
  sub_225CCCEA4();
  sub_225C94854(&qword_27D741F80, MEMORY[0x277CC9260]);
  return sub_225CCE354();
}

uint64_t WebPresentmentRequest.hashValue.getter()
{
  sub_225CCFBD4();
  MEMORY[0x22AA6E420](0);
  sub_225CCCFB4();
  type metadata accessor for WebPresentmentRequest(0);
  sub_225CCCEA4();
  sub_225C94854(&qword_27D741F80, MEMORY[0x277CC9260]);
  sub_225CCE354();
  return sub_225CCFC24();
}

uint64_t WebPresentmentRequest.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v26 = sub_225CCCEA4();
  v24 = *(v26 - 8);
  MEMORY[0x28223BE20](v26, v4);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D742878);
  v27 = *(v7 - 8);
  v28 = v7;
  MEMORY[0x28223BE20](v7, v8);
  v10 = &v23 - v9;
  v11 = type metadata accessor for WebPresentmentRequest(0);
  MEMORY[0x28223BE20](v11, v12);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_225C947AC();
  sub_225CCFCA4();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v23 = v11;
  v15 = a1;
  v16 = v14;
  v17 = v27;
  v18 = v6;
  LOBYTE(v29) = 0;
  sub_225C9489C();
  v19 = v28;
  sub_225CCF6E4();
  v30 = 1;
  sub_2259D94A8();
  sub_225CCF6E4();
  *v16 = v29;
  LOBYTE(v29) = 2;
  sub_225C94854(&qword_27D7426E0, MEMORY[0x277CC9260]);
  v20 = v17;
  v21 = v26;
  sub_225CCF6E4();
  (*(v20 + 8))(v10, v19);
  (*(v24 + 32))(&v16[*(v23 + 24)], v18, v21);
  sub_225C8D63C(v16, v25);
  __swift_destroy_boxed_opaque_existential_0(v15);
  return sub_225C9282C(v16);
}

uint64_t sub_225C94050()
{
  sub_225CCFBD4();
  MEMORY[0x22AA6E420](0);
  sub_225CCCFB4();
  sub_225CCCEA4();
  sub_225C94854(&qword_27D741F80, MEMORY[0x277CC9260]);
  sub_225CCE354();
  return sub_225CCFC24();
}

uint64_t sub_225C94108()
{
  MEMORY[0x22AA6E420](0);
  sub_225CCCFB4();
  sub_225CCCEA4();
  sub_225C94854(&qword_27D741F80, MEMORY[0x277CC9260]);
  return sub_225CCE354();
}

uint64_t sub_225C941A8()
{
  sub_225CCFBD4();
  MEMORY[0x22AA6E420](0);
  sub_225CCCFB4();
  sub_225CCCEA4();
  sub_225C94854(&qword_27D741F80, MEMORY[0x277CC9260]);
  sub_225CCE354();
  return sub_225CCFC24();
}

uint64_t sub_225C9425C(uint64_t a1, uint64_t a2)
{
  if ((sub_2259D8228(*a1, *(a1 + 8), *a2, *(a2 + 8)) & 1) == 0)
  {
    return 0;
  }

  return sub_225CCCE24();
}

id XPCWebPresentmentRequest.init(value:)(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  sub_225C8D63C(a1, v1 + OBJC_IVAR____TtC13CoreIDVShared24XPCWebPresentmentRequest_value);
  v6.receiver = v1;
  v6.super_class = ObjectType;
  v4 = objc_msgSendSuper2(&v6, sel_init);
  sub_225C9282C(a1);
  return v4;
}

unint64_t sub_225C94388()
{
  result = qword_27D742830;
  if (!qword_27D742830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D742830);
  }

  return result;
}

unint64_t sub_225C943DC()
{
  result = qword_27D742838;
  if (!qword_27D742838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D742838);
  }

  return result;
}

id XPCWebPresentmentRequest.__allocating_init(coder:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  swift_getObjectType();
  v4 = sub_225C58704(a1);
  swift_deallocPartialClassInstance();
  return v4;
}

id XPCWebPresentmentRequest.init(coder:)(void *a1)
{
  swift_getObjectType();
  v2 = sub_225C58704(a1);
  swift_deallocPartialClassInstance();
  return v2;
}

id XPCWebPresentmentRequest.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id XPCWebPresentmentRequest.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_225C94738(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  sub_225C8D63C(a1, v3 + OBJC_IVAR____TtC13CoreIDVShared24XPCWebPresentmentRequest_value);
  v6.receiver = v3;
  v6.super_class = v1;
  v4 = objc_msgSendSuper2(&v6, sel_init);
  sub_225C9282C(a1);
  return v4;
}

unint64_t sub_225C947AC()
{
  result = qword_27D742860;
  if (!qword_27D742860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D742860);
  }

  return result;
}

unint64_t sub_225C94800()
{
  result = qword_27D742868;
  if (!qword_27D742868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D742868);
  }

  return result;
}

uint64_t sub_225C94854(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_225C9489C()
{
  result = qword_27D742880;
  if (!qword_27D742880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D742880);
  }

  return result;
}

unint64_t sub_225C948F4()
{
  result = qword_27D742888;
  if (!qword_27D742888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D742888);
  }

  return result;
}

uint64_t sub_225C94A48()
{
  result = sub_225CCCEA4();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_225C94B04()
{
  result = type metadata accessor for WebPresentmentRequest(319);
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

unint64_t sub_225C94BF4()
{
  result = qword_27D7428D8;
  if (!qword_27D7428D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7428D8);
  }

  return result;
}

unint64_t sub_225C94C4C()
{
  result = qword_27D7428E0;
  if (!qword_27D7428E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7428E0);
  }

  return result;
}

unint64_t sub_225C94CA4()
{
  result = qword_27D7428E8;
  if (!qword_27D7428E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7428E8);
  }

  return result;
}

unint64_t sub_225C94CFC()
{
  result = qword_27D7428F0;
  if (!qword_27D7428F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7428F0);
  }

  return result;
}

unint64_t sub_225C94D54()
{
  result = qword_27D7428F8;
  if (!qword_27D7428F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7428F8);
  }

  return result;
}

unint64_t sub_225C94DAC()
{
  result = qword_27D742900;
  if (!qword_27D742900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D742900);
  }

  return result;
}

unint64_t sub_225C94E04()
{
  result = qword_27D742908;
  if (!qword_27D742908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D742908);
  }

  return result;
}

unint64_t sub_225C94E5C()
{
  result = qword_27D742910;
  if (!qword_27D742910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D742910);
  }

  return result;
}

uint64_t sub_225C94EB0(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000013 && 0x8000000225D2A870 == a2 || (sub_225CCF934() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4474736575716572 && a2 == 0xEB00000000617461 || (sub_225CCF934() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x74616E696769726FLL && a2 == 0xEE004C5255676E69)
  {

    return 2;
  }

  else
  {
    v5 = sub_225CCF934();

    if (v5)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t WebPresentmentRequestState.hash(into:)()
{
  if ((*(v0 + 8) & 0x2000000000000000) != 0)
  {
    MEMORY[0x22AA6E420](1);

    return sub_225CCCFB4();
  }

  else
  {
    MEMORY[0x22AA6E420](0);
    return sub_225CCEF74();
  }
}

uint64_t WebPresentmentRequestState.hashValue.getter()
{
  v1 = *(v0 + 8);
  sub_225CCFBD4();
  if ((v1 & 0x2000000000000000) != 0)
  {
    MEMORY[0x22AA6E420](1);
    sub_225CCCFB4();
  }

  else
  {
    MEMORY[0x22AA6E420](0);
    sub_225CCEF74();
  }

  return sub_225CCFC24();
}

uint64_t sub_225C950E0()
{
  v1 = *(v0 + 8);
  sub_225CCFBD4();
  if ((v1 & 0x2000000000000000) != 0)
  {
    MEMORY[0x22AA6E420](1);
    sub_225CCCFB4();
  }

  else
  {
    MEMORY[0x22AA6E420](0);
    sub_225CCEF74();
  }

  return sub_225CCFC24();
}

uint64_t sub_225C9515C()
{
  if ((*(v0 + 8) & 0x2000000000000000) != 0)
  {
    MEMORY[0x22AA6E420](1);

    return sub_225CCCFB4();
  }

  else
  {
    MEMORY[0x22AA6E420](0);
    return sub_225CCEF74();
  }
}

uint64_t sub_225C951DC()
{
  v1 = *(v0 + 8);
  sub_225CCFBD4();
  if ((v1 & 0x2000000000000000) != 0)
  {
    MEMORY[0x22AA6E420](1);
    sub_225CCCFB4();
  }

  else
  {
    MEMORY[0x22AA6E420](0);
    sub_225CCEF74();
  }

  return sub_225CCFC24();
}

uint64_t _s13CoreIDVShared26WebPresentmentRequestStateO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v5 = *a2;
  v4 = *(a2 + 8);
  if ((v2 & 0x2000000000000000) != 0)
  {
    if ((v4 & 0x2000000000000000) != 0)
    {
      sub_225C954D0(*a2, *(a2 + 8));
      sub_225C954D0(v3, v2);
      sub_225C954D0(v5, v4);
      sub_225C954D0(v3, v2);
      v6 = sub_2259D8228(v3, v2 & 0xDFFFFFFFFFFFFFFFLL, v5, v4 & 0xDFFFFFFFFFFFFFFFLL);
      sub_225C954E0(v3, v2);
      sub_225C954E0(v5, v4);
      sub_225C954E0(v5, v4);
      v7 = v3;
      v8 = v2;
      goto LABEL_7;
    }

LABEL_5:
    sub_225C954D0(*a2, *(a2 + 8));
    sub_225C954D0(v3, v2);
    sub_225C954E0(v3, v2);
    sub_225C954E0(v5, v4);
    return 0;
  }

  if ((v4 & 0x2000000000000000) != 0)
  {
    goto LABEL_5;
  }

  sub_225BE069C();
  sub_225C954D0(v5, v4);
  sub_225C954D0(v3, v2);
  v6 = sub_225CCEF64();
  sub_225C954E0(v3, v2);
  v7 = v5;
  v8 = v4;
LABEL_7:
  sub_225C954E0(v7, v8);
  return v6 & 1;
}

unint64_t sub_225C9539C()
{
  result = qword_27D742920;
  if (!qword_27D742920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D742920);
  }

  return result;
}

uint64_t sub_225C953FC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 3 && *(a1 + 16))
  {
    return (*a1 + 3);
  }

  v3 = ((2 * ((*(a1 + 8) & 0x1000000000000000) != 0)) | ((*(a1 + 8) >> 60) >> 1) & 1) ^ 3;
  if (v3 >= 2)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_225C95450(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 2)
  {
    *result = a2 - 3;
    *(result + 8) = 0;
    if (a3 >= 3)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 3)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = ((2 * a2) & 2 | 1u) << 60;
    }
  }

  return result;
}

id sub_225C954D0(id a1, uint64_t a2)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    return sub_2259CB710(a1, a2 & 0xDFFFFFFFFFFFFFFFLL);
  }

  else
  {
    return a1;
  }
}

void sub_225C954E0(id a1, uint64_t a2)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    sub_2259BEF00(a1, a2 & 0xDFFFFFFFFFFFFFFFLL);
  }

  else
  {
  }
}

uint64_t WebPresentmentResponse.responseData.getter()
{
  v1 = *v0;
  sub_2259CB710(*v0, *(v0 + 8));
  return v1;
}

uint64_t WebPresentmentResponse.init(responseData:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t sub_225C95560@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x65736E6F70736572 && a2 == 0xEC00000061746144)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_225CCF934();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_225C955EC(uint64_t a1)
{
  v2 = sub_225C95D54();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_225C95628(uint64_t a1)
{
  v2 = sub_225C95D54();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t WebPresentmentResponse.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D742930);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v11 - v6;
  v8 = *v1;
  v9 = v1[1];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2259CB710(v8, v9);
  sub_225C95D54();
  sub_225CCFCE4();
  v11 = v8;
  v12 = v9;
  sub_2259D9454();
  sub_225CCF7E4();
  sub_2259BEF00(v11, v12);
  return (*(v4 + 8))(v7, v3);
}

uint64_t WebPresentmentResponse.hashValue.getter()
{
  sub_225CCFBD4();
  sub_225CCCFB4();
  return sub_225CCFC24();
}

uint64_t WebPresentmentResponse.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D742948);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_225C95D54();
  sub_225CCFCA4();
  if (!v2)
  {
    sub_2259D94A8();
    sub_225CCF6E4();
    (*(v6 + 8))(v9, v5);
    *a2 = v11;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t XPCWebPresentmentResponse.value.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtC13CoreIDVShared25XPCWebPresentmentResponse_value);
  v3 = *(v1 + OBJC_IVAR____TtC13CoreIDVShared25XPCWebPresentmentResponse_value + 8);
  *a1 = v2;
  a1[1] = v3;
  return sub_2259CB710(v2, v3);
}

id XPCWebPresentmentResponse.__allocating_init(value:)(_OWORD *a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR____TtC13CoreIDVShared25XPCWebPresentmentResponse_value] = *a1;
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, sel_init);
}

id XPCWebPresentmentResponse.init(value:)(_OWORD *a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC13CoreIDVShared25XPCWebPresentmentResponse_value] = *a1;
  v5.receiver = v1;
  v5.super_class = ObjectType;
  return objc_msgSendSuper2(&v5, sel_init);
}

id XPCWebPresentmentResponse.__allocating_init(coder:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  swift_getObjectType();
  v4 = sub_225C58A3C(a1);
  swift_deallocPartialClassInstance();
  return v4;
}

id XPCWebPresentmentResponse.init(coder:)(void *a1)
{
  swift_getObjectType();
  v2 = sub_225C58A3C(a1);
  swift_deallocPartialClassInstance();
  return v2;
}

id XPCWebPresentmentResponse.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id XPCWebPresentmentResponse.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_225C95CE8@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtC13CoreIDVShared25XPCWebPresentmentResponse_value);
  v3 = *(v1 + OBJC_IVAR____TtC13CoreIDVShared25XPCWebPresentmentResponse_value + 8);
  *a1 = v2;
  a1[1] = v3;
  return sub_2259CB710(v2, v3);
}

id sub_225C95D00(_OWORD *a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR____TtC13CoreIDVShared25XPCWebPresentmentResponse_value] = *a1;
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, sel_init);
}

unint64_t sub_225C95D54()
{
  result = qword_27D742938;
  if (!qword_27D742938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D742938);
  }

  return result;
}

unint64_t sub_225C95DAC()
{
  result = qword_27D742960;
  if (!qword_27D742960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D742960);
  }

  return result;
}

unint64_t sub_225C95E7C()
{
  result = qword_27D742970;
  if (!qword_27D742970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D742970);
  }

  return result;
}

unint64_t sub_225C95ED4()
{
  result = qword_27D742978;
  if (!qword_27D742978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D742978);
  }

  return result;
}

unint64_t sub_225C95F2C()
{
  result = qword_27D742980;
  if (!qword_27D742980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D742980);
  }

  return result;
}

void sub_225C95F80(uint64_t a1, void *a2, void *a3)
{
  __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v5 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D742818);
    sub_225CCE924();
  }

  else if (a2)
  {
    v6 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D742818);
    sub_225CCE934();
  }

  else
  {
    __break(1u);
  }
}

uint64_t WebPresentmentSession.__allocating_init()()
{
  v0 = swift_allocObject();
  WebPresentmentSession.init()();
  return v0;
}

uint64_t WebPresentmentSession.init()()
{
  swift_defaultActor_initialize();
  *(v0 + 128) = 0u;
  *(v0 + 144) = 0u;
  sub_225C74D50(&aBlock);
  if (*(&v27 + 1))
  {
    if (swift_dynamicCast() & 1) != 0 && (v32[0])
    {
      v1 = 1;
      goto LABEL_11;
    }
  }

  else
  {
    sub_2259CB640(&aBlock, &qword_27D73DD90);
  }

  sub_225C74D50(&aBlock);
  if (*(&v27 + 1))
  {
    if (swift_dynamicCast())
    {
      v1 = v32[0];
      goto LABEL_11;
    }
  }

  else
  {
    sub_2259CB640(&aBlock, &qword_27D73DD90);
  }

  v1 = 0;
LABEL_11:
  *(v0 + 120) = v1;
  v2 = objc_opt_self();
  v3 = [v2 interfaceWithProtocol_];
  v4 = [v2 interfaceWithProtocol_];
  aBlock = 0u;
  v27 = 0u;
  v5 = objc_allocWithZone(MEMORY[0x277CCAE80]);
  v6 = sub_225CCE444();
  v7 = [v5 initWithMachServiceName:v6 options:4096];

  sub_225C7B258(&aBlock, v32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D742990);
  v8 = swift_allocObject();
  [v7 setRemoteObjectInterface_];
  v9 = &off_278575000;
  [v7 setInvalidationHandler_];
  v10 = &off_278575000;
  [v7 setInterruptionHandler_];
  [v7 setExportedInterface_];
  sub_225C7B258(v32, v30);
  v11 = v31;
  if (v31)
  {
    v12 = __swift_project_boxed_opaque_existential_1(v30, v31);
    v13 = *(v11 - 8);
    MEMORY[0x28223BE20](v12, v12);
    v15 = &aBlock - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v13 + 16))(v15);
    v16 = sub_225CCF924();
    v17 = v15;
    v9 = &off_278575000;
    (*(v13 + 8))(v17, v11);
    v10 = &off_278575000;
    __swift_destroy_boxed_opaque_existential_0(v30);
  }

  else
  {
    v16 = 0;
  }

  [v7 setExportedObject_];
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D742758);
  v18 = swift_allocObject();
  *(v18 + 24) = 0;
  *(v18 + 16) = v7;
  v8[2] = v18;
  v8[3] = sub_225C965EC;
  v8[4] = 0;
  v19 = v7;
  [v19 activate];

  sub_2259CB640(v32, &qword_27D73DD90);
  sub_2259CB640(&aBlock, &qword_27D73DD90);
  *(v0 + 112) = v8;

  os_unfair_lock_lock((v18 + 24));
  v20 = *(v18 + 16);
  v28 = sub_225C96854;
  v29 = 0;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  *&v27 = sub_225A1A000;
  *(&v27 + 1) = &block_descriptor_14;
  v21 = _Block_copy(&aBlock);

  [v20 v10[455]];
  _Block_release(v21);
  os_unfair_lock_unlock((v18 + 24));

  v22 = *(*(v0 + 112) + 16);

  os_unfair_lock_lock((v22 + 24));
  v23 = *(v22 + 16);
  v28 = sub_225C96878;
  v29 = 0;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  *&v27 = sub_225A1A000;
  *(&v27 + 1) = &block_descriptor_3_1;
  v24 = _Block_copy(&aBlock);

  [v23 v9[454]];
  _Block_release(v24);
  os_unfair_lock_unlock((v22 + 24));

  return v0;
}

uint64_t sub_225C965EC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050);
  MEMORY[0x28223BE20](v0 - 8, v1);
  v3 = &v21 - v2;
  v4 = MEMORY[0x277D84F90];
  v5 = sub_225B2C248(MEMORY[0x277D84F90]);
  sub_2259CB5EC();
  v6 = swift_allocError();
  v8 = v7;
  v9 = sub_225CCE954();
  v10 = *(v9 - 8);
  (*(v10 + 56))(v3, 1, 1, v9);
  v11 = (*(v10 + 48))(v3, 1, v9);
  sub_2259CB640(v3, &unk_27D73B050);
  v12 = sub_225B2C374(v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v22 = v12;
  sub_225B2C4A0(v5, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v22);

  v14 = v22;
  v15 = sub_225B29AA0(0, 1, 1, v4);
  v17 = *(v15 + 2);
  v16 = *(v15 + 3);
  if (v17 >= v16 >> 1)
  {
    v15 = sub_225B29AA0((v16 > 1), v17 + 1, 1, v15);
  }

  *(v15 + 2) = v17 + 1;
  v18 = &v15[56 * v17];
  *(v18 + 4) = 0xD000000000000020;
  *(v18 + 5) = 0x8000000225D2A7C0;
  *(v18 + 6) = 0xD000000000000029;
  *(v18 + 7) = 0x8000000225D2A920;
  *(v18 + 8) = 0x292874696E69;
  *(v18 + 9) = 0xE600000000000000;
  *(v18 + 10) = 40;
  if (v11)
  {
    v19 = 0;
  }

  else
  {
    v19 = 23;
  }

  *v8 = v19;
  *(v8 + 8) = v15;
  *(v8 + 16) = 0xD000000000000020;
  *(v8 + 24) = 0x8000000225D2A7C0;
  *(v8 + 32) = v14;
  *(v8 + 40) = 0;
  return v6;
}

uint64_t block_copy_helper_14(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_225C96884(const char *a1)
{
  v2 = sub_225CCD954();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28105B910 != -1)
  {
    swift_once();
  }

  v7 = off_28105B918;
  v8 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
  v9 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((off_28105B918 + v9));
  (*(v3 + 16))(v6, &v7[v8], v2);
  os_unfair_lock_unlock(&v7[v9]);
  v10 = sub_225CCD934();
  v11 = sub_225CCECF4();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_2259A7000, v10, v11, a1, v12, 2u);
    MEMORY[0x22AA6F950](v12, -1, -1);
  }

  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_225C96A64(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 128);
  *(v2 + 128) = a1;
  *(v2 + 136) = a2;
  sub_2259AA0E0(a1);

  return sub_2259AA0D0(v3);
}

uint64_t sub_225C96AAC(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 144);
  *(v2 + 144) = a1;
  *(v2 + 152) = a2;

  return sub_2259AA0D0(v3);
}

uint64_t sub_225C96AF8(uint64_t a1, uint64_t a2)
{
  v3[11] = a2;
  v3[12] = v2;
  v3[10] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050);
  v3[13] = swift_task_alloc();
  v4 = *(type metadata accessor for PartialWebPresentmentRequest(0) - 8);
  v3[14] = v4;
  v3[15] = *(v4 + 64);
  v3[16] = swift_task_alloc();
  v5 = sub_225CCD954();
  v3[17] = v5;
  v3[18] = *(v5 - 8);
  v3[19] = swift_task_alloc();
  v3[20] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_225C96C60, v2, 0);
}

uint64_t sub_225C96C60()
{
  v60 = v0;
  if (qword_28105B910 != -1)
  {
    swift_once();
  }

  v1 = v0[20];
  v2 = v0[17];
  v3 = v0[18];
  v4 = off_28105B918;
  v5 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
  v6 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((off_28105B918 + v6));
  v7 = *(v3 + 16);
  v7(v1, &v4[v5], v2);
  os_unfair_lock_unlock(&v4[v6]);
  v8 = sub_225CCD934();
  v9 = sub_225CCED04();
  v10 = os_log_type_enabled(v8, v9);
  v11 = v0[18];
  v57 = v0[17];
  v58 = v0[20];
  if (v10)
  {
    v12 = swift_slowAlloc();
    v56 = v7;
    v13 = swift_slowAlloc();
    v59[0] = v13;
    *v12 = 136315138;
    *(v12 + 4) = sub_2259BE198(0xD000000000000019, 0x8000000225D2A950, v59);
    _os_log_impl(&dword_2259A7000, v8, v9, "WebPresentmentSession %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v13);
    v14 = v13;
    v7 = v56;
    MEMORY[0x22AA6F950](v14, -1, -1);
    MEMORY[0x22AA6F950](v12, -1, -1);
  }

  v15 = *(v11 + 8);
  v15(v58, v57);
  v16 = v0[12];
  if (*(v16 + 120) == 1)
  {
    v17 = *(v16 + 112);
    v0[21] = v17;
    v0[5] = type metadata accessor for WebPresentmentSession();
    v0[2] = v16;
    v18 = *(v17 + 16);

    os_unfair_lock_lock((v18 + 24));
    v19 = *(v18 + 16);
    sub_225C7B258((v0 + 2), (v0 + 6));
    v20 = v0[9];
    if (v20)
    {
      v21 = __swift_project_boxed_opaque_existential_1(v0 + 6, v0[9]);
      v22 = *(v20 - 8);
      v23 = swift_task_alloc();
      (*(v22 + 16))(v23, v21, v20);
      v24 = sub_225CCF924();
      (*(v22 + 8))(v23, v20);

      __swift_destroy_boxed_opaque_existential_0((v0 + 6));
    }

    else
    {
      v24 = 0;
    }

    v50 = v0[16];
    v51 = v0[14];
    v52 = v0[11];
    [v19 setExportedObject_];
    swift_unknownObjectRelease();
    os_unfair_lock_unlock((v18 + 24));
    sub_2259CB640((v0 + 2), &qword_27D73DD90);
    sub_225C99EA8(v52, v50, type metadata accessor for PartialWebPresentmentRequest);
    v53 = (*(v51 + 80) + 16) & ~*(v51 + 80);
    v54 = swift_allocObject();
    v0[22] = v54;
    sub_225C99BD8(v50, v54 + v53);
    v55 = swift_allocObject();
    v0[23] = v55;
    *(v55 + 16) = &unk_225D01F48;
    *(v55 + 24) = v54;

    return MEMORY[0x2822009F8](sub_225C9735C, 0, 0);
  }

  else
  {
    v25 = v0[19];
    v26 = v0[17];
    os_unfair_lock_lock(&v4[v6]);
    v7(v25, &v4[v5], v26);
    os_unfair_lock_unlock(&v4[v6]);
    v27 = sub_225CCD934();
    v28 = sub_225CCECF4();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&dword_2259A7000, v27, v28, "WebPresentmentSession calling application is not entitled to use the API", v29, 2u);
      MEMORY[0x22AA6F950](v29, -1, -1);
    }

    v30 = v0[19];
    v31 = v0[17];
    v32 = v0[13];

    v15(v30, v31);
    v33 = MEMORY[0x277D84F90];
    v34 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    swift_allocError();
    v36 = v35;
    v37 = sub_225CCE954();
    v38 = *(v37 - 8);
    (*(v38 + 56))(v32, 1, 1, v37);
    v39 = (*(v38 + 48))(v32, 1, v37);
    sub_2259CB640(v32, &unk_27D73B050);
    v40 = sub_225B2C374(v33);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v59[0] = v40;
    sub_225B2C4A0(v34, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, v59);

    v42 = v59[0];
    v43 = sub_225B29AA0(0, 1, 1, v33);
    v45 = *(v43 + 2);
    v44 = *(v43 + 3);
    if (v45 >= v44 >> 1)
    {
      v43 = sub_225B29AA0((v44 > 1), v45 + 1, 1, v43);
    }

    *(v43 + 2) = v45 + 1;
    v46 = &v43[56 * v45];
    *(v46 + 2) = xmmword_225D01F10;
    *(v46 + 6) = 0xD000000000000029;
    *(v46 + 7) = 0x8000000225D2A920;
    *(v46 + 8) = 0xD000000000000019;
    *(v46 + 9) = 0x8000000225D2A950;
    if (v39)
    {
      v47 = 3;
    }

    else
    {
      v47 = 23;
    }

    *(v46 + 10) = 66;
    *v36 = v47;
    *(v36 + 8) = v43;
    *(v36 + 16) = xmmword_225D01F10;
    *(v36 + 32) = v42;
    *(v36 + 40) = 0;
    swift_willThrow();

    v48 = v0[1];

    return v48();
  }
}

uint64_t sub_225C9735C()
{
  v1 = v0[23];
  v2 = v0[21];
  v3 = swift_task_alloc();
  v0[24] = v3;
  v3[2] = v2;
  v3[3] = &unk_225D01F58;
  v3[4] = v1;
  v4 = swift_task_alloc();
  v0[25] = v4;
  v4[2] = &unk_225D01F60;
  v4[3] = 0;
  v4[4] = v2;
  v5 = swift_task_alloc();
  v0[26] = v5;
  *v5 = v0;
  v5[1] = sub_225C97494;
  v6 = v0[10];

  return MEMORY[0x282200830](v6, &unk_225D01F68, v3, sub_225C99E9C, v4, 0, 0, &type metadata for WebPresentmentResponse);
}

uint64_t sub_225C97494()
{
  v2 = *v1;
  *(*v1 + 216) = v0;

  if (v0)
  {
    v3 = sub_225C97674;
    v4 = 0;
  }

  else
  {
    v5 = *(v2 + 96);

    v3 = sub_225C975E0;
    v4 = v5;
  }

  return MEMORY[0x2822009F8](v3, v4, 0);
}

uint64_t sub_225C975E0()
{
  sub_225C9779C(*(v0 + 96));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_225C97674()
{
  v1 = *(v0 + 96);

  return MEMORY[0x2822009F8](sub_225C976FC, v1, 0);
}

uint64_t sub_225C976FC()
{
  v1 = *(v0 + 96);

  sub_225C9779C(v1);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_225C9779C(uint64_t a1)
{
  v1 = *(a1 + 112);
  memset(v13, 0, sizeof(v13));
  v2 = *(v1 + 16);
  os_unfair_lock_lock((v2 + 24));
  v3 = *(v2 + 16);
  sub_225C7B258(v13, v11);
  v4 = v12;
  if (v12)
  {
    v5 = __swift_project_boxed_opaque_existential_1(v11, v12);
    v6 = *(v4 - 8);
    MEMORY[0x28223BE20](v5, v5);
    v8 = v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v6 + 16))(v8);
    v9 = sub_225CCF924();
    (*(v6 + 8))(v8, v4);
    __swift_destroy_boxed_opaque_existential_0(v11);
  }

  else
  {
    v9 = 0;
  }

  [v3 setExportedObject_];
  swift_unknownObjectRelease();
  os_unfair_lock_unlock((v2 + 24));
  return sub_2259CB640(v13, &qword_27D73DD90);
}

uint64_t sub_225C9791C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[22] = a2;
  v3[23] = a3;
  v3[21] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D742818);
  v3[24] = v4;
  v3[25] = *(v4 - 8);
  v3[26] = swift_task_alloc();
  type metadata accessor for PartialWebPresentmentRequest(0);
  v3[27] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_225C97A18, 0, 0);
}

uint64_t sub_225C97A18()
{
  v1 = v0;
  v2 = v0 + 2;
  v3 = v0 + 20;
  v4 = v0[26];
  v5 = v0[27];
  v8 = v0 + 24;
  v6 = v0[24];
  v7 = v8[1];
  v14 = v1[22];
  sub_225C99EA8(v1[23], v5, type metadata accessor for PartialWebPresentmentRequest);
  v9 = type metadata accessor for XPCPartialWebPresentmentRequest(0);
  v10 = objc_allocWithZone(v9);
  sub_225C99EA8(v5, v10 + OBJC_IVAR____TtC13CoreIDVShared31XPCPartialWebPresentmentRequest_value, type metadata accessor for PartialWebPresentmentRequest);
  v1[18] = v10;
  v1[19] = v9;
  v11 = objc_msgSendSuper2(v1 + 9, sel_init);
  v1[28] = v11;
  sub_225C9A524(v5, type metadata accessor for PartialWebPresentmentRequest);
  v1[2] = v1;
  v1[7] = v3;
  v1[3] = sub_225C97C64;
  swift_continuation_init();
  v1[17] = v6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v1 + 14);
  type metadata accessor for XPCWebPresentmentResponse();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AC48);
  sub_225CCE914();
  (*(v7 + 32))(boxed_opaque_existential_1, v4, v6);
  v1[10] = MEMORY[0x277D85DD0];
  v1[11] = 1107296256;
  v1[12] = sub_225C95F80;
  v1[13] = &block_descriptor_65;
  [v14 performRequest:v11 completionHandler:?];
  (*(v7 + 8))(boxed_opaque_existential_1, v6);

  return MEMORY[0x282200938](v2);
}

uint64_t sub_225C97C64()
{
  v1 = *(*v0 + 48);
  *(*v0 + 232) = v1;
  if (v1)
  {
    v2 = sub_225C97E30;
  }

  else
  {
    v2 = sub_225C97D74;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_225C97D74()
{
  v1 = v0[28];
  v3 = v0[20];
  v2 = v0[21];
  v4 = *&v3[OBJC_IVAR____TtC13CoreIDVShared25XPCWebPresentmentResponse_value];
  v5 = *&v3[OBJC_IVAR____TtC13CoreIDVShared25XPCWebPresentmentResponse_value + 8];
  sub_2259CB710(v4, v5);

  *v2 = v4;
  v2[1] = v5;

  v6 = v0[1];

  return v6();
}

uint64_t sub_225C97E30()
{
  v1 = *(v0 + 224);
  swift_willThrow();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_225C97EBC(uint64_t a1)
{
  v1[18] = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73FD10);
  v1[19] = v2;
  v1[20] = *(v2 - 8);
  v1[21] = swift_task_alloc();
  v3 = sub_225CCD954();
  v1[22] = v3;
  v1[23] = *(v3 - 8);
  v1[24] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_225C97FE4, 0, 0);
}

uint64_t sub_225C97FE4()
{
  v22 = v0;
  if (qword_28105B910 != -1)
  {
    swift_once();
  }

  v2 = v0[23];
  v1 = v0[24];
  v3 = v0[22];
  v4 = off_28105B918;
  v5 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
  v6 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((off_28105B918 + v6));
  (*(v2 + 16))(v1, &v4[v5], v3);
  os_unfair_lock_unlock(&v4[v6]);
  v7 = sub_225CCD934();
  v8 = sub_225CCED04();
  v9 = os_log_type_enabled(v7, v8);
  v11 = v0[23];
  v10 = v0[24];
  v12 = v0[22];
  if (v9)
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v21 = v14;
    *v13 = 136315138;
    *(v13 + 4) = sub_2259BE198(0xD000000000000019, 0x8000000225D2A950, &v21);
    _os_log_impl(&dword_2259A7000, v7, v8, "WebPresentmentSession %s cancelling", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v14);
    MEMORY[0x22AA6F950](v14, -1, -1);
    MEMORY[0x22AA6F950](v13, -1, -1);
  }

  (*(v11 + 8))(v10, v12);
  v16 = v0[20];
  v15 = v0[21];
  v18 = v0[18];
  v17 = v0[19];
  v0[2] = v0;
  v0[3] = sub_225C98324;
  swift_continuation_init();
  v0[17] = v17;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AC48);
  sub_225CCE914();
  (*(v16 + 32))(boxed_opaque_existential_1, v15, v17);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_225BED200;
  v0[13] = &block_descriptor_59;
  [v18 cancelRequestWithCompletionHandler_];
  (*(v16 + 8))(boxed_opaque_existential_1, v17);

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_225C98324()
{
  v1 = *(*v0 + 48);
  *(*v0 + 200) = v1;
  if (v1)
  {
    v2 = sub_225C984A4;
  }

  else
  {
    v2 = sub_225C98434;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_225C98434()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_225C984A4()
{
  swift_willThrow();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_225C98524(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050);
  v2[4] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_225C985C0, v1, 0);
}

uint64_t sub_225C985C0()
{
  v25 = v0;
  v1 = v0[3];
  v2 = *(v1 + 128);
  v0[5] = v2;
  v0[6] = *(v1 + 136);
  if (v2)
  {

    v23 = (v2 + *v2);
    v3 = swift_task_alloc();
    v0[7] = v3;
    *v3 = v0;
    v3[1] = sub_225C9890C;
    v4 = v0[2];

    return v23(v4);
  }

  else
  {
    v6 = v0[4];
    v7 = MEMORY[0x277D84F90];
    v8 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    swift_allocError();
    v10 = v9;
    v11 = sub_225CCE954();
    v12 = *(v11 - 8);
    (*(v12 + 56))(v6, 1, 1, v11);
    v13 = (*(v12 + 48))(v6, 1, v11);
    sub_2259CB640(v6, &unk_27D73B050);
    v14 = sub_225B2C374(v7);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v14;
    sub_225B2C4A0(v8, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v24);

    v16 = v24;
    v17 = sub_225B29AA0(0, 1, 1, v7);
    v19 = *(v17 + 2);
    v18 = *(v17 + 3);
    if (v19 >= v18 >> 1)
    {
      v17 = sub_225B29AA0((v18 > 1), v19 + 1, 1, v17);
    }

    *(v17 + 2) = v19 + 1;
    v20 = &v17[56 * v19];
    *(v20 + 4) = 0xD000000000000017;
    *(v20 + 5) = 0x8000000225D2A970;
    *(v20 + 6) = 0xD000000000000029;
    *(v20 + 7) = 0x8000000225D2A920;
    *(v20 + 8) = 0xD00000000000001BLL;
    *(v20 + 9) = 0x8000000225D2A990;
    *(v20 + 10) = 84;
    if (v13)
    {
      v21 = 107;
    }

    else
    {
      v21 = 23;
    }

    *v10 = v21;
    *(v10 + 8) = v17;
    *(v10 + 16) = 0xD000000000000017;
    *(v10 + 24) = 0x8000000225D2A970;
    *(v10 + 32) = v16;
    *(v10 + 40) = 0;
    swift_willThrow();

    v22 = v0[1];

    return v22();
  }
}

uint64_t sub_225C9890C()
{
  v2 = *v1;
  *(*v1 + 64) = v0;

  v3 = *(v2 + 24);
  if (v0)
  {
    v4 = sub_225C98AA8;
  }

  else
  {
    v4 = sub_225C98A38;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_225C98A38()
{
  sub_2259AA0D0(*(v0 + 40));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_225C98AA8()
{
  sub_2259AA0D0(*(v0 + 40));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_225C98CA0(void *a1, void *aBlock, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v5 = a1;

  v6 = swift_task_alloc();
  v3[5] = v6;
  *v6 = v3;
  v6[1] = sub_225C98D64;

  return sub_225C98524(v5);
}

uint64_t sub_225C98D64()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *(*v1 + 16);
  v6 = *v1;

  v7 = *(v3 + 32);
  if (v2)
  {
    v8 = sub_225CCCCB4();

    (*(v7 + 16))(v7, v8);
  }

  else
  {
    (*(v7 + 16))(*(v3 + 32), 0);
  }

  _Block_release(*(v4 + 32));
  v9 = *(v6 + 8);

  return v9();
}

uint64_t sub_225C98F04()
{
  v1[4] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050);
  v1[5] = swift_task_alloc();
  type metadata accessor for WebPresentmentRequest(0);
  v1[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_225C98FCC, v0, 0);
}

uint64_t sub_225C98FCC()
{
  v25 = v0;
  v1 = v0[4];
  v2 = *(v1 + 144);
  v0[7] = v2;
  v0[8] = *(v1 + 152);
  if (v2)
  {

    v23 = (v2 + *v2);
    v3 = swift_task_alloc();
    v0[9] = v3;
    *v3 = v0;
    v3[1] = sub_225C99320;
    v4 = v0[6];

    return v23(v4);
  }

  else
  {
    v6 = v0[5];
    v7 = MEMORY[0x277D84F90];
    v8 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    swift_allocError();
    v10 = v9;
    v11 = sub_225CCE954();
    v12 = *(v11 - 8);
    (*(v12 + 56))(v6, 1, 1, v11);
    v13 = (*(v12 + 48))(v6, 1, v11);
    sub_2259CB640(v6, &unk_27D73B050);
    v14 = sub_225B2C374(v7);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v14;
    sub_225B2C4A0(v8, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v24);

    v16 = v24;
    v17 = sub_225B29AA0(0, 1, 1, v7);
    v19 = *(v17 + 2);
    v18 = *(v17 + 3);
    if (v19 >= v18 >> 1)
    {
      v17 = sub_225B29AA0((v18 > 1), v19 + 1, 1, v17);
    }

    *(v17 + 2) = v19 + 1;
    v20 = &v17[56 * v19];
    *(v20 + 4) = 0xD000000000000022;
    *(v20 + 5) = 0x8000000225D2A9B0;
    *(v20 + 6) = 0xD000000000000029;
    *(v20 + 7) = 0x8000000225D2A920;
    *(v20 + 8) = 0xD000000000000010;
    *(v20 + 9) = 0x8000000225D2A9E0;
    *(v20 + 10) = 91;
    if (v13)
    {
      v21 = 107;
    }

    else
    {
      v21 = 23;
    }

    *v10 = v21;
    *(v10 + 8) = v17;
    *(v10 + 16) = 0xD000000000000022;
    *(v10 + 24) = 0x8000000225D2A9B0;
    *(v10 + 32) = v16;
    *(v10 + 40) = 0;
    swift_willThrow();

    v22 = v0[1];

    return v22();
  }
}

uint64_t sub_225C99320()
{
  v2 = *v1;
  *(*v1 + 80) = v0;

  v3 = *(v2 + 32);
  if (v0)
  {
    v4 = sub_225C99558;
  }

  else
  {
    v4 = sub_225C9944C;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_225C9944C()
{
  super_class = v0[3].super_class;
  receiver = v0[3].receiver;
  v3 = type metadata accessor for XPCWebPresentmentRequest(0);
  v4 = objc_allocWithZone(v3);
  sub_225C99EA8(receiver, v4 + OBJC_IVAR____TtC13CoreIDVShared24XPCWebPresentmentRequest_value, type metadata accessor for WebPresentmentRequest);
  v0[1].receiver = v4;
  v0[1].super_class = v3;
  v5 = objc_msgSendSuper2(v0 + 1, sel_init);
  sub_2259AA0D0(super_class);
  sub_225C9A524(receiver, type metadata accessor for WebPresentmentRequest);

  v6 = v0->super_class;

  return v6(v5);
}

uint64_t sub_225C99558()
{
  sub_2259AA0D0(*(v0 + 56));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_225C99744(const void *a1, uint64_t a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);

  v3 = swift_task_alloc();
  v2[4] = v3;
  *v3 = v2;
  v3[1] = sub_225C997EC;

  return sub_225C98F04();
}

uint64_t sub_225C997EC(void *a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *v2;

  v7 = *(v5 + 24);
  if (v3)
  {
    v8 = sub_225CCCCB4();

    (v7)[2](v7, 0, v8);
    _Block_release(v7);
  }

  else
  {
    (v7)[2](v7, a1, 0);
    _Block_release(v7);
  }

  v9 = *(v6 + 8);

  return v9();
}

uint64_t sub_225C99990(uint64_t *a1)
{
  v2 = *a1;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2259FE39C;

  return sub_225C97EBC(v2);
}

uint64_t WebPresentmentSession.deinit()
{

  sub_2259AA0D0(*(v0 + 128));
  sub_2259AA0D0(*(v0 + 144));
  swift_defaultActor_destroy();
  return v0;
}

uint64_t WebPresentmentSession.__deallocating_deinit()
{

  sub_2259AA0D0(*(v0 + 128));
  sub_2259AA0D0(*(v0 + 144));
  swift_defaultActor_destroy();

  return swift_defaultActor_deallocate();
}

uint64_t sub_225C99AB0(uint64_t a1, uint64_t *a2, int *a3)
{
  v5 = *a2;
  v8 = (a3 + *a3);
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_225A02E94;

  return v8(a1, v5);
}

uint64_t sub_225C99BD8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PartialWebPresentmentRequest(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_225C99C3C(uint64_t a1, uint64_t a2)
{
  v6 = *(type metadata accessor for PartialWebPresentmentRequest(0) - 8);
  v7 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_225A02E94;

  return sub_225C9791C(a1, a2, v2 + v7);
}

uint64_t sub_225C99D20(uint64_t a1, uint64_t *a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_225A02E94;

  return sub_225C99AB0(a1, a2, v6);
}

uint64_t sub_225C99DE8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2259FE39C;

  return sub_225C7B7B4(a1, v4, v5, v6);
}

uint64_t sub_225C99EA8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t dispatch thunk of WebPresentmentSession.performPartialRequest(_:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 192) + **(*v2 + 192));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_225A02E94;

  return v8(a1, a2);
}

uint64_t dispatch thunk of WebPresentmentSession.connectToViewService(with:)(uint64_t a1)
{
  v6 = (*(*v1 + 200) + **(*v1 + 200));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_225A02E94;

  return v6(a1);
}

uint64_t dispatch thunk of WebPresentmentSession.releaseRequest()()
{
  v4 = (*(*v0 + 208) + **(*v0 + 208));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_225A206E8;

  return v4();
}

uint64_t sub_225C9A2E0()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_2259FE39C;

  return sub_225C99744(v2, v3);
}

uint64_t sub_225C9A38C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_225A02E94;

  return sub_225CBCB88(a1, v4, v5, v6);
}

uint64_t sub_225C9A458()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_225A02E94;

  return sub_225C98CA0(v2, v3, v4);
}

uint64_t sub_225C9A524(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

id BiometricQueryClient.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id BiometricQueryClient.init()()
{
  v1 = v0;
  v2 = sub_225CCD954();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28105B910 != -1)
  {
    swift_once();
  }

  v7 = off_28105B918;
  v8 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
  v9 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((off_28105B918 + v9));
  (*(v3 + 16))(v6, &v7[v8], v2);
  os_unfair_lock_unlock(&v7[v9]);
  v10 = sub_225CCD934();
  v11 = sub_225CCED04();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_2259A7000, v10, v11, "BiometricQuery init", v12, 2u);
    MEMORY[0x22AA6F950](v12, -1, -1);
  }

  (*(v3 + 8))(v6, v2);
  v13 = _s13CoreIDVShared27IdentityManagementInterfaceC9interfaceSo14NSXPCInterfaceCyFZ_0();
  memset(v37, 0, sizeof(v37));
  v14 = objc_allocWithZone(MEMORY[0x277CCAE80]);
  v15 = sub_225CCE444();
  v16 = [v14 initWithMachServiceName:v15 options:4096];

  sub_225C7B258(v37, v36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D742998);
  v17 = swift_allocObject();
  [v16 setRemoteObjectInterface_];
  v34 = sub_225C9AB28;
  v35 = 0;
  aBlock = MEMORY[0x277D85DD0];
  v31 = 1107296256;
  v32 = sub_225A1A000;
  v33 = &block_descriptor_15;
  v18 = _Block_copy(&aBlock);

  [v16 setInvalidationHandler_];
  _Block_release(v18);
  v34 = sub_225C9AB34;
  v35 = 0;
  aBlock = MEMORY[0x277D85DD0];
  v31 = 1107296256;
  v32 = sub_225A1A000;
  v33 = &block_descriptor_3_2;
  v19 = _Block_copy(&aBlock);

  [v16 setInterruptionHandler_];
  _Block_release(v19);
  [v16 setExportedInterface_];
  sub_225C7B258(v36, &aBlock);
  v20 = v33;
  if (v33)
  {
    v21 = __swift_project_boxed_opaque_existential_1(&aBlock, v33);
    v22 = *(v20 - 1);
    MEMORY[0x28223BE20](v21, v21);
    v24 = &v29 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v22 + 16))(v24);
    v25 = sub_225CCF924();
    (*(v22 + 8))(v24, v20);
    __swift_destroy_boxed_opaque_existential_0(&aBlock);
  }

  else
  {
    v25 = 0;
  }

  [v16 setExportedObject_];
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D742758);
  v26 = swift_allocObject();
  *(v26 + 24) = 0;
  *(v26 + 16) = v16;
  v17[2] = v26;
  v17[3] = sub_225C9AD20;
  v17[4] = 0;
  [v16 activate];

  sub_2259CB640(v36, &qword_27D73DD90);
  sub_2259CB640(v37, &qword_27D73DD90);
  *&v1[OBJC_IVAR____TtC13CoreIDVShared20BiometricQueryClient_connection] = v17;
  Client = type metadata accessor for BiometricQueryClient();
  v29.receiver = v1;
  v29.super_class = Client;
  return objc_msgSendSuper2(&v29, sel_init);
}

uint64_t sub_225C9AB40(const char *a1)
{
  v2 = sub_225CCD954();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28105B910 != -1)
  {
    swift_once();
  }

  v7 = off_28105B918;
  v8 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
  v9 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((off_28105B918 + v9));
  (*(v3 + 16))(v6, &v7[v8], v2);
  os_unfair_lock_unlock(&v7[v9]);
  v10 = sub_225CCD934();
  v11 = sub_225CCECF4();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_2259A7000, v10, v11, a1, v12, 2u);
    MEMORY[0x22AA6F950](v12, -1, -1);
  }

  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_225C9AD20()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050);
  MEMORY[0x28223BE20](v0 - 8, v1);
  v3 = &v21 - v2;
  v4 = MEMORY[0x277D84F90];
  v5 = sub_225B2C248(MEMORY[0x277D84F90]);
  sub_2259CB5EC();
  v6 = swift_allocError();
  v8 = v7;
  v9 = sub_225CCE954();
  v10 = *(v9 - 8);
  (*(v10 + 56))(v3, 1, 1, v9);
  v11 = (*(v10 + 48))(v3, 1, v9);
  sub_2259CB640(v3, &unk_27D73B050);
  v12 = sub_225B2C374(v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v22 = v12;
  sub_225B2C4A0(v5, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v22);

  v14 = v22;
  v15 = sub_225B29AA0(0, 1, 1, v4);
  v17 = *(v15 + 2);
  v16 = *(v15 + 3);
  if (v17 >= v16 >> 1)
  {
    v15 = sub_225B29AA0((v16 > 1), v17 + 1, 1, v15);
  }

  *(v15 + 2) = v17 + 1;
  v18 = &v15[56 * v17];
  *(v18 + 4) = 0xD000000000000013;
  *(v18 + 5) = 0x8000000225D2AB10;
  *(v18 + 6) = 0xD000000000000028;
  *(v18 + 7) = 0x8000000225D2AB30;
  *(v18 + 8) = 0x292874696E69;
  *(v18 + 9) = 0xE600000000000000;
  *(v18 + 10) = 37;
  if (v11)
  {
    v19 = 528;
  }

  else
  {
    v19 = 23;
  }

  *v8 = v19;
  *(v8 + 8) = v15;
  *(v8 + 16) = 0xD000000000000013;
  *(v8 + 24) = 0x8000000225D2AB10;
  *(v8 + 32) = v14;
  *(v8 + 40) = 0;
  return v6;
}

uint64_t sub_225C9AFAC()
{
  v1[5] = v0;
  v2 = sub_225CCD954();
  v1[6] = v2;
  v1[7] = *(v2 - 8);
  v1[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_225C9B06C, 0, 0);
}

uint64_t sub_225C9B06C()
{
  v22 = v0;
  if (qword_28105B910 != -1)
  {
    swift_once();
  }

  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[6];
  v4 = off_28105B918;
  v5 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
  v6 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((off_28105B918 + v6));
  (*(v2 + 16))(v1, &v4[v5], v3);
  os_unfair_lock_unlock(&v4[v6]);
  v7 = sub_225CCD934();
  v8 = sub_225CCED04();
  v9 = os_log_type_enabled(v7, v8);
  v11 = v0[7];
  v10 = v0[8];
  v12 = v0[6];
  if (v9)
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v21 = v14;
    *v13 = 136315138;
    *(v13 + 4) = sub_2259BE198(0xD000000000000013, 0x8000000225D2AA90, &v21);
    _os_log_impl(&dword_2259A7000, v7, v8, "BiometricQuery %s start", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v14);
    MEMORY[0x22AA6F950](v14, -1, -1);
    MEMORY[0x22AA6F950](v13, -1, -1);
  }

  (*(v11 + 8))(v10, v12);
  v15 = *(v0[5] + OBJC_IVAR____TtC13CoreIDVShared20BiometricQueryClient_connection);
  v16 = swift_task_alloc();
  v0[9] = v16;
  v16[2] = v15;
  v16[3] = &unk_225D02078;
  v16[4] = 0;
  v17 = swift_task_alloc();
  v0[10] = v17;
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = v15;
  v18 = swift_task_alloc();
  v0[11] = v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7427F0);
  *v18 = v0;
  v18[1] = sub_225C9B350;

  return MEMORY[0x282200830](v0 + 2, &unk_225D02088, v16, sub_225C9C1AC, v17, 0, 0, v19);
}

uint64_t sub_225C9B350()
{
  v2 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v3 = sub_225C9B4F8;
  }

  else
  {

    *(v2 + 104) = *(v2 + 16);
    *(v2 + 112) = *(v2 + 24);
    v3 = sub_225C9B484;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_225C9B484()
{
  sub_225C9B574();

  v1 = v0[1];
  v2 = v0[14];
  v3 = v0[15];
  v4 = v0[13];

  return v1(v4, v2, v3);
}

uint64_t sub_225C9B4F8()
{

  sub_225C9B574();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_225C9B574()
{
  v0 = sub_225CCD954();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28105B910 != -1)
  {
    swift_once();
  }

  v5 = off_28105B918;
  v6 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
  v7 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((off_28105B918 + v7));
  (*(v1 + 16))(v4, &v5[v6], v0);
  os_unfair_lock_unlock(&v5[v7]);
  v8 = sub_225CCD934();
  v9 = sub_225CCED04();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v14 = v11;
    *v10 = 136315138;
    *(v10 + 4) = sub_2259BE198(0xD000000000000013, 0x8000000225D2AA90, &v14);
    _os_log_impl(&dword_2259A7000, v8, v9, "BiometricQuery %s end", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x22AA6F950](v11, -1, -1);
    MEMORY[0x22AA6F950](v10, -1, -1);
  }

  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_225C9B7B0(uint64_t a1, uint64_t *a2)
{
  v2[21] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7427F8);
  v2[22] = v4;
  v2[23] = *(v4 - 8);
  v5 = swift_task_alloc();
  v6 = *a2;
  v2[24] = v5;
  v2[25] = v6;

  return MEMORY[0x2822009F8](sub_225C9B884, 0, 0);
}

uint64_t sub_225C9B884()
{
  v1 = v0;
  v2 = v0;
  v3 = v0 + 2;
  v4 = v0 + 10;
  v5 = v0 + 18;
  v6 = v0[24];
  v12 = v0[25];
  v9 = v0 + 22;
  v7 = v0[22];
  v8 = v9[1];
  v1[2] = v2;
  v1[7] = v5;
  v1[3] = sub_225C9BA4C;
  swift_continuation_init();
  v1[17] = v7;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v1 + 14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7427F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AC48);
  sub_225CCE914();
  (*(v8 + 32))(boxed_opaque_existential_1, v6, v7);
  v1[10] = MEMORY[0x277D85DD0];
  v1[11] = 1107296256;
  v1[12] = sub_225C9C540;
  v1[13] = &block_descriptor_17;
  [v12 globalAuthACLInfoWithCompletionHandler_];
  (*(v8 + 8))(boxed_opaque_existential_1, v7);

  return MEMORY[0x282200938](v3);
}

uint64_t sub_225C9BA4C()
{
  v1 = *(*v0 + 48);
  *(*v0 + 208) = v1;
  if (v1)
  {
    v2 = sub_225C9BBD4;
  }

  else
  {
    v2 = sub_225C9BB5C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_225C9BB5C()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 152);
  *v1 = *(v0 + 144);
  *(v1 + 8) = v2;

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_225C9BBD4()
{
  swift_willThrow();

  v1 = *(v0 + 8);

  return v1();
}

id BiometricQueryClient.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BiometricQueryClient();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_225C9BC90()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_225C9BD20;

  return sub_225C9AFAC();
}

uint64_t sub_225C9BD20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v13 = *v4;

  v11 = *(v13 + 8);
  if (!v3)
  {
    v8 = a1;
    v9 = a2;
    v10 = a3;
  }

  return v11(v8, v9, v10);
}

uint64_t sub_225C9BE38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_225C9BE5C, 0, 0);
}

uint64_t sub_225C9BE5C()
{
  v1 = *(v0[3] + 16);
  os_unfair_lock_lock((v1 + 24));
  v2 = *(v1 + 16);
  v0[6] = v2;
  v2;
  os_unfair_lock_unlock((v1 + 24));
  v3 = swift_task_alloc();
  v0[7] = v3;
  *v3 = v0;
  v3[1] = sub_225C9BF30;
  v5 = v0[4];
  v4 = v0[5];

  return sub_225C75968(v5, v4);
}

uint64_t sub_225C9BF30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v4;
  v9 = *v4;
  *(*v4 + 64) = v3;

  if (v3)
  {

    return MEMORY[0x2822009F8](sub_225C7B750, 0, 0);
  }

  else
  {
    v10 = *(v8 + 16);

    *v10 = a1;
    v10[1] = a2;
    v10[2] = a3;
    v11 = *(v9 + 8);

    return v11();
  }
}

uint64_t block_copy_helper_15(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

{
  return sub_2259CB810(a2 + 32, a1 + 32);
}

uint64_t sub_225C9C0E4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2259FE39C;

  return sub_225C9BE38(a1, v4, v5, v6);
}

uint64_t dispatch thunk of BiometricQueryProtocol.globalAuthACLInfo()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 8) + **(a2 + 8));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_225C9C538;

  return v7(a1, a2);
}

uint64_t dispatch thunk of BiometricQueryClient.globalAuthACLInfo()()
{
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0x58);
  v5 = (v2 + *v2);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_225C9C408;

  return v5();
}

uint64_t sub_225C9C408(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = *v3;

  v7 = *(v9 + 8);

  return v7(a1, a2, a3);
}

uint64_t block_destroy_helper_16(uint64_t a1)
{
  return __swift_destroy_boxed_opaque_existential_0(a1 + 32);
}

{
  return __swift_destroy_boxed_opaque_existential_0(a1 + 32);
}

void sub_225C9C540(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a5)
  {
    v6 = a5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7427F8);
    sub_225CCE924();
  }

  else
  {
    sub_225CCD124();
    sub_225CCE814();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7427F8);
    sub_225CCE934();
  }
}

id IdentityManagementUIClient.__allocating_init(exportedObject:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = sub_225CB1A1C(a1);
  swift_unknownObjectRelease();
  return v4;
}

id IdentityManagementUIClient.init(exportedObject:)(uint64_t a1)
{
  v1 = sub_225CB1A1C(a1);
  swift_unknownObjectRelease();
  return v1;
}

uint64_t sub_225C9C684()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050);
  MEMORY[0x28223BE20](v0 - 8, v1);
  v3 = &v21 - v2;
  v4 = MEMORY[0x277D84F90];
  v5 = sub_225B2C248(MEMORY[0x277D84F90]);
  sub_2259CB5EC();
  v6 = swift_allocError();
  v8 = v7;
  v9 = sub_225CCE954();
  v10 = *(v9 - 8);
  (*(v10 + 56))(v3, 1, 1, v9);
  v11 = (*(v10 + 48))(v3, 1, v9);
  sub_2259CB640(v3, &unk_27D73B050);
  v12 = sub_225B2C374(v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v22 = v12;
  sub_225B2C4A0(v5, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v22);

  v14 = v22;
  v15 = sub_225B29AA0(0, 1, 1, v4);
  v17 = *(v15 + 2);
  v16 = *(v15 + 3);
  if (v17 >= v16 >> 1)
  {
    v15 = sub_225B29AA0((v16 > 1), v17 + 1, 1, v15);
  }

  *(v15 + 2) = v17 + 1;
  v18 = &v15[56 * v17];
  *(v18 + 4) = 0xD000000000000013;
  *(v18 + 5) = 0x8000000225D2AB10;
  *(v18 + 6) = 0xD00000000000002CLL;
  *(v18 + 7) = 0x8000000225D2AF60;
  *(v18 + 8) = 0xD000000000000015;
  *(v18 + 9) = 0x8000000225D2AF90;
  *(v18 + 10) = 45;
  if (v11)
  {
    v19 = 528;
  }

  else
  {
    v19 = 23;
  }

  *v8 = v19;
  *(v8 + 8) = v15;
  *(v8 + 16) = 0xD000000000000013;
  *(v8 + 24) = 0x8000000225D2AB10;
  *(v8 + 32) = v14;
  *(v8 + 40) = 0;
  return v6;
}

id IdentityManagementUIClient.__deallocating_deinit()
{
  v1 = v0;
  v2 = sub_225CCD954();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28105B910 != -1)
  {
    swift_once();
  }

  v7 = off_28105B918;
  v8 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
  v9 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((off_28105B918 + v9));
  (*(v3 + 16))(v6, &v7[v8], v2);
  os_unfair_lock_unlock(&v7[v9]);
  v10 = sub_225CCD934();
  v11 = sub_225CCED04();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_2259A7000, v10, v11, "IdentityManagementUIClient deinit", v12, 2u);
    MEMORY[0x22AA6F950](v12, -1, -1);
  }

  (*(v3 + 8))(v6, v2);
  sub_225CAEDAC();
  v13 = type metadata accessor for IdentityManagementUIClient();
  v15.receiver = v1;
  v15.super_class = v13;
  return objc_msgSendSuper2(&v15, sel_dealloc);
}

uint64_t sub_225C9CB30(uint64_t a1, char a2)
{
  *(v3 + 72) = a2;
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  return MEMORY[0x2822009F8](sub_225C9CB54, 0, 0);
}

uint64_t sub_225C9CB54()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 16);
  v3 = *(*(v0 + 24) + OBJC_IVAR____TtC13CoreIDVShared26IdentityManagementUIClient_connection);
  v4 = swift_allocObject();
  *(v0 + 32) = v4;
  *(v4 + 16) = v2;
  *(v4 + 24) = v1;
  v5 = swift_task_alloc();
  *(v0 + 40) = v5;
  v5[2] = v3;
  v5[3] = &unk_225D02120;
  v5[4] = v4;
  v6 = swift_task_alloc();
  *(v0 + 48) = v6;
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = v3;
  v7 = swift_task_alloc();
  *(v0 + 56) = v7;
  *v7 = v0;
  v7[1] = sub_225C9CCA8;
  v8 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x282200830](v7, &unk_225D02128, v5, sub_225CB2094, v6, 0, 0, v8);
}

uint64_t sub_225C9CCA8()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_225C9CDE0;
  }

  else
  {

    v2 = sub_225A02EA0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_225C9CDE0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_225C9CE58(uint64_t a1, uint64_t *a2, uint64_t a3, char a4)
{
  *(v4 + 192) = a4;
  *(v4 + 144) = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73FD10);
  *(v4 + 152) = v6;
  *(v4 + 160) = *(v6 - 8);
  v7 = swift_task_alloc();
  v8 = *a2;
  *(v4 + 168) = v7;
  *(v4 + 176) = v8;

  return MEMORY[0x2822009F8](sub_225C9CF30, 0, 0);
}

uint64_t sub_225C9CF30()
{
  v1 = v0;
  v2 = v0;
  v3 = v0 + 16;
  v4 = v0 + 80;
  v5 = *(v0 + 168);
  v13 = *(v0 + 176);
  v12 = *(v0 + 192);
  v8 = v0 + 152;
  v6 = *(v0 + 152);
  v7 = *(v8 + 8);
  v9 = v1[18];
  v1[2] = v2;
  v1[3] = sub_225C9D0F4;
  swift_continuation_init();
  v1[17] = v6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v1 + 14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AC48);
  sub_225CCE914();
  (*(v7 + 32))(boxed_opaque_existential_1, v5, v6);
  v1[10] = MEMORY[0x277D85DD0];
  v1[11] = 1107296256;
  v1[12] = sub_225BED200;
  v1[13] = &block_descriptor_862;
  [v13 triggerAssetsUploadWithProofingOptions:v9 canUploadOnExpensiveNetwork:v12 completionHandler:v4];
  (*(v7 + 8))(boxed_opaque_existential_1, v6);

  return MEMORY[0x282200938](v3);
}

uint64_t sub_225C9D0F4()
{
  v1 = *(*v0 + 48);
  *(*v0 + 184) = v1;
  if (v1)
  {
    v2 = sub_225C9D268;
  }

  else
  {
    v2 = sub_225C9D204;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_225C9D204()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_225C9D268()
{
  swift_willThrow();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_225C9D46C(uint64_t a1, char a2, void *aBlock, void *a4)
{
  v4[2] = a4;
  v4[3] = _Block_copy(aBlock);
  a4;
  v8 = swift_task_alloc();
  v4[4] = v8;
  *v8 = v4;
  v8[1] = sub_225CB8018;

  return sub_225C9CB30(a1, a2);
}

uint64_t sub_225C9D530(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  return MEMORY[0x2822009F8](sub_225C9D554, 0, 0);
}

uint64_t sub_225C9D554()
{
  v1 = v0[4];
  v2 = v0[3];
  v3 = *(v0[5] + OBJC_IVAR____TtC13CoreIDVShared26IdentityManagementUIClient_connection);
  v4 = swift_allocObject();
  v0[6] = v4;
  *(v4 + 16) = v2;
  *(v4 + 24) = v1;
  v5 = v2;
  v6 = swift_task_alloc();
  v0[7] = v6;
  v6[2] = v3;
  v6[3] = &unk_225D02140;
  v6[4] = v4;
  v7 = swift_task_alloc();
  v0[8] = v7;
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = v3;
  v8 = swift_task_alloc();
  v0[9] = v8;
  v9 = type metadata accessor for IdentityProofingDisplayInfo();
  *v8 = v0;
  v8[1] = sub_225C9D6B0;

  return MEMORY[0x282200830](v0 + 2, &unk_225D02150, v6, sub_225CB221C, v7, 0, 0, v9);
}

uint64_t sub_225C9D6B0()
{
  v2 = *v1;
  v2[10] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_225C9D814, 0, 0);
  }

  else
  {

    v3 = v2[2];
    v4 = v2[1];

    return v4(v3);
  }
}

uint64_t sub_225C9D814()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_225C9D88C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v4[20] = a3;
  v4[21] = a4;
  v4[19] = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7427E8);
  v4[22] = v6;
  v4[23] = *(v6 - 8);
  v7 = swift_task_alloc();
  v8 = *a2;
  v4[24] = v7;
  v4[25] = v8;

  return MEMORY[0x2822009F8](sub_225C9D964, 0, 0);
}

uint64_t sub_225C9D964()
{
  v1 = v0;
  v2 = v0;
  v3 = v0 + 2;
  v4 = v0 + 10;
  v5 = v0 + 18;
  v7 = v0[24];
  v6 = v0[25];
  v10 = v0 + 22;
  v8 = v0[22];
  v9 = v10[1];
  v14 = v1[21];
  v15 = v6;
  v13 = v1[20];
  v1[2] = v2;
  v1[7] = v5;
  v1[3] = sub_225C9DB2C;
  swift_continuation_init();
  v1[17] = v8;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v1 + 14);
  type metadata accessor for IdentityProofingDisplayInfo();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AC48);
  sub_225CCE914();
  (*(v9 + 32))(boxed_opaque_existential_1, v7, v8);
  v1[10] = MEMORY[0x277D85DD0];
  v1[11] = 1107296256;
  v1[12] = sub_225C9DCA8;
  v1[13] = &block_descriptor_858;
  [v15 prepareForProofingDisplayWithConfiguration:v13 proofingOptions:v14 completionHandler:v4];
  (*(v9 + 8))(boxed_opaque_existential_1, v8);

  return MEMORY[0x282200938](v3);
}

uint64_t sub_225C9DB2C()
{
  v1 = *(*v0 + 48);
  *(*v0 + 208) = v1;
  if (v1)
  {
    v2 = sub_225C9BBD4;
  }

  else
  {
    v2 = sub_225C9DC3C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_225C9DC3C()
{
  **(v0 + 152) = *(v0 + 144);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_225C9DE48(void *a1, uint64_t a2, void *aBlock, void *a4)
{
  v4[2] = a1;
  v4[3] = a4;
  v4[4] = _Block_copy(aBlock);
  v8 = a1;
  a4;
  v9 = swift_task_alloc();
  v4[5] = v9;
  *v9 = v4;
  v9[1] = sub_225CB7FEC;

  return sub_225C9D530(v8, a2);
}

uint64_t sub_225C9DF14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x2822009F8](sub_225C9DF3C, 0, 0);
}

uint64_t sub_225C9DF3C()
{
  v1 = v0[5];
  v3 = v0[3];
  v2 = v0[4];
  v4 = v0[2];
  v5 = *(v0[6] + OBJC_IVAR____TtC13CoreIDVShared26IdentityManagementUIClient_connection);
  v6 = swift_allocObject();
  v0[7] = v6;
  v6[2] = v4;
  v6[3] = v3;
  v6[4] = v2;
  v6[5] = v1;

  v7 = v4;
  v8 = v3;
  v9 = swift_task_alloc();
  v0[8] = v9;
  v9[2] = v5;
  v9[3] = &unk_225D02168;
  v9[4] = v6;
  v10 = swift_task_alloc();
  v0[9] = v10;
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = v5;
  v11 = swift_task_alloc();
  v0[10] = v11;
  *v11 = v0;
  v11[1] = sub_225C9E0AC;
  v12 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x282200830](v11, &unk_225D02170, v9, sub_225CB8034, v10, 0, 0, v12);
}

uint64_t sub_225C9E0AC()
{
  *(*v1 + 88) = v0;

  if (v0)
  {
    v2 = sub_225C9E1E4;
  }

  else
  {

    v2 = sub_2259FDE14;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_225C9E1E4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_225C9E25C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[20] = a5;
  v6[21] = a6;
  v6[18] = a3;
  v6[19] = a4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73FD10);
  v6[22] = v8;
  v6[23] = *(v8 - 8);
  v9 = swift_task_alloc();
  v10 = *a2;
  v6[24] = v9;
  v6[25] = v10;

  return MEMORY[0x2822009F8](sub_225C9E334, 0, 0);
}

uint64_t sub_225C9E334()
{
  if (v0[21])
  {
    v1 = sub_225CCE444();
  }

  else
  {
    v1 = 0;
  }

  v0[26] = v1;
  v2 = v0[24];
  v3 = v0[22];
  v4 = v0[23];
  v8 = v0[19];
  v9 = v0[25];
  v7 = v0[18];
  v0[2] = v0;
  v0[3] = sub_225C9E510;
  swift_continuation_init();
  v0[17] = v3;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AC48);
  sub_225CCE914();
  (*(v4 + 32))(boxed_opaque_existential_1, v2, v3);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_225BED200;
  v0[13] = &block_descriptor_852;
  [v9 prepareForProofingIdentityWithConfiguration:v7 documents:v8 proofingSessionID:v1 completionHandler:v0 + 10];
  (*(v4 + 8))(boxed_opaque_existential_1, v3);

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_225C9E510()
{
  v1 = *(*v0 + 48);
  *(*v0 + 216) = v1;
  if (v1)
  {
    v2 = sub_225C9E690;
  }

  else
  {
    v2 = sub_225C9E620;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_225C9E620()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_225C9E690()
{
  v1 = *(v0 + 208);
  swift_willThrow();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_225C9E8B0(void *a1, void *a2, uint64_t a3, void *aBlock, void *a5)
{
  v5[3] = a2;
  v5[4] = a5;
  v5[2] = a1;
  v5[5] = _Block_copy(aBlock);
  if (a3)
  {
    a3 = sub_225CCE474();
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  v5[6] = v11;
  v12 = a1;
  v13 = a2;
  a5;
  v14 = swift_task_alloc();
  v5[7] = v14;
  *v14 = v5;
  v14[1] = sub_225C9E9C0;

  return sub_225C9DF14(v12, v13, a3, v11);
}

uint64_t sub_225C9E9C0()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *(*v1 + 32);
  v6 = *(*v1 + 24);
  v7 = *(*v1 + 16);
  v8 = *v1;

  v9 = *(v3 + 40);
  if (v2)
  {
    v10 = sub_225CCCCB4();

    (*(v9 + 16))(v9, v10);
  }

  else
  {
    (*(v9 + 16))(*(v3 + 40), 0);
  }

  _Block_release(*(v4 + 40));
  v11 = *(v8 + 8);

  return v11();
}

uint64_t sub_225C9EB98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x2822009F8](sub_225C9EBC0, 0, 0);
}

uint64_t sub_225C9EBC0()
{
  v1 = v0[5];
  v3 = v0[3];
  v2 = v0[4];
  v4 = v0[2];
  v5 = *(v0[6] + OBJC_IVAR____TtC13CoreIDVShared26IdentityManagementUIClient_connection);
  v6 = swift_allocObject();
  v0[7] = v6;
  v6[2] = v4;
  v6[3] = v3;
  v6[4] = v2;
  v6[5] = v1;
  v7 = v4;

  v8 = swift_task_alloc();
  v0[8] = v8;
  v8[2] = v5;
  v8[3] = &unk_225D02188;
  v8[4] = v6;
  v9 = swift_task_alloc();
  v0[9] = v9;
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = v5;
  v10 = swift_task_alloc();
  v0[10] = v10;
  *v10 = v0;
  v10[1] = sub_225C9ED2C;
  v11 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x282200830](v10, &unk_225D02190, v8, sub_225CB8034, v9, 0, 0, v11);
}

uint64_t sub_225C9ED2C()
{
  *(*v1 + 88) = v0;

  if (v0)
  {
    v2 = sub_225CB7FE0;
  }

  else
  {

    v2 = sub_225A02EA0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_225C9EE64(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[20] = a5;
  v6[21] = a6;
  v6[18] = a3;
  v6[19] = a4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73FD10);
  v6[22] = v8;
  v6[23] = *(v8 - 8);
  v9 = swift_task_alloc();
  v10 = *a2;
  v6[24] = v9;
  v6[25] = v10;

  return MEMORY[0x2822009F8](sub_225C9EF3C, 0, 0);
}

uint64_t sub_225C9EF3C()
{
  v1 = v0;
  v2 = v0 + 2;
  v3 = v0 + 10;
  v5 = v0[24];
  v4 = v0[25];
  v8 = v0 + 22;
  v6 = v0[22];
  v7 = v8[1];
  v13 = v1[21];
  v14 = v4;
  v12 = v1[18];
  v9 = sub_225CCE444();
  v1[26] = v9;
  v1[2] = v1;
  v1[3] = sub_225C9F10C;
  swift_continuation_init();
  v1[17] = v6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v1 + 14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AC48);
  sub_225CCE914();
  (*(v7 + 32))(boxed_opaque_existential_1, v5, v6);
  v1[10] = MEMORY[0x277D85DD0];
  v1[11] = 1107296256;
  v1[12] = sub_225BED200;
  v1[13] = &block_descriptor_848;
  [v14 provisionIdentityWithConfiguration:v12 sessionLookupIdentifier:v9 proofingOptions:v13 completionHandler:v3];
  (*(v7 + 8))(boxed_opaque_existential_1, v6);

  return MEMORY[0x282200938](v2);
}

uint64_t sub_225C9F10C()
{
  v1 = *(*v0 + 48);
  *(*v0 + 216) = v1;
  if (v1)
  {
    v2 = sub_225CB801C;
  }

  else
  {
    v2 = sub_225CB7F40;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_225C9F3BC(void *a1, int a2, uint64_t a3, void *aBlock, void *a5)
{
  v5[2] = a1;
  v5[3] = a5;
  v5[4] = _Block_copy(aBlock);
  v9 = sub_225CCE474();
  v11 = v10;
  v5[5] = v10;
  v12 = a1;
  a5;
  v13 = swift_task_alloc();
  v5[6] = v13;
  *v13 = v5;
  v13[1] = sub_225C9F4B0;

  return sub_225C9EB98(v12, v9, v11, a3);
}

uint64_t sub_225C9F4B0()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *(*v1 + 24);
  v6 = *(*v1 + 16);
  v7 = *v1;

  v8 = *(v3 + 32);
  if (v2)
  {
    v9 = sub_225CCCCB4();

    (*(v8 + 16))(v8, v9);
  }

  else
  {
    (*(v8 + 16))(*(v3 + 32), 0);
  }

  _Block_release(*(v4 + 32));
  v10 = *(v7 + 8);

  return v10();
}

uint64_t sub_225C9F670(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return MEMORY[0x2822009F8](sub_225C9F690, 0, 0);
}

uint64_t sub_225C9F690()
{
  v1 = v0[3];
  v2 = *(v0[4] + OBJC_IVAR____TtC13CoreIDVShared26IdentityManagementUIClient_connection);
  v3 = swift_allocObject();
  v0[5] = v3;
  *(v3 + 16) = v1;
  v4 = v1;
  v5 = swift_task_alloc();
  v0[6] = v5;
  v5[2] = v2;
  v5[3] = &unk_225D021A8;
  v5[4] = v3;
  v6 = swift_task_alloc();
  v0[7] = v6;
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = v2;
  v7 = swift_task_alloc();
  v0[8] = v7;
  v8 = type metadata accessor for IdentityImageQuality();
  *v7 = v0;
  v7[1] = sub_225C9F7E8;

  return MEMORY[0x282200830](v0 + 2, &unk_225D021B8, v5, sub_225CB2530, v6, 0, 0, v8);
}

uint64_t sub_225C9F7E8()
{
  v2 = *v1;
  v2[9] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_225CB7FE8, 0, 0);
  }

  else
  {

    v3 = v2[2];
    v4 = v2[1];

    return v4(v3);
  }
}

uint64_t sub_225C9F94C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3[19] = a1;
  v3[20] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7427E0);
  v3[21] = v5;
  v3[22] = *(v5 - 8);
  v6 = swift_task_alloc();
  v7 = *a2;
  v3[23] = v6;
  v3[24] = v7;

  return MEMORY[0x2822009F8](sub_225C9FA20, 0, 0);
}

uint64_t sub_225C9FA20()
{
  v1 = v0;
  v2 = v0;
  v3 = v0 + 2;
  v4 = v0 + 10;
  v5 = v0 + 18;
  v7 = v0[23];
  v6 = v0[24];
  v10 = v0 + 21;
  v8 = v0[21];
  v9 = v10[1];
  v13 = v1[20];
  v14 = v6;
  v1[2] = v2;
  v1[7] = v5;
  v1[3] = sub_225C9FBE0;
  swift_continuation_init();
  v1[17] = v8;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v1 + 14);
  type metadata accessor for IdentityImageQuality();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AC48);
  sub_225CCE914();
  (*(v9 + 32))(boxed_opaque_existential_1, v7, v8);
  v1[10] = MEMORY[0x277D85DD0];
  v1[11] = 1107296256;
  v1[12] = sub_225C9FCF0;
  v1[13] = &block_descriptor_844;
  [v14 fetchImageQualitySettingsWithConfiguration:v13 completionHandler:v4];
  (*(v9 + 8))(boxed_opaque_existential_1, v8);

  return MEMORY[0x282200938](v3);
}

uint64_t sub_225C9FBE0()
{
  v1 = *(*v0 + 48);
  *(*v0 + 200) = v1;
  if (v1)
  {
    v2 = sub_225CB7F48;
  }

  else
  {
    v2 = sub_225CB8024;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_225C9FE8C(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_225C9FF50;

  return sub_225C9F670(v6);
}

uint64_t sub_225C9FF50(void *a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *(*v2 + 24);
  v7 = *(*v2 + 16);
  v8 = *v2;

  v9 = *(v5 + 32);
  if (v3)
  {
    v10 = sub_225CCCCB4();

    (v9)[2](v9, 0, v10);
    _Block_release(v9);
  }

  else
  {
    (v9)[2](*(v5 + 32), a1, 0);
    _Block_release(v9);
  }

  v11 = *(v8 + 8);

  return v11();
}

uint64_t sub_225CA0108(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  *(v6 + 48) = a5;
  *(v6 + 56) = v5;
  *(v6 + 104) = a4;
  *(v6 + 32) = a2;
  *(v6 + 40) = a3;
  *(v6 + 24) = a1;
  return MEMORY[0x2822009F8](sub_225CA0134, 0, 0);
}

uint64_t sub_225CA0134()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 104);
  v4 = *(v0 + 32);
  v3 = *(v0 + 40);
  v5 = *(v0 + 24);
  v6 = *(*(v0 + 56) + OBJC_IVAR____TtC13CoreIDVShared26IdentityManagementUIClient_connection);
  v7 = swift_allocObject();
  *(v0 + 64) = v7;
  *(v7 + 16) = v5;
  *(v7 + 24) = v4;
  *(v7 + 32) = v3;
  *(v7 + 40) = v2;
  *(v7 + 48) = v1;
  v8 = v5;
  v9 = v4;
  v10 = swift_task_alloc();
  *(v0 + 72) = v10;
  v10[2] = v6;
  v10[3] = &unk_225D021D0;
  v10[4] = v7;
  v11 = swift_task_alloc();
  *(v0 + 80) = v11;
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = v6;
  v12 = swift_task_alloc();
  *(v0 + 88) = v12;
  v13 = type metadata accessor for IdentityProofingDisplayInfo();
  *v12 = v0;
  v12[1] = sub_225CA02B8;

  return MEMORY[0x282200830](v0 + 16, &unk_225D021D8, v10, sub_225CB8038, v11, 0, 0, v13);
}

uint64_t sub_225CA02B8()
{
  v2 = *v1;
  v2[12] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_225CB7FFC, 0, 0);
  }

  else
  {

    v3 = v2[2];
    v4 = v2[1];

    return v4(v3);
  }
}

uint64_t sub_225CA041C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7)
{
  *(v7 + 176) = a5;
  *(v7 + 184) = a7;
  *(v7 + 232) = a6;
  *(v7 + 160) = a3;
  *(v7 + 168) = a4;
  *(v7 + 152) = a1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7427E8);
  *(v7 + 192) = v9;
  *(v7 + 200) = *(v9 - 8);
  v10 = swift_task_alloc();
  v11 = *a2;
  *(v7 + 208) = v10;
  *(v7 + 216) = v11;

  return MEMORY[0x2822009F8](sub_225CA04FC, 0, 0);
}

uint64_t sub_225CA04FC()
{
  v1 = v0;
  v2 = v0;
  v3 = v0 + 2;
  v4 = v0 + 10;
  v5 = v0 + 18;
  v7 = v0[26];
  v6 = v0[27];
  v10 = v0 + 24;
  v8 = v0[24];
  v9 = v10[1];
  v16 = *(v1 + 232);
  v17 = v1[23];
  v18 = v6;
  v15 = v1[22];
  v13 = v1[20];
  v14 = v1[21];
  v1[2] = v2;
  v1[7] = v5;
  v1[3] = sub_225CA06DC;
  swift_continuation_init();
  v1[17] = v8;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v1 + 14);
  type metadata accessor for IdentityProofingDisplayInfo();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AC48);
  sub_225CCE914();
  (*(v9 + 32))(boxed_opaque_existential_1, v7, v8);
  v1[10] = MEMORY[0x277D85DD0];
  v1[11] = 1107296256;
  v1[12] = sub_225C9DCA8;
  v1[13] = &block_descriptor_838;
  [v18 proofIdentityWithConfiguration:v13 documents:v14 proofingOptions:v15 shouldScheduleUploads:v16 totalUploadAssetsFileSizeInBytes:v17 completionHandler:v4];
  (*(v9 + 8))(boxed_opaque_existential_1, v8);

  return MEMORY[0x282200938](v3);
}

uint64_t sub_225CA06DC()
{
  v1 = *(*v0 + 48);
  *(*v0 + 224) = v1;
  if (v1)
  {
    v2 = sub_225CA0858;
  }

  else
  {
    v2 = sub_225CA07EC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_225CA07EC()
{
  **(v0 + 152) = *(v0 + 144);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_225CA0858()
{
  swift_willThrow();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_225CA0A88(void *a1, void *a2, uint64_t a3, char a4, uint64_t a5, void *aBlock, void *a7)
{
  v7[3] = a2;
  v7[4] = a7;
  v7[2] = a1;
  v7[5] = _Block_copy(aBlock);
  v14 = a1;
  v15 = a2;
  a7;
  v16 = swift_task_alloc();
  v7[6] = v16;
  *v16 = v7;
  v16[1] = sub_225CA0B8C;

  return sub_225CA0108(v14, v15, a3, a4, a5);
}

uint64_t sub_225CA0B8C(void *a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *(*v2 + 32);
  v7 = *(*v2 + 24);
  v8 = *(*v2 + 16);
  v9 = *v2;

  v10 = *(v5 + 40);
  if (v3)
  {
    v11 = sub_225CCCCB4();

    (v10)[2](v10, 0, v11);
    _Block_release(v10);
  }

  else
  {
    (v10)[2](*(v5 + 40), a1, 0);
    _Block_release(v10);
  }

  v12 = *(v9 + 8);

  return v12();
}

uint64_t sub_225CA0D64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[6] = a4;
  v5[7] = v4;
  v5[4] = a2;
  v5[5] = a3;
  v5[3] = a1;
  return MEMORY[0x2822009F8](sub_225CA0D8C, 0, 0);
}

uint64_t sub_225CA0D8C()
{
  v1 = v0[6];
  v3 = v0[4];
  v2 = v0[5];
  v4 = v0[3];
  v5 = *(v0[7] + OBJC_IVAR____TtC13CoreIDVShared26IdentityManagementUIClient_connection);
  v6 = swift_allocObject();
  v0[8] = v6;
  v6[2] = v4;
  v6[3] = v3;
  v6[4] = v2;
  v6[5] = v1;
  v7 = v4;

  v8 = swift_task_alloc();
  v0[9] = v8;
  v8[2] = v5;
  v8[3] = &unk_225D021F0;
  v8[4] = v6;
  v9 = swift_task_alloc();
  v0[10] = v9;
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = v5;
  v10 = swift_task_alloc();
  v0[11] = v10;
  v11 = type metadata accessor for IdentityProofingDisplayInfo();
  *v10 = v0;
  v10[1] = sub_225CA0F00;

  return MEMORY[0x282200830](v0 + 2, &unk_225D021F8, v8, sub_225CB8038, v9, 0, 0, v11);
}

uint64_t sub_225CA0F00()
{
  v2 = *v1;
  v2[12] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_225CA1064, 0, 0);
  }

  else
  {

    v3 = v2[2];
    v4 = v2[1];

    return v4(v3);
  }
}

uint64_t sub_225CA1064()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_225CA10DC(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[22] = a5;
  v6[23] = a6;
  v6[20] = a3;
  v6[21] = a4;
  v6[19] = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7427E8);
  v6[24] = v8;
  v6[25] = *(v8 - 8);
  v9 = swift_task_alloc();
  v10 = *a2;
  v6[26] = v9;
  v6[27] = v10;

  return MEMORY[0x2822009F8](sub_225CA11B8, 0, 0);
}

uint64_t sub_225CA11B8()
{
  v1 = v0;
  v2 = v0 + 2;
  v3 = v0 + 18;
  v5 = v0[26];
  v4 = v0[27];
  v8 = v0 + 24;
  v6 = v0[24];
  v7 = v8[1];
  v13 = v1[23];
  v14 = v4;
  v12 = v1[20];
  v9 = sub_225CCE444();
  v1[28] = v9;
  v1[2] = v1;
  v1[7] = v3;
  v1[3] = sub_225CA1390;
  swift_continuation_init();
  v1[17] = v6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v1 + 14);
  type metadata accessor for IdentityProofingDisplayInfo();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AC48);
  sub_225CCE914();
  (*(v7 + 32))(boxed_opaque_existential_1, v5, v6);
  v1[10] = MEMORY[0x277D85DD0];
  v1[11] = 1107296256;
  v1[12] = sub_225C9DCA8;
  v1[13] = &block_descriptor_834;
  [v14 proofIdentityWithConfiguration:v12 authCode:v9 proofingOptions:v13 completionHandler:?];
  (*(v7 + 8))(boxed_opaque_existential_1, v6);

  return MEMORY[0x282200938](v2);
}

uint64_t sub_225CA1390()
{
  v1 = *(*v0 + 48);
  *(*v0 + 232) = v1;
  if (v1)
  {
    v2 = sub_225CA1518;
  }

  else
  {
    v2 = sub_225CA14A0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_225CA14A0()
{
  v1 = *(v0 + 224);
  **(v0 + 152) = *(v0 + 144);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_225CA1518()
{
  v1 = *(v0 + 224);
  swift_willThrow();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_225CA1734(void *a1, int a2, uint64_t a3, void *aBlock, void *a5)
{
  v5[2] = a1;
  v5[3] = a5;
  v5[4] = _Block_copy(aBlock);
  v9 = sub_225CCE474();
  v11 = v10;
  v5[5] = v10;
  v12 = a1;
  a5;
  v13 = swift_task_alloc();
  v5[6] = v13;
  *v13 = v5;
  v13[1] = sub_225CA1828;

  return sub_225CA0D64(v12, v9, v11, a3);
}

uint64_t sub_225CA1828(void *a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *(*v2 + 24);
  v7 = *(*v2 + 16);
  v8 = *v2;

  v9 = *(v5 + 32);
  if (v3)
  {
    v10 = sub_225CCCCB4();

    (v9)[2](v9, 0, v10);
    _Block_release(v9);
  }

  else
  {
    (v9)[2](*(v5 + 32), a1, 0);
    _Block_release(v9);
  }

  v11 = *(v8 + 8);

  return v11();
}

uint64_t sub_225CA1A04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[6] = a4;
  v5[7] = v4;
  v5[4] = a2;
  v5[5] = a3;
  v5[3] = a1;
  return MEMORY[0x2822009F8](sub_225CA1A2C, 0, 0);
}

uint64_t sub_225CA1A2C()
{
  v1 = v0[6];
  v3 = v0[4];
  v2 = v0[5];
  v4 = v0[3];
  v5 = *(v0[7] + OBJC_IVAR____TtC13CoreIDVShared26IdentityManagementUIClient_connection);
  v6 = swift_allocObject();
  v0[8] = v6;
  v6[2] = v4;
  v6[3] = v3;
  v6[4] = v2;
  v6[5] = v1;
  v7 = v4;
  v8 = v3;

  v9 = swift_task_alloc();
  v0[9] = v9;
  v9[2] = v5;
  v9[3] = &unk_225D02210;
  v9[4] = v6;
  v10 = swift_task_alloc();
  v0[10] = v10;
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = v5;
  v11 = swift_task_alloc();
  v0[11] = v11;
  v12 = type metadata accessor for IdentityProofingNFCConfig();
  *v11 = v0;
  v11[1] = sub_225CA02B8;

  return MEMORY[0x282200830](v0 + 2, &unk_225D02220, v9, sub_225CB28F8, v10, 0, 0, v12);
}

uint64_t sub_225CA1BA4(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[22] = a5;
  v6[23] = a6;
  v6[20] = a3;
  v6[21] = a4;
  v6[19] = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7427D8);
  v6[24] = v8;
  v6[25] = *(v8 - 8);
  v9 = swift_task_alloc();
  v10 = *a2;
  v6[26] = v9;
  v6[27] = v10;

  return MEMORY[0x2822009F8](sub_225CA1C80, 0, 0);
}

uint64_t sub_225CA1C80()
{
  v1 = v0;
  v2 = v0 + 2;
  v3 = v0 + 18;
  v5 = v0[26];
  v4 = v0[27];
  v8 = v0 + 24;
  v6 = v0[24];
  v7 = v8[1];
  v13 = v1[21];
  v14 = v4;
  v12 = v1[20];
  v9 = sub_225CCE444();
  v1[28] = v9;
  v1[2] = v1;
  v1[7] = v3;
  v1[3] = sub_225CA1E58;
  swift_continuation_init();
  v1[17] = v6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v1 + 14);
  type metadata accessor for IdentityProofingNFCConfig();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AC48);
  sub_225CCE914();
  (*(v7 + 32))(boxed_opaque_existential_1, v5, v6);
  v1[10] = MEMORY[0x277D85DD0];
  v1[11] = 1107296256;
  v1[12] = sub_225CA1F68;
  v1[13] = &block_descriptor_830;
  [v14 initiatePartialProofingWithConfiguration:v12 documents:v13 proofingSessionID:v9 completionHandler:?];
  (*(v7 + 8))(boxed_opaque_existential_1, v6);

  return MEMORY[0x282200938](v2);
}

uint64_t sub_225CA1E58()
{
  v1 = *(*v0 + 48);
  *(*v0 + 232) = v1;
  if (v1)
  {
    v2 = sub_225CB8010;
  }

  else
  {
    v2 = sub_225CB7FD8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_225CA2120(void *a1, void *a2, int a3, void *aBlock, void *a5)
{
  v5[3] = a2;
  v5[4] = a5;
  v5[2] = a1;
  v5[5] = _Block_copy(aBlock);
  v9 = sub_225CCE474();
  v11 = v10;
  v5[6] = v10;
  v12 = a1;
  v13 = a2;
  a5;
  v14 = swift_task_alloc();
  v5[7] = v14;
  *v14 = v5;
  v14[1] = sub_225CA2220;

  return sub_225CA1A04(v12, v13, v9, v11);
}

uint64_t sub_225CA2220(void *a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *(*v2 + 32);
  v7 = *(*v2 + 24);
  v8 = *(*v2 + 16);
  v9 = *v2;

  v10 = *(v5 + 40);
  if (v3)
  {
    v11 = sub_225CCCCB4();

    (v10)[2](v10, 0, v11);
    _Block_release(v10);
  }

  else
  {
    (v10)[2](*(v5 + 40), a1, 0);
    _Block_release(v10);
  }

  v12 = *(v9 + 8);

  return v12();
}

uint64_t sub_225CA2434()
{
  v1 = *(v0[3] + OBJC_IVAR____TtC13CoreIDVShared26IdentityManagementUIClient_connection);
  v2 = swift_task_alloc();
  v0[4] = v2;
  v2[2] = v1;
  v2[3] = &unk_225D02230;
  v2[4] = 0;
  v3 = swift_task_alloc();
  v0[5] = v3;
  v3[2] = 0;
  v3[3] = 0;
  v3[4] = v1;
  v4 = swift_task_alloc();
  v0[6] = v4;
  v5 = type metadata accessor for NFCPendingCommandsStatus();
  *v4 = v0;
  v4[1] = sub_225CA2568;

  return MEMORY[0x282200830](v0 + 2, &unk_225D02240, v2, sub_225CB29CC, v3, 0, 0, v5);
}

uint64_t sub_225CA2568()
{
  v2 = *v1;
  v2[7] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_225CB8004, 0, 0);
  }

  else
  {

    v3 = v2[2];
    v4 = v2[1];

    return v4(v3);
  }
}

uint64_t sub_225CA26B4(uint64_t a1, uint64_t *a2)
{
  v2[19] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7427D0);
  v2[20] = v4;
  v2[21] = *(v4 - 8);
  v5 = swift_task_alloc();
  v6 = *a2;
  v2[22] = v5;
  v2[23] = v6;

  return MEMORY[0x2822009F8](sub_225CA2788, 0, 0);
}

uint64_t sub_225CA2788()
{
  v1 = v0;
  v2 = v0;
  v3 = v0 + 2;
  v4 = v0 + 10;
  v5 = v0 + 18;
  v6 = v0[22];
  v12 = v0[23];
  v9 = v0 + 20;
  v7 = v0[20];
  v8 = v9[1];
  v1[2] = v2;
  v1[7] = v5;
  v1[3] = sub_225CA2944;
  swift_continuation_init();
  v1[17] = v7;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v1 + 14);
  type metadata accessor for NFCPendingCommandsStatus();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AC48);
  sub_225CCE914();
  (*(v8 + 32))(boxed_opaque_existential_1, v6, v7);
  v1[10] = MEMORY[0x277D85DD0];
  v1[11] = 1107296256;
  v1[12] = sub_225CA2A54;
  v1[13] = &block_descriptor_824;
  [v12 getPendingCommandsStatusWithCompletionHandler_];
  (*(v8 + 8))(boxed_opaque_existential_1, v7);

  return MEMORY[0x282200938](v3);
}

uint64_t sub_225CA2944()
{
  v1 = *(*v0 + 48);
  *(*v0 + 192) = v1;
  if (v1)
  {
    v2 = sub_225CB7F4C;
  }

  else
  {
    v2 = sub_225CB8028;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_225CA2BDC(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_225CB8014;

  return sub_225CA2414();
}

uint64_t sub_225CA2C84(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return MEMORY[0x2822009F8](sub_225CA2CA4, 0, 0);
}

uint64_t sub_225CA2CA4()
{
  v1 = v0[3];
  v2 = *(v0[4] + OBJC_IVAR____TtC13CoreIDVShared26IdentityManagementUIClient_connection);
  v3 = swift_allocObject();
  v0[5] = v3;
  *(v3 + 16) = v1;
  v4 = v1;
  v5 = swift_task_alloc();
  v0[6] = v5;
  v5[2] = v2;
  v5[3] = &unk_225D02258;
  v5[4] = v3;
  v6 = swift_task_alloc();
  v0[7] = v6;
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = v2;
  v7 = swift_task_alloc();
  v0[8] = v7;
  v8 = type metadata accessor for NFCPendingCommands();
  *v7 = v0;
  v7[1] = sub_225CA2DFC;

  return MEMORY[0x282200830](v0 + 2, &unk_225D02268, v5, sub_225CB2B50, v6, 0, 0, v8);
}

uint64_t sub_225CA2DFC()
{
  v2 = *v1;
  v2[9] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_225CA2F60, 0, 0);
  }

  else
  {

    v3 = v2[2];
    v4 = v2[1];

    return v4(v3);
  }
}

uint64_t sub_225CA2F60()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_225CA2FD8(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3[19] = a1;
  v3[20] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7427C8);
  v3[21] = v5;
  v3[22] = *(v5 - 8);
  v6 = swift_task_alloc();
  v7 = *a2;
  v3[23] = v6;
  v3[24] = v7;

  return MEMORY[0x2822009F8](sub_225CA30AC, 0, 0);
}

uint64_t sub_225CA30AC()
{
  v1 = v0;
  v2 = v0;
  v3 = v0 + 2;
  v4 = v0 + 10;
  v5 = v0 + 18;
  v7 = v0[23];
  v6 = v0[24];
  v10 = v0 + 21;
  v8 = v0[21];
  v9 = v10[1];
  v13 = v1[20];
  v14 = v6;
  v1[2] = v2;
  v1[7] = v5;
  v1[3] = sub_225CA326C;
  swift_continuation_init();
  v1[17] = v8;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v1 + 14);
  type metadata accessor for NFCPendingCommands();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AC48);
  sub_225CCE914();
  (*(v9 + 32))(boxed_opaque_existential_1, v7, v8);
  v1[10] = MEMORY[0x277D85DD0];
  v1[11] = 1107296256;
  v1[12] = sub_225CA3460;
  v1[13] = &block_descriptor_818;
  [v14 getPendingCommandsWithResponseAPDUs:v13 completionHandler:v4];
  (*(v9 + 8))(boxed_opaque_existential_1, v8);

  return MEMORY[0x282200938](v3);
}

uint64_t sub_225CA326C()
{
  v1 = *(*v0 + 48);
  *(*v0 + 200) = v1;
  if (v1)
  {
    v2 = sub_225CA33E8;
  }

  else
  {
    v2 = sub_225CA337C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_225CA337C()
{
  **(v0 + 152) = *(v0 + 144);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_225CA33E8()
{
  swift_willThrow();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_225CA35FC(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_225C9FF50;

  return sub_225CA2C84(a1);
}

uint64_t sub_225CA36DC()
{
  v1 = *(v0[3] + OBJC_IVAR____TtC13CoreIDVShared26IdentityManagementUIClient_connection);
  v2 = swift_task_alloc();
  v0[4] = v2;
  v2[2] = v1;
  v2[3] = &unk_225D02278;
  v2[4] = 0;
  v3 = swift_task_alloc();
  v0[5] = v3;
  v3[2] = 0;
  v3[3] = 0;
  v3[4] = v1;
  v4 = swift_task_alloc();
  v0[6] = v4;
  v5 = type metadata accessor for IdentityProofingStatus();
  *v4 = v0;
  v4[1] = sub_225CA2568;

  return MEMORY[0x282200830](v0 + 2, &unk_225D02288, v2, sub_225CB2C24, v3, 0, 0, v5);
}

uint64_t sub_225CA3810(uint64_t a1, uint64_t *a2)
{
  v2[19] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7427C0);
  v2[20] = v4;
  v2[21] = *(v4 - 8);
  v5 = swift_task_alloc();
  v6 = *a2;
  v2[22] = v5;
  v2[23] = v6;

  return MEMORY[0x2822009F8](sub_225CA38E4, 0, 0);
}

uint64_t sub_225CA38E4()
{
  v1 = v0;
  v2 = v0;
  v3 = v0 + 2;
  v4 = v0 + 10;
  v5 = v0 + 18;
  v6 = v0[22];
  v12 = v0[23];
  v9 = v0 + 20;
  v7 = v0[20];
  v8 = v9[1];
  v1[2] = v2;
  v1[7] = v5;
  v1[3] = sub_225CA2944;
  swift_continuation_init();
  v1[17] = v7;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v1 + 14);
  type metadata accessor for IdentityProofingStatus();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AC48);
  sub_225CCE914();
  (*(v8 + 32))(boxed_opaque_existential_1, v6, v7);
  v1[10] = MEMORY[0x277D85DD0];
  v1[11] = 1107296256;
  v1[12] = sub_225CA3AA0;
  v1[13] = &block_descriptor_812;
  [v12 proofingFlowAvailabilityWithCompletionHandler_];
  (*(v8 + 8))(boxed_opaque_existential_1, v7);

  return MEMORY[0x282200938](v3);
}

uint64_t sub_225CA3C28(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_225CB8014;

  return sub_225CA36BC();
}

uint64_t sub_225CA3CD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[6] = a4;
  v5[7] = v4;
  v5[4] = a2;
  v5[5] = a3;
  v5[3] = a1;
  return MEMORY[0x2822009F8](sub_225CA3CF8, 0, 0);
}

uint64_t sub_225CA3CF8()
{
  v1 = v0[6];
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[3];
  v5 = *(v0[7] + OBJC_IVAR____TtC13CoreIDVShared26IdentityManagementUIClient_connection);
  v6 = swift_allocObject();
  v0[8] = v6;
  v6[2] = v4;
  v6[3] = v2;
  v6[4] = v3;
  v6[5] = v1;

  v7 = swift_task_alloc();
  v0[9] = v7;
  v7[2] = v5;
  v7[3] = &unk_225D022A0;
  v7[4] = v6;
  v8 = swift_task_alloc();
  v0[10] = v8;
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = v5;
  v9 = swift_task_alloc();
  v0[11] = v9;
  v10 = type metadata accessor for IdentityProofingConfiguration();
  *v9 = v0;
  v9[1] = sub_225CA02B8;

  return MEMORY[0x282200830](v0 + 2, &unk_225D022B0, v7, sub_225CB2DC0, v8, 0, 0, v10);
}

uint64_t sub_225CA3E70(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[22] = a5;
  v6[23] = a6;
  v6[20] = a3;
  v6[21] = a4;
  v6[19] = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7427B8);
  v6[24] = v8;
  v6[25] = *(v8 - 8);
  v9 = swift_task_alloc();
  v10 = *a2;
  v6[26] = v9;
  v6[27] = v10;

  return MEMORY[0x2822009F8](sub_225CA3F4C, 0, 0);
}

uint64_t sub_225CA3F4C()
{
  v1 = v0;
  v2 = v0 + 2;
  v3 = v0 + 18;
  v4 = v0[26];
  v12 = v0[27];
  v7 = v0 + 24;
  v6 = v0[24];
  v5 = v7[1];
  v11 = sub_225CCE444();
  v1[28] = v11;
  v8 = sub_225CCE444();
  v1[29] = v8;
  v1[2] = v1;
  v1[7] = v3;
  v1[3] = sub_225CA4138;
  swift_continuation_init();
  v1[17] = v6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v1 + 14);
  type metadata accessor for IdentityProofingConfiguration();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AC48);
  sub_225CCE914();
  (*(v5 + 32))(boxed_opaque_existential_1, v4, v6);
  v1[10] = MEMORY[0x277D85DD0];
  v1[11] = 1107296256;
  v1[12] = sub_225CA4350;
  v1[13] = &block_descriptor_806;
  [v12 proofingStatusFor:v11 country:v8 completionHandler:?];
  (*(v5 + 8))(boxed_opaque_existential_1, v6);

  return MEMORY[0x282200938](v2);
}

uint64_t sub_225CA4138()
{
  v1 = *(*v0 + 48);
  *(*v0 + 240) = v1;
  if (v1)
  {
    v2 = sub_225CA42C4;
  }

  else
  {
    v2 = sub_225CA4248;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_225CA4248()
{
  v2 = *(v0 + 224);
  v1 = *(v0 + 232);
  **(v0 + 152) = *(v0 + 144);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_225CA42C4()
{
  v1 = v0[29];
  v2 = v0[28];
  swift_willThrow();

  v3 = v0[1];

  return v3();
}

uint64_t sub_225CA44F4(int a1, int a2, void *aBlock, void *a4)
{
  v4[2] = a4;
  v4[3] = _Block_copy(aBlock);
  v6 = sub_225CCE474();
  v8 = v7;
  v4[4] = v7;
  v9 = sub_225CCE474();
  v11 = v10;
  v4[5] = v10;
  a4;
  v12 = swift_task_alloc();
  v4[6] = v12;
  *v12 = v4;
  v12[1] = sub_225CA45F0;

  return sub_225CA3CD0(v6, v8, v9, v11);
}

uint64_t sub_225CA45F0(void *a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *(*v2 + 16);
  v7 = *v2;

  v8 = *(v5 + 24);
  if (v3)
  {
    v9 = sub_225CCCCB4();

    (v8)[2](v8, 0, v9);
    _Block_release(v8);
  }

  else
  {
    (v8)[2](*(v5 + 24), a1, 0);
    _Block_release(v8);
  }

  v10 = *(v7 + 8);

  return v10();
}

uint64_t sub_225CA47D0(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_225CA47F0, 0, 0);
}

uint64_t sub_225CA47F0()
{
  v1 = v0[2];
  v2 = *(v0[3] + OBJC_IVAR____TtC13CoreIDVShared26IdentityManagementUIClient_connection);
  v3 = swift_allocObject();
  v0[4] = v3;
  *(v3 + 16) = v1;
  v4 = v1;
  v5 = swift_task_alloc();
  v0[5] = v5;
  v5[2] = v2;
  v5[3] = &unk_225D022C8;
  v5[4] = v3;
  v6 = swift_task_alloc();
  v0[6] = v6;
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = v2;
  v7 = swift_task_alloc();
  v0[7] = v7;
  *v7 = v0;
  v7[1] = sub_225CA4944;
  v8 = MEMORY[0x277D839B0];

  return MEMORY[0x282200830](v0 + 9, &unk_225D022D8, v5, sub_225CB2F44, v6, 0, 0, v8);
}

uint64_t sub_225CA4944()
{
  v2 = *v1;
  *(v2 + 64) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_225CA4AA4, 0, 0);
  }

  else
  {

    v3 = *(v2 + 72);
    v4 = *(v2 + 8);

    return v4(v3);
  }
}

uint64_t sub_225CA4AA4()
{
  v1 = *(v0 + 64);

  v2 = *(v0 + 8);

  return v2(0);
}

uint64_t sub_225CA4B30(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3[18] = a1;
  v3[19] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7429C0);
  v3[20] = v5;
  v3[21] = *(v5 - 8);
  v6 = swift_task_alloc();
  v7 = *a2;
  v3[22] = v6;
  v3[23] = v7;

  return MEMORY[0x2822009F8](sub_225CA4C04, 0, 0);
}

uint64_t sub_225CA4C04()
{
  v1 = v0;
  v2 = v0;
  v3 = v0 + 2;
  v4 = v0 + 10;
  v5 = v0 + 24;
  v7 = v0[22];
  v6 = v0[23];
  v10 = v0 + 20;
  v8 = v0[20];
  v9 = v10[1];
  v11 = v1[19];
  v1[2] = v2;
  v1[7] = v5;
  v1[3] = sub_225CA4DAC;
  swift_continuation_init();
  v1[17] = v8;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v1 + 14);
  sub_225CCE914();
  (*(v9 + 32))(boxed_opaque_existential_1, v7, v8);
  v1[10] = MEMORY[0x277D85DD0];
  v1[11] = 1107296256;
  v1[12] = sub_225CA4EFC;
  v1[13] = &block_descriptor_801;
  [v6 isWatchPairedWithConfiguration:v11 completionHandler:v4];
  (*(v9 + 8))(boxed_opaque_existential_1, v8);

  return MEMORY[0x282200938](v3);
}

uint64_t sub_225CA4DAC()
{

  return MEMORY[0x2822009F8](sub_225CA4E8C, 0, 0);
}

uint64_t sub_225CA4E8C()
{
  **(v0 + 144) = *(v0 + 192);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_225CA4EFC(uint64_t a1)
{
  __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7429C0);
  return sub_225CCE934();
}

uint64_t sub_225CA50E0(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_225CA51A4;

  return sub_225CA47D0(v6);
}

uint64_t sub_225CA51A4(char a1)
{
  v3 = *(*v1 + 32);
  v4 = *(*v1 + 24);
  v5 = *(*v1 + 16);
  v8 = *v1;

  v3[2](v3, a1 & 1);
  _Block_release(v3);
  v6 = *(v8 + 8);

  return v6();
}

uint64_t sub_225CA5324()
{
  v1 = *(v0[3] + OBJC_IVAR____TtC13CoreIDVShared26IdentityManagementUIClient_connection);
  v2 = swift_task_alloc();
  v0[4] = v2;
  v2[2] = v1;
  v2[3] = &unk_225D022E8;
  v2[4] = 0;
  v3 = swift_task_alloc();
  v0[5] = v3;
  v3[2] = 0;
  v3[3] = 0;
  v3[4] = v1;
  v4 = swift_task_alloc();
  v0[6] = v4;
  *v4 = v0;
  v4[1] = sub_225CA5454;
  v5 = MEMORY[0x277D83B88];

  return MEMORY[0x282200830](v0 + 2, &unk_225D02CC0, v2, sub_225CB2F50, v3, 0, 0, v5);
}

uint64_t sub_225CA5454()
{
  v2 = *v1;
  v2[7] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_225CA55A0, 0, 0);
  }

  else
  {

    v3 = v2[2];
    v4 = v2[1];

    return v4(v3);
  }
}

uint64_t sub_225CA55A0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_225CA560C(uint64_t a1, uint64_t *a2)
{
  v2[19] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7427B0);
  v2[20] = v4;
  v2[21] = *(v4 - 8);
  v5 = swift_task_alloc();
  v6 = *a2;
  v2[22] = v5;
  v2[23] = v6;

  return MEMORY[0x2822009F8](sub_225CA56E0, 0, 0);
}

uint64_t sub_225CA56E0()
{
  v1 = v0;
  v2 = v0;
  v3 = v0 + 2;
  v4 = v0 + 10;
  v5 = v0 + 18;
  v7 = v0[22];
  v6 = v0[23];
  v10 = v0 + 20;
  v8 = v0[20];
  v9 = v10[1];
  v1[2] = v2;
  v1[7] = v5;
  v1[3] = sub_225CA5890;
  swift_continuation_init();
  v1[17] = v8;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v1 + 14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AC48);
  sub_225CCE914();
  (*(v9 + 32))(boxed_opaque_existential_1, v7, v8);
  v1[10] = MEMORY[0x277D85DD0];
  v1[11] = 1107296256;
  v1[12] = sub_225CBB2F8;
  v1[13] = &block_descriptor_795;
  [v6 watchIdentityPassesCountWithCompletionHandler_];
  (*(v9 + 8))(boxed_opaque_existential_1, v8);

  return MEMORY[0x282200938](v3);
}

uint64_t sub_225CA5890()
{
  v1 = *(*v0 + 48);
  *(*v0 + 192) = v1;
  if (v1)
  {
    v2 = sub_225CA5A0C;
  }

  else
  {
    v2 = sub_225CA59A0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_225CA59A0()
{
  **(v0 + 152) = *(v0 + 144);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_225CA5A0C()
{
  swift_willThrow();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_225CA5BF8(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_225CA5CA0;

  return sub_225CA5304();
}

uint64_t sub_225CA5CA0(uint64_t a1)
{
  v3 = v1;
  v6 = *v2;
  v5 = *v2;
  v7 = *(*v2 + 16);
  v8 = *v2;

  v9 = *(v5 + 24);
  if (v3)
  {
    v10 = sub_225CCCCB4();

    (*(v9 + 16))(v9, 0, v10);
  }

  else
  {
    (*(v9 + 16))(v9, a1, 0);
  }

  _Block_release(*(v6 + 24));
  v11 = *(v8 + 8);

  return v11();
}

uint64_t sub_225CA5E30(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_225CA5E54, 0, 0);
}

uint64_t sub_225CA5E54()
{
  v1 = v0[3];
  v2 = v0[2];
  v3 = *(v0[4] + OBJC_IVAR____TtC13CoreIDVShared26IdentityManagementUIClient_connection);
  v4 = swift_allocObject();
  v0[5] = v4;
  *(v4 + 16) = v2;
  *(v4 + 24) = v1;
  v5 = v2;
  v6 = swift_task_alloc();
  v0[6] = v6;
  v6[2] = v3;
  v6[3] = &unk_225D02310;
  v6[4] = v4;
  v7 = swift_task_alloc();
  v0[7] = v7;
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = v3;
  v8 = swift_task_alloc();
  v0[8] = v8;
  *v8 = v0;
  v8[1] = sub_225CA5FA8;
  v9 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x282200830](v8, &unk_225D02318, v6, sub_225CB8034, v7, 0, 0, v9);
}

uint64_t sub_225CA5FA8()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_225CA2F60;
  }

  else
  {

    v2 = sub_225A02EA0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_225CA60E0(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v4[18] = a3;
  v4[19] = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73FD10);
  v4[20] = v6;
  v4[21] = *(v6 - 8);
  v7 = swift_task_alloc();
  v8 = *a2;
  v4[22] = v7;
  v4[23] = v8;

  return MEMORY[0x2822009F8](sub_225CA61B4, 0, 0);
}

uint64_t sub_225CA61B4()
{
  v1 = v0;
  v2 = v0;
  v3 = v0 + 2;
  v4 = v0 + 10;
  v6 = v0[22];
  v5 = v0[23];
  v9 = v0 + 20;
  v7 = v0[20];
  v8 = v9[1];
  v10 = v1[18];
  v13 = v1[19];
  v14 = v5;
  v1[2] = v2;
  v1[3] = sub_225CA636C;
  swift_continuation_init();
  v1[17] = v7;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v1 + 14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AC48);
  sub_225CCE914();
  (*(v8 + 32))(boxed_opaque_existential_1, v6, v7);
  v1[10] = MEMORY[0x277D85DD0];
  v1[11] = 1107296256;
  v1[12] = sub_225BED200;
  v1[13] = &block_descriptor_789;
  [v14 proofingCancelledWithConfiguration:v10 proofingOptions:v13 completionHandler:v4];
  (*(v8 + 8))(boxed_opaque_existential_1, v7);

  return MEMORY[0x282200938](v3);
}

uint64_t sub_225CA636C()
{
  v1 = *(*v0 + 48);
  *(*v0 + 192) = v1;
  if (v1)
  {
    v2 = sub_225CA5A0C;
  }

  else
  {
    v2 = sub_225CA647C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_225CA647C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_225CA666C(void *a1, uint64_t a2, void *aBlock, void *a4)
{
  v4[2] = a1;
  v4[3] = a4;
  v4[4] = _Block_copy(aBlock);
  v8 = a1;
  a4;
  v9 = swift_task_alloc();
  v4[5] = v9;
  *v9 = v4;
  v9[1] = sub_225CA6738;

  return sub_225CA5E30(v8, a2);
}

uint64_t sub_225CA6738()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *(*v1 + 24);
  v6 = *(*v1 + 16);
  v7 = *v1;

  v8 = *(v3 + 32);
  if (v2)
  {
    v9 = sub_225CCCCB4();

    (*(v8 + 16))(v8, v9);
  }

  else
  {
    (*(v8 + 16))(*(v3 + 32), 0);
  }

  _Block_release(*(v4 + 32));
  v10 = *(v7 + 8);

  return v10();
}

uint64_t sub_225CA68D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_225CA68F8, 0, 0);
}

uint64_t sub_225CA68F8()
{
  v1 = v0[4];
  v2 = v0[2];
  v3 = v0[3];
  v4 = *(v0[5] + OBJC_IVAR____TtC13CoreIDVShared26IdentityManagementUIClient_connection);
  v5 = swift_allocObject();
  v0[6] = v5;
  v5[2] = v2;
  v5[3] = v3;
  v5[4] = v1;
  sub_2259CB710(v2, v3);
  v6 = swift_task_alloc();
  v0[7] = v6;
  v6[2] = v4;
  v6[3] = &unk_225D02330;
  v6[4] = v5;
  v7 = swift_task_alloc();
  v0[8] = v7;
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = v4;
  v8 = swift_task_alloc();
  v0[9] = v8;
  *v8 = v0;
  v8[1] = sub_225CA6A60;
  v9 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x282200830](v8, &unk_225D02338, v6, sub_225CB8034, v7, 0, 0, v9);
}

uint64_t sub_225CA6A60()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_225C9D814;
  }

  else
  {

    v2 = sub_225A02EA0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_225CA6B98(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[19] = a4;
  v5[20] = a5;
  v5[18] = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73FD10);
  v5[21] = v7;
  v5[22] = *(v7 - 8);
  v8 = swift_task_alloc();
  v9 = *a2;
  v5[23] = v8;
  v5[24] = v9;

  return MEMORY[0x2822009F8](sub_225CA6C70, 0, 0);
}

uint64_t sub_225CA6C70()
{
  v1 = v0;
  v2 = v0 + 2;
  v3 = v0 + 10;
  v5 = v0[23];
  v4 = v0[24];
  v8 = v0 + 21;
  v7 = v0[21];
  v6 = v8[1];
  v12 = v1[20];
  v13 = v4;
  v9 = sub_225CCCF74();
  v1[25] = v9;
  v1[2] = v1;
  v1[3] = sub_225CA6E38;
  swift_continuation_init();
  v1[17] = v7;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v1 + 14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AC48);
  sub_225CCE914();
  (*(v6 + 32))(boxed_opaque_existential_1, v5, v7);
  v1[10] = MEMORY[0x277D85DD0];
  v1[11] = 1107296256;
  v1[12] = sub_225BED200;
  v1[13] = &block_descriptor_785;
  [v13 setGlobalBoundACLWithData:v9 type:v12 completionHandler:v3];
  (*(v6 + 8))(boxed_opaque_existential_1, v7);

  return MEMORY[0x282200938](v2);
}

uint64_t sub_225CA6E38()
{
  v1 = *(*v0 + 48);
  *(*v0 + 208) = v1;
  if (v1)
  {
    v2 = sub_225CA6FB8;
  }

  else
  {
    v2 = sub_225CA6F48;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_225CA6F48()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_225CA6FB8()
{
  v1 = *(v0 + 200);
  swift_willThrow();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_225CA71C0(void *a1, uint64_t a2, void *aBlock, void *a4)
{
  v4[2] = a4;
  v4[3] = _Block_copy(aBlock);
  v8 = a1;
  a4;
  v9 = sub_225CCCFA4();
  v11 = v10;

  v4[4] = v9;
  v4[5] = v11;
  v12 = swift_task_alloc();
  v4[6] = v12;
  *v12 = v4;
  v12[1] = sub_225CA72B0;

  return sub_225CA68D4(v9, v11, a2);
}

uint64_t sub_225CA72B0()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *(*v1 + 40);
  v6 = *(*v1 + 32);
  v7 = *(*v1 + 16);
  v8 = *v1;

  sub_2259BEF00(v6, v5);
  v9 = *(v3 + 24);
  if (v2)
  {
    v10 = sub_225CCCCB4();

    (*(v9 + 16))(v9, v10);
  }

  else
  {
    (*(v9 + 16))(*(v3 + 24), 0);
  }

  _Block_release(*(v4 + 24));
  v11 = *(v8 + 8);

  return v11();
}

uint64_t sub_225CA7470(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[6] = a4;
  v5[7] = v4;
  v5[4] = a2;
  v5[5] = a3;
  v5[3] = a1;
  return MEMORY[0x2822009F8](sub_225CA7498, 0, 0);
}

uint64_t sub_225CA7498()
{
  v1 = v0[6];
  v3 = v0[4];
  v2 = v0[5];
  v4 = v0[3];
  v5 = *(v0[7] + OBJC_IVAR____TtC13CoreIDVShared26IdentityManagementUIClient_connection);
  v6 = swift_allocObject();
  v0[8] = v6;
  v6[2] = v4;
  v6[3] = v3;
  v6[4] = v2;
  v6[5] = v1;
  sub_2259CB710(v4, v3);
  sub_2259CB710(v2, v1);
  v7 = swift_task_alloc();
  v0[9] = v7;
  v7[2] = v5;
  v7[3] = &unk_225D02350;
  v7[4] = v6;
  v8 = swift_task_alloc();
  v0[10] = v8;
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = v5;
  v9 = swift_task_alloc();
  v0[11] = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73DCA0);
  *v9 = v0;
  v9[1] = sub_225CA02B8;

  return MEMORY[0x282200830](v0 + 2, &unk_225D02360, v7, sub_225CB3264, v8, 0, 0, v10);
}

uint64_t sub_225CA7624(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[22] = a5;
  v6[23] = a6;
  v6[20] = a3;
  v6[21] = a4;
  v6[19] = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7427A8);
  v6[24] = v8;
  v6[25] = *(v8 - 8);
  v9 = swift_task_alloc();
  v10 = *a2;
  v6[26] = v9;
  v6[27] = v10;

  return MEMORY[0x2822009F8](sub_225CA7700, 0, 0);
}

uint64_t sub_225CA7700()
{
  v1 = v0;
  v2 = v0 + 2;
  v3 = v0 + 18;
  v4 = v0[26];
  v12 = v0[27];
  v7 = v0 + 24;
  v6 = v0[24];
  v5 = v7[1];
  v11 = sub_225CCCF74();
  v1[28] = v11;
  v8 = sub_225CCCF74();
  v1[29] = v8;
  v1[2] = v1;
  v1[7] = v3;
  v1[3] = sub_225CA78F8;
  swift_continuation_init();
  v1[17] = v6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v1 + 14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73DCA0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AC48);
  sub_225CCE914();
  (*(v5 + 32))(boxed_opaque_existential_1, v4, v6);
  v1[10] = MEMORY[0x277D85DD0];
  v1[11] = 1107296256;
  v1[12] = sub_225CA7A08;
  v1[13] = &block_descriptor_781;
  [v12 setModifiedGlobalBoundACLWithData:v11 externalizedLAContext:v8 completionHandler:?];
  (*(v5 + 8))(boxed_opaque_existential_1, v6);

  return MEMORY[0x282200938](v2);
}

uint64_t sub_225CA78F8()
{
  v1 = *(*v0 + 48);
  *(*v0 + 240) = v1;
  if (v1)
  {
    v2 = sub_225CB7FF0;
  }

  else
  {
    v2 = sub_225CB7F54;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

void sub_225CA7A08(uint64_t a1, uint64_t a2, void *a3)
{
  __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v4 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7427A8);
    sub_225CCE924();
  }

  else
  {
    sub_225CCD124();
    sub_225CCE814();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7427A8);
    sub_225CCE934();
  }
}

uint64_t sub_225CA7C50(void *a1, void *a2, void *aBlock, void *a4)
{
  v4[2] = a4;
  v4[3] = _Block_copy(aBlock);
  v8 = a1;
  v9 = a2;
  a4;
  v10 = sub_225CCCFA4();
  v12 = v11;

  v4[4] = v10;
  v4[5] = v12;
  v13 = sub_225CCCFA4();
  v15 = v14;

  v4[6] = v13;
  v4[7] = v15;
  v16 = swift_task_alloc();
  v4[8] = v16;
  *v16 = v4;
  v16[1] = sub_225CA7D60;

  return sub_225CA7470(v10, v12, v13, v15);
}

uint64_t sub_225CA7D60()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *(*v1 + 16);
  v6 = *v1;

  v7 = v3[5];
  v8 = v3[4];
  sub_2259BEF00(v3[6], v3[7]);
  sub_2259BEF00(v8, v7);
  if (v2)
  {
    v9 = sub_225CCCCB4();

    v10 = v9;
    v11 = 0;
  }

  else
  {
    sub_225CCD124();
    v9 = sub_225CCE7F4();

    v11 = v9;
    v10 = 0;
  }

  v12 = v4[3];
  (v12)[2](v12, v11, v10);

  _Block_release(v12);
  v13 = *(v6 + 8);

  return v13();
}

uint64_t sub_225CA7F70()
{
  v1 = *(v0[4] + OBJC_IVAR____TtC13CoreIDVShared26IdentityManagementUIClient_connection);
  v2 = swift_task_alloc();
  v0[5] = v2;
  v2[2] = v1;
  v2[3] = &unk_225D02378;
  v2[4] = 0;
  v3 = swift_task_alloc();
  v0[6] = v3;
  v3[2] = 0;
  v3[3] = 0;
  v3[4] = v1;
  v4 = swift_task_alloc();
  v0[7] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B0E0);
  *v4 = v0;
  v4[1] = sub_225CA80B0;

  return MEMORY[0x282200830](v0 + 2, &unk_225D02380, v2, sub_225CB3324, v3, 0, 0, v5);
}

uint64_t sub_225CA80B0()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_225CB7F44;
  }

  else
  {

    v2 = sub_225CB7FF4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_225CA81D4(uint64_t a1, uint64_t *a2)
{
  v2[20] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7429B8);
  v2[21] = v4;
  v2[22] = *(v4 - 8);
  v5 = swift_task_alloc();
  v6 = *a2;
  v2[23] = v5;
  v2[24] = v6;

  return MEMORY[0x2822009F8](sub_225CA82A8, 0, 0);
}

uint64_t sub_225CA82A8()
{
  v1 = v0;
  v2 = v0;
  v3 = v0 + 2;
  v4 = v0 + 10;
  v5 = v0 + 18;
  v7 = v0[23];
  v6 = v0[24];
  v10 = v0 + 21;
  v8 = v0[21];
  v9 = v10[1];
  v1[2] = v2;
  v1[7] = v5;
  v1[3] = sub_225CA8458;
  swift_continuation_init();
  v1[17] = v8;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v1 + 14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B0E0);
  sub_225CCE914();
  (*(v9 + 32))(boxed_opaque_existential_1, v7, v8);
  v1[10] = MEMORY[0x277D85DD0];
  v1[11] = 1107296256;
  v1[12] = sub_225CA8538;
  v1[13] = &block_descriptor_776;
  [v6 retrieveBioBindingUnboundACLWithCompletionHandler_];
  (*(v9 + 8))(boxed_opaque_existential_1, v8);

  return MEMORY[0x282200938](v3);
}

uint64_t sub_225CA8458()
{

  return MEMORY[0x2822009F8](sub_225CB802C, 0, 0);
}

uint64_t sub_225CA8538(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a2)
  {
    v3 = a2;
    sub_225CCCFA4();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7429B8);
  return sub_225CCE934();
}

uint64_t sub_225CA8738(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_225CB8020;

  return sub_225CA7F50();
}

uint64_t sub_225CA8800()
{
  v1 = *(v0[4] + OBJC_IVAR____TtC13CoreIDVShared26IdentityManagementUIClient_connection);
  v2 = swift_task_alloc();
  v0[5] = v2;
  v2[2] = v1;
  v2[3] = &unk_225D02398;
  v2[4] = 0;
  v3 = swift_task_alloc();
  v0[6] = v3;
  v3[2] = 0;
  v3[3] = 0;
  v3[4] = v1;
  v4 = swift_task_alloc();
  v0[7] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B0E0);
  *v4 = v0;
  v4[1] = sub_225CA80B0;

  return MEMORY[0x282200830](v0 + 2, &unk_225D023A0, v2, sub_225CB803C, v3, 0, 0, v5);
}

uint64_t sub_225CA8940(uint64_t a1, uint64_t *a2)
{
  v2[20] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7429B8);
  v2[21] = v4;
  v2[22] = *(v4 - 8);
  v5 = swift_task_alloc();
  v6 = *a2;
  v2[23] = v5;
  v2[24] = v6;

  return MEMORY[0x2822009F8](sub_225CA8A14, 0, 0);
}

uint64_t sub_225CA8A14()
{
  v1 = v0;
  v2 = v0;
  v3 = v0 + 2;
  v4 = v0 + 10;
  v5 = v0 + 18;
  v7 = v0[23];
  v6 = v0[24];
  v10 = v0 + 21;
  v8 = v0[21];
  v9 = v10[1];
  v1[2] = v2;
  v1[7] = v5;
  v1[3] = sub_225CA8458;
  swift_continuation_init();
  v1[17] = v8;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v1 + 14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B0E0);
  sub_225CCE914();
  (*(v9 + 32))(boxed_opaque_existential_1, v7, v8);
  v1[10] = MEMORY[0x277D85DD0];
  v1[11] = 1107296256;
  v1[12] = sub_225CA8538;
  v1[13] = &block_descriptor_773;
  [v6 retrievePasscodeBindingUnboundACLWithCompletionHandler_];
  (*(v9 + 8))(boxed_opaque_existential_1, v8);

  return MEMORY[0x282200938](v3);
}

uint64_t sub_225CA8D38(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_225CB8020;

  return sub_225CA87E0();
}

uint64_t sub_225CA8E00()
{
  v1 = *(v0[4] + OBJC_IVAR____TtC13CoreIDVShared26IdentityManagementUIClient_connection);
  v2 = swift_task_alloc();
  v0[5] = v2;
  v2[2] = v1;
  v2[3] = &unk_225D023B0;
  v2[4] = 0;
  v3 = swift_task_alloc();
  v0[6] = v3;
  v3[2] = 0;
  v3[3] = 0;
  v3[4] = v1;
  v4 = swift_task_alloc();
  v0[7] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B0E0);
  *v4 = v0;
  v4[1] = sub_225CA8F40;

  return MEMORY[0x282200830](v0 + 2, &unk_225D023B8, v2, sub_225CB803C, v3, 0, 0, v5);
}

uint64_t sub_225CA8F40()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_225CA907C;
  }

  else
  {

    v2 = sub_225CA9064;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_225CA907C()
{
  v1 = *(v0 + 64);

  v2 = *(v0 + 8);

  return v2(0, 0xF000000000000000);
}

uint64_t sub_225CA90F8(uint64_t a1, uint64_t *a2)
{
  v2[20] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7429B8);
  v2[21] = v4;
  v2[22] = *(v4 - 8);
  v5 = swift_task_alloc();
  v6 = *a2;
  v2[23] = v5;
  v2[24] = v6;

  return MEMORY[0x2822009F8](sub_225CA91CC, 0, 0);
}

uint64_t sub_225CA91CC()
{
  v1 = v0;
  v2 = v0;
  v3 = v0 + 2;
  v4 = v0 + 10;
  v5 = v0 + 18;
  v7 = v0[23];
  v6 = v0[24];
  v10 = v0 + 21;
  v8 = v0[21];
  v9 = v10[1];
  v1[2] = v2;
  v1[7] = v5;
  v1[3] = sub_225CA937C;
  swift_continuation_init();
  v1[17] = v8;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v1 + 14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B0E0);
  sub_225CCE914();
  (*(v9 + 32))(boxed_opaque_existential_1, v7, v8);
  v1[10] = MEMORY[0x277D85DD0];
  v1[11] = 1107296256;
  v1[12] = sub_225CA8538;
  v1[13] = &block_descriptor_770;
  [v6 retrieveBoundACLWithCompletionHandler_];
  (*(v9 + 8))(boxed_opaque_existential_1, v8);

  return MEMORY[0x282200938](v3);
}

uint64_t sub_225CA937C()
{

  return MEMORY[0x2822009F8](sub_225CA945C, 0, 0);
}

uint64_t sub_225CA945C()
{
  **(v0 + 160) = *(v0 + 144);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_225CA9640(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_225CA96E8;

  return sub_225CA8DE0();
}

uint64_t sub_225CA96E8(uint64_t a1, unint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 16);
  v7 = *v2;

  if (a2 >> 60 == 15)
  {
    v8 = 0;
  }

  else
  {
    v8 = sub_225CCCF74();
    sub_2259B97A8(a1, a2);
  }

  v9 = *(v5 + 24);
  (v9)[2](v9, v8);

  _Block_release(v9);
  v10 = *(v7 + 8);

  return v10();
}

uint64_t sub_225CA9878()
{
  v1 = *(v0[2] + OBJC_IVAR____TtC13CoreIDVShared26IdentityManagementUIClient_connection);
  v2 = swift_task_alloc();
  v0[3] = v2;
  v2[2] = v1;
  v2[3] = &unk_225D023C8;
  v2[4] = 0;
  v3 = swift_task_alloc();
  v0[4] = v3;
  v3[2] = 0;
  v3[3] = 0;
  v3[4] = v1;
  v4 = swift_task_alloc();
  v0[5] = v4;
  *v4 = v0;
  v4[1] = sub_225CA99A4;
  v5 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x282200830](v4, &unk_225D023D0, v2, sub_225CB8034, v3, 0, 0, v5);
}

uint64_t sub_225CA99A4()
{
  *(*v1 + 48) = v0;

  if (v0)
  {
    v2 = sub_225CA9AC8;
  }

  else
  {

    v2 = sub_225A02EA0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_225CA9AC8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_225CA9B34(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73FD10);
  v2[18] = v4;
  v2[19] = *(v4 - 8);
  v5 = swift_task_alloc();
  v6 = *a2;
  v2[20] = v5;
  v2[21] = v6;

  return MEMORY[0x2822009F8](sub_225CA9C04, 0, 0);
}

uint64_t sub_225CA9C04()
{
  v1 = v0;
  v2 = v0;
  v3 = v0 + 2;
  v4 = v0 + 10;
  v6 = v0[20];
  v5 = v0[21];
  v9 = v0 + 18;
  v7 = v0[18];
  v8 = v9[1];
  v1[2] = v2;
  v1[3] = sub_225CA9DB0;
  swift_continuation_init();
  v1[17] = v7;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v1 + 14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AC48);
  sub_225CCE914();
  (*(v8 + 32))(boxed_opaque_existential_1, v6, v7);
  v1[10] = MEMORY[0x277D85DD0];
  v1[11] = 1107296256;
  v1[12] = sub_225BED200;
  v1[13] = &block_descriptor_766;
  [v5 deleteBoundACLWithCompletionHandler_];
  (*(v8 + 8))(boxed_opaque_existential_1, v7);

  return MEMORY[0x282200938](v3);
}

uint64_t sub_225CA9DB0()
{
  v1 = *(*v0 + 48);
  *(*v0 + 176) = v1;
  if (v1)
  {
    v2 = sub_225CA9F24;
  }

  else
  {
    v2 = sub_225CA9EC0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_225CA9EC0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_225CA9F24()
{
  swift_willThrow();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_225CAA110(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_225CAA1B8;

  return sub_225CA9858();
}

uint64_t sub_225CAA1B8()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *(*v1 + 16);
  v6 = *v1;

  v7 = *(v3 + 24);
  if (v2)
  {
    v8 = sub_225CCCCB4();

    (*(v7 + 16))(v7, v8);
  }

  else
  {
    (*(v7 + 16))(v7, 0);
  }

  _Block_release(*(v4 + 24));
  v9 = *(v6 + 8);

  return v9();
}

uint64_t sub_225CAA35C()
{
  v1 = *(v0[3] + OBJC_IVAR____TtC13CoreIDVShared26IdentityManagementUIClient_connection);
  v2 = swift_task_alloc();
  v0[4] = v2;
  v2[2] = v1;
  v2[3] = &unk_225D023E0;
  v2[4] = 0;
  v3 = swift_task_alloc();
  v0[5] = v3;
  v3[2] = 0;
  v3[3] = 0;
  v3[4] = v1;
  v4 = swift_task_alloc();
  v0[6] = v4;
  v5 = type metadata accessor for IdentityBindingDetails();
  *v4 = v0;
  v4[1] = sub_225CA2568;

  return MEMORY[0x282200830](v0 + 2, &unk_225D023F0, v2, sub_225CB34AC, v3, 0, 0, v5);
}

uint64_t sub_225CAA490(uint64_t a1, uint64_t *a2)
{
  v2[19] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7427A0);
  v2[20] = v4;
  v2[21] = *(v4 - 8);
  v5 = swift_task_alloc();
  v6 = *a2;
  v2[22] = v5;
  v2[23] = v6;

  return MEMORY[0x2822009F8](sub_225CAA564, 0, 0);
}

uint64_t sub_225CAA564()
{
  v1 = v0;
  v2 = v0;
  v3 = v0 + 2;
  v4 = v0 + 10;
  v5 = v0 + 18;
  v6 = v0[22];
  v12 = v0[23];
  v9 = v0 + 20;
  v7 = v0[20];
  v8 = v9[1];
  v1[2] = v2;
  v1[7] = v5;
  v1[3] = sub_225CA2944;
  swift_continuation_init();
  v1[17] = v7;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v1 + 14);
  type metadata accessor for IdentityBindingDetails();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AC48);
  sub_225CCE914();
  (*(v8 + 32))(boxed_opaque_existential_1, v6, v7);
  v1[10] = MEMORY[0x277D85DD0];
  v1[11] = 1107296256;
  v1[12] = sub_225CAA720;
  v1[13] = &block_descriptor_762;
  [v12 fetchBioBindingDetailsWithCompletionHandler_];
  (*(v8 + 8))(boxed_opaque_existential_1, v7);

  return MEMORY[0x282200938](v3);
}

uint64_t sub_225CAA8A8(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_225CB8014;

  return sub_225CAA33C();
}

uint64_t sub_225CAA970()
{
  v1 = *(v0[4] + OBJC_IVAR____TtC13CoreIDVShared26IdentityManagementUIClient_connection);
  v2 = swift_task_alloc();
  v0[5] = v2;
  v2[2] = v1;
  v2[3] = &unk_225D02400;
  v2[4] = 0;
  v3 = swift_task_alloc();
  v0[6] = v3;
  v3[2] = 0;
  v3[3] = 0;
  v3[4] = v1;
  v4 = swift_task_alloc();
  v0[7] = v4;
  *v4 = v0;
  v4[1] = sub_225CAAAA0;
  v5 = MEMORY[0x277D837D0];

  return MEMORY[0x282200830](v0 + 2, &unk_225D02410, v2, sub_225CB3580, v3, 0, 0, v5);
}

uint64_t sub_225CAAAA0()
{
  v2 = *v1;
  v2[8] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_225CAABEC, 0, 0);
  }

  else
  {

    v3 = v2[2];
    v4 = v2[3];
    v5 = v2[1];

    return v5(v3, v4);
  }
}

uint64_t sub_225CAABEC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_225CAAC58(uint64_t a1, uint64_t *a2)
{
  v2[20] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D742798);
  v2[21] = v4;
  v2[22] = *(v4 - 8);
  v5 = swift_task_alloc();
  v6 = *a2;
  v2[23] = v5;
  v2[24] = v6;

  return MEMORY[0x2822009F8](sub_225CAAD2C, 0, 0);
}

uint64_t sub_225CAAD2C()
{
  v1 = v0;
  v2 = v0;
  v3 = v0 + 2;
  v4 = v0 + 10;
  v5 = v0 + 18;
  v7 = v0[23];
  v6 = v0[24];
  v10 = v0 + 21;
  v8 = v0[21];
  v9 = v10[1];
  v1[2] = v2;
  v1[7] = v5;
  v1[3] = sub_225CAAEDC;
  swift_continuation_init();
  v1[17] = v8;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v1 + 14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AC48);
  sub_225CCE914();
  (*(v9 + 32))(boxed_opaque_existential_1, v7, v8);
  v1[10] = MEMORY[0x277D85DD0];
  v1[11] = 1107296256;
  v1[12] = sub_225CAB05C;
  v1[13] = &block_descriptor_756;
  [v6 fetchTermsAndConditionsWithCompletionHandler_];
  (*(v9 + 8))(boxed_opaque_existential_1, v8);

  return MEMORY[0x282200938](v3);
}

uint64_t sub_225CAAEDC()
{
  v1 = *(*v0 + 48);
  *(*v0 + 200) = v1;
  if (v1)
  {
    v2 = sub_225CA33E8;
  }

  else
  {
    v2 = sub_225CAAFEC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_225CAAFEC()
{
  v2 = v0[19];
  v1 = v0[20];
  *v1 = v0[18];
  v1[1] = v2;

  v3 = v0[1];

  return v3();
}

void sub_225CAB05C(uint64_t a1, uint64_t a2, void *a3)
{
  __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v4 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D742798);
    sub_225CCE924();
  }

  else
  {
    sub_225CCE474();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D742798);
    sub_225CCE934();
  }
}

uint64_t sub_225CAB27C(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_225CAB324;

  return sub_225CAA950();
}

uint64_t sub_225CAB324()
{
  v2 = v0;
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = *v1;

  if (v2)
  {
    v6 = sub_225CCCCB4();

    v7 = v6;
    v8 = 0;
  }

  else
  {
    v9 = sub_225CCE444();

    v8 = v9;
    v7 = 0;
    v6 = v9;
  }

  v10 = *(v3 + 24);
  (v10)[2](v10, v8, v7);

  _Block_release(v10);
  v11 = *(v5 + 8);

  return v11();
}

uint64_t sub_225CAB4B4(uint64_t a1, char a2)
{
  *(v3 + 72) = a2;
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  return MEMORY[0x2822009F8](sub_225CAB4D8, 0, 0);
}

uint64_t sub_225CAB4D8()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 16);
  v3 = *(*(v0 + 24) + OBJC_IVAR____TtC13CoreIDVShared26IdentityManagementUIClient_connection);
  v4 = swift_allocObject();
  *(v0 + 32) = v4;
  *(v4 + 16) = v2;
  *(v4 + 24) = v1;
  v5 = v2;
  v6 = swift_task_alloc();
  *(v0 + 40) = v6;
  v6[2] = v3;
  v6[3] = &unk_225D02428;
  v6[4] = v4;
  v7 = swift_task_alloc();
  *(v0 + 48) = v7;
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = v3;
  v8 = swift_task_alloc();
  *(v0 + 56) = v8;
  *v8 = v0;
  v8[1] = sub_225CAB630;
  v9 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x282200830](v8, &unk_225D02430, v6, sub_225CB8034, v7, 0, 0, v9);
}

uint64_t sub_225CAB630()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_225CB7FE4;
  }

  else
  {

    v2 = sub_225A02EA0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_225CAB768(uint64_t a1, uint64_t *a2, uint64_t a3, char a4)
{
  *(v4 + 192) = a4;
  *(v4 + 144) = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73FD10);
  *(v4 + 152) = v6;
  *(v4 + 160) = *(v6 - 8);
  v7 = swift_task_alloc();
  v8 = *a2;
  *(v4 + 168) = v7;
  *(v4 + 176) = v8;

  return MEMORY[0x2822009F8](sub_225CAB840, 0, 0);
}

uint64_t sub_225CAB840()
{
  v1 = v0;
  v2 = v0;
  v3 = v0 + 16;
  v4 = v0 + 80;
  v5 = *(v0 + 168);
  v13 = *(v0 + 176);
  v12 = *(v0 + 192);
  v8 = v0 + 152;
  v6 = *(v0 + 152);
  v7 = *(v8 + 8);
  v9 = v1[18];
  v1[2] = v2;
  v1[3] = sub_225CABA04;
  swift_continuation_init();
  v1[17] = v6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v1 + 14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AC48);
  sub_225CCE914();
  (*(v7 + 32))(boxed_opaque_existential_1, v5, v6);
  v1[10] = MEMORY[0x277D85DD0];
  v1[11] = 1107296256;
  v1[12] = sub_225BED200;
  v1[13] = &block_descriptor_750;
  [v13 uploadLivenessVideoWithLivenessVideoURL:v9 shouldScheduleUploads:v12 completionHandler:v4];
  (*(v7 + 8))(boxed_opaque_existential_1, v6);

  return MEMORY[0x282200938](v3);
}

uint64_t sub_225CABA04()
{
  v1 = *(*v0 + 48);
  *(*v0 + 184) = v1;
  if (v1)
  {
    v2 = sub_225CB7FD4;
  }

  else
  {
    v2 = sub_225CB8008;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_225CABCA4(void *a1, char a2, void *aBlock, void *a4)
{
  v4[2] = a1;
  v4[3] = a4;
  v4[4] = _Block_copy(aBlock);
  v8 = a1;
  a4;
  v9 = swift_task_alloc();
  v4[5] = v9;
  *v9 = v4;
  v9[1] = sub_225CB7FDC;

  return sub_225CAB4B4(v8, a2);
}

uint64_t sub_225CABD90()
{
  v1 = *(v0[3] + OBJC_IVAR____TtC13CoreIDVShared26IdentityManagementUIClient_connection);
  v2 = swift_task_alloc();
  v0[4] = v2;
  v2[2] = v1;
  v2[3] = &unk_225D02440;
  v2[4] = 0;
  v3 = swift_task_alloc();
  v0[5] = v3;
  v3[2] = 0;
  v3[3] = 0;
  v3[4] = v1;
  v4 = swift_task_alloc();
  v0[6] = v4;
  v5 = type metadata accessor for IdentityLivenessConfig();
  *v4 = v0;
  v4[1] = sub_225CA2568;

  return MEMORY[0x282200830](v0 + 2, &unk_225D02450, v2, sub_225CB370C, v3, 0, 0, v5);
}

uint64_t sub_225CABEC4(uint64_t a1, uint64_t *a2)
{
  v2[19] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D742790);
  v2[20] = v4;
  v2[21] = *(v4 - 8);
  v5 = swift_task_alloc();
  v6 = *a2;
  v2[22] = v5;
  v2[23] = v6;

  return MEMORY[0x2822009F8](sub_225CABF98, 0, 0);
}

uint64_t sub_225CABF98()
{
  v1 = v0;
  v2 = v0;
  v3 = v0 + 2;
  v4 = v0 + 10;
  v5 = v0 + 18;
  v6 = v0[22];
  v12 = v0[23];
  v9 = v0 + 20;
  v7 = v0[20];
  v8 = v9[1];
  v1[2] = v2;
  v1[7] = v5;
  v1[3] = sub_225CA2944;
  swift_continuation_init();
  v1[17] = v7;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v1 + 14);
  type metadata accessor for IdentityLivenessConfig();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AC48);
  sub_225CCE914();
  (*(v8 + 32))(boxed_opaque_existential_1, v6, v7);
  v1[10] = MEMORY[0x277D85DD0];
  v1[11] = 1107296256;
  v1[12] = sub_225CAC154;
  v1[13] = &block_descriptor_746;
  [v12 getLivenessConfigWithCompletionHandler_];
  (*(v8 + 8))(boxed_opaque_existential_1, v7);

  return MEMORY[0x282200938](v3);
}

void sub_225CAC168(uint64_t a1, void *a2, void *a3, uint64_t *a4)
{
  __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v7 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(a4);
    sub_225CCE924();
  }

  else if (a2)
  {
    v8 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(a4);
    sub_225CCE934();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_225CAC38C(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_225CAC434;

  return sub_225CABD70();
}

uint64_t sub_225CAC434(void *a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *(*v2 + 16);
  v7 = *v2;

  v8 = *(v5 + 24);
  if (v3)
  {
    v9 = sub_225CCCCB4();

    (v8)[2](v8, 0, v9);
    _Block_release(v8);
  }

  else
  {
    (v8)[2](v8, a1, 0);
    _Block_release(v8);
  }

  v10 = *(v7 + 8);

  return v10();
}

uint64_t sub_225CAC5D4(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  return MEMORY[0x2822009F8](sub_225CAC5F8, 0, 0);
}

uint64_t sub_225CAC5F8()
{
  v1 = v0[4];
  v2 = v0[3];
  v3 = *(v0[5] + OBJC_IVAR____TtC13CoreIDVShared26IdentityManagementUIClient_connection);
  v4 = swift_allocObject();
  v0[6] = v4;
  *(v4 + 16) = v2;
  *(v4 + 24) = v1;
  v5 = v2;
  v6 = swift_task_alloc();
  v0[7] = v6;
  v6[2] = v3;
  v6[3] = &unk_225D02468;
  v6[4] = v4;
  v7 = swift_task_alloc();
  v0[8] = v7;
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = v3;
  v8 = swift_task_alloc();
  v0[9] = v8;
  v9 = type metadata accessor for IdentityProofingDisplayInfo();
  *v8 = v0;
  v8[1] = sub_225CAC754;

  return MEMORY[0x282200830](v0 + 2, &unk_225D02470, v6, sub_225CB8038, v7, 0, 0, v9);
}

uint64_t sub_225CAC754()
{
  v2 = *v1;
  v2[10] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_225CB8000, 0, 0);
  }

  else
  {

    v3 = v2[2];
    v4 = v2[1];

    return v4(v3);
  }
}

uint64_t sub_225CAC8B8(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v4[20] = a3;
  v4[21] = a4;
  v4[19] = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7427E8);
  v4[22] = v6;
  v4[23] = *(v6 - 8);
  v7 = swift_task_alloc();
  v8 = *a2;
  v4[24] = v7;
  v4[25] = v8;

  return MEMORY[0x2822009F8](sub_225CAC990, 0, 0);
}

uint64_t sub_225CAC990()
{
  v1 = v0;
  v2 = v0;
  v3 = v0 + 2;
  v4 = v0 + 10;
  v5 = v0 + 18;
  v7 = v0[24];
  v6 = v0[25];
  v10 = v0 + 22;
  v8 = v0[22];
  v9 = v10[1];
  v14 = v1[21];
  v15 = v6;
  v13 = v1[20];
  v1[2] = v2;
  v1[7] = v5;
  v1[3] = sub_225CACB58;
  swift_continuation_init();
  v1[17] = v8;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v1 + 14);
  type metadata accessor for IdentityProofingDisplayInfo();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AC48);
  sub_225CCE914();
  (*(v9 + 32))(boxed_opaque_existential_1, v7, v8);
  v1[10] = MEMORY[0x277D85DD0];
  v1[11] = 1107296256;
  v1[12] = sub_225C9DCA8;
  v1[13] = &block_descriptor_740;
  [v15 fetchExtendedReviewDisplayInfoWithConfiguration:v13 proofingOptions:v14 completionHandler:v4];
  (*(v9 + 8))(boxed_opaque_existential_1, v8);

  return MEMORY[0x282200938](v3);
}

uint64_t sub_225CACB58()
{
  v1 = *(*v0 + 48);
  *(*v0 + 208) = v1;
  if (v1)
  {
    v2 = sub_225CB7F50;
  }

  else
  {
    v2 = sub_225CB8030;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_225CACDF4(void *a1, uint64_t a2, void *aBlock, void *a4)
{
  v4[2] = a1;
  v4[3] = a4;
  v4[4] = _Block_copy(aBlock);
  v8 = a1;
  a4;
  v9 = swift_task_alloc();
  v4[5] = v9;
  *v9 = v4;
  v9[1] = sub_225CB7FEC;

  return sub_225CAC5D4(v8, a2);
}

uint64_t sub_225CACEC0(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return MEMORY[0x2822009F8](sub_225CACEE0, 0, 0);
}

uint64_t sub_225CACEE0()
{
  v1 = v0[3];
  v2 = *(v0[4] + OBJC_IVAR____TtC13CoreIDVShared26IdentityManagementUIClient_connection);
  v3 = swift_allocObject();
  v0[5] = v3;
  *(v3 + 16) = v1;
  v4 = v1;
  v5 = swift_task_alloc();
  v0[6] = v5;
  v5[2] = v2;
  v5[3] = &unk_225D02488;
  v5[4] = v3;
  v6 = swift_task_alloc();
  v0[7] = v6;
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = v2;
  v7 = swift_task_alloc();
  v0[8] = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D742780);
  *v7 = v0;
  v7[1] = sub_225C9F7E8;

  return MEMORY[0x282200830](v0 + 2, &unk_225D02498, v5, sub_225CB3944, v6, 0, 0, v8);
}

uint64_t sub_225CAD044(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3[19] = a1;
  v3[20] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D742788);
  v3[21] = v5;
  v3[22] = *(v5 - 8);
  v6 = swift_task_alloc();
  v7 = *a2;
  v3[23] = v6;
  v3[24] = v7;

  return MEMORY[0x2822009F8](sub_225CAD118, 0, 0);
}

uint64_t sub_225CAD118()
{
  v1 = v0;
  v2 = v0;
  v3 = v0 + 2;
  v4 = v0 + 10;
  v5 = v0 + 18;
  v7 = v0[23];
  v6 = v0[24];
  v10 = v0 + 21;
  v8 = v0[21];
  v9 = v10[1];
  v13 = v1[20];
  v14 = v6;
  v1[2] = v2;
  v1[7] = v5;
  v1[3] = sub_225C9FBE0;
  swift_continuation_init();
  v1[17] = v8;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v1 + 14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D742780);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AC48);
  sub_225CCE914();
  (*(v9 + 32))(boxed_opaque_existential_1, v7, v8);
  v1[10] = MEMORY[0x277D85DD0];
  v1[11] = 1107296256;
  v1[12] = sub_225CAD2E4;
  v1[13] = &block_descriptor_736;
  [v14 fetchBiomeFedStatsUIWithConfiguration:v13 completionHandler:v4];
  (*(v9 + 8))(boxed_opaque_existential_1, v8);

  return MEMORY[0x282200938](v3);
}

void sub_225CAD2E4(uint64_t a1, void *a2, void *a3)
{
  __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v5 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D742788);
    sub_225CCE924();
  }

  else
  {
    v6 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D742788);
    sub_225CCE934();
  }
}

uint64_t sub_225CAD514(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_225C9FF50;

  return sub_225CACEC0(v6);
}

uint64_t sub_225CAD5D8(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return MEMORY[0x2822009F8](sub_225CAD5F8, 0, 0);
}

uint64_t sub_225CAD5F8()
{
  v1 = v0[3];
  v2 = *(v0[4] + OBJC_IVAR____TtC13CoreIDVShared26IdentityManagementUIClient_connection);
  v3 = swift_allocObject();
  v0[5] = v3;
  *(v3 + 16) = v1;
  v4 = v1;
  v5 = swift_task_alloc();
  v0[6] = v5;
  v5[2] = v2;
  v5[3] = &unk_225D024B8;
  v5[4] = v3;
  v6 = swift_task_alloc();
  v0[7] = v6;
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = v2;
  v7 = swift_task_alloc();
  v0[8] = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D742780);
  *v7 = v0;
  v7[1] = sub_225C9F7E8;

  return MEMORY[0x282200830](v0 + 2, &unk_225D024C0, v5, sub_225CB8040, v6, 0, 0, v8);
}

uint64_t sub_225CAD75C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3[19] = a1;
  v3[20] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D742788);
  v3[21] = v5;
  v3[22] = *(v5 - 8);
  v6 = swift_task_alloc();
  v7 = *a2;
  v3[23] = v6;
  v3[24] = v7;

  return MEMORY[0x2822009F8](sub_225CAD830, 0, 0);
}

uint64_t sub_225CAD830()
{
  v1 = v0;
  v2 = v0;
  v3 = v0 + 2;
  v4 = v0 + 10;
  v5 = v0 + 18;
  v7 = v0[23];
  v6 = v0[24];
  v10 = v0 + 21;
  v8 = v0[21];
  v9 = v10[1];
  v13 = v1[20];
  v14 = v6;
  v1[2] = v2;
  v1[7] = v5;
  v1[3] = sub_225C9FBE0;
  swift_continuation_init();
  v1[17] = v8;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v1 + 14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D742780);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AC48);
  sub_225CCE914();
  (*(v9 + 32))(boxed_opaque_existential_1, v7, v8);
  v1[10] = MEMORY[0x277D85DD0];
  v1[11] = 1107296256;
  v1[12] = sub_225CAD2E4;
  v1[13] = &block_descriptor_730;
  [v14 fetchLivenessConsentOptinUIWithConfiguration:v13 completionHandler:v4];
  (*(v9 + 8))(boxed_opaque_existential_1, v8);

  return MEMORY[0x282200938](v3);
}

uint64_t sub_225CADB84(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_225CB7FEC;

  return sub_225CAD5D8(v6);
}

uint64_t sub_225CADC48(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 40) = a5;
  *(v6 + 48) = v5;
  *(v6 + 24) = a2;
  *(v6 + 32) = a4;
  *(v6 + 96) = a3;
  *(v6 + 16) = a1;
  return MEMORY[0x2822009F8](sub_225CADC74, 0, 0);
}

uint64_t sub_225CADC74()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 96);
  v5 = *(v0 + 16);
  v6 = *(*(v0 + 48) + OBJC_IVAR____TtC13CoreIDVShared26IdentityManagementUIClient_connection);
  v7 = swift_allocObject();
  *(v0 + 56) = v7;
  *(v7 + 16) = v5;
  *(v7 + 24) = v2;
  *(v7 + 32) = v4;
  *(v7 + 40) = v3;
  *(v7 + 48) = v1;

  v8 = swift_task_alloc();
  *(v0 + 64) = v8;
  v8[2] = v6;
  v8[3] = &unk_225D024D8;
  v8[4] = v7;
  v9 = swift_task_alloc();
  *(v0 + 72) = v9;
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = v6;
  v10 = swift_task_alloc();
  *(v0 + 80) = v10;
  *v10 = v0;
  v10[1] = sub_225C9ED2C;
  v11 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x282200830](v10, &unk_225D024E0, v8, sub_225CB8034, v9, 0, 0, v11);
}

uint64_t sub_225CADDEC(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 160) = a6;
  *(v7 + 168) = a7;
  *(v7 + 224) = a5;
  *(v7 + 144) = a3;
  *(v7 + 152) = a4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73FD10);
  *(v7 + 176) = v9;
  *(v7 + 184) = *(v9 - 8);
  v10 = swift_task_alloc();
  v11 = *a2;
  *(v7 + 192) = v10;
  *(v7 + 200) = v11;

  return MEMORY[0x2822009F8](sub_225CADEC8, 0, 0);
}

uint64_t sub_225CADEC8()
{
  v1 = v0;
  v2 = v0 + 2;
  v3 = v0 + 10;
  v5 = v0[24];
  v4 = v0[25];
  v8 = v0 + 22;
  v6 = v0[22];
  v7 = v8[1];
  v15 = v4;
  v16 = v1[21];
  v14 = v1[20];
  v13 = *(v1 + 224);
  v12 = v1[18];
  v9 = sub_225CCE7F4();
  v1[26] = v9;
  v1[2] = v1;
  v1[3] = sub_225C9F10C;
  swift_continuation_init();
  v1[17] = v6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v1 + 14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AC48);
  sub_225CCE914();
  (*(v7 + 32))(boxed_opaque_existential_1, v5, v6);
  v1[10] = MEMORY[0x277D85DD0];
  v1[11] = 1107296256;
  v1[12] = sub_225BED200;
  v1[13] = &block_descriptor_726;
  [v15 saveIdentityProofingDataSharingUserConsentWithDocumentType:v12 axSettings:v9 consent:v13 consentType:v14 proofingOptions:v16 completionHandler:v3];
  (*(v7 + 8))(boxed_opaque_existential_1, v6);

  return MEMORY[0x282200938](v2);
}

uint64_t sub_225CAE264(uint64_t a1, int a2, char a3, uint64_t a4, uint64_t a5, void *aBlock, void *a7)
{
  v7[2] = a7;
  v7[3] = _Block_copy(aBlock);
  v13 = sub_225CCE814();
  v7[4] = v13;
  a7;
  v14 = swift_task_alloc();
  v7[5] = v14;
  *v14 = v7;
  v14[1] = sub_225CAE368;

  return sub_225CADC48(a1, v13, a3, a4, a5);
}

uint64_t sub_225CAE368()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *(*v1 + 16);
  v6 = *v1;

  v7 = *(v3 + 24);
  if (v2)
  {
    v8 = sub_225CCCCB4();

    (*(v7 + 16))(v7, v8);
  }

  else
  {
    (*(v7 + 16))(*(v3 + 24), 0);
  }

  _Block_release(*(v4 + 24));
  v9 = *(v6 + 8);

  return v9();
}

uint64_t sub_225CAE508(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_225CAE52C, 0, 0);
}

uint64_t sub_225CAE52C()
{
  v1 = v0[3];
  v2 = v0[2];
  v3 = *(v0[4] + OBJC_IVAR____TtC13CoreIDVShared26IdentityManagementUIClient_connection);
  v4 = swift_allocObject();
  v0[5] = v4;
  *(v4 + 16) = v2;
  *(v4 + 24) = v1;
  v5 = v2;
  v6 = swift_task_alloc();
  v0[6] = v6;
  v6[2] = v3;
  v6[3] = &unk_225D024F8;
  v6[4] = v4;
  v7 = swift_task_alloc();
  v0[7] = v7;
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = v3;
  v8 = swift_task_alloc();
  v0[8] = v8;
  *v8 = v0;
  v8[1] = sub_225CAE680;
  v9 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x282200830](v8, &unk_225D02500, v6, sub_225CB8034, v7, 0, 0, v9);
}

uint64_t sub_225CAE680()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_225CB7FE8;
  }

  else
  {

    v2 = sub_225A02EA0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_225CAE7B8(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v4[18] = a3;
  v4[19] = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73FD10);
  v4[20] = v6;
  v4[21] = *(v6 - 8);
  v7 = swift_task_alloc();
  v8 = *a2;
  v4[22] = v7;
  v4[23] = v8;

  return MEMORY[0x2822009F8](sub_225CAE88C, 0, 0);
}

uint64_t sub_225CAE88C()
{
  v1 = v0;
  v2 = v0;
  v3 = v0 + 2;
  v4 = v0 + 10;
  v6 = v0[22];
  v5 = v0[23];
  v9 = v0 + 20;
  v7 = v0[20];
  v8 = v9[1];
  v10 = v1[18];
  v13 = v1[19];
  v14 = v5;
  v1[2] = v2;
  v1[3] = sub_225CAEA44;
  swift_continuation_init();
  v1[17] = v7;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v1 + 14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AC48);
  sub_225CCE914();
  (*(v8 + 32))(boxed_opaque_existential_1, v6, v7);
  v1[10] = MEMORY[0x277D85DD0];
  v1[11] = 1107296256;
  v1[12] = sub_225BED200;
  v1[13] = &block_descriptor_722;
  [v14 clearDataAfterTerminalProofingStateWithConfiguration:v10 proofingOptions:v13 completionHandler:v4];
  (*(v8 + 8))(boxed_opaque_existential_1, v7);

  return MEMORY[0x282200938](v3);
}

uint64_t sub_225CAEA44()
{
  v1 = *(*v0 + 48);
  *(*v0 + 192) = v1;
  if (v1)
  {
    v2 = sub_225CB7F4C;
  }

  else
  {
    v2 = sub_225CB800C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_225CAECE0(void *a1, uint64_t a2, void *aBlock, void *a4)
{
  v4[2] = a1;
  v4[3] = a4;
  v4[4] = _Block_copy(aBlock);
  v8 = a1;
  a4;
  v9 = swift_task_alloc();
  v4[5] = v9;
  *v9 = v4;
  v9[1] = sub_225CB7FDC;

  return sub_225CAE508(v8, a2);
}

void sub_225CAEDAC()
{
  v1 = v0;
  v2 = sub_225CCD954();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28105B910 != -1)
  {
    swift_once();
  }

  v7 = off_28105B918;
  v8 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
  v9 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((off_28105B918 + v9));
  (*(v3 + 16))(v6, &v7[v8], v2);
  os_unfair_lock_unlock(&v7[v9]);
  v10 = sub_225CCD934();
  v11 = sub_225CCED04();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_2259A7000, v10, v11, "IdentityManagementUIClient invalidating server connection", v12, 2u);
    MEMORY[0x22AA6F950](v12, -1, -1);
  }

  (*(v3 + 8))(v6, v2);
  v13 = *(*(v1 + OBJC_IVAR____TtC13CoreIDVShared26IdentityManagementUIClient_connection) + 16);
  os_unfair_lock_lock((v13 + 24));
  [*(v13 + 16) invalidate];
  os_unfair_lock_unlock((v13 + 24));
}

uint64_t sub_225CAF028()
{
  v1 = *(v0[5] + OBJC_IVAR____TtC13CoreIDVShared26IdentityManagementUIClient_connection);
  v2 = swift_task_alloc();
  v0[6] = v2;
  v2[2] = v1;
  v2[3] = &unk_225D02510;
  v2[4] = 0;
  v3 = swift_task_alloc();
  v0[7] = v3;
  v3[2] = 0;
  v3[3] = 0;
  v3[4] = v1;
  v4 = swift_task_alloc();
  v0[8] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7427F0);
  *v4 = v0;
  v4[1] = sub_225CAF168;

  return MEMORY[0x282200830](v0 + 2, &unk_225D02088, v2, sub_225C9C1AC, v3, 0, 0, v5);
}

uint64_t sub_225CAF168()
{
  v2 = *v1;
  v2[9] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_225CAF2B8, 0, 0);
  }

  else
  {

    v3 = v2[2];
    v4 = v2[3];
    v5 = v2[4];
    v6 = v2[1];

    return v6(v3, v4, v5);
  }
}

uint64_t sub_225CAF2B8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_225CAF324(uint64_t a1, uint64_t *a2)
{
  v2[21] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7427F8);
  v2[22] = v4;
  v2[23] = *(v4 - 8);
  v5 = swift_task_alloc();
  v6 = *a2;
  v2[24] = v5;
  v2[25] = v6;

  return MEMORY[0x2822009F8](sub_225CAF3F8, 0, 0);
}

uint64_t sub_225CAF3F8()
{
  v1 = v0;
  v2 = v0;
  v3 = v0 + 2;
  v4 = v0 + 10;
  v5 = v0 + 18;
  v6 = v0[24];
  v12 = v0[25];
  v9 = v0 + 22;
  v7 = v0[22];
  v8 = v9[1];
  v1[2] = v2;
  v1[7] = v5;
  v1[3] = sub_225C9BA4C;
  swift_continuation_init();
  v1[17] = v7;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v1 + 14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7427F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AC48);
  sub_225CCE914();
  (*(v8 + 32))(boxed_opaque_existential_1, v6, v7);
  v1[10] = MEMORY[0x277D85DD0];
  v1[11] = 1107296256;
  v1[12] = sub_225C9C540;
  v1[13] = &block_descriptor_718;
  [v12 globalAuthACLInfoWithCompletionHandler_];
  (*(v8 + 8))(boxed_opaque_existential_1, v7);

  return MEMORY[0x282200938](v3);
}

uint64_t sub_225CAF734(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_225CAF7DC;

  return sub_225CAF008();
}

uint64_t sub_225CAF7DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v8 = *v4;
  v9 = *(*v4 + 16);
  v10 = *v4;

  v11 = *(v8 + 24);
  if (v3)
  {
    v12 = sub_225CCCCB4();

    (v11)[2](v11, 0, 0, 0, v12);
    _Block_release(v11);
  }

  else
  {
    sub_225CCD124();
    v13 = sub_225CCE7F4();
    (v11)[2](v11, v13, a2, a3, 0);

    _Block_release(v11);
  }

  v14 = *(v10 + 8);

  return v14();
}

uint64_t sub_225CAF9BC(uint64_t a1, uint64_t a2)
{
  v3[5] = a2;
  v3[6] = v2;
  v3[4] = a1;
  return MEMORY[0x2822009F8](sub_225CAF9E0, 0, 0);
}

uint64_t sub_225CAF9E0()
{
  v1 = v0[5];
  v2 = v0[4];
  v3 = *(v0[6] + OBJC_IVAR____TtC13CoreIDVShared26IdentityManagementUIClient_connection);
  v4 = swift_allocObject();
  v0[7] = v4;
  *(v4 + 16) = v2;
  *(v4 + 24) = v1;
  v5 = v2;
  v6 = swift_task_alloc();
  v0[8] = v6;
  v6[2] = v3;
  v6[3] = &unk_225D02528;
  v6[4] = v4;
  v7 = swift_task_alloc();
  v0[9] = v7;
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = v3;
  v8 = swift_task_alloc();
  v0[10] = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73E130);
  *v8 = v0;
  v8[1] = sub_225CAFB48;

  return MEMORY[0x282200830](v0 + 2, &unk_225D02538, v6, sub_225CB3D08, v7, 0, 0, v9);
}

uint64_t sub_225CAFB48()
{
  v2 = *v1;
  v2[11] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_225CAFCA8, 0, 0);
  }

  else
  {

    v3 = v2[2];
    v4 = v2[3];
    v5 = v2[1];

    return v5(v3, v4);
  }
}

uint64_t sub_225CAFCA8()
{
  v1 = *(v0 + 88);

  v2 = *(v0 + 8);

  return v2(0, 0);
}

uint64_t sub_225CAFD38(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v4[21] = a3;
  v4[22] = a4;
  v4[20] = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7429B0);
  v4[23] = v6;
  v4[24] = *(v6 - 8);
  v7 = swift_task_alloc();
  v8 = *a2;
  v4[25] = v7;
  v4[26] = v8;

  return MEMORY[0x2822009F8](sub_225CAFE10, 0, 0);
}

uint64_t sub_225CAFE10()
{
  v1 = v0;
  v2 = v0;
  v3 = v0 + 2;
  v4 = v0 + 10;
  v5 = v0 + 18;
  v7 = v0[25];
  v6 = v0[26];
  v10 = v0 + 23;
  v8 = v0[23];
  v9 = v10[1];
  v11 = v1[21];
  v14 = v1[22];
  v15 = v6;
  v1[2] = v2;
  v1[7] = v5;
  v1[3] = sub_225CAFFCC;
  swift_continuation_init();
  v1[17] = v8;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v1 + 14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73E130);
  sub_225CCE914();
  (*(v9 + 32))(boxed_opaque_existential_1, v7, v8);
  v1[10] = MEMORY[0x277D85DD0];
  v1[11] = 1107296256;
  v1[12] = sub_225CB011C;
  v1[13] = &block_descriptor_16;
  [v15 fetchAnalyticsSessionIDWithConfiguration:v11 proofingOptions:v14 completionHandler:v4];
  (*(v9 + 8))(boxed_opaque_existential_1, v8);

  return MEMORY[0x282200938](v3);
}

uint64_t sub_225CAFFCC()
{

  return MEMORY[0x2822009F8](sub_225CB00AC, 0, 0);
}

uint64_t sub_225CB00AC()
{
  **(v0 + 160) = *(v0 + 144);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_225CB011C(uint64_t a1, uint64_t a2)
{
  __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a2)
  {
    sub_225CCE474();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7429B0);
  return sub_225CCE934();
}

uint64_t sub_225CB031C(void *a1, uint64_t a2, void *aBlock, void *a4)
{
  v4[2] = a1;
  v4[3] = a4;
  v4[4] = _Block_copy(aBlock);
  v8 = a1;
  a4;
  v9 = swift_task_alloc();
  v4[5] = v9;
  *v9 = v4;
  v9[1] = sub_225CB03E8;

  return sub_225CAF9BC(v8, a2);
}

uint64_t sub_225CB03E8(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v5 = *(*v2 + 24);
  v6 = *(*v2 + 16);
  v7 = *v2;

  if (a2)
  {
    v8 = sub_225CCE444();
  }

  else
  {
    v8 = 0;
  }

  v9 = *(v4 + 32);
  (v9)[2](v9, v8);

  _Block_release(v9);
  v10 = *(v7 + 8);

  return v10();
}

id IdentityManagementUIClient.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_225CB0600(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_225CB0624, 0, 0);
}

uint64_t sub_225CB0624()
{
  v1 = *(v0[3] + 16);
  os_unfair_lock_lock((v1 + 24));
  v2 = *(v1 + 16);
  v0[6] = v2;
  v2;
  os_unfair_lock_unlock((v1 + 24));
  v3 = swift_task_alloc();
  v0[7] = v3;
  *v3 = v0;
  v3[1] = sub_225CB06F8;
  v5 = v0[4];
  v4 = v0[5];

  return sub_225C75CC8(v5, v4);
}

uint64_t sub_225CB06F8(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  *(*v2 + 64) = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_225C92B88, 0, 0);
  }

  else
  {
    v6 = *(v4 + 16);

    *v6 = a1;
    v7 = *(v5 + 8);

    return v7();
  }
}

uint64_t sub_225CB0858(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_225CB087C, 0, 0);
}

uint64_t sub_225CB087C()
{
  v1 = *(v0[3] + 16);
  os_unfair_lock_lock((v1 + 24));
  v2 = *(v1 + 16);
  v0[6] = v2;
  v2;
  os_unfair_lock_unlock((v1 + 24));
  v3 = swift_task_alloc();
  v0[7] = v3;
  *v3 = v0;
  v3[1] = sub_225CB0950;
  v5 = v0[4];
  v4 = v0[5];

  return sub_225C75F44(v5, v4);
}

uint64_t sub_225CB0950(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  *(*v2 + 64) = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_225C7B750, 0, 0);
  }

  else
  {
    v6 = *(v4 + 16);

    *v6 = a1;
    v7 = *(v5 + 8);

    return v7();
  }
}

uint64_t sub_225CB0AB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_225CB0AD4, 0, 0);
}

uint64_t sub_225CB0AD4()
{
  v1 = *(v0[3] + 16);
  os_unfair_lock_lock((v1 + 24));
  v2 = *(v1 + 16);
  v0[6] = v2;
  v2;
  os_unfair_lock_unlock((v1 + 24));
  v3 = swift_task_alloc();
  v0[7] = v3;
  *v3 = v0;
  v3[1] = sub_225CB06F8;
  v5 = v0[4];
  v4 = v0[5];

  return sub_225C760A4(v5, v4);
}

uint64_t sub_225CB0BA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_225CB0BCC, 0, 0);
}

uint64_t sub_225CB0BCC()
{
  v1 = *(v0[3] + 16);
  os_unfair_lock_lock((v1 + 24));
  v2 = *(v1 + 16);
  v0[6] = v2;
  v2;
  os_unfair_lock_unlock((v1 + 24));
  v3 = swift_task_alloc();
  v0[7] = v3;
  *v3 = v0;
  v3[1] = sub_225CB06F8;
  v5 = v0[4];
  v4 = v0[5];

  return sub_225C76204(v5, v4);
}

uint64_t sub_225CB0CA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_225CB0CC4, 0, 0);
}

uint64_t sub_225CB0CC4()
{
  v1 = *(v0[3] + 16);
  os_unfair_lock_lock((v1 + 24));
  v2 = *(v1 + 16);
  v0[6] = v2;
  v2;
  os_unfair_lock_unlock((v1 + 24));
  v3 = swift_task_alloc();
  v0[7] = v3;
  *v3 = v0;
  v3[1] = sub_225CB06F8;
  v5 = v0[4];
  v4 = v0[5];

  return sub_225C76364(v5, v4);
}

uint64_t sub_225CB0D98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_225CB0DBC, 0, 0);
}

uint64_t sub_225CB0DBC()
{
  v1 = *(v0[3] + 16);
  os_unfair_lock_lock((v1 + 24));
  v2 = *(v1 + 16);
  v0[6] = v2;
  v2;
  os_unfair_lock_unlock((v1 + 24));
  v3 = swift_task_alloc();
  v0[7] = v3;
  *v3 = v0;
  v3[1] = sub_225CB06F8;
  v5 = v0[4];
  v4 = v0[5];

  return sub_225C764C4(v5, v4);
}

uint64_t sub_225CB0E90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_225CB0EB4, 0, 0);
}

uint64_t sub_225CB0EB4()
{
  v1 = *(v0[3] + 16);
  os_unfair_lock_lock((v1 + 24));
  v2 = *(v1 + 16);
  v0[6] = v2;
  v2;
  os_unfair_lock_unlock((v1 + 24));
  v3 = swift_task_alloc();
  v0[7] = v3;
  *v3 = v0;
  v3[1] = sub_225CB06F8;
  v5 = v0[4];
  v4 = v0[5];

  return sub_225C76624(v5, v4);
}

uint64_t sub_225CB0F88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_225CB0FAC, 0, 0);
}

uint64_t sub_225CB0FAC()
{
  v1 = *(v0[3] + 16);
  os_unfair_lock_lock((v1 + 24));
  v2 = *(v1 + 16);
  v0[6] = v2;
  v2;
  os_unfair_lock_unlock((v1 + 24));
  v3 = swift_task_alloc();
  v0[7] = v3;
  *v3 = v0;
  v3[1] = sub_225CB1080;
  v5 = v0[4];
  v4 = v0[5];

  return sub_225C76784(v5, v4);
}

uint64_t sub_225CB1080(char a1)
{
  v4 = *v2;
  v5 = *v2;
  *(*v2 + 64) = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_225C92B88, 0, 0);
  }

  else
  {
    v6 = *(v4 + 16);

    *v6 = a1 & 1;
    v7 = *(v5 + 8);

    return v7();
  }
}

uint64_t sub_225CB11E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_225CB1208, 0, 0);
}

uint64_t sub_225CB1208()
{
  v1 = *(v0[3] + 16);
  os_unfair_lock_lock((v1 + 24));
  v2 = *(v1 + 16);
  v0[6] = v2;
  v2;
  os_unfair_lock_unlock((v1 + 24));
  v3 = swift_task_alloc();
  v0[7] = v3;
  *v3 = v0;
  v3[1] = sub_225CB06F8;
  v5 = v0[4];
  v4 = v0[5];

  return sub_225C769FC(v5, v4);
}

uint64_t sub_225CB12DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_225CB1300, 0, 0);
}

uint64_t sub_225CB1300()
{
  v1 = *(v0[3] + 16);
  os_unfair_lock_lock((v1 + 24));
  v2 = *(v1 + 16);
  v0[6] = v2;
  v2;
  os_unfair_lock_unlock((v1 + 24));
  v3 = swift_task_alloc();
  v0[7] = v3;
  *v3 = v0;
  v3[1] = sub_225CB06F8;
  v5 = v0[4];
  v4 = v0[5];

  return sub_225C76B58(v5, v4);
}

uint64_t sub_225CB13D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_225CB13F8, 0, 0);
}

uint64_t sub_225CB13F8()
{
  v1 = *(v0[3] + 16);
  os_unfair_lock_lock((v1 + 24));
  v2 = *(v1 + 16);
  v0[6] = v2;
  v2;
  os_unfair_lock_unlock((v1 + 24));
  v3 = swift_task_alloc();
  v0[7] = v3;
  *v3 = v0;
  v3[1] = sub_225CB06F8;
  v5 = v0[4];
  v4 = v0[5];

  return sub_225C76E30(v5, v4);
}

uint64_t sub_225CB14CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_225CB14F0, 0, 0);
}

uint64_t sub_225CB14F0()
{
  v1 = *(v0[3] + 16);
  os_unfair_lock_lock((v1 + 24));
  v2 = *(v1 + 16);
  v0[6] = v2;
  v2;
  os_unfair_lock_unlock((v1 + 24));
  v3 = swift_task_alloc();
  v0[7] = v3;
  *v3 = v0;
  v3[1] = sub_225CB15C4;
  v5 = v0[4];
  v4 = v0[5];

  return sub_225C76F90(v5, v4);
}

uint64_t sub_225CB15C4(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *v3;
  *(*v3 + 64) = v2;

  if (v2)
  {

    return MEMORY[0x2822009F8](sub_225C92B88, 0, 0);
  }

  else
  {
    v8 = *(v6 + 16);

    *v8 = a1;
    v8[1] = a2;
    v9 = *(v7 + 8);

    return v9();
  }
}

uint64_t sub_225CB1734(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_225CB1758, 0, 0);
}

uint64_t sub_225CB1758()
{
  v1 = *(v0[3] + 16);
  os_unfair_lock_lock((v1 + 24));
  v2 = *(v1 + 16);
  v0[6] = v2;
  v2;
  os_unfair_lock_unlock((v1 + 24));
  v3 = swift_task_alloc();
  v0[7] = v3;
  *v3 = v0;
  v3[1] = sub_225CB06F8;
  v5 = v0[4];
  v4 = v0[5];

  return sub_225C77208(v5, v4);
}

uint64_t sub_225CB182C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_225CB1850, 0, 0);
}

uint64_t sub_225CB1850()
{
  v1 = *(v0[3] + 16);
  os_unfair_lock_lock((v1 + 24));
  v2 = *(v1 + 16);
  v0[6] = v2;
  v2;
  os_unfair_lock_unlock((v1 + 24));
  v3 = swift_task_alloc();
  v0[7] = v3;
  *v3 = v0;
  v3[1] = sub_225CB06F8;
  v5 = v0[4];
  v4 = v0[5];

  return sub_225C77368(v5, v4);
}

uint64_t sub_225CB1924(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_225CB1948, 0, 0);
}

uint64_t sub_225CB1948()
{
  v1 = *(v0[3] + 16);
  os_unfair_lock_lock((v1 + 24));
  v2 = *(v1 + 16);
  v0[6] = v2;
  v2;
  os_unfair_lock_unlock((v1 + 24));
  v3 = swift_task_alloc();
  v0[7] = v3;
  *v3 = v0;
  v3[1] = sub_225CB15C4;
  v5 = v0[4];
  v4 = v0[5];

  return sub_225C774D4(v5, v4);
}

id sub_225CB1A1C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_225CCD954();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28105B910 != -1)
  {
    swift_once();
  }

  v9 = off_28105B918;
  v10 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
  v11 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((off_28105B918 + v11));
  (*(v5 + 16))(v8, &v9[v10], v4);
  os_unfair_lock_unlock(&v9[v11]);
  v12 = sub_225CCD934();
  v13 = sub_225CCED04();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_2259A7000, v12, v13, "IdentityManagementUIClient init", v14, 2u);
    MEMORY[0x22AA6F950](v14, -1, -1);
  }

  (*(v5 + 8))(v8, v4);
  v15 = _s13CoreIDVShared27IdentityManagementInterfaceC9interfaceSo14NSXPCInterfaceCyFZ_0();
  v16 = [objc_opt_self() interfaceWithProtocol_];
  if (a1)
  {
    ObjectType = swift_getObjectType();
    v18 = a1;
  }

  else
  {
    v18 = 0;
    ObjectType = 0;
    v37[1] = 0;
    v37[2] = 0;
  }

  v37[0] = v18;
  v37[3] = ObjectType;
  v19 = objc_allocWithZone(MEMORY[0x277CCAE80]);
  swift_unknownObjectRetain();
  v20 = sub_225CCE444();
  v21 = [v19 initWithMachServiceName:v20 options:4096];

  sub_225C7B258(v37, v36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D742998);
  v22 = swift_allocObject();
  [v21 setRemoteObjectInterface_];
  [v21 setInvalidationHandler_];
  [v21 setInterruptionHandler_];
  [v21 setExportedInterface_];
  sub_225C7B258(v36, v34);
  v23 = v35;
  if (v35)
  {
    v24 = __swift_project_boxed_opaque_existential_1(v34, v35);
    v25 = *(v23 - 8);
    MEMORY[0x28223BE20](v24, v24);
    v27 = &v33 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v25 + 16))(v27);
    v28 = sub_225CCF924();
    (*(v25 + 8))(v27, v23);
    __swift_destroy_boxed_opaque_existential_0(v34);
  }

  else
  {
    v28 = 0;
  }

  [v21 setExportedObject_];
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D742758);
  v29 = swift_allocObject();
  *(v29 + 24) = 0;
  *(v29 + 16) = v21;
  v22[2] = v29;
  v22[3] = sub_225C9C684;
  v22[4] = 0;
  v30 = v21;
  [v30 activate];

  sub_2259CB640(v36, &qword_27D73DD90);
  sub_2259CB640(v37, &qword_27D73DD90);
  *&v2[OBJC_IVAR____TtC13CoreIDVShared26IdentityManagementUIClient_connection] = v22;
  v31 = type metadata accessor for IdentityManagementUIClient();
  v33.receiver = v2;
  v33.super_class = v31;
  return objc_msgSendSuper2(&v33, sel_init);
}

uint64_t sub_225CB1F28(uint64_t a1, uint64_t *a2)
{
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_225A02E94;

  return sub_225C9CE58(a1, a2, v6, v7);
}

uint64_t sub_225CB1FE0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_225A02E94;

  return sub_225C7B8B0(a1, v4, v5, v6);
}

uint64_t sub_225CB20A0(uint64_t a1, uint64_t *a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_225A02E94;

  return sub_225C9D88C(a1, a2, v7, v6);
}

uint64_t sub_225CB2154(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_225A02E94;

  return sub_225CB0600(a1, v4, v5, v6);
}

uint64_t sub_225CB2228(uint64_t a1, uint64_t *a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v9 = v2[4];
  v8 = v2[5];
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_225A02E94;

  return sub_225C9E25C(a1, a2, v6, v7, v9, v8);
}

uint64_t sub_225CB22F0(uint64_t a1, uint64_t *a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v9 = v2[4];
  v8 = v2[5];
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_225A02E94;

  return sub_225C9EE64(a1, a2, v6, v7, v9, v8);
}

uint64_t sub_225CB23B8(uint64_t a1, uint64_t *a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_225A02E94;

  return sub_225C9F94C(a1, a2, v6);
}

uint64_t sub_225CB2468(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_225A02E94;

  return sub_225CB0858(a1, v4, v5, v6);
}

uint64_t sub_225CB253C(uint64_t a1, uint64_t *a2)
{
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = *(v2 + 32);
  v9 = *(v2 + 40);
  v10 = *(v2 + 48);
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_225A02E94;

  return sub_225CA041C(a1, a2, v6, v7, v8, v9, v10);
}

uint64_t objectdestroy_22Tm()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_225CB2658(uint64_t a1, uint64_t *a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v9 = v2[4];
  v8 = v2[5];
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_225A02E94;

  return sub_225CA10DC(a1, a2, v6, v7, v9, v8);
}

uint64_t objectdestroy_13Tm_0()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_225CB2768(uint64_t a1, uint64_t *a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v9 = v2[4];
  v8 = v2[5];
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_225A02E94;

  return sub_225CA1BA4(a1, a2, v6, v7, v9, v8);
}

uint64_t sub_225CB2830(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_225A02E94;

  return sub_225CB0AB0(a1, v4, v5, v6);
}

uint64_t sub_225CB2904(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_225A02E94;

  return sub_225CB0BA8(a1, v4, v5, v6);
}

uint64_t sub_225CB29D8(uint64_t a1, uint64_t *a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_225A02E94;

  return sub_225CA2FD8(a1, a2, v6);
}

uint64_t sub_225CB2A88(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_225A02E94;

  return sub_225CB0CA0(a1, v4, v5, v6);
}

uint64_t sub_225CB2B5C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_225A02E94;

  return sub_225CB0D98(a1, v4, v5, v6);
}

uint64_t sub_225CB2C30(uint64_t a1, uint64_t *a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v9 = v2[4];
  v8 = v2[5];
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_225A02E94;

  return sub_225CA3E70(a1, a2, v6, v7, v9, v8);
}

uint64_t sub_225CB2CF8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_225A02E94;

  return sub_225CB0E90(a1, v4, v5, v6);
}

uint64_t sub_225CB2DCC(uint64_t a1, uint64_t *a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_225A02E94;

  return sub_225CA4B30(a1, a2, v6);
}

uint64_t sub_225CB2E7C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_225A02E94;

  return sub_225CB0F88(a1, v4, v5, v6);
}

uint64_t sub_225CB2F5C(uint64_t a1, uint64_t *a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_225A02E94;

  return sub_225CA60E0(a1, a2, v7, v6);
}

uint64_t sub_225CB3010(uint64_t a1, uint64_t *a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_225A02E94;

  return sub_225CA6B98(a1, a2, v6, v7, v8);
}

uint64_t sub_225CB30D4(uint64_t a1, uint64_t *a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v9 = v2[4];
  v8 = v2[5];
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_225A02E94;

  return sub_225CA7624(a1, a2, v6, v7, v9, v8);
}

uint64_t sub_225CB319C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_225A02E94;

  return sub_225CB12DC(a1, v4, v5, v6);
}

uint64_t sub_225CB3270(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_225A02E94;

  return sub_225C7B9AC(a1, v4, v5, v6);
}

uint64_t sub_225CB3330(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2259FE39C;

  return sub_225C7B9AC(a1, v4, v5, v6);
}

uint64_t sub_225CB33E4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_225A02E94;

  return sub_225CB13D4(a1, v4, v5, v6);
}

uint64_t sub_225CB34B8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_225A02E94;

  return sub_225CB14CC(a1, v4, v5, v6);
}

uint64_t sub_225CB358C(uint64_t a1, uint64_t *a2)
{
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_225A02E94;

  return sub_225CAB768(a1, a2, v6, v7);
}

uint64_t sub_225CB3644(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_225A02E94;

  return sub_225CB1734(a1, v4, v5, v6);
}

uint64_t sub_225CB3718(uint64_t a1, uint64_t *a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_225A02E94;

  return sub_225CAC8B8(a1, a2, v7, v6);
}

uint64_t sub_225CB37CC(uint64_t a1, uint64_t *a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_225A02E94;

  return sub_225CAD044(a1, a2, v6);
}

uint64_t sub_225CB387C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_225A02E94;

  return sub_225CB182C(a1, v4, v5, v6);
}

uint64_t sub_225CB3950(uint64_t a1, uint64_t *a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_225A02E94;

  return sub_225CAD75C(a1, a2, v6);
}

uint64_t sub_225CB3A00(uint64_t a1, uint64_t *a2)
{
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = *(v2 + 32);
  v10 = *(v2 + 40);
  v9 = *(v2 + 48);
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_225A02E94;

  return sub_225CADDEC(a1, a2, v6, v7, v8, v10, v9);
}

uint64_t sub_225CB3AD8(uint64_t a1, uint64_t *a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_225A02E94;

  return sub_225CAE7B8(a1, a2, v7, v6);
}

uint64_t sub_225CB3B8C(uint64_t a1, uint64_t *a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_225A02E94;

  return sub_225CAFD38(a1, a2, v7, v6);
}

uint64_t sub_225CB3C40(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_225A02E94;

  return sub_225CB1924(a1, v4, v5, v6);
}

uint64_t dispatch thunk of IdentityManagementUIClient.triggerAssetsUpload(proofingOptions:canUploadOnExpensiveNetwork:)(uint64_t a1, uint64_t a2)
{
  v6 = *((*MEMORY[0x277D85000] & *v2) + 0x60);
  v9 = (v6 + *v6);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_225A02E94;

  return v9(a1, a2);
}

uint64_t dispatch thunk of IdentityManagementUIClient.prepareForProofingDisplay(configuration:proofingOptions:)(uint64_t a1, uint64_t a2)
{
  v6 = *((*MEMORY[0x277D85000] & *v2) + 0x68);
  v9 = (v6 + *v6);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_225A4733C;

  return v9(a1, a2);
}

uint64_t dispatch thunk of IdentityManagementUIClient.prepareForProofingIdentity(configuration:documents:proofingSessionID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *((*MEMORY[0x277D85000] & *v4) + 0x70);
  v13 = (v10 + *v10);
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_225A02E94;

  return v13(a1, a2, a3, a4);
}

uint64_t dispatch thunk of IdentityManagementUIClient.provisionIdentity(configuration:sessionLookupIdentifier:proofingOptions:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *((*MEMORY[0x277D85000] & *v4) + 0x78);
  v13 = (v10 + *v10);
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_225A02E94;

  return v13(a1, a2, a3, a4);
}

uint64_t dispatch thunk of IdentityManagementUIClient.fetchImageQualitySettings(configuration:)(uint64_t a1)
{
  v4 = *((*MEMORY[0x277D85000] & *v1) + 0x80);
  v7 = (v4 + *v4);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_225A4733C;

  return v7(a1);
}

uint64_t dispatch thunk of IdentityManagementUIClient.proofIdentity(configuration:documents:proofingOptions:shouldScheduleUploads:totalUploadAssetsFileSizeInBytes:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = *((*MEMORY[0x277D85000] & *v5) + 0x88);
  v15 = (v12 + *v12);
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_225A4733C;

  return v15(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of IdentityManagementUIClient.proofIdentity(configuration:authCode:proofingOptions:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *((*MEMORY[0x277D85000] & *v4) + 0x90);
  v13 = (v10 + *v10);
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_225A206E8;

  return v13(a1, a2, a3, a4);
}

uint64_t dispatch thunk of IdentityManagementUIClient.initiatePartialProofing(configuration:documents:proofingSessionID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *((*MEMORY[0x277D85000] & *v4) + 0x98);
  v13 = (v10 + *v10);
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_225A4733C;

  return v13(a1, a2, a3, a4);
}

uint64_t dispatch thunk of IdentityManagementUIClient.getPendingCommandsStatus()()
{
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0xA0);
  v5 = (v2 + *v2);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_225A4733C;

  return v5();
}

uint64_t dispatch thunk of IdentityManagementUIClient.getPendingCommands(responseAPDUs:)(uint64_t a1)
{
  v4 = *((*MEMORY[0x277D85000] & *v1) + 0xA8);
  v7 = (v4 + *v4);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_225A4733C;

  return v7(a1);
}

uint64_t dispatch thunk of IdentityManagementUIClient.proofingFlowAvailability()()
{
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0xB0);
  v5 = (v2 + *v2);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_225A4733C;

  return v5();
}

uint64_t dispatch thunk of IdentityManagementUIClient.proofingStatus(for:country:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *((*MEMORY[0x277D85000] & *v4) + 0xB8);
  v13 = (v10 + *v10);
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_225A4733C;

  return v13(a1, a2, a3, a4);
}

uint64_t dispatch thunk of IdentityManagementUIClient.isWatchPaired(configuration:)(uint64_t a1)
{
  v4 = *((*MEMORY[0x277D85000] & *v1) + 0xC0);
  v7 = (v4 + *v4);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_225CB4D70;

  return v7(a1);
}

uint64_t sub_225CB4D70(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t dispatch thunk of IdentityManagementUIClient.watchIdentityPassesCount()()
{
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0xC8);
  v5 = (v2 + *v2);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_225A4733C;

  return v5();
}

uint64_t dispatch thunk of IdentityManagementUIClient.proofingCancelled(configuration:proofingOptions:)(uint64_t a1, uint64_t a2)
{
  v6 = *((*MEMORY[0x277D85000] & *v2) + 0xD0);
  v9 = (v6 + *v6);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_225A02E94;

  return v9(a1, a2);
}

uint64_t dispatch thunk of IdentityManagementUIClient.setGlobalBoundACL(data:type:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *((*MEMORY[0x277D85000] & *v3) + 0xD8);
  v11 = (v8 + *v8);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_225A02E94;

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of IdentityManagementUIClient.setModifiedGlobalBoundACL(data:externalizedLAContext:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *((*MEMORY[0x277D85000] & *v4) + 0xE0);
  v13 = (v10 + *v10);
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_225A4733C;

  return v13(a1, a2, a3, a4);
}

uint64_t dispatch thunk of IdentityManagementUIClient.retrieveBioBindingUnboundACL()()
{
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0xE8);
  v5 = (v2 + *v2);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_225CB7FF8;

  return v5();
}

uint64_t dispatch thunk of IdentityManagementUIClient.retrievePasscodeBindingUnboundACL()()
{
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0xF0);
  v5 = (v2 + *v2);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_225CB7FF8;

  return v5();
}

uint64_t dispatch thunk of IdentityManagementUIClient.retrieveBoundACL()()
{
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0xF8);
  v5 = (v2 + *v2);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_225C31580;

  return v5();
}

uint64_t dispatch thunk of IdentityManagementUIClient.deleteBoundACL()()
{
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0x100);
  v5 = (v2 + *v2);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_225A02E94;

  return v5();
}

uint64_t dispatch thunk of IdentityManagementUIClient.fetchBioBindingDetails()()
{
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0x108);
  v5 = (v2 + *v2);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_225A4733C;

  return v5();
}

uint64_t dispatch thunk of IdentityManagementUIClient.fetchTermsAndConditions()()
{
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0x110);
  v5 = (v2 + *v2);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_225A01DDC;

  return v5();
}

uint64_t dispatch thunk of IdentityManagementUIClient.uploadLivenessVideo(livenessVideoURL:shouldScheduleUploads:)(uint64_t a1, uint64_t a2)
{
  v6 = *((*MEMORY[0x277D85000] & *v2) + 0x118);
  v9 = (v6 + *v6);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_225A02E94;

  return v9(a1, a2);
}

uint64_t dispatch thunk of IdentityManagementUIClient.getLivenessConfig()()
{
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0x120);
  v5 = (v2 + *v2);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_225A4733C;

  return v5();
}

uint64_t dispatch thunk of IdentityManagementUIClient.fetchExtendedReviewDisplayInfo(configuration:proofingOptions:)(uint64_t a1, uint64_t a2)
{
  v6 = *((*MEMORY[0x277D85000] & *v2) + 0x128);
  v9 = (v6 + *v6);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_225A4733C;

  return v9(a1, a2);
}

uint64_t dispatch thunk of IdentityManagementUIClient.fetchBiomeFedStatsUI(configuration:)(uint64_t a1)
{
  v4 = *((*MEMORY[0x277D85000] & *v1) + 0x130);
  v7 = (v4 + *v4);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_225A4733C;

  return v7(a1);
}

uint64_t dispatch thunk of IdentityManagementUIClient.fetchLivenessConsentOptinUI(configuration:)(uint64_t a1)
{
  v4 = *((*MEMORY[0x277D85000] & *v1) + 0x138);
  v7 = (v4 + *v4);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_225A4733C;

  return v7(a1);
}

uint64_t dispatch thunk of IdentityManagementUIClient.saveIdentityProofingDataSharingUserConsent(documentType:axSettings:consent:consentType:proofingOptions:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = *((*MEMORY[0x277D85000] & *v5) + 0x140);
  v15 = (v12 + *v12);
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_225A02E94;

  return v15(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of IdentityManagementUIClient.clearDataAfterTerminalProofingState(configuration:proofingOptions:)(uint64_t a1, uint64_t a2)
{
  v6 = *((*MEMORY[0x277D85000] & *v2) + 0x148);
  v9 = (v6 + *v6);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_225A02E94;

  return v9(a1, a2);
}

uint64_t dispatch thunk of IdentityManagementUIClient.globalAuthACLInfo()()
{
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0x158);
  v5 = (v2 + *v2);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_225C9C408;

  return v5();
}

uint64_t dispatch thunk of IdentityManagementUIClient.fetchAnalyticsSessionID(configuration:proofingOptions:)(uint64_t a1, uint64_t a2)
{
  v6 = *((*MEMORY[0x277D85000] & *v2) + 0x160);
  v9 = (v6 + *v6);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_225CB7FF8;

  return v9(a1, a2);
}

uint64_t sub_225CB6598()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_225A02E94;

  return sub_225CB031C(v2, v3, v5, v4);
}

uint64_t sub_225CB6658()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_225A02E94;

  return sub_225CAF734(v2, v3);
}

uint64_t sub_225CB6704()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_225A02E94;

  return sub_225CAECE0(v2, v3, v5, v4);
}

uint64_t sub_225CB67C4()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = *(v0 + 48);
  v8 = *(v0 + 56);
  v7 = *(v0 + 64);
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = sub_225A02E94;

  return sub_225CAE264(v2, v3, v4, v5, v6, v8, v7);
}

uint64_t sub_225CB68A0()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_225A02E94;

  return sub_225CADB84(v2, v3, v4);
}

uint64_t sub_225CB6954()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_225A02E94;

  return sub_225CAD514(v2, v3, v4);
}

uint64_t sub_225CB6A08()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_225A02E94;

  return sub_225CACDF4(v2, v3, v5, v4);
}

uint64_t sub_225CB6AC8()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_225A02E94;

  return sub_225CAC38C(v2, v3);
}

uint64_t sub_225CB6B74()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v5 = *(v0 + 32);
  v4 = *(v0 + 40);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_225A02E94;

  return sub_225CABCA4(v2, v3, v5, v4);
}

uint64_t sub_225CB6C38()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_225A02E94;

  return sub_225CAB27C(v2, v3);
}

uint64_t sub_225CB6CE4()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_225A02E94;

  return sub_225CAA8A8(v2, v3);
}

uint64_t sub_225CB6D90()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_225A02E94;

  return sub_225CAA110(v2, v3);
}

uint64_t sub_225CB6E3C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_225A02E94;

  return sub_225CA9640(v2, v3);
}

uint64_t sub_225CB6EE8()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_225A02E94;

  return sub_225CA8D38(v2, v3);
}

uint64_t sub_225CB6F94()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_225A02E94;

  return sub_225CA8738(v2, v3);
}

uint64_t sub_225CB7040()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_225A02E94;

  return sub_225CA7C50(v2, v3, v5, v4);
}

uint64_t sub_225CB7100()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_225A02E94;

  return sub_225CA71C0(v2, v3, v5, v4);
}

uint64_t sub_225CB71C0()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_225A02E94;

  return sub_225CA666C(v2, v3, v5, v4);
}

uint64_t sub_225CB7280()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_225A02E94;

  return sub_225CA5BF8(v2, v3);
}

uint64_t sub_225CB732C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_225A02E94;

  return sub_225CA50E0(v2, v3, v4);
}

uint64_t objectdestroy_460Tm()
{
  _Block_release(*(v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_225CB7430()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_225A02E94;

  return sub_225CA44F4(v2, v3, v5, v4);
}

uint64_t sub_225CB74F0()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_225A02E94;

  return sub_225CA3C28(v2, v3);
}

uint64_t sub_225CB759C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_225A02E94;

  return sub_225CA35FC(v2, v3, v4);
}

uint64_t objectdestroy_250Tm()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_225CB7690()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_225A02E94;

  return sub_225CA2BDC(v2, v3);
}

uint64_t sub_225CB773C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_225A02E94;

  return sub_225CA2120(v2, v3, v4, v5, v6);
}

uint64_t sub_225CB7804()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_225A02E94;

  return sub_225CA1734(v2, v3, v4, v5, v6);
}

uint64_t sub_225CB78CC()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = *(v0 + 48);
  v7 = *(v0 + 56);
  v8 = *(v0 + 64);
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = sub_225A02E94;

  return sub_225CA0A88(v2, v3, v4, v5, v6, v7, v8);
}

uint64_t objectdestroy_295Tm()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_225CB79F4()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_225A02E94;

  return sub_225C9FE8C(v2, v3, v4);
}

uint64_t objectdestroy_610Tm()
{
  _Block_release(*(v0 + 40));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_225CB7AF8()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_225A02E94;

  return sub_225C9F3BC(v2, v3, v4, v5, v6);
}

uint64_t objectdestroy_595Tm()
{
  _Block_release(*(v0 + 40));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_225CB7C18()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_2259FE39C;

  return sub_225C9E8B0(v2, v3, v4, v5, v6);
}

uint64_t objectdestroy_237Tm()
{
  _Block_release(*(v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_225CB7D28()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_225A02E94;

  return sub_225C9DE48(v2, v3, v5, v4);
}

uint64_t sub_225CB7DE8()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v5 = *(v0 + 32);
  v4 = *(v0 + 40);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_225A02E94;

  return sub_225C9D46C(v2, v3, v5, v4);
}

id static IdentityManagementDaemonToClientUIInterface.interface()()
{
  v0 = [objc_opt_self() interfaceWithProtocol_];

  return v0;
}

uint64_t sub_225CB80D8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73D9B8);
  if (swift_isClassType())
  {
    v1 = v0 == 0;
  }

  else
  {
    v1 = 1;
  }

  if (v1)
  {
    v2 = &unk_27D7429C8;
  }

  else
  {
    v2 = &qword_27D73AF80;
  }

  return __swift_instantiateConcreteTypeFromMangledNameV2(v2);
}

uint64_t _s13CoreIDVShared27IdentityManagementInterfaceC9interfaceSo14NSXPCInterfaceCyFZ_0()
{
  [objc_opt_self() interfaceWithProtocol_];
  sub_225CB80D8();
  inited = swift_initStackObject();
  *(inited + 32) = sub_2259D8718(0, &qword_281059AA0);
  *(inited + 40) = sub_2259D8718(0, &unk_27D73DC90);
  v1 = [objc_allocWithZone(MEMORY[0x277CBEB58]) init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73D9B8);
  [v1 addObject_];
  swift_unknownObjectRelease();
  [v1 addObject_];
  swift_unknownObjectRelease();
  v2 = v1;
  sub_225CCEBF4();

  result = sub_225CCF524();
  __break(1u);
  return result;
}

id static IdentityProofingDataSharingInterface.interface()()
{
  v0 = [objc_opt_self() interfaceWithProtocol_];

  return v0;
}

uint64_t sub_225CB85F8(const char *a1)
{
  v2 = sub_225CCD954();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28105B910 != -1)
  {
    swift_once();
  }

  v7 = off_28105B918;
  v8 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
  v9 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((off_28105B918 + v9));
  (*(v3 + 16))(v6, &v7[v8], v2);
  os_unfair_lock_unlock(&v7[v9]);
  v10 = sub_225CCD934();
  v11 = sub_225CCECF4();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_2259A7000, v10, v11, a1, v12, 2u);
    MEMORY[0x22AA6F950](v12, -1, -1);
  }

  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_225CB87D8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050);
  MEMORY[0x28223BE20](v0 - 8, v1);
  v3 = &v21 - v2;
  v4 = MEMORY[0x277D84F90];
  v5 = sub_225B2C248(MEMORY[0x277D84F90]);
  sub_2259CB5EC();
  v6 = swift_allocError();
  v8 = v7;
  v9 = sub_225CCE954();
  v10 = *(v9 - 8);
  (*(v10 + 56))(v3, 1, 1, v9);
  v11 = (*(v10 + 48))(v3, 1, v9);
  sub_2259CB640(v3, &unk_27D73B050);
  v12 = sub_225B2C374(v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v22 = v12;
  sub_225B2C4A0(v5, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v22);

  v14 = v22;
  v15 = sub_225B29AA0(0, 1, 1, v4);
  v17 = *(v15 + 2);
  v16 = *(v15 + 3);
  if (v17 >= v16 >> 1)
  {
    v15 = sub_225B29AA0((v16 > 1), v17 + 1, 1, v15);
  }

  *(v15 + 2) = v17 + 1;
  v18 = &v15[56 * v17];
  *(v18 + 4) = 0xD000000000000013;
  *(v18 + 5) = 0x8000000225D2AB10;
  *(v18 + 6) = 0xD000000000000035;
  *(v18 + 7) = 0x8000000225D2B200;
  *(v18 + 8) = 0xD000000000000021;
  *(v18 + 9) = 0x8000000225D02C00;
  *(v18 + 10) = 27;
  if (v11)
  {
    v19 = 528;
  }

  else
  {
    v19 = 23;
  }

  *v8 = v19;
  *(v8 + 8) = v15;
  *(v8 + 16) = 0xD000000000000013;
  *(v8 + 24) = 0x8000000225D2AB10;
  *(v8 + 32) = v14;
  *(v8 + 40) = 0;
  return v6;
}

uint64_t IdentityProofingDataSharingClient.__allocating_init()()
{
  v0 = swift_allocObject();
  IdentityProofingDataSharingClient.init()();
  return v0;
}

uint64_t IdentityProofingDataSharingClient.init()()
{
  v1 = [objc_opt_self() interfaceWithProtocol_];
  memset(v23, 0, sizeof(v23));
  v2 = objc_allocWithZone(MEMORY[0x277CCAE80]);
  v3 = sub_225CCE444();
  v4 = [v2 initWithMachServiceName:v3 options:4096];

  sub_225C7B258(v23, v22);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7429D0);
  v5 = swift_allocObject();
  [v4 setRemoteObjectInterface_];
  v20 = sub_225CB85E0;
  v21 = 0;
  aBlock = MEMORY[0x277D85DD0];
  v17 = 1107296256;
  v18 = sub_225A1A000;
  v19 = &block_descriptor_17;
  v6 = _Block_copy(&aBlock);

  [v4 setInvalidationHandler_];
  _Block_release(v6);
  v20 = sub_225CB85EC;
  v21 = 0;
  aBlock = MEMORY[0x277D85DD0];
  v17 = 1107296256;
  v18 = sub_225A1A000;
  v19 = &block_descriptor_3_3;
  v7 = _Block_copy(&aBlock);

  [v4 setInterruptionHandler_];
  _Block_release(v7);
  [v4 setExportedInterface_];
  sub_225C7B258(v22, &aBlock);
  v8 = v19;
  if (v19)
  {
    v9 = __swift_project_boxed_opaque_existential_1(&aBlock, v19);
    v10 = *(v8 - 1);
    MEMORY[0x28223BE20](v9, v9);
    v12 = &aBlock - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v10 + 16))(v12);
    v13 = sub_225CCF924();
    (*(v10 + 8))(v12, v8);
    __swift_destroy_boxed_opaque_existential_0(&aBlock);
  }

  else
  {
    v13 = 0;
  }

  [v4 setExportedObject_];
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D742758);
  v14 = swift_allocObject();
  *(v14 + 24) = 0;
  *(v14 + 16) = v4;
  v5[2] = v14;
  v5[3] = sub_225CB87D8;
  v5[4] = 0;
  [v4 activate];

  sub_2259CB640(v22, &qword_27D73DD90);
  sub_2259CB640(v23, &qword_27D73DD90);
  *(v0 + 16) = v5;
  return v0;
}

uint64_t block_copy_helper_17(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_225CB8E74()
{
  v1 = *(v0[3] + 16);
  v2 = swift_task_alloc();
  v0[4] = v2;
  v2[2] = v1;
  v2[3] = &unk_225D02BB8;
  v2[4] = 0;
  v3 = swift_task_alloc();
  v0[5] = v3;
  v3[2] = 0;
  v3[3] = 0;
  v3[4] = v1;
  v4 = swift_task_alloc();
  v0[6] = v4;
  *v4 = v0;
  v4[1] = sub_225CA5454;

  return MEMORY[0x282200830](v0 + 2, &unk_225D02BC8, v2, sub_225CBACE4, v3, 0, 0, &type metadata for IdentityProofingDataSharingUserConsent);
}

uint64_t sub_225CB8F9C(uint64_t a1, uint64_t *a2)
{
  v2[19] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D742768);
  v2[20] = v4;
  v2[21] = *(v4 - 8);
  v5 = swift_task_alloc();
  v6 = *a2;
  v2[22] = v5;
  v2[23] = v6;

  return MEMORY[0x2822009F8](sub_225CB9070, 0, 0);
}

uint64_t sub_225CB9070()
{
  v1 = v0;
  v2 = v0;
  v3 = v0 + 2;
  v4 = v0 + 10;
  v5 = v0 + 18;
  v7 = v0[22];
  v6 = v0[23];
  v10 = v0 + 20;
  v8 = v0[20];
  v9 = v10[1];
  v1[2] = v2;
  v1[7] = v5;
  v1[3] = sub_225CA5890;
  swift_continuation_init();
  v1[17] = v8;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v1 + 14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AC48);
  sub_225CCE914();
  (*(v9 + 32))(boxed_opaque_existential_1, v7, v8);
  v1[10] = MEMORY[0x277D85DD0];
  v1[11] = 1107296256;
  v1[12] = sub_225CB9220;
  v1[13] = &block_descriptor_74;
  [v6 fetchUserConsentWithCompletionHandler_];
  (*(v9 + 8))(boxed_opaque_existential_1, v8);

  return MEMORY[0x282200938](v3);
}

void sub_225CB9220(uint64_t a1, uint64_t a2, void *a3)
{
  __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v4 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D742768);
    sub_225CCE924();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D742768);
    sub_225CCE934();
  }
}

uint64_t sub_225CB943C(const void *a1, uint64_t a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);

  v3 = swift_task_alloc();
  v2[4] = v3;
  *v3 = v2;
  v3[1] = sub_225CB94E4;

  return IdentityProofingDataSharingClient.fetchUserConsent()();
}

uint64_t sub_225CB94E4(uint64_t a1)
{
  v3 = v1;
  v6 = *v2;
  v5 = *v2;
  v7 = *v2;

  v8 = *(v5 + 24);
  if (v3)
  {
    v9 = sub_225CCCCB4();

    (*(v8 + 16))(v8, 0, v9);
  }

  else
  {
    (*(v8 + 16))(v8, a1, 0);
  }

  _Block_release(*(v6 + 24));
  v10 = *(v7 + 8);

  return v10();
}

uint64_t IdentityProofingDataSharingClient.didChangeUserConsent(status:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_225CB9698, 0, 0);
}

uint64_t sub_225CB9698()
{
  v1 = v0[2];
  v2 = *(v0[3] + 16);
  v3 = swift_allocObject();
  v0[4] = v3;
  *(v3 + 16) = v1;
  v4 = swift_task_alloc();
  v0[5] = v4;
  v4[2] = v2;
  v4[3] = &unk_225D02BE0;
  v4[4] = v3;
  v5 = swift_task_alloc();
  v0[6] = v5;
  v5[2] = 0;
  v5[3] = 0;
  v5[4] = v2;
  v6 = swift_task_alloc();
  v0[7] = v6;
  *v6 = v0;
  v6[1] = sub_225CB97DC;
  v7 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x282200830](v6, &unk_225D02BE8, v4, sub_225CBAE54, v5, 0, 0, v7);
}

uint64_t sub_225CB97DC()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_225C9CDE0;
  }

  else
  {

    v2 = sub_2259FDE14;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_225CB9914(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3[18] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73FD10);
  v3[19] = v5;
  v3[20] = *(v5 - 8);
  v6 = swift_task_alloc();
  v7 = *a2;
  v3[21] = v6;
  v3[22] = v7;

  return MEMORY[0x2822009F8](sub_225CB99E8, 0, 0);
}

uint64_t sub_225CB99E8()
{
  v1 = v0;
  v2 = v0;
  v3 = v0 + 2;
  v4 = v0 + 10;
  v5 = v0[21];
  v12 = v0[22];
  v8 = v0 + 19;
  v6 = v0[19];
  v7 = v8[1];
  v9 = v1[18];
  v1[2] = v2;
  v1[3] = sub_225C9D0F4;
  swift_continuation_init();
  v1[17] = v6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v1 + 14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AC48);
  sub_225CCE914();
  (*(v7 + 32))(boxed_opaque_existential_1, v5, v6);
  v1[10] = MEMORY[0x277D85DD0];
  v1[11] = 1107296256;
  v1[12] = sub_225BED200;
  v1[13] = &block_descriptor_68;
  [v12 didChangeUserConsentWithStatus:v9 completionHandler:v4];
  (*(v7 + 8))(boxed_opaque_existential_1, v6);

  return MEMORY[0x282200938](v3);
}

uint64_t sub_225CB9D28(uint64_t a1, void *aBlock, uint64_t a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);

  v5 = swift_task_alloc();
  v3[4] = v5;
  *v5 = v3;
  v5[1] = sub_225CB9DE4;

  return IdentityProofingDataSharingClient.didChangeUserConsent(status:)(a1);
}

uint64_t sub_225CB9DE4()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *v1;

  v6 = *(v3 + 24);
  if (v2)
  {
    v7 = sub_225CCCCB4();

    (*(v6 + 16))(v6, v7);
  }

  else
  {
    (*(v6 + 16))(v6, 0);
  }

  _Block_release(*(v4 + 24));
  v8 = *(v5 + 8);

  return v8();
}

uint64_t sub_225CB9F8C()
{
  v1 = *(v0[2] + 16);
  v2 = swift_task_alloc();
  v0[3] = v2;
  v2[2] = v1;
  v2[3] = &unk_225D02BF8;
  v2[4] = 0;
  v3 = swift_task_alloc();
  v0[4] = v3;
  v3[2] = 0;
  v3[3] = 0;
  v3[4] = v1;
  v4 = swift_task_alloc();
  v0[5] = v4;
  *v4 = v0;
  v4[1] = sub_225CBA0B4;
  v5 = MEMORY[0x277D839B0];

  return MEMORY[0x282200830](v0 + 7, &unk_225D02C08, v2, sub_225CBB020, v3, 0, 0, v5);
}

uint64_t sub_225CBA0B4()
{
  v2 = *v1;
  *(v2 + 48) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_225CBA200, 0, 0);
  }

  else
  {

    v3 = *(v2 + 56);
    v4 = *(v2 + 8);

    return v4(v3);
  }
}

uint64_t sub_225CBA200()
{

  v1 = *(v0 + 8);

  return v1(0);
}

uint64_t sub_225CBA270(uint64_t a1, uint64_t *a2)
{
  v2[18] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AF08);
  v2[19] = v4;
  v2[20] = *(v4 - 8);
  v5 = swift_task_alloc();
  v6 = *a2;
  v2[21] = v5;
  v2[22] = v6;

  return MEMORY[0x2822009F8](sub_225CBA344, 0, 0);
}

uint64_t sub_225CBA344()
{
  v1 = v0;
  v2 = v0;
  v3 = v0 + 2;
  v4 = v0 + 10;
  v5 = v0 + 24;
  v7 = v0[21];
  v6 = v0[22];
  v10 = v0 + 19;
  v8 = v0[19];
  v9 = v10[1];
  v1[2] = v2;
  v1[7] = v5;
  v1[3] = sub_225CBA4F4;
  swift_continuation_init();
  v1[17] = v8;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v1 + 14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AC48);
  sub_225CCE914();
  (*(v9 + 32))(boxed_opaque_existential_1, v7, v8);
  v1[10] = MEMORY[0x277D85DD0];
  v1[11] = 1107296256;
  v1[12] = sub_225CBA674;
  v1[13] = &block_descriptor_64;
  [v6 checkUserConsentWithCompletionHandler_];
  (*(v9 + 8))(boxed_opaque_existential_1, v8);

  return MEMORY[0x282200938](v3);
}

uint64_t sub_225CBA4F4()
{
  v1 = *(*v0 + 48);
  *(*v0 + 184) = v1;
  if (v1)
  {
    v2 = sub_225C9D268;
  }

  else
  {
    v2 = sub_225CBA604;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_225CBA604()
{
  **(v0 + 144) = *(v0 + 192);

  v1 = *(v0 + 8);

  return v1();
}

void sub_225CBA674(uint64_t a1, uint64_t a2, void *a3)
{
  __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v4 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AF08);
    sub_225CCE924();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AF08);
    sub_225CCE934();
  }
}

uint64_t sub_225CBA890(const void *a1, uint64_t a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);

  v3 = swift_task_alloc();
  v2[4] = v3;
  *v3 = v2;
  v3[1] = sub_225CBA938;

  return IdentityProofingDataSharingClient.checkUserConsent()();
}

uint64_t sub_225CBA938(char a1)
{
  v3 = v1;
  v6 = *v2;
  v5 = *v2;
  v7 = *v2;

  v8 = *(v5 + 24);
  if (v3)
  {
    v9 = sub_225CCCCB4();

    (*(v8 + 16))(v8, 0, v9);
  }

  else
  {
    (*(v8 + 16))(v8, a1 & 1, 0);
  }

  _Block_release(*(v6 + 24));
  v10 = *(v7 + 8);

  return v10();
}

uint64_t IdentityProofingDataSharingClient.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_225CBAB24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_225CBAB48, 0, 0);
}

uint64_t sub_225CBAB48()
{
  v1 = *(v0[3] + 16);
  os_unfair_lock_lock((v1 + 24));
  v2 = *(v1 + 16);
  v0[6] = v2;
  v2;
  os_unfair_lock_unlock((v1 + 24));
  v3 = swift_task_alloc();
  v0[7] = v3;
  *v3 = v0;
  v3[1] = sub_225CB0950;
  v5 = v0[4];
  v4 = v0[5];

  return sub_225C77990(v5, v4);
}

uint64_t sub_225CBAC1C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2259FE39C;

  return sub_225CBAB24(a1, v4, v5, v6);
}

uint64_t sub_225CBACF0(uint64_t a1, uint64_t *a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_225A02E94;

  return sub_225CB9914(a1, a2, v6);
}

uint64_t sub_225CBADA0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_225A02E94;

  return sub_225C7BAA8(a1, v4, v5, v6);
}

uint64_t sub_225CBAE60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_225CBAE84, 0, 0);
}

uint64_t sub_225CBAE84()
{
  v1 = *(v0[3] + 16);
  os_unfair_lock_lock((v1 + 24));
  v2 = *(v1 + 16);
  v0[6] = v2;
  v2;
  os_unfair_lock_unlock((v1 + 24));
  v3 = swift_task_alloc();
  v0[7] = v3;
  *v3 = v0;
  v3[1] = sub_225CB1080;
  v5 = v0[4];
  v4 = v0[5];

  return sub_225C77C70(v5, v4);
}

uint64_t sub_225CBAF58(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_225A02E94;

  return sub_225CBAE60(a1, v4, v5, v6);
}

uint64_t sub_225CBB07C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_2259FE39C;

  return sub_225CBA890(v2, v3);
}

uint64_t sub_225CBB128()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_225A02E94;

  return sub_225CB9D28(v2, v3, v4);
}

uint64_t objectdestroy_18Tm_0()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_225CBB21C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_225A02E94;

  return sub_225CB943C(v2, v3);
}

void sub_225CBB2F8(uint64_t a1, uint64_t a2, void *a3)
{
  __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v4 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7427B0);
    sub_225CCE924();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7427B0);
    sub_225CCE934();
  }
}

id IdentityWatchQueryClient.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id IdentityWatchQueryClient.init()()
{
  v1 = v0;
  v2 = sub_225CCD954();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28105B910 != -1)
  {
    swift_once();
  }

  v7 = off_28105B918;
  v8 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
  v9 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((off_28105B918 + v9));
  (*(v3 + 16))(v6, &v7[v8], v2);
  os_unfair_lock_unlock(&v7[v9]);
  v10 = sub_225CCD934();
  v11 = sub_225CCED04();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_2259A7000, v10, v11, "IdentityWatchQueryClient init", v12, 2u);
    MEMORY[0x22AA6F950](v12, -1, -1);
  }

  (*(v3 + 8))(v6, v2);
  v13 = _s13CoreIDVShared27IdentityManagementInterfaceC9interfaceSo14NSXPCInterfaceCyFZ_0();
  memset(v37, 0, sizeof(v37));
  v14 = objc_allocWithZone(MEMORY[0x277CCAE80]);
  v15 = sub_225CCE444();
  v16 = [v14 initWithMachServiceName:v15 options:4096];

  sub_225A0DE54(v37, v36, &qword_27D73DD90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D742998);
  v17 = swift_allocObject();
  [v16 setRemoteObjectInterface_];
  v34 = sub_225CBB950;
  v35 = 0;
  aBlock = MEMORY[0x277D85DD0];
  v31 = 1107296256;
  v32 = sub_225A1A000;
  v33 = &block_descriptor_18;
  v18 = _Block_copy(&aBlock);

  [v16 setInvalidationHandler_];
  _Block_release(v18);
  v34 = sub_225CBB95C;
  v35 = 0;
  aBlock = MEMORY[0x277D85DD0];
  v31 = 1107296256;
  v32 = sub_225A1A000;
  v33 = &block_descriptor_3_4;
  v19 = _Block_copy(&aBlock);

  [v16 setInterruptionHandler_];
  _Block_release(v19);
  [v16 setExportedInterface_];
  sub_225A0DE54(v36, &aBlock, &qword_27D73DD90);
  v20 = v33;
  if (v33)
  {
    v21 = __swift_project_boxed_opaque_existential_1(&aBlock, v33);
    v22 = *(v20 - 1);
    MEMORY[0x28223BE20](v21, v21);
    v24 = &v29 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v22 + 16))(v24);
    v25 = sub_225CCF924();
    (*(v22 + 8))(v24, v20);
    __swift_destroy_boxed_opaque_existential_0(&aBlock);
  }

  else
  {
    v25 = 0;
  }

  [v16 setExportedObject_];
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D742758);
  v26 = swift_allocObject();
  *(v26 + 24) = 0;
  *(v26 + 16) = v16;
  v17[2] = v26;
  v17[3] = sub_225CBBB48;
  v17[4] = 0;
  [v16 activate];

  sub_2259CB640(v36, &qword_27D73DD90);
  sub_2259CB640(v37, &qword_27D73DD90);
  *&v1[OBJC_IVAR____TtC13CoreIDVShared24IdentityWatchQueryClient_connection] = v17;
  Client = type metadata accessor for IdentityWatchQueryClient();
  v29.receiver = v1;
  v29.super_class = Client;
  return objc_msgSendSuper2(&v29, sel_init);
}

uint64_t sub_225CBB968(const char *a1)
{
  v2 = sub_225CCD954();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28105B910 != -1)
  {
    swift_once();
  }

  v7 = off_28105B918;
  v8 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
  v9 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((off_28105B918 + v9));
  (*(v3 + 16))(v6, &v7[v8], v2);
  os_unfair_lock_unlock(&v7[v9]);
  v10 = sub_225CCD934();
  v11 = sub_225CCECF4();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_2259A7000, v10, v11, a1, v12, 2u);
    MEMORY[0x22AA6F950](v12, -1, -1);
  }

  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_225CBBB48()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050);
  MEMORY[0x28223BE20](v0 - 8, v1);
  v3 = &v21 - v2;
  v4 = MEMORY[0x277D84F90];
  v5 = sub_225B2C248(MEMORY[0x277D84F90]);
  sub_2259CB5EC();
  v6 = swift_allocError();
  v8 = v7;
  v9 = sub_225CCE954();
  v10 = *(v9 - 8);
  (*(v10 + 56))(v3, 1, 1, v9);
  v11 = (*(v10 + 48))(v3, 1, v9);
  sub_2259CB640(v3, &unk_27D73B050);
  v12 = sub_225B2C374(v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v22 = v12;
  sub_225B2C4A0(v5, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v22);

  v14 = v22;
  v15 = sub_225B29AA0(0, 1, 1, v4);
  v17 = *(v15 + 2);
  v16 = *(v15 + 3);
  if (v17 >= v16 >> 1)
  {
    v15 = sub_225B29AA0((v16 > 1), v17 + 1, 1, v15);
  }

  *(v15 + 2) = v17 + 1;
  v18 = &v15[56 * v17];
  *(v18 + 4) = 0xD000000000000013;
  *(v18 + 5) = 0x8000000225D2AB10;
  *(v18 + 6) = 0xD00000000000002CLL;
  *(v18 + 7) = 0x8000000225D2B290;
  *(v18 + 8) = 0x292874696E69;
  *(v18 + 9) = 0xE600000000000000;
  *(v18 + 10) = 37;
  if (v11)
  {
    v19 = 528;
  }

  else
  {
    v19 = 23;
  }

  *v8 = v19;
  *(v8 + 8) = v15;
  *(v8 + 16) = 0xD000000000000013;
  *(v8 + 24) = 0x8000000225D2AB10;
  *(v8 + 32) = v14;
  *(v8 + 40) = 0;
  return v6;
}

uint64_t sub_225CBBDD4()
{
  v1[3] = v0;
  v2 = sub_225CCD954();
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_225CBBE94, 0, 0);
}

uint64_t sub_225CBBE94()
{
  v22 = v0;
  if (qword_28105B910 != -1)
  {
    swift_once();
  }

  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  v4 = off_28105B918;
  v5 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
  v6 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((off_28105B918 + v6));
  (*(v2 + 16))(v1, &v4[v5], v3);
  os_unfair_lock_unlock(&v4[v6]);
  v7 = sub_225CCD934();
  v8 = sub_225CCED04();
  v9 = os_log_type_enabled(v7, v8);
  v11 = v0[5];
  v10 = v0[6];
  v12 = v0[4];
  if (v9)
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v21 = v14;
    *v13 = 136315138;
    *(v13 + 4) = sub_2259BE198(0xD00000000000001ALL, 0x8000000225D2B240, &v21);
    _os_log_impl(&dword_2259A7000, v7, v8, "IdentityWatchQuery %s start", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v14);
    MEMORY[0x22AA6F950](v14, -1, -1);
    MEMORY[0x22AA6F950](v13, -1, -1);
  }

  (*(v11 + 8))(v10, v12);
  v15 = *(v0[3] + OBJC_IVAR____TtC13CoreIDVShared24IdentityWatchQueryClient_connection);
  v16 = swift_task_alloc();
  v0[7] = v16;
  v16[2] = v15;
  v16[3] = &unk_225D02CB8;
  v16[4] = 0;
  v17 = swift_task_alloc();
  v0[8] = v17;
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = v15;
  v18 = swift_task_alloc();
  v0[9] = v18;
  *v18 = v0;
  v18[1] = sub_225CBC168;
  v19 = MEMORY[0x277D83B88];

  return MEMORY[0x282200830](v0 + 2, &unk_225D02CC0, v16, sub_225CB2F50, v17, 0, 0, v19);
}

uint64_t sub_225CBC168()
{
  v2 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v3 = sub_225CBC304;
  }

  else
  {

    *(v2 + 88) = *(v2 + 16);
    v3 = sub_225CBC294;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_225CBC294()
{
  sub_225CBC380();

  v1 = *(v0 + 8);
  v2 = *(v0 + 88);

  return v1(v2);
}

uint64_t sub_225CBC304()
{

  sub_225CBC380();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_225CBC380()
{
  v0 = sub_225CCD954();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28105B910 != -1)
  {
    swift_once();
  }

  v5 = off_28105B918;
  v6 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
  v7 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((off_28105B918 + v7));
  (*(v1 + 16))(v4, &v5[v6], v0);
  os_unfair_lock_unlock(&v5[v7]);
  v8 = sub_225CCD934();
  v9 = sub_225CCED04();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v14 = v11;
    *v10 = 136315138;
    *(v10 + 4) = sub_2259BE198(0xD00000000000001ALL, 0x8000000225D2B240, &v14);
    _os_log_impl(&dword_2259A7000, v8, v9, "IdentityWatchQuery %s end", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x22AA6F950](v11, -1, -1);
    MEMORY[0x22AA6F950](v10, -1, -1);
  }

  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_225CBC5BC(uint64_t a1, uint64_t *a2)
{
  v2[19] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7427B0);
  v2[20] = v4;
  v2[21] = *(v4 - 8);
  v5 = swift_task_alloc();
  v6 = *a2;
  v2[22] = v5;
  v2[23] = v6;

  return MEMORY[0x2822009F8](sub_225CBC690, 0, 0);
}

uint64_t sub_225CBC690()
{
  v1 = v0;
  v2 = v0;
  v3 = v0 + 2;
  v4 = v0 + 10;
  v5 = v0 + 18;
  v7 = v0[22];
  v6 = v0[23];
  v10 = v0 + 20;
  v8 = v0[20];
  v9 = v10[1];
  v1[2] = v2;
  v1[7] = v5;
  v1[3] = sub_225CA5890;
  swift_continuation_init();
  v1[17] = v8;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v1 + 14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AC48);
  sub_225CCE914();
  (*(v9 + 32))(boxed_opaque_existential_1, v7, v8);
  v1[10] = MEMORY[0x277D85DD0];
  v1[11] = 1107296256;
  v1[12] = sub_225CBB2F8;
  v1[13] = &block_descriptor_35;
  [v6 watchIdentityPassesCountWithCompletionHandler_];
  (*(v9 + 8))(boxed_opaque_existential_1, v8);

  return MEMORY[0x282200938](v3);
}

uint64_t sub_225CBC9B4(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_225CA5CA0;

  return sub_225CBBDD4();
}

id IdentityWatchQueryClient.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for IdentityWatchQueryClient();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_225CBCAA0(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_225A02E94;

  return v6();
}

uint64_t sub_225CBCB88(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_2259FE39C;

  return v7();
}

uint64_t sub_225CBCC70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73FE00);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = v24 - v11;
  sub_225A0DE54(a3, v24 - v11, &qword_27D73FE00);
  v13 = sub_225CCE994();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_2259CB640(v12, &qword_27D73FE00);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_225CCE984();
  (*(v14 + 8))(v12, v13);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v15 = sub_225CCE904();
  v17 = v16;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v18 = sub_225CCE544() + 32;
    v19 = swift_allocObject();
    *(v19 + 16) = a4;
    *(v19 + 24) = a5;

    if (v17 | v15)
    {
      v25[0] = 0;
      v25[1] = 0;
      v20 = v25;
      v25[2] = v15;
      v25[3] = v17;
    }

    else
    {
      v20 = 0;
    }

    v24[1] = 7;
    v24[2] = v20;
    v24[3] = v18;
    v22 = swift_task_create();

    sub_2259CB640(a3, &qword_27D73FE00);

    return v22;
  }

LABEL_8:
  sub_2259CB640(a3, &qword_27D73FE00);
  v21 = swift_allocObject();
  *(v21 + 16) = a4;
  *(v21 + 24) = a5;
  if (v17 | v15)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v15;
    v25[7] = v17;
  }

  return swift_task_create();
}

uint64_t block_copy_helper_18(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_225CBCFA8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2259FE39C;

  return sub_225CB11E4(a1, v4, v5, v6);
}

uint64_t dispatch thunk of IdentityWatchQueryClient.watchIdentityPassesCount()()
{
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0x58);
  v5 = (v2 + *v2);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_225A206E8;

  return v5();
}

uint64_t sub_225CBD1A8()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_2259FE39C;

  return sub_225CBC9B4(v2, v3);
}

uint64_t sub_225CBD254(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_225A02E94;

  return sub_225AFDCFC(a1, v4);
}

uint64_t NSXPCConnection.performWithRemoteObjectProxy<A, B>(of:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[6] = a6;
  v7[7] = v6;
  v7[4] = a4;
  v7[5] = a5;
  v7[2] = a1;
  v7[3] = a3;
  return MEMORY[0x2822009F8](sub_225CBD354, 0, 0);
}

uint64_t sub_225CBD354()
{
  v1 = *(v0 + 56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D742758);
  v2 = swift_allocObject();
  *(v0 + 64) = v2;
  *(v2 + 24) = 0;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  *(v0 + 72) = v3;
  v4 = *(v0 + 24);
  *(v3 + 16) = *(v0 + 40);
  *(v3 + 32) = v2;
  *(v3 + 40) = v4;
  v5 = v1;
  v6 = swift_task_alloc();
  *(v0 + 80) = v6;
  *v6 = v0;
  v6[1] = sub_225CBD490;
  v7 = *(v0 + 48);
  v8 = *(v0 + 16);

  return MEMORY[0x2822008A0](v8, 0, 0, 0xD000000000000023, 0x8000000225D2A620, sub_225CBFDB8, v3, v7);
}

uint64_t sub_225CBD490()
{
  *(*v1 + 88) = v0;

  if (v0)
  {
    v2 = sub_225C75C5C;
  }

  else
  {

    v2 = sub_225CBD5AC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_225CBD5AC()
{

  v1 = *(v0 + 8);

  return v1();
}

void *SendableXPCConnection.__allocating_init(machServiceName:interface:invalidationHandler:interruptionHandler:exportedInterface:exportedObject:connectionErrorMapper:)(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5, void *a6, uint64_t a7, void *a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v15 = objc_allocWithZone(MEMORY[0x277CCAE80]);
  v16 = sub_225CCE444();

  v17 = [v15 initWithMachServiceName:v16 options:4096];

  sub_225C7B258(a9, v22);
  swift_allocObject();
  v18 = sub_225CC1054(v17, a3, a4, a5, a6, a7, a8, v22, a10, a11);

  sub_2259AA0D0(a6);
  sub_2259AA0D0(a4);

  sub_2259CB640(a9, &qword_27D73DD90);
  return v18;
}

uint64_t SendableXPCConnection.interruptionHandler.setter(uint64_t a1, uint64_t a2)
{
  sub_225CC1400(a1, a2, &block_descriptor_76, &selRef_setInterruptionHandler_);

  return sub_2259AA0D0(a1);
}

uint64_t SendableXPCConnection.invalidationHandler.setter(uint64_t a1, uint64_t a2)
{
  sub_225CC1400(a1, a2, &block_descriptor_73, &selRef_setInvalidationHandler_);

  return sub_2259AA0D0(a1);
}

uint64_t SendableXPCConnection.performWithRemoteObjectProxy<A>(_:onCancel:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[7] = a6;
  v7[8] = v6;
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = a1;
  return MEMORY[0x2822009F8](sub_225CBD83C, 0, 0);
}

uint64_t sub_225CBD83C()
{
  v2 = *(v0 + 56);
  v1 = *(v0 + 64);
  v4 = *(v0 + 40);
  v3 = *(v0 + 48);
  v5 = swift_task_alloc();
  *(v0 + 72) = v5;
  v6 = *(v0 + 24);
  *(v5 + 16) = v2;
  *(v5 + 24) = v1;
  *(v5 + 32) = v6;
  v7 = swift_task_alloc();
  *(v0 + 80) = v7;
  v7[2] = v2;
  v7[3] = v4;
  v7[4] = v3;
  v7[5] = v1;
  v8 = swift_task_alloc();
  *(v0 + 88) = v8;
  *v8 = v0;
  v8[1] = sub_225CBD95C;
  v9 = *(v0 + 56);
  v10 = *(v0 + 16);

  return MEMORY[0x282200830](v10, &unk_225D02D78, v5, sub_225CC15A0, v7, 0, 0, v9);
}

uint64_t sub_225CBD95C()
{
  v2 = *v1;
  *(v2 + 96) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_225CBDAA4, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_225CBDAA4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t SendableXPCConnection.exportedObject.setter(uint64_t a1)
{
  v3 = *(v1 + 16);
  os_unfair_lock_lock((v3 + 24));
  v4 = *(v3 + 16);
  sub_225C7B258(a1, v12);
  v5 = v13;
  if (v13)
  {
    v6 = __swift_project_boxed_opaque_existential_1(v12, v13);
    v7 = *(v5 - 8);
    MEMORY[0x28223BE20](v6, v6);
    v9 = v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v7 + 16))(v9);
    v10 = sub_225CCF924();
    (*(v7 + 8))(v9, v5);
    __swift_destroy_boxed_opaque_existential_0(v12);
  }

  else
  {
    v10 = 0;
  }

  [v4 setExportedObject_];
  swift_unknownObjectRelease();
  os_unfair_lock_unlock((v3 + 24));
  return sub_2259CB640(a1, &qword_27D73DD90);
}

Swift::Void __swiftcall SendableXPCConnection.invalidate()()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock((v1 + 24));
  [*(v1 + 16) invalidate];

  os_unfair_lock_unlock((v1 + 24));
}

id SendableXPCConnection.wrapped.getter()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock((v1 + 24));
  v2 = *(v1 + 16);
  os_unfair_lock_unlock((v1 + 24));
  return v2;
}

void SendableXPCConnection.exportedObject.getter(_OWORD *a1@<X8>)
{
  v3 = *(v1 + 16);
  os_unfair_lock_lock((v3 + 24));
  if ([*(v3 + 16) exportedObject])
  {
    sub_225CCF0A4();
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0u;
    v5 = 0u;
  }

  *a1 = v4;
  a1[1] = v5;

  os_unfair_lock_unlock((v3 + 24));
}

void (*SendableXPCConnection.exportedObject.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x48uLL);
  }

  *a1 = v3;
  *(v3 + 64) = v1;
  SendableXPCConnection.exportedObject.getter(v3);
  return sub_225CBDE20;
}

void sub_225CBDE20(uint64_t *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    sub_225C7B258(*a1, v2 + 32);
    SendableXPCConnection.exportedObject.setter(v2 + 32);
    sub_2259CB640(v2, &qword_27D73DD90);
  }

  else
  {
    SendableXPCConnection.exportedObject.setter(*a1);
  }

  free(v2);
}

uint64_t (*SendableXPCConnection.interruptionHandler.getter())()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock((v1 + 24));
  v2 = [*(v1 + 16) interruptionHandler];
  if (v2)
  {
    v3 = v2;
    v4 = swift_allocObject();
    *(v4 + 16) = v3;
    v5 = swift_allocObject();
    *(v5 + 16) = sub_225CC15D4;
    *(v5 + 24) = v4;
    os_unfair_lock_unlock((v1 + 24));
    v6 = swift_allocObject();
    *(v6 + 16) = sub_225CC15E4;
    *(v6 + 24) = v5;
    return sub_225CC15AC;
  }

  else
  {
    os_unfair_lock_unlock((v1 + 24));
    return 0;
  }
}

uint64_t sub_225CBDF8C@<X0>(uint64_t (**a1)()@<X8>)
{
  result = SendableXPCConnection.interruptionHandler.getter();
  if (result)
  {
    v4 = result;
    v5 = v3;
    result = swift_allocObject();
    *(result + 16) = v4;
    *(result + 24) = v5;
    v6 = sub_225CC1AD0;
  }

  else
  {
    v6 = 0;
  }

  *a1 = v6;
  a1[1] = result;
  return result;
}

uint64_t sub_225CBDFFC(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = sub_225CC1AB8;
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  sub_2259AA0E0(v1);
  sub_225CC1400(v4, v3, &block_descriptor_76, &selRef_setInterruptionHandler_);

  return sub_2259AA0D0(v4);
}

uint64_t (*SendableXPCConnection.interruptionHandler.modify(uint64_t (**a1)()))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  *a1 = SendableXPCConnection.interruptionHandler.getter();
  a1[1] = v3;
  return sub_225CBE0FC;
}

uint64_t (*SendableXPCConnection.invalidationHandler.getter())()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock((v1 + 24));
  v2 = [*(v1 + 16) invalidationHandler];
  if (v2)
  {
    v3 = v2;
    v4 = swift_allocObject();
    *(v4 + 16) = v3;
    v5 = swift_allocObject();
    *(v5 + 16) = sub_225CC1AB4;
    *(v5 + 24) = v4;
    os_unfair_lock_unlock((v1 + 24));
    v6 = swift_allocObject();
    *(v6 + 16) = sub_225CC1AD0;
    *(v6 + 24) = v5;
    return sub_225CC1AB8;
  }

  else
  {
    os_unfair_lock_unlock((v1 + 24));
    return 0;
  }
}

uint64_t sub_225CBE204@<X0>(uint64_t (**a1)()@<X8>)
{
  result = SendableXPCConnection.invalidationHandler.getter();
  if (result)
  {
    v4 = result;
    v5 = v3;
    result = swift_allocObject();
    *(result + 16) = v4;
    *(result + 24) = v5;
    v6 = sub_225CC1AD0;
  }

  else
  {
    v6 = 0;
  }

  *a1 = v6;
  a1[1] = result;
  return result;
}

uint64_t sub_225CBE274(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = sub_225CC1AB8;
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  sub_2259AA0E0(v1);
  sub_225CC1400(v4, v3, &block_descriptor_73, &selRef_setInvalidationHandler_);

  return sub_2259AA0D0(v4);
}

uint64_t (*SendableXPCConnection.invalidationHandler.modify(uint64_t (**a1)()))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  *a1 = SendableXPCConnection.invalidationHandler.getter();
  a1[1] = v3;
  return sub_225CBE374;
}

uint64_t sub_225CBE388(uint64_t *a1, char a2, uint64_t a3, SEL *a4)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = *a1;
  if (a2)
  {
    sub_2259AA0E0(v6);
    sub_225CC1400(v4, v5, a3, a4);
    sub_2259AA0D0(v4);
  }

  else
  {
    sub_225CC1400(v6, v5, a3, a4);
  }

  return sub_2259AA0D0(v4);
}

void *SendableXPCConnection.__allocating_init(listenerEndpoint:interface:invalidationHandler:interruptionHandler:exportedInterface:exportedObject:connectionErrorMapper:)(void *a1, void *a2, void *a3, uint64_t a4, void *a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v16 = [objc_allocWithZone(MEMORY[0x277CCAE80]) initWithListenerEndpoint_];
  sub_225C7B258(a8, v21);
  swift_allocObject();
  v17 = sub_225CC1054(v16, a2, a3, a4, a5, a6, a7, v21, a9, a10);

  sub_2259AA0D0(a5);
  sub_2259AA0D0(a3);

  sub_2259CB640(a8, &qword_27D73DD90);
  return v17;
}

uint64_t sub_225CBE5B8(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t (*a11)(void *, void *))
{
  v16 = a11(a1, a2);

  sub_2259AA0D0(a5);
  sub_2259AA0D0(a3);

  return v16;
}

uint64_t SendableXPCConnection.deinit()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock((v1 + 24));
  [*(v1 + 16) invalidate];
  os_unfair_lock_unlock((v1 + 24));

  return v0;
}

uint64_t SendableXPCConnection.__deallocating_deinit()
{
  SendableXPCConnection.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_225CBE6E8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v5[7] = *a2;
  return MEMORY[0x2822009F8](sub_225CBE738, 0, 0);
}

uint64_t sub_225CBE738()
{
  v1 = v0[7];
  v0[8] = SendableXPCConnection.wrapped.getter();
  v2 = *(v1 + 80);
  nullsub_1(v2);
  v4 = swift_task_alloc();
  v0[9] = v4;
  *v4 = v0;
  v4[1] = sub_225CBE804;
  v5 = v0[5];
  v6 = v0[6];
  v7 = v0[4];
  v8 = v0[2];

  return NSXPCConnection.performWithRemoteObjectProxy<A, B>(of:_:)(v8, v3, v7, v5, v2, v6);
}

uint64_t sub_225CBE804()
{
  v2 = *v1;
  *(v2 + 80) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_225CBE940, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_225CBE940()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_225CBE9A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73FE00);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v11 = &v26 - v10;
  v12 = sub_225CCD954();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12, v14);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v17 = sub_225CCE994();
    (*(*(v17 - 8) + 56))(v11, 1, 1, v17);
    v18 = swift_allocObject();
    v18[2] = 0;
    v18[3] = 0;
    v18[4] = a4;
    v18[5] = a3;
    v18[6] = a1;
    v18[7] = a2;
    sub_2259AA0E0(a1);

    sub_225AFBC30(0, 0, v11, &unk_225D02DD8, v18);
  }

  else
  {
    if (qword_28105B910 != -1)
    {
      swift_once();
    }

    v20 = off_28105B918;
    v21 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
    v22 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((off_28105B918 + v22));
    (*(v13 + 16))(v16, &v20[v21], v12);
    os_unfair_lock_unlock(&v20[v22]);
    v23 = sub_225CCD934();
    v24 = sub_225CCED04();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_2259A7000, v23, v24, "SendableXPCConnection onCancel is nil", v25, 2u);
      MEMORY[0x22AA6F950](v25, -1, -1);
    }

    return (*(v13 + 8))(v16, v12);
  }
}

uint64_t sub_225CBEC8C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  v7[6] = *a4;
  v8 = sub_225CCD954();
  v7[7] = v8;
  v7[8] = *(v8 - 8);
  v7[9] = swift_task_alloc();
  v7[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_225CBED84, 0, 0);
}

uint64_t sub_225CBED84()
{
  if (qword_28105B910 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 80);
  v2 = *(v0 + 56);
  v3 = *(v0 + 64);
  v4 = off_28105B918;
  *(v0 + 88) = off_28105B918;
  v5 = *v4;
  v6 = *(*v4 + *MEMORY[0x277D841D0] + 16);
  *(v0 + 96) = v6;
  v7 = *(v5 + 48);
  *(v0 + 160) = v7;
  v8 = (v7 + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock(&v4[v8]);
  v9 = *(v3 + 16);
  *(v0 + 104) = v9;
  *(v0 + 112) = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v9(v1, &v4[v6], v2);
  os_unfair_lock_unlock(&v4[v8]);
  v10 = sub_225CCD934();
  v11 = sub_225CCECF4();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_2259A7000, v10, v11, "SendableXPCConnection executing cancellation handler", v12, 2u);
    MEMORY[0x22AA6F950](v12, -1, -1);
  }

  v13 = *(v0 + 80);
  v14 = *(v0 + 56);
  v15 = *(v0 + 64);
  v17 = *(v0 + 40);
  v16 = *(v0 + 48);
  v19 = *(v0 + 24);
  v18 = *(v0 + 32);

  v20 = *(v15 + 8);
  *(v0 + 120) = v20;
  v20(v13, v14);
  *(v0 + 128) = SendableXPCConnection.wrapped.getter();
  v21 = swift_allocObject();
  *(v0 + 136) = v21;
  v22 = *(v16 + 80);
  v21[2] = v22;
  v21[3] = v17;
  v21[4] = v19;
  v21[5] = v18;
  v23 = MEMORY[0x277D84F78];
  nullsub_1(v22);

  v24 = swift_task_alloc();
  *(v0 + 144) = v24;
  *v24 = v0;
  v24[1] = sub_225CBF008;

  return NSXPCConnection.performWithRemoteObjectProxy<A, B>(of:_:)(v24, v25, &unk_225D02DE8, v21, v22, v23 + 8);
}

uint64_t sub_225CBF008()
{
  v2 = *v1;
  *(*v1 + 152) = v0;

  if (v0)
  {
    v3 = sub_225CBF190;
  }

  else
  {
    v4 = *(v2 + 128);

    v3 = sub_225CBF128;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_225CBF128()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_225CBF190()
{
  v1 = *(v0 + 152);
  v2 = *(v0 + 128);
  v3 = *(v0 + 104);
  v4 = *(v0 + 160);
  v6 = *(v0 + 88);
  v5 = *(v0 + 96);
  v7 = *(v0 + 72);
  v8 = *(v0 + 56);

  v9 = (v4 + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v6 + v9));
  v3(v7, v6 + v5, v8);
  os_unfair_lock_unlock((v6 + v9));
  v10 = v1;
  v11 = sub_225CCD934();
  v12 = sub_225CCED14();

  v13 = os_log_type_enabled(v11, v12);
  v14 = *(v0 + 152);
  if (v13)
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *v15 = 138412290;
    v17 = v14;
    v18 = _swift_stdlib_bridgeErrorToNSError();
    *(v15 + 4) = v18;
    *v16 = v18;
    _os_log_impl(&dword_2259A7000, v11, v12, "SendableXPCConnection error occurred when cancelling the task: %@", v15, 0xCu);
    sub_2259CB640(v16, &unk_27D73FC90);
    MEMORY[0x22AA6F950](v16, -1, -1);
    MEMORY[0x22AA6F950](v15, -1, -1);
  }

  else
  {
  }

  (*(v0 + 120))(*(v0 + 72), *(v0 + 56));

  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_225CBF370(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = (a3 + *a3);
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_2259FE39C;

  return v7(a2);
}

uint64_t SendableXPCConnection.performSynchronouslyWithRemoteObjectProxy<A>(_:)@<X0>(void (*a1)(char *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v48[2] = a2;
  v49 = a1;
  v48[1] = a3;
  v4 = *v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v52 = v48 - v7;
  v8 = *(v4 + 80);
  v9 = sub_225CCEFC4();
  v50 = *(v9 - 8);
  v51 = v9;
  v11 = MEMORY[0x28223BE20](v9, v10);
  v13 = v48 - v12;
  v14 = *(v8 - 8);
  MEMORY[0x28223BE20](v11, v15);
  v17 = v48 - v16;
  v18 = swift_allocObject();
  *(v18 + 16) = 0;
  v19 = SendableXPCConnection.wrapped.getter();
  v57 = sub_225CC160C;
  v58 = v18;
  aBlock = MEMORY[0x277D85DD0];
  v54 = 1107296256;
  v55 = sub_225CBFB0C;
  v56 = &block_descriptor_19;
  v20 = _Block_copy(&aBlock);
  v59[5] = v18;

  v21 = [v19 synchronousRemoteObjectProxyWithErrorHandler_];
  _Block_release(v20);

  sub_225CCF0A4();
  swift_unknownObjectRelease();
  sub_2259CB810(v59, &aBlock);
  v22 = swift_dynamicCast();
  v23 = *(v14 + 56);
  if (!v22)
  {
    v23(v13, 1, 1, v8);
    (*(v50 + 8))(v13, v51);
    aBlock = 0;
    v54 = 0xE000000000000000;
    sub_225CCF204();
    MEMORY[0x22AA6CE70](0xD000000000000014, 0x8000000225D2A650);
    __swift_project_boxed_opaque_existential_1(v59, v59[3]);
    sub_225CCF904();
    MEMORY[0x22AA6CE70](0xD000000000000013, 0x8000000225D2A670);
    v27 = sub_225CCFD24();
    MEMORY[0x22AA6CE70](v27);

    v29 = aBlock;
    v28 = v54;
    v50 = 0x8000000225D2B300;
    v51 = 0x8000000225D2A6B0;
    v30 = MEMORY[0x277D84F90];
    v31 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    swift_allocError();
    v33 = v32;
    v34 = sub_225CCE954();
    v35 = *(v34 - 8);
    v36 = v52;
    (*(v35 + 56))(v52, 1, 1, v34);
    LODWORD(v34) = (*(v35 + 48))(v36, 1, v34);
    sub_2259CB640(v36, &unk_27D73B050);
    if (v34)
    {
      v37 = 107;
    }

    else
    {
      v37 = 23;
    }

    v38 = sub_225B2C374(v30);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    aBlock = v38;
    sub_225B2C4A0(v31, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &aBlock);

    v40 = aBlock;
    v41 = sub_225B29AA0(0, 1, 1, v30);
    v43 = *(v41 + 2);
    v42 = *(v41 + 3);
    if (v43 >= v42 >> 1)
    {
      v41 = sub_225B29AA0((v42 > 1), v43 + 1, 1, v41);
    }

    *(v41 + 2) = v43 + 1;
    v44 = &v41[56 * v43];
    *(v44 + 4) = v29;
    *(v44 + 5) = v28;
    v45 = v51;
    *(v44 + 6) = 0xD000000000000029;
    *(v44 + 7) = v45;
    v46 = v50;
    *(v44 + 8) = 0xD00000000000002DLL;
    *(v44 + 9) = v46;
    *(v44 + 10) = 184;
    *v33 = v37;
    *(v33 + 8) = v41;
    *(v33 + 16) = v29;
    *(v33 + 24) = v28;
    *(v33 + 32) = v40;
    *(v33 + 40) = 0;
    swift_willThrow();
    goto LABEL_10;
  }

  v23(v13, 0, 1, v8);
  (*(v14 + 32))(v17, v13, v8);
  swift_beginAccess();
  v24 = *(v18 + 16);
  if (v24)
  {
    v25 = v3[3];
    v26 = v24;
    v25(v24);
    swift_willThrow();

    (*(v14 + 8))(v17, v8);
LABEL_10:
    __swift_destroy_boxed_opaque_existential_0(v59);
  }

  v49(v17);
  (*(v14 + 8))(v17, v8);
  __swift_destroy_boxed_opaque_existential_0(v59);
}

id sub_225CBFAB8(void *a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a2 + 16);
  *(a2 + 16) = a1;

  return a1;
}

void sub_225CBFB0C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_225CBFB74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v25 = a5;
  v26 = a3;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D73AC48);
  v10 = sub_225CCE944();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10, v13);
  v15 = &v25 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73FE00);
  MEMORY[0x28223BE20](v16 - 8, v17);
  v19 = &v25 - v18;
  v20 = sub_225CCE994();
  (*(*(v20 - 8) + 56))(v19, 1, 1, v20);
  (*(v11 + 16))(v15, a1, v10);
  v21 = (*(v11 + 80) + 56) & ~*(v11 + 80);
  v22 = swift_allocObject();
  *(v22 + 2) = 0;
  *(v22 + 3) = 0;
  *(v22 + 4) = v25;
  *(v22 + 5) = a6;
  *(v22 + 6) = a2;
  (*(v11 + 32))(&v22[v21], v15, v10);
  v23 = &v22[(v12 + v21 + 7) & 0xFFFFFFFFFFFFFFF8];
  *v23 = v26;
  *(v23 + 1) = a4;

  sub_225AFBC30(0, 0, v19, &unk_225D02DF8, v22);
}

uint64_t sub_225CBFDC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[16] = a8;
  v8[17] = v13;
  v8[14] = a6;
  v8[15] = a7;
  v8[12] = a4;
  v8[13] = a5;
  v8[18] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050);
  v8[19] = swift_task_alloc();
  v10 = sub_225CCEFC4();
  v8[20] = v10;
  v8[21] = *(v10 - 8);
  v8[22] = swift_task_alloc();
  v8[23] = *(a8 - 8);
  v8[24] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_225CBFF4C, 0, 0);
}

uint64_t sub_225CBFF4C()
{
  v41 = v0;
  v1 = v0[16];
  v2 = v0[17];
  v4 = v0[12];
  v3 = v0[13];
  os_unfair_lock_lock((v4 + 24));
  sub_225CC07A4((v4 + 16), v3, v1, v2, (v0 + 2));
  os_unfair_lock_unlock((v4 + 24));
  v5 = v0[23];
  sub_2259CB810((v0 + 2), (v0 + 6));
  v6 = swift_dynamicCast();
  v7 = *(v5 + 56);
  if (v6)
  {
    v9 = v0[23];
    v8 = v0[24];
    v10 = v0[22];
    v11 = v0[16];
    v12 = v0[14];
    v7(v10, 0, 1, v11);
    (*(v9 + 32))(v8, v10, v11);
    v38 = (v12 + *v12);
    v13 = swift_task_alloc();
    v0[25] = v13;
    *v13 = v0;
    v13[1] = sub_225CC04A8;
    v14 = v0[24];
    v15 = v0[18];

    return v38(v15, v14);
  }

  else
  {
    v18 = v0[21];
    v17 = v0[22];
    v19 = v0[19];
    v20 = v0[20];
    v7(v17, 1, 1, v0[16]);
    (*(v18 + 8))(v17, v20);
    v40[0] = 0;
    v40[1] = 0xE000000000000000;
    sub_225CCF204();
    MEMORY[0x22AA6CE70](0xD000000000000014, 0x8000000225D2A650);
    __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
    sub_225CCF904();
    MEMORY[0x22AA6CE70](0xD000000000000013, 0x8000000225D2A670);
    v21 = sub_225CCFD24();
    MEMORY[0x22AA6CE70](v21);

    v22 = MEMORY[0x277D84F90];
    v23 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    v39 = swift_allocError();
    v25 = v24;
    v26 = sub_225CCE954();
    v27 = *(v26 - 8);
    (*(v27 + 56))(v19, 1, 1, v26);
    v28 = (*(v27 + 48))(v19, 1, v26);
    sub_2259CB640(v19, &unk_27D73B050);

    v29 = sub_225B2C374(v22);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v40[0] = v29;
    sub_225B2C4A0(v23, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, v40);

    v31 = v40[0];
    v32 = sub_225B29AA0(0, 1, 1, v22);
    v34 = *(v32 + 2);
    v33 = *(v32 + 3);
    if (v34 >= v33 >> 1)
    {
      v32 = sub_225B29AA0((v33 > 1), v34 + 1, 1, v32);
    }

    if (v28)
    {
      v35 = 107;
    }

    else
    {
      v35 = 23;
    }

    *(v32 + 2) = v34 + 1;
    v36 = &v32[56 * v34];
    *(v36 + 4) = 0;
    *(v36 + 5) = 0xE000000000000000;
    *(v36 + 6) = 0xD000000000000029;
    *(v36 + 7) = 0x8000000225D2A6B0;
    *(v36 + 8) = 0xD000000000000023;
    *(v36 + 9) = 0x8000000225D2A620;
    *(v36 + 10) = 220;
    *v25 = v35;
    *(v25 + 8) = v32;
    *(v25 + 16) = 0;
    *(v25 + 24) = 0xE000000000000000;
    *(v25 + 32) = v31;
    *(v25 + 40) = 0;
    v0[10] = v39;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D73AC48);
    sub_225CCE944();
    sub_225CCE924();
    __swift_destroy_boxed_opaque_existential_0((v0 + 2));

    v37 = v0[1];

    return v37();
  }
}

uint64_t sub_225CC04A8()
{
  *(*v1 + 208) = v0;

  if (v0)
  {
    v2 = sub_225CC06B4;
  }

  else
  {
    v2 = sub_225CC05BC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_225CC05BC()
{
  v2 = v0[23];
  v1 = v0[24];
  v3 = v0[16];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D73AC48);
  sub_225CCE944();
  sub_225CCE934();
  (*(v2 + 8))(v1, v3);
  __swift_destroy_boxed_opaque_existential_0((v0 + 2));

  v4 = v0[1];

  return v4();
}

uint64_t sub_225CC06B4()
{
  v1 = v0[26];
  (*(v0[23] + 8))(v0[24], v0[16]);
  __swift_destroy_boxed_opaque_existential_0((v0 + 2));
  v0[11] = v1;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D73AC48);
  sub_225CCE944();
  sub_225CCE924();

  v2 = v0[1];

  return v2();
}

uint64_t sub_225CC07A4@<X0>(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v20[1] = a5;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D73AC48);
  v9 = sub_225CCE944();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = v20 - v12;
  v14 = *a1;
  (*(v10 + 16))(v20 - v12, a2, v9);
  v15 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = a3;
  *(v16 + 24) = a4;
  (*(v10 + 32))(v16 + v15, v13, v9);
  aBlock[4] = sub_225CC19F8;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_225CBFB0C;
  aBlock[3] = &block_descriptor_87;
  v17 = _Block_copy(aBlock);

  v18 = [v14 remoteObjectProxyWithErrorHandler_];
  _Block_release(v17);
  sub_225CCF0A4();
  return swift_unknownObjectRelease();
}

uint64_t sub_225CC09B0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v52[1] = a4;
  v52[2] = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = v52 - v7;
  v9 = sub_225CCD954();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28105B910 != -1)
  {
    swift_once();
  }

  v14 = off_28105B918;
  v15 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
  v16 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((off_28105B918 + v16));
  (*(v10 + 16))(v13, &v14[v15], v9);
  os_unfair_lock_unlock(&v14[v16]);
  v17 = a1;
  v18 = sub_225CCD934();
  v19 = sub_225CCED14();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v52[0] = v8;
    v21 = v20;
    v22 = swift_slowAlloc();
    v53 = v22;
    *v21 = 136315138;
    swift_getErrorValue();
    v23 = sub_225CCFB24();
    v25 = sub_2259BE198(v23, v24, &v53);

    *(v21 + 4) = v25;
    _os_log_impl(&dword_2259A7000, v18, v19, "XPC connection error: %s", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v22);
    MEMORY[0x22AA6F950](v22, -1, -1);
    v26 = v21;
    v8 = v52[0];
    MEMORY[0x22AA6F950](v26, -1, -1);
  }

  (*(v10 + 8))(v13, v9);
  v27 = sub_225B2C248(MEMORY[0x277D84F90]);
  sub_2259CB5EC();
  v52[0] = swift_allocError();
  v29 = v28;
  swift_getErrorValue();
  sub_225B21FAC(v59, &v53);
  v30 = v54;
  if (v54)
  {
    v31 = v53;
    v32 = v55;
    v33 = v56;
    v34 = v57;
    a1 = v58;
  }

  else
  {
    v53 = a1;
    v35 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AC48);
    sub_2259E4540();
    if (swift_dynamicCast())
    {
      v36 = v52[18];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AA10);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_225CD30F0;
      *(inited + 32) = 20;
      v38 = [v36 code];
      v39 = MEMORY[0x277D83BF8];
      *(inited + 64) = MEMORY[0x277D83B88];
      *(inited + 72) = v39;
      *(inited + 40) = v38;
      v34 = sub_225B2C374(inited);
      swift_setDeallocating();
      sub_2259CB640(inited + 32, &qword_27D73B060);

      v40 = a1;
      v33 = 0;
      v32 = 0;
      v30 = MEMORY[0x277D84F90];
      v31 = 528;
    }

    else
    {
      v53 = a1;
      v41 = a1;
      v42 = sub_225CCE954();
      v43 = swift_dynamicCast();
      v44 = *(v42 - 8);
      (*(v44 + 56))(v8, v43 ^ 1u, 1, v42);
      LODWORD(v44) = (*(v44 + 48))(v8, 1, v42);
      sub_2259CB640(v8, &unk_27D73B050);
      if (v44)
      {
        v31 = 528;
      }

      else
      {
        v31 = 23;
      }

      v30 = MEMORY[0x277D84F90];
      v34 = sub_225B2C374(MEMORY[0x277D84F90]);
      v45 = a1;
      v33 = 0x8000000225D2A6E0;
      v32 = 0xD000000000000014;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v53 = v34;
  sub_225B2C4A0(v27, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v53);

  v47 = v53;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v30 = sub_225B29AA0(0, *(v30 + 2) + 1, 1, v30);
  }

  v49 = *(v30 + 2);
  v48 = *(v30 + 3);
  if (v49 >= v48 >> 1)
  {
    v30 = sub_225B29AA0((v48 > 1), v49 + 1, 1, v30);
  }

  *(v30 + 2) = v49 + 1;
  v50 = &v30[56 * v49];
  *(v50 + 4) = 0xD000000000000014;
  *(v50 + 5) = 0x8000000225D2A6E0;
  *(v50 + 6) = 0xD000000000000029;
  *(v50 + 7) = 0x8000000225D2A6B0;
  *(v50 + 8) = 0xD000000000000023;
  *(v50 + 9) = 0x8000000225D2A620;
  *(v50 + 10) = 216;
  *v29 = v31;
  *(v29 + 8) = v30;
  *(v29 + 16) = v32;
  *(v29 + 24) = v33;
  *(v29 + 32) = v47;
  *(v29 + 40) = a1;
  v53 = v52[0];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D73AC48);
  sub_225CCE944();
  return sub_225CCE924();
}

void *sub_225CC1054(void *a1, uint64_t a2, void *a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  [a1 setRemoteObjectInterface_];
  if (a3)
  {
    v31 = a3;
    v32 = a4;
    aBlock = MEMORY[0x277D85DD0];
    v28 = 1107296256;
    v29 = sub_225A1A000;
    v30 = &block_descriptor_57;
    a3 = _Block_copy(&aBlock);
  }

  [a1 setInvalidationHandler_];
  _Block_release(a3);
  if (a5)
  {
    v31 = a5;
    v32 = a6;
    aBlock = MEMORY[0x277D85DD0];
    v28 = 1107296256;
    v29 = sub_225A1A000;
    v30 = &block_descriptor_54_0;
    a5 = _Block_copy(&aBlock);
  }

  [a1 setInterruptionHandler_];
  _Block_release(a5);
  [a1 setExportedInterface_];
  sub_225C7B258(a8, &aBlock);
  v18 = v30;
  if (v30)
  {
    v19 = __swift_project_boxed_opaque_existential_1(&aBlock, v30);
    v20 = *(v18 - 1);
    MEMORY[0x28223BE20](v19, v19);
    v22 = &aBlock - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v20 + 16))(v22);
    v23 = sub_225CCF924();
    (*(v20 + 8))(v22, v18);
    __swift_destroy_boxed_opaque_existential_0(&aBlock);
  }

  else
  {
    v23 = 0;
  }

  [a1 setExportedObject_];
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D742758);
  v24 = swift_allocObject();
  *(v24 + 24) = 0;
  *(v24 + 16) = a1;
  v10[2] = v24;
  v10[3] = a9;
  v10[4] = a10;
  v25 = a1;

  [v25 activate];
  sub_2259CB640(a8, &qword_27D73DD90);
  return v10;
}

void sub_225CC1400(uint64_t a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  v9 = *(v4 + 16);
  os_unfair_lock_lock((v9 + 24));
  v10 = *(v9 + 16);
  if (a1)
  {
    v12[4] = a1;
    v12[5] = a2;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 1107296256;
    v12[2] = sub_225A1A000;
    v12[3] = a3;
    v11 = _Block_copy(v12);
  }

  else
  {
    v11 = 0;
  }

  [v10 *a4];
  _Block_release(v11);
  os_unfair_lock_unlock((v9 + 24));
}

uint64_t sub_225CC14E0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_2259FE39C;

  return sub_225CBE6E8(a1, v5, v7, v6, v4);
}

uint64_t block_copy_helper_19(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_225CC16CC(uint64_t a1)
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
  v10[1] = sub_2259FE39C;

  return sub_225CBEC8C(a1, v4, v5, v7, v9, v8, v6);
}

uint64_t sub_225CC17A0(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 32);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_225A02E94;

  return sub_225CBF370(a1, a2, v6);
}

uint64_t sub_225CC187C(uint64_t a1)
{
  v3 = v2;
  v16 = v1[4];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D73AC48);
  v5 = *(sub_225CCE944() - 8);
  v6 = (*(v5 + 80) + 56) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[6];
  v10 = (v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_225A02E94;

  return sub_225CBFDC8(a1, v7, v8, v9, v1 + v6, v11, v12, v16);
}

uint64_t sub_225CC19F8(void *a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D73AC48);
  v5 = *(sub_225CCE944() - 8);
  v6 = v1 + ((*(v5 + 80) + 32) & ~*(v5 + 80));

  return sub_225CC09B0(a1, v6, v3, v4);
}

id sub_225CC1AD4()
{
  type metadata accessor for BundleToken();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  qword_28105E338 = result;
  return result;
}

id StoredIdentityDocumentApplicationInstallation.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id StoredIdentityDocumentApplicationInstallation.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for StoredIdentityDocumentApplicationInstallation();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id StoredIdentityDocumentApplicationInstallation.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for StoredIdentityDocumentApplicationInstallation();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id static StoredIdentityDocumentApplicationInstallation.fetchRequest()()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v1 = sub_225CCE444();
  v2 = [v0 initWithEntityName_];

  return v2;
}

void sub_225CC1D44(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 applicationIdentifier];
  if (v3)
  {
    v4 = v3;
    v5 = sub_225CCE474();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  *a2 = v5;
  a2[1] = v7;
}

void sub_225CC1DAC(uint64_t a1, void **a2)
{
  v2 = *a2;
  if (*(a1 + 8))
  {
    v3 = sub_225CCE444();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  [v2 setApplicationIdentifier_];
}

uint64_t sub_225CC1E1C@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for StoredIdentityDocumentApplicationInstallation();
  result = sub_225CCF224();
  *a1 = result;
  return result;
}

id StoredMobileDocumentReaderApplicationInstallation.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id StoredMobileDocumentReaderApplicationInstallation.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for StoredMobileDocumentReaderApplicationInstallation();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id StoredMobileDocumentReaderApplicationInstallation.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for StoredMobileDocumentReaderApplicationInstallation();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id static StoredMobileDocumentReaderApplicationInstallation.fetchRequest()()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v1 = sub_225CCE444();
  v2 = [v0 initWithEntityName_];

  return v2;
}

uint64_t sub_225CC205C@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = [*a1 installationIdentifier];
  if (v3)
  {
    v4 = v3;
    sub_225CCD0F4();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = sub_225CCD124();
  v7 = *(*(v6 - 8) + 56);

  return v7(a2, v5, 1, v6);
}

void sub_225CC2100(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7429E0);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v12 - v6;
  sub_225CC22A0(a1, &v12 - v6);
  v8 = *a2;
  v9 = sub_225CCD124();
  v10 = *(v9 - 8);
  v11 = 0;
  if ((*(v10 + 48))(v7, 1, v9) != 1)
  {
    v11 = sub_225CCD0D4();
    (*(v10 + 8))(v7, v9);
  }

  [v8 setInstallationIdentifier_];
}

uint64_t sub_225CC222C@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for StoredMobileDocumentReaderApplicationInstallation();
  result = sub_225CCF224();
  *a1 = result;
  return result;
}

uint64_t sub_225CC22A0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7429E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id StoredMobileDocumentReaderAttestationCertificate.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id StoredMobileDocumentReaderAttestationCertificate.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for StoredMobileDocumentReaderAttestationCertificate();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id StoredMobileDocumentReaderAttestationCertificate.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for StoredMobileDocumentReaderAttestationCertificate();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id static StoredMobileDocumentReaderAttestationCertificate.fetchRequest()()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v1 = sub_225CCE444();
  v2 = [v0 initWithEntityName_];

  return v2;
}

void sub_225CC24E8(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 certificateData];
  if (v3)
  {
    v4 = v3;
    v5 = sub_225CCCFA4();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0xF000000000000000;
  }

  *a2 = v5;
  a2[1] = v7;
}

void sub_225CC2550(uint64_t a1, void **a2)
{
  v2 = *a2;
  if (*(a1 + 8) >> 60 == 15)
  {
    v3 = 0;
  }

  else
  {
    v3 = sub_225CCCF74();
  }

  v4 = v3;
  [v2 setCertificateData_];
}

uint64_t sub_225CC25C8@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for StoredMobileDocumentReaderAttestationCertificate();
  result = sub_225CCF224();
  *a1 = result;
  return result;
}

id StoredMobileDocumentReaderAuthenticationCertificate.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id StoredMobileDocumentReaderAuthenticationCertificate.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for StoredMobileDocumentReaderAuthenticationCertificate();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id StoredMobileDocumentReaderAuthenticationCertificate.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for StoredMobileDocumentReaderAuthenticationCertificate();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id static StoredMobileDocumentReaderAuthenticationCertificate.fetchRequest()()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v1 = sub_225CCE444();
  v2 = [v0 initWithEntityName_];

  return v2;
}

void sub_225CC2808(id *a1@<X0>, SEL *a2@<X3>, uint64_t *a3@<X8>)
{
  v4 = [*a1 *a2];
  if (v4)
  {
    v5 = v4;
    v6 = sub_225CCCFA4();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0xF000000000000000;
  }

  *a3 = v6;
  a3[1] = v8;
}

void sub_225CC286C(uint64_t a1, void **a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  v6 = *a2;
  if (*(a1 + 8) >> 60 == 15)
  {
    v7 = 0;
  }

  else
  {
    v7 = sub_225CCCF74();
  }

  v8 = v7;
  [v6 *a5];
}

void sub_225CC28E4(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 sessionIdentifier];
  if (v3)
  {
    v4 = v3;
    v5 = sub_225CCE474();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  *a2 = v5;
  a2[1] = v7;
}

void sub_225CC294C(uint64_t a1, void **a2)
{
  v2 = *a2;
  if (*(a1 + 8))
  {
    v3 = sub_225CCE444();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  [v2 setSessionIdentifier_];
}

uint64_t sub_225CC29BC@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for StoredMobileDocumentReaderAuthenticationCertificate();
  result = sub_225CCF224();
  *a1 = result;
  return result;
}

id StoredMobileDocumentReaderSigningKey.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id StoredMobileDocumentReaderSigningKey.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for StoredMobileDocumentReaderSigningKey();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id StoredMobileDocumentReaderSigningKey.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for StoredMobileDocumentReaderSigningKey();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id static StoredMobileDocumentReaderSigningKey.fetchRequest()()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v1 = sub_225CCE444();
  v2 = [v0 initWithEntityName_];

  return v2;
}

void sub_225CC2C08(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 keyBlob];
  if (v3)
  {
    v4 = v3;
    v5 = sub_225CCCFA4();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0xF000000000000000;
  }

  *a2 = v5;
  a2[1] = v7;
}

void sub_225CC2C70(uint64_t a1, void **a2)
{
  v2 = *a2;
  if (*(a1 + 8) >> 60 == 15)
  {
    v3 = 0;
  }

  else
  {
    v3 = sub_225CCCF74();
  }

  v4 = v3;
  [v2 setKeyBlob_];
}

uint64_t sub_225CC2CE8@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for StoredMobileDocumentReaderSigningKey();
  result = sub_225CCF224();
  *a1 = result;
  return result;
}

id StoredMobileDocumentRegistration.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id StoredMobileDocumentRegistration.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for StoredMobileDocumentRegistration();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id StoredMobileDocumentRegistration.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for StoredMobileDocumentRegistration();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id static StoredMobileDocumentRegistration.fetchRequest()()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v1 = sub_225CCE444();
  v2 = [v0 initWithEntityName_];

  return v2;
}

void sub_225CC2F1C(id *a1@<X0>, SEL *a2@<X3>, uint64_t *a3@<X8>)
{
  v4 = [*a1 *a2];
  if (v4)
  {
    v5 = v4;
    v6 = sub_225CCE474();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  *a3 = v6;
  a3[1] = v8;
}

void sub_225CC2F80(uint64_t a1, void **a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  v6 = *a2;
  if (*(a1 + 8))
  {
    v7 = sub_225CCE444();
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  [v6 *a5];
}

uint64_t sub_225CC2FF0@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = [*a1 invalidationDate];
  if (v3)
  {
    v4 = v3;
    sub_225CCD094();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = sub_225CCD0B4();
  v7 = *(*(v6 - 8) + 56);

  return v7(a2, v5, 1, v6);
}

void sub_225CC3094(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73FD00);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v12 - v6;
  sub_225A94014(a1, &v12 - v6);
  v8 = *a2;
  v9 = sub_225CCD0B4();
  v10 = *(v9 - 8);
  v11 = 0;
  if ((*(v10 + 48))(v7, 1, v9) != 1)
  {
    v11 = sub_225CCD034();
    (*(v10 + 8))(v7, v9);
  }

  [v8 setInvalidationDate_];
}

uint64_t sub_225CC31C0@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for StoredMobileDocumentRegistration();
  result = sub_225CCF224();
  *a1 = result;
  return result;
}

id StoredPrearmTrust.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id StoredPrearmTrust.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for StoredPrearmTrust();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id StoredPrearmTrust.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for StoredPrearmTrust();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id static StoredPrearmTrust.fetchRequest()()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v1 = sub_225CCE444();
  v2 = [v0 initWithEntityName_];

  return v2;
}

void sub_225CC3410(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 pairingID];
  if (v3)
  {
    v4 = v3;
    v5 = sub_225CCE474();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  *a2 = v5;
  a2[1] = v7;
}

void sub_225CC3478(uint64_t a1, void **a2)
{
  v2 = *a2;
  if (*(a1 + 8))
  {
    v3 = sub_225CCE444();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  [v2 setPairingID_];
}

uint64_t sub_225CC34E8@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for StoredPrearmTrust();
  result = sub_225CCF224();
  *a1 = result;
  return result;
}

id StoredProofingBiomeData.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id StoredProofingBiomeData.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for StoredProofingBiomeData();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id StoredProofingBiomeData.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for StoredProofingBiomeData();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id static StoredProofingBiomeData.fetchRequest()()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v1 = sub_225CCE444();
  v2 = [v0 initWithEntityName_];

  return v2;
}

uint64_t sub_225CC3734@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = [*a1 optInDate];
  if (v3)
  {
    v4 = v3;
    sub_225CCD094();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = sub_225CCD0B4();
  v7 = *(*(v6 - 8) + 56);

  return v7(a2, v5, 1, v6);
}

void sub_225CC37D8(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73FD00);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v12 - v6;
  sub_225A94014(a1, &v12 - v6);
  v8 = *a2;
  v9 = sub_225CCD0B4();
  v10 = *(v9 - 8);
  v11 = 0;
  if ((*(v10 + 48))(v7, 1, v9) != 1)
  {
    v11 = sub_225CCD034();
    (*(v10 + 8))(v7, v9);
  }

  [v8 setOptInDate_];
}

uint64_t sub_225CC3904@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for StoredProofingBiomeData();
  result = sub_225CCF224();
  *a1 = result;
  return result;
}

id StoredProofingDisplayMessage.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id StoredProofingDisplayMessage.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for StoredProofingDisplayMessage();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id StoredProofingDisplayMessage.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for StoredProofingDisplayMessage();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id static StoredProofingDisplayMessage.fetchRequest()()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v1 = sub_225CCE444();
  v2 = [v0 initWithEntityName_];

  return v2;
}

uint64_t sub_225CC3B68@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for StoredProofingDisplayMessage();
  result = sub_225CCF224();
  *a1 = result;
  return result;
}

id StoredProofingDisplayMessageAction.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id StoredProofingDisplayMessageAction.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for StoredProofingDisplayMessageAction();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id StoredProofingDisplayMessageAction.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for StoredProofingDisplayMessageAction();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id static StoredProofingDisplayMessageAction.fetchRequest()()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v1 = sub_225CCE444();
  v2 = [v0 initWithEntityName_];

  return v2;
}

uint64_t sub_225CC3DB4@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = [*a1 actionURL];
  if (v3)
  {
    v4 = v3;
    sub_225CCCE34();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = sub_225CCCEA4();
  v7 = *(*(v6 - 8) + 56);

  return v7(a2, v5, 1, v6);
}

void sub_225CC3E58(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73E090);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v12 - v6;
  sub_225A33B7C(a1, &v12 - v6);
  v8 = *a2;
  v9 = sub_225CCCEA4();
  v10 = *(v9 - 8);
  v11 = 0;
  if ((*(v10 + 48))(v7, 1, v9) != 1)
  {
    v11 = sub_225CCCDF4();
    (*(v10 + 8))(v7, v9);
  }

  [v8 setActionURL_];
}

void sub_225CC3F84(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 title];
  if (v3)
  {
    v4 = v3;
    v5 = sub_225CCE474();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  *a2 = v5;
  a2[1] = v7;
}

void sub_225CC3FEC(uint64_t a1, void **a2)
{
  v2 = *a2;
  if (*(a1 + 8))
  {
    v3 = sub_225CCE444();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  [v2 setTitle_];
}

uint64_t sub_225CC405C@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for StoredProofingDisplayMessageAction();
  result = sub_225CCF224();
  *a1 = result;
  return result;
}

id StoredProofingSession.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id StoredProofingSession.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for StoredProofingSession();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id StoredProofingSession.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for StoredProofingSession();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id static StoredProofingSession.fetchRequest()()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v1 = sub_225CCE444();
  v2 = [v0 initWithEntityName_];

  return v2;
}

uint64_t sub_225CC42A4@<X0>(id *a1@<X0>, SEL *a2@<X3>, uint64_t a3@<X8>)
{
  v4 = [*a1 *a2];
  if (v4)
  {
    v5 = v4;
    sub_225CCD094();

    v6 = 0;
  }

  else
  {
    v6 = 1;
  }

  v7 = sub_225CCD0B4();
  v8 = *(*(v7 - 8) + 56);

  return v8(a3, v6, 1, v7);
}

void sub_225CC4344(uint64_t a1, void **a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73FD00);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v11 = &v16 - v10;
  sub_225A94014(a1, &v16 - v10);
  v12 = *a2;
  v13 = sub_225CCD0B4();
  v14 = *(v13 - 8);
  v15 = 0;
  if ((*(v14 + 48))(v11, 1, v13) != 1)
  {
    v15 = sub_225CCD034();
    (*(v14 + 8))(v11, v13);
  }

  [v12 *a5];
}

uint64_t sub_225CC4470@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for StoredProofingSession();
  result = sub_225CCF224();
  *a1 = result;
  return result;
}

id StoredRACCredential.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id StoredRACCredential.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for StoredRACCredential();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id StoredRACCredential.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for StoredRACCredential();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id static StoredRACCredential.fetchRequest()()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v1 = sub_225CCE444();
  v2 = [v0 initWithEntityName_];

  return v2;
}

uint64_t sub_225CC482C@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = [*a1 lastReportTime];
  if (v3)
  {
    v4 = v3;
    sub_225CCD094();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = sub_225CCD0B4();
  v7 = *(*(v6 - 8) + 56);

  return v7(a2, v5, 1, v6);
}

void sub_225CC48D0(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73FD00);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v12 - v6;
  sub_225A94014(a1, &v12 - v6);
  v8 = *a2;
  v9 = sub_225CCD0B4();
  v10 = *(v9 - 8);
  v11 = 0;
  if ((*(v10 + 48))(v7, 1, v9) != 1)
  {
    v11 = sub_225CCD034();
    (*(v10 + 8))(v7, v9);
  }

  [v8 setLastReportTime_];
}

uint64_t sub_225CC49FC@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for StoredRACCredential();
  result = sub_225CCF224();
  *a1 = result;
  return result;
}

id StoredRACPresentment.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id StoredRACPresentment.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for StoredRACPresentment();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id StoredRACPresentment.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for StoredRACPresentment();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id static StoredRACPresentment.fetchRequest()()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v1 = sub_225CCE444();
  v2 = [v0 initWithEntityName_];

  return v2;
}

uint64_t sub_225CC4C44@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for StoredRACPresentment();
  result = sub_225CCF224();
  *a1 = result;
  return result;
}

id StoredRandomizedBackgroundActivity.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id StoredRandomizedBackgroundActivity.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for StoredRandomizedBackgroundActivity();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id StoredRandomizedBackgroundActivity.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for StoredRandomizedBackgroundActivity();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id static StoredRandomizedBackgroundActivity.fetchRequest()()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v1 = sub_225CCE444();
  v2 = [v0 initWithEntityName_];

  return v2;
}

void sub_225CC4E78(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 identifier];
  if (v3)
  {
    v4 = v3;
    v5 = sub_225CCE474();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  *a2 = v5;
  a2[1] = v7;
}

void sub_225CC4EE0(uint64_t a1, void **a2)
{
  v2 = *a2;
  if (*(a1 + 8))
  {
    v3 = sub_225CCE444();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  [v2 setIdentifier_];
}

void sub_225CC4F50(uint64_t a1, void **a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73FD00);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v11 = &v16 - v10;
  sub_225A94014(a1, &v16 - v10);
  v12 = *a2;
  v13 = sub_225CCD0B4();
  v14 = *(v13 - 8);
  v15 = 0;
  if ((*(v14 + 48))(v11, 1, v13) != 1)
  {
    v15 = sub_225CCD034();
    (*(v14 + 8))(v11, v13);
  }

  [v12 *a5];
}

uint64_t sub_225CC507C@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for StoredRandomizedBackgroundActivity();
  result = sub_225CCF224();
  *a1 = result;
  return result;
}

id StoredUploadAsset.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id StoredUploadAsset.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for StoredUploadAsset();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id StoredUploadAsset.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for StoredUploadAsset();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id static StoredUploadAsset.fetchRequest()()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v1 = sub_225CCE444();
  v2 = [v0 initWithEntityName_];

  return v2;
}

uint64_t sub_225CC52CC@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for StoredUploadAsset();
  result = sub_225CCF224();
  *a1 = result;
  return result;
}

id StoredBiomeMetadata.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id StoredBiomeMetadata.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for StoredBiomeMetadata();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id StoredBiomeMetadata.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for StoredBiomeMetadata();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id static StoredBiomeMetadata.fetchRequest()()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v1 = sub_225CCE444();
  v2 = [v0 initWithEntityName_];

  return v2;
}

uint64_t sub_225CC5514@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for StoredBiomeMetadata();
  result = sub_225CCF224();
  *a1 = result;
  return result;
}

id StoredAuthACL.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id StoredAuthACL.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for StoredAuthACL();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id StoredAuthACL.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for StoredAuthACL();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id static StoredAuthACL.fetchRequest()()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v1 = sub_225CCE444();
  v2 = [v0 initWithEntityName_];

  return v2;
}

uint64_t sub_225CC58DC@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for StoredAuthACL();
  result = sub_225CCF224();
  *a1 = result;
  return result;
}

id StoredCredential.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id StoredCredential.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for StoredCredential();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id StoredCredential.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for StoredCredential();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id static StoredCredential.fetchRequest()()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v1 = sub_225CCE444();
  v2 = [v0 initWithEntityName_];

  return v2;
}

void sub_225CC5B34(uint64_t a1, void **a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73FD00);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v11 = &v16 - v10;
  sub_225A94014(a1, &v16 - v10);
  v12 = *a2;
  v13 = sub_225CCD0B4();
  v14 = *(v13 - 8);
  v15 = 0;
  if ((*(v14 + 48))(v11, 1, v13) != 1)
  {
    v15 = sub_225CCD034();
    (*(v14 + 8))(v11, v13);
  }

  [v12 *a5];
}

uint64_t sub_225CC5C60@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for StoredCredential();
  result = sub_225CCF224();
  *a1 = result;
  return result;
}

id StoredCredentialOptions.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id StoredCredentialOptions.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for StoredCredentialOptions();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id StoredCredentialOptions.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for StoredCredentialOptions();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id static StoredCredentialOptions.fetchRequest()()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v1 = sub_225CCE444();
  v2 = [v0 initWithEntityName_];

  return v2;
}

uint64_t sub_225CC5ED0@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for StoredCredentialOptions();
  result = sub_225CCF224();
  *a1 = result;
  return result;
}

id StoredCryptoKey.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id StoredCryptoKey.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for StoredCryptoKey();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id StoredCryptoKey.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for StoredCryptoKey();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id static StoredCryptoKey.fetchRequest()()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v1 = sub_225CCE444();
  v2 = [v0 initWithEntityName_];

  return v2;
}

void sub_225CC6134(uint64_t a1, void **a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73FD00);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v11 = &v16 - v10;
  sub_225A94014(a1, &v16 - v10);
  v12 = *a2;
  v13 = sub_225CCD0B4();
  v14 = *(v13 - 8);
  v15 = 0;
  if ((*(v14 + 48))(v11, 1, v13) != 1)
  {
    v15 = sub_225CCD034();
    (*(v14 + 8))(v11, v13);
  }

  [v12 *a5];
}

uint64_t sub_225CC6260@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for StoredCryptoKey();
  result = sub_225CCF224();
  *a1 = result;
  return result;
}

id StoredIdentifierRevocationList.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id StoredIdentifierRevocationList.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for StoredIdentifierRevocationList();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id StoredIdentifierRevocationList.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for StoredIdentifierRevocationList();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id static StoredIdentifierRevocationList.fetchRequest()()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v1 = sub_225CCE444();
  v2 = [v0 initWithEntityName_];

  return v2;
}

void sub_225CC650C(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 uri];
  if (v3)
  {
    v4 = v3;
    v5 = sub_225CCE474();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  *a2 = v5;
  a2[1] = v7;
}

void sub_225CC6574(uint64_t a1, void **a2)
{
  v2 = *a2;
  if (*(a1 + 8))
  {
    v3 = sub_225CCE444();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  [v2 setUri_];
}

uint64_t sub_225CC65E4@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for StoredIdentifierRevocationList();
  result = sub_225CCF224();
  *a1 = result;
  return result;
}

id StoredPayload.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id StoredPayload.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for StoredPayload();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id StoredPayload.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for StoredPayload();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id static StoredPayload.fetchRequest()()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v1 = sub_225CCE444();
  v2 = [v0 initWithEntityName_];

  return v2;
}

void sub_225CC6814(uint64_t a1, void **a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73FD00);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v11 = &v16 - v10;
  sub_225A94014(a1, &v16 - v10);
  v12 = *a2;
  v13 = sub_225CCD0B4();
  v14 = *(v13 - 8);
  v15 = 0;
  if ((*(v14 + 48))(v11, 1, v13) != 1)
  {
    v15 = sub_225CCD034();
    (*(v14 + 8))(v11, v13);
  }

  [v12 *a5];
}

uint64_t sub_225CC6940@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for StoredPayload();
  result = sub_225CCF224();
  *a1 = result;
  return result;
}

id StoredTrustKey.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id StoredTrustKey.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for StoredTrustKey();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id StoredTrustKey.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for StoredTrustKey();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id static StoredTrustKey.fetchRequest()()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v1 = sub_225CCE444();
  v2 = [v0 initWithEntityName_];

  return v2;
}

void sub_225CC6C24(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 protectedPublicKey];
  if (v3)
  {
    v4 = v3;
    v5 = sub_225CCCFA4();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0xF000000000000000;
  }

  *a2 = v5;
  a2[1] = v7;
}

void sub_225CC6C8C(uint64_t a1, void **a2)
{
  v2 = *a2;
  if (*(a1 + 8) >> 60 == 15)
  {
    v3 = 0;
  }

  else
  {
    v3 = sub_225CCCF74();
  }

  v4 = v3;
  [v2 setProtectedPublicKey_];
}

uint64_t sub_225CC6D04@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for StoredTrustKey();
  result = sub_225CCF224();
  *a1 = result;
  return result;
}

id StoredRelyingParty.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id StoredRelyingParty.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for StoredRelyingParty();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id StoredRelyingParty.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for StoredRelyingParty();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id static StoredRelyingParty.fetchRequest()()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v1 = sub_225CCE444();
  v2 = [v0 initWithEntityName_];

  return v2;
}

void sub_225CC6F30(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 relyingPartyIdentifier];
  if (v3)
  {
    v4 = v3;
    v5 = sub_225CCE474();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  *a2 = v5;
  a2[1] = v7;
}

void sub_225CC6F98(uint64_t a1, void **a2)
{
  v2 = *a2;
  if (*(a1 + 8))
  {
    v3 = sub_225CCE444();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  [v2 setRelyingPartyIdentifier_];
}

uint64_t sub_225CC7008@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for StoredRelyingParty();
  result = sub_225CCF224();
  *a1 = result;
  return result;
}

uint64_t sub_225CC7064()
{
  v0 = sub_225CCD1C4();
  MEMORY[0x28223BE20](v0 - 8, v1);
  v2 = sub_225CCCCD4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_225CCE434();
  MEMORY[0x28223BE20](v7 - 8, v8);
  v9 = sub_225CCE414();
  MEMORY[0x28223BE20](v9 - 8, v10);
  sub_225CCE404();
  sub_225CCE3F4();
  sub_225CCE3E4();
  sub_225CCE3F4();
  sub_225CCE424();
  if (qword_27D73A7C0 != -1)
  {
    swift_once();
  }

  v11 = __swift_project_value_buffer(v2, qword_27D7429E8);
  (*(v3 + 16))(v6, v11, v2);
  sub_225CCD1B4();
  return sub_225CCCCF4();
}

uint64_t sub_225CC7330()
{
  v0 = sub_225CCCCD4();
  __swift_allocate_value_buffer(v0, qword_27D7429E8);
  v1 = __swift_project_value_buffer(v0, qword_27D7429E8);
  *v1 = type metadata accessor for ResourceBundleClass();
  v2 = *MEMORY[0x277CC9120];
  v3 = *(*(v0 - 8) + 104);

  return v3(v1, v2, v0);
}

uint64_t buildMetadataBuffer(void *a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = v5;
  v7 = 4294967290;
  if (a1 && v5)
  {
    a1[6] = 0;
    v8 = [v5 length];
    v9 = [v6 bytes];
    if (a3 == 1)
    {
      v10 = 32;
    }

    else
    {
      v10 = 65;
    }

    if (v8 < v10)
    {
      v7 = 12;
    }

    else
    {
      v11 = v9;
      OUTLINED_FUNCTION_0();
      v13 = malloc_type_malloc(v10 | 4, v12);
      if (v13)
      {
        v14 = v13;
        a1[7] = v10 | 4;
        *v13 = a1[5];
        v13[1] = a3;
        memcpy(v13 + 2, v11, v10);
        v7 = 0;
        v14[v10 | 2] = 0;
        v14[v10 + 3] = 0;
        a1[6] = v14;
      }

      else
      {
        v7 = 4294967277;
      }
    }
  }

  return v7;
}

uint64_t AuthorizePresentmentFromAppleIDV(void *a1)
{
  v33 = *MEMORY[0x277D85DE8];
  v27 = 0;
  if (!a1)
  {
    goto LABEL_14;
  }

  if (!a1[3])
  {
    v18 = 4294967270;
    goto LABEL_11;
  }

  if (!*a1 || (OUTLINED_FUNCTION_33(), !v3 & v2) || !a1[6] || (OUTLINED_FUNCTION_33(), !v3 & v2) || (OUTLINED_FUNCTION_0(), (v5 = malloc_type_malloc(0x1000uLL, v4)) == 0))
  {
LABEL_14:
    v18 = 5;
    goto LABEL_11;
  }

  v6 = v5;
  v7 = a1[1];
  *v5 = 60;
  *(v5 + 1) = v7;
  v5[3] = BYTE2(v7);
  v5[4] = BYTE3(v7);
  __memcpy_chk();
  v8 = (v7 + 5);
  v9 = &v6[v8];
  v10 = a1[3];
  v11 = a1[4];
  *v9 = 21;
  *(v9 + 1) = v11;
  v9[3] = BYTE2(v11);
  v9[4] = BYTE3(v11);
  memcpy(&v6[v8 + 5], v10, v11);
  v12 = (v11 + 5) + v8;
  v13 = &v6[v12];
  v14 = a1[6];
  v15 = a1[7];
  *v13 = 22;
  *(v13 + 1) = v15;
  v13[3] = BYTE2(v15);
  v13[4] = BYTE3(v15);
  memcpy(&v6[v12 + 5], v14, v15);
  v16 = (v15 + 5);
  v17 = APPLEIDV_LOG_CLIENT();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    [MEMORY[0x277CBEA90] dataWithBytes:v6 length:{v16 + v12, v27}];
    *v30 = v29 = 138412290;
    OUTLINED_FUNCTION_40();
    _os_log_debug_impl(v22, v23, v24, v25, v26, 0xCu);
  }

  v18 = GenericAppleIDVCall(3u, v6, v16 + v12, &v28, &v27);
  free(v6);
LABEL_11:
  v19 = APPLEIDV_LOG_CLIENT();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
  {
    v29 = 67109632;
    *v30 = 967;
    *&v30[4] = 1024;
    *&v30[6] = v18;
    v31 = 2048;
    v32 = v18;
    OUTLINED_FUNCTION_25(&dword_2259A7000, v19, v20, "[line %d] kret = %d 0x%lx", &v29);
  }

  return v18;
}

uint64_t extractACLForSCRD(void *a1, uint64_t a2, void *a3, void *a4)
{
  v7 = 5;
  if (a1 && a3 && a4)
  {
    v4 = a1;
    ccder_decode_constructed_tl();
    *a3 = 0;
    v7 = 20;
    *a4 = 0;
  }

  v8 = APPLEIDV_LOG_CLIENT();
  if (OUTLINED_FUNCTION_36(v8))
  {
    OUTLINED_FUNCTION_16();
    _os_log_debug_impl(v10, v11, v12, v13, v14, 0x26u);
  }

  return v7;
}

uint64_t tlvEncodeWithCheck(uint64_t a1, char a2, const void *a3, unsigned int a4, void *a5, void *a6)
{
  v13 = APPLEIDV_LOG_CLIENT();
  if (OUTLINED_FUNCTION_37(v13))
  {
    OUTLINED_FUNCTION_21();
    _os_log_debug_impl(v16, v17, v18, v19, v20, 0x2Cu);
  }

  if (*a5 < a4 + 5)
  {
    return 4294967272;
  }

  *a1 = a2;
  *(a1 + 1) = a4;
  memcpy((a1 + 5), a3, a4);
  result = 0;
  v15 = a4 + 5;
  *a6 += v15;
  *a5 -= v15;
  return result;
}

CGRect CGRectIntersection(CGRect r1, CGRect r2)
{
  MEMORY[0x2821115D8](r1.origin, *&r1.origin.y, r1.size, *&r1.size.height, r2.origin, *&r2.origin.y, r2.size, *&r2.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}
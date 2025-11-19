uint64_t sub_22614B7B0@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_22616F828();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_22614B7DC()
{
  MEMORY[0x22AA77CD0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22614B814@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 16);
}

uint64_t sub_22614B86C()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22614B8B0()
{
  if (*(v0 + 40))
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  }

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_22614B8F0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_22614B938()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22614B974()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22614B9AC()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_22614B9FC(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

id sub_22614BA24(void *a1)
{
  v3 = type metadata accessor for MapsIntelligenceClientSignalType();
  Description = v3[-1].Description;
  v5 = Description[8];
  MEMORY[0x28223BE20]();
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a1[3];
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v8);
  v10 = OBJC_IVAR____TtC16MapsIntelligence31MapsIntelligenceBaseTransformer__signalType;
  if ((dispatch thunk of MapsIntelligenceClientSignal.isOfType(_:)(v1 + OBJC_IVAR____TtC16MapsIntelligence31MapsIntelligenceBaseTransformer__signalType, v8, v9) & 1) == 0)
  {
    return [objc_opt_self() undefinedFeatureValueWithType_];
  }

  (Description[2])(v7, v1 + v10, v3);
  v11 = (Description[11])(v7, v3);
  if (!v11)
  {
    return [objc_opt_self() undefinedFeatureValueWithType_];
  }

  if (v11 == 1)
  {
    v13 = a1[3];
    v14 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v13);
    result = dispatch thunk of MapsIntelligenceClientSignal.signalOfType(_:)(v1 + v10, v13, v14);
    if (v27)
    {
      sub_22614C5B0(&v26, v28);
      sub_22614C5C0();
      swift_dynamicCast();
      v15 = v25;
      [v25 doubleValue];
      v17 = [objc_opt_self() featureValueWithDouble_];
LABEL_8:
      v18 = v17;

      return v18;
    }

    __break(1u);
    goto LABEL_18;
  }

  if (v11 != 2)
  {
    if (v11 == 3)
    {
      v23 = a1[3];
      v24 = a1[4];
      __swift_project_boxed_opaque_existential_1(a1, v23);
      result = dispatch thunk of MapsIntelligenceClientSignal.signalOfType(_:)(v1 + v10, v23, v24);
      if (v27)
      {
        sub_22614C5B0(&v26, v28);
        sub_22614C5C0();
        swift_dynamicCast();
        v15 = v25;
        v17 = [objc_opt_self() featureValueWithInt64_];
        goto LABEL_8;
      }

      goto LABEL_19;
    }

    v22 = [objc_opt_self() undefinedFeatureValueWithType_];
    (Description[1])(v7, v3);
    return v22;
  }

  v19 = a1[3];
  v20 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v19);
  result = dispatch thunk of MapsIntelligenceClientSignal.signalOfType(_:)(v1 + v10, v19, v20);
  if (v27)
  {
    sub_22614C5B0(&v26, v28);
    swift_dynamicCast();
    v21 = sub_22616F7F8();

    v22 = [objc_opt_self() featureValueWithString_];

    return v22;
  }

LABEL_18:
  __break(1u);
LABEL_19:
  __break(1u);
  return result;
}

uint64_t sub_22614BE48()
{
  v1 = *(v0 + 3);

  v2 = *(v0 + 5);

  v3 = OBJC_IVAR____TtC16MapsIntelligence31MapsIntelligenceBaseTransformer__signalType;
  v4 = type metadata accessor for MapsIntelligenceClientSignalType();
  (*(v4[-1].Description + 1))(&v0[v3], v4);
  v5 = *&v0[OBJC_IVAR____TtC16MapsIntelligence31MapsIntelligenceBaseTransformer__outputType + 8];

  v6 = *(*v0 + 48);
  v7 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for MapsIntelligencePassThruTransformer()
{
  result = qword_28136CA80;
  if (!qword_28136CA80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22614BFC4(uint64_t a1, id *a2)
{
  result = sub_22616F808();
  *a2 = 0;
  return result;
}

uint64_t sub_22614C03C(uint64_t a1, id *a2)
{
  v3 = sub_22616F818();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_22614C0BC@<X0>(uint64_t *a1@<X8>)
{
  sub_22616F828();
  v2 = sub_22616F7F8();

  *a1 = v2;
  return result;
}

uint64_t sub_22614C100()
{
  v1 = *v0;
  v2 = sub_22616F828();
  v3 = MEMORY[0x22AA772E0](v2);

  return v3;
}

uint64_t sub_22614C13C()
{
  v1 = *v0;
  sub_22616F828();
  sub_22616F8B8();
}

uint64_t sub_22614C190()
{
  v1 = *v0;
  sub_22616F828();
  sub_22616FCB8();
  sub_22616F8B8();
  v2 = sub_22616FCD8();

  return v2;
}

uint64_t sub_22614C204(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_22616F828();
  v6 = v5;
  if (v4 == sub_22616F828() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_22616FC68();
  }

  return v9 & 1;
}

uint64_t sub_22614C28C(uint64_t a1)
{
  v2 = sub_22614C4DC(&qword_27D78CED0, type metadata accessor for FileAttributeKey);
  v3 = sub_22614C4DC(&qword_27D78CED8, type metadata accessor for FileAttributeKey);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_22614C348@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_22616F7F8();

  *a2 = v5;
  return result;
}

uint64_t sub_22614C390(uint64_t a1)
{
  v2 = sub_22614C4DC(&qword_27D78CEA0, type metadata accessor for MLModelMetadataKey);
  v3 = sub_22614C4DC(&qword_27D78CEA8, type metadata accessor for MLModelMetadataKey);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_22614C4DC(unint64_t *a1, void (*a2)(uint64_t))
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

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

_OWORD *sub_22614C5B0(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

unint64_t sub_22614C5C0()
{
  result = qword_28136C380;
  if (!qword_28136C380)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28136C380);
  }

  return result;
}

void sub_22614C620(uint64_t a1, unint64_t *a2)
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

void *sub_22614C76C(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for MapsIntelligenceClientSignalType();
  Description = v4[-1].Description;
  v6 = Description[8];
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 16))
  {
    v10 = v7;
    v11 = sub_226155B2C(0x6C616E676973, 0xE600000000000000);
    if (v12)
    {
      sub_22614D234(*(a1 + 56) + 32 * v11, &v45);
      sub_22614D290();
      if (swift_dynamicCast())
      {
        v13 = v43;
        *&v43 = 1701667182;
        *(&v43 + 1) = 0xE400000000000000;
        v14 = [v13 __swift_objectForKeyedSubscript_];
        swift_unknownObjectRelease();
        if (v14)
        {
          sub_22616FB28();
          swift_unknownObjectRelease();
        }

        else
        {
          v43 = 0u;
          v44 = 0u;
        }

        v45 = v43;
        v46 = v44;
        if (*(&v44 + 1))
        {
          if ((swift_dynamicCast() & 1) == 0)
          {
            goto LABEL_30;
          }

          v18 = v42;
          v39 = v41;
          *&v43 = 1701869940;
          *(&v43 + 1) = 0xE400000000000000;
          v19 = sub_22616FC78();
          v40 = v13;
          v20 = [v13 __swift_objectForKeyedSubscript_];
          swift_unknownObjectRelease();
          if (v20)
          {
            sub_22616FB28();
            swift_unknownObjectRelease();
          }

          else
          {
            v43 = 0u;
            v44 = 0u;
          }

          v45 = v43;
          v46 = v44;
          v13 = v40;
          if (*(&v44 + 1))
          {
            if (swift_dynamicCast())
            {
              v21 = v42;
              if (*(a1 + 16))
              {
                v22 = v41;
                v23 = sub_226155B2C(0x74757074756FLL, 0xE600000000000000);
                if (v24)
                {
                  sub_22614D234(*(a1 + 56) + 32 * v23, &v45);

                  if (swift_dynamicCast())
                  {
                    v25 = v43;
                    *&v43 = 1701667182;
                    *(&v43 + 1) = 0xE400000000000000;
                    v26 = sub_22616FC78();
                    v38 = v25;
                    v27 = [v25 __swift_objectForKeyedSubscript_];
                    swift_unknownObjectRelease();
                    if (v27)
                    {
                      sub_22616FB28();
                      swift_unknownObjectRelease();
                    }

                    else
                    {
                      v43 = 0u;
                      v44 = 0u;
                    }

                    v45 = v43;
                    v46 = v44;
                    if (*(&v44 + 1))
                    {
                      if ((swift_dynamicCast() & 1) == 0)
                      {
LABEL_50:

                        goto LABEL_32;
                      }

                      v36 = v41;
                      v37 = v42;
                      *&v43 = 1701869940;
                      *(&v43 + 1) = 0xE400000000000000;
                      v28 = [v38 __swift_objectForKeyedSubscript_];
                      swift_unknownObjectRelease();
                      if (v28)
                      {
                        sub_22616FB28();
                        swift_unknownObjectRelease();
                      }

                      else
                      {
                        v43 = 0u;
                        v44 = 0u;
                      }

                      v45 = v43;
                      v46 = v44;
                      if (*(&v44 + 1))
                      {
                        if (swift_dynamicCast())
                        {
                          v29 = v41;
                          v30 = v42;
                          v31 = v37;
                          v2[2] = v36;
                          v2[3] = v31;
                          v2[4] = v39;
                          v2[5] = v18;
                          if (v22 == 0x676E69727453 && v21 == 0xE600000000000000 || (sub_22616FC68() & 1) != 0)
                          {

                            v32 = &enum case for MapsIntelligenceClientSignalType.string(_:);
                          }

                          else if (v22 == 0x656C62756F44 && v21 == 0xE600000000000000 || (sub_22616FC68() & 1) != 0)
                          {

                            v32 = &enum case for MapsIntelligenceClientSignalType.double(_:);
                          }

                          else
                          {
                            if (v22 != 7630409 || v21 != 0xE300000000000000)
                            {
                              v34 = sub_22616FC68();

                              if (v34)
                              {
                                v32 = &enum case for MapsIntelligenceClientSignalType.int64(_:);
                              }

                              else
                              {
                                v32 = &enum case for MapsIntelligenceClientSignalType.unknown(_:);
                              }

                              goto LABEL_46;
                            }

                            v32 = &enum case for MapsIntelligenceClientSignalType.int64(_:);
                            v38 = v40;
                          }

LABEL_46:
                          (Description[13])(v9, *v32, v10);
                          (Description[4])(v2 + OBJC_IVAR____TtC16MapsIntelligence31MapsIntelligenceBaseTransformer__signalType, v9, v10);
                          v33 = (v2 + OBJC_IVAR____TtC16MapsIntelligence31MapsIntelligenceBaseTransformer__outputType);
                          *v33 = v29;
                          v33[1] = v30;
                          return v2;
                        }

                        goto LABEL_50;
                      }
                    }

                    goto LABEL_26;
                  }
                }

                else
                {
                }

LABEL_32:

                goto LABEL_7;
              }
            }

LABEL_30:

            goto LABEL_7;
          }
        }

LABEL_26:
        sub_22614D2DC(&v45);
        goto LABEL_7;
      }
    }
  }

LABEL_7:
  type metadata accessor for MapsIntelligenceBaseTransformer();
  v15 = *(*v2 + 48);
  v16 = *(*v2 + 52);
  swift_deallocPartialClassInstance();
  return 0;
}

id sub_22614CE4C()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBFEF8]);

  return [v0 init];
}

MapsIntelligenceClientInterface::MapsIntelligenceClientSignalType __swiftcall MapsIntelligenceSignalTypeFromNSString(_:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  v4 = v1;
  if (a1._countAndFlagsBits == 0x676E69727453 && a1._object == 0xE600000000000000 || (sub_22616FC68() & 1) != 0)
  {
    v5 = &enum case for MapsIntelligenceClientSignalType.string(_:);
  }

  else if (countAndFlagsBits == 0x656C62756F44 && object == 0xE600000000000000 || (sub_22616FC68() & 1) != 0)
  {
    v5 = &enum case for MapsIntelligenceClientSignalType.double(_:);
  }

  else
  {
    v5 = &enum case for MapsIntelligenceClientSignalType.int64(_:);
    if ((countAndFlagsBits != 7630409 || object != 0xE300000000000000) && (sub_22616FC68() & 1) == 0)
    {
      v5 = &enum case for MapsIntelligenceClientSignalType.unknown(_:);
    }
  }

  v6 = *v5;
  v7 = type metadata accessor for MapsIntelligenceClientSignalType();
  v8 = *(v7[-1].Description + 13);

  return v8(v4, v6, v7);
}

uint64_t sub_22614CFD8()
{
  v1 = *(v0 + 3);

  v2 = *(v0 + 5);

  v3 = OBJC_IVAR____TtC16MapsIntelligence31MapsIntelligenceBaseTransformer__signalType;
  v4 = type metadata accessor for MapsIntelligenceClientSignalType();
  (*(v4[-1].Description + 1))(&v0[v3], v4);
  v5 = *&v0[OBJC_IVAR____TtC16MapsIntelligence31MapsIntelligenceBaseTransformer__outputType + 8];

  v6 = *(*v0 + 48);
  v7 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_22614D0DC()
{
  v1 = *(*v0 + 16);
  v2 = *(*v0 + 24);

  return v1;
}

uint64_t sub_22614D110()
{
  v1 = *(*v0 + 32);
  v2 = *(*v0 + 40);

  return v1;
}

uint64_t type metadata accessor for MapsIntelligenceBaseTransformer()
{
  result = qword_28136CD28;
  if (!qword_28136CD28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22614D198()
{
  result = type metadata accessor for MapsIntelligenceClientSignalType();
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

uint64_t sub_22614D234(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_22614D290()
{
  result = qword_28136C3A0;
  if (!qword_28136C3A0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28136C3A0);
  }

  return result;
}

uint64_t sub_22614D2DC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78CEE0, &unk_226170C20);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_22614D38C(unint64_t a1)
{
  if (a1 < 5 && ((0x17u >> a1) & 1) != 0)
  {
    return 0x300020100uLL >> (8 * a1);
  }

  if (qword_27D78CE70 != -1)
  {
    swift_once();
  }

  v3 = sub_22616F788();
  __swift_project_value_buffer(v3, qword_27D78DCB0);
  v4 = sub_22616F768();
  v5 = sub_22616FA98();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 134217984;
    *(v6 + 4) = a1;
    _os_log_impl(&dword_22614A000, v4, v5, "Unknown GEOTransportTypePreference: %ld", v6, 0xCu);
    MEMORY[0x22AA77C50](v6, -1, -1);
  }

  return 0;
}

uint64_t sub_22614D4A4()
{
  v0 = sub_22616F788();
  __swift_allocate_value_buffer(v0, qword_27D78DCB0);
  __swift_project_value_buffer(v0, qword_27D78DCB0);
  return sub_22616F778();
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
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

unint64_t sub_22614D5C0(unint64_t result)
{
  if (result >= 4)
  {
    return 4;
  }

  return result;
}

uint64_t sub_22614D5D0(uint64_t a1)
{
  *(v1 + OBJC_IVAR____TtC16MapsIntelligence38MapsIntelligenceDoubleMatchTransformer__matchValue) = 0;
  *(v1 + OBJC_IVAR____TtC16MapsIntelligence38MapsIntelligenceDoubleMatchTransformer__matchingValue) = 0;
  *(v1 + OBJC_IVAR____TtC16MapsIntelligence38MapsIntelligenceDoubleMatchTransformer__nonMatchingValue) = 0;

  v4 = sub_22614C76C(v3);
  if (!v4)
  {
    goto LABEL_8;
  }

  if (!*(a1 + 16) || (v5 = v4, v6 = sub_226155B2C(0x6C616E676973, 0xE600000000000000), (v7 & 1) == 0) || (sub_22614D234(*(a1 + 56) + 32 * v6, &v31), sub_22614D290(), (swift_dynamicCast() & 1) == 0))
  {

LABEL_8:

    return 0;
  }

  v8 = v27;
  *&v28 = 0x65756C6176;
  *(&v28 + 1) = 0xE500000000000000;
  v9 = [v8 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (v9)
  {
    sub_22616FB28();
    swift_unknownObjectRelease();
  }

  else
  {
    v28 = 0u;
    v30 = 0u;
  }

  v31 = v28;
  v32 = v30;
  if (!*(&v30 + 1))
  {

LABEL_21:
    sub_22614E1F4(&v31, &qword_27D78CEE0, &unk_226170C20);
LABEL_24:

    return 0;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {

    return 0;
  }

  v24 = v8;
  *&v31 = 0;
  v11 = sub_22614DFC0(v25, v26);

  v12 = *&v31;
  if (!v11)
  {
    v12 = 0.0;
  }

  *(v5 + OBJC_IVAR____TtC16MapsIntelligence38MapsIntelligenceDoubleMatchTransformer__matchValue) = v12;
  if (!*(a1 + 16) || (v13 = sub_226155B2C(0x74757074756FLL, 0xE600000000000000), (v14 & 1) == 0))
  {

    goto LABEL_24;
  }

  sub_22614D234(*(a1 + 56) + 32 * v13, &v31);

  if ((swift_dynamicCast() & 1) == 0)
  {

LABEL_40:

    return 0;
  }

  v15 = v28;
  *&v29 = 0x65756C6176;
  *(&v29 + 1) = 0xE500000000000000;
  v16 = [v15 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (v16)
  {
    sub_22616FB28();
    swift_unknownObjectRelease();
  }

  else
  {
    v29 = 0u;
    v30 = 0u;
  }

  v31 = v29;
  v32 = v30;
  if (!*(&v30 + 1))
  {

    goto LABEL_21;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78CEE8, &unk_2261708D0);
  if ((swift_dynamicCast() & 1) == 0)
  {

LABEL_39:

    goto LABEL_40;
  }

  if (v25[2] != 2)
  {

    goto LABEL_39;
  }

  v17 = v25[6];
  v18 = v25[7];
  *&v31 = 0;

  LOBYTE(v17) = sub_22614DFC0(v17, v18);

  v19 = *&v31;
  if ((v17 & 1) == 0)
  {
    v19 = 0.0;
  }

  *(v5 + OBJC_IVAR____TtC16MapsIntelligence38MapsIntelligenceDoubleMatchTransformer__matchingValue) = v19;
  if (v25[2])
  {
    v20 = v25[4];
    v21 = v25[5];

    *&v31 = 0;
    v22 = sub_22614DFC0(v20, v21);

    v23 = *&v31;
    if (!v22)
    {
      v23 = 0.0;
    }

    result = v5;
    *(v5 + OBJC_IVAR____TtC16MapsIntelligence38MapsIntelligenceDoubleMatchTransformer__nonMatchingValue) = v23;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_22614DA2C(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for MapsIntelligenceClientSignalType();
  Description = v4[-1].Description;
  v6 = Description[8];
  v7 = (MEMORY[0x28223BE20])();
  v9 = v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = v23 - v10;
  v12 = a1[3];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v12);
  dispatch thunk of MapsIntelligenceClientSignal.type()(v12, v13);
  (Description[13])(v9, 1, v4);
  sub_22614E138();
  v14 = sub_22616F7E8();
  v15 = Description[1];
  v15(v9, v4);
  v15(v11, v4);
  if ((v14 & 1) == 0)
  {
    v20 = [objc_opt_self() featureValueWithDouble_];
    return v20;
  }

  sub_22614E190(a1, v25);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78CEF0, &qword_226170C40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78CEF8, &qword_2261708E0);
  if (!swift_dynamicCast())
  {
    v24 = 0;
    memset(v23, 0, sizeof(v23));
    sub_22614E1F4(v23, &qword_27D78CF00, &qword_2261708E8);
    v20 = [objc_opt_self() undefinedFeatureValueWithType_];
    return v20;
  }

  sub_22614B9FC(v23, v26);
  v16 = v27;
  v17 = v28;
  __swift_project_boxed_opaque_existential_1(v26, v27);
  dispatch thunk of MapsIntelligenceClientDoubleSignal.doubleValue()(v16, v17);
  if (vabdd_f64(v18, *(v2 + OBJC_IVAR____TtC16MapsIntelligence38MapsIntelligenceDoubleMatchTransformer__matchValue)) >= 0.001)
  {
    v19 = [objc_opt_self() featureValueWithDouble_];
  }

  else
  {
    v19 = [objc_opt_self() featureValueWithDouble_];
  }

  v22 = v19;
  __swift_destroy_boxed_opaque_existential_1(v26);
  return v22;
}

uint64_t type metadata accessor for MapsIntelligenceDoubleMatchTransformer()
{
  result = qword_28136C808;
  if (!qword_28136C808)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22614DDD8(uint64_t a1)
{
  if (*(a1 + 16))
  {
    v2 = sub_226155B2C(0x6C616E676973, 0xE600000000000000);
    if (v3)
    {
      sub_22614D234(*(a1 + 56) + 32 * v2, v18);
      sub_22614D290();
      if (swift_dynamicCast())
      {
        v4 = v15;
        *&v16 = 1701869940;
        *(&v16 + 1) = 0xE400000000000000;
        v5 = [v4 __swift_objectForKeyedSubscript_];
        swift_unknownObjectRelease();
        if (v5)
        {
          sub_22616FB28();
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
          if (swift_dynamicCast())
          {
            if (v13 == 0x656C62756F44 && v14 == 0xE600000000000000)
            {

LABEL_14:
              matched = type metadata accessor for MapsIntelligenceDoubleMatchTransformer();
              v8 = *(matched + 48);
              v9 = *(matched + 52);
              swift_allocObject();

              v11 = sub_22614D5D0(v10);

              return v11;
            }

            v6 = sub_22616FC68();

            if (v6)
            {
              goto LABEL_14;
            }
          }
        }

        else
        {

          sub_22614E1F4(v18, &qword_27D78CEE0, &unk_226170C20);
        }
      }
    }
  }

  return 0;
}

BOOL sub_22614DFC0(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      if (a1 > 0x20u || ((0x100003E01uLL >> a1) & 1) == 0)
      {
        goto LABEL_10;
      }

      return 0;
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      v3 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      if (v3 >= 0x21 || ((0x100003E01uLL >> v3) & 1) == 0)
      {
LABEL_10:
        v5 = _swift_stdlib_strtod_clocale();
        return v5 && *v5 == 0;
      }

      return 0;
    }
  }

  sub_22616FB98();
  if (!v2)
  {
    return v7;
  }

  return v4;
}

_BYTE *sub_22614E0B8@<X0>(_BYTE *result@<X0>, BOOL *a2@<X8>)
{
  v3 = *result;
  v4 = v3 > 0x20;
  v5 = (1 << v3) & 0x100003E01;
  if (v4 || v5 == 0)
  {
    v8 = *(v2 + 16);
    result = _swift_stdlib_strtod_clocale();
    if (result)
    {
      v9 = *result == 0;
    }

    else
    {
      v9 = 0;
    }

    *a2 = v9;
  }

  else
  {
    *a2 = 0;
  }

  return result;
}

unint64_t sub_22614E138()
{
  result = qword_28136C3C0;
  if (!qword_28136C3C0)
  {
    type metadata accessor for MapsIntelligenceClientSignalType();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28136C3C0);
  }

  return result;
}

uint64_t sub_22614E190(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_22614E1F4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
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

uint64_t sub_22614E2A0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78CF18, &unk_226170A20);
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78CF20, &qword_226170DB0);
  v16 = *(*(v0 - 8) + 72);
  v1 = (*(*(v0 - 8) + 80) + 32) & ~*(*(v0 - 8) + 80);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_226170910;
  v3 = v2 + v1;
  v15 = *(v0 + 48);
  v4 = type metadata accessor for ModuleType();
  v5 = *(v4[-1].Description + 13);
  v5(v3, 0, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78CF28, &unk_226170A30);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_226170910;
  *(v6 + 32) = 0xD000000000000021;
  *(v6 + 40) = 0x80000002261719E0;
  *(v6 + 72) = 1;
  v7 = type metadata accessor for MIFPersonalizedAutocompleteRankerModule();
  v8 = swift_allocObject();
  *(v6 + 104) = v7;
  *(v6 + 112) = sub_22614F7BC(qword_28136C4D8, type metadata accessor for MIFPersonalizedAutocompleteRankerModule);
  *(v6 + 80) = v8;
  *(v3 + v15) = v6;
  *(v6 + 120) = 0;
  v9 = *(v0 + 48);
  v5(v3 + v16, 1, v4);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_226170920;
  v11 = type metadata accessor for MIFTransportModePredictonModule();
  v12 = swift_allocObject();
  *(v10 + 56) = v11;
  *(v10 + 64) = sub_22614F7BC(qword_28136C5A8, type metadata accessor for MIFTransportModePredictonModule);
  *(v10 + 32) = v12;
  *(v10 + 72) = 0;
  *(v3 + v16 + v9) = v10;
  v13 = sub_226159898(v2);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  off_28136C698 = v13;
  return result;
}

uint64_t sub_22614E588@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78CF40, &unk_226170A48);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v35 - v6;
  v8 = type metadata accessor for ModuleType();
  Description = v8[-1].Description;
  v9 = *(Description + 8);
  MEMORY[0x28223BE20](v8);
  v41 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(a2 + 64) = 0;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  v11 = [a1 bundleIdentifier];
  if (v11)
  {
    v12 = v11;
    v13 = sub_22616F828();
    v15 = v14;
  }

  else
  {
    v13 = 0;
    v15 = 0xE000000000000000;
  }

  *a2 = v13;
  *(a2 + 8) = v15;
  *(a2 + 16) = a1;
  result = [a1 infoDictionary];
  if (result)
  {
    v17 = result;
    v18 = sub_22616F7B8();

    if (*(v18 + 16) && (v19 = sub_226155B2C(0xD000000000000024, 0x8000000226171A50), (v20 & 1) != 0))
    {
      sub_22614D234(*(v18 + 56) + 32 * v19, v42);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78CEE8, &unk_2261708D0);
      result = swift_dynamicCast();
      if (result)
      {
        v21 = v43;
        goto LABEL_11;
      }
    }

    else
    {
    }
  }

  v21 = MEMORY[0x277D84F90];
LABEL_11:
  v36 = a2;
  v22 = *(v21 + 16);
  if (v22)
  {
    v23 = 0;
    v24 = (Description + 48);
    v40 = (Description + 32);
    v25 = (v21 + 40);
    v26 = MEMORY[0x277D84F90];
    v37 = v22;
    v38 = v8;
    while (v23 < *(v21 + 16))
    {
      v28 = *(v25 - 1);
      v27 = *v25;

      v29._countAndFlagsBits = v28;
      v29._object = v27;
      ModuleType.init(rawValue:)(v29);
      if ((*v24)(v7, 1, v8) == 1)
      {
        result = sub_22614E1F4(v7, &qword_27D78CF40, &unk_226170A48);
      }

      else
      {
        v30 = v21;
        v31 = *v40;
        (*v40)(v41, v7, v8);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v26 = sub_22616B26C(0, v26[2] + 1, 1, v26);
        }

        v33 = v26[2];
        v32 = v26[3];
        if (v33 >= v32 >> 1)
        {
          v26 = sub_22616B26C(v32 > 1, v33 + 1, 1, v26);
        }

        v26[2] = v33 + 1;
        v34 = v26 + ((Description[80] + 32) & ~Description[80]) + *(Description + 9) * v33;
        v8 = v38;
        result = (v31)(v34, v41, v38);
        v21 = v30;
        v22 = v37;
      }

      ++v23;
      v25 += 2;
      if (v22 == v23)
      {
        goto LABEL_23;
      }
    }

    __break(1u);
  }

  else
  {
    v26 = MEMORY[0x277D84F90];
LABEL_23:

    *(v36 + 24) = v26;
  }

  return result;
}

double sub_22614E944@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_226150DB0(v2 + 32, v13, &qword_27D78CF10, &qword_226170A18);
  v5 = v14;
  sub_22614E1F4(v13, &qword_27D78CF10, &qword_226170A18);
  if (!v5 && [*(v2 + 16) principalClass])
  {
    ObjCClassMetadata = swift_getObjCClassMetadata();
    v10 = swift_conformsToProtocol2();
    if (v10 && ObjCClassMetadata != 0)
    {
      v14 = ObjCClassMetadata;
      v15 = v10;
      v12 = v10;
      __swift_allocate_boxed_opaque_existential_1(v13);
      dispatch thunk of ModuleBundleProviding.init()(ObjCClassMetadata, v12);
      sub_22614F74C(v13, v2 + 32);
    }
  }

  if (*(v2 + 56))
  {
    sub_22614E190(v2 + 32, v13);
    v6 = v14;
    v7 = v15;
    __swift_project_boxed_opaque_existential_1(v13, v14);
    dispatch thunk of ModuleBundleProviding.module(for:)(a1, v6, v7);
    __swift_destroy_boxed_opaque_existential_1(v13);
  }

  else
  {
    *(a2 + 32) = 0;
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

unint64_t sub_22614EA8C()
{
  v1 = OBJC_IVAR____TtC16MapsIntelligence14ModuleRegistry____lazy_storage___availableModuleBundles;
  if (*(v0 + OBJC_IVAR____TtC16MapsIntelligence14ModuleRegistry____lazy_storage___availableModuleBundles))
  {
    v2 = *(v0 + OBJC_IVAR____TtC16MapsIntelligence14ModuleRegistry____lazy_storage___availableModuleBundles);
  }

  else
  {
    v2 = sub_226150968();
    v3 = *(v0 + v1);
    *(v0 + v1) = v2;
  }

  return v2;
}

uint64_t sub_22614EAF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v58 = a2;
  v3 = type metadata accessor for ModuleType();
  Description = v3[-1].Description;
  v5 = *(Description + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v61 = &v57 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v14 = &v57 - v13;
  if (qword_28136C690 != -1)
  {
LABEL_31:
    v56 = v11;
    swift_once();
    v11 = v56;
  }

  v66 = v11;
  v15 = off_28136C698;
  v16 = *(off_28136C698 + 2);
  v62 = v8;
  v60 = v14;
  if (v16 && (v11 = sub_226155BA4(a1), (v17 & 1) != 0))
  {
    v18 = *(v15[7] + 8 * v11);
  }

  else
  {
    v18 = MEMORY[0x277D84F90];
  }

  v70 = *(v18 + 16);
  if (v70)
  {
    v14 = 0;
    v69 = OBJC_IVAR____TtC16MapsIntelligence14ModuleRegistry_logger;
    v19 = v18 + 32;
    v20 = (Description + 16);
    v63 = (Description + 8);
    *&v12 = 136315138;
    v65 = v12;
    *&v12 = 136315394;
    v59 = v12;
    v68 = a1;
    v64 = v18;
    v67 = (Description + 16);
    do
    {
      if (v14 >= *(v18 + 16))
      {
        __break(1u);
        goto LABEL_31;
      }

      sub_22614F648(v19, v80);
      if ((v81 & 1) == 0)
      {

        v55 = v80;
        return sub_22614B9FC(v55, v58);
      }

      v21 = v80[0];
      Description = v80[1];
      v22 = sub_22614EA8C();
      if (!*(v22 + 16) || (v23 = sub_226155B2C(v21, Description), (v24 & 1) == 0))
      {

        v38 = sub_22616F768();
        v8 = sub_22616FA88();

        if (os_log_type_enabled(v38, v8))
        {
          v39 = swift_slowAlloc();
          v40 = v20;
          v41 = swift_slowAlloc();
          *&v78[0] = v41;
          *v39 = v65;
          v42 = sub_2261555F8(v21, Description, v78);

          *(v39 + 4) = v42;
          _os_log_impl(&dword_22614A000, v38, v8, "No matching bundle for identifier %s", v39, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v41);
          v43 = v41;
          v20 = v40;
          MEMORY[0x22AA77C50](v43, -1, -1);
          v44 = v39;
          a1 = v68;
          MEMORY[0x22AA77C50](v44, -1, -1);
        }

        else
        {
        }

        goto LABEL_10;
      }

      sub_22614F680(*(v22 + 56) + 72 * v23, &v73);

      v78[2] = v75;
      v78[3] = v76;
      v79 = v77;
      v78[0] = v73;
      v78[1] = v74;
      if (sub_22614F2CC(a1, *(&v74 + 1)))
      {
        sub_22614E944(a1, &v71);
        if (v72)
        {
          sub_22614F6B8(v78);

          sub_22614B9FC(&v71, &v73);
          v55 = &v73;
          return sub_22614B9FC(v55, v58);
        }

        sub_22614E1F4(&v71, &qword_27D78CF08, &qword_226170A10);
        v25 = *v20;
        v8 = v60;
        v26 = v66;
        (*v20)(v60, a1, v66);

        v27 = sub_22616F768();
        v28 = sub_22616FA98();

        if (!os_log_type_enabled(v27, v28))
        {
LABEL_24:

          (*v63)(v8, v26);
          goto LABEL_25;
        }

        v29 = swift_slowAlloc();
        v57 = swift_slowAlloc();
        *&v73 = v57;
        *v29 = v59;
        v30 = sub_2261555F8(v21, Description, &v73);

        *(v29 + 4) = v30;
        *(v29 + 12) = 2080;
        v25(v61, v8, v26);
        v31 = sub_22616F868();
        v33 = v32;
        (*v63)(v8, v26);
        v34 = sub_2261555F8(v31, v33, &v73);

        *(v29 + 14) = v34;
        v35 = v28;
        v36 = v27;
        v37 = "Bundle %s does not contain a module for type %s";
      }

      else
      {
        v45 = *v20;
        v8 = v62;
        v26 = v66;
        (*v20)(v62, a1, v66);

        v27 = sub_22616F768();
        v46 = sub_22616FA98();

        if (!os_log_type_enabled(v27, v46))
        {
          goto LABEL_24;
        }

        v29 = swift_slowAlloc();
        v57 = swift_slowAlloc();
        *&v73 = v57;
        *v29 = v59;
        v47 = sub_2261555F8(v21, Description, &v73);

        *(v29 + 4) = v47;
        *(v29 + 12) = 2080;
        v45(v61, v8, v26);
        v48 = sub_22616F868();
        v50 = v49;
        (*v63)(v8, v26);
        v51 = sub_2261555F8(v48, v50, &v73);

        *(v29 + 14) = v51;
        v35 = v46;
        v36 = v27;
        v37 = "Bundle %s does not support module type %s";
      }

      _os_log_impl(&dword_22614A000, v36, v35, v37, v29, 0x16u);
      Description = v57;
      swift_arrayDestroy();
      MEMORY[0x22AA77C50](Description, -1, -1);
      v52 = v29;
      a1 = v68;
      MEMORY[0x22AA77C50](v52, -1, -1);

LABEL_25:
      v11 = sub_22614F6B8(v78);
      v18 = v64;
      v20 = v67;
LABEL_10:
      ++v14;
      v19 += 48;
    }

    while (v70 != v14);
  }

  v54 = v58;
  *(v58 + 32) = 0;
  *v54 = 0u;
  v54[1] = 0u;
  return result;
}

BOOL sub_22614F2CC(uint64_t a1, uint64_t a2)
{
  v3 = 0;
  v4 = *(a2 + 16);
  do
  {
    v5 = v3;
    if (v4 == v3)
    {
      break;
    }

    Description = type metadata accessor for ModuleType()[-1].Description;
    ++v3;
    v7 = a2 + ((*(Description + 80) + 32) & ~*(Description + 80)) + Description[9] * v5;
    sub_22614F7BC(&qword_28136C3B0, type metadata accessor for ModuleType);
  }

  while ((sub_22616F7E8() & 1) == 0);
  return v4 != v5;
}

uint64_t sub_22614F3D8()
{
  v1 = OBJC_IVAR____TtC16MapsIntelligence14ModuleRegistry_logger;
  v2 = sub_22616F788();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC16MapsIntelligence14ModuleRegistry____lazy_storage___availableModuleBundles);

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t type metadata accessor for ModuleRegistry()
{
  result = qword_28136C680;
  if (!qword_28136C680)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22614F4B4()
{
  result = sub_22616F788();
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

uint64_t get_enum_tag_for_layout_string_31MapsIntelligenceClientInterface21ModuleBundleProviding_pSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy72_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_22614F594(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_22614F5DC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_22614F74C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78CF10, &qword_226170A18);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_22614F7BC(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_22614F804(uint64_t a1, char a2, void *a3)
{
  v50 = *(a1 + 16);
  if (!v50)
  {
    goto LABEL_22;
  }

  sub_226150DB0(a1 + 32, &v58, &qword_27D78CF48, &qword_226170A58);
  v7 = v58;
  v6 = v59;
  v56 = v58;
  v57 = v59;
  v53 = v62;
  v54 = v63;
  v55 = v64;
  v51 = v60;
  v52 = v61;
  v8 = *a3;
  v9 = sub_226155B2C(v58, v59);
  v11 = v8[2];
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v15 = v10;
  if (v8[3] < v14)
  {
    sub_226150110(v14, a2 & 1);
    v16 = *a3;
    v9 = sub_226155B2C(v7, v6);
    if ((v15 & 1) != (v17 & 1))
    {
LABEL_5:
      sub_22616FC98();
      __break(1u);
      goto LABEL_22;
    }

LABEL_8:
    if (v15)
    {
      goto LABEL_9;
    }

    goto LABEL_12;
  }

  if (a2)
  {
    goto LABEL_8;
  }

  v20 = v9;
  sub_22614FC38();
  v9 = v20;
  if (v15)
  {
LABEL_9:
    v18 = swift_allocError();
    swift_willThrow();
    v65 = v18;
    v19 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78CF50, &unk_226170A60);
    if ((swift_dynamicCast() & 1) == 0)
    {

      sub_22614F6B8(&v51);

      return;
    }

    goto LABEL_26;
  }

LABEL_12:
  v21 = *a3;
  *(*a3 + 8 * (v9 >> 6) + 64) |= 1 << v9;
  v22 = (v21[6] + 16 * v9);
  *v22 = v7;
  v22[1] = v6;
  v23 = v21[7] + 72 * v9;
  *v23 = v51;
  v24 = v52;
  v25 = v53;
  v26 = v54;
  *(v23 + 64) = v55;
  *(v23 + 32) = v25;
  *(v23 + 48) = v26;
  *(v23 + 16) = v24;
  v27 = v21[2];
  v13 = __OFADD__(v27, 1);
  v28 = v27 + 1;
  if (!v13)
  {
    v21[2] = v28;
    if (v50 == 1)
    {
LABEL_22:

      return;
    }

    v29 = a1 + 120;
    v30 = 1;
    while (v30 < *(a1 + 16))
    {
      sub_226150DB0(v29, &v58, &qword_27D78CF48, &qword_226170A58);
      v32 = v58;
      v31 = v59;
      v56 = v58;
      v57 = v59;
      v53 = v62;
      v54 = v63;
      v55 = v64;
      v51 = v60;
      v52 = v61;
      v33 = *a3;
      v34 = sub_226155B2C(v58, v59);
      v36 = v33[2];
      v37 = (v35 & 1) == 0;
      v13 = __OFADD__(v36, v37);
      v38 = v36 + v37;
      if (v13)
      {
        goto LABEL_23;
      }

      v39 = v35;
      if (v33[3] < v38)
      {
        sub_226150110(v38, 1);
        v40 = *a3;
        v34 = sub_226155B2C(v32, v31);
        if ((v39 & 1) != (v41 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v39)
      {
        goto LABEL_9;
      }

      v42 = *a3;
      *(*a3 + 8 * (v34 >> 6) + 64) |= 1 << v34;
      v43 = (v42[6] + 16 * v34);
      *v43 = v32;
      v43[1] = v31;
      v44 = v42[7] + 72 * v34;
      *v44 = v51;
      v45 = v52;
      v46 = v53;
      v47 = v54;
      *(v44 + 64) = v55;
      *(v44 + 32) = v46;
      *(v44 + 48) = v47;
      *(v44 + 16) = v45;
      v48 = v42[2];
      v13 = __OFADD__(v48, 1);
      v49 = v48 + 1;
      if (v13)
      {
        goto LABEL_24;
      }

      ++v30;
      v42[2] = v49;
      v29 += 88;
      if (v50 == v30)
      {
        goto LABEL_22;
      }
    }

    goto LABEL_25;
  }

LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  sub_22616FBA8();
  MEMORY[0x22AA77270](0xD00000000000001BLL, 0x8000000226171AB0);
  sub_22616FBC8();
  MEMORY[0x22AA77270](39, 0xE100000000000000);
  sub_22616FBD8();
  __break(1u);
}

void *sub_22614FC38()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78CF30, &unk_226170DC0);
  v2 = *v0;
  v3 = sub_22616FBE8();
  v4 = v3;
  if (*(v2 + 16))
  {
    v28 = v1;
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
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 72 * v17;
        sub_22614F680(*(v2 + 56) + 72 * v17, v29);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        v24 = *(v4 + 56) + v22;
        *v24 = v29[0];
        v25 = v29[1];
        v26 = v29[2];
        v27 = v29[3];
        *(v24 + 64) = v30;
        *(v24 + 32) = v26;
        *(v24 + 48) = v27;
        *(v24 + 16) = v25;
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

        v1 = v28;
        goto LABEL_21;
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

LABEL_21:
    *v1 = v4;
  }

  return result;
}

void *sub_22614FDFC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78CF58, &qword_226170DE0);
  v2 = *v0;
  v3 = sub_22616FBE8();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
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
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 40 * v17;
        sub_22614E190(*(v2 + 56) + 40 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_22614B9FC(v25, *(v4 + 56) + v22);
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

        v1 = v24;
        goto LABEL_21;
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

LABEL_21:
    *v1 = v4;
  }

  return result;
}

id sub_22614FFA4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78CF60, &qword_226170A70);
  v2 = *v0;
  v3 = sub_22616FBE8();
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
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;

        result = v20;
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

uint64_t sub_226150110(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78CF30, &unk_226170DC0);
  v43 = a2;
  result = sub_22616FBF8();
  v8 = result;
  if (*(v5 + 16))
  {
    v42 = v3;
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
      v22 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v25 = v22 | (v9 << 6);
      v26 = (*(v5 + 48) + 16 * v25);
      v27 = *v26;
      v28 = v26[1];
      v29 = *(v5 + 56) + 72 * v25;
      if (v43)
      {
        v44 = *v29;
        v30 = *(v29 + 16);
        v31 = *(v29 + 32);
        v32 = *(v29 + 48);
        v48 = *(v29 + 64);
        v46 = v31;
        v47 = v32;
        v45 = v30;
      }

      else
      {
        sub_22614F680(v29, &v44);
      }

      v33 = *(v8 + 40);
      sub_22616FCB8();
      sub_22616F8B8();
      result = sub_22616FCD8();
      v34 = -1 << *(v8 + 32);
      v35 = result & ~v34;
      v36 = v35 >> 6;
      if (((-1 << v35) & ~*(v15 + 8 * (v35 >> 6))) == 0)
      {
        v37 = 0;
        v38 = (63 - v34) >> 6;
        while (++v36 != v38 || (v37 & 1) == 0)
        {
          v39 = v36 == v38;
          if (v36 == v38)
          {
            v36 = 0;
          }

          v37 |= v39;
          v40 = *(v15 + 8 * v36);
          if (v40 != -1)
          {
            v16 = __clz(__rbit64(~v40)) + (v36 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v35) & ~*(v15 + 8 * (v35 >> 6)))) | v35 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v27;
      v17[1] = v28;
      v18 = *(v8 + 56) + 72 * v16;
      *v18 = v44;
      v19 = v45;
      v20 = v46;
      v21 = v47;
      *(v18 + 64) = v48;
      *(v18 + 32) = v20;
      *(v18 + 48) = v21;
      *(v18 + 16) = v19;
      ++*(v8 + 16);
    }

    v23 = v9;
    while (1)
    {
      v9 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v24 = v10[v9];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v13 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v42;
      goto LABEL_36;
    }

    v41 = 1 << *(v5 + 32);
    v3 = v42;
    if (v41 >= 64)
    {
      bzero((v5 + 64), ((v41 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v41;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

uint64_t sub_226150400(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78CF58, &qword_226170DE0);
  v36 = a2;
  result = sub_22616FBF8();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
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
      v25 = (*(v5 + 56) + 40 * v21);
      if (v36)
      {
        sub_22614B9FC(v25, v37);
      }

      else
      {
        sub_22614E190(v25, v37);
      }

      v26 = *(v8 + 40);
      sub_22616FCB8();
      sub_22616F8B8();
      result = sub_22616FCD8();
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      result = sub_22614B9FC(v37, *(v8 + 56) + 40 * v16);
      ++*(v8 + 16);
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_38;
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

    if ((v36 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_36;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

uint64_t sub_2261506C4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78CF60, &qword_226170A70);
  v39 = a2;
  result = sub_22616FBF8();
  v8 = result;
  if (*(v5 + 16))
  {
    v37 = v3;
    v38 = v5;
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
      if ((v39 & 1) == 0)
      {
        v26 = v22[1];

        v27 = v25;
      }

      v28 = *(v8 + 40);
      sub_22616FCB8();
      sub_22616F8B8();
      result = sub_22616FCD8();
      v29 = -1 << *(v8 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v15 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v15 + 8 * v31);
          if (v35 != -1)
          {
            v16 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v30) & ~*(v15 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v38;
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

    if ((v39 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_35;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v10, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v36;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

unint64_t sub_226150968()
{
  v0 = sub_22616F6F8();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ModuleRegistry();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v6 = [objc_opt_self() bundleForClass_];
  v7 = sub_22616F7F8();
  v8 = sub_22616F7F8();
  v9 = [v6 URLsForResourcesWithExtension:v7 subdirectory:v8];

  if (v9)
  {
    v10 = sub_22616F9A8();

    v11 = *(v10 + 16);
    if (v11)
    {
      v34 = v6;
      v12 = v1 + 16;
      v38 = *(v1 + 16);
      v13 = (*(v1 + 80) + 32) & ~*(v1 + 80);
      v33 = v10;
      v14 = v10 + v13;
      v37 = *(v12 + 56);
      v15 = (v12 - 8);
      v35 = v12;
      v36 = MEMORY[0x277D84F90];
      v16 = 0x277CCA000uLL;
      v38(v4, v10 + v13, v0);
      while (1)
      {
        v17 = objc_allocWithZone(*(v16 + 2264));
        v18 = sub_22616F688();
        v19 = [v17 initWithURL_];

        if (v19)
        {
          sub_22614E588(v19, v39);
          (*v15)(v4, v0);
          v20 = v39[0];
          v41 = v39[1];
          v42 = v39[2];
          v43 = v39[3];
          v44 = v40;

          if (swift_isUniquelyReferenced_nonNull_native())
          {
            v21 = v36;
          }

          else
          {
            v21 = sub_22616B444(0, v36[2] + 1, 1, v36);
          }

          v23 = v21[2];
          v22 = v21[3];
          if (v23 >= v22 >> 1)
          {
            v21 = sub_22616B444((v22 > 1), v23 + 1, 1, v21);
          }

          v21[2] = v23 + 1;
          v36 = v21;
          v24 = &v21[11 * v23];
          *(v24 + 2) = v20;
          *(v24 + 3) = v20;
          v25 = v41;
          v26 = v42;
          v27 = v43;
          v24[14] = v44;
          *(v24 + 5) = v26;
          *(v24 + 6) = v27;
          *(v24 + 4) = v25;
          v16 = 0x277CCA000;
        }

        else
        {
          (*v15)(v4, v0);
        }

        v14 += v37;
        if (!--v11)
        {
          break;
        }

        v38(v4, v14, v0);
      }

      v6 = v34;
      v28 = v36;
    }

    else
    {

      v28 = MEMORY[0x277D84F90];
    }

    if (v28[2])
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78CF30, &unk_226170DC0);
      v31 = sub_22616FC08();
    }

    else
    {
      v31 = MEMORY[0x277D84F98];
    }

    *&v39[0] = v31;

    sub_22614F804(v32, 1, v39);

    return *&v39[0];
  }

  else
  {
    v29 = sub_226159A80(MEMORY[0x277D84F90]);

    return v29;
  }
}

uint64_t sub_226150DB0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

__n128 __swift_memcpy41_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_226150E38(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 41))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 40);
  if (v3 >= 2)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_226150E74(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 25) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

uint64_t sub_226150EC4(uint64_t result, unsigned int a2)
{
  if (a2 > 1)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 40) = a2;
  return result;
}

uint64_t MapsIntelligenceBaseManager.init(trialProjectId:trialNamespaceName:modelFactor:defaultModel:signalResource:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = &v8[OBJC_IVAR____TtC16MapsIntelligence27MapsIntelligenceBaseManager__defaultModel];
  *v16 = 0u;
  *(v16 + 16) = 0u;
  *(v16 + 32) = 0;
  v17 = &v8[OBJC_IVAR____TtC16MapsIntelligence27MapsIntelligenceBaseManager__model];
  *(v17 + 4) = 0;
  *v17 = 0u;
  *(v17 + 1) = 0u;
  v18 = OBJC_IVAR____TtC16MapsIntelligence27MapsIntelligenceBaseManager__modelSemaphore;
  *&v8[v18] = dispatch_semaphore_create(1);
  v19 = &v8[OBJC_IVAR____TtC16MapsIntelligence27MapsIntelligenceBaseManager__signalResource];
  *v19 = a7;
  *(v19 + 1) = a8;
  swift_beginAccess();

  v39 = a6;
  sub_226151384(a6, v16);
  result = swift_endAccess();
  v21 = &v8[OBJC_IVAR____TtC16MapsIntelligence27MapsIntelligenceBaseManager__modelFactor];
  *v21 = a4;
  *(v21 + 1) = a5;
  v22 = &v8[OBJC_IVAR____TtC16MapsIntelligence27MapsIntelligenceBaseManager__namespaceName];
  *v22 = a2;
  *(v22 + 1) = a3;
  v23 = &v8[OBJC_IVAR____TtC16MapsIntelligence27MapsIntelligenceBaseManager__projectId];
  *v23 = a1;
  v23[4] = BYTE4(a1) & 1;
  if ((a1 & 0x100000000) != 0)
  {
    __break(1u);
  }

  else
  {

    v24 = [objc_opt_self() clientWithIdentifier_];
    *&v8[OBJC_IVAR____TtC16MapsIntelligence27MapsIntelligenceBaseManager__trialClient] = v24;
    v45.receiver = v8;
    v45.super_class = type metadata accessor for MapsIntelligenceBaseManager();
    v25 = objc_msgSendSuper2(&v45, sel_init);
    v26 = v25;
    v27 = *&v25[OBJC_IVAR____TtC16MapsIntelligence27MapsIntelligenceBaseManager__trialClient];
    if (v27 && (v25[OBJC_IVAR____TtC16MapsIntelligence27MapsIntelligenceBaseManager__projectId + 4] & 1) == 0 && *&v25[OBJC_IVAR____TtC16MapsIntelligence27MapsIntelligenceBaseManager__namespaceName + 8] && *&v25[OBJC_IVAR____TtC16MapsIntelligence27MapsIntelligenceBaseManager__modelFactor + 8])
    {
      v28 = *&v25[OBJC_IVAR____TtC16MapsIntelligence27MapsIntelligenceBaseManager__namespaceName];
      v29 = v27;

      v30 = sub_22616F7F8();

      v31 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v43 = sub_226151E30;
      v44 = v31;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_226151630;
      v42 = &block_descriptor;
      v32 = _Block_copy(aBlock);

      v33 = [v29 addUpdateHandlerForNamespaceName:v30 usingBlock:v32];
      _Block_release(v32);
      swift_unknownObjectRelease();

      sub_226151694();
      sub_226151488(v39);
    }

    else
    {
      v34 = OBJC_IVAR____TtC16MapsIntelligence27MapsIntelligenceBaseManager__defaultModel;
      swift_beginAccess();
      sub_226151418(v26 + v34, aBlock);
      if (v42)
      {
        sub_226151488(a6);
        sub_226151488(aBlock);
      }

      else
      {
        sub_226151488(aBlock);
        if (qword_28136C3D0 != -1)
        {
          swift_once();
        }

        v35 = sub_22616F788();
        __swift_project_value_buffer(v35, qword_28136D488);
        v36 = sub_22616F768();
        v37 = sub_22616FA98();
        if (os_log_type_enabled(v36, v37))
        {
          v38 = swift_slowAlloc();
          *v38 = 0;
          _os_log_impl(&dword_22614A000, v36, v37, "Failed to load model and default Model", v38, 2u);
          MEMORY[0x22AA77C50](v38, -1, -1);
        }

        else
        {
        }

        sub_226151488(v39);
        return 0;
      }
    }

    return v26;
  }

  return result;
}

uint64_t sub_226151384(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78CF88, &unk_226170B00);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_226151418(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78CF88, &unk_226170B00);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_226151488(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78CF88, &unk_226170B00);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_2261514F0()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    (*((*MEMORY[0x277D85000] & Strong->isa) + 0xE0))();
  }

  else
  {
    if (qword_28136C3D0 != -1)
    {
      swift_once();
    }

    v2 = sub_22616F788();
    __swift_project_value_buffer(v2, qword_28136D488);
    v1 = sub_22616F768();
    v3 = sub_22616FA98();
    if (os_log_type_enabled(v1, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_22614A000, v1, v3, "StrongSelf went away in MIBaseManager", v4, 2u);
      MEMORY[0x22AA77C50](v4, -1, -1);
    }
  }
}

uint64_t sub_226151630(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

void sub_226151694()
{
  if ((*(v0 + OBJC_IVAR____TtC16MapsIntelligence27MapsIntelligenceBaseManager__projectId + 4) & 1) == 0)
  {
    v1 = *(v0 + OBJC_IVAR____TtC16MapsIntelligence27MapsIntelligenceBaseManager__namespaceName + 8);
    if (v1)
    {
      v2 = *(v0 + OBJC_IVAR____TtC16MapsIntelligence27MapsIntelligenceBaseManager__modelFactor + 8);
      if (v2)
      {
        v3 = *(v0 + OBJC_IVAR____TtC16MapsIntelligence27MapsIntelligenceBaseManager__projectId);
        v4 = *(v0 + OBJC_IVAR____TtC16MapsIntelligence27MapsIntelligenceBaseManager__namespaceName);
        v5 = *(v0 + OBJC_IVAR____TtC16MapsIntelligence27MapsIntelligenceBaseManager__modelFactor);
        v6 = v0;
        v7 = *(v0 + OBJC_IVAR____TtC16MapsIntelligence27MapsIntelligenceBaseManager__modelSemaphore);
        sub_22616FAA8();
        v8 = type metadata accessor for MapsIntelligenceTrialModel();
        v9 = *(v8 + 48);
        v10 = *(v8 + 52);
        swift_allocObject();

        v11 = sub_22615ABD4(v3, v4, v1, v5, v2);
        if (v11)
        {
          v12 = &off_283958F88;
        }

        else
        {
          v8 = 0;
          v12 = 0;
          v22[1] = 0;
          v22[2] = 0;
        }

        v22[0] = v11;
        v23 = v8;
        v24 = v12;
        v20 = OBJC_IVAR____TtC16MapsIntelligence27MapsIntelligenceBaseManager__model;
        swift_beginAccess();
        sub_226152438(v22, v6 + v20);
        swift_endAccess();
        sub_22616FAB8();
        if (qword_28136C3D0 != -1)
        {
          swift_once();
        }

        v21 = sub_22616F788();
        __swift_project_value_buffer(v21, qword_28136D488);
        v16 = sub_22616F768();
        v17 = sub_22616FA98();
        if (!os_log_type_enabled(v16, v17))
        {
          goto LABEL_17;
        }

        v18 = swift_slowAlloc();
        *v18 = 0;
        v19 = "Succeeded in loading model";
        goto LABEL_16;
      }
    }
  }

  v13 = OBJC_IVAR____TtC16MapsIntelligence27MapsIntelligenceBaseManager__defaultModel;
  swift_beginAccess();
  sub_226151418(v0 + v13, v22);
  v14 = v23;
  sub_226151488(v22);
  if (v14)
  {
    return;
  }

  if (qword_28136C3D0 != -1)
  {
    swift_once();
  }

  v15 = sub_22616F788();
  __swift_project_value_buffer(v15, qword_28136D488);
  v16 = sub_22616F768();
  v17 = sub_22616FA98();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    v19 = "Failed to load model and default Model";
LABEL_16:
    _os_log_impl(&dword_22614A000, v16, v17, v19, v18, 2u);
    MEMORY[0x22AA77C50](v18, -1, -1);
  }

LABEL_17:
}

uint64_t sub_22615195C()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC16MapsIntelligence27MapsIntelligenceBaseManager__modelSemaphore);
  sub_22616FAA8();
  v3 = OBJC_IVAR____TtC16MapsIntelligence27MapsIntelligenceBaseManager__model;
  swift_beginAccess();
  sub_226151418(v1 + v3, &v19);
  if (v20)
  {
    sub_22614B9FC(&v19, v21);
    v4 = v22;
    v5 = v23;
    __swift_project_boxed_opaque_existential_1(v21, v22);
    v6 = (*(v5 + 16))(v4, v5);
    sub_22616FAB8();
LABEL_9:
    __swift_destroy_boxed_opaque_existential_1(v21);
    return v6;
  }

  sub_226151488(&v19);
  sub_22616FAB8();
  v7 = OBJC_IVAR____TtC16MapsIntelligence27MapsIntelligenceBaseManager__defaultModel;
  swift_beginAccess();
  sub_226151418(v1 + v7, &v19);
  if (v20)
  {
    sub_22614B9FC(&v19, v21);
    if (qword_28136C3D0 != -1)
    {
      swift_once();
    }

    v8 = sub_22616F788();
    __swift_project_value_buffer(v8, qword_28136D488);
    v9 = sub_22616F768();
    v10 = sub_22616FA88();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_22614A000, v9, v10, "metadata from default model", v11, 2u);
      MEMORY[0x22AA77C50](v11, -1, -1);
    }

    v12 = v22;
    v13 = v23;
    __swift_project_boxed_opaque_existential_1(v21, v22);
    v6 = (*(v13 + 16))(v12, v13);
    goto LABEL_9;
  }

  sub_226151488(&v19);
  if (qword_28136C3D0 != -1)
  {
    swift_once();
  }

  v15 = sub_22616F788();
  __swift_project_value_buffer(v15, qword_28136D488);
  v16 = sub_22616F768();
  v17 = sub_22616FA98();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_22614A000, v16, v17, "No Models were loaded, no metadata", v18, 2u);
    MEMORY[0x22AA77C50](v18, -1, -1);
  }

  sub_22614D290();
  return sub_22616FA58();
}

id MapsIntelligenceBaseManager.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id MapsIntelligenceBaseManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MapsIntelligenceBaseManager();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_226151DB0()
{
  v0 = sub_22616F788();
  __swift_allocate_value_buffer(v0, qword_28136D488);
  __swift_project_value_buffer(v0, qword_28136D488);
  return sub_22616F778();
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_226151E50(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + OBJC_IVAR____TtC16MapsIntelligence27MapsIntelligenceBaseManager__modelSemaphore);
  sub_22616FAA8();
  v5 = OBJC_IVAR____TtC16MapsIntelligence27MapsIntelligenceBaseManager__model;
  swift_beginAccess();
  sub_226151418(a2 + v5, &v29);
  if (v30)
  {
    sub_22614B9FC(&v29, v31);
    if (qword_28136C3D0 != -1)
    {
      swift_once();
    }

    v6 = sub_22616F788();
    __swift_project_value_buffer(v6, qword_28136D488);
    v7 = sub_22616F768();
    v8 = sub_22616FA88();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_22614A000, v7, v8, "Predicting with loaded model", v9, 2u);
      MEMORY[0x22AA77C50](v9, -1, -1);
    }

    v10 = v32;
    v11 = v33;
    __swift_project_boxed_opaque_existential_1(v31, v32);
    v12 = (*(v11 + 8))(a1, v10, v11);
    v13 = v32;
    v14 = v33;
    __swift_project_boxed_opaque_existential_1(v31, v32);
    (*(v14 + 16))(v13, v14);
    sub_22616FAB8();
LABEL_13:
    __swift_destroy_boxed_opaque_existential_1(v31);
    return v12;
  }

  sub_226151488(&v29);
  sub_22616FAB8();
  v15 = OBJC_IVAR____TtC16MapsIntelligence27MapsIntelligenceBaseManager__defaultModel;
  swift_beginAccess();
  sub_226151418(a2 + v15, &v29);
  if (v30)
  {
    sub_22614B9FC(&v29, v31);
    if (qword_28136C3D0 != -1)
    {
      swift_once();
    }

    v16 = sub_22616F788();
    __swift_project_value_buffer(v16, qword_28136D488);
    v17 = sub_22616F768();
    v18 = sub_22616FA88();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_22614A000, v17, v18, "Predicting with default model", v19, 2u);
      MEMORY[0x22AA77C50](v19, -1, -1);
    }

    v20 = v32;
    v21 = v33;
    __swift_project_boxed_opaque_existential_1(v31, v32);
    v12 = (*(v21 + 8))(a1, v20, v21);
    v22 = v32;
    v23 = v33;
    __swift_project_boxed_opaque_existential_1(v31, v32);
    (*(v23 + 16))(v22, v23);
    goto LABEL_13;
  }

  sub_226151488(&v29);
  if (qword_28136C3D0 != -1)
  {
    swift_once();
  }

  v25 = sub_22616F788();
  __swift_project_value_buffer(v25, qword_28136D488);
  v26 = sub_22616F768();
  v27 = sub_22616FA98();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    *v28 = 0;
    _os_log_impl(&dword_22614A000, v26, v27, "No Models were loaded, not predicting", v28, 2u);
    MEMORY[0x22AA77C50](v28, -1, -1);
  }

  return 0;
}

uint64_t sub_22615224C(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC16MapsIntelligence27MapsIntelligenceBaseManager__defaultModel;
  swift_beginAccess();
  sub_226151418(a2 + v4, &v11);
  if (v12)
  {
    sub_22614B9FC(&v11, v13);
    v5 = v14;
    v6 = v15;
    __swift_project_boxed_opaque_existential_1(v13, v14);
    v7 = (*(v6 + 8))(a1, v5, v6);
    v8 = v14;
    v9 = v15;
    __swift_project_boxed_opaque_existential_1(v13, v14);
    (*(v9 + 16))(v8, v9);
    __swift_destroy_boxed_opaque_existential_1(v13);
  }

  else
  {
    sub_226151488(&v11);
    return 0;
  }

  return v7;
}

uint64_t sub_226152438(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78CF88, &unk_226170B00);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t static TransportModePredictor.type.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for ModuleType();
  v3 = *(v2[-1].Description + 13);

  return v3(a1, 1, v2);
}

unint64_t sub_226152578(uint64_t a1)
{
  result = sub_2261525A0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2261525A0()
{
  result = qword_28136C5A8[0];
  if (!qword_28136C5A8[0])
  {
    type metadata accessor for MIFTransportModePredictonModule();
    result = swift_getWitnessTable();
    atomic_store(result, qword_28136C5A8);
  }

  return result;
}

uint64_t sub_226152678()
{
  v0 = sub_22616F788();
  __swift_allocate_value_buffer(v0, qword_28136D4D0);
  __swift_project_value_buffer(v0, qword_28136D4D0);
  return sub_22616F778();
}

uint64_t sub_2261526F8(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + OBJC_IVAR____TtC16MapsIntelligence27MapsIntelligenceBaseManager__modelSemaphore);
  sub_22616FAA8();
  v5 = OBJC_IVAR____TtC16MapsIntelligence27MapsIntelligenceBaseManager__model;
  swift_beginAccess();
  sub_226150DB0(a2 + v5, &v29, &qword_27D78CF88, &unk_226170B00);
  if (v30)
  {
    sub_22614B9FC(&v29, v31);
    if (qword_28136C3D0 != -1)
    {
      swift_once();
    }

    v6 = sub_22616F788();
    __swift_project_value_buffer(v6, qword_28136D488);
    v7 = sub_22616F768();
    v8 = sub_22616FA88();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_22614A000, v7, v8, "Predicting with loaded model", v9, 2u);
      MEMORY[0x22AA77C50](v9, -1, -1);
    }

    v10 = v32;
    v11 = v33;
    __swift_project_boxed_opaque_existential_1(v31, v32);
    v12 = (*(v11 + 8))(a1, v10, v11);
    v13 = v32;
    v14 = v33;
    __swift_project_boxed_opaque_existential_1(v31, v32);
    (*(v14 + 16))(v13, v14);
    sub_22616FAB8();
LABEL_13:
    __swift_destroy_boxed_opaque_existential_1(v31);
    return v12;
  }

  sub_22614E1F4(&v29, &qword_27D78CF88, &unk_226170B00);
  sub_22616FAB8();
  v15 = OBJC_IVAR____TtC16MapsIntelligence27MapsIntelligenceBaseManager__defaultModel;
  swift_beginAccess();
  sub_226150DB0(a2 + v15, &v29, &qword_27D78CF88, &unk_226170B00);
  if (v30)
  {
    sub_22614B9FC(&v29, v31);
    if (qword_28136C3D0 != -1)
    {
      swift_once();
    }

    v16 = sub_22616F788();
    __swift_project_value_buffer(v16, qword_28136D488);
    v17 = sub_22616F768();
    v18 = sub_22616FA88();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_22614A000, v17, v18, "Predicting with default model", v19, 2u);
      MEMORY[0x22AA77C50](v19, -1, -1);
    }

    v20 = v32;
    v21 = v33;
    __swift_project_boxed_opaque_existential_1(v31, v32);
    v12 = (*(v21 + 8))(a1, v20, v21);
    v22 = v32;
    v23 = v33;
    __swift_project_boxed_opaque_existential_1(v31, v32);
    (*(v23 + 16))(v22, v23);
    goto LABEL_13;
  }

  sub_22614E1F4(&v29, &qword_27D78CF88, &unk_226170B00);
  if (qword_28136C3D0 != -1)
  {
    swift_once();
  }

  v25 = sub_22616F788();
  __swift_project_value_buffer(v25, qword_28136D488);
  v26 = sub_22616F768();
  v27 = sub_22616FA98();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    *v28 = 0;
    _os_log_impl(&dword_22614A000, v26, v27, "No Models were loaded, not predicting", v28, 2u);
    MEMORY[0x22AA77C50](v28, -1, -1);
  }

  return 0;
}

uint64_t sub_226152B40(uint64_t a1, uint64_t a2)
{
  type metadata accessor for MapsIntelligenceFeatureProvider();
  v4 = swift_allocObject();
  *(v4 + 16) = MEMORY[0x277D84FA0];
  v5 = MEMORY[0x277D84F90];
  v72 = v4;
  *(v4 + 24) = sub_22615A090(MEMORY[0x277D84F90]);
  v6 = (v4 + 24);
  if (a1)
  {
    v7 = a1;
  }

  else
  {
    v7 = v5;
  }

  v75 = v7;
  v8 = *(v7 + 16);

  v74 = v8;
  if (!v8)
  {
LABEL_20:

    return v72;
  }

  v9 = 0;
  v10 = v75 + 32;
  v73 = a2;
  while (1)
  {
    if (v9 >= *(v75 + 16))
    {
      __break(1u);
      goto LABEL_27;
    }

    result = sub_22614E190(v10, v83);
    if (!a2)
    {
      __break(1u);
LABEL_29:
      __break(1u);
      return result;
    }

    v21 = v84;
    v22 = v85;
    __swift_project_boxed_opaque_existential_1(v83, v84);
    v23 = (*(v22 + 40))(v21, v22);
    v25 = v24;
    swift_beginAccess();
    v26 = *(a2 + 16);
    if (!*(v26 + 16) || (v27 = *(a2 + 16), , v28 = sub_226155B2C(v23, v25), v30 = v29, , (v30 & 1) == 0))
    {

      v82 = 0;
      v80 = 0u;
      v81 = 0u;
      sub_22614E1F4(&v80, &qword_27D78CFB0, &unk_226170C10);
      if (qword_28136C3E8 != -1)
      {
        swift_once();
      }

      v44 = sub_22616F788();
      __swift_project_value_buffer(v44, qword_28136D4D0);
      sub_22614E190(v83, &v80);
      v45 = sub_22616F768();
      v46 = sub_22616FA98();
      if (os_log_type_enabled(v45, v46))
      {
        v47 = swift_slowAlloc();
        v48 = swift_slowAlloc();
        v77 = v48;
        *v47 = 136315138;
        v50 = *(&v81 + 1);
        v49 = v82;
        __swift_project_boxed_opaque_existential_1(&v80, *(&v81 + 1));
        v51 = (*(v49 + 40))(v50, v49);
        v53 = v52;
        __swift_destroy_boxed_opaque_existential_1(&v80);
        v54 = sub_2261555F8(v51, v53, &v77);

        *(v47 + 4) = v54;
        _os_log_impl(&dword_22614A000, v45, v46, "signal %s not found", v47, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v48);
        MEMORY[0x22AA77C50](v48, -1, -1);
        MEMORY[0x22AA77C50](v47, -1, -1);
      }

      else
      {

        __swift_destroy_boxed_opaque_existential_1(&v80);
      }

      v11 = [objc_opt_self() undefinedFeatureValueWithType_];
      v12 = v84;
      v13 = v85;
      __swift_project_boxed_opaque_existential_1(v83, v84);
      v14 = (*(v13 + 24))(v12, v13);
      v16 = v15;
      swift_beginAccess();

      v17 = v11;
      v18 = *v6;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v77 = *v6;
      sub_2261589A4(v17, v14, v16, isUniquelyReferenced_nonNull_native);

      *v6 = v77;
      swift_endAccess();
      swift_beginAccess();
      sub_226158CC0(&v77, v14, v16);
      swift_endAccess();

      a2 = v73;
      goto LABEL_8;
    }

    sub_22614E190(*(v26 + 56) + 40 * v28, &v80);

    sub_22614E1F4(&v80, &qword_27D78CFB0, &unk_226170C10);
    v31 = v84;
    v32 = v85;
    __swift_project_boxed_opaque_existential_1(v83, v84);
    v34 = v84;
    v33 = v85;
    __swift_project_boxed_opaque_existential_1(v83, v84);
    v35 = (*(v33 + 40))(v34, v33);
    sub_226154CAC(v35, v36, 1, &v80);

    if (!*(&v81 + 1))
    {
      goto LABEL_29;
    }

    v37 = (*(v32 + 16))(&v80, v31, v32);
    __swift_destroy_boxed_opaque_existential_1(&v80);
    if (!v37)
    {
      break;
    }

    v38 = v84;
    v39 = v85;
    __swift_project_boxed_opaque_existential_1(v83, v84);
    v40 = (*(v39 + 24))(v38, v39);
    v42 = v41;
    swift_beginAccess();
    v43 = v37;

    sub_226154AA8(v37, v40, v42);
    swift_endAccess();
    swift_beginAccess();
    sub_226158CC0(&v77, v40, v42);
    swift_endAccess();

LABEL_8:
    ++v9;
    __swift_destroy_boxed_opaque_existential_1(v83);
    v10 += 40;
    if (v74 == v9)
    {
      goto LABEL_20;
    }
  }

  if (qword_28136C3E8 == -1)
  {
    goto LABEL_22;
  }

LABEL_27:
  swift_once();
LABEL_22:
  v55 = sub_22616F788();
  __swift_project_value_buffer(v55, qword_28136D4D0);
  sub_22614E190(v83, &v80);
  sub_22614E190(v83, &v77);
  v56 = sub_22616F768();
  v57 = sub_22616FA98();
  if (os_log_type_enabled(v56, v57))
  {
    v58 = swift_slowAlloc();
    v59 = swift_slowAlloc();
    v76 = v59;
    *v58 = 136315394;
    v60 = *(&v81 + 1);
    v61 = v82;
    __swift_project_boxed_opaque_existential_1(&v80, *(&v81 + 1));
    v62 = (*(v61 + 40))(v60, v61);
    v64 = v63;
    __swift_destroy_boxed_opaque_existential_1(&v80);
    v65 = sub_2261555F8(v62, v64, &v76);

    *(v58 + 4) = v65;
    *(v58 + 12) = 2080;
    v66 = v78;
    v67 = v79;
    __swift_project_boxed_opaque_existential_1(&v77, v78);
    v68 = (*(v67 + 24))(v66, v67);
    v70 = v69;
    __swift_destroy_boxed_opaque_existential_1(&v77);
    v71 = sub_2261555F8(v68, v70, &v76);

    *(v58 + 14) = v71;
    _os_log_impl(&dword_22614A000, v56, v57, "unable to transform signal %s with to %s! Aborting tranformation", v58, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AA77C50](v59, -1, -1);
    MEMORY[0x22AA77C50](v58, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1(&v80);
    __swift_destroy_boxed_opaque_existential_1(&v77);
  }

  __swift_destroy_boxed_opaque_existential_1(v83);
  return 0;
}

void sub_226153324(void *a1)
{
  if (!a1)
  {
    if (qword_28136C3E8 != -1)
    {
      goto LABEL_53;
    }

    goto LABEL_47;
  }

  v1 = [swift_unknownObjectRetain() featureNames];
  v2 = sub_22616FA38();

  v3 = 0;
  v4 = v2 + 56;
  v5 = 1 << *(v2 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(v2 + 56);
  v8 = (v5 + 63) >> 6;
  v79 = v2;
  while (v7)
  {
    v9 = v3;
LABEL_11:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v11 = (*(v2 + 48) + ((v9 << 10) | (16 * v10)));
    v13 = *v11;
    v12 = v11[1];

    v14 = sub_22616F7F8();
    v15 = [a1 featureValueForName_];

    if (v15)
    {
      v16 = [v15 type];
      if (v16 > 2)
      {
        if (v16 == 3)
        {
          if (qword_28136C3E8 != -1)
          {
            swift_once();
          }

          v57 = sub_22616F788();
          __swift_project_value_buffer(v57, qword_28136D4D0);

          v58 = v15;
          v59 = sub_22616F768();
          v60 = sub_22616FA78();
          v76 = v58;

          v21 = v59;
          v61 = v60;

          if (os_log_type_enabled(v21, v60))
          {
            v32 = swift_slowAlloc();
            logb = swift_slowAlloc();
            v82 = logb;
            *v32 = 136315394;
            v62 = sub_2261555F8(v13, v12, &v82);

            *(v32 + 4) = v62;
            *(v32 + 12) = 2080;
            v63 = [v76 stringValue];
            v64 = sub_22616F828();
            v66 = v65;

            v67 = sub_2261555F8(v64, v66, &v82);

            *(v32 + 14) = v67;
            v2 = v79;
            _os_log_impl(&dword_22614A000, v21, v61, "Prediction feature: %s value: %s", v32, 0x16u);
            v39 = logb;
            goto LABEL_37;
          }

LABEL_38:

          v3 = v9;
        }

        else
        {
          if (v16 != 6)
          {
LABEL_25:
            if (qword_28136C3E8 != -1)
            {
              swift_once();
            }

            v40 = sub_22616F788();
            __swift_project_value_buffer(v40, qword_28136D4D0);

            v41 = sub_22616F768();
            v42 = sub_22616FA78();

            if (os_log_type_enabled(v41, v42))
            {
              v43 = swift_slowAlloc();
              v77 = v41;
              v44 = swift_slowAlloc();
              v82 = v44;
              *v43 = 136315138;
              v45 = sub_2261555F8(v13, v12, &v82);

              *(v43 + 4) = v45;
              _os_log_impl(&dword_22614A000, v77, v42, "unsupported Prediction feature type: %s", v43, 0xCu);
              __swift_destroy_boxed_opaque_existential_1(v44);
              MEMORY[0x22AA77C50](v44, -1, -1);
              MEMORY[0x22AA77C50](v43, -1, -1);
            }

            else
            {
            }

            goto LABEL_44;
          }

          if (qword_28136C3E8 != -1)
          {
            swift_once();
          }

          v29 = sub_22616F788();
          __swift_project_value_buffer(v29, qword_28136D4D0);

          v30 = v15;
          v21 = sub_22616F768();
          v31 = sub_22616FA78();
          v76 = v30;

          if (os_log_type_enabled(v21, v31))
          {
            v32 = swift_slowAlloc();
            v72 = swift_slowAlloc();
            v82 = v72;
            *v32 = 136315394;
            v33 = sub_2261555F8(v13, v12, &v82);

            *(v32 + 4) = v33;
            *(v32 + 12) = 2080;
            v34 = [v76 dictionaryValue];
            sub_226154868(0, &qword_28136C380, 0x277CCABB0);
            sub_22616F7B8();

            v35 = sub_22616F7C8();
            v37 = v36;

            v38 = sub_2261555F8(v35, v37, &v82);

            *(v32 + 14) = v38;
            v2 = v79;
            _os_log_impl(&dword_22614A000, v21, v31, "Prediction feature: %s value: %s", v32, 0x16u);
            v39 = v72;
LABEL_37:
            swift_arrayDestroy();
            MEMORY[0x22AA77C50](v39, -1, -1);
            MEMORY[0x22AA77C50](v32, -1, -1);

            v68 = v76;
            goto LABEL_42;
          }

          v68 = v21;
LABEL_42:

          v3 = v9;
        }
      }

      else if (v16 == 1)
      {
        if (qword_28136C3E8 != -1)
        {
          swift_once();
        }

        v46 = sub_22616F788();
        __swift_project_value_buffer(v46, qword_28136D4D0);

        v47 = v15;
        v48 = sub_22616F768();
        v49 = sub_22616FA78();
        v50 = v47;

        if (os_log_type_enabled(v48, v49))
        {
          v78 = v49;
          v51 = swift_slowAlloc();
          v52 = swift_slowAlloc();
          v82 = v52;
          *v51 = 136315394;
          loga = v48;
          v53 = sub_2261555F8(v13, v12, &v82);

          *(v51 + 4) = v53;
          *(v51 + 12) = 2080;
          [v50 int64Value];
          v54 = sub_22616FC48();
          v56 = sub_2261555F8(v54, v55, &v82);

          *(v51 + 14) = v56;
          _os_log_impl(&dword_22614A000, loga, v78, "Prediction feature: %s value: %s", v51, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x22AA77C50](v52, -1, -1);
          MEMORY[0x22AA77C50](v51, -1, -1);
        }

        else
        {
        }

LABEL_44:
        v3 = v9;
        v2 = v79;
      }

      else
      {
        if (v16 != 2)
        {
          goto LABEL_25;
        }

        if (qword_28136C3E8 != -1)
        {
          swift_once();
        }

        v17 = sub_22616F788();
        __swift_project_value_buffer(v17, qword_28136D4D0);

        v18 = v15;
        v19 = sub_22616F768();
        v20 = sub_22616FA78();
        v76 = v18;

        v21 = v19;
        v22 = v20;

        if (!os_log_type_enabled(v21, v20))
        {
          goto LABEL_38;
        }

        v23 = swift_slowAlloc();
        log = swift_slowAlloc();
        v82 = log;
        *v23 = 136315394;
        v24 = sub_2261555F8(v13, v12, &v82);

        *(v23 + 4) = v24;
        *(v23 + 12) = 2080;
        [v76 doubleValue];
        v25 = sub_22616FA08();
        v27 = sub_2261555F8(v25, v26, &v82);

        *(v23 + 14) = v27;
        _os_log_impl(&dword_22614A000, v21, v22, "Prediction feature: %s value: %s", v23, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x22AA77C50](log, -1, -1);
        v28 = v23;
        v2 = v79;
        MEMORY[0x22AA77C50](v28, -1, -1);

        v3 = v9;
      }
    }

    else
    {

      v3 = v9;
    }
  }

  while (1)
  {
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v9 >= v8)
    {

      swift_unknownObjectRelease();
      return;
    }

    v7 = *(v4 + 8 * v9);
    ++v3;
    if (v7)
    {
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_53:
  swift_once();
LABEL_47:
  v69 = sub_22616F788();
  __swift_project_value_buffer(v69, qword_28136D4D0);
  v81 = sub_22616F768();
  v70 = sub_22616FA78();
  if (os_log_type_enabled(v81, v70))
  {
    v71 = swift_slowAlloc();
    *v71 = 0;
    _os_log_impl(&dword_22614A000, v81, v70, "Prediction feature: No features", v71, 2u);
    MEMORY[0x22AA77C50](v71, -1, -1);
  }
}

void sub_226153DCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_226152B40(a1, a2);
  if (!v5)
  {
    sub_226154868(0, &qword_28136C3A0, 0x277CBEAC0);
    sub_22616FA58();
LABEL_42:
    v34 = 1;
    goto LABEL_43;
  }

  v6 = v5;
  v7 = objc_opt_self();
  v8 = [v7 featureValueWithDouble_];
  swift_beginAccess();
  v9 = v8;
  v10 = *(v6 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v64 = *(v6 + 24);
  *(v6 + 24) = 0x8000000000000000;
  sub_2261589A4(v9, 0xD000000000000020, 0x8000000226171C70, isUniquelyReferenced_nonNull_native);
  *(v6 + 24) = v64;
  swift_endAccess();
  swift_beginAccess();
  sub_226158CC0(&v64, 0xD000000000000020, 0x8000000226171C70);
  swift_endAccess();

  v12 = [v7 featureValueWithDouble_];
  swift_beginAccess();
  v13 = v12;
  v14 = *(v6 + 24);
  v15 = swift_isUniquelyReferenced_nonNull_native();
  v64 = *(v6 + 24);
  *(v6 + 24) = 0x8000000000000000;
  sub_2261589A4(v13, 0xD000000000000020, 0x8000000226171C70, v15);
  *(v6 + 24) = v64;
  swift_endAccess();
  swift_beginAccess();
  sub_226158CC0(&v64, 0xD000000000000020, 0x8000000226171C70);
  swift_endAccess();

  sub_226158508();

  v17 = sub_2261526F8(v16, a3);

  if (!v17)
  {
    goto LABEL_16;
  }

  swift_unknownObjectRetain();
  v18 = sub_22616F7F8();
  v19 = [v17 featureValueForName_];

  swift_unknownObjectRelease();
  if (!v19)
  {
    goto LABEL_16;
  }

  v20 = swift_unknownObjectRetain();
  sub_226153324(v20);
  v21 = sub_22616BE00(v17);
  swift_unknownObjectRelease();
  if (v21 != 3)
  {

    swift_unknownObjectRelease();

    v34 = 0;
LABEL_43:
    LOBYTE(v61) = v34;
    return;
  }

  if (!a2)
  {
    if (qword_28136C3E8 != -1)
    {
      swift_once();
    }

    v35 = sub_22616F788();
    __swift_project_value_buffer(v35, qword_28136D4D0);
    v36 = sub_22616F768();
    v37 = sub_22616FA98();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&dword_22614A000, v36, v37, "Predicted Cycling but we don't have signals, Falling back to default Model", v38, 2u);
      MEMORY[0x22AA77C50](v38, -1, -1);
    }

    swift_unknownObjectRelease();
    goto LABEL_41;
  }

  swift_beginAccess();
  v22 = *(a2 + 16);
  v23 = *(v22 + 16);

  if (!v23)
  {
    goto LABEL_29;
  }

  v24 = sub_226155B2C(0xD00000000000001ELL, 0x8000000226171CC0);
  if ((v25 & 1) == 0)
  {

LABEL_29:
    v63 = 0;
    v61 = 0u;
    v62 = 0u;
    sub_22614E1F4(&v61, &qword_27D78CFB0, &unk_226170C10);
    if (qword_28136C3E8 != -1)
    {
      swift_once();
    }

    v39 = sub_22616F788();
    __swift_project_value_buffer(v39, qword_28136D4D0);
    v36 = sub_22616F768();
    v40 = sub_22616FA98();
    if (!os_log_type_enabled(v36, v40))
    {
      goto LABEL_39;
    }

    v41 = swift_slowAlloc();
    *v41 = 0;
    v42 = "Predicted Cycling but we don't know the user preference, Falling back to default Model";
    goto LABEL_38;
  }

  sub_22614E190(*(v22 + 56) + 40 * v24, &v61);

  sub_22614E1F4(&v61, &qword_27D78CFB0, &unk_226170C10);
  sub_226154CAC(0xD00000000000001ELL, 0x8000000226171CC0, 1, &v61);
  if (!*(&v62 + 1))
  {
    sub_22614E1F4(&v61, &qword_27D78CFB0, &unk_226170C10);
    goto LABEL_34;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78CEF0, &qword_226170C40);
  type metadata accessor for MapsIntelligenceDoubleSignal(0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_34:
    if (qword_28136C3E8 != -1)
    {
      swift_once();
    }

    v43 = sub_22616F788();
    __swift_project_value_buffer(v43, qword_28136D4D0);
    v36 = sub_22616F768();
    v40 = sub_22616FA98();
    if (!os_log_type_enabled(v36, v40))
    {
      goto LABEL_39;
    }

    v41 = swift_slowAlloc();
    *v41 = 0;
    v42 = "Predicted Cycling but unable to retrieve the user preference, Falling back to default Model";
LABEL_38:
    _os_log_impl(&dword_22614A000, v36, v40, v42, v41, 2u);
    MEMORY[0x22AA77C50](v41, -1, -1);
LABEL_39:

    swift_unknownObjectRelease();
LABEL_40:

LABEL_41:

    goto LABEL_42;
  }

  v26 = OBJC_IVAR____TtC16MapsIntelligence26MapsIntelligenceBaseSignal_value;
  swift_beginAccess();
  sub_226150DB0(v60 + v26, &v61, &qword_27D78CEE0, &unk_226170C20);
  if (!*(&v62 + 1))
  {
    sub_22614E1F4(&v61, &qword_27D78CEE0, &unk_226170C20);
    goto LABEL_45;
  }

  sub_226154868(0, &qword_28136C380, 0x277CCABB0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_45:
    v28 = 0.0;
    goto LABEL_46;
  }

  [v59 doubleValue];
  v28 = v27;
  v29 = *&v27;

  if ((v29 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
LABEL_75:
    __break(1u);
    goto LABEL_76;
  }

  if (v28 <= -9.22337204e18)
  {
    __break(1u);
LABEL_73:
    swift_once();
    goto LABEL_49;
  }

  if (v28 >= 9.22337204e18)
  {
    __break(1u);
LABEL_16:
    if (qword_28136C3E8 != -1)
    {
      swift_once();
    }

    v30 = sub_22616F788();
    __swift_project_value_buffer(v30, qword_28136D4D0);
    v31 = sub_22616F768();
    v32 = sub_22616FA98();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_22614A000, v31, v32, "Prediction failed, trying default model", v33, 2u);
      MEMORY[0x22AA77C50](v33, -1, -1);
    }

    swift_unknownObjectRelease();
    goto LABEL_42;
  }

LABEL_46:
  v29 = v28;
  if (v28 == 4)
  {

    swift_unknownObjectRelease();

    v34 = 0;
    goto LABEL_43;
  }

  if (qword_28136C3E8 != -1)
  {
    goto LABEL_73;
  }

LABEL_49:
  v44 = sub_22616F788();
  __swift_project_value_buffer(v44, qword_28136D4D0);
  v36 = sub_22616F768();
  v45 = sub_22616FA98();
  if (!os_log_type_enabled(v36, v45))
  {
LABEL_71:

    swift_unknownObjectRelease();

    goto LABEL_40;
  }

  v46 = swift_slowAlloc();
  v47 = swift_slowAlloc();
  *&v61 = v47;
  *v46 = 136315138;
  if (v29 < 0xFFFFFFFF80000000)
  {
    goto LABEL_75;
  }

  if (v29 > 0x7FFFFFFF)
  {
LABEL_76:
    __break(1u);
    goto LABEL_77;
  }

  buf = v46;
  v57 = v45;
  v56 = v47;
  if (v29 > 2)
  {
    if (v29 <= 4)
    {
      if (v29 == 3)
      {
        v48 = @"BICYCLE";
      }

      else
      {
        v48 = @"UNKNOWN_TRANSPORT_TYPE";
      }

      goto LABEL_68;
    }

    if (v29 == 5)
    {
      v48 = @"FERRY";
      goto LABEL_68;
    }

    if (v29 == 6)
    {
      v48 = @"RIDESHARE";
      goto LABEL_68;
    }

LABEL_64:
    v48 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", v29];
    goto LABEL_69;
  }

  if (!v29)
  {
    v48 = @"AUTOMOBILE";
    goto LABEL_68;
  }

  if (v29 == 1)
  {
    v48 = @"TRANSIT";
    goto LABEL_68;
  }

  if (v29 != 2)
  {
    goto LABEL_64;
  }

  v48 = @"WALKING";
LABEL_68:
  v49 = v48;
LABEL_69:
  v50 = v48;
  if (v50)
  {
    v51 = v50;
    v52 = sub_22616F828();
    v54 = v53;

    v55 = sub_2261555F8(v52, v54, &v61);

    *(buf + 4) = v55;
    _os_log_impl(&dword_22614A000, v36, v57, "Predicted Cycling but user preference is %s, Falling back to default Model", buf, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v56);
    MEMORY[0x22AA77C50](v56, -1, -1);
    MEMORY[0x22AA77C50](buf, -1, -1);
    goto LABEL_71;
  }

LABEL_77:
  __break(1u);
}

uint64_t sub_226154868(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t MapsIntelligenceSignalPack.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 16) = sub_226159E2C(MEMORY[0x277D84F90]);
  return v0;
}

uint64_t sub_226154920(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 24))
  {
    sub_226150EFC(a1, v17);
    v6 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = *v3;
    v8 = v18;
    v9 = v19;
    v10 = __swift_mutable_project_boxed_opaque_existential_1(v17, v18);
    v11 = *(*(v8 - 8) + 64);
    MEMORY[0x28223BE20](v10);
    v13 = &v17[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v14 + 16))(v13);
    sub_22616BAF4(v13, a2, a3, isUniquelyReferenced_nonNull_native, &v16, v8, v9);
    __swift_destroy_boxed_opaque_existential_1(v17);

    *v3 = v16;
  }

  else
  {
    sub_22614E1F4(a1, &qword_27D78CFB0, &unk_226170C10);
    sub_22616B6DC(a2, a3, v17);

    return sub_22614E1F4(v17, &qword_27D78CFB0, &unk_226170C10);
  }

  return result;
}

uint64_t sub_226154AA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    v8 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;
    sub_2261589A4(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v18;
  }

  else
  {
    v11 = *v3;
    v12 = sub_226155B2C(a2, a3);
    LOBYTE(v11) = v13;

    if (v11)
    {
      v14 = *v4;
      v15 = swift_isUniquelyReferenced_nonNull_native();
      v16 = *v4;
      v19 = *v4;
      if (!v15)
      {
        sub_22614FFA4();
        v16 = v19;
      }

      v17 = *(*(v16 + 48) + 16 * v12 + 8);

      result = sub_22616B944(v12, v16);
      *v4 = v16;
    }
  }

  return result;
}

double sub_226154BA0@<D0>(uint64_t a1@<X8>)
{
  sub_2261572A0(&v5);
  v8[0] = v5;
  v8[1] = v6;
  v9 = v7;
  sub_226150DB0(v8, &v4, &qword_27D78CFB8, &unk_226170C30);
  result = *&v5;
  v3 = v6;
  *a1 = v5;
  *(a1 + 16) = v3;
  *(a1 + 32) = v7;
  return result;
}

uint64_t sub_226154C14(uint64_t result, uint64_t a2, unint64_t a3)
{
  v3 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v3)
  {
    sub_226150DB0(result, v6, &qword_27D78CFB0, &unk_226170C10);
    swift_beginAccess();

    sub_226154920(v6, a2, a3);
    return swift_endAccess();
  }

  return result;
}

uint64_t sub_226154CAC@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v6 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v6 = result & 0xFFFFFFFFFFFFLL;
  }

  if (v6)
  {
    v9 = result;
    result = swift_beginAccess();
    v10 = *(v4 + 16);
    if (*(v10 + 16))
    {
      v11 = v4;
      v12 = *(v4 + 16);

      v13 = sub_226155B2C(v9, a2);
      if (v14)
      {
        sub_22614E190(*(v10 + 56) + 40 * v13, v21);

        sub_226150EFC(v21, v22);
        if ((a3 & 1) == 0 || (v15 = v23, v16 = v24, __swift_project_boxed_opaque_existential_1(v22, v23), (dispatch thunk of MapsIntelligenceClientSignal.hasExpired()(v15, v16) & 1) == 0))
        {
          v17 = *(v4 + 16);
          if (*(v17 + 16))
          {
            v18 = *(v11 + 16);

            v19 = sub_226155B2C(v9, a2);
            if (v20)
            {
              sub_22614E190(*(v17 + 56) + 40 * v19, a4);

              return __swift_destroy_boxed_opaque_existential_1(v22);
            }
          }
        }

        *(a4 + 32) = 0;
        *a4 = 0u;
        *(a4 + 16) = 0u;
        return __swift_destroy_boxed_opaque_existential_1(v22);
      }
    }
  }

  *(a4 + 32) = 0;
  *a4 = 0u;
  *(a4 + 16) = 0u;
  return result;
}

uint64_t sub_226154E14(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 16);
  if (!*(v5 + 16))
  {
    goto LABEL_5;
  }

  v6 = sub_226155B2C(a1, a2);
  if ((v7 & 1) == 0)
  {

LABEL_5:
    v8 = 0;
    v11 = 0;
    memset(v10, 0, sizeof(v10));
    goto LABEL_6;
  }

  sub_22614E190(*(v5 + 56) + 40 * v6, v10);

  v8 = 1;
LABEL_6:
  sub_22614E1F4(v10, &qword_27D78CFB0, &unk_226170C10);
  return v8;
}

void sub_226154ED8()
{
  v1 = v0;
  v28[0] = 2108717;
  v28[1] = 0xE300000000000000;
  MEMORY[0x22AA77270]();
  MEMORY[0x22AA77270](2960672, 0xE300000000000000);
  v29 = 2108717;
  v30 = 0xE300000000000000;
  swift_beginAccess();
  v2 = *(v0 + 16);
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = sub_226155574(*(v2 + 16), 0);
    v5 = sub_226157148(v28, v4 + 4, v3, v2);
    swift_bridgeObjectRetain_n();
    sub_226157C58();
    if (v5 == v3)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v4 = MEMORY[0x277D84F90];
LABEL_5:
  v28[0] = v4;
  sub_226156158(v28);

  v6 = *(v28[0] + 2);
  if (v6)
  {
    v7 = (v28[0] + 40);
    do
    {
      v8 = *(v1 + 16);
      if (*(v8 + 16))
      {
        v10 = *(v7 - 1);
        v9 = *v7;

        v11 = sub_226155B2C(v10, v9);
        if (v12)
        {
          sub_22614E190(*(v8 + 56) + 40 * v11, v28);

          sub_22614E190(v28, &v26);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78CEF0, &qword_226170C40);
          type metadata accessor for MapsIntelligenceBaseSignal(0);
          v13 = swift_dynamicCast();
          v14 = (*(*v25 + 248))(v13);
          v16 = v15;

          if (v16)
          {
            v26 = 10;
            v27 = 0xE100000000000000;
            MEMORY[0x22AA77270](v10, v9);

            MEMORY[0x22AA77270](2112032, 0xE300000000000000);
            MEMORY[0x22AA77270](v14, v16);

            MEMORY[0x22AA77270](v26, v27);

            __swift_destroy_boxed_opaque_existential_1(v28);
            goto LABEL_9;
          }

          __swift_destroy_boxed_opaque_existential_1(v28);
        }

        else
        {
        }
      }

LABEL_9:
      v7 += 2;
      --v6;
    }

    while (v6);
  }

  MEMORY[0x22AA77270](0xD000000000000010, 0x8000000226171D70);
  if (qword_28136C418 != -1)
  {
    swift_once();
  }

  v17 = sub_22616F788();
  __swift_project_value_buffer(v17, qword_28136D500);
  v19 = v29;
  v18 = v30;

  v20 = sub_22616F768();
  v21 = sub_22616FA78();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v28[0] = v23;
    *v22 = 136315138;
    v24 = sub_2261555F8(v19, v18, v28);

    *(v22 + 4) = v24;
    _os_log_impl(&dword_22614A000, v20, v21, "%s", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v23);
    MEMORY[0x22AA77C50](v23, -1, -1);
    MEMORY[0x22AA77C50](v22, -1, -1);
  }

  else
  {
  }
}

uint64_t MapsIntelligenceSignalPack.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t MapsIntelligenceSignalPack.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

double sub_2261553A0@<D0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  sub_2261572A0(&v7);
  v10[0] = v7;
  v10[1] = v8;
  v11 = v9;
  sub_226150DB0(v10, &v6, &qword_27D78CFB8, &unk_226170C30);

  result = *&v7;
  v5 = v8;
  *a1 = v7;
  *(a1 + 16) = v5;
  *(a1 + 32) = v9;
  return result;
}

uint64_t sub_226155430()
{
  v1 = sub_226156B90(*v0);

  return v1;
}

uint64_t sub_2261554F4()
{
  v0 = sub_22616F788();
  __swift_allocate_value_buffer(v0, qword_28136D500);
  __swift_project_value_buffer(v0, qword_28136D500);
  return sub_22616F778();
}

void *sub_226155574(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78CFE0, &unk_226170D30);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

uint64_t sub_2261555F8(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_2261556C4(v11, 0, 0, 1, a1, a2);
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
    sub_22614D234(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_2261556C4(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_2261557D0(a5, a6);
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
    result = sub_22616FBB8();
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

uint64_t sub_2261557D0(uint64_t a1, unint64_t a2)
{
  v4 = sub_22615581C(a1, a2);
  sub_22615594C(&unk_283958D48);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_22615581C(uint64_t a1, unint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  v6 = sub_226162334(v5, 0);
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

  result = sub_22616FBB8();
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
        v10 = sub_22616F908();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_226162334(v10, 0);
        result = sub_22616FB88();
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

uint64_t sub_22615594C(uint64_t result)
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

  result = sub_226155A38(result, v12, 1, v3);
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

char *sub_226155A38(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78CFD8, &qword_226170D28);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

unint64_t sub_226155B2C(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_22616FCB8();
  sub_22616F8B8();
  v6 = sub_22616FCD8();

  return sub_226155D14(a1, a2, v6);
}

unint64_t sub_226155BA4(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  type metadata accessor for ModuleType();
  sub_226157F80(&qword_28136C3B8, type metadata accessor for ModuleType);
  v5 = sub_22616F7D8();

  return sub_226155DCC(a1, v5);
}

unint64_t sub_226155C3C(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_22616F828();
  sub_22616FCB8();
  sub_22616F8B8();
  v4 = sub_22616FCD8();

  return sub_226155F8C(a1, v4);
}

unint64_t sub_226155CD0(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_22616FB48();

  return sub_226156090(a1, v5);
}

unint64_t sub_226155D14(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_22616FC68())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_226155DCC(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v4 = type metadata accessor for ModuleType();
  Description = v4[-1].Description;
  v6 = Description[8];
  MEMORY[0x28223BE20](v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v2;
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  v19 = v2 + 64;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v14 = Description[2];
    v13 = (Description + 2);
    v12 = v14;
    v15 = *(v13 + 7);
    do
    {
      v12(v8, *(v21 + 48) + v15 * v10, v4);
      sub_226157F80(&qword_28136C3B0, type metadata accessor for ModuleType);
      v16 = sub_22616F7E8();
      (*(v13 - 1))(v8, v4);
      if (v16)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v19 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

unint64_t sub_226155F8C(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_22616F828();
      v9 = v8;
      if (v7 == sub_22616F828() && v9 == v10)
      {
        break;
      }

      v12 = sub_22616FC68();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_226156090(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_226157E14(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x22AA774E0](v9, a1);
      sub_226157E70(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

uint64_t sub_226156158(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_226159884(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_2261561C4(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_2261561C4(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_22616FC38();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x277D84F90];
      }

      else
      {
        v5 = sub_22616F9C8();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_22615638C(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_2261562BC(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_2261562BC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 16 * a3;
    v8 = result - a3;
LABEL_5:
    v9 = (v6 + 16 * v4);
    result = *v9;
    v10 = v9[1];
    v11 = v8;
    v12 = v7;
    while (1)
    {
      v13 = result == *(v12 - 2) && v10 == *(v12 - 1);
      if (v13 || (result = sub_22616FC68(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 16;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      result = *v12;
      v10 = v12[1];
      *v12 = *(v12 - 1);
      *(v12 - 1) = v10;
      *(v12 - 2) = result;
      v12 -= 2;
      if (__CFADD__(v11++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_22615638C(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v95 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_106:
    v9 = *v95;
    if (!*v95)
    {
      goto LABEL_144;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_138:
      result = sub_226158BA8(v8);
      v8 = result;
    }

    v85 = v8 + 16;
    v86 = *(v8 + 2);
    if (v86 >= 2)
    {
      while (*a3)
      {
        v87 = &v8[16 * v86];
        v88 = *v87;
        v89 = &v85[2 * v86];
        v90 = v89[1];
        sub_226156968((*a3 + 16 * *v87), (*a3 + 16 * *v89), (*a3 + 16 * v90), v9);
        if (v5)
        {
        }

        if (v90 < v88)
        {
          goto LABEL_130;
        }

        if (v86 - 2 >= *v85)
        {
          goto LABEL_131;
        }

        *v87 = v88;
        *(v87 + 1) = v90;
        v91 = *v85 - v86;
        if (*v85 < v86)
        {
          goto LABEL_132;
        }

        v86 = *v85 - 1;
        result = memmove(v89, v89 + 2, 16 * v91);
        *v85 = v86;
        if (v86 <= 1)
        {
        }
      }

      goto LABEL_142;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = (*a3 + 16 * v7);
      result = *v10;
      v11 = (*a3 + 16 * v9);
      if (*v10 == *v11 && v10[1] == v11[1])
      {
        v13 = 0;
      }

      else
      {
        result = sub_22616FC68();
        v13 = result;
      }

      v7 = v9 + 2;
      if (v9 + 2 < v6)
      {
        v14 = v11 + 3;
        v15 = v11 + 3;
        do
        {
          result = v14[1];
          v17 = v15[2];
          v15 += 2;
          v16 = v17;
          if (result == *(v14 - 1) && v16 == *v14)
          {
            if (v13)
            {
              goto LABEL_24;
            }
          }

          else
          {
            result = sub_22616FC68();
            if ((v13 ^ result))
            {
              goto LABEL_23;
            }
          }

          ++v7;
          v14 = v15;
        }

        while (v6 != v7);
        v7 = v6;
      }

LABEL_23:
      if (v13)
      {
LABEL_24:
        if (v7 < v9)
        {
          goto LABEL_135;
        }

        if (v9 < v7)
        {
          v19 = 0;
          v20 = 16 * v7;
          v21 = 16 * v9;
          v22 = v9;
          do
          {
            if (v22 != v7 + v19 - 1)
            {
              v27 = *a3;
              if (!*a3)
              {
                goto LABEL_141;
              }

              v23 = (v27 + v21);
              v24 = v27 + v20;
              v25 = *v23;
              v26 = v23[1];
              *v23 = *(v24 - 16);
              *(v24 - 16) = v25;
              *(v24 - 8) = v26;
            }

            ++v22;
            --v19;
            v20 -= 16;
            v21 += 16;
          }

          while (v22 < v7 + v19);
        }
      }
    }

    v28 = a3[1];
    if (v7 < v28)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_134;
      }

      if (v7 - v9 < a4)
      {
        break;
      }
    }

LABEL_55:
    if (v7 < v9)
    {
      goto LABEL_133;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_226158BBC(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v40 = *(v8 + 2);
    v39 = *(v8 + 3);
    v41 = v40 + 1;
    if (v40 >= v39 >> 1)
    {
      result = sub_226158BBC((v39 > 1), v40 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v41;
    v42 = &v8[16 * v40];
    *(v42 + 4) = v9;
    *(v42 + 5) = v7;
    v43 = *v95;
    if (!*v95)
    {
      goto LABEL_143;
    }

    if (v40)
    {
      while (1)
      {
        v44 = v41 - 1;
        if (v41 >= 4)
        {
          break;
        }

        if (v41 == 3)
        {
          v45 = *(v8 + 4);
          v46 = *(v8 + 5);
          v55 = __OFSUB__(v46, v45);
          v47 = v46 - v45;
          v48 = v55;
LABEL_75:
          if (v48)
          {
            goto LABEL_121;
          }

          v61 = &v8[16 * v41];
          v63 = *v61;
          v62 = *(v61 + 1);
          v64 = __OFSUB__(v62, v63);
          v65 = v62 - v63;
          v66 = v64;
          if (v64)
          {
            goto LABEL_124;
          }

          v67 = &v8[16 * v44 + 32];
          v69 = *v67;
          v68 = *(v67 + 1);
          v55 = __OFSUB__(v68, v69);
          v70 = v68 - v69;
          if (v55)
          {
            goto LABEL_127;
          }

          if (__OFADD__(v65, v70))
          {
            goto LABEL_128;
          }

          if (v65 + v70 >= v47)
          {
            if (v47 < v70)
            {
              v44 = v41 - 2;
            }

            goto LABEL_96;
          }

          goto LABEL_89;
        }

        v71 = &v8[16 * v41];
        v73 = *v71;
        v72 = *(v71 + 1);
        v55 = __OFSUB__(v72, v73);
        v65 = v72 - v73;
        v66 = v55;
LABEL_89:
        if (v66)
        {
          goto LABEL_123;
        }

        v74 = &v8[16 * v44];
        v76 = *(v74 + 4);
        v75 = *(v74 + 5);
        v55 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v55)
        {
          goto LABEL_126;
        }

        if (v77 < v65)
        {
          goto LABEL_3;
        }

LABEL_96:
        v9 = v44 - 1;
        if (v44 - 1 >= v41)
        {
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
          goto LABEL_137;
        }

        if (!*a3)
        {
          goto LABEL_140;
        }

        v82 = *&v8[16 * v9 + 32];
        v83 = *&v8[16 * v44 + 40];
        sub_226156968((*a3 + 16 * v82), (*a3 + 16 * *&v8[16 * v44 + 32]), (*a3 + 16 * v83), v43);
        if (v5)
        {
        }

        if (v83 < v82)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_226158BA8(v8);
        }

        if (v9 >= *(v8 + 2))
        {
          goto LABEL_118;
        }

        v84 = &v8[16 * v9];
        *(v84 + 4) = v82;
        *(v84 + 5) = v83;
        result = sub_226158B1C(v44);
        v41 = *(v8 + 2);
        if (v41 <= 1)
        {
          goto LABEL_3;
        }
      }

      v49 = &v8[16 * v41 + 32];
      v50 = *(v49 - 64);
      v51 = *(v49 - 56);
      v55 = __OFSUB__(v51, v50);
      v52 = v51 - v50;
      if (v55)
      {
        goto LABEL_119;
      }

      v54 = *(v49 - 48);
      v53 = *(v49 - 40);
      v55 = __OFSUB__(v53, v54);
      v47 = v53 - v54;
      v48 = v55;
      if (v55)
      {
        goto LABEL_120;
      }

      v56 = &v8[16 * v41];
      v58 = *v56;
      v57 = *(v56 + 1);
      v55 = __OFSUB__(v57, v58);
      v59 = v57 - v58;
      if (v55)
      {
        goto LABEL_122;
      }

      v55 = __OFADD__(v47, v59);
      v60 = v47 + v59;
      if (v55)
      {
        goto LABEL_125;
      }

      if (v60 >= v52)
      {
        v78 = &v8[16 * v44 + 32];
        v80 = *v78;
        v79 = *(v78 + 1);
        v55 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v55)
        {
          goto LABEL_129;
        }

        if (v47 < v81)
        {
          v44 = v41 - 2;
        }

        goto LABEL_96;
      }

      goto LABEL_75;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_106;
    }
  }

  if (__OFADD__(v9, a4))
  {
    goto LABEL_136;
  }

  v93 = v5;
  if (v9 + a4 >= v28)
  {
    v5 = a3[1];
  }

  else
  {
    v5 = (v9 + a4);
  }

  if (v5 < v9)
  {
LABEL_137:
    __break(1u);
    goto LABEL_138;
  }

  if (v7 == v5)
  {
LABEL_54:
    v5 = v93;
    goto LABEL_55;
  }

  v29 = *a3;
  v30 = *a3 + 16 * v7;
  v92 = v9;
  v31 = (v9 - v7);
LABEL_43:
  v32 = (v29 + 16 * v7);
  v33 = *v32;
  v34 = v32[1];
  v35 = v31;
  v36 = v30;
  while (1)
  {
    v37 = v33 == *(v36 - 2) && v34 == *(v36 - 1);
    if (v37 || (result = sub_22616FC68(), (result & 1) == 0))
    {
LABEL_42:
      ++v7;
      v30 += 16;
      --v31;
      if (v7 != v5)
      {
        goto LABEL_43;
      }

      v7 = v5;
      v9 = v92;
      goto LABEL_54;
    }

    if (!v29)
    {
      break;
    }

    v33 = *v36;
    v34 = v36[1];
    *v36 = *(v36 - 1);
    *(v36 - 1) = v34;
    *(v36 - 2) = v33;
    v36 -= 2;
    if (__CFADD__(v35++, 1))
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
  return result;
}

uint64_t sub_226156968(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 4;
  v11 = a3 - __src;
  v12 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 4;
  if (v10 < v12 >> 4)
  {
    if (a4 != __dst || &__dst[16 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[16 * v10];
    if (v8 < 16)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_43;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v16 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (!v16 && (sub_22616FC68() & 1) != 0)
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 16;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 16;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 16;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[16 * v13] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v14 = &v4[16 * v13];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_28:
    v17 = v6 - 16;
    v5 -= 16;
    v18 = v14;
    do
    {
      v19 = *(v18 - 2);
      v20 = *(v18 - 1);
      v18 -= 16;
      v21 = v19 == *(v6 - 2) && v20 == *(v6 - 1);
      if (!v21 && (sub_22616FC68() & 1) != 0)
      {
        if (v5 + 16 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 16, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_43;
        }

        goto LABEL_28;
      }

      if (v5 + 16 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 16;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_43:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v4, 16 * ((v14 - v4) / 16));
  }

  return 1;
}

uint64_t sub_226156B90(uint64_t a1)
{
  swift_beginAccess();
  v2 = *(a1 + 16);
  v3 = 1 << *(v2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(v2 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  v9 = 0;
  v10 = MEMORY[0x277D84F90];
  v11 = MEMORY[0x277D84F90] + 32;
  if (v5)
  {
    while (1)
    {
      v12 = v9;
LABEL_8:
      v13 = __clz(__rbit64(v5)) | (v12 << 6);
      v14 = (*(v2 + 48) + 16 * v13);
      v15 = *v14;
      v16 = v14[1];
      result = sub_22614E190(*(v2 + 56) + 40 * v13, v34);
      *&v33 = v15;
      *(&v33 + 1) = v16;
      v39 = v35;
      v37 = v34[0];
      v38 = v34[1];
      v36 = v33;
      if (v8)
      {

        v17 = v10;
        v18 = __OFSUB__(v8--, 1);
        if (v18)
        {
          goto LABEL_33;
        }
      }

      else
      {
        v19 = v10[3];
        if (((v19 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_34;
        }

        v20 = v19 & 0xFFFFFFFFFFFFFFFELL;
        if (v20 <= 1)
        {
          v21 = 1;
        }

        else
        {
          v21 = v20;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78CFD0, &qword_226170D20);
        v17 = swift_allocObject();
        v22 = (_swift_stdlib_malloc_size(v17) - 32) / 56;
        v17[2] = v21;
        v17[3] = 2 * v22;
        v23 = v17 + 4;
        v24 = v10[3] >> 1;
        v11 = &v17[7 * v24 + 4];
        v25 = (v22 & 0x7FFFFFFFFFFFFFFFLL) - v24;
        if (v10[2])
        {
          if (v17 != v10 || v23 >= &v10[7 * v24 + 4])
          {
            memmove(v23, v10 + 4, 56 * v24);
          }

          v10[2] = 0;
        }

        else
        {
        }

        v18 = __OFSUB__(v25, 1);
        v8 = v25 - 1;
        if (v18)
        {
          goto LABEL_33;
        }
      }

      v5 &= v5 - 1;
      v27 = v36;
      v28 = v37;
      v29 = v38;
      *(v11 + 48) = v39;
      *(v11 + 16) = v28;
      *(v11 + 32) = v29;
      *v11 = v27;
      v11 += 56;
      v10 = v17;
      v9 = v12;
      if (!v5)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

    if (v12 >= v6)
    {
      break;
    }

    v5 = *(v2 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      goto LABEL_8;
    }
  }

  v30 = v10[3];
  if (v30 < 2)
  {
    return v10;
  }

  v31 = v30 >> 1;
  v18 = __OFSUB__(v31, v8);
  v32 = v31 - v8;
  if (!v18)
  {
    v10[2] = v32;
    return v10;
  }

LABEL_35:
  __break(1u);
  return result;
}

uint64_t sub_226156E10(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  swift_beginAccess();
  v8 = *(v4 + 16);

  v10 = v8 + 64;
  v11 = -1 << *(v8 + 32);
  if (-v11 < 64)
  {
    v12 = ~(-1 << -v11);
  }

  else
  {
    v12 = -1;
  }

  v13 = v12 & *(v8 + 64);
  if (!a2)
  {
LABEL_19:
    v14 = 0;
    a3 = 0;
LABEL_26:
    *a1 = v8;
    a1[1] = v10;
    a1[2] = ~v11;
    a1[3] = v14;
    a1[4] = v13;
    return a3;
  }

  if (!a3)
  {
    v14 = 0;
    goto LABEL_26;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v29 = -1 << *(v8 + 32);
    v30 = a1;
    result = 0;
    v14 = 0;
    v15 = (63 - v11) >> 6;
    v16 = 1;
    while (v13)
    {
      a1 = a3;
LABEL_15:
      v19 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
      v20 = v19 | (v14 << 6);
      v21 = (*(v8 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      sub_22614E190(*(v8 + 56) + 40 * v20, &v32);
      *&v31 = v22;
      *(&v31 + 1) = v23;
      v24 = v34;
      v38 = v34;
      v25 = v33;
      v26 = v32;
      v36 = v32;
      v37 = v33;
      v35 = v31;
      *a2 = v31;
      *(a2 + 16) = v26;
      *(a2 + 32) = v25;
      *(a2 + 48) = v24;
      a3 = a1;
      if (v16 == a1)
      {

        goto LABEL_24;
      }

      a2 += 56;

      result = v16;
      if (__OFADD__(v16++, 1))
      {
        __break(1u);
        goto LABEL_19;
      }
    }

    v17 = v14;
    while (1)
    {
      v18 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v18 >= v15)
      {
        break;
      }

      v13 = *(v10 + 8 * v18);
      ++v17;
      if (v13)
      {
        a1 = a3;
        v14 = v18;
        goto LABEL_15;
      }
    }

    v13 = 0;
    if (v15 <= v14 + 1)
    {
      v28 = v14 + 1;
    }

    else
    {
      v28 = v15;
    }

    v14 = v28 - 1;
    a3 = result;
LABEL_24:
    v11 = v29;
    a1 = v30;
    goto LABEL_26;
  }

LABEL_29:
  __break(1u);
  return result;
}

void *sub_226156FF0(void *result, void *a2, uint64_t a3, uint64_t a4)
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
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

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
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_226157148(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
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
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

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
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_2261572A0@<X0>(void *a1@<X8>)
{
  result = swift_beginAccess();
  v4 = *(v1 + 16);
  v5 = -1 << *(v4 + 32);
  v6 = ~v5;
  *a1 = v4;
  v9 = *(v4 + 64);
  v7 = v4 + 64;
  v8 = v9;
  v10 = -v5;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  a1[1] = v7;
  a1[2] = v6;
  a1[3] = 0;
  a1[4] = v11 & v8;
  return result;
}

uint64_t _s16MapsIntelligence0aB10SignalPackC10dictionaryACSDySSSdG_tcfC_0(uint64_t a1)
{
  v93 = sub_22616F758();
  v2 = *(v93 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v93);
  v96 = &v81 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = type metadata accessor for MapsIntelligenceClientSignalType();
  Description = v95[-1].Description;
  v6 = *(Description + 8);
  MEMORY[0x28223BE20](v95);
  v94 = &v81 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78CFE8, "6)");
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v103 = &v81 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v102 = &v81 - v12;
  type metadata accessor for MapsIntelligenceSignalPack();
  v13 = swift_allocObject();
  v14 = MEMORY[0x277D84F90];
  v82 = sub_226159E2C(MEMORY[0x277D84F90]);
  *(v13 + 16) = v82;
  v81 = v13 + 16;
  v104 = sub_226159E2C(v14);
  v15 = a1 + 64;
  v16 = 1 << *(a1 + 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & *(a1 + 64);
  v19 = (v16 + 63) >> 6;
  v92 = (v2 + 56);
  v91 = 1;
  v90 = (Description + 104);
  v89 = (Description + 16);
  v88 = (Description + 8);
  v87 = (v2 + 32);
  v83 = v13;

  v97 = a1;

  v20 = 0;
  v86 = a1 + 64;
  v85 = v19;
  while (v18)
  {
LABEL_11:
    v23 = __clz(__rbit64(v18)) | (v20 << 6);
    v24 = *(v97 + 56);
    v25 = (*(v97 + 48) + 16 * v23);
    v27 = *v25;
    v26 = v25[1];
    v101 = v27;
    v99 = v26;
    v28 = *(v24 + 8 * v23);
    v29 = *v92;
    v30 = v102;
    v31 = v93;
    (*v92)(v102, 1, 1, v93);
    v100 = type metadata accessor for MapsIntelligenceDoubleSignal(0);
    v32 = *(v100 + 48);
    v33 = *(v100 + 52);
    v34 = swift_allocObject();
    v35 = v94;
    v36 = v95;
    (*v90)(v94, v91, v95);
    sub_226150DB0(v30, v103, &qword_27D78CFE8, "6)");
    v37 = (v34 + OBJC_IVAR____TtC16MapsIntelligence26MapsIntelligenceBaseSignal_value);
    *v37 = 0u;
    v37[1] = 0u;
    v38 = OBJC_IVAR____TtC16MapsIntelligence26MapsIntelligenceBaseSignal_expirationDate;
    v29(v34 + OBJC_IVAR____TtC16MapsIntelligence26MapsIntelligenceBaseSignal_expirationDate, 1, 1, v31);
    (*v89)(v34 + OBJC_IVAR____TtC16MapsIntelligence26MapsIntelligenceBaseSignal__type, v35, v36);
    v39 = v99;

    v40 = v96;
    sub_22616F748();
    (*v88)(v35, v36);
    v41 = v39;
    (*v87)(v34 + OBJC_IVAR____TtC16MapsIntelligence26MapsIntelligenceBaseSignal_creationDate, v40, v31);
    swift_beginAccess();
    sub_226157F18(v103, v34 + v38, &qword_27D78CFE8, "6)");
    swift_endAccess();
    v42 = objc_allocWithZone(MEMORY[0x277CCABB0]);

    v43 = [v42 initWithDouble_];
    v115 = sub_22614C5C0();
    *&v114 = v43;
    sub_22614E1F4(v102, &qword_27D78CFE8, "6)");
    swift_beginAccess();
    sub_226157F18(&v114, v37, &qword_27D78CEE0, &unk_226170C20);
    swift_endAccess();

    v44 = v100;
    v115 = v100;
    v45 = sub_226157F80(qword_28136CFF8, type metadata accessor for MapsIntelligenceDoubleSignal);
    v116 = v45;
    *&v114 = v34;
    sub_226150EFC(&v114, &v112);
    v46 = v104;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v111 = v46;
    v48 = v113;
    v49 = __swift_mutable_project_boxed_opaque_existential_1(&v112, v113);
    v98 = &v81;
    v50 = *(*(v48 - 8) + 64);
    MEMORY[0x28223BE20](v49);
    v52 = (&v81 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v53 + 16))(v52);
    v54 = *v52;
    v109 = v44;
    v110 = v45;
    v55 = v44;
    *&v108 = v54;
    v56 = v101;
    v57 = v41;
    v58 = sub_226155B2C(v101, v41);
    v60 = *(v46 + 16);
    v61 = (v59 & 1) == 0;
    v62 = __OFADD__(v60, v61);
    v63 = v60 + v61;
    if (v62)
    {
      goto LABEL_22;
    }

    v64 = v59;
    if (*(v46 + 24) >= v63)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v78 = v58;
        sub_22614FDFC();
        v58 = v78;
      }
    }

    else
    {
      sub_226150400(v63, isUniquelyReferenced_nonNull_native);
      v58 = sub_226155B2C(v56, v41);
      if ((v64 & 1) != (v65 & 1))
      {
        goto LABEL_24;
      }
    }

    v66 = v111;
    v104 = v111;
    if (v64)
    {
      v21 = (v111[7] + 40 * v58);
      __swift_destroy_boxed_opaque_existential_1(v21);
      sub_226150EFC(&v108, v21);
    }

    else
    {
      v67 = v109;
      v68 = v58;
      v69 = __swift_mutable_project_boxed_opaque_existential_1(&v108, v109);
      v84 = &v81;
      v70 = *(*(v67 - 8) + 64);
      MEMORY[0x28223BE20](v69);
      v72 = (&v81 - ((v71 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v73 + 16))(v72);
      v74 = *v72;
      v106 = v55;
      v107 = v45;
      *&v105 = v74;
      v66[(v68 >> 6) + 8] |= 1 << v68;
      v75 = (v66[6] + 16 * v68);
      *v75 = v56;
      v75[1] = v57;
      sub_226150EFC(&v105, v66[7] + 40 * v68);
      v76 = v66[2];
      v62 = __OFADD__(v76, 1);
      v77 = v76 + 1;
      if (v62)
      {
        goto LABEL_23;
      }

      v66[2] = v77;
      __swift_destroy_boxed_opaque_existential_1(&v108);
    }

    v18 &= v18 - 1;
    __swift_destroy_boxed_opaque_existential_1(&v112);
    v15 = v86;
    v19 = v85;
  }

  while (1)
  {
    v22 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v22 >= v19)
    {

      swift_beginAccess();
      v79 = v83;
      *(v83 + 16) = v104;

      return v79;
    }

    v18 = *(v15 + 8 * v22);
    ++v20;
    if (v18)
    {
      v20 = v22;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  result = sub_22616FC98();
  __break(1u);
  return result;
}

unint64_t sub_226157C64()
{
  result = qword_27D78CFC0;
  if (!qword_27D78CFC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D78CFC8, &qword_226170C78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D78CFC0);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
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

uint64_t sub_226157F18(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_226157F80(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t MapsIntelligenceFeatureProvider.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 16) = MEMORY[0x277D84FA0];
  *(v0 + 24) = sub_22615A090(MEMORY[0x277D84F90]);
  return v0;
}

uint64_t sub_226158094()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
}

uint64_t sub_226158134(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  *(v1 + 16) = a1;
}

uint64_t sub_22615817C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v3 + 16);
  *(v3 + 16) = v2;
}

uint64_t MapsIntelligenceFeatureProvider.init()()
{
  *(v0 + 16) = MEMORY[0x277D84FA0];
  *(v0 + 24) = sub_22615A090(MEMORY[0x277D84F90]);
  return v0;
}

uint64_t sub_226158264(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  swift_beginAccess();

  v8 = a1;
  v9 = *(v4 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *(v4 + 24);
  *(v4 + 24) = 0x8000000000000000;
  sub_2261589A4(v8, a2, a3, isUniquelyReferenced_nonNull_native);

  *(v4 + 24) = v12;
  swift_endAccess();
  swift_beginAccess();

  sub_226158CC0(&v12, a2, a3);
  swift_endAccess();
}

uint64_t sub_226158358(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();

  sub_226154AA8(0, a1, a2);
  swift_endAccess();
  swift_beginAccess();
  sub_226159584(a1, a2);
  swift_endAccess();
}

void *sub_226158400(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 24);
  if (!*(v5 + 16))
  {
    return 0;
  }

  v6 = sub_226155B2C(a1, a2);
  if (v7)
  {
    v8 = *(*(v5 + 56) + 8 * v6);
    v9 = v8;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

void sub_226158508()
{
  v1 = v0;
  v25 = 0xD000000000000015;
  v26 = 0x8000000226171DD0;
  swift_beginAccess();
  v2 = *(v0 + 16);
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = sub_226155574(*(v2 + 16), 0);
    v5 = sub_226156FF0(&v24, v4 + 4, v3, v2);
    swift_bridgeObjectRetain_n();
    sub_226157C58();
    if (v5 == v3)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v4 = MEMORY[0x277D84F90];
LABEL_5:
  v24 = v4;
  sub_226156158(&v24);

  v22 = v24;
  v6 = *(v24 + 2);
  if (v6)
  {
    swift_beginAccess();
    v7 = (v22 + 40);
    do
    {
      v9 = *(v1 + 24);
      if (*(v9 + 16))
      {
        v11 = *(v7 - 1);
        v10 = *v7;

        v12 = sub_226155B2C(v11, v10);
        if (v13)
        {
          v8 = *(*(v9 + 56) + 8 * v12);

          [v8 doubleValue];

          v23[0] = 0;
          v23[1] = 0xE000000000000000;
          MEMORY[0x22AA77270](10, 0xE100000000000000);
          MEMORY[0x22AA77270](v11, v10);

          MEMORY[0x22AA77270](2112032, 0xE300000000000000);
          sub_22616FA18();
          MEMORY[0x22AA77270](0, 0xE000000000000000);
        }

        else
        {
        }
      }

      v7 += 2;
      --v6;
    }

    while (v6);
  }

  MEMORY[0x22AA77270](0xD000000000000010, 0x8000000226171D70);
  if (qword_28136C410 != -1)
  {
    swift_once();
  }

  v14 = sub_22616F788();
  __swift_project_value_buffer(v14, qword_28136D4E8);
  v16 = v25;
  v15 = v26;

  v17 = sub_22616F768();
  v18 = sub_22616FA78();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v23[0] = v20;
    *v19 = 136315138;
    v21 = sub_2261555F8(v16, v15, v23);

    *(v19 + 4) = v21;
    _os_log_impl(&dword_22614A000, v17, v18, "%s", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v20);
    MEMORY[0x22AA77C50](v20, -1, -1);
    MEMORY[0x22AA77C50](v19, -1, -1);
  }

  else
  {
  }
}

uint64_t MapsIntelligenceFeatureProvider.deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return v0;
}

uint64_t MapsIntelligenceFeatureProvider.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t sub_226158924()
{
  v0 = sub_22616F788();
  __swift_allocate_value_buffer(v0, qword_28136D4E8);
  __swift_project_value_buffer(v0, qword_28136D4E8);
  return sub_22616F778();
}

void sub_2261589A4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_226155B2C(a2, a3);
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
      sub_2261506C4(v16, a4 & 1);
      v20 = *v5;
      v11 = sub_226155B2C(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        sub_22616FC98();
        __break(1u);
        return;
      }
    }

    else
    {
      v19 = v11;
      sub_22614FFA4();
      v11 = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    v23 = v22[7];
    v24 = *(v23 + 8 * v11);
    *(v23 + 8 * v11) = a1;

    return;
  }

  v22[(v11 >> 6) + 8] |= 1 << v11;
  v25 = (v22[6] + 16 * v11);
  *v25 = a2;
  v25[1] = a3;
  *(v22[7] + 8 * v11) = a1;
  v26 = v22[2];
  v15 = __OFADD__(v26, 1);
  v27 = v26 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22[2] = v27;
}

uint64_t sub_226158B1C(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_226158BA8(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    v9 = *(v7 + 40);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

char *sub_226158BBC(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78D088, &qword_226170DD0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

uint64_t sub_226158CC0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_22616FCB8();
  sub_22616F8B8();
  v9 = sub_22616FCD8();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v14 = *v13 == a2 && v13[1] == a3;
      if (v14 || (sub_22616FC68() & 1) != 0)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v18 = (*(v7 + 48) + 16 * v11);
    v19 = v18[1];
    *a1 = *v18;
    a1[1] = v19;

    return 0;
  }

  else
  {
LABEL_9:
    v15 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;

    sub_226159070(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_226158E10(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78D090, &qword_226170DD8);
  result = sub_22616FB78();
  v6 = result;
  if (*(v3 + 16))
  {
    v31 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = (*(v3 + 48) + 16 * (v16 | (v7 << 6)));
      v20 = *v19;
      v21 = v19[1];
      v22 = *(v6 + 40);
      sub_22616FCB8();
      sub_22616F8B8();
      result = sub_22616FCD8();
      v23 = -1 << *(v6 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v13 + 8 * v25);
          if (v29 != -1)
          {
            v14 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 16 * v14);
      *v15 = v20;
      v15[1] = v21;
      ++*(v6 + 16);
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      bzero((v3 + 56), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_226159070(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_226158E10(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_2261591F0();
      goto LABEL_16;
    }

    sub_22615934C(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  sub_22616FCB8();
  sub_22616F8B8();
  result = sub_22616FCD8();
  v12 = -1 << *(v10 + 32);
  a3 = result & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      if (*v14 == v7 && v14[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_22616FC68();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = v7;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_22616FC88();
  __break(1u);
  return result;
}

void *sub_2261591F0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78D090, &qword_226170DD8);
  v2 = *v0;
  v3 = sub_22616FB68();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
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

      v16 = *(v2 + 56 + 8 * v8);
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

uint64_t sub_22615934C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78D090, &qword_226170DD8);
  result = sub_22616FB78();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v18 = (*(v3 + 48) + 16 * (v15 | (v7 << 6)));
      v19 = *v18;
      v20 = v18[1];
      v21 = *(v6 + 40);
      sub_22616FCB8();

      sub_22616F8B8();
      result = sub_22616FCD8();
      v22 = -1 << *(v6 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v6 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v29;
        goto LABEL_28;
      }

      v17 = *(v3 + 56 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
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
    *v2 = v6;
  }

  return result;
}

uint64_t sub_226159584(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  sub_22616FCB8();
  sub_22616F8B8();
  v7 = sub_22616FCD8();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
    return 0;
  }

  v10 = ~v8;
  while (1)
  {
    v11 = (*(v5 + 48) + 16 * v9);
    v12 = *v11 == a1 && v11[1] == a2;
    if (v12 || (sub_22616FC68() & 1) != 0)
    {
      break;
    }

    v9 = (v9 + 1) & v10;
    if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      return 0;
    }
  }

  v14 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *v2;
  v20 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_2261591F0();
    v16 = v20;
  }

  v17 = (*(v16 + 48) + 16 * v9);
  v13 = *v17;
  v18 = v17[1];
  sub_2261596C0(v9);
  *v2 = v20;
  return v13;
}

unint64_t sub_2261596C0(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;
    v8 = *v1;

    v9 = sub_22616FB38();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      do
      {
        v11 = *(v3 + 40);
        v12 = (*(v3 + 48) + 16 * v6);
        v13 = *v12;
        v14 = v12[1];
        sub_22616FCB8();

        sub_22616F8B8();
        v15 = sub_22616FCD8();

        v16 = v15 & v7;
        if (v2 >= v10)
        {
          if (v16 < v10)
          {
            goto LABEL_5;
          }
        }

        else if (v16 >= v10)
        {
          goto LABEL_11;
        }

        if (v2 >= v16)
        {
LABEL_11:
          v17 = *(v3 + 48);
          v18 = (v17 + 16 * v2);
          v19 = (v17 + 16 * v6);
          if (v2 != v6 || v18 >= v19 + 1)
          {
            *v18 = *v19;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v20 = *(v3 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v22;
    ++*(v3 + 36);
  }

  return result;
}

unint64_t sub_226159898(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78CF20, &qword_226170DB0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78D080, &qword_226170DB8);
    v8 = sub_22616FC08();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_226150DB0(v10, v6, &qword_27D78CF20, &qword_226170DB0);
      result = sub_226155BA4(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = type metadata accessor for ModuleType();
      result = (*(v16[-1].Description + 4))(v15 + *(v16[-1].Description + 9) * v14, v6, v16);
      *(v8[7] + 8 * v14) = *&v6[v9];
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_226159A80(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78CF30, &unk_226170DC0);
    v3 = sub_22616FC08();
    v4 = a1 + 32;

    while (1)
    {
      sub_226150DB0(v4, &v17, &qword_27D78CF48, &qword_226170A58);
      v5 = v17;
      v6 = v18;
      result = sub_226155B2C(v17, v18);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      v10 = v3[7] + 72 * result;
      *v10 = v19;
      v11 = v20;
      v12 = v21;
      v13 = v22;
      *(v10 + 64) = v23;
      *(v10 + 32) = v12;
      *(v10 + 48) = v13;
      *(v10 + 16) = v11;
      v14 = v3[2];
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (v15)
      {
        goto LABEL_10;
      }

      v3[2] = v16;
      v4 += 88;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_226159BC8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78D070, &unk_226170DA0);
    v3 = sub_22616FC08();
    v4 = a1 + 32;

    while (1)
    {
      sub_226150DB0(v4, &v11, &qword_27D78D078, &qword_226170EA0);
      v5 = v11;
      result = sub_226155C3C(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_22614C5B0(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_226159CF0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78D060, &qword_226170D90);
    v3 = sub_22616FC08();
    v4 = a1 + 32;

    while (1)
    {
      sub_226150DB0(v4, v13, &qword_27D78D068, &qword_226170D98);
      result = sub_226155CD0(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_22614C5B0(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_226159E2C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78CF58, &qword_226170DE0);
    v3 = sub_22616FC08();
    v4 = a1 + 32;

    while (1)
    {
      sub_226150DB0(v4, &v13, &qword_27D78D098, &qword_226170DE8);
      v5 = v13;
      v6 = v14;
      result = sub_226155B2C(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_226150EFC(&v15, v3[7] + 40 * result);
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 56;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_226159F60(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78D050, &unk_226170D80);
    v3 = sub_22616FC08();
    v4 = a1 + 32;

    while (1)
    {
      sub_226150DB0(v4, &v13, &qword_27D78D058, &unk_2261713F0);
      v5 = v13;
      v6 = v14;
      result = sub_226155B2C(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_22614C5B0(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_22615A090(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78CF60, &qword_226170A70);
    v3 = sub_22616FC08();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_226155B2C(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_22615A2E0()
{
  v0 = sub_22616F788();
  __swift_allocate_value_buffer(v0, qword_27D78DCC8);
  __swift_project_value_buffer(v0, qword_27D78DCC8);
  return sub_22616F778();
}

id sub_22615A360(uint64_t a1)
{
  v39[4] = *MEMORY[0x277D85DE8];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78D0A0, &unk_226170E80);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = v39 - v5 + 24;
  v7 = sub_22616F6F8();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0) + 24;
  MEMORY[0x28223BE20](v10);
  v14 = v39 - v13 + 24;
  v15 = OBJC_IVAR____TtC16MapsIntelligence26MapsIntelligenceTrialModel__modelURL;
  swift_beginAccess();
  sub_226150DB0(v1 + v15, v6, &qword_27D78D0A0, &unk_226170E80);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_22614E1F4(v6, &qword_27D78D0A0, &unk_226170E80);
    if (qword_28136C3C8 != -1)
    {
      swift_once();
    }

    v16 = sub_22616F788();
    __swift_project_value_buffer(v16, qword_28136D470);
    v17 = sub_22616F768();
    v18 = sub_22616FA98();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_22614A000, v17, v18, "Error making prediction: No model URL", v19, 2u);
      MEMORY[0x22AA77C50](v19, -1, -1);
    }
  }

  else
  {
    (*(v8 + 32))(v14, v6, v7);
    sub_226154868(0, &qword_28136C388, 0x277CBFF20);
    (*(v8 + 16))(v12, v14, v7);
    v31 = sub_226163960(v12);
    v39[0] = 0;
    v32 = [v31 predictionFromFeatures:a1 error:v39];
    if (v32)
    {
      v33 = *(v8 + 8);
      v34 = v32;
      v35 = v39[0];
      v33(v14, v7);

      result = v34;
      goto LABEL_15;
    }

    v36 = v39[0];
    v37 = sub_22616F658();

    swift_willThrow();
    if (qword_28136C3C8 != -1)
    {
      swift_once();
    }

    v20 = sub_22616F788();
    __swift_project_value_buffer(v20, qword_28136D470);
    v21 = v37;
    v22 = sub_22616F768();
    v23 = sub_22616FA98();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v39[0] = v25;
      *v24 = 136315138;
      swift_getErrorValue();
      v26 = sub_22616FCA8();
      v28 = sub_2261555F8(v26, v27, v39);

      *(v24 + 4) = v28;
      _os_log_impl(&dword_22614A000, v22, v23, "Error making prediction: %s", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v25);
      MEMORY[0x22AA77C50](v25, -1, -1);
      MEMORY[0x22AA77C50](v24, -1, -1);
    }

    else
    {
    }

    (*(v8 + 8))(v14, v7);
  }

  result = 0;
LABEL_15:
  v30 = *MEMORY[0x277D85DE8];
  return result;
}

id sub_22615A83C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78D0A0, &unk_226170E80);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v16 - v3;
  v5 = sub_22616F6F8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v16 - v11;
  v13 = OBJC_IVAR____TtC16MapsIntelligence26MapsIntelligenceTrialModel__modelURL;
  swift_beginAccess();
  sub_226150DB0(v0 + v13, v4, &qword_27D78D0A0, &unk_226170E80);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_22614E1F4(v4, &qword_27D78D0A0, &unk_226170E80);
    return 0;
  }

  else
  {
    (*(v6 + 32))(v12, v4, v5);
    sub_226154868(0, &qword_28136C388, 0x277CBFF20);
    (*(v6 + 16))(v10, v12, v5);
    v14 = sub_226163960(v10);
    (*(v6 + 8))(v12, v5);
    return v14;
  }
}

uint64_t sub_22615ABD4(int a1, uint64_t a2, uint64_t (*a3)(char *, uint64_t, uint64_t), uint64_t a4, uint64_t a5)
{
  v84 = a4;
  v85 = a5;
  v82 = a2;
  v83 = a3;
  v7 = sub_22616F6F8();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v81 = &v77 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78D0A0, &unk_226170E80);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v77 = &v77 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v78 = &v77 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v79 = &v77 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v77 - v20;
  v22 = MEMORY[0x28223BE20](v19);
  v24 = &v77 - v23;
  MEMORY[0x28223BE20](v22);
  v26 = &v77 - v25;
  *(v5 + 16) = [objc_allocWithZone(MEMORY[0x277CBEB38]) init];
  *(v5 + 24) = [objc_allocWithZone(MEMORY[0x277CBEB38]) init];
  v27 = *(v8 + 56);
  v27(v5 + OBJC_IVAR____TtC16MapsIntelligence26MapsIntelligenceTrialModel__modelURL, 1, 1, v7);
  *(v5 + OBJC_IVAR____TtC16MapsIntelligence26MapsIntelligenceTrialModel__metaData) = 0;
  *(v5 + 32) = a1;
  v28 = v83;
  *(v5 + 40) = v82;
  *(v5 + 48) = v28;
  v29 = v85;
  *(v5 + 56) = v84;
  *(v5 + 64) = v29;
  sub_22615BFDC(v26);
  v85 = v26;
  sub_226150DB0(v26, v24, &qword_27D78D0A0, &unk_226170E80);
  v30 = *(v8 + 48);
  v31 = v30(v24, 1, v7);
  v80 = v8;
  if (v31 != 1)
  {
    v83 = v30;
    v41 = v81;
    (*(v8 + 32))(v81, v24, v7);
    (*(v8 + 16))(v21, v41, v7);
    v84 = v7;
    v27(v21, 0, 1, v7);
    v42 = OBJC_IVAR____TtC16MapsIntelligence26MapsIntelligenceTrialModel__modelURL;
    swift_beginAccess();
    sub_22615FCA8(v21, v5 + v42);
    swift_endAccess();
    v39 = v5;
    if (qword_28136C3D8 != -1)
    {
      swift_once();
    }

    v43 = sub_22616F788();
    __swift_project_value_buffer(v43, qword_28136D4A0);

    v44 = sub_22616F768();
    v45 = sub_22616FA78();
    v46 = os_log_type_enabled(v44, v45);
    v47 = v83;
    if (v46)
    {
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v86[0] = v49;
      *v48 = 136315138;
      v50 = v5 + v42;
      v51 = v78;
      sub_226150DB0(v50, v78, &qword_27D78D0A0, &unk_226170E80);
      v52 = v84;
      v53 = v47(v51, 1, v84);
      v54 = v39;

      if (v53 == 1)
      {
        __break(1u);
        goto LABEL_24;
      }

      v56 = sub_22616F6B8();
      v58 = v57;
      v59 = v51;
      v60 = v80;
      (*(v80 + 8))(v59, v52);
      v61 = sub_2261555F8(v56, v58, v86);

      *(v48 + 4) = v61;
      _os_log_impl(&dword_22614A000, v44, v45, "Model : %s", v48, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v49);
      MEMORY[0x22AA77C50](v49, -1, -1);
      MEMORY[0x22AA77C50](v48, -1, -1);

      v62 = v81;
      v39 = v54;
    }

    else
    {

      v52 = v84;
      v60 = v80;
      v62 = v81;
    }

    sub_22615EBDC();
    (*(v60 + 8))(v62, v52);
LABEL_22:
    sub_22614E1F4(v85, &qword_27D78D0A0, &unk_226170E80);
    return v39;
  }

  sub_22614E1F4(v24, &qword_27D78D0A0, &unk_226170E80);
  sub_22615E570(v21);
  v32 = OBJC_IVAR____TtC16MapsIntelligence26MapsIntelligenceTrialModel__modelURL;
  swift_beginAccess();
  sub_22615FCA8(v21, v5 + v32);
  swift_endAccess();
  v84 = v5;
  v33 = v79;
  sub_226150DB0(v5 + v32, v79, &qword_27D78D0A0, &unk_226170E80);
  v34 = v30(v33, 1, v7);
  sub_22614E1F4(v33, &qword_27D78D0A0, &unk_226170E80);
  if (v34 == 1)
  {
    if (qword_28136C3D8 != -1)
    {
      swift_once();
    }

    v35 = sub_22616F788();
    __swift_project_value_buffer(v35, qword_28136D4A0);
    v36 = sub_22616F768();
    v37 = sub_22616FA98();
    v38 = os_log_type_enabled(v36, v37);
    v39 = v84;
    if (v38)
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&dword_22614A000, v36, v37, "Model url not found", v40, 2u);
      MEMORY[0x22AA77C50](v40, -1, -1);
    }

    goto LABEL_21;
  }

  v63 = v7;
  if (qword_28136C3D8 != -1)
  {
    swift_once();
  }

  v64 = sub_22616F788();
  __swift_project_value_buffer(v64, qword_28136D4A0);
  v65 = v84;

  v66 = sub_22616F768();
  v67 = sub_22616FA78();
  if (!os_log_type_enabled(v66, v67))
  {

    v39 = v65;
    goto LABEL_21;
  }

  v68 = swift_slowAlloc();
  v69 = swift_slowAlloc();
  v86[0] = v69;
  *v68 = 136315138;
  v70 = v65 + v32;
  v71 = v77;
  sub_226150DB0(v70, v77, &qword_27D78D0A0, &unk_226170E80);
  v72 = v30(v71, 1, v63);

  if (v72 != 1)
  {
    v73 = sub_22616F6B8();
    v75 = v74;
    (*(v80 + 8))(v71, v63);
    v76 = sub_2261555F8(v73, v75, v86);

    *(v68 + 4) = v76;
    _os_log_impl(&dword_22614A000, v66, v67, "Model : %s", v68, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v69);
    MEMORY[0x22AA77C50](v69, -1, -1);
    MEMORY[0x22AA77C50](v68, -1, -1);

    v39 = v84;
LABEL_21:
    sub_22615EBDC();
    goto LABEL_22;
  }

LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_22615B410(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78D0A0, &unk_226170E80);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v25 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78D0C8, &unk_226170FD0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = (&v25 - v8);
  v10 = swift_projectBox();
  sub_226150DB0(a1, v9, &qword_27D78D0C8, &unk_226170FD0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = *v9;
    if (qword_28136C3C8 != -1)
    {
      swift_once();
    }

    v12 = sub_22616F788();
    __swift_project_value_buffer(v12, qword_28136D470);
    v13 = v11;
    v14 = sub_22616F768();
    v15 = sub_22616FA98();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v26 = v17;
      *v16 = 136315138;
      swift_getErrorValue();
      v18 = sub_22616FCA8();
      v20 = sub_2261555F8(v18, v19, &v26);

      *(v16 + 4) = v20;
      _os_log_impl(&dword_22614A000, v14, v15, "Error Compiling model: %s, lets just load it", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v17);
      MEMORY[0x22AA77C50](v17, -1, -1);
      MEMORY[0x22AA77C50](v16, -1, -1);
    }

    else
    {
    }

    v23 = sub_22616F6F8();
    (*(*(v23 - 8) + 56))(v5, 1, 1, v23);
  }

  else
  {
    v21 = sub_22616F6F8();
    v22 = *(v21 - 8);
    (*(v22 + 32))(v5, v9, v21);
    (*(v22 + 56))(v5, 0, 1, v21);
  }

  swift_beginAccess();
  sub_22615FCA8(v5, v10);
  return sub_22616FAB8();
}

void sub_22615B780(uint64_t a1@<X8>)
{
  v2 = v1;
  v52 = a1;
  v49 = sub_22616F668();
  v47 = *(v49 - 8);
  v3 = *(v47 + 64);
  MEMORY[0x28223BE20](v49);
  v48 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78D0A0, &unk_226170E80);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v45 - v7;
  v51 = sub_22616F6F8();
  v53 = *(v51 - 8);
  v9 = *(v53 + 64);
  MEMORY[0x28223BE20](v51);
  v11 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [objc_opt_self() clientWithIdentifier_];
  v13 = *(v1 + 56);
  v14 = *(v1 + 64);
  v15 = sub_22616F7F8();
  v16 = *(v2 + 40);
  v46 = *(v2 + 48);
  v17 = sub_22616F7F8();
  v50 = v12;
  v18 = [v12 levelForFactor:v15 withNamespaceName:v17];

  if (v18)
  {
    if ([v18 levelOneOfCase] == 100)
    {
      v46 = v18;
      v19 = [v18 fileValue];
      if (v19)
      {
        v20 = v19;
        v21 = [v19 path];

        if (v21)
        {
          goto LABEL_14;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
      goto LABEL_25;
    }

    if ([v18 levelOneOfCase] == 101)
    {
      v46 = v18;
      v27 = [v18 directoryValue];
      if (v27)
      {
        v28 = v27;
        v21 = [v27 path];

        if (v21)
        {
LABEL_14:
          sub_22616F828();

          v29 = dispatch_semaphore_create(0);
          v30 = swift_allocBox();
          v32 = v31;
          v33 = *(v53 + 56);
          v34 = v51;
          v33(v31, 1, 1, v51);
          v45 = sub_226154868(0, &qword_28136C388, 0x277CBFF20);
          v33(v8, 1, 1, v34);
          (*(v47 + 104))(v48, *MEMORY[0x277CC91D8], v49);
          sub_22616F6D8();
          v35 = swift_allocObject();
          *(v35 + 16) = v30;
          *(v35 + 24) = v29;

          v36 = v29;
          sub_22616FAC8();

          (*(v53 + 8))(v11, v34);
          sub_22616FAA8();

          swift_beginAccess();
          sub_226150DB0(v32, v52, &qword_27D78D0A0, &unk_226170E80);

          return;
        }

        goto LABEL_26;
      }

LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      return;
    }

    if (qword_28136C3D8 != -1)
    {
      swift_once();
    }

    v37 = sub_22616F788();
    __swift_project_value_buffer(v37, qword_28136D4A0);

    v38 = sub_22616F768();
    v39 = sub_22616FA98();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v54[0] = v41;
      *v40 = 136315394;
      *(v40 + 4) = sub_2261555F8(v13, v14, v54);
      *(v40 + 12) = 2080;
      *(v40 + 14) = sub_2261555F8(v16, v46, v54);
      _os_log_impl(&dword_22614A000, v38, v39, "Factor: %s in namespace: %s in not a file nor a directory", v40, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AA77C50](v41, -1, -1);
      MEMORY[0x22AA77C50](v40, -1, -1);
    }
  }

  else
  {
    if (qword_28136C3D8 != -1)
    {
      swift_once();
    }

    v22 = sub_22616F788();
    __swift_project_value_buffer(v22, qword_28136D4A0);

    v23 = sub_22616F768();
    v24 = sub_22616FA98();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v54[0] = v26;
      *v25 = 136315394;
      *(v25 + 4) = sub_2261555F8(v13, v14, v54);
      *(v25 + 12) = 2080;
      *(v25 + 14) = sub_2261555F8(v16, v46, v54);
      _os_log_impl(&dword_22614A000, v23, v24, "Failed to retrieve factor: %s in namespace: %s", v25, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AA77C50](v26, -1, -1);
      MEMORY[0x22AA77C50](v25, -1, -1);
    }
  }

  v42 = v52;
  v43 = *(v53 + 56);
  v44 = v51;

  v43(v42, 1, 1, v44);
}

uint64_t sub_22615BFDC@<X0>(uint64_t a1@<X8>)
{
  v329 = a1;
  v335 = *MEMORY[0x277D85DE8];
  v327 = sub_22616F668();
  v326 = *(v327 - 1);
  v1 = *(v326 + 8);
  MEMORY[0x28223BE20](v327);
  v3 = v300 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v330 = sub_22616F6F8();
  v4 = *(v330 - 8);
  v5 = v4[8];
  v6 = MEMORY[0x28223BE20](v330);
  v8 = v300 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = v300 - v10;
  v12 = MEMORY[0x28223BE20](v9);
  v14 = v300 - v13;
  v15 = MEMORY[0x28223BE20](v12);
  v308 = v300 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v313 = v300 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v303 = v300 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v317 = v300 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v25 = v300 - v24;
  v26 = MEMORY[0x28223BE20](v23);
  v28 = v300 - v27;
  v29 = MEMORY[0x28223BE20](v26);
  v31 = v300 - v30;
  v32 = MEMORY[0x28223BE20](v29);
  v312 = v300 - v33;
  v34 = MEMORY[0x28223BE20](v32);
  v315 = v300 - v35;
  MEMORY[0x28223BE20](v34);
  v37 = v300 - v36;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78D0A0, &unk_226170E80);
  v39 = *(*(v38 - 8) + 64);
  v40 = MEMORY[0x28223BE20](v38 - 8);
  v307 = v300 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = MEMORY[0x28223BE20](v40);
  v314 = (v300 - v43);
  v44 = MEMORY[0x28223BE20](v42);
  v310 = (v300 - v45);
  v46 = MEMORY[0x28223BE20](v44);
  v318 = v300 - v47;
  v48 = MEMORY[0x28223BE20](v46);
  v311 = v300 - v49;
  v50 = MEMORY[0x28223BE20](v48);
  v319 = (v300 - v51);
  v52 = MEMORY[0x28223BE20](v50);
  v322 = v300 - v53;
  v54 = MEMORY[0x28223BE20](v52);
  v321 = v300 - v55;
  v56 = MEMORY[0x28223BE20](v54);
  v325 = v300 - v57;
  v58 = MEMORY[0x28223BE20](v56);
  v324 = v300 - v59;
  MEMORY[0x28223BE20](v58);
  v61 = v300 - v60;
  if (qword_28136C3D8 != -1)
  {
    swift_once();
  }

  v301 = v11;
  v304 = v28;
  v302 = v8;
  v305 = v25;
  v306 = v14;
  v309 = v31;
  v62 = sub_22616F788();
  v316 = __swift_project_value_buffer(v62, qword_28136D4A0);
  v63 = sub_22616F768();
  v64 = sub_22616FA88();
  if (os_log_type_enabled(v63, v64))
  {
    v65 = swift_slowAlloc();
    *v65 = 0;
    _os_log_impl(&dword_22614A000, v63, v64, "getting compiled path", v65, 2u);
    MEMORY[0x22AA77C50](v65, -1, -1);
  }

  v66 = v330;
  v331 = v4[7];
  v331(v61, 1, 1, v330);
  v67 = v61;
  v68 = objc_opt_self();
  v69 = [v68 defaultManager];
  v333 = 0;
  v70 = [v69 URLForDirectory:13 inDomain:1 appropriateForURL:0 create:1 error:&v333];

  v71 = v333;
  v328 = v4 + 7;
  if (!v70)
  {
    v89 = v67;
    goto LABEL_14;
  }

  sub_22616F6A8();
  v72 = v71;

  v333 = 0xD00000000000001ALL;
  v334 = 0x8000000226171FD0;
  v73 = v326;
  v74 = v327;
  (*(v326 + 13))(v3, *MEMORY[0x277CC91D8], v327);
  sub_22615FC54();
  v320 = v68;
  v75 = v324;
  sub_22616F6E8();
  (*(v73 + 1))(v3, v74);
  v76 = v4;
  v78 = v4 + 1;
  v77 = v4[1];
  v77(v37, v66);
  v331(v75, 0, 1, v66);
  v79 = v75;
  v80 = v320;
  sub_22615FCA8(v79, v67);
  v81 = [v80 defaultManager];
  v327 = v67;
  v82 = v325;
  sub_226150DB0(v67, v325, &qword_27D78D0A0, &unk_226170E80);
  v324 = v76;
  v83 = *(v76 + 6);
  result = v83(v82, 1, v66);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    sub_22616F6C8();
    v85 = sub_22616F7F8();

    v77(v82, v66);
    v86 = [v81 fileExistsAtPath_];

    v87 = v77;
    if (v86)
    {
      goto LABEL_11;
    }

    v88 = [v80 defaultManager];
    v89 = v327;
    v90 = v321;
    sub_226150DB0(v327, v321, &qword_27D78D0A0, &unk_226170E80);
    v326 = v83;
    result = v83(v90, 1, v66);
    if (result != 1)
    {
      v91 = sub_22616F688();
      v77(v90, v66);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78D0C0, &qword_226170E98);
      inited = swift_initStackObject();
      v93 = *MEMORY[0x277CCA180];
      *(inited + 32) = *MEMORY[0x277CCA180];
      *(inited + 16) = xmmword_226170920;
      *(inited + 64) = MEMORY[0x277D83B88];
      *(inited + 40) = 493;
      v94 = v93;
      sub_226159BC8(inited);
      swift_setDeallocating();
      sub_22614E1F4(inited + 32, &qword_27D78D078, &qword_226170EA0);
      type metadata accessor for FileAttributeKey(0);
      sub_22615FD18(&qword_27D78CED0, type metadata accessor for FileAttributeKey);
      v95 = sub_22616F798();

      v333 = 0;
      v96 = [v88 createDirectoryAtURL:v91 withIntermediateDirectories:1 attributes:v95 error:&v333];

      v71 = v333;
      if (v96)
      {
        v97 = v333;
        v87 = v77;
        v83 = v326;
LABEL_11:
        v89 = v327;
        v98 = v322;
        sub_226150DB0(v327, v322, &qword_27D78D0A0, &unk_226170E80);
        v99 = v83(v98, 1, v66);
        sub_22614E1F4(v98, &qword_27D78D0A0, &unk_226170E80);
        if (v99 == 1)
        {
          sub_22615B780(v329);
LABEL_82:
          result = sub_22614E1F4(v89, &qword_27D78D0A0, &unk_226170E80);
          v299 = *MEMORY[0x277D85DE8];
          return result;
        }

        v326 = v83;
        v300[1] = v78;
        v322 = v87;
        v103 = v323;
        v104 = v323[8];
        v105 = [objc_opt_self() clientWithIdentifier_];
        v106 = *(v103 + 7);
        v320 = *(v103 + 8);
        v107 = sub_22616F7F8();
        v108 = *(v103 + 5);
        v109 = *(v103 + 6);
        v110 = sub_22616F7F8();
        v111 = [v105 levelForFactor:v107 withNamespaceName:v110];

        v325 = v111;
        if (!v111)
        {
          v331(v329, 1, 1, v66);

LABEL_81:
          v89 = v327;
          goto LABEL_82;
        }

        v300[0] = v106;
        v112 = sub_22616F7F8();
        v113 = [v105 rolloutIdentifiersWithNamespaceName_];

        v114 = sub_22616F7F8();
        v115 = [v105 experimentIdentifiersWithNamespaceName_];

        v321 = v105;
        if (v113 && (v116 = v113, v117 = [v116 rampId], v116, v117))
        {
          v320 = v115;
          v118 = sub_22616F828();
          v120 = v119;

          v121 = [v116 rolloutId];
          v122 = sub_22616F828();
          v124 = v123;

          v333 = v122;
          v334 = v124;
          MEMORY[0x22AA77270](95, 0xE100000000000000);
          v332 = [v116 deploymentId];
          v125 = sub_22616FC48();
          MEMORY[0x22AA77270](v125);

          MEMORY[0x22AA77270](95, 0xE100000000000000);
          v126 = [v116 factorPackId];
          v127 = sub_22616F828();
          v129 = v128;

          MEMORY[0x22AA77270](v127, v129);

          MEMORY[0x22AA77270](95, 0xE100000000000000);
          MEMORY[0x22AA77270](v118, v120);

          v89 = v327;
          v130 = v326;
          if (!v326(v327, 1, v66))
          {
            sub_22616F698();
          }

          v131 = v319;
          sub_226150DB0(v89, v319, &qword_27D78D0A0, &unk_226170E80);
          v132 = v130(v131, 1, v66);
          v133 = v322;
          if (v132 == 1)
          {

LABEL_44:
            sub_22614E1F4(v131, &qword_27D78D0A0, &unk_226170E80);
            v192 = v329;
            v193 = 1;
LABEL_67:
            v331(v192, v193, 1, v66);
            goto LABEL_82;
          }

          v151 = v324;
          v152 = v315;
          v319 = *(v324 + 4);
          (v319)(v315, v131, v66);
          v153 = [objc_allocWithZone(MEMORY[0x277CCAA00]) init];
          sub_22616F6B8();
          v154 = sub_22616F7F8();

          v155 = [v153 fileExistsAtPath_];

          if (v155)
          {
            v156 = v312;
            v151[2](v312, v152, v66);
            v157 = sub_22616F768();
            v158 = sub_22616FA88();
            if (os_log_type_enabled(v157, v158))
            {
              v159 = v133;
              v160 = swift_slowAlloc();
              v161 = swift_slowAlloc();
              v326 = v116;
              v162 = v156;
              v163 = v161;
              v333 = v161;
              *v160 = 136315138;
              v164 = sub_22616F6B8();
              v166 = v165;
              v159(v162, v66);
              v167 = sub_2261555F8(v164, v166, &v333);
              v152 = v315;

              *(v160 + 4) = v167;
              _os_log_impl(&dword_22614A000, v157, v158, "Found existing model at path: %s", v160, 0xCu);
              __swift_destroy_boxed_opaque_existential_1(v163);
              MEMORY[0x22AA77C50](v163, -1, -1);
              MEMORY[0x22AA77C50](v160, -1, -1);
            }

            else
            {

              v133(v156, v66);
            }

            v199 = v329;
            v200 = v329;
            v201 = v152;
            v202 = v66;
            v203 = &v333;
LABEL_56:
            (*(v203 - 32))(v200, v201, v202);
            v331(v199, 0, 1, v66);
            goto LABEL_81;
          }

          v191 = v311;
          sub_22615B780(v311);
          if (v326(v191, 1, v66) == 1)
          {
            v133(v152, v66);

LABEL_47:
            sub_22614E1F4(v191, &qword_27D78D0A0, &unk_226170E80);
            v196 = v329;
            v197 = 1;
            v198 = v66;
LABEL_80:
            v331(v196, v197, 1, v198);
            goto LABEL_81;
          }

          v326 = v116;
          v204 = v309;
          (v319)(v309, v191, v66);
          v205 = *(v324 + 2);
          v206 = v304;
          v207 = v204;
          v205(v304, v204, v66);
          v208 = v305;
          v205(v305, v152, v66);
          v209 = sub_22616F768();
          v210 = sub_22616FA88();
          if (os_log_type_enabled(v209, v210))
          {
            v211 = v133;
            v212 = swift_slowAlloc();
            v323 = swift_slowAlloc();
            v333 = v323;
            *v212 = 136315394;
            v213 = sub_22616F6B8();
            LODWORD(v324) = v210;
            v214 = v213;
            v216 = v215;
            v211(v206, v66);
            v217 = sub_2261555F8(v214, v216, &v333);

            *(v212 + 4) = v217;
            *(v212 + 12) = 2080;
            v218 = sub_22616F6B8();
            v220 = v219;
            v211(v208, v66);
            v221 = v309;
            v222 = sub_2261555F8(v218, v220, &v333);

            *(v212 + 14) = v222;
            _os_log_impl(&dword_22614A000, v209, v324, "Moving %s to %s", v212, 0x16u);
            v223 = v323;
            swift_arrayDestroy();
            v152 = v315;
            MEMORY[0x22AA77C50](v223, -1, -1);
            MEMORY[0x22AA77C50](v212, -1, -1);
          }

          else
          {

            v133(v208, v66);
            v133(v206, v66);
            v221 = v207;
          }

          v255 = [objc_allocWithZone(MEMORY[0x277CCAA00]) init];
          v256 = sub_22616F688();
          v257 = sub_22616F688();
          v333 = 0;
          v258 = [v255 moveItemAtURL:v256 toURL:v257 error:&v333];

          v259 = v326;
          if (v258)
          {
            v260 = v333;
            v261 = v330;
            (v322)(v221, v330);

            v262 = v329;
            v263 = v329;
            v264 = v152;
          }

          else
          {
            v265 = v333;
            v266 = sub_22616F658();

            swift_willThrow();
            v267 = v266;
            v268 = sub_22616F768();
            v269 = sub_22616FA98();

            if (os_log_type_enabled(v268, v269))
            {
              v270 = v152;
              v271 = swift_slowAlloc();
              v272 = swift_slowAlloc();
              v333 = v272;
              *v271 = 136315138;
              swift_getErrorValue();
              v273 = sub_22616FCA8();
              v275 = sub_2261555F8(v273, v274, &v333);

              *(v271 + 4) = v275;
              _os_log_impl(&dword_22614A000, v268, v269, "Failed to move %s", v271, 0xCu);
              __swift_destroy_boxed_opaque_existential_1(v272);
              v276 = v272;
              v221 = v309;
              MEMORY[0x22AA77C50](v276, -1, -1);
              MEMORY[0x22AA77C50](v271, -1, -1);

              v277 = v270;
            }

            else
            {

              v277 = v152;
            }

            v261 = v330;
            (v322)(v277, v330);
            v262 = v329;
            v263 = v329;
            v264 = v221;
          }

          (v319)(v263, v264, v261);
        }

        else
        {
          if (v115)
          {
            v320 = v113;
            v134 = [v115 experimentId];
            v135 = sub_22616F828();
            v136 = v115;
            v138 = v137;

            v333 = v135;
            v334 = v138;
            MEMORY[0x22AA77270](95, 0xE100000000000000);
            v332 = [v136 deploymentId];
            v139 = sub_22616FC48();
            MEMORY[0x22AA77270](v139);

            MEMORY[0x22AA77270](95, 0xE100000000000000);
            v140 = v136;
            v141 = [v136 treatmentId];
            v142 = sub_22616F828();
            v144 = v143;

            MEMORY[0x22AA77270](v142, v144);

            v89 = v327;
            v145 = v326;
            v146 = v326(v327, 1, v66);
            v147 = v331;
            if (!v146)
            {
              sub_22616F698();
            }

            v148 = v318;
            sub_226150DB0(v89, v318, &qword_27D78D0A0, &unk_226170E80);
            if (v145(v148, 1, v66) == 1)
            {

              sub_22614E1F4(v148, &qword_27D78D0A0, &unk_226170E80);
              v147(v329, 1, 1, v66);
              goto LABEL_82;
            }

            v169 = v324 + 32;
            v168 = *(v324 + 4);
            v170 = v317;
            v168(v317, v148, v66);
            v171 = [objc_allocWithZone(MEMORY[0x277CCAA00]) init];
            sub_22616F6B8();
            v172 = sub_22616F7F8();

            v173 = [v171 fileExistsAtPath_];

            if (v173)
            {

              v174 = v329;
              v168(v329, v170, v66);
            }

            else
            {
              v131 = v310;
              sub_22615B780(v310);
              if (v326(v131, 1, v66) == 1)
              {
                (v322)(v317, v66);

                goto LABEL_44;
              }

              v224 = v169;
              v225 = v303;
              v226 = v168;
              v324 = v224;
              (v168)();
              v227 = [objc_allocWithZone(MEMORY[0x277CCAA00]) init];
              v228 = sub_22616F688();
              v229 = v317;
              v230 = sub_22616F688();
              v333 = 0;
              v231 = [v227 moveItemAtURL:v228 toURL:v230 error:&v333];

              if (v231)
              {
                v232 = v333;
                (v322)(v225, v66);

                v174 = v329;
                v233 = v329;
                v234 = v229;
              }

              else
              {
                v278 = v333;
                v279 = sub_22616F658();

                swift_willThrow();
                (v322)(v229, v66);

                v174 = v329;
                v233 = v329;
                v234 = v225;
              }

              v226(v233, v234, v66);
            }

            v192 = v174;
            v193 = 0;
            goto LABEL_67;
          }

          v149 = v327;
          v150 = v326;
          if (!v326(v327, 1, v66))
          {
            v333 = 0;
            v334 = 0xE000000000000000;
            sub_22616FBA8();
            v332 = v104;
            type metadata accessor for TRIProject_ProjectId(0);
            sub_22616FBC8();
            MEMORY[0x22AA77270](95, 0xE100000000000000);
            MEMORY[0x22AA77270](v108, v109);
            MEMORY[0x22AA77270](95, 0xE100000000000000);
            MEMORY[0x22AA77270](v300[0], v320);
            MEMORY[0x22AA77270](0x746C75616665645FLL, 0xE800000000000000);
            sub_22616F698();
            v105 = v321;
          }

          v131 = v314;
          sub_226150DB0(v149, v314, &qword_27D78D0A0, &unk_226170E80);
          if (v150(v131, 1, v66) == 1)
          {
            v89 = v149;

            goto LABEL_44;
          }

          v175 = v150;
          v320 = v113;
          v176 = v324;
          v177 = *(v324 + 4);
          v178 = v313;
          (v177)(v313, v131, v66);
          v179 = [objc_allocWithZone(MEMORY[0x277CCAA00]) init];
          sub_22616F6B8();
          v180 = sub_22616F7F8();

          v181 = [v179 fileExistsAtPath_];

          if (v181)
          {
            v326 = v177;
            v182 = v308;
            v176[2](v308, v178, v66);
            v183 = sub_22616F768();
            v184 = sub_22616FA88();
            if (os_log_type_enabled(v183, v184))
            {
              v185 = swift_slowAlloc();
              v186 = swift_slowAlloc();
              v333 = v186;
              *v185 = 136315138;
              v187 = sub_22616F6B8();
              v189 = v188;
              (v322)(v182, v66);
              v190 = sub_2261555F8(v187, v189, &v333);
              v178 = v313;

              *(v185 + 4) = v190;
              _os_log_impl(&dword_22614A000, v183, v184, "Found existing model at path: %s", v185, 0xCu);
              __swift_destroy_boxed_opaque_existential_1(v186);
              MEMORY[0x22AA77C50](v186, -1, -1);
              MEMORY[0x22AA77C50](v185, -1, -1);
            }

            else
            {

              (v322)(v182, v66);
            }

            v199 = v329;
            v200 = v329;
            v201 = v178;
            v202 = v66;
            v203 = &v336;
            goto LABEL_56;
          }

          v191 = v307;
          sub_22615B780(v307);
          v194 = v175(v191, 1, v66);
          v195 = v322;
          if (v194 == 1)
          {
            (v322)(v178, v66);

            goto LABEL_47;
          }

          v235 = v306;
          v326 = v177;
          (v177)(v306, v191, v66);
          v236 = *(v324 + 2);
          v237 = v301;
          v238 = v235;
          v236(v301, v235, v66);
          v239 = v302;
          v236(v302, v178, v66);
          v240 = sub_22616F768();
          v241 = sub_22616FA88();
          if (os_log_type_enabled(v240, v241))
          {
            v242 = v195;
            v243 = swift_slowAlloc();
            v244 = swift_slowAlloc();
            v333 = v244;
            *v243 = 136315394;
            v245 = sub_22616F6B8();
            LODWORD(v324) = v241;
            v246 = v245;
            v248 = v247;
            v242(v237, v66);
            v249 = sub_2261555F8(v246, v248, &v333);

            *(v243 + 4) = v249;
            *(v243 + 12) = 2080;
            v250 = sub_22616F6B8();
            v252 = v251;
            v242(v239, v66);
            v253 = v306;
            v254 = sub_2261555F8(v250, v252, &v333);

            *(v243 + 14) = v254;
            _os_log_impl(&dword_22614A000, v240, v324, "Moving %s to %s", v243, 0x16u);
            swift_arrayDestroy();
            v178 = v313;
            MEMORY[0x22AA77C50](v244, -1, -1);
            MEMORY[0x22AA77C50](v243, -1, -1);
          }

          else
          {

            v195(v239, v66);
            v195(v237, v66);
            v253 = v238;
          }

          v280 = [objc_allocWithZone(MEMORY[0x277CCAA00]) init];
          v281 = sub_22616F688();
          v282 = sub_22616F688();
          v333 = 0;
          v283 = [v280 moveItemAtURL:v281 toURL:v282 error:&v333];

          v284 = v326;
          if (v283)
          {
            v285 = v333;
            v261 = v330;
            (v322)(v253, v330);

            v262 = v329;
            v286 = v329;
            v287 = v178;
          }

          else
          {
            v288 = v333;
            v289 = sub_22616F658();

            swift_willThrow();
            v290 = v289;
            v291 = sub_22616F768();
            v292 = sub_22616FA98();

            if (os_log_type_enabled(v291, v292))
            {
              v293 = swift_slowAlloc();
              v294 = swift_slowAlloc();
              v333 = v294;
              *v293 = 136315138;
              swift_getErrorValue();
              v295 = sub_22616FCA8();
              v297 = sub_2261555F8(v295, v296, &v333);

              *(v293 + 4) = v297;
              _os_log_impl(&dword_22614A000, v291, v292, "Failed to move %s", v293, 0xCu);
              __swift_destroy_boxed_opaque_existential_1(v294);
              v298 = v306;
              MEMORY[0x22AA77C50](v294, -1, -1);
              MEMORY[0x22AA77C50](v293, -1, -1);

              v261 = v330;
              (v322)(v313, v330);
              v253 = v298;
            }

            else
            {

              v261 = v330;
              (v322)(v178, v330);
            }

            v262 = v329;
            v286 = v329;
            v287 = v253;
          }

          v284(v286, v287, v261);
        }

        v196 = v262;
        v197 = 0;
        v198 = v261;
        goto LABEL_80;
      }

LABEL_14:
      v100 = v331;
      v101 = v71;
      v102 = sub_22616F658();

      swift_willThrow();
      v100(v329, 1, 1, v66);
      goto LABEL_82;
    }
  }

  __break(1u);
  return result;
}
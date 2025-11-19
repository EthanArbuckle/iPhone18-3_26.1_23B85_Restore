unint64_t sub_10011D8EC()
{
  result = qword_10021C068;
  if (!qword_10021C068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021C068);
  }

  return result;
}

unint64_t sub_10011D944()
{
  result = qword_10021C070;
  if (!qword_10021C070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021C070);
  }

  return result;
}

unint64_t sub_10011D99C()
{
  result = qword_10021C078;
  if (!qword_10021C078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021C078);
  }

  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> PObjFunction.perform(with:arguments:)(SQLiter::SQLiteContext with, Swift::OpaquePointer arguments)
{
  v3 = *(arguments._rawValue + 2);
  if (!v3)
  {
    __break(1u);
    goto LABEL_13;
  }

  v6 = *(arguments._rawValue + 4);
  if (SQLiteArgument.isNull.getter(v6))
  {
    SQLiteContext.setNull()();
    return;
  }

  sub_10011DD3C();
  if (!v2)
  {
    SQLiteBaseSchematizer.getSQLiteBridge()();
    v8 = v7;

    v9 = SQLiteArgument.getData()(v6);
    if (v10 >> 60 == 15)
    {
      swift_unknownObjectRelease();
      sub_10011DC44();
      swift_allocError();
      *(v11 + 8) = 0;
      *(v11 + 16) = 0;
      *v11 = 6;
      *(v11 + 24) = 4;
      swift_willThrow();
      return;
    }

    if (v3 != 1)
    {
      v12 = v9;
      v13 = v10;
      v14 = *(arguments._rawValue + 5);
      v15 = SQLiteArgument.getStringNonNull()();
      if (!v16)
      {
        ObjectType = swift_getObjectType();
        (*(v8 + 32))(v12, v13, v15._countAndFlagsBits, v15._object, with.context._rawValue, ObjectType, v8);
      }

      sub_100014A2C(v12, v13);
      swift_unknownObjectRelease();
      return;
    }

LABEL_13:
    __break(1u);
  }
}

uint64_t PGetTimeWindowStartFunction.deinit()
{
  v0 = SQLiteBaseFunction.deinit();
  swift_weakDestroy();
  return v0;
}

uint64_t PGetTimeWindowStartFunction.__deallocating_deinit()
{
  v0 = SQLiteBaseFunction.deinit();
  swift_weakDestroy();

  return _swift_deallocClassInstance(v0, 48, 7);
}

unint64_t sub_10011DC44()
{
  result = qword_10021C080;
  if (!qword_10021C080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021C080);
  }

  return result;
}

uint64_t sub_10011DCBC()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    sub_10011DDBC();
    swift_allocError();
    sub_100006194(v1, "Schematizer is dead");
  }

  return Strong;
}

uint64_t sub_10011DD3C()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    sub_10011DDBC();
    swift_allocError();
    sub_100006194(v1, "Schematizer is dead");
  }

  return Strong;
}

unint64_t sub_10011DDBC()
{
  result = qword_10021C1C0;
  if (!qword_10021C1C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021C1C0);
  }

  return result;
}

Swift::Int sub_10011DE28()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  SQLiteBaseVTab.Style.hash(into:)(v3, v1);
  return Hasher._finalize()();
}

uint64_t SQLiteViewProvider.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  (*(a3 + 16))(a2, a3);
  String.hash(into:)();
}

uint64_t Array<A>.reloadAll(with:)(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v19 = result;
  v5 = *(a3 + 16);
  if (v5)
  {
    v6 = (a3 + 40);
    do
    {
      v7 = *(v6 - 1);
      v8 = *v6;
      ObjectType = swift_getObjectType();
      v10 = *(v8 + 48);
      swift_unknownObjectRetain();
      v10(v19, a2, ObjectType, v8);
      if (v4)
      {
        v23 = v4;
        swift_errorRetain();
        sub_100046184(&qword_100216900, &unk_10019AE20);
        if (!swift_dynamicCast() || v22)
        {

          swift_willThrow();
          return swift_unknownObjectRelease();
        }

        if (qword_10021BFB0 != -1)
        {
          swift_once();
        }

        v11 = type metadata accessor for Logger();
        sub_10000964C(v11, qword_100232D90);
        swift_unknownObjectRetain();
        v12 = Logger.logObject.getter();
        v13 = static os_log_type_t.info.getter();
        swift_unknownObjectRelease();
        if (os_log_type_enabled(v12, v13))
        {
          v14 = swift_slowAlloc();
          v15 = swift_slowAlloc();
          v21 = v15;
          *v14 = 136315138;
          v16 = (*(v8 + 16))(ObjectType, v8);
          v18 = sub_100009684(v16, v17, &v21);

          *(v14 + 4) = v18;
          _os_log_impl(&_mh_execute_header, v12, v13, "Schema file does not meet %s view provider requirements", v14, 0xCu);
          sub_100007378(v15);
        }

        swift_unknownObjectRelease();

        v4 = 0;
      }

      else
      {
        result = swift_unknownObjectRelease();
      }

      v6 += 2;
      --v5;
    }

    while (v5);
  }

  return result;
}

uint64_t Array<A>.teardownAll()(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    v2 = (result + 40);
    do
    {
      v4 = *(v2 - 1);
      v3 = *v2;
      ObjectType = swift_getObjectType();
      v6 = *(v3 + 40);
      swift_unknownObjectRetain();
      v6(ObjectType, v3);
      result = swift_unknownObjectRelease();
      v2 += 2;
      --v1;
    }

    while (v1);
  }

  return result;
}

unint64_t sub_10011E248()
{
  result = qword_10021C1C8;
  if (!qword_10021C1C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021C1C8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SQLiteViewProviderError(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

uint64_t EnumValue.init(intValue:type:)@<X0>(unsigned int a1@<W0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 40) = a1;
  *(a3 + 48) = 0;
  *(a3 + 56) = 1;
  return sub_100008C84(a2, a3);
}

uint64_t EnumValue.init(stringValue:type:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X8>)
{
  *(a4 + 40) = a1;
  *(a4 + 48) = a2;
  *(a4 + 56) = 0;
  return sub_100008C84(a3, a4);
}

Swift::Int32 __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> EnumValue.asInteger()()
{
  v1 = sub_1000085E0();
  if (v2)
  {
    return v0;
  }

  v4 = v1[6];
  v5 = v1[4];
  sub_100007534(v1, v1[3]);
  v6 = *(v5 + 24);
  v7 = sub_1000061C4();
  return v8(v7);
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> EnumValue.asString()()
{
  v2 = sub_1000085E0();
  if (v3)
  {
    v4 = v2[3];
    v5 = v2[4];
    sub_100007534(v2, v4);
    v6 = sub_100003C10(v5);
    v8 = v7(v6, v4, v5);
    if (!v1)
    {
      v0 = v8;
      v4 = v9;
    }
  }

  else
  {
    v4 = v2[6];
  }

  v10 = v0;
  v11 = v4;
  result._object = v11;
  result._countAndFlagsBits = v10;
  return result;
}

uint64_t static EnumValue.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 24);
  sub_100007534(a1, v4);
  sub_100003C24();
  v6 = v5(v4);
  v8 = v7;
  v9 = *(a2 + 24);
  sub_100007534(a2, v9);
  sub_100003C24();
  if (v6 == v10(v9) && v8 == v11)
  {
  }

  else
  {
    v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

    result = 0;
    if ((v13 & 1) == 0)
    {
      return result;
    }
  }

  v15 = *(a1 + 40);
  v17 = *(a2 + 40);
  v16 = *(a2 + 48);
  v18 = *(a2 + 56);
  if (*(a1 + 56))
  {
    if (*(a2 + 56))
    {
      return v15 == v17;
    }

    else
    {
      v23 = *(a2 + 24);
      v24 = *(a2 + 32);
      sub_100007534(a2, v23);
      return (*(v24 + 24))(v17, v16, v23, v24) == v15;
    }
  }

  v20 = *(a1 + 48);
  if (v18)
  {
    v21 = *(a1 + 24);
    v22 = *(a1 + 32);
    sub_100007534(a1, v21);
    return (*(v22 + 24))(v15, v20, v21, v22) == v17;
  }

  if (v15 == v17 && v20 == v16)
  {
    return 1;
  }

  v26 = *(a1 + 40);
  v27 = *(a1 + 48);

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t EnumValue.encode(to:)(void *a1)
{
  v3 = v1;
  v4 = a1[4];
  sub_100007534(a1, a1[3]);
  dispatch thunk of Encoder.singleValueContainer()();
  v5 = *(v1 + 40);
  if ((*(v3 + 56) & 1) == 0)
  {
    v10 = *(v3 + 48);

LABEL_5:
    sub_100026EEC(v12, v12[3]);
    sub_1000061C4();
    dispatch thunk of SingleValueEncodingContainer.encode(_:)();

    return sub_100007378(v12);
  }

  v6 = *(v3 + 24);
  v7 = *(v3 + 32);
  sub_100007534(v3, v6);
  v8 = sub_100003C10(v7);
  v9(v8, v6, v7);
  if (!v2)
  {
    goto LABEL_5;
  }

  return sub_100007378(v12);
}

__n128 sub_10011E7E8(uint64_t a1, uint64_t a2)
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

uint64_t sub_10011E804(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 57))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10011E844(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t sub_10011E8B4@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 16);
  return swift_unknownObjectRetain();
}

uint64_t sub_10011E904(_OWORD *a1, uint64_t *a2)
{
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v3 + 16);
  *(v3 + 16) = *a1;
  swift_unknownObjectRetain();
  return swift_unknownObjectRelease();
}

uint64_t Schematizer.schemaStore.getter()
{
  sub_1000061E0();
  swift_beginAccess();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return swift_unknownObjectRetain();
}

uint64_t Schematizer.__allocating_init()()
{
  sub_100003C38();
  v0 = swift_allocObject();
  type metadata accessor for ProtoSchemaStore();
  swift_allocObject();
  *(v0 + 16) = ProtoSchemaStore.init()();
  *(v0 + 24) = &protocol witness table for ProtoSchemaStore;
  return v0;
}

uint64_t Schematizer.init()()
{
  type metadata accessor for ProtoSchemaStore();
  swift_allocObject();
  *(v0 + 16) = ProtoSchemaStore.init()();
  *(v0 + 24) = &protocol witness table for ProtoSchemaStore;
  return v0;
}

uint64_t Schematizer.__allocating_init(withModel:)(uint64_t a1, uint64_t a2)
{
  sub_100003C38();
  v4 = swift_allocObject();
  Schematizer.init(withModel:)(a1, a2);
  return v4;
}

uint64_t Schematizer.init(withModel:)(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  type metadata accessor for ProtoSchemaStore();
  swift_allocObject();
  v7 = ProtoSchemaStore.init(withModel:)(a1, a2);
  if (v3)
  {
    type metadata accessor for Schematizer();
    swift_deallocPartialClassInstance();
  }

  else
  {
    *(v4 + 16) = v7;
    *(v4 + 24) = &protocol witness table for ProtoSchemaStore;
  }

  return v4;
}

uint64_t Schematizer.__allocating_init(withSchemaStore:)(uint64_t a1, uint64_t a2)
{
  sub_100003C38();
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  return result;
}

uint64_t Schematizer.init(withSchemaStore:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return v2;
}

uint64_t Schematizer.interpret(payload:with:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v16 = a2;
  swift_beginAccess();
  v9 = *(v4 + 16);
  v8 = *(v4 + 24);
  ObjectType = swift_getObjectType();
  v11 = *(v8 + 40);
  swift_unknownObjectRetain();
  v12 = v9;
  v11(v15, a3, a4, ObjectType, v8);
  swift_unknownObjectRelease();
  if (!v5)
  {
    type metadata accessor for ProtobufPayload();
    v12 = static ProtobufPayload.create(with:payload:)(v15, a1, v16);
    sub_100007378(v15);
  }

  return v12;
}

uint64_t Schematizer.enum(withName:)()
{
  sub_1000061E0();
  swift_beginAccess();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  swift_getObjectType();
  v3 = *(v2 + 48);
  swift_unknownObjectRetain();
  v4 = sub_100004494();
  v3(v4);
  return swift_unknownObjectRelease();
}

uint64_t Schematizer.messageSchema(withName:)()
{
  sub_1000061E0();
  swift_beginAccess();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  swift_getObjectType();
  v3 = *(v2 + 40);
  swift_unknownObjectRetain();
  v4 = sub_100004494();
  v3(v4);
  return swift_unknownObjectRelease();
}

uint64_t Schematizer.deinit()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  return v0;
}

uint64_t Schematizer.__deallocating_deinit()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = sub_100003C38();

  return _swift_deallocClassInstance(v2, v3, v4);
}

uint64_t sub_10011EE18(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v3 || (sub_1000037C8() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x656D614E65707974 && a2 == 0xE800000000000000;
    if (v6 || (sub_1000037C8() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 6775156 && a2 == 0xE300000000000000;
      if (v7 || (sub_1000037C8() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x7461657065527369 && a2 == 0xEA00000000006465)
      {

        return 3;
      }

      else
      {
        v9 = sub_1000037C8();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

uint64_t sub_10011EF48(char a1)
{
  result = 1701869940;
  switch(a1)
  {
    case 1:
      result = 0x656D614E65707974;
      break;
    case 2:
      result = 6775156;
      break;
    case 3:
      result = 0x7461657065527369;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_10011EFC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10011EE18(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10011EFFC(uint64_t a1)
{
  v2 = sub_10011F2FC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10011F038(uint64_t a1)
{
  v2 = sub_10011F2FC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t PropertyModel.typeName.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

void __swiftcall PropertyModel.init(type:typeName:tag:isRepeated:)(Schematizer::PropertyModel *__return_ptr retstr, Schematizer::TypeModel type, Swift::String_optional typeName, Swift::Int tag, Swift::Bool isRepeated)
{
  retstr->type = type;
  retstr->typeName = typeName;
  retstr->tag = tag;
  retstr->isRepeated = isRepeated;
}

uint64_t PropertyModel.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_100046184(&qword_10021C2B0, &qword_1001A0F08);
  v6 = sub_100003650(v5);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v9 = a1[4];
  sub_100007534(a1, a1[3]);
  sub_10011F2FC();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100007378(a1);
  }

  sub_10011F350();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  sub_1000044B4();
  v10 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v12 = v11;
  v18 = v10;
  sub_1000044B4();
  v13 = KeyedDecodingContainer.decode(_:forKey:)();
  sub_1000044B4();
  v14 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v15 = sub_100006BE8();
  v16(v15);
  result = sub_100007378(a1);
  *a2 = v19;
  *(a2 + 8) = v18;
  *(a2 + 16) = v12;
  *(a2 + 24) = v13;
  *(a2 + 32) = v14 & 1;
  return result;
}

unint64_t sub_10011F2FC()
{
  result = qword_10021C2B8;
  if (!qword_10021C2B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021C2B8);
  }

  return result;
}

unint64_t sub_10011F350()
{
  result = qword_10021C2C0;
  if (!qword_10021C2C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021C2C0);
  }

  return result;
}

uint64_t PropertyModel.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_100046184(&qword_10021C2C8, &qword_1001A0F10);
  v6 = sub_100003650(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  __chkstk_darwin(v6);
  v12 = &v18[-v11];
  v13 = a1[4];
  sub_100007534(a1, a1[3]);
  sub_10011F2FC();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v18[15] = *v3;
  v18[14] = 0;
  sub_10011F558();
  sub_1000085F4();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v14 = *(v3 + 8);
    v15 = *(v3 + 16);
    v18[13] = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v16 = *(v3 + 24);
    v18[12] = 2;
    sub_1000085F4();
    KeyedEncodingContainer.encode(_:forKey:)();
    if (*(v3 + 32) == 1)
    {
      v18[11] = 3;
      sub_1000085F4();
      KeyedEncodingContainer.encode(_:forKey:)();
    }
  }

  return (*(v8 + 8))(v12, v5);
}

unint64_t sub_10011F558()
{
  result = qword_10021C2D0;
  if (!qword_10021C2D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021C2D0);
  }

  return result;
}

uint64_t static PropertyModel.__derived_struct_equals(_:_:)(unsigned __int8 *a1, uint64_t a2)
{
  v2 = 7630441;
  v3 = *a1;
  v4 = 0xE300000000000000;
  v7 = 7630441;
  switch(v3)
  {
    case 1:
      v4 = 0xE500000000000000;
      v7 = 0x3436746E69;
      break;
    case 2:
      v4 = 0xE400000000000000;
      v7 = 1953393013;
      break;
    case 3:
      v4 = 0xE600000000000000;
      v7 = 0x3436746E6975;
      break;
    case 4:
      v4 = 0xE500000000000000;
      v7 = 0x74616F6C66;
      break;
    case 5:
      v4 = 0xE600000000000000;
      v7 = 0x656C62756F64;
      break;
    case 6:
      v4 = 0xE400000000000000;
      v7 = 1819242338;
      break;
    case 7:
      v4 = 0xE400000000000000;
      v7 = 1836412517;
      break;
    case 8:
      v4 = 0xE400000000000000;
      v7 = 1635017060;
      break;
    case 9:
      v4 = 0xE600000000000000;
      v7 = 0x676E69727473;
      break;
    case 10:
      v4 = 0xE600000000000000;
      v7 = 0x616D65686373;
      break;
    default:
      break;
  }

  v8 = 0xE300000000000000;
  switch(*a2)
  {
    case 1:
      v8 = 0xE500000000000000;
      v2 = 0x3436746E69;
      break;
    case 2:
      v8 = 0xE400000000000000;
      v2 = 1953393013;
      break;
    case 3:
      v8 = 0xE600000000000000;
      v2 = 0x3436746E6975;
      break;
    case 4:
      v8 = 0xE500000000000000;
      v2 = 0x74616F6C66;
      break;
    case 5:
      v8 = 0xE600000000000000;
      v2 = 0x656C62756F64;
      break;
    case 6:
      v8 = 0xE400000000000000;
      v2 = 1819242338;
      break;
    case 7:
      v8 = 0xE400000000000000;
      v2 = 1836412517;
      break;
    case 8:
      v8 = 0xE400000000000000;
      v2 = 1635017060;
      break;
    case 9:
      v8 = 0xE600000000000000;
      v2 = 0x676E69727473;
      break;
    case 0xA:
      v8 = 0xE600000000000000;
      v2 = 0x616D65686373;
      break;
    default:
      break;
  }

  if (v7 == v2 && v4 == v8)
  {
  }

  else
  {
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v10 & 1) == 0)
    {
      goto LABEL_41;
    }
  }

  v11 = *(a1 + 2);
  v12 = *(a2 + 16);
  if (v11)
  {
    if (!v12)
    {
      goto LABEL_41;
    }

    v13 = *(a1 + 1) == *(a2 + 8) && v11 == v12;
    if (!v13 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_41;
    }
  }

  else if (v12)
  {
LABEL_41:
    v14 = 0;
    return v14 & 1;
  }

  if (*(a1 + 3) != *(a2 + 24))
  {
    goto LABEL_41;
  }

  v14 = a1[32] ^ *(a2 + 32) ^ 1;
  return v14 & 1;
}

double sub_10011F854@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  PropertyModel.init(from:)(a1, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    *(a2 + 32) = v7;
  }

  return result;
}

uint64_t PropertyModel.init(_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v6 = a1[3];
  v7 = a1[4];
  sub_100007534(a1, v6);
  (*(v7 + 40))(v35, v6, v7);
  if (v2)
  {
    return sub_100007378(a1);
  }

  sub_10011FB8C(v35, &v30);
  if (v34)
  {
    if (v34 == 1)
    {
      sub_100008C84(&v30, v28);
      sub_100007534(v28, v29);
      v8 = sub_100011AB8();
      v3 = v9(v8);
      v6 = v10;
      sub_100007378(v28);
      v11 = 10;
    }

    else if (v32 | v33 | v30 | v31 | *(&v30 + 1))
    {
      v15 = v32 | v33 | v31 | *(&v30 + 1);
      if (v30 != 1 || v15)
      {
        if (v30 != 2 || v15)
        {
          if (v30 != 3 || v15)
          {
            if (v30 != 4 || v15)
            {
              if (v30 != 5 || v15)
              {
                if (v30 != 6 || v15)
                {
                  sub_1000061F4();
                  if (v17)
                  {
                    v18 = 0;
                  }

                  else
                  {
                    v18 = v16 == 7;
                  }

                  if (v18)
                  {
                    v11 = 9;
                  }

                  else
                  {
                    v11 = 8;
                  }
                }

                else
                {
                  sub_1000061F4();
                  v11 = 6;
                }
              }

              else
              {
                sub_1000061F4();
                v11 = 5;
              }
            }

            else
            {
              sub_1000061F4();
              v11 = 4;
            }
          }

          else
          {
            sub_1000061F4();
            v11 = 3;
          }
        }

        else
        {
          sub_1000061F4();
          v11 = 1;
        }
      }

      else
      {
        sub_1000061F4();
        v11 = 2;
      }
    }

    else
    {
      v11 = 0;
      sub_1000061F4();
    }
  }

  else
  {
    sub_100008C84(&v30, v28);
    sub_100007534(v28, v29);
    v12 = sub_100011AB8();
    v3 = v13(v12);
    v6 = v14;
    sub_100007378(v28);
    v11 = 7;
  }

  v19 = a1[3];
  v20 = a1[4];
  sub_100007534(a1, v19);
  v21 = (*(v20 + 32))(v19, v20);
  v36 = v6;
  v22 = v3;
  v23 = a1[3];
  v24 = a1[4];
  sub_100007534(a1, v23);
  v25 = (*(v24 + 16))(v23, v24);
  sub_10011FBE8(v35);
  result = sub_100007378(a1);
  *a2 = v11;
  v27 = v36;
  *(a2 + 8) = v22;
  *(a2 + 16) = v27;
  *(a2 + 24) = v21;
  *(a2 + 32) = v25 & 1;
  return result;
}

uint64_t sub_10011FC3C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 33))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10011FC90(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PropertyModel.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_10011FDD8()
{
  result = qword_10021C2D8;
  if (!qword_10021C2D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021C2D8);
  }

  return result;
}

unint64_t sub_10011FE30()
{
  result = qword_10021C2E0;
  if (!qword_10021C2E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021C2E0);
  }

  return result;
}

unint64_t sub_10011FE88()
{
  result = qword_10021C2E8;
  if (!qword_10021C2E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021C2E8);
  }

  return result;
}

void sub_10011FEE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = a3 + 64;
  v8 = 1 << *(a3 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a3 + 64);
  v11 = (v8 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v12 = 0;
  while (v10)
  {
    v13 = v12;
LABEL_9:
    v14 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
    sub_100141D0C(*(*(a3 + 56) + ((v13 << 8) | (4 * v14))));
  }

  while (1)
  {
    v13 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v13 >= v11)
    {

      v3[4] = a3;
      v3[5] = _swiftEmptyArrayStorage;
      v3[2] = a1;
      v3[3] = a2;
      return;
    }

    v10 = *(v7 + 8 * v13);
    ++v12;
    if (v10)
    {
      v12 = v13;
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t sub_100120000(uint64_t a1, void *a2)
{
  v3 = v2;
  countAndFlagsBits = v2[2]._countAndFlagsBits;
  if (*(countAndFlagsBits + 16))
  {
    v7 = sub_100005B74(a1, a2);
    if (v8)
    {
      return *(*(countAndFlagsBits + 56) + 4 * v7);
    }
  }

  sub_10011DDBC();
  swift_allocError();
  sub_100006200();

  sub_100003C48();
  String.append(_:)(v3[1]);
  v10._countAndFlagsBits = 8236;
  v10._object = 0xE200000000000000;
  String.append(_:)(v10);
  v11._countAndFlagsBits = a1;
  v11._object = a2;
  String.append(_:)(v11);
  v12 = sub_1000044C4();
  return sub_100008604(v12, v13, v14, v15, v16, v17, v18, v19, v20, v21);
}

uint64_t *sub_1001200D0(uint64_t *result)
{
  v2 = result;
  v3 = 0;
  countAndFlagsBits = v1[2]._countAndFlagsBits;
  v5 = 1 << *(countAndFlagsBits + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(countAndFlagsBits + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = v3;
LABEL_10:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v11 = v10 | (v9 << 6);
    if (*(*(countAndFlagsBits + 56) + 4 * v11) == result)
    {
      v12 = (*(countAndFlagsBits + 48) + 16 * v11);
      v13 = *v12;
      v14 = v12[1];

      return v13;
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
      sub_10011DDBC();
      swift_allocError();
      sub_100006200();

      sub_100003C48();
      String.append(_:)(v1[1]);
      v15._countAndFlagsBits = 8236;
      v15._object = 0xE200000000000000;
      String.append(_:)(v15);
      v27 = v2;
      v16._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      v13 = v26;
      String.append(_:)(v16);

      v18 = sub_1000044C4(v17);
      sub_100008604(v18, v19, v20, v21, v22, v23, v24, v25, v26[0], v26[1]);
      return v13;
    }

    v7 = *(countAndFlagsBits + 64 + 8 * v9);
    ++v3;
    if (v7)
    {
      v3 = v9;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100120240()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 40);
}

void *sub_100120270()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[5];

  return v0;
}

uint64_t sub_1001202A0()
{
  sub_100120270();

  return _swift_deallocClassInstance(v0, 48, 7);
}

uint64_t sub_100120340()
{
  v0 = type metadata accessor for Logger();
  sub_100057FF8(v0, qword_100232D90);
  sub_10000964C(v0, qword_100232D90);
  return Logger.init(subsystem:category:)();
}

void *sub_1001203C4()
{
  if (swift_weakLoadStrong())
  {
    v0 = SQLiteBaseSchematizer.getSQLiteBridge()();
  }

  else
  {
    sub_100121E4C();
    swift_allocError();
    *v1 = 0;
    swift_willThrow();
  }

  return v0;
}

double sub_10012045C()
{
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    swift_beginAccess();
    v0 = *(v2 + 32);
    v3 = *(v2 + 40);
  }

  else
  {
    sub_100121E4C();
    swift_allocError();
    *v4 = 0;
    swift_willThrow();
  }

  return v0;
}

uint64_t sub_1001204F8()
{
  swift_weakDestroy();

  return _swift_deallocClassInstance(v0, 24, 7);
}

double SQLiteBaseSchematizer.queryTimeFrameGuideline.getter()
{
  sub_1000044E8();
  swift_beginAccess();
  result = *(v0 + 32);
  v2 = *(v0 + 40);
  return result;
}

uint64_t SQLiteBaseSchematizer.queryTimeFrameGuideline.setter(double a1, double a2)
{
  result = swift_beginAccess();
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t sub_100120624()
{
  sub_100046184(&qword_10021C640, &unk_1001A11F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001A1120;
  *(inited + 32) = 0x6D756E655F70;
  *(inited + 40) = 0xE600000000000000;
  *(inited + 48) = type metadata accessor for PEnumFunction();
  *(inited + 56) = &protocol witness table for SQLiteSchematizerFunction;
  *(inited + 64) = 0x6A626F5F70;
  *(inited + 72) = 0xE500000000000000;
  *(inited + 80) = type metadata accessor for PObjFunction();
  *(inited + 88) = &protocol witness table for SQLiteSchematizerFunction;
  *(inited + 96) = 0x7465675F70;
  *(inited + 104) = 0xE500000000000000;
  *(inited + 112) = type metadata accessor for PGetFunction();
  *(inited + 120) = &protocol witness table for SQLiteSchematizerFunction;
  *(inited + 128) = 0x6E616D7465675F70;
  *(inited + 136) = 0xE900000000000079;
  *(inited + 144) = sub_100046184(&qword_10021C648, &unk_1001A2040);
  *(inited + 152) = &protocol witness table for SQLiteSchematizerTableFunction<A>;
  *(inited + 160) = 0x666F656E6F5F70;
  *(inited + 168) = 0xE700000000000000;
  *(inited + 176) = type metadata accessor for POneOfFunction();
  *(inited + 184) = &protocol witness table for SQLiteSchematizerFunction;
  *(inited + 192) = 0x6E6F736A5F70;
  *(inited + 200) = 0xE600000000000000;
  *(inited + 208) = type metadata accessor for PJSONFunction();
  *(inited + 216) = &protocol witness table for SQLiteSchematizerFunction;
  *(inited + 224) = 0x616F6C7961705F70;
  *(inited + 232) = 0xE900000000000064;
  *(inited + 240) = type metadata accessor for PPayloadFunction();
  *(inited + 248) = &protocol witness table for SQLiteSchematizerFunction;
  strcpy((inited + 256), "p_message_name");
  *(inited + 271) = -18;
  *(inited + 272) = type metadata accessor for PMessageNameFunction();
  *(inited + 280) = &protocol witness table for SQLiteSchematizerFunction;
  *(inited + 288) = 0x7465675F6270;
  *(inited + 296) = 0xE600000000000000;
  *(inited + 304) = type metadata accessor for PBGetFunction();
  *(inited + 312) = &protocol witness table for SQLiteSchematizerFunction;
  *(inited + 320) = 0x74737269665F6270;
  *(inited + 328) = 0xEA0000000000666FLL;
  *(inited + 336) = type metadata accessor for PBFirstOfFunction();
  *(inited + 344) = &protocol witness table for SQLiteSchematizerFunction;
  *(inited + 352) = 0x65646F6365645F70;
  *(inited + 360) = 0xEF3436657361625FLL;
  *(inited + 368) = type metadata accessor for PBase64DecodeFunction();
  *(inited + 376) = &protocol witness table for SQLiteSchematizerFunction;
  *(inited + 384) = 0xD000000000000017;
  *(inited + 392) = 0x80000001001B2330;
  *(inited + 400) = type metadata accessor for PSetTimeWindowFunction();
  *(inited + 408) = &protocol witness table for SQLiteSchematizerFunction;
  *(inited + 416) = 0xD000000000000019;
  *(inited + 424) = 0x80000001001B2350;
  *(inited + 432) = type metadata accessor for PGetTimeWindowStartFunction();
  *(inited + 440) = &protocol witness table for SQLiteSchematizerFunction;
  *(inited + 448) = 0xD000000000000017;
  *(inited + 456) = 0x80000001001B2370;
  *(inited + 464) = type metadata accessor for PGetTimeWindowEndFunction();
  *(inited + 472) = &protocol witness table for SQLiteSchematizerFunction;
  sub_100046184(&qword_10021C650, &unk_1001A1200);
  result = Dictionary.init(dictionaryLiteral:)();
  qword_100232DA8 = result;
  return result;
}

uint64_t SQLiteBaseSchematizer.functions.getter()
{
  sub_1000044E8();
  swift_beginAccess();
  v1 = *(v0 + 64);
}

uint64_t SQLiteBaseSchematizer.functions.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 64);
  *(v1 + 64) = a1;
}

uint64_t SQLiteBaseSchematizer.__allocating_init(schemaStore:viewProviders:)()
{
  v0 = sub_100006BF8();
  v1 = sub_100011AD0();
  SQLiteBaseSchematizer.init(schemaStore:viewProviders:)(v1, v2, v3);
  return v0;
}

uint64_t SQLiteBaseSchematizer.init(schemaStore:viewProviders:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v32 = a1;
  v33 = a3;
  v31 = a2;
  v4 = type metadata accessor for Date();
  v5 = sub_100003650(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  __chkstk_darwin(v5);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v30 - v13;
  type metadata accessor for Schematizer();
  sub_100006634();
  v15 = swift_allocObject();
  type metadata accessor for ProtoSchemaStore();
  sub_100008130();
  swift_allocObject();
  *(v15 + 16) = ProtoSchemaStore.init()();
  *(v15 + 24) = &protocol witness table for ProtoSchemaStore;
  *(v3 + 16) = v15;
  static Date.distantPast.getter();
  Date.timeIntervalSince1970.getter();
  v17 = v16;
  v18 = *(v7 + 8);
  v18(v14, v4);
  static Date.distantFuture.getter();
  Date.timeIntervalSince1970.getter();
  v20 = v19;
  result = (v18)(v11, v4);
  if (v17 > v20)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 32) = v17;
    *(v3 + 40) = v20;
    *(v3 + 48) = 0;
    *(v3 + 56) = 0;
    sub_100046184(&qword_10021C018, &qword_1001A1130);
    *(v3 + 64) = Dictionary.init(dictionaryLiteral:)();
    v22 = v32;
    if (v32)
    {
      sub_100006634();
      v23 = swift_allocObject();
      v24 = v31;
      *(v23 + 16) = v22;
      *(v23 + 24) = v24;
      v25 = *(v3 + 16);
      *(v3 + 16) = v23;
      swift_unknownObjectRetain();
    }

    else
    {
      sub_100006634();
      v26 = swift_allocObject();
      sub_100008130();
      swift_allocObject();
      *(v26 + 16) = ProtoSchemaStore.init()();
      *(v26 + 24) = &protocol witness table for ProtoSchemaStore;
      v27 = *(v3 + 16);
      *(v3 + 16) = v26;
    }

    *(v3 + 24) = v33;
    v29 = v34;
    (*(*v3 + 272))(v28);
    if (v29)
    {
    }

    swift_unknownObjectRelease();
    return v3;
  }

  return result;
}

uint64_t SQLiteBaseSchematizer.__allocating_init(schemaStoreModel:viewProviders:)()
{
  v0 = sub_100006BF8();
  v1 = sub_100011AD0();
  SQLiteBaseSchematizer.init(schemaStoreModel:viewProviders:)(v1, v2, v3);
  return v0;
}

uint64_t SQLiteBaseSchematizer.init(schemaStoreModel:viewProviders:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v30[0] = a2;
  v31 = a3;
  v5 = type metadata accessor for Date();
  v6 = sub_100003650(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  __chkstk_darwin(v6);
  v12 = v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = v30 - v14;
  type metadata accessor for Schematizer();
  sub_100006634();
  v16 = swift_allocObject();
  type metadata accessor for ProtoSchemaStore();
  sub_100008130();
  swift_allocObject();
  *(v16 + 16) = ProtoSchemaStore.init()();
  *(v16 + 24) = &protocol witness table for ProtoSchemaStore;
  *(v3 + 16) = v16;
  static Date.distantPast.getter();
  Date.timeIntervalSince1970.getter();
  v18 = v17;
  v19 = *(v8 + 8);
  v19(v15, v5);
  static Date.distantFuture.getter();
  Date.timeIntervalSince1970.getter();
  v21 = v20;
  result = (v19)(v12, v5);
  if (v18 > v21)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 32) = v18;
    *(v3 + 40) = v21;
    *(v3 + 48) = 0;
    *(v3 + 56) = 0;
    sub_100046184(&qword_10021C018, &qword_1001A1130);
    *(v3 + 64) = Dictionary.init(dictionaryLiteral:)();
    sub_100006634();
    swift_allocObject();
    v23 = v30[1];
    v24 = Schematizer.init(withModel:)(a1, v30[0]);
    if (v23)
    {

      v25 = *(v3 + 16);

      v26 = *(v3 + 48);
      swift_unknownObjectRelease();
      v27 = *(v3 + 64);

      type metadata accessor for SQLiteBaseSchematizer();
      swift_deallocPartialClassInstance();
    }

    else
    {
      v28 = *(v3 + 16);
      *(v3 + 16) = v24;

      *(v3 + 24) = v31;
      (*(*v3 + 272))(v29);
    }

    return v3;
  }

  return result;
}

Swift::Void __swiftcall SQLiteBaseSchematizer.ensureFunctions()()
{
  v1 = v0;
  swift_beginAccess();
  if (!*(*(v0 + 64) + 16))
  {
    if (qword_10021BFB8 != -1)
    {
      goto LABEL_25;
    }

    while (1)
    {
      v2 = qword_100232DA8 + 64;
      v3 = 1 << *(qword_100232DA8 + 32);
      v4 = -1;
      if (v3 < 64)
      {
        v4 = ~(-1 << v3);
      }

      v5 = v4 & *(qword_100232DA8 + 64);
      v6 = (v3 + 63) >> 6;
      v40 = qword_100232DA8;

      v7 = 0;
      v37 = v6;
      v38 = v2;
      for (i = v1; v5; v2 = v38)
      {
LABEL_10:
        v9 = (v7 << 10) | (16 * __clz(__rbit64(v5)));
        v10 = (*(v40 + 48) + v9);
        v12 = *v10;
        v11 = v10[1];
        v13 = (*(v40 + 56) + v9);
        v14 = *v13;
        v15 = v13[1];
        v16 = *(v15 + 24);

        v41 = v16(v17, v14, v15);
        sub_100005D5C();
        v18 = *(v1 + 64);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v20 = *(v1 + 64);
        *(v1 + 64) = 0x8000000000000000;
        v21 = sub_100005B74(v12, v11);
        v23 = v20[2];
        v24 = (v22 & 1) == 0;
        v25 = v23 + v24;
        if (__OFADD__(v23, v24))
        {
          goto LABEL_23;
        }

        v1 = v21;
        v26 = v22;
        sub_100046184(&qword_10021C3C0, &qword_1001A1138);
        if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v25))
        {
          v27 = sub_100005B74(v12, v11);
          if ((v26 & 1) != (v28 & 1))
          {
            KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
            __break(1u);
            return;
          }

          v1 = v27;
        }

        if (v26)
        {

          v29 = (v20[7] + 16 * v1);
          v30 = *v29;
          *v29 = v41;
          v29[1] = v15;
          swift_unknownObjectRelease();
        }

        else
        {
          v20[(v1 >> 6) + 8] |= 1 << v1;
          v31 = (v20[6] + 16 * v1);
          *v31 = v12;
          v31[1] = v11;
          v32 = (v20[7] + 16 * v1);
          *v32 = v41;
          v32[1] = v15;
          v33 = v20[2];
          v34 = __OFADD__(v33, 1);
          v35 = v33 + 1;
          if (v34)
          {
            goto LABEL_24;
          }

          v20[2] = v35;
        }

        v5 &= v5 - 1;
        v1 = i;
        v36 = *(i + 64);
        *(i + 64) = v20;

        swift_endAccess();
        v6 = v37;
      }

      while (1)
      {
        v8 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          break;
        }

        if (v8 >= v6)
        {

          return;
        }

        v5 = *(v2 + 8 * v8);
        ++v7;
        if (v5)
        {
          v7 = v8;
          goto LABEL_10;
        }
      }

      __break(1u);
LABEL_23:
      __break(1u);
LABEL_24:
      __break(1u);
LABEL_25:
      swift_once();
    }
  }
}

void *SQLiteBaseSchematizer.deinit()
{
  (*(*v0 + 240))();
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[6];
  swift_unknownObjectRelease();
  v4 = v0[8];

  return v0;
}

uint64_t SQLiteBaseSchematizer.__deallocating_deinit()
{
  SQLiteBaseSchematizer.deinit();

  return _swift_deallocClassInstance(v0, 72, 7);
}

Swift::Void __swiftcall SQLiteBaseSchematizer.teardown()()
{
  type metadata accessor for Schematizer();
  sub_100006634();
  v1 = swift_allocObject();
  type metadata accessor for ProtoSchemaStore();
  sub_100008130();
  swift_allocObject();
  *(v1 + 16) = ProtoSchemaStore.init()();
  *(v1 + 24) = &protocol witness table for ProtoSchemaStore;
  v2 = *(v0 + 16);
  *(v0 + 16) = v1;

  Array<A>.teardownAll()(*(v0 + 24));
  sub_100005D5C();
  sub_100046184(&qword_10021C3C8, &unk_1001A1140);
  Dictionary._Variant.removeAll(keepingCapacity:)(0);
  swift_endAccess();
}

uint64_t static SQLiteBaseSchematizer.createEnvironment()()
{
  type metadata accessor for SQLiteBaseSchematizer.Environment();
  v0 = swift_allocObject();
  swift_weakInit();
  return v0;
}

uint64_t SQLiteBaseSchematizer.getSchemaStore()()
{
  v1 = *(v0 + 16);
  sub_1000044E8();
  swift_beginAccess();
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return swift_unknownObjectRetain();
}

void *SQLiteBaseSchematizer.getSQLiteBridge()()
{
  v1 = v0;
  v2 = *(v0 + 48);
  if (v2)
  {
    v3 = *(v0 + 56);
    v4 = v2;
  }

  else
  {
    v5 = SQLiteBaseSchematizer.getSchemaStore()();
    v7 = v6;
    type metadata accessor for SQLiteMessageInBlobBridge();
    swift_allocObject();
    v4 = sub_10013572C(v5, v7);
    v8 = *(v1 + 48);
    *(v1 + 48) = v4;
    *(v1 + 56) = &off_1001FF590;

    swift_unknownObjectRelease();
  }

  swift_unknownObjectRetain();
  return v4;
}

Schematizer::SchemaStoreModel __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SQLiteBaseSchematizer.getSchemaStoreModel()()
{
  SQLiteBaseSchematizer.getSchemaStore()();
  v2 = v1;
  ObjectType = swift_getObjectType();
  v2[7](ObjectType, v2);
  sub_10000AC44();
  swift_unknownObjectRelease();
  v4 = v0;
  v5 = v2;
  result.enums._rawValue = v5;
  result.schemas._rawValue = v4;
  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SQLiteBaseSchematizer.reloadViewProviders()()
{
  v1 = *(v0 + 24);
  v2 = SQLiteBaseSchematizer.getSchemaStore()();
  Array<A>.reloadAll(with:)(v2, v3, v1);
  swift_unknownObjectRelease();
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SQLiteBaseSchematizer.reconfigure(withSchemaStoreModel:)(Schematizer::SchemaStoreModel withSchemaStoreModel)
{
  v3 = v1;
  rawValue = withSchemaStoreModel.enums._rawValue;
  v5 = withSchemaStoreModel.schemas._rawValue;
  type metadata accessor for Schematizer();
  sub_100006634();
  swift_allocObject();

  v6 = Schematizer.init(withModel:)(v5, rawValue);
  if (!v2)
  {
    v7 = v3[2];
    v3[2] = v6;

    v8 = v3[6];
    v3[6] = 0;
    v3[7] = 0;
    v9 = swift_unknownObjectRelease();
    (*(*v3 + 272))(v9);
  }
}

uint64_t SQLiteBaseSchematizer.reconfigure(withSchemaStore:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for Schematizer();
  sub_100006634();
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  v6 = v2[2];
  v2[2] = v5;
  swift_unknownObjectRetain();

  v7 = v2[6];
  v2[6] = 0;
  v2[7] = 0;
  v8 = swift_unknownObjectRelease();
  return (*(*v2 + 272))(v8);
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SQLiteBaseSchematizer.configureEventViews(for:withSchemaUpdate:)(Swift::OpaquePointer a1, Swift::Bool withSchemaUpdate)
{
  v6 = v3;
  v7 = *(v2 + 24);
  v8 = *(v7 + 16);
  if (v8)
  {
    v9 = (v7 + 40);
    *&v5 = 136315138;
    v60 = v5;
    *&v5 = 136315394;
    v61 = v5;
    while (1)
    {
      v10 = *(v9 - 1);
      v11 = *v9;
      if (!withSchemaUpdate)
      {
        break;
      }

      v12 = *(v9 - 1);
      ObjectType = swift_getObjectType();
      v14 = *(v11 + 24);
      swift_unknownObjectRetain();
      if (v14(ObjectType, v11))
      {
        goto LABEL_7;
      }

      swift_unknownObjectRelease();
LABEL_22:
      v9 += 2;
      if (!--v8)
      {
        return;
      }
    }

    v15 = *(v9 - 1);
    swift_unknownObjectRetain();
LABEL_7:
    v16 = swift_getObjectType();
    (*(v11 + 56))(a1._rawValue, v16, v11);
    if (!v6)
    {
      v64 = v16;
      if (qword_10021BFB0 != -1)
      {
        sub_100006228();
        swift_once();
      }

      v27 = type metadata accessor for Logger();
      sub_10000964C(v27, qword_100232D90);
      swift_unknownObjectRetain();
      v28 = Logger.logObject.getter();
      v29 = static os_log_type_t.debug.getter();
      swift_unknownObjectRelease();
      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        v31 = swift_slowAlloc();
        v39 = sub_100003C60(v31, v32, v33, v34, v35, v36, v37, v38, v60, *(&v60 + 1), v61, *(&v61 + 1), v62, log, v64);
        v41 = v40(v39);
        v43 = sub_100008AE8(v41, v42);

        *(v30 + 4) = v43;
        _os_log_impl(&_mh_execute_header, log, v29, "Database configured with %s event provider", v30, 0xCu);
        sub_100007378(v4);

        sub_10000F644();
        swift_unknownObjectRelease();
      }

      else
      {
        swift_unknownObjectRelease();
      }

      goto LABEL_22;
    }

    swift_errorRetain();
    v4 = sub_100046184(&qword_100216900, &unk_10019AE20);
    if ((swift_dynamicCast() & 1) != 0 && !v68)
    {
      v65 = v16;
      if (qword_10021BFB0 != -1)
      {
        sub_100006228();
        swift_once();
      }

      v44 = type metadata accessor for Logger();
      sub_10000964C(v44, qword_100232D90);
      swift_unknownObjectRetain();
      v18 = Logger.logObject.getter();
      v45 = static os_log_type_t.info.getter();
      swift_unknownObjectRelease();
      if (os_log_type_enabled(v18, v45))
      {
        v46 = swift_slowAlloc();
        v47 = swift_slowAlloc();
        v55 = sub_100003C60(v47, v48, v49, v50, v51, v52, v53, v54, v60, *(&v60 + 1), v61, *(&v61 + 1), v62, log, v65);
        v57 = v56(v55);
        v59 = sub_100008AE8(v57, v58);

        *(v46 + 4) = v59;
        _os_log_impl(&_mh_execute_header, log, v45, "Database does not meet %s view provider requirements", v46, 0xCu);
        sub_100007378(v4);

        sub_10000F644();

        swift_unknownObjectRelease();

        goto LABEL_20;
      }
    }

    else
    {
      if (qword_10021BFB0 != -1)
      {
        sub_100006228();
        swift_once();
      }

      v17 = type metadata accessor for Logger();
      sub_10000964C(v17, qword_100232D90);
      swift_unknownObjectRetain();
      swift_errorRetain();
      v18 = Logger.logObject.getter();
      v19 = static os_log_type_t.error.getter();
      swift_unknownObjectRelease();

      if (!os_log_type_enabled(v18, v19))
      {
        swift_unknownObjectRelease();

        goto LABEL_20;
      }

      v62 = v4;
      v20 = v16;
      v21 = swift_slowAlloc();
      log = v18;
      swift_slowAlloc();
      *v21 = v61;
      v22 = (*(v11 + 16))(v20, v11);
      v24 = sub_100008AE8(v22, v23);

      *(v21 + 4) = v24;
      *(v21 + 12) = 2080;
      v68 = v6;
      swift_errorRetain();
      v25 = String.init<A>(describing:)();
      v4 = sub_100008AE8(v25, v26);

      *(v21 + 14) = v4;
      _os_log_impl(&_mh_execute_header, v18, v19, "Failed to configure database with %s event provider: %s", v21, 0x16u);
      swift_arrayDestroy();
      sub_10000F644();
    }

    swift_unknownObjectRelease();

LABEL_20:
    v6 = 0;
    goto LABEL_22;
  }
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SQLiteBaseSchematizer.createFunctions(for:)(Swift::OpaquePointer a1)
{
  v3 = v1;
  SQLiteBaseSchematizer.ensureFunctions()();
  type metadata accessor for SQLiteDatabase();
  swift_allocObject();
  v5 = SQLiteDatabase.init(connection:)(a1._rawValue);
  if (!v2)
  {
    v6 = v5;
    sub_1000044E8();
    swift_beginAccess();
    v7 = *(v3 + 64);

    Dictionary<>.registerAll(on:)(v6, v7);

    (*(*v6 + 144))(v8);
  }
}

uint64_t SQLiteBaseSchematizer.interpret(_:with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(v4 + 16);

  v7 = sub_100011AD0();
  Schematizer.interpret(payload:with:)(v7, v8, v9, a4);
  sub_10000AC44();

  return a4;
}

uint64_t sub_100121D70(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t))
{
  v7 = *(v3 + 16);

  a3(a1, a2);
}

unint64_t sub_100121E4C()
{
  result = qword_10021C638;
  if (!qword_10021C638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021C638);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SQLiteSchematizerError(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_100121F80()
{
  result = qword_10021C658;
  if (!qword_10021C658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021C658);
  }

  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> PBFirstOfFunction.perform(with:arguments:)(SQLiter::SQLiteContext with, Swift::OpaquePointer arguments)
{
  v2 = *(arguments._rawValue + 2);
  if (!v2)
  {
LABEL_94:
    __break(1u);
LABEL_95:
    __break(1u);
LABEL_96:
    __break(1u);
LABEL_97:
    __break(1u);
LABEL_98:
    __break(1u);
LABEL_99:
    __break(1u);
LABEL_100:
    __break(1u);
    goto LABEL_101;
  }

  v4 = SQLiteArgument.getUnsafeData()(*(arguments._rawValue + 4));
  if (v5 >> 60 == 15)
  {
    sub_10011DC44();
    swift_allocError();
    *(v6 + 8) = 0;
    *(v6 + 16) = 0;
    *v6 = 6;
    *(v6 + 24) = 4;
    swift_willThrow();
    return;
  }

  if (v2 == 1)
  {
    goto LABEL_95;
  }

  v7 = v4;
  v8 = v5;
  v9 = *(arguments._rawValue + 5);
  v10 = SQLiteArgument.getStringNonNull()();
  if (v11)
  {
    goto LABEL_9;
  }

  if (v2 < 3)
  {
    goto LABEL_100;
  }

  v12 = *(arguments._rawValue + 6);
  v13 = SQLiteArgument.getStringNonNull()();
  if (v14)
  {

    goto LABEL_9;
  }

  v65 = v7;
  v60 = v10;
  v63 = 46;
  v64 = 0xE100000000000000;
  sub_10000527C();
  v15 = StringProtocol.components<A>(separatedBy:)();

  v16 = 0;
  v17 = *(v15 + 16);
  v18 = &v60._countAndFlagsBits + 1;
  v19 = _swiftEmptyArrayStorage;
  v20 = 10;
  while (v16 != v17)
  {
    if (v16 >= *(v15 + 16))
    {
      __break(1u);
      goto LABEL_94;
    }

    v21 = (v15 + 32 + 16 * v16);
    v22 = *v21;
    v23 = v21[1];
    ++v16;
    v24 = HIBYTE(v23) & 0xF;
    v25 = v22 & 0xFFFFFFFFFFFFLL;
    if ((v23 & 0x2000000000000000) != 0)
    {
      v26 = HIBYTE(v23) & 0xF;
    }

    else
    {
      v26 = v22 & 0xFFFFFFFFFFFFLL;
    }

    if (v26)
    {
      if ((v23 & 0x1000000000000000) != 0)
      {
        v48 = v19;

        v29 = sub_1001237E8(v22, v23, 10);
        v59 = v49;

        v19 = v48;
        v20 = 10;
        v18 = &v60._countAndFlagsBits + 1;
        if ((v59 & 1) == 0)
        {
LABEL_80:
          v45 = v19;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v45 = sub_1001232FC(0, *(v45 + 2) + 1, 1, v45);
          }

          v19 = v45;
          v46 = *(v45 + 2);
          v47 = *(v19 + 3);
          if (v46 >= v47 >> 1)
          {
            v19 = sub_1001232FC((v47 > 1), v46 + 1, 1, v19);
          }

          *(v19 + 2) = v46 + 1;
          *&v19[8 * v46 + 32] = v29;
          v18 = &v60._countAndFlagsBits + 1;
          v20 = 10;
        }
      }

      else
      {
        if ((v23 & 0x2000000000000000) != 0)
        {
          v60._countAndFlagsBits = v22;
          v60._object = (v23 & 0xFFFFFFFFFFFFFFLL);
          if (v22 == 43)
          {
            if (!v24)
            {
              goto LABEL_97;
            }

            if (v24 != 1)
            {
              while (1)
              {
                sub_100006C24();
                if (!v31 & v30)
                {
                  break;
                }

                sub_100003C8C();
                if (!v31)
                {
                  break;
                }

                v29 = v40 + v39;
                if (__OFADD__(v40, v39))
                {
                  break;
                }

                sub_1000080F4();
                if (v31)
                {
                  goto LABEL_79;
                }
              }
            }
          }

          else if (v22 == 45)
          {
            if (!v24)
            {
              goto LABEL_96;
            }

            if (v24 != 1)
            {
              while (1)
              {
                sub_100006C24();
                if (!v31 & v30)
                {
                  break;
                }

                sub_100003C8C();
                if (!v31)
                {
                  break;
                }

                v29 = v36 - v35;
                if (__OFSUB__(v36, v35))
                {
                  break;
                }

                sub_1000080F4();
                if (v31)
                {
                  goto LABEL_79;
                }
              }
            }
          }

          else if (v24)
          {
            while (1)
            {
              sub_100006C24();
              if (!v31 & v30)
              {
                break;
              }

              sub_100003C8C();
              if (!v31)
              {
                break;
              }

              v29 = v44 + v43;
              if (__OFADD__(v44, v43))
              {
                break;
              }

              sub_1000080F4();
              if (v31)
              {
                goto LABEL_79;
              }
            }
          }

          goto LABEL_78;
        }

        if ((v22 & 0x1000000000000000) != 0)
        {
          v27 = ((v23 & 0xFFFFFFFFFFFFFFFLL) + 32);
        }

        else
        {
          v50 = v18;
          v51 = v19;
          v27 = _StringObject.sharedUTF8.getter();
          v19 = v51;
          v20 = 10;
          v18 = v50;
        }

        v28 = *v27;
        if (v28 == 43)
        {
          if (v25 < 1)
          {
            goto LABEL_99;
          }

          if (v25 == 1)
          {
            goto LABEL_78;
          }

          v29 = 0;
          if (v27)
          {
            while (1)
            {
              sub_100006C24();
              if (!v31 & v30)
              {
                goto LABEL_78;
              }

              sub_100003C8C();
              if (!v31)
              {
                goto LABEL_78;
              }

              v29 = v38 + v37;
              if (__OFADD__(v38, v37))
              {
                goto LABEL_78;
              }

              sub_1000080F4();
              if (v31)
              {
                goto LABEL_79;
              }
            }
          }
        }

        else if (v28 == 45)
        {
          if (v25 < 1)
          {
            goto LABEL_98;
          }

          if (v25 == 1)
          {
            goto LABEL_78;
          }

          v29 = 0;
          if (v27)
          {
            while (1)
            {
              sub_100006C24();
              if (!v31 & v30)
              {
                break;
              }

              sub_100003C8C();
              if (!v31)
              {
                break;
              }

              v29 = v33 - v32;
              if (__OFSUB__(v33, v32))
              {
                break;
              }

              sub_1000080F4();
              if (v31)
              {
                goto LABEL_79;
              }
            }

LABEL_78:
            v29 = 0;
            v34 = 1;
            goto LABEL_79;
          }
        }

        else
        {
          if (!v25)
          {
            goto LABEL_78;
          }

          v29 = 0;
          if (v27)
          {
            do
            {
              v41 = *v27 - 48;
              if (v41 > 9)
              {
                goto LABEL_78;
              }

              v42 = 10 * v29;
              if ((v29 * v20) >> 64 != (10 * v29) >> 63)
              {
                goto LABEL_78;
              }

              v29 = v42 + v41;
              if (__OFADD__(v42, v41))
              {
                goto LABEL_78;
              }

              ++v27;
            }

            while (--v25);
          }
        }

        v34 = 0;
LABEL_79:
        LOBYTE(v63) = v34;
        if ((v34 & 1) == 0)
        {
          goto LABEL_80;
        }
      }
    }
  }

  v52 = v19;

  sub_10011DE10();
  SQLiteBaseSchematizer.enum(withName:)(v13._countAndFlagsBits, v13._object);
  v7 = v65;

  v53 = v61;
  v54 = v62;
  sub_100007534(&v60, v61);
  v55 = (*(v54 + 16))(v53, v54);
  sub_100007378(&v60._countAndFlagsBits);
  v56 = sub_10012260C(v55, v7, v8, v52);
  v58 = v57;

  if (v58)
  {
    SQLiteContext.setNull()();
    goto LABEL_9;
  }

  if (v56 < 0xFFFFFFFF80000000)
  {
LABEL_101:
    __break(1u);
LABEL_102:
    __break(1u);
    return;
  }

  if (v56 > 0x7FFFFFFF)
  {
    goto LABEL_102;
  }

  SQLiteContext.setInt32(_:)(v56);
LABEL_9:
  sub_100014A2C(v7, v8);
}

unint64_t *sub_10012260C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (qword_10021BFE0 != -1)
  {
    swift_once();
  }

  v5 = qword_10021EA50;
  isa = Data._bridgeToObjectiveC()().super.isa;
  [v5 updateData:isa];

  [v5 seekToOffset:0];
  v7 = *(a4 + 16);
  v8 = Data.count.getter();
  if (v8 < 0)
  {
    __break(1u);
    goto LABEL_66;
  }

  v9 = v8;
  if (v7)
  {
    v10 = 0;
    v11 = a4 + 32;
    v47 = a4 + 32;
    v48 = v7;
    while (1)
    {
      v12 = *(v11 + 8 * v10);
      while (1)
      {
        v13 = [v5 position];
        if ((v13 & 0x8000000000000000) == 0 && v13 >= v9)
        {
          v41 = 0;
          goto LABEL_61;
        }

        v14 = 0;
        v15 = 0;
        for (i = 0; ; ++i)
        {
          if (i > 9)
          {
            v20 = 0;
            goto LABEL_21;
          }

          LOBYTE(v50) = 0;
          v17 = [v5 position] + 1;
          if (v17 >= [v5 position] && (v18 = objc_msgSend(v5, "position") + 1, v18 <= objc_msgSend(v5, "length")))
          {
            v19 = [v5 data];
            [v19 getBytes:&v50 range:{objc_msgSend(v5, "position"), 1}];

            [v5 setPosition:{objc_msgSend(v5, "position") + 1}];
          }

          else
          {
            [v5 _setError];
          }

          v15 |= (v50 & 0x7F) << v14;
          if ((v50 & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
        }

        v20 = [v5 hasError] ? 0 : v15;
LABEL_21:
        if (v12 == (v20 >> 3))
        {
          break;
        }

        PBReaderSkipValueWithTag();
      }

      if ((v20 & 7) != 2)
      {
        break;
      }

      v21 = 0;
      v22 = 0;
      for (j = 0; ; ++j)
      {
        if (j > 9)
        {
          v22 = 0;
          goto LABEL_36;
        }

        LOBYTE(v50) = 0;
        v24 = [v5 position] + 1;
        if (v24 >= [v5 position] && (v25 = objc_msgSend(v5, "position") + 1, v25 <= objc_msgSend(v5, "length")))
        {
          v26 = [v5 data];
          [v26 getBytes:&v50 range:{objc_msgSend(v5, "position"), 1}];

          [v5 setPosition:{objc_msgSend(v5, "position") + 1}];
        }

        else
        {
          [v5 _setError];
        }

        v22 |= (v50 & 0x7F) << v21;
        if ((v50 & 0x80) == 0)
        {
          break;
        }

        v21 += 7;
      }

      if ([v5 hasError])
      {
        v22 = 0;
      }

      if (v22 < 0)
      {
        goto LABEL_67;
      }

LABEL_36:
      v27 = [v5 position];
      if ((v27 & 0x8000000000000000) != 0)
      {
        goto LABEL_68;
      }

      ++v10;
      v9 = (v27 + v22);
      v11 = v47;
      if (v10 == v48)
      {
        goto LABEL_38;
      }
    }

    sub_10011DDBC();
    swift_allocError();
    v44 = v43;
    v50 = 0;
    v51 = 0xE000000000000000;
    _StringGuts.grow(_:)(38);

    v50 = 0xD000000000000024;
    v51 = 0x80000001001B23E0;
    v45._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    v41 = &v50;
    String.append(_:)(v45);

    v46 = v51;
    *v44 = v50;
    *(v44 + 8) = v46;
    *(v44 + 41) = 12;
    swift_willThrow();
    [v5 updateData:0];
  }

  else
  {
LABEL_38:
    while (1)
    {
      v28 = [v5 position];
      if ((v28 & 0x8000000000000000) == 0 && v28 >= v9)
      {
        break;
      }

      v29 = 0;
      v30 = 0;
      for (k = 0; k <= 9; ++k)
      {
        LOBYTE(v50) = 0;
        v32 = [v5 position] + 1;
        if (v32 >= [v5 position] && (v33 = objc_msgSend(v5, "position") + 1, v33 <= objc_msgSend(v5, "length")))
        {
          v34 = [v5 data];
          [v34 getBytes:&v50 range:{objc_msgSend(v5, "position"), 1}];

          [v5 setPosition:{objc_msgSend(v5, "position") + 1}];
        }

        else
        {
          [v5 _setError];
        }

        v30 |= (v50 & 0x7F) << v29;
        if ((v50 & 0x80) == 0)
        {
          if ([v5 hasError])
          {
            v37 = 0;
          }

          else
          {
            v37 = v30;
          }

          v35 = v37 >> 3;
          if (((v37 >> 3) & 0x80000000) == 0)
          {
            v36 = v37 >> 3;
            goto LABEL_54;
          }

LABEL_66:
          __break(1u);
LABEL_67:
          __break(1u);
LABEL_68:
          __break(1u);
        }

        v29 += 7;
      }

      LODWORD(v35) = 0;
      LODWORD(v36) = 0;
LABEL_54:
      v38 = *(a1 + 16) + 1;
      v39 = (a1 + 36);
      while (--v38)
      {
        v40 = v39;
        v39 += 2;
        if (*(v40 - 1) <= v35 && *v40 >= v35)
        {
          v41 = (v36 & 0x7FFFFFFF);
          goto LABEL_61;
        }
      }

      PBReaderSkipValueWithTag();
    }

    v41 = 0;
LABEL_61:
    [v5 updateData:0];
  }

  return v41;
}

unint64_t sub_100122BB8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t j)
{
  if (qword_10021BFE0 != -1)
  {
    swift_once();
  }

  v5 = qword_10021EA50;
  isa = Data._bridgeToObjectiveC()().super.isa;
  [v5 updateData:isa];

  [v5 seekToOffset:0];
  v7 = *(j + 16);
  v8 = Data.count.getter();
  if (v8 < 0)
  {
    __break(1u);
    __break(1u);
LABEL_60:
    __break(1u);
  }

  v9 = v8;
  if (v7)
  {
    v10 = 0;
    v11 = j + 32;
    v48 = j + 32;
    v49 = v7;
    while (1)
    {
      v12 = *(v11 + 8 * v10);
      while (1)
      {
        v13 = [v5 position];
        if ((v13 & 0x8000000000000000) == 0 && v13 >= v9)
        {
          j = 0;
          goto LABEL_55;
        }

        v14 = 0;
        v15 = 0;
        for (i = 0; ; ++i)
        {
          if (i > 9)
          {
            v23 = 0;
            goto LABEL_21;
          }

          LOBYTE(v51) = 0;
          [v5 position];
          if (j >= [sub_100005A98() position] && (objc_msgSend(v5, "position"), j <= objc_msgSend(sub_100005A98(), "length")))
          {
            j = [v5 data];
            v17 = [v5 position];
            sub_1000067F8(v17, v18, v19, v20, v21, v22);

            [v5 setPosition:{objc_msgSend(v5, "position") + 1}];
          }

          else
          {
            [v5 _setError];
          }

          v15 |= (v51 & 0x7F) << v14;
          if ((v51 & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
        }

        v23 = [v5 hasError] ? 0 : v15;
LABEL_21:
        j = v23 & 7;
        if (v12 == (v23 >> 3))
        {
          break;
        }

        PBReaderSkipValueWithTag();
      }

      if (j != 2)
      {
        break;
      }

      v24 = 0;
      for (j = 0; j <= 9; j = (j + 1))
      {
        LOBYTE(v51) = 0;
        v25 = [v5 position] + 1;
        if (v25 >= [v5 position] && (v26 = objc_msgSend(v5, "position") + 1, v26 <= objc_msgSend(v5, "length")))
        {
          v27 = [v5 data];
          [v27 getBytes:&v51 range:{objc_msgSend(v5, "position"), 1}];

          [v5 setPosition:{objc_msgSend(v5, "position") + 1}];
        }

        else
        {
          [v5 _setError];
        }

        sub_100008B00();
        if ((v28 & 0x80) == 0)
        {
          [v5 hasError];
          break;
        }

        v24 += 7;
      }

      v29 = [v5 position];
      if ((v29 & 0x8000000000000000) != 0)
      {
        goto LABEL_60;
      }

      ++v10;
      v9 = v29;
      v11 = v48;
      if (v10 == v49)
      {
        goto LABEL_36;
      }
    }

    sub_10011DDBC();
    swift_allocError();
    v45 = v44;
    v51 = 0;
    v52 = 0xE000000000000000;
    _StringGuts.grow(_:)(38);

    v51 = 0xD000000000000024;
    v52 = 0x80000001001B23E0;
    v46._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    j = v46._object;
    String.append(_:)(v46);

    v47 = v52;
    *v45 = v51;
    *(v45 + 8) = v47;
    *(v45 + 41) = 12;
    swift_willThrow();
    [v5 updateData:0];
  }

  else
  {
LABEL_36:
    while (1)
    {
      v30 = [v5 position];
      if ((v30 & 0x8000000000000000) == 0 && v30 >= v9)
      {
        break;
      }

      v31 = 0;
      for (k = 0; k <= 9; ++k)
      {
        LOBYTE(v51) = 0;
        [v5 position];
        if (j >= [sub_100005A98() position] && (objc_msgSend(v5, "position"), j <= objc_msgSend(sub_100005A98(), "length")))
        {
          j = [v5 data];
          v33 = [v5 position];
          sub_1000067F8(v33, v34, v35, v36, v37, v38);

          [v5 setPosition:{objc_msgSend(v5, "position") + 1}];
        }

        else
        {
          [v5 _setError];
        }

        sub_100008B00();
        if ((v39 & 0x80) == 0)
        {
          [v5 hasError];
          break;
        }

        v31 += 7;
      }

      j = 0;
      v40 = *(a1 + 16) + 1;
      v41 = (a1 + 40);
      while (--v40)
      {
        v42 = v41;
        v41 += 2;
        if (*(v42 - 1) <= 0 && *v42 >= 0)
        {
          goto LABEL_55;
        }
      }

      PBReaderSkipValueWithTag();
    }

    j = 0;
LABEL_55:
    [v5 updateData:0];
  }

  return j;
}

void sub_100123108()
{
  sub_100005510();
  if (v5)
  {
    sub_100005DE0();
    if (v7 != v8)
    {
      sub_100005900();
      if (v7)
      {
        __break(1u);
        return;
      }

      sub_10000381C();
    }
  }

  else
  {
    v6 = v4;
  }

  sub_100006994(v6);
  if (v3)
  {
    sub_100046184(&qword_10021C7C0, &qword_1001A1328);
    v9 = swift_allocObject();
    v10 = j__malloc_size(v9);
    v9[2] = v2;
    v9[3] = 2 * ((v10 - 32) / 40);
  }

  else
  {
    v9 = _swiftEmptyArrayStorage;
  }

  if (v1)
  {
    if (v9 != v0 || &v0[5 * v2 + 4] <= v9 + 4)
    {
      memmove(v9 + 4, v0 + 4, 40 * v2);
    }

    v0[2] = 0;
  }

  else
  {
    sub_100046184(&qword_10021C7C8, &qword_1001A1330);
    swift_arrayInitWithCopy();
  }
}

void sub_100123220()
{
  sub_100005510();
  if (v5)
  {
    sub_100005DE0();
    if (v7 != v8)
    {
      sub_100005900();
      if (v7)
      {
        __break(1u);
        return;
      }

      sub_10000381C();
    }
  }

  else
  {
    v6 = v4;
  }

  sub_10000AC58(v6);
  if (v2)
  {
    sub_100046184(&qword_10021C7A8, &qword_1001A1308);
    v9 = swift_allocObject();
    j__malloc_size(v9);
    sub_100007D6C();
    *(v9 + 2) = v3;
    *(v9 + 3) = v10;
  }

  else
  {
    v9 = _swiftEmptyArrayStorage;
  }

  v11 = v9 + 32;
  v12 = v0 + 32;
  if (v1)
  {
    if (v9 != v0 || &v12[8 * v3] <= v11)
    {
      memmove(v11, v12, 8 * v3);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    memcpy(v11, v12, 8 * v3);
  }
}

char *sub_1001232FC(char *result, int64_t a2, char a3, char *a4)
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
    sub_100046184(&qword_10021C7D0, &qword_1001A1338);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 8);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[8 * v8] <= v12)
    {
      memmove(v12, v13, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 8 * v8);
  }

  return v10;
}

void sub_100123410()
{
  sub_100005510();
  if (v5)
  {
    sub_100005DE0();
    if (v7 != v8)
    {
      sub_100005900();
      if (v7)
      {
        __break(1u);
        return;
      }

      sub_10000381C();
    }
  }

  else
  {
    v6 = v4;
  }

  sub_10000AC58(v6);
  if (v2)
  {
    sub_100046184(v9, v10);
    v11 = swift_allocObject();
    j__malloc_size(v11);
    sub_100007D6C();
    *(v11 + 2) = v3;
    *(v11 + 3) = v12;
  }

  else
  {
    v11 = _swiftEmptyArrayStorage;
  }

  v13 = v11 + 32;
  v14 = v0 + 32;
  if (v1)
  {
    if (v11 != v0 || &v14[16 * v3] <= v13)
    {
      memmove(v13, v14, 16 * v3);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v3);
  }
}

void sub_1001234E4()
{
  sub_100005510();
  if (v5)
  {
    sub_100005DE0();
    if (v7 != v8)
    {
      sub_100005900();
      if (v7)
      {
        __break(1u);
        return;
      }

      sub_10000381C();
    }
  }

  else
  {
    v6 = v4;
  }

  sub_10000AC58(v6);
  if (v2)
  {
    sub_100046184(&qword_10021C7A0, &qword_1001A1300);
    v9 = swift_allocObject();
    v10 = j__malloc_size(v9);
    *(v9 + 2) = v3;
    *(v9 + 3) = 2 * ((v10 - 32) / 24);
  }

  else
  {
    v9 = _swiftEmptyArrayStorage;
  }

  v11 = v9 + 32;
  v12 = v0 + 32;
  v13 = 24 * v3;
  if (v1)
  {
    if (v9 != v0 || &v12[v13] <= v11)
    {
      memmove(v11, v12, v13);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    memcpy(v11, v12, v13);
  }
}

void sub_1001235CC()
{
  sub_100005510();
  if (v5)
  {
    sub_100005DE0();
    if (v7 != v8)
    {
      sub_100005900();
      if (v7)
      {
        __break(1u);
        return;
      }

      sub_10000381C();
    }
  }

  else
  {
    v6 = v4;
  }

  sub_100006994(v6);
  if (v3)
  {
    sub_100046184(&qword_10021C7B8, &qword_1001A1320);
    v9 = swift_allocObject();
    j__malloc_size(v9);
    sub_100007D6C();
    *(v9 + 2) = v2;
    *(v9 + 3) = v10;
  }

  else
  {
    v9 = _swiftEmptyArrayStorage;
  }

  v11 = v9 + 32;
  v12 = v0 + 32;
  if (v1)
  {
    if (v9 != v0 || &v12[32 * v2] <= v11)
    {
      memmove(v11, v12, 32 * v2);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_1001236B0()
{
  sub_100005510();
  if (v5)
  {
    sub_100005DE0();
    if (v7 != v8)
    {
      sub_100005900();
      if (v7)
      {
        __break(1u);
        return;
      }

      sub_10000381C();
    }
  }

  else
  {
    v6 = v4;
  }

  sub_100006994(v6);
  if (v3)
  {
    sub_100046184(&qword_10021C7B0, &qword_1001A1318);
    v9 = swift_allocObject();
    j__malloc_size(v9);
    sub_100007D6C();
    *(v9 + 2) = v2;
    *(v9 + 3) = v10;
  }

  else
  {
    v9 = _swiftEmptyArrayStorage;
  }

  v11 = v9 + 32;
  v12 = v0 + 32;
  if (v1)
  {
    if (v9 != v0 || &v12[64 * v2] <= v11)
    {
      memmove(v11, v12, v2 << 6);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

char *sub_100123794(char *__src, uint64_t a2, char *__dst)
{
  if (__dst != __src || &__src[56 * a2] <= __dst)
  {
    return memmove(__dst, __src, 56 * a2);
  }

  return __src;
}

char *sub_1001237C4(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[24 * a2] <= a3)
  {
    return sub_100006164(a3, result);
  }

  return result;
}

unsigned __int8 *sub_1001237E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = String.init<A>(_:)();
  v6 = result;
  v7 = v5;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_100107FD4();
    v36 = v35;

    v7 = v36;
    if ((v36 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v8 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = _StringObject.sharedUTF8.getter();
    }

    v9 = *result;
    if (v9 == 43)
    {
      if (v8 >= 1)
      {
        v20 = v8 - 1;
        if (v8 != 1)
        {
          v21 = a3 + 48;
          v22 = a3 + 55;
          v23 = a3 + 87;
          if (a3 > 10)
          {
            v21 = 58;
          }

          else
          {
            v23 = 97;
            v22 = 65;
          }

          if (result)
          {
            v14 = 0;
            v24 = result + 1;
            do
            {
              v25 = *v24;
              if (v25 < 0x30 || v25 >= v21)
              {
                if (v25 < 0x41 || v25 >= v22)
                {
                  v18 = 0;
                  if (v25 < 0x61 || v25 >= v23)
                  {
                    goto LABEL_127;
                  }

                  v26 = -87;
                }

                else
                {
                  v26 = -55;
                }
              }

              else
              {
                v26 = -48;
              }

              v27 = v14 * a3;
              if ((v14 * a3) >> 64 != (v14 * a3) >> 63)
              {
                goto LABEL_126;
              }

              v14 = v27 + (v25 + v26);
              if (__OFADD__(v27, (v25 + v26)))
              {
                goto LABEL_126;
              }

              ++v24;
              --v20;
            }

            while (v20);
LABEL_46:
            v18 = v14;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v18 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v9 != 45)
    {
      if (v8)
      {
        v28 = a3 + 48;
        v29 = a3 + 55;
        v30 = a3 + 87;
        if (a3 > 10)
        {
          v28 = 58;
        }

        else
        {
          v30 = 97;
          v29 = 65;
        }

        if (result)
        {
          v31 = 0;
          do
          {
            v32 = *result;
            if (v32 < 0x30 || v32 >= v28)
            {
              if (v32 < 0x41 || v32 >= v29)
              {
                v18 = 0;
                if (v32 < 0x61 || v32 >= v30)
                {
                  goto LABEL_127;
                }

                v33 = -87;
              }

              else
              {
                v33 = -55;
              }
            }

            else
            {
              v33 = -48;
            }

            v34 = v31 * a3;
            if ((v31 * a3) >> 64 != (v31 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v31 = v34 + (v32 + v33);
            if (__OFADD__(v34, (v32 + v33)))
            {
              goto LABEL_126;
            }

            ++result;
            --v8;
          }

          while (v8);
          v18 = v34 + (v32 + v33);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v8 >= 1)
    {
      v10 = v8 - 1;
      if (v8 != 1)
      {
        v11 = a3 + 48;
        v12 = a3 + 55;
        v13 = a3 + 87;
        if (a3 > 10)
        {
          v11 = 58;
        }

        else
        {
          v13 = 97;
          v12 = 65;
        }

        if (result)
        {
          v14 = 0;
          v15 = result + 1;
          while (1)
          {
            v16 = *v15;
            if (v16 < 0x30 || v16 >= v11)
            {
              if (v16 < 0x41 || v16 >= v12)
              {
                v18 = 0;
                if (v16 < 0x61 || v16 >= v13)
                {
                  goto LABEL_127;
                }

                v17 = -87;
              }

              else
              {
                v17 = -55;
              }
            }

            else
            {
              v17 = -48;
            }

            v19 = v14 * a3;
            if ((v14 * a3) >> 64 != (v14 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v14 = v19 - (v16 + v17);
            if (__OFSUB__(v19, (v16 + v17)))
            {
              goto LABEL_126;
            }

            ++v15;
            if (!--v10)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v18 = 0;
LABEL_127:

        return v18;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v37 = HIBYTE(v7) & 0xF;
  v62 = v6;
  v63 = v7 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v37)
      {
        v39 = 0;
        v55 = a3 + 48;
        v56 = a3 + 55;
        v57 = a3 + 87;
        if (a3 > 10)
        {
          v55 = 58;
        }

        else
        {
          v57 = 97;
          v56 = 65;
        }

        v58 = &v62;
        while (1)
        {
          v59 = *v58;
          if (v59 < 0x30 || v59 >= v55)
          {
            if (v59 < 0x41 || v59 >= v56)
            {
              v18 = 0;
              if (v59 < 0x61 || v59 >= v57)
              {
                goto LABEL_127;
              }

              v60 = -87;
            }

            else
            {
              v60 = -55;
            }
          }

          else
          {
            v60 = -48;
          }

          v61 = v39 * a3;
          if ((v39 * a3) >> 64 != (v39 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v39 = v61 + (v59 + v60);
          if (__OFADD__(v61, (v59 + v60)))
          {
            goto LABEL_126;
          }

          v58 = (v58 + 1);
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v37)
    {
      v38 = v37 - 1;
      if (v38)
      {
        v39 = 0;
        v40 = a3 + 48;
        v41 = a3 + 55;
        v42 = a3 + 87;
        if (a3 > 10)
        {
          v40 = 58;
        }

        else
        {
          v42 = 97;
          v41 = 65;
        }

        v43 = &v62 + 1;
        while (1)
        {
          v44 = *v43;
          if (v44 < 0x30 || v44 >= v40)
          {
            if (v44 < 0x41 || v44 >= v41)
            {
              v18 = 0;
              if (v44 < 0x61 || v44 >= v42)
              {
                goto LABEL_127;
              }

              v45 = -87;
            }

            else
            {
              v45 = -55;
            }
          }

          else
          {
            v45 = -48;
          }

          v46 = v39 * a3;
          if ((v39 * a3) >> 64 != (v39 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v39 = v46 - (v44 + v45);
          if (__OFSUB__(v46, (v44 + v45)))
          {
            goto LABEL_126;
          }

          ++v43;
          if (!--v38)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v37)
  {
    v47 = v37 - 1;
    if (v47)
    {
      v39 = 0;
      v48 = a3 + 48;
      v49 = a3 + 55;
      v50 = a3 + 87;
      if (a3 > 10)
      {
        v48 = 58;
      }

      else
      {
        v50 = 97;
        v49 = 65;
      }

      v51 = &v62 + 1;
      do
      {
        v52 = *v51;
        if (v52 < 0x30 || v52 >= v48)
        {
          if (v52 < 0x41 || v52 >= v49)
          {
            v18 = 0;
            if (v52 < 0x61 || v52 >= v50)
            {
              goto LABEL_127;
            }

            v53 = -87;
          }

          else
          {
            v53 = -55;
          }
        }

        else
        {
          v53 = -48;
        }

        v54 = v39 * a3;
        if ((v39 * a3) >> 64 != (v39 * a3) >> 63)
        {
          goto LABEL_126;
        }

        v39 = v54 + (v52 + v53);
        if (__OFADD__(v54, (v52 + v53)))
        {
          goto LABEL_126;
        }

        ++v51;
        --v47;
      }

      while (v47);
LABEL_125:
      v18 = v39;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> PGetTimeWindowEndFunction.perform(with:arguments:)(SQLiter::SQLiteContext with, Swift::OpaquePointer arguments)
{
  v3 = sub_10011DE10();
  if (!v2)
  {
    v4 = v3;
    swift_beginAccess();
    v5 = *(v4 + 40);

    SQLiteContext.setDouble(_:)(v5);
  }
}

uint64_t sub_100123E40()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

void sub_100123E70(void *a1@<X8>)
{
  _CPStartNetworkSearchFeedback.redactUnused()();
  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_100123EA0(uint64_t a1)
{
  v2 = sub_100123FC8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100123EDC(uint64_t a1)
{
  v2 = sub_100123FC8();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_100123F1C()
{
  result = qword_10021C910;
  if (!qword_10021C910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021C910);
  }

  return result;
}

unint64_t sub_100123F74()
{
  result = qword_10021C918;
  if (!qword_10021C918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021C918);
  }

  return result;
}

unint64_t sub_100123FC8()
{
  result = qword_10021C920;
  if (!qword_10021C920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021C920);
  }

  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> PMessageNameFunction.perform(with:arguments:)(SQLiter::SQLiteContext with, Swift::OpaquePointer arguments)
{
  if (*(arguments._rawValue + 2))
  {
    v4 = *(arguments._rawValue + 4);
    if (SQLiteArgument.isNull.getter(v4))
    {
      SQLiteContext.setNull()();
    }

    else
    {
      sub_10011DE10();
      if (!v2)
      {
        SQLiteBaseSchematizer.getSQLiteBridge()();
        v6 = v5;

        ObjectType = swift_getObjectType();
        (*(v6 + 24))(v4, ObjectType, v6);
        v9 = v8;
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        v10 = swift_getObjectType();
        (*(v9 + 16))(v16, v10, v9);
        swift_unknownObjectRelease();
        v12 = v17;
        v11 = v18;
        sub_100007534(v16, v17);
        v13 = (*(*(v11 + 8) + 8))(v12);
        v15 = v14;
        sub_100007378(v16);
        SQLiteContext.setString(_:destructor:)(v13, v15, 1, with.context._rawValue);
      }
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t static ValueType.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  sub_10011FB8C(a1, &v27);
  sub_10011FB8C(a2, &v29);
  if (!v28)
  {
    sub_10011FB8C(&v27, v26);
    if (!v32)
    {
      goto LABEL_4;
    }

    goto LABEL_10;
  }

  if (v28 != 1)
  {
    sub_100008628();
    if (v17)
    {
      v18 = v16 | v14 | v15;
      if (v13 != 1 || v18)
      {
        if (v13 != 2 || v18)
        {
          if (v13 != 3 || v18)
          {
            if (v13 != 4 || v18)
            {
              if (v13 != 5 || v18)
              {
                if (v13 != 6 || v18)
                {
                  if (v13 != 7 || v18)
                  {
                    sub_100003CA0();
                    if (!v11 || v29 != 8)
                    {
                      goto LABEL_11;
                    }
                  }

                  else
                  {
                    sub_100003CA0();
                    if (!v11 || v29 != 7)
                    {
                      goto LABEL_11;
                    }
                  }
                }

                else
                {
                  sub_100003CA0();
                  if (!v11 || v29 != 6)
                  {
                    goto LABEL_11;
                  }
                }
              }

              else
              {
                sub_100003CA0();
                if (!v11 || v29 != 5)
                {
                  goto LABEL_11;
                }
              }
            }

            else
            {
              sub_100003CA0();
              if (!v11 || v29 != 4)
              {
                goto LABEL_11;
              }
            }
          }

          else
          {
            sub_100003CA0();
            if (!v11 || v29 != 3)
            {
              goto LABEL_11;
            }
          }
        }

        else
        {
          sub_100003CA0();
          if (!v11 || v29 != 2)
          {
            goto LABEL_11;
          }
        }
      }

      else
      {
        sub_100003CA0();
        if (!v11 || v29 != 1)
        {
          goto LABEL_11;
        }
      }

      v20 = vorrq_s8(v30, v31);
      if (vorr_s8(*v20.i8, *&vextq_s8(v20, v20, 8uLL)))
      {
LABEL_11:
        sub_1001244BC(&v27);
        v12 = 0;
        return v12 & 1;
      }
    }

    else
    {
      sub_100003CA0();
      if (!v11)
      {
        goto LABEL_11;
      }

      v19 = vorrq_s8(v30, v31);
      if (*&vorr_s8(*v19.i8, *&vextq_s8(v19, v19, 8uLL)) | v29)
      {
        goto LABEL_11;
      }
    }

    sub_10011FBE8(&v27);
    v12 = 1;
    return v12 & 1;
  }

  sub_10011FB8C(&v27, v26);
  if (v32 != 1)
  {
LABEL_10:
    sub_100007378(v26);
    goto LABEL_11;
  }

LABEL_4:
  sub_100008C84(v26, v24);
  sub_100008C84(&v29, v22);
  v3 = v25;
  sub_100007534(v24, v25);
  sub_100003C24();
  v5 = v4(v3);
  v7 = v6;
  v8 = v23;
  sub_100007534(v22, v23);
  sub_100003C24();
  v11 = v5 == v9(v8) && v7 == v10;
  if (v11)
  {
    v12 = 1;
  }

  else
  {
    v12 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  sub_100007378(v22);
  sub_100007378(v24);
  sub_10011FBE8(&v27);
  return v12 & 1;
}

uint64_t sub_1001244BC(uint64_t a1)
{
  v2 = sub_100046184(&qword_10021CA60, &qword_1001A1448);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100124848(uint64_t a1)
{
  if ((*(a1 + 40) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 40) & 3;
  }
}

__n128 sub_100124864(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_100124878(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 41))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 40);
  if (v3 >= 3)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1001248B4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 25) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
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

uint64_t sub_100124900(uint64_t result, unsigned int a2)
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

uint64_t sub_100124944(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFD && *(a1 + 17))
    {
      v2 = *a1 + 252;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 3)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100124984(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

void sub_1001249E0(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t *a4@<X8>)
{
  switch(a3)
  {
    case 1:
      a4[3] = &type metadata for String;
      *a4 = a1;
      a4[1] = a2;
      sub_100007D78();

      return;
    case 2:
      v8 = *(a1 + 16);
      if (v8)
      {
        sub_100142F90(0, v8, 0);
        v9 = (a1 + 48);
        do
        {
          v10 = *(v9 - 2);
          v11 = *(v9 - 1);
          v12 = *v9;
          v13 = sub_10000623C();
          sub_10011CE44(v13, v14, v15);
          v16 = sub_10000623C();
          sub_1001249E0(v16);
          v17 = sub_10000623C();
          sub_10011CE88(v17, v18, v19);
          v21 = _swiftEmptyArrayStorage[2];
          v20 = _swiftEmptyArrayStorage[3];
          if (v21 >= v20 >> 1)
          {
            sub_100142F90((v20 > 1), v21 + 1, 1);
          }

          v9 += 24;
          _swiftEmptyArrayStorage[2] = v21 + 1;
          sub_100028734(v63, &_swiftEmptyArrayStorage[4 * v21 + 4]);
          --v8;
        }

        while (v8);
      }

      a4[3] = sub_100046184(&qword_100215398, &qword_1001996A0);
      *a4 = _swiftEmptyArrayStorage;
      goto LABEL_25;
    case 3:
      sub_100046184(&qword_100216690, &qword_1001A0410);
      v22 = static _DictionaryStorage.copy(original:)();
      v23 = 0;
      v24 = *(a1 + 64);
      v25 = *(a1 + 32);
      sub_100004154();
      i = v28 & v27;
      v31 = (v30 + 63) >> 6;
      v58 = v22 + 64;
      v59 = v22;
      if ((v28 & v27) != 0)
      {
        goto LABEL_12;
      }

      break;
    default:
      a4[3] = sub_100005180(0, &qword_100216EF0, NSNumber_ptr);
      *a4 = a1;
      sub_100007D78();

      v7 = v5;
      return;
  }

LABEL_13:
  v33 = v23;
  while (1)
  {
    v23 = v33 + 1;
    if (__OFADD__(v33, 1))
    {
      __break(1u);
LABEL_27:
      __break(1u);
      return;
    }

    if (v23 >= v31)
    {
      break;
    }

    v34 = *(a1 + 64 + 8 * v23);
    ++v33;
    if (v34)
    {
      v32 = __clz(__rbit64(v34));
      for (i = (v34 - 1) & v34; ; i &= i - 1)
      {
        v35 = v32 | (v23 << 6);
        v36 = (*(v26 + 48) + 16 * v35);
        v37 = *v36;
        v38 = v36[1];
        v39 = *(v26 + 56) + 24 * v35;
        v40 = *v39;
        v41 = *(v39 + 8);
        v42 = *(v39 + 16);

        v43 = sub_10000AC68();
        sub_10011CE44(v43, v44, v45);
        v46 = sub_10000AC68();
        sub_1001249E0(v46);
        v47 = sub_10000AC68();
        sub_10011CE88(v47, v48, v49);
        sub_10000813C();
        v22 = v59;
        *(v58 + v50) |= v51;
        v52 = (v59[6] + 16 * v35);
        *v52 = v37;
        v52[1] = v38;
        sub_100028734(v63, (v59[7] + 32 * v35));
        v53 = v59[2];
        v54 = __OFADD__(v53, 1);
        v55 = v53 + 1;
        if (v54)
        {
          break;
        }

        v59[2] = v55;
        v26 = a1;
        if (!i)
        {
          goto LABEL_13;
        }

LABEL_12:
        v32 = __clz(__rbit64(i));
      }

      goto LABEL_27;
    }
  }

  a4[3] = sub_100046184(qword_100214E88, qword_100198FA0);
  *a4 = v22;
LABEL_25:
  sub_100007D78();
}

void sub_100124CE8(uint64_t a1)
{
  v2 = v1;
  v3 = a1;
  sub_100009848(a1, v65);
  sub_100005180(0, &qword_100216EF0, NSNumber_ptr);
  if (sub_100006C34() || sub_100006C34())
  {
    sub_100007378(v3);
    goto LABEL_31;
  }

  sub_100046184(&qword_100215398, &qword_1001996A0);
  if (sub_100006C34())
  {
    v4 = v66;
    v5 = *(v66 + 16);
    if (v5)
    {
      v58 = v3;
      sub_100142FB0(0, v5, 0);
      v6 = 0;
      v7 = v4 + 32;
      v60 = v4;
      while (v6 < *(v4 + 16))
      {
        sub_100009848(v7, v64);
        sub_100009848(v64, v63);
        v8 = sub_100124CE8(v63);
        if (v2)
        {

          sub_100007378(v58);
          sub_100007378(v64);

          goto LABEL_31;
        }

        v11 = v8;
        v12 = v9;
        v13 = v10;
        v14 = v5;
        sub_100007378(v64);
        v16 = _swiftEmptyArrayStorage[2];
        v15 = _swiftEmptyArrayStorage[3];
        if (v16 >= v15 >> 1)
        {
          sub_100142FB0((v15 > 1), v16 + 1, 1);
        }

        ++v6;
        _swiftEmptyArrayStorage[2] = v16 + 1;
        v17 = &_swiftEmptyArrayStorage[3 * v16];
        v17[4] = v11;
        v17[5] = v12;
        *(v17 + 48) = v13;
        v7 += 32;
        v5 = v14;
        v18 = v14 == v6;
        v4 = v60;
        v2 = 0;
        if (v18)
        {
          sub_100007378(v58);

          goto LABEL_31;
        }
      }

      goto LABEL_34;
    }

    sub_100007378(v3);
LABEL_31:
    sub_100007378(v65);
    sub_10000623C();
    return;
  }

  sub_100046184(qword_100214E88, qword_100198FA0);
  if (!sub_100006C34())
  {
    sub_10011DDBC();
    swift_allocError();
    v51 = v50;
    _StringGuts.grow(_:)(16);

    strcpy(v64, "invalid type: ");
    HIBYTE(v64[1]) = -18;
    sub_100007534(v3, v3[3]);
    v63[0] = swift_getDynamicType();
    sub_100046184(&qword_1002153B0, &qword_1001996B8);
    v52._countAndFlagsBits = String.init<A>(describing:)();
    String.append(_:)(v52);

    v53 = v64[1];
    *v51 = v64[0];
    *(v51 + 8) = v53;
    *(v51 + 41) = 3;
    swift_willThrow();
    v54 = v3;
LABEL_27:
    sub_100007378(v54);
    goto LABEL_31;
  }

  v19 = v66;
  sub_100046184(&qword_10021CA98, &unk_1001A1660);
  v20 = static _DictionaryStorage.copy(original:)();
  v21 = 0;
  v22 = *(v19 + 64);
  v55 = v19 + 64;
  v59 = v3;
  v61 = v19;
  v23 = *(v19 + 32);
  sub_100004154();
  v26 = v25 & v24;
  v28 = (v27 + 63) >> 6;
  v56 = v28;
  v57 = v29 + 64;
  if (v26)
  {
    while (1)
    {
      v30 = __clz(__rbit64(v26));
      v62 = (v26 - 1) & v26;
LABEL_22:
      v33 = v30 | (v21 << 6);
      v34 = (*(v61 + 48) + 16 * v33);
      v35 = *v34;
      v36 = v34[1];
      sub_100009848(*(v61 + 56) + 32 * v33, v64);
      sub_100009848(v64, v63);

      v37 = sub_100124CE8(v63);
      if (v1)
      {
        break;
      }

      v40 = v37;
      v41 = v38;
      v42 = v39;
      sub_100007378(v64);
      sub_10000813C();
      *(v57 + v43) |= v44;
      v45 = (v20[6] + 16 * v33);
      *v45 = v35;
      v45[1] = v36;
      v46 = v20[7] + 24 * v33;
      *v46 = v40;
      *(v46 + 8) = v41;
      *(v46 + 16) = v42;
      v47 = v20[2];
      v48 = __OFADD__(v47, 1);
      v49 = v47 + 1;
      if (v48)
      {
        goto LABEL_35;
      }

      v20[2] = v49;
      v3 = v59;
      v28 = v56;
      v26 = v62;
      if (!v62)
      {
        goto LABEL_17;
      }
    }

    sub_100007378(v59);
    v54 = v64;
    goto LABEL_27;
  }

LABEL_17:
  v31 = v21;
  while (1)
  {
    v21 = v31 + 1;
    if (__OFADD__(v31, 1))
    {
      break;
    }

    if (v21 >= v28)
    {

      sub_100007378(v3);
      goto LABEL_31;
    }

    v32 = *(v55 + 8 * v21);
    ++v31;
    if (v32)
    {
      v30 = __clz(__rbit64(v32));
      v62 = (v32 - 1) & v32;
      goto LABEL_22;
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
}

id sub_1001251EC(uint64_t *a1)
{
  v4 = a1[4];
  sub_100007534(a1, a1[3]);
  sub_10000DF0C();
  dispatch thunk of Decoder.singleValueContainer()();
  if (v2)
  {
    sub_100007378(a1);
  }

  else
  {
    sub_100007534(v6, v6[3]);
    sub_10000DF0C();
    v1 = [objc_allocWithZone(NSNumber) initWithLongLong:dispatch thunk of SingleValueDecodingContainer.decode(_:)()];
    sub_100007378(v6);
    sub_100007378(a1);
  }

  return v1;
}

uint64_t sub_1001253B8(int a1, id a2, uint64_t a3, char a4)
{
  switch(a4)
  {
    case 1:
      sub_10000450C();
      result = String.encode(to:)();
      break;
    case 2:
      sub_10012578C();
      sub_10000450C();
      result = Array<A>.encode(to:)();
      break;
    case 3:
      sub_10012578C();
      sub_10000450C();
      result = Dictionary<>.encode(to:)();
      break;
    default:
      [a2 longLongValue];
      result = Int64.encode(to:)();
      break;
  }

  return result;
}

void sub_100125488(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  switch(a3)
  {
    case 1:
      if (a6 == 1 && (a1 != a4 || a2 != a5))
      {

        _stringCompareWithSmolCheck(_:_:expecting:)();
      }

      break;
    case 2:
      if (a6 == 2)
      {

        sub_1001257E0(a1, a4);
      }

      break;
    case 3:
      if (a6 == 3)
      {

        sub_10011AF78(a1, a4);
      }

      break;
    default:
      if (!a6)
      {
        sub_100005180(0, &qword_10021A4C0, NSObject_ptr);
        static NSObject.== infix(_:_:)();
      }

      break;
  }
}

id sub_1001255BC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1001251EC(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
  }

  return result;
}

unint64_t sub_100125628()
{
  result = qword_10021CA70;
  if (!qword_10021CA70)
  {
    sub_1000461CC(&qword_10021CA68, &qword_1001A1650);
    sub_1001256AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021CA70);
  }

  return result;
}

unint64_t sub_1001256AC()
{
  result = qword_10021CA78;
  if (!qword_10021CA78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021CA78);
  }

  return result;
}

unint64_t sub_100125700()
{
  result = qword_10021CA88;
  if (!qword_10021CA88)
  {
    sub_1000461CC(&qword_10021CA80, &qword_1001A1658);
    sub_1001256AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021CA88);
  }

  return result;
}

unint64_t sub_10012578C()
{
  result = qword_10021CA90;
  if (!qword_10021CA90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021CA90);
  }

  return result;
}

void sub_1001257E0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16) && v2 && a1 != a2)
  {
    v3 = (a2 + 48);
    v4 = (a1 + 48);
    while (2)
    {
      v5 = *(v4 - 2);
      v6 = *(v3 - 2);
      v7 = *v3;
      switch(*v4)
      {
        case 1:
          if (v7 == 1)
          {
            if (v5 == v6 && *(v4 - 1) == *(v3 - 1))
            {
              goto LABEL_13;
            }

            sub_100003898();
            if (_stringCompareWithSmolCheck(_:_:expecting:)())
            {
              goto LABEL_13;
            }
          }

          break;
        case 2:
          if (v7 == 2)
          {
            v18 = sub_100005994();
            sub_10011CE44(v18, v19, 2);
            v20 = sub_100003898();
            sub_10011CE44(v20, v21, 2);
            v12 = sub_1001257E0(v5, v6);
            v22 = sub_100005994();
            sub_10011CE88(v22, v23, 2);
            v15 = sub_100003898();
            v17 = 2;
            goto LABEL_12;
          }

          break;
        case 3:
          if (v7 == 3)
          {
            v24 = sub_100005994();
            sub_10011CE44(v24, v25, 3);
            v26 = sub_100003898();
            sub_10011CE44(v26, v27, 3);
            v12 = sub_10011AF78(v5, v6);
            v28 = sub_100005994();
            sub_10011CE88(v28, v29, 3);
            v15 = sub_100003898();
            v17 = 3;
            goto LABEL_12;
          }

          break;
        default:
          if (!*v3)
          {
            sub_100005180(0, &qword_10021A4C0, NSObject_ptr);
            v8 = sub_100005994();
            sub_10011CE44(v8, v9, 0);
            v10 = sub_100003898();
            sub_10011CE44(v10, v11, 0);
            v12 = static NSObject.== infix(_:_:)();
            v13 = sub_100005994();
            sub_10011CE88(v13, v14, 0);
            v15 = sub_100003898();
            v17 = 0;
LABEL_12:
            sub_10011CE88(v15, v16, v17);
            if (v12)
            {
LABEL_13:
              v3 += 24;
              v4 += 24;
              if (--v2)
              {
                continue;
              }
            }
          }

          break;
      }

      break;
    }
  }
}

uint64_t sub_1001259C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 24))
  {
    sub_100008C84(a1, v10);
    v6 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v3;
    sub_100136258(v10, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v9;
  }

  else
  {
    sub_10000F94C(a1, &qword_10021CC58, &qword_1001A16F0);
    sub_100139ABC(a2, a3, v10);

    return sub_10000F94C(v10, &qword_10021CC58, &qword_1001A16F0);
  }

  return result;
}

uint64_t sub_100125A94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 24))
  {
    sub_100008C84(a1, v10);
    v6 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v3;
    sub_100136294(v10, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v9;
  }

  else
  {
    sub_10000F94C(a1, &qword_10021CC50, &qword_1001A16E8);
    sub_100139C74(a2, a3, v10);

    return sub_10000F94C(v10, &qword_10021CC50, &qword_1001A16E8);
  }

  return result;
}

void *sub_100125B68(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyArrayStorage;
  }

  v2 = a1;
  sub_100142F70(0, v1, 0);
  result = sub_10012B638(v2);
  v6 = result;
  v7 = 0;
  v8 = v2 + 64;
  v27 = v4;
  v28 = v1;
  v26 = v2 + 72;
  v29 = v2 + 64;
  while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(v2 + 32))
  {
    v9 = v6 >> 6;
    if ((*(v8 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
    {
      goto LABEL_22;
    }

    if (*(v2 + 36) != v4)
    {
      goto LABEL_23;
    }

    v31 = v7;
    v32 = v4;
    v30 = v5;
    v10 = (*(v2 + 48) + 16 * v6);
    v11 = v10[1];
    v37 = *v10;
    v12 = *(v2 + 56) + 40 * v6;
    v36 = *v12;
    v13 = *(v12 + 16);
    v34 = *(v12 + 24);
    v35 = *(v12 + 8);
    v33 = *(v12 + 32);

    v14 = v2;
    v16 = _swiftEmptyArrayStorage[2];
    v15 = _swiftEmptyArrayStorage[3];

    if (v16 >= v15 >> 1)
    {
      result = sub_100142F70((v15 > 1), v16 + 1, 1);
    }

    _swiftEmptyArrayStorage[2] = v16 + 1;
    v17 = &_swiftEmptyArrayStorage[7 * v16];
    v17[4] = v37;
    v17[5] = v11;
    *(v17 + 48) = v36;
    v17[7] = v35;
    v17[8] = v13;
    v17[9] = v34;
    *(v17 + 80) = v33;
    v18 = 1 << *(v14 + 32);
    if (v6 >= v18)
    {
      goto LABEL_24;
    }

    v2 = v14;
    v8 = v29;
    v19 = *(v29 + 8 * v9);
    if ((v19 & (1 << v6)) == 0)
    {
      goto LABEL_25;
    }

    if (*(v2 + 36) != v32)
    {
      goto LABEL_26;
    }

    v20 = v19 & (-2 << (v6 & 0x3F));
    if (v20)
    {
      v18 = __clz(__rbit64(v20)) | v6 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v21 = v9 << 6;
      v22 = v9 + 1;
      v23 = (v26 + 8 * v9);
      while (v22 < (v18 + 63) >> 6)
      {
        v25 = *v23++;
        v24 = v25;
        v21 += 64;
        ++v22;
        if (v25)
        {
          result = sub_10012B72C(v6, v32, v30 & 1);
          v18 = __clz(__rbit64(v24)) + v21;
          goto LABEL_19;
        }
      }

      result = sub_10012B72C(v6, v32, v30 & 1);
    }

LABEL_19:
    v5 = 0;
    v7 = v31 + 1;
    v6 = v18;
    v4 = v27;
    if (v31 + 1 == v28)
    {
      return _swiftEmptyArrayStorage;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

void *sub_100125DF4(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = _swiftEmptyArrayStorage;
  if (v1)
  {
    v12 = _swiftEmptyArrayStorage;
    sub_100142F90(0, v1, 0);
    v2 = _swiftEmptyArrayStorage;
    v4 = (a1 + 48);
    do
    {
      v5 = *(v4 - 2);
      v6 = *(v4 - 1);
      v7 = *v4;
      sub_10011CE44(v5, v6, *v4);
      sub_1001249E0(v5, v6, v7, v11);
      sub_10011CE88(v5, v6, v7);
      v12 = v2;
      v9 = v2[2];
      v8 = v2[3];
      if (v9 >= v8 >> 1)
      {
        sub_100142F90((v8 > 1), v9 + 1, 1);
        v2 = v12;
      }

      v4 += 24;
      v2[2] = v9 + 1;
      sub_100028734(v11, &v2[4 * v9 + 4]);
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_100125F04()
{
  v2 = *(v0 + 80);
  if (v2)
  {
    v3 = *(v0 + 80);

    return v2;
  }

  sub_100126270();
  if (v1)
  {
    return v2;
  }

  sub_1000089E4();
  v38 = v0;
  v4 = *(v0 + 72);

  sub_100046184(&qword_10021CC68, &qword_1001A1700);
  v2 = Dictionary.init(dictionaryLiteral:)();
  v6 = v4 + 64;
  v5 = *(v4 + 64);
  sub_100008150();
  v9 = v8 & v7;
  v11 = (v10 + 63) >> 6;
  v40 = v4;

  v12 = 0;
  v39 = v6;
  if (v9)
  {
    goto LABEL_9;
  }

  do
  {
LABEL_5:
    v13 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      __break(1u);
      goto LABEL_22;
    }

    if (v13 >= v11)
    {

      v36 = *(v38 + 80);
      *(v38 + 80) = v2;

      return v2;
    }

    v9 = *(v6 + 8 * v13);
    ++v12;
  }

  while (!v9);
  v12 = v13;
LABEL_9:
  while (1)
  {
    v14 = __clz(__rbit64(v9)) | (v12 << 6);
    v15 = (*(v40 + 48) + 16 * v14);
    v17 = *v15;
    v16 = v15[1];
    sub_1000092B4(*(v40 + 56) + 40 * v14, v45);
    v44[0] = v17;
    v44[1] = v16;
    v18 = v46;
    v19 = v47;
    sub_100007534(v45, v46);
    v20 = *(v19 + 32);

    v21 = v20(v18, v19);
    sub_10012B678(v44, v42);

    sub_100008C84(&v43, v41);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v48 = v2;
    v23 = sub_1000BBA18(v21);
    v25 = v2[2];
    v26 = (v24 & 1) == 0;
    v27 = v25 + v26;
    if (__OFADD__(v25, v26))
    {
      break;
    }

    v28 = v23;
    v29 = v24;
    sub_100046184(&qword_10021CC78, &unk_1001A1710);
    if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v27))
    {
      v30 = sub_1000BBA18(v21);
      if ((v29 & 1) != (v31 & 1))
      {
        goto LABEL_24;
      }

      v28 = v30;
    }

    v2 = v48;
    if (v29)
    {
      v32 = (v48[7] + 40 * v28);
      sub_100007378(v32);
      sub_100008C84(v41, v32);
    }

    else
    {
      v48[(v28 >> 6) + 8] |= 1 << v28;
      *(v2[6] + 8 * v28) = v21;
      sub_100008C84(v41, v2[7] + 40 * v28);
      v33 = v2[2];
      v34 = __OFADD__(v33, 1);
      v35 = v33 + 1;
      if (v34)
      {
        goto LABEL_23;
      }

      v2[2] = v35;
    }

    v9 &= v9 - 1;
    sub_10000F94C(v44, &qword_10021CC70, &qword_1001A1708);
    v6 = v39;
    if (!v9)
    {
      goto LABEL_5;
    }
  }

LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_100126270()
{
  v2 = v1;
  for (result = sub_1000089E4(); ; result = )
  {
    v4 = 0;
    v5 = *(v0 + 96);
    v6 = (v5 + 64);
    v7 = 1 << *(v5 + 32);
    v8 = (v7 + 63) >> 6;
    if (!v8)
    {
      break;
    }

    while (!*v6)
    {
      ++v6;
      v4 -= 64;
      if (!--v8)
      {
        return result;
      }
    }

    v9 = __clz(__rbit64(*v6));
    if (v9 - v7 == v4)
    {
      break;
    }

    if (-v4 < 0 || (v10 = v9 - v4, v10 >= v7))
    {
      __break(1u);
LABEL_15:
      __break(1u);
      return result;
    }

    if (((*v6 >> v9) & 1) == 0)
    {
      goto LABEL_15;
    }

    v11 = (*(v5 + 48) + 16 * v10);
    v12 = *v11;
    v13 = v11[1];

    sub_100025A1C(v12, v13, v14);
    if (v2)
    {
    }

    sub_100007378(v14);
  }

  return result;
}

uint64_t sub_100126378(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[7] = 0;
  v7[8] = 0;
  sub_100046184(&qword_10021CC68, &qword_1001A1700);
  v10 = &type metadata for String;
  v7[9] = Dictionary.init(dictionaryLiteral:)();
  v7[10] = 0;
  sub_100046184(&qword_10021CC88, &qword_1001A1728);
  v880 = v7;
  v7[11] = Dictionary.init(dictionaryLiteral:)();

  v12 = sub_100125B68(v11);
  v869 = a4;

  *&v984 = v12;

  sub_10012A3D0(&v984, sub_10012B624, sub_10012A454);
  v13 = v8;
  if (v8)
  {
    goto LABEL_518;
  }

  v14 = v984;
  v15 = *(v984 + 16);
  if (v15)
  {
    *&v984 = _swiftEmptyArrayStorage;
    sub_100142E5C(v15);
    v16 = v984;
    v17 = (v14 + 40);
    do
    {
      v19 = *(v17 - 1);
      v18 = *v17;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_10000BF20();
        sub_10000AF58();
        sub_1000EC984();
        v16 = v984;
      }

      v21 = v16[2];
      v20 = v16[3];
      v10 = v21 + 1;
      if (v21 >= v20 >> 1)
      {
        sub_1000066A8(v20);
        sub_10001361C();
        sub_1000EC984();
        v16 = v984;
      }

      v16[2] = v10;
      v22 = &v16[2 * v21];
      v22[4] = v19;
      v22[5] = v18;
      v17 += 7;
      --v15;
    }

    while (v15);
  }

  else
  {

    v16 = _swiftEmptyArrayStorage;
  }

  v880[5] = v16;
  v880[12] = v869;
  v23 = *(a5 + 16);
  if (v23)
  {
    *&v984 = _swiftEmptyArrayStorage;

    sub_100142E5C(v23);
    v26 = sub_10012B638(a5);
    v27 = 0;
    v28 = a5 + 64;
    v948 = v23;
    v29 = a5;
    if (v26 < 0)
    {
      goto LABEL_483;
    }

    while (1)
    {
      if (v26 >= 1 << *(v29 + 32))
      {
        goto LABEL_483;
      }

      v30 = v26 >> 6;
      v10 = 1 << v26;
      if ((*(v28 + 8 * (v26 >> 6)) & (1 << v26)) == 0)
      {
        goto LABEL_484;
      }

      if (*(v29 + 36) != v24)
      {
LABEL_485:
        __break(1u);
LABEL_486:
        __break(1u);
LABEL_487:
        __break(1u);
LABEL_488:
        __break(1u);
LABEL_489:
        __break(1u);
        goto LABEL_490;
      }

      v965 = v25;
      v31 = v24;
      v32 = (*(v29 + 48) + 16 * v26);
      v33 = v32[1];
      v974 = *v32;
      v34 = v984;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_10000BF20();
        sub_10000AF58();
        sub_1000EC984();
        v34 = v984;
      }

      v36 = v34[2];
      v35 = v34[3];
      v29 = a5;
      v37 = v31;
      if (v36 >= v35 >> 1)
      {
        sub_1000066A8(v35);
        sub_10012B7A4();
        sub_1000EC984();
        v37 = v31;
        v29 = a5;
        v34 = v984;
      }

      v34[2] = v36 + 1;
      v38 = &v34[2 * v36];
      v38[4] = v974;
      v38[5] = v33;
      v39 = 1 << *(v29 + 32);
      if (v26 >= v39)
      {
        goto LABEL_486;
      }

      v28 = a5 + 64;
      v40 = *(a5 + 64 + 8 * v30);
      if ((v40 & v10) == 0)
      {
        goto LABEL_487;
      }

      if (*(v29 + 36) != v37)
      {
        goto LABEL_488;
      }

      v41 = v40 & (-2 << (v26 & 0x3F));
      if (v41)
      {
        v39 = __clz(__rbit64(v41)) | v26 & 0x7FFFFFFFFFFFFFC0;
        v42 = v948;
      }

      else
      {
        v43 = v30 << 6;
        v44 = v30 + 1;
        v42 = v948;
        v45 = (a5 + 72 + 8 * v30);
        while (v44 < (v39 + 63) >> 6)
        {
          v47 = *v45++;
          v46 = v47;
          v43 += 64;
          ++v44;
          if (v47)
          {
            sub_10012B72C(v26, v37, v965 & 1);
            v39 = __clz(__rbit64(v46)) + v43;
            goto LABEL_30;
          }
        }

        sub_10012B72C(v26, v37, v965 & 1);
LABEL_30:
        v29 = a5;
      }

      if (++v27 == v42)
      {
        break;
      }

      v25 = 0;
      v24 = *(v29 + 36);
      v26 = v39;
      if (v39 < 0)
      {
        goto LABEL_483;
      }
    }

    v13 = v8;
  }

  else
  {

    v34 = _swiftEmptyArrayStorage;
  }

  *&v984 = v34;

  sub_10012A3D0(&v984, sub_1000255B4, sub_1000255C8);
  v48 = v13;

  v880[6] = v984;
  v880[13] = a5;
  v929 = sub_100046184(&qword_100216690, &qword_1001A0410);
  v49 = static _DictionaryStorage.copy(original:)();
  v50 = *(a3 + 64);
  v51 = *(a3 + 32);
  sub_100004538();
  v54 = v53 & v52;
  v861 = (v55 + 63) >> 6;

  v56 = 0;
  v873 = v49;
  if (v54)
  {
LABEL_37:
    sub_10000FE58();
    goto LABEL_43;
  }

  while (1)
  {
    v59 = v56;
    v60 = v861;
    do
    {
      if (__OFADD__(v59, 1))
      {
        goto LABEL_494;
      }

      if (v59 + 1 >= v60)
      {

        v880[2] = a1;
        v880[3] = a2;
        v880[4] = v49;
        v839 = v880[7];
        v880[7] = a6;
        v880[8] = a7;
        swift_unknownObjectRelease();
        return v880;
      }

      sub_10012B858();
    }

    while (!v61);
    sub_100003C00();
    v54 = v63 & v62;
LABEL_43:
    v64 = *(a3 + 56);
    v65 = (*(a3 + 48) + 16 * (v57 | (v58 << 6)));
    v66 = *v65;
    v67 = v65[1];
    sub_1000149A8();
    v70 = *v68;
    v69 = *(v68 + 8);
    v899 = *v68;
    v881 = v54;
    v882 = v71;
    v883 = v72;
    switch(*(v68 + 16))
    {
      case 1:
        v985 = &type metadata for String;
        *&v984 = v70;
        *(&v984 + 1) = v69;

        v74 = sub_100008380();
        v76 = 1;
        goto LABEL_464;
      case 2:
        v77 = *(v70 + 16);
        v858 = v67;
        if (!v77)
        {

          v828 = sub_100005680();
          sub_10011CE44(v828, v829, v830);
          v77 = _swiftEmptyArrayStorage;
          goto LABEL_467;
        }

        v986 = _swiftEmptyArrayStorage;

        sub_10011CE44(v70, v69, 2);
        v870 = v77;
        sub_100142E74(v77);
        sub_10000BA54();
        v874 = v79;
        v80 = v70;
LABEL_47:
        if (v78 >= v80[2])
        {
          goto LABEL_510;
        }

        sub_10001AE30();
        v83 = v874 + v81 * v82;
        v84 = *v83;
        v85 = *(v83 + 8);
        v911 = *v83;
        v889 = v86;
        switch(*(v83 + 16))
        {
          case 1:
            v985 = &type metadata for String;
            *&v984 = v84;
            *(&v984 + 1) = v85;

            goto LABEL_270;
          case 2:
            v866 = *(v83 + 8);
            v49 = *(v84 + 16);
            if (!v49)
            {

              v249 = _swiftEmptyArrayStorage;
              goto LABEL_269;
            }

            v983 = _swiftEmptyArrayStorage;

            v88 = &v983;
            v904 = v49;
            sub_100142E74(v49);
            v84 = v911;
            v89 = 0;
LABEL_52:
            if (v89 >= *(v84 + 16))
            {
              goto LABEL_505;
            }

            sub_10001AE30();
            v92 = v911 + v90 * v91 + 32;
            v10 = *v92;
            v93 = *(v92 + 8);
            v942 = *v92;
            v913 = v94;
            switch(*(v92 + 16))
            {
              case 1:
                sub_10012B7D4(&type metadata for String);
                goto LABEL_148;
              case 2:
                v896 = *(v92 + 8);
                v85 = *(v10 + 16);
                if (!v85)
                {

                  v88 = _swiftEmptyArrayStorage;
                  goto LABEL_147;
                }

                sub_100142E74(v85);
                v96 = 0;
                v930 = v85;
                while (1)
                {
                  if (v96 >= *(v10 + 16))
                  {
                    goto LABEL_482;
                  }

                  v97 = v48;
                  sub_100019088(v96);
                  v70 = *v98;
                  v99 = *(v98 + 8);
                  v966 = *v98;
                  v949 = v100;
                  switch(*(v98 + 16))
                  {
                    case 1:
                      v985 = &type metadata for String;
                      *&v984 = v70;
                      *(&v984 + 1) = v99;

                      goto LABEL_89;
                    case 2:
                      v103 = *v98;
                      v70 = *(v70 + 16);
                      if (v70)
                      {

                        sub_100142E74(v70);
                        v104 = v103 + 48;
                        do
                        {
                          v105 = *(v104 - 2);
                          v106 = *(v104 - 1);
                          v13 = *v104;
                          v107 = sub_10000AC78();
                          sub_10012B7BC(v107, v108, v109);
                          v110 = sub_10000AC78();
                          sub_1001249E0(v110, v111, v112, v113);
                          v114 = sub_10000AC78();
                          sub_10011CE88(v114, v115, v116);
                          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                          {
                            sub_10000BF20();
                            v117 = sub_10000AF58();
                            sub_100142F90(v117, v118, v119);
                          }

                          sub_10002DF58();
                          if (v121)
                          {
                            sub_1000066A8(v120);
                            sub_10001361C();
                            sub_100142F90(v122, v123, v124);
                          }

                          v104 += 24;
                          _swiftEmptyArrayStorage[2] = v105;
                          sub_100007948();
                          --v70;
                        }

                        while (v70);
                        v10 = v942;
                        v103 = v966;
                      }

                      else
                      {
                      }

                      v985 = sub_100046184(&qword_100215398, &qword_1001996A0);
                      sub_100007D94(v103, v99);
                      goto LABEL_89;
                    case 3:
                      v975 = v97;
                      sub_10012B76C();
                      v125 = static _DictionaryStorage.copy(original:)();
                      v84 = v70 + 64;
                      v126 = *(v70 + 64);
                      v127 = *(v70 + 32);
                      sub_10000624C();
                      v130 = v129 & v128;
                      v918 = v99;
                      sub_10000C898(v70, v99);
                      v132 = v131 >> 6;
                      if (v130)
                      {
                        goto LABEL_69;
                      }

                      break;
                    default:
                      v101 = sub_10012B6E8();
                      sub_1000189E8(v101);
                      v102 = v70;
LABEL_89:
                      v48 = v97;
                      goto LABEL_90;
                  }

LABEL_70:
                  v134 = v99;
                  while (1)
                  {
                    v99 = v134 + 1;
                    if (__OFADD__(v134, 1))
                    {
                      __break(1u);
                      goto LABEL_474;
                    }

                    if (v99 >= v132)
                    {
                      break;
                    }

                    ++v134;
                    if (*(v84 + 8 * v99))
                    {
                      sub_100003C00();
                      v130 = v136 & v135;
                      while (1)
                      {
                        v137 = v133 | (v99 << 6);
                        v138 = *(v70 + 56);
                        v139 = (*(v70 + 48) + 16 * v137);
                        v140 = v139[1];
                        v957 = *v139;
                        v141 = v138 + 24 * v137;
                        v13 = *v141;
                        v142 = *(v141 + 8);
                        switch(*(v141 + 16))
                        {
                          case 1:
                            v985 = &type metadata for String;
                            *&v984 = v13;
                            *(&v984 + 1) = v142;

                            sub_10001361C();
                            goto LABEL_81;
                          case 2:

                            sub_10011CE44(v13, v142, 2);
                            v49 = v975;
                            v924 = sub_100125DF4(v13);
                            v147 = sub_100046184(&qword_100215398, &qword_1001996A0);
                            v148 = sub_10000CD04(v147);
                            v149 = v142;
                            v150 = 2;
                            goto LABEL_79;
                          case 3:

                            sub_10011CE44(v13, v142, 3);
                            v49 = v975;
                            v924 = sub_10012A210(v13);
                            v151 = sub_100046184(qword_100214E88, qword_100198FA0);
                            v148 = sub_10000CD04(v151);
                            v149 = v142;
                            v150 = 3;
LABEL_79:
                            sub_10011CE88(v148, v149, v150);
                            *&v984 = v924;
                            break;
                          default:
                            v143 = sub_10012B6E8();
                            sub_10000CEEC(v143);

                            v144 = v13;
                            v145 = v142;
                            v146 = 0;
LABEL_81:
                            sub_10011CE44(v144, v145, v146);
                            break;
                        }

                        sub_10012B81C();
                        sub_100006C50(v152);
                        v153 = (v125[6] + 16 * v137);
                        *v153 = v957;
                        v153[1] = v140;
                        sub_10001AC7C(v154, (v125[7] + 32 * v137));
                        v10 = v942;
                        if (v156)
                        {
                          break;
                        }

                        v125[2] = v155;
                        v70 = v966;
                        if (!v130)
                        {
                          goto LABEL_70;
                        }

LABEL_69:
                        sub_10000B118();
                      }

LABEL_481:
                      __break(1u);
LABEL_482:
                      __break(1u);
LABEL_483:
                      __break(1u);
LABEL_484:
                      __break(1u);
                      goto LABEL_485;
                    }
                  }

                  v157 = sub_100046184(qword_100214E88, qword_100198FA0);
                  v158 = sub_100007754(v157);
                  sub_1000385FC(v158, v918);
                  v48 = v975;
LABEL_90:
                  v85 = v930;
                  v88 = _swiftEmptyArrayStorage;
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    sub_1000099D0();
                    v88 = _swiftEmptyArrayStorage;
                  }

                  sub_10001BEB8();
                  if (v121)
                  {
                    v160 = sub_1000066A8(v159);
                    sub_10002510C(v160);
                    v88 = _swiftEmptyArrayStorage;
                  }

                  sub_100015BA8();
                  v96 = v949;
                  if (v949 == v930)
                  {
LABEL_147:
                    v247 = sub_100046184(&qword_100215398, &qword_1001996A0);
                    v248 = sub_100007AC8(v247);
                    sub_100007D94(v248, v896);
LABEL_148:
                    v249 = v983;
                    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                    {
                      v250 = v249[2];
                      v88 = &v983;
                      v251 = sub_10000AF58();
                      sub_100142F90(v251, v252, v253);
                      v249 = v983;
                    }

                    sub_10000FFD4();
                    if (v121)
                    {
                      v255 = sub_100006FF0(v254);
                      sub_10002510C(v255);
                      v249 = v983;
                    }

                    v249[2] = v84;
                    sub_10012B754(&v249[4 * v85]);
                    v84 = v911;
                    v89 = v913;
                    if (v913 == v904)
                    {
LABEL_269:
                      v985 = sub_100046184(&qword_100215398, &qword_1001996A0);
                      sub_10011CE88(v84, v866, 2);
                      *&v984 = v249;
LABEL_270:
                      v77 = v986;
                      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                      {
                        v427 = v77[2];
                        v428 = sub_10000AF58();
                        sub_100142F90(v428, v429, v430);
                        v77 = v986;
                      }

                      sub_10000FFD4();
                      if (v121)
                      {
                        v432 = sub_1000066A8(v431);
                        sub_10002510C(v432);
                        v77 = v986;
                      }

                      v77[2] = v84;
                      sub_10012B754(&v77[4 * v85]);
                      v78 = v889;
                      v80 = v899;
                      if (v889 == v870)
                      {
LABEL_467:
                        v985 = sub_100046184(&qword_100215398, &qword_1001996A0);
                        v831 = sub_100005680();
                        sub_10011CE88(v831, v832, v833);
                        *&v984 = v77;
                        goto LABEL_468;
                      }

                      goto LABEL_47;
                    }

                    goto LABEL_52;
                  }
                }

              case 3:
                sub_10012B810();
                v84 = static _DictionaryStorage.copy(original:)();
                v161 = *(v10 + 64);
                v887 = v10 + 64;
                v162 = *(v10 + 32);
                sub_10000451C();
                v165 = v164 & v163;
                v897 = v93;
                sub_10011CE44(v10, v93, 3);
                v166 = 0;
                v88 = ((v88 + 63) >> 6);
                v900 = v88;
                v884 = v84;
                if (v165)
                {
                  goto LABEL_97;
                }

                break;
              default:
                v95 = sub_10012B6E8();
                sub_10012B878(v95);
                goto LABEL_148;
            }

LABEL_98:
            v168 = v166;
            do
            {
              v166 = v168 + 1;
              if (__OFADD__(v168, 1))
              {
                goto LABEL_478;
              }

              if (v166 >= v88)
              {
                v245 = sub_100046184(qword_100214E88, qword_100198FA0);
                v246 = sub_100007AC8(v245);
                sub_10011CE88(v246, v897, 3);
                *&v984 = v84;
                goto LABEL_148;
              }

              ++v168;
            }

            while (!*(v887 + 8 * v166));
            sub_100003C00();
            v165 = v170 & v169;
LABEL_103:
            v171 = *(v10 + 56);
            v172 = (*(v10 + 48) + 16 * (v167 | (v166 << 6)));
            v173 = *v172;
            v70 = v172[1];
            sub_1000149A8();
            v85 = *v174;
            v49 = *(v174 + 8);
            v950 = v165;
            v958 = v70;
            v967 = *v174;
            v931 = v175;
            switch(*(v174 + 16))
            {
              case 1:
                v985 = &type metadata for String;
                *&v984 = v85;
                *(&v984 + 1) = v49;

                sub_10012B7B0();
                goto LABEL_137;
              case 2:
                v180 = *(v85 + 16);
                if (v180)
                {

                  v893 = v49;
                  sub_10001267C();
                  sub_10011CE44(v181, v182, v183);
                  sub_100142E74(v180);
                  v184 = (v85 + 48);
                  do
                  {
                    v185 = *(v184 - 2);
                    v186 = *(v184 - 1);
                    v187 = *v184;
                    v184 += 24;
                    switch(v187)
                    {
                      case 1:
                        v985 = &type metadata for String;
                        *&v984 = v185;
                        *(&v984 + 1) = v186;

                        break;
                      case 2:

                        v49 = v48;
                        sub_100125DF4(v189);
                        sub_10012B804();
                        v190 = sub_100046184(&qword_100215398, &qword_1001996A0);
                        v191 = sub_10001BD6C(v190);
                        v193 = 2;
                        goto LABEL_111;
                      case 3:

                        v49 = v48;
                        sub_10012A210(v194);
                        sub_10012B804();
                        v195 = sub_100046184(qword_100214E88, qword_100198FA0);
                        v191 = sub_10001BD6C(v195);
                        v193 = 3;
LABEL_111:
                        sub_10011CE88(v191, v192, v193);
                        *&v984 = v13;
                        break;
                      default:
                        v985 = sub_10012B6E8();
                        *&v984 = v185;
                        v188 = v185;
                        break;
                    }

                    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                    {
                      sub_1000099D0();
                    }

                    v197 = _swiftEmptyArrayStorage[2];
                    v196 = _swiftEmptyArrayStorage[3];
                    if (v197 >= v196 >> 1)
                    {
                      sub_1000066A8(v196);
                      sub_10012B7A4();
                      sub_100142F90(v198, v199, v200);
                    }

                    _swiftEmptyArrayStorage[2] = v197 + 1;
                    sub_10012B754(&_swiftEmptyArrayStorage[4 * v197]);
                    --v180;
                  }

                  while (v180);
                  v84 = v884;
                  v165 = v950;
                  v70 = v958;
                  v85 = v893;
                  v13 = v967;
                }

                else
                {
                  v70 = v958;

                  sub_10001267C();
                  v13 = v85;
                  v85 = v49;
                  sub_10011CE44(v235, v236, v237);
                }

                v238 = sub_100046184(&qword_100215398, &qword_1001996A0);
                v239 = sub_10000CD04(v238);
                sub_100007D94(v239, v85);
                v88 = v900;
                goto LABEL_141;
              case 3:
                v976 = v48;
                v201 = *(v174 + 8);
                v13 = static _DictionaryStorage.copy(original:)();
                v203 = v85 + 64;
                v202 = *(v85 + 64);
                v204 = *(v85 + 32);
                sub_10000451C();
                v49 = v85;
                i = v206 & v205;

                v894 = v201;
                sub_10011CE44(v49, v201, 3);
                v208 = 0;
                v925 = v13;
                if (i)
                {
                  goto LABEL_120;
                }

                break;
              default:
                v13 = *v174;
                v85 = *(v174 + 8);
                v176 = sub_10012B6E8();
                sub_10000CEEC(v176);

                v177 = v13;
                v178 = v49;
                v179 = 0;
LABEL_137:
                sub_10011CE44(v177, v178, v179);
                goto LABEL_141;
            }

LABEL_121:
            v210 = v208;
            v88 = v900;
            v85 = v967;
            do
            {
              v208 = v210 + 1;
              if (__OFADD__(v210, 1))
              {
                goto LABEL_476;
              }

              if (v208 >= ((v929 + 63) >> 6))
              {
                v985 = sub_100046184(qword_100214E88, qword_100198FA0);
                sub_10002D45C(v967, v894);
                v48 = v976;
                v10 = v942;
                v84 = v884;
LABEL_141:
                sub_10000863C();
                sub_100006C50(v240);
                v242 = (*(v84 + 48) + 16 * v241);
                *v242 = v931;
                v242[1] = v70;
                sub_100028734(&v984, (*(v84 + 56) + 32 * v241));
                v243 = *(v84 + 16);
                v156 = __OFADD__(v243, 1);
                v244 = v243 + 1;
                if (v156)
                {
                  goto LABEL_503;
                }

                *(v84 + 16) = v244;
                if (!v165)
                {
                  goto LABEL_98;
                }

LABEL_97:
                sub_10000B118();
                goto LABEL_103;
              }

              ++v210;
            }

            while (!*(v203 + 8 * v208));
            sub_100003C00();
            for (i = v212 & v211; ; i &= i - 1)
            {
              v213 = v209 | (v208 << 6);
              v214 = v967[7];
              v215 = (v967[6] + 16 * v213);
              v216 = v215[1];
              v939 = *v215;
              sub_10012B778();
              v218 = *v217;
              v219 = v217[1];
              switch(*(v217 + 16))
              {
                case 1:
                  v985 = &type metadata for String;
                  *&v984 = v218;
                  *(&v984 + 1) = v219;

                  v220 = sub_10000EC48();
                  v222 = 1;
                  goto LABEL_132;
                case 2:

                  v223 = sub_10000EC48();
                  v225 = sub_10012B738(v223, v224, 2);
                  v876 = sub_100125DF4(v225);
                  v976 = v49;
                  v985 = sub_100046184(&qword_100215398, &qword_1001996A0);
                  v226 = sub_10000EC48();
                  v228 = 2;
                  goto LABEL_130;
                case 3:

                  v229 = sub_10000EC48();
                  v231 = sub_10012B738(v229, v230, 3);
                  v876 = sub_10012A210(v231);
                  v976 = v49;
                  v985 = sub_100046184(qword_100214E88, qword_100198FA0);
                  v226 = sub_10000EC48();
                  v228 = 3;
LABEL_130:
                  sub_10011CE88(v226, v227, v228);
                  *&v984 = v876;
                  break;
                default:
                  v985 = sub_10012B6E8();
                  *&v984 = v218;

                  v220 = sub_10000EC48();
                  v222 = 0;
LABEL_132:
                  sub_10011CE44(v220, v221, v222);
                  break;
              }

              sub_10000F660();
              v13 = v925;
              sub_100006C50(v232);
              v233 = (*(v925 + 48) + 16 * v213);
              *v233 = v939;
              v233[1] = v216;
              sub_10000E238();
              v165 = v950;
              if (v156)
              {
                break;
              }

              *(v925 + 16) = v234;
              v70 = v958;
              if (!i)
              {
                goto LABEL_121;
              }

LABEL_120:
              v209 = __clz(__rbit64(i));
            }

LABEL_501:
            __break(1u);
LABEL_502:
            __break(1u);
LABEL_503:
            __break(1u);
LABEL_504:
            __break(1u);
LABEL_505:
            __break(1u);
LABEL_506:
            __break(1u);
LABEL_507:
            __break(1u);
LABEL_508:
            __break(1u);
LABEL_509:
            __break(1u);
LABEL_510:
            __break(1u);
LABEL_511:
            __break(1u);
LABEL_512:
            __break(1u);
LABEL_513:
            __break(1u);
LABEL_514:
            __break(1u);
LABEL_515:
            __break(1u);
LABEL_516:
            __break(1u);
LABEL_517:
            __break(1u);
LABEL_518:

            __break(1u);
            return result;
          case 3:
            v256 = static _DictionaryStorage.copy(original:)();
            v257 = *(v84 + 64);
            v258 = *(v84 + 32);
            sub_10000624C();
            v926 = v260 & v259;
            v867 = v85;
            sub_10000BFD8(v84);
            sub_100012F74();
            v901 = v256;
            v888 = v261;
LABEL_155:
            if (v926)
            {
              sub_100006BD4();
            }

            else
            {
              v263 = v262;
              do
              {
                if (__OFADD__(v263, 1))
                {
                  goto LABEL_493;
                }

                if (v263 + 1 >= v261)
                {
                  v985 = sub_100046184(qword_100214E88, qword_100198FA0);
                  sub_1000385FC(v911, v867);
                  goto LABEL_270;
                }

                sub_10012B858();
              }

              while (!v264);
              sub_100003C00();
            }

            sub_10000FF48();
            sub_10012B830();
            v932 = v70;
            v905 = v265;
            v926 = v266;
            v909 = v267;
            switch(v268)
            {
              case 1:
                v985 = &type metadata for String;
                *&v984 = v70;
                *(&v984 + 1) = v85;

                v270 = sub_100008380();
                v272 = 1;
                goto LABEL_259;
              case 2:
                v84 = *(v70 + 16);
                v885 = v77;
                if (v84)
                {
                  v983 = _swiftEmptyArrayStorage;

                  v862 = v85;
                  sub_10011CE44(v70, v85, 2);
                  sub_100142E74(v84);
                  sub_10000BA54();
                  v940 = v274;
                  do
                  {
                    if (v273 >= *(v70 + 16))
                    {
                      goto LABEL_500;
                    }

                    sub_10001AE30();
                    v277 = v940 + v275 * v276;
                    v10 = *v277;
                    v278 = *(v277 + 8);
                    v968 = *v277;
                    v951 = v279;
                    switch(*(v277 + 16))
                    {
                      case 1:
                        sub_10012B7D4(&type metadata for String);
                        goto LABEL_204;
                      case 2:
                        v281 = *(v10 + 16);
                        if (v281)
                        {
                          v13 = *(v277 + 8);

                          sub_100142E74(v281);
                          v282 = (v10 + 48);
                          do
                          {
                            v283 = *(v282 - 2);
                            v284 = *(v282 - 1);
                            v285 = *v282;
                            v282 += 24;
                            switch(v285)
                            {
                              case 1:
                                v985 = &type metadata for String;
                                *&v984 = v283;
                                *(&v984 + 1) = v284;

                                break;
                              case 2:

                                v49 = v48;
                                v288 = sub_100125DF4(v287);
                                v985 = sub_100046184(&qword_100215398, &qword_1001996A0);
                                v289 = v283;
                                v290 = v284;
                                v291 = 2;
                                goto LABEL_175;
                              case 3:

                                v49 = v48;
                                v288 = sub_10012A210(v292);
                                v985 = sub_100046184(qword_100214E88, qword_100198FA0);
                                v289 = v283;
                                v290 = v284;
                                v291 = 3;
LABEL_175:
                                sub_10011CE88(v289, v290, v291);
                                *&v984 = v288;
                                break;
                              default:
                                v985 = sub_10012B6E8();
                                *&v984 = v283;
                                v286 = v283;
                                break;
                            }

                            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                            {
                              sub_1000099D0();
                            }

                            sub_10002DF58();
                            if (v121)
                            {
                              sub_1000066A8(v293);
                              sub_10001361C();
                              sub_100142F90(v294, v295, v296);
                            }

                            _swiftEmptyArrayStorage[2] = v284;
                            sub_100007948();
                            --v281;
                          }

                          while (v281);
                          v10 = v968;
                          v278 = v13;
                        }

                        else
                        {
                        }

                        v330 = sub_100046184(&qword_100215398, &qword_1001996A0);
                        v331 = sub_100007AC8(v330);
                        sub_100007D94(v331, v278);
                        goto LABEL_204;
                      case 3:
                        v977 = v48;
                        sub_10012B810();
                        v297 = static _DictionaryStorage.copy(original:)();
                        sub_100023FA0();
                        sub_100003CAC();
                        v300 = v299 & v298;
                        v914 = v301;
                        sub_10000C898(v10, v301);
                        v303 = v302 >> 6;
                        if (v300)
                        {
                          goto LABEL_184;
                        }

                        break;
                      default:
                        v280 = sub_10012B6E8();
                        sub_10012B878(v280);
                        goto LABEL_204;
                    }

LABEL_185:
                    v305 = v48;
                    v70 = v932;
                    while (1)
                    {
                      v48 = v305 + 1;
                      if (__OFADD__(v305, 1))
                      {
                        goto LABEL_475;
                      }

                      if (v48 >= v303)
                      {
                        break;
                      }

                      ++v305;
                      if (*(v84 + 8 * v48))
                      {
                        sub_100003C00();
                        v300 = v307 & v306;
                        while (1)
                        {
                          v13 = v304 | (v48 << 6);
                          v308 = (*(v10 + 48) + 16 * v13);
                          v309 = v308[1];
                          v959 = *v308;
                          v310 = *(v10 + 56) + 24 * v13;
                          v312 = *v310;
                          v311 = *(v310 + 8);
                          switch(*(v310 + 16))
                          {
                            case 1:
                              v985 = &type metadata for String;
                              *&v984 = v312;
                              *(&v984 + 1) = v311;

                              v313 = sub_100014CB0();
                              v315 = 1;
                              goto LABEL_196;
                            case 2:

                              v316 = sub_100014CB0();
                              v318 = sub_10012B738(v316, v317, 2);
                              v919 = sub_100125DF4(v318);
                              v977 = v49;
                              v985 = sub_100046184(&qword_100215398, &qword_1001996A0);
                              v319 = sub_100014CB0();
                              v321 = 2;
                              goto LABEL_194;
                            case 3:

                              v322 = sub_100014CB0();
                              v324 = sub_10012B738(v322, v323, 3);
                              v919 = sub_10012A210(v324);
                              v977 = v49;
                              v985 = sub_100046184(qword_100214E88, qword_100198FA0);
                              v319 = sub_100014CB0();
                              v321 = 3;
LABEL_194:
                              sub_10011CE88(v319, v320, v321);
                              *&v984 = v919;
                              break;
                            default:
                              v985 = sub_10012B6E8();
                              *&v984 = v312;

                              v313 = sub_100014CB0();
                              v315 = 0;
LABEL_196:
                              sub_10011CE44(v313, v314, v315);
                              break;
                          }

                          sub_100006C50((v13 >> 3) & 0x1FFFFFFFFFFFFFF8);
                          v325 = (v297[6] + 16 * v13);
                          *v325 = v959;
                          v325[1] = v309;
                          sub_10001AC7C(v326, (v297[7] + 32 * v13));
                          v10 = v968;
                          if (v156)
                          {
                            break;
                          }

                          v297[2] = v327;
                          if (!v300)
                          {
                            goto LABEL_185;
                          }

LABEL_184:
                          sub_10012B7F0();
                        }

LABEL_499:
                        __break(1u);
LABEL_500:
                        __break(1u);
                        goto LABEL_501;
                      }
                    }

                    v328 = sub_100046184(qword_100214E88, qword_100198FA0);
                    v329 = sub_100007AC8(v328);
                    sub_1000385FC(v329, v914);
                    v48 = v977;
LABEL_204:
                    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                    {
                      sub_100008B14();
                    }

                    sub_10001BEB8();
                    if (v121)
                    {
                      v333 = sub_100006FF0(v332);
                      sub_10002510C(v333);
                    }

                    sub_100015BA8();
                    v273 = v951;
                  }

                  while (v951 != v84);
                  v85 = v862;
                }

                else
                {

                  v417 = sub_100005680();
                  sub_10011CE44(v417, v418, v419);
                }

                v985 = sub_100046184(&qword_100215398, &qword_1001996A0);
                v420 = sub_100008380();
                sub_100007D94(v420, v421);
                v256 = v901;
                goto LABEL_263;
              case 3:
                v84 = v77;
                sub_10012B76C();
                static _DictionaryStorage.copy(original:)();
                sub_10000BBDC();
                v859 = v334;
                v335 = *(v70 + 32);
                sub_10000624C();
                v338 = v337 & v336;
                v885 = v77;

                v863 = v85;
                sub_10000BFD8(v70);
                sub_10012B864();
                v848 = v10;
                v852 = v77;
                if (v338)
                {
                  goto LABEL_211;
                }

                break;
              default:
                v269 = sub_10012B6E8();
                sub_1000189E8(v269);

                v270 = sub_100008380();
                v272 = 0;
LABEL_259:
                sub_10011CE44(v270, v271, v272);
                goto LABEL_264;
            }

LABEL_212:
            v340 = v70;
            do
            {
              v70 = v340 + 1;
              if (__OFADD__(v340, 1))
              {
                goto LABEL_491;
              }

              if (v70 >= v77)
              {
                v985 = sub_100046184(qword_100214E88, qword_100198FA0);
                sub_10011CE88(v932, v863, 3);
                *&v984 = v10;
LABEL_263:
                v77 = v885;
LABEL_264:
                sub_10000863C();
                sub_100006C50(v422);
                v424 = (v256[6] + 16 * v423);
                *v424 = v909;
                v424[1] = v77;
                sub_10001AC7C(v425, (v256[7] + 32 * v423));
                if (!v156)
                {
                  v256[2] = v426;
                  v261 = v888;
                  v262 = v905;
                  goto LABEL_155;
                }

                goto LABEL_512;
              }

              ++v340;
            }

            while (!*(v859 + 8 * v70));
            sub_100003C00();
            v338 = v342 & v341;
LABEL_217:
            v343 = v932[7];
            v344 = (v932[6] + 16 * (v339 | (v70 << 6)));
            v345 = *v344;
            v85 = v344[1];
            sub_1000149A8();
            v84 = *v346;
            v49 = *(v346 + 8);
            v952 = v338;
            v960 = v85;
            v969 = *v346;
            v936 = v347;
            switch(*(v346 + 16))
            {
              case 1:
                v985 = &type metadata for String;
                *&v984 = v84;
                *(&v984 + 1) = v49;

                sub_10012B7B0();
                goto LABEL_251;
              case 2:
                v352 = *(v84 + 16);
                if (v352)
                {
                  v983 = _swiftEmptyArrayStorage;

                  v877 = v49;
                  sub_10001267C();
                  sub_10011CE44(v353, v354, v355);
                  sub_100142E74(v352);
                  v356 = (v84 + 48);
                  do
                  {
                    v357 = *(v356 - 2);
                    v358 = *(v356 - 1);
                    v359 = *v356;
                    v356 += 24;
                    switch(v359)
                    {
                      case 1:
                        v985 = &type metadata for String;
                        *&v984 = v357;
                        *(&v984 + 1) = v358;

                        break;
                      case 2:

                        v49 = v48;
                        sub_100125DF4(v361);
                        sub_10012B804();
                        v362 = sub_100046184(&qword_100215398, &qword_1001996A0);
                        v363 = sub_10001BD6C(v362);
                        v365 = 2;
                        goto LABEL_225;
                      case 3:

                        v49 = v48;
                        sub_10012A210(v366);
                        sub_10012B804();
                        v367 = sub_100046184(qword_100214E88, qword_100198FA0);
                        v363 = sub_10001BD6C(v367);
                        v365 = 3;
LABEL_225:
                        sub_10011CE88(v363, v364, v365);
                        *&v984 = v13;
                        break;
                      default:
                        v985 = sub_10012B6E8();
                        *&v984 = v357;
                        v360 = v357;
                        break;
                    }

                    v368 = v983;
                    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                    {
                      sub_100008B14();
                      v368 = v983;
                    }

                    sub_10012B794();
                    if (v121)
                    {
                      sub_100006FF0(v369);
                      sub_10012B7A4();
                      sub_100142F90(v370, v371, v372);
                      v368 = v983;
                    }

                    v368[2] = v358;
                    sub_100007948();
                    --v352;
                  }

                  while (v352);
                  v77 = v852;
                  v338 = v952;
                  v85 = v960;
                  v84 = v877;
                  v13 = v969;
                }

                else
                {
                  v85 = v960;

                  sub_10001267C();
                  v13 = v84;
                  v84 = v49;
                  sub_10011CE44(v408, v409, v410);
                }

                v411 = sub_100046184(&qword_100215398, &qword_1001996A0);
                v412 = sub_10000CD04(v411);
                sub_100007D94(v412, v84);
                v256 = v901;
                goto LABEL_255;
              case 3:
                v978 = v48;
                v373 = *(v346 + 8);
                v13 = static _DictionaryStorage.copy(original:)();
                v375 = v84 + 64;
                v374 = *(v84 + 64);
                v376 = *(v84 + 32);
                sub_10000624C();
                v49 = v84;
                j = v378 & v377;

                v878 = v373;
                sub_10000C898(v49, v373);
                v381 = v380 >> 6;
                v920 = v13;
                if (j)
                {
                  goto LABEL_234;
                }

                break;
              default:
                v13 = *v346;
                v84 = *(v346 + 8);
                v348 = sub_10012B6E8();
                sub_10000CEEC(v348);

                v349 = v13;
                v350 = v49;
                v351 = 0;
LABEL_251:
                sub_10011CE44(v349, v350, v351);
                goto LABEL_255;
            }

            while (1)
            {
              v383 = v373;
              v256 = v901;
              v84 = v969;
              do
              {
                v373 = v383 + 1;
                if (__OFADD__(v383, 1))
                {
                  goto LABEL_489;
                }

                if (v373 >= v381)
                {
                  v985 = sub_100046184(qword_100214E88, qword_100198FA0);
                  sub_10002D45C(v969, v878);
                  v48 = v978;
                  v10 = v848;
                  v77 = v852;
LABEL_255:
                  sub_10000863C();
                  sub_100006C50(v413);
                  v415 = (*(v10 + 48) + 16 * v414);
                  *v415 = v936;
                  v415[1] = v85;
                  sub_10001BC4C();
                  if (v156)
                  {
                    goto LABEL_511;
                  }

                  *(v10 + 16) = v416;
                  if (!v338)
                  {
                    goto LABEL_212;
                  }

LABEL_211:
                  sub_10000B118();
                  goto LABEL_217;
                }

                ++v383;
              }

              while (!*(v375 + 8 * v373));
              sub_100003C00();
              for (j = v385 & v384; ; j &= j - 1)
              {
                v386 = v969[7];
                v387 = (v969[6] + 16 * (v382 | (v373 << 6)));
                v388 = v387[1];
                v943 = *v387;
                sub_10012B778();
                v390 = *v389;
                v391 = v389[1];
                switch(*(v389 + 16))
                {
                  case 1:
                    v985 = &type metadata for String;
                    *&v984 = v390;
                    *(&v984 + 1) = v391;

                    v392 = sub_10000EC48();
                    v394 = 1;
                    goto LABEL_246;
                  case 2:

                    v395 = sub_10000EC48();
                    v397 = sub_10012B738(v395, v396, 2);
                    v850 = sub_100125DF4(v397);
                    v978 = v49;
                    v985 = sub_100046184(&qword_100215398, &qword_1001996A0);
                    v398 = sub_10000EC48();
                    v400 = 2;
                    goto LABEL_244;
                  case 3:

                    v401 = sub_10000EC48();
                    v403 = sub_10012B738(v401, v402, 3);
                    v850 = sub_10012A210(v403);
                    v978 = v49;
                    v985 = sub_100046184(qword_100214E88, qword_100198FA0);
                    v398 = sub_10000EC48();
                    v400 = 3;
LABEL_244:
                    sub_10011CE88(v398, v399, v400);
                    *&v984 = v850;
                    break;
                  default:
                    v985 = sub_10012B6E8();
                    *&v984 = v390;

                    v392 = sub_10000EC48();
                    v394 = 0;
LABEL_246:
                    sub_10011CE44(v392, v393, v394);
                    break;
                }

                sub_10000F660();
                v13 = v920;
                sub_100006C50(v404);
                sub_10000FEB4();
                *v405 = v406;
                v405[1] = v388;
                sub_10000E238();
                v338 = v952;
                if (v156)
                {
                  goto LABEL_509;
                }

                *(v920 + 16) = v407;
                v85 = v960;
                if (!j)
                {
                  break;
                }

LABEL_234:
                v382 = __clz(__rbit64(j));
              }
            }

          default:
            v985 = sub_10012B6E8();
            *&v984 = v84;
            v87 = v84;
            goto LABEL_270;
        }

      case 3:
        v433 = v67;
        sub_10012B76C();
        v434 = static _DictionaryStorage.copy(original:)();
        v435 = *(v70 + 64);
        v436 = *(v70 + 32);
        sub_10000624C();
        v895 = v438 & v437;
        v858 = v433;

        v851 = v69;
        sub_10000BFD8(v70);
        sub_100012F74();
        v860 = v439;
        v868 = v434;
LABEL_277:
        if (v895)
        {
          sub_100006BD4();
LABEL_284:
          sub_10000FF48();
          v445 = v443 + 24 * v444;
          v447 = *v445;
          v446 = *(v445 + 8);
          v912 = *v445;
          v879 = v448;
          v895 = v449;
          v886 = v450;
          switch(*(v445 + 16))
          {
            case 1:
              v985 = &type metadata for String;
              *&v984 = v447;
              *(&v984 + 1) = v446;

              sub_10012B7B0();
              goto LABEL_456;
            case 2:
              v455 = *(v447 + 16);
              v853 = v54;
              if (v455)
              {
                v986 = _swiftEmptyArrayStorage;

                v844 = v446;
                sub_10001267C();
                sub_10011CE44(v456, v457, v458);
                v459 = &v986;
                v898 = v455;
                sub_100142E74(v455);
                sub_10000BA54();
                v902 = v461;
                v462 = v447;
                while (2)
                {
                  if (v460 >= v462[2])
                  {
                    goto LABEL_508;
                  }

                  sub_10001AE30();
                  v465 = (v902 + v463 * v464);
                  v467 = *v465;
                  v466 = v465[1];
                  v921 = v468;
                  v927 = *v465;
                  switch(*(v465 + 16))
                  {
                    case 1:
                      v985 = &type metadata for String;
                      *&v984 = v467;
                      *(&v984 + 1) = v466;

                      goto LABEL_363;
                    case 2:
                      v890 = v465[1];
                      v455 = *(v467 + 16);
                      if (!v455)
                      {

                        v459 = _swiftEmptyArrayStorage;
                        goto LABEL_362;
                      }

                      v983 = _swiftEmptyArrayStorage;

                      v459 = &v983;
                      sub_100142E74(v455);
                      sub_10000BA54();
                      v915 = v455;
                      do
                      {
                        if (v471 >= *(v467 + 16))
                        {
                          goto LABEL_492;
                        }

                        sub_100019088(v471);
                        v10 = *v472;
                        v473 = *(v472 + 8);
                        v970 = *v472;
                        v953 = v474;
                        switch(*(v472 + 16))
                        {
                          case 1:
                            v985 = &type metadata for String;
                            *&v984 = v10;
                            *(&v984 + 1) = v473;

                            goto LABEL_318;
                          case 2:
                            v933 = *(v472 + 8);
                            v476 = *v472;
                            v10 = *(v10 + 16);
                            if (v10)
                            {
                              v477 = v48;

                              sub_100142E74(v10);
                              v478 = v476 + 48;
                              do
                              {
                                v479 = *(v478 - 2);
                                v480 = *(v478 - 1);
                                v13 = *v478;
                                v481 = sub_10000DF20();
                                sub_10012B7BC(v481, v482, v483);
                                v484 = sub_10000DF20();
                                sub_1001249E0(v484, v485, v486, v487);
                                v488 = sub_10000DF20();
                                sub_10011CE88(v488, v489, v490);
                                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                                {
                                  sub_1000099D0();
                                }

                                v462 = _swiftEmptyArrayStorage[2];
                                v491 = _swiftEmptyArrayStorage[3];
                                if (v462 >= v491 >> 1)
                                {
                                  v492 = sub_1000066A8(v491);
                                  sub_100142F90(v492, v462 + 1, 1);
                                }

                                v478 += 24;
                                _swiftEmptyArrayStorage[2] = v462 + 1;
                                sub_100007948();
                                --v10;
                              }

                              while (v10);
                              v48 = v477;
                              v455 = v915;
                              v476 = v970;
                            }

                            else
                            {
                            }

                            v985 = sub_100046184(&qword_100215398, &qword_1001996A0);
                            sub_100007D94(v476, v933);
                            goto LABEL_318;
                          case 3:
                            sub_10012B810();
                            v494 = v493;
                            v495 = static _DictionaryStorage.copy(original:)();
                            v462 = (v10 + 64);
                            v496 = *(v10 + 64);
                            v497 = *(v10 + 32);
                            sub_10000451C();
                            v500 = v499 & v498;
                            v934 = v494;
                            sub_10000BFD8(v10);
                            v501 = 0;
                            v502 = (v459 + 63) >> 6;
                            v944 = v495;
                            if (v500)
                            {
                              goto LABEL_305;
                            }

                            break;
                          default:
                            v475 = sub_10012B6E8();
                            sub_10012B878(v475);
                            goto LABEL_318;
                        }

LABEL_306:
                        v504 = v501;
                        while (1)
                        {
                          v501 = v504 + 1;
                          if (__OFADD__(v504, 1))
                          {
LABEL_474:
                            __break(1u);
LABEL_475:
                            __break(1u);
LABEL_476:
                            __break(1u);
LABEL_477:
                            __break(1u);
LABEL_478:
                            __break(1u);
LABEL_479:
                            __break(1u);
LABEL_480:
                            __break(1u);
                            goto LABEL_481;
                          }

                          if (v501 >= v502)
                          {
                            break;
                          }

                          ++v504;
                          if (v462[v501])
                          {
                            v979 = v48;
                            sub_100003C00();
                            v500 = v506 & v505;
                            while (1)
                            {
                              v507 = v503 | (v501 << 6);
                              v508 = *(v10 + 56);
                              v509 = (*(v10 + 48) + 16 * v507);
                              v510 = v509[1];
                              v961 = *v509;
                              sub_10012B778();
                              v512 = *v511;
                              v513 = v511[1];
                              v13 = *(v511 + 16);

                              v514 = sub_10000DF20();
                              sub_10012B7BC(v514, v515, v516);
                              v517 = sub_10000DF20();
                              sub_1001249E0(v517, v518, v519, v520);
                              v521 = sub_10000DF20();
                              sub_10011CE88(v521, v522, v523);
                              sub_10000F660();
                              v495 = v944;
                              sub_100006C50(v524);
                              v525 = (v944[6] + 16 * v507);
                              *v525 = v961;
                              v525[1] = v510;
                              sub_100028734(&v984, (v944[7] + 32 * v507));
                              v526 = v944[2];
                              v156 = __OFADD__(v526, 1);
                              v527 = v526 + 1;
                              if (v156)
                              {
                                break;
                              }

                              v944[2] = v527;
                              v10 = v970;
                              v48 = v979;
                              if (!v500)
                              {
                                goto LABEL_306;
                              }

LABEL_305:
                              v979 = v48;
                              sub_10000FE58();
                            }

LABEL_490:
                            __break(1u);
LABEL_491:
                            __break(1u);
LABEL_492:
                            __break(1u);
LABEL_493:
                            __break(1u);
LABEL_494:
                            __break(1u);
LABEL_495:
                            __break(1u);
LABEL_496:
                            __break(1u);
LABEL_497:
                            __break(1u);
LABEL_498:
                            __break(1u);
                            goto LABEL_499;
                          }
                        }

                        v528 = sub_100046184(qword_100214E88, qword_100198FA0);
                        v529 = sub_100007AC8(v528);
                        sub_10011CE88(v529, v934, 3);
                        *&v984 = v495;
                        v467 = v927;
                        v455 = v915;
LABEL_318:
                        v459 = v983;
                        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                        {
                          sub_100008B14();
                          v459 = v983;
                        }

                        sub_10001BEB8();
                        if (v121)
                        {
                          v531 = sub_100006FF0(v530);
                          sub_10002510C(v531);
                          v459 = v983;
                        }

                        sub_100015BA8();
                        v471 = v953;
                      }

                      while (v953 != v455);
LABEL_362:
                      v623 = sub_100046184(&qword_100215398, &qword_1001996A0);
                      v624 = sub_100007754(v623);
                      sub_100007D94(v624, v890);
LABEL_363:
                      v625 = v986;
                      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                      {
                        v626 = v625[2];
                        v459 = &v986;
                        v627 = sub_10000AF58();
                        sub_100142F90(v627, v628, v629);
                        v625 = v986;
                      }

                      sub_10000FFD4();
                      if (v121)
                      {
                        v631 = sub_1000066A8(v630);
                        v459 = &v986;
                        sub_10002510C(v631);
                        v625 = v986;
                      }

                      v625[2] = v462;
                      sub_10012B754(&v625[4 * v455]);
                      v460 = v921;
                      v462 = v912;
                      if (v921 == v898)
                      {
                        v820 = v844;
                        goto LABEL_459;
                      }

                      continue;
                    case 3:
                      sub_10012B76C();
                      v10 = static _DictionaryStorage.copy(original:)();
                      v462 = (v467 + 64);
                      v532 = *(v467 + 64);
                      v533 = *(v467 + 32);
                      sub_10000451C();
                      v536 = (v535 & v534);
                      v891 = v466;
                      sub_10011CE44(v467, v466, 3);
                      v537 = 0;
                      v538 = v459 + 63;
                      v459 = v536;
                      v455 = v538 >> 6;
                      v864 = v10;
                      v875 = (v467 + 64);
                      v871 = v538 >> 6;
                      if (v459)
                      {
                        goto LABEL_325;
                      }

LABEL_326:
                      v540 = v537;
                      do
                      {
                        v537 = v540 + 1;
                        if (__OFADD__(v540, 1))
                        {
                          goto LABEL_480;
                        }

                        if (v537 >= v455)
                        {
                          v621 = sub_100046184(qword_100214E88, qword_100198FA0);
                          v622 = sub_100007754(v621);
                          sub_10011CE88(v622, v891, 3);
                          *&v984 = v10;
                          goto LABEL_363;
                        }

                        ++v540;
                      }

                      while (!v462[v537]);
                      sub_100003C00();
                      v459 = (v542 & v541);
                      break;
                    default:
                      v469 = sub_10012B6E8();
                      sub_1000189E8(v469);
                      v470 = v467;
                      goto LABEL_363;
                  }

                  break;
                }

LABEL_331:
                v543 = *(v467 + 56);
                v544 = (*(v467 + 48) + 16 * (v539 | (v537 << 6)));
                v545 = *v544;
                v546 = v544[1];
                sub_1000149A8();
                v548 = *v547;
                v549 = *(v547 + 8);
                v954 = v546;
                v962 = *v547;
                v937 = v550;
                switch(*(v547 + 16))
                {
                  case 1:
                    v985 = &type metadata for String;
                    *&v984 = v548;
                    *(&v984 + 1) = v549;
                    v13 = v48;

                    sub_10012B7B0();
                    goto LABEL_352;
                  case 2:
                    v906 = v459;
                    v555 = v48;
                    v556 = v548[2];
                    v13 = *v547;
                    if (v556)
                    {
                      v983 = _swiftEmptyArrayStorage;

                      sub_10001267C();
                      sub_10011CE44(v557, v558, v559);
                      sub_100142E74(v556);
                      v560 = v983;
                      v561 = (v13 + 48);
                      do
                      {
                        v562 = *(v561 - 2);
                        v563 = *(v561 - 1);
                        v564 = *v561;
                        v565 = sub_100005AA4();
                        sub_10012B7BC(v565, v566, v567);
                        v568 = sub_100005AA4();
                        sub_1001249E0(v568, v569, v570, v571);
                        v572 = sub_100005AA4();
                        sub_10011CE88(v572, v573, v574);
                        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                        {
                          sub_100008B14();
                          v560 = v983;
                        }

                        sub_10012B794();
                        if (v121)
                        {
                          sub_100006FF0(v575);
                          sub_10012B7A4();
                          sub_100142F90(v576, v577, v578);
                          v560 = v983;
                        }

                        v561 += 24;
                        v560[2] = v562;
                        sub_100007948();
                        --v556;
                      }

                      while (v556);
                      v462 = v875;
                      v455 = v871;
                      v546 = v954;
                      v13 = v962;
                      v611 = v549;
                    }

                    else
                    {

                      sub_10001267C();
                      v611 = v549;
                      sub_10011CE44(v612, v613, v614);
                    }

                    v615 = sub_100046184(&qword_100215398, &qword_1001996A0);
                    v616 = sub_10000CD04(v615);
                    sub_100007D94(v616, v611);
                    v48 = v555;
                    v467 = v927;
                    v459 = v906;
                    goto LABEL_356;
                  case 3:
                    v907 = v459;
                    v579 = *v547;
                    v13 = static _DictionaryStorage.copy(original:)();
                    v580 = *(v579 + 64);
                    v581 = *(v579 + 32);
                    sub_10000451C();
                    v971 = v583 & v582;

                    sub_10011CE44(v579, v549, 3);
                    v584 = 0;
                    v916 = v13;
                    break;
                  default:
                    v13 = v48;
                    v551 = *v547;
                    v985 = sub_10012B6E8();
                    *&v984 = v551;

                    v552 = v551;
                    v48 = v13;
                    v553 = v549;
                    v554 = 0;
LABEL_352:
                    sub_10011CE44(v552, v553, v554);
                    goto LABEL_356;
                }

                while (1)
                {
                  if (v971)
                  {
                    sub_100006BD4();
                    v971 = v586;
                    v980 = v48;
                    goto LABEL_349;
                  }

                  v587 = v584;
                  v459 = v907;
                  do
                  {
                    v584 = v587 + 1;
                    if (__OFADD__(v587, 1))
                    {
                      goto LABEL_479;
                    }

                    if (v584 >= ((v929 + 63) >> 6))
                    {
                      v985 = sub_100046184(qword_100214E88, qword_100198FA0);
                      sub_10002D45C(v962, v549);
                      v467 = v927;
                      v10 = v864;
                      v462 = v875;
                      v455 = v871;
LABEL_356:
                      sub_10000863C();
                      sub_100006C50(v617);
                      v619 = (*(v10 + 48) + 16 * v618);
                      *v619 = v937;
                      v619[1] = v546;
                      sub_10001BC4C();
                      if (v156)
                      {
                        goto LABEL_507;
                      }

                      *(v10 + 16) = v620;
                      if (!v459)
                      {
                        goto LABEL_326;
                      }

LABEL_325:
                      sub_10012B844();
                      goto LABEL_331;
                    }

                    ++v587;
                  }

                  while (!*(v579 + 64 + 8 * v584));
                  sub_100003C00();
                  v971 = v589 & v588;
                  v980 = v48;
LABEL_349:
                  v590 = v962[7];
                  v591 = (v962[6] + 16 * (v585 | (v584 << 6)));
                  v592 = v591[1];
                  v945 = *v591;
                  sub_10012B778();
                  v594 = *v593;
                  v595 = v593[1];
                  v596 = *(v593 + 16);

                  v597 = sub_10000DF20();
                  sub_10012B7BC(v597, v598, v599);
                  v600 = sub_10000DF20();
                  sub_1001249E0(v600, v601, v602, v603);
                  v604 = sub_10000DF20();
                  sub_10011CE88(v604, v605, v606);
                  sub_10000F660();
                  sub_100006C50(v607);
                  v13 = v916;
                  sub_10000FEB4();
                  *v608 = v609;
                  v608[1] = v592;
                  sub_10000E238();
                  if (v156)
                  {
                    goto LABEL_506;
                  }

                  *(v916 + 16) = v610;
                  v48 = v980;
                  v546 = v954;
                }
              }

              sub_10001267C();
              v820 = v446;
              sub_10011CE44(v817, v818, v819);
              v625 = _swiftEmptyArrayStorage;
LABEL_459:
              v821 = sub_100046184(&qword_100215398, &qword_1001996A0);
              v822 = sub_100007754(v821);
              sub_10011CE88(v822, v820, 2);
              *&v984 = v625;
              goto LABEL_460;
            case 3:
              sub_10012B76C();
              v632 = v446;
              v633 = static _DictionaryStorage.copy(original:)();
              v634 = *(v447 + 64);
              v635 = *(v447 + 32);
              sub_10000624C();
              v917 = v637 & v636;
              v853 = v54;

              v845 = v446;
              sub_10000BFD8(v447);
              sub_100012F74();
              v903 = v633;
              v872 = v638;
LABEL_370:
              if (v917)
              {
                sub_100006BD4();
              }

              else
              {
                v640 = v639;
                do
                {
                  if (__OFADD__(v640, 1))
                  {
                    goto LABEL_498;
                  }

                  if (v640 + 1 >= v638)
                  {
                    v985 = sub_100046184(qword_100214E88, qword_100198FA0);
                    sub_1000385FC(v912, v845);
LABEL_460:
                    v54 = v853;
LABEL_461:
                    sub_10000863C();
                    sub_100006C50(v823);
                    v825 = (v868[6] + 16 * v824);
                    *v825 = v886;
                    v825[1] = v54;
                    sub_10001AC7C(v826, (v868[7] + 32 * v824));
                    if (!v156)
                    {
                      v868[2] = v827;
                      v439 = v860;
                      v440 = v879;
                      goto LABEL_277;
                    }

                    goto LABEL_517;
                  }

                  sub_10012B858();
                }

                while (!v641);
                sub_100003C00();
              }

              break;
            default:
              v451 = sub_10012B6E8();
              sub_1000189E8(v451);

              v452 = v447;
              v453 = v446;
              v454 = 0;
LABEL_456:
              sub_10011CE44(v452, v453, v454);
              goto LABEL_461;
          }

          sub_10000FF48();
          v910 = v642;
          sub_10012B830();
          v928 = v447;
          v908 = v643;
          v917 = v644;
          switch(v645)
          {
            case 1:
              v985 = &type metadata for String;
              *&v984 = v447;
              *(&v984 + 1) = v632;

              v647 = sub_100008380();
              v649 = 1;
              goto LABEL_448;
            case 2:
              v650 = *(v447 + 16);
              v865 = v54;
              if (v650)
              {
                v986 = _swiftEmptyArrayStorage;

                v846 = v632;
                sub_10011CE44(v447, v632, 2);
                sub_100142E74(v650);
                sub_10000BA54();
                while (1)
                {
                  if (v651 >= *(v447 + 16))
                  {
                    goto LABEL_504;
                  }

                  sub_100019088(v651);
                  v10 = *v652;
                  v653 = *(v652 + 8);
                  v972 = *v652;
                  v955 = v654;
                  switch(*(v652 + 16))
                  {
                    case 1:
                      sub_10012B7D4(&type metadata for String);
                      goto LABEL_406;
                    case 2:
                      v656 = *(v10 + 16);
                      if (v656)
                      {
                        v922 = *(v652 + 8);
                        v983 = _swiftEmptyArrayStorage;

                        sub_100142E74(v656);
                        v657 = v983;
                        v658 = (v10 + 48);
                        do
                        {
                          v659 = *(v658 - 2);
                          v660 = *(v658 - 1);
                          v13 = *v658;
                          v661 = sub_10000AC78();
                          sub_10012B7BC(v661, v662, v663);
                          v664 = sub_10000AC78();
                          sub_1001249E0(v664, v665, v666, v667);
                          v668 = sub_10000AC78();
                          sub_10011CE88(v668, v669, v670);
                          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                          {
                            sub_100008B14();
                            v657 = v983;
                          }

                          sub_10002DF58();
                          if (v121)
                          {
                            sub_100006FF0(v671);
                            sub_10001361C();
                            sub_100142F90(v672, v673, v674);
                            v657 = v983;
                          }

                          v658 += 24;
                          v657[2] = v659;
                          sub_100007948();
                          --v656;
                        }

                        while (v656);
                        v10 = v972;
                        v653 = v922;
                      }

                      else
                      {
                      }

                      v709 = sub_100046184(&qword_100215398, &qword_1001996A0);
                      v710 = sub_100007AC8(v709);
                      sub_100007D94(v710, v653);
                      goto LABEL_406;
                    case 3:
                      v981 = v48;
                      sub_10012B810();
                      v675 = static _DictionaryStorage.copy(original:)();
                      sub_100023FA0();
                      sub_100003CAC();
                      v678 = v677 & v676;
                      v923 = v679;
                      sub_10000C898(v10, v679);
                      v681 = v680 >> 6;
                      v946 = v675;
                      if (v678)
                      {
                        goto LABEL_393;
                      }

                      break;
                    default:
                      v655 = sub_10012B6E8();
                      sub_10012B878(v655);
                      goto LABEL_406;
                  }

                  while (1)
                  {
                    v683 = v48;
                    v447 = v928;
LABEL_395:
                    v48 = v683 + 1;
                    if (__OFADD__(v683, 1))
                    {
                      goto LABEL_477;
                    }

                    if (v48 >= v681)
                    {
                      break;
                    }

                    ++v683;
                    if (!*(v650 + 8 * v48))
                    {
                      goto LABEL_395;
                    }

                    sub_100003C00();
                    v678 = v685 & v684;
                    while (1)
                    {
                      v686 = v682 | (v48 << 6);
                      v687 = *(v10 + 56);
                      v688 = (*(v10 + 48) + 16 * v686);
                      v689 = v688[1];
                      v963 = *v688;
                      sub_10012B778();
                      v691 = *v690;
                      v692 = v690[1];
                      v13 = *(v690 + 16);

                      v693 = sub_10000AC78();
                      sub_10012B7BC(v693, v694, v695);
                      v696 = sub_10000AC78();
                      sub_1001249E0(v696, v697, v698, v699);
                      v700 = sub_10000AC78();
                      sub_10011CE88(v700, v701, v702);
                      sub_10000F660();
                      v675 = v946;
                      sub_100006C50(v703);
                      v704 = (v946[6] + 16 * v686);
                      *v704 = v963;
                      v704[1] = v689;
                      sub_100028734(&v984, (v946[7] + 32 * v686));
                      v705 = v946[2];
                      v156 = __OFADD__(v705, 1);
                      v706 = v705 + 1;
                      if (v156)
                      {
                        goto LABEL_502;
                      }

                      v946[2] = v706;
                      v10 = v972;
                      if (!v678)
                      {
                        break;
                      }

LABEL_393:
                      sub_10012B7F0();
                    }
                  }

                  v707 = sub_100046184(qword_100214E88, qword_100198FA0);
                  v708 = sub_100007AC8(v707);
                  sub_10011CE88(v708, v923, 3);
                  *&v984 = v675;
                  v48 = v981;
LABEL_406:
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    sub_10000BF20();
                    v711 = sub_10000AF58();
                    sub_100142F90(v711, v712, v713);
                  }

                  sub_10001BEB8();
                  if (v121)
                  {
                    v715 = sub_1000066A8(v714);
                    sub_10002510C(v715);
                  }

                  sub_100015BA8();
                  v651 = v955;
                  if (v955 == v650)
                  {
                    v632 = v846;
                    goto LABEL_451;
                  }
                }
              }

              v807 = sub_100005680();
              sub_10011CE44(v807, v808, v809);
LABEL_451:
              v985 = sub_100046184(&qword_100215398, &qword_1001996A0);
              v810 = sub_100008380();
              sub_100007D94(v810, v811);
              v633 = v903;
              goto LABEL_452;
            case 3:
              sub_10012B76C();
              static _DictionaryStorage.copy(original:)();
              sub_10000BBDC();
              v843 = v716;
              v717 = *(v447 + 32);
              sub_10000624C();
              v720 = v719 & v718;
              v865 = v54;

              v847 = v632;
              sub_10000BFD8(v447);
              sub_10012B864();
              v841 = v10;
              v842 = v54;
              if (v720)
              {
                goto LABEL_413;
              }

LABEL_414:
              v722 = v447;
              do
              {
                v447 = v722 + 1;
                if (__OFADD__(v722, 1))
                {
                  goto LABEL_497;
                }

                if (v447 >= v54)
                {
                  v985 = sub_100046184(qword_100214E88, qword_100198FA0);
                  sub_10011CE88(v928, v847, 3);
                  *&v984 = v10;
LABEL_452:
                  v54 = v865;
LABEL_453:
                  sub_10000863C();
                  sub_100006C50(v812);
                  v814 = (v633[6] + 16 * v813);
                  *v814 = v910;
                  v814[1] = v54;
                  sub_10001AC7C(v815, (v633[7] + 32 * v813));
                  if (!v156)
                  {
                    v633[2] = v816;
                    v638 = v872;
                    v639 = v908;
                    goto LABEL_370;
                  }

                  goto LABEL_516;
                }

                ++v722;
              }

              while (!*(v843 + 8 * v447));
              sub_100003C00();
              v720 = v724 & v723;
              break;
            default:
              v646 = sub_10012B6E8();
              sub_1000189E8(v646);

              v647 = sub_100008380();
              v649 = 0;
LABEL_448:
              sub_10011CE44(v647, v648, v649);
              goto LABEL_453;
          }

LABEL_419:
          v725 = v928[7];
          v726 = (v928[6] + 16 * (v721 | (v447 << 6)));
          v727 = *v726;
          v728 = v726[1];
          sub_1000149A8();
          v13 = *v729;
          v730 = *(v729 + 8);
          v956 = v728;
          v964 = v720;
          v973 = *v729;
          v935 = v731;
          switch(*(v729 + 16))
          {
            case 1:
              v985 = &type metadata for String;
              *&v984 = v13;
              *(&v984 + 1) = v730;

              sub_10012B7B0();
              goto LABEL_440;
            case 2:
              v736 = *(v13 + 16);
              if (v736)
              {
                v986 = _swiftEmptyArrayStorage;

                sub_10001267C();
                sub_10011CE44(v737, v738, v739);
                sub_100142E74(v736);
                v740 = v986;
                v741 = (v13 + 48);
                do
                {
                  v742 = *(v741 - 2);
                  v743 = *(v741 - 1);
                  v744 = *v741;
                  v745 = sub_100005AA4();
                  sub_10012B7BC(v745, v746, v747);
                  v748 = sub_100005AA4();
                  sub_1001249E0(v748, v749, v750, v751);
                  v752 = sub_100005AA4();
                  sub_10011CE88(v752, v753, v754);
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    sub_10000BF20();
                    v755 = sub_10000AF58();
                    sub_100142F90(v755, v756, v757);
                    v740 = v986;
                  }

                  sub_10012B794();
                  if (v121)
                  {
                    sub_1000066A8(v758);
                    sub_10012B7A4();
                    sub_100142F90(v759, v760, v761);
                    v740 = v986;
                  }

                  v741 += 24;
                  v740[2] = v742;
                  sub_100007948();
                  --v736;
                }

                while (v736);
                v54 = v842;
                v728 = v956;
                v720 = v964;
                v632 = v730;
                v13 = v973;
              }

              else
              {

                sub_10001267C();
                v632 = v730;
                sub_10011CE44(v798, v799, v800);
              }

              v801 = sub_100046184(&qword_100215398, &qword_1001996A0);
              v802 = sub_10000CD04(v801);
              sub_100007D94(v802, v632);
              v633 = v903;
              goto LABEL_444;
            case 3:
              v982 = v48;
              v762 = *(v729 + 8);
              v763 = static _DictionaryStorage.copy(original:)();
              v765 = v13 + 64;
              v764 = *(v13 + 64);
              v766 = *(v13 + 32);
              sub_10000624C();
              v769 = v768 & v767;

              v770 = v13;
              v13 = v763;
              v849 = v762;
              sub_10000C898(v770, v762);
              v772 = v771 >> 6;
              break;
            default:
              v632 = *(v729 + 8);
              v732 = sub_10012B6E8();
              sub_10000CEEC(v732);

              v733 = v13;
              v734 = v730;
              v735 = 0;
LABEL_440:
              sub_10011CE44(v733, v734, v735);
              goto LABEL_444;
          }

          while (1)
          {
            v632 = v973;
            if (v769)
            {
              sub_10012B844();
              v941 = v769;
              goto LABEL_437;
            }

            v774 = v48;
            v633 = v903;
            do
            {
              v48 = v774 + 1;
              if (__OFADD__(v774, 1))
              {
                goto LABEL_495;
              }

              if (v48 >= v772)
              {
                v985 = sub_100046184(qword_100214E88, qword_100198FA0);
                sub_10002D45C(v973, v849);
                v48 = v982;
                v10 = v841;
                v54 = v842;
LABEL_444:
                sub_10000863C();
                sub_100006C50(v803);
                v805 = (*(v10 + 48) + 16 * v804);
                *v805 = v935;
                v805[1] = v728;
                sub_10001BC4C();
                if (v156)
                {
                  goto LABEL_515;
                }

                *(v10 + 16) = v806;
                if (!v720)
                {
                  goto LABEL_414;
                }

LABEL_413:
                sub_10000B118();
                goto LABEL_419;
              }

              ++v774;
            }

            while (!*(v765 + 8 * v48));
            sub_100003C00();
            v941 = v776 & v775;
LABEL_437:
            v777 = v973[7];
            v778 = (v973[6] + 16 * (v773 | (v48 << 6)));
            v779 = v778[1];
            v947 = *v778;
            sub_10012B778();
            v781 = *v780;
            v782 = v780[1];
            v783 = *(v780 + 16);

            v784 = sub_10012B784();
            sub_10012B7BC(v784, v785, v786);
            v787 = sub_10012B784();
            sub_1001249E0(v787, v788, v789, v790);
            v791 = sub_10012B784();
            sub_10011CE88(v791, v792, v793);
            sub_10000F660();
            sub_100006C50(v794);
            v13 = v763;
            sub_10000FEB4();
            *v795 = v796;
            v795[1] = v779;
            sub_10000E238();
            if (v156)
            {
              goto LABEL_514;
            }

            *(v763 + 16) = v797;
            v728 = v956;
            v720 = v964;
            v769 = v941;
          }
        }

        v441 = v440;
        while (1)
        {
          if (__OFADD__(v441, 1))
          {
            goto LABEL_496;
          }

          if (v441 + 1 >= v439)
          {
            break;
          }

          sub_10012B858();
          if (v442)
          {
            sub_100003C00();
            goto LABEL_284;
          }
        }

        v985 = sub_100046184(qword_100214E88, qword_100198FA0);
        sub_10011CE88(v899, v851, 3);
        *&v984 = v868;
LABEL_468:
        v67 = v858;
LABEL_469:
        sub_10000863C();
        sub_100006C50(v834);
        v836 = (v873[6] + 16 * v835);
        *v836 = v883;
        v836[1] = v67;
        sub_100028734(&v984, (v873[7] + 32 * v835));
        v837 = v873[2];
        v156 = __OFADD__(v837, 1);
        v838 = v837 + 1;
        if (v156)
        {
          goto LABEL_513;
        }

        v49 = v873;
        v873[2] = v838;
        v54 = v881;
        v56 = v882;
        if (v881)
        {
          goto LABEL_37;
        }

        break;
      default:
        v73 = sub_10012B6E8();
        sub_1000189E8(v73);

        v74 = sub_100008380();
        v76 = 0;
LABEL_464:
        sub_10011CE44(v74, v75, v76);
        goto LABEL_469;
    }
  }
}

void sub_1001295D4(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = v3;
  sub_1000089E4();
  v9 = *(v3 + 88);

  v10 = sub_1000E2418();
  sub_100025DE8(v10);

  if (v23)
  {
    sub_100008C84(&v22, &v24);
    sub_100008C84(&v24, a3);
  }

  else
  {
    sub_10000F94C(&v22, &qword_10021CC50, &qword_1001A16E8);
    sub_1000089E4();
    v11 = *(v5 + 104);

    v12 = sub_1000E2418();
    v13 = sub_1001442CC(v12);

    if (v13)
    {
      v14 = type metadata accessor for ProtoOneOf();
      swift_allocObject();

      v15 = sub_1000E2418();
      sub_100142290(v15, v16, v13);
      if (!v4)
      {
        v18 = v17;
        v25 = v14;
        v26 = &off_100200188;
        *&v24 = v17;
        sub_100005D5C();

        sub_100125A94(&v24, a1, a2);
        swift_endAccess();
        sub_100005D5C();
        v19 = sub_1000E2418();
        sub_100139B7C(v19, v20);
        swift_endAccess();

        a3[3] = v14;
        a3[4] = &off_100200188;
        *a3 = v18;
      }
    }

    else
    {
      sub_10011DDBC();
      swift_allocError();
      *v21 = 7;
      *(v21 + 8) = 0u;
      *(v21 + 24) = 0u;
      *(v21 + 40) = 3584;
      swift_willThrow();
    }
  }
}

void *sub_1001297D8(uint64_t a1, uint64_t a2)
{
  type metadata accessor for ProtobufPayload();
  v5 = swift_allocObject();
  v5[5] = type metadata accessor for ProtoMessageSchema();
  v5[6] = &off_1001FF278;
  v5[2] = v2;
  v5[7] = a1;
  v5[8] = a2;
  sub_10012A1B8();

  v6 = sub_100003898();
  sub_100014924(v6, v7);
  return v5;
}

uint64_t sub_100129864()
{
  v1 = v0[4];

  v2 = v0[5];

  v3 = v0[6];

  v4 = v0[7];
  swift_unknownObjectRelease();
  v5 = v0[9];

  v6 = v0[10];

  v7 = v0[11];

  v8 = v0[12];

  v9 = v0[13];
}

void *sub_1001298CC()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[5];

  v4 = v0[6];

  v5 = v0[7];
  swift_unknownObjectRelease();
  v6 = v0[9];

  v7 = v0[10];

  v8 = v0[11];

  v9 = v0[12];

  v10 = v0[13];

  return v0;
}

uint64_t sub_100129934()
{
  sub_1001298CC();

  return _swift_deallocClassInstance(v0, 112, 7);
}

uint64_t sub_1001299EC(uint64_t a1)
{
  v2 = v1;
  v115 = a1;
  v3 = *(a1 + 32);
  sub_100046184(&qword_10021CA98, &unk_1001A1660);
  static _DictionaryStorage.copy(original:)();
  v4 = *(v3 + 64);
  v102 = v3 + 64;
  sub_100008150();
  v7 = v6 & v5;
  v9 = (v8 + 63) >> 6;
  v104 = v10;
  v105 = v3;

  v11 = 0;
  if (v7)
  {
    while (1)
    {
      v12 = __clz(__rbit64(v7));
      v106 = (v7 - 1) & v7;
LABEL_8:
      v16 = v12 | (v11 << 6);
      v17 = (*(v105 + 48) + 16 * v16);
      v19 = *v17;
      v18 = v17[1];
      sub_100009848(*(v105 + 56) + 32 * v16, v109);
      sub_100009848(v109, v108);

      sub_100124CE8(v108);
      if (v2)
      {
        break;
      }

      v23 = v20;
      v24 = v21;
      v25 = v22;
      sub_100007378(v109);
      sub_10012B81C();
      sub_100006C50(v26);
      v27 = (v104[6] + 16 * v16);
      *v27 = v19;
      v27[1] = v18;
      v28 = v104[7] + 24 * v16;
      *v28 = v23;
      *(v28 + 8) = v24;
      *(v28 + 16) = v25;
      v29 = v104[2];
      v30 = __OFADD__(v29, 1);
      v31 = v29 + 1;
      if (v30)
      {
        goto LABEL_52;
      }

      v104[2] = v31;
      v2 = 0;
      v7 = v106;
      if (!v106)
      {
        goto LABEL_3;
      }
    }

    return sub_100007378(v109);
  }

  else
  {
LABEL_3:
    v13 = v11;
    while (1)
    {
      v11 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
LABEL_49:
        __break(1u);
        goto LABEL_50;
      }

      if (v11 >= v9)
      {
        break;
      }

      ++v13;
      if (*(v102 + 8 * v11))
      {
        sub_100003C00();
        v106 = v15 & v14;
        goto LABEL_8;
      }
    }

    v32 = v115;
    sub_1000089E4();
    v33 = *(v32 + 88);

    v34 = Dictionary.init(dictionaryLiteral:)();
    v36 = v33 + 64;
    v35 = *(v33 + 64);
    v37 = *(v33 + 32);
    sub_100004538();
    v40 = v39 & v38;
    v42 = (v41 + 63) >> 6;

    v43 = 0;
    v100 = v42;
    if (!v40)
    {
      goto LABEL_14;
    }

    while (2)
    {
      v44 = v43;
LABEL_17:
      v45 = (*(v33 + 48) + ((v44 << 10) | (16 * __clz(__rbit64(v40)))));
      v47 = *v45;
      v46 = v45[1];

      sub_1001295D4(v47, v46, v109);
      if (v2)
      {
      }

      sub_1000092B4(v109, v108);
      v48 = OneOfModel.init(_:)(v108);
      v40 &= v40 - 1;
      swift_isUniquelyReferenced_nonNull_native();
      v108[0] = v34;
      sub_10013651C(v48, v47, v46);
      v103 = v108[0];
      v49 = v110;
      v50 = v111;
      sub_100007534(v109, v110);
      v51 = (*(v50 + 24))(v49, v50);
      v53 = v51 + 56;
      v52 = *(v51 + 56);
      v54 = *(v51 + 32);
      sub_100004538();
      v57 = v56 & v55;
      v59 = (v58 + 63) >> 6;
      v107 = v60;

      v61 = 0;
      if (!v57)
      {
        goto LABEL_20;
      }

      do
      {
        v62 = v61;
LABEL_23:
        v63 = (*(v107 + 48) + ((v62 << 10) | (16 * __clz(__rbit64(v57)))));
        v64 = *v63;
        v65 = v63[1];

        sub_100025A1C(v64, v65, v108);
        v57 &= v57 - 1;
        sub_100007378(v108);

        v61 = v62;
      }

      while (v57);
      while (1)
      {
LABEL_20:
        v62 = v61 + 1;
        if (__OFADD__(v61, 1))
        {
          __break(1u);
          goto LABEL_49;
        }

        if (v62 >= v59)
        {
          break;
        }

        v57 = *(v53 + 8 * v62);
        ++v61;
        if (v57)
        {
          goto LABEL_23;
        }
      }

      sub_100007378(v109);
      v43 = v44;
      v2 = 0;
      v34 = v103;
      v42 = v100;
      v36 = v33 + 64;
      if (v40)
      {
        continue;
      }

      break;
    }

LABEL_14:
    while (1)
    {
      v44 = v43 + 1;
      if (__OFADD__(v43, 1))
      {
        break;
      }

      if (v44 >= v42)
      {

        v66 = v115;
        sub_1000089E4();
        v67 = *(v66 + 72);

        v68 = Dictionary.init(dictionaryLiteral:)();
        v70 = v67 + 64;
        v69 = *(v67 + 64);
        sub_100008150();
        v73 = v72 & v71;
        v75 = (v74 + 63) >> 6;

        v76 = 0;
        v101 = v75;
        if (v73)
        {
          goto LABEL_32;
        }

LABEL_28:
        while (1)
        {
          v77 = v76 + 1;
          if (__OFADD__(v76, 1))
          {
            goto LABEL_51;
          }

          if (v77 >= v75)
          {

            return v104;
          }

          v73 = *(v70 + 8 * v77);
          ++v76;
          if (v73)
          {
            v76 = v77;
LABEL_32:
            while (1)
            {
              v78 = (*(v67 + 48) + ((v76 << 10) | (16 * __clz(__rbit64(v73)))));
              v79 = *v78;
              v80 = v78[1];

              sub_100025A1C(v79, v80, v109);
              if (v2)
              {
                break;
              }

              PropertyModel.init(_:)(v109, &v112);
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v109[0] = v68;
              v82 = sub_100005B74(v79, v80);
              v84 = v68[2];
              v85 = (v83 & 1) == 0;
              v86 = v84 + v85;
              if (__OFADD__(v84, v85))
              {
                goto LABEL_53;
              }

              v87 = v82;
              v88 = v83;
              sub_100046184(&qword_10021CC80, &qword_1001A1720);
              if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v86))
              {
                v89 = sub_100005B74(v79, v80);
                if ((v88 & 1) != (v90 & 1))
                {
                  goto LABEL_55;
                }

                v87 = v89;
              }

              v2 = 0;
              v68 = v109[0];
              if (v88)
              {
                v91 = *(v109[0] + 56) + 40 * v87;
                v92 = *(v91 + 16);
                *(v91 + 32) = v114;
                v93 = v113;
                *v91 = v112;
                *(v91 + 16) = v93;
              }

              else
              {
                *(v109[0] + 8 * (v87 >> 6) + 64) |= 1 << v87;
                v94 = (v68[6] + 16 * v87);
                *v94 = v79;
                v94[1] = v80;
                v95 = v68[7] + 40 * v87;
                v96 = v113;
                *v95 = v112;
                *(v95 + 16) = v96;
                *(v95 + 32) = v114;
                v97 = v68[2];
                v30 = __OFADD__(v97, 1);
                v98 = v97 + 1;
                if (v30)
                {
                  goto LABEL_54;
                }

                v68[2] = v98;
              }

              v73 &= v73 - 1;
              v75 = v101;
              v70 = v67 + 64;
              if (!v73)
              {
                goto LABEL_28;
              }
            }
          }
        }
      }

      v40 = *(v36 + 8 * v44);
      ++v43;
      if (v40)
      {
        goto LABEL_17;
      }
    }

LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
LABEL_55:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  return result;
}

unint64_t sub_10012A1B8()
{
  result = qword_10021E1B0;
  if (!qword_10021E1B0)
  {
    type metadata accessor for ProtobufPayload();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021E1B0);
  }

  return result;
}

uint64_t sub_10012A210(uint64_t a1)
{
  sub_100046184(&qword_100216690, &qword_1001A0410);
  result = static _DictionaryStorage.copy(original:)();
  v3 = result;
  v4 = 0;
  v28 = result;
  v29 = a1;
  v7 = *(a1 + 64);
  v6 = a1 + 64;
  v5 = v7;
  v8 = 1 << *(v6 - 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & v5;
  v11 = (v8 + 63) >> 6;
  v27 = result + 64;
  if ((v9 & v5) != 0)
  {
    while (1)
    {
      v12 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_10:
      v15 = v12 | (v4 << 6);
      v16 = *(v29 + 56);
      v17 = (*(v29 + 48) + 16 * v15);
      v18 = v17[1];
      v31 = *v17;
      v19 = v16 + 24 * v15;
      v20 = *v19;
      v21 = *(v19 + 8);
      v22 = *(v19 + 16);

      sub_10011CE44(v20, v21, v22);
      sub_1001249E0(v20, v21, v22, v30);
      sub_10011CE88(v20, v21, v22);
      v3 = v28;
      *(v27 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v23 = (v28[6] + 16 * v15);
      *v23 = v31;
      v23[1] = v18;
      result = sub_100028734(v30, (v28[7] + 32 * v15));
      v24 = v28[2];
      v25 = __OFADD__(v24, 1);
      v26 = v24 + 1;
      if (v25)
      {
        break;
      }

      v28[2] = v26;
      if (!v10)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v13 = v4;
    while (1)
    {
      v4 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v4 >= v11)
      {
        return v3;
      }

      v14 = *(v6 + 8 * v4);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v10 = (v14 - 1) & v14;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_10012A3D0(uint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t (*a3)(void *))
{
  v6 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v6 = a2(v6);
  }

  v7 = *(v6 + 16);
  v9[0] = v6 + 32;
  v9[1] = v7;
  result = a3(v9);
  *a1 = v6;
  return result;
}

Swift::Int sub_10012A454(uint64_t *a1)
{
  v2 = a1[1];
  result = _minimumMergeRunLength(_:)(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = _swiftEmptyArrayStorage;
      }

      else
      {
        sub_100046184(&qword_10021CC90, &qword_1001A1730);
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v6[2] = v5;
      }

      v7[0] = (v6 + 4);
      v7[1] = v5;
      sub_10012AB00(v7, v8, a1, v4);
      v6[2] = 0;
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
    return sub_10012A558(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_10012A558(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 56 * a3 - 56;
    v6 = result - a3;
    while (2)
    {
      v7 = v6;
      v8 = v5;
      do
      {
        v9 = *(v8 + 96);
        if (v9 >= *(v8 + 40))
        {
          break;
        }

        if (!v4)
        {
          __break(1u);
          return result;
        }

        v11 = *(v8 + 56);
        v10 = *(v8 + 64);
        v12 = *(v8 + 72);
        v13 = *(v8 + 104);
        v14 = *(v8 + 16);
        result = *(v8 + 48);
        *(v8 + 56) = *v8;
        v15 = *(v8 + 80);
        *(v8 + 72) = v14;
        *(v8 + 88) = *(v8 + 32);
        *(v8 + 104) = result;
        *v8 = v11;
        *(v8 + 8) = v10;
        *(v8 + 16) = v12;
        *(v8 + 24) = v15;
        *(v8 + 40) = v9;
        *(v8 + 48) = v13;
        v8 -= 56;
      }

      while (!__CFADD__(v7++, 1));
      ++a3;
      v5 += 56;
      --v6;
      if (a3 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_10012A5F8(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v92 = _swiftEmptyArrayStorage;
  v6 = a3[1];
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = _swiftEmptyArrayStorage;
    while (1)
    {
      v9 = v7;
      v10 = v7 + 1;
      if (v7 + 1 < v6)
      {
        v11 = (*a3 + 16 * v10);
        v12 = (*a3 + 16 * v7);
        if (*v11 == *v12 && v11[1] == v12[1])
        {
          v14 = 0;
        }

        else
        {
          v14 = _stringCompareWithSmolCheck(_:_:expecting:)();
        }

        v10 = v9 + 2;
        v15 = 16 * v9;
        v16 = v12 + 5;
        while (v10 < v6)
        {
          if (*(v16 - 1) == *(v16 - 3) && *v16 == *(v16 - 2))
          {
            if (v14)
            {
              goto LABEL_21;
            }
          }

          else if ((v14 ^ _stringCompareWithSmolCheck(_:_:expecting:)()))
          {
            break;
          }

          ++v10;
          v16 += 2;
        }

        if ((v14 & 1) == 0)
        {
          goto LABEL_28;
        }

LABEL_21:
        if (v10 < v9)
        {
          goto LABEL_121;
        }

        if (v9 < v10)
        {
          v18 = 16 * v10;
          v19 = v10;
          v20 = v9;
          do
          {
            if (v20 != --v19)
            {
              v21 = *a3;
              if (!*a3)
              {
                goto LABEL_126;
              }

              v22 = (v21 + v15);
              v23 = v21 + v18;
              v24 = *v22;
              v25 = v22[1];
              *v22 = *(v23 - 16);
              *(v23 - 16) = v24;
              *(v23 - 8) = v25;
            }

            ++v20;
            v18 -= 16;
            v15 += 16;
          }

          while (v20 < v19);
        }
      }

LABEL_28:
      v26 = a3[1];
      if (v10 < v26)
      {
        if (__OFSUB__(v10, v9))
        {
          goto LABEL_120;
        }

        if (v10 - v9 < a4)
        {
          if (__OFADD__(v9, a4))
          {
            goto LABEL_122;
          }

          if (v9 + a4 >= v26)
          {
            v27 = a3[1];
          }

          else
          {
            v27 = v9 + a4;
          }

          if (v27 < v9)
          {
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
            return;
          }

          if (v10 != v27)
          {
            v87 = v5;
            v89 = v9;
            v28 = *a3;
            v29 = *a3 + 16 * v10;
            v30 = v9 - v10;
            do
            {
              v31 = v10;
              v32 = (v28 + 16 * v10);
              v33 = *v32;
              v34 = v32[1];
              v35 = v30;
              v36 = v29;
              do
              {
                v37 = v33 == *(v36 - 2) && v34 == *(v36 - 1);
                if (v37 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
                {
                  break;
                }

                if (!v28)
                {
                  goto LABEL_124;
                }

                v33 = *v36;
                v34 = v36[1];
                *v36 = *(v36 - 1);
                *(v36 - 1) = v34;
                *(v36 - 2) = v33;
                v36 -= 2;
              }

              while (!__CFADD__(v35++, 1));
              v10 = v31 + 1;
              v29 += 16;
              --v30;
            }

            while (v31 + 1 != v27);
            v10 = v27;
            v5 = v87;
            v9 = v89;
          }
        }
      }

      if (v10 < v9)
      {
        goto LABEL_119;
      }

      v88 = v10;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v82 = v8[2];
        sub_10006C888();
        v8 = v83;
      }

      v39 = v8[2];
      v40 = v39 + 1;
      if (v39 >= v8[3] >> 1)
      {
        sub_10006C888();
        v8 = v84;
      }

      v8[2] = v40;
      v41 = v8 + 4;
      v42 = &v8[2 * v39 + 4];
      *v42 = v9;
      v42[1] = v88;
      v90 = *a1;
      if (!*a1)
      {
        goto LABEL_127;
      }

      if (v39)
      {
        while (1)
        {
          v43 = v40 - 1;
          v44 = &v41[2 * v40 - 2];
          v45 = &v8[2 * v40];
          if (v40 >= 4)
          {
            break;
          }

          if (v40 == 3)
          {
            v46 = v8[4];
            v47 = v8[5];
            v56 = __OFSUB__(v47, v46);
            v48 = v47 - v46;
            v49 = v56;
LABEL_69:
            if (v49)
            {
              goto LABEL_109;
            }

            v61 = *v45;
            v60 = v45[1];
            v62 = __OFSUB__(v60, v61);
            v63 = v60 - v61;
            v64 = v62;
            if (v62)
            {
              goto LABEL_112;
            }

            v65 = v44[1];
            v66 = v65 - *v44;
            if (__OFSUB__(v65, *v44))
            {
              goto LABEL_115;
            }

            if (__OFADD__(v63, v66))
            {
              goto LABEL_117;
            }

            if (v63 + v66 >= v48)
            {
              if (v48 < v66)
              {
                v43 = v40 - 2;
              }

              goto LABEL_91;
            }

            goto LABEL_84;
          }

          if (v40 < 2)
          {
            goto LABEL_111;
          }

          v68 = *v45;
          v67 = v45[1];
          v56 = __OFSUB__(v67, v68);
          v63 = v67 - v68;
          v64 = v56;
LABEL_84:
          if (v64)
          {
            goto LABEL_114;
          }

          v70 = *v44;
          v69 = v44[1];
          v56 = __OFSUB__(v69, v70);
          v71 = v69 - v70;
          if (v56)
          {
            goto LABEL_116;
          }

          if (v71 < v63)
          {
            goto LABEL_98;
          }

LABEL_91:
          if (v43 - 1 >= v40)
          {
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
            __break(1u);
LABEL_110:
            __break(1u);
LABEL_111:
            __break(1u);
LABEL_112:
            __break(1u);
LABEL_113:
            __break(1u);
LABEL_114:
            __break(1u);
LABEL_115:
            __break(1u);
LABEL_116:
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
            goto LABEL_123;
          }

          if (!*a3)
          {
            goto LABEL_125;
          }

          v75 = &v41[2 * v43 - 2];
          v76 = *v75;
          v77 = &v41[2 * v43];
          v78 = v77[1];
          sub_10012B2BC((*a3 + 16 * *v75), (*a3 + 16 * *v77), (*a3 + 16 * v78), v90);
          if (v5)
          {
            goto LABEL_102;
          }

          if (v78 < v76)
          {
            goto LABEL_104;
          }

          v79 = v8;
          v80 = v8[2];
          if (v43 > v80)
          {
            goto LABEL_105;
          }

          *v75 = v76;
          v75[1] = v78;
          if (v43 >= v80)
          {
            goto LABEL_106;
          }

          v40 = v80 - 1;
          memmove(&v41[2 * v43], v77 + 2, 16 * (v80 - 1 - v43));
          v79[2] = v80 - 1;
          v81 = v80 > 2;
          v8 = v79;
          if (!v81)
          {
            goto LABEL_98;
          }
        }

        v50 = &v41[2 * v40];
        v51 = *(v50 - 8);
        v52 = *(v50 - 7);
        v56 = __OFSUB__(v52, v51);
        v53 = v52 - v51;
        if (v56)
        {
          goto LABEL_107;
        }

        v55 = *(v50 - 6);
        v54 = *(v50 - 5);
        v56 = __OFSUB__(v54, v55);
        v48 = v54 - v55;
        v49 = v56;
        if (v56)
        {
          goto LABEL_108;
        }

        v57 = v45[1];
        v58 = v57 - *v45;
        if (__OFSUB__(v57, *v45))
        {
          goto LABEL_110;
        }

        v56 = __OFADD__(v48, v58);
        v59 = v48 + v58;
        if (v56)
        {
          goto LABEL_113;
        }

        if (v59 >= v53)
        {
          v73 = *v44;
          v72 = v44[1];
          v56 = __OFSUB__(v72, v73);
          v74 = v72 - v73;
          if (v56)
          {
            goto LABEL_118;
          }

          if (v48 < v74)
          {
            v43 = v40 - 2;
          }

          goto LABEL_91;
        }

        goto LABEL_69;
      }

LABEL_98:
      v6 = a3[1];
      v7 = v88;
      if (v88 >= v6)
      {
        v92 = v8;
        break;
      }
    }
  }

  if (!*a1)
  {
    goto LABEL_128;
  }

  sub_10012B058(&v92, *a1, a3);
LABEL_102:
}
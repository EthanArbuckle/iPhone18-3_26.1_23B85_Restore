SQLiter::SQLiteDataType __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SQLiteColumnType.getDataType()()
{
  v1 = v0;
  result = SQLiter_SQLiteDataType_text;
  switch(v1)
  {
    case 1:
      result = SQLiter_SQLiteDataType_blob;
      break;
    case 2:
    case 3:
    case 4:
    case 5:
    case 9:
      result = SQLiter_SQLiteDataType_integer;
      break;
    case 6:
    case 7:
    case 8:
      result = SQLiter_SQLiteDataType_float;
      break;
    case 10:
      sub_10011DC44();
      swift_allocError();
      *v3 = 0xD00000000000003ELL;
      *(v3 + 8) = 0x80000001001B3250;
      *(v3 + 16) = 0;
      *(v3 + 24) = 3;
      result = swift_willThrow();
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1001565D4(unsigned __int8 a1, char a2)
{
  v2 = 1415071060;
  v3 = 0xE400000000000000;
  v4 = a1;
  v5 = 1415071060;
  switch(v4)
  {
    case 1:
      v5 = 1112493122;
      break;
    case 2:
      v3 = 0xE500000000000000;
      v5 = 0x3233544E49;
      break;
    case 3:
      v3 = 0xE500000000000000;
      v5 = 0x3436544E49;
      break;
    case 4:
      v3 = 0xE600000000000000;
      v5 = 0x3233544E4955;
      break;
    case 5:
      v3 = 0xE600000000000000;
      v5 = 0x3436544E4955;
      break;
    case 6:
      v3 = 0xE500000000000000;
      v5 = 0x54414F4C46;
      break;
    case 7:
      v3 = 0xE600000000000000;
      v5 = 0x454C42554F44;
      break;
    case 8:
      v3 = 0xE800000000000000;
      v5 = 0x454D495445544144;
      break;
    case 9:
      v3 = 0xE700000000000000;
      v5 = 0x4E41454C4F4F42;
      break;
    case 10:
      v3 = 0xE300000000000000;
      v5 = 5852737;
      break;
    default:
      break;
  }

  v6 = 0xE400000000000000;
  switch(a2)
  {
    case 1:
      v2 = 1112493122;
      break;
    case 2:
      v6 = 0xE500000000000000;
      v2 = 0x3233544E49;
      break;
    case 3:
      v6 = 0xE500000000000000;
      v2 = 0x3436544E49;
      break;
    case 4:
      v6 = 0xE600000000000000;
      v2 = 0x3233544E4955;
      break;
    case 5:
      v6 = 0xE600000000000000;
      v2 = 0x3436544E4955;
      break;
    case 6:
      v6 = 0xE500000000000000;
      v2 = 0x54414F4C46;
      break;
    case 7:
      v6 = 0xE600000000000000;
      v2 = 0x454C42554F44;
      break;
    case 8:
      v6 = 0xE800000000000000;
      v2 = 0x454D495445544144;
      break;
    case 9:
      v6 = 0xE700000000000000;
      v2 = 0x4E41454C4F4F42;
      break;
    case 10:
      v6 = 0xE300000000000000;
      v2 = 5852737;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int sub_100156838(char a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(dword_1001A41D4[a1]);
  return Hasher._finalize()();
}

Swift::Int sub_10015688C(char a1)
{
  Hasher.init(_seed:)();
  SQLiteColumnType.rawValue.getter(a1);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1001568F0()
{
  String.hash(into:)();
}

Swift::Int sub_100156A50(uint64_t a1, char a2)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(dword_1001A41D4[a2]);
  return Hasher._finalize()();
}

Swift::Int sub_100156AA0(uint64_t a1, char a2)
{
  Hasher.init(_seed:)();
  SQLiteColumnType.rawValue.getter(a2);
  String.hash(into:)();

  return Hasher._finalize()();
}

ValueMetadata *SQLiteColumnType.defaultNativeType.getter(char a1)
{
  v1 = &type metadata for String;
  switch(a1)
  {
    case 1:
      v1 = &type metadata for Data;
      sub_10012F954();
      break;
    case 2:
      v1 = &type metadata for Int32;
      break;
    case 3:
      v1 = &type metadata for Int64;
      break;
    case 4:
      v1 = &type metadata for UInt32;
      break;
    case 5:
      v1 = &type metadata for UInt64;
      break;
    case 6:
      v1 = &type metadata for Float;
      break;
    case 7:
    case 8:
      v1 = &type metadata for Double;
      break;
    case 9:
      v1 = &type metadata for Bool;
      break;
    case 10:
      v1 = &type metadata for SQLiteUndefined;
      sub_10012F9A8();
      break;
    default:
      return v1;
  }

  return v1;
}

SQLiter::SQLiteColumnType_optional __swiftcall SQLiteColumnType.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v2._countAndFlagsBits = rawValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100200210, v2);

  if (v3 >= 0xB)
  {
    return 11;
  }

  else
  {
    return v3;
  }
}

uint64_t SQLiteColumnType.rawValue.getter(char a1)
{
  result = 1415071060;
  switch(a1)
  {
    case 1:
      result = 1112493122;
      break;
    case 2:
      result = 0x3233544E49;
      break;
    case 3:
      result = 0x3436544E49;
      break;
    case 4:
      result = 0x3233544E4955;
      break;
    case 5:
      result = 0x3436544E4955;
      break;
    case 6:
      result = 0x54414F4C46;
      break;
    case 7:
      result = 0x454C42554F44;
      break;
    case 8:
      result = 0x454D495445544144;
      break;
    case 9:
      result = 0x4E41454C4F4F42;
      break;
    case 10:
      result = 5852737;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_100156D54()
{
  result = qword_10021F190;
  if (!qword_10021F190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021F190);
  }

  return result;
}

SQLiter::SQLiteColumnType_optional sub_100156DC0@<W0>(Swift::String *a1@<X0>, SQLiter::SQLiteColumnType_optional *a2@<X8>)
{
  result.value = SQLiteColumnType.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t sub_100156DF0@<X0>(uint64_t *a1@<X8>)
{
  result = SQLiteColumnType.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

_BYTE *storeEnumTagSinglePayload for SQLiteColumnType(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF6)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF5)
  {
    v6 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
          *result = a2 + 10;
        }

        break;
    }
  }

  return result;
}

sqlite3_stmt *String.init(with:column:)(uint64_t a1, uint64_t a2)
{
  result = sub_100154FFC();
  if (v2)
  {

    return a2;
  }

  if (a2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (a2 <= 0x7FFFFFFF)
  {
    if (sqlite3_column_text(result, a2))
    {
      a2 = String.init(cString:)();
    }

    else
    {

      return 0;
    }

    return a2;
  }

  __break(1u);
  return result;
}

sqlite3_stmt *Data.init(with:column:)(uint64_t a1, uint64_t a2)
{
  result = sub_100154FFC();
  if (v2)
  {

    return a2;
  }

  if (a2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (a2 <= 0x7FFFFFFF)
  {
    v5 = result;
    if (sqlite3_column_blob(result, a2))
    {
      sqlite3_column_bytes(v5, a2);
      a2 = Data.init(bytes:count:)();
    }

    else
    {
      SQLiteRow.type(at:)(a2);

      if (!v6)
      {
        return 0;
      }
    }

    return a2;
  }

  __break(1u);
  return result;
}

uint64_t sub_1001570EC@<X0>(uint64_t (*a1)(void)@<X4>, uint64_t *a2@<X8>)
{
  result = a1();
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

uint64_t RawRepresentable<>.init(with:column:)@<X0>(char *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v63 = a1;
  v56 = a5;
  type metadata accessor for Optional();
  sub_100003A6C();
  v52 = v10;
  v53 = v9;
  v12 = *(v11 + 64);
  __chkstk_darwin(v9);
  v54 = &v51 - v13;
  v55 = a3;
  v60 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  type metadata accessor for Optional();
  sub_100003A6C();
  v58 = v16;
  v59 = v15;
  v18 = *(v17 + 64);
  __chkstk_darwin(v15);
  v20 = &v51 - v19;
  sub_100003A6C();
  v57 = v21;
  v23 = *(v22 + 64);
  __chkstk_darwin(v24);
  v26 = &v51 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v29 = &v51 - v28;
  v30 = *(a4 + 8);

  v32 = AssociatedTypeWitness;
  v30(v31, v63, AssociatedTypeWitness, a4);
  if (v5)
  {
  }

  v34 = v26;
  v36 = v58;
  v35 = v59;
  v37 = v29;
  v38 = v57;
  if (sub_100008D0C(v20, 1, v32) == 1)
  {

    (*(v36 + 8))(v20, v35);
    v39 = 1;
    v40 = v60;
    v41 = v56;
  }

  else
  {
    (*(v38 + 32))(v37, v20, v32);
    v42 = *(v38 + 16);
    v63 = v37;
    v42(v34, v37, v32);
    v43 = v54;
    v40 = v60;
    dispatch thunk of RawRepresentable.init(rawValue:)();
    if (sub_100008D0C(v43, 1, v40) == 1)
    {
      (*(v52 + 8))(v43, v53);
      v61 = 0;
      v62 = 0xE000000000000000;
      _StringGuts.grow(_:)(45);
      v44._object = 0x80000001001B3110;
      v44._countAndFlagsBits = 0xD000000000000011;
      String.append(_:)(v44);
      v45._countAndFlagsBits = _typeName(_:qualified:)();
      String.append(_:)(v45);

      v46._countAndFlagsBits = 0xD000000000000018;
      v46._object = 0x80000001001B3130;
      String.append(_:)(v46);
      v47 = v63;
      DefaultStringInterpolation.appendInterpolation<A>(_:)();
      v48 = v61;
      v49 = v62;
      sub_10011DC44();
      swift_allocError();
      *v50 = v48;
      *(v50 + 8) = v49;
      *(v50 + 16) = 0;
      *(v50 + 24) = 3;
      swift_willThrow();

      return (*(v38 + 8))(v47, v32);
    }

    (*(v38 + 8))(v63, v32);

    v41 = v56;
    (*(*(v40 - 8) + 32))(v56, v43, v40);
    v39 = 0;
  }

  return sub_1000051C0(v41, v39, 1, v40);
}

Swift::Void __swiftcall SQLiteContext.setError(message:code:)(Swift::String message, Swift::Int32 code)
{
  v3 = v2;
  v5 = String.utf8CString.getter();
  sqlite3_result_error(v3, (v5 + 32), code);
}

uint64_t SQLiteContext.setError<A>(_:message:code:)(uint64_t a1, uint64_t a2, unint64_t a3, int a4, sqlite3_context *a5, uint64_t a6)
{
  v12 = *(a6 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(a1);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (String.count.getter())
  {
    v25 = a2;
    v26 = a3;

    v16._countAndFlagsBits = 8238;
    v16._object = 0xE200000000000000;
    String.append(_:)(v16);
    v18 = v25;
    v17 = v26;
  }

  else
  {
    v18 = 0;
    v17 = 0xE000000000000000;
  }

  v25 = 0x203A726F727245;
  v26 = 0xE700000000000000;
  (*(v12 + 16))(v15, a1, a6);
  v19._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v19);

  v20 = v25;
  v21 = v26;
  v25 = v18;
  v26 = v17;

  v22._countAndFlagsBits = v20;
  v22._object = v21;
  String.append(_:)(v22);

  v23 = String.utf8CString.getter();

  sqlite3_result_error(a5, (v23 + 32), a4);
}

void (__cdecl **SQLiteDestructor.value.getter(void (__cdecl **result)(void *)))(void *)
{
  if (result)
  {
    if (result == 1)
    {
      if (qword_10021EA60 != -1)
      {
        swift_once();
      }

      return qword_100232DC0;
    }

    else if (result == 2)
    {
      return &_sqlite3_free;
    }
  }

  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SQLiteContext.setUInt32(_:)(Swift::UInt32 a1)
{
  if ((a1 & 0x80000000) != 0)
  {
    sub_10011DC44();
    v2 = swift_allocError();
    sub_100003E48(v2, v3);
  }

  else
  {
    sqlite3_result_int(v1, a1);
  }
}

void sub_100157998(sqlite3_int64 a1, sqlite3_context *a2)
{
  if (a1 < 0)
  {
    sub_10011DC44();
    v2 = swift_allocError();
    sub_100003E48(v2, v3);
  }

  else
  {
    sub_100008814(a1, a2);
  }
}

void SQLiteContext.setString(_:destructor:)(uint64_t a1, uint64_t a2, void (__cdecl **a3)(void *), sqlite3_context *a4)
{
  if (a2)
  {
    sub_100157B28(a1, a2, a4, a3);
  }

  else
  {

    sqlite3_result_null(a4);
  }
}

void sub_100157A50(const char *a1, sqlite3_context *a2, void (__cdecl **a3)(void *))
{
  v6 = strlen(a1);
  if (v6 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_13;
  }

  v7 = v6;
  if (v6 > 0x7FFFFFFF)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (!a3)
  {
    v8 = 0;
    goto LABEL_11;
  }

  if (a3 == 1)
  {
    if (qword_10021EA60 == -1)
    {
LABEL_9:
      v8 = qword_100232DC0;
      goto LABEL_11;
    }

LABEL_14:
    v9 = v7;
    swift_once();
    v7 = v9;
    goto LABEL_9;
  }

  if (a3 == 2)
  {
    v8 = &_sqlite3_free;
  }

  else
  {
    v8 = a3;
  }

LABEL_11:
  sqlite3_result_text(a2, a1, v7, v8);
}

void sub_100157B28(uint64_t a1, uint64_t a2, sqlite3_context *a3, void (__cdecl **a4)(void *))
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5[0] = a1;
    v5[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    v4 = v5;
    goto LABEL_6;
  }

  if ((a1 & 0x1000000000000000) == 0)
  {
LABEL_8:
    _StringGuts._slowWithCString<A>(_:)();
    return;
  }

  v4 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
LABEL_6:
  sub_100157A50(v4, a3, a4);
}

void SQLiteContext.setData(_:destructor:)(uint64_t a1, unint64_t a2, void (__cdecl **a3)(void *), sqlite3_context *a4)
{
  if (a2 >> 60 == 15)
  {

    sqlite3_result_null(a4);
    return;
  }

  v6 = a1;
  switch(a2 >> 62)
  {
    case 1uLL:
      if (a1 > a1 >> 32)
      {
        __break(1u);
        goto LABEL_24;
      }

      v8 = __DataStorage._bytes.getter();
      if (v8)
      {
        v18 = __DataStorage._offset.getter();
        v10 = v6 - v18;
        if (!__OFSUB__(v6, v18))
        {
LABEL_16:
          v8 += v10;
          goto LABEL_17;
        }

LABEL_24:
        __break(1u);
      }

LABEL_17:
      __DataStorage._length.getter();
      if (v8)
      {
        sub_100005854();
        v19 = Data.count.getter();
        SQLiteContext.setBuffer(_:ofSize:destructor:)(v8, v19, a3, a4);
      }

      else
      {
        sqlite3_result_null(a4);
      }

      v20 = sub_100005854();

      sub_100014A2C(v20, v21);
      return;
    case 2uLL:
      v7 = *(a1 + 16);

      v8 = __DataStorage._bytes.getter();
      if (!v8)
      {
        goto LABEL_17;
      }

      v9 = __DataStorage._offset.getter();
      v10 = v7 - v9;
      if (!__OFSUB__(v7, v9))
      {
        goto LABEL_16;
      }

      __break(1u);
LABEL_11:
      memset(v22, 0, 14);
LABEL_12:
      sub_100005854();
      v11 = Data.count.getter();
      SQLiteContext.setBuffer(_:ofSize:destructor:)(v22, v11, a3, a4);
      v12 = sub_100005854();
      sub_100014A2C(v12, v13);
      v14 = sub_100005854();
      sub_100014A2C(v14, v15);
      v16 = sub_100005854();
      sub_100014A40(v16, v17);
      return;
    case 3uLL:
      goto LABEL_11;
    default:
      v22[0] = a1;
      LOWORD(v22[1]) = a2;
      BYTE2(v22[1]) = BYTE2(a2);
      BYTE3(v22[1]) = BYTE3(a2);
      BYTE4(v22[1]) = BYTE4(a2);
      BYTE5(v22[1]) = BYTE5(a2);
      goto LABEL_12;
  }
}

void SQLiteContext.setBuffer(_:ofSize:destructor:)(uint64_t a1, uint64_t a2, void (__cdecl **a3)(void *), sqlite3_context *a4)
{
  v5 = a2;
  if (a2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_15;
  }

  if (a2 > 0x7FFFFFFF)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  a2 = a1;
  if (!a3)
  {
    v6 = 0;
    goto LABEL_11;
  }

  if (a3 == 1)
  {
    if (qword_10021EA60 == -1)
    {
LABEL_9:
      v6 = qword_100232DC0;
      goto LABEL_11;
    }

LABEL_16:
    v9 = a2;
    v7 = a4;
    v8 = v5;
    swift_once();
    a2 = v9;
    a4 = v7;
    v5 = v8;
    goto LABEL_9;
  }

  if (a3 == 2)
  {
    v6 = &_sqlite3_free;
  }

  else
  {
    v6 = a3;
  }

LABEL_11:

  sqlite3_result_blob(a4, a2, v5, v6);
}

uint64_t getEnumTagSinglePayload for SQLiteDestructor(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 8))
  {
    return (*a1 + 2147483645);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 2;
  if (v4 >= 4)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for SQLiteDestructor(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

uint64_t sub_100157FC0(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SQLiteSchemaDescribing.ensureValidSQLNameCharacters()()
{
  v2 = (*(v0 + 16))();
  v3 = 0;
  v4 = *(v2 + 16);
  for (i = v2 + 32; ; i += 40)
  {
    if (v4 == v3)
    {

      return;
    }

    if (v3 >= *(v2 + 16))
    {
      break;
    }

    sub_1000092B4(i, v8);
    v7 = v9;
    v6 = v10;
    sub_100007534(v8, v9);
    (*(*(v6 + 8) + 8))(v7);
    if (v1)
    {

      sub_100007378(v8);
      return;
    }

    ++v3;
    sub_100007378(v8);
  }

  __break(1u);
}

uint64_t SQLiteSchema.columns.getter()
{
  dispatch thunk of static CaseIterable.allCases.getter();
  sub_100046184(qword_10021F198, &qword_1001A4280);
  v0 = _arrayForceCast<A, B>(_:)();

  return v0;
}

uint64_t sub_100158190(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(a1 + 32);
  return SQLiteSchema.columns.getter();
}

uint64_t SQLiteBaseVTab.init(style:)(char a1)
{
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *(v1 + 40) = a1;
  *(v1 + 32) = swift_slowAlloc();
  v2 = (*(*v1 + 312))();
  v3 = *(v1 + 40);
  v4 = sub_100159CAC;
  if (!*(v1 + 40))
  {
    goto LABEL_4;
  }

  if (v3 == 1)
  {
    v4 = sub_100159CA8;
LABEL_4:
    v5 = v4;
    goto LABEL_6;
  }

  v5 = 0;
LABEL_6:
  if (v3 >= 2)
  {
    v6 = 0;
  }

  else
  {
    v6 = sub_100159288;
  }

  v7 = *(v1 + 32);
  *v7 = v2;
  *(v7 + 4) = 0;
  *(v7 + 8) = v5;
  *(v7 + 16) = sub_100159CA8;
  *(v7 + 24) = sub_1001591BC;
  *(v7 + 32) = sub_100159288;
  *(v7 + 40) = v6;
  *(v7 + 48) = sub_100159324;
  *(v7 + 56) = sub_1001593C4;
  *(v7 + 64) = sub_100159528;
  *(v7 + 72) = sub_10015952C;
  *(v7 + 80) = sub_100159614;
  *(v7 + 88) = sub_100159718;
  *(v7 + 96) = sub_1001597E8;
  *(v7 + 104) = 0u;
  *(v7 + 120) = 0u;
  *(v7 + 136) = 0u;
  *(v7 + 152) = 0u;
  *(v7 + 168) = 0u;
  *(v7 + 184) = 0u;
  return v1;
}

uint64_t SQLiteBaseVTab.deinit()
{
  v1 = v0;
  v2 = *(v0 + 32);

  if (qword_10021EA70 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_10000964C(v3, qword_100232DE0);

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v13 = v7;
    *v6 = 136315138;
    swift_beginAccess();
    if (*(v1 + 24))
    {
      v8 = *(v1 + 16);
      v9 = *(v1 + 24);
    }

    else
    {
      v9 = 0x80000001001B3660;
      v8 = 0xD000000000000010;
    }

    v10 = sub_100009684(v8, v9, &v13);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v4, v5, "Destroying vtable module with name %s", v6, 0xCu);
    sub_100007378(v7);
  }

  v11 = *(v1 + 24);

  return v1;
}

uint64_t SQLiteBaseVTab.moduleName.getter()
{
  sub_100003AD4();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t (*SQLiteBaseVTab.xCreate()())()
{
  v1 = sub_100159CAC;
  if (*(v0 + 40))
  {
    if (*(v0 + 40) == 1)
    {
      return sub_100159CA8;
    }

    else
    {
      return 0;
    }
  }

  return v1;
}

uint64_t (*SQLiteBaseVTab.xDestroy()())()
{
  if (*(v0 + 40) >= 2u)
  {
    return 0;
  }

  else
  {
    return sub_100159288;
  }
}

uint64_t SQLiteBaseVTab.register(_:database:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  swift_beginAccess();
  v8 = v4[3];
  v4[2] = a1;
  v4[3] = a2;

  v9 = *(a3 + 16);
  v10 = v4[4];
  v11 = String.utf8CString.getter();

  LODWORD(v4) = sqlite3_create_module_v2(v9, (v11 + 32), v10, v4, sub_100159834);

  if (v4)
  {
    sub_10011DC44();
    sub_100004248();
    *v13 = a1;
    *(v13 + 8) = a2;
    *(v13 + 16) = 0;
    *(v13 + 24) = 2;
    swift_willThrow();
  }

  return result;
}

uint64_t SQLiteBaseVTab.connect(db:argc:argv:outVTab:outError:)(sqlite3 *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = sqlite3_malloc(32);
  if (v8)
  {
    v9 = v8;
    sub_1000037B0();
    v11 = *((*(v10 + 320))() + 120);

    v13 = v11(v12, a2, a3);
    _StringGuts.grow(_:)(54);
    v14._object = 0x80000001001B3770;
    v14._countAndFlagsBits = 0xD000000000000019;
    String.append(_:)(v14);
    v15 = v13[2];
    v16 = v13[3];

    v17._countAndFlagsBits = v15;
    v17._object = v16;
    String.append(_:)(v17);

    v18._countAndFlagsBits = 0x20202020200A2820;
    v18._object = 0xEF20202020202020;
    String.append(_:)(v18);
    v19._countAndFlagsBits = (*(*v13 + 152))();
    String.append(_:)(v19);

    v21._countAndFlagsBits = 0x202020202020200ALL;
    v21._object = 0xEA00000000002920;
    String.append(_:)(v21);
    v22 = String.utf8CString.getter();

    v23 = sqlite3_declare_vtab(a1, (v22 + 32));

    if (!v23)
    {
      result = 0;
      *v9 = 0;
      v9[2] = 0;
      *(v9 + 2) = 0;
      *(v9 + 3) = v13;
      *a4 = v9;
      return result;
    }
  }

  return 1;
}

uint64_t SQLiteBaseVTab.disconnect(_:)(void *a1)
{
  v2 = a1[3];

  sqlite3_free(a1);
  return 0;
}

uint64_t SQLiteBaseVTab.open(_:for:)(void *a1)
{
  v2 = sqlite3_malloc(16);
  if (!v2)
  {
    return 1;
  }

  v3 = v2;
  sub_1000037B0();
  v5 = *((*(v4 + 160))() + 144);

  v7 = v5(v6);
  result = 0;
  *v3 = 0;
  v3[1] = v7;
  *a1 = v3;
  return result;
}

uint64_t SQLiteBaseVTab.close(_:for:)(void *a1)
{
  if (a1[1])
  {
  }

  sqlite3_free(a1);
  return 0;
}

uint64_t SQLiteBaseVTab.filter(_:for:idxNum:idxStr:arguments:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!*(a1 + 8))
  {
    return 1;
  }

  sub_1000037B0();
  v9 = *(v8 + 152);

  v9(a3, a4, a5);
  sub_100006B00();

  return a5;
}

uint64_t SQLiteBaseVTab.next(_:for:)(uint64_t a1)
{
  if (!*(a1 + 8))
  {
    return 1;
  }

  sub_1000037B0();
  v2 = *(v1 + 160);

  v2(v3);
  sub_100006B00();

  return v2;
}

BOOL SQLiteBaseVTab.eof(_:for:)(uint64_t a1)
{
  v1 = 1;
  if (*(a1 + 8))
  {
    sub_1000037B0();
    v3 = *(v2 + 168);

    LOBYTE(v3) = v3(v4);

    return (v3 & 1) == 0;
  }

  return v1;
}

uint64_t SQLiteBaseVTab.column(_:for:context:columnIndex:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 8);
  if (!v4)
  {
    return 1;
  }

  v6 = (*(*a2 + 144))(a4);
  v8 = v7;
  v9 = *(*v4 + 184);

  v10 = v9(v6, v8, a3);

  return v10;
}

uint64_t SQLiteBaseVTab.rowid(_:for:outRowid:)(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (!*(a1 + 8))
  {
    return 1;
  }

  sub_1000037B0();
  v5 = *(v4 + 176);

  v7 = v5(v6);

  result = 0;
  *a3 = v7;
  return result;
}

uint64_t SQLiteBaseVTab.Connection.init(_:argc:argv:)(uint64_t a1, int a2, uint64_t a3)
{
  v6 = type metadata accessor for String.Encoding();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  swift_weakInit();
  if (a2 < 3)
  {
    v8 = 0x80000001001B36A0;
    sub_10011DC44();
    sub_100004248();
    v10 = 0xD00000000000001CLL;
LABEL_8:
    *v9 = v10;
    *(v9 + 8) = v8;
    *(v9 + 16) = 0;
    *(v9 + 24) = 3;
    swift_willThrow();

    swift_weakDestroy();
    type metadata accessor for SQLiteBaseVTab.Connection();
    swift_deallocPartialClassInstance();
    return v3;
  }

  if (!*(a3 + 16))
  {
    sub_10011DC44();
    sub_100004248();
    v8 = 0xEE006C696E206465;
    v10 = 0x7463657078656E55;
    goto LABEL_8;
  }

  static String.Encoding.utf8.getter();
  v11 = String.init(cString:encoding:)();
  if (!v12)
  {
    v10 = 0xD000000000000014;
    v8 = 0x80000001001B3680;
    sub_10011DC44();
    sub_100004248();
    goto LABEL_8;
  }

  *(v3 + 16) = v11;
  *(v3 + 24) = v12;
  swift_beginAccess();
  swift_weakAssign();

  return v3;
}

uint64_t SQLiteBaseVTab.Cursor.init(_:)()
{
  *(v0 + 16) = 0;
  swift_weakInit();
  swift_beginAccess();
  swift_weakAssign();

  return v0;
}

Swift::Int32 __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SQLiteBaseVTab.Cursor.next()()
{
  v1 = *(v0 + 16);
  v2 = __OFADD__(v1, 1);
  v3 = v1 + 1;
  if (v2)
  {
    __break(1u);
  }

  else
  {
    *(v0 + 16) = v3;
    return static AvroPrimitiveSchema.null.getter();
  }

  return result;
}

Swift::Bool __swiftcall SQLiteBaseVTab.Cursor.hasMoreRows()()
{
  v1 = *(v0 + 16);
  sub_1000037B0();
  return v1 < (*(v2 + 192))();
}

uint64_t sub_100159010@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 24);
  *a2 = *(v3 + 16);
  a2[1] = v4;
}

uint64_t sub_10015905C(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  swift_beginAccess();
  v5 = *(v4 + 24);
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;
}

uint64_t sub_1001590BC(sqlite3 *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  if (!a1 || !a2 || !a5 || !a4 || !a6)
  {
    return 1;
  }

  SQLiteBaseVTab.connect(db:argc:argv:outVTab:outError:)(a1, a3, a4, a5);
  sub_100006B00();

  return a5;
}

uint64_t sub_100159140(uint64_t a1, uint64_t a2)
{
  if (!a1 || !a2)
  {
    return 1;
  }

  v3 = *(**(a1 + 24) + 128);

  v4 = v3(a2);

  return v4;
}

uint64_t sub_1001591C0(uint64_t a1)
{
  if (!a1)
  {
    return 1;
  }

  v2 = *(**(a1 + 24) + 136);

  v2(v3);
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    SQLiteBaseVTab.disconnect(_:)(a1);

    v4 = 0;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

uint64_t sub_10015928C(uint64_t a1, void *a2)
{
  v2 = 1;
  if (a1 && a2)
  {
    v4 = *(a1 + 24);

    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      v2 = SQLiteBaseVTab.open(_:for:)(a2);
    }
  }

  return v2;
}

uint64_t sub_100159328(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (!*result)
    {
      __break(1u);
      return result;
    }

    v2 = *(*result + 24);

    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      SQLiteBaseVTab.close(_:for:)(v1);

      return 0;
    }
  }

  return 1;
}

uint64_t sub_1001593C8(uint64_t result, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  if (!result || !a5)
  {
    return 1;
  }

  if ((a4 & 0x80000000) == 0)
  {
    v8 = result;
    v9 = a4;
    if (a4)
    {
      result = static Array._allocateBufferUninitialized(minimumCapacity:)();
      v10 = result;
      *(result + 16) = v9;
    }

    else
    {
      v10 = _swiftEmptyArrayStorage;
    }

    for (i = 0; v9 != i; ++i)
    {
      if (__OFADD__(i, 1))
      {
        __break(1u);
        goto LABEL_21;
      }

      v12 = *(a5 + 8 * i);
      if (!v12)
      {
        v10[2] = 0;

        return 1;
      }

      v10[i + 4] = v12;
    }

    v10[2] = v9;
    result = objc_autoreleasePoolPush();
    if (!*v8)
    {
      goto LABEL_22;
    }

    v13 = result;
    v14 = *(*v8 + 24);

    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      v16 = SQLiteBaseVTab.filter(_:for:idxNum:idxStr:arguments:)(v8, v15, a2, a3, v10);
    }

    else
    {

      v16 = 1;
    }

    objc_autoreleasePoolPop(v13);
    return v16;
  }

LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
  return result;
}

uint64_t sub_100159558(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  if (!a1)
  {
    return 1;
  }

  result = objc_autoreleasePoolPush();
  if (*a1)
  {
    v5 = result;
    v6 = *(*a1 + 24);

    sub_100003AD4();
    if (swift_weakLoadStrong())
    {
      v7 = a2(a1);
    }

    else
    {

      v7 = 1;
    }

    objc_autoreleasePoolPop(v5);
    return v7;
  }

  __break(1u);
  return result;
}

uint64_t sub_100159640(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a1 || !a2)
  {
    return 1;
  }

  result = objc_autoreleasePoolPush();
  if (*a1)
  {
    v7 = result;
    v8 = *(*a1 + 24);

    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      v9 = SQLiteBaseVTab.column(_:for:context:columnIndex:)(a1, v8, a2, a3);
    }

    else
    {

      v9 = 1;
    }

    objc_autoreleasePoolPop(v7);
    return v9;
  }

  __break(1u);
  return result;
}

uint64_t sub_10015971C(uint64_t a1, uint64_t *a2)
{
  if (!a1 || !a2)
  {
    return 1;
  }

  result = objc_autoreleasePoolPush();
  if (*a1)
  {
    v5 = result;
    v6 = *(*a1 + 24);

    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      v8 = SQLiteBaseVTab.rowid(_:for:outRowid:)(a1, v7, a2);
    }

    else
    {

      v8 = 1;
    }

    objc_autoreleasePoolPop(v5);
    return v8;
  }

  __break(1u);
  return result;
}

uint64_t SQLiteBaseVTab.__allocating_init(style:)()
{
  sub_100006B00();
  v1 = swift_allocObject();
  SQLiteBaseVTab.init(style:)(v0);
  return v1;
}

uint64_t sub_100159828(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t SQLiteBaseVTab.__deallocating_deinit()
{
  SQLiteBaseVTab.deinit();

  return _swift_deallocClassInstance(v0, 41, 7);
}

uint64_t SQLiteBaseVTab.Connection.tableName.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t sub_1001598A0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  *a2 = result;
  return result;
}

uint64_t sub_1001598EC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  return swift_weakAssign();
}

uint64_t SQLiteBaseVTab.Connection.__allocating_init(_:argc:argv:)(uint64_t a1, int a2, uint64_t a3)
{
  v6 = swift_allocObject();
  SQLiteBaseVTab.Connection.init(_:argc:argv:)(a1, a2, a3);
  return v6;
}

uint64_t SQLiteBaseVTab.Connection.__deallocating_deinit()
{
  v1 = *(v0 + 24);

  swift_weakDestroy();

  return _swift_deallocClassInstance(v0, 40, 7);
}

uint64_t sub_1001599E8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  *a2 = result;
  return result;
}

uint64_t sub_100159A34(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  return swift_weakAssign();
}

uint64_t SQLiteBaseVTab.Cursor.__allocating_init(_:)()
{
  v0 = swift_allocObject();
  SQLiteBaseVTab.Cursor.init(_:)();
  return v0;
}

unint64_t sub_100159B30()
{
  result = qword_10021F220;
  if (!qword_10021F220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021F220);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SQLiteBaseVTab.Style(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t SQLiteColumnDescribing<>.init(index:)@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  dispatch thunk of static CaseIterable.allCases.getter();
  if (Array.count.getter() <= a1)
  {
    v6 = 1;
  }

  else
  {
    Array.subscript.getter();
    v6 = 0;
  }

  return sub_1000051C0(a3, v6, 1, a2);
}

uint64_t SQLiteColumnDescribing.isValid(_:)(void *a1, uint64_t a2, uint64_t a3)
{
  (*(a3 + 24))(a2, a3);
  v8 = (*(v7 + 24))();
  v9 = 1;
  v10 = 0;
  LOBYTE(v11) = 0;
  v12 = 1;
  switch(v8)
  {
    case 1:
      v10 = 0;
      v9 = 0;
      v12 = 2;
      LOBYTE(v11) = 1;
      goto LABEL_5;
    case 2:
    case 3:
    case 4:
    case 5:
    case 9:
      v10 = 0;
      LOBYTE(v11) = 0;
      v9 = 0;
      v12 = 0;
      goto LABEL_5;
    case 6:
    case 7:
    case 8:
      LOBYTE(v11) = 0;
      v9 = 0;
      v12 = 3;
      v10 = 1;
      goto LABEL_5;
    case 10:
LABEL_11:
      sub_10011DC44();
      swift_allocError();
      *v17 = 0xD00000000000003ELL;
      *(v17 + 8) = 0x80000001001B3250;
      *(v17 + 16) = 0;
      *(v17 + 24) = 3;
      swift_willThrow();
      return v11 & 1;
    default:
LABEL_5:
      v19 = v9;
      v20 = v12;
      v13 = a1[3];
      v14 = a1[4];
      sub_100007534(a1, v13);
      v15 = (*(v14 + 40))(v13, v14);
      if (!v3)
      {
        v16 = 1;
        switch(v15)
        {
          case 1:
            v16 = 3;
            goto LABEL_14;
          case 2:
            v16 = 4;
            goto LABEL_14;
          case 3:
            v16 = 2;
            goto LABEL_14;
          case 4:
            if (SQLiteColumnDescribing.nullable.getter(a2, a3))
            {
              sub_100007534(a1, a1[3]);
              swift_getDynamicType();
              switch((*(a1[4] + 24))())
              {
                case 1u:
                  return v11 & 1;
                case 2u:
                case 3u:
                case 4u:
                case 5u:
                case 9u:
                  v11 = 1u >> v20;
                  break;
                case 6u:
                case 7u:
                case 8u:
                  LOBYTE(v11) = v10;
                  break;
                case 0xAu:
                  goto LABEL_11;
                default:
                  LOBYTE(v11) = v19;
                  break;
              }
            }

            else
            {
              LOBYTE(v11) = 0;
            }

            return v11 & 1;
          default:
LABEL_14:
            LOBYTE(v11) = v16 == dword_1001A4400[v20];
            break;
        }
      }

      return v11 & 1;
  }
}

BOOL static SQLiteColumnDescribing.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 32);
  v7 = v6(a3, a4);
  v9 = v8;
  if (v7 == v6(a3, a4) && v9 == v10)
  {

    goto LABEL_8;
  }

  v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

  result = 0;
  if (v12)
  {
LABEL_8:
    v14 = *(a4 + 24);
    v15 = v14(a3, a4);
    return v15 == v14(a3, a4);
  }

  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SQLiteColumnDescribing.ensureValidSQLNameCharacters()()
{
  v2 = v1;
  v3 = v0;
  v4 = type metadata accessor for CharacterSet();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14[0] = (*(v2 + 32))(v3, v2, v7);
  v14[1] = v10;
  if (qword_10021EA68 != -1)
  {
    swift_once();
  }

  sub_10000964C(v4, qword_100232DC8);
  CharacterSet.inverted.getter();
  sub_10000527C();
  StringProtocol.rangeOfCharacter(from:options:range:)();
  v12 = v11;
  (*(v5 + 8))(v9, v4);

  if ((v12 & 1) == 0)
  {
    sub_10011DC44();
    swift_allocError();
    *(v13 + 8) = 0;
    *(v13 + 16) = 0;
    *v13 = 10;
    *(v13 + 24) = 4;
    swift_willThrow();
  }
}

uint64_t SQLiteColumnDescribing<>.getColumnIndex()(uint64_t a1, uint64_t a2)
{
  dispatch thunk of static CaseIterable.allCases.getter();
  type metadata accessor for Array();
  swift_getWitnessTable();
  v3 = *(a2 + 16);
  Collection<>.firstIndex(of:)();

  if (v7)
  {
    dispatch thunk of RawRepresentable.rawValue.getter();
    sub_10011DC44();
    swift_allocError();
    *v4 = v6;
    *(v4 + 8) = v7;
    *(v4 + 16) = 0;
    *(v4 + 24) = 1;
    return swift_willThrow();
  }

  result = v6;
  if (v6 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (v6 > 0x7FFFFFFF)
  {
LABEL_7:
    __break(1u);
  }

  return result;
}

void Bool.bind(to:at:)(uint64_t *a1, int a2, char a3)
{
  v6 = *a1;
  sub_100154FFC();
  if (!v3)
  {
    sub_100005AD8();
    if (v7 != v8)
    {
      __break(1u);
LABEL_9:
      __break(1u);
      return;
    }

    sub_100008BD0();
    if (!(v7 ^ v8 | v10))
    {
      goto LABEL_9;
    }

    if (sqlite3_bind_int(v9, a2, a3 & 1))
    {
      sub_10000AD2C();
      sub_100004248();
      sub_1000064E4(v11, 18);
    }
  }
}

void Float.bind(to:at:)(uint64_t *a1, int a2, float a3)
{
  v6 = *a1;
  sub_100154FFC();
  if (!v3)
  {
    sub_100005AD8();
    if (v7 != v8)
    {
      __break(1u);
LABEL_9:
      __break(1u);
      return;
    }

    sub_100008BD0();
    if (!(v7 ^ v8 | v10))
    {
      goto LABEL_9;
    }

    if (sqlite3_bind_double(v9, a2, a3))
    {
      sub_10000AD2C();
      sub_100004248();
      sub_1000064E4(v11, 21);
    }
  }
}

void Double.bind(to:at:)(uint64_t *a1, int a2, double a3)
{
  v6 = *a1;
  sub_100154FFC();
  if (!v3)
  {
    sub_100005AD8();
    if (v7 != v8)
    {
      __break(1u);
LABEL_9:
      __break(1u);
      return;
    }

    sub_100008BD0();
    if (!(v7 ^ v8 | v10))
    {
      goto LABEL_9;
    }

    if (sqlite3_bind_double(v9, a2, a3))
    {
      sub_10000AD2C();
      sub_100004248();
      sub_1000064E4(v11, 21);
    }
  }
}

void String.bind(to:at:)()
{
  sub_100006A3C();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = type metadata accessor for String.Encoding();
  sub_100003A6C();
  v12 = v11;
  v14 = *(v13 + 64);
  __chkstk_darwin(v15);
  v17 = v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *v9;
  sub_100154FFC();
  if (v0)
  {
    goto LABEL_11;
  }

  sub_100005AD8();
  if (v19 != v20)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  sub_100008BD0();
  if (!(v19 ^ v20 | v22))
  {
    goto LABEL_13;
  }

  v1 = v21;
  v26[0] = v5;
  v26[1] = v3;
  static String.Encoding.utf8.getter();
  sub_10000527C();
  v18 = StringProtocol.cString(using:)();
  (*(v12 + 8))(v17, v10);
  if (qword_10021EA60 != -1)
  {
LABEL_14:
    sub_1000046D0();
    swift_once();
  }

  if (v18)
  {
    v23 = (v18 + 32);
  }

  else
  {
    v23 = 0;
  }

  v24 = sqlite3_bind_text(v1, v7, v23, -1, qword_100232DC0);

  if (v24)
  {
    sub_10011DC44();
    sub_100004248();
    sub_1000064E4(v25, 21);
  }

LABEL_11:
  sub_100007FD4();
}

void sub_10015A840()
{
  v1 = *v0;
  v2 = v0[1];
  String.bind(to:at:)();
}

uint64_t Data.bind(to:at:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v6 = v4;
  v10 = a1;
  v11 = *a1;
  v126 = *(a1 + 8);

  sub_100007E54(v12, v13, v14, v15, v16, v17, v18, v19, v112, v119, v126);

  result = sub_100007E54(v20, v21, v22, v23, v24, v25, v26, v27, v113, v120, v126);
  switch(a4 >> 62)
  {
    case 1uLL:
      if (a3 > a3 >> 32)
      {
        __break(1u);
        goto LABEL_29;
      }

      sub_100007E54(v79, v80, v81, v82, v83, v84, v85, v86, v114, v121, v126);
      swift_retain_n();

      sub_100007E54(v87, v88, v89, v90, v91, v92, v93, v94, v118, v125, v126);
      v95 = sub_100003674();
      sub_100014924(v95, v96);
      v97 = sub_100003674();
      sub_100014924(v97, v98);
      v5 = __DataStorage._bytes.getter();
      if (v5)
      {
        result = __DataStorage._offset.getter();
        if (__OFSUB__(a3, result))
        {
          goto LABEL_31;
        }

        v5 += a3 - result;
      }

      __DataStorage._length.getter();
      result = sub_100154FFC();
      if (v4)
      {
        goto LABEL_26;
      }

      if (a2 < 0xFFFFFFFF80000000)
      {
        goto LABEL_34;
      }

      if (a2 > 0x7FFFFFFF)
      {
        goto LABEL_36;
      }

      v6 = result;
      sub_100003674();
      result = Data.count.getter();
      if (result < 0xFFFFFFFF80000000)
      {
        goto LABEL_37;
      }

      LODWORD(v31) = result;
      if (result > 0x7FFFFFFF)
      {
        goto LABEL_38;
      }

      goto LABEL_23;
    case 2uLL:
      v48 = *(a3 + 16);

      sub_100007E54(v49, v50, v51, v52, v53, v54, v55, v56, v114, v121, v126);
      swift_retain_n();
      swift_retain_n();

      sub_100007E54(v57, v58, v59, v60, v61, v62, v63, v64, v116, v123, v126);
      v65 = sub_100003674();
      sub_100014924(v65, v66);
      v67 = sub_100003674();
      sub_100014924(v67, v68);
      v5 = __DataStorage._bytes.getter();
      if (!v5)
      {
        goto LABEL_6;
      }

      result = __DataStorage._offset.getter();
      if (__OFSUB__(v48, result))
      {
        __break(1u);
LABEL_31:
        __break(1u);
LABEL_32:
        __break(1u);
LABEL_33:
        __break(1u);
LABEL_34:
        __break(1u);
        goto LABEL_35;
      }

      v5 += v48 - result;
LABEL_6:
      __DataStorage._length.getter();
      result = sub_100154FFC();
      v10 = v4;
      if (v4)
      {
        goto LABEL_26;
      }

      if (a2 < 0xFFFFFFFF80000000)
      {
        goto LABEL_32;
      }

      if (a2 > 0x7FFFFFFF)
      {
        goto LABEL_33;
      }

      v6 = result;
      sub_100003674();
      result = Data.count.getter();
      if (result >= 0xFFFFFFFF80000000)
      {
        v31 = result;
        if (result > 0x7FFFFFFF)
        {
          __break(1u);
LABEL_12:
          sub_100007E54(result, v29, v30, v31, v32, v33, v34, v35, v114, v121, v126);

          sub_100007E54(v69, v70, v71, v72, v73, v74, v75, v76, v117, v124, v126);

          v77 = sub_100003674();
          sub_100014924(v77, v78);
          v47 = 0;
          v46 = 0;
LABEL_13:
          sub_10015B198(v47, v46, v10, a2, a3, a4);
          goto LABEL_27;
        }

LABEL_23:
        if (qword_10021EA60 != -1)
        {
LABEL_29:
          sub_1000046D0();
          v111 = v110;
          swift_once();
          LODWORD(v31) = v111;
        }

        v99 = sqlite3_bind_blob(v6, a2, v5, v31, qword_100232DC0);
        if (v99)
        {
          v100 = v99;
          sub_10011DC44();
          sub_100004248();
          *v101 = v100;
          *(v101 + 8) = 0xD000000000000013;
          *(v101 + 16) = 0x80000001001B37D0;
          *(v101 + 24) = 0;
          swift_willThrow();
        }

LABEL_26:

        sub_100062E58(&v126);
LABEL_27:
        v102 = sub_100003674();
        sub_100014A40(v102, v103);

        sub_100062E58(&v126);
        v104 = sub_100003674();
        sub_100014A40(v104, v105);

        sub_100062E58(&v126);
        v106 = sub_100003674();
        sub_100014A40(v106, v107);

        sub_100062E58(&v126);
        v108 = sub_100003674();
        return sub_100014A40(v108, v109);
      }

LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      return result;
    case 3uLL:
      goto LABEL_12;
    default:
      sub_100007E54(result, v29, v30, v31, v32, v33, v34, v35, v114, v121, v126);

      sub_100007E54(v36, v37, v38, v39, v40, v41, v42, v43, v115, v122, v126);

      v44 = sub_100003674();
      sub_100014924(v44, v45);
      v46 = a4 & 0xFFFFFFFFFFFFFFLL;
      v47 = a3;
      goto LABEL_13;
  }
}

void Array<A>.bind(to:at:)()
{
  sub_100006A3C();
  v2 = v1;
  v4 = v3;
  v20 = v5;
  v19 = v6;
  sub_100003A6C();
  v8 = v7;
  v10 = *(v9 + 64);
  __chkstk_darwin(v11);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = Array.count.getter();
  if ((v14 & 0x8000000000000000) == 0)
  {
    v15 = v14;
    v16 = 0;
    v17 = (v8 + 8);
    while (1)
    {
      if (v15 == v16)
      {
LABEL_7:
        sub_100007FD4();
        return;
      }

      if (__OFADD__(v16, 1))
      {
        break;
      }

      Array.subscript.getter();
      if (__OFADD__(v16, v20))
      {
        goto LABEL_9;
      }

      (*(v2 + 8))(v19, v16 + v20, v4, v2);
      (*v17)(v13, v4);
      ++v16;
      if (v0)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
LABEL_9:
    __break(1u);
  }

  __break(1u);
}

{
  sub_100006A3C();
  v2 = v1;
  v4 = v3;
  v5 = 0;
  v7 = *(v6 + 16);
  v8 = (v6 + 32);
  while (1)
  {
    if (v7 == v5)
    {
LABEL_5:
      sub_100007FD4();
      return;
    }

    v9 = v8[3];
    v10 = v8[4];
    sub_100007534(v8, v9);
    v11 = v5 + v2;
    if (__OFADD__(v5, v2))
    {
      break;
    }

    ++v5;
    (*(v10 + 8))(v4, v11, v9, v10);
    v8 += 5;
    if (v0)
    {
      goto LABEL_5;
    }
  }

  __break(1u);
}

void sub_10015AD7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a4 - 8);
  v6 = *v4;
  v7 = *(a3 + 16);
  Array<A>.bind(to:at:)();
}

void Optional<A>.bind(to:at:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_100006A3C();
  a19 = v21;
  a20 = v22;
  a10 = v20;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v31 = *(v25 - 8);
  v32 = *(v31 + 64);
  __chkstk_darwin(v29);
  v34 = &a9 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = *(v35 + 16);
  v37 = *(v36 - 8);
  v38 = *(v37 + 64);
  v40 = __chkstk_darwin(v39);
  v42 = &a9 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v31 + 16))(v34, v43, v40);
  if (sub_100008D0C(v34, 1, v36) != 1)
  {
    (*(v37 + 32))(v42, v34, v36);
    (*(v24 + 8))(v30, v28, v36, v24);
    (*(v37 + 8))(v42, v36);
    goto LABEL_8;
  }

  (*(v31 + 8))(v34, v26);
  v44 = *v30;
  v45 = a10;
  sub_100154FFC();
  if (v45)
  {
LABEL_8:
    sub_100007FD4();
    return;
  }

  sub_100005AD8();
  if (v46 == v47)
  {
    sub_100008BD0();
    if (!(v46 ^ v47 | v49))
    {
      goto LABEL_10;
    }

    sqlite3_bind_null(v48, v28);
    goto LABEL_8;
  }

  __break(1u);
LABEL_10:
  __break(1u);
}

void RawRepresentable<>.bind(to:at:)()
{
  sub_100006A3C();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_100003A6C();
  v8 = v7;
  v10 = *(v9 + 64);
  __chkstk_darwin(v11);
  dispatch thunk of RawRepresentable.rawValue.getter();
  (*(v1 + 8))(v5, v3, AssociatedTypeWitness, v1);
  v12 = *(v8 + 8);
  v13 = sub_100003674();
  v14(v13);
  sub_100007FD4();
}

uint64_t sub_10015B198(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v21 = a1;
  v23 = WORD2(a2);
  v22 = a2;
  v13 = *a3;
  v14 = sub_100154FFC();
  if (v6)
  {
    goto LABEL_9;
  }

  if (a4 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_13;
  }

  if (a4 > 0x7FFFFFFF)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v7 = v14;
  v15 = Data.count.getter();
  if (v15 < 0xFFFFFFFF80000000)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v8 = v15;
  if (v15 > 0x7FFFFFFF)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (qword_10021EA60 != -1)
  {
LABEL_16:
    swift_once();
  }

  v16 = sqlite3_bind_blob(v7, a4, &v21, v8, qword_100232DC0);
  if (!v16)
  {

    v24 = *(a3 + 1);
    v19 = &v24;
    goto LABEL_10;
  }

  v17 = v16;
  sub_10011DC44();
  swift_allocError();
  *v18 = v17;
  *(v18 + 8) = 0xD000000000000013;
  *(v18 + 16) = 0x80000001001B37D0;
  *(v18 + 24) = 0;
  swift_willThrow();
LABEL_9:

  v25 = *(a3 + 1);
  v19 = &v25;
LABEL_10:
  sub_100062E58(v19);
  return sub_100014A40(a5, a6);
}

uint64_t sub_10015B364(char a1, unint64_t a2)
{
  if ((a2 & 0x8000000000000000) != 0)
  {
    v5 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);

    AvroValue.schema.getter();
    v6 = sub_1000078A0();
    v8 = _s9SwiftAvro0B6SchemaV23__derived_struct_equalsySbAC_ACtFZ_0(v6, v7);

    if (v8)
    {

      a1 = 1;
    }

    else
    {
      v11 = AvroValue.schema.getter();
      __chkstk_darwin(v11);
      v10[2] = &v11;
      sub_100161250(sub_100163CE0, v10, v5);
      sub_10000835C();
    }
  }

  else
  {
    v4 = AvroValue.schema.getter();
    a1 = _s9SwiftAvro0B6SchemaV23__derived_struct_equalsySbAC_ACtFZ_0(a2, v4);
  }

  return a1 & 1;
}

unint64_t sub_10015B47C@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = result >> 61;
  switch(result >> 61)
  {
    case 1uLL:
      v5 = *((result & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v6 = *((result & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
      v2 = *((result & 0x1FFFFFFFFFFFFFFFLL) + 0x20);

      result = _swiftEmptyArrayStorage;
      goto LABEL_9;
    case 2uLL:
      v5 = *((result & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v6 = *((result & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
      v2 = *((result & 0x1FFFFFFFFFFFFFFFLL) + 0x20);

      result = Dictionary.init(dictionaryLiteral:)();
      goto LABEL_9;
    case 3uLL:
      v8 = *((result & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
      schema.type = *((result & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      schema.name = v8;
      schema.namespace = *((result & 0x1FFFFFFFFFFFFFFFLL) + 0x30);
      schema.fields._rawValue = *((result & 0x1FFFFFFFFFFFFFFFLL) + 0x40);
      sub_1000967A0(&schema, __src);
      AvroRecord.init(schema:)(__src, &schema);
      v5 = *__src;
      v6 = *&__src[8];
      v2 = *&__src[16];
      result = *&__src[24];
      v12 = *&__src[32];
      v13 = *&__src[48];
      goto LABEL_9;
    case 4uLL:
      v6 = *((result & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      if (*(v6 + 16))
      {
        v7 = *(v6 + 32);

        sub_10015B47C(__src, v7);

        v5 = swift_allocObject();
        *(v5 + 16) = v6;
        result = memcpy((v5 + 24), __src, 0x41uLL);
        *(v5 + 96) = 0;
LABEL_9:
        *a2 = v5;
        *(a2 + 8) = v6;
        *(a2 + 16) = v2;
        *(a2 + 24) = result;
        v9 = v13;
        *(a2 + 32) = v12;
        *(a2 + 48) = v9;
        *(a2 + 64) = v3;
      }

      else
      {
        __break(1u);
      }

      return result;
    default:
      v2 = *(result + 16);
      result = 7;
      v5 = v2;
      v6 = v2;
      switch(v2)
      {
        case 1uLL:
          v6 = 0;
          v2 = 0;
          result = 0;
          v5 = 1;
          break;
        case 2uLL:
          sub_10000EC8C();
          result = 1;
          break;
        case 3uLL:
          sub_10000EC8C();
          result = 2;
          break;
        case 4uLL:
          sub_10000EC8C();
          result = 3;
          break;
        case 5uLL:
          sub_10000EC8C();
          result = 4;
          break;
        case 6uLL:
          v5 = 0;
          v2 = 0;
          v6 = 0xE000000000000000;
          result = 5;
          break;
        case 7uLL:
          v6 = 0;
          v2 = 0;
          v5 = _swiftEmptyArrayStorage;
          result = 6;
          break;
        default:
          goto LABEL_9;
      }

      goto LABEL_9;
  }
}

uint64_t sub_10015B6BC()
{
  sub_10001AE80();
  result = swift_allocObject();
  *(result + 16) = 0;
  static AvroSchema.null = result;
  return result;
}

uint64_t *AvroSchema.null.unsafeMutableAddressor()
{
  if (qword_10021F5B0 != -1)
  {
    sub_10000B150();
  }

  return &static AvroSchema.null;
}

uint64_t sub_10015B75C()
{
  result = swift_allocObject();
  *(result + 16) = 1;
  static AvroSchema.BOOLean = result;
  return result;
}

uint64_t *AvroSchema.BOOLean.unsafeMutableAddressor()
{
  if (qword_10021F5B8 != -1)
  {
    swift_once();
  }

  return &static AvroSchema.BOOLean;
}

uint64_t sub_10015B814()
{
  result = swift_allocObject();
  *(result + 16) = 2;
  static AvroSchema.int = result;
  return result;
}

uint64_t *AvroSchema.int.unsafeMutableAddressor()
{
  if (qword_10021F5C0 != -1)
  {
    swift_once();
  }

  return &static AvroSchema.int;
}

uint64_t sub_10015B8CC()
{
  result = swift_allocObject();
  *(result + 16) = 3;
  static AvroSchema.long = result;
  return result;
}

uint64_t *AvroSchema.long.unsafeMutableAddressor()
{
  if (qword_10021F5C8 != -1)
  {
    swift_once();
  }

  return &static AvroSchema.long;
}

uint64_t sub_10015B984()
{
  result = swift_allocObject();
  *(result + 16) = 4;
  static AvroSchema.float = result;
  return result;
}

uint64_t *AvroSchema.float.unsafeMutableAddressor()
{
  if (qword_10021F5D0 != -1)
  {
    swift_once();
  }

  return &static AvroSchema.float;
}

uint64_t sub_10015BA3C()
{
  result = swift_allocObject();
  *(result + 16) = 5;
  static AvroSchema.double = result;
  return result;
}

uint64_t *AvroSchema.double.unsafeMutableAddressor()
{
  if (qword_10021F5D8 != -1)
  {
    swift_once();
  }

  return &static AvroSchema.double;
}

uint64_t sub_10015BAF4()
{
  result = swift_allocObject();
  *(result + 16) = 6;
  static AvroSchema.string = result;
  return result;
}

uint64_t *AvroSchema.string.unsafeMutableAddressor()
{
  if (qword_10021F5E0 != -1)
  {
    swift_once();
  }

  return &static AvroSchema.string;
}

uint64_t sub_10015BBAC()
{
  result = swift_allocObject();
  *(result + 16) = 7;
  static AvroSchema.bytes = result;
  return result;
}

uint64_t *AvroSchema.bytes.unsafeMutableAddressor()
{
  if (qword_10021F5E8 != -1)
  {
    swift_once();
  }

  return &static AvroSchema.bytes;
}

uint64_t sub_10015BC6C(void *a1, uint64_t *a2)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v3 = *a2;

  return v3;
}

uint64_t static AvroSchema.array(itemSchema:)(uint64_t a1)
{
  sub_100015B68();
  v2 = swift_allocObject();
  *(v2 + 16) = 0x7961727261;
  *(v2 + 24) = 0xE500000000000000;
  *(v2 + 32) = a1;

  return v2 | 0x2000000000000000;
}

uint64_t static AvroSchema.array(schema:)()
{
  sub_10000705C();
  sub_100015B68();
  v1 = swift_allocObject();
  sub_10016404C(v1);

  return v0 | 0x2000000000000000;
}

uint64_t static AvroSchema.map(valueSchema:)(uint64_t a1)
{
  sub_100015B68();
  v2 = swift_allocObject();
  *(v2 + 16) = 7364973;
  *(v2 + 24) = 0xE300000000000000;
  *(v2 + 32) = a1;

  return v2 | 0x4000000000000000;
}

uint64_t static AvroSchema.map(schema:)()
{
  sub_10000705C();
  sub_100015B68();
  v1 = swift_allocObject();
  sub_10016404C(v1);

  return v0 | 0x4000000000000000;
}

uint64_t static AvroSchema.record(name:fields:)()
{
  sub_10000705C();
  sub_10000FF64();
  v3 = swift_allocObject();
  sub_100163FE8();
  v4[2] = v5;
  v4[3] = v6;
  v4[4] = v2;
  v4[5] = v1;
  v4[6] = 0;
  v4[7] = 0;
  v4[8] = v0;

  return v3 | 0x6000000000000000;
}

void __swiftcall AvroRecordSchema.init(name:fields:)(SwiftAvro::AvroRecordSchema *__return_ptr retstr, Swift::String name, Swift::OpaquePointer fields)
{
  retstr->type._countAndFlagsBits = 0x64726F636572;
  retstr->type._object = 0xE600000000000000;
  retstr->name = name;
  retstr->namespace.value._countAndFlagsBits = 0;
  retstr->namespace.value._object = 0;
  retstr->fields = fields;
}

uint64_t static AvroSchema.record(name:namespace:fields:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_10000FF64();
  v10 = swift_allocObject();

  sub_100163FE8();
  *(v10 + 16) = v11;
  *(v10 + 24) = v12;
  *(v10 + 32) = a1;
  *(v10 + 40) = a2;
  *(v10 + 48) = a3;
  *(v10 + 56) = a4;
  result = v10 | 0x6000000000000000;
  *(v10 + 64) = a5;
  return result;
}

void __swiftcall AvroRecordSchema.init(name:namespace:fields:)(SwiftAvro::AvroRecordSchema *__return_ptr retstr, Swift::String name, Swift::String a3, Swift::OpaquePointer fields)
{
  retstr->type._countAndFlagsBits = 0x64726F636572;
  retstr->type._object = 0xE600000000000000;
  retstr->name = name;
  retstr->namespace.value = a3;
  retstr->fields = fields;
}

uint64_t static AvroSchema.record(schema:)(uint64_t a1)
{
  sub_10000FF64();
  v2 = swift_allocObject();
  v3 = *(a1 + 16);
  *(v2 + 16) = *a1;
  *(v2 + 32) = v3;
  *(v2 + 48) = *(a1 + 32);
  *(v2 + 64) = *(a1 + 48);
  sub_1000967A0(a1, v5);
  return v2 | 0x6000000000000000;
}

unint64_t static AvroSchema.union(of:)(Swift::OpaquePointer a1)
{
  sub_1000068B4();
  v2 = swift_allocObject();
  AvroUnionSchema.init(of:)(a1);
  *(v2 + 16) = a1;

  return v2 | 0x8000000000000000;
}

SwiftAvro::AvroUnionSchema __swiftcall AvroUnionSchema.init(of:)(SwiftAvro::AvroUnionSchema of)
{
  v1 = *(of.schemas._rawValue + 2);
  if (v1)
  {
    v2 = 32;
    while (v1)
    {
      v3 = *(of.schemas._rawValue + v2);
      v2 += 8;
      --v1;
      if (v3 >> 61 == 4)
      {
        __break(1u);
        return of;
      }
    }
  }

  else
  {
    __break(1u);
  }

  return of;
}

unint64_t static AvroSchema.union(schema:)(uint64_t a1)
{
  sub_1000068B4();
  v2 = swift_allocObject();
  *(v2 + 16) = a1;

  return v2 | 0x8000000000000000;
}

uint64_t AvroSchema.init(for:)()
{
  sub_10001AE80();
  result = swift_allocObject();
  *(result + 16) = 1;
  return result;
}

{
  sub_10001AE80();
  result = swift_allocObject();
  *(result + 16) = 2;
  return result;
}

{
  sub_10001AE80();
  result = swift_allocObject();
  *(result + 16) = 3;
  return result;
}

{
  sub_10001AE80();
  result = swift_allocObject();
  *(result + 16) = 4;
  return result;
}

{
  sub_10001AE80();
  result = swift_allocObject();
  *(result + 16) = 5;
  return result;
}

{
  sub_10001AE80();
  result = swift_allocObject();
  *(result + 16) = 6;
  return result;
}

{
  sub_10001AE80();
  result = swift_allocObject();
  *(result + 16) = 7;
  return result;
}

uint64_t _s9SwiftAvro0B6SchemaV23__derived_struct_equalsySbAC_ACtFZ_0(unint64_t a1, unint64_t a2)
{
  switch(a1 >> 61)
  {
    case 1uLL:
      if (a2 >> 61 != 1)
      {
        goto LABEL_21;
      }

      goto LABEL_15;
    case 2uLL:
      if (a2 >> 61 != 2)
      {
        goto LABEL_21;
      }

LABEL_15:
      v18 = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
      v19 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
      v20 = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x10) == *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10) && *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x18) == *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
      if (v20 || (sub_10000FFF0() & 1) != 0)
      {

        v21 = _s9SwiftAvro0B6SchemaV23__derived_struct_equalsySbAC_ACtFZ_0(v18, v19);

        if (v21)
        {
          goto LABEL_24;
        }
      }

LABEL_21:
      v14 = 0;
      return v14 & 1;
    case 3uLL:
      v15 = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
      v23 = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v24 = v15;
      v25 = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x30);
      v26 = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x40);
      if (a2 >> 61 != 3)
      {
        goto LABEL_21;
      }

      v16 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
      v27[0] = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v17 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x30);
      v27[1] = v16;
      v27[2] = v17;
      v28 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x40);
      sub_1000967A0(v27, v22);
      v14 = static AvroRecordSchema.__derived_struct_equals(_:_:)();
      sub_100161354(v27);
      return v14 & 1;
    case 4uLL:
      if (a2 >> 61 != 4)
      {
        goto LABEL_21;
      }

      v10 = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v11 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);

      v12 = sub_1000041F8();
      v14 = _s9SwiftAvro0B11UnionSchemaV23__derived_struct_equalsySbAC_ACtFZ_0(v12, v13);

      return v14 & 1;
    default:
      if (a2 >> 61)
      {
        goto LABEL_21;
      }

      v2 = *(a2 + 16);
      v3 = sub_1001608C8(*(a1 + 16));
      v5 = v4;
      if (v3 == sub_1001608C8(v2) && v5 == v6)
      {

LABEL_24:
        v14 = 1;
        return v14 & 1;
      }

      else
      {
        v8 = sub_10000FFF0();

        return v8 & 1;
      }
  }
}

uint64_t _s9SwiftAvro0B6SchemaV4hash4intoys6HasherVz_tF_0(uint64_t a1, unint64_t a2)
{
  switch(a2 >> 61)
  {
    case 1uLL:
      v19 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v18 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
      v20 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
      v10 = 1;
      goto LABEL_8;
    case 2uLL:
      v8 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v7 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
      v9 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
      v10 = 2;
LABEL_8:
      Hasher._combine(_:)(v10);

      sub_10000BE80();
      String.hash(into:)();
      v21 = sub_1000385F0();
      _s9SwiftAvro0B6SchemaV4hash4intoys6HasherVz_tF_0(v21);

      break;
    case 3uLL:
      v12 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v11 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
      v14 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
      v13 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x28);
      v16 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x30);
      v15 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x38);
      v17 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x40);
      Hasher._combine(_:)(3uLL);

      String.hash(into:)();
      sub_10000DC5C();
      String.hash(into:)();
      if (v15)
      {
        Hasher._combine(_:)(1u);
        String.hash(into:)();
      }

      else
      {
        Hasher._combine(_:)(0);
      }

      sub_100162948(a1, v17);

      break;
    case 4uLL:
      v4 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      Hasher._combine(_:)(4uLL);

      v5 = sub_10000672C();
      AvroUnionSchema.hash(into:)(v5, v6);
      break;
    default:
      v3 = *(a2 + 16);
      Hasher._combine(_:)(0);
      sub_1001608C8(v3);
      String.hash(into:)();
      break;
  }
}

uint64_t AvroSchema.encode(to:)(void *a1, unint64_t a2)
{
  switch(a2 >> 61)
  {
    case 1uLL:
      sub_10016402C(a1, a2);

      sub_10000BA60();
      AvroArraySchema.encode(to:)();
      goto LABEL_7;
    case 2uLL:
      sub_10016402C(a1, a2);

      sub_10000BA60();
      AvroMapSchema.encode(to:)();
LABEL_7:

      goto LABEL_8;
    case 3uLL:
      sub_1000079A0(a2 & 0x1FFFFFFFFFFFFFFFLL);
      sub_1000967A0(v5, v6);
      AvroRecordSchema.encode(to:)(a1);
      return sub_100161354(v7);
    case 4uLL:
      v4 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      sub_100161300();

      Array<A>.encode(to:)();
LABEL_8:

      break;
    default:
      result = AvroPrimitiveSchema.encode(to:)(a1, *(a2 + 16));
      break;
  }

  return result;
}

uint64_t AvroPrimitiveSchema.encode(to:)(void *a1, char a2)
{
  v4 = sub_100046184(&qword_10021F600, &qword_1001A44C8);
  sub_100003650(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  sub_100003760();
  __chkstk_darwin(v9);
  v11 = &v14 - v10;
  v12 = a1[4];
  sub_1000190A8(a1, a1[3]);
  sub_100161384();
  sub_100163FFC();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  sub_1001608C8(a2);
  KeyedEncodingContainer.encode(_:forKey:)();
  (*(v6 + 8))(v11, v4);
}

uint64_t AvroRecordSchema.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_100046184(&qword_10021F630, &qword_1001A44E0);
  sub_100003650(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  sub_100003760();
  __chkstk_darwin(v10);
  v12 = &v21[-v11];
  v13 = a1[4];
  sub_1000190A8(a1, a1[3]);
  sub_100161480();
  sub_100163FFC();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v14 = *v3;
  v15 = v3[1];
  v24 = 0;
  sub_100163F30();
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v16 = v3[2];
    v17 = v3[3];
    sub_100164014();
    sub_100163F30();
    KeyedEncodingContainer.encode(_:forKey:)();
    v18 = v3[4];
    v19 = v3[5];
    v23 = 2;
    sub_100163F30();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v22 = v3[6];
    v21[15] = 3;
    sub_100046184(&qword_10021F640, &qword_1001A44E8);
    sub_100162A74(&qword_10021F648, sub_1001614D4);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v7 + 8))(v12, v5);
}

uint64_t AvroSchema.init(from:)()
{
  sub_10000BA14();
  v4 = v3[4];
  sub_100007534(v3, v3[3]);
  sub_10016406C();
  if (!v2)
  {
    sub_1000190A8(v7, v7[3]);
    sub_100161528();
    dispatch thunk of SingleValueDecodingContainer.decode<A>(_:)();
    sub_10001AE80();
    v1 = swift_allocObject();
    *(v1 + 16) = v6;
    sub_100007378(v7);
  }

  sub_100007378(v0);
  return v1;
}

uint64_t sub_10015CD68@<X0>(uint64_t *a1@<X8>)
{
  result = AvroSchema.init(from:)();
  if (!v1)
  {
    *a1 = result;
  }

  return result;
}

uint64_t AvroSchema.description.getter(unint64_t a1)
{
  switch(a1 >> 61)
  {
    case 1uLL:
      v9 = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
      v10 = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);

      AvroArraySchema.description.getter(v11, v12, v10);
      goto LABEL_8;
    case 2uLL:
      v3 = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
      v4 = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);

      AvroMapSchema.description.getter(v5, v6, v4);
LABEL_8:

      return sub_1000078A0();
    case 3uLL:
      sub_1000079A0(a1 & 0x1FFFFFFFFFFFFFFFLL);
      sub_1000967A0(v7, v8);
      AvroRecordSchema.description.getter();
      sub_100161354(v13);
      return sub_1000041F8();
    case 4uLL:
      v1 = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);

      Array.description.getter();

      return sub_10000BE80();
    default:
      v13[0] = *(a1 + 16);
      String.init<A>(describing:)();
      return sub_1000041F8();
  }
}

uint64_t AvroRecordSchema.type.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return sub_1000041F8();
}

uint64_t AvroRecordSchema.name.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return sub_1000041F8();
}

uint64_t AvroRecordSchema.name.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t AvroRecordSchema.namespace.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return sub_1000041F8();
}

uint64_t AvroRecordSchema.namespace.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t AvroRecordSchema.fields.setter(uint64_t a1)
{
  v3 = *(v1 + 48);

  *(v1 + 48) = a1;
  return result;
}

uint64_t sub_10015D070(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 1701667182 && a2 == 0xE400000000000000;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x63617073656D616ELL && a2 == 0xE900000000000065;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x73646C656966 && a2 == 0xE600000000000000)
      {

        return 3;
      }

      else
      {
        v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

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

uint64_t sub_10015D1D4(char a1)
{
  result = 1701869940;
  switch(a1)
  {
    case 1:
      result = 1701667182;
      break;
    case 2:
      result = 0x63617073656D616ELL;
      break;
    case 3:
      result = 0x73646C656966;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_10015D24C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10015D070(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10015D274@<X0>(_BYTE *a1@<X8>)
{
  result = static AvroPrimitiveSchema.float.getter();
  *a1 = result;
  return result;
}

uint64_t sub_10015D29C(uint64_t a1)
{
  v2 = sub_100161480();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10015D2D8(uint64_t a1)
{
  v2 = sub_100161480();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t InternalError.description.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t AvroRecordSchema.Field.init(name:type:optional:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_10000AA8C();
  if (v4)
  {
    sub_100046184(&qword_10021F680, &qword_1001A44F0);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_100198F10;
    if (qword_10021F5B0 != -1)
    {
      sub_10000B150();
    }

    *(v5 + 32) = static AvroSchema.null;
    *(v5 + 40) = a3;
    sub_1000068B4();
    v6 = swift_allocObject();
    AvroUnionSchema.init(of:)(v5);
    *(v6 + 16) = v5;
  }

  return sub_10000672C();
}

uint64_t sub_10015D414(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701869940 && a2 == 0xE400000000000000)
  {

    return 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_10015D4E4(char a1)
{
  if (a1)
  {
    return 1701869940;
  }

  else
  {
    return 1701667182;
  }
}

uint64_t sub_10015D50C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10015D414(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10015D534(uint64_t a1)
{
  v2 = sub_1001629CC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10015D570(uint64_t a1)
{
  v2 = sub_1001629CC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t static AvroRecordSchema.__derived_struct_equals(_:_:)()
{
  sub_10000AA8C();
  v3 = *v2 == *v0 && v1[1] == v0[1];
  if (!v3 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v4 = v1[2] == v0[2] && v1[3] == v0[3];
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v5 = v1[5];
  v6 = v0[5];
  if (v5)
  {
    if (v6)
    {
      v7 = v1[4] == v0[4] && v5 == v6;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        goto LABEL_18;
      }
    }

    return 0;
  }

  if (v6)
  {
    return 0;
  }

LABEL_18:
  v8 = v1[6];
  v9 = v0[6];

  return sub_10015EECC(v8, v9);
}

uint64_t sub_10015D69C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  if (v3 != *(a2 + 16))
  {
    return 0;
  }

  if (!v3 || a1 == a2)
  {
    return 1;
  }

  v4 = 0;
  v271 = 0;
  v284 = a2 + 32;
  v285 = a1 + 32;
  v274 = *(a1 + 16);
  while (2)
  {
    v5 = 9 * v4++;
    memcpy(__dst, (v285 + 8 * v5), 0x41uLL);
    memcpy(v302, (v284 + 8 * v5), 0x41uLL);
    v6 = *&__dst[0];
    v7 = __dst[2];
    v8 = *&__dst[3];
    v9 = *&__dst[4];
    v10 = __dst[5];
    switch(LOBYTE(__dst[8]))
    {
      case 1:
        if (LOBYTE(v302[8]) != 1)
        {
          return 0;
        }

        sub_10000FED0();
        v45 = v27 && v43 == v44;
        if (!v45 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          return 0;
        }

        v46 = sub_100005B04();
        sub_100163ABC(v46, v47);
        v48 = sub_100008C08();
        sub_100163ABC(v48, v49);
        v50 = sub_10000AC38();
        if ((_s9SwiftAvro0B6SchemaV23__derived_struct_equalsySbAC_ACtFZ_0(v50, v51) & 1) == 0)
        {
          goto LABEL_344;
        }

        v52 = v8;
        v53 = v9;
        goto LABEL_167;
      case 2:
        if (LOBYTE(v302[8]) != 2)
        {
          return 0;
        }

        sub_10000FED0();
        v27 = v27 && v25 == v26;
        if (!v27 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          return 0;
        }

        v28 = sub_100005B04();
        sub_100163ABC(v28, v29);
        v30 = sub_100008C08();
        sub_100163ABC(v30, v31);
        v32 = sub_10000AC38();
        if ((_s9SwiftAvro0B6SchemaV23__derived_struct_equalsySbAC_ACtFZ_0(v32, v33) & 1) == 0)
        {
          goto LABEL_344;
        }

        v34 = sub_100175A24(v8, v9);
        goto LABEL_168;
      case 3:
        v273 = *&__dst[7];
        if (LOBYTE(v302[8]) != 3)
        {
          return 0;
        }

        v278 = v4;
        v35 = v302[2];
        v36 = v302[3];
        v37 = v302[4];
        v2 = v302[5];
        v279 = *&v302[6];
        v280 = *&__dst[6];
        v272 = *&v302[7];
        v38 = *&__dst[0] == *&v302[0] && *&__dst[1] == *&v302[1];
        if (!v38 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          return 0;
        }

        v39 = *&v7 == *&v35 && v8 == *&v36;
        if (!v39 && (sub_100163F88() & 1) == 0)
        {
          return 0;
        }

        if (v10 == 0.0)
        {
          v4 = v278;
          v40 = v279;
          v41 = v280;
          if (v2 != 0.0)
          {
            return 0;
          }
        }

        else
        {
          v4 = v278;
          v40 = v279;
          v41 = v280;
          if (v2 == 0.0)
          {
            return 0;
          }

          if (v9 != *&v37 || *&v10 != *&v2)
          {
            sub_100007CD4();
            if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
            {
              return 0;
            }
          }
        }

        v54 = v41[2];
        if (v54 != v40[2])
        {
          return 0;
        }

        if (!v54 || v41 == v40)
        {
          v117 = sub_100005B04();
          sub_100163ABC(v117, v118);
          v119 = sub_100008C08();
          sub_100163ABC(v119, v120);
LABEL_166:
          v53 = v272;
          v52 = v273;
LABEL_167:
          v34 = sub_10015D69C(v52, v53);
LABEL_168:
          v121 = v34;
          sub_100096480(v302);
          sub_100096480(__dst);
          if ((v121 & 1) == 0)
          {
            return 0;
          }

LABEL_284:
          result = 1;
          if (v4 == v3)
          {
            return result;
          }

          continue;
        }

        v55 = v41[5];
        v56 = v41[6];
        v57 = v40[5];
        v58 = v40[6];
        v59 = v41[4] == v40[4] && v55 == v57;
        if (v59 || (v60 = v41[5], (sub_100163F88() & 1) != 0))
        {
          v61 = sub_100005B04();
          sub_100163ABC(v61, v62);
          v63 = sub_100008C08();
          sub_100163ABC(v63, v64);
          v65 = v41 + 9;
          v66 = v40 + 9;
          v67 = 1;
          v275 = v54;
          while (1)
          {
            v68 = v58 >> 61;
            v283 = v65;
            v281 = v67;
            *&v282 = v66;
            switch(v56 >> 61)
            {
              case 1uLL:
                if (v68 != 1)
                {
                  goto LABEL_344;
                }

                sub_10001ACA8();
                v95 = v27 && v94 == v57;
                if (!v95 && (sub_100163F88() & 1) == 0)
                {
                  goto LABEL_344;
                }

                v77 = v56 >> 61;
                switch(v54 >> 61)
                {
                  case 1uLL:
                    goto LABEL_116;
                  case 2uLL:
                    goto LABEL_114;
                  case 3uLL:
                    v111 = *((v54 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
                    v303 = *((v54 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
                    v304 = v111;
                    v305 = *((v54 & 0x1FFFFFFFFFFFFFFFLL) + 0x30);
                    v306 = *((v54 & 0x1FFFFFFFFFFFFFFFLL) + 0x40);
                    if (v77 != 3)
                    {
                      goto LABEL_344;
                    }

                    v54 = v56 & 0x1FFFFFFFFFFFFFFFLL;
                    v112 = *((v56 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
                    v307[0] = *((v56 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
                    v307[1] = v112;
                    v307[2] = *((v56 & 0x1FFFFFFFFFFFFFFFLL) + 0x30);
                    v308 = *((v56 & 0x1FFFFFFFFFFFFFFFLL) + 0x40);

                    sub_1000967A0(v307, v300);
                    v2 = COERCE_DOUBLE(static AvroRecordSchema.__derived_struct_equals(_:_:)());
                    v80 = v307;
                    break;
                  case 4uLL:
                    goto LABEL_111;
                  default:
                    goto LABEL_105;
                }

LABEL_128:
                sub_100161354(v80);

                goto LABEL_129;
              case 2uLL:
                if (v68 != 2)
                {
                  goto LABEL_344;
                }

                sub_10001ACA8();
                v76 = v27 && v75 == v57;
                if (!v76 && (sub_100163F88() & 1) == 0)
                {
                  goto LABEL_344;
                }

                break;
              case 3uLL:
                if (v68 != 3)
                {
                  goto LABEL_344;
                }

                v276 = v55;
                v277 = v57;
                v54 = v56 & 0x1FFFFFFFFFFFFFFFLL;
                v81 = *((v56 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
                v82 = *((v56 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
                v83 = *((v56 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
                v2 = *((v56 & 0x1FFFFFFFFFFFFFFFLL) + 0x28);
                v84 = *((v56 & 0x1FFFFFFFFFFFFFFFLL) + 0x30);
                v85 = *((v56 & 0x1FFFFFFFFFFFFFFFLL) + 0x38);
                v269 = v84;
                v270 = *(v54 + 64);
                v86 = (v58 & 0x1FFFFFFFFFFFFFFFLL);
                v87 = v86[4];
                v88 = v86[5];
                v89 = v86[7];
                v268 = v86[6];
                v90 = v86[8];
                v91 = v81 == v86[2] && v82 == v86[3];
                if (!v91 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
                {
                  goto LABEL_344;
                }

                v92 = v83 == v87 && *&v2 == v88;
                if (!v92 && (sub_100163F88() & 1) == 0)
                {
                  goto LABEL_344;
                }

                if (v85)
                {
                  if (!v89)
                  {
                    goto LABEL_344;
                  }

                  v93 = v269 == v268 && v85 == v89;
                  if (!v93 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
                  {
                    goto LABEL_344;
                  }
                }

                else if (v89)
                {
                  goto LABEL_344;
                }

                sub_10015EECC(v270, v90);
                sub_10000835C();

LABEL_151:

                if ((LOBYTE(v2) & 1) == 0)
                {
                  goto LABEL_344;
                }

                goto LABEL_155;
              case 4uLL:
                if (v68 != 4)
                {
                  goto LABEL_344;
                }

                v54 = v56 & 0x1FFFFFFFFFFFFFFFLL;
                v2 = *((v56 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
                v72 = *((v58 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);

                v73 = sub_1000385F0();
                _s9SwiftAvro0B11UnionSchemaV23__derived_struct_equalsySbAC_ACtFZ_0(v73, v74);
                sub_10000835C();

                goto LABEL_151;
              default:
                if (v68)
                {
                  goto LABEL_344;
                }

                v69 = *(v58 + 16);
                v70 = 0xE400000000000000;
                v71 = 1819047278;
                switch(*(v56 + 16))
                {
                  case 1:
                    v70 = 0xE700000000000000;
                    v71 = sub_10000AFA4();
                    break;
                  case 2:
                    v70 = 0xE300000000000000;
                    v71 = 7630441;
                    break;
                  case 3:
                    v71 = 1735290732;
                    break;
                  case 4:
                    v70 = 0xE500000000000000;
                    v71 = sub_100163FD8();
                    break;
                  case 5:
                    v70 = 0xE600000000000000;
                    v71 = sub_10000CEF8();
                    break;
                  case 6:
                    v70 = 0xE600000000000000;
                    v71 = sub_100163FA0();
                    break;
                  case 7:
                    v70 = 0xE500000000000000;
                    v71 = sub_100163FC8();
                    break;
                  default:
                    break;
                }

                v54 = 0xE400000000000000;
                v113 = 1819047278;
                switch(v69)
                {
                  case 1:
                    v54 = 0xE700000000000000;
                    sub_10000CAEC();
                    break;
                  case 2:
                    v54 = 0xE300000000000000;
                    v113 = 7630441;
                    break;
                  case 3:
                    v113 = 1735290732;
                    break;
                  case 4:
                    v54 = 0xE500000000000000;
                    sub_10000CD10();
                    break;
                  case 5:
                    v54 = 0xE600000000000000;
                    sub_100013634();
                    break;
                  case 6:
                    v54 = 0xE600000000000000;
                    sub_100014CC8();
                    break;
                  case 7:
                    v54 = 0xE500000000000000;
                    sub_100018A08();
                    break;
                  default:
                    break;
                }

                if (v71 != v113 || v70 != v54)
                {
                  v2 = COERCE_DOUBLE(sub_10000FFF0());

                  goto LABEL_151;
                }

                goto LABEL_154;
            }

            v77 = v56 >> 61;
            switch(v54 >> 61)
            {
              case 1uLL:
LABEL_116:
                if (v77 != 1)
                {
                  goto LABEL_344;
                }

                goto LABEL_117;
              case 2uLL:
LABEL_114:
                if (v77 != 2)
                {
                  goto LABEL_344;
                }

LABEL_117:
                v108 = *((v54 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
                v109 = *((v54 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
                v270 = *((v54 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
                v54 = *((v56 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
                v2 = *((v56 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
                v110 = v108 == *((v56 & 0x1FFFFFFFFFFFFFFFLL) + 0x10) && v109 == v54;
                if (!v110 && (sub_10000FFF0() & 1) == 0)
                {
                  goto LABEL_344;
                }

                LODWORD(v270) = _s9SwiftAvro0B6SchemaV23__derived_struct_equalsySbAC_ACtFZ_0(v270, *&v2);

                if ((v270 & 1) == 0)
                {
                  goto LABEL_337;
                }

                goto LABEL_130;
              case 3uLL:
                v78 = *((v54 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
                v309 = *((v54 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
                v310 = v78;
                v311 = *((v54 & 0x1FFFFFFFFFFFFFFFLL) + 0x30);
                v312 = *((v54 & 0x1FFFFFFFFFFFFFFFLL) + 0x40);
                if (v77 != 3)
                {
                  goto LABEL_344;
                }

                v54 = v56 & 0x1FFFFFFFFFFFFFFFLL;
                v79 = *((v56 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
                v313[0] = *((v56 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
                v313[1] = v79;
                v313[2] = *((v56 & 0x1FFFFFFFFFFFFFFFLL) + 0x30);
                v314 = *((v56 & 0x1FFFFFFFFFFFFFFFLL) + 0x40);

                sub_1000967A0(v313, v300);
                v2 = COERCE_DOUBLE(static AvroRecordSchema.__derived_struct_equals(_:_:)());
                v80 = v313;
                goto LABEL_128;
              case 4uLL:
LABEL_111:
                if (v77 != 4)
                {
                  goto LABEL_344;
                }

                v104 = *((v54 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
                *&v2 = v56 & 0x1FFFFFFFFFFFFFFFLL;
                v105 = *((v56 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);

                v106 = sub_100007CD4();
                v54 = _s9SwiftAvro0B11UnionSchemaV23__derived_struct_equalsySbAC_ACtFZ_0(v106, v107);

                if ((v54 & 1) == 0)
                {
                  goto LABEL_337;
                }

                goto LABEL_130;
              default:
LABEL_105:
                if (v77)
                {
                  goto LABEL_344;
                }

                v96 = *(v54 + 16);
                v97 = *(v56 + 16);
                v98 = sub_1001608C8(v96);
                v100 = v99;
                v101 = sub_1001608C8(v97);
                v54 = v102;
                if (v98 == v101 && v100 == v102)
                {

                  v2 = *&v277;

LABEL_154:
                }

                else
                {
                  sub_10000BE80();
                  v2 = COERCE_DOUBLE(sub_10000FFF0());

LABEL_129:

                  if ((LOBYTE(v2) & 1) == 0)
                  {
LABEL_337:

                    goto LABEL_344;
                  }

LABEL_130:
                }

LABEL_155:
                if (v275 == v281)
                {
                  v3 = v274;
                  v4 = v278;
                  goto LABEL_166;
                }

                if (v281 >= v275)
                {
                  __break(1u);
LABEL_339:
                  __break(1u);
LABEL_340:
                  __break(1u);
LABEL_341:
                  sub_100163B74(v298);
LABEL_342:
                  sub_100163B74(v299);
                  goto LABEL_343;
                }

                if (v281 >= *(v280 + 16))
                {
                  goto LABEL_339;
                }

                if (v281 >= *(v279 + 16))
                {
                  goto LABEL_340;
                }

                v55 = *(v283 - 1);
                v56 = *v283;
                v57 = *(v282 - 8);
                v58 = *v282;
                if (*(v283 - 2) != *(v282 - 16) || v55 != v57)
                {
                  v116 = *(v283 - 1);
                  if ((sub_100163F88() & 1) == 0)
                  {
                    goto LABEL_344;
                  }
                }

                v65 = v283 + 3;
                v66 = (v282 + 24);
                v67 = v281 + 1;
                break;
            }
          }
        }

        return 0;
      case 4:
        if (LOBYTE(v302[8]) != 4)
        {
          return 0;
        }

        v278 = v4;
        v13 = *(*&__dst[0] + 32);
        *&v282 = *(*&__dst[0] + 40);
        v15 = *(*&__dst[0] + 48);
        v14 = *(*&__dst[0] + 56);
        v16 = *(*&__dst[0] + 64);
        v17 = *(*&__dst[0] + 72);
        v18 = *(*&__dst[0] + 80);
        v19 = *(*&__dst[0] + 88);
        v283 = *(*&__dst[0] + 96);
        v20 = *(*&__dst[0] + 16);
        v2 = *(*&__dst[0] + 24);
        memcpy(v300, (*&v302[0] + 16), sizeof(v300));
        v21 = v300[0];
        sub_100163ABC(__dst, v299);
        sub_100163ABC(v302, v299);
        sub_100163B18(v300, v299);
        if ((_s9SwiftAvro0B11UnionSchemaV23__derived_struct_equalsySbAC_ACtFZ_0(v20, v21) & 1) == 0)
        {
          goto LABEL_343;
        }

        switch(v19)
        {
          case 1:
            if (LOBYTE(v300[9]) != 1)
            {
              goto LABEL_343;
            }

            v151 = v300[3];
            v150 = v300[4];
            if (*&v2 != v300[1] || v13 != v300[2])
            {
              sub_10000DC5C();
              if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
              {
                goto LABEL_343;
              }
            }

            if ((_s9SwiftAvro0B6SchemaV23__derived_struct_equalsySbAC_ACtFZ_0(v282, v151) & 1) == 0)
            {
              goto LABEL_343;
            }

            v143 = sub_10015D69C(v15, v150);
            goto LABEL_210;
          case 2:
            if (LOBYTE(v300[9]) != 2)
            {
              goto LABEL_343;
            }

            v141 = v300[3];
            v140 = v300[4];
            if (*&v2 != v300[1] || v13 != v300[2])
            {
              sub_10000DC5C();
              if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
              {
                goto LABEL_343;
              }
            }

            if ((_s9SwiftAvro0B6SchemaV23__derived_struct_equalsySbAC_ACtFZ_0(v282, v141) & 1) == 0)
            {
              goto LABEL_343;
            }

            v143 = sub_100175A24(v15, v140);
LABEL_210:
            v153 = v143;
            sub_100163B74(v300);
            sub_100096480(v302);
            sub_100096480(__dst);
            v3 = v274;
            v4 = v278;
            if ((v153 & 1) == 0)
            {
              return 0;
            }

            goto LABEL_283;
          case 3:
            if (LOBYTE(v300[9]) != 3)
            {
              goto LABEL_343;
            }

            v145 = v300[3];
            v144 = v300[4];
            v146 = v300[6];
            v281 = v300[7];
            v279 = v300[5];
            v280 = v300[8];
            if (*&v2 != v300[1] || v13 != v300[2])
            {
              sub_10000DC5C();
              if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
              {
                goto LABEL_343;
              }
            }

            v148 = v282 == v145 && v15 == v144;
            if (!v148 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
            {
              goto LABEL_343;
            }

            if (v16)
            {
              v4 = v278;
              if (!v146 || (v14 == v279 ? (v149 = v16 == v146) : (v149 = 0), !v149 && (sub_100007CD4(), (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)))
              {
LABEL_343:
                sub_100163B74(v300);
LABEL_344:
                sub_100096480(v302);
                sub_100096480(__dst);
                return 0;
              }
            }

            else
            {
              v4 = v278;
              if (v146)
              {
                goto LABEL_343;
              }
            }

            if ((sub_10015EECC(v17, v281) & 1) == 0)
            {
              goto LABEL_343;
            }

            v167 = sub_10015D69C(v18, v280);
            sub_100163B74(v300);
            sub_100096480(v302);
            sub_100096480(__dst);
            v3 = v274;
            if ((v167 & 1) == 0)
            {
              return 0;
            }

            goto LABEL_283;
          case 4:
            if (LOBYTE(v300[9]) != 4)
            {
              goto LABEL_343;
            }

            v123 = *(*&v2 + 32);
            v122 = *(*&v2 + 40);
            v124 = *(*&v2 + 48);
            v282 = *(*&v2 + 56);
            v126 = *(*&v2 + 72);
            v125 = *(*&v2 + 80);
            v127 = *(*&v2 + 88);
            v128 = *(*&v2 + 96);
            v130 = *&v2 + 16;
            v2 = *(*&v2 + 16);
            v129 = *(v130 + 8);
            memcpy(v299, (v300[1] + 16), sizeof(v299));
            sub_100163B18(v299, v298);
            v131 = sub_10000DC5C();
            if (_s9SwiftAvro0B11UnionSchemaV23__derived_struct_equalsySbAC_ACtFZ_0(v131, v132))
            {
              switch(v127)
              {
                case 1:
                  if (v299[72] != 1)
                  {
                    goto LABEL_342;
                  }

                  v2 = *&v299[32];
                  if (v129 != *&v299[8] || v123 != *&v299[16])
                  {
                    sub_1000078A0();
                    if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
                    {
                      goto LABEL_342;
                    }
                  }

                  v201 = sub_100007FC8();
                  v3 = v274;
                  if ((_s9SwiftAvro0B6SchemaV23__derived_struct_equalsySbAC_ACtFZ_0(v201, v202) & 1) == 0)
                  {
                    goto LABEL_342;
                  }

                  v203 = sub_10000BB84();
                  v196 = sub_10015D69C(v203, v204);
                  goto LABEL_280;
                case 2:
                  if (v299[72] != 2)
                  {
                    goto LABEL_342;
                  }

                  v2 = *&v299[32];
                  if (v129 != *&v299[8] || v123 != *&v299[16])
                  {
                    sub_1000078A0();
                    if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
                    {
                      goto LABEL_342;
                    }
                  }

                  v192 = sub_100007FC8();
                  v3 = v274;
                  if ((_s9SwiftAvro0B6SchemaV23__derived_struct_equalsySbAC_ACtFZ_0(v192, v193) & 1) == 0)
                  {
                    goto LABEL_342;
                  }

                  v194 = sub_10000BB84();
                  v196 = sub_100175A24(v194, v195);
LABEL_280:
                  v205 = v196;
                  sub_100163B74(v299);
                  sub_100163B74(v300);
                  sub_100096480(v302);
                  sub_100096480(__dst);
                  if (v205)
                  {
                    goto LABEL_281;
                  }

                  return 0;
                case 3:
                  if (v299[72] != 3)
                  {
                    goto LABEL_342;
                  }

                  v2 = *&v299[64];
                  v315 = v129;
                  v316 = v123;
                  v317 = v122;
                  v318 = v124;
                  v319 = v282;
                  v320 = v126;
                  v321 = *&v299[8];
                  v322 = *&v299[24];
                  v323 = *&v299[32];
                  v324 = *&v299[40];
                  v325 = *&v299[56];
                  if ((static AvroRecordSchema.__derived_struct_equals(_:_:)() & 1) == 0)
                  {
                    goto LABEL_342;
                  }

                  v197 = sub_10000AC38();
                  v139 = sub_10015D69C(v197, v198);
                  goto LABEL_270;
                case 4:
                  v186 = v129[2];
                  memcpy(v326, v129 + 3, 0x41uLL);
                  if (v299[72] != 4)
                  {
                    goto LABEL_342;
                  }

                  v187 = v129[12];
                  memcpy(v298, (*&v299[8] + 16), sizeof(v298));
                  v2 = *v298;
                  sub_100163B18(v298, &v287);
                  v188 = sub_1000041F8();
                  if ((_s9SwiftAvro0B11UnionSchemaV23__derived_struct_equalsySbAC_ACtFZ_0(v188, v189) & 1) == 0)
                  {
                    goto LABEL_341;
                  }

                  memcpy(v327, &v298[1], 0x41uLL);
                  v190 = _s9SwiftAvro0B5ValueV23__derived_struct_equalsySbAC_ACtFZ_0(v326, v327);
                  sub_100163B74(v298);
                  sub_100163B74(v299);
                  sub_100163B74(v300);
                  sub_100096480(v302);
                  sub_100096480(__dst);
                  v3 = v274;
                  if ((v190 & 1) == 0 || v187 != v298[10])
                  {
                    return 0;
                  }

                  goto LABEL_281;
                default:
                  if (v299[72])
                  {
                    goto LABEL_342;
                  }

                  v133 = sub_1000078A0();
                  v139 = _s9SwiftAvro0B9PrimitiveV23__derived_struct_equalsySbAC_ACtFZ_0(v133, v134, v122, v124, v135, v136, v137, v138);
LABEL_270:
                  v199 = v139;
                  sub_100163B74(v299);
                  sub_100163B74(v300);
                  sub_100096480(v302);
                  sub_100096480(__dst);
                  v3 = v274;
                  if ((v199 & 1) == 0)
                  {
                    return 0;
                  }

LABEL_281:
                  v27 = v128 == *&v299[80];
                  v4 = v278;
                  if (!v27)
                  {
                    return 0;
                  }

                  goto LABEL_283;
              }
            }

            goto LABEL_342;
          default:
            if (LOBYTE(v300[9]))
            {
              goto LABEL_343;
            }

            break;
        }

        v22 = *&v300[1];
        v23 = v300[2];
        v24 = LOBYTE(v300[4]);
        v3 = v274;
        switch(v15)
        {
          case 1:
            v4 = v278;
            if (LOBYTE(v300[4]) != 1)
            {
              goto LABEL_343;
            }

            sub_100163B74(v300);
            sub_100096480(v302);
            sub_100096480(__dst);
            if (LODWORD(v2) != LODWORD(v22))
            {
              return 0;
            }

            goto LABEL_283;
          case 2:
            sub_100163B74(v300);
            sub_100096480(v302);
            sub_100096480(__dst);
            v4 = v278;
            if (v24 != 2 || *&v2 != *&v22)
            {
              return 0;
            }

            goto LABEL_283;
          case 3:
            v4 = v278;
            if (LOBYTE(v300[4]) != 3)
            {
              goto LABEL_343;
            }

            sub_100163B74(v300);
            sub_100096480(v302);
            sub_100096480(__dst);
            if (*&v2 != *&v22)
            {
              return 0;
            }

            goto LABEL_283;
          case 4:
            v4 = v278;
            if (LOBYTE(v300[4]) != 4)
            {
              goto LABEL_343;
            }

            sub_100163B74(v300);
            sub_100096480(v302);
            sub_100096480(__dst);
            if (v2 != v22)
            {
              return 0;
            }

            goto LABEL_283;
          case 5:
            v4 = v278;
            if (LOBYTE(v300[4]) != 5)
            {
              goto LABEL_343;
            }

            if (*&v2 == v300[1] && v13 == v300[2])
            {
LABEL_308:
              sub_100163B74(v300);
              sub_100096480(v302);
              sub_100096480(__dst);
            }

            else
            {
              sub_10000DC5C();
              v208 = _stringCompareWithSmolCheck(_:_:expecting:)();
              sub_100163B74(v300);
              sub_100096480(v302);
              sub_100096480(__dst);
              if ((v208 & 1) == 0)
              {
                return 0;
              }
            }

            goto LABEL_283;
          case 6:
            v4 = v278;
            if (LOBYTE(v300[4]) != 6)
            {
              goto LABEL_343;
            }

            if (((v13 >> 60) & 3) != 0)
            {
              v209 = sub_10000DC5C();
              sub_100163C88(v209, v210, v282, 6);
            }

            else
            {
              v223 = sub_100046184(&qword_100217F20, &qword_1001A5520);
              *&v299[24] = v223;
              *&v299[32] = sub_100163BC8();
              *v299 = v2;
              v224 = sub_100007534(v299, v223);
              v225 = *v224 + 32;
              v226 = *(*v224 + 16);
              v227 = sub_10000DC5C();
              sub_100163C88(v227, v228, v282, 6);
              sub_1000F891C(v225, v225 + v226, v298);
              if (v271)
              {
                goto LABEL_346;
              }

              sub_100007378(v299);
            }

            sub_10000BE80();
            v229 = Data.hashValue.getter();
            v230 = sub_10000BE80();
            sub_100014A40(v230, v231);
            if (((v23 >> 60) & 3) != 0)
            {
              *&v2 = v23 & 0xCFFFFFFFFFFFFFFFLL;
              sub_100163ABC(&v300[1], v299);
            }

            else
            {
              v232 = sub_100046184(&qword_100217F20, &qword_1001A5520);
              v298[3] = v232;
              v298[4] = sub_100163BC8();
              *v298 = v22;
              v233 = sub_100007534(v298, v232);
              v234 = *v233 + 32;
              v235 = *(*v233 + 16);
              sub_100163ABC(&v300[1], v299);
              sub_1000F891C(v234, v234 + v235, v299);
              if (v271)
              {
LABEL_346:

                __break(1u);
                return result;
              }

              v2 = *&v299[8];
              sub_100007378(v298);
            }

            sub_10000BB84();
            v236 = Data.hashValue.getter();
            v237 = sub_10000BB84();
            sub_100014A40(v237, v238);
            sub_100163B74(v300);
            sub_100096480(v302);
            sub_100096480(__dst);
            if (v229 != v236)
            {
              return 0;
            }

LABEL_283:
            if (v283 != v300[10])
            {
              return 0;
            }

            break;
          case 7:
            v4 = v278;
            if (LOBYTE(v300[4]) != 7 || v300[1] | v300[3] | v300[2])
            {
              goto LABEL_343;
            }

            goto LABEL_308;
          default:
            sub_100163B74(v300);
            sub_100096480(v302);
            sub_100096480(__dst);
            v4 = v278;
            if (v24 || ((LODWORD(v22) ^ LODWORD(v2)) & 1) != 0)
            {
              return 0;
            }

            goto LABEL_283;
        }

        goto LABEL_284;
      default:
        if (!LOBYTE(v302[8]))
        {
          v11 = *&v302[0];
          v12 = v302[1];
          switch(LOBYTE(__dst[3]))
          {
            case 1:
              if (LOBYTE(v302[3]) != 1 || LODWORD(__dst[0]) != LODWORD(v302[0]))
              {
                return 0;
              }

              goto LABEL_284;
            case 2:
              if (LOBYTE(v302[3]) != 2 || *&__dst[0] != *&v302[0])
              {
                return 0;
              }

              goto LABEL_284;
            case 3:
              if (LOBYTE(v302[3]) != 3 || *__dst != *v302)
              {
                return 0;
              }

              goto LABEL_284;
            case 4:
              if (LOBYTE(v302[3]) != 4 || __dst[0] != v302[0])
              {
                return 0;
              }

              goto LABEL_284;
            case 5:
              if (LOBYTE(v302[3]) != 5)
              {
                return 0;
              }

              v158 = *&__dst[0] == *&v302[0] && *&__dst[1] == *&v302[1];
              if (!v158 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
              {
                return 0;
              }

              goto LABEL_284;
            case 6:
              v159 = v267;
              if (LOBYTE(v302[3]) != 6)
              {
                return 0;
              }

              if (((*&__dst[1] >> 60) & 3) != 0)
              {
                v160 = *&__dst[1] & 0xCFFFFFFFFFFFFFFFLL;
                v161 = sub_100005B04();
                sub_100163ABC(v161, v162);
                v163 = sub_100005B04();
                sub_100163ABC(v163, v164);
                v165 = sub_100008C08();
                sub_100163ABC(v165, v166);
              }

              else
              {
                v168 = sub_100046184(&qword_100217F20, &qword_1001A5520);
                *&v299[24] = v168;
                *&v299[32] = sub_100163BC8();
                *v299 = v6;
                v169 = sub_100007534(v299, v168);
                v177 = *(*v169 + 16);
                if (v177)
                {
                  if (v177 <= 0xE)
                  {
                    sub_1000077A4(v169, v170, v171, v172, v173, v174, v175, v176, v266, v267, v268, v269, v270, v271, v272, v273, v274, v275, v276, v277, v278, v279, v280, v281, v282, *(&v282 + 1), v283, v284, v285, v286, v287, v288, v289, v290, v291, v292, v293, v294, v295, v296, v297, v298[0], v298[1], v298[2], v298[3], v298[4], v298[5], v298[6], v298[7], v298[8], v298[9], v298[10], *v299, *&v299[8], *&v299[16], *&v299[24], *&v299[32], *&v299[40], *&v299[48], *&v299[56], *&v299[64], *&v299[72], *&v299[80]);
                    v6 = v300[0];
                    sub_10002DF74();
                    v217 = sub_100005B04();
                    sub_100163ABC(v217, v218);
                    v219 = sub_100005B04();
                    sub_100163ABC(v219, v220);
                    v221 = sub_100008C08();
                    sub_100163ABC(v221, v222);
                    v160 = v159;
                  }

                  else
                  {
                    v178 = type metadata accessor for __DataStorage();
                    sub_1000E2424(v178);
                    sub_100164020();
                    v179 = sub_100005B04();
                    if (v177 >= v181)
                    {
                      sub_100163ABC(v179, v180);
                      v239 = sub_100005B04();
                      sub_100163ABC(v239, v240);
                      v241 = sub_100008C08();
                      sub_100163ABC(v241, v242);
                      sub_10016408C();
                      sub_10000899C();
                      type metadata accessor for Data.RangeReference();
                      v6 = sub_10000B9C4();
                      *(v6 + 16) = 0;
                      *(v6 + 24) = v177;
                      v160 = *&v2 | 0x8000000000000000;
                    }

                    else
                    {
                      sub_100163ABC(v179, v180);
                      v182 = sub_100005B04();
                      sub_100163ABC(v182, v183);
                      v184 = sub_100008C08();
                      sub_100163ABC(v184, v185);
                      v6 = v177 << 32;
                      v160 = sub_10016408C() | 0x4000000000000000;
                    }
                  }
                }

                else
                {
                  v211 = sub_100005B04();
                  sub_100163ABC(v211, v212);
                  v213 = sub_100005B04();
                  sub_100163ABC(v213, v214);
                  v215 = sub_100008C08();
                  sub_100163ABC(v215, v216);
                  v6 = 0;
                  v160 = 0xC000000000000000;
                }

                v267 = v159;
                sub_100007378(v299);
              }

              v243 = Data.hashValue.getter();
              sub_100014A40(v6, v160);
              if (((*&v12 >> 60) & 3) != 0)
              {
                v244 = *&v12 & 0xCFFFFFFFFFFFFFFFLL;
                v245 = sub_100008C08();
                sub_100163ABC(v245, v246);
              }

              else
              {
                v247 = sub_100046184(&qword_100217F20, &qword_1001A5520);
                *&v299[24] = v247;
                *&v299[32] = sub_100163BC8();
                *v299 = v11;
                v248 = sub_100007534(v299, v247);
                v256 = *(*v248 + 16);
                if (v256)
                {
                  v257 = v266;
                  if (v256 <= 0xE)
                  {
                    sub_1000077A4(v248, v249, v250, v251, v252, v253, v254, v255, v266, v267, v268, v269, v270, v271, v272, v273, v274, v275, v276, v277, v278, v279, v280, v281, v282, *(&v282 + 1), v283, v284, v285, v286, v287, v288, v289, v290, v291, v292, v293, v294, v295, v296, v297, v298[0], v298[1], v298[2], v298[3], v298[4], v298[5], v298[6], v298[7], v298[8], v298[9], v298[10], *v299, *&v299[8], *&v299[16], *&v299[24], *&v299[32], *&v299[40], *&v299[48], *&v299[56], *&v299[64], *&v299[72], *&v299[80]);
                    v11 = v300[0];
                    v244 = v257 & 0xF00000000000000 | LODWORD(v300[1]) | ((WORD2(v300[1]) | (BYTE6(v300[1]) << 16)) << 32);
                    v264 = sub_100008C08();
                    sub_100163ABC(v264, v265);
                    v266 = v244;
                  }

                  else
                  {
                    v258 = type metadata accessor for __DataStorage();
                    sub_1000E2424(v258);
                    sub_100164020();
                    v259 = sub_100008C08();
                    if (v256 >= v261)
                    {
                      sub_100163ABC(v259, v260);
                      sub_10016408C();
                      sub_10000899C();
                      type metadata accessor for Data.RangeReference();
                      v11 = sub_10000B9C4();
                      *(v11 + 16) = 0;
                      *(v11 + 24) = v256;
                      v244 = v266 | 0x8000000000000000;
                    }

                    else
                    {
                      sub_100163ABC(v259, v260);
                      v11 = v256 << 32;
                      v244 = sub_10016408C() | 0x4000000000000000;
                    }
                  }
                }

                else
                {
                  v262 = sub_100008C08();
                  sub_100163ABC(v262, v263);
                  v11 = 0;
                  v244 = 0xC000000000000000;
                }

                sub_100007378(v299);
              }

              v2 = COERCE_DOUBLE(Data.hashValue.getter());
              sub_100014A40(v11, v244);
              sub_100096480(v302);
              sub_100096480(__dst);
              if (v243 != *&v2)
              {
                return 0;
              }

              goto LABEL_284;
            case 7:
              if (LOBYTE(v302[3]) != 7 || *&v302[0] | *&v302[2] | *&v302[1])
              {
                return 0;
              }

              goto LABEL_284;
            default:
              if (LOBYTE(v302[3]) || ((LODWORD(v302[0]) ^ LODWORD(__dst[0])) & 1) != 0)
              {
                return 0;
              }

              goto LABEL_284;
          }
        }

        return 0;
    }
  }
}

uint64_t sub_10015EECC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v3 = (a1 + 48);
    for (i = (a2 + 48); ; i += 3)
    {
      v5 = *v3;
      v6 = *i;
      if (*(v3 - 2) != *(i - 2) || *(v3 - 1) != *(i - 1))
      {
        v8 = *(v3 - 1);
        if ((sub_10000FFF0() & 1) == 0)
        {
          break;
        }
      }

      v9 = _s9SwiftAvro0B6SchemaV23__derived_struct_equalsySbAC_ACtFZ_0(v5, v6);

      if ((v9 & 1) == 0)
      {
        break;
      }

      v3 += 3;
      if (!--v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t _s9SwiftAvro0B11UnionSchemaV23__derived_struct_equalsySbAC_ACtFZ_0(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = 0;
  v54 = a2 + 32;
  v55 = result + 32;
  while (2)
  {
    if (v3 == v2)
    {
      __break(1u);
LABEL_85:
      __break(1u);
LABEL_86:
      __break(1u);
      return result;
    }

    v4 = v3++;
    v5 = *(v55 + 8 * v4);
    v6 = *(v54 + 8 * v4);
    v7 = v6 >> 61;
    switch(v5 >> 61)
    {
      case 1uLL:
        if (v7 != 1)
        {
          return 0;
        }

        goto LABEL_35;
      case 2uLL:
        if (v7 != 2)
        {
          return 0;
        }

LABEL_35:
        v28 = v3;
        v29 = *((v5 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
        v30 = *((v6 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
        v31 = *((v5 & 0x1FFFFFFFFFFFFFFFLL) + 0x10) == *((v6 & 0x1FFFFFFFFFFFFFFFLL) + 0x10) && *((v5 & 0x1FFFFFFFFFFFFFFFLL) + 0x18) == *((v6 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
        if (!v31 && (sub_10000FFF0() & 1) == 0)
        {
          return 0;
        }

        v32 = _s9SwiftAvro0B6SchemaV23__derived_struct_equalsySbAC_ACtFZ_0(v29, v30);

        v3 = v28;
        if ((v32 & 1) == 0)
        {
          return 0;
        }

        goto LABEL_80;
      case 3uLL:
        if (v7 != 3)
        {
          return 0;
        }

        v15 = (v5 & 0x1FFFFFFFFFFFFFFFLL);
        result = v15[2];
        v16 = v15[3];
        v18 = v15[4];
        v17 = v15[5];
        v19 = v15[6];
        v20 = v15[7];
        v21 = v15[8];
        v23 = *((v6 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
        v22 = *((v6 & 0x1FFFFFFFFFFFFFFFLL) + 0x28);
        v24 = *((v6 & 0x1FFFFFFFFFFFFFFFLL) + 0x30);
        v52 = *((v6 & 0x1FFFFFFFFFFFFFFFLL) + 0x38);
        v53 = v22;
        v56 = v21;
        v57 = *((v6 & 0x1FFFFFFFFFFFFFFFLL) + 0x40);
        if (result != *((v6 & 0x1FFFFFFFFFFFFFFFLL) + 0x10) || v16 != *((v6 & 0x1FFFFFFFFFFFFFFFLL) + 0x18))
        {
          result = _stringCompareWithSmolCheck(_:_:expecting:)();
          v22 = v53;
          if ((result & 1) == 0)
          {
            return 0;
          }
        }

        if (v18 != v23 || v17 != v22)
        {
          result = _stringCompareWithSmolCheck(_:_:expecting:)();
          if ((result & 1) == 0)
          {
            return 0;
          }
        }

        if (v20)
        {
          if (!v52)
          {
            return 0;
          }

          if (v19 != v24 || v20 != v52)
          {
            result = sub_10000FFF0();
            if ((result & 1) == 0)
            {
              return 0;
            }
          }
        }

        else if (v52)
        {
          return 0;
        }

        v34 = v56;
        v33 = v57;
        v35 = *(v56 + 16);
        if (v35 != *(v57 + 16))
        {
          return 0;
        }

        if (v35)
        {
          v36 = v56 == v57;
        }

        else
        {
          v36 = 1;
        }

        if (v36)
        {
LABEL_80:
          if (v3 == v2)
          {
            return 1;
          }

          continue;
        }

        v50 = v3;
        v51 = v2;

        v37 = 0;
        v38 = (v56 + 48);
        v39 = (v57 + 48);
        while (1)
        {
          if (v37 >= *(v34 + 16))
          {
            goto LABEL_85;
          }

          if (v37 >= *(v33 + 16))
          {
            goto LABEL_86;
          }

          v40 = *v38;
          v41 = *v39;
          if (*(v38 - 2) != *(v39 - 2) || *(v38 - 1) != *(v39 - 1))
          {
            v43 = *(v38 - 1);
            v44 = *(v39 - 1);
            if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
            {
              break;
            }
          }

          v45 = _s9SwiftAvro0B6SchemaV23__derived_struct_equalsySbAC_ACtFZ_0(v40, v41);

          if ((v45 & 1) == 0)
          {
            break;
          }

          ++v37;
          v38 += 3;
          v39 += 3;
          v34 = v56;
          v33 = v57;
          if (v35 == v37)
          {

            v3 = v50;
            v2 = v51;
            goto LABEL_80;
          }
        }

        return 0;
      case 4uLL:
        if (v7 != 4)
        {
          return 0;
        }

        v11 = *((v5 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
        v12 = v3;
        v13 = *((v6 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);

        v14 = sub_1000385F0();
        _s9SwiftAvro0B11UnionSchemaV23__derived_struct_equalsySbAC_ACtFZ_0(v14);
        sub_10000835C();

        v3 = v12;

        if ((v11 & 1) == 0)
        {
          return 0;
        }

        goto LABEL_80;
      default:
        if (v7)
        {
          return 0;
        }

        v8 = *(v6 + 16);
        v9 = 0xE400000000000000;
        v10 = 1819047278;
        switch(*(v5 + 16))
        {
          case 1:
            v9 = 0xE700000000000000;
            v10 = sub_10000AFA4();
            break;
          case 2:
            v9 = 0xE300000000000000;
            v10 = 7630441;
            break;
          case 3:
            v10 = 1735290732;
            break;
          case 4:
            v9 = 0xE500000000000000;
            v10 = sub_100163FD8();
            break;
          case 5:
            v9 = 0xE600000000000000;
            v10 = sub_10000CEF8();
            break;
          case 6:
            v9 = 0xE600000000000000;
            v10 = sub_100163FA0();
            break;
          case 7:
            v9 = 0xE500000000000000;
            v10 = sub_100163FC8();
            break;
          default:
            break;
        }

        v46 = 0xE400000000000000;
        v47 = 1819047278;
        switch(v8)
        {
          case 1:
            v46 = 0xE700000000000000;
            sub_10000CAEC();
            break;
          case 2:
            v46 = 0xE300000000000000;
            v47 = 7630441;
            break;
          case 3:
            v47 = 1735290732;
            break;
          case 4:
            v46 = 0xE500000000000000;
            sub_10000CD10();
            break;
          case 5:
            v46 = 0xE600000000000000;
            sub_100013634();
            break;
          case 6:
            v46 = 0xE600000000000000;
            sub_100014CC8();
            break;
          case 7:
            v46 = 0xE500000000000000;
            sub_100018A08();
            break;
          default:
            break;
        }

        if (v10 == v47 && v9 == v46)
        {
        }

        else
        {
          v49 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v49 & 1) == 0)
          {
            return 0;
          }
        }

        goto LABEL_80;
    }
  }
}

void AvroRecordSchema.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v4 = *v2;
  v5 = v2[1];
  String.hash(into:)();
  v6 = v2[2];
  v7 = v2[3];
  String.hash(into:)();
  if (v2[5])
  {
    v8 = v2[4];
    Hasher._combine(_:)(1u);
    sub_1000385F0();
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v9 = v2[6];

  sub_100162948(a1, v9);
}

Swift::Int AvroRecordSchema.hashValue.getter()
{
  sub_100006A80();
  v1 = *v0;
  v2 = v0[1];
  String.hash(into:)();
  v3 = v0[2];
  v4 = v0[3];
  String.hash(into:)();
  if (v0[5])
  {
    v5 = v0[4];
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  sub_100162948(v7, v0[6]);
  return Hasher._finalize()();
}

Swift::Int sub_10015F65C()
{
  Hasher.init(_seed:)();
  AvroRecordSchema.hash(into:)(v1);
  return Hasher._finalize()();
}

void sub_10015F6E0()
{
  sub_100006A3C();
  v2 = v1;
  v19[1] = v3;
  v20 = v0;
  v19[0] = v4;
  v6 = v5;
  v9 = sub_100046184(v7, v8);
  sub_100003650(v9);
  v11 = v10;
  v13 = *(v12 + 64);
  sub_100003760();
  __chkstk_darwin(v14);
  v16 = v19 - v15;
  v17 = v6[4];
  sub_100007534(v6, v6[3]);
  v2();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v18 = v20;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v18)
  {
    v21 = v19[0];
    sub_100164014();
    sub_100161300();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  (*(v11 + 8))(v16, v9);
  sub_100007FD4();
}

uint64_t AvroRecordSchema.Field.init(from:)()
{
  sub_10000BA14();
  v2 = sub_100046184(&qword_10021F698, &qword_1001A4500);
  sub_100003650(v2);
  v4 = *(v3 + 64);
  sub_100003760();
  __chkstk_darwin(v5);
  v6 = v0[3];
  v7 = v0[4];
  v8 = sub_10000E044();
  sub_1000190A8(v8, v9);
  sub_1001629CC();
  sub_100163FFC();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    v7 = KeyedDecodingContainer.decode(_:forKey:)();
    sub_100162A20();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v11 = sub_10001BEF4();
    v12(v11, v2);
  }

  sub_100007378(v0);
  return v7;
}

void sub_10015FA38()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  AvroRecordSchema.Field.encode(to:)();
}

void AvroRecordSchema.init(from:)()
{
  sub_100006A3C();
  sub_10000BA14();
  v3 = v2;
  v4 = sub_100046184(&qword_10021F6A8, &qword_1001A4508);
  sub_100003650(v4);
  v6 = *(v5 + 64);
  sub_100003760();
  __chkstk_darwin(v7);
  v8 = v0[3];
  v9 = v0[4];
  v10 = sub_10000C904();
  sub_1000190A8(v10, v11);
  sub_100161480();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    sub_100007378(v0);
  }

  else
  {
    sub_100163F08();
    v12 = KeyedDecodingContainer.decode(_:forKey:)();
    v14 = v13;
    v26 = v12;
    sub_100164014();
    sub_100163F08();
    v15 = KeyedDecodingContainer.decode(_:forKey:)();
    v17 = v16;
    v24 = v15;
    v25 = v3;
    sub_100163F08();
    v18 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v20 = v19;
    v23 = v18;
    sub_100046184(&qword_10021F640, &qword_1001A44E8);
    sub_100162A74(&qword_10021F6B0, sub_100162AE8);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v21 = sub_100007E6C();
    v22(v21);

    sub_100007378(v0);

    *v25 = v26;
    v25[1] = v14;
    v25[2] = v24;
    v25[3] = v17;
    v25[4] = v23;
    v25[5] = v20;
    v25[6] = v27;
  }

  sub_100007FD4();
}

double sub_10015FD2C@<D0>(uint64_t a1@<X8>)
{
  AvroRecordSchema.init(from:)();
  if (!v1)
  {
    *a1 = v4;
    *(a1 + 16) = v5;
    result = *&v6;
    *(a1 + 32) = v6;
    *(a1 + 48) = v7;
  }

  return result;
}

uint64_t AvroRecordSchema.description.getter()
{
  sub_100006D34();
  _StringGuts.grow(_:)(34);

  sub_100163F40();
  String.append(_:)(v0[1]);
  v1._countAndFlagsBits = 0x73646C656966202CLL;
  v1._object = 0xEA0000000000203ALL;
  String.append(_:)(v1);
  countAndFlagsBits = v0[3]._countAndFlagsBits;
  v6._countAndFlagsBits = Array.description.getter();
  sub_100014CD8(v6);

  sub_100012FAC(v3);
  return v5;
}

uint64_t InternalError.description.getter()
{
  sub_10000AA8C();

  return sub_10000672C();
}

uint64_t AvroArraySchema.items.setter(uint64_t a1)
{
  v3 = *(v1 + 16);

  *(v1 + 16) = a1;
  return result;
}

uint64_t sub_10015FF4C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x736D657469 && a2 == 0xE500000000000000)
  {

    return 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_100160010(char a1)
{
  if (a1)
  {
    return 0x736D657469;
  }

  else
  {
    return 1701869940;
  }
}

uint64_t sub_100160044@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10015FF4C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10016006C(uint64_t a1)
{
  v2 = sub_1001613D8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001600A8(uint64_t a1)
{
  v2 = sub_1001613D8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t AvroArraySchema.hash(into:)()
{
  String.hash(into:)();
  v0 = sub_10000672C();

  return _s9SwiftAvro0B6SchemaV4hash4intoys6HasherVz_tF_0(v0, v1);
}

uint64_t sub_1001601EC@<X0>(uint64_t (*a1)(void)@<X3>, uint64_t *a2@<X8>)
{
  result = a1();
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
  }

  return result;
}

void sub_100160220()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  AvroArraySchema.encode(to:)();
}

uint64_t AvroArraySchema.description.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_100006D34();
  _StringGuts.grow(_:)(22);

  sub_100163F40();
  v7._countAndFlagsBits = AvroSchema.description.getter(a3);
  sub_100014CD8(v7);

  sub_100012FAC(v4);
  return v6;
}

uint64_t sub_1001602BC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7365756C6176 && a2 == 0xE600000000000000)
  {

    return 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

Swift::Int sub_100160380(char a1)
{
  sub_100006A80();
  Hasher._combine(_:)(a1 & 1);
  return Hasher._finalize()();
}

uint64_t sub_1001603C0(char a1)
{
  if (a1)
  {
    return 0x7365756C6176;
  }

  else
  {
    return 1701869940;
  }
}

uint64_t sub_1001603F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1001602BC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10016041C(uint64_t a1)
{
  v2 = sub_10016142C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100160458(uint64_t a1)
{
  v2 = sub_10016142C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t _s9SwiftAvro0B11ArraySchemaV23__derived_struct_equalsySbAC_ACtFZ_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a1 == a4 && a2 == a5;
  if (!v5 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v6 = sub_10000672C();

  return _s9SwiftAvro0B6SchemaV23__derived_struct_equalsySbAC_ACtFZ_0(v6, v7);
}

Swift::Int _s9SwiftAvro0B11ArraySchemaV9hashValueSivg_0()
{
  sub_10000705C();
  sub_100006A80();
  String.hash(into:)();
  _s9SwiftAvro0B6SchemaV4hash4intoys6HasherVz_tF_0(v2, v0);
  return Hasher._finalize()();
}

Swift::Int sub_100160554(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t, uint64_t, uint64_t))
{
  v6 = *v4;
  v7 = v4[1];
  v8 = v4[2];
  Hasher.init(_seed:)();
  a4(v10, v6, v7, v8);
  return Hasher._finalize()();
}

void sub_1001605F8()
{
  sub_100006A3C();
  v2 = v1;
  v4 = v3;
  v7 = sub_100046184(v5, v6);
  sub_100003650(v7);
  v9 = *(v8 + 64);
  sub_100003760();
  __chkstk_darwin(v10);
  v11 = v4[3];
  v12 = v4[4];
  v13 = sub_10000F698();
  sub_100007534(v13, v14);
  v2();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v0)
  {
    KeyedDecodingContainer.decode(_:forKey:)();
    sub_100164014();
    sub_100162A20();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v15 = sub_10001BEF4();
    v16(v15, v7);
  }

  sub_100007378(v4);
  sub_100007FD4();
}

void sub_1001607E8()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  AvroMapSchema.encode(to:)();
}

unint64_t AvroMapSchema.description.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_100006D34();
  _StringGuts.grow(_:)(21);

  v6._countAndFlagsBits = AvroSchema.description.getter(a3);
  sub_100014CD8(v6);

  sub_100012FAC(v4);
  return 0xD000000000000012;
}

unint64_t sub_10016087C(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1002018B0, v2);

  if (v3 >= 8)
  {
    return 8;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1001608C8(char a1)
{
  result = 1819047278;
  switch(a1)
  {
    case 1:
      result = sub_10000AFA4();
      break;
    case 2:
      result = 7630441;
      break;
    case 3:
      result = 1735290732;
      break;
    case 4:
      result = sub_100163FD8();
      break;
    case 5:
      result = sub_10000CEF8();
      break;
    case 6:
      result = sub_100163FA0();
      break;
    case 7:
      result = sub_100163FC8();
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1001609AC@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10016087C(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1001609DC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1001608C8(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

Swift::Int sub_100160A48(uint64_t a1, char a2)
{
  Hasher.init(_seed:)();
  sub_1001608C8(a2);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t static AvroPrimitiveSchema.__derived_struct_equals(_:_:)(unsigned __int8 a1, char a2)
{
  v2 = 1819047278;
  v3 = 0xE400000000000000;
  v4 = a1;
  v5 = 1819047278;
  switch(v4)
  {
    case 1:
      v3 = 0xE700000000000000;
      v5 = sub_10000AFA4();
      break;
    case 2:
      v3 = 0xE300000000000000;
      v5 = 7630441;
      break;
    case 3:
      v5 = 1735290732;
      break;
    case 4:
      v3 = 0xE500000000000000;
      v5 = sub_100163FD8();
      break;
    case 5:
      v3 = 0xE600000000000000;
      v5 = sub_10000CEF8();
      break;
    case 6:
      v3 = 0xE600000000000000;
      v5 = sub_100163FA0();
      break;
    case 7:
      v3 = 0xE500000000000000;
      v5 = sub_100163FC8();
      break;
    default:
      break;
  }

  v6 = 0xE400000000000000;
  switch(a2)
  {
    case 1:
      v6 = 0xE700000000000000;
      sub_10000CAEC();
      break;
    case 2:
      v6 = 0xE300000000000000;
      v2 = 7630441;
      break;
    case 3:
      v2 = 1735290732;
      break;
    case 4:
      v6 = 0xE500000000000000;
      sub_10000CD10();
      break;
    case 5:
      v6 = 0xE600000000000000;
      sub_100013634();
      break;
    case 6:
      v6 = 0xE600000000000000;
      sub_100014CC8();
      break;
    case 7:
      v6 = 0xE500000000000000;
      sub_100018A08();
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

uint64_t sub_100160C14()
{
  String.hash(into:)();
}

Swift::Int sub_100160D04(char a1)
{
  sub_100006A80();
  sub_1001608C8(a1);
  String.hash(into:)();

  return Hasher._finalize()();
}

Swift::Int sub_100160D70()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  AvroPrimitiveSchema.hash(into:)(v3, v1);
  return Hasher._finalize()();
}

uint64_t sub_100160E64(uint64_t a1, uint64_t a2)
{
  if (a1 == 1701869940 && a2 == 0xE400000000000000)
  {

    v4 = 0;
  }

  else
  {
    sub_10000FFF0();
    sub_10000835C();

    v4 = v2 ^ 1;
  }

  return v4 & 1;
}

Swift::Int sub_100160EF4()
{
  sub_100006A80();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

uint64_t sub_100160F38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100160E64(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_100160F64(uint64_t a1)
{
  v2 = sub_100161384();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100160FA0(uint64_t a1)
{
  v2 = sub_100161384();

  return CodingKey.debugDescription.getter(a1, v2);
}

void AvroPrimitiveSchema.init(from:)()
{
  sub_100006A3C();
  v2 = v1;
  v3 = sub_100046184(&qword_10021F6D0, &qword_1001A4520);
  sub_100003650(v3);
  v5 = v4;
  v7 = *(v6 + 64);
  sub_100003760();
  __chkstk_darwin(v8);
  v10 = &v20[-1] - v9;
  v11 = v2[3];
  v12 = v2[4];
  v13 = sub_10000E044();
  sub_100007534(v13, v14);
  dispatch thunk of Decoder.singleValueContainer()();
  if (v0)
  {
    v15 = v2[3];
    v16 = v2[4];
    v17 = sub_10000E044();
    sub_1000190A8(v17, v18);
    sub_100161384();
    dispatch thunk of Decoder.container<A>(keyedBy:)();
    sub_100162B3C();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v5 + 8))(v10, v3);
  }

  else
  {
    sub_1000190A8(v20, v20[3]);
    sub_100162B3C();
    sub_100163FFC();
    dispatch thunk of SingleValueDecodingContainer.decode<A>(_:)();
    sub_100007378(v20);
  }

  sub_100007378(v2);
  sub_100007FD4();
}

void sub_1001611EC(_BYTE *a1@<X8>)
{
  AvroPrimitiveSchema.init(from:)();
  if (!v1)
  {
    *a1 = v3;
  }
}

BOOL sub_100161250(uint64_t (*a1)(uint64_t *), uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = (a3 + 32);
  do
  {
    v7 = v5;
    if (v5-- == 0)
    {
      break;
    }

    v12 = *v6;

    v9 = a1(&v12);
    if (v3)
    {

      return v7 != 0;
    }

    v10 = v9;

    ++v6;
  }

  while ((v10 & 1) == 0);
  return v7 != 0;
}

unint64_t sub_100161300()
{
  result = qword_10021F5F8;
  if (!qword_10021F5F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021F5F8);
  }

  return result;
}

unint64_t sub_100161384()
{
  result = qword_10021F608;
  if (!qword_10021F608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021F608);
  }

  return result;
}

unint64_t sub_1001613D8()
{
  result = qword_10021F618;
  if (!qword_10021F618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021F618);
  }

  return result;
}

unint64_t sub_10016142C()
{
  result = qword_10021F628;
  if (!qword_10021F628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021F628);
  }

  return result;
}

unint64_t sub_100161480()
{
  result = qword_10021F638;
  if (!qword_10021F638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021F638);
  }

  return result;
}

unint64_t sub_1001614D4()
{
  result = qword_10021F650;
  if (!qword_10021F650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021F650);
  }

  return result;
}

unint64_t sub_100161528()
{
  result = qword_10021F658;
  if (!qword_10021F658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021F658);
  }

  return result;
}

unint64_t sub_10016157C()
{
  result = qword_10021F660;
  if (!qword_10021F660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021F660);
  }

  return result;
}

unint64_t sub_1001615D0()
{
  result = qword_10021F668;
  if (!qword_10021F668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021F668);
  }

  return result;
}

unint64_t sub_100161624()
{
  result = qword_10021F670;
  if (!qword_10021F670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021F670);
  }

  return result;
}

unint64_t sub_100161678()
{
  result = qword_10021F678;
  if (!qword_10021F678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021F678);
  }

  return result;
}

void AvroUnionSchema.hash(into:)(uint64_t a1, uint64_t a2)
{
  sub_100023FCC(a1, a2);
  if (v2)
  {
    v4 = (v3 + 32);
    do
    {
      v5 = *v4++;

      v6 = sub_10000BE80();
      _s9SwiftAvro0B6SchemaV4hash4intoys6HasherVz_tF_0(v6);

      --v2;
    }

    while (v2);
  }
}

Swift::Int sub_10016173C()
{
  sub_10000AA8C();
  sub_100006A80();
  v0(v3, v1);
  return Hasher._finalize()();
}

Swift::Int sub_1001617A8(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  Hasher.init(_seed:)();
  a4(v8, v6);
  return Hasher._finalize()();
}

uint64_t AvroUnionSchema.init(from:)()
{
  sub_10000BA14();
  v4 = v3[4];
  sub_100007534(v3, v3[3]);
  sub_10016406C();
  if (!v2)
  {
    sub_1000190A8(v7, v7[3]);
    sub_100046184(&qword_10021F6E0, &qword_1001A4528);
    sub_100162B90();
    dispatch thunk of SingleValueDecodingContainer.decode<A>(_:)();
    v1 = v6;
    sub_100007378(v7);
  }

  sub_100007378(v0);
  return v1;
}

uint64_t sub_1001618F4@<X0>(uint64_t *a1@<X8>)
{
  result = AvroUnionSchema.init(from:)();
  if (!v1)
  {
    *a1 = result;
  }

  return result;
}

void sub_100161940(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  Hasher._combine(_:)(v4);
  v193 = v4;
  if (v4)
  {
    v5 = 0;
    v192 = a2 + 32;
    do
    {
      v194 = v5;
      v6 = (v192 + 72 * v5);
      memcpy(__dst, v6, 0x41uLL);
      v7 = __dst[0];
      v8 = __dst[1];
      v9 = __dst[3];
      v10 = __dst[5];
      v11 = __dst[6];
      switch(LOBYTE(__dst[8]))
      {
        case 1:
          sub_100163EF0();
          v30 = sub_100011BBC();
          sub_100163ABC(v30, v31);
          sub_100007FC8();
          String.hash(into:)();
          v32 = sub_100012FA0();
          _s9SwiftAvro0B6SchemaV4hash4intoys6HasherVz_tF_0(v32, v33);
          v34 = sub_1000046E4();
          sub_100161940(v34);
          goto LABEL_46;
        case 2:
          sub_100163ED8();
          v20 = sub_100011BBC();
          sub_100163ABC(v20, v21);
          sub_100007FC8();
          String.hash(into:)();
          v22 = sub_100012FA0();
          _s9SwiftAvro0B6SchemaV4hash4intoys6HasherVz_tF_0(v22, v23);
          v24 = sub_1000046E4();
          sub_10017831C(v24, v25);
          goto LABEL_46;
        case 3:
          memcpy(v214, v6, 0x41uLL);
          sub_100017CEC();
          v26 = sub_100164008();
          sub_100163C2C(v26, v27);
          v28 = sub_100164008();
          sub_100163C2C(v28, v29);
          sub_100007FC8();
          String.hash(into:)();
          sub_100012FA0();
          String.hash(into:)();
          if (v10)
          {
            sub_10000BBF0();
            sub_10000E284();
          }

          else
          {
            sub_10000FE6C();
          }

          v43 = v194;
          Hasher._combine(_:)(*(v11 + 16));
          for (i = *(v11 + 16); i; --i)
          {
            sub_100009A30();

            sub_1000041F8();
            String.hash(into:)();

            v45 = sub_10000C904();
            _s9SwiftAvro0B6SchemaV4hash4intoys6HasherVz_tF_0(v45, v46);
            sub_100163F58();
          }

          v47 = sub_10000E044();
          sub_100161940(v47);
          goto LABEL_175;
        case 4:
          memcpy(v214, (__dst[0] + 16), sizeof(v214));
          sub_10001BCB0();
          v12 = v214[0];
          Hasher._combine(_:)(*(v214[0] + 16));
          v13 = *(v12 + 16);
          if (v13)
          {
            v14 = (v12 + 32);
            sub_100037EC0();
            sub_100037EC0();
            v15 = sub_100164008();
            sub_100163B18(v15, v16);
            do
            {
              v17 = *v14++;

              v18 = sub_1000041F8();
              _s9SwiftAvro0B6SchemaV4hash4intoys6HasherVz_tF_0(v18, v19);

              --v13;
            }

            while (v13);
          }

          else
          {
            sub_100037EC0();
            sub_100037EC0();
            v35 = sub_100164008();
            sub_100163B18(v35, v36);
          }

          v37 = v214[1];
          v38 = v214[2];
          v39 = v214[4];
          v40 = v214[5];
          v41 = v214[6];
          v42 = v214[7];
          switch(LOBYTE(v214[9]))
          {
            case 1:
              sub_100163EF0();
              sub_100007FC8();
              String.hash(into:)();
              v54 = sub_100012FA0();
              _s9SwiftAvro0B6SchemaV4hash4intoys6HasherVz_tF_0(v54, v55);
              v56 = sub_1000046E4();
              sub_100161940(v56);
              goto LABEL_30;
            case 2:
              sub_100163ED8();
              sub_100007FC8();
              String.hash(into:)();
              v50 = sub_100012FA0();
              _s9SwiftAvro0B6SchemaV4hash4intoys6HasherVz_tF_0(v50, v51);
              v52 = sub_1000046E4();
              sub_10017831C(v52, v53);
LABEL_30:
              v43 = v194;
              break;
            case 3:
              sub_100017CEC();
              sub_100007FC8();
              String.hash(into:)();
              sub_100012FA0();
              String.hash(into:)();
              if (v41)
              {
                sub_10000BBF0();
                sub_10000E284();
              }

              else
              {
                sub_10000FE6C();
              }

              v43 = v194;
              v71 = *(v42 + 16);
              Hasher._combine(_:)(v71);
              for (; v71; --v71)
              {
                sub_100009A30();

                sub_1000041F8();
                String.hash(into:)();

                v72 = sub_10000C904();
                _s9SwiftAvro0B6SchemaV4hash4intoys6HasherVz_tF_0(v72, v73);
                sub_100163F58();
              }

              v74 = sub_10000E044();
              sub_100161940(v74);
              break;
            case 4:
              memcpy(v213, (v214[1] + 16), sizeof(v213));
              sub_10001BCB0();
              sub_100163F70();
              if (v40)
              {
                sub_100163B18(v213, &v206);
                do
                {
                  sub_100163FB0();
                  v48 = sub_1000041F8();
                  _s9SwiftAvro0B6SchemaV4hash4intoys6HasherVz_tF_0(v48, v49);

                  --v40;
                }

                while (v40);
              }

              else
              {
                sub_100163B18(v213, &v206);
              }

              v43 = v213[3];
              v68 = v213[4];
              v69 = v213[5];
              v70 = v213[6];
              switch(LOBYTE(v213[9]))
              {
                case 1:
                  sub_100163EF0();
                  sub_100006508();
                  String.hash(into:)();
                  v93 = sub_10000F698();
                  _s9SwiftAvro0B6SchemaV4hash4intoys6HasherVz_tF_0(v93, v94);
                  v95 = sub_10000E044();
                  sub_100161940(v95);
                  goto LABEL_69;
                case 2:
                  sub_100163ED8();
                  sub_100006508();
                  String.hash(into:)();
                  v89 = sub_10000F698();
                  _s9SwiftAvro0B6SchemaV4hash4intoys6HasherVz_tF_0(v89, v90);
                  v91 = sub_10000E044();
                  sub_10017831C(v91, v92);
                  goto LABEL_69;
                case 3:
                  sub_100017CEC();
                  sub_100006508();
                  String.hash(into:)();
                  sub_10000F698();
                  String.hash(into:)();
                  if (v70)
                  {
                    sub_10000BBF0();
                    sub_10000E284();
                  }

                  else
                  {
                    sub_10000FE6C();
                  }

                  sub_100006868();
                  for (; v68; --v68)
                  {
                    sub_100009A30();

                    sub_1000041F8();
                    String.hash(into:)();

                    v110 = sub_10000C904();
                    _s9SwiftAvro0B6SchemaV4hash4intoys6HasherVz_tF_0(v110, v111);
                    sub_100163F58();
                  }

                  v112 = sub_100007FC8();
                  sub_100161940(v112);
                  goto LABEL_173;
                case 4:
                  sub_1001640BC(&v206);
                  sub_10001BCB0();
                  sub_100163F70();
                  if (v69)
                  {
                    sub_100163B18(&v206, v203);
                    do
                    {
                      sub_100163FB0();
                      v87 = sub_1000041F8();
                      _s9SwiftAvro0B6SchemaV4hash4intoys6HasherVz_tF_0(v87, v88);

                      --v69;
                    }

                    while (v69);
                  }

                  else
                  {
                    sub_100163B18(&v206, v203);
                  }

                  v43 = v207;
                  v107 = v208;
                  v108 = v209;
                  v109 = v210;
                  switch(v211)
                  {
                    case 1:
                      sub_100163EF0();
                      sub_100006508();
                      String.hash(into:)();
                      v131 = sub_10000F698();
                      _s9SwiftAvro0B6SchemaV4hash4intoys6HasherVz_tF_0(v131, v132);
                      v133 = sub_10000E044();
                      sub_100161940(v133);
                      goto LABEL_108;
                    case 2:
                      sub_100163ED8();
                      sub_100006508();
                      String.hash(into:)();
                      v127 = sub_10000F698();
                      _s9SwiftAvro0B6SchemaV4hash4intoys6HasherVz_tF_0(v127, v128);
                      v129 = sub_10000E044();
                      sub_10017831C(v129, v130);
                      goto LABEL_108;
                    case 3:
                      sub_100017CEC();
                      sub_100006508();
                      String.hash(into:)();
                      sub_10000F698();
                      String.hash(into:)();
                      if (v109)
                      {
                        sub_10000BBF0();
                        sub_10000E284();
                      }

                      else
                      {
                        sub_10000FE6C();
                      }

                      sub_100006868();
                      for (; v107; --v107)
                      {
                        sub_100009A30();

                        sub_1000041F8();
                        String.hash(into:)();

                        v145 = sub_10000C904();
                        _s9SwiftAvro0B6SchemaV4hash4intoys6HasherVz_tF_0(v145, v146);
                        sub_100163F58();
                      }

                      v147 = sub_100007FC8();
                      sub_100161940(v147);
                      goto LABEL_172;
                    case 4:
                      sub_1001640BC(v203);
                      sub_10001BCB0();
                      sub_100163F70();
                      if (v108)
                      {
                        sub_100163B18(v203, v200);
                        do
                        {
                          sub_100163FB0();
                          v125 = sub_1000041F8();
                          _s9SwiftAvro0B6SchemaV4hash4intoys6HasherVz_tF_0(v125, v126);

                          --v108;
                        }

                        while (v108);
                      }

                      else
                      {
                        sub_100163B18(v203, v200);
                      }

                      v43 = v203[3];
                      v142 = v203[4];
                      v143 = v203[5];
                      v144 = v203[6];
                      switch(v204)
                      {
                        case 1:
                          sub_100163EF0();
                          sub_100006508();
                          String.hash(into:)();
                          v154 = sub_10000F698();
                          _s9SwiftAvro0B6SchemaV4hash4intoys6HasherVz_tF_0(v154, v155);
                          v156 = sub_10000E044();
                          sub_100161940(v156);
                          goto LABEL_129;
                        case 2:
                          sub_100163ED8();
                          sub_100006508();
                          String.hash(into:)();
                          v150 = sub_10000F698();
                          _s9SwiftAvro0B6SchemaV4hash4intoys6HasherVz_tF_0(v150, v151);
                          v152 = sub_10000E044();
                          sub_10017831C(v152, v153);
                          goto LABEL_129;
                        case 3:
                          sub_100017CEC();
                          sub_100006508();
                          String.hash(into:)();
                          sub_10000F698();
                          String.hash(into:)();
                          if (v144)
                          {
                            sub_10000BBF0();
                            sub_10000E284();
                          }

                          else
                          {
                            sub_10000FE6C();
                          }

                          sub_100006868();
                          for (; v142; --v142)
                          {
                            sub_100009A30();

                            sub_1000041F8();
                            String.hash(into:)();

                            v164 = sub_10000C904();
                            _s9SwiftAvro0B6SchemaV4hash4intoys6HasherVz_tF_0(v164, v165);
                            sub_100163F58();
                          }

                          v166 = sub_100007FC8();
                          sub_100161940(v166);
                          goto LABEL_171;
                        case 4:
                          sub_1001640BC(v200);
                          sub_10001BCB0();
                          sub_100163F70();
                          if (v143)
                          {
                            sub_100163B18(v200, v197);
                            do
                            {
                              sub_100163FB0();
                              v148 = sub_1000041F8();
                              _s9SwiftAvro0B6SchemaV4hash4intoys6HasherVz_tF_0(v148, v149);

                              --v143;
                            }

                            while (v143);
                          }

                          else
                          {
                            sub_100163B18(v200, v197);
                          }

                          v43 = v200[3];
                          v161 = v200[4];
                          v162 = v200[5];
                          v163 = v200[6];
                          switch(v201)
                          {
                            case 1:
                              sub_100163EF0();
                              sub_100006508();
                              String.hash(into:)();
                              v173 = sub_10000F698();
                              _s9SwiftAvro0B6SchemaV4hash4intoys6HasherVz_tF_0(v173, v174);
                              v175 = sub_10000E044();
                              sub_100161940(v175);
                              goto LABEL_148;
                            case 2:
                              sub_100163ED8();
                              sub_100006508();
                              String.hash(into:)();
                              v169 = sub_10000F698();
                              _s9SwiftAvro0B6SchemaV4hash4intoys6HasherVz_tF_0(v169, v170);
                              v171 = sub_10000E044();
                              sub_10017831C(v171, v172);
                              goto LABEL_148;
                            case 3:
                              sub_100017CEC();
                              sub_100006508();
                              String.hash(into:)();
                              sub_10000F698();
                              String.hash(into:)();
                              if (v163)
                              {
                                sub_10000BBF0();
                                sub_10000E284();
                              }

                              else
                              {
                                sub_10000FE6C();
                              }

                              sub_100006868();
                              for (; v161; --v161)
                              {
                                sub_100009A30();

                                sub_1000041F8();
                                String.hash(into:)();

                                v177 = sub_10000C904();
                                _s9SwiftAvro0B6SchemaV4hash4intoys6HasherVz_tF_0(v177, v178);
                                sub_100163F58();
                              }

                              v179 = sub_100007FC8();
                              sub_100161940(v179);
                              goto LABEL_170;
                            case 4:
                              sub_1001640BC(v197);
                              sub_10001BCB0();
                              sub_100163F70();
                              if (v162)
                              {
                                sub_100163B18(v197, v196);
                                do
                                {
                                  sub_100163FB0();
                                  v167 = sub_1000041F8();
                                  _s9SwiftAvro0B6SchemaV4hash4intoys6HasherVz_tF_0(v167, v168);

                                  --v162;
                                }

                                while (v162);
                              }

                              else
                              {
                                sub_100163B18(v197, v196);
                              }

                              v176 = v197[6];
                              switch(v198)
                              {
                                case 1:
                                  sub_100163EF0();
                                  sub_10000F698();
                                  String.hash(into:)();
                                  v186 = sub_10000E044();
                                  _s9SwiftAvro0B6SchemaV4hash4intoys6HasherVz_tF_0(v186, v187);
                                  v188 = sub_100007FC8();
                                  sub_100161940(v188);
                                  goto LABEL_164;
                                case 2:
                                  sub_100163ED8();
                                  sub_10000F698();
                                  String.hash(into:)();
                                  v182 = sub_10000E044();
                                  _s9SwiftAvro0B6SchemaV4hash4intoys6HasherVz_tF_0(v182, v183);
                                  v184 = sub_100007FC8();
                                  sub_10017831C(v184, v185);
                                  goto LABEL_164;
                                case 3:
                                  sub_100017CEC();
                                  sub_10000F698();
                                  String.hash(into:)();
                                  sub_10000E044();
                                  String.hash(into:)();
                                  if (v176)
                                  {
                                    sub_10000BBF0();
                                    sub_100012FA0();
                                    String.hash(into:)();
                                  }

                                  else
                                  {
                                    sub_10000FE6C();
                                  }

                                  v43 = v194;
                                  v189 = sub_10000C904();
                                  sub_100162948(v189, v190);
                                  v191 = sub_100007CD4();
                                  sub_100161940(v191);
                                  goto LABEL_169;
                                case 4:
                                  memcpy(v196, (v197[1] + 16), sizeof(v196));
                                  sub_10001BCB0();
                                  sub_100163F70();
                                  if (v176)
                                  {
                                    sub_100163B18(v196, v195);
                                    v43 = v194;
                                    do
                                    {
                                      sub_100163FB0();
                                      v180 = sub_1000041F8();
                                      _s9SwiftAvro0B6SchemaV4hash4intoys6HasherVz_tF_0(v180, v181);

                                      --v176;
                                    }

                                    while (v176);
                                  }

                                  else
                                  {
                                    sub_100163B18(v196, v195);
                                    v43 = v194;
                                  }

                                  memcpy(v216, &v196[1], sizeof(v216));
                                  _s9SwiftAvro0B5ValueV4hash4intoys6HasherVz_tF_0(a1);
                                  Hasher._combine(_:)(v196[10]);
                                  sub_100163B74(v196);
                                  goto LABEL_169;
                                default:
                                  sub_100163F18();
                                  sub_10000F698();
                                  _s9SwiftAvro0B9PrimitiveV4hash4intoys6HasherVz_tF_0();
LABEL_164:
                                  v43 = v194;
LABEL_169:
                                  Hasher._combine(_:)(v199);
                                  sub_100163B74(v197);
                                  break;
                              }

                              goto LABEL_170;
                            default:
                              sub_100163F18();
                              sub_100006508();
                              sub_1001640D4();
LABEL_148:
                              v43 = v194;
LABEL_170:
                              Hasher._combine(_:)(v202);
                              sub_100163B74(v200);
                              break;
                          }

                          goto LABEL_171;
                        default:
                          sub_100163F18();
                          sub_100006508();
                          sub_1001640D4();
LABEL_129:
                          v43 = v194;
LABEL_171:
                          Hasher._combine(_:)(v205);
                          sub_100163B74(v203);
                          break;
                      }

                      goto LABEL_172;
                    default:
                      sub_100163F18();
                      sub_100006508();
                      sub_1001640D4();
LABEL_108:
                      v43 = v194;
LABEL_172:
                      Hasher._combine(_:)(v212);
                      sub_100163B74(&v206);
                      break;
                  }

                  goto LABEL_173;
                default:
                  sub_100163F18();
                  sub_100006508();
                  sub_1001640D4();
LABEL_69:
                  v43 = v194;
LABEL_173:
                  Hasher._combine(_:)(v213[10]);
                  sub_100163B74(v213);
                  break;
              }

              break;
            default:
              sub_100163F18();
              switch(v39)
              {
                case 1:
                  sub_100163ED8();
                  v98 = v37;
                  goto LABEL_83;
                case 2:
                  sub_100017CEC();
                  v96 = v37;
                  goto LABEL_74;
                case 3:
                  sub_10001BCB0();
                  if ((v37 & 0x7FFFFF) == 0 && (v37 & 0x7F800000) == 0)
                  {
                    v98 = 0;
                  }

                  else
                  {
                    v98 = v37;
                  }

LABEL_83:
                  Hasher._combine(_:)(v98);
                  goto LABEL_30;
                case 4:
                  Hasher._combine(_:)(5uLL);
                  if ((v37 & 0x7FFFFFFFFFFFFFFFLL) != 0)
                  {
                    v96 = v37;
                  }

                  else
                  {
                    v96 = 0;
                  }

LABEL_74:
                  Hasher._combine(_:)(v96);
                  goto LABEL_30;
                case 5:
                  Hasher._combine(_:)(6uLL);
                  sub_100007FC8();
                  String.hash(into:)();
                  goto LABEL_30;
                case 6:
                  Hasher._combine(_:)(7uLL);
                  if (((v38 >> 60) & 3) != 0)
                  {
                    v99 = sub_10000AC38();
                    sub_100014924(v99, v100);
                    v43 = v194;
                  }

                  else
                  {
                    v119 = sub_100046184(&qword_100217F20, &qword_1001A5520);
                    v207 = v119;
                    v208 = sub_100163BC8();
                    v206 = v37;
                    v120 = sub_100007534(&v206, v119);
                    v121 = *v120;
                    v122 = *(*v120 + 16);
                    if (v122)
                    {
                      v43 = v194;
                      if (v122 <= 0xE)
                      {
                        *(v213 + 6) = 0;
                        v213[0] = 0;
                        BYTE6(v213[1]) = v122;
                        memcpy(v213, (v121 + 32), v122);
                        sub_10002DF74();
                        sub_10001BDA0();
                      }

                      else
                      {
                        v123 = type metadata accessor for __DataStorage();
                        sub_1000E2424(v123);
                        sub_100164020();
                        if (v122 >= v124)
                        {
                          sub_10001BDA0();
                          sub_1001640A4();
                          sub_10000899C();
                          type metadata accessor for Data.RangeReference();
                          v157 = sub_10000B9C4();
                          *(v157 + 16) = 0;
                          *(v157 + 24) = v122;
                        }

                        else
                        {
                          sub_10001BDA0();
                          sub_1001640A4();
                        }
                      }
                    }

                    else
                    {
                      sub_10001BDA0();
                      v43 = v194;
                    }

                    sub_100007378(&v206);
                  }

                  sub_10000AC38();
                  v158 = Data.hashValue.getter();
                  v159 = sub_10000AC38();
                  sub_100014A40(v159, v160);
                  Hasher._combine(_:)(v158);
                  goto LABEL_174;
                case 7:
                  sub_100163F18();
                  goto LABEL_30;
                default:
                  sub_100163EF0();
                  Hasher._combine(_:)(v37 & 1);
                  goto LABEL_30;
              }
          }

LABEL_174:
          Hasher._combine(_:)(v214[10]);
          sub_100163B74(v214);
LABEL_175:
          sub_100096480(__dst);
          sub_100096480(__dst);
          break;
        default:
          sub_100163F18();
          switch(v9)
          {
            case 1:
              sub_100163ED8();
              v59 = v7;
              goto LABEL_44;
            case 2:
              sub_100017CEC();
              v57 = v7;
              goto LABEL_35;
            case 3:
              sub_10001BCB0();
              if ((v7 & 0x7FFFFF) == 0 && (v7 & 0x7F800000) == 0)
              {
                v59 = 0;
              }

              else
              {
                v59 = v7;
              }

LABEL_44:
              Hasher._combine(_:)(v59);
              break;
            case 4:
              Hasher._combine(_:)(5uLL);
              if ((v7 & 0x7FFFFFFFFFFFFFFFLL) != 0)
              {
                v57 = v7;
              }

              else
              {
                v57 = 0;
              }

LABEL_35:
              Hasher._combine(_:)(v57);
              break;
            case 5:
              Hasher._combine(_:)(6uLL);
              v60 = sub_100011BBC();
              sub_100163ABC(v60, v61);
              sub_100007FC8();
              String.hash(into:)();
              goto LABEL_46;
            case 6:
              Hasher._combine(_:)(7uLL);
              if (((v8 >> 60) & 3) != 0)
              {
                v62 = sub_100011BBC();
                sub_100163ABC(v62, v63);
                v64 = sub_100011BBC();
                sub_100163ABC(v64, v65);
                v66 = sub_100011BBC();
                sub_100163ABC(v66, v67);
                v43 = v194;
              }

              else
              {
                v75 = sub_100046184(&qword_100217F20, &qword_1001A5520);
                v213[3] = v75;
                v213[4] = sub_100163BC8();
                v213[0] = v7;
                v76 = sub_100007534(v213, v75);
                v77 = *v76;
                v78 = *(*v76 + 16);
                if (v78)
                {
                  v43 = v194;
                  if (v78 <= 0xE)
                  {
                    *(v214 + 6) = 0;
                    v214[0] = 0;
                    BYTE6(v214[1]) = v78;
                    memcpy(v214, (v77 + 32), v78);
                    sub_10002DF74();
                    v113 = sub_100011BBC();
                    sub_100163ABC(v113, v114);
                    v115 = sub_100011BBC();
                    sub_100163ABC(v115, v116);
                    v117 = sub_100011BBC();
                    sub_100163ABC(v117, v118);
                  }

                  else
                  {
                    v79 = type metadata accessor for __DataStorage();
                    sub_1000E2424(v79);
                    sub_100164020();
                    v80 = sub_100011BBC();
                    if (v78 >= v82)
                    {
                      sub_100163ABC(v80, v81);
                      v134 = sub_100011BBC();
                      sub_100163ABC(v134, v135);
                      v136 = sub_100011BBC();
                      sub_100163ABC(v136, v137);
                      sub_1001640A4();
                      sub_10000899C();
                      type metadata accessor for Data.RangeReference();
                      v138 = sub_10000B9C4();
                      *(v138 + 16) = 0;
                      *(v138 + 24) = v78;
                    }

                    else
                    {
                      sub_100163ABC(v80, v81);
                      v83 = sub_100011BBC();
                      sub_100163ABC(v83, v84);
                      v85 = sub_100011BBC();
                      sub_100163ABC(v85, v86);
                      sub_1001640A4();
                    }
                  }
                }

                else
                {
                  v101 = sub_100011BBC();
                  sub_100163ABC(v101, v102);
                  v103 = sub_100011BBC();
                  sub_100163ABC(v103, v104);
                  v105 = sub_100011BBC();
                  sub_100163ABC(v105, v106);
                  v43 = v194;
                }

                sub_100007378(v213);
              }

              sub_10000AC38();
              v139 = Data.hashValue.getter();
              v140 = sub_10000AC38();
              sub_100014A40(v140, v141);
              Hasher._combine(_:)(v139);
              goto LABEL_175;
            case 7:
              sub_100163F18();
              break;
            default:
              sub_100163EF0();
              Hasher._combine(_:)(v7 & 1);
              break;
          }

          sub_100096480(__dst);
LABEL_46:
          sub_100096480(__dst);
          v43 = v194;
          break;
      }

      v5 = v43 + 1;
    }

    while (v5 != v193);
  }
}

void sub_100162948(uint64_t a1, uint64_t a2)
{
  sub_100023FCC(a1, a2);
  if (v2)
  {
    v5 = (v4 + 48);
    do
    {
      v6 = *(v5 - 2);
      v7 = *(v5 - 1);
      v8 = *v5;
      v5 += 3;

      sub_10000BE80();
      String.hash(into:)();

      _s9SwiftAvro0B6SchemaV4hash4intoys6HasherVz_tF_0(v3);
      sub_100163F58();

      --v2;
    }

    while (v2);
  }
}

unint64_t sub_1001629CC()
{
  result = qword_10021F690;
  if (!qword_10021F690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021F690);
  }

  return result;
}

unint64_t sub_100162A20()
{
  result = qword_10021F6A0;
  if (!qword_10021F6A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021F6A0);
  }

  return result;
}

uint64_t sub_100162A74(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1000461CC(&qword_10021F640, &qword_1001A44E8);
    a2();
    sub_1000385F0();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100162AE8()
{
  result = qword_10021F6B8;
  if (!qword_10021F6B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021F6B8);
  }

  return result;
}

unint64_t sub_100162B3C()
{
  result = qword_10021F6D8;
  if (!qword_10021F6D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021F6D8);
  }

  return result;
}

unint64_t sub_100162B90()
{
  result = qword_10021F6E8;
  if (!qword_10021F6E8)
  {
    sub_1000461CC(&qword_10021F6E0, &qword_1001A4528);
    sub_100162A20();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021F6E8);
  }

  return result;
}

unint64_t sub_100162C18()
{
  result = qword_10021F6F0;
  if (!qword_10021F6F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021F6F0);
  }

  return result;
}

unint64_t sub_100162C70()
{
  result = qword_10021F6F8;
  if (!qword_10021F6F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021F6F8);
  }

  return result;
}

unint64_t sub_100162CC8()
{
  result = qword_10021F700;
  if (!qword_10021F700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021F700);
  }

  return result;
}

unint64_t sub_100162D20()
{
  result = qword_10021F708;
  if (!qword_10021F708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021F708);
  }

  return result;
}

unint64_t sub_100162D78()
{
  result = qword_10021F710;
  if (!qword_10021F710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021F710);
  }

  return result;
}

unint64_t sub_100162DD0()
{
  result = qword_10021F718;
  if (!qword_10021F718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021F718);
  }

  return result;
}

unint64_t sub_100162E28()
{
  result = qword_10021F720;
  if (!qword_10021F720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021F720);
  }

  return result;
}

uint64_t sub_100162E94(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 56))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
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

uint64_t sub_100162ED4(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_100162F68(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7C && *(a1 + 8))
    {
      return sub_10002D478(*a1 + 123);
    }

    v3 = (((*a1 >> 57) >> 4) | (8 * ((*a1 >> 57) & 8 | *a1 & 7))) ^ 0x7F;
    if (v3 >= 0x7B)
    {
      return sub_10002D478(-1);
    }
  }

  else
  {
    v3 = -1;
  }

  return sub_10002D478(v3);
}

uint64_t sub_100162FB8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7B)
  {
    *result = a2 - 124;
    if (a3 >= 0x7C)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7C)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 3) & 0xF | (16 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

uint64_t sub_100163048(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return sub_10002D478(-1);
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return sub_10002D478((*a1 | (v4 << 8)) - 8);
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

      return sub_10002D478((*a1 | (v4 << 8)) - 8);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return sub_10002D478((*a1 | (v4 << 8)) - 8);
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return sub_10002D478(v8);
}

_BYTE *sub_1001630CC(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF8)
  {
    v6 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
          result = sub_100038618(result, a2 + 7);
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for AvroRecordSchema.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_10016328C(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return sub_10002D478(-1);
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return sub_10002D478((*a1 | (v4 << 8)) - 2);
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

      return sub_10002D478((*a1 | (v4 << 8)) - 2);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return sub_10002D478((*a1 | (v4 << 8)) - 2);
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return sub_10002D478(v8);
}

_BYTE *sub_100163310(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
          result = sub_100038618(result, a2 + 1);
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1001633E8(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_100163494()
{
  result = qword_10021F728;
  if (!qword_10021F728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021F728);
  }

  return result;
}

unint64_t sub_1001634EC()
{
  result = qword_10021F730;
  if (!qword_10021F730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021F730);
  }

  return result;
}

unint64_t sub_100163544()
{
  result = qword_10021F738;
  if (!qword_10021F738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021F738);
  }

  return result;
}

unint64_t sub_10016359C()
{
  result = qword_10021F740;
  if (!qword_10021F740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021F740);
  }

  return result;
}

unint64_t sub_1001635F4()
{
  result = qword_10021F748;
  if (!qword_10021F748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021F748);
  }

  return result;
}

unint64_t sub_10016364C()
{
  result = qword_10021F750;
  if (!qword_10021F750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021F750);
  }

  return result;
}

unint64_t sub_1001636A4()
{
  result = qword_10021F758;
  if (!qword_10021F758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021F758);
  }

  return result;
}

unint64_t sub_1001636FC()
{
  result = qword_10021F760;
  if (!qword_10021F760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021F760);
  }

  return result;
}

unint64_t sub_100163754()
{
  result = qword_10021F768;
  if (!qword_10021F768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021F768);
  }

  return result;
}

unint64_t sub_1001637AC()
{
  result = qword_10021F770;
  if (!qword_10021F770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021F770);
  }

  return result;
}

unint64_t sub_100163804()
{
  result = qword_10021F778;
  if (!qword_10021F778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021F778);
  }

  return result;
}

unint64_t sub_10016385C()
{
  result = qword_10021F780;
  if (!qword_10021F780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021F780);
  }

  return result;
}

unint64_t sub_1001638B4()
{
  result = qword_10021F788;
  if (!qword_10021F788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021F788);
  }

  return result;
}

unint64_t sub_10016390C()
{
  result = qword_10021F790;
  if (!qword_10021F790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021F790);
  }

  return result;
}

unint64_t sub_100163964()
{
  result = qword_10021F798;
  if (!qword_10021F798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021F798);
  }

  return result;
}

unint64_t sub_1001639BC()
{
  result = qword_10021F7A0;
  if (!qword_10021F7A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021F7A0);
  }

  return result;
}

unint64_t sub_100163A14()
{
  result = qword_10021F7A8;
  if (!qword_10021F7A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021F7A8);
  }

  return result;
}

unint64_t sub_100163A68()
{
  result = qword_10021F7B0;
  if (!qword_10021F7B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021F7B0);
  }

  return result;
}

unint64_t sub_100163BC8()
{
  result = qword_10021F7B8;
  if (!qword_10021F7B8)
  {
    sub_1000461CC(&qword_100217F20, &qword_1001A5520);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021F7B8);
  }

  return result;
}

uint64_t sub_100163C88(uint64_t result, unint64_t a2, uint64_t a3, char a4)
{
  if (a4 == 6)
  {
    return sub_100163CAC(result, a2);
  }

  if (a4 == 5)
  {
  }

  return result;
}

uint64_t sub_100163CAC(uint64_t result, unint64_t a2)
{
  switch((a2 >> 60) & 3)
  {
    case 1uLL:
    case 2uLL:
      result = sub_100014924(result, a2 & 0xCFFFFFFFFFFFFFFFLL);
      break;
    case 3uLL:
      return result;
    default:

      break;
  }

  return result;
}

uint64_t sub_100163D00(uint64_t result, unint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  switch(a9)
  {
    case 0:

      result = sub_100163E18(result, a2, a3, a4);
      break;
    case 1:
    case 2:

      goto LABEL_3;
    case 3:

      break;
    case 4:
LABEL_3:

      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_100163E18(uint64_t result, unint64_t a2, uint64_t a3, char a4)
{
  if (a4 == 6)
  {
    return sub_100163E3C(result, a2);
  }

  if (a4 == 5)
  {
  }

  return result;
}

uint64_t sub_100163E3C(uint64_t result, unint64_t a2)
{
  switch((a2 >> 60) & 3)
  {
    case 1uLL:
    case 2uLL:
      result = sub_100014A40(result, a2 & 0xCFFFFFFFFFFFFFFFLL);
      break;
    case 3uLL:
      return result;
    default:

      break;
  }

  return result;
}

void sub_100163ED8()
{

  Hasher._combine(_:)(2uLL);
}

void sub_100163EF0()
{

  Hasher._combine(_:)(1uLL);
}

void sub_100163F18()
{

  Hasher._combine(_:)(0);
}

uint64_t sub_100163F58()
{
}

void sub_100163F70()
{
  v2 = *(v0 + 16);

  Hasher._combine(_:)(v2);
}

uint64_t sub_100163F88()
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t sub_100163FB0()
{
  v2 = *v0;
}

uint64_t sub_10016402C(uint64_t a1, uint64_t a2)
{
  v4 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
  v3 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
  v5 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
}

uint64_t sub_10016404C(void *a1)
{
  a1[2] = v3;
  a1[3] = v2;
  a1[4] = v1;
}

uint64_t sub_10016406C()
{

  return dispatch thunk of Decoder.singleValueContainer()();
}

uint64_t sub_10016408C()
{

  return __DataStorage.init(bytes:length:)();
}

uint64_t sub_1001640A4()
{

  return __DataStorage.init(bytes:length:)();
}

void *sub_1001640BC(void *a1)
{

  return memcpy(a1, (v1 + 16), 0x58uLL);
}

void sub_1001640D4()
{

  _s9SwiftAvro0B9PrimitiveV4hash4intoys6HasherVz_tF_0();
}

Swift::Int __swiftcall ByteBuffer.writeBytes(_:)(Swift::OpaquePointer a1)
{
  if (!*(a1._rawValue + 2))
  {
    return 0;
  }

  Data._Representation.append(contentsOf:)();
  return *(a1._rawValue + 2);
}

char *Endianness.host.unsafeMutableAddressor()
{
  if (qword_10021F5F0 != -1)
  {
    sub_100006D44();
  }

  return &static Endianness.host;
}

uint64_t static Endianness.host.getter()
{
  if (qword_10021F5F0 != -1)
  {
    sub_100006D44();
  }

  return static Endianness.host;
}

Swift::Int sub_1001641DC()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Endianness.hash(into:)(v3, v1);
  return Hasher._finalize()();
}

double ByteBuffer.readableBytesView.getter@<D0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  ByteBufferView.init(_:)(a1, a2, a3, v9);
  v5 = sub_10000672C();
  sub_100014924(v5, v6);
  result = *v9;
  v8 = v9[1];
  *a4 = v9[0];
  *(a4 + 16) = v8;
  *(a4 + 32) = v10;
  return result;
}

uint64_t ByteBufferView.init(_:)@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v4 = 0;
  switch(a2 >> 62)
  {
    case 1uLL:
      LODWORD(v4) = HIDWORD(result) - result;
      if (__OFSUB__(HIDWORD(result), result))
      {
        goto LABEL_18;
      }

      v4 = v4;
      goto LABEL_6;
    case 2uLL:
      v6 = *(result + 16);
      v5 = *(result + 24);
      v7 = __OFSUB__(v5, v6);
      v4 = v5 - v6;
      if (!v7)
      {
        goto LABEL_6;
      }

      goto LABEL_19;
    case 3uLL:
      goto LABEL_6;
    default:
      v4 = BYTE6(a2);
LABEL_6:
      if (v4 < a3)
      {
        __break(1u);
        goto LABEL_16;
      }

      if (a3 < 0)
      {
LABEL_16:
        __break(1u);
        goto LABEL_17;
      }

      v8 = 0;
      switch(a2 >> 62)
      {
        case 1uLL:
          if (__OFSUB__(HIDWORD(result), result))
          {
            goto LABEL_20;
          }

          v8 = HIDWORD(result) - result;
          break;
        case 2uLL:
          v10 = *(result + 16);
          v9 = *(result + 24);
          v8 = v9 - v10;
          if (__OFSUB__(v9, v10))
          {
            goto LABEL_21;
          }

          break;
        case 3uLL:
          break;
        default:
          v8 = BYTE6(a2);
          break;
      }

      if (v8 >= v4)
      {
        *a4 = result;
        a4[1] = a2;
        a4[2] = a3;
        a4[3] = a3;
        a4[4] = v4;
        return result;
      }

LABEL_17:
      __break(1u);
LABEL_18:
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      __break(1u);
      return result;
  }
}

uint64_t ByteBuffer.count.getter(uint64_t a1, unint64_t a2)
{
  result = 0;
  switch(a2 >> 62)
  {
    case 1uLL:
      v4 = __OFSUB__(HIDWORD(a1), a1);
      v5 = HIDWORD(a1) - a1;
      if (v4)
      {
        __break(1u);
        goto LABEL_8;
      }

      result = v5;
      break;
    case 2uLL:
      v8 = a1 + 16;
      v6 = *(a1 + 16);
      v7 = *(v8 + 8);
      result = v7 - v6;
      if (__OFSUB__(v7, v6))
      {
LABEL_8:
        __break(1u);
      }

      break;
    case 3uLL:
      return result;
    default:
      result = BYTE6(a2);
      break;
  }

  return result;
}

uint64_t ByteBuffer._toEndianness<A>(value:endianness:)(uint64_t a1, char a2)
{
  if (a2)
  {
    return dispatch thunk of FixedWidthInteger.littleEndian.getter();
  }

  else
  {
    return dispatch thunk of FixedWidthInteger.bigEndian.getter();
  }
}

uint64_t sub_100164430(uint64_t result, unint64_t a2, uint64_t a3)
{
  v3 = 0;
  switch(a2 >> 62)
  {
    case 1uLL:
      LODWORD(v3) = HIDWORD(result) - result;
      if (__OFSUB__(HIDWORD(result), result))
      {
        goto LABEL_9;
      }

      v3 = v3;
      goto LABEL_6;
    case 2uLL:
      v5 = *(result + 16);
      v4 = *(result + 24);
      v6 = __OFSUB__(v4, v5);
      v3 = v4 - v5;
      if (!v6)
      {
        goto LABEL_6;
      }

      goto LABEL_10;
    case 3uLL:
      goto LABEL_6;
    default:
      v3 = BYTE6(a2);
LABEL_6:
      result = v3 - a3;
      if (__OFSUB__(v3, a3))
      {
        __break(1u);
LABEL_9:
        __break(1u);
LABEL_10:
        __break(1u);
      }

      return result;
  }
}

uint64_t ByteBuffer.init(bytes:)(uint64_t a1)
{
  if (*(a1 + 16))
  {
    Data._Representation.append(contentsOf:)();
  }

  return 0;
}

uint64_t ByteBuffer.init(data:)()
{
  sub_100014A40(0, 0xC000000000000000);
  v0 = sub_10000672C();
  sub_100014924(v0, v1);
  v2 = sub_10000672C();
  sub_100014A40(v2, v3);
  return sub_10000672C();
}

uint64_t ByteBuffer.readInteger<A>(endianness:as:)@<X0>(void *a1@<X2>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for Optional();
  sub_100003A6C();
  v7 = v6;
  v9 = *(v8 + 64);
  __chkstk_darwin(v10);
  v12 = &v23 - v11;
  v13 = *v2;
  v14 = v2[1];
  v15 = v2[2];
  ByteBuffer.getInteger<A>(at:endianness:as:)(v15, v15, a1, &v23 - v11);
  if (sub_100008D0C(v12, 1, a1) == 1)
  {
    (*(v7 + 8))(v12, v5);
    v16 = a2;
    v17 = 1;
    return sub_1000051C0(v16, v17, 1, a1);
  }

  v18 = *(a1 - 1) + 32;
  result = (*v18)(a2, v12, a1);
  v20 = *(v18 + 32);
  v21 = __OFADD__(v15, v20);
  v22 = v15 + v20;
  if (!v21)
  {
    v2[2] = v22;
    v16 = a2;
    v17 = 0;
    return sub_1000051C0(v16, v17, 1, a1);
  }

  __break(1u);
  return result;
}

uint64_t ByteBuffer.getInteger<A>(at:endianness:as:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X5>, void *a3@<X6>, uint64_t a4@<X8>)
{
  v5 = *(*(a3 - 1) + 64);
  if (result < a2 || v5 < 0)
  {

    return sub_1000051C0(a4, 1, 1, a3);
  }

  else if (__OFADD__(result, v5))
  {
    __break(1u);
  }

  else if (a3 == &type metadata for UInt8)
  {
    __chkstk_darwin(result);
    ByteBuffer.withUnsafeBytes<A>(_:)();
    return sub_1000051C0(a4, 0, 1, &type metadata for UInt8);
  }

  else
  {
    __chkstk_darwin(result);
    type metadata accessor for Optional();
    return ByteBuffer.withUnsafeBytes<A>(_:)();
  }

  return result;
}

Swift::Void __swiftcall ByteBuffer.moveReaderIndex(forwardBy:)(Swift::Int forwardBy)
{
  v2 = *(v1 + 16);
  v3 = __OFADD__(v2, forwardBy);
  v4 = v2 + forwardBy;
  if (v3)
  {
    __break(1u);
  }

  else
  {
    *(v1 + 16) = v4;
  }
}

Swift::String_optional __swiftcall ByteBuffer.readString(length:)(Swift::Int length)
{
  if (length < 0)
  {
    length = 0;
    v9 = 0;
  }

  else
  {
    v2 = *(v1 + 16);
    v3 = v2 + length;
    if (__OFADD__(v2, length))
    {
      __break(1u);
    }

    else
    {
      v4 = sub_100008C14();
      length = sub_1001649FC(v4, v5, v6, v7, v8);
      if (v9)
      {
        *(v1 + 16) = v3;
      }
    }
  }

  result.value._object = v9;
  result.value._countAndFlagsBits = length;
  return result;
}

Swift::String_optional __swiftcall ByteBuffer.getString(at:length:)(Swift::Int at, Swift::Int length)
{
  v5 = 0;
  if (at < v3)
  {
    v7 = 0;
  }

  else
  {
    v7 = 0;
    if ((length & 0x8000000000000000) == 0)
    {
      if (__OFADD__(at, length))
      {
        __break(1u);
      }

      else
      {
        v8 = sub_100011BC8(0, 0, v2);
        v5 = sub_1001649FC(v8, v9, v10, v11, v12);
      }
    }
  }

  result.value._object = v7;
  result.value._countAndFlagsBits = v5;
  return result;
}

Swift::OpaquePointer_optional __swiftcall ByteBuffer.readBytes(length:)(Swift::Int length)
{
  if (length < 0)
  {
    length = 0;
  }

  else
  {
    v2 = *(v1 + 16);
    v3 = v2 + length;
    if (__OFADD__(v2, length))
    {
      __break(1u);
    }

    else
    {
      v4 = sub_100008C14();
      length = sub_100164B7C(v4, v5, v6, v7, v8);
      *(v1 + 16) = v3;
    }
  }

  result.value._rawValue = length;
  result.is_nil = v9;
  return result;
}

Swift::OpaquePointer_optional __swiftcall ByteBuffer.getBytes(at:length:)(Swift::Int at, Swift::Int length)
{
  v5 = 0;
  if (at >= v3 && (length & 0x8000000000000000) == 0)
  {
    if (__OFADD__(at, length))
    {
      __break(1u);
    }

    else
    {
      v6 = sub_100011BC8(0, length, v2);
      v5 = sub_100164B7C(v6, v7, v8, v9, v10);
    }
  }

  result.is_nil = length;
  result.value._rawValue = v5;
  return result;
}

uint64_t sub_1001649FC(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5)
{
  switch(a2 >> 62)
  {
    case 1uLL:
      v10 = a1 >> 32;
      if (a1 >> 32 < a1)
      {
        goto LABEL_16;
      }

      a1 = a1;
      v7 = a2 & 0x3FFFFFFFFFFFFFFFLL;
      v8 = v10;
      return sub_100166CCC(a1, v8, v7, a4, a5);
    case 2uLL:
      v6 = *(a1 + 24);
      v7 = a2 & 0x3FFFFFFFFFFFFFFFLL;
      a1 = *(a1 + 16);
      v8 = v6;
      return sub_100166CCC(a1, v8, v7, a4, a5);
    case 3uLL:
      if (!(a5 | a4))
      {
        return static String._fromUTF8Repairing(_:)();
      }

      __break(1u);
LABEL_16:
      __break(1u);
LABEL_17:
      __break(1u);
      goto LABEL_18;
    default:
      if (BYTE6(a2) < a4 || BYTE6(a2) < a5)
      {
        goto LABEL_17;
      }

      if (a5 < a4)
      {
LABEL_18:
        __break(1u);
      }

      return static String._fromUTF8Repairing(_:)();
  }
}

uint64_t sub_100164B7C(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  switch(a2 >> 62)
  {
    case 1uLL:
      v9 = result >> 32;
      if (result >> 32 >= result)
      {
        result = result;
        v7 = a2 & 0x3FFFFFFFFFFFFFFFLL;
        v8 = v9;
        goto LABEL_9;
      }

      __break(1u);
      break;
    case 2uLL:
      v6 = *(result + 24);
      v7 = a2 & 0x3FFFFFFFFFFFFFFFLL;
      result = *(result + 16);
      v8 = v6;
LABEL_9:
      result = sub_100166DD4(result, v8, v7, a4, a5);
      break;
    case 3uLL:
      result = 0;
      v5 = 0;
      goto LABEL_5;
    default:
      v5 = a2 & 0xFFFFFFFFFFFFFFLL;
LABEL_5:
      result = sub_100166A90(result, v5, a4, a5);
      break;
  }

  return result;
}

uint64_t sub_100164C10(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  switch(a2 >> 62)
  {
    case 1uLL:
      v8 = a1 >> 32;
      if (a1 >> 32 < a1)
      {
        __break(1u);
      }

      a1 = a1;
      v6 = a2 & 0x3FFFFFFFFFFFFFFFLL;
      v7 = v8;
      goto LABEL_7;
    case 2uLL:
      v5 = *(a1 + 24);
      v6 = a2 & 0x3FFFFFFFFFFFFFFFLL;
      a1 = *(a1 + 16);
      v7 = v5;
LABEL_7:
      result = sub_100166E78(a1, v7, v6, a4);
      break;
    case 3uLL:
      memset(v9, 0, 14);
      result = *(v9 + a4);
      break;
    default:
      v9[0] = a1;
      LOWORD(v9[1]) = a2;
      BYTE2(v9[1]) = BYTE2(a2);
      BYTE3(v9[1]) = BYTE3(a2);
      BYTE4(v9[1]) = BYTE4(a2);
      BYTE5(v9[1]) = BYTE5(a2);
      result = *(v9 + a4);
      break;
  }

  return result;
}

uint64_t sub_100164D3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7)
{
  sub_100008834(a1, a2, a3, a4, a5, a6, a7);
  v15 = sub_100003674();
  result = sub_100014924(v15, v16);
  switch(v13 >> 62)
  {
    case 1uLL:
      v92 = v11;
      if (v8 >> 32 < v8)
      {
        __break(1u);
        goto LABEL_21;
      }

      v90 = v14;
      v91 = v12;
      v89 = &v89;
      v56 = sub_100003674();
      sub_100014924(v56, v57);
      v58 = sub_100003674();
      sub_100014924(v58, v59);
      v60 = sub_100003674();
      sub_100014924(v60, v61);
      if (__DataStorage._bytes.getter())
      {
        result = __DataStorage._offset.getter();
        if (__OFSUB__(v8, result))
        {
          goto LABEL_22;
        }
      }

      goto LABEL_15;
    case 2uLL:
      v91 = v12;
      v92 = v11;
      v89 = &v89;
      v90 = v14;
      v33 = *(v8 + 16);
      v34 = *(v8 + 24);
      v35 = sub_100003674();
      sub_100014924(v35, v36);
      v37 = sub_100003674();
      sub_100014924(v37, v38);
      v39 = sub_100003674();
      sub_100014924(v39, v40);
      if (__DataStorage._bytes.getter() && (result = __DataStorage._offset.getter(), __OFSUB__(v33, result)))
      {
LABEL_21:
        __break(1u);
LABEL_22:
        __break(1u);
      }

      else
      {
        if (__OFSUB__(v34, v33))
        {
          __break(1u);
LABEL_9:
          v41 = sub_100003674();
          sub_100014924(v41, v42);
          v43 = sub_100003674();
          sub_100014924(v43, v44);
          sub_1000046F0();
          v53 = sub_100166B48(v45, v46, v47, v48, v49, v50, v51, v52);
          if (v9)
          {
            v54 = sub_100003674();
            sub_100014A40(v54, v55);
            goto LABEL_16;
          }

          v30 = v53;
          v81 = sub_100003674();
          sub_100014A40(v81, v82);
        }

        else
        {
LABEL_15:
          __DataStorage._length.getter();
          v62 = sub_100003674();
          sub_100014924(v62, v63);
          v64 = sub_10000825C();
          v65 = v91;
          v30 = sub_100165A20(v64, v66, v67, v92, v10, v7, v90, v68);
          v69 = sub_100003674();
          sub_100014A40(v69, v70);
          v71 = sub_100003674();
          sub_100014A40(v71, v72);
          v73 = sub_100003674();
          sub_100014A40(v73, v74);
          if (v65)
          {
LABEL_16:
            v75 = sub_100003674();
            sub_100014A40(v75, v76);
            v77 = sub_100003674();
            sub_100014A40(v77, v78);
            v79 = sub_100003674();
            return sub_100014A40(v79, v80);
          }
        }

LABEL_19:
        v83 = sub_100003674();
        sub_100014A40(v83, v84);
        v85 = sub_100003674();
        sub_100014A40(v85, v86);
        v87 = sub_100003674();
        sub_100014A40(v87, v88);
        return v30 | ((HIDWORD(v30) & 1) << 32);
      }

      return result;
    case 3uLL:
      goto LABEL_9;
    default:
      v18 = sub_100003674();
      sub_100014924(v18, v19);
      v20 = sub_100003674();
      sub_100014924(v20, v21);
      sub_1000046F0();
      v30 = sub_100166B48(v22, v23, v24, v25, v26, v27, v28, v29);
      v31 = sub_100003674();
      sub_100014A40(v31, v32);
      if (!v9)
      {
        goto LABEL_19;
      }

      goto LABEL_16;
  }
}

uint64_t sub_100164FB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7)
{
  sub_100008834(a1, a2, a3, a4, a5, a6, a7);
  v16 = sub_100003674();
  result = sub_100014924(v16, v17);
  switch(v14 >> 62)
  {
    case 1uLL:
      v92 = v12;
      if (v8 >> 32 < v8)
      {
        __break(1u);
        goto LABEL_22;
      }

      v90 = v15;
      v91 = v13;
      v89 = &v88;
      v48 = sub_100003674();
      sub_100014924(v48, v49);
      v50 = sub_100003674();
      sub_100014924(v50, v51);
      v52 = sub_100003674();
      sub_100014924(v52, v53);
      if (__DataStorage._bytes.getter())
      {
        result = __DataStorage._offset.getter();
        if (__OFSUB__(v8, result))
        {
          goto LABEL_23;
        }
      }

      goto LABEL_14;
    case 2uLL:
      v92 = v12;
      v90 = v15;
      v91 = v13;
      v89 = &v88;
      v23 = *(v8 + 16);
      v24 = *(v8 + 24);
      v25 = sub_100003674();
      sub_100014924(v25, v26);
      v27 = sub_100003674();
      sub_100014924(v27, v28);
      v29 = sub_100003674();
      sub_100014924(v29, v30);
      if (!__DataStorage._bytes.getter() || (result = __DataStorage._offset.getter(), !__OFSUB__(v23, result)))
      {
        if (__OFSUB__(v24, v23))
        {
          __break(1u);
LABEL_8:
          v31 = sub_100003674();
          sub_100014924(v31, v32);
          v33 = sub_100003674();
          sub_100014924(v33, v34);
LABEL_9:
          sub_1000046F0();
          v43 = sub_100166C10(v35, v36, v37, v38, v39, v40, v41, v42);
          if (v9)
          {
            v44 = sub_100003674();
            sub_100014A40(v44, v45);
            v46 = sub_100003674();
            sub_100014A40(v46, v47);
LABEL_16:
            v70 = sub_100003674();
            sub_100014A40(v70, v71);
            v72 = sub_100003674();
            sub_100014A40(v72, v73);
            return v11;
          }

          v11 = v43;
          v74 = sub_100003674();
          sub_100014A40(v74, v75);
        }

        else
        {
LABEL_14:
          __DataStorage._length.getter();
          v54 = sub_100003674();
          sub_100014924(v54, v55);
          v56 = sub_10000825C();
          v57 = v91;
          v61 = sub_100165AE4(v56, v58, v59, v92, v10, v7, v90, v60);
          if (v57)
          {
            v62 = sub_100003674();
            sub_100014A40(v62, v63);
            v64 = sub_100003674();
            sub_100014A40(v64, v65);
            v66 = sub_100003674();
            sub_100014A40(v66, v67);
            v68 = sub_100003674();
            sub_100014A40(v68, v69);
            goto LABEL_16;
          }

          v11 = v61;
          v76 = sub_100003674();
          sub_100014A40(v76, v77);
          v78 = sub_100003674();
          sub_100014A40(v78, v79);
          v80 = sub_100003674();
          sub_100014A40(v80, v81);
        }

        v82 = sub_100003674();
        sub_100014A40(v82, v83);
        v84 = sub_100003674();
        sub_100014A40(v84, v85);
        v86 = sub_100003674();
        sub_100014A40(v86, v87);
        return v11;
      }

LABEL_22:
      __break(1u);
LABEL_23:
      __break(1u);
      return result;
    case 3uLL:
      goto LABEL_8;
    default:
      v19 = sub_100003674();
      sub_100014924(v19, v20);
      v21 = sub_100003674();
      sub_100014924(v21, v22);
      goto LABEL_9;
  }
}

uint64_t sub_100165274@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W7>, uint64_t a6@<X8>, uint64_t a7, uint64_t a8)
{
  v22 = a4;
  v23 = a5;
  v20 = a2;
  v21 = a3;
  v19 = a1;
  v9 = *(*(*(a8 + 8) + 24) + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = *(*(AssociatedTypeWitness - 8) + 64);
  __chkstk_darwin(AssociatedTypeWitness);
  v12 = *(a7 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v14);
  v16 = &v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedConformanceWitness();
  dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
  dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
  v25 = v19;
  v26 = v20;
  v27 = v21;
  v28 = v22;
  sub_1001658A8(v16, sub_10016771C, v24, a7, &type metadata for Never, &type metadata for () + 8, &protocol witness table for Never, v17);
  ByteBuffer._toEndianness<A>(value:endianness:)(v16, v23 & 1);
  (*(v12 + 8))(v16, a7);
  return sub_1000051C0(a6, 0, 1, a7);
}

uint64_t ByteBuffer.writeImmutableBuffer(_:)(uint64_t a1, unint64_t a2)
{
  Data.append(_:)();
  result = 0;
  switch(a2 >> 62)
  {
    case 1uLL:
      if (__OFSUB__(HIDWORD(a1), a1))
      {
        __break(1u);
        goto LABEL_8;
      }

      result = HIDWORD(a1) - a1;
      break;
    case 2uLL:
      v6 = *(a1 + 16);
      v5 = *(a1 + 24);
      result = v5 - v6;
      if (__OFSUB__(v5, v6))
      {
LABEL_8:
        __break(1u);
      }

      break;
    case 3uLL:
      return result;
    default:
      result = BYTE6(a2);
      break;
  }

  return result;
}
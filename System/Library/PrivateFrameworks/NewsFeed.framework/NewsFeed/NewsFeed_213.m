uint64_t sub_1D6E78A70(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  sub_1D6E78BF8(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1D6E78AF0(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  sub_1D6E78BF8(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_1D6E78B60()
{
  result = qword_1EC8854E0;
  if (!qword_1EC8854E0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EC8854E0);
  }

  return result;
}

void sub_1D6E78BF8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1D6E78C48(uint64_t result, uint64_t a2, char a3, uint64_t (*a4)(uint64_t, uint64_t, void), uint64_t (*a5)(void))
{
  if (a3 == 2)
  {
    return a5();
  }

  if (a3 == 1)
  {
    return a4(result, a2, (a2 >> 8) & 1);
  }

  return result;
}

uint64_t sub_1D6E78C74(uint64_t a1, uint64_t a2, uint64_t (*a3)(void *))
{
  v4[0] = a1;
  v4[1] = a2;
  return a3(v4);
}

uint64_t sub_1D6E78CAC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14[0] = a4;
  v14[1] = a5;
  sub_1D6E7A69C(0, &qword_1EC8973C0, MEMORY[0x1E69E6F58]);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v10);
  v12 = v14 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6E7A648();
  sub_1D7264B5C();
  v16 = 0;
  sub_1D726437C();
  if (!v5)
  {
    v15 = 1;
    sub_1D72643FC();
  }

  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_1D6E78E2C()
{
  if (*v0)
  {
    return 0x6567617373656DLL;
  }

  else
  {
    return 1701603686;
  }
}

uint64_t sub_1D6E78E60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701603686 && a2 == 0xE400000000000000;
  if (v5 || (sub_1D72646CC() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6567617373656DLL && a2 == 0xE700000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1D72646CC();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1D6E78F3C(uint64_t a1)
{
  v2 = sub_1D6E7A648();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6E78F78(uint64_t a1)
{
  v2 = sub_1D6E7A648();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D6E78FB4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1D6E79F24(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

uint64_t sub_1D6E79004()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 16);
  }

  else
  {
    v2 = v0;
    v3 = [objc_opt_self() defaultSessionConfiguration];
    [v3 setRequestCachePolicy_];
    [v3 setURLCache_];
    [v3 setTimeoutIntervalForRequest_];
    [v3 setTimeoutIntervalForResource_];
    sub_1D725AE0C();
    swift_allocObject();
    v1 = sub_1D725ADFC();
    *(v2 + 16) = v1;
  }

  return v1;
}

uint64_t sub_1D6E79168()
{
  sub_1D6E7A218();
  swift_allocObject();
  return sub_1D725BBAC();
}

uint64_t sub_1D6E791CC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_1D72620DC();
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v8 = *a1;
  v9 = a1[1];
  sub_1D72620CC();
  v10 = sub_1D726209C();
  if (v11)
  {
    *a3 = v10;
    a3[1] = v11;
    a3[2] = v8;
    a3[3] = v9;
    a3[4] = a2;
    sub_1D5E3E824(v8, v9);
  }

  else
  {
    type metadata accessor for DebugFormatServiceError();
    sub_1D6E7A384();
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    return swift_willThrow();
  }
}

uint64_t sub_1D6E792D8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_1D72585BC();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10, v13);
  v14 = a3 < 1;
  v15 = a3 - 1;
  if (v14 || (v16 = sub_1D6E7A118(), (v16 & 1) == 0))
  {
    swift_willThrow();
    v24 = a1;
  }

  else
  {
    v27 = a4;
    MEMORY[0x1EEE9AC00](v16, v17);
    *(&v26 - 4) = a2;
    *(&v26 - 3) = v18;
    *(&v26 - 2) = a5;
    sub_1D725BDCC();
    v28 = v15;
    *(swift_allocObject() + 16) = a5;

    v19 = sub_1D725B92C();
    v29 = a2;
    v20 = v19;
    sub_1D6D48318();
    sub_1D725BA8C();

    (*(v11 + 16))(&v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v27, v10);
    v21 = (*(v11 + 80) + 24) & ~*(v11 + 80);
    v22 = swift_allocObject();
    *(v22 + 16) = v28;
    (*(v11 + 32))(v22 + v21, &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v10);
    *(v22 + ((v12 + v21 + 7) & 0xFFFFFFFFFFFFFFF8)) = a5;

    v23 = sub_1D725B92C();
    type metadata accessor for DebugFormatService();
    a2 = sub_1D725BB7C();
  }

  return a2;
}

void sub_1D6E79584(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v26 = a7;
  v24 = a3;
  v11 = sub_1D72585BC();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11, v14);
  v15 = swift_allocObject();
  *(v15 + 16) = a1;
  *(v15 + 24) = a2;

  sub_1D6E79004();
  v25 = sub_1D725ADEC();

  v16 = sub_1D725844C();
  (*(v12 + 16))(&v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), a6, v11);
  v17 = (*(v12 + 80) + 40) & ~*(v12 + 80);
  v18 = swift_allocObject();
  *(v18 + 2) = v24;
  *(v18 + 3) = a4;
  *(v18 + 4) = v26;
  (*(v12 + 32))(&v18[v17], &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v11);
  v19 = &v18[(v13 + v17 + 7) & 0xFFFFFFFFFFFFFFF8];
  *v19 = sub_1D5F89598;
  v19[1] = v15;
  aBlock[4] = sub_1D6E7A268;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D60B572C;
  aBlock[3] = &block_descriptor_102;
  v20 = _Block_copy(aBlock);

  v21 = v25;
  v22 = [v25 dataTaskWithURL:v16 completionHandler:v20];
  _Block_release(v20);

  [v22 resume];
}

void sub_1D6E79808(uint64_t a1, unint64_t a2, void *a3, id a4, void (*a5)(id), int a6, int a7, int a8, void (*a9)(uint64_t, unint64_t), uint64_t a10)
{
  if (a4)
  {
    v11 = a4;
    v12 = a4;
LABEL_5:
    a5(v11);

    return;
  }

  if (a2 >> 60 == 15)
  {
    type metadata accessor for DebugFormatServiceError();
    sub_1D6E7A384();
    v11 = swift_allocError();
    swift_storeEnumTagMultiPayload();
    goto LABEL_5;
  }

  if (a3 && (objc_opt_self(), (v16 = swift_dynamicCastObjCClass()) != 0))
  {
    v17 = v16;
    sub_1D5F13DE4(a1, a2);
    v18 = a3;
    if ([v17 statusCode] != 200)
    {
      type metadata accessor for FormatJSONDecoder();
      swift_allocObject();

      sub_1D5B7BACC(v22);
      sub_1D60CED2C();
      sub_1D725A69C();

      type metadata accessor for DebugFormatServiceError();
      sub_1D6E7A384();
      v23 = swift_allocError();
      *v24 = v25;
      *(v24 + 16) = v26;
      *(v24 + 24) = v27;
      swift_storeEnumTagMultiPayload();
      a5(v23);
      sub_1D5B952E4(a1, a2);

      return;
    }

    a9(a1, a2);
  }

  else
  {
    type metadata accessor for DebugFormatServiceError();
    sub_1D6E7A384();
    v19 = swift_allocError();
    *v20 = a3;
    swift_storeEnumTagMultiPayload();
    sub_1D5F13DE4(a1, a2);
    v21 = a3;
    a5(v19);
  }

  sub_1D5B952E4(a1, a2);
}

void sub_1D6E79BCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;

  sub_1D6E79004();
  v9 = sub_1D725ADEC();

  v10 = sub_1D725776C();
  v11 = swift_allocObject();
  v11[2] = a3;
  v11[3] = a4;
  v11[4] = sub_1D5DF743C;
  v11[5] = v8;
  v14[4] = sub_1D6E7A63C;
  v14[5] = v11;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 1107296256;
  v14[2] = sub_1D60B572C;
  v14[3] = &block_descriptor_26_2;
  v12 = _Block_copy(v14);

  v13 = [v9 dataTaskWithRequest:v10 completionHandler:v12];
  _Block_release(v12);

  [v13 resume];
}

void sub_1D6E79D54(int a1, int a2, void *a3, id a4, void (*a5)(id), uint64_t a6, void (*a7)(void))
{
  if (a4)
  {
    v8 = a4;
    v9 = a4;
    goto LABEL_8;
  }

  if (!a3 || (objc_opt_self(), (v12 = swift_dynamicCastObjCClass()) == 0))
  {
    type metadata accessor for DebugFormatServiceError();
    sub_1D6E7A384();
    v8 = swift_allocError();
    *v14 = a3;
    swift_storeEnumTagMultiPayload();
    v15 = a3;
LABEL_8:
    a5(v8);
    v16 = v8;

    goto LABEL_10;
  }

  v13 = v12;
  v19 = a3;
  if ([v13 statusCode] == 200)
  {
    a7();
  }

  else
  {
    type metadata accessor for DebugFormatServiceError();
    sub_1D6E7A384();
    v17 = swift_allocError();
    *v18 = [v13 statusCode];
    swift_storeEnumTagMultiPayload();
    a5(v17);
  }

  v16 = v19;

LABEL_10:
}

uint64_t sub_1D6E79F24(void *a1)
{
  sub_1D6E7A69C(0, &qword_1EC8973B0, MEMORY[0x1E69E6F48]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v11 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6E7A648();
  sub_1D7264B0C();
  if (!v1)
  {
    v13 = 0;
    v9 = sub_1D726422C();
    v12 = 1;
    sub_1D72642BC();
    (*(v5 + 8))(v8, v4);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v9;
}

uint64_t sub_1D6E7A118()
{
  v0 = sub_1D725828C();
  v1 = [v0 domain];
  v2 = sub_1D726207C();
  v4 = v3;

  if (v2 == sub_1D726207C() && v4 == v5)
  {
  }

  else
  {
    v7 = sub_1D72646CC();

    if ((v7 & 1) == 0)
    {

LABEL_10:
      LOBYTE(v9) = 0;
      return v9 & 1;
    }
  }

  v8 = [v0 code];

  if (v8 + 1009 >= 9)
  {
    goto LABEL_10;
  }

  v9 = 0x131u >> (v8 - 15);
  return v9 & 1;
}

void sub_1D6E7A218()
{
  if (!qword_1EC882C08)
  {
    v0 = sub_1D725BC0C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC882C08);
    }
  }
}

void sub_1D6E7A268(uint64_t a1, unint64_t a2, void *a3, void *a4)
{
  v9 = *(sub_1D72585BC() - 8);
  v10 = (*(v9 + 80) + 40) & ~*(v9 + 80);
  v11 = v4 + ((*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8);
  sub_1D6E79808(a1, a2, a3, a4, *(v4 + 16), *(v4 + 24), *(v4 + 32), v4 + v10, *v11, *(v11 + 8));
}

uint64_t type metadata accessor for DebugFormatServiceError()
{
  result = qword_1EDF0D708;
  if (!qword_1EDF0D708)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1D6E7A384()
{
  result = qword_1EC883520;
  if (!qword_1EC883520)
  {
    type metadata accessor for DebugFormatServiceError();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC883520);
  }

  return result;
}

uint64_t sub_1D6E7A410(uint64_t a1, uint64_t a2)
{
  v5 = *(sub_1D72585BC() - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  return sub_1D6E792D8(a1, a2, *(v2 + 16), v2 + v6, *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8)));
}

void sub_1D6E7A4CC()
{
  sub_1D5BA6EF4();
  if (v0 <= 0x3F)
  {
    sub_1D604FA68();
    if (v1 <= 0x3F)
    {
      sub_1D6E7A5C4(319, &qword_1EDF18AA8, sub_1D5BA6EF4);
      if (v2 <= 0x3F)
      {
        sub_1D6E7A5C4(319, &qword_1EC8973A8, type metadata accessor for FormatFile);
        if (v3 <= 0x3F)
        {
          sub_1D72585BC();
          if (v4 <= 0x3F)
          {
            swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1D6E7A5C4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    sub_1D72585BC();
    a3(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v6)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

unint64_t sub_1D6E7A648()
{
  result = qword_1EC8973B8;
  if (!qword_1EC8973B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8973B8);
  }

  return result;
}

void sub_1D6E7A69C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D6E7A648();
    v7 = a3(a1, &type metadata for DebugFormatServiceError.ServerMessage.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1D6E7A714()
{
  result = qword_1EC8973C8;
  if (!qword_1EC8973C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8973C8);
  }

  return result;
}

unint64_t sub_1D6E7A76C()
{
  result = qword_1EC8973D0;
  if (!qword_1EC8973D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8973D0);
  }

  return result;
}

unint64_t sub_1D6E7A7C4()
{
  result = qword_1EC8973D8;
  if (!qword_1EC8973D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8973D8);
  }

  return result;
}

uint64_t sub_1D6E7A844(char a1)
{
  result = 2020557416;
  switch(a1)
  {
    case 1:
      result = 2020557430;
      break;
    case 2:
      result = 0x79616C7265764F68;
      break;
    case 3:
      result = 0x79616C7265764F76;
      break;
    case 4:
      result = 2003134838;
      break;
    case 5:
      result = 1954047348;
      break;
    case 6:
      result = 1835365481;
      break;
    case 7:
      result = 0x6567616D69;
      break;
    case 8:
      result = 0x6563617073;
      break;
    case 9:
      result = 0x74657070696E73;
      break;
    case 10:
      result = 0x656D656C70707573;
      break;
    case 11:
      result = 0x686374697773;
      break;
    case 12:
      result = 1953459315;
      break;
    case 13:
      result = 0x6269737365636361;
      break;
    case 14:
      result = 0x6E6F74747562;
      break;
    case 15:
      result = 0x70756F7267;
      break;
    case 16:
      result = 0x6465626D45626577;
      break;
    case 17:
      result = 0x656D617266;
      break;
    case 18:
      result = 0x746165706572;
      break;
    case 19:
      result = 0x736E6F6974706FLL;
      break;
    case 20:
      result = 0x6569566574617473;
      break;
    case 21:
      result = 0x6D6F74737563;
      break;
    case 22:
      result = 0x746E697270;
      break;
    case 23:
      result = 0x63697274654D6461;
      break;
    case 24:
      result = 1633905005;
      break;
    case 25:
      result = 0x4D6465726579616CLL;
      break;
    case 26:
      result = 0x6F65646976;
      break;
    case 27:
      result = 0x766F436575737369;
      break;
    case 28:
      result = 0x6572616873;
      break;
    case 29:
      result = 0x6B636F6C62;
      break;
    case 30:
      result = 0x797274656D6F6567;
      break;
    case 31:
      result = 0x616C506F65646976;
      break;
    case 32:
      result = 0x73736572676F7270;
      break;
    case 33:
      result = 0x646E69426D657469;
      break;
    case 34:
      result = 0x7261696C69787561;
      break;
    case 35:
      result = 0x7465736572;
      break;
    case 36:
      result = 0x656C626169726176;
      break;
    case 37:
      result = 0x696F706B61657262;
      break;
    case 38:
      result = 0x6D45656C7A7A7570;
      break;
    case 39:
      result = 0x65726F736E6F7073;
      break;
    case 40:
      result = 0x786F4278656C66;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t FormatNode.identifier.getter()
{
  v0 = sub_1D6E7C394();

  return v0;
}

uint64_t sub_1D6E7AC60(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_1D6E7A844(*a1);
  v5 = v4;
  if (v3 == sub_1D6E7A844(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1D72646CC();
  }

  return v8 & 1;
}

uint64_t sub_1D6E7ACE8()
{
  v1 = *v0;
  sub_1D7264A0C();
  sub_1D6E7A844(v1);
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D6E7AD4C()
{
  sub_1D6E7A844(*v0);
  sub_1D72621EC();
}

uint64_t sub_1D6E7ADA0()
{
  v1 = *v0;
  sub_1D7264A0C();
  sub_1D6E7A844(v1);
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D6E7AE00@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D6E7C7A0();
  *a1 = result;
  return result;
}

uint64_t sub_1D6E7AE30@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D6E7A844(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1D6E7AF44()
{
  v0 = sub_1D6E7C394();

  return v0;
}

uint64_t FormatNode.bind(binder:context:)(unint64_t a1, uint64_t a2)
{
  v3 = *v2;
  switch((*v2 >> 58) & 0x3C | (*v2 >> 1) & 3)
  {
    case 1uLL:

      FormatVBoxNode.bind(binder:context:)(a1, a2);

    case 2uLL:

      FormatHOverlayNode.bind(binder:context:)(a1, a2);

    case 3uLL:

      FormatVOverlayNode.bind(binder:context:)(a1, a2);

    case 4uLL:

      FormatViewNode.bind(binder:context:)(a1, a2);

    case 5uLL:

      FormatTextNode.bind(binder:context:)(a1, a2);

    case 6uLL:

      FormatImageNode.bind(binder:context:)(a1, a2);

    case 7uLL:

      FormatItemNode.bind(binder:context:)(a1, a2);

    case 8uLL:

      FormatSpaceNode.bind(binder:context:)(a1, a2);

    case 9uLL:

      FormatSnippetNode.bind(binder:context:)(a1, a2);

    case 0xAuLL:

      FormatSupplementaryNode.bind(binder:context:)(a1, a2);

    case 0xBuLL:

      FormatSwitchNode.bind(binder:context:)(a1, a2);

    case 0xCuLL:

      FormatSlotNode.bind(binder:context:)(a1, a2);

    case 0xDuLL:

      FormatAccessibilityNode.bind(binder:context:)(a1, a2);

    case 0xEuLL:

      FormatButtonNode.bind(binder:context:)(a1, a2);

    case 0xFuLL:

      FormatGroupNode.bind(binder:context:)(a1, a2);

    case 0x10uLL:

      FormatWebEmbedNode.bind(binder:context:)(a1, a2);

    case 0x11uLL:

      FormatFrameNode.bind(binder:context:)(a1, a2);

    case 0x12uLL:

      FormatRepeatNode.bind(binder:context:)(a1, a2);

    case 0x13uLL:

      FormatOptionsNode.bind(binder:context:)(a1, a2);

    case 0x14uLL:

      FormatStateViewNode.bind(binder:context:)(a1, a2);

    case 0x15uLL:

      FormatCustomNode.bind(binder:context:)(a1, a2);

    case 0x16uLL:

      sub_1D6EBCF50(a2);

    case 0x17uLL:

      FormatAdMetricsNode.bind(binder:context:)(a1, a2);

    case 0x18uLL:

      FormatMicaNode.bind(binder:context:)(a1, a2);

    case 0x19uLL:

      FormatLayeredMediaNode.bind(binder:context:)(a1, a2);

    case 0x1AuLL:

      FormatVideoNode.bind(binder:context:)(a1, a2);

    case 0x1BuLL:

      FormatIssueCoverNode.bind(binder:context:)(a1, a2);

    case 0x1CuLL:
      v18 = v3 & 0xFFFFFFFFFFFFFF9;
      v19 = *(v18 + 112);
      v42 = *(v18 + 96);
      v43 = v19;
      v44 = *(v18 + 128);
      v45 = *(v18 + 144);
      v20 = *(v18 + 48);
      v38 = *(v18 + 32);
      v39 = v20;
      v21 = *(v18 + 80);
      v40 = *(v18 + 64);
      v41 = v21;
      v37 = *(v18 + 16);
      v22 = *(v18 + 128);
      v34 = *(v18 + 112);
      v35 = v22;
      v36 = *(v18 + 144);
      v23 = *(v18 + 64);
      v30 = *(v18 + 48);
      v31 = v23;
      v24 = *(v18 + 96);
      v32 = *(v18 + 80);
      v33 = v24;
      v25 = *(v18 + 32);
      v28 = *(v18 + 16);
      v29 = v25;
      sub_1D62B60B4(&v37, v26);
      FormatShareAttributionNode.bind(binder:context:)(a1, a2);
      return sub_1D62B6110(&v37);
    case 0x1DuLL:

      FormatBlockNode.bind(binder:context:)(a1, a2);

    case 0x1EuLL:

      FormatGeometryNode.bind(binder:context:)(a1, a2);

    case 0x1FuLL:

      FormatVideoPlayerNode.bind(binder:context:)(a1, a2);

    case 0x20uLL:

      FormatProgressViewNode.bind(binder:context:)(a1, a2);

    case 0x21uLL:

      FormatItemBindingsNode.bind(binder:context:)(a1, a2);

    case 0x22uLL:

      FormatAuxiliaryNode.bind(binder:context:)(a1);

    case 0x23uLL:
      v15 = *((v3 & 0xFFFFFFFFFFFFFF9) + 0x10);

      v16 = sub_1D6C1BF20(a2);
      swift_beginAccess();
      v17 = *(v15 + 48);

      sub_1D6215F90(a1, v16, v17);

    case 0x24uLL:

      FormatVariableNode.bind(binder:context:)(a1, a2);

    case 0x25uLL:
      v6 = *((v3 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v7 = *(v6 + 112);
      v8 = *(v6 + 144);
      v41 = *(v6 + 128);
      v42 = v8;
      *&v43 = *(v6 + 160);
      v9 = *(v6 + 80);
      v37 = *(v6 + 64);
      v38 = v9;
      v10 = *(v6 + 112);
      v12 = *(v6 + 64);
      v11 = *(v6 + 80);
      v39 = *(v6 + 96);
      v40 = v10;
      v13 = *(v6 + 144);
      v32 = v41;
      v33 = v13;
      v28 = v12;
      v29 = v11;
      *&v34 = *(v6 + 160);
      v30 = v39;
      v31 = v7;

      sub_1D5C5C4CC(&v37, v26);
      FormatSourceMapNode.bind(binder:context:)(a1, a2);

      v26[4] = v32;
      v26[5] = v33;
      v27 = v34;
      v26[0] = v28;
      v26[1] = v29;
      v26[2] = v30;
      v26[3] = v31;
      return sub_1D5C5C540(v26);
    case 0x26uLL:

      FormatPuzzleEmbedNode.bind(binder:context:)(a1, a2);

    case 0x27uLL:

      FormatSponsoredBannerNode.bind(binder:context:)(a1, a2);

    case 0x28uLL:

      FormatFlexBoxNode.bind(binder:context:)(a1, a2);

    default:

      FormatHBoxNode.bind(binder:context:)(a1, a2);
  }
}

uint64_t _s8NewsFeed10FormatNodeO2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = (*a2 >> 58) & 0x3C | (*a2 >> 1) & 3;
  switch((*a1 >> 58) & 0x3C | (*a1 >> 1) & 3)
  {
    case 1uLL:
      if (v4 != 1)
      {
        goto LABEL_86;
      }

      v45 = *((v2 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v46 = *((v3 & 0xFFFFFFFFFFFFFF9) + 0x10);

      v10 = sub_1D6709354(v45, v46);
      goto LABEL_85;
    case 2uLL:
      if (v4 == 2)
      {
        goto LABEL_35;
      }

      goto LABEL_86;
    case 3uLL:
      if (v4 != 3)
      {
        goto LABEL_86;
      }

LABEL_35:
      v39 = *((v2 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v40 = *((v3 & 0xFFFFFFFFFFFFFF9) + 0x10);

      v10 = sub_1D6709350(v39, v40);
      goto LABEL_85;
    case 4uLL:
      if (v4 != 4)
      {
        goto LABEL_86;
      }

      v27 = *((v2 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v28 = *((v3 & 0xFFFFFFFFFFFFFF9) + 0x10);

      v10 = _s8NewsFeed14FormatViewNodeC2eeoiySbAC_ACtFZ_0(v27, v28);
      goto LABEL_85;
    case 5uLL:
      if (v4 != 5)
      {
        goto LABEL_86;
      }

      v53 = *((v2 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v54 = *((v3 & 0xFFFFFFFFFFFFFF9) + 0x10);

      v10 = _s8NewsFeed14FormatTextNodeC2eeoiySbAC_ACtFZ_0(v53, v54);
      goto LABEL_85;
    case 6uLL:
      if (v4 != 6)
      {
        goto LABEL_86;
      }

      v59 = *((v2 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v60 = *((v3 & 0xFFFFFFFFFFFFFF9) + 0x10);

      v10 = _s8NewsFeed15FormatImageNodeC2eeoiySbAC_ACtFZ_0(v59, v60);
      goto LABEL_85;
    case 7uLL:
      if (v4 != 7)
      {
        goto LABEL_86;
      }

      v43 = *((v2 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v44 = *((v3 & 0xFFFFFFFFFFFFFF9) + 0x10);

      v10 = _s8NewsFeed14FormatItemNodeC2eeoiySbAC_ACtFZ_0(v43, v44);
      goto LABEL_85;
    case 8uLL:
      if (v4 != 8)
      {
        goto LABEL_86;
      }

      v65 = *((v2 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v66 = *((v3 & 0xFFFFFFFFFFFFFF9) + 0x10);

      v10 = _s8NewsFeed15FormatSpaceNodeC2eeoiySbAC_ACtFZ_0(v65, v66);
      goto LABEL_85;
    case 9uLL:
      if (v4 != 9)
      {
        goto LABEL_86;
      }

      v33 = *((v2 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v34 = *((v3 & 0xFFFFFFFFFFFFFF9) + 0x10);

      v10 = _s8NewsFeed17FormatSnippetNodeC2eeoiySbAC_ACtFZ_0(v33, v34);
      goto LABEL_85;
    case 0xAuLL:
      if (v4 != 10)
      {
        goto LABEL_86;
      }

      v63 = *((v2 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v64 = *((v3 & 0xFFFFFFFFFFFFFF9) + 0x10);

      v10 = _s8NewsFeed23FormatSupplementaryNodeC2eeoiySbAC_ACtFZ_0(v63, v64);
      goto LABEL_85;
    case 0xBuLL:
      if (v4 != 11)
      {
        goto LABEL_86;
      }

      v25 = *((v2 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v26 = *((v3 & 0xFFFFFFFFFFFFFF9) + 0x10);

      v10 = _s8NewsFeed16FormatSwitchNodeC2eeoiySbAC_ACtFZ_0(v25, v26);
      goto LABEL_85;
    case 0xCuLL:
      if (v4 != 12)
      {
        goto LABEL_86;
      }

      v31 = *((v2 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v32 = *((v3 & 0xFFFFFFFFFFFFFF9) + 0x10);

      v10 = _s8NewsFeed14FormatSlotNodeC2eeoiySbAC_ACtFZ_0(v31, v32);
      goto LABEL_85;
    case 0xDuLL:
      if (v4 != 13)
      {
        goto LABEL_86;
      }

      v57 = *((v2 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v58 = *((v3 & 0xFFFFFFFFFFFFFF9) + 0x10);

      v10 = _s8NewsFeed23FormatAccessibilityNodeC2eeoiySbAC_ACtFZ_0(v57, v58);
      goto LABEL_85;
    case 0xEuLL:
      if (v4 != 14)
      {
        goto LABEL_86;
      }

      v21 = *((v2 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v22 = *((v3 & 0xFFFFFFFFFFFFFF9) + 0x10);

      v10 = _s8NewsFeed16FormatButtonNodeC2eeoiySbAC_ACtFZ_0(v21, v22);
      goto LABEL_85;
    case 0xFuLL:
      if (v4 != 15)
      {
        goto LABEL_86;
      }

      v41 = *((v2 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v42 = *((v3 & 0xFFFFFFFFFFFFFF9) + 0x10);

      v10 = _s8NewsFeed15FormatGroupNodeC2eeoiySbAC_ACtFZ_0(v41, v42);
      goto LABEL_85;
    case 0x10uLL:
      if (v4 != 16)
      {
        goto LABEL_86;
      }

      v19 = *((v2 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v20 = *((v3 & 0xFFFFFFFFFFFFFF9) + 0x10);

      v10 = _s8NewsFeed18FormatWebEmbedNodeC2eeoiySbAC_ACtFZ_0(v19, v20);
      goto LABEL_85;
    case 0x11uLL:
      if (v4 != 17)
      {
        goto LABEL_86;
      }

      v49 = *((v2 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v50 = *((v3 & 0xFFFFFFFFFFFFFF9) + 0x10);

      v10 = _s8NewsFeed15FormatFrameNodeC2eeoiySbAC_ACtFZ_0(v49, v50);
      goto LABEL_85;
    case 0x12uLL:
      if (v4 != 18)
      {
        goto LABEL_86;
      }

      v61 = *((v2 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v62 = *((v3 & 0xFFFFFFFFFFFFFF9) + 0x10);

      v10 = _s8NewsFeed16FormatRepeatNodeC2eeoiySbAC_ACtFZ_0(v61, v62);
      goto LABEL_85;
    case 0x13uLL:
      if (v4 != 19)
      {
        goto LABEL_86;
      }

      v75 = *((v2 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v76 = *((v3 & 0xFFFFFFFFFFFFFF9) + 0x10);

      v10 = _s8NewsFeed17FormatOptionsNodeC2eeoiySbAC_ACtFZ_0(v75, v76);
      goto LABEL_85;
    case 0x14uLL:
      if (v4 != 20)
      {
        goto LABEL_86;
      }

      v51 = *((v2 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v52 = *((v3 & 0xFFFFFFFFFFFFFF9) + 0x10);

      v10 = _s8NewsFeed19FormatStateViewNodeC2eeoiySbAC_ACtFZ_0(v51, v52);
      goto LABEL_85;
    case 0x15uLL:
      if (v4 != 21)
      {
        goto LABEL_86;
      }

      v55 = *((v2 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v56 = *((v3 & 0xFFFFFFFFFFFFFF9) + 0x10);

      v10 = _s8NewsFeed16FormatCustomNodeC2eeoiySbAC_ACtFZ_0(v55, v56);
      goto LABEL_85;
    case 0x16uLL:
      if (v4 != 22)
      {
        goto LABEL_86;
      }

      v71 = *((v2 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v72 = *((v3 & 0xFFFFFFFFFFFFFF9) + 0x10);

      v10 = _s8NewsFeed15FormatPrintNodeC2eeoiySbAC_ACtFZ_0(v71, v72);
      goto LABEL_85;
    case 0x17uLL:
      if (v4 != 23)
      {
        goto LABEL_86;
      }

      v77 = *((v2 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v78 = *((v3 & 0xFFFFFFFFFFFFFF9) + 0x10);

      v10 = _s8NewsFeed19FormatAdMetricsNodeC2eeoiySbAC_ACtFZ_0(v77, v78);
      goto LABEL_85;
    case 0x18uLL:
      if (v4 != 24)
      {
        goto LABEL_86;
      }

      v37 = *((v2 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v38 = *((v3 & 0xFFFFFFFFFFFFFF9) + 0x10);

      v10 = _s8NewsFeed14FormatMicaNodeC2eeoiySbAC_ACtFZ_0(v37, v38);
      goto LABEL_85;
    case 0x19uLL:
      if (v4 != 25)
      {
        goto LABEL_86;
      }

      v35 = *((v2 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v36 = *((v3 & 0xFFFFFFFFFFFFFF9) + 0x10);

      v10 = _s8NewsFeed22FormatLayeredMediaNodeC2eeoiySbAC_ACtFZ_0(v35, v36);
      goto LABEL_85;
    case 0x1AuLL:
      if (v4 != 26)
      {
        goto LABEL_86;
      }

      v92 = *((v2 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v93 = *((v3 & 0xFFFFFFFFFFFFFF9) + 0x10);

      v10 = _s8NewsFeed15FormatVideoNodeC2eeoiySbAC_ACtFZ_0(v92, v93);
      goto LABEL_85;
    case 0x1BuLL:
      if (v4 != 27)
      {
        goto LABEL_86;
      }

      v15 = *((v2 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v16 = *((v3 & 0xFFFFFFFFFFFFFF9) + 0x10);

      v10 = _s8NewsFeed20FormatIssueCoverNodeC2eeoiySbAC_ACtFZ_0(v15, v16);
      goto LABEL_85;
    case 0x1CuLL:
      if (v4 != 28)
      {
        goto LABEL_86;
      }

      v79 = v3 & 0xFFFFFFFFFFFFFF9;
      v80 = *(v79 + 128);
      v96[6] = *(v79 + 112);
      v96[7] = v80;
      v97 = *(v79 + 144);
      v81 = *(v79 + 64);
      v96[2] = *(v79 + 48);
      v96[3] = v81;
      v82 = *(v79 + 96);
      v96[4] = *(v79 + 80);
      v96[5] = v82;
      v83 = *(v79 + 32);
      v96[0] = *(v79 + 16);
      v96[1] = v83;
      v84 = *((v2 & 0xFFFFFFFFFFFFFF9) + 0x80);
      v98[6] = *((v2 & 0xFFFFFFFFFFFFFF9) + 0x70);
      v98[7] = v84;
      v99 = *((v2 & 0xFFFFFFFFFFFFFF9) + 0x90);
      v85 = *((v2 & 0xFFFFFFFFFFFFFF9) + 0x40);
      v98[2] = *((v2 & 0xFFFFFFFFFFFFFF9) + 0x30);
      v98[3] = v85;
      v86 = *((v2 & 0xFFFFFFFFFFFFFF9) + 0x60);
      v98[4] = *((v2 & 0xFFFFFFFFFFFFFF9) + 0x50);
      v98[5] = v86;
      v87 = *((v2 & 0xFFFFFFFFFFFFFF9) + 0x20);
      v98[0] = *((v2 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v98[1] = v87;

      v7 = _s8NewsFeed26FormatShareAttributionNodeV2eeoiySbAC_ACtFZ_0(v98, v96);
      goto LABEL_78;
    case 0x1DuLL:
      if (v4 != 29)
      {
        goto LABEL_86;
      }

      v88 = *((v2 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v89 = *((v3 & 0xFFFFFFFFFFFFFF9) + 0x10);

      v10 = _s8NewsFeed15FormatBlockNodeC2eeoiySbAC_ACtFZ_0(v88, v89);
      goto LABEL_85;
    case 0x1EuLL:
      if (v4 != 30)
      {
        goto LABEL_86;
      }

      v67 = *((v2 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v68 = *((v3 & 0xFFFFFFFFFFFFFF9) + 0x10);

      v10 = _s8NewsFeed18FormatGeometryNodeC2eeoiySbAC_ACtFZ_0(v67, v68);
      goto LABEL_85;
    case 0x1FuLL:
      if (v4 != 31)
      {
        goto LABEL_86;
      }

      v47 = *((v2 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v48 = *((v3 & 0xFFFFFFFFFFFFFF9) + 0x10);

      v10 = _s8NewsFeed21FormatVideoPlayerNodeC2eeoiySbAC_ACtFZ_0(v47, v48);
      goto LABEL_85;
    case 0x20uLL:
      if (v4 != 32)
      {
        goto LABEL_86;
      }

      v69 = *((v2 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v70 = *((v3 & 0xFFFFFFFFFFFFFF9) + 0x10);

      v10 = _s8NewsFeed22FormatProgressViewNodeC2eeoiySbAC_ACtFZ_0(v69, v70);
      goto LABEL_85;
    case 0x21uLL:
      if (v4 != 33)
      {
        goto LABEL_86;
      }

      v23 = *((v2 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v24 = *((v3 & 0xFFFFFFFFFFFFFF9) + 0x10);

      v10 = _s8NewsFeed22FormatItemBindingsNodeC2eeoiySbAC_ACtFZ_0(v23, v24);
      goto LABEL_85;
    case 0x22uLL:
      if (v4 != 34)
      {
        goto LABEL_86;
      }

      v17 = *((v2 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v18 = *((v3 & 0xFFFFFFFFFFFFFF9) + 0x10);

      v10 = _s8NewsFeed19FormatAuxiliaryNodeC2eeoiySbAC_ACtFZ_0(v17, v18);
      goto LABEL_85;
    case 0x23uLL:
      if (v4 != 35)
      {
        goto LABEL_86;
      }

      v11 = *((v2 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v12 = *((v3 & 0xFFFFFFFFFFFFFF9) + 0x10);

      v10 = _s8NewsFeed15FormatResetNodeC2eeoiySbAC_ACtFZ_0(v11, v12);
      goto LABEL_85;
    case 0x24uLL:
      if (v4 != 36)
      {
        goto LABEL_86;
      }

      v13 = *((v2 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v14 = *((v3 & 0xFFFFFFFFFFFFFF9) + 0x10);

      v10 = _s8NewsFeed18FormatVariableNodeC2eeoiySbAC_ACtFZ_0(v13, v14);
      goto LABEL_85;
    case 0x25uLL:
      if (v4 != 37)
      {
        goto LABEL_86;
      }

      v8 = *((v2 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v9 = *((v3 & 0xFFFFFFFFFFFFFF9) + 0x10);

      v10 = _s8NewsFeed20FormatBreakpointNodeC2eeoiySbAC_ACtFZ_0(v8, v9);
      goto LABEL_85;
    case 0x26uLL:
      if (v4 != 38)
      {
        goto LABEL_86;
      }

      v90 = *((v2 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v91 = *((v3 & 0xFFFFFFFFFFFFFF9) + 0x10);

      v10 = _s8NewsFeed21FormatPuzzleEmbedNodeC2eeoiySbAC_ACtFZ_0(v90, v91);
      goto LABEL_85;
    case 0x27uLL:
      if (v4 != 39)
      {
        goto LABEL_86;
      }

      v73 = *((v2 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v74 = *((v3 & 0xFFFFFFFFFFFFFF9) + 0x10);

      v10 = _s8NewsFeed25FormatSponsoredBannerNodeC2eeoiySbAC_ACtFZ_0(v73, v74);
      goto LABEL_85;
    case 0x28uLL:
      if (v4 != 40)
      {
        goto LABEL_86;
      }

      v29 = *((v2 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v30 = *((v3 & 0xFFFFFFFFFFFFFF9) + 0x10);

      v10 = _s8NewsFeed17FormatFlexBoxNodeC2eeoiySbAC_ACtFZ_0(v29, v30);
LABEL_85:
      v94 = v10;

      result = v94 & 1;
      break;
    default:
      if (v4)
      {
LABEL_86:
        v7 = 0;
      }

      else
      {
        v5 = *(v2 + 16);
        v6 = *(v3 + 16);

        v7 = sub_1D6709354(v5, v6);

LABEL_78:
      }

      result = v7 & 1;
      break;
  }

  return result;
}

uint64_t sub_1D6E7C394()
{
  v1 = *v0;
  switch((*v0 >> 58) & 0x3C | (*v0 >> 1) & 3)
  {
    case 1uLL:
    case 2uLL:
    case 3uLL:
    case 4uLL:
    case 5uLL:
    case 6uLL:
    case 7uLL:
    case 8uLL:
    case 9uLL:
    case 0xAuLL:
    case 0xBuLL:
    case 0xCuLL:
    case 0xDuLL:
    case 0xEuLL:
    case 0xFuLL:
    case 0x10uLL:
    case 0x11uLL:
    case 0x12uLL:
    case 0x13uLL:
    case 0x14uLL:
    case 0x15uLL:
    case 0x16uLL:
    case 0x17uLL:
    case 0x18uLL:
    case 0x19uLL:
    case 0x1AuLL:
    case 0x1BuLL:
    case 0x1DuLL:
    case 0x1EuLL:
    case 0x1FuLL:
    case 0x20uLL:
    case 0x21uLL:
    case 0x22uLL:
    case 0x23uLL:
    case 0x24uLL:
    case 0x25uLL:
    case 0x26uLL:
    case 0x27uLL:
    case 0x28uLL:
      v1 &= 0xFFFFFFFFFFFFFF9uLL;
      goto LABEL_3;
    case 0x1CuLL:
      v2 = v1 & 0xFFFFFFFFFFFFFF9;
      break;
    default:
LABEL_3:
      v2 = *(v1 + 16);
      swift_beginAccess();
      break;
  }

  return *(v2 + 16);
}

unint64_t sub_1D6E7C418(uint64_t a1)
{
  result = sub_1D6E7C440();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6E7C440()
{
  result = qword_1EC8973E0;
  if (!qword_1EC8973E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8973E0);
  }

  return result;
}

unint64_t sub_1D6E7C494(void *a1)
{
  a1[1] = sub_1D6E7C4CC();
  a1[2] = sub_1D6E7C520();
  result = sub_1D6E7C574();
  a1[3] = result;
  return result;
}

unint64_t sub_1D6E7C4CC()
{
  result = qword_1EDF345F8;
  if (!qword_1EDF345F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF345F8);
  }

  return result;
}

unint64_t sub_1D6E7C520()
{
  result = qword_1EDF34600;
  if (!qword_1EDF34600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF34600);
  }

  return result;
}

unint64_t sub_1D6E7C574()
{
  result = qword_1EC8973E8;
  if (!qword_1EC8973E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8973E8);
  }

  return result;
}

unint64_t sub_1D6E7C5C8(uint64_t a1)
{
  result = sub_1D6E7C5F0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6E7C5F0()
{
  result = qword_1EC8973F0;
  if (!qword_1EC8973F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8973F0);
  }

  return result;
}

uint64_t sub_1D6E7C644(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x58 && *(a1 + 8))
  {
    return (*a1 + 88);
  }

  v3 = ((((*a1 >> 57) & 0x78 | *a1 & 7) >> 1) & 0xFFFFFFBF | ((*a1 & 1) << 6)) ^ 0x7F;
  if (v3 >= 0x57)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1D6E7C6A0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x57)
  {
    *result = a2 - 88;
    if (a3 >= 0x58)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x58)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 6) & 1 | (2 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

unint64_t sub_1D6E7C74C()
{
  result = qword_1EC8973F8;
  if (!qword_1EC8973F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8973F8);
  }

  return result;
}

uint64_t sub_1D6E7C7A0()
{
  v0 = sub_1D72648CC();

  if (v0 >= 0x29)
  {
    return 41;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_1D6E7C7F4()
{
  result = qword_1EDF32478;
  if (!qword_1EDF32478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF32478);
  }

  return result;
}

CGFloat sub_1D6E7C848(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, uint64_t a5, uint64_t a6)
{
  v11 = *(a6 + 16);
  if (v11)
  {
    for (i = (a6 + 64); ; i += 40)
    {
      v13 = *(i - 4);
      v14 = *(i - 3);
      v15 = *(i - 2);
      v16 = *(i - 1);
      v17 = *i;
      sub_1D5ECEE80(v13, v14, v15, v16, *i);
      sub_1D6E7CC5C(a1, a2, a3, a4);
      if (v6)
      {
        break;
      }

      a1 = v18;
      a2 = v19;
      a3 = v20;
      a4 = v21;
      sub_1D5ECEF00(v13, v14, v15, v16, v17);
      if (!--v11)
      {
        return a1;
      }
    }

    sub_1D5ECEF00(v13, v14, v15, v16, v17);
  }

  return a1;
}

uint64_t sub_1D6E7C97C@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0x6C61726765746E49;
  v5 = 0xE000000000000000;
  v7 = 0;
  switch(*(v1 + 32))
  {
    case 1:
      v7 = sub_1D6936F98(v2);
      v5 = v14;
      v3 = 0xE500000000000000;
      v4 = 0x6874646957;
      break;
    case 2:
      v7 = sub_1D6936F98(v2);
      v5 = v15;
      v3 = 0xE600000000000000;
      v4 = 0x746867696548;
      break;
    case 3:
      v7 = sub_1D6936F98(v2);
      v5 = v10;
      v3 = 0xE500000000000000;
      v4 = 0x656C616353;
      break;
    case 4:
      v7 = sub_1D6936F98(v2);
      v5 = v17;
      v3 = 0xEB00000000687464;
      v4 = 0x695720656C616353;
      break;
    case 5:
      v7 = sub_1D6936F98(v2);
      v5 = v18;
      v3 = 0xEC00000074686769;
      v4 = 0x654820656C616353;
      break;
    case 6:
      v7 = sub_1D6936F98(v2);
      v5 = v16;
      v3 = 0xE900000000000068;
      v13 = 544760141;
      goto LABEL_11;
    case 7:
      v7 = sub_1D6936F98(v2);
      v5 = v21;
      v3 = 0xEA00000000007468;
      v20 = 544760141;
      goto LABEL_16;
    case 8:
      v7 = sub_1D6936F98(v2);
      v5 = v12;
      v3 = 0xE900000000000068;
      v13 = 544106829;
LABEL_11:
      v4 = v13 | 0x7464695700000000;
      break;
    case 9:
      v7 = sub_1D6936F98(v2);
      v5 = v19;
      v3 = 0xEA00000000007468;
      v20 = 544106829;
LABEL_16:
      v4 = v20 | 0x6769654800000000;
      break;
    case 0xA:
      v7 = sub_1D6936F98(v2);
      v5 = v9;
      v3 = 0xED00006874646957;
      goto LABEL_6;
    case 0xB:
      v7 = sub_1D6936F98(v2);
      v5 = v11;
      v3 = 0xEE00746867696548;
LABEL_6:
      v4 = 0x206563616C706552;
      break;
    case 0xC:
      break;
    default:
      v7 = FormatEdgeInsetsEquation.description.getter();
      v5 = v8;
      v3 = 0xE500000000000000;
      v4 = 0x7465736E49;
      break;
  }

  v22 = type metadata accessor for FormatInspectionItem(0);
  v23 = (a1 + *(v22 + 24));
  *v23 = v7;
  v23[1] = v5;
  v24 = type metadata accessor for FormatInspectionItem.Value(0);
  swift_storeEnumTagMultiPayload();
  result = (*(*(v24 - 8) + 56))(v23, 0, 1, v24);
  *a1 = v4;
  a1[1] = v3;
  a1[2] = 0;
  a1[3] = 0;
  v26 = a1 + *(v22 + 28);
  *v26 = 0;
  *(v26 + 1) = 0;
  v26[16] = -1;
  return result;
}

void sub_1D6E7CC5C(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v6 = *v4;
  switch(*(v4 + 32))
  {
    case 1:
      v25 = off_1F51AF338[0];
      type metadata accessor for FormatNodeContext();
      v26 = v25();
      sub_1D5E02AFC(v26, v6);

      if (!v5)
      {
        sub_1D72632AC();
      }

      return;
    case 2:
      v19 = off_1F51AF338[0];
      type metadata accessor for FormatNodeContext();
      v20 = v19();
      sub_1D5E02AFC(v20, v6);

      if (!v5)
      {
        sub_1D72632BC();
      }

      return;
    case 3:
      v21 = off_1F51AF338[0];
      type metadata accessor for FormatNodeContext();
      v22 = v21();
      sub_1D5E02AFC(v22, v6);

      if (!v5)
      {
        v37.origin.x = a1;
        v37.origin.y = a2;
        v37.size.width = a3;
        v37.size.height = a4;
        CGRectGetHeight(v37);
        sub_1D726330C();
        v38.origin.x = a1;
        v38.origin.y = a2;
        v38.size.width = a3;
        v38.size.height = a4;
        CGRectGetWidth(v38);
        sub_1D72632FC();
      }

      return;
    case 4:
      v15 = off_1F51AF338[0];
      type metadata accessor for FormatNodeContext();
      v16 = v15();
      sub_1D5E02AFC(v16, v6);

      if (!v5)
      {
        v35.origin.x = a1;
        v35.origin.y = a2;
        v35.size.width = a3;
        v35.size.height = a4;
        CGRectGetWidth(v35);
        goto LABEL_30;
      }

      return;
    case 5:
      v27 = off_1F51AF338[0];
      type metadata accessor for FormatNodeContext();
      v28 = v27();
      sub_1D5E02AFC(v28, v6);

      if (!v5)
      {
        v39.origin.x = a1;
        v39.origin.y = a2;
        v39.size.width = a3;
        v39.size.height = a4;
        CGRectGetHeight(v39);
        goto LABEL_21;
      }

      return;
    case 6:
      v29 = off_1F51AF338[0];
      type metadata accessor for FormatNodeContext();
      v30 = v29();
      sub_1D5E02AFC(v30, v6);
      if (v5)
      {
        goto LABEL_27;
      }

      goto LABEL_29;
    case 7:
      v23 = off_1F51AF338[0];
      type metadata accessor for FormatNodeContext();
      v24 = v23();
      sub_1D5E02AFC(v24, v6);
      if (!v5)
      {
        goto LABEL_10;
      }

      goto LABEL_27;
    case 8:
      v33 = off_1F51AF338[0];
      type metadata accessor for FormatNodeContext();
      v34 = v33();
      sub_1D5E02AFC(v34, v6);
      if (v5)
      {
        goto LABEL_27;
      }

LABEL_29:

      v40.origin.x = a1;
      v40.origin.y = a2;
      v40.size.width = a3;
      v40.size.height = a4;
      CGRectGetWidth(v40);
      goto LABEL_30;
    case 9:
      v17 = off_1F51AF338[0];
      type metadata accessor for FormatNodeContext();
      v18 = v17();
      sub_1D5E02AFC(v18, v6);
      if (v5)
      {
        goto LABEL_27;
      }

LABEL_10:

      v36.origin.x = a1;
      v36.origin.y = a2;
      v36.size.width = a3;
      v36.size.height = a4;
      CGRectGetHeight(v36);
      goto LABEL_21;
    case 0xA:
      v31 = off_1F51AF338[0];
      type metadata accessor for FormatNodeContext();
      v32 = v31();
      sub_1D5E02AFC(v32, v6);
      if (v5)
      {
        goto LABEL_27;
      }

LABEL_30:
      sub_1D72632FC();
      return;
    case 0xB:
      v13 = off_1F51AF338[0];
      type metadata accessor for FormatNodeContext();
      v14 = v13();
      sub_1D5E02AFC(v14, v6);
      if (v5)
      {
LABEL_27:
      }

      else
      {

LABEL_21:
        sub_1D726330C();
      }

      return;
    case 0xC:
      CGRectIntegral(*&a1);
      return;
    default:
      v11 = sub_1D6BA4A00();
      if (!v5)
      {
        UIEdgeInsetsInsetRect(a1, a2, a3, a4, v11, v12);
      }

      return;
  }
}

uint64_t _s8NewsFeed32FormatImageNodeRequestAdjustmentO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v6 = *(a1 + 16);
  v5 = *(a1 + 24);
  v7 = *(a1 + 32);
  v9 = *a2;
  v8 = *(a2 + 8);
  v10 = *(a2 + 16);
  v11 = *(a2 + 24);
  v12 = *(a2 + 32);
  v29[0] = *a1;
  v29[1] = v4;
  v29[2] = v6;
  v29[3] = v5;
  v30 = v7;
  v31 = v9;
  v32 = v8;
  v33 = v10;
  v34 = v11;
  v35 = v12;
  switch(v7)
  {
    case 1:
      if (v12 != 1)
      {
        goto LABEL_34;
      }

      sub_1D5ECEE80(v9, v8, v10, v11, 1u);
      v23 = v3;
      v24 = v4;
      v25 = v6;
      v26 = v5;
      v27 = 1;
      goto LABEL_33;
    case 2:
      if (v12 != 2)
      {
        goto LABEL_34;
      }

      sub_1D5ECEE80(v9, v8, v10, v11, 2u);
      v23 = v3;
      v24 = v4;
      v25 = v6;
      v26 = v5;
      v27 = 2;
      goto LABEL_33;
    case 3:
      if (v12 != 3)
      {
        goto LABEL_34;
      }

      sub_1D5ECEE80(v9, v8, v10, v11, 3u);
      v23 = v3;
      v24 = v4;
      v25 = v6;
      v26 = v5;
      v27 = 3;
      goto LABEL_33;
    case 4:
      if (v12 != 4)
      {
        goto LABEL_34;
      }

      sub_1D5ECEE80(v9, v8, v10, v11, 4u);
      v23 = v3;
      v24 = v4;
      v25 = v6;
      v26 = v5;
      v27 = 4;
      goto LABEL_33;
    case 5:
      if (v12 != 5)
      {
        goto LABEL_34;
      }

      sub_1D5ECEE80(v9, v8, v10, v11, 5u);
      v23 = v3;
      v24 = v4;
      v25 = v6;
      v26 = v5;
      v27 = 5;
      goto LABEL_33;
    case 6:
      if (v12 != 6)
      {
        goto LABEL_34;
      }

      sub_1D5ECEE80(v9, v8, v10, v11, 6u);
      v23 = v3;
      v24 = v4;
      v25 = v6;
      v26 = v5;
      v27 = 6;
      goto LABEL_33;
    case 7:
      if (v12 != 7)
      {
        goto LABEL_34;
      }

      sub_1D5ECEE80(v9, v8, v10, v11, 7u);
      v23 = v3;
      v24 = v4;
      v25 = v6;
      v26 = v5;
      v27 = 7;
      goto LABEL_33;
    case 8:
      if (v12 != 8)
      {
        goto LABEL_34;
      }

      sub_1D5ECEE80(v9, v8, v10, v11, 8u);
      v23 = v3;
      v24 = v4;
      v25 = v6;
      v26 = v5;
      v27 = 8;
      goto LABEL_33;
    case 9:
      if (v12 != 9)
      {
        goto LABEL_34;
      }

      sub_1D5ECEE80(v9, v8, v10, v11, 9u);
      v23 = v3;
      v24 = v4;
      v25 = v6;
      v26 = v5;
      v27 = 9;
      goto LABEL_33;
    case 10:
      if (v12 != 10)
      {
        goto LABEL_34;
      }

      sub_1D5ECEE80(v9, v8, v10, v11, 0xAu);
      v23 = v3;
      v24 = v4;
      v25 = v6;
      v26 = v5;
      v27 = 10;
      goto LABEL_33;
    case 11:
      if (v12 != 11)
      {
        goto LABEL_34;
      }

      sub_1D5ECEE80(v9, v8, v10, v11, 0xBu);
      v23 = v3;
      v24 = v4;
      v25 = v6;
      v26 = v5;
      v27 = 11;
LABEL_33:
      sub_1D5ECEE80(v23, v24, v25, v26, v27);
      v28 = sub_1D633A310(v3, v9);
      sub_1D6E7D89C(v29);
      return v28 & 1;
    case 12:
      if (v12 != 12 || v8 | v9 | v10 | v11)
      {
        goto LABEL_34;
      }

      sub_1D6E7D89C(v29);
      return 1;
    default:
      if (v12)
      {
LABEL_34:
        sub_1D5ECEE80(v9, v8, v10, v11, v12);
        sub_1D5ECEE80(v3, v4, v6, v5, v7);
        sub_1D6E7D89C(v29);
      }

      else
      {
        v13 = v8;
        v14 = v10;
        v15 = v11;
        sub_1D5ECEE80(v9, v8, v10, v11, 0);
        sub_1D5ECEE80(v3, v4, v6, v5, 0);
        v16 = v13;
        v17 = v13;
        v18 = v14;
        v19 = v14;
        v20 = v15;
        sub_1D5ECEE80(v9, v17, v19, v15, 0);
        sub_1D5ECEE80(v3, v4, v6, v5, 0);
        if (sub_1D633A310(v3, v9) & 1) != 0 && (sub_1D633A310(v4, v16) & 1) != 0 && (sub_1D633A310(v6, v18))
        {
          v21 = sub_1D633A310(v5, v15);
          sub_1D6E7D89C(v29);
          sub_1D5ECEF00(v9, v16, v18, v20, 0);
          sub_1D5ECEF00(v3, v4, v6, v5, 0);
          if (v21)
          {
            return 1;
          }
        }

        else
        {
          sub_1D6E7D89C(v29);
          sub_1D5ECEF00(v9, v16, v18, v15, 0);
          sub_1D5ECEF00(v3, v4, v6, v5, 0);
        }
      }

      return 0;
  }
}

unint64_t sub_1D6E7D6BC(uint64_t a1)
{
  result = sub_1D6E7D6E4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6E7D6E4()
{
  result = qword_1EC897400;
  if (!qword_1EC897400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC897400);
  }

  return result;
}

unint64_t sub_1D6E7D738(void *a1)
{
  a1[1] = sub_1D6696DC0();
  a1[2] = sub_1D6696E14();
  result = sub_1D6E7D770();
  a1[3] = result;
  return result;
}

unint64_t sub_1D6E7D770()
{
  result = qword_1EC897408;
  if (!qword_1EC897408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC897408);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_8NewsFeed32FormatImageNodeRequestAdjustmentO(uint64_t a1)
{
  if ((*(a1 + 32) & 0xFu) <= 0xB)
  {
    return *(a1 + 32) & 0xF;
  }

  else
  {
    return (*a1 + 12);
  }
}

uint64_t sub_1D6E7D7E0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF4 && *(a1 + 33))
  {
    return (*a1 + 244);
  }

  v3 = *(a1 + 32);
  if (v3 <= 0xC)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1D6E7D828(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF3)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 244;
    *(result + 8) = 0;
    if (a3 >= 0xF4)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF4)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t sub_1D6E7D870(uint64_t result, unsigned int a2)
{
  if (a2 >= 0xC)
  {
    *result = a2 - 12;
    *(result + 8) = 0;
    LOBYTE(a2) = 12;
    *(result + 16) = 0;
    *(result + 24) = 0;
  }

  *(result + 32) = a2;
  return result;
}

uint64_t sub_1D6E7D89C(uint64_t a1)
{
  sub_1D6E7D8F8();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1D6E7D8F8()
{
  if (!qword_1EC897410)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC897410);
    }
  }
}

void __swiftcall UIView.nearestCommonAncestor(with:)(UIView_optional *__return_ptr retstr, UIView *with)
{
  v3 = v2;
  if (MEMORY[0x1E69E7CC0] >> 62 && sub_1D7263BFC())
  {
    v32 = v2;
    v33 = with;
    sub_1D5E2A0E0(MEMORY[0x1E69E7CC0]);
    v7 = v34;
  }

  else
  {
    v5 = v2;
    v6 = with;
    v7 = MEMORY[0x1E69E7CD0];
  }

  v37 = v7;
  sub_1D5E2B010();
  v35 = v2;
  v8 = &off_1E84D3000;
LABEL_5:
  if ((v7 & 0xC000000000000001) != 0)
  {
    v10 = v3;
    v11 = sub_1D7263C3C();

    if (v11)
    {

      goto LABEL_30;
    }

    goto LABEL_7;
  }

  if (!*(v7 + 16) || (v13 = sub_1D72636FC(), v14 = -1 << *(v7 + 32), v15 = v13 & ~v14, ((*(v7 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0))
  {
LABEL_7:
    sub_1D5FF0D30(&v36, v3);

    if (with)
    {
      v12 = with;
      goto LABEL_17;
    }

    while (1)
    {
      v19 = [v3 v8[236]];

      v12 = [with v8[236]];
      if (v19)
      {
        v9 = v19;
        v7 = v37;
        with = v12;
        v3 = v19;
        goto LABEL_5;
      }

      v3 = 0;
      with = v12;
      if (!v12)
      {
        break;
      }

LABEL_17:
      v20 = v12;
      v21 = v20;
      v22 = v37;
      if ((v37 & 0xC000000000000001) != 0)
      {
        v23 = v20;
        v24 = sub_1D7263C3C();

        if (v24)
        {
          goto LABEL_26;
        }
      }

      else if (*(v37 + 16))
      {
        v25 = sub_1D72636FC();
        v26 = -1 << *(v22 + 32);
        v27 = v25 & ~v26;
        if ((*(v22 + 56 + ((v27 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v27))
        {
          v28 = ~v26;
          while (1)
          {
            v29 = *(*(v22 + 48) + 8 * v27);
            v30 = sub_1D726370C();

            if (v30)
            {
              break;
            }

            v27 = (v27 + 1) & v28;
            if (((*(v22 + 56 + ((v27 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v27) & 1) == 0)
            {
              goto LABEL_19;
            }
          }

LABEL_26:

          goto LABEL_30;
        }
      }

LABEL_19:
      sub_1D5FF0D30(&v36, v21);

      v8 = &off_1E84D3000;
    }

    v31 = v35;
    goto LABEL_30;
  }

  v16 = ~v14;
  while (1)
  {
    v17 = *(*(v7 + 48) + 8 * v15);
    v18 = sub_1D726370C();

    if (v18)
    {
      break;
    }

    v15 = (v15 + 1) & v16;
    if (((*(v7 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
    {
      goto LABEL_7;
    }
  }

LABEL_30:
}

Swift::Void __swiftcall UIView.applyBackground(_:withGutter:)(UIView *_, UIView_optional *withGutter)
{
  v4 = [objc_opt_self() clearColor];
  [v2 setBackgroundColor_];

  v5 = [v2 subviews];
  sub_1D5E2B010();
  v6 = sub_1D726267C();

  if (v6 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1D7263BFC())
  {
    v8 = 0;
    while (1)
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x1DA6FB460](v8, v6);
      }

      else
      {
        if (v8 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_12;
        }

        v9 = *(v6 + 8 * v8 + 32);
      }

      v10 = v9;
      v11 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      [v9 removeFromSuperview];

      ++v8;
      if (v11 == i)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }

LABEL_14:

  if (withGutter)
  {
    v12 = withGutter;
    UIView.nearestCommonAncestor(with:)(v13, &v12->value);
    if (v14)
    {
      v15 = v14;
      [v2 frame];
      [(UIView_optional *)v15 convertPoint:v2 toCoordinateSpace:?];
      [(UIView *)_ frame];
      sub_1D726325C();
      [(UIView *)_ setFrame:?];

      v12 = v15;
    }
  }

  [v2 addSubview_];
}

uint64_t sub_1D6E7DE88(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (!v1)
  {
    return v2;
  }

  v25 = MEMORY[0x1E69E7CC0];
  v24 = *(a1 + 16);
  sub_1D6999798(0, v1, 0);
  v2 = v25;
  v4 = a1 + 56;
  result = sub_1D7263B7C();
  v6 = v24;
  v7 = 0;
  while ((result & 0x8000000000000000) == 0 && result < 1 << *(a1 + 32))
  {
    v9 = result >> 6;
    v10 = 1 << result;
    if ((*(v4 + 8 * (result >> 6)) & (1 << result)) == 0)
    {
      goto LABEL_21;
    }

    v11 = *(*(a1 + 48) + result);
    v12 = *(a1 + 36);
    v14 = *(v25 + 16);
    v13 = *(v25 + 24);
    if (v14 >= v13 >> 1)
    {
      v22 = *(a1 + 36);
      v23 = result;
      sub_1D6999798((v13 > 1), v14 + 1, 1);
      v6 = v24;
      v12 = v22;
      result = v23;
    }

    *(v25 + 16) = v14 + 1;
    *(v25 + v14 + 32) = v11;
    v8 = 1 << *(a1 + 32);
    if (result >= v8)
    {
      goto LABEL_22;
    }

    v15 = *(v4 + 8 * v9);
    if ((v15 & v10) == 0)
    {
      goto LABEL_23;
    }

    if (v12 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v16 = v15 & (-2 << (result & 0x3F));
    if (v16)
    {
      v8 = __clz(__rbit64(v16)) | result & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v17 = v9 << 6;
      v18 = v9 + 1;
      v19 = (a1 + 64 + 8 * v9);
      while (v18 < (v8 + 63) >> 6)
      {
        v21 = *v19++;
        v20 = v21;
        v17 += 64;
        ++v18;
        if (v21)
        {
          sub_1D5C25E1C(result, v12, 0);
          v6 = v24;
          v8 = __clz(__rbit64(v20)) + v17;
          goto LABEL_4;
        }
      }

      sub_1D5C25E1C(result, v12, 0);
      v6 = v24;
    }

LABEL_4:
    ++v7;
    result = v8;
    if (v7 == v6)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_1D6E7E0A4@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v132 = a3;
  v5 = type metadata accessor for FormatContentSlotItemObject();
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v115 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v115 - v11;
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v115 - v15;
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = (&v115 - v19);
  MEMORY[0x1EEE9AC00](v21, v22);
  v116 = (&v115 - v23);
  MEMORY[0x1EEE9AC00](v24, v25);
  v27 = &v115 - v26;
  MEMORY[0x1EEE9AC00](v28, v29);
  v115 = (&v115 - v30);
  v127 = type metadata accessor for WebEmbedDataVisualization();
  v125 = *(v127 - 8);
  MEMORY[0x1EEE9AC00](v127, v31);
  v117 = (&v115 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D5B62E3C(0, qword_1EDF3EB00, type metadata accessor for WebEmbedDataVisualization, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v33 - 8, v34);
  v126 = &v115 - v35;
  v124 = type metadata accessor for FeedWebEmbed();
  MEMORY[0x1EEE9AC00](v124, v36);
  v128 = &v115 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = type metadata accessor for FeedRecipe();
  MEMORY[0x1EEE9AC00](v38 - 8, v39);
  v123 = &v115 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v121 = type metadata accessor for FeedPuzzleStatistic();
  MEMORY[0x1EEE9AC00](v121, v41);
  v122 = &v115 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = type metadata accessor for FeedCustomItem();
  MEMORY[0x1EEE9AC00](v119, v43);
  v120 = &v115 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = type metadata accessor for FeedHeadline(0);
  MEMORY[0x1EEE9AC00](v45 - 8, v46);
  v118 = &v115 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v140 = type metadata accessor for FeedItem(0);
  MEMORY[0x1EEE9AC00](v140, v48);
  v153 = &v115 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = a2[2];
  v139 = a2[1];
  v138 = v50;
  v51 = a2[3];
  v52 = a2[4];
  v53 = a2[6];
  v136 = a2[5];
  v135 = v53;
  v134 = a2[7];
  v54 = FeedItem.identifier.getter();
  v56 = *(v51 + 16);
  v137 = v51;
  if (v56)
  {
    v130 = v12;
    v131 = v8;
    v57 = v16;
    v58 = v27;
    v59 = a1;
    v60 = sub_1D5B69D90(v54, v55);
    v62 = v61;

    if (v62)
    {
      v63 = *(*(v51 + 56) + 8 * v60);
    }

    else
    {
      v63 = MEMORY[0x1E69E7CD0];
    }

    a1 = v59;
    v27 = v58;
    v16 = v57;
    v8 = v131;
    v12 = v130;
  }

  else
  {

    v63 = MEMORY[0x1E69E7CD0];
  }

  v64 = FeedItem.identifier.getter();
  if (*(v52 + 16))
  {
    v131 = v27;
    v129 = v20;
    v66 = a1;
    v67 = sub_1D5B69D90(v64, v65);
    v69 = v68;

    if (v69)
    {
      v70 = *(*(v52 + 56) + 8 * v67);
    }

    else
    {
      v70 = MEMORY[0x1E69E7CC0];
    }

    a1 = v66;
    v20 = v129;
    v27 = v131;
  }

  else
  {

    v70 = MEMORY[0x1E69E7CC0];
  }

  v71 = v153;
  sub_1D5CEC808(a1, v153, type metadata accessor for FeedItem);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 3u:
      v78 = v118;
      sub_1D5D53B50(v71, v118, type metadata accessor for FeedHeadline);
      sub_1D6E7FE94(*(v78 + 40), v70, v63, v132);

      sub_1D5D1EC78(a1, type metadata accessor for FeedItem);
      v79 = type metadata accessor for FeedHeadline;
      goto LABEL_28;
    case 4u:
      v140 = v63;
      v97 = v128;
      sub_1D5D53B50(v71, v128, type metadata accessor for FeedWebEmbed);
      v98 = v126;
      sub_1D6E7FDA4(v97 + *(v124 + 52), v126, qword_1EDF3EB00, type metadata accessor for WebEmbedDataVisualization);
      if ((*(v125 + 48))(v98, 1, v127) == 1)
      {
        sub_1D6E7FE24(v98, qword_1EDF3EB00, type metadata accessor for WebEmbedDataVisualization);
        goto LABEL_34;
      }

      v131 = v27;
      v130 = v12;
      v99 = v117;
      sub_1D5CEC808(v98, v117, type metadata accessor for WebEmbedDataVisualization);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v101 = v133;
      if (EnumCaseMultiPayload != 1)
      {
        v129 = v20;
        v103 = *v99;
        sub_1D5D1EC78(v98, type metadata accessor for WebEmbedDataVisualization);
        v104 = v103 >> 61;
        if ((v103 >> 61) <= 2)
        {
          if (!v104)
          {

            v108 = v115;
            sub_1D6E81EFC(v114, v140, v115);

            sub_1D5D1EC78(a1, type metadata accessor for FeedItem);
            sub_1D5D1EC78(v128, type metadata accessor for FeedWebEmbed);
            if (v101)
            {
            }

LABEL_45:
            sub_1D5D53B50(v108, v132, type metadata accessor for FormatContentSlotItemObject);
          }

          if (v104 == 1)
          {

            v108 = v129;
            v111 = v101;
            sub_1D6E828D0(v113, v140, v129);
          }

          else
          {

            v108 = v116;
            v111 = v101;
            sub_1D6E82400(v70, v140, v116);
          }
        }

        else
        {
          if (v104 > 4)
          {
            if (v104 == 5)
            {

              v106 = &OBJC_IVAR____TtC8NewsFeed35SportsInjuryReportDataVisualization_config;
              v107 = type metadata accessor for FormatInjuryReportDataVisualization;
              v108 = v130;
              v109 = v130;
              v110 = v140;
              v111 = v101;
              v112 = 18;
            }

            else
            {
              v108 = v8;

              v106 = &OBJC_IVAR____TtC8NewsFeed32SportsKeyPlayerDataVisualization_config;
              v107 = type metadata accessor for FormatKeyPlayerDataVisualization;
              v109 = v8;
              v110 = v140;
              v111 = v101;
              v112 = 19;
            }
          }

          else if (v104 == 3)
          {

            v106 = &OBJC_IVAR____TtC8NewsFeed31SportsBoxScoreDataVisualization_config;
            v107 = type metadata accessor for FormatBoxScoreDataVisualization;
            v108 = v131;
            v109 = v131;
            v110 = v140;
            v111 = v101;
            v112 = 16;
          }

          else
          {

            v106 = &OBJC_IVAR____TtC8NewsFeed32SportsLineScoreDataVisualization_config;
            v107 = type metadata accessor for FormatLineScoreDataVisualization;
            v109 = v16;
            v108 = v16;
            v110 = v140;
            v111 = v101;
            v112 = 17;
          }

          sub_1D6E82CE0(v105, v110, v106, v107, v112, v109);
        }

        sub_1D5D1EC78(a1, type metadata accessor for FeedItem);
        sub_1D5D1EC78(v128, type metadata accessor for FeedWebEmbed);
        if (v111)
        {
        }

        goto LABEL_45;
      }

      sub_1D5D1EC78(v99, type metadata accessor for WebEmbedDataVisualization);
      sub_1D5D1EC78(v98, type metadata accessor for WebEmbedDataVisualization);
LABEL_34:
      v102 = v128;
      sub_1D6E83174(v128, v70, v140, v132);

      sub_1D5D1EC78(a1, type metadata accessor for FeedItem);
      v73 = type metadata accessor for FeedWebEmbed;
      v74 = v102;
      return sub_1D5D1EC78(v74, v73);
    case 5u:
      v80 = *(v71 + 112);
      v147 = *(v71 + 96);
      *v148 = v80;
      *&v148[9] = *(v71 + 121);
      v81 = *(v71 + 16);
      v141 = *v71;
      v142 = v81;
      v82 = *(v71 + 48);
      v143 = *(v71 + 32);
      v83 = *(v71 + 64);
      v146 = *(v71 + 80);
      v144 = v82;
      v145 = v83;
      sub_1D6E803C0(v141, v70, v63, v132);

      sub_1D5ECF320(&v141);
      goto LABEL_20;
    case 7u:
      v92 = *(v71 + 112);
      v147 = *(v71 + 96);
      *v148 = v92;
      *&v148[16] = *(v71 + 128);
      LOBYTE(v149) = *(v71 + 144);
      v93 = *(v71 + 48);
      v143 = *(v71 + 32);
      v94 = *(v71 + 64);
      v95 = *(v71 + 80);
      v144 = v93;
      v145 = v94;
      v146 = v95;
      v96 = *(v71 + 16);
      v141 = *v71;
      v142 = v96;
      sub_1D6E806C4(v96, v70, v63, v132);

      sub_1D5D1EC78(a1, type metadata accessor for FeedItem);
      return sub_1D5EE5B54(&v141);
    case 8u:
      v78 = v120;
      sub_1D5D53B50(v71, v120, type metadata accessor for FeedCustomItem);
      sub_1D6E809C0((v78 + *(v119 + 20)), v70, v63, v132);

      sub_1D5D1EC78(a1, type metadata accessor for FeedItem);
      v79 = type metadata accessor for FeedCustomItem;
      goto LABEL_28;
    case 0xCu:
      v78 = v123;
      sub_1D5D53B50(v71, v123, type metadata accessor for FeedRecipe);
      sub_1D6E819E4(*(v78 + 56), v70, v63, v132);

      sub_1D5D1EC78(a1, type metadata accessor for FeedItem);
      v79 = type metadata accessor for FeedRecipe;
      goto LABEL_28;
    case 0xEu:
      v86 = *(v71 + 176);
      v150 = *(v71 + 160);
      v151 = v86;
      v152 = *(v71 + 192);
      v87 = *(v71 + 112);
      v147 = *(v71 + 96);
      *v148 = v87;
      v88 = *(v71 + 144);
      *&v148[16] = *(v71 + 128);
      v149 = v88;
      v89 = *(v71 + 48);
      v143 = *(v71 + 32);
      v90 = *(v71 + 64);
      v146 = *(v71 + 80);
      v144 = v89;
      v145 = v90;
      v91 = *v71;
      v142 = *(v71 + 16);
      v141 = v91;
      sub_1D6E80D68(*(&v89 + 1), v70, v63, v132);

      sub_1D5D1EC78(a1, type metadata accessor for FeedItem);
      return sub_1D5F2DF58(&v141);
    case 0xFu:
      v76 = *(v71 + 24);
      v77 = *(v71 + 32);
      sub_1D6E81090(*(v71 + 56), v70, v63, v132);

      sub_1D5BF6680(v76, v77);
      swift_unknownObjectRelease();

LABEL_20:
      v84 = type metadata accessor for FeedItem;
      v85 = a1;
      return sub_1D5D1EC78(v85, v84);
    case 0x10u:
      v78 = v122;
      sub_1D5D53B50(v71, v122, type metadata accessor for FeedPuzzleStatistic);
      sub_1D6E81470((v78 + *(v121 + 32)), v70, v63, v132);

      sub_1D5D1EC78(a1, type metadata accessor for FeedItem);
      v79 = type metadata accessor for FeedPuzzleStatistic;
LABEL_28:
      v84 = v79;
      v85 = v78;
      return sub_1D5D1EC78(v85, v84);
    case 0x12u:

      goto LABEL_15;
    default:

      sub_1D5D1EC78(v71, type metadata accessor for FeedItem);
LABEL_15:
      sub_1D6E7FD50();
      swift_allocError();
      *v72 = 1;
      swift_willThrow();
      v73 = type metadata accessor for FeedItem;
      v74 = a1;
      return sub_1D5D1EC78(v74, v73);
  }
}

uint64_t sub_1D6E7F164@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v89 = a2;
  v90 = a3;
  v87 = a4;
  v84 = type metadata accessor for FormatContentSlotItemObject();
  MEMORY[0x1EEE9AC00](v84, v5);
  v83 = &v77 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v82 = &v77 - v9;
  MEMORY[0x1EEE9AC00](v10, v11);
  v81 = &v77 - v12;
  MEMORY[0x1EEE9AC00](v13, v14);
  v80 = (&v77 - v15);
  MEMORY[0x1EEE9AC00](v16, v17);
  v78 = (&v77 - v18);
  MEMORY[0x1EEE9AC00](v19, v20);
  v79 = &v77 - v21;
  MEMORY[0x1EEE9AC00](v22, v23);
  v77 = (&v77 - v24);
  v25 = type metadata accessor for WebEmbedDataVisualization();
  v85 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25, v26);
  v28 = (&v77 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D5B62E3C(0, qword_1EDF3EB00, type metadata accessor for WebEmbedDataVisualization, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v29 - 8, v30);
  v32 = &v77 - v31;
  v33 = type metadata accessor for FormatWebEmbed.Resolved();
  MEMORY[0x1EEE9AC00](v33, v34);
  v86 = &v77 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = type metadata accessor for PuzzleStatistic();
  MEMORY[0x1EEE9AC00](v36 - 8, v37);
  v39 = (&v77 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0));
  v40 = type metadata accessor for FormatCustomItem.Resolved();
  MEMORY[0x1EEE9AC00](v40 - 8, v41);
  v43 = (&v77 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0));
  v44 = type metadata accessor for FormatContentSlotItemObject.Resolved();
  MEMORY[0x1EEE9AC00](v44, v45);
  v47 = (&v77 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0));
  v91 = a1;
  sub_1D5CEC808(a1, v47, type metadata accessor for FormatContentSlotItemObject.Resolved);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload <= 6)
    {
      v55 = v89;
      v54 = v90;
      if (EnumCaseMultiPayload != 5)
      {
        sub_1D5D53B50(v47, v39, type metadata accessor for PuzzleStatistic);
        sub_1D6E81470(v39, v55, v54, v87);

        sub_1D5D1EC78(v91, type metadata accessor for FormatContentSlotItemObject.Resolved);
        v52 = type metadata accessor for PuzzleStatistic;
        v53 = v39;
        return sub_1D5D1EC78(v53, v52);
      }

      sub_1D6E81090(*v47, v89, v90, v87);
      goto LABEL_18;
    }

    v51 = v89;
    v50 = v90;
    if (EnumCaseMultiPayload != 7)
    {
      if (EnumCaseMultiPayload != 8)
      {

        sub_1D5D1EC78(v47, type metadata accessor for FormatContentSlotItemObject.Resolved);
        sub_1D6E7FD50();
        swift_allocError();
        *v57 = 1;
        swift_willThrow();
        return sub_1D5D1EC78(v91, type metadata accessor for FormatContentSlotItemObject.Resolved);
      }

      sub_1D5D53B50(v47, v43, type metadata accessor for FormatCustomItem.Resolved);
      sub_1D6E809C0(v43, v51, v50, v87);

      sub_1D5D1EC78(v91, type metadata accessor for FormatContentSlotItemObject.Resolved);
      v52 = type metadata accessor for FormatCustomItem.Resolved;
      v53 = v43;
      return sub_1D5D1EC78(v53, v52);
    }

    v56 = *v47;
    sub_1D6E819E4(*v47, v89, v90, v87);

    goto LABEL_21;
  }

  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
      sub_1D6E7FE94(*v47, v89, v90, v87);
LABEL_18:

      swift_unknownObjectRelease();
LABEL_22:
      v52 = type metadata accessor for FormatContentSlotItemObject.Resolved;
      v53 = v91;
      return sub_1D5D1EC78(v53, v52);
    }

    v56 = *v47;
    sub_1D6E803C0(*v47, v89, v90, v87);

LABEL_21:

    goto LABEL_22;
  }

  if (EnumCaseMultiPayload == 2)
  {
    sub_1D6E806C4(*v47, v89, v90, v87);
    goto LABEL_18;
  }

  if (EnumCaseMultiPayload != 3)
  {
    sub_1D6E80D68(*v47, v89, v90, v87);
    goto LABEL_18;
  }

  v49 = v86;
  sub_1D5D53B50(v47, v86, type metadata accessor for FormatWebEmbed.Resolved);
  sub_1D6E7FDA4(v49 + *(v33 + 32), v32, qword_1EDF3EB00, type metadata accessor for WebEmbedDataVisualization);
  if ((*(v85 + 48))(v32, 1, v25) == 1)
  {

    sub_1D6E7FE24(v32, qword_1EDF3EB00, type metadata accessor for WebEmbedDataVisualization);
LABEL_27:
    sub_1D5D1EC78(v91, type metadata accessor for FormatContentSlotItemObject.Resolved);
    sub_1D5CEC808(v49 + *(v33 + 20), v87, type metadata accessor for FormatWebEmbed);
    sub_1D5D1EC78(v49, type metadata accessor for FormatWebEmbed.Resolved);
    return swift_storeEnumTagMultiPayload();
  }

  sub_1D5CEC808(v32, v28, type metadata accessor for WebEmbedDataVisualization);
  v59 = swift_getEnumCaseMultiPayload();
  v60 = v88;
  if (v59 == 1)
  {

    sub_1D5D1EC78(v28, type metadata accessor for WebEmbedDataVisualization);
    sub_1D5D1EC78(v32, type metadata accessor for WebEmbedDataVisualization);
    goto LABEL_27;
  }

  v61 = *v28;
  sub_1D5D1EC78(v32, type metadata accessor for WebEmbedDataVisualization);
  v62 = v61 >> 61;
  if ((v61 >> 61) > 2)
  {
    v63 = v90;
    if (v62 > 4)
    {
      if (v62 == 5)
      {

        v65 = &OBJC_IVAR____TtC8NewsFeed35SportsInjuryReportDataVisualization_config;
        v66 = type metadata accessor for FormatInjuryReportDataVisualization;
        v67 = v82;
        v68 = v82;
        v69 = v63;
        v70 = v60;
        v71 = 18;
      }

      else
      {

        v65 = &OBJC_IVAR____TtC8NewsFeed32SportsKeyPlayerDataVisualization_config;
        v66 = type metadata accessor for FormatKeyPlayerDataVisualization;
        v67 = v83;
        v68 = v83;
        v69 = v63;
        v70 = v60;
        v71 = 19;
      }
    }

    else if (v62 == 3)
    {

      v65 = &OBJC_IVAR____TtC8NewsFeed31SportsBoxScoreDataVisualization_config;
      v66 = type metadata accessor for FormatBoxScoreDataVisualization;
      v67 = v79;
      v68 = v79;
      v69 = v63;
      v70 = v60;
      v71 = 16;
    }

    else
    {

      v65 = &OBJC_IVAR____TtC8NewsFeed32SportsLineScoreDataVisualization_config;
      v66 = type metadata accessor for FormatLineScoreDataVisualization;
      v67 = v81;
      v68 = v81;
      v69 = v63;
      v70 = v60;
      v71 = 17;
    }

    sub_1D6E82CE0(v64, v69, v65, v66, v71, v68);
LABEL_46:

    sub_1D5D1EC78(v91, type metadata accessor for FormatContentSlotItemObject.Resolved);
    sub_1D5D1EC78(v49, type metadata accessor for FormatWebEmbed.Resolved);
    if (v70)
    {
    }

    goto LABEL_35;
  }

  v73 = v89;
  v72 = v90;
  if (!v62)
  {

    v76 = v77;
    sub_1D6E81EFC(v75, v72, v77);

    sub_1D5D1EC78(v91, type metadata accessor for FormatContentSlotItemObject.Resolved);
    sub_1D5D1EC78(v49, type metadata accessor for FormatWebEmbed.Resolved);
    if (!v60)
    {
      sub_1D5D53B50(v76, v87, type metadata accessor for FormatContentSlotItemObject);
    }
  }

  if (v62 != 1)
  {

    v67 = v78;
    v70 = v60;
    sub_1D6E82400(v73, v72, v78);
    goto LABEL_46;
  }

  v67 = v80;
  sub_1D6E828D0(v74, v72, v80);

  sub_1D5D1EC78(v91, type metadata accessor for FormatContentSlotItemObject.Resolved);
  sub_1D5D1EC78(v49, type metadata accessor for FormatWebEmbed.Resolved);
  if (!v60)
  {
LABEL_35:
    sub_1D5D53B50(v67, v87, type metadata accessor for FormatContentSlotItemObject);
  }
}

unint64_t sub_1D6E7FD50()
{
  result = qword_1EC897418;
  if (!qword_1EC897418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC897418);
  }

  return result;
}

uint64_t sub_1D6E7FDA4(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1D5B62E3C(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1D6E7FE24(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1D5B62E3C(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1D6E7FE94@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = type metadata accessor for FormatOption();
  v50 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = (&v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D5B62E3C(0, &qword_1EDF3FCB0, type metadata accessor for FormatArticleOverrides, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v46 - v14;
  v16 = type metadata accessor for FormatArticleOverrides();
  v17 = *(v16 - 8);
  *&v19 = MEMORY[0x1EEE9AC00](v16, v18).n128_u64[0];
  v21 = &v46 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = [a1 articleID];
  v23 = sub_1D726207C();
  v51 = v24;
  v52 = v23;

  v25 = swift_unknownObjectRetain();
  sub_1D6D22B0C(v25, v15);
  v26 = *(v17 + 48);
  if (v26(v15, 1, v16) == 1)
  {
    if (qword_1EDF28AC8 != -1)
    {
      swift_once();
    }

    v27 = __swift_project_value_buffer(v16, qword_1EDF28AD0);
    sub_1D5CEC808(v27, v21, type metadata accessor for FormatArticleOverrides);
    if (v26(v15, 1, v16) != 1)
    {
      sub_1D6E7FE24(v15, &qword_1EDF3FCB0, type metadata accessor for FormatArticleOverrides);
    }
  }

  else
  {
    sub_1D5D53B50(v15, v21, type metadata accessor for FormatArticleOverrides);
  }

  v54 = a2;
  sub_1D6E838DC();
  sub_1D6E839A4();

  v28 = sub_1D72623CC();

  sub_1D6B986A4(v28);
  v53 = v29;
  v30 = *(v29 + 16);
  if (v30)
  {
    v47 = v21;
    v48 = a4;
    v49 = a3;
    v54 = MEMORY[0x1E69E7CC0];
    sub_1D69988B8(0, v30, 0);
    v31 = v54;
    v32 = v53 + ((*(v50 + 80) + 32) & ~*(v50 + 80));
    v33 = *(v50 + 72);
    do
    {
      sub_1D5CEC808(v32, v11, type metadata accessor for FormatOption);
      v34 = *v11;
      v35 = v11[1];
      v36 = v11[2];

      sub_1D5D1EC78(v11, type metadata accessor for FormatOption);
      v54 = v31;
      v38 = *(v31 + 16);
      v37 = *(v31 + 24);
      if (v38 >= v37 >> 1)
      {
        sub_1D69988B8((v37 > 1), v38 + 1, 1);
        v31 = v54;
      }

      *(v31 + 16) = v38 + 1;
      v39 = (v31 + 24 * v38);
      v39[4] = v34;
      v39[5] = v35;
      v39[6] = v36;
      v32 += v33;
      --v30;
    }

    while (v30);

    a4 = v48;
    a3 = v49;
    v21 = v47;
  }

  else
  {

    v31 = MEMORY[0x1E69E7CC0];
  }

  type metadata accessor for FormatArticle();
  v40 = swift_allocObject();
  v41 = v51;
  *(v40 + 16) = v52;
  *(v40 + 24) = v41;
  v42 = OBJC_IVAR____TtC8NewsFeed13FormatArticle__overrides;
  swift_beginAccess();
  sub_1D5D53B50(v21, v40 + v42, type metadata accessor for FormatArticleOverrides);
  v43 = OBJC_IVAR____TtC8NewsFeed13FormatArticle__selectors;
  swift_beginAccess();
  *(v40 + v43) = a3;
  v44 = OBJC_IVAR____TtC8NewsFeed13FormatArticle__properties;
  swift_beginAccess();
  *(v40 + v44) = v31;
  *(v40 + OBJC_IVAR____TtC8NewsFeed13FormatArticle_alternate) = 0;
  *a4 = v40;
  type metadata accessor for FormatContentSlotItemObject();
  swift_storeEnumTagMultiPayload();
}

uint64_t sub_1D6E803C0@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = type metadata accessor for FormatOption();
  v9 = *(v8 - 8);
  *&v11 = MEMORY[0x1EEE9AC00](v8 - 8, v10).n128_u64[0];
  v13 = (&v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = [a1 identifier];
  v15 = sub_1D726207C();
  v38 = v16;

  v39 = a2;
  sub_1D6E838DC();
  sub_1D6E839A4();

  v17 = sub_1D72623CC();

  sub_1D6B986A4(v17);
  v19 = v18;
  v20 = *(v18 + 16);
  if (v20)
  {
    v35 = v15;
    v36 = a4;
    v37 = a3;
    v39 = MEMORY[0x1E69E7CC0];
    sub_1D69988B8(0, v20, 0);
    v21 = v39;
    v22 = *(v9 + 80);
    v34 = v19;
    v23 = v19 + ((v22 + 32) & ~v22);
    v24 = *(v9 + 72);
    do
    {
      sub_1D5CEC808(v23, v13, type metadata accessor for FormatOption);
      v25 = *v13;
      v26 = v13[1];
      v27 = v13[2];

      sub_1D5D1EC78(v13, type metadata accessor for FormatOption);
      v39 = v21;
      v29 = *(v21 + 16);
      v28 = *(v21 + 24);
      if (v29 >= v28 >> 1)
      {
        sub_1D69988B8((v28 > 1), v29 + 1, 1);
        v21 = v39;
      }

      *(v21 + 16) = v29 + 1;
      v30 = (v21 + 24 * v29);
      v30[4] = v25;
      v30[5] = v26;
      v30[6] = v27;
      v23 += v24;
      --v20;
    }

    while (v20);

    a4 = v36;
    a3 = v37;
    v15 = v35;
  }

  else
  {

    v21 = MEMORY[0x1E69E7CC0];
  }

  type metadata accessor for FormatIssue();
  v31 = swift_allocObject();
  v32 = v38;
  *(v31 + 16) = v15;
  *(v31 + 24) = v32;
  *(v31 + 32) = 0u;
  *(v31 + 48) = 0u;
  swift_beginAccess();
  *(v31 + 64) = a3;
  swift_beginAccess();
  *(v31 + 72) = v21;
  *a4 = v31;
  type metadata accessor for FormatContentSlotItemObject();
  swift_storeEnumTagMultiPayload();
}

uint64_t sub_1D6E806C4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = type metadata accessor for FormatOption();
  v9 = *(v8 - 8);
  *&v11 = MEMORY[0x1EEE9AC00](v8 - 8, v10).n128_u64[0];
  v13 = (&v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = [a1 identifier];
  v15 = sub_1D726207C();
  v38 = v16;

  v39 = a2;
  sub_1D6E838DC();
  sub_1D6E839A4();

  v17 = sub_1D72623CC();

  sub_1D6B986A4(v17);
  v19 = v18;
  v20 = *(v18 + 16);
  if (v20)
  {
    v35 = v15;
    v36 = a4;
    v37 = a3;
    v39 = MEMORY[0x1E69E7CC0];
    sub_1D69988B8(0, v20, 0);
    v21 = v39;
    v22 = *(v9 + 80);
    v34 = v19;
    v23 = v19 + ((v22 + 32) & ~v22);
    v24 = *(v9 + 72);
    do
    {
      sub_1D5CEC808(v23, v13, type metadata accessor for FormatOption);
      v25 = *v13;
      v26 = v13[1];
      v27 = v13[2];

      sub_1D5D1EC78(v13, type metadata accessor for FormatOption);
      v39 = v21;
      v29 = *(v21 + 16);
      v28 = *(v21 + 24);
      if (v29 >= v28 >> 1)
      {
        sub_1D69988B8((v28 > 1), v29 + 1, 1);
        v21 = v39;
      }

      *(v21 + 16) = v29 + 1;
      v30 = (v21 + 24 * v29);
      v30[4] = v25;
      v30[5] = v26;
      v30[6] = v27;
      v23 += v24;
      --v20;
    }

    while (v20);

    a4 = v36;
    a3 = v37;
    v15 = v35;
  }

  else
  {

    v21 = MEMORY[0x1E69E7CC0];
  }

  type metadata accessor for FormatTag();
  v31 = swift_allocObject();
  v32 = v38;
  v31[2] = v15;
  v31[3] = v32;
  swift_beginAccess();
  v31[4] = a3;
  swift_beginAccess();
  v31[5] = v21;
  *a4 = v31;
  type metadata accessor for FormatContentSlotItemObject();
  swift_storeEnumTagMultiPayload();
}

uint64_t sub_1D6E809C0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v46 = a3;
  v7 = type metadata accessor for FormatOption();
  v41 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = (v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D5B62E3C(0, &qword_1EDF40B30, type metadata accessor for FormatCustomItem.Action, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v14 = v38 - v13;
  v15 = a1[1];
  v44 = *a1;
  v16 = a1[3];
  v42 = a1[2];
  v17 = type metadata accessor for FormatCustomItem.Resolved();
  sub_1D6E7FDA4(a1 + *(v17 + 24), v14, &qword_1EDF40B30, type metadata accessor for FormatCustomItem.Action);
  v18 = *(a1 + *(v17 + 28));
  v47 = a2;
  v45 = v15;

  v43 = v16;

  sub_1D5D505F0(v18);
  sub_1D6E838DC();
  sub_1D6E839A4();

  v19 = sub_1D72623CC();

  sub_1D6B986A4(v19);
  v21 = v20;

  v22 = *(v21 + 16);
  if (v22)
  {
    v39 = v14;
    v40 = a4;
    v47 = MEMORY[0x1E69E7CC0];
    sub_1D69988B8(0, v22, 0);
    v23 = v47;
    v24 = *(v41 + 80);
    v38[1] = v21;
    v25 = v21 + ((v24 + 32) & ~v24);
    v26 = *(v41 + 72);
    do
    {
      sub_1D5CEC808(v25, v10, type metadata accessor for FormatOption);
      v27 = *v10;
      v28 = v10[1];
      v29 = v10[2];

      sub_1D5D1EC78(v10, type metadata accessor for FormatOption);
      v47 = v23;
      v31 = *(v23 + 16);
      v30 = *(v23 + 24);
      if (v31 >= v30 >> 1)
      {
        sub_1D69988B8((v30 > 1), v31 + 1, 1);
        v23 = v47;
      }

      *(v23 + 16) = v31 + 1;
      v32 = (v23 + 24 * v31);
      v32[4] = v27;
      v32[5] = v28;
      v32[6] = v29;
      v25 += v26;
      --v22;
    }

    while (v22);

    v33 = v46;
    v14 = v39;
    a4 = v40;
  }

  else
  {

    v23 = MEMORY[0x1E69E7CC0];
    v33 = v46;
  }

  v34 = v45;
  *a4 = v44;
  a4[1] = v34;
  v35 = v43;
  a4[2] = v42;
  a4[3] = v35;
  v36 = type metadata accessor for FormatCustomItem();
  sub_1D6E839FC(v14, a4 + v36[6]);
  *(a4 + v36[7]) = v23;
  *(a4 + v36[8]) = v33;
  type metadata accessor for FormatContentSlotItemObject();
  swift_storeEnumTagMultiPayload();
}

uint64_t sub_1D6E80D68@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = type metadata accessor for FormatOption();
  v9 = *(v8 - 8);
  *&v11 = MEMORY[0x1EEE9AC00](v8 - 8, v10).n128_u64[0];
  v13 = (v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = [a1 identifier];
  v15 = sub_1D726207C();
  v38 = v16;

  v39 = a2;
  sub_1D6E838DC();
  sub_1D6E839A4();

  v17 = sub_1D72623CC();

  sub_1D6B986A4(v17);
  v19 = v18;
  v20 = *(v18 + 16);
  if (v20)
  {
    v35 = v15;
    v36 = a4;
    v37 = a3;
    v39 = MEMORY[0x1E69E7CC0];
    sub_1D69988B8(0, v20, 0);
    v21 = v39;
    v22 = *(v9 + 80);
    v34[1] = v19;
    v23 = v19 + ((v22 + 32) & ~v22);
    v24 = *(v9 + 72);
    do
    {
      sub_1D5CEC808(v23, v13, type metadata accessor for FormatOption);
      v25 = *v13;
      v26 = v13[1];
      v27 = v13[2];

      sub_1D5D1EC78(v13, type metadata accessor for FormatOption);
      v39 = v21;
      v29 = *(v21 + 16);
      v28 = *(v21 + 24);
      if (v29 >= v28 >> 1)
      {
        sub_1D69988B8((v28 > 1), v29 + 1, 1);
        v21 = v39;
      }

      *(v21 + 16) = v29 + 1;
      v30 = (v21 + 24 * v29);
      v30[4] = v25;
      v30[5] = v26;
      v30[6] = v27;
      v23 += v24;
      --v20;
    }

    while (v20);

    a4 = v36;
    a3 = v37;
    v15 = v35;
  }

  else
  {

    v21 = MEMORY[0x1E69E7CC0];
  }

  type metadata accessor for FormatPuzzle();
  v31 = swift_allocObject();
  v32 = v38;
  *(v31 + 16) = v15;
  *(v31 + 24) = v32;
  swift_beginAccess();
  *(v31 + 176) = a3;
  swift_beginAccess();
  *(v31 + 184) = v21;
  swift_beginAccess();
  *(v31 + 144) = 0u;
  *(v31 + 160) = 0u;
  *(v31 + 112) = 0u;
  *(v31 + 128) = 0u;
  *(v31 + 80) = 0u;
  *(v31 + 96) = 0u;
  *(v31 + 48) = 0u;
  *(v31 + 64) = 0u;
  *(v31 + 32) = 0u;
  *a4 = v31;
  type metadata accessor for FormatContentSlotItemObject();
  swift_storeEnumTagMultiPayload();
}

uint64_t sub_1D6E81090@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = type metadata accessor for FormatOption();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8 - 8, v10);
  v12 = (v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v47 = type metadata accessor for FormatPuzzleType.Overrides(0);
  *&v14 = MEMORY[0x1EEE9AC00](v47, v13).n128_u64[0];
  v16 = (v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = [a1 identifier];
  v18 = sub_1D726207C();
  v48 = v19;

  v49 = a2;
  sub_1D6E838DC();
  sub_1D6E839A4();

  v20 = sub_1D72623CC();

  sub_1D6B986A4(v20);
  v22 = v21;
  v23 = *(v21 + 16);
  if (v23)
  {
    v43 = v18;
    v44 = v16;
    v45 = a4;
    v46 = a3;
    v49 = MEMORY[0x1E69E7CC0];
    sub_1D69988B8(0, v23, 0);
    v24 = v49;
    v25 = *(v9 + 80);
    v42[1] = v22;
    v26 = v22 + ((v25 + 32) & ~v25);
    v27 = *(v9 + 72);
    do
    {
      sub_1D5CEC808(v26, v12, type metadata accessor for FormatOption);
      v28 = *v12;
      v29 = v12[1];
      v30 = v12[2];

      sub_1D5D1EC78(v12, type metadata accessor for FormatOption);
      v49 = v24;
      v32 = *(v24 + 16);
      v31 = *(v24 + 24);
      if (v32 >= v31 >> 1)
      {
        sub_1D69988B8((v31 > 1), v32 + 1, 1);
        v24 = v49;
      }

      *(v24 + 16) = v32 + 1;
      v33 = (v24 + 24 * v32);
      v33[4] = v28;
      v33[5] = v29;
      v33[6] = v30;
      v26 += v27;
      --v23;
    }

    while (v23);

    a4 = v45;
    a3 = v46;
    v18 = v43;
    v16 = v44;
  }

  else
  {

    v24 = MEMORY[0x1E69E7CC0];
  }

  v34 = *(v47 + 24);
  v35 = sub_1D72585BC();
  (*(*(v35 - 8) + 56))(&v16->i8[v34], 1, 1, v35);
  *v16 = vdupq_n_s64(0xF000000000000007);
  type metadata accessor for FormatPuzzleType(0);
  v36 = swift_allocObject();
  v37 = v48;
  *(v36 + 16) = v18;
  *(v36 + 24) = v37;
  v38 = OBJC_IVAR____TtC8NewsFeed16FormatPuzzleType__selectors;
  swift_beginAccess();
  *(v36 + v38) = a3;
  v39 = OBJC_IVAR____TtC8NewsFeed16FormatPuzzleType__properties;
  swift_beginAccess();
  *(v36 + v39) = v24;
  v40 = OBJC_IVAR____TtC8NewsFeed16FormatPuzzleType__overrides;
  swift_beginAccess();
  sub_1D5D53B50(v16, v36 + v40, type metadata accessor for FormatPuzzleType.Overrides);
  *a4 = v36;
  type metadata accessor for FormatContentSlotItemObject();
  swift_storeEnumTagMultiPayload();
}

uint64_t sub_1D6E81470@<X0>(id *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v50 = a4;
  v51 = a3;
  v6 = type metadata accessor for FormatOption();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8, v8);
  v10 = (&v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = type metadata accessor for FormatPuzzleType.Overrides(0);
  v12 = v11 - 8;
  *&v14 = MEMORY[0x1EEE9AC00](v11, v13).n128_u64[0];
  v16 = (&v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = [*a1 identifier];
  v18 = sub_1D726207C();
  v20 = v19;

  v21 = *(v12 + 32);
  v22 = sub_1D72585BC();
  (*(*(v22 - 8) + 56))(&v16->i8[v21], 1, 1, v22);
  *v16 = vdupq_n_s64(0xF000000000000007);
  type metadata accessor for FormatPuzzleType(0);
  v23 = swift_allocObject();
  *(v23 + 16) = v18;
  *(v23 + 24) = v20;
  v24 = OBJC_IVAR____TtC8NewsFeed16FormatPuzzleType__selectors;
  swift_beginAccess();
  *(v23 + v24) = MEMORY[0x1E69E7CD0];
  v25 = OBJC_IVAR____TtC8NewsFeed16FormatPuzzleType__properties;
  swift_beginAccess();
  v26 = MEMORY[0x1E69E7CC0];
  *(v23 + v25) = MEMORY[0x1E69E7CC0];
  v27 = OBJC_IVAR____TtC8NewsFeed16FormatPuzzleType__overrides;
  swift_beginAccess();
  sub_1D5D53B50(v16, v23 + v27, type metadata accessor for FormatPuzzleType.Overrides);
  type metadata accessor for PuzzleStatistic();
  PuzzleStatisticCategory.statisticType.getter(&v54);
  if (v54 <= 4u)
  {
    if (v54 > 1u)
    {
      if (v54 == 2)
      {
        v28 = 0x5373656C7A7A7570;
      }

      else
      {
        if (v54 != 3)
        {
          v30 = 0xE900000000000065;
          v28 = 0x74615265766C6F73;
          goto LABEL_25;
        }

        v28 = 0x5374636566726570;
      }

      v30 = 0xED00006465766C6FLL;
      goto LABEL_25;
    }

    v30 = 0xED00006B61657274;
    if (v54)
    {
      v28 = 0x53746E6572727563;
    }

    else
    {
      v28 = 0x53747365676E6F6CLL;
    }
  }

  else
  {
    if (v54 <= 7u)
    {
      if (v54 == 5)
      {
        v28 = 0xD00000000000001CLL;
        v29 = "fastestTimeByDifficultyLevel";
        goto LABEL_18;
      }

      if (v54 == 6)
      {
        v28 = 0xD00000000000001CLL;
        v29 = "averageTimeByDifficultyLevel";
LABEL_18:
        v30 = (v29 - 32) | 0x8000000000000000;
        goto LABEL_25;
      }

      v31 = "highestScoreByDifficultyLevel";
      goto LABEL_23;
    }

    if (v54 == 8)
    {
      v31 = "averageScoreByDifficultyLevel";
LABEL_23:
      v30 = (v31 - 32) | 0x8000000000000000;
      v28 = 0xD00000000000001DLL;
      goto LABEL_25;
    }

    if (v54 == 9)
    {
      v30 = 0xEC00000073746174;
      v28 = 0x53646570756F7267;
    }

    else
    {
      v30 = 0x80000001D73B7480;
      v28 = 0xD000000000000015;
    }
  }

LABEL_25:
  v53 = a2;
  sub_1D6E838DC();
  sub_1D6E839A4();

  v32 = sub_1D72623CC();

  sub_1D6B986A4(v32);
  v52 = v33;
  v34 = *(v33 + 16);
  if (v34)
  {
    v47 = v28;
    v48 = v30;
    v49 = v23;
    v53 = v26;
    sub_1D69988B8(0, v34, 0);
    v35 = v53;
    v36 = v52 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    v37 = *(v7 + 72);
    do
    {
      sub_1D5CEC808(v36, v10, type metadata accessor for FormatOption);
      v38 = *v10;
      v39 = v10[1];
      v40 = v10[2];

      sub_1D5D1EC78(v10, type metadata accessor for FormatOption);
      v53 = v35;
      v42 = *(v35 + 16);
      v41 = *(v35 + 24);
      if (v42 >= v41 >> 1)
      {
        sub_1D69988B8((v41 > 1), v42 + 1, 1);
        v35 = v53;
      }

      *(v35 + 16) = v42 + 1;
      v43 = (v35 + 24 * v42);
      v43[4] = v38;
      v43[5] = v39;
      v43[6] = v40;
      v36 += v37;
      --v34;
    }

    while (v34);

    v30 = v48;
    v23 = v49;
    v28 = v47;
  }

  else
  {

    v35 = MEMORY[0x1E69E7CC0];
  }

  v45 = v50;
  v44 = v51;
  *v50 = v23;
  v45[1] = v28;
  v45[2] = v30;
  v45[3] = v44;
  v45[4] = v35;
  type metadata accessor for FormatContentSlotItemObject();
  swift_storeEnumTagMultiPayload();
}

uint64_t sub_1D6E819E4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = type metadata accessor for FormatOption();
  v49 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = (&v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D5B62E3C(0, &qword_1EDF0DF30, type metadata accessor for FormatRecipeOverrides, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v45 - v14;
  v16 = type metadata accessor for FormatRecipeOverrides();
  v17 = *(v16 - 8);
  *&v19 = MEMORY[0x1EEE9AC00](v16, v18).n128_u64[0];
  v21 = &v45 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = [a1 identifier];
  v23 = sub_1D726207C();
  v50 = v24;
  v51 = v23;

  sub_1D6B6D1FC(a1, v15);
  v25 = *(v17 + 48);
  if (v25(v15, 1, v16) == 1)
  {
    if (qword_1EDF0DF48 != -1)
    {
      swift_once();
    }

    v26 = __swift_project_value_buffer(v16, qword_1EDF0DF50);
    sub_1D5CEC808(v26, v21, type metadata accessor for FormatRecipeOverrides);
    if (v25(v15, 1, v16) != 1)
    {
      sub_1D6E7FE24(v15, &qword_1EDF0DF30, type metadata accessor for FormatRecipeOverrides);
    }
  }

  else
  {
    sub_1D5D53B50(v15, v21, type metadata accessor for FormatRecipeOverrides);
  }

  v53 = a2;
  sub_1D6E838DC();
  sub_1D6E839A4();

  v27 = sub_1D72623CC();

  sub_1D6B986A4(v27);
  v52 = v28;
  v29 = *(v28 + 16);
  if (v29)
  {
    v46 = v21;
    v47 = a4;
    v48 = a3;
    v53 = MEMORY[0x1E69E7CC0];
    sub_1D69988B8(0, v29, 0);
    v30 = v53;
    v31 = v52 + ((*(v49 + 80) + 32) & ~*(v49 + 80));
    v32 = *(v49 + 72);
    do
    {
      sub_1D5CEC808(v31, v11, type metadata accessor for FormatOption);
      v33 = *v11;
      v34 = v11[1];
      v35 = v11[2];

      sub_1D5D1EC78(v11, type metadata accessor for FormatOption);
      v53 = v30;
      v37 = *(v30 + 16);
      v36 = *(v30 + 24);
      if (v37 >= v36 >> 1)
      {
        sub_1D69988B8((v36 > 1), v37 + 1, 1);
        v30 = v53;
      }

      *(v30 + 16) = v37 + 1;
      v38 = (v30 + 24 * v37);
      v38[4] = v33;
      v38[5] = v34;
      v38[6] = v35;
      v31 += v32;
      --v29;
    }

    while (v29);

    a4 = v47;
    a3 = v48;
    v21 = v46;
  }

  else
  {

    v30 = MEMORY[0x1E69E7CC0];
  }

  type metadata accessor for FormatRecipe();
  v39 = swift_allocObject();
  v40 = v50;
  *(v39 + 16) = v51;
  *(v39 + 24) = v40;
  v41 = OBJC_IVAR____TtC8NewsFeed12FormatRecipe__overrides;
  swift_beginAccess();
  sub_1D5D53B50(v21, v39 + v41, type metadata accessor for FormatRecipeOverrides);
  v42 = OBJC_IVAR____TtC8NewsFeed12FormatRecipe__selectors;
  swift_beginAccess();
  *(v39 + v42) = a3;
  v43 = OBJC_IVAR____TtC8NewsFeed12FormatRecipe__properties;
  swift_beginAccess();
  *(v39 + v43) = v30;
  *a4 = v39;
  type metadata accessor for FormatContentSlotItemObject();
  swift_storeEnumTagMultiPayload();
}

uint64_t sub_1D6E81EFC@<X0>(void *a1@<X0>, uint64_t a2@<X2>, void *a3@<X8>)
{
  v4 = v3;
  v8 = type metadata accessor for FormatOption();
  v9 = *(v8 - 8);
  v11 = MEMORY[0x1EEE9AC00](v8 - 8, v10);
  v13 = (v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = a1[8];
  if (v14)
  {
    v59 = a3;
    v15 = [v14 identifier];
    goto LABEL_9;
  }

  v16 = a1[4];
  if (v16 >> 62)
  {
    result = sub_1D7263BFC();
    if (result)
    {
      goto LABEL_5;
    }

LABEL_27:
    sub_1D6E7FD50();
    swift_allocError();
    *v50 = 0;
    return swift_willThrow();
  }

  result = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_27;
  }

LABEL_5:
  v59 = a3;
  if ((v16 & 0xC000000000000001) != 0)
  {
    v18 = MEMORY[0x1DA6FB460](0, v16, v11);
  }

  else
  {
    if (!*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v18 = *(v16 + 32);
    swift_unknownObjectRetain();
  }

  v15 = [v18 identifier];
  swift_unknownObjectRelease();
LABEL_9:
  v57 = sub_1D726207C();
  v58 = v19;

  v20 = a1[6];
  v56 = a1[5];
  v21 = a1 + OBJC_IVAR____TtC8NewsFeed28SportsScoreDataVisualization_config;
  if (*(a1 + OBJC_IVAR____TtC8NewsFeed28SportsScoreDataVisualization_config + 8))
  {
    v22 = *(v21 + 3);
  }

  else
  {
    v22 = MEMORY[0x1E69E7CD0];
  }

  v54 = sub_1D5D6021C(v22, a2);
  v23 = *(v21 + 1);
  v24 = MEMORY[0x1E69E7CC0];
  v55 = v20;
  if (v23)
  {
  }

  else
  {
    v25 = MEMORY[0x1E69E7CC0];
  }

  v60 = v25;

  sub_1D5D505F0(v26);
  sub_1D6E838DC();
  sub_1D6E839A4();

  v27 = sub_1D72623CC();

  sub_1D6B986A4(v27);
  v29 = v28;

  v30 = *(v29 + 16);
  if (v30)
  {
    v51[2] = v4;
    v52 = v21;
    v53 = a1;
    v60 = v24;
    sub_1D69988B8(0, v30, 0);
    v31 = v60;
    v32 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v51[1] = v29;
    v33 = v29 + v32;
    v61 = *(v9 + 72);
    do
    {
      sub_1D5CEC808(v33, v13, type metadata accessor for FormatOption);
      v34 = *v13;
      v35 = v13[1];
      v36 = v13[2];

      sub_1D5D1EC78(v13, type metadata accessor for FormatOption);
      v60 = v31;
      v38 = *(v31 + 16);
      v37 = *(v31 + 24);
      if (v38 >= v37 >> 1)
      {
        sub_1D69988B8((v37 > 1), v38 + 1, 1);
        v31 = v60;
      }

      *(v31 + 16) = v38 + 1;
      v39 = (v31 + 24 * v38);
      v39[4] = v34;
      v39[5] = v35;
      v39[6] = v36;
      v33 += v61;
      --v30;
    }

    while (v30);

    v21 = v52;
    a1 = v53;
  }

  else
  {

    v31 = MEMORY[0x1E69E7CC0];
  }

  v40 = v59;
  if (*(v21 + 1))
  {

    v42 = sub_1D60AE3B4(v41);
    v44 = v43;
  }

  else
  {
    v42 = 0;
    v44 = 0xE000000000000000;
  }

  v45 = sub_1D6E7DE88(*(a1 + OBJC_IVAR____TtC8NewsFeed28SportsScoreDataVisualization_traits));
  v46 = sub_1D62DCCF0(v45);

  type metadata accessor for FormatScoreDataVisualization();
  v47 = swift_allocObject();
  v48 = v58;
  v47[2] = v57;
  v47[3] = v48;
  v49 = v55;
  v47[4] = v56;
  v47[5] = v49;
  swift_beginAccess();
  v47[6] = v54;
  swift_beginAccess();
  v47[7] = v31;
  swift_beginAccess();
  v47[8] = v42;
  v47[9] = v44;
  swift_beginAccess();
  v47[10] = v46;
  *v40 = v47;
  type metadata accessor for FormatContentSlotItemObject();
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1D6E82400@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, void *a3@<X8>)
{
  v50 = a1;
  v51 = a3;
  v4 = type metadata accessor for FormatOption();
  v49 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = (v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D5E4CF90();
  sub_1D725BE8C();
  v8 = *(v56 + OBJC_IVAR____TtC8NewsFeed30SportsBracketDataVisualization_config + 8);
  v10 = *(v56 + OBJC_IVAR____TtC8NewsFeed30SportsBracketDataVisualization_config + 16);
  v9 = *(v56 + OBJC_IVAR____TtC8NewsFeed30SportsBracketDataVisualization_config + 24);
  v11 = *(v56 + OBJC_IVAR____TtC8NewsFeed30SportsBracketDataVisualization_config + 32);
  v12 = *(v56 + OBJC_IVAR____TtC8NewsFeed30SportsBracketDataVisualization_config + 40);
  v52 = *(v56 + OBJC_IVAR____TtC8NewsFeed30SportsBracketDataVisualization_config);
  v54 = v9;
  v55 = v11;
  sub_1D5F8B638(v52, v8);

  v53 = v8;
  if (!v8)
  {
    goto LABEL_13;
  }

  sub_1D725BE8C();
  v13 = *(v56 + 64);
  swift_unknownObjectRetain();

  if (!v13)
  {
    sub_1D725BE8C();
    v13 = *(v56 + 56);
    swift_unknownObjectRetain();

    if (!v13)
    {
      sub_1D5F8BBC8(v52, v53);
LABEL_13:
      sub_1D6E7FD50();
      swift_allocError();
      *v40 = 0;
      return swift_willThrow();
    }
  }

  v48 = v10;
  v14 = [v13 identifier];
  swift_unknownObjectRelease();
  v46 = sub_1D726207C();
  v47 = v15;

  v16 = sub_1D60AE3B4(v12);
  v44 = v17;
  v45 = v16;

  v19 = sub_1D5D6021C(v18, a2);
  v56 = v55;

  sub_1D5D505F0(v20);
  sub_1D6E838DC();
  sub_1D6E839A4();

  v21 = v57;
  v22 = sub_1D72623CC();
  v50 = v21;

  sub_1D6B986A4(v22);
  v24 = v23;

  v25 = *(v24 + 16);
  if (v25)
  {
    v42 = v19;
    v43 = v12;
    v56 = MEMORY[0x1E69E7CC0];
    sub_1D69988B8(0, v25, 0);
    v26 = v56;
    v27 = (*(v49 + 80) + 32) & ~*(v49 + 80);
    v41[1] = v24;
    v28 = v24 + v27;
    v57 = *(v49 + 72);
    do
    {
      sub_1D5CEC808(v28, v7, type metadata accessor for FormatOption);
      v30 = *v7;
      v29 = v7[1];
      v31 = v7[2];

      sub_1D5D1EC78(v7, type metadata accessor for FormatOption);
      v56 = v26;
      v33 = *(v26 + 16);
      v32 = *(v26 + 24);
      if (v33 >= v32 >> 1)
      {
        sub_1D69988B8((v32 > 1), v33 + 1, 1);
        v26 = v56;
      }

      *(v26 + 16) = v33 + 1;
      v34 = (v26 + 24 * v33);
      v34[4] = v30;
      v34[5] = v29;
      v34[6] = v31;
      v28 += v57;
      --v25;
    }

    while (v25);

    sub_1D5F8BBC8(v52, v53);
    v35 = v51;
    v19 = v42;
  }

  else
  {

    sub_1D5F8BBC8(v52, v53);
    v26 = MEMORY[0x1E69E7CC0];
    v35 = v51;
  }

  type metadata accessor for FormatBracketDataVisualization();
  v36 = swift_allocObject();
  v37 = v47;
  v36[2] = v46;
  v36[3] = v37;
  swift_beginAccess();
  v38 = v44;
  v36[4] = v45;
  v36[5] = v38;
  swift_beginAccess();
  v36[6] = v19;
  swift_beginAccess();
  v36[7] = v26;
  *v35 = v36;
  type metadata accessor for FormatContentSlotItemObject();
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1D6E828D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, void *a3@<X8>)
{
  v4 = v3;
  v8 = type metadata accessor for FormatOption();
  v9 = *(v8 - 8);
  *&v11 = MEMORY[0x1EEE9AC00](v8 - 8, v10).n128_u64[0];
  v50 = v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a1 + 56);
  if (v13)
  {
    v14 = [v13 identifier];
    v15 = sub_1D726207C();
    v49 = v16;

    v17 = a1 + OBJC_IVAR____TtC8NewsFeed31SportsStandingDataVisualization_config;
    if (*(a1 + OBJC_IVAR____TtC8NewsFeed31SportsStandingDataVisualization_config + 8))
    {

      v19 = sub_1D60AE3B4(v18);
      v47 = v20;
      v48 = v19;

      if (*(v17 + 8))
      {
        v21 = *(v17 + 24);
      }

      else
      {
        v21 = MEMORY[0x1E69E7CD0];
      }
    }

    else
    {
      v48 = 0;
      v21 = MEMORY[0x1E69E7CD0];
      v47 = 0xE000000000000000;
    }

    v46 = sub_1D5D6021C(v21, a2);
    v24 = MEMORY[0x1E69E7CC0];
    if (*(v17 + 8))
    {
    }

    else
    {
      v25 = MEMORY[0x1E69E7CC0];
    }

    v51 = v25;

    sub_1D5D505F0(v26);
    sub_1D6E838DC();
    sub_1D6E839A4();

    v27 = sub_1D72623CC();

    sub_1D6B986A4(v27);
    v29 = v28;

    v30 = *(v29 + 16);
    if (v30)
    {
      v43[1] = v4;
      v44 = v15;
      v45 = a3;
      v51 = v24;
      sub_1D69988B8(0, v30, 0);
      v24 = v51;
      v31 = *(v9 + 80);
      v43[0] = v29;
      v32 = v29 + ((v31 + 32) & ~v31);
      v52 = *(v9 + 72);
      v33 = v50;
      do
      {
        sub_1D5CEC808(v32, v33, type metadata accessor for FormatOption);
        v34 = *v33;
        v35 = v33[1];
        v36 = v33[2];

        sub_1D5D1EC78(v33, type metadata accessor for FormatOption);
        v51 = v24;
        v38 = *(v24 + 16);
        v37 = *(v24 + 24);
        if (v38 >= v37 >> 1)
        {
          sub_1D69988B8((v37 > 1), v38 + 1, 1);
          v33 = v50;
          v24 = v51;
        }

        *(v24 + 16) = v38 + 1;
        v39 = (v24 + 24 * v38);
        v39[4] = v34;
        v39[5] = v35;
        v39[6] = v36;
        v32 += v52;
        --v30;
      }

      while (v30);

      v15 = v44;
      a3 = v45;
    }

    else
    {
    }

    type metadata accessor for FormatStandingDataVisualization();
    v40 = swift_allocObject();
    v41 = v49;
    v40[2] = v15;
    v40[3] = v41;
    swift_beginAccess();
    v42 = v47;
    v40[4] = v48;
    v40[5] = v42;
    swift_beginAccess();
    v40[6] = v46;
    swift_beginAccess();
    v40[7] = v24;
    *a3 = v40;
    type metadata accessor for FormatContentSlotItemObject();
    return swift_storeEnumTagMultiPayload();
  }

  else
  {
    sub_1D6E7FD50();
    swift_allocError();
    *v22 = 0;
    return swift_willThrow();
  }
}

uint64_t sub_1D6E82CE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, void *a3@<X3>, void (*a4)(void)@<X4>, int a5@<W5>, void *a6@<X8>)
{
  v10 = v6;
  v14 = type metadata accessor for FormatOption() - 8;
  MEMORY[0x1EEE9AC00](v14, v15);
  v18 = (v56 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = (a1 + *a3);
  v20 = v19[1];
  v21 = v19[2];
  if (v20)
  {
    v22 = v21 == 0;
  }

  else
  {
    v22 = 1;
  }

  if (v22)
  {
    sub_1D6E7FD50();
    swift_allocError();
    *v23 = 0;
    return swift_willThrow();
  }

  else
  {
    v72 = v16;
    v68 = a4;
    v69 = a6;
    v70 = a5;
    v65 = *v19;
    v26 = v19[3];
    v25 = v19[4];
    v27 = v19[5];
    v67 = v20;

    swift_unknownObjectRetain();

    v63 = v27;

    v66 = v21;
    v28 = [v21 identifier];
    v29 = sub_1D726207C();
    v60 = v30;
    v61 = v29;

    v31 = [*(a1 + 48) identifier];
    v32 = sub_1D726207C();
    v59 = v33;

    v64 = v26;
    v58 = sub_1D5D6021C(v34, a2);
    v71 = v25;
    v62 = v25;

    sub_1D5D505F0(v35);
    sub_1D6E838DC();
    sub_1D6E839A4();

    v36 = sub_1D72623CC();

    sub_1D6B986A4(v36);
    v38 = v37;

    v39 = *(v38 + 16);
    if (v39)
    {
      v56[1] = v10;
      v57 = v32;
      v71 = MEMORY[0x1E69E7CC0];
      sub_1D69988B8(0, v39, 0);
      v40 = v71;
      v41 = (*(v72 + 80) + 32) & ~*(v72 + 80);
      v56[0] = v38;
      v42 = v38 + v41;
      v72 = *(v72 + 72);
      do
      {
        sub_1D5CEC808(v42, v18, type metadata accessor for FormatOption);
        v44 = *v18;
        v43 = v18[1];
        v45 = v18[2];

        sub_1D5D1EC78(v18, type metadata accessor for FormatOption);
        v71 = v40;
        v47 = *(v40 + 16);
        v46 = *(v40 + 24);
        if (v47 >= v46 >> 1)
        {
          sub_1D69988B8((v46 > 1), v47 + 1, 1);
          v40 = v71;
        }

        *(v40 + 16) = v47 + 1;
        v48 = (v40 + 24 * v47);
        v48[4] = v44;
        v48[5] = v43;
        v48[6] = v45;
        v42 += v72;
        --v39;
      }

      while (v39);

      v49 = v65;
      v32 = v57;
    }

    else
    {

      v40 = MEMORY[0x1E69E7CC0];
      v49 = v65;
    }

    v50 = sub_1D60AE3B4(v63);
    v52 = v51;
    sub_1D5F8BBC8(v49, v67);
    v68(0);
    v53 = swift_allocObject();
    v54 = v59;
    v53[2] = v32;
    v53[3] = v54;
    v55 = v60;
    v53[4] = v61;
    v53[5] = v55;
    swift_beginAccess();
    v53[6] = v58;
    swift_beginAccess();
    v53[7] = v40;
    swift_beginAccess();
    v53[8] = v50;
    v53[9] = v52;
    *v69 = v53;
    type metadata accessor for FormatContentSlotItemObject();
    return swift_storeEnumTagMultiPayload();
  }
}

uint64_t sub_1D6E83174@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v57 = a3;
  v58 = a4;
  v6 = type metadata accessor for FormatOption();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8, v8);
  v10 = (&v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D5B62E3C(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v55 = &v46 - v13;
  v56 = sub_1D72585BC();
  v54 = *(v56 - 8);
  MEMORY[0x1EEE9AC00](v56, v14);
  v53 = &v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = a2;
  sub_1D6E838DC();
  sub_1D6E839A4();

  v16 = sub_1D72623CC();

  sub_1D6B986A4(v16);
  v59 = v17;
  v18 = *(v17 + 16);
  if (v18)
  {
    v52 = a1;
    v60 = MEMORY[0x1E69E7CC0];
    sub_1D69988B8(0, v18, 0);
    v19 = v60;
    v20 = v59 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    v21 = *(v7 + 72);
    do
    {
      sub_1D5CEC808(v20, v10, type metadata accessor for FormatOption);
      v22 = *v10;
      v23 = v10[1];
      v24 = v10[2];

      sub_1D5D1EC78(v10, type metadata accessor for FormatOption);
      v60 = v19;
      v26 = *(v19 + 16);
      v25 = *(v19 + 24);
      if (v26 >= v25 >> 1)
      {
        sub_1D69988B8((v25 > 1), v26 + 1, 1);
        v19 = v60;
      }

      *(v19 + 16) = v26 + 1;
      v27 = (v19 + 24 * v26);
      v27[4] = v22;
      v27[5] = v23;
      v27[6] = v24;
      v20 += v21;
      --v18;
    }

    while (v18);

    a1 = v52;
  }

  else
  {

    v19 = MEMORY[0x1E69E7CC0];
  }

  v28 = type metadata accessor for FeedWebEmbed();
  v29 = v28[8];
  v31 = v53;
  v30 = v54;
  v49 = *(v54 + 16);
  v32 = v56;
  v49(v53, a1 + v29, v56);
  v33 = *(a1 + 48);
  v50 = *(a1 + 40);
  v34 = v28[9];
  v47 = MEMORY[0x1E6968FB0];
  v35 = v55;
  sub_1D6E7FDA4(a1 + v34, v55, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);

  v46 = sub_1D6E8365C(a1);
  v48 = *(a1 + v28[14]);
  v36 = v57;
  v59 = sub_1D5EEC8D4(v19, v57);
  v52 = v37;
  v38 = type metadata accessor for FormatWebEmbed();
  v39 = v58;
  v51 = (v58 + v38[13]);
  v49(v58 + v38[5], v31, v32);
  *v39 = v50;
  v39[1] = v33;
  v40 = v47;
  sub_1D6E7FDA4(v35, v39 + v38[6], &qword_1EDF45B40, v47);
  *(v39 + v38[7]) = v46;
  v41 = (v39 + v38[8]);
  *v41 = 0;
  v41[1] = 0;
  v42 = (v39 + v38[9]);
  *v42 = 0;
  v42[1] = 0;
  *(v39 + v38[10]) = v48;
  *(v39 + v38[11]) = v36;

  sub_1D6E7FE24(v35, &qword_1EDF45B40, v40);
  (*(v30 + 8))(v31, v32);
  *(v39 + v38[12]) = v19;
  v43 = v51;
  v44 = v52;
  *v51 = v59;
  v43[1] = v44;
  type metadata accessor for FormatContentSlotItemObject();
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1D6E8365C(uint64_t a1)
{
  v2 = type metadata accessor for FormatContentSlotItemObject();
  MEMORY[0x1EEE9AC00](v2, v3);
  v5 = (&v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D5B62E3C(0, qword_1EDF42030, type metadata accessor for FeedHeadline, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v17 - v8;
  v10 = type metadata accessor for FeedHeadline(0);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = (&v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = type metadata accessor for FeedWebEmbed();
  sub_1D6E7FDA4(a1 + *(v15 + 48), v9, qword_1EDF42030, type metadata accessor for FeedHeadline);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_1D6E7FE24(v9, qword_1EDF42030, type metadata accessor for FeedHeadline);
    return 0;
  }

  else
  {
    sub_1D5D53B50(v9, v14, type metadata accessor for FeedHeadline);
    sub_1D6E7FE94(v14[5], MEMORY[0x1E69E7CC0], MEMORY[0x1E69E7CD0], v5);
    sub_1D5D1EC78(v14, type metadata accessor for FeedHeadline);
    if (swift_getEnumCaseMultiPayload())
    {
      sub_1D5D1EC78(v5, type metadata accessor for FormatContentSlotItemObject);
      return 0;
    }

    else
    {
      return *v5;
    }
  }
}

void sub_1D6E838DC()
{
  if (!qword_1EC897420)
  {
    sub_1D5B62E3C(255, &qword_1EDF3C920, type metadata accessor for FormatOption, MEMORY[0x1E69E62F8]);
    sub_1D6E83A90(&qword_1EC897428, &qword_1EDF3C920, type metadata accessor for FormatOption);
    v0 = sub_1D72640CC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC897420);
    }
  }
}

unint64_t sub_1D6E839A4()
{
  result = qword_1EC897430;
  if (!qword_1EC897430)
  {
    sub_1D6E838DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC897430);
  }

  return result;
}

uint64_t sub_1D6E839FC(uint64_t a1, uint64_t a2)
{
  sub_1D5B62E3C(0, &qword_1EDF40B30, type metadata accessor for FormatCustomItem.Action, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D6E83A90(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_1D5B62E3C(255, a2, a3, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D6E83AFC()
{
  result = qword_1EC897438;
  if (!qword_1EC897438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC897438);
  }

  return result;
}

uint64_t type metadata accessor for DebugFormatCompilerResultEntry()
{
  result = qword_1EC897440;
  if (!qword_1EC897440)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D6E83BC4()
{
  type metadata accessor for FormatPackageInventory();
  if (v0 <= 0x3F)
  {
    type metadata accessor for DebugFormatCompilerResultOutput();
    if (v1 <= 0x3F)
    {
      sub_1D69176FC();
      if (v2 <= 0x3F)
      {
        sub_1D6D47994();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

char *FormatSlotItemSort.identifier.getter()
{
  if (!*v0)
  {
    return 0x6174732D6E656573;
  }

  v1 = *(*v0 + 16);
  v2 = *(v1 + 16);
  v3 = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v14[0] = MEMORY[0x1E69E7CC0];

    sub_1D5BFC364(0, v2, 0);
    v3 = v14[0];
    v4 = (v1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;
      v14[0] = v3;
      v7 = *(v3 + 2);
      v8 = *(v3 + 3);

      if (v7 >= v8 >> 1)
      {
        sub_1D5BFC364((v8 > 1), v7 + 1, 1);
        v3 = v14[0];
      }

      *(v3 + 2) = v7 + 1;
      v9 = &v3[16 * v7];
      *(v9 + 4) = v6;
      *(v9 + 5) = v5;
      v4 += 3;
      --v2;
    }

    while (v2);
  }

  v14[0] = v3;

  sub_1D5F81CCC(v14);

  sub_1D5BBE0A8();
  sub_1D5BB0AB8();
  v10 = sub_1D7261F3C();
  v12 = v11;

  v14[0] = 0x726F7463656C6573;
  v14[1] = 0xEA00000000002D73;
  MEMORY[0x1DA6F9910](v10, v12);

  return v14[0];
}

uint64_t sub_1D6E83E74(void *a1, uint64_t a2)
{
  v5 = type metadata accessor for FormatContentSlotItemResolution() - 8;
  MEMORY[0x1EEE9AC00](v5, v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x1E69E7CC8];
  v10 = a1[2];
  v21 = a1;
  if (v10)
  {
    v11 = a1 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    v22 = *(v7 + 72);
    v12 = MEMORY[0x1E69E7CC8];
    do
    {
      sub_1D6E8AFA8(v11, v9, type metadata accessor for FormatContentSlotItemResolution);
      v23 = FormatContentSlotItemObject.Resolved.identifier.getter();
      v14 = v13;
      MEMORY[0x1EEE9AC00](v23, v13);
      *(&v21 - 2) = v9;
      v15 = a2;
      v16 = sub_1D632A52C(0, sub_1D6E8AED8, (&v21 - 4), a2);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v24 = v12;
      v18 = v16;
      a2 = v15;
      sub_1D5C0C734(v18, v23, v14, isUniquelyReferenced_nonNull_native);

      v12 = v24;
      v25 = v24;
      sub_1D6E8B010(v9, type metadata accessor for FormatContentSlotItemResolution);
      v11 += v22;
      --v10;
    }

    while (v10);
  }

  v24 = v21;

  sub_1D6E848AC(&v24, &v25);
  if (v2)
  {

    __break(1u);
  }

  else
  {
    v19 = v24;

    return v19;
  }

  return result;
}

void *sub_1D6E840A8(uint64_t a1, void *a2)
{
  v35 = a2;
  v3 = type metadata accessor for FormatContentSlotItemResolution();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3 - 8, v5);
  v33 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for FormatSlotItemSort.SeenStateItem();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7 - 8, v9);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v32 - v14;
  v16 = *(a1 + 16);
  v17 = MEMORY[0x1E69E7CC0];
  v34 = v4;
  if (v16)
  {
    v36 = MEMORY[0x1E69E7CC0];
    sub_1D6997DA0(0, v16, 0);
    v17 = v36;
    v18 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v19 = *(v4 + 72);
    do
    {
      sub_1D6E84594(v18, v35, v15);
      v36 = v17;
      v21 = v17[2];
      v20 = v17[3];
      if (v21 >= v20 >> 1)
      {
        sub_1D6997DA0(v20 > 1, v21 + 1, 1);
        v17 = v36;
      }

      v17[2] = v21 + 1;
      sub_1D6E8AF40(v15, v17 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v21, type metadata accessor for FormatSlotItemSort.SeenStateItem);
      v18 += v19;
      --v16;
    }

    while (v16);
  }

  v36 = v17;

  sub_1D6E84964(&v36);
  v22 = v33;

  v23 = v36;
  v24 = v36[2];
  v25 = v34;
  if (v24)
  {
    v36 = MEMORY[0x1E69E7CC0];
    sub_1D6997C80(0, v24, 0);
    v26 = v36;
    v27 = v23 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v28 = *(v8 + 72);
    do
    {
      sub_1D6E8AFA8(v27, v11, type metadata accessor for FormatSlotItemSort.SeenStateItem);
      sub_1D6E8AFA8(v11, v22, type metadata accessor for FormatContentSlotItemResolution);
      sub_1D6E8B010(v11, type metadata accessor for FormatSlotItemSort.SeenStateItem);
      v36 = v26;
      v30 = v26[2];
      v29 = v26[3];
      if (v30 >= v29 >> 1)
      {
        sub_1D6997C80(v29 > 1, v30 + 1, 1);
        v26 = v36;
      }

      v26[2] = v30 + 1;
      sub_1D6E8AF40(v22, v26 + ((*(v25 + 80) + 32) & ~*(v25 + 80)) + *(v25 + 72) * v30, type metadata accessor for FormatContentSlotItemResolution);
      v27 += v28;
      --v24;
    }

    while (v24);
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return v26;
}

uint64_t sub_1D6E84444@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v6 = *a1;
  v7 = *a2;
  v8 = a2[1];
  v9 = a2[2];
  v10 = type metadata accessor for FormatContentSlotItemResolution();
  result = sub_1D5FAB9E0(*(a3 + *(v10 + 24)), v7, v8, v9);
  if ((v12 & 1) == 0 && (v13 = __OFADD__(v6, result), v6 += result, v13))
  {
    __break(1u);
  }

  else
  {
    *a4 = v6;
  }

  return result;
}

BOOL sub_1D6E844C8(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = FormatContentSlotItemObject.Resolved.identifier.getter();
  v6 = *a3;
  if (!*(*a3 + 16))
  {
    goto LABEL_6;
  }

  v7 = sub_1D5B69D90(v4, v5);
  v9 = v8;

  if ((v9 & 1) == 0)
  {
    return 0;
  }

  v10 = *(*(v6 + 56) + 8 * v7);
  v11 = FormatContentSlotItemObject.Resolved.identifier.getter();
  v13 = *a3;
  if (!*(*a3 + 16))
  {
LABEL_6:

    return 0;
  }

  v14 = sub_1D5B69D90(v11, v12);
  v16 = v15;

  if (v16)
  {
    return *(*(v13 + 56) + 8 * v14) < v10;
  }

  return 0;
}

uint64_t sub_1D6E84594@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for FormatContentSlotItemObject.Resolved();
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = (&v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D6E8AFA8(a1, v9, type metadata accessor for FormatContentSlotItemObject.Resolved);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 9)
  {
    goto LABEL_9;
  }

  if (((1 << EnumCaseMultiPayload) & 0x37C) != 0)
  {
    sub_1D6E8B010(v9, type metadata accessor for FormatContentSlotItemObject.Resolved);
    sub_1D6E8AFA8(a1, a3, type metadata accessor for FormatContentSlotItemResolution);
    v11 = *(type metadata accessor for FormatSlotItemSort.SeenStateItem() + 20);
    v12 = sub_1D725891C();
    return (*(*(v12 - 8) + 56))(a3 + v11, 1, 1, v12);
  }

  if (EnumCaseMultiPayload != 1)
  {
    if (EnumCaseMultiPayload == 7)
    {
      v14 = *v9;
      v15 = a2[5];
      v16 = a2[6];
      v39 = __swift_project_boxed_opaque_existential_1(a2 + 2, v15);
      v22 = [v14 identifier];
      v23 = sub_1D726207C();
      v25 = v24;

      v36 = v23;
      v37 = v25;
      v21 = 2;
      goto LABEL_8;
    }

LABEL_9:
    v27 = *v9;
    v28 = a2[5];
    v29 = a2[6];
    v39 = __swift_project_boxed_opaque_existential_1(a2 + 2, v28);
    v30 = [v27 identifier];
    v31 = sub_1D726207C();
    v33 = v32;

    v36 = v31;
    v37 = v33;
    v38 = 0;
    v34 = *(v29 + 8);
    type metadata accessor for FormatSlotItemSort.SeenStateItem();
    v34(&v36, v28, v29);
    swift_unknownObjectRelease();
    goto LABEL_10;
  }

  v14 = *v9;
  v15 = a2[5];
  v16 = a2[6];
  v39 = __swift_project_boxed_opaque_existential_1(a2 + 2, v15);
  v17 = [v14 identifier];
  v18 = sub_1D726207C();
  v20 = v19;

  v36 = v18;
  v37 = v20;
  v21 = 1;
LABEL_8:
  v38 = v21;
  v26 = *(v16 + 8);
  type metadata accessor for FormatSlotItemSort.SeenStateItem();
  v26(&v36, v15, v16);

LABEL_10:
  sub_1D5DEA520(v36, v37, v38);
  return sub_1D6E8AFA8(a1, a3, type metadata accessor for FormatContentSlotItemResolution);
}

void sub_1D6E848AC(void **a1, uint64_t *a2)
{
  v4 = *(type metadata accessor for FormatContentSlotItemResolution() - 8);
  v5 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v5 = sub_1D62FFB94(v5);
  }

  v6 = v5[2];
  v7[0] = v5 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
  v7[1] = v6;
  sub_1D6E84A0C(v7, a2);
  *a1 = v5;
}

void sub_1D6E84964(void **a1)
{
  v2 = *(type metadata accessor for FormatSlotItemSort.SeenStateItem() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_1D62FFBA8(v3);
  }

  v4 = v3[2];
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  sub_1D6E84B44(v5);
  *a1 = v3;
}

void sub_1D6E84A0C(uint64_t *a1, uint64_t *a2)
{
  v4 = a1[1];
  v5 = sub_1D726449C();
  if (v5 < v4)
  {
    if (v4 >= -1)
    {
      v6 = v5;
      v7 = v4 / 2;
      if (v4 <= 1)
      {
        v8 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        type metadata accessor for FormatContentSlotItemResolution();
        v8 = sub_1D726276C();
        *(v8 + 16) = v7;
      }

      v9 = *(type metadata accessor for FormatContentSlotItemResolution() - 8);
      v10[0] = v8 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
      v10[1] = v7;
      sub_1D6E85ED4(v10, v11, a1, v6, a2);
      *(v8 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v4 < 0)
  {
    goto LABEL_12;
  }

  if (v4)
  {
    sub_1D6E84C70(0, v4, 1, a1, a2);
  }
}

void sub_1D6E84B44(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = sub_1D726449C();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        type metadata accessor for FormatSlotItemSort.SeenStateItem();
        v6 = sub_1D726276C();
        *(v6 + 16) = v5;
      }

      v7 = *(type metadata accessor for FormatSlotItemSort.SeenStateItem() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_1D6E886C8(v8, v9, a1, v4);
      *(v6 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_1D6E859BC(0, v2, 1, a1);
  }
}

void sub_1D6E84C70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v135 = a5;
  v9 = type metadata accessor for FormatCustomItem.Resolved();
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v120 = (&v110 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v119 = type metadata accessor for PuzzleStatistic();
  MEMORY[0x1EEE9AC00](v119, v12);
  v126 = (&v110 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = (&v110 - v16);
  v18 = type metadata accessor for FormatWebEmbed.Resolved();
  MEMORY[0x1EEE9AC00](v18 - 8, v19);
  v118 = &v110 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for FormatContentSlotItemObject.Resolved();
  MEMORY[0x1EEE9AC00](v21, v22);
  v134 = &v110 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24, v25);
  v27 = &v110 - v26;
  v130 = type metadata accessor for FormatContentSlotItemResolution();
  MEMORY[0x1EEE9AC00](v130, v28);
  v129 = &v110 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30, v31);
  v136 = &v110 - v32;
  MEMORY[0x1EEE9AC00](v33, v34);
  v37 = &v110 - v36;
  v112 = a2;
  if (a3 != a2)
  {
    v38 = *a4;
    v39 = *(v35 + 72);
    v117 = 0x80000001D73B7480;
    v116 = 0x80000001D73B7450;
    v115 = 0x80000001D73B7430;
    v114 = 0x80000001D73B7410;
    v113 = 0x80000001D73B73F0;
    v40 = v38 + v39 * (a3 - 1);
    v127 = -v39;
    v128 = v38;
    v41 = a1 - a3;
    v111 = v39;
    v42 = v38 + v39 * a3;
    v131 = &v110 - v36;
    v132 = v27;
    v125 = v21;
LABEL_7:
    v123 = v40;
    v124 = a3;
    v121 = v42;
    v122 = v41;
    v43 = v41;
    while (1)
    {
      sub_1D6E8AFA8(v42, v37, type metadata accessor for FormatContentSlotItemResolution);
      sub_1D6E8AFA8(v40, v136, type metadata accessor for FormatContentSlotItemResolution);
      sub_1D6E8AFA8(v37, v27, type metadata accessor for FormatContentSlotItemObject.Resolved);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload > 4)
      {
        if (EnumCaseMultiPayload <= 6)
        {
          if (EnumCaseMultiPayload == 5)
          {
LABEL_23:
            v51 = [*v27 identifier];
            v47 = sub_1D726207C();
            v46 = v52;
            swift_unknownObjectRelease();

            goto LABEL_59;
          }

          sub_1D6E8AF40(v27, v17, type metadata accessor for PuzzleStatistic);
          v56 = [*v17 identifier];
          v57 = sub_1D726207C();
          v59 = v58;

          PuzzleStatisticCategory.statisticType.getter(&v139);
          v60 = 0xD000000000000015;
          if (v139 == 9)
          {
            v60 = 0x53646570756F7267;
          }

          v61 = 0xEC00000073746174;
          if (v139 != 9)
          {
            v61 = v117;
          }

          if (v139 == 8)
          {
            v60 = 0xD00000000000001DLL;
            v61 = v116;
          }

          if (v139 == 6)
          {
            v62 = 0xD00000000000001CLL;
          }

          else
          {
            v62 = 0xD00000000000001DLL;
          }

          v63 = v115;
          if (v139 == 6)
          {
            v63 = v114;
          }

          if (v139 == 5)
          {
            v62 = 0xD00000000000001CLL;
            v63 = v113;
          }

          if (v139 <= 7u)
          {
            v60 = v62;
            v61 = v63;
          }

          v64 = 0x74615265766C6F73;
          if (v139 == 3)
          {
            v64 = 0x5374636566726570;
          }

          v65 = 0xE900000000000065;
          if (v139 == 3)
          {
            v65 = 0xED00006465766C6FLL;
          }

          if (v139 == 2)
          {
            v64 = 0x5373656C7A7A7570;
            v65 = 0xED00006465766C6FLL;
          }

          v66 = 0x53747365676E6F6CLL;
          if (v139)
          {
            v66 = 0x53746E6572727563;
          }

          if (v139 <= 1u)
          {
            v64 = v66;
            v65 = 0xED00006B61657274;
          }

          if (v139 <= 4u)
          {
            v67 = v64;
          }

          else
          {
            v67 = v60;
          }

          if (v139 <= 4u)
          {
            v68 = v65;
          }

          else
          {
            v68 = v61;
          }

          v137 = v57;
          v138 = v59;

          MEMORY[0x1DA6F9910](v67, v68);

          v47 = v137;
          v46 = v138;
          v49 = type metadata accessor for PuzzleStatistic;
          v50 = v17;
          goto LABEL_58;
        }

        if (EnumCaseMultiPayload == 7)
        {
          goto LABEL_25;
        }

        if (EnumCaseMultiPayload != 8)
        {
          v47 = *v27;
          v46 = *(v27 + 1);
          goto LABEL_59;
        }

        v45 = v120;
        sub_1D6E8AF40(v27, v120, type metadata accessor for FormatCustomItem.Resolved);
        v47 = *v45;
        v46 = *(v45 + 8);

        v48 = type metadata accessor for FormatCustomItem.Resolved;
      }

      else
      {
        if (EnumCaseMultiPayload <= 1)
        {
          if (!EnumCaseMultiPayload)
          {
            goto LABEL_23;
          }

LABEL_25:
          v53 = *v27;
          v54 = [*v27 identifier];
          v47 = sub_1D726207C();
          v46 = v55;

          goto LABEL_59;
        }

        if (EnumCaseMultiPayload != 3)
        {
          goto LABEL_23;
        }

        v45 = v118;
        sub_1D6E8AF40(v27, v118, type metadata accessor for FormatWebEmbed.Resolved);
        v47 = *v45;
        v46 = *(v45 + 8);

        v48 = type metadata accessor for FormatWebEmbed.Resolved;
      }

      v49 = v48;
      v50 = v45;
LABEL_58:
      sub_1D6E8B010(v50, v49);
LABEL_59:
      v69 = *v135;
      if (!*(*v135 + 16))
      {
        goto LABEL_4;
      }

      v70 = sub_1D5B69D90(v47, v46);
      v72 = v71;

      if ((v72 & 1) == 0)
      {
        goto LABEL_5;
      }

      v73 = *(*(v69 + 56) + 8 * v70);
      sub_1D6E8AFA8(v136, v134, type metadata accessor for FormatContentSlotItemObject.Resolved);
      v74 = swift_getEnumCaseMultiPayload();
      v133 = v73;
      if (v74 > 4)
      {
        v78 = v17;
        v79 = v126;
        if (v74 <= 6)
        {
          if (v74 == 5)
          {
            v81 = [*v134 identifier];
            v77 = sub_1D726207C();
            v76 = v82;
            swift_unknownObjectRelease();
            goto LABEL_75;
          }

          sub_1D6E8AF40(v134, v126, type metadata accessor for PuzzleStatistic);
          v90 = [*v79 identifier];
          v91 = sub_1D726207C();
          v93 = v92;

          PuzzleStatisticCategory.statisticType.getter(&v139);
          v94 = 0xD000000000000015;
          if (v139 == 9)
          {
            v94 = 0x53646570756F7267;
          }

          v95 = 0xEC00000073746174;
          if (v139 != 9)
          {
            v95 = v117;
          }

          if (v139 == 8)
          {
            v94 = 0xD00000000000001DLL;
            v95 = v116;
          }

          if (v139 == 6)
          {
            v96 = 0xD00000000000001CLL;
          }

          else
          {
            v96 = 0xD00000000000001DLL;
          }

          v97 = v115;
          if (v139 == 6)
          {
            v97 = v114;
          }

          if (v139 == 5)
          {
            v96 = 0xD00000000000001CLL;
            v97 = v113;
          }

          if (v139 <= 7u)
          {
            v94 = v96;
            v95 = v97;
          }

          v98 = 0x74615265766C6F73;
          if (v139 == 3)
          {
            v98 = 0x5374636566726570;
          }

          v99 = 0xE900000000000065;
          if (v139 == 3)
          {
            v99 = 0xED00006465766C6FLL;
          }

          if (v139 == 2)
          {
            v98 = 0x5373656C7A7A7570;
            v99 = 0xED00006465766C6FLL;
          }

          v100 = 0x53747365676E6F6CLL;
          if (v139)
          {
            v100 = 0x53746E6572727563;
          }

          if (v139 <= 1u)
          {
            v98 = v100;
            v99 = 0xED00006B61657274;
          }

          if (v139 <= 4u)
          {
            v101 = v98;
          }

          else
          {
            v101 = v94;
          }

          if (v139 <= 4u)
          {
            v102 = v99;
          }

          else
          {
            v102 = v95;
          }

          v137 = v91;
          v138 = v93;

          MEMORY[0x1DA6F9910](v101, v102);

          v77 = v137;
          v76 = v138;
          sub_1D6E8B010(v79, type metadata accessor for PuzzleStatistic);
LABEL_111:
          v17 = v78;
          goto LABEL_112;
        }

        if (v74 == 7)
        {
          v83 = *v134;
          v81 = [*v134 identifier];
          v77 = sub_1D726207C();
          v76 = v84;

LABEL_75:
          goto LABEL_111;
        }

        v17 = v78;
        if (v74 == 8)
        {
          v80 = v120;
          sub_1D6E8AF40(v134, v120, type metadata accessor for FormatCustomItem.Resolved);
          v77 = *v80;
          v76 = v80[1];

          sub_1D6E8B010(v80, type metadata accessor for FormatCustomItem.Resolved);
        }

        else
        {
          v77 = *v134;
          v76 = *(v134 + 8);
        }
      }

      else
      {
        if (v74 > 1)
        {
          if (v74 == 3)
          {
            v75 = v118;
            sub_1D6E8AF40(v134, v118, type metadata accessor for FormatWebEmbed.Resolved);
            v77 = *v75;
            v76 = *(v75 + 8);

            sub_1D6E8B010(v75, type metadata accessor for FormatWebEmbed.Resolved);
            goto LABEL_112;
          }

LABEL_76:
          v85 = [*v134 identifier];
          v77 = sub_1D726207C();
          v76 = v86;
          swift_unknownObjectRelease();

          goto LABEL_112;
        }

        if (!v74)
        {
          goto LABEL_76;
        }

        v87 = *v134;
        v88 = [*v134 identifier];
        v77 = sub_1D726207C();
        v76 = v89;
      }

LABEL_112:
      v103 = *v135;
      if (!*(*v135 + 16))
      {
LABEL_4:

LABEL_5:
        sub_1D6E8B010(v136, type metadata accessor for FormatContentSlotItemResolution);
        v37 = v131;
        sub_1D6E8B010(v131, type metadata accessor for FormatContentSlotItemResolution);
        v27 = v132;
LABEL_6:
        a3 = v124 + 1;
        v40 = v123 + v111;
        v41 = v122 - 1;
        v42 = v121 + v111;
        if (v124 + 1 == v112)
        {
          return;
        }

        goto LABEL_7;
      }

      v104 = sub_1D5B69D90(v77, v76);
      v106 = v105;

      if ((v106 & 1) == 0)
      {
        goto LABEL_5;
      }

      v107 = *(*(v103 + 56) + 8 * v104);
      sub_1D6E8B010(v136, type metadata accessor for FormatContentSlotItemResolution);
      v37 = v131;
      sub_1D6E8B010(v131, type metadata accessor for FormatContentSlotItemResolution);
      v27 = v132;
      if (v107 >= v133)
      {
        goto LABEL_6;
      }

      if (!v128)
      {
        __break(1u);
        return;
      }

      v108 = v129;
      sub_1D6E8AF40(v42, v129, type metadata accessor for FormatContentSlotItemResolution);
      swift_arrayInitWithTakeFrontToBack();
      sub_1D6E8AF40(v108, v40, type metadata accessor for FormatContentSlotItemResolution);
      v40 += v127;
      v42 += v127;
      if (__CFADD__(v43++, 1))
      {
        goto LABEL_6;
      }
    }
  }
}

void sub_1D6E859BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_1D725891C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v59 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v58 = &v50 - v14;
  sub_1D5BA8044();
  v66 = v15;
  MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v67 = &v50 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = type metadata accessor for FormatSlotItemSort.SeenStateItem();
  MEMORY[0x1EEE9AC00](v68, v18);
  v63 = &v50 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20, v21);
  v69 = &v50 - v22;
  MEMORY[0x1EEE9AC00](v23, v24);
  v27 = &v50 - v26;
  v52 = a2;
  if (a3 != a2)
  {
    v28 = *a4;
    v29 = *(v25 + 72);
    v64 = (v9 + 48);
    v65 = &v50 - v26;
    v57 = (v9 + 32);
    v30 = (v9 + 8);
    v31 = v28 + v29 * (a3 - 1);
    v60 = v30;
    v61 = -v29;
    v32 = a1 - a3;
    v62 = v28;
    v51 = v29;
    v33 = v28 + v29 * a3;
LABEL_6:
    v55 = v31;
    v56 = a3;
    v53 = v33;
    v54 = v32;
    while (1)
    {
      sub_1D6E8AFA8(v33, v27, type metadata accessor for FormatSlotItemSort.SeenStateItem);
      v34 = v69;
      sub_1D6E8AFA8(v31, v69, type metadata accessor for FormatSlotItemSort.SeenStateItem);
      v35 = *(v68 + 20);
      v36 = *(v66 + 48);
      v37 = &v27[v35];
      v38 = v67;
      sub_1D6E8AFA8(v37, v67, sub_1D5B5B2A0);
      sub_1D6E8AFA8(v34 + v35, v38 + v36, sub_1D5B5B2A0);
      v39 = *v64;
      v40 = (*v64)(v38, 1, v8);
      v41 = v39(v38 + v36, 1, v8);
      if (v40 == 1)
      {
        if (v41 != 1)
        {
          sub_1D6E8B010(v67 + v36, sub_1D5B5B2A0);
        }

        sub_1D6E8B010(v69, type metadata accessor for FormatSlotItemSort.SeenStateItem);
        v27 = v65;
        sub_1D6E8B010(v65, type metadata accessor for FormatSlotItemSort.SeenStateItem);
      }

      else
      {
        if (v41 == 1)
        {
          (*v60)(v67, v8);
          sub_1D6E8B010(v69, type metadata accessor for FormatSlotItemSort.SeenStateItem);
          v27 = v65;
          sub_1D6E8B010(v65, type metadata accessor for FormatSlotItemSort.SeenStateItem);
LABEL_5:
          a3 = v56 + 1;
          v31 = v55 + v51;
          v32 = v54 - 1;
          v33 = v53 + v51;
          if (v56 + 1 == v52)
          {
            return;
          }

          goto LABEL_6;
        }

        v42 = v58;
        v43 = *v57;
        v44 = v67;
        (*v57)(v58, v67, v8);
        v45 = v44 + v36;
        v46 = v59;
        v43(v59, v45, v8);
        LOBYTE(v44) = sub_1D725883C();
        v47 = *v60;
        (*v60)(v46, v8);
        v47(v42, v8);
        sub_1D6E8B010(v69, type metadata accessor for FormatSlotItemSort.SeenStateItem);
        v27 = v65;
        sub_1D6E8B010(v65, type metadata accessor for FormatSlotItemSort.SeenStateItem);
        if ((v44 & 1) == 0)
        {
          goto LABEL_5;
        }
      }

      if (!v62)
      {
        break;
      }

      v48 = v63;
      sub_1D6E8AF40(v33, v63, type metadata accessor for FormatSlotItemSort.SeenStateItem);
      swift_arrayInitWithTakeFrontToBack();
      sub_1D6E8AF40(v48, v31, type metadata accessor for FormatSlotItemSort.SeenStateItem);
      v31 += v61;
      v33 += v61;
      if (__CFADD__(v32++, 1))
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }
}

void sub_1D6E85ED4(unint64_t *a1, uint64_t a2, void *a3, unint64_t a4, uint64_t *a5)
{
  v6 = v5;
  v364 = a5;
  v326 = a1;
  v9 = type metadata accessor for PuzzleStatisticDifficultyLevelValue(0);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v308 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v308 - v15;
  v17 = type metadata accessor for PuzzleStatisticValue(0);
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v308 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = &v308 - v23;
  MEMORY[0x1EEE9AC00](v25, v26);
  v28 = &v308 - v27;
  MEMORY[0x1EEE9AC00](v29, v30);
  v330 = &v308 - v31;
  MEMORY[0x1EEE9AC00](v32, v33);
  v320 = &v308 - v34;
  MEMORY[0x1EEE9AC00](v35, v36);
  v311 = &v308 - v37;
  MEMORY[0x1EEE9AC00](v38, v39);
  v352 = &v308 - v40;
  MEMORY[0x1EEE9AC00](v41, v42);
  v313 = &v308 - v43;
  MEMORY[0x1EEE9AC00](v44, v45);
  v332 = &v308 - v46;
  MEMORY[0x1EEE9AC00](v47, v48);
  v321 = &v308 - v49;
  v340 = type metadata accessor for PuzzleStatisticCategory(0);
  MEMORY[0x1EEE9AC00](v340, v50);
  v338 = &v308 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v52, v53);
  v342 = &v308 - v54;
  v55 = type metadata accessor for FormatCustomItem.Resolved();
  MEMORY[0x1EEE9AC00](v55 - 8, v56);
  v347 = &v308 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  v346 = type metadata accessor for PuzzleStatistic();
  MEMORY[0x1EEE9AC00](v346, v58);
  v339 = (&v308 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v60, v61);
  v341 = (&v308 - v62);
  MEMORY[0x1EEE9AC00](v63, v64);
  v317 = (&v308 - v65);
  MEMORY[0x1EEE9AC00](v66, v67);
  v336 = (&v308 - v68);
  v69 = type metadata accessor for FormatWebEmbed.Resolved();
  MEMORY[0x1EEE9AC00](v69 - 8, v70);
  v345 = &v308 - ((v71 + 15) & 0xFFFFFFFFFFFFFFF0);
  v363 = type metadata accessor for FormatContentSlotItemObject.Resolved();
  MEMORY[0x1EEE9AC00](v363, v72);
  v360 = &v308 - ((v73 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v74, v75);
  v362 = &v308 - v76;
  MEMORY[0x1EEE9AC00](v77, v78);
  v343 = &v308 - v79;
  MEMORY[0x1EEE9AC00](v80, v81);
  v344 = &v308 - v82;
  v359 = type metadata accessor for FormatContentSlotItemResolution();
  v351 = *(v359 - 8);
  MEMORY[0x1EEE9AC00](v359, v83);
  v312 = &v308 - ((v84 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v85, v86);
  v358 = &v308 - v87;
  MEMORY[0x1EEE9AC00](v88, v89);
  v365 = &v308 - v90;
  MEMORY[0x1EEE9AC00](v91, v92);
  v361 = &v308 - v93;
  MEMORY[0x1EEE9AC00](v94, v95);
  v355 = &v308 - v96;
  MEMORY[0x1EEE9AC00](v97, v98);
  v353 = &v308 - v99;
  MEMORY[0x1EEE9AC00](v100, v101);
  v319 = &v308 - v102;
  MEMORY[0x1EEE9AC00](v103, v104);
  v318 = &v308 - v105;
  if (a3[1] < 1)
  {
    v108 = MEMORY[0x1E69E7CC0];
LABEL_316:
    a4 = *v326;
    if (!*v326)
    {
      goto LABEL_356;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_350;
    }

    goto LABEL_318;
  }

  v106 = a3[1];
  v310 = v28;
  v309 = v24;
  v308 = v20;
  v329 = v17;
  v316 = v16;
  v315 = v12;
  v314 = a4;
  v107 = 0;
  v328 = 0x80000001D73B7480;
  v322 = 0x80000001D73B7450;
  v324 = 0x80000001D73B7430;
  v325 = 0x80000001D73B7410;
  v327 = 0x80000001D73B73F0;
  v108 = MEMORY[0x1E69E7CC0];
  v333 = a3;
LABEL_4:
  v109 = v107;
  v331 = v107;
  if (v107 + 1 >= v106)
  {
    v118 = v107 + 1;
    goto LABEL_126;
  }

  v354 = v106;
  v110 = *a3;
  v111 = *(v351 + 72);
  a4 = v110 + v111 * (v107 + 1);
  v112 = v318;
  sub_1D6E8AFA8(a4, v318, type metadata accessor for FormatContentSlotItemResolution);
  v113 = v319;
  sub_1D6E8AFA8(v110 + v111 * v107, v319, type metadata accessor for FormatContentSlotItemResolution);
  LODWORD(v356) = sub_1D6E844C8(v112, v113, v364);
  if (v6)
  {
    sub_1D6E8B010(v113, type metadata accessor for FormatContentSlotItemResolution);
    sub_1D6E8B010(v112, type metadata accessor for FormatContentSlotItemResolution);
    goto LABEL_328;
  }

  v323 = 0;
  sub_1D6E8B010(v113, type metadata accessor for FormatContentSlotItemResolution);
  sub_1D6E8B010(v112, type metadata accessor for FormatContentSlotItemResolution);
  v114 = v107 + 2;
  v115 = v110 + v111 * v114;
  v116 = v344;
  v117 = v111;
  v357 = v111;
  while (1)
  {
    v118 = v354;
    if (v354 == v114)
    {
      break;
    }

    v119 = v353;
    sub_1D6E8AFA8(v115, v353, type metadata accessor for FormatContentSlotItemResolution);
    sub_1D6E8AFA8(a4, v355, type metadata accessor for FormatContentSlotItemResolution);
    sub_1D6E8AFA8(v119, v116, type metadata accessor for FormatContentSlotItemObject.Resolved);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload <= 4)
    {
      if (EnumCaseMultiPayload > 1)
      {
        if (EnumCaseMultiPayload == 3)
        {
          v121 = v116;
          v122 = v345;
          sub_1D6E8AF40(v116, v345, type metadata accessor for FormatWebEmbed.Resolved);
          v124 = *v122;
          v123 = *(v122 + 8);

          v125 = type metadata accessor for FormatWebEmbed.Resolved;
LABEL_17:
          sub_1D6E8B010(v122, v125);
          goto LABEL_59;
        }

        v121 = v116;
        v127 = [*v116 identifier];
        goto LABEL_24;
      }

      v121 = v116;
      if (!EnumCaseMultiPayload)
      {
        v127 = [*v116 identifier];
LABEL_24:
        v130 = v127;
        v124 = sub_1D726207C();
        v123 = v131;
        swift_unknownObjectRelease();

        goto LABEL_59;
      }

      v128 = *v116;
      v129 = [*v116 identifier];
      goto LABEL_26;
    }

    v126 = v336;
    if (EnumCaseMultiPayload > 6)
    {
      if (EnumCaseMultiPayload != 7)
      {
        if (EnumCaseMultiPayload != 8)
        {
          v124 = *v344;
          v123 = *(v344 + 8);
          v121 = v344;
          goto LABEL_59;
        }

        v121 = v344;
        v122 = v347;
        sub_1D6E8AF40(v344, v347, type metadata accessor for FormatCustomItem.Resolved);
        v124 = *v122;
        v123 = *(v122 + 8);

        v125 = type metadata accessor for FormatCustomItem.Resolved;
        goto LABEL_17;
      }

      v121 = v344;
      v128 = *v344;
      v129 = [*v344 identifier];
LABEL_26:
      v132 = v129;
      v124 = sub_1D726207C();
      v123 = v133;

      goto LABEL_59;
    }

    if (EnumCaseMultiPayload == 5)
    {
      v121 = v344;
      v127 = [*v344 identifier];
      goto LABEL_24;
    }

    sub_1D6E8AF40(v344, v336, type metadata accessor for PuzzleStatistic);
    v134 = [*v126 identifier];
    v135 = sub_1D726207C();
    v137 = v136;

    PuzzleStatisticCategory.statisticType.getter(&v366);
    v138 = 0xD000000000000015;
    if (v366 == 9)
    {
      v138 = 0x53646570756F7267;
    }

    v139 = v328;
    if (v366 == 9)
    {
      v139 = 0xEC00000073746174;
    }

    if (v366 == 8)
    {
      v138 = 0xD00000000000001DLL;
      v139 = v322;
    }

    if (v366 == 6)
    {
      v140 = 0xD00000000000001CLL;
    }

    else
    {
      v140 = 0xD00000000000001DLL;
    }

    v141 = v324;
    if (v366 == 6)
    {
      v141 = v325;
    }

    if (v366 == 5)
    {
      v140 = 0xD00000000000001CLL;
      v141 = v327;
    }

    if (v366 <= 7u)
    {
      v138 = v140;
      v139 = v141;
    }

    v142 = 0x5374636566726570;
    if (v366 != 3)
    {
      v142 = 0x74615265766C6F73;
    }

    v143 = 0xE900000000000065;
    if (v366 == 3)
    {
      v143 = 0xED00006465766C6FLL;
    }

    if (v366 == 2)
    {
      v142 = 0x5373656C7A7A7570;
      v143 = 0xED00006465766C6FLL;
    }

    v144 = 0x53747365676E6F6CLL;
    if (v366)
    {
      v144 = 0x53746E6572727563;
    }

    if (v366 <= 1u)
    {
      v142 = v144;
      v143 = 0xED00006B61657274;
    }

    if (v366 <= 4u)
    {
      v145 = v142;
    }

    else
    {
      v145 = v138;
    }

    if (v366 <= 4u)
    {
      v146 = v143;
    }

    else
    {
      v146 = v139;
    }

    v367 = v135;
    v368 = v137;

    MEMORY[0x1DA6F9910](v145, v146);

    v124 = v367;
    v123 = v368;
    sub_1D6E8B010(v126, type metadata accessor for PuzzleStatistic);
    v121 = v344;
LABEL_59:
    v147 = *v364;
    if (!*(*v364 + 16))
    {
      goto LABEL_106;
    }

    v148 = sub_1D5B69D90(v124, v123);
    v150 = v149;

    if ((v150 & 1) == 0)
    {
      goto LABEL_107;
    }

    v151 = *(*(v147 + 56) + 8 * v148);
    sub_1D6E8AFA8(v355, v343, type metadata accessor for FormatContentSlotItemObject.Resolved);
    v152 = swift_getEnumCaseMultiPayload();
    v350 = v151;
    if (v152 > 4)
    {
      if (v152 <= 6)
      {
        if (v152 == 5)
        {
LABEL_76:
          v159 = [*v343 identifier];
          v155 = sub_1D726207C();
          v154 = v160;
          swift_unknownObjectRelease();

          goto LABEL_103;
        }

        v164 = v317;
        sub_1D6E8AF40(v343, v317, type metadata accessor for PuzzleStatistic);
        v165 = [*v164 identifier];
        v166 = sub_1D726207C();
        v349 = v167;

        PuzzleStatisticCategory.statisticType.getter(&v366);
        if (v366 <= 4u)
        {
          if (v366 <= 1u)
          {
            v169 = 0x53747365676E6F6CLL;
            v171 = 0xED00006B61657274;
            v168 = v349;
            if (v366)
            {
              v169 = 0x53746E6572727563;
            }

            goto LABEL_101;
          }

          v168 = v349;
          if (v366 == 2)
          {
            v169 = 0x5373656C7A7A7570;
          }

          else
          {
            if (v366 != 3)
            {
              v171 = 0xE900000000000065;
              v169 = 0x74615265766C6F73;
              goto LABEL_101;
            }

            v169 = 0x5374636566726570;
          }

          v171 = 0xED00006465766C6FLL;
        }

        else if (v366 > 7u)
        {
          v168 = v349;
          if (v366 == 8)
          {
            v169 = 0xD00000000000001DLL;
            v170 = &v354;
            goto LABEL_100;
          }

          if (v366 != 9)
          {
            v169 = 0xD000000000000015;
            v170 = &v360;
            goto LABEL_100;
          }

          v169 = 0x53646570756F7267;
          v171 = 0xEC00000073746174;
        }

        else
        {
          v168 = v349;
          if (v366 == 5)
          {
            v169 = 0xD00000000000001CLL;
            v170 = &v359;
          }

          else if (v366 == 6)
          {
            v169 = 0xD00000000000001CLL;
            v170 = &v357;
          }

          else
          {
            v169 = 0xD00000000000001DLL;
            v170 = &v356;
          }

LABEL_100:
          v171 = *(v170 - 32);
        }

LABEL_101:
        v367 = v166;
        v368 = v168;

        MEMORY[0x1DA6F9910](v169, v171);

        v155 = v367;
        v154 = v368;
        v157 = type metadata accessor for PuzzleStatistic;
        v158 = v317;
        goto LABEL_102;
      }

      if (v152 == 7)
      {
        goto LABEL_78;
      }

      if (v152 != 8)
      {
        v155 = *v343;
        v154 = *(v343 + 8);
        goto LABEL_103;
      }

      v153 = v347;
      sub_1D6E8AF40(v343, v347, type metadata accessor for FormatCustomItem.Resolved);
      v155 = *v153;
      v154 = *(v153 + 8);

      v156 = type metadata accessor for FormatCustomItem.Resolved;
    }

    else
    {
      if (v152 <= 1)
      {
        if (!v152)
        {
          goto LABEL_76;
        }

LABEL_78:
        v161 = *v343;
        v162 = [*v343 identifier];
        v155 = sub_1D726207C();
        v154 = v163;

        goto LABEL_103;
      }

      if (v152 != 3)
      {
        goto LABEL_76;
      }

      v153 = v345;
      sub_1D6E8AF40(v343, v345, type metadata accessor for FormatWebEmbed.Resolved);
      v155 = *v153;
      v154 = *(v153 + 8);

      v156 = type metadata accessor for FormatWebEmbed.Resolved;
    }

    v157 = v156;
    v158 = v153;
LABEL_102:
    sub_1D6E8B010(v158, v157);
LABEL_103:
    v172 = *v364;
    if (!*(*v364 + 16))
    {
LABEL_106:

LABEL_107:
      v176 = 0;
      goto LABEL_108;
    }

    v173 = sub_1D5B69D90(v155, v154);
    v175 = v174;

    if ((v175 & 1) == 0)
    {
      goto LABEL_107;
    }

    v176 = *(*(v172 + 56) + 8 * v173) < v350;
LABEL_108:
    sub_1D6E8B010(v355, type metadata accessor for FormatContentSlotItemResolution);
    sub_1D6E8B010(v353, type metadata accessor for FormatContentSlotItemResolution);
    ++v114;
    v117 = v357;
    v115 += v357;
    a4 += v357;
    v116 = v121;
    if ((v356 ^ v176))
    {
      v118 = v114 - 1;
      break;
    }
  }

  v6 = v323;
  v109 = v331;
  if ((v356 & 1) == 0)
  {
    goto LABEL_124;
  }

  a3 = v312;
  if (v118 < v331)
  {
    goto LABEL_349;
  }

  if (v331 >= v118)
  {
LABEL_124:
    a3 = v333;
    goto LABEL_126;
  }

  v177 = v117 * (v118 - 1);
  v178 = v118 * v117;
  v354 = v118;
  v179 = v331;
  v180 = v331 * v117;
  do
  {
    if (v179 != --v118)
    {
      v181 = *v333;
      if (!*v333)
      {
        goto LABEL_353;
      }

      a4 = v181 + v180;
      sub_1D6E8AF40(v181 + v180, a3, type metadata accessor for FormatContentSlotItemResolution);
      if (v180 < v177 || a4 >= v181 + v178)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else if (v180 != v177)
      {
        swift_arrayInitWithTakeBackToFront();
      }

      sub_1D6E8AF40(a3, v181 + v177, type metadata accessor for FormatContentSlotItemResolution);
      v117 = v357;
    }

    ++v179;
    v177 -= v117;
    v178 -= v117;
    v180 += v117;
  }

  while (v179 < v118);
  v6 = v323;
  a3 = v333;
  v118 = v354;
  v109 = v331;
LABEL_126:
  v182 = a3[1];
  if (v118 >= v182)
  {
    goto LABEL_135;
  }

  if (__OFSUB__(v118, v109))
  {
    goto LABEL_346;
  }

  if (v118 - v109 >= v314)
  {
LABEL_135:
    a4 = v118;
    if (v118 < v109)
    {
      goto LABEL_345;
    }

    goto LABEL_136;
  }

  if (__OFADD__(v109, v314))
  {
    goto LABEL_347;
  }

  if (v109 + v314 >= v182)
  {
    a4 = a3[1];
  }

  else
  {
    a4 = v109 + v314;
  }

  if (a4 < v109)
  {
LABEL_348:
    __break(1u);
LABEL_349:
    __break(1u);
LABEL_350:
    v108 = sub_1D62FF50C(v108);
LABEL_318:
    v369 = v108;
    v304 = *(v108 + 2);
    if (v304 >= 2)
    {
      while (*a3)
      {
        v305 = *&v108[16 * v304];
        v306 = *&v108[16 * v304 + 24];
        sub_1D6E8977C(*a3 + *(v351 + 72) * v305, *a3 + *(v351 + 72) * *&v108[16 * v304 + 16], *a3 + *(v351 + 72) * v306, a4, v364);
        if (v6)
        {
          goto LABEL_328;
        }

        if (v306 < v305)
        {
          goto LABEL_343;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v108 = sub_1D62FF50C(v108);
        }

        if (v304 - 2 >= *(v108 + 2))
        {
          goto LABEL_344;
        }

        v307 = &v108[16 * v304];
        *v307 = v305;
        *(v307 + 1) = v306;
        v369 = v108;
        sub_1D62FF480(v304 - 1);
        v108 = v369;
        v304 = *(v369 + 2);
        if (v304 <= 1)
        {
          goto LABEL_328;
        }
      }

      goto LABEL_354;
    }

LABEL_328:

    return;
  }

  if (v118 == a4)
  {
    goto LABEL_135;
  }

  v323 = v6;
  v229 = *a3;
  v230 = *(v351 + 72);
  v231 = *a3 + v230 * (v118 - 1);
  v356 = -v230;
  v357 = v229;
  v232 = v109 - v118;
  v334 = v230;
  v233 = v229 + v118 * v230;
  v335 = a4;
  while (2)
  {
    v354 = v118;
    v348 = v233;
    v349 = v232;
    v234 = v233;
    v350 = v231;
LABEL_190:
    v235 = v361;
    sub_1D6E8AFA8(v234, v361, type metadata accessor for FormatContentSlotItemResolution);
    sub_1D6E8AFA8(v231, v365, type metadata accessor for FormatContentSlotItemResolution);
    sub_1D6E8AFA8(v235, v362, type metadata accessor for FormatContentSlotItemObject.Resolved);
    v236 = swift_getEnumCaseMultiPayload();
    if (v236 > 4)
    {
      v241 = v352;
      if (v236 > 6)
      {
        if (v236 == 7)
        {
LABEL_207:
          v246 = *v362;
          v247 = [*v362 identifier];
          v239 = sub_1D726207C();
          v238 = v248;

          goto LABEL_243;
        }

        if (v236 != 8)
        {
          v239 = *v362;
          v238 = *(v362 + 8);
          goto LABEL_243;
        }

        v237 = v347;
        sub_1D6E8AF40(v362, v347, type metadata accessor for FormatCustomItem.Resolved);
        v239 = *v237;
        v238 = *(v237 + 8);

        v240 = type metadata accessor for FormatCustomItem.Resolved;
LABEL_198:
        v242 = v240;
        v243 = v237;
LABEL_242:
        sub_1D6E8B010(v243, v242);
        goto LABEL_243;
      }

      if (v236 == 5)
      {
        goto LABEL_205;
      }

      v249 = v341;
      sub_1D6E8AF40(v362, v341, type metadata accessor for PuzzleStatistic);
      v250 = [*v249 identifier];
      v337 = sub_1D726207C();
      v252 = v251;

      sub_1D6E8AFA8(v249 + *(v346 + 20), v342, type metadata accessor for PuzzleStatisticCategory);
      v253 = swift_getEnumCaseMultiPayload();
      v254 = v332;
      if (v253 > 1)
      {
        if (v253 != 2)
        {
          sub_1D6E8B010(v342, type metadata accessor for PuzzleStatisticCategory);
          v256 = 0x53646570756F7267;
          v261 = 0xEC00000073746174;
LABEL_241:
          v367 = v337;
          v368 = v252;

          MEMORY[0x1DA6F9910](v256, v261);

          v239 = v367;
          v238 = v368;
          v242 = type metadata accessor for PuzzleStatistic;
          v243 = v341;
          goto LABEL_242;
        }

        sub_1D6E8B010(v342, type metadata accessor for PuzzleStatisticCategory);
        v256 = 0xD000000000000015;
        v257 = &v360;
      }

      else
      {
        if (v253)
        {
          v258 = v316;
          sub_1D6E8AF40(v342, v316, type metadata accessor for PuzzleStatisticDifficultyLevelValue);
          sub_1D6E8AFA8(v258, v254, type metadata accessor for PuzzleStatisticValue);
          if (swift_getEnumCaseMultiPayload() == 3)
          {
            v259 = type metadata accessor for PuzzleStatisticDifficultyLevelValue;
            v260 = v258;
          }

          else
          {
            sub_1D6E8B010(v254, type metadata accessor for PuzzleStatisticValue);
            v262 = v313;
            sub_1D6E8AFA8(v258, v313, type metadata accessor for PuzzleStatisticValue);
            if (swift_getEnumCaseMultiPayload() == 4)
            {
              sub_1D6E8B010(v258, type metadata accessor for PuzzleStatisticDifficultyLevelValue);
              goto LABEL_237;
            }

            sub_1D6E8B010(v262, type metadata accessor for PuzzleStatisticValue);
            sub_1D6E8AFA8(v258, v241, type metadata accessor for PuzzleStatisticValue);
            if (swift_getEnumCaseMultiPayload() == 7)
            {
              sub_1D6E8B010(v258, type metadata accessor for PuzzleStatisticDifficultyLevelValue);
LABEL_233:
              v256 = 0xD00000000000001DLL;
              v257 = &v356;
              goto LABEL_240;
            }

            sub_1D6E8B010(v241, type metadata accessor for PuzzleStatisticValue);
            sub_1D6E8AFA8(v258, v311, type metadata accessor for PuzzleStatisticValue);
            sub_1D6E8B010(v258, type metadata accessor for PuzzleStatisticDifficultyLevelValue);
            if (swift_getEnumCaseMultiPayload() == 8)
            {
LABEL_239:
              v256 = 0xD00000000000001DLL;
              v257 = &v354;
              goto LABEL_240;
            }

            v259 = type metadata accessor for PuzzleStatisticValue;
            v260 = v311;
          }

          sub_1D6E8B010(v260, v259);
        }

        else
        {
          sub_1D6E8AF40(v342, v321, type metadata accessor for PuzzleStatisticValue);
          v255 = swift_getEnumCaseMultiPayload();
          if (v255 > 3)
          {
            if (v255 > 5)
            {
              if (v255 != 6)
              {
                if (v255 != 7)
                {
                  goto LABEL_239;
                }

                goto LABEL_233;
              }

              sub_1D6E8B010(v321, type metadata accessor for PuzzleStatisticValue);
              v302 = 0x6E6572727563;
LABEL_307:
              v256 = v302 & 0xFFFFFFFFFFFFLL | 0x5374000000000000;
              v261 = 0xED00006B61657274;
              goto LABEL_241;
            }

            if (v255 != 4)
            {
              sub_1D6E8B010(v321, type metadata accessor for PuzzleStatisticValue);
              v302 = 0x7365676E6F6CLL;
              goto LABEL_307;
            }

LABEL_237:
            v256 = 0xD00000000000001CLL;
            v257 = &v357;
            goto LABEL_240;
          }

          if (v255 <= 1)
          {
            if (v255)
            {
              v256 = 0x5373656C7A7A7570;
            }

            else
            {
              v256 = 0x74615265766C6F73;
            }

            if (v255)
            {
              v261 = 0xED00006465766C6FLL;
            }

            else
            {
              v261 = 0xE900000000000065;
            }

            goto LABEL_241;
          }

          if (v255 == 2)
          {
            v256 = 0x5374636566726570;
            v261 = 0xED00006465766C6FLL;
            goto LABEL_241;
          }
        }

        v256 = 0xD00000000000001CLL;
        v257 = &v359;
      }

LABEL_240:
      v261 = *(v257 - 32);
      goto LABEL_241;
    }

    if (v236 <= 1)
    {
      if (!v236)
      {
        goto LABEL_205;
      }

      goto LABEL_207;
    }

    if (v236 == 3)
    {
      v237 = v345;
      sub_1D6E8AF40(v362, v345, type metadata accessor for FormatWebEmbed.Resolved);
      v239 = *v237;
      v238 = *(v237 + 8);

      v240 = type metadata accessor for FormatWebEmbed.Resolved;
      goto LABEL_198;
    }

LABEL_205:
    v244 = [*v362 identifier];
    v239 = sub_1D726207C();
    v238 = v245;
    swift_unknownObjectRelease();

LABEL_243:
    v263 = *v364;
    if (!*(*v364 + 16))
    {
      goto LABEL_186;
    }

    v264 = sub_1D5B69D90(v239, v238);
    v266 = v265;

    if ((v266 & 1) == 0)
    {
      goto LABEL_187;
    }

    v267 = *(*(v263 + 56) + 8 * v264);
    sub_1D6E8AFA8(v365, v360, type metadata accessor for FormatContentSlotItemObject.Resolved);
    v268 = swift_getEnumCaseMultiPayload();
    if (v268 > 4)
    {
      if (v268 > 6)
      {
        if (v268 == 7)
        {
LABEL_262:
          v277 = *v360;
          v278 = [*v360 identifier];
          v271 = sub_1D726207C();
          v270 = v279;

          goto LABEL_298;
        }

        if (v268 != 8)
        {
          v271 = *v360;
          v270 = *(v360 + 8);
          goto LABEL_298;
        }

        v269 = v347;
        sub_1D6E8AF40(v360, v347, type metadata accessor for FormatCustomItem.Resolved);
        v271 = *v269;
        v270 = *(v269 + 8);

        v272 = type metadata accessor for FormatCustomItem.Resolved;
LABEL_253:
        v273 = v272;
        v274 = v269;
LABEL_297:
        sub_1D6E8B010(v274, v273);
        goto LABEL_298;
      }

      if (v268 == 5)
      {
        goto LABEL_260;
      }

      v280 = v339;
      sub_1D6E8AF40(v360, v339, type metadata accessor for PuzzleStatistic);
      v281 = [*v280 identifier];
      v337 = sub_1D726207C();
      v283 = v282;

      sub_1D6E8AFA8(v280 + *(v346 + 20), v338, type metadata accessor for PuzzleStatisticCategory);
      v284 = swift_getEnumCaseMultiPayload();
      v285 = v330;
      if (v284 > 1)
      {
        if (v284 != 2)
        {
          sub_1D6E8B010(v338, type metadata accessor for PuzzleStatisticCategory);
          v287 = 0x53646570756F7267;
          v292 = 0xEC00000073746174;
LABEL_296:
          v367 = v337;
          v368 = v283;

          MEMORY[0x1DA6F9910](v287, v292);

          v271 = v367;
          v270 = v368;
          v273 = type metadata accessor for PuzzleStatistic;
          v274 = v339;
          goto LABEL_297;
        }

        sub_1D6E8B010(v338, type metadata accessor for PuzzleStatisticCategory);
        v287 = 0xD000000000000015;
        v288 = &v360;
      }

      else
      {
        if (v284)
        {
          v289 = v315;
          sub_1D6E8AF40(v338, v315, type metadata accessor for PuzzleStatisticDifficultyLevelValue);
          sub_1D6E8AFA8(v289, v285, type metadata accessor for PuzzleStatisticValue);
          if (swift_getEnumCaseMultiPayload() == 3)
          {
            v290 = type metadata accessor for PuzzleStatisticDifficultyLevelValue;
            v291 = v289;
          }

          else
          {
            sub_1D6E8B010(v285, type metadata accessor for PuzzleStatisticValue);
            v293 = v310;
            sub_1D6E8AFA8(v289, v310, type metadata accessor for PuzzleStatisticValue);
            if (swift_getEnumCaseMultiPayload() == 4)
            {
              sub_1D6E8B010(v289, type metadata accessor for PuzzleStatisticDifficultyLevelValue);
              goto LABEL_292;
            }

            sub_1D6E8B010(v293, type metadata accessor for PuzzleStatisticValue);
            v294 = v309;
            sub_1D6E8AFA8(v289, v309, type metadata accessor for PuzzleStatisticValue);
            if (swift_getEnumCaseMultiPayload() == 7)
            {
              sub_1D6E8B010(v289, type metadata accessor for PuzzleStatisticDifficultyLevelValue);
LABEL_288:
              v287 = 0xD00000000000001DLL;
              v288 = &v356;
              goto LABEL_295;
            }

            sub_1D6E8B010(v294, type metadata accessor for PuzzleStatisticValue);
            sub_1D6E8AFA8(v289, v308, type metadata accessor for PuzzleStatisticValue);
            sub_1D6E8B010(v289, type metadata accessor for PuzzleStatisticDifficultyLevelValue);
            if (swift_getEnumCaseMultiPayload() == 8)
            {
LABEL_294:
              v287 = 0xD00000000000001DLL;
              v288 = &v354;
              goto LABEL_295;
            }

            v290 = type metadata accessor for PuzzleStatisticValue;
            v291 = v308;
          }

          sub_1D6E8B010(v291, v290);
        }

        else
        {
          sub_1D6E8AF40(v338, v320, type metadata accessor for PuzzleStatisticValue);
          v286 = swift_getEnumCaseMultiPayload();
          if (v286 > 3)
          {
            if (v286 > 5)
            {
              if (v286 != 6)
              {
                if (v286 != 7)
                {
                  goto LABEL_294;
                }

                goto LABEL_288;
              }

              sub_1D6E8B010(v320, type metadata accessor for PuzzleStatisticValue);
              v303 = 0x6E6572727563;
LABEL_310:
              v287 = v303 & 0xFFFFFFFFFFFFLL | 0x5374000000000000;
              v292 = 0xED00006B61657274;
              goto LABEL_296;
            }

            if (v286 != 4)
            {
              sub_1D6E8B010(v320, type metadata accessor for PuzzleStatisticValue);
              v303 = 0x7365676E6F6CLL;
              goto LABEL_310;
            }

LABEL_292:
            v287 = 0xD00000000000001CLL;
            v288 = &v357;
            goto LABEL_295;
          }

          if (v286 <= 1)
          {
            if (v286)
            {
              v287 = 0x5373656C7A7A7570;
            }

            else
            {
              v287 = 0x74615265766C6F73;
            }

            if (v286)
            {
              v292 = 0xED00006465766C6FLL;
            }

            else
            {
              v292 = 0xE900000000000065;
            }

            goto LABEL_296;
          }

          if (v286 == 2)
          {
            v287 = 0x5374636566726570;
            v292 = 0xED00006465766C6FLL;
            goto LABEL_296;
          }
        }

        v287 = 0xD00000000000001CLL;
        v288 = &v359;
      }

LABEL_295:
      v292 = *(v288 - 32);
      goto LABEL_296;
    }

    if (v268 <= 1)
    {
      if (!v268)
      {
        goto LABEL_260;
      }

      goto LABEL_262;
    }

    if (v268 == 3)
    {
      v269 = v345;
      sub_1D6E8AF40(v360, v345, type metadata accessor for FormatWebEmbed.Resolved);
      v271 = *v269;
      v270 = *(v269 + 8);

      v272 = type metadata accessor for FormatWebEmbed.Resolved;
      goto LABEL_253;
    }

LABEL_260:
    v275 = [*v360 identifier];
    v271 = sub_1D726207C();
    v270 = v276;
    swift_unknownObjectRelease();

LABEL_298:
    v295 = *v364;
    if (!*(*v364 + 16))
    {
LABEL_186:

LABEL_187:
      sub_1D6E8B010(v365, type metadata accessor for FormatContentSlotItemResolution);
      sub_1D6E8B010(v361, type metadata accessor for FormatContentSlotItemResolution);
LABEL_188:
      v118 = v354 + 1;
      v231 = v350 + v334;
      v232 = v349 - 1;
      v233 = v348 + v334;
      a4 = v335;
      if (v354 + 1 != v335)
      {
        continue;
      }

      v6 = v323;
      a3 = v333;
      if (v335 < v331)
      {
        goto LABEL_345;
      }

LABEL_136:
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v108 = sub_1D698BA94(0, *(v108 + 2) + 1, 1, v108);
      }

      v184 = *(v108 + 2);
      v183 = *(v108 + 3);
      v185 = v184 + 1;
      if (v184 >= v183 >> 1)
      {
        v108 = sub_1D698BA94((v183 > 1), v184 + 1, 1, v108);
      }

      *(v108 + 2) = v185;
      v186 = &v108[16 * v184];
      *(v186 + 4) = v331;
      *(v186 + 5) = a4;
      v107 = a4;
      a4 = *v326;
      if (!*v326)
      {
        goto LABEL_355;
      }

      if (v184)
      {
        while (2)
        {
          v187 = v185 - 1;
          if (v185 >= 4)
          {
            v192 = &v108[16 * v185 + 32];
            v193 = *(v192 - 64);
            v194 = *(v192 - 56);
            v198 = __OFSUB__(v194, v193);
            v195 = v194 - v193;
            if (v198)
            {
              goto LABEL_332;
            }

            v197 = *(v192 - 48);
            v196 = *(v192 - 40);
            v198 = __OFSUB__(v196, v197);
            v190 = v196 - v197;
            v191 = v198;
            if (v198)
            {
              goto LABEL_333;
            }

            v199 = &v108[16 * v185];
            v201 = *v199;
            v200 = *(v199 + 1);
            v198 = __OFSUB__(v200, v201);
            v202 = v200 - v201;
            if (v198)
            {
              goto LABEL_335;
            }

            v198 = __OFADD__(v190, v202);
            v203 = v190 + v202;
            if (v198)
            {
              goto LABEL_338;
            }

            if (v203 >= v195)
            {
              v221 = &v108[16 * v187 + 32];
              v223 = *v221;
              v222 = *(v221 + 1);
              v198 = __OFSUB__(v222, v223);
              v224 = v222 - v223;
              if (v198)
              {
                goto LABEL_342;
              }

              if (v190 < v224)
              {
                v187 = v185 - 2;
              }
            }

            else
            {
LABEL_155:
              if (v191)
              {
                goto LABEL_334;
              }

              v204 = &v108[16 * v185];
              v206 = *v204;
              v205 = *(v204 + 1);
              v207 = __OFSUB__(v205, v206);
              v208 = v205 - v206;
              v209 = v207;
              if (v207)
              {
                goto LABEL_337;
              }

              v210 = &v108[16 * v187 + 32];
              v212 = *v210;
              v211 = *(v210 + 1);
              v198 = __OFSUB__(v211, v212);
              v213 = v211 - v212;
              if (v198)
              {
                goto LABEL_340;
              }

              if (__OFADD__(v208, v213))
              {
                goto LABEL_341;
              }

              if (v208 + v213 < v190)
              {
                goto LABEL_169;
              }

              if (v190 < v213)
              {
                v187 = v185 - 2;
              }
            }
          }

          else
          {
            if (v185 == 3)
            {
              v188 = *(v108 + 4);
              v189 = *(v108 + 5);
              v198 = __OFSUB__(v189, v188);
              v190 = v189 - v188;
              v191 = v198;
              goto LABEL_155;
            }

            v214 = &v108[16 * v185];
            v216 = *v214;
            v215 = *(v214 + 1);
            v198 = __OFSUB__(v215, v216);
            v208 = v215 - v216;
            v209 = v198;
LABEL_169:
            if (v209)
            {
              goto LABEL_336;
            }

            v217 = &v108[16 * v187];
            v219 = *(v217 + 4);
            v218 = *(v217 + 5);
            v198 = __OFSUB__(v218, v219);
            v220 = v218 - v219;
            if (v198)
            {
              goto LABEL_339;
            }

            if (v220 < v208)
            {
              break;
            }
          }

          v225 = v187 - 1;
          if (v187 - 1 >= v185)
          {
            __break(1u);
LABEL_330:
            __break(1u);
LABEL_331:
            __break(1u);
LABEL_332:
            __break(1u);
LABEL_333:
            __break(1u);
LABEL_334:
            __break(1u);
LABEL_335:
            __break(1u);
LABEL_336:
            __break(1u);
LABEL_337:
            __break(1u);
LABEL_338:
            __break(1u);
LABEL_339:
            __break(1u);
LABEL_340:
            __break(1u);
LABEL_341:
            __break(1u);
LABEL_342:
            __break(1u);
LABEL_343:
            __break(1u);
LABEL_344:
            __break(1u);
LABEL_345:
            __break(1u);
LABEL_346:
            __break(1u);
LABEL_347:
            __break(1u);
            goto LABEL_348;
          }

          if (!*a3)
          {
            goto LABEL_352;
          }

          v226 = *&v108[16 * v225 + 32];
          v227 = *&v108[16 * v187 + 40];
          sub_1D6E8977C(*a3 + *(v351 + 72) * v226, *a3 + *(v351 + 72) * *&v108[16 * v187 + 32], *a3 + *(v351 + 72) * v227, a4, v364);
          if (v6)
          {
            goto LABEL_328;
          }

          if (v227 < v226)
          {
            goto LABEL_330;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v108 = sub_1D62FF50C(v108);
          }

          if (v225 >= *(v108 + 2))
          {
            goto LABEL_331;
          }

          v228 = &v108[16 * v225];
          *(v228 + 4) = v226;
          *(v228 + 5) = v227;
          v369 = v108;
          sub_1D62FF480(v187);
          v108 = v369;
          v185 = *(v369 + 2);
          if (v185 <= 1)
          {
            break;
          }

          continue;
        }
      }

      v106 = a3[1];
      if (v107 >= v106)
      {
        goto LABEL_316;
      }

      goto LABEL_4;
    }

    break;
  }

  v296 = sub_1D5B69D90(v271, v270);
  v298 = v297;

  if ((v298 & 1) == 0)
  {
    goto LABEL_187;
  }

  v299 = *(*(v295 + 56) + 8 * v296);
  sub_1D6E8B010(v365, type metadata accessor for FormatContentSlotItemResolution);
  sub_1D6E8B010(v361, type metadata accessor for FormatContentSlotItemResolution);
  if (v299 >= v267)
  {
    goto LABEL_188;
  }

  if (v357)
  {
    v300 = v358;
    sub_1D6E8AF40(v234, v358, type metadata accessor for FormatContentSlotItemResolution);
    swift_arrayInitWithTakeFrontToBack();
    sub_1D6E8AF40(v300, v231, type metadata accessor for FormatContentSlotItemResolution);
    v231 += v356;
    v234 += v356;
    if (__CFADD__(v232++, 1))
    {
      goto LABEL_188;
    }

    goto LABEL_190;
  }

  __break(1u);
LABEL_352:
  __break(1u);
LABEL_353:
  __break(1u);
LABEL_354:
  __break(1u);
LABEL_355:
  __break(1u);
LABEL_356:
  __break(1u);
}

void sub_1D6E886C8(unint64_t *a1, uint64_t a2, char *a3, uint64_t a4)
{
  v6 = v5;
  v183 = a1;
  v208 = sub_1D725891C();
  v9 = *(v208 - 8);
  MEMORY[0x1EEE9AC00](v208, v10);
  v200 = &v177 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v199 = &v177 - v14;
  sub_1D5BA8044();
  v206 = v15;
  MEMORY[0x1EEE9AC00](v15, v16);
  v209 = &v177 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18, v19);
  v194 = &v177 - v20;
  MEMORY[0x1EEE9AC00](v21, v22);
  v179 = &v177 - v23;
  v207 = type metadata accessor for FormatSlotItemSort.SeenStateItem();
  v191 = *(v207 - 8);
  MEMORY[0x1EEE9AC00](v207, v24);
  v186 = &v177 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26, v27);
  v204 = &v177 - v28;
  MEMORY[0x1EEE9AC00](v29, v30);
  v211 = &v177 - v31;
  MEMORY[0x1EEE9AC00](v32, v33);
  v210 = &v177 - v34;
  MEMORY[0x1EEE9AC00](v35, v36);
  v197 = &v177 - v37;
  MEMORY[0x1EEE9AC00](v38, v39);
  v196 = &v177 - v40;
  MEMORY[0x1EEE9AC00](v41, v42);
  v181 = &v177 - v43;
  MEMORY[0x1EEE9AC00](v44, v45);
  v180 = &v177 - v46;
  v47 = *(a3 + 1);
  v187 = a3;
  if (v47 < 1)
  {
    v49 = MEMORY[0x1E69E7CC0];
LABEL_115:
    v4 = *v183;
    if (!*v183)
    {
      goto LABEL_154;
    }

    v9 = v49;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v172 = v9;
LABEL_118:
      v212 = v172;
      v9 = *(v172 + 2);
      if (v9 >= 2)
      {
        do
        {
          v173 = *a3;
          if (!*a3)
          {
            goto LABEL_152;
          }

          v174 = *&v172[16 * v9];
          a3 = v172;
          v175 = *&v172[16 * v9 + 24];
          sub_1D6E8A3E4(v173 + *(v191 + 72) * v174, v173 + *(v191 + 72) * *&v172[16 * v9 + 16], v173 + *(v191 + 72) * v175, v4);
          if (v6)
          {
            break;
          }

          if (v175 < v174)
          {
            goto LABEL_141;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            a3 = sub_1D62FF50C(a3);
          }

          if (v9 - 2 >= *(a3 + 2))
          {
            goto LABEL_142;
          }

          v176 = &a3[16 * v9];
          *v176 = v174;
          *(v176 + 1) = v175;
          v212 = a3;
          sub_1D62FF480(v9 - 1);
          v172 = v212;
          v9 = *(v212 + 2);
          a3 = v187;
        }

        while (v9 > 1);
      }

LABEL_126:

      return;
    }

LABEL_148:
    v172 = sub_1D62FF50C(v9);
    goto LABEL_118;
  }

  v48 = 0;
  v205 = (v9 + 48);
  v198 = (v9 + 32);
  v201 = (v9 + 8);
  v49 = MEMORY[0x1E69E7CC0];
  v182 = a4;
  while (1)
  {
    v50 = v48++;
    v192 = v49;
    v184 = v50;
    if (v48 < v47)
    {
      v189 = v47;
      v4 = *a3;
      v51 = *(v191 + 72);
      v195 = v48;
      v52 = v180;
      sub_1D6E8AFA8(v4 + v51 * v48, v180, type metadata accessor for FormatSlotItemSort.SeenStateItem);
      v193 = v51;
      v53 = v181;
      sub_1D6E8AFA8(v4 + v51 * v50, v181, type metadata accessor for FormatSlotItemSort.SeenStateItem);
      v54 = *(v207 + 20);
      v55 = *(v206 + 48);
      v56 = v52 + v54;
      v57 = v179;
      sub_1D6E8AFA8(v56, v179, sub_1D5B5B2A0);
      sub_1D6E8AFA8(v53 + v54, v57 + v55, sub_1D5B5B2A0);
      v58 = *v205;
      v59 = v208;
      v60 = (*v205)(v57, 1, v208);
      v188 = v58;
      v61 = v58(v57 + v55, 1, v59);
      v178 = v6;
      if (v60 == 1)
      {
        if (v61 != 1)
        {
          sub_1D6E8B010(v179 + v55, sub_1D5B5B2A0);
        }

        LODWORD(v190) = 1;
      }

      else if (v61 == 1)
      {
        (*v201)(v179, v208);
        LODWORD(v190) = 0;
      }

      else
      {
        v62 = v199;
        v63 = *v198;
        v64 = v179;
        v65 = v208;
        (*v198)(v199, v179, v208);
        v66 = v64 + v55;
        v67 = v200;
        v63(v200, v66, v65);
        LODWORD(v190) = sub_1D725883C();
        v68 = *v201;
        (*v201)(v67, v65);
        v68(v62, v65);
      }

      v9 = type metadata accessor for FormatSlotItemSort.SeenStateItem;
      sub_1D6E8B010(v181, type metadata accessor for FormatSlotItemSort.SeenStateItem);
      sub_1D6E8B010(v180, type metadata accessor for FormatSlotItemSort.SeenStateItem);
      v69 = v50 + 2;
      v70 = v193 * (v50 + 2);
      v71 = v4 + v70;
      v72 = v195;
      v73 = v193 * v195;
      v74 = v4 + v193 * v195;
      do
      {
        v75 = v69;
        a3 = v72;
        v76 = v73;
        v6 = v70;
        if (v69 >= v189)
        {
          break;
        }

        v195 = v72;
        v202 = v70;
        v203 = v69;
        v77 = v196;
        sub_1D6E8AFA8(v71, v196, type metadata accessor for FormatSlotItemSort.SeenStateItem);
        v78 = v197;
        sub_1D6E8AFA8(v74, v197, type metadata accessor for FormatSlotItemSort.SeenStateItem);
        v79 = *(v207 + 20);
        v80 = *(v206 + 48);
        v81 = v77 + v79;
        v82 = v194;
        sub_1D6E8AFA8(v81, v194, sub_1D5B5B2A0);
        sub_1D6E8AFA8(v78 + v79, v82 + v80, sub_1D5B5B2A0);
        v83 = v208;
        v84 = v188;
        v85 = v188(v82, 1, v208);
        v86 = v84(v82 + v80, 1, v83);
        if (v85 == 1)
        {
          if (v86 != 1)
          {
            sub_1D6E8B010(v194 + v80, sub_1D5B5B2A0);
          }

          v9 = 1;
        }

        else if (v86 == 1)
        {
          (*v201)(v194, v208);
          v9 = 0;
        }

        else
        {
          v87 = v199;
          v88 = *v198;
          v89 = v194;
          v90 = v208;
          (*v198)(v199, v194, v208);
          v91 = v89 + v80;
          v92 = v200;
          v88(v200, v91, v90);
          v9 = sub_1D725883C();
          v93 = *v201;
          (*v201)(v92, v90);
          v93(v87, v90);
        }

        v6 = v202;
        v75 = v203;
        a3 = v195;
        v4 = type metadata accessor for FormatSlotItemSort.SeenStateItem;
        sub_1D6E8B010(v197, type metadata accessor for FormatSlotItemSort.SeenStateItem);
        sub_1D6E8B010(v196, type metadata accessor for FormatSlotItemSort.SeenStateItem);
        v69 = v75 + 1;
        v71 += v193;
        v74 += v193;
        v72 = a3 + 1;
        v73 = v76 + v193;
        v70 = v6 + v193;
      }

      while (((v190 ^ v9) & 1) == 0);
      if (v190)
      {
        v50 = v184;
        a4 = v182;
        if (v75 < v184)
        {
          goto LABEL_145;
        }

        if (v184 < v75)
        {
          v4 = v184 * v193;
          v94 = v184;
          do
          {
            if (v94 != a3)
            {
              v96 = *v187;
              if (!*v187)
              {
                goto LABEL_151;
              }

              v9 = v96 + v4;
              sub_1D6E8AF40(v96 + v4, v186, type metadata accessor for FormatSlotItemSort.SeenStateItem);
              if (v4 < v76 || v9 >= v96 + v6)
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v4 != v76)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              sub_1D6E8AF40(v186, v96 + v76, type metadata accessor for FormatSlotItemSort.SeenStateItem);
              v50 = v184;
            }

            ++v94;
            v76 -= v193;
            v6 -= v193;
            v4 += v193;
          }

          while (v94 < a3--);
        }

        v48 = v75;
        v6 = v178;
        a3 = v187;
      }

      else
      {
        v48 = v75;
        v6 = v178;
        a3 = v187;
        a4 = v182;
        v50 = v184;
      }
    }

    v97 = *(a3 + 1);
    if (v48 < v97)
    {
      if (__OFSUB__(v48, v50))
      {
        goto LABEL_144;
      }

      if (v48 - v50 < a4)
      {
        break;
      }
    }

LABEL_61:
    if (v48 < v50)
    {
      goto LABEL_143;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v49 = v192;
    }

    else
    {
      v49 = sub_1D698BA94(0, *(v192 + 2) + 1, 1, v192);
    }

    v4 = *(v49 + 2);
    v124 = *(v49 + 3);
    v125 = v4 + 1;
    if (v4 >= v124 >> 1)
    {
      v49 = sub_1D698BA94((v124 > 1), v4 + 1, 1, v49);
    }

    *(v49 + 2) = v125;
    v126 = &v49[16 * v4];
    *(v126 + 4) = v50;
    *(v126 + 5) = v48;
    if (!*v183)
    {
      goto LABEL_153;
    }

    if (v4)
    {
      v127 = *v183;
      while (1)
      {
        v128 = v125 - 1;
        if (v125 >= 4)
        {
          break;
        }

        if (v125 == 3)
        {
          v129 = *(v49 + 4);
          v130 = *(v49 + 5);
          v139 = __OFSUB__(v130, v129);
          v131 = v130 - v129;
          v132 = v139;
LABEL_82:
          if (v132)
          {
            goto LABEL_132;
          }

          v145 = &v49[16 * v125];
          v147 = *v145;
          v146 = *(v145 + 1);
          v148 = __OFSUB__(v146, v147);
          v149 = v146 - v147;
          v150 = v148;
          if (v148)
          {
            goto LABEL_135;
          }

          v151 = &v49[16 * v128 + 32];
          v153 = *v151;
          v152 = *(v151 + 1);
          v139 = __OFSUB__(v152, v153);
          v154 = v152 - v153;
          if (v139)
          {
            goto LABEL_138;
          }

          if (__OFADD__(v149, v154))
          {
            goto LABEL_139;
          }

          if (v149 + v154 >= v131)
          {
            if (v131 < v154)
            {
              v128 = v125 - 2;
            }

            goto LABEL_103;
          }

          goto LABEL_96;
        }

        v155 = &v49[16 * v125];
        v157 = *v155;
        v156 = *(v155 + 1);
        v139 = __OFSUB__(v156, v157);
        v149 = v156 - v157;
        v150 = v139;
LABEL_96:
        if (v150)
        {
          goto LABEL_134;
        }

        v158 = &v49[16 * v128];
        v160 = *(v158 + 4);
        v159 = *(v158 + 5);
        v139 = __OFSUB__(v159, v160);
        v161 = v159 - v160;
        if (v139)
        {
          goto LABEL_137;
        }

        if (v161 < v149)
        {
          goto LABEL_3;
        }

LABEL_103:
        v4 = v128 - 1;
        if (v128 - 1 >= v125)
        {
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
LABEL_137:
          __break(1u);
LABEL_138:
          __break(1u);
LABEL_139:
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
LABEL_145:
          __break(1u);
LABEL_146:
          __break(1u);
          goto LABEL_147;
        }

        v166 = *a3;
        if (!*a3)
        {
          goto LABEL_150;
        }

        v167 = v48;
        v168 = a3;
        a3 = v49;
        v9 = *&v49[16 * v4 + 32];
        v169 = *&v49[16 * v128 + 40];
        sub_1D6E8A3E4(v166 + *(v191 + 72) * v9, v166 + *(v191 + 72) * *&v49[16 * v128 + 32], v166 + *(v191 + 72) * v169, v127);
        if (v6)
        {
          goto LABEL_126;
        }

        if (v169 < v9)
        {
          goto LABEL_128;
        }

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v170 = a3;
        }

        else
        {
          v170 = sub_1D62FF50C(a3);
        }

        if (v4 >= *(v170 + 2))
        {
          goto LABEL_129;
        }

        a3 = v168;
        v171 = &v170[16 * v4];
        *(v171 + 4) = v9;
        *(v171 + 5) = v169;
        v212 = v170;
        v9 = &v212;
        sub_1D62FF480(v128);
        v49 = v212;
        v125 = *(v212 + 2);
        v48 = v167;
        if (v125 <= 1)
        {
          goto LABEL_3;
        }
      }

      v133 = &v49[16 * v125 + 32];
      v134 = *(v133 - 64);
      v135 = *(v133 - 56);
      v139 = __OFSUB__(v135, v134);
      v136 = v135 - v134;
      if (v139)
      {
        goto LABEL_130;
      }

      v138 = *(v133 - 48);
      v137 = *(v133 - 40);
      v139 = __OFSUB__(v137, v138);
      v131 = v137 - v138;
      v132 = v139;
      if (v139)
      {
        goto LABEL_131;
      }

      v140 = &v49[16 * v125];
      v142 = *v140;
      v141 = *(v140 + 1);
      v139 = __OFSUB__(v141, v142);
      v143 = v141 - v142;
      if (v139)
      {
        goto LABEL_133;
      }

      v139 = __OFADD__(v131, v143);
      v144 = v131 + v143;
      if (v139)
      {
        goto LABEL_136;
      }

      if (v144 >= v136)
      {
        v162 = &v49[16 * v128 + 32];
        v164 = *v162;
        v163 = *(v162 + 1);
        v139 = __OFSUB__(v163, v164);
        v165 = v163 - v164;
        if (v139)
        {
          goto LABEL_140;
        }

        if (v131 < v165)
        {
          v128 = v125 - 2;
        }

        goto LABEL_103;
      }

      goto LABEL_82;
    }

LABEL_3:
    v47 = *(a3 + 1);
    a4 = v182;
    if (v48 >= v47)
    {
      goto LABEL_115;
    }
  }

  v98 = (v50 + a4);
  if (__OFADD__(v50, a4))
  {
    goto LABEL_146;
  }

  if (v98 >= v97)
  {
    v98 = *(a3 + 1);
  }

  if (v98 < v50)
  {
LABEL_147:
    __break(1u);
    goto LABEL_148;
  }

  if (v48 == v98)
  {
    goto LABEL_61;
  }

  v178 = v6;
  v99 = *a3;
  v100 = *(v191 + 72);
  v101 = *a3 + v100 * (v48 - 1);
  v202 = -v100;
  v203 = v99;
  v102 = v50 - v48;
  v185 = v100;
  v103 = v99 + v48 * v100;
  v9 = v207;
  v188 = v98;
LABEL_49:
  v195 = v48;
  v189 = v103;
  v190 = v102;
  v104 = v102;
  v193 = v101;
  while (1)
  {
    v105 = v210;
    sub_1D6E8AFA8(v103, v210, type metadata accessor for FormatSlotItemSort.SeenStateItem);
    v106 = v211;
    sub_1D6E8AFA8(v101, v211, type metadata accessor for FormatSlotItemSort.SeenStateItem);
    v107 = *(v9 + 20);
    v108 = *(v206 + 48);
    v109 = v105 + v107;
    v110 = v209;
    sub_1D6E8AFA8(v109, v209, sub_1D5B5B2A0);
    sub_1D6E8AFA8(v106 + v107, v110 + v108, sub_1D5B5B2A0);
    v111 = *v205;
    v112 = v208;
    v113 = (*v205)(v110, 1, v208);
    v114 = v111(v110 + v108, 1, v112);
    if (v113 == 1)
    {
      if (v114 != 1)
      {
        sub_1D6E8B010(v209 + v108, sub_1D5B5B2A0);
      }

      sub_1D6E8B010(v211, type metadata accessor for FormatSlotItemSort.SeenStateItem);
      sub_1D6E8B010(v210, type metadata accessor for FormatSlotItemSort.SeenStateItem);
      v9 = v207;
    }

    else
    {
      if (v114 == 1)
      {
        (*v201)(v209, v208);
        v4 = type metadata accessor for FormatSlotItemSort.SeenStateItem;
        sub_1D6E8B010(v211, type metadata accessor for FormatSlotItemSort.SeenStateItem);
        sub_1D6E8B010(v210, type metadata accessor for FormatSlotItemSort.SeenStateItem);
        v9 = v207;
LABEL_48:
        v48 = v195 + 1;
        v101 = v193 + v185;
        v102 = v190 - 1;
        v103 = v189 + v185;
        if ((v195 + 1) == v188)
        {
          v48 = v188;
          v6 = v178;
          a3 = v187;
          v50 = v184;
          goto LABEL_61;
        }

        goto LABEL_49;
      }

      v115 = v199;
      v116 = *v198;
      v117 = v208;
      v118 = v209;
      (*v198)(v199, v209, v208);
      v119 = v118 + v108;
      v120 = v200;
      v116(v200, v119, v117);
      v4 = sub_1D725883C();
      v121 = *v201;
      (*v201)(v120, v117);
      v121(v115, v117);
      sub_1D6E8B010(v211, type metadata accessor for FormatSlotItemSort.SeenStateItem);
      sub_1D6E8B010(v210, type metadata accessor for FormatSlotItemSort.SeenStateItem);
      v9 = v207;
      if ((v4 & 1) == 0)
      {
        goto LABEL_48;
      }
    }

    if (!v203)
    {
      break;
    }

    v4 = type metadata accessor for FormatSlotItemSort.SeenStateItem;
    v122 = v204;
    sub_1D6E8AF40(v103, v204, type metadata accessor for FormatSlotItemSort.SeenStateItem);
    swift_arrayInitWithTakeFrontToBack();
    sub_1D6E8AF40(v122, v101, type metadata accessor for FormatSlotItemSort.SeenStateItem);
    v101 += v202;
    v103 += v202;
    if (__CFADD__(v104++, 1))
    {
      goto LABEL_48;
    }
  }

  __break(1u);
LABEL_150:
  __break(1u);
LABEL_151:
  __break(1u);
LABEL_152:
  __break(1u);
LABEL_153:
  __break(1u);
LABEL_154:
  __break(1u);
}

void sub_1D6E8977C(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t *a5)
{
  v119 = a5;
  v9 = type metadata accessor for FormatCustomItem.Resolved();
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v110 = &v106 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for PuzzleStatistic();
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v109 = &v106 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for FormatWebEmbed.Resolved();
  MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v108 = &v106 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = type metadata accessor for FormatContentSlotItemObject.Resolved();
  MEMORY[0x1EEE9AC00](v117, v18);
  v114 = &v106 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = &v106 - v22;
  v116 = type metadata accessor for FormatContentSlotItemResolution();
  MEMORY[0x1EEE9AC00](v116, v24);
  v26 = &v106 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27, v28);
  v115 = &v106 - v29;
  MEMORY[0x1EEE9AC00](v30, v31);
  v120 = &v106 - v32;
  MEMORY[0x1EEE9AC00](v33, v34);
  v118 = &v106 - v35;
  v37 = *(v36 + 72);
  if (!v37)
  {
    __break(1u);
LABEL_116:
    __break(1u);
LABEL_117:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v37 == -1)
  {
    goto LABEL_116;
  }

  v38 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v37 == -1)
  {
    goto LABEL_117;
  }

  v39 = (a2 - a1) / v37;
  v123 = a1;
  v122 = a4;
  if (v39 >= v38 / v37)
  {
    v41 = v38 / v37 * v37;
    if (a4 < a2 || a2 + v41 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v74 = a4 + v41;
    if (v41 < 1)
    {
      v77 = a4 + v41;
      goto LABEL_113;
    }

    v75 = -v37;
    v76 = a4 + v41;
    v118 = v26;
    v77 = v74;
    v120 = v75;
    while (1)
    {
      v106 = v77;
      v78 = a2;
      v79 = a2 + v75;
      v112 = v78;
      v113 = v79;
      while (1)
      {
        if (v78 <= a1)
        {
          v123 = v78;
          v121 = v106;
          goto LABEL_114;
        }

        v80 = a3;
        v111 = v77;
        v81 = v76 + v75;
        v82 = v115;
        sub_1D6E8AFA8(v76 + v75, v115, type metadata accessor for FormatContentSlotItemResolution);
        sub_1D6E8AFA8(v79, v26, type metadata accessor for FormatContentSlotItemResolution);
        sub_1D6E8AFA8(v82, v114, type metadata accessor for FormatContentSlotItemObject.Resolved);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        if (EnumCaseMultiPayload > 4)
        {
          if (EnumCaseMultiPayload <= 6)
          {
            if (EnumCaseMultiPayload == 5)
            {
LABEL_84:
              v88 = [*v114 identifier];
              v86 = sub_1D726207C();
              v85 = v89;
              swift_unknownObjectRelease();

              goto LABEL_89;
            }

            v84 = v109;
            sub_1D6E8AF40(v114, v109, type metadata accessor for PuzzleStatistic);
            v86 = PuzzleStatistic.identifier.getter();
            v85 = v93;
            v87 = type metadata accessor for PuzzleStatistic;
          }

          else
          {
            if (EnumCaseMultiPayload == 7)
            {
              goto LABEL_86;
            }

            if (EnumCaseMultiPayload != 8)
            {
              v86 = *v114;
              v85 = *(v114 + 1);
              goto LABEL_89;
            }

            v84 = v110;
            sub_1D6E8AF40(v114, v110, type metadata accessor for FormatCustomItem.Resolved);
            v86 = *v84;
            v85 = *(v84 + 8);

            v87 = type metadata accessor for FormatCustomItem.Resolved;
          }
        }

        else
        {
          if (EnumCaseMultiPayload <= 1)
          {
            if (!EnumCaseMultiPayload)
            {
              goto LABEL_84;
            }

LABEL_86:
            v90 = *v114;
            v91 = [*v114 identifier];
            v86 = sub_1D726207C();
            v85 = v92;

            goto LABEL_89;
          }

          if (EnumCaseMultiPayload != 3)
          {
            goto LABEL_84;
          }

          v84 = v108;
          sub_1D6E8AF40(v114, v108, type metadata accessor for FormatWebEmbed.Resolved);
          v86 = *v84;
          v85 = *(v84 + 8);

          v87 = type metadata accessor for FormatWebEmbed.Resolved;
        }

        sub_1D6E8B010(v84, v87);
LABEL_89:
        v94 = *v119;
        if (!*(*v119 + 16))
        {

          goto LABEL_95;
        }

        v95 = sub_1D5B69D90(v86, v85);
        v97 = v96;

        if ((v97 & 1) == 0)
        {
          goto LABEL_95;
        }

        v98 = *(*(v94 + 56) + 8 * v95);
        v26 = v118;
        v99 = FormatContentSlotItemObject.Resolved.identifier.getter();
        v101 = *v119;
        if (*(*v119 + 16))
        {
          v107 = v98;
          v102 = sub_1D5B69D90(v99, v100);
          v104 = v103;

          if (v104)
          {
            v105 = *(*(v101 + 56) + 8 * v102) < v107;
LABEL_96:
            v26 = v118;
            goto LABEL_97;
          }

LABEL_95:
          v105 = 0;
          goto LABEL_96;
        }

        v105 = 0;
LABEL_97:
        a3 = v80 + v120;
        sub_1D6E8B010(v26, type metadata accessor for FormatContentSlotItemResolution);
        sub_1D6E8B010(v115, type metadata accessor for FormatContentSlotItemResolution);
        if (v105)
        {
          break;
        }

        v77 = v81;
        if (v80 < v76 || a3 >= v76)
        {
          swift_arrayInitWithTakeFrontToBack();
          v79 = v113;
        }

        else
        {
          v79 = v113;
          if (v80 != v76)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v76 = v81;
        v75 = v120;
        v78 = v112;
        if (v81 <= a4)
        {
          a2 = v112;
          goto LABEL_113;
        }
      }

      if (v80 < v112 || a3 >= v112)
      {
        a2 = v113;
        swift_arrayInitWithTakeFrontToBack();
        v77 = v111;
      }

      else
      {
        a2 = v113;
        v77 = v111;
        if (v80 != v112)
        {
          swift_arrayInitWithTakeBackToFront();
        }
      }

      v75 = v120;
      if (v76 <= a4)
      {
LABEL_113:
        v123 = a2;
        v121 = v77;
        goto LABEL_114;
      }
    }
  }

  v40 = v39 * v37;
  if (a4 < a1 || a1 + v40 <= a4)
  {
    swift_arrayInitWithTakeFrontToBack();
  }

  else if (a4 != a1)
  {
    swift_arrayInitWithTakeBackToFront();
  }

  v115 = a4 + v40;
  v121 = a4 + v40;
  if (v40 >= 1 && a2 < a3)
  {
    v113 = v37;
    v114 = v23;
    do
    {
      v43 = v118;
      sub_1D6E8AFA8(a2, v118, type metadata accessor for FormatContentSlotItemResolution);
      sub_1D6E8AFA8(a4, v120, type metadata accessor for FormatContentSlotItemResolution);
      sub_1D6E8AFA8(v43, v23, type metadata accessor for FormatContentSlotItemObject.Resolved);
      v44 = swift_getEnumCaseMultiPayload();
      if (v44 > 4)
      {
        if (v44 <= 6)
        {
          if (v44 == 5)
          {
LABEL_36:
            v53 = [*v23 identifier];
            v47 = sub_1D726207C();
            v46 = v54;
            swift_unknownObjectRelease();

            goto LABEL_41;
          }

          v58 = v109;
          sub_1D6E8AF40(v23, v109, type metadata accessor for PuzzleStatistic);
          v47 = PuzzleStatistic.identifier.getter();
          v46 = v59;
          v49 = type metadata accessor for PuzzleStatistic;
          v50 = v58;
          goto LABEL_40;
        }

        if (v44 == 7)
        {
          goto LABEL_38;
        }

        if (v44 != 8)
        {
          v47 = *v23;
          v46 = *(v23 + 1);
          goto LABEL_41;
        }

        v45 = v110;
        sub_1D6E8AF40(v23, v110, type metadata accessor for FormatCustomItem.Resolved);
        v47 = *v45;
        v46 = *(v45 + 8);

        v48 = type metadata accessor for FormatCustomItem.Resolved;
      }

      else
      {
        if (v44 <= 1)
        {
          if (!v44)
          {
            v51 = [*v23 identifier];
            v47 = sub_1D726207C();
            v46 = v52;
            swift_unknownObjectRelease();

            goto LABEL_41;
          }

LABEL_38:
          v55 = *v23;
          v56 = [*v23 identifier];
          v47 = sub_1D726207C();
          v46 = v57;

          goto LABEL_41;
        }

        if (v44 != 3)
        {
          goto LABEL_36;
        }

        v45 = v108;
        sub_1D6E8AF40(v23, v108, type metadata accessor for FormatWebEmbed.Resolved);
        v47 = *v45;
        v46 = *(v45 + 8);

        v48 = type metadata accessor for FormatWebEmbed.Resolved;
      }

      v49 = v48;
      v50 = v45;
LABEL_40:
      sub_1D6E8B010(v50, v49);
LABEL_41:
      v60 = *v119;
      if (!*(*v119 + 16))
      {
        goto LABEL_50;
      }

      v61 = sub_1D5B69D90(v47, v46);
      v63 = v62;

      if ((v63 & 1) == 0)
      {
        goto LABEL_51;
      }

      v64 = *(*(v60 + 56) + 8 * v61);
      v65 = FormatContentSlotItemObject.Resolved.identifier.getter();
      v67 = *v119;
      if (!*(*v119 + 16))
      {
LABEL_50:

LABEL_51:
        sub_1D6E8B010(v120, type metadata accessor for FormatContentSlotItemResolution);
        sub_1D6E8B010(v118, type metadata accessor for FormatContentSlotItemResolution);
LABEL_52:
        v72 = v113;
        v23 = v114;
        v73 = a4 + v113;
        if (a1 < a4 || a1 >= v73)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != a4)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        v122 = v73;
        a4 += v72;
        goto LABEL_58;
      }

      v68 = sub_1D5B69D90(v65, v66);
      v70 = v69;

      if ((v70 & 1) == 0)
      {
        goto LABEL_51;
      }

      v71 = *(*(v67 + 56) + 8 * v68);
      sub_1D6E8B010(v120, type metadata accessor for FormatContentSlotItemResolution);
      sub_1D6E8B010(v118, type metadata accessor for FormatContentSlotItemResolution);
      if (v71 >= v64)
      {
        goto LABEL_52;
      }

      v72 = v113;
      v23 = v114;
      if (a1 < a2 || a1 >= a2 + v113)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else if (a1 != a2)
      {
        swift_arrayInitWithTakeBackToFront();
      }

      a2 += v72;
LABEL_58:
      a1 += v72;
      v123 = a1;
    }

    while (a4 < v115 && a2 < a3);
  }

LABEL_114:
  sub_1D62FF598(&v123, &v122, &v121);
}

void sub_1D6E8A3E4(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v91 = a4;
  v100 = sub_1D725891C();
  v7 = *(v100 - 8);
  MEMORY[0x1EEE9AC00](v100, v8);
  v88 = &v84 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v87 = &v84 - v12;
  sub_1D5BA8044();
  v97 = v13;
  MEMORY[0x1EEE9AC00](v13, v14);
  v94 = (&v84 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v84 - v18;
  v101 = type metadata accessor for FormatSlotItemSort.SeenStateItem();
  MEMORY[0x1EEE9AC00](v101, v20);
  v96 = &v84 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22, v23);
  v95 = (&v84 - v24);
  MEMORY[0x1EEE9AC00](v25, v26);
  v99 = &v84 - v27;
  MEMORY[0x1EEE9AC00](v28, v29);
  v98 = &v84 - v30;
  v32 = *(v31 + 72);
  if (!v32)
  {
    __break(1u);
LABEL_74:
    __break(1u);
LABEL_75:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v32 == -1)
  {
    goto LABEL_74;
  }

  v33 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v32 == -1)
  {
    goto LABEL_75;
  }

  v34 = (a2 - a1) / v32;
  v104 = a1;
  v35 = v91;
  v103 = v91;
  if (v34 >= v33 / v32)
  {
    v37 = v33 / v32 * v32;
    if (v91 < a2 || a2 + v37 <= v91)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v91 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v58 = v35 + v37;
    if (v37 >= 1)
    {
      v59 = -v32;
      v90 = (v7 + 48);
      v85 = (v7 + 32);
      v86 = (v7 + 8);
      v60 = v35 + v37;
      v99 = -v32;
      do
      {
        v84 = v58;
        v61 = a2;
        a2 += v59;
        v92 = v61;
        v93 = a2;
        while (1)
        {
          if (v61 <= a1)
          {
            v104 = v61;
            v102 = v84;
            goto LABEL_72;
          }

          v62 = a3;
          v89 = v58;
          v98 = v60 + v59;
          v63 = v95;
          sub_1D6E8AFA8(v60 + v59, v95, type metadata accessor for FormatSlotItemSort.SeenStateItem);
          v64 = a2;
          v65 = v96;
          sub_1D6E8AFA8(v64, v96, type metadata accessor for FormatSlotItemSort.SeenStateItem);
          v66 = *(v101 + 20);
          v67 = *(v97 + 48);
          v68 = v63 + v66;
          v69 = v94;
          sub_1D6E8AFA8(v68, v94, sub_1D5B5B2A0);
          sub_1D6E8AFA8(v65 + v66, v69 + v67, sub_1D5B5B2A0);
          v70 = *v90;
          v71 = v100;
          v72 = (*v90)(v69, 1, v100);
          v73 = v70((v69 + v67), 1, v71);
          if (v72 == 1)
          {
            if (v73 != 1)
            {
              sub_1D6E8B010(v94 + v67, sub_1D5B5B2A0);
            }

            v74 = 1;
          }

          else if (v73 == 1)
          {
            (*v86)(v94, v100);
            v74 = 0;
          }

          else
          {
            v75 = *v85;
            v76 = v87;
            v77 = v94;
            v78 = v100;
            (*v85)(v87, v94, v100);
            v79 = v77 + v67;
            v80 = v88;
            v75(v88, v79, v78);
            v74 = sub_1D725883C();
            v81 = *v86;
            (*v86)(v80, v78);
            v81(v76, v78);
          }

          v61 = v92;
          a2 = v93;
          v82 = v91;
          a3 = v62 + v99;
          sub_1D6E8B010(v96, type metadata accessor for FormatSlotItemSort.SeenStateItem);
          sub_1D6E8B010(v95, type metadata accessor for FormatSlotItemSort.SeenStateItem);
          if (v74)
          {
            break;
          }

          v83 = v98;
          v58 = v98;
          if (v62 < v60 || a3 >= v60)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v62 != v60)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v60 = v58;
          v59 = v99;
          if (v83 <= v82)
          {
            a2 = v61;
            goto LABEL_71;
          }
        }

        if (v62 < v61 || a3 >= v61)
        {
          swift_arrayInitWithTakeFrontToBack();
          v58 = v89;
        }

        else
        {
          v58 = v89;
          if (v62 != v61)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v59 = v99;
      }

      while (v60 > v82);
    }

LABEL_71:
    v104 = a2;
    v102 = v58;
  }

  else
  {
    v36 = v34 * v32;
    if (v91 < a1 || a1 + v36 <= v91)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v91 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v96 = v35 + v36;
    v102 = v35 + v36;
    if (v36 >= 1 && a2 < a3)
    {
      v90 = (v7 + 32);
      v94 = (v7 + 8);
      v95 = (v7 + 48);
      v92 = a3;
      v93 = v32;
      do
      {
        v39 = a2;
        v40 = v98;
        sub_1D6E8AFA8(a2, v98, type metadata accessor for FormatSlotItemSort.SeenStateItem);
        v41 = v35;
        v42 = v99;
        sub_1D6E8AFA8(v35, v99, type metadata accessor for FormatSlotItemSort.SeenStateItem);
        v43 = *(v101 + 20);
        v44 = *(v97 + 48);
        sub_1D6E8AFA8(v40 + v43, v19, sub_1D5B5B2A0);
        sub_1D6E8AFA8(v42 + v43, &v19[v44], sub_1D5B5B2A0);
        v45 = *v95;
        v46 = v100;
        v47 = (*v95)(v19, 1, v100);
        v48 = v45(&v19[v44], 1, v46);
        if (v47 == 1)
        {
          if (v48 != 1)
          {
            sub_1D6E8B010(&v19[v44], sub_1D5B5B2A0);
          }

          sub_1D6E8B010(v99, type metadata accessor for FormatSlotItemSort.SeenStateItem);
          sub_1D6E8B010(v98, type metadata accessor for FormatSlotItemSort.SeenStateItem);
          a2 = v39;
          v35 = v41;
          v49 = v92;
        }

        else
        {
          if (v48 == 1)
          {
            (*v94)(v19, v100);
            sub_1D6E8B010(v99, type metadata accessor for FormatSlotItemSort.SeenStateItem);
            sub_1D6E8B010(v98, type metadata accessor for FormatSlotItemSort.SeenStateItem);
            a2 = v39;
            v35 = v41;
            v49 = v92;
LABEL_34:
            v50 = v93;
            v57 = v35 + v93;
            if (a1 < v35 || a1 >= v57)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (a1 != v35)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            v103 = v57;
            v35 += v50;
            goto LABEL_40;
          }

          v51 = *v90;
          v52 = v87;
          v53 = v100;
          (*v90)(v87, v19, v100);
          v54 = &v19[v44];
          v55 = v88;
          v51(v88, v54, v53);
          LODWORD(v91) = sub_1D725883C();
          v56 = *v94;
          (*v94)(v55, v53);
          v56(v52, v53);
          sub_1D6E8B010(v99, type metadata accessor for FormatSlotItemSort.SeenStateItem);
          sub_1D6E8B010(v98, type metadata accessor for FormatSlotItemSort.SeenStateItem);
          a2 = v39;
          v35 = v41;
          v49 = v92;
          if ((v91 & 1) == 0)
          {
            goto LABEL_34;
          }
        }

        v50 = v93;
        if (a1 < a2 || a1 >= a2 + v93)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != a2)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        a2 += v50;
LABEL_40:
        a1 += v50;
        v104 = a1;
      }

      while (v35 < v96 && a2 < v49);
    }
  }

LABEL_72:
  sub_1D62FF5B0(&v104, &v103, &v102);
}

uint64_t _s8NewsFeed18FormatSlotItemSortO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  if (*a1)
  {
    if (v2)
    {
      return sub_1D634CF68(*(*a1 + 16), *(v2 + 16));
    }

    return 0;
  }

  return !v2;
}

unint64_t sub_1D6E8ADC0(uint64_t a1)
{
  result = sub_1D6E8ADE8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6E8ADE8()
{
  result = qword_1EC897450;
  if (!qword_1EC897450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC897450);
  }

  return result;
}

unint64_t sub_1D6E8AE3C(void *a1)
{
  a1[1] = sub_1D66B90D4();
  a1[2] = sub_1D66F85F8();
  result = sub_1D6E8AE74();
  a1[3] = result;
  return result;
}

unint64_t sub_1D6E8AE74()
{
  result = qword_1EC897458;
  if (!qword_1EC897458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC897458);
  }

  return result;
}

uint64_t type metadata accessor for FormatSlotItemSort.SeenStateItem()
{
  result = qword_1EC897460;
  if (!qword_1EC897460)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D6E8AF40(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D6E8AFA8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D6E8B010(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1D6E8B098()
{
  type metadata accessor for FormatContentSlotItemResolution();
  if (v0 <= 0x3F)
  {
    sub_1D5B5B2A0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t PublisherLogoProcessorOptions.init(requestOptions:background:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a2;
  sub_1D6E8B158(a1, a3);
  result = type metadata accessor for PublisherLogoProcessorOptions(0);
  *(a3 + *(result + 20)) = v4;
  return result;
}

uint64_t sub_1D6E8B158(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ImageRequestOptions();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t PublisherLogoProcessorRequest.__allocating_init(publisherLogoAssetHandle:publisherLogoImageSize:scale:theme:isTransparentWhiteBackground:options:)(uint64_t a1, unsigned __int8 *a2, int a3, uint64_t a4, double a5, double a6, double a7)
{
  v15 = *(a1 + 24);
  v16 = *(a1 + 32);
  v17 = __swift_mutable_project_boxed_opaque_existential_1(a1, v15);
  v18 = sub_1D6E8BAD4(v17, a2, a3, a4, a5, a6, a7, v7, v15, v16);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v18;
}

NewsFeed::PublisherLogoTheme_optional __swiftcall PublisherLogoTheme.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (!rawValue)
  {
    v2 = 0;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t PublisherLogoProcessorOptions.BackgroundColorDriver.hashValue.getter()
{
  v1 = *v0;
  sub_1D7264A0C();
  MEMORY[0x1DA6FC0B0](v1);
  return sub_1D7264A5C();
}

uint64_t PublisherLogoProcessorRequest.cacheIdentifier.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t PublisherLogoProcessorRequest.init(publisherLogoAssetHandle:publisherLogoImageSize:scale:theme:isTransparentWhiteBackground:options:)(uint64_t a1, unsigned __int8 *a2, int a3, uint64_t a4, double a5, double a6, double a7)
{
  v15 = *(a1 + 24);
  v16 = *(a1 + 32);
  v17 = __swift_mutable_project_boxed_opaque_existential_1(a1, v15);
  v18 = MEMORY[0x1EEE9AC00](v17, v17);
  v20 = &v24 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v21 + 16))(v20, v18);
  v22 = sub_1D6E8B554(v20, a2, a3, a4, v7, v15, v16, a5, a6, a7);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v22;
}

uint64_t PublisherLogoProcessorRequest.deinit()
{

  sub_1D6E8BC10(v0 + OBJC_IVAR____TtC8NewsFeed29PublisherLogoProcessorRequest_options);
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC8NewsFeed29PublisherLogoProcessorRequest_assetHandle);
  return v0;
}

uint64_t PublisherLogoProcessorRequest.__deallocating_deinit()
{

  sub_1D6E8BC10(v0 + OBJC_IVAR____TtC8NewsFeed29PublisherLogoProcessorRequest_options);
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC8NewsFeed29PublisherLogoProcessorRequest_assetHandle);

  return swift_deallocClassInstance();
}

uint64_t sub_1D6E8B554(uint64_t a1, unsigned __int8 *a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, double a8, double a9, double a10)
{
  LODWORD(v55) = a3;
  v19 = type metadata accessor for ImageRequestOptions();
  MEMORY[0x1EEE9AC00](v19 - 8, v20);
  v22 = (v52 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D5C0ED14(0, qword_1EDF20DF8, type metadata accessor for PublisherLogoProcessorOptions, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v23 - 8, v24);
  v26 = v52 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27, v28);
  v30 = v52 - v29;
  v60[3] = a6;
  v60[4] = a7;
  v54 = a7;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v60);
  v32 = *(*(a6 - 8) + 32);
  v52[1] = boxed_opaque_existential_1;
  v32(boxed_opaque_existential_1, a1, a6);
  *&v33 = *a2;
  sub_1D5B68374(v60, a5 + OBJC_IVAR____TtC8NewsFeed29PublisherLogoProcessorRequest_assetHandle);
  sub_1D5C0ED14(0, &qword_1EDF19590, sub_1D5C16B18, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D7273AE0;
  *(inited + 32) = 0xD000000000000015;
  *(inited + 40) = 0x80000001D73C7830;
  sub_1D5B68374(v60, inited + 48);
  v35 = sub_1D5BFFC64(inited);
  swift_setDeallocating();
  sub_1D6E8BE5C(inited + 32, sub_1D5C16B18);
  *(a5 + 32) = v35;
  *(a5 + 40) = a8;
  *(a5 + 48) = a9;
  *(a5 + 56) = a10;
  v53 = v33;
  *(a5 + 64) = LOBYTE(v33);
  *(a5 + 65) = v55;
  sub_1D6E8BDC8(a4, a5 + OBJC_IVAR____TtC8NewsFeed29PublisherLogoProcessorRequest_options);
  v55 = a4;
  sub_1D6E8BDC8(a4, v30);
  v36 = type metadata accessor for PublisherLogoProcessorOptions(0);
  v37 = *(*(v36 - 8) + 48);
  if (v37(v30, 1, v36) == 1)
  {
    sub_1D6E8BC10(v30);
    v38 = 0xE300000000000000;
    v39 = 7104878;
  }

  else
  {
    v40 = v30[*(v36 + 20)];
    sub_1D6E8BE5C(v30, type metadata accessor for PublisherLogoProcessorOptions);
    LOBYTE(v58) = v40;
    v39 = sub_1D72620FC();
    v38 = v41;
  }

  sub_1D6E8BDC8(v55, v26);
  if (v37(v26, 1, v36) == 1)
  {
    sub_1D6E8BC10(v26);
    v42 = 0xE300000000000000;
    v43 = 7104878;
  }

  else
  {
    sub_1D60812F0(v26, v22);
    sub_1D6E8BE5C(v26, type metadata accessor for PublisherLogoProcessorOptions);
    v44 = v22[1];
    sub_1D6E8BE5C(v22, type metadata accessor for ImageRequestOptions);
    v43 = sub_1D69F5644();
    v42 = v45;
  }

  v58 = 0;
  v59 = 0xE000000000000000;
  sub_1D7263D4C();
  v46 = sub_1D725D2DC();
  MEMORY[0x1DA6F9910](v46);

  MEMORY[0x1DA6F9910](45, 0xE100000000000000);
  v56 = a8;
  v57 = a9;
  type metadata accessor for CGSize(0);
  sub_1D7263F9C();
  MEMORY[0x1DA6F9910](45, 0xE100000000000000);
  v47 = sub_1D7262A9C();
  MEMORY[0x1DA6F9910](v47);

  MEMORY[0x1DA6F9910](45, 0xE100000000000000);
  v56 = v53;
  v48 = sub_1D72644BC();
  MEMORY[0x1DA6F9910](v48);

  MEMORY[0x1DA6F9910](45, 0xE100000000000000);
  MEMORY[0x1DA6F9910](v39, v38);

  MEMORY[0x1DA6F9910](11561, 0xE200000000000000);
  MEMORY[0x1DA6F9910](v43, v42);

  v49 = v58;
  v50 = v59;
  sub_1D6E8BC10(v55);
  *(a5 + 16) = v49;
  *(a5 + 24) = v50;
  __swift_destroy_boxed_opaque_existential_1(v60);
  return a5;
}

uint64_t sub_1D6E8BAD4(uint64_t a1, unsigned __int8 *a2, int a3, uint64_t a4, double a5, double a6, double a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v19 = *(a9 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v21 = &v24 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = swift_allocObject();
  (*(v19 + 16))(v21, a1, a9);
  return sub_1D6E8B554(v21, a2, a3, a4, v22, a9, a10, a5, a6, a7);
}
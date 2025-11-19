uint64_t static JsonStreamField.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_24FF62158();
  }
}

uint64_t sub_24FF3C614(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for JsonStreamEvent(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24FF3C678(uint64_t a1)
{
  v2 = sub_24FF25460(&qword_27F3B4298, &unk_24FF632A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24FF3C6E0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_24FF26754(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_24FF3C738(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for JsonFieldValueEvent(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t static JsonFieldValueEvent.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((sub_24FF61878() & 1) == 0)
  {
    goto LABEL_9;
  }

  v4 = type metadata accessor for JsonFieldValueEvent(0);
  v5 = v4[5];
  v6 = *(a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = v6 == *v8 && v7 == v8[1];
  if (!v9 && (sub_24FF62158() & 1) == 0)
  {
    goto LABEL_9;
  }

  v10 = v4[6];
  v11 = *(a1 + v10);
  v12 = *(a1 + v10 + 8);
  v13 = *(a1 + v10 + 16);
  v23[0] = v11;
  v23[1] = v12;
  v24 = v13;
  v14 = a2 + v10;
  v16 = *(v14 + 8);
  v17 = *(v14 + 16);
  v21[0] = *v14;
  v15 = v21[0];
  v21[1] = v16;
  v22 = v17;
  sub_24FF3B644(v11, v12, v13);
  sub_24FF3B644(v21[0], v16, v17);
  v18 = static JsonValueContainer.== infix(_:_:)(v23, v21);
  sub_24FF3B658(v15, v16, v17);
  sub_24FF3B658(v11, v12, v13);
  if (v18)
  {
    v19 = *(a1 + v4[7]) ^ *(a2 + v4[7]) ^ 1;
  }

  else
  {
LABEL_9:
    v19 = 0;
  }

  return v19 & 1;
}

uint64_t JsonFieldValueEvent.objectID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_24FF61898();
  v4 = sub_24FF26754(v3);
  v6 = *(v5 + 16);

  return v6(a1, v1, v4);
}

uint64_t JsonFieldValueEvent.field.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for JsonFieldValueEvent(0) + 20));
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;
}

uint64_t JsonFieldValueEvent.value.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for JsonFieldValueEvent(0) + 24);
  v4 = *v3;
  v5 = *(v3 + 8);
  *a1 = *v3;
  *(a1 + 8) = v5;
  v6 = *(v3 + 16);
  *(a1 + 16) = v6;

  return sub_24FF3B644(v4, v5, v6);
}

int *JsonFieldValueEvent.init(objectID:field:value:isArrayElement:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v8 = *a2;
  v9 = a2[1];
  v10 = *a3;
  v11 = a3[1];
  v12 = *(a3 + 16);
  v13 = sub_24FF61898();
  sub_24FF26754(v13);
  (*(v14 + 32))(a5, a1);
  result = type metadata accessor for JsonFieldValueEvent(0);
  v16 = (a5 + result[5]);
  *v16 = v8;
  v16[1] = v9;
  v17 = a5 + result[6];
  *v17 = v10;
  *(v17 + 8) = v11;
  *(v17 + 16) = v12;
  *(a5 + result[7]) = a4;
  return result;
}

uint64_t JsonStreamField.description.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t JsonStreamField.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  return sub_24FF61D88();
}

uint64_t JsonStreamField.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_24FF621F8();
  sub_24FF61D88();
  return sub_24FF62218();
}

uint64_t sub_24FF3CB3C()
{
  v1 = *v0;
  v2 = v0[1];
  sub_24FF621F8();
  sub_24FF61D88();
  return sub_24FF62218();
}

unint64_t sub_24FF3CB88()
{
  result = qword_27F3B42B8;
  if (!qword_27F3B42B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3B42B8);
  }

  return result;
}

unint64_t sub_24FF3CBE0()
{
  result = qword_27F3B42C0;
  if (!qword_27F3B42C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3B42C0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for JsonNull(_BYTE *result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for JsonObjectFieldType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFB)
  {
    if (a2 + 5 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 5) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 6;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v5 = v6 - 6;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for JsonObjectFieldType(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_24FF3CE64(uint64_t a1)
{
  if ((*(a1 + 16) & 4) != 0)
  {
    return (*a1 + 4);
  }

  else
  {
    return *(a1 + 16) & 7;
  }
}

__n128 sub_24FF3CE80(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_24FF3CE94(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFC && *(a1 + 17))
    {
      v2 = *a1 + 251;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 4)
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

uint64_t sub_24FF3CED4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 16) = 0;
    *result = a2 - 252;
    *(result + 8) = 0;
    if (a3 >= 0xFC)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
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

uint64_t sub_24FF3CF18(uint64_t result, unsigned int a2)
{
  if (a2 >= 4)
  {
    *result = a2 - 4;
    *(result + 8) = 0;
    LOBYTE(a2) = 4;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t sub_24FF3CF40()
{
  sub_24FF3CFF8();
  v1 = v0;
  if (v2 <= 0x3F)
  {
    sub_24FF3D040();
    if (v4 > 0x3F)
    {
      return v3;
    }

    sub_24FF3D0AC();
    if (v5 > 0x3F)
    {
      return v3;
    }

    else
    {
      sub_24FF3D120();
      v1 = v6;
      if (v7 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        return 0;
      }
    }
  }

  return v1;
}

void sub_24FF3CFF8()
{
  if (!qword_280B16648)
  {
    v0 = sub_24FF61898();
    if (!v1)
    {
      atomic_store(v0, &qword_280B16648);
    }
  }
}

void sub_24FF3D040()
{
  if (!qword_280B16640)
  {
    sub_24FF61898();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_280B16640);
    }
  }
}

void sub_24FF3D0AC()
{
  if (!qword_280B16650)
  {
    sub_24FF61898();
    type metadata accessor for JsonFieldValueEvent(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_280B16650);
    }
  }
}

void sub_24FF3D120()
{
  if (!qword_280B16638)
  {
    sub_24FF61898();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_280B16638);
    }
  }
}

uint64_t sub_24FF3D1B8()
{
  result = sub_24FF61898();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_24FF3D2C4()
{
  v2 = *(v0 - 104);

  return swift_getEnumCaseMultiPayload();
}

uint64_t sub_24FF3D2F0()
{
  v2 = *(v0 - 104);

  return swift_getEnumCaseMultiPayload();
}

uint64_t sub_24FF3D33C()
{

  return sub_24FF62158();
}

uint64_t sub_24FF3D36C()
{
  swift_beginAccess();
  v1 = *(v0 + 112);
  v4 = *(v1 + 16);
  v2 = v1 + 16;
  v3 = v4;
  if (!v4)
  {
    return 0;
  }

  v5 = (v2 + 16 * v3);
  v6 = *v5;
  v7 = v5[1];

  return v6;
}

uint64_t sub_24FF3D3D4@<X0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 120);
  v4 = *(v3 + 16);
  v5 = sub_24FF61898();
  v6 = v5;
  if (v4)
  {
    (*(*(v5 - 8) + 16))(a1, v3 + ((*(*(v5 - 8) + 80) + 32) & ~*(*(v5 - 8) + 80)), v5);
    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  return sub_24FF24B98(a1, v7, 1, v6);
}

uint64_t sub_24FF3D48C@<X0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 120);
  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = v4 - 1;
    v6 = sub_24FF61898();
    (*(*(v6 - 8) + 16))(a1, v3 + ((*(*(v6 - 8) + 80) + 32) & ~*(*(v6 - 8) + 80)) + *(*(v6 - 8) + 72) * v5, v6);
    v7 = a1;
    v8 = 0;
    v9 = v6;
  }

  else
  {
    v9 = sub_24FF61898();
    v7 = a1;
    v8 = 1;
  }

  return sub_24FF24B98(v7, v8, 1, v9);
}

uint64_t sub_24FF3D568()
{
  *(v1 + 64) = v0;
  sub_24FF2BBD4();
  return MEMORY[0x2822009F8](v2, v3, v4);
}

uint64_t sub_24FF3D594()
{
  sub_24FF2BC7C();
  v1 = *(v0 + 64);
  v2 = *(v1 + 88);
  v3 = *(v1 + 96);
  v5 = *(v1 + 64);
  v4 = *(v1 + 72);
  *(v1 + 64) = v2;
  *(v1 + 72) = v3;
  v6 = *(v1 + 104);
  v7 = *(v1 + 80);
  *(v1 + 80) = v6;
  sub_24FF420E0(v2, v3, v6);
  sub_24FF42074(v5, v4, v7);
  sub_24FF427A4();
  v8 = swift_task_alloc();
  *(v0 + 72) = v8;
  *v8 = v0;
  v8[1] = sub_24FF3D66C;

  return sub_24FF42DB0(v0 + 40);
}

uint64_t sub_24FF3D66C()
{
  sub_24FF2BC70();
  sub_24FF2BC88();
  v3 = v2;
  v4 = *(v2 + 72);
  v5 = *v1;
  sub_24FF2BACC();
  *v6 = v5;
  *(v3 + 80) = v0;

  if (!v0)
  {
    swift_endAccess();
  }

  sub_24FF2BBD4();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_24FF3D774()
{
  sub_24FF2BC70();
  v1 = *(v0 + 64);
  v2 = *(v0 + 56);
  v3 = *(v1 + 88);
  v4 = *(v1 + 96);
  *(v1 + 88) = *(v0 + 40);
  v5 = *(v1 + 104);
  *(v1 + 104) = v2;
  sub_24FF42074(v3, v4, v5);
  sub_24FF24BC0();

  return v6();
}

uint64_t sub_24FF3D7E4()
{
  swift_endAccess();
  if (qword_280B15CC8 != -1)
  {
    sub_24FF423E0();
  }

  v1 = *(v0 + 80);
  v2 = sub_24FF61BC8();
  sub_24FF278EC(v2, qword_280B16948);
  MEMORY[0x25305D050](v1);
  v3 = sub_24FF61BA8();
  v4 = sub_24FF62018();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 80);
    v6 = sub_24FF42770();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    MEMORY[0x25305D050](v5);
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v8;
    *v7 = v8;
    _os_log_impl(&dword_24FF22000, v3, v4, "Error while retrieving next token: %@", v6, 0xCu);
    sub_24FF422D0(v7, &qword_27F3B42E0, qword_24FF63700);
    sub_24FF42670();
    sub_24FF42634();
  }

  v9 = *(v0 + 80);
  v10 = *(v0 + 64);

  v11 = v10[7];
  sub_24FF257B8(v10 + 3, v10[6]);
  v12 = *(v11 + 24);
  v13 = sub_24FF32440();
  v14(v13);

  sub_24FF24BC0();

  return v15();
}

uint64_t sub_24FF3D988()
{
  sub_24FF2BC70();
  *(v1 + 16) = v0;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_24FF3DA18;

  return sub_24FF3DC30(0);
}

uint64_t sub_24FF3DA18()
{
  sub_24FF2BC70();
  sub_24FF2BC88();
  sub_24FF3218C();
  *v3 = v2;
  v5 = *(v4 + 24);
  v6 = *v1;
  sub_24FF2BACC();
  *v7 = v6;
  *(v8 + 32) = v0;

  sub_24FF2BBD4();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_24FF3DB10()
{
  sub_24FF2BC7C();
  v1 = *(v0 + 16);
  v2 = v1[7];
  sub_24FF257B8(v1 + 3, v1[6]);
  v3 = *(v2 + 16);
  v4 = sub_24FF32440();
  v5(v4);
  sub_24FF24BC0();

  return v6();
}

uint64_t sub_24FF3DB98()
{
  sub_24FF2BC7C();
  v1 = *(v0 + 32);
  v2 = *(v0 + 16);
  v3 = v2[7];
  sub_24FF257B8(v2 + 3, v2[6]);
  v4 = *(v3 + 24);
  v5 = sub_24FF32440();
  v6(v5);

  sub_24FF24BC0();

  return v7();
}

uint64_t sub_24FF3DC30(char a1)
{
  *(v2 + 232) = v1;
  *(v2 + 209) = a1;
  v3 = *(*(sub_24FF25460(&qword_27F3B42C8, &qword_24FF641A0) - 8) + 64) + 15;
  *(v2 + 240) = swift_task_alloc();
  *(v2 + 248) = swift_task_alloc();
  *(v2 + 256) = swift_task_alloc();
  v4 = type metadata accessor for JsonStreamEvent(0);
  *(v2 + 264) = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  *(v2 + 272) = swift_task_alloc();
  *(v2 + 280) = swift_task_alloc();
  *(v2 + 288) = swift_task_alloc();
  v6 = sub_24FF61898();
  *(v2 + 296) = v6;
  v7 = *(v6 - 8);
  *(v2 + 304) = v7;
  v8 = *(v7 + 64) + 15;
  *(v2 + 312) = swift_task_alloc();
  *(v2 + 320) = swift_task_alloc();
  *(v2 + 328) = swift_task_alloc();
  *(v2 + 336) = swift_task_alloc();
  *(v2 + 344) = swift_task_alloc();
  *(v2 + 352) = swift_task_alloc();
  *(v2 + 360) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24FF3DDD4, 0, 0);
}

uint64_t sub_24FF3DDD4()
{
  v146 = v0;
  v2 = *(v0 + 232);
  v3 = *(v2 + 64);
  *(v0 + 368) = v3;
  v4 = *(v2 + 72);
  *(v0 + 376) = v4;
  v5 = *(v2 + 80);
  *(v0 + 210) = v5;
  if ((v5 - 5) < 2)
  {
    v145[0] = 0;
    v145[1] = 0xE000000000000000;
    v10 = sub_24FF426DC();
    sub_24FF420B4(v10, v11, v12);
    sub_24FF62098();
    *(v0 + 216) = 0;
    *(v0 + 224) = 0xE000000000000000;
    sub_24FF42734();
    MEMORY[0x25305C910](0xD000000000000021);
    *(v0 + 192) = v3;
    *(v0 + 200) = v4;
    *(v0 + 208) = v5;
    sub_24FF620E8();
    v13 = sub_24FF426DC();
    sub_24FF42074(v13, v14, v15);
    v16 = *(v0 + 216);
    v17 = *(v0 + 224);
    sub_24FF4227C();
    v140 = sub_24FF4271C();
    *v18 = v16;
    v18[1] = v17;
    sub_24FF426C0(v140, v18);
    sub_24FF424C0();
    v131 = *(v0 + 256);
    v135 = *(v0 + 248);
    v137 = *(v0 + 240);

    sub_24FF24BC0();
    goto LABEL_10;
  }

  if (v5 != 7)
  {
    if (v5 == 255)
    {
      if (qword_280B15CC8 != -1)
      {
        sub_24FF423E0();
      }

      v6 = sub_24FF61BC8();
      sub_24FF278EC(v6, qword_280B16948);
      v7 = sub_24FF61BA8();
      v8 = sub_24FF62008();
      if (os_log_type_enabled(v7, v8))
      {
        v9 = swift_slowAlloc();
        *v9 = 0;
        _os_log_impl(&dword_24FF22000, v7, v8, "Reached end of stream", v9, 2u);
        sub_24FF42670();
      }

      sub_24FF42484();
      sub_24FF42788();

      sub_24FF321B0();
LABEL_10:
      sub_24FF42618();

      __asm { BRAA            X1, X16 }
    }

    goto LABEL_22;
  }

  if (!(v3 ^ 2 | v4))
  {
    v43 = *(v0 + 328);
    v44 = *(v0 + 256);
    swift_beginAccess();
    sub_24FF4CDBC(*(v2 + 120), v44);
    v45 = sub_24FF4281C();
    v1(v45);

    v46 = *(*(v2 + 120) + 16);
    *(v0 + 424) = v46;
    if (v46)
    {
      v47 = *(v0 + 296);
      v49 = *(v0 + 248);
      v48 = *(v0 + 256);
      sub_24FF420F4(*(v0 + 232) + 24, v0 + 16);
      v139 = *(v0 + 48);
      v142 = *(v0 + 40);
      sub_24FF257B8((v0 + 16), v142);
      sub_24FF42158(v48, v49);
      result = sub_24FF24B70(v49, 1, v47);
      if (result == 1)
      {
        __break(1u);
      }

      else
      {
        v50 = *(v0 + 328);
        v52 = *(v0 + 296);
        v51 = *(v0 + 304);
        v53 = *(v0 + 280);
        v54 = *(v0 + 248);
        v55 = *(v0 + 232);
        v56 = sub_24FF25460(&qword_27F3B42A0, &unk_24FF641C0);
        v57 = *(v56 + 48);
        (*(v51 + 32))(v53, v54, v52);
        v58 = *(v51 + 16);
        v58(v53 + v57, v50, v52);
        result = sub_24FF3D36C();
        if (v59)
        {
          v60 = (v51 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
          v61 = *(v0 + 280);
          v62 = *(v0 + 264);
          v63 = (v61 + *(v56 + 64));
          *v63 = result;
          v63[1] = v59;
          swift_storeEnumTagMultiPayload();
          (*(v139 + 8))(v61, v142);
          sub_24FF421C8(v61);
          sub_24FF25A6C((v0 + 16));
LABEL_44:
          *(v0 + 432) = v58;
          v123 = *(v0 + 328);
          v124 = *(v0 + 296);
          v125 = *(v0 + 304);
          sub_24FF5BAF4();
          sub_24FF427DC();
          v126 = sub_24FF425B8();
          *(v0 + 440) = v60;
          v58(v126, v123, v124);
          *(v2 + 120) = v2 + 120;
          v127 = swift_task_alloc();
          *(v0 + 448) = v127;
          *v127 = v0;
          v127[1] = sub_24FF3ECBC;
          v128 = *(v0 + 232);
          sub_24FF42618();

          return sub_24FF402AC();
        }
      }

      __break(1u);
      return result;
    }

    if (qword_280B15CC8 != -1)
    {
      sub_24FF423E0();
    }

    v83 = *(v0 + 320);
    v84 = *(v0 + 328);
    v85 = *(v0 + 296);
    v86 = *(v0 + 304);
    v87 = sub_24FF61BC8();
    sub_24FF278EC(v87, qword_280B16948);
    v89 = *(v86 + 16);
    v88 = v86 + 16;
    v58 = v89;
    v144 = v88 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v90 = sub_24FF4259C();
    (v89)(v90);
    v91 = sub_24FF61BA8();
    v92 = sub_24FF62008();
    v93 = os_log_type_enabled(v91, v92);
    v94 = *(v0 + 320);
    v96 = *(v0 + 296);
    v95 = *(v0 + 304);
    if (v93)
    {
      sub_24FF42770();
      v134 = sub_24FF42688();
      v145[0] = v134;
      *v92 = 136315138;
      sub_24FF42224();
      v97 = sub_24FF62148();
      v88 = v98;
      v99 = sub_24FF425F4();
      v100(v99);
      v101 = sub_24FF5BBE0(v97, v88, v145);

      *(v92 + 4) = v101;
      sub_24FF426A4(&dword_24FF22000, v102, v92, "Starting to parse all fields for array with id=%s");
      sub_24FF25A6C(v134);
      sub_24FF42670();
      sub_24FF42634();
    }

    else
    {

      v116 = sub_24FF425F4();
      v117(v116);
    }

    v118 = *(v0 + 328);
    sub_24FF425E0();
    sub_24FF257B8((v119 + 24), v88);
    v120 = sub_24FF42604();
    (v58)(v120);
    sub_24FF427BC();
    swift_storeEnumTagMultiPayload();
    v121 = sub_24FF4251C();
    v122(v121);
    sub_24FF421C8(v95);
    v60 = v144;
    goto LABEL_44;
  }

  if (v3 | v4)
  {
LABEL_22:
    v36 = sub_24FF426DC();
    sub_24FF420B4(v36, v37, v38);
    v39 = swift_task_alloc();
    *(v0 + 464) = v39;
    *v39 = v0;
    sub_24FF42758(v39);
    sub_24FF42618();

    return sub_24FF40A68(v40);
  }

  v21 = *(v0 + 360);
  v22 = sub_24FF4281C();
  v1(v22);

  swift_beginAccess();
  v23 = *(*(v2 + 120) + 16);
  *(v0 + 384) = v23;
  if (v23)
  {
    v24 = *(v0 + 304);
    v136 = *(v0 + 296);
    v138 = *(v0 + 360);
    v25 = *(v0 + 288);
    v141 = *(v0 + 264);
    v26 = *(v0 + 232);
    v27 = sub_24FF3D36C();
    if (v28)
    {
      v29 = v27;
    }

    else
    {
      v29 = 0x24746F6F7224;
    }

    v30 = 0xE600000000000000;
    if (v28)
    {
      v30 = v28;
    }

    v130 = v30;
    v132 = v29;
    v31 = v26[6];
    v32 = v26[7];
    sub_24FF257B8(v26 + 3, v31);
    v33 = (v25 + *(sub_24FF25460(&qword_27F3B42B0, &qword_24FF641D0) + 48));
    v34 = *(v24 + 16);
    v35 = (v24 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v34(v25, v138, v136);
    *v33 = v132;
    v33[1] = v130;
    swift_storeEnumTagMultiPayload();
    (*(v32 + 8))(v25, v31, v32);
  }

  else
  {
    if (qword_280B15CC8 != -1)
    {
      sub_24FF423E0();
    }

    v64 = *(v0 + 352);
    v65 = *(v0 + 360);
    v66 = *(v0 + 296);
    v67 = *(v0 + 304);
    v68 = sub_24FF61BC8();
    sub_24FF278EC(v68, qword_280B16948);
    v34 = *(v67 + 16);
    v69 = (v67 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v70 = sub_24FF4259C();
    (v34)(v70);
    v71 = sub_24FF61BA8();
    v72 = sub_24FF62008();
    v73 = os_log_type_enabled(v71, v72);
    v74 = *(v0 + 352);
    v76 = *(v0 + 296);
    v75 = *(v0 + 304);
    v143 = v69;
    if (v73)
    {
      sub_24FF42770();
      v133 = sub_24FF42688();
      v145[0] = v133;
      *v72 = 136315138;
      sub_24FF42224();
      v77 = sub_24FF62148();
      v69 = v78;
      v79 = sub_24FF425F4();
      v80(v79);
      v81 = sub_24FF5BBE0(v77, v69, v145);

      *(v72 + 4) = v81;
      sub_24FF426A4(&dword_24FF22000, v82, v72, "Starting to parse all fields for object with id=%s");
      sub_24FF25A6C(v133);
      sub_24FF42670();
      sub_24FF42634();
    }

    else
    {

      v103 = sub_24FF425F4();
      v104(v103);
    }

    v105 = *(v0 + 360);
    sub_24FF425E0();
    sub_24FF257B8((v106 + 24), v69);
    v107 = sub_24FF42604();
    (v34)(v107);
    sub_24FF427BC();
    swift_storeEnumTagMultiPayload();
    v108 = sub_24FF4251C();
    v109(v108);
    v35 = v143;
  }

  *(v0 + 392) = v34;
  v110 = *(v0 + 360);
  v111 = *(v0 + 296);
  v112 = *(v0 + 304);
  sub_24FF421C8(*(v0 + 288));
  sub_24FF5BAF4();
  sub_24FF427DC();
  v113 = sub_24FF425B8();
  *(v0 + 400) = v35;
  v34(v113, v110, v111);
  *(v2 + 120) = v2 + 120;
  v114 = swift_task_alloc();
  *(v0 + 408) = v114;
  *v114 = v0;
  sub_24FF42758(v114);
  sub_24FF42618();

  return sub_24FF3F6DC();
}

uint64_t sub_24FF3E814()
{
  sub_24FF2BC70();
  sub_24FF2BC88();
  sub_24FF3218C();
  *v3 = v2;
  v5 = *(v4 + 408);
  v6 = *v1;
  sub_24FF2BACC();
  *v7 = v6;
  *(v8 + 416) = v0;

  sub_24FF2BBD4();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_24FF3E90C()
{
  v55 = v0;
  v1 = v0[48];
  v2 = v0[43];
  v3 = v0[37];
  v4 = v0[38];
  v5 = v0[29];
  sub_24FF427A4();
  sub_24FF40194(v2);
  swift_endAccess();
  v6 = *(v4 + 8);
  v7 = sub_24FF32440();
  v6(v7);
  v8 = v0[49];
  v9 = v0[45];
  v10 = v0[36];
  v11 = v0[37];
  v50 = v8;
  v52 = v0[33];
  v12 = v0[29];
  if (v1)
  {
    v13 = sub_24FF3D36C();
    v15 = 0x24746F6F7224;
    v49 = v6;
    if (v14)
    {
      v15 = v13;
    }

    v48 = v15;
    if (v14)
    {
      v16 = v14;
    }

    else
    {
      v16 = 0xE600000000000000;
    }

    v17 = v12[7];
    sub_24FF257B8(v12 + 3, v12[6]);
    v18 = (v10 + *(sub_24FF25460(&qword_27F3B42B0, &qword_24FF641D0) + 48));
    v19 = sub_24FF32440();
    v50(v19);
    *v18 = v48;
    v18[1] = v16;
    swift_storeEnumTagMultiPayload();
    v20 = sub_24FF42740();
    v21(v20);
    sub_24FF421C8(v10);
    v22 = sub_24FF427BC();
    v49(v22);
  }

  else
  {
    v23 = v12[7];
    sub_24FF257B8(v12 + 3, v12[6]);
    v24 = sub_24FF32440();
    v50(v24);
    swift_storeEnumTagMultiPayload();
    v25 = sub_24FF42740();
    v26(v25);
    sub_24FF421C8(v10);
    if (qword_280B15CC8 != -1)
    {
      sub_24FF423E0();
    }

    v28 = v0[49];
    v27 = v0[50];
    v29 = v0[45];
    v30 = v0[42];
    v31 = v0[37];
    v32 = sub_24FF61BC8();
    sub_24FF278EC(v32, qword_280B16948);
    v33 = sub_24FF4259C();
    v28(v33);
    v34 = sub_24FF61BA8();
    v35 = sub_24FF62008();
    v36 = os_log_type_enabled(v34, v35);
    v37 = v0[45];
    v38 = v0[42];
    v39 = v0[37];
    if (v36)
    {
      v40 = sub_24FF42770();
      v51 = swift_slowAlloc();
      v54 = v51;
      *v40 = 136315138;
      sub_24FF42224();
      v53 = v37;
      v41 = sub_24FF62148();
      v43 = v42;
      (v6)(v38, v39);
      v44 = sub_24FF5BBE0(v41, v43, &v54);

      *(v40 + 4) = v44;
      _os_log_impl(&dword_24FF22000, v34, v35, "Consumed all fields for object with id=%s", v40, 0xCu);
      sub_24FF25A6C(v51);
      sub_24FF42670();
      sub_24FF42670();

      v45 = v53;
    }

    else
    {

      (v6)(v38, v39);
      v45 = v37;
    }

    (v6)(v45, v39);
  }

  sub_24FF42484();
  sub_24FF42788();

  sub_24FF321B0();

  return v46();
}

uint64_t sub_24FF3ECBC()
{
  sub_24FF2BC70();
  sub_24FF2BC88();
  sub_24FF3218C();
  *v3 = v2;
  v5 = *(v4 + 448);
  v6 = *v1;
  sub_24FF2BACC();
  *v7 = v6;
  *(v8 + 456) = v0;

  sub_24FF2BBD4();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_24FF3EDB4()
{
  v63 = v0;
  v1 = v0[53];
  v2 = v0[43];
  v3 = v0[37];
  v4 = v0[38];
  v5 = v0[29];
  sub_24FF427A4();
  sub_24FF40194(v2);
  swift_endAccess();
  v7 = *(v4 + 8);
  v6 = v4 + 8;
  v8 = sub_24FF32440();
  v61 = v9;
  (v9)(v8);
  if (!v1)
  {
    v31 = v0[54];
    v30 = v0[55];
    v32 = v0[41];
    sub_24FF425E0();
    sub_24FF257B8((v5 + 24), v6);
    v33 = sub_24FF42604();
    v31(v33);
    sub_24FF427BC();
    swift_storeEnumTagMultiPayload();
    v34 = sub_24FF4251C();
    v35(v34);
    sub_24FF421C8(v3);
    if (qword_280B15CC8 != -1)
    {
      sub_24FF423E0();
    }

    v37 = v0[54];
    v36 = v0[55];
    v38 = v0[41];
    v39 = v0[39];
    v40 = v0[37];
    v41 = sub_24FF61BC8();
    sub_24FF278EC(v41, qword_280B16948);
    v42 = sub_24FF4259C();
    v37(v42);
    v43 = sub_24FF61BA8();
    v44 = sub_24FF62008();
    v45 = os_log_type_enabled(v43, v44);
    v46 = v0[41];
    v47 = v0[39];
    v48 = v0[37];
    v49 = v0[32];
    if (v45)
    {
      v60 = v0[41];
      v50 = sub_24FF42770();
      v51 = swift_slowAlloc();
      v62 = v51;
      *v50 = 136315138;
      sub_24FF42224();
      v52 = sub_24FF62148();
      v54 = v53;
      v61(v47, v48);
      v55 = sub_24FF5BBE0(v52, v54, &v62);

      *(v50 + 4) = v55;
      _os_log_impl(&dword_24FF22000, v43, v44, "Consumed all fields for array with id=%s", v50, 0xCu);
      sub_24FF25A6C(v51);
      sub_24FF42670();
      sub_24FF42670();

      v61(v60, v48);
    }

    else
    {

      v61(v47, v48);
      v61(v46, v48);
    }

    sub_24FF422D0(v49, &qword_27F3B42C8, &qword_24FF641A0);
    goto LABEL_11;
  }

  v10 = v0[37];
  v11 = v0[32];
  v12 = v0[30];
  sub_24FF420F4(v5 + 24, (v0 + 7));
  v58 = v0[11];
  v59 = v0[10];
  sub_24FF257B8(v0 + 7, v59);
  sub_24FF42158(v11, v12);
  result = sub_24FF24B70(v12, 1, v10);
  if (result == 1)
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = v0[54];
  v57 = v0[55];
  v15 = v0[41];
  v17 = v0[37];
  v16 = v0[38];
  v18 = v0[34];
  v19 = v0[29];
  v20 = v0[30];
  v21 = sub_24FF25460(&qword_27F3B42A0, &unk_24FF641C0);
  v22 = *(v21 + 48);
  (*(v16 + 32))(v18, v20, v17);
  v14(v18 + v22, v15, v17);
  result = sub_24FF3D36C();
  if (!v23)
  {
LABEL_15:
    __break(1u);
    return result;
  }

  v24 = v0[41];
  v25 = v0[37];
  v26 = v0[33];
  v27 = v0[34];
  v28 = v0[32];
  v29 = (v27 + *(v21 + 64));
  *v29 = result;
  v29[1] = v23;
  swift_storeEnumTagMultiPayload();
  (*(v58 + 8))(v27, v59);
  sub_24FF421C8(v27);
  v61(v24, v25);
  sub_24FF422D0(v28, &qword_27F3B42C8, &qword_24FF641A0);
  sub_24FF25A6C(v0 + 7);
LABEL_11:
  sub_24FF42484();
  sub_24FF42788();

  sub_24FF321B0();

  return v56();
}

uint64_t sub_24FF3F234()
{
  sub_24FF2BC70();
  sub_24FF2BC88();
  sub_24FF3218C();
  *v3 = v2;
  v5 = *(v4 + 464);
  v6 = *v1;
  sub_24FF2BACC();
  *v7 = v6;
  *(v8 + 472) = v0;

  sub_24FF2BBD4();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_24FF3F32C()
{
  sub_24FF42074(*(v0 + 368), *(v0 + 376), *(v0 + 210));
  sub_24FF42484();
  v3 = *(v0 + 240);

  sub_24FF321B0();

  return v1();
}

uint64_t sub_24FF3F420(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  sub_24FF2BFE8();
  (*(v16[38] + 8))(v16[45], v16[37]);
  v17 = v16[52];
  sub_24FF424C0();
  sub_24FF42650();

  sub_24FF24BC0();
  sub_24FF2BDD4();

  return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_24FF3F504(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  sub_24FF2BFE8();
  v17 = v16[32];
  (*(v16[38] + 8))(v16[41], v16[37]);
  sub_24FF422D0(v17, &qword_27F3B42C8, &qword_24FF641A0);
  v18 = v16[57];
  sub_24FF424C0();
  sub_24FF42650();

  sub_24FF24BC0();
  sub_24FF2BDD4();

  return v20(v19, v20, v21, v22, v23, v24, v25, v26, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_24FF3F604(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  sub_24FF2BFE8();
  sub_24FF42074(*(v16 + 368), *(v16 + 376), *(v16 + 210));
  v17 = *(v16 + 472);
  sub_24FF424C0();
  sub_24FF42650();

  sub_24FF24BC0();
  sub_24FF2BDD4();

  return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_24FF3F6DC()
{
  *(v1 + 160) = v0;
  *(v1 + 24) = 0;
  *(v1 + 16) = 0;
  *(v1 + 32) = 7;
  v2 = swift_task_alloc();
  *(v1 + 168) = v2;
  *v2 = v1;
  v2[1] = sub_24FF3F784;

  return sub_24FF414E8(v1 + 16);
}

uint64_t sub_24FF3F784()
{
  sub_24FF2BC70();
  sub_24FF2BC88();
  sub_24FF3218C();
  *v3 = v2;
  v5 = *(v4 + 168);
  v6 = *v1;
  sub_24FF2BACC();
  *v7 = v6;
  *(v8 + 176) = v0;

  sub_24FF2BBD4();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_24FF3F87C()
{
  v30 = v0;
  if (qword_280B15CC8 != -1)
  {
    sub_24FF423E0();
  }

  v1 = *(v0 + 160);
  v2 = sub_24FF61BC8();
  *(v0 + 184) = sub_24FF278EC(v2, qword_280B16948);

  v3 = sub_24FF61BA8();
  v4 = sub_24FF62008();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 160);
    sub_24FF42770();
    v6 = sub_24FF42688();
    v29 = v6;
    *v1 = 136315138;
    v7 = sub_24FF3D36C();
    if (v8)
    {
      v9 = v8;
    }

    else
    {
      v7 = 0x3E746F6F723CLL;
      v9 = 0xE600000000000000;
    }

    v10 = sub_24FF5BBE0(v7, v9, &v29);

    *(v1 + 4) = v10;
    sub_24FF426A4(&dword_24FF22000, v11, v4, "Starting object in %s");
    sub_24FF25A6C(v6);
    sub_24FF42670();
    sub_24FF42634();
  }

  v12 = sub_24FF426FC();
  *(v0 + 40) = v12;
  *(v0 + 48) = v13;
  *(v0 + 56) = v14;
  *(v0 + 64) = xmmword_24FF635F0;
  *(v0 + 80) = 7;
  sub_24FF420E0(v12, v13, v14);
  v15 = sub_24FF418B0(v0 + 64);
  v16 = sub_24FF42074(*(v0 + 40), *(v0 + 48), *(v0 + 56));
  if (v15)
  {
    v25 = swift_task_alloc();
    *(v0 + 192) = v25;
    *v25 = v0;
    sub_24FF42538(v25);

    return sub_24FF41A58(0);
  }

  else
  {
    sub_24FF427C8(v16, v17, v18, v19, v20, v21, v22, v23, v24);
    v27 = swift_task_alloc();
    *(v0 + 208) = v27;
    *v27 = v0;
    v28 = sub_24FF42458(v27);

    return sub_24FF414E8(v28);
  }
}

uint64_t sub_24FF3FABC()
{
  sub_24FF2BC70();
  sub_24FF2BC88();
  v3 = *(v2 + 192);
  v4 = *v1;
  sub_24FF2BACC();
  *v5 = v4;

  if (v0)
  {
    sub_24FF24BC0();

    return v6();
  }

  else
  {
    sub_24FF2BBD4();

    return MEMORY[0x2822009F8](v8, v9, v10);
  }
}

uint64_t sub_24FF3FBD4()
{
  sub_24FF2BC7C();
  v1 = sub_24FF426FC();
  *(v0 + 112) = v1;
  *(v0 + 120) = v2;
  *(v0 + 128) = v3;
  *(v0 + 136) = xmmword_24FF63600;
  *(v0 + 152) = 7;
  sub_24FF420E0(v1, v2, v3);
  v4 = sub_24FF418B0(v0 + 136);
  sub_24FF42074(*(v0 + 112), *(v0 + 120), *(v0 + 128));
  if (v4)
  {
    *(v0 + 88) = xmmword_24FF635F0;
    *(v0 + 104) = 7;
    v5 = swift_task_alloc();
    *(v0 + 208) = v5;
    *v5 = v0;
    v6 = sub_24FF42458(v5);

    return sub_24FF414E8(v6);
  }

  else
  {
    v8 = swift_task_alloc();
    *(v0 + 200) = v8;
    *v8 = v0;
    sub_24FF42538(v8);

    return sub_24FF3D568();
  }
}

uint64_t sub_24FF3FD08()
{
  sub_24FF2BC70();
  sub_24FF2BC88();
  v2 = *(v1 + 200);
  v3 = *v0;
  sub_24FF2BACC();
  *v4 = v3;

  sub_24FF2BBD4();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_24FF3FDF0()
{
  v1 = sub_24FF426FC();
  *(v0 + 40) = v1;
  *(v0 + 48) = v2;
  *(v0 + 56) = v3;
  *(v0 + 64) = xmmword_24FF635F0;
  *(v0 + 80) = 7;
  sub_24FF420E0(v1, v2, v3);
  v4 = sub_24FF418B0(v0 + 64);
  v5 = sub_24FF42074(*(v0 + 40), *(v0 + 48), *(v0 + 56));
  if (v4)
  {
    v14 = swift_task_alloc();
    *(v0 + 192) = v14;
    *v14 = v0;
    sub_24FF42538(v14);

    return sub_24FF41A58(0);
  }

  else
  {
    sub_24FF427C8(v5, v6, v7, v8, v9, v10, v11, v12, v13);
    v16 = swift_task_alloc();
    *(v0 + 208) = v16;
    *v16 = v0;
    v17 = sub_24FF42458(v16);

    return sub_24FF414E8(v17);
  }
}

uint64_t sub_24FF3FF20()
{
  sub_24FF2BC70();
  sub_24FF2BC88();
  sub_24FF3218C();
  *v3 = v2;
  v5 = *(v4 + 208);
  v6 = *v1;
  sub_24FF2BACC();
  *v7 = v6;
  *(v8 + 216) = v0;

  sub_24FF2BBD4();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_24FF40018()
{
  v15 = v0;
  v1 = *(v0 + 184);
  v2 = *(v0 + 160);

  v3 = sub_24FF61BA8();
  v4 = sub_24FF62008();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 160);
    sub_24FF42770();
    v6 = sub_24FF42688();
    v14 = v6;
    *v2 = 136315138;
    v7 = sub_24FF3D36C();
    if (v8)
    {
      v9 = v8;
    }

    else
    {
      v7 = 0x3E746F6F723CLL;
      v9 = 0xE600000000000000;
    }

    v10 = sub_24FF5BBE0(v7, v9, &v14);

    *(v2 + 4) = v10;
    sub_24FF426A4(&dword_24FF22000, v11, v4, "Ending object in %s");
    sub_24FF25A6C(v6);
    sub_24FF42670();
    sub_24FF42634();
  }

  sub_24FF321B0();

  return v12();
}

uint64_t sub_24FF40158()
{
  if (*(*v0 + 16))
  {
    result = sub_24FF5E8C4();
    if (!v2)
    {
      return sub_24FF5E664(*(*v0 + 16) - 1);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

size_t sub_24FF40194@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_24FF25460(&qword_27F3B42C8, &qword_24FF641A0);
  v4 = *(*(v3 - 8) + 64);
  result = MEMORY[0x28223BE20](v3 - 8);
  v7 = &v9 - v6;
  if (*(*v1 + 16))
  {
    sub_24FF5E920(&v9 - v6);
    v8 = sub_24FF61898();
    if (sub_24FF24B70(v7, 1, v8) == 1)
    {
      sub_24FF422D0(v7, &qword_27F3B42C8, &qword_24FF641A0);
      return sub_24FF5E6EC(*(*v1 + 16) - 1, a1);
    }

    else
    {
      return (*(*(v8 - 8) + 32))(a1, v7, v8);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_24FF402AC()
{
  *(v1 + 112) = v0;
  *(v1 + 16) = xmmword_24FF63610;
  *(v1 + 32) = 7;
  v2 = swift_task_alloc();
  *(v1 + 120) = v2;
  *v2 = v1;
  v2[1] = sub_24FF40358;

  return sub_24FF414E8(v1 + 16);
}

uint64_t sub_24FF40358()
{
  sub_24FF2BC70();
  sub_24FF2BC88();
  sub_24FF3218C();
  *v3 = v2;
  v5 = *(v4 + 120);
  v6 = *v1;
  sub_24FF2BACC();
  *v7 = v6;
  *(v8 + 128) = v0;

  sub_24FF2BBD4();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_24FF40450()
{
  v1 = *(v0 + 112);
  v2 = *(v1 + 64);
  v3 = *(v1 + 72);
  v4 = *(v1 + 80);
  if (v4 == 255)
  {
    v24 = sub_24FF4259C();
    sub_24FF420E0(v24, v25, 0xFFu);
    v26 = sub_24FF4259C();
    sub_24FF420E0(v26, v27, 0xFFu);
    v28 = sub_24FF4259C();
    sub_24FF42074(v28, v29, 0xFFu);
    sub_24FF42074(3, 0, 7u);
    v30 = sub_24FF4259C();
    sub_24FF42074(v30, v31, 0xFFu);
  }

  else
  {
    *(v0 + 88) = xmmword_24FF63620;
    *(v0 + 64) = v2;
    *(v0 + 72) = v3;
    *(v0 + 80) = v4;
    *(v0 + 104) = 7;
    v5 = sub_24FF4258C();
    sub_24FF420E0(v5, v6, v7);
    v8 = sub_24FF4258C();
    sub_24FF420E0(v8, v9, v10);
    v11 = sub_24FF4258C();
    sub_24FF420E0(v11, v12, v13);
    v14 = static JsonToken.== infix(_:_:)(v0 + 64, v0 + 88);
    sub_24FF42088(*(v0 + 88), *(v0 + 96), *(v0 + 104));
    sub_24FF42088(*(v0 + 64), *(v0 + 72), *(v0 + 80));
    v15 = sub_24FF4258C();
    sub_24FF42074(v15, v16, v17);
    v18 = sub_24FF4258C();
    sub_24FF42074(v18, v19, v20);
    if (v14)
    {
      *(v0 + 40) = xmmword_24FF63620;
      *(v0 + 56) = 7;
      v21 = swift_task_alloc();
      *(v0 + 152) = v21;
      *v21 = v0;
      v22 = sub_24FF42560(v21);

      return sub_24FF414E8(v22);
    }
  }

  v32 = swift_task_alloc();
  *(v0 + 136) = v32;
  *v32 = v0;
  v32[1] = sub_24FF40638;
  v33 = *(v0 + 112);

  return sub_24FF3DC30(1);
}

uint64_t sub_24FF40638()
{
  sub_24FF2BC70();
  sub_24FF2BC88();
  v3 = *(v2 + 136);
  v4 = *v1;
  sub_24FF2BACC();
  *v5 = v4;

  if (v0)
  {
    sub_24FF24BC0();

    return v6();
  }

  else
  {
    sub_24FF2BBD4();

    return MEMORY[0x2822009F8](v8, v9, v10);
  }
}

uint64_t sub_24FF40750()
{
  sub_24FF2BC70();
  v1 = *(v0 + 112);
  if (*(v1 + 80) == 7 && ((v3 = v1 + 64, v2 = *(v1 + 64), !*(v3 + 8)) ? (v4 = v2 == 4) : (v4 = 0), v4))
  {
    v8 = swift_task_alloc();
    *(v0 + 144) = v8;
    *v8 = v0;
    v8[1] = sub_24FF4085C;
    v9 = *(v0 + 112);

    return sub_24FF3D568();
  }

  else
  {
    *(v0 + 40) = xmmword_24FF63620;
    *(v0 + 56) = 7;
    v5 = swift_task_alloc();
    *(v0 + 152) = v5;
    *v5 = v0;
    v6 = sub_24FF42560(v5);

    return sub_24FF414E8(v6);
  }
}

uint64_t sub_24FF4085C()
{
  sub_24FF2BC70();
  sub_24FF2BC88();
  v2 = *(v1 + 144);
  v3 = *v0;
  sub_24FF2BACC();
  *v4 = v3;

  sub_24FF2BBD4();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_24FF40944()
{
  sub_24FF2BC70();
  sub_24FF2BC88();
  sub_24FF3218C();
  *v3 = v2;
  v5 = *(v4 + 152);
  v6 = *v1;
  sub_24FF2BACC();
  *v7 = v6;
  *(v8 + 160) = v0;

  if (v0)
  {
    sub_24FF2BBD4();

    return MEMORY[0x2822009F8](v9, v10, v11);
  }

  else
  {
    sub_24FF24BC0();

    return v12();
  }
}

uint64_t sub_24FF40A68(char a1)
{
  *(v2 + 56) = v1;
  *(v2 + 33) = a1;
  v3 = type metadata accessor for JsonStreamEvent(0);
  *(v2 + 64) = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  *(v2 + 72) = swift_task_alloc();
  v5 = *(*(sub_24FF25460(&qword_27F3B42C8, &qword_24FF641A0) - 8) + 64) + 15;
  *(v2 + 80) = swift_task_alloc();
  *(v2 + 88) = swift_task_alloc();
  v6 = sub_24FF61898();
  *(v2 + 96) = v6;
  v7 = *(v6 - 8);
  *(v2 + 104) = v7;
  v8 = *(v7 + 64) + 15;
  *(v2 + 112) = swift_task_alloc();
  *(v2 + 120) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24FF40BAC, 0, 0);
}

uint64_t sub_24FF40BAC()
{
  v1 = *(v0 + 56);
  v2 = sub_24FF3D36C();
  if (!v3)
  {
    v13 = 0x800000024FF67250;
    sub_24FF4227C();
    sub_24FF4271C();
    v14 = 0xD000000000000030;
LABEL_7:
    *v12 = v14;
    *(v12 + 8) = v13;
    goto LABEL_8;
  }

  v4 = v3;
  v5 = *(v0 + 56);
  v6 = *(v5 + 80);
  if (v6 == 255)
  {

    v13 = 0x800000024FF67290;
    sub_24FF4227C();
    sub_24FF4271C();
    v14 = 0xD000000000000027;
    goto LABEL_7;
  }

  v7 = v2;
  v9 = *(v5 + 64);
  v8 = *(v5 + 72);
  v11 = *(v0 + 88);
  v10 = *(v0 + 96);
  sub_24FF3D3D4(v11);
  if (sub_24FF24B70(v11, 1, v10) == 1)
  {
    sub_24FF422D0(*(v0 + 88), &qword_27F3B42C8, &qword_24FF641A0);
    sub_24FF426EC();
    sub_24FF62098();
    MEMORY[0x25305C910](0xD00000000000003BLL, 0x800000024FF672C0);
    MEMORY[0x25305C910](v7, v4);

    sub_24FF4227C();
    sub_24FF4271C();
    *v12 = v163;
    *(v12 + 8) = v164;
LABEL_8:
    *(v12 + 16) = 0;
    swift_willThrow();
    goto LABEL_9;
  }

  v161 = v8;
  v22 = *(v0 + 96);
  v23 = *(v0 + 80);
  v24 = *(v0 + 56);
  v25 = *(*(v0 + 104) + 32);
  v25(*(v0 + 120), *(v0 + 88), v22);
  sub_24FF3D48C(v23);
  v26 = sub_24FF24B70(v23, 1, v22);
  v27 = *(v0 + 96);
  v28 = *(v0 + 80);
  if (v26 != 1)
  {
    v25(*(v0 + 112), *(v0 + 80), *(v0 + 96));
    switch(v6)
    {
      case 1:
        sub_24FF42414();
        v32 = sub_24FF25460(&qword_27F3B42A8, &unk_24FF632B0);
        v33 = sub_24FF424A4(v32);
        v23(v33);
        v34 = sub_24FF425A8();
        v23(v34);
        v35 = type metadata accessor for JsonFieldValueEvent(0);
        v36 = sub_24FF424DC(v35);
        *v37 = v9;
        *(v37 + 8) = v161;
        *(v37 + 16) = 0;
        sub_24FF424F4(v36, v38, v39, v40, v41, v42, v43, v44, v143, v147, *v151, v151[4]);
        v45 = *(v155 + 8);
        v46 = sub_24FF4270C();
        sub_24FF420E0(v46, v47, v48);
        v49 = sub_24FF4270C();
        sub_24FF420B4(v49, v50, v51);
        v45(v24);
        v52 = sub_24FF4270C();
        sub_24FF42074(v52, v53, v54);
        goto LABEL_21;
      case 2:
        sub_24FF42414();
        v79 = sub_24FF25460(&qword_27F3B42A8, &unk_24FF632B0);
        v80 = sub_24FF424A4(v79);
        v23(v80);
        v81 = sub_24FF425A8();
        v23(v81);
        v82 = type metadata accessor for JsonFieldValueEvent(0);
        v83 = sub_24FF424DC(v82);
        *v84 = v9;
        *(v84 + 8) = 0;
        *(v84 + 16) = 2;
        v92 = sub_24FF424F4(v83, v85, v86, v87, v88, v89, v90, v91, v143, v147, *v151, v151[4]);
        v76 = sub_24FF42548(v92, v93, v94, v95, v96, v97, v98, v99, v145, v149, v153, v155);
        v78 = 2;
        goto LABEL_19;
      case 3:
        sub_24FF42414();
        v55 = sub_24FF25460(&qword_27F3B42A8, &unk_24FF632B0);
        v56 = sub_24FF424A4(v55);
        v23(v56);
        v57 = sub_24FF425A8();
        v23(v57);
        v58 = type metadata accessor for JsonFieldValueEvent(0);
        v59 = sub_24FF424DC(v58);
        *v60 = v9;
        *(v60 + 8) = 0;
        *(v60 + 16) = 3;
        v68 = sub_24FF424F4(v59, v61, v62, v63, v64, v65, v66, v67, v143, v147, *v151, v151[4]);
        v76 = sub_24FF42548(v68, v69, v70, v71, v72, v73, v74, v75, v144, v148, v152, v155);
        v78 = 3;
        goto LABEL_19;
      case 4:
        sub_24FF42414();
        v100 = sub_24FF25460(&qword_27F3B42A8, &unk_24FF632B0);
        v101 = sub_24FF424A4(v100);
        v23(v101);
        v102 = sub_24FF425A8();
        v23(v102);
        v103 = type metadata accessor for JsonFieldValueEvent(0);
        v104 = sub_24FF424DC(v103);
        *v105 = v9 & 1;
        *(v105 + 8) = 0;
        *(v105 + 16) = 1;
        v113 = sub_24FF424F4(v104, v106, v107, v108, v109, v110, v111, v112, v143, v147, *v151, v151[4]);
        v76 = sub_24FF42548(v113, v114, v115, v116, v117, v118, v119, v120, v146, v150, v154, v155);
        v78 = 4;
LABEL_19:
        sub_24FF420E0(v76, v77, v78);
        v4(v24, v159, v7);
        goto LABEL_21;
      case 7:
        if (v9 != 5 || v161)
        {
          goto LABEL_27;
        }

        v124 = *(v0 + 112);
        v123 = *(v0 + 120);
        v126 = *(v0 + 96);
        v125 = *(v0 + 104);
        v127 = *(v0 + 72);
        v128 = *(v0 + 56);
        v156 = *(v0 + 33);
        v162 = v128[6];
        v157 = v128[7];
        v158 = *(v0 + 64);
        sub_24FF257B8(v128 + 3, v162);
        v129 = v127 + *(sub_24FF25460(&qword_27F3B42A8, &unk_24FF632B0) + 48);
        v130 = *(v125 + 16);
        v130(v127, v123, v126);
        v130(v129, v124, v126);
        v131 = type metadata accessor for JsonFieldValueEvent(0);
        v132 = (v129 + v131[5]);
        *v132 = v7;
        v132[1] = v4;
        v133 = v129 + v131[6];
        *v133 = 0;
        *(v133 + 8) = 0;
        *(v133 + 16) = 4;
        *(v129 + v131[7]) = v156;
        swift_storeEnumTagMultiPayload();
        v134 = *(v157 + 8);
        sub_24FF420E0(5, 0, 7u);
        v134(v127, v162, v157);
LABEL_21:
        sub_24FF421C8(*(v0 + 72));
        v121 = swift_task_alloc();
        *(v0 + 128) = v121;
        *v121 = v0;
        v121[1] = sub_24FF41334;
        v122 = *(v0 + 56);

        return sub_24FF3D568();
      default:
LABEL_27:
        v135 = *(v0 + 112);
        v160 = *(v0 + 120);
        v136 = *(v0 + 96);
        v137 = *(v0 + 104);
        sub_24FF420E0(v9, v161, v6);

        sub_24FF426EC();
        sub_24FF62098();
        *(v0 + 40) = v163;
        *(v0 + 48) = v164;
        sub_24FF42734();
        MEMORY[0x25305C910](0xD000000000000012);
        *(v0 + 16) = v9;
        *(v0 + 24) = v161;
        *(v0 + 32) = v6;
        sub_24FF620E8();
        v138 = *(v0 + 40);
        v139 = *(v0 + 48);
        sub_24FF4227C();
        v140 = sub_24FF4271C();
        *v141 = v138;
        v141[1] = v139;
        sub_24FF426C0(v140, v141);
        sub_24FF42074(v9, v161, v6);
        v142 = *(v137 + 8);
        v142(v135, v136);
        v142(v160, v136);
        goto LABEL_9;
    }
  }

  v29 = *(v0 + 120);
  v30 = *(v0 + 104);
  sub_24FF422D0(*(v0 + 80), &qword_27F3B42C8, &qword_24FF641A0);
  sub_24FF426EC();
  sub_24FF62098();
  MEMORY[0x25305C910](0xD000000000000035, 0x800000024FF67300);
  MEMORY[0x25305C910](v7, v4);

  sub_24FF4227C();
  sub_24FF4271C();
  *v31 = v163;
  *(v31 + 8) = v164;
  *(v31 + 16) = 0;
  swift_willThrow();
  (*(v30 + 8))(v29, v27);
LABEL_9:
  v16 = *(v0 + 112);
  v15 = *(v0 + 120);
  v18 = *(v0 + 80);
  v17 = *(v0 + 88);
  v19 = *(v0 + 72);

  sub_24FF24BC0();

  return v20();
}

uint64_t sub_24FF41334()
{
  sub_24FF2BC70();
  sub_24FF2BC88();
  v2 = *(v1 + 128);
  v3 = *v0;
  sub_24FF2BACC();
  *v4 = v3;

  sub_24FF2BBD4();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_24FF4141C()
{
  v1 = v0[14];
  v2 = v0[15];
  v3 = v0[12];
  v5 = v0[10];
  v4 = v0[11];
  v6 = v0[9];
  v7 = *(v0[13] + 8);
  v8 = sub_24FF32440();
  v7(v8);
  (v7)(v2, v3);

  sub_24FF321B0();

  return v9();
}

uint64_t sub_24FF414E8(uint64_t a1)
{
  *(v2 + 120) = v1;
  *(v2 + 128) = *a1;
  *(v2 + 33) = *(a1 + 16);
  return MEMORY[0x2822009F8](sub_24FF41518, 0, 0);
}

uint64_t sub_24FF41518()
{
  v31 = v0;
  v1 = v0;
  v2 = *(v0 + 33);
  v3 = *(v0 + 120);
  v26 = *(v3 + 64);
  v27 = *(v3 + 72);
  v28 = *(v3 + 80);
  v29 = *(v1 + 128);
  v30 = v2;
  sub_24FF420E0(v26, v27, v28);
  v4 = sub_24FF418B0(&v29);
  sub_24FF42074(v26, v27, v28);
  if (v4)
  {
    v5 = *(v3 + 80);
    v6 = *(v1 + 33);
    v8 = *(v1 + 128);
    v7 = *(v1 + 136);
    if (v5 == 255)
    {
      v9 = (v1 + 88);
      *&v29 = 0;
      *(&v29 + 1) = 0xE000000000000000;
      sub_24FF62098();
      v18 = v29;
      *(v1 + 96) = *(&v29 + 1);
      v13 = (v1 + 96);
      *(v1 + 88) = v18;
      sub_24FF42734();
      MEMORY[0x25305C910](0xD000000000000012);
      *(v1 + 16) = v8;
      *(v1 + 24) = v7;
      *(v1 + 32) = v6;
      sub_24FF620E8();
      MEMORY[0x25305C910](0xD000000000000019, 0x800000024FF67210);
    }

    else
    {
      v9 = (v1 + 104);
      v11 = *(v3 + 64);
      v10 = *(v3 + 72);
      *&v29 = 0;
      *(&v29 + 1) = 0xE000000000000000;
      sub_24FF420B4(v11, v10, v5);
      sub_24FF62098();
      v12 = v29;
      *(v1 + 112) = *(&v29 + 1);
      v13 = (v1 + 112);
      *(v1 + 104) = v12;
      sub_24FF42734();
      MEMORY[0x25305C910](0xD000000000000012);
      *(v1 + 40) = v8;
      *(v1 + 48) = v7;
      *(v1 + 56) = v6;
      sub_24FF427FC();
      MEMORY[0x25305C910](0xD000000000000016, 0x800000024FF67230);
      *(v1 + 64) = v11;
      *(v1 + 72) = v10;
      *(v1 + 80) = v5;
      sub_24FF427FC();
      sub_24FF42074(v11, v10, v5);
    }

    v19 = *v9;
    v20 = *v13;
    sub_24FF4227C();
    v21 = sub_24FF4271C();
    *v22 = v19;
    v22[1] = v20;
    sub_24FF426C0(v21, v22);
    v23 = *(v1 + 8);
    sub_24FF42618();

    __asm { BRAA            X1, X16 }
  }

  v14 = swift_task_alloc();
  *(v1 + 144) = v14;
  *v14 = v1;
  v14[1] = sub_24FF417D0;
  v15 = *(v1 + 120);
  sub_24FF42618();

  return sub_24FF3D568();
}

uint64_t sub_24FF417D0()
{
  sub_24FF2BC70();
  sub_24FF2BC88();
  v2 = *(v1 + 144);
  v3 = *v0;
  sub_24FF2BACC();
  *v4 = v3;

  sub_24FF321B0();

  return v5();
}

uint64_t sub_24FF418B0(uint64_t a1)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v6 = *v1;
  v5 = *(v1 + 8);
  v7 = *(v1 + 16);
  if (v7 == 255)
  {
    if (v4 == 255)
    {
      sub_24FF420B4(*a1, v2, 0xFFu);
      sub_24FF420E0(v6, v5, 0xFFu);
      sub_24FF42074(v6, v5, 0xFFu);
      v9 = 0;
      return v9 & 1;
    }

    sub_24FF420B4(*a1, v2, v4);
    sub_24FF420E0(v6, v5, 0xFFu);
    goto LABEL_7;
  }

  v14 = *v1;
  v15 = v5;
  v16 = v7;
  if (v4 == 255)
  {
    sub_24FF420B4(v3, v2, 0xFFu);
    sub_24FF420E0(v6, v5, v7);
    sub_24FF420E0(v6, v5, v7);
    sub_24FF42088(v6, v5, v7);
LABEL_7:
    sub_24FF42074(v6, v5, v7);
    sub_24FF42074(v3, v2, v4);
    v9 = 1;
    return v9 & 1;
  }

  v11 = v3;
  v12 = v2;
  v13 = v4;
  sub_24FF420B4(v3, v2, v4);
  sub_24FF420E0(v6, v5, v7);
  sub_24FF420E0(v6, v5, v7);
  v8 = static JsonToken.== infix(_:_:)(&v14, &v11);
  sub_24FF42088(v11, v12, v13);
  sub_24FF42088(v14, v15, v16);
  sub_24FF42074(v6, v5, v7);
  v9 = v8 ^ 1;
  return v9 & 1;
}

uint64_t sub_24FF41A58(char a1)
{
  *(v2 + 104) = v1;
  *(v2 + 81) = a1;
  return MEMORY[0x2822009F8](sub_24FF41A7C, 0, 0);
}

uint64_t sub_24FF41A7C()
{
  v1 = *(v0 + 104);
  v2 = *(v1 + 64);
  *(v0 + 112) = v2;
  v3 = *(v1 + 72);
  *(v0 + 120) = v3;
  v4 = *(v1 + 80);
  if (v4 == 255)
  {
    v10 = 0x800000024FF67170;
    v11 = 0xD000000000000035;
  }

  else
  {
    if (!*(v1 + 80))
    {
      v5 = sub_24FF32440();
      sub_24FF420B4(v5, v6, 0);
      v7 = swift_task_alloc();
      *(v0 + 128) = v7;
      *v7 = v0;
      v7[1] = sub_24FF41C48;
      v8 = *(v0 + 104);

      return sub_24FF3D568();
    }

    v12 = sub_24FF32440();
    sub_24FF420B4(v12, v13, v4);
    sub_24FF62098();
    *(v0 + 88) = 0;
    *(v0 + 96) = 0xE000000000000000;
    sub_24FF42734();
    MEMORY[0x25305C910](0xD000000000000032);
    *(v0 + 64) = v2;
    *(v0 + 72) = v3;
    *(v0 + 80) = v4;
    sub_24FF620E8();
    v14 = sub_24FF32440();
    sub_24FF42074(v14, v15, v4);
    v11 = *(v0 + 88);
    v10 = *(v0 + 96);
  }

  sub_24FF4227C();
  v16 = sub_24FF4271C();
  *v17 = v11;
  v17[1] = v10;
  sub_24FF426C0(v16, v17);
  sub_24FF24BC0();

  return v18();
}

uint64_t sub_24FF41C48()
{
  sub_24FF2BC70();
  sub_24FF2BC88();
  v2 = *(v1 + 128);
  v3 = *v0;
  sub_24FF2BACC();
  *v4 = v3;

  sub_24FF2BBD4();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_24FF41D30()
{
  v2 = *(v0 + 112);
  v1 = *(v0 + 120);
  v3 = *(v0 + 104);
  sub_24FF427A4();
  sub_24FF5BADC();
  v4 = *(*(v3 + 112) + 16);
  sub_24FF5BB68(v4);
  v5 = *(v3 + 112);
  *(v5 + 16) = v4 + 1;
  v6 = v5 + 16 * v4;
  *(v6 + 32) = v2;
  *(v6 + 40) = v1;
  *(v3 + 112) = v5;
  swift_endAccess();
  v7 = swift_task_alloc();
  *(v0 + 136) = v7;
  *v7 = v0;
  v7[1] = sub_24FF41E28;
  v8 = *(v0 + 104);
  v9 = *(v0 + 81);

  return sub_24FF3DC30(v9);
}

uint64_t sub_24FF41E28()
{
  sub_24FF2BC70();
  sub_24FF2BC88();
  v3 = *(v2 + 136);
  v4 = *v1;
  sub_24FF2BACC();
  *v5 = v4;

  if (v0)
  {
    sub_24FF24BC0();

    return v6();
  }

  else
  {
    sub_24FF2BBD4();

    return MEMORY[0x2822009F8](v8, v9, v10);
  }
}

uint64_t sub_24FF41F40()
{
  sub_24FF2BC70();
  v1 = *(v0 + 104);
  sub_24FF427A4();
  sub_24FF40158();
  swift_endAccess();

  sub_24FF321B0();

  return v2();
}

uint64_t sub_24FF41FBC()
{
  v1 = *(v0 + 16);

  sub_24FF25A6C((v0 + 24));
  sub_24FF42074(*(v0 + 64), *(v0 + 72), *(v0 + 80));
  sub_24FF42074(*(v0 + 88), *(v0 + 96), *(v0 + 104));
  v2 = *(v0 + 112);

  v3 = *(v0 + 120);

  v4 = *(v0 + 128);

  v5 = *(v0 + 144);

  return v0;
}

uint64_t sub_24FF4201C()
{
  sub_24FF41FBC();

  return MEMORY[0x2821FE8D8](v0, 152, 7);
}

uint64_t sub_24FF42074(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 != 0xFF)
  {
    return sub_24FF42088(a1, a2, a3);
  }

  return a1;
}

uint64_t sub_24FF42088(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 6u && ((1 << a3) & 0x63) != 0)
  {
  }

  return result;
}

uint64_t sub_24FF420B4(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 6u && ((1 << a3) & 0x63) != 0)
  {
  }

  return result;
}

uint64_t sub_24FF420E0(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 != 0xFF)
  {
    return sub_24FF420B4(a1, a2, a3);
  }

  return a1;
}

uint64_t sub_24FF420F4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_24FF42158(uint64_t a1, uint64_t a2)
{
  v4 = sub_24FF25460(&qword_27F3B42C8, &qword_24FF641A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24FF421C8(uint64_t a1)
{
  v2 = type metadata accessor for JsonStreamEvent(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_24FF42224()
{
  result = qword_27F3B42D0;
  if (!qword_27F3B42D0)
  {
    sub_24FF61898();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3B42D0);
  }

  return result;
}

unint64_t sub_24FF4227C()
{
  result = qword_27F3B42D8;
  if (!qword_27F3B42D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3B42D8);
  }

  return result;
}

uint64_t sub_24FF422D0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_24FF25460(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_24FF4233C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 17))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 1)
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

uint64_t sub_24FF4237C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
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

uint64_t sub_24FF423E0()
{

  return swift_once();
}

void *sub_24FF42414()
{
  v1 = *(v0 + 120);
  v7 = *(v0 + 112);
  v3 = *(v0 + 96);
  v2 = *(v0 + 104);
  v4 = *(v0 + 72);
  v5 = *(v0 + 56);
  v8 = *(v0 + 33);
  v9 = v5[7];
  v10 = *(v0 + 64);
  return sub_24FF257B8(v5 + 3, v5[6]);
}

uint64_t sub_24FF42458(uint64_t a1)
{
  *(a1 + 8) = sub_24FF3FF20;
  v3 = *(v2 + 160);
  return v1;
}

uint64_t sub_24FF42484()
{
  v2 = v0[44];
  result = v0[45];
  v4 = v0[42];
  v3 = v0[43];
  v6 = v0[40];
  v5 = v0[41];
  v7 = v0[39];
  v9 = v0[35];
  v8 = v0[36];
  v10 = v0[34];
  v11 = v0[31];
  v12 = v0[32];
  return result;
}

uint64_t sub_24FF424A4(uint64_t a1)
{
  v3 = v2 + *(a1 + 48);
  v4 = *(v1 + 16);
  return v2;
}

uint64_t sub_24FF424C0()
{
  v2 = v0[44];
  result = v0[45];
  v4 = v0[42];
  v3 = v0[43];
  v6 = v0[40];
  v5 = v0[41];
  v7 = v0[39];
  v9 = v0[35];
  v8 = v0[36];
  v10 = v0[34];
  return result;
}

uint64_t sub_24FF424DC(uint64_t result)
{
  v4 = (v3 + *(result + 20));
  *v4 = v2;
  v4[1] = v1;
  v5 = v3 + *(result + 24);
  return result;
}

uint64_t sub_24FF424F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, char a12)
{
  *(v12 + *(a1 + 28)) = a12;

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_24FF42538(uint64_t result)
{
  *(result + 8) = v1;
  v3 = *(v2 + 160);
  return result;
}

uint64_t sub_24FF42560(uint64_t a1)
{
  *(a1 + 8) = sub_24FF40944;
  v3 = *(v2 + 112);
  return v1;
}

unint64_t sub_24FF425B8()
{
  v3 = *(v2 + 120);
  *(v3 + 16) = v0 + 1;
  return v3 + ((*(v1 + 80) + 32) & ~*(v1 + 80)) + *(v1 + 72) * v0;
}

void sub_24FF425E0()
{
  v2 = v0[36];
  v1 = v0[37];
  v3 = v0[33];
  v4 = v0[29];
  v5 = *(v4 + 48);
  v6 = *(v4 + 56);
}

void sub_24FF42634()
{

  JUMPOUT(0x25305D1B0);
}

uint64_t sub_24FF42650()
{
  v3 = v0[32];
  v4 = v0[31];
  v5 = v0[30];
}

void sub_24FF42670()
{

  JUMPOUT(0x25305D1B0);
}

uint64_t sub_24FF42688()
{

  return swift_slowAlloc();
}

void sub_24FF426A4(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 0xCu);
}

uint64_t sub_24FF426C0(uint64_t a1, uint64_t a2)
{
  *(a2 + 16) = 1;

  return swift_willThrow();
}

uint64_t sub_24FF426FC()
{
  v1 = *(v0 + 160);
  result = *(v1 + 64);
  v3 = *(v1 + 72);
  v4 = *(v1 + 80);
  return result;
}

uint64_t sub_24FF4271C()
{

  return swift_allocError();
}

uint64_t sub_24FF42758(uint64_t a1)
{
  *(a1 + 8) = v1;
  v3 = *(v2 + 232);
  return *(v2 + 209);
}

uint64_t sub_24FF42770()
{

  return swift_slowAlloc();
}

uint64_t sub_24FF42788()
{
  v3 = *(v0 + 240);
}

uint64_t sub_24FF427A4()
{

  return swift_beginAccess();
}

__n128 sub_24FF427C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a9)
{
  result = a9;
  *(v10 + 88) = a9;
  *(v10 + 104) = v9;
  return result;
}

uint64_t sub_24FF427DC()
{
  v2 = *(*(v0 + 120) + 16);

  return sub_24FF5BB80(v2);
}

uint64_t sub_24FF427FC()
{

  return sub_24FF620E8();
}

uint64_t sub_24FF4281C()
{
  v4 = *(v2 + 136);
  v3 = *(v2 + 144);
  sub_24FF420E0(v1, v0, 7u);
}

uint64_t static JsonToken.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *a2;
  v6 = *(a2 + 8);
  v7 = *(a2 + 16);
  switch(v4)
  {
    case 1u:
      if (v7 != 1)
      {
        goto LABEL_40;
      }

      if (*&v2 != *&v5 || v3 != v6)
      {
        sub_24FF4259C();
        v10 = sub_24FF42D78();
        v41 = sub_24FF42D6C();
        v43 = sub_24FF42D50(v41, v42, 1u);
        v45 = sub_24FF42D50(v43, v44, 1u);
        sub_24FF42088(v45, v46, 1u);
        v17 = sub_24FF42D6C();
        v19 = 1;
        goto LABEL_39;
      }

      v24 = 1;
      v71 = sub_24FF4259C();
      v73 = sub_24FF42D50(v71, v72, 1u);
      v75 = sub_24FF42D50(v73, v74, 1u);
      sub_24FF42088(v75, v76, 1u);
      v77 = sub_24FF4259C();
      v79 = 1;
LABEL_44:
      sub_24FF42088(v77, v78, v79);
      return v24 & 1;
    case 2u:
      if (v7 != 2)
      {
        goto LABEL_41;
      }

      v25 = sub_24FF4259C();
      sub_24FF42088(v25, v26, 2u);
      v27 = sub_24FF42D6C();
      sub_24FF42088(v27, v28, 2u);
      v24 = *&v2 == *&v5;
      return v24 & 1;
    case 3u:
      if (v7 != 3)
      {
        goto LABEL_41;
      }

      v29 = *a1;
      v30 = *a2;
      v31 = sub_24FF4259C();
      sub_24FF42088(v31, v32, 3u);
      v33 = sub_24FF42D6C();
      sub_24FF42088(v33, v34, 3u);
      v24 = v2 == v5;
      return v24 & 1;
    case 4u:
      if (v7 != 4)
      {
        goto LABEL_41;
      }

      v20 = sub_24FF4259C();
      sub_24FF42088(v20, v21, 4u);
      v22 = sub_24FF42D6C();
      sub_24FF42088(v22, v23, 4u);
      v24 = LOBYTE(v5) ^ LOBYTE(v2) ^ 1;
      return v24 & 1;
    case 5u:
      if (v7 != 5)
      {
        goto LABEL_40;
      }

      v47 = *a1;
      if (*&v2 != *&v5 || v3 != v6)
      {
        v10 = sub_24FF42D78();
        v49 = sub_24FF42D6C();
        v51 = sub_24FF42D50(v49, v50, 5u);
        v53 = sub_24FF42D50(v51, v52, 5u);
        sub_24FF42088(v53, v54, 5u);
        v17 = sub_24FF42D6C();
        v19 = 5;
        goto LABEL_39;
      }

      v80 = sub_24FF42D50(*&v47, v3, 5u);
      v82 = sub_24FF42D50(v80, v81, 5u);
      sub_24FF42088(v82, v83, 5u);
      v39 = sub_24FF4259C();
      v85 = 5;
      goto LABEL_103;
    case 6u:
      if (v7 != 6)
      {
        goto LABEL_40;
      }

      v55 = *a1;
      if (*&v2 != *&v5 || v3 != v6)
      {
        v10 = sub_24FF42D78();
        v57 = sub_24FF42D6C();
        v59 = sub_24FF42D50(v57, v58, 6u);
        v61 = sub_24FF42D50(v59, v60, 6u);
        sub_24FF42088(v61, v62, 6u);
        v17 = sub_24FF42D6C();
        v19 = 6;
        goto LABEL_39;
      }

      v86 = sub_24FF42D50(*&v55, v3, 6u);
      v88 = sub_24FF42D50(v86, v87, 6u);
      sub_24FF42088(v88, v89, 6u);
      v39 = sub_24FF4259C();
      v85 = 6;
      goto LABEL_103;
    case 7u:
      v35 = *a1;
      switch(*&v2)
      {
        case 1:
          if (v7 != 7 || *&v5 != 1 || v6 != 0)
          {
            goto LABEL_41;
          }

          v108 = sub_24FF4259C();
          sub_24FF42088(v108, v109, 7u);
          v24 = 1;
          v77 = 1;
          v78 = 0;
          v79 = 7;
          goto LABEL_44;
        case 2:
          if (v7 != 7 || *&v5 != 2 || v6 != 0)
          {
            goto LABEL_41;
          }

          v100 = sub_24FF4259C();
          sub_24FF42088(v100, v101, 7u);
          v39 = 2;
          break;
        case 3:
          if (v7 != 7 || *&v5 != 3 || v6 != 0)
          {
            goto LABEL_41;
          }

          v104 = sub_24FF4259C();
          sub_24FF42088(v104, v105, 7u);
          v39 = 3;
          break;
        case 4:
          if (v7 != 7 || *&v5 != 4 || v6 != 0)
          {
            goto LABEL_41;
          }

          v96 = sub_24FF4259C();
          sub_24FF42088(v96, v97, 7u);
          v39 = 4;
          break;
        case 5:
          if (v7 != 7 || *&v5 != 5 || v6 != 0)
          {
            goto LABEL_41;
          }

          v112 = sub_24FF4259C();
          sub_24FF42088(v112, v113, 7u);
          v39 = 5;
          break;
        case 6:
          if (v7 != 7 || *&v5 != 6 || v6 != 0)
          {
            goto LABEL_41;
          }

          v116 = sub_24FF4259C();
          sub_24FF42088(v116, v117, 7u);
          v39 = 6;
          break;
        default:
          if (v7 != 7 || (v6 | *&v5) != 0)
          {
            goto LABEL_41;
          }

          v37 = sub_24FF4259C();
          sub_24FF42088(v37, v38, 7u);
          v39 = 0;
          break;
      }

      v84 = 0;
      v85 = 7;
      goto LABEL_103;
    default:
      if (*(a2 + 16))
      {
LABEL_40:
        v64 = *(a1 + 8);

LABEL_41:
        v65 = sub_24FF42D6C();
        v67 = sub_24FF42D50(v65, v66, v7);
        sub_24FF42088(v67, v68, v4);
        v69 = sub_24FF42D6C();
        sub_24FF42088(v69, v70, v7);
        v24 = 0;
        return v24 & 1;
      }

      v8 = *a1;
      if (*&v2 == *&v5 && v3 == v6)
      {
        v90 = sub_24FF42D50(*&v8, v3, 0);
        v92 = sub_24FF42D50(v90, v91, 0);
        sub_24FF42088(v92, v93, 0);
        v39 = sub_24FF4259C();
        v85 = 0;
LABEL_103:
        sub_24FF42088(v39, v84, v85);
        v24 = 1;
        return v24 & 1;
      }

      v10 = sub_24FF42D78();
      v11 = sub_24FF42D6C();
      v13 = sub_24FF42D50(v11, v12, 0);
      v15 = sub_24FF42D50(v13, v14, 0);
      sub_24FF42088(v15, v16, 0);
      v17 = sub_24FF42D6C();
      v19 = 0;
LABEL_39:
      sub_24FF42088(v17, v18, v19);
      return v10 & 1;
  }
}

uint64_t sub_24FF42C88(uint64_t a1)
{
  if ((*(a1 + 16) & 7) == 7)
  {
    return (*a1 + 7);
  }

  else
  {
    return *(a1 + 16) & 7;
  }
}

uint64_t sub_24FF42CA4(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xF9 && *(a1 + 17))
    {
      v2 = *a1 + 248;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 7)
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

uint64_t sub_24FF42CE4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF8)
  {
    *(result + 16) = 0;
    *result = a2 - 249;
    *(result + 8) = 0;
    if (a3 >= 0xF9)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF9)
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

uint64_t sub_24FF42D28(uint64_t result, unsigned int a2)
{
  if (a2 >= 7)
  {
    *result = a2 - 7;
    *(result + 8) = 0;
    LOBYTE(a2) = 7;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t sub_24FF42D78()
{

  return sub_24FF62158();
}

uint64_t sub_24FF42DB0(uint64_t a1)
{
  *(v2 + 176) = a1;
  *(v2 + 184) = v1;
  sub_24FF2BBD4();
  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_24FF42DDC()
{
  sub_24FF2BC7C();
  sub_24FF61F18();
  *(v0 + 192) = **(v0 + 184);
  v1 = swift_task_alloc();
  *(v0 + 200) = v1;
  *v1 = v0;
  v1[1] = sub_24FF42EB4;

  return sub_24FF454B8();
}

uint64_t sub_24FF42EB4()
{
  sub_24FF2BC7C();
  sub_24FF2BC88();
  v3 = v2;
  sub_24FF2BB08();
  *v4 = v3;
  v6 = *(v5 + 200);
  v7 = *v1;
  sub_24FF2BACC();
  *v8 = v7;

  if (v0)
  {
    sub_24FF45090();

    return v9();
  }

  else
  {
    v11 = *(v3 + 192);
    *(v3 + 208) = OBJC_IVAR____TtC19GenerativeFunctions15JsonTokenStream_currentCharacter;

    return MEMORY[0x2822009F8](sub_24FF42FE8, v11, 0);
  }
}

uint64_t sub_24FF42FE8()
{
  sub_24FF2BC70();
  sub_24FF45110();
  *(v0 + 216) = v1;
  *(v0 + 224) = *(v2 + 8);

  sub_24FF2BBD4();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_24FF43058()
{
  v50 = v0;
  if (!*(v0 + 224))
  {
    v14 = *(v0 + 176);
    *v14 = 0;
    v14[1] = 0;
    sub_24FF450B0(*(v0 + 176));
    sub_24FF2C1EC();

    __asm { BRAA            X1, X16 }
  }

  if (qword_280B15CB8 != -1)
  {
    swift_once();
    v33 = *(v0 + 224);
  }

  v1 = sub_24FF61BC8();
  sub_24FF278EC(v1, qword_280B16918);

  v2 = sub_24FF61BA8();
  v3 = sub_24FF62008();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = *(v0 + 216);
    v4 = *(v0 + 224);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v49 = v7;
    *v6 = 136315138;

    v8 = sub_24FF5BBE0(v5, v4, &v49);

    *(v6 + 4) = v8;
    _os_log_impl(&dword_24FF22000, v2, v3, "#JsonTokenizer next character is %s", v6, 0xCu);
    sub_24FF25A6C(v7);
    MEMORY[0x25305D1B0](v7, -1, -1);
    MEMORY[0x25305D1B0](v6, -1, -1);
  }

  v9 = *(v0 + 224);
  if (*(v0 + 216) == 123 && v9 == 0xE100000000000000)
  {
    v12 = 0;
    goto LABEL_17;
  }

  v11 = *(v0 + 224);
  if (sub_24FF62158())
  {
    v12 = 0;
LABEL_12:
    v13 = *(v0 + 224);
LABEL_17:

    *(v0 + 392) = 7;
    *(v0 + 368) = v12;
    *(v0 + 376) = 0;
    v17 = swift_task_alloc();
    *(v0 + 384) = v17;
    *v17 = v0;
    sub_24FF450A0(v17);
    sub_24FF2C1EC();

    return sub_24FF46748();
  }

  v20 = *(v0 + 224);
  if (*(v0 + 216) == 125 && v9 == 0xE100000000000000)
  {
    v12 = 1;
    goto LABEL_17;
  }

  if (sub_24FF450F8())
  {
    v12 = 1;
    goto LABEL_12;
  }

  v22 = *(v0 + 224);
  if (*(v0 + 216) == 91 && v9 == 0xE100000000000000)
  {
    v12 = 2;
    goto LABEL_17;
  }

  if (sub_24FF450F8())
  {
    v12 = 2;
    goto LABEL_12;
  }

  v24 = *(v0 + 224);
  if (*(v0 + 216) == 93 && v9 == 0xE100000000000000)
  {
    v12 = 3;
    goto LABEL_17;
  }

  if (sub_24FF450F8())
  {
    v12 = 3;
    goto LABEL_12;
  }

  v26 = *(v0 + 216) == 34 && v9 == 0xE100000000000000;
  if (v26 || (v27 = *(v0 + 224), (sub_24FF450F8() & 1) != 0))
  {
    v28 = *(v0 + 224);

    v29 = swift_task_alloc();
    *(v0 + 232) = v29;
    *v29 = v0;
    sub_24FF450A0(v29);
    sub_24FF2C1EC();

    return sub_24FF45780();
  }

  else
  {
    v31 = *(v0 + 224);
    if (*(v0 + 216) == 44 && v9 == 0xE100000000000000)
    {
      v12 = 4;
      goto LABEL_17;
    }

    if (sub_24FF450F8())
    {
      v12 = 4;
      goto LABEL_12;
    }

    v34 = *(v0 + 216) == 45 && v9 == 0xE100000000000000;
    if (v34 || (v35 = *(v0 + 224), (sub_24FF450F8() & 1) != 0))
    {
      v36 = swift_task_alloc();
      *(v0 + 280) = v36;
      *v36 = v0;
      sub_24FF450A0(v36);
      sub_24FF2C1EC();

      return sub_24FF46A64(v37, v38);
    }

    else
    {
      v40 = *(v0 + 216);
      v41 = *(v0 + 224);
      if (sub_24FF61D18())
      {
        v42 = swift_task_alloc();
        *(v0 + 328) = v42;
        *v42 = v0;
        v42[1] = sub_24FF43F2C;
        v43 = *(v0 + 192);
        sub_24FF2C1EC();

        return sub_24FF46EE4(v44);
      }

      else
      {
        v46 = *(v0 + 224);

        v47 = swift_task_alloc();
        *(v0 + 344) = v47;
        *v47 = v0;
        sub_24FF450A0(v47);
        sub_24FF2C1EC();

        return sub_24FF478DC();
      }
    }
  }
}

uint64_t sub_24FF43568()
{
  sub_24FF2BC7C();
  sub_24FF2BC88();
  v3 = v2;
  sub_24FF2BB08();
  *v4 = v3;
  v6 = *(v5 + 232);
  *v4 = *v1;
  v3[30] = v7;
  v3[31] = v8;

  if (v0)
  {
    sub_24FF45090();

    return v9();
  }

  else
  {
    v11 = v3[24];

    return MEMORY[0x2822009F8](sub_24FF43698, v11, 0);
  }
}

uint64_t sub_24FF43698()
{
  sub_24FF2BC70();
  sub_24FF45110();
  *(v0 + 256) = v1;
  *(v0 + 264) = *(v2 + 8);

  sub_24FF2BBD4();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_24FF43708()
{
  sub_24FF2BC70();
  v1 = v0[33];
  if (v1)
  {
    if (v1 == 0xE100000000000000 && v0[32] == 58)
    {

LABEL_6:
      v4 = swift_task_alloc();
      v0[34] = v4;
      *v4 = v0;
      sub_24FF450A0(v4);

      return sub_24FF46748();
    }

    v2 = v0[33];
    v3 = sub_24FF62158();

    if (v3)
    {
      goto LABEL_6;
    }
  }

  v6 = v0[31];
  v7 = v0[22];
  *v7 = v0[30];
  v7[1] = v6;
  sub_24FF450B0(v0[22]);

  return v8();
}

uint64_t sub_24FF4381C()
{
  sub_24FF2BC7C();
  sub_24FF2BC88();
  v3 = v2;
  sub_24FF2BB08();
  *v4 = v3;
  v6 = *(v5 + 272);
  v7 = *v1;
  sub_24FF2BACC();
  *v8 = v7;

  if (v0)
  {
    v9 = *(v3 + 248);

    sub_24FF45090();

    return v10();
  }

  else
  {
    sub_24FF2BBD4();

    return MEMORY[0x2822009F8](v12, v13, v14);
  }
}

uint64_t sub_24FF43944()
{
  v1 = v0[31];
  v2 = v0[22];
  *v2 = v0[30];
  v2[1] = v1;
  *(v0[22] + 16) = 0;
  return sub_24FF450C4();
}

uint64_t sub_24FF4395C()
{
  sub_24FF2BC7C();
  sub_24FF2BC88();
  v3 = v2;
  sub_24FF2BB08();
  *v4 = v3;
  v6 = *(v5 + 280);
  *v4 = *v1;
  v3[36] = v7;
  v3[37] = v8;

  if (v0)
  {
    v9 = v3[28];

    sub_24FF45090();

    return v10();
  }

  else
  {
    sub_24FF2BBD4();

    return MEMORY[0x2822009F8](v12, v13, v14);
  }
}

uint64_t sub_24FF43A90()
{
  sub_24FF2BC70();
  if (*(v0 + 296) && (v1 = *(v0 + 288), v2 = *(v0 + 296), v3 = sub_24FF61D18(), , (v3 & 1) != 0))
  {
    v4 = swift_task_alloc();
    *(v0 + 304) = v4;
    *v4 = v0;
    sub_24FF450A0(v4);

    return sub_24FF46748();
  }

  else
  {
    **(v0 + 176) = *(v0 + 216);
    sub_24FF450B0(*(v0 + 176));

    return v6();
  }
}

uint64_t sub_24FF43B78()
{
  sub_24FF2BC7C();
  sub_24FF2BC88();
  v3 = v2;
  sub_24FF2BB08();
  *v4 = v3;
  v6 = *(v5 + 304);
  v7 = *v1;
  sub_24FF2BACC();
  *v8 = v7;

  if (v0)
  {
    v9 = v3[28];

    sub_24FF45090();

    return v10();
  }

  else
  {
    v12 = swift_task_alloc();
    v3[39] = v12;
    *v12 = v7;
    v12[1] = sub_24FF43CD4;
    v13 = v3[24];

    return sub_24FF46EE4((v3 + 17));
  }
}

uint64_t sub_24FF43CD4()
{
  sub_24FF2BC70();
  sub_24FF2BC88();
  v3 = v2;
  sub_24FF2BB08();
  *v4 = v3;
  v6 = *(v5 + 312);
  v7 = *v1;
  sub_24FF2BACC();
  *v8 = v7;
  *(v3 + 320) = v0;

  if (v0)
  {
    v9 = *(v3 + 224);
  }

  sub_24FF2BBD4();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_24FF43DD4()
{
  v15 = v0;
  if (!*(v0 + 160))
  {
    v5 = *(v0 + 216);
    v6 = *(v0 + 224);
    v7 = *(v0 + 176);
    sub_24FF44FC4(v0 + 136);
    *v7 = v5;
    v7[1] = v6;
    sub_24FF450B0(*(v0 + 176));
    goto LABEL_5;
  }

  v1 = *(v0 + 320);
  v2 = *(v0 + 224);

  sub_24FF23620((v0 + 136), v0 + 96);
  v3 = *(v0 + 128);
  sub_24FF257B8((v0 + 96), *(v0 + 120));
  sub_24FF448E0(v0 + 96, -1, v13);
  if (v1)
  {
    sub_24FF25A6C((v0 + 96));
    sub_24FF2BB34();
LABEL_5:

    return v4();
  }

  v10 = v13[0];
  v9 = v13[1];
  v11 = v14;
  sub_24FF25A6C((v0 + 96));
  *(v0 + 392) = v11;
  *(v0 + 368) = v10;
  *(v0 + 376) = v9;
  v12 = swift_task_alloc();
  *(v0 + 384) = v12;
  *v12 = v0;
  sub_24FF450A0(v12);

  return sub_24FF46748();
}

uint64_t sub_24FF43F2C()
{
  sub_24FF2BC70();
  sub_24FF2BC88();
  v3 = v2;
  sub_24FF2BB08();
  *v4 = v3;
  v6 = *(v5 + 328);
  v7 = *v1;
  sub_24FF2BACC();
  *v8 = v7;
  *(v3 + 336) = v0;

  if (v0)
  {
    v9 = *(v3 + 224);
  }

  sub_24FF2BBD4();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_24FF4402C()
{
  v13 = v0;
  if (*(v0 + 80))
  {
    v1 = *(v0 + 336);
    v2 = *(v0 + 224);

    sub_24FF23620((v0 + 56), v0 + 16);
    v3 = *(v0 + 48);
    sub_24FF257B8((v0 + 16), *(v0 + 40));
    sub_24FF448E0(v0 + 16, 1, v11);
    if (v1)
    {
      sub_24FF25A6C((v0 + 16));
      sub_24FF2BB34();
      goto LABEL_7;
    }

    v7 = *(v0 + 176);
    v9 = v11[0];
    v5 = v11[1];
    v8 = v12;
    sub_24FF25A6C((v0 + 16));
    *v7 = v9;
  }

  else
  {
    v6 = *(v0 + 216);
    v5 = *(v0 + 224);
    v7 = *(v0 + 176);
    sub_24FF44FC4(v0 + 56);
    *v7 = v6;
    v8 = 5;
  }

  v7[1] = v5;
  *(*(v0 + 176) + 16) = v8;
  sub_24FF24BC0();
LABEL_7:

  return v4();
}

uint64_t sub_24FF44138()
{
  sub_24FF2BC70();
  sub_24FF2BC88();
  v3 = v2;
  v4 = *(v2 + 344);
  v12 = *v1;
  *(v3 + 352) = v5;
  *(v3 + 360) = v6;

  if (v0)
  {
    sub_24FF24BC0();

    return v7();
  }

  else
  {
    sub_24FF2BBD4();

    return MEMORY[0x2822009F8](v9, v10, v11);
  }
}

uint64_t sub_24FF4425C()
{
  sub_24FF2BC7C();
  v1 = v0[44];
  v2 = v0[45];
  v3 = sub_24FF61D58();
  v5 = v4;
  v6 = v3 == 1819047278 && v4 == 0xE400000000000000;
  if (v6 || (v7 = v3, (sub_24FF450DC() & 1) != 0))
  {
    v8 = v0[45];

    *v0[22] = xmmword_24FF63920;
    v9 = 7;
    goto LABEL_14;
  }

  v10 = v7 == 1702195828 && v5 == 0xE400000000000000;
  if (v10 || (sub_24FF450DC() & 1) != 0)
  {
    v11 = v0[45];

    *v0[22] = xmmword_24FF635F0;
LABEL_13:
    v9 = 4;
    goto LABEL_14;
  }

  if (v7 == 0x65736C6166 && v5 == 0xE500000000000000)
  {
    v18 = v0[45];

    goto LABEL_24;
  }

  v15 = sub_24FF450DC();

  v16 = v0[45];
  if (v15)
  {
LABEL_24:

    v19 = v0[22];
    *v19 = 0;
    v19[1] = 0;
    goto LABEL_13;
  }

  v17 = v0[22];
  *v17 = v0[44];
  v17[1] = v16;
  v9 = 6;
LABEL_14:
  *(v0[22] + 16) = v9;
  sub_24FF24BC0();

  return v12();
}

uint64_t sub_24FF443E8()
{
  sub_24FF2BC7C();
  sub_24FF2BC88();
  v3 = v2;
  sub_24FF2BB08();
  *v4 = v3;
  v6 = *(v5 + 384);
  v7 = *v1;
  sub_24FF2BACC();
  *v8 = v7;

  if (v0)
  {
    sub_24FF42088(*(v3 + 368), *(v3 + 376), *(v3 + 392));
    sub_24FF45090();

    return v9();
  }

  else
  {
    sub_24FF2BBD4();

    return MEMORY[0x2822009F8](v11, v12, v13);
  }
}

uint64_t sub_24FF44514()
{
  **(v0 + 176) = *(v0 + 368);
  *(*(v0 + 176) + 16) = *(v0 + 392);
  return sub_24FF450C4();
}

uint64_t sub_24FF44540()
{
  sub_24FF2BC70();
  v0[2] = v1;
  v2 = sub_24FF25460(&qword_27F3B4310, &qword_24FF63BF0);
  v0[3] = v2;
  v3 = *(v2 - 8);
  v0[4] = v3;
  v4 = *(v3 + 64) + 15;
  v0[5] = swift_task_alloc();
  sub_24FF2BBD4();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_24FF44604()
{
  sub_24FF2BC70();
  v1 = v0[5];
  (*(v0[4] + 16))(v1, v0[2], v0[3]);
  v2 = type metadata accessor for JsonTokenStream();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  v0[6] = sub_24FF47CF4(v1);
  v5 = swift_task_alloc();
  v0[7] = v5;
  *v5 = v0;
  v5[1] = sub_24FF446D4;

  return sub_24FF45124();
}

uint64_t sub_24FF446D4()
{
  sub_24FF2BC70();
  sub_24FF2BC88();
  v3 = *(v2 + 56);
  v4 = *v1;
  sub_24FF2BACC();
  *v5 = v4;
  *(v6 + 64) = v0;

  sub_24FF2BBD4();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_24FF447D4()
{
  sub_24FF2BC70();
  v1 = v0[5];
  (*(v0[4] + 8))(v0[2], v0[3]);

  v2 = v0[1];
  v3 = v0[6];

  return v2(v3);
}

uint64_t sub_24FF44850()
{
  sub_24FF2BC7C();
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[2];

  (*(v4 + 8))(v5, v3);

  sub_24FF24BC0();
  v7 = v0[8];

  return v6();
}

uint64_t sub_24FF448E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_24FF420F4(a1, v10);
  sub_24FF25460(&qword_27F3B4300, &qword_24FF63A28);
  result = swift_dynamicCast();
  if (result)
  {
    *&v6 = *&v9 * a2;
    if ((*&v9 * a2) >> 64 == (*&v9 * a2) >> 63)
    {
      v7 = 2;
LABEL_6:
      result = sub_24FF25A6C(v10);
      *a3 = v6;
      *(a3 + 8) = 0;
      *(a3 + 16) = v7;
      return result;
    }

    __break(1u);
  }

  else
  {
    if (swift_dynamicCast())
    {
      v6 = v9 * a2;
      v7 = 3;
      goto LABEL_6;
    }

    sub_24FF62098();
    MEMORY[0x25305C910](0xD000000000000022, 0x800000024FF67360);
    sub_24FF620E8();
    sub_24FF4502C();
    swift_allocError();
    *v8 = 0;
    v8[1] = 0xE000000000000000;
    swift_willThrow();
    return sub_24FF25A6C(v10);
  }

  return result;
}

uint64_t sub_24FF44A64@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  j__swift_retain();

  *a1 = v3;
  return result;
}

uint64_t sub_24FF44A98(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_24FF2C5C0;

  return sub_24FF42DB0(a1);
}

uint64_t sub_24FF44B30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  v8 = swift_task_alloc();
  *(v4 + 24) = v8;
  *v8 = v4;
  v8[1] = sub_24FF44BFC;

  return (sub_24FF44D4C)(a1, a2, a3);
}

uint64_t sub_24FF44BFC()
{
  sub_24FF2BC7C();
  sub_24FF2BC88();
  v3 = v2;
  sub_24FF2BB08();
  *v4 = v3;
  v6 = *(v5 + 24);
  v7 = *v1;
  sub_24FF2BACC();
  *v8 = v7;

  if (v0)
  {
    **(v3 + 16) = v0;
  }

  sub_24FF45090();

  return v9();
}

unint64_t sub_24FF44CF8()
{
  result = qword_27F3B42E8;
  if (!qword_27F3B42E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3B42E8);
  }

  return result;
}

uint64_t sub_24FF44D4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v5 = swift_task_alloc();
  v3[5] = v5;
  *v5 = v3;
  v5[1] = sub_24FF44DE8;

  return sub_24FF42DB0(a1);
}

uint64_t sub_24FF44DE8()
{
  sub_24FF2BC7C();
  sub_24FF2BC88();
  v3 = v2;
  sub_24FF2BB08();
  *v4 = v3;
  v6 = *(v5 + 40);
  v7 = *v1;
  sub_24FF2BACC();
  *v8 = v7;
  v3[6] = v0;

  if (v0)
  {
    if (v3[3])
    {
      v9 = v3[4];
      swift_getObjectType();
      v10 = sub_24FF61E98();
      v12 = v11;
    }

    else
    {
      v10 = 0;
      v12 = 0;
    }

    return MEMORY[0x2822009F8](sub_24FF44F3C, v10, v12);
  }

  else
  {
    sub_24FF24BC0();

    return v13();
  }
}

uint64_t sub_24FF44F3C()
{
  sub_24FF2BC70();
  *(v0 + 16) = *(v0 + 48);
  sub_24FF25460(&qword_27F3B42F0, &qword_24FF63AF0);
  swift_willThrowTypedImpl();
  sub_24FF24BC0();
  v2 = *(v0 + 48);

  return v1();
}

uint64_t sub_24FF44FC4(uint64_t a1)
{
  v2 = sub_24FF25460(&qword_27F3B42F8, &qword_24FF63A20);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_24FF4502C()
{
  result = qword_27F3B4308;
  if (!qword_27F3B4308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3B4308);
  }

  return result;
}

uint64_t sub_24FF45090()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

uint64_t sub_24FF450A0(uint64_t result)
{
  *(result + 8) = v1;
  v3 = *(v2 + 192);
  return result;
}

uint64_t sub_24FF450B0@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 16) = v1;
  result = v2 + 8;
  v4 = *(v2 + 8);
  return result;
}

uint64_t sub_24FF450DC()
{

  return sub_24FF62158();
}

uint64_t sub_24FF450F8()
{

  return sub_24FF62158();
}

uint64_t sub_24FF45124()
{
  sub_24FF2BC70();
  *(v1 + 16) = v0;
  v2 = *(*(sub_24FF25460(&qword_27F3B4360, &qword_24FF63C20) - 8) + 64) + 15;
  *(v1 + 24) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24FF451BC, v0, 0);
}

uint64_t sub_24FF451BC()
{
  sub_24FF2BC7C();
  v1 = OBJC_IVAR____TtC19GenerativeFunctions15JsonTokenStream_started;
  v0[4] = OBJC_IVAR____TtC19GenerativeFunctions15JsonTokenStream_started;
  v3 = v0[2];
  v2 = v0[3];
  if (*(v3 + v1))
  {
    v4 = v0[3];

    sub_24FF321B0();

    return v5();
  }

  else
  {
    v7 = sub_24FF61EC8();
    sub_24FF24B98(v2, 1, 1, v7);
    v8 = sub_24FF4C2F8();
    v9 = swift_allocObject();
    v9[2] = v3;
    v9[3] = v8;
    v9[4] = v3;
    swift_retain_n();
    sub_24FF4CA40();
    sub_24FF4CF18();
    v10 = *(v3 + OBJC_IVAR____TtC19GenerativeFunctions15JsonTokenStream_streamingTask);
    *(v3 + OBJC_IVAR____TtC19GenerativeFunctions15JsonTokenStream_streamingTask) = v11;

    v12 = swift_task_alloc();
    v0[5] = v12;
    *v12 = v0;
    v12[1] = sub_24FF4532C;
    v13 = v0[2];

    return sub_24FF46748();
  }
}

uint64_t sub_24FF4532C()
{
  sub_24FF2BC7C();
  sub_24FF2BC88();
  v3 = v2;
  sub_24FF2BB08();
  *v4 = v3;
  v6 = *(v5 + 40);
  v7 = *v1;
  sub_24FF2BACC();
  *v8 = v7;

  if (v0)
  {
    v9 = *(v3 + 24);

    sub_24FF45090();

    return v10();
  }

  else
  {
    v12 = *(v3 + 16);
    v13 = sub_24FF4C6CC();

    return MEMORY[0x2822009F8](v13, v14, v15);
  }
}

uint64_t sub_24FF45450()
{
  sub_24FF2BC70();
  *(v0[2] + v0[4]) = 1;
  v1 = v0[3];

  sub_24FF321B0();

  return v2();
}

uint64_t sub_24FF454D4()
{
  sub_24FF2BC70();
  v2 = v1[2];
  v1[3] = OBJC_IVAR____TtC19GenerativeFunctions15JsonTokenStream_currentCharacter;
  sub_24FF4CB1C(v2);
  if (v0 && (sub_24FF4CBF0(v3), sub_24FF4259C(), v4 = sub_24FF61CE8(), , (v4 & 1) != 0))
  {
    v5 = swift_task_alloc();
    v1[4] = v5;
    *v5 = v1;
    sub_24FF4C7DC(v5);

    return sub_24FF46748();
  }

  else
  {
    sub_24FF321B0();

    return v7();
  }
}

uint64_t sub_24FF455A0()
{
  sub_24FF2BC7C();
  sub_24FF2BC88();
  v3 = v2;
  sub_24FF2BB08();
  *v4 = v3;
  v6 = *(v5 + 32);
  v7 = *v1;
  sub_24FF2BACC();
  *v8 = v7;

  if (v0)
  {
    sub_24FF45090();

    return v9();
  }

  else
  {
    v11 = *(v3 + 16);
    v12 = sub_24FF4C6CC();

    return MEMORY[0x2822009F8](v12, v13, v14);
  }
}

uint64_t sub_24FF456BC()
{
  sub_24FF2BC70();
  v1 = (v0[2] + v0[3]);
  if (v1[1] && (sub_24FF4CBF0(v1), sub_24FF4259C(), v2 = sub_24FF61CE8(), , (v2 & 1) != 0))
  {
    v3 = swift_task_alloc();
    v0[4] = v3;
    *v3 = v0;
    sub_24FF4C7DC();

    return sub_24FF46748();
  }

  else
  {
    sub_24FF321B0();

    return v5();
  }
}

uint64_t sub_24FF45780()
{
  sub_24FF2BC70();
  v1[8] = v0;
  v1[9] = *v0;
  v2 = swift_task_alloc();
  v1[10] = v2;
  *v2 = v1;
  v2[1] = sub_24FF4583C;

  return sub_24FF488A8(34, 0xE100000000000000);
}

uint64_t sub_24FF4583C()
{
  sub_24FF2BC7C();
  sub_24FF2BC88();
  v3 = v2;
  sub_24FF2BB08();
  *v4 = v3;
  v6 = *(v5 + 80);
  v7 = *v1;
  sub_24FF2BACC();
  *v8 = v7;

  if (v0)
  {
    sub_24FF45090();

    return v9();
  }

  else
  {
    v11 = *(v3 + 64);
    v12 = sub_24FF4C6CC();

    return MEMORY[0x2822009F8](v12, v13, v14);
  }
}

uint64_t sub_24FF45958()
{
  sub_24FF2BC7C();
  v0[2] = 0;
  v1 = v0[8];
  v0[3] = 0xE000000000000000;
  v2 = OBJC_IVAR____TtC19GenerativeFunctions15JsonTokenStream_currentCharacter;
  v0[11] = OBJC_IVAR____TtC19GenerativeFunctions15JsonTokenStream_currentCharacter;
  v3 = (v1 + v2);
  v4 = v3[1];
  if (!v4 || ((v5 = *v3, *v3 == 34) ? (v6 = v4 == 0xE100000000000000) : (v6 = 0), v6 || (sub_24FF4C758(), (sub_24FF4C8C8() & 1) != 0)))
  {
    v7 = swift_task_alloc();
    v0[24] = v7;
    *v7 = v0;
    v8 = sub_24FF4C560(v7);

    return sub_24FF488A8(v8, v9);
  }

  else
  {
    v11 = v5 == 92 && v4 == 0xE100000000000000;
    if (v11 || (sub_24FF4C758(), (sub_24FF4C92C() & 1) != 0))
    {
      v12 = swift_task_alloc();
      v13 = sub_24FF4CB3C(v12);
      *v13 = v14;
      sub_24FF4C5F0();
    }

    else
    {
      v0[4] = 0;
      v0[5] = 0xE000000000000000;

      sub_24FF61CF8();

      MEMORY[0x25305C910](v0[4], v0[5]);

      v17 = swift_task_alloc();
      v0[22] = v17;
      *v17 = v0;
      sub_24FF4C60C();
    }

    *(v15 + 8) = v16;
    sub_24FF4C900();

    return sub_24FF46748();
  }
}

uint64_t sub_24FF45B0C()
{
  sub_24FF2BC7C();
  sub_24FF4C9F8();
  v3 = v0;
  sub_24FF2BACC();
  *v4 = v0;
  v5 = *(v0 + 96);
  *v4 = *v2;
  *(v0 + 104) = v1;

  sub_24FF4CA34();
  v7 = *(v6 + 64);
  if (v1)
  {
    v8 = *(v3 + 24);
  }

  sub_24FF4C764();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_24FF45C28()
{
  sub_24FF2BC30();
  sub_24FF4C9AC();
  v2 = v1[1];
  if (!v2)
  {
    v9 = v0[3];

    sub_24FF4B054();
    swift_allocError();
    *v10 = 0;
    *(v10 + 8) = 0;
    *(v10 + 16) = 2;
    swift_willThrow();
    goto LABEL_14;
  }

  v3 = *v1;
  v4 = *v1 == 117 && v2 == 0xE100000000000000;
  if (v4 || (sub_24FF4C92C() & 1) != 0)
  {
    v5 = swift_task_alloc();
    v0[14] = v5;
    *v5 = v0;
    v6 = sub_24FF45DFC;
    goto LABEL_8;
  }

  v11 = v0[13];
  v12 = v0[9];

  v13 = sub_24FF4A254(v3, v2);
  if (v11)
  {
    v15 = v0[3];

LABEL_14:
    sub_24FF24BC0();
    sub_24FF2C004();

    __asm { BRAA            X1, X16 }
  }

  v18 = v13;
  v19 = v14;

  MEMORY[0x25305C910](v18, v19);

  v5 = swift_task_alloc();
  v0[20] = v5;
  *v5 = v0;
  v6 = sub_24FF46230;
LABEL_8:
  v5[1] = v6;
  sub_24FF4C900();
  sub_24FF2C004();

  return sub_24FF46748();
}

uint64_t sub_24FF45DFC()
{
  sub_24FF2BC70();
  sub_24FF2BC88();
  v3 = v2;
  sub_24FF2BB08();
  *v4 = v3;
  v6 = *(v5 + 112);
  v7 = *v1;
  sub_24FF2BACC();
  *v8 = v7;
  v3[15] = v0;

  if (v0)
  {
    v9 = v3[8];
    v10 = v3[3];

    return MEMORY[0x2822009F8](sub_24FF46720, v9, 0);
  }

  else
  {
    v11 = swift_task_alloc();
    v3[16] = v11;
    *v11 = v7;
    v11[1] = sub_24FF45F5C;
    v12 = v3[8];

    return sub_24FF48AF8();
  }
}

uint64_t sub_24FF45F5C()
{
  sub_24FF2BC7C();
  sub_24FF4C9F8();
  v3 = v0;
  sub_24FF2BACC();
  *v4 = v0;
  v5 = v0[16];
  v6 = *v2;
  sub_24FF2BB08();
  *v7 = v6;
  v0[17] = v8;
  v0[18] = v9;
  v0[19] = v1;

  sub_24FF4CA34();
  v11 = *(v10 + 64);
  if (v1)
  {
    v12 = v3[3];
  }

  sub_24FF4C764();

  return MEMORY[0x2822009F8](v13, v14, v15);
}

uint64_t sub_24FF4607C()
{
  sub_24FF2BC7C();
  v1 = v0[18];
  if (v1)
  {
    v0[6] = v0[17];
    v0[7] = v1;
    v2 = sub_24FF61E58();
    MEMORY[0x25305C910](v2);
  }

  sub_24FF4C9AC();
  v4 = v3[1];
  if (!v4 || ((v5 = *v3, *v3 == 34) ? (v6 = v4 == 0xE100000000000000) : (v6 = 0), v6 || (sub_24FF4259C(), (sub_24FF4C8C8() & 1) != 0)))
  {
    v7 = swift_task_alloc();
    v0[24] = v7;
    *v7 = v0;
    v8 = sub_24FF4C560(v7);

    return sub_24FF488A8(v8, v9);
  }

  else
  {
    v11 = v5 == 92 && v4 == 0xE100000000000000;
    if (v11 || (sub_24FF4259C(), (sub_24FF4C92C() & 1) != 0))
    {
      v12 = swift_task_alloc();
      v13 = sub_24FF4CB3C(v12);
      *v13 = v14;
      v15 = sub_24FF4C5F0();
    }

    else
    {
      sub_24FF4CA64();
      sub_24FF4C758();
      sub_24FF61CF8();

      sub_24FF4CBB0();

      v17 = swift_task_alloc();
      v0[22] = v17;
      *v17 = v0;
      sub_24FF4C60C();
    }

    *(v15 + 8) = v16;
    sub_24FF4C900();

    return sub_24FF46748();
  }
}

uint64_t sub_24FF46230()
{
  sub_24FF2BC7C();
  sub_24FF4C9F8();
  v3 = v0;
  sub_24FF2BACC();
  *v4 = v0;
  v5 = *(v0 + 160);
  *v4 = *v2;
  *(v0 + 168) = v1;

  sub_24FF4CA34();
  v7 = *(v6 + 64);
  if (v1)
  {
    v8 = *(v3 + 24);
  }

  sub_24FF4C764();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_24FF4634C()
{
  sub_24FF2BC7C();
  sub_24FF4C9F8();
  v3 = v0;
  sub_24FF2BACC();
  *v4 = v0;
  v5 = *(v0 + 176);
  *v4 = *v2;
  *(v0 + 184) = v1;

  sub_24FF4CA34();
  v7 = *(v6 + 64);
  if (v1)
  {
    v8 = *(v3 + 24);
  }

  sub_24FF4C764();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_24FF46468()
{
  sub_24FF2BC7C();
  sub_24FF4C9AC();
  v2 = v1[1];
  if (!v2 || ((v3 = *v1, *v1 == 34) ? (v4 = v2 == 0xE100000000000000) : (v4 = 0), v4 || (sub_24FF4259C(), (sub_24FF4C8C8() & 1) != 0)))
  {
    v5 = swift_task_alloc();
    *(v0 + 192) = v5;
    *v5 = v0;
    v6 = sub_24FF4C560(v5);

    return sub_24FF488A8(v6, v7);
  }

  else
  {
    v9 = v3 == 92 && v2 == 0xE100000000000000;
    if (v9 || (sub_24FF4259C(), (sub_24FF4C92C() & 1) != 0))
    {
      v10 = swift_task_alloc();
      v11 = sub_24FF4CB3C(v10);
      *v11 = v12;
      v13 = sub_24FF4C5F0();
    }

    else
    {
      sub_24FF4CA64();
      sub_24FF4C758();
      sub_24FF61CF8();

      sub_24FF4CBB0();

      v15 = swift_task_alloc();
      *(v0 + 176) = v15;
      *v15 = v0;
      v13 = sub_24FF4C60C();
    }

    *(v13 + 8) = v14;
    sub_24FF4C900();

    return sub_24FF46748();
  }
}

uint64_t sub_24FF465D8()
{
  sub_24FF2BC7C();
  sub_24FF4C9F8();
  v3 = v0;
  sub_24FF2BACC();
  *v4 = v0;
  v5 = *(v0 + 192);
  *v4 = *v2;
  *(v0 + 200) = v1;

  sub_24FF4CA34();
  v7 = *(v6 + 64);
  if (v1)
  {
    v8 = *(v3 + 24);
  }

  sub_24FF4C764();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_24FF466F4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_24FF4C8AC();
  return v3();
}

uint64_t sub_24FF46764()
{
  sub_24FF32434();
  v1 = *(v0 + 40);
  v2 = OBJC_IVAR____TtC19GenerativeFunctions15JsonTokenStream_readPosition;
  v3 = *(v1 + OBJC_IVAR____TtC19GenerativeFunctions15JsonTokenStream_readPosition);
  v4 = (v1 + OBJC_IVAR____TtC19GenerativeFunctions15JsonTokenStream_buffer);
  sub_24FF4CABC();
  v5 = *v4;
  v6 = v4[1];

  sub_24FF32440();
  v7 = sub_24FF61D98();

  v8 = *(v0 + 40);
  if (v3 >= v7)
  {
    if (*(v8 + OBJC_IVAR____TtC19GenerativeFunctions15JsonTokenStream_complete))
    {
      v21 = (v8 + OBJC_IVAR____TtC19GenerativeFunctions15JsonTokenStream_currentCharacter);
      v22 = *(v8 + OBJC_IVAR____TtC19GenerativeFunctions15JsonTokenStream_currentCharacter + 8);
      *v21 = 0;
      v21[1] = 0;

LABEL_6:
      sub_24FF321B0();
      sub_24FF4CA1C();

      __asm { BRAA            X1, X16 }
    }

    v25 = swift_task_alloc();
    *(v0 + 48) = v25;
    *v25 = v0;
    sub_24FF4C6BC(v25);
    sub_24FF4CA1C();

    return sub_24FF4A500(v26);
  }

  else
  {
    v9 = *v4;
    v10 = v4[1];
    v11 = *(v1 + v2);

    sub_24FF61DA8();
    v12 = sub_24FF61E38();
    v14 = v13;

    v15 = (v8 + OBJC_IVAR____TtC19GenerativeFunctions15JsonTokenStream_currentCharacter);
    v16 = *(v8 + OBJC_IVAR____TtC19GenerativeFunctions15JsonTokenStream_currentCharacter + 8);
    *v15 = v12;
    v15[1] = v14;

    v18 = *(v1 + v2);
    v19 = __OFADD__(v18, 1);
    v20 = v18 + 1;
    if (!v19)
    {
      *(v1 + v2) = v20;
      goto LABEL_6;
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_24FF46914()
{
  sub_24FF2BC7C();
  sub_24FF2BC88();
  v3 = v2;
  sub_24FF2BB08();
  *v4 = v3;
  v6 = *(v5 + 48);
  v7 = *v1;
  sub_24FF2BACC();
  *v8 = v7;

  if (v0)
  {
    sub_24FF45090();

    return v9();
  }

  else
  {
    v11 = swift_task_alloc();
    *(v3 + 56) = v11;
    *v11 = v7;
    v11[1] = sub_24FF2EA30;
    v12 = *(v3 + 40);

    return sub_24FF46748();
  }
}

uint64_t sub_24FF46A64(uint64_t a1, char a2)
{
  *(v3 + 96) = a2;
  *(v3 + 64) = a1;
  *(v3 + 72) = v2;
  return sub_24FF4C544(sub_24FF46A84, v2);
}

void sub_24FF46A84()
{
  sub_24FF32434();
  v1 = v0[9];
  v2 = OBJC_IVAR____TtC19GenerativeFunctions15JsonTokenStream_readPosition;
  v3 = *(v1 + OBJC_IVAR____TtC19GenerativeFunctions15JsonTokenStream_readPosition);
  if (*(v1 + OBJC_IVAR____TtC19GenerativeFunctions15JsonTokenStream_complete) == 1)
  {
    v4 = (v1 + OBJC_IVAR____TtC19GenerativeFunctions15JsonTokenStream_buffer);
    sub_24FF4CABC();
    v5 = *v4;
    v6 = v4[1];

    sub_24FF32440();
    v7 = sub_24FF61D98();

    if (v3 >= v7)
    {
      goto LABEL_12;
    }

    v8 = v0[8];
    v9 = *(v1 + v2);
    v10 = __OFADD__(v9, v8);
    v11 = v9 + v8;
    if (v10)
    {
      goto LABEL_19;
    }

    if (!__OFSUB__(v11, 1))
    {
      goto LABEL_11;
    }

    __break(1u);
  }

  v12 = v0[8];
  v13 = v3 + v12;
  if (__OFADD__(v3, v12))
  {
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v4 = (v1 + OBJC_IVAR____TtC19GenerativeFunctions15JsonTokenStream_buffer);
  sub_24FF4CABC();
  v14 = *v4;
  v15 = v4[1];

  sub_24FF32440();
  v16 = sub_24FF61D98();

  if (v13 < v16)
  {
    v17 = v0[8];
    v18 = *(v1 + v2);
    v10 = __OFADD__(v18, v17);
    v19 = v18 + v17;
    if (!v10)
    {
      if (!__OFSUB__(v19, 1))
      {
LABEL_11:
        v21 = *v4;
        v20 = v4[1];

        sub_24FF61DA8();
        sub_24FF61E38();

LABEL_12:
        v22 = v0[1];
        sub_24FF32440();
        sub_24FF4CA1C();

        __asm { BRAA            X3, X16 }
      }

      goto LABEL_21;
    }

LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    return;
  }

  v25 = swift_task_alloc();
  v0[10] = v25;
  *v25 = v0;
  v25[1] = sub_24FF46C90;
  v26 = v0[8];
  v27 = v0[9];
  sub_24FF4CA1C();

  sub_24FF4A500(v28);
}

uint64_t sub_24FF46C90()
{
  sub_24FF2BC7C();
  sub_24FF2BC88();
  v3 = v2;
  sub_24FF2BB08();
  *v4 = v3;
  v6 = *(v5 + 80);
  v7 = *v1;
  sub_24FF2BACC();
  *v8 = v7;

  if (v0)
  {
    sub_24FF45090();

    return v9();
  }

  else
  {
    v11 = swift_task_alloc();
    *(v3 + 88) = v11;
    *v11 = v7;
    v11[1] = sub_24FF46DE8;
    v12 = *(v3 + 96);
    v13 = *(v3 + 72);
    v14 = *(v3 + 64);

    return sub_24FF46A64(v14, v12);
  }
}

uint64_t sub_24FF46DE8()
{
  sub_24FF2BC7C();
  sub_24FF2BC88();
  v3 = *(v2 + 88);
  v4 = *v1;
  sub_24FF2BACC();
  *v5 = v4;

  v7 = *(v4 + 8);
  if (!v0)
  {
    v6 = sub_24FF4C758();
  }

  return v7(v6);
}

uint64_t sub_24FF46EE4(uint64_t a1)
{
  *(v2 + 32) = a1;
  *(v2 + 40) = v1;
  return sub_24FF4C544(sub_24FF46F00, v1);
}

void sub_24FF46F00()
{
  sub_24FF32434();
  v3 = *(v2 + 40);
  *(v2 + 48) = OBJC_IVAR____TtC19GenerativeFunctions15JsonTokenStream_currentCharacter;
  sub_24FF4CB1C(v3);
  v5 = MEMORY[0x277D84F90];
  if (!v1)
  {
LABEL_21:
    if (!*(v5 + 16))
    {
      v31 = *(v2 + 32);

      *(v31 + 32) = 0;
      *v31 = 0u;
      *(v31 + 16) = 0u;
      goto LABEL_96;
    }

    *(v2 + 16) = v5;
    v19 = sub_24FF25460(&qword_27F3B4320, &qword_24FF63BA0);
    sub_24FF4B0A8();
    sub_24FF4C8E4();
    sub_24FF4CA4C();
    if (!v21)
    {

      goto LABEL_94;
    }

    if ((v19 & 0x1000000000000000) != 0)
    {
      v26 = sub_24FF4BCDC(v20, v19, 10);
      v45 = v54;
LABEL_93:

      if ((v45 & 1) == 0)
      {
        v47 = *(v2 + 32);
        v48 = MEMORY[0x277D83BC0];
        v47[3] = MEMORY[0x277D83B88];
        v47[4] = v48;
        *v47 = v26;
LABEL_96:
        sub_24FF321B0();
        sub_24FF4CC20();

        __asm { BRAA            X1, X16 }
      }

LABEL_94:
      v46 = *(v2 + 32);
      *(v46 + 32) = 0;
      *v46 = 0u;
      *(v46 + 16) = 0u;
      goto LABEL_96;
    }

    if ((v19 & 0x2000000000000000) != 0)
    {
      sub_24FF4CB90();
      if (v6)
      {
        if (v32)
        {
          if (v32 != 1)
          {
            sub_24FF4C730();
            while (1)
            {
              sub_24FF4C658();
              if (!v6 & v27)
              {
                break;
              }

              sub_24FF4C54C();
              if (!v6)
              {
                break;
              }

              v26 = (v39 + v38);
              if (__OFADD__(v39, v38))
              {
                break;
              }

              sub_24FF4C724();
              if (v6)
              {
                goto LABEL_92;
              }
            }
          }

          goto LABEL_91;
        }

LABEL_105:
        __break(1u);
        return;
      }

      if (v33 != 45)
      {
        if (v32)
        {
          while (1)
          {
            sub_24FF4C658();
            if (!v6 & v27)
            {
              break;
            }

            sub_24FF4C54C();
            if (!v6)
            {
              break;
            }

            v26 = (v44 + v43);
            if (__OFADD__(v44, v43))
            {
              break;
            }

            sub_24FF4C724();
            if (v6)
            {
              goto LABEL_92;
            }
          }
        }

        goto LABEL_91;
      }

      if (v32)
      {
        if (v32 != 1)
        {
          sub_24FF4C730();
          while (1)
          {
            sub_24FF4C658();
            if (!v6 & v27)
            {
              break;
            }

            sub_24FF4C54C();
            if (!v6)
            {
              break;
            }

            v26 = (v35 - v34);
            if (__OFSUB__(v35, v34))
            {
              break;
            }

            sub_24FF4C724();
            if (v6)
            {
              goto LABEL_92;
            }
          }
        }

        goto LABEL_91;
      }
    }

    else
    {
      if ((v20 & 0x1000000000000000) != 0)
      {
        v22 = ((v19 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        v22 = sub_24FF620A8();
      }

      v23 = sub_24FF4C990(v22);
      if (v6)
      {
        if (v24 >= 1)
        {
          if (v24 != 1)
          {
            v26 = 0;
            if (v23)
            {
              sub_24FF4CBA4();
              while (1)
              {
                sub_24FF4C658();
                if (!v6 & v27)
                {
                  goto LABEL_91;
                }

                sub_24FF4C54C();
                if (!v6)
                {
                  goto LABEL_91;
                }

                v26 = (v37 + v36);
                if (__OFADD__(v37, v36))
                {
                  goto LABEL_91;
                }

                sub_24FF4C724();
                if (v6)
                {
                  goto LABEL_92;
                }
              }
            }

            goto LABEL_82;
          }

          goto LABEL_91;
        }

        goto LABEL_104;
      }

      if (v25 != 45)
      {
        if (v24)
        {
          v26 = 0;
          if (v23)
          {
            while (*v23 - 48 <= 9)
            {
              sub_24FF4CB68();
              if (!v6)
              {
                break;
              }

              v26 = (v42 + v41);
              if (__OFADD__(v42, v41))
              {
                break;
              }

              v23 = sub_24FF4C978(v40);
              if (v6)
              {
                goto LABEL_82;
              }
            }

            goto LABEL_91;
          }

          goto LABEL_82;
        }

LABEL_91:
        v26 = 0;
        v30 = 1;
        goto LABEL_92;
      }

      if (v24 >= 1)
      {
        if (v24 != 1)
        {
          v26 = 0;
          if (v23)
          {
            sub_24FF4CBA4();
            while (1)
            {
              sub_24FF4C658();
              if (!v6 & v27)
              {
                goto LABEL_91;
              }

              sub_24FF4C54C();
              if (!v6)
              {
                goto LABEL_91;
              }

              v26 = (v29 - v28);
              if (__OFSUB__(v29, v28))
              {
                goto LABEL_91;
              }

              sub_24FF4C724();
              if (v6)
              {
                goto LABEL_92;
              }
            }
          }

LABEL_82:
          v30 = 0;
LABEL_92:
          v45 = v30;
          goto LABEL_93;
        }

        goto LABEL_91;
      }

      __break(1u);
    }

    __break(1u);
LABEL_104:
    __break(1u);
    goto LABEL_105;
  }

  sub_24FF4CBF0(v4);
  sub_24FF4259C();
  if ((sub_24FF61D18() & 1) == 0)
  {
    v6 = v0 == 46 && v1 == 0xE100000000000000;
    if (!v6)
    {
      sub_24FF4259C();
      if ((sub_24FF4C92C() & 1) == 0)
      {

        goto LABEL_21;
      }
    }
  }

  if (v0 == 46 && v1 == 0xE100000000000000)
  {
    v9 = MEMORY[0x277D84F90];
    v8 = 1;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_13;
    }

LABEL_19:
    v15 = *(v5 + 16);
    v16 = sub_24FF4C6AC();
    v9 = sub_24FF4B10C(v16, v17, v18, v5);
    goto LABEL_13;
  }

  sub_24FF4259C();
  v8 = sub_24FF4C92C();
  v9 = MEMORY[0x277D84F90];
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_19;
  }

LABEL_13:
  *(v2 + 72) = v8 & 1;
  v11 = *(v9 + 2);
  v10 = *(v9 + 3);
  if (v11 >= v10 >> 1)
  {
    v51 = sub_24FF4C744(v10);
    v9 = sub_24FF4B10C(v51, v52, v53, v9);
  }

  *(v2 + 56) = v9;
  *(v9 + 2) = v11 + 1;
  v12 = &v9[16 * v11];
  *(v12 + 4) = v0;
  *(v12 + 5) = v1;
  v13 = swift_task_alloc();
  *(v2 + 64) = v13;
  *v13 = v2;
  sub_24FF4C6BC(v13);
  sub_24FF4CC20();

  sub_24FF46748();
}

uint64_t sub_24FF47328()
{
  sub_24FF2BC7C();
  sub_24FF2BC88();
  v3 = v2;
  sub_24FF2BB08();
  *v4 = v3;
  v6 = *(v5 + 64);
  v7 = *v1;
  sub_24FF2BACC();
  *v8 = v7;

  if (v0)
  {
    v9 = *(v3 + 56);

    sub_24FF45090();

    return v10();
  }

  else
  {
    v12 = *(v3 + 40);
    v13 = sub_24FF4C6CC();

    return MEMORY[0x2822009F8](v13, v14, v15);
  }
}

void sub_24FF4744C()
{
  sub_24FF32434();
  v1 = *(v0 + 56);
  v2 = *(v0 + 72);
  v3 = (*(v0 + 40) + *(v0 + 48));
  v4 = v3[1];
  if (!v4)
  {
    goto LABEL_26;
  }

  v5 = *v3;
  v6 = v3[1];

  sub_24FF4C758();
  if ((sub_24FF61D18() & 1) == 0)
  {
    v7 = v5 == 46 && v4 == 0xE100000000000000;
    if (v7 || (sub_24FF4C758(), (sub_24FF4C92C() & 1) != 0))
    {
      if ((v2 & 1) == 0)
      {
        goto LABEL_13;
      }

      if (!*(v1 + 2))
      {
        goto LABEL_30;
      }

LABEL_28:
      *(v0 + 24) = v1;
      sub_24FF25460(&qword_27F3B4320, &qword_24FF63BA0);
      sub_24FF4B0A8();
      v19 = sub_24FF61E48();
      v21 = sub_24FF48848(v19, v20);
      v22 = *(v0 + 32);
      if ((v23 & 1) == 0)
      {
        v24 = MEMORY[0x277D83A38];
        *(v22 + 24) = MEMORY[0x277D839F8];
        *(v22 + 32) = v24;
        *v22 = v21;
        goto LABEL_105;
      }

      goto LABEL_103;
    }

LABEL_26:
    if (!*(v1 + 2))
    {
LABEL_30:
      v25 = *(v0 + 32);

      *(v25 + 32) = 0;
      *v25 = 0u;
      *(v25 + 16) = 0u;
      goto LABEL_105;
    }

    if (v2)
    {
      goto LABEL_28;
    }

    *(v0 + 16) = v1;
    v26 = sub_24FF25460(&qword_27F3B4320, &qword_24FF63BA0);
    sub_24FF4B0A8();
    sub_24FF4C8E4();
    sub_24FF4CA4C();
    if (!v28)
    {

LABEL_102:
      v22 = *(v0 + 32);
LABEL_103:
      *(v22 + 32) = 0;
      *v22 = 0u;
      *(v22 + 16) = 0u;
      goto LABEL_105;
    }

    if ((v26 & 0x1000000000000000) != 0)
    {
      v33 = sub_24FF4BCDC(v27, v26, 10);
      v51 = v59;
LABEL_101:

      if ((v51 & 1) == 0)
      {
        v52 = *(v0 + 32);
        v53 = MEMORY[0x277D83BC0];
        v52[3] = MEMORY[0x277D83B88];
        v52[4] = v53;
        *v52 = v33;
LABEL_105:
        sub_24FF321B0();
        sub_24FF4CC20();

        __asm { BRAA            X1, X16 }
      }

      goto LABEL_102;
    }

    if ((v26 & 0x2000000000000000) != 0)
    {
      sub_24FF4CB90();
      if (v7)
      {
        if (v38)
        {
          if (v38 != 1)
          {
            sub_24FF4C730();
            while (1)
            {
              sub_24FF4C658();
              if (!v7 & v34)
              {
                break;
              }

              sub_24FF4C54C();
              if (!v7)
              {
                break;
              }

              v33 = (v45 + v44);
              if (__OFADD__(v45, v44))
              {
                break;
              }

              sub_24FF4C724();
              if (v7)
              {
                goto LABEL_100;
              }
            }
          }

          goto LABEL_99;
        }

LABEL_114:
        __break(1u);
        return;
      }

      if (v39 != 45)
      {
        if (v38)
        {
          while (1)
          {
            sub_24FF4C658();
            if (!v7 & v34)
            {
              break;
            }

            sub_24FF4C54C();
            if (!v7)
            {
              break;
            }

            v33 = (v50 + v49);
            if (__OFADD__(v50, v49))
            {
              break;
            }

            sub_24FF4C724();
            if (v7)
            {
              goto LABEL_100;
            }
          }
        }

        goto LABEL_99;
      }

      if (v38)
      {
        if (v38 != 1)
        {
          sub_24FF4C730();
          while (1)
          {
            sub_24FF4C658();
            if (!v7 & v34)
            {
              break;
            }

            sub_24FF4C54C();
            if (!v7)
            {
              break;
            }

            v33 = (v41 - v40);
            if (__OFSUB__(v41, v40))
            {
              break;
            }

            sub_24FF4C724();
            if (v7)
            {
              goto LABEL_100;
            }
          }
        }

        goto LABEL_99;
      }
    }

    else
    {
      if ((v27 & 0x1000000000000000) != 0)
      {
        v29 = ((v26 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        v29 = sub_24FF620A8();
      }

      v30 = sub_24FF4C990(v29);
      if (v7)
      {
        if (v31 >= 1)
        {
          if (v31 != 1)
          {
            v33 = 0;
            if (v30)
            {
              sub_24FF4CBA4();
              while (1)
              {
                sub_24FF4C658();
                if (!v7 & v34)
                {
                  goto LABEL_99;
                }

                sub_24FF4C54C();
                if (!v7)
                {
                  goto LABEL_99;
                }

                v33 = (v43 + v42);
                if (__OFADD__(v43, v42))
                {
                  goto LABEL_99;
                }

                sub_24FF4C724();
                if (v7)
                {
                  goto LABEL_100;
                }
              }
            }

            goto LABEL_90;
          }

          goto LABEL_99;
        }

        goto LABEL_113;
      }

      if (v32 != 45)
      {
        if (v31)
        {
          v33 = 0;
          if (v30)
          {
            while (*v30 - 48 <= 9)
            {
              sub_24FF4CB68();
              if (!v7)
              {
                break;
              }

              v33 = (v48 + v47);
              if (__OFADD__(v48, v47))
              {
                break;
              }

              v30 = sub_24FF4C978(v46);
              if (v7)
              {
                goto LABEL_90;
              }
            }

            goto LABEL_99;
          }

          goto LABEL_90;
        }

LABEL_99:
        v33 = 0;
        v37 = 1;
        goto LABEL_100;
      }

      if (v31 >= 1)
      {
        if (v31 != 1)
        {
          v33 = 0;
          if (v30)
          {
            sub_24FF4CBA4();
            while (1)
            {
              sub_24FF4C658();
              if (!v7 & v34)
              {
                goto LABEL_99;
              }

              sub_24FF4C54C();
              if (!v7)
              {
                goto LABEL_99;
              }

              v33 = (v36 - v35);
              if (__OFSUB__(v36, v35))
              {
                goto LABEL_99;
              }

              sub_24FF4C724();
              if (v7)
              {
                goto LABEL_100;
              }
            }
          }

LABEL_90:
          v37 = 0;
LABEL_100:
          v51 = v37;
          goto LABEL_101;
        }

        goto LABEL_99;
      }

      __break(1u);
    }

    __break(1u);
LABEL_113:
    __break(1u);
    goto LABEL_114;
  }

  if (v2)
  {
    goto LABEL_19;
  }

LABEL_13:
  if (v5 == 46 && v4 == 0xE100000000000000)
  {
LABEL_19:
    v9 = 1;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_20;
    }

    goto LABEL_18;
  }

  sub_24FF4C758();
  v9 = sub_24FF4C92C();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_18:
    v10 = *(v1 + 2);
    v11 = sub_24FF4C6AC();
    v1 = sub_24FF4B10C(v11, v12, v13, v1);
  }

LABEL_20:
  *(v0 + 72) = v9 & 1;
  v15 = *(v1 + 2);
  v14 = *(v1 + 3);
  if (v15 >= v14 >> 1)
  {
    v56 = sub_24FF4C878(v14);
    v1 = sub_24FF4B10C(v56, v57, v58, v1);
  }

  *(v0 + 56) = v1;
  *(v1 + 2) = v15 + 1;
  v16 = &v1[16 * v15];
  *(v16 + 4) = v5;
  *(v16 + 5) = v4;
  v17 = swift_task_alloc();
  *(v0 + 64) = v17;
  *v17 = v0;
  sub_24FF4C6BC(v17);
  sub_24FF4CC20();

  sub_24FF46748();
}

uint64_t sub_24FF478F8()
{
  sub_24FF2BC30();
  v3 = v2[3];
  v2[4] = OBJC_IVAR____TtC19GenerativeFunctions15JsonTokenStream_currentCharacter;
  sub_24FF4CB1C(v3);
  if (!v1)
  {
LABEL_11:
    v2[2] = MEMORY[0x277D84F90];
    sub_24FF25460(&qword_27F3B4320, &qword_24FF63BA0);
    sub_24FF4B0A8();
    sub_24FF61E48();
    sub_24FF4C8AC();
    sub_24FF2C004();

    __asm { BRAA            X3, X16 }
  }

  sub_24FF4CBF0(v4);
  sub_24FF4259C();
  if ((sub_24FF61D08() & 1) == 0)
  {

    goto LABEL_11;
  }

  v5 = MEMORY[0x277D84F90];
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v14 = *(v5 + 2);
    v15 = sub_24FF4C6AC();
    v5 = sub_24FF4B10C(v15, v16, v17, v5);
  }

  v7 = *(v5 + 2);
  v6 = *(v5 + 3);
  if (v7 >= v6 >> 1)
  {
    v18 = sub_24FF4C878(v6);
    v5 = sub_24FF4B10C(v18, v19, v20, v5);
  }

  v2[5] = v5;
  *(v5 + 2) = v7 + 1;
  v8 = &v5[16 * v7];
  *(v8 + 4) = v0;
  *(v8 + 5) = v1;
  v9 = swift_task_alloc();
  v2[6] = v9;
  *v9 = v2;
  sub_24FF4C804(v9);
  sub_24FF2C004();

  return sub_24FF46748();
}

uint64_t sub_24FF47A6C()
{
  sub_24FF2BC7C();
  sub_24FF2BC88();
  v3 = v2;
  sub_24FF2BB08();
  *v4 = v3;
  v6 = *(v5 + 48);
  v7 = *v1;
  sub_24FF2BACC();
  *v8 = v7;

  if (v0)
  {
    v9 = *(v3 + 40);

    sub_24FF45090();

    return v10();
  }

  else
  {
    v12 = *(v3 + 24);
    v13 = sub_24FF4C6CC();

    return MEMORY[0x2822009F8](v13, v14, v15);
  }
}

uint64_t sub_24FF47B90()
{
  sub_24FF2BC30();
  v1 = v0[5];
  v2 = (v0[3] + v0[4]);
  v3 = v2[1];
  if (!v3)
  {
LABEL_11:
    v0[2] = v1;
    sub_24FF25460(&qword_27F3B4320, &qword_24FF63BA0);
    sub_24FF4B0A8();
    sub_24FF4259C();
    sub_24FF61E48();
    sub_24FF4C8AC();
    sub_24FF2C004();

    __asm { BRAA            X3, X16 }
  }

  v4 = *v2;
  v5 = v2[1];

  sub_24FF4C758();
  if ((sub_24FF61D08() & 1) == 0)
  {

    goto LABEL_11;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v14 = *(v1 + 2);
    v15 = sub_24FF4C6AC();
    v1 = sub_24FF4B10C(v15, v16, v17, v1);
  }

  v7 = *(v1 + 2);
  v6 = *(v1 + 3);
  if (v7 >= v6 >> 1)
  {
    v18 = sub_24FF4C878(v6);
    v1 = sub_24FF4B10C(v18, v19, v20, v1);
  }

  v0[5] = v1;
  *(v1 + 2) = v7 + 1;
  v8 = &v1[16 * v7];
  *(v8 + 4) = v4;
  *(v8 + 5) = v3;
  v9 = swift_task_alloc();
  v0[6] = v9;
  *v9 = v0;
  sub_24FF4C804();
  sub_24FF2C004();

  return sub_24FF46748();
}

uint64_t sub_24FF47CF4(uint64_t a1)
{
  v33 = a1;
  v2 = sub_24FF25460(&qword_27F3B4378, qword_24FF63C58);
  v3 = sub_24FF2552C(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  v9 = &v32 - v8;
  v10 = sub_24FF25460(&qword_27F3B4348, &qword_24FF63BF8);
  v11 = sub_24FF2552C(v10);
  v34 = v12;
  v35 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v11);
  v16 = &v32 - v15;
  v32 = sub_24FF25460(&qword_27F3B4340, &qword_24FF63BD0);
  v17 = sub_24FF2552C(v32);
  v19 = v18;
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v17);
  v23 = &v32 - v22;
  swift_defaultActor_initialize();
  *(v1 + OBJC_IVAR____TtC19GenerativeFunctions15JsonTokenStream_readPosition) = 0;
  v24 = (v1 + OBJC_IVAR____TtC19GenerativeFunctions15JsonTokenStream_buffer);
  *v24 = 0;
  v24[1] = 0xE000000000000000;
  *(v1 + OBJC_IVAR____TtC19GenerativeFunctions15JsonTokenStream_complete) = 0;
  *(v1 + OBJC_IVAR____TtC19GenerativeFunctions15JsonTokenStream_streamingTask) = 0;
  v25 = (v1 + OBJC_IVAR____TtC19GenerativeFunctions15JsonTokenStream_currentCharacter);
  *v25 = 0;
  v25[1] = 0;
  *(v1 + OBJC_IVAR____TtC19GenerativeFunctions15JsonTokenStream_started) = 0;
  v26 = OBJC_IVAR____TtC19GenerativeFunctions15JsonTokenStream_sourceStream;
  v27 = sub_24FF25460(&qword_27F3B4310, &qword_24FF63BF0);
  v28 = *(v27 - 8);
  v29 = v1 + v26;
  v30 = v33;
  (*(v28 + 16))(v29, v33, v27);
  (*(v5 + 104))(v9, *MEMORY[0x277D858A0], v2);
  sub_24FF61F38();
  (*(v28 + 8))(v30, v27);
  (*(v5 + 8))(v9, v2);
  (*(v19 + 32))(v1 + OBJC_IVAR____TtC19GenerativeFunctions15JsonTokenStream_inputStream, v23, v32);
  (*(v34 + 32))(v1 + OBJC_IVAR____TtC19GenerativeFunctions15JsonTokenStream_inputStreamContinuation, v16, v35);
  return v1;
}

uint64_t sub_24FF4801C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_24FF2C5C0;

  return sub_24FF480AC();
}

uint64_t sub_24FF480AC()
{
  v1[18] = v0;
  v2 = sub_24FF25460(&qword_27F3B4368, &qword_24FF63C40);
  v1[19] = v2;
  v3 = *(v2 - 8);
  v1[20] = v3;
  v4 = *(v3 + 64) + 15;
  v1[21] = swift_task_alloc();
  v5 = sub_24FF25460(&qword_27F3B4370, &unk_24FF63C48);
  v1[22] = v5;
  v6 = *(v5 - 8);
  v1[23] = v6;
  v7 = *(v6 + 64) + 15;
  v1[24] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24FF481E0, v0, 0);
}

uint64_t sub_24FF481E0()
{
  sub_24FF2BC7C();
  if (qword_280B15CB8 != -1)
  {
    sub_24FF4C524();
  }

  v1 = sub_24FF61BC8();
  v0[25] = sub_24FF278EC(v1, qword_280B16918);
  v2 = sub_24FF61BA8();
  v3 = sub_24FF62008();
  if (sub_24FF4C944(v3))
  {
    *swift_slowAlloc() = 0;
    sub_24FF4C868();
    _os_log_impl(v4, v5, v6, v7, v8, 2u);
    sub_24FF42670();
  }

  v9 = v0[24];
  v10 = v0[18];

  v0[9] = 0;
  v0[10] = 0xE000000000000000;
  sub_24FF25460(&qword_27F3B4310, &qword_24FF63BF0);
  sub_24FF61ED8();
  v11 = sub_24FF4C2F8();
  v12 = OBJC_IVAR____TtC19GenerativeFunctions15JsonTokenStream_inputStreamContinuation;
  v0[26] = v11;
  v0[27] = v12;
  v13 = v0[18];
  v14 = *(MEMORY[0x277D858B8] + 4);
  swift_task_alloc();
  sub_24FF2BC3C();
  v0[28] = v15;
  *v15 = v16;
  sub_24FF4C78C(v15);

  return MEMORY[0x2822005A8](v0 + 11);
}

uint64_t sub_24FF48348()
{
  sub_24FF2BC70();
  sub_24FF2BC88();
  v3 = v2;
  sub_24FF2BB08();
  *v4 = v3;
  v6 = *(v5 + 224);
  v7 = *v1;
  sub_24FF2BACC();
  *v8 = v7;

  if (v0)
  {
    v9 = *(v3 + 144);
    v10 = *(v3 + 80);

    v11 = sub_24FF486EC;
    v12 = v9;
  }

  else
  {
    v12 = *(v3 + 144);
    v11 = sub_24FF48454;
  }

  return MEMORY[0x2822009F8](v11, v12, 0);
}

uint64_t sub_24FF48454()
{
  v2 = v0[11];
  v1 = v0[12];
  if (v1)
  {
    v36 = v0[11];
    v3 = HIBYTE(v1) & 0xF;
    v0[2] = v2;
    v0[3] = v1;
    if ((v1 & 0x2000000000000000) == 0)
    {
      v3 = v2 & 0xFFFFFFFFFFFFLL;
    }

    v0[4] = 0;
    v0[5] = v3;
    v37 = v1;

    while (1)
    {
      v4 = sub_24FF61DD8();
      if (!v5)
      {
        break;
      }

      v6 = v0[27];
      v7 = v0[20];
      v8 = v0[21];
      v9 = v0[18];
      v10 = v0[19];
      v0[13] = v4;
      v0[14] = v5;
      sub_24FF25460(&qword_27F3B4348, &qword_24FF63BF8);
      sub_24FF61F78();
      (*(v7 + 8))(v8, v10);
    }

    v11 = v0[3];

    MEMORY[0x25305C900](v36, v37);

    v12 = v0[26];
    v13 = v0[18];
    v14 = *(MEMORY[0x277D858B8] + 4);
    swift_task_alloc();
    sub_24FF2BC3C();
    v0[28] = v15;
    *v15 = v16;
    sub_24FF4C78C();
    v17 = sub_24FF4CB7C();

    return MEMORY[0x2822005A8](v17);
  }

  else
  {
    v18 = v0[27];
    v19 = v0[25];
    v20 = v0[18];
    (*(v0[23] + 8))(v0[24], v0[22]);
    v0[17] = 0;
    sub_24FF25460(&qword_27F3B4348, &qword_24FF63BF8);
    sub_24FF61F88();
    *(v20 + OBJC_IVAR____TtC19GenerativeFunctions15JsonTokenStream_complete) = 1;
    v22 = v0[9];
    v21 = v0[10];
    v23 = (v20 + OBJC_IVAR____TtC19GenerativeFunctions15JsonTokenStream_buffer);
    swift_beginAccess();
    v24 = v23[1];
    *v23 = v22;
    v23[1] = v21;

    v25 = sub_24FF61BA8();
    v26 = sub_24FF62008();
    if (sub_24FF4C944(v26))
    {
      *swift_slowAlloc() = 0;
      sub_24FF4C868();
      _os_log_impl(v27, v28, v29, v30, v31, 2u);
      sub_24FF42670();
    }

    v32 = v0[24];
    v33 = v0[21];

    sub_24FF24BC0();

    return v34();
  }
}

void sub_24FF486EC()
{
  sub_24FF2BC30();
  v1 = v0[25];
  (*(v0[23] + 8))(v0[24], v0[22]);
  v2 = v0[15];
  MEMORY[0x25305D050](v2);
  v3 = sub_24FF61BA8();
  sub_24FF62018();

  if (sub_24FF4CC08())
  {
    v4 = sub_24FF42770();
    v5 = swift_slowAlloc();
    *v4 = 138412290;
    MEMORY[0x25305D050](v2);
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v6;
    *v5 = v6;
    sub_24FF4C82C(&dword_24FF22000, v7, v8, "Received an error from the ource stream while tokenizing: %@");
    sub_24FF4C3F0(v5);
    sub_24FF4C84C();
    sub_24FF42670();
  }

  v9 = v0[27];
  v10 = v0[18];

  v0[16] = v2;
  MEMORY[0x25305D050](v2);
  sub_24FF25460(&qword_27F3B4348, &qword_24FF63BF8);
  sub_24FF61F88();

  v11 = v0[24];
  v12 = v0[21];

  sub_24FF24BC0();
  sub_24FF2C004();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_24FF48848(uint64_t a1, uint64_t a2)
{
  sub_24FF4C1E4(a1, a2);

  return 0;
}

uint64_t sub_24FF488A8(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return sub_24FF4C544(sub_24FF488C8, v2);
}

uint64_t sub_24FF488C8()
{
  sub_24FF32434();
  v1 = (v0[4] + OBJC_IVAR____TtC19GenerativeFunctions15JsonTokenStream_currentCharacter);
  v3 = *v1;
  v2 = v1[1];
  if (!v2 || (v3 == v0[2] ? (v4 = v2 == v0[3]) : (v4 = 0), !v4 && (v5 = *v1, v6 = v1[1], (sub_24FF62158() & 1) == 0)))
  {
    sub_24FF4B054();
    swift_allocError();
    *v11 = v3;
    *(v11 + 8) = v2;
    *(v11 + 16) = 0;
    swift_willThrow();
    sub_24FF24BC0();

    sub_24FF4CC20();

    __asm { BRAA            X0, X16 }
  }

  v7 = swift_task_alloc();
  v0[5] = v7;
  *v7 = v0;
  v7[1] = sub_24FF48A18;
  v8 = v0[4];
  sub_24FF4CC20();

  return sub_24FF46748();
}

uint64_t sub_24FF48A18()
{
  sub_24FF2BC70();
  sub_24FF2BC88();
  v2 = *(v1 + 40);
  v3 = *v0;
  sub_24FF2BACC();
  *v4 = v3;

  sub_24FF24BC0();

  return v5();
}

uint64_t sub_24FF48B18()
{
  v78 = v3;
  v5 = v3[5];
  v6 = OBJC_IVAR____TtC19GenerativeFunctions15JsonTokenStream_currentCharacter;
  v3[6] = OBJC_IVAR____TtC19GenerativeFunctions15JsonTokenStream_currentCharacter;
  v7 = *(v5 + v6 + 8);
  if (v7)
  {
    v8 = *(v5 + v6) == 34 && v7 == 0xE100000000000000;
    if (v8 || (sub_24FF4C8C8() & 1) != 0)
    {
      if (qword_280B15CB8 != -1)
      {
        sub_24FF4C524();
      }

      v9 = sub_24FF61BC8();
      sub_24FF278EC(v9, qword_280B16918);
      v10 = sub_24FF61BA8();
      v11 = sub_24FF62018();
      if (!sub_24FF4C944(v11))
      {
        goto LABEL_12;
      }

      *swift_slowAlloc() = 0;
      sub_24FF4C868();
      _os_log_impl(v12, v13, v14, v15, v16, 2u);
LABEL_11:
      sub_24FF42670();
LABEL_12:

LABEL_13:
      sub_24FF4CA40();
      goto LABEL_14;
    }

    v5 = v3[5];
    v19 = v3[6];
  }

  v3[7] = 0;
  sub_24FF4CB1C(v5);
  if (v1)
  {
    v21 = *v20;

    v22 = MEMORY[0x277D84F90];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v58 = *(v22 + 2);
      v59 = sub_24FF4C6AC();
      v22 = sub_24FF4B10C(v59, v60, v61, v22);
    }

    v23 = *(v22 + 3);
    if (*(v22 + 2) >= v23 >> 1)
    {
      v62 = sub_24FF4C744(v23);
      sub_24FF4B10C(v62, v63, v64, v22);
    }

    sub_24FF4CB28();
    v24 = swift_task_alloc();
    v3[9] = v24;
    *v24 = v3;
    sub_24FF4C6BC(v24);
    sub_24FF4C960();

    return sub_24FF46A64(v25, v26);
  }

  if (*(MEMORY[0x277D84F90] + 16) > 3uLL)
  {
    v3[2] = MEMORY[0x277D84F90];
    LODWORD(v39) = sub_24FF25460(&qword_27F3B4320, &qword_24FF63BA0);
    sub_24FF4B0A8();
    sub_24FF4C8E4();
    sub_24FF4C6F8();
    if (!v40)
    {
      goto LABEL_139;
    }

    if ((v0 & 0x1000000000000000) != 0)
    {

      v65 = sub_24FF4C758();
      sub_24FF4BCDC(v65, v66, 16);
      sub_24FF4CAA0();
      if (v4)
      {
        goto LABEL_139;
      }

LABEL_133:
      if ((sub_24FF62248() & 0x100000000) == 0)
      {
        sub_24FF4C8BC();

        if ((v39 & 0xFFFFFF80) != 0)
        {
          if (v39 < 0x800)
          {
            sub_24FF4C99C();
            goto LABEL_137;
          }

LABEL_152:
          sub_24FF4C590();
          goto LABEL_137;
        }

        if (v39 <= 0xFF)
        {
          v57 = 1;
LABEL_137:
          sub_24FF4C668(v57);
LABEL_14:
          sub_24FF4C8AC();
          sub_24FF4C960();

          __asm { BRAA            X3, X16 }
        }

        __break(1u);
        goto LABEL_148;
      }

LABEL_139:
      if (qword_280B15CB8 != -1)
      {
        sub_24FF4C524();
      }

      v67 = sub_24FF61BC8();
      sub_24FF278EC(v67, qword_280B16918);
      sub_24FF4C8BC();

      v10 = sub_24FF61BA8();
      v68 = sub_24FF62018();

      if (!os_log_type_enabled(v10, v68))
      {

        goto LABEL_13;
      }

      v69 = sub_24FF42770();
      v70 = sub_24FF4CA88();
      v77 = v70;
      *v69 = 136315138;
      v71 = sub_24FF4C758();
      v74 = sub_24FF5BBE0(v71, v72, v73);

      *(v69 + 4) = v74;
      sub_24FF4C90C(&dword_24FF22000, v75, v76, "Failed to parse unicode sequence %s");
      sub_24FF25A6C(v70);
      sub_24FF42670();
      goto LABEL_11;
    }

    if ((v0 & 0x2000000000000000) != 0)
    {
      sub_24FF4C88C();
      if (v8)
      {
        if (!v52)
        {
LABEL_151:
          __break(1u);
          goto LABEL_152;
        }

        if (v52 != 1)
        {
          sub_24FF4C644();
          while (1)
          {
            sub_24FF4C5E0();
            if (v45)
            {
              sub_24FF4C780();
              if (v45)
              {
                sub_24FF4C774();
                if (!v8 & v45)
                {
                  break;
                }
              }
            }

            sub_24FF4C5D0();
            if (!v45)
            {
              break;
            }

            sub_24FF4C8A0();
            if (v46)
            {
              break;
            }

            sub_24FF4C724();
            if (v8)
            {
              goto LABEL_132;
            }
          }
        }
      }

      else if (v53 == 45)
      {
        if (!v52)
        {
LABEL_149:
          __break(1u);
          goto LABEL_150;
        }

        if (v52 != 1)
        {
          sub_24FF4C644();
          while (1)
          {
            sub_24FF4C5E0();
            if (v45)
            {
              sub_24FF4C780();
              if (v45)
              {
                sub_24FF4C774();
                if (!v8 & v45)
                {
                  break;
                }
              }
            }

            sub_24FF4C5D0();
            if (!v45)
            {
              break;
            }

            sub_24FF4C984();
            if (v46)
            {
              break;
            }

            sub_24FF4C724();
            if (v8)
            {
              goto LABEL_132;
            }
          }
        }
      }

      else if (v52)
      {
        sub_24FF4C9BC();
        while (1)
        {
          sub_24FF4C5E0();
          if (v45)
          {
            sub_24FF4C780();
            if (v45)
            {
              sub_24FF4C774();
              if (!v8 & v45)
              {
                break;
              }
            }
          }

          sub_24FF4C5D0();
          if (!v45)
          {
            break;
          }

          sub_24FF4C8A0();
          if (v46)
          {
            break;
          }

          sub_24FF4C724();
          if (v8)
          {
            goto LABEL_132;
          }
        }
      }

      goto LABEL_131;
    }

    if ((v2 & 0x1000000000000000) != 0)
    {
      v41 = sub_24FF4CB10();
    }

    else
    {
      sub_24FF4C758();
      v41 = sub_24FF620A8();
    }

    v42 = sub_24FF4C990(v41);
    if (v8)
    {
      if (v43 < 1)
      {
LABEL_150:
        __break(1u);
        goto LABEL_151;
      }

      if (v43 == 1)
      {
        goto LABEL_131;
      }

      if (v42)
      {
        sub_24FF4C714();
        while (1)
        {
          sub_24FF4C5E0();
          if (v45)
          {
            sub_24FF4C780();
            if (v45)
            {
              sub_24FF4C774();
              if (!v8 & v45)
              {
                goto LABEL_131;
              }
            }
          }

          sub_24FF4C5D0();
          if (!v45)
          {
            goto LABEL_131;
          }

          sub_24FF4C8A0();
          if (v46)
          {
            goto LABEL_131;
          }

          sub_24FF4C724();
          if (v8)
          {
            goto LABEL_132;
          }
        }
      }
    }

    else if (v44 == 45)
    {
      if (v43 < 1)
      {
LABEL_148:
        __break(1u);
        goto LABEL_149;
      }

      if (v43 == 1)
      {
        goto LABEL_131;
      }

      if (v42)
      {
        sub_24FF4C714();
        while (1)
        {
          sub_24FF4C5E0();
          if (v45)
          {
            sub_24FF4C780();
            if (v45)
            {
              sub_24FF4C774();
              if (!v8 & v45)
              {
                goto LABEL_131;
              }
            }
          }

          sub_24FF4C5D0();
          if (!v45)
          {
            goto LABEL_131;
          }

          sub_24FF4C984();
          if (v46)
          {
            goto LABEL_131;
          }

          sub_24FF4C724();
          if (v8)
          {
            goto LABEL_132;
          }
        }
      }
    }

    else
    {
      if (!v43)
      {
LABEL_131:
        LODWORD(v39) = 0;
        v47 = 1;
        goto LABEL_132;
      }

      if (v42)
      {
        v39 = 0;
        while (1)
        {
          sub_24FF4C9DC(v42);
          if (v45)
          {
            if ((v54 - 65) >= 6 && (v54 - 97) > 5)
            {
              goto LABEL_131;
            }
          }

          sub_24FF4C9CC();
          if (!v45)
          {
            goto LABEL_131;
          }

          v46 = __OFADD__(16 * v39, v56);
          v39 = 16 * v39 + v56;
          if (v46)
          {
            goto LABEL_131;
          }

          v42 = sub_24FF4C978(v55);
          if (v8)
          {
            goto LABEL_117;
          }
        }
      }
    }

    LODWORD(v39) = 0;
LABEL_117:
    v47 = 0;
LABEL_132:
    if (v47)
    {
      goto LABEL_139;
    }

    goto LABEL_133;
  }

  if (qword_280B15CB8 != -1)
  {
    sub_24FF4C524();
  }

  v29 = sub_24FF61BC8();
  sub_24FF278EC(v29, qword_280B16918);
  v30 = MEMORY[0x277D84F90];
  swift_bridgeObjectRetain_n();
  v31 = sub_24FF61BA8();
  sub_24FF62018();
  sub_24FF4CB5C();

  if (sub_24FF4CC08())
  {
    v32 = sub_24FF42770();
    v33 = sub_24FF4CA88();
    v77 = v33;
    sub_24FF4CAD8(4.8149e-34);
    sub_24FF25460(&qword_27F3B4320, &qword_24FF63BA0);
    sub_24FF4B0A8();
    v34 = sub_24FF4CAF4();
    v36 = sub_24FF5BBE0(v34, v35, &v77);

    *(v32 + 4) = v36;
    sub_24FF4C82C(&dword_24FF22000, v37, v38, "Incomplete unicode sequence: %s");
    sub_24FF25A6C(v33);
    sub_24FF4C84C();
    sub_24FF42670();
  }

  else
  {
  }

  v48 = *(v30 + 16);

  if (!v48)
  {
    goto LABEL_13;
  }

  v49 = swift_task_alloc();
  v3[13] = v49;
  *v49 = v3;
  sub_24FF4C628();
  sub_24FF4C6BC(v50);
  sub_24FF4C960();

  return sub_24FF46748();
}

uint64_t sub_24FF49270()
{
  sub_24FF2BC7C();
  sub_24FF2BC88();
  v3 = v2;
  sub_24FF2BB08();
  *v4 = v3;
  v6 = *(v5 + 72);
  *v4 = *v1;
  v3[10] = v7;
  v3[11] = v8;

  if (v0)
  {
    v9 = v3[8];

    sub_24FF45090();

    return v10();
  }

  else
  {
    v12 = v3[5];
    v13 = sub_24FF4C6CC();

    return MEMORY[0x2822009F8](v13, v14, v15);
  }
}

uint64_t sub_24FF493A0()
{
  v58 = v1;
  v3 = v1[11];
  if (v3)
  {
    if (v3 == 0xE100000000000000 && v1[10] == 34)
    {
      v4 = v1[11];

      goto LABEL_6;
    }

    v5 = v1[11];
    v6 = sub_24FF4C8C8();

    if (v6)
    {
LABEL_6:
      v7 = v1[8];
      if (*(v7 + 16) <= 3uLL)
      {
        if (qword_280B15CB8 != -1)
        {
          sub_24FF4C524();
        }

        v8 = sub_24FF61BC8();
        sub_24FF278EC(v8, qword_280B16918);
        sub_24FF4C8BC();
        swift_bridgeObjectRetain_n();
        v9 = sub_24FF61BA8();
        sub_24FF62018();
        sub_24FF4CB5C();

        if (sub_24FF4CC08())
        {
          v10 = sub_24FF42770();
          v11 = sub_24FF4CA88();
          v57 = v11;
          sub_24FF4CAD8(4.8149e-34);
          sub_24FF25460(&qword_27F3B4320, &qword_24FF63BA0);
          sub_24FF4B0A8();
          v12 = sub_24FF4CAF4();
          v14 = sub_24FF5BBE0(v12, v13, &v57);

          *(v10 + 4) = v14;
          sub_24FF4C82C(&dword_24FF22000, v15, v16, "Incomplete unicode sequence: %s");
          sub_24FF25A6C(v11);
          sub_24FF4C84C();
          sub_24FF42670();
        }

        v17 = *(v7 + 16);

        if (v17)
        {
          v18 = swift_task_alloc();
          v1[13] = v18;
          *v18 = v1;
          sub_24FF4C628();
          goto LABEL_14;
        }

        goto LABEL_125;
      }

      v1[2] = v7;
      LODWORD(v26) = sub_24FF25460(&qword_27F3B4320, &qword_24FF63BA0);
      sub_24FF4B0A8();
      sub_24FF4C8E4();
      sub_24FF4C6F8();
      if (!v27)
      {
        goto LABEL_120;
      }

      if ((v7 & 0x1000000000000000) != 0)
      {

        v42 = sub_24FF4C758();
        sub_24FF4BCDC(v42, v43, 16);
        sub_24FF4CAA0();
        if (v2)
        {
          goto LABEL_120;
        }

LABEL_114:
        if ((sub_24FF62248() & 0x100000000) == 0)
        {
          sub_24FF4C8BC();

          if ((v26 & 0xFFFFFF80) != 0)
          {
            if (v26 < 0x800)
            {
              sub_24FF4C99C();
              goto LABEL_118;
            }

LABEL_137:
            sub_24FF4C590();
            goto LABEL_118;
          }

          if (v26 <= 0xFF)
          {
            v41 = 1;
LABEL_118:
            sub_24FF4C668(v41);
            goto LABEL_126;
          }

          __break(1u);
          goto LABEL_133;
        }

LABEL_120:
        if (qword_280B15CB8 != -1)
        {
          sub_24FF4C524();
        }

        v44 = sub_24FF61BC8();
        sub_24FF278EC(v44, qword_280B16918);
        sub_24FF4C8BC();

        v45 = sub_24FF61BA8();
        v46 = sub_24FF62018();

        if (os_log_type_enabled(v45, v46))
        {
          v47 = sub_24FF42770();
          v48 = sub_24FF4CA88();
          v57 = v48;
          *v47 = 136315138;
          v49 = sub_24FF4C758();
          v52 = sub_24FF5BBE0(v49, v50, v51);

          *(v47 + 4) = v52;
          sub_24FF4C90C(&dword_24FF22000, v53, v54, "Failed to parse unicode sequence %s");
          sub_24FF25A6C(v48);
          sub_24FF42670();
          sub_24FF4C84C();
        }

        else
        {
        }

LABEL_125:
        sub_24FF4CA40();
LABEL_126:
        sub_24FF4C8AC();
        sub_24FF4C960();

        __asm { BRAA            X3, X16 }
      }

      if ((v7 & 0x2000000000000000) != 0)
      {
        sub_24FF4C88C();
        if (v32)
        {
          if (!v36)
          {
LABEL_136:
            __break(1u);
            goto LABEL_137;
          }

          if (v36 != 1)
          {
            sub_24FF4C644();
            while (1)
            {
              sub_24FF4C5E0();
              if (v33)
              {
                sub_24FF4C780();
                if (v33)
                {
                  sub_24FF4C774();
                  if (!v32 & v33)
                  {
                    break;
                  }
                }
              }

              sub_24FF4C5D0();
              if (!v33)
              {
                break;
              }

              sub_24FF4C8A0();
              if (v34)
              {
                break;
              }

              sub_24FF4C724();
              if (v32)
              {
                goto LABEL_113;
              }
            }
          }
        }

        else if (v37 == 45)
        {
          if (!v36)
          {
LABEL_134:
            __break(1u);
            goto LABEL_135;
          }

          if (v36 != 1)
          {
            sub_24FF4C644();
            while (1)
            {
              sub_24FF4C5E0();
              if (v33)
              {
                sub_24FF4C780();
                if (v33)
                {
                  sub_24FF4C774();
                  if (!v32 & v33)
                  {
                    break;
                  }
                }
              }

              sub_24FF4C5D0();
              if (!v33)
              {
                break;
              }

              sub_24FF4C984();
              if (v34)
              {
                break;
              }

              sub_24FF4C724();
              if (v32)
              {
                goto LABEL_113;
              }
            }
          }
        }

        else if (v36)
        {
          sub_24FF4C9BC();
          while (1)
          {
            sub_24FF4C5E0();
            if (v33)
            {
              sub_24FF4C780();
              if (v33)
              {
                sub_24FF4C774();
                if (!v32 & v33)
                {
                  break;
                }
              }
            }

            sub_24FF4C5D0();
            if (!v33)
            {
              break;
            }

            sub_24FF4C8A0();
            if (v34)
            {
              break;
            }

            sub_24FF4C724();
            if (v32)
            {
              goto LABEL_113;
            }
          }
        }

        goto LABEL_112;
      }

      if ((v0 & 0x1000000000000000) != 0)
      {
        v28 = sub_24FF4CB10();
      }

      else
      {
        sub_24FF4C758();
        v28 = sub_24FF620A8();
      }

      v29 = sub_24FF4C990(v28);
      if (v32)
      {
        if (v30 < 1)
        {
LABEL_135:
          __break(1u);
          goto LABEL_136;
        }

        if (v30 == 1)
        {
          goto LABEL_112;
        }

        if (v29)
        {
          sub_24FF4C714();
          while (1)
          {
            sub_24FF4C5E0();
            if (v33)
            {
              sub_24FF4C780();
              if (v33)
              {
                sub_24FF4C774();
                if (!v32 & v33)
                {
                  goto LABEL_112;
                }
              }
            }

            sub_24FF4C5D0();
            if (!v33)
            {
              goto LABEL_112;
            }

            sub_24FF4C8A0();
            if (v34)
            {
              goto LABEL_112;
            }

            sub_24FF4C724();
            if (v32)
            {
              goto LABEL_113;
            }
          }
        }
      }

      else if (v31 == 45)
      {
        if (v30 < 1)
        {
LABEL_133:
          __break(1u);
          goto LABEL_134;
        }

        if (v30 == 1)
        {
          goto LABEL_112;
        }

        if (v29)
        {
          sub_24FF4C714();
          while (1)
          {
            sub_24FF4C5E0();
            if (v33)
            {
              sub_24FF4C780();
              if (v33)
              {
                sub_24FF4C774();
                if (!v32 & v33)
                {
                  goto LABEL_112;
                }
              }
            }

            sub_24FF4C5D0();
            if (!v33)
            {
              goto LABEL_112;
            }

            sub_24FF4C984();
            if (v34)
            {
              goto LABEL_112;
            }

            sub_24FF4C724();
            if (v32)
            {
              goto LABEL_113;
            }
          }
        }
      }

      else
      {
        if (!v30)
        {
LABEL_112:
          LODWORD(v26) = 0;
          v35 = 1;
          goto LABEL_113;
        }

        if (v29)
        {
          v26 = 0;
          while (1)
          {
            sub_24FF4C9DC(v29);
            if (v33)
            {
              if ((v38 - 65) >= 6 && (v38 - 97) > 5)
              {
                goto LABEL_112;
              }
            }

            sub_24FF4C9CC();
            if (!v33)
            {
              goto LABEL_112;
            }

            v34 = __OFADD__(16 * v26, v40);
            v26 = 16 * v26 + v40;
            if (v34)
            {
              goto LABEL_112;
            }

            v29 = sub_24FF4C978(v39);
            if (v32)
            {
              goto LABEL_98;
            }
          }
        }
      }

      LODWORD(v26) = 0;
LABEL_98:
      v35 = 0;
LABEL_113:
      if (v35)
      {
        goto LABEL_120;
      }

      goto LABEL_114;
    }
  }

  v21 = swift_task_alloc();
  v19 = sub_24FF4CB3C(v21);
  *v19 = v22;
  v20 = sub_24FF499C4;
LABEL_14:
  v19[1] = v20;
  v23 = v1[5];
  sub_24FF4C960();

  return sub_24FF46748();
}

uint64_t sub_24FF499C4()
{
  sub_24FF2BC7C();
  sub_24FF2BC88();
  v3 = v2;
  sub_24FF2BB08();
  *v4 = v3;
  v6 = *(v5 + 96);
  v7 = *v1;
  sub_24FF2BACC();
  *v8 = v7;

  if (v0)
  {
    v9 = *(v3 + 64);

    sub_24FF45090();

    return v10();
  }

  else
  {
    v12 = *(v3 + 40);
    v13 = sub_24FF4C6CC();

    return MEMORY[0x2822009F8](v13, v14, v15);
  }
}

uint64_t sub_24FF49AE8()
{
  v66 = v1;
  v3 = v1[8];
  v4 = v1[7] + 1;
  v1[7] = v4;
  if (v4 != 4)
  {
    v5 = (v1[5] + v1[6]);
    if (v5[1])
    {
      v6 = *v5;
      v7 = v5[1];

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v58 = *(v3 + 2);
        v59 = sub_24FF4C6AC();
        v3 = sub_24FF4B10C(v59, v60, v61, v3);
      }

      v8 = *(v3 + 3);
      if (*(v3 + 2) >= v8 >> 1)
      {
        v62 = sub_24FF4C744(v8);
        sub_24FF4B10C(v62, v63, v64, v3);
      }

      sub_24FF4CB28();
      v9 = swift_task_alloc();
      v1[9] = v9;
      *v9 = v1;
      sub_24FF4C6BC(v9);
      sub_24FF4C960();

      return sub_24FF46A64(v10, v11);
    }
  }

  if (*(v3 + 2) > 3uLL)
  {
    v1[2] = v3;
    LODWORD(v27) = sub_24FF25460(&qword_27F3B4320, &qword_24FF63BA0);
    sub_24FF4B0A8();
    sub_24FF4C8E4();
    sub_24FF4C6F8();
    if (!v28)
    {
      goto LABEL_122;
    }

    if ((v3 & 0x1000000000000000) != 0)
    {

      v43 = sub_24FF4C758();
      sub_24FF4BCDC(v43, v44, 16);
      sub_24FF4CAA0();
      if (v2)
      {
        goto LABEL_122;
      }

LABEL_116:
      if ((sub_24FF62248() & 0x100000000) == 0)
      {
        sub_24FF4C8BC();

        if ((v27 & 0xFFFFFF80) != 0)
        {
          if (v27 < 0x800)
          {
            sub_24FF4C99C();
            goto LABEL_120;
          }

LABEL_139:
          sub_24FF4C590();
          goto LABEL_120;
        }

        if (v27 <= 0xFF)
        {
          v42 = 1;
LABEL_120:
          sub_24FF4C668(v42);
          goto LABEL_128;
        }

        __break(1u);
        goto LABEL_135;
      }

LABEL_122:
      if (qword_280B15CB8 != -1)
      {
        sub_24FF4C524();
      }

      v45 = sub_24FF61BC8();
      sub_24FF278EC(v45, qword_280B16918);
      sub_24FF4C8BC();

      v46 = sub_24FF61BA8();
      v47 = sub_24FF62018();

      if (os_log_type_enabled(v46, v47))
      {
        v48 = sub_24FF42770();
        v49 = sub_24FF4CA88();
        v65 = v49;
        *v48 = 136315138;
        v50 = sub_24FF4C758();
        v53 = sub_24FF5BBE0(v50, v51, v52);

        *(v48 + 4) = v53;
        sub_24FF4C90C(&dword_24FF22000, v54, v55, "Failed to parse unicode sequence %s");
        sub_24FF25A6C(v49);
        sub_24FF42670();
        sub_24FF4C84C();
      }

      else
      {
      }

      goto LABEL_127;
    }

    if ((v3 & 0x2000000000000000) != 0)
    {
      sub_24FF4C88C();
      if (v33)
      {
        if (!v37)
        {
LABEL_138:
          __break(1u);
          goto LABEL_139;
        }

        if (v37 != 1)
        {
          sub_24FF4C644();
          while (1)
          {
            sub_24FF4C5E0();
            if (v34)
            {
              sub_24FF4C780();
              if (v34)
              {
                sub_24FF4C774();
                if (!v33 & v34)
                {
                  break;
                }
              }
            }

            sub_24FF4C5D0();
            if (!v34)
            {
              break;
            }

            sub_24FF4C8A0();
            if (v35)
            {
              break;
            }

            sub_24FF4C724();
            if (v33)
            {
              goto LABEL_115;
            }
          }
        }
      }

      else if (v38 == 45)
      {
        if (!v37)
        {
LABEL_136:
          __break(1u);
          goto LABEL_137;
        }

        if (v37 != 1)
        {
          sub_24FF4C644();
          while (1)
          {
            sub_24FF4C5E0();
            if (v34)
            {
              sub_24FF4C780();
              if (v34)
              {
                sub_24FF4C774();
                if (!v33 & v34)
                {
                  break;
                }
              }
            }

            sub_24FF4C5D0();
            if (!v34)
            {
              break;
            }

            sub_24FF4C984();
            if (v35)
            {
              break;
            }

            sub_24FF4C724();
            if (v33)
            {
              goto LABEL_115;
            }
          }
        }
      }

      else if (v37)
      {
        sub_24FF4C9BC();
        while (1)
        {
          sub_24FF4C5E0();
          if (v34)
          {
            sub_24FF4C780();
            if (v34)
            {
              sub_24FF4C774();
              if (!v33 & v34)
              {
                break;
              }
            }
          }

          sub_24FF4C5D0();
          if (!v34)
          {
            break;
          }

          sub_24FF4C8A0();
          if (v35)
          {
            break;
          }

          sub_24FF4C724();
          if (v33)
          {
            goto LABEL_115;
          }
        }
      }

      goto LABEL_114;
    }

    if ((v0 & 0x1000000000000000) != 0)
    {
      v29 = sub_24FF4CB10();
    }

    else
    {
      sub_24FF4C758();
      v29 = sub_24FF620A8();
    }

    v30 = sub_24FF4C990(v29);
    if (v33)
    {
      if (v31 < 1)
      {
LABEL_137:
        __break(1u);
        goto LABEL_138;
      }

      if (v31 == 1)
      {
        goto LABEL_114;
      }

      if (v30)
      {
        sub_24FF4C714();
        while (1)
        {
          sub_24FF4C5E0();
          if (v34)
          {
            sub_24FF4C780();
            if (v34)
            {
              sub_24FF4C774();
              if (!v33 & v34)
              {
                goto LABEL_114;
              }
            }
          }

          sub_24FF4C5D0();
          if (!v34)
          {
            goto LABEL_114;
          }

          sub_24FF4C8A0();
          if (v35)
          {
            goto LABEL_114;
          }

          sub_24FF4C724();
          if (v33)
          {
            goto LABEL_115;
          }
        }
      }
    }

    else if (v32 == 45)
    {
      if (v31 < 1)
      {
LABEL_135:
        __break(1u);
        goto LABEL_136;
      }

      if (v31 == 1)
      {
        goto LABEL_114;
      }

      if (v30)
      {
        sub_24FF4C714();
        while (1)
        {
          sub_24FF4C5E0();
          if (v34)
          {
            sub_24FF4C780();
            if (v34)
            {
              sub_24FF4C774();
              if (!v33 & v34)
              {
                goto LABEL_114;
              }
            }
          }

          sub_24FF4C5D0();
          if (!v34)
          {
            goto LABEL_114;
          }

          sub_24FF4C984();
          if (v35)
          {
            goto LABEL_114;
          }

          sub_24FF4C724();
          if (v33)
          {
            goto LABEL_115;
          }
        }
      }
    }

    else
    {
      if (!v31)
      {
LABEL_114:
        LODWORD(v27) = 0;
        v36 = 1;
        goto LABEL_115;
      }

      if (v30)
      {
        v27 = 0;
        while (1)
        {
          sub_24FF4C9DC(v30);
          if (v34)
          {
            if ((v39 - 65) >= 6 && (v39 - 97) > 5)
            {
              goto LABEL_114;
            }
          }

          sub_24FF4C9CC();
          if (!v34)
          {
            goto LABEL_114;
          }

          v35 = __OFADD__(16 * v27, v41);
          v27 = 16 * v27 + v41;
          if (v35)
          {
            goto LABEL_114;
          }

          v30 = sub_24FF4C978(v40);
          if (v33)
          {
            goto LABEL_100;
          }
        }
      }
    }

    LODWORD(v27) = 0;
LABEL_100:
    v36 = 0;
LABEL_115:
    if (v36)
    {
      goto LABEL_122;
    }

    goto LABEL_116;
  }

  if (qword_280B15CB8 != -1)
  {
    sub_24FF4C524();
  }

  v14 = sub_24FF61BC8();
  sub_24FF278EC(v14, qword_280B16918);
  sub_24FF4C8BC();
  swift_bridgeObjectRetain_n();
  v15 = sub_24FF61BA8();
  sub_24FF62018();
  sub_24FF4CB5C();

  if (sub_24FF4CC08())
  {
    v16 = sub_24FF42770();
    v17 = sub_24FF4CA88();
    v65 = v17;
    sub_24FF4CAD8(4.8149e-34);
    sub_24FF25460(&qword_27F3B4320, &qword_24FF63BA0);
    sub_24FF4B0A8();
    v18 = sub_24FF4CAF4();
    v20 = sub_24FF5BBE0(v18, v19, &v65);

    *(v16 + 4) = v20;
    sub_24FF4C82C(&dword_24FF22000, v21, v22, "Incomplete unicode sequence: %s");
    sub_24FF25A6C(v17);
    sub_24FF4C84C();
    sub_24FF42670();
  }

  v23 = *(v3 + 2);

  if (!v23)
  {
LABEL_127:
    sub_24FF4CA40();
LABEL_128:
    sub_24FF4C8AC();
    sub_24FF4C960();

    __asm { BRAA            X3, X16 }
  }

  v24 = swift_task_alloc();
  v1[13] = v24;
  *v24 = v1;
  sub_24FF4C628();
  sub_24FF4C6BC(v25);
  sub_24FF4C960();

  return sub_24FF46748();
}

uint64_t sub_24FF4A168()
{
  sub_24FF2BC70();
  sub_24FF2BC88();
  v3 = *(v2 + 104);
  v4 = *v1;
  sub_24FF2BACC();
  *v5 = v4;

  v7 = *(v4 + 8);
  if (!v0)
  {
    v6 = sub_24FF4CA40();
  }

  return v7(v6);
}

uint64_t sub_24FF4A254(uint64_t a1, unint64_t a2)
{
  v2 = a1 == 110 && a2 == 0xE100000000000000;
  if (v2 || (sub_24FF62158() & 1) != 0)
  {
    return 10;
  }

  v7 = a1 == 116 && a2 == 0xE100000000000000;
  if (v7 || (sub_24FF62158() & 1) != 0)
  {
    return 9;
  }

  v8 = a1 == 98 && a2 == 0xE100000000000000;
  if (v8 || (sub_24FF62158() & 1) != 0)
  {
    return 8;
  }

  v9 = a1 == 102 && a2 == 0xE100000000000000;
  if (v9 || (sub_24FF62158() & 1) != 0)
  {
    return 12;
  }

  v10 = a1 == 114 && a2 == 0xE100000000000000;
  if (v10 || (sub_24FF62158() & 1) != 0)
  {
    return 13;
  }

  v5 = 34;
  v11 = a1 == 34 && a2 == 0xE100000000000000;
  if (!v11 && (sub_24FF62158() & 1) == 0)
  {
    v5 = 92;
    v12 = a1 == 92 && a2 == 0xE100000000000000;
    if (!v12 && (sub_24FF62158() & 1) == 0)
    {
      if (qword_280B15CB8 != -1)
      {
        swift_once();
      }

      v13 = sub_24FF61BC8();
      sub_24FF278EC(v13, qword_280B16918);

      v14 = sub_24FF61BA8();
      v15 = sub_24FF62018();

      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        v18 = v17;
        *v16 = 136315138;
        *(v16 + 4) = sub_24FF5BBE0(a1, a2, &v18);
        _os_log_impl(&dword_24FF22000, v14, v15, "Unknown json escape sequence of type \\%s", v16, 0xCu);
        sub_24FF25A6C(v17);
        MEMORY[0x25305D1B0](v17, -1, -1);
        MEMORY[0x25305D1B0](v16, -1, -1);
      }

      return 0;
    }
  }

  return v5;
}

uint64_t sub_24FF4A500(uint64_t a1)
{
  v2[8] = a1;
  v2[9] = v1;
  v3 = sub_24FF25460(&qword_27F3B4338, &qword_24FF63BC8);
  v2[10] = v3;
  v4 = *(v3 - 8);
  v2[11] = v4;
  v5 = *(v4 + 64) + 15;
  v2[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24FF4A5CC, v1, 0);
}

uint64_t sub_24FF4A5CC()
{
  sub_24FF32434();
  v1 = v0[9];
  v2 = OBJC_IVAR____TtC19GenerativeFunctions15JsonTokenStream_complete;
  v0[13] = OBJC_IVAR____TtC19GenerativeFunctions15JsonTokenStream_complete;
  if (*(v1 + v2))
  {
    goto LABEL_2;
  }

  v6 = v0[12];
  sub_24FF25460(&qword_27F3B4340, &qword_24FF63BD0);
  sub_24FF61ED8();
  v7 = MEMORY[0x277D84F90];
  v8 = *(MEMORY[0x277D84F90] + 16);
  v0[14] = MEMORY[0x277D84F90];
  if (v8 >= v0[8])
  {
    v14 = v0[12];
    v15 = v0[10];
    v16 = v0[11];
    if (*(v0[9] + v0[13]))
    {
      v17 = *(v16 + 8);
      v18 = sub_24FF4C758();
      v19(v18);
    }

    else
    {
      v0[7] = v7;
      sub_24FF25460(&qword_27F3B4320, &qword_24FF63BA0);
      sub_24FF4B0A8();
      v20 = sub_24FF61E48();
      v22 = v21;
      swift_beginAccess();
      MEMORY[0x25305C910](v20, v22);
      swift_endAccess();

      v23 = *(v16 + 8);
      v24 = sub_24FF4C758();
      v25(v24);
    }

LABEL_2:
    v3 = v0[12];

    sub_24FF321B0();
    sub_24FF4CA1C();

    __asm { BRAA            X1, X16 }
  }

  v9 = *(MEMORY[0x277D858C0] + 4);
  swift_task_alloc();
  sub_24FF2BC3C();
  v0[15] = v10;
  *v10 = v11;
  sub_24FF4C7B4(v10);
  sub_24FF4CA1C();

  return MEMORY[0x2822005B0](v12);
}

uint64_t sub_24FF4A7B0()
{
  sub_24FF2BC70();
  sub_24FF2BC88();
  v3 = v2;
  sub_24FF2BB08();
  *v4 = v3;
  v6 = *(v5 + 120);
  v7 = *v1;
  sub_24FF2BACC();
  *v8 = v7;
  v3[16] = v0;

  if (v0)
  {
    v9 = v3[14];
    v10 = v3[9];

    v11 = sub_24FF4AB90;
    v12 = v10;
  }

  else
  {
    v12 = v3[9];
    v11 = sub_24FF4A8C0;
  }

  return MEMORY[0x2822009F8](v11, v12, 0);
}

uint64_t sub_24FF4A8C0()
{
  sub_24FF32434();
  v1 = v0[5];
  v2 = v0[6];
  v3 = v0[14];
  if (v2)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v5 = v0[14];
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v37 = *(v5 + 2);
      v38 = sub_24FF4C6AC();
      v5 = sub_24FF4B10C(v38, v39, v40, v5);
    }

    v7 = *(v5 + 2);
    v6 = *(v5 + 3);
    v8 = v7 + 1;
    if (v7 >= v6 >> 1)
    {
      v41 = sub_24FF4C744(v6);
      v5 = sub_24FF4B10C(v41, v42, v43, v5);
    }

    *(v5 + 2) = v8;
    v9 = &v5[16 * v7];
    *(v9 + 4) = v1;
    *(v9 + 5) = v2;
    v0[14] = v5;
    if (v8 < v0[8])
    {
      v10 = *(MEMORY[0x277D858C0] + 4);
      swift_task_alloc();
      sub_24FF2BC3C();
      v0[15] = v11;
      *v11 = v12;
      sub_24FF4C7B4();

      return MEMORY[0x2822005B0](v0 + 5);
    }

    v29 = v0[12];
    v30 = v0[10];
    v31 = v0[11];
    if (*(v0[9] + v0[13]))
    {
      (*(v31 + 8))(v0[12], v0[10]);
    }

    else
    {
      v0[7] = v5;
      sub_24FF25460(&qword_27F3B4320, &qword_24FF63BA0);
      sub_24FF4B0A8();
      v32 = sub_24FF61E48();
      v34 = v33;
      swift_beginAccess();
      MEMORY[0x25305C910](v32, v34);
      swift_endAccess();

      (*(v31 + 8))(v29, v30);
    }
  }

  else
  {

    if (qword_280B15CC8 != -1)
    {
      swift_once();
    }

    v13 = sub_24FF61BC8();
    sub_24FF278EC(v13, qword_280B16948);
    v14 = sub_24FF61BA8();
    v15 = sub_24FF62018();
    if (sub_24FF4C944(v15))
    {
      v16 = v0[8];
      v17 = sub_24FF42770();
      *v17 = 134217984;
      *(v17 + 4) = v16;
      sub_24FF4C868();
      _os_log_impl(v18, v19, v20, v21, v22, 0xCu);
      sub_24FF42670();
    }

    v24 = v0[11];
    v23 = v0[12];
    v25 = v0[10];

    v26 = *(v24 + 8);
    v27 = sub_24FF32440();
    v28(v27);
  }

  v35 = v0[12];

  sub_24FF321B0();

  return v36();
}

uint64_t sub_24FF4AB90()
{
  sub_24FF2BC70();
  (*(v0[11] + 8))(v0[12], v0[10]);

  sub_24FF24BC0();
  v2 = v0[16];

  return v1();
}

uint64_t sub_24FF4AC08()
{
  v1 = OBJC_IVAR____TtC19GenerativeFunctions15JsonTokenStream_sourceStream;
  v2 = sub_24FF25460(&qword_27F3B4310, &qword_24FF63BF0);
  sub_24FF26754(v2);
  (*(v3 + 8))(v0 + v1);
  v4 = OBJC_IVAR____TtC19GenerativeFunctions15JsonTokenStream_inputStream;
  v5 = sub_24FF25460(&qword_27F3B4340, &qword_24FF63BD0);
  sub_24FF26754(v5);
  (*(v6 + 8))(v0 + v4);
  v7 = OBJC_IVAR____TtC19GenerativeFunctions15JsonTokenStream_inputStreamContinuation;
  v8 = sub_24FF25460(&qword_27F3B4348, &qword_24FF63BF8);
  sub_24FF26754(v8);
  (*(v9 + 8))(v0 + v7);
  v10 = *(v0 + OBJC_IVAR____TtC19GenerativeFunctions15JsonTokenStream_buffer + 8);

  v11 = *(v0 + OBJC_IVAR____TtC19GenerativeFunctions15JsonTokenStream_streamingTask);

  v12 = *(v0 + OBJC_IVAR____TtC19GenerativeFunctions15JsonTokenStream_currentCharacter + 8);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_24FF4AD34()
{
  sub_24FF4AC08();

  return MEMORY[0x282200960](v0);
}

uint64_t type metadata accessor for JsonTokenStream()
{
  result = qword_280B163C0;
  if (!qword_280B163C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24FF4ADB4()
{
  sub_24FF4AFB0(319, &qword_280B15C70, MEMORY[0x277D837D0], MEMORY[0x277D858D8]);
  if (v1 <= 0x3F)
  {
    v6 = *(v0 - 8) + 64;
    sub_24FF4AFB0(319, &qword_280B15C78, MEMORY[0x277D835B0], MEMORY[0x277D858D8]);
    if (v3 <= 0x3F)
    {
      v7 = *(v2 - 8) + 64;
      sub_24FF4AFB0(319, &qword_280B15C90, MEMORY[0x277D835B0], MEMORY[0x277D858B0]);
      if (v5 <= 0x3F)
      {
        v8 = *(v4 - 8) + 64;
        swift_updateClassMetadata2();
      }
    }
  }
}

uint64_t sub_24FF4AF68(uint64_t *a1, uint64_t *a2)
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

void sub_24FF4AFB0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, void))
{
  if (!*a2)
  {
    v8 = sub_24FF4AF68(&qword_27F3B42F0, &qword_24FF63AF0);
    v9 = a4(a1, a3, v8, MEMORY[0x277D84950]);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

unint64_t sub_24FF4B054()
{
  result = qword_27F3B4318;
  if (!qword_27F3B4318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3B4318);
  }

  return result;
}

unint64_t sub_24FF4B0A8()
{
  result = qword_280B15CA8;
  if (!qword_280B15CA8)
  {
    sub_24FF4AF68(&qword_27F3B4320, &qword_24FF63BA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B15CA8);
  }

  return result;
}

char *sub_24FF4B10C(char *result, int64_t a2, char a3, char *a4)
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
    sub_24FF25460(&qword_27F3B4328, &qword_24FF63BB0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_24FF4B214(char *result, int64_t a2, char a3, char *a4)
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
    sub_24FF25460(&qword_27F3B3E18, &qword_24FF62758);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_24FF4B31C(size_t result, uint64_t a2, char a3, uint64_t a4)
{
  v5 = a2;
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 24);
    a2 = v7 >> 1;
    if ((v7 >> 1) < v5)
    {
      if (a2 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if (v8 <= v5)
      {
        a2 = v5;
      }

      else
      {
        a2 = v8;
      }
    }
  }

  v9 = *(a4 + 16);
  v10 = sub_24FF4B544(v9, a2, &qword_27F3B4358, &qword_24FF63C10, MEMORY[0x277CC95F0]);
  v11 = *(sub_24FF61898() - 8);
  if (v6)
  {
    v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    sub_24FF4B6B4(a4 + v12, v9, v10 + v12, MEMORY[0x277CC95F0]);
    *(a4 + 16) = 0;
  }

  else
  {
    sub_24FF4CBD0();
  }

  return v10;
}

size_t sub_24FF4B430(size_t result, uint64_t a2, char a3, uint64_t a4)
{
  v5 = a2;
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 24);
    a2 = v7 >> 1;
    if ((v7 >> 1) < v5)
    {
      if (a2 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if (v8 <= v5)
      {
        a2 = v5;
      }

      else
      {
        a2 = v8;
      }
    }
  }

  v9 = *(a4 + 16);
  v10 = sub_24FF4B544(v9, a2, &qword_27F3B4350, &unk_24FF63C00, type metadata accessor for ObjectStreamingSupport);
  v11 = *(type metadata accessor for ObjectStreamingSupport(0) - 8);
  if (v6)
  {
    v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    sub_24FF4B6B4(a4 + v12, v9, v10 + v12, type metadata accessor for ObjectStreamingSupport);
    *(a4 + 16) = 0;
  }

  else
  {
    sub_24FF4CBD0();
  }

  return v10;
}

size_t sub_24FF4B544(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
{
  if (a2 <= a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = a2;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  sub_24FF25460(a3, a4);
  v8 = *(a5(0) - 8);
  v9 = *(v8 + 72);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v11 = swift_allocObject();
  result = j__malloc_size(v11);
  if (v9)
  {
    if (result - v10 != 0x8000000000000000 || v9 != -1)
    {
      v11[2] = a1;
      v11[3] = 2 * ((result - v10) / v9);
      return v11;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

char *sub_24FF4B640(char *__src, uint64_t a2, char *__dst)
{
  if (__dst != __src || &__src[16 * a2] <= __dst)
  {
    return memmove(__dst, __src, 16 * a2);
  }

  return __src;
}

uint64_t sub_24FF4B6B4(unint64_t a1, uint64_t a2, unint64_t a3, void (*a4)(void))
{
  if (a3 < a1 || (v8 = (a4)(0), result = sub_24FF26754(v8), a1 + *(v10 + 72) * a2 <= a3))
  {
    a4(0);
    sub_24FF4CB48();

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (a3 != a1)
  {
    sub_24FF4CB48();

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

void *sub_24FF4B774(uint64_t a1, uint64_t a2)
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

  sub_24FF25460(&qword_27F3B4330, &qword_24FF63BB8);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

_BYTE *sub_24FF4B7E4@<X0>(_BYTE *result@<X0>, BOOL *a2@<X8>)
{
  v3 = *result;
  v4 = v3 > 0x20;
  v5 = (1 << v3) & 0x100003E01;
  v6 = v4 || v5 == 0;
  v7 = v6 && (result = _swift_stdlib_strtod_clocale()) != 0 && *result == 0;
  *a2 = v7;
  return result;
}

uint64_t sub_24FF4B850(uint64_t a1, unint64_t a2)
{
  v2 = sub_24FF4B8BC(sub_24FF4B8B8, 0, a1, a2);
  v6 = sub_24FF4B8F0(v2, v3, v4, v5);

  return v6;
}

uint64_t sub_24FF4B8BC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v4 = a3;
  }

  v5 = 7;
  if (((a4 >> 60) & ((a3 & 0x800000000000000) == 0)) != 0)
  {
    v5 = 11;
  }

  return MEMORY[0x2821FBFB0](15, v5 | (v4 << 16));
}

uint64_t sub_24FF4B8F0(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) == 0)
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v15[0] = a3;
      v15[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_24FF61D78();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  v9 = sub_24FF62038();
  if (!v9)
  {
    v11 = MEMORY[0x277D84F90];
    goto LABEL_13;
  }

  v10 = v9;
  v11 = sub_24FF4B774(v9, 0);
  v12 = sub_24FF4BA50(v15, (v11 + 4), v10, a1, a2, a3, a4);

  if (v12 == v10)
  {
LABEL_13:
    v13 = v11[2];
    v14 = sub_24FF61D78();

    return v14;
  }

  __break(1u);
LABEL_11:
  sub_24FF620A8();
LABEL_4:

  return sub_24FF61D78();
}

unint64_t sub_24FF4BA50(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_36;
  }

  if (a3 < 0)
  {
    goto LABEL_40;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_36:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    result = v12;
    if ((v12 & 0xC) == v15)
    {
      result = sub_24FF4BC60(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_24FF61E18();
      v19 = result;
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_24FF620A8();
        }

        v19 = *(result + v18);
      }
    }

    if ((v12 & 0xC) == v15)
    {
      result = sub_24FF4BC60(v12, a6, a7);
      v12 = result;
      if ((a7 & 0x1000000000000000) == 0)
      {
LABEL_27:
        v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
        goto LABEL_31;
      }
    }

    else if ((a7 & 0x1000000000000000) == 0)
    {
      goto LABEL_27;
    }

    if (v23 <= v12 >> 16)
    {
      goto LABEL_39;
    }

    result = sub_24FF61DF8();
    v12 = result;
LABEL_31:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_36;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_38;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_36;
    }
  }

  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_24FF4BC60(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_24FF61E28();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x25305C950](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

unsigned __int8 *sub_24FF4BCDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v82 = a1;
  v83 = a2;

  result = sub_24FF61E58();
  v6 = result;
  v7 = v5;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v43 = sub_24FF4C758();
    v6 = sub_24FF4B850(v43, v44);
    v46 = v45;

    v7 = v46;
    if ((v46 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      v8 = sub_24FF4CB10();
    }

    else
    {
      sub_24FF4C758();
      v8 = sub_24FF620A8();
    }

    result = sub_24FF4C990(v8);
    if (v11)
    {
      if (v9 >= 1)
      {
        if (v9 != 1)
        {
          sub_24FF4CA04();
          if (v26 ^ v27 | v25)
          {
            v30 = 65;
          }

          if (!(v26 ^ v27 | v25))
          {
            v31 = 58;
          }

          if (v28)
          {
            v18 = 0;
            v32 = (v28 + 1);
            do
            {
              v33 = *v32;
              if (v33 < 0x30 || v33 >= v31)
              {
                if (v33 < 0x41 || v33 >= v30)
                {
                  sub_24FF4C9EC();
                  if (!v23 || v33 >= v35)
                  {
                    goto LABEL_143;
                  }

                  v34 = -87;
                }

                else
                {
                  v34 = -55;
                }
              }

              else
              {
                v34 = -48;
              }

              v36 = v18 * a3;
              if ((v18 * a3) >> 64 != (v18 * a3) >> 63)
              {
                goto LABEL_142;
              }

              v18 = v36 + (v33 + v34);
              if (__OFADD__(v36, (v33 + v34)))
              {
                goto LABEL_142;
              }

              ++v32;
              --v29;
            }

            while (v29);
LABEL_52:
            v6 = v18;
            goto LABEL_143;
          }

          goto LABEL_73;
        }

LABEL_142:
        v6 = 0;
        goto LABEL_143;
      }

      goto LABEL_147;
    }

    if (v10 != 45)
    {
      if (v9)
      {
        v37 = a3 + 48;
        v38 = a3 + 55;
        v39 = a3 + 87;
        if (a3 > 10)
        {
          v37 = 58;
        }

        else
        {
          v39 = 97;
          v38 = 65;
        }

        if (result)
        {
          v40 = 0;
          do
          {
            v41 = *result;
            if (v41 < 0x30 || v41 >= v37)
            {
              if (v41 < 0x41 || v41 >= v38)
              {
                v6 = 0;
                if (v41 < 0x61 || v41 >= v39)
                {
                  goto LABEL_143;
                }

                v42 = -87;
              }

              else
              {
                v42 = -55;
              }
            }

            else
            {
              v42 = -48;
            }

            if ((v40 * a3) >> 64 != (v40 * a3) >> 63 || __OFADD__(v40 * a3, (v41 + v42)))
            {
              goto LABEL_142;
            }

            result = sub_24FF4C978(result);
          }

          while (!v11);
          v6 = v40;
          goto LABEL_143;
        }

        goto LABEL_73;
      }

      goto LABEL_142;
    }

    if (v9 >= 1)
    {
      if (v9 != 1)
      {
        sub_24FF4CA04();
        if (v12 ^ v13 | v11)
        {
          v16 = 65;
        }

        if (!(v12 ^ v13 | v11))
        {
          v17 = 58;
        }

        if (v14)
        {
          v18 = 0;
          v19 = (v14 + 1);
          while (1)
          {
            v20 = *v19;
            if (v20 < 0x30 || v20 >= v17)
            {
              if (v20 < 0x41 || v20 >= v16)
              {
                sub_24FF4C9EC();
                if (!v23 || v20 >= v22)
                {
                  goto LABEL_143;
                }

                v21 = -87;
              }

              else
              {
                v21 = -55;
              }
            }

            else
            {
              v21 = -48;
            }

            v24 = v18 * a3;
            if ((v18 * a3) >> 64 != (v18 * a3) >> 63)
            {
              goto LABEL_142;
            }

            v18 = v24 - (v20 + v21);
            if (__OFSUB__(v24, (v20 + v21)))
            {
              goto LABEL_142;
            }

            ++v19;
            if (!--v15)
            {
              goto LABEL_52;
            }
          }
        }

LABEL_73:
        v6 = 0;
LABEL_143:

        return v6;
      }

      goto LABEL_142;
    }

    __break(1u);
LABEL_146:
    __break(1u);
LABEL_147:
    __break(1u);
    goto LABEL_148;
  }

  v47 = HIBYTE(v7) & 0xF;
  v82 = v6;
  v83 = v7 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v47)
      {
        sub_24FF4C6DC();
        if (v72 ^ v73 | v71)
        {
          v75 = 65;
        }

        if (!(v72 ^ v73 | v71))
        {
          v76 = 58;
        }

        v77 = &v82;
        while (1)
        {
          v78 = *v77;
          if (v78 < 0x30 || v78 >= v76)
          {
            if (v78 < 0x41 || v78 >= v75)
            {
              sub_24FF4C9EC();
              if (!v23 || v78 >= v80)
              {
                goto LABEL_143;
              }

              v79 = -87;
            }

            else
            {
              v79 = -55;
            }
          }

          else
          {
            v79 = -48;
          }

          v81 = v52 * a3;
          if ((v52 * a3) >> 64 != (v52 * a3) >> 63)
          {
            goto LABEL_142;
          }

          v52 = v81 + (v78 + v79);
          if (__OFADD__(v81, (v78 + v79)))
          {
            goto LABEL_142;
          }

          v77 = (v77 + 1);
          if (!--v74)
          {
            goto LABEL_141;
          }
        }
      }

      goto LABEL_142;
    }

    if (v47)
    {
      if (v47 != 1)
      {
        sub_24FF4C6DC();
        if (v49 ^ v50 | v48)
        {
          v53 = 65;
        }

        if (!(v49 ^ v50 | v48))
        {
          v54 = 58;
        }

        v55 = &v82 + 1;
        while (1)
        {
          v56 = *v55;
          if (v56 < 0x30 || v56 >= v54)
          {
            if (v56 < 0x41 || v56 >= v53)
            {
              sub_24FF4C9EC();
              if (!v23 || v56 >= v58)
              {
                goto LABEL_143;
              }

              v57 = -87;
            }

            else
            {
              v57 = -55;
            }
          }

          else
          {
            v57 = -48;
          }

          v59 = v52 * a3;
          if ((v52 * a3) >> 64 != (v52 * a3) >> 63)
          {
            goto LABEL_142;
          }

          v52 = v59 - (v56 + v57);
          if (__OFSUB__(v59, (v56 + v57)))
          {
            goto LABEL_142;
          }

          ++v55;
          if (!--v51)
          {
            goto LABEL_141;
          }
        }
      }

      goto LABEL_142;
    }

    goto LABEL_146;
  }

  if (v47)
  {
    if (v47 != 1)
    {
      sub_24FF4C6DC();
      if (v61 ^ v62 | v60)
      {
        v64 = 65;
      }

      if (!(v61 ^ v62 | v60))
      {
        v65 = 58;
      }

      v66 = &v82 + 1;
      do
      {
        v67 = *v66;
        if (v67 < 0x30 || v67 >= v65)
        {
          if (v67 < 0x41 || v67 >= v64)
          {
            sub_24FF4C9EC();
            if (!v23 || v67 >= v69)
            {
              goto LABEL_143;
            }

            v68 = -87;
          }

          else
          {
            v68 = -55;
          }
        }

        else
        {
          v68 = -48;
        }

        v70 = v52 * a3;
        if ((v52 * a3) >> 64 != (v52 * a3) >> 63)
        {
          goto LABEL_142;
        }

        v52 = v70 + (v67 + v68);
        if (__OFADD__(v70, (v67 + v68)))
        {
          goto LABEL_142;
        }

        ++v66;
        --v63;
      }

      while (v63);
LABEL_141:
      v6 = v52;
      goto LABEL_143;
    }

    goto LABEL_142;
  }

LABEL_148:
  __break(1u);
  return result;
}
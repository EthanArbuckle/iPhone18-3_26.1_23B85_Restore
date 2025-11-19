void sub_225097194()
{
  v1 = v0[2];
  v2 = v0[3];
  v4 = v0[4];
  v3 = v0[5];
}

void sub_2250971A4()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
}

uint64_t sub_2250971B4(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);

  return sub_225095AFC(a1, a2, va);
}

uint64_t sub_2250971CC()
{
  v2 = *(v0 + 16);

  return swift_slowAlloc();
}

uint64_t sub_225097214()
{
  v2 = sub_2250B0DFC(&qword_27D719648, &qword_2254465B0);
  sub_225072D1C(v2);
  v4 = *(v3 + 64);
  sub_22507CA80();
  MEMORY[0x28223BE20](v5);
  sub_22507EDF4();
  sub_2250FBBFC();
  sub_2250974A8();
  sub_225095388();
  v6 = *v0;
  v7 = v0[1];
  sub_22508D030();
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v1)
  {
    v8 = type metadata accessor for PartialTrafficLog.RequestMetadata(0);
    v9 = v8[5];
    sub_2250958B0();
    type metadata accessor for Date();
    sub_225072CC4();
    sub_2250FA4F0(v10, v11);
    sub_22507D34C();
    v12 = v8[6];
    sub_2250FBBF0();
    type metadata accessor for URL();
    sub_225082680();
    sub_2250FA4F0(v13, v14);
    sub_22507D34C();
    v15 = (v0 + v8[7]);
    v16 = *v15;
    v17 = v15[1];
    sub_22508D030();
    KeyedEncodingContainer.encode(_:forKey:)();
    v25 = *(v0 + v8[8]);
    sub_2250B0DFC(&qword_27D719600, &qword_225446578);
    sub_22507E460(&qword_280D534F8);
    sub_22507D34C();
    v18 = (v0 + v8[9]);
    v19 = *v18;
    v20 = v18[1];
    sub_22508D030();
    KeyedEncodingContainer.encode(_:forKey:)();
    v21 = *(v0 + v8[10]);
    sub_22508D030();
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  v22 = sub_2250FBBAC();
  return v23(v22);
}

unint64_t sub_2250974A8()
{
  result = qword_280D53CE8;
  if (!qword_280D53CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D53CE8);
  }

  return result;
}

uint64_t sub_225097510(float a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  *v7 = a1;

  return sub_225095AFC(v8, v6, va);
}

uint64_t sub_225097530()
{
  v3 = *(v0 - 152);
  v2 = *(v0 - 144);

  return KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
}

unint64_t sub_225097558(char a1)
{
  result = 0x5574736575716572;
  switch(a1)
  {
    case 1:
      result = 1702125924;
      break;
    case 2:
      result = 7107189;
      break;
    case 3:
      result = 0x646F6874656DLL;
      break;
    case 4:
      result = 0x73726564616568;
      break;
    case 5:
      result = 0x4374736575716572;
      break;
    case 6:
      result = 0xD000000000000018;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_225097660()
{
  result = qword_280D53B10;
  if (!qword_280D53B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D53B10);
  }

  return result;
}

unint64_t sub_2250976B4()
{
  result = qword_280D53D30;
  if (!qword_280D53D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D53D30);
  }

  return result;
}

void sub_225097708()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  sub_225098224();
}

unint64_t sub_225097760()
{
  result = qword_280D53D48;
  if (!qword_280D53D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D53D48);
  }

  return result;
}

uint64_t sub_2250977B8(char a1)
{
  if (a1)
  {
    return 0x61447463656A626FLL;
  }

  else
  {
    return 0x5574736575716572;
  }
}

unint64_t sub_225097804()
{
  result = qword_280D54D50;
  if (!qword_280D54D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D54D50);
  }

  return result;
}

unint64_t sub_225097860()
{
  result = qword_280D53AC8;
  if (!qword_280D53AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D53AC8);
  }

  return result;
}

uint64_t sub_2250978B4()
{
  v2 = sub_2250B0DFC(&qword_27D719610, &qword_225446580);
  sub_225072D1C(v2);
  v4 = *(v3 + 64);
  sub_22507CA80();
  MEMORY[0x28223BE20](v5);
  sub_22507EDF4();
  sub_2250FBBFC();
  sub_225097A9C();
  sub_225095388();
  v6 = *v0;
  v7 = v0[1];
  sub_22508D030();
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v1)
  {
    v8 = type metadata accessor for PartialTrafficLog.ResponseMetadata(0);
    v9 = v8[5];
    sub_2250958B0();
    type metadata accessor for Date();
    sub_225072CC4();
    sub_2250FA4F0(v10, v11);
    sub_22507D34C();
    v12 = *(v0 + v8[6]);
    sub_2250FBBF0();
    sub_22508D030();
    KeyedEncodingContainer.encode(_:forKey:)();
    v16 = *(v0 + v8[7]);
    sub_2250B0DFC(&qword_27D719600, &qword_225446578);
    sub_22507E460(&qword_280D534F8);
    sub_22507D34C();
  }

  v13 = sub_2250FBBAC();
  return v14(v13);
}

unint64_t sub_225097A9C()
{
  result = qword_280D53C20[0];
  if (!qword_280D53C20[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280D53C20);
  }

  return result;
}

uint64_t sub_225097AF8(char a1)
{
  result = 0x5574736575716572;
  switch(a1)
  {
    case 1:
      result = 1702125924;
      break;
    case 2:
      result = 0x737574617473;
      break;
    case 3:
      result = 0x73726564616568;
      break;
    default:
      return result;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PartialTrafficLog.ResponseMetadata.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x225097C54);
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

uint64_t getEnumTagSinglePayload for PartialTrafficLog.ResponseMetadata.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFD)
  {
    if (a2 + 3 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 3) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 4;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v5 = v6 - 4;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

unint64_t sub_225097D04()
{
  result = qword_280D53AB0;
  if (!qword_280D53AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D53AB0);
  }

  return result;
}

unint64_t sub_225097D58()
{
  result = qword_280D53B38;
  if (!qword_280D53B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D53B38);
  }

  return result;
}

uint64_t sub_225097DC4(uint64_t a1)
{

  return MEMORY[0x282200510](v1, a1);
}

uint64_t sub_225097DE4()
{
  v2 = v0[18];
  result = v0[19];
  v4 = v0[14];
  v3 = v0[15];
  v6 = v0[12];
  v5 = v0[13];
  v8 = v0[10];
  v7 = v0[11];
  v9 = v0[8];
  v10 = v0[9];
  v11 = v0[5];
  return result;
}

void sub_225097E00()
{

  JUMPOUT(0x22AA62E50);
}

uint64_t sub_225097E20()
{
  result = v0;
  v3 = *(v1 - 128);
  return result;
}

unint64_t sub_225097E2C()
{
  result = qword_280D53B50;
  if (!qword_280D53B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D53B50);
  }

  return result;
}

uint64_t sub_225097E80(char a1)
{
  if (!a1)
  {
    return 0x5574736575716572;
  }

  if (a1 == 1)
  {
    return 0x74616D726F66;
  }

  return 0x436567617373656DLL;
}

unint64_t sub_225097EE4()
{
  result = qword_280D54D40;
  if (!qword_280D54D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D54D40);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PartialTrafficLog.ResponseConfiguration.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x225098004);
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

uint64_t _s17DataSecurityCheckC5ActorC5StateOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFE)
  {
    if (a2 + 2 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 2) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 3;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v5 = v6 - 3;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

unint64_t sub_225098104()
{
  result = qword_280D54D30;
  if (!qword_280D54D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D54D30);
  }

  return result;
}

unint64_t sub_225098158()
{
  result = qword_280D53AF8;
  if (!qword_280D53AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D53AF8);
  }

  return result;
}

void sub_2250981AC()
{
  v2 = v0[10];
  v1 = v0[11];
  v4 = v0[8];
  v3 = v0[9];
  v6 = v0[5];
  v5 = v0[6];
}

void sub_2250981BC()
{
}

void sub_225098224()
{
  sub_225094964();
  v3 = v2;
  v17 = v4;
  v18 = v5;
  v7 = v6;
  v10 = sub_2250B0DFC(v8, v9);
  sub_225072D1C(v10);
  v12 = v11;
  v14 = *(v13 + 64);
  sub_22507CA80();
  MEMORY[0x28223BE20](v15);
  sub_22507EDF4();
  v16 = v7[4];
  sub_225073BAC(v7, v7[3]);
  v3();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v0)
  {
    sub_22508D04C(v17, v18);
    sub_225097804();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_22508D128(v17, v18);
  }

  (*(v12 + 8))(v1, v10);
  sub_225095814();
}

uint64_t sub_225098394()
{
  v2 = sub_2250B0DFC(&qword_27D7195E8, &qword_225446568);
  sub_225072D1C(v2);
  v4 = *(v3 + 64);
  sub_22507CA80();
  MEMORY[0x28223BE20](v5);
  sub_22507EDF4();
  sub_2250FBBFC();
  sub_225097E2C();
  sub_225095388();
  v6 = *v0;
  v7 = v0[1];
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v1)
  {
    v13 = v0[2];
    sub_225097EE4();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v8 = v0[3];
    v9 = v0[4];
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  v10 = sub_2250FBBAC();
  return v11(v10);
}

unint64_t sub_225098510()
{
  result = qword_280D53D10;
  if (!qword_280D53D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D53D10);
  }

  return result;
}

void sub_225098564()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  sub_225098224();
}

unint64_t sub_2250985BC()
{
  result = qword_280D53D28;
  if (!qword_280D53D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D53D28);
  }

  return result;
}

uint64_t sub_225098690@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(a2 - 256) = result;
  v2 = *(result - 8);
  return result;
}

uint64_t sub_2250986A8()
{

  return swift_slowAlloc();
}

void sub_2250986D8(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

void sub_2250986F8(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0x16u);
}

uint64_t sub_225098718()
{
  v2 = v0[46];
  result = v0[47];
  v3 = v0[43];
  v4 = v0[40];
  v6 = v0[36];
  v5 = v0[37];
  v7 = v0[35];
  v9 = v0[31];
  v8 = v0[32];
  v10 = v0[30];
  v11 = v0[27];
  return result;
}

void sub_2250988F4(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 0xCu);
}

size_t sub_22509891C(size_t result, int64_t a2, char a3, uint64_t a4, uint64_t *a5, uint64_t *a6, void (*a7)(void), uint64_t (*a8)(void))
{
  v11 = result;
  if (a3)
  {
    v12 = *(a4 + 24);
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = *(a4 + 16);
  v15 = sub_225098A2C(v14, v13, a5, a6, a7);
  v16 = *(a8(0) - 8);
  if (v11)
  {
    v17 = (*(v16 + 80) + 32) & ~*(v16 + 80);
    sub_225098B20(a4 + v17, v14, v15 + v17, a7);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v15;
}

size_t sub_225098A2C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
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

  sub_2250B0DFC(a3, a4);
  v8 = a5(0);
  sub_22507D394(v8);
  v10 = *(v9 + 72);
  v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (v10)
  {
    if (result - v12 != 0x8000000000000000 || v10 != -1)
    {
      v13[2] = a1;
      v13[3] = 2 * ((result - v12) / v10);
      return v13;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_225098B20(unint64_t a1, uint64_t a2, unint64_t a3, void (*a4)(void))
{
  if (a3 < a1 || (v8 = (a4)(0), result = sub_225072BF0(v8), a1 + *(v10 + 72) * a2 <= a3))
  {
    a4(0);
    sub_2250974FC();

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (a3 != a1)
  {
    sub_2250974FC();

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t sub_225098BF8(uint64_t a1, void *a2, uint64_t a3)
{
  while (1)
  {
    v4 = objc_msgSend_position(a2, a2, a3);
    if (v4 >= objc_msgSend_length(a2, v5, v6) || (objc_msgSend_hasError(a2, v7, v8) & 1) != 0)
    {
      break;
    }

    v9 = 0;
    v10 = 0;
    v11 = 0;
    while (1)
    {
      v32 = 0;
      v12 = objc_msgSend_position(a2, v7, v8) + 1;
      if (v12 >= objc_msgSend_position(a2, v13, v14) && (v17 = objc_msgSend_position(a2, v15, v16) + 1, v17 <= objc_msgSend_length(a2, v18, v19)))
      {
        v20 = objc_msgSend_data(a2, v15, v16);
        v23 = objc_msgSend_position(a2, v21, v22);
        objc_msgSend_getBytes_range_(v20, v24, &v32, v23, 1);

        v27 = objc_msgSend_position(a2, v25, v26);
        objc_msgSend_setPosition_(a2, v28, v27 + 1);
      }

      else
      {
        objc_msgSend__setError(a2, v15, v16);
      }

      v11 |= (v32 & 0x7F) << v9;
      if ((v32 & 0x80) == 0)
      {
        break;
      }

      v9 += 7;
      if (v10++ >= 9)
      {
        v30 = 0;
        goto LABEL_15;
      }
    }

    v30 = objc_msgSend_hasError(a2, v7, v8) ? 0 : v11;
LABEL_15:
    if (objc_msgSend_hasError(a2, v7, v8))
    {
      break;
    }

    v8 = v30 & 7;
    if (v8 == 4)
    {
      break;
    }

    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      return 0;
    }
  }

  return objc_msgSend_hasError(a2, v7, v8) ^ 1;
}

void sub_225098D8C(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v9 = objc_msgSend_subscriptionsByServerID(WeakRetained, v7, v8);
  v11 = objc_msgSend_objectForKeyedSubscript_(v9, v10, v6);

  if (v11)
  {
    objc_msgSend__handleSubscriptionSaved_responseCode_(WeakRetained, v12, v6, v5);
  }

  else
  {
    objc_msgSend__handleSubscriptionDeleted_responseCode_(WeakRetained, v12, v6, v5);
  }
}

void sub_225099148(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  objc_sync_exit(v17);
  _Block_object_dispose(&a17, 8);
  _Block_object_dispose((v18 - 96), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_225099480(uint64_t a1, const char *a2, uint64_t a3)
{
  v47 = *MEMORY[0x277D85DE8];
  if (objc_msgSend_checkoutCount(*(a1 + 32), a2, a3) <= 0)
  {
    __assert_rtn("[CKDMMCS drop]_block_invoke", "CKDMMCS.m", 129, "self.checkoutCount > 0");
  }

  v6 = *(a1 + 32);
  v7 = objc_msgSend_checkoutCount(v6, v4, v5);
  objc_msgSend_setCheckoutCount_(v6, v8, v7 - 1);
  result = objc_msgSend_checkoutCount(*(a1 + 32), v9, v10);
  if (!result)
  {
    *(*(*(a1 + 48) + 8) + 24) = 1;
    v14 = *(a1 + 32);
    v15 = objc_msgSend_sharedWrappersByPath(CKDMMCS, v12, v13);
    v18 = objc_msgSend_path(*(a1 + 32), v16, v17);
    v20 = objc_msgSend_objectForKey_(v15, v19, v18);

    if (v14 == v20)
    {
      v34 = objc_msgSend_sharedWrappersByPath(CKDMMCS, v21, v22);
      v37 = objc_msgSend_path(*(a1 + 32), v35, v36);
      objc_msgSend_removeObjectForKey_(v34, v38, v37);
    }

    else
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v23 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
      {
        v26 = *(a1 + 32);
        v27 = v23;
        v30 = objc_msgSend_path(v26, v28, v29);
        v33 = objc_msgSend_CKSanitizedPath(v30, v31, v32);
        v43 = 138412546;
        v44 = v26;
        v45 = 2114;
        v46 = v33;
        _os_log_error_impl(&dword_22506F000, v27, OS_LOG_TYPE_ERROR, "%@ not in the sharedWrappers map at key %{public}@", &v43, 0x16u);
      }
    }

    objc_msgSend_drop(*(*(a1 + 32) + 40), v24, v25);
    v39 = *(a1 + 32);
    v40 = *(v39 + 40);
    *(v39 + 40) = 0;

    result = objc_msgSend_tearDownMMCSEngineWithContext_(CKDMMCSEngineContext, v41, *(a1 + 40));
    *(*(*(a1 + 56) + 8) + 24) = result;
  }

  v42 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2250996C8(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend__sharedCachesQueue(CKDAssetCache, a2, a3);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2250997FC;
  block[3] = &unk_278545A00;
  block[4] = *(a1 + 32);
  dispatch_sync(v4, block);
}

void sub_2250997FC(uint64_t a1, const char *a2, uint64_t a3)
{
  v42 = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_checkoutCount(*(a1 + 32), a2, a3);
  if (v4 <= 0)
  {
    __assert_rtn("[CKDAssetCache drop]_block_invoke_2", "CKDAssetCache.m", 472, "checkoutCount > 0");
  }

  v6 = v4;
  objc_msgSend_setCheckoutCount_(*(a1 + 32), v5, v4 - 1);
  if (v6 == 1)
  {
    objc_msgSend_setDidDrop_(*(a1 + 32), v7, 1);
    v8 = MEMORY[0x277CBC880];
    v9 = MEMORY[0x277CBC878];
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v10 = MEMORY[0x277CBC828];
    v11 = *MEMORY[0x277CBC828];
    if (os_log_type_enabled(*MEMORY[0x277CBC828], OS_LOG_TYPE_DEBUG))
    {
      v38 = *(a1 + 32);
      v40 = 138412290;
      v41 = v38;
      _os_log_debug_impl(&dword_22506F000, v11, OS_LOG_TYPE_DEBUG, "Did drop: %@", &v40, 0xCu);
    }

    v14 = objc_msgSend_directoryContext(*(a1 + 32), v12, v13);
    v17 = objc_msgSend_containerCloudKitDirectory(v14, v15, v16);

    v18 = *(a1 + 32);
    v21 = objc_msgSend__sharedCachesByDirectory(CKDAssetCache, v19, v20);
    v23 = objc_msgSend_objectForKey_(v21, v22, v17);

    v24 = *v9;
    v25 = *v8;
    if (v18 == v23)
    {
      if (v25 != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], v24);
      }

      v28 = *v10;
      if (os_log_type_enabled(*v10, OS_LOG_TYPE_DEBUG))
      {
        v39 = *(a1 + 32);
        v40 = 138412290;
        v41 = v39;
        _os_log_debug_impl(&dword_22506F000, v28, OS_LOG_TYPE_DEBUG, "Removing from sharedCache map: %@", &v40, 0xCu);
      }

      v31 = objc_msgSend__sharedCachesByDirectory(CKDAssetCache, v29, v30);
      objc_msgSend_removeObjectForKey_(v31, v32, v17);

      v33 = *(a1 + 32);
      v34 = *(v33 + 40);
      *(v33 + 40) = 0;

      v35 = *(a1 + 32);
      v36 = *(v35 + 48);
      *(v35 + 48) = 0;
    }

    else
    {
      if (v25 != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], v24);
      }

      v26 = *v10;
      if (os_log_type_enabled(*v10, OS_LOG_TYPE_ERROR))
      {
        v27 = *(a1 + 32);
        v40 = 138412290;
        v41 = v27;
        _os_log_error_impl(&dword_22506F000, v26, OS_LOG_TYPE_ERROR, "Not in the sharedCache map: %@", &v40, 0xCu);
      }
    }
  }

  v37 = *MEMORY[0x277D85DE8];
}

uint64_t sub_225099D10(uint64_t a1, const char *a2, uint64_t a3)
{
  objc_msgSend_MMCSEngine(*(a1 + 32), a2, a3);
  MMCSEngineDestroy();
  v5 = *(a1 + 32);

  return objc_msgSend_setMMCSEngine_(v5, v4, 0);
}

void sub_225099E0C(uint64_t a1, const char *a2, uint64_t a3)
{
  v18 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    objc_msgSend_assertLocked(*(a1 + 88), a2, a3);
    if (!*(a1 + 64))
    {
      if (*(a1 + 8) == 1)
      {
        v4 = objc_autoreleasePoolPush();
        if (*(a1 + 72))
        {
          if (*MEMORY[0x277CBC880] != -1)
          {
            dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
          }

          v5 = *MEMORY[0x277CBC830];
          if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
          {
            v11 = *(a1 + 72);
            v12 = v5;
            v15 = objc_msgSend_ckShortDescription(v11, v13, v14);
            v16 = 138412290;
            v17 = v15;
            _os_log_debug_impl(&dword_22506F000, v12, OS_LOG_TYPE_DEBUG, "Discarding container: %@", &v16, 0xCu);
          }

          v6 = *(a1 + 72);
          *(a1 + 72) = 0;
        }

        objc_autoreleasePoolPop(v4);
      }

      v7 = sub_225099FA8(a1);
      objc_msgSend_discardContentIfPossible(v7, v8, v9);
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

id sub_225099FA8(void *a1)
{
  if (a1)
  {
    v1 = a1;
    objc_sync_enter(v1);
    WeakRetained = objc_loadWeakRetained(v1 + 2);
    objc_sync_exit(v1);
  }

  else
  {
    WeakRetained = 0;
  }

  return WeakRetained;
}

uint64_t sub_22509B4D4(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = objc_msgSend_position(a2, a2, a3);
  if (v5 < objc_msgSend_length(a2, v6, v7))
  {
    do
    {
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v10 = 0;
      v11 = 0;
      v12 = 0;
      while (1)
      {
        LOBYTE(v62) = 0;
        v13 = objc_msgSend_position(a2, v8, v9, v62) + 1;
        if (v13 >= objc_msgSend_position(a2, v14, v15) && (v18 = objc_msgSend_position(a2, v16, v17) + 1, v18 <= objc_msgSend_length(a2, v19, v20)))
        {
          v21 = objc_msgSend_data(a2, v16, v17);
          v24 = objc_msgSend_position(a2, v22, v23);
          objc_msgSend_getBytes_range_(v21, v25, &v62, v24, 1);

          v28 = objc_msgSend_position(a2, v26, v27);
          objc_msgSend_setPosition_(a2, v29, v28 + 1);
        }

        else
        {
          objc_msgSend__setError(a2, v16, v17);
        }

        v12 |= (v62 & 0x7F) << v10;
        if ((v62 & 0x80) == 0)
        {
          break;
        }

        v10 += 7;
        v30 = v11++ >= 9;
        if (v30)
        {
          v31 = 0;
          goto LABEL_15;
        }
      }

      v31 = objc_msgSend_hasError(a2, v8, v9) ? 0 : v12;
LABEL_15:
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v9 = v31 & 7;
      if (v9 == 4)
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v32 = (v31 >> 3);
      if ((v31 >> 3) > 2)
      {
        if (v32 == 3)
        {
          v37 = 0;
          v38 = 0;
          v39 = 0;
          *(a1 + 36) |= 1u;
          while (1)
          {
            LOBYTE(v62) = 0;
            v40 = objc_msgSend_position(a2, v32, v9, v62) + 1;
            if (v40 >= objc_msgSend_position(a2, v41, v42) && (v45 = objc_msgSend_position(a2, v43, v44) + 1, v45 <= objc_msgSend_length(a2, v46, v47)))
            {
              v48 = objc_msgSend_data(a2, v43, v44);
              v51 = objc_msgSend_position(a2, v49, v50);
              objc_msgSend_getBytes_range_(v48, v52, &v62, v51, 1);

              v55 = objc_msgSend_position(a2, v53, v54);
              objc_msgSend_setPosition_(a2, v56, v55 + 1);
            }

            else
            {
              objc_msgSend__setError(a2, v43, v44);
            }

            v39 |= (v62 & 0x7F) << v37;
            if ((v62 & 0x80) == 0)
            {
              break;
            }

            v37 += 7;
            v30 = v38++ >= 9;
            if (v30)
            {
              v57 = 0;
              goto LABEL_43;
            }
          }

          if (objc_msgSend_hasError(a2, v32, v9))
          {
            v57 = 0;
          }

          else
          {
            v57 = v39;
          }

LABEL_43:
          *(a1 + 32) = v57;
          goto LABEL_44;
        }

        if (v32 == 4)
        {
          v35 = objc_alloc_init(CKDPRecord);
          objc_storeStrong((a1 + 24), v35);
          v62 = 0;
          v63 = 0;
          if (!PBReaderPlaceMark() || !CKDPRecordReadFrom(v35, a2, v36))
          {
LABEL_46:

            return 0;
          }

          goto LABEL_30;
        }
      }

      else
      {
        if (v32 == 1)
        {
          v35 = objc_alloc_init(MEMORY[0x277CBC268]);
          objc_storeStrong((a1 + 16), v35);
          v62 = 0;
          v63 = 0;
          if (!PBReaderPlaceMark() || !CKDPRecordIdentifierReadFrom())
          {
            goto LABEL_46;
          }

LABEL_30:
          PBReaderRecallMark();

          goto LABEL_44;
        }

        if (v32 == 2)
        {
          v33 = PBReaderReadString();
          v34 = *(a1 + 8);
          *(a1 + 8) = v33;

          goto LABEL_44;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_44:
      v58 = objc_msgSend_position(a2, v32, v9);
    }

    while (v58 < objc_msgSend_length(a2, v59, v60));
  }

  return objc_msgSend_hasError(a2, v8, v9) ^ 1;
}

uint64_t CKDPRecordTypeReadFrom(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = objc_msgSend_position(a2, a2, a3);
  if (v5 < objc_msgSend_length(a2, v6, v7))
  {
    do
    {
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        break;
      }

      v10 = 0;
      v11 = 0;
      v12 = 0;
      while (1)
      {
        v40 = 0;
        v13 = objc_msgSend_position(a2, v8, v9) + 1;
        if (v13 >= objc_msgSend_position(a2, v14, v15) && (v18 = objc_msgSend_position(a2, v16, v17) + 1, v18 <= objc_msgSend_length(a2, v19, v20)))
        {
          v21 = objc_msgSend_data(a2, v16, v17);
          v24 = objc_msgSend_position(a2, v22, v23);
          objc_msgSend_getBytes_range_(v21, v25, &v40, v24, 1);

          v28 = objc_msgSend_position(a2, v26, v27);
          objc_msgSend_setPosition_(a2, v29, v28 + 1);
        }

        else
        {
          objc_msgSend__setError(a2, v16, v17);
        }

        v12 |= (v40 & 0x7F) << v10;
        if ((v40 & 0x80) == 0)
        {
          break;
        }

        v10 += 7;
        if (v11++ >= 9)
        {
          v31 = 0;
          goto LABEL_15;
        }
      }

      v31 = objc_msgSend_hasError(a2, v8, v9) ? 0 : v12;
LABEL_15:
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        break;
      }

      v9 = v31 & 7;
      if (v9 == 4)
      {
        break;
      }

      if ((v31 >> 3) == 1)
      {
        v32 = PBReaderReadString();
        v33 = *(a1 + 8);
        *(a1 + 8) = v32;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v37 = objc_msgSend_position(a2, v34, v35);
    }

    while (v37 < objc_msgSend_length(a2, v38, v39));
  }

  return objc_msgSend_hasError(a2, v8, v9) ^ 1;
}

uint64_t CKDPRecordFieldReadFrom(id *a1, void *a2, uint64_t a3)
{
  v5 = objc_msgSend_position(a2, a2, a3);
  if (v5 < objc_msgSend_length(a2, v6, v7))
  {
    while (1)
    {
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v10 = 0;
      v11 = 0;
      v12 = 0;
      while (1)
      {
        LOBYTE(v44) = 0;
        v13 = objc_msgSend_position(a2, v8, v9, v44) + 1;
        if (v13 >= objc_msgSend_position(a2, v14, v15) && (v18 = objc_msgSend_position(a2, v16, v17) + 1, v18 <= objc_msgSend_length(a2, v19, v20)))
        {
          v21 = objc_msgSend_data(a2, v16, v17);
          v24 = objc_msgSend_position(a2, v22, v23);
          objc_msgSend_getBytes_range_(v21, v25, &v44, v24, 1);

          v28 = objc_msgSend_position(a2, v26, v27);
          objc_msgSend_setPosition_(a2, v29, v28 + 1);
        }

        else
        {
          objc_msgSend__setError(a2, v16, v17);
        }

        v12 |= (v44 & 0x7F) << v10;
        if ((v44 & 0x80) == 0)
        {
          break;
        }

        v10 += 7;
        if (v11++ >= 9)
        {
          v31 = 0;
          goto LABEL_15;
        }
      }

      v31 = objc_msgSend_hasError(a2, v8, v9) ? 0 : v12;
LABEL_15:
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v9 = v31 & 7;
      if (v9 == 4)
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v32 = v31 >> 3;
      if ((v31 >> 3) == 3)
      {
        v33 = objc_alloc_init(CKDPFieldAction);
        objc_msgSend_addAction_(a1, v36, v33);
        v44 = 0;
        v45 = 0;
        if (!PBReaderPlaceMark() || !sub_2252F263C(&v33->super.super.isa, a2, v37))
        {
LABEL_32:

          return 0;
        }

        goto LABEL_28;
      }

      if (v32 == 2)
      {
        break;
      }

      if (v32 == 1)
      {
        v33 = objc_alloc_init(CKDPRecordFieldIdentifier);
        objc_storeStrong(a1 + 2, v33);
        v44 = 0;
        v45 = 0;
        if (!PBReaderPlaceMark() || !CKDPRecordFieldIdentifierReadFrom(v33, a2, v34))
        {
          goto LABEL_32;
        }

LABEL_28:
        PBReaderRecallMark();

        goto LABEL_30;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_30:
      v40 = objc_msgSend_position(a2, v38, v39);
      if (v40 >= objc_msgSend_length(a2, v41, v42))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }
    }

    v33 = objc_alloc_init(CKDPRecordFieldValue);
    objc_storeStrong(a1 + 3, v33);
    v44 = 0;
    v45 = 0;
    if (!PBReaderPlaceMark() || !CKDPRecordFieldValueReadFrom(v33, a2, v35))
    {
      goto LABEL_32;
    }

    goto LABEL_28;
  }

  return objc_msgSend_hasError(a2, v8, v9) ^ 1;
}

uint64_t CKDPRecordFieldIdentifierReadFrom(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = objc_msgSend_position(a2, a2, a3);
  if (v5 < objc_msgSend_length(a2, v6, v7))
  {
    do
    {
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        break;
      }

      v10 = 0;
      v11 = 0;
      v12 = 0;
      while (1)
      {
        v40 = 0;
        v13 = objc_msgSend_position(a2, v8, v9) + 1;
        if (v13 >= objc_msgSend_position(a2, v14, v15) && (v18 = objc_msgSend_position(a2, v16, v17) + 1, v18 <= objc_msgSend_length(a2, v19, v20)))
        {
          v21 = objc_msgSend_data(a2, v16, v17);
          v24 = objc_msgSend_position(a2, v22, v23);
          objc_msgSend_getBytes_range_(v21, v25, &v40, v24, 1);

          v28 = objc_msgSend_position(a2, v26, v27);
          objc_msgSend_setPosition_(a2, v29, v28 + 1);
        }

        else
        {
          objc_msgSend__setError(a2, v16, v17);
        }

        v12 |= (v40 & 0x7F) << v10;
        if ((v40 & 0x80) == 0)
        {
          break;
        }

        v10 += 7;
        if (v11++ >= 9)
        {
          v31 = 0;
          goto LABEL_15;
        }
      }

      v31 = objc_msgSend_hasError(a2, v8, v9) ? 0 : v12;
LABEL_15:
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        break;
      }

      v9 = v31 & 7;
      if (v9 == 4)
      {
        break;
      }

      if ((v31 >> 3) == 1)
      {
        v32 = PBReaderReadString();
        v33 = *(a1 + 8);
        *(a1 + 8) = v32;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v37 = objc_msgSend_position(a2, v34, v35);
    }

    while (v37 < objc_msgSend_length(a2, v38, v39));
  }

  return objc_msgSend_hasError(a2, v8, v9) ^ 1;
}

uint64_t CKDPRecordFieldValueReadFrom(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = objc_msgSend_position(a2, a2, a3);
  if (v5 >= objc_msgSend_length(a2, v6, v7))
  {
    return objc_msgSend_hasError(a2, v8, v9) ^ 1;
  }

  while (2)
  {
    if (objc_msgSend_hasError(a2, v8, v9))
    {
      return objc_msgSend_hasError(a2, v8, v9) ^ 1;
    }

    v10 = 0;
    v11 = 0;
    v12 = 0;
    while (1)
    {
      LOBYTE(v128) = 0;
      v13 = objc_msgSend_position(a2, v8, v9, v128) + 1;
      if (v13 >= objc_msgSend_position(a2, v14, v15) && (v18 = objc_msgSend_position(a2, v16, v17) + 1, v18 <= objc_msgSend_length(a2, v19, v20)))
      {
        v21 = objc_msgSend_data(a2, v16, v17);
        v24 = objc_msgSend_position(a2, v22, v23);
        objc_msgSend_getBytes_range_(v21, v25, &v128, v24, 1);

        v28 = objc_msgSend_position(a2, v26, v27);
        objc_msgSend_setPosition_(a2, v29, v28 + 1);
      }

      else
      {
        objc_msgSend__setError(a2, v16, v17);
      }

      v12 |= (v128 & 0x7F) << v10;
      if ((v128 & 0x80) == 0)
      {
        break;
      }

      v10 += 7;
      v30 = v11++ >= 9;
      if (v30)
      {
        v31 = 0;
        goto LABEL_15;
      }
    }

    v31 = objc_msgSend_hasError(a2, v8, v9) ? 0 : v12;
LABEL_15:
    if (objc_msgSend_hasError(a2, v8, v9))
    {
      return objc_msgSend_hasError(a2, v8, v9) ^ 1;
    }

    v9 = v31 & 7;
    if (v9 == 4)
    {
      return objc_msgSend_hasError(a2, v8, v9) ^ 1;
    }

    v32 = (v31 >> 3);
    switch((v31 >> 3))
    {
      case 1u:
        v33 = 0;
        v34 = 0;
        v35 = 0;
        *(a1 + 128) |= 4u;
        while (1)
        {
          LOBYTE(v128) = 0;
          v36 = objc_msgSend_position(a2, v32, v9, v128) + 1;
          if (v36 >= objc_msgSend_position(a2, v37, v38) && (v41 = objc_msgSend_position(a2, v39, v40) + 1, v41 <= objc_msgSend_length(a2, v42, v43)))
          {
            v44 = objc_msgSend_data(a2, v39, v40);
            v47 = objc_msgSend_position(a2, v45, v46);
            objc_msgSend_getBytes_range_(v44, v48, &v128, v47, 1);

            v51 = objc_msgSend_position(a2, v49, v50);
            objc_msgSend_setPosition_(a2, v52, v51 + 1);
          }

          else
          {
            objc_msgSend__setError(a2, v39, v40);
          }

          v35 |= (v128 & 0x7F) << v33;
          if ((v128 & 0x80) == 0)
          {
            break;
          }

          v33 += 7;
          v30 = v34++ >= 9;
          if (v30)
          {
            v53 = 0;
LABEL_94:
            *(a1 + 120) = v53;
            goto LABEL_81;
          }
        }

        if (objc_msgSend_hasError(a2, v32, v9))
        {
          v53 = 0;
        }

        else
        {
          v53 = v35;
        }

        goto LABEL_94;
      case 2u:
        v79 = PBReaderReadData();
        v80 = 40;
        goto LABEL_56;
      case 4u:
        v58 = 0;
        v59 = 0;
        v60 = 0;
        *(a1 + 128) |= 2u;
        while (1)
        {
          LOBYTE(v128) = 0;
          v61 = objc_msgSend_position(a2, v32, v9, v128) + 1;
          if (v61 >= objc_msgSend_position(a2, v62, v63) && (v66 = objc_msgSend_position(a2, v64, v65) + 1, v66 <= objc_msgSend_length(a2, v67, v68)))
          {
            v69 = objc_msgSend_data(a2, v64, v65);
            v72 = objc_msgSend_position(a2, v70, v71);
            objc_msgSend_getBytes_range_(v69, v73, &v128, v72, 1);

            v76 = objc_msgSend_position(a2, v74, v75);
            objc_msgSend_setPosition_(a2, v77, v76 + 1);
          }

          else
          {
            objc_msgSend__setError(a2, v64, v65);
          }

          v60 |= (v128 & 0x7F) << v58;
          if ((v128 & 0x80) == 0)
          {
            break;
          }

          v58 += 7;
          v30 = v59++ >= 9;
          if (v30)
          {
            v78 = 0;
            goto LABEL_88;
          }
        }

        if (objc_msgSend_hasError(a2, v32, v9))
        {
          v78 = 0;
        }

        else
        {
          v78 = v60;
        }

LABEL_88:
        *(a1 + 16) = v78;
        goto LABEL_81;
      case 5u:
        *(a1 + 128) |= 1u;
        v128 = 0;
        v105 = objc_msgSend_position(a2, v32, v9) + 8;
        if (v105 >= objc_msgSend_position(a2, v106, v107) && (v110 = objc_msgSend_position(a2, v108, v109) + 8, v110 <= objc_msgSend_length(a2, v111, v112)))
        {
          v118 = objc_msgSend_data(a2, v108, v109);
          v121 = objc_msgSend_position(a2, v119, v120);
          objc_msgSend_getBytes_range_(v118, v122, &v128, v121, 8);

          v125 = objc_msgSend_position(a2, v123, v124);
          objc_msgSend_setPosition_(a2, v126, v125 + 8);
        }

        else
        {
          objc_msgSend__setError(a2, v108, v109);
        }

        *(a1 + 8) = v128;
        goto LABEL_81;
      case 6u:
        v54 = objc_alloc_init(MEMORY[0x277CBC240]);
        objc_storeStrong((a1 + 48), v54);
        v128 = 0;
        v129 = 0;
        if (!PBReaderPlaceMark() || !CKDPDateReadFrom())
        {
          goto LABEL_98;
        }

        goto LABEL_80;
      case 7u:
        v79 = PBReaderReadString();
        v80 = 112;
LABEL_56:
        v102 = *(a1 + v80);
        *(a1 + v80) = v79;

        goto LABEL_81;
      case 8u:
        v54 = objc_alloc_init(MEMORY[0x277CBC258]);
        objc_storeStrong((a1 + 72), v54);
        v128 = 0;
        v129 = 0;
        if (!PBReaderPlaceMark() || !CKDPLocationCoordinateReadFrom())
        {
          goto LABEL_98;
        }

        goto LABEL_80;
      case 9u:
        v54 = objc_alloc_init(MEMORY[0x277CBC270]);
        objc_storeStrong((a1 + 96), v54);
        v128 = 0;
        v129 = 0;
        if (!PBReaderPlaceMark() || !CKDPRecordReferenceReadFrom())
        {
          goto LABEL_98;
        }

        goto LABEL_80;
      case 0xAu:
        v54 = objc_alloc_init(CKDPAsset);
        objc_storeStrong((a1 + 32), v54);
        v128 = 0;
        v129 = 0;
        if (PBReaderPlaceMark() && CKDPAssetReadFrom(v54, a2, v114))
        {
          goto LABEL_80;
        }

        goto LABEL_98;
      case 0xBu:
        v54 = objc_alloc_init(CKDPRecordFieldValue);
        objc_msgSend_addListValue_(a1, v113, v54);
        v128 = 0;
        v129 = 0;
        if (!PBReaderPlaceMark() || !CKDPRecordFieldValueReadFrom(v54, a2))
        {
          goto LABEL_98;
        }

        goto LABEL_80;
      case 0xCu:
        v54 = objc_alloc_init(CKDPPackage);
        objc_storeStrong((a1 + 88), v54);
        v128 = 0;
        v129 = 0;
        if (!PBReaderPlaceMark() || !sub_225309318(&v54->super.super.isa, a2, v56))
        {
          goto LABEL_98;
        }

        goto LABEL_80;
      case 0xDu:
        v81 = 0;
        v82 = 0;
        v83 = 0;
        *(a1 + 128) |= 8u;
        while (1)
        {
          LOBYTE(v128) = 0;
          v84 = objc_msgSend_position(a2, v32, v9, v128) + 1;
          if (v84 >= objc_msgSend_position(a2, v85, v86) && (v89 = objc_msgSend_position(a2, v87, v88) + 1, v89 <= objc_msgSend_length(a2, v90, v91)))
          {
            v92 = objc_msgSend_data(a2, v87, v88);
            v95 = objc_msgSend_position(a2, v93, v94);
            objc_msgSend_getBytes_range_(v92, v96, &v128, v95, 1);

            v99 = objc_msgSend_position(a2, v97, v98);
            objc_msgSend_setPosition_(a2, v100, v99 + 1);
          }

          else
          {
            objc_msgSend__setError(a2, v87, v88);
          }

          v83 |= (v128 & 0x7F) << v81;
          if ((v128 & 0x80) == 0)
          {
            break;
          }

          v81 += 7;
          v30 = v82++ >= 9;
          if (v30)
          {
            LOBYTE(v101) = 0;
            goto LABEL_90;
          }
        }

        v101 = (v83 != 0) & ~objc_msgSend_hasError(a2, v32, v9);
LABEL_90:
        *(a1 + 124) = v101;
        goto LABEL_81;
      case 0xEu:
        v54 = objc_alloc_init(CKDPFieldCryptoFeatureSet);
        objc_storeStrong((a1 + 24), v54);
        v128 = 0;
        v129 = 0;
        if (!PBReaderPlaceMark() || !sub_2252F5068(v54, a2, v57))
        {
          goto LABEL_98;
        }

        goto LABEL_80;
      case 0x11u:
        v54 = objc_alloc_init(CKDPStreamingAsset);
        objc_storeStrong((a1 + 104), v54);
        v128 = 0;
        v129 = 0;
        if (!PBReaderPlaceMark() || !sub_225362FFC(&v54->super.super.isa, a2, v55))
        {
          goto LABEL_98;
        }

        goto LABEL_80;
      case 0x14u:
        v54 = objc_alloc_init(CKDPMergeableValue);
        objc_storeStrong((a1 + 80), v54);
        v128 = 0;
        v129 = 0;
        if (!PBReaderPlaceMark() || !CKDPMergeableValueReadFrom(v54, a2, v103))
        {
          goto LABEL_98;
        }

        goto LABEL_80;
      case 0x15u:
        v54 = objc_alloc_init(CKDPEncryptedMergeableValue);
        objc_storeStrong((a1 + 56), v54);
        v128 = 0;
        v129 = 0;
        if (PBReaderPlaceMark() && CKDPEncryptedMergeableValueReadFrom(v54, a2, v104))
        {
LABEL_80:
          PBReaderRecallMark();

LABEL_81:
          v115 = objc_msgSend_position(a2, v32, v9);
          if (v115 >= objc_msgSend_length(a2, v116, v117))
          {
            return objc_msgSend_hasError(a2, v8, v9) ^ 1;
          }

          continue;
        }

LABEL_98:

        return 0;
      default:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }

        goto LABEL_81;
    }
  }
}

uint64_t CKDPProtectionInfoReadFrom(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = objc_msgSend_position(a2, a2, a3);
  if (v5 < objc_msgSend_length(a2, v6, v7))
  {
    while (1)
    {
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v10 = 0;
      v11 = 0;
      v12 = 0;
      while (1)
      {
        v42 = 0;
        v13 = objc_msgSend_position(a2, v8, v9) + 1;
        if (v13 >= objc_msgSend_position(a2, v14, v15) && (v18 = objc_msgSend_position(a2, v16, v17) + 1, v18 <= objc_msgSend_length(a2, v19, v20)))
        {
          v21 = objc_msgSend_data(a2, v16, v17);
          v24 = objc_msgSend_position(a2, v22, v23);
          objc_msgSend_getBytes_range_(v21, v25, &v42, v24, 1);

          v28 = objc_msgSend_position(a2, v26, v27);
          objc_msgSend_setPosition_(a2, v29, v28 + 1);
        }

        else
        {
          objc_msgSend__setError(a2, v16, v17);
        }

        v12 |= (v42 & 0x7F) << v10;
        if ((v42 & 0x80) == 0)
        {
          break;
        }

        v10 += 7;
        if (v11++ >= 9)
        {
          v31 = 0;
          goto LABEL_15;
        }
      }

      v31 = objc_msgSend_hasError(a2, v8, v9) ? 0 : v12;
LABEL_15:
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v9 = v31 & 7;
      if (v9 == 4)
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      if ((v31 >> 3) == 2)
      {
        break;
      }

      if ((v31 >> 3) == 1)
      {
        v32 = PBReaderReadData();
        v33 = &OBJC_IVAR___CKDPProtectionInfo__protectionInfo;
LABEL_21:
        v34 = *v33;
        v35 = *(a1 + v34);
        *(a1 + v34) = v32;

        goto LABEL_23;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_23:
      v38 = objc_msgSend_position(a2, v36, v37);
      if (v38 >= objc_msgSend_length(a2, v39, v40))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }
    }

    v32 = PBReaderReadString();
    v33 = &OBJC_IVAR___CKDPProtectionInfo__protectionInfoTag;
    goto LABEL_21;
  }

  return objc_msgSend_hasError(a2, v8, v9) ^ 1;
}

uint64_t CKDPAssetReadFrom(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = objc_msgSend_position(a2, a2, a3);
  if (v5 >= objc_msgSend_length(a2, v6, v7))
  {
    return objc_msgSend_hasError(a2, v8, v9) ^ 1;
  }

  while (2)
  {
    if (objc_msgSend_hasError(a2, v8, v9))
    {
      return objc_msgSend_hasError(a2, v8, v9) ^ 1;
    }

    v10 = 0;
    v11 = 0;
    v12 = 0;
    while (1)
    {
      LOBYTE(v144) = 0;
      v13 = objc_msgSend_position(a2, v8, v9, v144) + 1;
      if (v13 >= objc_msgSend_position(a2, v14, v15) && (v18 = objc_msgSend_position(a2, v16, v17) + 1, v18 <= objc_msgSend_length(a2, v19, v20)))
      {
        v21 = objc_msgSend_data(a2, v16, v17);
        v24 = objc_msgSend_position(a2, v22, v23);
        objc_msgSend_getBytes_range_(v21, v25, &v144, v24, 1);

        v28 = objc_msgSend_position(a2, v26, v27);
        objc_msgSend_setPosition_(a2, v29, v28 + 1);
      }

      else
      {
        objc_msgSend__setError(a2, v16, v17);
      }

      v12 |= (v144 & 0x7F) << v10;
      if ((v144 & 0x80) == 0)
      {
        break;
      }

      v10 += 7;
      v30 = v11++ >= 9;
      if (v30)
      {
        v31 = 0;
        goto LABEL_15;
      }
    }

    v31 = objc_msgSend_hasError(a2, v8, v9) ? 0 : v12;
LABEL_15:
    if (objc_msgSend_hasError(a2, v8, v9))
    {
      return objc_msgSend_hasError(a2, v8, v9) ^ 1;
    }

    v9 = v31 & 7;
    if (v9 == 4)
    {
      return objc_msgSend_hasError(a2, v8, v9) ^ 1;
    }

    v32 = (v31 >> 3);
    switch((v31 >> 3))
    {
      case 1u:
        v33 = PBReaderReadString();
        v34 = 112;
        goto LABEL_84;
      case 2u:
        v33 = PBReaderReadData();
        v34 = 152;
        goto LABEL_84;
      case 4u:
        v96 = 0;
        v97 = 0;
        v98 = 0;
        *(a1 + 168) |= 0x10u;
        while (1)
        {
          LOBYTE(v144) = 0;
          v99 = objc_msgSend_position(a2, v32, v9, v144) + 1;
          if (v99 >= objc_msgSend_position(a2, v100, v101) && (v104 = objc_msgSend_position(a2, v102, v103) + 1, v104 <= objc_msgSend_length(a2, v105, v106)))
          {
            v107 = objc_msgSend_data(a2, v102, v103);
            v110 = objc_msgSend_position(a2, v108, v109);
            objc_msgSend_getBytes_range_(v107, v111, &v144, v110, 1);

            v114 = objc_msgSend_position(a2, v112, v113);
            objc_msgSend_setPosition_(a2, v115, v114 + 1);
          }

          else
          {
            objc_msgSend__setError(a2, v102, v103);
          }

          v98 |= (v144 & 0x7F) << v96;
          if ((v144 & 0x80) == 0)
          {
            break;
          }

          v96 += 7;
          v30 = v97++ >= 9;
          if (v30)
          {
            v55 = 0;
            goto LABEL_100;
          }
        }

        if (objc_msgSend_hasError(a2, v32, v9))
        {
          v55 = 0;
        }

        else
        {
          v55 = v98;
        }

LABEL_100:
        v139 = 40;
        goto LABEL_105;
      case 5u:
        v33 = PBReaderReadString();
        v34 = 104;
        goto LABEL_84;
      case 6u:
        v33 = PBReaderReadData();
        v34 = 96;
        goto LABEL_84;
      case 8u:
        v33 = PBReaderReadString();
        v34 = 80;
        goto LABEL_84;
      case 9u:
        v33 = PBReaderReadString();
        v34 = 144;
        goto LABEL_84;
      case 0xAu:
        v116 = objc_alloc_init(MEMORY[0x277CBC268]);
        objc_storeStrong((a1 + 128), v116);
        v144 = 0;
        v145 = 0;
        if (PBReaderPlaceMark() && CKDPRecordIdentifierReadFrom())
        {
          goto LABEL_67;
        }

        goto LABEL_108;
      case 0xBu:
        v33 = PBReaderReadString();
        v34 = 160;
        goto LABEL_84;
      case 0xDu:
        v33 = PBReaderReadString();
        v34 = 88;
        goto LABEL_84;
      case 0xEu:
        v76 = 0;
        v77 = 0;
        v78 = 0;
        *(a1 + 168) |= 8u;
        while (1)
        {
          LOBYTE(v144) = 0;
          v79 = objc_msgSend_position(a2, v32, v9, v144) + 1;
          if (v79 >= objc_msgSend_position(a2, v80, v81) && (v84 = objc_msgSend_position(a2, v82, v83) + 1, v84 <= objc_msgSend_length(a2, v85, v86)))
          {
            v87 = objc_msgSend_data(a2, v82, v83);
            v90 = objc_msgSend_position(a2, v88, v89);
            objc_msgSend_getBytes_range_(v87, v91, &v144, v90, 1);

            v94 = objc_msgSend_position(a2, v92, v93);
            objc_msgSend_setPosition_(a2, v95, v94 + 1);
          }

          else
          {
            objc_msgSend__setError(a2, v82, v83);
          }

          v78 |= (v144 & 0x7F) << v76;
          if ((v144 & 0x80) == 0)
          {
            break;
          }

          v76 += 7;
          v30 = v77++ >= 9;
          if (v30)
          {
            v55 = 0;
            goto LABEL_96;
          }
        }

        if (objc_msgSend_hasError(a2, v32, v9))
        {
          v55 = 0;
        }

        else
        {
          v55 = v78;
        }

LABEL_96:
        v139 = 32;
        goto LABEL_105;
      case 0xFu:
        v116 = objc_alloc_init(CKDPProtectionInfo);
        objc_storeStrong((a1 + 120), v116);
        v144 = 0;
        v145 = 0;
        if (PBReaderPlaceMark() && CKDPProtectionInfoReadFrom(v116, a2, v117))
        {
LABEL_67:
          PBReaderRecallMark();

LABEL_106:
          v140 = objc_msgSend_position(a2, v32, v9);
          if (v140 >= objc_msgSend_length(a2, v141, v142))
          {
            return objc_msgSend_hasError(a2, v8, v9) ^ 1;
          }

          continue;
        }

LABEL_108:

        return 0;
      case 0x11u:
        v33 = PBReaderReadData();
        v34 = 136;
        goto LABEL_84;
      case 0x12u:
        v56 = 0;
        v57 = 0;
        v58 = 0;
        *(a1 + 168) |= 4u;
        while (1)
        {
          LOBYTE(v144) = 0;
          v59 = objc_msgSend_position(a2, v32, v9, v144) + 1;
          if (v59 >= objc_msgSend_position(a2, v60, v61) && (v64 = objc_msgSend_position(a2, v62, v63) + 1, v64 <= objc_msgSend_length(a2, v65, v66)))
          {
            v67 = objc_msgSend_data(a2, v62, v63);
            v70 = objc_msgSend_position(a2, v68, v69);
            objc_msgSend_getBytes_range_(v67, v71, &v144, v70, 1);

            v74 = objc_msgSend_position(a2, v72, v73);
            objc_msgSend_setPosition_(a2, v75, v74 + 1);
          }

          else
          {
            objc_msgSend__setError(a2, v62, v63);
          }

          v58 |= (v144 & 0x7F) << v56;
          if ((v144 & 0x80) == 0)
          {
            break;
          }

          v56 += 7;
          v30 = v57++ >= 9;
          if (v30)
          {
            v55 = 0;
            goto LABEL_92;
          }
        }

        if (objc_msgSend_hasError(a2, v32, v9))
        {
          v55 = 0;
        }

        else
        {
          v55 = v58;
        }

LABEL_92:
        v139 = 24;
        goto LABEL_105;
      case 0x14u:
        v33 = PBReaderReadData();
        v34 = 56;
        goto LABEL_84;
      case 0x15u:
        v33 = PBReaderReadString();
        v34 = 48;
        goto LABEL_84;
      case 0x16u:
        v33 = PBReaderReadString();
        v34 = 72;
        goto LABEL_84;
      case 0x17u:
        v118 = 0;
        v119 = 0;
        v120 = 0;
        *(a1 + 168) |= 2u;
        while (1)
        {
          LOBYTE(v144) = 0;
          v121 = objc_msgSend_position(a2, v32, v9, v144) + 1;
          if (v121 >= objc_msgSend_position(a2, v122, v123) && (v126 = objc_msgSend_position(a2, v124, v125) + 1, v126 <= objc_msgSend_length(a2, v127, v128)))
          {
            v129 = objc_msgSend_data(a2, v124, v125);
            v132 = objc_msgSend_position(a2, v130, v131);
            objc_msgSend_getBytes_range_(v129, v133, &v144, v132, 1);

            v136 = objc_msgSend_position(a2, v134, v135);
            objc_msgSend_setPosition_(a2, v137, v136 + 1);
          }

          else
          {
            objc_msgSend__setError(a2, v124, v125);
          }

          v120 |= (v144 & 0x7F) << v118;
          if ((v144 & 0x80) == 0)
          {
            break;
          }

          v118 += 7;
          v30 = v119++ >= 9;
          if (v30)
          {
            v55 = 0;
            goto LABEL_104;
          }
        }

        if (objc_msgSend_hasError(a2, v32, v9))
        {
          v55 = 0;
        }

        else
        {
          v55 = v120;
        }

LABEL_104:
        v139 = 16;
        goto LABEL_105;
      case 0x18u:
        v35 = 0;
        v36 = 0;
        v37 = 0;
        *(a1 + 168) |= 1u;
        while (1)
        {
          LOBYTE(v144) = 0;
          v38 = objc_msgSend_position(a2, v32, v9, v144) + 1;
          if (v38 >= objc_msgSend_position(a2, v39, v40) && (v43 = objc_msgSend_position(a2, v41, v42) + 1, v43 <= objc_msgSend_length(a2, v44, v45)))
          {
            v46 = objc_msgSend_data(a2, v41, v42);
            v49 = objc_msgSend_position(a2, v47, v48);
            objc_msgSend_getBytes_range_(v46, v50, &v144, v49, 1);

            v53 = objc_msgSend_position(a2, v51, v52);
            objc_msgSend_setPosition_(a2, v54, v53 + 1);
          }

          else
          {
            objc_msgSend__setError(a2, v41, v42);
          }

          v37 |= (v144 & 0x7F) << v35;
          if ((v144 & 0x80) == 0)
          {
            break;
          }

          v35 += 7;
          v30 = v36++ >= 9;
          if (v30)
          {
            v55 = 0;
            goto LABEL_88;
          }
        }

        if (objc_msgSend_hasError(a2, v32, v9))
        {
          v55 = 0;
        }

        else
        {
          v55 = v37;
        }

LABEL_88:
        v139 = 8;
LABEL_105:
        *(a1 + v139) = v55;
        goto LABEL_106;
      case 0x19u:
        v33 = PBReaderReadData();
        v34 = 64;
LABEL_84:
        v138 = *(a1 + v34);
        *(a1 + v34) = v33;

        goto LABEL_106;
      default:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }

        goto LABEL_106;
    }
  }
}

uint64_t CKDPRecordReadFrom(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = objc_msgSend_position(a2, a2, a3);
  while (2)
  {
    if (v5 >= objc_msgSend_length(a2, v6, v7) || (objc_msgSend_hasError(a2, v8, v9) & 1) != 0)
    {
      return objc_msgSend_hasError(a2, v8, v9) ^ 1;
    }

    v10 = 0;
    v11 = 0;
    v12 = 0;
    while (1)
    {
      LOBYTE(v99) = 0;
      v13 = objc_msgSend_position(a2, v8, v9, v99) + 1;
      if (v13 >= objc_msgSend_position(a2, v14, v15) && (v18 = objc_msgSend_position(a2, v16, v17) + 1, v18 <= objc_msgSend_length(a2, v19, v20)))
      {
        v21 = objc_msgSend_data(a2, v16, v17);
        v24 = objc_msgSend_position(a2, v22, v23);
        objc_msgSend_getBytes_range_(v21, v25, &v99, v24, 1);

        v28 = objc_msgSend_position(a2, v26, v27);
        objc_msgSend_setPosition_(a2, v29, v28 + 1);
      }

      else
      {
        objc_msgSend__setError(a2, v16, v17);
      }

      v12 |= (v99 & 0x7F) << v10;
      if ((v99 & 0x80) == 0)
      {
        break;
      }

      v10 += 7;
      v30 = v11++ >= 9;
      if (v30)
      {
        v31 = 0;
        goto LABEL_16;
      }
    }

    v31 = objc_msgSend_hasError(a2, v8, v9) ? 0 : v12;
LABEL_16:
    if (objc_msgSend_hasError(a2, v8, v9))
    {
      return objc_msgSend_hasError(a2, v8, v9) ^ 1;
    }

    v9 = v31 & 7;
    if (v9 == 4)
    {
      return objc_msgSend_hasError(a2, v8, v9) ^ 1;
    }

    v32 = (v31 >> 3);
    switch((v31 >> 3))
    {
      case 1u:
        v33 = PBReaderReadString();
        v34 = 64;
        goto LABEL_83;
      case 2u:
        v36 = objc_alloc_init(MEMORY[0x277CBC268]);
        objc_storeStrong((a1 + 144), v36);
        v99 = 0;
        v100 = 0;
        if (!PBReaderPlaceMark() || !CKDPRecordIdentifierReadFrom())
        {
          goto LABEL_110;
        }

        goto LABEL_98;
      case 3u:
        v36 = objc_alloc_init(CKDPRecordType);
        objc_storeStrong((a1 + 200), v36);
        v99 = 0;
        v100 = 0;
        if (!PBReaderPlaceMark() || !CKDPRecordTypeReadFrom(v36, a2, v83))
        {
          goto LABEL_110;
        }

        goto LABEL_98;
      case 4u:
        v36 = objc_alloc_init(MEMORY[0x277CBC250]);
        v89 = 56;
        goto LABEL_76;
      case 5u:
        v36 = objc_alloc_init(CKDPDateStatistics);
        objc_storeStrong((a1 + 184), v36);
        v99 = 0;
        v100 = 0;
        if (!PBReaderPlaceMark() || !CKDPDateStatisticsReadFrom(v36, a2, v91))
        {
          goto LABEL_110;
        }

        goto LABEL_98;
      case 7u:
        v36 = objc_alloc_init(CKDPRecordField);
        objc_msgSend_addFields_(a1, v84, v36);
        goto LABEL_58;
      case 8u:
        v36 = objc_alloc_init(CKDPShareIdentifier);
        objc_storeStrong((a1 + 152), v36);
        v99 = 0;
        v100 = 0;
        if (!PBReaderPlaceMark() || !CKDPShareIdentifierReadFrom(v36, a2, v88))
        {
          goto LABEL_110;
        }

        goto LABEL_98;
      case 9u:
        v36 = objc_alloc_init(MEMORY[0x277CBC250]);
        v89 = 88;
LABEL_76:
        objc_storeStrong((a1 + v89), v36);
        v99 = 0;
        v100 = 0;
        if (!PBReaderPlaceMark() || !CKDPIdentifierReadFrom())
        {
          goto LABEL_110;
        }

        goto LABEL_98;
      case 0xAu:
        v36 = PBReaderReadString();
        if (v36)
        {
          objc_msgSend_addConflictLoserEtags_(a1, v93, v36);
        }

        goto LABEL_99;
      case 0xBu:
        v33 = PBReaderReadString();
        v34 = 96;
        goto LABEL_83;
      case 0xCu:
        v36 = objc_alloc_init(CKDPRecordField);
        objc_msgSend_addPluginFields_(a1, v61, v36);
LABEL_58:
        v99 = 0;
        v100 = 0;
        if (!PBReaderPlaceMark() || !CKDPRecordFieldReadFrom(&v36->super.super.isa, a2, v85))
        {
          goto LABEL_110;
        }

        goto LABEL_98;
      case 0xDu:
        v36 = objc_alloc_init(CKDPProtectionInfo);
        v86 = 128;
        goto LABEL_72;
      case 0xFu:
        v62 = 0;
        v63 = 0;
        v64 = 0;
        *(a1 + 220) |= 1u;
        while (1)
        {
          LOBYTE(v99) = 0;
          v65 = objc_msgSend_position(a2, v32, v9, v99) + 1;
          if (v65 >= objc_msgSend_position(a2, v66, v67) && (v70 = objc_msgSend_position(a2, v68, v69) + 1, v70 <= objc_msgSend_length(a2, v71, v72)))
          {
            v73 = objc_msgSend_data(a2, v68, v69);
            v76 = objc_msgSend_position(a2, v74, v75);
            objc_msgSend_getBytes_range_(v73, v77, &v99, v76, 1);

            v80 = objc_msgSend_position(a2, v78, v79);
            objc_msgSend_setPosition_(a2, v81, v80 + 1);
          }

          else
          {
            objc_msgSend__setError(a2, v68, v69);
          }

          v64 |= (v99 & 0x7F) << v62;
          if ((v99 & 0x80) == 0)
          {
            break;
          }

          v62 += 7;
          v30 = v63++ >= 9;
          if (v30)
          {
            v82 = 0;
            goto LABEL_108;
          }
        }

        if (objc_msgSend_hasError(a2, v32, v9))
        {
          v82 = 0;
        }

        else
        {
          v82 = v64;
        }

LABEL_108:
        *(a1 + 112) = v82;
        goto LABEL_100;
      case 0x10u:
        v36 = objc_alloc_init(CKDPShare);
        objc_storeStrong((a1 + 160), v36);
        v99 = 0;
        v100 = 0;
        if (!PBReaderPlaceMark() || !CKDPShareReadFrom(v36, a2, v58))
        {
          goto LABEL_110;
        }

        goto LABEL_98;
      case 0x11u:
        v33 = PBReaderReadData();
        v34 = 24;
        goto LABEL_83;
      case 0x12u:
        v36 = objc_alloc_init(CKDPProtectionInfo);
        v86 = 32;
LABEL_72:
        objc_storeStrong((a1 + v86), v36);
        v99 = 0;
        v100 = 0;
        if (!PBReaderPlaceMark() || !CKDPProtectionInfoReadFrom(v36, a2, v90))
        {
          goto LABEL_110;
        }

        goto LABEL_98;
      case 0x15u:
        v36 = objc_alloc_init(CKDPRecordChainParent);
        objc_storeStrong((a1 + 16), v36);
        v99 = 0;
        v100 = 0;
        if (!PBReaderPlaceMark() || !CKDPRecordChainParentReadFrom(v36, a2, v95))
        {
          goto LABEL_110;
        }

        goto LABEL_98;
      case 0x16u:
        v36 = objc_alloc_init(CKDPRecordStableUrl);
        objc_storeStrong((a1 + 168), v36);
        v99 = 0;
        v100 = 0;
        if (!PBReaderPlaceMark() || !CKDPRecordStableUrlReadFrom(v36, a2, v94))
        {
          goto LABEL_110;
        }

        goto LABEL_98;
      case 0x17u:
        v36 = PBReaderReadData();
        if (v36)
        {
          objc_msgSend_addTombstonedPublicKeyIDs_(a1, v35, v36);
        }

        goto LABEL_99;
      case 0x18u:
        v33 = PBReaderReadData();
        v34 = 208;
LABEL_83:
        v92 = *(a1 + v34);
        *(a1 + v34) = v33;

        goto LABEL_100;
      case 0x1Au:
        v36 = objc_alloc_init(CKDPStorageExpiration);
        objc_storeStrong((a1 + 176), v36);
        v99 = 0;
        v100 = 0;
        if (!PBReaderPlaceMark() || !sub_2253624AC(v36, a2, v96))
        {
          goto LABEL_110;
        }

        goto LABEL_98;
      case 0x1Cu:
        v37 = 0;
        v38 = 0;
        v39 = 0;
        *(a1 + 220) |= 2u;
        while (1)
        {
          LOBYTE(v99) = 0;
          v40 = objc_msgSend_position(a2, v32, v9, v99) + 1;
          if (v40 >= objc_msgSend_position(a2, v41, v42) && (v45 = objc_msgSend_position(a2, v43, v44) + 1, v45 <= objc_msgSend_length(a2, v46, v47)))
          {
            v48 = objc_msgSend_data(a2, v43, v44);
            v51 = objc_msgSend_position(a2, v49, v50);
            objc_msgSend_getBytes_range_(v48, v52, &v99, v51, 1);

            v55 = objc_msgSend_position(a2, v53, v54);
            objc_msgSend_setPosition_(a2, v56, v55 + 1);
          }

          else
          {
            objc_msgSend__setError(a2, v43, v44);
          }

          v39 |= (v99 & 0x7F) << v37;
          if ((v99 & 0x80) == 0)
          {
            break;
          }

          v37 += 7;
          v30 = v38++ >= 9;
          if (v30)
          {
            LOBYTE(v57) = 0;
            goto LABEL_104;
          }
        }

        v57 = (v39 != 0) & ~objc_msgSend_hasError(a2, v32, v9);
LABEL_104:
        *(a1 + 216) = v57;
        goto LABEL_100;
      case 0x1Du:
        v36 = objc_alloc_init(MEMORY[0x277CBC240]);
        objc_storeStrong((a1 + 72), v36);
        v99 = 0;
        v100 = 0;
        if (!PBReaderPlaceMark() || !CKDPDateReadFrom())
        {
          goto LABEL_110;
        }

        goto LABEL_98;
      case 0x1Eu:
        v36 = objc_alloc_init(CKDPRecordCryptoFeatureSet);
        objc_storeStrong((a1 + 8), v36);
        v99 = 0;
        v100 = 0;
        if (!PBReaderPlaceMark() || !sub_22531CCC0(v36, a2, v60))
        {
          goto LABEL_110;
        }

        goto LABEL_98;
      case 0x1Fu:
        v36 = objc_alloc_init(CKDPProtectionInfoKeysToRemove);
        v87 = 136;
        goto LABEL_96;
      case 0x20u:
        v36 = objc_alloc_init(CKDPRecordOneTimeStableUrlInfo);
        objc_storeStrong((a1 + 104), v36);
        v99 = 0;
        v100 = 0;
        if (!PBReaderPlaceMark() || !CKDPRecordOneTimeStableUrlInfoReadFrom(v36, a2, v59))
        {
          goto LABEL_110;
        }

        goto LABEL_98;
      case 0x21u:
        v36 = objc_alloc_init(CKDPProtectionInfoKeysToRemove);
        v87 = 40;
LABEL_96:
        objc_storeStrong((a1 + v87), v36);
        v99 = 0;
        v100 = 0;
        if (PBReaderPlaceMark() && sub_2253101B8(v36, a2, v97))
        {
LABEL_98:
          PBReaderRecallMark();
LABEL_99:

LABEL_100:
          v5 = objc_msgSend_position(a2, v32, v9);
          continue;
        }

LABEL_110:

        return 0;
      default:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }

        goto LABEL_100;
    }
  }
}

uint64_t CKDPDateStatisticsReadFrom(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = objc_msgSend_position(a2, a2, a3);
  if (v5 < objc_msgSend_length(a2, v6, v7))
  {
    do
    {
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v10 = 0;
      v11 = 0;
      v12 = 0;
      while (1)
      {
        LOBYTE(v40[0]) = 0;
        v13 = objc_msgSend_position(a2, v8, v9, v40[0]) + 1;
        if (v13 >= objc_msgSend_position(a2, v14, v15) && (v18 = objc_msgSend_position(a2, v16, v17) + 1, v18 <= objc_msgSend_length(a2, v19, v20)))
        {
          v21 = objc_msgSend_data(a2, v16, v17);
          v24 = objc_msgSend_position(a2, v22, v23);
          objc_msgSend_getBytes_range_(v21, v25, v40, v24, 1);

          v28 = objc_msgSend_position(a2, v26, v27);
          objc_msgSend_setPosition_(a2, v29, v28 + 1);
        }

        else
        {
          objc_msgSend__setError(a2, v16, v17);
        }

        v12 |= (v40[0] & 0x7F) << v10;
        if ((v40[0] & 0x80) == 0)
        {
          break;
        }

        v10 += 7;
        if (v11++ >= 9)
        {
          v31 = 0;
          goto LABEL_15;
        }
      }

      v31 = objc_msgSend_hasError(a2, v8, v9) ? 0 : v12;
LABEL_15:
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v9 = v31 & 7;
      if (v9 == 4)
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      if ((v31 >> 3) == 2)
      {
        v32 = objc_alloc_init(MEMORY[0x277CBC240]);
        v33 = 16;
      }

      else
      {
        if ((v31 >> 3) != 1)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            return 0;
          }

          goto LABEL_25;
        }

        v32 = objc_alloc_init(MEMORY[0x277CBC240]);
        v33 = 8;
      }

      objc_storeStrong((a1 + v33), v32);
      v40[0] = 0;
      v40[1] = 0;
      if (!PBReaderPlaceMark() || !CKDPDateReadFrom())
      {

        return 0;
      }

      PBReaderRecallMark();

LABEL_25:
      v36 = objc_msgSend_position(a2, v34, v35);
    }

    while (v36 < objc_msgSend_length(a2, v37, v38));
  }

  return objc_msgSend_hasError(a2, v8, v9) ^ 1;
}

uint64_t sub_22509E008(int a1)
{
  if (a1 == 1)
  {
    return 1;
  }

  if (a1 == 2)
  {
    return 0;
  }

  if (a1 != 3)
  {
    v4 = objc_alloc(MEMORY[0x277CBC360]);
    v6 = objc_msgSend_initWithCode_format_(v4, v5, 12, @"Unexpected reference type", v1, v2);
    objc_exception_throw(v6);
  }

  return *MEMORY[0x277CBC070];
}

uint64_t sub_22509EBFC(uint64_t a1, void *a2)
{
  v3 = a2;
  v6 = objc_msgSend_volumeIndex(v3, v4, v5);
  v7 = *(*(a1 + 32) + 96);
  v10 = objc_msgSend_volumeUUID(v3, v8, v9);
  objc_msgSend_setObject_forKeyedSubscript_(v7, v11, v6, v10);

  v14 = objc_msgSend_volumeUUID(v3, v12, v13);
  v15 = *(*(a1 + 32) + 88);
  v18 = objc_msgSend_volumeIndex(v3, v16, v17);

  objc_msgSend_setObject_forKeyedSubscript_(v15, v19, v14, v18);
  return 0;
}

uint64_t sub_22509ED3C(uint64_t a1, void *a2)
{
  v33 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v6 = objc_msgSend_volumeIndex(v3, v4, v5);
  if (v6 && (v9 = v6, objc_msgSend_volumeUUID(v3, v7, v8), v10 = objc_claimAutoreleasedReturnValue(), v10, v9, v10))
  {
    v13 = objc_msgSend_volumeUUID(v3, v11, v12);
    v15 = objc_msgSend_deviceIDForVolumeUUID_(CKDVolumeManager, v14, v13);

    if (v15)
    {
      os_unfair_lock_lock((*(a1 + 40) + 80));
      v17 = *(a1 + 40);
      v20 = objc_msgSend_volumeIndex(v3, v18, v19);
      v23 = objc_msgSend_volumeUUID(v3, v21, v22);
      objc_msgSend__lockedSetVolumeIndex_forVolumeUUID_(v17, v24, v20, v23);

      os_unfair_lock_unlock((*(a1 + 40) + 80));
    }

    else
    {
      objc_msgSend_addObject_(*(a1 + 32), v16, v3);
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v28 = *MEMORY[0x277CBC828];
      if (os_log_type_enabled(*MEMORY[0x277CBC828], OS_LOG_TYPE_ERROR))
      {
        v31 = 138412290;
        v32 = v3;
        _os_log_error_impl(&dword_22506F000, v28, OS_LOG_TYPE_ERROR, "Volume %@ is not mounted. Deleting all asset handles for this volume", &v31, 0xCu);
      }
    }
  }

  else
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v25 = *MEMORY[0x277CBC828];
    if (os_log_type_enabled(*MEMORY[0x277CBC828], OS_LOG_TYPE_ERROR))
    {
      v31 = 138412290;
      v32 = v3;
      _os_log_error_impl(&dword_22506F000, v25, OS_LOG_TYPE_ERROR, "Invalid device volume %@", &v31, 0xCu);
    }

    v27 = objc_msgSend_deleteObject_(*(a1 + 40), v26, v3);
  }

  v29 = *MEMORY[0x277D85DE8];
  return 0;
}

void sub_22509F0B0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = objc_loadWeakRetained((a1 + 40));
  v5 = objc_msgSend_error(v2, v3, v4);
  objc_msgSend_finishWithError_(WeakRetained, v6, v5);
}

uint64_t sub_22509F9BC(uint64_t a1)
{
  v2 = -1 << *(a1 + 32);
  result = _HashTable.startBucket.getter();
  v4 = *(a1 + 36);
  return result;
}

void sub_22509FA5C(uint64_t a1, void *a2)
{
  v59 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v49[0] = 0;
  v49[1] = v49;
  v49[2] = 0x2020000000;
  v50 = 0;
  objc_msgSend_setFullRecordsToFetch_(v3, v4, *(a1 + 32));
  v7 = objc_msgSend_forceDecryptionAttempt(*(a1 + 40), v5, v6);
  objc_msgSend_setForcePCSDecrypt_(v3, v8, v7);
  v11 = objc_msgSend_useRecordCache(*(a1 + 40), v9, v10);
  objc_msgSend_setUseRecordCache_(v3, v12, v11);
  objc_initWeak(&location, *(a1 + 40));
  objc_initWeak(&from, v3);
  v41[0] = MEMORY[0x277D85DD0];
  v41[1] = 3221225472;
  v41[2] = sub_2250A6060;
  v41[3] = &unk_27854B230;
  objc_copyWeak(v46, &location);
  v13 = *(a1 + 64);
  v45 = v49;
  v46[1] = v13;
  v14 = *(a1 + 48);
  v15 = *(a1 + 40);
  v42 = v14;
  v43 = v15;
  v44 = *(a1 + 56);
  objc_msgSend_setRecordFetchCompletionBlock_(v3, v16, v41);
  v33 = MEMORY[0x277D85DD0];
  v34 = 3221225472;
  v35 = sub_2250A7CC0;
  v36 = &unk_27854B258;
  objc_copyWeak(&v39, &location);
  objc_copyWeak(&v40, &from);
  v38 = v49;
  v37 = *(a1 + 56);
  objc_msgSend_setCompletionBlock_(v3, v17, &v33);
  objc_msgSend_setCurrentFetchOp_(*(a1 + 40), v18, v3, v33, v34, v35, v36);
  v21 = objc_msgSend_fetchGroup(*(a1 + 40), v19, v20);
  dispatch_group_enter(v21);

  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v22 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
  {
    v26 = *(a1 + 40);
    v27 = objc_opt_class();
    v28 = NSStringFromClass(v27);
    v29 = *(a1 + 40);
    v32 = objc_msgSend_ckShortDescription(v29, v30, v31);
    *buf = 134218754;
    v52 = v3;
    v53 = 2114;
    v54 = v28;
    v55 = 2048;
    v56 = v29;
    v57 = 2114;
    v58 = v32;
    _os_log_debug_impl(&dword_22506F000, v22, OS_LOG_TYPE_DEBUG, "Starting fetch records operation %p for <%{public}@: %p; %{public}@>", buf, 0x2Au);
  }

  objc_msgSend_hash(*(a1 + 40), v23, v24);
  kdebug_trace();

  objc_destroyWeak(&v40);
  objc_destroyWeak(&v39);

  objc_destroyWeak(v46);
  objc_destroyWeak(&from);
  objc_destroyWeak(&location);
  _Block_object_dispose(v49, 8);

  v25 = *MEMORY[0x277D85DE8];
}

void sub_22509FDC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, id location, id a28, char a29)
{
  objc_destroyWeak((v30 + 56));
  objc_destroyWeak((v30 + 48));
  objc_destroyWeak((v29 + 64));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a28);
  _Block_object_dispose(&a29, 8);
  _Unwind_Resume(a1);
}

void sub_2250A01A4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_2250A01C8(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  objc_msgSend_setError_(WeakRetained, v4, v3);

  v7 = objc_msgSend_stateTransitionGroup(WeakRetained, v5, v6);
  dispatch_group_leave(v7);
}

void sub_2250A0728(void *a1, void *a2, void *a3)
{
  v31 = a1;
  v5 = a2;
  v6 = a3;
  v9 = objc_msgSend_actions(v5, v7, v8);
  v12 = objc_msgSend_count(v9, v10, v11);

  if (v12)
  {
    v15 = objc_msgSend_identifier(v5, v13, v14);
    v18 = objc_msgSend_name(v15, v16, v17);

    v20 = objc_msgSend_objectForKeyedSubscript_(v6, v19, v18);

    if (v20)
    {
      v22 = objc_msgSend_objectForKeyedSubscript_(v6, v21, v18);
      v25 = objc_msgSend_actions(v22, v23, v24);
      v28 = objc_msgSend_actions(v5, v26, v27);
      objc_msgSend_addObjectsFromArray_(v25, v29, v28);
    }

    else
    {
      objc_msgSend_setObject_forKeyedSubscript_(v6, v21, v5, v18);
      objc_msgSend_addFields_(v31, v30, v5);
    }
  }

  else
  {
    objc_msgSend_addFields_(v31, v13, v5);
  }
}

__CFString *CKStringForAccountType(uint64_t a1)
{
  if ((a1 - 1) > 2)
  {
    return @"platform";
  }

  else
  {
    return off_278545850[a1 - 1];
  }
}

id CKDescriptionForIdentitySet(uint64_t a1)
{
  v2 = objc_opt_new();
  v3 = PCSIdentitySetCopyService();
  objc_msgSend_appendFormat_(v2, v4, @"<PCSIdentitySetRef %p service: %@, identities: {\n", a1, v3);
  if (v3)
  {
    CFRelease(v3);
  }

  v7 = v2;
  PCSIdentitySetEnumeratePublicKeys();
  objc_msgSend_appendString_(v7, v5, @"}>");

  return v7;
}

void sub_2250A1740(_Unwind_Exception *a1)
{
  objc_destroyWeak(v1);
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_2250A1778(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = objc_msgSend_stateTransitionGroup(WeakRetained, v1, v2);
  dispatch_group_leave(v3);
}

void sub_2250A261C(uint64_t a1, void *a2, void *a3)
{
  v29 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v8 = a3;
  if (v8)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v9 = *MEMORY[0x277CBC858];
    if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_DEBUG))
    {
      v19 = *(a1 + 32);
      v20 = v9;
      v23 = objc_msgSend_zoneID(v19, v21, v22);
      *buf = 138412546;
      v26 = v23;
      v27 = 2112;
      v28 = v8;
      _os_log_debug_impl(&dword_22506F000, v20, OS_LOG_TYPE_DEBUG, "Error fetching PCS data from the database for %@: %@", buf, 0x16u);
    }

    v12 = objc_msgSend_stateTransitionGroup(*(a1 + 32), v10, v11);
    dispatch_group_leave(v12);
  }

  else
  {
    v13 = objc_msgSend_zoneID(*(a1 + 32), v6, v7);
    v16 = objc_msgSend_databaseScope(*(a1 + 32), v14, v15);
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = sub_22527F328;
    v24[3] = &unk_27854B9D0;
    v24[4] = *(a1 + 32);
    objc_msgSend_fetchPCSDataForZoneWithID_databaseScope_withCompletionHandler_(v5, v17, v13, v16, v24);
  }

  v18 = *MEMORY[0x277D85DE8];
}

void sub_2250A2838(uint64_t a1, void *a2, void *a3)
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = a2;
  objc_msgSend_noteOperationDidFinishWaitingOnPCS(v5, v8, v9);
  objc_msgSend__handleDecryptedZonePCSData_withError_(*(a1 + 32), v10, v7, v6);

  if (!v6 && objc_msgSend_wasFetchedFromCache(*(a1 + 32), v11, v12))
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v13 = *MEMORY[0x277CBC858];
    if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_INFO))
    {
      v16 = *(a1 + 32);
      v17 = v13;
      v20 = objc_msgSend_zoneID(v16, v18, v19);
      v23 = 138543362;
      v24 = v20;
      _os_log_impl(&dword_22506F000, v17, OS_LOG_TYPE_INFO, "Zone PCS was fetched from cache for %{public}@, checking key rolling requirements", &v23, 0xCu);
    }

    objc_msgSend__checkAndUpdateZonePCSIfNeeded(*(a1 + 32), v14, v15);
  }

  v21 = objc_msgSend_stateTransitionGroup(*(a1 + 32), v11, v12);
  dispatch_group_leave(v21);

  v22 = *MEMORY[0x277D85DE8];
}

void sub_2250A3EC8(uint64_t a1, void *a2)
{
  objc_storeStrong((*(a1 + 32) + 480), a2);
  v4 = a2;
  v7 = objc_msgSend_forcePCSDecrypt(*(a1 + 32), v5, v6);
  objc_msgSend_setForcePCSDecrypt_(*(*(a1 + 32) + 480), v8, v7);
  v11 = objc_msgSend_stateTransitionGroup(*(a1 + 32), v9, v10);
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = sub_2250A6E9C;
  v18[3] = &unk_278545A00;
  v19 = v11;
  v12 = *(*(a1 + 32) + 480);
  v13 = v11;
  objc_msgSend_setCompletionBlock_(v12, v14, v18);
  v17 = objc_msgSend_stateTransitionGroup(*(a1 + 32), v15, v16);
  dispatch_group_enter(v17);
}

uint64_t sub_2250A4128(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = objc_msgSend_position(a2, a2, a3);
  if (v5 < objc_msgSend_length(a2, v6, v7))
  {
    do
    {
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        break;
      }

      v10 = 0;
      v11 = 0;
      v12 = 0;
      while (1)
      {
        LOBYTE(v63[0]) = 0;
        v13 = objc_msgSend_position(a2, v8, v9, v63[0]) + 1;
        if (v13 >= objc_msgSend_position(a2, v14, v15) && (v18 = objc_msgSend_position(a2, v16, v17) + 1, v18 <= objc_msgSend_length(a2, v19, v20)))
        {
          v21 = objc_msgSend_data(a2, v16, v17);
          v24 = objc_msgSend_position(a2, v22, v23);
          objc_msgSend_getBytes_range_(v21, v25, v63, v24, 1);

          v28 = objc_msgSend_position(a2, v26, v27);
          objc_msgSend_setPosition_(a2, v29, v28 + 1);
        }

        else
        {
          objc_msgSend__setError(a2, v16, v17);
        }

        v12 |= (v63[0] & 0x7F) << v10;
        if ((v63[0] & 0x80) == 0)
        {
          break;
        }

        v10 += 7;
        v30 = v11++ >= 9;
        if (v30)
        {
          v31 = 0;
          goto LABEL_15;
        }
      }

      v31 = objc_msgSend_hasError(a2, v8, v9) ? 0 : v12;
LABEL_15:
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        break;
      }

      v9 = v31 & 7;
      if (v9 == 4)
      {
        break;
      }

      v32 = (v31 >> 3);
      if ((v31 >> 3) == 3)
      {
        v38 = 0;
        v39 = 0;
        v40 = 0;
        *(a1 + 32) |= 1u;
        while (1)
        {
          LOBYTE(v63[0]) = 0;
          v41 = objc_msgSend_position(a2, v32, v9, v63[0]) + 1;
          if (v41 >= objc_msgSend_position(a2, v42, v43) && (v46 = objc_msgSend_position(a2, v44, v45) + 1, v46 <= objc_msgSend_length(a2, v47, v48)))
          {
            v49 = objc_msgSend_data(a2, v44, v45);
            v52 = objc_msgSend_position(a2, v50, v51);
            objc_msgSend_getBytes_range_(v49, v53, v63, v52, 1);

            v56 = objc_msgSend_position(a2, v54, v55);
            objc_msgSend_setPosition_(a2, v57, v56 + 1);
          }

          else
          {
            objc_msgSend__setError(a2, v44, v45);
          }

          v40 |= (v63[0] & 0x7F) << v38;
          if ((v63[0] & 0x80) == 0)
          {
            break;
          }

          v38 += 7;
          v30 = v39++ >= 9;
          if (v30)
          {
            v58 = 0;
            goto LABEL_38;
          }
        }

        if (objc_msgSend_hasError(a2, v32, v9))
        {
          v58 = 0;
        }

        else
        {
          v58 = v40;
        }

LABEL_38:
        *(a1 + 16) = v58;
      }

      else if (v32 == 2)
      {
        v36 = PBReaderReadData();
        v37 = *(a1 + 24);
        *(a1 + 24) = v36;
      }

      else if (v32 == 1)
      {
        v33 = objc_alloc_init(CKDPZoneRetrieveChangesResponseChangedZone);
        objc_msgSend_addChangedZones_(a1, v34, v33);
        v63[0] = 0;
        v63[1] = 0;
        if (!PBReaderPlaceMark() || !sub_22538C520(v33, a2, v35))
        {

          return 0;
        }

        PBReaderRecallMark();
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v59 = objc_msgSend_position(a2, v32, v9);
    }

    while (v59 < objc_msgSend_length(a2, v60, v61));
  }

  return objc_msgSend_hasError(a2, v8, v9) ^ 1;
}

void sub_2250A4730(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = objc_msgSend_requestInfos(WeakRetained, v1, v2);
  objc_msgSend_removeAllObjects(v3, v4, v5);

  v8 = objc_msgSend_error(WeakRetained, v6, v7);
  objc_msgSend_finishWithError_(WeakRetained, v9, v8);
}

id sub_2250A4DF4(char a1, const char *a2)
{
  v3 = objc_msgSend_arrayWithCapacity_(MEMORY[0x277CBEB18], a2, 3);
  v6 = v3;
  if ((a1 & 2) != 0)
  {
    objc_msgSend_addObject_(v3, v4, @"local-fetch-only");
    if ((a1 & 4) == 0)
    {
LABEL_3:
      if ((a1 & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else if ((a1 & 4) == 0)
  {
    goto LABEL_3;
  }

  objc_msgSend_addObject_(v6, v4, @"wants-parent");
  if ((a1 & 8) == 0)
  {
LABEL_4:
    if ((a1 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_10:
  objc_msgSend_addObject_(v6, v4, @"wants-zoneish");
  if ((a1 & 0x10) != 0)
  {
LABEL_5:
    objc_msgSend_addObject_(v6, v4, @"wants-per-participant");
  }

LABEL_6:
  v7 = MEMORY[0x277CCACA8];
  if (objc_msgSend_count(v6, v4, v5))
  {
    v9 = objc_msgSend_componentsJoinedByString_(v6, v8, @"|");
    v11 = objc_msgSend_stringWithFormat_(v7, v10, @"(%@)", v9);
  }

  else
  {
    v11 = objc_msgSend_stringWithFormat_(v7, v8, @"(%@)", @"none");
  }

  return v11;
}

void sub_2250A57A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2250A6060(uint64_t a1, void *a2, void *a3, void *a4)
{
  v93 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = v7;
  v72 = v8;
  v74 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  if (*(*(*(a1 + 56) + 8) + 24) == 1)
  {
    v12 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v10, v11);
    v13 = *(a1 + 72);
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "/Library/Caches/com.apple.xbs/Sources/CloudKitTools/Sources/CloudKitDaemon/Operations/Database/CKDRecordFetchAggregator.m");
    v18 = objc_msgSend_operationID(*(a1 + 32), v16, v17);
    v20 = v18;
    if (v74)
    {
      objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v12, v19, v13, WeakRetained, v15, 376, @"Trying to invoke the record fetch completion block on completed operation %@ with record %@ and record ID %@%@%@", v18, v7, v72, @". Error was ", v74);
    }

    else
    {
      objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v12, v19, v13, WeakRetained, v15, 376, @"Trying to invoke the record fetch completion block on completed operation %@ with record %@ and record ID %@%@%@", v18, v7, v72, &stru_28385ED00, &stru_28385ED00);
    }
  }

  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v21 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v60 = *(a1 + 40);
    v61 = v21;
    v62 = objc_opt_class();
    v63 = NSStringFromClass(v62);
    v64 = *(a1 + 40);
    v67 = objc_msgSend_ckShortDescription(v64, v65, v66);
    v68 = v67;
    *buf = 138544642;
    v69 = @" Error was ";
    v82 = v63;
    v70 = &stru_28385ED00;
    v83 = 2048;
    if (!v74)
    {
      v69 = &stru_28385ED00;
    }

    v84 = v64;
    if (v74)
    {
      v70 = v74;
    }

    v85 = 2114;
    v86 = v67;
    v87 = 2112;
    v88 = v72;
    v89 = 2114;
    v90 = v69;
    v91 = 2112;
    v92 = v70;
    _os_log_debug_impl(&dword_22506F000, v61, OS_LOG_TYPE_DEBUG, "Record fetcher <%{public}@: %p; %{public}@> fetched a record with ID %@.%{public}@%@", buf, 0x3Eu);
  }

  v23 = objc_msgSend_objectForKeyedSubscript_(*(a1 + 48), v22, v72);
  if (!objc_msgSend_count(v23, v24, v25))
  {
    v28 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v26, v27);
    v29 = *(a1 + 72);
    v31 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v30, "/Library/Caches/com.apple.xbs/Sources/CloudKitTools/Sources/CloudKitDaemon/Operations/Database/CKDRecordFetchAggregator.m");
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v28, v32, v29, WeakRetained, v31, 380, @"Didn't get any fetch infos for record with ID %@", v72);
  }

  v78 = 0u;
  v79 = 0u;
  v76 = 0u;
  v77 = 0u;
  obj = v23;
  v34 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v33, &v76, v80, 16);
  if (v34)
  {
    v37 = v34;
    v75 = *v77;
    do
    {
      for (i = 0; i != v37; ++i)
      {
        if (*v77 != v75)
        {
          objc_enumerationMutation(obj);
        }

        v39 = *(*(&v76 + 1) + 8 * i);
        v40 = objc_msgSend_record(v39, v35, v36);
        v43 = objc_msgSend_etag(v40, v41, v42);
        if (!v43)
        {

LABEL_20:
          objc_msgSend_setError_(v39, v35, v74);
          objc_msgSend_setRecord_(v39, v57, v9);
          objc_msgSend_setState_(v39, v58, 3);
          continue;
        }

        v46 = v43;
        v47 = objc_msgSend_record(v39, v44, v45);
        v50 = objc_msgSend_etag(v47, v48, v49);
        objc_msgSend_etag(v9, v51, v52);
        v54 = v53 = v9;
        isEqualToString = objc_msgSend_isEqualToString_(v50, v55, v54);

        v9 = v53;
        if (isEqualToString)
        {
          goto LABEL_20;
        }
      }

      v37 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v35, &v76, v80, 16);
    }

    while (v37);
  }

  v59 = *MEMORY[0x277D85DE8];
}

uint64_t sub_2250A6D8C(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v2 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v6 = *(a1 + 32);
    v7 = v2;
    v10 = objc_msgSend_operationID(v6, v8, v9);
    v11 = 138543362;
    v12 = v10;
    _os_log_debug_impl(&dword_22506F000, v7, OS_LOG_TYPE_DEBUG, "All records have been decrypted for operation %{public}@", &v11, 0xCu);
  }

  result = objc_msgSend_finishWithError_(*(a1 + 32), v3, 0);
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2250A754C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2250A7618(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 16);
  *(v1 + 16) = 0;
}

void sub_2250A783C(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v2 = *MEMORY[0x277CBC858];
  if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_DEBUG))
  {
    v9 = *(a1 + 32);
    v10 = 134217984;
    v11 = v9;
    _os_log_debug_impl(&dword_22506F000, v2, OS_LOG_TYPE_DEBUG, "Clearing all entries in PCS cache %p", &v10, 0xCu);
  }

  v5 = objc_msgSend_cacheEntries(*(a1 + 32), v3, v4);
  objc_msgSend_removeAllObjects(v5, v6, v7);

  v8 = *MEMORY[0x277D85DE8];
}

void sub_2250A7CC0(uint64_t a1)
{
  v83 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = objc_loadWeakRetained((a1 + 56));
  *(*(*(a1 + 40) + 8) + 24) = 1;
  v6 = objc_msgSend_error(v3, v4, v5);

  v9 = MEMORY[0x277CBC830];
  if (v6)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v10 = *v9;
    if (os_log_type_enabled(*v9, OS_LOG_TYPE_INFO))
    {
      v13 = v10;
      v16 = objc_msgSend_error(v3, v14, v15);
      *buf = 138412290;
      v74 = v16;
      _os_log_impl(&dword_22506F000, v13, OS_LOG_TYPE_INFO, "Error fetching records: %@", buf, 0xCu);
    }

    v17 = objc_msgSend_error(WeakRetained, v11, v12);

    if (!v17)
    {
      v18 = objc_msgSend_error(v3, v7, v8);
      objc_msgSend_setError_(WeakRetained, v19, v18);
    }
  }

  v60 = v3;
  v71 = 0u;
  v72 = 0u;
  v69 = 0u;
  v70 = 0u;
  obj = objc_msgSend_allValues(*(a1 + 32), v7, v8);
  v63 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v20, &v69, v82, 16);
  if (v63)
  {
    v62 = *v70;
    v21 = *MEMORY[0x277CBC120];
    do
    {
      v22 = 0;
      do
      {
        if (*v70 != v62)
        {
          objc_enumerationMutation(obj);
        }

        v64 = v22;
        v23 = *(*(&v69 + 1) + 8 * v22);
        v65 = 0u;
        v66 = 0u;
        v67 = 0u;
        v68 = 0u;
        v24 = v23;
        v26 = objc_msgSend_countByEnumeratingWithState_objects_count_(v24, v25, &v65, v81, 16);
        if (v26)
        {
          v29 = v26;
          v30 = *v66;
          do
          {
            for (i = 0; i != v29; ++i)
            {
              if (*v66 != v30)
              {
                objc_enumerationMutation(v24);
              }

              v32 = *(*(&v65 + 1) + 8 * i);
              if (objc_msgSend_state(v32, v27, v28) <= 2)
              {
                v35 = objc_msgSend_error(WeakRetained, v27, v28);
                if (v35)
                {
                  objc_msgSend_setError_(v32, v33, v35);
                }

                else
                {
                  v36 = MEMORY[0x277CBC560];
                  v37 = objc_msgSend_recordID(v32, v33, v34);
                  v39 = objc_msgSend_errorWithDomain_code_format_(v36, v38, v21, 2003, @"We didn't get a callback for record %@", v37);
                  objc_msgSend_setError_(v32, v40, v39);
                }

                objc_msgSend_setState_(v32, v41, 3);
              }
            }

            v29 = objc_msgSend_countByEnumeratingWithState_objects_count_(v24, v27, &v65, v81, 16);
          }

          while (v29);
        }

        v22 = v64 + 1;
      }

      while (v64 + 1 != v63);
      v63 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v42, &v69, v82, 16);
    }

    while (v63);
  }

  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v43 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v54 = v43;
    v55 = objc_opt_class();
    v56 = NSStringFromClass(v55);
    v59 = objc_msgSend_ckShortDescription(WeakRetained, v57, v58);
    *buf = 134218754;
    v74 = v60;
    v75 = 2114;
    v76 = v56;
    v77 = 2048;
    v78 = WeakRetained;
    v79 = 2114;
    v80 = v59;
    _os_log_debug_impl(&dword_22506F000, v54, OS_LOG_TYPE_DEBUG, "Fetch records operation %p completed for <%{public}@: %p; %{public}@>", buf, 0x2Au);
  }

  objc_msgSend_hash(WeakRetained, v44, v45);
  kdebug_trace();
  objc_msgSend_setCurrentFetchOp_(WeakRetained, v46, 0);
  v49 = objc_msgSend_fetchSource(WeakRetained, v47, v48);
  dispatch_source_merge_data(v49, 1uLL);

  v52 = objc_msgSend_fetchGroup(WeakRetained, v50, v51);
  dispatch_group_leave(v52);

  v53 = *MEMORY[0x277D85DE8];
}

void sub_2250A8DA8(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  sub_2250A8DDC();
  *a2 = v4;
  *(a2 + 8) = v5 & 1;
}

uint64_t sub_2250A8DF0()
{
  v1 = sub_2250B0DFC(&qword_27D718AF0, &qword_225443AB8);
  sub_2250B2170(v1);
  v2 = sub_2250B0DFC(&qword_27D718AF8, &unk_225443AC0);
  sub_2250B2170(v2);

  return MEMORY[0x2821FE8E8](v0, 33, 7);
}

uint64_t sub_2250A8EF4()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2250A901C()
{
  sub_2250C87B8(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40));

  return MEMORY[0x2821FE8E8](v0, 41, 7);
}

uint64_t sub_2250A905C()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2250A9094()
{
  MEMORY[0x22AA65EF0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2250A90CC()
{
  v38 = type metadata accessor for SessionID();
  sub_225072D1C(v38);
  v2 = v1;
  v41 = *(v1 + 80);
  v3 = (v41 + 32) & ~v41;
  v5 = *(v4 + 64);
  v6 = type metadata accessor for AnySessionConfiguration();
  sub_225072D1C(v6);
  v8 = v7;
  v40 = *(v7 + 80);
  v9 = (v3 + v5 + v40) & ~v40;
  v11 = *(v10 + 64);
  v12 = sub_2250B0DFC(&unk_27D718E60, &unk_225444780);
  sub_22507D394(v12);
  v14 = *(v13 + 80);
  v15 = (v9 + v11 + v14) & ~v14;
  v37 = *(v16 + 64);
  v39 = type metadata accessor for Entitlements();
  sub_225072D1C(v39);
  v18 = v17;
  v19 = *(v17 + 80);
  v36 = *(v20 + 64);
  v21 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, v38);
  (*(v8 + 8))(v0 + v9, v6);
  v22 = type metadata accessor for SessionInvalidationContext();
  if (!sub_22507C8E8(v0 + v15, 1, v22))
  {
    sub_22507E428(v22);
    (*(v23 + 8))(v0 + v15, v22);
  }

  v24 = (v37 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = (v24 + 15) & 0xFFFFFFFFFFFFFFF8;
  v26 = (v25 + 15) & 0xFFFFFFFFFFFFFFF8;
  v27 = (v19 + v26 + 8) & ~v19;
  v28 = (v36 + v27 + 7) & 0xFFFFFFFFFFFFFFF8;
  v29 = (v28 + 15) & 0xFFFFFFFFFFFFFFF8;
  v30 = (v29 + 23) & 0xFFFFFFFFFFFFFFF8;
  v31 = *(v0 + v24);
  swift_unknownObjectRelease();
  v32 = *(v0 + v25);
  swift_unknownObjectRelease();

  (*(v18 + 8))(v0 + v27, v39);
  v33 = *(v0 + v29 + 8);

  v34 = *(v0 + v30);

  return MEMORY[0x2821FE8E8](v0, v30 + 8, v41 | v40 | v19 | v14 | 7);
}

uint64_t sub_2250A93B4(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_2250A93CC()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2250A9414()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_2250A9464()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2250A9514()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2250A954C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2250A9594()
{
  v1 = type metadata accessor for ResolvedBundleID();
  sub_225072BF0(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4);
  v7 = *(v0 + v5 + 8);

  v8 = *(v0 + v6);

  return MEMORY[0x2821FE8E8](v0, v6 + 8, v3 | 7);
}

uint64_t sub_2250A963C()
{
  v1 = type metadata accessor for ResolvedBundleID();
  sub_225072D1C(v1);
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 40) & ~v4;
  v7 = *(v6 + 64);
  v8 = *(v0 + 16);
  swift_unknownObjectRelease();
  v9 = *(v0 + 32);

  (*(v3 + 8))(v0 + v5, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + v7, v4 | 7);
}

uint64_t sub_2250A9704()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2250A9740()
{
  v1 = type metadata accessor for ResolvedBundleID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v7 = *(v0 + v5 + 8);

  v8 = *(v0 + v6 + 8);

  return MEMORY[0x2821FE8E8](v0, v6 + 16, v3 | 7);
}

uint64_t sub_2250A981C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AuthenticatedSession.ResolvedUser.DataProtection();

  return sub_22507C8E8(a1, a2, v4);
}

uint64_t sub_2250A9864(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AuthenticatedSession.ResolvedUser.DataProtection();

  return sub_22507C8C0(a1, a2, a2, v4);
}

uint64_t sub_2250A98B0()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2250A98E8()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[6];

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_2250A9930()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2250A9970()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2250A9A18()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2250A9A50()
{
  v1 = *(v0 + 24);

  sub_2250EBCC4();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_2250A9AB0()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[6];

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_2250A9AF8()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[6];

  v4 = v0[8];

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_2250A9B90()
{
  _Block_release(*(v0 + 56));

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_2250A9BF8()
{
  _Block_release(*(v0 + 40));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_2250A9C50()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2250A9C90()
{
  v1 = *(v0 + 48);
  swift_unknownObjectRelease();
  _Block_release(*(v0 + 56));

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_2250A9CF0(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_2250B0DFC(&unk_27D719260, &unk_225445B40);
    if (*(*(v8 - 8) + 84) == a2)
    {
      v9 = v8;
      v10 = *(a3 + 32);
    }

    else
    {
      v9 = type metadata accessor for TimeZone();
      v10 = *(a3 + 40);
    }

    return sub_22507C8E8(a1 + v10, a2, v9);
  }
}

uint64_t sub_2250A9DC8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_2250B0DFC(&unk_27D719260, &unk_225445B40);
    if (*(*(v8 - 8) + 84) == a3)
    {
      v9 = v8;
      v10 = *(a4 + 32);
    }

    else
    {
      v9 = type metadata accessor for TimeZone();
      v10 = *(a4 + 40);
    }

    return sub_22507C8C0(v5 + v10, a2, a2, v9);
  }

  return result;
}

uint64_t sub_2250A9EA4(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return sub_2250FBC20();
  }

  type metadata accessor for Date();
  v5 = sub_2250FBCAC(*(a3 + 20));

  return sub_22507C8E8(v5, v6, v7);
}

void sub_2250A9F18()
{
  sub_2250FBCC4();
  if (v3)
  {
    *(v1 + 8) = (v0 - 1);
  }

  else
  {
    v4 = v2;
    type metadata accessor for Date();
    v5 = sub_2250FBCAC(*(v4 + 20));

    sub_22507C8C0(v5, v6, v0, v7);
  }
}

uint64_t sub_2250A9F90(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return sub_2250FBC20();
  }

  if (*(*(type metadata accessor for Date() - 8) + 84) == a2)
  {
    v5 = *(a3 + 20);
  }

  else
  {
    type metadata accessor for URL();
    v5 = *(a3 + 24);
  }

  v6 = sub_2250FBCAC(v5);

  return sub_22507C8E8(v6, v7, v8);
}

void sub_2250AA048()
{
  sub_2250FBCC4();
  if (v4)
  {
    *(v1 + 8) = (v0 - 1);
  }

  else
  {
    v5 = v3;
    v6 = v2;
    v7 = *(type metadata accessor for Date() - 8);
    if (*(v7 + 84) == v6)
    {
      v8 = *(v5 + 20);
    }

    else
    {
      type metadata accessor for URL();
      v8 = *(v5 + 24);
    }

    v9 = sub_2250FBCAC(v8);

    sub_22507C8C0(v9, v10, v0, v11);
  }
}

uint64_t sub_2250AA1C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2250F78E8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2250AA208@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2250F7BB8(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_2250AA248@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2250F870C(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_2250AA304()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2250AA3B4()
{
  v1 = *(v0 + 16);

  sub_22507E758();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_2250AA3EC()
{
  _Block_release(*(v0 + 16));
  sub_22507E758();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_2250AA420()
{
  v1 = *(v0 + 24);

  sub_22509877C();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

id sub_2250AB6D8(id result)
{
  if (!result)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v2 = result;
  v3 = sub_2250B2038(result, &selRef_cloudKitToken);
  if (!v4)
  {
LABEL_11:
    v20.receiver = v1;
    v20.super_class = type metadata accessor for CKCredentialInterceptingAccount();
    return objc_msgSendSuper2(&v20, sel_aa_updateTokensWithProvisioningResponse_, v2);
  }

  v5 = v3;
  v6 = v4;
  result = [v1 accountStore];
  if (!result)
  {
    goto LABEL_13;
  }

  v7 = result;
  v8 = *MEMORY[0x277CB8BE8];
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = sub_2250B1E5C(v9, v10, v7);

  result = [objc_allocWithZone(MEMORY[0x277CB8F30]) initWithAccountType_];
  if (result)
  {
    v12 = result;
    v13 = sub_2250B2038(v1, &selRef_username);
    if (v14)
    {
      v15 = MEMORY[0x22AA62D80](v13);
    }

    else
    {
      v15 = 0;
    }

    [v12 setUsername_];

    v16 = [objc_allocWithZone(MEMORY[0x277CB8F38]) init];
    sub_2250B2104(v5, v6, v16, &selRef_setToken_);
    [v12 setCredential_];
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v18 = Strong;
      v19 = v12;
      [v18 setFakeCKAccount_];
    }

    goto LABEL_11;
  }

LABEL_14:
  __break(1u);
  return result;
}

id sub_2250AB960(void *a1, SEL *a2)
{
  swift_unknownObjectWeakInit();
  v7.receiver = v2;
  v7.super_class = type metadata accessor for CKCredentialInterceptingAccount();
  v5 = objc_msgSendSuper2(&v7, *a2, a1);

  if (v5)
  {
  }

  return v5;
}

id sub_2250ABA18()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CKCredentialInterceptingAccount();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_2250ABA70()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [v1 appleAccount];
  v8 = [v7 accountProperties];

  if (!v8)
  {
    __break(1u);
    goto LABEL_10;
  }

  strcpy(v33, "localizedError");
  HIBYTE(v33[1]) = -18;
  v9 = [v8 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();

  if (!v9)
  {
    return;
  }

  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  CKLog.getter();
  sub_22508DF28(v33, v31);
  v10 = v1;
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.error.getter();
  if (!os_log_type_enabled(v11, v12))
  {

    (*(v3 + 8))(v6, v2);
    sub_225073BF0(v33);
    v28 = v31;
    goto LABEL_7;
  }

  v13 = swift_slowAlloc();
  v14 = swift_slowAlloc();
  v30 = v14;
  *v13 = 136315394;
  v15 = sub_2250B2098([v10 appleAccount], &selRef_username);
  v17 = v16;

  if (!v17)
  {
LABEL_10:
    __break(1u);
    return;
  }

  v18 = sub_225095AFC(v15, v17, &v30);

  *(v13 + 4) = v18;
  *(v13 + 12) = 2080;
  v19 = v32;
  v20 = sub_225073BAC(v31, v32);
  v21 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v20);
  (*(v23 + 16))(&v29 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = String.init<A>(describing:)();
  v26 = v25;
  sub_225073BF0(v31);
  v27 = sub_225095AFC(v24, v26, &v30);

  *(v13 + 14) = v27;
  _os_log_impl(&dword_22506F000, v11, v12, "\n=\n==\n===\n====\n=====\n======\n=======\n\nIMPORTANT ERROR FOLLOWS:\nYou need to sign in to the account %s in Settings, possibly due to outdated Terms and Conditions. Error: %s \n\n=======\n======\n=====\n====\n===\n==\n=", v13, 0x16u);
  swift_arrayDestroy();
  MEMORY[0x22AA65DF0](v14, -1, -1);
  MEMORY[0x22AA65DF0](v13, -1, -1);

  (*(v3 + 8))(v6, v2);
  v28 = v33;
LABEL_7:
  sub_225073BF0(v28);
}

id sub_2250ABE40(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5, uint64_t a6)
{
  v113 = a5;
  v120 = a3;
  v10 = type metadata accessor for DispatchTime();
  v116 = *(v10 - 8);
  v11 = *(v116 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v108 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [objc_opt_self() sharedAccountStore];
  v15 = [v14 accountStore];

  if (!v15)
  {
    goto LABEL_66;
  }

  v115 = v10;
  v16 = *MEMORY[0x277CB8BA0];
  v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v119 = v15;
  v19 = sub_2250B1E5C(v17, v18, v15);
  v20 = [objc_allocWithZone(type metadata accessor for CKCredentialInterceptingAccount()) initWithAccountType_];
  if (!v20)
  {
    goto LABEL_67;
  }

  v21 = v20;
  sub_2250B2104(a1, a2, v21, &selRef_setUsername_);
  v22 = objc_allocWithZone(MEMORY[0x277CB8F38]);

  v117 = sub_2250B0EA4(v120, a4);
  [v21 setCredential:?];
  v112 = v21;

  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v24 = [(objc_class *)isa CKDeepCopy];

  v25 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  v26 = sub_2250FC41C(v25);

  if (!v26)
  {
    v26 = Dictionary.init(dictionaryLiteral:)();
  }

  v27 = Dictionary._bridgeToObjectiveC()().super.isa;

  v28 = [(objc_class *)v27 CKDeepCopy];

  v29 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  v30 = sub_2250FC41C(v29);

  if (!v30)
  {
    v30 = Dictionary.init(dictionaryLiteral:)();
  }

  v118 = v19;
  v114 = v30;
  if (a6)
  {
    v31 = MEMORY[0x22AA62D80](v113, a6);
  }

  else
  {
    v31 = 0;
  }

  v32 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v33 = MEMORY[0x22AA62D80](v120, a4);

  v34 = [v32 initWithAppleAccount:v112 hsa2RecoveryKey:v31 hsa2AccountPassword:v33];

  swift_unknownObjectWeakAssign();
  v35 = dispatch_semaphore_create(0);
  Dictionary.init(dictionaryLiteral:)();
  v36 = Dictionary._bridgeToObjectiveC()().super.isa;

  v37 = swift_allocObject();
  *(v37 + 16) = v35;
  *&v129 = sub_2250B21B8;
  *(&v129 + 1) = v37;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  *&v128 = sub_2250B2D88;
  *(&v128 + 1) = &unk_28385A2B8;
  v38 = _Block_copy(&aBlock);
  v39 = v35;

  v120 = v34;
  [v34 renewAuthTokenWithOptions:v36 completionHandler:v38];
  _Block_release(v38);

  static DispatchTime.distantFuture.getter();
  v108 = v39;
  MEMORY[0x22AA630F0](v13);
  (*(v116 + 8))(v13, v115);
  v40 = 0;
  v41 = 1 << *(v26 + 32);
  v42 = -1;
  if (v41 < 64)
  {
    v42 = ~(-1 << v41);
  }

  v43 = v42 & *(v26 + 64);
  v44 = (v41 + 63) >> 6;
  if (!v43)
  {
LABEL_14:
    while (1)
    {
      v45 = v40 + 1;
      if (__OFADD__(v40, 1))
      {
        goto LABEL_62;
      }

      if (v45 >= v44)
      {
        v43 = 0;
        v125 = 0u;
        v126 = 0u;
        v124 = 0u;
        goto LABEL_19;
      }

      v43 = *(v26 + 64 + 8 * v45);
      ++v40;
      if (v43)
      {
        v40 = v45;
        goto LABEL_18;
      }
    }
  }

  while (1)
  {
    v45 = v40;
LABEL_18:
    v46 = __clz(__rbit64(v43));
    v43 &= v43 - 1;
    v47 = v46 | (v45 << 6);
    v48 = (*(v26 + 48) + 16 * v47);
    v50 = *v48;
    v49 = v48[1];
    sub_22508DF28(*(v26 + 56) + 32 * v47, v123);
    *&v124 = v50;
    *(&v124 + 1) = v49;
    sub_2250B28C8(v123, &v125);

LABEL_19:
    aBlock = v124;
    v128 = v125;
    v129 = v126;
    v51 = *(&v124 + 1);
    if (!*(&v124 + 1))
    {
      break;
    }

    v52 = aBlock;
    sub_2250B28C8(&v128, &v124);
    v53 = [v120 appleAccount];
    sub_225073BAC(&v124, *(&v125 + 1));
    v54 = _bridgeAnythingToObjectiveC<A>(_:)();
    sub_2250B1F50(v54, v52, v51, v53);

    swift_unknownObjectRelease();
    sub_225073BF0(&v124);
    if (!v43)
    {
      goto LABEL_14;
    }
  }

  v55 = sub_2250FC6B4(v114);

  if (v55)
  {
    v56 = 0;
    v57 = v55 + 64;
    v58 = 1 << *(v55 + 32);
    if (v58 < 64)
    {
      v59 = ~(-1 << v58);
    }

    else
    {
      v59 = -1;
    }

    v60 = v59 & *(v55 + 64);
    v61 = (v58 + 63) >> 6;
    v62 = v118;
    v63 = v119;
    v64 = v117;
    v111 = v55;
    v110 = v55 + 64;
    v109 = v61;
LABEL_28:
    if (!v60)
    {
      while (1)
      {
        v65 = v56 + 1;
        if (__OFADD__(v56, 1))
        {
          goto LABEL_65;
        }

        if (v65 >= v61)
        {

          v104 = v62;
          v105 = v108;
          v106 = v112;
          goto LABEL_60;
        }

        v60 = *(v57 + 8 * v65);
        ++v56;
        if (v60)
        {
          goto LABEL_33;
        }
      }
    }

    v65 = v56;
LABEL_33:
    v115 = v65;
    v66 = __clz(__rbit64(v60)) | (v65 << 6);
    v67 = (*(v55 + 48) + 16 * v66);
    v68 = *v67;
    v69 = v67[1];
    v70 = *(*(v55 + 56) + 8 * v66);

    v71 = MEMORY[0x22AA62D80](v68, v69);

    v72 = [v120 appleAccount];
    v114 = v71;
    v113 = v71;
    v73 = [v72 propertiesForDataclass_];

    if (v73)
    {
      v74 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
    }

    else
    {
      v74 = Dictionary.init(dictionaryLiteral:)();
    }

    v75 = 0;
    v116 = (v60 - 1) & v60;
    v76 = 1 << *(v70 + 32);
    if (v76 < 64)
    {
      v77 = ~(-1 << v76);
    }

    else
    {
      v77 = -1;
    }

    v78 = v77 & *(v70 + 64);
    v79 = (v76 + 63) >> 6;
    while (v78)
    {
      v80 = v75;
LABEL_46:
      v81 = __clz(__rbit64(v78));
      v78 &= v78 - 1;
      v82 = v81 | (v80 << 6);
      v83 = (*(v70 + 48) + 16 * v82);
      v85 = *v83;
      v84 = v83[1];
      sub_22508DF28(*(v70 + 56) + 32 * v82, v123);
      *&v124 = v85;
      *(&v124 + 1) = v84;
      sub_2250B28C8(v123, &v125);

LABEL_47:
      aBlock = v124;
      v128 = v125;
      v129 = v126;
      v86 = *(&v124 + 1);
      if (!*(&v124 + 1))
      {

        v102 = [v120 appleAccount];
        sub_2250B1EC0(v74, v114, v102);

        v103 = v113;
        v56 = v115;
        v62 = v118;
        v63 = v119;
        v64 = v117;
        v55 = v111;
        v57 = v110;
        v61 = v109;
        v60 = v116;
        goto LABEL_28;
      }

      v87 = aBlock;
      sub_2250B28C8(&v128, v123);
      *&v122[0] = v87;
      *(&v122[0] + 1) = v86;
      AnyHashable.init<A>(_:)();
      sub_22508DF28(v123, v122);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v121 = v74;
      v89 = sub_2250D727C(&v124);
      v91 = v74[2];
      v92 = (v90 & 1) == 0;
      v93 = v91 + v92;
      if (__OFADD__(v91, v92))
      {
        goto LABEL_63;
      }

      v94 = v89;
      v95 = v90;
      sub_2250B0DFC(&qword_27D718C98, &unk_225443F20);
      if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v93))
      {
        v96 = sub_2250D727C(&v124);
        if ((v95 & 1) != (v97 & 1))
        {
          goto LABEL_68;
        }

        v94 = v96;
      }

      v74 = v121;
      if (v95)
      {
        v98 = (v121[7] + 32 * v94);
        sub_225073BF0(v98);
        sub_2250B28C8(v122, v98);
        sub_2250B28FC(&v124);
        sub_225073BF0(v123);
      }

      else
      {
        v121[(v94 >> 6) + 8] |= 1 << v94;
        sub_22508DECC(&v124, v74[6] + 40 * v94);
        sub_2250B28C8(v122, (v74[7] + 32 * v94));
        sub_2250B28FC(&v124);
        sub_225073BF0(v123);
        v99 = v74[2];
        v100 = __OFADD__(v99, 1);
        v101 = v99 + 1;
        if (v100)
        {
          goto LABEL_64;
        }

        v74[2] = v101;
      }
    }

    while (1)
    {
      v80 = v75 + 1;
      if (__OFADD__(v75, 1))
      {
        break;
      }

      if (v80 >= v79)
      {
        v78 = 0;
        v125 = 0u;
        v126 = 0u;
        v124 = 0u;
        goto LABEL_47;
      }

      v78 = *(v70 + 64 + 8 * v80);
      ++v75;
      if (v78)
      {
        v75 = v80;
        goto LABEL_46;
      }
    }

    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v104 = v112;
  v106 = v119;
  v64 = v118;
  v105 = v117;
  v63 = v108;
LABEL_60:

  return v120;
}

uint64_t sub_2250AC9EC()
{
  _s29ExplicitCredentialAccountListCMa();
  v0 = swift_allocObject();
  sub_2250B0DFC(&qword_27D718C90, &qword_225443F18);
  result = swift_allocObject();
  *(result + 24) = 0;
  *(result + 16) = MEMORY[0x277D84F98];
  *(v0 + 16) = result;
  off_27D718AC8 = v0;
  return result;
}

uint64_t sub_2250ACA5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = a1 == a5 && a2 == a6;
  if (v12 || (v13 = _stringCompareWithSmolCheck(_:_:expecting:)(), result = 0, (v13 & 1) != 0))
  {
    if (a3 == a7 && a4 == a8)
    {
      return 1;
    }

    else
    {

      return _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  return result;
}

uint64_t sub_2250ACAFC()
{
  String.hash(into:)();

  return String.hash(into:)();
}

Swift::Int sub_2250ACB4C()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_2250ACBBC()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  return sub_2250ACB4C();
}

uint64_t sub_2250ACBC8()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  return sub_2250ACAFC();
}

Swift::Int sub_2250ACBD4()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  Hasher.init(_seed:)();
  String.hash(into:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

unint64_t sub_2250ACC54@<X0>(unint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v7 = *result;
  if (*(*result + 16) && (result = sub_2250D72C0(a2, a3, a4, a5), (v8 & 1) != 0))
  {
    v9 = *(*(v7 + 56) + 8 * result);
    result = v9;
  }

  else
  {
    v9 = 0;
  }

  *a6 = v9;
  return result;
}

double sub_2250ACCC0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  if (*(a3 + 16) && (v6 = sub_22507DF9C(a1, a2), (v7 & 1) != 0))
  {
    v8 = *(a3 + 56) + 32 * v6;

    sub_22508DF28(v8, a4);
  }

  else
  {
    result = 0.0;
    *a4 = 0u;
    a4[1] = 0u;
  }

  return result;
}

uint64_t sub_2250ACD24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_22507DF9C(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = *(*(a3 + 56) + 8 * v4);
}

double sub_2250ACD74@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  if (*(a2 + 16) && (v5 = sub_2250D727C(a1), (v6 & 1) != 0))
  {
    v7 = *(a2 + 56) + 32 * v5;

    sub_22508DF28(v7, a3);
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

uint64_t sub_2250ACDD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_22507DF9C(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = (*(a3 + 56) + 16 * v4);
  v7 = *v6;
  v8 = v6[1];

  return v7;
}

void sub_2250ACE30()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock((v1 + 24));
  sub_2250B28D8((v1 + 16));
  os_unfair_lock_unlock((v1 + 24));
}

void sub_2250ACE8C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v11 = a6;
  v12 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *a1;
  sub_225102674(v11, a2, a3, a4, a5, isUniquelyReferenced_nonNull_native);
  *a1 = v14;
}

uint64_t sub_2250ACF24()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

id static CKDBackingExplicitCredentialsAccount.explicitCredentialsAccount(withEmail:password:recoveryKey:propertyOverrides:overridesByDataclass:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v61 = a5;
  v15 = type metadata accessor for Logger();
  v16 = sub_225072D1C(v15);
  v60 = v17;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v16);
  v21 = &v54 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = [objc_opt_self() currentPersona];
  if (v22)
  {
    v23 = v22;
    v59 = v15;
    v24 = CKPersona.isDataSeparated.getter();
    if (v24 != 2 && (v24 & 1) != 0)
    {
      v25 = [v23 identifier];
      v56 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v57 = v26;

      if (a7)
      {
        v27 = *MEMORY[0x277CB8B18];
        v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        sub_2250ACCC0(v28, v29, a7, &v64);

        if (*(&v65 + 1))
        {
          if (swift_dynamicCast())
          {
            v58 = v63;
            v30 = v56 == v62 && v57 == v63;
            if (v30 || (v55 = v62, (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
            {

              goto LABEL_15;
            }

LABEL_31:
            CKLog.getter();

            v46 = v57;

            v47 = Logger.logObject.getter();
            v48 = static os_log_type_t.info.getter();

            if (os_log_type_enabled(v47, v48))
            {
              v49 = sub_225082610();
              v62 = swift_slowAlloc();
              *v49 = 136315650;
              v50 = sub_225095AFC(v56, v46, &v62);

              *(v49 + 4) = v50;
              *(v49 + 12) = 2080;
              *(v49 + 14) = sub_225095AFC(a1, a2, &v62);
              *(v49 + 22) = 2080;
              *&v64 = v55;
              *(&v64 + 1) = v58;
              sub_2250B0DFC(&qword_27D718AE8, &qword_2254464B0);
              v51 = String.init<A>(describing:)();
              v53 = sub_225095AFC(v51, v52, &v62);

              *(v49 + 24) = v53;
              _os_log_impl(&dword_22506F000, v47, v48, "Current persona identifier %s does not match persona override on requested fake account %s: %s. Not returning an account", v49, 0x20u);
              swift_arrayDestroy();
              sub_22507C9FC();
              sub_22507C9FC();
            }

            else
            {
            }

            (*(v60 + 8))(v21, v59);
            return 0;
          }

LABEL_30:
          v55 = 0;
          v58 = 0;
          goto LABEL_31;
        }
      }

      else
      {
        v64 = 0u;
        v65 = 0u;
      }

      sub_22507F168(&v64, &qword_27D718AE0, &unk_225443AA0);
      goto LABEL_30;
    }
  }

  if (a7)
  {
LABEL_15:
    v31 = a7;
    goto LABEL_17;
  }

  v31 = Dictionary.init(dictionaryLiteral:)();
LABEL_17:
  v32 = a3;

  if (a8)
  {
    v33 = a8;
  }

  else
  {
    v33 = Dictionary.init(dictionaryLiteral:)();
  }

  if (*(v31 + 16) || *(v33 + 16))
  {
    sub_2250B0D98();

    v34 = sub_22507F254();
    return sub_2250ABE40(v34, v35, v36, v37, v61, a6);
  }

  else
  {

    if (qword_27D718AC0 != -1)
    {
      v40 = swift_once();
    }

    v41 = *(off_27D718AC8 + 2);
    MEMORY[0x28223BE20](v40);
    *(&v54 - 4) = a1;
    *(&v54 - 3) = a2;
    *(&v54 - 2) = v32;
    *(&v54 - 1) = a4;
    os_unfair_lock_lock(v41 + 6);
    sub_2250B0DDC(&v41[4], &v64);
    os_unfair_lock_unlock(v41 + 6);
    v38 = v64;
    if (!v64)
    {
      v60 = sub_2250B0D98();

      Dictionary.init(dictionaryLiteral:)();
      Dictionary.init(dictionaryLiteral:)();
      v42 = sub_22507F254();
      v38 = sub_2250ABE40(v42, v43, v44, v45, v61, a6);
      sub_2250ACE30();
    }
  }

  return v38;
}

void sub_2250AD6B8(uint64_t a1, void *a2, const void *a3)
{
  v158 = a3;
  v171 = type metadata accessor for DispatchTime();
  v159 = *(v171 - 8);
  v4 = *(v159 + 64);
  MEMORY[0x28223BE20](v171);
  v170 = &v152 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v155 = &v152 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v156 = &v152 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v153 = &v152 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v154 = &v152 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v162 = &v152 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v161 = &v152 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v23 = &v152 - v22;
  MEMORY[0x28223BE20](v21);
  v25 = &v152 - v24;
  CKLog.getter();
  v26 = a2;
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.info.getter();
  v29 = os_log_type_enabled(v27, v28);
  v30 = &OBJC_INSTANCE_METHODS_CKSQLiteDelegate;
  v166 = 0;
  v157 = v7;
  if (v29)
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    aBlock = v32;
    *v31 = 136315138;
    v33 = sub_2250B2098([v26 appleAccount], &selRef_username);
    v30 = v26;
    if (!v34)
    {
LABEL_59:
      _Block_release(v158);

      __break(1u);
LABEL_60:
      _Block_release(v158);

      __break(1u);
LABEL_61:
      _Block_release(v158);

      __break(1u);
      return;
    }

    v35 = v33;
    v36 = v34;

    v37 = sub_225095AFC(v35, v36, &aBlock);

    *(v31 + 4) = v37;
    _os_log_impl(&dword_22506F000, v27, v28, "Fetching account info for fake account with email %s", v31, 0xCu);
    sub_225073BF0(v32);
    MEMORY[0x22AA65DF0](v32, -1, -1);
    MEMORY[0x22AA65DF0](v31, -1, -1);

    v7 = v157;
    v172 = *(v157 + 8);
    v172(v25, v6);
    v26 = v30;
  }

  else
  {

    v172 = *(v7 + 8);
    v172(v25, v6);
  }

  v38 = v159;
  v39 = [objc_opt_self() sharedAccountStore];
  v169 = [v39 accountStore];

  v165 = sub_2250B2038(v26, &selRef_hsa2RecoveryKey);
  v167 = v41;
  v168 = v6;
  v173 = v26;
  v42 = &OBJC_INSTANCE_METHODS_CKSQLiteDelegate;
  if (!v41)
  {
    goto LABEL_20;
  }

  v164 = (v7 + 8);
  *&v163 = &v176;
  v43 = (v38 + 8);
  v44 = 2;
  *&v40 = 138412290;
  v160 = v40;
  while (1)
  {
    CKLog.getter();
    v45 = v26;
    v46 = Logger.logObject.getter();
    v47 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v46, v47))
    {
      v30 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v30->entrysize = v160;
      *&v30->count = v45;
      *v48 = v26;
      v49 = v45;
      _os_log_impl(&dword_22506F000, v46, v47, "Calculating HSA2DevicePassword for %@", v30, 0xCu);
      sub_22507F168(v48, &unk_27D719030, &qword_225443AB0);
      MEMORY[0x22AA65DF0](v48, -1, -1);
      MEMORY[0x22AA65DF0](v30, -1, -1);
    }

    v172(v23, v6);
    v50 = [objc_allocWithZone(MEMORY[0x277CF0170]) init];
    v51 = sub_2250B2098([v45 appleAccount], &selRef_username);
    if (v52)
    {
      v30 = v52;
      v53 = MEMORY[0x22AA62D80](v51);
    }

    else
    {
      v53 = 0;
    }

    [v50 setUsername_];

    [v50 setIsUsernameEditable_];
    [v50 setServiceType_];
    v54 = sub_2250B2038(v45, &selRef_hsa2AccountPassword);
    if (v55)
    {
      v30 = v55;
      v56 = MEMORY[0x22AA62D80](v54);
    }

    else
    {
      v56 = 0;
    }

    [v50 _setPassword_];

    sub_2250B1FE0(v165, v167, v50);
    [v50 setAuthenticationType_];
    [v50 setIsEphemeral_];
    v57 = [objc_allocWithZone(MEMORY[0x277CF0178]) init];
    if (!v57)
    {
      _Block_release(v158);
      __break(1u);
LABEL_57:
      _Block_release(v158);

      __break(1u);
LABEL_58:
      _Block_release(v158);

      __break(1u);
      goto LABEL_59;
    }

    v58 = v57;
    [v57 setDelegate_];
    v59 = dispatch_semaphore_create(0);
    v60 = swift_allocObject();
    *(v60 + 16) = v59;
    v178 = sub_2250B2D68;
    v179 = v60;
    aBlock = MEMORY[0x277D85DD0];
    v175 = 1107296256;
    v176 = sub_2250AFE7C;
    v177 = &unk_28385A268;
    v61 = _Block_copy(&aBlock);
    v30 = v50;
    v62 = v59;

    [v58 authenticateWithContext:v30 completion:v61];
    _Block_release(v61);

    v63 = v170;
    static DispatchTime.distantFuture.getter();
    MEMORY[0x22AA630F0](v63);
    (*v43)(v63, v171);
    v64 = sub_2250B2038(v45, &selRef_hsa2DevicePassword);
    if (v65)
    {
      v66 = v64;
      v67 = v65;

      v68 = objc_allocWithZone(MEMORY[0x277CB8F38]);
      v69 = sub_2250B0EA4(v66, v67);
      v70 = [v45 appleAccount];
      [v70 setCredential_];

      v6 = v168;
      v26 = v173;
      v38 = v159;
      v7 = v157;
      v42 = &OBJC_INSTANCE_METHODS_CKSQLiteDelegate;
LABEL_20:
      v164 = (v38 + 8);
      v165 = &v176;
      v167 = v7 + 8;
      v71 = 2;
      *&v40 = v42[337];
      v163 = v40;
      v72 = &selRef_allowsPowerNapScheduling;
      v73 = v169;
      if (!v169)
      {
        goto LABEL_23;
      }

      while (1)
      {
        v74 = swift_allocObject();
        *(v74 + 16) = 0;
        *(v74 + 24) = 0;
        *(v74 + 32) = 0;
        v75 = v73;
        v76 = dispatch_semaphore_create(0);
        v77 = [v26 v72[38]];
        v78 = swift_allocObject();
        *(v78 + 16) = v74;
        *(v78 + 24) = v76;
        v178 = sub_2250B2D5C;
        v179 = v78;
        aBlock = MEMORY[0x277D85DD0];
        v175 = 1107296256;
        v176 = sub_2250B2D88;
        v177 = &unk_28385A218;
        v79 = _Block_copy(&aBlock);

        v80 = v76;

        [v75 aa:v77 updatePropertiesForAppleAccount:v79 completion:?];
        v81 = v79;
        v82 = v80;
        _Block_release(v81);

        v83 = v170;
        static DispatchTime.distantFuture.getter();
        MEMORY[0x22AA630F0](v83);
        (*v164)(v83, v171);
        os_unfair_lock_lock((v74 + 16));
        v84 = *(v74 + 24);
        LOBYTE(v77) = *(v74 + 32);
        sub_2250B21A0(v84, v77);
        os_unfair_lock_unlock((v74 + 16));
        if (v77)
        {
          aBlock = v84;
          v85 = v84;
          sub_2250B0DFC(&qword_27D718B00, &unk_225444460);
          swift_willThrowTypedImpl();

          sub_2250B21AC(v84, 1);

          v72 = &selRef_allowsPowerNapScheduling;
        }

        else
        {
          v166 = v75;
          if (v84)
          {
            v118 = v173;
            v119 = [v173 ckAccount];
            if (v119)
            {

              v120 = v154;
              CKLog.getter();
              v26 = v118;
              v121 = Logger.logObject.getter();
              v122 = static os_log_type_t.info.getter();
              if (os_log_type_enabled(v121, v122))
              {
                v123 = v82;
                v124 = swift_slowAlloc();
                v125 = swift_slowAlloc();
                v180 = v125;
                *v124 = 136315394;
                v126 = sub_2250B2098([v26 appleAccount], &selRef_username);
                if (!v127)
                {
                  goto LABEL_60;
                }

                v128 = v126;
                v129 = v127;

                v130 = sub_225095AFC(v128, v129, &v180);

                *(v124 + 4) = v130;
                *(v124 + 12) = 2080;
                aBlock = sub_2250B2038(v26, &selRef_dsid);
                v175 = v131;
                sub_2250B0DFC(&qword_27D718AE8, &qword_2254464B0);
                v132 = String.init<A>(describing:)();
                v134 = sub_225095AFC(v132, v133, &v180);

                *(v124 + 14) = v134;
                _os_log_impl(&dword_22506F000, v121, v122, "Initialized fake account with email %s and dsid %s", v124, 0x16u);
                swift_arrayDestroy();
                MEMORY[0x22AA65DF0](v125, -1, -1);
                MEMORY[0x22AA65DF0](v124, -1, -1);

                v135 = v166;
                v136 = &v182;
                goto LABEL_53;
              }

LABEL_54:

              v135 = v166;
              v150 = v120;
              v151 = v6;
            }

            else
            {
              v120 = v153;
              CKLog.getter();
              v26 = v118;
              v121 = Logger.logObject.getter();
              v137 = static os_log_type_t.error.getter();
              if (!os_log_type_enabled(v121, v137))
              {
                goto LABEL_54;
              }

              v138 = v82;
              v139 = swift_slowAlloc();
              v140 = swift_slowAlloc();
              v180 = v140;
              *v139 = 136315394;
              v141 = sub_2250B2098([v26 appleAccount], &selRef_username);
              if (!v142)
              {
                goto LABEL_61;
              }

              v143 = v141;
              v144 = v142;

              v145 = sub_225095AFC(v143, v144, &v180);

              *(v139 + 4) = v145;
              *(v139 + 12) = 2080;
              aBlock = sub_2250B2038(v26, &selRef_dsid);
              v175 = v146;
              sub_2250B0DFC(&qword_27D718AE8, &qword_2254464B0);
              v147 = String.init<A>(describing:)();
              v149 = sub_225095AFC(v147, v148, &v180);

              *(v139 + 14) = v149;
              _os_log_impl(&dword_22506F000, v121, v137, "Initialized fake AppleAccount for email %s / dsid %s lacked a cloudKit auth token", v139, 0x16u);
              swift_arrayDestroy();
              MEMORY[0x22AA65DF0](v140, -1, -1);
              MEMORY[0x22AA65DF0](v139, -1, -1);

              v135 = v166;
              v136 = &v181;
LABEL_53:
              v150 = *(v136 - 32);
              v151 = v168;
            }

            v172(v150, v151);

            v115 = v158;
            (*(v158 + 2))(v158, 1, 0);

            goto LABEL_45;
          }

          v94 = v82;
          v95 = v162;
          CKLog.getter();
          v45 = v173;
          v96 = Logger.logObject.getter();
          v30 = static os_log_type_t.error.getter();
          v72 = &selRef_allowsPowerNapScheduling;
          if (os_log_type_enabled(v96, v30))
          {
            v97 = swift_slowAlloc();
            v26 = swift_slowAlloc();
            aBlock = v26;
            *v97 = v163;
            v98 = sub_2250B2098([v45 appleAccount], &selRef_username);
            if (!v99)
            {
              goto LABEL_58;
            }

            v100 = v98;
            v101 = v99;

            v102 = sub_225095AFC(v100, v101, &aBlock);

            *(v97 + 4) = v102;
            _os_log_impl(&dword_22506F000, v96, v30, "Error initializing fake account with email %s,  no error available", v97, 0xCu);
            sub_225073BF0(v26);
            MEMORY[0x22AA65DF0](v26, -1, -1);
            MEMORY[0x22AA65DF0](v97, -1, -1);

            v6 = v168;
            v172(v162, v168);
            v72 = &selRef_allowsPowerNapScheduling;
          }

          else
          {

            v172(v95, v6);
          }

          type metadata accessor for CKError(0);
          v180 = 9;
          sub_2250B19E8(MEMORY[0x277D84F90]);
          sub_2250B2370(&unk_280D53590, type metadata accessor for CKError);
          _BridgedStoredNSError.init(_:userInfo:)();
          v84 = aBlock;
          swift_willThrow();

          v166 = 0;
        }

        v73 = v169;
        if (!v71)
        {
LABEL_38:
          v103 = v156;
          CKLog.getter();
          v104 = v84;
          v105 = Logger.logObject.getter();
          v106 = static os_log_type_t.info.getter();

          if (os_log_type_enabled(v105, v106))
          {
            v107 = swift_slowAlloc();
            v108 = swift_slowAlloc();
            *v107 = 138412290;
            v109 = v84;
            v110 = _swift_stdlib_bridgeErrorToNSError();
            *(v107 + 4) = v110;
            *v108 = v110;
            _os_log_impl(&dword_22506F000, v105, v106, "Giving up on auth token renewal due to too many errors: %@", v107, 0xCu);
            sub_22507F168(v108, &unk_27D719030, &qword_225443AB0);
            MEMORY[0x22AA65DF0](v108, -1, -1);
            MEMORY[0x22AA65DF0](v107, -1, -1);
          }

          v172(v103, v6);
          swift_willThrow();

          goto LABEL_44;
        }

        while (1)
        {

          --v71;
          v26 = v173;
          if (v73)
          {
            break;
          }

LABEL_23:
          v86 = v161;
          CKLog.getter();
          v45 = v26;
          v87 = Logger.logObject.getter();
          v88 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v87, v88))
          {
            v26 = swift_slowAlloc();
            v30 = swift_slowAlloc();
            aBlock = v30;
            *v26 = v163;
            v89 = sub_2250B2098([v45 v72[38]], &selRef_username);
            if (!v90)
            {
              goto LABEL_57;
            }

            v91 = v89;
            v92 = v90;

            v93 = sub_225095AFC(v91, v92, &aBlock);

            *(v26 + 1) = v93;
            _os_log_impl(&dword_22506F000, v87, v88, "Error initializing fake account with email %s, no account store available", v26, 0xCu);
            sub_225073BF0(v30);
            MEMORY[0x22AA65DF0](v30, -1, -1);
            MEMORY[0x22AA65DF0](v26, -1, -1);

            v172(v86, v6);
            v72 = &selRef_allowsPowerNapScheduling;
            v73 = v169;
          }

          else
          {

            v172(v86, v6);
          }

          type metadata accessor for CKError(0);
          v180 = 9;
          sub_2250B19E8(MEMORY[0x277D84F90]);
          sub_2250B2370(&unk_280D53590, type metadata accessor for CKError);
          _BridgedStoredNSError.init(_:userInfo:)();
          v84 = aBlock;
          swift_willThrow();
          v166 = 0;
          if (!v71)
          {
            goto LABEL_38;
          }
        }
      }
    }

    v6 = v168;
    v26 = v173;
    if (!v44)
    {
      break;
    }

    --v44;
  }

  v111 = v155;
  CKLog.getter();
  v112 = Logger.logObject.getter();
  v113 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v112, v113))
  {
    v114 = swift_slowAlloc();
    *v114 = 0;
    _os_log_impl(&dword_22506F000, v112, v113, "Giving up on auth token renewal due to too many HSA2 errors", v114, 2u);
    MEMORY[0x22AA65DF0](v114, -1, -1);
  }

  v172(v111, v6);
  type metadata accessor for CKError(0);
  v180 = 9;
  sub_2250B19E8(MEMORY[0x277D84F90]);
  sub_2250B2370(&unk_280D53590, type metadata accessor for CKError);
  _BridgedStoredNSError.init(_:userInfo:)();
  v84 = aBlock;
  swift_willThrow();

LABEL_44:
  v115 = v158;
  v116 = v84;
  v117 = _convertErrorToNSError(_:)();
  v115[2](v115, 0, v117);

LABEL_45:
  _Block_release(v115);
}

void CKDBackingExplicitCredentialsAccount.renewAuthToken(options:completionHandler:)(uint64_t a1, void (*a2)(uint64_t, void), uint64_t a3)
{
  v164 = a3;
  v165 = a2;
  v180 = type metadata accessor for DispatchTime();
  v4 = sub_225072D1C(v180);
  v166 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  v179 = v162 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v174 = 0;
  v9 = type metadata accessor for Logger();
  v10 = sub_225072D1C(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v10);
  sub_22507F2B4();
  v16 = MEMORY[0x28223BE20](v15);
  v18 = v162 - v17;
  MEMORY[0x28223BE20](v16);
  sub_22507E6C4();
  sub_22507F2B4();
  MEMORY[0x28223BE20](v19);
  sub_22507E6C4();
  sub_22507F2B4();
  MEMORY[0x28223BE20](v20);
  sub_22507E6C4();
  sub_22507F2B4();
  MEMORY[0x28223BE20](v21);
  sub_22507E6C4();
  sub_22507F2B4();
  v23 = MEMORY[0x28223BE20](v22);
  v25 = v162 - v24;
  MEMORY[0x28223BE20](v23);
  v27 = v162 - v26;
  CKLog.getter();
  v28 = v3;
  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.info.getter();
  v31 = os_log_type_enabled(v29, v30);
  v176 = v9;
  v178 = v18;
  v182 = v28;
  v163 = v12;
  if (v31)
  {
    v32 = sub_22507CA14();
    v33 = sub_225082610();
    aBlock = v33;
    *v32 = 136315138;
    v34 = sub_2250B2098([v28 appleAccount], &selRef_username);
    v36 = v35;

    if (!v36)
    {
LABEL_58:
      __break(1u);
LABEL_59:
      __break(1u);
LABEL_60:
      __break(1u);
      return;
    }

    v37 = sub_225095AFC(v34, v36, &aBlock);

    *(v32 + 4) = v37;
    _os_log_impl(&dword_22506F000, v29, v30, "Fetching account info for fake account with email %s", v32, 0xCu);
    sub_225073BF0(v33);
    sub_22507C9FC();
    sub_22507C9FC();

    sub_22507E988(&v190);
    v9 = v176;
    v181 = *(v38 + 8);
    v181(v27, v176);
    v28 = v182;
  }

  else
  {

    v181 = *(v12 + 8);
    v181(v27, v9);
    v30 = v12;
  }

  v39 = [objc_opt_self() sharedAccountStore];
  v40 = [v39 accountStore];

  v173 = sub_2250B2038(v28, &selRef_hsa2RecoveryKey);
  v177 = v40;
  v42 = &OBJC_INSTANCE_METHODS_CKSQLiteDelegate;
  v175 = v43;
  if (v43)
  {
    v172 = (v30 + 8);
    *&v171 = &v185;
    v170 = (v166 + 8);
    v44 = 2;
    *&v41 = 138412290;
    v167 = v41;
    v45 = &selRef_handleUserIdentityDiscoveryForLookupInfo_userIdentity_;
    for (i = v25; ; v25 = i)
    {
      CKLog.getter();
      v46 = v28;
      v47 = Logger.logObject.getter();
      v48 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v47, v48))
      {
        v49 = sub_22507CA14();
        v50 = sub_2250986A8();
        *v49 = v167;
        *(v49 + 4) = v46;
        *v50 = v182;
        v51 = v46;
        _os_log_impl(&dword_22506F000, v47, v48, "Calculating HSA2DevicePassword for %@", v49, 0xCu);
        sub_22507F168(v50, &unk_27D719030, &qword_225443AB0);
        sub_22507C9FC();
        sub_22507C9FC();
      }

      v181(v25, v9);
      v52 = [objc_allocWithZone(MEMORY[0x277CF0170]) v45[344]];
      v53 = sub_2250B2098([v46 appleAccount], &selRef_username);
      if (v54)
      {
        v55 = MEMORY[0x22AA62D80](v53);
      }

      else
      {
        v55 = 0;
      }

      [v52 setUsername_];

      [v52 setIsUsernameEditable_];
      [v52 setServiceType_];
      v56 = sub_2250B2038(v46, &selRef_hsa2AccountPassword);
      if (v57)
      {
        v58 = MEMORY[0x22AA62D80](v56);
      }

      else
      {
        v58 = 0;
      }

      [v52 _setPassword_];

      sub_2250B1FE0(v173, v175, v52);
      [v52 setAuthenticationType_];
      [v52 setIsEphemeral_];
      v59 = v45;
      v60 = [objc_allocWithZone(MEMORY[0x277CF0178]) v45[344]];
      if (!v60)
      {
        break;
      }

      v61 = v60;
      [v60 setDelegate_];
      v62 = dispatch_semaphore_create(0);
      v63 = swift_allocObject();
      *(v63 + 16) = v62;
      sub_225072BB0(v63);
      v185 = sub_2250AFE7C;
      v186 = &unk_28385A078;
      v64 = _Block_copy(&aBlock);
      v40 = v52;
      v65 = v62;

      [v61 authenticateWithContext:v40 completion:v64];
      _Block_release(v64);

      v66 = v179;
      static DispatchTime.distantFuture.getter();
      MEMORY[0x22AA630F0](v66);
      (*v170)(v66, v180);
      v67 = sub_2250B2038(v46, &selRef_hsa2DevicePassword);
      if (v68)
      {
        v69 = v67;
        v70 = v68;

        v71 = objc_allocWithZone(MEMORY[0x277CB8F38]);
        v72 = sub_2250B0EA4(v69, v70);
        v27 = [v46 appleAccount];
        [v27 setCredential_];

        v9 = v176;
        v40 = v177;
        v28 = v182;
        v30 = v163;
        v42 = &OBJC_INSTANCE_METHODS_CKSQLiteDelegate;
        goto LABEL_20;
      }

      if (!v44)
      {

        v121 = v162[2];
        CKLog.getter();
        v122 = Logger.logObject.getter();
        v123 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v122, v123))
        {
          v124 = swift_slowAlloc();
          *v124 = 0;
          _os_log_impl(&dword_22506F000, v122, v123, "Giving up on auth token renewal due to too many HSA2 errors", v124, 2u);
          sub_22507C9FC();
        }

        v181(v121, v176);
        type metadata accessor for CKError(0);
        sub_225075248();
        v189 = v125;
        sub_2250B19E8(MEMORY[0x277D84F90]);
        sub_225072D04();
        sub_2250B2370(v126, v127);
        sub_2250755F0();
        _BridgedStoredNSError.init(_:userInfo:)();
        v82 = aBlock;
        swift_willThrow();

        goto LABEL_44;
      }

      --v44;
      v9 = v176;
      v28 = v182;
      v45 = v59;
    }

    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

LABEL_20:
  v173 = &v185;
  v172 = (v166 + 8);
  v175 = v30 + 8;
  v73 = 2;
  *&v41 = v42[337];
  v171 = v41;
  if (!v40)
  {
    goto LABEL_24;
  }

  while (1)
  {
    v74 = swift_allocObject();
    *(v74 + 16) = 0;
    *(v74 + 24) = 0;
    *(v74 + 32) = 0;
    v75 = v40;
    v76 = dispatch_semaphore_create(0);
    v77 = [v28 appleAccount];
    v78 = swift_allocObject();
    *(v78 + 16) = v74;
    *(v78 + 24) = v76;
    sub_225072BB0(v78);
    v185 = sub_2250B2D88;
    v186 = &unk_28385A028;
    v79 = _Block_copy(&aBlock);

    v80 = v76;
    v81 = v75;

    [v75 aa:v77 updatePropertiesForAppleAccount:v79 completion:?];
    _Block_release(v79);

    v27 = v179;
    static DispatchTime.distantFuture.getter();
    MEMORY[0x22AA630F0](v27);
    (*v172)(v27, v180);
    os_unfair_lock_lock((v74 + 16));
    v82 = *(v74 + 24);
    v83 = *(v74 + 32);
    sub_2250B21A0(v82, *(v74 + 32));
    os_unfair_lock_unlock((v74 + 16));
    if (v83)
    {
      break;
    }

    if (v82)
    {
      v180 = v81;
      v130 = v182;
      v131 = [v182 ckAccount];
      if (v131)
      {

        sub_22507E988(v188);
        CKLog.getter();
        v132 = v130;
        v133 = Logger.logObject.getter();
        v134 = static os_log_type_t.info.getter();
        if (sub_22507C910(v134))
        {
          v135 = swift_slowAlloc();
          v189 = swift_slowAlloc();
          *v135 = 136315394;
          v136 = sub_2250B2098([v132 appleAccount], &selRef_username);
          v138 = v137;

          if (!v138)
          {
            goto LABEL_59;
          }

          v139 = sub_225095AFC(v136, v138, &v189);

          *(v135 + 4) = v139;
          *(v135 + 12) = 2080;
          aBlock = sub_2250B2038(v132, &selRef_dsid);
          v184 = v140;
          sub_2250B0DFC(&qword_27D718AE8, &qword_2254464B0);
          v141 = String.init<A>(describing:)();
          v143 = sub_225095AFC(v141, v142, &v189);

          *(v135 + 14) = v143;
          sub_22507CC30(&dword_22506F000, v144, v145, "Initialized fake account with email %s and dsid %s");
          swift_arrayDestroy();
          sub_22507C9FC();
          sub_22507C9FC();

          v146 = v180;
          v147 = v188;
          goto LABEL_52;
        }

LABEL_53:

        v146 = v180;
        v160 = v83;
        v161 = v9;
      }

      else
      {
        sub_22507E988(&v187);
        CKLog.getter();
        v132 = v130;
        v133 = Logger.logObject.getter();
        v148 = static os_log_type_t.error.getter();
        if (!sub_22507C910(v148))
        {
          goto LABEL_53;
        }

        v149 = swift_slowAlloc();
        v189 = swift_slowAlloc();
        *v149 = 136315394;
        v150 = sub_2250B2098([v132 appleAccount], &selRef_username);
        v152 = v151;

        if (!v152)
        {
          goto LABEL_60;
        }

        v153 = sub_225095AFC(v150, v152, &v189);

        *(v149 + 4) = v153;
        *(v149 + 12) = 2080;
        aBlock = sub_2250B2038(v132, &selRef_dsid);
        v184 = v154;
        sub_2250B0DFC(&qword_27D718AE8, &qword_2254464B0);
        v155 = String.init<A>(describing:)();
        v157 = sub_225095AFC(v155, v156, &v189);

        *(v149 + 14) = v157;
        sub_22507CC30(&dword_22506F000, v158, v159, "Initialized fake AppleAccount for email %s / dsid %s lacked a cloudKit auth token");
        swift_arrayDestroy();
        sub_22507C9FC();
        sub_22507C9FC();

        v146 = v180;
        v147 = &v187;
LABEL_52:
        v160 = *(v147 - 32);
        v161 = v176;
      }

      v181(v160, v161);

      v165(1, 0);

      return;
    }

    v174 = v80;
    v96 = v81;
    sub_22507E988(&v191);
    CKLog.getter();
    v28 = v182;
    v97 = v182;
    v98 = Logger.logObject.getter();
    v99 = static os_log_type_t.error.getter();
    if (sub_22507C910(v99))
    {
      v100 = sub_22507CA14();
      v101 = sub_225082610();
      v102 = [v97 appleAccount];
      v103 = sub_2250B2098(v102, &selRef_username);
      v105 = v104;

      if (!v105)
      {
        goto LABEL_57;
      }

      v106 = sub_225095AFC(v103, v105, &aBlock);

      *(v100 + 4) = v106;
      _os_log_impl(&dword_22506F000, v98, v27, "Error initializing fake account with email %s,  no error available", v100, 0xCu);
      sub_225073BF0(v101);
      sub_22507C9FC();
      sub_22507C9FC();

      v9 = v176;
      v181(v168, v176);
      v28 = v182;
    }

    else
    {

      sub_22509861C();
      v110();
    }

    type metadata accessor for CKError(0);
    sub_225075248();
    v189 = v111;
    sub_2250B19E8(MEMORY[0x277D84F90]);
    sub_225072D04();
    sub_2250B2370(&unk_280D53590, v112);
    sub_2250755F0();
    _BridgedStoredNSError.init(_:userInfo:)();
    v82 = aBlock;
    LOBYTE(v27) = aBlock;
    swift_willThrow();

    v174 = 0;
    v40 = v177;
    if (!v73)
    {
      goto LABEL_38;
    }

LABEL_36:
    while (1)
    {

      --v73;
      if (v40)
      {
        break;
      }

LABEL_24:
      CKLog.getter();
      v85 = v28;
      v86 = Logger.logObject.getter();
      v87 = static os_log_type_t.error.getter();
      if (sub_22507C910(v87))
      {
        v88 = sub_22507CA14();
        v89 = sub_225082610();
        v90 = [v85 appleAccount];
        v91 = sub_2250B2098(v90, &selRef_username);
        v93 = v92;

        if (!v93)
        {
          goto LABEL_56;
        }

        v94 = sub_225095AFC(v91, v93, &aBlock);

        *(v88 + 4) = v94;
        _os_log_impl(&dword_22506F000, v86, v27, "Error initializing fake account with email %s, no account store available", v88, 0xCu);
        sub_225073BF0(v89);
        sub_22507C9FC();
        sub_22507C9FC();

        sub_22509861C();
        v95();
        v40 = v177;
        v28 = v182;
      }

      else
      {

        sub_22509861C();
        v107();
      }

      type metadata accessor for CKError(0);
      sub_225075248();
      v189 = v108;
      sub_2250B19E8(MEMORY[0x277D84F90]);
      sub_225072D04();
      sub_2250B2370(&unk_280D53590, v109);
      sub_2250755F0();
      _BridgedStoredNSError.init(_:userInfo:)();
      v82 = aBlock;
      LOBYTE(v27) = aBlock;
      swift_willThrow();
      v174 = 0;
      if (!v73)
      {
        goto LABEL_38;
      }
    }
  }

  aBlock = v82;
  v84 = v82;
  sub_2250B0DFC(&qword_27D718B00, &unk_225444460);
  swift_willThrowTypedImpl();

  sub_2250B21AC(v82, 1);

  v40 = v177;
  v28 = v182;
  if (v73)
  {
    goto LABEL_36;
  }

LABEL_38:
  CKLog.getter();
  v113 = v82;
  v114 = Logger.logObject.getter();
  v115 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v114, v115))
  {
    v116 = sub_22507CA14();
    v117 = sub_2250986A8();
    *v116 = 138412290;
    v118 = v82;
    v119 = _swift_stdlib_bridgeErrorToNSError();
    *(v116 + 4) = v119;
    *v117 = v119;
    _os_log_impl(&dword_22506F000, v114, v115, "Giving up on auth token renewal due to too many errors: %@", v116, 0xCu);
    sub_22507F168(v117, &unk_27D719030, &qword_225443AB0);
    sub_22507C9FC();
    sub_22507C9FC();
  }

  sub_22509861C();
  v120();
  swift_willThrow();
LABEL_44:

  v128 = v165;
  v129 = v82;
  v128(0, v82);
}

uint64_t sub_2250AFE7C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  if (a2)
  {
    sub_2250B0DFC(&unk_27D718C70, &qword_225443EF8);
    v4 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v7 = a3;
  v6(v4, a3);
}

Swift::Int sub_2250AFF2C(char a1, id a2, uint64_t a3)
{
  if (a2)
  {
    v5 = a2;
    os_unfair_lock_lock((a3 + 16));
    sub_2250B21AC(*(a3 + 24), *(a3 + 32));
    *(a3 + 24) = a2;
    *(a3 + 32) = 1;
  }

  else
  {
    os_unfair_lock_lock((a3 + 16));
    sub_2250B21AC(*(a3 + 24), *(a3 + 32));
    *(a3 + 24) = a1 & 1;
    *(a3 + 32) = 0;
  }

  os_unfair_lock_unlock((a3 + 16));
  return OS_dispatch_semaphore.signal()();
}

void sub_2250AFFBC(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v7 = a3;
  v6(a2, a3);
}

uint64_t sub_2250B00F4()
{
  v1 = v0[4];
  sub_2250ABA70();
  type metadata accessor for CKError(0);
  sub_225075248();
  v0[3] = v2;
  sub_2250B19E8(MEMORY[0x277D84F90]);
  sub_225072D04();
  sub_2250B2370(v3, v4);
  _BridgedStoredNSError.init(_:userInfo:)();
  v5 = v0[2];
  swift_willThrow();
  v6 = v0[1];

  return v6(0);
}

uint64_t sub_2250B0248(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_2250B02F0;

  return CKDBackingExplicitCredentialsAccount.updateAccountPropertiesAndSave()();
}

uint64_t sub_2250B02F0(char a1)
{
  v3 = v1;
  v6 = *v2;
  v5 = *v2;
  v7 = *(*v2 + 32);
  v8 = *(*v2 + 16);
  v9 = *v2;

  v10 = *(v5 + 24);
  if (v3)
  {
    v11 = _convertErrorToNSError(_:)();

    (*(v10 + 16))(v10, 0, v11);
  }

  else
  {
    (*(v10 + 16))(v10, a1 & 1, 0);
  }

  _Block_release(*(v6 + 24));
  v12 = *(v9 + 8);

  return v12();
}

void sub_2250B0480(void *a1)
{
  v3 = sub_2250B2098([v1 appleAccount], &selRef_aa_password);
  if (v4)
  {
    v5 = MEMORY[0x22AA62D80](v3);
  }

  else
  {
    v5 = 0;
  }

  [a1 _setPassword_];
}

id CKDBackingExplicitCredentialsAccount.ckAccount.getter()
{
  v1 = [v0 fakeCKAccount];

  return v1;
}

void sub_2250B0660()
{
  v1 = [v0 appleAccount];
  v2 = [v1 credential];

  if (!v2)
  {
    __break(1u);
    goto LABEL_5;
  }

  sub_2250B2098(v2, &selRef_password);
  if (!v3)
  {
LABEL_5:
    __break(1u);
  }
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> CKDBackingExplicitCredentialsAccount.cloudKitAuthToken()()
{
  v1 = [v0 ckAccount];
  if (!v1)
  {
    goto LABEL_4;
  }

  v2 = v1;
  v3 = [v1 credential];

  if (v3)
  {
    v4 = sub_2250B2098(v3, &selRef_token);
    if (!v5)
    {
LABEL_4:
      type metadata accessor for CKError(0);
      sub_225075248();
      sub_2250B19E8(MEMORY[0x277D84F90]);
      sub_225072D04();
      sub_2250B2370(v6, v7);
      sub_22507CE70();
      v4 = swift_willThrow();
    }
  }

  else
  {
    __break(1u);
  }

  result._object = v5;
  result._countAndFlagsBits = v4;
  return result;
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> CKDBackingExplicitCredentialsAccount.iCloudAuthToken()()
{
  v1 = [v0 appleAccount];
  v2 = [v1 credential];

  if (v2)
  {
    v3 = sub_2250B2098(v2, &selRef_token);
    if (!v4)
    {
      type metadata accessor for CKError(0);
      sub_225075248();
      sub_2250B19E8(MEMORY[0x277D84F90]);
      sub_225072D04();
      sub_2250B2370(v5, v6);
      sub_22507CE70();
      v3 = swift_willThrow();
    }
  }

  else
  {
    __break(1u);
  }

  result._object = v4;
  result._countAndFlagsBits = v3;
  return result;
}

id sub_2250B08C0(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v5 = a1;
  v6 = a4();
  v8 = v7;

  v9 = MEMORY[0x22AA62D80](v6, v8);

  return v9;
}

uint64_t CKDBackingExplicitCredentialsAccount.authenticationController(_:shouldContinueWithAuthenticationResults:error:for:)(uint64_t a1, void *a2, void *a3)
{
  v6 = type metadata accessor for Logger();
  v7 = sub_225072D1C(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v7);
  v14 = v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v12);
  v17 = v35 - v16;
  if (a3)
  {
    v18 = a3;
    CKLog.getter();
    v19 = a3;
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = sub_22507CA14();
      v23 = sub_2250986A8();
      *v22 = 138412290;
      v24 = a3;
      v25 = _swift_stdlib_bridgeErrorToNSError();
      *(v22 + 4) = v25;
      *v23 = v25;
      _os_log_impl(&dword_22506F000, v20, v21, "Couldn't do the AKAppleIDAuthenticationContext dance: %@", v22, 0xCu);
      sub_22507F168(v23, &unk_27D719030, &qword_225443AB0);
      sub_22507C9FC();
      sub_22507C9FC();
    }

    else
    {
    }

    (*(v9 + 8))(v17, v6);
    return 0;
  }

  if (a2)
  {
    v26 = *MEMORY[0x277CEFFC8];
    *&v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(&v36 + 1) = v27;
    v28 = [a2 __swift_objectForKeyedSubscript_];
    swift_unknownObjectRelease();
    if (v28)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v36 = 0u;
      v37 = 0u;
    }

    v38[0] = v36;
    v38[1] = v37;
    if (*(&v37 + 1))
    {
      if (swift_dynamicCast())
      {
        sub_2250B2104(v35[0], v35[1], v3, &selRef_setHsa2DevicePassword_);
        return 0;
      }
    }

    else
    {
      sub_22507F168(v38, &qword_27D718AE0, &unk_225443AA0);
    }

    CKLog.getter();
    v29 = a2;
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = sub_22507CA14();
      v33 = sub_2250986A8();
      *v32 = 138412290;
      *(v32 + 4) = v29;
      *v33 = a2;
      v34 = v29;
      _os_log_impl(&dword_22506F000, v30, v31, "Successfully pulled results, but didn't include password: %@", v32, 0xCu);
      sub_22507F168(v33, &unk_27D719030, &qword_225443AB0);
      sub_22507C9FC();
      sub_22507C9FC();
    }

    (*(v9 + 8))(v14, v6);
    return 0;
  }

  __break(1u);
  return result;
}

unint64_t sub_2250B0D98()
{
  result = qword_27D718AD8;
  if (!qword_27D718AD8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27D718AD8);
  }

  return result;
}

uint64_t sub_2250B0DFC(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_2250B0E44(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = 0;
    v3 = (a1 + 32);
    do
    {
      v5 = *v3++;
      v4 = v5;
      if ((v5 & ~v2) == 0)
      {
        v4 = 0;
      }

      v2 |= v4;
      --v1;
    }

    while (v1);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id sub_2250B0EA4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = MEMORY[0x22AA62D80]();
  }

  else
  {
    v3 = 0;
  }

  v4 = [v2 initWithPassword_];

  return v4;
}

uint64_t sub_2250B0F08(uint64_t a1)
{
  v2 = sub_2250B2370(&qword_280D535A0, type metadata accessor for CKError);

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_2250B0F74(uint64_t a1)
{
  v2 = sub_2250B2370(&qword_280D535A0, type metadata accessor for CKError);

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t sub_2250B0FE0(uint64_t a1)
{
  v2 = sub_2250B2370(&unk_280D53590, type metadata accessor for CKError);

  return MEMORY[0x28211CA68](a1, v2);
}

uint64_t sub_2250B104C()
{
  v1 = sub_22507D314();
  result = nullsub_2(v1);
  *v0 = result;
  return result;
}

uint64_t sub_2250B1074(uint64_t a1)
{
  v2 = sub_2250B2370(&qword_280D53550, type metadata accessor for CKUnderlyingError);

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_2250B10E0(uint64_t a1)
{
  v2 = sub_2250B2370(&qword_280D53550, type metadata accessor for CKUnderlyingError);

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t sub_2250B114C(uint64_t a1)
{
  v2 = sub_2250B2370(&unk_280D53540, type metadata accessor for CKUnderlyingError);

  return MEMORY[0x28211CA68](a1, v2);
}

BOOL sub_2250B11CC(void *a1, uint64_t a2)
{
  v3 = *v2 & a2;
  if (v3 != a2)
  {
    *v2 |= a2;
  }

  *a1 = a2;
  return v3 != a2;
}

uint64_t sub_2250B11F8(uint64_t a1)
{
  result = *v1 & a1;
  if (result)
  {
    *v1 &= ~a1;
  }

  return result;
}

uint64_t sub_2250B121C(uint64_t a1)
{
  v2 = *v1;
  *v1 |= a1;
  return v2 & a1;
}

uint64_t sub_2250B1298(uint64_t a1)
{
  v2 = sub_2250B2370(&unk_280D53590, type metadata accessor for CKError);

  return MEMORY[0x28211CAD0](a1, v2);
}

uint64_t sub_2250B1304(uint64_t a1)
{
  v2 = sub_2250B2370(&unk_280D53590, type metadata accessor for CKError);

  return MEMORY[0x28211CA88](a1, v2);
}

uint64_t sub_2250B1370(void *a1, uint64_t a2)
{
  v4 = sub_2250B2370(&unk_280D53590, type metadata accessor for CKError);
  v5 = a1;

  return MEMORY[0x28211CA70](v5, a2, v4);
}

uint64_t sub_2250B1400(uint64_t a1, uint64_t a2)
{
  v4 = sub_2250B2370(&unk_280D53590, type metadata accessor for CKError);

  return MEMORY[0x28211CAB8](a1, a2, v4);
}

uint64_t sub_2250B1490(uint64_t a1)
{
  v2 = sub_2250B2370(&unk_280D53540, type metadata accessor for CKUnderlyingError);

  return MEMORY[0x28211CAD0](a1, v2);
}

uint64_t sub_2250B14FC(uint64_t a1)
{
  v2 = sub_2250B2370(&unk_280D53540, type metadata accessor for CKUnderlyingError);

  return MEMORY[0x28211CA88](a1, v2);
}

uint64_t sub_2250B1568(void *a1, uint64_t a2)
{
  v4 = sub_2250B2370(&unk_280D53540, type metadata accessor for CKUnderlyingError);
  v5 = a1;

  return MEMORY[0x28211CA70](v5, a2, v4);
}

uint64_t sub_2250B15F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_2250B2370(&unk_280D53540, type metadata accessor for CKUnderlyingError);

  return MEMORY[0x28211CAB8](a1, a2, v4);
}

Swift::Int sub_2250B1674()
{
  v2 = *v0;
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

void *sub_2250B16D4@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_2250B16E4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2250FC33C();
  *a1 = result;
  return result;
}

uint64_t sub_2250B1718@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_2250B11BC(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_2250B1748@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_2250E18F8(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_2250B1778@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_2250B11C4(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_2250B17B0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_2250B11F8(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_2250B17E4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_2250B121C(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_2250B1830@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_2250B1254(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_2250B18A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2250B2370(&unk_280D53590, type metadata accessor for CKError);

  return MEMORY[0x28211CA98](a1, a2, a3, v6);
}

uint64_t sub_2250B1930(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2250B2370(&unk_280D53540, type metadata accessor for CKUnderlyingError);

  return MEMORY[0x28211CA98](a1, a2, a3, v6);
}

uint64_t sub_2250B19C0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_2250B0E44(a1);
  *a2 = result;
  return result;
}

unint64_t sub_2250B19E8(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    v3 = MEMORY[0x277D84F98];
LABEL_9:

    return v3;
  }

  sub_2250B0DFC(&qword_27D719790, &qword_225443F00);
  v2 = static _DictionaryStorage.allocate(capacity:)();
  v3 = v2;
  v4 = *(a1 + 16);
  if (!v4)
  {
    goto LABEL_9;
  }

  v5 = v2 + 64;
  v6 = a1 + 32;

  while (1)
  {
    sub_2250B2858(v6, &v15);
    v7 = v15;
    v8 = v16;
    result = sub_22507DF9C(v15, v16);
    if (v10)
    {
      break;
    }

    *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
    v11 = (v3[6] + 16 * result);
    *v11 = v7;
    v11[1] = v8;
    result = sub_2250B28C8(&v17, (v3[7] + 32 * result));
    v12 = v3[2];
    v13 = __OFADD__(v12, 1);
    v14 = v12 + 1;
    if (v13)
    {
      goto LABEL_12;
    }

    v3[2] = v14;
    v6 += 48;
    if (!--v4)
    {

      return v3;
    }
  }

  __break(1u);
LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_2250B1B20(uint64_t a1, unint64_t a2)
{
  v4 = sub_2250B1B6C(a1, a2);
  sub_2250B1C84(&unk_283859FB0);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_2250B1B6C(uint64_t a1, unint64_t a2)
{
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  for (; v5; v5 = String.UTF8View._foreignCount()())
  {
    result = sub_2251025D4(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = _StringGuts._foreignCopyUTF8(into:)();
      if (v11)
      {
        goto LABEL_23;
      }

      v4 = result;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v13[0] = a1;
        v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        if (v5 < v4)
        {
          goto LABEL_23;
        }

        v9 = (result + 32);
        v10 = v13;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v8 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          v4 = a1 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          result = _StringObject.sharedUTF8.getter();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = (v7 + 32);
        v10 = v8;
      }

      memcpy(v9, v10, v4);
    }

    if (v4 == v5)
    {
      return v7;
    }

    __break(1u);
LABEL_19:
    ;
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_2250B1C84(uint64_t result)
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
  if (!result || v5 > *(v3 + 24) >> 1)
  {
    if (v4 <= v5)
    {
      v8 = v4 + v2;
    }

    else
    {
      v8 = v4;
    }

    result = sub_2250B1D68(result, v8, 1, v3);
    v3 = result;
  }

  if (!*(v6 + 16))
  {

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  v9 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v9 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v9 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v10 = *(v3 + 16);
  v11 = __OFADD__(v10, v2);
  v12 = v10 + v2;
  if (!v11)
  {
    *(v3 + 16) = v12;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

char *sub_2250B1D68(char *result, int64_t a2, char a3, char *a4)
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
    sub_2250B0DFC(&qword_27D718C88, &qword_225443F10);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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
    if (v10 != a4 || &v13[v8] <= v12)
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

id sub_2250B1E5C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = MEMORY[0x22AA62D80]();

  v5 = [a3 accountTypeWithAccountTypeIdentifier_];

  return v5;
}

void sub_2250B1EC0(uint64_t a1, uint64_t a2, void *a3)
{
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [a3 setProperties:isa forDataclass:a2];
}

void sub_2250B1F50(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = MEMORY[0x22AA62D80](a2, a3);

  [a4 setAccountProperty:a1 forKey:v6];
}

void sub_2250B1FE0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = MEMORY[0x22AA62D80]();
  [a3 _setMasterKey_];
}

uint64_t sub_2250B2038(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v4;
}

uint64_t sub_2250B2098(void *a1, SEL *a2)
{
  v3 = [a1 *a2];

  if (!v3)
  {
    return 0;
  }

  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v4;
}

void sub_2250B2104(uint64_t a1, uint64_t a2, void *a3, SEL *a4)
{
  v6 = MEMORY[0x22AA62D80]();

  [a3 *a4];
}

uint64_t sub_2250B2188(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_2250B21A0(id result, char a2)
{
  if (a2)
  {
    return result;
  }

  return result;
}

void sub_2250B21AC(id a1, char a2)
{
  if (a2)
  {
  }
}

__n128 sub_2250B2224(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_2250B2230(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_2250B2270(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2250B22CC(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2250B22EC(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
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

  *(result + 4) = v3;
  return result;
}

uint64_t sub_2250B2370(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2250B23BC()
{
  result = qword_27D718B88;
  if (!qword_27D718B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D718B88);
  }

  return result;
}

unint64_t sub_2250B258C()
{
  result = qword_280D535A8;
  if (!qword_280D535A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D535A8);
  }

  return result;
}

uint64_t sub_2250B2670()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_2250B271C;

  return sub_2250B0248(v2, v3);
}

uint64_t sub_2250B271C()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_2250B2810(void (*a1)(void))
{
  a1(*(v1 + 16));

  return MEMORY[0x2821FE8E8](v1, 32, 7);
}

uint64_t sub_2250B2858(uint64_t a1, uint64_t a2)
{
  v4 = sub_2250B0DFC(&qword_27D718C80, &qword_225443F08);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

_OWORD *sub_2250B28C8(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

void sub_2250B2C28(uint64_t a1, unint64_t *a2)
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

uint64_t sub_2250B2DDC()
{
  v1[22] = v0;
  v2 = sub_2250B0DFC(&qword_27D718E10, &unk_225444450);
  v1[23] = v2;
  v3 = *(v2 - 8);
  v1[24] = v3;
  v4 = *(v3 + 64) + 15;
  v1[25] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2250B2EA8, 0, 0);
}

uint64_t sub_2250B2EA8()
{
  v1 = v0[24];
  v11 = v0[25];
  v3 = v0[22];
  v2 = v0[23];
  v4 = [objc_allocWithZone(MEMORY[0x277CBC4F0]) init];
  v0[26] = v4;
  [v4 setQualityOfService_];
  v5 = [objc_allocWithZone(MEMORY[0x277CBC518]) init];
  v0[27] = v5;
  [v5 setResolvedConfiguration_];
  sub_2250B3334();
  v6 = v5;
  v7 = v3;
  v8 = sub_2250B3378(v6, v7);
  v0[28] = v8;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_2250B3104;
  swift_continuation_init();
  v0[17] = v2;
  v9 = sub_225073808(v0 + 14);
  sub_2250B0DFC(&unk_27D718E18, &unk_225447AC0);
  sub_2250B0DFC(&qword_27D718B00, &unk_225444460);
  CheckedContinuation.init(continuation:function:)();
  (*(v1 + 32))(v9, v11, v2);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_2250B33D4;
  v0[13] = &unk_28385A3D0;
  [v7 fetchImportantUserIDsForOperation:v8 withCompletionHandler:?];
  (*(v1 + 8))(v9, v2);

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_2250B3104()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 232) = v2;
  if (v2)
  {
    v3 = sub_2250B32A4;
  }

  else
  {
    v3 = sub_2250B3214;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2250B3214()
{
  v2 = *(v0 + 216);
  v1 = *(v0 + 224);
  v3 = *(v0 + 200);

  v4 = *(v0 + 152);

  v5 = *(v0 + 168);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_2250B32A4()
{
  v1 = v0[28];
  v2 = v0[29];
  v4 = v0[26];
  v3 = v0[27];
  v5 = v0[25];
  swift_willThrow();

  v6 = v0[1];
  v7 = v0[29];

  return v6();
}

unint64_t sub_2250B3334()
{
  result = qword_280D533F8;
  if (!qword_280D533F8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280D533F8);
  }

  return result;
}

id sub_2250B3378(void *a1, void *a2)
{
  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithOperationInfo:a1 container:a2];

  return v4;
}

void sub_2250B33D4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = sub_225073BAC((a1 + 32), *(a1 + 56));
  if (a4)
  {
    v6 = a4;
    sub_2250ED780(v5, v6);
  }

  else
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    sub_2250ED814();
  }
}

uint64_t sub_2250B34B4()
{
  v1 = [v0 accountID];
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v2;
}

id sub_2250B350C(uint64_t a1, uint64_t a2)
{
  v131 = a1;
  v3 = type metadata accessor for ResolvedBundleID();
  v129 = *(v3 - 8);
  v130 = v3;
  v4 = *(v129 + 64);
  MEMORY[0x28223BE20](v3);
  v128 = &v99[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v109 = type metadata accessor for AuthenticatedSession.Configuration.Account.AuthorizationUI.Payload();
  v127 = *(v109 - 8);
  v6 = *(v127 + 64);
  MEMORY[0x28223BE20](v109);
  v126 = &v99[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v108 = type metadata accessor for AuthenticatedSession.Configuration.Account.AuthorizationUI();
  v107 = *(v108 - 8);
  v8 = *(v107 + 64);
  MEMORY[0x28223BE20](v108);
  v106 = &v99[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_2250B0DFC(&unk_27D718ED0, &qword_225444FF0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v122 = &v99[-v12];
  v13 = type metadata accessor for AuthenticatedSession.Configuration.Account();
  v124 = *(v13 - 8);
  v125 = v13;
  v14 = *(v124 + 64);
  MEMORY[0x28223BE20](v13);
  v123 = &v99[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = type metadata accessor for AuthenticatedSession.Configuration.Application.PushRegistration.Payload();
  v119 = *(v16 - 8);
  v120 = v16;
  v17 = *(v119 + 64);
  MEMORY[0x28223BE20](v16);
  v118 = &v99[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19 = type metadata accessor for AuthenticatedSession.Configuration.Application.PushRegistration();
  v116 = *(v19 - 8);
  v117 = v19;
  v20 = *(v116 + 64);
  MEMORY[0x28223BE20](v19);
  v115 = &v99[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v22 = type metadata accessor for BundleID.Payload();
  v132 = *(v22 - 8);
  v133 = v22;
  v23 = *(v132 + 64);
  v24 = MEMORY[0x28223BE20](v22);
  v103 = &v99[-((v25 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v26 = MEMORY[0x28223BE20](v24);
  v105 = &v99[-v27];
  MEMORY[0x28223BE20](v26);
  v29 = &v99[-v28];
  v30 = type metadata accessor for BundleID();
  v31 = *(v30 - 8);
  v32 = *(v31 + 64);
  v33 = MEMORY[0x28223BE20](v30);
  v102 = &v99[-((v34 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v35 = MEMORY[0x28223BE20](v33);
  v104 = &v99[-v36];
  MEMORY[0x28223BE20](v35);
  v38 = &v99[-v37];
  v39 = type metadata accessor for AuthenticatedSession.Configuration.Application();
  v40 = *(v39 - 8);
  v41 = *(v40 + 64);
  v42 = MEMORY[0x28223BE20](v39);
  v44 = &v99[-((v43 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v42);
  v46 = &v99[-v45];
  v134 = a2;
  AnySessionConfiguration.application.getter();
  AuthenticatedSession.Configuration.Application.bundleID.getter();
  v47 = *(v40 + 8);
  v48 = v46;
  v49 = v39;
  v47(v48, v39);
  BundleID.payload.getter();
  v51 = v132;
  v50 = v133;
  v113 = v31;
  v52 = *(v31 + 8);
  v114 = v30;
  v112 = v52;
  v111 = v31 + 8;
  v52(v38, v30);
  v53 = *(v51 + 88);
  v54 = v53(v29, v50);
  v55 = *MEMORY[0x277CFAAF8];
  if (v54 == *MEMORY[0x277CFAAF8])
  {
    (*(v51 + 96))(v29, v50);
    v56 = v29[1];
    v110 = *v29;
    v121 = v56;
  }

  else
  {
    (*(v51 + 8))(v29, v50);
    v110 = 0;
    v121 = 0;
  }

  AnySessionConfiguration.application.getter();
  v57 = v115;
  AuthenticatedSession.Configuration.Application.pushRegistration.getter();
  v47(v44, v49);
  v58 = v118;
  AuthenticatedSession.Configuration.Application.PushRegistration.payload.getter();
  (*(v116 + 8))(v57, v117);
  v60 = v119;
  v59 = v120;
  v61 = (*(v119 + 88))(v58, v120) == *MEMORY[0x277CFAA00];
  v62 = v126;
  v101 = v53;
  v100 = v55;
  if (v61)
  {
    (*(v60 + 96))(v58, v59);
    v63 = v104;
    v64 = v114;
    (*(v113 + 32))(v104, v58, v114);
    v65 = v105;
    BundleID.payload.getter();
    v66 = v65;
    v112(v63, v64);
    v67 = v133;
    v61 = v53(v65, v133) == v55;
    v69 = v127;
    v71 = v124;
    v70 = v125;
    v73 = v122;
    v72 = v123;
    if (v61)
    {
      (*(v132 + 96))(v66, v67);
      v68 = v66[1];
      v120 = *v66;
    }

    else
    {
      (*(v132 + 8))(v66, v67);
      v120 = 0;
      v68 = 0;
    }
  }

  else
  {
    (*(v60 + 8))(v58, v59);
    v120 = 0;
    v68 = 0;
    v69 = v127;
    v71 = v124;
    v70 = v125;
    v73 = v122;
    v72 = v123;
  }

  AnySessionConfiguration.account.getter();
  if (sub_22507C8E8(v73, 1, v70) == 1)
  {
    sub_2250C86F4(v73, &unk_27D718ED0, &qword_225444FF0);
  }

  else
  {
    (*(v71 + 32))(v72, v73, v70);
    v74 = v106;
    AuthenticatedSession.Configuration.Account.accessGrantedVia.getter();
    AuthenticatedSession.Configuration.Account.AuthorizationUI.payload.getter();
    (*(v107 + 8))(v74, v108);
    v75 = v109;
    if ((*(v69 + 88))(v62, v109) == *MEMORY[0x277CFAA20])
    {
      (*(v69 + 96))(v62, v75);
      v76 = v102;
      v77 = v62;
      v78 = v114;
      (*(v113 + 32))(v102, v77, v114);
      v79 = v103;
      BundleID.payload.getter();
      v112(v76, v78);
      (*(v71 + 8))(v72, v70);
      v80 = v133;
      v81 = v101(v79, v133);
      if (v81 == v100)
      {
        (*(v132 + 96))(v79, v80);
        v83 = *v79;
        v82 = v79[1];

        goto LABEL_17;
      }

      (*(v132 + 8))(v79, v80);
    }

    else
    {
      (*(v71 + 8))(v72, v70);
      (*(v69 + 8))(v62, v75);
    }
  }

  v83 = 0;
  v82 = 0;
LABEL_17:
  v84 = v131;
  v85 = type metadata accessor for Entitlements();
  v86 = v128;
  v87 = dispatch thunk of EntitlementsProtocol.bundleID.getter();
  v88 = MEMORY[0x22AA62510](v87);
  v90 = v89;
  (*(v129 + 8))(v86, v130);
  v91 = MEMORY[0x22AA62D80](v88, v90);

  if (v121)
  {
    v92 = MEMORY[0x22AA62D80](v110, v121);

    if (v82)
    {
      goto LABEL_19;
    }
  }

  else
  {
    v92 = 0;
    if (v82)
    {
LABEL_19:
      v93 = MEMORY[0x22AA62D80](v83, v82);

      if (v68)
      {
        goto LABEL_20;
      }

LABEL_24:
      v94 = 0;
      if (v82)
      {
        goto LABEL_21;
      }

LABEL_25:
      v95 = 0;
      goto LABEL_26;
    }
  }

  v93 = 0;
  if (!v68)
  {
    goto LABEL_24;
  }

LABEL_20:
  v94 = MEMORY[0x22AA62D80](v120, v68);

  if (!v82)
  {
    goto LABEL_25;
  }

LABEL_21:
  v95 = MEMORY[0x22AA62D80](v83, v82);

LABEL_26:
  v96 = [objc_allocWithZone(CKDApplicationID) initWithApplicationBundleIdentifier:v91 applicationBundleIdentifierOverrideForContainerAccess:v92 applicationBundleIdentifierOverrideForNetworkAttribution:v93 applicationBundleIdentifierOverrideForPushTopicGeneration:v94 applicationBundleIdentifierOverrideForTCC:v95];

  v97 = type metadata accessor for AnySessionConfiguration();
  (*(*(v97 - 8) + 8))(v134, v97);
  (*(*(v85 - 8) + 8))(v84, v85);
  return v96;
}

uint64_t sub_2250B4150()
{
  sub_2250B0DFC(&qword_27D718B00, &unk_225444460);

  return CheckedContinuation.init(continuation:function:)();
}

char *sub_2250B41D8(void *a1, uint64_t a2, void *a3)
{
  v5 = v3;
  v111 = a3;
  ObjectType = swift_getObjectType();
  v91 = type metadata accessor for AnySessionConfiguration.CustomConfigurationError();
  v9 = sub_225072D1C(v91);
  v90 = v10;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v9);
  sub_225072C00();
  v96 = v14 - v13;
  sub_22507E434();
  v110 = type metadata accessor for Entitlements();
  v15 = sub_225072D1C(v110);
  v97 = v16;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v15);
  sub_22507CD30();
  sub_22507F2B4();
  MEMORY[0x28223BE20](v19);
  sub_22507F2B4();
  MEMORY[0x28223BE20](v20);
  v22 = &v84 - v21;
  v23 = sub_2250B0DFC(&unk_27D718E60, &unk_225444780);
  v24 = sub_22507CD44(v23);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v24);
  v28 = &v84 - v27;
  v116 = type metadata accessor for AnySessionConfiguration();
  v29 = sub_225072D1C(v116);
  v118 = v30;
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v29);
  sub_22507CD30();
  sub_22507F2B4();
  MEMORY[0x28223BE20](v33);
  v35 = &v84 - v34;
  v36 = type metadata accessor for SessionID();
  v37 = sub_225072D1C(v36);
  v114 = v38;
  v115 = v37;
  v40 = *(v39 + 64);
  MEMORY[0x28223BE20](v37);
  sub_2250986C0();
  v41 = &v5[OBJC_IVAR____TtC14CloudKitDaemon18CKDSessionAcquirer_actorMutex];
  *v41 = 0;
  *(v41 + 1) = 0;
  v103 = v41 + 8;
  result = [a1 ckSessionID];
  if (!result)
  {
    __break(1u);
    goto LABEL_13;
  }

  v43 = result;
  v105 = ObjectType;
  type metadata accessor for CKSessionID();
  v109 = v43;
  sub_2250C87F4();
  swift_dynamicCastClassUnconditional();
  result = [a1 ckSessionConfiguration];
  if (!result)
  {
LABEL_13:
    __break(1u);
    return result;
  }

  v44 = result;
  v108 = a2;
  type metadata accessor for CKSessionConfiguration();
  sub_2250C87F4();
  swift_dynamicCastClassUnconditional();
  v107 = a1;
  v45 = [a1 ckPreviousSessionInvalidationContext];
  v113 = v45;
  if (v45)
  {
    type metadata accessor for CKSessionInvalidationContext();
    v45 = swift_dynamicCastClassUnconditional();
  }

  CKSessionID.sessionID.getter();
  v46 = *(v114 + 32);
  v102 = OBJC_IVAR____TtC14CloudKitDaemon18CKDSessionAcquirer_sessionID;
  v46(&v5[OBJC_IVAR____TtC14CloudKitDaemon18CKDSessionAcquirer_sessionID], v4, v115);
  CKSessionConfiguration.anySessionConfiguration.getter();
  v47 = *(v118 + 32);
  v112 = OBJC_IVAR____TtC14CloudKitDaemon18CKDSessionAcquirer_sessionConfiguration;
  v47(&v5[OBJC_IVAR____TtC14CloudKitDaemon18CKDSessionAcquirer_sessionConfiguration], v35, v116);
  v104 = v44;
  v92 = v35;
  if (v45)
  {
    swift_unknownObjectRetain();
    CKSessionInvalidationContext.sessionInvalidationContext.getter();
    swift_unknownObjectRelease();
    v48 = 0;
  }

  else
  {
    v48 = 1;
  }

  v49 = type metadata accessor for SessionInvalidationContext();
  sub_22507C8C0(v28, v48, 1, v49);
  v101 = OBJC_IVAR____TtC14CloudKitDaemon18CKDSessionAcquirer_previousInvalidationContext;
  sub_2250C8588(v28, &v5[OBJC_IVAR____TtC14CloudKitDaemon18CKDSessionAcquirer_previousInvalidationContext], &unk_27D718E60, &unk_225444780);
  v50 = v107;
  v51 = [v107 testDeviceReferenceProtocol];
  v99 = OBJC_IVAR____TtC14CloudKitDaemon18CKDSessionAcquirer_testDeviceReferenceProtocol;
  *&v5[OBJC_IVAR____TtC14CloudKitDaemon18CKDSessionAcquirer_testDeviceReferenceProtocol] = v51;
  v100 = OBJC_IVAR____TtC14CloudKitDaemon18CKDSessionAcquirer_sessionAcquisitionClientProxy;
  *&v5[OBJC_IVAR____TtC14CloudKitDaemon18CKDSessionAcquirer_sessionAcquisitionClientProxy] = v108;
  swift_unknownObjectRetain();
  v52 = v111;
  v53 = [v111 processScopedClientProxy];
  v54 = OBJC_IVAR____TtC14CloudKitDaemon18CKDSessionAcquirer_processScopedClientProxy;
  *&v5[OBJC_IVAR____TtC14CloudKitDaemon18CKDSessionAcquirer_processScopedClientProxy] = v53;
  v55 = v106;
  sub_22507369C();
  v98 = v54;
  if (v55)
  {
    v56 = v116;

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    (*(v114 + 8))(&v5[v102], v115);
    (*(v118 + 8))(&v5[v112], v56);
    sub_2250C86F4(&v5[v101], &unk_27D718E60, &unk_225444780);
    v76 = *&v5[v99];
    swift_unknownObjectRelease();
    v77 = *&v5[v100];
    swift_unknownObjectRelease();

    sub_2250C86F4(v103, &qword_27D718F88, &unk_225444960);
    v78 = *((*MEMORY[0x277D85000] & *v5) + 0x30);
    v79 = *((*MEMORY[0x277D85000] & *v5) + 0x34);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v57 = OBJC_IVAR____TtC14CloudKitDaemon18CKDSessionAcquirer_entitlements;
    v88 = OBJC_IVAR____TtC14CloudKitDaemon18CKDSessionAcquirer_entitlements;
    v58 = v97;
    v59 = v110;
    (*(v97 + 32))(&v5[OBJC_IVAR____TtC14CloudKitDaemon18CKDSessionAcquirer_entitlements], v22, v110);
    v60 = *(v58 + 16);
    v86 = v58 + 16;
    v87 = v60;
    v61 = &v5[v57];
    v62 = v93;
    v60(v93, v61, v59);
    v63 = v118;
    v64 = *(v118 + 16);
    v84 = v118 + 16;
    v85 = v64;
    v65 = v92;
    v66 = v116;
    v64(v92, &v5[v112], v116);
    v67 = EntitlementsProtocol.ckCompatibilityOverlay(configuration:)();
    v68 = *(v63 + 8);
    v69 = v65;
    v70 = v66;
    v106 = v63 + 8;
    v92 = v68;
    (v68)(v69, v66);
    v71 = *(v58 + 8);
    v72 = v110;
    v93 = v58 + 8;
    v89 = v71;
    v71(v62, v110);
    v73 = [*&v5[v54] clientEntitlements];
    sub_22510792C(v67);

    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v75 = [v73 entitlementsByAddingOverlay_];

    *&v5[OBJC_IVAR____TtC14CloudKitDaemon18CKDSessionAcquirer_overlaidCKEntitlements] = v75;
    v85(v94, &v5[v112], v70);
    v87(v95, &v5[v88], v72);
    _s17CloudCoreInternal23AnySessionConfigurationV8validate12entitlementsyx_tAC06CustomF5ErrorOYKAA20EntitlementsProtocolRzlF();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    v80 = sub_2250953C4();
    v81(v80);
    v82 = sub_2250C8830();
    v83(v82);
    v117.receiver = v5;
    v117.super_class = v105;
    v5 = objc_msgSendSuper2(&v117, sel_init);

    swift_unknownObjectRelease();
  }

  return v5;
}

void sub_2250B4C44()
{
  sub_2250C88E8();
  v68 = v1;
  v69 = v2;
  v70 = type metadata accessor for Entitlements();
  v3 = sub_225072D1C(v70);
  v63 = v4;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v67 = v7;
  v8 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2250B0DFC(&unk_27D718E60, &unk_225444780);
  v10 = sub_22507D394(v9);
  v64 = v11;
  v65 = *(v12 + 64);
  MEMORY[0x28223BE20](v10);
  v74 = &v54 - v13;
  sub_22507E434();
  v73 = type metadata accessor for AnySessionConfiguration();
  v14 = sub_225072D1C(v73);
  v66 = v15;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v14);
  v72 = &v54 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22507E434();
  v71 = type metadata accessor for SessionID();
  v18 = sub_225072D1C(v71);
  v20 = v19;
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v18);
  v23 = sub_2250B0DFC(&qword_27D7190D0, &qword_225445B10);
  v24 = sub_22507CD44(v23);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v24);
  v28 = &v54 - v27;
  v29 = v0 + OBJC_IVAR____TtC14CloudKitDaemon18CKDSessionAcquirer_actorMutex;
  os_unfair_lock_lock((v0 + OBJC_IVAR____TtC14CloudKitDaemon18CKDSessionAcquirer_actorMutex));
  v30 = *(v29 + 8);

  os_unfair_lock_unlock(v29);
  if (v30)
  {

    __break(1u);
  }

  else
  {
    v31 = type metadata accessor for TaskPriority();
    sub_22507C8C0(v28, 1, 1, v31);
    v61 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v62 = v28;
    v32 = OBJC_IVAR____TtC14CloudKitDaemon18CKDSessionAcquirer_sessionConfiguration;
    v33 = *(v0 + OBJC_IVAR____TtC14CloudKitDaemon18CKDSessionAcquirer_testDeviceReferenceProtocol);
    v34 = OBJC_IVAR____TtC14CloudKitDaemon18CKDSessionAcquirer_previousInvalidationContext;
    v35 = *(v0 + OBJC_IVAR____TtC14CloudKitDaemon18CKDSessionAcquirer_sessionAcquisitionClientProxy);
    v57 = *(v0 + OBJC_IVAR____TtC14CloudKitDaemon18CKDSessionAcquirer_processScopedClientProxy);
    v58 = v35;
    v36 = OBJC_IVAR____TtC14CloudKitDaemon18CKDSessionAcquirer_entitlements;
    v59 = *(v0 + OBJC_IVAR____TtC14CloudKitDaemon18CKDSessionAcquirer_overlaidCKEntitlements);
    v60 = v33;
    v37 = *(v20 + 16);
    v56 = &v54 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
    v37(v56, v0 + OBJC_IVAR____TtC14CloudKitDaemon18CKDSessionAcquirer_sessionID, v71);
    v38 = v66;
    (*(v66 + 16))(v72, v0 + v32, v73);
    sub_2250C853C(v0 + v34, v74, &unk_27D718E60, &unk_225444780);
    v39 = v63;
    (*(v63 + 16))(v8, v0 + v36, v70);
    v40 = (*(v20 + 80) + 32) & ~*(v20 + 80);
    v41 = (v22 + *(v38 + 80) + v40) & ~*(v38 + 80);
    v42 = (v17 + *(v64 + 80) + v41) & ~*(v64 + 80);
    v64 = (v65 + v42 + 7) & 0xFFFFFFFFFFFFFFF8;
    v65 = (v64 + 15) & 0xFFFFFFFFFFFFFFF8;
    v55 = (v65 + 15) & 0xFFFFFFFFFFFFFFF8;
    v54 = (*(v39 + 80) + v55 + 8) & ~*(v39 + 80);
    v43 = &v67[v54 + 7] & 0xFFFFFFFFFFFFFFF8;
    v67 = v8;
    v44 = (v43 + 15) & 0xFFFFFFFFFFFFFFF8;
    v45 = swift_allocObject();
    *(v45 + 16) = 0;
    *(v45 + 24) = 0;
    (*(v20 + 32))(v45 + v40, v56, v71);
    (*(v38 + 32))(v45 + v41, v72, v73);
    sub_2250C8588(v74, v45 + v42, &unk_27D718E60, &unk_225444780);
    v46 = v65;
    *(v45 + v64) = v60;
    v47 = v57;
    *(v45 + v46) = v58;
    v48 = v54;
    *(v45 + v55) = v47;
    (*(v39 + 32))(v45 + v48, v67, v70);
    v49 = v59;
    *(v45 + v43) = v59;
    v50 = (v45 + v44);
    v51 = v69;
    *v50 = v68;
    v50[1] = v51;
    *(v45 + ((v44 + 23) & 0xFFFFFFFFFFFFFFF8)) = v61;
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v52 = v47;
    v53 = v49;

    sub_2250B5ADC(0, 0, v62, &unk_225444798, v45);

    sub_2250C8920();
  }
}

uint64_t sub_2250B5188(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 112) = v23;
  *(v8 + 120) = v24;
  *(v8 + 80) = v21;
  *(v8 + 96) = v22;
  *(v8 + 64) = a7;
  *(v8 + 72) = a8;
  *(v8 + 48) = a5;
  *(v8 + 56) = a6;
  *(v8 + 40) = a4;
  v9 = type metadata accessor for Entitlements();
  *(v8 + 128) = v9;
  v10 = *(v9 - 8);
  *(v8 + 136) = v10;
  v11 = *(v10 + 64) + 15;
  *(v8 + 144) = swift_task_alloc();
  v12 = *(*(sub_2250B0DFC(&unk_27D718E60, &unk_225444780) - 8) + 64) + 15;
  *(v8 + 152) = swift_task_alloc();
  v13 = type metadata accessor for AnySessionConfiguration();
  *(v8 + 160) = v13;
  v14 = *(v13 - 8);
  *(v8 + 168) = v14;
  v15 = *(v14 + 64) + 15;
  *(v8 + 176) = swift_task_alloc();
  v16 = type metadata accessor for SessionID();
  *(v8 + 184) = v16;
  v17 = *(v16 - 8);
  *(v8 + 192) = v17;
  v18 = *(v17 + 64) + 15;
  *(v8 + 200) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2250B5354, 0, 0);
}

uint64_t sub_2250B5354()
{
  v1 = v0[24];
  v2 = v0[23];
  v41 = v0[22];
  v42 = v0[25];
  v3 = v0[21];
  v30 = v0[20];
  v31 = v0[19];
  v4 = v0[17];
  v33 = v0[18];
  v34 = v0[16];
  v40 = v0[13];
  v32 = v0[11];
  v38 = v0[14];
  v39 = v0[10];
  v36 = v0[12];
  v37 = v0[9];
  v35 = v0[8];
  v5 = v0[5];
  v28 = v0[6];
  v29 = v0[7];
  sub_2250B0DFC(&unk_27D718E70, &qword_2254447A0);
  _StringGuts.grow(_:)(26);
  sub_22509583C();
  sub_2250C8748(v6, v7);
  dispatch thunk of CustomStringConvertible.description.getter();

  MEMORY[0x22AA62E50](0xD000000000000018, 0x8000000225479720);
  v8 = ExponentialNetworkBackoff<>.init(label:backoffCountBeforeDelay:initialEnforcedDelay:maximumEnforcedDelay:tolerance:)();
  v0[26] = v8;
  (*(v1 + 16))(v42, v5, v2);
  (*(v3 + 16))(v41, v28, v30);
  sub_2250C853C(v29, v31, &unk_27D718E60, &unk_225444780);
  (*(v4 + 16))(v33, v32, v34);
  v9 = sub_2250B0DFC(&qword_27D718E80, &qword_2254447A8);
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();
  swift_unknownObjectRetain();
  v12 = v36;

  swift_unknownObjectRetain();
  v13 = v39;

  v14 = sub_2250B6B9C(v42, v41, v31, v35, v37, v39, v33, v12, v8, v40, v38);
  v0[27] = v14;
  v16 = v14;
  v17 = v0[15];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[28] = Strong;
  if (Strong)
  {
    v19 = Strong;
    v20 = swift_task_alloc();
    v0[29] = v20;
    *(v20 + 16) = v19;
    *(v20 + 24) = v16;
    v21 = *(MEMORY[0x277D85A10] + 4);
    v22 = swift_task_alloc();
    v0[30] = v22;
    *v22 = v0;
    v22[1] = sub_2250B5778;

    return MEMORY[0x282200830]();
  }

  else
  {
    sub_2250B7EE8();

    v23 = v0[25];
    v24 = v0[22];
    v26 = v0[18];
    v25 = v0[19];

    sub_22507CC50();

    return v27();
  }
}

uint64_t sub_2250B5778()
{
  sub_225072C10();
  sub_225075560();
  v3 = v2;
  sub_22507D320();
  *v4 = v3;
  v6 = *(v5 + 240);
  v7 = *v1;
  sub_225072D68();
  *v8 = v7;
  *(v3 + 248) = v0;

  if (v0)
  {
    v9 = sub_2250B5914;
  }

  else
  {
    v10 = *(v3 + 232);

    v9 = sub_2250B587C;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t sub_2250B587C()
{
  sub_22507CE94();
  v2 = v0[27];
  v1 = v0[28];
  v3 = v0[26];

  v4 = v0[25];
  v5 = v0[22];
  v7 = v0[18];
  v6 = v0[19];

  sub_22507CC50();

  return v8();
}

uint64_t sub_2250B5914()
{
  sub_22507CE94();
  v2 = v0[28];
  v1 = v0[29];
  v3 = v0[26];
  v4 = v0[27];

  v5 = v0[31];
  v6 = v0[25];
  v7 = v0[22];
  v9 = v0[18];
  v8 = v0[19];

  sub_225075274();

  return v10();
}

uint64_t sub_2250B59B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a2;
  *(v3 + 24) = a3;
  return MEMORY[0x2822009F8](sub_2250B59D8, 0, 0);
}

uint64_t sub_2250B59D8()
{
  sub_225072C10();
  v1 = *(v0 + 24);
  v2 = *(v0 + 16) + OBJC_IVAR____TtC14CloudKitDaemon18CKDSessionAcquirer_actorMutex;
  os_unfair_lock_lock(v2);
  v3 = *(v2 + 8);

  *(v2 + 8) = v1;

  os_unfair_lock_unlock(v2);

  return MEMORY[0x2822009F8](sub_2250B5A68, v1, 0);
}

uint64_t sub_2250B5A68()
{
  sub_22507CE94();
  v1 = *(v0 + 24);
  sub_2250B87CC();
  sub_225075274();

  return v2();
}

uint64_t sub_2250B5ADC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_2250B0DFC(&qword_27D7190D0, &qword_225445B10);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v23 - v10;
  sub_2250C853C(a3, v23 - v10, &qword_27D7190D0, &qword_225445B10);
  v12 = type metadata accessor for TaskPriority();
  v13 = sub_22507C8E8(v11, 1, v12);

  if (v13 == 1)
  {
    sub_2250C86F4(v11, &qword_27D7190D0, &qword_225445B10);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(*(v12 - 8) + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  v14 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = dispatch thunk of Actor.unownedExecutor.getter();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = String.utf8CString.getter() + 32;

      if (v18 | v16)
      {
        v24[0] = 0;
        v24[1] = 0;
        v20 = v24;
        v24[2] = v16;
        v24[3] = v18;
      }

      else
      {
        v20 = 0;
      }

      v23[1] = 7;
      v23[2] = v20;
      v23[3] = v19;
      v21 = swift_task_create();

      sub_2250C86F4(a3, &qword_27D7190D0, &qword_225445B10);

      return v21;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_2250C86F4(a3, &qword_27D7190D0, &qword_225445B10);
  if (v18 | v16)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v16;
    v24[7] = v18;
  }

  return swift_task_create();
}

void sub_2250B5DF8()
{
  sub_2250C88E8();
  ObjectType = swift_getObjectType();
  v3 = type metadata accessor for SessionID();
  v4 = sub_225072D1C(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  sub_225072C00();
  v11 = v10 - v9;
  v12 = type metadata accessor for Logger();
  v13 = sub_225072D1C(v12);
  v35 = v14;
  v36 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v13);
  sub_2250986C0();
  v17 = &v0[OBJC_IVAR____TtC14CloudKitDaemon18CKDSessionAcquirer_actorMutex];
  os_unfair_lock_lock(&v0[OBJC_IVAR____TtC14CloudKitDaemon18CKDSessionAcquirer_actorMutex]);
  v18 = *(v17 + 1);

  os_unfair_lock_unlock(v17);
  CCLog.getter();

  v19 = v0;
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();

  v34 = v19;
  if (os_log_type_enabled(v20, v21))
  {
    v22 = v19;
    v23 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    *v23 = 136315394;
    (*(v6 + 16))(v11, &v22[OBJC_IVAR____TtC14CloudKitDaemon18CKDSessionAcquirer_sessionID], v3);
    sub_22509583C();
    sub_2250C8748(v24, v25);
    v26 = dispatch thunk of CustomStringConvertible.description.getter();
    v33 = ObjectType;
    v28 = v27;
    (*(v6 + 8))(v11, v3);
    v29 = sub_225095AFC(v26, v28, &v37);

    *(v23 + 4) = v29;
    *(v23 + 12) = 2080;

    sub_2250B0DFC(&qword_27D718F88, &unk_225444960);
    v30 = String.init<A>(describing:)();
    v32 = sub_225095AFC(v30, v31, &v37);

    *(v23 + 14) = v32;
    ObjectType = v33;
    _os_log_impl(&dword_22506F000, v20, v21, "%s: daemon session acquirer in de-init, cancelling acquisition of %s", v23, 0x16u);
    swift_arrayDestroy();
    sub_22507C9FC();
    sub_22507C9FC();
  }

  (*(v35 + 8))(v1, v36);
  if (v18)
  {

    sub_2250B7EE8();
  }

  v38.receiver = v34;
  v38.super_class = ObjectType;
  objc_msgSendSuper2(&v38, sel_dealloc);
  sub_2250C8920();
}

uint64_t type metadata accessor for CKDSessionAcquirer()
{
  result = qword_280D53780;
  if (!qword_280D53780)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2250B6330()
{
  v0 = type metadata accessor for SessionID();
  if (v1 <= 0x3F)
  {
    v8 = *(v0 - 8) + 64;
    v2 = type metadata accessor for AnySessionConfiguration();
    if (v3 <= 0x3F)
    {
      v9 = *(v2 - 8) + 64;
      sub_2250B649C();
      if (v5 <= 0x3F)
      {
        v10 = *(v4 - 8) + 64;
        v6 = type metadata accessor for Entitlements();
        if (v7 <= 0x3F)
        {
          v11 = *(v6 - 8) + 64;
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_2250B649C()
{
  if (!qword_280D535E0)
  {
    type metadata accessor for SessionInvalidationContext();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_280D535E0);
    }
  }
}

uint64_t sub_2250B64F8(void *a1)
{
  v2 = type metadata accessor for SessionID();
  v3 = v2;
  if (v4 <= 0x3F)
  {
    v42 = *(v2 - 8) + 64;
    v5 = type metadata accessor for AnySessionConfiguration();
    v3 = v5;
    if (v6 <= 0x3F)
    {
      v43 = *(v5 - 8) + 64;
      sub_2250B649C();
      v3 = v7;
      if (v8 <= 0x3F)
      {
        v44 = *(v7 - 8) + 64;
        v45 = "\b";
        v46 = &unk_2254444E0;
        v47 = "\b";
        v9 = a1[11];
        v10 = swift_checkMetadataState();
        v3 = v10;
        if (v11 <= 0x3F)
        {
          v48 = *(v10 - 8) + 64;
          v49 = MEMORY[0x277D833E8] + 64;
          v50 = MEMORY[0x277D833E8] + 64;
          v12 = a1[10];
          v13 = swift_checkMetadataState();
          v14 = v13;
          if (v15 > 0x3F)
          {
            return v13;
          }

          else
          {
            v51 = *(v13 - 8) + 64;
            v52 = MEMORY[0x277D83428] + 64;
            v53 = &unk_225444548;
            v17 = a1[12];
            v16 = a1[13];
            v18 = a1[14];
            AssociatedTypeWitness = swift_getAssociatedTypeWitness();
            v21 = a1[15];
            v20 = a1[16];
            v22 = a1[17];
            v23 = *(swift_getAssociatedConformanceWitness() + 8);
            v31 = v14;
            v32 = v3;
            v33 = v17;
            v34 = v16;
            v35 = AssociatedTypeWitness;
            v36 = v18;
            v37 = v21;
            v38 = v20;
            v39 = v22;
            v40 = v23;
            v24 = type metadata accessor for CKDSessionAcquirer.Actor.CheckState(319, &v31);
            if (v25 > 0x3F)
            {
              return v24;
            }

            else
            {
              v54 = *(v24 - 8) + 64;
              v55 = &unk_225444560;
              v26 = swift_getAssociatedTypeWitness();
              v27 = *(swift_getAssociatedConformanceWitness() + 8);
              v31 = v14;
              v32 = v3;
              v33 = v17;
              v34 = v16;
              v35 = v26;
              v36 = v18;
              v37 = v21;
              v38 = v20;
              v39 = v22;
              v40 = v27;
              v28 = type metadata accessor for CKDSessionAcquirer.Actor.CheckState(319, &v31);
              v3 = v28;
              if (v29 <= 0x3F)
              {
                v56 = *(v28 - 8) + 64;
                v57 = &unk_225444578;
                v58 = "\b";
                v59 = &unk_225444578;
                v60 = &unk_225444590;
                v61 = &unk_2254445A8;
                return swift_initClassMetadata2();
              }
            }
          }
        }
      }
    }
  }

  return v3;
}

void sub_2250B68A0()
{
  sub_2250C88E8();
  v27 = type metadata accessor for PropertyDescription();
  v1 = *(v27 - 8);
  sub_2250C8890();
  v3 = v2;
  v4 = *(v1 + 64);
  MEMORY[0x28223BE20](v5);
  sub_225072C00();
  v26 = v7 - v6;
  sub_22507E434();
  v8 = type metadata accessor for OSLogPrivacy();
  v9 = sub_22507CD44(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  sub_2250986C0();
  sub_2250B0DFC(&qword_27D718E40, &qword_225444760);
  sub_2250C8890();
  v13 = *(v12 + 72);
  v14 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_225444470;
  v16 = type metadata accessor for SessionID();
  ObjectType = v16;
  sub_225073808(v28);
  sub_22507E428(v16);
  (*(v17 + 16))();
  static OSLogPrivacy.public.getter();
  sub_2250C8868();
  PropertyDescription.init(_:_:privacy:)();
  v18 = type metadata accessor for AnySessionConfiguration();
  ObjectType = v18;
  sub_225073808(v28);
  sub_22507E428(v18);
  (*(v19 + 16))();
  static OSLogPrivacy.auto.getter();
  PropertyDescription.init(_:_:privacy:)();
  v20 = *(v0 + OBJC_IVAR____TtC14CloudKitDaemon18CKDSessionAcquirer_testDeviceReferenceProtocol);
  if (v20)
  {
    ObjectType = swift_getObjectType();
    v28[0] = v20;
    swift_unknownObjectRetain_n();
    static OSLogPrivacy.auto.getter();
    PropertyDescription.init(_:_:privacy:)();
    sub_225072BD8();
    v25 = sub_22509891C(1uLL, 3, 1, v15, v21, v22, v23, v24);
    swift_unknownObjectRelease();
    *(v25 + 16) = 3;
    (*(v3 + 32))(v25 + v14 + 2 * v13, v26, v27);
  }

  sub_2250C8920();
}

uint64_t sub_2250B6B9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, void *a8, uint64_t a9, void *a10, uint64_t a11)
{
  v62 = a8;
  v59 = a6;
  v60 = a7;
  v67 = a5;
  v57 = a4;
  v68 = a3;
  v50 = a2;
  v55 = a1;
  v61 = a10;
  v64 = a9;
  v65 = a11;
  v14 = type metadata accessor for AnySessionConfiguration();
  v49 = v14;
  v53 = *(v14 - 8);
  v15 = v53;
  v16 = *(v53 + 64);
  MEMORY[0x28223BE20](v14);
  v63 = &v45 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = type metadata accessor for Entitlements();
  v48 = *(v66 - 8);
  v18 = v48;
  v19 = *(v48 + 64);
  MEMORY[0x28223BE20](v66);
  v58 = &v45 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_defaultActor_initialize();
  v21 = qword_280D538D0;
  v22 = type metadata accessor for SessionInvalidationContext();
  sub_22507C8C0(v11 + v21, 1, 1, v22);
  v23 = v11 + *(*v11 + 240);
  *v23 = 0;
  *(v23 + 8) = 2;
  v24 = v11 + *(*v11 + 248);
  *v24 = 0;
  *(v24 + 8) = 0;
  *(v24 + 16) = 2;
  v25 = v11 + *(*v11 + 256);
  *(v25 + 8) = 0;
  *(v25 + 16) = 0;
  *v25 = 0;
  *(v25 + 24) = 2;
  v26 = *(*v11 + 264);
  sub_2250B0DFC(&unk_27D718E90, &qword_2254447C8);
  swift_storeEnumTagMultiPayload();
  v27 = (v11 + *(*v11 + 272));
  *v27 = 0;
  v27[1] = 0;
  *(v11 + *(*v11 + 280)) = 0;
  v28 = (v11 + *(*v11 + 288));
  *v28 = 0;
  v28[1] = 0;
  *(v11 + *(*v11 + 296)) = 0;
  v29 = v11 + *(*v11 + 304);
  *v29 = 0;
  *(v29 + 4) = 0;
  v30 = qword_280D53830;
  v54 = type metadata accessor for SessionID();
  v56 = *(v54 - 8);
  (*(v56 + 16))(v11 + v30, a1, v54);
  v31 = *(v15 + 16);
  v51 = v15 + 16;
  v52 = v31;
  v31((v11 + qword_280D538E8), a2, v14);
  swift_beginAccess();
  sub_2250C8684(v68, v11 + v21);
  swift_endAccess();
  *(v11 + qword_280D538C8) = v57;
  *(v11 + qword_280D538C0) = v67;
  v32 = v59;
  *(v11 + qword_280D538D8) = v59;
  v33 = *(*v11 + 200);
  v47 = *(v18 + 16);
  v34 = v60;
  v47(v11 + v33, v60, v66);
  v35 = v62;
  *(v11 + *(*v11 + 208)) = v62;
  *(v11 + *(*v11 + 232)) = v64;
  v36 = v28[1];
  v46 = *v28;
  v45 = v36;
  v37 = v65;
  *v28 = v61;
  v28[1] = v37;
  v61 = v32;
  v62 = v35;

  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  sub_2250C76A8(v46);
  v38 = v58;
  v39 = v66;
  v47(v58, v34, v66);
  v40 = v63;
  v41 = v50;
  v42 = v49;
  v52(v63, v50, v49);
  v43 = sub_2250B350C(v38, v40);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  (*(v48 + 8))(v34, v39);
  sub_2250C86F4(v68, &unk_27D718E60, &unk_225444780);
  (*(v53 + 8))(v41, v42);
  (*(v56 + 8))(v55, v54);
  *(v11 + *(*v11 + 216)) = v43;
  return v11;
}

Swift::Int sub_2250B7170(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x22AA635F0](a1);
  return Hasher._finalize()();
}

Swift::Int sub_2250B71D0(void *a1)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  v7 = a1[7];
  v8 = a1[8];
  v10 = a1[9];
  return sub_2250B7170(*v1);
}

uint64_t sub_2250B7208(uint64_t a1, void *a2)
{
  v3 = a2[2];
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  v8 = a2[7];
  v10 = a2[8];
  v11 = a2[9];
  return sub_2250AB664(a1, *v2);
}

Swift::Int sub_2250B7240(uint64_t a1, void *a2)
{
  Hasher.init(_seed:)();
  v4 = a2[2];
  v5 = a2[3];
  v6 = a2[4];
  v7 = a2[5];
  v8 = a2[6];
  v9 = a2[7];
  v11 = a2[8];
  v12 = a2[9];
  sub_2250AB664(v13, *v2);
  return Hasher._finalize()();
}

uint64_t sub_2250B7308()
{
  v1 = v0 + *(*v0 + 240);
  v2 = *v1;
  v3 = *(v1 + 8);
  if (v3 == 1)
  {
    v4 = *v1;
  }

  else
  {
    v4 = 0;
  }

  if (v3)
  {
    v5 = v4;
  }

  else
  {
    v5 = v2;
  }

  sub_2250C85D4(v2, v3);
  return v5;
}

uint64_t sub_2250B735C()
{
  v1 = (v0 + *(*v0 + 248));
  if (*(v1 + 16) > 1u)
  {
    return 0;
  }

  v2 = *v1;
}

uint64_t sub_2250B73A4()
{
  v1 = (v0 + *(*v0 + 256));
  if (*(v1 + 24) > 1u)
  {
    return 0;
  }

  v2 = *v1;
}

uint64_t sub_2250B73EC()
{
  v1 = sub_2250B0DFC(&unk_27D718E90, &qword_2254447C8);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v10 - v3;
  v5 = *(*v0 + 264);
  swift_beginAccess();
  sub_2250C853C(v0 + v5, v4, &unk_27D718E90, &qword_2254447C8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    return *v4;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v7 = *v4;
    v8 = sub_2250B0DFC(&qword_27D718F58, &qword_2254448C8);
    sub_2250C7F30(&v4[*(v8 + 48)]);
  }

  else
  {
    sub_2250C86F4(v4, &unk_27D718E90, &qword_2254447C8);
    return 0;
  }

  return v7;
}

void sub_2250B7520(unsigned __int8 a1)
{
  v2 = v1;
  v3 = a1;
  v100 = sub_2250B0DFC(&unk_27D718E90, &qword_2254447C8);
  v4 = *(*(v100 - 8) + 64);
  MEMORY[0x28223BE20](v100);
  v101 = &v96 - v5;
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v99 = &v96 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v96 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v96 - v14;
  v103 = *(*v1 + 296);
  v16 = *(v1 + v103);
  v17 = v3 < 2 || v16 >= v3;
  p_info = CKDContainer.info;
  if (!v17 && (sub_2250B8B48() & 1) == 0)
  {
    v19 = v7;
    CCLog.getter();

    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v98 = v13;
      v23 = v22;
      v24 = swift_slowAlloc();
      v102 = v6;
      v25 = v24;
      v105[0] = v24;
      *v23 = 136315138;
      type metadata accessor for SessionID();
      sub_2250C8748(&qword_280D535D8, MEMORY[0x277CFAB08]);
      v26 = dispatch thunk of CustomStringConvertible.description.getter();
      v28 = v27;

      v29 = sub_225095AFC(v26, v28, v105);
      p_info = (CKDContainer + 32);

      *(v23 + 4) = v29;
      _os_log_impl(&dword_22506F000, v20, v21, "%s: restarting daemon acquisition", v23, 0xCu);
      sub_225073BF0(v25);
      v30 = v25;
      v6 = v102;
      MEMORY[0x22AA65DF0](v30, -1, -1);
      v31 = v23;
      v13 = v98;
      MEMORY[0x22AA65DF0](v31, -1, -1);
    }

    else
    {
    }

    v7 = v19;
    (*(v19 + 8))(v15, v6);
    v3 = 2;
  }

  CCLog.getter();

  v32 = v13;
  v33 = Logger.logObject.getter();
  v34 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v97 = swift_slowAlloc();
    v105[0] = v97;
    *v35 = 136315650;
    v98 = v32;
    v36 = p_info[262];
    type metadata accessor for SessionID();
    v102 = v6;
    sub_2250C8748(&qword_280D535D8, MEMORY[0x277CFAB08]);
    v37 = dispatch thunk of CustomStringConvertible.description.getter();
    v39 = v38;

    v40 = sub_225095AFC(v37, v39, v105);

    *(v35 + 4) = v40;
    *(v35 + 12) = 2080;
    v104 = v16;
    sub_2250B0DFC(&qword_27D718E88, &qword_2254447C0);
    v41 = String.init<A>(describing:)();
    v43 = sub_225095AFC(v41, v42, v105);

    *(v35 + 14) = v43;
    *(v35 + 22) = 2080;
    v104 = v3;
    v44 = String.init<A>(describing:)();
    v46 = sub_225095AFC(v44, v45, v105);

    *(v35 + 24) = v46;
    v6 = v102;
    _os_log_impl(&dword_22506F000, v33, v34, "%s: State Transition: %s -> %s", v35, 0x20u);
    v47 = v97;
    swift_arrayDestroy();
    MEMORY[0x22AA65DF0](v47, -1, -1);
    MEMORY[0x22AA65DF0](v35, -1, -1);

    v48 = *(v7 + 8);
    v48(v98, v6);
  }

  else
  {

    v48 = *(v7 + 8);
    v48(v32, v6);
  }

  *(v2 + v103) = v3;
  if (v3 <= 2 && *(v2 + *(*v2 + 272) + 8))
  {
    v49 = v99;
    CCLog.getter();

    v50 = Logger.logObject.getter();
    v51 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      v103 = v7;
      v53 = v52;
      v98 = swift_slowAlloc();
      v105[0] = v98;
      *v53 = 136315394;
      LODWORD(v97) = v51;
      type metadata accessor for SessionID();
      v102 = v6;
      sub_2250C8748(&qword_280D535D8, MEMORY[0x277CFAB08]);
      v54 = dispatch thunk of CustomStringConvertible.description.getter();
      v56 = v55;

      v57 = sub_225095AFC(v54, v56, v105);

      *(v53 + 4) = v57;
      *(v53 + 12) = 2080;
      v104 = v3;
      sub_2250B0DFC(&qword_27D718E88, &qword_2254447C0);
      v58 = String.init<A>(describing:)();
      v60 = sub_225095AFC(v58, v59, v105);

      *(v53 + 14) = v60;
      _os_log_impl(&dword_22506F000, v50, v97, "%s: Keeping the previous resolved persona ID while transitioning to %s", v53, 0x16u);
      v61 = v98;
      swift_arrayDestroy();
      MEMORY[0x22AA65DF0](v61, -1, -1);
      MEMORY[0x22AA65DF0](v53, -1, -1);

      v62 = v102;
      v63 = v49;
    }

    else
    {

      v63 = v49;
      v62 = v6;
    }

    v48(v63, v62);
  }

  if (v3 != v16 && v16 >= 3 && v3 <= 3)
  {
    v66 = sub_2250B7308();
    if (v66)
    {
      v67 = *(v66 + OBJC_IVAR____TtCO14CloudKitDaemon15CKDSessionCheck11DeviceCheck_actor);
      *(v66 + OBJC_IVAR____TtCO14CloudKitDaemon15CKDSessionCheck11DeviceCheck_actor) = 0;
    }

    v68 = v2 + *(*v2 + 240);
    v69 = *v68;
    *v68 = 0;
    v70 = *(v68 + 8);
    *(v68 + 8) = 2;
    sub_2250C79F8(v69, v70);
  }

  if (v3 != v16 && v16 >= 4 && v3 <= 4)
  {
    v73 = sub_2250B735C();
    if (v73)
    {
      v74 = *(v73 + OBJC_IVAR____TtCO14CloudKitDaemon15CKDSessionCheck12AccountCheck_actor);
      *(v73 + OBJC_IVAR____TtCO14CloudKitDaemon15CKDSessionCheck12AccountCheck_actor) = 0;
    }

    v75 = v2 + *(*v2 + 248);
    v76 = *v75;
    v77 = *(v75 + 8);
    *v75 = 0;
    *(v75 + 8) = 0;
    v78 = *(v75 + 16);
    *(v75 + 16) = 2;
    sub_2250C7A0C(v76, v77, v78);
  }

  if (v3 != v16 && v16 >= 5 && v3 <= 5)
  {
    v81 = sub_2250B73A4();
    if (v81)
    {
      v82 = *(v81 + 16);
      *(v81 + 16) = 0;
    }

    v83 = v2 + *(*v2 + 256);
    v84 = *v83;
    v85 = *(v83 + 8);
    v86 = *(v83 + 16);
    *v83 = 0;
    *(v83 + 8) = 0;
    *(v83 + 16) = 0;
    v87 = *(v83 + 24);
    *(v83 + 24) = 2;
    sub_2250C7A68(v84, v85, v86, v87, MEMORY[0x277D85008]);
  }

  if (v3 != v16 && v16 >= 6 && v3 <= 6)
  {
    v90 = sub_2250B73EC();
    if (v90)
    {
      v91 = *(v90 + 16);
      *(v90 + 16) = 0;
    }

    v92 = v101;
    swift_storeEnumTagMultiPayload();
    v93 = *(*v2 + 264);
    swift_beginAccess();
    sub_2250C7ACC(v92, v2 + v93, &unk_27D718E90, &qword_2254447C8);
    swift_endAccess();
    goto LABEL_62;
  }

  if (v3 <= 7)
  {
LABEL_62:
    v94 = *(*v2 + 280);
    v95 = *(v2 + v94);
    *(v2 + v94) = 0;
  }

  switch(v3)
  {
    case 2u:
      sub_2250B9AE8();
      break;
    case 3u:
      sub_2250BE96C();
      break;
    case 4u:
      sub_2250BF334();
      break;
    case 5u:
      sub_2250BFF84();
      break;
    case 6u:
      sub_2250C0F4C();
      break;
    case 7u:
      sub_2250C1FD8();
      break;
    case 8u:
      sub_2250C3100();
      break;
    case 9u:
      sub_2250C4138();
      break;
    default:
      return;
  }
}
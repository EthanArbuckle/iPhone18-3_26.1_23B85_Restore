uint64_t sub_24F7E611C()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24F7E619C()
{
  sub_24F92B218();
}

uint64_t sub_24F7E6208()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24F7E6284@<X0>(char *a1@<X8>)
{
  v2 = sub_24F92CB88();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

void sub_24F7E62E4(unint64_t *a1@<X8>)
{
  if (*v1)
  {
    v2 = 0xD00000000000002DLL;
  }

  else
  {
    v2 = 0xD000000000000031;
  }

  if (*v1)
  {
    v3 = "s_recently_played";
  }

  else
  {
    v3 = "ofile";
  }

  *a1 = v2;
  a1[1] = v3 | 0x8000000000000000;
}

GameStoreKit::BoolSettingKey_optional __swiftcall BoolSettingKey.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_24F92CF18();

  v5 = 0;
  v6 = 25;
  switch(v3)
  {
    case 0:
      goto LABEL_39;
    case 1:
      v5 = 1;
      goto LABEL_39;
    case 2:
      v5 = 2;
      goto LABEL_39;
    case 3:
      v5 = 3;
      goto LABEL_39;
    case 4:
      v5 = 4;
      goto LABEL_39;
    case 5:
      v5 = 5;
      goto LABEL_39;
    case 6:
      v5 = 6;
      goto LABEL_39;
    case 7:
      v5 = 7;
      goto LABEL_39;
    case 8:
      v5 = 8;
      goto LABEL_39;
    case 9:
      v5 = 9;
      goto LABEL_39;
    case 10:
      v5 = 10;
      goto LABEL_39;
    case 11:
      v5 = 11;
      goto LABEL_39;
    case 12:
      v5 = 12;
      goto LABEL_39;
    case 13:
      v5 = 13;
      goto LABEL_39;
    case 14:
      v5 = 14;
      goto LABEL_39;
    case 15:
      v5 = 15;
      goto LABEL_39;
    case 16:
      v5 = 16;
      goto LABEL_39;
    case 17:
      v5 = 17;
      goto LABEL_39;
    case 18:
      v5 = 18;
      goto LABEL_39;
    case 19:
      v5 = 19;
      goto LABEL_39;
    case 20:
      v5 = 20;
      goto LABEL_39;
    case 21:
      v5 = 21;
      goto LABEL_39;
    case 22:
      v5 = 22;
      goto LABEL_39;
    case 23:
      v5 = 23;
      goto LABEL_39;
    case 24:
      v5 = 24;
LABEL_39:
      v6 = v5;
      break;
    case 25:
      break;
    case 26:
      v6 = 26;
      break;
    case 27:
      v6 = 27;
      break;
    case 28:
      v6 = 28;
      break;
    case 29:
      v6 = 29;
      break;
    case 30:
      v6 = 30;
      break;
    case 31:
      v6 = 31;
      break;
    case 32:
      v6 = 32;
      break;
    case 33:
      v6 = 33;
      break;
    case 34:
      v6 = 34;
      break;
    case 35:
      v6 = 35;
      break;
    case 36:
      v6 = 36;
      break;
    case 37:
      v6 = 37;
      break;
    case 38:
      v6 = 38;
      break;
    case 39:
      v6 = 39;
      break;
    case 40:
      v6 = 40;
      break;
    case 41:
      v6 = 41;
      break;
    case 42:
      v6 = 42;
      break;
    default:
      v6 = 43;
      break;
  }

  *v2 = v6;
  return result;
}

unint64_t sub_24F7E6670()
{
  result = qword_27F2513C0;
  if (!qword_27F2513C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2513C0);
  }

  return result;
}

uint64_t sub_24F7E66F4()
{
  v0 = BoolSettingKey.rawValue.getter();
  v2 = v1;
  if (v0 == BoolSettingKey.rawValue.getter() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_24F92CE08();
  }

  return v5 & 1;
}

unint64_t sub_24F7E6794()
{
  result = qword_27F2513D8;
  if (!qword_27F2513D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2513D8);
  }

  return result;
}

uint64_t sub_24F7E67E8()
{
  sub_24F92D068();
  BoolSettingKey.rawValue.getter();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24F7E6850()
{
  BoolSettingKey.rawValue.getter();
  sub_24F92B218();
}

uint64_t sub_24F7E68B4()
{
  sub_24F92D068();
  BoolSettingKey.rawValue.getter();
  sub_24F92B218();

  return sub_24F92D0B8();
}

unint64_t sub_24F7E6924@<X0>(unint64_t *a1@<X8>)
{
  result = BoolSettingKey.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for BoolSettingKey(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xD6)
  {
    goto LABEL_17;
  }

  if (a2 + 42 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 42) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 42;
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

      return (*a1 | (v4 << 8)) - 42;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 42;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x2B;
  v8 = v6 - 43;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for BoolSettingKey(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 42 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 42) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xD6)
  {
    v4 = 0;
  }

  if (a2 > 0xD5)
  {
    v5 = ((a2 - 214) >> 8) + 1;
    *result = a2 + 42;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 42;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_24F7E6B9C()
{
  result = qword_27F2513F0;
  if (!qword_27F2513F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2513F0);
  }

  return result;
}

unint64_t sub_24F7E6BF0()
{
  result = qword_27F2513F8;
  if (!qword_27F2513F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2513F8);
  }

  return result;
}

uint64_t CallHandleType.rawValue.getter()
{
  v1 = 0x6D754E656E6F6870;
  if (*v0 != 1)
  {
    v1 = 0x6464416C69616D65;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x636972656E6567;
  }
}

GameStoreKit::CallHandleType_optional __swiftcall CallHandleType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_24F92CB88();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_24F7E6D0C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x6D754E656E6F6870;
  v4 = 0xEB00000000726562;
  if (v2 != 1)
  {
    v3 = 0x6464416C69616D65;
    v4 = 0xEC00000073736572;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x636972656E6567;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  v7 = 0x6D754E656E6F6870;
  v8 = 0xEB00000000726562;
  if (*a2 != 1)
  {
    v7 = 0x6464416C69616D65;
    v8 = 0xEC00000073736572;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x636972656E6567;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE700000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_24F92CE08();
  }

  return v11 & 1;
}

uint64_t sub_24F7E6E30()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24F7E6EE4()
{
  sub_24F92B218();
}

uint64_t sub_24F7E6F84()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

void sub_24F7E7040(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0xEB00000000726562;
  v5 = 0x6D754E656E6F6870;
  if (v2 != 1)
  {
    v5 = 0x6464416C69616D65;
    v4 = 0xEC00000073736572;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x636972656E6567;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t CallHandle.value.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t CallHandle.value.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

unint64_t CallHandle.jsRepresentation(in:)@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  v5 = *(v1 + 1);
  v4 = *(v1 + 2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F08);
  inited = swift_initStackObject();
  v7 = inited;
  *(inited + 16) = xmmword_24F93A400;
  *(inited + 32) = 1701869940;
  *(inited + 40) = 0xE400000000000000;
  if (v3)
  {
    if (v3 == 1)
    {
      v8 = 0xEB00000000726562;
      v9 = 0x6D754E656E6F6870;
    }

    else
    {
      v8 = 0xEC00000073736572;
      v9 = 0x6464416C69616D65;
    }
  }

  else
  {
    v8 = 0xE700000000000000;
    v9 = 0x636972656E6567;
  }

  v10 = MEMORY[0x277D837D0];
  v11 = MEMORY[0x277D22580];
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 80) = v11;
  *(inited + 48) = v9;
  *(inited + 56) = v8;
  *(inited + 88) = 0x65756C6176;
  *(inited + 96) = 0xE500000000000000;
  *(inited + 128) = v10;
  *(inited + 136) = v11;
  *(inited + 104) = v5;
  *(inited + 112) = v4;

  v12 = sub_24E607D0C(v7);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F18);
  swift_arrayDestroy();
  v13 = sub_24E80FFAC(v12);

  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F20);
  result = sub_24E6060B8();
  a1[4] = result;
  *a1 = v13;
  return result;
}

uint64_t sub_24F7E73C4()
{
  if (*v0)
  {
    return 0x65756C6176;
  }

  else
  {
    return 1701869940;
  }
}

uint64_t sub_24F7E73F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v5 || (sub_24F92CE08() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x65756C6176 && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_24F92CE08();

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

uint64_t sub_24F7E74CC(uint64_t a1)
{
  v2 = sub_24F7E8180();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F7E7508(uint64_t a1)
{
  v2 = sub_24F7E8180();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t CallHandle.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F251400);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v11 - v6;
  v8 = *v1;
  v9 = *(v1 + 1);
  v11[0] = *(v1 + 2);
  v11[1] = v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F7E8180();
  sub_24F92D128();
  v14 = v8;
  v13 = 0;
  sub_24F26F034();
  sub_24F92CD48();
  if (!v2)
  {
    v12 = 1;
    sub_24F92CD08();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t CallHandle.hash(into:)()
{
  sub_24F92B218();

  return sub_24F92B218();
}

uint64_t CallHandle.hashValue.getter()
{
  sub_24F92D068();
  sub_24F92B218();

  sub_24F92B218();
  return sub_24F92D0B8();
}

uint64_t CallHandle.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F251410);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v14 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F7E8180();
  sub_24F92D108();
  if (!v2)
  {
    v16 = 0;
    sub_24F26F100();
    sub_24F92CC68();
    v9 = v17;
    v15 = 1;
    v11 = sub_24F92CC28();
    v13 = v12;
    (*(v6 + 8))(v8, v5);
    *a2 = v9;
    *(a2 + 8) = v11;
    *(a2 + 16) = v13;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_24F7E7A38()
{
  sub_24F92D068();
  sub_24F92B218();

  sub_24F92B218();
  return sub_24F92D0B8();
}

uint64_t sub_24F7E7B08()
{
  sub_24F92B218();

  return sub_24F92B218();
}

uint64_t sub_24F7E7BC8()
{
  sub_24F92D068();
  sub_24F92B218();

  sub_24F92B218();
  return sub_24F92D0B8();
}

uint64_t sub_24F7E7CE0(void *a1, void *a2, void **a3)
{
  v6 = type metadata accessor for CallProviderConversationHandle();
  v7 = *(v6 - 8);
  *&v8 = MEMORY[0x28223BE20](v6).n128_u64[0];
  v10 = (v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = [a2 userIdentifier];
  v12 = sub_24F92B0D8();
  v14 = v13;

  *&v28 = v12;
  *(&v28 + 1) = v14;
  v27[0] = 64;
  v27[1] = 0xE100000000000000;
  sub_24E600AEC();
  if ((sub_24F92C5F8() & 1) == 0)
  {
    v16 = sub_24F92B358();

    if (v16)
    {
      if (([a1 supportsHandleType_] & 1) == 0)
      {
        if (([a1 supportsHandleType_] & 1) == 0)
        {
          return 0;
        }

LABEL_11:
        v15 = 0;
        goto LABEL_14;
      }
    }

    else
    {
      if ([a1 supportsHandleType_])
      {
        goto LABEL_11;
      }

      if (([a1 supportsHandleType_] & 1) == 0)
      {
        return 0;
      }
    }

    v15 = 1;
    goto LABEL_14;
  }

  if (([a1 supportsHandleType_] & 1) == 0)
  {
    result = [a1 supportsHandleType_];
    if (!result)
    {
      return result;
    }

    goto LABEL_11;
  }

  v15 = 2;
LABEL_14:
  v18 = [a2 userIdentifier];
  v19 = sub_24F92B0D8();
  v21 = v20;

  sub_24F042070(a1, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213858);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_24F93DE60;
  *(v22 + 32) = v15;
  *(v22 + 40) = v19;
  *(v22 + 48) = v21;
  sub_24F26E39C(v22, &v28);
  *(v10 + *(v6 + 20)) = v28;
  v23 = *a3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a3 = v23;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v23 = sub_24E616D0C(0, v23[2] + 1, 1, v23);
    *a3 = v23;
  }

  v26 = v23[2];
  v25 = v23[3];
  if (v26 >= v25 >> 1)
  {
    v23 = sub_24E616D0C(v25 > 1, v26 + 1, 1, v23);
    *a3 = v23;
  }

  v23[2] = v26 + 1;
  sub_24F7E8C08(v10, v23 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v26);
  return 1;
}

uint64_t _s12GameStoreKit10CallHandleV2eeoiySbAC_ACtFZ_0(unsigned __int8 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 1);
  v4 = *(a1 + 2);
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  v7 = 0x6D754E656E6F6870;
  v8 = 0xEB00000000726562;
  if (v2 != 1)
  {
    v7 = 0x6464416C69616D65;
    v8 = 0xEC00000073736572;
  }

  if (*a1)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x636972656E6567;
  }

  if (v2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE700000000000000;
  }

  v11 = 0x6D754E656E6F6870;
  v12 = 0xEB00000000726562;
  if (*a2 != 1)
  {
    v11 = 0x6464416C69616D65;
    v12 = 0xEC00000073736572;
  }

  if (*a2)
  {
    v13 = v11;
  }

  else
  {
    v13 = 0x636972656E6567;
  }

  if (*a2)
  {
    v14 = v12;
  }

  else
  {
    v14 = 0xE700000000000000;
  }

  if (v9 == v13 && v10 == v14)
  {
  }

  else
  {
    v15 = sub_24F92CE08();

    result = 0;
    if ((v15 & 1) == 0)
    {
      return result;
    }
  }

  if (v3 == v5 && v4 == v6)
  {
    return 1;
  }

  return sub_24F92CE08();
}

unint64_t sub_24F7E8180()
{
  result = qword_27F251408;
  if (!qword_27F251408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F251408);
  }

  return result;
}

unint64_t sub_24F7E81D8()
{
  result = qword_27F251418;
  if (!qword_27F251418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F251418);
  }

  return result;
}

unint64_t sub_24F7E8230()
{
  result = qword_27F251420;
  if (!qword_27F251420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F251420);
  }

  return result;
}

unint64_t sub_24F7E82B8()
{
  result = qword_27F251428;
  if (!qword_27F251428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F251428);
  }

  return result;
}

unint64_t sub_24F7E8310()
{
  result = qword_27F251430;
  if (!qword_27F251430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F251430);
  }

  return result;
}

unint64_t sub_24F7E8368()
{
  result = qword_27F251438;
  if (!qword_27F251438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F251438);
  }

  return result;
}

unint64_t sub_24F7E83BC()
{
  result = qword_27F251440;
  if (!qword_27F251440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F251440);
  }

  return result;
}

void *sub_24F7E8410(void *a1, uint64_t a2)
{
  v57 = *a2;
  v58 = *(a2 + 8);
  v59 = *(a2 + 16);
  v56 = *(a2 + 24);
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);
  v66 = MEMORY[0x277D84F90];
  v6 = [a1 value];
  v7 = [v6 bundleIdentifiers];
  v54 = a1;
  v55 = v6;
  if (v7)
  {
    v8 = v7;
    v9 = sub_24F92B5A8();

    if (qword_27F211400 != -1)
    {
      swift_once();
    }

    v10 = sub_24F9220D8();
    __swift_project_value_buffer(v10, qword_27F39E850);

    v11 = sub_24F9220B8();
    v12 = sub_24F92BD98();

    if (os_log_type_enabled(v11, v12))
    {
      v2 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v60 = v13;
      *v2 = 136315138;
      v14 = MEMORY[0x253050F40](v9, MEMORY[0x277D837D0]);
      v16 = sub_24E7620D4(v14, v15, &v60);

      *(v2 + 4) = v16;
      _os_log_impl(&dword_24E5DD000, v11, v12, "bundleIdentifiers are %s", v2, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v13);
      MEMORY[0x2530542D0](v13, -1, -1);
      MEMORY[0x2530542D0](v2, -1, -1);
    }

    v17 = *(v9 + 16);
    if (v17)
    {
      v18 = 0;
      v6 = (v9 + 40);
      while (v18 < *(v9 + 16))
      {
        v2 = *(v6 - 1);
        v12 = *v6;
        v60 = v57;
        v61 = v58;
        v62 = v59;
        v63 = v56;
        v64 = v4;
        v65 = v5;

        v19 = sub_24F2BFEB0(v2, v12);

        if (v19)
        {
          if (sub_24F7E7CE0(v19, v55, &v66))
          {

            goto LABEL_37;
          }
        }

        ++v18;
        v6 += 2;
        if (v17 == v18)
        {
          goto LABEL_13;
        }
      }

      __break(1u);
      goto LABEL_40;
    }

LABEL_13:

    v6 = v55;
  }

  else
  {
    v20 = [a1 label];
    if (v20)
    {
      v21 = v20;
      v22 = sub_24F92B0D8();
      v24 = v23;

      if (qword_27F211400 != -1)
      {
        swift_once();
      }

      v25 = sub_24F9220D8();
      __swift_project_value_buffer(v25, qword_27F39E850);

      v26 = sub_24F9220B8();
      v27 = sub_24F92BD98();

      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        v60 = v29;
        *v28 = 136315138;
        *(v28 + 4) = sub_24E7620D4(v22, v24, &v60);
        _os_log_impl(&dword_24E5DD000, v26, v27, "label is %s", v28, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v29);
        MEMORY[0x2530542D0](v29, -1, -1);
        MEMORY[0x2530542D0](v28, -1, -1);
      }

      v60 = v57;
      v61 = v58;
      v62 = v59;
      v63 = v56;
      v64 = v4;
      v65 = v5;
      v30 = sub_24F2C0014(v22, v24);

      if (v30)
      {
        v31 = sub_24F7E7CE0(v30, v6, &v66);

        if (v31)
        {

LABEL_37:

          v6 = v59;
          goto LABEL_38;
        }
      }
    }
  }

  v2 = [v6 service];
  if (!v2)
  {
    sub_24F92B0D8();
    v2 = sub_24F92B098();
  }

  v12 = sub_24F92B0D8();
  v9 = v32;
  if (qword_27F211400 != -1)
  {
LABEL_40:
    swift_once();
  }

  v33 = sub_24F9220D8();
  __swift_project_value_buffer(v33, qword_27F39E850);

  v34 = sub_24F9220B8();
  v35 = sub_24F92BD98();

  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v60 = v37;
    *v36 = 136315138;
    *(v36 + 4) = sub_24E7620D4(v12, v9, &v60);
    _os_log_impl(&dword_24E5DD000, v34, v35, "service is %s", v36, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v37);
    MEMORY[0x2530542D0](v37, -1, -1);
    v38 = v36;
    v6 = v55;
    MEMORY[0x2530542D0](v38, -1, -1);
  }

  v60 = v57;
  v61 = v58;
  v62 = v59;
  v63 = v56;
  v64 = v4;
  v65 = v5;
  v39 = sub_24F2C0014(v12, v9);
  if (v39)
  {
    v40 = v39;
    v41 = sub_24F7E7CE0(v39, v6, &v66);

    if (v41)
    {

      goto LABEL_37;
    }
  }

  v42 = [objc_opt_self() localizedStringForService_];

  v43 = sub_24F92B0D8();
  v45 = v44;

  v46 = sub_24F9220B8();
  v47 = sub_24F92BD98();

  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v60 = v49;
    *v48 = 136315138;
    v50 = sub_24E7620D4(v12, v9, &v60);

    *(v48 + 4) = v50;
    _os_log_impl(&dword_24E5DD000, v46, v47, "localized service is %s", v48, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v49);
    v51 = v49;
    v6 = v55;
    MEMORY[0x2530542D0](v51, -1, -1);
    MEMORY[0x2530542D0](v48, -1, -1);
  }

  else
  {
  }

  v60 = v57;
  v61 = v58;
  v62 = v59;
  v63 = v56;
  v64 = v4;
  v65 = v5;
  v52 = sub_24F2C0014(v43, v45);

  if (v52)
  {
    sub_24F7E7CE0(v52, v6, &v66);
  }

  else
  {
  }

LABEL_38:

  return v66;
}

uint64_t sub_24F7E8C08(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CallProviderConversationHandle();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24F7E8C6C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F242AC8);
  MEMORY[0x28223BE20](v0);
  v2 = &v5 - v1;
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2471E0);
  v3 = swift_allocObject();
  *&v3[(*(*v3 + 48) + 3) & 0x1FFFFFFFCLL] = 0;
  result = sub_24F408C90(v2, &v3[*(*v3 + *MEMORY[0x277D841D0] + 16)]);
  off_27F251448 = v3;
  return result;
}

uint64_t sub_24F7E8DA0()
{
  v0 = type metadata accessor for DataIntentCacheBusterStreamState();
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v6 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218350);
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2471F0);
  v4 = swift_allocObject();
  *&v4[(*(*v4 + 48) + 3) & 0x1FFFFFFFCLL] = 0;
  result = sub_24F7EB54C(v2, &v4[*(*v4 + *MEMORY[0x277D841D0] + 16)], type metadata accessor for DataIntentCacheBusterStreamState);
  off_27F251450 = v4;
  return result;
}

uint64_t sub_24F7E8F18(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2471C0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v16 - v5;
  v7 = type metadata accessor for DataIntentCacheBusterStreamState();
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24E8F8EBC(a1, v9, type metadata accessor for DataIntentCacheBusterStreamState);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218350);
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v9, 1, v10) != 1)
  {
    return sub_24F7EB3AC(v9, type metadata accessor for DataIntentCacheBusterStreamState);
  }

  sub_24F7EB3AC(a1, type metadata accessor for DataIntentCacheBusterStreamState);
  v12 = sub_24E802CE0(&unk_2861C2670);
  v16[1] = v1;
  v13 = MEMORY[0x28223BE20](v12);
  v16[-4] = v14;
  v16[-3] = &unk_24FA2D8A0;
  v16[-2] = 0;
  LOWORD(v16[-1]) = 0;
  (*(v4 + 104))(v6, *MEMORY[0x277D85778], v3, v13);
  sub_24F92B928();

  return (*(v11 + 56))(a1, 0, 1, v10);
}

uint64_t sub_24F7E91C8(uint64_t a1, _BYTE *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570);
  *(v2 + 16) = swift_task_alloc();
  *(v2 + 24) = *(type metadata accessor for Player(0) - 8);
  *(v2 + 32) = swift_task_alloc();
  *(v2 + 40) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F242AC8);
  *(v2 + 48) = swift_task_alloc();
  *(v2 + 96) = *a2;

  return MEMORY[0x2822009F8](sub_24F7E9300, 0, 0);
}

uint64_t sub_24F7E9300()
{
  if (qword_27F2113E8 != -1)
  {
    swift_once();
  }

  v1 = sub_24F9220D8();
  v0[7] = __swift_project_value_buffer(v1, qword_27F39E808);
  v2 = sub_24F9220B8();
  v3 = sub_24F92BD98();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_24E5DD000, v2, v3, "[FriendRequestsDataIntentImplementation] UpdateListener says friend requests updated, dropping previously cached requests.", v4, 2u);
    MEMORY[0x2530542D0](v4, -1, -1);
  }

  if (qword_27F2118A8 != -1)
  {
    swift_once();
  }

  v5 = v0[6];
  v6 = off_27F251448;
  v7 = *(*off_27F251448 + *MEMORY[0x277D841D0] + 16);
  v8 = (*(*off_27F251448 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((off_27F251448 + v8));
  sub_24F408C90(&v6[v7], v5);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v10 = v0[6];
  if (EnumCaseMultiPayload == 1)
  {
    v11 = *v10;
    v12 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F242AD0) + 48);
    v13 = sub_24F91F648();
    (*(*(v13 - 8) + 8))(&v10[v12], v13);
  }

  else
  {
    sub_24E601704(v0[6], &qword_27F242AC8);
    v11 = MEMORY[0x277D84F90];
  }

  v0[8] = v11;
  swift_storeEnumTagMultiPayload();
  os_unfair_lock_unlock(&v6[v8]);
  if (UpdateListener.RefreshDataType.rawValue.getter() == 0xD000000000000010 && 0x800000024FA41C90 == v14)
  {

LABEL_14:
    v16 = swift_task_alloc();
    v0[9] = v16;
    *v16 = v0;
    v16[1] = sub_24F7E966C;

    return sub_24F7EABEC();
  }

  v15 = sub_24F92CE08();

  if (v15)
  {
    goto LABEL_14;
  }

  v18 = v0[1];

  return v18();
}

uint64_t sub_24F7E966C(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 80) = a1;
  *(v3 + 88) = v1;

  if (v1)
  {
    v4 = sub_24F7E9BD0;
  }

  else
  {
    v4 = sub_24F7E9780;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_24F7E9780()
{
  v42 = v0;
  v1 = v0[8];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[3];
    v4 = v0[4];
    v41[0] = MEMORY[0x277D84F90];
    sub_24F4578E0(0, v2, 0);
    v5 = v41[0];
    v6 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v7 = *(v3 + 72);
    do
    {
      v8 = v0[4];
      sub_24E8F8EBC(v6, v8, type metadata accessor for Player);
      v9 = *v8;
      v10 = *(v4 + 8);

      sub_24F7EB3AC(v8, type metadata accessor for Player);
      v41[0] = v5;
      v12 = *(v5 + 2);
      v11 = *(v5 + 3);
      if (v12 >= v11 >> 1)
      {
        sub_24F4578E0((v11 > 1), v12 + 1, 1);
        v5 = v41[0];
      }

      *(v5 + 2) = v12 + 1;
      v13 = &v5[16 * v12];
      *(v13 + 4) = v9;
      *(v13 + 5) = v10;
      v6 += v7;
      --v2;
    }

    while (v2);
  }

  else
  {

    v5 = MEMORY[0x277D84F90];
  }

  v14 = v0[11];
  v41[0] = v5;

  sub_24E8C0BD4(v41);
  if (v14)
  {
  }

  else
  {
    v15 = v0[10];

    v16 = v41[0];
    v17 = *(v15 + 16);
    v18 = v0[10];
    if (v17)
    {
      v40 = v41[0];
      v19 = v0[3];
      v20 = v0[4];
      v41[0] = MEMORY[0x277D84F90];
      sub_24F4578E0(0, v17, 0);
      v21 = v41[0];
      v22 = v18 + ((*(v19 + 80) + 32) & ~*(v19 + 80));
      v23 = *(v19 + 72);
      do
      {
        v24 = v0[4];
        sub_24E8F8EBC(v22, v24, type metadata accessor for Player);
        v25 = *v24;
        v26 = *(v20 + 8);

        sub_24F7EB3AC(v24, type metadata accessor for Player);
        v41[0] = v21;
        v28 = *(v21 + 2);
        v27 = *(v21 + 3);
        if (v28 >= v27 >> 1)
        {
          sub_24F4578E0((v27 > 1), v28 + 1, 1);
          v21 = v41[0];
        }

        *(v21 + 2) = v28 + 1;
        v29 = &v21[16 * v28];
        *(v29 + 4) = v25;
        *(v29 + 5) = v26;
        v22 += v23;
        --v17;
      }

      while (v17);

      v16 = v40;
    }

    else
    {

      v21 = MEMORY[0x277D84F90];
    }

    v41[0] = v21;

    sub_24E8C0BD4(v41);

    v31 = sub_24EA14BB8(v16, v41[0]);

    if ((v31 & 1) == 0)
    {
      v32 = sub_24F9220B8();
      v33 = sub_24F92BD98();
      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        *v34 = 0;
        _os_log_impl(&dword_24E5DD000, v32, v33, "[FriendRequestsDataIntentImplementation] Friend requests changed after foregrounding, posting .friendRequests update", v34, 2u);
        MEMORY[0x2530542D0](v34, -1, -1);
      }

      v35 = v0[2];

      v36 = sub_24E804D60(&unk_2861C2878);
      v37 = sub_24F92B858();
      (*(*(v37 - 8) + 56))(v35, 1, 1, v37);
      v38 = swift_allocObject();
      *(v38 + 16) = 0;
      *(v38 + 24) = 0;
      *(v38 + 32) = 3;
      *(v38 + 40) = v36;
      sub_24EA998B8(0, 0, v35, &unk_24FA2D8B0, v38);
    }

    v39 = v0[1];

    return v39();
  }
}

uint64_t sub_24F7E9BD0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24F7E9C60@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_24F91F648();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v21 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F242AC8);
  MEMORY[0x28223BE20](v11);
  v13 = &v21 - v12;
  sub_24F40A7D4(a1, &v21 - v12);
  result = swift_getEnumCaseMultiPayload();
  if (result)
  {
    if (result != 1)
    {
      sub_24E601704(a1, &qword_27F242AC8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F247250);
      v19 = sub_24F92A9E8();
      *a1 = v19;
      goto LABEL_7;
    }

    v22 = *v13;
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F242AD0);
    (*(v5 + 32))(v10, &v13[*(v15 + 48)], v4);
    sub_24F91F638();
    sub_24F91F558();
    v17 = v16;
    v18 = *(v5 + 8);
    v18(v7, v4);
    if (v17 > 300.0)
    {
      sub_24E601704(a1, &qword_27F242AC8);

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F247250);
      v19 = sub_24F92A9E8();
      v18(v10, v4);
      *a1 = v19;
LABEL_7:
      swift_storeEnumTagMultiPayload();
      *a2 = v19;
      *(a2 + 8) = 0;
    }

    result = (v18)(v10, v4);
    *a2 = v22;
    v20 = 2;
  }

  else
  {
    *a2 = *v13;
    v20 = 1;
  }

  *(a2 + 8) = v20;
  return result;
}

uint64_t sub_24F7E9F3C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F228600);
    v5 = swift_allocError();
    *v6 = a3;
    v7 = a3;

    return MEMORY[0x282200958](v4, v5);
  }

  else
  {
    sub_24E635B5C();
    **(*(v4 + 64) + 40) = sub_24F92B5A8();

    return MEMORY[0x282200950](v4);
  }
}

uint64_t sub_24F7EA01C(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v5 = *a2;
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = sub_24E67D244;

  return (sub_24F7EBBBC)(v5, a3);
}

uint64_t sub_24F7EA0D4(uint64_t a1)
{
  v1[20] = a1;
  v1[21] = *(type metadata accessor for Player(0) - 8);
  v1[22] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24F7EA190, 0, 0);
}

uint64_t sub_24F7EA190()
{
  if (qword_27F2113E8 != -1)
  {
    swift_once();
  }

  v1 = sub_24F9220D8();
  v0[23] = __swift_project_value_buffer(v1, qword_27F39E808);
  v2 = sub_24F9220B8();
  v3 = sub_24F92BD98();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_24E5DD000, v2, v3, "[FriendRequestsDataIntentImplementation] Fetching friend requests...", v4, 2u);
    MEMORY[0x2530542D0](v4, -1, -1);
  }

  v5 = [objc_opt_self() proxyForLocalPlayer];
  v6 = [v5 friendServicePrivate];
  v0[24] = v6;

  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_24F7EA3A8;
  v7 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F251458);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_24F7E9F3C;
  v0[13] = &block_descriptor_179;
  v0[14] = v7;
  [v6 getCombinedFriendInvitationListWithCompletion_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_24F7EA3A8()
{
  v1 = *(*v0 + 48);
  *(*v0 + 200) = v1;
  if (v1)
  {
    v2 = sub_24F7EA8CC;
  }

  else
  {
    v2 = sub_24F7EA4B8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24F7EA4B8()
{
  v23 = v0;
  v1 = *(v0 + 144);
  swift_unknownObjectRelease();

  v2 = sub_24F9220B8();
  v3 = sub_24F92BD98();
  v4 = v1 >> 62;
  if (!os_log_type_enabled(v2, v3))
  {

    goto LABEL_6;
  }

  v5 = swift_slowAlloc();
  *v5 = 134217984;
  if (v4)
  {
    goto LABEL_28;
  }

  for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_24F92C738())
  {
    *(v5 + 4) = i;

    _os_log_impl(&dword_24E5DD000, v2, v3, "[FriendRequestsDataIntentImplementation] Fetched %ld friend requests.", v5, 0xCu);
    MEMORY[0x2530542D0](v5, -1, -1);
LABEL_6:

    if (v4)
    {
      v5 = sub_24F92C738();
      if (!v5)
      {
LABEL_18:

        v9 = MEMORY[0x277D84F90];
        goto LABEL_19;
      }
    }

    else
    {
      v5 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v5)
      {
        goto LABEL_18;
      }
    }

    v22 = MEMORY[0x277D84F90];
    v2 = &v22;
    sub_24F457FDC(0, v5 & ~(v5 >> 63), 0);
    if ((v5 & 0x8000000000000000) == 0)
    {
      break;
    }

    __break(1u);
LABEL_28:
    ;
  }

  v7 = 0;
  v8 = *(v0 + 168);
  v9 = v22;
  do
  {
    if ((v1 & 0xC000000000000001) != 0)
    {
      v10 = MEMORY[0x253052270](v7, v1);
    }

    else
    {
      v10 = *(v1 + 8 * v7 + 32);
    }

    sub_24F3FAC70(v10, 0, 0, *(v0 + 176));
    v22 = v9;
    v12 = *(v9 + 16);
    v11 = *(v9 + 24);
    if (v12 >= v11 >> 1)
    {
      sub_24F457FDC(v11 > 1, v12 + 1, 1);
      v9 = v22;
    }

    v13 = *(v0 + 176);
    ++v7;
    *(v9 + 16) = v12 + 1;
    sub_24F7EB54C(v13, v9 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v12, type metadata accessor for Player);
  }

  while (v5 != v7);

LABEL_19:

  v14 = sub_24F9220B8();
  v15 = sub_24F92BD98();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 134217984;
    *(v16 + 4) = *(v9 + 16);

    _os_log_impl(&dword_24E5DD000, v14, v15, "[FriendRequestsDataIntentImplementation] Caching and returning %ld friend requests.", v16, 0xCu);
    MEMORY[0x2530542D0](v16, -1, -1);
  }

  else
  {
  }

  if (qword_27F2118A8 != -1)
  {
    swift_once();
  }

  v17 = off_27F251448;
  *(swift_task_alloc() + 16) = v9;
  v18 = *(*v17 + *MEMORY[0x277D841D0] + 16);
  v19 = (*(*v17 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock(&v17[v19]);
  sub_24F40A860(&v17[v18]);
  os_unfair_lock_unlock(&v17[v19]);

  *(v0 + 152) = v9;
  sub_24F92A9C8();

  v20 = *(v0 + 8);

  return v20(v9);
}

uint64_t sub_24F7EA8CC()
{
  v1 = v0[25];
  swift_willThrow();
  swift_unknownObjectRelease();
  v2 = v1;
  v3 = sub_24F9220B8();
  v4 = sub_24F92BDB8();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[25];
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_24E5DD000, v3, v4, "[FriendRequestsDataIntentImplementation] Unable to fetch friend requests: %@", v7, 0xCu);
    sub_24E601704(v8, &qword_27F227B20);
    MEMORY[0x2530542D0](v8, -1, -1);
    MEMORY[0x2530542D0](v7, -1, -1);
  }

  v11 = MEMORY[0x277D84F90];

  v12 = sub_24F9220B8();
  v13 = sub_24F92BD98();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 134217984;
    *(v14 + 4) = *(v11 + 16);

    _os_log_impl(&dword_24E5DD000, v12, v13, "[FriendRequestsDataIntentImplementation] Caching and returning %ld friend requests.", v14, 0xCu);
    MEMORY[0x2530542D0](v14, -1, -1);
  }

  else
  {
  }

  if (qword_27F2118A8 != -1)
  {
    swift_once();
  }

  v15 = off_27F251448;
  *(swift_task_alloc() + 16) = v11;
  v16 = *(*v15 + *MEMORY[0x277D841D0] + 16);
  v17 = (*(*v15 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock(&v15[v17]);
  sub_24F40A860(&v15[v16]);
  os_unfair_lock_unlock(&v15[v17]);

  v0[19] = v11;
  sub_24F92A9C8();

  v18 = v0[1];

  return v18(v11);
}

uint64_t sub_24F7EAC08()
{
  v20 = v0;
  if (qword_27F2118A8 != -1)
  {
    swift_once();
  }

  v1 = off_27F251448;
  v2 = *(*off_27F251448 + *MEMORY[0x277D841D0] + 16);
  v3 = (*(*off_27F251448 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((off_27F251448 + v3));
  sub_24F7E9C60(&v1[v2], &v18);
  os_unfair_lock_unlock(&v1[v3]);
  v4 = v18;
  v0[3] = v18;
  if (v19)
  {
    if (v19 == 1)
    {
      if (qword_27F2113E8 != -1)
      {
        swift_once();
      }

      v5 = sub_24F9220D8();
      v0[6] = __swift_project_value_buffer(v5, qword_27F39E808);
      v6 = sub_24F9220B8();
      v7 = sub_24F92BD98();
      if (os_log_type_enabled(v6, v7))
      {
        v8 = swift_slowAlloc();
        *v8 = 0;
        _os_log_impl(&dword_24E5DD000, v6, v7, "[FriendRequestsDataIntentImplementation] Fetch in progress, waiting for it to finish...", v8, 2u);
        MEMORY[0x2530542D0](v8, -1, -1);
      }

      v9 = swift_task_alloc();
      v0[7] = v9;
      *v9 = v0;
      v9[1] = sub_24F7EB13C;

      return MEMORY[0x282180668](v0 + 2);
    }

    else
    {
      v11 = qword_27F2113E8;

      if (v11 != -1)
      {
        swift_once();
      }

      v12 = sub_24F9220D8();
      __swift_project_value_buffer(v12, qword_27F39E808);
      v13 = sub_24F9220B8();
      v14 = sub_24F92BD98();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        *v15 = 0;
        _os_log_impl(&dword_24E5DD000, v13, v14, "[FriendRequestsDataIntentImplementation] Returning cached friend requests.", v15, 2u);
        MEMORY[0x2530542D0](v15, -1, -1);
      }

      sub_24F7EB510(v4, 2u);
      v16 = v0[1];

      return v16(v4);
    }
  }

  else
  {

    v10 = swift_task_alloc();
    v0[4] = v10;
    *v10 = v0;
    v10[1] = sub_24F7EAFC0;

    return sub_24F7EA0D4(v4);
  }
}

uint64_t sub_24F7EAFC0(uint64_t a1)
{
  *(*v1 + 40) = a1;

  return MEMORY[0x2822009F8](sub_24F7EB0C0, 0, 0);
}

uint64_t sub_24F7EB0C0()
{
  v1 = v0[3];
  sub_24F7EB510(v1, 0);
  sub_24F7EB510(v1, 0);
  v2 = v0[5];
  v3 = v0[1];

  return v3(v2);
}

uint64_t sub_24F7EB13C()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_24F7EB344;
  }

  else
  {
    v2 = sub_24F7EB250;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24F7EB250()
{
  v1 = v0[2];
  v2 = sub_24F9220B8();
  v3 = sub_24F92BD98();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[3];
  if (v4)
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_24E5DD000, v2, v3, "[FriendRequestsDataIntentImplementation] Fetch finished, returning newly-cached friend requests", v6, 2u);
    MEMORY[0x2530542D0](v6, -1, -1);
  }

  sub_24F7EB510(v5, 1u);
  v7 = v0[1];

  return v7(v1);
}

uint64_t sub_24F7EB344()
{
  sub_24F7EB510(*(v0 + 24), 1u);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24F7EB3AC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24F7EB40C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_24F7EB44C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 40);
  v7 = *(v1 + 32);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_24E614970;

  return sub_24F83C8AC(a1, v4, v5, v7, v6);
}

uint64_t sub_24F7EB510(uint64_t a1, unsigned __int8 a2)
{
  if (a2 == 2)
  {
  }

  if (a2 <= 1u)
  {
  }

  return result;
}

uint64_t sub_24F7EB54C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24F7EB5C8(uint64_t a1, _BYTE *a2)
{
  v4 = type metadata accessor for Player(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v18 - v9;
  if (*a2 == 1)
  {
  }

  else
  {
    v11 = *(a1 + 16);
    if (v11)
    {
      v12 = *(v8 + 72);
      v18 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      v13 = a1 + v18;
      a1 = MEMORY[0x277D84F90];
      do
      {
        sub_24E8F8EBC(v13, v10, type metadata accessor for Player);
        if (*&v10[*(v4 + 32) + 8])
        {
          sub_24F7EB54C(v10, v6, type metadata accessor for Player);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v19 = a1;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_24F457FDC(0, *(a1 + 16) + 1, 1);
            a1 = v19;
          }

          v16 = *(a1 + 16);
          v15 = *(a1 + 24);
          if (v16 >= v15 >> 1)
          {
            sub_24F457FDC(v15 > 1, v16 + 1, 1);
            a1 = v19;
          }

          *(a1 + 16) = v16 + 1;
          sub_24F7EB54C(v6, a1 + v18 + v16 * v12, type metadata accessor for Player);
        }

        else
        {
          sub_24F7EB3AC(v10, type metadata accessor for Player);
        }

        v13 += v12;
        --v11;
      }

      while (v11);
    }

    else
    {
      return MEMORY[0x277D84F90];
    }
  }

  return a1;
}

uint64_t sub_24F7EB800(unint64_t a1)
{
  v39 = type metadata accessor for Player(0);
  v2 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v42 = &v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = (&v38 - v5);
  MEMORY[0x28223BE20](v7);
  v9 = (&v38 - v8);
  v10 = *(a1 + 16);
  v11 = MEMORY[0x277D84F90];
  v41 = v10;
  if (v10)
  {
    v43 = MEMORY[0x277D84F90];
    sub_24F4578E0(0, v10, 0);
    v11 = v43;
    v12 = *(v2 + 80);
    v40 = a1;
    v13 = a1 + ((v12 + 32) & ~v12);
    v38 = v2;
    v14 = v2[9];
    do
    {
      sub_24E8F8EBC(v13, v9, type metadata accessor for Player);
      v15 = *v9;
      v16 = v9[1];

      sub_24F7EB3AC(v9, type metadata accessor for Player);
      v43 = v11;
      v18 = *(v11 + 16);
      v17 = *(v11 + 24);
      if (v18 >= v17 >> 1)
      {
        sub_24F4578E0((v17 > 1), v18 + 1, 1);
        v11 = v43;
      }

      *(v11 + 16) = v18 + 1;
      v19 = v11 + 16 * v18;
      *(v19 + 32) = v15;
      *(v19 + 40) = v16;
      v13 += v14;
      --v10;
    }

    while (v10);
    a1 = v40;
    v10 = v41;
    v2 = v38;
  }

  v20 = sub_24F45D828(v11);

  v21 = *(v20 + 16);

  if (v10 <= v21)
  {
  }

  else
  {
    v22 = 0;
    v40 = (*(v2 + 80) + 32) & ~*(v2 + 80);
    v23 = a1 + v40;
    v24 = v2[9];
    v38 = v6 + 1;
    v25 = v10 + 1;
    a1 = MEMORY[0x277D84F90];
    do
    {
      v26 = a1;
      v27 = v23 + v24 * v22++;
      sub_24E8F8EBC(v27, v6, type metadata accessor for Player);
      v28 = 0;
      v29 = v25;
      v30 = (v23 + 8);
      while (--v29)
      {
        result = *(v30 - 1);
        if (result == *v6 && *v30 == v6[1])
        {
          v31 = 1;
        }

        else
        {
          result = sub_24F92CE08();
          v31 = result & 1;
        }

        v30 = (v30 + v24);
        v32 = __OFADD__(v28, v31);
        v28 += v31;
        if (v32)
        {
          __break(1u);
          return result;
        }
      }

      if (v28 > 1 && *(v38 + *(v39 + 60)))
      {
        sub_24F7EB3AC(v6, type metadata accessor for Player);
        a1 = v26;
      }

      else
      {
        sub_24F7EB54C(v6, v42, type metadata accessor for Player);
        a1 = v26;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v43 = v26;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_24F457FDC(0, *(v26 + 16) + 1, 1);
          a1 = v43;
        }

        v37 = *(a1 + 16);
        v36 = *(a1 + 24);
        if (v37 >= v36 >> 1)
        {
          sub_24F457FDC(v36 > 1, v37 + 1, 1);
          a1 = v43;
        }

        *(a1 + 16) = v37 + 1;
        sub_24F7EB54C(v42, a1 + v40 + v37 * v24, type metadata accessor for Player);
      }
    }

    while (v22 != v41);
  }

  return a1;
}

uint64_t sub_24F7EBBBC(char a1, uint64_t a2)
{
  *(v2 + 16) = a2;
  *(v2 + 65) = a1;
  return MEMORY[0x2822009F8](sub_24F7EBBE0, 0, 0);
}

uint64_t sub_24F7EBBE0()
{
  if (qword_27F2113E8 != -1)
  {
    swift_once();
  }

  v1 = sub_24F9220D8();
  *(v0 + 24) = __swift_project_value_buffer(v1, qword_27F39E808);
  v2 = sub_24F9220B8();
  v3 = sub_24F92BD98();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_24E5DD000, v2, v3, "[FriendRequestsDataIntentImplementation] Fetching friend requests...", v4, 2u);
    MEMORY[0x2530542D0](v4, -1, -1);
  }

  v5 = swift_task_alloc();
  *(v0 + 32) = v5;
  *v5 = v0;
  v5[1] = sub_24F7EBD2C;

  return sub_24F7EABEC();
}

uint64_t sub_24F7EBD2C(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 40) = a1;

  if (v1)
  {
    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_24F7EBE60, 0, 0);
  }
}

uint64_t sub_24F7EBE60()
{
  v1 = *(v0 + 65);
  if (v1 == 2 || (v1 & 1) == 0)
  {
    v5 = sub_24F9220B8();
    v6 = sub_24F92BD98();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_24E5DD000, v5, v6, "[FriendRequestsDataIntentImplementation] Fetched raw friend requests. Filtering...", v7, 2u);
      MEMORY[0x2530542D0](v7, -1, -1);
    }

    v8 = swift_task_alloc();
    *(v0 + 48) = v8;
    *v8 = v0;
    v8[1] = sub_24F7EBFD0;
    v9 = *(v0 + 16);

    return sub_24E64D1F4(v0 + 64, v9);
  }

  else
  {
    v2 = *(v0 + 40);
    v3 = *(v0 + 8);

    return v3(v2);
  }
}

uint64_t sub_24F7EBFD0()
{
  *(*v1 + 56) = v0;

  if (v0)
  {

    v2 = sub_24F7EC31C;
  }

  else
  {
    v2 = sub_24F7EC0EC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24F7EC0EC()
{
  v22 = v0;
  v1 = *(v0 + 40);
  v2 = *(v0 + 64);
  v20 = *(v0 + 64);
  v3 = sub_24F7EB5C8(v1, &v20);
  v4 = *(v1 + 16);
  v5 = *(v3 + 16);
  v6 = sub_24F7EB800(v3);

  v7 = *(v6 + 16);

  v8 = sub_24F9220B8();
  v9 = sub_24F92BD98();
  if (os_log_type_enabled(v8, v9))
  {
    v19 = v5 - v7;
    v18 = v4 - v5;
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v21 = v11;
    *v10 = 134219010;
    v12 = *(v1 + 16);

    *(v10 + 4) = v12;

    *(v10 + 12) = 2048;
    *(v10 + 14) = v18;
    *(v10 + 22) = 2080;
    if (v2)
    {
      v13 = 0x656E6F7972657665;
    }

    else
    {
      v13 = 0x73746361746E6F63;
    }

    if (v2)
    {
      v14 = 0xE800000000000000;
    }

    else
    {
      v14 = 0xEC000000796C6E4FLL;
    }

    v15 = sub_24E7620D4(v13, v14, &v21);

    *(v10 + 24) = v15;
    *(v10 + 32) = 2048;
    *(v10 + 34) = v19;
    *(v10 + 42) = 2048;
    *(v10 + 44) = v7;
    _os_log_impl(&dword_24E5DD000, v8, v9, "[FriendRequestsDataIntentImplementation] gamed (or our cache) returned %ld friend requests. %ld were removed because the contacts filter was set to %s. %ld were removed for being duplicates. Final count: %ld", v10, 0x34u);
    __swift_destroy_boxed_opaque_existential_1(v11);
    MEMORY[0x2530542D0](v11, -1, -1);
    MEMORY[0x2530542D0](v10, -1, -1);
  }

  else
  {
    swift_bridgeObjectRelease_n();
  }

  v16 = *(v0 + 8);

  return v16(v6);
}

uint64_t sub_24F7EC358(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 32);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 36);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_24F7EC4A8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 32);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 36);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t type metadata accessor for GSKParagraph()
{
  result = qword_27F251460;
  if (!qword_27F251460)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24F7EC630()
{
  sub_24E61C7D0();
  if (v0 <= 0x3F)
  {
    sub_24E6BCB04();
    if (v1 <= 0x3F)
    {
      sub_24E65B038(319, &qword_27F213EA0, &qword_27F213EA8);
      if (v2 <= 0x3F)
      {
        sub_24E65B038(319, &qword_27F215458, &qword_27F215460);
        if (v3 <= 0x3F)
        {
          sub_24E61C938();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_24F7EC734(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F251490);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F7ED8AC();
  sub_24F92D128();
  v8[15] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F18);
  sub_24E602068(&qword_27F214040, &qword_27F213F18);
  sub_24F92CD48();
  if (!v1)
  {
    v8[14] = 1;
    sub_24F92CCA8();
    v8[13] = 2;
    sub_24F92CD08();
    v8[12] = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F24EC90);
    sub_24E620EE4(&qword_27F214048, &qword_27F214050);
    sub_24F92CD48();
    type metadata accessor for GSKParagraph();
    v8[11] = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440);
    sub_24E65CD0C();
    sub_24F92CD48();
    v8[10] = 5;
    sub_24F929608();
    sub_24F7ED9C0(&qword_27F214058, MEMORY[0x277D21F70]);
    sub_24F92CCF8();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_24F7ECA98@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  MEMORY[0x28223BE20](v3 - 8);
  v36 = &v33 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440);
  MEMORY[0x28223BE20](v5);
  v7 = &v33 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F251480);
  v37 = *(v8 - 8);
  v38 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v33 - v9;
  v11 = type metadata accessor for GSKParagraph();
  MEMORY[0x28223BE20](v11);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v13 + 72) = 0u;
  v45 = 0;
  v43 = 0u;
  v44 = 0u;
  *(v13 + 88) = 0u;
  *(v13 + 13) = 0;
  v41 = v13 + 72;
  sub_24E61DA68(&v43, (v13 + 72), qword_27F21B590);
  v14 = *(v11 + 32);
  v15 = sub_24F92A6D8();
  v16 = *(*(v15 - 8) + 56);
  v40 = v14;
  v16(&v13[v14], 1, 1, v15);
  v17 = a1[3];
  v42 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v17);
  sub_24F7ED8AC();
  v18 = v39;
  sub_24F92D108();
  if (v18)
  {
    v21 = v40;
    __swift_destroy_boxed_opaque_existential_1(v42);
    sub_24E601704(v41, qword_27F24EC90);
    return sub_24E601704(&v13[v21], &qword_27F215440);
  }

  else
  {
    v33 = v11;
    v34 = v5;
    v39 = v7;
    v19 = v37;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F18);
    v46 = 0;
    sub_24E602068(&qword_27F213F30, &qword_27F213F18);
    v20 = v38;
    sub_24F92CC68();
    v22 = v44;
    *v13 = v43;
    *(v13 + 1) = v22;
    *(v13 + 4) = v45;
    LOBYTE(v43) = 1;
    v23 = sub_24F92CBC8();
    v24 = v40;
    v25 = v19;
    *(v13 + 5) = v23;
    *(v13 + 6) = v26;
    LOBYTE(v43) = 2;
    v27 = sub_24F92CC28();
    v28 = v41;
    *(v13 + 7) = v27;
    *(v13 + 8) = v29;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F24EC90);
    v46 = 3;
    sub_24E620EE4(&qword_27F213F38, &qword_27F213F40);
    sub_24F92CC68();
    sub_24E61DA68(&v43, v28, qword_27F24EC90);
    LOBYTE(v43) = 4;
    sub_24E65CAA0();
    v30 = v39;
    sub_24F92CC68();
    v34 = 0;
    sub_24E61DA68(v30, &v13[v24], &qword_27F215440);
    sub_24F929608();
    LOBYTE(v43) = 5;
    sub_24F7ED9C0(&qword_27F213F48, MEMORY[0x277D21F70]);
    v31 = v36;
    sub_24F92CC18();
    (*(v25 + 8))(v10, v20);
    sub_24E6009C8(v31, &v13[*(v33 + 36)], &qword_27F213E68);
    sub_24F7ED900(v13, v35);
    __swift_destroy_boxed_opaque_existential_1(v42);
    return sub_24F7ED964(v13);
  }
}

uint64_t sub_24F7ED0F4()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 0x6575676573;
  v4 = 0x4D747865746E6F63;
  if (v1 != 4)
  {
    v4 = 0xD000000000000011;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x656C746974;
  if (v1 != 1)
  {
    v5 = 0xD000000000000012;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_24F7ED1A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24F7EDC08(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24F7ED1CC(uint64_t a1)
{
  v2 = sub_24F7ED8AC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F7ED208(uint64_t a1)
{
  v2 = sub_24F7ED8AC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24F7ED244@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v9 - v6;
  sub_24E60169C(v2 + *(a1 + 32), &v9 - v6, &qword_27F215440);
  return sub_24E6009C8(v7, a2, &qword_27F215460);
}

uint64_t sub_24F7ED384@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F10);
  MEMORY[0x28223BE20](v4);
  v6 = &v37 - v5;
  if (*(a1 + 48))
  {

    v42 = sub_24F925198();
    v7 = sub_24F925C58();
    v9 = v8;
    v10 = v4;
    v12 = v11;
    v14 = v13;

    v15 = v12 & 1;
    v4 = v10;
    v40 = v9;
    v41 = v7;
    v38 = v15;
    sub_24E5FD138(v7, v9, v15);
    v39 = v14;
  }

  else
  {
    v40 = 0;
    v41 = 0;
    v38 = 0;
    v39 = 0;
  }

  sub_24F924A88();
  v16 = sub_24F925DE8();
  v18 = v17;
  v20 = v19;
  v21 = sub_24F9251C8();
  v22 = *(v4 + 36);
  v23 = *MEMORY[0x277CE13B8];
  v24 = sub_24F927748();
  (*(*(v24 - 8) + 104))(&v6[v22], v23, v24);
  *v6 = v21;
  sub_24E602068(&qword_27F214428, &qword_27F213F10);
  v25 = sub_24F925C58();
  v27 = v26;
  v29 = v28;
  v31 = v30;
  sub_24E600B40(v16, v18, v20 & 1);

  sub_24E601704(v6, &qword_27F213F10);
  v33 = v40;
  v32 = v41;
  v35 = v38;
  v34 = v39;
  sub_24E65D2B4(v41, v40, v38, v39);
  v29 &= 1u;
  sub_24E5FD138(v25, v27, v29);

  sub_24E65D2F8(v32, v33, v35, v34);
  v43 = v29;
  *a2 = v32;
  *(a2 + 8) = v33;
  *(a2 + 16) = v35;
  *(a2 + 24) = v34;
  *(a2 + 32) = v25;
  *(a2 + 40) = v27;
  *(a2 + 48) = v29;
  *(a2 + 56) = v31;
  sub_24E600B40(v25, v27, v29);

  return sub_24E65D2F8(v32, v33, v35, v34);
}

__n128 sub_24F7ED688@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_24F924C98();
  sub_24F7ED384(a1, v7);
  *&v6[55] = v7[3];
  *&v6[39] = v7[2];
  *&v6[23] = v7[1];
  *&v6[7] = v7[0];
  *(a2 + 33) = *&v6[16];
  result = *&v6[32];
  *(a2 + 49) = *&v6[32];
  *(a2 + 65) = *&v6[48];
  *a2 = v4;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  *(a2 + 80) = *&v6[63];
  *(a2 + 17) = *v6;
  return result;
}

uint64_t sub_24F7ED71C()
{
  sub_24F47D334();

  return sub_24F9218E8();
}

unint64_t sub_24F7ED7AC()
{
  result = qword_27F251478;
  if (!qword_27F251478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F251478);
  }

  return result;
}

unint64_t sub_24F7ED8AC()
{
  result = qword_27F251488;
  if (!qword_27F251488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F251488);
  }

  return result;
}

uint64_t sub_24F7ED900(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GSKParagraph();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24F7ED964(uint64_t a1)
{
  v2 = type metadata accessor for GSKParagraph();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24F7ED9C0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_24F7EDA1C()
{
  result = qword_27F251498;
  if (!qword_27F251498)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2514A0);
    sub_24E602068(&qword_27F2514A8, &qword_27F2514B0);
    sub_24E602068(&unk_27F2129E0, &unk_27F22E040);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F251498);
  }

  return result;
}

unint64_t sub_24F7EDB04()
{
  result = qword_27F2514B8;
  if (!qword_27F2514B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2514B8);
  }

  return result;
}

unint64_t sub_24F7EDB5C()
{
  result = qword_27F2514C0;
  if (!qword_27F2514C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2514C0);
  }

  return result;
}

unint64_t sub_24F7EDBB4()
{
  result = qword_27F2514C8;
  if (!qword_27F2514C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2514C8);
  }

  return result;
}

uint64_t sub_24F7EDC08(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000012 && 0x800000024FA7E3F0 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6575676573 && a2 == 0xE500000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x4D747865746E6F63 && a2 == 0xEB00000000756E65 || (sub_24F92CE08() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000011 && 0x800000024FA451D0 == a2)
  {

    return 5;
  }

  else
  {
    v6 = sub_24F92CE08();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_24F7EDE78@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v531 = a5;
  v544 = a4;
  v567 = a3;
  v558 = a2;
  v562 = a6;
  v500 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2514D8);
  MEMORY[0x28223BE20](v500);
  v504 = &v420 - v7;
  v468 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219FF8);
  v470 = *(v468 - 8);
  MEMORY[0x28223BE20](v468);
  v451 = &v420 - v8;
  v501 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21A000);
  MEMORY[0x28223BE20](v501);
  v469 = &v420 - v9;
  v524 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2514E0);
  MEMORY[0x28223BE20](v524);
  v507 = &v420 - v10;
  v521 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2514E8);
  MEMORY[0x28223BE20](v521);
  v523 = &v420 - v11;
  v538 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2514F0);
  MEMORY[0x28223BE20](v538);
  v526 = &v420 - v12;
  v495 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2514F8);
  MEMORY[0x28223BE20](v495);
  v496 = (&v420 - v13);
  v520 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F251500);
  MEMORY[0x28223BE20](v520);
  v503 = &v420 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB0);
  MEMORY[0x28223BE20](v15 - 8);
  v471 = &v420 - v16;
  v494 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214A10);
  MEMORY[0x28223BE20](v494);
  v472 = (&v420 - v17);
  v492 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214A18);
  MEMORY[0x28223BE20](v492);
  v493 = &v420 - v18;
  v517 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214A28);
  MEMORY[0x28223BE20](v517);
  v497 = &v420 - v19;
  v534 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F251508);
  MEMORY[0x28223BE20](v534);
  v536 = &v420 - v20;
  v515 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214A30);
  MEMORY[0x28223BE20](v515);
  v516 = &v420 - v21;
  v535 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214A38);
  MEMORY[0x28223BE20](v535);
  v518 = &v420 - v22;
  v549 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F251510);
  MEMORY[0x28223BE20](v549);
  v537 = &v420 - v23;
  v514 = type metadata accessor for CardContentBackgroundStyle(0);
  MEMORY[0x28223BE20](v514);
  v490 = &v420 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v491 = &v420 - v26;
  v556 = type metadata accessor for PlayerAvatarView.Overlay(0);
  v453 = *(v556 - 8);
  MEMORY[0x28223BE20](v556);
  v543 = &v420 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v565 = type metadata accessor for PlayerAvatarView(0);
  v555 = *(v565 - 8);
  MEMORY[0x28223BE20](v565);
  v29 = &v420 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v499 = type metadata accessor for OverlappingPlayerAvatarsView();
  v498 = *(v499 - 8);
  MEMORY[0x28223BE20](v499);
  v473 = &v420 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v513 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F240B08);
  MEMORY[0x28223BE20](v513);
  v502 = &v420 - v31;
  v522 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F251518);
  MEMORY[0x28223BE20](v522);
  v512 = &v420 - v32;
  v542 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F251520);
  MEMORY[0x28223BE20](v542);
  v525 = &v420 - v33;
  v467 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214B98);
  MEMORY[0x28223BE20](v467);
  v450 = &v420 - v34;
  v485 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21A060);
  MEMORY[0x28223BE20](v485);
  v487 = &v420 - v35;
  v462 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21A068);
  MEMORY[0x28223BE20](v462);
  v465 = &v420 - v36;
  v484 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21A070);
  MEMORY[0x28223BE20](v484);
  v466 = &v420 - v37;
  v447 = type metadata accessor for HeroCardGameHeadingView();
  v446 = *(v447 - 8);
  MEMORY[0x28223BE20](v447);
  v431 = &v420 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v461 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219E50);
  MEMORY[0x28223BE20](v461);
  v449 = &v420 - v39;
  v511 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21A078);
  MEMORY[0x28223BE20](v511);
  v488 = &v420 - v40;
  v489 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F251528);
  MEMORY[0x28223BE20](v489);
  v474 = &v420 - v41;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22DF80);
  MEMORY[0x28223BE20](v42 - 8);
  v554 = &v420 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v44);
  v429 = &v420 - v45;
  v445 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2233D0);
  v444 = *(v445 - 8);
  MEMORY[0x28223BE20](v445);
  v430 = &v420 - v46;
  v463 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2272E8);
  MEMORY[0x28223BE20](v463);
  v448 = &v420 - v47;
  v482 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F251530);
  MEMORY[0x28223BE20](v482);
  v486 = &v420 - v48;
  v459 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F251538);
  MEMORY[0x28223BE20](v459);
  v460 = &v420 - v49;
  v483 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F251540);
  MEMORY[0x28223BE20](v483);
  v464 = &v420 - v50;
  v442 = sub_24F924B38();
  v437 = *(v442 - 8);
  MEMORY[0x28223BE20](v442);
  v435 = &v420 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  v441 = sub_24F921AF8();
  v440 = *(v441 - 8);
  MEMORY[0x28223BE20](v441);
  v439 = &v420 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  v510 = sub_24F9289E8();
  v509 = *(v510 - 8);
  MEMORY[0x28223BE20](v510);
  v436 = &v420 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  v458 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214C10);
  MEMORY[0x28223BE20](v458);
  v443 = &v420 - v54;
  v532 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F251548);
  MEMORY[0x28223BE20](v532);
  v506 = &v420 - v55;
  v551 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F251550);
  MEMORY[0x28223BE20](v551);
  v550 = &v420 - v56;
  v545 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F251558);
  MEMORY[0x28223BE20](v545);
  v547 = &v420 - v57;
  v533 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F251560);
  MEMORY[0x28223BE20](v533);
  v540 = &v420 - v58;
  v527 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F251568);
  MEMORY[0x28223BE20](v527);
  v528 = &v420 - v59;
  v539 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F251570);
  MEMORY[0x28223BE20](v539);
  v529 = &v420 - v60;
  v546 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F251578);
  MEMORY[0x28223BE20](v546);
  v541 = &v420 - v61;
  v552 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F251580);
  MEMORY[0x28223BE20](v552);
  v548 = &v420 - v62;
  v557 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214A20);
  MEMORY[0x28223BE20](v557);
  v530 = &v420 - v63;
  v456 = _s12GameStoreKit17CompactVisualViewVMa_0(0);
  MEMORY[0x28223BE20](v456);
  v438 = &v420 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
  v455 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F251588);
  MEMORY[0x28223BE20](v455);
  v66 = &v420 - v65;
  v477 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F251590);
  MEMORY[0x28223BE20](v477);
  v457 = &v420 - v67;
  v433 = _s12GameStoreKit18PortraitVisualViewVMa_0(0);
  v432 = *(v433 - 8);
  MEMORY[0x28223BE20](v433);
  v428 = &v420 - ((v68 + 15) & 0xFFFFFFFFFFFFFFF0);
  v566 = type metadata accessor for PlayerAvatar(0);
  MEMORY[0x28223BE20](v566);
  v70 = &v420 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v71);
  v424 = &v420 - v72;
  MEMORY[0x28223BE20](v73);
  v423 = &v420 - v74;
  MEMORY[0x28223BE20](v75);
  v425 = &v420 - v76;
  MEMORY[0x28223BE20](v77);
  v426 = &v420 - v78;
  MEMORY[0x28223BE20](v79);
  v427 = &v420 - v80;
  v454 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F251598);
  MEMORY[0x28223BE20](v454);
  v434 = &v420 - v81;
  v479 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2515A0);
  MEMORY[0x28223BE20](v479);
  v481 = &v420 - v82;
  v475 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2515A8);
  MEMORY[0x28223BE20](v475);
  v476 = (&v420 - v83);
  v480 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2515B0);
  MEMORY[0x28223BE20](v480);
  v478 = &v420 - v84;
  v564 = type metadata accessor for ChallengeCompletedCard.ParticipantResult(0);
  v508 = *(v564 - 8);
  MEMORY[0x28223BE20](v564);
  v452 = &v420 - ((v85 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v86);
  v88 = &v420 - v87;
  v89 = type metadata accessor for ChallengeVisualOutcomeMetrics.Participant();
  v90 = *(v89 - 8);
  MEMORY[0x28223BE20](v89);
  v92 = &v420 - ((v91 + 15) & 0xFFFFFFFFFFFFFFF0);
  v519 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2515B8);
  MEMORY[0x28223BE20](v519);
  v505 = &v420 - v93;
  v561 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2515C0);
  v560 = *(v561 - 8);
  MEMORY[0x28223BE20](v561);
  v553 = &v420 - v94;
  v95 = type metadata accessor for CardLayoutMetrics(0);
  MEMORY[0x28223BE20](v95);
  v97 = (&v420 - ((v96 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v98);
  v100 = &v420 - v99;
  v103 = MEMORY[0x28223BE20](v101);
  v563 = &v420 - v104;
  LODWORD(v559) = a1;
  switch(a1)
  {
    case 1u:
      v107 = v567;
      if (v567 < 2u)
      {
        goto LABEL_24;
      }

      goto LABEL_14;
    case 8u:
      v106 = v567;
      if (v567 <= 2u)
      {
        if (v567 != 1)
        {
          goto LABEL_24;
        }

        goto LABEL_17;
      }

      goto LABEL_18;
    case 4u:
      if (v567 < 4u)
      {
        goto LABEL_24;
      }

      if (v567 == 4)
      {
LABEL_20:
        if (qword_27F2112F0 != -1)
        {
          v417 = v102;
          swift_once();
          v102 = v417;
        }

        v105 = qword_27F39E610;
        goto LABEL_31;
      }

LABEL_7:
      if (qword_27F211308 != -1)
      {
        v416 = v102;
        swift_once();
        v102 = v416;
      }

      v105 = qword_27F39E658;
      goto LABEL_31;
  }

  v108 = v66;
  v109 = v29;
  v110 = v102;
  v111 = sub_24E92D030(v559, v558, v567);
  v102 = v110;
  v29 = v109;
  v66 = v108;
  v107 = v567;
  if (v111)
  {
LABEL_14:
    v106 = v107;
    if (v107 <= 2u)
    {
      if (v107)
      {
        if (v107 == 1)
        {
LABEL_17:
          v422 = v102;
          sub_24F4E9E44(v544, v97);
          sub_24F7F74B0(v97, v100, type metadata accessor for CardLayoutMetrics);
          goto LABEL_32;
        }

        v202 = v29;
        if (qword_27F2112F8 != -1)
        {
          v419 = v102;
          swift_once();
          v102 = v419;
        }

        v203 = v102;
        v204 = __swift_project_value_buffer(v102, qword_27F39E628);
        sub_24F7F7518(v204, v100, type metadata accessor for CardLayoutMetrics);
        v205 = &v100[v203[12]];
        *v205 = 0;
        *(v205 + 1) = 0;
        *(v205 + 2) = 0;
        *(v205 + 3) = 0x4024000000000000;
        v422 = v203;
        *&v100[v203[30]] = 0x403A000000000000;
        v29 = v202;
LABEL_32:
        sub_24F7F74B0(v100, v563, type metadata accessor for CardLayoutMetrics);
        if (v559 > 6u)
        {
          v119 = v567;
          if (v559 > 0xAu)
          {
            if (v559 == 11)
            {
              v181 = v567;
              v182 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214D08);
              v183 = dword_24FA2E214[v181];
              v184 = v490;
              (*(*(v182 - 8) + 56))(v490, v183, 5, v182);
              v185 = v491;
              sub_24F7F74B0(v184, v491, type metadata accessor for CardContentBackgroundStyle);
              sub_24F7F7518(v185, v516, type metadata accessor for CardContentBackgroundStyle);
              swift_storeEnumTagMultiPayload();
              sub_24F7F6D80(&qword_27F214AE0, type metadata accessor for CardContentBackgroundStyle);
              sub_24E63C1D8();
              v186 = v518;
              sub_24F924E28();
              sub_24E60169C(v186, v536, &qword_27F214A38);
              swift_storeEnumTagMultiPayload();
              sub_24F7F71A8(&qword_27F214AD8, &qword_27F214A38, &unk_24F93E690, sub_24E63C1D8);
              sub_24F7F725C();
              v187 = v537;
              sub_24F924E28();
              sub_24E601704(v186, &qword_27F214A38);
              sub_24E60169C(v187, v547, &qword_27F251510);
              swift_storeEnumTagMultiPayload();
              sub_24F7F690C();
              sub_24F7F70F0();
              v188 = v548;
              sub_24F924E28();
              sub_24E601704(v187, &qword_27F251510);
              sub_24E60169C(v188, v550, &qword_27F251580);
              swift_storeEnumTagMultiPayload();
              sub_24F7F6880();
              sub_24F7F6DC8(&qword_27F214AF0, &qword_27F214A20, &unk_24F94D670, sub_24E63C290);
              v138 = v553;
              sub_24F924E28();
              sub_24E601704(v188, &qword_27F251580);
              sub_24F7F7580(v185, type metadata accessor for CardContentBackgroundStyle);
LABEL_127:
              v140 = v562;
LABEL_142:
              sub_24E6009C8(v138, v140, &qword_27F2515C0);
              (*(v560 + 56))(v140, 0, 1, v561);
              return sub_24F7F7580(v563, type metadata accessor for CardLayoutMetrics);
            }

            if (v559 == 12)
            {
              v135 = v567;
              if (v567 > 1u)
              {
                v208 = sub_24F926C98();
                v209 = type metadata accessor for ChallengeCompletedCard(0);
                v210 = v509;
                v211 = v471;
                v212 = v510;
                (*(v509 + 16))(v471, v558 + *(v209 + 36), v510);
                (*(v210 + 56))(v211, 0, 1, v212);
                v213 = v472;
                sub_24F6C4E24(v211, v135 != 5, v208, v472);

                sub_24E601704(v211, &qword_27F213FB0);
                sub_24E60169C(v213, v493, &qword_27F214A10);
                swift_storeEnumTagMultiPayload();
                sub_24F7F6DC8(&qword_27F214AF0, &qword_27F214A20, &unk_24F94D670, sub_24E63C290);
                sub_24E63D150();
                v137 = v497;
                sub_24F924E28();
                sub_24E601704(v213, &qword_27F214A10);
              }

              else
              {
                v136 = v530;
                sub_24E923A08(0xC, v558, v567, v544, v531, v530);
                sub_24E60169C(v136, v493, &qword_27F214A20);
                swift_storeEnumTagMultiPayload();
                sub_24F7F6DC8(&qword_27F214AF0, &qword_27F214A20, &unk_24F94D670, sub_24E63C290);
                sub_24E63D150();
                v137 = v497;
                sub_24F924E28();
                sub_24E601704(v136, &qword_27F214A20);
              }

              v214 = v550;
              v215 = v553;
              v140 = v562;
              sub_24E60169C(v137, v516, &qword_27F214A28);
              swift_storeEnumTagMultiPayload();
              sub_24F7F6D80(&qword_27F214AE0, type metadata accessor for CardContentBackgroundStyle);
              sub_24E63C1D8();
              v216 = v518;
              sub_24F924E28();
              sub_24E60169C(v216, v536, &qword_27F214A38);
              swift_storeEnumTagMultiPayload();
              sub_24F7F71A8(&qword_27F214AD8, &qword_27F214A38, &unk_24F93E690, sub_24E63C1D8);
              sub_24F7F725C();
              v217 = v537;
              sub_24F924E28();
              sub_24E601704(v216, &qword_27F214A38);
              sub_24E60169C(v217, v547, &qword_27F251510);
              swift_storeEnumTagMultiPayload();
              sub_24F7F690C();
              sub_24F7F70F0();
              v218 = v548;
              sub_24F924E28();
              sub_24E601704(v217, &qword_27F251510);
              sub_24E60169C(v218, v214, &qword_27F251580);
              swift_storeEnumTagMultiPayload();
              sub_24F7F6880();
              sub_24F7F6DC8(&qword_27F214AF0, &qword_27F214A20, &unk_24F94D670, sub_24E63C290);
              sub_24F924E28();
              sub_24E601704(v218, &qword_27F251580);
              sub_24E601704(v137, &qword_27F214A28);
              v138 = v215;
              goto LABEL_142;
            }
          }

          else
          {
            if (v559 == 7)
            {
              if ((v567 - 3) > 2u)
              {
                v206 = v530;
                sub_24E923A08(7, v558, v567, v544, v531, v530);
                sub_24E60169C(v206, v496, &qword_27F214A20);
                swift_storeEnumTagMultiPayload();
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217ED0);
                sub_24E6C08EC();
                sub_24F7F6DC8(&qword_27F214AF0, &qword_27F214A20, &unk_24F94D670, sub_24E63C290);
                v207 = v503;
                sub_24F924E28();
                sub_24E601704(v206, &qword_27F214A20);
              }

              else
              {
                v141 = v558 + *(type metadata accessor for ChallengeCompletedCard(0) + 32);
                v142 = (v141 + *(type metadata accessor for CommonCardAttributes(0) + 56));
                v143 = v142[1];
                if (v143)
                {
                  v144 = *v142;
                  v145 = (v563 + v422[22]);
                  v146 = v145[3];
                  v567 = v145[4];
                  __swift_project_boxed_opaque_existential_1(v145, v146);
                  *&v574 = v144;
                  *(&v574 + 1) = v143;
                  sub_24E600AEC();

                  v147 = sub_24F925E18();
                  v149 = v148;
                  v151 = v150;
                  v152 = sub_24F925C98();
                  v154 = v153;
                  v156 = v155;
                  sub_24E600B40(v147, v149, v151 & 1);

                  v157 = sub_24F925C58();
                  v159 = v158;
                  LOBYTE(v149) = v160;
                  v143 = v161;
                  sub_24E600B40(v152, v154, v156 & 1);

                  v162 = v149 & 1;
                  sub_24E5FD138(v157, v159, v149 & 1);
                }

                else
                {
                  v157 = 0;
                  v159 = 0;
                  v162 = 0;
                }

                v333 = v496;
                *v496 = v157;
                v333[1] = v159;
                v333[2] = v162;
                v333[3] = v143;
                swift_storeEnumTagMultiPayload();
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217ED0);
                sub_24E6C08EC();
                sub_24F7F6DC8(&qword_27F214AF0, &qword_27F214A20, &unk_24F94D670, sub_24E63C290);
                v207 = v503;
                sub_24F924E28();
                sub_24E65D2F8(v157, v159, v162, v143);
              }

              v334 = v550;
              v335 = v553;
              sub_24E60169C(v207, v523, &qword_27F251500);
              swift_storeEnumTagMultiPayload();
              sub_24F7F7314(&qword_27F251668, &qword_27F251500, &unk_24FA2DCD8, sub_24E6C08EC);
              sub_24F7F73C4();
              v336 = v207;
              v337 = v526;
              sub_24F924E28();
              sub_24E60169C(v337, v536, &qword_27F2514F0);
              swift_storeEnumTagMultiPayload();
              sub_24F7F71A8(&qword_27F214AD8, &qword_27F214A38, &unk_24F93E690, sub_24E63C1D8);
              sub_24F7F725C();
              v338 = v537;
              sub_24F924E28();
              sub_24E601704(v337, &qword_27F2514F0);
              sub_24E60169C(v338, v547, &qword_27F251510);
              swift_storeEnumTagMultiPayload();
              sub_24F7F690C();
              sub_24F7F70F0();
              v339 = v548;
              sub_24F924E28();
              sub_24E601704(v338, &qword_27F251510);
              sub_24E60169C(v339, v334, &qword_27F251580);
              swift_storeEnumTagMultiPayload();
              sub_24F7F6880();
              sub_24F7F6DC8(&qword_27F214AF0, &qword_27F214A20, &unk_24F94D670, sub_24E63C290);
              sub_24F924E28();
              sub_24E601704(v339, &qword_27F251580);
              sub_24E601704(v336, &qword_27F251500);
              v140 = v562;
              v138 = v335;
              goto LABEL_142;
            }

            if (v559 == 8)
            {
              v130 = v558;
              v131 = v507;
              if (((1 << v567) & 0x17) != 0)
              {
                v132 = v530;
                sub_24E923A08(8, v558, v567, v544, v531, v530);
                v133 = &qword_27F214A20;
                sub_24E60169C(v132, v504, &qword_27F214A20);
                swift_storeEnumTagMultiPayload();
                sub_24F7F6DC8(&qword_27F21A190, &qword_27F21A000, &unk_24F94D960, sub_24E726138);
              }

              else
              {
                v309 = v130 + *(type metadata accessor for ChallengeCompletedCard(0) + 32);
                v310 = (v309 + *(type metadata accessor for CommonCardAttributes(0) + 60));
                v311 = v310[1];
                if (v311)
                {
                  *&v574 = *v310;
                  *(&v574 + 1) = v311;
                  sub_24E600AEC();

                  v312 = sub_24F925E18();
                  v314 = v313;
                  v316 = v315;
                  sub_24F925A18();
                  v317 = sub_24F925C98();
                  v319 = v318;
                  v321 = v320;
                  v323 = v322;

                  sub_24E600B40(v312, v314, v316 & 1);
                  v131 = v507;

                  *&v574 = v317;
                  *(&v574 + 1) = v319;
                  LOBYTE(v575) = v321 & 1;
                  *(&v575 + 1) = v323;
                  v324 = v451;
                  sub_24F9268B8();
                  sub_24E600B40(v317, v319, v321 & 1);

                  LODWORD(v312) = sub_24F9251C8();
                  *(v324 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217358) + 36)) = v312;
                  v325 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21A1A8) + 36);
                  v326 = *MEMORY[0x277CE13B8];
                  v327 = sub_24F927748();
                  (*(*(v327 - 8) + 104))(v324 + v325, v326, v327);
                  v328 = *(v563 + v422[28]);
                  KeyPath = swift_getKeyPath();
                  v330 = v468;
                  v331 = v324 + *(v468 + 36);
                  *v331 = KeyPath;
                  *(v331 + 8) = v328;
                  *(v331 + 16) = 0;
                  v132 = v469;
                  sub_24E6009C8(v324, v469, &qword_27F219FF8);
                  v332 = 0;
                }

                else
                {
                  v332 = 1;
                  v132 = v469;
                  v330 = v468;
                }

                (*(v470 + 56))(v132, v332, 1, v330);
                v133 = &qword_27F21A000;
                sub_24E60169C(v132, v504, &qword_27F21A000);
                swift_storeEnumTagMultiPayload();
                sub_24F7F6DC8(&qword_27F21A190, &qword_27F21A000, &unk_24F94D960, sub_24E726138);
              }

              sub_24F7F6DC8(&qword_27F214AF0, &qword_27F214A20, &unk_24F94D670, sub_24E63C290);
              sub_24F924E28();
              sub_24E601704(v132, v133);
              v393 = v550;
              sub_24E60169C(v131, v523, &qword_27F2514E0);
              swift_storeEnumTagMultiPayload();
              sub_24F7F7314(&qword_27F251668, &qword_27F251500, &unk_24FA2DCD8, sub_24E6C08EC);
              sub_24F7F73C4();
              v394 = v526;
              sub_24F924E28();
              sub_24E60169C(v394, v536, &qword_27F2514F0);
              swift_storeEnumTagMultiPayload();
              sub_24F7F71A8(&qword_27F214AD8, &qword_27F214A38, &unk_24F93E690, sub_24E63C1D8);
              sub_24F7F725C();
              v395 = v537;
              sub_24F924E28();
              sub_24E601704(v394, &qword_27F2514F0);
              sub_24E60169C(v395, v547, &qword_27F251510);
              swift_storeEnumTagMultiPayload();
              sub_24F7F690C();
              sub_24F7F70F0();
              v396 = v548;
              sub_24F924E28();
              sub_24E601704(v395, &qword_27F251510);
              sub_24E60169C(v396, v393, &qword_27F251580);
              swift_storeEnumTagMultiPayload();
              sub_24F7F6880();
              sub_24F7F6DC8(&qword_27F214AF0, &qword_27F214A20, &unk_24F94D670, sub_24E63C290);
              v138 = v553;
              sub_24F924E28();
              sub_24E601704(v396, &qword_27F251580);
              v200 = v131;
              v201 = &qword_27F2514E0;
              goto LABEL_126;
            }
          }

          goto LABEL_70;
        }

        v119 = v567;
        if (v559 <= 2u)
        {
          if (v559 != 1)
          {
            if (v559 == 2)
            {
              v566 = v66;
              v120 = *(v558 + *(type metadata accessor for ChallengeCompletedCard(0) + 44));
              v121 = *(v120 + 16);
              v122 = MEMORY[0x277D84F90];
              v565 = v120;
              if (v121)
              {
                *&v574 = MEMORY[0x277D84F90];
                sub_24F457CC0(0, v121, 0);
                v122 = v574;
                v123 = v120 + ((*(v508 + 80) + 32) & ~*(v508 + 80));
                v124 = *(v508 + 72);
                do
                {
                  sub_24F7F7518(v123, v88, type metadata accessor for ChallengeCompletedCard.ParticipantResult);
                  v125 = &v88[*(v564 + 20)];
                  v126 = *v125;
                  v127 = v125[8];
                  sub_24F7F74B0(v88, &v92[*(v89 + 20)], type metadata accessor for PlayerAvatar);
                  *v92 = v126;
                  v92[8] = v127;
                  *&v574 = v122;
                  v129 = *(v122 + 16);
                  v128 = *(v122 + 24);
                  if (v129 >= v128 >> 1)
                  {
                    sub_24F457CC0(v128 > 1, v129 + 1, 1);
                    v122 = v574;
                  }

                  *(v122 + 16) = v129 + 1;
                  sub_24F7F74B0(v92, v122 + ((*(v90 + 80) + 32) & ~*(v90 + 80)) + *(v90 + 72) * v129, type metadata accessor for ChallengeVisualOutcomeMetrics.Participant);
                  v123 += v124;
                  --v121;
                }

                while (v121);
              }

              v140 = v562;
              v189 = sub_24EE90870(v122);
              v192 = v191;
              v193 = v505;
              if (v567 > 2u)
              {
                v219 = v190;
                v220 = v189;
                if (v567 - 3 >= 2)
                {
                  type metadata accessor for CardSafeArea(0);
                  sub_24F7F6D80(&qword_27F214D10, type metadata accessor for CardSafeArea);
                  v353 = sub_24F923598();
                  v568 = v220;
                  v569 = v219;
                  v570 = v192 & 0x101;
                  v571 = v353;
                  v572 = v354 & 1;
                  v573 = 0;
                }

                else
                {
                  v221 = v567;
                  type metadata accessor for CardSafeArea(0);
                  sub_24F7F6D80(&qword_27F214D10, type metadata accessor for CardSafeArea);
                  v222 = sub_24F923598();
                  v568 = v220;
                  v569 = v219;
                  v570 = v192 & 0x101 | (v221 << 16);
                  v571 = v222;
                  v572 = v223 & 1;
                  v573 = 1;
                }

                sub_24F7F6B68();
                sub_24F7F6BBC();

                sub_24F924E28();
                v224 = v576;
                v225 = BYTE1(v576);
                v226 = v575;
                v227 = v476;
                *v476 = v574;
                v227[1] = v226;
                *(v227 + 32) = v224;
                *(v227 + 33) = v225;
                swift_storeEnumTagMultiPayload();
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2515F8);
                sub_24F7F6ADC();
                sub_24F7F6C10();
                v228 = v478;
                sub_24F924E28();
                sub_24E60169C(v228, v481, &qword_27F2515B0);
                swift_storeEnumTagMultiPayload();
                sub_24F7F6A50();
                sub_24F7F6DC8(&qword_27F214AF0, &qword_27F214A20, &unk_24F94D670, sub_24E63C290);
                sub_24F924E28();

                sub_24E601704(v228, &qword_27F2515B0);
              }

              else if (v567)
              {
                if (v567 == 1)
                {

                  v194 = v438;
                  sub_24F7F7518(v558, v438, type metadata accessor for ChallengeCompletedCard);
                  v195 = v194 + *(v456 + 20);
                  type metadata accessor for CardSafeArea(0);
                  sub_24F7F6D80(&qword_27F214D10, type metadata accessor for CardSafeArea);
                  *v195 = sub_24F923598();
                  *(v195 + 8) = v196 & 1;
                  sub_24F7F7518(v194, v566, _s12GameStoreKit17CompactVisualViewVMa_0);
                  swift_storeEnumTagMultiPayload();
                  sub_24F7F6CCC();
                  sub_24F7F6D80(&qword_27F251628, _s12GameStoreKit17CompactVisualViewVMa_0);
                  v197 = v457;
                  sub_24F924E28();
                  sub_24E60169C(v197, v476, &qword_27F251590);
                  swift_storeEnumTagMultiPayload();
                  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2515F8);
                  sub_24F7F6ADC();
                  sub_24F7F6C10();
                  v198 = v478;
                  sub_24F924E28();
                  sub_24E601704(v197, &qword_27F251590);
                  sub_24E60169C(v198, v481, &qword_27F2515B0);
                  swift_storeEnumTagMultiPayload();
                  sub_24F7F6A50();
                  sub_24F7F6DC8(&qword_27F214AF0, &qword_27F214A20, &unk_24F94D670, sub_24E63C290);
                  sub_24F924E28();
                  sub_24E601704(v198, &qword_27F2515B0);
                  sub_24F7F7580(v194, _s12GameStoreKit17CompactVisualViewVMa_0);
                }

                else
                {
                  if (*(v565 + 16))
                  {
                    v383 = v426;
                    sub_24F7F7518(v565 + ((*(v508 + 80) + 32) & ~*(v508 + 80)), v426, type metadata accessor for PlayerAvatar);
                    v384 = v427;
                    sub_24F7F74B0(v383, v427, type metadata accessor for PlayerAvatar);
                    v385 = v428;
                    sub_24F7F7518(v384, v428, type metadata accessor for PlayerAvatar);
                    v386 = v433;
                    *(v385 + *(v433 + 20)) = HIBYTE(v192) & 1;
                    v387 = v385 + *(v386 + 24);
                    type metadata accessor for CardSafeArea(0);
                    sub_24F7F6D80(&qword_27F214D10, type metadata accessor for CardSafeArea);
                    v388 = sub_24F923598();
                    v390 = v389;

                    sub_24F7F7580(v384, type metadata accessor for PlayerAvatar);
                    *v387 = v388;
                    *(v387 + 8) = v390 & 1;
                    v391 = v434;
                    sub_24F7F74B0(v385, v434, _s12GameStoreKit18PortraitVisualViewVMa_0);
                    v392 = 0;
                  }

                  else
                  {

                    v392 = 1;
                    v391 = v434;
                    v386 = v433;
                  }

                  (*(v432 + 56))(v391, v392, 1, v386);
                  sub_24E60169C(v391, v566, &qword_27F251598);
                  swift_storeEnumTagMultiPayload();
                  sub_24F7F6CCC();
                  sub_24F7F6D80(&qword_27F251628, _s12GameStoreKit17CompactVisualViewVMa_0);
                  v409 = v457;
                  sub_24F924E28();
                  sub_24E60169C(v409, v476, &qword_27F251590);
                  swift_storeEnumTagMultiPayload();
                  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2515F8);
                  sub_24F7F6ADC();
                  sub_24F7F6C10();
                  v410 = v478;
                  sub_24F924E28();
                  sub_24E601704(v409, &qword_27F251590);
                  sub_24E60169C(v410, v481, &qword_27F2515B0);
                  swift_storeEnumTagMultiPayload();
                  sub_24F7F6A50();
                  sub_24F7F6DC8(&qword_27F214AF0, &qword_27F214A20, &unk_24F94D670, sub_24E63C290);
                  v193 = v505;
                  sub_24F924E28();
                  sub_24E601704(v410, &qword_27F2515B0);
                  sub_24E601704(v391, &qword_27F251598);
                  v140 = v562;
                }
              }

              else
              {

                v352 = v530;
                sub_24E923A08(2, v558, 0, v544, v531, v530);
                sub_24E60169C(v352, v481, &qword_27F214A20);
                swift_storeEnumTagMultiPayload();
                sub_24F7F6A50();
                sub_24F7F6DC8(&qword_27F214AF0, &qword_27F214A20, &unk_24F94D670, sub_24E63C290);
                sub_24F924E28();
                sub_24E601704(v352, &qword_27F214A20);
              }

              sub_24E60169C(v193, v528, &qword_27F2515B8);
              swift_storeEnumTagMultiPayload();
              sub_24F7F7314(&qword_27F2515E0, &qword_27F2515B8, &unk_24FA2DDB0, sub_24F7F6A50);
              sub_24F7F6E44();
              v411 = v529;
              sub_24F924E28();
              v412 = v193;
              sub_24E60169C(v411, v540, &qword_27F251570);
              swift_storeEnumTagMultiPayload();
              sub_24F7F6998();
              sub_24F7F7064();
              v413 = v541;
              sub_24F924E28();
              sub_24E601704(v411, &qword_27F251570);
              sub_24E60169C(v413, v547, &qword_27F251578);
              swift_storeEnumTagMultiPayload();
              sub_24F7F690C();
              sub_24F7F70F0();
              v414 = v548;
              sub_24F924E28();
              sub_24E601704(v413, &qword_27F251578);
              sub_24E60169C(v414, v550, &qword_27F251580);
              swift_storeEnumTagMultiPayload();
              sub_24F7F6880();
              sub_24F7F6DC8(&qword_27F214AF0, &qword_27F214A20, &unk_24F94D670, sub_24E63C290);
              v415 = v553;
              sub_24F924E28();
              sub_24E601704(v414, &qword_27F251580);
              v307 = v412;
              v138 = v415;
              v308 = &qword_27F2515B8;
              goto LABEL_141;
            }

            goto LABEL_70;
          }

          if (v567 > 2u)
          {
            v138 = v553;
            v139 = v558;
            v140 = v562;
          }

          else
          {
            v138 = v553;
            v139 = v558;
            v140 = v562;
            if (v567 > 1u)
            {

              v355 = 1;
LABEL_104:
              v357 = *(v139 + *(type metadata accessor for ChallengeCompletedCard(0) + 44));
              v358 = *(v357 + 16);
              if (v358 >= v355)
              {
                v362 = v508;
                v363 = (*(v508 + 80) + 32) & ~*(v508 + 80);
                sub_24E6B87C8(v357, v357 + v363, v355, (2 * v358) | 1);
                v365 = v364;
                v366 = *(v364 + 16);
                if (v366)
                {
                  v568 = MEMORY[0x277D84F90];
                  sub_24F457C7C(0, v366, 0);
                  v367 = v568;
                  v558 = v365;
                  v368 = v365 + v363;
                  v559 = (v453 + 56);
                  v564 = *(v362 + 72);
                  v369 = v452;
                  do
                  {
                    sub_24F7F7518(v368, v369, type metadata accessor for ChallengeCompletedCard.ParticipantResult);
                    sub_24F7F7518(v369, v70, type metadata accessor for PlayerAvatar);

                    sub_24F928948();
                    sub_24F7F7580(v369, type metadata accessor for ChallengeCompletedCard.ParticipantResult);
                    type metadata accessor for PlayerAvatarView.AvatarType(0);
                    swift_storeEnumTagMultiPayload();
                    v370 = v554;
                    sub_24E60169C(&v70[*(v566 + 5)], v554, &qword_27F22DF80);
                    v371 = *(v565 + 20);
                    v372 = type metadata accessor for PlayerAvatar.Overlay(0);
                    if ((*(*(v372 - 8) + 48))(v370, 1, v372) == 1)
                    {
                      sub_24E601704(v370, &qword_27F22DF80);
                      v373 = 1;
                      v374 = v556;
                    }

                    else
                    {
                      v375 = v543;
                      sub_24F7F74B0(v370, v543, type metadata accessor for PlayerAvatar.Overlay);
                      v374 = v556;
                      v376 = v375 + *(v556 + 20);
                      *v376 = 0;
                      *(v376 + 8) = 1;
                      v377 = (v375 + *(v374 + 24));
                      *v377 = 0;
                      v377[1] = 0;
                      sub_24F7F74B0(v375, &v29[v371], type metadata accessor for PlayerAvatarView.Overlay);
                      v373 = 0;
                    }

                    (*v559)(&v29[v371], v373, 1, v374);
                    v378 = v565;
                    v379 = &v29[*(v565 + 24)];
                    sub_24E60169C(&v70[*(v566 + 6)], &v574, qword_27F24EC90);
                    sub_24F7F7580(v70, type metadata accessor for PlayerAvatar);
                    v380 = v575;
                    *v379 = v574;
                    *(v379 + 1) = v380;
                    *(v379 + 4) = v576;
                    v29[*(v378 + 28)] = 7;
                    v568 = v367;
                    v382 = *(v367 + 16);
                    v381 = *(v367 + 24);
                    if (v382 >= v381 >> 1)
                    {
                      sub_24F457C7C(v381 > 1, v382 + 1, 1);
                      v367 = v568;
                    }

                    *(v367 + 16) = v382 + 1;
                    sub_24F7F74B0(v29, v367 + ((*(v555 + 80) + 32) & ~*(v555 + 80)) + *(v555 + 72) * v382, type metadata accessor for PlayerAvatarView);
                    v368 += v564;
                    --v366;
                  }

                  while (v366);

                  v140 = v562;
                }

                else
                {

                  v367 = MEMORY[0x277D84F90];
                  v140 = v562;
                }

                v360 = v550;
                v361 = v512;
                if (v567 <= 2u && v567 && v567 != 1)
                {

                  v398 = 1;
                }

                else
                {
                  v397 = sub_24F92CE08();

                  if (v397)
                  {
                    v398 = 1;
                  }

                  else
                  {
                    v398 = 3;
                  }
                }

                *&v574 = 0x4010000000000000;
                sub_24E66ED98();
                v399 = v473;
                sub_24F9237C8();
                v400 = v499;
                *(v399 + *(v499 + 20)) = v367;
                v401 = v399 + *(v400 + 24);
                *v401 = v398;
                *(v401 + 8) = 1;
                *(v399 + *(v400 + 28)) = 3;
                v359 = v502;
                sub_24F7F74B0(v399, v502, type metadata accessor for OverlappingPlayerAvatarsView);
                (*(v498 + 56))(v359, 0, 1, v400);
                v138 = v553;
              }

              else
              {
                v359 = v502;
                (*(v498 + 56))(v502, 1, 1, v499);
                v360 = v550;
                v361 = v512;
              }

              sub_24E60169C(v359, v361, &qword_27F240B08);
              swift_storeEnumTagMultiPayload();
              sub_24E725C2C();
              sub_24F391388();
              v402 = v525;
              sub_24F924E28();
              sub_24E60169C(v402, v540, &qword_27F251520);
              swift_storeEnumTagMultiPayload();
              sub_24F7F6998();
              sub_24F7F7064();
              v403 = v541;
              sub_24F924E28();
              sub_24E601704(v402, &qword_27F251520);
              sub_24E60169C(v403, v547, &qword_27F251578);
              swift_storeEnumTagMultiPayload();
              sub_24F7F690C();
              sub_24F7F70F0();
              v404 = v548;
              sub_24F924E28();
              sub_24E601704(v403, &qword_27F251578);
              sub_24E60169C(v404, v360, &qword_27F251580);
              swift_storeEnumTagMultiPayload();
              sub_24F7F6880();
              sub_24F7F6DC8(&qword_27F214AF0, &qword_27F214A20, &unk_24F94D670, sub_24E63C290);
              sub_24F924E28();
              sub_24E601704(v404, &qword_27F251580);
              sub_24E601704(v359, &qword_27F240B08);
              goto LABEL_142;
            }
          }

          v356 = sub_24F92CE08();

          if (v356)
          {
            v355 = 1;
          }

          else
          {
            v355 = 3;
          }

          goto LABEL_104;
        }

        if (v559 != 3)
        {
          if (v559 == 4)
          {
            if (v567 >= 4u)
            {
              if (v567 != 4)
              {
                v340 = type metadata accessor for ChallengeCompletedCard(0);
                v341 = v558;
                v342 = v558 + *(v340 + 32);
                v343 = (v342 + *(type metadata accessor for CommonCardAttributes(0) + 44));
                v344 = v343[1];
                v138 = v553;
                if (v344)
                {
                  v345 = *v343;
                  v346 = v341 + *(v340 + 36);
                  v347 = v431;
                  (*(v509 + 16))(v431, v346, v510);
                  v348 = v447;
                  v349 = (v347 + *(v447 + 20));
                  *v349 = v345;
                  v349[1] = v344;
                  v350 = v449;
                  sub_24F7F74B0(v347, v449, type metadata accessor for HeroCardGameHeadingView);
                  v351 = 0;
                  v258 = v550;
                }

                else
                {
                  v351 = 1;
                  v258 = v550;
                  v350 = v449;
                  v348 = v447;
                }

                (*(v446 + 56))(v350, v351, 1, v348);
                sub_24E60169C(v350, v465, &qword_27F219E50);
                swift_storeEnumTagMultiPayload();
                sub_24E7179AC();
                sub_24E63C774();

                v405 = v466;
                sub_24F924E28();
                sub_24E60169C(v405, v487, &qword_27F21A070);
                swift_storeEnumTagMultiPayload();
                sub_24E725CB8();
                v406 = v488;
                sub_24F924E28();
                sub_24E601704(v405, &qword_27F21A070);
                v407 = v350;
                v134 = v406;
                sub_24E601704(v407, &qword_27F219E50);
                v259 = v512;
                goto LABEL_84;
              }

              v229 = (v558 + *(type metadata accessor for ChallengeCompletedCard(0) + 40));
              v230 = v229[1];
              *&v574 = *v229;
              *(&v574 + 1) = v230;
              sub_24E600AEC();

              v231 = sub_24F925E18();
              v233 = v232;
              v235 = v234;
              v236 = v563;
              v237 = sub_24F925C98();
              v239 = v238;
              v241 = v240;
              sub_24E600B40(v231, v233, v235 & 1);

              LODWORD(v574) = sub_24F9251C8();
              v242 = sub_24F925C58();
              v244 = v243;
              v246 = v245;
              v248 = v247;
              sub_24E600B40(v237, v239, v241 & 1);

              v249 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214BA8) + 36);
              v250 = *MEMORY[0x277CE13B8];
              v251 = sub_24F927748();
              v252 = v450;
              (*(*(v251 - 8) + 104))(&v450[v249], v250, v251);
              *v252 = v242;
              *(v252 + 8) = v244;
              *(v252 + 16) = v246 & 1;
              *(v252 + 24) = v248;
              v253 = *(v236 + v422[19]);
              v254 = swift_getKeyPath();
              v255 = v252 + *(v467 + 36);
              *v255 = v254;
              *(v255 + 8) = v253;
              *(v255 + 16) = 0;
              sub_24E60169C(v252, v465, &qword_27F214B98);
              swift_storeEnumTagMultiPayload();
              sub_24E7179AC();
              sub_24E63C774();
              v256 = v466;
              sub_24F924E28();
              sub_24E60169C(v256, v487, &qword_27F21A070);
              swift_storeEnumTagMultiPayload();
              sub_24E725CB8();
              v257 = v488;
              sub_24F924E28();
              v134 = v257;
              sub_24E601704(v256, &qword_27F21A070);
              sub_24E601704(v252, &qword_27F214B98);
            }

            else
            {
              swift_storeEnumTagMultiPayload();
              sub_24E725CB8();
              v134 = v488;
              sub_24F924E28();
            }

            v258 = v550;
            v138 = v553;
            v259 = v512;
LABEL_84:
            sub_24E60169C(v134, v259, &qword_27F21A078);
            swift_storeEnumTagMultiPayload();
            sub_24E725C2C();
            sub_24F391388();
            v260 = v525;
            sub_24F924E28();
            sub_24E60169C(v260, v540, &qword_27F251520);
            swift_storeEnumTagMultiPayload();
            sub_24F7F6998();
            sub_24F7F7064();
            v261 = v541;
            sub_24F924E28();
            sub_24E601704(v260, &qword_27F251520);
            sub_24E60169C(v261, v547, &qword_27F251578);
            swift_storeEnumTagMultiPayload();
            sub_24F7F690C();
            sub_24F7F70F0();
            v262 = v548;
            sub_24F924E28();
            sub_24E601704(v261, &qword_27F251578);
            sub_24E60169C(v262, v258, &qword_27F251580);
            swift_storeEnumTagMultiPayload();
            sub_24F7F6880();
            sub_24F7F6DC8(&qword_27F214AF0, &qword_27F214A20, &unk_24F94D670, sub_24E63C290);
            sub_24F924E28();
            sub_24E601704(v262, &qword_27F251580);
            sub_24E601704(v134, &qword_27F21A078);
            goto LABEL_127;
          }

LABEL_70:
          v199 = v530;
          sub_24E923A08(v559, v558, v119, v544, v531, v530);
          sub_24E60169C(v199, v550, &qword_27F214A20);
          swift_storeEnumTagMultiPayload();
          sub_24F7F6880();
          sub_24F7F6DC8(&qword_27F214AF0, &qword_27F214A20, &unk_24F94D670, sub_24E63C290);
          v138 = v553;
          sub_24F924E28();
          v200 = v199;
          v201 = &qword_27F214A20;
LABEL_126:
          sub_24E601704(v200, v201);
          goto LABEL_127;
        }

        if (v567 > 3u)
        {
          v138 = v553;
          v140 = v562;
          v163 = v506;
          if (v567 == 4)
          {
            type metadata accessor for ChallengeCompletedCard(0);
            v263 = v436;
            sub_24F9289C8();
            LODWORD(v567) = *MEMORY[0x277CE0118];
            v264 = v437;
            v566 = *(v437 + 104);
            v265 = v435;
            v266 = v442;
            (v566)(v435);
            v267 = v439;
            sub_24F9219A8();
            (*(v264 + 8))(v265, v266);
            sub_24F7F6D80(&qword_27F214C28, MEMORY[0x277D21C48]);
            sub_24F7F6D80(&qword_27F214C30, MEMORY[0x277D7EBE8]);
            v268 = v443;
            v269 = v510;
            v270 = v441;
            sub_24F925ED8();
            (*(v440 + 8))(v267, v270);
            (*(v509 + 8))(v263, v269);
            v271 = sub_24F927618();
            v273 = v272;
            v274 = v140;
            v275 = (v268 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214C20) + 36));
            v276 = sub_24F924258();
            (v566)(v275 + *(v276 + 20), v567, v266);
            __asm { FMOV            V0.2D, #8.0 }

            *v275 = _Q0;
            v282 = v422;
            v283 = v563;
            v284 = (v563 + v422[32]);
            v285 = *v284;
            v286 = v284[1];
            v287 = v284[2];
            v288 = v284[3];
            v289 = (v275 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21A1C8) + 36));
            *v289 = v288;
            v289[1] = v287;
            v289[2] = v285;
            v289[3] = v286;
            v290 = (v275 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214C40) + 36));
            v140 = v274;
            v163 = v506;
            *v290 = v271;
            v290[1] = v273;
            v291 = *(v283 + v282[31]);

            sub_24F9278A8();
            v292 = (v268 + *(v458 + 36));
            *v292 = v291;
            v292[1] = v293;
            v292[2] = v294;
            sub_24E60169C(v268, v460, &qword_27F214C10);
            swift_storeEnumTagMultiPayload();
            sub_24E63CB8C();
            sub_24F7F6DC8(&qword_27F227380, &qword_27F2272E8, &unk_24FA2DD10, sub_24E680290);
            v295 = v464;
            sub_24F924E28();
            sub_24E60169C(v295, v486, &qword_27F251540);
            swift_storeEnumTagMultiPayload();
            sub_24F7F6ED0();
            sub_24F7F6F88();
            sub_24F924E28();
            sub_24E601704(v295, &qword_27F251540);
            sub_24E601704(v268, &qword_27F214C10);
LABEL_89:
            sub_24E60169C(v163, v528, &qword_27F251548);
            swift_storeEnumTagMultiPayload();
            sub_24F7F7314(&qword_27F2515E0, &qword_27F2515B8, &unk_24FA2DDB0, sub_24F7F6A50);
            sub_24F7F6E44();
            v303 = v529;
            sub_24F924E28();
            v304 = v163;
            sub_24E60169C(v303, v540, &qword_27F251570);
            swift_storeEnumTagMultiPayload();
            sub_24F7F6998();
            sub_24F7F7064();
            v305 = v541;
            sub_24F924E28();
            sub_24E601704(v303, &qword_27F251570);
            sub_24E60169C(v305, v547, &qword_27F251578);
            swift_storeEnumTagMultiPayload();
            sub_24F7F690C();
            sub_24F7F70F0();
            v306 = v548;
            sub_24F924E28();
            sub_24E601704(v305, &qword_27F251578);
            sub_24E60169C(v306, v550, &qword_27F251580);
            swift_storeEnumTagMultiPayload();
            sub_24F7F6880();
            sub_24F7F6DC8(&qword_27F214AF0, &qword_27F214A20, &unk_24F94D670, sub_24E63C290);
            sub_24F924E28();
            sub_24E601704(v306, &qword_27F251580);
            v307 = v304;
            v308 = &qword_27F251548;
LABEL_141:
            sub_24E601704(v307, v308);
            goto LABEL_142;
          }
        }

        else
        {
          v138 = v553;
          v140 = v562;
          v163 = v506;
          if (v567 - 1 >= 3)
          {
            v164 = type metadata accessor for ChallengeCompletedCard(0);
            v165 = v558;
            v166 = *(v558 + *(v164 + 44));
            if (*(v166 + 16))
            {
              v167 = v164;
              v168 = v423;
              sub_24F7F7518(v166 + ((*(v508 + 80) + 32) & ~*(v508 + 80)), v423, type metadata accessor for PlayerAvatar);
              v169 = v425;
              sub_24F7F74B0(v168, v425, type metadata accessor for PlayerAvatar);
              v170 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23E1E0) + 48);
              v171 = v165 + *(v167 + 36);
              v172 = v429;
              (*(v509 + 16))(v429, v171, v510);
              *(v172 + v170) = 0;
              v173 = type metadata accessor for PlayerAvatar.Overlay(0);
              swift_storeEnumTagMultiPayload();
              (*(*(v173 - 8) + 56))(v172, 0, 1, v173);
              v174 = v424;
              sub_24F7F7518(v169, v424, type metadata accessor for PlayerAvatar);
              sub_24E717FD0(v172, v174 + *(v566 + 5));
              LOBYTE(v574) = 7;
              v175 = v430;
              sub_24F8319B8(v174, &v574, v430);
              sub_24F927618();
              sub_24F9238C8();
              sub_24F7F7580(v169, type metadata accessor for PlayerAvatar);
              v176 = v445;
              v177 = (v175 + *(v445 + 36));
              v178 = v575;
              *v177 = v574;
              v177[1] = v178;
              v177[2] = v576;
              v179 = v448;
              sub_24E6009C8(v175, v448, &qword_27F2233D0);
              v180 = 0;
            }

            else
            {
              v180 = 1;
              v179 = v448;
              v176 = v445;
            }

            (*(v444 + 56))(v179, v180, 1, v176);
            sub_24E60169C(v179, v460, &qword_27F2272E8);
            swift_storeEnumTagMultiPayload();
            sub_24E63CB8C();
            sub_24F7F6DC8(&qword_27F227380, &qword_27F2272E8, &unk_24FA2DD10, sub_24E680290);
            v408 = v464;
            sub_24F924E28();
            sub_24E60169C(v408, v486, &qword_27F251540);
            swift_storeEnumTagMultiPayload();
            sub_24F7F6ED0();
            sub_24F7F6F88();
            sub_24F924E28();
            sub_24E601704(v408, &qword_27F251540);
            v301 = v179;
            v302 = &qword_27F2272E8;
            goto LABEL_88;
          }
        }

        v296 = v567;
        v297 = type metadata accessor for ChallengeCompletedCard(0);
        v298 = v474;
        (*(v509 + 16))(v474, v558 + *(v297 + 36), v510);
        *(v298 + *(type metadata accessor for ChallengeCompletedCardConfiguration.PrimaryIconView(0) + 20)) = v296;
        sub_24F927618();
        sub_24F9238C8();
        v299 = (v298 + *(v489 + 36));
        v300 = v575;
        *v299 = v574;
        v299[1] = v300;
        v299[2] = v576;
        sub_24E60169C(v298, v486, &qword_27F251528);
        swift_storeEnumTagMultiPayload();
        sub_24F7F6ED0();
        sub_24F7F6F88();
        sub_24F924E28();
        v301 = v298;
        v302 = &qword_27F251528;
LABEL_88:
        sub_24E601704(v301, v302);
        goto LABEL_89;
      }

      if (qword_27F211300 != -1)
      {
        v418 = v102;
        swift_once();
        v102 = v418;
      }

      v105 = qword_27F39E640;
LABEL_31:
      v422 = v102;
      v118 = __swift_project_value_buffer(v102, v105);
      sub_24F7F7518(v118, v100, type metadata accessor for CardLayoutMetrics);
      goto LABEL_32;
    }

LABEL_18:
    if (v106 == 3)
    {
      v421 = v29;
      v116 = v102;
      sub_24F4E9558(v544, v97);
      sub_24F7F74B0(v97, v100, type metadata accessor for CardLayoutMetrics);
      v100[v116[17]] = 0;
      v422 = v116;
      v117 = v116[30];
      v29 = v421;
      *&v100[v117] = 0x403A000000000000;
      goto LABEL_32;
    }

    if (v106 == 4)
    {
      goto LABEL_20;
    }

    goto LABEL_7;
  }

LABEL_24:
  v112 = *(v560 + 56);
  v113 = v562;
  v114 = v561;

  return v112(v113, 1, 1, v114, v103);
}

uint64_t sub_24F7F3FB4@<X0>(unsigned __int8 a1@<W1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for CardLayoutMetrics(0);
  MEMORY[0x28223BE20](v6);
  v9 = (&v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (a1 > 2u)
  {
    if (a1 == 3)
    {
      v11 = v7;
      sub_24F4E9558(a2, v9);
      result = sub_24F7F74B0(v9, a3, type metadata accessor for CardLayoutMetrics);
      *(a3 + *(v11 + 68)) = 0;
      v13 = *(v11 + 120);
LABEL_17:
      *(a3 + v13) = 0x403A000000000000;
      return result;
    }

    if (a1 == 4)
    {
      if (qword_27F2112F0 != -1)
      {
        v19 = v7;
        swift_once();
        v7 = v19;
      }

      v10 = qword_27F39E610;
    }

    else
    {
      if (qword_27F211308 != -1)
      {
        v21 = v7;
        swift_once();
        v7 = v21;
      }

      v10 = qword_27F39E658;
    }

LABEL_21:
    v17 = __swift_project_value_buffer(v7, v10);
    sub_24F7F7518(v17, v9, type metadata accessor for CardLayoutMetrics);
    return sub_24F7F74B0(v9, a3, type metadata accessor for CardLayoutMetrics);
  }

  if (!a1)
  {
    if (qword_27F211300 != -1)
    {
      v18 = v7;
      swift_once();
      v7 = v18;
    }

    v10 = qword_27F39E640;
    goto LABEL_21;
  }

  if (a1 != 1)
  {
    if (qword_27F2112F8 != -1)
    {
      v20 = v7;
      swift_once();
      v7 = v20;
    }

    v14 = v7;
    v15 = __swift_project_value_buffer(v7, qword_27F39E628);
    sub_24F7F7518(v15, v9, type metadata accessor for CardLayoutMetrics);
    result = sub_24F7F74B0(v9, a3, type metadata accessor for CardLayoutMetrics);
    v16 = (a3 + *(v14 + 48));
    *v16 = 0;
    v16[1] = 0;
    v16[2] = 0;
    v16[3] = 0x4024000000000000;
    v13 = *(v14 + 120);
    goto LABEL_17;
  }

  sub_24F4E9E44(a2, v9);
  return sub_24F7F74B0(v9, a3, type metadata accessor for CardLayoutMetrics);
}

uint64_t sub_24F7F4268@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F240EF8);
  MEMORY[0x28223BE20](v4);
  v6 = v28 - v5;
  v7 = type metadata accessor for GameIcon(0);
  MEMORY[0x28223BE20](v7);
  v9 = v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F240EE0);
  MEMORY[0x28223BE20](v10);
  v12 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = v28 - v14;
  v16 = *(a1 + *(type metadata accessor for ChallengeCompletedCardConfiguration.PrimaryIconView(0) + 20));
  if (v16 == 3)
  {
    swift_storeEnumTagMultiPayload();
    sub_24F392EE0();
    return sub_24F924E28();
  }

  else
  {
    v28[0] = v4;
    v28[1] = a2;
    v18 = sub_24F9289E8();
    v19 = *(v18 - 8);
    (*(v19 + 16))(v9, a1, v18);
    (*(v19 + 56))(v9, 0, 1, v18);
    v20 = v7[8];
    *&v9[v20] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2167A0);
    swift_storeEnumTagMultiPayload();
    v9[v7[5]] = 1;
    v9[v7[6]] = 1;
    v9[v7[7]] = 0;
    if (v16 == 4)
    {

      v21 = -0.174532925;
    }

    else
    {
      v22 = sub_24F92CE08();

      if (v22)
      {
        v21 = -0.174532925;
      }

      else
      {
        v21 = 0.0;
      }
    }

    sub_24F9278A8();
    v24 = v23;
    v26 = v25;
    sub_24F7F74B0(v9, v12, type metadata accessor for GameIcon);
    v27 = &v12[*(v10 + 36)];
    *v27 = v21;
    *(v27 + 1) = v24;
    *(v27 + 2) = v26;
    sub_24E6009C8(v12, v15, &qword_27F240EE0);
    sub_24E60169C(v15, v6, &qword_27F240EE0);
    swift_storeEnumTagMultiPayload();
    sub_24F392EE0();
    sub_24F924E28();
    return sub_24E601704(v15, &qword_27F240EE0);
  }
}

uint64_t sub_24F7F46A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for GameIcon(0);
  v5 = (v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24F9289E8();
  v9 = *(v8 - 8);
  (*(v9 + 16))(v7, a1, v8);
  (*(v9 + 56))(v7, 0, 1, v8);
  v10 = v5[10];
  *&v7[v10] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2167A0);
  swift_storeEnumTagMultiPayload();
  v7[v5[7]] = 1;
  v7[v5[8]] = 1;
  v7[v5[9]] = 0;
  if (*(a1 + *(type metadata accessor for ChallengeCompletedCardConfiguration.PrimaryIconView(0) + 20)) == 4)
  {

    v11 = -0.174532925;
  }

  else
  {
    v12 = sub_24F92CE08();

    if (v12)
    {
      v11 = -0.174532925;
    }

    else
    {
      v11 = 0.0;
    }
  }

  sub_24F9278A8();
  v14 = v13;
  v16 = v15;
  sub_24F7F74B0(v7, a2, type metadata accessor for GameIcon);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F240EE0);
  v18 = a2 + *(result + 36);
  *v18 = v11;
  *(v18 + 8) = v14;
  *(v18 + 16) = v16;
  return result;
}

uint64_t sub_24F7F4948()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F240ED8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F240EE0);
  sub_24E6A4C1C();
  sub_24F7F7D94();
  sub_24F392EE0();
  return sub_24F927568();
}

__n128 sub_24F7F4A68@<Q0>(uint64_t a1@<X8>)
{
  v3 = sub_24F924848();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = *v1;
  v28 = *(v1 + 8);
  v7 = *(v1 + 3);
  v25 = v7;
  v26 = *(v1 + 32);
  if (v26 == 1)
  {
    v24 = v7;
    sub_24F7F7D08(&v27, v23);
    sub_24E60169C(&v25, v23, &qword_27F2516C0);
  }

  else
  {
    sub_24F7F7D08(&v27, v23);
    sub_24E60169C(&v25, v23, &qword_27F2516C0);
    sub_24F92BDC8();
    v8 = sub_24F9257A8();
    sub_24F921FD8();

    sub_24F924838();
    swift_getAtKeyPath();
    sub_24E601704(&v25, &qword_27F2516C0);
    (*(v4 + 8))(v6, v3);
    v7 = v24;
  }

  v9 = v27;
  v10 = v28;
  v11 = HIBYTE(v28);
  swift_getKeyPath();
  v23[0] = v7;
  sub_24F7F6D80(&qword_27F214D10, type metadata accessor for CardSafeArea);
  sub_24F91FD88();

  v12 = *(v7 + 16);
  v18 = *(v7 + 32);
  v19 = v12;

  KeyPath = swift_getKeyPath();
  type metadata accessor for HeroSafeAreaMetrics();
  sub_24F7F6D80(&qword_27F21EAC8, type metadata accessor for HeroSafeAreaMetrics);
  v14 = sub_24F923598();
  v20 = v15 & 1;
  *a1 = v9;
  *(a1 + 16) = v10;
  *(a1 + 17) = v11;
  *(a1 + 18) = v21;
  *(a1 + 22) = v22;
  result = v19;
  *(a1 + 40) = v18;
  *(a1 + 24) = result;
  *(a1 + 56) = KeyPath;
  *(a1 + 64) = 0;
  v17 = v23[0];
  *(a1 + 68) = *(v23 + 3);
  *(a1 + 65) = v17;
  *(a1 + 72) = v14;
  *(a1 + 80) = v20;
  return result;
}

double sub_24F7F4DB8@<D0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v42 = a1;
  v38 = sub_24F9249B8();
  v41[0] = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  *&v40 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v37 = sub_24F924848();
  v4 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v6 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ChallengesSlashHeaderView(0);
  MEMORY[0x28223BE20](v7);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214D50);
  MEMORY[0x28223BE20](v39);
  v11 = &v36 - v10;
  v12 = *v2;
  if (*(v2 + 18) == 4)
  {
    v55 = *(v2 + 8);
    v56 = *(v2 + 16);

    v13 = 0;
  }

  else
  {
    v55 = *(v2 + 8);
    v56 = *(v2 + 16);
    v14 = sub_24F92CE08();

    v13 = ~v14 & 1;
  }

  v54 = *(v2 + 32);
  v15 = *(v2 + 24);
  v53 = v15;
  if (v54 == 1)
  {
    v52 = v15;
  }

  else
  {

    sub_24F92BDC8();
    v16 = sub_24F9257A8();
    *&v36 = v12;
    v17 = v16;
    sub_24F921FD8();

    sub_24F924838();
    swift_getAtKeyPath();
    sub_24E601704(&v53, &qword_27F2516C0);
    v12 = v36;
    (*(v4 + 8))(v6, v37);
    v15 = v52;
  }

  swift_getKeyPath();
  *&v43 = v15;
  sub_24F7F6D80(&qword_27F214D10, type metadata accessor for CardSafeArea);
  sub_24F91FD88();

  v18 = *(v15 + 32);
  v37 = *(v15 + 16);
  v36 = v18;

  v49 = sub_24E608A90(MEMORY[0x277D84F90]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214D80);
  sub_24F926F28();
  v19 = *(&v43 + 1);
  *(v9 + 11) = v43;
  *(v9 + 12) = v19;
  v49 = 0;
  v50 = 0;
  v51 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214D88);
  sub_24F926F28();
  v20 = v44;
  v21 = *(&v44 + 1);
  *(v9 + 104) = v43;
  v9[120] = v20;
  *(v9 + 16) = v21;
  v22 = v7[10];
  *&v9[v22] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214D90);
  swift_storeEnumTagMultiPayload();
  *&v9[v7[11]] = 0x4031000000000000;
  *&v9[v7[12]] = 0x4020000000000000;
  v23 = &v9[v7[13]];
  *v23 = 0xD000000000000017;
  *(v23 + 1) = 0x800000024FA453F0;
  *v9 = v12;
  *(v9 + 1) = v13;
  *(v9 + 2) = 0;
  *(v9 + 3) = 0;
  v9[32] = 1;
  *(v9 + 5) = v55;
  v9[48] = v56;
  *(v9 + 72) = v36;
  *(v9 + 56) = v37;
  (*(*&v41[0] + 104))(v40, *MEMORY[0x277CE00F0], v38);
  sub_24F924E68();
  sub_24F924E48();
  sub_24F924E58();
  sub_24F7F74B0(v9, v11, type metadata accessor for ChallengesSlashHeaderView);
  v24 = sub_24F927618();
  v26 = v25;
  sub_24F7F5454(v2, &v43);
  v27 = v45;
  v28 = v46;
  v29 = v47;
  v30 = v48;
  v40 = v44;
  *v41 = v43;
  v31 = v11;
  v32 = v42;
  sub_24E6009C8(v31, v42, &qword_27F214D50);
  v33 = v32 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2516C8) + 36);
  v35 = v40;
  result = v41[0];
  *v33 = *v41;
  *(v33 + 16) = v35;
  *(v33 + 32) = v27;
  *(v33 + 40) = v28;
  *(v33 + 50) = v30;
  *(v33 + 48) = v29;
  *(v33 + 51) = v43;
  *(v33 + 55) = BYTE4(v43);
  *(v33 + 56) = v24;
  *(v33 + 64) = v26;
  return result;
}

void sub_24F7F5454(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_24F924848();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 17))
  {
    v25 = *(a1 + 32);
    v9 = *(a1 + 24);
    v24 = v9;
    if (v25 == 1)
    {
      v23 = v9;
    }

    else
    {
      v16 = v6;

      sub_24F92BDC8();
      v17 = sub_24F9257A8();
      sub_24F921FD8();

      sub_24F924838();
      swift_getAtKeyPath();
      sub_24E601704(&v24, &qword_27F2516C0);
      (*(v5 + 8))(v8, v16);
      v9 = v23;
    }

    swift_getKeyPath();
    v22 = v9;
    sub_24F7F6D80(&qword_27F214D10, type metadata accessor for CardSafeArea);
    sub_24F91FD88();

    v18 = *(v9 + 16);

    sub_24F925818();
    v11 = sub_24EA91914(v18);
    v13 = v19;
    v14 = v20;
    v15 = v21;
    v10 = sub_24F925808();
    LOBYTE(v22) = 0;
    v12 = 1;
  }

  else
  {
    v10 = 0;
    v11 = 0.0;
    v12 = 2;
    v13 = 0;
    v14 = 0;
    v15 = 0;
  }

  *a2 = v12;
  *(a2 + 8) = v10;
  *(a2 + 16) = v11;
  *(a2 + 24) = v13;
  *(a2 + 32) = v14;
  *(a2 + 40) = v15;
  *(a2 + 50) = 0;
  *(a2 + 48) = 0;
}

double sub_24F7F5708@<D0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for JSColor();
  MEMORY[0x28223BE20](v4);
  v59 = &v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for CommonCardAttributes.CardBackgroundColor(0);
  v62 = *(v6 - 8);
  v63 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ChallengeCompletedCard.ParticipantResult(0);
  v60 = *(v9 - 8);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for PlayerAvatar(0);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21F550);
  MEMORY[0x28223BE20](v16 - 8);
  v61 = &v53 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2190D8);
  MEMORY[0x28223BE20](v18 - 8);
  v58 = &v53 - v19;
  v65 = type metadata accessor for PlayerGroupView();
  MEMORY[0x28223BE20](v65);
  v67 = &v53 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F240EB8);
  MEMORY[0x28223BE20](v64);
  v66 = &v53 - v21;
  v22 = type metadata accessor for ChallengeCompletedCard(0);
  v23 = *(v2 + *(v22 + 44));
  v24 = *(v23 + 16);
  v25 = MEMORY[0x277D84F90];
  if (v24)
  {
    v53 = v22;
    v54 = v8;
    v55 = v4;
    v56 = v2;
    v57 = a1;
    v68 = MEMORY[0x277D84F90];
    sub_24F457BF8(0, v24, 0);
    v25 = v68;
    v26 = v23 + ((*(v60 + 80) + 32) & ~*(v60 + 80));
    v27 = *(v60 + 72);
    do
    {
      sub_24F7F7518(v26, v11, type metadata accessor for ChallengeCompletedCard.ParticipantResult);
      sub_24F7F74B0(v11, v15, type metadata accessor for PlayerAvatar);
      v68 = v25;
      v29 = *(v25 + 16);
      v28 = *(v25 + 24);
      if (v29 >= v28 >> 1)
      {
        sub_24F457BF8(v28 > 1, v29 + 1, 1);
        v25 = v68;
      }

      *(v25 + 16) = v29 + 1;
      sub_24F7F74B0(v15, v25 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * v29, type metadata accessor for PlayerAvatar);
      v26 += v27;
      --v24;
    }

    while (v24);
    v2 = v56;
    a1 = v57;
    v8 = v54;
    v4 = v55;
    v22 = v53;
  }

  v30 = v2 + *(v22 + 32);
  v31 = type metadata accessor for CommonCardAttributes(0);
  v32 = v61;
  sub_24E60169C(v30 + *(v31 + 68), v61, &qword_27F21F550);
  if ((*(v62 + 48))(v32, 1, v63) == 1)
  {
    v33 = &qword_27F21F550;
    v34 = v32;
  }

  else
  {
    sub_24F7F7518(v32, v8, type metadata accessor for CommonCardAttributes.CardBackgroundColor);
    v35 = v59;
    sub_24F7F74B0(v8, v59, type metadata accessor for JSColor);
    if (qword_27F20FEE0 != -1)
    {
      swift_once();
    }

    v36 = *(v35 + *(v4 + 24));
    v37 = v58;
    ColorGrouping.colorGroup(for:)(v36);
    sub_24F7F7580(v35, type metadata accessor for JSColor);
    sub_24F7F7580(v32, type metadata accessor for CommonCardAttributes.CardBackgroundColor);
    v38 = type metadata accessor for ColorGroup();
    if ((*(*(v38 - 8) + 48))(v37, 1, v38) != 1)
    {
      v39 = *(v37 + *(v38 + 28));

      sub_24F7F7580(v37, type metadata accessor for ColorGroup);
      goto LABEL_15;
    }

    v33 = &qword_27F2190D8;
    v34 = v37;
  }

  sub_24E601704(v34, v33);
  _s7SwiftUI5ColorV12GameStoreKitE05focusC0ACvgZ_0();
  v39 = sub_24F926D08();

LABEL_15:
  v40 = v65;
  v41 = *(v65 + 24);
  v42 = *MEMORY[0x277CE13D8];
  v43 = sub_24F927748();
  v44 = v67;
  (*(*(v43 - 8) + 104))(&v67[v41], v42, v43);
  *(v44 + *(v40 + 28)) = vdupq_n_s64(0x4052000000000000uLL);
  *(v44 + *(v40 + 32)) = 7;
  *v44 = v25;
  v44[1] = v39;
  v45 = sub_24F9275D8();
  v47 = v46;
  v48 = v66;
  v49 = &v66[*(v64 + 36)];
  sub_24F7F5E88(v2, v49);
  v50 = (v49 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F240EC0) + 36));
  *v50 = v45;
  v50[1] = v47;
  sub_24F7F74B0(v44, v48, type metadata accessor for PlayerGroupView);
  LOBYTE(v45) = sub_24F925808();
  sub_24E6009C8(v48, a1, &qword_27F240EB8);
  v51 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F240EC8) + 36);
  *v51 = v45;
  result = 0.0;
  *(v51 + 8) = 0u;
  *(v51 + 24) = 0u;
  *(v51 + 40) = 1;
  return result;
}

uint64_t sub_24F7F5E88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_24F924848();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(type metadata accessor for ChallengeCompletedCard(0) + 36);
  v9 = sub_24F9289E8();
  v10 = *(v9 - 8);
  (*(v10 + 16))(a2, a1 + v8, v9);
  (*(v10 + 56))(a2, 0, 1, v9);
  v11 = type metadata accessor for GameIcon(0);
  v12 = v11[8];
  *(a2 + v12) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2167A0);
  swift_storeEnumTagMultiPayload();
  *(a2 + v11[5]) = 1;
  *(a2 + v11[6]) = 1;
  *(a2 + v11[7]) = 0;
  sub_24F927618();
  sub_24F9238C8();
  v13 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216760) + 36));
  v14 = v37;
  *v13 = v36;
  v13[1] = v14;
  v13[2] = v38;
  sub_24F9278A8();
  v16 = v15;
  v18 = v17;
  v19 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21B1C0) + 36));
  *v19 = 0x3FC657184AE74487;
  v19[1] = v16;
  v19[2] = v18;
  v20 = (a1 + *(_s12GameStoreKit17CompactVisualViewVMa_0(0) + 20));
  v21 = *v20;
  LOBYTE(v11) = *(v20 + 8);

  if ((v11 & 1) == 0)
  {
    sub_24F92BDC8();
    v22 = sub_24F9257A8();
    sub_24F921FD8();

    sub_24F924838();
    swift_getAtKeyPath();

    (*(v5 + 8))(v7, v4);
    v21 = v35;
  }

  swift_getKeyPath();
  v35 = v21;
  sub_24F7F6D80(&qword_27F214D10, type metadata accessor for CardSafeArea);
  sub_24F91FD88();

  v23 = *(v21 + 16);

  sub_24F925868();
  v24 = sub_24EA91914(v23);
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v31 = sub_24F925808();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F240ED0);
  v33 = a2 + *(result + 36);
  *v33 = v31;
  *(v33 + 8) = v24;
  *(v33 + 16) = v26;
  *(v33 + 24) = v28;
  *(v33 + 32) = v30;
  *(v33 + 40) = 0;
  return result;
}

__n128 sub_24F7F6240@<Q0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22DF80);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v23 - v4;
  v6 = type metadata accessor for PlayerAvatar(0);
  v7 = v6 - 8;
  MEMORY[0x28223BE20](v6);
  v9 = v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = v23 - v11;
  v13 = type metadata accessor for PlayerAvatar.Overlay(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v13 - 8) + 56))(v5, 0, 1, v13);
  sub_24F7F7518(v1, v12, type metadata accessor for PlayerAvatar);
  sub_24E717FD0(v5, &v12[*(v7 + 28)]);
  v14 = a1 + *(type metadata accessor for CardCompactAvatarView() + 20);
  type metadata accessor for CardSafeArea(0);
  sub_24F7F6D80(&qword_27F214D10, type metadata accessor for CardSafeArea);
  *v14 = sub_24F923598();
  *(v14 + 8) = v15 & 1;
  sub_24F7F7518(v12, v9, type metadata accessor for PlayerAvatar);
  LOBYTE(v23[0]) = 7;
  sub_24F8319B8(v9, v23, a1);
  sub_24F7F7580(v12, type metadata accessor for PlayerAvatar);
  v16 = sub_24F927618();
  v18 = v17;
  sub_24F7F64C4(v1, v23);
  v19 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2516D0) + 36);
  v20 = v23[5];
  *(v19 + 64) = v23[4];
  *(v19 + 80) = v20;
  *(v19 + 96) = v23[6];
  v21 = v23[1];
  *v19 = v23[0];
  *(v19 + 16) = v21;
  result = v23[3];
  *(v19 + 32) = v23[2];
  *(v19 + 48) = result;
  *(v19 + 112) = v16;
  *(v19 + 120) = v18;
  return result;
}

uint64_t sub_24F7F64C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_24F924848();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = _s12GameStoreKit18PortraitVisualViewVMa_0(0);
  v9 = (a1 + *(v8 + 24));
  v10 = *v9;
  v11 = *(v9 + 8);
  v36 = v5;
  v37 = v4;
  if (v11 == 1)
  {
    v39 = v10;

    v12 = v10;
  }

  else
  {

    sub_24F92BDC8();
    v13 = sub_24F9257A8();
    sub_24F921FD8();

    sub_24F924838();
    swift_getAtKeyPath();

    (*(v5 + 8))(v7, v4);
    v12 = v39;
  }

  swift_getKeyPath();
  v38 = v12;
  sub_24F7F6D80(&qword_27F214D10, type metadata accessor for CardSafeArea);
  sub_24F91FD88();

  v14 = *(v12 + 16);

  sub_24F925868();
  v15 = sub_24EA91914(v14);
  v17 = v16;
  v19 = v18;
  v21 = v20;
  result = sub_24F925808();
  v23 = result;
  v40 = 0;
  if (*(a1 + *(v8 + 20)) == 1)
  {

    if ((v11 & 1) == 0)
    {
      sub_24F92BDC8();
      v24 = sub_24F9257A8();
      sub_24F921FD8();

      sub_24F924838();
      swift_getAtKeyPath();

      (*(v36 + 8))(v7, v37);
      v10 = v38;
    }

    swift_getKeyPath();
    v38 = v10;
    sub_24F91FD88();

    v25 = *(v10 + 16);

    sub_24F925818();
    v26 = sub_24EA91914(v25);
    v28 = v27;
    v30 = v29;
    v32 = v31;
    result = sub_24F925808();
    v33 = result;
    v34 = 1;
  }

  else
  {
    v33 = 0;
    v26 = 0.0;
    v34 = 2;
    v28 = 0;
    v30 = 0;
    v32 = 0;
  }

  *a2 = 1;
  *(a2 + 2) = 0;
  *(a2 + 8) = v23;
  *(a2 + 16) = v15;
  *(a2 + 24) = v17;
  *(a2 + 32) = v19;
  *(a2 + 40) = v21;
  *(a2 + 48) = 0;
  *(a2 + 56) = v34;
  *(a2 + 64) = v33;
  *(a2 + 72) = v26;
  *(a2 + 80) = v28;
  *(a2 + 88) = v30;
  *(a2 + 96) = v32;
  *(a2 + 104) = 0;
  return result;
}

unint64_t sub_24F7F6880()
{
  result = qword_27F2515C8;
  if (!qword_27F2515C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F251580);
    sub_24F7F690C();
    sub_24F7F70F0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2515C8);
  }

  return result;
}

unint64_t sub_24F7F690C()
{
  result = qword_27F2515D0;
  if (!qword_27F2515D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F251578);
    sub_24F7F6998();
    sub_24F7F7064();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2515D0);
  }

  return result;
}

unint64_t sub_24F7F6998()
{
  result = qword_27F2515D8;
  if (!qword_27F2515D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F251570);
    sub_24F7F7314(&qword_27F2515E0, &qword_27F2515B8, &unk_24FA2DDB0, sub_24F7F6A50);
    sub_24F7F6E44();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2515D8);
  }

  return result;
}

unint64_t sub_24F7F6A50()
{
  result = qword_27F2515E8;
  if (!qword_27F2515E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2515B0);
    sub_24F7F6ADC();
    sub_24F7F6C10();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2515E8);
  }

  return result;
}

unint64_t sub_24F7F6ADC()
{
  result = qword_27F2515F0;
  if (!qword_27F2515F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2515F8);
    sub_24F7F6B68();
    sub_24F7F6BBC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2515F0);
  }

  return result;
}

unint64_t sub_24F7F6B68()
{
  result = qword_27F251600;
  if (!qword_27F251600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F251600);
  }

  return result;
}

unint64_t sub_24F7F6BBC()
{
  result = qword_27F251608;
  if (!qword_27F251608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F251608);
  }

  return result;
}

unint64_t sub_24F7F6C10()
{
  result = qword_27F251610;
  if (!qword_27F251610)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F251590);
    sub_24F7F6CCC();
    sub_24F7F6D80(&qword_27F251628, _s12GameStoreKit17CompactVisualViewVMa_0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F251610);
  }

  return result;
}

unint64_t sub_24F7F6CCC()
{
  result = qword_27F251618;
  if (!qword_27F251618)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F251598);
    sub_24F7F6D80(&qword_27F251620, _s12GameStoreKit18PortraitVisualViewVMa_0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F251618);
  }

  return result;
}

uint64_t sub_24F7F6D80(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24F7F6DC8(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24F7F6E44()
{
  result = qword_27F251630;
  if (!qword_27F251630)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F251548);
    sub_24F7F6ED0();
    sub_24F7F6F88();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F251630);
  }

  return result;
}

unint64_t sub_24F7F6ED0()
{
  result = qword_27F251638;
  if (!qword_27F251638)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F251540);
    sub_24E63CB8C();
    sub_24F7F6DC8(&qword_27F227380, &qword_27F2272E8, &unk_24FA2DD10, sub_24E680290);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F251638);
  }

  return result;
}

unint64_t sub_24F7F6F88()
{
  result = qword_27F251640;
  if (!qword_27F251640)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F251528);
    sub_24F7F6D80(&qword_27F251648, type metadata accessor for ChallengeCompletedCardConfiguration.PrimaryIconView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F251640);
  }

  return result;
}

unint64_t sub_24F7F7064()
{
  result = qword_27F251650;
  if (!qword_27F251650)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F251520);
    sub_24E725C2C();
    sub_24F391388();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F251650);
  }

  return result;
}

unint64_t sub_24F7F70F0()
{
  result = qword_27F251658;
  if (!qword_27F251658)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F251510);
    sub_24F7F71A8(&qword_27F214AD8, &qword_27F214A38, &unk_24F93E690, sub_24E63C1D8);
    sub_24F7F725C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F251658);
  }

  return result;
}

uint64_t sub_24F7F71A8(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    sub_24F7F6D80(&qword_27F214AE0, type metadata accessor for CardContentBackgroundStyle);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24F7F725C()
{
  result = qword_27F251660;
  if (!qword_27F251660)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2514F0);
    sub_24F7F7314(&qword_27F251668, &qword_27F251500, &unk_24FA2DCD8, sub_24E6C08EC);
    sub_24F7F73C4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F251660);
  }

  return result;
}

uint64_t sub_24F7F7314(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    sub_24F7F6DC8(&qword_27F214AF0, &qword_27F214A20, &unk_24F94D670, sub_24E63C290);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24F7F73C4()
{
  result = qword_27F251670;
  if (!qword_27F251670)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2514E0);
    sub_24F7F6DC8(&qword_27F21A190, &qword_27F21A000, &unk_24F94D960, sub_24E726138);
    sub_24F7F6DC8(&qword_27F214AF0, &qword_27F214A20, &unk_24F94D670, sub_24E63C290);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F251670);
  }

  return result;
}

uint64_t sub_24F7F74B0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24F7F7518(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24F7F7580(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24F7F75F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24F9289E8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 6)
    {
      return v10 - 5;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_24F7F76C0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_24F9289E8();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 5;
  }

  return result;
}

uint64_t sub_24F7F778C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ChallengeCompletedCard(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 > 1)
    {
      return (v10 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_24F7F785C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for ChallengeCompletedCard(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = -a2;
  }

  return result;
}

void sub_24F7F7918()
{
  type metadata accessor for ChallengeCompletedCard(319);
  if (v0 <= 0x3F)
  {
    sub_24E7268F0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_24F7F79B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for PlayerAvatar(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 2)
    {
      return ((v10 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_24F7F7A90(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for PlayerAvatar(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }

  return result;
}

void sub_24F7F7B48()
{
  type metadata accessor for PlayerAvatar(319);
  if (v0 <= 0x3F)
  {
    sub_24E7268F0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_24F7F7D94()
{
  result = qword_27F240EE8;
  if (!qword_27F240EE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F240ED8);
    sub_24F392EE0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F240EE8);
  }

  return result;
}

unint64_t sub_24F7F7E28()
{
  result = qword_27F2516D8;
  if (!qword_27F2516D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2516C8);
    sub_24E63DC08();
    sub_24E602068(&qword_27F2516E0, &qword_27F2516E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2516D8);
  }

  return result;
}

unint64_t sub_24F7F7EE4()
{
  result = qword_27F2516F0;
  if (!qword_27F2516F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2516D0);
    sub_24F7F6D80(&qword_27F219ED8, type metadata accessor for CardCompactAvatarView);
    sub_24E602068(&qword_27F2516F8, &unk_27F251700);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2516F0);
  }

  return result;
}

uint64_t sub_24F7F7FDC(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_24E8618CC(v2);
  }

  v3 = *(v2 + 2);
  v29[0] = (v2 + 32);
  v29[1] = v3;
  result = sub_24F92CD78();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = v2 + 96;
      v9 = -1;
      for (i = 1; i != v3; ++i)
      {
        v11 = v9;
        v12 = v8;
        do
        {
          if (*v12)
          {
            break;
          }

          if (!v12[72])
          {
            break;
          }

          v13 = v12 - 64;
          v24 = *(v12 + 8);
          v14 = *(v12 + 24);
          v15 = *(v12 + 40);
          v16 = *(v12 + 56);
          v28 = v12[72];
          v26 = v15;
          v27 = v16;
          v25 = v14;
          *(v12 + 9) = *v12;
          v17 = *(v12 - 2);
          *(v12 + 56) = *(v12 - 1);
          *(v12 + 40) = v17;
          v18 = *(v12 - 4);
          *(v12 + 24) = *(v12 - 3);
          *(v12 + 8) = v18;
          *v13 = v24;
          v19 = v28;
          v20 = v27;
          v21 = v25;
          *(v13 + 2) = v26;
          *(v13 + 3) = v20;
          *v12 = v19;
          *(v13 + 1) = v21;
          v12 -= 72;
        }

        while (!__CFADD__(v11++, 1));
        v8 += 72;
        --v9;
      }
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      v7 = sub_24F92B618();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x277D84F90];
    }

    *&v24 = v7 + 32;
    *(&v24 + 1) = v6;
    sub_24F7FA580(&v24, v23, v29, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_24F7F8178(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  if (a2)
  {
    v5 = sub_24F92BAA8();
  }

  else
  {
    v5 = 0;
  }

  v6 = a3;
  v4(v5, a3);
}

id GameCenter.fetchSuggestedFriends(localPlayer:limitedTo:on:)(void *a1, uint64_t a2, void *a3)
{
  __swift_project_boxed_opaque_existential_1(a3, a3[3]);

  return sub_24F7FADF0(a1);
}

uint64_t sub_24F7F8270(uint64_t a1)
{
  v1 = *(a1 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F251730);
  v2 = sub_24F92B5A8();

  v1(v2);
}

uint64_t sub_24F7F82F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[5] = a4;
  v7 = sub_24F91FF38();
  v6[8] = v7;
  v6[9] = *(v7 - 8);
  v6[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24F7F83B4, 0, 0);
}

uint64_t sub_24F7F83B4()
{
  v1 = v0[5];
  v2 = swift_task_alloc();
  v0[11] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[12] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F251718);
  *v3 = v0;
  v3[1] = sub_24F7F84BC;

  return MEMORY[0x2822008A0](v0 + 2, 0, 0, 0xD000000000000030, 0x800000024FA7E440, sub_24F7FB648, v2, v4);
}

uint64_t sub_24F7F84BC()
{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = sub_24F7F8DD8;
  }

  else
  {

    v2 = sub_24F7F85D8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24F7F85D8()
{
  v1 = v0[2];
  v0[14] = v1;
  v2 = *(v1 + 16);
  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    v17 = MEMORY[0x277D84F90];
    sub_24F4578E0(0, v2, 0);
    v3 = v17;
    v4 = *(v17 + 16);
    v5 = 16 * v4;
    v6 = (v1 + 40);
    do
    {
      v8 = *(v6 - 1);
      v7 = *v6;
      v9 = v4 + 1;
      v10 = *(v17 + 24);

      if (v4 >= v10 >> 1)
      {
        sub_24F4578E0((v10 > 1), v9, 1);
      }

      *(v17 + 16) = v9;
      v11 = v17 + v5;
      *(v11 + 32) = v8;
      *(v11 + 40) = v7;
      v5 += 16;
      v6 += 6;
      ++v4;
      --v2;
    }

    while (v2);
  }

  v0[15] = v3;
  v12 = v0[5];
  v13 = swift_task_alloc();
  v0[16] = v13;
  *(v13 + 16) = v12;
  *(v13 + 24) = v3;
  v14 = swift_task_alloc();
  v0[17] = v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21E480);
  *v14 = v0;
  v14[1] = sub_24F7F87A0;

  return MEMORY[0x2822008A0](v0 + 3, 0, 0, 0xD000000000000030, 0x800000024FA7E440, sub_24F7FB650, v13, v15);
}

uint64_t sub_24F7F87A0()
{
  *(*v1 + 144) = v0;

  if (v0)
  {

    v2 = sub_24F7F8E44;
  }

  else
  {

    v2 = sub_24F7F88F0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24F7F88F0()
{
  v60 = v0;
  v1 = v0[14];
  v2 = v0[9];
  v3 = v0[3];
  v4 = sub_24F7FB658();

  v6 = *(v1 + 16);
  v55 = v3;
  if (v6)
  {
    v7 = 0;
    v52 = *MEMORY[0x277D0C7E0];
    v50 = (v2 + 8);
    v51 = (v2 + 104);
    v53 = v3 + 56;
    v49 = v6 - 1;
    v8 = v1 + 72;
    v54 = MEMORY[0x277D84F90];
    v56 = *(v1 + 16);
    v57 = v0;
    v48 = v1 + 72;
    v58 = v4;
    while (1)
    {
      v9 = (v8 + 48 * v7);
      v10 = v7;
      while (1)
      {
        if (v10 >= *(v0[14] + 16))
        {
          __break(1u);
          return result;
        }

        if (*(v4 + 16))
        {
          break;
        }

LABEL_4:
        ++v10;
        v9 += 6;
        if (v6 == v10)
        {
          goto LABEL_31;
        }
      }

      v11 = *(v9 - 1);
      v12 = *v9;
      v14 = *(v9 - 3);
      v13 = *(v9 - 2);
      v15 = *(v9 - 5);
      v16 = *(v9 - 4);

      swift_bridgeObjectRetain_n();
      v17 = sub_24E76D644(v15, v16);
      v19 = v18;

      if ((v19 & 1) == 0)
      {
        break;
      }

      v45 = v14;
      v47 = v11;
      v20 = v57[10];
      v21 = v57[8];
      v22 = *(*(v58 + 56) + 8 * v17);
      (*v51)(v20, v52, v21);
      v23 = v22;
      v24 = sub_24F91FF28();
      (*v50)(v20, v21);
      if (*(v55 + 16))
      {
        v25 = v23;
        sub_24F92D068();
        sub_24F92B218();
        v26 = sub_24F92D0B8();
        v27 = -1 << *(v55 + 32);
        v28 = v26 & ~v27;
        v29 = v45;
        if ((*(v53 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28))
        {
          v30 = ~v27;
          while (1)
          {
            v31 = (*(v55 + 48) + 16 * v28);
            v32 = *v31 == v15 && v31[1] == v16;
            if (v32 || (sub_24F92CE08() & 1) != 0)
            {
              break;
            }

            v28 = (v28 + 1) & v30;
            if (((*(v53 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
            {
              goto LABEL_18;
            }
          }
        }

        else
        {
LABEL_18:
          v24 = 0;
        }

        v23 = v25;
      }

      else
      {
        v24 = 0;
        v29 = v45;
      }

      v33 = [objc_opt_self() stringFromContact:v23 style:0];
      if (v33)
      {
        v34 = v33;
      }

      else
      {
        v34 = v23;
        v23 = [v23 givenName];
      }

      v46 = sub_24F92B0D8();
      v36 = v35;

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_24E61AC9C(0, *(v54 + 16) + 1, 1, v54);
        v54 = result;
      }

      v38 = *(v54 + 16);
      v37 = *(v54 + 24);
      v39 = v47;
      if (v38 >= v37 >> 1)
      {
        result = sub_24E61AC9C((v37 > 1), v38 + 1, 1, v54);
        v39 = v47;
        v54 = result;
      }

      v7 = v10 + 1;
      *(v54 + 16) = v38 + 1;
      v40 = v54 + 72 * v38;
      *(v40 + 32) = v15;
      *(v40 + 40) = v16;
      *(v40 + 48) = v29;
      *(v40 + 56) = v13;
      *(v40 + 64) = v39;
      *(v40 + 72) = v12;
      *(v40 + 80) = v46;
      *(v40 + 88) = v36;
      *(v40 + 96) = v24 & 1;
      v8 = v48;
      v0 = v57;
      v4 = v58;
      v6 = v56;
      if (v49 == v10)
      {
        goto LABEL_31;
      }
    }

    v0 = v57;
    v4 = v58;
    v6 = v56;
    goto LABEL_4;
  }

  v54 = MEMORY[0x277D84F90];
LABEL_31:
  v41 = v0[18];

  v59 = v54;

  sub_24F7F7FDC(&v59);
  if (v41)
  {
  }

  else
  {

    v42 = v59;
    sub_24F92C048();
    sub_24F929778();
    v43 = sub_24F929768();
    sub_24F921FE8();

    v0[4] = v42;
    sub_24F92A9C8();

    v44 = v0[1];

    return v44();
  }
}

uint64_t sub_24F7F8DD8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24F7F8E44()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24F7F8EA8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F251728);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = aBlock - v6;
  v8 = [objc_opt_self() proxyForPlayer_];
  v9 = [v8 utilityServicePrivate];

  (*(v5 + 16))(v7, a1, v4);
  v10 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v11 = swift_allocObject();
  (*(v5 + 32))(v11 + v10, v7, v4);
  aBlock[4] = sub_24F7FBC60;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24F7F8270;
  aBlock[3] = &block_descriptor_22_1;
  v12 = _Block_copy(aBlock);

  [v9 suggestedFriendsWithHandler_];
  _Block_release(v12);
  return swift_unknownObjectRelease();
}

uint64_t sub_24F7F90A4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = (a1 + 32);
    v3 = MEMORY[0x277D84F90];
    do
    {
      v18 = *v2;
      sub_24F7F91E8(&v18, &v13);
      v5 = v14;
      if (v14)
      {
        v6 = v13;
        v12 = v15;
        v7 = v16;
        v8 = v17;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v3 = sub_24E61ADDC(0, v3[2] + 1, 1, v3);
        }

        v10 = v3[2];
        v9 = v3[3];
        if (v10 >= v9 >> 1)
        {
          v3 = sub_24E61ADDC((v9 > 1), v10 + 1, 1, v3);
        }

        v3[2] = v10 + 1;
        v4 = &v3[6 * v10];
        v4[4] = v6;
        v4[5] = v5;
        *(v4 + 3) = v12;
        v4[8] = v7;
        v4[9] = v8;
      }

      ++v2;
      --v1;
    }

    while (v1);
  }

  else
  {
    v3 = MEMORY[0x277D84F90];
  }

  v13 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F251728);
  return sub_24F92B798();
}

unint64_t sub_24F7F91E8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  if (*(*a1 + 16))
  {
    v4 = sub_24E76D644(0x49746361746E6F63, 0xE900000000000044);
    if (v5)
    {
      sub_24E643A9C(*(v3 + 56) + 32 * v4, v15);
      if (swift_dynamicCast())
      {
        if (*(v3 + 16))
        {
          v6 = sub_24E76D644(0x656C646E6168, 0xE600000000000000);
          if (v7)
          {
            sub_24E643A9C(*(v3 + 56) + 32 * v6, v15);
            result = swift_dynamicCast();
            if (result)
            {
              v9 = *(v3 + 16);
              if (v9)
              {
                result = sub_24E76D644(1684627811, 0xE400000000000000);
                if (v10)
                {
                  sub_24E643A9C(*(v3 + 56) + 32 * result, v15);
                  result = swift_dynamicCast();
                  v9 = v13;
                  v11 = v14;
                  if (!result)
                  {
                    v9 = 0;
                    v11 = 0;
                  }

                  goto LABEL_17;
                }

                v9 = 0;
              }

              v11 = 0;
LABEL_17:
              *a2 = v13;
              a2[1] = v14;
              a2[2] = v9;
              a2[3] = v11;
              a2[4] = v13;
              a2[5] = v14;
              return result;
            }
          }
        }
      }
    }
  }

  if (qword_27F210590 != -1)
  {
    swift_once();
  }

  v12 = sub_24F92AAE8();
  __swift_project_value_buffer(v12, qword_27F39C410);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
  sub_24F928468();
  *(swift_allocObject() + 16) = xmmword_24F93DE60;
  sub_24F9283A8();
  sub_24F92A5A8();

  *(a2 + 1) = 0u;
  *(a2 + 2) = 0u;
  *a2 = 0u;
  return result;
}

void sub_24F7F9490(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F251720);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = aBlock - v6;
  v8 = [objc_opt_self() proxyForPlayer_];
  v9 = [v8 profileServicePrivate];

  v10 = sub_24F92B588();
  (*(v5 + 16))(v7, a1, v4);
  v11 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v12 = swift_allocObject();
  (*(v5 + 32))(v12 + v11, v7, v4);
  aBlock[4] = sub_24F7FBBC0;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24F7F8178;
  aBlock[3] = &block_descriptor_16_2;
  v13 = _Block_copy(aBlock);

  [v9 filterForContactIDsSupportingFriendingViaPushFromContactIDs:v10 withCompletion:v13];
  _Block_release(v13);
  swift_unknownObjectRelease();
}

uint64_t sub_24F7F96AC(uint64_t a1, void *a2)
{
  v3 = sub_24F928418();
  MEMORY[0x28223BE20](v3 - 8);
  if (a2)
  {
    v4 = a2;
    if (qword_27F210590 != -1)
    {
      swift_once();
    }

    v5 = sub_24F92AAE8();
    __swift_project_value_buffer(v5, qword_27F39C410);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
    sub_24F928468();
    *(swift_allocObject() + 16) = xmmword_24F93DE60;
    sub_24F928408();
    sub_24F9283F8();
    swift_getErrorValue();
    v9[3] = v8;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v9);
    (*(*(v8 - 8) + 16))(boxed_opaque_existential_1);
    sub_24F9283D8();
    sub_24E857CC8(v9);
    sub_24F9283F8();
    sub_24F928428();
    sub_24F92A5A8();

    v9[0] = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F251720);
    return sub_24F92B788();
  }

  else
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F251720);
    return sub_24F92B798();
  }
}

uint64_t static GameCenter.inviteFriendViewController(localPlayer:contactId:)(void *a1, uint64_t a2, uint64_t a3)
{
  v46 = *MEMORY[0x277D85DE8];
  v6 = sub_24F91F6B8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {
LABEL_14:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F251710);
    v23 = sub_24F92A9E8();
    if (a1)
    {
      v33 = a1;
      sub_24F91F6A8();
      sub_24F91F668();
      (*(v7 + 8))(v9, v6);
      v34 = sub_24F92B098();

      v35 = swift_allocObject();
      *(v35 + 16) = v23;
      *(v35 + 24) = 0;
      v44 = sub_24F7FB4EC;
      v45 = v35;
      aBlock = MEMORY[0x277D85DD0];
      v41 = 1107296256;
      v42 = sub_24F7FA4B0;
      v43 = &block_descriptor_180;
      v36 = _Block_copy(&aBlock);

      [v33 createFriendRequestWithIdentifier:v34 handler:v36];
      _Block_release(v36);
    }

    else
    {
      sub_24EEAE088();
      v34 = swift_allocError();
      *v37 = 7;
      *(v37 + 8) = 0;
      *(v37 + 16) = 0;
      *(v37 + 24) = 0;
      *(v37 + 32) = 4;
      sub_24F92A9A8();
    }

    return v23;
  }

  v10 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2357E0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_24F93DE60;
  *(v11 + 32) = a2;
  *(v11 + 40) = a3;

  v12 = sub_24F92B588();

  v13 = [v10 predicateForContactsWithIdentifiers_];

  v14 = [objc_allocWithZone(MEMORY[0x277CBDAB8]) init];
  sub_24F7FB50C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21E4A0);
  v15 = sub_24F92B588();

  aBlock = 0;
  v16 = [v14 unifiedContactsMatchingPredicate:v13 keysToFetch:v15 error:&aBlock];

  v17 = aBlock;
  if (!v16)
  {
    v29 = aBlock;
    v30 = sub_24F91F278();

    swift_willThrow();
    goto LABEL_14;
  }

  sub_24E7FA974();
  v18 = sub_24F92B5A8();
  v19 = v17;

  if (v18 >> 62)
  {
    if (sub_24F92C738())
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (!*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_13:

    goto LABEL_14;
  }

LABEL_5:
  if ((v18 & 0xC000000000000001) != 0)
  {
    v20 = MEMORY[0x253052270](0, v18);
  }

  else
  {
    if (!*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
    }

    v20 = *(v18 + 32);
  }

  v21 = v20;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F251710);
  v22 = v21;
  v23 = sub_24F92A9E8();
  if (a1)
  {
    v24 = a1;
    sub_24F91F6A8();
    sub_24F91F668();
    (*(v7 + 8))(v9, v6);
    v25 = sub_24F92B098();

    v26 = swift_allocObject();
    *(v26 + 16) = v23;
    *(v26 + 24) = v22;
    v44 = sub_24F7FBDE8;
    v45 = v26;
    aBlock = MEMORY[0x277D85DD0];
    v41 = 1107296256;
    v42 = sub_24F7FA4B0;
    v43 = &block_descriptor_7_0;
    v27 = _Block_copy(&aBlock);
    v28 = v22;

    [v24 createFriendRequestWithIdentifier:v25 handler:v27];
    _Block_release(v27);
  }

  else
  {
    sub_24EEAE088();
    v31 = swift_allocError();
    *v32 = 7;
    *(v32 + 8) = 0;
    *(v32 + 16) = 0;
    *(v32 + 24) = 0;
    *(v32 + 32) = 4;
    sub_24F92A9A8();
  }

  return v23;
}

void sub_24F7F9F3C(int a1, uint64_t a2, int a3, uint64_t a4, id a5, uint64_t a6, void *a7)
{
  if (a5)
  {
    v8 = a5;
    v9 = a5;
LABEL_11:
    sub_24F92A9A8();

    return;
  }

  if (!a2 || !a4)
  {
    if (qword_27F210590 != -1)
    {
      swift_once();
    }

    v19 = sub_24F92AAE8();
    __swift_project_value_buffer(v19, qword_27F39C410);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
    sub_24F928468();
    *(swift_allocObject() + 16) = xmmword_24F93DE60;
    sub_24F9283A8();
    sub_24F92A588();

    sub_24EEAE088();
    v8 = swift_allocError();
    *v20 = 3;
    *(v20 + 8) = 0;
    *(v20 + 16) = 0;
    *(v20 + 24) = 0;
    *(v20 + 32) = 4;
    goto LABEL_11;
  }

  v11 = [objc_allocWithZone(MEMORY[0x277D0C800]) init];
  v12 = sub_24F92B098();
  [v11 setFriendCode_];

  v13 = sub_24F92B098();
  [v11 setFriendSupportPageURL_];

  if (a7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F223440);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_24F941C80;
    *(v14 + 32) = a7;
    sub_24E7FA974();
    v15 = a7;
    v16 = sub_24F92B588();

    [v11 setRecipients_];
  }

  v21[4] = sub_24F7FBCDC;
  v21[5] = a6;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 1107296256;
  v21[2] = sub_24E6251C8;
  v21[3] = &block_descriptor_25_5;
  v17 = _Block_copy(v21);
  v18 = v11;

  [v18 setRemoteViewReadyHandler_];
  _Block_release(v17);
}

void sub_24F7FA2CC(void *a1)
{
  if (a1)
  {
    v1 = a1;
    [v1 setModalPresentationStyle_];
    sub_24F92A9C8();
  }

  else
  {
    if (qword_27F210590 != -1)
    {
      swift_once();
    }

    v2 = sub_24F92AAE8();
    __swift_project_value_buffer(v2, qword_27F39C410);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
    sub_24F928468();
    *(swift_allocObject() + 16) = xmmword_24F93DE60;
    sub_24F9283A8();
    sub_24F92A588();

    sub_24EEAE088();
    v3 = swift_allocError();
    *v4 = 4;
    *(v4 + 8) = 0;
    *(v4 + 16) = 0;
    *(v4 + 24) = 0;
    *(v4 + 32) = 4;
    sub_24F92A9A8();
  }
}

uint64_t sub_24F7FA4B0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a3;
  v6 = *(a1 + 32);
  if (a2)
  {
    v7 = sub_24F92B0D8();
    v9 = v8;
    if (v5)
    {
LABEL_3:
      v10 = sub_24F92B0D8();
      v5 = v11;
      goto LABEL_6;
    }
  }

  else
  {
    v7 = 0;
    v9 = 0;
    if (a3)
    {
      goto LABEL_3;
    }
  }

  v10 = 0;
LABEL_6:

  v12 = a4;
  v6(v7, v9, v10, v5, a4);
}

uint64_t sub_24F7FA580(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v84 = result;
  v5 = a3[1];
  if (v5 < 1)
  {
    v7 = MEMORY[0x277D84F90];
LABEL_92:
    v85 = *v84;
    if (!*v84)
    {
      goto LABEL_132;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_126:
      result = sub_24E86164C(v7);
      v7 = result;
    }

    v76 = (v7 + 16);
    v77 = *(v7 + 16);
    if (v77 >= 2)
    {
      while (*a3)
      {
        v78 = (v7 + 16 * v77);
        v79 = *v78;
        v80 = &v76[2 * v77];
        v81 = v80[1];
        sub_24F7FAB8C((*a3 + 72 * *v78), (*a3 + 72 * *v80), (*a3 + 72 * v81), v85);
        if (v4)
        {
        }

        if (v81 < v79)
        {
          goto LABEL_118;
        }

        if (v77 - 2 >= *v76)
        {
          goto LABEL_119;
        }

        *v78 = v79;
        v78[1] = v81;
        v82 = *v76 - v77;
        if (*v76 < v77)
        {
          goto LABEL_120;
        }

        v77 = *v76 - 1;
        result = memmove(v80, v80 + 2, 16 * v82);
        *v76 = v77;
        if (v77 <= 1)
        {
        }
      }

      goto LABEL_130;
    }
  }

  v6 = 0;
  v7 = MEMORY[0x277D84F90];
  while (1)
  {
    v8 = v6++;
    if (v6 < v5)
    {
      v9 = *a3;
      v10 = *(v9 + 72 * v6 + 64) & (*(v9 + 72 * v8 + 64) ^ 1);
      v6 = v8 + 2;
      if (v8 + 2 < v5)
      {
        v11 = (v9 + 72 * v8 + 136);
        do
        {
          v12 = v11[72];
          if (v12 == *v11)
          {
            if (v10)
            {
              goto LABEL_14;
            }
          }

          else if ((v10 ^ v12))
          {
            goto LABEL_13;
          }

          ++v6;
          v11 += 72;
        }

        while (v5 != v6);
        v6 = v5;
      }

LABEL_13:
      if (v10)
      {
LABEL_14:
        if (v6 < v8)
        {
          goto LABEL_123;
        }

        if (v8 < v6)
        {
          v13 = 72 * v6 - 72;
          v14 = 72 * v8;
          v15 = v6;
          v16 = v8;
          do
          {
            if (v16 != --v15)
            {
              v18 = *a3;
              if (!*a3)
              {
                goto LABEL_129;
              }

              v17 = v18 + v13;
              v90 = *(v18 + v14 + 32);
              v92 = *(v18 + v14 + 48);
              v94 = *(v18 + v14 + 64);
              v86 = *(v18 + v14);
              v88 = *(v18 + v14 + 16);
              result = memmove((v18 + v14), (v18 + v13), 0x48uLL);
              *(v17 + 32) = v90;
              *(v17 + 48) = v92;
              *(v17 + 64) = v94;
              *v17 = v86;
              *(v17 + 16) = v88;
            }

            ++v16;
            v13 -= 72;
            v14 += 72;
          }

          while (v16 < v15);
          v5 = a3[1];
        }
      }
    }

    if (v6 < v5)
    {
      if (__OFSUB__(v6, v8))
      {
        goto LABEL_122;
      }

      if (v6 - v8 < a4)
      {
        if (__OFADD__(v8, a4))
        {
          goto LABEL_124;
        }

        if (v8 + a4 < v5)
        {
          v5 = v8 + a4;
        }

        if (v5 < v8)
        {
LABEL_125:
          __break(1u);
          goto LABEL_126;
        }

        if (v6 != v5)
        {
          break;
        }
      }
    }

LABEL_41:
    if (v6 < v8)
    {
      goto LABEL_121;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_24E615ED8(0, *(v7 + 16) + 1, 1, v7);
      v7 = result;
    }

    v29 = *(v7 + 16);
    v28 = *(v7 + 24);
    v30 = v29 + 1;
    if (v29 >= v28 >> 1)
    {
      result = sub_24E615ED8((v28 > 1), v29 + 1, 1, v7);
      v7 = result;
    }

    *(v7 + 16) = v30;
    v31 = v7 + 32;
    v32 = (v7 + 32 + 16 * v29);
    *v32 = v8;
    v32[1] = v6;
    v85 = *v84;
    if (!*v84)
    {
      goto LABEL_131;
    }

    if (v29)
    {
      while (1)
      {
        v33 = v30 - 1;
        if (v30 >= 4)
        {
          break;
        }

        if (v30 == 3)
        {
          v34 = *(v7 + 32);
          v35 = *(v7 + 40);
          v44 = __OFSUB__(v35, v34);
          v36 = v35 - v34;
          v37 = v44;
LABEL_61:
          if (v37)
          {
            goto LABEL_108;
          }

          v50 = (v7 + 16 * v30);
          v52 = *v50;
          v51 = v50[1];
          v53 = __OFSUB__(v51, v52);
          v54 = v51 - v52;
          v55 = v53;
          if (v53)
          {
            goto LABEL_110;
          }

          v56 = (v31 + 16 * v33);
          v58 = *v56;
          v57 = v56[1];
          v44 = __OFSUB__(v57, v58);
          v59 = v57 - v58;
          if (v44)
          {
            goto LABEL_113;
          }

          if (__OFADD__(v54, v59))
          {
            goto LABEL_115;
          }

          if (v54 + v59 >= v36)
          {
            if (v36 < v59)
            {
              v33 = v30 - 2;
            }

            goto LABEL_83;
          }

          goto LABEL_76;
        }

        if (v30 < 2)
        {
          goto LABEL_116;
        }

        v60 = (v7 + 16 * v30);
        v62 = *v60;
        v61 = v60[1];
        v44 = __OFSUB__(v61, v62);
        v54 = v61 - v62;
        v55 = v44;
LABEL_76:
        if (v55)
        {
          goto LABEL_112;
        }

        v63 = (v31 + 16 * v33);
        v65 = *v63;
        v64 = v63[1];
        v44 = __OFSUB__(v64, v65);
        v66 = v64 - v65;
        if (v44)
        {
          goto LABEL_114;
        }

        if (v66 < v54)
        {
          goto LABEL_3;
        }

LABEL_83:
        if (v33 - 1 >= v30)
        {
          __break(1u);
LABEL_103:
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
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
          goto LABEL_125;
        }

        if (!*a3)
        {
          goto LABEL_128;
        }

        v71 = (v31 + 16 * (v33 - 1));
        v72 = *v71;
        v73 = (v31 + 16 * v33);
        v74 = v73[1];
        sub_24F7FAB8C((*a3 + 72 * *v71), (*a3 + 72 * *v73), (*a3 + 72 * v74), v85);
        if (v4)
        {
        }

        if (v74 < v72)
        {
          goto LABEL_103;
        }

        if (v33 > *(v7 + 16))
        {
          goto LABEL_104;
        }

        *v71 = v72;
        v71[1] = v74;
        v75 = *(v7 + 16);
        if (v33 >= v75)
        {
          goto LABEL_105;
        }

        v30 = v75 - 1;
        result = memmove((v31 + 16 * v33), v73 + 2, 16 * (v75 - 1 - v33));
        *(v7 + 16) = v75 - 1;
        if (v75 <= 2)
        {
          goto LABEL_3;
        }
      }

      v38 = v31 + 16 * v30;
      v39 = *(v38 - 64);
      v40 = *(v38 - 56);
      v44 = __OFSUB__(v40, v39);
      v41 = v40 - v39;
      if (v44)
      {
        goto LABEL_106;
      }

      v43 = *(v38 - 48);
      v42 = *(v38 - 40);
      v44 = __OFSUB__(v42, v43);
      v36 = v42 - v43;
      v37 = v44;
      if (v44)
      {
        goto LABEL_107;
      }

      v45 = (v7 + 16 * v30);
      v47 = *v45;
      v46 = v45[1];
      v44 = __OFSUB__(v46, v47);
      v48 = v46 - v47;
      if (v44)
      {
        goto LABEL_109;
      }

      v44 = __OFADD__(v36, v48);
      v49 = v36 + v48;
      if (v44)
      {
        goto LABEL_111;
      }

      if (v49 >= v41)
      {
        v67 = (v31 + 16 * v33);
        v69 = *v67;
        v68 = v67[1];
        v44 = __OFSUB__(v68, v69);
        v70 = v68 - v69;
        if (v44)
        {
          goto LABEL_117;
        }

        if (v36 < v70)
        {
          v33 = v30 - 2;
        }

        goto LABEL_83;
      }

      goto LABEL_61;
    }

LABEL_3:
    v5 = a3[1];
    if (v6 >= v5)
    {
      goto LABEL_92;
    }
  }

  v19 = *a3;
  v20 = *a3 + 72 * v6;
  v21 = v8 - v6;
LABEL_33:
  v22 = v21;
  v23 = v20;
  while (1)
  {
    if ((*(v23 - 8) & 1) != 0 || !*(v23 + 64))
    {
LABEL_32:
      ++v6;
      v20 += 72;
      --v21;
      if (v6 != v5)
      {
        goto LABEL_33;
      }

      v6 = v5;
      goto LABEL_41;
    }

    if (!v19)
    {
      break;
    }

    v24 = v23 - 72;
    v91 = *(v23 + 32);
    v93 = *(v23 + 48);
    v95 = *(v23 + 64);
    v87 = *v23;
    v89 = *(v23 + 16);
    v25 = *(v23 - 24);
    *(v23 + 32) = *(v23 - 40);
    *(v23 + 48) = v25;
    *(v23 + 64) = *(v23 - 8);
    v26 = *(v23 - 56);
    *v23 = *(v23 - 72);
    *(v23 + 16) = v26;
    *(v24 + 64) = v95;
    *(v24 + 32) = v91;
    *(v24 + 48) = v93;
    v23 -= 72;
    *v24 = v87;
    *(v24 + 16) = v89;
    if (__CFADD__(v22++, 1))
    {
      goto LABEL_32;
    }
  }

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
  return result;
}

uint64_t sub_24F7FAB8C(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 72;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 72;
  if (v9 >= v11)
  {
    v16 = 72 * v11;
    if (a4 != __src || &__src[v16] <= a4)
    {
      memmove(a4, __src, 72 * v11);
    }

    v13 = &v4[v16];
    if (v10 >= 72 && v6 > v7)
    {
LABEL_22:
      v5 -= 72;
      do
      {
        if ((*(v6 - 8) & 1) == 0 && *(v13 - 8))
        {
          v18 = v6 - 72;
          if (v5 + 72 != v6)
          {
            memmove(v5, v6 - 72, 0x48uLL);
          }

          if (v13 <= v4 || (v6 -= 72, v18 <= v7))
          {
            v6 = v18;
            goto LABEL_35;
          }

          goto LABEL_22;
        }

        v17 = (v13 - 72);
        if (v5 + 72 != v13)
        {
          memmove(v5, v13 - 72, 0x48uLL);
        }

        v5 -= 72;
        v13 -= 72;
      }

      while (v17 > v4);
      v13 = v17;
    }
  }

  else
  {
    v12 = 72 * v9;
    if (a4 != __dst || &__dst[v12] <= a4)
    {
      memmove(a4, __dst, v12);
    }

    v13 = &v4[v12];
    if (v8 < 72)
    {
      v6 = v7;
    }

    else
    {
      if (v6 < v5)
      {
        while ((v4[64] & 1) == 0 && v6[64])
        {
          v14 = v6;
          v15 = v7 == v6;
          v6 += 72;
          if (!v15)
          {
            goto LABEL_13;
          }

LABEL_14:
          v7 += 72;
          if (v4 >= v13 || v6 >= v5)
          {
            goto LABEL_16;
          }
        }

        v14 = v4;
        v15 = v7 == v4;
        v4 += 72;
        if (v15)
        {
          goto LABEL_14;
        }

LABEL_13:
        memmove(v7, v14, 0x48uLL);
        goto LABEL_14;
      }

LABEL_16:
      v6 = v7;
    }
  }

LABEL_35:
  v19 = 72 * ((v13 - v4) / 72);
  if (v6 != v4 || v6 >= &v4[v19])
  {
    memmove(v6, v4, v19);
  }

  return 1;
}

id sub_24F7FADF0(void *a1)
{
  ObjectType = swift_getObjectType();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v31 - v4;
  v6 = sub_24F922028();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v31 - v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F232C08);
  v34 = sub_24F92A9E8();
  result = [objc_opt_self() shared];
  if (result)
  {
    v14 = result;
    v15 = [result isAddingFriendsRestricted];

    if (v15)
    {
      if (qword_27F210590 != -1)
      {
        swift_once();
      }

      v16 = sub_24F92AAE8();
      __swift_project_value_buffer(v16, qword_27F39C410);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
      sub_24F928468();
      *(swift_allocObject() + 16) = xmmword_24F93DE60;
      sub_24F9283A8();
      sub_24F92A588();

      sub_24EEAE088();
      v18 = swift_allocError();
      v19 = 5;
    }

    else
    {
      if (a1)
      {
        v33 = ObjectType;
        sub_24F929778();
        v32 = a1;
        sub_24F929768();
        sub_24F921FF8();
        sub_24F92C058();
        v20 = sub_24F929768();
        sub_24F921FE8();

        if (qword_27F210590 != -1)
        {
          swift_once();
        }

        v21 = sub_24F92AAE8();
        __swift_project_value_buffer(v21, qword_27F39C410);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
        sub_24F928468();
        *(swift_allocObject() + 16) = xmmword_24F93DE60;
        sub_24F9283A8();
        sub_24F92A588();

        v22 = sub_24F92B858();
        (*(*(v22 - 8) + 56))(v5, 1, 1, v22);
        (*(v7 + 16))(v9, v12, v6);
        v23 = (*(v7 + 80) + 40) & ~*(v7 + 80);
        v24 = (v8 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
        v25 = swift_allocObject();
        *(v25 + 2) = 0;
        *(v25 + 3) = 0;
        v26 = v32;
        *(v25 + 4) = v32;
        (*(v7 + 32))(&v25[v23], v9, v6);
        v27 = v33;
        v28 = v34;
        *&v25[v24] = v34;
        *&v25[(v24 + 15) & 0xFFFFFFFFFFFFFFF8] = v27;
        v29 = v26;

        sub_24F1D3DA4(0, 0, v5, &unk_24F9AAD50, v25);

        (*(v7 + 8))(v12, v6);
        return v28;
      }

      if (qword_27F210590 != -1)
      {
        swift_once();
      }

      v30 = sub_24F92AAE8();
      __swift_project_value_buffer(v30, qword_27F39C410);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
      sub_24F928468();
      *(swift_allocObject() + 16) = xmmword_24F93DE60;
      sub_24F9283A8();
      sub_24F92A588();

      sub_24EEAE088();
      v18 = swift_allocError();
      v19 = 7;
    }

    *v17 = v19;
    *(v17 + 8) = 0;
    *(v17 + 16) = 0;
    *(v17 + 24) = 0;
    *(v17 + 32) = 4;
    v28 = v34;
    sub_24F92A9A8();

    return v28;
  }

  __break(1u);
  return result;
}

uint64_t block_copy_helper_180(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24F7FB50C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F223440);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_24F95C300;
  *(v0 + 32) = [objc_opt_self() descriptorForRequiredKeysForStyle_];
  *(v0 + 40) = [objc_allocWithZone(MEMORY[0x277CCACA8]) initWithString_];
  *(v0 + 48) = [objc_allocWithZone(MEMORY[0x277CCACA8]) initWithString_];
  *(v0 + 56) = [objc_allocWithZone(MEMORY[0x277CCACA8]) initWithString_];
  *(v0 + 64) = [objc_allocWithZone(MEMORY[0x277CCACA8]) initWithString_];
  *(v0 + 72) = [objc_allocWithZone(MEMORY[0x277CCACA8]) initWithString_];
  return v0;
}

uint64_t sub_24F7FB658()
{
  v42[4] = *MEMORY[0x277D85DE8];
  v0 = [objc_allocWithZone(MEMORY[0x277CBDAB8]) init];
  v1 = objc_opt_self();
  v2 = MEMORY[0x277D837D0];
  v3 = sub_24F92B588();
  v4 = [v1 predicateForContactsWithIdentifiers_];

  sub_24F7FB50C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21E4A0);
  v5 = sub_24F92B588();

  v42[0] = 0;
  v6 = [v0 unifiedContactsMatchingPredicate:v4 keysToFetch:v5 error:v42];

  v7 = v42[0];
  if (v6)
  {
    sub_24E7FA974();
    v8 = sub_24F92B5A8();
    v9 = v7;

    if (v8 >> 62)
    {
      goto LABEL_29;
    }

    v10 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v40 = v4;
    v41 = v0;
    while (v10)
    {
      v11 = 0;
      v12 = MEMORY[0x277D84F98];
      while (1)
      {
        if ((v8 & 0xC000000000000001) != 0)
        {
          v16 = MEMORY[0x253052270](v11, v8);
        }

        else
        {
          if (v11 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_28;
          }

          v16 = *(v8 + 8 * v11 + 32);
        }

        v17 = v16;
        v0 = (v11 + 1);
        if (__OFADD__(v11, 1))
        {
          break;
        }

        v18 = [v16 identifier];
        v19 = sub_24F92B0D8();
        v21 = v20;

        v22 = v17;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v42[0] = v12;
        v24 = sub_24E76D644(v19, v21);
        v26 = v12[2];
        v27 = (v25 & 1) == 0;
        v28 = __OFADD__(v26, v27);
        v29 = v26 + v27;
        if (v28)
        {
          goto LABEL_26;
        }

        v4 = v25;
        if (v12[3] < v29)
        {
          sub_24E8AB044(v29, isUniquelyReferenced_nonNull_native);
          v24 = sub_24E76D644(v19, v21);
          if ((v4 & 1) != (v30 & 1))
          {
            result = sub_24F92CF88();
            __break(1u);
            return result;
          }

LABEL_17:
          if (v4)
          {
            goto LABEL_5;
          }

          goto LABEL_18;
        }

        if (isUniquelyReferenced_nonNull_native)
        {
          goto LABEL_17;
        }

        v34 = v24;
        sub_24E8B7C5C();
        v24 = v34;
        if (v4)
        {
LABEL_5:
          v13 = v24;

          v12 = v42[0];
          v14 = *(v42[0] + 7);
          v15 = *(v14 + 8 * v13);
          *(v14 + 8 * v13) = v22;

          goto LABEL_6;
        }

LABEL_18:
        v12 = v42[0];
        *(v42[0] + (v24 >> 6) + 8) |= 1 << v24;
        v31 = (v12[6] + 16 * v24);
        *v31 = v19;
        v31[1] = v21;
        *(v12[7] + 8 * v24) = v22;

        v32 = v12[2];
        v28 = __OFADD__(v32, 1);
        v33 = v32 + 1;
        if (v28)
        {
          goto LABEL_27;
        }

        v12[2] = v33;
LABEL_6:
        ++v11;
        if (v0 == v10)
        {
          goto LABEL_31;
        }
      }

      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      v10 = sub_24F92C738();
      v40 = v4;
      v41 = v0;
    }

    v12 = MEMORY[0x277D84F98];
LABEL_31:

    v38 = v41;
  }

  else
  {
    v35 = v42[0];
    v36 = sub_24F91F278();

    swift_willThrow();
    if (qword_27F210590 != -1)
    {
      swift_once();
    }

    v37 = sub_24F92AAE8();
    __swift_project_value_buffer(v37, qword_27F39C410);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
    sub_24F928468();
    *(swift_allocObject() + 16) = xmmword_24F93DE60;
    v42[0] = 0;
    v42[1] = 0xE000000000000000;
    sub_24F92C888();
    MEMORY[0x253050C20](0xD000000000000039, 0x800000024FA7E480);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F228600);
    sub_24F92CA38();
    v42[3] = v2;
    sub_24F928438();
    sub_24E857CC8(v42);
    sub_24F92A5A8();

    v12 = sub_24E611E60(MEMORY[0x277D84F90]);

    v38 = v4;
  }

  return v12;
}

uint64_t sub_24F7FBBC0(uint64_t a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F251720);

  return sub_24F7F96AC(a1, a2);
}

uint64_t sub_24F7FBC60(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F251728);

  return sub_24F7F90A4(a1);
}

uint64_t sub_24F7FBCE4()
{
  v1 = sub_24F922028();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_24F7FBE10(char *a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFFuLL)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F246658);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[6];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(&a1[v11], a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F254DA0);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[10];
    goto LABEL_9;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2168A0);
  v15 = *(*(v14 - 8) + 48);
  v16 = &a1[a3[12]];

  return v15(v16, a2, v14);
}

char *sub_24F7FBFB4(char *result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
    return result;
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F246658);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[6];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(&v5[v11], a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F254DA0);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[10];
    goto LABEL_7;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2168A0);
  v15 = *(*(v14 - 8) + 56);
  v16 = &v5[a4[12]];

  return v15(v16, a2, a2, v14);
}

uint64_t type metadata accessor for ComponentGridView()
{
  result = qword_27F251738;
  if (!qword_27F251738)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24F7FC190()
{
  sub_24F7FC424(319, &qword_27F226898, &unk_27F23A6A0, &unk_24F9549D0, MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_24F7FC3D4(319, &qword_27F251748, &type metadata for ComponentGridLayoutDescription, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_24F4ED88C(319, &qword_27F246670, MEMORY[0x277D7EB40]);
      if (v2 <= 0x3F)
      {
        sub_24F7FC3D4(319, &qword_27F215590, MEMORY[0x277D85048], MEMORY[0x277CDF468]);
        if (v3 <= 0x3F)
        {
          sub_24F7FC3D4(319, &qword_27F21CF60, &_s14descr2861A93B9C10BreakpointON, MEMORY[0x277CDF468]);
          if (v4 <= 0x3F)
          {
            sub_24F7FC3D4(319, &qword_27F251750, &type metadata for GSKShelf.ResolvedOrientation, MEMORY[0x277CDF468]);
            if (v5 <= 0x3F)
            {
              sub_24F7FC424(319, &qword_27F254DC0, &qword_27F215598, &unk_24F945EF0, MEMORY[0x277CDF468]);
              if (v6 <= 0x3F)
              {
                sub_24F4ED88C(319, &qword_27F2168C8, MEMORY[0x277CDFA28]);
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

void sub_24F7FC3D4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_24F7FC424(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
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

uint64_t sub_24F7FC4A4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_24F924848();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221988);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for ComponentGridView();
  sub_24E60169C(v1 + *(v10 + 24), v9, &qword_27F221988);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_24F921998();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_24F92BDC8();
    v13 = sub_24F9257A8();
    sub_24F921FD8();

    sub_24F924838();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

double sub_24F7FC6AC()
{
  v1 = sub_24F924848();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = (v0 + *(type metadata accessor for ComponentGridView() + 28));
  v6 = *v5;
  if (v5[8] == 1)
  {
    return *v5;
  }

  sub_24F92BDC8();
  v8 = sub_24F9257A8();
  sub_24F921FD8();

  sub_24F924838();
  swift_getAtKeyPath();
  sub_24E62A5EC(v6, 0);
  (*(v2 + 8))(v4, v1);
  return *&v9[1];
}

uint64_t sub_24F7FC808()
{
  v1 = sub_24F924848();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v9[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = v0 + *(type metadata accessor for ComponentGridView() + 32);
  v6 = *v5;
  if (*(v5 + 8) != 1)
  {

    sub_24F92BDC8();
    v7 = sub_24F9257A8();
    sub_24F921FD8();

    sub_24F924838();
    swift_getAtKeyPath();
    sub_24E62A5EC(v6, 0);
    (*(v2 + 8))(v4, v1);
    return v9[15];
  }

  return v6;
}

uint64_t sub_24F7FC960@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_24F924848();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254ED0);
  MEMORY[0x28223BE20](v7);
  v9 = &v13 - v8;
  v10 = type metadata accessor for ComponentGridView();
  sub_24E60169C(v1 + *(v10 + 40), v9, &unk_27F254ED0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_24E667F6C(v9, a1);
  }

  sub_24F92BDC8();
  v12 = sub_24F9257A8();
  sub_24F921FD8();

  sub_24F924838();
  swift_getAtKeyPath();

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_24F7FCB38@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_24F924848();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254ED0);
  MEMORY[0x28223BE20](v7);
  v9 = &v13 - v8;
  v10 = type metadata accessor for ComponentGridView();
  sub_24E60169C(v1 + *(v10 + 44), v9, &unk_27F254ED0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_24E667F6C(v9, a1);
  }

  sub_24F92BDC8();
  v12 = sub_24F9257A8();
  sub_24F921FD8();

  sub_24F924838();
  swift_getAtKeyPath();

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_24F7FCD10@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_24F924848();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216898);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for ComponentGridView();
  sub_24E60169C(v1 + *(v10 + 48), v9, &qword_27F216898);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_24F923E98();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_24F92BDC8();
    v13 = sub_24F9257A8();
    sub_24F921FD8();

    sub_24F924838();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

BOOL sub_24F7FCF18()
{
  v1 = sub_24F924848();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v10[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = v0 + *(type metadata accessor for ComponentGridView() + 36);
  v6 = *(v5 + 8);
  if (*(v5 + 9) != 1)
  {
    v7 = *v5;

    sub_24F92BDC8();
    v8 = sub_24F9257A8();
    sub_24F921FD8();

    sub_24F924838();
    swift_getAtKeyPath();
    sub_24F7FEE34(v7, v6, 0);
    (*(v2 + 8))(v4, v1);
    LOBYTE(v6) = v10[8];
  }

  return (v6 & 1) == 0;
}

void *sub_24F7FD084@<X0>(uint64_t a1@<X8>)
{
  v126 = a1;
  v2 = type metadata accessor for ComponentGridView();
  v112 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v113 = v3;
  v114 = &v101[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v132 = sub_24F921998();
  v134 = *(v132 - 8);
  MEMORY[0x28223BE20](v132);
  v103 = &v101[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F251758);
  MEMORY[0x28223BE20](v125);
  v115 = &v101[-v5];
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F251760);
  MEMORY[0x28223BE20](v123);
  v124 = &v101[-v6];
  v7 = sub_24F925688();
  MEMORY[0x28223BE20](v7 - 8);
  v107 = &v101[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v120 = sub_24F9256A8();
  v109 = *(v120 - 8);
  MEMORY[0x28223BE20](v120);
  v106 = &v101[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F251768);
  MEMORY[0x28223BE20](v119);
  v104 = &v101[-v10];
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F251770);
  v108 = *(v121 - 8);
  MEMORY[0x28223BE20](v121);
  v105 = &v101[-v11];
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F251778);
  v111 = *(v122 - 8);
  MEMORY[0x28223BE20](v122);
  v110 = &v101[-v12];
  v118 = sub_24F923E98();
  v117 = *(v118 - 8);
  MEMORY[0x28223BE20](v118);
  v137 = &v101[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215598);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v101[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v17);
  v19 = &v101[-v18];
  v135 = sub_24F925218();
  v20 = *(v135 - 8);
  MEMORY[0x28223BE20](v135);
  v22 = &v101[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v23);
  MEMORY[0x28223BE20](v24);
  v138 = &v101[-v26];
  v27 = v1[1];
  v28 = v1[2];
  v29 = v1[3];
  v30 = v1[4];
  v31 = v1[5];
  if (v28)
  {
    v133 = v1[1];
    v32 = v28;
    v128 = v29;
    v33 = v30;
    v34 = v31;
  }

  else
  {
    v133 = 0;
    v128 = 0;
    v33 = 0;
    v34 = 0;
    v32 = &unk_2861C28A0;
  }

  v127 = v32;
  v136 = v25;
  sub_24F7FED5C(v27, v28);
  v102 = sub_24F7FC808();
  v35 = 0.0;
  v129 = *(v1 + *(v2 + 56));
  if (v129 == 1)
  {
    v35 = *(*v1 + 16);
  }

  v139 = v1;
  sub_24F7FC960(v19);
  v36 = *(v20 + 48);
  v37 = v20;
  v38 = v135;
  if (v36(v19, 1, v135) == 1)
  {
    v39 = v37;
    (*(v37 + 104))(v138, *MEMORY[0x277CE0560], v38);
    if (v36(v19, 1, v38) != 1)
    {
      sub_24E601704(v19, &qword_27F215598);
    }
  }

  else
  {
    v39 = v37;
    (*(v37 + 32))(v138, v19, v38);
  }

  sub_24F7FCB38(v16);
  v40 = v36(v16, 1, v38);
  v131 = v34;
  v130 = v33;
  if (v40 == 1)
  {
    v41 = *MEMORY[0x277CE0558];
    (*(v39 + 104))(v136, v41, v38);
    if (v36(v16, 1, v38) != 1)
    {
      sub_24E601704(v16, &qword_27F215598);
    }

    v38 = v135;
  }

  else
  {
    (*(v39 + 32))(v136, v16, v38);
    v41 = *MEMORY[0x277CE0558];
  }

  sub_24F7FCD10(v137);
  v42 = *(v39 + 104);
  v42(v22, v41, v38);
  v43 = sub_24F925208();
  v44 = *(v39 + 8);
  v44(v22, v38);
  v42(v22, v41, v38);
  v45 = sub_24F925208();
  v116 = v39 + 8;
  v44(v22, v38);
  v46 = v44;
  v47 = _s12GameStoreKit15PageEnvironmentV4isAXSbvg_0();
  v48 = v132;
  v49 = v134;
  if ((v47 & 1) == 0)
  {
    if (v43)
    {
      if (v128)
      {
        v54 = sub_24E8E92B0(v128);

        v51 = v139;
        goto LABEL_39;
      }

      v51 = v139;
      if (v130)
      {
        goto LABEL_29;
      }

      goto LABEL_35;
    }

    if (v45)
    {
      goto LABEL_16;
    }

    if (v102 - 5 >= 4)
    {
      v51 = v139;
      if (v102 - 3 >= 2)
      {
        _s12GameStoreKit15PageEnvironmentV4isAXSbvg_0();
        goto LABEL_37;
      }

      if (!v130)
      {
LABEL_37:
        v54 = sub_24E8E91C0(v127);
        goto LABEL_38;
      }

      v55 = sub_24E8E92B0(v130);
    }

    else
    {
      v51 = v139;
      if (!v131)
      {
        if (v130)
        {
LABEL_29:
          v54 = sub_24E8E92B0(v130);

          goto LABEL_39;
        }

LABEL_35:
        v54 = sub_24E8E91C0(v127);

        goto LABEL_39;
      }

      v55 = sub_24E8E93AC(v131);
    }

    v54 = v55;
LABEL_38:

    goto LABEL_39;
  }

LABEL_16:
  v50 = _s12GameStoreKit15PageEnvironmentV4isAXSbvg_0();
  v51 = v139;
  if ((v50 & v45 & 1) == 0)
  {
    goto LABEL_37;
  }

  v52 = v48;
  v53 = v133;
  if (!v133)
  {
    v56 = v127;

    v53 = v56;
  }

  v133 = v53;
  v54 = sub_24E8E91C0(v53);

  v48 = v52;
  v49 = v134;
LABEL_39:

  if (v129)
  {
    v58 = ceil(v35 / (v54[3] >> 1));
    if ((*&v58 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      goto LABEL_71;
    }

    if (v58 <= -9.22337204e18)
    {
LABEL_72:
      __break(1u);
    }

    else if (v58 < 9.22337204e18)
    {
      v133 = v46;
      v59 = sub_24EE1E7DC(v54, v58);

      v60 = *(v59 + 16);
      if (v60)
      {
        v61 = 0;
        v54 = MEMORY[0x277D84F90];
        while (1)
        {
          if (v61 >= *(v59 + 16))
          {
            __break(1u);
LABEL_67:
            __break(1u);
LABEL_68:
            __break(1u);
LABEL_69:
            __break(1u);
LABEL_70:
            __break(1u);
LABEL_71:
            __break(1u);
            goto LABEL_72;
          }

          v62 = *(v59 + 32 + 8 * v61);
          v63 = *(v62 + 16);
          v64 = v54[2];
          v65 = v64 + v63;
          if (__OFADD__(v64, v63))
          {
            goto LABEL_67;
          }

          result = swift_isUniquelyReferenced_nonNull_native();
          if (result && v65 <= v54[3] >> 1)
          {
            if (*(v62 + 16))
            {
              goto LABEL_57;
            }
          }

          else
          {
            if (v64 <= v65)
            {
              v66 = v64 + v63;
            }

            else
            {
              v66 = v64;
            }

            result = sub_24E61A798(result, v66, 1, v54);
            v54 = result;
            if (*(v62 + 16))
            {
LABEL_57:
              if ((v54[3] >> 1) - v54[2] < v63)
              {
                goto LABEL_69;
              }

              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E00);
              swift_arrayInitWithCopy();

              if (v63)
              {
                v67 = v54[2];
                v68 = __OFADD__(v67, v63);
                v69 = v67 + v63;
                if (v68)
                {
                  goto LABEL_70;
                }

                v54[2] = v69;
              }

              goto LABEL_46;
            }
          }

          if (v63)
          {
            goto LABEL_68;
          }

LABEL_46:
          if (v60 == ++v61)
          {
            goto LABEL_62;
          }
        }
      }

      v54 = MEMORY[0x277D84F90];
LABEL_62:

      v51 = v139;
      v48 = v132;
      v46 = v133;
      v49 = v134;
      v38 = v135;
      goto LABEL_63;
    }

    __break(1u);
    return result;
  }

LABEL_63:
  (*(v117 + 8))(v137, v118);
  v46(v136, v38);
  v46(v138, v38);
  if (sub_24F7FCF18())
  {
    v70 = sub_24F9257B8();
    MEMORY[0x28223BE20](v70);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2517D8);
    v71 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2517E0);
    v72 = sub_24E602068(&qword_27F2517E8, &qword_27F2517E0);
    *&v144 = v71;
    *(&v144 + 1) = v72;
    swift_getOpaqueTypeConformance2();
    v73 = v104;
    sub_24F923438();

    sub_24F7FC6AC();
    sub_24F927618();
    sub_24F9238C8();
    v74 = v119;
    v75 = (v73 + *(v119 + 36));
    v76 = v145;
    *v75 = v144;
    v75[1] = v76;
    v75[2] = v146;
    sub_24F925678();
    v77 = v106;
    sub_24F925698();
    v78 = sub_24F7FEF74();
    v79 = MEMORY[0x277CDE478];
    v80 = v105;
    v81 = v120;
    sub_24F926698();
    (*(v109 + 8))(v77, v81);
    sub_24E601704(v73, &qword_27F251768);
    v140 = v74;
    v141 = v81;
    v142 = v78;
    v143 = v79;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v83 = v110;
    v84 = v121;
    sub_24F9265A8();
    (*(v108 + 8))(v80, v84);
    v85 = v111;
    v86 = v122;
    (*(v111 + 16))(v124, v83, v122);
    swift_storeEnumTagMultiPayload();
    v140 = v84;
    v141 = OpaqueTypeConformance2;
    swift_getOpaqueTypeConformance2();
    sub_24F7FF02C();
    sub_24F924E28();
    return (*(v85 + 8))(v83, v86);
  }

  else
  {
    v87 = sub_24F924C98();
    v88 = v103;
    sub_24F7FC4A4(v103);
    v89 = sub_24F921988();
    v91 = v90;
    (*(v49 + 8))(v88, v48);
    v92 = v115;
    *v115 = v87;
    *(v92 + 8) = v89;
    *(v92 + 16) = v91 & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F251780);
    v93 = v54[2];
    *&v144 = 0;
    *(&v144 + 1) = v93;
    swift_getKeyPath();
    v94 = v114;
    sub_24F7FEDCC(v51, v114);
    v95 = (*(v112 + 80) + 24) & ~*(v112 + 80);
    v96 = swift_allocObject();
    *(v96 + 16) = v54;
    sub_24F755398(v94, v96 + v95);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2143D0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F251788);
    sub_24F804C14(&qword_27F2143E0, &qword_27F2143D0);
    sub_24F7FEEC4();
    sub_24F927228();
    sub_24F7FC6AC();
    sub_24F927628();
    sub_24F9238C8();
    v97 = (v92 + *(v125 + 36));
    v98 = v145;
    *v97 = v144;
    v97[1] = v98;
    v97[2] = v146;
    sub_24E60169C(v92, v124, &qword_27F251758);
    swift_storeEnumTagMultiPayload();
    v99 = sub_24F7FEF74();
    v140 = v119;
    v141 = v120;
    v142 = v99;
    v143 = MEMORY[0x277CDE478];
    v100 = swift_getOpaqueTypeConformance2();
    v140 = v121;
    v141 = v100;
    swift_getOpaqueTypeConformance2();
    sub_24F7FF02C();
    sub_24F924E28();
    return sub_24E601704(v92, &qword_27F251758);
  }
}

uint64_t sub_24F7FE348@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v23 = a3;
  v5 = type metadata accessor for ComponentGridView();
  v21 = *(v5 - 8);
  v6 = *(v21 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = sub_24F921998();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2517E0);
  MEMORY[0x28223BE20](v22);
  v12 = &v20 - v11;
  sub_24F7FC4A4(v10);
  v13 = sub_24F921948();
  v15 = v14;
  (*(v8 + 8))(v10, v7);
  *v12 = sub_24F9249A8();
  *(v12 + 1) = v13;
  v12[16] = v15 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2517F0);
  v16 = *(a2 + 16);
  v24 = 0;
  v25 = v16;
  swift_getKeyPath();
  sub_24F7FEDCC(a1, &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = (*(v21 + 80) + 24) & ~*(v21 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = a2;
  sub_24F755398(&v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v17);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2143D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2517F8);
  sub_24F804C14(&qword_27F2143E0, &qword_27F2143D0);
  sub_24F803FD8();
  sub_24F927228();
  sub_24E602068(&qword_27F2517E8, &qword_27F2517E0);
  sub_24F9265C8();
  return sub_24E601704(v12, &qword_27F2517E0);
}

void sub_24F7FE69C(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_24F921998();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2517F8);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v39 - v13;
  v15 = *a1;
  if ((*a1 & 0x8000000000000000) != 0)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v16 = *(a2 + 16);
  if (v16 < v15)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v40 = v9;
  v41 = v8;
  v42 = a4;
  v43 = v14;
  v44 = a3;
  v17 = 0;
  if (v15)
  {
    v18 = a2 + 32;
    v19 = v15;
    while (1)
    {
      sub_24E615E00(v18, v45);
      v20 = v47;
      v21 = v48;
      __swift_project_boxed_opaque_existential_1(v45, v47);
      v22 = (*(v21 + 8))(v20, v21);
      v23 = __OFADD__(v17, v22);
      v17 += v22;
      if (v23)
      {
        break;
      }

      __swift_destroy_boxed_opaque_existential_1(v45);
      v18 += 40;
      if (!--v19)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_20;
  }

LABEL_7:
  if (v15 >= v16)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  sub_24E615E00(a2 + 32 + 40 * v15, v52);
  v24 = *v44;
  v25 = *(*v44 + 16);
  v26 = v25 - v17;
  if (__OFSUB__(v25, v17))
  {
LABEL_23:
    __break(1u);
    return;
  }

  v27 = v53;
  v28 = v54;
  __swift_project_boxed_opaque_existential_1(v52, v53);
  v29 = (*(v28 + 8))(v27, v28);
  if (v29 >= v26)
  {
    v30 = v26;
  }

  else
  {
    v30 = v29;
  }

  if (v30 < 1)
  {
    v37 = 1;
    v36 = v43;
  }

  else
  {

    sub_24F7FC4A4(v11);
    v31 = COERCE_DOUBLE(sub_24F921948());
    v33 = v32;
    (*(v40 + 8))(v11, v41);
    if (v33)
    {
      v34 = 12.0;
    }

    else
    {
      v34 = v31;
    }

    sub_24E615E00(v52, &v46);
    v35 = sub_24F7FC6AC();
    v45[0] = v24;
    *&v45[1] = v34;
    v49 = v17;
    v50 = 0;
    v51 = v35;
    sub_24F804088();
    v36 = v43;
    sub_24F9265C8();
    sub_24F8040DC(v45);
    v37 = 0;
  }

  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F251810);
  (*(*(v38 - 8) + 56))(v36, v37, 1, v38);
  sub_24E6009C8(v36, v42, &qword_27F2517F8);
  __swift_destroy_boxed_opaque_existential_1(v52);
}

void sub_24F7FE9F8(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_24F921998();
  MEMORY[0x28223BE20](v8);
  MEMORY[0x28223BE20](v9);
  v14 = *a1;
  if ((*a1 & 0x8000000000000000) != 0)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v15 = *(a2 + 16);
  if (v15 < v14)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v52 = &v51 - v11;
  v53 = v13;
  v54 = v12;
  v55 = v10;
  v56 = a3;
  v16 = 0;
  if (v14)
  {
    v17 = a2 + 32;
    v18 = v14;
    while (1)
    {
      sub_24E615E00(v17, &v57);
      v19 = v59;
      v20 = v60;
      __swift_project_boxed_opaque_existential_1(&v57, v59);
      v21 = (*(v20 + 8))(v19, v20);
      v22 = __OFADD__(v16, v21);
      v16 += v21;
      if (v22)
      {
        break;
      }

      __swift_destroy_boxed_opaque_existential_1(&v57);
      v17 += 40;
      if (!--v18)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_20;
  }

LABEL_7:
  if (v14 >= v15)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  sub_24E615E00(a2 + 32 + 40 * v14, v64);
  v23 = v56;
  v24 = *v56;
  v25 = *(*v56 + 16);
  v26 = v25 - v16;
  if (__OFSUB__(v25, v16))
  {
LABEL_23:
    __break(1u);
    return;
  }

  v27 = v65;
  v28 = v66;
  __swift_project_boxed_opaque_existential_1(v64, v65);
  v29 = (*(v28 + 8))(v27, v28);
  if (v29 >= v26)
  {
    v30 = v26;
  }

  else
  {
    v30 = v29;
  }

  if (v30 < 1)
  {
    v50 = 0;
    v16 = 0;
    v49 = 0;
    v24 = 0;
    v46 = 0;
    v45 = 0uLL;
    v44 = 0.0;
    v42 = 0.0;
    v47 = 0uLL;
    v48 = 0uLL;
  }

  else
  {
    v31 = v52;
    sub_24F7FC4A4(v52);
    v32 = sub_24F921948();
    v34 = v33;
    v35 = *(v54 + 8);
    v36 = v31;
    v37 = v55;
    v35(v36, v55);
    *&v57 = sub_24F9249A8();
    *(&v57 + 1) = v32;
    LOBYTE(v58) = v34 & 1;

    v38 = v53;
    sub_24F7FC4A4(v53);
    v39 = COERCE_DOUBLE(sub_24F921948());
    v41 = v40;
    v35(v38, v37);
    if (v41)
    {
      v42 = 12.0;
    }

    else
    {
      v42 = v39;
    }

    sub_24E615E00(v64, v61);
    v43 = *(v23 + *(type metadata accessor for ComponentGridView() + 52));
    v44 = sub_24F7FC6AC();
    LOBYTE(v63) = v43;
    v45 = v57;
    v46 = v58;
    v47 = v61[0];
    v48 = v61[1];
    v49 = v62;
    v50 = v63;
  }

  *a4 = v45;
  *(a4 + 16) = v46;
  *(a4 + 24) = v24;
  *(a4 + 32) = v42;
  *(a4 + 40) = v47;
  *(a4 + 56) = v48;
  *(a4 + 72) = v49;
  *(a4 + 80) = v16;
  *(a4 + 88) = v50;
  *(a4 + 96) = v44;
  __swift_destroy_boxed_opaque_existential_1(v64);
}

uint64_t sub_24F7FED5C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_24F7FEDCC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ComponentGridView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24F7FEE34(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
  }

  return result;
}

void sub_24F7FEE40(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for ComponentGridView() - 8);
  v6 = *(v2 + 16);
  v7 = (v2 + ((*(v5 + 80) + 24) & ~*(v5 + 80)));

  sub_24F7FE9F8(a1, v6, v7, a2);
}

unint64_t sub_24F7FEEC4()
{
  result = qword_27F251790;
  if (!qword_27F251790)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F251788);
    sub_24E602068(&qword_27F251798, &qword_27F2517A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F251790);
  }

  return result;
}

unint64_t sub_24F7FEF74()
{
  result = qword_27F2517A8;
  if (!qword_27F2517A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F251768);
    sub_24E602068(&qword_27F2517B0, &qword_27F2517B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2517A8);
  }

  return result;
}

unint64_t sub_24F7FF02C()
{
  result = qword_27F2517C0;
  if (!qword_27F2517C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F251758);
    sub_24E602068(&qword_27F2517C8, &qword_27F2517D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2517C0);
  }

  return result;
}

uint64_t sub_24F7FF0EC@<X0>(uint64_t a1@<X8>)
{
  v53 = a1;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F251828);
  MEMORY[0x28223BE20](v48);
  v49 = &v44 - v2;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F251830);
  MEMORY[0x28223BE20](v56);
  v51 = &v44 - v3;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F251838);
  v46 = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v45 = &v44 - v4;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F251840);
  v47 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v6 = &v44 - v5;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F251848);
  MEMORY[0x28223BE20](v54);
  v8 = &v44 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F251850);
  MEMORY[0x28223BE20](v9);
  v11 = &v44 - v10;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F251858);
  MEMORY[0x28223BE20](v55);
  v13 = &v44 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F251860);
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v44 - v16;
  sub_24E615E00(v1 + 16, v64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E00);
  if (swift_dynamicCast())
  {
    v18 = *(v1 + 8);
    v19 = *(v1 + 56);
    v20 = *(v1 + 64);
    v21 = *(v1 + 72);
    v57 = *v1;
    v58 = v18;
    LOBYTE(v59) = v63;
    v60 = v19;
    v61 = v20;
    v62 = v21;
    v22 = sub_24F804394();
    sub_24F9265C8();
    (*(v15 + 16))(v11, v17, v14);
    swift_storeEnumTagMultiPayload();
    v57 = &type metadata for ComponentGridRowSegmentOneColumnSpanView;
    v58 = v22;
    swift_getOpaqueTypeConformance2();
    v23 = sub_24F8043E8();
    v57 = &type metadata for ComponentGridRowSegmentTwoColumnSpanView;
    v58 = v23;
    swift_getOpaqueTypeConformance2();
    sub_24F924E28();
    sub_24E60169C(v13, v8, &qword_27F251858);
    swift_storeEnumTagMultiPayload();
    sub_24F8042B4();
    sub_24F80443C();
    sub_24F924E28();
    sub_24E601704(v13, &qword_27F251858);
    (*(v15 + 8))(v17, v14);
  }

  else
  {
    v44 = v14;
    v24 = v52;
    if (swift_dynamicCast())
    {
      v25 = *(v1 + 8);
      v26 = *(v1 + 56);
      v27 = *(v1 + 64);
      v28 = *(v1 + 72);
      v57 = *v1;
      v58 = v25;
      LOWORD(v59) = v63;
      BYTE2(v59) = BYTE2(v63);
      v60 = v26;
      v61 = v27;
      v62 = v28;
      v29 = sub_24F8043E8();
      sub_24F9265C8();
      v30 = v47;
      (*(v47 + 16))(v11, v6, v24);
      swift_storeEnumTagMultiPayload();
      v31 = sub_24F804394();
      v57 = &type metadata for ComponentGridRowSegmentOneColumnSpanView;
      v58 = v31;
      swift_getOpaqueTypeConformance2();
      v57 = &type metadata for ComponentGridRowSegmentTwoColumnSpanView;
      v58 = v29;
      swift_getOpaqueTypeConformance2();
      sub_24F924E28();
      sub_24E60169C(v13, v8, &qword_27F251858);
      swift_storeEnumTagMultiPayload();
      sub_24F8042B4();
      sub_24F80443C();
      sub_24F924E28();
      sub_24E601704(v13, &qword_27F251858);
      (*(v30 + 8))(v6, v24);
    }

    else if (swift_dynamicCast())
    {
      v32 = *(v1 + 8);
      v33 = *(v1 + 56);
      v34 = *(v1 + 64);
      v35 = *(v1 + 72);
      v57 = *v1;
      v58 = v32;
      v59 = v63;
      v60 = v33;
      v61 = v34;
      v62 = v35;
      v36 = sub_24F804260();
      v37 = v45;
      sub_24F9265C8();
      v38 = v46;
      v39 = v50;
      (*(v46 + 16))(v49, v37, v50);
      swift_storeEnumTagMultiPayload();
      v57 = &type metadata for ComponentGridRowSegmentThreeColumnSpanView;
      v58 = v36;
      swift_getOpaqueTypeConformance2();
      v40 = v51;
      sub_24F924E28();
      sub_24E60169C(v40, v8, &qword_27F251830);
      swift_storeEnumTagMultiPayload();
      sub_24F8042B4();
      sub_24F80443C();
      sub_24F924E28();

      sub_24E601704(v40, &qword_27F251830);
      (*(v38 + 8))(v37, v39);
    }

    else
    {
      swift_storeEnumTagMultiPayload();
      v41 = sub_24F804260();
      v57 = &type metadata for ComponentGridRowSegmentThreeColumnSpanView;
      v58 = v41;
      swift_getOpaqueTypeConformance2();
      v42 = v51;
      sub_24F924E28();
      sub_24E60169C(v42, v8, &qword_27F251830);
      swift_storeEnumTagMultiPayload();
      sub_24F8042B4();
      sub_24F80443C();
      sub_24F924E28();
      sub_24E601704(v42, &qword_27F251830);
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v64);
}

void sub_24F7FFA4C(uint64_t a1@<X8>)
{
  v2 = v1;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2519E8);
  MEMORY[0x28223BE20](v83);
  v82 = (&v79 - v4);
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2519F0);
  MEMORY[0x28223BE20](v99);
  v84 = &v79 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2519F8);
  MEMORY[0x28223BE20](v6);
  v8 = &v79 - v7;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F251A00);
  MEMORY[0x28223BE20](v96);
  v97 = &v79 - v9;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F251A08);
  MEMORY[0x28223BE20](v102);
  v98 = &v79 - v10;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F251910);
  MEMORY[0x28223BE20](v92);
  v12 = &v79 - v11;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F251918);
  v94 = *(v95 - 8);
  MEMORY[0x28223BE20](v95);
  v80 = &v79 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v90 = &v79 - v15;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F251920);
  MEMORY[0x28223BE20](v93);
  v17 = &v79 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v79 - v19;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F251928);
  MEMORY[0x28223BE20](v100);
  v22 = &v79 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v81 = &v79 - v24;
  MEMORY[0x28223BE20](v25);
  v27 = &v79 - v26;
  MEMORY[0x28223BE20](v28);
  v91 = &v79 - v29;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F251A10);
  MEMORY[0x28223BE20](v103);
  v101 = &v79 - v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F251A18);
  MEMORY[0x28223BE20](v31);
  v34 = &v79 - v33;
  v35 = *(*v2 + 16);
  v36 = *(v2 + 24);
  v37 = __OFSUB__(v35, v36);
  v38 = v35 - v36;
  if (v37)
  {
    __break(1u);
    return;
  }

  v39 = *(v2 + 16);
  v40 = 3;
  if (v39 != 4)
  {
    v40 = 1;
  }

  if (v39 == 3)
  {
    v40 = 2;
  }

  if (v40 >= v38)
  {
    v40 = v38;
  }

  if (v38 <= 0)
  {
    swift_storeEnumTagMultiPayload();
    sub_24F804FBC();
    sub_24F924E28();
    return;
  }

  v87 = v6;
  v41 = v40 & ~(v40 >> 63);
  v42 = *(v2 + 32);
  v86 = v34;
  v85 = v32;
  if (v42)
  {
    LOBYTE(v39) = sub_24E843D68(v41, &type metadata for OneColumnGroup, &off_2861D1EC8, v39);
  }

  v89 = a1;
  v88 = v8;
  if (v39 <= 1u)
  {
    if (v39)
    {
      v53 = 3;
    }

    else
    {
      v53 = 1;
    }

    goto LABEL_21;
  }

  if (v39 == 2)
  {
    v53 = 0;
LABEL_21:
    v68 = sub_24F924C98();
    v69 = *(v2 + 8);
    *v12 = v68;
    *(v12 + 1) = v69;
    v12[16] = 0;
    v84 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2519C8) + 44);
    *&v104 = 0;
    *(&v104 + 1) = v41 - 1;
    swift_getKeyPath();
    v70 = swift_allocObject();
    v71 = *(v2 + 16);
    *(v70 + 16) = *v2;
    *(v70 + 32) = v71;
    *(v70 + 48) = *(v2 + 32);
    *(v70 + 64) = v53;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223908);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2519D0);
    sub_24F804C14(&qword_27F223918, &qword_27F223908);
    sub_24F804C84();
    sub_24F927228();
    sub_24E602068(&qword_27F251960, &qword_27F251910);
    v72 = v90;
    sub_24F9265C8();
    sub_24E601704(v12, &qword_27F251910);
    sub_24F9275F8();
    sub_24F9242E8();
    (*(v94 + 32))(v20, v72, v95);
    v73 = &v20[*(v93 + 36)];
    v74 = v109;
    *(v73 + 4) = v108;
    *(v73 + 5) = v74;
    *(v73 + 6) = v110;
    v75 = v105;
    *v73 = v104;
    *(v73 + 1) = v75;
    v76 = v107;
    *(v73 + 2) = v106;
    *(v73 + 3) = v76;
    sub_24F927618();
    sub_24F9238C8();
    sub_24E6009C8(v20, v27, &qword_27F251920);
    v77 = &v27[*(v100 + 36)];
    v78 = v112;
    *v77 = v111;
    *(v77 + 1) = v78;
    *(v77 + 2) = v113;
    v51 = &qword_27F251928;
    v48 = v91;
    sub_24E6009C8(v27, v91, &qword_27F251928);
    sub_24E60169C(v48, v97, &qword_27F251928);
    swift_storeEnumTagMultiPayload();
    sub_24F8047E0();
    sub_24F804EC0();
    v52 = v98;
    goto LABEL_22;
  }

  if (v39 == 3)
  {
    v43 = *(v2 + 8);
    v44 = sub_24F9249A8();
    v45 = v82;
    *v82 = v44;
    *(v45 + 8) = v43;
    *(v45 + 16) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F251A40);
    *&v104 = 0;
    *(&v104 + 1) = v41 - 1;
    swift_getKeyPath();
    v46 = swift_allocObject();
    v47 = *(v2 + 16);
    v46[1] = *v2;
    v46[2] = v47;
    v46[3] = *(v2 + 32);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223908);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F251A48);
    sub_24F804C14(&qword_27F223918, &qword_27F223908);
    sub_24F805050();
    sub_24F927228();
    sub_24E602068(&qword_27F251A30, &qword_27F2519E8);
    v48 = v84;
    sub_24F9265C8();
    sub_24E601704(v45, &qword_27F2519E8);
    sub_24F927628();
    sub_24F9238C8();
    v49 = (v48 + *(v99 + 36));
    v50 = v105;
    *v49 = v104;
    v49[1] = v50;
    v49[2] = v106;
    v51 = &qword_27F2519F0;
    sub_24E60169C(v48, v97, &qword_27F2519F0);
    swift_storeEnumTagMultiPayload();
    sub_24F8047E0();
    sub_24F804EC0();
    v52 = v98;
LABEL_22:
    sub_24F924E28();
    sub_24E60169C(v52, v88, &qword_27F251A08);
    swift_storeEnumTagMultiPayload();
    sub_24F804E34();
    v66 = v101;
    sub_24F924E28();
    sub_24E601704(v52, &qword_27F251A08);
    v67 = v48;
    goto LABEL_23;
  }

  v54 = sub_24F924C98();
  v55 = *(v2 + 8);
  *v12 = v54;
  *(v12 + 1) = v55;
  v12[16] = 0;
  v99 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2519C8) + 44);
  *&v104 = 0;
  *(&v104 + 1) = v41 - 1;
  swift_getKeyPath();
  v56 = swift_allocObject();
  v57 = *(v2 + 16);
  v56[1] = *v2;
  v56[2] = v57;
  v56[3] = *(v2 + 32);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223908);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2519D0);
  sub_24F804C14(&qword_27F223918, &qword_27F223908);
  sub_24F804C84();
  sub_24F927228();
  sub_24E602068(&qword_27F251960, &qword_27F251910);
  v58 = v80;
  sub_24F9265C8();
  sub_24E601704(v12, &qword_27F251910);
  sub_24F9275F8();
  sub_24F9242E8();
  (*(v94 + 32))(v17, v58, v95);
  v59 = &v17[*(v93 + 36)];
  v60 = v109;
  *(v59 + 4) = v108;
  *(v59 + 5) = v60;
  *(v59 + 6) = v110;
  v61 = v105;
  *v59 = v104;
  *(v59 + 1) = v61;
  v62 = v107;
  *(v59 + 2) = v106;
  *(v59 + 3) = v62;
  sub_24F927618();
  sub_24F9238C8();
  sub_24E6009C8(v17, v22, &qword_27F251920);
  v63 = &v22[*(v100 + 36)];
  v64 = v112;
  *v63 = v111;
  *(v63 + 1) = v64;
  *(v63 + 2) = v113;
  v51 = &qword_27F251928;
  v65 = v81;
  sub_24E6009C8(v22, v81, &qword_27F251928);
  sub_24E60169C(v65, v88, &qword_27F251928);
  swift_storeEnumTagMultiPayload();
  sub_24F804E34();
  sub_24F8047E0();
  v66 = v101;
  sub_24F924E28();
  v67 = v65;
LABEL_23:
  sub_24E601704(v67, v51);
  sub_24E60169C(v66, v86, &qword_27F251A10);
  swift_storeEnumTagMultiPayload();
  sub_24F804FBC();
  sub_24F924E28();
  sub_24E601704(v66, &qword_27F251A10);
}
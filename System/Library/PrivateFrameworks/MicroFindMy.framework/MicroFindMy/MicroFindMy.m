uint64_t sub_258FB02A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_258FC4054();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_258FB0368(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_258FC4054();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_258FB0520(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 48))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_258FB0540(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
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

  *(result + 48) = v3;
  return result;
}

void type metadata accessor for TransportError()
{
  if (!qword_27F999028)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_27F999028);
    }
  }
}

uint64_t EncryptedLocation.encryptedLocation.getter()
{
  v1 = *(v0 + 16);
  sub_258FB061C(v1, *(v0 + 24));
  return v1;
}

uint64_t sub_258FB061C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_258FB0698(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 32))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 24) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 24) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_258FB06EC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 13;
    *(result + 8) = 0;
    if (a3 >= 0xD)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 16) = 0;
      *(result + 24) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_258FB0768(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_258FB07B0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t MicroFindMyInterface.Error.hashValue.getter()
{
  v1 = *v0;
  sub_258FC4524();
  MEMORY[0x259C9FD70](v1);
  return sub_258FC4544();
}

uint64_t sub_258FB08A0()
{
  v1 = *v0;
  sub_258FC4524();
  MEMORY[0x259C9FD70](v1);
  return sub_258FC4544();
}

uint64_t sub_258FB08E8()
{
  v1 = *v0;
  sub_258FC4524();
  MEMORY[0x259C9FD70](v1);
  return sub_258FC4544();
}

unint64_t sub_258FB0930()
{
  result = qword_27F999030;
  if (!qword_27F999030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F999030);
  }

  return result;
}

uint64_t _s5ErrorOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
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

  return (v8 + 1);
}

uint64_t _s5ErrorOwst(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t Identifier.keyId.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t Identifier.findMyId.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

MicroFindMy::Identifier __swiftcall Identifier.init(keyId:findMyId:)(Swift::String keyId, Swift::String findMyId)
{
  *v2 = keyId;
  v2[1] = findMyId;
  result.findMyId = findMyId;
  result.keyId = keyId;
  return result;
}

uint64_t sub_258FB0B6C()
{
  if (*v0)
  {
    result = 0x6449794D646E6966;
  }

  else
  {
    result = 0x644979656BLL;
  }

  *v0;
  return result;
}

uint64_t sub_258FB0BA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x644979656BLL && a2 == 0xE500000000000000;
  if (v6 || (sub_258FC44B4() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6449794D646E6966 && a2 == 0xE800000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_258FC44B4();

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

uint64_t sub_258FB0C94(uint64_t a1)
{
  v2 = sub_258FB0F2C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_258FB0CD0(uint64_t a1)
{
  v2 = sub_258FB0F2C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Identifier.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F999038, &qword_258FC4CC8);
  v4 = *(v3 - 8);
  v5 = (*(v4 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v7 = v14 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = v1[2];
  v14[1] = v1[3];
  v14[2] = v10;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_258FB0F2C();
  sub_258FC4564();
  v16 = 0;
  v12 = v14[3];
  sub_258FC4454();
  if (!v12)
  {
    v15 = 1;
    sub_258FC4454();
  }

  return (*(v4 + 8))(v7, v3);
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

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_258FB0F2C()
{
  result = qword_27F999040;
  if (!qword_27F999040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F999040);
  }

  return result;
}

uint64_t Identifier.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F999048, &qword_258FC4CD0);
  v6 = *(v5 - 8);
  v7 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v9 = &v18 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_258FB0F2C();
  sub_258FC4554();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v21 = 0;
  v11 = sub_258FC4404();
  v13 = v12;
  v19 = v11;
  v20 = 1;
  v14 = sub_258FC4404();
  v16 = v15;
  (*(v6 + 8))(v9, v5);
  *a2 = v19;
  a2[1] = v13;
  a2[2] = v14;
  a2[3] = v16;

  __swift_destroy_boxed_opaque_existential_1(a1);
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

uint64_t sub_258FB11FC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_258FB1244(uint64_t result, int a2, int a3)
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

unint64_t sub_258FB12A8()
{
  result = qword_27F999050;
  if (!qword_27F999050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F999050);
  }

  return result;
}

unint64_t sub_258FB1300()
{
  result = qword_27F999058;
  if (!qword_27F999058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F999058);
  }

  return result;
}

unint64_t sub_258FB1358()
{
  result = qword_27F999060;
  if (!qword_27F999060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F999060);
  }

  return result;
}

MicroFindMy::Location __swiftcall Location.init(latitude:longitude:horizontalAccuracy:timestamp:)(Swift::Double latitude, Swift::Double longitude, Swift::Double horizontalAccuracy, Swift::Double timestamp)
{
  *v4 = latitude;
  v4[1] = longitude;
  v4[2] = horizontalAccuracy;
  v4[3] = timestamp;
  result.timestamp = timestamp;
  result.horizontalAccuracy = horizontalAccuracy;
  result.longitude = longitude;
  result.latitude = latitude;
  return result;
}

unint64_t sub_258FB13D8()
{
  v1 = 0x656475746974616CLL;
  v2 = 0xD000000000000012;
  if (*v0 != 2)
  {
    v2 = 0x6D617473656D6974;
  }

  if (*v0)
  {
    v1 = 0x64757469676E6F6CLL;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_258FB1464@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_258FB1F54(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_258FB1498(uint64_t a1)
{
  v2 = sub_258FB16E4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_258FB14D4(uint64_t a1)
{
  v2 = sub_258FB16E4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Location.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F999068, &qword_258FC4E90);
  v5 = *(v4 - 8);
  v6 = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v8 = &v15[-v7];
  v10 = *v1;
  v9 = v1[1];
  v12 = v1[2];
  v11 = v1[3];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_258FB16E4();
  sub_258FC4564();
  v15[15] = 0;
  sub_258FC4474();
  if (!v2)
  {
    v15[14] = 1;
    sub_258FC4474();
    v15[13] = 2;
    sub_258FC4474();
    v15[12] = 3;
    sub_258FC4474();
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_258FB16E4()
{
  result = qword_27F999070;
  if (!qword_27F999070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F999070);
  }

  return result;
}

uint64_t Location.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F999078, &qword_258FC4E98);
  v6 = *(v5 - 8);
  v7 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v9 = &v20 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_258FB16E4();
  sub_258FC4554();
  if (!v2)
  {
    v24 = 0;
    sub_258FC4424();
    v12 = v11;
    v23 = 1;
    sub_258FC4424();
    v14 = v13;
    v22 = 2;
    sub_258FC4424();
    v17 = v16;
    v21 = 3;
    sub_258FC4424();
    v19 = v18;
    (*(v6 + 8))(v9, v5);
    *a2 = v12;
    a2[1] = v14;
    a2[2] = v17;
    a2[3] = v19;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_258FB195C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_258FB197C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 32) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for Location.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for Location.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_258FB1B0C()
{
  result = qword_27F999080;
  if (!qword_27F999080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F999080);
  }

  return result;
}

unint64_t sub_258FB1B64()
{
  result = qword_27F999088;
  if (!qword_27F999088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F999088);
  }

  return result;
}

unint64_t sub_258FB1BBC()
{
  result = qword_27F999090;
  if (!qword_27F999090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F999090);
  }

  return result;
}

uint64_t sub_258FB1C10@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = *(result + 32);
  if (v3)
  {
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  else
  {
    v5 = *(result + 16);
    v4 = *(result + 24);
    v7 = *result;
    v6 = *(result + 8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F999098, &qword_258FC5038);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_258FC4E80;
    sub_258FC43B4();

    v9 = sub_258FC4304();
    MEMORY[0x259C9FB70](v9);

    v10 = MEMORY[0x277D837D0];
    *(v8 + 56) = MEMORY[0x277D837D0];
    *(v8 + 32) = 0xD000000000000015;
    *(v8 + 40) = 0x8000000258FC6C30;
    sub_258FC4514();

    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_258FC4E80;
    MEMORY[0x259C9FB70](0x203A2074616CLL, 0xE600000000000000);
    sub_258FC4364();
    *(v11 + 56) = v10;
    *(v11 + 32) = 0;
    *(v11 + 40) = 0xE000000000000000;
    sub_258FC4514();

    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_258FC4E80;
    MEMORY[0x259C9FB70](0x203A676E6F6CLL, 0xE600000000000000);
    sub_258FC4364();
    *(v12 + 56) = v10;
    *(v12 + 32) = 0;
    *(v12 + 40) = 0xE000000000000000;
    sub_258FC4514();

    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_258FC4E80;
    MEMORY[0x259C9FB70](0x203A63636168, 0xE600000000000000);
    sub_258FC4364();
    *(v13 + 56) = v10;
    *(v13 + 32) = 0;
    *(v13 + 40) = 0xE000000000000000;
    sub_258FC4514();

    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_258FC4E80;
    MEMORY[0x259C9FB70](0x203A656D6974, 0xE600000000000000);
    sub_258FC4364();
    *(v14 + 56) = v10;
    *(v14 + 32) = 0;
    *(v14 + 40) = 0xE000000000000000;
    sub_258FC4514();

    *a2 = v7;
    *(a2 + 8) = v6;
    *(a2 + 16) = v5;
    *(a2 + 24) = v4;
  }

  *(a2 + 32) = v3 & 1;
  return result;
}

uint64_t sub_258FB1F54(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656475746974616CLL && a2 == 0xE800000000000000;
  if (v4 || (sub_258FC44B4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x64757469676E6F6CLL && a2 == 0xE900000000000065 || (sub_258FC44B4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000258FC6C10 == a2 || (sub_258FC44B4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6D617473656D6974 && a2 == 0xE900000000000070)
  {

    return 3;
  }

  else
  {
    v6 = sub_258FC44B4();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_258FB20CC()
{
  v0 = sub_258FC40E4();
  __swift_allocate_value_buffer(v0, qword_27F99A718);
  __swift_project_value_buffer(v0, qword_27F99A718);
  return sub_258FC40D4();
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

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

void MicroFindMyInterface.init()(uint64_t *a1@<X8>)
{
  v3 = sub_258FC4244();
  v4 = *(v3 - 8);
  v5 = v4[8];
  v7 = MEMORY[0x28223BE20](v3, v6);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v7, v10);
  v13 = &v37 - v12;
  MEMORY[0x28223BE20](v11, v14);
  v16 = &v37 - v15;
  if (_s11MicroFindMy0abC9InterfaceV11isSupportedSbvgZ_0())
  {
    sub_258FB76D8();
    if (v1)
    {
      return;
    }

    sub_258FB8E7C(v16);
    v17 = v4[2];
    v42 = 0;
    v17(v13, v16, v3);
    type metadata accessor for MicroFindMyService.Service();
    v18 = swift_allocObject();
    v17(v9, v13, v3);
    v19 = sub_258FC4284();
    v20 = *(v19 + 48);
    v21 = *(v19 + 52);
    swift_allocObject();
    v22 = sub_258FC4274();
    v23 = v4[1];
    v23(v13, v3);
    *(v18 + 16) = v22;

    v24 = v42;
    v25 = sub_258FB91EC();
    if (v24)
    {

      v23(v16, v3);

      return;
    }

    v30 = v25;
    v41 = v23;

    v43 = v30;
    v40 = sub_258FC4304();
    v32 = v31;
    if (qword_27F999020 != -1)
    {
      swift_once();
    }

    v33 = sub_258FC40E4();
    __swift_project_value_buffer(v33, qword_27F99A718);

    v42 = sub_258FC40C4();
    v34 = sub_258FC4374();

    v39 = v34;
    if (os_log_type_enabled(v42, v34))
    {
      v35 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v43 = v38;
      *v35 = 136315138;
      v40 = sub_258FB630C(v40, v32, &v43);

      *(v35 + 4) = v40;
      _os_log_impl(&dword_258FAF000, v42, v39, "capabilities: %s", v35, 0xCu);
      v36 = v38;
      __swift_destroy_boxed_opaque_existential_1(v38);
      MEMORY[0x259CA0250](v36, -1, -1);
      MEMORY[0x259CA0250](v35, -1, -1);
    }

    else
    {
    }

    v41(v16, v3);
  }

  else
  {
    if (qword_27F999020 != -1)
    {
      swift_once();
    }

    v26 = sub_258FC40E4();
    __swift_project_value_buffer(v26, qword_27F99A718);
    v27 = sub_258FC40C4();
    v28 = sub_258FC4374();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&dword_258FAF000, v27, v28, "AOP2 not supported on this platform.", v29, 2u);
      MEMORY[0x259CA0250](v29, -1, -1);
    }

    v30 = 0;
    v18 = 0;
  }

  *a1 = v30;
  a1[1] = v18;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> MicroFindMyInterface.set(configuration:)(MicroFindMy::MicroFindMyInterface::Configuration configuration)
{
  if ((*v1 & 1) == 0)
  {
    v2 = sub_258FC3F94();
    sub_258FB8D9C(&qword_27F9990A0, MEMORY[0x277D08938]);
    swift_allocError();
    (*(*(v2 - 8) + 104))(v3, *MEMORY[0x277D08928], v2);
    swift_willThrow();
    return;
  }

  activeDurationInSeconds = configuration.activeDurationInSeconds;
  v5 = *configuration.activeDurationInSeconds;
  if (v5 > 0x7FFFFFFF)
  {
    __break(1u);
    goto LABEL_14;
  }

  v6 = activeDurationInSeconds[1];
  if (v6 > 0x7FFFFFFF)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v7 = activeDurationInSeconds[2];
  if (v7 > 0x7FFFFFFF)
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v5 < 0xFFFFFFFF80000000)
  {
    goto LABEL_16;
  }

  if (v6 < 0xFFFFFFFF80000000)
  {
    goto LABEL_16;
  }

  if (v7 < 0xFFFFFFFF80000000)
  {
    goto LABEL_16;
  }

  v8 = activeDurationInSeconds[3];
  if (v8 < 0xFFFFFFFF80000000)
  {
    goto LABEL_16;
  }

  if (v8 > 0x7FFFFFFF)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (*(v1 + 8))
  {
    sub_258FB95BC(v5 | (v6 << 32), v7 | (v8 << 32));
    return;
  }

LABEL_18:
  __break(1u);
}

MicroFindMy::MicroFindMyInterface::Configuration __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> MicroFindMyInterface.configuration()()
{
  if (*v3)
  {
    if (*(v3 + 8))
    {
      v9 = v2;
      v0 = sub_258FB9A5C();
      if (!v4)
      {
        *v9 = v0;
        v9[1] = v0 >> 32;
        v9[2] = v1;
        v9[3] = v1 >> 32;
      }
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v5 = sub_258FC3F94();
    sub_258FB8D9C(&qword_27F9990A0, MEMORY[0x277D08938]);
    swift_allocError();
    (*(*(v5 - 8) + 104))(v6, *MEMORY[0x277D08928], v5);
    v0 = swift_willThrow();
  }

  result.minimumTimeBetweenPublishInSeconds = v8;
  result.distanceThresholdInMeters = v7;
  result.timeThresholdInSeconds = v1;
  result.activeDurationInSeconds = v0;
  return result;
}

MicroFindMy::MicroFindMyInterface::Configuration __swiftcall MicroFindMyInterface.Configuration.init(activeDurationInSeconds:timeThresholdInSeconds:distanceThresholdInMeters:minimumTimeBetweenPublishInSeconds:)(Swift::Int activeDurationInSeconds, Swift::Int timeThresholdInSeconds, Swift::Int distanceThresholdInMeters, Swift::Int minimumTimeBetweenPublishInSeconds)
{
  *v4 = activeDurationInSeconds;
  v4[1] = timeThresholdInSeconds;
  v4[2] = distanceThresholdInMeters;
  v4[3] = minimumTimeBetweenPublishInSeconds;
  result.minimumTimeBetweenPublishInSeconds = minimumTimeBetweenPublishInSeconds;
  result.distanceThresholdInMeters = distanceThresholdInMeters;
  result.timeThresholdInSeconds = timeThresholdInSeconds;
  result.activeDurationInSeconds = activeDurationInSeconds;
  return result;
}

uint64_t MicroFindMyInterface.set(endpointConfiguration:)(uint64_t a1)
{
  My = type metadata accessor for MicroFindMyInterface.EndpointConfiguration();
  v5 = *(My - 1);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](My, v7);
  v9 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9990A8, &qword_258FC5050);
  v11 = *(*(v10 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v10 - 8, v12);
  v15 = &v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v16);
  v18 = &v53 - v17;
  if (*v1)
  {
    v22 = *(v1 + 8);
    sub_258FB7BDC(a1, &v53 - v17);
    v23 = *(v5 + 48);
    v24 = v23(v18, 1, My);
    v56 = v2;
    v64 = v22;
    if (v24 == 1)
    {
      sub_258FB8CC8(v18, &qword_27F9990A8, &qword_258FC5050);
    }

    else
    {
      v25 = *&v18[My[12]];

      sub_258FB7CB0(v18);
      if (v25[2])
      {
        v27 = v25[4];
        v26 = v25[5];
      }
    }

    sub_258FB7BDC(a1, v15);
    if (v23(v15, 1, My) == 1)
    {
      result = sub_258FB8CC8(v15, &qword_27F9990A8, &qword_258FC5050);
      v28 = 0;
      v29 = 0;
      v30 = 0;
      v57 = 0u;
      v58 = 0u;
      v59 = 0u;
    }

    else
    {
      sub_258FB7C4C(v15, v9);
      sub_258FC4034();
      v55 = sub_258FC4314();

      v31 = &v9[My[5]];
      v32 = *v31;
      v33 = *(v31 + 1);
      v54 = sub_258FC4314();
      v34 = &v9[My[6]];
      v35 = *v34;
      v36 = *(v34 + 1);
      v37 = sub_258FC4314();
      v38 = &v9[My[7]];
      v39 = *v38;
      v40 = *(v38 + 1);
      v41 = sub_258FC4314();
      v42 = &v9[My[8]];
      v43 = *v42;
      v44 = *(v42 + 1);
      v45 = sub_258FC4314();
      v46 = &v9[My[9]];
      v47 = *v46;
      v48 = *(v46 + 1);
      v49 = sub_258FC4314();
      v50 = &v9[My[10]];
      v51 = *v50;
      v52 = *(v50 + 1);
      v28 = sub_258FC4314();
      v29 = sub_258FC4314();
      v30 = v9[My[11]];
      result = sub_258FB7CB0(v9);
      *&v57 = v55;
      *(&v57 + 1) = v54;
      *&v58 = v37;
      *(&v58 + 1) = v41;
      *&v59 = v45;
      *(&v59 + 1) = v49;
    }

    *&v60 = v28;
    *(&v60 + 1) = v29;
    v61 = v30;
    v63 = v30;
    v62[0] = v57;
    v62[1] = v58;
    v62[2] = v59;
    v62[3] = v60;
    if (v64)
    {

      sub_258FB9DAC(v62);
      return sub_258FB8CC8(&v57, &qword_27F9990B0, &qword_258FC5058);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v19 = sub_258FC3F94();
    sub_258FB8D9C(&qword_27F9990A0, MEMORY[0x277D08938]);
    swift_allocError();
    (*(*(v19 - 8) + 104))(v20, *MEMORY[0x277D08928], v19);
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_258FB2CCC(uint64_t a1, unint64_t a2)
{
  v4 = sub_258FC40A4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  result = MEMORY[0x28223BE20](v4, v7);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v11 != 2)
    {
LABEL_12:
      sub_258FB8074(a1, a2);
      return MEMORY[0x277D84F90];
    }

    v14 = *(a1 + 16);
    v13 = *(a1 + 24);
    v12 = v13 - v14;
    if (!__OFSUB__(v13, v14))
    {
      if (v12)
      {
        goto LABEL_8;
      }

      goto LABEL_12;
    }

    __break(1u);
LABEL_15:
    __break(1u);
  }

  else
  {
    if (v11)
    {
      goto LABEL_10;
    }

    v12 = BYTE6(a2);
    if (!BYTE6(a2))
    {
      goto LABEL_12;
    }

LABEL_8:
    while (1)
    {
      v15 = sub_258FB674C(v12, 0);
      v16 = sub_258FC4064();
      sub_258FB8074(a1, a2);
      v17 = *(v5 + 8);
      v5 += 8;
      v17(v10, v4);
      result = v15;
      if (v16 == v12)
      {
        break;
      }

      __break(1u);
LABEL_10:
      v18 = HIDWORD(a1) - a1;
      if (__OFSUB__(HIDWORD(a1), a1))
      {
        goto LABEL_15;
      }

      v12 = v18;
      if (!v18)
      {
        goto LABEL_12;
      }
    }
  }

  return result;
}

void MicroFindMyInterface.endpointConfiguration()(char *a1@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9990B8, &qword_258FC5060);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8, v6);
  v8 = &v62 - v7;
  v9 = sub_258FC4054();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9, v12);
  v14 = &v62 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*v1 & 1) == 0)
  {
    v15 = sub_258FC3F94();
    sub_258FB8D9C(&qword_27F9990A0, MEMORY[0x277D08938]);
    swift_allocError();
    (*(*(v15 - 8) + 104))(v16, *MEMORY[0x277D08928], v15);
    swift_willThrow();
    return;
  }

  if (!*(v1 + 8))
  {
    __break(1u);
    return;
  }

  sub_258FBA3A8(v74);
  if (!v2)
  {
    if (!v74[0])
    {
LABEL_32:
      My = type metadata accessor for MicroFindMyInterface.EndpointConfiguration();
      (*(*(My - 8) + 56))(a1, 1, 1, My);
      return;
    }

    v76 = v74[3];
    v72 = v74[5];
    v73 = v74[4];
    v70 = v74[7];
    v71 = v74[6];
    v69 = v75;

    sub_258FB3440(v17);
    if (!v18)
    {
      goto LABEL_30;
    }

    sub_258FC4044();

    if ((*(v10 + 48))(v8, 1, v9) == 1)
    {
      sub_258FB8CC8(v74, &qword_27F9990B0, &qword_258FC5058);
      v19 = &qword_27F9990B8;
      v20 = &qword_258FC5060;
      v21 = v8;
LABEL_31:
      sub_258FB8CC8(v21, v19, v20);
      goto LABEL_32;
    }

    v68 = *(v10 + 32);
    v68(v14, v8, v9);

    v23 = sub_258FB3440(v22);
    if (!v24)
    {
      (*(v10 + 8))(v14, v9);
LABEL_30:
      v19 = &qword_27F9990B0;
      v20 = &qword_258FC5058;
      v21 = v74;
      goto LABEL_31;
    }

    v25 = v24;
    v26 = v23;

    v28 = sub_258FB3440(v27);
    if (!v29)
    {
      (*(v10 + 8))(v14, v9);
LABEL_29:

      goto LABEL_30;
    }

    v30 = v29;
    v67 = v28;

    v32 = sub_258FB3440(v31);
    if (v33)
    {
      v66 = v32;
      v76 = v33;

      v35 = sub_258FB3440(v34);
      if (v36)
      {
        v65 = v35;
        v73 = v36;

        v38 = sub_258FB3440(v37);
        if (v39)
        {
          v64 = v38;
          v72 = v39;

          v41 = sub_258FB3440(v40);
          if (v42)
          {
            v62 = v41;
            v63 = v42;
            v71 = v30;

            v44 = sub_258FB3440(v43);
            if (v45)
            {
              v46 = v45;
              v47 = HIBYTE(v45) & 0xF;
              if ((v45 & 0x2000000000000000) == 0)
              {
                v47 = v44 & 0xFFFFFFFFFFFFLL;
              }

              if (v47)
              {
                v70 = v44;
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9990C0, &qword_258FC5068);
                v48 = swift_allocObject();
                *(v48 + 16) = xmmword_258FC4E80;
                *(v48 + 32) = v70;
                *(v48 + 40) = v46;
              }

              else
              {

                v48 = MEMORY[0x277D84F90];
              }

              v68(a1, v14, v9);
              sub_258FB8CC8(v74, &qword_27F9990B0, &qword_258FC5058);
              v50 = type metadata accessor for MicroFindMyInterface.EndpointConfiguration();
              v51 = &a1[v50[5]];
              *v51 = v26;
              v51[1] = v25;
              v52 = &a1[v50[6]];
              v53 = v71;
              *v52 = v67;
              v52[1] = v53;
              v54 = &a1[v50[7]];
              v55 = v76;
              *v54 = v66;
              v54[1] = v55;
              v56 = &a1[v50[8]];
              v57 = v73;
              *v56 = v65;
              v56[1] = v57;
              v58 = &a1[v50[9]];
              v59 = v72;
              *v58 = v64;
              v58[1] = v59;
              v60 = &a1[v50[10]];
              v61 = v63;
              *v60 = v62;
              v60[1] = v61;
              *&a1[v50[12]] = v48;
              a1[v50[11]] = v69;
              (*(*(v50 - 1) + 56))(a1, 0, 1, v50);
              return;
            }

            (*(v10 + 8))(v14, v9);

            goto LABEL_28;
          }

          (*(v10 + 8))(v14, v9);
        }

        else
        {
          (*(v10 + 8))(v14, v9);
        }
      }

      else
      {
        (*(v10 + 8))(v14, v9);
      }
    }

    else
    {
      (*(v10 + 8))(v14, v9);
    }

LABEL_28:

    goto LABEL_29;
  }
}

uint64_t sub_258FB3440(uint64_t a1)
{
  v3 = sub_258FC42F4();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v6);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);

  v10 = sub_258FB6288(v9);
  if (v11)
  {
    v12 = v10;
  }

  else
  {
    v13 = *(a1 + 16);
    if (v13)
    {
      v1 = 0;
      while (*(a1 + v1 + 32))
      {
        if (v13 == ++v1)
        {
          goto LABEL_7;
        }
      }
    }

    else
    {
LABEL_7:
      sub_258FC43D4();
      __break(1u);
    }

    sub_258FC42C4();
    v14 = sub_258FC42E4();
    (*(v4 + 8))(v8, v3);
    v15 = [objc_allocWithZone(MEMORY[0x277CCACA8]) initWithBytes:a1 + 32 length:v1 encoding:v14];

    if (v15)
    {
      v12 = sub_258FC4294();
    }

    else
    {
      return 0;
    }
  }

  return v12;
}

int *MicroFindMyInterface.EndpointConfiguration.init(url:contextApp:authorization:mmeClientInfo:userAgent:timezone:udid:connectedWatches:useTestInstances:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16)
{
  v23 = sub_258FC4054();
  (*(*(v23 - 8) + 32))(a9, a1, v23);
  result = type metadata accessor for MicroFindMyInterface.EndpointConfiguration();
  v25 = (a9 + result[5]);
  *v25 = a2;
  v25[1] = a3;
  v26 = (a9 + result[6]);
  *v26 = a4;
  v26[1] = a5;
  v27 = (a9 + result[7]);
  *v27 = a6;
  v27[1] = a7;
  v28 = (a9 + result[8]);
  *v28 = a8;
  v28[1] = a10;
  v29 = (a9 + result[9]);
  *v29 = a11;
  v29[1] = a12;
  v30 = (a9 + result[10]);
  *v30 = a13;
  v30[1] = a14;
  *(a9 + result[12]) = a15;
  *(a9 + result[11]) = a16;
  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> MicroFindMyInterface.set(identifier:)(MicroFindMy::Identifier_optional *identifier)
{
  if ((*v1 & 1) == 0)
  {
    v2 = sub_258FC3F94();
    sub_258FB8D9C(&qword_27F9990A0, MEMORY[0x277D08938]);
    swift_allocError();
    (*(*(v2 - 8) + 104))(v3, *MEMORY[0x277D08928], v2);
    swift_willThrow();
    return;
  }

  v4 = *(v1 + 8);
  if (identifier->value.keyId._object)
  {
    countAndFlagsBits = identifier->value.keyId._countAndFlagsBits;
    v6 = identifier->value.findMyId._countAndFlagsBits;
    object = identifier->value.findMyId._object;
    v8 = sub_258FC4314();
    v9 = sub_258FC4314();
    if (v4)
    {
      sub_258FBA7E8(v8, v9);

      return;
    }

    __break(1u);
  }

  else if (v4)
  {
    sub_258FBA7E8(0, 0);
    return;
  }

  __break(1u);
}

uint64_t MicroFindMyInterface.set(pushToken:)(uint64_t result, unint64_t a2)
{
  if ((*v2 & 1) == 0)
  {
    v3 = sub_258FC3F94();
    sub_258FB8D9C(&qword_27F9990A0, MEMORY[0x277D08938]);
    swift_allocError();
    (*(*(v3 - 8) + 104))(v4, *MEMORY[0x277D08928], v3);
    return swift_willThrow();
  }

  v5 = *(v2 + 8);
  v6 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v6)
    {
      goto LABEL_12;
    }

    LODWORD(v7) = HIDWORD(result) - result;
    if (!__OFSUB__(HIDWORD(result), result))
    {
      v7 = v7;
      goto LABEL_10;
    }

    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v6 != 2)
  {
    goto LABEL_12;
  }

  v9 = *(result + 16);
  v8 = *(result + 24);
  v10 = __OFSUB__(v8, v9);
  v7 = v8 - v9;
  if (v10)
  {
    goto LABEL_15;
  }

LABEL_10:
  if (v7 > 256)
  {
    sub_258FB7D0C();
    swift_allocError();
    *v11 = 7;
    return swift_willThrow();
  }

LABEL_12:
  if (v5)
  {
    v12 = result;
    sub_258FB061C(result, a2);
    v14 = sub_258FB2CCC(v12, a2);
    sub_258FBAD98(v14);
  }

LABEL_16:
  __break(1u);
  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> MicroFindMyInterface.setLocation(location:)(MicroFindMy::Location_optional *location)
{
  if (*v1)
  {
    if (*(v1 + 8))
    {
      is_nil = location->is_nil;
      if (is_nil)
      {
        v5 = -1;
      }

      else
      {
        v5 = 0;
      }

      v6 = vdupq_n_s64(v5);
      v7 = vbicq_s8(*&location->value.latitude, v6);
      v8 = vbicq_s8(*&location->value.horizontalAccuracy, v6);
      v9[0] = v7;
      v9[1] = v8;
      v10 = is_nil;
      sub_258FBB230(v9);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v2 = sub_258FC3F94();
    sub_258FB8D9C(&qword_27F9990A0, MEMORY[0x277D08938]);
    swift_allocError();
    (*(*(v2 - 8) + 104))(v3, *MEMORY[0x277D08928], v2);
    swift_willThrow();
  }
}

void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> MicroFindMyInterface.location()(MicroFindMy::Location_optional *__return_ptr retstr)
{
  if (*v1)
  {
    if (*(v1 + 8))
    {
      sub_258FBB708(v6);
      if (!v2)
      {
        sub_258FB1C10(v6, retstr);
      }
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v3 = sub_258FC3F94();
    sub_258FB8D9C(&qword_27F9990A0, MEMORY[0x277D08938]);
    swift_allocError();
    (*(*(v3 - 8) + 104))(v4, *MEMORY[0x277D08928], v3);
    swift_willThrow();
  }
}

uint64_t MicroFindMyInterface.simulateRecievePush(payload:)(uint64_t result, unint64_t a2)
{
  if (*v2)
  {
    if (*(v2 + 8))
    {
      v5 = result;
      sub_258FB061C(result, a2);
      v7 = sub_258FB2CCC(v5, a2);
      sub_258FBBAEC(v7);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v3 = sub_258FC3F94();
    sub_258FB8D9C(&qword_27F9990A0, MEMORY[0x277D08938]);
    swift_allocError();
    (*(*(v3 - 8) + 104))(v4, *MEMORY[0x277D08928], v3);
    return swift_willThrow();
  }

  return result;
}

void MicroFindMyInterface.generatePushPayload()()
{
  if (*v0)
  {
    if (*(v0 + 8))
    {
      v4 = sub_258FBBF84();
      if (!v1)
      {
        sub_258FB7F18(v4);
      }
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v2 = sub_258FC3F94();
    sub_258FB8D9C(&qword_27F9990A0, MEMORY[0x277D08938]);
    swift_allocError();
    (*(*(v2 - 8) + 104))(v3, *MEMORY[0x277D08928], v2);
    swift_willThrow();
  }
}

uint64_t MicroFindMyInterface.set(publicKey:)(uint64_t result, unint64_t a2)
{
  if ((*v2 & 1) == 0)
  {
    v3 = sub_258FC3F94();
    sub_258FB8D9C(&qword_27F9990A0, MEMORY[0x277D08938]);
    swift_allocError();
    (*(*(v3 - 8) + 104))(v4, *MEMORY[0x277D08928], v3);
    return swift_willThrow();
  }

  v5 = *(v2 + 8);
  v6 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v6 == 2)
    {
      v8 = *(result + 16);
      v7 = *(result + 24);
      v9 = __OFSUB__(v7, v8);
      v10 = v7 - v8;
      if (v9)
      {
        __break(1u);
        goto LABEL_17;
      }

      if (v10 == 57)
      {
        goto LABEL_10;
      }
    }

LABEL_14:
    sub_258FB7D0C();
    swift_allocError();
    *v14 = 7;
    return swift_willThrow();
  }

  if (!v6)
  {
    if (BYTE6(a2) != 57)
    {
      goto LABEL_14;
    }

    goto LABEL_10;
  }

  if (!__OFSUB__(HIDWORD(result), result))
  {
    if (HIDWORD(result) - result != 57)
    {
      goto LABEL_14;
    }

LABEL_10:
    if (v5)
    {
      v11 = result;
      sub_258FB061C(result, a2);
      v13 = sub_258FB2CCC(v11, a2);
      sub_258FBC46C(v13);
    }

    goto LABEL_18;
  }

LABEL_17:
  __break(1u);
LABEL_18:
  __break(1u);
  return result;
}

uint64_t (*sub_258FB406C(uint64_t (*result)(void)))(void)
{
  if (*v1)
  {
    if (*(v1 + 8))
    {
      return result();
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v2 = sub_258FC3F94();
    sub_258FB8D9C(&qword_27F9990A0, MEMORY[0x277D08938]);
    swift_allocError();
    (*(*(v2 - 8) + 104))(v3, *MEMORY[0x277D08928], v2);
    return swift_willThrow();
  }

  return result;
}

uint64_t (*sub_258FB4178(uint64_t (*result)(void)))(void)
{
  if ((*v1 & 1) == 0)
  {
    v2 = sub_258FC3F94();
    sub_258FB8D9C(&qword_27F9990A0, MEMORY[0x277D08938]);
    swift_allocError();
    (*(*(v2 - 8) + 104))(v3, *MEMORY[0x277D08928], v2);
    v4 = swift_willThrow();
    return (v4 & 1);
  }

  if (*(v1 + 8))
  {
    v4 = result();
    return (v4 & 1);
  }

  __break(1u);
  return result;
}

void MicroFindMyInterface.set(uuid:)()
{
  if (*v0)
  {
    if (*(v0 + 8))
    {
      v3 = sub_258FC40B4();
      sub_258FBCFC8(v3);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v1 = sub_258FC3F94();
    sub_258FB8D9C(&qword_27F9990A0, MEMORY[0x277D08938]);
    swift_allocError();
    (*(*(v1 - 8) + 104))(v2, *MEMORY[0x277D08928], v1);
    swift_willThrow();
  }
}

void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> MicroFindMyInterface.getAnalytics()(MicroFindMy::Analytics *__return_ptr retstr)
{
  if (*v1)
  {
    if (*(v1 + 8))
    {
      v6 = sub_258FBD3B8();
      if (!v2)
      {
        retstr->locationsReceived = v6;
        retstr->pushesReceived = HIDWORD(v6);
        retstr->backgroundProactivePushesHandled = v7;
        retstr->locationPushesHandled = HIDWORD(v7);
        retstr->successfulReversePushes = v8;
        retstr->failedReversePushes = HIDWORD(v8);
      }
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v3 = sub_258FC3F94();
    sub_258FB8D9C(&qword_27F9990A0, MEMORY[0x277D08938]);
    swift_allocError();
    (*(*(v3 - 8) + 104))(v4, *MEMORY[0x277D08928], v3);
    swift_willThrow();
  }
}

uint64_t MicroFindMyInterface.encryptedLocationCatalog(sequence:)@<X0>(int a1@<W0>, void *a2@<X8>)
{
  v46[5] = *MEMORY[0x277D85DE8];
  if ((*v2 & 1) == 0)
  {
    v4 = sub_258FC3F94();
    sub_258FB8D9C(&qword_27F9990A0, MEMORY[0x277D08938]);
    swift_allocError();
    (*(*(v4 - 8) + 104))(v5, *MEMORY[0x277D08928], v4);
    result = swift_willThrow();
LABEL_31:
    v38 = *MEMORY[0x277D85DE8];
    return result;
  }

  if (*(v2 + 8))
  {
    result = sub_258FBD720(a1);
    if (!v3)
    {
      if (v7)
      {
        v39 = result;
        v42 = *(v7 + 16);
        if (v42)
        {
          v8 = v7;

          v9 = v8;
          v10 = 0;
          v11 = (v8 + 40);
          v12 = MEMORY[0x277D84F98];
          do
          {
            if (v10 >= *(v9 + 16))
            {
              __break(1u);
LABEL_33:
              __break(1u);
LABEL_34:
              __break(1u);
            }

            v13 = *(v11 - 1);
            v43 = *v11;
            v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9990D0, &qword_258FC5070);
            v46[3] = v14;
            v46[4] = sub_258FB7FC8();
            v46[0] = v13;
            v15 = __swift_project_boxed_opaque_existential_1(v46, v14);
            v16 = *v15;
            v17 = *(*v15 + 16);
            if (v17)
            {
              if (v17 <= 0xE)
              {
                memset(__dst, 0, sizeof(__dst));
                v45 = v17;
                memcpy(__dst, (v16 + 32), v17);
                v23 = *__dst;
                v24 = v41 & 0xF00000000000000 | *&__dst[8] | ((*&__dst[12] | (v45 << 16)) << 32);
                swift_bridgeObjectRetain_n();
                v41 = v24;
              }

              else
              {
                v18 = sub_258FC4024();
                v19 = *(v18 + 48);
                v20 = *(v18 + 52);
                swift_allocObject();
                swift_bridgeObjectRetain_n();
                v21 = sub_258FC3FE4();
                v22 = v21;
                if (v17 >= 0x7FFFFFFF)
                {
                  sub_258FC4084();
                  v23 = swift_allocObject();
                  *(v23 + 16) = 0;
                  *(v23 + 24) = v17;
                  v24 = v22 | 0x8000000000000000;
                }

                else
                {
                  v23 = v17 << 32;
                  v24 = v21 | 0x4000000000000000;
                }
              }
            }

            else
            {
              swift_bridgeObjectRetain_n();
              v23 = 0;
              v24 = 0xC000000000000000;
            }

            __swift_destroy_boxed_opaque_existential_1(v46);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v46[0] = v12;
            v27 = sub_258FB69F4(v23, v24);
            v28 = v12[2];
            v29 = (v26 & 1) == 0;
            v30 = v28 + v29;
            if (__OFADD__(v28, v29))
            {
              goto LABEL_33;
            }

            v31 = v26;
            if (v12[3] >= v30)
            {
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                sub_258FB7570();
              }
            }

            else
            {
              sub_258FB6A6C(v30, isUniquelyReferenced_nonNull_native);
              v32 = sub_258FB69F4(v23, v24);
              if ((v31 & 1) != (v33 & 1))
              {
                goto LABEL_36;
              }

              v27 = v32;
            }

            v12 = v46[0];
            if (v31)
            {
              *(*(v46[0] + 56) + 8 * v27) = v43;

              sub_258FB8074(v23, v24);
            }

            else
            {
              *(v46[0] + 8 * (v27 >> 6) + 64) |= 1 << v27;
              v34 = (v12[6] + 16 * v27);
              *v34 = v23;
              v34[1] = v24;
              *(v12[7] + 8 * v27) = v43;

              v35 = v12[2];
              v36 = __OFADD__(v35, 1);
              v37 = v35 + 1;
              if (v36)
              {
                goto LABEL_34;
              }

              v12[2] = v37;
            }

            ++v10;
            v11 += 2;
            v9 = v8;
          }

          while (v42 != v10);
          result = swift_bridgeObjectRelease_n();
        }

        else
        {

          v12 = MEMORY[0x277D84F98];
        }

        *a2 = v39;
        a2[1] = v12;
      }

      else
      {
        *a2 = 0;
        a2[1] = 0;
      }
    }

    goto LABEL_31;
  }

  __break(1u);
LABEL_36:
  result = sub_258FC44C4();
  __break(1u);
  return result;
}

uint64_t MicroFindMyInterface.encryptedLocation(for:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v8 = sub_258FC42F4();
  v9 = *(*(v8 - 8) + 64);
  result = MEMORY[0x28223BE20](v8 - 8, v10);
  v13 = v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*v3 & 1) == 0)
  {
    v14 = sub_258FC3F94();
    sub_258FB8D9C(&qword_27F9990A0, MEMORY[0x277D08938]);
    swift_allocError();
    (*(*(v14 - 8) + 104))(v15, *MEMORY[0x277D08928], v14);
    return swift_willThrow();
  }

  v16 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v16 != 2)
    {
      goto LABEL_18;
    }

    v18 = *(a1 + 16);
    v17 = *(a1 + 24);
    v19 = __OFSUB__(v17, v18);
    v20 = v17 - v18;
    if (!v19)
    {
      if (v20 == 32)
      {
        goto LABEL_10;
      }

      goto LABEL_18;
    }

    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (v16)
  {
    if (!__OFSUB__(HIDWORD(a1), a1))
    {
      if (HIDWORD(a1) - a1 == 32)
      {
        goto LABEL_10;
      }

LABEL_18:
      sub_258FB7D0C();
      swift_allocError();
      *v31 = 4;
      return swift_willThrow();
    }

    goto LABEL_24;
  }

  if (BYTE6(a2) != 32)
  {
    goto LABEL_18;
  }

LABEL_10:
  if (!*(v3 + 8))
  {
LABEL_25:
    __break(1u);
    return result;
  }

  v32[0] = a1;
  v32[1] = a2;
  sub_258FB80C8();
  v21 = sub_258FC3FD4();
  v22 = sub_258FBDB64(v21);
  v24 = v23;
  v26 = v25;

  if (!v4)
  {
    if (v26)
    {

      sub_258FC42C4();
      sub_258FB4B18(v26, v13);
      if (v27)
      {
        v28 = sub_258FC4074();
        v30 = v29;

        if (v30 >> 60 != 15)
        {
          *a3 = v22;
          a3[1] = v24;
          a3[2] = v28;
          a3[3] = v30;
          return result;
        }
      }

      else
      {
      }
    }

    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    a3[3] = 0xF000000000000000;
  }

  return result;
}

uint64_t sub_258FB4B18(uint64_t a1, char *a2)
{
  v4 = sub_258FC42F4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258FC42C4();
  v10 = sub_258FC42B4();
  v11 = *(v5 + 8);
  v11(v9, v4);
  if ((v10 & 1) == 0)
  {
    sub_258FC42D4();
    v12 = sub_258FC42B4();
    v11(v9, v4);
    if ((v12 & 1) == 0)
    {
      sub_258FC42A4();
      v13 = sub_258FC42B4();
      v11(v9, v4);
      if ((v13 & 1) == 0)
      {
        goto LABEL_10;
      }
    }
  }

  v15 = sub_258FB6288(v14);
  if (!v16)
  {
    goto LABEL_10;
  }

  v17 = v15;
  sub_258FC42C4();
  v18 = sub_258FC42B4();
  v11(v9, v4);
  if (v18)
  {

LABEL_17:
    v11(a2, v4);
    return v17;
  }

  if ((sub_258FC43A4() & 1) == 0)
  {

LABEL_10:
    v19 = *(a1 + 16);
    if (v19)
    {
      v9 = 0;
      while (v9[a1 + 32])
      {
        if (v19 == ++v9)
        {
          goto LABEL_14;
        }
      }
    }

    else
    {
LABEL_14:
      sub_258FC43D4();
      __break(1u);
    }

    v20 = [objc_allocWithZone(MEMORY[0x277CCACA8]) initWithBytes:a1 + 32 length:v9 encoding:sub_258FC42E4()];

    if (!v20)
    {
      v11(a2, v4);
      return 0;
    }

    v17 = sub_258FC4294();

    goto LABEL_17;
  }

  v11(a2, v4);

  return v17;
}

MicroFindMy::MicroFindMyInterface::Configuration __swiftcall MicroFindMyInterface.Configuration.init(activeDurationInSeconds:timeThresholdInSeconds:distanceThresholdInMeters:)(Swift::Int activeDurationInSeconds, Swift::Int timeThresholdInSeconds, Swift::Int distanceThresholdInMeters)
{
  *v3 = activeDurationInSeconds;
  v3[1] = timeThresholdInSeconds;
  v3[2] = distanceThresholdInMeters;
  v3[3] = 900;
  result.distanceThresholdInMeters = distanceThresholdInMeters;
  result.timeThresholdInSeconds = timeThresholdInSeconds;
  result.activeDurationInSeconds = activeDurationInSeconds;
  return result;
}

unint64_t sub_258FB4E2C()
{
  v1 = 0xD000000000000016;
  v2 = 0xD000000000000019;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000022;
  }

  if (!*v0)
  {
    v1 = 0xD000000000000017;
  }

  if (*v0 <= 1u)
  {
    result = v1;
  }

  else
  {
    result = v2;
  }

  *v0;
  return result;
}

uint64_t sub_258FB4EA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_258FB87EC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_258FB4EC8(uint64_t a1)
{
  v2 = sub_258FB811C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_258FB4F04(uint64_t a1)
{
  v2 = sub_258FB811C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MicroFindMyInterface.Configuration.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9990E8, &qword_258FC5078);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = v15 - v8;
  v11 = *v1;
  v10 = v1[1];
  v12 = v1[3];
  v15[2] = v1[2];
  v15[3] = v10;
  v15[1] = v12;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_258FB811C();
  sub_258FC4564();
  v19 = 0;
  sub_258FC4484();
  if (v2)
  {
    return (*(v5 + 8))(v9, v4);
  }

  v18 = 1;
  sub_258FC4484();
  v17 = 2;
  sub_258FC4484();
  v16 = 3;
  sub_258FC4484();
  return (*(v5 + 8))(v9, v4);
}

uint64_t MicroFindMyInterface.Configuration.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9990F8, &qword_258FC5080);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v16 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_258FB811C();
  sub_258FC4554();
  if (!v2)
  {
    v21 = 0;
    v12 = sub_258FC4434();
    v20 = 1;
    v13 = sub_258FC4434();
    v19 = 2;
    v17 = sub_258FC4434();
    v18 = 3;
    v16 = sub_258FC4434();
    (*(v6 + 8))(v10, v5);
    *a2 = v12;
    a2[1] = v13;
    v15 = v16;
    a2[2] = v17;
    a2[3] = v15;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t MicroFindMyInterface.EndpointConfiguration.url.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_258FC4054();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t MicroFindMyInterface.EndpointConfiguration.contextApp.getter()
{
  v1 = (v0 + *(type metadata accessor for MicroFindMyInterface.EndpointConfiguration() + 20));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t MicroFindMyInterface.EndpointConfiguration.authorization.getter()
{
  v1 = (v0 + *(type metadata accessor for MicroFindMyInterface.EndpointConfiguration() + 24));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t MicroFindMyInterface.EndpointConfiguration.mmeClientInfo.getter()
{
  v1 = (v0 + *(type metadata accessor for MicroFindMyInterface.EndpointConfiguration() + 28));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t MicroFindMyInterface.EndpointConfiguration.userAgent.getter()
{
  v1 = (v0 + *(type metadata accessor for MicroFindMyInterface.EndpointConfiguration() + 32));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t MicroFindMyInterface.EndpointConfiguration.timezone.getter()
{
  v1 = (v0 + *(type metadata accessor for MicroFindMyInterface.EndpointConfiguration() + 36));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t MicroFindMyInterface.EndpointConfiguration.udid.getter()
{
  v1 = (v0 + *(type metadata accessor for MicroFindMyInterface.EndpointConfiguration() + 40));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t MicroFindMyInterface.EndpointConfiguration.connectedWatches.getter()
{
  v1 = *(v0 + *(type metadata accessor for MicroFindMyInterface.EndpointConfiguration() + 48));
}

int *MicroFindMyInterface.EndpointConfiguration.init(url:contextApp:authorization:mmeClientInfo:userAgent:timezone:udid:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v21 = sub_258FC4054();
  (*(*(v21 - 8) + 32))(a9, a1, v21);
  result = type metadata accessor for MicroFindMyInterface.EndpointConfiguration();
  v23 = (a9 + result[5]);
  *v23 = a2;
  v23[1] = a3;
  v24 = (a9 + result[6]);
  *v24 = a4;
  v24[1] = a5;
  v25 = (a9 + result[7]);
  *v25 = a6;
  v25[1] = a7;
  v26 = (a9 + result[8]);
  *v26 = a8;
  v26[1] = a10;
  v27 = (a9 + result[9]);
  *v27 = a11;
  v27[1] = a12;
  v28 = (a9 + result[10]);
  *v28 = a13;
  v28[1] = a14;
  *(a9 + result[12]) = MEMORY[0x277D84F90];
  *(a9 + result[11]) = 0;
  return result;
}

unint64_t sub_258FB56A4(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v4 = 7107189;
    v5 = 0x7A69726F68747561;
    if (a1 != 2)
    {
      v5 = 0x6E65696C43656D6DLL;
    }

    if (a1)
    {
      v4 = 0x41747865746E6F63;
    }

    if (a1 <= 1u)
    {
      return v4;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 1684628597;
    if (a1 != 6)
    {
      v1 = 0xD000000000000010;
    }

    v2 = 0x6E65674172657375;
    if (a1 != 4)
    {
      v2 = 0x656E6F7A656D6974;
    }

    if (a1 <= 5u)
    {
      return v2;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_258FB57E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_258FB8958(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_258FB5814(uint64_t a1)
{
  v2 = sub_258FB8170();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_258FB5850(uint64_t a1)
{
  v2 = sub_258FB8170();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MicroFindMyInterface.EndpointConfiguration.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F999100, &qword_258FC5088);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v33[-v9];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_258FB8170();
  sub_258FC4564();
  LOBYTE(v34) = 0;
  sub_258FC4054();
  sub_258FB8D9C(&qword_27F999110, MEMORY[0x277CC9260]);
  sub_258FC4494();
  if (!v2)
  {
    My = type metadata accessor for MicroFindMyInterface.EndpointConfiguration();
    v13 = (v3 + My[5]);
    v14 = *v13;
    v15 = v13[1];
    LOBYTE(v34) = 1;
    sub_258FC4454();
    v16 = (v3 + My[6]);
    v17 = *v16;
    v18 = v16[1];
    LOBYTE(v34) = 2;
    sub_258FC4454();
    v19 = (v3 + My[7]);
    v20 = *v19;
    v21 = v19[1];
    LOBYTE(v34) = 3;
    sub_258FC4454();
    v22 = (v3 + My[8]);
    v23 = *v22;
    v24 = v22[1];
    LOBYTE(v34) = 4;
    sub_258FC4454();
    v25 = (v3 + My[9]);
    v26 = *v25;
    v27 = v25[1];
    LOBYTE(v34) = 5;
    sub_258FC4454();
    v28 = (v3 + My[10]);
    v29 = *v28;
    v30 = v28[1];
    LOBYTE(v34) = 6;
    sub_258FC4454();
    v31 = *(v3 + My[11]);
    LOBYTE(v34) = 7;
    sub_258FC4464();
    v34 = *(v3 + My[12]);
    v33[7] = 8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F999118, &qword_258FC5090);
    sub_258FB81C4(&qword_27F999120);
    sub_258FC4494();
  }

  return (*(v6 + 8))(v10, v5);
}

uint64_t MicroFindMyInterface.EndpointConfiguration.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v40 = a2;
  v4 = sub_258FC4054();
  v41 = *(v4 - 8);
  v5 = *(v41 + 64);
  MEMORY[0x28223BE20](v4, v6);
  v43 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F999128, &qword_258FC5098);
  v42 = *(v45 - 8);
  v8 = *(v42 + 64);
  MEMORY[0x28223BE20](v45, v9);
  v11 = &v39 - v10;
  My = type metadata accessor for MicroFindMyInterface.EndpointConfiguration();
  v13 = *(*(My - 1) + 64);
  MEMORY[0x28223BE20](My, v14);
  v16 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_258FB8170();
  v44 = v11;
  sub_258FC4554();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v18 = v42;
  LOBYTE(v47) = 0;
  sub_258FB8D9C(&qword_27F999130, MEMORY[0x277CC9260]);
  v19 = v43;
  sub_258FC4444();
  (*(v41 + 32))(v16, v19, v4);
  LOBYTE(v47) = 1;
  v20 = sub_258FC4404();
  v39 = v4;
  v21 = &v16[My[5]];
  *v21 = v20;
  v21[1] = v22;
  LOBYTE(v47) = 2;
  v43 = 0;
  v23 = sub_258FC4404();
  v24 = &v16[My[6]];
  *v24 = v23;
  v24[1] = v25;
  LOBYTE(v47) = 3;
  v26 = sub_258FC4404();
  v27 = &v16[My[7]];
  *v27 = v26;
  v27[1] = v28;
  LOBYTE(v47) = 4;
  v29 = sub_258FC4404();
  v30 = &v16[My[8]];
  *v30 = v29;
  v30[1] = v31;
  LOBYTE(v47) = 5;
  v32 = sub_258FC4404();
  v33 = &v16[My[9]];
  *v33 = v32;
  v33[1] = v34;
  LOBYTE(v47) = 6;
  v35 = sub_258FC4404();
  v36 = &v16[My[10]];
  *v36 = v35;
  v36[1] = v37;
  LOBYTE(v47) = 7;
  v16[My[11]] = sub_258FC4414() & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F999118, &qword_258FC5090);
  v46 = 8;
  sub_258FB81C4(&qword_27F999138);
  sub_258FC4444();
  (*(v18 + 8))(v44, v45);
  *&v16[My[12]] = v47;
  sub_258FB8230(v16, v40);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_258FB7CB0(v16);
}

uint64_t sub_258FB6288(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    v2 = result;
    v3 = *(result + 32);
    result += 32;
    if (!v3)
    {
LABEL_6:
      v7 = sub_258FC4324();
      swift_unknownObjectRelease();
      return v7;
    }

    v4 = 0;
    v5 = v1 - 1;
    while (v5 != v4)
    {
      if (!*(v2 + 33 + v4++))
      {
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_258FB630C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_258FB63D8(v11, 0, 0, 1, a1, a2);
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
    sub_258FB8C6C(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_258FB63D8(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_258FB64E4(a5, a6);
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
    result = sub_258FC43C4();
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

uint64_t sub_258FB64E4(uint64_t a1, unint64_t a2)
{
  v4 = sub_258FB6530(a1, a2);
  sub_258FB6660(&unk_286A4CBF0);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_258FB6530(uint64_t a1, unint64_t a2)
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

  v6 = sub_258FB674C(v5, 0);
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

  result = sub_258FC43C4();
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
        v10 = sub_258FC4344();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_258FB674C(v10, 0);
        result = sub_258FC4394();
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

uint64_t sub_258FB6660(uint64_t result)
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

  result = sub_258FB67C0(result, v12, 1, v3);
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

void *sub_258FB674C(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F999190, &qword_258FC5440);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_258FB67C0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F999190, &qword_258FC5440);
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

uint64_t sub_258FB68B4(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

_BYTE *sub_258FB6960@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
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
    result = sub_258FB7D60(result, a2);
    v8 = a3;
    v6 = v9 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v3 >= 0x7FFFFFFF)
    {
      result = sub_258FB7E18(result, a2);
      v6 = v10 | 0x8000000000000000;
    }

    else
    {
      result = sub_258FB7E94(result, a2);
      v6 = v5 | 0x4000000000000000;
    }

    v8 = a3;
  }

  *v8 = result;
  v8[1] = v6;
  return result;
}

uint64_t sub_258FB69F4(uint64_t a1, unint64_t a2)
{
  v5 = *(v2 + 40);
  sub_258FC4524();
  sub_258FC4094();
  v6 = sub_258FC4544();

  return sub_258FB6D0C(a1, a2, v6);
}

uint64_t sub_258FB6A6C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F999188, &qword_258FC5438);
  result = sub_258FC43F4();
  v8 = result;
  if (*(v5 + 16))
  {
    v32 = v3;
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
      v22 = *(*(v5 + 56) + 8 * v21);
      v33 = *(*(v5 + 48) + 16 * v21);
      if ((a2 & 1) == 0)
      {
        sub_258FB061C(v33, *(*(v5 + 48) + 16 * v21 + 8));
      }

      v23 = *(v8 + 40);
      sub_258FC4524();
      sub_258FC4094();
      result = sub_258FC4544();
      v24 = -1 << *(v8 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v15 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        v17 = v33;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v15 + 8 * v26);
          if (v30 != -1)
          {
            v16 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v25) & ~*(v15 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
      v17 = v33;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 16 * v16) = v17;
      *(*(v8 + 56) + 8 * v16) = v22;
      ++*(v8 + 16);
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

    if (a2)
    {
      v31 = 1 << *(v5 + 32);
      if (v31 >= 64)
      {
        bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v31;
      }

      *(v5 + 16) = 0;
    }

    v3 = v32;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

uint64_t sub_258FB6D0C(uint64_t a1, unint64_t a2, uint64_t a3)
{
  __s1[2] = *MEMORY[0x277D85DE8];
  v4 = v3 + 64;
  v5 = -1 << *(v3 + 32);
  v6 = a3 & ~v5;
  if (((*(v3 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
LABEL_139:
    v63 = *MEMORY[0x277D85DE8];
    return v6;
  }

  v7 = v3;
  v10 = ~v5;
  v11 = a2 >> 62;
  if (a1)
  {
    v12 = 0;
  }

  else
  {
    v12 = a2 == 0xC000000000000000;
  }

  v13 = !v12;
  v75 = v13;
  v14 = __OFSUB__(HIDWORD(a1), a1);
  v72 = v14;
  __n = BYTE6(a2);
  v70 = a1;
  v71 = HIDWORD(a1) - a1;
  v66 = (a1 >> 32) - a1;
  v67 = a1 >> 32;
  v73 = v10;
  v74 = v3 + 64;
  while (1)
  {
    v15 = (*(v7 + 48) + 16 * v6);
    v17 = *v15;
    v16 = v15[1];
    v18 = v16 >> 62;
    if (v16 >> 62 == 3)
    {
      if (v17)
      {
        v19 = 0;
      }

      else
      {
        v19 = v16 == 0xC000000000000000;
      }

      v21 = !v19 || v11 < 3;
      if (((v21 | v75) & 1) == 0)
      {
        goto LABEL_139;
      }

LABEL_36:
      v22 = 0;
      if (v11 <= 1)
      {
        goto LABEL_33;
      }

      goto LABEL_37;
    }

    if (v18 > 1)
    {
      if (v18 != 2)
      {
        goto LABEL_36;
      }

      v24 = *(v17 + 16);
      v23 = *(v17 + 24);
      v25 = __OFSUB__(v23, v24);
      v22 = v23 - v24;
      if (v25)
      {
        goto LABEL_142;
      }

      if (v11 <= 1)
      {
        goto LABEL_33;
      }
    }

    else if (v18)
    {
      LODWORD(v22) = HIDWORD(v17) - v17;
      if (__OFSUB__(HIDWORD(v17), v17))
      {
        goto LABEL_141;
      }

      v22 = v22;
      if (v11 <= 1)
      {
LABEL_33:
        v26 = __n;
        if (v11)
        {
          v26 = v71;
          if (v72)
          {
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
LABEL_147:
            __break(1u);
LABEL_148:
            __break(1u);
LABEL_149:
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
LABEL_155:
            __break(1u);
LABEL_156:
            __break(1u);
LABEL_157:
            __break(1u);
LABEL_158:
            __break(1u);
LABEL_159:
            __break(1u);
LABEL_160:
            __break(1u);
LABEL_161:
            __break(1u);
          }
        }

        goto LABEL_39;
      }
    }

    else
    {
      v22 = BYTE6(v16);
      if (v11 <= 1)
      {
        goto LABEL_33;
      }
    }

LABEL_37:
    if (v11 != 2)
    {
      if (!v22)
      {
        goto LABEL_139;
      }

      goto LABEL_13;
    }

    v28 = *(a1 + 16);
    v27 = *(a1 + 24);
    v25 = __OFSUB__(v27, v28);
    v26 = v27 - v28;
    if (v25)
    {
      goto LABEL_140;
    }

LABEL_39:
    if (v22 != v26)
    {
      goto LABEL_13;
    }

    if (v22 < 1)
    {
      goto LABEL_139;
    }

    if (v18 > 1)
    {
      break;
    }

    if (v18)
    {
      if (v17 > v17 >> 32)
      {
        goto LABEL_143;
      }

      sub_258FB061C(v17, v16);
      v35 = sub_258FC3FF4();
      if (v35)
      {
        v40 = sub_258FC4014();
        if (__OFSUB__(v17, v40))
        {
          goto LABEL_145;
        }

        v35 += v17 - v40;
      }

      sub_258FC4004();
      if (v11 == 2)
      {
        v59 = *(a1 + 16);
        v65 = *(a1 + 24);
        v37 = sub_258FC3FF4();
        if (v37)
        {
          v60 = sub_258FC4014();
          if (__OFSUB__(v59, v60))
          {
            goto LABEL_160;
          }

          v37 += v59 - v60;
        }

        v25 = __OFSUB__(v65, v59);
        v61 = v65 - v59;
        if (v25)
        {
          goto LABEL_155;
        }

        result = sub_258FC4004();
        if (result >= v61)
        {
          v39 = v61;
        }

        else
        {
          v39 = result;
        }

        if (!v35)
        {
          goto LABEL_175;
        }

        if (!v37)
        {
          goto LABEL_174;
        }

        goto LABEL_130;
      }

      if (v11 == 1)
      {
        if (v67 < v70)
        {
          goto LABEL_154;
        }

        v37 = sub_258FC3FF4();
        if (v37)
        {
          v41 = sub_258FC4014();
          if (__OFSUB__(v70, v41))
          {
            goto LABEL_161;
          }

          v37 += v70 - v41;
        }

        result = sub_258FC4004();
        v39 = v66;
        if (result < v66)
        {
          v39 = result;
        }

        if (!v35)
        {
          goto LABEL_177;
        }

        if (!v37)
        {
          goto LABEL_176;
        }

        goto LABEL_130;
      }

      LOWORD(__s1[0]) = a1;
      BYTE2(__s1[0]) = BYTE2(a1);
      BYTE3(__s1[0]) = BYTE3(a1);
      BYTE4(__s1[0]) = v68;
      BYTE5(__s1[0]) = BYTE5(a1);
      BYTE6(__s1[0]) = BYTE6(a1);
      HIBYTE(__s1[0]) = HIBYTE(a1);
      LOWORD(__s1[1]) = a2;
      BYTE2(__s1[1]) = BYTE2(a2);
      BYTE3(__s1[1]) = BYTE3(a2);
      BYTE4(__s1[1]) = BYTE4(a2);
      BYTE5(__s1[1]) = BYTE5(a2);
      if (!v35)
      {
        goto LABEL_166;
      }

      goto LABEL_133;
    }

    __s1[0] = v17;
    LOWORD(__s1[1]) = v16;
    BYTE2(__s1[1]) = BYTE2(v16);
    BYTE3(__s1[1]) = BYTE3(v16);
    BYTE4(__s1[1]) = BYTE4(v16);
    BYTE5(__s1[1]) = BYTE5(v16);
    if (!v11)
    {
      goto LABEL_91;
    }

    if (v11 != 1)
    {
      v48 = *(a1 + 16);
      v47 = *(a1 + 24);
      sub_258FB061C(v17, v16);
      v32 = sub_258FC3FF4();
      if (v32)
      {
        v49 = sub_258FC4014();
        if (__OFSUB__(v48, v49))
        {
          goto LABEL_157;
        }

        v32 += v48 - v49;
      }

      v25 = __OFSUB__(v47, v48);
      v45 = v47 - v48;
      if (v25)
      {
        goto LABEL_149;
      }

      v46 = sub_258FC4004();
      v7 = v69;
      if (!v32)
      {
        goto LABEL_164;
      }

      goto LABEL_98;
    }

    if (v67 < v70)
    {
      goto LABEL_146;
    }

    sub_258FB061C(v17, v16);
    v29 = sub_258FC3FF4();
    if (!v29)
    {
      goto LABEL_167;
    }

    v30 = v29;
    v31 = sub_258FC4014();
    if (__OFSUB__(v70, v31))
    {
      goto LABEL_152;
    }

    v32 = v70 - v31 + v30;
    result = sub_258FC4004();
    if (!v32)
    {
      goto LABEL_168;
    }

LABEL_105:
    if (result >= v66)
    {
      v50 = v66;
    }

    else
    {
      v50 = result;
    }

LABEL_108:
    v54 = __s1;
    v55 = v32;
LABEL_134:
    v62 = memcmp(v54, v55, v50);
    sub_258FB8074(v17, v16);
LABEL_135:
    v10 = v73;
    v4 = v74;
    if (!v62)
    {
      goto LABEL_139;
    }

LABEL_13:
    v6 = (v6 + 1) & v10;
    if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
    {
      goto LABEL_139;
    }
  }

  if (v18 == 2)
  {
    v34 = *(v17 + 16);
    sub_258FB061C(v17, v16);
    v35 = sub_258FC3FF4();
    if (v35)
    {
      v36 = sub_258FC4014();
      if (__OFSUB__(v34, v36))
      {
        goto LABEL_144;
      }

      v35 += v34 - v36;
    }

    result = sub_258FC4004();
    if (v11 == 2)
    {
      v56 = *(a1 + 16);
      v64 = *(a1 + 24);
      v37 = sub_258FC3FF4();
      if (v37)
      {
        v57 = sub_258FC4014();
        if (__OFSUB__(v56, v57))
        {
          goto LABEL_158;
        }

        v37 += v56 - v57;
      }

      v25 = __OFSUB__(v64, v56);
      v58 = v64 - v56;
      if (v25)
      {
        goto LABEL_153;
      }

      result = sub_258FC4004();
      if (result >= v58)
      {
        v39 = v58;
      }

      else
      {
        v39 = result;
      }

      if (!v35)
      {
        goto LABEL_173;
      }

      if (!v37)
      {
        goto LABEL_172;
      }

      goto LABEL_130;
    }

    if (v11 == 1)
    {
      if (v67 < v70)
      {
        goto LABEL_148;
      }

      v37 = sub_258FC3FF4();
      if (v37)
      {
        v38 = sub_258FC4014();
        if (__OFSUB__(v70, v38))
        {
          goto LABEL_159;
        }

        v37 += v70 - v38;
      }

      result = sub_258FC4004();
      v39 = v66;
      if (result < v66)
      {
        v39 = result;
      }

      if (!v35)
      {
        goto LABEL_171;
      }

      if (!v37)
      {
        goto LABEL_170;
      }

LABEL_130:
      if (v35 == v37)
      {
        sub_258FB8074(v17, v16);
        goto LABEL_139;
      }

      v62 = memcmp(v35, v37, v39);
      sub_258FB8074(v17, v16);
      v7 = v69;
      goto LABEL_135;
    }

    LOWORD(__s1[0]) = a1;
    BYTE2(__s1[0]) = BYTE2(a1);
    BYTE3(__s1[0]) = BYTE3(a1);
    BYTE4(__s1[0]) = v68;
    BYTE5(__s1[0]) = BYTE5(a1);
    BYTE6(__s1[0]) = BYTE6(a1);
    HIBYTE(__s1[0]) = HIBYTE(a1);
    LOWORD(__s1[1]) = a2;
    BYTE2(__s1[1]) = BYTE2(a2);
    BYTE3(__s1[1]) = BYTE3(a2);
    BYTE4(__s1[1]) = BYTE4(a2);
    BYTE5(__s1[1]) = BYTE5(a2);
    if (!v35)
    {
      goto LABEL_169;
    }

LABEL_133:
    v55 = __s1;
    v54 = v35;
    v50 = __n;
    goto LABEL_134;
  }

  memset(__s1, 0, 14);
  if (!v11)
  {
LABEL_91:
    __s2 = a1;
    v78 = BYTE2(a1);
    v79 = BYTE3(a1);
    v80 = v68;
    v81 = BYTE5(a1);
    v82 = BYTE6(a1);
    v83 = HIBYTE(a1);
    v84 = a2;
    v85 = BYTE2(a2);
    v86 = BYTE3(a2);
    v87 = BYTE4(a2);
    v88 = BYTE5(a2);
    if (!memcmp(__s1, &__s2, __n))
    {
      goto LABEL_139;
    }

    goto LABEL_13;
  }

  if (v11 == 2)
  {
    v43 = *(a1 + 16);
    v42 = *(a1 + 24);
    sub_258FB061C(v17, v16);
    v32 = sub_258FC3FF4();
    if (v32)
    {
      v44 = sub_258FC4014();
      if (__OFSUB__(v43, v44))
      {
        goto LABEL_156;
      }

      v32 += v43 - v44;
    }

    v25 = __OFSUB__(v42, v43);
    v45 = v42 - v43;
    if (v25)
    {
      goto LABEL_150;
    }

    v46 = sub_258FC4004();
    v7 = v69;
    if (!v32)
    {
      goto LABEL_165;
    }

LABEL_98:
    if (v46 >= v45)
    {
      v50 = v45;
    }

    else
    {
      v50 = v46;
    }

    goto LABEL_108;
  }

  if (v67 < v70)
  {
    goto LABEL_147;
  }

  sub_258FB061C(v17, v16);
  v51 = sub_258FC3FF4();
  if (v51)
  {
    v52 = v51;
    v53 = sub_258FC4014();
    if (__OFSUB__(v70, v53))
    {
      goto LABEL_151;
    }

    v32 = v70 - v53 + v52;
    result = sub_258FC4004();
    if (!v32)
    {
      goto LABEL_163;
    }

    goto LABEL_105;
  }

  sub_258FC4004();
LABEL_163:
  __break(1u);
LABEL_164:
  __break(1u);
LABEL_165:
  __break(1u);
LABEL_166:
  __break(1u);
LABEL_167:
  result = sub_258FC4004();
LABEL_168:
  __break(1u);
LABEL_169:
  __break(1u);
LABEL_170:
  __break(1u);
LABEL_171:
  __break(1u);
LABEL_172:
  __break(1u);
LABEL_173:
  __break(1u);
LABEL_174:
  __break(1u);
LABEL_175:
  __break(1u);
LABEL_176:
  __break(1u);
LABEL_177:
  __break(1u);
  return result;
}

void *sub_258FB7570()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F999188, &qword_258FC5438);
  v2 = *v0;
  v3 = sub_258FC43E4();
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
        v18 = *(*(v2 + 56) + 8 * v17);
        v19 = *(*(v2 + 48) + 16 * v17);
        *(*(v4 + 48) + 16 * v17) = v19;
        *(*(v4 + 56) + 8 * v17) = v18;
        result = sub_258FB061C(v19, *(&v19 + 1));
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

uint64_t sub_258FB76D8()
{
  sub_258FC3FC4();
  if (v16)
  {
    if (swift_dynamicCast())
    {
      v0 = v17;
      goto LABEL_6;
    }
  }

  else
  {
    sub_258FB8CC8(&v14, &qword_27F999198, &qword_258FC5448);
  }

  v0 = 0;
LABEL_6:
  sub_258FC3FC4();
  if (!v16)
  {
    v1 = sub_258FB8CC8(&v14, &qword_27F999198, &qword_258FC5448);
LABEL_11:
    v3 = MEMORY[0x277D84F90];
    if (!v0)
    {
      goto LABEL_9;
    }

    goto LABEL_12;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F999118, &qword_258FC5090);
  v1 = swift_dynamicCast();
  if ((v1 & 1) == 0)
  {
    goto LABEL_11;
  }

  v3 = v17;
  if (!v0)
  {
LABEL_9:
    v4 = "ty.iokit-user-client-class";
    v5 = 0xD000000000000028;
LABEL_16:

    goto LABEL_17;
  }

LABEL_12:
  v14 = 0xD000000000000014;
  v15 = 0x8000000258FC6EE0;
  MEMORY[0x28223BE20](v1, v2);
  v13 = &v14;
  v6 = sub_258FB68B4(sub_258FB8D28, v12, v3);
  if ((v6 & 1) == 0)
  {
    v4 = "RootDomainUserClient";
    v5 = 0xD00000000000004ELL;
    goto LABEL_16;
  }

  v14 = 0xD00000000000001ELL;
  v15 = 0x8000000258FC6F50;
  MEMORY[0x28223BE20](v6, v7);
  v13 = &v14;
  v8 = sub_258FB68B4(sub_258FB8E60, v12, v3);

  if (v8)
  {
    return result;
  }

  v4 = "AFKEndpointInterfaceUserClient";
  v5 = 0xD000000000000058;
LABEL_17:
  v10 = sub_258FC3F94();
  sub_258FB8D9C(&qword_27F9990A0, MEMORY[0x277D08938]);
  swift_allocError();
  *v11 = v5;
  v11[1] = v4 | 0x8000000000000000;
  (*(*(v10 - 8) + 104))(v11, *MEMORY[0x277D08930], v10);
  return swift_willThrow();
}

uint64_t _s11MicroFindMy0abC9InterfaceV11isSupportedSbvgZ_0()
{
  v0 = sub_258FC4244();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0, v3);
  v5 = (&v10[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_258FC3FB4();
  v10[3] = v6;
  v10[4] = sub_258FB8D9C(&qword_2813928B8, MEMORY[0x277D08A28]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v10);
  (*(*(v6 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x277D08A18], v6);
  LOBYTE(v6) = MEMORY[0x259C9F7E0](v10);
  __swift_destroy_boxed_opaque_existential_1(v10);
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  sub_258FB76D8();
  sub_258FB8E7C(v5);
  (*(v1 + 8))(v5, v0);
  return 1;
}

uint64_t type metadata accessor for MicroFindMyInterface.EndpointConfiguration()
{
  result = qword_27F999140;
  if (!qword_27F999140)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_258FB7BDC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9990A8, &qword_258FC5050);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_258FB7C4C(uint64_t a1, uint64_t a2)
{
  My = type metadata accessor for MicroFindMyInterface.EndpointConfiguration();
  (*(*(My - 8) + 32))(a2, a1, My);
  return a2;
}

uint64_t sub_258FB7CB0(uint64_t a1)
{
  My = type metadata accessor for MicroFindMyInterface.EndpointConfiguration();
  (*(*(My - 8) + 8))(a1, My);
  return a1;
}

unint64_t sub_258FB7D0C()
{
  result = qword_27F9990C8;
  if (!qword_27F9990C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9990C8);
  }

  return result;
}

uint64_t sub_258FB7D60(_BYTE *__src, _BYTE *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v10 = v3;
  v9 = 0;
  v8 = 0;
  if (__src && a2 != __src)
  {
    memcpy(&__dst, __src, v2);
    result = __dst;
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_258FB7E18(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  v3 = sub_258FC4024();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  result = sub_258FC3FE4();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_258FC4084();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

uint64_t sub_258FB7E94(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  v3 = sub_258FC4024();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  result = sub_258FC3FE4();
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

uint64_t sub_258FB7F18(uint64_t a1)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9990D0, &qword_258FC5070);
  v10 = sub_258FB7FC8();
  v8[0] = a1;
  v2 = __swift_project_boxed_opaque_existential_1(v8, v9);
  v3 = (*v2 + 32);
  v4 = *(*v2 + 16);

  sub_258FB6960(v3, &v3[v4], &v7);
  v5 = v7;
  __swift_destroy_boxed_opaque_existential_1(v8);
  return v5;
}

unint64_t sub_258FB7FC8()
{
  result = qword_27F9990D8;
  if (!qword_27F9990D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F9990D0, &qword_258FC5070);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9990D8);
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

uint64_t sub_258FB8074(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

unint64_t sub_258FB80C8()
{
  result = qword_27F9990E0;
  if (!qword_27F9990E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9990E0);
  }

  return result;
}

unint64_t sub_258FB811C()
{
  result = qword_27F9990F0;
  if (!qword_27F9990F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9990F0);
  }

  return result;
}

unint64_t sub_258FB8170()
{
  result = qword_27F999108;
  if (!qword_27F999108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F999108);
  }

  return result;
}

uint64_t sub_258FB81C4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F999118, &qword_258FC5090);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_258FB8230(uint64_t a1, uint64_t a2)
{
  My = type metadata accessor for MicroFindMyInterface.EndpointConfiguration();
  (*(*(My - 8) + 16))(a2, a1, My);
  return a2;
}

uint64_t sub_258FB8294(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_258FB82F0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

void sub_258FB8388()
{
  sub_258FC4054();
  if (v0 <= 0x3F)
  {
    sub_258FB842C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_258FB842C()
{
  if (!qword_27F999150)
  {
    v0 = sub_258FC4354();
    if (!v1)
    {
      atomic_store(v0, &qword_27F999150);
    }
  }
}

uint64_t getEnumTagSinglePayload for MicroFindMyInterface.EndpointConfiguration.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 8;
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

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MicroFindMyInterface.EndpointConfiguration.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_258FB85E0()
{
  result = qword_27F999158;
  if (!qword_27F999158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F999158);
  }

  return result;
}

unint64_t sub_258FB8638()
{
  result = qword_27F999160;
  if (!qword_27F999160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F999160);
  }

  return result;
}

unint64_t sub_258FB8690()
{
  result = qword_27F999168;
  if (!qword_27F999168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F999168);
  }

  return result;
}

unint64_t sub_258FB86E8()
{
  result = qword_27F999170;
  if (!qword_27F999170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F999170);
  }

  return result;
}

unint64_t sub_258FB8740()
{
  result = qword_27F999178;
  if (!qword_27F999178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F999178);
  }

  return result;
}

unint64_t sub_258FB8798()
{
  result = qword_27F999180;
  if (!qword_27F999180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F999180);
  }

  return result;
}

uint64_t sub_258FB87EC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000017 && 0x8000000258FC6CD0 == a2;
  if (v3 || (sub_258FC44B4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000016 && 0x8000000258FC6CF0 == a2 || (sub_258FC44B4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000019 && 0x8000000258FC6D10 == a2 || (sub_258FC44B4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000022 && 0x8000000258FC6D30 == a2)
  {

    return 3;
  }

  else
  {
    v6 = sub_258FC44B4();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_258FB8958(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 7107189 && a2 == 0xE300000000000000;
  if (v3 || (sub_258FC44B4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x41747865746E6F63 && a2 == 0xEA00000000007070 || (sub_258FC44B4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7A69726F68747561 && a2 == 0xED00006E6F697461 || (sub_258FC44B4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6E65696C43656D6DLL && a2 == 0xED00006F666E4974 || (sub_258FC44B4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6E65674172657375 && a2 == 0xE900000000000074 || (sub_258FC44B4() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x656E6F7A656D6974 && a2 == 0xE800000000000000 || (sub_258FC44B4() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 1684628597 && a2 == 0xE400000000000000 || (sub_258FC44B4() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000258FC6D60 == a2 || (sub_258FC44B4() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000258FC6D80 == a2)
  {

    return 8;
  }

  else
  {
    v6 = sub_258FC44B4();

    if (v6)
    {
      return 8;
    }

    else
    {
      return 9;
    }
  }
}

uint64_t sub_258FB8C6C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_258FB8CC8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_258FB8D44(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_258FC44B4() & 1;
  }
}

uint64_t sub_258FB8D9C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_258FB8E7C@<X0>(_DWORD *a1@<X8>)
{
  v24 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9991A0, &unk_258FC5450);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8, v3);
  v5 = (&v23 - v4);
  v6 = type metadata accessor for rpc_server_t();
  Description = v6[-1].Description;
  v8 = Description[8];
  MEMORY[0x28223BE20](v6, v9);
  v11 = (&v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_258FC3650(v5);
  if ((Description[6])(v5, 1, v6) == 1)
  {
    sub_258FB9130(v5);
    sub_258FB9198();
    swift_allocError();
    *v12 = 1;
    return swift_willThrow();
  }

  (Description[4])(v11, v5, v6);
  v14 = MobileGestalt_get_current_device();
  if (v14)
  {
    v15 = v14;
    if (MobileGestalt_get_deviceSupportsAOP2() && MobileGestalt_get_deviceSupportsUltraLowPowerNetworking())
    {
      v16 = v25;
      v17 = sub_258FC36A8(v11);
      if (v16)
      {
      }

      else
      {
        v19 = v17;

        v20 = v24;
        *v24 = v19;
        v21 = *MEMORY[0x277D714A8];
        v22 = sub_258FC4244();
        (*(*(v22 - 8) + 104))(v20, v21, v22);
      }

      goto LABEL_10;
    }
  }

  sub_258FB9198();
  swift_allocError();
  *v18 = 0;
  swift_willThrow();
LABEL_10:
  sub_258FC36A0(v11);
  return (Description[1])(v11, v6);
}

uint64_t sub_258FB9130(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9991A0, &unk_258FC5450);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_258FB9198()
{
  result = qword_2813928B0;
  if (!qword_2813928B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813928B0);
  }

  return result;
}

uint64_t sub_258FB91EC()
{
  v1 = sub_258FC4184();
  v38 = *(v1 - 8);
  v2 = *(v38 + 64);
  MEMORY[0x28223BE20](v1, v3);
  v5 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_258FC4214();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8, v8);
  v9 = sub_258FC4234();
  v10 = *(v9 - 8);
  v39 = v9;
  v40 = v10;
  v11 = *(v10 + 64);
  v13 = MEMORY[0x28223BE20](v9, v12);
  v15 = MEMORY[0x28223BE20](v13, v14);
  v17 = &v36 - v16;
  v19 = MEMORY[0x28223BE20](v15, v18);
  v21 = &v36 - v20;
  MEMORY[0x28223BE20](v19, v22);
  v24 = &v36 - v23;
  v25 = *(v0 + 16);
  v26 = v41;
  sub_258FC4254();
  if (v26)
  {
    v30 = v42;
    type metadata accessor for TransportError();
    v35 = v31;
    sub_258FC34C0(&qword_27F9991F0, 255, type metadata accessor for TransportError);
    swift_allocError();
    *v32 = v30;
  }

  else
  {
    v37 = v5;
    v41 = v1;
    v27 = v39;
    v28 = *(v40 + 32);
    v40 += 32;
    v29 = v28;
    v28(v21, v24, v39);
    sub_258FC4224();
    sub_258FC41F4();
    sub_258FC4204();
    sub_258FC4264();
    v29(v21, v17, v27);
    v34 = v37;
    sub_258FC4174();
    v35 = sub_258FC25DC();
    (*(v38 + 8))(v34, v41);
  }

  return v35;
}

uint64_t sub_258FB95BC(unint64_t a1, unint64_t a2)
{
  v44 = a1;
  v45 = a2;
  v3 = sub_258FC4184();
  v43 = *(v3 - 8);
  v4 = *(v43 + 64);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_258FC4214();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8, v10);
  v11 = sub_258FC4234();
  v12 = *(v11 - 8);
  v46 = v11;
  v47 = v12;
  v13 = *(v12 + 64);
  v15 = MEMORY[0x28223BE20](v11, v14);
  v17 = MEMORY[0x28223BE20](v15, v16);
  v19 = &v39 - v18;
  v21 = MEMORY[0x28223BE20](v17, v20);
  v23 = &v39 - v22;
  MEMORY[0x28223BE20](v21, v24);
  v26 = &v39 - v25;
  v27 = *(v2 + 16);
  v28 = v48;
  sub_258FC4254();
  if (v28)
  {
    v30 = v50;
    type metadata accessor for TransportError();
    sub_258FC34C0(&qword_27F9991F0, 255, type metadata accessor for TransportError);
    result = swift_allocError();
    *v32 = v30;
  }

  else
  {
    v40 = v7;
    v41 = v3;
    v42 = HIDWORD(v44);
    v29 = *(v47 + 32);
    v47 += 32;
    v48 = HIDWORD(v45);
    v39 = v29;
    v29(v23, v26, v46);
    sub_258FC4224();
    sub_258FC41F4();
    sub_258FC41C4();
    sub_258FC41C4();
    sub_258FC41C4();
    sub_258FC41C4();
    sub_258FC4204();
    sub_258FC4264();
    v39(v23, v19, v46);
    v33 = v40;
    sub_258FC4174();
    v34 = sub_258FC4134();
    if (v34)
    {
      v35 = v41;
      v36 = v43;
      if (v34 == 1)
      {
        v37 = sub_258FC2844();
        v49 = v37;
        sub_258FB7D0C();
        swift_willThrowTypedImpl();
        swift_allocError();
        *v38 = v37;
        return (*(v36 + 8))(v33, v35);
      }

      else
      {
        result = sub_258FC43D4();
        __break(1u);
      }
    }

    else
    {
      return (*(v43 + 8))(v33, v41);
    }
  }

  return result;
}

uint64_t sub_258FB9A5C()
{
  v1 = sub_258FC4184();
  v33 = *(v1 - 8);
  v34 = v1;
  v2 = *(v33 + 64);
  MEMORY[0x28223BE20](v1, v3);
  v32 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_258FC4214();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8, v7);
  v8 = sub_258FC4234();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v12 = MEMORY[0x28223BE20](v8, v11);
  v14 = MEMORY[0x28223BE20](v12, v13);
  v16 = &v32 - v15;
  v18 = MEMORY[0x28223BE20](v14, v17);
  v20 = &v32 - v19;
  MEMORY[0x28223BE20](v18, v21);
  v23 = &v32 - v22;
  v24 = *(v0 + 16);
  v25 = v35;
  sub_258FC4254();
  if (v25)
  {
    v26 = v36;
    type metadata accessor for TransportError();
    sub_258FC34C0(&qword_27F9991F0, 255, type metadata accessor for TransportError);
    result = swift_allocError();
    *v28 = v26;
  }

  else
  {
    v35 = *(v9 + 32);
    v35(v20, v23, v8);
    sub_258FC4224();
    sub_258FC41F4();
    sub_258FC4204();
    sub_258FC4264();
    v35(v20, v16, v8);
    v29 = v32;
    sub_258FC4174();
    v30 = sub_258FC4124();
    v31 = sub_258FC4124();
    sub_258FC4124();
    sub_258FC4124();
    (*(v33 + 8))(v29, v34);
    return v30 | (v31 << 32);
  }

  return result;
}

uint64_t sub_258FB9DAC(uint64_t a1)
{
  v51 = sub_258FC4184();
  v50 = *(v51 - 8);
  v4 = *(v50 + 64);
  MEMORY[0x28223BE20](v51, v5);
  v49 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_258FC4214();
  v52 = *(v53 - 8);
  v7 = *(v52 + 64);
  MEMORY[0x28223BE20](v53, v8);
  v10 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_258FC4234();
  v12 = *(v11 - 8);
  v55 = v11;
  v56 = v12;
  v13 = *(v12 + 64);
  v15 = MEMORY[0x28223BE20](v11, v14);
  v17 = MEMORY[0x28223BE20](v15, v16);
  v54 = &v48 - v18;
  v20 = MEMORY[0x28223BE20](v17, v19);
  v22 = &v48 - v21;
  MEMORY[0x28223BE20](v20, v23);
  v25 = &v48 - v24;
  v26 = (a1 + 8);
  v27 = *a1;
  if (*a1)
  {
    v28 = *(a1 + 48);
    v61[2] = *(a1 + 32);
    v61[3] = v28;
    v62 = *(a1 + 64);
    v29 = *(a1 + 16);
    v61[0] = *a1;
    v61[1] = v29;
    v30 = sub_258FC2930(v61);
    v31 = v30 + 1;
    if (__OFADD__(v30, 1))
    {
      __break(1u);
      goto LABEL_8;
    }
  }

  else
  {
    v31 = 1;
  }

  if (__OFADD__(v31, 8))
  {
    __break(1u);
    goto LABEL_18;
  }

  v32 = *(v1 + 16);
  sub_258FC4254();
  if (v2)
  {
LABEL_5:
    v33 = v64;
    type metadata accessor for TransportError();
    sub_258FC34C0(&qword_27F9991F0, 255, type metadata accessor for TransportError);
    result = swift_allocError();
    *v35 = v33;
    return result;
  }

LABEL_8:
  v36 = *(v56 + 32);
  v37 = v25;
  v38 = v55;
  v56 += 32;
  v48 = v36;
  v36(v22, v37, v55);
  sub_258FC4224();
  sub_258FC41F4();
  if (v27)
  {
    v57 = v27;
    v39 = v26[1];
    v58 = *v26;
    v59 = v39;
    v60[0] = v26[2];
    *(v60 + 9) = *(v26 + 41);
    sub_258FC41D4();
    v40 = sub_258FBE3AC(&v57);
    if (v2)
    {
      v41 = v40;
      type metadata accessor for TransportError();
      sub_258FC34C0(&qword_27F9991F0, 255, type metadata accessor for TransportError);
      swift_allocError();
      *v42 = v41;
      return (*(v52 + 8))(v10, v53);
    }
  }

  else
  {
    sub_258FC41D4();
  }

  sub_258FC4204();
  v43 = v54;
  sub_258FC4264();
  if (v2)
  {
    goto LABEL_5;
  }

  v48(v22, v43, v38);
  v44 = v49;
  sub_258FC4174();
  v45 = sub_258FC4134();
  if (!v45)
  {
    return (*(v50 + 8))(v44, v51);
  }

  if (v45 == 1)
  {
    v46 = sub_258FC2844();
    v63 = v46;
    sub_258FB7D0C();
    swift_willThrowTypedImpl();
    swift_allocError();
    *v47 = v46;
    return (*(v50 + 8))(v44, v51);
  }

LABEL_18:
  result = sub_258FC43D4();
  __break(1u);
  return result;
}

double sub_258FBA3A8@<D0>(uint64_t a1@<X8>)
{
  v40 = a1;
  v2 = sub_258FC4184();
  v41 = *(v2 - 8);
  v3 = *(v41 + 64);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_258FC4214();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8, v9);
  *&v43 = sub_258FC4234();
  *&v42 = *(v43 - 8);
  v10 = *(v42 + 64);
  v12 = MEMORY[0x28223BE20](v43, v11);
  v14 = MEMORY[0x28223BE20](v12, v13);
  v16 = &v37 - v15;
  v18 = MEMORY[0x28223BE20](v14, v17);
  v20 = &v37 - v19;
  MEMORY[0x28223BE20](v18, v21);
  v23 = &v37 - v22;
  v24 = *(v1 + 16);
  v25 = v44;
  sub_258FC4254();
  if (v25)
  {
    v27 = v47;
    type metadata accessor for TransportError();
    sub_258FC34C0(&qword_27F9991F0, 255, type metadata accessor for TransportError);
    swift_allocError();
    *v29 = v27;
  }

  else
  {
    v39 = v6;
    v44 = v2;
    v26 = *(v42 + 32);
    v26(v20, v23, v43);
    sub_258FC4224();
    sub_258FC41F4();
    sub_258FC4204();
    sub_258FC4264();
    v26(v20, v16, v43);
    v30 = v39;
    sub_258FC4174();
    if (sub_258FC4134() == 1)
    {
      sub_258FC2A34(v45);
      v31 = v44;
      v32 = v40;
      v33 = v41;
      v42 = v45[1];
      v43 = v45[0];
      v37 = v45[3];
      v38 = v45[2];
      v34 = v46;
    }

    else
    {
      v34 = 0;
      v42 = 0u;
      v43 = 0u;
      v38 = 0u;
      v37 = 0u;
      v31 = v44;
      v32 = v40;
      v33 = v41;
    }

    (*(v33 + 8))(v30, v31);
    v35 = v42;
    *v32 = v43;
    *(v32 + 16) = v35;
    v36 = v37;
    result = *&v38;
    *(v32 + 32) = v38;
    *(v32 + 48) = v36;
    *(v32 + 64) = v34;
  }

  return result;
}

uint64_t sub_258FBA7E8(uint64_t a1, uint64_t a2)
{
  v4 = v3;
  v62 = a2;
  v6 = sub_258FC4184();
  v58 = *(v6 - 8);
  v7 = *(v58 + 64);
  MEMORY[0x28223BE20](v6, v8);
  v57 = v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_258FC4214();
  v59 = *(v10 - 8);
  v60 = v10;
  v11 = *(v59 + 64);
  MEMORY[0x28223BE20](v10, v12);
  v14 = v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_258FC4234();
  v15 = *(*(v61 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v61, v16);
  v19 = MEMORY[0x28223BE20](v17, v18);
  v21 = v54 - v20;
  v23 = MEMORY[0x28223BE20](v19, v22);
  v25 = v54 - v24;
  MEMORY[0x28223BE20](v23, v26);
  v30 = v54 - v29;
  if (!a1)
  {
    v36 = 1;
    if (!v27)
    {
      goto LABEL_6;
    }

LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v31 = *(a1 + 16);
  v27 = __OFADD__(v31, 8);
  v32 = v31 + 8;
  if (v27)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v33 = *(v62 + 16);
  v27 = __OFADD__(v33, 8);
  v34 = v33 + 8;
  if (v27)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v27 = __OFADD__(v32, v34);
  v35 = v32 + v34;
  if (v27)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v27 = __OFADD__(v35, 1);
  v36 = v35 + 1;
  if (v27)
  {
    goto LABEL_11;
  }

LABEL_6:
  if (__OFADD__(v36, 8))
  {
    __break(1u);
    goto LABEL_22;
  }

  v4 = v28;
  v56 = v6;
  v37 = *(v2 + 16);
  sub_258FC4254();
  if (v3)
  {
LABEL_8:
    v38 = v64;
    type metadata accessor for TransportError();
    sub_258FC34C0(&qword_27F9991F0, 255, type metadata accessor for TransportError);
    result = swift_allocError();
    *v40 = v38;
    return result;
  }

LABEL_12:
  v41 = *(v4 + 32);
  v42 = v30;
  v43 = v61;
  v54[1] = v4 + 32;
  v55 = v3;
  v41(v25, v42, v61);
  sub_258FC4224();
  sub_258FC41F4();
  if (a1)
  {
    sub_258FC41D4();
    v44 = v55;
    v45 = sub_258FBE524(a1, v62);
    v55 = v44;
    if (v44)
    {
      v46 = v45;
      type metadata accessor for TransportError();
      sub_258FC34C0(&qword_27F9991F0, 255, type metadata accessor for TransportError);
      swift_allocError();
      *v47 = v46;
      return (*(v59 + 8))(v14, v60);
    }
  }

  else
  {
    sub_258FC41D4();
  }

  sub_258FC4204();
  v48 = v55;
  sub_258FC4264();
  if (v48)
  {
    goto LABEL_8;
  }

  v41(v25, v21, v43);
  v49 = v57;
  sub_258FC4174();
  v50 = sub_258FC4134();
  if (!v50)
  {
    return (*(v58 + 8))(v49, v56);
  }

  v51 = v56;
  if (v50 == 1)
  {
    v52 = sub_258FC2844();
    v63 = v52;
    sub_258FB7D0C();
    swift_willThrowTypedImpl();
    swift_allocError();
    *v53 = v52;
    return (*(v58 + 8))(v49, v51);
  }

LABEL_25:
  result = sub_258FC43D4();
  __break(1u);
  return result;
}

uint64_t sub_258FBAD98(uint64_t a1)
{
  v4 = sub_258FC4184();
  v45 = *(v4 - 8);
  v5 = *(v45 + 64);
  MEMORY[0x28223BE20](v4, v6);
  v44 = v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_258FC4214();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8, v10);
  v47 = sub_258FC4234();
  v11 = *(*(v47 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v47, v12);
  v15 = MEMORY[0x28223BE20](v13, v14);
  v17 = v41 - v16;
  v19 = MEMORY[0x28223BE20](v15, v18);
  v21 = v41 - v20;
  MEMORY[0x28223BE20](v19, v22);
  v25 = v41 - v24;
  v46 = a1;
  v26 = *(a1 + 16);
  if (__OFADD__(v26, 8))
  {
    __break(1u);
    goto LABEL_14;
  }

  if (__OFADD__(v26 + 8, 8))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v27 = v23;
  v43 = v4;
  v28 = *(v1 + 16);
  sub_258FC4254();
  if (v2)
  {
    goto LABEL_8;
  }

  v29 = v27 + 32;
  v30 = *(v27 + 32);
  v41[1] = v29;
  v42 = 0;
  v30(v21, v25, v47);
  sub_258FC4224();
  sub_258FC41F4();
  sub_258FC41F4();
  if (v26)
  {
    v31 = (v46 + 32);
    do
    {
      v32 = *v31++;
      sub_258FC41D4();
      --v26;
    }

    while (v26);
  }

  sub_258FC4204();
  v33 = v42;
  sub_258FC4264();
  if (v33)
  {
LABEL_8:
    v34 = v49;
    type metadata accessor for TransportError();
    sub_258FC34C0(&qword_27F9991F0, 255, type metadata accessor for TransportError);
    result = swift_allocError();
    *v36 = v34;
    return result;
  }

  v30(v21, v17, v47);
  v37 = v44;
  sub_258FC4174();
  v38 = sub_258FC4134();
  if (!v38)
  {
    return (*(v45 + 8))(v37, v43);
  }

  if (v38 == 1)
  {
    v39 = sub_258FC2844();
    v48 = v39;
    sub_258FB7D0C();
    swift_willThrowTypedImpl();
    swift_allocError();
    *v40 = v39;
    return (*(v45 + 8))(v37, v43);
  }

LABEL_15:
  result = sub_258FC43D4();
  __break(1u);
  return result;
}

uint64_t sub_258FBB230(uint64_t a1)
{
  v51 = a1;
  v2 = *(a1 + 32);
  v3 = sub_258FC4184();
  v49 = *(v3 - 8);
  v50 = v3;
  v4 = *(v49 + 64);
  MEMORY[0x28223BE20](v3, v5);
  v48 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_258FC4214();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8, v9);
  v10 = sub_258FC4234();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v14 = MEMORY[0x28223BE20](v10, v13);
  v16 = &v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v14, v17);
  v20 = &v46 - v19;
  v22 = MEMORY[0x28223BE20](v18, v21);
  v24 = &v46 - v23;
  MEMORY[0x28223BE20](v22, v25);
  v27 = &v46 - v26;
  v52 = v2;
  v28 = *(v1 + 16);
  v29 = v53;
  sub_258FC4254();
  if (v29)
  {
    goto LABEL_6;
  }

  v46 = v16;
  v47 = v20;
  v53 = 0;
  v30 = *(v11 + 32);
  v30(v24, v27, v10);
  sub_258FC4224();
  sub_258FC41F4();
  if (v52)
  {
    sub_258FC41D4();
  }

  else
  {
    v32 = v51[2];
    v31 = v51[3];
    v34 = *v51;
    v33 = v51[1];
    sub_258FC41D4();
    sub_258FC41A4();
    sub_258FC41A4();
    sub_258FC41A4();
    sub_258FC41A4();
  }

  v35 = v47;
  sub_258FC4204();
  v36 = v53;
  sub_258FC4264();
  if (v36)
  {
LABEL_6:
    v37 = v55;
    type metadata accessor for TransportError();
    sub_258FC34C0(&qword_27F9991F0, 255, type metadata accessor for TransportError);
    result = swift_allocError();
    *v39 = v37;
  }

  else
  {
    v30(v24, v35, v10);
    v40 = v48;
    sub_258FC4174();
    v41 = sub_258FC4134();
    if (v41)
    {
      v43 = v49;
      v42 = v50;
      if (v41 == 1)
      {
        v44 = sub_258FC2844();
        v54 = v44;
        sub_258FB7D0C();
        swift_willThrowTypedImpl();
        swift_allocError();
        *v45 = v44;
        return (*(v43 + 8))(v40, v42);
      }

      else
      {
        result = sub_258FC43D4();
        __break(1u);
      }
    }

    else
    {
      return (*(v49 + 8))(v40, v50);
    }
  }

  return result;
}

double sub_258FBB708@<D0>(_OWORD *a1@<X8>)
{
  v44 = a1;
  v2 = sub_258FC4184();
  v42 = *(v2 - 8);
  v43 = v2;
  v3 = *(v42 + 64);
  MEMORY[0x28223BE20](v2, v4);
  v41 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_258FC4214();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8, v8);
  v9 = sub_258FC4234();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v13 = MEMORY[0x28223BE20](v9, v12);
  v15 = MEMORY[0x28223BE20](v13, v14);
  v17 = &v39 - v16;
  v19 = MEMORY[0x28223BE20](v15, v18);
  v21 = &v39 - v20;
  MEMORY[0x28223BE20](v19, v22);
  v24 = &v39 - v23;
  v25 = *(v1 + 16);
  v26 = v45;
  sub_258FC4254();
  if (v26)
  {
    v27 = v46;
    type metadata accessor for TransportError();
    sub_258FC34C0(&qword_27F9991F0, 255, type metadata accessor for TransportError);
    swift_allocError();
    *v29 = v27;
  }

  else
  {
    *&v45 = *(v10 + 32);
    (v45)(v21, v24, v9);
    sub_258FC4224();
    sub_258FC41F4();
    sub_258FC4204();
    sub_258FC4264();
    (v45)(v21, v17, v9);
    v30 = v41;
    sub_258FC4174();
    v31 = sub_258FC4134();
    v45 = 0u;
    v40 = 0u;
    if (v31 == 1)
    {
      sub_258FC4104();
      v45 = v32;
      sub_258FC4104();
      v39 = v33;
      sub_258FC4104();
      v40 = v34;
      sub_258FC4104();
      *&v35 = v45;
      *(&v35 + 1) = v39;
      v45 = v35;
      *&v35 = v40;
      *(&v35 + 1) = v36;
      v40 = v35;
    }

    (*(v42 + 8))(v30, v43);
    v37 = v44;
    v38 = v40;
    result = *&v45;
    *v44 = v45;
    v37[1] = v38;
    *(v37 + 32) = v31 != 1;
  }

  return result;
}

uint64_t sub_258FBBAEC(uint64_t a1)
{
  v4 = sub_258FC4184();
  v45 = *(v4 - 8);
  v5 = *(v45 + 64);
  MEMORY[0x28223BE20](v4, v6);
  v44 = v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_258FC4214();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8, v10);
  v47 = sub_258FC4234();
  v11 = *(*(v47 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v47, v12);
  v15 = MEMORY[0x28223BE20](v13, v14);
  v17 = v41 - v16;
  v19 = MEMORY[0x28223BE20](v15, v18);
  v21 = v41 - v20;
  MEMORY[0x28223BE20](v19, v22);
  v25 = v41 - v24;
  v46 = a1;
  v26 = *(a1 + 16);
  if (__OFADD__(v26, 8))
  {
    __break(1u);
    goto LABEL_14;
  }

  if (__OFADD__(v26 + 8, 8))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v27 = v23;
  v43 = v4;
  v28 = *(v1 + 16);
  sub_258FC4254();
  if (v2)
  {
    goto LABEL_8;
  }

  v29 = v27 + 32;
  v30 = *(v27 + 32);
  v41[1] = v29;
  v42 = 0;
  v30(v21, v25, v47);
  sub_258FC4224();
  sub_258FC41F4();
  sub_258FC41F4();
  if (v26)
  {
    v31 = (v46 + 32);
    do
    {
      v32 = *v31++;
      sub_258FC41D4();
      --v26;
    }

    while (v26);
  }

  sub_258FC4204();
  v33 = v42;
  sub_258FC4264();
  if (v33)
  {
LABEL_8:
    v34 = v49;
    type metadata accessor for TransportError();
    sub_258FC34C0(&qword_27F9991F0, 255, type metadata accessor for TransportError);
    result = swift_allocError();
    *v36 = v34;
    return result;
  }

  v30(v21, v17, v47);
  v37 = v44;
  sub_258FC4174();
  v38 = sub_258FC4134();
  if (!v38)
  {
    return (*(v45 + 8))(v37, v43);
  }

  if (v38 == 1)
  {
    v39 = sub_258FC2844();
    v48 = v39;
    sub_258FB7D0C();
    swift_willThrowTypedImpl();
    swift_allocError();
    *v40 = v39;
    return (*(v45 + 8))(v37, v43);
  }

LABEL_15:
  result = sub_258FC43D4();
  __break(1u);
  return result;
}

uint64_t sub_258FBBF84()
{
  v1 = sub_258FC4184();
  v47 = *(v1 - 8);
  v2 = *(v47 + 64);
  MEMORY[0x28223BE20](v1, v3);
  v5 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_258FC4214();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8, v8);
  v9 = sub_258FC4234();
  v10 = *(v9 - 8);
  v48 = v9;
  v49 = v10;
  v11 = *(v10 + 64);
  v13 = MEMORY[0x28223BE20](v9, v12);
  v15 = MEMORY[0x28223BE20](v13, v14);
  v17 = &v45 - v16;
  v19 = MEMORY[0x28223BE20](v15, v18);
  v21 = &v45 - v20;
  MEMORY[0x28223BE20](v19, v22);
  v24 = &v45 - v23;
  v25 = *(v0 + 16);
  v26 = v50;
  sub_258FC4254();
  if (v26)
  {
    v30 = v52;
    type metadata accessor for TransportError();
    v32 = v31;
    sub_258FC34C0(&qword_27F9991F0, 255, type metadata accessor for TransportError);
    swift_allocError();
    *v33 = v30;
    return v32;
  }

  v46 = v5;
  v50 = v1;
  v27 = v48;
  v28 = *(v49 + 32);
  v49 += 32;
  v29 = v28;
  v28(v21, v24, v48);
  sub_258FC4224();
  sub_258FC41F4();
  sub_258FC4204();
  sub_258FC4264();
  v29(v21, v17, v27);
  v35 = v46;
  sub_258FC4174();
  v36 = sub_258FC4134();
  if (!v36)
  {
    v37 = sub_258FC4154();
    MEMORY[0x28223BE20](v37, v38);
    v44 = v35;
    v32 = sub_258FC13AC(sub_258FC3620, (&v45 - 4), 0, v39, sub_258FC2394);
    (*(v47 + 8))(v35, v50);
    return v32;
  }

  v40 = v50;
  v41 = v47;
  if (v36 == 1)
  {
    v42 = sub_258FC2844();
    v51 = v42;
    sub_258FB7D0C();
    swift_willThrowTypedImpl();
    v32 = swift_allocError();
    *v43 = v42;
    (*(v41 + 8))(v35, v40);
    return v32;
  }

  result = sub_258FC43D4();
  __break(1u);
  return result;
}

uint64_t sub_258FBC46C(uint64_t a1)
{
  v4 = sub_258FC4184();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v49 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_258FC4214();
  v51 = *(v9 - 8);
  v52 = v9;
  v10 = *(v51 + 64);
  MEMORY[0x28223BE20](v9, v11);
  v53 = sub_258FC4234();
  v12 = *(*(v53 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v53, v13);
  v16 = &v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v14, v17);
  v50 = &v46 - v19;
  v21 = MEMORY[0x28223BE20](v18, v20);
  v23 = &v46 - v22;
  MEMORY[0x28223BE20](v21, v24);
  v27 = &v46 - v26;
  v28 = 0;
  while (v28 != 57)
  {
    v29 = *(a1 + 16);
    v30 = v28 >= v29;
    if (v28 == v29)
    {
      break;
    }

    ++v28;
    if (v30)
    {
      __break(1u);
      break;
    }
  }

  v31 = v25;
  v47 = v5;
  v48 = v4;
  v32 = *(v1 + 16);
  sub_258FC4254();
  if (v2)
  {
    v33 = v55;
    type metadata accessor for TransportError();
    sub_258FC34C0(&qword_27F9991F0, 255, type metadata accessor for TransportError);
    result = swift_allocError();
    *v35 = v33;
  }

  else
  {
    v46 = v16;
    v36 = *(v31 + 32);
    v37 = v27;
    v38 = v53;
    v36(v23, v37, v53);
    sub_258FC4224();
    sub_258FC41F4();
    sub_258FBE5A0(a1);
    v52 = v36;
    sub_258FC4204();
    v39 = v50;
    sub_258FC4264();
    v52(v23, v39, v38);
    v40 = v49;
    sub_258FC4174();
    v41 = sub_258FC4134();
    if (v41)
    {
      v43 = v47;
      v42 = v48;
      if (v41 == 1)
      {
        v44 = sub_258FC2844();
        v54 = v44;
        sub_258FB7D0C();
        swift_willThrowTypedImpl();
        swift_allocError();
        *v45 = v44;
        return (*(v43 + 8))(v40, v42);
      }

      else
      {
        result = sub_258FC43D4();
        __break(1u);
      }
    }

    else
    {
      return (*(v47 + 8))(v40, v48);
    }
  }

  return result;
}

uint64_t sub_258FBCA04(uint64_t a1)
{
  v25 = a1;
  v3 = sub_258FC4214();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8, v5);
  v6 = sub_258FC4234();
  v26 = *(v6 - 8);
  v7 = *(v26 + 64);
  v9 = MEMORY[0x28223BE20](v6, v8);
  v11 = MEMORY[0x28223BE20](v9, v10);
  v13 = &v25 - v12;
  v15 = MEMORY[0x28223BE20](v11, v14);
  v17 = &v25 - v16;
  MEMORY[0x28223BE20](v15, v18);
  v20 = &v25 - v19;
  v21 = *(v1 + 16);
  sub_258FC4254();
  if (v2)
  {
    v22 = v27;
    type metadata accessor for TransportError();
    sub_258FC34C0(&qword_27F9991F0, 255, type metadata accessor for TransportError);
    result = swift_allocError();
    *v24 = v22;
  }

  else
  {
    (*(v26 + 32))(v17, v20, v6);
    sub_258FC4224();
    sub_258FC41F4();
    sub_258FC4204();
    sub_258FC4264();
    return (*(v26 + 8))(v13, v6);
  }

  return result;
}

uint64_t sub_258FBCCA8(uint64_t a1)
{
  v37 = a1;
  v2 = sub_258FC4184();
  v35 = *(v2 - 8);
  v36 = v2;
  v3 = *(v35 + 64);
  MEMORY[0x28223BE20](v2, v4);
  v34 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_258FC4214();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8, v8);
  v9 = sub_258FC4234();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v13 = MEMORY[0x28223BE20](v9, v12);
  v15 = MEMORY[0x28223BE20](v13, v14);
  v17 = &v33 - v16;
  v19 = MEMORY[0x28223BE20](v15, v18);
  v21 = &v33 - v20;
  MEMORY[0x28223BE20](v19, v22);
  v24 = &v33 - v23;
  v25 = *(v1 + 16);
  v26 = v38;
  sub_258FC4254();
  if (v26)
  {
    v27 = v39;
    type metadata accessor for TransportError();
    v29 = v28;
    sub_258FC34C0(&qword_27F9991F0, 255, type metadata accessor for TransportError);
    swift_allocError();
    *v30 = v27;
  }

  else
  {
    v38 = *(v10 + 32);
    v38(v21, v24, v9);
    sub_258FC4224();
    sub_258FC41F4();
    sub_258FC4204();
    sub_258FC4264();
    v38(v21, v17, v9);
    v32 = v34;
    sub_258FC4174();
    v29 = sub_258FC40F4();
    (*(v35 + 8))(v32, v36);
  }

  return v29 & 1;
}

uint64_t sub_258FBCFC8(uint64_t a1)
{
  v3 = sub_258FC4214();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8, v5);
  v6 = sub_258FC4234();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v10 = MEMORY[0x28223BE20](v6, v9);
  v12 = MEMORY[0x28223BE20](v10, v11);
  v14 = v48 - v13;
  v16 = MEMORY[0x28223BE20](v12, v15);
  v18 = v48 - v17;
  MEMORY[0x28223BE20](v16, v19);
  v21 = v48 - v20;
  v22 = *(a1 + 16) + 8;
  v23 = *(v1 + 16);
  v24 = v51;
  sub_258FC4254();
  if (!v24)
  {
    v48[1] = v23;
    v49 = v14;
    v50 = v7;
    v51 = 0;
    (*(v7 + 32))(v18, v21, v6);
    sub_258FC4224();
    sub_258FC41F4();
    v25 = *(a1 + 16);
    if (v25 != 16)
    {
      v53 = 0;
      v54 = 0xE000000000000000;
      sub_258FC43B4();
      MEMORY[0x259C9FB70](0x2844495555746573, 0xEE00293A64697575);
      MEMORY[0x259C9FB70](0xD000000000000037, 0x8000000258FC74A0);
      v52 = v25;
      v47 = sub_258FC44A4();
      MEMORY[0x259C9FB70](v47);

      result = sub_258FC43D4();
      __break(1u);
      return result;
    }

    v26 = *(a1 + 32);
    sub_258FC41D4();
    v27 = *(a1 + 33);
    sub_258FC41D4();
    v28 = *(a1 + 34);
    sub_258FC41D4();
    v29 = *(a1 + 35);
    sub_258FC41D4();
    v30 = *(a1 + 36);
    sub_258FC41D4();
    v31 = *(a1 + 37);
    sub_258FC41D4();
    v32 = *(a1 + 38);
    sub_258FC41D4();
    v33 = *(a1 + 39);
    sub_258FC41D4();
    v34 = *(a1 + 40);
    sub_258FC41D4();
    v35 = *(a1 + 41);
    sub_258FC41D4();
    v36 = *(a1 + 42);
    sub_258FC41D4();
    v37 = *(a1 + 43);
    sub_258FC41D4();
    v38 = *(a1 + 44);
    sub_258FC41D4();
    v39 = *(a1 + 45);
    sub_258FC41D4();
    v40 = *(a1 + 46);
    sub_258FC41D4();
    v41 = *(a1 + 47);
    sub_258FC41D4();
    sub_258FC4204();
    v42 = v49;
    v43 = v51;
    sub_258FC4264();
    if (!v43)
    {
      return (*(v50 + 8))(v42, v6);
    }
  }

  v44 = v55;
  type metadata accessor for TransportError();
  sub_258FC34C0(&qword_27F9991F0, 255, type metadata accessor for TransportError);
  result = swift_allocError();
  *v46 = v44;
  return result;
}

uint64_t sub_258FBD3B8()
{
  v1 = sub_258FC4184();
  v33 = *(v1 - 8);
  v34 = v1;
  v2 = *(v33 + 64);
  MEMORY[0x28223BE20](v1, v3);
  v32 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_258FC4214();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8, v7);
  v8 = sub_258FC4234();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v12 = MEMORY[0x28223BE20](v8, v11);
  v14 = MEMORY[0x28223BE20](v12, v13);
  v16 = &v32 - v15;
  v18 = MEMORY[0x28223BE20](v14, v17);
  v20 = &v32 - v19;
  MEMORY[0x28223BE20](v18, v21);
  v23 = &v32 - v22;
  v24 = *(v0 + 16);
  v25 = v35;
  sub_258FC4254();
  if (v25)
  {
    v26 = v36;
    type metadata accessor for TransportError();
    sub_258FC34C0(&qword_27F9991F0, 255, type metadata accessor for TransportError);
    result = swift_allocError();
    *v28 = v26;
  }

  else
  {
    v35 = *(v9 + 32);
    v35(v20, v23, v8);
    sub_258FC4224();
    sub_258FC41F4();
    sub_258FC4204();
    sub_258FC4264();
    v35(v20, v16, v8);
    v29 = v32;
    sub_258FC4174();
    v30 = sub_258FC4144();
    v31 = sub_258FC4144();
    sub_258FC4144();
    sub_258FC4144();
    sub_258FC4144();
    sub_258FC4144();
    (*(v33 + 8))(v29, v34);
    return v30 | (v31 << 32);
  }

  return result;
}

uint64_t sub_258FBD720(int a1)
{
  v39 = a1;
  v2 = sub_258FC4184();
  v37 = *(v2 - 8);
  v3 = *(v37 + 64);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_258FC4214();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8, v9);
  v40 = sub_258FC4234();
  v38 = *(v40 - 8);
  v10 = *(v38 + 64);
  v12 = MEMORY[0x28223BE20](v40, v11);
  v14 = MEMORY[0x28223BE20](v12, v13);
  v16 = &v36 - v15;
  v18 = MEMORY[0x28223BE20](v14, v17);
  v20 = &v36 - v19;
  MEMORY[0x28223BE20](v18, v21);
  v23 = &v36 - v22;
  v24 = *(v1 + 16);
  v25 = v41;
  sub_258FC4254();
  if (v25)
  {
    v32 = v43;
    type metadata accessor for TransportError();
    sub_258FC34C0(&qword_27F9991F0, 255, type metadata accessor for TransportError);
    swift_allocError();
    *v27 = v32;
  }

  else
  {
    v36 = v6;
    v41 = v2;
    v26 = *(v38 + 32);
    v26(v20, v23, v40);
    sub_258FC4224();
    sub_258FC41F4();
    sub_258FC41E4();
    sub_258FC4204();
    sub_258FC4264();
    v26(v20, v16, v40);
    v29 = v36;
    sub_258FC4174();
    v30 = sub_258FC2C9C();
    v32 = v30;
    v33 = v41;
    v34 = v37;
    if (v31)
    {
      v42 = v30;
      sub_258FB7D0C();
      swift_willThrowTypedImpl();
      swift_allocError();
      *v35 = v32;
      (*(v34 + 8))(v29, v33);
    }

    else
    {
      (*(v37 + 8))(v29, v41);
    }
  }

  return v32;
}

uint64_t sub_258FBDB64(uint64_t a1)
{
  v4 = sub_258FC4184();
  v52 = *(v4 - 8);
  v5 = *(v52 + 64);
  MEMORY[0x28223BE20](v4, v6);
  v51 = v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_258FC4214();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8, v10);
  v53 = sub_258FC4234();
  v11 = *(*(v53 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v53, v12);
  v15 = MEMORY[0x28223BE20](v13, v14);
  v17 = v48 - v16;
  v19 = MEMORY[0x28223BE20](v15, v18);
  v21 = v48 - v20;
  MEMORY[0x28223BE20](v19, v22);
  v25 = v48 - v24;
  v26 = 0;
  while (v26 != 32)
  {
    v27 = *(a1 + 16);
    v28 = v26 >= v27;
    if (v26 == v27)
    {
      break;
    }

    ++v26;
    if (v28)
    {
      __break(1u);
      break;
    }
  }

  v29 = v23;
  v50 = v4;
  v30 = *(v1 + 16);
  sub_258FC4254();
  if (v2)
  {
    goto LABEL_12;
  }

  v31 = *(v29 + 32);
  v48[1] = v29 + 32;
  v49 = 0;
  v31(v21, v25, v53);
  sub_258FC4224();
  sub_258FC41F4();
  v32 = *(a1 + 16);
  if (v32 == 32)
  {
    v33 = 0;
    v34 = a1 + 32;
    do
    {
      v35 = v33 + 1;
      v36 = *(v34 + v33);
      sub_258FC41D4();
      v33 = v35;
    }

    while (v35 != 32);
    sub_258FC4204();
    v37 = v49;
    sub_258FC4264();
    if (!v37)
    {
      v31(v21, v17, v53);
      v43 = v51;
      sub_258FC4174();
      v44 = sub_258FC2DEC();
      v40 = v44;
      if (v45)
      {
        LOBYTE(v55) = v44;
        sub_258FB7D0C();
        swift_willThrowTypedImpl();
        swift_allocError();
        *v46 = v40;
      }

      (*(v52 + 8))(v43, v50);
      return v40;
    }

LABEL_12:
    v38 = v57;
    type metadata accessor for TransportError();
    v40 = v39;
    sub_258FC34C0(&qword_27F9991F0, 255, type metadata accessor for TransportError);
    swift_allocError();
    *v41 = v38;
    return v40;
  }

  v55 = 0;
  v56 = 0xE000000000000000;
  sub_258FC43B4();
  MEMORY[0x259C9FB70](0xD000000000000021, 0x8000000258FC73B0);
  MEMORY[0x259C9FB70](0xD000000000000037, 0x8000000258FC7330);
  v54 = v32;
  v47 = sub_258FC44A4();
  MEMORY[0x259C9FB70](v47);

  result = sub_258FC43D4();
  __break(1u);
  return result;
}

BOOL sub_258FBE104(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *sub_258FBE134@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_258FBE160@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

void *sub_258FBE238@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_258FBE268@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_258FC26BC(a1);

  *a2 = v3;
  return result;
}

uint64_t sub_258FBE2A8(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    return 9;
  }

  if (!a2)
  {
    v15 = 1;
    if (!v3)
    {
      goto LABEL_16;
    }

LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v5 = 0;
  v6 = 0;
  while (v5 != *(a2 + 16))
  {
    v8 = 0;
    v9 = v5 + 1;
    v10 = *(a2 + 32 + 16 * v5);
    while (v8 != 32)
    {
      v11 = *(v10 + 16);
      v12 = v8 >= v11;
      if (v8 == v11)
      {
        break;
      }

      ++v8;
      if (v12)
      {
        __break(1u);
        goto LABEL_13;
      }
    }

    v7 = v8 + 8;
    v5 = v9;
    v3 = __OFADD__(v6, v7);
    v6 += v7;
    if (v3)
    {
      goto LABEL_21;
    }
  }

LABEL_13:
  v3 = __OFADD__(v6, 8);
  v13 = v6 + 8;
  if (v3)
  {
    goto LABEL_23;
  }

  v3 = __OFADD__(v13, 4);
  v14 = v13 + 4;
  if (v3)
  {
LABEL_24:
    __break(1u);
    return result;
  }

  v3 = __OFADD__(v14, 1);
  v15 = v14 + 1;
  if (v3)
  {
    goto LABEL_20;
  }

LABEL_16:
  result = v15 + 1;
  if (__OFADD__(v15, 1))
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  return result;
}

uint64_t sub_258FBE358(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
    return 9;
  }

  if (!a3)
  {
    v9 = 1;
    if (!v4)
    {
      goto LABEL_7;
    }

LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v6 = *(a3 + 16);
  v4 = __OFADD__(v6, 8);
  v7 = v6 + 8;
  if (v4)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v4 = __OFADD__(v7, 9);
  v8 = v7 + 9;
  if (v4)
  {
LABEL_14:
    __break(1u);
    return result;
  }

  v4 = __OFADD__(v8, 1);
  v9 = v8 + 1;
  if (v4)
  {
    goto LABEL_11;
  }

LABEL_7:
  result = v9 + 1;
  if (__OFADD__(v9, 1))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  return result;
}

uint64_t sub_258FBE3AC(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(*a1 + 16);
  sub_258FC41F4();
  if (v3)
  {
    v4 = (v2 + 32);
    do
    {
      v5 = *v4++;
      sub_258FC41B4();
      --v3;
    }

    while (v3);
  }

  v6 = a1[1];
  v7 = *(v6 + 16);
  sub_258FC41F4();
  if (v7)
  {
    v8 = (v6 + 32);
    do
    {
      v9 = *v8++;
      sub_258FC41B4();
      --v7;
    }

    while (v7);
  }

  v10 = a1[2];
  v11 = *(v10 + 16);
  sub_258FC41F4();
  if (v11)
  {
    v12 = (v10 + 32);
    do
    {
      v13 = *v12++;
      sub_258FC41B4();
      --v11;
    }

    while (v11);
  }

  v14 = a1[3];
  v15 = *(v14 + 16);
  sub_258FC41F4();
  if (v15)
  {
    v16 = (v14 + 32);
    do
    {
      v17 = *v16++;
      sub_258FC41B4();
      --v15;
    }

    while (v15);
  }

  v18 = a1[4];
  v19 = *(v18 + 16);
  sub_258FC41F4();
  if (v19)
  {
    v20 = (v18 + 32);
    do
    {
      v21 = *v20++;
      sub_258FC41B4();
      --v19;
    }

    while (v19);
  }

  v22 = a1[5];
  v23 = *(v22 + 16);
  sub_258FC41F4();
  if (v23)
  {
    v24 = (v22 + 32);
    do
    {
      v25 = *v24++;
      sub_258FC41B4();
      --v23;
    }

    while (v23);
  }

  v26 = a1[6];
  v27 = *(v26 + 16);
  sub_258FC41F4();
  if (v27)
  {
    v28 = (v26 + 32);
    do
    {
      v29 = *v28++;
      sub_258FC41B4();
      --v27;
    }

    while (v27);
  }

  v30 = a1[7];
  v31 = *(v30 + 16);
  sub_258FC41F4();
  if (v31)
  {
    v32 = (v30 + 32);
    do
    {
      v33 = *v32++;
      sub_258FC41B4();
      --v31;
    }

    while (v31);
  }

  v34 = *(a1 + 64);
  return sub_258FC4194();
}

uint64_t sub_258FBE524(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  sub_258FC41F4();
  if (v4)
  {
    v5 = (a1 + 32);
    do
    {
      v6 = *v5++;
      sub_258FC41B4();
      --v4;
    }

    while (v4);
  }

  v7 = *(a2 + 16);
  result = sub_258FC41F4();
  if (v7)
  {
    v9 = (a2 + 32);
    do
    {
      v10 = *v9++;
      result = sub_258FC41B4();
      --v7;
    }

    while (v7);
  }

  return result;
}

uint64_t sub_258FBE5A0(uint64_t a1)
{
  if (*(a1 + 16) == 57)
  {
    v1 = 0;
    v2 = a1 + 32;
    do
    {
      v3 = v1 + 1;
      v4 = *(v2 + v1);
      result = sub_258FC41D4();
      v1 = v3;
    }

    while (v3 != 57);
  }

  else
  {
    v6 = *(a1 + 16);
    sub_258FC43B4();
    MEMORY[0x259C9FB70](0x5F2865646F636E65, 0xEA0000000000293ALL);
    MEMORY[0x259C9FB70](0xD000000000000037, 0x8000000258FC7520);
    v7 = sub_258FC44A4();
    MEMORY[0x259C9FB70](v7);

    result = sub_258FC43D4();
    __break(1u);
  }

  return result;
}

uint64_t sub_258FBE6C8()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t sub_258FBE700@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_258FC4244();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = swift_allocObject();
  (*(v5 + 16))(v9, a1, v4);
  v11 = sub_258FC4284();
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  v14 = sub_258FC4274();
  result = (*(v5 + 8))(a1, v4);
  *(v10 + 16) = v14;
  *a2 = v10;
  return result;
}

uint64_t sub_258FBE830@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X1>, uint64_t a3@<X8>)
{
  v299 = a2;
  v296 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9991D8, &qword_258FC5828);
  v5 = *(*(v4 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v4 - 8, v6);
  v289 = &v282 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7, v9);
  v288 = &v282 - v11;
  v13 = MEMORY[0x28223BE20](v10, v12);
  *&v292 = &v282 - v14;
  v16 = MEMORY[0x28223BE20](v13, v15);
  v284 = &v282 - v17;
  v19 = MEMORY[0x28223BE20](v16, v18);
  v283 = &v282 - v20;
  v22 = MEMORY[0x28223BE20](v19, v21);
  v282 = &v282 - v23;
  v25 = MEMORY[0x28223BE20](v22, v24);
  v295 = &v282 - v26;
  v28 = MEMORY[0x28223BE20](v25, v27);
  v285 = &v282 - v29;
  v31 = MEMORY[0x28223BE20](v28, v30);
  v33 = &v282 - v32;
  v35 = MEMORY[0x28223BE20](v31, v34);
  v37 = &v282 - v36;
  v39 = MEMORY[0x28223BE20](v35, v38);
  *&v294 = &v282 - v40;
  v42 = MEMORY[0x28223BE20](v39, v41);
  *&v293 = &v282 - v43;
  v45 = MEMORY[0x28223BE20](v42, v44);
  v287 = &v282 - v46;
  v48 = MEMORY[0x28223BE20](v45, v47);
  v50 = &v282 - v49;
  v52 = MEMORY[0x28223BE20](v48, v51);
  v290 = &v282 - v53;
  v55 = MEMORY[0x28223BE20](v52, v54);
  v57 = &v282 - v56;
  v59 = MEMORY[0x28223BE20](v55, v58);
  v286 = &v282 - v60;
  v62 = MEMORY[0x28223BE20](v59, v61);
  v64 = &v282 - v63;
  v66 = MEMORY[0x28223BE20](v62, v65);
  v291 = &v282 - v67;
  v69 = MEMORY[0x28223BE20](v66, v68);
  v71 = &v282 - v70;
  MEMORY[0x28223BE20](v69, v72);
  v74 = &v282 - v73;
  v75 = sub_258FC4214();
  v303 = *(v75 - 8);
  v304 = v75;
  v76 = *(v303 + 56);
  v301 = v74;
  v297 = v76;
  v298 = v303 + 56;
  (v76)(v74, 1, 1);
  v328 = a1;
  v77 = sub_258FC328C();
  switch(v77)
  {
    case 1:
      v178 = v300[6];
      v179 = v300[7];
      __swift_project_boxed_opaque_existential_1(v300 + 3, v178);
      (*(v179 + 40))(v178, v179);
      v180 = v302;
      sub_258FC4164();
      if (v180)
      {
        goto LABEL_76;
      }

      v328 = 0;
      v86 = v304;
      v297(v57, 0, 1, v304);
      v181 = (v303 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
      v85 = v301;
      v182 = *(v303 + 48);
      if (v182(v301, 1, v86) != 1)
      {
        sub_258FB8CC8(v85, &qword_27F9991D8, &qword_258FC5828);
      }

      sub_258FC337C(v57, v85);
      v84 = v182;
      if (!v182(v85, 1, v86))
      {
        v300 = v181;
        sub_258FC41C4();
        sub_258FC41C4();
        sub_258FC41C4();
        sub_258FC41C4();
      }

      goto LABEL_198;
    case 2:
      MEMORY[0x28223BE20](v77, v78);
      v280 = v328;
      v144 = v302;
      v145 = sub_258FC16D0(sub_258FC3620, (&v282 - 4), 0, 32);
      v146 = v144;
      v147 = v300[6];
      v148 = v300[7];
      __swift_project_boxed_opaque_existential_1(v300 + 3, v147);
      v149 = (*(v148 + 160))(v145, v147, v148);
      if (v144)
      {
        *&v307 = v144;
        MEMORY[0x259CA0180](v144);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9991E0, &unk_258FC5830);
        if (!swift_dynamicCast())
        {
          MEMORY[0x259CA0170](v307);
          v281 = 0;
          v280 = 788;
          goto LABEL_222;
        }

        MEMORY[0x259CA0170](v144);

        v152 = v306;
        MEMORY[0x259CA0170](v307);
        v153 = 0;
        v154 = 0;
      }

      else
      {
        v152 = v149;
        v153 = v150;
        v154 = v151;
      }

      sub_258FBE358(v152, v153, v154, v144 != 0);
      sub_258FC336C(v152, v153, v154, v144 != 0);
      v243 = v289;
      sub_258FC4164();
      v244 = v152;
      v328 = 0;
      v86 = v304;
      v297(v243, 0, 1, v304);
      v245 = *(v303 + 48);
      v300 = ((v303 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000);
      v85 = v301;
      v302 = v245;
      v303 += 48;
      if (v245(v301, 1, v86) != 1)
      {
        sub_258FB8CC8(v85, &qword_27F9991D8, &qword_258FC5828);
      }

      sub_258FC337C(v243, v85);
      if (v302(v85, 1, v86))
      {
        v246 = v144 != 0;
        v247 = v244;
LABEL_121:
        sub_258FC336C(v247, v153, v154, v246);
        goto LABEL_127;
      }

      v264 = v244;
      v265 = v328;
      v266 = sub_258FC1B38(v244, v153, v154, v146 != 0);
      if (!v265)
      {
        v328 = 0;
        v246 = v146 != 0;
        v247 = v244;
        goto LABEL_121;
      }

      v135 = v266;
      sub_258FC336C(v264, v153, v154, v146 != 0);
      result = (v302)(v85, 1, v86);
      goto LABEL_171;
    case 3:
      v163 = sub_258FC4144();
      v164 = v300[6];
      v165 = v300[7];
      __swift_project_boxed_opaque_existential_1(v300 + 3, v164);
      v166 = v302;
      v167 = (*(v165 + 152))(v163, v164, v165);
      v169 = v166;
      if (v166)
      {
        *&v307 = v166;
        MEMORY[0x259CA0180](v166);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9991E0, &unk_258FC5830);
        if (!swift_dynamicCast())
        {
          MEMORY[0x259CA0170](v307);
          v281 = 0;
          v278 = 774;
          goto LABEL_221;
        }

        MEMORY[0x259CA0170](v166);
        v170 = v306;
        MEMORY[0x259CA0170](v307);
        v171 = 0;
      }

      else
      {
        v170 = v167;
        v171 = v168;
      }

      v85 = v301;
      sub_258FBE2A8(v170, v171, v166 != 0);
      sub_258FC33EC(v170, v171, v166 != 0);
      v248 = v288;
      sub_258FC4164();
      v328 = 0;
      v249 = v304;
      v297(v248, 0, 1, v304);
      v250 = *(v303 + 48);
      v300 = ((v303 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000);
      v302 = v250;
      if (v250(v85, 1, v249) != 1)
      {
        sub_258FB8CC8(v85, &qword_27F9991D8, &qword_258FC5828);
      }

      sub_258FC337C(v248, v85);
      v86 = v304;
      if (!v302(v85, 1, v304))
      {
        v267 = v328;
        v268 = sub_258FC19DC(v170, v171, v169 != 0);
        if (v267)
        {
          v135 = v268;
          sub_258FC33EC(v170, v171, v169 != 0);
          result = (v302)(v85, 1, v86);
          goto LABEL_171;
        }

        v328 = 0;
      }

      sub_258FC33EC(v170, v171, v169 != 0);
LABEL_127:
      v84 = v302;
      goto LABEL_198;
    case 4:
      v128 = v300[6];
      v129 = v300[7];
      __swift_project_boxed_opaque_existential_1(v300 + 3, v128);
      (*(v129 + 56))(v315, v128, v129);
      if (*v315)
      {
        v324[2] = *&v315[32];
        v324[3] = *&v315[48];
        v325 = v315[64];
        v324[0] = *v315;
        v324[1] = *&v315[16];
        v130 = sub_258FC2930(v324);
      }

      else
      {
        v130 = 0;
      }

      v85 = v301;
      v241 = v303;
      v86 = v304;
      if (__OFADD__(v130, 1))
      {
        __break(1u);
        goto LABEL_207;
      }

      v242 = v302;
      sub_258FC4164();
      if (v242)
      {
        v135 = v312;
        sub_258FB8CC8(v315, &qword_27F9990B0, &qword_258FC5058);
        result = (*(v241 + 48))(v85, 1, v86);
        goto LABEL_171;
      }

      v328 = 0;
      v297(v50, 0, 1, v86);
      v84 = *(v241 + 48);
      if (v84(v85, 1, v86) != 1)
      {
        sub_258FB8CC8(v85, &qword_27F9991D8, &qword_258FC5828);
      }

      sub_258FC337C(v50, v85);
      if (!*v315)
      {
        if (!v84(v85, 1, v86))
        {
LABEL_34:
          sub_258FC41D4();
        }

        goto LABEL_198;
      }

      v318 = *v315;
      v319 = *&v315[8];
      v320 = *&v315[24];
      v321[0] = *&v315[40];
      *(v321 + 9) = *&v315[49];
      if (!v84(v85, 1, v86))
      {
        sub_258FC41D4();
      }

      if (v84(v85, 1, v86))
      {
        goto LABEL_156;
      }

      v271 = v328;
      v272 = sub_258FBE3AC(&v318);
      if (!v271)
      {
        v328 = 0;
LABEL_156:
        sub_258FB8CC8(v315, &qword_27F9990B0, &qword_258FC5058);
        goto LABEL_198;
      }

      v135 = v272;
      sub_258FB8CC8(v315, &qword_27F9990B0, &qword_258FC5058);
      result = (v84)(v85, 1, v86);
      goto LABEL_171;
    case 5:
      v188 = v300[6];
      v189 = v300[7];
      __swift_project_boxed_opaque_existential_1(v300 + 3, v188);
      (*(v189 + 88))(v188, v189);
      v190 = v302;
      sub_258FC4164();
      if (v190)
      {
        goto LABEL_76;
      }

      v328 = 0;
      v86 = v304;
      v297(v37, 0, 1, v304);
      v84 = *(v303 + 48);
      v191 = v301;
      if (v84(v301, 1, v86) != 1)
      {
        sub_258FB8CC8(v191, &qword_27F9991D8, &qword_258FC5828);
      }

      sub_258FC337C(v37, v191);
      v85 = v191;
      goto LABEL_198;
    case 6:
      v203 = v300[6];
      v204 = v300[7];
      __swift_project_boxed_opaque_existential_1(v300 + 3, v203);
      v205 = v302;
      v206 = (*(v204 + 24))(v203, v204);
      v207 = v205;
      if (v205)
      {
        *&v307 = v205;
        MEMORY[0x259CA0180](v205);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9991E0, &unk_258FC5830);
        if (!swift_dynamicCast())
        {
          MEMORY[0x259CA0170](v307);
          v281 = 0;
          v279 = 627;
LABEL_219:
          v280 = v279;
          goto LABEL_222;
        }

        MEMORY[0x259CA0170](v205);
        v208 = v306;
        MEMORY[0x259CA0170](v307);
        v209 = 1;
        v85 = v301;
        v86 = v304;
      }

      else
      {
        v208 = v206;
        v252 = *(v206 + 16);
        v253 = v252 + 8;
        v254 = __OFADD__(v252, 8);

        if (v254)
        {
LABEL_207:
          __break(1u);
LABEL_208:
          __break(1u);
LABEL_209:
          MEMORY[0x259CA0170](v307);
          v281 = 0;
          v277 = 701;
LABEL_214:
          v280 = v277;
          goto LABEL_222;
        }

        v85 = v301;
        v86 = v304;
        if (__OFADD__(v253, 1))
        {
          goto LABEL_208;
        }

        v209 = 0;
      }

      sub_258FC34B4(v208, v207 != 0);
      sub_258FC4164();
      v255 = v209;
      v328 = 0;
      v297(v64, 0, 1, v86);
      v256 = *(v303 + 48);
      v300 = ((v303 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000);
      v257 = v256;
      if (v256(v85, 1, v86) != 1)
      {
        sub_258FB8CC8(v85, &qword_27F9991D8, &qword_258FC5828);
      }

      sub_258FC337C(v64, v85);
      if (v257(v85, 1, v86))
      {
        goto LABEL_149;
      }

      v269 = v328;
      v270 = sub_258FC1844(v208, v255);
      if (!v269)
      {
        v328 = 0;
LABEL_149:
        sub_258FC34B4(v208, v207 != 0);
        v84 = v257;
        goto LABEL_198;
      }

      v135 = v270;
      sub_258FC34B4(v208, v207 != 0);
      result = (v257)(v85, 1, v86);
      goto LABEL_171;
    case 7:
      v172 = v300[6];
      v173 = v300[7];
      __swift_project_boxed_opaque_existential_1(v300 + 3, v172);
      (*(v173 + 144))(v172, v173);
      v175 = v174;
      v176 = v292;
      v177 = v302;
      sub_258FC4164();
      if (v177)
      {
        goto LABEL_76;
      }

      v328 = 0;
      v86 = v304;
      v297(v176, 0, 1, v304);
      v84 = *(v303 + 48);
      v85 = v301;
      if (v84(v301, 1, v86) != 1)
      {
        sub_258FB8CC8(v85, &qword_27F9991D8, &qword_258FC5828);
      }

      sub_258FC337C(v292, v85);
      if (!v84(v85, 1, v86))
      {
        v302 = v84;
        v303 = HIDWORD(v175);
        sub_258FC41E4();
        sub_258FC41E4();
        sub_258FC41E4();
        v84 = v302;
        sub_258FC41E4();
        sub_258FC41E4();
        v86 = v304;
        sub_258FC41E4();
      }

      goto LABEL_198;
    case 8:
      v216 = v300[6];
      v217 = v300[7];
      __swift_project_boxed_opaque_existential_1(v300 + 3, v216);
      (*(v217 + 96))(v216, v217);
      v218 = v302;
      sub_258FC4164();
      if (v218)
      {
        goto LABEL_76;
      }

      v328 = 0;
      v86 = v304;
      v297(v33, 0, 1, v304);
      v84 = *(v303 + 48);
      v85 = v301;
      if (v84(v301, 1, v86) != 1)
      {
        sub_258FB8CC8(v85, &qword_27F9991D8, &qword_258FC5828);
      }

      sub_258FC337C(v33, v85);
      if (!v84(v85, 1, v86))
      {
        goto LABEL_140;
      }

      goto LABEL_198;
    case 9:
      v138 = v300[6];
      v139 = v300[7];
      __swift_project_boxed_opaque_existential_1(v300 + 3, v138);
      (*(v139 + 120))(v316, v138, v139);
      v140 = v282;
      v141 = v302;
      sub_258FC4164();
      if (v141)
      {
        goto LABEL_76;
      }

      v328 = 0;
      v86 = v304;
      v297(v140, 0, 1, v304);
      v84 = *(v303 + 48);
      v85 = v301;
      if (v84(v301, 1, v86) != 1)
      {
        sub_258FB8CC8(v85, &qword_27F9991D8, &qword_258FC5828);
      }

      sub_258FC337C(v140, v85);
      v142 = v317;
      v143 = v84(v85, 1, v86);
      if ((v142 & 1) == 0)
      {
        if (!v143)
        {
          sub_258FC41D4();
        }

        if (!v84(v85, 1, v86))
        {
          sub_258FC41A4();
          sub_258FC41A4();
          sub_258FC41A4();
          sub_258FC41A4();
        }

        goto LABEL_198;
      }

      if (v143)
      {
        goto LABEL_198;
      }

      goto LABEL_34;
    case 10:
      v214 = v300[6];
      v215 = v300[7];
      __swift_project_boxed_opaque_existential_1(v300 + 3, v214);
      (*(v215 + 136))(v214, v215);
      v187 = v284;
      v186 = v302;
      sub_258FC4164();
      if (!v186)
      {
        goto LABEL_72;
      }

      goto LABEL_76;
    case 11:
      v117 = sub_258FC4124();
      v118 = sub_258FC4124();
      v119 = sub_258FC4124();
      v120 = sub_258FC4124();
      v121 = v300[6];
      v122 = v300[7];
      __swift_project_boxed_opaque_existential_1(v300 + 3, v121);
      v123 = v302;
      (*(v122 + 32))(v117 | (v118 << 32), v119 | (v120 << 32), v121, v122);
      if (v123)
      {
        *&v307 = v123;
        MEMORY[0x259CA0180](v123);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9991E0, &unk_258FC5830);
        v124 = swift_dynamicCast();
        v125 = v286;
        if ((v124 & 1) == 0)
        {
          MEMORY[0x259CA0170](v307);
          v281 = 0;
          v280 = 640;
          goto LABEL_222;
        }

        MEMORY[0x259CA0170](v123);
        v114 = v306;
        v126 = v306;
        MEMORY[0x259CA0170](v307);
        v85 = v301;
        v127 = v303;
        v86 = v304;
        if (v126 != 8)
        {
LABEL_100:
          sub_258FC4164();
          v328 = 0;
          v297(v125, 0, 1, v86);
          v84 = *(v127 + 48);
          if (v84(v85, 1, v86) != 1)
          {
            sub_258FB8CC8(v85, &qword_27F9991D8, &qword_258FC5828);
          }

          v240 = v125;
          goto LABEL_103;
        }
      }

      else
      {
        v85 = v301;
        v127 = v303;
        v86 = v304;
        v125 = v286;
      }

      v114 = 8;
      goto LABEL_100;
    case 12:
      v131 = v328;
      if (sub_258FC4134() == 1)
      {
        v132 = v302;
        sub_258FC2A34(v313);
        v85 = v301;
        v133 = v303;
        v86 = v304;
        v134 = v290;
        if (v132)
        {
          v135 = v312;
          if ((*(v303 + 48))(v301, 1, v304) != 1)
          {
            sub_258FB8CC8(v85, &qword_27F9991D8, &qword_258FC5828);
          }

          v136 = sub_258FC4184();
          result = (*(*(v136 - 8) + 8))(v131, v136);
          goto LABEL_174;
        }

        v302 = 0;
        v309 = v313[2];
        v310 = v313[3];
        v311 = v314;
        v307 = v313[0];
        v308 = v313[1];
      }

      else
      {
        v311 = 0;
        v309 = 0u;
        v310 = 0u;
        v307 = 0u;
        v308 = 0u;
        v85 = v301;
        v133 = v303;
        v86 = v304;
        v134 = v290;
      }

      v322[2] = v309;
      v322[3] = v310;
      v323 = v311;
      v322[0] = v307;
      v322[1] = v308;
      v260 = v300[6];
      v261 = v300[7];
      __swift_project_boxed_opaque_existential_1(v300 + 3, v260);
      v262 = v302;
      (*(v261 + 48))(v322, v260, v261);
      if (!v262)
      {
        sub_258FB8CC8(&v307, &qword_27F9990B0, &qword_258FC5058);
LABEL_169:
        v99 = 8;
LABEL_170:
        sub_258FC4164();
        v328 = 0;
        v297(v134, 0, 1, v86);
        v84 = *(v133 + 48);
        if (v84(v85, 1, v86) != 1)
        {
          sub_258FB8CC8(v85, &qword_27F9991D8, &qword_258FC5828);
        }

        v239 = v290;
        goto LABEL_178;
      }

      v306 = v262;
      MEMORY[0x259CA0180](v262);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9991E0, &unk_258FC5830);
      if (swift_dynamicCast())
      {
        MEMORY[0x259CA0170](v262);
        sub_258FB8CC8(&v307, &qword_27F9990B0, &qword_258FC5058);
        v99 = v305;
        v263 = v305;
        MEMORY[0x259CA0170](v306);
        if (v263 != 8)
        {
          goto LABEL_170;
        }

        goto LABEL_169;
      }

      MEMORY[0x259CA0170](v306);
      v281 = 0;
      v278 = 659;
LABEL_221:
      v280 = v278;
LABEL_222:
      result = sub_258FC43D4();
      __break(1u);
      return result;
    case 13:
      v192 = v328;
      if (sub_258FC4134() == 1)
      {
        v193 = sub_258FC4154();
        MEMORY[0x28223BE20](v193, v194);
        v195 = v302;
        v197 = sub_258FC13AC(sub_258FC3638, (&v282 - 4), 0, v196, sub_258FC2364);
        v198 = sub_258FC4154();
        MEMORY[0x28223BE20](v198, v199);
        v280 = v192;
        v201 = sub_258FC13AC(sub_258FC3478, (&v282 - 4), 0, v200, sub_258FC2364);
        v202 = v195;
      }

      else
      {
        v197 = 0;
        v201 = 0;
        v202 = v302;
      }

      v233 = v300[6];
      v234 = v300[7];
      __swift_project_boxed_opaque_existential_1(v300 + 3, v233);
      v235 = v202;
      (*(v234 + 64))(v197, v201, v233, v234);
      v85 = v301;
      v236 = v303;
      v86 = v304;
      if (v235)
      {
        *&v307 = v235;
        MEMORY[0x259CA0180](v235);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9991E0, &unk_258FC5830);
        if ((swift_dynamicCast() & 1) == 0)
        {
          MEMORY[0x259CA0170](v307);
          v281 = 0;
          v280 = 688;
          goto LABEL_222;
        }

        MEMORY[0x259CA0170](v235);
        sub_258FC3438(v197);
        v237 = v306;
        v238 = v306;
        MEMORY[0x259CA0170](v307);
        if (v238 != 8)
        {
          v251 = v287;
LABEL_158:
          sub_258FC4164();
          v328 = 0;
          v297(v251, 0, 1, v86);
          v84 = *(v236 + 48);
          if (v84(v85, 1, v86) != 1)
          {
            sub_258FB8CC8(v85, &qword_27F9991D8, &qword_258FC5828);
          }

          sub_258FC337C(v251, v85);
          if (!v84(v85, 1, v86))
          {
            v258 = v328;
            v259 = sub_258FC18C4(v237);
            if (v258)
            {
              goto LABEL_162;
            }

            v328 = 0;
          }

          goto LABEL_198;
        }
      }

      else
      {
        sub_258FC3438(v197);
      }

      v251 = v287;
      v237 = 8;
      goto LABEL_158;
    case 14:
      v102 = sub_258FC4134();
      v103 = 0uLL;
      v104 = 0uLL;
      if (v102 == 1)
      {
        sub_258FC4104();
        v293 = v105;
        sub_258FC4104();
        v294 = v106;
        sub_258FC4104();
        v292 = v107;
        sub_258FC4104();
        *&v103 = v293;
        *(&v103 + 1) = v294;
        *&v108 = v292;
        *(&v108 + 1) = v109;
        v104 = v108;
      }

      v326[0] = v103;
      v326[1] = v104;
      v327 = v102 != 1;
      v110 = v300[6];
      v111 = v300[7];
      __swift_project_boxed_opaque_existential_1(v300 + 3, v110);
      v112 = v302;
      (*(v111 + 112))(v326, v110, v111);
      v113 = v295;
      if (v112)
      {
        *&v307 = v112;
        MEMORY[0x259CA0180](v112);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9991E0, &unk_258FC5830);
        if ((swift_dynamicCast() & 1) == 0)
        {
          MEMORY[0x259CA0170](v307);
          v281 = 0;
          v280 = 737;
          goto LABEL_222;
        }

        MEMORY[0x259CA0170](v112);
        v114 = v306;
        v115 = v306;
        MEMORY[0x259CA0170](v307);
        v85 = v301;
        v116 = v303;
        v86 = v304;
        if (v115 != 8)
        {
LABEL_95:
          sub_258FC4164();
          v328 = 0;
          v297(v113, 0, 1, v86);
          v84 = *(v116 + 48);
          if (v84(v85, 1, v86) != 1)
          {
            sub_258FB8CC8(v85, &qword_27F9991D8, &qword_258FC5828);
          }

          v240 = v295;
LABEL_103:
          sub_258FC337C(v240, v85);
          if (!v84(v85, 1, v86))
          {
            v87 = v328;
            v88 = sub_258FC18C4(v114);
            if (v87)
            {
LABEL_105:
              v135 = v88;
              result = (v84)(v85, 1, v86);
LABEL_171:
              if (result != 1)
              {
                v220 = v85;
LABEL_173:
                result = sub_258FB8CC8(v220, &qword_27F9991D8, &qword_258FC5828);
              }

LABEL_174:
              *v299 = v135;
              return result;
            }

LABEL_180:
            v328 = v87;
            goto LABEL_198;
          }

          goto LABEL_198;
        }
      }

      else
      {
        v85 = v301;
        v116 = v303;
        v86 = v304;
      }

      v114 = 8;
      goto LABEL_95;
    case 15:
      MEMORY[0x28223BE20](v77, v78);
      v280 = v328;
      v155 = v302;
      v156 = sub_258FC16D0(sub_258FC3620, (&v282 - 4), 0, 57);
      v157 = v300[6];
      v158 = v300[7];
      __swift_project_boxed_opaque_existential_1(v300 + 3, v157);
      (*(v158 + 80))(v156, v157, v158);
      if (v155)
      {
        *&v307 = v155;
        MEMORY[0x259CA0180](v155);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9991E0, &unk_258FC5830);
        v159 = swift_dynamicCast();
        v160 = v294;
        if ((v159 & 1) == 0)
        {
          MEMORY[0x259CA0170](v307);
          v281 = 0;
          v277 = 714;
          goto LABEL_214;
        }

        MEMORY[0x259CA0170](v155);

        v99 = v306;
        v161 = v306;
        MEMORY[0x259CA0170](v307);
        v85 = v301;
        v162 = v303;
        v86 = v304;
        if (v161 != 8)
        {
LABEL_114:
          sub_258FC4164();
          v328 = 0;
          v297(v160, 0, 1, v86);
          v84 = *(v162 + 48);
          if (v84(v85, 1, v86) != 1)
          {
            sub_258FB8CC8(v85, &qword_27F9991D8, &qword_258FC5828);
          }

          v239 = v294;
          goto LABEL_178;
        }
      }

      else
      {

        v85 = v301;
        v162 = v303;
        v86 = v304;
        v160 = v294;
      }

      v99 = 8;
      goto LABEL_114;
    case 16:
      v89 = v328;
      v90 = sub_258FC4154();
      MEMORY[0x28223BE20](v90, v91);
      v280 = v89;
      v92 = v302;
      v94 = sub_258FC13AC(sub_258FC3620, (&v282 - 4), 0, v93, sub_258FC2394);
      v95 = v300[6];
      v96 = v300[7];
      __swift_project_boxed_opaque_existential_1(v300 + 3, v95);
      (*(v96 + 72))(v94, v95, v96);
      if (v92)
      {
        *&v307 = v92;
        MEMORY[0x259CA0180](v92);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9991E0, &unk_258FC5830);
        v97 = swift_dynamicCast();
        v98 = v293;
        if ((v97 & 1) == 0)
        {
          goto LABEL_209;
        }

        MEMORY[0x259CA0170](v92);

        v99 = v306;
        v100 = v306;
        MEMORY[0x259CA0170](v307);
        v85 = v301;
        v101 = v303;
        v86 = v304;
        if (v100 != 8)
        {
LABEL_90:
          sub_258FC4164();
          v328 = 0;
          v297(v98, 0, 1, v86);
          v84 = *(v101 + 48);
          if (v84(v85, 1, v86) != 1)
          {
            sub_258FB8CC8(v85, &qword_27F9991D8, &qword_258FC5828);
          }

          v239 = v293;
          goto LABEL_178;
        }
      }

      else
      {

        v85 = v301;
        v101 = v303;
        v86 = v304;
        v98 = v293;
      }

      v99 = 8;
      goto LABEL_90;
    case 17:
      v183 = v300[7];
      v184 = __swift_project_boxed_opaque_existential_1(v300 + 3, v300[6]);
      MEMORY[0x28223BE20](v184, v185);
      v280 = v328;
      v186 = v302;
      sub_258FC16D0(sub_258FC33FC, (&v282 - 4), 0, 16);
      (*(v183 + 104))();

      v187 = v285;
      sub_258FC4164();
      if (v186)
      {
        goto LABEL_76;
      }

LABEL_72:
      v328 = v186;
      v86 = v304;
      v297(v187, 0, 1, v304);
      v84 = *(v303 + 48);
      v85 = v301;
      if (v84(v301, 1, v86) != 1)
      {
        sub_258FB8CC8(v85, &qword_27F9991D8, &qword_258FC5828);
      }

      sub_258FC337C(v187, v85);
      goto LABEL_198;
    case 18:
      v210 = v300[6];
      v211 = v300[7];
      __swift_project_boxed_opaque_existential_1(v300 + 3, v210);
      (*(v211 + 128))(v210, v211);
      v212 = v283;
      v213 = v302;
      sub_258FC4164();
      if (v213)
      {
        goto LABEL_76;
      }

      v328 = 0;
      v86 = v304;
      v297(v212, 0, 1, v304);
      v84 = *(v303 + 48);
      v85 = v301;
      if (v84(v301, 1, v86) != 1)
      {
        sub_258FB8CC8(v85, &qword_27F9991D8, &qword_258FC5828);
      }

      sub_258FC337C(v212, v85);
      if (!v84(v85, 1, v86))
      {
LABEL_140:
        sub_258FC4194();
      }

      goto LABEL_198;
    case 19:
      v221 = v328;
      v222 = sub_258FC4154();
      MEMORY[0x28223BE20](v222, v223);
      v280 = v221;
      v224 = v302;
      v226 = sub_258FC13AC(sub_258FC3620, (&v282 - 4), 0, v225, sub_258FC2394);
      v227 = v300[6];
      v228 = v300[7];
      __swift_project_boxed_opaque_existential_1(v300 + 3, v227);
      (*(v228 + 16))(v226, v227, v228);
      if (v224)
      {
        *&v307 = v224;
        MEMORY[0x259CA0180](v224);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9991E0, &unk_258FC5830);
        v229 = swift_dynamicCast();
        v230 = v291;
        if ((v229 & 1) == 0)
        {
          MEMORY[0x259CA0170](v307);
          v281 = 0;
          v279 = 615;
          goto LABEL_219;
        }

        MEMORY[0x259CA0170](v224);

        v99 = v306;
        v231 = v306;
        MEMORY[0x259CA0170](v307);
        v85 = v301;
        v232 = v303;
        v86 = v304;
        if (v231 != 8)
        {
LABEL_143:
          sub_258FC4164();
          v328 = 0;
          v297(v230, 0, 1, v86);
          v84 = *(v232 + 48);
          if (v84(v85, 1, v86) != 1)
          {
            sub_258FB8CC8(v85, &qword_27F9991D8, &qword_258FC5828);
          }

          v239 = v291;
LABEL_178:
          sub_258FC337C(v239, v85);
          if (!v84(v85, 1, v86))
          {
            v87 = v328;
            v259 = sub_258FC18C4(v99);
            if (v87)
            {
LABEL_162:
              v135 = v259;
              result = (v84)(v85, 1, v86);
              goto LABEL_171;
            }

            goto LABEL_180;
          }

LABEL_198:
          v273 = (v84)(v85, 1, v86);
          v274 = v273;
          if (v273 == 1)
          {
            v275 = v296;
          }

          else
          {
            v275 = v296;
            if (v273)
            {
              sub_258FB8CC8(v85, &qword_27F9991D8, &qword_258FC5828);
              v274 = 1;
            }

            else
            {
              sub_258FC4204();
              v274 = 0;
            }
          }

          v276 = sub_258FC4234();
          return (*(*(v276 - 8) + 56))(v275, v274, 1, v276);
        }
      }

      else
      {

        v85 = v301;
        v232 = v303;
        v86 = v304;
        v230 = v291;
      }

      v99 = 8;
      goto LABEL_143;
    default:
      v79 = v300[6];
      v80 = v300[7];
      __swift_project_boxed_opaque_existential_1(v300 + 3, v79);
      v81 = (*(v80 + 8))(v79, v80);
      v82 = v302;
      sub_258FC4164();
      if (v82)
      {
LABEL_76:
        v135 = v312;
        v219 = v301;
        result = (*(v303 + 48))(v301, 1, v304);
        if (result == 1)
        {
          goto LABEL_174;
        }

        v220 = v219;
        goto LABEL_173;
      }

      v328 = 0;
      v83 = v304;
      v297(v71, 0, 1, v304);
      v84 = *(v303 + 48);
      v85 = v301;
      if (v84(v301, 1, v83) != 1)
      {
        sub_258FB8CC8(v85, &qword_27F9991D8, &qword_258FC5828);
      }

      sub_258FC337C(v71, v85);
      v86 = v304;
      if (v84(v85, 1, v304))
      {
        goto LABEL_198;
      }

      v87 = v328;
      v88 = sub_258FC12CC(v81);
      if (v87)
      {
        goto LABEL_105;
      }

      goto LABEL_180;
  }
}

uint64_t sub_258FC12CC(uint64_t a1)
{
  if ((a1 & 0xFFFFFFFFFFFFFFFELL) == 0)
  {
    return sub_258FC41F4();
  }

  sub_258FC43B4();
  MEMORY[0x259C9FB70](0xD000000000000041, 0x8000000258FC72E0);
  v2 = sub_258FC44A4();
  MEMORY[0x259C9FB70](v2);

  result = sub_258FC43D4();
  __break(1u);
  return result;
}

uint64_t sub_258FC13AC(void (*a1)(uint64_t *__return_ptr, uint64_t *), uint64_t a2, unint64_t a3, unint64_t a4, void (*a5)(BOOL, uint64_t, uint64_t))
{
  v8 = a4 - a3;
  if (a4 >= a3)
  {
    if ((a4 - a3) < 0)
    {
      goto LABEL_23;
    }

    goto LABEL_5;
  }

  if ((a3 - a4) >= 0)
  {
    v8 = a4 - a3;
LABEL_5:
    v9 = MEMORY[0x277D84F90];
    if (!v8)
    {
      return v9;
    }

    v23 = MEMORY[0x277D84F90];
    a5(0, v8 & ~(v8 >> 63), 0);
    if ((v8 & 0x8000000000000000) == 0)
    {
      v10 = 0;
      v9 = v23;
      v11 = a4 - a3;
      if (a4 < a3)
      {
        v11 = 0;
      }

      v19 = v11 + 1;
      while (1)
      {
        v12 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          break;
        }

        v21 = a3 + v10;
        a1(&v22, &v21);
        if (v5)
        {
          goto LABEL_24;
        }

        v13 = v22;
        v23 = v9;
        v15 = *(v9 + 16);
        v14 = *(v9 + 24);
        if (v15 >= v14 >> 1)
        {
          v17 = v22;
          a5(v14 > 1, v15 + 1, 1);
          v13 = v17;
          v9 = v23;
        }

        *(v9 + 16) = v15 + 1;
        *(v9 + v15 + 32) = v13;
        if (a4 < a3)
        {
          goto LABEL_19;
        }

        if (v19 == ++v10)
        {
          goto LABEL_20;
        }

        if (v12 == v8)
        {
          return v9;
        }
      }

      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
    }

    __break(1u);
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:

  __break(1u);
  return result;
}

char *sub_258FC1540(char *result, uint64_t a2, unint64_t a3, unint64_t a4)
{
  v5 = a4;
  v6 = a3;
  v21 = result;
  v7 = a4 - a3;
  if (a4 < a3)
  {
    if ((a3 - a4) < 0)
    {
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    v7 = a4 - a3;
LABEL_5:
    v8 = MEMORY[0x277D84F90];
    if (!v7)
    {
      return v8;
    }

    v25 = MEMORY[0x277D84F90];
    result = sub_258FC23C4(0, v7 & ~(v7 >> 63), 0);
    if ((v7 & 0x8000000000000000) == 0)
    {
      v9 = 0;
      v8 = v25;
      v10 = v5 - v6;
      if (v5 < v6)
      {
        v10 = 0;
      }

      v19 = v10 + 1;
      v20 = v6;
      v18 = v7;
      while (1)
      {
        v11 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          break;
        }

        v23 = v6 + v9;
        result = (v21)(v24, &v23, &v22);
        if (v4)
        {

          return v22;
        }

        v12 = v5;
        v13 = v24[0];
        v14 = v24[1];
        v25 = v8;
        v16 = *(v8 + 16);
        v15 = *(v8 + 24);
        if (v16 >= v15 >> 1)
        {
          result = sub_258FC23C4((v15 > 1), v16 + 1, 1);
          v8 = v25;
        }

        *(v8 + 16) = v16 + 1;
        v17 = v8 + 16 * v16;
        *(v17 + 32) = v13;
        *(v17 + 40) = v14;
        v5 = v12;
        v6 = v20;
        if (v5 < v20)
        {
          goto LABEL_21;
        }

        if (v19 == ++v9)
        {
          goto LABEL_22;
        }

        if (v11 == v18)
        {
          return v8;
        }
      }

      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
    }

    __break(1u);
    goto LABEL_24;
  }

  if ((a4 - a3) >= 0)
  {
    goto LABEL_5;
  }

LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_258FC16D0(void (*a1)(uint64_t *__return_ptr, uint64_t *), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a4 - a3;
  if (__OFSUB__(a4, a3))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v6 = MEMORY[0x277D84F90];
  if (!v5)
  {
    return v6;
  }

  v20 = MEMORY[0x277D84F90];
  sub_258FC2394(0, v5 & ~(v5 >> 63), 0);
  if ((v5 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v6 = v20;
    v9 = a4;
    if (a4 <= a3)
    {
      v9 = a3;
    }

    v15 = v9 - a3 + 1;
    while (v8 < v5)
    {
      v10 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        goto LABEL_17;
      }

      v18 = a3 + v8;
      a1(&v19, &v18);
      if (v4)
      {
        goto LABEL_22;
      }

      v11 = v19;
      v20 = v6;
      v13 = *(v6 + 16);
      v12 = *(v6 + 24);
      if (v13 >= v12 >> 1)
      {
        sub_258FC2394((v12 > 1), v13 + 1, 1);
        v6 = v20;
      }

      *(v6 + 16) = v13 + 1;
      *(v6 + v13 + 32) = v11;
      if (a4 < a3)
      {
        goto LABEL_18;
      }

      if (v15 == ++v8)
      {
        goto LABEL_19;
      }

      if (v10 == v5)
      {
        return v6;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

LABEL_21:
  __break(1u);
LABEL_22:

  __break(1u);
  return result;
}

uint64_t sub_258FC1844(uint64_t a1, char a2)
{
  if (a2)
  {
    sub_258FC41D4();
    v3 = qword_258FC58D0[a1];
    return sub_258FC41F4();
  }

  else
  {
    sub_258FC41D4();
    v5 = *(a1 + 16);
    result = sub_258FC41F4();
    if (v5)
    {
      v6 = (a1 + 32);
      do
      {
        v7 = *v6++;
        result = sub_258FC41D4();
        --v5;
      }

      while (v5);
    }
  }

  return result;
}

uint64_t sub_258FC18C4(char a1)
{
  if (a1 == 8)
  {
    return sub_258FC41D4();
  }

  sub_258FC41D4();
  return sub_258FC41F4();
}

uint64_t sub_258FC19DC(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    sub_258FC41D4();
    return sub_258FC41F4();
  }

  else
  {
    sub_258FC41D4();
    if (a2)
    {
      sub_258FC41D4();
      LODWORD(result) = sub_258FC21DC(a1, a2);
      if (v3)
      {
        return result;
      }

      else
      {
        return 1;
      }
    }

    else
    {
      return sub_258FC41D4();
    }
  }
}

uint64_t sub_258FC1B38(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
    sub_258FC41D4();
    return sub_258FC41F4();
  }

  else
  {
    sub_258FC41D4();
    if (a3)
    {
      sub_258FC41D4();
      sub_258FC41D4();
      sub_258FC41F4();
      v5 = *(a3 + 16);
      result = sub_258FC41F4();
      if (v5)
      {
        v6 = (a3 + 32);
        do
        {
          v7 = *v6++;
          result = sub_258FC41B4();
          --v5;
        }

        while (v5);
      }
    }

    else
    {
      return sub_258FC41D4();
    }
  }

  return result;
}

uint64_t sub_258FC1CAC()
{
  v1 = *(v0 + 16);

  __swift_destroy_boxed_opaque_existential_1((v0 + 24));

  return MEMORY[0x2821FE8D8](v0, 64, 7);
}

uint64_t sub_258FC1CEC@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *v3;
  result = sub_258FBE830(a1, &v8, a3);
  if (v4)
  {
    *a2 = v8;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MicroFindMyError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
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

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MicroFindMyError(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

__n128 __swift_memcpy65_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_258FC1F20(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 65))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_258FC1F68(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 65) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 65) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_258FC1FE0()
{
  result = qword_27F9991A8;
  if (!qword_27F9991A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9991A8);
  }

  return result;
}

unint64_t sub_258FC2038()
{
  result = qword_27F9991B0;
  if (!qword_27F9991B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9991B0);
  }

  return result;
}

unint64_t sub_258FC2090()
{
  result = qword_27F9991B8;
  if (!qword_27F9991B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9991B8);
  }

  return result;
}

unint64_t sub_258FC20E8()
{
  result = qword_27F9991C0;
  if (!qword_27F9991C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9991C0);
  }

  return result;
}

unint64_t sub_258FC2140()
{
  result = qword_27F9991C8;
  if (!qword_27F9991C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9991C8);
  }

  return result;
}

uint64_t sub_258FC21DC(uint64_t a1, uint64_t a2)
{
  sub_258FC41E4();
  v3 = *(a2 + 16);
  result = sub_258FC41F4();
  if (v3)
  {
    v5 = 0;
    v6 = a2 + 32;
    while (1)
    {
      v7 = (v6 + 16 * v5);
      v8 = *v7;
      if (*(*v7 + 16) != 32)
      {
        break;
      }

      v9 = v7[1];
      ++v5;
      v10 = *v7;

      for (i = 32; i != 64; ++i)
      {
        v12 = *(v8 + i);
        sub_258FC41D4();
      }

      sub_258FC41F4();

      if (v5 == v3)
      {
        return result;
      }
    }

    sub_258FC43B4();
    MEMORY[0x259C9FB70](0x5F2865646F636E65, 0xEA0000000000293ALL);
    MEMORY[0x259C9FB70](0xD000000000000037, 0x8000000258FC7330);
    v14 = *(v8 + 16);
    v13 = sub_258FC44A4();
    MEMORY[0x259C9FB70](v13);

    result = sub_258FC43D4();
    __break(1u);
  }

  return result;
}

char *sub_258FC2364(char *a1, int64_t a2, char a3)
{
  result = sub_258FC23E4(a1, a2, a3, *v3, &qword_27F9991E8, &unk_258FC5840);
  *v3 = result;
  return result;
}

char *sub_258FC2394(char *a1, int64_t a2, char a3)
{
  result = sub_258FC23E4(a1, a2, a3, *v3, &qword_27F999190, &qword_258FC5440);
  *v3 = result;
  return result;
}

char *sub_258FC23C4(char *a1, int64_t a2, char a3)
{
  result = sub_258FC24D0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_258FC23E4(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * v13 - 64;
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  v14 = v12 + 32;
  v15 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v14 >= &v15[v10])
    {
      memmove(v14, v15, v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, v10);
  }

  return v12;
}

char *sub_258FC24D0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9991F8, &qword_258FC5850);
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
    swift_arrayInitWithCopy();
  }

  return v10;
}
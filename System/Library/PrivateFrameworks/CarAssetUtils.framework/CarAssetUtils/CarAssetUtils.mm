uint64_t sub_242BF2750()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_242BF2798()
{
  MEMORY[0x245D23B00](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_242BF27D0()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_242BF2990()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t sub_242BF29D0()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t sub_242BF2A00()
{
  if (*v0)
  {
    result = 0x656D616E656C6966;
  }

  else
  {
    result = 0x4448527369;
  }

  *v0;
  return result;
}

uint64_t sub_242BF2AA8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC13CarAssetUtils15CAUAssetLibrary_customImageArchiveManifest;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t _s13CarAssetUtils19CAUVehicleLayoutKeyO3EndO9hashValueSivg_0()
{
  v1 = *v0;
  sub_242C1A820();
  MEMORY[0x245D23570](v1);
  return sub_242C1A850();
}

uint64_t sub_242BF2BE4()
{
  v1 = *v0;
  sub_242C1A820();
  MEMORY[0x245D23570](v1);
  return sub_242C1A850();
}

uint64_t sub_242BF2C28()
{
  v1 = 0xD000000000000010;
  if (*v0 != 1)
  {
    v1 = 0x6F72665F74616573;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6F72665F74616573;
  }
}

uint64_t sub_242BF2C88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_242BF49FC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_242BF2CC8(uint64_t a1)
{
  v2 = sub_242BF3008();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_242BF2D04(uint64_t a1)
{
  v2 = sub_242BF3008();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t CAUPhysicalControlBarsLayout.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECDDCB0, &qword_242C1B170);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v14 - v7;
  v10 = *v1;
  v9 = v1[1];
  v15 = v1[2];
  v16 = v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_242BF3008();

  sub_242C1A8A0();
  v18 = v10;
  v17 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECDDCC0, &qword_242C1B178);
  sub_242BF3484(&qword_27ECDDCC8, sub_242BF30A4, sub_242BF30F8);
  sub_242C1A6D0();

  if (!v2)
  {
    v12 = v15;
    v18 = v16;
    v17 = 1;
    sub_242C1A6D0();
    v18 = v12;
    v17 = 2;
    sub_242C1A6D0();
  }

  return (*(v5 + 8))(v8, v4);
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

unint64_t sub_242BF3008()
{
  result = qword_27ECDDCB8;
  if (!qword_27ECDDCB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDDCB8);
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

unint64_t sub_242BF30A4()
{
  result = qword_27ECDDCD0;
  if (!qword_27ECDDCD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDDCD0);
  }

  return result;
}

unint64_t sub_242BF30F8()
{
  result = qword_27ECDDCD8;
  if (!qword_27ECDDCD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDDCD8);
  }

  return result;
}

uint64_t CAUPhysicalControlBarsLayout.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECDDCE0, &qword_242C1B180);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v15 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_242BF3008();
  sub_242C1A880();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECDDCC0, &qword_242C1B178);
  v18 = 0;
  sub_242BF3484(&qword_27ECDDCE8, sub_242BF3514, sub_242BF3568);
  sub_242C1A670();
  v16 = a2;
  v17 = v19;
  v18 = 1;
  sub_242C1A670();
  v15 = v19;
  v18 = 2;
  sub_242C1A670();
  (*(v6 + 8))(v9, v5);
  v11 = v19;
  v12 = v16;
  v13 = v15;
  *v16 = v17;
  v12[1] = v13;
  v12[2] = v11;

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

uint64_t sub_242BF3484(unint64_t *a1, void (*a2)(void), void (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECDDCC0, &qword_242C1B178);
    a2();
    a3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_242BF3514()
{
  result = qword_27ECDDCF0;
  if (!qword_27ECDDCF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDDCF0);
  }

  return result;
}

unint64_t sub_242BF3568()
{
  result = qword_27ECDDCF8;
  if (!qword_27ECDDCF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDDCF8);
  }

  return result;
}

unint64_t sub_242BF3604(uint64_t a1)
{
  v4 = *v1;
  v3 = v1[1];
  v5 = v1[2];
  v6 = sub_242C11190(MEMORY[0x277D84F90]);
  if (v4)
  {

    v7 = sub_242BF4CD8(v4, a1);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_242BF4530(v7, 25, isUniquelyReferenced_nonNull_native);
  }

  if (v3)
  {

    v9 = sub_242BF4CD8(v3, a1);

    v10 = swift_isUniquelyReferenced_nonNull_native();
    sub_242BF4530(v9, 27, v10);
  }

  if (v5)
  {

    v11 = sub_242BF4CD8(v5, a1);

    v12 = swift_isUniquelyReferenced_nonNull_native();
    sub_242BF4530(v11, 24, v12);
  }

  return v6;
}

unint64_t sub_242BF3740(uint64_t a1)
{
  v3 = *v1;
  v4 = *(v1 + 2);
  return sub_242BF3604(a1);
}

BOOL sub_242BF377C(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  v4 = *(a3 + 16);
  v5 = (a3 + 32);
  do
  {
    v7 = v4;
    if (v4-- == 0)
    {
      break;
    }

    v9 = *v5;
    if (v9 <= 1)
    {
      if (*v5)
      {
        v10 = 7233894;
      }

      else
      {
        v10 = 0x74617265706D6574;
      }

      if (*v5)
      {
        v11 = 0xE300000000000000;
      }

      else
      {
        v11 = 0xEB00000000657275;
      }

      if (v3 <= 1)
      {
LABEL_32:
        v14 = 0x74617265706D6574;
        v15 = 0xEB00000000657275;
        if (v3)
        {
          v15 = 0xE300000000000000;
          v14 = 7233894;
        }

        goto LABEL_34;
      }
    }

    else if (v9 == 2)
    {
      v11 = 0xE700000000000000;
      v10 = 0x6E614674616573;
      if (v3 <= 1)
      {
        goto LABEL_32;
      }
    }

    else
    {
      if (v9 == 3)
      {
        v10 = 0xD000000000000012;
      }

      else
      {
        v10 = 0x6B6E694C70656564;
      }

      if (v9 == 3)
      {
        v11 = 0x8000000242C208B0;
      }

      else
      {
        v11 = 0xE800000000000000;
      }

      if (v3 <= 1)
      {
        goto LABEL_32;
      }
    }

    v12 = 0xD000000000000012;
    if (v3 == 3)
    {
      v13 = 0x8000000242C208B0;
    }

    else
    {
      v12 = 0x6B6E694C70656564;
      v13 = 0xE800000000000000;
    }

    if (v3 == 2)
    {
      v14 = 0x6E614674616573;
    }

    else
    {
      v14 = v12;
    }

    if (v3 == 2)
    {
      v15 = 0xE700000000000000;
    }

    else
    {
      v15 = v13;
    }

LABEL_34:
    if (v10 == v14 && v11 == v15)
    {

      return v7 != 0;
    }

    v6 = sub_242C1A740();

    ++v5;
  }

  while ((v6 & 1) == 0);
  return v7 != 0;
}

CarAssetUtils::CAUPhysicalControlBarsButton_optional __swiftcall CAUPhysicalControlBarsButton.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_242C1A650();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t CAUPhysicalControlBarsButton.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x74617265706D6574;
  v3 = 0x6E614674616573;
  v4 = 0xD000000000000012;
  if (v1 != 3)
  {
    v4 = 0x6B6E694C70656564;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 7233894;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_242BF3A60()
{
  result = qword_27ECDDD00;
  if (!qword_27ECDDD00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDDD00);
  }

  return result;
}

uint64_t sub_242BF3AB4()
{
  v1 = *v0;
  sub_242C1A820();
  sub_242C1A4B0();

  return sub_242C1A850();
}

uint64_t sub_242BF3B9C()
{
  *v0;
  *v0;
  *v0;
  sub_242C1A4B0();
}

uint64_t sub_242BF3C70()
{
  v1 = *v0;
  sub_242C1A820();
  sub_242C1A4B0();

  return sub_242C1A850();
}

void sub_242BF3D60(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEB00000000657275;
  v4 = 0x74617265706D6574;
  v5 = 0xE700000000000000;
  v6 = 0x6E614674616573;
  v7 = 0x8000000242C208B0;
  v8 = 0xD000000000000012;
  if (v2 != 3)
  {
    v8 = 0x6B6E694C70656564;
    v7 = 0xE800000000000000;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 7233894;
    v3 = 0xE300000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t sub_242BF3EB4(uint64_t a1, uint64_t a2)
{
  v4 = sub_242BF4B2C();

  return MEMORY[0x2821FC220](a1, a2, v4);
}

uint64_t sub_242BF3F08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_242BF4B2C();

  return MEMORY[0x2821FC228](a1, a4, a2, a5, v10, a3);
}

unint64_t sub_242BF3F88()
{
  result = qword_27ECDDD08;
  if (!qword_27ECDDD08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECDDD10, &qword_242C1B2F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDDD08);
  }

  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_242BF4010(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_242BF406C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CAUPhysicalControlBarsButton(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CAUPhysicalControlBarsButton(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t getEnumTagSinglePayload for CAUWidgetContentMargins(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for CAUWidgetContentMargins(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 16) = v3;
  return result;
}

void type metadata accessor for CGSize()
{
  if (!qword_27ECDDD18)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_27ECDDD18);
    }
  }
}

uint64_t getEnumTagSinglePayload for CAUPhysicalControlBarsLayout.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CAUPhysicalControlBarsLayout.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_242BF442C()
{
  result = qword_27ECDDD20;
  if (!qword_27ECDDD20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDDD20);
  }

  return result;
}

unint64_t sub_242BF4484()
{
  result = qword_27ECDDD28;
  if (!qword_27ECDDD28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDDD28);
  }

  return result;
}

unint64_t sub_242BF44DC()
{
  result = qword_27ECDDD30;
  if (!qword_27ECDDD30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDDD30);
  }

  return result;
}

unint64_t sub_242BF4530(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_242BFA00C(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      sub_242BFA17C(v14, a3 & 1);
      v18 = *v4;
      result = sub_242BFA00C(a2);
      if ((v15 & 1) != (v19 & 1))
      {
LABEL_16:
        result = sub_242C1A7D0();
        __break(1u);
        return result;
      }
    }

    else
    {
      v17 = result;
      sub_242BFBF38();
      result = v17;
    }
  }

  v20 = *v4;
  if ((v15 & 1) == 0)
  {
    v20[(result >> 6) + 8] |= 1 << result;
    *(v20[6] + result) = a2;
    *(v20[7] + 8 * result) = a1;
    v23 = v20[2];
    v13 = __OFADD__(v23, 1);
    v24 = v23 + 1;
    if (!v13)
    {
      v20[2] = v24;
      return result;
    }

    goto LABEL_15;
  }

  v21 = v20[7];
  v22 = *(v21 + 8 * result);
  *(v21 + 8 * result) = a1;
}

void *sub_242BF467C(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v8 = sub_242BF4B80(v7, a2, a3, a4);
    swift_bridgeObjectRelease_n();

    return v8;
  }

  return result;
}

uint64_t sub_242BF4718(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECDDD40, &unk_242C1B520);
  result = sub_242C1A640();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 64;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(*(v4 + 48) + v16);
    v18 = *(v4 + 56) + 12 * v16;
    v31 = *v18;
    v19 = *(v18 + 4);
    v20 = *(v9 + 40);
    sub_242C1A820();
    sub_242C1A4B0();

    result = sub_242C1A850();
    v21 = -1 << *(v9 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
    {
      v25 = 0;
      v26 = (63 - v21) >> 6;
      while (++v23 != v26 || (v25 & 1) == 0)
      {
        v27 = v23 == v26;
        if (v23 == v26)
        {
          v23 = 0;
        }

        v25 |= v27;
        v28 = *(v12 + 8 * v23);
        if (v28 != -1)
        {
          v24 = __clz(__rbit64(~v28)) + (v23 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    *(*(v9 + 48) + v24) = v17;
    v29 = *(v9 + 56) + 12 * v24;
    *v29 = v31;
    *(v29 + 4) = v19;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    if (!v5)
    {
      return v9;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_242BF49FC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0x6F72665F74616573 && a2 == 0xEF7466656C5F746ELL;
  if (v3 || (sub_242C1A740() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000242C20C50 == a2 || (sub_242C1A740() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6F72665F74616573 && a2 == 0xEA0000000000746ELL)
  {

    return 2;
  }

  else
  {
    v6 = sub_242C1A740();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

unint64_t sub_242BF4B2C()
{
  result = qword_27ECDDD38;
  if (!qword_27ECDDD38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDDD38);
  }

  return result;
}

uint64_t sub_242BF4B80(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22 = result;
  v7 = 0;
  v8 = 0;
  v9 = a3 + 64;
  v10 = 1 << *(a3 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(a3 + 64);
  v13 = (v10 + 63) >> 6;
  while (v12)
  {
    v14 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_11:
    v17 = v14 | (v8 << 6);
    v18 = *(a3 + 56);
    v25 = *(*(a3 + 48) + v17);
    v19 = (v18 + 12 * v17);
    v23[0] = *v19;
    v24 = *(v19 + 4);
    result = sub_242BF377C(&v25, v23, a4);
    if (v4)
    {
      return result;
    }

    if (result)
    {
      *(v22 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      if (__OFADD__(v7++, 1))
      {
        __break(1u);
        return sub_242BF4718(v22, a2, v7, a3);
      }
    }
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
      return sub_242BF4718(v22, a2, v7, a3);
    }

    v16 = *(v9 + 8 * v8);
    ++v15;
    if (v16)
    {
      v14 = __clz(__rbit64(v16));
      v12 = (v16 - 1) & v16;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_242BF4CD8(uint64_t a1, uint64_t a2)
{
  v14[1] = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 32);
  v6 = v5 & 0x3F;
  v7 = ((1 << v5) + 63) >> 6;
  v8 = 8 * v7;
  v9 = swift_bridgeObjectRetain_n();
  if (v6 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v13 = swift_slowAlloc();

      v10 = sub_242BF467C(v13, v7, a1, a2);
      MEMORY[0x245D23AC0](v13, -1, -1);
      swift_bridgeObjectRelease_n();
      goto LABEL_6;
    }
  }

  MEMORY[0x28223BE20](v9);
  bzero(v14 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0), v8);

  v10 = sub_242BF4B80(v14 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0), v7, a1, a2);

  if (v2)
  {
    swift_willThrow();
  }

  swift_bridgeObjectRelease_n();
LABEL_6:
  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

uint64_t sub_242BF4EB8()
{
  sub_242C1A820();
  MEMORY[0x245D23570](0);
  return sub_242C1A850();
}

uint64_t sub_242BF4EFC()
{
  sub_242C1A820();
  MEMORY[0x245D23570](0);
  return sub_242C1A850();
}

uint64_t sub_242BF4F58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6F74616369646E69 && a2 == 0xEA00000000007372)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_242C1A740();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_242BF4FE8(uint64_t a1)
{
  v2 = sub_242BF5204();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_242BF5024(uint64_t a1)
{
  v2 = sub_242BF5204();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t CAUAppDockIndicators.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECDDD48, &qword_242C1B530);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v11 - v6;
  v8 = *v1;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_242BF5204();

  sub_242C1A8A0();
  v11[1] = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECDDD58, &qword_242C1B538);
  sub_242BF545C(&qword_27ECDDD60, sub_242BF5258);
  sub_242C1A710();

  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_242BF5204()
{
  result = qword_27ECDDD50;
  if (!qword_27ECDDD50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDDD50);
  }

  return result;
}

unint64_t sub_242BF5258()
{
  result = qword_27ECDDD68;
  if (!qword_27ECDDD68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDDD68);
  }

  return result;
}

uint64_t CAUAppDockIndicators.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECDDD70, &qword_242C1B540);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v12 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_242BF5204();
  sub_242C1A880();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECDDD58, &qword_242C1B538);
    sub_242BF545C(&qword_27ECDDD78, sub_242BF54D4);
    sub_242C1A6B0();
    (*(v6 + 8))(v9, v5);
    *a2 = v12[1];
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_242BF545C(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECDDD58, &qword_242C1B538);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_242BF54D4()
{
  result = qword_27ECDDD80;
  if (!qword_27ECDDD80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDDD80);
  }

  return result;
}

CarAssetUtils::CAUAppDockIndicator_optional __swiftcall CAUAppDockIndicator.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_242C1A650();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t CAUAppDockIndicator.rawValue.getter()
{
  *v0;
  if (*v0)
  {
    return 0x65696873646E6977;
  }

  else
  {
    return 0x7461654874616573;
  }
}

uint64_t sub_242BF563C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xEF746E6F7246646CLL;
  if (v2 != 1)
  {
    v3 = 0xEE0072616552646CLL;
  }

  if (*a1)
  {
    v4 = 0x65696873646E6977;
  }

  else
  {
    v4 = 0x7461654874616573;
  }

  if (v2)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0xEB00000000676E69;
  }

  v6 = 0xEF746E6F7246646CLL;
  if (*a2 != 1)
  {
    v6 = 0xEE0072616552646CLL;
  }

  if (*a2)
  {
    v7 = 0x65696873646E6977;
  }

  else
  {
    v7 = 0x7461654874616573;
  }

  if (*a2)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0xEB00000000676E69;
  }

  if (v4 == v7 && v5 == v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_242C1A740();
  }

  return v9 & 1;
}

unint64_t sub_242BF5740()
{
  result = qword_27ECDDD88;
  if (!qword_27ECDDD88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDDD88);
  }

  return result;
}

uint64_t sub_242BF5794()
{
  v1 = *v0;
  sub_242C1A820();
  sub_242C1A4B0();

  return sub_242C1A850();
}

uint64_t sub_242BF5858()
{
  *v0;
  *v0;
  sub_242C1A4B0();
}

uint64_t sub_242BF5908()
{
  v1 = *v0;
  sub_242C1A820();
  sub_242C1A4B0();

  return sub_242C1A850();
}

void sub_242BF59D4(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEB00000000676E69;
  v4 = 0xEF746E6F7246646CLL;
  if (v2 != 1)
  {
    v4 = 0xEE0072616552646CLL;
  }

  v5 = v2 == 0;
  if (*v1)
  {
    v6 = 0x65696873646E6977;
  }

  else
  {
    v6 = 0x7461654874616573;
  }

  if (!v5)
  {
    v3 = v4;
  }

  *a1 = v6;
  a1[1] = v3;
}

uint64_t sub_242BF5B04(uint64_t a1, uint64_t a2)
{
  v4 = sub_242BF5EEC();

  return MEMORY[0x2821FC220](a1, a2, v4);
}

uint64_t sub_242BF5B58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_242BF5EEC();

  return MEMORY[0x2821FC228](a1, a4, a2, a5, v10, a3);
}

unint64_t sub_242BF5BD8()
{
  result = qword_27ECDDD90;
  if (!qword_27ECDDD90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECDDD58, &qword_242C1B538);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDDD90);
  }

  return result;
}

uint64_t sub_242BF5C58(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t sub_242BF5CA0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CAUAppDockIndicators.CodingKeys(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for CAUAppDockIndicators.CodingKeys(_WORD *result, int a2, int a3)
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

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

unint64_t sub_242BF5DE8()
{
  result = qword_27ECDDD98;
  if (!qword_27ECDDD98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDDD98);
  }

  return result;
}

unint64_t sub_242BF5E40()
{
  result = qword_27ECDDDA0;
  if (!qword_27ECDDDA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDDDA0);
  }

  return result;
}

unint64_t sub_242BF5E98()
{
  result = qword_27ECDDDA8;
  if (!qword_27ECDDDA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDDDA8);
  }

  return result;
}

unint64_t sub_242BF5EEC()
{
  result = qword_27ECDDDB0;
  if (!qword_27ECDDDB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDDDB0);
  }

  return result;
}

id sub_242BF5F80()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CAUServices();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

CarAssetUtils::CAUCustomImageArchiveManifest::ImageData::Appearance_optional __swiftcall CAUCustomImageArchiveManifest.ImageData.Appearance.init(rawValue:)(CarAssetUtils::CAUCustomImageArchiveManifest::ImageData::Appearance_optional rawValue)
{
  if (rawValue.value == CarAssetUtils_CAUCustomImageArchiveManifest_ImageData_Appearance_dark)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (rawValue.value == CarAssetUtils_CAUCustomImageArchiveManifest_ImageData_Appearance_light)
  {
    v2 = 0;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_242BF6004()
{
  v1 = *v0;
  sub_242C1A820();
  sub_242C1A840();
  return sub_242C1A850();
}

uint64_t sub_242BF6078()
{
  v1 = *v0;
  sub_242C1A820();
  sub_242C1A840();
  return sub_242C1A850();
}

_BYTE *sub_242BF60BC@<X0>(_BYTE *result@<X0>, char *a2@<X8>)
{
  if (*result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  return result;
}

uint64_t CAUCustomImageArchiveManifest.ImageData.Property.fileName.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t static CAUCustomImageArchiveManifest.ImageData.Property.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a2 + 16);
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8))
  {
    return v2 ^ v3 ^ 1u;
  }

  v5 = sub_242C1A740();
  result = 0;
  if (v5)
  {
    return v2 ^ v3 ^ 1u;
  }

  return result;
}

uint64_t sub_242BF61E4()
{
  if (*v0)
  {
    result = 0x6E61726165707061;
  }

  else
  {
    result = 0x656D614E656C6966;
  }

  *v0;
  return result;
}

uint64_t sub_242BF6224@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x656D614E656C6966 && a2 == 0xE800000000000000;
  if (v6 || (sub_242C1A740() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6E61726165707061 && a2 == 0xEA00000000006563)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_242C1A740();

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

uint64_t sub_242BF6308(uint64_t a1)
{
  v2 = sub_242BF6574();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_242BF6344(uint64_t a1)
{
  v2 = sub_242BF6574();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t CAUCustomImageArchiveManifest.ImageData.Property.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v17 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_242BF6574();
  sub_242C1A880();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v20 = 0;
  v11 = sub_242C1A680();
  v13 = v12;
  v14 = v11;
  v18 = 1;
  sub_242BF65C8();
  sub_242C1A6B0();
  (*(v6 + 8))(v9, v5);
  v15 = v19;
  *a2 = v14;
  *(a2 + 8) = v13;
  *(a2 + 16) = v15;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_242BF6574()
{
  result = qword_27ECDDDC0;
  if (!qword_27ECDDDC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDDDC0);
  }

  return result;
}

unint64_t sub_242BF65C8()
{
  result = qword_27ECDDDC8;
  if (!qword_27ECDDDC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDDDC8);
  }

  return result;
}

uint64_t sub_242BF6634(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a2 + 16);
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8))
  {
    return v2 ^ v3 ^ 1u;
  }

  v5 = sub_242C1A740();
  result = 0;
  if (v5)
  {
    return v2 ^ v3 ^ 1u;
  }

  return result;
}

uint64_t CAUCustomImageArchiveManifest.ImageData.symbolName.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t static CAUCustomImageArchiveManifest.ImageData.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a2[2];
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_242C1A740() & 1) == 0)
  {
    return 0;
  }

  return sub_242BF6740(v2, v3);
}

uint64_t sub_242BF6740(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a2 + 48);
    v4 = (a1 + 48);
    do
    {
      v5 = *v4;
      v6 = *v3;
      if (*(v4 - 2) == *(v3 - 2) && *(v4 - 1) == *(v3 - 1))
      {
        if (v5 != v6)
        {
          return 0;
        }
      }

      else
      {
        v8 = sub_242C1A740();
        result = 0;
        if (v8 & 1) == 0 || ((v5 ^ v6))
        {
          return result;
        }
      }

      v3 += 24;
      v4 += 24;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t sub_242BF67FC()
{
  if (*v0)
  {
    result = 0x69747265706F7270;
  }

  else
  {
    result = 0x614E6C6F626D7973;
  }

  *v0;
  return result;
}

uint64_t sub_242BF683C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x614E6C6F626D7973 && a2 == 0xEA0000000000656DLL;
  if (v6 || (sub_242C1A740() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x69747265706F7270 && a2 == 0xEA00000000007365)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_242C1A740();

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

uint64_t sub_242BF691C(uint64_t a1)
{
  v2 = sub_242BF6BE8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_242BF6958(uint64_t a1)
{
  v2 = sub_242BF6BE8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t CAUCustomImageArchiveManifest.ImageData.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECDDDD0, &qword_242C1B888);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v17 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_242BF6BE8();
  sub_242C1A880();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v22 = 0;
  v11 = sub_242C1A680();
  v13 = v12;
  v18 = a2;
  v19 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECDDDE0, &qword_242C1B890);
  v21 = 1;
  sub_242BF7034(&qword_27ECDDDE8, &qword_27ECDDDE0, &qword_242C1B890, sub_242BF6C3C);
  sub_242C1A6B0();
  (*(v6 + 8))(v9, v5);
  v14 = v20;
  v15 = v18;
  *v18 = v19;
  v15[1] = v13;
  v15[2] = v14;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_242BF6BE8()
{
  result = qword_27ECDDDD8;
  if (!qword_27ECDDDD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDDDD8);
  }

  return result;
}

unint64_t sub_242BF6C3C()
{
  result = qword_27ECDDDF0;
  if (!qword_27ECDDDF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDDDF0);
  }

  return result;
}

uint64_t sub_242BF6CA8(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a2[2];
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_242C1A740() & 1) == 0)
  {
    return 0;
  }

  return sub_242BF6740(v2, v3);
}

uint64_t sub_242BF6D38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x736567616D69 && a2 == 0xE600000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_242C1A740();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_242BF6DBC(uint64_t a1)
{
  v2 = sub_242BF6FE0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_242BF6DF8(uint64_t a1)
{
  v2 = sub_242BF6FE0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t CAUCustomImageArchiveManifest.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECDDDF8, &qword_242C1B898);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v12 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_242BF6FE0();
  sub_242C1A880();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECDDE08, &qword_242C1B8A0);
    sub_242BF7034(&qword_27ECDDE10, &qword_27ECDDE08, &qword_242C1B8A0, sub_242BF70B0);
    sub_242C1A6B0();
    (*(v6 + 8))(v9, v5);
    *a2 = v12[1];
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_242BF6FE0()
{
  result = qword_27ECDDE00;
  if (!qword_27ECDDE00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDDE00);
  }

  return result;
}

uint64_t sub_242BF7034(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_242BF70B0()
{
  result = qword_27ECDDE18;
  if (!qword_27ECDDE18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDDE18);
  }

  return result;
}

unint64_t sub_242BF7108()
{
  result = qword_27ECDDE20;
  if (!qword_27ECDDE20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDDE20);
  }

  return result;
}

uint64_t sub_242BF7184(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_242BF71CC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_242BF7240(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
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

uint64_t sub_242BF7288(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CAUBaselineAnchor.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t _s8SettingsVwst(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_242BF744C()
{
  result = qword_27ECDDE28;
  if (!qword_27ECDDE28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDDE28);
  }

  return result;
}

unint64_t sub_242BF74A4()
{
  result = qword_27ECDDE30;
  if (!qword_27ECDDE30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDDE30);
  }

  return result;
}

unint64_t sub_242BF74FC()
{
  result = qword_27ECDDE38;
  if (!qword_27ECDDE38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDDE38);
  }

  return result;
}

unint64_t sub_242BF7554()
{
  result = qword_27ECDDE40;
  if (!qword_27ECDDE40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDDE40);
  }

  return result;
}

unint64_t sub_242BF75AC()
{
  result = qword_27ECDDE48;
  if (!qword_27ECDDE48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDDE48);
  }

  return result;
}

unint64_t sub_242BF7604()
{
  result = qword_27ECDDE50;
  if (!qword_27ECDDE50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDDE50);
  }

  return result;
}

unint64_t sub_242BF765C()
{
  result = qword_27ECDDE58;
  if (!qword_27ECDDE58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDDE58);
  }

  return result;
}

unint64_t sub_242BF76B4()
{
  result = qword_27ECDDE60;
  if (!qword_27ECDDE60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDDE60);
  }

  return result;
}

unint64_t sub_242BF770C()
{
  result = qword_27ECDDE68;
  if (!qword_27ECDDE68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDDE68);
  }

  return result;
}

unint64_t sub_242BF7760()
{
  result = qword_27ECDDE70;
  if (!qword_27ECDDE70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDDE70);
  }

  return result;
}

uint64_t CAUVehicleLayout.identifier.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

__n128 CAUVehicleLayout.widgetContentMargins.getter@<Q0>(__n128 *a1@<X8>)
{
  result = v1[1];
  *a1 = result;
  return result;
}

__n128 CAUVehicleLayout.topDownExteriorImage.getter@<Q0>(__n128 *a1@<X8>)
{
  v2 = v1[3].n128_u64[0];
  v3 = v1[3].n128_u8[8];
  result = v1[2];
  *a1 = result;
  a1[1].n128_u64[0] = v2;
  a1[1].n128_u8[8] = v3;
  return result;
}

__n128 CAUVehicleLayout.body.getter@<Q0>(__n128 *a1@<X8>)
{
  v2 = *(v1 + 76);
  v3 = *(v1 + 84);
  result = *(v1 + 60);
  *a1 = result;
  a1[1].n128_u64[0] = v2;
  a1[1].n128_u8[8] = v3;
  return result;
}

__n128 CAUVehicleLayout.cabinSeatsImage.getter@<Q0>(__n128 *a1@<X8>)
{
  v2 = *(v1 + 104);
  v3 = *(v1 + 112);
  result = *(v1 + 88);
  *a1 = result;
  a1[1].n128_u64[0] = v2;
  a1[1].n128_u8[8] = v3;
  return result;
}

__n128 CAUVehicleLayout.topDownInteriorImage.getter@<Q0>(__n128 *a1@<X8>)
{
  v2 = *(v1 + 132);
  v3 = *(v1 + 140);
  result = *(v1 + 116);
  *a1 = result;
  a1[1].n128_u64[0] = v2;
  a1[1].n128_u8[8] = v3;
  return result;
}

__n128 CAUVehicleLayout.cabin.getter@<Q0>(__n128 *a1@<X8>)
{
  v2 = v1[10].n128_u64[0];
  v3 = v1[10].n128_u8[8];
  result = v1[9];
  *a1 = result;
  a1[1].n128_u64[0] = v2;
  a1[1].n128_u8[8] = v3;
  return result;
}

__n128 CAUVehicleLayout.init(identifier:widgetContentMargins:topDownExteriorImage:cabinSeatsImage:topDownInteriorImage:body:cabin:infos:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X2>, __int128 *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, __n128 *a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v10 = *(a4 + 2);
  v11 = *(a4 + 24);
  v12 = *(a5 + 16);
  v13 = *(a5 + 24);
  v14 = *(a6 + 16);
  v15 = *(a6 + 24);
  v16 = *(a7 + 16);
  v17 = *(a7 + 24);
  v18 = a8[1].n128_u64[0];
  v19 = a8[1].n128_u8[8];
  *a9 = a1;
  *(a9 + 8) = a2;
  v20 = *a4;
  *(a9 + 16) = *a3;
  *(a9 + 32) = v20;
  *(a9 + 48) = v10;
  *(a9 + 56) = v11;
  *(a9 + 60) = *a7;
  *(a9 + 76) = v16;
  *(a9 + 84) = v17;
  *(a9 + 88) = *a5;
  *(a9 + 104) = v12;
  *(a9 + 112) = v13;
  *(a9 + 116) = *a6;
  *(a9 + 132) = v14;
  *(a9 + 140) = v15;
  result = *a8;
  *(a9 + 144) = *a8;
  *(a9 + 160) = v18;
  *(a9 + 168) = v19;
  *(a9 + 176) = a10;
  return result;
}

unint64_t sub_242BF7938()
{
  v1 = *v0;
  v2 = 0x696669746E656469;
  v3 = 0x6E69626163;
  if (v1 != 6)
  {
    v3 = 0x736F666E69;
  }

  v4 = 0x6165536E69626163;
  if (v1 != 4)
  {
    v4 = 0xD000000000000014;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0xD000000000000014;
  if (v1 != 2)
  {
    v5 = 2036625250;
  }

  if (*v0)
  {
    v2 = 0xD000000000000014;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_242BF7A40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_242BF8FA8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_242BF7A74(uint64_t a1)
{
  v2 = sub_242BF7FA4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_242BF7AB0(uint64_t a1)
{
  v2 = sub_242BF7FA4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t CAUVehicleLayout.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECDDE78, &qword_242C1BE30);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v29 - v6;
  v9 = *v1;
  v8 = v1[1];
  v10 = v1[2];
  v48 = v1[3];
  v49 = v10;
  v11 = v1[4];
  v42 = v1[5];
  v43 = v11;
  v12 = v1[6];
  v55 = *(v1 + 56);
  v13 = *(v1 + 60);
  v14 = *(v1 + 68);
  v46 = *(v1 + 76);
  v47 = v12;
  v45 = *(v1 + 84);
  v15 = v1[11];
  v16 = v1[12];
  v44 = v1[13];
  v41 = *(v1 + 112);
  v17 = *(v1 + 116);
  v18 = *(v1 + 124);
  v39 = *(v1 + 132);
  v40 = *(v1 + 140);
  v19 = v1[18];
  v20 = v1[19];
  v37 = v1[20];
  v38 = *(v1 + 168);
  v36 = v1[22];
  v21 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_242BF7FA4();
  sub_242C1A8A0();
  LOBYTE(v51) = 0;
  v22 = v50;
  sub_242C1A6E0();
  if (!v22)
  {
    v23 = v55;
    v25 = v46;
    v24 = v47;
    v26 = v45;
    v35 = v14;
    v50 = v13;
    v27 = v44;
    v33 = v16;
    v34 = v15;
    v31 = v18;
    v32 = v17;
    v29 = v20;
    v30 = v19;
    v51 = v49;
    v52 = v48;
    v56 = 1;
    sub_242BF7FF8();
    sub_242C1A710();
    v51 = v43;
    v52 = v42;
    v53 = v24;
    v54 = v23;
    v56 = 2;
    sub_242BF804C();
    sub_242C1A710();
    v51 = v50;
    v52 = v35;
    v53 = v25;
    v54 = v26;
    v56 = 3;
    sub_242C1A710();
    v51 = v34;
    v52 = v33;
    v53 = v27;
    v54 = v41;
    v56 = 4;
    sub_242C1A710();
    v51 = v32;
    v52 = v31;
    v53 = v39;
    v54 = v40;
    v56 = 5;
    sub_242C1A710();
    v51 = v30;
    v52 = v29;
    v53 = v37;
    v54 = v38;
    v56 = 6;
    sub_242C1A710();
    v51 = v36;
    v56 = 7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECDDE98, &qword_242C1BE38);
    sub_242BF88E4(&qword_27ECDDEA0, sub_242BF80A0, sub_242BF804C);
    sub_242C1A710();
  }

  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_242BF7FA4()
{
  result = qword_27ECDDE80;
  if (!qword_27ECDDE80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDDE80);
  }

  return result;
}

unint64_t sub_242BF7FF8()
{
  result = qword_27ECDDE88;
  if (!qword_27ECDDE88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDDE88);
  }

  return result;
}

unint64_t sub_242BF804C()
{
  result = qword_27ECDDE90;
  if (!qword_27ECDDE90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDDE90);
  }

  return result;
}

unint64_t sub_242BF80A0()
{
  result = qword_27ECDDEA8;
  if (!qword_27ECDDEA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDDEA8);
  }

  return result;
}

uint64_t CAUVehicleLayout.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECDDEB0, &qword_242C1BE40);
  v5 = *(v60 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v60);
  v8 = &v35 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_242BF7FA4();
  v125 = v8;
  sub_242C1A880();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v10 = v5;
  LOBYTE(v71) = 0;
  v11 = v60;
  v12 = sub_242C1A680();
  v14 = v13;
  v59 = v12;
  LOBYTE(v61) = 1;
  sub_242BF883C();
  sub_242C1A6B0();
  v15 = v71;
  LOBYTE(v61) = 2;
  v58 = sub_242BF8890();
  sub_242C1A6B0();
  v16 = a1;
  v55 = DWORD1(v71);
  v56 = v71;
  v57 = *(&v71 + 1);
  v17 = v72;
  v124 = BYTE8(v72);
  LOBYTE(v61) = 3;
  sub_242C1A6B0();
  v54 = v17;
  v53 = v71;
  v51 = HIDWORD(v71);
  v52 = DWORD2(v71);
  v18 = v72;
  v121 = BYTE8(v72);
  LOBYTE(v61) = 4;
  sub_242C1A6B0();
  v50 = v18;
  v49 = v71;
  v47 = HIDWORD(v71);
  v48 = DWORD2(v71);
  v19 = v72;
  v118 = BYTE8(v72);
  LOBYTE(v61) = 5;
  sub_242C1A6B0();
  v46 = v19;
  v45 = v71;
  v43 = HIDWORD(v71);
  v44 = DWORD2(v71);
  v20 = v72;
  v115 = BYTE8(v72);
  LOBYTE(v61) = 6;
  sub_242C1A6B0();
  v58 = v20;
  LODWORD(v20) = v71;
  v41 = DWORD2(v71);
  v42 = DWORD1(v71);
  v40 = HIDWORD(v71);
  v39 = v72;
  v112 = BYTE8(v72);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECDDE98, &qword_242C1BE38);
  v109 = 7;
  sub_242BF88E4(&qword_27ECDDEC8, sub_242BF8974, sub_242BF8890);
  sub_242C1A6B0();
  (*(v10 + 8))(v125, v11);
  v21 = v110;
  v22 = v20;
  v38 = v20;
  v23 = v59;
  *&v61 = v59;
  *(&v61 + 1) = v14;
  v62 = v15;
  LODWORD(v10) = v55;
  LODWORD(v11) = v56;
  *&v63 = __PAIR64__(v55, v56);
  *(&v63 + 1) = v57;
  *v64 = v54;
  v35 = v124;
  v64[8] = v124;
  *&v64[12] = v53;
  *&v64[20] = __PAIR64__(v51, v52);
  *&v64[28] = v50;
  v36 = v121;
  v64[36] = v121;
  *&v64[40] = v49;
  *&v65 = __PAIR64__(v47, v48);
  *(&v65 + 1) = v46;
  v37 = v118;
  LOBYTE(v66) = v118;
  *(&v66 + 4) = v45;
  HIDWORD(v66) = v44;
  LODWORD(v67) = v43;
  *(&v67 + 4) = v58;
  LODWORD(v60) = v115;
  BYTE12(v67) = v115;
  *&v68 = __PAIR64__(v42, v22);
  *(&v68 + 1) = __PAIR64__(v40, v41);
  *&v69 = v39;
  LODWORD(v125) = v112;
  BYTE8(v69) = v112;
  v24 = v67;
  v25 = v68;
  v26 = v69;
  *(a2 + 176) = v110;
  *(a2 + 144) = v25;
  *(a2 + 160) = v26;
  v27 = v61;
  v28 = v62;
  v29 = *v64;
  *(a2 + 32) = v63;
  *(a2 + 48) = v29;
  *a2 = v27;
  *(a2 + 16) = v28;
  v30 = *&v64[16];
  v31 = *&v64[32];
  v32 = v65;
  *(a2 + 112) = v66;
  *(a2 + 128) = v24;
  *(a2 + 80) = v31;
  *(a2 + 96) = v32;
  *(a2 + 64) = v30;
  v70 = v21;
  v33 = v21;
  sub_242BF89C8(&v61, &v71);
  __swift_destroy_boxed_opaque_existential_1(v16);
  *&v71 = v23;
  *(&v71 + 1) = v14;
  v73 = v11;
  v74 = v10;
  v72 = v15;
  v75 = v57;
  v76 = v54;
  v77 = v35;
  v78 = v122;
  v79 = v123;
  v80 = v53;
  v81 = v52;
  v82 = v51;
  v83 = v50;
  v84 = v36;
  v85 = v119;
  v86 = v120;
  v87 = v49;
  v88 = v48;
  v89 = v47;
  v90 = v46;
  v91 = v37;
  v92 = v116;
  v93 = v117;
  v94 = v45;
  v95 = v44;
  v96 = v43;
  v97 = v58;
  v98 = v60;
  v100 = v114;
  v99 = v113;
  v101 = v38;
  v102 = v42;
  v103 = v41;
  v104 = v40;
  v105 = v39;
  v106 = v125;
  *&v107[3] = *&v111[3];
  *v107 = *v111;
  v108 = v33;
  return sub_242BF8A00(&v71);
}

unint64_t sub_242BF883C()
{
  result = qword_27ECDDEB8;
  if (!qword_27ECDDEB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDDEB8);
  }

  return result;
}

unint64_t sub_242BF8890()
{
  result = qword_27ECDDEC0;
  if (!qword_27ECDDEC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDDEC0);
  }

  return result;
}

uint64_t sub_242BF88E4(unint64_t *a1, void (*a2)(void), void (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECDDE98, &qword_242C1BE38);
    a2();
    a3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_242BF8974()
{
  result = qword_27ECDDED0;
  if (!qword_27ECDDED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDDED0);
  }

  return result;
}

CarAssetUtils::CAUWidgetContentMargins __swiftcall CAUWidgetContentMargins.init(top:leading:bottom:trailing:)(Swift::Float top, Swift::Float leading, Swift::Float bottom, Swift::Float trailing)
{
  *v4 = top;
  v4[1] = leading;
  v4[2] = bottom;
  v4[3] = trailing;
  result.trailing = trailing;
  result.bottom = bottom;
  result.leading = leading;
  result.top = top;
  return result;
}

uint64_t sub_242BF8A90()
{
  v1 = 7368564;
  v2 = 0x6D6F74746F62;
  if (*v0 != 2)
  {
    v2 = 0x676E696C69617274;
  }

  if (*v0)
  {
    v1 = 0x676E696461656CLL;
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

uint64_t sub_242BF8B00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_242BF98B0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_242BF8B34(uint64_t a1)
{
  v2 = sub_242BF9290();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_242BF8B70(uint64_t a1)
{
  v2 = sub_242BF9290();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t CAUWidgetContentMargins.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECDDED8, &qword_242C1BE48);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v15[-v7];
  v10 = *v1;
  v9 = v1[1];
  v12 = v1[2];
  v11 = v1[3];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_242BF9290();
  sub_242C1A8A0();
  v15[15] = 0;
  sub_242C1A700();
  if (!v2)
  {
    v15[14] = 1;
    sub_242C1A700();
    v15[13] = 2;
    sub_242C1A700();
    v15[12] = 3;
    sub_242C1A700();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t CAUWidgetContentMargins.init(from:)@<X0>(uint64_t *a1@<X0>, _DWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECDDEE8, &qword_242C1BE50);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v20 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_242BF9290();
  sub_242C1A880();
  if (!v2)
  {
    v24 = 0;
    sub_242C1A6A0();
    v12 = v11;
    v23 = 1;
    sub_242C1A6A0();
    v14 = v13;
    v22 = 2;
    sub_242C1A6A0();
    v17 = v16;
    v21 = 3;
    sub_242C1A6A0();
    v19 = v18;
    (*(v6 + 8))(v9, v5);
    *a2 = v12;
    a2[1] = v14;
    a2[2] = v17;
    a2[3] = v19;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_242BF8FA8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (sub_242C1A740() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000242C20FF0 == a2 || (sub_242C1A740() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000242C21010 == a2 || (sub_242C1A740() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 2036625250 && a2 == 0xE400000000000000 || (sub_242C1A740() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6165536E69626163 && a2 == 0xEF6567616D497374 || (sub_242C1A740() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000242C21030 == a2 || (sub_242C1A740() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6E69626163 && a2 == 0xE500000000000000 || (sub_242C1A740() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x736F666E69 && a2 == 0xE500000000000000)
  {

    return 7;
  }

  else
  {
    v6 = sub_242C1A740();

    if (v6)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

unint64_t sub_242BF9290()
{
  result = qword_27ECDDEE0;
  if (!qword_27ECDDEE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDDEE0);
  }

  return result;
}

__n128 __swift_memcpy184_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  result = a2[8];
  v9 = a2[9];
  v10 = a2[10];
  *(a1 + 176) = *(a2 + 22);
  *(a1 + 144) = v9;
  *(a1 + 160) = v10;
  *(a1 + 128) = result;
  return result;
}

uint64_t sub_242BF9320(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 184))
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

uint64_t sub_242BF9368(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 184) = 1;
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

    *(result + 184) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy16_4(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t getEnumTagSinglePayload for CAUEdge(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for CAUEdge(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for CAUVehicleLayout.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for CAUVehicleLayout.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_242BF96A4()
{
  result = qword_27ECDDEF0;
  if (!qword_27ECDDEF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDDEF0);
  }

  return result;
}

unint64_t sub_242BF96FC()
{
  result = qword_27ECDDEF8;
  if (!qword_27ECDDEF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDDEF8);
  }

  return result;
}

unint64_t sub_242BF9754()
{
  result = qword_27ECDDF00;
  if (!qword_27ECDDF00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDDF00);
  }

  return result;
}

unint64_t sub_242BF97AC()
{
  result = qword_27ECDDF08;
  if (!qword_27ECDDF08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDDF08);
  }

  return result;
}

unint64_t sub_242BF9804()
{
  result = qword_27ECDDF10;
  if (!qword_27ECDDF10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDDF10);
  }

  return result;
}

unint64_t sub_242BF985C()
{
  result = qword_27ECDDF18;
  if (!qword_27ECDDF18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDDF18);
  }

  return result;
}

uint64_t sub_242BF98B0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 7368564 && a2 == 0xE300000000000000;
  if (v3 || (sub_242C1A740() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x676E696461656CLL && a2 == 0xE700000000000000 || (sub_242C1A740() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6D6F74746F62 && a2 == 0xE600000000000000 || (sub_242C1A740() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x676E696C69617274 && a2 == 0xE800000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_242C1A740();

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

uint64_t Dictionary<>.init(_:)(uint64_t a1)
{
  v1 = sub_242BFC374(a1);

  return v1;
}

{
  v1 = a1;
  v2 = a1 + 64;
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  v9 = MEMORY[0x277D84F98];
  v47 = v2;
  v48 = v7;
  while (v5)
  {
    v13 = v8;
LABEL_11:
    v14 = __clz(__rbit64(v5)) | (v13 << 6);
    v15 = *(*(v1 + 48) + v14);
    if (v15 > 5)
    {
      v24 = 0xD000000000000014;
      if (v15 != 10)
      {
        v24 = 0xD000000000000012;
      }

      v25 = 0x8000000242C209E0;
      if (v15 == 10)
      {
        v25 = 0x8000000242C209C0;
      }

      if (v15 == 9)
      {
        v24 = 0xD000000000000010;
        v25 = 0x8000000242C209A0;
      }

      v26 = 0xD000000000000019;
      if (v15 == 7)
      {
        v26 = 0xD000000000000010;
      }

      v27 = 0x8000000242C20980;
      if (v15 == 7)
      {
        v27 = 0x8000000242C20960;
      }

      if (v15 == 6)
      {
        v26 = 0x4C656C6369686576;
        v27 = 0xED000074756F7961;
      }

      if (*(*(v1 + 48) + v14) <= 8u)
      {
        v22 = v26;
      }

      else
      {
        v22 = v24;
      }

      if (*(*(v1 + 48) + v14) <= 8u)
      {
        v23 = v27;
      }

      else
      {
        v23 = v25;
      }
    }

    else
    {
      v16 = 0x726F697265746E69;
      v17 = 0x726F697265747865;
      v18 = 0x6172426F69647561;
      if (v15 != 4)
      {
        v18 = 0x4C656C6369686576;
      }

      v19 = 0xEE006F676F4C646ELL;
      if (v15 != 4)
      {
        v19 = 0xEB000000006F676FLL;
      }

      if (v15 == 3)
      {
        v18 = 0x726F697265746E69;
        v19 = 0xED0000726F6C6F43;
      }

      if (v15 == 1)
      {
        v20 = 0xED0000656C797453;
      }

      else
      {
        v16 = 0x726F697265747865;
        v20 = 0xED0000726F6C6F43;
      }

      if (*(*(v1 + 48) + v14))
      {
        v17 = v16;
        v21 = v20;
      }

      else
      {
        v21 = 0xED0000656C797453;
      }

      if (*(*(v1 + 48) + v14) <= 2u)
      {
        v22 = v17;
      }

      else
      {
        v22 = v18;
      }

      if (*(*(v1 + 48) + v14) <= 2u)
      {
        v23 = v21;
      }

      else
      {
        v23 = v19;
      }
    }

    v28 = (*(v1 + 56) + 16 * v14);
    v30 = *v28;
    v29 = v28[1];
    swift_bridgeObjectRetain_n();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v32 = v22;
    v33 = sub_242BFA104(v22, v23);
    v35 = v9[2];
    v36 = (v34 & 1) == 0;
    v37 = __OFADD__(v35, v36);
    v38 = v35 + v36;
    if (v37)
    {
      goto LABEL_59;
    }

    v39 = v34;
    if (v9[3] >= v38)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v45 = v33;
        sub_242BFC1FC();
        v33 = v45;
      }
    }

    else
    {
      sub_242BFA8B0(v38, isUniquelyReferenced_nonNull_native);
      v33 = sub_242BFA104(v32, v23);
      if ((v39 & 1) != (v40 & 1))
      {
        goto LABEL_61;
      }
    }

    v5 &= v5 - 1;
    if (v39)
    {
      v10 = v33;

      v11 = (v9[7] + 16 * v10);
      v12 = v11[1];
      *v11 = v30;
      v11[1] = v29;
    }

    else
    {
      v9[(v33 >> 6) + 8] |= 1 << v33;
      v41 = (v9[6] + 16 * v33);
      *v41 = v32;
      v41[1] = v23;
      v42 = (v9[7] + 16 * v33);
      *v42 = v30;
      v42[1] = v29;

      v43 = v9[2];
      v37 = __OFADD__(v43, 1);
      v44 = v43 + 1;
      if (v37)
      {
        goto LABEL_60;
      }

      v9[2] = v44;
    }

    v8 = v13;
    v2 = v47;
    v1 = v48;
  }

  while (1)
  {
    v13 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v13 >= v6)
    {

      return v9;
    }

    v5 = *(v2 + 8 * v13);
    ++v8;
    if (v5)
    {
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_59:
  __break(1u);
LABEL_60:
  __break(1u);
LABEL_61:
  result = sub_242C1A7D0();
  __break(1u);
  return result;
}

unint64_t sub_242BF9E18(unsigned __int8 a1)
{
  v3 = *(v1 + 40);
  sub_242C1A820();
  sub_242C1A4B0();

  v4 = sub_242C1A850();

  return sub_242BFAFA8(a1, v4);
}

unint64_t sub_242BF9F00(char a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_242C1A820();
  sub_242C1A4B0();

  v5 = sub_242C1A850();

  return sub_242BFAB70(a1 & 1, v5);
}

unint64_t sub_242BF9FA0(unsigned __int8 a1)
{
  v3 = *(v1 + 40);
  sub_242C1A820();
  sub_242C11B5C();
  v4 = sub_242C1A850();

  return sub_242BFACAC(a1, v4);
}

uint64_t sub_242BFA064(uint64_t a1, void (*a2)(uint64_t), uint64_t (*a3)(uint64_t, uint64_t))
{
  v6 = *(v3 + 40);
  v7 = sub_242C1A820();
  a2(v7);
  sub_242C1A4B0();

  v8 = sub_242C1A850();

  return a3(a1, v8);
}

unint64_t sub_242BFA104(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_242C1A820();
  sub_242C1A4B0();
  v6 = sub_242C1A850();

  return sub_242BFBE80(a1, a2, v6);
}

uint64_t sub_242BFA17C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECDDF30, &qword_242C1C200);
  v33 = a2;
  result = sub_242C1A630();
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
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 48) + v20);
      v22 = *(*(v5 + 56) + 8 * v20);
      if ((v33 & 1) == 0)
      {
      }

      v23 = *(v8 + 40);
      sub_242C1A820();
      CAUVehicleLayoutKey.rawValue.getter();
      sub_242C1A4B0();

      result = sub_242C1A850();
      v24 = -1 << *(v8 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v15 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
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
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + v16) = v21;
      *(*(v8 + 56) + 8 * v16) = v22;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v32;
      goto LABEL_35;
    }

    v31 = 1 << *(v5 + 32);
    v3 = v32;
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

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_242BFA42C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECDDF28, &qword_242C1C1F8);
  v35 = a2;
  result = sub_242C1A630();
  v8 = result;
  if (*(v5 + 16))
  {
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
    v34 = v3;
    v15 = result + 64;
    while (v13)
    {
      v21 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_18:
      v24 = v21 | (v9 << 6);
      v25 = *(*(v5 + 48) + v24);
      v26 = (*(v5 + 56) + 16 * v24);
      v27 = v26[1];
      v36 = *v26;
      if ((v35 & 1) == 0)
      {
      }

      v28 = *(v8 + 40);
      sub_242C1A820();
      sub_242C1A4B0();

      result = sub_242C1A850();
      v16 = -1 << *(v8 + 32);
      v17 = result & ~v16;
      v18 = v17 >> 6;
      if (((-1 << v17) & ~*(v15 + 8 * (v17 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v16) >> 6;
        while (++v18 != v30 || (v29 & 1) == 0)
        {
          v31 = v18 == v30;
          if (v18 == v30)
          {
            v18 = 0;
          }

          v29 |= v31;
          v32 = *(v15 + 8 * v18);
          if (v32 != -1)
          {
            v19 = __clz(__rbit64(~v32)) + (v18 << 6);
            goto LABEL_10;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v17) & ~*(v15 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_10:
      *(v15 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      *(*(v8 + 48) + v19) = v25;
      v20 = (*(v8 + 56) + 16 * v19);
      *v20 = v36;
      v20[1] = v27;
      ++*(v8 + 16);
    }

    v22 = v9;
    while (1)
    {
      v9 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v23 = v10[v9];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v13 = (v23 - 1) & v23;
        goto LABEL_18;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v34;
      goto LABEL_36;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v34;
    if (v33 >= 64)
    {
      bzero((v5 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

uint64_t sub_242BFA8B0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECDDF20, &qword_242C1C1F0);
  v40 = a2;
  result = sub_242C1A630();
  v8 = result;
  if (*(v5 + 16))
  {
    v38 = v3;
    v39 = v5;
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
      v20 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v23 = 16 * (v20 | (v9 << 6));
      v24 = (*(v5 + 48) + v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = (*(v5 + 56) + v23);
      v28 = v27[1];
      v41 = *v27;
      if ((v40 & 1) == 0)
      {
      }

      v29 = *(v8 + 40);
      sub_242C1A820();
      sub_242C1A4B0();
      result = sub_242C1A850();
      v30 = -1 << *(v8 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v15 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v15 + 8 * v32);
          if (v36 != -1)
          {
            v16 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v31) & ~*(v15 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = 16 * v16;
      v18 = (*(v8 + 48) + v17);
      *v18 = v25;
      v18[1] = v26;
      v19 = (*(v8 + 56) + v17);
      *v19 = v41;
      v19[1] = v28;
      ++*(v8 + 16);
      v5 = v39;
    }

    v21 = v9;
    while (1)
    {
      v9 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v22 = v10[v9];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v13 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_35;
    }

    v37 = 1 << *(v5 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero(v10, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v37;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

unint64_t sub_242BFAB70(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    if (a1)
    {
      v6 = 0x7265766F706F70;
    }

    else
    {
      v6 = 6382436;
    }

    if (a1)
    {
      v7 = 0xE700000000000000;
    }

    else
    {
      v7 = 0xE300000000000000;
    }

    while (1)
    {
      v8 = *(*(v2 + 48) + v4) ? 0x7265766F706F70 : 6382436;
      v9 = *(*(v2 + 48) + v4) ? 0xE700000000000000 : 0xE300000000000000;
      if (v8 == v6 && v9 == v7)
      {
        break;
      }

      v11 = sub_242C1A740();

      if ((v11 & 1) == 0)
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

unint64_t sub_242BFACAC(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    v6 = a1;
    while (1)
    {
      v7 = *(*(v2 + 48) + v4);
      if (v7 > 4)
      {
        if (*(*(v2 + 48) + v4) <= 6u)
        {
          if (v7 == 5)
          {
            v14 = 0xD00000000000001CLL;
            v15 = "tpms_pressureValue_font_style";
          }

          else
          {
            v14 = 0xD00000000000001ELL;
            v15 = "tpms_pressureUnit_font_style";
          }
        }

        else if (v7 == 7)
        {
          v14 = 0xD00000000000001DLL;
          v15 = "tpms_pressureValue_font_weight";
        }

        else if (v7 == 8)
        {
          v14 = 0xD000000000000014;
          v15 = "tpms_pressureUnit_font_weight";
        }

        else
        {
          v14 = 0xD000000000000011;
          v15 = "trip_horizontalStack";
        }
      }

      else
      {
        v8 = 0xD00000000000001FLL;
        v9 = 0xD000000000000025;
        if (v7 != 3)
        {
          v9 = 0xD00000000000001DLL;
        }

        v10 = "tpms_rightTop_label_top_padding";
        if (v7 != 3)
        {
          v10 = "_label_bottom_padding";
        }

        if (v7 != 2)
        {
          v8 = v9;
        }

        v11 = "label_bottom_padding";
        v12 = "e";
        if (v7 != 2)
        {
          v11 = v10;
        }

        v13 = 0xD000000000000024;
        if (*(*(v2 + 48) + v4))
        {
          v12 = "tpms_leftTop_label_top_padding";
        }

        else
        {
          v13 = 0xD00000000000001ELL;
        }

        v14 = *(*(v2 + 48) + v4) <= 1u ? v13 : v8;
        v15 = *(*(v2 + 48) + v4) <= 1u ? v12 : v11;
      }

      if (v6 > 4)
      {
        if (v6 <= 6)
        {
          if (v6 == 5)
          {
            v16 = 0xD00000000000001CLL;
            v17 = "tpms_pressureValue_font_style";
          }

          else
          {
            v16 = 0xD00000000000001ELL;
            v17 = "tpms_pressureUnit_font_style";
          }
        }

        else if (v6 == 7)
        {
          v16 = 0xD00000000000001DLL;
          v17 = "tpms_pressureValue_font_weight";
        }

        else if (v6 == 8)
        {
          v16 = 0xD000000000000014;
          v17 = "tpms_pressureUnit_font_weight";
        }

        else
        {
          v16 = 0xD000000000000011;
          v17 = "trip_horizontalStack";
        }
      }

      else if (v6 <= 1)
      {
        v16 = v6 ? 0xD000000000000024 : 0xD00000000000001ELL;
        v17 = "e";
        if (v6)
        {
          v17 = "tpms_leftTop_label_top_padding";
        }
      }

      else if (v6 == 2)
      {
        v16 = 0xD00000000000001FLL;
        v17 = "label_bottom_padding";
      }

      else if (v6 == 3)
      {
        v16 = 0xD000000000000025;
        v17 = "tpms_rightTop_label_top_padding";
      }

      else
      {
        v16 = 0xD00000000000001DLL;
        v17 = "_label_bottom_padding";
      }

      if (v14 == v16 && (v15 | 0x8000000000000000) == (v17 | 0x8000000000000000))
      {
        break;
      }

      v18 = sub_242C1A740();

      if ((v18 & 1) == 0)
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

unint64_t sub_242BFAFA8(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v21 = ~v3;
    v5 = a1;
    while (1)
    {
      v6 = *(*(v2 + 48) + v4);
      v7 = v6 == 2 ? 0x7365725065726974 : 1885958772;
      v8 = v6 == 2 ? 0xEC00000065727573 : 0xE400000000000000;
      v9 = *(*(v2 + 48) + v4) ? 0x73657275736F6C63 : 0x656772616863;
      v10 = *(*(v2 + 48) + v4) ? 0xE800000000000000 : 0xE600000000000000;
      v11 = *(*(v2 + 48) + v4) <= 1u ? v9 : v7;
      v12 = *(*(v2 + 48) + v4) <= 1u ? v10 : v8;
      v13 = v5 == 2 ? 0x7365725065726974 : 1885958772;
      v14 = v5 == 2 ? 0xEC00000065727573 : 0xE400000000000000;
      v15 = v5 ? 0x73657275736F6C63 : 0x656772616863;
      v16 = v5 ? 0xE800000000000000 : 0xE600000000000000;
      v17 = v5 <= 1 ? v15 : v13;
      v18 = v5 <= 1 ? v16 : v14;
      if (v11 == v17 && v12 == v18)
      {
        break;
      }

      v19 = sub_242C1A740();

      if ((v19 & 1) == 0)
      {
        v4 = (v4 + 1) & v21;
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

unint64_t sub_242BFB154(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      v7 = 0xEF7466656C5F746ELL;
      v8 = 0x6F72665F726F6F64;
      switch(*(*(v2 + 48) + v4))
      {
        case 1:
          v8 = 0xD000000000000010;
          v7 = 0x8000000242C20A10;
          break;
        case 2:
          v10 = 1919905636;
          goto LABEL_33;
        case 3:
          v11 = 1919905636;
          goto LABEL_21;
        case 4:
          v7 = 0xE500000000000000;
          v8 = 0x6B6E757266;
          break;
        case 5:
          v8 = 0x726168436C657566;
          v7 = 0xEE0074726F506567;
          break;
        case 6:
          v8 = 0xD000000000000014;
          v7 = 0x8000000242C20A60;
          break;
        case 7:
          v8 = 0xD000000000000019;
          v7 = 0x8000000242C20A80;
          break;
        case 8:
          v8 = 0xD00000000000001ALL;
          v7 = 0x8000000242C20AA0;
          break;
        case 9:
          v8 = 0xD000000000000013;
          v7 = 0x8000000242C20AC0;
          break;
        case 0xA:
          v8 = 0xD000000000000018;
          v7 = 0x8000000242C20AE0;
          break;
        case 0xB:
          v8 = 0xD000000000000019;
          v7 = 0x8000000242C20B00;
          break;
        case 0xC:
          v7 = 0xE400000000000000;
          v8 = 1685024616;
          break;
        case 0xD:
          v8 = 0x6C5F726F7272696DLL;
          v7 = 0xEF65646953746665;
          break;
        case 0xE:
          v8 = 0xD000000000000010;
          v7 = 0x8000000242C20B30;
          break;
        case 0xF:
          v8 = 0x735F726F7272696DLL;
          v7 = 0xEC00000073656469;
          break;
        case 0x10:
          v8 = 0x646E325F74616573;
          goto LABEL_24;
        case 0x11:
          v8 = 0xD000000000000010;
          v7 = 0x8000000242C20B60;
          break;
        case 0x12:
          v8 = 0xD000000000000012;
          v7 = 0x8000000242C20B80;
          break;
        case 0x13:
          v8 = 0xD000000000000011;
          v7 = 0x8000000242C20BA0;
          break;
        case 0x14:
          v8 = 0x6472335F74616573;
LABEL_24:
          v7 = 0xEB00000000776F52;
          break;
        case 0x15:
          v8 = 0xD000000000000010;
          v7 = 0x8000000242C20BC0;
          break;
        case 0x16:
          v8 = 0xD000000000000012;
          v7 = 0x8000000242C20BE0;
          break;
        case 0x17:
          v8 = 0xD000000000000011;
          v7 = 0x8000000242C20C00;
          break;
        case 0x18:
          v7 = 0xEA0000000000746ELL;
          v8 = 0x6F72665F74616573;
          break;
        case 0x19:
          v9 = 1952540019;
          goto LABEL_39;
        case 0x1A:
          v8 = 0xD000000000000011;
          v7 = 0x8000000242C20C30;
          break;
        case 0x1B:
          v8 = 0xD000000000000010;
          v7 = 0x8000000242C20C50;
          break;
        case 0x1C:
          v9 = 1701996916;
LABEL_39:
          v8 = v9 | 0x6F72665F00000000;
          v7 = 0xEF7466656C5F746ELL;
          break;
        case 0x1D:
          v8 = 0xD000000000000010;
          v7 = 0x8000000242C20C80;
          break;
        case 0x1E:
          v10 = 1701996916;
LABEL_33:
          v8 = v10 | 0x6165725F00000000;
          v7 = 0xEE007466656C5F72;
          break;
        case 0x1F:
          v11 = 1701996916;
LABEL_21:
          v8 = v11 | 0x6165725F00000000;
          v7 = 0xEF74686769725F72;
          break;
        case 0x20:
          v8 = 0x6B6E757274;
          v7 = 0xE500000000000000;
          break;
        case 0x21:
          v8 = 0xD000000000000010;
          v7 = 0x8000000242C20CC0;
          break;
        case 0x22:
          v8 = 0x65696873646E6977;
          v7 = 0xEF726165725F646CLL;
          break;
        default:
          break;
      }

      v12 = 0x6F72665F726F6F64;
      v13 = 0xEF7466656C5F746ELL;
      switch(a1)
      {
        case 1:
          v13 = 0x8000000242C20A10;
          if (v8 == 0xD000000000000010)
          {
            goto LABEL_109;
          }

          goto LABEL_110;
        case 2:
          v16 = 1919905636;
          goto LABEL_93;
        case 3:
          v17 = 1919905636;
          goto LABEL_72;
        case 4:
          v13 = 0xE500000000000000;
          if (v8 != 0x6B6E757266)
          {
            goto LABEL_110;
          }

          goto LABEL_109;
        case 5:
          v18 = 0x726168436C657566;
          v19 = 0x74726F506567;
          goto LABEL_94;
        case 6:
          v13 = 0x8000000242C20A60;
          if (v8 != 0xD000000000000014)
          {
            goto LABEL_110;
          }

          goto LABEL_109;
        case 7:
          v13 = 0x8000000242C20A80;
          if (v8 != 0xD000000000000019)
          {
            goto LABEL_110;
          }

          goto LABEL_109;
        case 8:
          v13 = 0x8000000242C20AA0;
          if (v8 != 0xD00000000000001ALL)
          {
            goto LABEL_110;
          }

          goto LABEL_109;
        case 9:
          v13 = 0x8000000242C20AC0;
          if (v8 != 0xD000000000000013)
          {
            goto LABEL_110;
          }

          goto LABEL_109;
        case 10:
          v13 = 0x8000000242C20AE0;
          if (v8 != 0xD000000000000018)
          {
            goto LABEL_110;
          }

          goto LABEL_109;
        case 11:
          v13 = 0x8000000242C20B00;
          if (v8 != 0xD000000000000019)
          {
            goto LABEL_110;
          }

          goto LABEL_109;
        case 12:
          v13 = 0xE400000000000000;
          if (v8 != 1685024616)
          {
            goto LABEL_110;
          }

          goto LABEL_109;
        case 13:
          v13 = 0xEF65646953746665;
          if (v8 != 0x6C5F726F7272696DLL)
          {
            goto LABEL_110;
          }

          goto LABEL_109;
        case 14:
          v13 = 0x8000000242C20B30;
          if (v8 != 0xD000000000000010)
          {
            goto LABEL_110;
          }

          goto LABEL_109;
        case 15:
          v13 = 0xEC00000073656469;
          if (v8 != 0x735F726F7272696DLL)
          {
            goto LABEL_110;
          }

          goto LABEL_109;
        case 16:
          v14 = 0x646E325F74616573;
          goto LABEL_77;
        case 17:
          v13 = 0x8000000242C20B60;
          if (v8 != 0xD000000000000010)
          {
            goto LABEL_110;
          }

          goto LABEL_109;
        case 18:
          v13 = 0x8000000242C20B80;
          if (v8 != 0xD000000000000012)
          {
            goto LABEL_110;
          }

          goto LABEL_109;
        case 19:
          v13 = 0x8000000242C20BA0;
          if (v8 != 0xD000000000000011)
          {
            goto LABEL_110;
          }

          goto LABEL_109;
        case 20:
          v14 = 0x6472335F74616573;
LABEL_77:
          v13 = 0xEB00000000776F52;
          if (v8 != v14)
          {
            goto LABEL_110;
          }

          goto LABEL_109;
        case 21:
          v13 = 0x8000000242C20BC0;
          if (v8 != 0xD000000000000010)
          {
            goto LABEL_110;
          }

          goto LABEL_109;
        case 22:
          v13 = 0x8000000242C20BE0;
          if (v8 != 0xD000000000000012)
          {
            goto LABEL_110;
          }

          goto LABEL_109;
        case 23:
          v13 = 0x8000000242C20C00;
          if (v8 != 0xD000000000000011)
          {
            goto LABEL_110;
          }

          goto LABEL_109;
        case 24:
          v13 = 0xEA0000000000746ELL;
          if (v8 != 0x6F72665F74616573)
          {
            goto LABEL_110;
          }

          goto LABEL_109;
        case 25:
          v15 = 1952540019;
          goto LABEL_105;
        case 26:
          v13 = 0x8000000242C20C30;
          if (v8 != 0xD000000000000011)
          {
            goto LABEL_110;
          }

          goto LABEL_109;
        case 27:
          v13 = 0x8000000242C20C50;
          if (v8 != 0xD000000000000010)
          {
            goto LABEL_110;
          }

          goto LABEL_109;
        case 28:
          v15 = 1701996916;
LABEL_105:
          v13 = 0xEF7466656C5F746ELL;
          if (v8 != (v15 | 0x6F72665F00000000))
          {
            goto LABEL_110;
          }

          goto LABEL_109;
        case 29:
          v12 = 0xD000000000000010;
          v13 = 0x8000000242C20C80;
          goto LABEL_108;
        case 30:
          v16 = 1701996916;
LABEL_93:
          v18 = v16 | 0x6165725F00000000;
          v19 = 0x7466656C5F72;
LABEL_94:
          v13 = v19 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
          if (v8 != v18)
          {
            goto LABEL_110;
          }

          goto LABEL_109;
        case 31:
          v17 = 1701996916;
LABEL_72:
          v13 = 0xEF74686769725F72;
          if (v8 != (v17 | 0x6165725F00000000))
          {
            goto LABEL_110;
          }

          goto LABEL_109;
        case 32:
          v13 = 0xE500000000000000;
          if (v8 != 0x6B6E757274)
          {
            goto LABEL_110;
          }

          goto LABEL_109;
        case 33:
          v13 = 0x8000000242C20CC0;
          if (v8 != 0xD000000000000010)
          {
            goto LABEL_110;
          }

          goto LABEL_109;
        case 34:
          v13 = 0xEF726165725F646CLL;
          if (v8 != 0x65696873646E6977)
          {
            goto LABEL_110;
          }

          goto LABEL_109;
        default:
LABEL_108:
          if (v8 != v12)
          {
            goto LABEL_110;
          }

LABEL_109:
          if (v7 == v13)
          {

            return v4;
          }

LABEL_110:
          v20 = sub_242C1A740();

          if (v20)
          {
            return v4;
          }

          v4 = (v4 + 1) & v6;
          if (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) == 0)
          {
            return v4;
          }

          break;
      }
    }
  }

  return v4;
}

unint64_t sub_242BFBAAC(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v24 = ~v3;
    v5 = a1;
    while (1)
    {
      v6 = *(*(v2 + 48) + v4);
      if (v6 > 5)
      {
        if (*(*(v2 + 48) + v4) > 8u)
        {
          if (v6 == 9)
          {
            v7 = 0xD000000000000010;
            v8 = 0x8000000242C209A0;
          }

          else if (v6 == 10)
          {
            v7 = 0xD000000000000014;
            v8 = 0x8000000242C209C0;
          }

          else
          {
            v7 = 0xD000000000000012;
            v8 = 0x8000000242C209E0;
          }
        }

        else if (v6 == 6)
        {
          v7 = 0x4C656C6369686576;
          v8 = 0xED000074756F7961;
        }

        else if (v6 == 7)
        {
          v7 = 0xD000000000000010;
          v8 = 0x8000000242C20960;
        }

        else
        {
          v7 = 0xD000000000000019;
          v8 = 0x8000000242C20980;
        }
      }

      else if (*(*(v2 + 48) + v4) > 2u)
      {
        if (v6 == 3)
        {
          v7 = 0x726F697265746E69;
          v8 = 0xED0000726F6C6F43;
        }

        else if (v6 == 4)
        {
          v7 = 0x6172426F69647561;
          v8 = 0xEE006F676F4C646ELL;
        }

        else
        {
          v7 = 0x4C656C6369686576;
          v8 = 0xEB000000006F676FLL;
        }
      }

      else if (*(*(v2 + 48) + v4))
      {
        if (v6 == 1)
        {
          v7 = 0x726F697265746E69;
        }

        else
        {
          v7 = 0x726F697265747865;
        }

        if (v6 == 1)
        {
          v8 = 0xED0000656C797453;
        }

        else
        {
          v8 = 0xED0000726F6C6F43;
        }
      }

      else
      {
        v7 = 0x726F697265747865;
        v8 = 0xED0000656C797453;
      }

      v9 = 0x726F697265747865;
      v10 = 0xD000000000000014;
      if (v5 != 10)
      {
        v10 = 0xD000000000000012;
      }

      v11 = 0x8000000242C209E0;
      if (v5 == 10)
      {
        v11 = 0x8000000242C209C0;
      }

      if (v5 == 9)
      {
        v10 = 0xD000000000000010;
        v11 = 0x8000000242C209A0;
      }

      v12 = 0xD000000000000019;
      if (v5 == 7)
      {
        v12 = 0xD000000000000010;
        v13 = 0x8000000242C20960;
      }

      else
      {
        v13 = 0x8000000242C20980;
      }

      if (v5 == 6)
      {
        v12 = 0x4C656C6369686576;
        v13 = 0xED000074756F7961;
      }

      if (v5 <= 8)
      {
        v10 = v12;
        v11 = v13;
      }

      v14 = 0x6172426F69647561;
      if (v5 != 4)
      {
        v14 = 0x4C656C6369686576;
      }

      v15 = 0xEE006F676F4C646ELL;
      if (v5 != 4)
      {
        v15 = 0xEB000000006F676FLL;
      }

      if (v5 == 3)
      {
        v14 = 0x726F697265746E69;
      }

      v16 = 0xED0000726F6C6F43;
      if (v5 == 3)
      {
        v15 = 0xED0000726F6C6F43;
      }

      if (v5 == 1)
      {
        v17 = 0x726F697265746E69;
      }

      else
      {
        v17 = 0x726F697265747865;
      }

      if (v5 == 1)
      {
        v16 = 0xED0000656C797453;
      }

      if (v5)
      {
        v9 = v17;
        v18 = v16;
      }

      else
      {
        v18 = 0xED0000656C797453;
      }

      if (v5 <= 2)
      {
        v19 = v18;
      }

      else
      {
        v9 = v14;
        v19 = v15;
      }

      v20 = v5 <= 5 ? v9 : v10;
      v21 = v5 <= 5 ? v19 : v11;
      if (v7 == v20 && v8 == v21)
      {
        break;
      }

      v22 = sub_242C1A740();

      if ((v22 & 1) == 0)
      {
        v4 = (v4 + 1) & v24;
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

unint64_t sub_242BFBE80(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_242C1A740())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

void *sub_242BFBF38()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECDDF30, &qword_242C1C200);
  v2 = *v0;
  v3 = sub_242C1A620();
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
        *(*(v4 + 48) + v17) = *(*(v2 + 48) + v17);
        *(*(v4 + 56) + 8 * v17) = v18;
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

void *sub_242BFC094()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECDDF28, &qword_242C1C1F8);
  v2 = *v0;
  v3 = sub_242C1A620();
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
        v18 = (*(v2 + 56) + 16 * v17);
        v20 = *v18;
        v19 = v18[1];
        *(*(v4 + 48) + v17) = *(*(v2 + 48) + v17);
        v21 = (*(v4 + 56) + 16 * v17);
        *v21 = v20;
        v21[1] = v19;
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

void *sub_242BFC1FC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECDDF20, &qword_242C1C1F0);
  v2 = *v0;
  v3 = sub_242C1A620();
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = (*(v2 + 56) + v17);
        v22 = *v21;
        v23 = v21[1];
        v24 = (*(v4 + 48) + v17);
        *v24 = v20;
        v24[1] = v19;
        v25 = (*(v4 + 56) + v17);
        *v25 = v22;
        v25[1] = v23;
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

uint64_t sub_242BFC374(uint64_t a1)
{
  v1 = a1;
  v2 = a1 + 64;
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v44 = MEMORY[0x277D84F98];
  v45 = v7;
  v46 = v6;
  v8 = 0;
  if (v5)
  {
    goto LABEL_6;
  }

LABEL_7:
  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v6)
    {

      return v44;
    }

    v5 = *(v2 + 8 * v9);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v10 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v11 = (v9 << 10) | (16 * v10);
        v12 = (*(v1 + 48) + v11);
        v13 = *v12;
        v14 = v12[1];
        v15 = (*(v1 + 56) + v11);
        v16 = *v15;
        v17 = v15[1];
        swift_bridgeObjectRetain_n();

        v18._countAndFlagsBits = v13;
        v18._object = v14;
        CAUVehicleTrait.init(rawValue:)(v18);
        v19 = v48;
        v47 = v16;
        if (v48 == 12)
        {
          if (qword_2815054C0 != -1)
          {
            swift_once();
          }

          v20 = sub_242C1A3D0();
          __swift_project_value_buffer(v20, qword_2815054C8);

          v21 = sub_242C1A3B0();
          v22 = sub_242C1A550();

          if (os_log_type_enabled(v21, v22))
          {
            v23 = swift_slowAlloc();
            v24 = swift_slowAlloc();
            v48 = v24;
            *v23 = 136315394;
            *(v23 + 4) = sub_242C10B80(v13, v14, &v48);
            *(v23 + 12) = 2080;
            *(v23 + 14) = sub_242C10B80(v47, v17, &v48);
            _os_log_impl(&dword_242BF1000, v21, v22, "unexpected type %s or value %s", v23, 0x16u);
            swift_arrayDestroy();
            v25 = v24;
            v1 = v45;
            MEMORY[0x245D23AC0](v25, -1, -1);
            v26 = v23;
            v6 = v46;
            MEMORY[0x245D23AC0](v26, -1, -1);
          }

          v8 = v9;
          if (!v5)
          {
            goto LABEL_7;
          }
        }

        else
        {

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v48 = v44;
          v29 = sub_242BFA064(v19, CAUVehicleTrait.rawValue.getter, sub_242BFBAAC);
          v30 = *(v44 + 16);
          v31 = (v28 & 1) == 0;
          v32 = v30 + v31;
          if (__OFADD__(v30, v31))
          {
            goto LABEL_29;
          }

          v33 = v28;
          if (*(v44 + 24) >= v32)
          {
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_242BFC094();
            }
          }

          else
          {
            sub_242BFA42C(v32, isUniquelyReferenced_nonNull_native);
            v34 = sub_242BFA064(v19, CAUVehicleTrait.rawValue.getter, sub_242BFBAAC);
            if ((v33 & 1) != (v35 & 1))
            {
              goto LABEL_31;
            }

            v29 = v34;
          }

          v6 = v46;
          v36 = v48;
          v44 = v48;
          if (v33)
          {
            v37 = (v48[7] + 16 * v29);
            v38 = v37[1];
            *v37 = v47;
            v37[1] = v17;
          }

          else
          {
            v48[(v29 >> 6) + 8] |= 1 << v29;
            *(v36[6] + v29) = v19;
            v39 = (v36[7] + 16 * v29);
            *v39 = v16;
            v39[1] = v17;
            v40 = v36[2];
            v41 = __OFADD__(v40, 1);
            v42 = v40 + 1;
            if (v41)
            {
              goto LABEL_30;
            }

            v36[2] = v42;
          }

          v1 = v45;

          v8 = v9;
          if (!v5)
          {
            goto LABEL_7;
          }
        }

LABEL_6:
        v9 = v8;
      }
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  result = sub_242C1A7D0();
  __break(1u);
  return result;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t CAUFeatureConfiguration.Settings.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECDDF38, &qword_242C1C208);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v13 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_242BFC948();
  sub_242C1A880();
  if (!v2)
  {
    v11 = sub_242C1A660();
    (*(v6 + 8))(v9, v5);
    *a2 = v11 & 1;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_242BFC948()
{
  result = qword_27ECDDF40;
  if (!qword_27ECDDF40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDDF40);
  }

  return result;
}

uint64_t sub_242BFC9BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x65646F4D6B726164 && a2 == 0xEC000000796C6E4FLL)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_242C1A740();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_242BFCA48(uint64_t a1)
{
  v2 = sub_242BFC948();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_242BFCA84(uint64_t a1)
{
  v2 = sub_242BFC948();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t CAUFeatureConfiguration.Settings.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECDDF48, &qword_242C1C210);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v11 - v6;
  v8 = *v1;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_242BFC948();
  sub_242C1A8A0();
  sub_242C1A6F0();
  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_242BFCC10(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECDDF48, &qword_242C1C210);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v11 - v6;
  v8 = *v1;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_242BFC948();
  sub_242C1A8A0();
  sub_242C1A6F0();
  return (*(v4 + 8))(v7, v3);
}

uint64_t _s8SettingsVwet(unsigned __int8 *a1, unsigned int a2)
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
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

unint64_t sub_242BFCE0C()
{
  result = qword_27ECDDF50;
  if (!qword_27ECDDF50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDDF50);
  }

  return result;
}

unint64_t sub_242BFCE64()
{
  result = qword_27ECDDF58;
  if (!qword_27ECDDF58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDDF58);
  }

  return result;
}

unint64_t sub_242BFCEBC()
{
  result = qword_27ECDDF60;
  if (!qword_27ECDDF60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDDF60);
  }

  return result;
}

uint64_t CAUBaselineAnchor.init(x:y:)@<X0>(uint64_t result@<X0>, int a2@<W1>, _DWORD *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t sub_242BFCF28()
{
  if (*v0)
  {
    return 121;
  }

  else
  {
    return 120;
  }
}

uint64_t sub_242BFCF40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 120 && a2 == 0xE100000000000000 || (sub_242C1A740() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 121 && a2 == 0xE100000000000000)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_242C1A740();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t sub_242BFD008(uint64_t a1)
{
  v2 = sub_242BFD208();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_242BFD044(uint64_t a1)
{
  v2 = sub_242BFD208();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t CAUBaselineAnchor.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECDDF68, &qword_242C1C3B0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v12 - v7;
  v9 = *v1;
  v13 = v1[1];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_242BFD208();
  sub_242C1A8A0();
  v15 = 0;
  sub_242C1A720();
  if (!v2)
  {
    v14 = 1;
    sub_242C1A720();
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_242BFD208()
{
  result = qword_27ECDDF70;
  if (!qword_27ECDDF70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDDF70);
  }

  return result;
}

uint64_t CAUBaselineAnchor.init(from:)@<X0>(uint64_t *a1@<X0>, _DWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECDDF78, &qword_242C1C3B8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v14 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_242BFD208();
  sub_242C1A880();
  if (!v2)
  {
    v16 = 0;
    v11 = sub_242C1A6C0();
    v15 = 1;
    v12 = sub_242C1A6C0();
    (*(v6 + 8))(v9, v5);
    *a2 = v11;
    a2[1] = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void CAUVehicleLayoutInfo.baselineAnchor.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *(v1 + 16);
  *(a1 + 8) = v2;
}

uint64_t CAUVehicleLayoutInfo.init(x:y:height:width:baselineAnchor:)@<X0>(uint64_t result@<X0>, int a2@<W1>, int a3@<W2>, int a4@<W3>, uint64_t *a5@<X4>, uint64_t a6@<X8>)
{
  v6 = *a5;
  v7 = *(a5 + 8);
  *a6 = result;
  *(a6 + 4) = a2;
  *(a6 + 8) = a4;
  *(a6 + 12) = a3;
  *(a6 + 16) = v6;
  *(a6 + 24) = v7;
  return result;
}

uint64_t sub_242BFD47C()
{
  v1 = *v0;
  v2 = 120;
  v3 = 0x6874646977;
  v4 = 0x746867696568;
  if (v1 != 3)
  {
    v4 = 0x656E696C65736162;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 121;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_242BFD504@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_242BFDE7C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_242BFD538(uint64_t a1)
{
  v2 = sub_242BFD800();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_242BFD574(uint64_t a1)
{
  v2 = sub_242BFD800();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t CAUVehicleLayoutInfo.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECDDF80, &qword_242C1C3C0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v15 - v7;
  v10 = *v1;
  v9 = v1[1];
  LODWORD(v7) = v1[3];
  v18 = v1[2];
  v19 = v9;
  v17 = v7;
  v16 = *(v1 + 2);
  HIDWORD(v15) = *(v1 + 24);
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_242BFD800();
  sub_242C1A8A0();
  v26 = 0;
  sub_242C1A720();
  if (!v2)
  {
    v12 = BYTE4(v15);
    v13 = v16;
    v25 = 1;
    sub_242C1A720();
    v24 = 2;
    sub_242C1A720();
    v23 = 3;
    sub_242C1A720();
    v20 = v13;
    v21 = v12;
    v22 = 4;
    sub_242BFD854();
    sub_242C1A6D0();
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_242BFD800()
{
  result = qword_27ECDDF88;
  if (!qword_27ECDDF88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDDF88);
  }

  return result;
}

unint64_t sub_242BFD854()
{
  result = qword_27ECDDF90;
  if (!qword_27ECDDF90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDDF90);
  }

  return result;
}

uint64_t CAUVehicleLayoutInfo.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECDDF98, &qword_242C1C3C8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v17 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_242BFD800();
  sub_242C1A880();
  if (!v2)
  {
    v26 = 0;
    v11 = sub_242C1A6C0();
    v25 = 1;
    v12 = sub_242C1A6C0();
    v24 = 2;
    v19 = sub_242C1A6C0();
    v23 = 3;
    v18 = sub_242C1A6C0();
    v22 = 4;
    sub_242BFDAF0();
    sub_242C1A670();
    (*(v6 + 8))(v9, v5);
    v14 = v20;
    v15 = v21;
    *a2 = v11;
    *(a2 + 4) = v12;
    v16 = v18;
    *(a2 + 8) = v19;
    *(a2 + 12) = v16;
    *(a2 + 16) = v14;
    *(a2 + 24) = v15;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_242BFDAF0()
{
  result = qword_27ECDDFA0;
  if (!qword_27ECDDFA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDDFA0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CAUBaselineAnchor(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for CAUBaselineAnchor(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 8) = v3;
  return result;
}

__n128 __swift_memcpy25_4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_242BFDBEC(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 25))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_242BFDC0C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
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

  *(result + 25) = v3;
  return result;
}

unint64_t sub_242BFDC70()
{
  result = qword_27ECDDFA8;
  if (!qword_27ECDDFA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDDFA8);
  }

  return result;
}

unint64_t sub_242BFDCC8()
{
  result = qword_27ECDDFB0;
  if (!qword_27ECDDFB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDDFB0);
  }

  return result;
}

unint64_t sub_242BFDD20()
{
  result = qword_27ECDDFB8;
  if (!qword_27ECDDFB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDDFB8);
  }

  return result;
}

unint64_t sub_242BFDD78()
{
  result = qword_27ECDDFC0;
  if (!qword_27ECDDFC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDDFC0);
  }

  return result;
}

unint64_t sub_242BFDDD0()
{
  result = qword_27ECDDFC8;
  if (!qword_27ECDDFC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDDFC8);
  }

  return result;
}

unint64_t sub_242BFDE28()
{
  result = qword_27ECDDFD0;
  if (!qword_27ECDDFD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDDFD0);
  }

  return result;
}

uint64_t sub_242BFDE7C(uint64_t a1, uint64_t a2)
{
  if (a1 == 120 && a2 == 0xE100000000000000 || (sub_242C1A740() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 121 && a2 == 0xE100000000000000 || (sub_242C1A740() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6874646977 && a2 == 0xE500000000000000 || (sub_242C1A740() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x746867696568 && a2 == 0xE600000000000000 || (sub_242C1A740() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x656E696C65736162 && a2 == 0xEE00726F68636E41)
  {

    return 4;
  }

  else
  {
    v5 = sub_242C1A740();

    if (v5)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_242BFE02C(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v2;

  return sub_242C1A430();
}

uint64_t sub_242BFE0D8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_242C1A420();

  *a2 = v5;
  return result;
}

uint64_t sub_242BFE154(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v2;

  sub_242C1A430();
  return sub_242BFE1D0();
}

uint64_t sub_242BFE1D0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_242C1A420();

  if (v1)
  {

    swift_getKeyPath();
    swift_getKeyPath();
    sub_242C1A420();

    swift_getKeyPath();
    swift_getKeyPath();

    return sub_242C1A430();
  }

  return result;
}

uint64_t sub_242BFE2E8()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_242C1A420();

  return v1;
}

uint64_t sub_242BFE354(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v4 = *a1;
  v5 = *a4;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECDDFE8, &qword_242C1C778);
  sub_242C1A400();
  return swift_endAccess();
}

uint64_t sub_242BFE3C8(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECDE0F0, qword_242C1C8A8);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = (MEMORY[0x28223BE20])();
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v20 - v14;
  v16 = *(v9 + 16);
  v16(&v20 - v14, a1, v8);
  v17 = *a2;
  v16(v13, v15, v8);
  v18 = *a5;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECDDFE8, &qword_242C1C778);
  sub_242C1A410();
  swift_endAccess();
  return (*(v9 + 8))(v15, v8);
}

uint64_t sub_242BFE560(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECDDFE8, &qword_242C1C778);
  sub_242C1A400();
  return swift_endAccess();
}

uint64_t CAUAssetLibraryManager.__allocating_init()()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  CAUAssetLibraryManager.init()();
  return v3;
}

uint64_t CAUAssetLibraryManager.init()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECDDFE8, &qword_242C1C778);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v15 - v5;
  *(v1 + 16) = 0;
  v7 = OBJC_IVAR____TtC13CarAssetUtils22CAUAssetLibraryManager__slimAssetLibrary;
  v16 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECDDFF8, &qword_242C1C7C8);
  sub_242C1A3F0();
  v8 = *(v3 + 32);
  v8(v1 + v7, v6, v2);
  v9 = OBJC_IVAR____TtC13CarAssetUtils22CAUAssetLibraryManager__assetLibrary;
  v16 = 0;
  sub_242C1A3F0();
  v8(v1 + v9, v6, v2);
  if (qword_2815054C0 != -1)
  {
    swift_once();
  }

  v10 = sub_242C1A3D0();
  __swift_project_value_buffer(v10, qword_2815054C8);
  v11 = sub_242C1A3B0();
  v12 = sub_242C1A550();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_242BF1000, v11, v12, "Starting Asset Manager", v13, 2u);
    MEMORY[0x245D23AC0](v13, -1, -1);
  }

  sub_242BFE810();
  return v1;
}

void sub_242BFE810()
{
  v1 = v0;
  if (qword_2815054C0 != -1)
  {
    swift_once();
  }

  v2 = sub_242C1A3D0();
  __swift_project_value_buffer(v2, qword_2815054C8);
  v3 = sub_242C1A3B0();
  v4 = sub_242C1A550();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_242BF1000, v3, v4, "setup new connection", v5, 2u);
    MEMORY[0x245D23AC0](v5, -1, -1);
  }

  [*(v0 + 16) invalidate];
  v6 = *(v0 + 16);
  *(v0 + 16) = 0;

  sub_242C006B0();
  v7 = *(v0 + 16);
  *(v0 + 16) = v8;

  v9 = sub_242C1A3B0();
  v10 = sub_242C1A550();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_242BF1000, v9, v10, "Initialized client proxy", v11, 2u);
    MEMORY[0x245D23AC0](v11, -1, -1);
  }

  v12 = *(v1 + 16);
  if (v12)
  {
    v13 = v12 + OBJC_IVAR____TtCC13CarAssetUtils22CAUAssetLibraryManager12_ClientProxy_manager;

    MEMORY[0x2821FEC80](v13, v1);
  }
}

uint64_t sub_242BFEAD4()
{
  if ([*(v0 + OBJC_IVAR____TtCC13CarAssetUtils22CAUAssetLibraryManager12_ClientProxy_connection) remoteTarget])
  {
    sub_242C1A580();
    swift_unknownObjectRelease();
  }

  else
  {
    v3 = 0u;
    v4 = 0u;
  }

  v5[0] = v3;
  v5[1] = v4;
  if (*(&v4 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECDE0E8, &qword_242C1C8A0);
    if (swift_dynamicCast())
    {
      return v2;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_242C00D28(v5, &qword_27ECDE0E0, &unk_242C1C890);
    return 0;
  }
}

id sub_242BFEC1C(void *a1)
{
  swift_weakInit();
  v3 = sub_242C1A490();
  v4 = [objc_opt_self() serial];
  v5 = BSDispatchQueueCreate();

  *&v1[OBJC_IVAR____TtCC13CarAssetUtils22CAUAssetLibraryManager12_ClientProxy_connectionQueue] = v5;
  *&v1[OBJC_IVAR____TtCC13CarAssetUtils22CAUAssetLibraryManager12_ClientProxy_connection] = a1;
  v18.receiver = v1;
  v18.super_class = type metadata accessor for CAUAssetLibraryManager._ClientProxy();
  v6 = a1;
  v7 = objc_msgSendSuper2(&v18, sel_init);
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_242C00DDC;
  *(v9 + 24) = v8;
  v17[4] = sub_242C00DE4;
  v17[5] = v9;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 1107296256;
  v17[2] = sub_242BFF460;
  v17[3] = &block_descriptor_52;
  v10 = _Block_copy(v17);
  v11 = v7;

  [v6 configureConnection_];
  _Block_release(v10);
  LOBYTE(v10) = swift_isEscapingClosureAtFileLocation();

  if (v10)
  {
    __break(1u);
  }

  else if (qword_2815054C0 == -1)
  {
    goto LABEL_3;
  }

  swift_once();
LABEL_3:
  v12 = sub_242C1A3D0();
  __swift_project_value_buffer(v12, qword_2815054C8);
  v13 = sub_242C1A3B0();
  v14 = sub_242C1A550();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_242BF1000, v13, v14, "connection activating", v15, 2u);
    MEMORY[0x245D23AC0](v15, -1, -1);
  }

  [v6 activate];

  return v11;
}

void sub_242BFEEF8(void *a1, uint64_t a2)
{
  v4 = [objc_opt_self() userInteractive];
  [a1 setServiceQuality_];

  if (qword_27ECDDC98 != -1)
  {
    swift_once();
  }

  [a1 setInterface_];
  [a1 setInterfaceTarget_];
  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v14 = sub_242C00E0C;
  v15 = v5;
  v10 = MEMORY[0x277D85DD0];
  v11 = 1107296256;
  v12 = sub_242BFF1E0;
  v13 = &block_descriptor_56;
  v6 = _Block_copy(&v10);

  [a1 setActivationHandler_];
  _Block_release(v6);
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v14 = sub_242C00E14;
  v15 = v7;
  v10 = MEMORY[0x277D85DD0];
  v11 = 1107296256;
  v12 = sub_242BFF1E0;
  v13 = &block_descriptor_60;
  v8 = _Block_copy(&v10);

  [a1 setInterruptionHandler_];
  _Block_release(v8);
  v14 = sub_242BFF378;
  v15 = 0;
  v10 = MEMORY[0x277D85DD0];
  v11 = 1107296256;
  v12 = sub_242BFF1E0;
  v13 = &block_descriptor_63;
  v9 = _Block_copy(&v10);
  [a1 setInvalidationHandler_];
  _Block_release(v9);
}

void sub_242BFF18C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_242BFF4B4();
  }
}

void sub_242BFF1E0(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

void sub_242BFF248()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    if (qword_2815054C0 != -1)
    {
      swift_once();
    }

    v2 = sub_242C1A3D0();
    __swift_project_value_buffer(v2, qword_2815054C8);
    v3 = sub_242C1A3B0();
    v4 = sub_242C1A550();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_242BF1000, v3, v4, "connection interrupted", v5, 2u);
      MEMORY[0x245D23AC0](v5, -1, -1);
    }

    if (swift_weakLoadStrong())
    {
      sub_242BFE810();
    }
  }
}

void sub_242BFF378()
{
  if (qword_2815054C0 != -1)
  {
    swift_once();
  }

  v0 = sub_242C1A3D0();
  __swift_project_value_buffer(v0, qword_2815054C8);
  oslog = sub_242C1A3B0();
  v1 = sub_242C1A550();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&dword_242BF1000, oslog, v1, "connection invalidated", v2, 2u);
    MEMORY[0x245D23AC0](v2, -1, -1);
  }
}

uint64_t sub_242BFF460(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  swift_unknownObjectRetain();
  v4(a2);

  return swift_unknownObjectRelease();
}

uint64_t sub_242BFF4C0()
{
  result = sub_242BFEAD4();
  if (result)
  {
    v2 = result;
    v3 = swift_allocObject();
    *(v3 + 16) = v0;
    v4 = swift_allocObject();
    *(v4 + 16) = sub_242C00550;
    *(v4 + 24) = v3;
    v8[4] = sub_242C00558;
    v8[5] = v4;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 1107296256;
    v8[2] = sub_242BFFD68;
    v8[3] = &block_descriptor;
    v5 = _Block_copy(v8);
    v6 = v0;

    [v2 fetchResourcesWithReply_];
    swift_unknownObjectRelease();
    _Block_release(v5);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_242BFF624(void *a1, void *a2, uint64_t a3, void *a4)
{
  v23 = a3;
  v7 = sub_242C1A450();
  v26 = *(v7 - 8);
  v8 = *(v26 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_242C1A470();
  v11 = *(v25 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v25);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_242C00598();
  v24 = sub_242C1A560();
  v15 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v16 = swift_allocObject();
  v16[2] = v15;
  v16[3] = a4;
  v16[4] = v23;
  v16[5] = a1;
  v16[6] = a2;
  aBlock[4] = sub_242C005E4;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_242BFFD24;
  aBlock[3] = &block_descriptor_43;
  v17 = _Block_copy(aBlock);
  v18 = a1;
  v19 = a2;
  v20 = a4;

  sub_242C1A460();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_242C005F4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECDE0B8, &qword_242C1C870);
  sub_242C0064C();
  sub_242C1A5A0();
  v21 = v24;
  MEMORY[0x245D232B0](0, v14, v10, v17);
  _Block_release(v17);

  (*(v26 + 8))(v10, v7);
  return (*(v11 + 8))(v14, v25);
}

void sub_242BFF8FC(uint64_t a1, void *a2, uint64_t a3, void *a4, void *a5)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    if (a2)
    {
      v11 = sub_242C1A540();
    }

    else
    {
      v11 = sub_242C1A530();
    }

    v16 = v11;
    v36 = a5;
    if (qword_2815054C0 != -1)
    {
      swift_once();
    }

    v17 = sub_242C1A3D0();
    __swift_project_value_buffer(v17, qword_2815054C8);
    v18 = a2;

    v19 = sub_242C1A3B0();

    if (os_log_type_enabled(v19, v16))
    {
      v20 = swift_slowAlloc();
      v35 = a4;
      v21 = swift_slowAlloc();
      v37 = v21;
      *v20 = 136315394;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECDE0C8, &qword_242C1C878);
      v22 = sub_242C1A4A0();
      v24 = sub_242C10B80(v22, v23, &v37);

      *(v20 + 4) = v24;
      *(v20 + 12) = 2080;
      v25 = v18;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECDE0D0, &qword_242C1C880);
      v26 = sub_242C1A4A0();
      v28 = sub_242C10B80(v26, v27, &v37);

      *(v20 + 14) = v28;
      _os_log_impl(&dword_242BF1000, v19, v16, "fetched %s with error %s", v20, 0x16u);
      swift_arrayDestroy();
      v29 = v21;
      a4 = v35;
      MEMORY[0x245D23AC0](v29, -1, -1);
      MEMORY[0x245D23AC0](v20, -1, -1);
    }

    if (swift_weakLoadStrong())
    {
      v30 = sub_242C00970(a4, [v36 BOOLValue]);
      swift_getKeyPath();
      swift_getKeyPath();
      v37 = v30;
      sub_242C1A430();
    }

    if (a3)
    {

      v32 = sub_242BFC374(v31);
    }

    else
    {
      v32 = 0;
    }

    if (swift_weakLoadStrong())
    {
      v33 = sub_242C00B4C(a4, v32, [v36 BOOLValue]);

      swift_getKeyPath();
      swift_getKeyPath();
      v37 = v33;
      v34 = v33;

      sub_242C1A430();
      sub_242BFE1D0();
    }

    else
    {
    }
  }

  else
  {
    if (qword_2815054C0 != -1)
    {
      swift_once();
    }

    v12 = sub_242C1A3D0();
    __swift_project_value_buffer(v12, qword_2815054C8);
    v13 = sub_242C1A3B0();
    v14 = sub_242C1A540();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_242BF1000, v13, v14, "_ClientProxy instance is nil.", v15, 2u);
      MEMORY[0x245D23AC0](v15, -1, -1);
    }
  }
}

uint64_t sub_242BFFD24(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_242BFFD68(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  v9 = *(a1 + 32);
  v8 = *(a1 + 40);
  if (a4)
  {
    v10 = sub_242C1A480();
  }

  else
  {
    v10 = 0;
  }

  v11 = a2;
  v12 = a3;
  v13 = a5;
  v9(a2, v12, v10, a5);
}

id sub_242BFFE2C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CAUAssetLibraryManager._ClientProxy();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t CAUAssetLibraryManager.deinit()
{
  v1 = OBJC_IVAR____TtC13CarAssetUtils22CAUAssetLibraryManager__slimAssetLibrary;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECDDFE8, &qword_242C1C778);
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC13CarAssetUtils22CAUAssetLibraryManager__assetLibrary, v2);
  return v0;
}

uint64_t CAUAssetLibraryManager.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC13CarAssetUtils22CAUAssetLibraryManager__slimAssetLibrary;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECDDFE8, &qword_242C1C778);
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC13CarAssetUtils22CAUAssetLibraryManager__assetLibrary, v2);
  v4 = *(*v0 + 12);
  v5 = *(*v0 + 26);

  return MEMORY[0x2821FE8D8](v0, v4, v5);
}

uint64_t sub_242C00040@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for CAUAssetLibraryManager();
  result = sub_242C1A3E0();
  *a1 = result;
  return result;
}

id sub_242C00080()
{
  v1 = v0;
  if (qword_2815054C0 != -1)
  {
    swift_once();
  }

  v2 = sub_242C1A3D0();
  __swift_project_value_buffer(v2, qword_2815054C8);
  v3 = sub_242C1A3B0();
  v4 = sub_242C1A550();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_242BF1000, v3, v4, "invalidate proxy", v5, 2u);
    MEMORY[0x245D23AC0](v5, -1, -1);
  }

  v6 = *(v1 + OBJC_IVAR____TtCC13CarAssetUtils22CAUAssetLibraryManager12_ClientProxy_connection);

  return [v6 invalidate];
}

uint64_t sub_242C001C8(const char *a1)
{
  if (qword_2815054C0 != -1)
  {
    swift_once();
  }

  v2 = sub_242C1A3D0();
  __swift_project_value_buffer(v2, qword_2815054C8);
  v3 = sub_242C1A3B0();
  v4 = sub_242C1A550();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_242BF1000, v3, v4, a1, v5, 2u);
    MEMORY[0x245D23AC0](v5, -1, -1);
  }

  return sub_242BFF4C0();
}

uint64_t type metadata accessor for CAUAssetLibraryManager()
{
  result = qword_27ECDE008;
  if (!qword_27ECDE008)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_242C00370()
{
  sub_242C004C8();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_242C004C8()
{
  if (!qword_27ECDE018)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27ECDDFF8, &qword_242C1C7C8);
    v0 = sub_242C1A440();
    if (!v1)
    {
      atomic_store(v0, &qword_27ECDE018);
    }
  }
}

uint64_t sub_242C00558()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_242C00598()
{
  result = qword_27ECDE0A8;
  if (!qword_27ECDE0A8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27ECDE0A8);
  }

  return result;
}

unint64_t sub_242C005F4()
{
  result = qword_27ECDE0B0;
  if (!qword_27ECDE0B0)
  {
    sub_242C1A450();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDE0B0);
  }

  return result;
}

unint64_t sub_242C0064C()
{
  result = qword_27ECDE0C0;
  if (!qword_27ECDE0C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECDE0B8, &qword_242C1C870);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDE0C0);
  }

  return result;
}

void sub_242C006B0()
{
  v0 = sub_242C1A490();
  v1 = sub_242C1A490();
  v2 = [objc_opt_self() endpointForMachName:v0 service:v1 instance:0];

  if (v2)
  {
    v3 = [objc_opt_self() connectionWithEndpoint_];
    if (v3)
    {
      v4 = v3;
      v5 = objc_allocWithZone(type metadata accessor for CAUAssetLibraryManager._ClientProxy());
      sub_242BFEC1C(v4);
    }

    else
    {
      if (qword_2815054C0 != -1)
      {
        swift_once();
      }

      v11 = sub_242C1A3D0();
      __swift_project_value_buffer(v11, qword_2815054C8);
      v12 = sub_242C1A3B0();
      v13 = sub_242C1A550();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        *v14 = 0;
        _os_log_impl(&dword_242BF1000, v12, v13, "connection failed", v14, 2u);
        MEMORY[0x245D23AC0](v14, -1, -1);
      }

      sub_242C00D88();
      swift_allocError();
      *v15 = 1;
      swift_willThrow();
    }
  }

  else
  {
    if (qword_2815054C0 != -1)
    {
      swift_once();
    }

    v6 = sub_242C1A3D0();
    __swift_project_value_buffer(v6, qword_2815054C8);
    v7 = sub_242C1A3B0();
    v8 = sub_242C1A550();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_242BF1000, v7, v8, "endpoint failed", v9, 2u);
      MEMORY[0x245D23AC0](v9, -1, -1);
    }

    sub_242C00D88();
    swift_allocError();
    *v10 = 0;
    swift_willThrow();
  }
}

void *sub_242C00970(void *result, char a2)
{
  if (result)
  {
    v3 = result;
    v4 = sub_242C11284(MEMORY[0x277D84F90]);
    v5 = objc_allocWithZone(type metadata accessor for CAUAssetLibrary());
    v6 = v3;
    v7 = sub_242C0EB74(a2 & 1, v4, v6);

    return v7;
  }

  return result;
}

void *sub_242C00B4C(void *a1, uint64_t a2, char a3)
{
  result = 0;
  if (a2)
  {
    if (a1)
    {
      objc_allocWithZone(type metadata accessor for CAUAssetLibrary());
      v7 = a1;

      v8 = sub_242C0EB74(a3 & 1, a2, v7);

      return v8;
    }
  }

  return result;
}

uint64_t sub_242C00D28(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_242C00D88()
{
  result = qword_27ECDE0F8;
  if (!qword_27ECDE0F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDE0F8);
  }

  return result;
}

uint64_t sub_242C00DE4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

CarAssetUtils::CAUVehicleLayoutKey_optional __swiftcall CAUVehicleLayoutKey.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_242C1A7C0();

  v5 = 0;
  v6 = 17;
  switch(v3)
  {
    case 0:
      goto LABEL_27;
    case 1:
      v5 = 1;
      goto LABEL_27;
    case 2:
      v5 = 2;
      goto LABEL_27;
    case 3:
      v5 = 3;
      goto LABEL_27;
    case 4:
      v5 = 4;
      goto LABEL_27;
    case 5:
      v5 = 5;
      goto LABEL_27;
    case 6:
      v5 = 6;
      goto LABEL_27;
    case 7:
      v5 = 7;
      goto LABEL_27;
    case 8:
      v5 = 8;
      goto LABEL_27;
    case 9:
      v5 = 9;
      goto LABEL_27;
    case 10:
      v5 = 10;
      goto LABEL_27;
    case 11:
      v5 = 11;
      goto LABEL_27;
    case 12:
      v5 = 12;
      goto LABEL_27;
    case 13:
      v5 = 13;
      goto LABEL_27;
    case 14:
      v5 = 14;
      goto LABEL_27;
    case 15:
      v5 = 15;
      goto LABEL_27;
    case 16:
      v5 = 16;
LABEL_27:
      v6 = v5;
      break;
    case 17:
      break;
    case 18:
      v6 = 18;
      break;
    case 19:
      v6 = 19;
      break;
    case 20:
      v6 = 20;
      break;
    case 21:
      v6 = 21;
      break;
    case 22:
      v6 = 22;
      break;
    case 23:
      v6 = 23;
      break;
    case 24:
      v6 = 24;
      break;
    case 25:
      v6 = 25;
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
    default:
      v6 = 35;
      break;
  }

  *v2 = v6;
  return result;
}

uint64_t CAUVehicleLayoutKey.rawValue.getter()
{
  result = 0x6F72665F726F6F64;
  switch(*v0)
  {
    case 1:
      return 0xD000000000000010;
    case 2:
      v3 = 1919905636;
      goto LABEL_29;
    case 3:
      v4 = 1919905636;
      goto LABEL_17;
    case 4:
      return 0x6B6E757266;
    case 5:
      return 0x726168436C657566;
    case 6:
      return 0xD000000000000014;
    case 7:
    case 0xB:
      v5 = 9;
      return v5 | 0xD000000000000010;
    case 8:
      v5 = 10;
      return v5 | 0xD000000000000010;
    case 9:
      return 0xD000000000000013;
    case 0xA:
      return 0xD000000000000018;
    case 0xC:
      return 1685024616;
    case 0xD:
      return 0x6C5F726F7272696DLL;
    case 0xE:
      return 0xD000000000000010;
    case 0xF:
      return 0x735F726F7272696DLL;
    case 0x10:
      return 0x646E325F74616573;
    case 0x11:
      return 0xD000000000000010;
    case 0x12:
    case 0x16:
      return 0xD000000000000012;
    case 0x13:
    case 0x17:
    case 0x1A:
      return 0xD000000000000011;
    case 0x14:
      return 0x6472335F74616573;
    case 0x15:
      return 0xD000000000000010;
    case 0x18:
    case 0x19:
      v2 = 1952540019;
      goto LABEL_33;
    case 0x1B:
      return 0xD000000000000010;
    case 0x1C:
      v2 = 1701996916;
LABEL_33:
      result = v2 | 0x6F72665F00000000;
      break;
    case 0x1D:
      result = 0xD000000000000010;
      break;
    case 0x1E:
      v3 = 1701996916;
LABEL_29:
      result = v3 | 0x6165725F00000000;
      break;
    case 0x1F:
      v4 = 1701996916;
LABEL_17:
      result = v4 | 0x6165725F00000000;
      break;
    case 0x20:
      result = 0x6B6E757274;
      break;
    case 0x21:
      result = 0xD000000000000010;
      break;
    case 0x22:
      result = 0x65696873646E6977;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_242C013E0()
{
  result = qword_27ECDE220;
  if (!qword_27ECDE220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDE220);
  }

  return result;
}

unint64_t sub_242C01438()
{
  result = qword_27ECDE228;
  if (!qword_27ECDE228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDE228);
  }

  return result;
}

uint64_t sub_242C0148C(char *a1, char *a2)
{
  v10 = *a1;
  v9 = *a2;
  v2 = CAUVehicleLayoutKey.rawValue.getter();
  v4 = v3;
  if (v2 == CAUVehicleLayoutKey.rawValue.getter() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_242C1A740();
  }

  return v7 & 1;
}

unint64_t sub_242C0152C()
{
  result = qword_27ECDE230;
  if (!qword_27ECDE230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDE230);
  }

  return result;
}

uint64_t sub_242C01580()
{
  v1 = *v0;
  sub_242C1A820();
  CAUVehicleLayoutKey.rawValue.getter();
  sub_242C1A4B0();

  return sub_242C1A850();
}

uint64_t sub_242C015E8()
{
  v2 = *v0;
  CAUVehicleLayoutKey.rawValue.getter();
  sub_242C1A4B0();
}

uint64_t sub_242C0164C()
{
  v1 = *v0;
  sub_242C1A820();
  CAUVehicleLayoutKey.rawValue.getter();
  sub_242C1A4B0();

  return sub_242C1A850();
}

uint64_t sub_242C016BC@<X0>(uint64_t *a1@<X8>)
{
  result = CAUVehicleLayoutKey.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_242C01794(uint64_t a1, uint64_t a2)
{
  v4 = sub_242C01A4C();

  return MEMORY[0x2821FC220](a1, a2, v4);
}

uint64_t sub_242C017E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_242C01A4C();

  return MEMORY[0x2821FC228](a1, a4, a2, a5, v10, a3);
}

unint64_t sub_242C01868()
{
  result = qword_27ECDE238;
  if (!qword_27ECDE238)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECDE240, &qword_242C1CAB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDE238);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CAUVehicleLayoutKey(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xDE)
  {
    goto LABEL_17;
  }

  if (a2 + 34 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 34) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 34;
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

      return (*a1 | (v4 << 8)) - 34;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 34;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x23;
  v8 = v6 - 35;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CAUVehicleLayoutKey(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 34 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 34) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xDE)
  {
    v4 = 0;
  }

  if (a2 > 0xDD)
  {
    v5 = ((a2 - 222) >> 8) + 1;
    *result = a2 + 34;
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
    *result = a2 + 34;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_242C01A4C()
{
  result = qword_27ECDE248;
  if (!qword_27ECDE248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDE248);
  }

  return result;
}

id sub_242C01B2C()
{
  result = [objc_opt_self() userInteractive];
  qword_27ECDE250 = result;
  return result;
}

id sub_242C01BB0()
{
  result = sub_242C01BD0();
  qword_27ECDE258 = result;
  return result;
}

id sub_242C01BD0()
{
  v0 = sub_242C1A490();
  v1 = [objc_opt_self() interfaceWithIdentifier_];

  [v1 setClientMessagingExpectation_];
  v2 = objc_opt_self();
  v3 = [v2 protocolForProtocol_];
  [v1 setServer_];

  v4 = [v2 protocolForProtocol_];
  [v1 setClient_];

  return v1;
}

id sub_242C01D00(void *a1, void **a2)
{
  if (*a1 == -1)
  {
    v3 = *a2;
  }

  else
  {
    swift_once();
    v3 = *a2;
  }

  return v3;
}

id sub_242C01D84(uint64_t a1, uint64_t a2, void *a3, void **a4)
{
  if (*a3 == -1)
  {
    v5 = *a4;
  }

  else
  {
    swift_once();
    v5 = *a4;
  }

  return v5;
}

id CAUVariantsService.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id CAUVariantsService.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CAUVariantsService();
  return objc_msgSendSuper2(&v2, sel_init);
}

id CAUVariantsService.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CAUVariantsService();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_242C01F00()
{
  v0 = sub_242C1A3D0();
  __swift_allocate_value_buffer(v0, qword_2815054C8);
  __swift_project_value_buffer(v0, qword_2815054C8);
  return sub_242C1A3C0();
}

uint64_t static Logger.assetUtils.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_2815054C0 != -1)
  {
    swift_once();
  }

  v2 = sub_242C1A3D0();
  v3 = __swift_project_value_buffer(v2, qword_2815054C8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
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

uint64_t CAUFeatureConfiguration.Radio.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECDE260, &qword_242C1CC58);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v13 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_242C021F8();
  sub_242C1A880();
  if (!v2)
  {
    v11 = sub_242C1A660();
    (*(v6 + 8))(v9, v5);
    *a2 = v11 & 1;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_242C021F8()
{
  result = qword_27ECDE268;
  if (!qword_27ECDE268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDE268);
  }

  return result;
}

uint64_t sub_242C02268@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000011 && 0x8000000242C213C0 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_242C1A740();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_242C022FC(uint64_t a1)
{
  v2 = sub_242C021F8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_242C02338(uint64_t a1)
{
  v2 = sub_242C021F8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t CAUFeatureConfiguration.Radio.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECDE270, &qword_242C1CC60);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v11 - v6;
  v8 = *v1;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_242C021F8();
  sub_242C1A8A0();
  sub_242C1A6F0();
  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_242C024C4(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECDE270, &qword_242C1CC60);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v11 - v6;
  v8 = *v1;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_242C021F8();
  sub_242C1A8A0();
  sub_242C1A6F0();
  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_242C02620()
{
  result = qword_27ECDE278;
  if (!qword_27ECDE278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDE278);
  }

  return result;
}

unint64_t sub_242C02678()
{
  result = qword_27ECDE280;
  if (!qword_27ECDE280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDE280);
  }

  return result;
}

unint64_t sub_242C026D0()
{
  result = qword_27ECDE288;
  if (!qword_27ECDE288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECDE288);
  }

  return result;
}

CarAssetUtils::CAUAsset::ClosureMask::State_optional __swiftcall CAUAsset.ClosureMask.State.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_242C1A650();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t CAUAsset.ClosureMask.State.rawValue.getter()
{
  if (*v0)
  {
    result = 0x6465736F6C63;
  }

  else
  {
    result = 1852141679;
  }

  *v0;
  return result;
}

uint64_t sub_242C027B8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x6465736F6C63;
  }

  else
  {
    v4 = 1852141679;
  }

  if (v3)
  {
    v5 = 0xE400000000000000;
  }

  else
  {
    v5 = 0xE600000000000000;
  }

  if (*a2)
  {
    v6 = 0x6465736F6C63;
  }

  else
  {
    v6 = 1852141679;
  }

  if (*a2)
  {
    v7 = 0xE600000000000000;
  }

  else
  {
    v7 = 0xE400000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_242C1A740();
  }

  return v9 & 1;
}

uint64_t sub_242C02854()
{
  v1 = *v0;
  sub_242C1A820();
  sub_242C1A4B0();

  return sub_242C1A850();
}

uint64_t sub_242C028CC()
{
  *v0;
  sub_242C1A4B0();
}

uint64_t sub_242C02930()
{
  v1 = *v0;
  sub_242C1A820();
  sub_242C1A4B0();

  return sub_242C1A850();
}

uint64_t sub_242C029A4@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_242C1A650();

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_242C02A04(uint64_t *a1@<X8>)
{
  v2 = 1852141679;
  if (*v1)
  {
    v2 = 0x6465736F6C63;
  }

  v3 = 0xE400000000000000;
  if (*v1)
  {
    v3 = 0xE600000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_242C02AE8(uint64_t a1, uint64_t a2)
{
  v4 = sub_242C07390();

  return MEMORY[0x2821FC220](a1, a2, v4);
}

uint64_t sub_242C02B3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_242C07390();

  return MEMORY[0x2821FC228](a1, a4, a2, a5, v10, a3);
}

uint64_t CAUAsset.ClosureMask.filename.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

unint64_t sub_242C02C04()
{
  v1 = 0x6574617473;
  if (*v0 != 1)
  {
    v1 = 0x656D616E656C6966;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000010;
  }
}

uint64_t sub_242C02C60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_242C070B4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_242C02C88(uint64_t a1)
{
  v2 = sub_242C05740();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_242C02CC4(uint64_t a1)
{
  v2 = sub_242C05740();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t CAUAsset.ClosureMask.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECDE290, &qword_242C1CE00);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v13 - v7;
  v9 = *v1;
  v14 = v1[1];
  v10 = *(v1 + 1);
  v13[1] = *(v1 + 2);
  v13[2] = v10;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_242C05740();
  sub_242C1A8A0();
  v19 = v9;
  v18 = 0;
  sub_242BF80A0();
  sub_242C1A710();
  if (!v2)
  {
    v17 = v14;
    v16 = 1;
    sub_242C05794();
    sub_242C1A710();
    v15 = 2;
    sub_242C1A6E0();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t CAUAsset.ClosureMask.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECDE2A8, &qword_242C1CE08);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v16 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_242C05740();
  sub_242C1A880();
  if (!v2)
  {
    v21 = 0;
    sub_242BF8974();
    sub_242C1A6B0();
    v11 = v22;
    v19 = 1;
    sub_242C057E8();
    sub_242C1A6B0();
    v17 = v20;
    v18 = 2;
    v13 = sub_242C1A680();
    v15 = v14;
    (*(v6 + 8))(v9, v5);
    *a2 = v11;
    *(a2 + 1) = v17;
    *(a2 + 8) = v13;
    *(a2 + 16) = v15;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

CarAssetUtils::CAUAsset::Seat::State_optional __swiftcall CAUAsset.Seat.State.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_242C1A650();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t CAUAsset.Seat.State.rawValue.getter()
{
  v1 = 0x64657463656C6573;
  v2 = 0x56646E4174616568;
  if (*v0 != 2)
  {
    v2 = 0x6E4F746E6576;
  }

  if (*v0)
  {
    v1 = 0x6E4F74616568;
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

uint64_t sub_242C03200()
{
  v1 = *v0;
  sub_242C1A820();
  sub_242C1A4B0();

  return sub_242C1A850();
}

uint64_t sub_242C032C4()
{
  *v0;
  *v0;
  *v0;
  sub_242C1A4B0();
}

uint64_t sub_242C03374()
{
  v1 = *v0;
  sub_242C1A820();
  sub_242C1A4B0();

  return sub_242C1A850();
}

void sub_242C03440(uint64_t *a1@<X8>)
{
  v2 = 0xE800000000000000;
  v3 = 0x64657463656C6573;
  v4 = 0xED00006E4F746E65;
  v5 = 0x56646E4174616568;
  if (*v1 != 2)
  {
    v5 = 0x6E4F746E6576;
    v4 = 0xE600000000000000;
  }

  if (*v1)
  {
    v3 = 0x6E4F74616568;
    v2 = 0xE600000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t sub_242C03570(uint64_t a1, uint64_t a2)
{
  v4 = sub_242C0733C();

  return MEMORY[0x2821FC220](a1, a2, v4);
}

uint64_t sub_242C035C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_242C0733C();

  return MEMORY[0x2821FC228](a1, a4, a2, a5, v10, a3);
}

unint64_t sub_242C03668()
{
  v1 = 0x6574617473;
  v2 = 0x4448527369;
  if (*v0 != 2)
  {
    v2 = 0x656D616E656C6966;
  }

  if (!*v0)
  {
    v1 = 0xD000000000000010;
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

uint64_t sub_242C036E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_242C071D4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_242C03708(uint64_t a1)
{
  v2 = sub_242C05998();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_242C03744(uint64_t a1)
{
  v2 = sub_242C05998();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t CAUAsset.Seat.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECDE2B8, &qword_242C1CE10);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v14 - v7;
  v9 = *v1;
  v10 = v1[1];
  v15 = v1[2];
  v16 = v10;
  v11 = *(v1 + 1);
  v14[1] = *(v1 + 2);
  v14[2] = v11;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_242C05998();
  sub_242C1A8A0();
  v22 = v9;
  v21 = 0;
  sub_242BF80A0();
  sub_242C1A710();
  if (!v2)
  {
    v20 = v16;
    v19 = 1;
    sub_242C059EC();
    sub_242C1A710();
    v18 = 2;
    sub_242C1A6F0();
    v17 = 3;
    sub_242C1A6E0();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t CAUAsset.Seat.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECDE2D0, &qword_242C1CE18);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_242C05998();
  sub_242C1A880();
  if (!v2)
  {
    v24 = 0;
    sub_242BF8974();
    sub_242C1A6B0();
    v11 = v25;
    v22 = 1;
    sub_242C05A40();
    sub_242C1A6B0();
    v12 = v23;
    v21 = 2;
    v19 = sub_242C1A690();
    v20 = 3;
    v14 = sub_242C1A680();
    v19 &= 1u;
    v15 = v9;
    v17 = v16;
    (*(v6 + 8))(v15, v5);
    *a2 = v11;
    *(a2 + 1) = v12;
    *(a2 + 2) = v19;
    *(a2 + 8) = v14;
    *(a2 + 16) = v17;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_242C03C14(uint64_t a1)
{
  v2 = sub_242C05A94();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_242C03C50(uint64_t a1)
{
  v2 = sub_242C05A94();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t CAUAsset.VehicleLogo.filename.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t sub_242C03DAC(uint64_t a1)
{
  v2 = sub_242C05AE8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_242C03DE8(uint64_t a1)
{
  v2 = sub_242C05AE8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_242C03F08(uint64_t a1)
{
  v2 = sub_242C05B3C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_242C03F44(uint64_t a1)
{
  v2 = sub_242C05B3C();

  return MEMORY[0x2821FE720](a1, v2);
}

CarAssetUtils::CAUAsset::TopDownInterior __swiftcall CAUAsset.TopDownInterior.init(isRHD:filename:)(Swift::Bool isRHD, Swift::String filename)
{
  *v2 = isRHD;
  *(v2 + 8) = filename;
  result.filename = filename;
  result.isRHD = isRHD;
  return result;
}

uint64_t sub_242C04050(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  if (*(a1 + 1) == *(a2 + 1) && *(a1 + 2) == *(a2 + 2))
  {
    return 1;
  }

  else
  {
    return sub_242C1A740();
  }
}

uint64_t sub_242C04098@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x4448527369 && a2 == 0xE500000000000000;
  if (v6 || (sub_242C1A740() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x656D616E656C6966 && a2 == 0xE800000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_242C1A740();

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

uint64_t sub_242C04170(uint64_t a1)
{
  v2 = sub_242C05B90();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_242C041AC(uint64_t a1)
{
  v2 = sub_242C05B90();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_242C0422C(void *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  v17 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v16 - v9;
  v11 = *v4;
  v12 = *(v4 + 1);
  v16[0] = *(v4 + 2);
  v16[1] = v12;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v17();
  sub_242C1A8A0();
  v20 = 0;
  v14 = v18;
  sub_242C1A6F0();
  if (!v14)
  {
    v19 = 1;
    sub_242C1A6E0();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_242C04400@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, void (*a4)(void)@<X3>, uint64_t a5@<X8>)
{
  v21 = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v20 = *(v8 - 8);
  v9 = *(v20 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v20 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a4();
  sub_242C1A880();
  if (!v5)
  {
    v14 = v20;
    v13 = v21;
    v23 = 0;
    v15 = sub_242C1A690();
    v22 = 1;
    v17 = sub_242C1A680();
    v19 = v18;
    (*(v14 + 8))(v11, v8);
    *v13 = v15 & 1;
    *(v13 + 8) = v17;
    *(v13 + 16) = v19;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_242C045E4(uint64_t a1)
{
  v2 = sub_242C05BE4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_242C04620(uint64_t a1)
{
  v2 = sub_242C05BE4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_242C04740(uint64_t a1)
{
  v2 = sub_242C05C38();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_242C0477C(uint64_t a1)
{
  v2 = sub_242C05C38();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_242C0489C(uint64_t a1)
{
  v2 = sub_242C05C8C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_242C048D8(uint64_t a1)
{
  v2 = sub_242C05C8C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_242C049F8(uint64_t a1)
{
  v2 = sub_242C05CE0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_242C04A34(uint64_t a1)
{
  v2 = sub_242C05CE0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_242C04B54(uint64_t a1)
{
  v2 = sub_242C05D34();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_242C04B90(uint64_t a1)
{
  v2 = sub_242C05D34();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_242C04CB0(uint64_t a1)
{
  v2 = sub_242C05D88();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_242C04CEC(uint64_t a1)
{
  v2 = sub_242C05D88();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_242C04E0C(uint64_t a1)
{
  v2 = sub_242C05DDC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_242C04E48(uint64_t a1)
{
  v2 = sub_242C05DDC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t _s13CarAssetUtils8CAUAssetO11VehicleLogoV2eeoiySbAE_AEtFZ_0(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_242C1A740();
  }
}

uint64_t sub_242C04F98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x656D616E656C6966 && a2 == 0xE800000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_242C1A740();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_242C05020(uint64_t a1)
{
  v2 = sub_242C05E30();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_242C0505C(uint64_t a1)
{
  v2 = sub_242C05E30();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_242C050DC(void *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  v15 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v14 - v9;
  v11 = v4[1];
  v14 = *v4;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v15();
  sub_242C1A8A0();
  sub_242C1A6E0();
  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_242C05268@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, void (*a4)(void)@<X3>, uint64_t *a5@<X8>)
{
  v21 = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v20 = *(v8 - 8);
  v9 = *(v20 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v19 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a4();
  sub_242C1A880();
  if (!v5)
  {
    v13 = v20;
    v14 = v21;
    v15 = sub_242C1A680();
    v17 = v16;
    (*(v13 + 8))(v11, v8);
    *v14 = v15;
    v14[1] = v17;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}
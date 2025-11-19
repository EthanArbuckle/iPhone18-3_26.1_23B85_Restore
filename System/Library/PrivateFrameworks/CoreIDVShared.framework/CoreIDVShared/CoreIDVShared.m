void *sub_2259A9A68@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_2259A9AC0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_225CCE474();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_2259A9AEC(uint64_t a1, int a2)
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

uint64_t getEnumTagSinglePayload for ISO18013Version(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for ISO18013Version(uint64_t result, int a2, int a3)
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

uint64_t sub_2259A9BE8()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2259A9C20(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

void sub_2259A9DF4(SecCertificateRef *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = SecCertificateCopyData(*a1);
  v4 = sub_225CCCFA4();
  v6 = v5;

  *a2 = v4;
  a2[1] = v6;
}

uint64_t sub_2259A9F20()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AF08);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_2259A9FF8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AF08);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_2259AA098()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_2259AA0D0(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_2259AA0E0(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_2259AA0F0()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2259AA130()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2259AA16C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73FD10);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_2259AA218()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2259AA250()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AF78);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_2259AA2F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ISO18013SessionTranscript(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_2259AA3AC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for ISO18013SessionTranscript(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_2259AA468()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2259AA4A8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  *a2 = v4;
  a2[1] = v5;
  return sub_2259CB6FC(v4, v5);
}

id sub_2259AA4F8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 32);
  *a2 = v4;

  return v4;
}

uint64_t sub_2259AA55C(char a1)
{
  if (a1)
  {
    return 0x736D61726170;
  }

  else
  {
    return 1635017060;
  }
}

uint64_t sub_2259AA5A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_225CCCEA4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73E090);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_2259AA69C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_225CCCEA4();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73E090);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_2259AA960()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_2259AA998(unsigned __int8 a1)
{
  v1 = 0x687469726F676C61;
  v2 = 0x6E65697069636572;
  v3 = 0x736D61726170;
  if (a1 != 3)
  {
    v3 = 1635017060;
  }

  if (a1 != 2)
  {
    v2 = v3;
  }

  if (a1)
  {
    v1 = 0x7265646E6573;
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_2259AAA28(unsigned __int8 a1)
{
  v1 = 0x687469726F676C61;
  v2 = 1397320560;
  v3 = 1937335659;
  if (a1 != 4)
  {
    v3 = 0x736567617373656DLL;
  }

  if (a1 != 3)
  {
    v2 = v3;
  }

  v4 = 0x7265646E6573;
  if (a1 != 1)
  {
    v4 = 0x6E65697069636572;
  }

  if (a1)
  {
    v1 = v4;
  }

  if (a1 <= 2u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_2259AAAD4(unsigned __int8 a1)
{
  v1 = 0x687469726F676C61;
  v2 = 1635017060;
  if (a1 != 2)
  {
    v2 = 0x707972636E656E75;
  }

  if (a1)
  {
    v1 = 0x736D61726170;
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_2259AAB54(char a1)
{
  if (!a1)
  {
    return 0x644979656BLL;
  }

  if (a1 == 1)
  {
    return 1635017060;
  }

  return 0x707972636E656E75;
}

uint64_t get_enum_tag_for_layout_string_13CoreIDVShared10HPKEParamsVSg_0(uint64_t a1)
{
  v1 = *(a1 + 8) >> 60;
  if (((4 * v1) & 0xC) != 0)
  {
    return 16 - ((4 * v1) & 0xC | (v1 >> 2));
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2259AABFC(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_225CCDDB4();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73B540);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 32);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_2259AAD2C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = sub_225CCDDB4();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73B540);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 32);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_2259AAFA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_225CCD494();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 3)
    {
      return v10 - 2;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_2259AB060(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_225CCD494();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = a2 + 2;
  }

  return result;
}

uint64_t sub_2259AB118(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_225CCDEA4();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

void *sub_2259AB1C4(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_225CCDEA4();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2259AB278(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_225CCD0B4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + a3[5];

    return v9(v10, a2, v8);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v12 = *(a1 + a3[6] + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }

  else
  {
    v13 = sub_225CCCB74();
    v14 = *(*(v13 - 8) + 48);
    v15 = a1 + a3[7];

    return v14(v15, a2, v13);
  }
}

uint64_t sub_2259AB3A4(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = sub_225CCD0B4();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + a4[5];

    return v11(v12, a2, a2, v10);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[6] + 8) = (a2 - 1);
  }

  else
  {
    v13 = sub_225CCCB74();
    v14 = *(*(v13 - 8) + 56);
    v15 = a1 + a4[7];

    return v14(v15, a2, a2, v13);
  }

  return result;
}

uint64_t sub_2259AB4D0(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_225CCD0B4();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 36);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_225CCCB74();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 40);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_2259AB5F4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_225CCD0B4();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 36);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_225CCCB74();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 40);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_2259AB718(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73FD00);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[7];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = sub_225CCD0B4();
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[8];
    goto LABEL_9;
  }

  v14 = sub_225CCD494();
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[10];

  return v15(v16, a2, v14);
}

uint64_t sub_2259AB890(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
    return result;
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73FD00);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[7];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = sub_225CCD0B4();
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[8];
    goto LABEL_7;
  }

  v14 = sub_225CCD494();
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[10];

  return v15(v16, a2, a2, v14);
}

uint64_t sub_2259ABA08(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for AnyCodable();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_2259ABAB4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for AnyCodable();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2259ABB58(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73E090);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

void *sub_2259ABC14(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73E090);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2259ABCC4(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73FD00);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

void *sub_2259ABD80(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73FD00);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2259ABE64(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_225CCD0B4();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73FD00);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 32);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_2259ABF94(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v8 = sub_225CCD0B4();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73FD00);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 32);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_2259AC0C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 56);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73FD00);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 56);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_2259AC180(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 56) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73FD00);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 56);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2259AC4CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ISO18013SessionTranscript(0);
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

uint64_t sub_2259AC58C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for ISO18013SessionTranscript(0);
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

uint64_t sub_2259AC64C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 32);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for AnyCodable();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_2259AC6F8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 32) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for AnyCodable();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2259AC79C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for ISO18013MobileSecurityObject.DeviceKeyInfo(0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 28);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for ISO18013MobileSecurityObject.ValidityInfo(0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 36);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_2259AC8C0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for ISO18013MobileSecurityObject.DeviceKeyInfo(0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 28);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for ISO18013MobileSecurityObject.ValidityInfo(0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 36);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_2259AC9E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_225CCD494();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_2259ACAAC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_225CCD494();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = a2;
  }

  return result;
}

uint64_t sub_2259ACB64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_225CCD0B4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73FD00);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 28);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_2259ACC60(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_225CCD0B4();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73FD00);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 28);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_2259ACD68(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_225CCD354();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_2259ACE14(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_225CCD354();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2259ACEB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ISO18013SessionTranscript(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 32);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_2259ACF78(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for ISO18013SessionTranscript(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 32) = (a2 - 1);
  }

  return result;
}

uint64_t sub_2259AD034(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ISO18013SessionTranscript(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_2259AD0F0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for ISO18013SessionTranscript(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_2259AD1A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 32);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AC30);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_2259AD264(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 32) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AC30);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2259AD31C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ISO18013RequestForwardingEncryptionInformation.DCAPIEncryptionParameters(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_2259AD388(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ISO18013RequestForwardingEncryptionInformation.DCAPIEncryptionParameters(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_2259AD408(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73CB30);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_2259AD4C4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73CB30);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2259AD574(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for ISO18013Response.IssuerSigned(0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73BC78);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 24);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_2259AD6A4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for ISO18013Response.IssuerSigned(0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73BC78);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_2259AD7D4(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = sub_225CCD354();
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }
}

void *sub_2259AD88C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    v7 = sub_225CCD354();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2259AD930(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for ISO18013Response.DeviceAuth(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_2259AD9DC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for ISO18013Response.DeviceAuth(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2259ADA80(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_225CCD0B4();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_2259ADB2C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_225CCD0B4();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2259ADBD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73CFE0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8) >> 60;
    if (((4 * v10) & 0xC) != 0)
    {
      return 16 - ((4 * v10) & 0xC | (v10 >> 2));
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_2259ADCAC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73CFE0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    v11 = (a1 + *(a4 + 20));
    *v11 = 0;
    v11[1] = (((-a2 >> 2) & 3) - 4 * a2) << 60;
  }

  return result;
}

uint64_t sub_2259ADD80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 40);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73CFE0);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_2259ADE48(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 40) = a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73CFE0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2259ADF08@<X0>(_BYTE *a1@<X8>)
{
  result = CBOREncoder.presentmentType.getter(&v3);
  *a1 = v3;
  return result;
}

uint64_t sub_2259ADFB4@<X0>(_BYTE *a1@<X8>)
{
  result = CBORDecoder.presentmentType.getter(&v3);
  *a1 = v3;
  return result;
}

uint64_t sub_2259AE068(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_225CCD0B4();
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

uint64_t sub_2259AE128(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_225CCD0B4();
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

uint64_t sub_2259AE1E4()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_2259AE230(unsigned __int8 a1)
{
  v1 = 0x726564616568;
  v2 = 0x64616F6C796170;
  if (a1 != 2)
  {
    v2 = 0x727574616E676973;
  }

  if (a1)
  {
    v1 = 0x65746365746F7270;
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_2259AE2B4(char a1)
{
  if (a1)
  {
    return 7168373;
  }

  else
  {
    return 6501752;
  }
}

uint64_t sub_2259AE2D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_225CCCB74();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_2259AE344(uint64_t a1, uint64_t a2)
{
  v4 = sub_225CCCB74();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_2259AE3B4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73D760);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_2259AE484()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2259AE4BC()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D73AC48);
  v1 = sub_225CCE944();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_2259AE5A8()
{
  v1 = sub_225CCE944();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_2259AE690()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2259AE6D0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73FD10);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_2259AEAC8()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2259AEB00()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2259AEB38()
{

  return MEMORY[0x2821FE8E8](v0, 33, 7);
}

uint64_t sub_2259AEB70()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_2259AEBB0()
{

  return MEMORY[0x2821FE8E8](v0, 113, 7);
}

uint64_t sub_2259AEBF8()
{
  sub_225B1F28C(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

uint64_t sub_2259AEC50()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_2259AEC90()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2259AECCC()
{

  return MEMORY[0x2821FE8E8](v0, 50, 7);
}

uint64_t sub_2259AED04()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2259AED3C()
{
  sub_225A4607C(*(v0 + 16), *(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 25, 7);
}

uint64_t sub_2259AED78()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73D7C0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 25) & ~v2;
  v4 = *(v1 + 64);
  sub_225A4607C(*(v0 + 16), *(v0 + 24));
  v5 = type metadata accessor for ISO18013Response.DeviceAuth(0);
  if (!(*(*(v5 - 8) + 48))(v0 + v3, 1, v5))
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v6 = sub_225CCD354();
    }

    else
    {
      v6 = sub_225CCD4C4();
    }

    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  return MEMORY[0x2821FE8E8](v0, ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_2259AEEDC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2259AEF24()
{

  return MEMORY[0x2821FE8E8](v0, 34, 7);
}

uint64_t sub_2259AEF6C()
{

  return MEMORY[0x2821FE8E8](v0, 44, 7);
}

uint64_t sub_2259AEFA4()
{

  return MEMORY[0x2821FE8E8](v0, 89, 7);
}

uint64_t sub_2259AEFF4()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_2259AF044()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_2259AF08C()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2259AF0CC()
{

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_2259AF10C()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_2259AF15C()
{

  v1 = *(v0 + 64);
  if (v1 != 255)
  {
    sub_2259F6140(*(v0 + 48), *(v0 + 56), v1);
  }

  return MEMORY[0x2821FE8E8](v0, 65, 7);
}

uint64_t sub_2259AF1A8()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2259AF210()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

unint64_t get_enum_tag_for_layout_string_13CoreIDVShared15DaemonAnalyticsC39DigitalPresentmentRequestedEventOutcomeO_0(uint64_t *a1)
{
  if (*a1 >= 0)
  {
    return *a1 >> 62;
  }

  else
  {
    return (*a1 >> 3) + 2;
  }
}

uint64_t sub_2259AF288()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_2259B204C()
{

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_2259B2094()
{
  sub_225B33C90(*(v0 + 16), *(v0 + 24), *(v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 33, 7);
}

uint64_t sub_2259B20D0()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2259B2110()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2259B2148()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73DA00);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_2259B21DC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73DA00);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_2259B22AC()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2259B22E4()
{
  v1 = sub_225CCDA04();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_2259B23B0()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2259B23E8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73DAB0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_2259B24D0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73DAB0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_2259B2564()
{
  v1 = *(v0 + 32);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 56) & ~v3;
  v5 = (*(v2 + 64) + v4 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 32, v3 | 7);
}

uint64_t sub_2259B262C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2259B2664()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

id sub_2259B38AC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC13CoreIDVShared19ImageQualityMetrics_fuzzyMatchAssessment;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

uint64_t sub_2259B3BE8()
{
  v1 = (type metadata accessor for UserNotificationManagerDelegate.ContinuationIdentifier(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[7];
  v6 = sub_225CCD124();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_2259B3CD8(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73FD00);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 48);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_2259B3D94(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73FD00);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 48);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2259B3E44(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_225CCD124();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_2259B3EF0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_225CCD124();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2259B3F94()
{
  _Block_release(*(v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2259B3FEC()
{

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_2259B4034()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2259B406C()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2259B40AC()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2259B4100()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2259B4158(uint64_t a1, uint64_t a2)
{
  v4 = sub_225CCD0B4();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_2259B41C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_225CCD0B4();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_2259B4250@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 56);
  return result;
}

uint64_t sub_2259B4298(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 56) = v2;
  return result;
}

uint64_t sub_2259B42DC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 64);
}

uint64_t sub_2259B432C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 72);
}

uint64_t sub_2259B437C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 80);
}

uint64_t sub_2259B43CC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 88);
}

uint64_t sub_2259B441C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_225CCD624();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D740448);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_2259B4518(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_225CCD624();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D740448);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_2259B4620(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for AlgorithmIdentifier();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8) >> 60;
    if (((4 * v10) & 0xC) != 0)
    {
      return 16 - ((4 * v10) & 0xC | (v10 >> 2));
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_2259B46F0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for AlgorithmIdentifier();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    v11 = (a1 + *(a4 + 20));
    *v11 = 0;
    v11[1] = (((-a2 >> 2) & 3) - 4 * a2) << 60;
  }

  return result;
}

uint64_t sub_2259B47D0()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2259B4818()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

uint64_t sub_2259B4870()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

uint64_t sub_2259B48C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for DIPSignpost.Config(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_2259B4984(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for DIPSignpost.Config(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_2259B4A3C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_225CCD8D4();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_2259B4AE8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_225CCD8D4();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2259B4B8C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2259B4BC4()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2259B4BFC()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_2259B4C44()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2259B4C84()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7419A8);
  (*(*(v1 - 8) + 8))(v0 + 16, v1);

  return MEMORY[0x2821FE8E8](v0, 17, 7);
}

uint64_t sub_2259B4DA0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AF08);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_2259B4E3C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for MobileDocumentProviderSceneConfiguration(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_2259B4EE8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for MobileDocumentProviderSceneConfiguration(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2259B4FA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_225CCCEA4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_2259B505C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_225CCCEA4();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_2259B5114()
{
  v1 = sub_225CCCEA4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_2259B519C()
{
  v1 = (type metadata accessor for WebPresentmentRequest(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  sub_2259BEF00(*(v0 + v3), *(v0 + v3 + 8));
  v5 = v1[8];
  v6 = sub_225CCCEA4();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_2259B5300()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2259B56C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 12)
  {
    v4 = *(a1 + 8) >> 60;
    if (((4 * v4) & 0xC) != 0)
    {
      return 16 - ((4 * v4) & 0xC | (v4 >> 2));
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = sub_225CCCEA4();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_2259B5778(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 12)
  {
    *result = 0;
    result[1] = (((-a2 >> 2) & 3) - 4 * a2) << 60;
  }

  else
  {
    v7 = sub_225CCCEA4();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2259B5824()
{
  v1 = *(type metadata accessor for PartialWebPresentmentRequest(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = sub_225CCCEA4();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_2259B5920()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2259B5958()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2259B599C()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2259B5A08()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_2259B5A48()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2259B5A88()
{
  sub_2259BEF00(*(v0 + 16), *(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2259B5AC0()
{
  sub_2259BEF00(*(v0 + 16), *(v0 + 24));
  sub_2259BEF00(*(v0 + 32), *(v0 + 40));

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2259B5B00()
{

  return MEMORY[0x2821FE8E8](v0, 25, 7);
}

uint64_t sub_2259B5B38()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2259B5B70()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2259B5BA8()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_2259B5BEC()
{
  _Block_release(*(v0 + 56));

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_2259B5C44()
{
  _Block_release(*(v0 + 56));

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_2259B5C94()
{
  _Block_release(*(v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2259B5E6C()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2259B5EC4()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2259B5F08()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2259B5F48()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2259B5F80()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2259B5FB8()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2259B6090()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_2259B60D8()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2259B6110()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D73AC48);
  v1 = sub_225CCE944();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 56) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_2259B621C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D73AC48);
  v1 = sub_225CCE944();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

id sub_2259B62FC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 sceneIdentifiers];
  *a2 = result;
  return result;
}

id sub_2259B634C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 mobileDocumentRegistrations];
  *a2 = result;
  return result;
}

id sub_2259B63AC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 attestationCertificate];
  *a2 = result;
  return result;
}

id sub_2259B63FC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 authenticationCertificates];
  *a2 = result;
  return result;
}

id sub_2259B644C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 signingKeys];
  *a2 = result;
  return result;
}

id sub_2259B64A4@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 applicationInstallation];
  *a2 = result;
  return result;
}

id sub_2259B64F4@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 signingKey];
  *a2 = result;
  return result;
}

id sub_2259B6544@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 certificateChain];
  *a2 = result;
  return result;
}

id sub_2259B661C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 applicationInstallation];
  *a2 = result;
  return result;
}

id sub_2259B666C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 signingKey];
  *a2 = result;
  return result;
}

id sub_2259B66C4@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 applicationInstallation];
  *a2 = result;
  return result;
}

id sub_2259B6714@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 attestationCertificates];
  *a2 = result;
  return result;
}

id sub_2259B6764@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 authenticationCertificates];
  *a2 = result;
  return result;
}

id sub_2259B67B4@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 authorityKeyIdentifiers];
  *a2 = result;
  return result;
}

id sub_2259B688C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 applicationInstallation];
  *a2 = result;
  return result;
}

id sub_2259B6964@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 requiresDeletion];
  *a2 = result;
  return result;
}

id sub_2259B69AC@<X0>(id *a1@<X0>, _WORD *a2@<X8>)
{
  result = [*a1 version];
  *a2 = result;
  return result;
}

id sub_2259B6A74@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 isDonated];
  *a2 = result;
  return result;
}

id sub_2259B6AC4@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 optInStatus];
  *a2 = result;
  return result;
}

id sub_2259B6C0C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 actions];
  *a2 = result;
  return result;
}

id sub_2259B6C5C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 proofingSession];
  *a2 = result;
  return result;
}

id sub_2259B6CAC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 actionType];
  *a2 = result;
  return result;
}

id sub_2259B6D04@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 displayMessage];
  *a2 = result;
  return result;
}

id sub_2259B6D94@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 canUploadOnExpensiveNetwork];
  *a2 = result;
  return result;
}

id sub_2259B6DDC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 cloudKitUploadsMaxRetryCount];
  *a2 = result;
  return result;
}

id sub_2259B6E24@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 connectToWifiReminderInDays];
  *a2 = result;
  return result;
}

id sub_2259B6F2C@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 didAttemptComboProofing];
  *a2 = result;
  return result;
}

id sub_2259B6F74@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 didNotifyOnUploadsCompletion];
  *a2 = result;
  return result;
}

id sub_2259B6FBC@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 didShowWifiReminderAlert];
  *a2 = result;
  return result;
}

id sub_2259B7084@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 hasUserConsentToShareBiomeData];
  *a2 = result;
  return result;
}

id sub_2259B70CC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 issuerCurrentCredentialCapacity];
  *a2 = result;
  return result;
}

id sub_2259B71D4@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 manualCheckInterval];
  *a2 = result;
  return result;
}

id sub_2259B731C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 proofingActionStatus];
  *a2 = result;
  return result;
}

id sub_2259B7424@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 provisioningRetryTimeout];
  *a2 = result;
  return result;
}

id sub_2259B74EC@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 shouldScheduleUploads];
  *a2 = result;
  return result;
}

id sub_2259B7534@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 shouldShowNotificationOnWatch];
  *a2 = result;
  return result;
}

id sub_2259B75FC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 target];
  *a2 = result;
  return result;
}

id sub_2259B7644@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 totalUploadAssetsFileSizeInBytes];
  *a2 = result;
  return result;
}

id sub_2259B76CC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 proofingErrorMessage];
  *a2 = result;
  return result;
}

id sub_2259B771C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 uploadAssets];
  *a2 = result;
  return result;
}

id sub_2259B77F4@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 presentments];
  *a2 = result;
  return result;
}

id sub_2259B78C4@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 credential];
  *a2 = result;
  return result;
}

id sub_2259B7A9C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 proofingSession];
  *a2 = result;
  return result;
}

id sub_2259B7AEC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 axSettings];
  *a2 = result;
  return result;
}

id sub_2259B7B7C@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 didStepUp];
  *a2 = result;
  return result;
}

id sub_2259B7E84@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 gestureAssessment];
  *a2 = result;
  return result;
}

id sub_2259B7F4C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 livenessAssessment];
  *a2 = result;
  return result;
}

id sub_2259B81D4@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 passiveGestureAssessment];
  *a2 = result;
  return result;
}

id sub_2259B821C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 passiveLivenessAssessment];
  *a2 = result;
  return result;
}

id sub_2259B83E4@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 shouldDonateProofingDecision];
  *a2 = result;
  return result;
}

id sub_2259B842C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 skinTone];
  *a2 = result;
  return result;
}

id sub_2259B8474@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 aclType];
  *a2 = result;
  return result;
}

id sub_2259B84FC@<X0>(id *a1@<X0>, _WORD *a2@<X8>)
{
  result = [*a1 designationStatus];
  *a2 = result;
  return result;
}

id sub_2259B858C@<X0>(id *a1@<X0>, _WORD *a2@<X8>)
{
  result = [*a1 version];
  *a2 = result;
  return result;
}

id sub_2259B85D4@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 progenitorKey];
  *a2 = result;
  return result;
}

id sub_2259B8724@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 provisioningFailureReasons];
  *a2 = result;
  return result;
}

id sub_2259B8774@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 state];
  *a2 = result;
  return result;
}

id sub_2259B87FC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 cryptoKeys];
  *a2 = result;
  return result;
}

id sub_2259B884C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 options];
  *a2 = result;
  return result;
}

id sub_2259B889C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 payloads];
  *a2 = result;
  return result;
}

id sub_2259B88EC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 deleteInactiveKeysAfterDays];
  *a2 = result;
  return result;
}

id sub_2259B8934@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 deleteIncompleteCredentialAfterDays];
  *a2 = result;
  return result;
}

id sub_2259B897C@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 isPIIHashMismatchTerminal];
  *a2 = result;
  return result;
}

id sub_2259B89C4@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 payloadProtectionPolicy];
  *a2 = result;
  return result;
}

id sub_2259B8A0C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 presentmentAuthPolicy];
  *a2 = result;
  return result;
}

id sub_2259B8A54@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 readerAuthenticationPolicy];
  *a2 = result;
  return result;
}

id sub_2259B8A9C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 credential];
  *a2 = result;
  return result;
}

id sub_2259B8C2C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 keySlot];
  *a2 = result;
  return result;
}

id sub_2259B8D34@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 timesUsed];
  *a2 = result;
  return result;
}

id sub_2259B8DFC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 credential];
  *a2 = result;
  return result;
}

id sub_2259B8E4C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 payload];
  *a2 = result;
  return result;
}

id sub_2259B8E9C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 progenitorAuthACL];
  *a2 = result;
  return result;
}

id sub_2259B8EEC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 protectedPayload];
  *a2 = result;
  return result;
}

id sub_2259B8F3C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 relyingParties];
  *a2 = result;
  return result;
}

id sub_2259B9014@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 payload];
  *a2 = result;
  return result;
}

id sub_2259B9124@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 format];
  *a2 = result;
  return result;
}

id sub_2259B91AC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 issuerCertificateChain];
  *a2 = result;
  return result;
}

id sub_2259B92BC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 protectionType];
  *a2 = result;
  return result;
}

id sub_2259B9444@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 credential];
  *a2 = result;
  return result;
}

id sub_2259B9494@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 identifierRevocationList];
  *a2 = result;
  return result;
}

id sub_2259B94E4@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 payloadProtectionKey];
  *a2 = result;
  return result;
}

id sub_2259B9534@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 presentmentKey];
  *a2 = result;
  return result;
}

id sub_2259B959C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 presentmentKeys];
  *a2 = result;
  return result;
}

_OWORD *sub_2259B9624(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_2259B96D0()
{
  sub_225CCE5B4();
}

void *sub_2259B972C@<X0>(void *result@<X0>, char *a2@<X8>)
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

uint64_t sub_2259B974C@<X0>(_BYTE *a1@<X8>)
{

  *a1 = 1;
  return result;
}

uint64_t sub_2259B97A8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_2259BEF00(a1, a2);
  }

  return a1;
}

id APPLEIDV_LOG_CLIENT()
{
  if (APPLEIDV_LOG_CLIENT_once != -1)
  {
    APPLEIDV_LOG_CLIENT_cold_1();
  }

  v1 = APPLEIDV_LOG_CLIENT_log;

  return v1;
}

id DIV_LOG_KEXT()
{
  if (DIV_LOG_KEXT_once != -1)
  {
    DIV_LOG_KEXT_cold_1();
  }

  v1 = DIV_LOG_KEXT_log;

  return v1;
}

uint64_t GenericAppleIDVCall(uint32_t a1, const void *a2, size_t a3, void *a4, size_t *a5)
{
  *existing = 0;
  connect = 0;
  MatchingServices = MEMORY[0x22AA6E860](0, &existing[1]);
  if (MatchingServices)
  {
    return MatchingServices;
  }

  v13 = IOServiceMatching("AppleIDV");
  if (!v13)
  {
    return 5;
  }

  MatchingServices = IOServiceGetMatchingServices(existing[1], v13, existing);
  if (MatchingServices)
  {
    return MatchingServices;
  }

  v14 = IOIteratorNext(existing[0]);
  if (v14)
  {
    v15 = v14;
    v11 = IOServiceOpen(v14, *MEMORY[0x277D85F48], 0, &connect);
    IOObjectRelease(v15);
    if (!v11)
    {
      v11 = IOConnectCallStructMethod(connect, a1, a2, a3, a4, a5);
    }
  }

  else
  {
    v11 = 5;
  }

  IOObjectRelease(existing[0]);
  if (connect)
  {
    IOServiceClose(connect);
  }

  return v11;
}

void OUTLINED_FUNCTION_7(uint64_t a1@<X8>)
{
  *(v3 - 140) = v1;
  *(v3 - 136) = 1024;
  *(v3 - 134) = v2;
  *(v3 - 130) = 2048;
  *(v3 - 128) = a1;
}

void OUTLINED_FUNCTION_8(int a1@<W8>)
{
  *(v2 - 140) = a1;
  *(v2 - 136) = 1024;
  *(v2 - 134) = v1;
  *(v2 - 130) = 1024;
  *(v2 - 128) = v1;
}

void OUTLINED_FUNCTION_9(int a1@<W8>)
{
  *(v1 + 14) = a1;
  *(v2 - 126) = 2048;
  *(v1 + 20) = 4096;
  *(v2 - 116) = 2048;
}

void OUTLINED_FUNCTION_15(uint64_t a1@<X8>, float a2@<S0>)
{
  *(v2 - 144) = a2;
  *(v2 - 140) = a1;
  *(v2 - 132) = 1024;
}

void OUTLINED_FUNCTION_25(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, a5, 0x18u);
}

void OUTLINED_FUNCTION_29(_BYTE *a1@<X8>)
{
  a1[2] = BYTE1(v1);
  a1[3] = BYTE2(v1);
  a1[4] = HIBYTE(v1);
}

BOOL OUTLINED_FUNCTION_36(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_DEBUG);
}

BOOL OUTLINED_FUNCTION_37(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_DEBUG);
}

BOOL OUTLINED_FUNCTION_38(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_DEBUG);
}

BOOL OUTLINED_FUNCTION_46(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_DEBUG);
}

void OUTLINED_FUNCTION_47(void *a1, int a2, int a3, int a4, const char *a5, const char *a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint8_t buf)
{

  _os_signpost_emit_with_name_impl(a1, v22, OS_SIGNPOST_INTERVAL_BEGIN, v21, a5, a6, &buf, 2u);
}

void OUTLINED_FUNCTION_60(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint8_t buf)
{

  _os_log_error_impl(a1, v11, OS_LOG_TYPE_ERROR, a4, &buf, 0x26u);
}

void OUTLINED_FUNCTION_61(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint8_t buf)
{

  _os_log_error_impl(a1, v11, OS_LOG_TYPE_ERROR, a4, &buf, 0x1Cu);
}

uint64_t OUTLINED_FUNCTION_62()
{
  *v0 = 0;

  return SecAccessControlCreateFromData();
}

void OUTLINED_FUNCTION_63(void *a1, NSObject *a2, os_signpost_type_t a3, uint64_t a4, const char *a5, const char *a6, uint8_t *a7)
{

  _os_signpost_emit_with_name_impl(a1, a2, a3, v7, a5, a6, a7, 2u);
}

void OUTLINED_FUNCTION_64(void *a1, NSObject *a2, os_signpost_type_t a3, int a4, const char *a5, const char *a6, uint8_t *a7, int a8, uint64_t a9, os_signpost_id_t spid)
{

  _os_signpost_emit_with_name_impl(a1, a2, a3, spid, a5, a6, a7, 2u);
}

void OUTLINED_FUNCTION_65(void *a1, NSObject *a2, os_signpost_type_t a3, uint64_t a4, const char *a5, const char *a6, uint8_t *a7)
{

  _os_signpost_emit_with_name_impl(a1, a2, a3, v7, a5, a6, a7, 2u);
}

void OUTLINED_FUNCTION_66(void *a1, NSObject *a2, os_signpost_type_t a3, uint64_t a4, const char *a5, const char *a6, uint8_t *a7)
{

  _os_signpost_emit_with_name_impl(a1, a2, a3, v7, a5, a6, a7, 2u);
}

id DigestSha256(void *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = [v1 bytes];
  v3 = [v1 length];

  v4 = CC_SHA256(v2, v3, md);
  if (v4)
  {
    v4 = [MEMORY[0x277CBEA90] dataWithBytes:md length:32];
  }

  return v4;
}

id getUIKPath()
{
  [@"systemgroup.com.apple.mobileactivationd" UTF8String];
  v0 = container_system_group_path_for_identifier();
  if (v0)
  {
    v1 = v0;
    v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:v0];
    v3 = [v2 stringByAppendingPathComponent:@"Library/uik/uik.pem"];

    free(v1);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t hasSEService()
{
  v0 = MobileGestalt_get_current_device();
  secureElement = MobileGestalt_get_secureElement();

  return secureElement;
}

id getSEABASSOIDS()
{
  v6[9] = *MEMORY[0x277D85DE8];
  v0 = *MEMORY[0x277D49408];
  v6[0] = *MEMORY[0x277D49410];
  v6[1] = v0;
  v1 = *MEMORY[0x277D493D8];
  v6[2] = *MEMORY[0x277D493E0];
  v6[3] = v1;
  v2 = *MEMORY[0x277D493F0];
  v6[4] = *MEMORY[0x277D493E8];
  v6[5] = v2;
  v3 = *MEMORY[0x277D493F8];
  v6[6] = *MEMORY[0x277D49418];
  v6[7] = v3;
  v6[8] = *MEMORY[0x277D49400];
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:9];

  return v4;
}

id ECDSASHA256RawToDER(void *a1)
{
  v1 = a1;
  if ([v1 length] != 64)
  {
    goto LABEL_9;
  }

  v2 = [v1 bytes];
  v3 = (v2 + 31);
  v4 = v2 + 1;
  do
  {
    v5 = *(v4 - 1);
    *(v4 - 1) = *v3;
    *v3-- = v5;
    v6 = v4++ >= v3;
  }

  while (!v6);
  v7 = (v2 + 63);
  v8 = v2 + 33;
  do
  {
    v9 = *(v8 - 1);
    *(v8 - 1) = *v7;
    *v7-- = v9;
    v6 = v8++ >= v7;
  }

  while (!v6);
  ccder_sizeof_integer();
  ccder_sizeof_integer();
  v10 = ccder_sizeof();
  if (v10 >= 0x40)
  {
    v12 = [objc_alloc(MEMORY[0x277CBEB28]) initWithLength:v10];
    v13 = v12;
    if (v12)
    {
      [v12 mutableBytes];
      ccder_encode_integer();
      ccder_encode_integer();
      ccder_encode_constructed_tl();
      v11 = [MEMORY[0x277CBEA90] dataWithData:v13];
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
LABEL_9:
    v11 = 0;
  }

  return v11;
}

_BYTE *HexToBytes(void *a1)
{
  v1 = a1;
  v9 = 0;
  if (([v1 length] & 1) == 0)
  {
    v2 = malloc_type_malloc([v1 length] >> 1, 0x945D82EFuLL);
    if (!v2)
    {
      goto LABEL_10;
    }

    if (![v1 length])
    {
LABEL_7:
      v2 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:v2 length:objc_msgSend(v1 freeWhenDone:{"length") >> 1, 1}];
      goto LABEL_10;
    }

    v3 = 0;
    v4 = v2;
    while (1)
    {
      __str[0] = [v1 characterAtIndex:v3];
      v5 = v3 + 1;
      __str[1] = [v1 characterAtIndex:v5];
      v7 = 0;
      *v4 = strtol(__str, &v7, 16);
      if (v7 != &v9)
      {
        break;
      }

      ++v4;
      v3 = v5 + 1;
      if (v3 >= [v1 length])
      {
        goto LABEL_7;
      }
    }

    free(v2);
  }

  v2 = 0;
LABEL_10:

  return v2;
}

id stringsArrayFromIdentityProofingOptions(char a1)
{
  v2 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v3 = a1 & 3;
  if ((a1 & 3) != 0)
  {
    do
    {
      if (v3)
      {
        [v2 addObject:@"IdentityProofingOptionsPhone"];
        v3 &= ~1uLL;
      }

      else if ((v3 & 2) != 0)
      {
        [v2 addObject:@"IdentityProofingOptionsWatch"];
        break;
      }
    }

    while (v3);
  }

  return v2;
}

uint64_t IdentityProofingOptionsFromStringsArray(void *a1)
{
  v1 = a1;
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __IdentityProofingOptionsFromStringsArray_block_invoke;
  v4[3] = &unk_278573338;
  v4[4] = &v5;
  [v1 enumerateObjectsUsingBlock:v4];
  v2 = v6[3];
  _Block_object_dispose(&v5, 8);

  return v2;
}

void sub_2259BBABC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __IdentityProofingOptionsFromStringsArray_block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  if ([v5 isEqual:@"IdentityProofingOptionsPhone"])
  {
    v3 = 1;
  }

  else
  {
    if (![v5 isEqual:@"IdentityProofingOptionsWatch"])
    {
      goto LABEL_6;
    }

    v3 = 2;
  }

  *(*(*(a1 + 32) + 8) + 24) |= v3;
LABEL_6:

  return MEMORY[0x2821F96F8]();
}

Class __getBCSBusinessQueryServiceClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!BusinessChatServiceLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __BusinessChatServiceLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_278573420;
    v6 = 0;
    BusinessChatServiceLibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v4[0];
    if (BusinessChatServiceLibraryCore_frameworkLibrary)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("BCSBusinessQueryService");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getBCSBusinessQueryServiceClass_block_invoke_cold_1();
  }

  getBCSBusinessQueryServiceClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __BusinessChatServiceLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  BusinessChatServiceLibraryCore_frameworkLibrary = result;
  return result;
}

uint64_t AppleIDVManager.__allocating_init()()
{
  v0 = swift_allocObject();
  AppleIDVManager.init()();
  return v0;
}

uint64_t AppleIDVManager.init()()
{
  v1 = v0;
  v2 = sub_225CCD954();
  v3 = *(v2 - 8);
  v5 = MEMORY[0x28223BE20](v2, v4);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5, v8);
  v9 = sub_225CCE4D4();
  MEMORY[0x28223BE20](v9 - 8, v10);
  v11 = [objc_opt_self() standardUserDefaults];
  if (qword_28105B9F0 != -1)
  {
    swift_once();
  }

  if (byte_28105B9F8 == 1)
  {
    v12 = sub_225CCE444();
    v13 = [v11 BOOLForKey_];

    if (v13)
    {
      v34 = sub_2259BE6CC();
      v15 = v14;
      v16 = sub_225CCCFA4();
      v18 = v17;

      sub_225CCE4B4();
      v19 = sub_225CCE494();
      v21 = v20;
      sub_2259BEF00(v16, v18);
      if (v21)
      {
        v22 = v21;
      }

      else
      {
        v19 = 0x3E6C696E3CLL;
        v22 = 0xE500000000000000;
      }

      if (qword_28105B910 != -1)
      {
        swift_once();
      }

      v23 = off_28105B918;
      v24 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
      v25 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
      os_unfair_lock_lock((off_28105B918 + v25));
      (*(v3 + 16))(v7, &v23[v24], v2);
      os_unfair_lock_unlock(&v23[v25]);

      v26 = sub_225CCD934();
      v27 = sub_225CCED04();

      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        v33 = v15;
        v29 = v28;
        v30 = swift_slowAlloc();
        v35 = v30;
        *v29 = 134349314;
        *(v29 + 4) = v34;
        *(v29 + 12) = 2082;
        v31 = sub_2259BE198(v19, v22, &v35);

        *(v29 + 14) = v31;
        _os_log_impl(&dword_2259A7000, v26, v27, "AppleIDV status = %{public}ld, version = %{public}s", v29, 0x16u);
        __swift_destroy_boxed_opaque_existential_0(v30);
        MEMORY[0x22AA6F950](v30, -1, -1);
        MEMORY[0x22AA6F950](v29, -1, -1);
      }

      else
      {
      }

      (*(v3 + 8))(v7, v2);
    }
  }

  else
  {
  }

  return v1;
}

Swift::tuple_status_Int_version_NSData __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> AppleIDVManager.getStatus()()
{
  v0 = sub_2259BE6CC();
  result.version.super.isa = v1;
  result.status = v0;
  return result;
}

id AppleIDVManager.persistACLBlob(_:requiresDoublePress:)(void *a1, unint64_t a2, int a3)
{
  result = sub_2259C0010(a1, a2, a3);
  if (v3)
  {
    return v5;
  }

  return result;
}

double AppleIDVManager.getPrearmTrustKeyFromExistingKeyBlob(keyBlob:nonce:prognitorPublicKey:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, void *a4@<X3>, unint64_t a5@<X4>, void *a6@<X5>, _OWORD *a7@<X8>)
{
  sub_2259C39A8(a1, a2, a3, a4, a5, a6, v13);
  if (!v7)
  {
    result = *v13;
    v10 = v13[1];
    v11 = v13[2];
    v12 = v13[3];
    *a7 = v13[0];
    a7[1] = v10;
    a7[2] = v11;
    a7[3] = v12;
  }

  return result;
}

double sub_2259BCCE8@<D0>(void (*a1)(_OWORD *__return_ptr)@<X4>, _OWORD *a2@<X8>)
{
  a1(v8);
  if (!v2)
  {
    result = *v8;
    v5 = v8[1];
    v6 = v8[2];
    v7 = v8[3];
    *a2 = v8[0];
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

unint64_t sub_2259BCD58(uint64_t a1, unint64_t a2)
{
  sub_225CCF204();

  sub_225B34448(a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73DCB0);
  sub_2259CB764();
  v4 = sub_225CCE384();
  v6 = v5;

  MEMORY[0x22AA6CE70](v4, v6);

  return 0xD00000000000001FLL;
}

uint64_t AppleIDVManager.persistModifiedACLBlob(_:referenceACLBlob:externalizedLAContext:)(uint64_t a1, char *a2, void *a3, void *a4, uint64_t a5, void (*a6)(char *, char *, id))
{
  result = sub_2259C7EB0(a1, a2, a3, a4, a5, a6);
  if (v6)
  {
    return v8;
  }

  return result;
}

uint64_t sub_2259BCF0C()
{
  result = SecAccessControlCreateFromData();
  if (result)
  {
    v1 = result;
    sub_225CCF204();
    MEMORY[0x22AA6CE70](0xD00000000000001ELL, 0x8000000225D0CE70);
    type metadata accessor for SecAccessControl(0);
    sub_225CCF434();

    return 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_2259BD03C(void *a1, unint64_t a2, int a3)
{
  result = sub_2259C0010(a1, a2, a3);
  if (v3)
  {
    return v5;
  }

  return result;
}

double sub_2259BD108@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, void *a4@<X3>, unint64_t a5@<X4>, void *a6@<X5>, _OWORD *a7@<X8>)
{
  sub_2259C39A8(a1, a2, a3, a4, a5, a6, v13);
  if (!v7)
  {
    result = *v13;
    v10 = v13[1];
    v11 = v13[2];
    v12 = v13[3];
    *a7 = v13[0];
    a7[1] = v10;
    a7[2] = v11;
    a7[3] = v12;
  }

  return result;
}

double sub_2259BD178@<D0>(void (*a1)(_OWORD *__return_ptr)@<X6>, _OWORD *a2@<X8>)
{
  a1(v8);
  if (!v2)
  {
    result = *v8;
    v5 = v8[1];
    v6 = v8[2];
    v7 = v8[3];
    *a2 = v8[0];
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

uint64_t sub_2259BD260(uint64_t a1, char *a2, void *a3, void *a4, uint64_t a5, void (*a6)(char *, char *, id))
{
  result = sub_2259C7EB0(a1, a2, a3, a4, a5, a6);
  if (v6)
  {
    return v8;
  }

  return result;
}

uint64_t AppleIDVACLType.description.getter(int a1)
{
  if (a1 > 1)
  {
    if (a1 == 2)
    {
      return 0x6942206863746157;
    }

    else
    {
      if (a1 != 3)
      {
        return 0x6E776F6E6B6E55;
      }

      return 0xD000000000000013;
    }
  }

  else
  {
    if (a1)
    {
      if (a1 == 1)
      {
        return 0xD000000000000013;
      }

      return 0x6E776F6E6B6E55;
    }

    return 0x694220656E6F6850;
  }
}

uint64_t AppleIDVACLUseCase.description.getter(int a1)
{
  v1 = 0xD000000000000015;
  v2 = 0x6E776F6E6B6E55;
  if (a1 == 1)
  {
    v2 = 0xD000000000000013;
  }

  if (a1 != 2)
  {
    v1 = v2;
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return 0x6D746E6573657250;
  }
}

uint64_t sub_2259BD408()
{
  v1 = *v0;
  v2 = 0xD000000000000015;
  v3 = 0x6E776F6E6B6E55;
  if (*v0 == 1)
  {
    v3 = 0xD000000000000013;
  }

  if (v1 != 2)
  {
    v2 = v3;
  }

  if (v1)
  {
    return v2;
  }

  else
  {
    return 0x6D746E6573657250;
  }
}

uint64_t sub_2259BD554()
{
  swift_getWitnessTable();

  return sub_225CCD4F4();
}

uint64_t sub_2259BD67C()
{
  sub_225CCFBD4();
  swift_getWitnessTable();
  sub_225CCD504();
  return sub_225CCFC24();
}

uint64_t sub_2259BD6E8(uint64_t a1, id *a2)
{
  result = sub_225CCE454();
  *a2 = 0;
  return result;
}

uint64_t sub_2259BD760(uint64_t a1, id *a2)
{
  v3 = sub_225CCE464();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_2259BD7E0@<X0>(uint64_t *a1@<X8>)
{
  sub_225CCE474();
  v2 = sub_225CCE444();

  *a1 = v2;
  return result;
}

uint64_t sub_2259BD824()
{
  swift_getWitnessTable();

  return sub_225CCD4F4();
}

uint64_t sub_2259BD8A0(uint64_t a1)
{
  v2 = sub_2259CB1A8(&qword_27D73AA68, type metadata accessor for LAError);

  return MEMORY[0x28211CAD0](a1, v2);
}

uint64_t sub_2259BD90C(uint64_t a1)
{
  v2 = sub_2259CB1A8(&qword_27D73AA68, type metadata accessor for LAError);

  return MEMORY[0x28211CA88](a1, v2);
}

uint64_t sub_2259BD978(void *a1, uint64_t a2)
{
  v4 = sub_2259CB1A8(&qword_27D73AA68, type metadata accessor for LAError);
  v5 = a1;

  return MEMORY[0x28211CA70](v5, a2, v4);
}

uint64_t sub_2259BDA2C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2259CB1A8(&qword_27D73AA68, type metadata accessor for LAError);

  return MEMORY[0x28211CAB8](a1, a2, v4);
}

uint64_t sub_2259BDAA8()
{
  sub_225CCFBD4();
  sub_225CCE354();
  return sub_225CCFC24();
}

uint64_t sub_2259BDB08(uint64_t a1)
{
  v2 = sub_2259CB1A8(&qword_27D73AA70, type metadata accessor for LAError);

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_2259BDB74(uint64_t a1)
{
  v2 = sub_2259CB1A8(&qword_27D73AA70, type metadata accessor for LAError);

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t sub_2259BDBE4(uint64_t a1)
{
  v2 = sub_2259CB1A8(&qword_27D73AA68, type metadata accessor for LAError);

  return MEMORY[0x28211CA68](a1, v2);
}

uint64_t sub_2259BDC50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2259CB1A8(&qword_27D73AA68, type metadata accessor for LAError);

  return MEMORY[0x28211CA98](a1, a2, a3, v6);
}

uint64_t sub_2259BDCD4(uint64_t a1)
{
  v2 = sub_2259CB1A8(&qword_27D73A9F8, type metadata accessor for URLResourceKey);
  v3 = sub_2259CB1A8(&unk_27D73AA00, type metadata accessor for URLResourceKey);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_2259BDD90(uint64_t a1)
{
  v2 = sub_2259CB1A8(&qword_27D73A9E8, type metadata accessor for VNImageOption);
  v3 = sub_2259CB1A8(&qword_27D73A9F0, type metadata accessor for VNImageOption);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_2259BDE4C(uint64_t a1)
{
  v2 = sub_2259CB1A8(&qword_27D73A9D8, type metadata accessor for VNBarcodeSymbology);
  v3 = sub_2259CB1A8(&qword_27D73A9E0, type metadata accessor for VNBarcodeSymbology);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_2259BDF08@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_225CCE444();

  *a1 = v2;
  return result;
}

uint64_t sub_2259BDF50(uint64_t a1)
{
  v2 = sub_2259CB1A8(&qword_27D73AAB8, type metadata accessor for CIContextOption);
  v3 = sub_2259CB1A8(&qword_27D73AAC0, type metadata accessor for CIContextOption);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_2259BE00C()
{
  v0 = sub_225CCE474();
  v1 = MEMORY[0x22AA6CF00](v0);

  return v1;
}

uint64_t sub_2259BE048()
{
  sub_225CCE474();
  sub_225CCE5B4();
}

uint64_t sub_2259BE09C()
{
  sub_225CCE474();
  sub_225CCFBD4();
  sub_225CCE5B4();
  v0 = sub_225CCFC24();

  return v0;
}

uint64_t sub_2259BE110()
{
  v0 = sub_225CCE474();
  v2 = v1;
  if (v0 == sub_225CCE474() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_225CCF934();
  }

  return v5 & 1;
}

unint64_t sub_2259BE198(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_2259BE264(v11, 0, 0, 1, a1, a2);
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
    sub_2259CB810(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_2259BE264(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_2259BE370(a5, a6);
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
    result = sub_225CCF354();
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

uint64_t sub_2259BE370(uint64_t a1, unint64_t a2)
{
  v3 = sub_2259BE3BC(a1, a2);
  sub_2259BE4EC(&unk_2838FB020);
  return v3;
}

uint64_t sub_2259BE3BC(uint64_t a1, unint64_t a2)
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

  v6 = sub_225C0060C(v5, 0);
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

  result = sub_225CCF354();
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
        v10 = sub_225CCE654();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_225C0060C(v10, 0);
        result = sub_225CCF1E4();
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

uint64_t sub_2259BE4EC(uint64_t result)
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
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_2259BE5D8(result, v11, 1, v3);
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
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

char *sub_2259BE5D8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73AA18);
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

id sub_2259BE6CC()
{
  v64[11] = *MEMORY[0x277D85DE8];
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050);
  MEMORY[0x28223BE20](v0 - 8, v1);
  v3 = &v61 - v2;
  v4 = type metadata accessor for DIPSignpost.Config(0);
  MEMORY[0x28223BE20](v4, v5);
  v7 = &v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DIPSignpost(0);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v62 = &v61 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_225CCD954();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v13);
  v15 = &v61 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28105B910 != -1)
  {
    swift_once();
  }

  v16 = off_28105B918;
  v17 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
  v18 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((off_28105B918 + v18));
  (*(v12 + 16))(v15, &v16[v17], v11);
  os_unfair_lock_unlock(&v16[v18]);
  v19 = sub_225CCD934();
  v20 = sub_225CCED04();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&dword_2259A7000, v19, v20, "AppleIDVManager getStatus", v21, 2u);
    MEMORY[0x22AA6F950](v21, -1, -1);
  }

  (*(v12 + 8))(v15, v11);
  if (qword_27D73A678 != -1)
  {
    swift_once();
  }

  v22 = __swift_project_value_buffer(v4, qword_27D7415C8);
  sub_2259CB588(v22, v7);
  DIPSignpost.init(_:)(v7, v62);
  v64[0] = 0;
  v23 = objc_opt_self();
  v63 = 0;
  v24 = [v23 appleIDVGetStatus:v64 andVersion:&v63];
  v25 = v63;
  if (v24)
  {
    v26 = v24;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AA10);
    inited = swift_initStackObject();
    *(inited + 32) = 20;
    v28 = MEMORY[0x277D84CC0];
    *(inited + 16) = xmmword_225CD30F0;
    v29 = MEMORY[0x277D84D18];
    *(inited + 64) = v28;
    *(inited + 72) = v29;
    *(inited + 40) = v26;
    v30 = v25;
    v31 = sub_225B2C374(inited);
    swift_setDeallocating();
    sub_2259CB640(inited + 32, &qword_27D73B060);
    sub_2259CB5EC();
    swift_allocError();
    v33 = v32;
    v34 = sub_225CCE954();
    v35 = *(v34 - 8);
    (*(v35 + 56))(v3, 1, 1, v34);
    LODWORD(v34) = (*(v35 + 48))(v3, 1, v34);
    sub_2259CB640(v3, &unk_27D73B050);
    if (v34)
    {
      v36 = 310;
    }

    else
    {
      v36 = 23;
    }

    v37 = MEMORY[0x277D84F90];
    v38 = sub_225B2C374(MEMORY[0x277D84F90]);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v63 = v38;
    sub_225B2C4A0(v31, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v63);

    v40 = v63;
    v41 = sub_225B29AA0(0, 1, 1, v37);
    v43 = *(v41 + 2);
    v42 = *(v41 + 3);
    if (v43 >= v42 >> 1)
    {
      v41 = sub_225B29AA0((v42 > 1), v43 + 1, 1, v41);
    }

    *(v41 + 2) = v43 + 1;
    v44 = &v41[56 * v43];
    *(v44 + 4) = 0xD00000000000001CLL;
    *(v44 + 5) = 0x8000000225D0D880;
    *(v44 + 6) = 0xD000000000000023;
    *(v44 + 7) = 0x8000000225D0CD70;
    *(v44 + 8) = 0x7574617453746567;
    *(v44 + 9) = 0xEB00000000292873;
    *(v44 + 10) = 62;
    *v33 = v36;
    *(v33 + 8) = v41;
    *(v33 + 16) = 0xD00000000000001CLL;
    *(v33 + 24) = 0x8000000225D0D880;
    *(v33 + 32) = v40;
    *(v33 + 40) = 0;
    swift_willThrow();
  }

  else
  {
    if (v63)
    {
      v40 = v64[0];
      v63;
      v46 = v62;
      DIPSignpost.end(workflowID:isBackground:)(0, 2);
      sub_2259CB6A0(v46);
      return v40;
    }

    v48 = MEMORY[0x277D84F90];
    v49 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    swift_allocError();
    v51 = v50;
    v52 = sub_225CCE954();
    v53 = *(v52 - 8);
    (*(v53 + 56))(v3, 1, 1, v52);
    LODWORD(v52) = (*(v53 + 48))(v3, 1, v52);
    sub_2259CB640(v3, &unk_27D73B050);
    if (v52)
    {
      v54 = 0;
    }

    else
    {
      v54 = 23;
    }

    v55 = sub_225B2C374(v48);
    v56 = swift_isUniquelyReferenced_nonNull_native();
    v63 = v55;
    sub_225B2C4A0(v49, sub_225B2AC40, 0, v56, &v63);

    v40 = v63;
    v57 = sub_225B29AA0(0, 1, 1, v48);
    v59 = *(v57 + 2);
    v58 = *(v57 + 3);
    if (v59 >= v58 >> 1)
    {
      v57 = sub_225B29AA0((v58 > 1), v59 + 1, 1, v57);
    }

    *(v57 + 2) = v59 + 1;
    v60 = &v57[56 * v59];
    *(v60 + 4) = 0xD00000000000003DLL;
    *(v60 + 5) = 0x8000000225D0D8A0;
    *(v60 + 6) = 0xD000000000000023;
    *(v60 + 7) = 0x8000000225D0CD70;
    *(v60 + 8) = 0x7574617453746567;
    *(v60 + 9) = 0xEB00000000292873;
    *(v60 + 10) = 65;
    *v51 = v54;
    *(v51 + 8) = v57;
    *(v51 + 16) = 0xD00000000000003DLL;
    *(v51 + 24) = 0x8000000225D0D8A0;
    *(v51 + 32) = v40;
    *(v51 + 40) = 0;
    swift_willThrow();
  }

  v45 = v62;
  DIPSignpost.end(workflowID:isBackground:)(0, 2);
  sub_2259CB6A0(v45);
  return v40;
}

uint64_t sub_2259BEF00(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t __swift_destroy_boxed_opaque_existential_0(uint64_t a1)
{
  v1 = *(*(a1 + 24) - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

id sub_2259BEFA0()
{
  v64[11] = *MEMORY[0x277D85DE8];
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050);
  MEMORY[0x28223BE20](v0 - 8, v1);
  v3 = &v61 - v2;
  v4 = type metadata accessor for DIPSignpost.Config(0);
  MEMORY[0x28223BE20](v4, v5);
  v7 = &v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DIPSignpost(0);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v63 = &v61 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_225CCD954();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v13);
  v15 = &v61 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28105B910 != -1)
  {
    swift_once();
  }

  v16 = off_28105B918;
  v17 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
  v18 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((off_28105B918 + v18));
  (*(v12 + 16))(v15, &v16[v17], v11);
  os_unfair_lock_unlock(&v16[v18]);
  v19 = sub_225CCD934();
  v20 = sub_225CCED04();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&dword_2259A7000, v19, v20, "AppleIDVManager prepareBioBindingUnboundACL", v21, 2u);
    MEMORY[0x22AA6F950](v21, -1, -1);
  }

  (*(v12 + 8))(v15, v11);
  if (qword_27D73A680 != -1)
  {
    swift_once();
  }

  v22 = __swift_project_value_buffer(v4, qword_27D7415E0);
  sub_2259CB588(v22, v7);
  DIPSignpost.init(_:)(v7, v63);
  v23 = objc_opt_self();
  v64[0] = 0;
  v24 = [v23 prepareUnboundACLForBioBinding_];
  v25 = v64[0];
  if (v24)
  {
    v26 = v24;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AA10);
    inited = swift_initStackObject();
    *(inited + 32) = 20;
    v28 = MEMORY[0x277D84CC0];
    *(inited + 16) = xmmword_225CD30F0;
    v29 = MEMORY[0x277D84D18];
    *(inited + 64) = v28;
    *(inited + 72) = v29;
    *(inited + 40) = v26;
    v62 = v25;
    v30 = sub_225B2C374(inited);
    swift_setDeallocating();
    sub_2259CB640(inited + 32, &qword_27D73B060);
    sub_2259CB5EC();
    swift_allocError();
    v32 = v31;
    v33 = sub_225CCE954();
    v34 = *(v33 - 8);
    (*(v34 + 56))(v3, 1, 1, v33);
    LODWORD(v33) = (*(v34 + 48))(v3, 1, v33);
    sub_2259CB640(v3, &unk_27D73B050);
    if (v33)
    {
      v35 = 314;
    }

    else
    {
      v35 = 23;
    }

    v36 = MEMORY[0x277D84F90];
    v37 = sub_225B2C374(MEMORY[0x277D84F90]);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v64[0] = v37;
    sub_225B2C4A0(v30, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, v64);

    v39 = v64[0];
    v40 = sub_225B29AA0(0, 1, 1, v36);
    v42 = *(v40 + 2);
    v41 = *(v40 + 3);
    if (v42 >= v41 >> 1)
    {
      v40 = sub_225B29AA0((v41 > 1), v42 + 1, 1, v40);
    }

    *(v40 + 2) = v42 + 1;
    v43 = &v40[56 * v42];
    *(v43 + 4) = 0xD000000000000029;
    *(v43 + 5) = 0x8000000225D0D7E0;
    *(v43 + 6) = 0xD000000000000023;
    *(v43 + 7) = 0x8000000225D0CD70;
    *(v43 + 8) = 0xD00000000000001DLL;
    *(v43 + 9) = 0x8000000225D0D810;
    *(v43 + 10) = 79;
    *v32 = v35;
    *(v32 + 8) = v40;
    *(v32 + 16) = 0xD000000000000029;
    *(v32 + 24) = 0x8000000225D0D7E0;
    *(v32 + 32) = v39;
    *(v32 + 40) = 0;
    swift_willThrow();
  }

  else
  {
    if (v64[0])
    {
      v45 = v64[0];
      v39 = sub_225CCCFA4();

      v46 = v63;
      DIPSignpost.end(workflowID:isBackground:)(0, 2);
      sub_2259CB6A0(v46);
      return v39;
    }

    v62 = 0x8000000225D0CD70;
    v48 = MEMORY[0x277D84F90];
    v49 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    swift_allocError();
    v51 = v50;
    v52 = sub_225CCE954();
    v53 = *(v52 - 8);
    (*(v53 + 56))(v3, 1, 1, v52);
    LODWORD(v52) = (*(v53 + 48))(v3, 1, v52);
    sub_2259CB640(v3, &unk_27D73B050);
    if (v52)
    {
      v54 = 0;
    }

    else
    {
      v54 = 23;
    }

    v55 = sub_225B2C374(v48);
    v56 = swift_isUniquelyReferenced_nonNull_native();
    v64[0] = v55;
    sub_225B2C4A0(v49, sub_225B2AC40, 0, v56, v64);

    v39 = v64[0];
    v57 = sub_225B29AA0(0, 1, 1, v48);
    v59 = *(v57 + 2);
    v58 = *(v57 + 3);
    if (v59 >= v58 >> 1)
    {
      v57 = sub_225B29AA0((v58 > 1), v59 + 1, 1, v57);
    }

    *(v57 + 2) = v59 + 1;
    v60 = &v57[56 * v59];
    *(v60 + 4) = 0xD000000000000047;
    *(v60 + 5) = 0x8000000225D0D830;
    *(v60 + 6) = 0xD000000000000023;
    *(v60 + 7) = v62;
    *(v60 + 8) = 0xD00000000000001DLL;
    *(v60 + 9) = 0x8000000225D0D810;
    *(v60 + 10) = 82;
    *v51 = v54;
    *(v51 + 8) = v57;
    *(v51 + 16) = 0xD000000000000047;
    *(v51 + 24) = 0x8000000225D0D830;
    *(v51 + 32) = v39;
    *(v51 + 40) = 0;
    swift_willThrow();
  }

  v44 = v63;
  DIPSignpost.end(workflowID:isBackground:)(0, 2);
  sub_2259CB6A0(v44);
  return v39;
}

id sub_2259BF7D8()
{
  v64[11] = *MEMORY[0x277D85DE8];
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050);
  MEMORY[0x28223BE20](v0 - 8, v1);
  v3 = &v61 - v2;
  v4 = type metadata accessor for DIPSignpost.Config(0);
  MEMORY[0x28223BE20](v4, v5);
  v7 = &v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DIPSignpost(0);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v63 = &v61 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_225CCD954();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v13);
  v15 = &v61 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28105B910 != -1)
  {
    swift_once();
  }

  v16 = off_28105B918;
  v17 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
  v18 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((off_28105B918 + v18));
  (*(v12 + 16))(v15, &v16[v17], v11);
  os_unfair_lock_unlock(&v16[v18]);
  v19 = sub_225CCD934();
  v20 = sub_225CCED04();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&dword_2259A7000, v19, v20, "AppleIDVManager preparePasscodeBindingUnboundACL", v21, 2u);
    MEMORY[0x22AA6F950](v21, -1, -1);
  }

  (*(v12 + 8))(v15, v11);
  if (qword_27D73A688 != -1)
  {
    swift_once();
  }

  v22 = __swift_project_value_buffer(v4, qword_27D7415F8);
  sub_2259CB588(v22, v7);
  DIPSignpost.init(_:)(v7, v63);
  v23 = objc_opt_self();
  v64[0] = 0;
  v24 = [v23 prepareUnboundACLForPasscodeBinding_];
  v25 = v64[0];
  if (v24)
  {
    v26 = v24;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AA10);
    inited = swift_initStackObject();
    *(inited + 32) = 20;
    v28 = MEMORY[0x277D84CC0];
    *(inited + 16) = xmmword_225CD30F0;
    v29 = MEMORY[0x277D84D18];
    *(inited + 64) = v28;
    *(inited + 72) = v29;
    *(inited + 40) = v26;
    v62 = v25;
    v30 = sub_225B2C374(inited);
    swift_setDeallocating();
    sub_2259CB640(inited + 32, &qword_27D73B060);
    sub_2259CB5EC();
    swift_allocError();
    v32 = v31;
    v33 = sub_225CCE954();
    v34 = *(v33 - 8);
    (*(v34 + 56))(v3, 1, 1, v33);
    LODWORD(v33) = (*(v34 + 48))(v3, 1, v33);
    sub_2259CB640(v3, &unk_27D73B050);
    if (v33)
    {
      v35 = 321;
    }

    else
    {
      v35 = 23;
    }

    v36 = MEMORY[0x277D84F90];
    v37 = sub_225B2C374(MEMORY[0x277D84F90]);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v64[0] = v37;
    sub_225B2C4A0(v30, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, v64);

    v39 = v64[0];
    v40 = sub_225B29AA0(0, 1, 1, v36);
    v42 = *(v40 + 2);
    v41 = *(v40 + 3);
    if (v42 >= v41 >> 1)
    {
      v40 = sub_225B29AA0((v41 > 1), v42 + 1, 1, v40);
    }

    *(v40 + 2) = v42 + 1;
    v43 = &v40[56 * v42];
    *(v43 + 4) = 0xD00000000000002ELL;
    *(v43 + 5) = 0x8000000225D0D730;
    *(v43 + 6) = 0xD000000000000023;
    *(v43 + 7) = 0x8000000225D0CD70;
    *(v43 + 8) = 0xD000000000000022;
    *(v43 + 9) = 0x8000000225D0D760;
    *(v43 + 10) = 95;
    *v32 = v35;
    *(v32 + 8) = v40;
    *(v32 + 16) = 0xD00000000000002ELL;
    *(v32 + 24) = 0x8000000225D0D730;
    *(v32 + 32) = v39;
    *(v32 + 40) = 0;
    swift_willThrow();
  }

  else
  {
    if (v64[0])
    {
      v45 = v64[0];
      v39 = sub_225CCCFA4();

      v46 = v63;
      DIPSignpost.end(workflowID:isBackground:)(0, 2);
      sub_2259CB6A0(v46);
      return v39;
    }

    v62 = 0x8000000225D0CD70;
    v48 = MEMORY[0x277D84F90];
    v49 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    swift_allocError();
    v51 = v50;
    v52 = sub_225CCE954();
    v53 = *(v52 - 8);
    (*(v53 + 56))(v3, 1, 1, v52);
    LODWORD(v52) = (*(v53 + 48))(v3, 1, v52);
    sub_2259CB640(v3, &unk_27D73B050);
    if (v52)
    {
      v54 = 0;
    }

    else
    {
      v54 = 23;
    }

    v55 = sub_225B2C374(v48);
    v56 = swift_isUniquelyReferenced_nonNull_native();
    v64[0] = v55;
    sub_225B2C4A0(v49, sub_225B2AC40, 0, v56, v64);

    v39 = v64[0];
    v57 = sub_225B29AA0(0, 1, 1, v48);
    v59 = *(v57 + 2);
    v58 = *(v57 + 3);
    if (v59 >= v58 >> 1)
    {
      v57 = sub_225B29AA0((v58 > 1), v59 + 1, 1, v57);
    }

    *(v57 + 2) = v59 + 1;
    v60 = &v57[56 * v59];
    *(v60 + 4) = 0xD00000000000004CLL;
    *(v60 + 5) = 0x8000000225D0D790;
    *(v60 + 6) = 0xD000000000000023;
    *(v60 + 7) = v62;
    *(v60 + 8) = 0xD000000000000022;
    *(v60 + 9) = 0x8000000225D0D760;
    *(v60 + 10) = 98;
    *v51 = v54;
    *(v51 + 8) = v57;
    *(v51 + 16) = 0xD00000000000004CLL;
    *(v51 + 24) = 0x8000000225D0D790;
    *(v51 + 32) = v39;
    *(v51 + 40) = 0;
    swift_willThrow();
  }

  v44 = v63;
  DIPSignpost.end(workflowID:isBackground:)(0, 2);
  sub_2259CB6A0(v44);
  return v39;
}

id sub_2259C0010(void *a1, unint64_t a2, int a3)
{
  LODWORD(v110) = a3;
  v117[1] = *MEMORY[0x277D85DE8];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = &v104 - v7;
  v9 = sub_225CCD124();
  v113 = *(v9 - 1);
  v114 = v9;
  MEMORY[0x28223BE20](v9, v10);
  v112 = &v104 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = type metadata accessor for DIPSignpost.Config(0);
  MEMORY[0x28223BE20](v107, v12);
  v106 = &v104 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for DIPSignpost(0);
  MEMORY[0x28223BE20](v14 - 8, v15);
  v111 = &v104 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_225CCD954();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17, v19);
  v21 = &v104 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28105B910 != -1)
  {
    swift_once();
  }

  v22 = off_28105B918;
  v23 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
  v24 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((off_28105B918 + v24));
  (*(v18 + 16))(v21, &v22[v23], v17);
  os_unfair_lock_unlock(&v22[v24]);
  sub_2259CB710(a1, a2);
  v25 = v17;
  v26 = sub_225CCD934();
  v27 = sub_225CCED04();
  sub_2259BEF00(a1, a2);
  v28 = os_log_type_enabled(v26, v27);
  v105 = v8;
  v108 = a1;
  v109 = a2;
  if (v28)
  {
    v29 = a2;
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v117[0] = v31;
    *v30 = 136315138;
    v32 = v115;
    v33 = sub_225B34448(a1, v29);
    v104 = v25;
    v115 = v32;
    v116 = v33;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73DCB0);
    sub_2259CB764();
    v34 = sub_225CCE384();
    v36 = v35;

    v37 = sub_2259BE198(v34, v36, v117);
    v38 = v111;

    *(v30 + 4) = v37;
    _os_log_impl(&dword_2259A7000, v26, v27, "AppleIDVManager persistACLBlob aclBlob: %s", v30, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v31);
    MEMORY[0x22AA6F950](v31, -1, -1);
    MEMORY[0x22AA6F950](v30, -1, -1);

    (*(v18 + 8))(v21, v104);
  }

  else
  {

    (*(v18 + 8))(v21, v25);
    v38 = v111;
  }

  v39 = v107;
  v40 = v106;
  if (qword_27D73A690 != -1)
  {
    v103 = v107;
    swift_once();
    v39 = v103;
  }

  v41 = __swift_project_value_buffer(v39, qword_27D741610);
  sub_2259CB588(v41, v40);
  DIPSignpost.init(_:)(v40, v38);
  v42 = sub_225CCCF74();
  v43 = objc_opt_self();
  v117[0] = 0;
  v116 = 0;
  v44 = [v43 appleIDVPersistACLBlob:v42 intoBlob:v117 returnBioUUIDs:&v116 andRequireDoublePress:v110 & 1];

  v45 = v116;
  v46 = v117[0];
  if (v44)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AA10);
    inited = swift_initStackObject();
    *(inited + 32) = 20;
    v48 = MEMORY[0x277D84CC0];
    *(inited + 16) = xmmword_225CD30F0;
    v49 = MEMORY[0x277D84D18];
    *(inited + 64) = v48;
    *(inited + 72) = v49;
    *(inited + 40) = v44;
    v108 = v45;
    v50 = v45;
    v114 = v46;
    v51 = sub_225B2C374(inited);
    swift_setDeallocating();
    sub_2259CB640(inited + 32, &qword_27D73B060);
    sub_2259CB5EC();
    swift_allocError();
    v53 = v52;
    v54 = sub_225CCE954();
    v55 = *(v54 - 8);
    v56 = v105;
    (*(v55 + 56))(v105, 1, 1, v54);
    LODWORD(v54) = (*(v55 + 48))(v56, 1, v54);
    sub_2259CB640(v56, &unk_27D73B050);
    if (v54)
    {
      v57 = 311;
    }

    else
    {
      v57 = 23;
    }

    v58 = MEMORY[0x277D84F90];
    v59 = sub_225B2C374(MEMORY[0x277D84F90]);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v117[0] = v59;
    sub_225B2C4A0(v51, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, v117);

    v61 = v117[0];
    v62 = sub_225B29AA0(0, 1, 1, v58);
    v64 = *(v62 + 2);
    v63 = *(v62 + 3);
    v65 = (v64 + 1);
    if (v64 >= v63 >> 1)
    {
      v62 = sub_225B29AA0((v63 > 1), v64 + 1, 1, v62);
    }

    *(v62 + 2) = v65;
    v66 = &v62[56 * v64];
    *(v66 + 4) = 0xD000000000000021;
    *(v66 + 5) = 0x8000000225D0D690;
    *(v66 + 6) = 0xD000000000000023;
    *(v66 + 7) = 0x8000000225D0CD70;
    *(v66 + 8) = 0xD000000000000026;
    *(v66 + 9) = 0x8000000225D0D6C0;
    *(v66 + 10) = 113;
    *v53 = v57;
    *(v53 + 8) = v62;
    *(v53 + 16) = 0xD000000000000021;
    *(v53 + 24) = 0x8000000225D0D690;
    *(v53 + 32) = v61;
    *(v53 + 40) = 0;
    swift_willThrow();

LABEL_15:
    v67 = v111;
    DIPSignpost.end(workflowID:isBackground:)(0, 2);
    sub_2259CB6A0(v67);
    return v65;
  }

  if (!v117[0])
  {
    v114 = 0x8000000225D0CD70;
    v108 = v116;
    v85 = v116;
    v86 = MEMORY[0x277D84F90];
    v87 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    swift_allocError();
    v89 = v88;
    v90 = sub_225CCE954();
    v91 = *(v90 - 8);
    v92 = v105;
    (*(v91 + 56))(v105, 1, 1, v90);
    LODWORD(v90) = (*(v91 + 48))(v92, 1, v90);
    sub_2259CB640(v92, &unk_27D73B050);
    if (v90)
    {
      v93 = 0;
    }

    else
    {
      v93 = 23;
    }

    v94 = sub_225B2C374(v86);
    v95 = swift_isUniquelyReferenced_nonNull_native();
    v117[0] = v94;
    sub_225B2C4A0(v87, sub_225B2AC40, 0, v95, v117);

    v65 = v117[0];
    v96 = sub_225B29AA0(0, 1, 1, v86);
    v98 = *(v96 + 2);
    v97 = *(v96 + 3);
    if (v98 >= v97 >> 1)
    {
      v96 = sub_225B29AA0((v97 > 1), v98 + 1, 1, v96);
    }

    *(v96 + 2) = v98 + 1;
    v99 = &v96[56 * v98];
    *(v99 + 4) = 0xD00000000000003FLL;
    *(v99 + 5) = 0x8000000225D0D6F0;
    *(v99 + 6) = 0xD000000000000023;
    *(v99 + 7) = v114;
    *(v99 + 8) = 0xD000000000000026;
    *(v99 + 9) = 0x8000000225D0D6C0;
    *(v99 + 10) = 116;
    *v89 = v93;
    *(v89 + 8) = v96;
    *(v89 + 16) = 0xD00000000000003FLL;
    *(v89 + 24) = 0x8000000225D0D6F0;
    *(v89 + 32) = v65;
    *(v89 + 40) = 0;
    swift_willThrow();
    goto LABEL_15;
  }

  if (v116)
  {
    v117[0] = 0;
    v68 = v46;
    v69 = v45;
    v70 = v68;
    sub_225CCE804();
    v71 = v117[0];
    if (v117[0])
    {
      v72 = *(v117[0] + 2);
      if (v72)
      {
        v107 = v46;
        v108 = v45;
        v117[0] = MEMORY[0x277D84F90];
        sub_2259D52A4(0, v72, 0);
        v73 = v117[0];
        v110 = *(v113 + 16);
        v74 = (*(v113 + 80) + 32) & ~*(v113 + 80);
        v106 = v71;
        v75 = &v71[v74];
        v109 = *(v113 + 72);
        v113 += 16;
        v76 = (v113 - 8);
        do
        {
          v77 = v112;
          v78 = v114;
          v110(v112, v75, v114);
          v79 = sub_225CCD0C4();
          v81 = v80;
          (*v76)(v77, v78);
          v117[0] = v73;
          v83 = v73[2];
          v82 = v73[3];
          if (v83 >= v82 >> 1)
          {
            sub_2259D52A4((v82 > 1), v83 + 1, 1);
            v73 = v117[0];
          }

          v73[2] = v83 + 1;
          v84 = &v73[2 * v83];
          v84[4] = v79;
          v84[5] = v81;
          v75 += v109;
          --v72;
        }

        while (v72);

        v38 = v111;
        v45 = v108;
        v46 = v107;
      }

      else
      {
      }
    }
  }

  else
  {
    v100 = v117[0];
  }

  v101 = v46;
  v65 = sub_225CCCFA4();

  DIPSignpost.end(workflowID:isBackground:)(0, 2);
  sub_2259CB6A0(v38);
  return v65;
}

uint64_t sub_2259C0BD8(uint64_t a1, unint64_t a2)
{
  v78[1] = *MEMORY[0x277D85DE8];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v69 - v6;
  v8 = sub_225CCD124();
  v75 = *(v8 - 1);
  v76 = v8;
  MEMORY[0x28223BE20](v8, v9);
  v74 = &v69 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_225CCD954();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v13);
  v15 = &v69 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28105B910 != -1)
  {
    swift_once();
  }

  v16 = off_28105B918;
  v17 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
  v18 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((off_28105B918 + v18));
  (*(v12 + 16))(v15, &v16[v17], v11);
  os_unfair_lock_unlock(&v16[v18]);
  sub_2259CB710(a1, a2);
  v19 = sub_225CCD934();
  v20 = v11;
  v21 = sub_225CCED04();
  sub_2259BEF00(a1, a2);
  if (os_log_type_enabled(v19, v21))
  {
    v22 = swift_slowAlloc();
    v72 = v7;
    v23 = v22;
    v70 = swift_slowAlloc();
    v78[0] = v70;
    *v23 = 136315138;
    v24 = v73;
    v25 = sub_225B34448(a1, a2);
    v73 = v24;
    v77 = v25;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73DCB0);
    v71 = a1;
    sub_2259CB764();
    v69 = v20;
    v26 = sub_225CCE384();
    v28 = v27;

    v29 = sub_2259BE198(v26, v28, v78);

    *(v23 + 4) = v29;
    _os_log_impl(&dword_2259A7000, v19, v21, "AppleIDVManager getUUIDsFromACL aclBlob: %s", v23, 0xCu);
    v30 = v70;
    __swift_destroy_boxed_opaque_existential_0(v70);
    MEMORY[0x22AA6F950](v30, -1, -1);
    v31 = v23;
    v7 = v72;
    MEMORY[0x22AA6F950](v31, -1, -1);

    (*(v12 + 8))(v15, v69);
  }

  else
  {

    (*(v12 + 8))(v15, v20);
  }

  v32 = objc_opt_self();
  v33 = sub_225CCCF74();
  v78[0] = 0;
  v34 = [v32 getUUIDsFromACL:v33 intoArray:v78];

  v35 = v78[0];
  if (v34)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AA10);
    inited = swift_initStackObject();
    *(inited + 32) = 20;
    v37 = MEMORY[0x277D84CC0];
    *(inited + 16) = xmmword_225CD30F0;
    v38 = MEMORY[0x277D84D18];
    *(inited + 64) = v37;
    *(inited + 72) = v38;
    *(inited + 40) = v34;
    v76 = v35;
    v39 = sub_225B2C374(inited);
    swift_setDeallocating();
    sub_2259CB640(inited + 32, &qword_27D73B060);
    sub_2259CB5EC();
    swift_allocError();
    v41 = v40;
    v42 = sub_225CCE954();
    v43 = *(v42 - 8);
    (*(v43 + 56))(v7, 1, 1, v42);
    LODWORD(v42) = (*(v43 + 48))(v7, 1, v42);
    sub_2259CB640(v7, &unk_27D73B050);
    if (v42)
    {
      v44 = 327;
    }

    else
    {
      v44 = 23;
    }

    v45 = MEMORY[0x277D84F90];
    v46 = sub_225B2C374(MEMORY[0x277D84F90]);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v78[0] = v46;
    sub_225B2C4A0(v39, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, v78);

    v48 = v78[0];
    v49 = sub_225B29AA0(0, 1, 1, v45);
    v51 = *(v49 + 2);
    v50 = *(v49 + 3);
    if (v51 >= v50 >> 1)
    {
      v49 = sub_225B29AA0((v50 > 1), v51 + 1, 1, v49);
    }

    *(v49 + 2) = v51 + 1;
    v52 = &v49[56 * v51];
    *(v52 + 4) = 0xD00000000000001ALL;
    *(v52 + 5) = 0x8000000225D0D650;
    *(v52 + 6) = 0xD000000000000023;
    *(v52 + 7) = 0x8000000225D0CD70;
    *(v52 + 8) = 0xD000000000000013;
    *(v52 + 9) = 0x8000000225D0D670;
    *(v52 + 10) = 131;
    *v41 = v44;
    *(v41 + 8) = v49;
    *(v41 + 16) = 0xD00000000000001ALL;
    *(v41 + 24) = 0x8000000225D0D650;
    *(v41 + 32) = v48;
    *(v41 + 40) = 0;
    swift_willThrow();
  }

  else if (v78[0])
  {
    v78[0] = 0;
    v54 = v35;
    sub_225CCE804();
    v55 = v78[0];
    if (v78[0])
    {
      v56 = *(v78[0] + 16);
      if (v56)
      {
        v70 = v54;
        v78[0] = MEMORY[0x277D84F90];
        sub_2259D52A4(0, v56, 0);
        v48 = v78[0];
        v57 = *(v75 + 16);
        v58 = *(v75 + 80);
        v69 = v55;
        v59 = v55 + ((v58 + 32) & ~v58);
        v71 = *(v75 + 72);
        v72 = v57;
        v75 += 16;
        v60 = (v75 - 8);
        do
        {
          v61 = v74;
          v62 = v76;
          (v72)(v74, v59, v76);
          v63 = sub_225CCD0C4();
          v65 = v64;
          (*v60)(v61, v62);
          v78[0] = v48;
          v67 = *(v48 + 16);
          v66 = *(v48 + 24);
          if (v67 >= v66 >> 1)
          {
            sub_2259D52A4((v66 > 1), v67 + 1, 1);
            v48 = v78[0];
          }

          *(v48 + 16) = v67 + 1;
          v68 = v48 + 16 * v67;
          *(v68 + 32) = v63;
          *(v68 + 40) = v65;
          v59 += v71;
          --v56;
        }

        while (v56);
      }

      else
      {

        return MEMORY[0x277D84F90];
      }
    }

    else
    {

      return 0;
    }
  }

  else
  {
    return 0;
  }

  return v48;
}

void sub_2259C13E4(uint64_t a1, void *a2)
{
  v56 = *MEMORY[0x277D85DE8];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v52 = v50 - v6;
  v7 = sub_225CCD954();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28105B910 != -1)
  {
    swift_once();
  }

  v12 = off_28105B918;
  v13 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
  v14 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((off_28105B918 + v14));
  (*(v8 + 16))(v11, &v12[v13], v7);
  os_unfair_lock_unlock(&v12[v14]);
  sub_2259CB710(a1, a2);
  v15 = v7;
  v16 = sub_225CCD934();
  v17 = sub_225CCED04();
  sub_2259BEF00(a1, a2);
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v50[0] = v15;
    v19 = v18;
    v20 = swift_slowAlloc();
    *&v55 = v20;
    *v19 = 136315138;
    v21 = v53;
    v22 = sub_225B34448(a1, a2);
    v53 = v21;
    v54 = v22;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73DCB0);
    v51 = a2;
    sub_2259CB764();
    v50[1] = a1;
    v23 = sub_225CCE384();
    v25 = v24;

    v26 = sub_2259BE198(v23, v25, &v55);

    *(v19 + 4) = v26;
    _os_log_impl(&dword_2259A7000, v16, v17, "AppleIDVManager requireDoublePressOnACL aclBlob: %s", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v20);
    MEMORY[0x22AA6F950](v20, -1, -1);
    MEMORY[0x22AA6F950](v19, -1, -1);

    (*(v8 + 8))(v11, v50[0]);
  }

  else
  {

    (*(v8 + 8))(v11, v15);
  }

  v27 = objc_opt_self();
  v28 = sub_225CCCF74();
  *&v55 = 0;
  v29 = [v27 requireDoublePressOnACL:v28 intoACL:&v55];

  v30 = v55;
  if (v29)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AA10);
    inited = swift_initStackObject();
    *(inited + 32) = 20;
    v32 = MEMORY[0x277D84CC0];
    *(inited + 16) = xmmword_225CD30F0;
    v33 = MEMORY[0x277D84D18];
    *(inited + 64) = v32;
    *(inited + 72) = v33;
    *(inited + 40) = v29;
    v51 = v30;
    v34 = sub_225B2C374(inited);
    swift_setDeallocating();
    sub_2259CB640(inited + 32, &qword_27D73B060);
    sub_2259CB5EC();
    swift_allocError();
    v36 = v35;
    v37 = sub_225CCE954();
    v38 = *(v37 - 8);
    v39 = v52;
    (*(v38 + 56))(v52, 1, 1, v37);
    LODWORD(v37) = (*(v38 + 48))(v39, 1, v37);
    sub_2259CB640(v39, &unk_27D73B050);
    if (v37)
    {
      v40 = 328;
    }

    else
    {
      v40 = 23;
    }

    v41 = MEMORY[0x277D84F90];
    v42 = sub_225B2C374(MEMORY[0x277D84F90]);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v55 = v42;
    sub_225B2C4A0(v34, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v55);

    v44 = v55;
    v45 = sub_225B29AA0(0, 1, 1, v41);
    v47 = *(v45 + 2);
    v46 = *(v45 + 3);
    if (v47 >= v46 >> 1)
    {
      v45 = sub_225B29AA0((v46 > 1), v47 + 1, 1, v45);
    }

    *(v45 + 2) = v47 + 1;
    v48 = &v45[56 * v47];
    *(v48 + 4) = 0xD000000000000021;
    *(v48 + 5) = 0x8000000225D0D600;
    *(v48 + 6) = 0xD000000000000023;
    *(v48 + 7) = 0x8000000225D0CD70;
    *(v48 + 8) = 0xD00000000000001BLL;
    *(v48 + 9) = 0x8000000225D0D630;
    *(v48 + 10) = 144;
    *v36 = v40;
    *(v36 + 8) = v45;
    *(v36 + 16) = 0xD000000000000021;
    *(v36 + 24) = 0x8000000225D0D600;
    *(v36 + 32) = v44;
    *(v36 + 40) = 0;
    swift_willThrow();
  }

  else if (v55)
  {
    v55 = xmmword_225CD3100;
    v49 = v30;
    sub_225CCCF94();
  }
}

void sub_2259C1A68(uint64_t a1, unint64_t a2)
{
  v59 = *MEMORY[0x277D85DE8];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v55 = v53 - v6;
  v7 = sub_225CCD954();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28105B910 != -1)
  {
    swift_once();
  }

  v12 = off_28105B918;
  v13 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
  v14 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((off_28105B918 + v14));
  (*(v8 + 16))(v11, &v12[v13], v7);
  os_unfair_lock_unlock(&v12[v14]);
  sub_2259CB710(a1, a2);
  v15 = v7;
  v16 = sub_225CCD934();
  v17 = sub_225CCED04();
  sub_2259BEF00(a1, a2);
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v53[0] = v15;
    v19 = v18;
    v20 = swift_slowAlloc();
    *&v58 = v20;
    *v19 = 136315138;
    v21 = v56;
    v22 = sub_225B34448(a1, a2);
    v56 = v21;
    v57 = v22;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73DCB0);
    v54 = a2;
    sub_2259CB764();
    v53[1] = a1;
    v23 = sub_225CCE384();
    v25 = v24;

    v26 = sub_2259BE198(v23, v25, &v58);

    *(v19 + 4) = v26;
    _os_log_impl(&dword_2259A7000, v16, v17, "AppleIDVManager removeDoublePressOnACL aclBlob: %s", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v20);
    MEMORY[0x22AA6F950](v20, -1, -1);
    MEMORY[0x22AA6F950](v19, -1, -1);

    (*(v8 + 8))(v11, v53[0]);
  }

  else
  {

    (*(v8 + 8))(v11, v15);
  }

  v27 = objc_opt_self();
  v28 = sub_225CCCF74();
  *&v58 = 0;
  v29 = [v27 removeDoublePressOnACL:v28 intoACL:&v58];

  v30 = v58;
  if (v29)
  {
    v31 = v58;
  }

  else if (v58)
  {
    v58 = xmmword_225CD3100;
    v52 = v30;
    sub_225CCCF94();
    if (*(&v58 + 1) >> 60 != 15)
    {

      return;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AA10);
  inited = swift_initStackObject();
  *(inited + 32) = 20;
  v33 = inited + 32;
  v34 = MEMORY[0x277D84CC0];
  *(inited + 16) = xmmword_225CD30F0;
  v35 = MEMORY[0x277D84D18];
  *(inited + 64) = v34;
  *(inited + 72) = v35;
  *(inited + 40) = v29;
  v36 = sub_225B2C374(inited);
  swift_setDeallocating();
  sub_2259CB640(v33, &qword_27D73B060);
  v54 = 0x8000000225D0CD70;
  sub_2259CB5EC();
  swift_allocError();
  v38 = v37;
  v39 = sub_225CCE954();
  v40 = *(v39 - 8);
  v41 = v55;
  (*(v40 + 56))(v55, 1, 1, v39);
  LODWORD(v39) = (*(v40 + 48))(v41, 1, v39);
  sub_2259CB640(v41, &unk_27D73B050);
  if (v39)
  {
    v42 = 330;
  }

  else
  {
    v42 = 23;
  }

  v43 = MEMORY[0x277D84F90];
  v44 = sub_225B2C374(MEMORY[0x277D84F90]);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v58 = v44;
  sub_225B2C4A0(v36, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v58);

  v46 = v58;
  v47 = sub_225B29AA0(0, 1, 1, v43);
  v49 = *(v47 + 2);
  v48 = *(v47 + 3);
  if (v49 >= v48 >> 1)
  {
    v47 = sub_225B29AA0((v48 > 1), v49 + 1, 1, v47);
  }

  *(v47 + 2) = v49 + 1;
  v50 = &v47[56 * v49];
  *(v50 + 4) = 0xD000000000000020;
  *(v50 + 5) = 0x8000000225D0D5B0;
  v51 = v54;
  *(v50 + 6) = 0xD000000000000023;
  *(v50 + 7) = v51;
  *(v50 + 8) = 0xD00000000000001ALL;
  *(v50 + 9) = 0x8000000225D0D5E0;
  *(v50 + 10) = 154;
  *v38 = v42;
  *(v38 + 8) = v47;
  *(v38 + 16) = 0xD000000000000020;
  *(v38 + 24) = 0x8000000225D0D5B0;
  *(v38 + 32) = v46;
  *(v38 + 40) = 0;
  swift_willThrow();
}

id sub_2259C20CC(uint64_t a1, void *a2)
{
  v65 = a2;
  v64 = a1;
  v67[11] = *MEMORY[0x277D85DE8];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v64 - v4;
  v6 = type metadata accessor for DIPSignpost.Config(0);
  MEMORY[0x28223BE20](v6, v7);
  v9 = &v64 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DIPSignpost(0);
  MEMORY[0x28223BE20](v10 - 8, v11);
  v66 = &v64 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_225CCD954();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13, v15);
  v17 = &v64 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28105B910 != -1)
  {
    swift_once();
  }

  v18 = off_28105B918;
  v19 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
  v20 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((off_28105B918 + v20));
  (*(v14 + 16))(v17, &v18[v19], v13);
  os_unfair_lock_unlock(&v18[v20]);
  v21 = sub_225CCD934();
  v22 = sub_225CCED04();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&dword_2259A7000, v21, v22, "AppleIDVManager recovePersistedACLBlob", v23, 2u);
    MEMORY[0x22AA6F950](v23, -1, -1);
  }

  (*(v14 + 8))(v17, v13);
  if (qword_27D73A698 != -1)
  {
    swift_once();
  }

  v24 = __swift_project_value_buffer(v6, qword_27D741628);
  sub_2259CB588(v24, v9);
  DIPSignpost.init(_:)(v9, v66);
  v25 = objc_opt_self();
  v26 = sub_225CCCF74();
  v67[0] = 0;
  v27 = [v25 appleIDVRecoverPersistedACLBlob:v26 intoBlob:{v67, v64, v65}];

  v28 = v67[0];
  if (v27)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AA10);
    inited = swift_initStackObject();
    *(inited + 32) = 20;
    v30 = MEMORY[0x277D84CC0];
    *(inited + 16) = xmmword_225CD30F0;
    v31 = MEMORY[0x277D84D18];
    *(inited + 64) = v30;
    *(inited + 72) = v31;
    *(inited + 40) = v27;
    v65 = v28;
    v32 = sub_225B2C374(inited);
    swift_setDeallocating();
    sub_2259CB640(inited + 32, &qword_27D73B060);
    sub_2259CB5EC();
    swift_allocError();
    v34 = v33;
    v35 = sub_225CCE954();
    v36 = *(v35 - 8);
    (*(v36 + 56))(v5, 1, 1, v35);
    LODWORD(v35) = (*(v36 + 48))(v5, 1, v35);
    sub_2259CB640(v5, &unk_27D73B050);
    if (v35)
    {
      v37 = 312;
    }

    else
    {
      v37 = 23;
    }

    v38 = MEMORY[0x277D84F90];
    v39 = sub_225B2C374(MEMORY[0x277D84F90]);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v67[0] = v39;
    sub_225B2C4A0(v32, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, v67);

    v41 = v67[0];
    v42 = sub_225B29AA0(0, 1, 1, v38);
    v44 = *(v42 + 2);
    v43 = *(v42 + 3);
    if (v44 >= v43 >> 1)
    {
      v42 = sub_225B29AA0((v43 > 1), v44 + 1, 1, v42);
    }

    *(v42 + 2) = v44 + 1;
    v45 = &v42[56 * v44];
    *(v45 + 4) = 0xD000000000000027;
    *(v45 + 5) = 0x8000000225D0D510;
    *(v45 + 6) = 0xD000000000000023;
    *(v45 + 7) = 0x8000000225D0CD70;
    *(v45 + 8) = 0xD00000000000001ELL;
    *(v45 + 9) = 0x8000000225D0D540;
    *(v45 + 10) = 168;
    *v34 = v37;
    *(v34 + 8) = v42;
    *(v34 + 16) = 0xD000000000000027;
    *(v34 + 24) = 0x8000000225D0D510;
    *(v34 + 32) = v41;
    *(v34 + 40) = 0;
    swift_willThrow();
  }

  else
  {
    if (v67[0])
    {
      v47 = v67[0];
      v41 = sub_225CCCFA4();

      v48 = v66;
      DIPSignpost.end(workflowID:isBackground:)(0, 2);
      sub_2259CB6A0(v48);
      return v41;
    }

    v41 = 0x8000000225D0D560;
    v65 = 0x8000000225D0CD70;
    v50 = MEMORY[0x277D84F90];
    v51 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    swift_allocError();
    v53 = v52;
    v54 = sub_225CCE954();
    v55 = *(v54 - 8);
    (*(v55 + 56))(v5, 1, 1, v54);
    LODWORD(v54) = (*(v55 + 48))(v5, 1, v54);
    sub_2259CB640(v5, &unk_27D73B050);
    if (v54)
    {
      v56 = 0;
    }

    else
    {
      v56 = 23;
    }

    v57 = sub_225B2C374(v50);
    v58 = swift_isUniquelyReferenced_nonNull_native();
    v67[0] = v57;
    sub_225B2C4A0(v51, sub_225B2AC40, 0, v58, v67);

    v59 = v67[0];
    v60 = sub_225B29AA0(0, 1, 1, v50);
    v62 = *(v60 + 2);
    v61 = *(v60 + 3);
    if (v62 >= v61 >> 1)
    {
      v60 = sub_225B29AA0((v61 > 1), v62 + 1, 1, v60);
    }

    *(v60 + 2) = v62 + 1;
    v63 = &v60[56 * v62];
    *(v63 + 4) = 0xD000000000000045;
    *(v63 + 5) = 0x8000000225D0D560;
    *(v63 + 6) = 0xD000000000000023;
    *(v63 + 7) = v65;
    *(v63 + 8) = 0xD00000000000001ELL;
    *(v63 + 9) = 0x8000000225D0D540;
    *(v63 + 10) = 171;
    *v53 = v56;
    *(v53 + 8) = v60;
    *(v53 + 16) = 0xD000000000000045;
    *(v53 + 24) = 0x8000000225D0D560;
    *(v53 + 32) = v59;
    *(v53 + 40) = 0;
    swift_willThrow();
  }

  v46 = v66;
  DIPSignpost.end(workflowID:isBackground:)(0, 2);
  sub_2259CB6A0(v46);
  return v41;
}

uint64_t sub_2259C2924(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7)
{
  v97 = a7;
  v95 = a5;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050);
  MEMORY[0x28223BE20](v12 - 8, v13);
  v86 = &v83 - v14;
  v89 = type metadata accessor for DIPSignpost.Config(0);
  MEMORY[0x28223BE20](v89, v15);
  v88 = &v83 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for DIPSignpost(0);
  MEMORY[0x28223BE20](v17 - 8, v18);
  v96 = &v83 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_225CCD954();
  v98 = *(v20 - 8);
  v99 = v20;
  MEMORY[0x28223BE20](v20, v21);
  v23 = &v83 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28105B910 != -1)
  {
    swift_once();
  }

  v24 = off_28105B918;
  v25 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
  v26 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((off_28105B918 + v26));
  (*(v98 + 16))(v23, &v24[v25], v99);
  os_unfair_lock_unlock(&v24[v26]);
  sub_2259CB710(a1, a2);
  sub_2259CB710(a3, a4);
  v27 = v97;
  sub_2259CB710(a6, v97);
  v28 = sub_225CCD934();
  LODWORD(v25) = sub_225CCED04();
  sub_2259BEF00(a1, a2);
  sub_2259BEF00(a3, a4);
  sub_2259BEF00(a6, v27);
  v85 = v25;
  v87 = v28;
  v29 = os_log_type_enabled(v28, v25);
  v30 = a2;
  v93 = a4;
  v94 = a6;
  v91 = a2;
  v92 = a3;
  v90 = a1;
  if (v29)
  {
    v31 = a6;
    v32 = a1;
    v33 = swift_slowAlloc();
    v84 = swift_slowAlloc();
    v102 = v84;
    *v33 = 136315906;
    v34 = v100;
    v35 = sub_225B34448(v32, v30);
    v100 = v34;
    v101 = v35;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73DCB0);
    sub_2259CB764();
    v83 = v23;
    v36 = sub_225CCE384();
    v38 = v37;

    v39 = sub_2259BE198(v36, v38, &v102);

    *(v33 + 4) = v39;
    *(v33 + 12) = 2080;
    v40 = v100;
    v101 = sub_225B34448(a3, a4);
    v41 = sub_225CCE384();
    v43 = v42;

    v44 = sub_2259BE198(v41, v43, &v102);

    *(v33 + 14) = v44;
    *(v33 + 22) = 2048;
    *(v33 + 24) = v95;
    *(v33 + 32) = 2080;
    v45 = sub_225B34448(v31, v97);
    v100 = v40;
    v101 = v45;
    v46 = v96;
    v47 = sub_225CCE384();
    v49 = v48;

    v50 = sub_2259BE198(v47, v49, &v102);

    *(v33 + 34) = v50;
    v51 = v87;
    _os_log_impl(&dword_2259A7000, v87, v85, "AppleIDVManager authorizePresentmentForSignature aclBlob = %s externalizedLAContext = %s seSlot = %ld payloadDigest = %s", v33, 0x2Au);
    v52 = v84;
    swift_arrayDestroy();
    MEMORY[0x22AA6F950](v52, -1, -1);
    MEMORY[0x22AA6F950](v33, -1, -1);

    (*(v98 + 8))(v83, v99);
  }

  else
  {

    (*(v98 + 8))(v23, v99);
    v46 = v96;
  }

  if (qword_27D73A6A0 != -1)
  {
    swift_once();
  }

  v53 = __swift_project_value_buffer(v89, qword_27D741640);
  v54 = v88;
  sub_2259CB588(v53, v88);
  DIPSignpost.init(_:)(v54, v46);
  v55 = objc_opt_self();
  v56 = sub_225CCCF74();
  v57 = sub_225CCCF74();
  v58 = sub_225CCCF74();
  v59 = [v55 appleIDVAuthorizePresentment:v56 withLAContextData:v57 onSESlot:v95 andPayloadDigest:v58];

  if (v59)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AA10);
    inited = swift_initStackObject();
    *(inited + 32) = 20;
    v61 = inited + 32;
    v62 = MEMORY[0x277D84CC0];
    *(inited + 16) = xmmword_225CD30F0;
    v63 = MEMORY[0x277D84D18];
    *(inited + 64) = v62;
    *(inited + 72) = v63;
    *(inited + 40) = v59;
    v64 = sub_225B2C374(inited);
    swift_setDeallocating();
    sub_2259CB640(v61, &qword_27D73B060);
    v99 = 0x8000000225D0CD70;
    sub_2259CB5EC();
    v65 = swift_allocError();
    v67 = v66;
    v68 = sub_225CCE954();
    v69 = *(v68 - 8);
    v70 = v86;
    (*(v69 + 56))(v86, 1, 1, v68);
    LODWORD(v68) = (*(v69 + 48))(v70, 1, v68);
    sub_2259CB640(v70, &unk_27D73B050);
    if (v68)
    {
      v71 = 313;
    }

    else
    {
      v71 = 23;
    }

    v72 = MEMORY[0x277D84F90];
    v73 = sub_225B2C374(MEMORY[0x277D84F90]);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v102 = v73;
    sub_225B2C4A0(v64, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v102);

    v75 = v102;
    v76 = sub_225B29AA0(0, 1, 1, v72);
    v78 = *(v76 + 2);
    v77 = *(v76 + 3);
    if (v78 >= v77 >> 1)
    {
      v76 = sub_225B29AA0((v77 > 1), v78 + 1, 1, v76);
    }

    *(v76 + 2) = v78 + 1;
    v79 = &v76[56 * v78];
    *(v79 + 4) = 0xD000000000000027;
    *(v79 + 5) = 0x8000000225D0D480;
    v80 = v99;
    *(v79 + 6) = 0xD000000000000023;
    *(v79 + 7) = v80;
    *(v79 + 8) = 0xD000000000000055;
    *(v79 + 9) = 0x8000000225D0D4B0;
    *(v79 + 10) = 184;
    *v67 = v71;
    *(v67 + 8) = v76;
    *(v67 + 16) = 0xD000000000000027;
    *(v67 + 24) = 0x8000000225D0D480;
    *(v67 + 32) = v75;
    *(v67 + 40) = 0;
    swift_willThrow();
    v81 = v96;
    DIPSignpost.end(workflowID:isBackground:)(0, 2);
    result = sub_2259CB6A0(v81);
    v100 = v65;
  }

  else
  {
    DIPSignpost.end(workflowID:isBackground:)(0, 2);
    return sub_2259CB6A0(v46);
  }

  return result;
}

uint64_t sub_2259C3218@<X0>(void *a1@<X0>, void *a2@<X1>, unint64_t a3@<X2>, void *a4@<X3>, void *a5@<X8>)
{
  v86 = a4;
  v84 = a2;
  v85 = a3;
  v83 = a1;
  v82 = a5;
  v91[11] = *MEMORY[0x277D85DE8];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = &v81 - v7;
  v9 = type metadata accessor for DIPSignpost.Config(0);
  MEMORY[0x28223BE20](v9, v10);
  v12 = &v81 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DIPSignpost(0);
  MEMORY[0x28223BE20](v13 - 8, v14);
  v87 = &v81 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_225CCD954();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16, v18);
  v20 = &v81 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28105B910 != -1)
  {
    swift_once();
  }

  v21 = off_28105B918;
  v22 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
  v23 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((off_28105B918 + v23));
  (*(v17 + 16))(v20, &v21[v22], v16);
  os_unfair_lock_unlock(&v21[v23]);
  v24 = sub_225CCD934();
  v25 = sub_225CCED04();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    *v26 = 0;
    _os_log_impl(&dword_2259A7000, v24, v25, "AppleIDVManager generatePrearmTrustKeyforWatchAndCopyPublicKey", v26, 2u);
    MEMORY[0x22AA6F950](v26, -1, -1);
  }

  (*(v17 + 8))(v20, v16);
  if (qword_27D73A6A8 != -1)
  {
    swift_once();
  }

  v27 = __swift_project_value_buffer(v9, qword_27D741658);
  sub_2259CB588(v27, v12);
  DIPSignpost.init(_:)(v12, v87);
  v28 = objc_opt_self();
  v29 = sub_225CCCF74();
  v30 = sub_225CCCF74();
  v90 = 0;
  v91[0] = 0;
  v88 = 0;
  v89 = 0;
  v31 = [v28 appleIDVGeneratePrearmTrustKeyForWatchAndCopyPrivateKey:v29 progenitorPublicKey:v30 encryptedPrivateKey:v91 attestation:&v90 publicKey:&v89 keyBlob:&v88];

  v32 = v88;
  v33 = v89;
  v34 = v90;
  v35 = v91[0];
  if (!v31 && v91[0] && v90 && v89 && v88)
  {
    v36 = v88;
    v37 = v33;
    v38 = v34;
    v39 = v35;
    v40 = v38;
    v41 = v37;
    v42 = v36;
    v43 = sub_225CCCFA4();
    v85 = v44;
    v86 = v43;
    v45 = v40;
    v46 = sub_225CCCFA4();
    v83 = v47;
    v84 = v46;

    v48 = v41;
    v49 = sub_225CCCFA4();
    v51 = v50;

    v52 = v42;
    v53 = sub_225CCCFA4();
    v55 = v54;

    v56 = v87;
    DIPSignpost.end(workflowID:isBackground:)(0, 2);
    result = sub_2259CB6A0(v56);
    v58 = v82;
    v59 = v85;
    *v82 = v86;
    v58[1] = v59;
    v60 = v83;
    v58[2] = v84;
    v58[3] = v60;
    v58[4] = v49;
    v58[5] = v51;
    v58[6] = v53;
    v58[7] = v55;
  }

  else
  {
    v85 = 0x8000000225D0D3F0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AA10);
    inited = swift_initStackObject();
    *(inited + 32) = 20;
    v62 = MEMORY[0x277D84CC0];
    *(inited + 16) = xmmword_225CD30F0;
    v63 = MEMORY[0x277D84D18];
    *(inited + 64) = v62;
    *(inited + 72) = v63;
    *(inited + 40) = v31;
    v86 = v32;
    v84 = v33;
    v83 = v34;
    v64 = v35;
    v65 = sub_225B2C374(inited);
    swift_setDeallocating();
    sub_2259CB640(inited + 32, &qword_27D73B060);
    sub_2259CB5EC();
    swift_allocError();
    v67 = v66;
    v68 = sub_225CCE954();
    v69 = *(v68 - 8);
    (*(v69 + 56))(v8, 1, 1, v68);
    LODWORD(v68) = (*(v69 + 48))(v8, 1, v68);
    sub_2259CB640(v8, &unk_27D73B050);
    if (v68)
    {
      v70 = 324;
    }

    else
    {
      v70 = 23;
    }

    v71 = MEMORY[0x277D84F90];
    v72 = sub_225B2C374(MEMORY[0x277D84F90]);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v91[0] = v72;
    sub_225B2C4A0(v65, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, v91);

    v74 = v91[0];
    v75 = sub_225B29AA0(0, 1, 1, v71);
    v77 = *(v75 + 2);
    v76 = *(v75 + 3);
    if (v77 >= v76 >> 1)
    {
      v75 = sub_225B29AA0((v76 > 1), v77 + 1, 1, v75);
    }

    *(v75 + 2) = v77 + 1;
    v78 = &v75[56 * v77];
    v79 = v85;
    *(v78 + 4) = 0xD000000000000039;
    *(v78 + 5) = v79;
    *(v78 + 6) = 0xD000000000000023;
    *(v78 + 7) = 0x8000000225D0CD70;
    *(v78 + 8) = 0xD000000000000049;
    *(v78 + 9) = 0x8000000225D0D430;
    *(v78 + 10) = 209;
    *v67 = v70;
    *(v67 + 8) = v75;
    *(v67 + 16) = 0xD000000000000039;
    *(v67 + 24) = v79;
    *(v67 + 32) = v74;
    *(v67 + 40) = 0;
    swift_willThrow();

    v80 = v87;
    DIPSignpost.end(workflowID:isBackground:)(0, 2);
    return sub_2259CB6A0(v80);
  }

  return result;
}

uint64_t sub_2259C39A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, void *a4@<X3>, unint64_t a5@<X4>, void *a6@<X5>, void *a7@<X8>)
{
  v91 = a6;
  v89 = a4;
  v90 = a5;
  v88 = a3;
  v87 = a2;
  v86 = a1;
  v85 = a7;
  v96[11] = *MEMORY[0x277D85DE8];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v10 = &v84 - v9;
  v11 = type metadata accessor for DIPSignpost.Config(0);
  MEMORY[0x28223BE20](v11, v12);
  v14 = &v84 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for DIPSignpost(0);
  MEMORY[0x28223BE20](v15 - 8, v16);
  v92 = &v84 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_225CCD954();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18, v20);
  v22 = &v84 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28105B910 != -1)
  {
    swift_once();
  }

  v23 = off_28105B918;
  v24 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
  v25 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((off_28105B918 + v25));
  (*(v19 + 16))(v22, &v23[v24], v18);
  os_unfair_lock_unlock(&v23[v25]);
  v26 = sub_225CCD934();
  v27 = sub_225CCED04();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    *v28 = 0;
    _os_log_impl(&dword_2259A7000, v26, v27, "AppleIDVManager getPrearmTrustKeyFromExistingKeyBlob", v28, 2u);
    MEMORY[0x22AA6F950](v28, -1, -1);
  }

  (*(v19 + 8))(v22, v18);
  if (qword_27D73A6B0 != -1)
  {
    swift_once();
  }

  v29 = __swift_project_value_buffer(v11, qword_27D741670);
  sub_2259CB588(v29, v14);
  DIPSignpost.init(_:)(v14, v92);
  v30 = objc_opt_self();
  v31 = sub_225CCCF74();
  v32 = sub_225CCCF74();
  v33 = sub_225CCCF74();
  v95 = 0;
  v96[0] = 0;
  v93 = 0;
  v94 = 0;
  v34 = [v30 appleIDVGetPrearmTrustKeyFromExistingKeyBlob:v31 nonce:v32 progenitorPublicKey:v33 encryptedPrivateKey:v96 attestation:&v95 publicKey:&v94 keyBlob:&v93];

  v35 = v93;
  v36 = v94;
  v37 = v95;
  v38 = v96[0];
  if (!v34 && v96[0] && v95 && v94 && v93)
  {
    v39 = v93;
    v40 = v36;
    v41 = v37;
    v42 = v38;
    v43 = v41;
    v44 = v40;
    v45 = v39;
    v46 = sub_225CCCFA4();
    v90 = v47;
    v91 = v46;
    v48 = v43;
    v49 = sub_225CCCFA4();
    v88 = v50;
    v89 = v49;

    v51 = v44;
    v52 = sub_225CCCFA4();
    v54 = v53;

    v55 = v45;
    v56 = sub_225CCCFA4();
    v58 = v57;

    v59 = v92;
    DIPSignpost.end(workflowID:isBackground:)(0, 2);
    result = sub_2259CB6A0(v59);
    v61 = v85;
    v62 = v90;
    *v85 = v91;
    v61[1] = v62;
    v63 = v88;
    v61[2] = v89;
    v61[3] = v63;
    v61[4] = v52;
    v61[5] = v54;
    v61[6] = v56;
    v61[7] = v58;
  }

  else
  {
    v90 = 0x8000000225D0D370;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AA10);
    inited = swift_initStackObject();
    *(inited + 32) = 20;
    v65 = MEMORY[0x277D84CC0];
    *(inited + 16) = xmmword_225CD30F0;
    v66 = MEMORY[0x277D84D18];
    *(inited + 64) = v65;
    *(inited + 72) = v66;
    *(inited + 40) = v34;
    v91 = v35;
    v89 = v36;
    v88 = v37;
    v67 = v38;
    v68 = sub_225B2C374(inited);
    swift_setDeallocating();
    sub_2259CB640(inited + 32, &qword_27D73B060);
    sub_2259CB5EC();
    swift_allocError();
    v70 = v69;
    v71 = sub_225CCE954();
    v72 = *(v71 - 8);
    (*(v72 + 56))(v10, 1, 1, v71);
    LODWORD(v71) = (*(v72 + 48))(v10, 1, v71);
    sub_2259CB640(v10, &unk_27D73B050);
    if (v71)
    {
      v73 = 331;
    }

    else
    {
      v73 = 23;
    }

    v74 = MEMORY[0x277D84F90];
    v75 = sub_225B2C374(MEMORY[0x277D84F90]);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v96[0] = v75;
    sub_225B2C4A0(v68, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, v96);

    v77 = v96[0];
    v78 = sub_225B29AA0(0, 1, 1, v74);
    v80 = *(v78 + 2);
    v79 = *(v78 + 3);
    if (v80 >= v79 >> 1)
    {
      v78 = sub_225B29AA0((v79 > 1), v80 + 1, 1, v78);
    }

    *(v78 + 2) = v80 + 1;
    v81 = &v78[56 * v80];
    v82 = v90;
    *(v81 + 4) = 0xD00000000000002FLL;
    *(v81 + 5) = v82;
    *(v81 + 6) = 0xD000000000000023;
    *(v81 + 7) = 0x8000000225D0CD70;
    *(v81 + 8) = 0xD000000000000047;
    *(v81 + 9) = 0x8000000225D0D3A0;
    *(v81 + 10) = 237;
    *v70 = v73;
    *(v70 + 8) = v78;
    *(v70 + 16) = 0xD00000000000002FLL;
    *(v70 + 24) = v82;
    *(v70 + 32) = v77;
    *(v70 + 40) = 0;
    swift_willThrow();

    v83 = v92;
    DIPSignpost.end(workflowID:isBackground:)(0, 2);
    return sub_2259CB6A0(v83);
  }

  return result;
}

uint64_t sub_2259C4170@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v84 = a2;
  v83 = a1;
  v81 = a4;
  v89[1] = *MEMORY[0x277D85DE8];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v80 = &v79 - v7;
  v82 = type metadata accessor for DIPSignpost.Config(0);
  MEMORY[0x28223BE20](v82, v8);
  v10 = &v79 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DIPSignpost(0);
  MEMORY[0x28223BE20](v11 - 8, v12);
  v85 = &v79 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_225CCD954();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14, v16);
  v18 = &v79 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28105B910 != -1)
  {
    swift_once();
  }

  v19 = off_28105B918;
  v20 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
  v21 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((off_28105B918 + v21));
  (*(v15 + 16))(v18, &v19[v20], v14);
  os_unfair_lock_unlock(&v19[v21]);
  v22 = sub_225CCD934();
  v23 = sub_225CCED04();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v79 = a3;
    v25 = v24;
    v26 = swift_slowAlloc();
    v89[0] = v26;
    *v25 = 136315138;
    *(v25 + 4) = sub_2259BE198(0xD00000000000003BLL, 0x8000000225D0D2E0, v89);
    _os_log_impl(&dword_2259A7000, v22, v23, "AppleIDVManager %s", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v26);
    MEMORY[0x22AA6F950](v26, -1, -1);
    MEMORY[0x22AA6F950](v25, -1, -1);
  }

  (*(v15 + 8))(v18, v14);
  if (qword_27D73A6B8 != -1)
  {
    swift_once();
  }

  v27 = __swift_project_value_buffer(v82, qword_27D741688);
  sub_2259CB588(v27, v10);
  DIPSignpost.init(_:)(v10, v85);
  v28 = objc_opt_self();
  v29 = sub_225CCCF74();
  v30 = sub_225CCCF74();
  v89[0] = 0;
  v87 = 0;
  v88 = 0;
  v86 = 0;
  v31 = [v28 appleIDVUpdatePrearmTrustKeyForWatch:v29 progenitorPublicKey:v30 encryptedPrivateKey:v89 attestation:&v88 publicKey:&v87 keyBlob:&v86];

  v32 = v86;
  v33 = v87;
  v34 = v88;
  v35 = v89[0];
  if (!v31 && v89[0] && v88 && v87 && v86)
  {
    v36 = v86;
    v37 = v33;
    v38 = v34;
    v39 = v35;
    v40 = v38;
    v41 = v37;
    v42 = v36;
    v43 = sub_225CCCFA4();
    v83 = v44;
    v84 = v43;
    v45 = v40;
    v82 = sub_225CCCFA4();
    v80 = v46;

    v47 = v41;
    v48 = sub_225CCCFA4();
    v50 = v49;

    v51 = v42;
    v52 = sub_225CCCFA4();
    v54 = v53;

    v55 = v85;
    DIPSignpost.end(workflowID:isBackground:)(0, 2);
    result = sub_2259CB6A0(v55);
    v57 = v81;
    v58 = v83;
    *v81 = v84;
    v57[1] = v58;
    v59 = v80;
    v57[2] = v82;
    v57[3] = v59;
    v57[4] = v48;
    v57[5] = v50;
    v57[6] = v52;
    v57[7] = v54;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AA10);
    inited = swift_initStackObject();
    *(inited + 32) = 20;
    v61 = MEMORY[0x277D84CC0];
    *(inited + 16) = xmmword_225CD30F0;
    v62 = MEMORY[0x277D84D18];
    *(inited + 64) = v61;
    *(inited + 72) = v62;
    *(inited + 40) = v31;
    v84 = v32;
    v83 = v33;
    v82 = v34;
    v81 = v35;
    v63 = sub_225B2C374(inited);
    swift_setDeallocating();
    sub_2259CB640(inited + 32, &qword_27D73B060);
    sub_2259CB5EC();
    swift_allocError();
    v65 = v64;
    v66 = sub_225CCE954();
    v67 = *(v66 - 8);
    v68 = v80;
    (*(v67 + 56))(v80, 1, 1, v66);
    LODWORD(v66) = (*(v67 + 48))(v68, 1, v66);
    sub_2259CB640(v68, &unk_27D73B050);
    if (v66)
    {
      v69 = 329;
    }

    else
    {
      v69 = 23;
    }

    v70 = MEMORY[0x277D84F90];
    v71 = sub_225B2C374(MEMORY[0x277D84F90]);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v89[0] = v71;
    sub_225B2C4A0(v63, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, v89);

    v73 = v89[0];
    v74 = sub_225B29AA0(0, 1, 1, v70);
    v76 = *(v74 + 2);
    v75 = *(v74 + 3);
    if (v76 >= v75 >> 1)
    {
      v74 = sub_225B29AA0((v75 > 1), v76 + 1, 1, v74);
    }

    *(v74 + 2) = v76 + 1;
    v77 = &v74[56 * v76];
    *(v77 + 4) = 0xD000000000000046;
    *(v77 + 5) = 0x8000000225D0D320;
    *(v77 + 6) = 0xD000000000000023;
    *(v77 + 7) = 0x8000000225D0CD70;
    *(v77 + 8) = 0xD00000000000003BLL;
    *(v77 + 9) = 0x8000000225D0D2E0;
    *(v77 + 10) = 265;
    *v65 = v69;
    *(v65 + 8) = v74;
    *(v65 + 16) = 0xD000000000000046;
    *(v65 + 24) = 0x8000000225D0D320;
    *(v65 + 32) = v73;
    *(v65 + 40) = 0;
    swift_willThrow();

    v78 = v85;
    DIPSignpost.end(workflowID:isBackground:)(0, 2);
    return sub_2259CB6A0(v78);
  }

  return result;
}

uint64_t sub_2259C4998(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, unint64_t a8, uint64_t a9, unint64_t a10)
{
  v121 = a8;
  v109 = a7;
  v126 = a3;
  v127 = a6;
  v130[1] = *MEMORY[0x277D85DE8];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050);
  MEMORY[0x28223BE20](v14 - 8, v15);
  v110 = &v107[-v16];
  v115 = type metadata accessor for DIPSignpost.Config(0);
  MEMORY[0x28223BE20](v115, v17);
  v114 = &v107[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19 = type metadata accessor for DIPSignpost(0);
  MEMORY[0x28223BE20](v19 - 8, v20);
  v128 = &v107[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v129 = sub_225CCD954();
  v22 = *(v129 - 1);
  v24 = MEMORY[0x28223BE20](v129, v23);
  v111 = &v107[-((v25 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v27 = MEMORY[0x28223BE20](v24, v26);
  v113 = &v107[-v28];
  MEMORY[0x28223BE20](v27, v29);
  v125 = &v107[-v30];
  if (qword_28105B910 != -1)
  {
    swift_once();
  }

  v31 = off_28105B918;
  v32 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
  v33 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((off_28105B918 + v33));
  v34 = *(v22 + 16);
  v123 = v32;
  v116 = v22 + 16;
  v122 = v34;
  v34(v125, &v31[v32], v129);
  v124 = v33;
  v112 = v31;
  os_unfair_lock_unlock(&v31[v33]);
  sub_2259CB710(a1, a2);
  v35 = v126;
  sub_2259CB710(v126, a4);
  v36 = a5;
  v37 = a5;
  v38 = v127;
  sub_2259CB710(v36, v127);
  v39 = sub_225CCD934();
  LODWORD(v33) = sub_225CCED04();
  sub_2259BEF00(a1, a2);
  sub_2259BEF00(v35, a4);
  sub_2259BEF00(v37, v38);
  v108 = v33;
  v40 = os_log_type_enabled(v39, v33);
  v41 = v22;
  v42 = v128;
  v120 = v37;
  v119 = a4;
  v118 = a2;
  v117 = a1;
  if (v40)
  {
    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v130[0] = v44;
    *v43 = 136315650;
    v45 = sub_225CCCF84();
    v47 = sub_2259BE198(v45, v46, v130);

    *(v43 + 4) = v47;
    *(v43 + 12) = 2080;
    v48 = sub_225CCCF84();
    v50 = sub_2259BE198(v48, v49, v130);

    *(v43 + 14) = v50;
    *(v43 + 22) = 2080;
    v51 = sub_225CCCF84();
    v53 = sub_2259BE198(v51, v52, v130);

    *(v43 + 24) = v53;
    _os_log_impl(&dword_2259A7000, v39, v108, "AppleIDVManager generatePhoneToken nonce: %s aclBlob: %s, keyBlob: %s", v43, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x22AA6F950](v44, -1, -1);
    v42 = v128;
    MEMORY[0x22AA6F950](v43, -1, -1);
  }

  v54 = v41;
  v55 = *(v41 + 8);
  (v55)(v125, v129);
  v56 = v112;
  if (qword_27D73A6D8 != -1)
  {
    swift_once();
  }

  v57 = __swift_project_value_buffer(v115, qword_27D7416E8);
  v58 = v114;
  sub_2259CB588(v57, v114);
  DIPSignpost.init(_:)(v58, v42);
  v59 = v124;
  os_unfair_lock_lock(&v56[v124]);
  v60 = v113;
  v61 = v129;
  v122(v113, &v56[v123], v129);
  os_unfair_lock_unlock(&v56[v59]);
  v62 = v120;
  v63 = v127;
  sub_2259CB710(v120, v127);
  sub_225B407D4(v60, v62, v63);
  sub_2259BEF00(v62, v63);
  v125 = v55;
  v115 = v54 + 8;
  (v55)(v60, v61);
  v64 = sub_225CCCF74();
  v65 = sub_225CCCF74();
  v66 = sub_225CCCF74();
  if (v121 >> 60 == 15)
  {
    v67 = 0;
  }

  else
  {
    v67 = sub_225CCCF74();
  }

  if (a10 >> 60 == 15)
  {
    v68 = 0;
  }

  else
  {
    v68 = sub_225CCCF74();
  }

  v69 = objc_opt_self();
  v130[0] = 0;
  v70 = [v69 appleIDVGeneratePhoneTokenWithNonce:v64 withReferenceACLBlob:v65 keyBlob:v66 keyAttestation:v67 casdCertificate:v68 phoneToken:v130];

  v71 = v130[0];
  if (v70 || !v130[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AA10);
    inited = swift_initStackObject();
    *(inited + 32) = 20;
    v87 = MEMORY[0x277D84CC0];
    *(inited + 16) = xmmword_225CD30F0;
    v88 = MEMORY[0x277D84D18];
    *(inited + 64) = v87;
    *(inited + 72) = v88;
    *(inited + 40) = v70;
    v129 = v71;
    v89 = sub_225B2C374(inited);
    swift_setDeallocating();
    sub_2259CB640(inited + 32, &qword_27D73B060);
    sub_2259CB5EC();
    swift_allocError();
    v91 = v90;
    v92 = sub_225CCE954();
    v93 = *(v92 - 8);
    v94 = v110;
    (*(v93 + 56))(v110, 1, 1, v92);
    LODWORD(v92) = (*(v93 + 48))(v94, 1, v92);
    sub_2259CB640(v94, &unk_27D73B050);
    if (v92)
    {
      v95 = 317;
    }

    else
    {
      v95 = 23;
    }

    v96 = MEMORY[0x277D84F90];
    v97 = sub_225B2C374(MEMORY[0x277D84F90]);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v130[0] = v97;
    sub_225B2C4A0(v89, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, v130);

    v99 = v130[0];
    v100 = sub_225B29AA0(0, 1, 1, v96);
    v102 = *(v100 + 2);
    v101 = *(v100 + 3);
    if (v102 >= v101 >> 1)
    {
      v100 = sub_225B29AA0((v101 > 1), v102 + 1, 1, v100);
    }

    *(v100 + 2) = v102 + 1;
    v103 = &v100[56 * v102];
    *(v103 + 4) = 0xD000000000000025;
    *(v103 + 5) = 0x8000000225D0D240;
    *(v103 + 6) = 0xD000000000000023;
    *(v103 + 7) = 0x8000000225D0CD70;
    *(v103 + 8) = 0xD00000000000004DLL;
    *(v103 + 9) = 0x8000000225D0D270;
    *(v103 + 10) = 284;
    *v91 = v95;
    *(v91 + 8) = v100;
    *(v91 + 16) = 0xD000000000000025;
    *(v91 + 24) = 0x8000000225D0D240;
    *(v91 + 32) = v99;
    *(v91 + 40) = 0;
    swift_willThrow();

    v104 = v128;
    DIPSignpost.end(workflowID:isBackground:)(0, 2);
    sub_2259CB6A0(v104);
  }

  else
  {
    v72 = v130[0];
    v73 = v124;
    os_unfair_lock_lock(&v56[v124]);
    v74 = v111;
    v122(v111, &v56[v123], v129);
    os_unfair_lock_unlock(&v56[v73]);
    v75 = v72;
    v76 = sub_225CCD934();
    v77 = sub_225CCED04();

    if (os_log_type_enabled(v76, v77))
    {
      v78 = swift_slowAlloc();
      v79 = swift_slowAlloc();
      v130[0] = v79;
      *v78 = 136315138;
      v80 = [v75 base64EncodedStringWithOptions_];
      v81 = sub_225CCE474();
      v83 = v82;

      v84 = sub_2259BE198(v81, v83, v130);

      *(v78 + 4) = v84;
      v85 = v128;
      _os_log_impl(&dword_2259A7000, v76, v77, "AppleIDVManager generatePhoneToken returned successfully, token: %s", v78, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v79);
      MEMORY[0x22AA6F950](v79, -1, -1);
      MEMORY[0x22AA6F950](v78, -1, -1);

      (v125)(v111, v129);
    }

    else
    {

      (v125)(v74, v129);
      v85 = v128;
    }

    v105 = v75;
    v95 = sub_225CCCFA4();

    DIPSignpost.end(workflowID:isBackground:)(0, 2);
    sub_2259CB6A0(v85);
  }

  return v95;
}

uint64_t sub_2259C5534(void *a1, unint64_t a2)
{
  v97[1] = *MEMORY[0x277D85DE8];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v89 = v86 - v6;
  v93 = type metadata accessor for DIPSignpost.Config(0);
  MEMORY[0x28223BE20](v93, v7);
  v92 = v86 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DIPSignpost(0);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = v86 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_225CCD954();
  v14 = *(v13 - 8);
  v16 = MEMORY[0x28223BE20](v13, v15);
  v18 = v86 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16, v19);
  v95 = v86 - v20;
  if (qword_28105B910 != -1)
  {
    swift_once();
  }

  v21 = off_28105B918;
  v22 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
  v23 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((off_28105B918 + v23));
  v24 = *(v14 + 16);
  v87 = v22;
  v86[1] = v14 + 16;
  v86[0] = v24;
  v24(v95, &v21[v22], v13);
  v88 = v23;
  os_unfair_lock_unlock(&v21[v23]);
  sub_2259CB710(a1, a2);
  v96 = a1;
  v25 = sub_225CCD934();
  v26 = v96;
  v27 = v25;
  v28 = sub_225CCED04();
  sub_2259BEF00(v26, a2);
  v29 = os_log_type_enabled(v27, v28);
  v91 = v18;
  v94 = a2;
  if (v29)
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v90 = v13;
    v32 = v31;
    v97[0] = v31;
    *v30 = 136315138;
    v33 = sub_225CCCF84();
    v35 = v14;
    v36 = sub_2259BE198(v33, v34, v97);

    *(v30 + 4) = v36;
    v14 = v35;
    _os_log_impl(&dword_2259A7000, v27, v28, "AppleIDVManager establishPrearmTrust with baaCertificate: %s", v30, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v32);
    v37 = v32;
    v13 = v90;
    MEMORY[0x22AA6F950](v37, -1, -1);
    MEMORY[0x22AA6F950](v30, -1, -1);

    v38 = v35;
  }

  else
  {

    v38 = v14;
  }

  v39 = *(v38 + 8);
  v39(v95, v13);
  if (qword_27D73A6C0 != -1)
  {
    swift_once();
  }

  v40 = __swift_project_value_buffer(v93, qword_27D7416A0);
  v41 = v92;
  sub_2259CB588(v40, v92);
  DIPSignpost.init(_:)(v41, v12);
  v42 = objc_opt_self();
  v43 = sub_225CCCF74();
  v97[0] = 0;
  v44 = [v42 appleIDVEstablishPrearmTrustWithCertificate:v43 protectedPublicKey:v97];

  v45 = v97[0];
  if (v44 || !v97[0])
  {
    v96 = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AA10);
    inited = swift_initStackObject();
    *(inited + 32) = 20;
    v66 = MEMORY[0x277D84CC0];
    *(inited + 16) = xmmword_225CD30F0;
    v67 = MEMORY[0x277D84D18];
    *(inited + 64) = v66;
    *(inited + 72) = v67;
    *(inited + 40) = v44;
    v95 = v45;
    v68 = sub_225B2C374(inited);
    swift_setDeallocating();
    sub_2259CB640(inited + 32, &qword_27D73B060);
    sub_2259CB5EC();
    swift_allocError();
    v70 = v69;
    v71 = sub_225CCE954();
    v72 = *(v71 - 8);
    v73 = v89;
    (*(v72 + 56))(v89, 1, 1, v71);
    LODWORD(v71) = (*(v72 + 48))(v73, 1, v71);
    sub_2259CB640(v73, &unk_27D73B050);
    if (v71)
    {
      v74 = 320;
    }

    else
    {
      v74 = 23;
    }

    v75 = MEMORY[0x277D84F90];
    v76 = sub_225B2C374(MEMORY[0x277D84F90]);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v97[0] = v76;
    sub_225B2C4A0(v68, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, v97);

    v78 = v97[0];
    v79 = sub_225B29AA0(0, 1, 1, v75);
    v81 = *(v79 + 2);
    v80 = *(v79 + 3);
    if (v81 >= v80 >> 1)
    {
      v79 = sub_225B29AA0((v80 > 1), v81 + 1, 1, v79);
    }

    *(v79 + 2) = v81 + 1;
    v82 = &v79[56 * v81];
    *(v82 + 4) = 0xD000000000000027;
    *(v82 + 5) = 0x8000000225D0D1E0;
    *(v82 + 6) = 0xD000000000000023;
    *(v82 + 7) = 0x8000000225D0CD70;
    *(v82 + 8) = 0xD000000000000025;
    *(v82 + 9) = 0x8000000225D0D210;
    *(v82 + 10) = 301;
    *v70 = v74;
    *(v70 + 8) = v79;
    *(v70 + 16) = 0xD000000000000027;
    *(v70 + 24) = 0x8000000225D0D1E0;
    *(v70 + 32) = v78;
    *(v70 + 40) = 0;
    swift_willThrow();

    v83 = v96;
    DIPSignpost.end(workflowID:isBackground:)(0, 2);
    sub_2259CB6A0(v83);
  }

  else
  {
    v46 = v97[0];
    v47 = v88;
    os_unfair_lock_lock(&v21[v88]);
    v48 = v91;
    (v86[0])(v91, &v21[v87], v13);
    os_unfair_lock_unlock(&v21[v47]);
    v49 = v46;
    v50 = sub_225CCD934();
    v51 = sub_225CCED04();

    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      v95 = v39;
      v53 = v52;
      v54 = swift_slowAlloc();
      v96 = v49;
      v55 = v54;
      v97[0] = v54;
      *v53 = 136315138;
      v56 = [v96 base64EncodedStringWithOptions_];
      v90 = v13;
      v57 = v56;
      v58 = v12;
      v59 = sub_225CCE474();
      v94 = v14;
      v61 = v60;

      v62 = v59;
      v12 = v58;
      v63 = sub_2259BE198(v62, v61, v97);

      *(v53 + 4) = v63;
      _os_log_impl(&dword_2259A7000, v50, v51, "AppleIDVManager establishPrearmTrust returned successfully, protected public key: %s", v53, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v55);
      v64 = v55;
      v49 = v96;
      MEMORY[0x22AA6F950](v64, -1, -1);
      MEMORY[0x22AA6F950](v53, -1, -1);

      (v95)(v91, v90);
    }

    else
    {

      v39(v48, v13);
    }

    v84 = v49;
    v74 = sub_225CCCFA4();

    DIPSignpost.end(workflowID:isBackground:)(0, 2);
    sub_2259CB6A0(v12);
  }

  return v74;
}

uint64_t sub_2259C5E68(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v98 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v90 = &v82 - v9;
  v93 = type metadata accessor for DIPSignpost.Config(0);
  MEMORY[0x28223BE20](v93, v10);
  v92 = &v82 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DIPSignpost(0);
  MEMORY[0x28223BE20](v12 - 8, v13);
  v96 = &v82 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_225CCD954();
  v16 = *(v15 - 8);
  v18 = MEMORY[0x28223BE20](v15, v17);
  v89 = &v82 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18, v20);
  v22 = &v82 - v21;
  if (qword_28105B910 != -1)
  {
    swift_once();
  }

  v23 = off_28105B918;
  v24 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
  v25 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((off_28105B918 + v25));
  v26 = *(v16 + 16);
  v87 = v24;
  v86 = v16 + 16;
  v85 = v26;
  v26(v22, &v23[v24], v15);
  v88 = v25;
  os_unfair_lock_unlock(&v23[v25]);
  sub_2259CB710(a1, a2);
  v27 = v98;
  sub_2259CB710(a3, v98);
  v97 = a3;
  v28 = sub_225CCD934();
  v29 = v97;
  v30 = v15;
  v31 = v28;
  v32 = sub_225CCED04();
  v91 = v16;
  v33 = v32;
  sub_2259BEF00(a1, a2);
  sub_2259BEF00(v29, v27);
  v34 = os_log_type_enabled(v31, v33);
  v94 = a1;
  v95 = a2;
  if (v34)
  {
    v35 = swift_slowAlloc();
    v84 = v30;
    v36 = v35;
    v83 = swift_slowAlloc();
    v101 = v83;
    *v36 = 136315394;
    v37 = sub_225CCCF84();
    v39 = sub_2259BE198(v37, v38, &v101);

    *(v36 + 4) = v39;
    *(v36 + 12) = 2080;
    v40 = v99;
    v41 = sub_225B34448(v29, v27);
    v99 = v40;
    v100 = v41;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73DCB0);
    sub_2259CB764();
    v42 = sub_225CCE384();
    v44 = v43;
    v45 = v96;

    v46 = sub_2259BE198(v42, v44, &v101);

    *(v36 + 14) = v46;
    _os_log_impl(&dword_2259A7000, v31, v33, "AppleIDVManager validatePrearmTrust with baaCertificate: %s, protectedPublicKey: %s", v36, 0x16u);
    v47 = v83;
    swift_arrayDestroy();
    MEMORY[0x22AA6F950](v47, -1, -1);
    MEMORY[0x22AA6F950](v36, -1, -1);

    v48 = *(v91 + 8);
    v49 = v84;
    v48(v22, v84);
  }

  else
  {

    v48 = *(v91 + 8);
    v48(v22, v30);
    v49 = v30;
    v45 = v96;
  }

  if (qword_27D73A6C8 != -1)
  {
    swift_once();
  }

  v50 = __swift_project_value_buffer(v93, qword_27D7416B8);
  v51 = v92;
  sub_2259CB588(v50, v92);
  DIPSignpost.init(_:)(v51, v45);
  v52 = objc_opt_self();
  v53 = sub_225CCCF74();
  v54 = sub_225CCCF74();
  v55 = [v52 appleIDVValidatePrearmTrustWithCertificate:v53 protectedPublicKey:v54];

  if (v55)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AA10);
    inited = swift_initStackObject();
    *(inited + 32) = 20;
    v57 = inited + 32;
    v58 = MEMORY[0x277D84CC0];
    *(inited + 16) = xmmword_225CD30F0;
    v59 = MEMORY[0x277D84D18];
    *(inited + 64) = v58;
    *(inited + 72) = v59;
    *(inited + 40) = v55;
    v60 = sub_225B2C374(inited);
    swift_setDeallocating();
    sub_2259CB640(v57, &qword_27D73B060);
    sub_2259CB5EC();
    swift_allocError();
    v62 = v61;
    v63 = sub_225CCE954();
    v64 = *(v63 - 8);
    v65 = v90;
    (*(v64 + 56))(v90, 1, 1, v63);
    LODWORD(v63) = (*(v64 + 48))(v65, 1, v63);
    sub_2259CB640(v65, &unk_27D73B050);
    if (v63)
    {
      v66 = 332;
    }

    else
    {
      v66 = 23;
    }

    v67 = MEMORY[0x277D84F90];
    v68 = sub_225B2C374(MEMORY[0x277D84F90]);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v101 = v68;
    sub_225B2C4A0(v60, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v101);

    v70 = v101;
    v71 = sub_225B29AA0(0, 1, 1, v67);
    v73 = *(v71 + 2);
    v72 = *(v71 + 3);
    if (v73 >= v72 >> 1)
    {
      v71 = sub_225B29AA0((v72 > 1), v73 + 1, 1, v71);
    }

    *(v71 + 2) = v73 + 1;
    v74 = &v71[56 * v73];
    *(v74 + 4) = 0xD000000000000026;
    *(v74 + 5) = 0x8000000225D0D170;
    *(v74 + 6) = 0xD000000000000023;
    *(v74 + 7) = 0x8000000225D0CD70;
    *(v74 + 8) = 0xD000000000000037;
    *(v74 + 9) = 0x8000000225D0D1A0;
    *(v74 + 10) = 316;
    *v62 = v66;
    *(v62 + 8) = v71;
    *(v62 + 16) = 0xD000000000000026;
    *(v62 + 24) = 0x8000000225D0D170;
    *(v62 + 32) = v70;
    *(v62 + 40) = 0;
    swift_willThrow();
    v75 = v96;
    DIPSignpost.end(workflowID:isBackground:)(0, 2);
    return sub_2259CB6A0(v75);
  }

  else
  {
    v77 = v88;
    os_unfair_lock_lock(&v23[v88]);
    v78 = v89;
    v85(v89, &v23[v87], v49);
    os_unfair_lock_unlock(&v23[v77]);
    v79 = sub_225CCD934();
    v80 = sub_225CCED04();
    if (os_log_type_enabled(v79, v80))
    {
      v81 = swift_slowAlloc();
      *v81 = 0;
      _os_log_impl(&dword_2259A7000, v79, v80, "AppleIDVManager validatePrearmTrust returned successfully", v81, 2u);
      MEMORY[0x22AA6F950](v81, -1, -1);
    }

    v48(v78, v49);
    DIPSignpost.end(workflowID:isBackground:)(0, 2);
    return sub_2259CB6A0(v45);
  }
}

id sub_2259C6748()
{
  v79[1] = *MEMORY[0x277D85DE8];
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050);
  MEMORY[0x28223BE20](v0 - 8, v1);
  v76 = &v72 - v2;
  v3 = type metadata accessor for DIPSignpost.Config(0);
  MEMORY[0x28223BE20](v3, v4);
  v6 = &v72 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DIPSignpost(0);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v78 = &v72 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_225CCD954();
  v11 = *(v10 - 8);
  v13 = MEMORY[0x28223BE20](v10, v12);
  v77 = &v72 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v15);
  v17 = &v72 - v16;
  if (qword_28105B910 != -1)
  {
    swift_once();
  }

  v18 = off_28105B918;
  v19 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
  v20 = ((*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL);
  os_unfair_lock_lock(&v20[off_28105B918]);
  v73 = *(v11 + 16);
  v74 = v19;
  v73(v17, &v18[v19], v10);
  v75 = v20;
  os_unfair_lock_unlock(&v20[v18]);
  v21 = sub_225CCD934();
  v22 = sub_225CCED04();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v72 = v6;
    v24 = v3;
    v25 = v11;
    v26 = v10;
    v27 = v23;
    *v23 = 0;
    _os_log_impl(&dword_2259A7000, v21, v22, "AppleIDVManager generateNonceOnWatch", v23, 2u);
    v28 = v27;
    v10 = v26;
    v11 = v25;
    v3 = v24;
    v6 = v72;
    MEMORY[0x22AA6F950](v28, -1, -1);
  }

  v29 = *(v11 + 8);
  v29(v17, v10);
  if (qword_27D73A6D0 != -1)
  {
    swift_once();
  }

  v30 = __swift_project_value_buffer(v3, qword_27D7416D0);
  sub_2259CB588(v30, v6);
  DIPSignpost.init(_:)(v6, v78);
  v31 = objc_opt_self();
  v79[0] = 0;
  v32 = [v31 appleIDVGenerateNonceOnWatch_];
  v33 = v79[0];
  if (v32 || !v79[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AA10);
    inited = swift_initStackObject();
    *(inited + 32) = 20;
    v51 = MEMORY[0x277D84CC0];
    *(inited + 16) = xmmword_225CD30F0;
    v52 = MEMORY[0x277D84D18];
    *(inited + 64) = v51;
    *(inited + 72) = v52;
    *(inited + 40) = v32;
    v77 = v33;
    v53 = sub_225B2C374(inited);
    swift_setDeallocating();
    sub_2259CB640(inited + 32, &qword_27D73B060);
    sub_2259CB5EC();
    swift_allocError();
    v55 = v54;
    v56 = sub_225CCE954();
    v57 = *(v56 - 8);
    v58 = v76;
    (*(v57 + 56))(v76, 1, 1, v56);
    LODWORD(v56) = (*(v57 + 48))(v58, 1, v56);
    sub_2259CB640(v58, &unk_27D73B050);
    if (v56)
    {
      v59 = 316;
    }

    else
    {
      v59 = 23;
    }

    v60 = MEMORY[0x277D84F90];
    v61 = sub_225B2C374(MEMORY[0x277D84F90]);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v79[0] = v61;
    sub_225B2C4A0(v53, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, v79);

    v63 = v79[0];
    v64 = sub_225B29AA0(0, 1, 1, v60);
    v66 = *(v64 + 2);
    v65 = *(v64 + 3);
    if (v66 >= v65 >> 1)
    {
      v64 = sub_225B29AA0((v65 > 1), v66 + 1, 1, v64);
    }

    *(v64 + 2) = v66 + 1;
    v67 = &v64[56 * v66];
    *(v67 + 4) = 0xD000000000000020;
    *(v67 + 5) = 0x8000000225D0D120;
    *(v67 + 6) = 0xD000000000000023;
    *(v67 + 7) = 0x8000000225D0CD70;
    *(v67 + 8) = 0xD000000000000016;
    *(v67 + 9) = 0x8000000225D0D150;
    *(v67 + 10) = 332;
    *v55 = v59;
    *(v55 + 8) = v64;
    *(v55 + 16) = 0xD000000000000020;
    *(v55 + 24) = 0x8000000225D0D120;
    *(v55 + 32) = v63;
    *(v55 + 40) = 0;
    swift_willThrow();

    v68 = v78;
    DIPSignpost.end(workflowID:isBackground:)(0, 2);
    sub_2259CB6A0(v68);
  }

  else
  {
    v76 = v29;
    v34 = v79[0];
    v35 = v75;
    os_unfair_lock_lock(&v75[v18]);
    v36 = v77;
    v73(v77, &v18[v74], v10);
    os_unfair_lock_unlock(&v35[v18]);
    v37 = v34;
    v38 = sub_225CCD934();
    v39 = sub_225CCED04();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v75 = swift_slowAlloc();
      v79[0] = v75;
      *v40 = 136315138;
      v41 = v37;
      v42 = [v37 base64EncodedStringWithOptions_];
      v43 = sub_225CCE474();
      v74 = v10;
      v45 = v44;

      v46 = sub_2259BE198(v43, v45, v79);

      *(v40 + 4) = v46;
      v37 = v41;
      _os_log_impl(&dword_2259A7000, v38, v39, "AppleIDVManager generateNonceOnWatch returned successfully, nonce: %s", v40, 0xCu);
      v47 = v75;
      __swift_destroy_boxed_opaque_existential_0(v75);
      MEMORY[0x22AA6F950](v47, -1, -1);
      MEMORY[0x22AA6F950](v40, -1, -1);

      v48 = v77;
      v49 = v74;
    }

    else
    {

      v48 = v36;
      v49 = v10;
    }

    (v76)(v48, v49);
    v69 = v37;
    v63 = sub_225CCCFA4();

    v70 = v78;
    DIPSignpost.end(workflowID:isBackground:)(0, 2);
    sub_2259CB6A0(v70);
  }

  return v63;
}

uint64_t sub_2259C6F64(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v95 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v86 = &v78 - v9;
  v90 = type metadata accessor for DIPSignpost.Config(0);
  MEMORY[0x28223BE20](v90, v10);
  v89 = &v78 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DIPSignpost(0);
  MEMORY[0x28223BE20](v12 - 8, v13);
  v94 = &v78 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_225CCD954();
  v16 = *(v15 - 8);
  v18 = MEMORY[0x28223BE20](v15, v17);
  v85 = &v78 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18, v20);
  v22 = &v78 - v21;
  if (qword_28105B910 != -1)
  {
    swift_once();
  }

  v23 = off_28105B918;
  v24 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
  v25 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((off_28105B918 + v25));
  v26 = *(v16 + 16);
  v83 = v24;
  v82 = v16 + 16;
  v81 = v26;
  v26(v22, &v23[v24], v15);
  v84 = v25;
  os_unfair_lock_unlock(&v23[v25]);
  sub_2259CB710(a1, a2);
  v27 = v95;
  sub_2259CB710(a3, v95);
  v28 = sub_225CCD934();
  v29 = sub_225CCED04();
  v88 = v15;
  v30 = a2;
  v31 = v29;
  sub_2259BEF00(a1, v30);
  sub_2259BEF00(a3, v27);
  v32 = os_log_type_enabled(v28, v31);
  v87 = v16;
  v92 = v30;
  v93 = a3;
  v91 = a1;
  if (v32)
  {
    v33 = swift_slowAlloc();
    v80 = v22;
    v34 = v33;
    v79 = swift_slowAlloc();
    v96 = v79;
    *v34 = 136315394;
    v35 = sub_225CCCF84();
    v37 = sub_2259BE198(v35, v36, &v96);

    *(v34 + 4) = v37;
    *(v34 + 12) = 2080;
    v38 = sub_225CCCF84();
    v40 = sub_2259BE198(v38, v39, &v96);

    *(v34 + 14) = v40;
    _os_log_impl(&dword_2259A7000, v28, v31, "AppleIDVManager prearmCredential token: %s, protectedPublicKey: %s ", v34, 0x16u);
    v41 = v79;
    swift_arrayDestroy();
    MEMORY[0x22AA6F950](v41, -1, -1);
    v42 = v34;
    v43 = v94;
    MEMORY[0x22AA6F950](v42, -1, -1);

    v44 = v88;
    v45 = *(v87 + 8);
    v45(v80, v88);
  }

  else
  {

    v45 = *(v16 + 8);
    v44 = v88;
    v45(v22, v88);
    v43 = v94;
  }

  if (qword_27D73A6E0 != -1)
  {
    swift_once();
  }

  v46 = __swift_project_value_buffer(v90, qword_27D741700);
  v47 = v89;
  sub_2259CB588(v46, v89);
  DIPSignpost.init(_:)(v47, v43);
  v48 = objc_opt_self();
  v49 = sub_225CCCF74();
  v50 = sub_225CCCF74();
  v51 = [v48 appleIDVPrearmCredentialWithAuthorizationToken:v49 protectedPublicKey:v50];

  if (v51)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AA10);
    inited = swift_initStackObject();
    *(inited + 32) = 20;
    v53 = inited + 32;
    v54 = MEMORY[0x277D84CC0];
    *(inited + 16) = xmmword_225CD30F0;
    v55 = MEMORY[0x277D84D18];
    *(inited + 64) = v54;
    *(inited + 72) = v55;
    *(inited + 40) = v51;
    v56 = sub_225B2C374(inited);
    swift_setDeallocating();
    sub_2259CB640(v53, &qword_27D73B060);
    sub_2259CB5EC();
    swift_allocError();
    v58 = v57;
    v59 = sub_225CCE954();
    v60 = *(v59 - 8);
    v61 = v86;
    (*(v60 + 56))(v86, 1, 1, v59);
    LODWORD(v59) = (*(v60 + 48))(v61, 1, v59);
    sub_2259CB640(v61, &unk_27D73B050);
    if (v59)
    {
      v62 = 318;
    }

    else
    {
      v62 = 23;
    }

    v63 = MEMORY[0x277D84F90];
    v64 = sub_225B2C374(MEMORY[0x277D84F90]);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v96 = v64;
    sub_225B2C4A0(v56, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v96);

    v66 = v96;
    v67 = sub_225B29AA0(0, 1, 1, v63);
    v69 = *(v67 + 2);
    v68 = *(v67 + 3);
    if (v69 >= v68 >> 1)
    {
      v67 = sub_225B29AA0((v68 > 1), v69 + 1, 1, v67);
    }

    *(v67 + 2) = v69 + 1;
    v70 = &v67[56 * v69];
    *(v70 + 4) = 0xD000000000000023;
    *(v70 + 5) = 0x8000000225D0D0B0;
    *(v70 + 6) = 0xD000000000000023;
    *(v70 + 7) = 0x8000000225D0CD70;
    *(v70 + 8) = 0xD00000000000003CLL;
    *(v70 + 9) = 0x8000000225D0D0E0;
    *(v70 + 10) = 347;
    *v58 = v62;
    *(v58 + 8) = v67;
    *(v58 + 16) = 0xD000000000000023;
    *(v58 + 24) = 0x8000000225D0D0B0;
    *(v58 + 32) = v66;
    *(v58 + 40) = 0;
    swift_willThrow();
    v71 = v94;
    DIPSignpost.end(workflowID:isBackground:)(0, 2);
    return sub_2259CB6A0(v71);
  }

  else
  {
    v73 = v84;
    os_unfair_lock_lock(&v23[v84]);
    v74 = v85;
    v81(v85, &v23[v83], v44);
    os_unfair_lock_unlock(&v23[v73]);
    v75 = sub_225CCD934();
    v76 = sub_225CCED04();
    if (os_log_type_enabled(v75, v76))
    {
      v77 = swift_slowAlloc();
      *v77 = 0;
      _os_log_impl(&dword_2259A7000, v75, v76, "AppleIDVManager prearmCredential returned successfully", v77, 2u);
      MEMORY[0x22AA6F950](v77, -1, -1);
    }

    v45(v74, v44);
    DIPSignpost.end(workflowID:isBackground:)(0, 2);
    return sub_2259CB6A0(v43);
  }
}

uint64_t sub_2259C77EC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050);
  MEMORY[0x28223BE20](v0 - 8, v1);
  v58 = &v55 - v2;
  v59 = type metadata accessor for DIPSignpost.Config(0);
  MEMORY[0x28223BE20](v59, v3);
  v5 = &v55 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DIPSignpost(0);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v61 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_225CCD954();
  v10 = *(v9 - 8);
  v12 = MEMORY[0x28223BE20](v9, v11);
  v57 = &v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v14);
  v16 = &v55 - v15;
  if (qword_28105B910 != -1)
  {
    swift_once();
  }

  v17 = off_28105B918;
  v18 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
  v19 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((off_28105B918 + v19));
  v55 = *(v10 + 16);
  v56 = v18;
  v60 = v9;
  v55(v16, &v17[v18], v9);
  os_unfair_lock_unlock(&v17[v19]);
  v20 = sub_225CCD934();
  v21 = sub_225CCED04();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&dword_2259A7000, v20, v21, "AppleIDVManager revokeCredentialAuthorizationToken", v22, 2u);
    MEMORY[0x22AA6F950](v22, -1, -1);
  }

  v23 = *(v10 + 8);
  v24 = v60;
  v23(v16, v60);
  if (qword_27D73A6E8 != -1)
  {
    swift_once();
  }

  v25 = __swift_project_value_buffer(v59, qword_27D741718);
  sub_2259CB588(v25, v5);
  DIPSignpost.init(_:)(v5, v61);
  v26 = [objc_opt_self() appleIDVRevokeCredentialAuthorizationToken];
  if (v26)
  {
    v27 = v26;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AA10);
    inited = swift_initStackObject();
    *(inited + 32) = 20;
    v29 = inited + 32;
    v30 = MEMORY[0x277D84CC0];
    *(inited + 16) = xmmword_225CD30F0;
    v31 = MEMORY[0x277D84D18];
    *(inited + 64) = v30;
    *(inited + 72) = v31;
    *(inited + 40) = v27;
    v32 = sub_225B2C374(inited);
    swift_setDeallocating();
    sub_2259CB640(v29, &qword_27D73B060);
    sub_2259CB5EC();
    swift_allocError();
    v34 = v33;
    v35 = sub_225CCE954();
    v36 = *(v35 - 8);
    v37 = v58;
    (*(v36 + 56))(v58, 1, 1, v35);
    LODWORD(v35) = (*(v36 + 48))(v37, 1, v35);
    sub_2259CB640(v37, &unk_27D73B050);
    if (v35)
    {
      v38 = 319;
    }

    else
    {
      v38 = 23;
    }

    v39 = MEMORY[0x277D84F90];
    v40 = sub_225B2C374(MEMORY[0x277D84F90]);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v62 = v40;
    sub_225B2C4A0(v32, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v62);

    v42 = v62;
    v43 = sub_225B29AA0(0, 1, 1, v39);
    v45 = *(v43 + 2);
    v44 = *(v43 + 3);
    if (v45 >= v44 >> 1)
    {
      v43 = sub_225B29AA0((v44 > 1), v45 + 1, 1, v43);
    }

    *(v43 + 2) = v45 + 1;
    v46 = &v43[56 * v45];
    *(v46 + 4) = 0xD000000000000035;
    *(v46 + 5) = 0x8000000225D0D040;
    *(v46 + 6) = 0xD000000000000023;
    *(v46 + 7) = 0x8000000225D0CD70;
    *(v46 + 8) = 0xD000000000000024;
    *(v46 + 9) = 0x8000000225D0D080;
    *(v46 + 10) = 361;
    *v34 = v38;
    *(v34 + 8) = v43;
    *(v34 + 16) = 0xD000000000000035;
    *(v34 + 24) = 0x8000000225D0D040;
    *(v34 + 32) = v42;
    *(v34 + 40) = 0;
    swift_willThrow();
    v47 = v61;
    DIPSignpost.end(workflowID:isBackground:)(0, 2);
    return sub_2259CB6A0(v47);
  }

  else
  {
    os_unfair_lock_lock(&v17[v19]);
    v49 = v57;
    v55(v57, &v17[v56], v24);
    os_unfair_lock_unlock(&v17[v19]);
    v50 = sub_225CCD934();
    v51 = sub_225CCED04();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      *v52 = 0;
      _os_log_impl(&dword_2259A7000, v50, v51, "AppleIDVManager revokeCredentialAuthorizationToken returned successfully", v52, 2u);
      v53 = v52;
      v24 = v60;
      MEMORY[0x22AA6F950](v53, -1, -1);
    }

    v23(v49, v24);
    v54 = v61;
    DIPSignpost.end(workflowID:isBackground:)(0, 2);
    return sub_2259CB6A0(v54);
  }
}

uint64_t sub_2259C7EB0(uint64_t a1, char *a2, void *a3, void *a4, uint64_t a5, void (*a6)(char *, char *, id))
{
  v100 = a6;
  v98 = a4;
  v99 = a5;
  v97 = a3;
  v96 = a2;
  v95[1] = a1;
  v106[1] = *MEMORY[0x277D85DE8];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v95[0] = v95 - v8;
  v9 = sub_225CCD124();
  v102 = *(v9 - 1);
  v103 = v9;
  MEMORY[0x28223BE20](v9, v10);
  v101 = v95 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DIPSignpost.Config(0);
  MEMORY[0x28223BE20](v12, v13);
  v15 = v95 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for DIPSignpost(0);
  MEMORY[0x28223BE20](v16 - 8, v17);
  v104 = v95 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_225CCD954();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19, v21);
  v23 = v95 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28105B910 != -1)
  {
    swift_once();
  }

  v24 = off_28105B918;
  v25 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
  v26 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((off_28105B918 + v26));
  (*(v20 + 16))(v23, &v24[v25], v19);
  os_unfair_lock_unlock(&v24[v26]);
  v27 = sub_225CCD934();
  v28 = sub_225CCED04();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    *v29 = 0;
    _os_log_impl(&dword_2259A7000, v27, v28, "AppleIDVManager persistModifiedACLBlob", v29, 2u);
    MEMORY[0x22AA6F950](v29, -1, -1);
  }

  (*(v20 + 8))(v23, v19);
  if (qword_27D73A6F0 != -1)
  {
    swift_once();
  }

  v30 = __swift_project_value_buffer(v12, qword_27D741730);
  sub_2259CB588(v30, v15);
  DIPSignpost.init(_:)(v15, v104);
  v31 = objc_opt_self();
  v32 = sub_225CCCF74();
  v33 = sub_225CCCF74();
  v34 = sub_225CCCF74();
  v106[0] = 0;
  v105 = 0;
  v35 = [v31 appleIDVPersistModifiedACLBlob:v32 withReferenceACLBlob:v33 withLAContextData:v34 intoBlob:v106 returnBioUUIDs:&v105];

  v36 = v105;
  v37 = v106[0];
  if (v35)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AA10);
    inited = swift_initStackObject();
    *(inited + 32) = 20;
    v39 = MEMORY[0x277D84CC0];
    *(inited + 16) = xmmword_225CD30F0;
    v40 = MEMORY[0x277D84D18];
    *(inited + 64) = v39;
    *(inited + 72) = v40;
    *(inited + 40) = v35;
    v98 = v36;
    v41 = v36;
    v103 = v37;
    v42 = sub_225B2C374(inited);
    swift_setDeallocating();
    sub_2259CB640(inited + 32, &qword_27D73B060);
    sub_2259CB5EC();
    swift_allocError();
    v44 = v43;
    v45 = sub_225CCE954();
    v46 = *(v45 - 8);
    v47 = v95[0];
    (*(v46 + 56))(v95[0], 1, 1, v45);
    LODWORD(v45) = (*(v46 + 48))(v47, 1, v45);
    sub_2259CB640(v47, &unk_27D73B050);
    if (v45)
    {
      v48 = 315;
    }

    else
    {
      v48 = 23;
    }

    v49 = MEMORY[0x277D84F90];
    v50 = sub_225B2C374(MEMORY[0x277D84F90]);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v106[0] = v50;
    sub_225B2C4A0(v42, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, v106);

    v52 = v106[0];
    v53 = sub_225B29AA0(0, 1, 1, v49);
    v55 = *(v53 + 2);
    v54 = *(v53 + 3);
    if (v55 >= v54 >> 1)
    {
      v53 = sub_225B29AA0((v54 > 1), v55 + 1, 1, v53);
    }

    *(v53 + 2) = v55 + 1;
    v56 = &v53[56 * v55];
    *(v56 + 4) = 0xD000000000000029;
    *(v56 + 5) = 0x8000000225D0CF70;
    *(v56 + 6) = 0xD000000000000023;
    *(v56 + 7) = 0x8000000225D0CD70;
    *(v56 + 8) = 0xD000000000000041;
    *(v56 + 9) = 0x8000000225D0CFA0;
    *(v56 + 10) = 377;
    *v44 = v48;
    *(v44 + 8) = v53;
    *(v44 + 16) = 0xD000000000000029;
    *(v44 + 24) = 0x8000000225D0CF70;
    *(v44 + 32) = v52;
    *(v44 + 40) = 0;
    swift_willThrow();

LABEL_14:
    v57 = v104;
    DIPSignpost.end(workflowID:isBackground:)(0, 2);
    sub_2259CB6A0(v57);
    return v48;
  }

  if (!v106[0])
  {
    v103 = 0x8000000225D0CD70;
    v98 = v105;
    v75 = v105;
    v76 = MEMORY[0x277D84F90];
    v77 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    swift_allocError();
    v48 = v78;
    v79 = sub_225CCE954();
    v80 = *(v79 - 8);
    v81 = v95[0];
    (*(v80 + 56))(v95[0], 1, 1, v79);
    LODWORD(v79) = (*(v80 + 48))(v81, 1, v79);
    sub_2259CB640(v81, &unk_27D73B050);
    if (v79)
    {
      v82 = 0;
    }

    else
    {
      v82 = 23;
    }

    v83 = sub_225B2C374(v76);
    v84 = swift_isUniquelyReferenced_nonNull_native();
    v106[0] = v83;
    sub_225B2C4A0(v77, sub_225B2AC40, 0, v84, v106);

    v85 = v106[0];
    v86 = sub_225B29AA0(0, 1, 1, v76);
    v88 = *(v86 + 2);
    v87 = *(v86 + 3);
    if (v88 >= v87 >> 1)
    {
      v86 = sub_225B29AA0((v87 > 1), v88 + 1, 1, v86);
    }

    *(v86 + 2) = v88 + 1;
    v89 = &v86[56 * v88];
    *(v89 + 4) = 0xD000000000000047;
    *(v89 + 5) = 0x8000000225D0CFF0;
    v90 = v103;
    *(v89 + 6) = 0xD000000000000023;
    *(v89 + 7) = v90;
    *(v89 + 8) = 0xD000000000000041;
    *(v89 + 9) = 0x8000000225D0CFA0;
    *(v89 + 10) = 380;
    *v48 = v82;
    *(v48 + 8) = v86;
    *(v48 + 16) = 0xD000000000000047;
    *(v48 + 24) = 0x8000000225D0CFF0;
    *(v48 + 32) = v85;
    *(v48 + 40) = 0;
    swift_willThrow();
    goto LABEL_14;
  }

  if (v105)
  {
    v106[0] = 0;
    v58 = v37;
    v59 = v36;
    v60 = v58;
    sub_225CCE804();
    v61 = v106[0];
    if (v106[0])
    {
      v62 = *(v106[0] + 2);
      if (v62)
      {
        v97 = v37;
        v98 = v36;
        v106[0] = MEMORY[0x277D84F90];
        sub_2259D52A4(0, v62, 0);
        v63 = v106[0];
        v100 = *(v102 + 16);
        v64 = (*(v102 + 80) + 32) & ~*(v102 + 80);
        v96 = v61;
        v65 = &v61[v64];
        v99 = *(v102 + 72);
        v102 += 16;
        v66 = (v102 - 8);
        do
        {
          v67 = v101;
          v68 = v103;
          v100(v101, v65, v103);
          v69 = sub_225CCD0C4();
          v71 = v70;
          (*v66)(v67, v68);
          v106[0] = v63;
          v73 = v63[2];
          v72 = v63[3];
          if (v73 >= v72 >> 1)
          {
            sub_2259D52A4((v72 > 1), v73 + 1, 1);
            v63 = v106[0];
          }

          v63[2] = v73 + 1;
          v74 = &v63[2 * v73];
          v74[4] = v69;
          v74[5] = v71;
          v65 += v99;
          --v62;
        }

        while (v62);

        v36 = v98;
        v37 = v97;
      }

      else
      {
      }
    }
  }

  else
  {
    v91 = v106[0];
  }

  v92 = v37;
  v48 = sub_225CCCFA4();

  v93 = v104;
  DIPSignpost.end(workflowID:isBackground:)(0, 2);
  sub_2259CB6A0(v93);
  return v48;
}

uint64_t sub_2259C8990(char a1)
{
  v88 = *MEMORY[0x277D85DE8];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v84 = &v81 - v4;
  v5 = type metadata accessor for DIPSignpost.Config(0);
  MEMORY[0x28223BE20](v5, v6);
  v8 = &v81 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DIPSignpost(0);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v85 = &v81 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_225CCD954();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12, v14);
  v16 = &v81 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28105B910 != -1)
  {
    swift_once();
  }

  v17 = off_28105B918;
  v18 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
  v19 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((off_28105B918 + v19));
  (*(v13 + 16))(v16, &v17[v18], v12);
  os_unfair_lock_unlock(&v17[v19]);
  v20 = sub_225CCD934();
  v21 = sub_225CCED04();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&dword_2259A7000, v20, v21, "AppleIDVManager prepareUnboundACLForWatch", v22, 2u);
    MEMORY[0x22AA6F950](v22, -1, -1);
  }

  (*(v13 + 8))(v16, v12);
  if (qword_27D73A6F8 != -1)
  {
    swift_once();
  }

  v23 = __swift_project_value_buffer(v5, qword_27D741748);
  sub_2259CB588(v23, v8);
  DIPSignpost.init(_:)(v8, v85);
  v24 = objc_opt_self();
  v86 = 0;
  v25 = [v24 prepareUnboundACLForWatch:&v86 withAccessibilityEnabled:a1 & 1];
  v26 = v86;
  if (v25)
  {
    v27 = v25;
    v86 = 0;
    v87 = 0xE000000000000000;
    v83 = v26;
    sub_225CCF204();
    MEMORY[0x22AA6CE70](0xD00000000000003ELL, 0x8000000225D0CE90);
    if (a1)
    {
      v28 = 1702195828;
    }

    else
    {
      v28 = 0x65736C6166;
    }

    if (a1)
    {
      v29 = 0xE400000000000000;
    }

    else
    {
      v29 = 0xE500000000000000;
    }

    if (a1)
    {
      LODWORD(v30) = 323;
    }

    else
    {
      LODWORD(v30) = 322;
    }

    MEMORY[0x22AA6CE70](v28, v29);

    v31 = v86;
    v32 = v87;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AA10);
    inited = swift_initStackObject();
    *(inited + 32) = 20;
    v34 = inited + 32;
    v35 = MEMORY[0x277D84CC0];
    *(inited + 16) = xmmword_225CD30F0;
    v36 = MEMORY[0x277D84D18];
    *(inited + 64) = v35;
    *(inited + 72) = v36;
    *(inited + 40) = v27;
    v37 = sub_225B2C374(inited);
    swift_setDeallocating();
    sub_2259CB640(v34, &qword_27D73B060);
    v82 = 0x8000000225D0CD70;
    v81 = 0x8000000225D0CED0;
    sub_2259CB5EC();
    swift_allocError();
    v39 = v38;
    v40 = sub_225CCE954();
    v41 = *(v40 - 8);
    v42 = v84;
    (*(v41 + 56))(v84, 1, 1, v40);
    LODWORD(v40) = (*(v41 + 48))(v42, 1, v40);
    sub_2259CB640(v42, &unk_27D73B050);
    if (v40)
    {
      v30 = v30;
    }

    else
    {
      v30 = 23;
    }

    v43 = MEMORY[0x277D84F90];
    v44 = sub_225B2C374(MEMORY[0x277D84F90]);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v86 = v44;
    sub_225B2C4A0(v37, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v86);

    v46 = v86;
    v47 = sub_225B29AA0(0, 1, 1, v43);
    v49 = *(v47 + 2);
    v48 = *(v47 + 3);
    if (v49 >= v48 >> 1)
    {
      v47 = sub_225B29AA0((v48 > 1), v49 + 1, 1, v47);
    }

    *(v47 + 2) = v49 + 1;
    v50 = &v47[56 * v49];
    *(v50 + 4) = v31;
    *(v50 + 5) = v32;
    v51 = v82;
    *(v50 + 6) = 0xD000000000000023;
    *(v50 + 7) = v51;
    v52 = v81;
    *(v50 + 8) = 0xD000000000000034;
    *(v50 + 9) = v52;
    *(v50 + 10) = 399;
    *v39 = v30;
    *(v39 + 8) = v47;
    *(v39 + 16) = v31;
    *(v39 + 24) = v32;
    *(v39 + 32) = v46;
    *(v39 + 40) = 0;
    swift_willThrow();
  }

  else
  {
    if (v86)
    {
      v54 = v86;
      v30 = sub_225CCCFA4();

      v55 = v85;
      DIPSignpost.end(workflowID:isBackground:)(0, 2);
      sub_2259CB6A0(v55);
      return v30;
    }

    v86 = 0;
    v87 = 0xE000000000000000;
    sub_225CCF204();
    MEMORY[0x22AA6CE70](0xD00000000000005CLL, 0x8000000225D0CF10);
    if (a1)
    {
      v57 = 1702195828;
    }

    else
    {
      v57 = 0x65736C6166;
    }

    if (a1)
    {
      v58 = 0xE400000000000000;
    }

    else
    {
      v58 = 0xE500000000000000;
    }

    if (a1)
    {
      LODWORD(v30) = 323;
    }

    else
    {
      LODWORD(v30) = 322;
    }

    MEMORY[0x22AA6CE70](v57, v58);

    v59 = v86;
    v60 = v87;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AA10);
    v61 = swift_initStackObject();
    *(v61 + 32) = 20;
    v62 = v61 + 32;
    v63 = MEMORY[0x277D84CC0];
    *(v61 + 16) = xmmword_225CD30F0;
    v64 = MEMORY[0x277D84D18];
    *(v61 + 64) = v63;
    *(v61 + 72) = v64;
    *(v61 + 40) = 0;
    v65 = sub_225B2C374(v61);
    swift_setDeallocating();
    sub_2259CB640(v62, &qword_27D73B060);
    v83 = 0x8000000225D0CD70;
    v82 = 0x8000000225D0CED0;
    sub_2259CB5EC();
    swift_allocError();
    v67 = v66;
    v68 = sub_225CCE954();
    v69 = *(v68 - 8);
    v70 = v84;
    (*(v69 + 56))(v84, 1, 1, v68);
    LODWORD(v68) = (*(v69 + 48))(v70, 1, v68);
    sub_2259CB640(v70, &unk_27D73B050);
    if (v68)
    {
      v30 = v30;
    }

    else
    {
      v30 = 23;
    }

    v71 = MEMORY[0x277D84F90];
    v72 = sub_225B2C374(MEMORY[0x277D84F90]);
    v73 = swift_isUniquelyReferenced_nonNull_native();
    v86 = v72;
    sub_225B2C4A0(v65, sub_225B2AC40, 0, v73, &v86);

    v74 = v86;
    v75 = sub_225B29AA0(0, 1, 1, v71);
    v77 = *(v75 + 2);
    v76 = *(v75 + 3);
    if (v77 >= v76 >> 1)
    {
      v75 = sub_225B29AA0((v76 > 1), v77 + 1, 1, v75);
    }

    *(v75 + 2) = v77 + 1;
    v78 = &v75[56 * v77];
    *(v78 + 4) = v59;
    *(v78 + 5) = v60;
    v79 = v83;
    *(v78 + 6) = 0xD000000000000023;
    *(v78 + 7) = v79;
    v80 = v82;
    *(v78 + 8) = 0xD000000000000034;
    *(v78 + 9) = v80;
    *(v78 + 10) = 402;
    *v67 = v30;
    *(v67 + 8) = v75;
    *(v67 + 16) = v59;
    *(v67 + 24) = v60;
    *(v67 + 32) = v74;
    *(v67 + 40) = 0;
    swift_willThrow();
  }

  v53 = v85;
  DIPSignpost.end(workflowID:isBackground:)(0, 2);
  sub_2259CB6A0(v53);
  return v30;
}

uint64_t sub_2259C940C(int a1, int a2, uint64_t a3, unint64_t a4)
{
  LODWORD(v147) = a2;
  LODWORD(v146) = a1;
  v150 = *MEMORY[0x277D85DE8];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v141 = &v131 - v8;
  v144 = type metadata accessor for DIPSignpost.Config(0);
  MEMORY[0x28223BE20](v144, v9);
  v143 = &v131 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DIPSignpost(0);
  MEMORY[0x28223BE20](v11 - 8, v12);
  v14 = &v131 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_225CCD954();
  v16 = *(v15 - 8);
  v18 = MEMORY[0x28223BE20](v15, v17);
  v136 = &v131 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18, v20);
  v22 = &v131 - v21;
  if (qword_28105B910 != -1)
  {
    swift_once();
  }

  v23 = off_28105B918;
  v24 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
  v25 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((off_28105B918 + v25));
  v26 = *(v16 + 16);
  v134 = v24;
  v133 = v16 + 16;
  v132 = v26;
  v26(v22, &v23[v24], v15);
  v135 = v25;
  os_unfair_lock_unlock(&v23[v25]);
  sub_2259CB6FC(a3, a4);
  v27 = sub_225CCD934();
  v28 = sub_225CCED04();
  v139 = a3;
  v29 = a3;
  v30 = v28;
  sub_2259B97A8(v29, a4);
  v31 = os_log_type_enabled(v27, v30);
  v140 = a4;
  v32 = a4 >> 60;
  v138 = v15;
  v145 = v14;
  v137 = v16;
  v142 = v32;
  if (!v31)
  {

    v36 = *(v16 + 8);
    v36(v22, v15);
    goto LABEL_31;
  }

  v33 = swift_slowAlloc();
  v34 = swift_slowAlloc();
  v148 = v34;
  *v33 = 136446722;
  if (v146 > 1)
  {
    if (v146 != 2)
    {
      if (v146 == 3)
      {
        v35 = "Watch Accessibility";
        goto LABEL_12;
      }

LABEL_13:
      v37 = 0xE700000000000000;
      v38 = 0x6E776F6E6B6E55;
      goto LABEL_17;
    }

    v39 = 0x206863746157;
LABEL_16:
    v38 = v39 & 0xFFFFFFFFFFFFLL | 0x6942000000000000;
    v37 = 0xEE00797274656D6FLL;
    goto LABEL_17;
  }

  if (!v146)
  {
    v39 = 0x20656E6F6850;
    goto LABEL_16;
  }

  if (v146 != 1)
  {
    goto LABEL_13;
  }

  v35 = "Phone Accessibility";
LABEL_12:
  v37 = (v35 - 32) | 0x8000000000000000;
  v38 = 0xD000000000000013;
LABEL_17:
  v40 = sub_2259BE198(v38, v37, &v148);

  *(v33 + 4) = v40;
  *(v33 + 12) = 2082;
  v41 = 0x8000000225D0CCD0;
  v42 = 0xD000000000000015;
  v43 = 0xE700000000000000;
  v44 = 0x6E776F6E6B6E55;
  if (v147 == 1)
  {
    v44 = 0xD000000000000013;
    v43 = 0x8000000225D0CCF0;
  }

  if (v147 != 2)
  {
    v42 = v44;
    v41 = v43;
  }

  if (v147)
  {
    v45 = v42;
  }

  else
  {
    v45 = 0x6D746E6573657250;
  }

  if (v147)
  {
    v46 = v41;
  }

  else
  {
    v46 = 0xEB00000000746E65;
  }

  v47 = sub_2259BE198(v45, v46, &v148);

  *(v33 + 14) = v47;
  *(v33 + 22) = 2080;
  if (v32 <= 0xE)
  {
    v49 = sub_225CCCEE4();
    v48 = v50;
  }

  else
  {
    v48 = 0xE500000000000000;
    v49 = 0x3E6C696E3CLL;
  }

  v51 = sub_2259BE198(v49, v48, &v148);

  *(v33 + 24) = v51;
  _os_log_impl(&dword_2259A7000, v27, v30, "AppleIDVManager prepareACL, type: %{public}s, usage: %{public}s, bioUUID: %s", v33, 0x20u);
  swift_arrayDestroy();
  MEMORY[0x22AA6F950](v34, -1, -1);
  MEMORY[0x22AA6F950](v33, -1, -1);

  v36 = *(v137 + 8);
  v36(v22, v138);
  v14 = v145;
LABEL_31:
  v52 = v147;
  v53 = v146;
  if (qword_27D73A700 != -1)
  {
    swift_once();
  }

  v54 = __swift_project_value_buffer(v144, qword_27D741760);
  v55 = v143;
  sub_2259CB588(v54, v143);
  DIPSignpost.init(_:)(v55, v14);
  if (v142 <= 0xE)
  {
    v56 = sub_225CCCF74();
  }

  else
  {
    v56 = 0;
  }

  v57 = objc_opt_self();
  v148 = 0;
  v58 = [v57 prepareACL:&v148 aclType:v53 forAclUsage:v52 forBioUUID:v56];

  v59 = v148;
  if (v58)
  {
    v148 = 0;
    v149 = 0xE000000000000000;
    v60 = v59;
    sub_225CCF204();

    v148 = 0xD00000000000001DLL;
    v149 = 0x8000000225D0CDD0;
    v147 = v60;
    if (v53 > 1)
    {
      if (v53 == 2)
      {
        v70 = 0x6942206863746157;
        v69 = 0xEE00797274656D6FLL;
        goto LABEL_54;
      }

      if (v53 == 3)
      {
        v61 = "Watch Accessibility";
        goto LABEL_46;
      }
    }

    else
    {
      if (!v53)
      {
        v69 = 0xEE00797274656D6FLL;
        v70 = 0x694220656E6F6850;
        goto LABEL_54;
      }

      if (v53 == 1)
      {
        v61 = "Phone Accessibility";
LABEL_46:
        v69 = (v61 - 32) | 0x8000000000000000;
        v70 = 0xD000000000000013;
LABEL_54:
        MEMORY[0x22AA6CE70](v70, v69);

        MEMORY[0x22AA6CE70](0x3A6567617375202CLL, 0xE900000000000020);
        v72 = 0x8000000225D0CCD0;
        v73 = 0xD000000000000015;
        v74 = 0xE700000000000000;
        v75 = 0x6E776F6E6B6E55;
        if (v52 == 1)
        {
          v75 = 0xD000000000000013;
          v74 = 0x8000000225D0CCF0;
        }

        if (v52 != 2)
        {
          v73 = v75;
          v72 = v74;
        }

        if (v52)
        {
          v76 = v73;
        }

        else
        {
          v76 = 0x6D746E6573657250;
        }

        if (v52)
        {
          v77 = v72;
        }

        else
        {
          v77 = 0xEB00000000746E65;
        }

        MEMORY[0x22AA6CE70](v76, v77);

        v79 = v148;
        v78 = v149;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AA10);
        inited = swift_initStackObject();
        *(inited + 32) = 20;
        v81 = inited + 32;
        v82 = MEMORY[0x277D84CC0];
        *(inited + 16) = xmmword_225CD30F0;
        v83 = MEMORY[0x277D84D18];
        *(inited + 64) = v82;
        *(inited + 72) = v83;
        *(inited + 40) = v58;
        v84 = sub_225B2C374(inited);
        swift_setDeallocating();
        sub_2259CB640(v81, &qword_27D73B060);
        v146 = 0x8000000225D0CD70;
        v68 = 0x8000000225D0CDF0;
        sub_2259CB5EC();
        swift_allocError();
        v86 = v85;
        v87 = sub_225CCE954();
        v88 = *(v87 - 8);
        v89 = v141;
        (*(v88 + 56))(v141, 1, 1, v87);
        LODWORD(v87) = (*(v88 + 48))(v89, 1, v87);
        sub_2259CB640(v89, &unk_27D73B050);
        if (v87)
        {
          v90 = 325;
        }

        else
        {
          v90 = 23;
        }

        v91 = MEMORY[0x277D84F90];
        v92 = sub_225B2C374(MEMORY[0x277D84F90]);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v148 = v92;
        sub_225B2C4A0(v84, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v148);

        v94 = v148;
        v95 = sub_225B29AA0(0, 1, 1, v91);
        v97 = *(v95 + 2);
        v96 = *(v95 + 3);
        if (v97 >= v96 >> 1)
        {
          v95 = sub_225B29AA0((v96 > 1), v97 + 1, 1, v95);
        }

        *(v95 + 2) = v97 + 1;
        v98 = &v95[56 * v97];
        *(v98 + 4) = v79;
        *(v98 + 5) = v78;
        v99 = v146;
        *(v98 + 6) = 0xD000000000000023;
        *(v98 + 7) = v99;
        *(v98 + 8) = 0xD000000000000025;
        *(v98 + 9) = 0x8000000225D0CDF0;
        *(v98 + 10) = 419;
        *v86 = v90;
        *(v86 + 8) = v95;
        *(v86 + 16) = v79;
        *(v86 + 24) = v78;
        *(v86 + 32) = v94;
        *(v86 + 40) = 0;
        swift_willThrow();

LABEL_70:
        v100 = v145;
        DIPSignpost.end(workflowID:isBackground:)(0, 2);
        sub_2259CB6A0(v100);
        return v68;
      }
    }

    v69 = 0xE700000000000000;
    v70 = 0x6E776F6E6B6E55;
    goto LABEL_54;
  }

  if (!v148)
  {
    v148 = 0;
    v149 = 0xE000000000000000;
    sub_225CCF204();
    MEMORY[0x22AA6CE70](0xD000000000000012, 0x8000000225D0CE20);
    if (v53 > 1)
    {
      if (v53 == 2)
      {
        v103 = 0x6942206863746157;
        v102 = 0xEE00797274656D6FLL;
        goto LABEL_79;
      }

      if (v53 == 3)
      {
        v71 = "Watch Accessibility";
        goto LABEL_75;
      }
    }

    else
    {
      if (!v53)
      {
        v102 = 0xEE00797274656D6FLL;
        v103 = 0x694220656E6F6850;
        goto LABEL_79;
      }

      if (v53 == 1)
      {
        v71 = "Phone Accessibility";
LABEL_75:
        v102 = (v71 - 32) | 0x8000000000000000;
        v103 = 0xD000000000000013;
LABEL_79:
        MEMORY[0x22AA6CE70](v103, v102);

        MEMORY[0x22AA6CE70](0x3A6567617375202CLL, 0xE900000000000020);
        v104 = 0x8000000225D0CCD0;
        v105 = 0xD000000000000015;
        v106 = 0xE700000000000000;
        v107 = 0x6E776F6E6B6E55;
        if (v52 == 1)
        {
          v107 = 0xD000000000000013;
          v106 = 0x8000000225D0CCF0;
        }

        if (v52 != 2)
        {
          v105 = v107;
          v104 = v106;
        }

        if (v52)
        {
          v108 = v105;
        }

        else
        {
          v108 = 0x6D746E6573657250;
        }

        if (v52)
        {
          v109 = v104;
        }

        else
        {
          v109 = 0xEB00000000746E65;
        }

        MEMORY[0x22AA6CE70](v108, v109);

        MEMORY[0x22AA6CE70](0xD000000000000029, 0x8000000225D0CE40);
        v110 = v148;
        v68 = v149;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AA10);
        v111 = swift_initStackObject();
        *(v111 + 32) = 20;
        v112 = v111 + 32;
        v113 = MEMORY[0x277D84CC0];
        *(v111 + 16) = xmmword_225CD30F0;
        v114 = MEMORY[0x277D84D18];
        *(v111 + 64) = v113;
        *(v111 + 72) = v114;
        *(v111 + 40) = 0;
        v115 = sub_225B2C374(v111);
        swift_setDeallocating();
        sub_2259CB640(v112, &qword_27D73B060);
        v147 = 0x8000000225D0CD70;
        sub_2259CB5EC();
        swift_allocError();
        v117 = v116;
        v118 = sub_225CCE954();
        v119 = *(v118 - 8);
        v120 = v141;
        (*(v119 + 56))(v141, 1, 1, v118);
        LODWORD(v118) = (*(v119 + 48))(v120, 1, v118);
        sub_2259CB640(v120, &unk_27D73B050);
        if (v118)
        {
          v121 = 325;
        }

        else
        {
          v121 = 23;
        }

        v122 = MEMORY[0x277D84F90];
        v123 = sub_225B2C374(MEMORY[0x277D84F90]);
        v124 = swift_isUniquelyReferenced_nonNull_native();
        v148 = v123;
        sub_225B2C4A0(v115, sub_225B2AC40, 0, v124, &v148);

        v125 = v148;
        v126 = sub_225B29AA0(0, 1, 1, v122);
        v128 = *(v126 + 2);
        v127 = *(v126 + 3);
        if (v128 >= v127 >> 1)
        {
          v126 = sub_225B29AA0((v127 > 1), v128 + 1, 1, v126);
        }

        *(v126 + 2) = v128 + 1;
        v129 = &v126[56 * v128];
        *(v129 + 4) = v110;
        *(v129 + 5) = v68;
        v130 = v147;
        *(v129 + 6) = 0xD000000000000023;
        *(v129 + 7) = v130;
        *(v129 + 8) = 0xD000000000000025;
        *(v129 + 9) = 0x8000000225D0CDF0;
        *(v129 + 10) = 424;
        *v117 = v121;
        *(v117 + 8) = v126;
        *(v117 + 16) = v110;
        *(v117 + 24) = v68;
        *(v117 + 32) = v125;
        *(v117 + 40) = 0;
        swift_willThrow();
        goto LABEL_70;
      }
    }

    v102 = 0xE700000000000000;
    v103 = 0x6E776F6E6B6E55;
    goto LABEL_79;
  }

  v62 = v148;
  v63 = v135;
  os_unfair_lock_lock(&v23[v135]);
  v64 = v136;
  v65 = v138;
  v132(v136, &v23[v134], v138);
  os_unfair_lock_unlock(&v23[v63]);
  v66 = v62;
  sub_225B409D4();

  v36(v64, v65);
  v67 = v66;
  v68 = sub_225CCCFA4();

  DIPSignpost.end(workflowID:isBackground:)(0, 2);
  sub_2259CB6A0(v14);
  return v68;
}

uint64_t sub_2259CA420()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050);
  MEMORY[0x28223BE20](v0 - 8, v1);
  v58 = &v55 - v2;
  v59 = type metadata accessor for DIPSignpost.Config(0);
  MEMORY[0x28223BE20](v59, v3);
  v5 = &v55 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DIPSignpost(0);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v61 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_225CCD954();
  v10 = *(v9 - 8);
  v12 = MEMORY[0x28223BE20](v9, v11);
  v57 = &v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v14);
  v16 = &v55 - v15;
  if (qword_28105B910 != -1)
  {
    swift_once();
  }

  v17 = off_28105B918;
  v18 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
  v19 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((off_28105B918 + v19));
  v55 = *(v10 + 16);
  v56 = v18;
  v60 = v9;
  v55(v16, &v17[v18], v9);
  os_unfair_lock_unlock(&v17[v19]);
  v20 = sub_225CCD934();
  v21 = sub_225CCED04();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&dword_2259A7000, v20, v21, "AppleIDVManager credentialAuthenticationTokenStatus", v22, 2u);
    MEMORY[0x22AA6F950](v22, -1, -1);
  }

  v23 = *(v10 + 8);
  v24 = v60;
  v23(v16, v60);
  if (qword_27D73A708 != -1)
  {
    swift_once();
  }

  v25 = __swift_project_value_buffer(v59, qword_27D741778);
  sub_2259CB588(v25, v5);
  DIPSignpost.init(_:)(v5, v61);
  v26 = [objc_opt_self() appleIDVCredentialAuthenticationTokenStatus];
  if (v26)
  {
    v27 = v26;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AA10);
    inited = swift_initStackObject();
    *(inited + 32) = 20;
    v29 = inited + 32;
    v30 = MEMORY[0x277D84CC0];
    *(inited + 16) = xmmword_225CD30F0;
    v31 = MEMORY[0x277D84D18];
    *(inited + 64) = v30;
    *(inited + 72) = v31;
    *(inited + 40) = v27;
    v32 = sub_225B2C374(inited);
    swift_setDeallocating();
    sub_2259CB640(v29, &qword_27D73B060);
    sub_2259CB5EC();
    swift_allocError();
    v34 = v33;
    v35 = sub_225CCE954();
    v36 = *(v35 - 8);
    v37 = v58;
    (*(v36 + 56))(v58, 1, 1, v35);
    LODWORD(v35) = (*(v36 + 48))(v37, 1, v35);
    sub_2259CB640(v37, &unk_27D73B050);
    if (v35)
    {
      v38 = 326;
    }

    else
    {
      v38 = 23;
    }

    v39 = MEMORY[0x277D84F90];
    v40 = sub_225B2C374(MEMORY[0x277D84F90]);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v62 = v40;
    sub_225B2C4A0(v32, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v62);

    v42 = v62;
    v43 = sub_225B29AA0(0, 1, 1, v39);
    v45 = *(v43 + 2);
    v44 = *(v43 + 3);
    if (v45 >= v44 >> 1)
    {
      v43 = sub_225B29AA0((v44 > 1), v45 + 1, 1, v43);
    }

    *(v43 + 2) = v45 + 1;
    v46 = &v43[56 * v45];
    *(v46 + 4) = 0xD00000000000002ELL;
    *(v46 + 5) = 0x8000000225D0CD40;
    *(v46 + 6) = 0xD000000000000023;
    *(v46 + 7) = 0x8000000225D0CD70;
    *(v46 + 8) = 0xD000000000000025;
    *(v46 + 9) = 0x8000000225D0CDA0;
    *(v46 + 10) = 447;
    *v34 = v38;
    *(v34 + 8) = v43;
    *(v34 + 16) = 0xD00000000000002ELL;
    *(v34 + 24) = 0x8000000225D0CD40;
    *(v34 + 32) = v42;
    *(v34 + 40) = 0;
    swift_willThrow();
    v47 = v61;
    DIPSignpost.end(workflowID:isBackground:)(0, 2);
    return sub_2259CB6A0(v47);
  }

  else
  {
    os_unfair_lock_lock(&v17[v19]);
    v49 = v57;
    v55(v57, &v17[v56], v24);
    os_unfair_lock_unlock(&v17[v19]);
    v50 = sub_225CCD934();
    v51 = sub_225CCED04();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      *v52 = 0;
      _os_log_impl(&dword_2259A7000, v50, v51, "AppleIDVManager credentialAuthenticationTokenStatus returned successfully", v52, 2u);
      v53 = v52;
      v24 = v60;
      MEMORY[0x22AA6F950](v53, -1, -1);
    }

    v23(v49, v24);
    v54 = v61;
    DIPSignpost.end(workflowID:isBackground:)(0, 2);
    return sub_2259CB6A0(v54);
  }
}
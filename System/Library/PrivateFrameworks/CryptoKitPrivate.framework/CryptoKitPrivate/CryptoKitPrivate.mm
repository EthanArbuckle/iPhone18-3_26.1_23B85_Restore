uint64_t sub_1C0CEA630(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *__swift_store_extra_inhabitant_indexTm(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE6DCB8, &unk_1C0D7D9E0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_indexTm(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE6DCB8, &unk_1C0D7D9E0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

void sub_1C0CEA810()
{
  sub_1C0CEA8E0(319, &qword_1ED907EB8, MEMORY[0x1E69E7508], MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_1C0D5116C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1C0CEA8E0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1C0CEA930()
{
  sub_1C0D786AC();
  if (v0 <= 0x3F)
  {
    sub_1C0CEA8E0(319, &qword_1ED907EB0, MEMORY[0x1E6969080], MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1C0CEAA20(uint64_t a1, int a2)
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

uint64_t sub_1C0CEAA40(uint64_t result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for SecureBytes.BackingHeader(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for SecureBytes.BackingHeader(uint64_t result, int a2, int a3)
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

uint64_t sub_1C0CEAACC()
{
  v1 = *v0;
  swift_beginAccess();
  return *(v1 + 16);
}

void *sub_1C0CEAB40@<X0>(void *result@<X0>, void *a2@<X8>)
{
  if (!result)
  {
    __break(1u);
    JUMPOUT(0x1C0CEAB54);
  }

  *a2 = *result;
  return result;
}

id sub_1C0CEABF4(uint64_t a1, id a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E69E9840];

  return sub_1C0D0DE9C(a1, a2);
}

id sub_1C0CEAC4C(void *a1, uint64_t a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E69E9840];

  return sub_1C0D0DFC0(a1, a2);
}

uint64_t sub_1C0CEACA4()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1C0CEACDC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1C0CF448C(a1, a2);
  }

  return a1;
}

id sub_1C0CEACF0(void *a1, uint64_t a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E69E9840];

  return sub_1C0D23BD0(a1, a2);
}

id sub_1C0CEAD48(void *a1, uint64_t a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E69E9840];

  return sub_1C0D2BFF8(a1, a2);
}

uint64_t sub_1C0CEAE38(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 12)
  {
    v4 = *(a1 + 16) >> 60;
    if (((4 * v4) & 0xC) != 0)
    {
      return 16 - ((4 * v4) & 0xC | (v4 >> 2));
    }

    else
    {
      return 0;
    }
  }

  v8 = sub_1C0D783EC();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[6];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE6D9C8, &qword_1C0D7CAF0);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[7];
    goto LABEL_9;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE6D9D0, &qword_1C0D7CAF8);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[8];

  return v15(v16, a2, v14);
}

uint64_t sub_1C0CEAFC8(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 12)
  {
    *(result + 8) = 0;
    *(result + 16) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    return result;
  }

  v8 = sub_1C0D783EC();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[6];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE6D9C8, &qword_1C0D7CAF0);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[7];
    goto LABEL_7;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE6D9D0, &qword_1C0D7CAF8);
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[8];

  return v15(v16, a2, a2, v14);
}

uint64_t sub_1C0CEB154(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 17);
    v5 = v4 >= 2;
    v6 = (v4 + 2147483646) & 0x7FFFFFFF;
    if (v5)
    {
      return (v6 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v10 = sub_1C0D783EC();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 48);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_1C0CEB200(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 17) = a2 + 1;
  }

  else
  {
    v7 = sub_1C0D783EC();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 48);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1C0CEB2A0(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1C0D783EC();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

void *sub_1C0CEB358(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 12)
  {
    *result = 0;
    result[1] = (((-a2 >> 2) & 3) - 4 * a2) << 60;
  }

  else
  {
    v7 = sub_1C0D783EC();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1C0CEB404(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 12)
  {
    v4 = *(a1 + 24) >> 60;
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
    v8 = sub_1C0D783EC();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1C0CEB4BC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 12)
  {
    *(result + 16) = 0;
    *(result + 24) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
  }

  else
  {
    v7 = sub_1C0D783EC();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1C0CEB584(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C0D786AC();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24) + 8) >> 60;
    v11 = ((4 * v10) & 0xC) == 0;
    v12 = ((4 * v10) & 0xC | (v10 >> 2)) ^ 0xF;
    if (v11)
    {
      return 0;
    }

    else
    {
      return v12;
    }
  }
}

uint64_t sub_1C0CEB64C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1C0D786AC();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    v11 = (a1 + *(a4 + 24));
    *v11 = 0;
    v11[1] = ((~a2 >> 2) & 3 | (4 * ~a2)) << 60;
  }

  return result;
}

uint64_t sub_1C0CEB72C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 12)
  {
    v4 = *(a1 + 16) >> 60;
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
    v8 = sub_1C0D783EC();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 40);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1C0CEB7E4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 12)
  {
    *(result + 8) = 0;
    *(result + 16) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
  }

  else
  {
    v7 = sub_1C0D783EC();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 40);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1C0CEB890()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1C0CEB8C8()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1C0CEB964(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1C0D786AC();
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
      v13 = sub_1C0D787CC();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 24);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_1C0CEBA88(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = sub_1C0D786AC();
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
      v13 = sub_1C0D787CC();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1C0CEBBAC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C0D7872C();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1C0CEBC18(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C0D7872C();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t ciphersuiteForKeyByteCount(uint64_t a1)
{
  v1 = MEMORY[0x1E69E95C0];
  v2 = MEMORY[0x1E69E95B8];
  if (a1 != 384)
  {
    v2 = 0;
  }

  if (a1 != 512)
  {
    v1 = v2;
  }

  if (a1 == 256)
  {
    return MEMORY[0x1E69E95B0];
  }

  else
  {
    return v1;
  }
}

double sub_1C0CEDF4C@<D0>(uint64_t a1@<X8>)
{
  *a1 = xmmword_1C0D7A9A0;
  *(a1 + 16) = xmmword_1C0D7A9B0;
  *&result = 32;
  *(a1 + 48) = 16;
  *(a1 + 56) = &unk_1F4034280;
  *(a1 + 64) = 0xD000000000000021;
  *(a1 + 72) = 0x80000001C0D7FDC0;
  *(a1 + 32) = xmmword_1C0D7A9C0;
  *(a1 + 80) = 0xD000000000000023;
  *(a1 + 88) = 0x80000001C0D7FDF0;
  return result;
}

uint64_t sub_1C0CEDFF4()
{
  sub_1C0D78FFC();
  MEMORY[0x1C68E3FF0](0);
  return sub_1C0D7902C();
}

uint64_t sub_1C0CEE038()
{
  sub_1C0D78FFC();
  MEMORY[0x1C68E3FF0](0);
  return sub_1C0D7902C();
}

unint64_t sub_1C0CEE07C()
{
  result = qword_1EBE6CCE0;
  if (!qword_1EBE6CCE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE6CCE0);
  }

  return result;
}

unint64_t sub_1C0CEE0D4()
{
  result = qword_1EBE6CCE8;
  if (!qword_1EBE6CCE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE6CCE8);
  }

  return result;
}

unint64_t sub_1C0CEE12C()
{
  result = qword_1EBE6CCF0;
  if (!qword_1EBE6CCF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE6CCF8, &qword_1C0D7AAA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE6CCF0);
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

__n128 __swift_memcpy96_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t sub_1C0CEE228(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 56);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C0CEE270(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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
      *(result + 56) = (a2 - 1);
      return result;
    }

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for HE(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for HE(_WORD *result, int a2, int a3)
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

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_1C0CEE3DC(uint64_t *a1, unsigned int a2)
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

uint64_t sub_1C0CEE438(uint64_t result, unsigned int a2, unsigned int a3)
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

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1C0CEE4BC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 56))
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

uint64_t sub_1C0CEE518(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1C0CEE5F4(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 40))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C0CEE614(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
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

  *(result + 40) = v3;
  return result;
}

uint64_t sub_1C0CEE6A4(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
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

uint64_t sub_1C0CEE700(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_1C0CEE764(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 56))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
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

uint64_t sub_1C0CEE7C0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

uint64_t sub_1C0CEE848()
{
  v1 = *v0;
  swift_getWitnessTable();
  return sub_1C0D783BC();
}

uint64_t sub_1C0CEE894()
{
  v1 = *v0;
  swift_getWitnessTable();
  return sub_1C0D783AC();
}

uint64_t sub_1C0CEE8EC()
{
  sub_1C0D78FFC();
  v1 = *v0;
  swift_getWitnessTable();
  sub_1C0D783AC();
  return sub_1C0D7902C();
}

uint64_t sub_1C0CEE954(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getWitnessTable();

  return sub_1C0D7839C();
}

uint64_t sub_1C0CEEA28(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CFString(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

__n128 __swift_memcpy16_16(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

void sub_1C0CEEAA0(uint64_t a1, unint64_t *a2)
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

uint64_t sub_1C0CEEB30(uint64_t a1)
{
  v2 = *(a1 + 16);
  v1 = *(a1 + 24);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = v4;
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  result = _s16ServerPrivateKeyVMa();
  if (v7 <= 0x3F)
  {
    result = _s15ServerPublicKeyVMa();
    if (v8 <= 0x3F)
    {
      result = type metadata accessor for ARC.Ciphersuite();
      if (v9 <= 0x3F)
      {
        if (v5 > 0x3F)
        {
          return AssociatedTypeWitness;
        }

        else
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t sub_1C0CEECC8(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v6 = *(a3 + 16);
  v5 = *(a3 + 24);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  v9 = *(v8 + 84);
  v10 = *(swift_checkMetadataState() - 8);
  v11 = *(v10 + 84);
  v13 = *(v10 + 80);
  v14 = *(v10 + 64);
  if (v11 <= v9)
  {
    v15 = v9;
  }

  else
  {
    v15 = *(v10 + 84);
  }

  if (v15 <= 0x7FFFFFFF)
  {
    v15 = 0x7FFFFFFF;
  }

  if (!a2)
  {
    return 0;
  }

  v12 = *(v8 + 80);
  v16 = ((*(v8 + 64) + v12 + ((*(v8 + 64) + v12 + ((*(v8 + 64) + v12) & ~v12)) & ~v12)) & ~v12) + *(v8 + 64) + v13;
  v17 = ((v14 + v13 + ((v14 + v13) & ~v13)) & ~v13) + v14 + 7;
  if (a2 <= v15)
  {
    goto LABEL_30;
  }

  v18 = ((v14 + v13 + ((v13 + ((v17 + (v16 & ~v13)) & 0xFFFFFFFFFFFFFFF8) + 40) & ~v13)) & ~v13) + v14;
  v19 = 8 * v18;
  if (v18 <= 3)
  {
    v22 = ((a2 - v15 + ~(-1 << v19)) >> v19) + 1;
    if (HIWORD(v22))
    {
      v20 = *(a1 + v18);
      if (!v20)
      {
        goto LABEL_30;
      }

      goto LABEL_17;
    }

    if (v22 > 0xFF)
    {
      v20 = *(a1 + v18);
      if (!*(a1 + v18))
      {
        goto LABEL_30;
      }

      goto LABEL_17;
    }

    if (v22 < 2)
    {
LABEL_30:
      if (v9 == v15)
      {
        v26 = *(v8 + 48);

        return v26(a1, v9, AssociatedTypeWitness);
      }

      else
      {
        v27 = (a1 + v16) & ~v13;
        if (v11 == v15)
        {
          v28 = *(v10 + 48);

          return v28(v27);
        }

        else
        {
          v29 = *(((v17 + v27) & 0xFFFFFFFFFFFFFFF8) + 16);
          if (v29 >= 0xFFFFFFFF)
          {
            LODWORD(v29) = -1;
          }

          return (v29 + 1);
        }
      }
    }
  }

  v20 = *(a1 + v18);
  if (!*(a1 + v18))
  {
    goto LABEL_30;
  }

LABEL_17:
  v23 = (v20 - 1) << v19;
  if (v18 > 3)
  {
    v23 = 0;
  }

  if (v18)
  {
    if (v18 <= 3)
    {
      v24 = v18;
    }

    else
    {
      v24 = 4;
    }

    if (v24 > 2)
    {
      if (v24 == 3)
      {
        v25 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v25 = *a1;
      }
    }

    else if (v24 == 1)
    {
      v25 = *a1;
    }

    else
    {
      v25 = *a1;
    }
  }

  else
  {
    v25 = 0;
  }

  return v15 + (v25 | v23) + 1;
}

double sub_1C0CEF074(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(a4 + 16);
  v7 = *(a4 + 24);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  v11 = *(v10 + 84);
  v12 = *(swift_checkMetadataState() - 8);
  v14 = *(v12 + 84);
  v16 = *(v12 + 80);
  v17 = *(v12 + 64);
  if (v14 <= v11)
  {
    v18 = v11;
  }

  else
  {
    v18 = *(v12 + 84);
  }

  if (v18 <= 0x7FFFFFFF)
  {
    v18 = 0x7FFFFFFF;
  }

  v15 = *(v10 + 80);
  v19 = ((*(v10 + 64) + v15 + ((*(v10 + 64) + v15 + ((*(v10 + 64) + v15) & ~v15)) & ~v15)) & ~v15) + *(v10 + 64) + v16;
  v20 = ((v17 + v16 + ((v17 + v16) & ~v16)) & ~v16) + v17 + 7;
  v21 = ((v17 + v16 + ((v16 + ((v20 + (v19 & ~v16)) & 0xFFFFFFFFFFFFFFF8) + 40) & ~v16)) & ~v16) + v17;
  if (a3 <= v18)
  {
    v22 = 0;
  }

  else if (v21 <= 3)
  {
    v25 = ((a3 - v18 + ~(-1 << (8 * v21))) >> (8 * v21)) + 1;
    if (HIWORD(v25))
    {
      v22 = 4;
    }

    else
    {
      if (v25 < 0x100)
      {
        v26 = 1;
      }

      else
      {
        v26 = 2;
      }

      if (v25 >= 2)
      {
        v22 = v26;
      }

      else
      {
        v22 = 0;
      }
    }
  }

  else
  {
    v22 = 1;
  }

  if (v18 < a2)
  {
    v23 = ~v18 + a2;
    if (v21 < 4)
    {
      v24 = (v23 >> (8 * v21)) + 1;
      if (v21)
      {
        v27 = v23 & ~(-1 << (8 * v21));
        bzero(a1, v21);
        if (v21 != 3)
        {
          if (v21 == 2)
          {
            *a1 = v27;
            if (v22 > 1)
            {
LABEL_51:
              if (v22 == 2)
              {
                *&a1[v21] = v24;
              }

              else
              {
                *&a1[v21] = v24;
              }

              return result;
            }
          }

          else
          {
            *a1 = v23;
            if (v22 > 1)
            {
              goto LABEL_51;
            }
          }

          goto LABEL_48;
        }

        *a1 = v27;
        a1[2] = BYTE2(v27);
      }

      if (v22 > 1)
      {
        goto LABEL_51;
      }
    }

    else
    {
      bzero(a1, v21);
      *a1 = v23;
      v24 = 1;
      if (v22 > 1)
      {
        goto LABEL_51;
      }
    }

LABEL_48:
    if (v22)
    {
      a1[v21] = v24;
    }

    return result;
  }

  if (v22 > 1)
  {
    if (v22 != 2)
    {
      *&a1[v21] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_33;
    }

    *&a1[v21] = 0;
LABEL_32:
    if (!a2)
    {
      return result;
    }

    goto LABEL_33;
  }

  if (!v22)
  {
    goto LABEL_32;
  }

  a1[v21] = 0;
  if (!a2)
  {
    return result;
  }

LABEL_33:
  if (v11 == v18)
  {
    v28 = *(v10 + 56);

    v28(a1, a2, v11, AssociatedTypeWitness);
  }

  else
  {
    v29 = &a1[v19] & ~v16;
    if (v14 == v18)
    {
      v30 = *(v12 + 56);

      v30(v29, a2);
    }

    else
    {
      v31 = (v20 + v29) & 0xFFFFFFFFFFFFFFF8;
      if ((a2 & 0x80000000) != 0)
      {
        result = 0.0;
        *(v31 + 8) = 0u;
        *(v31 + 24) = 0u;
        *v31 = a2 & 0x7FFFFFFF;
      }

      else
      {
        *(v31 + 16) = (a2 - 1);
      }
    }
  }

  return result;
}

uint64_t sub_1C0CEF500(uint64_t a1)
{
  v2 = *(a1 + 16);
  v1 = *(a1 + 24);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  result = swift_getAssociatedTypeWitness();
  if (v4 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1C0CEF5E4(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v6 = *(a3 + 16);
  v5 = *(a3 + 24);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  v9 = *(v8 + 84);
  if (!a2)
  {
    return 0;
  }

  if (a2 <= v9)
  {
LABEL_23:
    v15 = *(v8 + 48);

    return v15(a1);
  }

  v10 = ((*(*(AssociatedTypeWitness - 8) + 64) + *(v8 + 80) + ((*(*(AssociatedTypeWitness - 8) + 64) + *(v8 + 80)) & ~*(v8 + 80))) & ~*(v8 + 80)) + *(*(AssociatedTypeWitness - 8) + 64);
  v11 = 8 * v10;
  if (v10 <= 3)
  {
    v13 = ((a2 - v9 + ~(-1 << v11)) >> v11) + 1;
    if (HIWORD(v13))
    {
      v12 = *(a1 + v10);
      if (!v12)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v13 > 0xFF)
    {
      v12 = *(a1 + v10);
      if (!*(a1 + v10))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v13 < 2)
    {
LABEL_22:
      if (v9)
      {
        goto LABEL_23;
      }

      return 0;
    }
  }

  v12 = *(a1 + v10);
  if (!*(a1 + v10))
  {
    goto LABEL_22;
  }

LABEL_11:
  v14 = (v12 - 1) << v11;
  if (v10 > 3)
  {
    v14 = 0;
  }

  if (v10)
  {
    if (v10 > 3)
    {
      LODWORD(v10) = 4;
    }

    if (v10 > 2)
    {
      if (v10 == 3)
      {
        LODWORD(v10) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v10) = *a1;
      }
    }

    else if (v10 == 1)
    {
      LODWORD(v10) = *a1;
    }

    else
    {
      LODWORD(v10) = *a1;
    }
  }

  return v9 + (v10 | v14) + 1;
}

void sub_1C0CEF7F4(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(a4 + 16);
  v7 = *(a4 + 24);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v9 = *(swift_getAssociatedTypeWitness() - 8);
  v10 = *(v9 + 84);
  v11 = ((*(v9 + 64) + *(v9 + 80) + ((*(v9 + 64) + *(v9 + 80)) & ~*(v9 + 80))) & ~*(v9 + 80)) + *(v9 + 64);
  if (a3 <= v10)
  {
    v12 = 0;
  }

  else if (v11 <= 3)
  {
    v15 = ((a3 - v10 + ~(-1 << (8 * v11))) >> (8 * v11)) + 1;
    if (HIWORD(v15))
    {
      v12 = 4;
    }

    else
    {
      if (v15 < 0x100)
      {
        v16 = 1;
      }

      else
      {
        v16 = 2;
      }

      if (v15 >= 2)
      {
        v12 = v16;
      }

      else
      {
        v12 = 0;
      }
    }
  }

  else
  {
    v12 = 1;
  }

  if (v10 < a2)
  {
    v13 = ~v10 + a2;
    if (v11 < 4)
    {
      v14 = (v13 >> (8 * v11)) + 1;
      if (v11)
      {
        v17 = v13 & ~(-1 << (8 * v11));
        bzero(a1, v11);
        if (v11 != 3)
        {
          if (v11 == 2)
          {
            *a1 = v17;
            if (v12 > 1)
            {
LABEL_39:
              if (v12 == 2)
              {
                *&a1[v11] = v14;
              }

              else
              {
                *&a1[v11] = v14;
              }

              return;
            }
          }

          else
          {
            *a1 = v13;
            if (v12 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *a1 = v17;
        a1[2] = BYTE2(v17);
      }

      if (v12 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      bzero(a1, v11);
      *a1 = v13;
      v14 = 1;
      if (v12 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v12)
    {
      a1[v11] = v14;
    }

    return;
  }

  if (v12 > 1)
  {
    if (v12 != 2)
    {
      *&a1[v11] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_28;
    }

    *&a1[v11] = 0;
  }

  else if (v12)
  {
    a1[v11] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return;
  }

LABEL_28:
  v18 = *(v9 + 56);

  v18(a1, a2);
}

uint64_t sub_1C0CEFA98(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1C0CEFB0C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))();
  }

  v8 = *(v4 + 80);
  v6 = *(*(*(a3 + 16) - 8) + 64);
  v9 = ((v6 + v8 + ((v6 + v8 + ((v6 + v8) & ~v8)) & ~v8)) & ~v8) + v6;
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v12 = ((v7 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v12))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v12 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v12 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))();
      }

      return 0;
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_22;
  }

LABEL_11:
  v13 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v13 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return v5 + (v9 | v13) + 1;
}

char *sub_1C0CEFC6C(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = v5;
  v7 = *(v5 + 84);
  v8 = *(v5 + 80);
  v9 = ((*(v5 + 64) + v8 + ((*(v5 + 64) + v8 + ((*(v5 + 64) + v8) & ~v8)) & ~v8)) & ~v8) + *(v5 + 64);
  v10 = a3 >= v7;
  v11 = a3 - v7;
  if (v11 != 0 && v10)
  {
    if (v9 <= 3)
    {
      v16 = ((v11 + ~(-1 << (8 * v9))) >> (8 * v9)) + 1;
      if (HIWORD(v16))
      {
        v12 = 4;
      }

      else
      {
        if (v16 < 0x100)
        {
          v17 = 1;
        }

        else
        {
          v17 = 2;
        }

        if (v16 >= 2)
        {
          v12 = v17;
        }

        else
        {
          v12 = 0;
        }
      }
    }

    else
    {
      v12 = 1;
    }
  }

  else
  {
    v12 = 0;
  }

  if (v7 < a2)
  {
    v13 = ~v7 + a2;
    if (v9 < 4)
    {
      v15 = (v13 >> (8 * v9)) + 1;
      if (v9)
      {
        v18 = v13 & ~(-1 << (8 * v9));
        v19 = result;
        bzero(result, v9);
        result = v19;
        if (v9 != 3)
        {
          if (v9 == 2)
          {
            *v19 = v18;
            if (v12 > 1)
            {
LABEL_39:
              if (v12 == 2)
              {
                *&result[v9] = v15;
              }

              else
              {
                *&result[v9] = v15;
              }

              return result;
            }
          }

          else
          {
            *v19 = v13;
            if (v12 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *v19 = v18;
        v19[2] = BYTE2(v18);
      }

      if (v12 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v14 = result;
      bzero(result, v9);
      result = v14;
      *v14 = v13;
      v15 = 1;
      if (v12 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v12)
    {
      result[v9] = v15;
    }

    return result;
  }

  if (v12 > 1)
  {
    if (v12 != 2)
    {
      *&result[v9] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_28;
    }

    *&result[v9] = 0;
  }

  else if (v12)
  {
    result[v9] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return result;
  }

LABEL_28:
  v20 = *(v6 + 56);

  return v20();
}

uint64_t sub_1C0CEFEC4(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(a1 + 24);
  result = _s14descr1F4031E89V6ServerVMa();
  if (v4 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1C0CEFF34(unint64_t a1, unsigned int a2, uint64_t a3)
{
  v6 = *(a3 + 16);
  v5 = *(a3 + 24);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v7 = *(swift_getAssociatedTypeWitness() - 8);
  v8 = v7;
  v9 = *(v7 + 84);
  if (v9 <= 0xFE)
  {
    v10 = 254;
  }

  else
  {
    v10 = *(v7 + 84);
  }

  v11 = *(v7 + 80);
  v12 = *(v7 + 64);
  if (!a2)
  {
    return 0;
  }

  if (a2 > v10)
  {
    v13 = v12 + ((v11 + 16) & ~v11) + 1;
    v14 = 8 * v13;
    if (v13 > 3)
    {
      goto LABEL_7;
    }

    v16 = ((a2 - v10 + ~(-1 << v14)) >> v14) + 1;
    if (HIWORD(v16))
    {
      v15 = *(a1 + v13);
      if (!v15)
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v16 > 0xFF)
    {
      v15 = *(a1 + v13);
      if (!*(a1 + v13))
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v16 >= 2)
    {
LABEL_7:
      v15 = *(a1 + v13);
      if (!*(a1 + v13))
      {
        goto LABEL_27;
      }

LABEL_14:
      v17 = (v15 - 1) << v14;
      if (v13 > 3)
      {
        v17 = 0;
      }

      if (v13)
      {
        if (v13 <= 3)
        {
          v18 = v13;
        }

        else
        {
          v18 = 4;
        }

        if (v18 > 2)
        {
          if (v18 == 3)
          {
            v19 = *a1 | (*(a1 + 2) << 16);
          }

          else
          {
            v19 = *a1;
          }
        }

        else if (v18 == 1)
        {
          v19 = *a1;
        }

        else
        {
          v19 = *a1;
        }
      }

      else
      {
        v19 = 0;
      }

      v24 = v10 + (v19 | v17);
      return (v24 + 1);
    }
  }

LABEL_27:
  v20 = ((a1 & 0xFFFFFFFFFFFFFFF8) + v11 + 16) & ~v11;
  if (v9 < 0xFE)
  {
    v23 = *(v20 + v12);
    if (v23 < 2)
    {
      return 0;
    }

    v24 = (v23 + 2147483646) & 0x7FFFFFFF;
    return (v24 + 1);
  }

  v21 = *(v8 + 48);

  return v21(v20);
}

void sub_1C0CF01CC(unint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(a4 + 16);
  v7 = *(a4 + 24);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v9 = *(swift_getAssociatedTypeWitness() - 8);
  v10 = *(v9 + 84);
  v11 = *(v9 + 80);
  v12 = *(v9 + 64);
  if (v10 <= 0xFE)
  {
    v13 = 254;
  }

  else
  {
    v13 = *(v9 + 84);
  }

  v14 = v12 + ((v11 + 16) & ~v11) + 1;
  if (a3 <= v13)
  {
    v15 = 0;
  }

  else if (v14 <= 3)
  {
    v18 = ((a3 - v13 + ~(-1 << (8 * v14))) >> (8 * v14)) + 1;
    if (HIWORD(v18))
    {
      v15 = 4;
    }

    else
    {
      if (v18 < 0x100)
      {
        v19 = 1;
      }

      else
      {
        v19 = 2;
      }

      if (v18 >= 2)
      {
        v15 = v19;
      }

      else
      {
        v15 = 0;
      }
    }
  }

  else
  {
    v15 = 1;
  }

  if (v13 < a2)
  {
    v16 = ~v13 + a2;
    if (v14 < 4)
    {
      v17 = (v16 >> (8 * v14)) + 1;
      if (v12 + ((v11 + 16) & ~v11) != -1)
      {
        v20 = v16 & ~(-1 << (8 * v14));
        bzero(a1, v14);
        if (v14 != 3)
        {
          if (v14 == 2)
          {
            *a1 = v20;
            if (v15 > 1)
            {
LABEL_44:
              if (v15 == 2)
              {
                *(a1 + v14) = v17;
              }

              else
              {
                *(a1 + v14) = v17;
              }

              return;
            }
          }

          else
          {
            *a1 = v16;
            if (v15 > 1)
            {
              goto LABEL_44;
            }
          }

          goto LABEL_41;
        }

        *a1 = v20;
        *(a1 + 2) = BYTE2(v20);
      }

      if (v15 > 1)
      {
        goto LABEL_44;
      }
    }

    else
    {
      bzero(a1, v14);
      *a1 = v16;
      v17 = 1;
      if (v15 > 1)
      {
        goto LABEL_44;
      }
    }

LABEL_41:
    if (v15)
    {
      *(a1 + v14) = v17;
    }

    return;
  }

  if (v15 > 1)
  {
    if (v15 != 2)
    {
      *(a1 + v14) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *(a1 + v14) = 0;
  }

  else if (v15)
  {
    *(a1 + v14) = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  v21 = ((a1 & 0xFFFFFFFFFFFFFFF8) + v11 + 16) & ~v11;
  if (v10 < 0xFE)
  {
    *(v21 + v12) = a2 + 1;
  }

  else
  {
    v22 = *(v9 + 56);

    v22(v21, a2);
  }
}

uint64_t type metadata accessor for SecureBytes.Backing()
{
  result = qword_1ED907EA0;
  if (!qword_1ED907EA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C0CF0584()
{
  type metadata accessor for SecureBytes.Backing();
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = 0;
  off_1EBE6CBA0 = result;
  return result;
}

uint64_t sub_1C0CF05B8()
{
  type metadata accessor for SecureBytes.Backing();
  sub_1C0D7819C();
  return v1;
}

void *sub_1C0CF062C(void *result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  v6 = result;
  result = _swift_stdlib_malloc_size(result);
  if ((result - 4) < a3)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v7 = _swift_stdlib_malloc_size(v3) - 32;
  result = swift_beginAccess();
  v8 = v3[2];
  v9 = __OFSUB__(v7, v8);
  v10 = v7 - v8;
  if (v9)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v11 = a3 - a2;
  if (__OFSUB__(a3, a2))
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v9 = __OFSUB__(v10, v11);
  v12 = v10 - v11;
  if (v9)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if ((v12 & 0x8000000000000000) == 0)
  {
    swift_beginAccess();
    return sub_1C0CF3158((v6 + 4), v6 + v6[2] + 32, a2, a3, v3);
  }

LABEL_13:
  __break(1u);
  return result;
}

size_t sub_1C0CF0710(char a1)
{
  v3 = _swift_stdlib_malloc_size(v1) - 32;
  result = swift_beginAccess();
  v5 = v1[2];
  v6 = v3 - v5;
  if (__OFSUB__(v3, v5))
  {
    __break(1u);
    goto LABEL_8;
  }

  v7 = __OFSUB__(v6, 1);
  v8 = v6 - 1;
  if (v7)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if ((v8 & 0x8000000000000000) != 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  result = _swift_stdlib_malloc_size(v1);
  if ((result - 32) < v5)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  *(v1 + v5 + 32) = a1;
  v9 = v1[2];
  v10 = v9 + 1;
  if (!__OFADD__(v9, 1))
  {
    result = swift_beginAccess();
    v1[2] = v10;
    return result;
  }

LABEL_11:
  __break(1u);
  return result;
}

size_t sub_1C0CF07CC(const void *a1, size_t a2)
{
  v5 = _swift_stdlib_malloc_size(v2) - 32;
  result = swift_beginAccess();
  v7 = v2[2];
  v8 = v5 - v7;
  if (__OFSUB__(v5, v7))
  {
    __break(1u);
    goto LABEL_11;
  }

  v9 = __OFSUB__(v8, a2);
  v10 = v8 - a2;
  if (v9)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if ((v10 & 0x8000000000000000) != 0)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  result = _swift_stdlib_malloc_size(v2);
  if ((result - 32) < v7)
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (!a1)
  {
    goto LABEL_8;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    result = memmove(v2 + v7 + 32, a1, a2);
LABEL_8:
    v11 = v2[2];
    v9 = __OFADD__(v11, a2);
    v12 = v11 + a2;
    if (!v9)
    {
      result = swift_beginAccess();
      v2[2] = v12;
      return result;
    }

    goto LABEL_14;
  }

LABEL_15:
  __break(1u);
  return result;
}

size_t sub_1C0CF08AC()
{
  v1 = sub_1C0D78C8C();
  v2 = _swift_stdlib_malloc_size(v0) - 32;
  result = swift_beginAccess();
  v4 = v0[2];
  v5 = v2 - v4;
  if (__OFSUB__(v2, v4))
  {
    __break(1u);
    goto LABEL_8;
  }

  v6 = __OFSUB__(v5, v1);
  v7 = v5 - v1;
  if (v6)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if ((v7 & 0x8000000000000000) != 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  result = _swift_stdlib_malloc_size(v0);
  if ((result - 32) < v4)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  result = sub_1C0D78D5C();
  v8 = v0[2];
  v6 = __OFADD__(v8, v1);
  v9 = v8 + v1;
  if (!v6)
  {
    v0[2] = v9;
    return result;
  }

LABEL_11:
  __break(1u);
  return result;
}

size_t sub_1C0CF0994(int64_t a1)
{
  v2 = v1;
  v4 = *v2;
  result = _swift_stdlib_malloc_size(*v2);
  if ((result - 32) < a1)
  {
    if (a1 < 0)
    {
      __break(1u);
    }

    else if (!HIDWORD(a1))
    {
      if (a1)
      {
        v6 = (a1 - 1) | ((a1 - 1) >> 1) | (((a1 - 1) | ((a1 - 1) >> 1)) >> 2);
        v7 = v6 | (v6 >> 4) | ((v6 | (v6 >> 4)) >> 8);
        v8 = v7 | HIWORD(v7);
        if (v8 == -1)
        {
          v9 = 0xFFFFFFFFLL;
        }

        else
        {
          v9 = (v8 + 1);
        }
      }

      else
      {
        v9 = 1;
      }

      type metadata accessor for SecureBytes.Backing();
      v10 = swift_allocObject();
      *(v10 + 16) = 0;
      *(v10 + 24) = v9;
      result = swift_beginAccess();
      v11 = v4[2];
      if ((v11 & 0x8000000000000000) == 0)
      {
        sub_1C0CF062C(v4, 0, v11);

        *v2 = v10;
        return result;
      }

LABEL_14:
      __break(1u);
      return result;
    }

    __break(1u);
    goto LABEL_14;
  }

  return result;
}

uint64_t sub_1C0CF0A94@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  result = swift_beginAccess();
  *a1 = *(v3 + 16);
  return result;
}

uint64_t sub_1C0CF0B14@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = *a1;
  v4 = a1[1];
  v6 = *v2;
  result = swift_beginAccess();
  v8 = *(v6 + 16);
  if (v8 < 0)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v5 < 0)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v8 >= v4)
  {
    *a2 = v5;
    a2[1] = v4;
    a2[2] = v6;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_1C0CF0B90@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  result = swift_beginAccess();
  v5 = *(v3 + 16);
  if (v5 < 0)
  {
    __break(1u);
  }

  else
  {
    *a1 = 0;
    a1[1] = v5;
  }

  return result;
}

BOOL sub_1C0CF0BE0()
{
  v1 = *v0;
  swift_beginAccess();
  return *(v1 + 16) == 0;
}

uint64_t sub_1C0CF0C28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  v9 = *(a4 + 16);
  if (v9 < a3 || (a3 | a1) < 0 || v9 < a1)
  {
    __break(1u);
    goto LABEL_16;
  }

  v10 = a3 - a1;
  if (a2 >= 1)
  {
    if (v10 < 0 || v10 >= a2)
    {
      goto LABEL_11;
    }

    return 0;
  }

  if (v10 <= 0 && v10 > a2)
  {
    return 0;
  }

LABEL_11:
  result = a1 + a2;
  if (__OFADD__(a1, a2))
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (result < 0 || v9 < result)
  {
    goto LABEL_17;
  }

  return result;
}

uint64_t *sub_1C0CF0CF0(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  v3 = a2[1];
  if (*result >= *a2)
  {
    v5 = __OFSUB__(v2, v3);
    v4 = v2 - v3 < 0;
  }

  else
  {
    v5 = 0;
    v4 = 0;
  }

  if (v4 == v5)
  {
    __break(1u);
  }

  return result;
}

void *sub_1C0CF0D0C(void *result, void *a2)
{
  if (*result < *a2 || a2[1] < *result)
  {
    __break(1u);
  }

  return result;
}

void *sub_1C0CF0D28(void *result, void *a2)
{
  if (*result < *a2 || a2[1] < result[1])
  {
    __break(1u);
  }

  return result;
}

void *sub_1C0CF0D44@<X0>(void *result@<X0>, void *a2@<X8>)
{
  if (__OFADD__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    *a2 = *result + 1;
  }

  return result;
}

void *sub_1C0CF0D5C(void *result)
{
  if (__OFADD__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    ++*result;
  }

  return result;
}

void *sub_1C0CF0D90(uint64_t a1)
{
  swift_beginAccess();
  v2 = *(a1 + 16);
  if (!v2)
  {
    v4 = MEMORY[0x1E69E7CC0];
LABEL_19:

    return v4;
  }

  result = sub_1C0CF3BC0(*(a1 + 16), 0);
  if (v2 >= 1)
  {
    v4 = result;
    v5 = 0;
    v6 = result + 4;
    if (v2 >= 8 && result - a1 >= 0x20)
    {
      if (v2 < 0x20)
      {
        v5 = 0;
        goto LABEL_12;
      }

      v5 = v2 & 0x7FFFFFFFFFFFFFE0;
      v7 = result + 6;
      v8 = (a1 + 48);
      v9 = v2 & 0x7FFFFFFFFFFFFFE0;
      do
      {
        v10 = *v8;
        *(v7 - 1) = *(v8 - 1);
        *v7 = v10;
        v7 += 2;
        v8 += 2;
        v9 -= 32;
      }

      while (v9);
      if (v2 == v5)
      {
        goto LABEL_19;
      }

      if ((v2 & 0x18) != 0)
      {
LABEL_12:
        v11 = v5;
        v5 = v2 & 0x7FFFFFFFFFFFFFF8;
        v6 += v2 & 0x7FFFFFFFFFFFFFF8;
        v12 = v11 + 32;
        v13 = v11 - (v2 & 0x7FFFFFFFFFFFFFF8);
        do
        {
          *(result + v12) = *(a1 + v12);
          v12 += 8;
          v13 += 8;
        }

        while (v13);
        if (v2 == v5)
        {
          goto LABEL_19;
        }

        goto LABEL_17;
      }

      v6 += v5;
    }

LABEL_17:
    v14 = (v5 + a1 + 32);
    v15 = v2 - v5;
    do
    {
      v16 = *v14++;
      *v6++ = v16;
      --v15;
    }

    while (v15);
    goto LABEL_19;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C0CF0ED0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  if (!a2)
  {
LABEL_11:
    v6 = 0;
    goto LABEL_13;
  }

  v6 = a3;
  if (!a3)
  {
LABEL_13:
    *v5 = a4;
    v5[1] = v6;
    return v6;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    result = swift_beginAccess();
    v8 = 0;
    v9 = *(a4 + 16);
    while (!__OFSUB__(v9, v8))
    {
      if (v9 == v8)
      {
        v6 = v9;
        goto LABEL_13;
      }

      *(a2 + v8) = *(a4 + 32 + v8);
      if (v6 - 1 == v8)
      {
        goto LABEL_13;
      }

      if (__OFADD__(++v8, 1))
      {
        __break(1u);
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_1C0CF0FD0@<X0>(void *result@<X0>, void *a2@<X8>)
{
  if (__OFSUB__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    *a2 = *result - 1;
  }

  return result;
}

void *sub_1C0CF0FE8(void *result)
{
  if (__OFSUB__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    --*result;
  }

  return result;
}

void *sub_1C0CF1000@<X0>(void *result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *result + a2;
  if (__OFADD__(*result, a2))
  {
    __break(1u);
  }

  else
  {
    v6 = *v3;
    result = swift_beginAccess();
    if ((v5 & 0x8000000000000000) == 0 && *(v6 + 16) >= v5)
    {
      *a3 = v5;
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C0CF1070@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  result = sub_1C0CF0C28(*a1, a2, *a3, *v4);
  *a4 = result;
  *(a4 + 8) = v7 & 1;
  return result;
}

uint64_t sub_1C0CF10AC(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *v2;
  result = swift_beginAccess();
  v7 = *(v5 + 16);
  if (v7 >= v4 && ((v4 | v3) & 0x8000000000000000) == 0 && v7 >= v3)
  {
    return v4 - v3;
  }

  __break(1u);
  return result;
}

uint64_t (*sub_1C0CF1134(uint64_t a1, uint64_t *a2))(uint64_t result)
{
  v3 = *a2;
  v4 = *v2;
  *a1 = *a2;
  *(a1 + 8) = v4;
  *(a1 + 16) = *(v4 + v3 + 32);
  return sub_1C0CF116C;
}

uint64_t sub_1C0CF1180(uint64_t *a1, uint64_t *a2)
{
  sub_1C0CF3AC4(v2, *a2, a2[1], *a1, a1[1], a1[2]);
}

void (*sub_1C0CF11CC(void *a1, uint64_t *a2))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  *a1 = v4;
  v4[4] = sub_1C0CF128C(v4, *a2, a2[1]);
  return sub_1C0CF1244;
}

void sub_1C0CF1244(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

void (*sub_1C0CF128C(void *a1, uint64_t a2, uint64_t a3))(uint64_t **a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x48uLL);
  }

  v8 = v7;
  *a1 = v7;
  v7[7] = a3;
  v7[8] = v3;
  v7[6] = a2;
  v9 = *v3;
  result = swift_beginAccess();
  v11 = *(v9 + 16);
  if (v11 < 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (a2 < 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (v11 >= a3)
  {
    *v8 = a2;
    v8[1] = a3;
    v8[2] = v9;

    return sub_1C0CF135C;
  }

LABEL_10:
  __break(1u);
  return result;
}

void sub_1C0CF135C(uint64_t **a1)
{
  v1 = *a1;
  sub_1C0CF3AC4((*a1)[8], v1[6], (*a1)[7], *v1, v1[1], v1[2]);
  v2 = v1[2];

  free(v1);
}

uint64_t sub_1C0CF13AC@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1C0CF3C34(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

void *sub_1C0CF13D8(void *result, void *a2)
{
  v3 = *result;
  v4 = *a2;
  if (__OFSUB__(*a2, *result))
  {
    __break(1u);
  }

  else if (*a2 != *result)
  {
    v5 = *v2 + 32;
    v6 = *(v5 + v3);
    *(v5 + v3) = *(v5 + v4);
    *(v5 + v4) = v6;
  }

  return result;
}

size_t sub_1C0CF1454(int64_t a1, int64_t a2, size_t a3)
{
  v4 = v3;
  v8 = *v3;
  result = swift_beginAccess();
  v10 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v11 = v8[2];
  v12 = __OFSUB__(v11, v10);
  v13 = v11 - v10;
  if (v12)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v14 = v13 + 1;
  if (__OFADD__(v13, 1))
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v15 = _swift_stdlib_malloc_size(v8);
  v16 = *v4;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && (v15 - 32) >= v14)
  {
    if (a2 >= a1)
    {
      v17 = *v4;
      return sub_1C0CF1970(a1, a2, a3);
    }

    goto LABEL_23;
  }

  if (v14 < 0)
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (HIDWORD(v14))
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (v14)
  {
    v18 = (v14 - 1) | ((v14 - 1) >> 1) | (((v14 - 1) | ((v14 - 1) >> 1)) >> 2);
    v19 = v18 | (v18 >> 4) | ((v18 | (v18 >> 4)) >> 8);
    v20 = v19 | HIWORD(v19);
    if (v20 == -1)
    {
      v21 = 0xFFFFFFFFLL;
    }

    else
    {
      v21 = (v20 + 1);
    }
  }

  else
  {
    v21 = 1;
  }

  type metadata accessor for SecureBytes.Backing();
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = v21;
  if (a1 < 0)
  {
    goto LABEL_25;
  }

  v22 = result;
  v23 = *v4;
  result = swift_beginAccess();
  v24 = v23[2];
  if (v24 < a2)
  {
LABEL_26:
    __break(1u);
    return result;
  }

  sub_1C0CF062C(v23, 0, a1);
  sub_1C0CF0710(a3);
  sub_1C0CF062C(v23, a2, v24);

  *v4 = v22;
  return result;
}

size_t sub_1C0CF15F4(uint64_t a1, int64_t a2, void *a3, size_t a4)
{
  v5 = v4;
  v10 = *v4;
  result = swift_beginAccess();
  v12 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v13 = v10[2];
  v14 = __OFSUB__(v13, v12);
  v15 = v13 - v12;
  if (v14)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v16 = v15 + a4;
  if (__OFADD__(v15, a4))
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v17 = _swift_stdlib_malloc_size(v10);
  v18 = *v5;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && (v17 - 32) >= v16)
  {
    if (a2 >= a1)
    {
      v19 = *v5;
      return sub_1C0CF1A6C(a1, a2, a3, a4);
    }

    goto LABEL_23;
  }

  if (v16 < 0)
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (HIDWORD(v16))
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (v16)
  {
    v20 = (v16 - 1) | ((v16 - 1) >> 1) | (((v16 - 1) | ((v16 - 1) >> 1)) >> 2);
    v21 = v20 | (v20 >> 4) | ((v20 | (v20 >> 4)) >> 8);
    v22 = v21 | HIWORD(v21);
    if (v22 == -1)
    {
      v23 = 0xFFFFFFFFLL;
    }

    else
    {
      v23 = (v22 + 1);
    }
  }

  else
  {
    v23 = 1;
  }

  type metadata accessor for SecureBytes.Backing();
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = v23;
  if (a1 < 0)
  {
    goto LABEL_25;
  }

  v24 = result;
  v25 = *v5;
  result = swift_beginAccess();
  v26 = v25[2];
  if (v26 < a2)
  {
LABEL_26:
    __break(1u);
    return result;
  }

  sub_1C0CF062C(v25, 0, a1);
  sub_1C0CF07CC(a3, a4);
  sub_1C0CF062C(v25, a2, v26);

  *v5 = v24;
  return result;
}

size_t sub_1C0CF17A0(uint64_t a1, int64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *v3;
  result = swift_beginAccess();
  v10 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v11 = v8[2];
  v12 = v11 - v10;
  if (__OFSUB__(v11, v10))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  result = sub_1C0D78C8C();
  v13 = __OFADD__(v12, result);
  v14 = v12 + result;
  if (v13)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v15 = _swift_stdlib_malloc_size(v8);
  v16 = *v4;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && (v15 - 32) >= v14)
  {
    if (a2 >= a1)
    {
      v17 = *v4;
      return sub_1C0CF1B6C(a1, a2, a3);
    }

    goto LABEL_23;
  }

  if (v14 < 0)
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (HIDWORD(v14))
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (v14)
  {
    v18 = (v14 - 1) | ((v14 - 1) >> 1) | (((v14 - 1) | ((v14 - 1) >> 1)) >> 2);
    v19 = v18 | (v18 >> 4) | ((v18 | (v18 >> 4)) >> 8);
    v20 = v19 | HIWORD(v19);
    if (v20 == -1)
    {
      v21 = 0xFFFFFFFFLL;
    }

    else
    {
      v21 = (v20 + 1);
    }
  }

  else
  {
    v21 = 1;
  }

  type metadata accessor for SecureBytes.Backing();
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = v21;
  if (a1 < 0)
  {
    goto LABEL_25;
  }

  v22 = result;
  v23 = *v4;
  result = swift_beginAccess();
  v24 = v23[2];
  if (v24 < a2)
  {
LABEL_26:
    __break(1u);
    return result;
  }

  sub_1C0CF062C(v23, 0, a1);
  sub_1C0CF08AC();
  sub_1C0CF062C(v23, a2, v24);

  *v4 = v22;
  return result;
}

size_t sub_1C0CF1970(int64_t a1, int64_t a2, size_t a3)
{
  result = swift_beginAccess();
  v8 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_10;
  }

  v9 = v3[2];
  v10 = v9 - v8;
  if (__OFSUB__(v9, v8))
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v11 = v10 + 1;
  if (__OFADD__(v10, 1))
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  result = _swift_stdlib_malloc_size(v3);
  if ((result - 32) < v11)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v12 = __OFSUB__(1, v8);
  v13 = 1 - v8;
  if (v12)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (v9 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  sub_1C0CF2E8C(a2, v9, v13);
  result = sub_1C0CF2F54(a3, a1);
  v14 = v3[2];
  v15 = v14 + v13;
  if (!__OFADD__(v14, v13))
  {
    result = swift_beginAccess();
    v3[2] = v15;
    return result;
  }

LABEL_15:
  __break(1u);
  return result;
}

size_t sub_1C0CF1A6C(uint64_t a1, int64_t a2, void *a3, size_t a4)
{
  result = swift_beginAccess();
  v10 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_10;
  }

  v11 = v4[2];
  v12 = v11 - v10;
  if (__OFSUB__(v11, v10))
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v13 = v12 + a4;
  if (__OFADD__(v12, a4))
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  result = _swift_stdlib_malloc_size(v4);
  if ((result - 32) < v13)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v14 = __OFSUB__(a4, v10);
  v15 = a4 - v10;
  if (v14)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (v11 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  sub_1C0CF2E8C(a2, v11, v15);
  result = sub_1C0CF2FC8(a3, a4, a1);
  v16 = v4[2];
  v17 = v16 + v15;
  if (!__OFADD__(v16, v15))
  {
    result = swift_beginAccess();
    v4[2] = v17;
    return result;
  }

LABEL_15:
  __break(1u);
  return result;
}

size_t sub_1C0CF1B6C(uint64_t a1, int64_t a2, uint64_t a3)
{
  v4 = v3;
  result = swift_beginAccess();
  v9 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_11;
  }

  v10 = v3[2];
  v11 = v10 - v9;
  if (__OFSUB__(v10, v9))
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  result = sub_1C0D78C8C();
  v12 = v11 + result;
  if (__OFADD__(v11, result))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  result = _swift_stdlib_malloc_size(v4);
  if ((result - 32) < v12)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  result = sub_1C0D78C8C();
  if (__OFSUB__(result, v9))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v13 = v4[2];
  if (v13 < a2)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  sub_1C0CF2E8C(a2, v13, result - v9);
  sub_1C0CF3084(a3, a1);
  result = sub_1C0D78C8C();
  v14 = result - v9;
  if (__OFSUB__(result, v9))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v15 = v4[2];
  v16 = __OFADD__(v15, v14);
  v17 = v15 + v14;
  if (!v16)
  {
    v4[2] = v17;
    return result;
  }

LABEL_17:
  __break(1u);
  return result;
}

size_t sub_1C0CF1CA8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(a2 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00]();
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v34 = *(AssociatedTypeWitness - 8);
  v11 = (*(v34 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v13 = &v33 - v12;
  v35 = v3;
  result = sub_1C0D78B8C();
  if (v36 == 1)
  {
    (*(v6 + 16))(v9, a1, a2);
    sub_1C0D78B7C();
    swift_getAssociatedConformanceWitness();
    sub_1C0D78D4C();
    if (v38)
    {
      return (*(v34 + 8))(v13, AssociatedTypeWitness);
    }

    else
    {
      v15 = v37;
      while (1)
      {
        v16 = *v3;
        result = swift_beginAccess();
        v17 = v16[2];
        v18 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
          break;
        }

        v19 = _swift_stdlib_malloc_size(v16) - 32;
        v20 = *v3;
        result = swift_isUniquelyReferenced_nonNull_native();
        if (result)
        {
          v21 = v19 < v18;
        }

        else
        {
          v21 = 1;
        }

        if (v21)
        {
          if (v18 < 0)
          {
            goto LABEL_33;
          }

          if (HIDWORD(v18))
          {
            goto LABEL_35;
          }

          if (v17 == -1)
          {
            v25 = 1;
          }

          else
          {
            v22 = v17 | (v17 >> 1) | ((v17 | (v17 >> 1)) >> 2);
            v23 = v22 | (v22 >> 4) | ((v22 | (v22 >> 4)) >> 8);
            v24 = v23 | HIWORD(v23);
            if (v24 == -1)
            {
              v25 = 0xFFFFFFFFLL;
            }

            else
            {
              v25 = (v24 + 1);
            }
          }

          type metadata accessor for SecureBytes.Backing();
          result = swift_allocObject();
          *(result + 16) = 0;
          *(result + 24) = v25;
          if (v17 < 0)
          {
            goto LABEL_37;
          }

          v30 = result;
          v31 = *v3;
          result = swift_beginAccess();
          v32 = v31[2];
          if (v32 < v17)
          {
            __break(1u);
            break;
          }

          sub_1C0CF062C(v31, 0, v17);
          sub_1C0CF0710(v15);
          sub_1C0CF062C(v31, v17, v32);

          *v3 = v30;
        }

        else
        {
          v26 = *v3;
          result = swift_beginAccess();
          v27 = v26[2];
          if (__OFADD__(v27, 1))
          {
            goto LABEL_34;
          }

          result = _swift_stdlib_malloc_size(v26);
          if ((result - 32) < v27 + 1)
          {
            goto LABEL_36;
          }

          if (v27 < v17)
          {
            goto LABEL_38;
          }

          result = sub_1C0CF2E8C(v17, v27, 1);
          if (v17 < 0)
          {
            goto LABEL_39;
          }

          result = _swift_stdlib_malloc_size(v26);
          if ((result - 32) < v18)
          {
            goto LABEL_40;
          }

          if (v18 < v17)
          {
            goto LABEL_41;
          }

          result = _swift_stdlib_malloc_size(v26);
          *(v26 + v17 + 32) = v15;
          v28 = v26[2];
          v29 = v28 + 1;
          if (__OFADD__(v28, 1))
          {
            goto LABEL_42;
          }

          swift_beginAccess();
          v26[2] = v29;
        }

        sub_1C0D78D4C();
        v15 = v37;
        if (v38 == 1)
        {
          return (*(v34 + 8))(v13, AssociatedTypeWitness);
        }
      }

      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1C0CF20CC@<X0>(void *a1@<X8>)
{
  if (qword_1EBE6CB98 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *a1 = off_1EBE6CBA0;
}

uint64_t sub_1C0CF213C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  sub_1C0CF17A0(*a1, a1[1], a2);
  v5 = *(*(a3 - 8) + 8);

  return v5(a2, a3);
}

void *sub_1C0CF21C0@<X0>(char *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *a1;
  if (qword_1EBE6CB98 != -1)
  {
    swift_once();
  }

  result = off_1EBE6CBA0;
  v7 = off_1EBE6CBA0;
  if (!a2)
  {

    goto LABEL_7;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {

    sub_1C0D64E2C(a2, v5);
    result = v7;
LABEL_7:
    *a3 = result;
    return result;
  }

  __break(1u);
  return result;
}

size_t sub_1C0CF227C(unsigned __int8 *a1)
{
  v2 = *v1;
  v3 = *a1;
  swift_beginAccess();
  return sub_1C0CF1454(*(v2 + 16), *(v2 + 16), v3);
}

uint64_t sub_1C0CF22D4(uint64_t a1, uint64_t a2)
{
  sub_1C0CF1CA8(a1, a2);
  v4 = *(*(a2 - 8) + 8);

  return v4(a1, a2);
}

size_t sub_1C0CF2368@<X0>(int64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v5 = *v2;
  result = swift_beginAccess();
  if (!*(v5 + 16))
  {
    __break(1u);
    goto LABEL_6;
  }

  v7 = v4 + 1;
  if (__OFADD__(v4, 1))
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v7 >= v4)
  {
    v8 = *(v5 + v4 + 32);
    result = sub_1C0CF4298(v4, v7);
    *a2 = v8;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

int64_t sub_1C0CF2404@<X0>(_BYTE *a1@<X8>)
{
  v3 = *v1;
  result = swift_beginAccess();
  v5 = *(v3 + 16);
  if (!v5)
  {
    __break(1u);
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v6 = *(v3 + 32);
  result = sub_1C0CF0C28(0, 1, v5, v3);
  if ((v7 & 1) == 0)
  {
    if ((result & 0x8000000000000000) == 0)
    {
      result = sub_1C0CF4298(0, result);
      *a1 = v6;
      return result;
    }

    goto LABEL_6;
  }

LABEL_7:
  __break(1u);
  return result;
}

size_t sub_1C0CF2490(size_t result)
{
  if (result)
  {
    v2 = result;
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v3 = *v1;
      swift_beginAccess();
      result = sub_1C0CF0C28(0, v2, *(v3 + 16), v3);
      if (v4)
      {
LABEL_9:
        __break(1u);
        return result;
      }

      if ((result & 0x8000000000000000) == 0)
      {
        return sub_1C0CF4298(0, result);
      }
    }

    __break(1u);
    goto LABEL_9;
  }

  return result;
}

size_t sub_1C0CF2518(char a1)
{
  v2 = *v1;
  if (a1)
  {
    swift_beginAccess();
    v3 = *(v2 + 16);
    if ((v3 & 0x8000000000000000) == 0)
    {
      return sub_1C0CF4298(0, v3);
    }

    __break(1u);
    goto LABEL_9;
  }

  v5 = *v1;

  if (qword_1EBE6CB98 != -1)
  {
LABEL_9:
    swift_once();
  }

  *v1 = off_1EBE6CBA0;
}

uint64_t sub_1C0CF25E8(uint64_t (*a1)(char *))
{
  v4 = *v1;
  result = swift_beginAccess();
  v6 = 0;
  v7 = v4 + 32;
  do
  {
    v8 = *(v4 + 16);
    if (__OFSUB__(v8, v6))
    {
      __break(1u);
LABEL_27:
      __break(1u);
      goto LABEL_28;
    }

    if (v6 == v8)
    {
      goto LABEL_11;
    }

    v14 = *(v7 + v6);
    result = a1(&v14);
    if (v2)
    {
      return result;
    }

    v9 = v6 + 1;
    v10 = __OFADD__(v6, 1);
    if (result)
    {
      if (!v10)
      {
        goto LABEL_16;
      }

      __break(1u);
LABEL_14:
      v11 = __OFADD__(v6++, 1);
      if (!v11)
      {
        while (1)
        {
          v11 = __OFADD__(v9++, 1);
          if (v11)
          {
            break;
          }

LABEL_16:
          v12 = *(v4 + 16);
          if (__OFSUB__(v12, v9))
          {
            goto LABEL_27;
          }

          if (v12 == v9)
          {
            if (v9 < v6)
            {
              goto LABEL_31;
            }

            return sub_1C0CF4298(v6, v9);
          }

          v14 = *(v7 + v9);
          result = a1(&v14);
          if ((result & 1) == 0)
          {
            if (__OFSUB__(v9, v6))
            {
              goto LABEL_29;
            }

            if (v9 != v6)
            {
              v13 = *(v7 + v6);
              *(v7 + v6) = *(v7 + v9);
              *(v7 + v9) = v13;
            }

            goto LABEL_14;
          }
        }

LABEL_28:
        __break(1u);
LABEL_29:
        __break(1u);
      }

      __break(1u);
LABEL_31:
      __break(1u);
      return result;
    }

    ++v6;
  }

  while (!v10);
  __break(1u);
LABEL_11:
  v9 = v6;
  return sub_1C0CF4298(v6, v9);
}

uint64_t sub_1C0CF2838(uint64_t *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v8 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *a1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    swift_beginAccess();
    sub_1C0CF2CF4(v10 + 32, v10 + 32 + *(v10 + 16), v13);
    v11 = v13[0];

    *a1 = v11;
    v10 = v11;
  }

  swift_beginAccess();
  sub_1C0D582F8(v10 + 32, v10 + 32 + *(v10 + 16), a2, a3, a4);
  return sub_1C0CF448C(a2, a3);
}

uint64_t sub_1C0CF292C(uint64_t *a1, uint64_t (*a2)(uint64_t))
{
  v4 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *a1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    swift_beginAccess();
    sub_1C0CF2CF4(v6 + 32, v6 + 32 + *(v6 + 16), v9);
    v7 = v9[0];

    *a1 = v7;
    v6 = v7;
  }

  swift_beginAccess();
  return a2(v6 + 32);
}

uint64_t sub_1C0CF29E8@<X0>(uint64_t (*a1)(uint64_t, void)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  swift_beginAccess();
  result = a1(v3 + 32, *(v3 + 16));
  if (!v4)
  {
    return (*(*(a2 - 8) + 56))(a3, 0, 1, a2);
  }

  return result;
}

uint64_t sub_1C0CF2B74()
{
  v1 = *v0;
  sub_1C0D78FFC();
  MEMORY[0x1C68E3FF0](v1);
  return sub_1C0D7902C();
}

uint64_t sub_1C0CF2BE8()
{
  v1 = *v0;
  sub_1C0D78FFC();
  MEMORY[0x1C68E3FF0](v1);
  return sub_1C0D7902C();
}

void *sub_1C0CF2C2C(void *result, void *a2)
{
  if (!__OFSUB__(*a2, *result))
  {
    return (*a2 == *result);
  }

  __break(1u);
  return result;
}

void *sub_1C0CF2C98@<X0>(void *result@<X0>, void *a2@<X8>)
{
  if (__OFSUB__(*result, *v2))
  {
    __break(1u);
  }

  else
  {
    *a2 = *result - *v2;
  }

  return result;
}

void *sub_1C0CF2CB4@<X0>(void *result@<X0>, void *a2@<X8>)
{
  if (__OFADD__(*v2, *result))
  {
    __break(1u);
  }

  else
  {
    *a2 = *v2 + *result;
  }

  return result;
}

void *sub_1C0CF2CD0(void *result, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, void *a6)
{
  if (__OFADD__(*a4, *a6))
  {
    __break(1u);
  }

  else
  {
    *result = *a4 + *a6;
    return 0;
  }

  return result;
}

size_t sub_1C0CF2CF4@<X0>(size_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = a2 - result;
  if (result)
  {
    v5 = a2 - result;
  }

  else
  {
    v5 = 0;
  }

  if ((v5 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_17;
  }

  if (HIDWORD(v5))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v6 = result;
  if (v5)
  {
    v7 = (v5 - 1) | ((v5 - 1) >> 1) | (((v5 - 1) | ((v5 - 1) >> 1)) >> 2);
    v8 = v7 | (v7 >> 4) | ((v7 | (v7 >> 4)) >> 8);
    v9 = v8 | HIWORD(v8);
    if (v9 == -1)
    {
      v10 = 0xFFFFFFFFLL;
    }

    else
    {
      v10 = (v9 + 1);
    }
  }

  else
  {
    v10 = 1;
  }

  type metadata accessor for SecureBytes.Backing();
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = v10;
  _swift_stdlib_malloc_size(v11);
  if (v6)
  {
    memmove(v11 + 4, v6, v4);
  }

  else
  {
    v4 = 0;
  }

  swift_beginAccess();
  v11[2] = v4;
  result = _swift_stdlib_malloc_size(v11);
  if ((result - 32) >= v4)
  {
    *a3 = v11;
    return result;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1C0CF2E10()
{
  swift_beginAccess();
  memset_s((v0 + 32), *(v0 + 24), 0, *(v0 + 24));
  return swift_deallocClassInstance();
}

size_t sub_1C0CF2E8C(size_t result, int64_t a2, uint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  v4 = v3;
  v7 = result;
  result = _swift_stdlib_malloc_size(v4);
  v8 = v7 + a3;
  if (__OFADD__(v7, a3))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v9 = __OFADD__(a2, a3);
  v10 = a2 + a3;
  if (v9)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (v10 < v8)
  {
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v8 < 1 || (result - 32) < a2)
  {
    goto LABEL_15;
  }

  result = _swift_stdlib_malloc_size(v4);
  if ((result - 32) < v10)
  {
LABEL_16:
    __break(1u);
    return result;
  }

  _swift_stdlib_malloc_size(v4);

  return memmove(&v4[v8 + 32], &v4[v7 + 32], a2 - v7);
}

size_t sub_1C0CF2F54(size_t result, int64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  v4 = a2 + 1;
  if (__OFADD__(a2, 1))
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v5 = result;
  result = _swift_stdlib_malloc_size(v2);
  if ((result - 32) < v4)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v4 >= a2)
  {
    result = _swift_stdlib_malloc_size(v2);
    *(v2 + a2 + 32) = v5;
    return result;
  }

LABEL_9:
  __break(1u);
  return result;
}

void *sub_1C0CF2FC8(void *result, size_t a2, uint64_t a3)
{
  if (a3 < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  v4 = v3;
  v7 = a3 + a2;
  if (__OFADD__(a3, a2))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v8 = result;
  result = _swift_stdlib_malloc_size(v4);
  if (result - 32 < v7)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (v7 < a3)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  result = _swift_stdlib_malloc_size(v4);
  if (!v8)
  {
    return result;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
LABEL_15:
    __break(1u);
    return result;
  }

  return memmove(&v4[a3 + 32], v8, a2);
}

uint64_t sub_1C0CF3084(uint64_t result, uint64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  result = sub_1C0D78C8C();
  v4 = a2 + result;
  if (__OFADD__(a2, result))
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  result = _swift_stdlib_malloc_size(v2);
  if (result - 32 < v4)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  result = sub_1C0D78C8C();
  if (__OFADD__(a2, result))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (a2 + result < a2)
  {
LABEL_13:
    __break(1u);
    return result;
  }

  _swift_stdlib_malloc_size(v2);

  return sub_1C0D78D5C();
}

size_t sub_1C0CF3158(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (a1)
  {
    v6 = a1 + a4;
  }

  else
  {
    v6 = 0;
  }

  if (a1)
  {
    v7 = (a1 + a3);
  }

  else
  {
    v7 = 0;
  }

  swift_beginAccess();
  v8 = a5[2];
  result = _swift_stdlib_malloc_size(a5);
  if ((result - 32) < v8)
  {
    __break(1u);
  }

  else
  {
    if (v7)
    {
      v10 = v6 - v7;
      result = memmove(a5 + v8 + 32, v7, v10);
    }

    else
    {
      v10 = 0;
    }

    v11 = a5[2];
    v12 = v11 + v10;
    if (!__OFADD__(v11, v10))
    {
      result = swift_beginAccess();
      a5[2] = v12;
      return result;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1C0CF324C()
{
  result = qword_1EBE6CF80;
  if (!qword_1EBE6CF80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE6CF80);
  }

  return result;
}

unint64_t sub_1C0CF32B8()
{
  result = qword_1EBE6CF88;
  if (!qword_1EBE6CF88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE6CF88);
  }

  return result;
}

unint64_t sub_1C0CF330C()
{
  result = qword_1EBE6CF90;
  if (!qword_1EBE6CF90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE6CF90);
  }

  return result;
}

unint64_t sub_1C0CF3364()
{
  result = qword_1EBE6CF98;
  if (!qword_1EBE6CF98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE6CF98);
  }

  return result;
}

unint64_t sub_1C0CF33BC()
{
  result = qword_1EBE6CFA0;
  if (!qword_1EBE6CFA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE6CFA0);
  }

  return result;
}

unint64_t sub_1C0CF3410()
{
  result = qword_1EBE6CFA8;
  if (!qword_1EBE6CFA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE6CFA8);
  }

  return result;
}

unint64_t sub_1C0CF34F8()
{
  result = qword_1EBE6CFC8;
  if (!qword_1EBE6CFC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE6CFC8);
  }

  return result;
}

unint64_t sub_1C0CF3580()
{
  result = qword_1EBE6CFE0;
  if (!qword_1EBE6CFE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE6CFE0);
  }

  return result;
}

unint64_t sub_1C0CF35D4()
{
  result = qword_1EBE6CFE8;
  if (!qword_1EBE6CFE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE6CFE8);
  }

  return result;
}

unint64_t sub_1C0CF3670()
{
  result = qword_1EBE6CFF8;
  if (!qword_1EBE6CFF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE6CFF8);
  }

  return result;
}

unint64_t sub_1C0CF3788()
{
  result = qword_1EBE6D020;
  if (!qword_1EBE6D020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE6D020);
  }

  return result;
}

uint64_t sub_1C0CF3810(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE6CFD8, &qword_1C0D7B260);
    sub_1C0CF3580();
    sub_1C0CF35D4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1C0CF3914(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1C0CF39A8()
{
  result = qword_1EBE6CBA8;
  if (!qword_1EBE6CBA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE6CBA8);
  }

  return result;
}

uint64_t sub_1C0CF3A44(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE6CFB8, &qword_1C0D7B130);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1C0CF3AC4(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = *a1;
  result = swift_beginAccess();
  v14 = *(v11 + 16);
  if (v14 < 0)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (a2 < 0)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v14 < a3)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (__OFSUB__(a3, a2))
  {
LABEL_15:
    __break(1u);
  }

  else
  {
    while (1)
    {
      LOBYTE(v13) = __OFSUB__(a5, a4);
      if (a3 == a2)
      {
        break;
      }

      if (v13)
      {
        __break(1u);
LABEL_20:
        __break(1u);
LABEL_21:
        __break(1u);
        goto LABEL_22;
      }

      if (a5 == a4)
      {
        goto LABEL_27;
      }

      if (a4 >= a5)
      {
        goto LABEL_20;
      }

      *(v11 + 32 + a2) = *(a6 + 32 + a4);
      v13 = a2 + 1;
      if (__OFADD__(a2, 1))
      {
        goto LABEL_21;
      }

      ++a4;
      ++a2;
      if (__OFSUB__(a3, v13))
      {
        goto LABEL_15;
      }
    }
  }

  if ((v13 & 1) == 0)
  {
    if (a5 == a4)
    {
      return result;
    }

    goto LABEL_26;
  }

LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

void *sub_1C0CF3BC0(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE6D058, &qword_1C0D7B550);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

uint64_t sub_1C0CF3C34(uint64_t (*a1)(char *))
{
  v4 = *v1;
  swift_beginAccess();
  v5 = *(v4 + 16);
  if (v5 < 1)
  {
    return 0;
  }

  v6 = 0;
  v7 = v4 + 32;
  do
  {
    v12 = *(v7 + v6);
    v8 = a1(&v12);
    if (v2)
    {
      break;
    }

    if (v8)
    {
      v9 = v5;
      while (1)
      {
        v5 = v9 - 1;
        if (v6 >= v9 - 1)
        {
          return v6;
        }

        v12 = *(v4 + v9 + 31);
        result = a1(&v12);
        v9 = v5;
        if ((result & 1) == 0)
        {
          if (__OFSUB__(v5, v6))
          {
            __break(1u);
            return result;
          }

          if (v6 != v5)
          {
            v11 = *(v7 + v6);
            *(v7 + v6) = *(v4 + v5 + 32);
            *(v4 + v5 + 32) = v11;
          }

          break;
        }
      }
    }

    ++v6;
  }

  while (v6 < v5);
  return v6;
}

BOOL sub_1C0CF3D48(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a1 + 16);
  swift_beginAccess();
  sub_1C0CF5E04(a2 + 32, a2 + 32 + *(a2 + 16), a1 + 32, a1 + 32 + v4, &v6);
  return v6;
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

unint64_t sub_1C0CF3E64(unint64_t result)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_15;
  }

  v2 = result;
  if (HIDWORD(result))
  {
LABEL_15:
    __break(1u);
    return result;
  }

  if (result)
  {
    v3 = (result - 1) | ((result - 1) >> 1) | (((result - 1) | ((result - 1) >> 1)) >> 2);
    v4 = v3 | (v3 >> 4) | ((v3 | (v3 >> 4)) >> 8);
    v5 = v4 | HIWORD(v4);
    if (v5 == -1)
    {
      v6 = 0xFFFFFFFFLL;
    }

    else
    {
      v6 = (v5 + 1);
    }
  }

  else
  {
    v6 = 1;
  }

  type metadata accessor for SecureBytes.Backing();
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = v6;
  v8 = _swift_stdlib_malloc_size(v7);
  v9 = sub_1C0D016A8(v2, (v7 + 4), v7 + v8);
  v11 = v10 + v9;
  v13 = v10 + v12;
  if (!v10)
  {
    v13 = 0;
    v11 = 0;
  }

  v16[0] = v11;
  v16[1] = v13;
  v15 = 0;
  swift_retain_n();

  sub_1C0D047EC(v16, &v15);
  if (v1)
  {
  }

  else
  {
    v14 = v15;
    swift_beginAccess();
    v7[2] = v14;
  }

  return v7;
}

unint64_t sub_1C0CF3FD0(unint64_t result, void (*a2)(void *, uint64_t *))
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_15;
  }

  v3 = result;
  if (HIDWORD(result))
  {
LABEL_15:
    __break(1u);
    return result;
  }

  if (result)
  {
    v5 = (result - 1) | ((result - 1) >> 1) | (((result - 1) | ((result - 1) >> 1)) >> 2);
    v6 = v5 | (v5 >> 4) | ((v5 | (v5 >> 4)) >> 8);
    v7 = v6 | HIWORD(v6);
    if (v7 == -1)
    {
      v8 = 0xFFFFFFFFLL;
    }

    else
    {
      v8 = (v7 + 1);
    }
  }

  else
  {
    v8 = 1;
  }

  type metadata accessor for SecureBytes.Backing();
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = v8;
  v10 = _swift_stdlib_malloc_size(v9);
  v11 = sub_1C0D016A8(v3, (v9 + 4), v9 + v10);
  v13 = v12 + v11;
  v15 = v12 + v14;
  if (!v12)
  {
    v15 = 0;
    v13 = 0;
  }

  v17[0] = v13;
  v17[1] = v15;
  v18 = 0;

  a2(v17, &v18);
  if (v2)
  {
  }

  else
  {
    v16 = v18;
    swift_beginAccess();
    v9[2] = v16;
  }

  return v9;
}

size_t sub_1C0CF411C()
{
  v1 = _swift_stdlib_malloc_size(v0) - 32;
  result = swift_beginAccess();
  v3 = v0[2];
  if (__OFSUB__(v1, v3))
  {
    __break(1u);
    goto LABEL_6;
  }

  if (((v1 - v3) & 0x8000000000000000) != 0)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  result = _swift_stdlib_malloc_size(v0);
  if ((result - 32) >= v3)
  {
    v0[2] = v3;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

size_t sub_1C0CF419C(int64_t a1, int64_t a2)
{
  result = swift_beginAccess();
  v6 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_11;
  }

  v7 = v2[2];
  if (__OFSUB__(v7, v6))
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  result = _swift_stdlib_malloc_size(v2);
  if ((result - 32) < v7 - v6)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v8 = __OFSUB__(0, v6);
  v9 = a1 - a2;
  if (v8)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (v7 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  result = sub_1C0CF2E8C(a2, v7, v9);
  if (a1 < 0)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  result = _swift_stdlib_malloc_size(v2);
  if ((result - 32) < a1)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  result = _swift_stdlib_malloc_size(v2);
  v10 = v2[2];
  v11 = v10 + v9;
  if (!__OFADD__(v10, v9))
  {
    result = swift_beginAccess();
    v2[2] = v11;
    return result;
  }

LABEL_17:
  __break(1u);
  return result;
}

size_t sub_1C0CF4298(int64_t a1, int64_t a2)
{
  v3 = v2;
  v6 = *v2;
  result = swift_beginAccess();
  v8 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_19;
  }

  v9 = v6[2];
  v10 = v9 - v8;
  if (__OFSUB__(v9, v8))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v11 = _swift_stdlib_malloc_size(v6);
  v12 = *v3;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && (v11 - 32) >= v10)
  {
    if (a2 >= a1)
    {
      v13 = *v3;
      return sub_1C0CF419C(a1, a2);
    }

    goto LABEL_21;
  }

  if (v10 < 0)
  {
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (HIDWORD(v10))
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v10)
  {
    v14 = (v10 - 1) | ((v10 - 1) >> 1) | (((v10 - 1) | ((v10 - 1) >> 1)) >> 2);
    v15 = v14 | (v14 >> 4) | ((v14 | (v14 >> 4)) >> 8);
    v16 = v15 | HIWORD(v15);
    if (v16 == -1)
    {
      v17 = 0xFFFFFFFFLL;
    }

    else
    {
      v17 = (v16 + 1);
    }
  }

  else
  {
    v17 = 1;
  }

  type metadata accessor for SecureBytes.Backing();
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = v17;
  if (a1 < 0)
  {
    goto LABEL_23;
  }

  v18 = result;
  v19 = *v3;
  result = swift_beginAccess();
  v20 = v19[2];
  if (v20 < a2)
  {
LABEL_24:
    __break(1u);
    return result;
  }

  sub_1C0CF062C(v19, 0, a1);
  sub_1C0CF411C();
  sub_1C0CF062C(v19, a2, v20);

  *v3 = v18;
  return result;
}

size_t sub_1C0CF4418(void *a1, size_t a2)
{
  v5 = **(v2 + 16);
  swift_beginAccess();
  return sub_1C0CF15F4(*(v5 + 16), *(v5 + 16), a1, a2);
}

uint64_t sub_1C0CF448C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

void *__swift_initWithCopy_strong(void *a1, void *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t *__swift_assignWithCopy_strong(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  *a1 = *a2;

  return a1;
}

uint64_t *__swift_assignWithTake_strong(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  *a1 = *a2;

  return a1;
}

uint64_t _s13DcrtPlaintextVwet(uint64_t *a1, int a2)
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

uint64_t _s13DcrtPlaintextVwst(uint64_t result, int a2, int a3)
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

uint64_t scrypt(pass_len:pass:salt_len:salt:cost_N:block_size_r:parallelization:output_len:output:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, size_t a8, void *a9)
{
  v12 = [objc_allocWithZone(MEMORY[0x1E695DEF0]) initWithBytes:a2 length:a1];
  v13 = [objc_allocWithZone(MEMORY[0x1E695DEF0]) initWithBytes:a4 length:a3];
  result = ccscrypt_storage_size();
  if ((result & 0x8000000000000000) == 0)
  {
    if (result)
    {
      v15 = result;
      v16 = sub_1C0D78C2C();
      *(v16 + 16) = v15;
      bzero((v16 + 32), v15);
      if ((a8 & 0x8000000000000000) == 0)
      {
        goto LABEL_4;
      }
    }

    else if ((a8 & 0x8000000000000000) == 0)
    {
LABEL_4:
      if (a8)
      {
        v17 = sub_1C0D78C2C();
        *(v17 + 16) = a8;
        bzero((v17 + 32), a8);
        goto LABEL_9;
      }

LABEL_8:
      v17 = MEMORY[0x1E69E7CC0];
LABEL_9:
      [v12 length];
      [v12 bytes];
      [v13 length];
      [v13 bytes];
      sub_1C0D78BFC();
      sub_1C0D78BFC();
      v18 = ccscrypt();

      swift_bridgeObjectRelease_n();
      if (v18)
      {

        v12 = v13;
      }

      else
      {
        v20 = [objc_allocWithZone(MEMORY[0x1E695DEF0]) initWithBytes:v17 + 32 length:{a8, a8, v17 + 32}];

        if (v20)
        {
          memcpy(a9, [v20 bytes], objc_msgSend(v20, sel_length));

          v19 = 0;
          v12 = v20;
          goto LABEL_14;
        }
      }

      v19 = 4294899619;
LABEL_14:

      return v19;
    }

    __break(1u);
    goto LABEL_8;
  }

  __break(1u);
  return result;
}

char *sub_1C0CF48F4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE6D058, &qword_1C0D7B550);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
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

char *sub_1C0CF49E8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE6D0D0, &qword_1C0D7B5E0);
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
    v10 = MEMORY[0x1E69E7CC0];
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

void *sub_1C0CF4AF4(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE6D0D8, &qword_1C0D7B5E8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE6D0E0, &qword_1C0D7B5F0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1C0CF4C64(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
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
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 25;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 3);
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[8 * v10])
    {
      memmove(v15, v16, 8 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v15, v16, 8 * v10);
  }

  return v12;
}

char *sub_1C0CF4D60(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE6D0E8, &qword_1C0D7B5F8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1C0CF4E6C(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE6D060, "Vn");
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE6D068, &unk_1C0D7B720);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1C0CF4FA0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE6D070, &qword_1C0D7B5C0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1C0CF50C0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE6D0C8, &qword_1C0D7B7B0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

char *sub_1C0CF51C4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE6D078, &qword_1C0D7B5C8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1C0CF52F4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE6D0B8, &unk_1C0D7B7A0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

void *sub_1C0CF5440(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
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

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v18 = v17 - 32;
    if (v17 < 32)
    {
      v18 = v17 - 25;
    }

    v16[2] = v14;
    v16[3] = 2 * (v18 >> 3);
  }

  else
  {
    v16 = MEMORY[0x1E69E7CC0];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 8 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

uint64_t sub_1C0CF557C(uint64_t a1)
{
  v2 = *(a1 + 16);
  v1 = *(a1 + 24);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  result = swift_getAssociatedTypeWitness();
  if (v4 <= 0x3F)
  {
    result = type metadata accessor for Proof();
    if (v5 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1C0CF5684(int *a1, unsigned int a2, uint64_t a3)
{
  v6 = *(a3 + 16);
  v5 = *(a3 + 24);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  v9 = *(v8 + 84);
  swift_getAssociatedConformanceWitness();
  v10 = swift_getAssociatedTypeWitness();
  v11 = *(v10 - 8);
  v12 = *(v11 + 84);
  v13 = *(v8 + 64);
  v14 = *(v8 + 80);
  if (v12 <= 0x7FFFFFFF)
  {
    v15 = 0x7FFFFFFF;
  }

  else
  {
    v15 = *(v11 + 84);
  }

  if (v15 <= v9)
  {
    v16 = v9;
  }

  else
  {
    v16 = v15;
  }

  if (!a2)
  {
    return 0;
  }

  v17 = v13 + v14;
  v18 = *(v11 + 80) & 0xF8 | 7;
  v19 = v13 + v18;
  v20 = *(*(v10 - 8) + 64) + 7;
  if (v16 >= a2)
  {
    goto LABEL_30;
  }

  v21 = (v20 & 0xFFFFFFFFFFFFFFF8) + ((v19 + ((v17 + ((v17 + ((v17 + ((v17 + (v17 & ~v14)) & ~v14)) & ~v14)) & ~v14)) & ~v14)) & ~v18) + 8;
  v22 = v21 & 0xFFFFFFF8;
  if ((v21 & 0xFFFFFFF8) != 0)
  {
    v23 = 2;
  }

  else
  {
    v23 = a2 - v16 + 1;
  }

  if (v23 >= 0x10000)
  {
    v24 = 4;
  }

  else
  {
    v24 = 2;
  }

  if (v23 < 0x100)
  {
    v24 = 1;
  }

  if (v23 >= 2)
  {
    v25 = v24;
  }

  else
  {
    v25 = 0;
  }

  if (v25 > 1)
  {
    if (v25 == 2)
    {
      v26 = *(a1 + v21);
      if (!v26)
      {
        goto LABEL_30;
      }
    }

    else
    {
      v26 = *(a1 + v21);
      if (!v26)
      {
        goto LABEL_30;
      }
    }

LABEL_27:
    v28 = v26 - 1;
    if (v22)
    {
      v28 = 0;
      v29 = *a1;
    }

    else
    {
      v29 = 0;
    }

    return v16 + (v29 | v28) + 1;
  }

  if (v25)
  {
    v26 = *(a1 + v21);
    if (v26)
    {
      goto LABEL_27;
    }
  }

LABEL_30:
  if (v9 >= v15)
  {
    v32 = *(v8 + 48);

    return v32(a1, v9, AssociatedTypeWitness);
  }

  else
  {
    v30 = (v19 + ((v17 + ((v17 + ((v17 + ((v17 + ((a1 + v17) & ~v14)) & ~v14)) & ~v14)) & ~v14)) & ~v14)) & ~v18;
    if (v12 < 0x7FFFFFFF)
    {
      v33 = *((v20 + v30) & 0xFFFFFFFFFFFFFFF8);
      if (v33 >= 0xFFFFFFFF)
      {
        LODWORD(v33) = -1;
      }

      return (v33 + 1);
    }

    else
    {
      v31 = *(v11 + 48);

      return v31(v30);
    }
  }
}

void sub_1C0CF5A04(_DWORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(a4 + 16);
  v7 = *(a4 + 24);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  v11 = *(v10 + 84);
  swift_getAssociatedConformanceWitness();
  v12 = *(swift_getAssociatedTypeWitness() - 8);
  v13 = *(v12 + 84);
  v14 = *(v10 + 64);
  v15 = *(v10 + 80);
  v16 = *(v12 + 64);
  if (v13 <= 0x7FFFFFFF)
  {
    v17 = 0x7FFFFFFF;
  }

  else
  {
    v17 = *(v12 + 84);
  }

  if (v17 <= v11)
  {
    v18 = v11;
  }

  else
  {
    v18 = v17;
  }

  v19 = v14 + v15;
  v20 = *(v12 + 80) & 0xF8 | 7;
  v21 = v14 + v20;
  v22 = (v14 + v20 + ((v14 + v15 + ((v14 + v15 + ((v14 + v15 + ((v14 + v15 + ((v14 + v15) & ~v15)) & ~v15)) & ~v15)) & ~v15)) & ~v15)) & ~v20;
  v23 = v16 + 7;
  v24 = ((v16 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  v25 = v22 + v24;
  if (v18 >= a3)
  {
    v28 = 0;
    v29 = a2 - v18;
    if (a2 <= v18)
    {
      goto LABEL_20;
    }
  }

  else
  {
    if (v25)
    {
      v26 = 2;
    }

    else
    {
      v26 = a3 - v18 + 1;
    }

    if (v26 >= 0x10000)
    {
      v27 = 4;
    }

    else
    {
      v27 = 2;
    }

    if (v26 < 0x100)
    {
      v27 = 1;
    }

    if (v26 >= 2)
    {
      v28 = v27;
    }

    else
    {
      v28 = 0;
    }

    v29 = a2 - v18;
    if (a2 <= v18)
    {
LABEL_20:
      if (v28 > 1)
      {
        if (v28 != 2)
        {
          *(a1 + v25) = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_36;
        }

        *(a1 + v25) = 0;
      }

      else if (v28)
      {
        *(a1 + v25) = 0;
        if (!a2)
        {
          return;
        }

LABEL_36:
        if (v11 >= v17)
        {
          v34 = *(v10 + 56);

          v34(a1, a2, v11, AssociatedTypeWitness);
        }

        else
        {
          v32 = ((v21 + ((v19 + ((v19 + ((v19 + ((v19 + ((a1 + v19) & ~v15)) & ~v15)) & ~v15)) & ~v15)) & ~v15)) & ~v20);
          if (v17 >= a2)
          {
            if (v13 < 0x7FFFFFFF)
            {
              if ((a2 & 0x80000000) != 0)
              {
                v36 = a2 & 0x7FFFFFFF;
              }

              else
              {
                v36 = (a2 - 1);
              }

              *((v32 + v23) & 0xFFFFFFFFFFFFFFF8) = v36;
            }

            else
            {
              v35 = *(v12 + 56);

              v35(v32, a2);
            }
          }

          else if (v24)
          {
            v33 = ~v17 + a2;
            bzero(v32, v24);
            *v32 = v33;
          }
        }

        return;
      }

      if (!a2)
      {
        return;
      }

      goto LABEL_36;
    }
  }

  if (v25)
  {
    v30 = 1;
  }

  else
  {
    v30 = v29;
  }

  if (v25)
  {
    v31 = ~v18 + a2;
    bzero(a1, v25);
    *a1 = v31;
  }

  if (v28 > 1)
  {
    if (v28 == 2)
    {
      *(a1 + v25) = v30;
    }

    else
    {
      *(a1 + v25) = v30;
    }
  }

  else if (v28)
  {
    *(a1 + v25) = v30;
  }
}

uint64_t sub_1C0CF5E04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, BOOL *a5@<X8>)
{
  result = a4 - a3;
  if (a3)
  {
    v7 = a4 - a3;
  }

  else
  {
    v7 = 0;
  }

  if (a1)
  {
    if (v7 == a2 - a1)
    {
      if (a3)
      {
        result = cc_cmp_safe();
        *a5 = result == 0;
        return result;
      }

      goto LABEL_11;
    }

LABEL_9:
    *a5 = 0;
    return result;
  }

  if (v7)
  {
    goto LABEL_9;
  }

  if (!a3)
  {
LABEL_11:
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_1C0CF5E88(unint64_t a1, unint64_t a2, char a3)
{
  v22 = *MEMORY[0x1E69E9840];
  v20[0] = sub_1C0D7865C();
  v6 = *(v20[0] - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v20[0]);
  v9 = v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1C0D789EC();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C0D789DC();
  v21 = bswap64(a1);
  MEMORY[0x1C68E3990](&v21, &v22);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE6D058, &qword_1C0D7B550);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1C0D7B690;
  *(v15 + 32) = a3;
  v16 = *(sub_1C0D78BFC() + 16);
  sub_1C0CF6410();
  sub_1C0D7861C();

  sub_1C0D789BC();
  sub_1C0D7864C();
  (*(v6 + 8))(v9, v20[0]);
  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_5:
    __break(1u);
  }

  if (!a2)
  {
    goto LABEL_5;
  }

  v17 = v21;
  (*(v11 + 8))(v14, v10);
  v18 = *MEMORY[0x1E69E9840];
  return v17 % a2;
}

uint64_t sub_1C0CF610C(uint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4)
{
  v8 = sub_1C0D789EC();
  v29 = *(v8 - 8);
  v9 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_1C0D7865C();
  v28 = *(v30 - 8);
  v12 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v30);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C0CF6410();
  sub_1C0D7863C();
  sub_1C0CF6468(a1, a2);
  sub_1C0D3C2C8(a1, a2);
  sub_1C0CF448C(a1, a2);
  sub_1C0D7862C();
  (*(v29 + 8))(v11, v8);
  sub_1C0D7864C();
  result = (*(v28 + 8))(v14, v30);
  if (a4 < 0)
  {
    __break(1u);
  }

  else
  {
    if (!a4)
    {
      return MEMORY[0x1E69E7CC0];
    }

    v16 = 0;
    v17 = v31;
    v18 = MEMORY[0x1E69E7CC0];
    do
    {
      ++v16;
      v19 = sub_1C0CF5E88(v17, a3, 0);
      v20 = 0;
LABEL_5:
      v21 = *(v18 + 2);
      v22 = v21;
      v23 = 32;
      while (v22)
      {
        v24 = *&v18[v23];
        v23 += 8;
        --v22;
        if (v24 == v19)
        {
          if (v20 > 9u)
          {
            break;
          }

          v19 = sub_1C0CF5E88(v17, a3, ++v20);
          goto LABEL_5;
        }
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v18 = sub_1C0CF4C28(0, v21 + 1, 1, v18);
      }

      v26 = *(v18 + 2);
      v25 = *(v18 + 3);
      if (v26 >= v25 >> 1)
      {
        v18 = sub_1C0CF4C28((v25 > 1), v26 + 1, 1, v18);
      }

      *(v18 + 2) = v26 + 1;
      *&v18[8 * v26 + 32] = v19;
    }

    while (v16 != a4);
    return v18;
  }

  return result;
}

unint64_t sub_1C0CF6410()
{
  result = qword_1EBE6C9D8[0];
  if (!qword_1EBE6C9D8[0])
  {
    sub_1C0D789EC();
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EBE6C9D8);
  }

  return result;
}

uint64_t sub_1C0CF6468(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

unint64_t static Padme.paddedMessageByteCount(_:)(unint64_t result)
{
  if (result)
  {
    v1 = __clz(result);
    v2 = __clz(v1 ^ 0x3F);
    v3 = ~v1;
    v5 = __OFADD__(v2, v3);
    v6 = v2 + v3;
    v4 = v6 < 0;
    v7 = 1 << v6;
    if (v4 != v5)
    {
      v7 = 0;
    }

    v8 = v7 != 0;
    v9 = v7 - 1;
    if (v8)
    {
      if (__CFADD__(result, v9))
      {
        return 0;
      }

      else
      {
        return (result + v9) & ~v9;
      }
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t PEC.SimilarityClient.similarityConfig.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 17);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v6 = *(v1 + 40);
  v5 = *(v1 + 48);
  v7 = *(v1 + 56);
  *a1 = *(v1 + 16);
  *(a1 + 1) = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v6;
  *(a1 + 32) = v5;
  *(a1 + 40) = v7;
  sub_1C0D78BFC();

  return sub_1C0D78BFC();
}

uint64_t PEC.SimilarityClient.init(config:secretKey:)@<X0>(char *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = *(a1 + 1);
  v7 = a1[16];
  v9 = *(a1 + 3);
  v8 = *(a1 + 4);
  v10 = *(a1 + 5);
  v11 = *a2;
  v30 = a2[1];
  LOBYTE(v24) = v4;
  BYTE1(v24) = v5;
  v25 = v6;
  v26 = v7;
  v27 = v9;
  v28 = v8;
  v29 = v10;
  result = sub_1C0CF945C();
  if (v3)
  {
    sub_1C0CF448C(v11, v30);
  }

  v20 = v9;
  v22 = v5;
  v21 = v7;
  v24 = v11;
  v25 = v30;
  if ((result & 0xC000000000000001) != 0)
  {
    v19 = result;
    sub_1C0D78BFC();
    v30 = 0;
    v17 = MEMORY[0x1C68E3DC0](0, v19);
    v16 = v19;

    v13 = v4;
    v14 = v6;
    v15 = v8;
    goto LABEL_6;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v13 = v4;
    v14 = v6;
    v15 = v8;
    v16 = result;
    v17 = *(result + 32);

LABEL_6:
    v30 = sub_1C0D51B84(&v24, v17);

    v18 = v30;
    *a3 = v16;
    *(a3 + 8) = v18;
    *(a3 + 16) = v13;
    *(a3 + 17) = v22;
    *(a3 + 24) = v14;
    *(a3 + 32) = v21;
    *(a3 + 40) = v20;
    *(a3 + 48) = v15;
    *(a3 + 56) = v10;
    return result;
  }

  __break(1u);
  return result;
}

void PEC.SimilarityClient.generateGaloisKey()(void *a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  v5 = v1[6];
  if ((*v1 & 0xC000000000000001) != 0)
  {
    v8 = v1[1];

    sub_1C0D78BFC();
    v6 = MEMORY[0x1C68E3DC0](0, v4);
    goto LABEL_4;
  }

  if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v6 = *(v4 + 32);
    v7 = v1[1];

    sub_1C0D78BFC();

LABEL_4:
    sub_1C0D615B8(v6, v5, v3, a1);
    return;
  }

  __break(1u);
}

uint64_t PEC.SimilarityClient.query(values:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = PEC.SimilarityClient.queryCrt(values:)(a1);
  if (!v2)
  {
    if (*(result + 16))
    {
      v5 = *(result + 48);
      v6 = *(result + 56);
      *a2 = *(result + 32);
      *(a2 + 16) = v5;
      *(a2 + 24) = v6;
      sub_1C0D78BFC();
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t PEC.SimilarityClient.queryCrt(values:)(void *a1)
{
  v4 = *(v1 + 8);
  v5 = *(v1 + 16);
  v6 = *(v1 + 17);
  v7 = *(v1 + 24);
  v8 = *(v1 + 32);
  v9 = *(v1 + 40);
  v10 = *(v1 + 48);
  v11 = *(v1 + 56);
  v12 = a1[2];
  if (v9 != -1)
  {
    if (!v9)
    {
      if (v12)
      {
        goto LABEL_59;
      }

      __break(1u);
    }

    if (v12 % v9)
    {
      goto LABEL_59;
    }
  }

  v75 = v6;
  v76 = v5;
  v85 = v8;
  v84 = v4;
  sub_1C0D78BFC();
  v80 = v10;
  sub_1C0D78BFC();
  v82 = v11;
  sub_1C0D78BFC();
  v78 = v12;
  v86 = v9;
  v14 = sub_1C0CF8E34(0, v12, v9, a1, v9);

  v15 = v14;
  v16 = *(v14 + 16);
  v17 = MEMORY[0x1E69E7CC0];
  v91 = v16;
  v74 = v7;
  if (!v16)
  {
    v20 = MEMORY[0x1E69E7CC0];
LABEL_53:
    v45 = v86;
    v18 = v78 / v86;

    if (v78 / v86 >= 1 && v86 >= 1)
    {
      LOBYTE(v99) = v76;
      BYTE1(v99) = v75;
      *(&v99 + 1) = v74;
      v100 = v85;
      v101 = v86;
      v102 = v80;
      v103 = v82;
      v56 = sub_1C0CF945C();
      v46 = v2;
      if (v2)
      {

        return v3;
      }

      v29 = v56;

      v91 = *(v82 + 16);
      v98 = v17;
      sub_1C0CF7AB0(0, 0, 0);
      v57 = v29;
      v3 = v17;
      if (v29 >> 62)
      {
        goto LABEL_103;
      }

      v58 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v58)
      {
LABEL_104:

        return v3;
      }

LABEL_65:
      v59 = 0;
      v88 = v57 & 0xFFFFFFFFFFFFFF8;
      v90 = v57 & 0xC000000000000001;
      v77 = v58;
      v79 = v18 * v45;
      v83 = (v18 * v45) >> 64 != (v18 * v45) >> 63;
      v93 = v20;
      v81 = v57;
      while (1)
      {
        if (v90)
        {
          v60 = MEMORY[0x1C68E3DC0](v59, v57);
          v29 = v59 + 1;
          if (__OFADD__(v59, 1))
          {
            goto LABEL_100;
          }
        }

        else
        {
          if (v59 >= *(v88 + 16))
          {
            goto LABEL_101;
          }

          v60 = *(v57 + 8 * v59 + 32);

          v29 = v59 + 1;
          if (__OFADD__(v59, 1))
          {
            goto LABEL_100;
          }
        }

        if (v83)
        {
          goto LABEL_102;
        }

        v61 = *(v20 + 2);
        if (v79 != v61 || !v61)
        {
          break;
        }

        if (v85)
        {
          if (v85 != 1)
          {
            goto LABEL_96;
          }

          *&v99 = v18;
          *(&v99 + 1) = v86;

          v63 = sub_1C0D00538(v62, &v99, v20, v91 != 0);
          if (v46)
          {
            goto LABEL_90;
          }

          v64 = v63;
          *&v94 = v18;
          *(&v94 + 1) = v86;
          v97 = 1;
        }

        else
        {
          *&v99 = v18;
          *(&v99 + 1) = v86;

          v66 = sub_1C0CFFD38(v65, &v99, v20, v91 != 0);
          if (v46)
          {
            goto LABEL_90;
          }

          v64 = v66;
          *&v94 = v18;
          *(&v94 + 1) = v86;
          v97 = 0;
        }

        sub_1C0CFE738(&v94, &v97, v64, &v99);

        v94 = v99;
        v95 = v100;
        v96 = v101;
        sub_1C0CFED34(v84, &v99);

        v67 = v101;
        if (!*(v101 + 16) || (v68 = *(v60 + 41), LOBYTE(v94) = *(v60 + 40), BYTE1(v94) = v68, *&v99 = v18, *(&v99 + 1) = v86, v97 = v85, *(v67 + 16) != sub_1C0CFFC20(&v94, &v99, &v97)))
        {

          sub_1C0CF8DE0();
          swift_allocError();
          *v71 = 1;
          *(v71 + 4) = 1;
          swift_willThrow();

          return v3;
        }

        v98 = v3;
        v45 = *(v3 + 16);
        v69 = *(v3 + 24);
        if (v45 >= v69 >> 1)
        {
          sub_1C0CF7AB0((v69 > 1), v45 + 1, 1);
          v3 = v98;
        }

        *(v3 + 16) = v45 + 1;
        v70 = v3 + 32 * v45;
        *(v70 + 32) = v18;
        *(v70 + 40) = v86;
        *(v70 + 48) = v85;
        *(v70 + 56) = v67;
        ++v59;
        v20 = v93;
        v57 = v81;
        if (v29 == v77)
        {
          goto LABEL_104;
        }
      }

      sub_1C0CF8DE0();
      swift_allocError();
      *v72 = 1;
      *(v72 + 4) = 1;
      swift_willThrow();
LABEL_97:

      return v3;
    }

LABEL_59:
    sub_1C0CF8DE0();
    swift_allocError();
    *v54 = 1;
    *(v54 + 4) = 1;
    swift_willThrow();
    return v3;
  }

  v18 = 0;
  v87 = v15;
  v89 = v15 + 32;
  v19 = v7;
  v3 = 3741319169;
  v20 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    if (v18 >= *(v15 + 16))
    {
      __break(1u);
LABEL_94:
      __break(1u);
LABEL_95:
      __break(1u);
LABEL_96:

      sub_1C0CF8DE0();
      swift_allocError();
      *v73 = 5;
      *(v73 + 4) = 1;
      swift_willThrow();
      goto LABEL_97;
    }

    v92 = v20;
    v21 = *(v89 + 8 * v18);
    v22 = *(v21 + 16);
    if (v22)
    {
      *&v99 = v17;
      sub_1C0D78BFC();
      sub_1C0CF7B40(0, v22, 0);
      v23 = v17;
      v24 = (v21 + 32);
      v25 = *(v23 + 2);
      v26 = v22;
      do
      {
        v27 = *v24;
        *&v99 = v23;
        v28 = *(v23 + 3);
        v29 = v25 + 1;
        if (v25 >= v28 >> 1)
        {
          sub_1C0CF7B40((v28 > 1), v25 + 1, 1);
          v23 = v99;
        }

        *(v23 + 2) = v29;
        v23[v25 + 8] = v27 * v27;
        ++v24;
        ++v25;
        --v26;
      }

      while (v26);
      v17 = MEMORY[0x1E69E7CC0];
    }

    else
    {
      v29 = *(v17 + 2);
      v30 = *(v89 + 8 * v18);
      sub_1C0D78BFC();
      v23 = v17;
      if (!v29)
      {

        goto LABEL_38;
      }
    }

    if (v29 <= 7)
    {
      v31 = 0;
      v32 = 0.0;
LABEL_23:
      v35 = v29 - v31;
      v36 = &v23[v31 + 8];
      do
      {
        v37 = *v36++;
        v32 = v32 + v37;
        --v35;
      }

      while (v35);
      goto LABEL_25;
    }

    v31 = v29 & 0xFFFFFFFFFFFFFFF8;
    v33 = v23 + 12;
    v32 = 0.0;
    v34 = v29 & 0xFFFFFFFFFFFFFFF8;
    do
    {
      v32 = (((((((v32 + COERCE_FLOAT(*(v33 - 1))) + COERCE_FLOAT(HIDWORD(*(v33 - 2)))) + COERCE_FLOAT(*(v33 - 1))) + COERCE_FLOAT(HIDWORD(*(v33 - 1)))) + COERCE_FLOAT(*v33)) + COERCE_FLOAT(HIDWORD(*v33))) + COERCE_FLOAT(v33[1])) + COERCE_FLOAT(HIDWORD(*v33));
      v33 += 4;
      v34 -= 8;
    }

    while (v34);
    if (v29 != v31)
    {
      goto LABEL_23;
    }

LABEL_25:

    if (v22)
    {
      break;
    }

LABEL_38:

    v39 = v17;
LABEL_39:
    v44 = *(v39 + 2);
    v20 = v92;
    v45 = *(v92 + 2);
    v46 = v45 + v44;
    if (__OFADD__(v45, v44))
    {
      goto LABEL_94;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && v46 <= *(v92 + 3) >> 1)
    {
      if (!*(v39 + 2))
      {
        goto LABEL_8;
      }
    }

    else
    {
      if (v45 <= v46)
      {
        v48 = v45 + v44;
      }

      else
      {
        v48 = v45;
      }

      v20 = sub_1C0CF4C50(isUniquelyReferenced_nonNull_native, v48, 1, v92);
      if (!*(v39 + 2))
      {
LABEL_8:

        v15 = v87;
        if (v44)
        {
          goto LABEL_95;
        }

        goto LABEL_9;
      }
    }

    v49 = *(v20 + 2);
    if ((*(v20 + 3) >> 1) - v49 < v44)
    {
      __break(1u);
LABEL_99:
      __break(1u);
LABEL_100:
      __break(1u);
LABEL_101:
      __break(1u);
LABEL_102:
      __break(1u);
LABEL_103:
      v58 = sub_1C0D78ECC();
      v57 = v29;
      if (!v58)
      {
        goto LABEL_104;
      }

      goto LABEL_65;
    }

    memcpy(&v20[8 * v49 + 32], v39 + 8, 8 * v44);

    v15 = v87;
    if (v44)
    {
      v50 = *(v20 + 2);
      v51 = __OFADD__(v50, v44);
      v52 = v50 + v44;
      if (v51)
      {
        goto LABEL_99;
      }

      *(v20 + 2) = v52;
    }

LABEL_9:
    ++v18;
    v17 = MEMORY[0x1E69E7CC0];
    if (v18 == v91)
    {
      goto LABEL_53;
    }
  }

  *&v99 = v17;
  v38 = sqrtf(v32);
  sub_1C0CF7B10(0, v22, 0);
  v39 = v17;
  v40 = 32;
  while (1)
  {
    if (v38 == 0.0)
    {
      v41 = 0;
      goto LABEL_33;
    }

    v42 = roundf((*(v21 + v40) * v19) / v38);
    if ((LODWORD(v42) & 0x7FFFFFFFu) > 0x7F7FFFFF)
    {
      break;
    }

    if (v42 <= -9.2234e18)
    {
      goto LABEL_88;
    }

    if (v42 >= 9.2234e18)
    {
      goto LABEL_89;
    }

    v41 = v42;
LABEL_33:
    *&v99 = v39;
    v29 = *(v39 + 2);
    v43 = *(v39 + 3);
    if (v29 >= v43 >> 1)
    {
      sub_1C0CF7B10((v43 > 1), v29 + 1, 1);
      v39 = v99;
    }

    *(v39 + 2) = v29 + 1;
    *&v39[2 * v29 + 8] = v41;
    v40 += 4;
    if (!--v22)
    {

      goto LABEL_39;
    }
  }

  __break(1u);
LABEL_88:
  __break(1u);
LABEL_89:
  __break(1u);
LABEL_90:

  return v3;
}

uint64_t sub_1C0CF7248(uint64_t a1, unint64_t a2, uint64_t (*a3)(__int128 *, uint64_t))
{
  v4 = v3;
  v5 = a2;
  v6 = a1;
  v40 = *(a1 + 16);
  v35 = a2 >> 62;
  if (a2 >> 62)
  {
    goto LABEL_58;
  }

  for (i = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1C0D78ECC())
  {
    if (i >= v40)
    {
      v8 = v40;
    }

    else
    {
      v8 = i;
    }

    v45 = MEMORY[0x1E69E7CC0];
    result = sub_1C0CF7B60(0, v8 & ~(v8 >> 63), 0);
    if (v8 < 0)
    {
      __break(1u);
LABEL_60:
      __break(1u);
      return result;
    }

    v10 = v45;
    v27 = v6;
    v28 = v5;
    if (v8)
    {
      v36 = v5 & 0xFFFFFFFFFFFFFF8;
      v32 = v5 & 0xC000000000000001;
      v30 = v5 + 32;
      sub_1C0D78BFC();
      result = sub_1C0D78BFC();
      v11 = 0;
      v12 = (v6 + 56);
      while (v40 != v11)
      {
        if (v11 >= v40)
        {
          __break(1u);
LABEL_51:
          __break(1u);
LABEL_52:
          __break(1u);
LABEL_53:
          __break(1u);
          goto LABEL_54;
        }

        v38 = *(v12 - 3);
        v6 = *(v12 - 8);
        v13 = *v12;
        if (v35)
        {
          result = sub_1C0D78ECC();
        }

        else
        {
          result = *(v36 + 16);
        }

        if (v11 == result)
        {
          goto LABEL_60;
        }

        if (v32)
        {
          sub_1C0D78BFC();
          result = MEMORY[0x1C68E3DC0](v11, v28);
          v14 = result;
        }

        else
        {
          if (v11 < 0)
          {
            goto LABEL_51;
          }

          if (v11 >= *(v36 + 16))
          {
            goto LABEL_53;
          }

          v14 = *(v30 + 8 * v11);
          sub_1C0D78BFC();
        }

        v33 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          goto LABEL_52;
        }

        v41 = v38;
        v42 = v6;
        v43 = v13;
        v44 = v14;
        if (!v13)
        {
          goto LABEL_60;
        }

        v15 = a3(&v41, v14);
        if (v4)
        {
LABEL_48:

          return v10;
        }

        v6 = v15;

        v45 = v10;
        v17 = *(v10 + 16);
        v16 = *(v10 + 24);
        v5 = v17 + 1;
        if (v17 >= v16 >> 1)
        {
          result = sub_1C0CF7B60((v16 > 1), v17 + 1, 1);
          v10 = v45;
        }

        ++v11;
        *(v10 + 16) = v5;
        *(v10 + 8 * v17 + 32) = v6;
        v12 += 4;
        if (v8 == v11)
        {
          v6 = v27;
          v5 = v28;
          goto LABEL_29;
        }
      }

      goto LABEL_60;
    }

    sub_1C0D78BFC();
    sub_1C0D78BFC();
    v11 = 0;
    v33 = 0;
LABEL_29:
    v37 = v5 & 0xFFFFFFFFFFFFFF8;
    if (v40 == v11)
    {
      break;
    }

    v18 = 0;
    v29 = v5 + 8 * v33 + 32;
    v19 = (v6 + 32 * v11 + 56);
    v31 = v5 & 0xC000000000000001;
    while (v11 + v18 < v40)
    {
      v39 = *(v19 - 3);
      v6 = *(v19 - 8);
      v20 = *v19;
      if (v35)
      {
        v21 = sub_1C0D78ECC();
      }

      else
      {
        v21 = *(v37 + 16);
      }

      v22 = v33 + v18;
      if (v33 + v18 == v21)
      {
        goto LABEL_30;
      }

      if (v31)
      {
        sub_1C0D78BFC();
        v23 = MEMORY[0x1C68E3DC0](v22, v28);
      }

      else
      {
        if ((v22 & 0x8000000000000000) != 0)
        {
          goto LABEL_55;
        }

        if (v22 >= *(v37 + 16))
        {
          goto LABEL_57;
        }

        v23 = *(v29 + 8 * v18);
        sub_1C0D78BFC();
      }

      if (!(v33 - 0x7FFFFFFFFFFFFFFFLL + v18))
      {
        goto LABEL_56;
      }

      v41 = v39;
      v42 = v6;
      v43 = v20;
      v44 = v23;
      v24 = a3(&v41, v23);
      if (v4)
      {
        goto LABEL_48;
      }

      v6 = v24;

      v45 = v10;
      v26 = *(v10 + 16);
      v25 = *(v10 + 24);
      v5 = v26 + 1;
      if (v26 >= v25 >> 1)
      {
        sub_1C0CF7B60((v25 > 1), v26 + 1, 1);
        v10 = v45;
      }

      *(v10 + 16) = v5;
      *(v10 + 8 * v26 + 32) = v6;
      ++v18;
      v19 += 4;
      if (v40 - v11 == v18)
      {
        goto LABEL_30;
      }
    }

LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    ;
  }

LABEL_30:

  return v10;
}

uint64_t PEC.SimilarityClient.decrypt(reply:)(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = *(a1 + 16);
  v4 = a1[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE6D180, &qword_1C0D7B6B0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1C0D7B690;
  *(v5 + 32) = v1;
  *(v5 + 40) = v2;
  *(v5 + 48) = v3;
  *(v5 + 56) = v4;
  sub_1C0D78BFC();
  v6 = PEC.SimilarityClient.decryptCrt(reply:)();

  return v6;
}

uint64_t PEC.SimilarityClient.decryptCrt(reply:)()
{
  v2 = v0[1];
  v21 = *v0;
  v22 = v2;
  v3 = v0[3];
  v23 = v0[2];
  v24 = v3;
  v4 = v21;
  sub_1C0D78BFC();
  v5 = sub_1C0D78BFC();
  v6 = sub_1C0CF7248(v5, v21, sub_1C0CF91B4);

  if (v1)
  {
    return v4;
  }

  v25[0] = v22;
  v25[1] = v23;
  v25[2] = v24;
  v18 = v22;
  v19 = v23;
  v20 = v24;
  sub_1C0CF91D0(v25, v17);
  v7 = PEC.SimilarityClientConfig.plaintextModuli()();

  sub_1C0D145DC(v6, v7);
  v10 = v8;

  if ((*(&v25[0] + 1) * *(&v25[0] + 1)) >> 64 == (*(&v25[0] + 1) * *(&v25[0] + 1)) >> 63)
  {
    v11 = *(v10 + 16);
    if (v11)
    {
      v12 = (*(&v25[0] + 1) * *(&v25[0] + 1));
      *&v18 = MEMORY[0x1E69E7CC0];
      sub_1C0CF7B40(0, v11, 0);
      v4 = v18;
      v13 = *(v18 + 16);
      v14 = 32;
      do
      {
        v15 = *(v10 + v14);
        *&v18 = v4;
        v16 = *(v4 + 24);
        if (v13 >= v16 >> 1)
        {
          sub_1C0CF7B40((v16 > 1), v13 + 1, 1);
          v4 = v18;
        }

        *(v4 + 16) = v13 + 1;
        *(v4 + 4 * v13 + 32) = v15 / v12;
        v14 += 8;
        ++v13;
        --v11;
      }

      while (v11);
    }

    else
    {

      return MEMORY[0x1E69E7CC0];
    }

    return v4;
  }

  __break(1u);
  return result;
}

__int128 *sub_1C0CF7980(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 16);
  v5 = *(a1 + 3);
  v10 = *a1;
  v11 = v4;
  v12 = v5;
  v6 = &v10;
  sub_1C0D61EE4(a2, *(a3 + 8), &v13);
  if (!v3)
  {
    if (v14)
    {
      if (v14 != 1)
      {
        sub_1C0CF8DE0();
        v6 = swift_allocError();
        *v9 = 5;
        *(v9 + 4) = 1;
        swift_willThrow();

        return v6;
      }

      v10 = v13;
      v11 = 1;
      v12 = v15;
      sub_1C0CFF838();
    }

    else
    {
      v10 = v13;
      v11 = 0;
      v12 = v15;
      sub_1C0CFF2F8();
    }

    v6 = v8;
  }

  return v6;
}

char *sub_1C0CF7A90(char *a1, int64_t a2, char a3)
{
  result = sub_1C0CF7ED0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1C0CF7AB0(char *a1, int64_t a2, char a3)
{
  result = sub_1C0CF7FDC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1C0CF7AD0(void *a1, int64_t a2, char a3)
{
  result = sub_1C0CF8B78(a1, a2, a3, *v3, &qword_1EBE6D220, &qword_1C0D7B810, qword_1EBE6D228, &qword_1C0D7B818);
  *v3 = result;
  return result;
}

char *sub_1C0CF7B10(char *a1, int64_t a2, char a3)
{
  result = sub_1C0CF8618(a1, a2, a3, *v3, qword_1EBE6D0F0, &qword_1C0D7B800);
  *v3 = result;
  return result;
}

char *sub_1C0CF7B40(char *a1, int64_t a2, char a3)
{
  result = sub_1C0CF80E8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1C0CF7B60(void *a1, int64_t a2, char a3)
{
  result = sub_1C0CF8B78(a1, a2, a3, *v3, &qword_1EBE6D208, &qword_1C0D7B7F0, &qword_1EBE6D210, &qword_1C0D7B7F8);
  *v3 = result;
  return result;
}

char *sub_1C0CF7BA0(char *a1, int64_t a2, char a3)
{
  result = sub_1C0CF81EC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1C0CF7BC0(char *a1, int64_t a2, char a3)
{
  result = sub_1C0CF82F8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1C0CF7BE0(char *a1, int64_t a2, char a3)
{
  result = sub_1C0CF83EC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1C0CF7C00(char *a1, int64_t a2, char a3)
{
  result = sub_1C0CF850C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1C0CF7C20(void *a1, int64_t a2, char a3)
{
  result = sub_1C0CF8B78(a1, a2, a3, *v3, &qword_1EBE6D1E8, &unk_1C0D7B7D0, &qword_1EBE6D1F0, &qword_1C0D7BFF0);
  *v3 = result;
  return result;
}

char *sub_1C0CF7C60(char *a1, int64_t a2, char a3)
{
  result = sub_1C0CF8618(a1, a2, a3, *v3, &qword_1EBE6D090, &qword_1C0D7B730);
  *v3 = result;
  return result;
}

char *sub_1C0CF7C90(char *a1, int64_t a2, char a3)
{
  result = sub_1C0CF8714(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1C0CF7CB0(void *a1, int64_t a2, char a3)
{
  result = sub_1C0CF8B78(a1, a2, a3, *v3, &qword_1EBE6D080, &unk_1C0D7B7C0, &qword_1EBE6D088, &qword_1C0D7B5D0);
  *v3 = result;
  return result;
}

char *sub_1C0CF7CF0(char *a1, int64_t a2, char a3)
{
  result = sub_1C0CF8818(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1C0CF7D10(char *a1, int64_t a2, char a3)
{
  result = sub_1C0CF891C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1C0CF7D30(void *a1, int64_t a2, char a3)
{
  result = sub_1C0CF8B78(a1, a2, a3, *v3, &qword_1EBE6D198, &qword_1C0D7B748, &qword_1EBE6D1A0, &qword_1C0D7B750);
  *v3 = result;
  return result;
}

void *sub_1C0CF7D70(void *a1, int64_t a2, char a3)
{
  result = sub_1C0CF8B78(a1, a2, a3, *v3, &qword_1EBE6D1C8, &qword_1C0D7B788, &qword_1EBE6D1D0, &qword_1C0D7B790);
  *v3 = result;
  return result;
}

void *sub_1C0CF7DB0(void *a1, int64_t a2, char a3)
{
  result = sub_1C0CF8A44(a1, a2, a3, *v3, &qword_1EBE6D1A8, &qword_1C0D7B758, &qword_1EBE6D1B0, &unk_1C0D7B760);
  *v3 = result;
  return result;
}

void *sub_1C0CF7DF0(void *a1, int64_t a2, char a3)
{
  result = sub_1C0CF8B78(a1, a2, a3, *v3, &qword_1EBE6D098, &unk_1C0D7F4C0, &qword_1EBE6D0A0, &qword_1C0D7B770);
  *v3 = result;
  return result;
}

void *sub_1C0CF7E30(void *a1, int64_t a2, char a3)
{
  result = sub_1C0CF8A44(a1, a2, a3, *v3, &qword_1EBE6D1B8, &qword_1C0D7B778, &qword_1EBE6D1C0, &qword_1C0D7B780);
  *v3 = result;
  return result;
}

void *sub_1C0CF7E70(void *a1, int64_t a2, char a3)
{
  result = sub_1C0CF8B78(a1, a2, a3, *v3, &qword_1EBE6D188, &qword_1C0D7B738, &qword_1EBE6D190, &qword_1C0D7B740);
  *v3 = result;
  return result;
}

void *sub_1C0CF7EB0(void *a1, int64_t a2, char a3)
{
  result = sub_1C0CF8CAC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1C0CF7ED0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE6D078, &qword_1C0D7B5C8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1C0CF7FDC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE6D180, &qword_1C0D7B6B0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1C0CF80E8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE6D218, &qword_1C0D7B808);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

char *sub_1C0CF81EC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE6D0E8, &qword_1C0D7B5F8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1C0CF82F8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE6D200, &qword_1C0D7B7E8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
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

char *sub_1C0CF83EC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE6D1F8, &qword_1C0D7B7E0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1C0CF850C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE6D1E0, &qword_1C0D7B7B8);
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
    v10 = MEMORY[0x1E69E7CC0];
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

char *sub_1C0CF8618(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
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
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 25;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 3);
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[8 * v10])
    {
      memmove(v15, v16, 8 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v15, v16, 8 * v10);
  }

  return v12;
}

char *sub_1C0CF8714(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE6D0C8, &qword_1C0D7B7B0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

char *sub_1C0CF8818(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE6D0B8, &unk_1C0D7B7A0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_1C0CF891C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE6D1D8, &qword_1C0D7B798);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 104);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[104 * v8])
    {
      memmove(v12, v13, 104 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1C0CF8A44(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
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

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v18 = v17 - 32;
    if (v17 < 32)
    {
      v18 = v17 - 1;
    }

    v16[2] = v14;
    v16[3] = 2 * (v18 >> 5);
  }

  else
  {
    v16 = MEMORY[0x1E69E7CC0];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[4 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 32 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

void *sub_1C0CF8B78(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
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

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v18 = v17 - 32;
    if (v17 < 32)
    {
      v18 = v17 - 25;
    }

    v16[2] = v14;
    v16[3] = 2 * (v18 >> 3);
  }

  else
  {
    v16 = MEMORY[0x1E69E7CC0];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 8 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

void *sub_1C0CF8CAC(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE6D060, "Vn");
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE6D068, &unk_1C0D7B720);
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t sub_1C0CF8DE0()
{
  result = qword_1EBE6D178;
  if (!qword_1EBE6D178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE6D178);
  }

  return result;
}

uint64_t sub_1C0CF8E34(int64_t a1, int64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v7 = a2;
  v8 = a1;
  v9 = 0;
  v10 = a1;
  while (1)
  {
    v11 = v10 <= a2;
    if (a3 > 0)
    {
      v11 = v10 >= a2;
    }

    if (v11)
    {
      break;
    }

    v12 = __OFADD__(v10, a3);
    v10 += a3;
    if (v12)
    {
      v10 = (v10 >> 63) ^ 0x8000000000000000;
    }

    v12 = __OFADD__(v9++, 1);
    if (v12)
    {
      __break(1u);
      break;
    }
  }

  v39 = MEMORY[0x1E69E7CC0];
  result = sub_1C0CF7AD0(0, v9, 0);
  __n = v7;
  if (v9)
  {
    v14 = a4[2];
    v15 = a5;
    while (1)
    {
      v16 = v8 <= v7;
      if (a3 > 0)
      {
        v16 = v8 >= v7;
      }

      if (v16)
      {
        break;
      }

      if (__OFADD__(v8, a3))
      {
        v17 = ((v8 + a3) >> 63) ^ 0x8000000000000000;
      }

      else
      {
        v17 = v8 + a3;
      }

      v18 = v8 + v15;
      if (__OFADD__(v8, v15))
      {
        goto LABEL_64;
      }

      if (v14 < v18)
      {
        v18 = v14;
      }

      v19 = v18 - v8;
      if (v18 < v8)
      {
        goto LABEL_65;
      }

      if (v8 < 0)
      {
        goto LABEL_66;
      }

      if (v14 == v19)
      {
        result = sub_1C0D78BFC();
        v20 = a4;
      }

      else
      {
        v20 = MEMORY[0x1E69E7CC0];
        if (v18 != v8)
        {
          if (v19 < 1)
          {
            v24 = 4 * v19;
            v20 = MEMORY[0x1E69E7CC0];
          }

          else
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE6D218, &qword_1C0D7B808);
            v20 = swift_allocObject();
            v23 = _swift_stdlib_malloc_size(v20);
            v24 = 4 * v19;
            v25 = v23 - 32;
            if (v23 < 32)
            {
              v25 = v23 - 29;
            }

            v20[2] = v19;
            v20[3] = 2 * (v25 >> 2);
          }

          result = memcpy(v20 + 4, a4 + 4 * v8 + 32, v24);
          v15 = a5;
        }
      }

      v22 = *(v39 + 16);
      v21 = *(v39 + 24);
      if (v22 >= v21 >> 1)
      {
        result = sub_1C0CF7AD0((v21 > 1), v22 + 1, 1);
        v15 = a5;
      }

      *(v39 + 16) = v22 + 1;
      *(v39 + 8 * v22 + 32) = v20;
      v8 = v17;
      --v9;
      v7 = __n;
      if (!v9)
      {
        goto LABEL_37;
      }
    }

    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
  }

  else
  {
    v17 = v8;
    v15 = a5;
LABEL_37:
    v26 = v17 <= v7;
    if (a3 > 0)
    {
      v26 = v17 >= v7;
    }

    if (v26)
    {
      return v39;
    }

    while (1)
    {
      v27 = __OFADD__(v17, a3) ? ((v17 + a3) >> 63) ^ 0x8000000000000000 : v17 + a3;
      v28 = v17 + v15;
      if (__OFADD__(v17, v15))
      {
        break;
      }

      v29 = a4[2];
      if (v29 < v28)
      {
        v28 = a4[2];
      }

      v30 = v28 - v17;
      if (v28 < v17)
      {
        goto LABEL_68;
      }

      if (v17 < 0)
      {
        goto LABEL_69;
      }

      if (v29 == v30)
      {
        result = sub_1C0D78BFC();
        v31 = a4;
      }

      else
      {
        v31 = MEMORY[0x1E69E7CC0];
        if (v28 != v17)
        {
          if (v30 >= 1)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE6D218, &qword_1C0D7B808);
            v31 = swift_allocObject();
            v35 = _swift_stdlib_malloc_size(v31);
            v36 = v35 - 32;
            if (v35 < 32)
            {
              v36 = v35 - 29;
            }

            v31[2] = v30;
            v31[3] = 2 * (v36 >> 2);
          }

          result = memcpy(v31 + 4, a4 + 4 * v17 + 32, 4 * v30);
          v15 = a5;
        }
      }

      v33 = *(v39 + 16);
      v32 = *(v39 + 24);
      if (v33 >= v32 >> 1)
      {
        result = sub_1C0CF7AD0((v32 > 1), v33 + 1, 1);
        v15 = a5;
      }

      *(v39 + 16) = v33 + 1;
      *(v39 + 8 * v33 + 32) = v31;
      v34 = v27 <= __n;
      if (a3 > 0)
      {
        v34 = v27 >= __n;
      }

      v17 = v27;
      if (v34)
      {
        return v39;
      }
    }
  }

  __break(1u);
LABEL_68:
  __break(1u);
LABEL_69:
  __break(1u);
  return result;
}